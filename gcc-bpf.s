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
	r2 += r3
	r5 = r1
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
	r2 += -1
	r5 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r3
	if r1 == r5 goto .L6
.L7:
	r2 += -1
	r5 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r9
	r4 = *(u8 *) (r2+-1)
	*(u8 *) (r5+-1) = r4
	r0 = *(u8 *) (r2+-2)
	*(u8 *) (r5+-2) = r0
	r3 = *(u8 *) (r2+-3)
	*(u8 *) (r5+-3) = r3
	r9 = *(u8 *) (r2+-4)
	*(u8 *) (r5+-4) = r9
	r4 = *(u8 *) (r2+-5)
	*(u8 *) (r5+-5) = r4
	r0 = *(u8 *) (r2+-6)
	*(u8 *) (r5+-6) = r0
	r2 += -7
	r5 += -7
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r3
	if r1 != r5 goto .L7
.L6:
	r0 = r1
	exit
.L5:
	if r1 == r2 goto .L6
	if r3 == 0 goto .L6
	r9 = r1
	r4 = r2
	r5 = r1
	r5 += r3
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
	*(u8 *) (r9+0) = r2
	r9 += 1
	r4 += 1
.L67:
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r9 += 1
	r4 += 1
.L66:
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r0
	r9 += 1
	r4 += 1
.L65:
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r2
	r9 += 1
	r4 += 1
.L64:
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r9 += 1
	r4 += 1
.L63:
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r0
	r9 += 1
	r4 += 1
	if r9 == r5 goto .L6
.L8:
	r2 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r2
	r9 += 1
	r4 += 1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r0 = *(u8 *) (r4+1)
	*(u8 *) (r9+1) = r0
	r2 = *(u8 *) (r4+2)
	*(u8 *) (r9+2) = r2
	r3 = *(u8 *) (r4+3)
	*(u8 *) (r9+3) = r3
	r0 = *(u8 *) (r4+4)
	*(u8 *) (r9+4) = r0
	r2 = *(u8 *) (r4+5)
	*(u8 *) (r9+5) = r2
	r3 = *(u8 *) (r4+6)
	*(u8 *) (r9+6) = r3
	r9 += 7
	r4 += 7
	if r9 != r5 goto .L8
	goto .L6
.L87:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	r9 += 1
	r2 += 1
	r4 = r2
	goto .L68
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	if r4 == 0 goto .L93
	r0 = r4
	r0 &= 7
	if r0 == 0 goto .L89
	if r0 == 1 goto .L133
	if r0 == 2 goto .L134
	if r0 == 3 goto .L135
	if r0 == 4 goto .L136
	if r0 == 5 goto .L137
	if r0 != 6 goto .L151
.L138:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
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
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L150
	r4 += -1
	r2 += 1
	r1 += 1
.L135:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
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
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L150
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L93
.L89:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
	r4 += -1
	r5 = r4
	r9 = r2
	r9 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r2 == r3 goto .L150
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+1)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L150
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L150
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+3)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L150
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L150
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+5)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L150
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L150
	r4 += -1
	r2 = r9
	r2 += 7
	r0 += 7
	r1 = r0
	if r5 != 7 goto .L89
.L93:
	r0 = 0
	exit
.L150:
	if r4 == 0 goto .L93
	r0 = r1
	r0 += 1
	exit
.L151:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L150
	r4 += -1
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
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L153
	if r0 == 1 goto .L195
	if r0 == 2 goto .L196
	if r0 == 3 goto .L197
	if r0 == 4 goto .L198
	if r0 == 5 goto .L199
	if r0 != 6 goto .L213
.L200:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L211
	r1 += 1
	r3 += -1
.L199:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L211
	r1 += 1
	r3 += -1
.L198:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L211
	r1 += 1
	r3 += -1
.L197:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L211
	r1 += 1
	r3 += -1
.L196:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L211
	r1 += 1
	r3 += -1
.L195:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L211
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L158
.L153:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L211
	r9 = r1
	r9 += 1
	r1 = r9
	r3 += -1
	r4 = r3
	r5 = *(u8 *) (r9+0)
	if r5 == r2 goto .L211
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+1)
	if r0 == r2 goto .L211
	r1 += 1
	r3 += -1
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
	r1 = r9
	r3 += -1
	if r4 != 7 goto .L153
.L158:
	r0 = 0
	exit
.L211:
	r0 = r1
	if r3 == 0 goto .L158
	exit
.L213:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L211
	r1 += 1
	r3 += -1
	goto .L200
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L219
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L215
	if r0 == 1 goto .L259
	if r0 == 2 goto .L260
	if r0 == 3 goto .L261
	if r0 == 4 goto .L262
	if r0 == 5 goto .L263
	if r0 != 6 goto .L277
.L264:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L263:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L262:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L261:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L260:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
.L259:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L219
.L215:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L276
	r3 += -1
	r5 = r3
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r0+0)
	if r6 != r9 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+1)
	r6 = *(u8 *) (r0+1)
	if r9 != r6 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
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
	r3 += -1
	r1 += 1
	r0 += 7
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
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	goto .L264
	.size	memcmp, .-memcmp
	.align	3
	.global	memrchr
	.type	memrchr, @function
memrchr:
	r2 &= 0xff
	r3 += -1
	r0 = r1
	r0 += r3
	r1 += -1
	r4 = r0
	r4 -= r1
	r4 &= 7
	if r4 == 0 goto .L279
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L278
	if r4 == 1 goto .L279
	if r4 == 2 goto .L293
	if r4 == 3 goto .L291
	if r4 == 4 goto .L289
	if r4 == 5 goto .L287
	if r4 != 6 goto .L312
.L285:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L278
.L287:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L278
.L289:
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L278
.L291:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L278
.L293:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L278
.L279:
	if r0 == r1 goto .L313
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L278
	r3 = r0
	r5 = r0
	r5 += -1
	r4 = *(u8 *) (r0+0)
	if r4 == r2 goto .L278
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L278
	r3 = r5
	r5 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L278
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L278
	r3 = r5
	r5 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L278
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L278
	r3 = r5
	r0 += -7
	r5 = *(u8 *) (r5+0)
	if r5 != r2 goto .L279
.L278:
	r0 = r3
	exit
.L313:
	r3 = 0
	r0 = r3
	exit
.L312:
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 != r2 goto .L285
	goto .L278
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L315
	r4 = r1
	r4 += r3
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L316
	if r3 == 1 goto .L341
	if r3 == 2 goto .L342
	if r3 == 3 goto .L343
	if r3 == 4 goto .L344
	if r3 == 5 goto .L345
	if r3 != 6 goto .L356
.L346:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L345:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L344:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L343:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L342:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L341:
	*(u8 *) (r0+0) = r2
	r0 += 1
	if r4 == r0 goto .L315
.L316:
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
	if r4 != r0 goto .L316
.L315:
	r0 = r1
	exit
.L356:
	*(u8 *) (r1+0) = r2
	r0 += 1
	goto .L346
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
	if r1 == 0 goto .L358
.L359:
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L358
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L358
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L358
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L358
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L358
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L358
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L358
	r2 += 7
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L359
	exit
.L358:
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
	if r1 != 0 goto .L379
	goto .L385
.L381:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 == 0 goto .L378
.L379:
	r4 &= 0xff
	if r4 != r2 goto .L381
.L378:
	exit
.L385:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r0 = r1
	r2 <<= 32
	r2 s>>= 32
	goto .L388
.L391:
	r0 += 1
	if r3 == 0 goto .L390
.L388:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 != r2 goto .L391
	exit
.L390:
	r0 = 0
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L397
.L398:
	if r0 == 0 goto .L394
	r1 += 1
	r2 += 1
.L397:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	if r0 == r3 goto .L398
.L394:
	r0 &= 0xff
	r3 &= 0xff
	r0 -= r3
	exit
	.size	strcmp, .-strcmp
	.align	3
	.global	strlen
	.type	strlen, @function
strlen:
	r0 = *(u8 *) (r1+0)
	r2 = r1
	if r0 == 0 goto .L400
.L401:
	r4 = r2
	r4 += 1
	r2 = r4
	r3 = *(u8 *) (r4+0)
	if r3 == 0 goto .L400
	r2 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L400
	r2 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L400
	r2 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L400
	r2 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L400
	r2 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L400
	r2 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L400
	r2 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L401
.L400:
	r0 = r2
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L423
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L420
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L421
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L420
	if r4 != r0 goto .L420
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L420
	if r3 == 1 goto .L421
	if r3 == 2 goto .L465
	if r3 == 3 goto .L466
	if r3 == 4 goto .L467
	if r3 == 5 goto .L468
	if r3 == 6 goto .L469
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L420
	if r3 != r0 goto .L420
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L420
.L469:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L420
	if r9 != r0 goto .L420
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L420
.L468:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L420
	if r4 != r0 goto .L420
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L420
.L467:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L420
	if r3 != r0 goto .L420
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L420
.L466:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L420
	if r9 != r0 goto .L420
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L420
.L465:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L420
	if r4 != r0 goto .L420
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L420
.L421:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L420
	if r1 == r5 goto .L420
	if r3 != r0 goto .L420
	r9 = r1
	r9 += 1
	r2 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L420
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L420
	if r1 != r0 goto .L420
	r2 += 1
	r0 = *(u8 *) (r9+1)
	if r0 == 0 goto .L420
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L420
	if r3 != r0 goto .L420
	r2 += 1
	r0 = *(u8 *) (r9+2)
	if r0 == 0 goto .L420
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L420
	if r4 != r0 goto .L420
	r2 += 1
	r0 = *(u8 *) (r9+3)
	if r0 == 0 goto .L420
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L420
	if r1 != r0 goto .L420
	r2 += 1
	r0 = *(u8 *) (r9+4)
	if r0 == 0 goto .L420
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L420
	if r3 != r0 goto .L420
	r2 += 1
	r0 = *(u8 *) (r9+5)
	if r0 == 0 goto .L420
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L420
	if r4 != r0 goto .L420
	r2 += 1
	r0 = *(u8 *) (r9+6)
	if r0 == 0 goto .L420
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L420
	if r1 != r0 goto .L420
	r1 = r9
	r1 += 7
	r2 += 1
	r0 = *(u8 *) (r9+7)
	if r0 != 0 goto .L421
.L420:
	r2 = *(u8 *) (r2+0)
	r0 -= r2
	exit
.L423:
	r0 = 0
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L510
	r0 = r1
	r0 += 1
	r4 = r2
	r4 += 1
	r3 += -2
	r3 &= -2
	r5 = r1
	r5 += r3
	r5 += 3
	r3 = r5
	r3 -= r0
	r3 += -2
	r3 >>= 1
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L512
	if r3 == 1 goto .L535
	if r3 == 2 goto .L536
	if r3 == 3 goto .L537
	if r3 == 4 goto .L538
	if r3 == 5 goto .L539
	if r3 != 6 goto .L549
.L540:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
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
.L538:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L537:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L536:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L535:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L550
.L512:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
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
	r2 += 14
	r1 += 14
	r0 += 14
	r4 += 14
	if r0 != r5 goto .L512
.L510:
	exit
.L549:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	goto .L540
.L550:
	exit
	.size	swab, .-swab
	.align	3
	.global	isalpha
	.type	isalpha, @function
isalpha:
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 |= 32
	r0 += -97
	r1 = 1
	r2 = r0;r2 &= 0xffffffff
	if r2 <= 24 goto .L552
	r1 = 0
.L552:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L554
	r0 = 0
.L554:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L557
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L557:
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
	if r1 <= 30 goto .L560
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L560:
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
	if r1 <= 8 goto .L562
	r0 = 0
.L562:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L564
	r0 = 0
.L564:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L566
	r0 = 0
.L566:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L568
	r0 = 0
.L568:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L572
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 3 goto .L573
	r0 &= 1
	exit
.L573:
	r0 = 0
	r0 &= 1
	exit
.L572:
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
	if r1 <= 24 goto .L575
	r0 = 0
.L575:
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
	if r1 <= 30 goto .L581
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 > 31 goto .L582
.L581:
	r0 = 1
	exit
.L582:
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L581
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L578
	r9 = 0
.L578:
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
	if r1 <= 8 goto .L584
	r0 = 0
.L584:
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
	if r1 <= 254 goto .L593
	if r1 <= 8230 goto .L591
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L591
	r2 += -49110
	if r2 <= 8183 goto .L591
	r1 += -65532
	if r1 > 1048579 goto .L592
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L591:
	r0 = 1
	exit
.L593:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s<= 32 goto .L594
	r0 = r1
	r0 &= 1
	exit
.L594:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
.L592:
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
	if r2 <= 8 goto .L598
	r1 |= 32
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L599
	r0 &= 1
	exit
.L598:
	r0 = 1
	exit
.L599:
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
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L604
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L605
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L608
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L608:
	r0 = 0x0000000000000000 ll
	exit
.L604:
	r0 = r6
	exit
.L605:
	r0 = r7
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
	if r0 != 0 goto .L612
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L613
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L616
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L616:
	r0 = 0x00000000 ll
	exit
.L612:
	r0 = r6
	exit
.L613:
	r0 = r7
	exit
	.size	fdimf, .-fdimf
	.align	3
	.global	fmax
	.type	fmax, @function
fmax:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L625
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L624
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L619
	if r0 != 0 goto .L625
.L624:
	r0 = r7
	exit
.L619:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L625
	r6 = r7
.L625:
	r0 = r6
	exit
	.size	fmax, .-fmax
	.align	3
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L636
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L635
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L630
	if r2 != 0 goto .L636
.L635:
	r0 = r7
	exit
.L630:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L636
	r6 = r7
.L636:
	r0 = r6
	exit
	.size	fmaxf, .-fmaxf
	.align	3
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L647
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L646
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L641
	if r0 != 0 goto .L647
.L646:
	r0 = r7
	exit
.L641:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L647
	r6 = r7
.L647:
	r0 = r6
	exit
	.size	fmaxl, .-fmaxl
	.align	3
	.global	fmin
	.type	fmin, @function
fmin:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L656
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L658
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L652
	if r0 != 0 goto .L658
.L656:
	r0 = r7
	exit
.L652:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L658
	r6 = r7
.L658:
	r0 = r6
	exit
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L667
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L669
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L663
	if r2 != 0 goto .L669
.L667:
	r0 = r7
	exit
.L663:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L669
	r6 = r7
.L669:
	r0 = r6
	exit
	.size	fminf, .-fminf
	.align	3
	.global	fminl
	.type	fminl, @function
fminl:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L678
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L680
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L674
	if r0 != 0 goto .L680
.L678:
	r0 = r7
	exit
.L674:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L680
	r6 = r7
.L680:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L684
	r2 = digits ll
	r4 = r1
	r4 &= 63
	r3 = r2
	r3 += r4
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r9 = r0
	r1 >>= 6
	if r1 == 0 goto .L684
	r4 = r1
	r4 &= 63
	r0 = r2
	r0 += r4
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r3
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L684
	r5 = r1
	r5 &= 63
	r9 = r2
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L684
	r3 = r1
	r3 &= 63
	r5 = r2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L684
	r3 = r1
	r3 &= 63
	r4 = r2
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L684
	r2 += r1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L684:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
	.size	l64a, .-l64a
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
	if r2 == 0 goto .L710
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L704
	*(u64 *) (r2+8) = r1
.L704:
	exit
.L710:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L712
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L712:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L711
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L711:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L722
	exit
.L722:
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
.L724:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == 32 goto .L727
	r0 = r5
	r3 = r2
	r3 += -9
	r3 = r3;r3 &= 0xffffffff
	if r4 > r3 goto .L726
	r0 = r9
.L726:
	r0 &= 1
	if r0 == 0 goto .L745
.L727:
	r1 += 1
	goto .L724
.L745:
	if r2 == 43 goto .L734
	if r2 == 45 goto .L746
	r4 = 0
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	r9 = 9
	if r5 <= 8 goto .L730
.L731:
	if r4 != 0 goto .L732
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L732:
	exit
.L746:
	r4 = 1
.L728:
	r1 += 1
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	r9 = 9
	if r5 > 8 goto .L731
.L730:
	r3 = r0
	r3 <<= 2
	r0 += r3
	r0 <<= 33
	r0 s>>= 32
	r1 += 1
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r9 <= r5 goto .L731
	r3 = r0
	r3 <<= 2
	r0 += r3
	r0 <<= 33
	r0 s>>= 32
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r1+1)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r9 <= r5 goto .L731
	r3 = r0
	r3 <<= 2
	r0 += r3
	r0 <<= 33
	r0 s>>= 32
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r1+2)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r9 <= r5 goto .L731
	r3 = r0
	r3 <<= 2
	r0 += r3
	r0 <<= 33
	r0 s>>= 32
	r1 += 3
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r9 > r5 goto .L730
	goto .L731
.L734:
	r4 = 0
	goto .L728
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 1
	r3 = 4
	r5 = 0
.L748:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L751
	r9 = r4
	r2 = r0
	r2 += -9
	r2 = r2;r2 &= 0xffffffff
	if r3 > r2 goto .L750
	r9 = r5
.L750:
	r2 = r9
	r2 &= 1
	if r2 == 0 goto .L771
.L751:
	r1 += 1
	goto .L748
.L771:
	if r0 == 43 goto .L752
	if r0 == 45 goto .L772
.L753:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	r3 = 0
	r4 = 9
	if r5 > 8 goto .L755
.L754:
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r4 <= r5 goto .L755
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r1+1)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r4 <= r5 goto .L755
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r1+2)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r4 <= r5 goto .L755
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r1 += 3
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r4 > r5 goto .L754
.L755:
	if r2 != 0 goto .L747
	r3 = -r3
.L747:
	r0 = r3
	exit
.L772:
	r2 = 1
.L752:
	r1 += 1
	goto .L753
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
	*(u32 *) (r6+0) = r0
	r2 = r8
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
	if r1 s< 0 goto .L777
	exit
.L777:
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
	*(u64 *) (r6+0) = r0
	r2 = r8
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
	if r1 s< 0 goto .L781
	exit
.L781:
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
	*(u64 *) (r6+0) = r0
	r2 = r8
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
	if r1 s< 0 goto .L785
	exit
.L785:
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
	*(u64 *) (r6+0) = r0
	r2 = r8
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
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = r0
	r4 s>>= 32
	if r0 == 0 goto .L793
.L788:
	if r2 == r4 goto .L797
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = r3
	r4 s>>= 32
	if r3 != 0 goto .L788
.L793:
	r0 = 0
	exit
.L797:
	r0 = r1
	if r4 == 0 goto .L793
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L809
.L810:
	if r3 == 0 goto .L800
	if r4 == 0 goto .L800
	r1 += 4
	r2 += 4
.L809:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 == r4 goto .L810
.L800:
	if r4 s>= r3 goto .L804
	r0 = 1
	if r3 s<= r4 goto .L811
	r0 &= 1
	exit
.L804:
	r0 = -1
	exit
.L811:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L813:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L829
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L829
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L829
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L829
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L829
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L829
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L829
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L813
.L829:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L833
	r0 = r1
.L832:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L831
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L831
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L831
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L831
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L831
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L831
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L831
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L832
.L831:
	r0 -= r1
	r0 s>>= 2
	exit
.L833:
	r0 = r1
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L855
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L850
	if r0 == 1 goto .L876
	if r0 == 2 goto .L877
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r4 goto .L851
	if r5 == 0 goto .L851
	r3 += -1
	r1 += 4
	r2 += 4
.L877:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L851
	if r9 == 0 goto .L851
	r3 += -1
	r1 += 4
	r2 += 4
.L876:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L851
	if r5 == 0 goto .L851
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L855
.L850:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L851
	if r0 == 0 goto .L851
	r3 += -1
	r5 = r3
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L851
	if r7 == 0 goto .L851
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r7 = r4
	r7 s>>= 32
	if r4 != r6 goto .L851
	if r7 == 0 goto .L851
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L851
	if r7 == 0 goto .L851
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L850
.L855:
	r0 = 0
	exit
.L851:
	if r3 == 0 goto .L855
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L856
	r0 = 1
	if r3 s<= r1 goto .L886
	r0 &= 1
	exit
.L856:
	r0 = -1
	exit
.L886:
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
	if r3 == 0 goto .L893
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L888
	if r0 == 1 goto .L930
	if r0 == 2 goto .L931
	if r0 == 3 goto .L932
	if r0 == 4 goto .L933
	if r0 == 5 goto .L934
	if r0 != 6 goto .L948
.L935:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L946
	r3 += -1
	r1 += 4
.L934:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L946
	r3 += -1
	r1 += 4
.L933:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L946
	r3 += -1
	r1 += 4
.L932:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L946
	r3 += -1
	r1 += 4
.L931:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L946
	r3 += -1
	r1 += 4
.L930:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L946
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L893
.L888:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L946
	r3 += -1
	r4 = r3
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L946
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L946
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L946
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L946
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L946
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L946
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L946
	r3 += -1
	r9 += 28
	r1 = r9
	if r4 != 7 goto .L888
.L893:
	r0 = 0
	exit
.L946:
	r0 = r1
	if r3 == 0 goto .L893
	exit
.L948:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L946
	r3 += -1
	r1 += 4
	goto .L935
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L955
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L950
	if r0 == 1 goto .L996
	if r0 == 2 goto .L997
	if r0 == 3 goto .L998
	if r0 == 4 goto .L999
	if r0 == 5 goto .L1000
	if r0 != 6 goto .L1014
.L1001:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
.L1000:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
.L999:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
.L998:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
.L997:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
.L996:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L955
.L950:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1013
	r3 += -1
	r5 = r3
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r6 = *(u32 *) (r0+0)
	r6 <<= 32
	if r6 != r9 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1013
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	if r5 != 7 goto .L950
.L955:
	r0 = 0
	exit
.L1013:
	if r3 == 0 goto .L955
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L956
	r0 = 1
	if r3 s<= r1 goto .L1015
	r0 &= 1
	exit
.L956:
	r0 = -1
	exit
.L1015:
	r0 = 0
	r0 &= 1
	exit
.L1014:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1013
	r3 += -1
	r1 += 4
	r2 += 4
	goto .L1001
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1017
	r5 = r1
	r4 = r2
	r0 = r3
	r0 += -1
	r6 = r3
	r6 <<= 2
	r9 = r1
	r9 -= r2
	if r6 < r9 goto .L1098
	if r3 == 0 goto .L1017
	r0 <<= 2
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r0 >>= 2
	r0 += 1
	r0 &= 7
	if r0 == 0 goto .L1020
	if r0 == 1 goto .L1075
	if r0 == 2 goto .L1076
	if r0 == 3 goto .L1077
	if r0 == 4 goto .L1078
	if r0 == 5 goto .L1079
	if r0 != 6 goto .L1099
.L1080:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1079:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1078:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
.L1077:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1076:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1075:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r5 = r3
	r3 += -4
	r4 += -4
	if r2 == r5 goto .L1017
.L1020:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r5 = *(u32 *) (r3+-4)
	*(u32 *) (r4+-4) = r5
	r9 = *(u32 *) (r3+-8)
	*(u32 *) (r4+-8) = r9
	r0 = *(u32 *) (r3+-12)
	*(u32 *) (r4+-12) = r0
	r5 = *(u32 *) (r3+-16)
	*(u32 *) (r4+-16) = r5
	r9 = *(u32 *) (r3+-20)
	*(u32 *) (r4+-20) = r9
	r0 = r3
	r0 += -24
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+-24) = r5
	r3 += -28
	r4 += -28
	if r2 != r0 goto .L1020
.L1017:
	r0 = r1
	exit
.L1098:
	if r3 == 0 goto .L1017
	r3 &= 7
	if r3 == 0 goto .L1019
	if r3 == 1 goto .L1069
	if r3 == 2 goto .L1070
	if r3 == 3 goto .L1071
	if r3 == 4 goto .L1072
	if r3 == 5 goto .L1073
	if r3 != 6 goto .L1100
.L1074:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1073:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1072:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
.L1071:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1070:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1069:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
	if r0 == -1 goto .L1017
.L1019:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r5 += 4
	r4 += 4
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r3 = *(u32 *) (r4+4)
	*(u32 *) (r5+4) = r3
	r2 = *(u32 *) (r4+8)
	*(u32 *) (r5+8) = r2
	r9 = *(u32 *) (r4+12)
	*(u32 *) (r5+12) = r9
	r3 = *(u32 *) (r4+16)
	*(u32 *) (r5+16) = r3
	r2 = *(u32 *) (r4+20)
	*(u32 *) (r5+20) = r2
	r9 = *(u32 *) (r4+24)
	*(u32 *) (r5+24) = r9
	r0 += -8
	r5 += 28
	r4 += 28
	if r0 != -1 goto .L1019
	goto .L1017
.L1100:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r0 += -1
	r5 += 4
	r2 += 4
	r4 = r2
	goto .L1074
.L1099:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
	goto .L1080
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r2 s>>= 32
	r4 = r3
	r4 += -1
	if r3 == 0 goto .L1102
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L1103
	if r3 == 1 goto .L1128
	if r3 == 2 goto .L1129
	if r3 == 3 goto .L1130
	if r3 == 4 goto .L1131
	if r3 == 5 goto .L1132
	if r3 != 6 goto .L1143
.L1133:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1132:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1131:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1130:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1129:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1128:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L1102
.L1103:
	*(u32 *) (r0+0) = r2
	r0 += 4
	*(u32 *) (r0+0) = r2
	*(u32 *) (r0+4) = r2
	*(u32 *) (r0+8) = r2
	*(u32 *) (r0+12) = r2
	*(u32 *) (r0+16) = r2
	*(u32 *) (r0+20) = r2
	*(u32 *) (r0+24) = r2
	r4 += -8
	r0 += 28
	if r4 != -1 goto .L1103
.L1102:
	r0 = r1
	exit
.L1143:
	*(u32 *) (r1+0) = r2
	r4 += -1
	r0 += 4
	goto .L1133
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1145
	r5 = r1
	r5 += r3
	r2 += r3
	if r3 == 0 goto .L1144
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1147
	if r9 == 1 goto .L1197
	if r9 == 2 goto .L1198
	if r9 == 3 goto .L1199
	if r9 == 4 goto .L1200
	if r9 == 5 goto .L1201
	if r9 == 6 goto .L1202
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1202:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1201:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
.L1200:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
.L1199:
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1198:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1197:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
	if r1 == r5 goto .L1227
.L1147:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r4 = *(u8 *) (r5+-1)
	*(u8 *) (r2+-1) = r4
	r3 = *(u8 *) (r5+-2)
	*(u8 *) (r2+-2) = r3
	r0 = *(u8 *) (r5+-3)
	*(u8 *) (r2+-3) = r0
	r9 = *(u8 *) (r5+-4)
	*(u8 *) (r2+-4) = r9
	r4 = *(u8 *) (r5+-5)
	*(u8 *) (r2+-5) = r4
	r3 = *(u8 *) (r5+-6)
	*(u8 *) (r2+-6) = r3
	r5 += -7
	r2 += -7
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
	if r1 != r5 goto .L1147
	exit
.L1145:
	if r1 != r2 goto .L1228
.L1144:
	exit
.L1228:
	if r3 == 0 goto .L1144
	r9 = r1
	r4 = r2
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L1148
	if r3 == 1 goto .L1203
	if r3 == 2 goto .L1204
	if r3 == 3 goto .L1205
	if r3 == 4 goto .L1206
	if r3 == 5 goto .L1207
	if r3 != 6 goto .L1229
.L1208:
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r1
	r9 += 1
	r4 += 1
.L1207:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
.L1206:
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r3
	r9 += 1
	r4 += 1
.L1205:
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r0
	r9 += 1
	r4 += 1
.L1204:
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r1
	r9 += 1
	r4 += 1
.L1203:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
	if r9 == r5 goto .L1230
.L1148:
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r3
	r9 += 1
	r4 += 1
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r0
	r1 = *(u8 *) (r9+1)
	*(u8 *) (r4+1) = r1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r4+2) = r2
	r3 = *(u8 *) (r9+3)
	*(u8 *) (r4+3) = r3
	r0 = *(u8 *) (r9+4)
	*(u8 *) (r4+4) = r0
	r1 = *(u8 *) (r9+5)
	*(u8 *) (r4+5) = r1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r4+6) = r2
	r9 += 7
	r4 += 7
	if r9 != r5 goto .L1148
	goto .L1144
.L1227:
	exit
.L1229:
	r0 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r0
	r9 += 1
	r2 += 1
	r4 = r2
	goto .L1208
.L1230:
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
	exit
	.size	rotr32, .-rotr32
	.align	3
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
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
	.size	rotl_sz, .-rotl_sz
	.align	3
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
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
	.size	rotr_sz, .-rotr_sz
	.align	3
	.global	rotl16
	.type	rotl16, @function
rotl16:
	r1 &= 0xffff
	r3 = r2
	r3 &= 15
	r0 = r1
	r0 <<= r3
	r2 = -r2
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
	r3 &= 15
	r0 = r1
	r0 >>= r3
	r2 = -r2
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
	r3 &= 7
	r0 = r1
	r0 <<= r3
	r2 = -r2
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
	r3 &= 7
	r0 = r1
	r0 >>= r3
	r2 = -r2
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
.L1247:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1270
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1270
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1270
	r5 = r1
	r5 >>= r0
	r5 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1270
	r9 = r1
	r9 >>= r0
	r9 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1270
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1270
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1270
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1270
	if r0 != 32 goto .L1247
	r0 = 0
	exit
.L1270:
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	ffs, .-ffs
	.align	3
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	r1 <<= 32
	r2 = r1
	r2 s>>= 32
	if r1 == 0 goto .L1275
	r0 = r2
	r0 &= 1
	if r0 != 0 goto .L1273
	r0 = 1
.L1274:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1292
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1273
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1273
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1273
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1273
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1273
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1273
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1274
	exit
.L1275:
	r0 = 0
.L1273:
	exit
.L1292:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L1296
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1297
	r0 = r7
	r0 &= 1
	exit
.L1296:
	r0 = 1
	exit
.L1297:
	r7 = 0
	r0 = r7
	r0 &= 1
	exit
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	r6 = r1
	r2 = 0xffefffffffffffff ll
	call	__ltdf2
	if r0 s<= 0 goto .L1301
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1302
	r0 = r7
	r0 &= 1
	exit
.L1301:
	r0 = 1
	exit
.L1302:
	r7 = 0
	r0 = r7
	r0 &= 1
	exit
	.size	gl_isinfd, .-gl_isinfd
	.align	3
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	r6 = r1
	r2 = 0xffefffffffffffff ll
	call	__ltdf2
	if r0 s<= 0 goto .L1306
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1307
	r0 = r7
	r0 &= 1
	exit
.L1306:
	r0 = 1
	exit
.L1307:
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
	r8 = r1
	r2 <<= 32
	r2 s>>= 32
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L1310
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1310
	if r6 s< 0 goto .L1323
	r7 = 0x40000000 ll
	goto .L1314
.L1324:
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1314:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1313
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
.L1313:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1324
.L1310:
	r0 = r8
	exit
.L1323:
	r7 = 0x3f000000 ll
	goto .L1314
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
	if r0 != 0 goto .L1326
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1326
	if r6 s< 0 goto .L1339
	r7 = 0x4000000000000000 ll
	goto .L1330
.L1340:
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1330:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1329
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
.L1329:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1340
.L1326:
	r0 = r8
	exit
.L1339:
	r7 = 0x3fe0000000000000 ll
	goto .L1330
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
	if r0 != 0 goto .L1342
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1342
	if r6 s< 0 goto .L1355
	r7 = 0x4000000000000000 ll
	goto .L1346
.L1356:
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1346:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1345
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
.L1345:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1356
.L1342:
	r0 = r8
	exit
.L1355:
	r7 = 0x3fe0000000000000 ll
	goto .L1346
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1358
	r4 = r2
	r0 = r1
	r5 = r2
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L1359
	if r3 == 1 goto .L1384
	if r3 == 2 goto .L1385
	if r3 == 3 goto .L1386
	if r3 == 4 goto .L1387
	if r3 == 5 goto .L1388
	if r3 != 6 goto .L1399
.L1389:
	r2 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r2 ^= r9
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1388:
	r2 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r2 ^= r3
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1387:
	r9 = *(u8 *) (r0+0)
	r2 = *(u8 *) (r4+0)
	r9 ^= r2
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1386:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1385:
	r2 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r2 ^= r9
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1384:
	r2 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r2 ^= r3
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
	if r4 == r5 goto .L1358
.L1359:
	r9 = *(u8 *) (r0+0)
	r2 = *(u8 *) (r4+0)
	r9 ^= r2
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r2 = *(u8 *) (r0+1)
	r9 = *(u8 *) (r4+1)
	r2 ^= r9
	*(u8 *) (r0+1) = r2
	r2 = *(u8 *) (r0+2)
	r9 = *(u8 *) (r4+2)
	r2 ^= r9
	*(u8 *) (r0+2) = r2
	r2 = *(u8 *) (r0+3)
	r9 = *(u8 *) (r4+3)
	r2 ^= r9
	*(u8 *) (r0+3) = r2
	r2 = *(u8 *) (r0+4)
	r9 = *(u8 *) (r4+4)
	r2 ^= r9
	*(u8 *) (r0+4) = r2
	r2 = *(u8 *) (r0+5)
	r9 = *(u8 *) (r4+5)
	r2 ^= r9
	*(u8 *) (r0+5) = r2
	r2 = *(u8 *) (r0+6)
	r9 = *(u8 *) (r4+6)
	r2 ^= r9
	*(u8 *) (r0+6) = r2
	r4 += 7
	r0 += 7
	if r4 != r5 goto .L1359
.L1358:
	r0 = r1
	exit
.L1399:
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 ^= r3
	*(u8 *) (r1+0) = r0
	r2 += 1
	r4 = r2
	r0 = r1
	r0 += 1
	goto .L1389
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1407
	r0 = r1
.L1402:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1401
	r0 += 1
	r9 = *(u8 *) (r4+1)
	if r9 == 0 goto .L1401
	r0 += 1
	r5 = *(u8 *) (r4+2)
	if r5 == 0 goto .L1401
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1401
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1401
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1401
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1401
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1402
.L1401:
	if r3 == 0 goto .L1409
	r9 = r3
	r9 &= 7
	if r9 == 0 goto .L1403
	if r9 == 1 goto .L1456
	if r9 == 2 goto .L1457
	if r9 == 3 goto .L1458
	if r9 == 4 goto .L1459
	if r9 == 5 goto .L1460
	if r9 != 6 goto .L1480
.L1461:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1478
	r2 += 1
	r0 += 1
	r3 += -1
.L1460:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1478
	r2 += 1
	r0 += 1
	r3 += -1
.L1459:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1478
	r2 += 1
	r0 += 1
	r3 += -1
.L1458:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1478
	r2 += 1
	r0 += 1
	r3 += -1
.L1457:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1478
	r2 += 1
	r0 += 1
	r3 += -1
.L1456:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1478
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1409
.L1403:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1478
	r2 += 1
	r0 += 1
	r3 += -1
	r5 = r3
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1478
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1478
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1478
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1478
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1478
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+5)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1478
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+6)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1478
	r2 += 7
	r0 += 1
	r3 += -1
	if r5 != 7 goto .L1403
.L1409:
	*(u8 *) (r0+0) = r3
	r0 = r1
	exit
.L1478:
	if r3 == 0 goto .L1409
	r0 = r1
	exit
.L1480:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1478
	r2 += 1
	r0 += 1
	r3 += -1
	goto .L1461
.L1407:
	r0 = r1
	goto .L1401
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1536
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1482
	if r0 == 1 goto .L1523
	if r0 == 2 goto .L1524
	if r0 == 3 goto .L1525
	if r0 == 4 goto .L1526
	if r0 == 5 goto .L1527
	if r0 != 6 goto .L1538
.L1528:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 != 0 goto .L1539
.L1481:
	r0 = r3
	exit
.L1538:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1481
	r3 = 1
	goto .L1528
.L1539:
	r3 += 1
.L1527:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1481
	r3 += 1
.L1526:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1481
	r3 += 1
.L1525:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1481
	r3 += 1
.L1524:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1481
	r3 += 1
.L1523:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1481
	r3 += 1
	if r2 == r3 goto .L1481
.L1482:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1481
	r0 = r3
	r0 += 1
	r3 = r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1481
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1481
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1481
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1481
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1481
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1481
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1481
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1482
	goto .L1481
.L1536:
	r3 = 0
	goto .L1481
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1545
.L1549:
	r3 = r2
	goto .L1544
.L1543:
	r3 += 1
	if r4 == r5 goto .L1542
.L1544:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1543
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1549
.L1545:
	r1 = 0
.L1542:
	r0 = r1
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
.L1552:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1551
	r3 = r1
.L1551:
	r1 += 1
	if r0 != 0 goto .L1552
	r0 = r3
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	r0 = *(u8 *) (r2+0)
	r0 <<= 56
	r4 = r0
	r4 s>>= 56
	r3 = r2
	if r0 == 0 goto .L1556
.L1557:
	r9 = r3
	r9 += 1
	r3 = r9
	r5 = *(u8 *) (r9+0)
	if r5 == 0 goto .L1556
	r3 += 1
	r0 = *(u8 *) (r9+1)
	if r0 == 0 goto .L1556
	r3 += 1
	r5 = *(u8 *) (r9+2)
	if r5 == 0 goto .L1556
	r3 += 1
	r0 = *(u8 *) (r9+3)
	if r0 == 0 goto .L1556
	r3 += 1
	r5 = *(u8 *) (r9+4)
	if r5 == 0 goto .L1556
	r3 += 1
	r0 = *(u8 *) (r9+5)
	if r0 == 0 goto .L1556
	r3 += 1
	r5 = *(u8 *) (r9+6)
	if r5 == 0 goto .L1556
	r3 += 1
	r9 = *(u8 *) (r9+7)
	if r9 != 0 goto .L1557
.L1556:
	r9 = r3
	r9 -= r2
	if r3 == r2 goto .L1558
	r9 += -1
	goto .L1564
.L1671:
	r1 += 1
	if r3 == 0 goto .L1670
.L1564:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 != r4 goto .L1671
	if r1 == 0 goto .L1558
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1567
	r7 = r1
	r7 += r9
	r3 = r2
	r5 = r1
	r6 = r9
	r6 &= 7
	if r6 == 0 goto .L1561
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L1560
	if r5 != r0 goto .L1560
	r5 = r1
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L1560
	if r6 == 1 goto .L1561
	if r6 == 2 goto .L1619
	if r6 == 3 goto .L1620
	if r6 == 4 goto .L1621
	if r6 == 5 goto .L1622
	if r6 == 6 goto .L1623
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1560
	if r6 != r0 goto .L1560
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1560
.L1623:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1560
	if r6 != r0 goto .L1560
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1560
.L1622:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1560
	if r6 != r0 goto .L1560
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1560
.L1621:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1560
	if r6 != r0 goto .L1560
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1560
.L1620:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1560
	if r6 != r0 goto .L1560
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1560
.L1619:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1560
	if r6 != r0 goto .L1560
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1560
.L1561:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1560
	if r5 == r7 goto .L1560
	if r6 != r0 goto .L1560
	r8 = r5
	r8 += 1
	r3 += 1
	r6 = r3
	r0 = *(u8 *) (r5+1)
	if r0 == 0 goto .L1560
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1560
	if r5 != r0 goto .L1560
	r3 += 1
	r0 = *(u8 *) (r8+1)
	if r0 == 0 goto .L1560
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1560
	if r5 != r0 goto .L1560
	r3 += 1
	r0 = *(u8 *) (r8+2)
	if r0 == 0 goto .L1560
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1560
	if r5 != r0 goto .L1560
	r3 += 1
	r0 = *(u8 *) (r8+3)
	if r0 == 0 goto .L1560
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1560
	if r5 != r0 goto .L1560
	r3 += 1
	r0 = *(u8 *) (r8+4)
	if r0 == 0 goto .L1560
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1560
	if r5 != r0 goto .L1560
	r3 += 1
	r0 = *(u8 *) (r8+5)
	if r0 == 0 goto .L1560
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1560
	if r5 != r0 goto .L1560
	r3 += 1
	r0 = *(u8 *) (r8+6)
	if r0 == 0 goto .L1560
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1560
	if r5 != r0 goto .L1560
	r5 = r8
	r5 += 7
	r3 += 1
	r0 = *(u8 *) (r8+7)
	if r0 != 0 goto .L1561
.L1560:
	r3 = *(u8 *) (r3+0)
	if r3 == r0 goto .L1558
	r1 += 1
	goto .L1564
.L1670:
	r1 = 0
.L1558:
	r0 = r1
	exit
.L1567:
	r3 = r2
	goto .L1560
	.size	strstr, .-strstr
	.align	3
	.global	copysign
	.type	copysign, @function
copysign:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1681
.L1673:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1676
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1675
.L1676:
	r0 = r6
	exit
.L1681:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1673
.L1675:
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
	if r4 == 0 goto .L1690
	if r4 >= r2 goto .L1692
	r2 -= r4
	r5 = r1
	r5 += r2
	if r1 > r5 goto .L1692
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
.L1689:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r1
	r1 += 1
	if r0 == r9 goto .L1765
	if r5 > r1 goto .L1689
.L1692:
	r4 = 0
.L1682:
	r0 = r4
	exit
.L1765:
	r3 = r7
	r3 += -1
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	if r7 == 1 goto .L1682
	r2 = r1
	r6 = r3
	r6 &= 7
	if r6 == 0 goto .L1757
	if r6 == 1 goto .L1735
	if r6 == 2 goto .L1736
	if r6 == 3 goto .L1737
	if r6 == 4 goto .L1738
	if r6 == 5 goto .L1739
	if r6 != 6 goto .L1766
.L1740:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1752
	r3 += -1
	r2 += 1
	r0 += 1
.L1739:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1752
	r3 += -1
	r2 += 1
	r0 += 1
.L1738:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1752
	r3 += -1
	r2 += 1
	r0 += 1
.L1737:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1752
	r3 += -1
	r2 += 1
	r0 += 1
.L1736:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1752
	r3 += -1
	r2 += 1
	r0 += 1
.L1735:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1752
	r3 += -1
	r2 += 1
	r0 += 1
	if r3 == 0 goto .L1682
.L1757:
	*(u64 *) (r10+-16) = r5
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r7
	r5 = *(u8 *) (r2+0)
	r1 = *(u8 *) (r0+0)
	if r5 != r1 goto .L1763
.L1687:
	r3 += -1
	r6 = r3
	r2 += 1
	r5 = r2
	r0 += 1
	r1 = r0
	r8 = *(u8 *) (r2+0)
	r7 = *(u8 *) (r0+0)
	if r8 != r7 goto .L1763
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+1)
	r7 = *(u8 *) (r1+1)
	if r8 != r7 goto .L1763
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+2)
	r7 = *(u8 *) (r1+2)
	if r8 != r7 goto .L1763
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+3)
	r7 = *(u8 *) (r1+3)
	if r8 != r7 goto .L1763
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+4)
	r7 = *(u8 *) (r1+4)
	if r8 != r7 goto .L1763
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+5)
	r7 = *(u8 *) (r1+5)
	if r8 != r7 goto .L1763
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+6)
	r7 = *(u8 *) (r1+6)
	if r8 != r7 goto .L1763
	r3 += -1
	r2 += 1
	r0 += 1
	if r6 == 7 goto .L1682
	r5 = *(u8 *) (r2+0)
	r1 = *(u8 *) (r0+0)
	if r5 == r1 goto .L1687
.L1763:
	r5 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-24)
	r7 = *(u64 *) (r10+-32)
.L1752:
	if r3 == 0 goto .L1682
	r3 = *(u8 *) (r2+0)
	r2 = *(u8 *) (r0+0)
	if r3 == r2 goto .L1682
	if r5 > r1 goto .L1689
	goto .L1692
.L1766:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1752
	r3 += -1
	r2 += 1
	r0 += 1
	goto .L1740
.L1690:
	r4 = r1
	r0 = r4
	exit
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r7 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1806
	*(u64 *) (r10+-8) = 0
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1803
.L1807:
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1772:
	r8 += 1
	r8 <<= 32
	r8 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__muldf3
	r7 = r0
	r2 = r6
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1773
	r8 += 1
	r8 <<= 32
	r8 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__muldf3
	r7 = r0
	r2 = r6
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1773
	r8 += 1
	r8 <<= 32
	r8 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__muldf3
	r7 = r0
	r2 = r6
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1773
	r8 += 1
	r8 <<= 32
	r8 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__muldf3
	r7 = r0
	r2 = r6
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L1772
.L1773:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r8
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1777
	r3 = -9223372036854775808 ll
	r3 ^= r7
	r7 = r3
.L1777:
	r0 = r7
	exit
.L1806:
	r0 = -9223372036854775808 ll
	r0 ^= r7
	r7 = r0
	*(u64 *) (r10+-8) = 1
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s>= 0 goto .L1807
.L1803:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L1804
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	r8 = 0
	if r0 == 0 goto .L1773
	r6 = r8
.L1776:
	r8 += -1
	r8 <<= 32
	r8 s>>= 32
	r2 = r7
	r1 = r7
	call	__adddf3
	r7 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r6 s< r0 goto .L1773
	r8 += -1
	r8 <<= 32
	r8 s>>= 32
	r2 = r7
	r1 = r7
	call	__adddf3
	r7 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r6 s< r0 goto .L1773
	r8 += -1
	r8 <<= 32
	r8 s>>= 32
	r2 = r7
	r1 = r7
	call	__adddf3
	r7 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r6 s< r0 goto .L1773
	r8 += -1
	r8 <<= 32
	r8 s>>= 32
	r2 = r7
	r1 = r7
	call	__adddf3
	r7 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r6 s>= r0 goto .L1776
	goto .L1773
.L1804:
	r8 = 0
	goto .L1773
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = 0
	if r1 == 0 goto .L1808
.L1810:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1827
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1808
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1808
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1808
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1808
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1808
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1808
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1810
	exit
.L1808:
	exit
.L1827:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1837
	r9 = 32
	r4 = 1
.L1829:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1830
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1830
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1830
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1830
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1830
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1830
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1830
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1830
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1830
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1830
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1830
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1830
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1830
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1830
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1830
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1830
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1829
.L1854:
	r1 = 0
.L1832:
	if r3 != 0 goto .L1835
	r0 = r1
.L1835:
	exit
.L1830:
	if r4 == 0 goto .L1854
.L1837:
	r1 = 0
.L1831:
	if r2 >= r0 goto .L1834
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
.L1834:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L1831
	goto .L1832
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r2 = r1
	r2 s>>= 56
	r1 s>>= 63
	r0 = r2
	r0 ^= r1
	if r2 == r1 goto .L1857
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
.L1857:
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
	r1 ^= r2
	if r0 == r2 goto .L1860
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1860:
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
	if r1 == 0 goto .L1862
.L1863:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1880
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1862
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1862
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1862
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1862
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1862
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1862
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1863
	exit
.L1862:
	exit
.L1880:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 3
	r9 = r3
	r9 &= -8
	r9 = r9;r9 &= 0xffffffff
	if r1 < r2 goto .L1885
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2001
.L1885:
	if r5 == 0 goto .L1884
	r0 = r2
	r4 = r1
	r5 <<= 3
	r6 = r5
	r6 += r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1888
	if r5 == 1 goto .L1965
	if r5 == 2 goto .L1966
	if r5 == 3 goto .L1967
	if r5 == 4 goto .L1968
	if r5 == 5 goto .L1969
	if r5 == 6 goto .L1970
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
	r4 += 8
.L1970:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1969:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1968:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1967:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1966:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1965:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1884
.L1888:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
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
	r0 += 56
	r4 += 56
	if r0 != r6 goto .L1888
.L1884:
	if r9 > r3 goto .L1881
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r2 += r9
	r3 += -1
	r3 -= r9
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r9 = r2
	r9 -= r0
	r9 &= 7
	if r9 == 0 goto .L1889
	if r9 == 1 goto .L1971
	if r9 == 2 goto .L1972
	if r9 == 3 goto .L1973
	if r9 == 4 goto .L1974
	if r9 == 5 goto .L1975
	if r9 == 6 goto .L1976
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1976:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1975:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1974:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1973:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1972:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1971:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L2002
.L1889:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r5 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r5
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r3
	r9 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r9
	r4 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r4
	r5 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r5
	r3 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r3
	r0 += 7
	r1 += 7
	if r0 != r2 goto .L1889
	exit
.L2001:
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1881
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1890
	if r3 == 1 goto .L1959
	if r3 == 2 goto .L1960
	if r3 == 3 goto .L1961
	if r3 == 4 goto .L1962
	if r3 == 5 goto .L1963
	if r3 == 6 goto .L1964
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L1964:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L1963:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L1962:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L1961:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L1960:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L1959:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2003
.L1890:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
	r3 = r9
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-1)
	*(u8 *) (r5+-1) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-2)
	*(u8 *) (r5+-2) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-3)
	*(u8 *) (r5+-3) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-4)
	*(u8 *) (r5+-4) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-5)
	*(u8 *) (r5+-5) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-6)
	*(u8 *) (r5+-6) = r4
	r9 = r3
	r9 += -7
	if r3 != 6 goto .L1890
.L1881:
	exit
.L2002:
	exit
.L2003:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 1
	if r1 < r2 goto .L2008
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2090
.L2008:
	if r5 == 0 goto .L2007
	r0 = r2
	r4 = r1
	r5 += r5
	r9 = r5
	r9 += r2
	r5 += -2
	r5 >>= 1
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2011
	if r5 == 1 goto .L2067
	if r5 == 2 goto .L2068
	if r5 == 3 goto .L2069
	if r5 == 4 goto .L2070
	if r5 == 5 goto .L2071
	if r5 == 6 goto .L2072
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r0 = r2
	r0 += 2
	r4 += 2
.L2072:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2071:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2070:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2069:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2068:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2067:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L2007
.L2011:
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
	if r0 != r9 goto .L2011
.L2007:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L2004
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2090:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	r5 = r9
	if r3 == 0 goto .L2004
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2012
	if r3 == 1 goto .L2061
	if r3 == 2 goto .L2062
	if r3 == 3 goto .L2063
	if r3 == 4 goto .L2064
	if r3 == 5 goto .L2065
	if r3 == 6 goto .L2066
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r5 = r9
	r5 += -1
.L2066:
	r9 = r2
	r9 += r5
	r3 = r1
	r3 += r5
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r0
	r5 += -1
.L2065:
	r4 = r2
	r4 += r5
	r9 = r1
	r9 += r5
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r5 += -1
.L2064:
	r0 = r2
	r0 += r5
	r9 = r1
	r9 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r5 += -1
.L2063:
	r0 = r2
	r0 += r5
	r3 = r1
	r3 += r5
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r9
	r5 += -1
.L2062:
	r4 = r2
	r4 += r5
	r0 = r1
	r0 += r5
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r5 += -1
.L2061:
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r5 += -1
	if r5 == -1 goto .L2091
.L2012:
	r9 = r2
	r9 += r5
	r3 = r1
	r3 += r5
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r0
	r5 += -1
	r9 = r5
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r4 = *(u8 *) (r5+-1)
	*(u8 *) (r3+-1) = r4
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r4 = *(u8 *) (r5+-2)
	*(u8 *) (r3+-2) = r4
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r4 = *(u8 *) (r5+-3)
	*(u8 *) (r3+-3) = r4
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r4 = *(u8 *) (r5+-4)
	*(u8 *) (r3+-4) = r4
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r4 = *(u8 *) (r5+-5)
	*(u8 *) (r3+-5) = r4
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r4 = *(u8 *) (r5+-6)
	*(u8 *) (r3+-6) = r4
	r5 = r9
	r5 += -7
	if r9 != 6 goto .L2012
.L2004:
	exit
.L2091:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 2
	r9 = r3
	r9 &= -4
	r9 = r9;r9 &= 0xffffffff
	if r1 < r2 goto .L2096
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2212
.L2096:
	if r5 == 0 goto .L2095
	r0 = r2
	r4 = r1
	r5 <<= 2
	r6 = r5
	r6 += r2
	r5 += -4
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2099
	if r5 == 1 goto .L2176
	if r5 == 2 goto .L2177
	if r5 == 3 goto .L2178
	if r5 == 4 goto .L2179
	if r5 == 5 goto .L2180
	if r5 == 6 goto .L2181
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r0
	r0 = r2
	r0 += 4
	r4 += 4
.L2181:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2180:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2179:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2178:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2177:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2176:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L2095
.L2099:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r5 = *(u32 *) (r0+4)
	*(u32 *) (r4+4) = r5
	r5 = *(u32 *) (r0+8)
	*(u32 *) (r4+8) = r5
	r5 = *(u32 *) (r0+12)
	*(u32 *) (r4+12) = r5
	r5 = *(u32 *) (r0+16)
	*(u32 *) (r4+16) = r5
	r5 = *(u32 *) (r0+20)
	*(u32 *) (r4+20) = r5
	r5 = *(u32 *) (r0+24)
	*(u32 *) (r4+24) = r5
	r0 += 28
	r4 += 28
	if r0 != r6 goto .L2099
.L2095:
	if r9 > r3 goto .L2092
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r2 += r9
	r3 += -1
	r3 -= r9
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r9 = r2
	r9 -= r0
	r9 &= 7
	if r9 == 0 goto .L2100
	if r9 == 1 goto .L2182
	if r9 == 2 goto .L2183
	if r9 == 3 goto .L2184
	if r9 == 4 goto .L2185
	if r9 == 5 goto .L2186
	if r9 == 6 goto .L2187
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2187:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2186:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L2185:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L2184:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2183:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2182:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L2213
.L2100:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r5 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r5
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r3
	r9 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r9
	r4 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r4
	r5 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r5
	r3 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r3
	r0 += 7
	r1 += 7
	if r0 != r2 goto .L2100
	exit
.L2212:
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2092
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2101
	if r3 == 1 goto .L2170
	if r3 == 2 goto .L2171
	if r3 == 3 goto .L2172
	if r3 == 4 goto .L2173
	if r3 == 5 goto .L2174
	if r3 == 6 goto .L2175
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L2175:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L2174:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L2173:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L2172:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L2171:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L2170:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2214
.L2101:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
	r3 = r9
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-1)
	*(u8 *) (r5+-1) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-2)
	*(u8 *) (r5+-2) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-3)
	*(u8 *) (r5+-3) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-4)
	*(u8 *) (r5+-4) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-5)
	*(u8 *) (r5+-5) = r4
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r4 = *(u8 *) (r9+-6)
	*(u8 *) (r5+-6) = r4
	r9 = r3
	r9 += -7
	if r3 != 6 goto .L2101
.L2092:
	exit
.L2213:
	exit
.L2214:
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
	r0 >>= 15
	if r0 != 0 goto .L2224
	r0 = r1
	r0 >>= 14
	if r0 != 0 goto .L2223
	r3 = r1
	r3 >>= 13
	if r3 != 0 goto .L2225
	r4 = r1
	r4 >>= 12
	if r4 != 0 goto .L2226
	r5 = r1
	r5 >>= 11
	if r5 != 0 goto .L2227
	r9 = r1
	r9 >>= 10
	if r9 != 0 goto .L2228
	r0 = r1
	r0 >>= 9
	if r0 != 0 goto .L2229
	r3 = r1
	r3 >>= 8
	if r3 != 0 goto .L2230
	r4 = r1
	r4 >>= 7
	if r4 != 0 goto .L2231
	r5 = r1
	r5 >>= 6
	if r5 != 0 goto .L2232
	r9 = r1
	r9 >>= 5
	if r9 != 0 goto .L2233
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2234
	r3 = r1
	r3 >>= 3
	if r3 != 0 goto .L2235
	r4 = r1
	r4 >>= 2
	if r4 != 0 goto .L2236
	r2 >>= 1
	if r2 != 0 goto .L2237
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L2240
.L2223:
	exit
.L2224:
	r0 = 0
	exit
.L2235:
	r0 = 12
	exit
.L2240:
	r0 = 15
	exit
.L2225:
	r0 = 2
	exit
.L2226:
	r0 = 3
	exit
.L2227:
	r0 = 4
	exit
.L2228:
	r0 = 5
	exit
.L2229:
	r0 = 6
	exit
.L2230:
	r0 = 7
	exit
.L2231:
	r0 = 8
	exit
.L2232:
	r0 = 9
	exit
.L2233:
	r0 = 10
	exit
.L2234:
	r0 = 11
	exit
.L2236:
	r0 = 13
	exit
.L2237:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2244
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2245
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2246
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2247
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2248
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2249
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2250
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2251
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2252
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2253
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2254
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2255
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2256
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2257
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2258
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2261
	exit
.L2244:
	r0 = 0
	exit
.L2245:
	r0 = 1
	exit
.L2256:
	r0 = 12
	exit
.L2261:
	r0 = 15
	exit
.L2246:
	r0 = 2
	exit
.L2247:
	r0 = 3
	exit
.L2248:
	r0 = 4
	exit
.L2249:
	r0 = 5
	exit
.L2250:
	r0 = 6
	exit
.L2251:
	r0 = 7
	exit
.L2252:
	r0 = 8
	exit
.L2253:
	r0 = 9
	exit
.L2254:
	r0 = 10
	exit
.L2255:
	r0 = 11
	exit
.L2257:
	r0 = 13
	exit
.L2258:
	r0 = 14
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L2268
	r1 = r6
	call	__fixsfdi
	exit
.L2268:
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
	r2 = r1
	r2 s>>= 1
	r2 &= 1
	r0 = r1
	r0 &= 1
	r0 += r2
	r3 = r1
	r3 s>>= 2
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 s>>= 3
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 s>>= 4
	r5 &= 1
	r0 += r5
	r9 = r1
	r9 s>>= 5
	r9 &= 1
	r0 += r9
	r2 = r1
	r2 s>>= 6
	r2 &= 1
	r0 += r2
	r3 = r1
	r3 s>>= 7
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 s>>= 8
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 s>>= 9
	r5 &= 1
	r0 += r5
	r9 = r1
	r9 s>>= 10
	r9 &= 1
	r0 += r9
	r2 = r1
	r2 s>>= 11
	r2 &= 1
	r0 += r2
	r3 = r1
	r3 s>>= 12
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 s>>= 13
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 s>>= 14
	r5 &= 1
	r0 += r5
	r1 s>>= 15
	r0 += r1
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r1 &= 0xffff
	r2 = r1
	r2 s>>= 1
	r2 &= 1
	r0 = r1
	r0 &= 1
	r0 += r2
	r3 = r1
	r3 s>>= 2
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 s>>= 3
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 s>>= 4
	r5 &= 1
	r0 += r5
	r9 = r1
	r9 s>>= 5
	r9 &= 1
	r0 += r9
	r2 = r1
	r2 s>>= 6
	r2 &= 1
	r0 += r2
	r3 = r1
	r3 s>>= 7
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 s>>= 8
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 s>>= 9
	r5 &= 1
	r0 += r5
	r9 = r1
	r9 s>>= 10
	r9 &= 1
	r0 += r9
	r2 = r1
	r2 s>>= 11
	r2 &= 1
	r0 += r2
	r3 = r1
	r3 s>>= 12
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 s>>= 13
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 s>>= 14
	r5 &= 1
	r0 += r5
	r1 s>>= 15
	r0 += r1
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	if r1 == 0 goto .L2272
.L2273:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2290
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2272
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L2272
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L2272
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L2272
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L2272
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L2272
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L2273
	exit
.L2272:
	exit
.L2290:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	if r1 == 0 goto .L2294
	if r2 == 0 goto .L2292
.L2293:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2311
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2292
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2292
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2292
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2292
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2292
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2292
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L2293
	exit
.L2292:
	exit
.L2294:
	exit
.L2311:
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
	r4 = 1
	if r0 < r2 goto .L2321
	r9 = 32
	r4 = 1
.L2313:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2314
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2314
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2314
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2314
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2314
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2314
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2314
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2314
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2314
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2314
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2314
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2314
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2314
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2314
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2314
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2314
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2313
.L2338:
	r1 = 0
.L2316:
	if r3 != 0 goto .L2319
	r0 = r1
.L2319:
	exit
.L2314:
	if r4 == 0 goto .L2338
.L2321:
	r1 = 0
.L2315:
	if r2 >= r0 goto .L2318
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
.L2318:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2315
	goto .L2316
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L2342
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2343
	r0 = r8
	r0 &= 1
	exit
.L2343:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2342:
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
	if r0 s<= 0 goto .L2347
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2348
	r0 = r8
	r0 &= 1
	exit
.L2348:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2347:
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
	r3 = r2
	r3 s>>= 32
	if r2 s< 0 goto .L2379
	r2 = 0
.L2352:
	if r3 == 0 goto .L2357
	r4 = r3
	r4 &= 1
	r4 = -r4
	r0 = r1
	r0 &= r4
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L2353
	r9 = r3
	r9 &= 1
	r9 = -r9
	r5 = r1
	r5 &= r9
	r0 += r5
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r3 <<= 31
	r3 s>>= 32
	r5 = r3
	if r3 == 0 goto .L2353
	r4 = 30
	r4 &= 0xff
.L2354:
	r3 = r5
	r3 &= 1
	r3 = -r3
	r9 = r1
	r9 &= r3
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r3 = r5
	r3 s>>= 1
	if r3 == 0 goto .L2353
	r4 += -1
	r4 &= 0xff
	r5 = r3
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L2353
	r4 += -1
	r4 &= 0xff
	r5 = r3
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L2353
	r4 += -1
	r4 &= 0xff
	r5 = r3
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L2353
	r4 += -1
	r4 &= 0xff
	r5 = r3
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	r5 = r3
	if r3 == 0 goto .L2353
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L2354
.L2353:
	if r2 == 0 goto .L2355
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L2355:
	exit
.L2379:
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r2 = 1
	goto .L2352
.L2357:
	r0 = 0
	goto .L2353
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2413
	r4 = 0
.L2381:
	if r2 s>= 0 goto .L2382
	r2 = -r2
	r4 ^= 1
.L2382:
	r0 = r2;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2392
	r9 = 32
	r1 = 1
.L2383:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2384
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2384
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2384
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2384
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2384
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2384
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2384
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2384
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2384
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2384
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2384
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2384
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2384
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2384
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2384
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2384
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2383
.L2412:
	r2 = 0
.L2386:
	r0 = r2
	if r4 == 0 goto .L2380
	r0 = -r0
.L2380:
	exit
.L2384:
	if r1 == 0 goto .L2412
.L2392:
	r2 = 0
.L2385:
	if r0 >= r3 goto .L2388
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
	r5 = r1
	r5 |= r2
	r2 = r5
.L2388:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2385
	goto .L2386
.L2413:
	r1 = -r1
	r4 = 1
	goto .L2381
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s< 0 goto .L2451
	r4 = 0
.L2415:
	r0 = r2
	if r2 s>= 0 goto .L2416
	r0 = -r0
.L2416:
	r0 = r0;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2431
	r9 = 32
	r1 = 1
.L2417:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2450
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2450
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2450
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2450
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2450
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2450
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2450
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2450
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2450
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2450
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2450
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2450
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2450
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2450
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2450
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2450
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2417
.L2420:
	r0 = r3
	if r4 == 0 goto .L2414
	r0 = -r0
.L2414:
	exit
.L2450:
	if r1 == 0 goto .L2420
.L2431:
	if r0 >= r3 goto .L2421
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2421:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2431
	goto .L2420
.L2451:
	r1 = -r1
	r4 = 1
	goto .L2415
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r0 < r2 goto .L2477
	r4 = 0
	r1 = r2
	r1 <<= 48
	if r1 s<= r4 goto .L2477
	r9 = r2
	r9 += r2
	r9 &= 0xffff
	if r9 > r0 goto .L2479
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2479
	r1 = r2
	r1 <<= 2
	r1 &= 0xffff
	if r1 > r0 goto .L2481
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2481
	r1 = r2
	r1 <<= 3
	r1 &= 0xffff
	if r1 > r0 goto .L2483
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2483
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L2485
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2485
	r9 = r2
	r9 <<= 5
	r9 &= 0xffff
	if r9 > r0 goto .L2487
	r5 = r9
	r5 <<= 48
	if r5 s<= r4 goto .L2487
	r1 = r2
	r1 <<= 6
	r1 &= 0xffff
	if r1 > r0 goto .L2489
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2489
	r1 = r2
	r1 <<= 7
	r1 &= 0xffff
	if r1 > r0 goto .L2491
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2491
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L2493
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2493
	r9 = r2
	r9 <<= 9
	r9 &= 0xffff
	if r9 > r0 goto .L2495
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2495
	r1 = r2
	r1 <<= 10
	r1 &= 0xffff
	if r1 > r0 goto .L2497
	r9 = r1
	r9 <<= 48
	if r9 s<= r4 goto .L2497
	r1 = r2
	r1 <<= 11
	r1 &= 0xffff
	if r1 > r0 goto .L2499
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2499
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L2501
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2501
	r9 = r2
	r9 <<= 13
	r9 &= 0xffff
	if r9 > r0 goto .L2503
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2503
	r1 = r2
	r1 <<= 14
	r1 &= 0xffff
	if r1 > r0 goto .L2505
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2505
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L2525
	r1 = r4
	if r2 != r4 goto .L2525
.L2456:
	if r3 != 0 goto .L2476
	r0 = r1
.L2476:
	exit
.L2477:
	r4 = 1
.L2455:
	if r2 >= r0 goto .L2508
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L2459:
	r9 = r4
	r9 >>= 1
	r5 = r2
	r5 >>= 1
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2461
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2461:
	r9 = r4
	r9 >>= 2
	r5 = r2
	r5 >>= 2
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2462
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2462:
	r9 = r4
	r9 >>= 3
	r5 = r2
	r5 >>= 3
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2463
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2463:
	r9 = r4
	r9 >>= 4
	r5 = r2
	r5 >>= 4
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2464
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2464:
	r9 = r4
	r9 >>= 5
	r5 = r2
	r5 >>= 5
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2465
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2465:
	r9 = r4
	r9 >>= 6
	r5 = r2
	r5 >>= 6
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2466
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2466:
	r9 = r4
	r9 >>= 7
	r5 = r2
	r5 >>= 7
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2467
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2467:
	r9 = r4
	r9 >>= 8
	r5 = r2
	r5 >>= 8
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2468
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2468:
	r9 = r4
	r9 >>= 9
	r5 = r2
	r5 >>= 9
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2469
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2469:
	r9 = r4
	r9 >>= 10
	r5 = r2
	r5 >>= 10
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2470
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2470:
	r9 = r4
	r9 >>= 11
	r5 = r2
	r5 >>= 11
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2471
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2471:
	r9 = r4
	r9 >>= 12
	r5 = r2
	r5 >>= 12
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2472
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2472:
	r9 = r4
	r9 >>= 13
	r5 = r2
	r5 >>= 13
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2473
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2473:
	r9 = r4
	r9 >>= 14
	r5 = r2
	r5 >>= 14
	r5 &= 0xffff
	if r9 == 0 goto .L2456
	if r5 >= r0 goto .L2474
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2474:
	r2 >>= 15
	r2 &= 0xffff
	r4 >>= 15
	if r4 == 0 goto .L2456
	if r2 >= r0 goto .L2456
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
	goto .L2456
.L2508:
	r1 = 0
	goto .L2459
.L2479:
	r2 = r9
	r4 = 2
	goto .L2455
.L2481:
	r2 = r1
	r4 = 4
	goto .L2455
.L2483:
	r2 = r1
	r4 = 8
	goto .L2455
.L2485:
	r2 = r9
	r4 = 16
	goto .L2455
.L2495:
	r2 = r9
	r4 = 512
	goto .L2455
.L2525:
	r4 = 32768
	goto .L2455
.L2487:
	r2 = r9
	r4 = 32
	goto .L2455
.L2489:
	r2 = r1
	r4 = 64
	goto .L2455
.L2491:
	r2 = r1
	r4 = 128
	goto .L2455
.L2493:
	r2 = r9
	r4 = 256
	goto .L2455
.L2497:
	r2 = r1
	r4 = 1024
	goto .L2455
.L2499:
	r2 = r1
	r4 = 2048
	goto .L2455
.L2501:
	r2 = r9
	r4 = 4096
	goto .L2455
.L2503:
	r2 = r9
	r4 = 8192
	goto .L2455
.L2505:
	r2 = r1
	r4 = 16384
	goto .L2455
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L2535
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L2527:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2528
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2528
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2528
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2528
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2528
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2528
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2528
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2528
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2528
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2528
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2528
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2528
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2528
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2528
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2528
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2528
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2527
.L2553:
	r0 = 0
	if r3 != 0 goto .L2554
.L2526:
	exit
.L2528:
	if r4 == 0 goto .L2553
.L2535:
	r0 = 0
.L2529:
	if r2 >= r1 goto .L2532
	r1 -= r2
	r0 |= r4
.L2532:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2529
	if r3 == 0 goto .L2526
.L2554:
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
	if r0 == 0 goto .L2556
	r2 += -32
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = 0
	r3 <<= 32
	r0 |= r3
	exit
.L2556:
	if r2 == 0 goto .L2559
	r3 = r1;r3 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	r4 = r3
	r4 <<= r5
	r0 = r4;r0 &= 0xffffffff
	r9 = 32
	r9 -= r2
	r4 = r9;r4 &= 0xffffffff
	r3 >>= r4
	r1 s>>= 32
	r1 <<= r5
	r3 |= r1
	r3 <<= 32
	r3 s>>= 32
	r3 <<= 32
	r0 |= r3
	exit
.L2559:
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
	if r0 == 0 goto .L2561
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L2561:
	if r3 == 0 goto .L2564
	r5 = r3;r5 &= 0xffffffff
	r0 = r1
	r0 <<= r5
	r4 = 64
	r4 -= r3
	r3 = r4;r3 &= 0xffffffff
	r1 >>= r3
	r2 <<= r5
	r1 |= r2
	exit
.L2564:
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
	if r0 == 0 goto .L2566
	r3 = r1
	r3 s>>= 32
	r0 = r1
	r0 s>>= 63
	r4 = r2
	r4 += -32
	r4 <<= 32
	r4 s>>= 32
	r3 s>>= r4
	r9 = r3;r9 &= 0xffffffff
	r0 <<= 32
	r0 |= r9
	exit
.L2566:
	if r2 == 0 goto .L2569
	r3 = r1
	r3 s>>= 32
	r0 = r3
	r0 s>>= r2
	r4 = 32
	r4 -= r2
	r5 = r4;r5 &= 0xffffffff
	r3 <<= r5
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 >>= r2
	r3 |= r1
	r9 = r3;r9 &= 0xffffffff
	r0 <<= 32
	r0 |= r9
	exit
.L2569:
	r0 = r1
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	r4 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L2571
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L2571:
	if r3 == 0 goto .L2574
	r1 = r2
	r1 s>>= r3
	r5 = 64
	r5 -= r3
	r9 = r5;r9 &= 0xffffffff
	r0 = r2
	r0 <<= r9
	r3 = r3;r3 &= 0xffffffff
	r4 >>= r3
	r0 |= r4
	exit
.L2574:
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
	if r1 <= 65534 goto .L2578
	r0 = 0
.L2578:
	r0 <<= 36
	r0 s>>= 32
	r2 = 16
	r2 -= r0
	r3 = r2;r3 &= 0xffffffff
	r1 >>= r3
	r5 = r1;r5 &= 0xffffffff
	r1 &= 65280
	r1 += -1
	r1 >>= 63
	r1 <<= 3
	r4 = 8
	r4 -= r1
	r9 = r4;r9 &= 0xffffffff
	r5 >>= r9
	r2 = r5;r2 &= 0xffffffff
	r0 += r1
	r5 &= 240
	r5 += -1
	r5 >>= 63
	r5 <<= 2
	r1 = 4
	r1 -= r5
	r3 = r1;r3 &= 0xffffffff
	r9 = r2
	r9 >>= r3
	r2 = r9;r2 &= 0xffffffff
	r0 += r5
	r9 &= 12
	r9 += -1
	r9 >>= 63
	r9 <<= 1
	r4 = 2
	r5 = r4
	r5 -= r9
	r1 = r5;r1 &= 0xffffffff
	r2 >>= r1
	r5 = r2;r5 &= 0xffffffff
	r3 = r5
	r3 >>= 1
	r3 &= 1
	if r3 != 0 goto .L2579
	r4 -= r5
	r0 += r9
	r0 += r4
	exit
.L2579:
	r4 = 0
	r0 += r9
	r0 += r4
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L2582
	r6 = 0
.L2582:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2584
	r0 = 0
.L2584:
	r1 |= r0
	call	__clzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 <<= 6
	r0 += r6
	exit
	.size	__clzti2, .-__clzti2
	.align	3
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	r3 = r1
	r3 s>>= 32
	r0 = r2
	r0 s>>= 32
	if r0 s>= r3 goto .L2595
	if r3 s> r0 goto .L2596
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2595
	if r1 > r2 goto .L2596
	r0 = 1
	exit
.L2595:
	r0 = 0
	exit
.L2596:
	r0 = 2
	exit
	.size	__cmpdi2, .-__cmpdi2
	.align	3
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	r3 = r1
	r3 s>>= 32
	r0 = r2
	r0 s>>= 32
	if r0 s>= r3 goto .L2601
	if r3 s> r0 goto .L2602
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2601
	if r1 > r2 goto .L2602
	r0 = 1
	r0 += -1
	exit
.L2601:
	r0 = 0
	r0 += -1
	exit
.L2602:
	r0 = 2
	r0 += -1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L2607
	if r2 s> r4 goto .L2608
	if r3 >= r1 goto .L2607
	if r1 > r3 goto .L2608
	r0 = 1
	exit
.L2607:
	r0 = 0
	exit
.L2608:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r1 <<= 32
	r3 = r1
	r3 s>>= 32
	r1 >>= 32
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
	r0 = r2;r0 &= 0xffffffff
	r3 += r4
	r2 &= 15
	r2 += -1
	r2 >>= 63
	r2 <<= 2
	r0 >>= r2
	r9 = r0;r9 &= 0xffffffff
	r3 += r2
	r0 &= 3
	r0 += -1
	r0 >>= 63
	r1 = r0
	r1 <<= 1
	r9 >>= r1
	r9 &= 3
	r0 = r9
	r0 ^= -1
	r0 &= 1
	r9 >>= 1
	r2 = 2
	r2 -= r9
	r0 = -r0
	r0 &= r2
	r3 += r1
	r0 += r3
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	r0 = r1
	r6 = 1
	if r1 == 0 goto .L2611
	r6 = 0
.L2611:
	r6 &= 0xff
	if r0 == 0 goto .L2617
	r1 = 0
.L2613:
	r2 = r6
	r2 += -1
	r2 &= r0
	r1 |= r2
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 <<= 6
	r0 += r6
	exit
.L2617:
	r1 = r2
	goto .L2613
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2621
	if r2 != 0 goto .L2624
	r0 = 0
	exit
.L2621:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2624:
	r1 = r2
	call	__ctzdi2
	r0 <<= 32
	r2 = 279172874240 ll
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
	if r0 == 0 goto .L2626
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
	r0 <<= 32
	r0 |= r3
	exit
.L2626:
	if r2 == 0 goto .L2629
	r3 = r1
	r3 >>= 32
	r5 = r2;r5 &= 0xffffffff
	r4 = r3
	r4 >>= r5
	r0 = r4;r0 &= 0xffffffff
	r9 = 32
	r9 -= r2
	r2 = r9;r2 &= 0xffffffff
	r3 <<= r2
	r1 = r1;r1 &= 0xffffffff
	r1 >>= r5
	r3 |= r1
	r3 = r3;r3 &= 0xffffffff
	r0 <<= 32
	r0 |= r3
	exit
.L2629:
	r0 = r1
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	r4 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L2631
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2631:
	if r3 == 0 goto .L2634
	r5 = r3;r5 &= 0xffffffff
	r1 = r2
	r1 >>= r5
	r9 = 64
	r9 -= r3
	r3 = r9;r3 &= 0xffffffff
	r0 = r2
	r0 <<= r3
	r4 >>= r5
	r0 |= r4
	exit
.L2634:
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
	r5 = r1;r5 &= 0xffff
	r1 = r2;r1 &= 0xffff
	r0 = r5
	r0 *= r1
	r2 = r0
	r2 >>= 16
	r3 >>= 16
	r1 *= r3
	r2 += r1
	r9 = r2;r9 &= 0xffffffff
	r0 &= 65535
	r1 = r9
	r1 <<= 16
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r2 = r0
	r2 >>= 16
	r4 >>= 16
	r5 *= r4
	r2 += r5
	r1 = r2;r1 &= 0xffffffff
	r0 &= 65535
	r5 = r1
	r5 <<= 16
	r0 += r5
	r9 >>= 16
	r3 *= r4
	r9 += r3
	r1 >>= 16
	r9 += r1
	r9 <<= 32
	r0 = r0;r0 &= 0xffffffff
	r0 |= r9
	exit
	.size	__muldsi3, .-__muldsi3
	.align	3
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	r4 = r1
	r5 = r2;r5 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	r8 = r4;r8 &= 0xffff
	r7 = r2;r7 &= 0xffff
	r0 = r8
	r0 *= r7
	r3 = r0
	r3 >>= 16
	r6 = r1
	r6 >>= 16
	r7 *= r6
	r3 += r7
	r3 = r3;r3 &= 0xffffffff
	r0 &= 65535
	r9 = r3
	r9 <<= 16
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r9 = r0
	r9 >>= 16
	r7 = r5
	r7 >>= 16
	r8 *= r7
	r9 += r8
	r9 = r9;r9 &= 0xffffffff
	r0 &= 65535
	r8 = r9
	r8 <<= 16
	r0 += r8
	r3 >>= 16
	r6 *= r7
	r3 += r6
	r9 >>= 16
	r3 += r9
	r3 <<= 32
	r9 = 4294967295 ll
	r0 &= r9
	r0 |= r3
	r2 s>>= 32
	r1 *= r2
	r2 = r0
	r2 s>>= 32
	r1 += r2
	r4 s>>= 32
	r5 *= r4
	r1 += r5
	r1 <<= 32
	r0 &= r9
	r0 |= r1
	exit
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	3
	.global	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	r5 = r1
	r9 = 4294967295 ll
	r4 = r1
	r4 &= r9
	r0 = r2
	r0 &= r9
	r3 = r4
	r3 *= r0
	r1 = r3
	r1 >>= 32
	r5 >>= 32
	r0 *= r5
	r0 += r1
	r3 &= r9
	r1 = r0
	r1 <<= 32
	r3 += r1
	r1 >>= 32
	r2 >>= 32
	r4 *= r2
	r4 += r1
	r3 &= r9
	r9 = r4
	r9 <<= 32
	r3 += r9
	r0 >>= 32
	r1 = r0
	r5 *= r2
	r1 += r5
	r4 >>= 32
	r1 += r4
	r0 = r3
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	r6 = 4294967295 ll
	r5 = r1
	r5 &= r6
	r0 = r3
	r0 &= r6
	r7 = r5
	r7 *= r0
	r8 = r7
	r8 >>= 32
	r9 = r1
	r9 >>= 32
	r0 *= r9
	r0 += r8
	r7 &= r6
	r8 = r7
	r7 = r0
	r7 <<= 32
	r8 += r7
	*(u64 *) (r10+-24) = r8
	r7 >>= 32
	r8 = r3
	r8 >>= 32
	r5 *= r8
	r5 += r7
	r7 = *(u64 *) (r10+-24)
	r7 &= r6
	r6 = r5
	r6 <<= 32
	r7 += r6
	r0 >>= 32
	r9 *= r8
	r0 += r9
	r5 >>= 32
	r0 += r5
	r1 *= r4
	r1 += r0
	r3 *= r2
	r1 += r3
	r0 = r7
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
	if r1 != 0 goto .L2641
	r0 = 0
.L2641:
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
	r0 s>>= 32
	r0 ^= r1
	r2 = r0;r2 &= 0xffffffff
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
	r0 s>>= 32
	r0 ^= r1
	r2 = r0;r2 &= 0xffffffff
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
	r9 = r5
	r9 >>= 32
	r9 += r5
	r2 = r9;r2 &= 0xffffffff
	r0 = r2
	r0 >>= 16
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
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
	r3 >>= 2
	r3 &= 858993459
	r2 &= 858993459
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
	if r9 > r0 goto .L2648
	r3 = 0
.L2648:
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
	if r0 >= r4 goto .L2649
	r9 = 0
.L2649:
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
	if r1 >= r2 goto .L2650
	r0 = 0
.L2650:
	r5 += r9
	r0 += r5
	r4 = 1085102592571150095 ll
	r2 &= r4
	r0 &= r4
	r0 += r2
	r9 = r0
	r9 >>= 32
	r9 += r0
	r3 = r9;r3 &= 0xffffffff
	r1 = r3
	r1 >>= 16
	r1 += r3
	r0 = r1;r0 &= 0xffffffff
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
	r6 = r1
	r2 <<= 32
	r2 s>>= 32
	*(u64 *) (r10+-8) = r2
	r8 = r2
	r7 = 0x3ff0000000000000 ll
	goto .L2654
.L2659:
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2654:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2652
	r2 = r6
	r1 = r7
	call	__muldf3
	r7 = r0
.L2652:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 != 0 goto .L2659
	r2 = *(u64 *) (r10+-8)
	if r2 s>= 0 goto .L2651
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L2651:
	r0 = r7
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r6 = r1
	r2 <<= 32
	r2 s>>= 32
	*(u64 *) (r10+-8) = r2
	r8 = r2
	r7 = 0x3f800000 ll
	goto .L2663
.L2668:
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2663:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2661
	r2 = r6
	r1 = r7
	call	__mulsf3
	r7 = r0
.L2661:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 != 0 goto .L2668
	r2 = *(u64 *) (r10+-8)
	if r2 s>= 0 goto .L2660
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L2660:
	r0 = r7
	exit
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2673
	if r3 > r0 goto .L2674
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2673
	if r1 > r2 goto .L2674
	r0 = 1
	exit
.L2673:
	r0 = 0
	exit
.L2674:
	r0 = 2
	exit
	.size	__ucmpdi2, .-__ucmpdi2
	.align	3
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2679
	if r3 > r0 goto .L2680
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2679
	if r1 > r2 goto .L2680
	r0 = 1
	r0 += -1
	exit
.L2679:
	r0 = 0
	r0 += -1
	exit
.L2680:
	r0 = 2
	r0 += -1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2685
	if r2 > r4 goto .L2686
	if r3 >= r1 goto .L2685
	if r1 > r3 goto .L2686
	r0 = 1
	exit
.L2685:
	r0 = 0
	exit
.L2686:
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
