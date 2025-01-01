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
	r5 = r1
	r2 += r3
	r5 += r3
	if r3 == 0 goto .L6
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L7
	if r9 == 1 goto .L57
	if r9 == 2 goto .L58
	if r9 == 3 goto .L59
	if r9 == 4 goto .L60
	if r9 == 5 goto .L61
	if r9 == 6 goto .L62
	r2 += -1
	r5 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r4
.L62:
	r2 += -1
	r5 += -1
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r0
.L61:
	r2 += -1
	r5 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r3
.L60:
	r2 += -1
	r5 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r9
.L59:
	r2 += -1
	r5 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r4
.L58:
	r2 += -1
	r5 += -1
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r0
.L57:
	r5 += -1
	r3 = *(u8 *) (r2+-1)
	*(u8 *) (r5+0) = r3
	r2 += -1
	if r1 == r5 goto .L6
.L7:
	r9 = *(u8 *) (r2+-1)
	r2 += -8
	*(u8 *) (r5+-1) = r9
	r4 = *(u8 *) (r2+6)
	*(u8 *) (r5+-2) = r4
	r0 = *(u8 *) (r2+5)
	*(u8 *) (r5+-3) = r0
	r3 = *(u8 *) (r2+4)
	r5 += -8
	*(u8 *) (r5+4) = r3
	r9 = *(u8 *) (r2+3)
	*(u8 *) (r5+3) = r9
	r4 = *(u8 *) (r2+2)
	*(u8 *) (r5+2) = r4
	r0 = *(u8 *) (r2+1)
	*(u8 *) (r5+1) = r0
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r3
	if r1 != r5 goto .L7
.L6:
	r0 = r1
	exit
.L5:
	if r1 == r2 goto .L6
	if r3 == 0 goto .L6
	r5 = r1
	r9 = r1
	r5 += r3
	r4 = r2
	r3 &= 7
	if r3 == 0 goto .L8
	if r3 == 1 goto .L63
	if r3 == 2 goto .L64
	if r3 == 3 goto .L65
	if r3 == 4 goto .L66
	if r3 == 5 goto .L67
	if r3 != 6 goto .L87
.L68:
	r2 = *(u8 *) (r4+0)
	r9 += 1
	*(u8 *) (r9+-1) = r2
	r4 += 1
.L67:
	r3 = *(u8 *) (r4+0)
	r9 += 1
	*(u8 *) (r9+-1) = r3
	r4 += 1
.L66:
	r0 = *(u8 *) (r4+0)
	r9 += 1
	*(u8 *) (r9+-1) = r0
	r4 += 1
.L65:
	r2 = *(u8 *) (r4+0)
	r9 += 1
	*(u8 *) (r9+-1) = r2
	r4 += 1
.L64:
	r3 = *(u8 *) (r4+0)
	r9 += 1
	*(u8 *) (r9+-1) = r3
	r4 += 1
.L63:
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r0
	r4 += 1
	r9 += 1
	if r9 == r5 goto .L6
.L8:
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r2
	r3 = *(u8 *) (r4+1)
	*(u8 *) (r9+1) = r3
	r0 = *(u8 *) (r4+2)
	*(u8 *) (r9+2) = r0
	r2 = *(u8 *) (r4+3)
	*(u8 *) (r9+3) = r2
	r3 = *(u8 *) (r4+4)
	*(u8 *) (r9+4) = r3
	r0 = *(u8 *) (r4+5)
	*(u8 *) (r9+5) = r0
	r2 = *(u8 *) (r4+6)
	*(u8 *) (r9+6) = r2
	r3 = *(u8 *) (r4+7)
	*(u8 *) (r9+7) = r3
	r4 += 8
	r9 += 8
	if r9 != r5 goto .L8
	goto .L6
.L87:
	r0 = *(u8 *) (r2+0)
	r9 += 1
	r2 += 1
	*(u8 *) (r1+0) = r0
	r4 = r2
	goto .L68
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	if r4 == 0 goto .L93
	r5 = r4
	r0 = r4
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L89
	if r0 == 1 goto .L133
	if r0 == 2 goto .L134
	if r0 == 3 goto .L135
	if r0 == 4 goto .L136
	if r0 == 5 goto .L137
	if r0 != 6 goto .L151
.L138:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L150
	r4 += -1
	r2 += 1
	r1 += 1
.L137:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L150
	r4 += -1
	r2 += 1
	r1 += 1
.L136:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
	r4 += -1
	r2 += 1
	r1 += 1
.L135:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L150
	r4 += -1
	r2 += 1
	r1 += 1
.L134:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L150
	r4 += -1
	r2 += 1
	r1 += 1
.L133:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L93
.L89:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L150
	r1 += 1
	r9 = *(u8 *) (r2+1)
	*(u8 *) (r1+0) = r9
	r4 += -1
	r5 = r1
	r0 = r4
	if r9 == r3 goto .L150
	r1 += 1
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r1+0) = r9
	r4 += -1
	if r9 == r3 goto .L150
	r1 = r5
	r5 = *(u8 *) (r2+3)
	*(u8 *) (r1+2) = r5
	r1 += 2
	r4 = r0
	r4 += -2
	if r5 == r3 goto .L150
	r1 += 1
	r9 = *(u8 *) (r2+4)
	*(u8 *) (r1+0) = r9
	r4 += -1
	if r9 == r3 goto .L150
	r1 += 1
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r1+0) = r5
	r4 += -1
	if r5 == r3 goto .L150
	r1 += 1
	r9 = *(u8 *) (r2+6)
	*(u8 *) (r1+0) = r9
	r4 += -1
	if r9 == r3 goto .L150
	r1 += 1
	r5 = *(u8 *) (r2+7)
	*(u8 *) (r1+0) = r5
	r4 += -1
	if r5 == r3 goto .L150
	r4 += -1
	r2 += 8
	r1 += 1
	if r0 != 7 goto .L89
.L93:
	r0 = 0
	exit
.L150:
	if r4 == 0 goto .L93
	r0 = r1
	r0 += 1
	exit
.L151:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
	r4 = r5
	r2 += 1
	r1 += 1
	goto .L138
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L158
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L153
	if r0 == 1 goto .L195
	if r0 == 2 goto .L196
	if r0 == 3 goto .L197
	if r0 == 4 goto .L198
	if r0 == 5 goto .L199
	if r0 != 6 goto .L213
.L200:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L211
	r1 += 1
	r3 += -1
.L199:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L211
	r1 += 1
	r3 += -1
.L198:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L211
	r1 += 1
	r3 += -1
.L197:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L211
	r1 += 1
	r3 += -1
.L196:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L211
	r1 += 1
	r3 += -1
.L195:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L211
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L158
.L153:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L211
	r1 += 1
	r3 += -1
	r9 = r1
	r4 = r3
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L211
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L211
	r1 = r9
	r3 = r4
	r1 += 2
	r3 += -2
	r5 = *(u8 *) (r9+2)
	if r5 == r2 goto .L211
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+3)
	if r0 == r2 goto .L211
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+4)
	if r5 == r2 goto .L211
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+5)
	if r0 == r2 goto .L211
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+6)
	if r5 == r2 goto .L211
	r9 += 7
	r3 += -1
	r1 = r9
	if r4 != 7 goto .L153
.L158:
	r0 = 0
	exit
.L211:
	r0 = r1
	if r3 == 0 goto .L158
	exit
.L213:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L211
	r1 += 1
	r3 = r4
	goto .L200
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L219
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L215
	if r0 == 1 goto .L259
	if r0 == 2 goto .L260
	if r0 == 3 goto .L261
	if r0 == 4 goto .L262
	if r0 == 5 goto .L263
	if r0 != 6 goto .L277
.L264:
	r4 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r4 != r0 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L263:
	r5 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r2+0)
	if r5 != r9 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L262:
	r4 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r4 != r0 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L261:
	r5 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r2+0)
	if r5 != r9 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L260:
	r4 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r4 != r0 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L259:
	r5 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r2+0)
	if r5 != r9 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L219
.L215:
	r4 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r4 != r0 goto .L276
	r1 += 1
	r2 += 1
	r3 += -1
	r4 = r1
	r5 = r3
	r0 = r2
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r2+0)
	if r6 != r9 goto .L276
	r1 += 1
	r2 += 1
	r3 += -1
	r9 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r9 != r6 goto .L276
	r3 = r5
	r1 = r4
	r2 = r0
	r3 += -2
	r1 += 2
	r2 += 2
	r9 = *(u8 *) (r4+2)
	r6 = *(u8 *) (r0+2)
	if r9 != r6 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+3)
	r6 = *(u8 *) (r0+3)
	if r9 != r6 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+4)
	r6 = *(u8 *) (r0+4)
	if r9 != r6 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+5)
	r6 = *(u8 *) (r0+5)
	if r9 != r6 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r4+6)
	r6 = *(u8 *) (r0+6)
	if r4 != r6 goto .L276
	r0 += 7
	r3 += -1
	r1 += 1
	r2 = r0
	if r5 != 7 goto .L215
.L219:
	r0 = 0
	exit
.L276:
	if r3 == 0 goto .L219
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L277:
	r5 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r2+0)
	if r5 != r9 goto .L276
	r3 = r4
	r1 += 1
	r2 += 1
	goto .L264
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
	if r3 == 0 goto .L279
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L278
	if r3 == 1 goto .L279
	if r3 == 2 goto .L293
	if r3 == 3 goto .L291
	if r3 == 4 goto .L289
	if r3 == 5 goto .L287
	if r3 != 6 goto .L313
.L285:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L278
.L287:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L278
.L289:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 == r2 goto .L278
.L291:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L278
.L293:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L314
.L279:
	if r1 == r4 goto .L315
	r9 = r1
	r0 = r1
	r9 += -1
	r3 = *(u8 *) (r1+0)
	if r3 == r2 goto .L316
	r0 = r9
	r5 = r1
	r9 = *(u8 *) (r9+0)
	r5 += -2
	if r9 == r2 goto .L278
	r0 = r5
	r5 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L278
	r0 = r5
	r5 += -1
	r9 = *(u8 *) (r0+0)
	if r9 == r2 goto .L278
	r0 = r5
	r5 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L278
	r0 = r5
	r5 += -1
	r9 = *(u8 *) (r0+0)
	if r9 == r2 goto .L278
	r0 = r5
	r5 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L278
	r0 = r5
	r1 += -8
	r5 = *(u8 *) (r5+0)
	if r5 != r2 goto .L279
	exit
.L315:
	r0 = 0
.L278:
	exit
.L313:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 != r2 goto .L285
	exit
.L316:
	exit
.L314:
	exit
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r0 = r1
	r2 s>>= 32
	if r3 == 0 goto .L318
	r1 += r3
	r4 = r0
	r3 &= 7
	if r3 == 0 goto .L319
	if r3 == 1 goto .L344
	if r3 == 2 goto .L345
	if r3 == 3 goto .L346
	if r3 == 4 goto .L347
	if r3 == 5 goto .L348
	if r3 != 6 goto .L359
.L349:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L348:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L347:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L346:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L345:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L344:
	*(u8 *) (r4+0) = r2
	r4 += 1
	if r1 == r4 goto .L360
.L319:
	*(u8 *) (r4+0) = r2
	*(u8 *) (r4+1) = r2
	*(u8 *) (r4+2) = r2
	*(u8 *) (r4+3) = r2
	*(u8 *) (r4+4) = r2
	*(u8 *) (r4+5) = r2
	*(u8 *) (r4+6) = r2
	*(u8 *) (r4+7) = r2
	r4 += 8
	if r1 != r4 goto .L319
.L318:
	exit
.L359:
	*(u8 *) (r0+0) = r2
	r4 += 1
	goto .L349
.L360:
	exit
	.size	memset, .-memset
	.align	3
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	r0 = r1
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L362
.L363:
	r0 += 1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 = r0
	if r4 == 0 goto .L362
	r0 += 1
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L362
	r0 = r3
	r9 = *(u8 *) (r2+3)
	r0 += 2
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L362
	r0 += 1
	r1 = *(u8 *) (r2+4)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L362
	r0 += 1
	r4 = *(u8 *) (r2+5)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L362
	r0 += 1
	r3 = *(u8 *) (r2+6)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L362
	r0 += 1
	r5 = *(u8 *) (r2+7)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L362
	r9 = *(u8 *) (r2+8)
	r0 += 1
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	r2 += 8
	if r9 != 0 goto .L363
	exit
.L362:
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
	if r1 != 0 goto .L383
	goto .L389
.L385:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 == 0 goto .L382
.L383:
	r4 &= 0xff
	if r4 != r2 goto .L385
.L382:
	exit
.L389:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r0 = r1
	r2 s>>= 32
	goto .L392
.L395:
	r0 += 1
	if r3 == 0 goto .L394
.L392:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 != r2 goto .L395
	exit
.L394:
	r0 = r3
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L401
.L402:
	if r0 == 0 goto .L398
	r1 += 1
	r2 += 1
.L401:
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 <<= 56
	r3 <<= 56
	r0 s>>= 56
	r3 s>>= 56
	if r0 == r3 goto .L402
.L398:
	r3 &= 0xff
	r0 &= 0xff
	r0 -= r3
	exit
	.size	strcmp, .-strcmp
	.align	3
	.global	strlen
	.type	strlen, @function
strlen:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L406
	r0 = r1
.L405:
	r0 += 1
	r2 = r0
	r3 = *(u8 *) (r0+0)
	if r3 == 0 goto .L404
	r0 += 1
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L404
	r0 = r2
	r5 = *(u8 *) (r2+2)
	r0 += 2
	if r5 == 0 goto .L404
	r0 += 1
	r9 = *(u8 *) (r2+3)
	if r9 == 0 goto .L404
	r0 += 1
	r3 = *(u8 *) (r2+4)
	if r3 == 0 goto .L404
	r0 += 1
	r4 = *(u8 *) (r2+5)
	if r4 == 0 goto .L404
	r0 += 1
	r5 = *(u8 *) (r2+6)
	if r5 == 0 goto .L404
	r0 += 1
	r2 = *(u8 *) (r2+7)
	if r2 != 0 goto .L405
.L404:
	r0 -= r1
	exit
.L406:
	r0 = r1
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L427
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L424
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L425
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L424
	if r0 != r4 goto .L424
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L424
	if r3 == 1 goto .L425
	if r3 == 2 goto .L469
	if r3 == 3 goto .L470
	if r3 == 4 goto .L471
	if r3 == 5 goto .L472
	if r3 == 6 goto .L473
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L424
	if r3 != r4 goto .L424
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L424
.L473:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L424
	if r9 != r4 goto .L424
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L424
.L472:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L424
	if r0 != r4 goto .L424
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L424
.L471:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L424
	if r3 != r4 goto .L424
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L424
.L470:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L424
	if r9 != r4 goto .L424
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L424
.L469:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L424
	if r0 != r4 goto .L424
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L424
.L425:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L424
	if r1 == r5 goto .L424
	if r3 != r4 goto .L424
	r2 += 1
	r3 = r1
	r0 = r2
	r3 += 1
	r4 = *(u8 *) (r1+1)
	if r4 == 0 goto .L424
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L424
	if r9 != r4 goto .L424
	r2 += 1
	r4 = *(u8 *) (r1+2)
	if r4 == 0 goto .L424
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L424
	if r9 != r4 goto .L424
	r2 = r0
	r4 = *(u8 *) (r1+3)
	r2 += 2
	if r4 == 0 goto .L424
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L424
	if r1 != r4 goto .L424
	r2 += 1
	r4 = *(u8 *) (r3+3)
	if r4 == 0 goto .L424
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L424
	if r9 != r4 goto .L424
	r2 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L424
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L424
	if r1 != r4 goto .L424
	r2 += 1
	r4 = *(u8 *) (r3+5)
	if r4 == 0 goto .L424
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L424
	if r9 != r4 goto .L424
	r2 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L424
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L424
	if r1 != r4 goto .L424
	r1 = r3
	r0 += 7
	r1 += 7
	r2 = r0
	r4 = *(u8 *) (r3+7)
	if r4 != 0 goto .L425
.L424:
	r2 = *(u8 *) (r2+0)
	r0 = r4
	r0 -= r2
	exit
.L427:
	r0 = r3
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L514
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
	if r3 == 0 goto .L516
	if r3 == 1 goto .L539
	if r3 == 2 goto .L540
	if r3 == 3 goto .L541
	if r3 == 4 goto .L542
	if r3 == 5 goto .L543
	if r3 != 6 goto .L553
.L544:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L543:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L542:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L541:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L540:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L539:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L554
.L516:
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
	if r0 != r5 goto .L516
.L514:
	exit
.L553:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
	goto .L544
.L554:
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
	if r2 <= 24 goto .L556
	r1 = 0
.L556:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L558
	r0 = 0
.L558:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L561
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L561:
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
	if r1 <= 30 goto .L564
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L564:
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
	if r1 <= 8 goto .L566
	r0 = 0
.L566:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L568
	r0 = 0
.L568:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L570
	r0 = 0
.L570:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L572
	r0 = 0
.L572:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L576
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 3 goto .L577
	r0 &= 1
	exit
.L577:
	r0 = 0
	r0 &= 1
	exit
.L576:
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
	if r1 <= 24 goto .L579
	r0 = 0
.L579:
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
	if r1 <= 30 goto .L585
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 > 31 goto .L586
.L585:
	r0 = 1
	exit
.L586:
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L585
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L582
	r9 = 0
.L582:
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
	if r1 <= 8 goto .L588
	r0 = 0
.L588:
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
	if r1 <= 254 goto .L597
	if r1 <= 8230 goto .L595
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L595
	r2 += -49110
	if r2 <= 8183 goto .L595
	r1 += -65532
	if r1 > 1048579 goto .L596
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L595:
	r0 = 1
	exit
.L597:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s<= 32 goto .L598
	r0 = r1
	r0 &= 1
	exit
.L598:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
.L596:
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
	if r2 <= 8 goto .L602
	r1 |= 32
	r0 = 1
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L603
	r0 &= 1
	exit
.L602:
	r0 = 1
	exit
.L603:
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
	if r0 != 0 goto .L608
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L609
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L612
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L612:
	r0 = 0x0000000000000000 ll
	exit
.L608:
	r0 = r6
	exit
.L609:
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
	if r0 != 0 goto .L616
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L617
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L620
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L620:
	r0 = 0x00000000 ll
	exit
.L616:
	r0 = r6
	exit
.L617:
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
	if r0 != 0 goto .L629
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L628
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L623
	if r0 != 0 goto .L629
.L628:
	r0 = r7
	exit
.L623:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L629
	r6 = r7
.L629:
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
	if r0 != 0 goto .L640
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L639
	r0 = r7
	r1 = r6
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L634
	if r2 != 0 goto .L640
.L639:
	r0 = r7
	exit
.L634:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L640
	r6 = r7
.L640:
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
	if r0 != 0 goto .L651
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L650
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L645
	if r0 != 0 goto .L651
.L650:
	r0 = r7
	exit
.L645:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L651
	r6 = r7
.L651:
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
	if r0 != 0 goto .L660
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L662
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L656
	if r0 != 0 goto .L662
.L660:
	r0 = r7
	exit
.L656:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L662
	r6 = r7
.L662:
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
	if r0 != 0 goto .L671
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L673
	r0 = r6
	r1 = r7
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L667
	if r2 != 0 goto .L673
.L671:
	r0 = r7
	exit
.L667:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L673
	r6 = r7
.L673:
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
	if r0 != 0 goto .L682
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L684
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L678
	if r0 != 0 goto .L684
.L682:
	r0 = r7
	exit
.L678:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L684
	r6 = r7
.L684:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L688
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
	if r1 == 0 goto .L688
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L688
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 = r9
	r0 += 2
	if r1 == 0 goto .L688
	r9 = r1
	r3 = r2
	r9 &= 63
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L688
	r5 = r1
	r9 = r2
	r5 &= 63
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L688
	r2 += r1
	r0 += 1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+-1) = r1
.L688:
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
	if r2 == 0 goto .L714
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r0
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L708
	*(u64 *) (r2+8) = r1
.L708:
	exit
.L714:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L716
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L716:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L715
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L715:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L726
	exit
.L726:
	r1 = -r1
	r0 = r1
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r5 = 1
	r4 = 4
	r9 = 0
.L728:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == 32 goto .L731
	r3 = r2
	r0 = r5
	r3 += -9
	r3 = r3;r3 &= 0xffffffff
	if r4 > r3 goto .L730
	r0 = r9
.L730:
	r0 &= 1
	if r0 == 0 goto .L749
.L731:
	r1 += 1
	goto .L728
.L749:
	if r2 == 43 goto .L738
	if r2 == 45 goto .L750
	r2 = *(u8 *) (r1+0)
	r4 = r0
	r2 <<= 56
	r9 = 9
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r9 > r5 goto .L734
.L735:
	if r4 != 0 goto .L736
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L736:
	exit
.L750:
	r4 = 1
.L732:
	r1 += 1
	r9 = 9
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r9 <= r5 goto .L735
.L734:
	r3 = r0
	r2 <<= 56
	r3 <<= 2
	r2 s>>= 56
	r0 += r3
	r5 = *(u8 *) (r1+1)
	r0 <<= 33
	r5 <<= 56
	r0 s>>= 32
	r0 -= r2
	r2 = r5
	r0 <<= 32
	r2 s>>= 56
	r0 s>>= 32
	r2 += -48
	r3 = r2;r3 &= 0xffffffff
	if r9 <= r3 goto .L735
	r5 = r0
	r2 <<= 56
	r5 <<= 2
	r2 s>>= 56
	r0 += r5
	r3 = *(u8 *) (r1+2)
	r0 <<= 33
	r3 <<= 56
	r0 s>>= 32
	r0 -= r2
	r2 = r3
	r0 <<= 32
	r2 s>>= 56
	r0 s>>= 32
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r9 <= r5 goto .L735
	r3 = r0
	r2 <<= 56
	r3 <<= 2
	r2 s>>= 56
	r0 += r3
	r5 = *(u8 *) (r1+3)
	r0 <<= 33
	r5 <<= 56
	r0 s>>= 32
	r0 -= r2
	r2 = r5
	r0 <<= 32
	r2 s>>= 56
	r0 s>>= 32
	r2 += -48
	r3 = r2;r3 &= 0xffffffff
	if r9 <= r3 goto .L735
	r5 = r0
	r2 <<= 56
	r5 <<= 2
	r2 s>>= 56
	r0 += r5
	r3 = r2
	r1 += 4
	r0 <<= 33
	r2 = *(u8 *) (r1+0)
	r0 s>>= 32
	r2 <<= 56
	r0 -= r3
	r2 s>>= 56
	r0 <<= 32
	r2 += -48
	r0 s>>= 32
	r5 = r2;r5 &= 0xffffffff
	if r9 > r5 goto .L734
	goto .L735
.L738:
	r4 = r0
	goto .L732
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 1
	r3 = 4
	r5 = 0
.L752:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L755
	r2 = r0
	r9 = r4
	r2 += -9
	r2 = r2;r2 &= 0xffffffff
	if r3 > r2 goto .L754
	r9 = r5
.L754:
	r2 = r9
	r2 &= 1
	if r2 == 0 goto .L775
.L755:
	r1 += 1
	goto .L752
.L775:
	if r0 == 43 goto .L756
	if r0 == 45 goto .L776
.L757:
	r0 = *(u8 *) (r1+0)
	r3 = 0
	r0 <<= 56
	r4 = 9
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r4 <= r5 goto .L759
.L758:
	r9 = r3
	r0 <<= 56
	r9 <<= 2
	r0 s>>= 56
	r9 += r3
	r5 = *(u8 *) (r1+1)
	r3 = r9
	r3 += r9
	r3 -= r0
	r0 = r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r4 <= r9 goto .L759
	r5 = r3
	r0 <<= 56
	r5 <<= 2
	r0 s>>= 56
	r5 += r3
	r9 = *(u8 *) (r1+2)
	r3 = r5
	r3 += r5
	r3 -= r0
	r0 = r9
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r4 <= r5 goto .L759
	r9 = r3
	r0 <<= 56
	r9 <<= 2
	r0 s>>= 56
	r9 += r3
	r5 = *(u8 *) (r1+3)
	r3 = r9
	r3 += r9
	r3 -= r0
	r0 = r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r4 <= r9 goto .L759
	r5 = r3
	r0 <<= 56
	r5 <<= 2
	r0 s>>= 56
	r5 += r3
	r9 = r0
	r3 = r5
	r1 += 4
	r3 += r5
	r0 = *(u8 *) (r1+0)
	r3 -= r9
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r4 > r5 goto .L758
.L759:
	if r2 != 0 goto .L751
	r3 = -r3
.L751:
	r0 = r3
	exit
.L776:
	r2 = 1
.L756:
	r1 += 1
	goto .L757
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	call	atol
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
	if r1 s< 0 goto .L781
	exit
.L781:
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
	if r1 s< 0 goto .L785
	exit
.L785:
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
	if r1 s< 0 goto .L789
	exit
.L789:
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
	r2 s>>= 32
	goto .L800
.L803:
	if r2 == r0 goto .L802
	r1 += 4
.L800:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r0 = r3
	r0 s>>= 32
	if r3 != 0 goto .L803
.L797:
	r0 = 0
	exit
.L802:
	r0 = r1
	if r2 == 0 goto .L797
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L815
.L816:
	if r3 == 0 goto .L806
	if r4 == 0 goto .L806
	r1 += 4
	r2 += 4
.L815:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L816
.L806:
	if r4 s>= r3 goto .L810
	r0 = 1
	if r3 s<= r4 goto .L817
	r0 &= 1
	exit
.L810:
	r0 = -1
	exit
.L817:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L819:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L835
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L835
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L835
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L835
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L835
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L835
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L835
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L819
.L835:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L839
	r0 = r1
.L838:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L837
	r0 += 4
	r4 = *(u32 *) (r0+0)
	if r4 == 0 goto .L837
	r0 = r2
	r5 = *(u32 *) (r2+8)
	r0 += 8
	if r5 == 0 goto .L837
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L837
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L837
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L837
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L837
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L838
.L837:
	r0 -= r1
	r0 s>>= 2
	exit
.L839:
	r0 = r1
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L861
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L856
	if r0 == 1 goto .L882
	if r0 == 2 goto .L883
	r5 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r5 <<= 32
	r9 <<= 32
	r6 = r9
	r6 s>>= 32
	if r9 != r5 goto .L857
	if r6 == 0 goto .L857
	r3 = r4
	r1 += 4
	r2 += 4
.L883:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L857
	if r5 == 0 goto .L857
	r3 += -1
	r1 += 4
	r2 += 4
.L882:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L857
	if r0 == 0 goto .L857
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L861
.L856:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r5 = r4
	r5 s>>= 32
	if r4 != r9 goto .L857
	if r5 == 0 goto .L857
	r1 += 4
	r2 += 4
	r3 += -1
	r6 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 = r3
	r0 <<= 32
	r9 = r1
	r7 = r0
	r5 = r2
	r6 <<= 32
	r7 s>>= 32
	if r0 != r6 goto .L857
	if r7 == 0 goto .L857
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r3 += -1
	r0 <<= 32
	r6 <<= 32
	r7 = r0
	r7 s>>= 32
	if r0 != r6 goto .L857
	if r7 == 0 goto .L857
	r1 = r9
	r2 = r5
	r1 += 8
	r2 += 8
	r3 = r4
	r6 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 += -2
	r9 <<= 32
	r6 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L857
	if r7 == 0 goto .L857
	r3 += -1
	r1 += 4
	r2 += 4
	if r4 != 3 goto .L856
.L861:
	r0 = 0
	exit
.L857:
	if r3 == 0 goto .L861
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r1 s>= r2 goto .L862
	r0 = 1
	if r2 s<= r1 goto .L892
	r0 &= 1
	exit
.L862:
	r0 = -1
	exit
.L892:
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
	if r3 == 0 goto .L899
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L894
	if r0 == 1 goto .L936
	if r0 == 2 goto .L937
	if r0 == 3 goto .L938
	if r0 == 4 goto .L939
	if r0 == 5 goto .L940
	if r0 != 6 goto .L954
.L941:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L952
	r3 += -1
	r1 += 4
.L940:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L952
	r3 += -1
	r1 += 4
.L939:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L952
	r3 += -1
	r1 += 4
.L938:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L952
	r3 += -1
	r1 += 4
.L937:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L952
	r3 += -1
	r1 += 4
.L936:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L952
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L899
.L894:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L952
	r1 += 4
	r3 += -1
	r9 = *(u32 *) (r1+0)
	r0 = r3
	r9 <<= 32
	r5 = r1
	r9 s>>= 32
	if r9 == r2 goto .L952
	r1 += 4
	r3 += -1
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L952
	r1 = r5
	r3 = r0
	r1 += 8
	r3 += -2
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L952
	r1 += 4
	r3 += -1
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L952
	r1 += 4
	r3 += -1
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L952
	r1 += 4
	r3 += -1
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L952
	r1 += 4
	r3 += -1
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L952
	r3 += -1
	r1 += 4
	if r0 != 7 goto .L894
.L899:
	r0 = 0
	exit
.L952:
	r0 = r1
	if r3 == 0 goto .L899
	exit
.L954:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L952
	r3 = r4
	r1 += 4
	goto .L941
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L961
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L956
	if r0 == 1 goto .L1002
	if r0 == 2 goto .L1003
	if r0 == 3 goto .L1004
	if r0 == 4 goto .L1005
	if r0 == 5 goto .L1006
	if r0 != 6 goto .L1020
.L1007:
	r0 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r0 <<= 32
	r4 <<= 32
	if r4 != r0 goto .L1019
	r3 += -1
	r1 += 4
	r2 += 4
.L1006:
	r9 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 <<= 32
	if r5 != r9 goto .L1019
	r3 += -1
	r1 += 4
	r2 += 4
.L1005:
	r0 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r0 <<= 32
	r4 <<= 32
	if r4 != r0 goto .L1019
	r3 += -1
	r1 += 4
	r2 += 4
.L1004:
	r9 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 <<= 32
	if r5 != r9 goto .L1019
	r3 += -1
	r1 += 4
	r2 += 4
.L1003:
	r0 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r0 <<= 32
	r4 <<= 32
	if r4 != r0 goto .L1019
	r3 += -1
	r1 += 4
	r2 += 4
.L1002:
	r9 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 <<= 32
	if r5 != r9 goto .L1019
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L961
.L956:
	r0 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r0 <<= 32
	r4 <<= 32
	if r4 != r0 goto .L1019
	r1 += 4
	r2 += 4
	r3 += -1
	r9 = *(u32 *) (r1+0)
	r6 = *(u32 *) (r2+0)
	r0 = r3
	r5 = r1
	r4 = r2
	r9 <<= 32
	r6 <<= 32
	if r6 != r9 goto .L1019
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 += -1
	r6 <<= 32
	r9 <<= 32
	if r9 != r6 goto .L1019
	r1 = r5
	r2 = r4
	r1 += 8
	r2 += 8
	r3 = r0
	r6 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r3 += -2
	r6 <<= 32
	r5 <<= 32
	if r5 != r6 goto .L1019
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 += -1
	r6 <<= 32
	r4 <<= 32
	if r4 != r6 goto .L1019
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 += -1
	r6 <<= 32
	r9 <<= 32
	if r9 != r6 goto .L1019
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r3 += -1
	r6 <<= 32
	r5 <<= 32
	if r5 != r6 goto .L1019
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 += -1
	r6 <<= 32
	r4 <<= 32
	if r4 != r6 goto .L1019
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 != 7 goto .L956
.L961:
	r0 = 0
	exit
.L1019:
	if r3 == 0 goto .L961
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r1 s>= r2 goto .L962
	r0 = 1
	if r2 s<= r1 goto .L1021
	r0 &= 1
	exit
.L962:
	r0 = -1
	exit
.L1021:
	r0 = 0
	r0 &= 1
	exit
.L1020:
	r9 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 <<= 32
	if r5 != r9 goto .L1019
	r3 = r4
	r1 += 4
	r2 += 4
	goto .L1007
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1023
	r5 = r3
	r6 = r3
	r9 = r1
	r4 = r1
	r0 = r2
	r5 += -1
	r6 <<= 2
	r9 -= r2
	if r6 < r9 goto .L1104
	if r3 == 0 goto .L1023
	r5 <<= 2
	r9 = r1
	r4 = r5
	r0 += r5
	r4 >>= 2
	r9 += r5
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1026
	if r4 == 1 goto .L1081
	if r4 == 2 goto .L1082
	if r4 == 3 goto .L1083
	if r4 == 4 goto .L1084
	if r4 == 5 goto .L1085
	if r4 != 6 goto .L1105
.L1086:
	r3 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r3
	r0 += -4
.L1085:
	r4 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r4
	r0 += -4
.L1084:
	r5 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r5
	r0 += -4
.L1083:
	r3 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r3
	r0 += -4
.L1082:
	r4 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r4
	r0 += -4
.L1081:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r5
	r3 = r0
	r9 += -4
	r0 += -4
	if r2 == r3 goto .L1023
.L1026:
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r4
	r5 = *(u32 *) (r0+-4)
	*(u32 *) (r9+-4) = r5
	r4 = *(u32 *) (r0+-8)
	*(u32 *) (r9+-8) = r4
	r5 = *(u32 *) (r0+-12)
	*(u32 *) (r9+-12) = r5
	r4 = *(u32 *) (r0+-16)
	*(u32 *) (r9+-16) = r4
	r5 = *(u32 *) (r0+-20)
	r3 = r0
	*(u32 *) (r9+-20) = r5
	r3 += -28
	r4 = *(u32 *) (r0+-24)
	*(u32 *) (r9+-24) = r4
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r9+-28) = r5
	r0 += -32
	r9 += -32
	if r2 != r3 goto .L1026
.L1023:
	r0 = r1
	exit
.L1104:
	if r3 == 0 goto .L1023
	r3 &= 7
	if r3 == 0 goto .L1025
	if r3 == 1 goto .L1075
	if r3 == 2 goto .L1076
	if r3 == 3 goto .L1077
	if r3 == 4 goto .L1078
	if r3 == 5 goto .L1079
	if r3 != 6 goto .L1106
.L1080:
	r2 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1079:
	r3 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1078:
	r9 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1077:
	r2 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1076:
	r3 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1075:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r5 += -1
	r4 += 4
	r0 += 4
	if r5 == -1 goto .L1023
.L1025:
	r2 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r2
	r3 = *(u32 *) (r0+4)
	*(u32 *) (r4+4) = r3
	r9 = *(u32 *) (r0+8)
	*(u32 *) (r4+8) = r9
	r2 = *(u32 *) (r0+12)
	*(u32 *) (r4+12) = r2
	r3 = *(u32 *) (r0+16)
	*(u32 *) (r4+16) = r3
	r9 = *(u32 *) (r0+20)
	*(u32 *) (r4+20) = r9
	r2 = *(u32 *) (r0+24)
	*(u32 *) (r4+24) = r2
	r3 = *(u32 *) (r0+28)
	*(u32 *) (r4+28) = r3
	r5 += -8
	r4 += 32
	r0 += 32
	if r5 != -1 goto .L1025
	goto .L1023
.L1106:
	r0 = *(u32 *) (r2+0)
	r5 += -1
	*(u32 *) (r1+0) = r0
	r4 += 4
	r0 = r2
	r0 += 4
	goto .L1080
.L1105:
	r5 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r5
	r0 += -4
	goto .L1086
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r5 = r3
	r0 = r1
	r2 s>>= 32
	r5 += -1
	if r3 == 0 goto .L1108
	r4 = r1
	r1 = r3
	r1 &= 7
	if r1 == 0 goto .L1109
	if r1 == 1 goto .L1134
	if r1 == 2 goto .L1135
	if r1 == 3 goto .L1136
	if r1 == 4 goto .L1137
	if r1 == 5 goto .L1138
	if r1 != 6 goto .L1149
.L1139:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1138:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1137:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1136:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1135:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1134:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
	if r5 == -1 goto .L1150
.L1109:
	*(u32 *) (r4+0) = r2
	*(u32 *) (r4+4) = r2
	*(u32 *) (r4+8) = r2
	*(u32 *) (r4+12) = r2
	*(u32 *) (r4+16) = r2
	*(u32 *) (r4+20) = r2
	*(u32 *) (r4+24) = r2
	*(u32 *) (r4+28) = r2
	r5 += -8
	r4 += 32
	if r5 != -1 goto .L1109
.L1108:
	exit
.L1149:
	r3 += -2
	*(u32 *) (r0+0) = r2
	r5 = r3
	r4 += 4
	goto .L1139
.L1150:
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1152
	r5 = r1
	r2 += r3
	r5 += r3
	if r3 == 0 goto .L1151
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1154
	if r9 == 1 goto .L1204
	if r9 == 2 goto .L1205
	if r9 == 3 goto .L1206
	if r9 == 4 goto .L1207
	if r9 == 5 goto .L1208
	if r9 == 6 goto .L1209
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1209:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1208:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
.L1207:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
.L1206:
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1205:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1204:
	r2 += -1
	r0 = *(u8 *) (r5+-1)
	*(u8 *) (r2+0) = r0
	r5 += -1
	if r1 == r5 goto .L1234
.L1154:
	r9 = *(u8 *) (r5+-1)
	r5 += -8
	*(u8 *) (r2+-1) = r9
	r4 = *(u8 *) (r5+6)
	*(u8 *) (r2+-2) = r4
	r3 = *(u8 *) (r5+5)
	*(u8 *) (r2+-3) = r3
	r0 = *(u8 *) (r5+4)
	r2 += -8
	*(u8 *) (r2+4) = r0
	r9 = *(u8 *) (r5+3)
	*(u8 *) (r2+3) = r9
	r4 = *(u8 *) (r5+2)
	*(u8 *) (r2+2) = r4
	r3 = *(u8 *) (r5+1)
	*(u8 *) (r2+1) = r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
	if r1 != r5 goto .L1154
	exit
.L1152:
	if r1 != r2 goto .L1235
.L1151:
	exit
.L1235:
	if r3 == 0 goto .L1151
	r5 = r1
	r9 = r1
	r5 += r3
	r4 = r2
	r3 &= 7
	if r3 == 0 goto .L1155
	if r3 == 1 goto .L1210
	if r3 == 2 goto .L1211
	if r3 == 3 goto .L1212
	if r3 == 4 goto .L1213
	if r3 == 5 goto .L1214
	if r3 != 6 goto .L1236
.L1215:
	r1 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r9 += 1
.L1214:
	r2 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r9 += 1
.L1213:
	r3 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r9 += 1
.L1212:
	r0 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r0
	r9 += 1
.L1211:
	r1 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r9 += 1
.L1210:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
	if r9 == r5 goto .L1237
.L1155:
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r3
	r0 = *(u8 *) (r9+1)
	*(u8 *) (r4+1) = r0
	r1 = *(u8 *) (r9+2)
	*(u8 *) (r4+2) = r1
	r2 = *(u8 *) (r9+3)
	*(u8 *) (r4+3) = r2
	r3 = *(u8 *) (r9+4)
	*(u8 *) (r4+4) = r3
	r0 = *(u8 *) (r9+5)
	*(u8 *) (r4+5) = r0
	r1 = *(u8 *) (r9+6)
	*(u8 *) (r4+6) = r1
	r2 = *(u8 *) (r9+7)
	*(u8 *) (r4+7) = r2
	r9 += 8
	r4 += 8
	if r9 != r5 goto .L1155
	goto .L1151
.L1234:
	exit
.L1236:
	r0 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r0
	r9 += 1
	r4 = r2
	goto .L1215
.L1237:
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
	r0 = 0
	r1 = r1;r1 &= 0xffffffff
.L1254:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1277
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1277
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1277
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1277
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1277
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1277
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1277
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1277
	if r0 != 32 goto .L1254
	r0 = r4
	exit
.L1277:
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
	if r1 == 0 goto .L1280
	r0 &= 1
	if r0 != 0 goto .L1280
	r0 = 1
.L1281:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1299
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1280
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1280
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1280
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1280
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1280
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1280
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1281
	exit
.L1280:
	exit
.L1299:
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
	if r8 s>= r0 goto .L1303
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1304
	r0 = r7
	r0 &= 1
	exit
.L1303:
	r0 = 1
	exit
.L1304:
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
	if r8 s>= r0 goto .L1308
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1309
	r0 = r7
	r0 &= 1
	exit
.L1308:
	r0 = 1
	exit
.L1309:
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
	if r8 s>= r0 goto .L1313
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1314
	r0 = r7
	r0 &= 1
	exit
.L1313:
	r0 = 1
	exit
.L1314:
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
	if r0 != 0 goto .L1317
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1317
	if r6 s< 0 goto .L1330
	r7 = 0x40000000 ll
	goto .L1321
.L1331:
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1321:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1320
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1320:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1331
.L1317:
	r0 = r8
	exit
.L1330:
	r7 = 0x3f000000 ll
	goto .L1321
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
	if r0 != 0 goto .L1333
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1333
	if r6 s< 0 goto .L1346
	r7 = 0x4000000000000000 ll
	goto .L1337
.L1347:
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1337:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1336
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1336:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1347
.L1333:
	r0 = r8
	exit
.L1346:
	r7 = 0x3fe0000000000000 ll
	goto .L1337
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
	if r0 != 0 goto .L1349
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1349
	if r6 s< 0 goto .L1362
	r7 = 0x4000000000000000 ll
	goto .L1353
.L1363:
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1353:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1352
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1352:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1363
.L1349:
	r0 = r8
	exit
.L1362:
	r7 = 0x3fe0000000000000 ll
	goto .L1353
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1365
	r4 = r2
	r0 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1366
	if r3 == 1 goto .L1391
	if r3 == 2 goto .L1392
	if r3 == 3 goto .L1393
	if r3 == 4 goto .L1394
	if r3 == 5 goto .L1395
	if r3 != 6 goto .L1406
.L1396:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r3
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1395:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r5
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1394:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r9
	r2 += 1
	*(u8 *) (r0+-1) = r3
.L1393:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r0+-1) = r3
.L1392:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r3
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1391:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	if r2 == r4 goto .L1365
.L1366:
	r9 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+1)
	r3 ^= r9
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r0+0) = r3
	r3 = *(u8 *) (r0+1)
	r3 ^= r5
	r5 = *(u8 *) (r0+2)
	r5 ^= r9
	r9 = *(u8 *) (r2+3)
	*(u8 *) (r0+1) = r3
	*(u8 *) (r0+2) = r5
	r3 = *(u8 *) (r0+3)
	r5 = *(u8 *) (r2+4)
	r3 ^= r9
	r9 = *(u8 *) (r0+4)
	r9 ^= r5
	*(u8 *) (r0+3) = r3
	r5 = *(u8 *) (r2+5)
	r3 = *(u8 *) (r0+5)
	*(u8 *) (r0+4) = r9
	r3 ^= r5
	r9 = *(u8 *) (r2+6)
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r0+5) = r3
	r5 ^= r9
	r3 = *(u8 *) (r0+7)
	r9 = *(u8 *) (r2+7)
	*(u8 *) (r0+6) = r5
	r3 ^= r9
	*(u8 *) (r0+7) = r3
	r2 += 8
	r0 += 8
	if r2 != r4 goto .L1366
.L1365:
	r0 = r1
	exit
.L1406:
	r3 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r1+0) = r3
	goto .L1396
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1414
	r0 = r1
.L1409:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1408
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1408
	r0 = r4
	r5 = *(u8 *) (r4+2)
	r0 += 2
	if r5 == 0 goto .L1408
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1408
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1408
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1408
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1408
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1409
.L1408:
	if r3 == 0 goto .L1416
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1410
	if r5 == 1 goto .L1463
	if r5 == 2 goto .L1464
	if r5 == 3 goto .L1465
	if r5 == 4 goto .L1466
	if r5 == 5 goto .L1467
	if r5 != 6 goto .L1487
.L1468:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1485
	r2 += 1
	r0 += 1
	r3 += -1
.L1467:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1485
	r2 += 1
	r0 += 1
	r3 += -1
.L1466:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1485
	r2 += 1
	r0 += 1
	r3 += -1
.L1465:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1485
	r2 += 1
	r0 += 1
	r3 += -1
.L1464:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1485
	r2 += 1
	r0 += 1
	r3 += -1
.L1463:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1485
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1416
.L1410:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1485
	r0 += 1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 += -1
	r9 = r0
	r5 = r3
	if r4 == 0 goto .L1485
	r4 = *(u8 *) (r2+2)
	r0 += 1
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 += -1
	if r4 == 0 goto .L1485
	r4 = *(u8 *) (r2+3)
	r0 = r9
	r4 <<= 56
	r0 += 2
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 = r5
	r3 += -2
	if r4 == 0 goto .L1485
	r9 = *(u8 *) (r2+4)
	r0 += 1
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	r3 += -1
	if r9 == 0 goto .L1485
	r4 = *(u8 *) (r2+5)
	r0 += 1
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 += -1
	if r4 == 0 goto .L1485
	r9 = *(u8 *) (r2+6)
	r0 += 1
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	r3 += -1
	if r9 == 0 goto .L1485
	r4 = *(u8 *) (r2+7)
	r0 += 1
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 += -1
	if r4 == 0 goto .L1485
	r2 += 8
	r0 += 1
	r3 += -1
	if r5 != 7 goto .L1410
.L1416:
	*(u8 *) (r0+0) = r3
	r0 = r1
	exit
.L1485:
	if r3 == 0 goto .L1416
	r0 = r1
	exit
.L1487:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1485
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1468
.L1414:
	r0 = r1
	goto .L1408
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1488
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1489
	if r0 == 1 goto .L1530
	if r0 == 2 goto .L1531
	if r0 == 3 goto .L1532
	if r0 == 4 goto .L1533
	if r0 == 5 goto .L1534
	if r0 != 6 goto .L1544
.L1535:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1488
	r3 += 1
.L1534:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1545
.L1488:
	r0 = r3
	exit
.L1544:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1488
	r3 = 1
	goto .L1535
.L1545:
	r3 += 1
.L1533:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1488
	r3 += 1
.L1532:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1488
	r3 += 1
.L1531:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1488
	r3 += 1
.L1530:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1488
	r3 += 1
	if r2 == r3 goto .L1488
.L1489:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1488
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1488
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1488
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1488
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1488
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1488
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1488
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1488
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1489
	goto .L1488
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1551
.L1555:
	r3 = r2
	goto .L1550
.L1549:
	r3 += 1
	if r4 == r5 goto .L1548
.L1550:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1549
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1555
.L1551:
	r1 = r5
.L1548:
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
.L1558:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1557
	r3 = r1
.L1557:
	r1 += 1
	if r0 != 0 goto .L1558
	r0 = r3
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	r0 = r1
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r5 = r1
	r5 s>>= 56
	if r1 == 0 goto .L1572
	r1 = r2
.L1563:
	r1 += 1
	r3 = r1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1562
	r1 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L1562
	r1 = r3
	r4 = *(u8 *) (r3+2)
	r1 += 2
	if r4 == 0 goto .L1562
	r1 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1562
	r1 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1562
	r1 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1562
	r1 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1562
	r1 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1563
.L1562:
	r9 = r1
	r9 -= r2
	if r1 == r2 goto .L1564
	r9 += -1
	r8 = r9
	goto .L1570
.L1708:
	r0 += 1
	if r1 == 0 goto .L1707
.L1570:
	r1 = *(u8 *) (r0+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 != r5 goto .L1708
	if r0 == 0 goto .L1564
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L1573
	r6 = r0
	r6 += r8
	*(u64 *) (r10+-8) = r6
	r3 = r2
	r6 = r8
	r4 = r0
	r6 &= 7
	if r6 == 0 goto .L1567
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L1566
	if r4 != r1 goto .L1566
	r4 = r0
	r3 += 1
	r4 += 1
	r1 = *(u8 *) (r0+1)
	if r1 == 0 goto .L1566
	if r6 == 1 goto .L1567
	if r6 == 2 goto .L1625
	if r6 == 3 goto .L1626
	if r6 == 4 goto .L1627
	if r6 == 5 goto .L1628
	if r6 == 6 goto .L1629
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1566
	if r6 != r1 goto .L1566
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1566
.L1629:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1566
	if r6 != r1 goto .L1566
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1566
.L1628:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1566
	if r6 != r1 goto .L1566
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1566
.L1627:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1566
	if r6 != r1 goto .L1566
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1566
.L1626:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1566
	if r6 != r1 goto .L1566
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1566
.L1625:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1566
	if r6 != r1 goto .L1566
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1566
.L1567:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1566
	r7 = *(u64 *) (r10+-8)
	if r4 == r7 goto .L1566
	if r6 != r1 goto .L1566
	r3 += 1
	r7 = r4
	r6 = r3
	r7 += 1
	r1 = *(u8 *) (r4+1)
	if r1 == 0 goto .L1566
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1566
	if r9 != r1 goto .L1566
	r3 += 1
	r1 = *(u8 *) (r4+2)
	if r1 == 0 goto .L1566
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1566
	if r9 != r1 goto .L1566
	r3 = r6
	r1 = *(u8 *) (r4+3)
	r3 += 2
	if r1 == 0 goto .L1566
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1566
	if r4 != r1 goto .L1566
	r3 += 1
	r1 = *(u8 *) (r7+3)
	if r1 == 0 goto .L1566
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1566
	if r9 != r1 goto .L1566
	r3 += 1
	r1 = *(u8 *) (r7+4)
	if r1 == 0 goto .L1566
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1566
	if r4 != r1 goto .L1566
	r3 += 1
	r1 = *(u8 *) (r7+5)
	if r1 == 0 goto .L1566
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1566
	if r9 != r1 goto .L1566
	r3 += 1
	r1 = *(u8 *) (r7+6)
	if r1 == 0 goto .L1566
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1566
	if r4 != r1 goto .L1566
	r4 = r7
	r3 += 1
	r4 += 7
	r1 = *(u8 *) (r7+7)
	if r1 != 0 goto .L1567
.L1566:
	r3 = *(u8 *) (r3+0)
	if r3 == r1 goto .L1564
	r0 += 1
	goto .L1570
.L1707:
	r0 = r1
	exit
.L1564:
	exit
.L1573:
	r3 = r2
	goto .L1566
.L1572:
	r1 = r2
	goto .L1562
	.size	strstr, .-strstr
	.align	3
	.global	copysign
	.type	copysign, @function
copysign:
	r7 = r2
	r6 = r1
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1718
.L1710:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1713
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1712
.L1713:
	r0 = r6
	exit
.L1718:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1710
.L1712:
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
	*(u64 *) (r10+-8) = r3
	r7 = r4
	if r4 == 0 goto .L1727
	if r4 >= r2 goto .L1729
	r2 -= r4
	r5 = r1
	r5 += r2
	if r1 > r5 goto .L1729
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
.L1726:
	r0 = *(u8 *) (r1+0)
	r4 = r1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	if r0 == r9 goto .L1802
	if r5 > r1 goto .L1726
.L1729:
	r4 = 0
.L1719:
	r0 = r4
	exit
.L1802:
	r3 = r7
	r0 = *(u64 *) (r10+-8)
	r3 += -1
	r0 += 1
	if r7 == 1 goto .L1719
	r6 = r3
	r2 = r1
	r6 &= 7
	if r6 == 0 goto .L1794
	if r6 == 1 goto .L1772
	if r6 == 2 goto .L1773
	if r6 == 3 goto .L1774
	if r6 == 4 goto .L1775
	if r6 == 5 goto .L1776
	if r6 != 6 goto .L1803
.L1777:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1789
	r3 += -1
	r2 += 1
	r0 += 1
.L1776:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1789
	r3 += -1
	r2 += 1
	r0 += 1
.L1775:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1789
	r3 += -1
	r2 += 1
	r0 += 1
.L1774:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1789
	r3 += -1
	r2 += 1
	r0 += 1
.L1773:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1789
	r3 += -1
	r2 += 1
	r0 += 1
.L1772:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1789
	r3 += -1
	r2 += 1
	r0 += 1
	if r3 == 0 goto .L1719
.L1794:
	*(u64 *) (r10+-16) = r5
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r7
	r5 = *(u8 *) (r2+0)
	r1 = *(u8 *) (r0+0)
	if r5 != r1 goto .L1800
.L1724:
	r2 += 1
	r0 += 1
	r3 += -1
	r5 = r2
	r6 = r3
	r1 = r0
	r8 = *(u8 *) (r2+0)
	r7 = *(u8 *) (r0+0)
	if r8 != r7 goto .L1800
	r2 += 1
	r0 += 1
	r3 += -1
	r8 = *(u8 *) (r2+0)
	r7 = *(u8 *) (r0+0)
	if r8 != r7 goto .L1800
	r3 = r6
	r2 = r5
	r0 = r1
	r3 += -2
	r2 += 2
	r0 += 2
	r8 = *(u8 *) (r5+2)
	r7 = *(u8 *) (r1+2)
	if r8 != r7 goto .L1800
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+3)
	r7 = *(u8 *) (r1+3)
	if r8 != r7 goto .L1800
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+4)
	r7 = *(u8 *) (r1+4)
	if r8 != r7 goto .L1800
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+5)
	r7 = *(u8 *) (r1+5)
	if r8 != r7 goto .L1800
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+6)
	r7 = *(u8 *) (r1+6)
	if r8 != r7 goto .L1800
	r3 += -1
	r2 += 1
	r0 += 1
	if r6 == 7 goto .L1719
	r5 = *(u8 *) (r2+0)
	r1 = *(u8 *) (r0+0)
	if r5 == r1 goto .L1724
.L1800:
	r5 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-24)
	r7 = *(u64 *) (r10+-32)
.L1789:
	if r3 == 0 goto .L1719
	r3 = *(u8 *) (r2+0)
	r2 = *(u8 *) (r0+0)
	if r3 == r2 goto .L1719
	if r5 > r1 goto .L1726
	goto .L1729
.L1803:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1789
	r3 += -1
	r2 += 1
	r0 += 1
	goto .L1777
.L1727:
	r4 = r1
	r0 = r4
	exit
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	*(u64 *) (r10+-16) = r2
	r7 = r1
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	r2 = r0
	r0 = 0
	if r0 s>= r2 goto .L1843
	*(u64 *) (r10+-8) = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1840
.L1844:
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1809:
	r1 = r7
	r2 = 0x3fe0000000000000 ll
	call	__muldf3
	r8 += 1
	r2 = r6
	r8 <<= 32
	r7 = r0
	r8 s>>= 32
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1810
	r1 = r7
	r2 = 0x3fe0000000000000 ll
	call	__muldf3
	r8 += 1
	r2 = r6
	r8 <<= 32
	r7 = r0
	r8 s>>= 32
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1810
	r1 = r7
	r2 = 0x3fe0000000000000 ll
	call	__muldf3
	r8 += 1
	r2 = r6
	r8 <<= 32
	r7 = r0
	r8 s>>= 32
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1810
	r1 = r7
	r2 = 0x3fe0000000000000 ll
	call	__muldf3
	r8 += 1
	r2 = r6
	r8 <<= 32
	r7 = r0
	r8 s>>= 32
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L1809
.L1810:
	r3 = *(u64 *) (r10+-16)
	*(u32 *) (r3+0) = r8
	r4 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L1814
	r5 = -9223372036854775808 ll
	r5 ^= r7
	r7 = r5
.L1814:
	r0 = r7
	exit
.L1843:
	r1 = -9223372036854775808 ll
	r1 ^= r7
	*(u64 *) (r10+-8) = 1
	r7 = r1
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s>= 0 goto .L1844
.L1840:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	r8 = 0
	call	__ltdf2
	if r8 s< r0 goto .L1810
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	if r0 == r8 goto .L1810
	r6 = r8
.L1813:
	r2 = r7
	r1 = r7
	call	__adddf3
	r8 += -1
	r2 = 0x3fe0000000000000 ll
	r8 <<= 32
	r7 = r0
	r8 s>>= 32
	r1 = r0
	call	__ltdf2
	if r6 s< r0 goto .L1810
	r2 = r7
	r1 = r7
	call	__adddf3
	r8 += -1
	r2 = 0x3fe0000000000000 ll
	r8 <<= 32
	r7 = r0
	r8 s>>= 32
	r1 = r0
	call	__ltdf2
	if r6 s< r0 goto .L1810
	r2 = r7
	r1 = r7
	call	__adddf3
	r8 += -1
	r2 = 0x3fe0000000000000 ll
	r8 <<= 32
	r7 = r0
	r8 s>>= 32
	r1 = r0
	call	__ltdf2
	if r6 s< r0 goto .L1810
	r2 = r7
	r1 = r7
	call	__adddf3
	r8 += -1
	r2 = 0x3fe0000000000000 ll
	r8 <<= 32
	r7 = r0
	r8 s>>= 32
	r1 = r0
	call	__ltdf2
	if r6 s>= r0 goto .L1813
	goto .L1810
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L1848
	r0 = 0
.L1847:
	r5 = r2
	r4 = r3
	r1 = r3
	r4 &= 1
	r5 += r2
	r4 = -r4
	r1 >>= 1
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L1864
	r1 &= 1
	r9 = r5
	r1 = -r1
	r2 = r3
	r1 &= r5
	r9 += r5
	r2 >>= 2
	r0 += r1
	if r2 == 0 goto .L1845
	r2 &= 1
	r5 = r9
	r2 = -r2
	r1 = r3
	r2 &= r9
	r5 += r9
	r1 >>= 3
	r0 += r2
	if r1 == 0 goto .L1845
	r1 &= 1
	r4 = r5
	r1 = -r1
	r9 = r3
	r1 &= r5
	r4 += r5
	r9 >>= 4
	r0 += r1
	if r9 == 0 goto .L1845
	r9 &= 1
	r5 = r4
	r9 = -r9
	r1 = r3
	r9 &= r4
	r5 += r4
	r1 >>= 5
	r0 += r9
	if r1 == 0 goto .L1845
	r1 &= 1
	r4 = r5
	r1 = -r1
	r2 = r3
	r1 &= r5
	r4 += r5
	r2 >>= 6
	r0 += r1
	if r2 == 0 goto .L1845
	r2 &= 1
	r9 = r4
	r2 = -r2
	r5 = r3
	r2 &= r4
	r9 += r4
	r5 >>= 7
	r0 += r2
	if r5 == 0 goto .L1845
	r5 &= 1
	r2 = r9
	r5 = -r5
	r2 += r9
	r5 &= r9
	r3 >>= 8
	r0 += r5
	if r3 != 0 goto .L1847
	exit
.L1848:
	r0 = r1
.L1845:
	exit
.L1864:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1874
	r9 = 32
	r4 = 1
.L1866:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1867
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1867
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1867
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1867
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1867
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1867
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1867
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1867
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1866
.L1891:
	r1 = 0
.L1869:
	if r3 != 0 goto .L1872
	r0 = r1
.L1872:
	exit
.L1867:
	if r4 == 0 goto .L1891
.L1874:
	r1 = 0
.L1868:
	if r2 >= r0 goto .L1871
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r1
	r1 = r5
.L1871:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L1868
	goto .L1869
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
	if r2 == r1 goto .L1894
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
.L1894:
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
	if r0 == r2 goto .L1897
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L1897:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r9 = r2;r9 &= 0xffffffff
	if r1 == 0 goto .L1901
	r0 = 0
.L1900:
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
	if r1 == 0 goto .L1917
	r9 = r1
	r4 = r5
	r9 &= 1
	r4 += r5
	r9 = -r9
	r1 >>= 1
	r9 &= r5
	r2 = r4;r2 &= 0xffffffff
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L1899
	r3 = r1
	r5 = r2
	r3 &= 1
	r5 += r2
	r3 = -r3
	r1 >>= 1
	r3 &= r2
	r9 = r5;r9 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L1899
	r3 = r1
	r4 = r9
	r3 &= 1
	r4 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r2 = r4;r2 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L1899
	r5 = r1
	r9 = r2
	r5 &= 1
	r9 += r2
	r5 = -r5
	r1 >>= 1
	r5 &= r2
	r2 = r9;r2 &= 0xffffffff
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L1899
	r3 = r1
	r4 = r2
	r3 &= 1
	r4 += r2
	r3 = -r3
	r1 >>= 1
	r3 &= r2
	r5 = r4;r5 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L1899
	r9 = r1
	r2 = r5
	r9 &= 1
	r2 += r5
	r9 = -r9
	r1 >>= 1
	r9 &= r5
	r5 = r2;r5 &= 0xffffffff
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L1899
	r3 = r1
	r4 = r5
	r3 &= 1
	r4 += r5
	r3 = -r3
	r1 >>= 1
	r3 &= r5
	r9 = r4;r9 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 != 0 goto .L1900
	exit
.L1901:
	r0 = r1
.L1899:
	exit
.L1917:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r7 = r1
	r4 = r3
	r0 = r3
	r4 &= -8
	r8 = r2
	r0 >>= 3
	r9 = r4;r9 &= 0xffffffff
	if r1 < r2 goto .L1922
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2044
.L1922:
	if r0 == 0 goto .L1921
	r0 <<= 3
	r4 = r8
	r5 = r0
	r2 = r0
	r1 = r7
	r2 += -8
	r5 += r8
	r2 >>= 3
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L1925
	if r2 == 1 goto .L2002
	if r2 == 2 goto .L2003
	if r2 == 3 goto .L2004
	if r2 == 4 goto .L2005
	if r2 == 5 goto .L2006
	if r2 == 6 goto .L2007
	r0 = *(u64 *) (r8+0)
	r4 += 8
	*(u64 *) (r7+0) = r0
	r1 += 8
.L2007:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2006:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L2005:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2004:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L2003:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L2002:
	r0 = *(u64 *) (r4+0)
	*(u64 *) (r1+0) = r0
	r4 += 8
	r1 += 8
	if r4 == r5 goto .L1921
.L1925:
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
	if r4 != r5 goto .L1925
.L1921:
	if r9 > r3 goto .L1918
	r3 += -1
	r3 -= r9
	r5 = r8
	r4 = r8
	r5 += r9
	r4 += 1
	r1 = r7
	r4 += r9
	r1 += r9
	r9 = r3;r9 &= 0xffffffff
	r4 += r9
	r3 = r4
	r3 -= r5
	r3 &= 7
	if r3 == 0 goto .L1926
	if r3 == 1 goto .L2008
	if r3 == 2 goto .L2009
	if r3 == 3 goto .L2010
	if r3 == 4 goto .L2011
	if r3 == 5 goto .L2012
	if r3 == 6 goto .L2013
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2013:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2012:
	r9 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r9
	r5 += 1
.L2011:
	r3 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r3
	r5 += 1
.L2010:
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2009:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2008:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r9
	r5 += 1
	r1 += 1
	if r5 == r4 goto .L2045
.L1926:
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r3
	r2 = *(u8 *) (r5+1)
	*(u8 *) (r1+1) = r2
	r0 = *(u8 *) (r5+2)
	*(u8 *) (r1+2) = r0
	r9 = *(u8 *) (r5+3)
	*(u8 *) (r1+3) = r9
	r3 = *(u8 *) (r5+4)
	*(u8 *) (r1+4) = r3
	r2 = *(u8 *) (r5+5)
	*(u8 *) (r1+5) = r2
	r0 = *(u8 *) (r5+6)
	*(u8 *) (r1+6) = r0
	r9 = *(u8 *) (r5+7)
	*(u8 *) (r1+7) = r9
	r5 += 8
	r1 += 8
	if r5 != r4 goto .L1926
	exit
.L2044:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1918
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1927
	if r3 == 1 goto .L1996
	if r3 == 2 goto .L1997
	if r3 == 3 goto .L1998
	if r3 == 4 goto .L1999
	if r3 == 5 goto .L2000
	if r3 == 6 goto .L2001
	r4 = r8
	r0 = r7
	r4 += r5
	r0 += r5
	r1 = *(u8 *) (r4+0)
	r5 += -1
	*(u8 *) (r0+0) = r1
	r9 = r5
.L2001:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2000:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L1999:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1998:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L1997:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1996:
	r4 = r8
	r0 = r7
	r4 += r9
	r0 += r9
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2046
.L1927:
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
	if r9 != -1 goto .L1927
.L1918:
	exit
.L2045:
	exit
.L2046:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r7 = r1
	r0 = r3
	r8 = r2
	r0 >>= 1
	if r1 < r2 goto .L2051
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2137
.L2051:
	if r0 == 0 goto .L2050
	r0 += r0
	r4 = r8
	r9 = r0
	r5 = r0
	r1 = r7
	r5 += -2
	r9 += r8
	r5 >>= 1
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2054
	if r5 == 1 goto .L2110
	if r5 == 2 goto .L2111
	if r5 == 3 goto .L2112
	if r5 == 4 goto .L2113
	if r5 == 5 goto .L2114
	if r5 == 6 goto .L2115
	r0 = *(u16 *) (r8+0)
	r4 += 2
	*(u16 *) (r7+0) = r0
	r1 += 2
.L2115:
	r2 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r4 += 2
.L2114:
	r5 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r5
	r4 += 2
.L2113:
	r0 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r0
	r4 += 2
.L2112:
	r2 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r4 += 2
.L2111:
	r5 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r5
	r4 += 2
.L2110:
	r0 = *(u16 *) (r4+0)
	*(u16 *) (r1+0) = r0
	r4 += 2
	r1 += 2
	if r4 == r9 goto .L2050
.L2054:
	r2 = *(u16 *) (r4+0)
	*(u16 *) (r1+0) = r2
	r5 = *(u16 *) (r4+2)
	*(u16 *) (r1+2) = r5
	r0 = *(u16 *) (r4+4)
	*(u16 *) (r1+4) = r0
	r2 = *(u16 *) (r4+6)
	*(u16 *) (r1+6) = r2
	r5 = *(u16 *) (r4+8)
	*(u16 *) (r1+8) = r5
	r0 = *(u16 *) (r4+10)
	*(u16 *) (r1+10) = r0
	r2 = *(u16 *) (r4+12)
	*(u16 *) (r1+12) = r2
	r5 = *(u16 *) (r4+14)
	*(u16 *) (r1+14) = r5
	r4 += 16
	r1 += 16
	if r4 != r9 goto .L2054
.L2050:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L2047
	r3 += -1
	r4 = r8
	r3 = r3;r3 &= 0xffffffff
	r0 = r7
	r4 += r3
	r0 += r3
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	exit
.L2137:
	r2 = r3
	r2 += -1
	r4 = r2;r4 &= 0xffffffff
	r9 = r4
	if r3 == 0 goto .L2047
	r5 = r4
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2055
	if r5 == 1 goto .L2104
	if r5 == 2 goto .L2105
	if r5 == 3 goto .L2106
	if r5 == 4 goto .L2107
	if r5 == 5 goto .L2108
	if r5 == 6 goto .L2109
	r3 = r8
	r0 = r7
	r3 += r4
	r0 += r4
	r1 = *(u8 *) (r3+0)
	r4 += -1
	*(u8 *) (r0+0) = r1
	r9 = r4
.L2109:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2108:
	r3 = r7
	r0 = r8
	r3 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r1
.L2107:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2106:
	r3 = r7
	r0 = r8
	r3 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r1
.L2105:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2104:
	r3 = r8
	r0 = r7
	r3 += r9
	r0 += r9
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2138
.L2055:
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
	if r9 != -1 goto .L2055
.L2047:
	exit
.L2138:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r7 = r1
	r4 = r3
	r0 = r3
	r4 &= -4
	r8 = r2
	r0 >>= 2
	r9 = r4;r9 &= 0xffffffff
	if r1 < r2 goto .L2143
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2265
.L2143:
	if r0 == 0 goto .L2142
	r0 <<= 2
	r4 = r8
	r5 = r0
	r2 = r0
	r1 = r7
	r2 += -4
	r5 += r8
	r2 >>= 2
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L2146
	if r2 == 1 goto .L2223
	if r2 == 2 goto .L2224
	if r2 == 3 goto .L2225
	if r2 == 4 goto .L2226
	if r2 == 5 goto .L2227
	if r2 == 6 goto .L2228
	r0 = *(u32 *) (r8+0)
	r4 += 4
	*(u32 *) (r7+0) = r0
	r1 += 4
.L2228:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2227:
	r0 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r0
	r4 += 4
.L2226:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2225:
	r0 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r0
	r4 += 4
.L2224:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2223:
	r0 = *(u32 *) (r4+0)
	*(u32 *) (r1+0) = r0
	r4 += 4
	r1 += 4
	if r4 == r5 goto .L2142
.L2146:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r1+0) = r2
	r0 = *(u32 *) (r4+4)
	*(u32 *) (r1+4) = r0
	r2 = *(u32 *) (r4+8)
	*(u32 *) (r1+8) = r2
	r0 = *(u32 *) (r4+12)
	*(u32 *) (r1+12) = r0
	r2 = *(u32 *) (r4+16)
	*(u32 *) (r1+16) = r2
	r0 = *(u32 *) (r4+20)
	*(u32 *) (r1+20) = r0
	r2 = *(u32 *) (r4+24)
	*(u32 *) (r1+24) = r2
	r0 = *(u32 *) (r4+28)
	*(u32 *) (r1+28) = r0
	r4 += 32
	r1 += 32
	if r4 != r5 goto .L2146
.L2142:
	if r9 > r3 goto .L2139
	r3 += -1
	r3 -= r9
	r5 = r8
	r4 = r8
	r5 += r9
	r4 += 1
	r1 = r7
	r4 += r9
	r1 += r9
	r9 = r3;r9 &= 0xffffffff
	r4 += r9
	r3 = r4
	r3 -= r5
	r3 &= 7
	if r3 == 0 goto .L2147
	if r3 == 1 goto .L2229
	if r3 == 2 goto .L2230
	if r3 == 3 goto .L2231
	if r3 == 4 goto .L2232
	if r3 == 5 goto .L2233
	if r3 == 6 goto .L2234
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2234:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2233:
	r9 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r9
	r5 += 1
.L2232:
	r3 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r3
	r5 += 1
.L2231:
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2230:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2229:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r9
	r5 += 1
	r1 += 1
	if r5 == r4 goto .L2266
.L2147:
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r3
	r2 = *(u8 *) (r5+1)
	*(u8 *) (r1+1) = r2
	r0 = *(u8 *) (r5+2)
	*(u8 *) (r1+2) = r0
	r9 = *(u8 *) (r5+3)
	*(u8 *) (r1+3) = r9
	r3 = *(u8 *) (r5+4)
	*(u8 *) (r1+4) = r3
	r2 = *(u8 *) (r5+5)
	*(u8 *) (r1+5) = r2
	r0 = *(u8 *) (r5+6)
	*(u8 *) (r1+6) = r0
	r9 = *(u8 *) (r5+7)
	*(u8 *) (r1+7) = r9
	r5 += 8
	r1 += 8
	if r5 != r4 goto .L2147
	exit
.L2265:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2139
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2148
	if r3 == 1 goto .L2217
	if r3 == 2 goto .L2218
	if r3 == 3 goto .L2219
	if r3 == 4 goto .L2220
	if r3 == 5 goto .L2221
	if r3 == 6 goto .L2222
	r4 = r8
	r0 = r7
	r4 += r5
	r0 += r5
	r1 = *(u8 *) (r4+0)
	r5 += -1
	*(u8 *) (r0+0) = r1
	r9 = r5
.L2222:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2221:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L2220:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2219:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L2218:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2217:
	r4 = r8
	r0 = r7
	r4 += r9
	r0 += r9
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2267
.L2148:
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
	if r9 != -1 goto .L2148
.L2139:
	exit
.L2266:
	exit
.L2267:
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
	if r0 != 0 goto .L2277
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2276
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2278
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2279
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2280
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2281
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2282
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2283
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2284
	r2 >>= 38
	if r2 != 0 goto .L2285
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2286
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2287
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2288
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2289
	r3 >>= 1
	if r3 != 0 goto .L2290
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L2293
.L2276:
	exit
.L2277:
	r0 = 0
	exit
.L2288:
	r0 = 12
	exit
.L2293:
	r0 = 15
	exit
.L2278:
	r0 = 2
	exit
.L2279:
	r0 = 3
	exit
.L2280:
	r0 = 4
	exit
.L2281:
	r0 = 5
	exit
.L2282:
	r0 = 6
	exit
.L2283:
	r0 = 7
	exit
.L2284:
	r0 = 8
	exit
.L2285:
	r0 = 9
	exit
.L2286:
	r0 = 10
	exit
.L2287:
	r0 = 11
	exit
.L2289:
	r0 = 13
	exit
.L2290:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2297
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2298
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2299
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2300
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2301
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2302
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2303
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2304
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2305
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2306
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2307
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2308
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2309
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2310
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2311
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2314
	exit
.L2297:
	r0 = 0
	exit
.L2298:
	r0 = 1
	exit
.L2309:
	r0 = 12
	exit
.L2314:
	r0 = 15
	exit
.L2299:
	r0 = 2
	exit
.L2300:
	r0 = 3
	exit
.L2301:
	r0 = 4
	exit
.L2302:
	r0 = 5
	exit
.L2303:
	r0 = 6
	exit
.L2304:
	r0 = 7
	exit
.L2305:
	r0 = 8
	exit
.L2306:
	r0 = 9
	exit
.L2307:
	r0 = 10
	exit
.L2308:
	r0 = 11
	exit
.L2310:
	r0 = 13
	exit
.L2311:
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
	if r0 s>= 0 goto .L2321
	r1 = r6
	call	__fixsfdi
	exit
.L2321:
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
	r9 = r2;r9 &= 0xffffffff
	if r1 == 0 goto .L2327
	r0 = 0
.L2326:
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
	if r1 == 0 goto .L2343
	r9 = r1
	r4 = r5
	r9 &= 1
	r4 += r5
	r9 = -r9
	r1 >>= 1
	r9 &= r5
	r2 = r4;r2 &= 0xffffffff
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2325
	r3 = r1
	r5 = r2
	r3 &= 1
	r5 += r2
	r3 = -r3
	r1 >>= 1
	r3 &= r2
	r9 = r5;r9 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2325
	r3 = r1
	r4 = r9
	r3 &= 1
	r4 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r2 = r4;r2 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2325
	r5 = r1
	r9 = r2
	r5 &= 1
	r9 += r2
	r5 = -r5
	r1 >>= 1
	r5 &= r2
	r2 = r9;r2 &= 0xffffffff
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2325
	r3 = r1
	r4 = r2
	r3 &= 1
	r4 += r2
	r3 = -r3
	r1 >>= 1
	r3 &= r2
	r5 = r4;r5 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2325
	r9 = r1
	r2 = r5
	r9 &= 1
	r2 += r5
	r9 = -r9
	r1 >>= 1
	r9 &= r5
	r5 = r2;r5 &= 0xffffffff
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2325
	r3 = r1
	r4 = r5
	r3 &= 1
	r4 += r5
	r3 = -r3
	r1 >>= 1
	r3 &= r5
	r9 = r4;r9 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 != 0 goto .L2326
	exit
.L2327:
	r0 = r1
.L2325:
	exit
.L2343:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r9 = r1;r9 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r9 == 0 goto .L2347
	if r2 == 0 goto .L2348
	r0 = 0
.L2346:
	r3 = r2
	r4 = r9
	r3 &= 1
	r4 += r9
	r3 = -r3
	r5 = r4;r5 &= 0xffffffff
	r3 &= r9
	r2 >>= 1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2364
	r1 = r2
	r9 = r5
	r1 &= 1
	r9 += r5
	r1 = -r1
	r3 = r9;r3 &= 0xffffffff
	r1 &= r5
	r2 >>= 1
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2345
	r5 = r2
	r4 = r3
	r5 &= 1
	r4 += r3
	r5 = -r5
	r9 = r4;r9 &= 0xffffffff
	r5 &= r3
	r2 >>= 1
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2345
	r1 = r2
	r3 = r9
	r1 &= 1
	r3 += r9
	r1 = -r1
	r5 = r3;r5 &= 0xffffffff
	r1 &= r9
	r2 >>= 1
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2345
	r9 = r2
	r4 = r5
	r9 &= 1
	r4 += r5
	r9 = -r9
	r4 = r4;r4 &= 0xffffffff
	r9 &= r5
	r2 >>= 1
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2345
	r1 = r2
	r3 = r4
	r1 &= 1
	r3 += r4
	r1 = -r1
	r5 = r3;r5 &= 0xffffffff
	r1 &= r4
	r2 >>= 1
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2345
	r9 = r2
	r4 = r5
	r9 &= 1
	r4 += r5
	r9 = -r9
	r4 = r4;r4 &= 0xffffffff
	r9 &= r5
	r2 >>= 1
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2345
	r3 = r2
	r1 = r4
	r3 &= 1
	r1 += r4
	r3 = -r3
	r9 = r1;r9 &= 0xffffffff
	r3 &= r4
	r2 >>= 1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L2346
	exit
.L2348:
	r0 = r2
.L2345:
	exit
.L2347:
	r0 = r9
	exit
.L2364:
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
	if r0 < r2 goto .L2374
	r9 = 32
	r4 = 1
.L2366:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2367
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2367
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2367
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2367
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2367
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2367
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2367
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2367
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2367
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2367
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2367
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2367
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2367
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2367
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2367
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2367
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2366
.L2391:
	r1 = 0
.L2369:
	if r3 != 0 goto .L2372
	r0 = r1
.L2372:
	exit
.L2367:
	if r4 == 0 goto .L2391
.L2374:
	r1 = 0
.L2368:
	if r2 >= r0 goto .L2371
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r1
	r1 = r5
.L2371:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2368
	goto .L2369
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2395
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2396
	r0 = r8
	r0 &= 1
	exit
.L2396:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2395:
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
	if r3 s>= r0 goto .L2400
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2401
	r0 = r8
	r0 &= 1
	exit
.L2401:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2400:
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
	if r2 s< 0 goto .L2432
	r4 = 0
.L2405:
	if r3 == 0 goto .L2410
	r5 = r3
	r1 = r0
	r2 = r3
	r5 &= 1
	r1 <<= 33
	r5 = -r5
	r2 s>>= 1
	r0 &= r5
	r2 <<= 32
	r1 s>>= 32
	r3 = r2
	r3 s>>= 32
	if r2 == 0 goto .L2406
	r9 = r1
	r3 &= 1
	r9 <<= 33
	r3 = -r3
	r9 s>>= 32
	r1 &= r3
	r2 s>>= 33
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2406
	r1 = 30
.L2407:
	r3 = r2
	r2 &= 1
	r2 = -r2
	r5 = r9
	r3 s>>= 1
	r9 &= r2
	r5 <<= 33
	r2 = r3
	r0 += r9
	r5 s>>= 32
	r0 <<= 32
	r2 <<= 32
	r0 s>>= 32
	if r3 == 0 goto .L2406
	r3 &= 1
	r3 = -r3
	r6 = r5
	r2 s>>= 33
	r5 &= r3
	r1 += -1
	r6 <<= 33
	r0 += r5
	r3 = r6
	r9 = r2
	r0 <<= 32
	r1 &= 0xff
	r3 s>>= 32
	r9 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2406
	r5 = r3
	r2 &= 1
	r2 = -r2
	r3 &= r2
	r9 s>>= 33
	r0 += r3
	r1 += -1
	r5 <<= 33
	r3 = r9
	r0 <<= 32
	r1 &= 0xff
	r5 s>>= 32
	r3 <<= 32
	r0 s>>= 32
	if r9 == 0 goto .L2406
	r6 = r5
	r3 s>>= 33
	r1 += -1
	r9 &= 1
	r6 <<= 33
	r9 = -r9
	r2 = r3
	r5 &= r9
	r1 &= 0xff
	r0 += r5
	r6 s>>= 32
	r0 <<= 32
	r2 <<= 32
	r0 s>>= 32
	if r3 == 0 goto .L2406
	r9 = r6
	r1 += -1
	r3 &= 1
	r9 <<= 33
	r3 = -r3
	r1 &= 0xff
	r6 &= r3
	r9 s>>= 32
	r0 += r6
	r2 s>>= 33
	r0 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2406
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2407
.L2406:
	if r4 == 0 goto .L2408
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L2408:
	exit
.L2432:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2405
.L2410:
	r0 = r3
	goto .L2406
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2466
	r4 = 0
.L2434:
	if r2 s>= 0 goto .L2435
	r2 = -r2
	r4 ^= 1
.L2435:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2445
	r9 = 32
	r1 = 1
.L2436:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2437
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2437
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2437
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2437
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2437
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2437
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2437
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2437
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2437
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2437
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2437
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2437
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2437
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2437
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2437
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2437
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2436
.L2465:
	r0 = 0
.L2439:
	if r4 == 0 goto .L2433
	r0 = -r0
.L2433:
	exit
.L2437:
	if r1 == 0 goto .L2465
.L2445:
	r0 = 0
.L2438:
	if r2 >= r3 goto .L2441
	r3 -= r2
	r5 = r1
	r3 = r3;r3 &= 0xffffffff
	r5 |= r0
	r0 = r5
.L2441:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2438
	goto .L2439
.L2466:
	r1 = -r1
	r4 = 1
	goto .L2434
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2504
	r4 = 0
.L2468:
	if r0 s>= 0 goto .L2469
	r0 = -r0
.L2469:
	r3 = r1;r3 &= 0xffffffff
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2484
	r9 = 32
	r1 = 1
.L2470:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2503
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2503
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2503
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2503
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2503
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2503
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2503
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2503
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2503
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2503
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2503
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2503
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2503
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2503
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2503
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2503
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2470
.L2473:
	r0 = r3
	if r4 == 0 goto .L2467
	r0 = -r0
.L2467:
	exit
.L2503:
	if r1 == 0 goto .L2473
.L2484:
	if r0 >= r3 goto .L2474
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2474:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2484
	goto .L2473
.L2504:
	r1 = -r1
	r4 = 1
	goto .L2468
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r0 < r2 goto .L2530
	r1 = r2
	r4 = 0
	r1 <<= 48
	if r1 s<= r4 goto .L2530
	r9 = r2
	r9 += r2
	r9 &= 0xffff
	if r9 > r0 goto .L2532
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2532
	r1 = r2
	r1 <<= 2
	r1 &= 0xffff
	if r1 > r0 goto .L2534
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2534
	r1 = r2
	r1 <<= 3
	r1 &= 0xffff
	if r1 > r0 goto .L2536
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2536
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L2538
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2538
	r9 = r2
	r9 <<= 5
	r9 &= 0xffff
	if r9 > r0 goto .L2540
	r5 = r9
	r5 <<= 48
	if r5 s<= r4 goto .L2540
	r1 = r2
	r1 <<= 6
	r1 &= 0xffff
	if r1 > r0 goto .L2542
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2542
	r1 = r2
	r1 <<= 7
	r1 &= 0xffff
	if r1 > r0 goto .L2544
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2544
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L2546
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2546
	r9 = r2
	r9 <<= 9
	r9 &= 0xffff
	if r9 > r0 goto .L2548
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2548
	r1 = r2
	r1 <<= 10
	r1 &= 0xffff
	if r1 > r0 goto .L2550
	r9 = r1
	r9 <<= 48
	if r9 s<= r4 goto .L2550
	r1 = r2
	r1 <<= 11
	r1 &= 0xffff
	if r1 > r0 goto .L2552
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2552
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L2554
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2554
	r9 = r2
	r9 <<= 13
	r9 &= 0xffff
	if r9 > r0 goto .L2556
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2556
	r1 = r2
	r1 <<= 14
	r1 &= 0xffff
	if r1 > r0 goto .L2558
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2558
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L2578
	r1 = r4
	if r2 != r4 goto .L2578
.L2509:
	if r3 != 0 goto .L2529
	r0 = r1
.L2529:
	exit
.L2530:
	r4 = 1
.L2508:
	if r2 >= r0 goto .L2561
	r0 -= r2
	r1 = r4
	r0 &= 0xffff
.L2512:
	r9 = r4
	r5 = r2
	r9 >>= 1
	r5 >>= 1
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2514
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2514:
	r9 = r4
	r5 = r2
	r9 >>= 2
	r5 >>= 2
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2515
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2515:
	r9 = r4
	r5 = r2
	r9 >>= 3
	r5 >>= 3
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2516
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2516:
	r9 = r4
	r5 = r2
	r9 >>= 4
	r5 >>= 4
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2517
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2517:
	r9 = r4
	r5 = r2
	r9 >>= 5
	r5 >>= 5
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2518
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2518:
	r9 = r4
	r5 = r2
	r9 >>= 6
	r5 >>= 6
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2519
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2519:
	r9 = r4
	r5 = r2
	r9 >>= 7
	r5 >>= 7
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2520
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2520:
	r9 = r4
	r5 = r2
	r9 >>= 8
	r5 >>= 8
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2521
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2521:
	r9 = r4
	r5 = r2
	r9 >>= 9
	r5 >>= 9
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2522
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2522:
	r9 = r4
	r5 = r2
	r9 >>= 10
	r5 >>= 10
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2523
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2523:
	r9 = r4
	r5 = r2
	r9 >>= 11
	r5 >>= 11
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2524
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2524:
	r9 = r4
	r5 = r2
	r9 >>= 12
	r5 >>= 12
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2525
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2525:
	r9 = r4
	r5 = r2
	r9 >>= 13
	r5 >>= 13
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2526
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2526:
	r9 = r4
	r5 = r2
	r9 >>= 14
	r5 >>= 14
	r5 &= 0xffff
	if r9 == 0 goto .L2509
	if r5 >= r0 goto .L2527
	r0 -= r5
	r1 |= r9
	r0 &= 0xffff
	r1 &= 0xffff
.L2527:
	r2 >>= 15
	r4 >>= 15
	r2 &= 0xffff
	if r4 == 0 goto .L2509
	if r2 >= r0 goto .L2509
	r0 -= r2
	r1 |= 1
	r0 &= 0xffff
	r1 &= 0xffff
	goto .L2509
.L2561:
	r1 = 0
	goto .L2512
.L2532:
	r2 = r9
	r4 = 2
	goto .L2508
.L2534:
	r2 = r1
	r4 = 4
	goto .L2508
.L2536:
	r2 = r1
	r4 = 8
	goto .L2508
.L2538:
	r2 = r9
	r4 = 16
	goto .L2508
.L2548:
	r2 = r9
	r4 = 512
	goto .L2508
.L2578:
	r4 = 32768
	goto .L2508
.L2540:
	r2 = r9
	r4 = 32
	goto .L2508
.L2542:
	r2 = r1
	r4 = 64
	goto .L2508
.L2544:
	r2 = r1
	r4 = 128
	goto .L2508
.L2546:
	r2 = r9
	r4 = 256
	goto .L2508
.L2550:
	r2 = r1
	r4 = 1024
	goto .L2508
.L2552:
	r2 = r1
	r4 = 2048
	goto .L2508
.L2554:
	r2 = r9
	r4 = 4096
	goto .L2508
.L2556:
	r2 = r9
	r4 = 8192
	goto .L2508
.L2558:
	r2 = r1
	r4 = 16384
	goto .L2508
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r4 = 1
	r3 s>>= 32
	if r1 < r2 goto .L2588
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L2580:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2581
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2581
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 &= r5
	if r9 != 0 goto .L2581
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2581
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 &= r5
	if r9 != 0 goto .L2581
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2581
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 &= r5
	if r9 != 0 goto .L2581
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2581
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 &= r5
	if r9 != 0 goto .L2581
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2581
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 &= r5
	if r9 != 0 goto .L2581
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2581
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 &= r5
	if r9 != 0 goto .L2581
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2581
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 &= r5
	if r9 != 0 goto .L2581
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2581
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2580
.L2606:
	r0 = 0
	if r3 != 0 goto .L2607
.L2579:
	exit
.L2581:
	if r4 == 0 goto .L2606
.L2588:
	r0 = 0
.L2582:
	if r2 >= r1 goto .L2585
	r1 -= r2
	r0 |= r4
.L2585:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2582
	if r3 == 0 goto .L2579
.L2607:
	r0 = r1
	exit
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L2609
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
.L2609:
	if r2 == 0 goto .L2612
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
.L2612:
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
	if r0 == 0 goto .L2614
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L2614:
	if r3 == 0 goto .L2617
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
.L2617:
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
	if r0 == 0 goto .L2619
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
.L2619:
	if r2 == 0 goto .L2622
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
.L2622:
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
	if r0 == 0 goto .L2624
	r4 = r2
	r0 = r2
	r4 s>>= 63
	r3 += -64
	r1 = r4
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L2624:
	if r3 == 0 goto .L2627
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
.L2627:
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
	if r1 <= 65534 goto .L2631
	r0 = 0
.L2631:
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
	if r4 != 0 goto .L2632
	r3 -= r1
	r0 += r9
	r0 += r3
	exit
.L2632:
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
	if r2 == 0 goto .L2635
	r6 = 0
.L2635:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2637
	r0 = 0
.L2637:
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
	if r0 s>= r3 goto .L2648
	if r3 s> r0 goto .L2649
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2648
	if r1 > r2 goto .L2649
	r0 = 1
	exit
.L2648:
	r0 = 0
	exit
.L2649:
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
	if r0 s>= r3 goto .L2654
	if r3 s> r0 goto .L2655
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2654
	if r1 > r2 goto .L2655
	r0 = 1
	r0 += -1
	exit
.L2654:
	r0 = 0
	r0 += -1
	exit
.L2655:
	r0 = 2
	r0 += -1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L2660
	if r2 s> r4 goto .L2661
	if r3 >= r1 goto .L2660
	if r1 > r3 goto .L2661
	r0 = 1
	exit
.L2660:
	r0 = 0
	exit
.L2661:
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
	if r1 == 0 goto .L2664
	r6 = 0
.L2664:
	r6 &= 0xff
	if r0 == 0 goto .L2670
	r1 = 0
.L2666:
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
.L2670:
	r1 = r2
	goto .L2666
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2674
	if r2 != 0 goto .L2677
	r0 = r2
	exit
.L2674:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2677:
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
	if r0 == 0 goto .L2679
	r2 += -32
	r1 >>= 32
	r5 = r2;r5 &= 0xffffffff
	r0 = 0
	r1 >>= r5
	r0 <<= 32
	r3 = r1;r3 &= 0xffffffff
	r0 |= r3
	exit
.L2679:
	if r2 == 0 goto .L2682
	r5 = r2;r5 &= 0xffffffff
	r3 = r1
	r4 = 32
	r3 >>= 32
	r4 -= r2
	r9 = r3
	r2 = r4;r2 &= 0xffffffff
	r9 >>= r5
	r3 <<= r2
	r0 = r9;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	r0 <<= 32
	r1 >>= r5
	r3 |= r1
	r3 = r3;r3 &= 0xffffffff
	r0 |= r3
	exit
.L2682:
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
	if r0 == 0 goto .L2684
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L2684:
	if r3 == 0 goto .L2687
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
.L2687:
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
	if r1 != 0 goto .L2694
	r3 = r0
.L2694:
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
	if r4 > r1 goto .L2701
	r9 = 0
.L2701:
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
	if r0 >= r4 goto .L2702
	r9 = 0
.L2702:
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
	if r9 >= r2 goto .L2703
	r0 = 0
.L2703:
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
	r6 = r1
	r2 s>>= 32
	r7 = 0x3ff0000000000000 ll
	*(u64 *) (r10+-8) = r2
	r8 = r2
	goto .L2707
.L2712:
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2707:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2705
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L2705:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 != 0 goto .L2712
	r2 = *(u64 *) (r10+-8)
	if r2 s>= 0 goto .L2704
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L2704:
	r0 = r7
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r2 <<= 32
	r6 = r1
	r2 s>>= 32
	r7 = 0x3f800000 ll
	*(u64 *) (r10+-8) = r2
	r8 = r2
	goto .L2716
.L2721:
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2716:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2714
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L2714:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 != 0 goto .L2721
	r2 = *(u64 *) (r10+-8)
	if r2 s>= 0 goto .L2713
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L2713:
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
	if r0 >= r3 goto .L2726
	if r3 > r0 goto .L2727
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2726
	if r1 > r2 goto .L2727
	r0 = 1
	exit
.L2726:
	r0 = 0
	exit
.L2727:
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
	if r0 >= r3 goto .L2732
	if r3 > r0 goto .L2733
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2732
	if r1 > r2 goto .L2733
	r0 = 1
	r0 += -1
	exit
.L2732:
	r0 = 0
	r0 += -1
	exit
.L2733:
	r0 = 2
	r0 += -1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2738
	if r2 > r4 goto .L2739
	if r3 >= r1 goto .L2738
	if r1 > r3 goto .L2739
	r0 = 1
	exit
.L2738:
	r0 = 0
	exit
.L2739:
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
