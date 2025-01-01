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
	if r3 == 6 goto .L68
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	r9 += 1
	r2 += 1
	r4 = r2
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
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	if r4 == 0 goto .L92
	r0 = r4
	r0 &= 7
	if r0 == 0 goto .L88
	if r0 == 1 goto .L132
	if r0 == 2 goto .L133
	if r0 == 3 goto .L134
	if r0 == 4 goto .L135
	if r0 == 5 goto .L136
	if r0 == 6 goto .L137
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L149
	r4 += -1
	r2 += 1
	r1 += 1
.L137:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L149
	r4 += -1
	r2 += 1
	r1 += 1
.L136:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L149
	r4 += -1
	r2 += 1
	r1 += 1
.L135:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L149
	r4 += -1
	r2 += 1
	r1 += 1
.L134:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L149
	r4 += -1
	r2 += 1
	r1 += 1
.L133:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L149
	r4 += -1
	r2 += 1
	r1 += 1
.L132:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L149
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L92
.L88:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L149
	r4 += -1
	r5 = r4
	r9 = r2
	r9 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r2 == r3 goto .L149
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+1)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L149
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L149
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+3)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L149
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L149
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+5)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L149
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L149
	r4 += -1
	r2 = r9
	r2 += 7
	r0 += 7
	r1 = r0
	if r5 != 7 goto .L88
.L92:
	r0 = 0
	exit
.L149:
	if r4 == 0 goto .L92
	r0 = r1
	r0 += 1
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L156
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L151
	if r0 == 1 goto .L193
	if r0 == 2 goto .L194
	if r0 == 3 goto .L195
	if r0 == 4 goto .L196
	if r0 == 5 goto .L197
	if r0 == 6 goto .L198
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L209
	r1 += 1
	r3 += -1
.L198:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L209
	r1 += 1
	r3 += -1
.L197:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L209
	r1 += 1
	r3 += -1
.L196:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L209
	r1 += 1
	r3 += -1
.L195:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L209
	r1 += 1
	r3 += -1
.L194:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L209
	r1 += 1
	r3 += -1
.L193:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L209
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L156
.L151:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L209
	r9 = r1
	r9 += 1
	r1 = r9
	r3 += -1
	r4 = r3
	r5 = *(u8 *) (r9+0)
	if r5 == r2 goto .L209
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+1)
	if r0 == r2 goto .L209
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+2)
	if r5 == r2 goto .L209
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+3)
	if r0 == r2 goto .L209
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+4)
	if r5 == r2 goto .L209
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+5)
	if r0 == r2 goto .L209
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+6)
	if r5 == r2 goto .L209
	r9 += 7
	r1 = r9
	r3 += -1
	if r4 != 7 goto .L151
.L156:
	r0 = 0
	goto .L150
.L209:
	r0 = r1
	if r3 == 0 goto .L156
.L150:
	exit
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L215
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L211
	if r0 == 1 goto .L255
	if r0 == 2 goto .L256
	if r0 == 3 goto .L257
	if r0 == 4 goto .L258
	if r0 == 5 goto .L259
	if r0 == 6 goto .L260
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
.L260:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
.L259:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
.L258:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
.L257:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
.L256:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
.L255:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L215
.L211:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L272
	r3 += -1
	r5 = r3
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r0+0)
	if r6 != r9 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+1)
	r6 = *(u8 *) (r0+1)
	if r9 != r6 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+2)
	r6 = *(u8 *) (r0+2)
	if r9 != r6 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+3)
	r6 = *(u8 *) (r0+3)
	if r9 != r6 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+4)
	r6 = *(u8 *) (r0+4)
	if r9 != r6 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+5)
	r6 = *(u8 *) (r0+5)
	if r9 != r6 goto .L272
	r3 += -1
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r4+6)
	r6 = *(u8 *) (r0+6)
	if r4 != r6 goto .L272
	r3 += -1
	r1 += 1
	r0 += 7
	r2 = r0
	if r5 != 7 goto .L211
.L215:
	r0 = 0
	exit
.L272:
	if r3 == 0 goto .L215
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
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
	if r4 == 0 goto .L274
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L273
	if r4 == 1 goto .L274
	if r4 == 2 goto .L288
	if r4 == 3 goto .L286
	if r4 == 4 goto .L284
	if r4 == 5 goto .L282
	if r4 == 6 goto .L280
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L273
.L280:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L273
.L282:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L273
.L284:
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L273
.L286:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L273
.L288:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L273
.L274:
	if r0 == r1 goto .L307
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L273
	r3 = r0
	r5 = r0
	r5 += -1
	r4 = *(u8 *) (r0+0)
	if r4 == r2 goto .L273
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L273
	r3 = r5
	r5 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L273
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L273
	r3 = r5
	r5 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L273
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L273
	r3 = r5
	r0 += -7
	r5 = *(u8 *) (r5+0)
	if r5 != r2 goto .L274
	goto .L273
.L307:
	r3 = 0
.L273:
	r0 = r3
	exit
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L309
	r4 = r1
	r4 += r3
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L310
	if r3 == 1 goto .L335
	if r3 == 2 goto .L336
	if r3 == 3 goto .L337
	if r3 == 4 goto .L338
	if r3 == 5 goto .L339
	if r3 == 6 goto .L340
	*(u8 *) (r1+0) = r2
	r0 += 1
.L340:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L339:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L338:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L337:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L336:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L335:
	*(u8 *) (r0+0) = r2
	r0 += 1
	if r4 == r0 goto .L309
.L310:
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
	if r4 != r0 goto .L310
.L309:
	r0 = r1
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
	if r1 == 0 goto .L351
.L352:
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L351
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L351
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L351
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L351
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L351
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L351
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L351
	r2 += 7
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L352
	exit
.L351:
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
	if r1 == 0 goto .L378
.L372:
	r4 &= 0xff
	if r4 == r2 goto .L371
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 != 0 goto .L372
.L371:
	exit
.L378:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r0 = r1
	r2 <<= 32
	r2 s>>= 32
.L381:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r2 goto .L380
	r0 += 1
	if r3 != 0 goto .L381
	r0 = 0
.L380:
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L388
.L386:
	r1 += 1
	r2 += 1
.L388:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	if r0 != r3 goto .L385
	if r0 != 0 goto .L386
.L385:
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
	if r0 == 0 goto .L390
.L391:
	r4 = r2
	r4 += 1
	r2 = r4
	r3 = *(u8 *) (r4+0)
	if r3 == 0 goto .L390
	r2 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L390
	r2 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L390
	r2 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L390
	r2 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L390
	r2 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L390
	r2 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L390
	r2 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L391
.L390:
	r0 = r2
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L413
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L410
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L411
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L410
	if r4 != r0 goto .L410
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L410
	if r3 == 1 goto .L411
	if r3 == 2 goto .L455
	if r3 == 3 goto .L456
	if r3 == 4 goto .L457
	if r3 == 5 goto .L458
	if r3 == 6 goto .L459
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L410
	if r3 != r0 goto .L410
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L410
.L459:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L410
	if r9 != r0 goto .L410
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L410
.L458:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L410
	if r4 != r0 goto .L410
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L410
.L457:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L410
	if r3 != r0 goto .L410
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L410
.L456:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L410
	if r9 != r0 goto .L410
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L410
.L455:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L410
	if r4 != r0 goto .L410
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L410
.L411:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L410
	if r1 == r5 goto .L410
	if r3 != r0 goto .L410
	r9 = r1
	r9 += 1
	r2 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L410
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L410
	if r1 != r0 goto .L410
	r2 += 1
	r0 = *(u8 *) (r9+1)
	if r0 == 0 goto .L410
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L410
	if r3 != r0 goto .L410
	r2 += 1
	r0 = *(u8 *) (r9+2)
	if r0 == 0 goto .L410
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L410
	if r4 != r0 goto .L410
	r2 += 1
	r0 = *(u8 *) (r9+3)
	if r0 == 0 goto .L410
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L410
	if r1 != r0 goto .L410
	r2 += 1
	r0 = *(u8 *) (r9+4)
	if r0 == 0 goto .L410
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L410
	if r3 != r0 goto .L410
	r2 += 1
	r0 = *(u8 *) (r9+5)
	if r0 == 0 goto .L410
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L410
	if r4 != r0 goto .L410
	r2 += 1
	r0 = *(u8 *) (r9+6)
	if r0 == 0 goto .L410
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L410
	if r1 != r0 goto .L410
	r1 = r9
	r1 += 7
	r2 += 1
	r0 = *(u8 *) (r9+7)
	if r0 != 0 goto .L411
.L410:
	r2 = *(u8 *) (r2+0)
	r0 -= r2
	exit
.L413:
	r0 = 0
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L500
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
	if r3 == 0 goto .L502
	if r3 == 1 goto .L525
	if r3 == 2 goto .L526
	if r3 == 3 goto .L527
	if r3 == 4 goto .L528
	if r3 == 5 goto .L529
	if r3 == 6 goto .L530
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L530:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L529:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L528:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L527:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L526:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L525:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L539
.L502:
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
	if r0 != r5 goto .L502
.L500:
	exit
.L539:
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
	if r2 <= 24 goto .L541
	r1 = 0
.L541:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L543
	r0 = 0
.L543:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L546
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L546:
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
	if r1 <= 30 goto .L549
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L549:
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
	if r1 <= 8 goto .L551
	r0 = 0
.L551:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L553
	r0 = 0
.L553:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L555
	r0 = 0
.L555:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L557
	r0 = 0
.L557:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L561
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 3 goto .L560
	r0 = 0
.L560:
	r0 &= 1
	exit
.L561:
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
	if r1 <= 24 goto .L563
	r0 = 0
.L563:
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
	if r1 <= 30 goto .L569
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L569
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L569
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L566
	r9 = 0
.L566:
	r0 = r9
	r0 &= 1
	exit
.L569:
	r0 = 1
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	r1 += -48
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 8 goto .L571
	r0 = 0
.L571:
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
	if r1 <= 254 goto .L580
	if r1 <= 8230 goto .L578
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L578
	r2 += -49110
	if r2 <= 8183 goto .L578
	r1 += -65532
	if r1 > 1048579 goto .L579
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L580:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s> 32 goto .L574
	r1 = 0
.L574:
	r0 = r1
	r0 &= 1
	exit
.L578:
	r0 = 1
	exit
.L579:
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
	if r2 <= 8 goto .L584
	r1 |= 32
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 4 goto .L583
	r0 = 0
.L583:
	r0 &= 1
	exit
.L584:
	r0 = 1
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
	if r0 != 0 goto .L589
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L590
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L593
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L589:
	r0 = r6
	exit
.L590:
	r0 = r7
	exit
.L593:
	r0 = 0x0000000000000000 ll
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
	if r0 != 0 goto .L597
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L598
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L601
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L597:
	r0 = r6
	exit
.L598:
	r0 = r7
	exit
.L601:
	r0 = 0x00000000 ll
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
	if r0 != 0 goto .L610
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L609
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L604
	if r0 != 0 goto .L610
.L609:
	r0 = r7
	exit
.L604:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L610
	r6 = r7
.L610:
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
	if r0 != 0 goto .L621
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L620
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L615
	if r2 != 0 goto .L621
.L620:
	r0 = r7
	exit
.L615:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L621
	r6 = r7
.L621:
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
	if r0 != 0 goto .L632
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L631
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L626
	if r0 != 0 goto .L632
.L631:
	r0 = r7
	exit
.L626:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L632
	r6 = r7
.L632:
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
	if r0 != 0 goto .L641
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L643
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L637
	if r0 != 0 goto .L643
.L641:
	r0 = r7
	exit
.L637:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L643
	r6 = r7
.L643:
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
	if r0 != 0 goto .L652
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L654
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L648
	if r2 != 0 goto .L654
.L652:
	r0 = r7
	exit
.L648:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L654
	r6 = r7
.L654:
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
	if r0 != 0 goto .L663
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L665
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L659
	if r0 != 0 goto .L665
.L663:
	r0 = r7
	exit
.L659:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L665
	r6 = r7
.L665:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L669
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
	if r1 == 0 goto .L669
	r4 = r1
	r4 &= 63
	r0 = r2
	r0 += r4
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r3
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L669
	r5 = r1
	r5 &= 63
	r9 = r2
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L669
	r3 = r1
	r3 &= 63
	r5 = r2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L669
	r3 = r1
	r3 &= 63
	r4 = r2
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L669
	r2 += r1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L669:
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
	if r2 == 0 goto .L695
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L689
	*(u64 *) (r2+8) = r1
.L689:
	exit
.L695:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L697
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L697:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L696
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L696:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L707
.L706:
	exit
.L707:
	r1 = -r1
	r0 = r1
	goto .L706
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r5 = 1
	r4 = 4
	r9 = 0
	goto .L709
.L711:
	r0 &= 1
	if r0 == 0 goto .L730
.L712:
	r1 += 1
.L709:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == 32 goto .L712
	r0 = r5
	r3 = r2
	r3 += -9
	r3 = r3;r3 &= 0xffffffff
	if r4 > r3 goto .L711
	r0 = r9
	goto .L711
.L730:
	if r2 == 43 goto .L719
	if r2 != 45 goto .L720
	r4 = 1
.L713:
	r1 += 1
.L714:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	r9 = 9
	if r5 > 8 goto .L716
.L715:
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
	if r9 <= r5 goto .L716
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
	if r9 <= r5 goto .L716
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
	if r9 <= r5 goto .L716
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
	if r9 > r5 goto .L715
.L716:
	if r4 != 0 goto .L717
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L717:
	exit
.L719:
	r4 = 0
	goto .L713
.L720:
	r4 = 0
	goto .L714
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r4 = 1
	r3 = 4
	r5 = 0
	goto .L732
.L734:
	r2 = r9
	r2 &= 1
	if r2 == 0 goto .L755
.L735:
	r1 += 1
.L732:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L735
	r9 = r4
	r2 = r0
	r2 += -9
	r2 = r2;r2 &= 0xffffffff
	if r3 > r2 goto .L734
	r9 = r5
	goto .L734
.L755:
	if r0 == 43 goto .L736
	if r0 != 45 goto .L737
	r2 = 1
.L736:
	r1 += 1
.L737:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	r3 = 0
	r4 = 9
	if r5 > 8 goto .L739
.L738:
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
	if r4 <= r5 goto .L739
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
	if r4 <= r5 goto .L739
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
	if r4 <= r5 goto .L739
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
	if r4 > r5 goto .L738
.L739:
	if r2 != 0 goto .L731
	r3 = -r3
.L731:
	r0 = r3
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r4 = 1
	r3 = 4
	r5 = 0
	goto .L757
.L759:
	r2 = r9
	r2 &= 1
	if r2 == 0 goto .L780
.L760:
	r1 += 1
.L757:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 32 goto .L760
	r9 = r4
	r2 = r0
	r2 += -9
	r2 = r2;r2 &= 0xffffffff
	if r3 > r2 goto .L759
	r9 = r5
	goto .L759
.L780:
	if r0 == 43 goto .L761
	if r0 != 45 goto .L762
	r2 = 1
.L761:
	r1 += 1
.L762:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r5 = r0;r5 &= 0xffffffff
	r3 = 0
	r4 = 9
	if r5 > 8 goto .L764
.L763:
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
	if r4 <= r5 goto .L764
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
	if r4 <= r5 goto .L764
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
	if r4 <= r5 goto .L764
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
	if r4 > r5 goto .L763
.L764:
	if r2 != 0 goto .L756
	r3 = -r3
.L756:
	r0 = r3
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
	if r1 s< 0 goto .L784
.L783:
	exit
.L784:
	r0 = -r0
	goto .L783
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
	if r1 s< 0 goto .L788
.L787:
	exit
.L788:
	r0 = -r0
	goto .L787
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
	if r1 s< 0 goto .L792
.L791:
	exit
.L792:
	r0 = -r0
	goto .L791
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
	if r0 == 0 goto .L800
.L795:
	if r2 == r4 goto .L803
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = r3
	r4 s>>= 32
	if r3 != 0 goto .L795
.L800:
	r0 = 0
	goto .L794
.L803:
	r0 = r1
	if r4 == 0 goto .L800
.L794:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L815
.L807:
	r1 += 4
	r2 += 4
.L815:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 != r4 goto .L806
	if r3 == 0 goto .L806
	if r4 != 0 goto .L807
.L806:
	if r4 s>= r3 goto .L810
	r0 = 1
	if r3 s> r4 goto .L809
	r0 = 0
.L809:
	r0 &= 1
	exit
.L810:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L817:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L833
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L833
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L833
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L833
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L833
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L833
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L833
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L817
.L833:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L837
	r0 = r1
.L836:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L835
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L835
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L835
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L835
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L835
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L835
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L835
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L836
	goto .L835
.L837:
	r0 = r1
.L835:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L859
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L854
	if r0 == 1 goto .L880
	if r0 == 2 goto .L881
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r4 goto .L855
	if r5 == 0 goto .L855
	r3 += -1
	r1 += 4
	r2 += 4
.L881:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L855
	if r9 == 0 goto .L855
	r3 += -1
	r1 += 4
	r2 += 4
.L880:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L855
	if r5 == 0 goto .L855
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L859
.L854:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L855
	if r0 == 0 goto .L855
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
	if r9 != r6 goto .L855
	if r7 == 0 goto .L855
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r7 = r4
	r7 s>>= 32
	if r4 != r6 goto .L855
	if r7 == 0 goto .L855
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L855
	if r7 == 0 goto .L855
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L854
.L859:
	r0 = 0
	exit
.L855:
	if r3 == 0 goto .L859
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L860
	r0 = 1
	if r3 s> r1 goto .L858
	r0 = 0
.L858:
	r0 &= 1
	exit
.L860:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L896
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L891
	if r0 == 1 goto .L933
	if r0 == 2 goto .L934
	if r0 == 3 goto .L935
	if r0 == 4 goto .L936
	if r0 == 5 goto .L937
	if r0 == 6 goto .L938
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L949
	r3 += -1
	r1 += 4
.L938:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L949
	r3 += -1
	r1 += 4
.L937:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L949
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
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L949
	r3 += -1
	r1 += 4
.L934:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L949
	r3 += -1
	r1 += 4
.L933:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L949
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L896
.L891:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L949
	r3 += -1
	r4 = r3
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L949
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
	r9 += 28
	r1 = r9
	if r4 != 7 goto .L891
.L896:
	r0 = 0
	goto .L890
.L949:
	r0 = r1
	if r3 == 0 goto .L896
.L890:
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L956
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L951
	if r0 == 1 goto .L997
	if r0 == 2 goto .L998
	if r0 == 3 goto .L999
	if r0 == 4 goto .L1000
	if r0 == 5 goto .L1001
	if r0 == 6 goto .L1002
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
.L1002:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
.L1001:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
.L1000:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
.L999:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
.L998:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
.L997:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L956
.L951:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1014
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
	if r6 != r9 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1014
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1014
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	if r5 != 7 goto .L951
.L956:
	r0 = 0
	exit
.L1014:
	if r3 == 0 goto .L956
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L957
	r0 = 1
	if r3 s> r1 goto .L955
	r0 = 0
.L955:
	r0 &= 1
	exit
.L957:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1016
	r5 = r1
	r4 = r2
	r0 = r3
	r0 += -1
	r6 = r3
	r6 <<= 2
	r9 = r1
	r9 -= r2
	if r6 >= r9 goto .L1017
	if r3 == 0 goto .L1016
	r3 &= 7
	if r3 == 0 goto .L1018
	if r3 == 1 goto .L1068
	if r3 == 2 goto .L1069
	if r3 == 3 goto .L1070
	if r3 == 4 goto .L1071
	if r3 == 5 goto .L1072
	if r3 == 6 goto .L1073
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r0 += -1
	r5 += 4
	r2 += 4
	r4 = r2
.L1073:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1072:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1071:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
.L1070:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1069:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1068:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
	if r0 == -1 goto .L1016
.L1018:
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
	if r0 != -1 goto .L1018
	goto .L1016
.L1017:
	if r3 == 0 goto .L1016
	r0 <<= 2
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r0 >>= 2
	r0 += 1
	r0 &= 7
	if r0 == 0 goto .L1019
	if r0 == 1 goto .L1074
	if r0 == 2 goto .L1075
	if r0 == 3 goto .L1076
	if r0 == 4 goto .L1077
	if r0 == 5 goto .L1078
	if r0 == 6 goto .L1079
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
.L1079:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1078:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1077:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
.L1076:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1075:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1074:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r5 = r3
	r3 += -4
	r4 += -4
	if r2 == r5 goto .L1016
.L1019:
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
	if r2 != r0 goto .L1019
.L1016:
	r0 = r1
	exit
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r2 s>>= 32
	r4 = r3
	r4 += -1
	if r3 == 0 goto .L1098
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L1099
	if r3 == 1 goto .L1124
	if r3 == 2 goto .L1125
	if r3 == 3 goto .L1126
	if r3 == 4 goto .L1127
	if r3 == 5 goto .L1128
	if r3 == 6 goto .L1129
	*(u32 *) (r1+0) = r2
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
.L1127:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1126:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1125:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1124:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L1098
.L1099:
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
	if r4 != -1 goto .L1099
.L1098:
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1140
	r5 = r1
	r5 += r3
	r2 += r3
	if r3 == 0 goto .L1139
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1142
	if r9 == 1 goto .L1192
	if r9 == 2 goto .L1193
	if r9 == 3 goto .L1194
	if r9 == 4 goto .L1195
	if r9 == 5 goto .L1196
	if r9 == 6 goto .L1197
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1197:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1196:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
.L1195:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
.L1194:
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1193:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1192:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
	if r1 == r5 goto .L1222
.L1142:
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
	if r1 != r5 goto .L1142
	exit
.L1140:
	if r1 == r2 goto .L1139
	if r3 == 0 goto .L1139
	r9 = r1
	r4 = r2
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L1143
	if r3 == 1 goto .L1198
	if r3 == 2 goto .L1199
	if r3 == 3 goto .L1200
	if r3 == 4 goto .L1201
	if r3 == 5 goto .L1202
	if r3 == 6 goto .L1203
	r0 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r0
	r9 += 1
	r2 += 1
	r4 = r2
.L1203:
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r1
	r9 += 1
	r4 += 1
.L1202:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
.L1201:
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r3
	r9 += 1
	r4 += 1
.L1200:
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r0
	r9 += 1
	r4 += 1
.L1199:
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r1
	r9 += 1
	r4 += 1
.L1198:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
	if r9 == r5 goto .L1223
.L1143:
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
	if r9 != r5 goto .L1143
.L1139:
	exit
.L1222:
	exit
.L1223:
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
.L1240:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1263
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1263
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1263
	r5 = r1
	r5 >>= r0
	r5 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1263
	r9 = r1
	r9 >>= r0
	r9 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1263
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1263
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1263
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1263
	if r0 != 32 goto .L1240
	r0 = 0
	exit
.L1263:
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
	if r1 == 0 goto .L1268
	r0 = r2
	r0 &= 1
	if r0 != 0 goto .L1266
	r0 = 1
.L1267:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1285
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1266
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1266
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1266
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1266
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1266
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1266
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1267
	exit
.L1285:
	exit
.L1268:
	r0 = 0
.L1266:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L1289
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1290
.L1288:
	r0 = r7
	r0 &= 1
	exit
.L1290:
	r7 = 0
	goto .L1288
.L1289:
	r0 = 1
	exit
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	r6 = r1
	r2 = 0xffefffffffffffff ll
	call	__ltdf2
	if r0 s<= 0 goto .L1294
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1295
.L1293:
	r0 = r7
	r0 &= 1
	exit
.L1295:
	r7 = 0
	goto .L1293
.L1294:
	r0 = 1
	exit
	.size	gl_isinfd, .-gl_isinfd
	.align	3
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	r6 = r1
	r2 = 0xffefffffffffffff ll
	call	__ltdf2
	if r0 s<= 0 goto .L1299
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1300
.L1298:
	r0 = r7
	r0 &= 1
	exit
.L1300:
	r7 = 0
	goto .L1298
.L1299:
	r0 = 1
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
	if r0 != 0 goto .L1303
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1303
	if r6 s< 0 goto .L1316
	r7 = 0x40000000 ll
	goto .L1307
.L1316:
	r7 = 0x3f000000 ll
	goto .L1307
.L1306:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1303
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1307:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1306
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1306
.L1303:
	r0 = r8
	exit
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
	if r0 != 0 goto .L1318
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1318
	if r6 s< 0 goto .L1331
	r7 = 0x4000000000000000 ll
	goto .L1322
.L1331:
	r7 = 0x3fe0000000000000 ll
	goto .L1322
.L1321:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1318
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1322:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1321
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1321
.L1318:
	r0 = r8
	exit
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
	if r0 != 0 goto .L1333
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1333
	if r6 s< 0 goto .L1346
	r7 = 0x4000000000000000 ll
	goto .L1337
.L1346:
	r7 = 0x3fe0000000000000 ll
	goto .L1337
.L1336:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1333
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1337:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1336
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1336
.L1333:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1348
	r4 = r2
	r0 = r1
	r5 = r2
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L1349
	if r3 == 1 goto .L1374
	if r3 == 2 goto .L1375
	if r3 == 3 goto .L1376
	if r3 == 4 goto .L1377
	if r3 == 5 goto .L1378
	if r3 == 6 goto .L1379
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 ^= r3
	*(u8 *) (r1+0) = r0
	r2 += 1
	r4 = r2
	r0 = r1
	r0 += 1
.L1379:
	r2 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r2 ^= r9
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1378:
	r2 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r2 ^= r3
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1377:
	r9 = *(u8 *) (r0+0)
	r2 = *(u8 *) (r4+0)
	r9 ^= r2
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1376:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1375:
	r2 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r2 ^= r9
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1374:
	r2 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r2 ^= r3
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
	if r4 == r5 goto .L1348
.L1349:
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
	if r4 != r5 goto .L1349
.L1348:
	r0 = r1
	exit
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1396
	r0 = r1
.L1391:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1390
	r0 += 1
	r9 = *(u8 *) (r4+1)
	if r9 == 0 goto .L1390
	r0 += 1
	r5 = *(u8 *) (r4+2)
	if r5 == 0 goto .L1390
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1390
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1390
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1390
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1390
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1391
	goto .L1390
.L1396:
	r0 = r1
.L1390:
	if r3 == 0 goto .L1398
	r9 = r3
	r9 &= 7
	if r9 == 0 goto .L1392
	if r9 == 1 goto .L1445
	if r9 == 2 goto .L1446
	if r9 == 3 goto .L1447
	if r9 == 4 goto .L1448
	if r9 == 5 goto .L1449
	if r9 == 6 goto .L1450
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1467
	r2 += 1
	r0 += 1
	r3 += -1
.L1450:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1467
	r2 += 1
	r0 += 1
	r3 += -1
.L1449:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1467
	r2 += 1
	r0 += 1
	r3 += -1
.L1448:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1467
	r2 += 1
	r0 += 1
	r3 += -1
.L1447:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1467
	r2 += 1
	r0 += 1
	r3 += -1
.L1446:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1467
	r2 += 1
	r0 += 1
	r3 += -1
.L1445:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1467
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1398
.L1392:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1467
	r2 += 1
	r0 += 1
	r3 += -1
	r5 = r3
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1467
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1467
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1467
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1467
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1467
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+5)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1467
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+6)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1467
	r2 += 7
	r0 += 1
	r3 += -1
	if r5 != 7 goto .L1392
	goto .L1398
.L1467:
	if r3 != 0 goto .L1395
.L1398:
	*(u8 *) (r0+0) = r3
.L1395:
	r0 = r1
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1523
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1469
	if r0 == 1 goto .L1510
	if r0 == 2 goto .L1511
	if r0 == 3 goto .L1512
	if r0 == 4 goto .L1513
	if r0 == 5 goto .L1514
	if r0 == 6 goto .L1515
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1468
	r3 = 1
.L1515:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 != 0 goto .L1525
.L1468:
	r0 = r3
	exit
.L1523:
	r3 = 0
	goto .L1468
.L1525:
	r3 += 1
.L1514:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1468
	r3 += 1
.L1513:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1468
	r3 += 1
.L1512:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1468
	r3 += 1
.L1511:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1468
	r3 += 1
.L1510:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1468
	r3 += 1
	if r2 == r3 goto .L1468
.L1469:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1468
	r0 = r3
	r0 += 1
	r3 = r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1468
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1468
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1468
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1468
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1468
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1468
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1468
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1469
	goto .L1468
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L1534:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1531
	r3 = r2
.L1530:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 == 0 goto .L1535
	r3 += 1
	if r4 != r5 goto .L1530
.L1528:
	r0 = r1
	exit
.L1535:
	r1 += 1
	goto .L1534
.L1531:
	r1 = 0
	goto .L1528
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1538
.L1537:
	r1 += 1
	if r0 == 0 goto .L1541
.L1538:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1537
	r3 = r1
	goto .L1537
.L1541:
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
	if r0 == 0 goto .L1543
.L1544:
	r9 = r3
	r9 += 1
	r3 = r9
	r5 = *(u8 *) (r9+0)
	if r5 == 0 goto .L1543
	r3 += 1
	r0 = *(u8 *) (r9+1)
	if r0 == 0 goto .L1543
	r3 += 1
	r5 = *(u8 *) (r9+2)
	if r5 == 0 goto .L1543
	r3 += 1
	r0 = *(u8 *) (r9+3)
	if r0 == 0 goto .L1543
	r3 += 1
	r5 = *(u8 *) (r9+4)
	if r5 == 0 goto .L1543
	r3 += 1
	r0 = *(u8 *) (r9+5)
	if r0 == 0 goto .L1543
	r3 += 1
	r5 = *(u8 *) (r9+6)
	if r5 == 0 goto .L1543
	r3 += 1
	r9 = *(u8 *) (r9+7)
	if r9 != 0 goto .L1544
.L1543:
	r9 = r3
	r9 -= r2
	if r3 == r2 goto .L1545
	r9 += -1
	goto .L1551
.L1554:
	r3 = r2
.L1547:
	r3 = *(u8 *) (r3+0)
	if r3 == r0 goto .L1545
	r1 += 1
.L1551:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r4 goto .L1550
	r1 += 1
	if r3 != 0 goto .L1551
	r1 = 0
.L1545:
	r0 = r1
	exit
.L1550:
	if r1 == 0 goto .L1545
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1554
	r7 = r1
	r7 += r9
	r3 = r2
	r5 = r1
	r6 = r9
	r6 &= 7
	if r6 == 0 goto .L1548
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L1547
	if r5 != r0 goto .L1547
	r5 = r1
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L1547
	if r6 == 1 goto .L1548
	if r6 == 2 goto .L1606
	if r6 == 3 goto .L1607
	if r6 == 4 goto .L1608
	if r6 == 5 goto .L1609
	if r6 == 6 goto .L1610
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1547
	if r6 != r0 goto .L1547
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1547
.L1610:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1547
	if r6 != r0 goto .L1547
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1547
.L1609:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1547
	if r6 != r0 goto .L1547
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1547
.L1608:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1547
	if r6 != r0 goto .L1547
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1547
.L1607:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1547
	if r6 != r0 goto .L1547
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1547
.L1606:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1547
	if r6 != r0 goto .L1547
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1547
.L1548:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1547
	if r5 == r7 goto .L1547
	if r6 != r0 goto .L1547
	r8 = r5
	r8 += 1
	r3 += 1
	r6 = r3
	r0 = *(u8 *) (r5+1)
	if r0 == 0 goto .L1547
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1547
	if r5 != r0 goto .L1547
	r3 += 1
	r0 = *(u8 *) (r8+1)
	if r0 == 0 goto .L1547
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1547
	if r5 != r0 goto .L1547
	r3 += 1
	r0 = *(u8 *) (r8+2)
	if r0 == 0 goto .L1547
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1547
	if r5 != r0 goto .L1547
	r3 += 1
	r0 = *(u8 *) (r8+3)
	if r0 == 0 goto .L1547
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1547
	if r5 != r0 goto .L1547
	r3 += 1
	r0 = *(u8 *) (r8+4)
	if r0 == 0 goto .L1547
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1547
	if r5 != r0 goto .L1547
	r3 += 1
	r0 = *(u8 *) (r8+5)
	if r0 == 0 goto .L1547
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1547
	if r5 != r0 goto .L1547
	r3 += 1
	r0 = *(u8 *) (r8+6)
	if r0 == 0 goto .L1547
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1547
	if r5 != r0 goto .L1547
	r5 = r8
	r5 += 7
	r3 += 1
	r0 = *(u8 *) (r8+7)
	if r0 != 0 goto .L1548
	goto .L1547
	.size	strstr, .-strstr
	.align	3
	.global	copysign
	.type	copysign, @function
copysign:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1666
.L1658:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1661
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1660
.L1661:
	r0 = r6
	exit
.L1666:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1658
.L1660:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1661
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	*(u64 *) (r10+-8) = r3
	r7 = r4
	if r4 == 0 goto .L1675
	if r4 >= r2 goto .L1677
	r2 -= r4
	r5 = r1
	r5 += r2
	if r1 > r5 goto .L1677
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
	goto .L1674
.L1748:
	r5 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-24)
	r7 = *(u64 *) (r10+-32)
.L1737:
	if r3 == 0 goto .L1667
	r3 = *(u8 *) (r2+0)
	r2 = *(u8 *) (r0+0)
	if r3 == r2 goto .L1667
.L1669:
	if r5 <= r1 goto .L1677
.L1674:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r1
	r1 += 1
	if r0 != r9 goto .L1669
	r3 = r7
	r3 += -1
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	if r7 == 1 goto .L1667
	r2 = r1
	r6 = r3
	r6 &= 7
	if r6 == 0 goto .L1742
	if r6 == 1 goto .L1720
	if r6 == 2 goto .L1721
	if r6 == 3 goto .L1722
	if r6 == 4 goto .L1723
	if r6 == 5 goto .L1724
	if r6 == 6 goto .L1725
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1737
	r3 += -1
	r2 += 1
	r0 += 1
.L1725:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1737
	r3 += -1
	r2 += 1
	r0 += 1
.L1724:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1737
	r3 += -1
	r2 += 1
	r0 += 1
.L1723:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1737
	r3 += -1
	r2 += 1
	r0 += 1
.L1722:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1737
	r3 += -1
	r2 += 1
	r0 += 1
.L1721:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1737
	r3 += -1
	r2 += 1
	r0 += 1
.L1720:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1737
	r3 += -1
	r2 += 1
	r0 += 1
	if r3 == 0 goto .L1667
.L1742:
	*(u64 *) (r10+-16) = r5
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r7
.L1670:
	r5 = *(u8 *) (r2+0)
	r1 = *(u8 *) (r0+0)
	if r5 != r1 goto .L1748
	r3 += -1
	r6 = r3
	r2 += 1
	r5 = r2
	r0 += 1
	r1 = r0
	r8 = *(u8 *) (r2+0)
	r7 = *(u8 *) (r0+0)
	if r8 != r7 goto .L1748
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+1)
	r7 = *(u8 *) (r1+1)
	if r8 != r7 goto .L1748
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+2)
	r7 = *(u8 *) (r1+2)
	if r8 != r7 goto .L1748
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+3)
	r7 = *(u8 *) (r1+3)
	if r8 != r7 goto .L1748
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+4)
	r7 = *(u8 *) (r1+4)
	if r8 != r7 goto .L1748
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+5)
	r7 = *(u8 *) (r1+5)
	if r8 != r7 goto .L1748
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+6)
	r7 = *(u8 *) (r1+6)
	if r8 != r7 goto .L1748
	r3 += -1
	r2 += 1
	r0 += 1
	if r6 != 7 goto .L1670
	goto .L1667
.L1675:
	r4 = r1
	goto .L1667
.L1677:
	r4 = 0
.L1667:
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
	if r0 s<= 0 goto .L1788
	*(u64 *) (r10+-8) = 0
.L1750:
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1785
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1754:
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
	if r0 s< 0 goto .L1755
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
	if r0 s< 0 goto .L1755
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
	if r0 s< 0 goto .L1755
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
	if r0 s>= 0 goto .L1754
	goto .L1755
.L1788:
	r0 = -9223372036854775808 ll
	r0 ^= r7
	r7 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1750
.L1785:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L1786
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	r8 = 0
	if r0 == 0 goto .L1755
	r6 = r8
.L1758:
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
	if r6 s< r0 goto .L1755
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
	if r6 s< r0 goto .L1755
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
	if r6 s< r0 goto .L1755
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
	if r6 s>= r0 goto .L1758
	goto .L1755
.L1786:
	r8 = 0
.L1755:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r8
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1759
	r3 = -9223372036854775808 ll
	r3 ^= r7
	r7 = r3
.L1759:
	r0 = r7
	exit
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = 0
	if r1 == 0 goto .L1789
.L1791:
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
	if r1 == 0 goto .L1789
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1789
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1789
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1789
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1789
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1789
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1791
	exit
.L1808:
	exit
.L1789:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1818
	r9 = 32
	r4 = 1
.L1810:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1811
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1811
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1811
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1811
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1811
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1811
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1811
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1811
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1811
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1811
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1811
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1811
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1811
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1811
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1811
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1811
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1810
.L1835:
	r1 = 0
.L1813:
	if r3 != 0 goto .L1816
	r0 = r1
.L1816:
	exit
.L1811:
	if r4 == 0 goto .L1835
.L1818:
	r1 = 0
	goto .L1812
.L1815:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1813
.L1812:
	if r2 >= r0 goto .L1815
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L1815
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
	if r2 == r1 goto .L1838
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
.L1838:
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
	if r0 == r2 goto .L1841
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1841:
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
	if r1 == 0 goto .L1843
.L1844:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1861
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1843
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1843
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1843
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1843
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1843
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1843
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1844
	exit
.L1861:
	exit
.L1843:
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
	if r1 >= r2 goto .L1863
.L1866:
	if r5 == 0 goto .L1865
	r0 = r2
	r4 = r1
	r5 <<= 3
	r6 = r5
	r6 += r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1869
	if r5 == 1 goto .L1946
	if r5 == 2 goto .L1947
	if r5 == 3 goto .L1948
	if r5 == 4 goto .L1949
	if r5 == 5 goto .L1950
	if r5 == 6 goto .L1951
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
	r4 += 8
.L1951:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1950:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1949:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1948:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1947:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1946:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1865
.L1869:
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
	if r0 != r6 goto .L1869
.L1865:
	if r9 > r3 goto .L1862
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
	if r9 == 0 goto .L1870
	if r9 == 1 goto .L1952
	if r9 == 2 goto .L1953
	if r9 == 3 goto .L1954
	if r9 == 4 goto .L1955
	if r9 == 5 goto .L1956
	if r9 == 6 goto .L1957
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1957:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1956:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1955:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1954:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1953:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1952:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1982
.L1870:
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
	if r0 != r2 goto .L1870
	exit
.L1863:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1866
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1862
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1871
	if r3 == 1 goto .L1940
	if r3 == 2 goto .L1941
	if r3 == 3 goto .L1942
	if r3 == 4 goto .L1943
	if r3 == 5 goto .L1944
	if r3 == 6 goto .L1945
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L1945:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L1944:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L1943:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L1942:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L1941:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L1940:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L1983
.L1871:
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
	if r3 != 6 goto .L1871
.L1862:
	exit
.L1982:
	exit
.L1983:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 1
	if r1 >= r2 goto .L1985
.L1988:
	if r5 == 0 goto .L1987
	r0 = r2
	r4 = r1
	r5 += r5
	r9 = r5
	r9 += r2
	r5 += -2
	r5 >>= 1
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1991
	if r5 == 1 goto .L2047
	if r5 == 2 goto .L2048
	if r5 == 3 goto .L2049
	if r5 == 4 goto .L2050
	if r5 == 5 goto .L2051
	if r5 == 6 goto .L2052
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r0 = r2
	r0 += 2
	r4 += 2
.L2052:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2051:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2050:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2049:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2048:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2047:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L1987
.L1991:
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
	if r0 != r9 goto .L1991
.L1987:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1984
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1985:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1988
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	r5 = r9
	if r3 == 0 goto .L1984
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1992
	if r3 == 1 goto .L2041
	if r3 == 2 goto .L2042
	if r3 == 3 goto .L2043
	if r3 == 4 goto .L2044
	if r3 == 5 goto .L2045
	if r3 == 6 goto .L2046
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r5 = r9
	r5 += -1
.L2046:
	r9 = r2
	r9 += r5
	r3 = r1
	r3 += r5
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r0
	r5 += -1
.L2045:
	r4 = r2
	r4 += r5
	r9 = r1
	r9 += r5
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r5 += -1
.L2044:
	r0 = r2
	r0 += r5
	r9 = r1
	r9 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r5 += -1
.L2043:
	r0 = r2
	r0 += r5
	r3 = r1
	r3 += r5
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r9
	r5 += -1
.L2042:
	r4 = r2
	r4 += r5
	r0 = r1
	r0 += r5
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r5 += -1
.L2041:
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r5 += -1
	if r5 == -1 goto .L2070
.L1992:
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
	if r9 != 6 goto .L1992
.L1984:
	exit
.L2070:
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
	if r1 >= r2 goto .L2072
.L2075:
	if r5 == 0 goto .L2074
	r0 = r2
	r4 = r1
	r5 <<= 2
	r6 = r5
	r6 += r2
	r5 += -4
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2078
	if r5 == 1 goto .L2155
	if r5 == 2 goto .L2156
	if r5 == 3 goto .L2157
	if r5 == 4 goto .L2158
	if r5 == 5 goto .L2159
	if r5 == 6 goto .L2160
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r0
	r0 = r2
	r0 += 4
	r4 += 4
.L2160:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2159:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2158:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2157:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2156:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2155:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L2074
.L2078:
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
	if r0 != r6 goto .L2078
.L2074:
	if r9 > r3 goto .L2071
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
	if r9 == 0 goto .L2079
	if r9 == 1 goto .L2161
	if r9 == 2 goto .L2162
	if r9 == 3 goto .L2163
	if r9 == 4 goto .L2164
	if r9 == 5 goto .L2165
	if r9 == 6 goto .L2166
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2166:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2165:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L2164:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L2163:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2162:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2161:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L2191
.L2079:
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
	if r0 != r2 goto .L2079
	exit
.L2072:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L2075
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2071
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2080
	if r3 == 1 goto .L2149
	if r3 == 2 goto .L2150
	if r3 == 3 goto .L2151
	if r3 == 4 goto .L2152
	if r3 == 5 goto .L2153
	if r3 == 6 goto .L2154
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L2154:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L2153:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L2152:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L2151:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L2150:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L2149:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2192
.L2080:
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
	if r3 != 6 goto .L2080
.L2071:
	exit
.L2191:
	exit
.L2192:
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
	if r0 != 0 goto .L2202
	r0 = r1
	r0 >>= 14
	if r0 != 0 goto .L2201
	r3 = r1
	r3 >>= 13
	if r3 != 0 goto .L2203
	r4 = r1
	r4 >>= 12
	if r4 != 0 goto .L2204
	r5 = r1
	r5 >>= 11
	if r5 != 0 goto .L2205
	r9 = r1
	r9 >>= 10
	if r9 != 0 goto .L2206
	r0 = r1
	r0 >>= 9
	if r0 != 0 goto .L2207
	r3 = r1
	r3 >>= 8
	if r3 != 0 goto .L2208
	r4 = r1
	r4 >>= 7
	if r4 != 0 goto .L2209
	r5 = r1
	r5 >>= 6
	if r5 != 0 goto .L2210
	r9 = r1
	r9 >>= 5
	if r9 != 0 goto .L2211
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2212
	r3 = r1
	r3 >>= 3
	if r3 != 0 goto .L2213
	r4 = r1
	r4 >>= 2
	if r4 != 0 goto .L2214
	r2 >>= 1
	if r2 != 0 goto .L2215
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L2218
.L2201:
	exit
.L2218:
	r0 = 15
	exit
.L2202:
	r0 = 0
	exit
.L2203:
	r0 = 2
	exit
.L2204:
	r0 = 3
	exit
.L2205:
	r0 = 4
	exit
.L2206:
	r0 = 5
	exit
.L2207:
	r0 = 6
	exit
.L2208:
	r0 = 7
	exit
.L2209:
	r0 = 8
	exit
.L2210:
	r0 = 9
	exit
.L2211:
	r0 = 10
	exit
.L2212:
	r0 = 11
	exit
.L2213:
	r0 = 12
	exit
.L2214:
	r0 = 13
	exit
.L2215:
	r0 = 14
	goto .L2201
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2222
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2223
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2224
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2225
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2226
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2227
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2228
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2229
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2230
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2231
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2232
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2233
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2234
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2235
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2236
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2239
.L2221:
	exit
.L2239:
	r0 = 15
	exit
.L2222:
	r0 = 0
	exit
.L2223:
	r0 = 1
	exit
.L2224:
	r0 = 2
	exit
.L2225:
	r0 = 3
	exit
.L2226:
	r0 = 4
	exit
.L2227:
	r0 = 5
	exit
.L2228:
	r0 = 6
	exit
.L2229:
	r0 = 7
	exit
.L2230:
	r0 = 8
	exit
.L2231:
	r0 = 9
	exit
.L2232:
	r0 = 10
	exit
.L2233:
	r0 = 11
	exit
.L2234:
	r0 = 12
	exit
.L2235:
	r0 = 13
	exit
.L2236:
	r0 = 14
	goto .L2221
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L2246
	r1 = r6
	call	__fixsfdi
	exit
.L2246:
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
	if r1 == 0 goto .L2250
.L2251:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2268
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2250
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L2250
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L2250
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L2250
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L2250
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L2250
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L2251
	exit
.L2268:
	exit
.L2250:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	if r1 == 0 goto .L2272
	if r2 == 0 goto .L2270
.L2271:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2289
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2270
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2270
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2270
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2270
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2270
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2270
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L2271
	exit
.L2289:
	exit
.L2272:
	exit
.L2270:
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
	if r0 < r2 goto .L2299
	r9 = 32
	r4 = 1
.L2291:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2292
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2292
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2292
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2292
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2292
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2292
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2292
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2292
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2292
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2292
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2292
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2292
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2292
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2292
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2292
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2292
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2291
.L2316:
	r1 = 0
.L2294:
	if r3 != 0 goto .L2297
	r0 = r1
.L2297:
	exit
.L2292:
	if r4 == 0 goto .L2316
.L2299:
	r1 = 0
	goto .L2293
.L2296:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L2294
.L2293:
	if r2 >= r0 goto .L2296
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L2296
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L2320
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2321
.L2319:
	r0 = r8
	r0 &= 1
	exit
.L2321:
	r8 = 0
	goto .L2319
.L2320:
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
	if r0 s<= 0 goto .L2325
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2326
.L2324:
	r0 = r8
	r0 &= 1
	exit
.L2326:
	r8 = 0
	goto .L2324
.L2325:
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
	if r2 s< 0 goto .L2357
	r2 = 0
.L2330:
	if r3 == 0 goto .L2335
	r4 = r3
	r4 &= 1
	r4 = -r4
	r0 = r1
	r0 &= r4
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L2331
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
	if r3 == 0 goto .L2331
	r4 = 30
	r4 &= 0xff
.L2332:
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
	if r3 == 0 goto .L2331
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
	if r3 == 0 goto .L2331
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
	if r3 == 0 goto .L2331
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
	if r3 == 0 goto .L2331
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
	if r3 == 0 goto .L2331
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L2332
.L2331:
	if r2 == 0 goto .L2333
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L2333:
	exit
.L2357:
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r2 = 1
	goto .L2330
.L2335:
	r0 = 0
	goto .L2331
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2391
	r4 = 0
.L2359:
	if r2 s< 0 goto .L2392
.L2360:
	r0 = r2;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2370
	r9 = 32
	r1 = 1
.L2361:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2362
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2362
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2362
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2362
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2362
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2362
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2362
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2362
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2362
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2362
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2362
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2362
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2362
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2362
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2362
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2362
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2361
.L2390:
	r2 = 0
.L2364:
	r0 = r2
	if r4 == 0 goto .L2358
	r0 = -r0
.L2358:
	exit
.L2391:
	r1 = -r1
	r4 = 1
	goto .L2359
.L2392:
	r2 = -r2
	r4 ^= 1
	goto .L2360
.L2362:
	if r1 == 0 goto .L2390
.L2370:
	r2 = 0
	goto .L2363
.L2393:
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
	r5 = r1
	r5 |= r2
	r2 = r5
.L2366:
	r1 >>= 1
	r0 >>= 1
	if r1 == 0 goto .L2364
.L2363:
	if r0 >= r3 goto .L2366
	goto .L2393
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s< 0 goto .L2431
	r4 = 0
.L2395:
	r0 = r2
	if r2 s< 0 goto .L2432
.L2396:
	r0 = r0;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2411
	r9 = 32
	r1 = 1
.L2397:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2430
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2430
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2430
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2430
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2430
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2430
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2430
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2430
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2430
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2430
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2430
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2430
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2430
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2430
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2430
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2430
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2397
.L2400:
	r0 = r3
	if r4 == 0 goto .L2394
	r0 = -r0
.L2394:
	exit
.L2431:
	r1 = -r1
	r4 = 1
	goto .L2395
.L2432:
	r0 = -r0
	goto .L2396
.L2433:
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2401:
	r1 >>= 1
	r0 >>= 1
.L2430:
	if r1 == 0 goto .L2400
.L2411:
	if r0 >= r3 goto .L2401
	goto .L2433
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r0 < r2 goto .L2459
	r4 = 0
	r1 = r2
	r1 <<= 48
	if r1 s<= r4 goto .L2459
	r9 = r2
	r9 += r2
	r9 &= 0xffff
	if r9 > r0 goto .L2461
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2461
	r1 = r2
	r1 <<= 2
	r1 &= 0xffff
	if r1 > r0 goto .L2463
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2463
	r1 = r2
	r1 <<= 3
	r1 &= 0xffff
	if r1 > r0 goto .L2465
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2465
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L2467
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2467
	r9 = r2
	r9 <<= 5
	r9 &= 0xffff
	if r9 > r0 goto .L2469
	r5 = r9
	r5 <<= 48
	if r5 s<= r4 goto .L2469
	r1 = r2
	r1 <<= 6
	r1 &= 0xffff
	if r1 > r0 goto .L2471
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2471
	r1 = r2
	r1 <<= 7
	r1 &= 0xffff
	if r1 > r0 goto .L2473
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2473
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L2475
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2475
	r9 = r2
	r9 <<= 9
	r9 &= 0xffff
	if r9 > r0 goto .L2477
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2477
	r1 = r2
	r1 <<= 10
	r1 &= 0xffff
	if r1 > r0 goto .L2479
	r9 = r1
	r9 <<= 48
	if r9 s<= r4 goto .L2479
	r1 = r2
	r1 <<= 11
	r1 &= 0xffff
	if r1 > r0 goto .L2481
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2481
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L2483
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2483
	r9 = r2
	r9 <<= 13
	r9 &= 0xffff
	if r9 > r0 goto .L2485
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2485
	r1 = r2
	r1 <<= 14
	r1 &= 0xffff
	if r1 > r0 goto .L2487
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2487
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L2507
	r1 = r4
	if r2 != r4 goto .L2507
.L2438:
	if r3 != 0 goto .L2458
	r0 = r1
.L2458:
	exit
.L2507:
	r4 = 32768
	goto .L2437
.L2459:
	r4 = 1
.L2437:
	if r2 >= r0 goto .L2490
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L2441:
	r9 = r4
	r9 >>= 1
	r5 = r2
	r5 >>= 1
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2443
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2443:
	r9 = r4
	r9 >>= 2
	r5 = r2
	r5 >>= 2
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2444
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2444:
	r9 = r4
	r9 >>= 3
	r5 = r2
	r5 >>= 3
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2445
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2445:
	r9 = r4
	r9 >>= 4
	r5 = r2
	r5 >>= 4
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2446
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2446:
	r9 = r4
	r9 >>= 5
	r5 = r2
	r5 >>= 5
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2447
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2447:
	r9 = r4
	r9 >>= 6
	r5 = r2
	r5 >>= 6
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2448
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2448:
	r9 = r4
	r9 >>= 7
	r5 = r2
	r5 >>= 7
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2449
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2449:
	r9 = r4
	r9 >>= 8
	r5 = r2
	r5 >>= 8
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2450
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2450:
	r9 = r4
	r9 >>= 9
	r5 = r2
	r5 >>= 9
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2451
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2451:
	r9 = r4
	r9 >>= 10
	r5 = r2
	r5 >>= 10
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2452
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2452:
	r9 = r4
	r9 >>= 11
	r5 = r2
	r5 >>= 11
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2453
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2453:
	r9 = r4
	r9 >>= 12
	r5 = r2
	r5 >>= 12
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2454
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2454:
	r9 = r4
	r9 >>= 13
	r5 = r2
	r5 >>= 13
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2455
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2455:
	r9 = r4
	r9 >>= 14
	r5 = r2
	r5 >>= 14
	r5 &= 0xffff
	if r9 == 0 goto .L2438
	if r5 >= r0 goto .L2456
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2456:
	r2 >>= 15
	r2 &= 0xffff
	r4 >>= 15
	if r4 == 0 goto .L2438
	if r2 >= r0 goto .L2438
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
	goto .L2438
.L2461:
	r2 = r9
	r4 = 2
	goto .L2437
.L2463:
	r2 = r1
	r4 = 4
	goto .L2437
.L2465:
	r2 = r1
	r4 = 8
	goto .L2437
.L2467:
	r2 = r9
	r4 = 16
	goto .L2437
.L2469:
	r2 = r9
	r4 = 32
	goto .L2437
.L2471:
	r2 = r1
	r4 = 64
	goto .L2437
.L2473:
	r2 = r1
	r4 = 128
	goto .L2437
.L2475:
	r2 = r9
	r4 = 256
	goto .L2437
.L2477:
	r2 = r9
	r4 = 512
	goto .L2437
.L2479:
	r2 = r1
	r4 = 1024
	goto .L2437
.L2481:
	r2 = r1
	r4 = 2048
	goto .L2437
.L2483:
	r2 = r9
	r4 = 4096
	goto .L2437
.L2485:
	r2 = r9
	r4 = 8192
	goto .L2437
.L2487:
	r2 = r1
	r4 = 16384
	goto .L2437
.L2490:
	r1 = 0
	goto .L2441
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L2517
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L2509:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2510
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2510
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2510
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2510
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2510
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2510
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2510
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2510
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2510
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2510
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2510
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2510
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2510
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2510
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2510
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2510
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2509
.L2535:
	r0 = 0
.L2512:
	if r3 != 0 goto .L2536
.L2508:
	exit
.L2510:
	if r4 == 0 goto .L2535
.L2517:
	r0 = 0
	goto .L2511
.L2514:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L2512
.L2511:
	if r2 >= r1 goto .L2514
	r1 -= r2
	r0 |= r4
	goto .L2514
.L2536:
	r0 = r1
	goto .L2508
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L2538
	r2 += -32
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = 0
.L2539:
	r3 <<= 32
	r0 |= r3
	exit
.L2538:
	if r2 == 0 goto .L2541
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
	goto .L2539
.L2541:
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
	if r0 == 0 goto .L2543
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L2543:
	if r3 == 0 goto .L2546
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
.L2546:
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
	if r0 == 0 goto .L2548
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
.L2549:
	r0 <<= 32
	r0 |= r9
	exit
.L2548:
	if r2 == 0 goto .L2551
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
	goto .L2549
.L2551:
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
	if r0 == 0 goto .L2553
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L2553:
	if r3 == 0 goto .L2556
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
.L2556:
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
	if r1 <= 65534 goto .L2560
	r0 = 0
.L2560:
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
	if r3 != 0 goto .L2561
	r4 -= r5
.L2562:
	r0 += r9
	r0 += r4
	exit
.L2561:
	r4 = 0
	goto .L2562
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L2564
	r6 = 0
.L2564:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2566
	r0 = 0
.L2566:
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
	if r0 s>= r3 goto .L2577
	if r3 s> r0 goto .L2578
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2577
	if r1 > r2 goto .L2578
	r0 = 1
	exit
.L2577:
	r0 = 0
	exit
.L2578:
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
	if r0 s>= r3 goto .L2583
	if r3 s> r0 goto .L2584
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2583
	if r1 > r2 goto .L2584
	r0 = 1
	goto .L2580
.L2583:
	r0 = 0
.L2580:
	r0 += -1
	exit
.L2584:
	r0 = 2
	goto .L2580
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L2589
	if r2 s> r4 goto .L2590
	if r3 >= r1 goto .L2589
	if r1 > r3 goto .L2590
	r0 = 1
	exit
.L2589:
	r0 = 0
	exit
.L2590:
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
	if r1 == 0 goto .L2593
	r6 = 0
.L2593:
	r6 &= 0xff
	if r0 == 0 goto .L2599
	r1 = 0
.L2595:
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
.L2599:
	r1 = r2
	goto .L2595
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2603
	if r2 == 0 goto .L2605
	r1 = r2
	call	__ctzdi2
	r0 <<= 32
	r2 = 279172874240 ll
	r0 += r2
	r0 s>>= 32
	exit
.L2603:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2605:
	r0 = 0
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
	if r0 == 0 goto .L2607
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
.L2608:
	r0 <<= 32
	r0 |= r3
	exit
.L2607:
	if r2 == 0 goto .L2610
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
	goto .L2608
.L2610:
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
	if r0 == 0 goto .L2612
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2612:
	if r3 == 0 goto .L2615
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
.L2615:
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
	if r1 != 0 goto .L2622
	r0 = 0
.L2622:
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
	if r9 > r0 goto .L2629
	r3 = 0
.L2629:
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
	if r0 >= r4 goto .L2630
	r9 = 0
.L2630:
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
	if r1 >= r2 goto .L2631
	r0 = 0
.L2631:
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
	goto .L2635
.L2633:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2634
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2635:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2633
	r2 = r6
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L2633
.L2634:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2640
.L2632:
	r0 = r7
	exit
.L2640:
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
	goto .L2632
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
	goto .L2644
.L2642:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2643
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2644:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2642
	r2 = r6
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L2642
.L2643:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2649
.L2641:
	r0 = r7
	exit
.L2649:
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
	goto .L2641
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2654
	if r3 > r0 goto .L2655
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2654
	if r1 > r2 goto .L2655
	r0 = 1
	exit
.L2654:
	r0 = 0
	exit
.L2655:
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
	if r0 >= r3 goto .L2660
	if r3 > r0 goto .L2661
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2660
	if r1 > r2 goto .L2661
	r0 = 1
	goto .L2657
.L2660:
	r0 = 0
.L2657:
	r0 += -1
	exit
.L2661:
	r0 = 2
	goto .L2657
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2666
	if r2 > r4 goto .L2667
	if r3 >= r1 goto .L2666
	if r1 > r3 goto .L2667
	r0 = 1
	exit
.L2666:
	r0 = 0
	exit
.L2667:
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
