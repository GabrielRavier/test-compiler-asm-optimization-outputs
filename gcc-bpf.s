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
	r0 = 0
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L163
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
	if r4 == r2 goto .L165
	r1 += 1
	r3 += -1
.L162:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L165
	r1 += 1
	r3 += -1
.L161:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L165
	r1 += 1
	r3 += -1
.L160:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L165
	r1 += 1
	r3 += -1
.L159:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L165
	r1 += 1
	r3 += -1
.L158:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L165
	r1 += 1
	r3 += -1
.L157:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L165
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L120
.L116:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L165
	r9 = r1
	r9 += 1
	r1 = r9
	r3 += -1
	r4 = r3
	r5 = *(u8 *) (r9+0)
	if r5 == r2 goto .L165
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+1)
	if r0 == r2 goto .L165
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+2)
	if r5 == r2 goto .L165
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+3)
	if r0 == r2 goto .L165
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+4)
	if r5 == r2 goto .L165
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+5)
	if r0 == r2 goto .L165
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+6)
	if r5 == r2 goto .L165
	r9 += 7
	r1 = r9
	r3 += -1
	if r4 != 7 goto .L116
.L120:
	r0 = r1
	goto .L117
.L163:
	r0 = r1
	goto .L117
.L165:
	r0 = r1
.L117:
	if r3 == 0 goto .L166
.L115:
	exit
.L166:
	r0 = 0
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
	r0 = 0
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
	if r0 == 0 goto .L300
.L295:
	r4 &= 0xff
	if r4 == r2 goto .L301
	r1 += 1
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 != 0 goto .L295
	r0 = r1
	exit
.L300:
	r0 = r1
	exit
.L301:
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
.L304:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r2 goto .L303
	r0 += 1
	if r3 != 0 goto .L304
	r0 = 0
.L303:
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	if r0 != r3 goto .L308
.L307:
	if r0 == 0 goto .L308
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	if r0 == r3 goto .L307
.L308:
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
	if r0 == 0 goto .L314
	r2 = r1
.L313:
	r4 = r2
	r4 += 1
	r2 = r4
	r3 = *(u8 *) (r4+0)
	if r3 == 0 goto .L312
	r2 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L312
	r2 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L312
	r2 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L312
	r2 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L312
	r2 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L312
	r2 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L312
	r2 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L313
	goto .L312
.L314:
	r2 = r1
.L312:
	r0 = r2
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L335
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L332
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L333
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L332
	if r4 != r0 goto .L332
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L332
	if r3 == 1 goto .L333
	if r3 == 2 goto .L371
	if r3 == 3 goto .L372
	if r3 == 4 goto .L373
	if r3 == 5 goto .L374
	if r3 == 6 goto .L375
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r0 goto .L332
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L332
.L375:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L332
	if r9 != r0 goto .L332
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L332
.L374:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L332
	if r4 != r0 goto .L332
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L332
.L373:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r0 goto .L332
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L332
.L372:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L332
	if r9 != r0 goto .L332
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L332
.L371:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L332
	if r4 != r0 goto .L332
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L332
.L333:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r1 == r5 goto .L332
	if r3 != r0 goto .L332
	r9 = r1
	r9 += 1
	r2 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L332
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L332
	if r1 != r0 goto .L332
	r2 += 1
	r0 = *(u8 *) (r9+1)
	if r0 == 0 goto .L332
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r0 goto .L332
	r2 += 1
	r0 = *(u8 *) (r9+2)
	if r0 == 0 goto .L332
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L332
	if r4 != r0 goto .L332
	r2 += 1
	r0 = *(u8 *) (r9+3)
	if r0 == 0 goto .L332
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L332
	if r1 != r0 goto .L332
	r2 += 1
	r0 = *(u8 *) (r9+4)
	if r0 == 0 goto .L332
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r0 goto .L332
	r2 += 1
	r0 = *(u8 *) (r9+5)
	if r0 == 0 goto .L332
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L332
	if r4 != r0 goto .L332
	r2 += 1
	r0 = *(u8 *) (r9+6)
	if r0 == 0 goto .L332
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L332
	if r1 != r0 goto .L332
	r1 = r9
	r1 += 7
	r2 += 1
	r0 = *(u8 *) (r9+7)
	if r0 != 0 goto .L333
.L332:
	r2 = *(u8 *) (r2+0)
	r0 -= r2
	exit
.L335:
	r0 = 0
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L378
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
	if r3 == 0 goto .L380
	if r3 == 1 goto .L403
	if r3 == 2 goto .L404
	if r3 == 3 goto .L405
	if r3 == 4 goto .L406
	if r3 == 5 goto .L407
	if r3 == 6 goto .L408
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L408:
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
	if r0 == r5 goto .L410
.L380:
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
	if r0 != r5 goto .L380
.L378:
	exit
.L410:
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
	if r2 <= 24 goto .L412
	r1 = 0
.L412:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L414
	r0 = 0
.L414:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L417
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L417:
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
	if r1 <= 30 goto .L420
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L420:
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
	if r1 <= 8 goto .L422
	r0 = 0
.L422:
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
	if r1 <= 92 goto .L424
	r0 = 0
.L424:
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
	if r1 <= 24 goto .L426
	r0 = 0
.L426:
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
	if r1 <= 93 goto .L428
	r0 = 0
.L428:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L432
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 3 goto .L431
	r0 = 0
.L431:
	r0 &= 1
	exit
.L432:
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
	if r1 <= 24 goto .L434
	r0 = 0
.L434:
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
	if r1 <= 30 goto .L438
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L439
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L440
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L437
	r9 = 0
.L437:
	r0 = r9
	r0 &= 1
	exit
.L438:
	r0 = 1
	exit
.L439:
	r0 = 1
	exit
.L440:
	r0 = 1
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
	if r1 <= 8 goto .L442
	r0 = 0
.L442:
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
	if r1 <= 254 goto .L451
	if r1 <= 8230 goto .L447
	r2 = r1
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L448
	r4 = r1
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L449
	r1 += -65532
	r1 = r1;r1 &= 0xffffffff
	if r1 > 1048579 goto .L450
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L451:
	r0 += 1
	r9 = 1
	r0 &= 127
	if r0 s> 32 goto .L445
	r9 = 0
.L445:
	r0 = r9
	r0 &= 1
	exit
.L447:
	r0 = 1
	exit
.L448:
	r0 = 1
	exit
.L449:
	r0 = 1
	exit
.L450:
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
	if r2 <= 8 goto .L455
	r1 |= 32
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 4 goto .L454
	r0 = 0
.L454:
	r0 &= 1
	exit
.L455:
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
	if r0 != 0 goto .L460
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L461
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L464
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L460:
	r0 = r6
	exit
.L461:
	r0 = r7
	exit
.L464:
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
	if r0 != 0 goto .L468
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L469
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L472
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L468:
	r0 = r6
	exit
.L469:
	r0 = r7
	exit
.L472:
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
	if r0 != 0 goto .L479
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L480
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L475
	if r0 != 0 goto .L481
	r0 = r7
	exit
.L475:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L478
	r8 = 0
.L478:
	r8 &= 0xff
	if r8 != 0 goto .L477
	r6 = r7
.L477:
	r0 = r6
	exit
.L479:
	r0 = r6
	exit
.L480:
	r0 = r7
	exit
.L481:
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
	if r0 != 0 goto .L488
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L489
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L484
	if r2 != 0 goto .L490
	r0 = r7
	exit
.L484:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s<= 0 goto .L487
	r8 = 0
.L487:
	r8 &= 0xff
	if r8 != 0 goto .L486
	r6 = r7
.L486:
	r0 = r6
	exit
.L488:
	r0 = r6
	exit
.L489:
	r0 = r7
	exit
.L490:
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
	if r0 != 0 goto .L497
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L498
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L493
	if r0 != 0 goto .L499
	r0 = r7
	exit
.L493:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L496
	r8 = 0
.L496:
	r8 &= 0xff
	if r8 != 0 goto .L495
	r6 = r7
.L495:
	r0 = r6
	exit
.L497:
	r0 = r6
	exit
.L498:
	r0 = r7
	exit
.L499:
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
	if r0 != 0 goto .L506
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L507
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L502
	if r0 != 0 goto .L508
	r0 = r7
	exit
.L502:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L505
	r8 = 0
.L505:
	r8 &= 0xff
	if r8 != 0 goto .L504
	r6 = r7
.L504:
	r0 = r6
	exit
.L506:
	r0 = r7
	exit
.L507:
	r0 = r6
	exit
.L508:
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
	if r0 != 0 goto .L515
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L516
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L511
	if r2 != 0 goto .L517
	r0 = r7
	exit
.L511:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L514
	r8 = 0
.L514:
	r8 &= 0xff
	if r8 != 0 goto .L513
	r6 = r7
.L513:
	r0 = r6
	exit
.L515:
	r0 = r7
	exit
.L516:
	r0 = r6
	exit
.L517:
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
	if r0 != 0 goto .L524
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L525
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L520
	if r0 != 0 goto .L526
	r0 = r7
	exit
.L520:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L523
	r8 = 0
.L523:
	r8 &= 0xff
	if r8 != 0 goto .L522
	r6 = r7
.L522:
	r0 = r6
	exit
.L524:
	r0 = r7
	exit
.L525:
	r0 = r6
	exit
.L526:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	if r1 == 0 goto .L530
	r0 = s.0 ll
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
	if r1 == 0 goto .L528
	r4 = r1
	r4 &= 63
	r0 = r2
	r0 += r4
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r3
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L528
	r5 = r1
	r5 &= 63
	r9 = r2
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L528
	r3 = r1
	r3 &= 63
	r5 = r2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L528
	r3 = r1
	r3 &= 63
	r4 = r2
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L528
	r2 += r1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L528:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
.L530:
	r0 = s.0 ll
	goto .L528
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
	if r2 == 0 goto .L551
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L548
	*(u64 *) (r2+8) = r1
.L548:
	exit
.L551:
	r3 = 0
	*(u64 *) (r1+8) = r3
	*(u64 *) (r1+0) = r3
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L553
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L553:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L552
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L552:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L557
.L556:
	exit
.L557:
	r1 = -r1
	r0 = r1
	goto .L556
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r8 = r1
.L559:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r1 = r0
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	if r1 == 0 goto .L583
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
	if r2 == 0 goto .L583
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
	if r3 == 0 goto .L583
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
	if r4 == 0 goto .L583
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
	if r5 == 0 goto .L583
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
	if r9 == 0 goto .L583
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
	if r1 == 0 goto .L583
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
	if r2 == 0 goto .L583
	r7 += 7
	r8 = r7
	goto .L559
.L583:
	if r6 == 43 goto .L566
	if r6 != 45 goto .L567
	r3 = 1
.L561:
	r8 += 1
.L562:
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	r4 = r2
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r9 = 9
	if r5 > 8 goto .L564
.L563:
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
	if r9 <= r5 goto .L564
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
	if r9 <= r5 goto .L564
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
	if r9 <= r5 goto .L564
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
	if r9 > r5 goto .L563
.L564:
	if r3 != 0 goto .L565
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L565:
	exit
.L566:
	r3 = r0
	goto .L561
.L567:
	r3 = r0
	goto .L562
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r8 = r1
.L585:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L608
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
	if r0 == 0 goto .L608
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L608
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L608
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L608
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L608
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L608
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L608
	r7 += 7
	r8 = r7
	goto .L585
.L608:
	if r6 == 43 goto .L587
	if r6 != 45 goto .L588
	r2 = 1
.L587:
	r8 += 1
.L588:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r3 = 0
	r1 = 9
	if r5 > 8 goto .L590
.L589:
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
	if r1 <= r5 goto .L590
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
	if r1 <= r5 goto .L590
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
	if r1 <= r5 goto .L590
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
	if r1 > r5 goto .L589
.L590:
	if r2 != 0 goto .L584
	r3 = -r3
.L584:
	r0 = r3
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r8 = r1
.L610:
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L633
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
	if r0 == 0 goto .L633
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L633
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L633
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L633
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L633
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L633
	r8 += 1
	r6 = *(u8 *) (r8+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L633
	r7 += 7
	r8 = r7
	goto .L610
.L633:
	if r6 == 43 goto .L612
	if r6 != 45 goto .L613
	r2 = 1
.L612:
	r8 += 1
.L613:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r3 = 0
	r1 = 9
	if r5 > 8 goto .L615
.L614:
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
	if r1 <= r5 goto .L615
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
	if r1 <= r5 goto .L615
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
	if r1 <= r5 goto .L615
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
	if r1 > r5 goto .L614
.L615:
	if r2 != 0 goto .L609
	r3 = -r3
.L609:
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
	if r1 s< 0 goto .L637
.L636:
	exit
.L637:
	r0 = -r0
	goto .L636
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
	if r1 s< 0 goto .L641
.L640:
	exit
.L641:
	r0 = -r0
	goto .L640
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
	if r1 s< 0 goto .L645
.L644:
	exit
.L645:
	r0 = -r0
	goto .L644
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
	if r0 == 0 goto .L654
.L648:
	if r2 == r4 goto .L655
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = r3
	r4 s>>= 32
	if r3 != 0 goto .L648
	r0 = r1
	goto .L649
.L654:
	r0 = r1
	goto .L649
.L655:
	r0 = r1
.L649:
	if r4 == 0 goto .L656
.L647:
	exit
.L656:
	r0 = 0
	goto .L647
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 != r4 goto .L659
.L658:
	if r3 == 0 goto .L659
	if r4 == 0 goto .L659
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 == r4 goto .L658
.L659:
	if r4 s>= r3 goto .L663
	r0 = 1
	if r3 s> r4 goto .L662
	r0 = 0
.L662:
	r0 &= 1
	exit
.L663:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L666:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L682
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L682
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L682
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L682
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L682
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L682
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L682
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L666
.L682:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L686
	r0 = r1
.L685:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L684
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L684
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L684
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L684
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L684
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L684
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L684
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L685
	goto .L684
.L686:
	r0 = r1
.L684:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L704
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L703
	if r0 == 1 goto .L726
	if r0 == 2 goto .L727
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 = r9
	r5 s>>= 32
	if r4 != r9 goto .L704
	if r5 == 0 goto .L704
	r3 += -1
	r1 += 4
	r2 += 4
.L727:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 = r0
	r4 s>>= 32
	if r9 != r0 goto .L704
	if r4 == 0 goto .L704
	r3 += -1
	r1 += 4
	r2 += 4
.L726:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r0
	r5 s>>= 32
	if r9 != r0 goto .L704
	if r5 == 0 goto .L704
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L704
.L703:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r9 = r0
	r9 s>>= 32
	if r4 != r0 goto .L704
	if r9 == 0 goto .L704
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
	r7 = r9
	r7 s>>= 32
	if r6 != r9 goto .L704
	if r7 == 0 goto .L704
	r3 += -1
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	r7 = r4
	r7 s>>= 32
	if r6 != r4 goto .L704
	if r7 == 0 goto .L704
	r3 += -1
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	r7 = r9
	r7 s>>= 32
	if r6 != r9 goto .L704
	if r7 == 0 goto .L704
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L703
.L704:
	if r3 == 0 goto .L708
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L709
	r0 = 1
	if r3 s> r1 goto .L707
	r0 = 0
.L707:
	r0 &= 1
	exit
.L708:
	r0 = 0
	exit
.L709:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L778
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L731
	if r0 == 1 goto .L772
	if r0 == 2 goto .L773
	if r0 == 3 goto .L774
	if r0 == 4 goto .L775
	if r0 == 5 goto .L776
	if r0 == 6 goto .L777
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L780
	r3 += -1
	r1 += 4
.L777:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L780
	r3 += -1
	r1 += 4
.L776:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L780
	r3 += -1
	r1 += 4
.L775:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L780
	r3 += -1
	r1 += 4
.L774:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L780
	r3 += -1
	r1 += 4
.L773:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L780
	r3 += -1
	r1 += 4
.L772:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L780
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L735
.L731:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L780
	r3 += -1
	r4 = r3
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L780
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L780
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L780
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L780
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L780
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L780
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L780
	r3 += -1
	r9 += 28
	r1 = r9
	if r4 != 7 goto .L731
.L735:
	r0 = r1
	goto .L732
.L778:
	r0 = r1
	goto .L732
.L780:
	r0 = r1
.L732:
	if r3 == 0 goto .L781
.L730:
	exit
.L781:
	r0 = 0
	goto .L730
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L784
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L783
	if r0 == 1 goto .L826
	if r0 == 2 goto .L827
	if r0 == 3 goto .L828
	if r0 == 4 goto .L829
	if r0 == 5 goto .L830
	if r0 == 6 goto .L831
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
.L831:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
.L830:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
.L829:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
.L828:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
.L827:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
.L826:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L784
.L783:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L784
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
	if r6 != r9 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L784
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L784
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	if r5 != 7 goto .L783
.L784:
	if r3 == 0 goto .L788
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L789
	r0 = 1
	if r3 s> r1 goto .L787
	r0 = 0
.L787:
	r0 &= 1
	exit
.L788:
	r0 = 0
	exit
.L789:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L834
	r4 = r1
	r0 = r2
	r9 = r3
	r9 <<= 2
	r5 = r1
	r5 -= r2
	if r9 >= r5 goto .L835
	r2 = r3
	r2 += -1
	if r3 == 0 goto .L834
	r3 &= 7
	if r3 == 0 goto .L836
	if r3 == 1 goto .L884
	if r3 == 2 goto .L885
	if r3 == 3 goto .L886
	if r3 == 4 goto .L887
	if r3 == 5 goto .L888
	if r3 == 6 goto .L889
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r1+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
.L889:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r2 += -1
	r4 += 4
	r0 += 4
.L888:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r2 += -1
	r4 += 4
	r0 += 4
.L887:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
.L886:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r2 += -1
	r4 += 4
	r0 += 4
.L885:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r2 += -1
	r4 += 4
	r0 += 4
.L884:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
	if r2 == -1 goto .L834
.L836:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r5 = r4
	r5 += 4
	r0 += 4
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r5+0) = r4
	r3 = *(u32 *) (r0+4)
	*(u32 *) (r5+4) = r3
	r9 = *(u32 *) (r0+8)
	*(u32 *) (r5+8) = r9
	r4 = *(u32 *) (r0+12)
	*(u32 *) (r5+12) = r4
	r3 = *(u32 *) (r0+16)
	*(u32 *) (r5+16) = r3
	r9 = *(u32 *) (r0+20)
	*(u32 *) (r5+20) = r9
	r4 = *(u32 *) (r0+24)
	*(u32 *) (r5+24) = r4
	r2 += -8
	r5 += 28
	r4 = r5
	r0 += 28
	if r2 != -1 goto .L836
	goto .L834
.L835:
	r5 = r3
	r5 += -1
	if r3 == 0 goto .L834
	r5 <<= 2
	r2 += r5
	r3 = r1
	r3 += r5
	r9 = r2
	r9 -= r0
	r9 >>= 2
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L837
	if r9 == 1 goto .L890
	if r9 == 2 goto .L891
	if r9 == 3 goto .L892
	if r9 == 4 goto .L893
	if r9 == 5 goto .L894
	if r9 == 6 goto .L895
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L895:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L894:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L893:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L892:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L891:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L890:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r5 = r2
	r2 += -4
	r3 += -4
	if r0 == r5 goto .L834
.L837:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r5 = *(u32 *) (r2+-4)
	*(u32 *) (r3+-4) = r5
	r9 = *(u32 *) (r2+-8)
	*(u32 *) (r3+-8) = r9
	r4 = *(u32 *) (r2+-12)
	*(u32 *) (r3+-12) = r4
	r5 = *(u32 *) (r2+-16)
	*(u32 *) (r3+-16) = r5
	r9 = *(u32 *) (r2+-20)
	*(u32 *) (r3+-20) = r9
	r4 = r2
	r4 += -24
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r3+-24) = r5
	r2 += -28
	r3 += -28
	if r0 != r4 goto .L837
.L834:
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
	if r3 == 0 goto .L899
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L900
	if r3 == 1 goto .L923
	if r3 == 2 goto .L924
	if r3 == 3 goto .L925
	if r3 == 4 goto .L926
	if r3 == 5 goto .L927
	if r3 == 6 goto .L928
	*(u32 *) (r1+0) = r2
	r4 += -1
	r0 += 4
.L928:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L927:
	*(u32 *) (r0+0) = r2
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
	if r4 == -1 goto .L899
.L900:
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
	if r4 != -1 goto .L900
.L899:
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L931
	r0 = r1
	r0 += r3
	r2 += r3
	if r3 == 0 goto .L930
	r4 = r1
	r4 ^= -1
	r3 = r0
	r3 += r4
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L933
	if r3 == 1 goto .L979
	if r3 == 2 goto .L980
	if r3 == 3 goto .L981
	if r3 == 4 goto .L982
	if r3 == 5 goto .L983
	if r3 == 6 goto .L984
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L984:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L983:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L982:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L981:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L980:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L979:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r1 == r0 goto .L993
.L933:
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
	if r1 != r0 goto .L933
	exit
.L931:
	if r1 == r2 goto .L930
	if r3 == 0 goto .L930
	r0 = r1
	r1 += r3
	r3 = r0
	r3 ^= -1
	r3 += r1
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L934
	if r3 == 1 goto .L985
	if r3 == 2 goto .L986
	if r3 == 3 goto .L987
	if r3 == 4 goto .L988
	if r3 == 5 goto .L989
	if r3 == 6 goto .L990
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L990:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L989:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
.L988:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	r0 += 1
	r2 += 1
.L987:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L986:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L985:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
	if r0 == r1 goto .L994
.L934:
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
	if r0 != r1 goto .L934
.L930:
	exit
.L993:
	exit
.L994:
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
.L1011:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L1027
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r3 = r1
	r3 >>= r0
	r3 &= 1
	if r3 != 0 goto .L1027
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r4 = r1
	r4 >>= r0
	r4 &= 1
	if r4 != 0 goto .L1027
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r5 = r1
	r5 >>= r0
	r5 &= 1
	if r5 != 0 goto .L1027
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r9 = r1
	r9 >>= r0
	r9 &= 1
	if r9 != 0 goto .L1027
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L1027
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r3 = r1
	r3 >>= r0
	r3 &= 1
	if r3 != 0 goto .L1027
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r4 = r1
	r4 >>= r0
	r4 &= 1
	if r4 != 0 goto .L1027
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 32 goto .L1011
	r0 = 0
	exit
.L1027:
	r0 += 1
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
	if r1 == 0 goto .L1032
	r0 = r2
	r0 &= 1
	if r0 != 0 goto .L1030
	r0 = 1
.L1031:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1048
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1030
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1030
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1030
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1030
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1030
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1030
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1031
	exit
.L1048:
	exit
.L1032:
	r0 = r2
.L1030:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L1052
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1053
.L1051:
	r0 = r7
	r0 &= 1
	exit
.L1053:
	r7 = 0
	goto .L1051
.L1052:
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
	if r0 s<= 0 goto .L1057
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1058
.L1056:
	r0 = r7
	r0 &= 1
	exit
.L1058:
	r7 = 0
	goto .L1056
.L1057:
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
	if r0 s<= 0 goto .L1062
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1063
.L1061:
	r0 = r7
	r0 &= 1
	exit
.L1063:
	r7 = 0
	goto .L1061
.L1062:
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
	if r0 != 0 goto .L1066
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1066
	if r6 s< 0 goto .L1073
	r7 = 0x40000000 ll
	goto .L1070
.L1073:
	r7 = 0x3f000000 ll
	goto .L1070
.L1069:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1066
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1070:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1069
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1069
.L1066:
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
	if r0 != 0 goto .L1075
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1075
	if r6 s< 0 goto .L1082
	r7 = 0x4000000000000000 ll
	goto .L1079
.L1082:
	r7 = 0x3fe0000000000000 ll
	goto .L1079
.L1078:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1075
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1079:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1078
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1078
.L1075:
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
	if r0 != 0 goto .L1084
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1084
	if r6 s< 0 goto .L1091
	r7 = 0x4000000000000000 ll
	goto .L1088
.L1091:
	r7 = 0x3fe0000000000000 ll
	goto .L1088
.L1087:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1084
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1088:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1087
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1087
.L1084:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1093
	r4 = r2
	r0 = r1
	r2 += r3
	r3 = r4
	r3 ^= -1
	r3 += r2
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1094
	if r3 == 1 goto .L1117
	if r3 == 2 goto .L1118
	if r3 == 3 goto .L1119
	if r3 == 4 goto .L1120
	if r3 == 5 goto .L1121
	if r3 == 6 goto .L1122
	r9 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r4+0)
	r9 ^= r5
	*(u8 *) (r1+0) = r9
	r4 += 1
	r0 += 1
.L1122:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1121:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1120:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1119:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1118:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1117:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
	if r4 == r2 goto .L1093
.L1094:
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
	if r4 != r2 goto .L1094
.L1093:
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
	if r8 == 0 goto .L1126
	r2 = r8
	r2 &= 7
	if r2 == 0 goto .L1125
	if r2 == 1 goto .L1165
	if r2 == 2 goto .L1166
	if r2 == 3 goto .L1167
	if r2 == 4 goto .L1168
	if r2 == 5 goto .L1169
	if r2 == 6 goto .L1170
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1126
	r6 += 1
	r0 += 1
	r8 += -1
.L1170:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1126
	r6 += 1
	r0 += 1
	r8 += -1
.L1169:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1126
	r6 += 1
	r0 += 1
	r8 += -1
.L1168:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1126
	r6 += 1
	r0 += 1
	r8 += -1
.L1167:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1126
	r6 += 1
	r0 += 1
	r8 += -1
.L1166:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1126
	r6 += 1
	r0 += 1
	r8 += -1
.L1165:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1126
	r6 += 1
	r0 += 1
	r8 += -1
	if r8 == 0 goto .L1126
.L1125:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1126
	r6 += 1
	r0 += 1
	r9 = r8
	r9 += -1
	r8 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1126
	r0 += 1
	r8 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1126
	r0 += 1
	r8 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1126
	r0 += 1
	r8 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1126
	r0 += 1
	r8 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1126
	r0 += 1
	r8 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1126
	r0 += 1
	r8 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1126
	r6 += 7
	r0 += 1
	r8 += -1
	if r9 != 7 goto .L1125
.L1126:
	if r8 != 0 goto .L1128
	*(u8 *) (r0+0) = 0
.L1128:
	r0 = r7
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1220
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1173
	if r0 == 1 goto .L1214
	if r0 == 2 goto .L1215
	if r0 == 3 goto .L1216
	if r0 == 4 goto .L1217
	if r0 == 5 goto .L1218
	if r0 == 6 goto .L1219
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1172
	r3 += 1
.L1219:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 != 0 goto .L1222
.L1172:
	r0 = r3
	exit
.L1220:
	r3 = r2
	goto .L1172
.L1222:
	r3 += 1
.L1218:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1172
	r3 += 1
.L1217:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1172
	r3 += 1
.L1216:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1172
	r3 += 1
.L1215:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1172
	r3 += 1
.L1214:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1172
	r3 += 1
	if r2 == r3 goto .L1177
.L1173:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1172
	r5 = r3
	r5 += 1
	r3 = r5
	r4 = r1
	r4 += r5
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1172
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1172
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1172
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1172
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1172
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1172
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1172
	r5 += 7
	r3 = r5
	if r2 != r5 goto .L1173
.L1177:
	r3 = r2
	goto .L1172
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1230
.L1224:
	r3 = r2
.L1227:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 == 0 goto .L1231
	r3 += 1
	if r4 != r5 goto .L1227
.L1225:
	r0 = r1
	exit
.L1230:
	r1 = 0
	goto .L1225
.L1231:
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1224
	r1 = 0
	goto .L1225
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1234
.L1233:
	r1 += 1
	if r0 == 0 goto .L1237
.L1234:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1233
	r3 = r1
	goto .L1233
.L1237:
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
	if r7 == 0 goto .L1242
	r8 = *(u8 *) (r6+0)
	r8 <<= 56
	r8 s>>= 56
	*(u64 *) (r10+-8) = r8
.L1240:
	r2 = *(u32 *) (r10+-8)
	r1 = r0
	call	strchr
	r8 = r0
	if r0 == 0 goto .L1238
	r3 = r7
	r2 = r6
	r1 = r8
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1238
	r0 = r8
	r0 += 1
	goto .L1240
.L1242:
	r8 = r0
.L1238:
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
	if r0 s<= 0 goto .L1252
.L1244:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1247
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1246
.L1247:
	r0 = r6
	exit
.L1252:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1244
.L1246:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1247
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r8 = r1
	r7 = r3
	r6 = r4
	if r4 == 0 goto .L1257
	if r4 >= r2 goto .L1258
	r2 -= r4
	r1 += r2
	*(u64 *) (r10+-24) = r1
	if r8 > r1 goto .L1259
	r0 = *(u8 *) (r3+0)
	r0 <<= 56
	r6 += -1
	*(u64 *) (r10+-8) = r6
	r7 += 1
	*(u64 *) (r10+-16) = r7
	r1 -= r8
	r9 = r1
	r9 &= 7
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r6 = r0
	r6 s>>= 56
	if r2 == r0 goto .L1309
.L1262:
	r8 += 1
	r3 = *(u64 *) (r10+-24)
	if r3 < r8 goto .L1308
	if r9 == 0 goto .L1256
	if r9 == 1 goto .L1300
	if r9 == 2 goto .L1301
	if r9 == 3 goto .L1302
	if r9 == 4 goto .L1303
	if r9 == 5 goto .L1304
	if r9 == 6 goto .L1305
	r4 = *(u8 *) (r8+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r6 goto .L1310
.L1264:
	r8 += 1
.L1305:
	r5 = *(u8 *) (r8+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r6 goto .L1311
.L1267:
	r8 += 1
.L1304:
	r1 = *(u8 *) (r8+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r6 goto .L1312
.L1270:
	r8 += 1
.L1303:
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r6 goto .L1313
.L1273:
	r8 += 1
.L1302:
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r6 goto .L1314
.L1276:
	r8 += 1
.L1301:
	r9 = *(u8 *) (r8+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r6 goto .L1315
.L1279:
	r8 += 1
.L1300:
	r3 = *(u8 *) (r8+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r6 goto .L1316
.L1282:
	r8 += 1
	r4 = *(u64 *) (r10+-24)
	if r4 >= r8 goto .L1256
.L1308:
	r0 = 0
	exit
.L1317:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1255
.L1260:
	r0 = r8
	exit
.L1257:
	r0 = r1
	exit
.L1258:
	r0 = 0
	exit
.L1259:
	r0 = 0
	exit
.L1309:
	*(u64 *) (r10+-32) = r9
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	r9 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1262
	goto .L1260
.L1310:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1264
	goto .L1260
.L1311:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1267
	goto .L1260
.L1312:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1270
	goto .L1260
.L1313:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1273
	goto .L1260
.L1314:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1276
	goto .L1260
.L1315:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1279
	goto .L1260
.L1316:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1282
	goto .L1260
.L1318:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r7
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1285
	goto .L1260
.L1319:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1287
	goto .L1260
.L1320:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1289
	goto .L1260
.L1321:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1291
	goto .L1260
.L1322:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1293
	goto .L1260
.L1323:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1295
	goto .L1260
.L1297:
	r7 += 7
	r8 = r7
	r1 = *(u64 *) (r10+-24)
	if r1 < r7 goto .L1308
.L1256:
	r5 = *(u8 *) (r8+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r6 goto .L1317
.L1255:
	r7 = r8
	r7 += 1
	r8 = r7
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r6 goto .L1318
.L1285:
	r8 = r7
	r8 += 1
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r6 goto .L1319
.L1287:
	r8 = r7
	r8 += 2
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r6 goto .L1320
.L1289:
	r8 = r7
	r8 += 3
	r9 = *(u8 *) (r8+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r6 goto .L1321
.L1291:
	r8 = r7
	r8 += 4
	r3 = *(u8 *) (r8+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r6 goto .L1322
.L1293:
	r8 = r7
	r8 += 5
	r4 = *(u8 *) (r8+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r6 goto .L1323
.L1295:
	r8 = r7
	r8 += 6
	r5 = *(u8 *) (r8+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 != r6 goto .L1297
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1297
	goto .L1260
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r7 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1360
	*(u64 *) (r10+-8) = 0
.L1325:
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1357
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1329:
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
	if r0 s< 0 goto .L1330
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
	if r0 s< 0 goto .L1330
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
	if r0 s< 0 goto .L1330
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
	if r0 s>= 0 goto .L1329
	goto .L1330
.L1360:
	r0 = -9223372036854775808 ll
	r0 ^= r7
	r7 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1325
.L1357:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s> 0 goto .L1358
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	if r0 == 0 goto .L1359
	r8 = 0
	r6 = r8
.L1333:
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
	if r6 s< r0 goto .L1330
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
	if r6 s< r0 goto .L1330
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
	if r6 s< r0 goto .L1330
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
	if r6 s>= r0 goto .L1333
	goto .L1330
.L1358:
	r8 = 0
.L1330:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r8
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1334
	r3 = -9223372036854775808 ll
	r3 ^= r7
	r7 = r3
.L1334:
	r0 = r7
	exit
.L1359:
	r8 = 0
	goto .L1330
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	if r1 == 0 goto .L1364
	r0 = 0
.L1363:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1380
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1361
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1361
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1361
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1361
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1361
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1361
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1363
	exit
.L1380:
	exit
.L1364:
	r0 = 0
.L1361:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1383
	r9 = 32
	r4 = 1
.L1382:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1383
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1383
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1383
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1383
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1383
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1383
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1383
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1383
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1383
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1383
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1383
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1383
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1383
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1383
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1383
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1383
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1382
	r4 = r9
.L1383:
	r1 = 0
	if r4 != r1 goto .L1384
	r1 = r4
.L1385:
	if r3 != 0 goto .L1388
	r0 = r1
.L1388:
	exit
.L1387:
	r4 >>= 1
	r4 = r4;r4 &= 0xffffffff
	r2 >>= 1
	if r4 == 0 goto .L1385
.L1384:
	if r2 >= r0 goto .L1387
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5;r1 &= 0xffffffff
	goto .L1387
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
	if r2 == r1 goto .L1411
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
.L1411:
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
	if r0 == r2 goto .L1414
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1414:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1418
	r0 = 0
.L1417:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1434
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1416
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1416
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1416
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1416
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1416
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1416
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1417
	exit
.L1434:
	exit
.L1418:
	r0 = r1
.L1416:
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
	if r1 >= r2 goto .L1436
.L1439:
	if r6 == 0 goto .L1438
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
	if r5 == 0 goto .L1442
	if r5 == 1 goto .L1519
	if r5 == 2 goto .L1520
	if r5 == 3 goto .L1521
	if r5 == 4 goto .L1522
	if r5 == 5 goto .L1523
	if r5 == 6 goto .L1524
	r5 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r5
	r0 += 8
	r4 += 8
.L1524:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1523:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1522:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1521:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1520:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1519:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1438
.L1442:
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
	if r0 != r6 goto .L1442
.L1438:
	if r9 > r3 goto .L1435
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
	if r3 == 0 goto .L1443
	if r3 == 1 goto .L1525
	if r3 == 2 goto .L1526
	if r3 == 3 goto .L1527
	if r3 == 4 goto .L1528
	if r3 == 5 goto .L1529
	if r3 == 6 goto .L1530
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1530:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1529:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1528:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1527:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1526:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1525:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1534
.L1443:
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
	if r0 != r2 goto .L1443
	exit
.L1436:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1439
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1435
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1444
	if r5 == 1 goto .L1513
	if r5 == 2 goto .L1514
	if r5 == 3 goto .L1515
	if r5 == 4 goto .L1516
	if r5 == 5 goto .L1517
	if r5 == 6 goto .L1518
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1518:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1517:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1516:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1515:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1514:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1513:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1535
.L1444:
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
	if r9 != 6 goto .L1444
.L1435:
	exit
.L1534:
	exit
.L1535:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 >= r2 goto .L1537
.L1540:
	if r9 == 0 goto .L1539
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
	if r5 == 0 goto .L1543
	if r5 == 1 goto .L1597
	if r5 == 2 goto .L1598
	if r5 == 3 goto .L1599
	if r5 == 4 goto .L1600
	if r5 == 5 goto .L1601
	if r5 == 6 goto .L1602
	r5 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r5
	r0 += 2
	r4 += 2
.L1602:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1601:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1600:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1599:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1598:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1597:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L1539
.L1543:
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
	if r0 != r9 goto .L1543
.L1539:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1536
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1537:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1540
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1536
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1544
	if r5 == 1 goto .L1591
	if r5 == 2 goto .L1592
	if r5 == 3 goto .L1593
	if r5 == 4 goto .L1594
	if r5 == 5 goto .L1595
	if r5 == 6 goto .L1596
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1596:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1595:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1594:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1593:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1592:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1591:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1605
.L1544:
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
	if r9 != 6 goto .L1544
.L1536:
	exit
.L1605:
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
	if r1 >= r2 goto .L1607
.L1610:
	if r6 == 0 goto .L1609
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
	if r5 == 0 goto .L1613
	if r5 == 1 goto .L1690
	if r5 == 2 goto .L1691
	if r5 == 3 goto .L1692
	if r5 == 4 goto .L1693
	if r5 == 5 goto .L1694
	if r5 == 6 goto .L1695
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r4 += 4
.L1695:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1694:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1693:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1692:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1691:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1690:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L1609
.L1613:
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
	if r0 != r6 goto .L1613
.L1609:
	if r9 > r3 goto .L1606
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
	if r3 == 0 goto .L1614
	if r3 == 1 goto .L1696
	if r3 == 2 goto .L1697
	if r3 == 3 goto .L1698
	if r3 == 4 goto .L1699
	if r3 == 5 goto .L1700
	if r3 == 6 goto .L1701
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1701:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1700:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1699:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1698:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1697:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1696:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1705
.L1614:
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
	if r0 != r2 goto .L1614
	exit
.L1607:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1610
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1606
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1615
	if r5 == 1 goto .L1684
	if r5 == 2 goto .L1685
	if r5 == 3 goto .L1686
	if r5 == 4 goto .L1687
	if r5 == 5 goto .L1688
	if r5 == 6 goto .L1689
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1689:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1688:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1687:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1686:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1685:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1684:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1706
.L1615:
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
	if r9 != 6 goto .L1615
.L1606:
	exit
.L1705:
	exit
.L1706:
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
	if r0 != 0 goto .L1716
	r0 = r1
	r0 s>>= 14
	if r0 != 0 goto .L1715
	r3 = r1
	r3 s>>= 13
	if r3 != 0 goto .L1717
	r4 = r1
	r4 s>>= 12
	if r4 != 0 goto .L1718
	r5 = r1
	r5 s>>= 11
	if r5 != 0 goto .L1719
	r9 = r1
	r9 s>>= 10
	if r9 != 0 goto .L1720
	r0 = r1
	r0 s>>= 9
	if r0 != 0 goto .L1721
	r3 = r1
	r3 s>>= 8
	if r3 != 0 goto .L1722
	r4 = r1
	r4 s>>= 7
	if r4 != 0 goto .L1723
	r5 = r1
	r5 s>>= 6
	if r5 != 0 goto .L1724
	r9 = r1
	r9 s>>= 5
	if r9 != 0 goto .L1725
	r0 = r1
	r0 s>>= 4
	if r0 != 0 goto .L1726
	r3 = r1
	r3 s>>= 3
	if r3 != 0 goto .L1727
	r4 = r1
	r4 s>>= 2
	if r4 != 0 goto .L1728
	r2 s>>= 1
	if r2 != 0 goto .L1729
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L1731
.L1715:
	exit
.L1731:
	r0 = 15
	exit
.L1716:
	r0 = 0
	exit
.L1717:
	r0 = 2
	exit
.L1718:
	r0 = 3
	exit
.L1719:
	r0 = 4
	exit
.L1720:
	r0 = 5
	exit
.L1721:
	r0 = 6
	exit
.L1722:
	r0 = 7
	exit
.L1723:
	r0 = 8
	exit
.L1724:
	r0 = 9
	exit
.L1725:
	r0 = 10
	exit
.L1726:
	r0 = 11
	exit
.L1727:
	r0 = 12
	exit
.L1728:
	r0 = 13
	exit
.L1729:
	r0 = 14
	goto .L1715
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1735
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L1736
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L1737
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L1738
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L1739
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L1740
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L1741
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L1742
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L1743
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L1744
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L1745
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L1746
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L1747
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L1748
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L1749
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L1751
.L1734:
	exit
.L1751:
	r0 = 15
	exit
.L1735:
	r0 = 0
	exit
.L1736:
	r0 = 1
	exit
.L1737:
	r0 = 2
	exit
.L1738:
	r0 = 3
	exit
.L1739:
	r0 = 4
	exit
.L1740:
	r0 = 5
	exit
.L1741:
	r0 = 6
	exit
.L1742:
	r0 = 7
	exit
.L1743:
	r0 = 8
	exit
.L1744:
	r0 = 9
	exit
.L1745:
	r0 = 10
	exit
.L1746:
	r0 = 11
	exit
.L1747:
	r0 = 12
	exit
.L1748:
	r0 = 13
	exit
.L1749:
	r0 = 14
	goto .L1734
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L1758
	r1 = r6
	call	__fixsfdi
	exit
.L1758:
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
	if r1 == 0 goto .L1764
	r0 = 0
.L1763:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1780
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1762
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1762
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1762
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1762
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1762
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1762
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1763
	exit
.L1780:
	exit
.L1764:
	r0 = r1
.L1762:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1784
	if r2 == 0 goto .L1785
	r0 = 0
.L1783:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1801
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1782
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1782
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1782
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1782
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1782
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1782
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L1783
	exit
.L1801:
	exit
.L1784:
	r0 = r1
	exit
.L1785:
	r0 = r2
.L1782:
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
	if r0 < r2 goto .L1804
	r9 = 32
	r4 = 1
.L1803:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1803
	r4 = r9
.L1804:
	r1 = 0
	if r4 != r1 goto .L1805
	r1 = r4
.L1806:
	if r3 != 0 goto .L1809
	r0 = r1
.L1809:
	exit
.L1808:
	r4 >>= 1
	r4 = r4;r4 &= 0xffffffff
	r2 >>= 1
	if r4 == 0 goto .L1806
.L1805:
	if r2 >= r0 goto .L1808
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5;r1 &= 0xffffffff
	goto .L1808
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1833
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1834
.L1832:
	r0 = r8
	r0 &= 1
	exit
.L1834:
	r8 = 0
	goto .L1832
.L1833:
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
	if r0 s<= 0 goto .L1838
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1839
.L1837:
	r0 = r8
	r0 &= 1
	exit
.L1839:
	r8 = 0
	goto .L1837
.L1838:
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
	if r2 s< 0 goto .L1858
	r2 = 0
.L1843:
	if r4 == 0 goto .L1848
	r3 = r4
	r3 &= 1
	r3 = -r3
	r0 = r1
	r0 &= r3
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1844
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
	if r4 == 0 goto .L1844
	r3 += -1
	r3 &= 0xff
.L1845:
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
	if r4 == 0 goto .L1844
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
	if r4 == 0 goto .L1844
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
	if r4 == 0 goto .L1844
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
	if r4 == 0 goto .L1844
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
	if r4 == 0 goto .L1844
	r3 += -1
	r3 &= 0xff
	if r3 != 0 goto .L1845
.L1844:
	if r2 == 0 goto .L1846
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1846:
	exit
.L1858:
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r2 = 1
	goto .L1843
.L1848:
	r0 = r4
	goto .L1844
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1864
	r6 = 0
.L1860:
	if r2 s< 0 goto .L1865
.L1861:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1859
	r0 = -r0
.L1859:
	exit
.L1864:
	r1 = -r1
	r6 = 1
	goto .L1860
.L1865:
	r2 = -r2
	r6 ^= 1
	goto .L1861
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L1871
	r6 = 0
.L1867:
	r2 = r0
	if r0 s< 0 goto .L1872
.L1868:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1866
	r0 = -r0
.L1866:
	exit
.L1871:
	r1 = -r1
	r6 = 1
	goto .L1867
.L1872:
	r0 = -r0
	r2 = r0
	goto .L1868
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r0 < r2 goto .L1875
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1898
	r5 = r2
	r5 += r2
	r5 &= 0xffff
	if r5 > r0 goto .L1899
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1900
	r9 = r2
	r9 <<= 2
	r9 &= 0xffff
	if r9 > r0 goto .L1901
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1902
	r5 = r2
	r5 <<= 3
	r5 &= 0xffff
	if r5 > r0 goto .L1903
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1904
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L1905
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1906
	r5 = r2
	r5 <<= 5
	r5 &= 0xffff
	if r5 > r0 goto .L1907
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1908
	r9 = r2
	r9 <<= 6
	r9 &= 0xffff
	if r9 > r0 goto .L1909
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1910
	r5 = r2
	r5 <<= 7
	r5 &= 0xffff
	if r5 > r0 goto .L1911
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1912
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L1913
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1914
	r5 = r2
	r5 <<= 9
	r5 &= 0xffff
	if r5 > r0 goto .L1915
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1916
	r9 = r2
	r9 <<= 10
	r9 &= 0xffff
	if r9 > r0 goto .L1917
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1918
	r5 = r2
	r5 <<= 11
	r5 &= 0xffff
	if r5 > r0 goto .L1919
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1920
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L1921
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1922
	r5 = r2
	r5 <<= 13
	r5 &= 0xffff
	if r5 > r0 goto .L1923
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1924
	r9 = r2
	r9 <<= 14
	r9 &= 0xffff
	if r9 > r0 goto .L1925
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1926
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L1927
	r4 = 32768
	if r2 != 0 goto .L1875
	r4 = 0
	r2 = r4
.L1875:
	if r4 == 0 goto .L1877
	if r2 >= r0 goto .L1929
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L1880:
	r5 = r4
	r5 >>= 1
	r5 &= 0xffff
	r9 = r2
	r9 >>= 1
	r9 &= 0xffff
	if r5 == 0 goto .L1930
	if r9 >= r0 goto .L1882
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1882:
	r5 = r4
	r5 >>= 2
	r5 &= 0xffff
	r9 = r2
	r9 >>= 2
	r9 &= 0xffff
	if r5 == 0 goto .L1931
	if r9 >= r0 goto .L1883
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1883:
	r5 = r4
	r5 >>= 3
	r5 &= 0xffff
	r9 = r2
	r9 >>= 3
	r9 &= 0xffff
	if r5 == 0 goto .L1932
	if r9 >= r0 goto .L1884
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1884:
	r5 = r4
	r5 >>= 4
	r5 &= 0xffff
	r9 = r2
	r9 >>= 4
	r9 &= 0xffff
	if r5 == 0 goto .L1933
	if r9 >= r0 goto .L1885
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1885:
	r5 = r4
	r5 >>= 5
	r5 &= 0xffff
	r9 = r2
	r9 >>= 5
	r9 &= 0xffff
	if r5 == 0 goto .L1934
	if r9 >= r0 goto .L1886
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1886:
	r5 = r4
	r5 >>= 6
	r5 &= 0xffff
	r9 = r2
	r9 >>= 6
	r9 &= 0xffff
	if r5 == 0 goto .L1935
	if r9 >= r0 goto .L1887
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1887:
	r5 = r4
	r5 >>= 7
	r5 &= 0xffff
	r9 = r2
	r9 >>= 7
	r9 &= 0xffff
	if r5 == 0 goto .L1936
	if r9 >= r0 goto .L1888
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1888:
	r5 = r4
	r5 >>= 8
	r5 &= 0xffff
	r9 = r2
	r9 >>= 8
	r9 &= 0xffff
	if r5 == 0 goto .L1937
	if r9 >= r0 goto .L1889
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1889:
	r5 = r4
	r5 >>= 9
	r5 &= 0xffff
	r9 = r2
	r9 >>= 9
	r9 &= 0xffff
	if r5 == 0 goto .L1938
	if r9 >= r0 goto .L1890
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1890:
	r5 = r4
	r5 >>= 10
	r5 &= 0xffff
	r9 = r2
	r9 >>= 10
	r9 &= 0xffff
	if r5 == 0 goto .L1939
	if r9 >= r0 goto .L1891
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1891:
	r5 = r4
	r5 >>= 11
	r5 &= 0xffff
	r9 = r2
	r9 >>= 11
	r9 &= 0xffff
	if r5 == 0 goto .L1940
	if r9 >= r0 goto .L1892
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1892:
	r5 = r4
	r5 >>= 12
	r5 &= 0xffff
	r9 = r2
	r9 >>= 12
	r9 &= 0xffff
	if r5 == 0 goto .L1941
	if r9 >= r0 goto .L1893
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1893:
	r5 = r4
	r5 >>= 13
	r5 &= 0xffff
	r9 = r2
	r9 >>= 13
	r9 &= 0xffff
	if r5 == 0 goto .L1942
	if r9 >= r0 goto .L1894
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1894:
	r5 = r4
	r5 >>= 14
	r5 &= 0xffff
	r9 = r2
	r9 >>= 14
	r9 &= 0xffff
	if r5 == 0 goto .L1943
	if r9 >= r0 goto .L1895
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1895:
	r2 >>= 15
	r2 &= 0xffff
	r4 >>= 15
	r4 &= 0xffff
	if r4 == 0 goto .L1944
	if r2 >= r0 goto .L1896
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
.L1896:
	r4 = r1
.L1877:
	if r3 != 0 goto .L1897
	r0 = r4
.L1897:
	exit
.L1899:
	r2 = r5
	r4 = 2
	goto .L1875
.L1901:
	r2 = r9
	r4 = 4
	goto .L1875
.L1903:
	r2 = r5
	r4 = 8
	goto .L1875
.L1905:
	r2 = r9
	r4 = 16
	goto .L1875
.L1907:
	r2 = r5
	r4 = 32
	goto .L1875
.L1909:
	r2 = r9
	r4 = 64
	goto .L1875
.L1911:
	r2 = r5
	r4 = 128
	goto .L1875
.L1913:
	r2 = r9
	r4 = 256
	goto .L1875
.L1915:
	r2 = r5
	r4 = 512
	goto .L1875
.L1917:
	r2 = r9
	r4 = 1024
	goto .L1875
.L1919:
	r2 = r5
	r4 = 2048
	goto .L1875
.L1921:
	r2 = r9
	r4 = 4096
	goto .L1875
.L1923:
	r2 = r5
	r4 = 8192
	goto .L1875
.L1925:
	r2 = r9
	r4 = 16384
	goto .L1875
.L1927:
	r4 = 32768
	goto .L1875
.L1898:
	r4 = 1
	goto .L1875
.L1900:
	r2 = r5
	r4 = 2
	goto .L1875
.L1902:
	r2 = r9
	r4 = 4
	goto .L1875
.L1904:
	r2 = r5
	r4 = 8
	goto .L1875
.L1906:
	r2 = r9
	r4 = 16
	goto .L1875
.L1908:
	r2 = r5
	r4 = 32
	goto .L1875
.L1910:
	r2 = r9
	r4 = 64
	goto .L1875
.L1912:
	r2 = r5
	r4 = 128
	goto .L1875
.L1914:
	r2 = r9
	r4 = 256
	goto .L1875
.L1916:
	r2 = r5
	r4 = 512
	goto .L1875
.L1918:
	r2 = r9
	r4 = 1024
	goto .L1875
.L1920:
	r2 = r5
	r4 = 2048
	goto .L1875
.L1922:
	r2 = r9
	r4 = 4096
	goto .L1875
.L1924:
	r2 = r5
	r4 = 8192
	goto .L1875
.L1926:
	r2 = r9
	r4 = 16384
	goto .L1875
.L1929:
	r1 = 0
	goto .L1880
.L1930:
	r4 = r1
	goto .L1877
.L1931:
	r4 = r1
	goto .L1877
.L1932:
	r4 = r1
	goto .L1877
.L1933:
	r4 = r1
	goto .L1877
.L1934:
	r4 = r1
	goto .L1877
.L1935:
	r4 = r1
	goto .L1877
.L1936:
	r4 = r1
	goto .L1877
.L1937:
	r4 = r1
	goto .L1877
.L1938:
	r4 = r1
	goto .L1877
.L1939:
	r4 = r1
	goto .L1877
.L1940:
	r4 = r1
	goto .L1877
.L1941:
	r4 = r1
	goto .L1877
.L1942:
	r4 = r1
	goto .L1877
.L1943:
	r4 = r1
	goto .L1877
.L1944:
	r4 = r1
	goto .L1877
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L1947
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L1946:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1947
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1947
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1947
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1947
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1947
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1947
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1947
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1947
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1947
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1947
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1947
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1947
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1947
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1947
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1947
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1947
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L1946
	r4 = r9
.L1947:
	r0 = 0
	if r4 != r0 goto .L1948
	r0 = r4
.L1949:
	if r3 != 0 goto .L1974
.L1945:
	exit
.L1951:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1949
.L1948:
	if r2 >= r1 goto .L1951
	r1 -= r2
	r0 |= r4
	goto .L1951
.L1974:
	r0 = r1
	goto .L1945
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1976
	r2 += -32
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = 0
.L1977:
	r3 <<= 32
	r0 |= r3
	exit
.L1976:
	if r2 == 0 goto .L1979
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
	goto .L1977
.L1979:
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
	if r0 == 0 goto .L1981
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L1981:
	if r3 == 0 goto .L1984
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
.L1984:
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
	if r0 == 0 goto .L1986
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
.L1987:
	r0 <<= 32
	r0 |= r9
	exit
.L1986:
	if r2 == 0 goto .L1989
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
	goto .L1987
.L1989:
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
	if r0 == 0 goto .L1991
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L1991:
	if r3 == 0 goto .L1994
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
.L1994:
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
	if r1 <= 65534 goto .L1998
	r0 = 0
.L1998:
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
	r5 = r9;r5 &= 0xffffffff
	r0 += r2
	r9 &= 12
	r9 += -1
	r9 >>= 63
	r9 += r9
	r1 = 2
	r1 -= r9
	r3 = r1;r3 &= 0xffffffff
	r2 = r5
	r2 >>= r3
	r4 = r2;r4 &= 0xffffffff
	r5 = r4
	r5 >>= 1
	r5 &= 1
	if r5 != 0 goto .L1999
	r1 = 2
	r1 -= r4
.L2000:
	r0 += r9
	r0 += r1
	exit
.L1999:
	r1 = 0
	goto .L2000
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L2002
	r6 = 0
.L2002:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	r3 = 1
	if r2 == 0 goto .L2005
	r3 = 0
.L2005:
	r3 &= 0xff
	if r3 != 0 goto .L2004
	r0 = 0
.L2004:
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
	if r0 s>= r3 goto .L2008
	if r3 s> r0 goto .L2009
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2010
	if r1 > r2 goto .L2011
	r0 = 1
	exit
.L2008:
	r0 = 0
	exit
.L2009:
	r0 = 2
	exit
.L2010:
	r0 = 0
	exit
.L2011:
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
	if r4 s>= r2 goto .L2015
	if r2 s> r4 goto .L2016
	if r3 >= r1 goto .L2017
	if r1 > r3 goto .L2018
	r0 = 1
	exit
.L2015:
	r0 = 0
	exit
.L2016:
	r0 = 2
	exit
.L2017:
	r0 = 0
	exit
.L2018:
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
	r0 = r1
	r3 = r1
	r6 = 1
	if r1 == 0 goto .L2021
	r6 = 0
.L2021:
	r6 &= 0xff
	r1 = 1
	if r3 == 0 goto .L2024
	r1 = 0
.L2024:
	r1 &= 0xff
	if r1 == 0 goto .L2022
	r1 = r2
.L2023:
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
.L2022:
	r1 = 0
	goto .L2023
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2026
	if r2 == 0 goto .L2028
	r1 = r2
	call	__ctzdi2
	r0 <<= 32
	r2 = 279172874240 ll
	r0 += r2
	r0 s>>= 32
	exit
.L2026:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2028:
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
	if r0 == 0 goto .L2030
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
.L2031:
	r0 <<= 32
	r0 |= r3
	exit
.L2030:
	if r2 == 0 goto .L2033
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
	goto .L2031
.L2033:
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
	if r0 == 0 goto .L2035
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2035:
	if r3 == 0 goto .L2038
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
.L2038:
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
	r3 = r1
	r3 = -r3
	r0 = 1
	if r1 != 0 goto .L2045
	r0 = 0
.L2045:
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
	if r9 > r0 goto .L2052
	r3 = 0
.L2052:
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
	if r0 >= r4 goto .L2053
	r9 = 0
.L2053:
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
	if r1 >= r2 goto .L2054
	r0 = 0
.L2054:
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
	goto .L2058
.L2056:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2057
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2058:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2056
	r2 = r6
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L2056
.L2057:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2060
.L2055:
	r0 = r7
	exit
.L2060:
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
	goto .L2055
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
	goto .L2064
.L2062:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2063
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2064:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2062
	r2 = r6
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L2062
.L2063:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2066
.L2061:
	r0 = r7
	exit
.L2066:
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
	goto .L2061
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2069
	if r3 > r0 goto .L2070
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2071
	if r1 > r2 goto .L2072
	r0 = 1
	exit
.L2069:
	r0 = 0
	exit
.L2070:
	r0 = 2
	exit
.L2071:
	r0 = 0
	exit
.L2072:
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
	if r4 >= r2 goto .L2076
	if r2 > r4 goto .L2077
	if r3 >= r1 goto .L2078
	if r1 > r3 goto .L2079
	r0 = 1
	exit
.L2076:
	r0 = 0
	exit
.L2077:
	r0 = 2
	exit
.L2078:
	r0 = 0
	exit
.L2079:
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
