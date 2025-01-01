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
	if r1 s< 0 goto .L760
.L759:
	exit
.L760:
	r0 = -r0
	goto .L759
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
	if r1 s< 0 goto .L764
.L763:
	exit
.L764:
	r0 = -r0
	goto .L763
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
	if r1 s< 0 goto .L768
.L767:
	exit
.L768:
	r0 = -r0
	goto .L767
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
	if r0 == 0 goto .L776
.L771:
	if r2 == r4 goto .L779
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = r3
	r4 s>>= 32
	if r3 != 0 goto .L771
.L776:
	r0 = 0
	goto .L770
.L779:
	r0 = r1
	if r4 == 0 goto .L776
.L770:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L791
.L783:
	r1 += 4
	r2 += 4
.L791:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 != r4 goto .L782
	if r3 == 0 goto .L782
	if r4 != 0 goto .L783
.L782:
	if r4 s>= r3 goto .L786
	r0 = 1
	if r3 s> r4 goto .L785
	r0 = 0
.L785:
	r0 &= 1
	exit
.L786:
	r0 = -1
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
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L809
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L809
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L809
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L809
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L809
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L809
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L809
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L793
.L809:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L813
	r0 = r1
.L812:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L811
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L811
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L811
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L811
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L811
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L811
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L811
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L812
	goto .L811
.L813:
	r0 = r1
.L811:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L835
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L830
	if r0 == 1 goto .L856
	if r0 == 2 goto .L857
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r4 goto .L831
	if r5 == 0 goto .L831
	r3 += -1
	r1 += 4
	r2 += 4
.L857:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L831
	if r9 == 0 goto .L831
	r3 += -1
	r1 += 4
	r2 += 4
.L856:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L831
	if r5 == 0 goto .L831
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L835
.L830:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L831
	if r0 == 0 goto .L831
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
	if r9 != r6 goto .L831
	if r7 == 0 goto .L831
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r7 = r4
	r7 s>>= 32
	if r4 != r6 goto .L831
	if r7 == 0 goto .L831
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L831
	if r7 == 0 goto .L831
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L830
.L835:
	r0 = 0
	exit
.L831:
	if r3 == 0 goto .L835
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L836
	r0 = 1
	if r3 s> r1 goto .L834
	r0 = 0
.L834:
	r0 &= 1
	exit
.L836:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L872
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L867
	if r0 == 1 goto .L909
	if r0 == 2 goto .L910
	if r0 == 3 goto .L911
	if r0 == 4 goto .L912
	if r0 == 5 goto .L913
	if r0 == 6 goto .L914
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L925
	r3 += -1
	r1 += 4
.L914:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r3 += -1
	r1 += 4
.L913:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L925
	r3 += -1
	r1 += 4
.L912:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L925
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
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r3 += -1
	r1 += 4
.L909:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L925
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L872
.L867:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L925
	r3 += -1
	r4 = r3
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L925
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L925
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L925
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L925
	r3 += -1
	r9 += 28
	r1 = r9
	if r4 != 7 goto .L867
.L872:
	r0 = 0
	goto .L866
.L925:
	r0 = r1
	if r3 == 0 goto .L872
.L866:
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L932
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L927
	if r0 == 1 goto .L973
	if r0 == 2 goto .L974
	if r0 == 3 goto .L975
	if r0 == 4 goto .L976
	if r0 == 5 goto .L977
	if r0 == 6 goto .L978
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
.L978:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
.L977:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
.L976:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
.L975:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
.L974:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
.L973:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L932
.L927:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L990
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
	if r6 != r9 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L990
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L990
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	if r5 != 7 goto .L927
.L932:
	r0 = 0
	exit
.L990:
	if r3 == 0 goto .L932
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L933
	r0 = 1
	if r3 s> r1 goto .L931
	r0 = 0
.L931:
	r0 &= 1
	exit
.L933:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L992
	r5 = r1
	r4 = r2
	r0 = r3
	r0 += -1
	r6 = r3
	r6 <<= 2
	r9 = r1
	r9 -= r2
	if r6 >= r9 goto .L993
	if r3 == 0 goto .L992
	r3 &= 7
	if r3 == 0 goto .L994
	if r3 == 1 goto .L1044
	if r3 == 2 goto .L1045
	if r3 == 3 goto .L1046
	if r3 == 4 goto .L1047
	if r3 == 5 goto .L1048
	if r3 == 6 goto .L1049
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r0 += -1
	r5 += 4
	r2 += 4
	r4 = r2
.L1049:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1048:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1047:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
.L1046:
	r2 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r2
	r0 += -1
	r5 += 4
	r4 += 4
.L1045:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r0 += -1
	r5 += 4
	r4 += 4
.L1044:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r3
	r0 += -1
	r5 += 4
	r4 += 4
	if r0 == -1 goto .L992
.L994:
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
	if r0 != -1 goto .L994
	goto .L992
.L993:
	if r3 == 0 goto .L992
	r0 <<= 2
	r3 = r2
	r3 += r0
	r4 = r1
	r4 += r0
	r0 >>= 2
	r0 += 1
	r0 &= 7
	if r0 == 0 goto .L995
	if r0 == 1 goto .L1050
	if r0 == 2 goto .L1051
	if r0 == 3 goto .L1052
	if r0 == 4 goto .L1053
	if r0 == 5 goto .L1054
	if r0 == 6 goto .L1055
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
.L1055:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1054:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1053:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r3 += -4
	r4 += -4
.L1052:
	r5 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r5
	r3 += -4
	r4 += -4
.L1051:
	r9 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r9
	r3 += -4
	r4 += -4
.L1050:
	r0 = *(u32 *) (r3+0)
	*(u32 *) (r4+0) = r0
	r5 = r3
	r3 += -4
	r4 += -4
	if r2 == r5 goto .L992
.L995:
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
	if r2 != r0 goto .L995
.L992:
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
	if r3 == 0 goto .L1074
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L1075
	if r3 == 1 goto .L1100
	if r3 == 2 goto .L1101
	if r3 == 3 goto .L1102
	if r3 == 4 goto .L1103
	if r3 == 5 goto .L1104
	if r3 == 6 goto .L1105
	*(u32 *) (r1+0) = r2
	r4 += -1
	r0 += 4
.L1105:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1104:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1103:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1102:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1101:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L1100:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L1074
.L1075:
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
	if r4 != -1 goto .L1075
.L1074:
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1116
	r5 = r1
	r5 += r3
	r2 += r3
	if r3 == 0 goto .L1115
	r9 = r5
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1118
	if r9 == 1 goto .L1168
	if r9 == 2 goto .L1169
	if r9 == 3 goto .L1170
	if r9 == 4 goto .L1171
	if r9 == 5 goto .L1172
	if r9 == 6 goto .L1173
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1173:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1172:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
.L1171:
	r5 += -1
	r2 += -1
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
.L1170:
	r5 += -1
	r2 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r4
.L1169:
	r5 += -1
	r2 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
.L1168:
	r5 += -1
	r2 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r0
	if r1 == r5 goto .L1198
.L1118:
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
	if r1 != r5 goto .L1118
	exit
.L1116:
	if r1 == r2 goto .L1115
	if r3 == 0 goto .L1115
	r9 = r1
	r4 = r2
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L1119
	if r3 == 1 goto .L1174
	if r3 == 2 goto .L1175
	if r3 == 3 goto .L1176
	if r3 == 4 goto .L1177
	if r3 == 5 goto .L1178
	if r3 == 6 goto .L1179
	r0 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r0
	r9 += 1
	r2 += 1
	r4 = r2
.L1179:
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r1
	r9 += 1
	r4 += 1
.L1178:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
.L1177:
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r3
	r9 += 1
	r4 += 1
.L1176:
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r0
	r9 += 1
	r4 += 1
.L1175:
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r1
	r9 += 1
	r4 += 1
.L1174:
	r2 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r2
	r9 += 1
	r4 += 1
	if r9 == r5 goto .L1199
.L1119:
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
	if r9 != r5 goto .L1119
.L1115:
	exit
.L1198:
	exit
.L1199:
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
.L1216:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1239
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1239
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1239
	r5 = r1
	r5 >>= r0
	r5 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1239
	r9 = r1
	r9 >>= r0
	r9 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1239
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1239
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1239
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1239
	if r0 != 32 goto .L1216
	r0 = 0
	exit
.L1239:
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
	if r1 == 0 goto .L1244
	r0 = r2
	r0 &= 1
	if r0 != 0 goto .L1242
	r0 = 1
.L1243:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1261
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1242
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1242
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1242
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1242
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1242
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1242
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1243
	exit
.L1261:
	exit
.L1244:
	r0 = 0
.L1242:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L1265
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1266
.L1264:
	r0 = r7
	r0 &= 1
	exit
.L1266:
	r7 = 0
	goto .L1264
.L1265:
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
	if r0 s<= 0 goto .L1270
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1271
.L1269:
	r0 = r7
	r0 &= 1
	exit
.L1271:
	r7 = 0
	goto .L1269
.L1270:
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
	if r0 s<= 0 goto .L1275
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1276
.L1274:
	r0 = r7
	r0 &= 1
	exit
.L1276:
	r7 = 0
	goto .L1274
.L1275:
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
	if r0 != 0 goto .L1279
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1279
	if r6 s< 0 goto .L1292
	r7 = 0x40000000 ll
	goto .L1283
.L1292:
	r7 = 0x3f000000 ll
	goto .L1283
.L1282:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1279
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1283:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1282
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1282
.L1279:
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
	if r0 != 0 goto .L1294
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1294
	if r6 s< 0 goto .L1307
	r7 = 0x4000000000000000 ll
	goto .L1298
.L1307:
	r7 = 0x3fe0000000000000 ll
	goto .L1298
.L1297:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1294
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1298:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1297
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1297
.L1294:
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
	if r0 != 0 goto .L1309
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1309
	if r6 s< 0 goto .L1322
	r7 = 0x4000000000000000 ll
	goto .L1313
.L1322:
	r7 = 0x3fe0000000000000 ll
	goto .L1313
.L1312:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1309
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1313:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1312
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1312
.L1309:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1324
	r4 = r2
	r0 = r1
	r5 = r2
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L1325
	if r3 == 1 goto .L1350
	if r3 == 2 goto .L1351
	if r3 == 3 goto .L1352
	if r3 == 4 goto .L1353
	if r3 == 5 goto .L1354
	if r3 == 6 goto .L1355
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 ^= r3
	*(u8 *) (r1+0) = r0
	r2 += 1
	r4 = r2
	r0 = r1
	r0 += 1
.L1355:
	r2 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r2 ^= r9
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1354:
	r2 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r2 ^= r3
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1353:
	r9 = *(u8 *) (r0+0)
	r2 = *(u8 *) (r4+0)
	r9 ^= r2
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1352:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1351:
	r2 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r2 ^= r9
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
.L1350:
	r2 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r2 ^= r3
	*(u8 *) (r0+0) = r2
	r4 += 1
	r0 += 1
	if r4 == r5 goto .L1324
.L1325:
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
	if r4 != r5 goto .L1325
.L1324:
	r0 = r1
	exit
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1372
	r0 = r1
.L1367:
	r0 += 1
	r4 = r0
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L1366
	r0 += 1
	r9 = *(u8 *) (r4+1)
	if r9 == 0 goto .L1366
	r0 += 1
	r5 = *(u8 *) (r4+2)
	if r5 == 0 goto .L1366
	r0 += 1
	r9 = *(u8 *) (r4+3)
	if r9 == 0 goto .L1366
	r0 += 1
	r5 = *(u8 *) (r4+4)
	if r5 == 0 goto .L1366
	r0 += 1
	r9 = *(u8 *) (r4+5)
	if r9 == 0 goto .L1366
	r0 += 1
	r5 = *(u8 *) (r4+6)
	if r5 == 0 goto .L1366
	r0 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L1367
	goto .L1366
.L1372:
	r0 = r1
.L1366:
	if r3 == 0 goto .L1374
	r9 = r3
	r9 &= 7
	if r9 == 0 goto .L1368
	if r9 == 1 goto .L1421
	if r9 == 2 goto .L1422
	if r9 == 3 goto .L1423
	if r9 == 4 goto .L1424
	if r9 == 5 goto .L1425
	if r9 == 6 goto .L1426
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1443
	r2 += 1
	r0 += 1
	r3 += -1
.L1426:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1443
	r2 += 1
	r0 += 1
	r3 += -1
.L1425:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1443
	r2 += 1
	r0 += 1
	r3 += -1
.L1424:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1443
	r2 += 1
	r0 += 1
	r3 += -1
.L1423:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1443
	r2 += 1
	r0 += 1
	r3 += -1
.L1422:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1443
	r2 += 1
	r0 += 1
	r3 += -1
.L1421:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1443
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1374
.L1368:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1443
	r2 += 1
	r0 += 1
	r3 += -1
	r5 = r3
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1443
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1443
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1443
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1443
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+4)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1443
	r0 += 1
	r3 += -1
	r4 = *(u8 *) (r2+5)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1443
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r2+6)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1443
	r2 += 7
	r0 += 1
	r3 += -1
	if r5 != 7 goto .L1368
	goto .L1374
.L1443:
	if r3 != 0 goto .L1371
.L1374:
	*(u8 *) (r0+0) = r3
.L1371:
	r0 = r1
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1499
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1445
	if r0 == 1 goto .L1486
	if r0 == 2 goto .L1487
	if r0 == 3 goto .L1488
	if r0 == 4 goto .L1489
	if r0 == 5 goto .L1490
	if r0 == 6 goto .L1491
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L1444
	r3 = 1
.L1491:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 != 0 goto .L1501
.L1444:
	r0 = r3
	exit
.L1499:
	r3 = 0
	goto .L1444
.L1501:
	r3 += 1
.L1490:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1444
	r3 += 1
.L1489:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1444
	r3 += 1
.L1488:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1444
	r3 += 1
.L1487:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1444
	r3 += 1
.L1486:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1444
	r3 += 1
	if r2 == r3 goto .L1444
.L1445:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1444
	r0 = r3
	r0 += 1
	r3 = r0
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1444
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1444
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1444
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1444
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	if r4 == 0 goto .L1444
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	if r9 == 0 goto .L1444
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1444
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1445
	goto .L1444
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L1510:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1507
	r3 = r2
.L1506:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 == 0 goto .L1511
	r3 += 1
	if r4 != r5 goto .L1506
.L1504:
	r0 = r1
	exit
.L1511:
	r1 += 1
	goto .L1510
.L1507:
	r1 = 0
	goto .L1504
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1514
.L1513:
	r1 += 1
	if r0 == 0 goto .L1517
.L1514:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1513
	r3 = r1
	goto .L1513
.L1517:
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
	if r0 == 0 goto .L1519
.L1520:
	r9 = r3
	r9 += 1
	r3 = r9
	r5 = *(u8 *) (r9+0)
	if r5 == 0 goto .L1519
	r3 += 1
	r0 = *(u8 *) (r9+1)
	if r0 == 0 goto .L1519
	r3 += 1
	r5 = *(u8 *) (r9+2)
	if r5 == 0 goto .L1519
	r3 += 1
	r0 = *(u8 *) (r9+3)
	if r0 == 0 goto .L1519
	r3 += 1
	r5 = *(u8 *) (r9+4)
	if r5 == 0 goto .L1519
	r3 += 1
	r0 = *(u8 *) (r9+5)
	if r0 == 0 goto .L1519
	r3 += 1
	r5 = *(u8 *) (r9+6)
	if r5 == 0 goto .L1519
	r3 += 1
	r9 = *(u8 *) (r9+7)
	if r9 != 0 goto .L1520
.L1519:
	r9 = r3
	r9 -= r2
	if r3 == r2 goto .L1521
	r9 += -1
	goto .L1527
.L1530:
	r3 = r2
.L1523:
	r3 = *(u8 *) (r3+0)
	if r3 == r0 goto .L1521
	r1 += 1
.L1527:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r4 goto .L1526
	r1 += 1
	if r3 != 0 goto .L1527
	r1 = 0
.L1521:
	r0 = r1
	exit
.L1526:
	if r1 == 0 goto .L1521
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1530
	r7 = r1
	r7 += r9
	r3 = r2
	r5 = r1
	r6 = r9
	r6 &= 7
	if r6 == 0 goto .L1524
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L1523
	if r5 != r0 goto .L1523
	r5 = r1
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L1523
	if r6 == 1 goto .L1524
	if r6 == 2 goto .L1582
	if r6 == 3 goto .L1583
	if r6 == 4 goto .L1584
	if r6 == 5 goto .L1585
	if r6 == 6 goto .L1586
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1523
	if r6 != r0 goto .L1523
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1523
.L1586:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1523
	if r6 != r0 goto .L1523
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1523
.L1585:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1523
	if r6 != r0 goto .L1523
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1523
.L1584:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1523
	if r6 != r0 goto .L1523
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1523
.L1583:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1523
	if r6 != r0 goto .L1523
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1523
.L1582:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1523
	if r6 != r0 goto .L1523
	r5 += 1
	r3 += 1
	r0 = *(u8 *) (r5+0)
	if r0 == 0 goto .L1523
.L1524:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1523
	if r5 == r7 goto .L1523
	if r6 != r0 goto .L1523
	r8 = r5
	r8 += 1
	r3 += 1
	r6 = r3
	r0 = *(u8 *) (r5+1)
	if r0 == 0 goto .L1523
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1523
	if r5 != r0 goto .L1523
	r3 += 1
	r0 = *(u8 *) (r8+1)
	if r0 == 0 goto .L1523
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1523
	if r5 != r0 goto .L1523
	r3 += 1
	r0 = *(u8 *) (r8+2)
	if r0 == 0 goto .L1523
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1523
	if r5 != r0 goto .L1523
	r3 += 1
	r0 = *(u8 *) (r8+3)
	if r0 == 0 goto .L1523
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1523
	if r5 != r0 goto .L1523
	r3 += 1
	r0 = *(u8 *) (r8+4)
	if r0 == 0 goto .L1523
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1523
	if r5 != r0 goto .L1523
	r3 += 1
	r0 = *(u8 *) (r8+5)
	if r0 == 0 goto .L1523
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1523
	if r5 != r0 goto .L1523
	r3 += 1
	r0 = *(u8 *) (r8+6)
	if r0 == 0 goto .L1523
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1523
	if r5 != r0 goto .L1523
	r5 = r8
	r5 += 7
	r3 += 1
	r0 = *(u8 *) (r8+7)
	if r0 != 0 goto .L1524
	goto .L1523
	.size	strstr, .-strstr
	.align	3
	.global	copysign
	.type	copysign, @function
copysign:
	r6 = r1
	r7 = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1642
.L1634:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1637
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1636
.L1637:
	r0 = r6
	exit
.L1642:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1634
.L1636:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1637
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	*(u64 *) (r10+-8) = r3
	r7 = r4
	if r4 == 0 goto .L1651
	if r4 >= r2 goto .L1653
	r2 -= r4
	r5 = r1
	r5 += r2
	if r1 > r5 goto .L1653
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
	goto .L1650
.L1724:
	r5 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-24)
	r7 = *(u64 *) (r10+-32)
.L1713:
	if r3 == 0 goto .L1643
	r3 = *(u8 *) (r2+0)
	r2 = *(u8 *) (r0+0)
	if r3 == r2 goto .L1643
.L1645:
	if r5 <= r1 goto .L1653
.L1650:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r1
	r1 += 1
	if r0 != r9 goto .L1645
	r3 = r7
	r3 += -1
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	if r7 == 1 goto .L1643
	r2 = r1
	r6 = r3
	r6 &= 7
	if r6 == 0 goto .L1718
	if r6 == 1 goto .L1696
	if r6 == 2 goto .L1697
	if r6 == 3 goto .L1698
	if r6 == 4 goto .L1699
	if r6 == 5 goto .L1700
	if r6 == 6 goto .L1701
	r8 = *(u8 *) (r1+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1713
	r3 += -1
	r2 += 1
	r0 += 1
.L1701:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1713
	r3 += -1
	r2 += 1
	r0 += 1
.L1700:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1713
	r3 += -1
	r2 += 1
	r0 += 1
.L1699:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1713
	r3 += -1
	r2 += 1
	r0 += 1
.L1698:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1713
	r3 += -1
	r2 += 1
	r0 += 1
.L1697:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1713
	r3 += -1
	r2 += 1
	r0 += 1
.L1696:
	r8 = *(u8 *) (r2+0)
	r6 = *(u8 *) (r0+0)
	if r8 != r6 goto .L1713
	r3 += -1
	r2 += 1
	r0 += 1
	if r3 == 0 goto .L1643
.L1718:
	*(u64 *) (r10+-16) = r5
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r7
.L1646:
	r5 = *(u8 *) (r2+0)
	r1 = *(u8 *) (r0+0)
	if r5 != r1 goto .L1724
	r3 += -1
	r6 = r3
	r2 += 1
	r5 = r2
	r0 += 1
	r1 = r0
	r8 = *(u8 *) (r2+0)
	r7 = *(u8 *) (r0+0)
	if r8 != r7 goto .L1724
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+1)
	r7 = *(u8 *) (r1+1)
	if r8 != r7 goto .L1724
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+2)
	r7 = *(u8 *) (r1+2)
	if r8 != r7 goto .L1724
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+3)
	r7 = *(u8 *) (r1+3)
	if r8 != r7 goto .L1724
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+4)
	r7 = *(u8 *) (r1+4)
	if r8 != r7 goto .L1724
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+5)
	r7 = *(u8 *) (r1+5)
	if r8 != r7 goto .L1724
	r3 += -1
	r2 += 1
	r0 += 1
	r8 = *(u8 *) (r5+6)
	r7 = *(u8 *) (r1+6)
	if r8 != r7 goto .L1724
	r3 += -1
	r2 += 1
	r0 += 1
	if r6 != 7 goto .L1646
	goto .L1643
.L1651:
	r4 = r1
	goto .L1643
.L1653:
	r4 = 0
.L1643:
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
	if r0 s<= 0 goto .L1764
	*(u64 *) (r10+-8) = 0
.L1726:
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1761
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1730:
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
	if r0 s< 0 goto .L1731
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
	if r0 s< 0 goto .L1731
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
	if r0 s< 0 goto .L1731
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
	if r0 s>= 0 goto .L1730
	goto .L1731
.L1764:
	r0 = -9223372036854775808 ll
	r0 ^= r7
	r7 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1726
.L1761:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L1762
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	r8 = 0
	if r0 == 0 goto .L1731
	r6 = r8
.L1734:
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
	if r6 s< r0 goto .L1731
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
	if r6 s< r0 goto .L1731
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
	if r6 s< r0 goto .L1731
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
	if r6 s>= r0 goto .L1734
	goto .L1731
.L1762:
	r8 = 0
.L1731:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r8
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1735
	r3 = -9223372036854775808 ll
	r3 ^= r7
	r7 = r3
.L1735:
	r0 = r7
	exit
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = 0
	if r1 == 0 goto .L1765
.L1767:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1784
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1765
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1765
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1765
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1765
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1765
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1765
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1767
	exit
.L1784:
	exit
.L1765:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1794
	r9 = 32
	r4 = 1
.L1786:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1787
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1787
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1787
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1787
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1787
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1787
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1787
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1787
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1787
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1787
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1787
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1787
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1787
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1787
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1787
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1787
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1786
.L1811:
	r1 = 0
.L1789:
	if r3 != 0 goto .L1792
	r0 = r1
.L1792:
	exit
.L1787:
	if r4 == 0 goto .L1811
.L1794:
	r1 = 0
	goto .L1788
.L1791:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1789
.L1788:
	if r2 >= r0 goto .L1791
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L1791
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
	if r2 == r1 goto .L1814
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
.L1814:
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
	if r0 == r2 goto .L1817
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1817:
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
	if r1 == 0 goto .L1819
.L1820:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1837
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1819
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1819
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1819
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1819
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1819
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1819
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1820
	exit
.L1837:
	exit
.L1819:
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
	if r1 >= r2 goto .L1839
.L1842:
	if r5 == 0 goto .L1841
	r0 = r2
	r4 = r1
	r5 <<= 3
	r6 = r5
	r6 += r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1845
	if r5 == 1 goto .L1922
	if r5 == 2 goto .L1923
	if r5 == 3 goto .L1924
	if r5 == 4 goto .L1925
	if r5 == 5 goto .L1926
	if r5 == 6 goto .L1927
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
	r4 += 8
.L1927:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1926:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1925:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1924:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1923:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1922:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1841
.L1845:
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
	if r0 != r6 goto .L1845
.L1841:
	if r9 > r3 goto .L1838
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
	if r9 == 0 goto .L1846
	if r9 == 1 goto .L1928
	if r9 == 2 goto .L1929
	if r9 == 3 goto .L1930
	if r9 == 4 goto .L1931
	if r9 == 5 goto .L1932
	if r9 == 6 goto .L1933
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1933:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1932:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1931:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1930:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1929:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1928:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1958
.L1846:
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
	if r0 != r2 goto .L1846
	exit
.L1839:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1842
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L1838
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1847
	if r3 == 1 goto .L1916
	if r3 == 2 goto .L1917
	if r3 == 3 goto .L1918
	if r3 == 4 goto .L1919
	if r3 == 5 goto .L1920
	if r3 == 6 goto .L1921
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L1921:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L1920:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L1919:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L1918:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L1917:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L1916:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L1959
.L1847:
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
	if r3 != 6 goto .L1847
.L1838:
	exit
.L1958:
	exit
.L1959:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 1
	if r1 >= r2 goto .L1961
.L1964:
	if r5 == 0 goto .L1963
	r0 = r2
	r4 = r1
	r5 += r5
	r9 = r5
	r9 += r2
	r5 += -2
	r5 >>= 1
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1967
	if r5 == 1 goto .L2023
	if r5 == 2 goto .L2024
	if r5 == 3 goto .L2025
	if r5 == 4 goto .L2026
	if r5 == 5 goto .L2027
	if r5 == 6 goto .L2028
	r0 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r0
	r0 = r2
	r0 += 2
	r4 += 2
.L2028:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2027:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2026:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2025:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2024:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L2023:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L1963
.L1967:
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
	if r0 != r9 goto .L1967
.L1963:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1960
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1961:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1964
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	r5 = r9
	if r3 == 0 goto .L1960
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1968
	if r3 == 1 goto .L2017
	if r3 == 2 goto .L2018
	if r3 == 3 goto .L2019
	if r3 == 4 goto .L2020
	if r3 == 5 goto .L2021
	if r3 == 6 goto .L2022
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r5 = r9
	r5 += -1
.L2022:
	r9 = r2
	r9 += r5
	r3 = r1
	r3 += r5
	r0 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r0
	r5 += -1
.L2021:
	r4 = r2
	r4 += r5
	r9 = r1
	r9 += r5
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r5 += -1
.L2020:
	r0 = r2
	r0 += r5
	r9 = r1
	r9 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r5 += -1
.L2019:
	r0 = r2
	r0 += r5
	r3 = r1
	r3 += r5
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r9
	r5 += -1
.L2018:
	r4 = r2
	r4 += r5
	r0 = r1
	r0 += r5
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r5 += -1
.L2017:
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r5 += -1
	if r5 == -1 goto .L2046
.L1968:
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
	if r9 != 6 goto .L1968
.L1960:
	exit
.L2046:
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
	if r1 >= r2 goto .L2048
.L2051:
	if r5 == 0 goto .L2050
	r0 = r2
	r4 = r1
	r5 <<= 2
	r6 = r5
	r6 += r2
	r5 += -4
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2054
	if r5 == 1 goto .L2131
	if r5 == 2 goto .L2132
	if r5 == 3 goto .L2133
	if r5 == 4 goto .L2134
	if r5 == 5 goto .L2135
	if r5 == 6 goto .L2136
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r0
	r0 = r2
	r0 += 4
	r4 += 4
.L2136:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2135:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2134:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2133:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2132:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L2131:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L2050
.L2054:
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
	if r0 != r6 goto .L2054
.L2050:
	if r9 > r3 goto .L2047
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
	if r9 == 0 goto .L2055
	if r9 == 1 goto .L2137
	if r9 == 2 goto .L2138
	if r9 == 3 goto .L2139
	if r9 == 4 goto .L2140
	if r9 == 5 goto .L2141
	if r9 == 6 goto .L2142
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2142:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2141:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L2140:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L2139:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L2138:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L2137:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L2167
.L2055:
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
	if r0 != r2 goto .L2055
	exit
.L2048:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L2051
	r4 = r3
	r4 += -1
	r5 = r4;r5 &= 0xffffffff
	r9 = r5
	if r3 == 0 goto .L2047
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2056
	if r3 == 1 goto .L2125
	if r3 == 2 goto .L2126
	if r3 == 3 goto .L2127
	if r3 == 4 goto .L2128
	if r3 == 5 goto .L2129
	if r3 == 6 goto .L2130
	r9 = r2
	r9 += r5
	r0 = r1
	r0 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += -1
.L2130:
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
.L2129:
	r4 = r2
	r4 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r9 += -1
.L2128:
	r0 = r2
	r0 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
	r9 += -1
.L2127:
	r0 = r2
	r0 += r9
	r3 = r1
	r3 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r3+0) = r5
	r9 += -1
.L2126:
	r4 = r2
	r4 += r9
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r9 += -1
.L2125:
	r5 = r2
	r5 += r9
	r0 = r1
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2168
.L2056:
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
	if r3 != 6 goto .L2056
.L2047:
	exit
.L2167:
	exit
.L2168:
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
	if r0 != 0 goto .L2178
	r0 = r1
	r0 >>= 14
	if r0 != 0 goto .L2177
	r3 = r1
	r3 >>= 13
	if r3 != 0 goto .L2179
	r4 = r1
	r4 >>= 12
	if r4 != 0 goto .L2180
	r5 = r1
	r5 >>= 11
	if r5 != 0 goto .L2181
	r9 = r1
	r9 >>= 10
	if r9 != 0 goto .L2182
	r0 = r1
	r0 >>= 9
	if r0 != 0 goto .L2183
	r3 = r1
	r3 >>= 8
	if r3 != 0 goto .L2184
	r4 = r1
	r4 >>= 7
	if r4 != 0 goto .L2185
	r5 = r1
	r5 >>= 6
	if r5 != 0 goto .L2186
	r9 = r1
	r9 >>= 5
	if r9 != 0 goto .L2187
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L2188
	r3 = r1
	r3 >>= 3
	if r3 != 0 goto .L2189
	r4 = r1
	r4 >>= 2
	if r4 != 0 goto .L2190
	r2 >>= 1
	if r2 != 0 goto .L2191
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L2194
.L2177:
	exit
.L2194:
	r0 = 15
	exit
.L2178:
	r0 = 0
	exit
.L2179:
	r0 = 2
	exit
.L2180:
	r0 = 3
	exit
.L2181:
	r0 = 4
	exit
.L2182:
	r0 = 5
	exit
.L2183:
	r0 = 6
	exit
.L2184:
	r0 = 7
	exit
.L2185:
	r0 = 8
	exit
.L2186:
	r0 = 9
	exit
.L2187:
	r0 = 10
	exit
.L2188:
	r0 = 11
	exit
.L2189:
	r0 = 12
	exit
.L2190:
	r0 = 13
	exit
.L2191:
	r0 = 14
	goto .L2177
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L2198
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L2199
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L2200
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L2201
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L2202
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L2203
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L2204
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L2205
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L2206
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L2207
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L2208
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L2209
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L2210
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L2211
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L2212
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2215
.L2197:
	exit
.L2215:
	r0 = 15
	exit
.L2198:
	r0 = 0
	exit
.L2199:
	r0 = 1
	exit
.L2200:
	r0 = 2
	exit
.L2201:
	r0 = 3
	exit
.L2202:
	r0 = 4
	exit
.L2203:
	r0 = 5
	exit
.L2204:
	r0 = 6
	exit
.L2205:
	r0 = 7
	exit
.L2206:
	r0 = 8
	exit
.L2207:
	r0 = 9
	exit
.L2208:
	r0 = 10
	exit
.L2209:
	r0 = 11
	exit
.L2210:
	r0 = 12
	exit
.L2211:
	r0 = 13
	exit
.L2212:
	r0 = 14
	goto .L2197
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L2222
	r1 = r6
	call	__fixsfdi
	exit
.L2222:
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
	if r1 == 0 goto .L2226
.L2227:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L2244
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L2226
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L2226
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L2226
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L2226
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L2226
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L2226
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L2227
	exit
.L2244:
	exit
.L2226:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r0 = 0
	if r1 == 0 goto .L2248
	if r2 == 0 goto .L2246
.L2247:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2265
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2246
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2246
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2246
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2246
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2246
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L2246
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L2247
	exit
.L2265:
	exit
.L2248:
	exit
.L2246:
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
	if r0 < r2 goto .L2275
	r9 = 32
	r4 = 1
.L2267:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2268
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2268
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2268
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2268
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2268
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2268
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2268
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2268
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2268
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2268
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L2268
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2268
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L2268
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2268
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L2268
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L2268
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2267
.L2292:
	r1 = 0
.L2270:
	if r3 != 0 goto .L2273
	r0 = r1
.L2273:
	exit
.L2268:
	if r4 == 0 goto .L2292
.L2275:
	r1 = 0
	goto .L2269
.L2272:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L2270
.L2269:
	if r2 >= r0 goto .L2272
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L2272
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L2296
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2297
.L2295:
	r0 = r8
	r0 &= 1
	exit
.L2297:
	r8 = 0
	goto .L2295
.L2296:
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
	if r0 s<= 0 goto .L2301
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2302
.L2300:
	r0 = r8
	r0 &= 1
	exit
.L2302:
	r8 = 0
	goto .L2300
.L2301:
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
	if r2 s< 0 goto .L2333
	r2 = 0
.L2306:
	if r3 == 0 goto .L2311
	r4 = r3
	r4 &= 1
	r4 = -r4
	r0 = r1
	r0 &= r4
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L2307
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
	if r3 == 0 goto .L2307
	r4 = 30
	r4 &= 0xff
.L2308:
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
	if r3 == 0 goto .L2307
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
	if r3 == 0 goto .L2307
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
	if r3 == 0 goto .L2307
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
	if r3 == 0 goto .L2307
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
	if r3 == 0 goto .L2307
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L2308
.L2307:
	if r2 == 0 goto .L2309
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L2309:
	exit
.L2333:
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r2 = 1
	goto .L2306
.L2311:
	r0 = 0
	goto .L2307
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L2367
	r4 = 0
.L2335:
	if r2 s< 0 goto .L2368
.L2336:
	r0 = r2;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2346
	r9 = 32
	r1 = 1
.L2337:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2338
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2338
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2338
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2338
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2338
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2338
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2338
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2338
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2338
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2338
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2338
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2338
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2338
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2338
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2338
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2338
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2337
.L2366:
	r2 = 0
.L2340:
	r0 = r2
	if r4 == 0 goto .L2334
	r0 = -r0
.L2334:
	exit
.L2367:
	r1 = -r1
	r4 = 1
	goto .L2335
.L2368:
	r2 = -r2
	r4 ^= 1
	goto .L2336
.L2338:
	if r1 == 0 goto .L2366
.L2346:
	r2 = 0
	goto .L2339
.L2369:
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
	r5 = r1
	r5 |= r2
	r2 = r5
.L2342:
	r1 >>= 1
	r0 >>= 1
	if r1 == 0 goto .L2340
.L2339:
	if r0 >= r3 goto .L2342
	goto .L2369
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s< 0 goto .L2407
	r4 = 0
.L2371:
	r0 = r2
	if r2 s< 0 goto .L2408
.L2372:
	r0 = r0;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r1 = 1
	if r3 < r0 goto .L2387
	r9 = 32
	r1 = 1
.L2373:
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2406
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2406
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2406
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2406
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2406
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2406
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2406
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2406
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2406
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2406
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	r9 = r0
	r9 <<= 32
	if r9 s< 0 goto .L2406
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2406
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	r5 = r0
	r5 <<= 32
	if r5 s< 0 goto .L2406
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2406
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	r2 = r0
	r2 <<= 32
	if r2 s< 0 goto .L2406
	r0 += r0
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	if r0 > r3 goto .L2406
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L2373
.L2376:
	r0 = r3
	if r4 == 0 goto .L2370
	r0 = -r0
.L2370:
	exit
.L2407:
	r1 = -r1
	r4 = 1
	goto .L2371
.L2408:
	r0 = -r0
	goto .L2372
.L2409:
	r3 -= r0
	r3 = r3;r3 &= 0xffffffff
.L2377:
	r1 >>= 1
	r0 >>= 1
.L2406:
	if r1 == 0 goto .L2376
.L2387:
	if r0 >= r3 goto .L2377
	goto .L2409
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r0 < r2 goto .L2435
	r4 = 0
	r1 = r2
	r1 <<= 48
	if r1 s<= r4 goto .L2435
	r9 = r2
	r9 += r2
	r9 &= 0xffff
	if r9 > r0 goto .L2437
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2437
	r1 = r2
	r1 <<= 2
	r1 &= 0xffff
	if r1 > r0 goto .L2439
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2439
	r1 = r2
	r1 <<= 3
	r1 &= 0xffff
	if r1 > r0 goto .L2441
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2441
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L2443
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2443
	r9 = r2
	r9 <<= 5
	r9 &= 0xffff
	if r9 > r0 goto .L2445
	r5 = r9
	r5 <<= 48
	if r5 s<= r4 goto .L2445
	r1 = r2
	r1 <<= 6
	r1 &= 0xffff
	if r1 > r0 goto .L2447
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2447
	r1 = r2
	r1 <<= 7
	r1 &= 0xffff
	if r1 > r0 goto .L2449
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2449
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L2451
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2451
	r9 = r2
	r9 <<= 9
	r9 &= 0xffff
	if r9 > r0 goto .L2453
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2453
	r1 = r2
	r1 <<= 10
	r1 &= 0xffff
	if r1 > r0 goto .L2455
	r9 = r1
	r9 <<= 48
	if r9 s<= r4 goto .L2455
	r1 = r2
	r1 <<= 11
	r1 &= 0xffff
	if r1 > r0 goto .L2457
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2457
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L2459
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L2459
	r9 = r2
	r9 <<= 13
	r9 &= 0xffff
	if r9 > r0 goto .L2461
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L2461
	r1 = r2
	r1 <<= 14
	r1 &= 0xffff
	if r1 > r0 goto .L2463
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L2463
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L2483
	r1 = r4
	if r2 != r4 goto .L2483
.L2414:
	if r3 != 0 goto .L2434
	r0 = r1
.L2434:
	exit
.L2483:
	r4 = 32768
	goto .L2413
.L2435:
	r4 = 1
.L2413:
	if r2 >= r0 goto .L2466
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L2417:
	r9 = r4
	r9 >>= 1
	r5 = r2
	r5 >>= 1
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2419
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2419:
	r9 = r4
	r9 >>= 2
	r5 = r2
	r5 >>= 2
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2420
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2420:
	r9 = r4
	r9 >>= 3
	r5 = r2
	r5 >>= 3
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2421
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2421:
	r9 = r4
	r9 >>= 4
	r5 = r2
	r5 >>= 4
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2422
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2422:
	r9 = r4
	r9 >>= 5
	r5 = r2
	r5 >>= 5
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2423
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2423:
	r9 = r4
	r9 >>= 6
	r5 = r2
	r5 >>= 6
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2424
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2424:
	r9 = r4
	r9 >>= 7
	r5 = r2
	r5 >>= 7
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2425
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2425:
	r9 = r4
	r9 >>= 8
	r5 = r2
	r5 >>= 8
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2426
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2426:
	r9 = r4
	r9 >>= 9
	r5 = r2
	r5 >>= 9
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2427
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2427:
	r9 = r4
	r9 >>= 10
	r5 = r2
	r5 >>= 10
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2428
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2428:
	r9 = r4
	r9 >>= 11
	r5 = r2
	r5 >>= 11
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2429
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2429:
	r9 = r4
	r9 >>= 12
	r5 = r2
	r5 >>= 12
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2430
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2430:
	r9 = r4
	r9 >>= 13
	r5 = r2
	r5 >>= 13
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2431
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2431:
	r9 = r4
	r9 >>= 14
	r5 = r2
	r5 >>= 14
	r5 &= 0xffff
	if r9 == 0 goto .L2414
	if r5 >= r0 goto .L2432
	r0 -= r5
	r0 &= 0xffff
	r1 |= r9
	r1 &= 0xffff
.L2432:
	r2 >>= 15
	r2 &= 0xffff
	r4 >>= 15
	if r4 == 0 goto .L2414
	if r2 >= r0 goto .L2414
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
	goto .L2414
.L2437:
	r2 = r9
	r4 = 2
	goto .L2413
.L2439:
	r2 = r1
	r4 = 4
	goto .L2413
.L2441:
	r2 = r1
	r4 = 8
	goto .L2413
.L2443:
	r2 = r9
	r4 = 16
	goto .L2413
.L2445:
	r2 = r9
	r4 = 32
	goto .L2413
.L2447:
	r2 = r1
	r4 = 64
	goto .L2413
.L2449:
	r2 = r1
	r4 = 128
	goto .L2413
.L2451:
	r2 = r9
	r4 = 256
	goto .L2413
.L2453:
	r2 = r9
	r4 = 512
	goto .L2413
.L2455:
	r2 = r1
	r4 = 1024
	goto .L2413
.L2457:
	r2 = r1
	r4 = 2048
	goto .L2413
.L2459:
	r2 = r9
	r4 = 4096
	goto .L2413
.L2461:
	r2 = r9
	r4 = 8192
	goto .L2413
.L2463:
	r2 = r1
	r4 = 16384
	goto .L2413
.L2466:
	r1 = 0
	goto .L2417
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L2493
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L2485:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2486
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2486
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2486
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2486
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2486
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2486
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2486
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2486
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2486
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2486
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2486
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2486
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2486
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2486
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2486
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2486
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2485
.L2511:
	r0 = 0
.L2488:
	if r3 != 0 goto .L2512
.L2484:
	exit
.L2486:
	if r4 == 0 goto .L2511
.L2493:
	r0 = 0
	goto .L2487
.L2490:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L2488
.L2487:
	if r2 >= r1 goto .L2490
	r1 -= r2
	r0 |= r4
	goto .L2490
.L2512:
	r0 = r1
	goto .L2484
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L2514
	r2 += -32
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = 0
.L2515:
	r3 <<= 32
	r0 |= r3
	exit
.L2514:
	if r2 == 0 goto .L2517
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
	goto .L2515
.L2517:
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
	if r0 == 0 goto .L2519
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L2519:
	if r3 == 0 goto .L2522
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
.L2522:
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
	if r0 == 0 goto .L2524
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
.L2525:
	r0 <<= 32
	r0 |= r9
	exit
.L2524:
	if r2 == 0 goto .L2527
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
	goto .L2525
.L2527:
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
	if r0 == 0 goto .L2529
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L2529:
	if r3 == 0 goto .L2532
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
.L2532:
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
	if r1 <= 65534 goto .L2536
	r0 = 0
.L2536:
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
	if r3 != 0 goto .L2537
	r4 -= r5
.L2538:
	r0 += r9
	r0 += r4
	exit
.L2537:
	r4 = 0
	goto .L2538
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L2540
	r6 = 0
.L2540:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L2542
	r0 = 0
.L2542:
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
	if r0 s>= r3 goto .L2553
	if r3 s> r0 goto .L2554
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2553
	if r1 > r2 goto .L2554
	r0 = 1
	exit
.L2553:
	r0 = 0
	exit
.L2554:
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
	if r0 s>= r3 goto .L2559
	if r3 s> r0 goto .L2560
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2559
	if r1 > r2 goto .L2560
	r0 = 1
	goto .L2556
.L2559:
	r0 = 0
.L2556:
	r0 += -1
	exit
.L2560:
	r0 = 2
	goto .L2556
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s>= r2 goto .L2565
	if r2 s> r4 goto .L2566
	if r3 >= r1 goto .L2565
	if r1 > r3 goto .L2566
	r0 = 1
	exit
.L2565:
	r0 = 0
	exit
.L2566:
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
	if r1 == 0 goto .L2569
	r6 = 0
.L2569:
	r6 &= 0xff
	if r0 == 0 goto .L2575
	r1 = 0
.L2571:
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
.L2575:
	r1 = r2
	goto .L2571
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2579
	if r2 == 0 goto .L2581
	r1 = r2
	call	__ctzdi2
	r0 <<= 32
	r2 = 279172874240 ll
	r0 += r2
	r0 s>>= 32
	exit
.L2579:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2581:
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
	if r0 == 0 goto .L2583
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
.L2584:
	r0 <<= 32
	r0 |= r3
	exit
.L2583:
	if r2 == 0 goto .L2586
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
	goto .L2584
.L2586:
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
	if r0 == 0 goto .L2588
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2588:
	if r3 == 0 goto .L2591
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
.L2591:
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
	if r1 != 0 goto .L2598
	r0 = 0
.L2598:
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
	if r9 > r0 goto .L2605
	r3 = 0
.L2605:
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
	if r0 >= r4 goto .L2606
	r9 = 0
.L2606:
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
	if r1 >= r2 goto .L2607
	r0 = 0
.L2607:
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
	goto .L2611
.L2609:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2610
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2611:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2609
	r2 = r6
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L2609
.L2610:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2616
.L2608:
	r0 = r7
	exit
.L2616:
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
	goto .L2608
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
	goto .L2620
.L2618:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2619
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2620:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2618
	r2 = r6
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L2618
.L2619:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2625
.L2617:
	r0 = r7
	exit
.L2625:
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
	goto .L2617
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2630
	if r3 > r0 goto .L2631
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2630
	if r1 > r2 goto .L2631
	r0 = 1
	exit
.L2630:
	r0 = 0
	exit
.L2631:
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
	if r0 >= r3 goto .L2636
	if r3 > r0 goto .L2637
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2636
	if r1 > r2 goto .L2637
	r0 = 1
	goto .L2633
.L2636:
	r0 = 0
.L2633:
	r0 += -1
	exit
.L2637:
	r0 = 2
	goto .L2633
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 >= r2 goto .L2642
	if r2 > r4 goto .L2643
	if r3 >= r1 goto .L2642
	if r1 > r3 goto .L2643
	r0 = 1
	exit
.L2642:
	r0 = 0
	exit
.L2643:
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
