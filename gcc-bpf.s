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
	if r2 > r1 goto .L4
	r2 += r3
	r0 = r1
	r0 += r3
	if r3 == 0 goto .L5
	r4 = r1
	r4 ^= -1
	r5 = r0
	r5 += r4
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L6
	if r5 == 1 goto .L52
	if r5 == 2 goto .L53
	if r5 == 3 goto .L54
	if r5 == 4 goto .L55
	if r5 == 5 goto .L56
	if r5 == 6 goto .L57
	r2 += -1
	r0 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
.L57:
	r2 += -1
	r0 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
.L56:
	r2 += -1
	r0 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
.L55:
	r2 += -1
	r0 += -1
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
.L54:
	r2 += -1
	r0 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
.L53:
	r2 += -1
	r0 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
.L52:
	r2 += -1
	r0 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	if r1 == r0 goto .L5
.L6:
	r2 += -1
	r0 += -1
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r9 = *(u8 *) (r2+-1)
	*(u8 *) (r0+-1) = r9
	r3 = *(u8 *) (r2+-2)
	*(u8 *) (r0+-2) = r3
	r4 = *(u8 *) (r2+-3)
	*(u8 *) (r0+-3) = r4
	r5 = *(u8 *) (r2+-4)
	*(u8 *) (r0+-4) = r5
	r9 = *(u8 *) (r2+-5)
	*(u8 *) (r0+-5) = r9
	r3 = *(u8 *) (r2+-6)
	*(u8 *) (r0+-6) = r3
	r2 += -7
	r0 += -7
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	if r1 != r0 goto .L6
.L5:
	r0 = r1
	exit
.L4:
	if r1 == r2 goto .L5
	if r3 == 0 goto .L5
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r1
	r3 ^= -1
	r3 += r4
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L7
	if r3 == 1 goto .L58
	if r3 == 2 goto .L59
	if r3 == 3 goto .L60
	if r3 == 4 goto .L61
	if r3 == 5 goto .L62
	if r3 == 6 goto .L63
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r2 += 1
.L63:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L62:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L61:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
.L60:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L59:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L58:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
	if r0 == r4 goto .L5
.L7:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r5 = *(u8 *) (r2+1)
	*(u8 *) (r0+1) = r5
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r0+2) = r9
	r3 = *(u8 *) (r2+3)
	*(u8 *) (r0+3) = r3
	r5 = *(u8 *) (r2+4)
	*(u8 *) (r0+4) = r5
	r9 = *(u8 *) (r2+5)
	*(u8 *) (r0+5) = r9
	r3 = *(u8 *) (r2+6)
	*(u8 *) (r0+6) = r3
	r0 += 7
	r2 += 7
	if r0 != r4 goto .L7
	goto .L5
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	if r4 == 0 goto .L68
	r0 = r4
	r0 &= 7
	if r0 == 0 goto .L67
	if r0 == 1 goto .L108
	if r0 == 2 goto .L109
	if r0 == 3 goto .L110
	if r0 == 4 goto .L111
	if r0 == 5 goto .L112
	if r0 == 6 goto .L113
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L113:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L112:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L111:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L110:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L109:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L108:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L68
.L67:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L68
	r4 += -1
	r5 = r4
	r9 = r2
	r9 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r2 == r3 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+1)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+3)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+5)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L68
	r4 += -1
	r2 = r9
	r2 += 7
	r0 += 7
	r1 = r0
	if r5 != 7 goto .L67
.L68:
	if r4 == 0 goto .L71
	r0 = r1
	r0 += 1
	exit
.L71:
	r0 = r4
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L120
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L116
	if r0 == 1 goto .L157
	if r0 == 2 goto .L158
	if r0 == 3 goto .L159
	if r0 == 4 goto .L160
	if r0 == 5 goto .L161
	if r0 == 6 goto .L162
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L120
	r1 += 1
	r3 += -1
.L162:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L120
	r1 += 1
	r3 += -1
.L161:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L120
	r1 += 1
	r3 += -1
.L160:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L120
	r1 += 1
	r3 += -1
.L159:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L120
	r1 += 1
	r3 += -1
.L158:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L120
	r1 += 1
	r3 += -1
.L157:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L120
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L120
.L116:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L120
	r9 = r1
	r9 += 1
	r1 = r9
	r3 += -1
	r4 = r3
	r5 = *(u8 *) (r9+0)
	if r5 == r2 goto .L120
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+1)
	if r0 == r2 goto .L120
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+2)
	if r5 == r2 goto .L120
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+3)
	if r0 == r2 goto .L120
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+4)
	if r5 == r2 goto .L120
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+5)
	if r0 == r2 goto .L120
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+6)
	if r5 == r2 goto .L120
	r9 += 7
	r1 = r9
	r3 += -1
	if r4 != 7 goto .L116
.L120:
	r0 = r1
	if r3 == 0 goto .L166
.L115:
	exit
.L166:
	r0 = r3
	goto .L115
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L169
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L168
	if r0 == 1 goto .L209
	if r0 == 2 goto .L210
	if r0 == 3 goto .L211
	if r0 == 4 goto .L212
	if r0 == 5 goto .L213
	if r0 == 6 goto .L214
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
.L214:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
.L213:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
.L212:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
.L211:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
.L210:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
.L209:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L169
.L168:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L169
	r3 += -1
	r5 = r3
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r0+0)
	if r6 != r9 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+1)
	r6 = *(u8 *) (r0+1)
	if r9 != r6 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+2)
	r6 = *(u8 *) (r0+2)
	if r9 != r6 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+3)
	r6 = *(u8 *) (r0+3)
	if r9 != r6 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+4)
	r6 = *(u8 *) (r0+4)
	if r9 != r6 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+5)
	r6 = *(u8 *) (r0+5)
	if r9 != r6 goto .L169
	r3 += -1
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r4+6)
	r6 = *(u8 *) (r0+6)
	if r4 != r6 goto .L169
	r3 += -1
	r1 += 1
	r0 += 7
	r2 = r0
	if r5 != 7 goto .L168
.L169:
	if r3 == 0 goto .L172
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L172:
	r0 = r3
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
	if r4 == 0 goto .L217
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L216
	if r4 == 1 goto .L217
	if r4 == 2 goto .L231
	if r4 == 3 goto .L229
	if r4 == 4 goto .L227
	if r4 == 5 goto .L225
	if r4 == 6 goto .L223
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L216
.L223:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L216
.L225:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L216
.L227:
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L216
.L229:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L216
.L231:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L216
.L217:
	if r0 == r1 goto .L243
	r3 = r0
	r9 = r0
	r9 += -1
	r0 = *(u8 *) (r0+0)
	if r0 == r2 goto .L216
	r3 = r9
	r4 = r9
	r4 += -1
	r5 = *(u8 *) (r9+0)
	if r5 == r2 goto .L216
	r3 = r4
	r5 = r9
	r5 += -2
	r0 = *(u8 *) (r4+0)
	if r0 == r2 goto .L216
	r3 = r5
	r4 = r9
	r4 += -3
	r5 = *(u8 *) (r5+0)
	if r5 == r2 goto .L216
	r3 = r4
	r5 = r9
	r5 += -4
	r0 = *(u8 *) (r4+0)
	if r0 == r2 goto .L216
	r3 = r5
	r4 = r9
	r4 += -5
	r5 = *(u8 *) (r5+0)
	if r5 == r2 goto .L216
	r3 = r4
	r5 = r9
	r5 += -6
	r0 = *(u8 *) (r4+0)
	if r0 == r2 goto .L216
	r3 = r5
	r0 = r9
	r0 += -7
	r9 = *(u8 *) (r5+0)
	if r9 != r2 goto .L217
	goto .L216
.L243:
	r3 = 0
.L216:
	r0 = r3
	exit
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L245
	r4 = r1
	r4 += r3
	r0 = r1
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L246
	if r3 == 1 goto .L269
	if r3 == 2 goto .L270
	if r3 == 3 goto .L271
	if r3 == 4 goto .L272
	if r3 == 5 goto .L273
	if r3 == 6 goto .L274
	*(u8 *) (r1+0) = r2
	r0 += 1
.L274:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L273:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L272:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L271:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L270:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L269:
	*(u8 *) (r0+0) = r2
	r0 += 1
	if r4 == r0 goto .L245
.L246:
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
	if r4 != r0 goto .L246
.L245:
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
	if r1 == 0 goto .L277
.L278:
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L277
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L277
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L277
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L277
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L277
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L277
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L277
	r2 += 7
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L278
	exit
.L277:
	exit
	.size	stpcpy, .-stpcpy
	.align	3
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	r2 &= 0xff
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r4 = r0
	r4 s>>= 56
	if r0 == 0 goto .L298
.L295:
	r4 &= 0xff
	if r4 == r2 goto .L298
	r1 += 1
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 != 0 goto .L295
.L298:
	r0 = r1
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r0 = r1
	r2 <<= 32
	r2 s>>= 32
.L302:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r2 goto .L301
	r0 += 1
	if r3 != 0 goto .L302
	r0 = r3
.L301:
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L309
.L307:
	r1 += 1
	r2 += 1
.L309:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	if r0 != r3 goto .L306
	if r0 != 0 goto .L307
.L306:
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
	if r0 == 0 goto .L311
.L312:
	r4 = r2
	r4 += 1
	r2 = r4
	r3 = *(u8 *) (r4+0)
	if r3 == 0 goto .L311
	r2 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L311
	r2 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L311
	r2 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L311
	r2 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L311
	r2 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L311
	r2 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L311
	r2 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L312
.L311:
	r0 = r2
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L334
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L331
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L332
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L331
	if r0 != r4 goto .L331
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L331
	if r3 == 1 goto .L332
	if r3 == 2 goto .L370
	if r3 == 3 goto .L371
	if r3 == 4 goto .L372
	if r3 == 5 goto .L373
	if r3 == 6 goto .L374
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L331
	if r3 != r4 goto .L331
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L331
.L374:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L331
	if r9 != r4 goto .L331
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L331
.L373:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L331
	if r0 != r4 goto .L331
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L331
.L372:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L331
	if r3 != r4 goto .L331
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L331
.L371:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L331
	if r9 != r4 goto .L331
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L331
.L370:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L331
	if r0 != r4 goto .L331
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L331
.L332:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L331
	if r1 == r5 goto .L331
	if r3 != r4 goto .L331
	r9 = r1
	r9 += 1
	r0 = r2
	r0 += 1
	r2 = r0
	r4 = *(u8 *) (r1+1)
	if r4 == 0 goto .L331
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L331
	if r1 != r4 goto .L331
	r2 += 1
	r4 = *(u8 *) (r9+1)
	if r4 == 0 goto .L331
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L331
	if r3 != r4 goto .L331
	r2 += 1
	r4 = *(u8 *) (r9+2)
	if r4 == 0 goto .L331
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L331
	if r1 != r4 goto .L331
	r2 += 1
	r4 = *(u8 *) (r9+3)
	if r4 == 0 goto .L331
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L331
	if r3 != r4 goto .L331
	r2 += 1
	r4 = *(u8 *) (r9+4)
	if r4 == 0 goto .L331
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L331
	if r1 != r4 goto .L331
	r2 += 1
	r4 = *(u8 *) (r9+5)
	if r4 == 0 goto .L331
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L331
	if r3 != r4 goto .L331
	r2 += 1
	r4 = *(u8 *) (r9+6)
	if r4 == 0 goto .L331
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L331
	if r1 != r4 goto .L331
	r1 = r9
	r1 += 7
	r0 += 7
	r2 = r0
	r4 = *(u8 *) (r9+7)
	if r4 != 0 goto .L332
.L331:
	r2 = *(u8 *) (r2+0)
	r0 = r4
	r0 -= r2
	exit
.L334:
	r0 = r3
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L377
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
	if r3 == 0 goto .L379
	if r3 == 1 goto .L402
	if r3 == 2 goto .L403
	if r3 == 3 goto .L404
	if r3 == 4 goto .L405
	if r3 == 5 goto .L406
	if r3 == 6 goto .L407
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L407:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L406:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L405:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L404:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L403:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L402:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L409
.L379:
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
	if r0 != r5 goto .L379
.L377:
	exit
.L409:
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
	if r2 <= 24 goto .L411
	r1 = 0
.L411:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L413
	r0 = 0
.L413:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L416
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L416:
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
	if r1 <= 30 goto .L419
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L419:
	r0 = 1
	exit
	.size	iscntrl, .-iscntrl
	.align	3
	.global	isdigit
	.type	isdigit, @function
isdigit:
	r1 <<= 32
	r1 s>>= 32
	r1 += -48
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 8 goto .L421
	r0 = 0
.L421:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 <<= 32
	r1 s>>= 32
	r1 += -33
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 92 goto .L423
	r0 = 0
.L423:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 <<= 32
	r1 s>>= 32
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L425
	r0 = 0
.L425:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 <<= 32
	r1 s>>= 32
	r1 += -32
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 93 goto .L427
	r0 = 0
.L427:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L431
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 3 goto .L430
	r0 = 0
.L430:
	r0 &= 1
	exit
.L431:
	r0 = 1
	exit
	.size	isspace, .-isspace
	.align	3
	.global	isupper
	.type	isupper, @function
isupper:
	r1 <<= 32
	r1 s>>= 32
	r1 += -65
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 24 goto .L433
	r0 = 0
.L433:
	exit
	.size	isupper, .-isupper
	.align	3
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	r1 <<= 32
	r2 = r1
	r2 s>>= 32
	r1 >>= 32
	if r1 <= 30 goto .L438
	r0 = r2
	r0 += -127
	r1 = r0;r1 &= 0xffffffff
	if r1 <= 31 goto .L438
	r3 = r2
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	r0 = 1
	if r0 > r4 goto .L435
	r2 += -65529
	r5 = r2;r5 &= 0xffffffff
	if r5 <= r0 goto .L436
	r0 = 0
.L436:
	r0 &= 1
	exit
.L438:
	r0 = 1
.L435:
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	r1 <<= 32
	r1 s>>= 32
	r1 += -48
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 8 goto .L441
	r0 = 0
.L441:
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
	if r1 <= 254 goto .L450
	if r1 <= 8230 goto .L448
	r2 = r1
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L448
	r4 = r1
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L448
	r1 += -65532
	r1 = r1;r1 &= 0xffffffff
	if r1 > 1048579 goto .L449
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L450:
	r0 += 1
	r9 = 1
	r0 &= 127
	if r0 s> 32 goto .L444
	r9 = 0
.L444:
	r0 = r9
	r0 &= 1
	exit
.L448:
	r0 = 1
	exit
.L449:
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
	if r2 <= 8 goto .L454
	r1 |= 32
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 4 goto .L453
	r0 = 0
.L453:
	r0 &= 1
	exit
.L454:
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
	if r0 != 0 goto .L459
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L460
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L463
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L459:
	r0 = r6
	exit
.L460:
	r0 = r7
	exit
.L463:
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
	if r0 != 0 goto .L467
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L468
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L471
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L467:
	r0 = r6
	exit
.L468:
	r0 = r7
	exit
.L471:
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
	if r0 != 0 goto .L480
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L479
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L474
	if r0 != 0 goto .L480
.L479:
	r0 = r7
	exit
.L474:
	*(u8 *) (r10+-1) = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L477
	*(u8 *) (r10+-1) = r8
.L477:
	r8 = *(u8 *) (r10+-1)
	if r8 != 0 goto .L480
	r6 = r7
.L480:
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
	if r0 != 0 goto .L489
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L488
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L483
	if r2 != 0 goto .L489
.L488:
	r0 = r7
	exit
.L483:
	*(u8 *) (r10+-1) = 1
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r8 s>= r0 goto .L486
	*(u8 *) (r10+-1) = r8
.L486:
	r8 = *(u8 *) (r10+-1)
	if r8 != 0 goto .L489
	r6 = r7
.L489:
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
	if r0 != 0 goto .L498
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L497
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L492
	if r0 != 0 goto .L498
.L497:
	r0 = r7
	exit
.L492:
	*(u8 *) (r10+-1) = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r8 s>= r0 goto .L495
	*(u8 *) (r10+-1) = r8
.L495:
	r8 = *(u8 *) (r10+-1)
	if r8 != 0 goto .L498
	r6 = r7
.L498:
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
	if r0 != 0 goto .L505
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L507
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L501
	if r0 != 0 goto .L507
.L505:
	r0 = r7
	exit
.L501:
	*(u8 *) (r10+-1) = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L504
	*(u8 *) (r10+-1) = r8
.L504:
	r8 = *(u8 *) (r10+-1)
	if r8 != 0 goto .L507
	r6 = r7
.L507:
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
	if r0 != 0 goto .L514
	r2 = r7
	r1 = r7
	call	__unordsf2
	r8 = r0
	if r0 != 0 goto .L516
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L510
	if r2 != 0 goto .L516
.L514:
	r0 = r7
	exit
.L510:
	*(u8 *) (r10+-1) = 1
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r8 s>= r0 goto .L513
	*(u8 *) (r10+-1) = r8
.L513:
	r8 = *(u8 *) (r10+-1)
	if r8 != 0 goto .L516
	r6 = r7
.L516:
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
	if r0 != 0 goto .L523
	r2 = r7
	r1 = r7
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L525
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L519
	if r0 != 0 goto .L525
.L523:
	r0 = r7
	exit
.L519:
	*(u8 *) (r10+-1) = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r8 s>= r0 goto .L522
	*(u8 *) (r10+-1) = r8
.L522:
	r8 = *(u8 *) (r10+-1)
	if r8 != 0 goto .L525
	r6 = r7
.L525:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L527
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
	if r1 == 0 goto .L527
	r4 = r1
	r4 &= 63
	r0 = r2
	r0 += r4
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r3
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L527
	r5 = r1
	r5 &= 63
	r9 = r2
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L527
	r3 = r1
	r3 &= 63
	r5 = r2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L527
	r3 = r1
	r3 &= 63
	r4 = r2
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L527
	r2 += r1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L527:
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
	if r2 == 0 goto .L550
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L547
	*(u64 *) (r2+8) = r1
.L547:
	exit
.L550:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L552
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L552:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L551
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L551:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L556
.L555:
	exit
.L556:
	r1 = -r1
	r0 = r1
	goto .L555
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r8 = r1
.L558:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r1 = r0
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	if r1 == 0 goto .L582
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
	if r2 == 0 goto .L582
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
	if r3 == 0 goto .L582
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
	if r4 == 0 goto .L582
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
	if r5 == 0 goto .L582
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
	if r9 == 0 goto .L582
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
	if r1 == 0 goto .L582
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
	if r2 == 0 goto .L582
	r7 += 7
	r8 = r7
	goto .L558
.L582:
	if r6 == 43 goto .L565
	if r6 != 45 goto .L566
	r3 = 1
.L560:
	r8 += 1
.L561:
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	r4 = r2
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r9 = 9
	if r5 > 8 goto .L563
.L562:
	r1 = r0
	r1 <<= 2
	r0 += r1
	r0 <<= 33
	r0 s>>= 32
	r8 += 1
	r2 += -48
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	r4 = r2
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r9 <= r5 goto .L563
	r1 = r0
	r1 <<= 2
	r0 += r1
	r0 <<= 33
	r0 s>>= 32
	r2 += -48
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r8+1)
	r2 <<= 56
	r2 s>>= 56
	r4 = r2
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r9 <= r5 goto .L563
	r1 = r0
	r1 <<= 2
	r0 += r1
	r0 <<= 33
	r0 s>>= 32
	r2 += -48
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r8+2)
	r2 <<= 56
	r2 s>>= 56
	r4 = r2
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r9 <= r5 goto .L563
	r1 = r0
	r1 <<= 2
	r0 += r1
	r0 <<= 33
	r0 s>>= 32
	r8 += 3
	r2 += -48
	r2 <<= 56
	r2 s>>= 56
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	r4 = r2
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r9 > r5 goto .L562
.L563:
	if r3 != 0 goto .L564
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L564:
	exit
.L565:
	r3 = r0
	goto .L560
.L566:
	r3 = r0
	goto .L561
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r8 = r1
.L584:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L607
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
	if r0 == 0 goto .L607
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L607
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L607
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L607
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L607
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L607
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L607
	r7 += 7
	r8 = r7
	goto .L584
.L607:
	if r6 == 43 goto .L586
	if r6 != 45 goto .L587
	r2 = 1
.L586:
	r8 += 1
.L587:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r3 = 0
	r1 = 9
	if r5 > 8 goto .L589
.L588:
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r8 += 1
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r1 <= r5 goto .L589
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r8+1)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r1 <= r5 goto .L589
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r8+2)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r1 <= r5 goto .L589
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r8 += 3
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r1 > r5 goto .L588
.L589:
	if r2 != 0 goto .L583
	r3 = -r3
.L583:
	r0 = r3
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r8 = r1
.L609:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L632
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
	if r0 == 0 goto .L632
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L632
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L632
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L632
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L632
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L632
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L632
	r7 += 7
	r8 = r7
	goto .L609
.L632:
	if r6 == 43 goto .L611
	if r6 != 45 goto .L612
	r2 = 1
.L611:
	r8 += 1
.L612:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r3 = 0
	r1 = 9
	if r5 > 8 goto .L614
.L613:
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r8 += 1
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r1 <= r5 goto .L614
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r8+1)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r1 <= r5 goto .L614
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r8+2)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r1 <= r5 goto .L614
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r8 += 3
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r1 > r5 goto .L613
.L614:
	if r2 != 0 goto .L608
	r3 = -r3
.L608:
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
	if r1 s< 0 goto .L636
.L635:
	exit
.L636:
	r0 = -r0
	goto .L635
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
	if r1 s< 0 goto .L640
.L639:
	exit
.L640:
	r0 = -r0
	goto .L639
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
	if r1 s< 0 goto .L644
.L643:
	exit
.L644:
	r0 = -r0
	goto .L643
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
	if r0 == 0 goto .L651
.L647:
	if r2 == r4 goto .L651
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = r3
	r4 s>>= 32
	if r3 != 0 goto .L647
.L651:
	r0 = r1
	if r4 == 0 goto .L653
.L646:
	exit
.L653:
	r0 = r4
	goto .L646
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L662
.L657:
	r1 += 4
	r2 += 4
.L662:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 != r4 goto .L656
	if r3 == 0 goto .L656
	if r4 != 0 goto .L657
.L656:
	if r4 s>= r3 goto .L660
	r0 = 1
	if r3 s> r4 goto .L659
	r0 = 0
.L659:
	r0 &= 1
	exit
.L660:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L664:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L680
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L680
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L680
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L680
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L680
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L680
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L680
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L664
.L680:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L684
	r0 = r1
.L683:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L682
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L682
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L682
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L682
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L682
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L682
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L682
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L683
	goto .L682
.L684:
	r0 = r1
.L682:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L702
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L701
	if r0 == 1 goto .L724
	if r0 == 2 goto .L725
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r4 goto .L702
	if r5 == 0 goto .L702
	r3 += -1
	r1 += 4
	r2 += 4
.L725:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L702
	if r9 == 0 goto .L702
	r3 += -1
	r1 += 4
	r2 += 4
.L724:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L702
	if r5 == 0 goto .L702
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L702
.L701:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L702
	if r0 == 0 goto .L702
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
	if r9 != r6 goto .L702
	if r7 == 0 goto .L702
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r7 = r4
	r7 s>>= 32
	if r4 != r6 goto .L702
	if r7 == 0 goto .L702
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L702
	if r7 == 0 goto .L702
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L701
.L702:
	if r3 == 0 goto .L706
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L707
	r0 = 1
	if r3 s> r1 goto .L705
	r0 = 0
.L705:
	r0 &= 1
	exit
.L706:
	r0 = r3
	exit
.L707:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L733
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L729
	if r0 == 1 goto .L770
	if r0 == 2 goto .L771
	if r0 == 3 goto .L772
	if r0 == 4 goto .L773
	if r0 == 5 goto .L774
	if r0 == 6 goto .L775
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L733
	r3 += -1
	r1 += 4
.L775:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L733
	r3 += -1
	r1 += 4
.L774:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L733
	r3 += -1
	r1 += 4
.L773:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L733
	r3 += -1
	r1 += 4
.L772:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L733
	r3 += -1
	r1 += 4
.L771:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L733
	r3 += -1
	r1 += 4
.L770:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L733
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L733
.L729:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L733
	r3 += -1
	r4 = r3
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L733
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L733
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L733
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L733
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L733
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L733
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L733
	r3 += -1
	r9 += 28
	r1 = r9
	if r4 != 7 goto .L729
.L733:
	r0 = r1
	if r3 == 0 goto .L779
.L728:
	exit
.L779:
	r0 = r3
	goto .L728
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L782
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L781
	if r0 == 1 goto .L824
	if r0 == 2 goto .L825
	if r0 == 3 goto .L826
	if r0 == 4 goto .L827
	if r0 == 5 goto .L828
	if r0 == 6 goto .L829
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
.L829:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
.L828:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
.L827:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
.L826:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
.L825:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
.L824:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L782
.L781:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L782
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
	if r6 != r9 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L782
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L782
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	if r5 != 7 goto .L781
.L782:
	if r3 == 0 goto .L786
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L787
	r0 = 1
	if r3 s> r1 goto .L785
	r0 = 0
.L785:
	r0 &= 1
	exit
.L786:
	r0 = r3
	exit
.L787:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L832
	r9 = r1
	r0 = r2
	r5 = r3
	r5 += -1
	r6 = r3
	r6 <<= 2
	r4 = r1
	r4 -= r2
	if r6 >= r4 goto .L833
	if r3 == 0 goto .L832
	r3 &= 7
	if r3 == 0 goto .L834
	if r3 == 1 goto .L882
	if r3 == 2 goto .L883
	if r3 == 3 goto .L884
	if r3 == 4 goto .L885
	if r3 == 5 goto .L886
	if r3 == 6 goto .L887
	r2 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r2
	r5 += -1
	r9 += 4
	r0 += 4
.L887:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r3
	r5 += -1
	r9 += 4
	r0 += 4
.L886:
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r4
	r5 += -1
	r9 += 4
	r0 += 4
.L885:
	r2 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r2
	r5 += -1
	r9 += 4
	r0 += 4
.L884:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r3
	r5 += -1
	r9 += 4
	r0 += 4
.L883:
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r4
	r5 += -1
	r9 += 4
	r0 += 4
.L882:
	r2 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r2
	r5 += -1
	r9 += 4
	r0 += 4
	if r5 == -1 goto .L832
.L834:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r3
	r9 += 4
	r0 += 4
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r4
	r2 = *(u32 *) (r0+4)
	*(u32 *) (r9+4) = r2
	r3 = *(u32 *) (r0+8)
	*(u32 *) (r9+8) = r3
	r4 = *(u32 *) (r0+12)
	*(u32 *) (r9+12) = r4
	r2 = *(u32 *) (r0+16)
	*(u32 *) (r9+16) = r2
	r3 = *(u32 *) (r0+20)
	*(u32 *) (r9+20) = r3
	r4 = *(u32 *) (r0+24)
	*(u32 *) (r9+24) = r4
	r5 += -8
	r9 += 28
	r0 += 28
	if r5 != -1 goto .L834
	goto .L832
.L833:
	if r3 == 0 goto .L832
	r5 <<= 2
	r2 += r5
	r3 = r1
	r3 += r5
	r5 = r2
	r5 -= r0
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L835
	if r5 == 1 goto .L888
	if r5 == 2 goto .L889
	if r5 == 3 goto .L890
	if r5 == 4 goto .L891
	if r5 == 5 goto .L892
	if r5 == 6 goto .L893
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L893:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L892:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L891:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L890:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L889:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L888:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r9 = r2
	r2 += -4
	r3 += -4
	if r0 == r9 goto .L832
.L835:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r9 = *(u32 *) (r2+-4)
	*(u32 *) (r3+-4) = r9
	r5 = *(u32 *) (r2+-8)
	*(u32 *) (r3+-8) = r5
	r4 = *(u32 *) (r2+-12)
	*(u32 *) (r3+-12) = r4
	r9 = *(u32 *) (r2+-16)
	*(u32 *) (r3+-16) = r9
	r5 = *(u32 *) (r2+-20)
	*(u32 *) (r3+-20) = r5
	r4 = r2
	r4 += -24
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r3+-24) = r9
	r2 += -28
	r3 += -28
	if r0 != r4 goto .L835
.L832:
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
	if r3 == 0 goto .L897
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L898
	if r3 == 1 goto .L921
	if r3 == 2 goto .L922
	if r3 == 3 goto .L923
	if r3 == 4 goto .L924
	if r3 == 5 goto .L925
	if r3 == 6 goto .L926
	*(u32 *) (r1+0) = r2
	r4 += -1
	r0 += 4
.L926:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L925:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L924:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L923:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L922:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L921:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L897
.L898:
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
	if r4 != -1 goto .L898
.L897:
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L929
	r0 = r1
	r0 += r3
	r2 += r3
	if r3 == 0 goto .L928
	r4 = r1
	r4 ^= -1
	r3 = r0
	r3 += r4
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L931
	if r3 == 1 goto .L977
	if r3 == 2 goto .L978
	if r3 == 3 goto .L979
	if r3 == 4 goto .L980
	if r3 == 5 goto .L981
	if r3 == 6 goto .L982
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L982:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L981:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L980:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L979:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L978:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L977:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r1 == r0 goto .L991
.L931:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	r5 = *(u8 *) (r0+-1)
	*(u8 *) (r2+-1) = r5
	r9 = *(u8 *) (r0+-2)
	*(u8 *) (r2+-2) = r9
	r4 = *(u8 *) (r0+-3)
	*(u8 *) (r2+-3) = r4
	r3 = *(u8 *) (r0+-4)
	*(u8 *) (r2+-4) = r3
	r5 = *(u8 *) (r0+-5)
	*(u8 *) (r2+-5) = r5
	r9 = *(u8 *) (r0+-6)
	*(u8 *) (r2+-6) = r9
	r0 += -7
	r2 += -7
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r1 != r0 goto .L931
	exit
.L929:
	if r1 == r2 goto .L928
	if r3 == 0 goto .L928
	r0 = r1
	r1 += r3
	r3 = r0
	r3 ^= -1
	r3 += r1
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L932
	if r3 == 1 goto .L983
	if r3 == 2 goto .L984
	if r3 == 3 goto .L985
	if r3 == 4 goto .L986
	if r3 == 5 goto .L987
	if r3 == 6 goto .L988
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L988:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L987:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
.L986:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	r0 += 1
	r2 += 1
.L985:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L984:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L983:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
	if r0 == r1 goto .L992
.L932:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	r0 += 1
	r2 += 1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r5 = *(u8 *) (r0+1)
	*(u8 *) (r2+1) = r5
	r9 = *(u8 *) (r0+2)
	*(u8 *) (r2+2) = r9
	r3 = *(u8 *) (r0+3)
	*(u8 *) (r2+3) = r3
	r4 = *(u8 *) (r0+4)
	*(u8 *) (r2+4) = r4
	r5 = *(u8 *) (r0+5)
	*(u8 *) (r2+5) = r5
	r9 = *(u8 *) (r0+6)
	*(u8 *) (r2+6) = r9
	r0 += 7
	r2 += 7
	if r0 != r1 goto .L932
.L928:
	exit
.L991:
	exit
.L992:
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
	r2 = r1;r2 &= 0xffff
	r0 = r1
	r0 &= 65280
	r0 s>>= 8
	r2 <<= 8
	r0 |= r2
	exit
	.size	bswap_16, .-bswap_16
	.align	3
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	r1 = r1;r1 &= 0xffffffff
	r0 = r1
	r0 <<= 24
	r2 = r1
	r2 >>= 24
	r0 |= r2
	r3 = r1
	r3 >>= 8
	r3 &= 65280
	r0 |= r3
	r1 <<= 8
	r1 &= 16711680
	r0 |= r1
	exit
	.size	bswap_32, .-bswap_32
	.align	3
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	r0 = r1
	r0 <<= 56
	r2 = r1
	r2 >>= 56
	r0 |= r2
	r3 = r1
	r3 >>= 40
	r3 &= 65280
	r0 |= r3
	r4 = r1
	r4 >>= 24
	r4 &= 16711680
	r0 |= r4
	r5 = r1
	r5 >>= 8
	r9 = 4278190080 ll
	r5 &= r9
	r0 |= r5
	r2 = r1
	r2 <<= 8
	r3 = 1095216660480 ll
	r2 &= r3
	r0 |= r2
	r4 = r1
	r4 <<= 24
	r5 = 280375465082880 ll
	r4 &= r5
	r0 |= r4
	r1 <<= 40
	r9 = 71776119061217280 ll
	r1 &= r9
	r0 |= r1
	exit
	.size	bswap_64, .-bswap_64
	.align	3
	.global	ffs
	.type	ffs, @function
ffs:
	r0 = 0
	r1 = r1;r1 &= 0xffffffff
.L1009:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1032
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1032
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1032
	r5 = r1
	r5 >>= r0
	r5 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1032
	r9 = r1
	r9 >>= r0
	r9 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1032
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1032
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1032
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1032
	if r0 != 32 goto .L1009
	r0 = r4
	exit
.L1032:
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
	r0 = r2
	if r1 == 0 goto .L1035
	r0 &= 1
	if r0 != 0 goto .L1035
	r0 = 1
.L1036:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1053
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1035
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1035
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1035
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1035
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1035
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1035
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1036
	exit
.L1053:
	exit
.L1035:
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
	if r8 s>= r0 goto .L1057
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1058
.L1056:
	r0 = r7
	r0 &= 1
	exit
.L1058:
	r7 = r8
	goto .L1056
.L1057:
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
	r8 = 0
	if r8 s>= r0 goto .L1062
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1063
.L1061:
	r0 = r7
	r0 &= 1
	exit
.L1063:
	r7 = r8
	goto .L1061
.L1062:
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
	r8 = 0
	if r8 s>= r0 goto .L1067
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1068
.L1066:
	r0 = r7
	r0 &= 1
	exit
.L1068:
	r7 = r8
	goto .L1066
.L1067:
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
	if r0 != 0 goto .L1071
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1071
	if r6 s< 0 goto .L1078
	r7 = 0x40000000 ll
	goto .L1075
.L1078:
	r7 = 0x3f000000 ll
	goto .L1075
.L1074:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1071
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1075:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1074
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1074
.L1071:
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
	if r0 != 0 goto .L1080
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1080
	if r6 s< 0 goto .L1087
	r7 = 0x4000000000000000 ll
	goto .L1084
.L1087:
	r7 = 0x3fe0000000000000 ll
	goto .L1084
.L1083:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1080
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1084:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1083
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1083
.L1080:
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
	if r0 != 0 goto .L1089
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1089
	if r6 s< 0 goto .L1096
	r7 = 0x4000000000000000 ll
	goto .L1093
.L1096:
	r7 = 0x3fe0000000000000 ll
	goto .L1093
.L1092:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1089
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1093:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1092
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1092
.L1089:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1098
	r4 = r2
	r0 = r1
	r2 += r3
	r3 = r4
	r3 ^= -1
	r3 += r2
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1099
	if r3 == 1 goto .L1122
	if r3 == 2 goto .L1123
	if r3 == 3 goto .L1124
	if r3 == 4 goto .L1125
	if r3 == 5 goto .L1126
	if r3 == 6 goto .L1127
	r9 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r4+0)
	r9 ^= r5
	*(u8 *) (r1+0) = r9
	r4 += 1
	r0 += 1
.L1127:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1126:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1125:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1124:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1123:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1122:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
	if r4 == r2 goto .L1098
.L1099:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r3 = *(u8 *) (r0+1)
	r9 = *(u8 *) (r4+1)
	r3 ^= r9
	*(u8 *) (r0+1) = r3
	r3 = *(u8 *) (r0+2)
	r9 = *(u8 *) (r4+2)
	r3 ^= r9
	*(u8 *) (r0+2) = r3
	r3 = *(u8 *) (r0+3)
	r9 = *(u8 *) (r4+3)
	r3 ^= r9
	*(u8 *) (r0+3) = r3
	r3 = *(u8 *) (r0+4)
	r9 = *(u8 *) (r4+4)
	r3 ^= r9
	*(u8 *) (r0+4) = r3
	r3 = *(u8 *) (r0+5)
	r9 = *(u8 *) (r4+5)
	r3 ^= r9
	*(u8 *) (r0+5) = r3
	r3 = *(u8 *) (r0+6)
	r9 = *(u8 *) (r4+6)
	r3 ^= r9
	*(u8 *) (r0+6) = r3
	r4 += 7
	r0 += 7
	if r4 != r2 goto .L1099
.L1098:
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
	if r8 == 0 goto .L1131
	r2 = r8
	r2 &= 7
	if r2 == 0 goto .L1130
	if r2 == 1 goto .L1170
	if r2 == 2 goto .L1171
	if r2 == 3 goto .L1172
	if r2 == 4 goto .L1173
	if r2 == 5 goto .L1174
	if r2 == 6 goto .L1175
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1131
	r6 += 1
	r0 += 1
	r8 += -1
.L1175:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1131
	r6 += 1
	r0 += 1
	r8 += -1
.L1174:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1131
	r6 += 1
	r0 += 1
	r8 += -1
.L1173:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1131
	r6 += 1
	r0 += 1
	r8 += -1
.L1172:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1131
	r6 += 1
	r0 += 1
	r8 += -1
.L1171:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1131
	r6 += 1
	r0 += 1
	r8 += -1
.L1170:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1131
	r6 += 1
	r0 += 1
	r8 += -1
	if r8 == 0 goto .L1131
.L1130:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1131
	r6 += 1
	r0 += 1
	r9 = r8
	r9 += -1
	r8 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1131
	r0 += 1
	r8 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1131
	r0 += 1
	r8 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1131
	r0 += 1
	r8 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1131
	r0 += 1
	r8 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1131
	r0 += 1
	r8 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1131
	r0 += 1
	r8 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1131
	r6 += 7
	r0 += 1
	r8 += -1
	if r9 != 7 goto .L1130
.L1131:
	if r8 != 0 goto .L1133
	*(u8 *) (r0+0) = r8
.L1133:
	r0 = r7
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1225
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1178
	if r0 == 1 goto .L1219
	if r0 == 2 goto .L1220
	if r0 == 3 goto .L1221
	if r0 == 4 goto .L1222
	if r0 == 5 goto .L1223
	if r0 == 6 goto .L1224
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1177
	r3 += 1
.L1224:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 != 0 goto .L1227
.L1177:
	r0 = r3
	exit
.L1225:
	r3 = r2
	goto .L1177
.L1227:
	r3 += 1
.L1223:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1177
	r3 += 1
.L1222:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1177
	r3 += 1
.L1221:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1177
	r3 += 1
.L1220:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1177
	r3 += 1
.L1219:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1177
	r3 += 1
	if r2 == r3 goto .L1177
.L1178:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1177
	r5 = r3
	r5 += 1
	r3 = r5
	r4 = r1
	r4 += r5
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1177
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1177
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1177
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1177
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1177
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1177
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1177
	r5 += 7
	r3 = r5
	if r2 != r5 goto .L1178
	goto .L1177
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L1236:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1233
	r3 = r2
.L1232:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 == 0 goto .L1237
	r3 += 1
	if r4 != r5 goto .L1232
.L1230:
	r0 = r1
	exit
.L1237:
	r1 += 1
	goto .L1236
.L1233:
	r1 = r5
	goto .L1230
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1240
.L1239:
	r1 += 1
	if r0 == 0 goto .L1243
.L1240:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1239
	r3 = r1
	goto .L1239
.L1243:
	r0 = r3
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	*(u64 *) (r10+-8) = r1
	r6 = r2
	r1 = r2
	call	strlen
	r7 = r0
	r0 = *(u64 *) (r10+-8)
	if r7 == 0 goto .L1248
	r8 = *(u8 *) (r6+0)
	r8 <<= 56
	r8 s>>= 56
	*(u64 *) (r10+-8) = r8
.L1246:
	r2 = *(u32 *) (r10+-8)
	r1 = r0
	call	strchr
	r8 = r0
	if r0 == 0 goto .L1244
	r3 = r7
	r2 = r6
	r1 = r8
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1244
	r0 = r8
	r0 += 1
	goto .L1246
.L1248:
	r8 = r0
.L1244:
	r0 = r8
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
	if r0 s<= 0 goto .L1258
.L1250:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1253
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1252
.L1253:
	r0 = r6
	exit
.L1258:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1250
.L1252:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1253
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r7 = r3
	if r4 == 0 goto .L1263
	if r4 >= r2 goto .L1265
	r2 -= r4
	r8 = r1
	r8 += r2
	if r1 > r8 goto .L1265
	r0 = *(u8 *) (r3+0)
	r0 <<= 56
	r4 += -1
	*(u64 *) (r10+-16) = r4
	r7 += 1
	*(u64 *) (r10+-24) = r7
	r2 = r1
	r2 ^= -1
	r4 = r8
	r4 += r2
	r4 &= 7
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r7 = r0
	r7 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	if r3 == r0 goto .L1321
.L1267:
	if r8 <= r1 goto .L1265
	if r4 == 0 goto .L1262
	if r4 == 1 goto .L1306
	if r4 == 2 goto .L1307
	if r4 == 3 goto .L1308
	if r4 == 4 goto .L1309
	if r4 == 5 goto .L1310
	if r4 == 6 goto .L1311
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	if r5 == r7 goto .L1322
.L1311:
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	if r9 == r7 goto .L1323
.L1310:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	if r0 == r7 goto .L1324
.L1309:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	if r2 == r7 goto .L1325
.L1308:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	if r3 == r7 goto .L1326
.L1307:
	r4 = *(u8 *) (r1+0)
	r4 <<= 56
	r4 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	if r4 == r7 goto .L1327
.L1306:
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	if r5 != r7 goto .L1302
.L1320:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 == 0 goto .L1259
.L1302:
	if r8 <= r1 goto .L1265
.L1262:
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 += 1
	r6 = r1
	if r9 == r7 goto .L1328
.L1304:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r6
	r1 = r6
	r1 += 1
	if r0 == r7 goto .L1329
.L1312:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 = r6
	r1 += 2
	if r2 == r7 goto .L1330
.L1313:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 = r6
	r1 += 3
	if r3 == r7 goto .L1331
.L1314:
	r4 = *(u8 *) (r1+0)
	r4 <<= 56
	r4 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 = r6
	r1 += 4
	if r4 == r7 goto .L1332
.L1315:
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 = r6
	r1 += 5
	if r5 == r7 goto .L1333
.L1316:
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 = r6
	r1 += 6
	if r9 == r7 goto .L1334
.L1317:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r1
	r1 = r6
	r1 += 7
	if r0 != r7 goto .L1302
	goto .L1320
.L1328:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1304
	goto .L1259
.L1263:
	*(u64 *) (r10+-8) = r1
	goto .L1259
.L1265:
	*(u64 *) (r10+-8) = 0
.L1259:
	r0 = *(u64 *) (r10+-8)
	exit
.L1321:
	*(u64 *) (r10+-40) = r4
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	r4 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L1267
	goto .L1259
.L1322:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1311
	goto .L1259
.L1323:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1310
	goto .L1259
.L1324:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1309
	goto .L1259
.L1325:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1308
	goto .L1259
.L1326:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1307
	goto .L1259
.L1327:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1306
	goto .L1259
.L1329:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1312
	goto .L1259
.L1330:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1313
	goto .L1259
.L1331:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1314
	goto .L1259
.L1332:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1315
	goto .L1259
.L1333:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1316
	goto .L1259
.L1334:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1317
	goto .L1259
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
	if r0 s>= r2 goto .L1371
	*(u64 *) (r10+-8) = r0
.L1336:
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1368
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1340:
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
	if r0 s< 0 goto .L1341
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
	if r0 s< 0 goto .L1341
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
	if r0 s< 0 goto .L1341
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
	if r0 s>= 0 goto .L1340
.L1341:
	r3 = *(u64 *) (r10+-16)
	*(u32 *) (r3+0) = r8
	r4 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L1345
	r5 = -9223372036854775808 ll
	r5 ^= r7
	r7 = r5
.L1345:
	r0 = r7
	exit
.L1371:
	r1 = -9223372036854775808 ll
	r1 ^= r7
	r7 = r1
	*(u64 *) (r10+-8) = 1
	goto .L1336
.L1368:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	r8 = 0
	if r8 s< r0 goto .L1341
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	if r0 == r8 goto .L1341
	r6 = r8
.L1344:
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
	if r6 s< r0 goto .L1341
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
	if r6 s< r0 goto .L1341
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
	if r6 s< r0 goto .L1341
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
	if r6 s>= r0 goto .L1344
	goto .L1341
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = r1
	if r1 == 0 goto .L1372
	r1 = 0
.L1374:
	r3 = r0
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r1 += r3
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1372
	r4 = r0
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r1 += r4
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1372
	r5 = r0
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r1 += r5
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1372
	r9 = r0
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r1 += r9
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1372
	r3 = r0
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r1 += r3
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1372
	r4 = r0
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r1 += r4
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1372
	r5 = r0
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r1 += r5
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1372
	r9 = r0
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r1 += r9
	r2 += r2
	r0 >>= 1
	if r0 != 0 goto .L1374
.L1372:
	r0 = r1
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1393
	r9 = 32
	r4 = 1
.L1392:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1393
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1393
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1393
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1393
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1393
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1393
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1393
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1393
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1393
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1393
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1393
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1393
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1393
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1393
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1393
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1393
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1392
	r4 = r9
.L1393:
	r1 = 0
	if r4 != r1 goto .L1394
	r1 = r4
.L1395:
	if r3 != 0 goto .L1398
	r0 = r1
.L1398:
	exit
.L1397:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1395
.L1394:
	if r2 >= r0 goto .L1397
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L1397
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
	if r2 == r1 goto .L1421
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
.L1421:
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
	if r0 == r2 goto .L1424
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1424:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1428
	r0 = 0
.L1427:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1444
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1426
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1426
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1426
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1426
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1426
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1426
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1427
	exit
.L1444:
	exit
.L1428:
	r0 = r1
.L1426:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r6 = r3
	r6 >>= 3
	r9 = r3
	r9 &= -8
	r9 = r9;r9 &= 0xffffffff
	if r1 >= r2 goto .L1446
.L1449:
	if r6 == 0 goto .L1448
	r0 = r2
	r4 = r1
	r6 <<= 3
	r6 += r2
	r5 = r6
	r5 -= r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1452
	if r5 == 1 goto .L1529
	if r5 == 2 goto .L1530
	if r5 == 3 goto .L1531
	if r5 == 4 goto .L1532
	if r5 == 5 goto .L1533
	if r5 == 6 goto .L1534
	r5 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r5
	r0 += 8
	r4 += 8
.L1534:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1533:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1532:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1531:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1530:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1529:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1448
.L1452:
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
	if r0 != r6 goto .L1452
.L1448:
	if r9 > r3 goto .L1445
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r2 += r9
	r3 += -1
	r3 -= r9
	r9 = r3;r9 &= 0xffffffff
	r2 += r9
	r3 = r0
	r3 ^= -1
	r3 += r2
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1453
	if r3 == 1 goto .L1535
	if r3 == 2 goto .L1536
	if r3 == 3 goto .L1537
	if r3 == 4 goto .L1538
	if r3 == 5 goto .L1539
	if r3 == 6 goto .L1540
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1540:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1539:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1538:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1537:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1536:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1535:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1544
.L1453:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r5 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r5
	r9 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r9
	r3 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r3
	r4 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r4
	r5 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r5
	r9 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r9
	r0 += 7
	r1 += 7
	if r0 != r2 goto .L1453
	exit
.L1446:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1449
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1445
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1454
	if r5 == 1 goto .L1523
	if r5 == 2 goto .L1524
	if r5 == 3 goto .L1525
	if r5 == 4 goto .L1526
	if r5 == 5 goto .L1527
	if r5 == 6 goto .L1528
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1528:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1527:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1526:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1525:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1524:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1523:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1545
.L1454:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
	r9 = r0
	r4 = r2
	r4 += r0
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r0 = r9
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-1)
	*(u8 *) (r4+-1) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-2)
	*(u8 *) (r4+-2) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-3)
	*(u8 *) (r4+-3) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-4)
	*(u8 *) (r4+-4) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-5)
	*(u8 *) (r4+-5) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-6)
	*(u8 *) (r4+-6) = r3
	r0 += -7
	if r9 != 6 goto .L1454
.L1445:
	exit
.L1544:
	exit
.L1545:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 >= r2 goto .L1547
.L1550:
	if r9 == 0 goto .L1549
	r0 = r2
	r4 = r1
	r9 += r9
	r9 += r2
	r5 = r9
	r5 -= r2
	r5 += -2
	r5 >>= 1
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1553
	if r5 == 1 goto .L1607
	if r5 == 2 goto .L1608
	if r5 == 3 goto .L1609
	if r5 == 4 goto .L1610
	if r5 == 5 goto .L1611
	if r5 == 6 goto .L1612
	r5 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r5
	r0 += 2
	r4 += 2
.L1612:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1611:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1610:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1609:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1608:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1607:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L1549
.L1553:
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
	if r0 != r9 goto .L1553
.L1549:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1546
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1547:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1550
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1546
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1554
	if r5 == 1 goto .L1601
	if r5 == 2 goto .L1602
	if r5 == 3 goto .L1603
	if r5 == 4 goto .L1604
	if r5 == 5 goto .L1605
	if r5 == 6 goto .L1606
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1606:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1605:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1604:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1603:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1602:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1601:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1615
.L1554:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
	r9 = r0
	r4 = r2
	r4 += r0
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r0 = r9
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-1)
	*(u8 *) (r4+-1) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-2)
	*(u8 *) (r4+-2) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-3)
	*(u8 *) (r4+-3) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-4)
	*(u8 *) (r4+-4) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-5)
	*(u8 *) (r4+-5) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-6)
	*(u8 *) (r4+-6) = r3
	r0 += -7
	if r9 != 6 goto .L1554
.L1546:
	exit
.L1615:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r6 = r3
	r6 >>= 2
	r9 = r3
	r9 &= -4
	r9 = r9;r9 &= 0xffffffff
	if r1 >= r2 goto .L1617
.L1620:
	if r6 == 0 goto .L1619
	r0 = r2
	r4 = r1
	r6 <<= 2
	r6 += r2
	r5 = r6
	r5 -= r2
	r5 += -4
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1623
	if r5 == 1 goto .L1700
	if r5 == 2 goto .L1701
	if r5 == 3 goto .L1702
	if r5 == 4 goto .L1703
	if r5 == 5 goto .L1704
	if r5 == 6 goto .L1705
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r4 += 4
.L1705:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1704:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1703:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1702:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1701:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1700:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L1619
.L1623:
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
	if r0 != r6 goto .L1623
.L1619:
	if r9 > r3 goto .L1616
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r2 += r9
	r3 += -1
	r3 -= r9
	r9 = r3;r9 &= 0xffffffff
	r2 += r9
	r3 = r0
	r3 ^= -1
	r3 += r2
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1624
	if r3 == 1 goto .L1706
	if r3 == 2 goto .L1707
	if r3 == 3 goto .L1708
	if r3 == 4 goto .L1709
	if r3 == 5 goto .L1710
	if r3 == 6 goto .L1711
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1711:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1710:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1709:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1708:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1707:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1706:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1715
.L1624:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r5 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r5
	r9 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r9
	r3 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r3
	r4 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r4
	r5 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r5
	r9 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r9
	r0 += 7
	r1 += 7
	if r0 != r2 goto .L1624
	exit
.L1617:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1620
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1616
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1625
	if r5 == 1 goto .L1694
	if r5 == 2 goto .L1695
	if r5 == 3 goto .L1696
	if r5 == 4 goto .L1697
	if r5 == 5 goto .L1698
	if r5 == 6 goto .L1699
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1699:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1698:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1697:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1696:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1695:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1694:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1716
.L1625:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
	r9 = r0
	r4 = r2
	r4 += r0
	r0 = r1
	r0 += r9
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
	r0 = r9
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-1)
	*(u8 *) (r4+-1) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-2)
	*(u8 *) (r4+-2) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-3)
	*(u8 *) (r4+-3) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-4)
	*(u8 *) (r4+-4) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-5)
	*(u8 *) (r4+-5) = r3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r3 = *(u8 *) (r5+-6)
	*(u8 *) (r4+-6) = r3
	r0 += -7
	if r9 != 6 goto .L1625
.L1616:
	exit
.L1715:
	exit
.L1716:
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
	r0 s>>= 15
	if r0 != 0 goto .L1726
	r0 = r1
	r0 s>>= 14
	if r0 != 0 goto .L1725
	r3 = r1
	r3 s>>= 13
	if r3 != 0 goto .L1727
	r4 = r1
	r4 s>>= 12
	if r4 != 0 goto .L1728
	r5 = r1
	r5 s>>= 11
	if r5 != 0 goto .L1729
	r9 = r1
	r9 s>>= 10
	if r9 != 0 goto .L1730
	r0 = r1
	r0 s>>= 9
	if r0 != 0 goto .L1731
	r3 = r1
	r3 s>>= 8
	if r3 != 0 goto .L1732
	r4 = r1
	r4 s>>= 7
	if r4 != 0 goto .L1733
	r5 = r1
	r5 s>>= 6
	if r5 != 0 goto .L1734
	r9 = r1
	r9 s>>= 5
	if r9 != 0 goto .L1735
	r0 = r1
	r0 s>>= 4
	if r0 != 0 goto .L1736
	r3 = r1
	r3 s>>= 3
	if r3 != 0 goto .L1737
	r4 = r1
	r4 s>>= 2
	if r4 != 0 goto .L1738
	r2 s>>= 1
	if r2 != 0 goto .L1739
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L1741
.L1725:
	exit
.L1741:
	r0 = 15
	exit
.L1726:
	r0 = 0
	exit
.L1727:
	r0 = 2
	exit
.L1728:
	r0 = 3
	exit
.L1729:
	r0 = 4
	exit
.L1730:
	r0 = 5
	exit
.L1731:
	r0 = 6
	exit
.L1732:
	r0 = 7
	exit
.L1733:
	r0 = 8
	exit
.L1734:
	r0 = 9
	exit
.L1735:
	r0 = 10
	exit
.L1736:
	r0 = 11
	exit
.L1737:
	r0 = 12
	exit
.L1738:
	r0 = 13
	exit
.L1739:
	r0 = 14
	goto .L1725
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1745
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L1746
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L1747
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L1748
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L1749
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L1750
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L1751
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L1752
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L1753
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L1754
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L1755
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L1756
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L1757
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L1758
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L1759
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L1761
.L1744:
	exit
.L1761:
	r0 = 15
	exit
.L1745:
	r0 = 0
	exit
.L1746:
	r0 = 1
	exit
.L1747:
	r0 = 2
	exit
.L1748:
	r0 = 3
	exit
.L1749:
	r0 = 4
	exit
.L1750:
	r0 = 5
	exit
.L1751:
	r0 = 6
	exit
.L1752:
	r0 = 7
	exit
.L1753:
	r0 = 8
	exit
.L1754:
	r0 = 9
	exit
.L1755:
	r0 = 10
	exit
.L1756:
	r0 = 11
	exit
.L1757:
	r0 = 12
	exit
.L1758:
	r0 = 13
	exit
.L1759:
	r0 = 14
	goto .L1744
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L1768
	r1 = r6
	call	__fixsfdi
	exit
.L1768:
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
	r0 = r1;r0 &= 0xffff
	r2 = r0
	r3 = r0
	r3 s>>= 1
	r3 &= 1
	r0 &= 1
	r0 += r3
	r1 = r2
	r1 s>>= 2
	r1 &= 1
	r0 += r1
	r4 = r2
	r4 s>>= 3
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 s>>= 4
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 s>>= 5
	r9 &= 1
	r0 += r9
	r3 = r2
	r3 s>>= 6
	r3 &= 1
	r0 += r3
	r1 = r2
	r1 s>>= 7
	r1 &= 1
	r0 += r1
	r4 = r2
	r4 s>>= 8
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 s>>= 9
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 s>>= 10
	r9 &= 1
	r0 += r9
	r3 = r2
	r3 s>>= 11
	r3 &= 1
	r0 += r3
	r1 = r2
	r1 s>>= 12
	r1 &= 1
	r0 += r1
	r4 = r2
	r4 s>>= 13
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 s>>= 14
	r5 &= 1
	r0 += r5
	r2 s>>= 15
	r0 += r2
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r0 = r1;r0 &= 0xffff
	r2 = r0
	r3 = r0
	r3 s>>= 1
	r3 &= 1
	r0 &= 1
	r0 += r3
	r1 = r2
	r1 s>>= 2
	r1 &= 1
	r0 += r1
	r4 = r2
	r4 s>>= 3
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 s>>= 4
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 s>>= 5
	r9 &= 1
	r0 += r9
	r3 = r2
	r3 s>>= 6
	r3 &= 1
	r0 += r3
	r1 = r2
	r1 s>>= 7
	r1 &= 1
	r0 += r1
	r4 = r2
	r4 s>>= 8
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 s>>= 9
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 s>>= 10
	r9 &= 1
	r0 += r9
	r3 = r2
	r3 s>>= 11
	r3 &= 1
	r0 += r3
	r1 = r2
	r1 s>>= 12
	r1 &= 1
	r0 += r1
	r4 = r2
	r4 s>>= 13
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 s>>= 14
	r5 &= 1
	r0 += r5
	r2 s>>= 15
	r0 += r2
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1774
	r0 = 0
.L1773:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1790
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1772
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1772
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1772
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1772
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1772
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1772
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1773
	exit
.L1790:
	exit
.L1774:
	r0 = r1
.L1772:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1794
	if r2 == 0 goto .L1795
	r0 = 0
.L1793:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1811
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1792
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1792
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1792
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1792
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1792
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1792
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L1793
	exit
.L1811:
	exit
.L1794:
	r0 = r1
	exit
.L1795:
	r0 = r2
.L1792:
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
	if r0 < r2 goto .L1814
	r9 = 32
	r4 = 1
.L1813:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1814
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1814
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1814
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1814
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1814
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1814
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1814
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1814
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1814
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1814
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1814
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1814
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1814
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1814
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1814
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1814
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1813
	r4 = r9
.L1814:
	r1 = 0
	if r4 != r1 goto .L1815
	r1 = r4
.L1816:
	if r3 != 0 goto .L1819
	r0 = r1
.L1819:
	exit
.L1818:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1816
.L1815:
	if r2 >= r0 goto .L1818
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L1818
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	*(u64 *) (r10+-8) = r2
	call	__ltsf2
	r8 = 0
	if r8 s>= r0 goto .L1843
	r7 = 1
	r2 = *(u64 *) (r10+-8)
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1844
.L1842:
	r0 = r7
	r0 &= 1
	exit
.L1844:
	r7 = r8
	goto .L1842
.L1843:
	r0 = -1
	exit
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	3
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	r6 = r1
	*(u64 *) (r10+-8) = r2
	call	__ltdf2
	r8 = 0
	if r8 s>= r0 goto .L1848
	r7 = 1
	r2 = *(u64 *) (r10+-8)
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1849
.L1847:
	r0 = r7
	r0 &= 1
	exit
.L1849:
	r7 = r8
	goto .L1847
.L1848:
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
	if r2 s< 0 goto .L1868
	r2 = 0
.L1853:
	if r4 == 0 goto .L1858
	r3 = r4
	r3 &= 1
	r3 = -r3
	r0 = r1
	r0 &= r3
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1854
	r3 = 31
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 <<= 31
	r4 s>>= 32
	if r4 == 0 goto .L1854
	r3 += -1
	r3 &= 0xff
.L1855:
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1854
	r3 += -1
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1854
	r3 += -1
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1854
	r3 += -1
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1854
	r3 += -1
	r3 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1854
	r3 += -1
	r3 &= 0xff
	if r3 != 0 goto .L1855
.L1854:
	if r2 == 0 goto .L1856
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1856:
	exit
.L1868:
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r2 = 1
	goto .L1853
.L1858:
	r0 = r4
	goto .L1854
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1874
	r6 = 0
.L1870:
	if r2 s< 0 goto .L1875
.L1871:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1869
	r0 = -r0
.L1869:
	exit
.L1874:
	r1 = -r1
	r6 = 1
	goto .L1870
.L1875:
	r2 = -r2
	r6 ^= 1
	goto .L1871
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L1881
	r6 = 0
.L1877:
	r2 = r0
	if r0 s< 0 goto .L1882
.L1878:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1876
	r0 = -r0
.L1876:
	exit
.L1881:
	r1 = -r1
	r6 = 1
	goto .L1877
.L1882:
	r0 = -r0
	r2 = r0
	goto .L1878
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r0 < r2 goto .L1908
	r4 = 0
	r1 = r2
	r1 <<= 48
	if r1 s<= r4 goto .L1908
	r9 = r2
	r9 += r2
	r9 &= 0xffff
	if r9 > r0 goto .L1910
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1910
	r1 = r2
	r1 <<= 2
	r1 &= 0xffff
	if r1 > r0 goto .L1912
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L1912
	r1 = r2
	r1 <<= 3
	r1 &= 0xffff
	if r1 > r0 goto .L1914
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1914
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L1916
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L1916
	r9 = r2
	r9 <<= 5
	r9 &= 0xffff
	if r9 > r0 goto .L1918
	r5 = r9
	r5 <<= 48
	if r5 s<= r4 goto .L1918
	r1 = r2
	r1 <<= 6
	r1 &= 0xffff
	if r1 > r0 goto .L1920
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L1920
	r1 = r2
	r1 <<= 7
	r1 &= 0xffff
	if r1 > r0 goto .L1922
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1922
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L1924
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L1924
	r9 = r2
	r9 <<= 9
	r9 &= 0xffff
	if r9 > r0 goto .L1926
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1926
	r1 = r2
	r1 <<= 10
	r1 &= 0xffff
	if r1 > r0 goto .L1928
	r9 = r1
	r9 <<= 48
	if r9 s<= r4 goto .L1928
	r1 = r2
	r1 <<= 11
	r1 &= 0xffff
	if r1 > r0 goto .L1930
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1930
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L1932
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L1932
	r9 = r2
	r9 <<= 13
	r9 &= 0xffff
	if r9 > r0 goto .L1934
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1934
	r1 = r2
	r1 <<= 14
	r1 &= 0xffff
	if r1 > r0 goto .L1936
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L1936
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L1955
	if r2 != r4 goto .L1955
	r2 = 0
	r4 = r2
.L1885:
	if r4 == 0 goto .L1887
	if r2 >= r0 goto .L1939
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L1890:
	r5 = r4
	r5 >>= 1
	r5 &= 0xffff
	r9 = r2
	r9 >>= 1
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1892
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1892:
	r5 = r4
	r5 >>= 2
	r5 &= 0xffff
	r9 = r2
	r9 >>= 2
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1893
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1893:
	r5 = r4
	r5 >>= 3
	r5 &= 0xffff
	r9 = r2
	r9 >>= 3
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1894
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1894:
	r5 = r4
	r5 >>= 4
	r5 &= 0xffff
	r9 = r2
	r9 >>= 4
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1895
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1895:
	r5 = r4
	r5 >>= 5
	r5 &= 0xffff
	r9 = r2
	r9 >>= 5
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1896
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1896:
	r5 = r4
	r5 >>= 6
	r5 &= 0xffff
	r9 = r2
	r9 >>= 6
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1897
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1897:
	r5 = r4
	r5 >>= 7
	r5 &= 0xffff
	r9 = r2
	r9 >>= 7
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1898
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1898:
	r5 = r4
	r5 >>= 8
	r5 &= 0xffff
	r9 = r2
	r9 >>= 8
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1899
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1899:
	r5 = r4
	r5 >>= 9
	r5 &= 0xffff
	r9 = r2
	r9 >>= 9
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1900
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1900:
	r5 = r4
	r5 >>= 10
	r5 &= 0xffff
	r9 = r2
	r9 >>= 10
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1901
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1901:
	r5 = r4
	r5 >>= 11
	r5 &= 0xffff
	r9 = r2
	r9 >>= 11
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1902
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1902:
	r5 = r4
	r5 >>= 12
	r5 &= 0xffff
	r9 = r2
	r9 >>= 12
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1903
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1903:
	r5 = r4
	r5 >>= 13
	r5 &= 0xffff
	r9 = r2
	r9 >>= 13
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1904
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1904:
	r5 = r4
	r5 >>= 14
	r5 &= 0xffff
	r9 = r2
	r9 >>= 14
	r9 &= 0xffff
	if r5 == 0 goto .L1954
	if r9 >= r0 goto .L1905
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1905:
	r2 >>= 15
	r2 &= 0xffff
	r4 >>= 15
	r4 &= 0xffff
	if r4 == 0 goto .L1954
	if r2 >= r0 goto .L1954
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
.L1954:
	r4 = r1
.L1887:
	if r3 != 0 goto .L1907
	r0 = r4
.L1907:
	exit
.L1955:
	r4 = 32768
	goto .L1885
.L1908:
	r4 = 1
	goto .L1885
.L1910:
	r2 = r9
	r4 = 2
	goto .L1885
.L1912:
	r2 = r1
	r4 = 4
	goto .L1885
.L1914:
	r2 = r1
	r4 = 8
	goto .L1885
.L1916:
	r2 = r9
	r4 = 16
	goto .L1885
.L1918:
	r2 = r9
	r4 = 32
	goto .L1885
.L1920:
	r2 = r1
	r4 = 64
	goto .L1885
.L1922:
	r2 = r1
	r4 = 128
	goto .L1885
.L1924:
	r2 = r9
	r4 = 256
	goto .L1885
.L1926:
	r2 = r9
	r4 = 512
	goto .L1885
.L1928:
	r2 = r1
	r4 = 1024
	goto .L1885
.L1930:
	r2 = r1
	r4 = 2048
	goto .L1885
.L1932:
	r2 = r9
	r4 = 4096
	goto .L1885
.L1934:
	r2 = r9
	r4 = 8192
	goto .L1885
.L1936:
	r2 = r1
	r4 = 16384
	goto .L1885
.L1939:
	r1 = 0
	goto .L1890
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L1958
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L1957:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1958
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1958
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1958
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1958
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1958
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1958
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1958
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1958
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1958
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L1957
	r4 = r0
.L1958:
	r0 = 0
	if r4 != r0 goto .L1959
	r0 = r4
.L1960:
	if r3 != 0 goto .L1985
.L1956:
	exit
.L1962:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1960
.L1959:
	if r2 >= r1 goto .L1962
	r1 -= r2
	r0 |= r4
	goto .L1962
.L1985:
	r0 = r1
	goto .L1956
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1987
	r2 += -32
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = 0
.L1988:
	r3 <<= 32
	r0 |= r3
	exit
.L1987:
	if r2 == 0 goto .L1990
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
	goto .L1988
.L1990:
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
	if r0 == 0 goto .L1992
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L1992:
	if r3 == 0 goto .L1995
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
.L1995:
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
	if r0 == 0 goto .L1997
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
.L1998:
	r0 <<= 32
	r0 |= r9
	exit
.L1997:
	if r2 == 0 goto .L2000
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
	goto .L1998
.L2000:
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
	if r0 == 0 goto .L2002
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L2002:
	if r3 == 0 goto .L2005
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
.L2005:
	r0 = r1
	r1 = r2
	exit
	.size	__ashrti3, .-__ashrti3
	.align	3
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	r0 = r1
	r0 >>= 56
	r2 = r1
	r2 <<= 56
	r0 |= r2
	r3 = r1
	r3 >>= 40
	r3 &= 65280
	r0 |= r3
	r4 = r1
	r4 >>= 24
	r4 &= 16711680
	r0 |= r4
	r5 = r1
	r5 >>= 8
	r9 = 4278190080 ll
	r5 &= r9
	r0 |= r5
	r2 = r1
	r2 <<= 8
	r3 = 1095216660480 ll
	r2 &= r3
	r0 |= r2
	r4 = r1
	r4 <<= 24
	r5 = 280375465082880 ll
	r4 &= r5
	r0 |= r4
	r1 <<= 40
	r9 = 71776119061217280 ll
	r1 &= r9
	r0 |= r1
	exit
	.size	__bswapdi2, .-__bswapdi2
	.align	3
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	r1 = r1;r1 &= 0xffffffff
	r0 = r1
	r0 >>= 24
	r2 = r1
	r2 <<= 24
	r0 |= r2
	r3 = r1
	r3 >>= 8
	r3 &= 65280
	r0 |= r3
	r1 <<= 8
	r1 &= 16711680
	r0 |= r1
	exit
	.size	__bswapsi2, .-__bswapsi2
	.align	3
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 65534 goto .L2009
	r0 = 0
.L2009:
	r0 <<= 36
	r0 s>>= 32
	r2 = 16
	r2 -= r0
	r3 = r2;r3 &= 0xffffffff
	r1 >>= r3
	r4 = r1;r4 &= 0xffffffff
	r1 &= 65280
	r5 = r1
	r5 += -1
	r5 >>= 63
	r5 <<= 3
	r9 = 8
	r9 -= r5
	r1 = r9;r1 &= 0xffffffff
	r4 >>= r1
	r9 = r4;r9 &= 0xffffffff
	r0 += r5
	r2 = r4
	r2 &= 240
	r2 += -1
	r2 >>= 63
	r2 <<= 2
	r3 = 4
	r3 -= r2
	r4 = r3;r4 &= 0xffffffff
	r9 >>= r4
	r1 = r9;r1 &= 0xffffffff
	r0 += r2
	r9 &= 12
	r9 += -1
	r9 >>= 63
	r9 += r9
	r5 = 2
	r2 = r5
	r2 -= r9
	r3 = r2;r3 &= 0xffffffff
	r4 = r1
	r4 >>= r3
	r1 = r4;r1 &= 0xffffffff
	r2 = r1
	r2 >>= 1
	r2 &= 1
	r3 = r2
	r3 ^= 1
	if r2 != 0 goto .L2010
	r5 -= r1
	r4 = r5
.L2011:
	r0 += r9
	r0 += r4
	exit
.L2010:
	r4 = r3
	goto .L2011
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r3 = r1
	r6 = 1
	if r2 == 0 goto .L2013
	r6 = 0
.L2013:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	r0 = 1
	if r2 == 0 goto .L2016
	r0 = 0
.L2016:
	r0 &= 0xff
	if r0 == 0 goto .L2015
	r0 = r3
.L2015:
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
	if r0 s>= r3 goto .L2021
	if r3 s> r0 goto .L2022
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2021
	if r1 > r2 goto .L2022
	r0 = 1
	exit
.L2021:
	r0 = 0
	exit
.L2022:
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
	if r4 s>= r2 goto .L2028
	if r2 s> r4 goto .L2029
	if r3 >= r1 goto .L2028
	if r1 > r3 goto .L2029
	r0 = 1
	exit
.L2028:
	r0 = 0
	exit
.L2029:
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
	r1 += r0
	r0 <<= 1
	r9 >>= r0
	r9 &= 3
	r0 = r9
	r0 ^= -1
	r0 &= 1
	r9 >>= 1
	r4 = 2
	r4 -= r9
	r0 = -r0
	r0 &= r4
	r3 += r1
	r0 += r3
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	r3 = r1
	r6 = 1
	if r1 == 0 goto .L2032
	r6 = 0
.L2032:
	r6 &= 0xff
	r0 = 1
	if r1 == 0 goto .L2035
	r0 = 0
.L2035:
	r0 &= 0xff
	if r0 == 0 goto .L2033
	r1 = r2
.L2034:
	r2 = r6
	r2 += -1
	r2 &= r3
	r1 |= r2
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 <<= 6
	r0 += r6
	exit
.L2033:
	r1 = r0
	goto .L2034
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2037
	if r2 == 0 goto .L2039
	r1 = r2
	call	__ctzdi2
	r0 <<= 32
	r2 = 279172874240 ll
	r0 += r2
	r0 s>>= 32
	exit
.L2037:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2039:
	r0 = r2
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
	if r0 == 0 goto .L2041
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
.L2042:
	r0 <<= 32
	r0 |= r3
	exit
.L2041:
	if r2 == 0 goto .L2044
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
	goto .L2042
.L2044:
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
	if r0 == 0 goto .L2046
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2046:
	if r3 == 0 goto .L2049
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
.L2049:
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
	r6 = r1
	r8 = r2
	r2 = r3
	r7 = r4
	*(u64 *) (r10+-24) = r3
	call	__mulddi3
	r2 = *(u64 *) (r10+-24)
	r2 *= r8
	r6 *= r7
	r2 += r6
	r2 += r1
	r1 = r2
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
	r4 = 0
	r0 = r1
	r0 = -r0
	r3 = 1
	if r0 > r4 goto .L2056
	r3 = r4
.L2056:
	r2 = -r2
	r1 = r2
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
	if r9 > r0 goto .L2063
	r3 = 0
.L2063:
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
	if r0 >= r4 goto .L2064
	r9 = 0
.L2064:
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
	if r1 >= r2 goto .L2065
	r0 = 0
.L2065:
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
	goto .L2069
.L2067:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2068
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2069:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2067
	r2 = r6
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L2067
.L2068:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2071
.L2066:
	r0 = r7
	exit
.L2071:
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
	goto .L2066
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
	goto .L2075
.L2073:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2074
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2075:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2073
	r2 = r6
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L2073
.L2074:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2077
.L2072:
	r0 = r7
	exit
.L2077:
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
	goto .L2072
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2082
	if r3 > r0 goto .L2083
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2082
	if r1 > r2 goto .L2083
	r0 = 1
	exit
.L2082:
	r0 = 0
	exit
.L2083:
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
	if r4 >= r2 goto .L2089
	if r2 > r4 goto .L2090
	if r3 >= r1 goto .L2089
	if r1 > r3 goto .L2090
	r0 = 1
	exit
.L2089:
	r0 = 0
	exit
.L2090:
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
