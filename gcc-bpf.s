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
	r8 = r1
.L709:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r1 = r0
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	if r1 == 0 goto .L733
	r7 = r8
	r7 += 1
	r8 = r7
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r2 = r0
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	if r2 == 0 goto .L733
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r3 = r0
	r3 <<= 32
	r0 = r3
	r0 s>>= 32
	if r3 == 0 goto .L733
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r4 = r0
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 == 0 goto .L733
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r5 = r0
	r5 <<= 32
	r0 = r5
	r0 s>>= 32
	if r5 == 0 goto .L733
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r9 = r0
	r9 <<= 32
	r0 = r9
	r0 s>>= 32
	if r9 == 0 goto .L733
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r1 = r0
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	if r1 == 0 goto .L733
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r2 = r0
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	if r2 == 0 goto .L733
	r7 += 7
	r8 = r7
	goto .L709
.L733:
	if r6 == 43 goto .L716
	if r6 != 45 goto .L717
	r4 = 1
.L711:
	r8 += 1
.L712:
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	r3 = 9
	if r5 > 8 goto .L714
.L713:
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r1 = r8
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
	if r3 <= r5 goto .L714
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
	if r3 <= r5 goto .L714
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
	if r3 <= r5 goto .L714
	r8 = r0
	r8 <<= 2
	r0 += r8
	r0 <<= 33
	r0 s>>= 32
	r1 += 3
	r8 = r1
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r3 > r1 goto .L713
.L714:
	if r4 != 0 goto .L715
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L715:
	exit
.L716:
	r4 = 0
	goto .L711
.L717:
	r4 = 0
	goto .L712
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r8 = r1
.L735:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L761
	r7 = r8
	r7 += 1
	r8 = r7
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L761
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L761
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L761
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L761
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L761
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L761
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L761
	r7 += 7
	r8 = r7
	goto .L735
.L761:
	if r6 == 43 goto .L737
	if r6 != 45 goto .L738
	r2 = 1
.L737:
	r8 += 1
.L738:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	r4 = 0
	r3 = 9
	if r1 > 8 goto .L740
.L739:
	r5 = r4
	r5 <<= 2
	r5 += r4
	r5 += r5
	r4 = r5
	r9 = r8
	r9 += 1
	r0 <<= 56
	r0 s>>= 56
	r4 -= r0
	r0 = *(u8 *) (r9+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	if r3 <= r1 goto .L740
	r5 = r4
	r5 <<= 2
	r5 += r4
	r5 += r5
	r0 <<= 56
	r0 s>>= 56
	r4 = r5
	r4 -= r0
	r0 = *(u8 *) (r9+1)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	if r3 <= r1 goto .L740
	r5 = r4
	r5 <<= 2
	r5 += r4
	r5 += r5
	r0 <<= 56
	r0 s>>= 56
	r4 = r5
	r4 -= r0
	r0 = *(u8 *) (r9+2)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	if r3 <= r1 goto .L740
	r5 = r4
	r5 <<= 2
	r5 += r4
	r5 += r5
	r9 += 3
	r8 = r9
	r0 <<= 56
	r0 s>>= 56
	r4 = r5
	r4 -= r0
	r0 = *(u8 *) (r9+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r3 > r9 goto .L739
.L740:
	if r2 != 0 goto .L734
	r4 = -r4
.L734:
	r0 = r4
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r8 = r1
.L763:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L789
	r7 = r8
	r7 += 1
	r8 = r7
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L789
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L789
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L789
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L789
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L789
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L789
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L789
	r7 += 7
	r8 = r7
	goto .L763
.L789:
	if r6 == 43 goto .L765
	if r6 != 45 goto .L766
	r2 = 1
.L765:
	r8 += 1
.L766:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	r4 = 0
	r3 = 9
	if r1 > 8 goto .L768
.L767:
	r5 = r4
	r5 <<= 2
	r5 += r4
	r5 += r5
	r4 = r5
	r9 = r8
	r9 += 1
	r0 <<= 56
	r0 s>>= 56
	r4 -= r0
	r0 = *(u8 *) (r9+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	if r3 <= r1 goto .L768
	r5 = r4
	r5 <<= 2
	r5 += r4
	r5 += r5
	r0 <<= 56
	r0 s>>= 56
	r4 = r5
	r4 -= r0
	r0 = *(u8 *) (r9+1)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	if r3 <= r1 goto .L768
	r5 = r4
	r5 <<= 2
	r5 += r4
	r5 += r5
	r0 <<= 56
	r0 s>>= 56
	r4 = r5
	r4 -= r0
	r0 = *(u8 *) (r9+2)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	if r3 <= r1 goto .L768
	r5 = r4
	r5 <<= 2
	r5 += r4
	r5 += r5
	r9 += 3
	r8 = r9
	r0 <<= 56
	r0 s>>= 56
	r4 = r5
	r4 -= r0
	r0 = *(u8 *) (r9+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r9 = r0;r9 &= 0xffffffff
	if r3 > r9 goto .L767
.L768:
	if r2 != 0 goto .L762
	r4 = -r4
.L762:
	r0 = r4
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
	if r1 s< 0 goto .L793
.L792:
	exit
.L793:
	r0 = -r0
	goto .L792
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
	if r1 s< 0 goto .L797
.L796:
	exit
.L797:
	r0 = -r0
	goto .L796
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
	if r1 s< 0 goto .L801
.L800:
	exit
.L801:
	r0 = -r0
	goto .L800
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
	if r0 == 0 goto .L809
.L804:
	if r2 == r4 goto .L812
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = r3
	r4 s>>= 32
	if r3 != 0 goto .L804
.L809:
	r0 = 0
	goto .L803
.L812:
	r0 = r1
	if r4 == 0 goto .L809
.L803:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L824
.L816:
	r1 += 4
	r2 += 4
.L824:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 != r4 goto .L815
	if r3 == 0 goto .L815
	if r4 != 0 goto .L816
.L815:
	if r4 s>= r3 goto .L819
	r0 = 1
	if r3 s> r4 goto .L818
	r0 = 0
.L818:
	r0 &= 1
	exit
.L819:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L826:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L842
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L842
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L842
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L842
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L842
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L842
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L842
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L826
.L842:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L846
	r0 = r1
.L845:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L844
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L844
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L844
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L844
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L844
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L844
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L844
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L845
	goto .L844
.L846:
	r0 = r1
.L844:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L868
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L863
	if r0 == 1 goto .L889
	if r0 == 2 goto .L890
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r4 goto .L864
	if r5 == 0 goto .L864
	r3 += -1
	r1 += 4
	r2 += 4
.L890:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L864
	if r9 == 0 goto .L864
	r3 += -1
	r1 += 4
	r2 += 4
.L889:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L864
	if r5 == 0 goto .L864
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L868
.L863:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L864
	if r0 == 0 goto .L864
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
	if r9 != r6 goto .L864
	if r7 == 0 goto .L864
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r7 = r4
	r7 s>>= 32
	if r4 != r6 goto .L864
	if r7 == 0 goto .L864
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L864
	if r7 == 0 goto .L864
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L863
.L868:
	r0 = 0
	exit
.L864:
	if r3 == 0 goto .L868
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L869
	r0 = 1
	if r3 s> r1 goto .L867
	r0 = 0
.L867:
	r0 &= 1
	exit
.L869:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L905
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L900
	if r0 == 1 goto .L942
	if r0 == 2 goto .L943
	if r0 == 3 goto .L944
	if r0 == 4 goto .L945
	if r0 == 5 goto .L946
	if r0 == 6 goto .L947
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L958
	r3 += -1
	r1 += 4
.L947:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L958
	r3 += -1
	r1 += 4
.L946:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L958
	r3 += -1
	r1 += 4
.L945:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L958
	r3 += -1
	r1 += 4
.L944:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L958
	r3 += -1
	r1 += 4
.L943:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L958
	r3 += -1
	r1 += 4
.L942:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L958
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L905
.L900:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L958
	r3 += -1
	r4 = r3
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L958
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L958
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L958
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L958
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L958
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L958
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L958
	r3 += -1
	r9 += 28
	r1 = r9
	if r4 != 7 goto .L900
.L905:
	r0 = 0
	goto .L899
.L958:
	r0 = r1
	if r3 == 0 goto .L905
.L899:
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L965
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L960
	if r0 == 1 goto .L1006
	if r0 == 2 goto .L1007
	if r0 == 3 goto .L1008
	if r0 == 4 goto .L1009
	if r0 == 5 goto .L1010
	if r0 == 6 goto .L1011
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
.L1011:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
.L1010:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
.L1009:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
.L1008:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
.L1007:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
.L1006:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L965
.L960:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L1023
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
	if r6 != r9 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L1023
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L1023
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	if r5 != 7 goto .L960
.L965:
	r0 = 0
	exit
.L1023:
	if r3 == 0 goto .L965
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L966
	r0 = 1
	if r3 s> r1 goto .L964
	r0 = 0
.L964:
	r0 &= 1
	exit
.L966:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1025
	r5 = r1
	r4 = r2
	r0 = r3
	r0 += -1
	r6 = r3
	r6 <<= 2
	r9 = r1
	r9 -= r2
	if r6 >= r9 goto .L1026
	if r3 == 0 goto .L1025
	r3 &= 7
	if r3 == 0 goto .L1027
	if r3 == 1 goto .L1077
	if r3 == 2 goto .L1078
	if r3 == 3 goto .L1079
	if r3 == 4 goto .L1080
	if r3 == 5 goto .L1081
	if r3 == 6 goto .L1082
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r0 += -1
	r5 += 4
	r2 += 4
	r4 = r2
.L1082:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1081:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1080:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
.L1079:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1078:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1077:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
	if r0 == -1 goto .L1025
.L1027:
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
	if r0 != -1 goto .L1027
	goto .L1025
.L1026:
	if r3 == 0 goto .L1025
	r0 <<= 2
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r0 >>= 2
	r0 += 1
	r0 &= 7
	if r0 == 0 goto .L1028
	if r0 == 1 goto .L1083
	if r0 == 2 goto .L1084
	if r0 == 3 goto .L1085
	if r0 == 4 goto .L1086
	if r0 == 5 goto .L1087
	if r0 == 6 goto .L1088
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
.L1088:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1087:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1086:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
.L1085:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1084:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1083:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r5 = r3
	r3 += -4
	r4 += -4
	if r2 == r5 goto .L1025
.L1028:
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
	if r2 != r0 goto .L1028
.L1025:
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
	if r3 == 0 goto .L1107
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L1108
	if r3 == 1 goto .L1133
	if r3 == 2 goto .L1134
	if r3 == 3 goto .L1135
	if r3 == 4 goto .L1136
	if r3 == 5 goto .L1137
	if r3 == 6 goto .L1138
	*(u32 *) (r1+0) = r2
	r4 += -1
	r0 += 4
.L1138:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1137:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1136:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1135:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1134:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1133:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L1107
.L1108:
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
	if r4 != -1 goto .L1108
.L1107:
	r0 = r1
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
	if r1 != r5 goto .L1151
	exit
.L1149:
	if r1 == r2 goto .L1148
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
	if r3 == 6 goto .L1212
	r0 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r0
	r9 += 1
	r2 += 1
	r4 = r2
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
	if r9 == r5 goto .L1232
.L1152:
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
	if r9 != r5 goto .L1152
.L1148:
	exit
.L1231:
	exit
.L1232:
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
.L1249:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1272
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1272
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1272
	r5 = r1
	r5 >>= r0
	r5 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1272
	r9 = r1
	r9 >>= r0
	r9 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1272
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1272
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1272
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1272
	if r0 != 32 goto .L1249
	r0 = 0
	exit
.L1272:
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
	if r1 == 0 goto .L1277
	r0 = r2
	r0 &= 1
	if r0 != 0 goto .L1275
	r0 = 1
.L1276:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1294
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1275
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1275
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1275
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1275
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1275
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1275
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1276
	exit
.L1294:
	exit
.L1277:
	r0 = 0
.L1275:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L1298
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1299
.L1297:
	r0 = r7
	r0 &= 1
	exit
.L1299:
	r7 = 0
	goto .L1297
.L1298:
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
	if r0 s<= 0 goto .L1303
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1304
.L1302:
	r0 = r7
	r0 &= 1
	exit
.L1304:
	r7 = 0
	goto .L1302
.L1303:
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
	if r0 s<= 0 goto .L1308
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1309
.L1307:
	r0 = r7
	r0 &= 1
	exit
.L1309:
	r7 = 0
	goto .L1307
.L1308:
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
	if r0 != 0 goto .L1312
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1312
	if r6 s< 0 goto .L1325
	r7 = 0x40000000 ll
	goto .L1316
.L1325:
	r7 = 0x3f000000 ll
	goto .L1316
.L1315:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1312
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1316:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1315
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1315
.L1312:
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
	if r0 != 0 goto .L1327
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1327
	if r6 s< 0 goto .L1340
	r7 = 0x4000000000000000 ll
	goto .L1331
.L1340:
	r7 = 0x3fe0000000000000 ll
	goto .L1331
.L1330:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1327
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1331:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1330
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1330
.L1327:
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
	if r0 != 0 goto .L1342
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1342
	if r6 s< 0 goto .L1355
	r7 = 0x4000000000000000 ll
	goto .L1346
.L1355:
	r7 = 0x3fe0000000000000 ll
	goto .L1346
.L1345:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1342
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
	goto .L1345
.L1342:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1357
	r4 = r2
	r0 = r1
	r5 = r2
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L1358
	if r3 == 1 goto .L1383
	if r3 == 2 goto .L1384
	if r3 == 3 goto .L1385
	if r3 == 4 goto .L1386
	if r3 == 5 goto .L1387
	if r3 == 6 goto .L1388
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 ^= r3
	*(u8 *) (r1+0) = r0
	r2 += 1
	r4 = r2
	r0 = r1
	r0 += 1
.L1388:
	r2 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r2 ^= r9
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1387:
	r2 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r2 ^= r3
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1386:
	r9 = *(u8 *) (r0+0)
	r2 = *(u8 *) (r4+0)
	r9 ^= r2
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1385:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1384:
	r2 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r2 ^= r9
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1383:
	r2 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r2 ^= r3
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
	if r4 == r5 goto .L1357
.L1358:
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
	if r4 != r5 goto .L1358
.L1357:
	r0 = r1
	exit
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r7 = r1
	r6 = r2
	r8 = r3
	call	strlen
	r1 = r0
	r0 = r7
	r0 += r1
	if r8 == 0 goto .L1404
	r2 = r8
	r2 &= 7
	if r2 == 0 goto .L1399
	if r2 == 1 goto .L1442
	if r2 == 2 goto .L1443
	if r2 == 3 goto .L1444
	if r2 == 4 goto .L1445
	if r2 == 5 goto .L1446
	if r2 == 6 goto .L1447
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1458
	r6 += 1
	r0 += 1
	r8 += -1
.L1447:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1458
	r6 += 1
	r0 += 1
	r8 += -1
.L1446:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1458
	r6 += 1
	r0 += 1
	r8 += -1
.L1445:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1458
	r6 += 1
	r0 += 1
	r8 += -1
.L1444:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1458
	r6 += 1
	r0 += 1
	r8 += -1
.L1443:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1458
	r6 += 1
	r0 += 1
	r8 += -1
.L1442:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1458
	r6 += 1
	r0 += 1
	r8 += -1
	if r8 == 0 goto .L1404
.L1399:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1458
	r6 += 1
	r0 += 1
	r9 = r8
	r9 += -1
	r8 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1458
	r0 += 1
	r8 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1458
	r0 += 1
	r8 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1458
	r0 += 1
	r8 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1458
	r0 += 1
	r8 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1458
	r0 += 1
	r8 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1458
	r0 += 1
	r8 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1458
	r6 += 7
	r0 += 1
	r8 += -1
	if r9 != 7 goto .L1399
	goto .L1404
.L1458:
	if r8 != 0 goto .L1402
.L1404:
	*(u8 *) (r0+0) = r8
.L1402:
	r0 = r7
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1514
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1460
	if r0 == 1 goto .L1501
	if r0 == 2 goto .L1502
	if r0 == 3 goto .L1503
	if r0 == 4 goto .L1504
	if r0 == 5 goto .L1505
	if r0 == 6 goto .L1506
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1459
	r3 = 1
.L1506:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 != 0 goto .L1516
.L1459:
	r0 = r3
	exit
.L1514:
	r3 = 0
	goto .L1459
.L1516:
	r3 += 1
.L1505:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1459
	r3 += 1
.L1504:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1459
	r3 += 1
.L1503:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1459
	r3 += 1
.L1502:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1459
	r3 += 1
.L1501:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1459
	r3 += 1
	if r2 == r3 goto .L1459
.L1460:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1459
	r0 = r3
	r0 += 1
	r3 = r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1459
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1459
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1459
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1459
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1459
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1459
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1459
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1460
	goto .L1459
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L1525:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1522
	r3 = r2
.L1521:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 == 0 goto .L1526
	r3 += 1
	if r4 != r5 goto .L1521
.L1519:
	r0 = r1
	exit
.L1526:
	r1 += 1
	goto .L1525
.L1522:
	r1 = 0
	goto .L1519
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1529
.L1528:
	r1 += 1
	if r0 == 0 goto .L1532
.L1529:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1528
	r3 = r1
	goto .L1528
.L1532:
	r0 = r3
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	r7 = r1
	r6 = r2
	r1 = r2
	call	strlen
	*(u64 *) (r10+-8) = r0
	if r0 == 0 goto .L1533
	r8 = *(u8 *) (r6+0)
	r8 <<= 56
	r8 s>>= 56
.L1535:
	r2 = r8
	r1 = r7
	call	strchr
	r7 = r0
	if r0 == 0 goto .L1533
	r3 = *(u64 *) (r10+-8)
	r2 = r6
	r1 = r7
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1533
	r7 += 1
	goto .L1535
.L1533:
	r0 = r7
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
	if r0 s<= 0 goto .L1550
.L1542:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1545
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1544
.L1545:
	r0 = r6
	exit
.L1550:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1542
.L1544:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1545
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r7 = r3
	r6 = r4
	if r4 == 0 goto .L1555
	if r4 >= r2 goto .L1557
	r2 -= r4
	r3 = r1
	r3 += r2
	*(u64 *) (r10+-24) = r3
	if r1 > r3 goto .L1557
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r6 += -1
	*(u64 *) (r10+-8) = r6
	r7 += 1
	*(u64 *) (r10+-16) = r7
	r2 = r1
	r2 ^= -1
	r3 += r2
	r9 = r3
	r9 &= 7
	r4 = *(u8 *) (r1+0)
	r4 <<= 56
	r6 = r0
	r6 s>>= 56
	r7 = r1
	r1 += 1
	if r4 == r0 goto .L1638
.L1561:
	r5 = *(u64 *) (r10+-24)
	if r5 <= r1 goto .L1557
	if r9 == 0 goto .L1554
	if r9 == 1 goto .L1600
	if r9 == 2 goto .L1601
	if r9 == 3 goto .L1602
	if r9 == 4 goto .L1603
	if r9 == 5 goto .L1604
	if r9 == 6 goto .L1605
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	r7 = r1
	r1 += 1
	if r3 == r6 goto .L1639
.L1605:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r7 = r1
	r1 += 1
	if r0 == r6 goto .L1640
.L1604:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r7 = r1
	r1 += 1
	if r2 == r6 goto .L1641
.L1603:
	r4 = *(u8 *) (r1+0)
	r4 <<= 56
	r4 s>>= 56
	r7 = r1
	r1 += 1
	if r4 == r6 goto .L1642
.L1602:
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	r7 = r1
	r1 += 1
	if r9 == r6 goto .L1643
.L1601:
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	r7 = r1
	r1 += 1
	if r5 == r6 goto .L1644
.L1600:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	r7 = r1
	r1 += 1
	if r3 != r6 goto .L1596
.L1637:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 == 0 goto .L1551
.L1596:
	r7 = *(u64 *) (r10+-24)
	if r7 <= r1 goto .L1557
.L1554:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r7 = r1
	r8 = r1
	r8 += 1
	if r0 == r6 goto .L1645
.L1598:
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	r7 = r8
	r1 = r8
	r1 += 1
	if r2 == r6 goto .L1646
.L1606:
	r4 = *(u8 *) (r1+0)
	r4 <<= 56
	r4 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 2
	if r4 == r6 goto .L1647
.L1607:
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 3
	if r9 == r6 goto .L1648
.L1608:
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 4
	if r5 == r6 goto .L1649
.L1609:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 5
	if r3 == r6 goto .L1650
.L1610:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 6
	if r0 == r6 goto .L1651
.L1611:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 7
	if r2 != r6 goto .L1596
	goto .L1637
.L1645:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1598
	goto .L1551
.L1555:
	r7 = r1
	goto .L1551
.L1557:
	r7 = 0
.L1551:
	r0 = r7
	exit
.L1638:
	*(u64 *) (r10+-40) = r9
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	r9 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L1561
	goto .L1551
.L1639:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1605
	goto .L1551
.L1640:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1604
	goto .L1551
.L1641:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1603
	goto .L1551
.L1642:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1602
	goto .L1551
.L1643:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1601
	goto .L1551
.L1644:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1600
	goto .L1551
.L1646:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1606
	goto .L1551
.L1647:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1607
	goto .L1551
.L1648:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1608
	goto .L1551
.L1649:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1609
	goto .L1551
.L1650:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1610
	goto .L1551
.L1651:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1611
	goto .L1551
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r7 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1691
	*(u64 *) (r10+-8) = 0
.L1653:
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1688
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1657:
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
	if r0 s< 0 goto .L1658
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
	if r0 s< 0 goto .L1658
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
	if r0 s< 0 goto .L1658
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
	if r0 s>= 0 goto .L1657
	goto .L1658
.L1691:
	r0 = -9223372036854775808 ll
	r0 ^= r7
	r7 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1653
.L1688:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L1689
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	r8 = 0
	if r0 == 0 goto .L1658
	r6 = r8
.L1661:
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
	if r6 s< r0 goto .L1658
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
	if r6 s< r0 goto .L1658
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
	if r6 s< r0 goto .L1658
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
	if r6 s>= r0 goto .L1661
	goto .L1658
.L1689:
	r8 = 0
.L1658:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r8
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1662
	r3 = -9223372036854775808 ll
	r3 ^= r7
	r7 = r3
.L1662:
	r0 = r7
	exit
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = 0
	if r1 == 0 goto .L1692
.L1694:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1711
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1692
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1692
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1692
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1692
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1692
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1692
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1694
	exit
.L1711:
	exit
.L1692:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1721
	r9 = 32
	r4 = 1
.L1713:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1714
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1714
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1714
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1714
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1714
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1714
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1714
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1714
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1714
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1714
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1714
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1714
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1714
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1714
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1714
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1714
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1713
.L1738:
	r1 = 0
.L1716:
	if r3 != 0 goto .L1719
	r0 = r1
.L1719:
	exit
.L1714:
	if r4 == 0 goto .L1738
.L1721:
	r1 = 0
	goto .L1715
.L1718:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1716
.L1715:
	if r2 >= r0 goto .L1718
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L1718
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
	if r2 == r1 goto .L1741
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
.L1741:
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
	if r0 == r2 goto .L1744
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1744:
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
	if r1 == 0 goto .L1746
.L1747:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1764
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1746
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1746
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1746
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1746
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1746
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1746
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1747
	exit
.L1764:
	exit
.L1746:
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
	if r1 >= r2 goto .L1766
.L1769:
	if r5 == 0 goto .L1768
	r0 = r2
	r4 = r1
	r5 <<= 3
	r6 = r5
	r6 += r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1772
	if r5 == 1 goto .L1849
	if r5 == 2 goto .L1850
	if r5 == 3 goto .L1851
	if r5 == 4 goto .L1852
	if r5 == 5 goto .L1853
	if r5 == 6 goto .L1854
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
	r4 += 8
.L1854:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1853:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1852:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1851:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1850:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1849:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1768
.L1772:
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
	if r0 != r6 goto .L1772
.L1768:
	if r9 > r3 goto .L1765
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
	if r9 == 0 goto .L1773
	if r9 == 1 goto .L1855
	if r9 == 2 goto .L1856
	if r9 == 3 goto .L1857
	if r9 == 4 goto .L1858
	if r9 == 5 goto .L1859
	if r9 == 6 goto .L1860
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1860:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1859:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1858:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1857:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1856:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1855:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1885
.L1773:
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
	if r0 != r2 goto .L1773
	exit
.L1766:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1769
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1765
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1774
	if r3 == 1 goto .L1843
	if r3 == 2 goto .L1844
	if r3 == 3 goto .L1845
	if r3 == 4 goto .L1846
	if r3 == 5 goto .L1847
	if r3 == 6 goto .L1848
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L1848:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L1847:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L1846:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L1845:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L1844:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L1843:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L1886
.L1774:
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
	if r3 != 6 goto .L1774
.L1765:
	exit
.L1885:
	exit
.L1886:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 1
	if r1 >= r2 goto .L1888
.L1891:
	if r5 == 0 goto .L1890
	r0 = r2
	r4 = r1
	r5 += r5
	r9 = r5
	r9 += r2
	r5 += -2
	r5 >>= 1
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1894
	if r5 == 1 goto .L1950
	if r5 == 2 goto .L1951
	if r5 == 3 goto .L1952
	if r5 == 4 goto .L1953
	if r5 == 5 goto .L1954
	if r5 == 6 goto .L1955
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r0 = r2
	r0 += 2
	r4 += 2
.L1955:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1954:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1953:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1952:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1951:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1950:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L1890
.L1894:
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
	if r0 != r9 goto .L1894
.L1890:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1887
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1888:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1891
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	r5 = r9
	if r3 == 0 goto .L1887
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1895
	if r3 == 1 goto .L1944
	if r3 == 2 goto .L1945
	if r3 == 3 goto .L1946
	if r3 == 4 goto .L1947
	if r3 == 5 goto .L1948
	if r3 == 6 goto .L1949
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r5 = r9
	r5 += -1
.L1949:
	r9 = r2
	r9 += r5
	r3 = r1
	r3 += r5
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r0
	r5 += -1
.L1948:
	r4 = r2
	r4 += r5
	r9 = r1
	r9 += r5
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r5 += -1
.L1947:
	r0 = r2
	r0 += r5
	r9 = r1
	r9 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r5 += -1
.L1946:
	r0 = r2
	r0 += r5
	r3 = r1
	r3 += r5
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r9
	r5 += -1
.L1945:
	r4 = r2
	r4 += r5
	r0 = r1
	r0 += r5
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r5 += -1
.L1944:
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r5 += -1
	if r5 == -1 goto .L1973
.L1895:
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
	if r9 != 6 goto .L1895
.L1887:
	exit
.L1973:
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
	if r1 >= r2 goto .L1975
.L1978:
	if r5 == 0 goto .L1977
	r0 = r2
	r4 = r1
	r5 <<= 2
	r6 = r5
	r6 += r2
	r5 += -4
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1981
	if r5 == 1 goto .L2058
	if r5 == 2 goto .L2059
	if r5 == 3 goto .L2060
	if r5 == 4 goto .L2061
	if r5 == 5 goto .L2062
	if r5 == 6 goto .L2063
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r0
	r0 = r2
	r0 += 4
	r4 += 4
.L2063:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2062:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2061:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2060:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2059:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2058:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L1977
.L1981:
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
	if r0 != r6 goto .L1981
.L1977:
	if r9 > r3 goto .L1974
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
	if r9 == 0 goto .L1982
	if r9 == 1 goto .L2064
	if r9 == 2 goto .L2065
	if r9 == 3 goto .L2066
	if r9 == 4 goto .L2067
	if r9 == 5 goto .L2068
	if r9 == 6 goto .L2069
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2069:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2068:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L2067:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L2066:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2065:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2064:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L2094
.L1982:
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
	if r0 != r2 goto .L1982
	exit
.L1975:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1978
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1974
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1983
	if r3 == 1 goto .L2052
	if r3 == 2 goto .L2053
	if r3 == 3 goto .L2054
	if r3 == 4 goto .L2055
	if r3 == 5 goto .L2056
	if r3 == 6 goto .L2057
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L2057:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L2056:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L2055:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L2054:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L2053:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L2052:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2095
.L1983:
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
	if r3 != 6 goto .L1983
.L1974:
	exit
.L2094:
	exit
.L2095:
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
	if r0 != 0 goto .L2105
	r0 = r1
	r0 >>= 14
	if r0 != 0 goto .L2104
	r3 = r1
	r3 >>= 13
	if r3 != 0 goto .L2106
	r4 = r1
	r4 >>= 12
	if r4 != 0 goto .L2107
	r5 = r1
	r5 >>= 11
	if r5 != 0 goto .L2108
	r9 = r1
	r9 >>= 10
	if r9 != 0 goto .L2109
	r0 = r1
	r0 >>= 9
	if r0 != 0 goto .L2110
	r3 = r1
	r3 >>= 8
	if r3 != 0 goto .L2111
	r4 = r1
	r4 >>= 7
	if r4 != 0 goto .L2112
	r5 = r1
	r5 >>= 6
	if r5 != 0 goto .L2113
	r9 = r1
	r9 >>= 5
	if r9 != 0 goto .L2114
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2115
	r3 = r1
	r3 >>= 3
	if r3 != 0 goto .L2116
	r4 = r1
	r4 >>= 2
	if r4 != 0 goto .L2117
	r2 >>= 1
	if r2 != 0 goto .L2118
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L2121
.L2104:
	exit
.L2121:
	r0 = 15
	exit
.L2105:
	r0 = 0
	exit
.L2106:
	r0 = 2
	exit
.L2107:
	r0 = 3
	exit
.L2108:
	r0 = 4
	exit
.L2109:
	r0 = 5
	exit
.L2110:
	r0 = 6
	exit
.L2111:
	r0 = 7
	exit
.L2112:
	r0 = 8
	exit
.L2113:
	r0 = 9
	exit
.L2114:
	r0 = 10
	exit
.L2115:
	r0 = 11
	exit
.L2116:
	r0 = 12
	exit
.L2117:
	r0 = 13
	exit
.L2118:
	r0 = 14
	goto .L2104
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2125
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2126
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2127
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2128
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2129
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2130
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2131
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2132
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2133
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2134
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2135
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2136
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2137
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2138
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2139
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2142
.L2124:
	exit
.L2142:
	r0 = 15
	exit
.L2125:
	r0 = 0
	exit
.L2126:
	r0 = 1
	exit
.L2127:
	r0 = 2
	exit
.L2128:
	r0 = 3
	exit
.L2129:
	r0 = 4
	exit
.L2130:
	r0 = 5
	exit
.L2131:
	r0 = 6
	exit
.L2132:
	r0 = 7
	exit
.L2133:
	r0 = 8
	exit
.L2134:
	r0 = 9
	exit
.L2135:
	r0 = 10
	exit
.L2136:
	r0 = 11
	exit
.L2137:
	r0 = 12
	exit
.L2138:
	r0 = 13
	exit
.L2139:
	r0 = 14
	goto .L2124
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L2149
	r1 = r6
	call	__fixsfdi
	exit
.L2149:
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
	if r1 == 0 goto .L2153
.L2154:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2171
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2153
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L2153
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L2153
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L2153
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L2153
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L2153
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L2154
	exit
.L2171:
	exit
.L2153:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	if r1 == 0 goto .L2175
	if r2 == 0 goto .L2173
.L2174:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2192
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2173
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2173
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2173
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2173
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2173
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2173
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L2174
	exit
.L2192:
	exit
.L2175:
	exit
.L2173:
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
	if r0 < r2 goto .L2202
	r9 = 32
	r4 = 1
.L2194:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2195
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2195
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2195
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2195
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2195
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2195
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2195
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2195
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2195
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2195
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2195
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2195
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2195
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2195
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2195
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2195
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2194
.L2219:
	r1 = 0
.L2197:
	if r3 != 0 goto .L2200
	r0 = r1
.L2200:
	exit
.L2195:
	if r4 == 0 goto .L2219
.L2202:
	r1 = 0
	goto .L2196
.L2199:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L2197
.L2196:
	if r2 >= r0 goto .L2199
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L2199
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L2223
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2224
.L2222:
	r0 = r8
	r0 &= 1
	exit
.L2224:
	r8 = 0
	goto .L2222
.L2223:
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
	if r0 s<= 0 goto .L2228
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2229
.L2227:
	r0 = r8
	r0 &= 1
	exit
.L2229:
	r8 = 0
	goto .L2227
.L2228:
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
	if r2 s< 0 goto .L2260
	r2 = 0
.L2233:
	if r3 == 0 goto .L2238
	r4 = r3
	r4 &= 1
	r4 = -r4
	r0 = r1
	r0 &= r4
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L2234
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
	if r3 == 0 goto .L2234
	r4 = 30
	r4 &= 0xff
.L2235:
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
	if r3 == 0 goto .L2234
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
	if r3 == 0 goto .L2234
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
	if r3 == 0 goto .L2234
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
	if r3 == 0 goto .L2234
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
	if r3 == 0 goto .L2234
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L2235
.L2234:
	if r2 == 0 goto .L2236
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L2236:
	exit
.L2260:
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r2 = 1
	goto .L2233
.L2238:
	r0 = 0
	goto .L2234
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2269
	r6 = 0
.L2262:
	if r2 s< 0 goto .L2270
.L2263:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L2261
	r0 = -r0
.L2261:
	exit
.L2269:
	r1 = -r1
	r6 = 1
	goto .L2262
.L2270:
	r2 = -r2
	r6 ^= 1
	goto .L2263
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L2279
	r6 = 0
.L2272:
	r2 = r0
	if r0 s< 0 goto .L2280
.L2273:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L2271
	r0 = -r0
.L2271:
	exit
.L2279:
	r1 = -r1
	r6 = 1
	goto .L2272
.L2280:
	r0 = -r0
	r2 = r0
	goto .L2273
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r0 < r2 goto .L2306
	r4 = 0
	r1 = r2
	r1 <<= 48
	if r1 s<= r4 goto .L2306
	r9 = r2
	r9 += r2
	r9 &= 0xffff
	if r9 > r0 goto .L2308
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2308
	r1 = r2
	r1 <<= 2
	r1 &= 0xffff
	if r1 > r0 goto .L2310
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2310
	r1 = r2
	r1 <<= 3
	r1 &= 0xffff
	if r1 > r0 goto .L2312
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2312
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L2314
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2314
	r9 = r2
	r9 <<= 5
	r9 &= 0xffff
	if r9 > r0 goto .L2316
	r5 = r9
	r5 <<= 48
	if r5 s<= r4 goto .L2316
	r1 = r2
	r1 <<= 6
	r1 &= 0xffff
	if r1 > r0 goto .L2318
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2318
	r1 = r2
	r1 <<= 7
	r1 &= 0xffff
	if r1 > r0 goto .L2320
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2320
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L2322
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2322
	r9 = r2
	r9 <<= 9
	r9 &= 0xffff
	if r9 > r0 goto .L2324
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2324
	r1 = r2
	r1 <<= 10
	r1 &= 0xffff
	if r1 > r0 goto .L2326
	r9 = r1
	r9 <<= 48
	if r9 s<= r4 goto .L2326
	r1 = r2
	r1 <<= 11
	r1 &= 0xffff
	if r1 > r0 goto .L2328
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2328
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L2330
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2330
	r9 = r2
	r9 <<= 13
	r9 &= 0xffff
	if r9 > r0 goto .L2332
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2332
	r1 = r2
	r1 <<= 14
	r1 &= 0xffff
	if r1 > r0 goto .L2334
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2334
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L2354
	r1 = r4
	if r2 != r4 goto .L2354
.L2285:
	if r3 != 0 goto .L2305
	r0 = r1
.L2305:
	exit
.L2354:
	r4 = 32768
	goto .L2284
.L2306:
	r4 = 1
.L2284:
	if r2 >= r0 goto .L2337
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L2288:
	r9 = r4
	r9 >>= 1
	r5 = r2
	r5 >>= 1
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2290
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2290:
	r9 = r4
	r9 >>= 2
	r5 = r2
	r5 >>= 2
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2291
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2291:
	r9 = r4
	r9 >>= 3
	r5 = r2
	r5 >>= 3
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2292
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2292:
	r9 = r4
	r9 >>= 4
	r5 = r2
	r5 >>= 4
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2293
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2293:
	r9 = r4
	r9 >>= 5
	r5 = r2
	r5 >>= 5
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2294
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2294:
	r9 = r4
	r9 >>= 6
	r5 = r2
	r5 >>= 6
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2295
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2295:
	r9 = r4
	r9 >>= 7
	r5 = r2
	r5 >>= 7
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2296
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2296:
	r9 = r4
	r9 >>= 8
	r5 = r2
	r5 >>= 8
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2297
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2297:
	r9 = r4
	r9 >>= 9
	r5 = r2
	r5 >>= 9
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2298
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2298:
	r9 = r4
	r9 >>= 10
	r5 = r2
	r5 >>= 10
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2299
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2299:
	r9 = r4
	r9 >>= 11
	r5 = r2
	r5 >>= 11
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2300
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2300:
	r9 = r4
	r9 >>= 12
	r5 = r2
	r5 >>= 12
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2301
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2301:
	r9 = r4
	r9 >>= 13
	r5 = r2
	r5 >>= 13
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2302
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2302:
	r9 = r4
	r9 >>= 14
	r5 = r2
	r5 >>= 14
	r5 &= 0xffff
	if r9 == 0 goto .L2285
	if r5 >= r0 goto .L2303
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2303:
	r2 >>= 15
	r2 &= 0xffff
	r4 >>= 15
	if r4 == 0 goto .L2285
	if r2 >= r0 goto .L2285
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
	goto .L2285
.L2308:
	r2 = r9
	r4 = 2
	goto .L2284
.L2310:
	r2 = r1
	r4 = 4
	goto .L2284
.L2312:
	r2 = r1
	r4 = 8
	goto .L2284
.L2314:
	r2 = r9
	r4 = 16
	goto .L2284
.L2316:
	r2 = r9
	r4 = 32
	goto .L2284
.L2318:
	r2 = r1
	r4 = 64
	goto .L2284
.L2320:
	r2 = r1
	r4 = 128
	goto .L2284
.L2322:
	r2 = r9
	r4 = 256
	goto .L2284
.L2324:
	r2 = r9
	r4 = 512
	goto .L2284
.L2326:
	r2 = r1
	r4 = 1024
	goto .L2284
.L2328:
	r2 = r1
	r4 = 2048
	goto .L2284
.L2330:
	r2 = r9
	r4 = 4096
	goto .L2284
.L2332:
	r2 = r9
	r4 = 8192
	goto .L2284
.L2334:
	r2 = r1
	r4 = 16384
	goto .L2284
.L2337:
	r1 = 0
	goto .L2288
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L2364
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L2356:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2357
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2357
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2357
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2357
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2357
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2357
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2357
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2357
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2357
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2357
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2357
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2357
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2357
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2357
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2357
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2357
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2356
.L2382:
	r0 = 0
.L2359:
	if r3 != 0 goto .L2383
.L2355:
	exit
.L2357:
	if r4 == 0 goto .L2382
.L2364:
	r0 = 0
	goto .L2358
.L2361:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L2359
.L2358:
	if r2 >= r1 goto .L2361
	r1 -= r2
	r0 |= r4
	goto .L2361
.L2383:
	r0 = r1
	goto .L2355
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L2385
	r2 += -32
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = 0
.L2386:
	r3 <<= 32
	r0 |= r3
	exit
.L2385:
	if r2 == 0 goto .L2388
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
	goto .L2386
.L2388:
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
	if r0 == 0 goto .L2390
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L2390:
	if r3 == 0 goto .L2393
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
.L2393:
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
	if r0 == 0 goto .L2395
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
.L2396:
	r0 <<= 32
	r0 |= r9
	exit
.L2395:
	if r2 == 0 goto .L2398
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
	goto .L2396
.L2398:
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
	if r0 == 0 goto .L2400
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L2400:
	if r3 == 0 goto .L2403
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
.L2403:
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
	if r1 <= 65534 goto .L2407
	r0 = 0
.L2407:
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
	if r3 != 0 goto .L2408
	r4 -= r5
.L2409:
	r0 += r9
	r0 += r4
	exit
.L2408:
	r4 = 0
	goto .L2409
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L2411
	r6 = 0
.L2411:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2413
	r0 = 0
.L2413:
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
	if r0 s>= r3 goto .L2424
	if r3 s> r0 goto .L2425
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2424
	if r1 > r2 goto .L2425
	r0 = 1
	exit
.L2424:
	r0 = 0
	exit
.L2425:
	r0 = 2
	exit
	.size	__cmpdi2, .-__cmpdi2
	.align	3
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	call	__cmpdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += -1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L2431
	if r2 s> r4 goto .L2432
	if r3 >= r1 goto .L2431
	if r1 > r3 goto .L2432
	r0 = 1
	exit
.L2431:
	r0 = 0
	exit
.L2432:
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
	if r1 == 0 goto .L2435
	r6 = 0
.L2435:
	r6 &= 0xff
	if r0 == 0 goto .L2441
	r1 = 0
.L2437:
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
.L2441:
	r1 = r2
	goto .L2437
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2445
	if r2 == 0 goto .L2447
	r1 = r2
	call	__ctzdi2
	r0 <<= 32
	r2 = 279172874240 ll
	r0 += r2
	r0 s>>= 32
	exit
.L2445:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2447:
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
	if r0 == 0 goto .L2449
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
.L2450:
	r0 <<= 32
	r0 |= r3
	exit
.L2449:
	if r2 == 0 goto .L2452
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
	goto .L2450
.L2452:
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
	if r0 == 0 goto .L2454
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2454:
	if r3 == 0 goto .L2457
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
.L2457:
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
	r8 = r1
	r7 = r2
	r6 = r2;r6 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r2 = r6
	r1 = r3
	*(u64 *) (r10+-8) = r3
	call	__muldsi3
	r8 s>>= 32
	r6 *= r8
	r7 s>>= 32
	r1 = *(u64 *) (r10+-8)
	r1 *= r7
	r6 += r1
	r2 = r0
	r2 s>>= 32
	r6 += r2
	r6 <<= 32
	r0 = r0;r0 &= 0xffffffff
	r0 |= r6
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
	r7 = r1
	r8 = r2
	r6 = r3
	*(u64 *) (r10+-24) = r4
	r2 = r3
	call	__mulddi3
	r6 *= r8
	r4 = *(u64 *) (r10+-24)
	r7 *= r4
	r6 += r7
	r6 += r1
	r1 = r6
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
	if r1 != 0 goto .L2464
	r0 = 0
.L2464:
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
	if r9 > r0 goto .L2471
	r3 = 0
.L2471:
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
	if r0 >= r4 goto .L2472
	r9 = 0
.L2472:
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
	if r1 >= r2 goto .L2473
	r0 = 0
.L2473:
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
	goto .L2477
.L2475:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2476
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2477:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2475
	r2 = r6
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L2475
.L2476:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2482
.L2474:
	r0 = r7
	exit
.L2482:
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
	goto .L2474
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
	goto .L2486
.L2484:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2485
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2486:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2484
	r2 = r6
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L2484
.L2485:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2491
.L2483:
	r0 = r7
	exit
.L2491:
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
	goto .L2483
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2496
	if r3 > r0 goto .L2497
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2496
	if r1 > r2 goto .L2497
	r0 = 1
	exit
.L2496:
	r0 = 0
	exit
.L2497:
	r0 = 2
	exit
	.size	__ucmpdi2, .-__ucmpdi2
	.align	3
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	call	__ucmpdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += -1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2503
	if r2 > r4 goto .L2504
	if r3 >= r1 goto .L2503
	if r1 > r3 goto .L2504
	r0 = 1
	exit
.L2503:
	r0 = 0
	exit
.L2504:
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
