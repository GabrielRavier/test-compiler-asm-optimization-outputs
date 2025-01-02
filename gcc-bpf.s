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
	if r4 == 0 goto .L91
	r5 = r4
	r0 = r4
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L89
	if r0 == 1 goto .L132
	if r0 == 2 goto .L133
	if r0 == 3 goto .L134
	if r0 == 4 goto .L135
	if r0 == 5 goto .L136
	if r0 != 6 goto .L149
.L137:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L148
	r4 += -1
	r2 += 1
	r1 += 1
.L136:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L148
	r4 += -1
	r2 += 1
	r1 += 1
.L135:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L148
	r4 += -1
	r2 += 1
	r1 += 1
.L134:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L148
	r4 += -1
	r2 += 1
	r1 += 1
.L133:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L148
	r4 += -1
	r2 += 1
	r1 += 1
.L132:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L148
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L91
.L89:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L148
	r1 += 1
	r5 = *(u8 *) (r2+1)
	*(u8 *) (r1+0) = r5
	r0 = r1
	if r5 == r3 goto .L148
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r1+1) = r9
	r1 += 1
	if r9 == r3 goto .L148
	r5 = *(u8 *) (r2+3)
	*(u8 *) (r0+2) = r5
	r1 = r0
	r1 += 2
	if r5 == r3 goto .L148
	r9 = *(u8 *) (r2+4)
	*(u8 *) (r0+3) = r9
	r1 += 1
	if r9 == r3 goto .L148
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r0+4) = r5
	r1 += 1
	if r5 == r3 goto .L148
	r9 = *(u8 *) (r2+6)
	*(u8 *) (r0+5) = r9
	r1 += 1
	if r9 == r3 goto .L148
	r5 = *(u8 *) (r2+7)
	*(u8 *) (r0+6) = r5
	r1 += 1
	if r5 == r3 goto .L148
	r0 += 7
	r4 += -8
	r2 += 8
	r1 = r0
	if r4 != 0 goto .L89
.L91:
	r0 = 0
	exit
.L148:
	r0 = r1
	r0 += 1
	exit
.L149:
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r4
	if r4 == r3 goto .L148
	r4 = r5
	r2 += 1
	r1 += 1
	goto .L137
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L154
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L151
	if r0 == 1 goto .L191
	if r0 == 2 goto .L192
	if r0 == 3 goto .L193
	if r0 == 4 goto .L194
	if r0 == 5 goto .L195
	if r0 != 6 goto .L209
.L196:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L208
	r1 += 1
	r3 += -1
.L195:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L208
	r1 += 1
	r3 += -1
.L194:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L208
	r1 += 1
	r3 += -1
.L193:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L208
	r1 += 1
	r3 += -1
.L192:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L208
	r1 += 1
	r3 += -1
.L191:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L208
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L154
.L151:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L208
	r1 += 1
	r0 = r1
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L208
	r1 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L208
	r1 = r0
	r4 = *(u8 *) (r0+2)
	r1 += 2
	if r4 == r2 goto .L208
	r1 += 1
	r5 = *(u8 *) (r0+3)
	if r5 == r2 goto .L208
	r1 += 1
	r9 = *(u8 *) (r0+4)
	if r9 == r2 goto .L208
	r1 += 1
	r4 = *(u8 *) (r0+5)
	if r4 == r2 goto .L208
	r1 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == r2 goto .L208
	r0 += 7
	r3 += -8
	r1 = r0
	if r3 != 0 goto .L151
.L154:
	r0 = 0
	exit
.L208:
	r0 = r1
	exit
.L209:
	r3 = *(u8 *) (r1+0)
	if r3 == r2 goto .L208
	r1 += 1
	r3 = r4
	goto .L196
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L215
	r5 = r3
	r0 = r3
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L211
	if r0 == 1 goto .L252
	if r0 == 2 goto .L253
	if r0 == 3 goto .L254
	if r0 == 4 goto .L255
	if r0 == 5 goto .L256
	if r0 != 6 goto .L271
.L257:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L270
	r3 += -1
	r1 += 1
	r2 += 1
.L256:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L270
	r3 += -1
	r1 += 1
	r2 += 1
.L255:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L270
	r3 += -1
	r1 += 1
	r2 += 1
.L254:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L270
	r3 += -1
	r1 += 1
	r2 += 1
.L253:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L270
	r3 += -1
	r1 += 1
	r2 += 1
.L252:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L270
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L215
.L211:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L270
	r0 = *(u8 *) (r1+1)
	r4 = *(u8 *) (r2+1)
	if r0 != r4 goto .L270
	r0 = *(u8 *) (r1+2)
	r4 = *(u8 *) (r2+2)
	if r0 != r4 goto .L270
	r0 = *(u8 *) (r1+3)
	r4 = *(u8 *) (r2+3)
	if r0 != r4 goto .L270
	r0 = *(u8 *) (r1+4)
	r4 = *(u8 *) (r2+4)
	if r0 != r4 goto .L270
	r0 = *(u8 *) (r1+5)
	r4 = *(u8 *) (r2+5)
	if r0 != r4 goto .L270
	r0 = *(u8 *) (r1+6)
	r4 = *(u8 *) (r2+6)
	if r0 != r4 goto .L270
	r0 = *(u8 *) (r1+7)
	r4 = *(u8 *) (r2+7)
	if r0 != r4 goto .L270
	r3 += -8
	r1 += 8
	r2 += 8
	if r3 != 0 goto .L211
.L215:
	r0 = 0
	exit
.L270:
	r0 -= r4
	exit
.L271:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r0 != r4 goto .L270
	r3 = r5
	r1 += 1
	r2 += 1
	goto .L257
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
	if r3 == 0 goto .L273
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L272
	if r3 == 1 goto .L273
	if r3 == 2 goto .L287
	if r3 == 3 goto .L285
	if r3 == 4 goto .L283
	if r3 == 5 goto .L281
	if r3 != 6 goto .L307
.L279:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L272
.L281:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L272
.L283:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 == r2 goto .L272
.L285:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L272
.L287:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L308
.L273:
	if r1 == r4 goto .L309
	r5 = r1
	r0 = r1
	r5 += -1
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L310
	r9 = r1
	r0 = r5
	r9 += -2
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L272
	r5 = r1
	r0 = r9
	r5 += -3
	r3 = *(u8 *) (r9+0)
	if r3 == r2 goto .L272
	r9 += -2
	r0 = r5
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L272
	r5 += -2
	r0 = r9
	r3 = *(u8 *) (r9+0)
	if r3 == r2 goto .L272
	r9 += -2
	r0 = r5
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L272
	r0 = r9
	r5 += -2
	r9 = *(u8 *) (r9+0)
	if r9 == r2 goto .L272
	r0 = r5
	r1 += -8
	r5 = *(u8 *) (r5+0)
	if r5 != r2 goto .L273
	exit
.L309:
	r0 = 0
.L272:
	exit
.L307:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 != r2 goto .L279
	exit
.L310:
	exit
.L308:
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
	if r1 == 0 goto .L312
.L313:
	r0 += 1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 = r0
	if r4 == 0 goto .L312
	r5 = *(u8 *) (r2+2)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L312
	r0 = r3
	r9 = *(u8 *) (r2+3)
	r0 += 2
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L312
	r1 = *(u8 *) (r2+4)
	r0 += 1
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L312
	r4 = *(u8 *) (r2+5)
	r0 += 1
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L312
	r3 = *(u8 *) (r2+6)
	r0 += 1
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L312
	r5 = *(u8 *) (r2+7)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	r2 += 8
	if r5 == 0 goto .L312
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L313
	exit
.L312:
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
	if r1 != 0 goto .L333
	goto .L339
.L335:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 == 0 goto .L332
.L333:
	r4 &= 0xff
	if r4 != r2 goto .L335
.L332:
	exit
.L339:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r0 = r1
	r2 s>>= 32
	goto .L342
.L345:
	r0 += 1
	if r3 == 0 goto .L344
.L342:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 != r2 goto .L345
	exit
.L344:
	r0 = r3
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L354
.L347:
	if r0 == 0 goto .L348
	r1 += 1
	r2 += 1
.L354:
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 <<= 56
	r3 <<= 56
	r0 s>>= 56
	r3 s>>= 56
	if r0 == r3 goto .L347
	r0 &= 0xff
.L348:
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
	if r2 == 0 goto .L355
	r0 = r1
.L357:
	r0 += 1
	r4 = r0
	r3 = *(u8 *) (r0+0)
	if r3 == 0 goto .L374
	r0 += 1
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L374
	r0 = r4
	r9 = *(u8 *) (r4+2)
	r0 += 2
	if r9 == 0 goto .L374
	r0 += 1
	r2 = *(u8 *) (r4+3)
	if r2 == 0 goto .L374
	r0 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L374
	r0 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L374
	r0 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L374
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L357
.L374:
	r0 -= r1
.L355:
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L383
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L465
	r3 += -1
	r9 = r1
	r9 += r3
	r3 &= 7
	if r3 == 0 goto .L379
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L463
	r2 = r0
	if r3 == 1 goto .L379
	if r3 == 2 goto .L448
	if r3 == 3 goto .L449
	if r3 == 4 goto .L450
	if r3 == 5 goto .L451
	if r3 == 6 goto .L452
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r1 += 1
	r0 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L463
	r2 = r0
.L452:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r1 += 1
	r3 = r2
	r4 = *(u8 *) (r1+0)
	r3 += 1
	if r4 == 0 goto .L463
	r2 = r3
.L451:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r1 += 1
	r5 = r2
	r4 = *(u8 *) (r1+0)
	r5 += 1
	if r4 == 0 goto .L463
	r2 = r5
.L450:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L463
	r2 = r0
.L449:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r1 += 1
	r3 = r2
	r4 = *(u8 *) (r1+0)
	r3 += 1
	if r4 == 0 goto .L463
	r2 = r3
.L448:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L463
	r2 = r0
.L379:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L378
	if r1 == r9 goto .L378
	if r5 != r4 goto .L378
	r3 = r1
	r0 = r2
	r3 += 1
	r0 += 1
	r4 = *(u8 *) (r1+1)
	if r4 == 0 goto .L463
	r2 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r4 = *(u8 *) (r1+2)
	if r4 == 0 goto .L463
	r2 += 1
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r4 = *(u8 *) (r1+3)
	if r4 == 0 goto .L463
	r2 = r0
	r5 = *(u8 *) (r0+2)
	r2 += 2
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r4 = *(u8 *) (r3+3)
	if r4 == 0 goto .L463
	r2 += 1
	r5 = *(u8 *) (r0+3)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L463
	r2 += 1
	r5 = *(u8 *) (r0+4)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r4 = *(u8 *) (r3+5)
	if r4 == 0 goto .L463
	r2 += 1
	r5 = *(u8 *) (r0+5)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L463
	r2 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == 0 goto .L378
	if r5 != r4 goto .L378
	r1 = r3
	r4 = *(u8 *) (r3+7)
	r1 += 7
	if r4 == 0 goto .L463
	r0 += 7
	r2 = r0
	goto .L379
.L463:
	r5 = *(u8 *) (r2+1)
	r4 = 0
.L378:
	r4 -= r5
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	exit
.L383:
	r0 = r3
	exit
.L465:
	r5 = *(u8 *) (r2+0)
	goto .L378
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L466
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
	if r3 == 0 goto .L468
	if r3 == 1 goto .L491
	if r3 == 2 goto .L492
	if r3 == 3 goto .L493
	if r3 == 4 goto .L494
	if r3 == 5 goto .L495
	if r3 != 6 goto .L505
.L496:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L495:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L494:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L493:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L492:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L491:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L506
.L468:
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
	if r0 != r5 goto .L468
.L466:
	exit
.L505:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
	goto .L496
.L506:
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
	if r2 <= 24 goto .L508
	r1 = 0
.L508:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L510
	r0 = 0
.L510:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L513
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L513:
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
	if r1 <= 30 goto .L516
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L516:
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
	if r1 <= 8 goto .L518
	r0 = 0
.L518:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L520
	r0 = 0
.L520:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L522
	r0 = 0
.L522:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L524
	r0 = 0
.L524:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L528
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 3 goto .L529
	r0 &= 1
	exit
.L529:
	r0 = 0
	r0 &= 1
	exit
.L528:
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
	if r1 <= 24 goto .L531
	r0 = 0
.L531:
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
	if r1 <= 30 goto .L537
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 > 31 goto .L538
.L537:
	r0 = 1
	exit
.L538:
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L537
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L534
	r9 = 0
.L534:
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
	if r1 <= 8 goto .L540
	r0 = 0
.L540:
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
	if r1 <= 254 goto .L549
	if r1 <= 8230 goto .L547
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L547
	r2 += -49110
	if r2 <= 8183 goto .L547
	r1 += -65532
	if r1 > 1048579 goto .L548
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L547:
	r0 = 1
	exit
.L549:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s<= 32 goto .L550
	r0 = r1
	r0 &= 1
	exit
.L550:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
.L548:
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
	if r2 <= 8 goto .L554
	r1 |= 32
	r0 = 1
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L555
	r0 &= 1
	exit
.L554:
	r0 = 1
	exit
.L555:
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
	if r0 != 0 goto .L560
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L561
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L564
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L564:
	r0 = 0x0000000000000000 ll
	exit
.L560:
	r0 = r6
	exit
.L561:
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
	if r0 != 0 goto .L568
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L569
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L572
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L572:
	r0 = 0x00000000 ll
	exit
.L568:
	r0 = r6
	exit
.L569:
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
	if r0 != 0 goto .L581
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L580
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L575
	if r0 != 0 goto .L581
.L580:
	r0 = r7
	exit
.L575:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L581
	r6 = r7
.L581:
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
	if r0 != 0 goto .L592
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L591
	r0 = r7
	r1 = r6
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L586
	if r2 != 0 goto .L592
.L591:
	r0 = r7
	exit
.L586:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L592
	r6 = r7
.L592:
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
	if r0 != 0 goto .L603
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L602
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L597
	if r0 != 0 goto .L603
.L602:
	r0 = r7
	exit
.L597:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L603
	r6 = r7
.L603:
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
	if r0 != 0 goto .L612
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L614
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L608
	if r0 != 0 goto .L614
.L612:
	r0 = r7
	exit
.L608:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L614
	r6 = r7
.L614:
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
	if r0 != 0 goto .L623
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L625
	r0 = r6
	r1 = r7
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L619
	if r2 != 0 goto .L625
.L623:
	r0 = r7
	exit
.L619:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L625
	r6 = r7
.L625:
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
	if r0 != 0 goto .L634
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L636
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L630
	if r0 != 0 goto .L636
.L634:
	r0 = r7
	exit
.L630:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L636
	r6 = r7
.L636:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L640
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
	if r1 == 0 goto .L640
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L640
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 = r9
	r0 += 2
	if r1 == 0 goto .L640
	r9 = r1
	r3 = r2
	r9 &= 63
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L640
	r5 = r1
	r9 = r2
	r5 &= 63
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L640
	r2 += r1
	r0 += 1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+-1) = r1
.L640:
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
	if r2 == 0 goto .L666
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r0
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L660
	*(u64 *) (r2+8) = r1
.L660:
	exit
.L666:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L668
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L668:
	r1 = *(u64 *) (r1+8)
	if r1 == 0 goto .L667
	*(u64 *) (r1+0) = r0
.L667:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L678
	exit
.L678:
	r1 = -r1
	r0 = r1
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r4 = 4
.L686:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L680
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L680
	if r0 == 43 goto .L681
	if r0 != 45 goto .L705
	r3 = *(u8 *) (r1+1)
	r1 += 1
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r4 = r3;r4 &= 0xffffffff
	if r4 > 9 goto .L691
	r5 = 1
.L684:
	r0 = 0
	r9 = 9
.L688:
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
	if r9 <= r6 goto .L704
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
	if r9 <= r3 goto .L704
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
	if r9 <= r6 goto .L704
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
	if r9 > r6 goto .L688
.L704:
	if r5 != 0 goto .L687
	r0 = r4
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	exit
.L680:
	r1 += 1
	goto .L686
.L705:
	r3 += -48
	if r3 > 8 goto .L691
	r0 += -48
	r5 = 0
	r3 = r0
	goto .L684
.L681:
	r3 = *(u8 *) (r1+1)
	r5 = 0
	r3 <<= 56
	r1 += 1
	r3 s>>= 56
	r3 += -48
	r9 = r3;r9 &= 0xffffffff
	if r9 <= 8 goto .L684
.L691:
	r0 = 0
.L687:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 4
.L713:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L707
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L707
	if r0 == 43 goto .L708
	if r0 != 45 goto .L732
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 9 goto .L718
	r5 = 1
.L711:
	r2 = 0
	r9 = 9
.L715:
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
	if r9 <= r6 goto .L731
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
	if r9 <= r6 goto .L731
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
	if r9 <= r6 goto .L731
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
	if r9 > r6 goto .L715
.L731:
	if r5 != 0 goto .L706
	r2 = r4
	r2 -= r3
.L706:
	r0 = r2
	exit
.L707:
	r1 += 1
	goto .L713
.L732:
	r3 += -48
	if r3 > 8 goto .L718
	r5 = 0
	r0 += -48
	goto .L711
.L708:
	r0 = *(u8 *) (r1+1)
	r5 = 0
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 <= 8 goto .L711
.L718:
	r2 = 0
	r0 = r2
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r4 = 4
.L738:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L734
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L734
	if r0 == 43 goto .L735
	if r0 != 45 goto .L759
	r0 = *(u8 *) (r1+1)
	r5 = 1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 8 goto .L745
.L739:
	r2 = 0
	r9 = 9
.L742:
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
	if r9 <= r6 goto .L758
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
	if r9 <= r6 goto .L758
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
	if r9 <= r6 goto .L758
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
	if r9 > r6 goto .L742
.L758:
	if r5 != 0 goto .L733
	r2 = r4
	r2 -= r3
.L733:
	r0 = r2
	exit
.L734:
	r1 += 1
	goto .L738
.L759:
	r3 += -48
	if r3 > 8 goto .L745
	r5 = 0
	r0 += -48
	goto .L739
.L735:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 > 9 goto .L745
	r5 = 0
	goto .L739
.L745:
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
	if r1 s< 0 goto .L763
	exit
.L763:
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
	if r1 s< 0 goto .L767
	exit
.L767:
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
	if r1 s< 0 goto .L771
	exit
.L771:
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
	if r3 == 0 goto .L779
.L774:
	if r2 == r0 goto .L780
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L774
	exit
.L780:
	r0 = r1
	exit
.L779:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L789
.L790:
	if r3 == 0 goto .L783
	r1 += 4
	r2 += 4
.L789:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L790
.L783:
	if r4 s>= r3 goto .L787
	r0 = 1
	if r3 s<= r4 goto .L791
	r0 &= 1
	exit
.L787:
	r0 = -1
	exit
.L791:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L793:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L809
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L809
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L809
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L809
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L809
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L809
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L809
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L793
.L809:
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
	if r2 == 0 goto .L810
	r0 = r1
.L812:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L829
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if r5 == 0 goto .L829
	r0 = r4
	r9 = *(u32 *) (r4+8)
	r0 += 8
	if r9 == 0 goto .L829
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L829
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L829
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L829
	r0 += 4
	r9 = *(u32 *) (r4+24)
	if r9 == 0 goto .L829
	r0 += 4
	r4 = *(u32 *) (r4+28)
	if r4 != 0 goto .L812
.L829:
	r0 -= r1
	r0 s>>= 2
.L810:
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L837
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L831
	if r0 == 1 goto .L854
	if r0 == 2 goto .L855
	r3 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 <<= 32
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r3 goto .L833
	if r5 == 0 goto .L833
	r3 = r4
	r1 += 4
	r2 += 4
.L855:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L833
	if r9 == 0 goto .L833
	r3 += -1
	r1 += 4
	r2 += 4
.L854:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L833
	if r5 == 0 goto .L833
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L837
.L831:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L833
	if r0 == 0 goto .L833
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
	if r0 != r9 goto .L833
	if r6 == 0 goto .L833
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r9 <<= 32
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	if r0 != r9 goto .L833
	if r6 == 0 goto .L833
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
	if r4 != r5 goto .L833
	if r6 == 0 goto .L833
	r3 += -4
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L831
.L837:
	r0 = 0
	exit
.L833:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r2 s< r1 goto .L865
	r0 = 1
	if r2 s<= r1 goto .L866
	r0 &= 1
	exit
.L865:
	r0 = -1
	exit
.L866:
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
	if r3 == 0 goto .L871
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L868
	if r0 == 1 goto .L908
	if r0 == 2 goto .L909
	if r0 == 3 goto .L910
	if r0 == 4 goto .L911
	if r0 == 5 goto .L912
	if r0 != 6 goto .L926
.L913:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r3 += -1
	r1 += 4
.L912:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L925
	r3 += -1
	r1 += 4
.L911:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L925
	r3 += -1
	r1 += 4
.L910:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L925
	r3 += -1
	r1 += 4
.L909:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r3 += -1
	r1 += 4
.L908:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L925
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L871
.L868:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L925
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L925
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L925
	r1 = r5
	r1 += 8
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L925
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L925
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L925
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L925
	r3 += -8
	r1 += 4
	if r3 != 0 goto .L868
.L871:
	r0 = 0
	exit
.L925:
	r0 = r1
	exit
.L926:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L925
	r3 = r4
	r1 += 4
	goto .L913
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L934
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L928
	if r0 == 1 goto .L971
	if r0 == 2 goto .L972
	if r0 == 3 goto .L973
	if r0 == 4 goto .L974
	if r0 == 5 goto .L975
	if r0 != 6 goto .L990
.L976:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r3 += -1
	r1 += 4
	r2 += 4
.L975:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r3 += -1
	r1 += 4
	r2 += 4
.L974:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r3 += -1
	r1 += 4
	r2 += 4
.L973:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r3 += -1
	r1 += 4
	r2 += 4
.L972:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r3 += -1
	r1 += 4
	r2 += 4
.L971:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L934
.L928:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r4 = *(u32 *) (r1+4)
	r5 = *(u32 *) (r2+4)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r4 = *(u32 *) (r1+8)
	r5 = *(u32 *) (r2+8)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r4 = *(u32 *) (r1+12)
	r5 = *(u32 *) (r2+12)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r4 = *(u32 *) (r1+16)
	r5 = *(u32 *) (r2+16)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r4 = *(u32 *) (r1+20)
	r5 = *(u32 *) (r2+20)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r4 = *(u32 *) (r1+24)
	r5 = *(u32 *) (r2+24)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r4 = *(u32 *) (r1+28)
	r5 = *(u32 *) (r2+28)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L928
.L934:
	r0 = 0
	exit
.L989:
	r4 s>>= 32
	r5 s>>= 32
	if r4 s< r5 goto .L991
	r0 = 1
	if r4 s<= r5 goto .L992
	r0 &= 1
	exit
.L991:
	r0 = -1
	exit
.L992:
	r0 = 0
	r0 &= 1
	exit
.L990:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L989
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L976
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1000
	r5 = r3
	r6 = r3
	r9 = r1
	r4 = r1
	r0 = r2
	r5 += -1
	r6 <<= 2
	r9 -= r2
	if r6 < r9 goto .L1077
	if r3 == 0 goto .L1000
	r5 <<= 2
	r9 = r1
	r4 = r5
	r0 += r5
	r4 >>= 2
	r9 += r5
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L998
	if r4 == 1 goto .L1054
	if r4 == 2 goto .L1055
	if r4 == 3 goto .L1056
	if r4 == 4 goto .L1057
	if r4 == 5 goto .L1058
	if r4 != 6 goto .L1078
.L1059:
	r3 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r3
	r0 += -4
.L1058:
	r4 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r4
	r0 += -4
.L1057:
	r5 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r5
	r0 += -4
.L1056:
	r3 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r3
	r0 += -4
.L1055:
	r4 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r4
	r0 += -4
.L1054:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r5
	r3 = r0
	r9 += -4
	r0 += -4
	if r2 == r3 goto .L1000
.L998:
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
	if r2 != r3 goto .L998
.L1000:
	r0 = r1
	exit
.L1077:
	if r3 == 0 goto .L1000
	r3 &= 7
	if r3 == 0 goto .L996
	if r3 == 1 goto .L1048
	if r3 == 2 goto .L1049
	if r3 == 3 goto .L1050
	if r3 == 4 goto .L1051
	if r3 == 5 goto .L1052
	if r3 != 6 goto .L1079
.L1053:
	r2 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1052:
	r3 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1051:
	r9 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1050:
	r2 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1049:
	r3 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1048:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r5 += -1
	r4 += 4
	r0 += 4
	if r5 == -1 goto .L1000
.L996:
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
	if r5 != -1 goto .L996
	goto .L1000
.L1079:
	r0 = *(u32 *) (r2+0)
	r5 += -1
	*(u32 *) (r1+0) = r0
	r4 += 4
	r0 = r2
	r0 += 4
	goto .L1053
.L1078:
	r5 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r5
	r0 += -4
	goto .L1059
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
	if r3 == 0 goto .L1081
	r4 = r1
	r1 = r3
	r1 &= 7
	if r1 == 0 goto .L1082
	if r1 == 1 goto .L1107
	if r1 == 2 goto .L1108
	if r1 == 3 goto .L1109
	if r1 == 4 goto .L1110
	if r1 == 5 goto .L1111
	if r1 != 6 goto .L1122
.L1112:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1111:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1110:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1109:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1108:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1107:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
	if r5 == -1 goto .L1123
.L1082:
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
	if r5 != -1 goto .L1082
.L1081:
	exit
.L1122:
	r3 += -2
	*(u32 *) (r0+0) = r2
	r5 = r3
	r4 += 4
	goto .L1112
.L1123:
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1125
	r5 = r1
	r2 += r3
	r5 += r3
	if r3 == 0 goto .L1124
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1127
	if r9 == 1 goto .L1177
	if r9 == 2 goto .L1178
	if r9 == 3 goto .L1179
	if r9 == 4 goto .L1180
	if r9 == 5 goto .L1181
	if r9 == 6 goto .L1182
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1182:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1181:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
.L1180:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
.L1179:
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1178:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1177:
	r2 += -1
	r0 = *(u8 *) (r5+-1)
	*(u8 *) (r2+0) = r0
	r5 += -1
	if r1 == r5 goto .L1207
.L1127:
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
	if r1 != r5 goto .L1127
	exit
.L1125:
	if r1 != r2 goto .L1208
.L1124:
	exit
.L1208:
	if r3 == 0 goto .L1124
	r5 = r1
	r9 = r1
	r5 += r3
	r4 = r2
	r3 &= 7
	if r3 == 0 goto .L1128
	if r3 == 1 goto .L1183
	if r3 == 2 goto .L1184
	if r3 == 3 goto .L1185
	if r3 == 4 goto .L1186
	if r3 == 5 goto .L1187
	if r3 != 6 goto .L1209
.L1188:
	r1 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r9 += 1
.L1187:
	r2 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r9 += 1
.L1186:
	r3 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r9 += 1
.L1185:
	r0 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r0
	r9 += 1
.L1184:
	r1 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r9 += 1
.L1183:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
	if r9 == r5 goto .L1210
.L1128:
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
	if r9 != r5 goto .L1128
	goto .L1124
.L1207:
	exit
.L1209:
	r0 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r0
	r9 += 1
	r4 = r2
	goto .L1188
.L1210:
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
.L1227:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1250
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1250
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1250
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1250
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1250
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1250
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1250
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1250
	if r0 != 32 goto .L1227
	r0 = r4
	exit
.L1250:
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
	if r1 == 0 goto .L1253
	r0 &= 1
	if r0 != 0 goto .L1253
	r0 = 1
.L1254:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1272
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1253
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1253
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1253
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1253
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1253
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1253
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1254
	exit
.L1253:
	exit
.L1272:
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
	if r8 s>= r0 goto .L1276
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1277
	r0 = r7
	r0 &= 1
	exit
.L1276:
	r0 = 1
	exit
.L1277:
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
	if r8 s>= r0 goto .L1281
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1282
	r0 = r7
	r0 &= 1
	exit
.L1281:
	r0 = 1
	exit
.L1282:
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
	if r8 s>= r0 goto .L1286
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1287
	r0 = r7
	r0 &= 1
	exit
.L1286:
	r0 = 1
	exit
.L1287:
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
	if r0 != 0 goto .L1290
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1290
	if r6 s< 0 goto .L1306
	r7 = 0x40000000 ll
.L1292:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1293
.L1294:
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1293:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1290
.L1295:
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
	if r3 != 0 goto .L1294
	r4 s>>= 1
	r6 = r4
	call	__mulsf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1294
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
	if r0 != 0 goto .L1294
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
	if r3 != 0 goto .L1294
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
	if r9 != 0 goto .L1294
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
	if r4 != 0 goto .L1294
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
	if r3 != 0 goto .L1294
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1294
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1295
.L1290:
	r0 = r8
	exit
.L1306:
	r7 = 0x3f000000 ll
	goto .L1292
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
	if r0 != 0 goto .L1308
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1308
	if r6 s< 0 goto .L1324
	r7 = 0x4000000000000000 ll
.L1310:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1311
.L1312:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1311:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1308
.L1313:
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
	if r3 != 0 goto .L1312
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1312
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
	if r0 != 0 goto .L1312
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
	if r3 != 0 goto .L1312
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
	if r9 != 0 goto .L1312
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
	if r4 != 0 goto .L1312
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
	if r3 != 0 goto .L1312
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1312
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1313
.L1308:
	r0 = r8
	exit
.L1324:
	r7 = 0x3fe0000000000000 ll
	goto .L1310
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
	if r0 != 0 goto .L1326
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1326
	if r6 s< 0 goto .L1342
	r7 = 0x4000000000000000 ll
.L1328:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1329
.L1330:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1329:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1326
.L1331:
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
	if r3 != 0 goto .L1330
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1330
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
	if r0 != 0 goto .L1330
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
	if r3 != 0 goto .L1330
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
	if r9 != 0 goto .L1330
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
	if r4 != 0 goto .L1330
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
	if r3 != 0 goto .L1330
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1330
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1331
.L1326:
	r0 = r8
	exit
.L1342:
	r7 = 0x3fe0000000000000 ll
	goto .L1328
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1344
	r4 = r2
	r0 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1345
	if r3 == 1 goto .L1370
	if r3 == 2 goto .L1371
	if r3 == 3 goto .L1372
	if r3 == 4 goto .L1373
	if r3 == 5 goto .L1374
	if r3 != 6 goto .L1385
.L1375:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r3
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1374:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r5
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1373:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r9
	r2 += 1
	*(u8 *) (r0+-1) = r3
.L1372:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r0+-1) = r3
.L1371:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r3
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1370:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	if r2 == r4 goto .L1344
.L1345:
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
	if r2 != r4 goto .L1345
.L1344:
	r0 = r1
	exit
.L1385:
	r3 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r1+0) = r3
	goto .L1375
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1393
	r0 = r1
.L1388:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1387
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1387
	r0 = r4
	r5 = *(u8 *) (r4+2)
	r0 += 2
	if r5 == 0 goto .L1387
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1387
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1387
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1387
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1387
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1388
.L1387:
	if r3 == 0 goto .L1390
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1389
	if r5 == 1 goto .L1441
	if r5 == 2 goto .L1442
	if r5 == 3 goto .L1443
	if r5 == 4 goto .L1444
	if r5 == 5 goto .L1445
	if r5 != 6 goto .L1463
.L1446:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1392
	r2 += 1
	r0 += 1
	r3 += -1
.L1445:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1392
	r2 += 1
	r0 += 1
	r3 += -1
.L1444:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1392
	r2 += 1
	r0 += 1
	r3 += -1
.L1443:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1392
	r2 += 1
	r0 += 1
	r3 += -1
.L1442:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1392
	r2 += 1
	r0 += 1
	r3 += -1
.L1441:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1392
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1390
.L1389:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1392
	r9 = *(u8 *) (r2+1)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1392
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1392
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1392
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1392
	r5 = *(u8 *) (r2+5)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1392
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1392
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1392
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1389
.L1390:
	*(u8 *) (r0+0) = 0
.L1392:
	r0 = r1
	exit
.L1463:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1392
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1446
.L1393:
	r0 = r1
	goto .L1387
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1464
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1465
	if r0 == 1 goto .L1506
	if r0 == 2 goto .L1507
	if r0 == 3 goto .L1508
	if r0 == 4 goto .L1509
	if r0 == 5 goto .L1510
	if r0 != 6 goto .L1520
.L1511:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1464
	r3 += 1
.L1510:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1521
.L1464:
	r0 = r3
	exit
.L1520:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1464
	r3 = 1
	goto .L1511
.L1521:
	r3 += 1
.L1509:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1464
	r3 += 1
.L1508:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1464
	r3 += 1
.L1507:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1464
	r3 += 1
.L1506:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1464
	r3 += 1
	if r2 == r3 goto .L1464
.L1465:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1464
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1464
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1464
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1464
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1464
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1464
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1464
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1464
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1465
	goto .L1464
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1527
.L1531:
	r3 = r2
	goto .L1526
.L1525:
	r3 += 1
	if r4 == r5 goto .L1524
.L1526:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1525
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1531
.L1527:
	r1 = r5
.L1524:
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
.L1534:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1533
	r3 = r1
.L1533:
	r1 += 1
	if r0 != 0 goto .L1534
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
	if r0 == 0 goto .L1678
	r0 = r2
.L1538:
	r0 += 1
	r3 = r0
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1647
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1647
	r0 = r3
	r4 = *(u8 *) (r3+2)
	r0 += 2
	if r4 == 0 goto .L1647
	r0 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1647
	r0 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1647
	r0 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1647
	r0 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1647
	r0 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1538
.L1647:
	r4 = r0
	r4 -= r2
	if r0 == r2 goto .L1678
	r4 += -1
	r9 = r5;r9 &= 0xff
	r7 = r4
	r8 = r1
	goto .L1544
.L1680:
	r8 += 1
	if r0 == 0 goto .L1679
.L1544:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L1680
	r1 = r8
	r1 += r7
	*(u64 *) (r10+-8) = r1
	r4 = r7
	r0 = r9
	r6 = r2
	r3 = r8
	r4 &= 7
	if r4 == 0 goto .L1651
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L1541
	if r3 != r9 goto .L1541
	r3 = r8
	r6 += 1
	r3 += 1
	r0 = *(u8 *) (r8+1)
	if r0 == 0 goto .L1541
	if r4 == 1 goto .L1651
	if r4 == 2 goto .L1597
	if r4 == 3 goto .L1598
	if r4 == 4 goto .L1599
	if r4 == 5 goto .L1600
	if r4 == 6 goto .L1601
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1541
	if r1 != r0 goto .L1541
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1541
.L1601:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1541
	if r4 != r0 goto .L1541
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1541
.L1600:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1541
	if r1 != r0 goto .L1541
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1541
.L1599:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1541
	if r4 != r0 goto .L1541
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1541
.L1598:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1541
	if r1 != r0 goto .L1541
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1541
.L1597:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1541
	if r4 != r0 goto .L1541
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1541
.L1651:
	*(u64 *) (r10+-16) = r8
.L1540:
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1671
	r1 = *(u64 *) (r10+-8)
	if r3 == r1 goto .L1671
	if r8 != r0 goto .L1671
	r6 += 1
	r4 = r3
	r1 = r6
	r4 += 1
	r0 = *(u8 *) (r3+1)
	if r0 == 0 goto .L1671
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1671
	if r8 != r0 goto .L1671
	r6 += 1
	r0 = *(u8 *) (r3+2)
	if r0 == 0 goto .L1671
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1671
	if r8 != r0 goto .L1671
	r6 = r1
	r0 = *(u8 *) (r3+3)
	r6 += 2
	if r0 == 0 goto .L1671
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1671
	if r3 != r0 goto .L1671
	r6 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L1671
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1671
	if r8 != r0 goto .L1671
	r6 += 1
	r0 = *(u8 *) (r4+4)
	if r0 == 0 goto .L1671
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1671
	if r3 != r0 goto .L1671
	r6 += 1
	r0 = *(u8 *) (r4+5)
	if r0 == 0 goto .L1671
	r8 = *(u8 *) (r6+0)
	if r8 == 0 goto .L1671
	if r8 != r0 goto .L1671
	r6 += 1
	r0 = *(u8 *) (r4+6)
	if r0 == 0 goto .L1671
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1671
	if r3 != r0 goto .L1671
	r3 = r4
	r1 += 7
	r3 += 7
	r6 = r1
	r0 = *(u8 *) (r4+7)
	if r0 != 0 goto .L1540
.L1671:
	r8 = *(u64 *) (r10+-16)
.L1541:
	r4 = *(u8 *) (r6+0)
	if r4 == r0 goto .L1547
	r8 += 1
	goto .L1544
.L1679:
	exit
.L1547:
	r1 = r8
.L1678:
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
	if r8 s>= r0 goto .L1691
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1685
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L1684
.L1685:
	r0 = r6
	exit
.L1691:
	r1 = r7
	call	__gtdf2
	if r0 s<= r8 goto .L1685
.L1684:
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
	if r4 == 0 goto .L1692
	if r4 >= r2 goto .L1703
	r2 -= r4
	r9 = r1
	r9 += r2
	if r1 > r9 goto .L1703
	r5 = *(u8 *) (r3+0)
	r4 += -1
	r5 <<= 56
	r3 += 1
	r5 s>>= 56
	*(u64 *) (r10+-8) = r3
.L1698:
	r1 = *(u8 *) (r0+0)
	r3 = r0
	r1 <<= 56
	r3 += 1
	r1 s>>= 56
	if r1 == r5 goto .L1767
	r0 = r3
.L1694:
	if r9 >= r0 goto .L1698
.L1703:
	r0 = 0
.L1692:
	exit
.L1767:
	r2 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L1692
.L1697:
	r7 = r3
	r6 = r4
	r1 = r3
	r7 += r4
	r6 &= 7
	if r6 == 0 goto .L1695
	if r6 == 1 goto .L1741
	if r6 == 2 goto .L1742
	if r6 == 3 goto .L1743
	if r6 == 4 goto .L1744
	if r6 == 5 goto .L1745
	if r6 == 6 goto .L1746
	r6 = *(u8 *) (r3+0)
	r1 = *(u8 *) (r2+0)
	if r6 != r1 goto .L1756
	r1 = r3
	r2 += 1
	r1 += 1
.L1746:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1756
	r1 += 1
	r2 += 1
.L1745:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1756
	r1 += 1
	r2 += 1
.L1744:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1756
	r1 += 1
	r2 += 1
.L1743:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1756
	r1 += 1
	r2 += 1
.L1742:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1756
	r1 += 1
	r2 += 1
.L1741:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1756
	r1 += 1
	r2 += 1
	if r1 == r7 goto .L1768
.L1695:
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r2+0)
	if r8 != r6 goto .L1756
	r8 = *(u8 *) (r1+1)
	r6 = *(u8 *) (r2+1)
	if r8 != r6 goto .L1756
	r8 = *(u8 *) (r1+2)
	r6 = *(u8 *) (r2+2)
	if r8 != r6 goto .L1756
	r8 = *(u8 *) (r1+3)
	r6 = *(u8 *) (r2+3)
	if r8 != r6 goto .L1756
	r8 = *(u8 *) (r1+4)
	r6 = *(u8 *) (r2+4)
	if r8 != r6 goto .L1756
	r8 = *(u8 *) (r1+5)
	r6 = *(u8 *) (r2+5)
	if r8 != r6 goto .L1756
	r8 = *(u8 *) (r1+6)
	r6 = *(u8 *) (r2+6)
	if r8 != r6 goto .L1756
	r8 = *(u8 *) (r1+7)
	r6 = *(u8 *) (r2+7)
	if r8 != r6 goto .L1756
	r1 += 8
	r2 += 8
	if r1 != r7 goto .L1695
	exit
.L1756:
	if r3 > r9 goto .L1703
	r2 = *(u8 *) (r3+0)
	r0 = r3
	r2 <<= 56
	r0 += 1
	r2 s>>= 56
	if r2 != r5 goto .L1694
	r7 = r3
	r2 = *(u64 *) (r10+-8)
	r3 = r0
	r0 = r7
	goto .L1697
.L1768:
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
	if r7 s>= r0 goto .L1803
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1804
	*(u64 *) (r10+-16) = r7
.L1772:
	r8 = 0
	r7 = 0x3fe0000000000000 ll
.L1778:
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
	if r0 s< 0 goto .L1779
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
	if r3 s< 0 goto .L1779
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
	if r0 s< 0 goto .L1779
	r5 s>>= 32
	r8 = r5
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r6 = r0
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L1778
.L1779:
	r2 = *(u64 *) (r10+-8)
	*(u32 *) (r2+0) = r8
	r1 = *(u64 *) (r10+-16)
	if r1 == 0 goto .L1785
	r9 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r9
	exit
.L1804:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r7 s< r0 goto .L1775
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1784
.L1775:
	r0 = *(u64 *) (r10+-8)
	*(u32 *) (r0+0) = 0
	r0 = r6
	exit
.L1803:
	r3 = -9223372036854775808 ll
	r1 = r6
	r1 ^= r3
	r2 = 0xbff0000000000000 ll
	*(u64 *) (r10+-24) = r1
	r1 = r6
	call	__ledf2
	if r7 s<= r0 goto .L1805
	r6 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-16) = 1
	goto .L1772
.L1785:
	r0 = r6
	exit
.L1805:
	r2 = 0xbfe0000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s> r7 goto .L1782
	*(u32 *) (r8+0) = r7
	r0 = r6
	exit
.L1782:
	*(u64 *) (r10+-16) = 1
.L1773:
	r8 = 0
	r6 = *(u64 *) (r10+-24)
	r7 = r8
.L1780:
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
	if r7 s< r0 goto .L1779
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
	if r7 s< r9 goto .L1779
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
	if r7 s< r0 goto .L1779
	r4 s>>= 32
	r8 = r4
	call	__adddf3
	r2 = 0x3fe0000000000000 ll
	r6 = r0
	r1 = r0
	call	__ltdf2
	if r7 s>= r0 goto .L1780
	goto .L1779
.L1784:
	*(u64 *) (r10+-24) = r6
	*(u64 *) (r10+-16) = r7
	goto .L1773
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L1809
	r0 = 0
.L1808:
	r5 = r2
	r1 = r3
	r4 = r3
	r5 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L1825
	r9 = r5
	r2 = r3
	r1 &= 1
	r9 += r5
	r1 = -r1
	r2 >>= 2
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L1806
	r5 = r9
	r1 = r3
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 3
	r2 &= r9
	r0 += r2
	if r1 == 0 goto .L1806
	r4 = r5
	r9 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r9 >>= 4
	r1 &= r5
	r0 += r1
	if r9 == 0 goto .L1806
	r5 = r4
	r1 = r3
	r9 &= 1
	r5 += r4
	r9 = -r9
	r1 >>= 5
	r9 &= r4
	r0 += r9
	if r1 == 0 goto .L1806
	r4 = r5
	r2 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r2 >>= 6
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L1806
	r9 = r4
	r5 = r3
	r2 &= 1
	r9 += r4
	r2 = -r2
	r5 >>= 7
	r2 &= r4
	r0 += r2
	if r5 == 0 goto .L1806
	r5 &= 1
	r2 = r9
	r5 = -r5
	r2 += r9
	r5 &= r9
	r3 >>= 8
	r0 += r5
	if r3 != 0 goto .L1808
	exit
.L1809:
	r0 = r1
.L1806:
	exit
.L1825:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1828
	r9 = 32
	r4 = 1
.L1827:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1828
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1829
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1828
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1829
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1828
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1829
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1828
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1829
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1828
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1829
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1828
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1829
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1828
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1829
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1828
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1829
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1827
.L1830:
	if r3 != 0 goto .L1834
	r0 = r9
.L1834:
	exit
.L1829:
	if r4 == 0 goto .L1836
.L1828:
	r9 = 0
.L1833:
	if r2 >= r0 goto .L1832
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L1832:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L1833
	goto .L1830
.L1836:
	r9 = r4
	goto .L1830
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
	if r2 == r1 goto .L1857
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
.L1857:
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
	if r0 == r2 goto .L1860
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
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
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1864
	r0 = 0
.L1863:
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
	if r3 == 0 goto .L1880
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
	if r1 == 0 goto .L1862
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
	if r2 == 0 goto .L1862
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
	if r1 == 0 goto .L1862
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
	if r2 == 0 goto .L1862
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
	if r3 == 0 goto .L1862
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
	if r1 == 0 goto .L1862
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
	if r1 != 0 goto .L1863
	exit
.L1864:
	r0 = r1
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
	r7 = r1
	r4 = r3
	r0 = r3
	r4 &= -8
	r8 = r2
	r0 >>= 3
	r9 = r4;r9 &= 0xffffffff
	if r2 >= r1 goto .L1882
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2008
.L1882:
	if r0 == 0 goto .L1885
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
	if r2 == 0 goto .L1886
	if r2 == 1 goto .L1965
	if r2 == 2 goto .L1966
	if r2 == 3 goto .L1967
	if r2 == 4 goto .L1968
	if r2 == 5 goto .L1969
	if r2 == 6 goto .L1970
	r0 = *(u64 *) (r8+0)
	r4 += 8
	*(u64 *) (r7+0) = r0
	r1 += 8
.L1970:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1969:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L1968:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1967:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L1966:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1965:
	r0 = *(u64 *) (r4+0)
	*(u64 *) (r1+0) = r0
	r4 += 8
	r1 += 8
	if r4 == r5 goto .L1885
.L1886:
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
	if r4 != r5 goto .L1886
.L1885:
	if r9 > r3 goto .L1881
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
	if r3 == 0 goto .L1887
	if r3 == 1 goto .L1971
	if r3 == 2 goto .L1972
	if r3 == 3 goto .L1973
	if r3 == 4 goto .L1974
	if r3 == 5 goto .L1975
	if r3 == 6 goto .L1976
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L1976:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L1975:
	r9 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r9
	r5 += 1
.L1974:
	r3 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r3
	r5 += 1
.L1973:
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L1972:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L1971:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r9
	r5 += 1
	r1 += 1
	if r5 == r4 goto .L2009
.L1887:
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
	if r5 != r4 goto .L1887
	exit
.L2008:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1881
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1888
	if r3 == 1 goto .L1959
	if r3 == 2 goto .L1960
	if r3 == 3 goto .L1961
	if r3 == 4 goto .L1962
	if r3 == 5 goto .L1963
	if r3 == 6 goto .L1964
	r4 = r8
	r0 = r7
	r4 += r5
	r0 += r5
	r1 = *(u8 *) (r4+0)
	r5 += -1
	*(u8 *) (r0+0) = r1
	r9 = r5
.L1964:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1963:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L1962:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1961:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L1960:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1959:
	r4 = r8
	r0 = r7
	r4 += r9
	r0 += r9
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2010
.L1888:
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
	if r9 != -1 goto .L1888
.L1881:
	exit
.L2009:
	exit
.L2010:
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
	if r2 >= r1 goto .L2012
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2103
.L2012:
	if r0 == 0 goto .L2015
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
	if r5 == 0 goto .L2016
	if r5 == 1 goto .L2075
	if r5 == 2 goto .L2076
	if r5 == 3 goto .L2077
	if r5 == 4 goto .L2078
	if r5 == 5 goto .L2079
	if r5 == 6 goto .L2080
	r0 = *(u16 *) (r8+0)
	r4 += 2
	*(u16 *) (r7+0) = r0
	r1 += 2
.L2080:
	r2 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r4 += 2
.L2079:
	r5 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r5
	r4 += 2
.L2078:
	r0 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r0
	r4 += 2
.L2077:
	r2 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r4 += 2
.L2076:
	r5 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r5
	r4 += 2
.L2075:
	r0 = *(u16 *) (r4+0)
	*(u16 *) (r1+0) = r0
	r4 += 2
	r1 += 2
	if r4 == r9 goto .L2015
.L2016:
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
	if r4 != r9 goto .L2016
.L2015:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L2011
	r3 += -1
	r4 = r8
	r3 = r3;r3 &= 0xffffffff
	r0 = r7
	r4 += r3
	r0 += r3
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	exit
.L2103:
	r2 = r3
	r2 += -1
	r4 = r2;r4 &= 0xffffffff
	r9 = r4
	if r3 == 0 goto .L2011
	r5 = r4
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2018
	if r5 == 1 goto .L2069
	if r5 == 2 goto .L2070
	if r5 == 3 goto .L2071
	if r5 == 4 goto .L2072
	if r5 == 5 goto .L2073
	if r5 == 6 goto .L2074
	r3 = r8
	r0 = r7
	r3 += r4
	r0 += r4
	r1 = *(u8 *) (r3+0)
	r4 += -1
	*(u8 *) (r0+0) = r1
	r9 = r4
.L2074:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2073:
	r3 = r7
	r0 = r8
	r3 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r1
.L2072:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2071:
	r3 = r7
	r0 = r8
	r3 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r1
.L2070:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2069:
	r3 = r8
	r0 = r7
	r3 += r9
	r0 += r9
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2104
.L2018:
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
	if r9 != -1 goto .L2018
.L2011:
	exit
.L2104:
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
	if r2 >= r1 goto .L2106
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2232
.L2106:
	if r0 == 0 goto .L2109
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
	if r2 == 0 goto .L2110
	if r2 == 1 goto .L2189
	if r2 == 2 goto .L2190
	if r2 == 3 goto .L2191
	if r2 == 4 goto .L2192
	if r2 == 5 goto .L2193
	if r2 == 6 goto .L2194
	r0 = *(u32 *) (r8+0)
	r4 += 4
	*(u32 *) (r7+0) = r0
	r1 += 4
.L2194:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2193:
	r0 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r0
	r4 += 4
.L2192:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2191:
	r0 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r0
	r4 += 4
.L2190:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2189:
	r0 = *(u32 *) (r4+0)
	*(u32 *) (r1+0) = r0
	r4 += 4
	r1 += 4
	if r4 == r5 goto .L2109
.L2110:
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
	if r4 != r5 goto .L2110
.L2109:
	if r9 > r3 goto .L2105
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
	if r3 == 0 goto .L2111
	if r3 == 1 goto .L2195
	if r3 == 2 goto .L2196
	if r3 == 3 goto .L2197
	if r3 == 4 goto .L2198
	if r3 == 5 goto .L2199
	if r3 == 6 goto .L2200
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2200:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2199:
	r9 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r9
	r5 += 1
.L2198:
	r3 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r3
	r5 += 1
.L2197:
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2196:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2195:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r9
	r5 += 1
	r1 += 1
	if r5 == r4 goto .L2233
.L2111:
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
	if r5 != r4 goto .L2111
	exit
.L2232:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2105
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2112
	if r3 == 1 goto .L2183
	if r3 == 2 goto .L2184
	if r3 == 3 goto .L2185
	if r3 == 4 goto .L2186
	if r3 == 5 goto .L2187
	if r3 == 6 goto .L2188
	r4 = r8
	r0 = r7
	r4 += r5
	r0 += r5
	r1 = *(u8 *) (r4+0)
	r5 += -1
	*(u8 *) (r0+0) = r1
	r9 = r5
.L2188:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2187:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L2186:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2185:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L2184:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2183:
	r4 = r8
	r0 = r7
	r4 += r9
	r0 += r9
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2234
.L2112:
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
	if r9 != -1 goto .L2112
.L2105:
	exit
.L2233:
	exit
.L2234:
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
	if r0 != 0 goto .L2244
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2243
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2245
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2246
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2247
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2248
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2249
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2250
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2251
	r2 >>= 38
	if r2 != 0 goto .L2252
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2253
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2254
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2255
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2256
	r3 >>= 1
	if r3 != 0 goto .L2257
	r0 = 16
	if r1 != 0 goto .L2260
.L2243:
	exit
.L2244:
	r0 = 0
	exit
.L2255:
	r0 = 12
	exit
.L2260:
	r0 = 15
	exit
.L2245:
	r0 = 2
	exit
.L2246:
	r0 = 3
	exit
.L2247:
	r0 = 4
	exit
.L2248:
	r0 = 5
	exit
.L2249:
	r0 = 6
	exit
.L2250:
	r0 = 7
	exit
.L2251:
	r0 = 8
	exit
.L2252:
	r0 = 9
	exit
.L2253:
	r0 = 10
	exit
.L2254:
	r0 = 11
	exit
.L2256:
	r0 = 13
	exit
.L2257:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2264
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2265
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2266
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2267
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2268
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2269
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2270
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2271
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2272
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2273
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2274
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2275
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2276
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2277
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2278
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2281
	exit
.L2264:
	r0 = 0
	exit
.L2265:
	r0 = 1
	exit
.L2276:
	r0 = 12
	exit
.L2281:
	r0 = 15
	exit
.L2266:
	r0 = 2
	exit
.L2267:
	r0 = 3
	exit
.L2268:
	r0 = 4
	exit
.L2269:
	r0 = 5
	exit
.L2270:
	r0 = 6
	exit
.L2271:
	r0 = 7
	exit
.L2272:
	r0 = 8
	exit
.L2273:
	r0 = 9
	exit
.L2274:
	r0 = 10
	exit
.L2275:
	r0 = 11
	exit
.L2277:
	r0 = 13
	exit
.L2278:
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
	if r0 s>= 0 goto .L2288
	r1 = r6
	call	__fixsfdi
	exit
.L2288:
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
	if r1 == 0 goto .L2294
	r0 = 0
.L2293:
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
	if r3 == 0 goto .L2310
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
	if r1 == 0 goto .L2292
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
	if r2 == 0 goto .L2292
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
	if r1 == 0 goto .L2292
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
	if r2 == 0 goto .L2292
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
	if r3 == 0 goto .L2292
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
	if r1 == 0 goto .L2292
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
	if r1 != 0 goto .L2293
	exit
.L2294:
	r0 = r1
.L2292:
	exit
.L2310:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2314
	if r2 == 0 goto .L2315
	r0 = 0
.L2313:
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
	if r3 == 0 goto .L2331
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
	if r1 == 0 goto .L2312
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
	if r2 == 0 goto .L2312
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
	if r1 == 0 goto .L2312
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
	if r2 == 0 goto .L2312
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
	if r1 == 0 goto .L2312
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
	if r2 == 0 goto .L2312
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
	if r2 != 0 goto .L2313
	exit
.L2315:
	r0 = r2
.L2312:
	exit
.L2314:
	r0 = r1
	exit
.L2331:
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
	if r0 < r2 goto .L2334
	r9 = 32
	r4 = 1
.L2333:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2334
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2335
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2334
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2335
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2334
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2335
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2334
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2335
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2334
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2335
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2334
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2335
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2334
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2335
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2334
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2335
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2333
.L2336:
	if r3 != 0 goto .L2340
	r0 = r9
.L2340:
	exit
.L2335:
	if r4 == 0 goto .L2342
.L2334:
	r9 = 0
.L2339:
	if r2 >= r0 goto .L2338
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2338:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2339
	goto .L2336
.L2342:
	r9 = r4
	goto .L2336
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2364
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2365
	r0 = r8
	r0 &= 1
	exit
.L2365:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2364:
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
	if r3 s>= r0 goto .L2369
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2370
	r0 = r8
	r0 &= 1
	exit
.L2370:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2369:
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
	if r2 s< 0 goto .L2401
	if r3 == 0 goto .L2379
	r4 = 0
.L2375:
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
	if r2 == 0 goto .L2377
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
	if r2 == 0 goto .L2377
	r1 = 30
.L2378:
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
	if r3 == 0 goto .L2377
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
	if r2 == 0 goto .L2377
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
	if r9 == 0 goto .L2377
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
	if r3 == 0 goto .L2377
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
	if r2 == 0 goto .L2377
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2378
.L2377:
	if r4 == 0 goto .L2376
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2379:
	r0 = r3
.L2376:
	exit
.L2401:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2375
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2435
	r0 = 1
	r4 = 0
.L2403:
	if r2 s>= 0 goto .L2404
	r2 = -r2
	r4 = r0
.L2404:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2406
	r0 = 32
	r1 = 1
.L2405:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2406
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2407
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2406
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2407
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2406
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2407
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2406
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2407
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2406
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2407
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2406
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2407
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2406
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2407
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2406
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2407
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2405
.L2408:
	if r4 == 0 goto .L2402
	r0 = -r0
.L2402:
	exit
.L2407:
	if r1 == 0 goto .L2416
.L2406:
	r0 = 0
.L2411:
	if r2 >= r3 goto .L2410
	r3 -= r2
	r5 = r1
	r3 = r3;r3 &= 0xffffffff
	r5 |= r0
	r0 = r5
.L2410:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2411
	goto .L2408
.L2435:
	r1 = -r1
	r0 = 0
	r4 = 1
	goto .L2403
.L2416:
	r0 = r1
	goto .L2408
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2474
	r4 = 0
.L2437:
	if r0 s>= 0 goto .L2438
	r0 = -r0
.L2438:
	r3 = r1;r3 &= 0xffffffff
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2445
	r9 = 32
	r1 = 1
.L2439:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2445
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2473
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2445
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2473
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2445
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2473
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2445
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2473
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2445
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2473
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2445
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2473
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2445
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2473
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2445
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2473
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2439
.L2442:
	r0 = r3
	if r4 == 0 goto .L2436
	r0 = -r0
.L2436:
	exit
.L2473:
	if r1 == 0 goto .L2442
.L2445:
	if r0 >= r3 goto .L2444
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2444:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2445
	goto .L2442
.L2474:
	r1 = -r1
	r4 = 1
	goto .L2437
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r0 < r2 goto .L2590
	r4 = r2
	r1 = 0
	r4 <<= 48
	if r4 s<= r1 goto .L2478
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r4 > r0 goto .L2532
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2480
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r4 > r0 goto .L2533
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2482
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r4 > r0 goto .L2534
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2484
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r4 > r0 goto .L2535
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2486
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r4 > r0 goto .L2536
	r5 = r4
	r5 <<= 48
	if r5 s<= r1 goto .L2488
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r4 > r0 goto .L2537
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2490
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r4 > r0 goto .L2538
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2492
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r4 > r0 goto .L2539
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2494
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r4 > r0 goto .L2540
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2496
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r4 > r0 goto .L2541
	r9 = r4
	r9 <<= 48
	if r9 s<= r1 goto .L2498
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r4 > r0 goto .L2542
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2500
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r4 > r0 goto .L2543
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2502
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r4 > r0 goto .L2544
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2504
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r4 > r0 goto .L2545
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2506
	r1 = r2
	r1 <<= 15
	r1 &= 0xffff
	if r1 > r0 goto .L2507
	if r1 != 0 goto .L2591
.L2508:
	if r3 != 0 goto .L2560
	r0 = r1
	exit
.L2560:
	exit
.L2540:
	r5 = 512
.L2527:
	r9 = r5
	r2 = r4
	r9 >>= 1
	r2 >>= 1
	r1 = 0
.L2528:
	if r2 >= r0 goto .L2510
	r0 -= r2
	r1 |= r9
	r0 &= 0xffff
.L2510:
	r2 = r5
	r9 = r4
	r2 >>= 2
	r9 >>= 2
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2511
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2511:
	r2 = r5
	r9 = r4
	r2 >>= 3
	r9 >>= 3
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2512
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2512:
	r2 = r5
	r9 = r4
	r2 >>= 4
	r9 >>= 4
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2513
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2513:
	r2 = r5
	r9 = r4
	r2 >>= 5
	r9 >>= 5
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2514
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2514:
	r2 = r5
	r9 = r4
	r2 >>= 6
	r9 >>= 6
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2515
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2515:
	r2 = r5
	r9 = r4
	r2 >>= 7
	r9 >>= 7
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2516
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2516:
	r2 = r5
	r9 = r4
	r2 >>= 8
	r9 >>= 8
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2517
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2517:
	r2 = r5
	r9 = r4
	r2 >>= 9
	r9 >>= 9
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2518
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2518:
	r2 = r5
	r9 = r4
	r2 >>= 10
	r9 >>= 10
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2519
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2519:
	r2 = r5
	r9 = r4
	r2 >>= 11
	r9 >>= 11
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2520
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2520:
	r2 = r5
	r9 = r4
	r2 >>= 12
	r9 >>= 12
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2521
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2521:
	r2 = r5
	r9 = r4
	r2 >>= 13
	r9 >>= 13
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2522
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2522:
	r2 = r5
	r9 = r4
	r2 >>= 14
	r9 >>= 14
	if r2 == 0 goto .L2508
	if r9 >= r0 goto .L2523
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2523:
	r4 >>= 15
	if r5 == 16384 goto .L2508
	if r4 >= r0 goto .L2530
	r0 -= r4
	r1 |= 1
	r0 &= 0xffff
	goto .L2508
.L2591:
	r4 = 32768
	r0 += -32768
	r2 = 16384
	r0 &= 0xffff
	r9 = r2
	r5 = r4
	r1 = r4
	goto .L2528
.L2530:
	r0 = 0
	goto .L2508
.L2590:
	if r2 == r0 goto .L2529
	r1 = 0
	goto .L2508
.L2478:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L2508
.L2480:
	r0 -= r4
	r5 = 2
	r0 &= 0xffff
	r2 &= 32767
	r9 = 1
	r1 = r5
	goto .L2528
.L2482:
	r0 -= r4
	r5 = 4
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2
	r1 = r5
	goto .L2528
.L2484:
	r0 -= r4
	r5 = 8
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4
	r1 = r5
	goto .L2528
.L2486:
	r0 -= r4
	r5 = 16
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8
	r1 = r5
	goto .L2528
.L2488:
	r0 -= r4
	r5 = 32
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16
	r1 = r5
	goto .L2528
.L2490:
	r0 -= r4
	r5 = 64
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 32
	r1 = r5
	goto .L2528
.L2492:
	r0 -= r4
	r5 = 128
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 64
	r1 = r5
	goto .L2528
.L2494:
	r0 -= r4
	r5 = 256
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 128
	r1 = r5
	goto .L2528
.L2496:
	r0 -= r4
	r5 = 512
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 256
	r1 = r5
	goto .L2528
.L2529:
	r1 = 1
	r0 = 0
	goto .L2508
.L2532:
	r5 = 2
	goto .L2527
.L2498:
	r0 -= r4
	r5 = 1024
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 512
	r1 = r5
	goto .L2528
.L2533:
	r5 = 4
	goto .L2527
.L2500:
	r0 -= r4
	r5 = 2048
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 1024
	r1 = r5
	goto .L2528
.L2502:
	r0 -= r4
	r5 = 4096
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2048
	r1 = r5
	goto .L2528
.L2534:
	r5 = 8
	goto .L2527
.L2504:
	r0 -= r4
	r5 = 8192
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4096
	r1 = r5
	goto .L2528
.L2535:
	r5 = 16
	goto .L2527
.L2536:
	r5 = 32
	goto .L2527
.L2506:
	r0 -= r4
	r5 = 16384
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8192
	r1 = r5
	goto .L2528
.L2507:
	r2 = r0
	r4 = 32768
	r2 <<= 48
	if r2 s<= 0 goto .L2531
	r5 = r4
	goto .L2527
.L2537:
	r5 = 64
	goto .L2527
.L2538:
	r5 = 128
	goto .L2527
.L2531:
	r0 = 0
	r5 = r4
	r1 = r4
	goto .L2510
.L2539:
	r5 = 256
	goto .L2527
.L2543:
	r5 = 4096
	goto .L2527
.L2544:
	r5 = 8192
	goto .L2527
.L2545:
	r5 = 16384
	goto .L2527
.L2542:
	r5 = 2048
	goto .L2527
.L2541:
	r5 = 1024
	goto .L2527
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r4 = 1
	r3 s>>= 32
	if r1 < r2 goto .L2594
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L2593:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L2594
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2595
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2594
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2595
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2594
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2595
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2594
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2595
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2594
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2595
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2594
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2595
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2594
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2595
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2594
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2595
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2593
.L2596:
	if r3 == 0 goto .L2592
	r5 = r1
.L2592:
	r0 = r5
	exit
.L2595:
	if r4 == 0 goto .L2596
.L2594:
	r5 = 0
.L2599:
	if r2 >= r1 goto .L2598
	r1 -= r2
	r5 |= r4
.L2598:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2599
	goto .L2596
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L2626
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
.L2626:
	if r2 == 0 goto .L2629
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
.L2629:
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
	if r0 == 0 goto .L2631
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L2631:
	if r3 == 0 goto .L2634
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
.L2634:
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
	if r0 == 0 goto .L2636
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
.L2636:
	if r2 == 0 goto .L2639
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
.L2639:
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
	if r0 == 0 goto .L2641
	r4 = r2
	r0 = r2
	r4 s>>= 63
	r3 += -64
	r1 = r4
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L2641:
	if r3 == 0 goto .L2644
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
.L2644:
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
	if r1 <= 65534 goto .L2648
	r0 = 0
.L2648:
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
	if r4 != 0 goto .L2649
	r3 -= r1
	r0 += r9
	r0 += r3
	exit
.L2649:
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
	if r2 == 0 goto .L2652
	r6 = 0
.L2652:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2654
	r0 = 0
.L2654:
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
	if r0 s>= r3 goto .L2665
	if r3 s> r0 goto .L2666
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2665
	if r1 > r2 goto .L2666
	r0 = 1
	exit
.L2665:
	r0 = 0
	exit
.L2666:
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
	if r0 s>= r3 goto .L2672
	if r3 s> r0 goto .L2671
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2672
	r0 = 1
	if r1 <= r2 goto .L2673
	r0 &= 1
	exit
.L2672:
	r0 = -1
	exit
.L2673:
	r0 = 0
	r0 &= 1
	exit
.L2671:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L2678
	if r2 s> r4 goto .L2679
	if r3 >= r1 goto .L2678
	if r1 > r3 goto .L2679
	r0 = 1
	exit
.L2678:
	r0 = 0
	exit
.L2679:
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
	if r1 == 0 goto .L2682
	r6 = 0
.L2682:
	r6 &= 0xff
	if r0 == 0 goto .L2688
	r1 = 0
.L2684:
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
.L2688:
	r1 = r2
	goto .L2684
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2692
	if r2 != 0 goto .L2695
	r0 = r2
	exit
.L2692:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2695:
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
	if r0 == 0 goto .L2697
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
.L2697:
	if r2 == 0 goto .L2700
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
.L2700:
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
	if r0 == 0 goto .L2702
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L2702:
	if r3 == 0 goto .L2705
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
.L2705:
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
	if r1 != 0 goto .L2712
	r3 = r0
.L2712:
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
	if r4 > r1 goto .L2719
	r9 = 0
.L2719:
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
	if r0 >= r4 goto .L2720
	r9 = 0
.L2720:
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
	if r9 >= r2 goto .L2721
	r0 = 0
.L2721:
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
	if r0 == 0 goto .L2723
.L2725:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L2723:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2724
.L2726:
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
	if r4 != 0 goto .L2725
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L2725
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
	if r0 != 0 goto .L2725
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
	if r4 != 0 goto .L2725
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
	if r9 != 0 goto .L2725
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
	if r3 != 0 goto .L2725
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
	if r4 != 0 goto .L2725
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L2725
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L2726
.L2724:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L2722
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L2722:
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
	if r0 == 0 goto .L2732
.L2734:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L2732:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2733
.L2735:
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
	if r4 != 0 goto .L2734
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L2734
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
	if r0 != 0 goto .L2734
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
	if r4 != 0 goto .L2734
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
	if r9 != 0 goto .L2734
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
	if r3 != 0 goto .L2734
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
	if r4 != 0 goto .L2734
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L2734
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L2735
.L2733:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L2731
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L2731:
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
	if r0 >= r3 goto .L2744
	if r3 > r0 goto .L2745
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2744
	if r1 > r2 goto .L2745
	r0 = 1
	exit
.L2744:
	r0 = 0
	exit
.L2745:
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
	if r0 >= r3 goto .L2751
	if r3 > r0 goto .L2750
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2751
	r0 = 1
	if r1 <= r2 goto .L2752
	r0 &= 1
	exit
.L2751:
	r0 = -1
	exit
.L2752:
	r0 = 0
	r0 &= 1
	exit
.L2750:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2757
	if r2 > r4 goto .L2758
	if r3 >= r1 goto .L2757
	if r1 > r3 goto .L2758
	r0 = 1
	exit
.L2757:
	r0 = 0
	exit
.L2758:
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
