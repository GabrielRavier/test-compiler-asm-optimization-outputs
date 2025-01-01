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
	if r4 == 0 goto .L90
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
	if r4 == 0 goto .L90
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
.L90:
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
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r0 = r1
	r2 s>>= 32
	if r3 == 0 goto .L312
	r1 += r3
	r4 = r0
	r3 &= 7
	if r3 == 0 goto .L313
	if r3 == 1 goto .L338
	if r3 == 2 goto .L339
	if r3 == 3 goto .L340
	if r3 == 4 goto .L341
	if r3 == 5 goto .L342
	if r3 != 6 goto .L353
.L343:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L342:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L341:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L340:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L339:
	*(u8 *) (r4+0) = r2
	r4 += 1
.L338:
	*(u8 *) (r4+0) = r2
	r4 += 1
	if r1 == r4 goto .L354
.L313:
	*(u8 *) (r4+0) = r2
	*(u8 *) (r4+1) = r2
	*(u8 *) (r4+2) = r2
	*(u8 *) (r4+3) = r2
	*(u8 *) (r4+4) = r2
	*(u8 *) (r4+5) = r2
	*(u8 *) (r4+6) = r2
	*(u8 *) (r4+7) = r2
	r4 += 8
	if r1 != r4 goto .L313
.L312:
	exit
.L353:
	*(u8 *) (r0+0) = r2
	r4 += 1
	goto .L343
.L354:
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
	if r1 == 0 goto .L356
.L357:
	r0 += 1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 = r0
	if r4 == 0 goto .L356
	r5 = *(u8 *) (r2+2)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L356
	r0 = r3
	r9 = *(u8 *) (r2+3)
	r0 += 2
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L356
	r1 = *(u8 *) (r2+4)
	r0 += 1
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L356
	r4 = *(u8 *) (r2+5)
	r0 += 1
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L356
	r3 = *(u8 *) (r2+6)
	r0 += 1
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L356
	r5 = *(u8 *) (r2+7)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	r2 += 8
	if r5 == 0 goto .L356
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L357
	exit
.L356:
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
	if r1 != 0 goto .L377
	goto .L383
.L379:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 == 0 goto .L376
.L377:
	r4 &= 0xff
	if r4 != r2 goto .L379
.L376:
	exit
.L383:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r0 = r1
	r2 s>>= 32
	goto .L386
.L389:
	r0 += 1
	if r3 == 0 goto .L388
.L386:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 != r2 goto .L389
	exit
.L388:
	r0 = r3
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L395
.L396:
	if r0 == 0 goto .L392
	r1 += 1
	r2 += 1
.L395:
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 <<= 56
	r3 <<= 56
	r0 s>>= 56
	r3 s>>= 56
	if r0 == r3 goto .L396
.L392:
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
	if r0 == 0 goto .L400
	r0 = r1
.L399:
	r0 += 1
	r2 = r0
	r3 = *(u8 *) (r0+0)
	if r3 == 0 goto .L398
	r0 += 1
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L398
	r0 = r2
	r5 = *(u8 *) (r2+2)
	r0 += 2
	if r5 == 0 goto .L398
	r0 += 1
	r9 = *(u8 *) (r2+3)
	if r9 == 0 goto .L398
	r0 += 1
	r3 = *(u8 *) (r2+4)
	if r3 == 0 goto .L398
	r0 += 1
	r4 = *(u8 *) (r2+5)
	if r4 == 0 goto .L398
	r0 += 1
	r5 = *(u8 *) (r2+6)
	if r5 == 0 goto .L398
	r0 += 1
	r2 = *(u8 *) (r2+7)
	if r2 != 0 goto .L399
.L398:
	r0 -= r1
	exit
.L400:
	r0 = r1
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L421
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L418
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L419
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L418
	if r0 != r4 goto .L418
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L418
	if r3 == 1 goto .L419
	if r3 == 2 goto .L463
	if r3 == 3 goto .L464
	if r3 == 4 goto .L465
	if r3 == 5 goto .L466
	if r3 == 6 goto .L467
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L418
	if r3 != r4 goto .L418
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L418
.L467:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L418
	if r9 != r4 goto .L418
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L418
.L466:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L418
	if r0 != r4 goto .L418
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L418
.L465:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L418
	if r3 != r4 goto .L418
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L418
.L464:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L418
	if r9 != r4 goto .L418
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L418
.L463:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L418
	if r0 != r4 goto .L418
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L418
.L419:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L418
	if r1 == r5 goto .L418
	if r3 != r4 goto .L418
	r2 += 1
	r3 = r1
	r0 = r2
	r3 += 1
	r4 = *(u8 *) (r1+1)
	if r4 == 0 goto .L418
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L418
	if r9 != r4 goto .L418
	r2 += 1
	r4 = *(u8 *) (r1+2)
	if r4 == 0 goto .L418
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L418
	if r9 != r4 goto .L418
	r2 = r0
	r4 = *(u8 *) (r1+3)
	r2 += 2
	if r4 == 0 goto .L418
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L418
	if r1 != r4 goto .L418
	r2 += 1
	r4 = *(u8 *) (r3+3)
	if r4 == 0 goto .L418
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L418
	if r9 != r4 goto .L418
	r2 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L418
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L418
	if r1 != r4 goto .L418
	r2 += 1
	r4 = *(u8 *) (r3+5)
	if r4 == 0 goto .L418
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L418
	if r9 != r4 goto .L418
	r2 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L418
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L418
	if r1 != r4 goto .L418
	r1 = r3
	r0 += 7
	r1 += 7
	r2 = r0
	r4 = *(u8 *) (r3+7)
	if r4 != 0 goto .L419
.L418:
	r2 = *(u8 *) (r2+0)
	r0 = r4
	r0 -= r2
	exit
.L421:
	r0 = r3
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L508
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
	if r3 == 0 goto .L510
	if r3 == 1 goto .L533
	if r3 == 2 goto .L534
	if r3 == 3 goto .L535
	if r3 == 4 goto .L536
	if r3 == 5 goto .L537
	if r3 != 6 goto .L547
.L538:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L537:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L536:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L535:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L534:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L533:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L548
.L510:
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
	if r0 != r5 goto .L510
.L508:
	exit
.L547:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
	goto .L538
.L548:
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
	if r2 <= 24 goto .L550
	r1 = 0
.L550:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L552
	r0 = 0
.L552:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L555
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L555:
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
	if r1 <= 30 goto .L558
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L558:
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
	if r1 <= 8 goto .L560
	r0 = 0
.L560:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L562
	r0 = 0
.L562:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L564
	r0 = 0
.L564:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L566
	r0 = 0
.L566:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L570
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 > 3 goto .L571
	r0 &= 1
	exit
.L571:
	r0 = 0
	r0 &= 1
	exit
.L570:
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
	if r1 <= 24 goto .L573
	r0 = 0
.L573:
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
	if r1 <= 30 goto .L579
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 > 31 goto .L580
.L579:
	r0 = 1
	exit
.L580:
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L579
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L576
	r9 = 0
.L576:
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
	if r1 <= 8 goto .L582
	r0 = 0
.L582:
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
	if r1 <= 254 goto .L591
	if r1 <= 8230 goto .L589
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L589
	r2 += -49110
	if r2 <= 8183 goto .L589
	r1 += -65532
	if r1 > 1048579 goto .L590
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L589:
	r0 = 1
	exit
.L591:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s<= 32 goto .L592
	r0 = r1
	r0 &= 1
	exit
.L592:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
.L590:
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
	if r2 <= 8 goto .L596
	r1 |= 32
	r0 = 1
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	if r1 > 4 goto .L597
	r0 &= 1
	exit
.L596:
	r0 = 1
	exit
.L597:
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
	if r0 != 0 goto .L602
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L603
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L606
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L606:
	r0 = 0x0000000000000000 ll
	exit
.L602:
	r0 = r6
	exit
.L603:
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
	if r0 != 0 goto .L610
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L611
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L614
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L614:
	r0 = 0x00000000 ll
	exit
.L610:
	r0 = r6
	exit
.L611:
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
	if r0 != 0 goto .L623
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L622
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L617
	if r0 != 0 goto .L623
.L622:
	r0 = r7
	exit
.L617:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L623
	r6 = r7
.L623:
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
	if r0 != 0 goto .L634
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L633
	r0 = r7
	r1 = r6
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L628
	if r2 != 0 goto .L634
.L633:
	r0 = r7
	exit
.L628:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L634
	r6 = r7
.L634:
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
	if r0 != 0 goto .L645
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L644
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L639
	if r0 != 0 goto .L645
.L644:
	r0 = r7
	exit
.L639:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L645
	r6 = r7
.L645:
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
	if r0 != 0 goto .L654
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L656
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L650
	if r0 != 0 goto .L656
.L654:
	r0 = r7
	exit
.L650:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L656
	r6 = r7
.L656:
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
	if r0 != 0 goto .L665
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L667
	r0 = r6
	r1 = r7
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L661
	if r2 != 0 goto .L667
.L665:
	r0 = r7
	exit
.L661:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L667
	r6 = r7
.L667:
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
	if r0 != 0 goto .L676
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L678
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if r0 == r1 goto .L672
	if r0 != 0 goto .L678
.L676:
	r0 = r7
	exit
.L672:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L678
	r6 = r7
.L678:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L682
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
	if r1 == 0 goto .L682
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L682
	r3 = r1
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r1 >>= 6
	r0 = r9
	r0 += 2
	if r1 == 0 goto .L682
	r9 = r1
	r3 = r2
	r9 &= 63
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L682
	r5 = r1
	r9 = r2
	r5 &= 63
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	r1 >>= 6
	r0 += 1
	if r1 == 0 goto .L682
	r2 += r1
	r0 += 1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+-1) = r1
.L682:
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
	if r2 == 0 goto .L708
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r0
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L702
	*(u64 *) (r2+8) = r1
.L702:
	exit
.L708:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L710
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L710:
	r1 = *(u64 *) (r1+8)
	if r1 == 0 goto .L709
	*(u64 *) (r1+0) = r0
.L709:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L720
	exit
.L720:
	r1 = -r1
	r0 = r1
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r4 = 4
.L728:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L722
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L722
	if r0 == 43 goto .L723
	if r0 != 45 goto .L748
	r5 = *(u8 *) (r1+1)
	r1 += 1
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r4 = r5;r4 &= 0xffffffff
	if r4 > 9 goto .L733
	r2 = 1
.L726:
	r0 = 0
	r3 = 9
.L730:
	r9 = r0
	r9 <<= 2
	r4 = *(u8 *) (r1+1)
	r0 += r9
	r4 <<= 56
	r0 <<= 33
	r4 s>>= 56
	r0 s>>= 32
	r4 += -48
	r0 -= r5
	r9 = r4;r9 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	if r3 <= r9 goto .L746
	r9 = r0
	r9 <<= 2
	r5 = *(u8 *) (r1+2)
	r0 += r9
	r5 <<= 56
	r0 <<= 33
	r5 s>>= 56
	r0 s>>= 32
	r5 += -48
	r0 -= r4
	r9 = r5;r9 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	if r3 <= r9 goto .L746
	r9 = r0
	r9 <<= 2
	r4 = *(u8 *) (r1+3)
	r0 += r9
	r4 <<= 56
	r0 <<= 33
	r4 s>>= 56
	r0 s>>= 32
	r4 += -48
	r0 -= r5
	r9 = r4;r9 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	if r3 <= r9 goto .L746
	r5 = r0
	r5 <<= 2
	r1 += 4
	r0 += r5
	r5 = *(u8 *) (r1+0)
	r0 <<= 33
	r5 <<= 56
	r0 s>>= 32
	r5 s>>= 56
	r0 -= r4
	r5 += -48
	r0 <<= 32
	r4 = r5;r4 &= 0xffffffff
	r0 s>>= 32
	if r3 > r4 goto .L730
.L746:
	if r2 != 0 goto .L729
.L727:
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L722:
	r1 += 1
	goto .L728
.L748:
	r3 += -48
	if r3 > 8 goto .L747
	r0 += -48
	r2 = 0
	r5 = r0
	goto .L726
.L733:
	r0 = 0
.L729:
	exit
.L723:
	r5 = *(u8 *) (r1+1)
	r2 = 0
	r5 <<= 56
	r1 += 1
	r5 s>>= 56
	r5 += -48
	r9 = r5;r9 &= 0xffffffff
	if r9 <= 8 goto .L726
.L747:
	r0 = 0
	goto .L727
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 4
.L756:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L750
	r3 = r0;r3 &= 0xffffffff
	r2 = r3
	r2 += -9
	r5 = r2;r5 &= 0xffffffff
	if r4 > r5 goto .L750
	if r0 == 43 goto .L751
	if r0 != 45 goto .L776
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r4 = r0;r4 &= 0xffffffff
	if r4 > 9 goto .L761
	r4 = 1
.L754:
	r2 = 0
	r5 = 9
.L758:
	r3 = *(u8 *) (r1+1)
	r2 *= 10
	r3 <<= 56
	r2 -= r0
	r0 = r3
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r5 <= r9 goto .L774
	r3 = *(u8 *) (r1+2)
	r2 *= 10
	r3 <<= 56
	r2 -= r0
	r0 = r3
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r5 <= r9 goto .L774
	r3 = *(u8 *) (r1+3)
	r2 *= 10
	r3 <<= 56
	r2 -= r0
	r0 = r3
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r5 <= r9 goto .L774
	r2 *= 10
	r1 += 4
	r2 -= r0
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r3 = r0;r3 &= 0xffffffff
	if r5 > r3 goto .L758
.L774:
	if r4 == 0 goto .L755
.L749:
	r0 = r2
	exit
.L750:
	r1 += 1
	goto .L756
.L776:
	r3 += -48
	if r3 > 8 goto .L775
	r4 = 0
	r0 += -48
	goto .L754
.L751:
	r0 = *(u8 *) (r1+1)
	r4 = 0
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r9 <= 8 goto .L754
.L775:
	r2 = 0
.L755:
	r2 = -r2
	r0 = r2
	exit
.L761:
	r2 = 0
	goto .L749
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
	r3 = *(u32 *) (r1+0)
	r2 s>>= 32
	r3 <<= 32
	r0 = r3
	r0 s>>= 32
	if r3 == 0 goto .L797
.L792:
	if r2 == r0 goto .L798
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L792
	exit
.L798:
	r0 = r1
	exit
.L797:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L810
.L811:
	if r3 == 0 goto .L801
	if r4 == 0 goto .L801
	r1 += 4
	r2 += 4
.L810:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if r3 == r4 goto .L811
.L801:
	if r4 s>= r3 goto .L805
	r0 = 1
	if r3 s<= r4 goto .L812
	r0 &= 1
	exit
.L805:
	r0 = -1
	exit
.L812:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L814:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L830
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L830
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L830
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L830
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L830
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L830
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L830
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L814
.L830:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L834
	r0 = r1
.L833:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L832
	r0 += 4
	r4 = *(u32 *) (r0+0)
	if r4 == 0 goto .L832
	r0 = r2
	r5 = *(u32 *) (r2+8)
	r0 += 8
	if r5 == 0 goto .L832
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L832
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L832
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L832
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L832
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L833
.L832:
	r0 -= r1
	r0 s>>= 2
	exit
.L834:
	r0 = r1
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L857
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 3
	if r0 == 0 goto .L851
	if r0 == 1 goto .L874
	if r0 == 2 goto .L875
	r3 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r3 <<= 32
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r3 goto .L853
	if r5 == 0 goto .L853
	r3 = r4
	r1 += 4
	r2 += 4
.L875:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L853
	if r9 == 0 goto .L853
	r3 += -1
	r1 += 4
	r2 += 4
.L874:
	r4 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L853
	if r5 == 0 goto .L853
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L857
.L851:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L853
	if r0 == 0 goto .L853
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
	if r0 != r9 goto .L853
	if r6 == 0 goto .L853
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r0 = *(u32 *) (r2+0)
	r9 <<= 32
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	if r0 != r9 goto .L853
	if r6 == 0 goto .L853
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
	if r4 != r5 goto .L853
	if r6 == 0 goto .L853
	r3 += -4
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L851
.L857:
	r0 = 0
	exit
.L853:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if r2 s< r1 goto .L885
	r0 = 1
	if r2 s<= r1 goto .L886
	r0 &= 1
	exit
.L885:
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
	if r3 == 0 goto .L891
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L888
	if r0 == 1 goto .L928
	if r0 == 2 goto .L929
	if r0 == 3 goto .L930
	if r0 == 4 goto .L931
	if r0 == 5 goto .L932
	if r0 != 6 goto .L946
.L933:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L945
	r3 += -1
	r1 += 4
.L932:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L945
	r3 += -1
	r1 += 4
.L931:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L945
	r3 += -1
	r1 += 4
.L930:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L945
	r3 += -1
	r1 += 4
.L929:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L945
	r3 += -1
	r1 += 4
.L928:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L945
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L891
.L888:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L945
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L945
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L945
	r1 = r5
	r1 += 8
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L945
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L945
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L945
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L945
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L945
	r3 += -8
	r1 += 4
	if r3 != 0 goto .L888
.L891:
	r0 = 0
	exit
.L945:
	r0 = r1
	exit
.L946:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L945
	r3 = r4
	r1 += 4
	goto .L933
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L954
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L948
	if r0 == 1 goto .L991
	if r0 == 2 goto .L992
	if r0 == 3 goto .L993
	if r0 == 4 goto .L994
	if r0 == 5 goto .L995
	if r0 != 6 goto .L1010
.L996:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r3 += -1
	r1 += 4
	r2 += 4
.L995:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r3 += -1
	r1 += 4
	r2 += 4
.L994:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r3 += -1
	r1 += 4
	r2 += 4
.L993:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r3 += -1
	r1 += 4
	r2 += 4
.L992:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r3 += -1
	r1 += 4
	r2 += 4
.L991:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L954
.L948:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r4 = *(u32 *) (r1+4)
	r5 = *(u32 *) (r2+4)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r4 = *(u32 *) (r1+8)
	r5 = *(u32 *) (r2+8)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r4 = *(u32 *) (r1+12)
	r5 = *(u32 *) (r2+12)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r4 = *(u32 *) (r1+16)
	r5 = *(u32 *) (r2+16)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r4 = *(u32 *) (r1+20)
	r5 = *(u32 *) (r2+20)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r4 = *(u32 *) (r1+24)
	r5 = *(u32 *) (r2+24)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r4 = *(u32 *) (r1+28)
	r5 = *(u32 *) (r2+28)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L948
.L954:
	r0 = 0
	exit
.L1009:
	r4 s>>= 32
	r5 s>>= 32
	if r4 s< r5 goto .L1011
	r0 = 1
	if r4 s<= r5 goto .L1012
	r0 &= 1
	exit
.L1011:
	r0 = -1
	exit
.L1012:
	r0 = 0
	r0 &= 1
	exit
.L1010:
	r4 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 <<= 32
	if r5 != r4 goto .L1009
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L996
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1014
	r5 = r3
	r6 = r3
	r9 = r1
	r4 = r1
	r0 = r2
	r5 += -1
	r6 <<= 2
	r9 -= r2
	if r6 < r9 goto .L1095
	if r3 == 0 goto .L1014
	r5 <<= 2
	r9 = r1
	r4 = r5
	r0 += r5
	r4 >>= 2
	r9 += r5
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1017
	if r4 == 1 goto .L1072
	if r4 == 2 goto .L1073
	if r4 == 3 goto .L1074
	if r4 == 4 goto .L1075
	if r4 == 5 goto .L1076
	if r4 != 6 goto .L1096
.L1077:
	r3 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r3
	r0 += -4
.L1076:
	r4 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r4
	r0 += -4
.L1075:
	r5 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r5
	r0 += -4
.L1074:
	r3 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r3
	r0 += -4
.L1073:
	r4 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r4
	r0 += -4
.L1072:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r5
	r3 = r0
	r9 += -4
	r0 += -4
	if r2 == r3 goto .L1014
.L1017:
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
	if r2 != r3 goto .L1017
.L1014:
	r0 = r1
	exit
.L1095:
	if r3 == 0 goto .L1014
	r3 &= 7
	if r3 == 0 goto .L1016
	if r3 == 1 goto .L1066
	if r3 == 2 goto .L1067
	if r3 == 3 goto .L1068
	if r3 == 4 goto .L1069
	if r3 == 5 goto .L1070
	if r3 != 6 goto .L1097
.L1071:
	r2 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1070:
	r3 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1069:
	r9 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1068:
	r2 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r2
	r0 += 4
	r4 += 4
.L1067:
	r3 = *(u32 *) (r0+0)
	r5 += -1
	*(u32 *) (r4+0) = r3
	r0 += 4
	r4 += 4
.L1066:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r5 += -1
	r4 += 4
	r0 += 4
	if r5 == -1 goto .L1014
.L1016:
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
	if r5 != -1 goto .L1016
	goto .L1014
.L1097:
	r0 = *(u32 *) (r2+0)
	r5 += -1
	*(u32 *) (r1+0) = r0
	r4 += 4
	r0 = r2
	r0 += 4
	goto .L1071
.L1096:
	r5 = *(u32 *) (r0+0)
	r9 += -4
	*(u32 *) (r9+4) = r5
	r0 += -4
	goto .L1077
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
	if r3 == 0 goto .L1099
	r4 = r1
	r1 = r3
	r1 &= 7
	if r1 == 0 goto .L1100
	if r1 == 1 goto .L1125
	if r1 == 2 goto .L1126
	if r1 == 3 goto .L1127
	if r1 == 4 goto .L1128
	if r1 == 5 goto .L1129
	if r1 != 6 goto .L1140
.L1130:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1129:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1128:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1127:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1126:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
.L1125:
	*(u32 *) (r4+0) = r2
	r5 += -1
	r4 += 4
	if r5 == -1 goto .L1141
.L1100:
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
	if r5 != -1 goto .L1100
.L1099:
	exit
.L1140:
	r3 += -2
	*(u32 *) (r0+0) = r2
	r5 = r3
	r4 += 4
	goto .L1130
.L1141:
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1143
	r5 = r1
	r2 += r3
	r5 += r3
	if r3 == 0 goto .L1142
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1145
	if r9 == 1 goto .L1195
	if r9 == 2 goto .L1196
	if r9 == 3 goto .L1197
	if r9 == 4 goto .L1198
	if r9 == 5 goto .L1199
	if r9 == 6 goto .L1200
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1200:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1199:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
.L1198:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
.L1197:
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1196:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1195:
	r2 += -1
	r0 = *(u8 *) (r5+-1)
	*(u8 *) (r2+0) = r0
	r5 += -1
	if r1 == r5 goto .L1225
.L1145:
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
	if r1 != r5 goto .L1145
	exit
.L1143:
	if r1 != r2 goto .L1226
.L1142:
	exit
.L1226:
	if r3 == 0 goto .L1142
	r5 = r1
	r9 = r1
	r5 += r3
	r4 = r2
	r3 &= 7
	if r3 == 0 goto .L1146
	if r3 == 1 goto .L1201
	if r3 == 2 goto .L1202
	if r3 == 3 goto .L1203
	if r3 == 4 goto .L1204
	if r3 == 5 goto .L1205
	if r3 != 6 goto .L1227
.L1206:
	r1 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r9 += 1
.L1205:
	r2 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r9 += 1
.L1204:
	r3 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r9 += 1
.L1203:
	r0 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r0
	r9 += 1
.L1202:
	r1 = *(u8 *) (r9+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r9 += 1
.L1201:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
	if r9 == r5 goto .L1228
.L1146:
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
	if r9 != r5 goto .L1146
	goto .L1142
.L1225:
	exit
.L1227:
	r0 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r0
	r9 += 1
	r4 = r2
	goto .L1206
.L1228:
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
.L1245:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1268
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1268
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1268
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1268
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1268
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1268
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1268
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1268
	if r0 != 32 goto .L1245
	r0 = r4
	exit
.L1268:
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
	if r1 == 0 goto .L1271
	r0 &= 1
	if r0 != 0 goto .L1271
	r0 = 1
.L1272:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if r9 != 0 goto .L1290
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if r1 != 0 goto .L1271
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1271
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1271
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if r1 != 0 goto .L1271
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if r3 != 0 goto .L1271
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if r5 != 0 goto .L1271
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if r1 == 0 goto .L1272
	exit
.L1271:
	exit
.L1290:
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
	if r8 s>= r0 goto .L1294
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1295
	r0 = r7
	r0 &= 1
	exit
.L1294:
	r0 = 1
	exit
.L1295:
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
	if r8 s>= r0 goto .L1299
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1300
	r0 = r7
	r0 &= 1
	exit
.L1299:
	r0 = 1
	exit
.L1300:
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
	if r8 s>= r0 goto .L1304
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1305
	r0 = r7
	r0 &= 1
	exit
.L1304:
	r0 = 1
	exit
.L1305:
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
	if r0 != 0 goto .L1308
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1308
	if r6 s< 0 goto .L1324
	r7 = 0x40000000 ll
.L1310:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1311
.L1312:
	r1 = r8
	r2 = r7
	call	__mulsf3
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
	call	__mulsf3
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
	call	__mulsf3
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
	call	__mulsf3
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
	if r3 != 0 goto .L1312
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
	if r9 != 0 goto .L1312
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
	if r4 != 0 goto .L1312
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
	if r3 != 0 goto .L1312
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
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
	r7 = 0x3f000000 ll
	goto .L1310
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
	if r0 != 0 goto .L1326
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
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
	if r0 != 0 goto .L1344
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1344
	if r6 s< 0 goto .L1360
	r7 = 0x4000000000000000 ll
.L1346:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1347
.L1348:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1347:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1344
.L1349:
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
	if r3 != 0 goto .L1348
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if r2 != 0 goto .L1348
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
	if r0 != 0 goto .L1348
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
	if r3 != 0 goto .L1348
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
	if r9 != 0 goto .L1348
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
	if r4 != 0 goto .L1348
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
	if r3 != 0 goto .L1348
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if r1 != 0 goto .L1348
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1349
.L1344:
	r0 = r8
	exit
.L1360:
	r7 = 0x3fe0000000000000 ll
	goto .L1346
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1362
	r4 = r2
	r0 = r1
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
	r3 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r3
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1392:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r5
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1391:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r9
	r2 += 1
	*(u8 *) (r0+-1) = r3
.L1390:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r0+-1) = r3
.L1389:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r2+0)
	r0 += 1
	r9 ^= r3
	r2 += 1
	*(u8 *) (r0+-1) = r9
.L1388:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r2+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	if r2 == r4 goto .L1362
.L1363:
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
	if r2 != r4 goto .L1363
.L1362:
	r0 = r1
	exit
.L1403:
	r3 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	r0 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r1+0) = r3
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
	r5 = *(u8 *) (r4+2)
	r0 += 2
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
	if r3 == 0 goto .L1408
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1407
	if r5 == 1 goto .L1459
	if r5 == 2 goto .L1460
	if r5 == 3 goto .L1461
	if r5 == 4 goto .L1462
	if r5 == 5 goto .L1463
	if r5 != 6 goto .L1481
.L1464:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1410
	r2 += 1
	r0 += 1
	r3 += -1
.L1463:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1410
	r2 += 1
	r0 += 1
	r3 += -1
.L1462:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1410
	r2 += 1
	r0 += 1
	r3 += -1
.L1461:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1410
	r2 += 1
	r0 += 1
	r3 += -1
.L1460:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1410
	r2 += 1
	r0 += 1
	r3 += -1
.L1459:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1410
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1408
.L1407:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1410
	r9 = *(u8 *) (r2+1)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1410
	r5 = *(u8 *) (r2+2)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1410
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1410
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1410
	r5 = *(u8 *) (r2+5)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1410
	r4 = *(u8 *) (r2+6)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1410
	r9 = *(u8 *) (r2+7)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1410
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1407
.L1408:
	*(u8 *) (r0+0) = 0
.L1410:
	r0 = r1
	exit
.L1481:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1410
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1464
.L1411:
	r0 = r1
	goto .L1405
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1482
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1483
	if r0 == 1 goto .L1524
	if r0 == 2 goto .L1525
	if r0 == 3 goto .L1526
	if r0 == 4 goto .L1527
	if r0 == 5 goto .L1528
	if r0 != 6 goto .L1538
.L1529:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1482
	r3 += 1
.L1528:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L1539
.L1482:
	r0 = r3
	exit
.L1538:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1482
	r3 = 1
	goto .L1529
.L1539:
	r3 += 1
.L1527:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1482
	r3 += 1
.L1526:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1482
	r3 += 1
.L1525:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1482
	r3 += 1
.L1524:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1482
	r3 += 1
	if r2 == r3 goto .L1482
.L1483:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1482
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1482
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1482
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1482
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1482
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1482
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1482
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1482
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1483
	goto .L1482
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
	r1 = r5
.L1542:
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
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1697
	r0 = r2
.L1557:
	r0 += 1
	r3 = r0
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1666
	r0 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L1666
	r0 = r3
	r4 = *(u8 *) (r3+2)
	r0 += 2
	if r4 == 0 goto .L1666
	r0 += 1
	r9 = *(u8 *) (r3+3)
	if r9 == 0 goto .L1666
	r0 += 1
	r4 = *(u8 *) (r3+4)
	if r4 == 0 goto .L1666
	r0 += 1
	r9 = *(u8 *) (r3+5)
	if r9 == 0 goto .L1666
	r0 += 1
	r4 = *(u8 *) (r3+6)
	if r4 == 0 goto .L1666
	r0 += 1
	r3 = *(u8 *) (r3+7)
	if r3 != 0 goto .L1557
.L1666:
	r4 = r0
	r4 -= r2
	if r0 == r2 goto .L1697
	r4 += -1
	r9 = r5;r9 &= 0xff
	r8 = r4
	r7 = r1
	goto .L1563
.L1699:
	r7 += 1
	if r0 == 0 goto .L1698
.L1563:
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r5 goto .L1699
	r1 = r7
	r1 += r8
	*(u64 *) (r10+-8) = r1
	r4 = r8
	r0 = r9
	r6 = r2
	r3 = r7
	r4 &= 7
	if r4 == 0 goto .L1670
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L1560
	if r3 != r9 goto .L1560
	r3 = r7
	r6 += 1
	r3 += 1
	r0 = *(u8 *) (r7+1)
	if r0 == 0 goto .L1560
	if r4 == 1 goto .L1670
	if r4 == 2 goto .L1616
	if r4 == 3 goto .L1617
	if r4 == 4 goto .L1618
	if r4 == 5 goto .L1619
	if r4 == 6 goto .L1620
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1560
	if r1 != r0 goto .L1560
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1560
.L1620:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1560
	if r4 != r0 goto .L1560
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1560
.L1619:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1560
	if r1 != r0 goto .L1560
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1560
.L1618:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1560
	if r4 != r0 goto .L1560
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1560
.L1617:
	r1 = *(u8 *) (r6+0)
	if r1 == 0 goto .L1560
	if r1 != r0 goto .L1560
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1560
.L1616:
	r4 = *(u8 *) (r6+0)
	if r4 == 0 goto .L1560
	if r4 != r0 goto .L1560
	r3 += 1
	r6 += 1
	r0 = *(u8 *) (r3+0)
	if r0 == 0 goto .L1560
.L1670:
	*(u64 *) (r10+-16) = r7
.L1559:
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1690
	r1 = *(u64 *) (r10+-8)
	if r1 == r3 goto .L1690
	if r7 != r0 goto .L1690
	r6 += 1
	r4 = r3
	r1 = r6
	r4 += 1
	r0 = *(u8 *) (r3+1)
	if r0 == 0 goto .L1690
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1690
	if r7 != r0 goto .L1690
	r6 += 1
	r0 = *(u8 *) (r3+2)
	if r0 == 0 goto .L1690
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1690
	if r7 != r0 goto .L1690
	r6 = r1
	r0 = *(u8 *) (r3+3)
	r6 += 2
	if r0 == 0 goto .L1690
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1690
	if r3 != r0 goto .L1690
	r6 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L1690
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1690
	if r7 != r0 goto .L1690
	r6 += 1
	r0 = *(u8 *) (r4+4)
	if r0 == 0 goto .L1690
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1690
	if r3 != r0 goto .L1690
	r6 += 1
	r0 = *(u8 *) (r4+5)
	if r0 == 0 goto .L1690
	r7 = *(u8 *) (r6+0)
	if r7 == 0 goto .L1690
	if r7 != r0 goto .L1690
	r6 += 1
	r0 = *(u8 *) (r4+6)
	if r0 == 0 goto .L1690
	r3 = *(u8 *) (r6+0)
	if r3 == 0 goto .L1690
	if r3 != r0 goto .L1690
	r3 = r4
	r1 += 7
	r3 += 7
	r6 = r1
	r0 = *(u8 *) (r4+7)
	if r0 != 0 goto .L1559
.L1690:
	r7 = *(u64 *) (r10+-16)
.L1560:
	r4 = *(u8 *) (r6+0)
	if r4 == r0 goto .L1566
	r7 += 1
	goto .L1563
.L1698:
	exit
.L1566:
	r1 = r7
.L1697:
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
	if r8 s>= r0 goto .L1710
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1704
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L1703
.L1704:
	r0 = r6
	exit
.L1710:
	r1 = r7
	call	__gtdf2
	if r0 s<= r8 goto .L1704
.L1703:
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
	if r4 == 0 goto .L1717
	if r4 >= r2 goto .L1719
	r2 -= r4
	r6 = r1
	r6 += r2
	if r1 > r6 goto .L1719
	r5 = *(u8 *) (r3+0)
	r3 = r1
	r5 <<= 56
	r3 += r4
	r5 s>>= 56
	goto .L1716
.L1713:
	r3 += 1
	if r6 < r1 goto .L1719
.L1716:
	r0 = *(u8 *) (r1+0)
	r9 = r1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	if r0 != r5 goto .L1713
	r2 = *(u64 *) (r10+-8)
	r2 += 1
	if r4 == 1 goto .L1711
	r7 = r3
	r0 = r1
	r7 -= r1
	r7 &= 7
	if r7 == 0 goto .L1714
	if r7 == 1 goto .L1756
	if r7 == 2 goto .L1757
	if r7 == 3 goto .L1758
	if r7 == 4 goto .L1759
	if r7 == 5 goto .L1760
	if r7 != 6 goto .L1778
.L1761:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1713
	r0 += 1
	r2 += 1
.L1760:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1713
	r0 += 1
	r2 += 1
.L1759:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1713
	r0 += 1
	r2 += 1
.L1758:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1713
	r0 += 1
	r2 += 1
.L1757:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1713
	r0 += 1
	r2 += 1
.L1756:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1713
	r0 += 1
	r2 += 1
	if r0 == r3 goto .L1711
.L1714:
	r8 = *(u8 *) (r0+0)
	r7 = *(u8 *) (r2+0)
	if r8 != r7 goto .L1713
	r8 = *(u8 *) (r0+1)
	r7 = *(u8 *) (r2+1)
	if r8 != r7 goto .L1713
	r8 = *(u8 *) (r0+2)
	r7 = *(u8 *) (r2+2)
	if r8 != r7 goto .L1713
	r8 = *(u8 *) (r0+3)
	r7 = *(u8 *) (r2+3)
	if r8 != r7 goto .L1713
	r8 = *(u8 *) (r0+4)
	r7 = *(u8 *) (r2+4)
	if r8 != r7 goto .L1713
	r8 = *(u8 *) (r0+5)
	r7 = *(u8 *) (r2+5)
	if r8 != r7 goto .L1713
	r8 = *(u8 *) (r0+6)
	r7 = *(u8 *) (r2+6)
	if r8 != r7 goto .L1713
	r8 = *(u8 *) (r0+7)
	r7 = *(u8 *) (r2+7)
	if r8 != r7 goto .L1713
	r0 += 8
	r2 += 8
	if r0 != r3 goto .L1714
.L1711:
	r0 = r9
	exit
.L1719:
	r9 = 0
	r0 = r9
	exit
.L1778:
	r7 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r7 != r0 goto .L1713
	r0 = r1
	r2 += 1
	r0 += 1
	goto .L1761
.L1717:
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
	if r7 s>= r0 goto .L1813
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1814
	*(u64 *) (r10+-16) = r7
.L1782:
	r8 = 0
	r7 = 0x3fe0000000000000 ll
.L1788:
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
	if r0 s< 0 goto .L1789
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
	if r3 s< 0 goto .L1789
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
	if r0 s< 0 goto .L1789
	r5 s>>= 32
	r8 = r5
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r6 = r0
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L1788
.L1789:
	r2 = *(u64 *) (r10+-8)
	*(u32 *) (r2+0) = r8
	r1 = *(u64 *) (r10+-16)
	if r1 == 0 goto .L1795
.L1784:
	r9 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r9
	exit
.L1814:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r7 s< r0 goto .L1785
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1794
.L1785:
	r0 = *(u64 *) (r10+-8)
	*(u32 *) (r0+0) = 0
	r0 = r6
	exit
.L1813:
	r3 = -9223372036854775808 ll
	r1 = r6
	r1 ^= r3
	r2 = 0xbff0000000000000 ll
	*(u64 *) (r10+-24) = r1
	r1 = r6
	call	__ledf2
	if r7 s<= r0 goto .L1815
	r6 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-16) = 1
	goto .L1782
.L1795:
	r0 = r6
	exit
.L1815:
	r2 = 0xbfe0000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s> r7 goto .L1792
	*(u32 *) (r8+0) = r7
	r6 = *(u64 *) (r10+-24)
	goto .L1784
.L1792:
	*(u64 *) (r10+-16) = 1
.L1783:
	r8 = 0
	r6 = *(u64 *) (r10+-24)
	r7 = r8
.L1790:
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
	if r7 s< r0 goto .L1789
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
	if r7 s< r9 goto .L1789
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
	if r7 s< r0 goto .L1789
	r4 s>>= 32
	r8 = r4
	call	__adddf3
	r2 = 0x3fe0000000000000 ll
	r6 = r0
	r1 = r0
	call	__ltdf2
	if r7 s>= r0 goto .L1790
	goto .L1789
.L1794:
	*(u64 *) (r10+-24) = r6
	*(u64 *) (r10+-16) = r7
	goto .L1783
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L1819
	r0 = 0
.L1818:
	r5 = r2
	r1 = r3
	r4 = r3
	r5 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L1835
	r9 = r5
	r2 = r3
	r1 &= 1
	r9 += r5
	r1 = -r1
	r2 >>= 2
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L1816
	r5 = r9
	r1 = r3
	r2 &= 1
	r5 += r9
	r2 = -r2
	r1 >>= 3
	r2 &= r9
	r0 += r2
	if r1 == 0 goto .L1816
	r4 = r5
	r9 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r9 >>= 4
	r1 &= r5
	r0 += r1
	if r9 == 0 goto .L1816
	r5 = r4
	r1 = r3
	r9 &= 1
	r5 += r4
	r9 = -r9
	r1 >>= 5
	r9 &= r4
	r0 += r9
	if r1 == 0 goto .L1816
	r4 = r5
	r2 = r3
	r1 &= 1
	r4 += r5
	r1 = -r1
	r2 >>= 6
	r1 &= r5
	r0 += r1
	if r2 == 0 goto .L1816
	r9 = r4
	r5 = r3
	r2 &= 1
	r9 += r4
	r2 = -r2
	r5 >>= 7
	r2 &= r4
	r0 += r2
	if r5 == 0 goto .L1816
	r5 &= 1
	r2 = r9
	r5 = -r5
	r2 += r9
	r5 &= r9
	r3 >>= 8
	r0 += r5
	if r3 != 0 goto .L1818
	exit
.L1819:
	r0 = r1
.L1816:
	exit
.L1835:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1838
	r9 = 32
	r4 = 1
.L1837:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1838
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1871
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1838
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1871
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1838
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1871
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1838
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1871
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1838
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1871
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1838
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1871
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L1838
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1871
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1838
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L1871
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1837
.L1840:
	if r3 != 0 goto .L1844
	r0 = r9
.L1844:
	exit
.L1871:
	r9 = r4
	if r4 == 0 goto .L1840
.L1838:
	r9 = 0
.L1843:
	if r2 >= r0 goto .L1842
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L1842:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L1843
	goto .L1840
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
	if r2 == r1 goto .L1874
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
.L1874:
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
	if r0 == r2 goto .L1877
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L1877:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1881
	r0 = 0
.L1880:
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
	if r3 == 0 goto .L1897
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
	if r1 == 0 goto .L1879
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
	if r2 == 0 goto .L1879
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
	if r1 == 0 goto .L1879
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
	if r2 == 0 goto .L1879
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
	if r3 == 0 goto .L1879
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
	if r1 == 0 goto .L1879
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
	if r1 != 0 goto .L1880
	exit
.L1881:
	r0 = r1
.L1879:
	exit
.L1897:
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
	if r2 >= r1 goto .L1899
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2025
.L1899:
	if r0 == 0 goto .L1902
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
	if r2 == 0 goto .L1903
	if r2 == 1 goto .L1982
	if r2 == 2 goto .L1983
	if r2 == 3 goto .L1984
	if r2 == 4 goto .L1985
	if r2 == 5 goto .L1986
	if r2 == 6 goto .L1987
	r0 = *(u64 *) (r8+0)
	r4 += 8
	*(u64 *) (r7+0) = r0
	r1 += 8
.L1987:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1986:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L1985:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1984:
	r0 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r0
	r4 += 8
.L1983:
	r2 = *(u64 *) (r4+0)
	r1 += 8
	*(u64 *) (r1+-8) = r2
	r4 += 8
.L1982:
	r0 = *(u64 *) (r4+0)
	*(u64 *) (r1+0) = r0
	r4 += 8
	r1 += 8
	if r4 == r5 goto .L1902
.L1903:
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
	if r4 != r5 goto .L1903
.L1902:
	if r9 > r3 goto .L1898
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
	if r3 == 0 goto .L1904
	if r3 == 1 goto .L1988
	if r3 == 2 goto .L1989
	if r3 == 3 goto .L1990
	if r3 == 4 goto .L1991
	if r3 == 5 goto .L1992
	if r3 == 6 goto .L1993
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L1993:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L1992:
	r9 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r9
	r5 += 1
.L1991:
	r3 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r3
	r5 += 1
.L1990:
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L1989:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L1988:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r9
	r5 += 1
	r1 += 1
	if r5 == r4 goto .L2026
.L1904:
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
	if r5 != r4 goto .L1904
	exit
.L2025:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1898
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1905
	if r3 == 1 goto .L1976
	if r3 == 2 goto .L1977
	if r3 == 3 goto .L1978
	if r3 == 4 goto .L1979
	if r3 == 5 goto .L1980
	if r3 == 6 goto .L1981
	r4 = r8
	r0 = r7
	r4 += r5
	r0 += r5
	r1 = *(u8 *) (r4+0)
	r5 += -1
	*(u8 *) (r0+0) = r1
	r9 = r5
.L1981:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1980:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L1979:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1978:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L1977:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1976:
	r4 = r8
	r0 = r7
	r4 += r9
	r0 += r9
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2027
.L1905:
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
	if r9 != -1 goto .L1905
.L1898:
	exit
.L2026:
	exit
.L2027:
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
	if r2 >= r1 goto .L2029
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2119
.L2029:
	if r0 == 0 goto .L2032
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
	if r5 == 0 goto .L2033
	if r5 == 1 goto .L2091
	if r5 == 2 goto .L2092
	if r5 == 3 goto .L2093
	if r5 == 4 goto .L2094
	if r5 == 5 goto .L2095
	if r5 == 6 goto .L2096
	r0 = *(u16 *) (r8+0)
	r4 += 2
	*(u16 *) (r7+0) = r0
	r1 += 2
.L2096:
	r2 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r4 += 2
.L2095:
	r5 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r5
	r4 += 2
.L2094:
	r0 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r0
	r4 += 2
.L2093:
	r2 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r2
	r4 += 2
.L2092:
	r5 = *(u16 *) (r4+0)
	r1 += 2
	*(u16 *) (r1+-2) = r5
	r4 += 2
.L2091:
	r0 = *(u16 *) (r4+0)
	*(u16 *) (r1+0) = r0
	r4 += 2
	r1 += 2
	if r4 == r9 goto .L2032
.L2033:
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
	if r4 != r9 goto .L2033
.L2032:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L2028
	r3 += -1
	r4 = r8
	r3 = r3;r3 &= 0xffffffff
	r0 = r7
	r4 += r3
	r0 += r3
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	exit
.L2119:
	r2 = r3
	r2 += -1
	r4 = r2;r4 &= 0xffffffff
	r9 = r4
	if r3 == 0 goto .L2028
	r5 = r4
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2034
	if r5 == 1 goto .L2085
	if r5 == 2 goto .L2086
	if r5 == 3 goto .L2087
	if r5 == 4 goto .L2088
	if r5 == 5 goto .L2089
	if r5 == 6 goto .L2090
	r3 = r8
	r0 = r7
	r3 += r4
	r0 += r4
	r1 = *(u8 *) (r3+0)
	r4 += -1
	*(u8 *) (r0+0) = r1
	r9 = r4
.L2090:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2089:
	r3 = r7
	r0 = r8
	r3 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r1
.L2088:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2087:
	r3 = r7
	r0 = r8
	r3 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r1
.L2086:
	r2 = r7
	r4 = r8
	r2 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L2085:
	r3 = r8
	r0 = r7
	r3 += r9
	r0 += r9
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2120
.L2034:
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
	if r9 != -1 goto .L2034
.L2028:
	exit
.L2120:
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
	if r2 >= r1 goto .L2122
	r1 = r2
	r1 += r3
	if r7 <= r1 goto .L2248
.L2122:
	if r0 == 0 goto .L2125
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
	if r2 == 0 goto .L2126
	if r2 == 1 goto .L2205
	if r2 == 2 goto .L2206
	if r2 == 3 goto .L2207
	if r2 == 4 goto .L2208
	if r2 == 5 goto .L2209
	if r2 == 6 goto .L2210
	r0 = *(u32 *) (r8+0)
	r4 += 4
	*(u32 *) (r7+0) = r0
	r1 += 4
.L2210:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2209:
	r0 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r0
	r4 += 4
.L2208:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2207:
	r0 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r0
	r4 += 4
.L2206:
	r2 = *(u32 *) (r4+0)
	r1 += 4
	*(u32 *) (r1+-4) = r2
	r4 += 4
.L2205:
	r0 = *(u32 *) (r4+0)
	*(u32 *) (r1+0) = r0
	r4 += 4
	r1 += 4
	if r4 == r5 goto .L2125
.L2126:
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
	if r4 != r5 goto .L2126
.L2125:
	if r9 > r3 goto .L2121
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
	if r3 == 0 goto .L2127
	if r3 == 1 goto .L2211
	if r3 == 2 goto .L2212
	if r3 == 3 goto .L2213
	if r3 == 4 goto .L2214
	if r3 == 5 goto .L2215
	if r3 == 6 goto .L2216
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2216:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2215:
	r9 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r9
	r5 += 1
.L2214:
	r3 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r3
	r5 += 1
.L2213:
	r2 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r2
	r5 += 1
.L2212:
	r0 = *(u8 *) (r5+0)
	r1 += 1
	*(u8 *) (r1+-1) = r0
	r5 += 1
.L2211:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r1+0) = r9
	r5 += 1
	r1 += 1
	if r5 == r4 goto .L2249
.L2127:
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
	if r5 != r4 goto .L2127
	exit
.L2248:
	r2 = r3
	r2 += -1
	r5 = r2;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2121
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2128
	if r3 == 1 goto .L2199
	if r3 == 2 goto .L2200
	if r3 == 3 goto .L2201
	if r3 == 4 goto .L2202
	if r3 == 5 goto .L2203
	if r3 == 6 goto .L2204
	r4 = r8
	r0 = r7
	r4 += r5
	r0 += r5
	r1 = *(u8 *) (r4+0)
	r5 += -1
	*(u8 *) (r0+0) = r1
	r9 = r5
.L2204:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2203:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L2202:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2201:
	r4 = r7
	r0 = r8
	r4 += r9
	r0 += r9
	r9 += -1
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
.L2200:
	r2 = r7
	r5 = r8
	r2 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L2199:
	r4 = r8
	r0 = r7
	r4 += r9
	r0 += r9
	r1 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r1
	r9 += -1
	if r9 == -1 goto .L2250
.L2128:
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
	if r9 != -1 goto .L2128
.L2121:
	exit
.L2249:
	exit
.L2250:
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
	if r0 != 0 goto .L2260
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2259
	r4 = r2
	r4 >>= 45
	if r4 != 0 goto .L2261
	r5 = r2
	r5 >>= 44
	if r5 != 0 goto .L2262
	r9 = r2
	r9 >>= 43
	if r9 != 0 goto .L2263
	r0 = r2
	r0 >>= 42
	if r0 != 0 goto .L2264
	r4 = r2
	r4 >>= 41
	if r4 != 0 goto .L2265
	r5 = r2
	r5 >>= 40
	if r5 != 0 goto .L2266
	r9 = r2
	r9 >>= 39
	if r9 != 0 goto .L2267
	r2 >>= 38
	if r2 != 0 goto .L2268
	r2 = r1
	r2 >>= 5
	if r2 != 0 goto .L2269
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2270
	r4 = r1
	r4 >>= 3
	if r4 != 0 goto .L2271
	r5 = r1
	r5 >>= 2
	if r5 != 0 goto .L2272
	r3 >>= 1
	if r3 != 0 goto .L2273
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L2276
.L2259:
	exit
.L2260:
	r0 = 0
	exit
.L2271:
	r0 = 12
	exit
.L2276:
	r0 = 15
	exit
.L2261:
	r0 = 2
	exit
.L2262:
	r0 = 3
	exit
.L2263:
	r0 = 4
	exit
.L2264:
	r0 = 5
	exit
.L2265:
	r0 = 6
	exit
.L2266:
	r0 = 7
	exit
.L2267:
	r0 = 8
	exit
.L2268:
	r0 = 9
	exit
.L2269:
	r0 = 10
	exit
.L2270:
	r0 = 11
	exit
.L2272:
	r0 = 13
	exit
.L2273:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2280
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2281
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2282
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2283
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2284
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2285
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2286
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2287
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2288
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2289
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2290
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2291
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2292
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2293
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2294
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2297
	exit
.L2280:
	r0 = 0
	exit
.L2281:
	r0 = 1
	exit
.L2292:
	r0 = 12
	exit
.L2297:
	r0 = 15
	exit
.L2282:
	r0 = 2
	exit
.L2283:
	r0 = 3
	exit
.L2284:
	r0 = 4
	exit
.L2285:
	r0 = 5
	exit
.L2286:
	r0 = 6
	exit
.L2287:
	r0 = 7
	exit
.L2288:
	r0 = 8
	exit
.L2289:
	r0 = 9
	exit
.L2290:
	r0 = 10
	exit
.L2291:
	r0 = 11
	exit
.L2293:
	r0 = 13
	exit
.L2294:
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
	if r0 s>= 0 goto .L2304
	r1 = r6
	call	__fixsfdi
	exit
.L2304:
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
	if r1 == 0 goto .L2310
	r0 = 0
.L2309:
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
	if r3 == 0 goto .L2326
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
	if r1 == 0 goto .L2308
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
	if r2 == 0 goto .L2308
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
	if r1 == 0 goto .L2308
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
	if r2 == 0 goto .L2308
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
	if r3 == 0 goto .L2308
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
	if r1 == 0 goto .L2308
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
	if r1 != 0 goto .L2309
	exit
.L2310:
	r0 = r1
.L2308:
	exit
.L2326:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2330
	if r2 == 0 goto .L2331
	r0 = 0
.L2329:
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
	if r3 == 0 goto .L2347
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
	if r1 == 0 goto .L2328
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
	if r2 == 0 goto .L2328
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
	if r1 == 0 goto .L2328
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
	if r2 == 0 goto .L2328
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
	if r1 == 0 goto .L2328
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
	if r2 == 0 goto .L2328
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
	if r2 != 0 goto .L2329
	exit
.L2331:
	r0 = r2
.L2328:
	exit
.L2330:
	r0 = r1
	exit
.L2347:
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
	if r0 < r2 goto .L2350
	r9 = 32
	r4 = 1
.L2349:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2350
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2383
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2350
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2383
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2350
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2383
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2350
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2383
	r9 += -1
	r1 = r2
	r9 = r9;r9 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2350
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2383
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2350
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2383
	r5 += -1
	r1 = r2
	r5 = r5;r5 &= 0xffffffff
	r1 <<= 32
	if r1 s< 0 goto .L2350
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2383
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2350
	r2 += r2
	r4 += r4
	r2 = r2;r2 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if r0 <= r2 goto .L2383
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2349
.L2352:
	if r3 != 0 goto .L2356
	r0 = r9
.L2356:
	exit
.L2383:
	r9 = r4
	if r4 == 0 goto .L2352
.L2350:
	r9 = 0
.L2355:
	if r2 >= r0 goto .L2354
	r0 -= r2
	r5 = r4
	r0 = r0;r0 &= 0xffffffff
	r5 |= r9
	r9 = r5
.L2354:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2355
	goto .L2352
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L2387
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2388
	r0 = r8
	r0 &= 1
	exit
.L2388:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2387:
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
	if r3 s>= r0 goto .L2392
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2393
	r0 = r8
	r0 &= 1
	exit
.L2393:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2392:
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
	if r2 s< 0 goto .L2424
	if r3 == 0 goto .L2402
	r4 = 0
.L2398:
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
	if r2 == 0 goto .L2400
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
	if r2 == 0 goto .L2400
	r1 = 30
.L2401:
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
	if r3 == 0 goto .L2400
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
	if r2 == 0 goto .L2400
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
	if r9 == 0 goto .L2400
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
	if r3 == 0 goto .L2400
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
	if r2 == 0 goto .L2400
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2401
.L2400:
	if r4 == 0 goto .L2399
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2402:
	r0 = r3
.L2399:
	exit
.L2424:
	r3 = -r3
	r4 = 1
	r3 <<= 32
	r3 s>>= 32
	goto .L2398
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2460
	r4 = 0
.L2426:
	if r2 s>= 0 goto .L2427
	r2 = -r2
	r4 ^= 1
.L2427:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 = 1
	if r3 < r2 goto .L2429
	r0 = 32
	r1 = 1
.L2428:
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2429
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2430
	r0 += -1
	r9 = r2
	r0 = r0;r0 &= 0xffffffff
	r9 <<= 32
	if r9 s< 0 goto .L2429
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2430
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2429
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2430
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2429
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2430
	r9 += -1
	r5 = r2
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2429
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2430
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2429
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2430
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2429
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2430
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L2429
	r2 += r2
	r1 += r1
	r2 = r2;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r2 > r3 goto .L2430
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	if r0 != 0 goto .L2428
.L2431:
	if r4 == 0 goto .L2425
	r0 = -r0
.L2425:
	exit
.L2430:
	if r1 == 0 goto .L2438
.L2429:
	r0 = 0
.L2434:
	if r2 >= r3 goto .L2433
	r3 -= r2
	r5 = r1
	r3 = r3;r3 &= 0xffffffff
	r5 |= r0
	r0 = r5
.L2433:
	r1 >>= 1
	r2 >>= 1
	if r1 != 0 goto .L2434
	goto .L2431
.L2460:
	r1 = -r1
	r4 = 1
	goto .L2426
.L2438:
	r0 = r1
	goto .L2431
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2499
	r4 = 0
.L2462:
	if r0 s>= 0 goto .L2463
	r0 = -r0
.L2463:
	r3 = r1;r3 &= 0xffffffff
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2470
	r9 = 32
	r1 = 1
.L2464:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2470
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2498
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2470
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2498
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2470
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2498
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2470
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2498
	r9 += -1
	r5 = r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2470
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2498
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2470
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2498
	r2 += -1
	r5 = r0
	r2 = r2;r2 &= 0xffffffff
	r5 <<= 32
	if r5 s< 0 goto .L2470
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2498
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2470
	r0 += r0
	r1 += r1
	r0 = r0;r0 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2498
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2464
.L2467:
	r0 = r3
	if r4 == 0 goto .L2461
	r0 = -r0
.L2461:
	exit
.L2498:
	if r1 == 0 goto .L2467
.L2470:
	if r0 >= r3 goto .L2469
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2469:
	r1 >>= 1
	r0 >>= 1
	if r1 != 0 goto .L2470
	goto .L2467
.L2499:
	r1 = -r1
	r4 = 1
	goto .L2462
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if r2 >= r0 goto .L2501
	r4 = r2
	r1 = 0
	r4 <<= 48
	if r4 s<= r1 goto .L2502
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if r4 > r0 goto .L2568
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2504
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if r4 > r0 goto .L2567
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2506
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if r4 > r0 goto .L2566
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2508
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if r4 > r0 goto .L2565
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2510
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if r4 > r0 goto .L2564
	r5 = r4
	r5 <<= 48
	if r5 s<= r1 goto .L2512
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if r4 > r0 goto .L2563
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2514
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if r4 > r0 goto .L2562
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2516
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if r4 > r0 goto .L2561
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2518
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if r4 > r0 goto .L2560
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2520
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if r4 > r0 goto .L2559
	r9 = r4
	r9 <<= 48
	if r9 s<= r1 goto .L2522
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if r4 > r0 goto .L2558
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2524
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if r4 > r0 goto .L2557
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2526
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if r4 > r0 goto .L2556
	r5 = r4
	r5 <<= 48
	r5 s>>= 48
	if r1 s>= r5 goto .L2528
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if r4 > r0 goto .L2555
	r9 = r4
	r9 <<= 48
	r9 s>>= 48
	if r1 s>= r9 goto .L2530
	r2 <<= 15
	r4 = r2;r4 &= 0xffff
	if r4 > r0 goto .L2554
	if r4 != r1 goto .L2614
.L2532:
	if r3 != 0 goto .L2584
	r0 = r1
	exit
.L2584:
	exit
.L2560:
	r5 = 512
.L2534:
	r9 = r5
	r2 = r4
	r9 >>= 1
	r2 >>= 1
	r1 = 0
.L2536:
	if r2 > r0 goto .L2535
	r0 -= r2
	r1 |= r9
	r0 &= 0xffff
.L2535:
	r2 = r5
	r9 = r4
	r2 >>= 2
	r9 >>= 2
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2538
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2538:
	r2 = r5
	r9 = r4
	r2 >>= 3
	r9 >>= 3
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2539
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2539:
	r2 = r5
	r9 = r4
	r2 >>= 4
	r9 >>= 4
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2540
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2540:
	r2 = r5
	r9 = r4
	r2 >>= 5
	r9 >>= 5
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2541
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2541:
	r2 = r5
	r9 = r4
	r2 >>= 6
	r9 >>= 6
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2542
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2542:
	r2 = r5
	r9 = r4
	r2 >>= 7
	r9 >>= 7
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2543
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2543:
	r2 = r5
	r9 = r4
	r2 >>= 8
	r9 >>= 8
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2544
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2544:
	r2 = r5
	r9 = r4
	r2 >>= 9
	r9 >>= 9
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2545
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2545:
	r2 = r5
	r9 = r4
	r2 >>= 10
	r9 >>= 10
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2546
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2546:
	r2 = r5
	r9 = r4
	r2 >>= 11
	r9 >>= 11
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2547
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2547:
	r2 = r5
	r9 = r4
	r2 >>= 12
	r9 >>= 12
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2548
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2548:
	r2 = r5
	r9 = r4
	r2 >>= 13
	r9 >>= 13
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2549
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2549:
	r2 = r5
	r9 = r4
	r2 >>= 14
	r9 >>= 14
	if r2 == 0 goto .L2532
	if r9 >= r0 goto .L2550
	r0 -= r9
	r1 |= r2
	r0 &= 0xffff
.L2550:
	r4 >>= 15
	r5 >>= 15
	if r5 == 0 goto .L2532
	if r4 >= r0 goto .L2532
	r0 -= r4
	r1 |= 1
	r0 &= 0xffff
	goto .L2532
.L2614:
	r0 -= r4
	r1 = 32768
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16384
	r5 = r1
	goto .L2536
.L2501:
	if r2 == r0 goto .L2569
	r1 = 0
	goto .L2532
.L2502:
	r0 -= r2
	r1 = 1
	r0 &= 0xffff
	goto .L2532
.L2504:
	r0 -= r4
	r1 = 2
	r0 &= 0xffff
	r2 &= 32767
	r9 = 1
	r5 = r1
	goto .L2536
.L2506:
	r0 -= r4
	r1 = 4
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2
	r5 = r1
	goto .L2536
.L2508:
	r0 -= r4
	r1 = 8
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4
	r5 = r1
	goto .L2536
.L2510:
	r0 -= r4
	r1 = 16
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8
	r5 = r1
	goto .L2536
.L2512:
	r0 -= r4
	r1 = 32
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 16
	r5 = r1
	goto .L2536
.L2514:
	r0 -= r4
	r1 = 64
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 32
	r5 = r1
	goto .L2536
.L2516:
	r0 -= r4
	r1 = 128
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 64
	r5 = r1
	goto .L2536
.L2518:
	r0 -= r4
	r1 = 256
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 128
	r5 = r1
	goto .L2536
.L2520:
	r0 -= r4
	r1 = 512
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 256
	r5 = r1
	goto .L2536
.L2569:
	r1 = 1
	r0 = 0
	goto .L2532
.L2522:
	r0 -= r4
	r1 = 1024
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 512
	r5 = r1
	goto .L2536
.L2524:
	r0 -= r4
	r1 = 2048
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 1024
	r5 = r1
	goto .L2536
.L2526:
	r0 -= r4
	r1 = 4096
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 2048
	r5 = r1
	goto .L2536
.L2528:
	r0 -= r4
	r1 = 8192
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 4096
	r5 = r1
	goto .L2536
.L2565:
	r5 = 16
	goto .L2534
.L2564:
	r5 = 32
	goto .L2534
.L2530:
	r0 -= r4
	r1 = 16384
	r2 = r4
	r0 &= 0xffff
	r2 >>= 1
	r9 = 8192
	r5 = r1
	goto .L2536
.L2563:
	r5 = 64
	goto .L2534
.L2562:
	r5 = 128
	goto .L2534
.L2561:
	r5 = 256
	goto .L2534
.L2559:
	r5 = 1024
	goto .L2534
.L2566:
	r5 = 8
	goto .L2534
.L2558:
	r5 = 2048
	goto .L2534
.L2557:
	r5 = 4096
	goto .L2534
.L2556:
	r5 = 8192
	goto .L2534
.L2555:
	r5 = 16384
	goto .L2534
.L2554:
	r5 = 32768
	goto .L2534
.L2568:
	r5 = 2
	goto .L2534
.L2567:
	r5 = 4
	goto .L2534
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r4 = 1
	r3 s>>= 32
	if r1 < r2 goto .L2617
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L2616:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L2617
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2651
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2617
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2651
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2617
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2651
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2617
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2651
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2617
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2651
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2617
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2651
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2617
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2651
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L2617
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L2651
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2616
.L2619:
	if r3 == 0 goto .L2615
	r5 = r1
.L2615:
	r0 = r5
	exit
.L2651:
	if r4 == 0 goto .L2619
.L2617:
	r5 = 0
.L2622:
	if r2 >= r1 goto .L2621
	r1 -= r2
	r5 |= r4
.L2621:
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L2622
	goto .L2619
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L2653
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
.L2653:
	if r2 == 0 goto .L2656
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
.L2656:
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
	if r0 == 0 goto .L2658
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L2658:
	if r3 == 0 goto .L2661
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
.L2661:
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
	if r0 == 0 goto .L2663
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
.L2663:
	if r2 == 0 goto .L2666
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
.L2666:
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
	if r0 == 0 goto .L2668
	r4 = r2
	r0 = r2
	r4 s>>= 63
	r3 += -64
	r1 = r4
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L2668:
	if r3 == 0 goto .L2671
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
.L2671:
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
	if r1 <= 65534 goto .L2675
	r0 = 0
.L2675:
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
	if r4 != 0 goto .L2676
	r3 -= r1
	r0 += r9
	r0 += r3
	exit
.L2676:
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
	if r2 == 0 goto .L2679
	r6 = 0
.L2679:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2681
	r0 = 0
.L2681:
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
	if r0 s>= r3 goto .L2692
	if r3 s> r0 goto .L2693
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2692
	if r1 > r2 goto .L2693
	r0 = 1
	exit
.L2692:
	r0 = 0
	exit
.L2693:
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
	if r0 s>= r3 goto .L2698
	if r3 s> r0 goto .L2699
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2698
	if r1 > r2 goto .L2699
	r0 = 1
	r0 += -1
	exit
.L2698:
	r0 = 0
	r0 += -1
	exit
.L2699:
	r0 = 2
	r0 += -1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L2704
	if r2 s> r4 goto .L2705
	if r3 >= r1 goto .L2704
	if r1 > r3 goto .L2705
	r0 = 1
	exit
.L2704:
	r0 = 0
	exit
.L2705:
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
	if r1 == 0 goto .L2708
	r6 = 0
.L2708:
	r6 &= 0xff
	if r0 == 0 goto .L2714
	r1 = 0
.L2710:
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
.L2714:
	r1 = r2
	goto .L2710
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2718
	if r2 != 0 goto .L2721
	r0 = r2
	exit
.L2718:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2721:
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
	if r0 == 0 goto .L2723
	r2 += -32
	r1 >>= 32
	r5 = r2;r5 &= 0xffffffff
	r0 = 0
	r1 >>= r5
	r0 <<= 32
	r3 = r1;r3 &= 0xffffffff
	r0 |= r3
	exit
.L2723:
	if r2 == 0 goto .L2726
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
.L2726:
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
	if r0 == 0 goto .L2728
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L2728:
	if r3 == 0 goto .L2731
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
.L2731:
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
	if r1 != 0 goto .L2738
	r3 = r0
.L2738:
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
	if r4 > r1 goto .L2745
	r9 = 0
.L2745:
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
	if r0 >= r4 goto .L2746
	r9 = 0
.L2746:
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
	if r9 >= r2 goto .L2747
	r0 = 0
.L2747:
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
	if r0 == 0 goto .L2754
	r8 = r2
	r7 = 0x3ff0000000000000 ll
.L2751:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L2749:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2750
.L2752:
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
	if r4 != 0 goto .L2751
	r3 s>>= 1
	r8 = r3
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L2751
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
	if r0 != 0 goto .L2751
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
	if r4 != 0 goto .L2751
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
	if r9 != 0 goto .L2751
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
	if r3 != 0 goto .L2751
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
	if r4 != 0 goto .L2751
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L2751
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L2752
.L2750:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L2748
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L2748:
	r0 = r7
	exit
.L2754:
	r8 = *(u64 *) (r10+-8)
	r7 = 0x3ff0000000000000 ll
	goto .L2749
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
	if r0 == 0 goto .L2763
	r8 = r2
	r7 = 0x3f800000 ll
.L2760:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L2758:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2759
.L2761:
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
	if r4 != 0 goto .L2760
	r3 s>>= 1
	r8 = r3
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if r2 != 0 goto .L2760
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
	if r0 != 0 goto .L2760
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
	if r4 != 0 goto .L2760
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
	if r9 != 0 goto .L2760
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
	if r3 != 0 goto .L2760
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
	if r4 != 0 goto .L2760
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if r1 != 0 goto .L2760
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L2761
.L2759:
	r9 = *(u64 *) (r10+-8)
	if r9 s>= 0 goto .L2757
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L2757:
	r0 = r7
	exit
.L2763:
	r8 = *(u64 *) (r10+-8)
	r7 = 0x3f800000 ll
	goto .L2758
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r0 = r2
	r3 >>= 32
	r0 >>= 32
	if r0 >= r3 goto .L2770
	if r3 > r0 goto .L2771
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2770
	if r1 > r2 goto .L2771
	r0 = 1
	exit
.L2770:
	r0 = 0
	exit
.L2771:
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
	if r0 >= r3 goto .L2776
	if r3 > r0 goto .L2777
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2776
	if r1 > r2 goto .L2777
	r0 = 1
	r0 += -1
	exit
.L2776:
	r0 = 0
	r0 += -1
	exit
.L2777:
	r0 = 2
	r0 += -1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2782
	if r2 > r4 goto .L2783
	if r3 >= r1 goto .L2782
	if r1 > r3 goto .L2783
	r0 = 1
	exit
.L2782:
	r0 = 0
	exit
.L2783:
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
