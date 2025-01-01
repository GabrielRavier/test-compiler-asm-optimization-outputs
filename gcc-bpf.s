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
	r9 = *(u8 *) (r2+-1)
	*(u8 *) (r5+-1) = r9
	r4 = *(u8 *) (r2+-2)
	*(u8 *) (r5+-2) = r4
	r0 = *(u8 *) (r2+-3)
	*(u8 *) (r5+-3) = r0
	r3 = *(u8 *) (r2+-4)
	*(u8 *) (r5+-4) = r3
	r9 = *(u8 *) (r2+-5)
	*(u8 *) (r5+-5) = r9
	r4 = *(u8 *) (r2+-6)
	*(u8 *) (r5+-6) = r4
	r0 = *(u8 *) (r2+-7)
	*(u8 *) (r5+-7) = r0
	r2 += -8
	r5 += -8
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
	r9 += 8
	r4 += 8
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
	r5 = r4
	r5 += -1
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
	r4 += -1
	r0 = r4
	r1 += 1
	r5 = r1
	r9 = *(u8 *) (r2+1)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
	r4 += -1
	r1 += 1
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
	r4 = r0
	r4 += -2
	r1 = r5
	r1 += 2
	r5 = *(u8 *) (r2+3)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L150
	r4 += -1
	r1 += 1
	r9 = *(u8 *) (r2+4)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L150
	r4 += -1
	r1 += 1
	r9 = *(u8 *) (r2+6)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L150
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r2+7)
	*(u8 *) (r1+0) = r5
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
	r4 += -1
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
	r9 = r1
	r3 += -1
	r4 = r3
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L211
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L211
	r1 = r9
	r1 += 2
	r3 = r4
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
	r4 += -1
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
	r3 += -1
	r5 = r3
	r1 += 1
	r4 = r1
	r2 += 1
	r0 = r2
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r2+0)
	if r6 != r9 goto .L276
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r9 != r6 goto .L276
	r3 = r5
	r3 += -2
	r1 = r4
	r1 += 2
	r2 = r0
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
	r9 = r0
	r9 += -1
	r4 = *(u8 *) (r0+0)
	if r4 == r2 goto .L278
	r3 = r9
	r5 = r0
	r5 += -2
	r9 = *(u8 *) (r9+0)
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
	r5 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L278
	r3 = r5
	r0 += -8
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
	r0 = r1
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L315
	r1 += r3
	r4 = r0
	r3 &= 7
	if r3 == 0 goto .L316
	if r3 == 1 goto .L341
	if r3 == 2 goto .L342
	if r3 == 3 goto .L343
	if r3 == 4 goto .L344
	if r3 == 5 goto .L345
	if r3 != 6 goto .L356
.L346:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L345:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L344:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L343:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L342:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L341:
	*(u8 *) (r4+0) = r2
	r4 += 1
	if r1 == r4 goto .L357
.L316:
	*(u8 *) (r4+0) = r2
	*(u8 *) (r4+1) = r2
	*(u8 *) (r4+2) = r2
	*(u8 *) (r4+3) = r2
	*(u8 *) (r4+4) = r2
	*(u8 *) (r4+5) = r2
	*(u8 *) (r4+6) = r2
	*(u8 *) (r4+7) = r2
	r4 += 8
	if r1 != r4 goto .L316
.L315:
	exit
.L356:
	*(u8 *) (r0+0) = r2
	r4 += 1
	goto .L346
.L357:
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
	if r1 == 0 goto .L359
.L360:
	r0 += 1
	r3 = r0
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L359
	r0 += 1
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L359
	r0 = r3
	r0 += 2
	r9 = *(u8 *) (r2+3)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L359
	r0 += 1
	r1 = *(u8 *) (r2+4)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L359
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L359
	r0 += 1
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L359
	r0 += 1
	r5 = *(u8 *) (r2+7)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L359
	r2 += 8
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L360
	exit
.L359:
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
	if r1 != 0 goto .L380
	goto .L386
.L382:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 == 0 goto .L379
.L380:
	r4 &= 0xff
	if r4 != r2 goto .L382
.L379:
	exit
.L386:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r0 = r1
	r2 <<= 32
	r2 s>>= 32
	goto .L389
.L392:
	r0 += 1
	if r3 == 0 goto .L391
.L389:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 != r2 goto .L392
	exit
.L391:
	r0 = r3
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L398
.L399:
	if r0 == 0 goto .L395
	r1 += 1
	r2 += 1
.L398:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	if r0 == r3 goto .L399
.L395:
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
	if r0 == 0 goto .L403
	r0 = r1
.L402:
	r0 += 1
	r2 = r0
	r3 = *(u8 *) (r0+0)
	if r3 == 0 goto .L401
	r0 += 1
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L401
	r0 = r2
	r0 += 2
	r5 = *(u8 *) (r2+2)
	if r5 == 0 goto .L401
	r0 += 1
	r9 = *(u8 *) (r2+3)
	if r9 == 0 goto .L401
	r0 += 1
	r3 = *(u8 *) (r2+4)
	if r3 == 0 goto .L401
	r0 += 1
	r4 = *(u8 *) (r2+5)
	if r4 == 0 goto .L401
	r0 += 1
	r5 = *(u8 *) (r2+6)
	if r5 == 0 goto .L401
	r0 += 1
	r2 = *(u8 *) (r2+7)
	if r2 != 0 goto .L402
.L401:
	r0 -= r1
	exit
.L403:
	r0 = r1
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L424
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L421
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L422
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L421
	if r0 != r4 goto .L421
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L421
	if r3 == 1 goto .L422
	if r3 == 2 goto .L466
	if r3 == 3 goto .L467
	if r3 == 4 goto .L468
	if r3 == 5 goto .L469
	if r3 == 6 goto .L470
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L421
	if r3 != r4 goto .L421
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L421
.L470:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L421
	if r9 != r4 goto .L421
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L421
.L469:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L421
	if r0 != r4 goto .L421
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L421
.L468:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L421
	if r3 != r4 goto .L421
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L421
.L467:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L421
	if r9 != r4 goto .L421
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L421
.L466:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L421
	if r0 != r4 goto .L421
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L421
.L422:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L421
	if r1 == r5 goto .L421
	if r3 != r4 goto .L421
	r3 = r1
	r3 += 1
	r2 += 1
	r0 = r2
	r4 = *(u8 *) (r1+1)
	if r4 == 0 goto .L421
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L421
	if r9 != r4 goto .L421
	r2 += 1
	r4 = *(u8 *) (r1+2)
	if r4 == 0 goto .L421
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L421
	if r9 != r4 goto .L421
	r2 = r0
	r2 += 2
	r4 = *(u8 *) (r1+3)
	if r4 == 0 goto .L421
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L421
	if r1 != r4 goto .L421
	r2 += 1
	r4 = *(u8 *) (r3+3)
	if r4 == 0 goto .L421
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L421
	if r9 != r4 goto .L421
	r2 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L421
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L421
	if r1 != r4 goto .L421
	r2 += 1
	r4 = *(u8 *) (r3+5)
	if r4 == 0 goto .L421
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L421
	if r9 != r4 goto .L421
	r2 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L421
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L421
	if r1 != r4 goto .L421
	r1 = r3
	r1 += 7
	r0 += 7
	r2 = r0
	r4 = *(u8 *) (r3+7)
	if r4 != 0 goto .L422
.L421:
	r2 = *(u8 *) (r2+0)
	r0 = r4
	r0 -= r2
	exit
.L424:
	r0 = r3
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L511
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
	if r3 == 0 goto .L513
	if r3 == 1 goto .L536
	if r3 == 2 goto .L537
	if r3 == 3 goto .L538
	if r3 == 4 goto .L539
	if r3 == 5 goto .L540
	if r3 != 6 goto .L550
.L541:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
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
	if r0 == r5 goto .L551
.L513:
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
	if r0 != r5 goto .L513
.L511:
	exit
.L550:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	goto .L541
.L551:
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
	if r2 <= 24 goto .L553
	r1 = 0
.L553:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L555
	r0 = 0
.L555:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L558
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L558:
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
	if r1 <= 30 goto .L561
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L561:
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
	if r1 <= 8 goto .L563
	r0 = 0
.L563:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L565
	r0 = 0
.L565:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L567
	r0 = 0
.L567:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L569
	r0 = 0
.L569:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L573
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 3 goto .L574
	r0 &= 1
	exit
.L574:
	r0 = 0
	r0 &= 1
	exit
.L573:
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
	if r1 <= 24 goto .L576
	r0 = 0
.L576:
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
	if r1 <= 30 goto .L582
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 > 31 goto .L583
.L582:
	r0 = 1
	exit
.L583:
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L582
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L579
	r9 = 0
.L579:
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
	if r1 <= 8 goto .L585
	r0 = 0
.L585:
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
	if r1 <= 254 goto .L594
	if r1 <= 8230 goto .L592
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L592
	r2 += -49110
	if r2 <= 8183 goto .L592
	r1 += -65532
	if r1 > 1048579 goto .L593
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L592:
	r0 = 1
	exit
.L594:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s<= 32 goto .L595
	r0 = r1
	r0 &= 1
	exit
.L595:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
.L593:
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
	if r2 <= 8 goto .L599
	r1 |= 32
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L600
	r0 &= 1
	exit
.L599:
	r0 = 1
	exit
.L600:
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
	if r0 != 0 goto .L605
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L606
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L609
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L609:
	r0 = 0x0000000000000000 ll
	exit
.L605:
	r0 = r6
	exit
.L606:
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
	if r0 != 0 goto .L613
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L614
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L617
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L617:
	r0 = 0x00000000 ll
	exit
.L613:
	r0 = r6
	exit
.L614:
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
	if r0 != 0 goto .L626
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L625
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L620
	if r0 != 0 goto .L626
.L625:
	r0 = r7
	exit
.L620:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L626
	r6 = r7
.L626:
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
	if r0 != 0 goto .L637
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L636
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L631
	if r2 != 0 goto .L637
.L636:
	r0 = r7
	exit
.L631:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L637
	r6 = r7
.L637:
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
	if r0 != 0 goto .L648
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L647
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L642
	if r0 != 0 goto .L648
.L647:
	r0 = r7
	exit
.L642:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L648
	r6 = r7
.L648:
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
	if r0 != 0 goto .L657
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L659
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L653
	if r0 != 0 goto .L659
.L657:
	r0 = r7
	exit
.L653:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L659
	r6 = r7
.L659:
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
	if r0 != 0 goto .L668
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L670
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L664
	if r2 != 0 goto .L670
.L668:
	r0 = r7
	exit
.L664:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L670
	r6 = r7
.L670:
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
	if r0 != 0 goto .L679
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L681
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L675
	if r0 != 0 goto .L681
.L679:
	r0 = r7
	exit
.L675:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L681
	r6 = r7
.L681:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L685
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
	if r1 == 0 goto .L685
	r3 = r1
	r3 &= 63
	r4 = r2
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L685
	r3 = r1
	r3 &= 63
	r4 = r2
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 = r9
	r0 += 2
	r1 >>= 6
	if r1 == 0 goto .L685
	r9 = r1
	r9 &= 63
	r3 = r2
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L685
	r5 = r1
	r5 &= 63
	r9 = r2
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L685
	r2 += r1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L685:
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
	if r2 == 0 goto .L711
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L705
	*(u64 *) (r2+8) = r1
.L705:
	exit
.L711:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L713
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L713:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L712
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L712:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L723
	exit
.L723:
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
.L725:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == 32 goto .L728
	r0 = r5
	r3 = r2
	r3 += -9
	r3 = r3;r3 &= 0xffffffff
	if r4 > r3 goto .L727
	r0 = r9
.L727:
	r0 &= 1
	if r0 == 0 goto .L746
.L728:
	r1 += 1
	goto .L725
.L746:
	if r2 == 43 goto .L735
	if r2 == 45 goto .L747
	r4 = r0
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r9 = r2;r9 &= 0xffffffff
	r5 = 9
	r3 = r5
	if r5 > r9 goto .L731
.L732:
	if r4 != 0 goto .L733
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L733:
	exit
.L747:
	r4 = 1
.L729:
	r1 += 1
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r9 = r2;r9 &= 0xffffffff
	r5 = 9
	r3 = r5
	if r5 <= r9 goto .L732
.L731:
	r9 = r0
	r9 <<= 2
	r0 += r9
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
	if r3 <= r5 goto .L732
	r9 = r0
	r9 <<= 2
	r0 += r9
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
	if r3 <= r5 goto .L732
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r1+3)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r3 <= r5 goto .L732
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r1 += 4
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
	if r3 > r5 goto .L731
	goto .L732
.L735:
	r4 = r0
	goto .L729
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 1
	r3 = 4
	r5 = 0
.L749:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L752
	r9 = r4
	r2 = r0
	r2 += -9
	r2 = r2;r2 &= 0xffffffff
	if r3 > r2 goto .L751
	r9 = r5
.L751:
	r2 = r9
	r2 &= 1
	if r2 == 0 goto .L772
.L752:
	r1 += 1
	goto .L749
.L772:
	if r0 == 43 goto .L753
	if r0 == 45 goto .L773
.L754:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	r5 = 9
	r4 = 0
	r3 = r5
	if r5 <= r9 goto .L756
.L755:
	r9 = r4
	r9 <<= 2
	r9 += r4
	r9 += r9
	r0 <<= 56
	r0 s>>= 56
	r4 = r9
	r4 -= r0
	r0 = *(u8 *) (r1+1)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L756
	r9 = r4
	r9 <<= 2
	r9 += r4
	r9 += r9
	r0 <<= 56
	r0 s>>= 56
	r4 = r9
	r4 -= r0
	r0 = *(u8 *) (r1+2)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L756
	r9 = r4
	r9 <<= 2
	r9 += r4
	r9 += r9
	r0 <<= 56
	r0 s>>= 56
	r4 = r9
	r4 -= r0
	r0 = *(u8 *) (r1+3)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L756
	r9 = r4
	r9 <<= 2
	r9 += r4
	r9 += r9
	r1 += 4
	r0 <<= 56
	r0 s>>= 56
	r4 = r9
	r4 -= r0
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L755
.L756:
	if r2 != 0 goto .L748
	r4 = -r4
.L748:
	r0 = r4
	exit
.L773:
	r2 = 1
.L753:
	r1 += 1
	goto .L754
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
	if r1 s< 0 goto .L778
	exit
.L778:
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
	if r1 s< 0 goto .L782
	exit
.L782:
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
	if r1 s< 0 goto .L786
	exit
.L786:
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
	goto .L797
.L800:
	if r2 == r0 goto .L799
	r1 += 4
.L797:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r0 = r3
	r0 s>>= 32
	if r3 != 0 goto .L800
.L794:
	r0 = 0
	exit
.L799:
	r0 = r1
	if r2 == 0 goto .L794
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L812
.L813:
	if r3 == 0 goto .L803
	if r4 == 0 goto .L803
	r1 += 4
	r2 += 4
.L812:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 == r4 goto .L813
.L803:
	if r4 s>= r3 goto .L807
	r0 = 1
	if r3 s<= r4 goto .L814
	r0 &= 1
	exit
.L807:
	r0 = -1
	exit
.L814:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L816:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r3 == 0 goto .L832
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 = r0
	r4 += 8
	r5 = r2
	r5 += 8
	if r9 == 0 goto .L832
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L832
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L832
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L832
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L832
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L832
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L816
.L832:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L836
	r0 = r1
.L835:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L834
	r0 += 4
	r4 = *(u32 *) (r0+0)
	if r4 == 0 goto .L834
	r0 = r2
	r0 += 8
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L834
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L834
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L834
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L834
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L834
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L835
.L834:
	r0 -= r1
	r0 s>>= 2
	exit
.L836:
	r0 = r1
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L858
	r4 = r3
	r4 += -1
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L853
	if r0 == 1 goto .L879
	if r0 == 2 goto .L880
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r6 = r9
	r6 s>>= 32
	if r9 != r5 goto .L854
	if r6 == 0 goto .L854
	r3 = r4
	r1 += 4
	r2 += 4
.L880:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L854
	if r5 == 0 goto .L854
	r3 += -1
	r1 += 4
	r2 += 4
.L879:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L854
	if r0 == 0 goto .L854
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L858
.L853:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 = r4
	r5 s>>= 32
	if r4 != r9 goto .L854
	if r5 == 0 goto .L854
	r3 += -1
	r4 = r3
	r1 += 4
	r9 = r1
	r2 += 4
	r5 = r2
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r7 = r0
	r7 s>>= 32
	if r0 != r6 goto .L854
	if r7 == 0 goto .L854
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r7 = r0
	r7 s>>= 32
	if r0 != r6 goto .L854
	if r7 == 0 goto .L854
	r3 = r4
	r3 += -2
	r1 = r9
	r1 += 8
	r2 = r5
	r2 += 8
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L854
	if r7 == 0 goto .L854
	r3 += -1
	r1 += 4
	r2 += 4
	if r4 != 3 goto .L853
.L858:
	r0 = 0
	exit
.L854:
	if r3 == 0 goto .L858
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L859
	r0 = 1
	if r3 s<= r1 goto .L889
	r0 &= 1
	exit
.L859:
	r0 = -1
	exit
.L889:
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
	if r3 == 0 goto .L896
	r4 = r3
	r4 += -1
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L891
	if r0 == 1 goto .L933
	if r0 == 2 goto .L934
	if r0 == 3 goto .L935
	if r0 == 4 goto .L936
	if r0 == 5 goto .L937
	if r0 != 6 goto .L951
.L938:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L949
	r3 += -1
	r1 += 4
.L937:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L949
	r3 += -1
	r1 += 4
.L936:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L949
	r3 += -1
	r1 += 4
.L935:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L949
	r3 += -1
	r1 += 4
.L934:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L949
	r3 += -1
	r1 += 4
.L933:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L949
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L896
.L891:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L949
	r3 += -1
	r9 = r3
	r1 += 4
	r5 = r1
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L949
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L949
	r3 = r9
	r3 += -2
	r1 = r5
	r1 += 8
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L949
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L949
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L949
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L949
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L949
	r3 += -1
	r1 += 4
	if r9 != 7 goto .L891
.L896:
	r0 = 0
	exit
.L949:
	r0 = r1
	if r3 == 0 goto .L896
	exit
.L951:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L949
	r3 = r4
	r1 += 4
	goto .L938
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L958
	r4 = r3
	r4 += -1
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L953
	if r0 == 1 goto .L999
	if r0 == 2 goto .L1000
	if r0 == 3 goto .L1001
	if r0 == 4 goto .L1002
	if r0 == 5 goto .L1003
	if r0 != 6 goto .L1017
.L1004:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r0 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
.L1003:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r9 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
.L1002:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r0 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
.L1001:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r9 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
.L1000:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r0 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
.L999:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r9 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L958
.L953:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r0 goto .L1016
	r3 += -1
	r0 = r3
	r1 += 4
	r5 = r1
	r2 += 4
	r4 = r2
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r9 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1016
	r3 = r0
	r3 += -2
	r1 = r5
	r1 += 8
	r2 = r4
	r2 += 8
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1016
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 != 7 goto .L953
.L958:
	r0 = 0
	exit
.L1016:
	if r3 == 0 goto .L958
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L959
	r0 = 1
	if r3 s<= r1 goto .L1018
	r0 &= 1
	exit
.L959:
	r0 = -1
	exit
.L1018:
	r0 = 0
	r0 &= 1
	exit
.L1017:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r9 goto .L1016
	r3 = r4
	r1 += 4
	r2 += 4
	goto .L1004
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1020
	r5 = r1
	r4 = r2
	r0 = r3
	r0 += -1
	r6 = r3
	r6 <<= 2
	r9 = r1
	r9 -= r2
	if r6 < r9 goto .L1101
	if r3 == 0 goto .L1020
	r0 <<= 2
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r0 >>= 2
	r0 += 1
	r0 &= 7
	if r0 == 0 goto .L1023
	if r0 == 1 goto .L1078
	if r0 == 2 goto .L1079
	if r0 == 3 goto .L1080
	if r0 == 4 goto .L1081
	if r0 == 5 goto .L1082
	if r0 != 6 goto .L1102
.L1083:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1082:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1081:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
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
	r5 = r3
	r3 += -4
	r4 += -4
	if r2 == r5 goto .L1020
.L1023:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r0 = *(u32 *) (r3+-4)
	*(u32 *) (r4+-4) = r0
	r5 = *(u32 *) (r3+-8)
	*(u32 *) (r4+-8) = r5
	r9 = *(u32 *) (r3+-12)
	*(u32 *) (r4+-12) = r9
	r0 = *(u32 *) (r3+-16)
	*(u32 *) (r4+-16) = r0
	r5 = *(u32 *) (r3+-20)
	*(u32 *) (r4+-20) = r5
	r9 = *(u32 *) (r3+-24)
	*(u32 *) (r4+-24) = r9
	r0 = r3
	r0 += -28
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+-28) = r5
	r3 += -32
	r4 += -32
	if r2 != r0 goto .L1023
.L1020:
	r0 = r1
	exit
.L1101:
	if r3 == 0 goto .L1020
	r3 &= 7
	if r3 == 0 goto .L1022
	if r3 == 1 goto .L1072
	if r3 == 2 goto .L1073
	if r3 == 3 goto .L1074
	if r3 == 4 goto .L1075
	if r3 == 5 goto .L1076
	if r3 != 6 goto .L1103
.L1077:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1076:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1075:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
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
	if r0 == -1 goto .L1020
.L1022:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r9 = *(u32 *) (r4+4)
	*(u32 *) (r5+4) = r9
	r3 = *(u32 *) (r4+8)
	*(u32 *) (r5+8) = r3
	r2 = *(u32 *) (r4+12)
	*(u32 *) (r5+12) = r2
	r9 = *(u32 *) (r4+16)
	*(u32 *) (r5+16) = r9
	r3 = *(u32 *) (r4+20)
	*(u32 *) (r5+20) = r3
	r2 = *(u32 *) (r4+24)
	*(u32 *) (r5+24) = r2
	r9 = *(u32 *) (r4+28)
	*(u32 *) (r5+28) = r9
	r0 += -8
	r5 += 32
	r4 += 32
	if r0 != -1 goto .L1022
	goto .L1020
.L1103:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r0 += -1
	r5 += 4
	r2 += 4
	r4 = r2
	goto .L1077
.L1102:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
	goto .L1083
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r0 = r1
	r2 <<= 32
	r2 s>>= 32
	r5 = r3
	r5 += -1
	if r3 == 0 goto .L1105
	r4 = r1
	r1 = r3
	r1 &= 7
	if r1 == 0 goto .L1106
	if r1 == 1 goto .L1131
	if r1 == 2 goto .L1132
	if r1 == 3 goto .L1133
	if r1 == 4 goto .L1134
	if r1 == 5 goto .L1135
	if r1 != 6 goto .L1146
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
.L1133:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1132:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1131:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
	if r5 == -1 goto .L1147
.L1106:
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
	if r5 != -1 goto .L1106
.L1105:
	exit
.L1146:
	*(u32 *) (r0+0) = r2
	r3 += -2
	r5 = r3
	r4 += 4
	goto .L1136
.L1147:
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1149
	r5 = r1
	r5 += r3
	r2 += r3
	if r3 == 0 goto .L1148
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1151
	if r9 == 1 goto .L1201
	if r9 == 2 goto .L1202
	if r9 == 3 goto .L1203
	if r9 == 4 goto .L1204
	if r9 == 5 goto .L1205
	if r9 == 6 goto .L1206
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1206:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1205:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
.L1204:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
.L1203:
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
	if r1 == r5 goto .L1231
.L1151:
	r9 = *(u8 *) (r5+-1)
	*(u8 *) (r2+-1) = r9
	r4 = *(u8 *) (r5+-2)
	*(u8 *) (r2+-2) = r4
	r3 = *(u8 *) (r5+-3)
	*(u8 *) (r2+-3) = r3
	r0 = *(u8 *) (r5+-4)
	*(u8 *) (r2+-4) = r0
	r9 = *(u8 *) (r5+-5)
	*(u8 *) (r2+-5) = r9
	r4 = *(u8 *) (r5+-6)
	*(u8 *) (r2+-6) = r4
	r3 = *(u8 *) (r5+-7)
	*(u8 *) (r2+-7) = r3
	r5 += -8
	r2 += -8
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
	if r1 != r5 goto .L1151
	exit
.L1149:
	if r1 != r2 goto .L1232
.L1148:
	exit
.L1232:
	if r3 == 0 goto .L1148
	r9 = r1
	r4 = r2
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L1152
	if r3 == 1 goto .L1207
	if r3 == 2 goto .L1208
	if r3 == 3 goto .L1209
	if r3 == 4 goto .L1210
	if r3 == 5 goto .L1211
	if r3 != 6 goto .L1233
.L1212:
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r1
	r9 += 1
	r4 += 1
.L1211:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
.L1210:
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r3
	r9 += 1
	r4 += 1
.L1209:
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r0
	r9 += 1
	r4 += 1
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
	if r9 == r5 goto .L1234
.L1152:
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
	if r9 != r5 goto .L1152
	goto .L1148
.L1231:
	exit
.L1233:
	r0 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r0
	r9 += 1
	r2 += 1
	r4 = r2
	goto .L1212
.L1234:
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
.L1251:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1274
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1274
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1274
	r5 = r1
	r5 >>= r0
	r5 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1274
	r9 = r1
	r9 >>= r0
	r9 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1274
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1274
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1274
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1274
	if r0 != 32 goto .L1251
	r0 = r4
	exit
.L1274:
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
	if r1 == 0 goto .L1277
	r0 &= 1
	if r0 != 0 goto .L1277
	r0 = 1
.L1278:
	r9 s>>= 1
	r1 = r9
	r1 <<= 32
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 &= 1
	if r9 != 0 goto .L1296
	r1 s>>= 33
	r2 = r1
	r2 <<= 32
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 &= 1
	if r1 != 0 goto .L1277
	r3 = r2
	r3 s>>= 33
	r4 = r3
	r4 <<= 32
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 &= 1
	if r3 != 0 goto .L1277
	r5 = r4
	r5 s>>= 33
	r9 = r5
	r9 <<= 32
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 &= 1
	if r5 != 0 goto .L1277
	r1 = r9
	r1 s>>= 33
	r2 = r1
	r2 <<= 32
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 &= 1
	if r1 != 0 goto .L1277
	r3 = r2
	r3 s>>= 33
	r4 = r3
	r4 <<= 32
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 &= 1
	if r3 != 0 goto .L1277
	r5 = r4
	r5 s>>= 33
	r9 = r5
	r9 <<= 32
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 &= 1
	if r5 != 0 goto .L1277
	r9 s>>= 33
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r9
	r1 &= 1
	if r1 == 0 goto .L1278
	exit
.L1277:
	exit
.L1296:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	r8 = 0
	if r8 s>= r0 goto .L1300
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1301
	r0 = r7
	r0 &= 1
	exit
.L1300:
	r0 = 1
	exit
.L1301:
	r7 = r8
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
	r8 = 0
	if r8 s>= r0 goto .L1305
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1306
	r0 = r7
	r0 &= 1
	exit
.L1305:
	r0 = 1
	exit
.L1306:
	r7 = r8
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
	r8 = 0
	if r8 s>= r0 goto .L1310
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1311
	r0 = r7
	r0 &= 1
	exit
.L1310:
	r0 = 1
	exit
.L1311:
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
	r8 = r1
	r2 <<= 32
	r2 s>>= 32
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L1314
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1314
	if r6 s< 0 goto .L1327
	r7 = 0x40000000 ll
	goto .L1318
.L1328:
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1318:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1317
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
.L1317:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1328
.L1314:
	r0 = r8
	exit
.L1327:
	r7 = 0x3f000000 ll
	goto .L1318
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
	if r0 != 0 goto .L1330
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1330
	if r6 s< 0 goto .L1343
	r7 = 0x4000000000000000 ll
	goto .L1334
.L1344:
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1334:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1333
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
.L1333:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1344
.L1330:
	r0 = r8
	exit
.L1343:
	r7 = 0x3fe0000000000000 ll
	goto .L1334
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
	if r0 != 0 goto .L1346
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1346
	if r6 s< 0 goto .L1359
	r7 = 0x4000000000000000 ll
	goto .L1350
.L1360:
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1350:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1349
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
.L1349:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 != 0 goto .L1360
.L1346:
	r0 = r8
	exit
.L1359:
	r7 = 0x3fe0000000000000 ll
	goto .L1350
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1362
	r0 = r1
	r4 = r2
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1363
	if r3 == 1 goto .L1388
	if r3 == 2 goto .L1389
	if r3 == 3 goto .L1390
	if r3 == 4 goto .L1391
	if r3 == 5 goto .L1392
	if r3 != 6 goto .L1403
.L1393:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
.L1392:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r2+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
.L1391:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
.L1390:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r2+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
.L1389:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
.L1388:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r2+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
	if r2 == r4 goto .L1362
.L1363:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r3 = *(u8 *) (r0+1)
	r9 = *(u8 *) (r2+1)
	r3 ^= r9
	*(u8 *) (r0+1) = r3
	r3 = *(u8 *) (r0+2)
	r9 = *(u8 *) (r2+2)
	r3 ^= r9
	*(u8 *) (r0+2) = r3
	r3 = *(u8 *) (r0+3)
	r9 = *(u8 *) (r2+3)
	r3 ^= r9
	*(u8 *) (r0+3) = r3
	r3 = *(u8 *) (r0+4)
	r9 = *(u8 *) (r2+4)
	r3 ^= r9
	*(u8 *) (r0+4) = r3
	r3 = *(u8 *) (r0+5)
	r9 = *(u8 *) (r2+5)
	r3 ^= r9
	*(u8 *) (r0+5) = r3
	r3 = *(u8 *) (r0+6)
	r9 = *(u8 *) (r2+6)
	r3 ^= r9
	*(u8 *) (r0+6) = r3
	r3 = *(u8 *) (r0+7)
	r9 = *(u8 *) (r2+7)
	r3 ^= r9
	*(u8 *) (r0+7) = r3
	r2 += 8
	r0 += 8
	if r2 != r4 goto .L1363
.L1362:
	r0 = r1
	exit
.L1403:
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 ^= r3
	*(u8 *) (r1+0) = r0
	r2 += 1
	r0 = r1
	r0 += 1
	goto .L1393
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1411
	r0 = r1
.L1406:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1405
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1405
	r0 = r4
	r0 += 2
	r5 = *(u8 *) (r4+2)
	if r5 == 0 goto .L1405
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1405
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1405
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1405
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1405
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1406
.L1405:
	if r3 == 0 goto .L1413
	r9 = r3
	r9 += -1
	r5 = r3
	r5 &= 7
	if r5 == 0 goto .L1407
	if r5 == 1 goto .L1460
	if r5 == 2 goto .L1461
	if r5 == 3 goto .L1462
	if r5 == 4 goto .L1463
	if r5 == 5 goto .L1464
	if r5 != 6 goto .L1484
.L1465:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1482
	r2 += 1
	r0 += 1
	r3 += -1
.L1464:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1482
	r2 += 1
	r0 += 1
	r3 += -1
.L1463:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1482
	r2 += 1
	r0 += 1
	r3 += -1
.L1462:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1482
	r2 += 1
	r0 += 1
	r3 += -1
.L1461:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1482
	r2 += 1
	r0 += 1
	r3 += -1
.L1460:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1482
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1413
.L1407:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1482
	r0 += 1
	r9 = r0
	r3 += -1
	r5 = r3
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1482
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+2)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1482
	r0 = r9
	r0 += 2
	r3 = r5
	r3 += -2
	r9 = *(u8 *) (r2+3)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1482
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1482
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+5)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1482
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1482
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1482
	r2 += 8
	r0 += 1
	r3 += -1
	if r5 != 7 goto .L1407
.L1413:
	*(u8 *) (r0+0) = r3
	r0 = r1
	exit
.L1482:
	if r3 == 0 goto .L1413
	r0 = r1
	exit
.L1484:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1482
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1465
.L1411:
	r0 = r1
	goto .L1405
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1485
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1486
	if r0 == 1 goto .L1527
	if r0 == 2 goto .L1528
	if r0 == 3 goto .L1529
	if r0 == 4 goto .L1530
	if r0 == 5 goto .L1531
	if r0 != 6 goto .L1541
.L1532:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1485
	r3 += 1
.L1531:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1542
.L1485:
	r0 = r3
	exit
.L1541:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1485
	r3 = 1
	goto .L1532
.L1542:
	r3 += 1
.L1530:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1485
	r3 += 1
.L1529:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1485
	r3 += 1
.L1528:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1485
	r3 += 1
.L1527:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1485
	r3 += 1
	if r2 == r3 goto .L1485
.L1486:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1485
	r3 += 1
	r0 = r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1485
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1485
	r3 = r0
	r3 += 2
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1485
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1485
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1485
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1485
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1485
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1486
	goto .L1485
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1548
.L1552:
	r3 = r2
	goto .L1547
.L1546:
	r3 += 1
	if r4 == r5 goto .L1545
.L1547:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1546
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1552
.L1548:
	r1 = r5
.L1545:
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
.L1555:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1554
	r3 = r1
.L1554:
	r1 += 1
	if r0 != 0 goto .L1555
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
	if r1 == 0 goto .L1569
	r1 = r2
.L1560:
	r1 += 1
	r3 = r1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1559
	r1 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L1559
	r1 = r3
	r1 += 2
	r4 = *(u8 *) (r3+2)
	if r4 == 0 goto .L1559
	r1 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1559
	r1 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1559
	r1 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1559
	r1 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1559
	r1 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1560
.L1559:
	r9 = r1
	r9 -= r2
	if r1 == r2 goto .L1561
	r9 += -1
	r8 = r9
	goto .L1567
.L1705:
	r0 += 1
	if r1 == 0 goto .L1704
.L1567:
	r1 = *(u8 *) (r0+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 != r5 goto .L1705
	if r0 == 0 goto .L1561
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L1570
	r6 = r0
	r6 += r8
	*(u64 *) (r10+-8) = r6
	r3 = r2
	r4 = r0
	r6 = r8
	r6 &= 7
	if r6 == 0 goto .L1564
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L1563
	if r4 != r1 goto .L1563
	r4 = r0
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r0+1)
	if r1 == 0 goto .L1563
	if r6 == 1 goto .L1564
	if r6 == 2 goto .L1622
	if r6 == 3 goto .L1623
	if r6 == 4 goto .L1624
	if r6 == 5 goto .L1625
	if r6 == 6 goto .L1626
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1563
	if r6 != r1 goto .L1563
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1563
.L1626:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1563
	if r6 != r1 goto .L1563
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1563
.L1625:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1563
	if r6 != r1 goto .L1563
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1563
.L1624:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1563
	if r6 != r1 goto .L1563
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1563
.L1623:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1563
	if r6 != r1 goto .L1563
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1563
.L1622:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1563
	if r6 != r1 goto .L1563
	r4 += 1
	r3 += 1
	r1 = *(u8 *) (r4+0)
	if r1 == 0 goto .L1563
.L1564:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1563
	r7 = *(u64 *) (r10+-8)
	if r4 == r7 goto .L1563
	if r6 != r1 goto .L1563
	r7 = r4
	r7 += 1
	r3 += 1
	r6 = r3
	r1 = *(u8 *) (r4+1)
	if r1 == 0 goto .L1563
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1563
	if r9 != r1 goto .L1563
	r3 += 1
	r1 = *(u8 *) (r4+2)
	if r1 == 0 goto .L1563
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1563
	if r9 != r1 goto .L1563
	r3 = r6
	r3 += 2
	r1 = *(u8 *) (r4+3)
	if r1 == 0 goto .L1563
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1563
	if r4 != r1 goto .L1563
	r3 += 1
	r1 = *(u8 *) (r7+3)
	if r1 == 0 goto .L1563
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1563
	if r9 != r1 goto .L1563
	r3 += 1
	r1 = *(u8 *) (r7+4)
	if r1 == 0 goto .L1563
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1563
	if r4 != r1 goto .L1563
	r3 += 1
	r1 = *(u8 *) (r7+5)
	if r1 == 0 goto .L1563
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1563
	if r9 != r1 goto .L1563
	r3 += 1
	r1 = *(u8 *) (r7+6)
	if r1 == 0 goto .L1563
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1563
	if r4 != r1 goto .L1563
	r4 = r7
	r4 += 7
	r3 += 1
	r1 = *(u8 *) (r7+7)
	if r1 != 0 goto .L1564
.L1563:
	r3 = *(u8 *) (r3+0)
	if r3 == r1 goto .L1561
	r0 += 1
	goto .L1567
.L1704:
	r0 = r1
	exit
.L1561:
	exit
.L1570:
	r3 = r2
	goto .L1563
.L1569:
	r1 = r2
	goto .L1559
	.size	strstr, .-strstr
	.align	3
	.global	copysign
	.type	copysign, @function
copysign:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1715
.L1707:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1710
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1709
.L1710:
	r0 = r6
	exit
.L1715:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1707
.L1709:
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
	if r4 == 0 goto .L1724
	if r4 >= r2 goto .L1726
	r2 -= r4
	r5 = r1
	r5 += r2
	if r1 > r5 goto .L1726
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
.L1723:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r1
	r1 += 1
	if r0 == r9 goto .L1799
	if r5 > r1 goto .L1723
.L1726:
	r4 = 0
.L1716:
	r0 = r4
	exit
.L1799:
	r3 = r7
	r3 += -1
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	if r7 == 1 goto .L1716
	r2 = r1
	r6 = r3
	r6 &= 7
	if r6 == 0 goto .L1791
	if r6 == 1 goto .L1769
	if r6 == 2 goto .L1770
	if r6 == 3 goto .L1771
	if r6 == 4 goto .L1772
	if r6 == 5 goto .L1773
	if r6 != 6 goto .L1800
.L1774:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1786
	r3 += -1
	r2 += 1
	r0 += 1
.L1773:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1786
	r3 += -1
	r2 += 1
	r0 += 1
.L1772:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1786
	r3 += -1
	r2 += 1
	r0 += 1
.L1771:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1786
	r3 += -1
	r2 += 1
	r0 += 1
.L1770:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1786
	r3 += -1
	r2 += 1
	r0 += 1
.L1769:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1786
	r3 += -1
	r2 += 1
	r0 += 1
	if r3 == 0 goto .L1716
.L1791:
	*(u64 *) (r10+-16) = r5
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r7
	r5 = *(u8 *) (r2+0)
	r1 = *(u8 *) (r0+0)
	if r5 != r1 goto .L1797
.L1721:
	r3 += -1
	r6 = r3
	r2 += 1
	r5 = r2
	r0 += 1
	r1 = r0
	r8 = *(u8 *) (r2+0)
	r7 = *(u8 *) (r0+0)
	if r8 != r7 goto .L1797
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r2+0)
	r7 = *(u8 *) (r0+0)
	if r8 != r7 goto .L1797
	r3 = r6
	r3 += -2
	r2 = r5
	r2 += 2
	r0 = r1
	r0 += 2
	r8 = *(u8 *) (r5+2)
	r7 = *(u8 *) (r1+2)
	if r8 != r7 goto .L1797
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+3)
	r7 = *(u8 *) (r1+3)
	if r8 != r7 goto .L1797
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+4)
	r7 = *(u8 *) (r1+4)
	if r8 != r7 goto .L1797
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+5)
	r7 = *(u8 *) (r1+5)
	if r8 != r7 goto .L1797
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+6)
	r7 = *(u8 *) (r1+6)
	if r8 != r7 goto .L1797
	r3 += -1
	r2 += 1
	r0 += 1
	if r6 == 7 goto .L1716
	r5 = *(u8 *) (r2+0)
	r1 = *(u8 *) (r0+0)
	if r5 == r1 goto .L1721
.L1797:
	r5 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-24)
	r7 = *(u64 *) (r10+-32)
.L1786:
	if r3 == 0 goto .L1716
	r3 = *(u8 *) (r2+0)
	r2 = *(u8 *) (r0+0)
	if r3 == r2 goto .L1716
	if r5 > r1 goto .L1723
	goto .L1726
.L1800:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1786
	r3 += -1
	r2 += 1
	r0 += 1
	goto .L1774
.L1724:
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
	r2 = r0
	r0 = 0
	if r0 s>= r2 goto .L1840
	*(u64 *) (r10+-8) = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1837
.L1841:
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1806:
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
	if r0 s< 0 goto .L1807
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
	if r0 s< 0 goto .L1807
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
	if r0 s< 0 goto .L1807
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
	if r0 s>= 0 goto .L1806
.L1807:
	r3 = *(u64 *) (r10+-16)
	*(u32 *) (r3+0) = r8
	r4 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L1811
	r5 = -9223372036854775808 ll
	r5 ^= r7
	r7 = r5
.L1811:
	r0 = r7
	exit
.L1840:
	r1 = -9223372036854775808 ll
	r1 ^= r7
	r7 = r1
	*(u64 *) (r10+-8) = 1
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s>= 0 goto .L1841
.L1837:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	r8 = 0
	if r8 s< r0 goto .L1807
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	if r0 == r8 goto .L1807
	r6 = r8
.L1810:
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
	if r6 s< r0 goto .L1807
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
	if r6 s< r0 goto .L1807
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
	if r6 s< r0 goto .L1807
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
	if r6 s>= r0 goto .L1810
	goto .L1807
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L1845
	r0 = 0
.L1844:
	r1 = r3
	r1 &= 1
	r1 = -r1
	r1 &= r2
	r0 += r1
	r2 += r2
	r4 = r3
	r4 >>= 1
	if r4 == 0 goto .L1861
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r5 = r3
	r5 >>= 2
	if r5 == 0 goto .L1842
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r9 = r3
	r9 >>= 3
	if r9 == 0 goto .L1842
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 = r3
	r1 >>= 4
	if r1 == 0 goto .L1842
	r1 &= 1
	r1 = -r1
	r1 &= r2
	r0 += r1
	r2 += r2
	r4 = r3
	r4 >>= 5
	if r4 == 0 goto .L1842
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r5 = r3
	r5 >>= 6
	if r5 == 0 goto .L1842
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r9 = r3
	r9 >>= 7
	if r9 == 0 goto .L1842
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r3 >>= 8
	if r3 != 0 goto .L1844
	exit
.L1845:
	r0 = r1
.L1842:
	exit
.L1861:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1871
	r9 = 32
	r4 = 1
.L1863:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1864
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1864
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1864
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1864
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1864
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1864
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1864
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1864
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1864
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1864
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1864
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1864
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1864
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1864
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1864
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1864
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1863
.L1888:
	r1 = 0
.L1866:
	if r3 != 0 goto .L1869
	r0 = r1
.L1869:
	exit
.L1864:
	if r4 == 0 goto .L1888
.L1871:
	r1 = 0
.L1865:
	if r2 >= r0 goto .L1868
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
.L1868:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L1865
	goto .L1866
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
	if r2 == r1 goto .L1891
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
.L1891:
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
	if r0 == r2 goto .L1894
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1894:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1898
	r0 = 0
.L1897:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1914
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1896
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1896
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1896
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1896
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1896
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1896
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1897
	exit
.L1898:
	r0 = r1
.L1896:
	exit
.L1914:
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
	if r1 < r2 goto .L1919
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2035
.L1919:
	if r5 == 0 goto .L1918
	r0 = r2
	r4 = r1
	r5 <<= 3
	r6 = r5
	r6 += r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1922
	if r5 == 1 goto .L1999
	if r5 == 2 goto .L2000
	if r5 == 3 goto .L2001
	if r5 == 4 goto .L2002
	if r5 == 5 goto .L2003
	if r5 == 6 goto .L2004
	r5 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r5
	r0 += 8
	r4 += 8
.L2004:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L2003:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L2002:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L2001:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L2000:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1999:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1918
.L1922:
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
	if r0 != r6 goto .L1922
.L1918:
	if r9 > r3 goto .L1915
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r2 += r9
	r3 += -1
	r3 -= r9
	r9 = r3;r9 &= 0xffffffff
	r2 += r9
	r3 = r2
	r3 -= r0
	r3 &= 7
	if r3 == 0 goto .L1923
	if r3 == 1 goto .L2005
	if r3 == 2 goto .L2006
	if r3 == 3 goto .L2007
	if r3 == 4 goto .L2008
	if r3 == 5 goto .L2009
	if r3 == 6 goto .L2010
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2010:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2009:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L2008:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L2007:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2006:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2005:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L2036
.L1923:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r4 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r4
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r5
	r9 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r9
	r3 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r3
	r4 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r4
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r5
	r9 = *(u8 *) (r0+7)
	*(u8 *) (r1+7) = r9
	r0 += 8
	r1 += 8
	if r0 != r2 goto .L1923
	exit
.L2035:
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1915
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1924
	if r3 == 1 goto .L1993
	if r3 == 2 goto .L1994
	if r3 == 3 goto .L1995
	if r3 == 4 goto .L1996
	if r3 == 5 goto .L1997
	if r3 == 6 goto .L1998
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L1998:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L1997:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L1996:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L1995:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L1994:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L1993:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2037
.L1924:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-1)
	*(u8 *) (r4+-1) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-2)
	*(u8 *) (r4+-2) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-3)
	*(u8 *) (r4+-3) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-4)
	*(u8 *) (r4+-4) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-5)
	*(u8 *) (r4+-5) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-6)
	*(u8 *) (r4+-6) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-7)
	*(u8 *) (r4+-7) = r0
	r9 += -8
	if r9 != -1 goto .L1924
.L1915:
	exit
.L2036:
	exit
.L2037:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 1
	if r1 < r2 goto .L2042
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2124
.L2042:
	if r5 == 0 goto .L2041
	r0 = r2
	r4 = r1
	r5 += r5
	r9 = r5
	r9 += r2
	r5 += -2
	r5 >>= 1
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2045
	if r5 == 1 goto .L2101
	if r5 == 2 goto .L2102
	if r5 == 3 goto .L2103
	if r5 == 4 goto .L2104
	if r5 == 5 goto .L2105
	if r5 == 6 goto .L2106
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r0 = r2
	r0 += 2
	r4 += 2
.L2106:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2105:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2104:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2103:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2102:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2101:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L2041
.L2045:
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
	r5 = *(u16 *) (r0+14)
	*(u16 *) (r4+14) = r5
	r0 += 16
	r4 += 16
	if r0 != r9 goto .L2045
.L2041:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L2038
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2124:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	r0 = r9
	if r3 == 0 goto .L2038
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2046
	if r3 == 1 goto .L2095
	if r3 == 2 goto .L2096
	if r3 == 3 goto .L2097
	if r3 == 4 goto .L2098
	if r3 == 5 goto .L2099
	if r3 == 6 goto .L2100
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r0 = r9
	r0 += -1
.L2100:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L2099:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L2098:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
	r0 += -1
.L2097:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
.L2096:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L2095:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r0 += -1
	if r0 == -1 goto .L2125
.L2046:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r5
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r3+-1)
	*(u8 *) (r4+-1) = r5
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r3+-2)
	*(u8 *) (r4+-2) = r5
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r3+-3)
	*(u8 *) (r4+-3) = r5
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r3+-4)
	*(u8 *) (r4+-4) = r5
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r3+-5)
	*(u8 *) (r4+-5) = r5
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r3+-6)
	*(u8 *) (r4+-6) = r5
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r3+-7)
	*(u8 *) (r4+-7) = r5
	r0 += -8
	if r0 != -1 goto .L2046
.L2038:
	exit
.L2125:
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
	if r1 < r2 goto .L2130
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2246
.L2130:
	if r5 == 0 goto .L2129
	r0 = r2
	r4 = r1
	r5 <<= 2
	r6 = r5
	r6 += r2
	r5 += -4
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2133
	if r5 == 1 goto .L2210
	if r5 == 2 goto .L2211
	if r5 == 3 goto .L2212
	if r5 == 4 goto .L2213
	if r5 == 5 goto .L2214
	if r5 == 6 goto .L2215
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r4 += 4
.L2215:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2214:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2213:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2212:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2211:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2210:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L2129
.L2133:
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
	r5 = *(u32 *) (r0+28)
	*(u32 *) (r4+28) = r5
	r0 += 32
	r4 += 32
	if r0 != r6 goto .L2133
.L2129:
	if r9 > r3 goto .L2126
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r2 += r9
	r3 += -1
	r3 -= r9
	r9 = r3;r9 &= 0xffffffff
	r2 += r9
	r3 = r2
	r3 -= r0
	r3 &= 7
	if r3 == 0 goto .L2134
	if r3 == 1 goto .L2216
	if r3 == 2 goto .L2217
	if r3 == 3 goto .L2218
	if r3 == 4 goto .L2219
	if r3 == 5 goto .L2220
	if r3 == 6 goto .L2221
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2221:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2220:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L2219:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L2218:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2217:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2216:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L2247
.L2134:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r4 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r4
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r5
	r9 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r9
	r3 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r3
	r4 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r4
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r5
	r9 = *(u8 *) (r0+7)
	*(u8 *) (r1+7) = r9
	r0 += 8
	r1 += 8
	if r0 != r2 goto .L2134
	exit
.L2246:
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2126
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2135
	if r3 == 1 goto .L2204
	if r3 == 2 goto .L2205
	if r3 == 3 goto .L2206
	if r3 == 4 goto .L2207
	if r3 == 5 goto .L2208
	if r3 == 6 goto .L2209
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L2209:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L2208:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L2207:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L2206:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L2205:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L2204:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2248
.L2135:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-1)
	*(u8 *) (r4+-1) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-2)
	*(u8 *) (r4+-2) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-3)
	*(u8 *) (r4+-3) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-4)
	*(u8 *) (r4+-4) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-5)
	*(u8 *) (r4+-5) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-6)
	*(u8 *) (r4+-6) = r0
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+-7)
	*(u8 *) (r4+-7) = r0
	r9 += -8
	if r9 != -1 goto .L2135
.L2126:
	exit
.L2247:
	exit
.L2248:
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
	r2 <<= 32
	r3 = r1
	r0 = r1
	r0 >>= 15
	if r0 != 0 goto .L2258
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2257
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2259
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2260
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2261
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2262
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2263
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2264
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2265
	r2 >>= 38
	if r2 != 0 goto .L2266
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2267
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2268
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2269
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2270
	r3 >>= 1
	if r3 != 0 goto .L2271
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L2274
.L2257:
	exit
.L2258:
	r0 = 0
	exit
.L2269:
	r0 = 12
	exit
.L2274:
	r0 = 15
	exit
.L2259:
	r0 = 2
	exit
.L2260:
	r0 = 3
	exit
.L2261:
	r0 = 4
	exit
.L2262:
	r0 = 5
	exit
.L2263:
	r0 = 6
	exit
.L2264:
	r0 = 7
	exit
.L2265:
	r0 = 8
	exit
.L2266:
	r0 = 9
	exit
.L2267:
	r0 = 10
	exit
.L2268:
	r0 = 11
	exit
.L2270:
	r0 = 13
	exit
.L2271:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2278
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2279
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2280
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2281
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2282
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2283
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2284
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2285
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2286
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2287
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2288
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2289
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2290
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2291
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2292
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2295
	exit
.L2278:
	r0 = 0
	exit
.L2279:
	r0 = 1
	exit
.L2290:
	r0 = 12
	exit
.L2295:
	r0 = 15
	exit
.L2280:
	r0 = 2
	exit
.L2281:
	r0 = 3
	exit
.L2282:
	r0 = 4
	exit
.L2283:
	r0 = 5
	exit
.L2284:
	r0 = 6
	exit
.L2285:
	r0 = 7
	exit
.L2286:
	r0 = 8
	exit
.L2287:
	r0 = 9
	exit
.L2288:
	r0 = 10
	exit
.L2289:
	r0 = 11
	exit
.L2291:
	r0 = 13
	exit
.L2292:
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
	if r0 s>= 0 goto .L2302
	r1 = r6
	call	__fixsfdi
	exit
.L2302:
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
	r2 >>= 1
	r2 &= 1
	r0 = r1
	r0 &= 1
	r0 += r2
	r3 = r1
	r3 >>= 2
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 >>= 3
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 >>= 4
	r5 &= 1
	r0 += r5
	r9 = r1
	r9 >>= 5
	r9 &= 1
	r0 += r9
	r2 = r1
	r2 >>= 6
	r2 &= 1
	r0 += r2
	r3 = r1
	r3 >>= 7
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 >>= 8
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 >>= 9
	r5 &= 1
	r0 += r5
	r9 = r1
	r9 >>= 10
	r9 &= 1
	r0 += r9
	r2 = r1
	r2 >>= 11
	r2 &= 1
	r0 += r2
	r3 = r1
	r3 >>= 12
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 >>= 13
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 >>= 14
	r5 &= 1
	r0 += r5
	r1 >>= 15
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
	r2 >>= 1
	r2 &= 1
	r0 = r1
	r0 &= 1
	r0 += r2
	r3 = r1
	r3 >>= 2
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 >>= 3
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 >>= 4
	r5 &= 1
	r0 += r5
	r9 = r1
	r9 >>= 5
	r9 &= 1
	r0 += r9
	r2 = r1
	r2 >>= 6
	r2 &= 1
	r0 += r2
	r3 = r1
	r3 >>= 7
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 >>= 8
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 >>= 9
	r5 &= 1
	r0 += r5
	r9 = r1
	r9 >>= 10
	r9 &= 1
	r0 += r9
	r2 = r1
	r2 >>= 11
	r2 &= 1
	r0 += r2
	r3 = r1
	r3 >>= 12
	r3 &= 1
	r0 += r3
	r4 = r1
	r4 >>= 13
	r4 &= 1
	r0 += r4
	r5 = r1
	r5 >>= 14
	r5 &= 1
	r0 += r5
	r1 >>= 15
	r0 += r1
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2308
	r0 = 0
.L2307:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2324
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2306
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L2306
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L2306
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L2306
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L2306
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L2306
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L2307
	exit
.L2308:
	r0 = r1
.L2306:
	exit
.L2324:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2328
	if r2 == 0 goto .L2329
	r0 = 0
.L2327:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2345
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2326
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2326
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2326
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2326
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2326
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2326
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L2327
	exit
.L2329:
	r0 = r2
.L2326:
	exit
.L2328:
	r0 = r1
	exit
.L2345:
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
	if r0 < r2 goto .L2355
	r9 = 32
	r4 = 1
.L2347:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2348
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2348
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2348
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2348
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2348
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2348
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2348
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2348
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2348
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2348
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2348
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2348
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2348
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2348
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2348
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2348
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2347
.L2372:
	r1 = 0
.L2350:
	if r3 != 0 goto .L2353
	r0 = r1
.L2353:
	exit
.L2348:
	if r4 == 0 goto .L2372
.L2355:
	r1 = 0
.L2349:
	if r2 >= r0 goto .L2352
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
.L2352:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2349
	goto .L2350
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2376
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2377
	r0 = r8
	r0 &= 1
	exit
.L2377:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2376:
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
	if r3 s>= r0 goto .L2381
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2382
	r0 = r8
	r0 &= 1
	exit
.L2382:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2381:
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
	if r2 s< 0 goto .L2413
	r3 = 0
.L2386:
	if r4 == 0 goto .L2391
	r2 = r4
	r2 &= 1
	r2 = -r2
	r0 = r1
	r0 &= r2
	r1 <<= 33
	r1 s>>= 32
	r2 = r4
	r2 s>>= 1
	r2 <<= 32
	r9 = r2
	r9 s>>= 32
	if r2 == 0 goto .L2387
	r9 &= 1
	r9 = -r9
	r5 = r1
	r5 &= r9
	r0 += r5
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r2 s>>= 33
	if r2 == 0 goto .L2387
	r4 = 30
.L2388:
	r5 = r2
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r2 s>>= 1
	r5 = r2
	r5 <<= 32
	if r2 == 0 goto .L2387
	r4 += -1
	r4 &= 0xff
	r2 &= 1
	r2 = -r2
	r9 = r1
	r9 &= r2
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r2 = r5
	r2 s>>= 33
	r5 = r2
	r5 <<= 32
	if r2 == 0 goto .L2387
	r4 += -1
	r4 &= 0xff
	r2 &= 1
	r2 = -r2
	r9 = r1
	r9 &= r2
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r2 = r5
	r2 s>>= 33
	r5 = r2
	r5 <<= 32
	if r2 == 0 goto .L2387
	r4 += -1
	r4 &= 0xff
	r2 &= 1
	r2 = -r2
	r9 = r1
	r9 &= r2
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r5 s>>= 33
	r2 = r5
	r2 <<= 32
	if r5 == 0 goto .L2387
	r4 += -1
	r4 &= 0xff
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 <<= 33
	r1 s>>= 32
	r2 s>>= 33
	if r2 == 0 goto .L2387
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L2388
.L2387:
	if r3 == 0 goto .L2389
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L2389:
	exit
.L2413:
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r3 = 1
	goto .L2386
.L2391:
	r0 = r4
	goto .L2387
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2447
	r4 = 0
.L2415:
	if r2 s>= 0 goto .L2416
	r2 = -r2
	r4 ^= 1
.L2416:
	r2 = r2;r2 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2426
	r9 = 32
	r1 = 1
.L2417:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2418
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2418
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2418
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2418
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2418
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2418
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2418
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2418
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2417
.L2446:
	r0 = 0
.L2420:
	if r4 == 0 goto .L2414
	r0 = -r0
.L2414:
	exit
.L2418:
	if r1 == 0 goto .L2446
.L2426:
	r0 = 0
.L2419:
	if r2 >= r3 goto .L2422
	r3 -= r2
	r3 = r3;r3 &= 0xffffffff
	r5 = r1
	r5 |= r0
	r0 = r5
.L2422:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2419
	goto .L2420
.L2447:
	r1 = -r1
	r4 = 1
	goto .L2415
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2485
	r4 = 0
.L2449:
	if r0 s>= 0 goto .L2450
	r0 = -r0
.L2450:
	r0 = r0;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2465
	r9 = 32
	r1 = 1
.L2451:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2484
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2484
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2484
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2484
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2484
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2484
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2484
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2484
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2484
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2484
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2484
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2484
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2484
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2484
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2484
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2484
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2451
.L2454:
	r0 = r3
	if r4 == 0 goto .L2448
	r0 = -r0
.L2448:
	exit
.L2484:
	if r1 == 0 goto .L2454
.L2465:
	if r0 >= r3 goto .L2455
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2455:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2465
	goto .L2454
.L2485:
	r1 = -r1
	r4 = 1
	goto .L2449
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r0 < r2 goto .L2511
	r4 = 0
	r1 = r2
	r1 <<= 48
	if r1 s<= r4 goto .L2511
	r9 = r2
	r9 += r2
	r9 &= 0xffff
	if r9 > r0 goto .L2513
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2513
	r1 = r2
	r1 <<= 2
	r1 &= 0xffff
	if r1 > r0 goto .L2515
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2515
	r1 = r2
	r1 <<= 3
	r1 &= 0xffff
	if r1 > r0 goto .L2517
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2517
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L2519
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2519
	r9 = r2
	r9 <<= 5
	r9 &= 0xffff
	if r9 > r0 goto .L2521
	r5 = r9
	r5 <<= 48
	if r5 s<= r4 goto .L2521
	r1 = r2
	r1 <<= 6
	r1 &= 0xffff
	if r1 > r0 goto .L2523
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2523
	r1 = r2
	r1 <<= 7
	r1 &= 0xffff
	if r1 > r0 goto .L2525
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2525
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L2527
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2527
	r9 = r2
	r9 <<= 9
	r9 &= 0xffff
	if r9 > r0 goto .L2529
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2529
	r1 = r2
	r1 <<= 10
	r1 &= 0xffff
	if r1 > r0 goto .L2531
	r9 = r1
	r9 <<= 48
	if r9 s<= r4 goto .L2531
	r1 = r2
	r1 <<= 11
	r1 &= 0xffff
	if r1 > r0 goto .L2533
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2533
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L2535
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2535
	r9 = r2
	r9 <<= 13
	r9 &= 0xffff
	if r9 > r0 goto .L2537
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2537
	r1 = r2
	r1 <<= 14
	r1 &= 0xffff
	if r1 > r0 goto .L2539
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2539
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L2559
	r1 = r4
	if r2 != r4 goto .L2559
.L2490:
	if r3 != 0 goto .L2510
	r0 = r1
.L2510:
	exit
.L2511:
	r4 = 1
.L2489:
	if r2 >= r0 goto .L2542
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L2493:
	r9 = r4
	r9 >>= 1
	r5 = r2
	r5 >>= 1
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2495
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2495:
	r9 = r4
	r9 >>= 2
	r5 = r2
	r5 >>= 2
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2496
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2496:
	r9 = r4
	r9 >>= 3
	r5 = r2
	r5 >>= 3
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2497
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2497:
	r9 = r4
	r9 >>= 4
	r5 = r2
	r5 >>= 4
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2498
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2498:
	r9 = r4
	r9 >>= 5
	r5 = r2
	r5 >>= 5
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2499
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2499:
	r9 = r4
	r9 >>= 6
	r5 = r2
	r5 >>= 6
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2500
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2500:
	r9 = r4
	r9 >>= 7
	r5 = r2
	r5 >>= 7
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2501
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2501:
	r9 = r4
	r9 >>= 8
	r5 = r2
	r5 >>= 8
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2502
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2502:
	r9 = r4
	r9 >>= 9
	r5 = r2
	r5 >>= 9
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2503
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2503:
	r9 = r4
	r9 >>= 10
	r5 = r2
	r5 >>= 10
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2504
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2504:
	r9 = r4
	r9 >>= 11
	r5 = r2
	r5 >>= 11
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2505
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2505:
	r9 = r4
	r9 >>= 12
	r5 = r2
	r5 >>= 12
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2506
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2506:
	r9 = r4
	r9 >>= 13
	r5 = r2
	r5 >>= 13
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2507
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2507:
	r9 = r4
	r9 >>= 14
	r5 = r2
	r5 >>= 14
	r5 &= 0xffff
	if r9 == 0 goto .L2490
	if r5 >= r0 goto .L2508
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2508:
	r2 >>= 15
	r2 &= 0xffff
	r4 >>= 15
	if r4 == 0 goto .L2490
	if r2 >= r0 goto .L2490
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
	goto .L2490
.L2542:
	r1 = 0
	goto .L2493
.L2513:
	r2 = r9
	r4 = 2
	goto .L2489
.L2515:
	r2 = r1
	r4 = 4
	goto .L2489
.L2517:
	r2 = r1
	r4 = 8
	goto .L2489
.L2519:
	r2 = r9
	r4 = 16
	goto .L2489
.L2529:
	r2 = r9
	r4 = 512
	goto .L2489
.L2559:
	r4 = 32768
	goto .L2489
.L2521:
	r2 = r9
	r4 = 32
	goto .L2489
.L2523:
	r2 = r1
	r4 = 64
	goto .L2489
.L2525:
	r2 = r1
	r4 = 128
	goto .L2489
.L2527:
	r2 = r9
	r4 = 256
	goto .L2489
.L2531:
	r2 = r1
	r4 = 1024
	goto .L2489
.L2533:
	r2 = r1
	r4 = 2048
	goto .L2489
.L2535:
	r2 = r9
	r4 = 4096
	goto .L2489
.L2537:
	r2 = r9
	r4 = 8192
	goto .L2489
.L2539:
	r2 = r1
	r4 = 16384
	goto .L2489
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L2569
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L2561:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2562
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2562
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2562
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2562
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2562
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2562
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2562
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2562
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2562
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2562
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2562
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2562
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2562
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2562
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2562
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2562
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2561
.L2587:
	r0 = 0
	if r3 != 0 goto .L2588
.L2560:
	exit
.L2562:
	if r4 == 0 goto .L2587
.L2569:
	r0 = 0
.L2563:
	if r2 >= r1 goto .L2566
	r1 -= r2
	r0 |= r4
.L2566:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2563
	if r3 == 0 goto .L2560
.L2588:
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
	if r0 == 0 goto .L2590
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
.L2590:
	if r2 == 0 goto .L2593
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
.L2593:
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
	if r0 == 0 goto .L2595
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L2595:
	if r3 == 0 goto .L2598
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
.L2598:
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
	if r0 == 0 goto .L2600
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
.L2600:
	if r2 == 0 goto .L2603
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
.L2603:
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
	if r0 == 0 goto .L2605
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L2605:
	if r3 == 0 goto .L2608
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
.L2608:
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
	if r1 <= 65534 goto .L2612
	r0 = 0
.L2612:
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
	r5 = 2
	r4 = r5
	r4 -= r9
	r1 = r4;r1 &= 0xffffffff
	r2 >>= r1
	r1 = r2;r1 &= 0xffffffff
	r3 = r1
	r3 >>= 1
	r3 &= 1
	r4 = r3
	r4 ^= 1
	if r3 != 0 goto .L2614
	r5 -= r1
	r4 = r5
.L2614:
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
	if r2 == 0 goto .L2616
	r6 = 0
.L2616:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2618
	r0 = 0
.L2618:
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
	if r0 s>= r3 goto .L2629
	if r3 s> r0 goto .L2630
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2629
	if r1 > r2 goto .L2630
	r0 = 1
	exit
.L2629:
	r0 = 0
	exit
.L2630:
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
	if r0 s>= r3 goto .L2635
	if r3 s> r0 goto .L2636
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2635
	if r1 > r2 goto .L2636
	r0 = 1
	r0 += -1
	exit
.L2635:
	r0 = 0
	r0 += -1
	exit
.L2636:
	r0 = 2
	r0 += -1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L2641
	if r2 s> r4 goto .L2642
	if r3 >= r1 goto .L2641
	if r1 > r3 goto .L2642
	r0 = 1
	exit
.L2641:
	r0 = 0
	exit
.L2642:
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
	if r1 == 0 goto .L2645
	r6 = 0
.L2645:
	r6 &= 0xff
	if r0 == 0 goto .L2651
	r1 = 0
.L2647:
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
.L2651:
	r1 = r2
	goto .L2647
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2655
	if r2 != 0 goto .L2658
	r0 = r2
	exit
.L2655:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2658:
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
	if r0 == 0 goto .L2660
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
	r0 <<= 32
	r0 |= r3
	exit
.L2660:
	if r2 == 0 goto .L2663
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
.L2663:
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
	if r0 == 0 goto .L2665
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2665:
	if r3 == 0 goto .L2668
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
.L2668:
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
	r0 = r1
	r0 = -r0
	r3 = 1
	if r1 != 0 goto .L2675
	r3 = r0
.L2675:
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
	if r9 > r0 goto .L2682
	r3 = 0
.L2682:
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
	if r0 >= r4 goto .L2683
	r9 = 0
.L2683:
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
	if r1 >= r2 goto .L2684
	r0 = 0
.L2684:
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
	goto .L2688
.L2693:
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2688:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2686
	r2 = r6
	r1 = r7
	call	__muldf3
	r7 = r0
.L2686:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 != 0 goto .L2693
	r2 = *(u64 *) (r10+-8)
	if r2 s>= 0 goto .L2685
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L2685:
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
	goto .L2697
.L2702:
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2697:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2695
	r2 = r6
	r1 = r7
	call	__mulsf3
	r7 = r0
.L2695:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 != 0 goto .L2702
	r2 = *(u64 *) (r10+-8)
	if r2 s>= 0 goto .L2694
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L2694:
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
	if r0 >= r3 goto .L2707
	if r3 > r0 goto .L2708
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2707
	if r1 > r2 goto .L2708
	r0 = 1
	exit
.L2707:
	r0 = 0
	exit
.L2708:
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
	if r0 >= r3 goto .L2713
	if r3 > r0 goto .L2714
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2713
	if r1 > r2 goto .L2714
	r0 = 1
	r0 += -1
	exit
.L2713:
	r0 = 0
	r0 += -1
	exit
.L2714:
	r0 = 2
	r0 += -1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2719
	if r2 > r4 goto .L2720
	if r3 >= r1 goto .L2719
	if r1 > r3 goto .L2720
	r0 = 1
	exit
.L2719:
	r0 = 0
	exit
.L2720:
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
