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
	if r9 == r1 goto .L378
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
	if r1 s< 0 goto .L737
	exit
.L737:
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
	if r1 s< 0 goto .L741
	exit
.L741:
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
	if r1 s< 0 goto .L745
	exit
.L745:
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
	if r3 == 0 goto .L753
.L748:
	if r2 == r0 goto .L754
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L748
	exit
.L754:
	r0 = r1
	exit
.L753:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L766
.L767:
	if r3 == 0 goto .L757
	if r4 == 0 goto .L757
	r1 += 4
	r2 += 4
.L766:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L767
.L757:
	if r4 s>= r3 goto .L761
	r0 = 1
	if r3 s<= r4 goto .L768
	r0 &= 1
	exit
.L761:
	r0 = -1
	exit
.L768:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L770:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L786
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L786
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L786
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L786
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L786
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L786
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L786
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L770
.L786:
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
	if r2 == 0 goto .L787
	r0 = r1
.L789:
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L806
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if r5 == 0 goto .L806
	r0 = r4
	r9 = *(u32 *) (r4+8)
	r0 += 8
	if r9 == 0 goto .L806
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L806
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L806
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L806
	r0 += 4
	r9 = *(u32 *) (r4+24)
	if r9 == 0 goto .L806
	r0 += 4
	r4 = *(u32 *) (r4+28)
	if r4 != 0 goto .L789
.L806:
	r0 -= r1
	r0 s>>= 2
.L787:
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L814
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L808
	if r0 == 1 goto .L831
	if r0 == 2 goto .L832
	r3 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 <<= 32
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r3 goto .L810
	if r5 == 0 goto .L810
	r3 = r4
	r1 += 4
	r2 += 4
.L832:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L810
	if r9 == 0 goto .L810
	r3 += -1
	r1 += 4
	r2 += 4
.L831:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L810
	if r5 == 0 goto .L810
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L814
.L808:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L810
	if r0 == 0 goto .L810
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
	if r0 != r9 goto .L810
	if r6 == 0 goto .L810
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r9 <<= 32
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	if r0 != r9 goto .L810
	if r6 == 0 goto .L810
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
	if r4 != r5 goto .L810
	if r6 == 0 goto .L810
	r3 += -4
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L808
.L814:
	r0 = 0
	exit
.L810:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r2 s< r1 goto .L842
	r0 = 1
	if r2 s<= r1 goto .L843
	r0 &= 1
	exit
.L842:
	r0 = -1
	exit
.L843:
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
	if r3 == 0 goto .L848
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L845
	if r0 == 1 goto .L885
	if r0 == 2 goto .L886
	if r0 == 3 goto .L887
	if r0 == 4 goto .L888
	if r0 == 5 goto .L889
	if r0 != 6 goto .L903
.L890:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L902
	r3 += -1
	r1 += 4
.L889:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L902
	r3 += -1
	r1 += 4
.L888:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L902
	r3 += -1
	r1 += 4
.L887:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L902
	r3 += -1
	r1 += 4
.L886:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L902
	r3 += -1
	r1 += 4
.L885:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L902
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L848
.L845:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L902
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L902
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L902
	r1 = r5
	r1 += 8
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L902
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L902
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L902
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L902
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L902
	r3 += -8
	r1 += 4
	if r3 != 0 goto .L845
.L848:
	r0 = 0
	exit
.L902:
	r0 = r1
	exit
.L903:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L902
	r3 = r4
	r1 += 4
	goto .L890
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L911
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L905
	if r0 == 1 goto .L948
	if r0 == 2 goto .L949
	if r0 == 3 goto .L950
	if r0 == 4 goto .L951
	if r0 == 5 goto .L952
	if r0 != 6 goto .L967
.L953:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r3 += -1
	r1 += 4
	r2 += 4
.L952:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r3 += -1
	r1 += 4
	r2 += 4
.L951:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r3 += -1
	r1 += 4
	r2 += 4
.L950:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r3 += -1
	r1 += 4
	r2 += 4
.L949:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r3 += -1
	r1 += 4
	r2 += 4
.L948:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L911
.L905:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r4 = *(u32 *) (r1+4)
	r5 = *(u32 *) (r2+4)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r4 = *(u32 *) (r1+8)
	r5 = *(u32 *) (r2+8)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r4 = *(u32 *) (r1+12)
	r5 = *(u32 *) (r2+12)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r4 = *(u32 *) (r1+16)
	r5 = *(u32 *) (r2+16)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r4 = *(u32 *) (r1+20)
	r5 = *(u32 *) (r2+20)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r4 = *(u32 *) (r1+24)
	r5 = *(u32 *) (r2+24)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r4 = *(u32 *) (r1+28)
	r5 = *(u32 *) (r2+28)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L905
.L911:
	r0 = 0
	exit
.L966:
	r4 s>>= 32
	r5 s>>= 32
	if r4 s< r5 goto .L968
	r0 = 1
	if r4 s<= r5 goto .L969
	r0 &= 1
	exit
.L968:
	r0 = -1
	exit
.L969:
	r0 = 0
	r0 &= 1
	exit
.L967:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L966
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L953
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L977
	r5 = r3
	r6 = r3
	r9 = r1
	r4 = r1
	r0 = r2
	r5 += -1
	r6 <<= 2
	r9 -= r2
	if r6 < r9 goto .L1054
	if r3 == 0 goto .L977
	r5 <<= 2
	r9 = r1
	r4 = r5
	r0 += r5
	r4 >>= 2
	r9 += r5
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L975
	if r4 == 1 goto .L1031
	if r4 == 2 goto .L1032
	if r4 == 3 goto .L1033
	if r4 == 4 goto .L1034
	if r4 == 5 goto .L1035
	if r4 != 6 goto .L1055
.L1036:
	r3 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r3
	r0 += -4
.L1035:
	r4 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r4
	r0 += -4
.L1034:
	r5 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r5
	r0 += -4
.L1033:
	r3 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r3
	r0 += -4
.L1032:
	r4 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r4
	r0 += -4
.L1031:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r5
	r3 = r0
	r9 += -4
	r0 += -4
	if r2 == r3 goto .L977
.L975:
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
	if r2 != r3 goto .L975
.L977:
	r0 = r1
	exit
.L1054:
	if r3 == 0 goto .L977
	r3 &= 7
	if r3 == 0 goto .L973
	if r3 == 1 goto .L1025
	if r3 == 2 goto .L1026
	if r3 == 3 goto .L1027
	if r3 == 4 goto .L1028
	if r3 == 5 goto .L1029
	if r3 != 6 goto .L1056
.L1030:
	r2 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1029:
	r3 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1028:
	r9 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1027:
	r2 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1026:
	r3 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1025:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r5 += -1
	r4 += 4
	r0 += 4
	if r5 == -1 goto .L977
.L973:
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
	if r5 != -1 goto .L973
	goto .L977
.L1056:
	r0 = *(u32 *) (r2+0)
	r5 += -1
	*(u32 *) (r1+0) = r0
	r4 += 4
	r0 = r2
	r0 += 4
	goto .L1030
.L1055:
	r5 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r5
	r0 += -4
	goto .L1036
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
	if r3 == 0 goto .L1058
	r4 = r1
	r1 = r3
	r1 &= 7
	if r1 == 0 goto .L1059
	if r1 == 1 goto .L1084
	if r1 == 2 goto .L1085
	if r1 == 3 goto .L1086
	if r1 == 4 goto .L1087
	if r1 == 5 goto .L1088
	if r1 != 6 goto .L1099
.L1089:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1088:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1087:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1086:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1085:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1084:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
	if r5 == -1 goto .L1100
.L1059:
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
	if r5 != -1 goto .L1059
.L1058:
	exit
.L1099:
	r3 += -2
	*(u32 *) (r0+0) = r2
	r5 = r3
	r4 += 4
	goto .L1089
.L1100:
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1102
	r5 = r1
	r2 += r3
	r5 += r3
	if r3 == 0 goto .L1101
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1104
	if r9 == 1 goto .L1154
	if r9 == 2 goto .L1155
	if r9 == 3 goto .L1156
	if r9 == 4 goto .L1157
	if r9 == 5 goto .L1158
	if r9 == 6 goto .L1159
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1159:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1158:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
.L1157:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
.L1156:
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1155:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1154:
	r2 += -1
	r0 = *(u8 *) (r5+-1)
	*(u8 *) (r2+0) = r0
	r5 += -1
	if r1 == r5 goto .L1184
.L1104:
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
	if r1 != r5 goto .L1104
	exit
.L1102:
	if r1 != r2 goto .L1185
.L1101:
	exit
.L1185:
	if r3 == 0 goto .L1101
	r5 = r1
	r9 = r1
	r5 += r3
	r4 = r2
	r3 &= 7
	if r3 == 0 goto .L1105
	if r3 == 1 goto .L1160
	if r3 == 2 goto .L1161
	if r3 == 3 goto .L1162
	if r3 == 4 goto .L1163
	if r3 == 5 goto .L1164
	if r3 != 6 goto .L1186
.L1165:
	r1 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r9 += 1
.L1164:
	r2 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r9 += 1
.L1163:
	r3 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r9 += 1
.L1162:
	r0 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r0
	r9 += 1
.L1161:
	r1 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r9 += 1
.L1160:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
	if r9 == r5 goto .L1187
.L1105:
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
	if r9 != r5 goto .L1105
	goto .L1101
.L1184:
	exit
.L1186:
	r0 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r0
	r9 += 1
	r4 = r2
	goto .L1165
.L1187:
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
.L1204:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1227
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1227
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1227
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1227
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1227
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1227
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1227
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1227
	if r0 != 32 goto .L1204
	r0 = r4
	exit
.L1227:
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
	if r1 == 0 goto .L1230
	r0 &= 1
	if r0 != 0 goto .L1230
	r0 = 1
.L1231:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1249
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1230
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1230
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1230
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1230
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1230
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1230
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1231
	exit
.L1230:
	exit
.L1249:
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
	if r8 s>= r0 goto .L1253
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1254
	r0 = r7
	r0 &= 1
	exit
.L1253:
	r0 = 1
	exit
.L1254:
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
	if r8 s>= r0 goto .L1258
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1259
	r0 = r7
	r0 &= 1
	exit
.L1258:
	r0 = 1
	exit
.L1259:
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
	if r8 s>= r0 goto .L1263
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1264
	r0 = r7
	r0 &= 1
	exit
.L1263:
	r0 = 1
	exit
.L1264:
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
	if r0 != 0 goto .L1267
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1267
	if r6 s< 0 goto .L1283
	r7 = 0x40000000 ll
.L1269:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1270
.L1271:
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1270:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1267
.L1272:
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
	if r3 != 0 goto .L1271
	r4 s>>= 1
	r6 = r4
	call	__mulsf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1271
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
	if r0 != 0 goto .L1271
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
	if r3 != 0 goto .L1271
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
	if r9 != 0 goto .L1271
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
	if r4 != 0 goto .L1271
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
	if r3 != 0 goto .L1271
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1271
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1272
.L1267:
	r0 = r8
	exit
.L1283:
	r7 = 0x3f000000 ll
	goto .L1269
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
	if r0 != 0 goto .L1285
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1285
	if r6 s< 0 goto .L1301
	r7 = 0x4000000000000000 ll
.L1287:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1288
.L1289:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1288:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1285
.L1290:
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
	if r3 != 0 goto .L1289
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1289
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
	if r0 != 0 goto .L1289
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
	if r3 != 0 goto .L1289
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
	if r9 != 0 goto .L1289
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
	if r4 != 0 goto .L1289
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
	if r3 != 0 goto .L1289
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1289
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1290
.L1285:
	r0 = r8
	exit
.L1301:
	r7 = 0x3fe0000000000000 ll
	goto .L1287
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
	if r0 != 0 goto .L1303
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1303
	if r6 s< 0 goto .L1319
	r7 = 0x4000000000000000 ll
.L1305:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1306
.L1307:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1306:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1303
.L1308:
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
	if r3 != 0 goto .L1307
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1307
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
	if r0 != 0 goto .L1307
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
	if r3 != 0 goto .L1307
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
	if r9 != 0 goto .L1307
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
	if r4 != 0 goto .L1307
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
	if r3 != 0 goto .L1307
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1307
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1308
.L1303:
	r0 = r8
	exit
.L1319:
	r7 = 0x3fe0000000000000 ll
	goto .L1305
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1321
	r4 = r2
	r0 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1322
	if r3 == 1 goto .L1347
	if r3 == 2 goto .L1348
	if r3 == 3 goto .L1349
	if r3 == 4 goto .L1350
	if r3 == 5 goto .L1351
	if r3 != 6 goto .L1362
.L1352:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r3
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1351:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r5
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1350:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r9
	r2 += 1
	*(u8 *) (r0+-1) = r3
.L1349:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r0+-1) = r3
.L1348:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r3
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1347:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	if r2 == r4 goto .L1321
.L1322:
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
	if r2 != r4 goto .L1322
.L1321:
	r0 = r1
	exit
.L1362:
	r3 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r1+0) = r3
	goto .L1352
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1370
	r0 = r1
.L1365:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1364
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1364
	r0 = r4
	r5 = *(u8 *) (r4+2)
	r0 += 2
	if r5 == 0 goto .L1364
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1364
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1364
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1364
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1364
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1365
.L1364:
	if r3 == 0 goto .L1367
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1366
	if r5 == 1 goto .L1418
	if r5 == 2 goto .L1419
	if r5 == 3 goto .L1420
	if r5 == 4 goto .L1421
	if r5 == 5 goto .L1422
	if r5 != 6 goto .L1440
.L1423:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1369
	r2 += 1
	r0 += 1
	r3 += -1
.L1422:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1369
	r2 += 1
	r0 += 1
	r3 += -1
.L1421:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1369
	r2 += 1
	r0 += 1
	r3 += -1
.L1420:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1369
	r2 += 1
	r0 += 1
	r3 += -1
.L1419:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1369
	r2 += 1
	r0 += 1
	r3 += -1
.L1418:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1369
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1367
.L1366:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1369
	r9 = *(u8 *) (r2+1)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1369
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1369
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1369
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1369
	r5 = *(u8 *) (r2+5)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1369
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1369
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1369
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1366
.L1367:
	*(u8 *) (r0+0) = 0
.L1369:
	r0 = r1
	exit
.L1440:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1369
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1423
.L1370:
	r0 = r1
	goto .L1364
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1441
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1442
	if r0 == 1 goto .L1483
	if r0 == 2 goto .L1484
	if r0 == 3 goto .L1485
	if r0 == 4 goto .L1486
	if r0 == 5 goto .L1487
	if r0 != 6 goto .L1497
.L1488:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1441
	r3 += 1
.L1487:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1498
.L1441:
	r0 = r3
	exit
.L1497:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1441
	r3 = 1
	goto .L1488
.L1498:
	r3 += 1
.L1486:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1441
	r3 += 1
.L1485:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1441
	r3 += 1
.L1484:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1441
	r3 += 1
.L1483:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1441
	r3 += 1
	if r2 == r3 goto .L1441
.L1442:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1441
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1441
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1441
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1441
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1441
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1441
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1441
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1441
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1442
	goto .L1441
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1504
.L1508:
	r3 = r2
	goto .L1503
.L1502:
	r3 += 1
	if r4 == r5 goto .L1501
.L1503:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1502
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1508
.L1504:
	r1 = r5
.L1501:
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
.L1511:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1510
	r3 = r1
.L1510:
	r1 += 1
	if r0 != 0 goto .L1511
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
	if r0 == 0 goto .L1655
	r0 = r2
.L1515:
	r0 += 1
	r3 = r0
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1624
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1624
	r0 = r3
	r4 = *(u8 *) (r3+2)
	r0 += 2
	if r4 == 0 goto .L1624
	r0 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1624
	r0 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1624
	r0 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1624
	r0 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1624
	r0 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1515
.L1624:
	r4 = r0
	r4 -= r2
	if r0 == r2 goto .L1655
	r4 += -1
	r9 = r5;r9 &= 0xff
	r8 = r4
	r7 = r1
	goto .L1521
.L1657:
	r7 += 1
	if r0 == 0 goto .L1656
.L1521:
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L1657
	r1 = r7
	r1 += r8
	*(u64 *) (r10+-8) = r1
	r4 = r8
	r0 = r9
	r6 = r2
	r3 = r7
	r4 &= 7
	if r4 == 0 goto .L1628
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L1518
	if r3 != r9 goto .L1518
	r3 = r7
	r6 += 1
	r3 += 1
	r0 = *(u8 *) (r7+1)
	if r0 == 0 goto .L1518
	if r4 == 1 goto .L1628
	if r4 == 2 goto .L1574
	if r4 == 3 goto .L1575
	if r4 == 4 goto .L1576
	if r4 == 5 goto .L1577
	if r4 == 6 goto .L1578
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1518
	if r1 != r0 goto .L1518
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1518
.L1578:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1518
	if r4 != r0 goto .L1518
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1518
.L1577:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1518
	if r1 != r0 goto .L1518
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1518
.L1576:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1518
	if r4 != r0 goto .L1518
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1518
.L1575:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1518
	if r1 != r0 goto .L1518
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1518
.L1574:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1518
	if r4 != r0 goto .L1518
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1518
.L1628:
	*(u64 *) (r10+-16) = r7
.L1517:
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1648
	r1 = *(u64 *) (r10+-8)
	if r1 == r3 goto .L1648
	if r7 != r0 goto .L1648
	r6 += 1
	r4 = r3
	r1 = r6
	r4 += 1
	r0 = *(u8 *) (r3+1)
	if r0 == 0 goto .L1648
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1648
	if r7 != r0 goto .L1648
	r6 += 1
	r0 = *(u8 *) (r3+2)
	if r0 == 0 goto .L1648
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1648
	if r7 != r0 goto .L1648
	r6 = r1
	r0 = *(u8 *) (r3+3)
	r6 += 2
	if r0 == 0 goto .L1648
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1648
	if r3 != r0 goto .L1648
	r6 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L1648
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1648
	if r7 != r0 goto .L1648
	r6 += 1
	r0 = *(u8 *) (r4+4)
	if r0 == 0 goto .L1648
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1648
	if r3 != r0 goto .L1648
	r6 += 1
	r0 = *(u8 *) (r4+5)
	if r0 == 0 goto .L1648
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1648
	if r7 != r0 goto .L1648
	r6 += 1
	r0 = *(u8 *) (r4+6)
	if r0 == 0 goto .L1648
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1648
	if r3 != r0 goto .L1648
	r3 = r4
	r1 += 7
	r3 += 7
	r6 = r1
	r0 = *(u8 *) (r4+7)
	if r0 != 0 goto .L1517
.L1648:
	r7 = *(u64 *) (r10+-16)
.L1518:
	r4 = *(u8 *) (r6+0)
	if r4 == r0 goto .L1524
	r7 += 1
	goto .L1521
.L1656:
	exit
.L1524:
	r1 = r7
.L1655:
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
	if r8 s>= r0 goto .L1668
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1662
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L1661
.L1662:
	r0 = r6
	exit
.L1668:
	r1 = r7
	call	__gtdf2
	if r0 s<= r8 goto .L1662
.L1661:
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
	if r4 == 0 goto .L1675
	if r4 >= r2 goto .L1677
	r2 -= r4
	r6 = r1
	r6 += r2
	if r1 > r6 goto .L1677
	r5 = *(u8 *) (r3+0)
	r3 = r1
	r5 <<= 56
	r3 += r4
	r5 s>>= 56
	goto .L1674
.L1671:
	r3 += 1
	if r6 < r1 goto .L1677
.L1674:
	r0 = *(u8 *) (r1+0)
	r9 = r1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	if r0 != r5 goto .L1671
	r2 = *(u64 *) (r10+-8)
	r2 += 1
	if r4 == 1 goto .L1669
	r7 = r3
	r0 = r1
	r7 -= r1
	r7 &= 7
	if r7 == 0 goto .L1672
	if r7 == 1 goto .L1714
	if r7 == 2 goto .L1715
	if r7 == 3 goto .L1716
	if r7 == 4 goto .L1717
	if r7 == 5 goto .L1718
	if r7 != 6 goto .L1736
.L1719:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1671
	r0 += 1
	r2 += 1
.L1718:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1671
	r0 += 1
	r2 += 1
.L1717:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1671
	r0 += 1
	r2 += 1
.L1716:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1671
	r0 += 1
	r2 += 1
.L1715:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1671
	r0 += 1
	r2 += 1
.L1714:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1671
	r0 += 1
	r2 += 1
	if r0 == r3 goto .L1669
.L1672:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1671
	r8 = *(u8 *) (r0+1)
	r7 = *(u8 *) (r2+1)
	if r8 != r7 goto .L1671
	r8 = *(u8 *) (r0+2)
	r7 = *(u8 *) (r2+2)
	if r8 != r7 goto .L1671
	r8 = *(u8 *) (r0+3)
	r7 = *(u8 *) (r2+3)
	if r8 != r7 goto .L1671
	r8 = *(u8 *) (r0+4)
	r7 = *(u8 *) (r2+4)
	if r8 != r7 goto .L1671
	r8 = *(u8 *) (r0+5)
	r7 = *(u8 *) (r2+5)
	if r8 != r7 goto .L1671
	r8 = *(u8 *) (r0+6)
	r7 = *(u8 *) (r2+6)
	if r8 != r7 goto .L1671
	r8 = *(u8 *) (r0+7)
	r7 = *(u8 *) (r2+7)
	if r8 != r7 goto .L1671
	r0 += 8
	r2 += 8
	if r0 != r3 goto .L1672
.L1669:
	r0 = r9
	exit
.L1677:
	r9 = 0
	r0 = r9
	exit
.L1736:
	r7 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r7 != r0 goto .L1671
	r0 = r1
	r2 += 1
	r0 += 1
	goto .L1719
.L1675:
	r9 = r1
	r0 = r9
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
	if r7 s>= r0 goto .L1771
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1772
	*(u64 *) (r10+-16) = r7
.L1740:
	r8 = 0
	r7 = 0x3fe0000000000000 ll
.L1746:
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
	if r0 s< 0 goto .L1747
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
	if r3 s< 0 goto .L1747
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
	if r0 s< 0 goto .L1747
	r5 s>>= 32
	r8 = r5
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r6 = r0
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L1746
.L1747:
	r2 = *(u64 *) (r10+-8)
	*(u32 *) (r2+0) = r8
	r1 = *(u64 *) (r10+-16)
	if r1 == 0 goto .L1753
	r9 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r9
	exit
.L1772:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r7 s< r0 goto .L1743
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1752
.L1743:
	r0 = *(u64 *) (r10+-8)
	*(u32 *) (r0+0) = 0
	r0 = r6
	exit
.L1771:
	r3 = -9223372036854775808 ll
	r1 = r6
	r1 ^= r3
	r2 = 0xbff0000000000000 ll
	*(u64 *) (r10+-24) = r1
	r1 = r6
	call	__ledf2
	if r7 s<= r0 goto .L1773
	r6 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-16) = 1
	goto .L1740
.L1753:
	r0 = r6
	exit
.L1773:
	r2 = 0xbfe0000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s> r7 goto .L1750
	*(u32 *) (r8+0) = r7
	r0 = r6
	exit
.L1750:
	*(u64 *) (r10+-16) = 1
.L1741:
	r8 = 0
	r6 = *(u64 *) (r10+-24)
	r7 = r8
.L1748:
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
	if r7 s< r0 goto .L1747
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
	if r7 s< r9 goto .L1747
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
	if r7 s< r0 goto .L1747
	r4 s>>= 32
	r8 = r4
	call	__adddf3
	r2 = 0x3fe0000000000000 ll
	r6 = r0
	r1 = r0
	call	__ltdf2
	if r7 s>= r0 goto .L1748
	goto .L1747
.L1752:
	*(u64 *) (r10+-24) = r6
	*(u64 *) (r10+-16) = r7
	goto .L1741
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L1777
	r0 = 0
.L1776:
	r5 = r2
	r1 = r3
	r4 = r3
	r5 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L1793
	r9 = r5
	r2 = r3
	r1 &= 1
	r9 += r5
	r1 = -r1
	r2 >>= 2
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L1774
	r5 = r9
	r1 = r3
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 3
	r2 &= r9
	r0 += r2
	if r1 == 0 goto .L1774
	r4 = r5
	r9 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r9 >>= 4
	r1 &= r5
	r0 += r1
	if r9 == 0 goto .L1774
	r5 = r4
	r1 = r3
	r9 &= 1
	r5 += r4
	r9 = -r9
	r1 >>= 5
	r9 &= r4
	r0 += r9
	if r1 == 0 goto .L1774
	r4 = r5
	r2 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r2 >>= 6
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L1774
	r9 = r4
	r5 = r3
	r2 &= 1
	r9 += r4
	r2 = -r2
	r5 >>= 7
	r2 &= r4
	r0 += r2
	if r5 == 0 goto .L1774
	r5 &= 1
	r2 = r9
	r5 = -r5
	r2 += r9
	r5 &= r9
	r3 >>= 8
	r0 += r5
	if r3 != 0 goto .L1776
	exit
.L1777:
	r0 = r1
.L1774:
	exit
.L1793:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1796
	r9 = 32
	r4 = 1
.L1795:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1796
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1829
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1796
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1829
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1796
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1829
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1796
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1829
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1796
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1829
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1796
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1829
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1796
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1829
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1796
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1829
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1795
.L1798:
	if r3 != 0 goto .L1802
	r0 = r9
.L1802:
	exit
.L1829:
	r9 = r4
	if r4 == 0 goto .L1798
.L1796:
	r9 = 0
.L1801:
	if r2 >= r0 goto .L1800
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L1800:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L1801
	goto .L1798
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
	if r2 == r1 goto .L1832
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
.L1832:
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
	if r0 == r2 goto .L1835
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L1835:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1839
	r0 = 0
.L1838:
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
	if r3 == 0 goto .L1855
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
	if r1 == 0 goto .L1837
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
	if r2 == 0 goto .L1837
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
	if r1 == 0 goto .L1837
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
	if r2 == 0 goto .L1837
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
	if r3 == 0 goto .L1837
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
	if r1 == 0 goto .L1837
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
	if r1 != 0 goto .L1838
	exit
.L1839:
	r0 = r1
.L1837:
	exit
.L1855:
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
	if r2 >= r1 goto .L1857
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L1983
.L1857:
	if r0 == 0 goto .L1860
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
	if r2 == 0 goto .L1861
	if r2 == 1 goto .L1940
	if r2 == 2 goto .L1941
	if r2 == 3 goto .L1942
	if r2 == 4 goto .L1943
	if r2 == 5 goto .L1944
	if r2 == 6 goto .L1945
	r0 = *(u64 *) (r8+0)
	r4 += 8
	*(u64 *) (r7+0) = r0
	r1 += 8
.L1945:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1944:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L1943:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1942:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L1941:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1940:
	r0 = *(u64 *) (r4+0)
	*(u64 *) (r1+0) = r0
	r4 += 8
	r1 += 8
	if r4 == r5 goto .L1860
.L1861:
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
	if r4 != r5 goto .L1861
.L1860:
	if r9 > r3 goto .L1856
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
	if r3 == 0 goto .L1862
	if r3 == 1 goto .L1946
	if r3 == 2 goto .L1947
	if r3 == 3 goto .L1948
	if r3 == 4 goto .L1949
	if r3 == 5 goto .L1950
	if r3 == 6 goto .L1951
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L1951:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L1950:
	r9 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r9
	r5 += 1
.L1949:
	r3 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r3
	r5 += 1
.L1948:
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L1947:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L1946:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r9
	r5 += 1
	r1 += 1
	if r5 == r4 goto .L1984
.L1862:
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
	if r5 != r4 goto .L1862
	exit
.L1983:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1856
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1863
	if r3 == 1 goto .L1934
	if r3 == 2 goto .L1935
	if r3 == 3 goto .L1936
	if r3 == 4 goto .L1937
	if r3 == 5 goto .L1938
	if r3 == 6 goto .L1939
	r4 = r8
	r0 = r7
	r4 += r5
	r0 += r5
	r1 = *(u8 *) (r4+0)
	r5 += -1
	*(u8 *) (r0+0) = r1
	r9 = r5
.L1939:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1938:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L1937:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1936:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L1935:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1934:
	r4 = r8
	r0 = r7
	r4 += r9
	r0 += r9
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L1985
.L1863:
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
	if r9 != -1 goto .L1863
.L1856:
	exit
.L1984:
	exit
.L1985:
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
	if r2 >= r1 goto .L1987
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2078
.L1987:
	if r0 == 0 goto .L1990
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
	if r5 == 0 goto .L1991
	if r5 == 1 goto .L2050
	if r5 == 2 goto .L2051
	if r5 == 3 goto .L2052
	if r5 == 4 goto .L2053
	if r5 == 5 goto .L2054
	if r5 == 6 goto .L2055
	r0 = *(u16 *) (r8+0)
	r4 += 2
	*(u16 *) (r7+0) = r0
	r1 += 2
.L2055:
	r2 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r4 += 2
.L2054:
	r5 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r5
	r4 += 2
.L2053:
	r0 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r0
	r4 += 2
.L2052:
	r2 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r4 += 2
.L2051:
	r5 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r5
	r4 += 2
.L2050:
	r0 = *(u16 *) (r4+0)
	*(u16 *) (r1+0) = r0
	r4 += 2
	r1 += 2
	if r4 == r9 goto .L1990
.L1991:
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
	if r4 != r9 goto .L1991
.L1990:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1986
	r3 += -1
	r4 = r8
	r3 = r3;r3 &= 0xffffffff
	r0 = r7
	r4 += r3
	r0 += r3
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	exit
.L2078:
	r2 = r3
	r2 += -1
	r4 = r2;r4 &= 0xffffffff
	r9 = r4
	if r3 == 0 goto .L1986
	r5 = r4
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1993
	if r5 == 1 goto .L2044
	if r5 == 2 goto .L2045
	if r5 == 3 goto .L2046
	if r5 == 4 goto .L2047
	if r5 == 5 goto .L2048
	if r5 == 6 goto .L2049
	r3 = r8
	r0 = r7
	r3 += r4
	r0 += r4
	r1 = *(u8 *) (r3+0)
	r4 += -1
	*(u8 *) (r0+0) = r1
	r9 = r4
.L2049:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2048:
	r3 = r7
	r0 = r8
	r3 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r1
.L2047:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2046:
	r3 = r7
	r0 = r8
	r3 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r1
.L2045:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2044:
	r3 = r8
	r0 = r7
	r3 += r9
	r0 += r9
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2079
.L1993:
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
	if r9 != -1 goto .L1993
.L1986:
	exit
.L2079:
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
	if r2 >= r1 goto .L2081
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2207
.L2081:
	if r0 == 0 goto .L2084
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
	if r2 == 0 goto .L2085
	if r2 == 1 goto .L2164
	if r2 == 2 goto .L2165
	if r2 == 3 goto .L2166
	if r2 == 4 goto .L2167
	if r2 == 5 goto .L2168
	if r2 == 6 goto .L2169
	r0 = *(u32 *) (r8+0)
	r4 += 4
	*(u32 *) (r7+0) = r0
	r1 += 4
.L2169:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2168:
	r0 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r0
	r4 += 4
.L2167:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2166:
	r0 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r0
	r4 += 4
.L2165:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2164:
	r0 = *(u32 *) (r4+0)
	*(u32 *) (r1+0) = r0
	r4 += 4
	r1 += 4
	if r4 == r5 goto .L2084
.L2085:
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
	if r4 != r5 goto .L2085
.L2084:
	if r9 > r3 goto .L2080
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
	if r3 == 0 goto .L2086
	if r3 == 1 goto .L2170
	if r3 == 2 goto .L2171
	if r3 == 3 goto .L2172
	if r3 == 4 goto .L2173
	if r3 == 5 goto .L2174
	if r3 == 6 goto .L2175
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2175:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2174:
	r9 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r9
	r5 += 1
.L2173:
	r3 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r3
	r5 += 1
.L2172:
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2171:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2170:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r9
	r5 += 1
	r1 += 1
	if r5 == r4 goto .L2208
.L2086:
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
	if r5 != r4 goto .L2086
	exit
.L2207:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2080
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2087
	if r3 == 1 goto .L2158
	if r3 == 2 goto .L2159
	if r3 == 3 goto .L2160
	if r3 == 4 goto .L2161
	if r3 == 5 goto .L2162
	if r3 == 6 goto .L2163
	r4 = r8
	r0 = r7
	r4 += r5
	r0 += r5
	r1 = *(u8 *) (r4+0)
	r5 += -1
	*(u8 *) (r0+0) = r1
	r9 = r5
.L2163:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2162:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L2161:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2160:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L2159:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2158:
	r4 = r8
	r0 = r7
	r4 += r9
	r0 += r9
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2209
.L2087:
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
	if r9 != -1 goto .L2087
.L2080:
	exit
.L2208:
	exit
.L2209:
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
	if r0 != 0 goto .L2219
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2218
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2220
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2221
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2222
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2223
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2224
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2225
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2226
	r2 >>= 38
	if r2 != 0 goto .L2227
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2228
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2229
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2230
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2231
	r3 >>= 1
	if r3 != 0 goto .L2232
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L2235
.L2218:
	exit
.L2219:
	r0 = 0
	exit
.L2230:
	r0 = 12
	exit
.L2235:
	r0 = 15
	exit
.L2220:
	r0 = 2
	exit
.L2221:
	r0 = 3
	exit
.L2222:
	r0 = 4
	exit
.L2223:
	r0 = 5
	exit
.L2224:
	r0 = 6
	exit
.L2225:
	r0 = 7
	exit
.L2226:
	r0 = 8
	exit
.L2227:
	r0 = 9
	exit
.L2228:
	r0 = 10
	exit
.L2229:
	r0 = 11
	exit
.L2231:
	r0 = 13
	exit
.L2232:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2239
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2240
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2241
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2242
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2243
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2244
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2245
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2246
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2247
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2248
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2249
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2250
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2251
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2252
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2253
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2256
	exit
.L2239:
	r0 = 0
	exit
.L2240:
	r0 = 1
	exit
.L2251:
	r0 = 12
	exit
.L2256:
	r0 = 15
	exit
.L2241:
	r0 = 2
	exit
.L2242:
	r0 = 3
	exit
.L2243:
	r0 = 4
	exit
.L2244:
	r0 = 5
	exit
.L2245:
	r0 = 6
	exit
.L2246:
	r0 = 7
	exit
.L2247:
	r0 = 8
	exit
.L2248:
	r0 = 9
	exit
.L2249:
	r0 = 10
	exit
.L2250:
	r0 = 11
	exit
.L2252:
	r0 = 13
	exit
.L2253:
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
	if r0 s>= 0 goto .L2263
	r1 = r6
	call	__fixsfdi
	exit
.L2263:
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
	if r1 == 0 goto .L2269
	r0 = 0
.L2268:
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
	if r3 == 0 goto .L2285
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
	if r1 == 0 goto .L2267
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
	if r2 == 0 goto .L2267
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
	if r1 == 0 goto .L2267
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
	if r2 == 0 goto .L2267
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
	if r3 == 0 goto .L2267
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
	if r1 == 0 goto .L2267
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
	if r1 != 0 goto .L2268
	exit
.L2269:
	r0 = r1
.L2267:
	exit
.L2285:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2289
	if r2 == 0 goto .L2290
	r0 = 0
.L2288:
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
	if r3 == 0 goto .L2306
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
	if r1 == 0 goto .L2287
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
	if r2 == 0 goto .L2287
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
	if r1 == 0 goto .L2287
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
	if r2 == 0 goto .L2287
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
	if r1 == 0 goto .L2287
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
	if r2 == 0 goto .L2287
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
	if r2 != 0 goto .L2288
	exit
.L2290:
	r0 = r2
.L2287:
	exit
.L2289:
	r0 = r1
	exit
.L2306:
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
	if r0 < r2 goto .L2309
	r9 = 32
	r4 = 1
.L2308:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2309
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2342
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2309
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2342
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2309
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2342
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2309
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2342
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2309
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2342
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2309
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2342
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2309
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2342
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2309
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2342
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2308
.L2311:
	if r3 != 0 goto .L2315
	r0 = r9
.L2315:
	exit
.L2342:
	r9 = r4
	if r4 == 0 goto .L2311
.L2309:
	r9 = 0
.L2314:
	if r2 >= r0 goto .L2313
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2313:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2314
	goto .L2311
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2346
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2347
	r0 = r8
	r0 &= 1
	exit
.L2347:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2346:
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
	if r3 s>= r0 goto .L2351
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2352
	r0 = r8
	r0 &= 1
	exit
.L2352:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2351:
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
	if r2 s< 0 goto .L2383
	if r3 == 0 goto .L2361
	r4 = 0
.L2357:
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
	if r2 == 0 goto .L2359
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
	if r2 == 0 goto .L2359
	r1 = 30
.L2360:
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
	if r3 == 0 goto .L2359
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
	if r2 == 0 goto .L2359
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
	if r9 == 0 goto .L2359
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
	if r3 == 0 goto .L2359
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
	if r2 == 0 goto .L2359
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2360
.L2359:
	if r4 == 0 goto .L2358
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2361:
	r0 = r3
.L2358:
	exit
.L2383:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2357
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2417
	r4 = 0
.L2385:
	if r2 s>= 0 goto .L2386
	r2 = -r2
	r4 ^= 1
.L2386:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2388
	r0 = 32
	r1 = 1
.L2387:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2388
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2389
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 <<= 32
	if r9 s< 0 goto .L2388
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2389
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2388
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2389
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2388
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2389
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2388
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2389
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2388
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2389
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2388
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2389
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2388
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2389
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	if r0 != 0 goto .L2387
.L2390:
	if r4 == 0 goto .L2384
	r0 = -r0
.L2384:
	exit
.L2389:
	if r1 == 0 goto .L2398
.L2388:
	r0 = 0
.L2393:
	if r2 >= r3 goto .L2392
	r3 -= r2
	r5 = r1
	r3 = r3;r3 &= 0xffffffff
	r5 |= r0
	r0 = r5
.L2392:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2393
	goto .L2390
.L2417:
	r1 = -r1
	r4 = 1
	goto .L2385
.L2398:
	r0 = r1
	goto .L2390
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2456
	r4 = 0
.L2419:
	if r0 s>= 0 goto .L2420
	r0 = -r0
.L2420:
	r3 = r1;r3 &= 0xffffffff
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2427
	r9 = 32
	r1 = 1
.L2421:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2427
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2455
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2427
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2455
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2427
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2455
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2427
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2455
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2427
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2455
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2427
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2455
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2427
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2455
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2427
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2455
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2421
.L2424:
	r0 = r3
	if r4 == 0 goto .L2418
	r0 = -r0
.L2418:
	exit
.L2455:
	if r1 == 0 goto .L2424
.L2427:
	if r0 >= r3 goto .L2426
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2426:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2427
	goto .L2424
.L2456:
	r1 = -r1
	r4 = 1
	goto .L2419
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r2 >= r0 goto .L2458
	r4 = r2
	r1 = 0
	r4 <<= 48
	if r4 s<= r1 goto .L2459
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r4 > r0 goto .L2526
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2461
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r4 > r0 goto .L2525
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2463
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r4 > r0 goto .L2524
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2465
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r4 > r0 goto .L2523
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2467
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r4 > r0 goto .L2522
	r5 = r4
	r5 <<= 48
	if r5 s<= r1 goto .L2469
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r4 > r0 goto .L2521
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2471
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r4 > r0 goto .L2520
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2473
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r4 > r0 goto .L2519
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2475
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r4 > r0 goto .L2518
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2477
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r4 > r0 goto .L2517
	r9 = r4
	r9 <<= 48
	if r9 s<= r1 goto .L2479
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r4 > r0 goto .L2516
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2481
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r4 > r0 goto .L2515
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2483
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r4 > r0 goto .L2514
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2485
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r4 > r0 goto .L2513
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2487
	r2 <<= 15
	r4 = r2;r4 &= 0xffff
	if r4 > r0 goto .L2512
	if r4 != r1 goto .L2569
.L2489:
	if r3 != 0 goto .L2541
	r0 = r1
	exit
.L2541:
	exit
.L2518:
	r5 = 512
.L2491:
	r9 = r5
	r2 = r4
	r9 >>= 1
	r2 >>= 1
	r1 = 0
.L2493:
	if r2 >= r0 goto .L2492
	r0 -= r2
	r1 |= r9
	r0 &= 0xffff
.L2492:
	r2 = r5
	r9 = r4
	r2 >>= 2
	r9 >>= 2
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2495
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2495:
	r2 = r5
	r9 = r4
	r2 >>= 3
	r9 >>= 3
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2496
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2496:
	r2 = r5
	r9 = r4
	r2 >>= 4
	r9 >>= 4
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2497
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2497:
	r2 = r5
	r9 = r4
	r2 >>= 5
	r9 >>= 5
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2498
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2498:
	r2 = r5
	r9 = r4
	r2 >>= 6
	r9 >>= 6
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2499
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2499:
	r2 = r5
	r9 = r4
	r2 >>= 7
	r9 >>= 7
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2500
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2500:
	r2 = r5
	r9 = r4
	r2 >>= 8
	r9 >>= 8
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2501
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2501:
	r2 = r5
	r9 = r4
	r2 >>= 9
	r9 >>= 9
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2502
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2502:
	r2 = r5
	r9 = r4
	r2 >>= 10
	r9 >>= 10
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2503
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2503:
	r2 = r5
	r9 = r4
	r2 >>= 11
	r9 >>= 11
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2504
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2504:
	r2 = r5
	r9 = r4
	r2 >>= 12
	r9 >>= 12
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2505
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2505:
	r2 = r5
	r9 = r4
	r2 >>= 13
	r9 >>= 13
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2506
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2506:
	r2 = r5
	r9 = r4
	r2 >>= 14
	r9 >>= 14
	if r2 == 0 goto .L2489
	if r9 >= r0 goto .L2507
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2507:
	r4 >>= 15
	r5 >>= 15
	if r5 == 0 goto .L2489
	if r4 >= r0 goto .L2489
	r0 -= r4
	r1 |= 1
	r0 &= 0xffff
	goto .L2489
.L2569:
	r0 -= r4
	r5 = 32768
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16384
	r1 = r5
	goto .L2493
.L2458:
	if r2 == r0 goto .L2527
	r1 = 0
	goto .L2489
.L2459:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L2489
.L2461:
	r0 -= r4
	r5 = 2
	r0 &= 0xffff
	r2 &= 32767
	r9 = 1
	r1 = r5
	goto .L2493
.L2463:
	r0 -= r4
	r5 = 4
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2
	r1 = r5
	goto .L2493
.L2465:
	r0 -= r4
	r5 = 8
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4
	r1 = r5
	goto .L2493
.L2467:
	r0 -= r4
	r5 = 16
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8
	r1 = r5
	goto .L2493
.L2469:
	r0 -= r4
	r5 = 32
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16
	r1 = r5
	goto .L2493
.L2471:
	r0 -= r4
	r5 = 64
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 32
	r1 = r5
	goto .L2493
.L2473:
	r0 -= r4
	r5 = 128
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 64
	r1 = r5
	goto .L2493
.L2475:
	r0 -= r4
	r5 = 256
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 128
	r1 = r5
	goto .L2493
.L2477:
	r0 -= r4
	r5 = 512
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 256
	r1 = r5
	goto .L2493
.L2527:
	r1 = 1
	r0 = 0
	goto .L2489
.L2479:
	r0 -= r4
	r5 = 1024
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 512
	r1 = r5
	goto .L2493
.L2481:
	r0 -= r4
	r5 = 2048
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 1024
	r1 = r5
	goto .L2493
.L2483:
	r0 -= r4
	r5 = 4096
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2048
	r1 = r5
	goto .L2493
.L2485:
	r0 -= r4
	r5 = 8192
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4096
	r1 = r5
	goto .L2493
.L2523:
	r5 = 16
	goto .L2491
.L2522:
	r5 = 32
	goto .L2491
.L2487:
	r0 -= r4
	r5 = 16384
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8192
	r1 = r5
	goto .L2493
.L2521:
	r5 = 64
	goto .L2491
.L2520:
	r5 = 128
	goto .L2491
.L2519:
	r5 = 256
	goto .L2491
.L2517:
	r5 = 1024
	goto .L2491
.L2524:
	r5 = 8
	goto .L2491
.L2516:
	r5 = 2048
	goto .L2491
.L2515:
	r5 = 4096
	goto .L2491
.L2514:
	r5 = 8192
	goto .L2491
.L2513:
	r5 = 16384
	goto .L2491
.L2512:
	r5 = 32768
	goto .L2491
.L2526:
	r5 = 2
	goto .L2491
.L2525:
	r5 = 4
	goto .L2491
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r4 = 1
	r3 s>>= 32
	if r1 < r2 goto .L2572
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L2571:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L2572
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2606
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2572
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2606
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2572
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2606
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2572
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2606
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2572
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2606
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2572
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2606
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2572
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2606
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2572
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2606
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2571
.L2574:
	if r3 == 0 goto .L2570
	r5 = r1
.L2570:
	r0 = r5
	exit
.L2606:
	if r4 == 0 goto .L2574
.L2572:
	r5 = 0
.L2577:
	if r2 >= r1 goto .L2576
	r1 -= r2
	r5 |= r4
.L2576:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2577
	goto .L2574
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L2608
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
.L2608:
	if r2 == 0 goto .L2611
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
.L2611:
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
	if r0 == 0 goto .L2613
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L2613:
	if r3 == 0 goto .L2616
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
.L2616:
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
	if r0 == 0 goto .L2618
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
.L2618:
	if r2 == 0 goto .L2621
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
.L2621:
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
	if r0 == 0 goto .L2623
	r4 = r2
	r0 = r2
	r4 s>>= 63
	r3 += -64
	r1 = r4
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L2623:
	if r3 == 0 goto .L2626
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
.L2626:
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
	if r1 <= 65534 goto .L2630
	r0 = 0
.L2630:
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
	if r4 != 0 goto .L2631
	r3 -= r1
	r0 += r9
	r0 += r3
	exit
.L2631:
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
	if r2 == 0 goto .L2634
	r6 = 0
.L2634:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2636
	r0 = 0
.L2636:
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
	if r0 s>= r3 goto .L2647
	if r3 s> r0 goto .L2648
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2647
	if r1 > r2 goto .L2648
	r0 = 1
	exit
.L2647:
	r0 = 0
	exit
.L2648:
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
	if r3 s> r0 goto .L2653
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2654
	r0 = 1
	if r1 <= r2 goto .L2655
	r0 &= 1
	exit
.L2654:
	r0 = -1
	exit
.L2655:
	r0 = 0
	r0 &= 1
	exit
.L2653:
	r0 = 1
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
.L2679:
	if r2 == 0 goto .L2682
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
	r2 s>>= 32
	*(u64 *) (r10+-8) = r2
	r0 = r2
	r6 = r1
	r0 &= 1
	if r0 == 0 goto .L2710
	r8 = r2
	r7 = 0x3ff0000000000000 ll
.L2707:
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
	if r1 == 0 goto .L2706
.L2708:
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
	if r4 != 0 goto .L2707
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L2707
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
	if r0 != 0 goto .L2707
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
	if r4 != 0 goto .L2707
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
	if r9 != 0 goto .L2707
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
	if r3 != 0 goto .L2707
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
	if r4 != 0 goto .L2707
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L2707
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L2708
.L2706:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L2704
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L2704:
	r0 = r7
	exit
.L2710:
	r8 = *(u64 *) (r10+-8)
	r7 = 0x3ff0000000000000 ll
	goto .L2705
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
	if r0 == 0 goto .L2719
	r8 = r2
	r7 = 0x3f800000 ll
.L2716:
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
	if r1 == 0 goto .L2715
.L2717:
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
	if r4 != 0 goto .L2716
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L2716
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
	if r0 != 0 goto .L2716
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
	if r4 != 0 goto .L2716
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
	if r9 != 0 goto .L2716
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
	if r3 != 0 goto .L2716
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
	if r4 != 0 goto .L2716
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L2716
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L2717
.L2715:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L2713
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L2713:
	r0 = r7
	exit
.L2719:
	r8 = *(u64 *) (r10+-8)
	r7 = 0x3f800000 ll
	goto .L2714
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
	if r0 >= r3 goto .L2733
	if r3 > r0 goto .L2732
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2733
	r0 = 1
	if r1 <= r2 goto .L2734
	r0 &= 1
	exit
.L2733:
	r0 = -1
	exit
.L2734:
	r0 = 0
	r0 &= 1
	exit
.L2732:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2739
	if r2 > r4 goto .L2740
	if r3 >= r1 goto .L2739
	if r1 > r3 goto .L2740
	r0 = 1
	exit
.L2739:
	r0 = 0
	exit
.L2740:
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
