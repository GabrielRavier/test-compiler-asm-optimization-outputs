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
	r0 = r1
	r0 += r3
	if r3 == 0 goto .L6
	r4 = r0
	r4 -= r1
	r4 &= 7
	if r4 == 0 goto .L7
	if r4 == 1 goto .L53
	if r4 == 2 goto .L54
	if r4 == 3 goto .L55
	if r4 == 4 goto .L56
	if r4 == 5 goto .L57
	if r4 == 6 goto .L58
	r2 += -1
	r0 += -1
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
.L58:
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
	if r1 == r0 goto .L6
.L7:
	r2 += -1
	r0 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	r5 = *(u8 *) (r2+-1)
	*(u8 *) (r0+-1) = r5
	r9 = *(u8 *) (r2+-2)
	*(u8 *) (r0+-2) = r9
	r3 = *(u8 *) (r2+-3)
	*(u8 *) (r0+-3) = r3
	r4 = *(u8 *) (r2+-4)
	*(u8 *) (r0+-4) = r4
	r5 = *(u8 *) (r2+-5)
	*(u8 *) (r0+-5) = r5
	r9 = *(u8 *) (r2+-6)
	*(u8 *) (r0+-6) = r9
	r2 += -7
	r0 += -7
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	if r1 != r0 goto .L7
.L6:
	r0 = r1
	exit
.L5:
	if r1 == r2 goto .L6
	if r3 == 0 goto .L6
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L8
	if r3 == 1 goto .L59
	if r3 == 2 goto .L60
	if r3 == 3 goto .L61
	if r3 == 4 goto .L62
	if r3 == 5 goto .L63
	if r3 == 6 goto .L64
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r2 += 1
.L64:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L63:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L62:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
.L61:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L60:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L59:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
	if r0 == r4 goto .L6
.L8:
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
	if r0 != r4 goto .L8
	goto .L6
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	if r4 == 0 goto .L69
	r0 = r4
	r0 &= 7
	if r0 == 0 goto .L68
	if r0 == 1 goto .L109
	if r0 == 2 goto .L110
	if r0 == 3 goto .L111
	if r0 == 4 goto .L112
	if r0 == 5 goto .L113
	if r0 == 6 goto .L114
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L69
	r4 += -1
	r2 += 1
	r1 += 1
.L114:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L69
	r4 += -1
	r2 += 1
	r1 += 1
.L113:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L69
	r4 += -1
	r2 += 1
	r1 += 1
.L112:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L69
	r4 += -1
	r2 += 1
	r1 += 1
.L111:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L69
	r4 += -1
	r2 += 1
	r1 += 1
.L110:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L69
	r4 += -1
	r2 += 1
	r1 += 1
.L109:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L69
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L69
.L68:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L69
	r4 += -1
	r5 = r4
	r9 = r2
	r9 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r2 == r3 goto .L69
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+1)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L69
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L69
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+3)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L69
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L69
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+5)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L69
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L69
	r4 += -1
	r2 = r9
	r2 += 7
	r0 += 7
	r1 = r0
	if r5 != 7 goto .L68
.L69:
	if r4 == 0 goto .L72
	r0 = r1
	r0 += 1
	exit
.L72:
	r0 = r4
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L121
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L117
	if r0 == 1 goto .L158
	if r0 == 2 goto .L159
	if r0 == 3 goto .L160
	if r0 == 4 goto .L161
	if r0 == 5 goto .L162
	if r0 == 6 goto .L163
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L121
	r1 += 1
	r3 += -1
.L163:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L121
	r1 += 1
	r3 += -1
.L162:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L121
	r1 += 1
	r3 += -1
.L161:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L121
	r1 += 1
	r3 += -1
.L160:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L121
	r1 += 1
	r3 += -1
.L159:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L121
	r1 += 1
	r3 += -1
.L158:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L121
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L121
.L117:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L121
	r9 = r1
	r9 += 1
	r1 = r9
	r3 += -1
	r4 = r3
	r5 = *(u8 *) (r9+0)
	if r5 == r2 goto .L121
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+1)
	if r0 == r2 goto .L121
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+2)
	if r5 == r2 goto .L121
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+3)
	if r0 == r2 goto .L121
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+4)
	if r5 == r2 goto .L121
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+5)
	if r0 == r2 goto .L121
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+6)
	if r5 == r2 goto .L121
	r9 += 7
	r1 = r9
	r3 += -1
	if r4 != 7 goto .L117
.L121:
	r0 = r1
	if r3 == 0 goto .L167
.L116:
	exit
.L167:
	r0 = r3
	goto .L116
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L170
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L169
	if r0 == 1 goto .L210
	if r0 == 2 goto .L211
	if r0 == 3 goto .L212
	if r0 == 4 goto .L213
	if r0 == 5 goto .L214
	if r0 == 6 goto .L215
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
.L215:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
.L214:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
.L213:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
.L212:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
.L211:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
.L210:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L170
.L169:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L170
	r3 += -1
	r5 = r3
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r0+0)
	if r6 != r9 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+1)
	r6 = *(u8 *) (r0+1)
	if r9 != r6 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+2)
	r6 = *(u8 *) (r0+2)
	if r9 != r6 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+3)
	r6 = *(u8 *) (r0+3)
	if r9 != r6 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+4)
	r6 = *(u8 *) (r0+4)
	if r9 != r6 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+5)
	r6 = *(u8 *) (r0+5)
	if r9 != r6 goto .L170
	r3 += -1
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r4+6)
	r6 = *(u8 *) (r0+6)
	if r4 != r6 goto .L170
	r3 += -1
	r1 += 1
	r0 += 7
	r2 = r0
	if r5 != 7 goto .L169
.L170:
	if r3 == 0 goto .L173
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L173:
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
	if r4 == 0 goto .L218
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L217
	if r4 == 1 goto .L218
	if r4 == 2 goto .L232
	if r4 == 3 goto .L230
	if r4 == 4 goto .L228
	if r4 == 5 goto .L226
	if r4 == 6 goto .L224
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L217
.L224:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L217
.L226:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L217
.L228:
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L217
.L230:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L217
.L232:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L217
.L218:
	if r0 == r1 goto .L244
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L217
	r3 = r0
	r5 = r0
	r5 += -1
	r4 = *(u8 *) (r0+0)
	if r4 == r2 goto .L217
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L217
	r3 = r5
	r5 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L217
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L217
	r3 = r5
	r5 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L217
	r3 = r5
	r5 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L217
	r3 = r5
	r0 += -7
	r5 = *(u8 *) (r5+0)
	if r5 != r2 goto .L218
	goto .L217
.L244:
	r3 = 0
.L217:
	r0 = r3
	exit
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L246
	r4 = r1
	r4 += r3
	r0 = r1
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L247
	if r3 == 1 goto .L270
	if r3 == 2 goto .L271
	if r3 == 3 goto .L272
	if r3 == 4 goto .L273
	if r3 == 5 goto .L274
	if r3 == 6 goto .L275
	*(u8 *) (r1+0) = r2
	r0 += 1
.L275:
	*(u8 *) (r0+0) = r2
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
	if r4 == r0 goto .L246
.L247:
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
	if r4 != r0 goto .L247
.L246:
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
	if r1 == 0 goto .L278
.L279:
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L278
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L278
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L278
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L278
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L278
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L278
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L278
	r2 += 7
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L279
	exit
.L278:
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
	if r0 == 0 goto .L299
.L296:
	r4 &= 0xff
	if r4 == r2 goto .L299
	r1 += 1
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 != 0 goto .L296
.L299:
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
.L303:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r2 goto .L302
	r0 += 1
	if r3 != 0 goto .L303
	r0 = r3
.L302:
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L310
.L308:
	r1 += 1
	r2 += 1
.L310:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	if r0 != r3 goto .L307
	if r0 != 0 goto .L308
.L307:
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
	if r0 == 0 goto .L312
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
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L332
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L333
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L332
	if r0 != r4 goto .L332
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L332
	if r3 == 1 goto .L333
	if r3 == 2 goto .L371
	if r3 == 3 goto .L372
	if r3 == 4 goto .L373
	if r3 == 5 goto .L374
	if r3 == 6 goto .L375
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r4 goto .L332
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L332
.L375:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L332
	if r9 != r4 goto .L332
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L332
.L374:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L332
	if r0 != r4 goto .L332
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L332
.L373:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r4 goto .L332
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L332
.L372:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L332
	if r9 != r4 goto .L332
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L332
.L371:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L332
	if r0 != r4 goto .L332
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L332
.L333:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r1 == r5 goto .L332
	if r3 != r4 goto .L332
	r9 = r1
	r9 += 1
	r0 = r2
	r0 += 1
	r2 = r0
	r4 = *(u8 *) (r1+1)
	if r4 == 0 goto .L332
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L332
	if r1 != r4 goto .L332
	r2 += 1
	r4 = *(u8 *) (r9+1)
	if r4 == 0 goto .L332
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r4 goto .L332
	r2 += 1
	r4 = *(u8 *) (r9+2)
	if r4 == 0 goto .L332
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L332
	if r1 != r4 goto .L332
	r2 += 1
	r4 = *(u8 *) (r9+3)
	if r4 == 0 goto .L332
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r4 goto .L332
	r2 += 1
	r4 = *(u8 *) (r9+4)
	if r4 == 0 goto .L332
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L332
	if r1 != r4 goto .L332
	r2 += 1
	r4 = *(u8 *) (r9+5)
	if r4 == 0 goto .L332
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L332
	if r3 != r4 goto .L332
	r2 += 1
	r4 = *(u8 *) (r9+6)
	if r4 == 0 goto .L332
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L332
	if r1 != r4 goto .L332
	r1 = r9
	r1 += 7
	r0 += 7
	r2 = r0
	r4 = *(u8 *) (r9+7)
	if r4 != 0 goto .L333
.L332:
	r2 = *(u8 *) (r2+0)
	r0 = r4
	r0 -= r2
	exit
.L335:
	r0 = r3
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
	r2 = r1
	r2 s>>= 32
	r1 >>= 32
	if r1 <= 30 goto .L439
	r0 = r2
	r0 += -127
	r1 = r0;r1 &= 0xffffffff
	if r1 <= 31 goto .L439
	r3 = r2
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	r0 = 1
	if r0 > r4 goto .L436
	r2 += -65529
	r5 = r2;r5 &= 0xffffffff
	if r5 <= r0 goto .L437
	r0 = 0
.L437:
	r0 &= 1
	exit
.L439:
	r0 = 1
.L436:
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
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
	if r1 <= 8230 goto .L449
	r2 = r1
	r2 += -8234
	if r2 <= 47060 goto .L449
	r2 += -49110
	if r2 <= 8183 goto .L449
	r1 += -65532
	if r1 > 1048579 goto .L450
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L451:
	r0 += 1
	r1 = 1
	r0 &= 127
	if r0 s> 32 goto .L445
	r1 = 0
.L445:
	r0 = r1
	r0 &= 1
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
	if r0 != 0 goto .L481
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L480
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L475
	if r0 != 0 goto .L481
.L480:
	r0 = r7
	exit
.L475:
	r3 = 1
	*(u64 *) (r10+-8) = r3
	r2 = r6
	r1 = r7
	call	__ltdf2
	r2 = *(u64 *) (r10+-8)
	if r8 s>= r0 goto .L478
	r2 = r8
.L478:
	r2 &= 0xff
	if r2 != 0 goto .L481
	r6 = r7
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
	if r0 != 0 goto .L490
	r2 = r6
	r1 = r6
	call	__unordsf2
	r8 = r0
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
.L489:
	r0 = r7
	exit
.L484:
	r3 = 1
	*(u64 *) (r10+-8) = r3
	r2 = r6
	r1 = r7
	call	__ltsf2
	r4 = *(u64 *) (r10+-8)
	if r8 s>= r0 goto .L487
	r4 = r8
.L487:
	r4 &= 0xff
	if r4 != 0 goto .L490
	r6 = r7
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
	if r0 != 0 goto .L499
	r2 = r6
	r1 = r6
	call	__unorddf2
	r8 = r0
	if r0 != 0 goto .L498
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L493
	if r0 != 0 goto .L499
.L498:
	r0 = r7
	exit
.L493:
	r3 = 1
	*(u64 *) (r10+-8) = r3
	r2 = r6
	r1 = r7
	call	__ltdf2
	r2 = *(u64 *) (r10+-8)
	if r8 s>= r0 goto .L496
	r2 = r8
.L496:
	r2 &= 0xff
	if r2 != 0 goto .L499
	r6 = r7
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
	r8 = r0
	if r0 != 0 goto .L508
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L502
	if r0 != 0 goto .L508
.L506:
	r0 = r7
	exit
.L502:
	r3 = 1
	*(u64 *) (r10+-8) = r3
	r2 = r7
	r1 = r6
	call	__ltdf2
	r2 = *(u64 *) (r10+-8)
	if r8 s>= r0 goto .L505
	r2 = r8
.L505:
	r2 &= 0xff
	if r2 != 0 goto .L508
	r6 = r7
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
	r8 = r0
	if r0 != 0 goto .L517
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
.L515:
	r0 = r7
	exit
.L511:
	r3 = 1
	*(u64 *) (r10+-8) = r3
	r2 = r7
	r1 = r6
	call	__ltsf2
	r4 = *(u64 *) (r10+-8)
	if r8 s>= r0 goto .L514
	r4 = r8
.L514:
	r4 &= 0xff
	if r4 != 0 goto .L517
	r6 = r7
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
	r8 = r0
	if r0 != 0 goto .L526
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L520
	if r0 != 0 goto .L526
.L524:
	r0 = r7
	exit
.L520:
	r3 = 1
	*(u64 *) (r10+-8) = r3
	r2 = r7
	r1 = r6
	call	__ltdf2
	r2 = *(u64 *) (r10+-8)
	if r8 s>= r0 goto .L523
	r2 = r8
.L523:
	r2 &= 0xff
	if r2 != 0 goto .L526
	r6 = r7
.L526:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	r0 = s.0 ll
	if r1 == 0 goto .L528
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
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
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
	r1 = *(u8 *) (r8+0)
	r1 <<= 56
	r1 s>>= 56
	r4 = r1
	r4 += -48
	r5 = 9
	if r4 > 8 goto .L564
.L563:
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r8 += 1
	r1 += -48
	r1 <<= 56
	r1 s>>= 56
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r8+0)
	r1 <<= 56
	r1 s>>= 56
	r2 = r1
	r2 += -48
	r4 = r2;r4 &= 0xffffffff
	if r5 <= r4 goto .L564
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r1 += -48
	r1 <<= 56
	r1 s>>= 56
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r8+1)
	r1 <<= 56
	r1 s>>= 56
	r2 = r1
	r2 += -48
	r4 = r2;r4 &= 0xffffffff
	if r5 <= r4 goto .L564
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r1 += -48
	r1 <<= 56
	r1 s>>= 56
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r8+2)
	r1 <<= 56
	r1 s>>= 56
	r2 = r1
	r2 += -48
	r4 = r2;r4 &= 0xffffffff
	if r5 <= r4 goto .L564
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r8 += 3
	r1 += -48
	r1 <<= 56
	r1 s>>= 56
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r8+0)
	r1 <<= 56
	r1 s>>= 56
	r2 = r1
	r2 += -48
	r4 = r2;r4 &= 0xffffffff
	if r5 > r4 goto .L563
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
	r3 = 0
	r1 = 9
	if r4 > 8 goto .L590
.L589:
	r5 = r3
	r5 <<= 2
	r5 += r3
	r5 += r5
	r8 += 1
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r5
	r3 -= r0
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r9 = r0
	r9 += -48
	r4 = r9;r4 &= 0xffffffff
	if r1 <= r4 goto .L590
	r5 = r3
	r5 <<= 2
	r5 += r3
	r5 += r5
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r5
	r3 -= r0
	r0 = *(u8 *) (r8+1)
	r0 <<= 56
	r0 s>>= 56
	r9 = r0
	r9 += -48
	r4 = r9;r4 &= 0xffffffff
	if r1 <= r4 goto .L590
	r5 = r3
	r5 <<= 2
	r5 += r3
	r5 += r5
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r5
	r3 -= r0
	r0 = *(u8 *) (r8+2)
	r0 <<= 56
	r0 s>>= 56
	r9 = r0
	r9 += -48
	r4 = r9;r4 &= 0xffffffff
	if r1 <= r4 goto .L590
	r5 = r3
	r5 <<= 2
	r5 += r3
	r5 += r5
	r8 += 3
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r5
	r3 -= r0
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r9 = r0
	r9 += -48
	r4 = r9;r4 &= 0xffffffff
	if r1 > r4 goto .L589
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
	r3 = 0
	r1 = 9
	if r4 > 8 goto .L615
.L614:
	r5 = r3
	r5 <<= 2
	r5 += r3
	r5 += r5
	r8 += 1
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r5
	r3 -= r0
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r9 = r0
	r9 += -48
	r4 = r9;r4 &= 0xffffffff
	if r1 <= r4 goto .L615
	r5 = r3
	r5 <<= 2
	r5 += r3
	r5 += r5
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r5
	r3 -= r0
	r0 = *(u8 *) (r8+1)
	r0 <<= 56
	r0 s>>= 56
	r9 = r0
	r9 += -48
	r4 = r9;r4 &= 0xffffffff
	if r1 <= r4 goto .L615
	r5 = r3
	r5 <<= 2
	r5 += r3
	r5 += r5
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r5
	r3 -= r0
	r0 = *(u8 *) (r8+2)
	r0 <<= 56
	r0 s>>= 56
	r9 = r0
	r9 += -48
	r4 = r9;r4 &= 0xffffffff
	if r1 <= r4 goto .L615
	r5 = r3
	r5 <<= 2
	r5 += r3
	r5 += r5
	r8 += 3
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r5
	r3 -= r0
	r0 = *(u8 *) (r8+0)
	r0 <<= 56
	r0 s>>= 56
	r9 = r0
	r9 += -48
	r4 = r9;r4 &= 0xffffffff
	if r1 > r4 goto .L614
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
	if r0 == 0 goto .L652
.L648:
	if r2 == r4 goto .L652
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = r3
	r4 s>>= 32
	if r3 != 0 goto .L648
.L652:
	r0 = r1
	if r4 == 0 goto .L654
.L647:
	exit
.L654:
	r0 = r4
	goto .L647
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L663
.L658:
	r1 += 4
	r2 += 4
.L663:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 != r4 goto .L657
	if r3 == 0 goto .L657
	if r4 != 0 goto .L658
.L657:
	if r4 s>= r3 goto .L661
	r0 = 1
	if r3 s> r4 goto .L660
	r0 = 0
.L660:
	r0 &= 1
	exit
.L661:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L665:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L681
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L681
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L681
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L681
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L681
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L681
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L681
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L665
.L681:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L685
	r0 = r1
.L684:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L683
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L683
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L683
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L683
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L683
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L683
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L683
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L684
	goto .L683
.L685:
	r0 = r1
.L683:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L703
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L702
	if r0 == 1 goto .L725
	if r0 == 2 goto .L726
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r9
	r5 s>>= 32
	if r9 != r4 goto .L703
	if r5 == 0 goto .L703
	r3 += -1
	r1 += 4
	r2 += 4
.L726:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r9 = r0
	r9 s>>= 32
	if r0 != r4 goto .L703
	if r9 == 0 goto .L703
	r3 += -1
	r1 += 4
	r2 += 4
.L725:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	r5 = r0
	r5 s>>= 32
	if r0 != r4 goto .L703
	if r5 == 0 goto .L703
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L703
.L702:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != r9 goto .L703
	if r0 == 0 goto .L703
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
	if r9 != r6 goto .L703
	if r7 == 0 goto .L703
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r7 = r4
	r7 s>>= 32
	if r4 != r6 goto .L703
	if r7 == 0 goto .L703
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r7 = r9
	r7 s>>= 32
	if r9 != r6 goto .L703
	if r7 == 0 goto .L703
	r3 += -1
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L702
.L703:
	if r3 == 0 goto .L707
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L708
	r0 = 1
	if r3 s> r1 goto .L706
	r0 = 0
.L706:
	r0 &= 1
	exit
.L707:
	r0 = r3
	exit
.L708:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L734
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L730
	if r0 == 1 goto .L771
	if r0 == 2 goto .L772
	if r0 == 3 goto .L773
	if r0 == 4 goto .L774
	if r0 == 5 goto .L775
	if r0 == 6 goto .L776
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L734
	r3 += -1
	r1 += 4
.L776:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L734
	r3 += -1
	r1 += 4
.L775:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L734
	r3 += -1
	r1 += 4
.L774:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L734
	r3 += -1
	r1 += 4
.L773:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L734
	r3 += -1
	r1 += 4
.L772:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L734
	r3 += -1
	r1 += 4
.L771:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L734
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L734
.L730:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L734
	r3 += -1
	r4 = r3
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L734
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L734
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L734
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L734
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L734
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L734
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L734
	r3 += -1
	r9 += 28
	r1 = r9
	if r4 != 7 goto .L730
.L734:
	r0 = r1
	if r3 == 0 goto .L780
.L729:
	exit
.L780:
	r0 = r3
	goto .L729
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L783
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L782
	if r0 == 1 goto .L825
	if r0 == 2 goto .L826
	if r0 == 3 goto .L827
	if r0 == 4 goto .L828
	if r0 == 5 goto .L829
	if r0 == 6 goto .L830
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
.L830:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
.L829:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
.L828:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
.L827:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
.L826:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
.L825:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L783
.L782:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L783
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
	if r6 != r9 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L783
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L783
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	if r5 != 7 goto .L782
.L783:
	if r3 == 0 goto .L787
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L788
	r0 = 1
	if r3 s> r1 goto .L786
	r0 = 0
.L786:
	r0 &= 1
	exit
.L787:
	r0 = r3
	exit
.L788:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L833
	r9 = r1
	r0 = r2
	r5 = r3
	r5 += -1
	r6 = r3
	r6 <<= 2
	r4 = r1
	r4 -= r2
	if r6 >= r4 goto .L834
	if r3 == 0 goto .L833
	r3 &= 7
	if r3 == 0 goto .L835
	if r3 == 1 goto .L883
	if r3 == 2 goto .L884
	if r3 == 3 goto .L885
	if r3 == 4 goto .L886
	if r3 == 5 goto .L887
	if r3 == 6 goto .L888
	r2 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r2
	r5 += -1
	r9 += 4
	r0 += 4
.L888:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r3
	r5 += -1
	r9 += 4
	r0 += 4
.L887:
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r4
	r5 += -1
	r9 += 4
	r0 += 4
.L886:
	r2 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r2
	r5 += -1
	r9 += 4
	r0 += 4
.L885:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r3
	r5 += -1
	r9 += 4
	r0 += 4
.L884:
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r4
	r5 += -1
	r9 += 4
	r0 += 4
.L883:
	r2 = *(u32 *) (r0+0)
	*(u32 *) (r9+0) = r2
	r5 += -1
	r9 += 4
	r0 += 4
	if r5 == -1 goto .L833
.L835:
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
	if r5 != -1 goto .L835
	goto .L833
.L834:
	if r3 == 0 goto .L833
	r5 <<= 2
	r2 += r5
	r3 = r1
	r3 += r5
	r5 = r2
	r5 -= r0
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L836
	if r5 == 1 goto .L889
	if r5 == 2 goto .L890
	if r5 == 3 goto .L891
	if r5 == 4 goto .L892
	if r5 == 5 goto .L893
	if r5 == 6 goto .L894
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L894:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L893:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L892:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L891:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L890:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L889:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r9 = r2
	r2 += -4
	r3 += -4
	if r0 == r9 goto .L833
.L836:
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
	if r0 != r4 goto .L836
.L833:
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
	if r3 == 0 goto .L898
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L899
	if r3 == 1 goto .L922
	if r3 == 2 goto .L923
	if r3 == 3 goto .L924
	if r3 == 4 goto .L925
	if r3 == 5 goto .L926
	if r3 == 6 goto .L927
	*(u32 *) (r1+0) = r2
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
.L922:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L898
.L899:
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
	if r4 != -1 goto .L899
.L898:
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L930
	r4 = r1
	r4 += r3
	r2 += r3
	if r3 == 0 goto .L929
	r0 = r4
	r0 -= r1
	r0 &= 7
	if r0 == 0 goto .L932
	if r0 == 1 goto .L978
	if r0 == 2 goto .L979
	if r0 == 3 goto .L980
	if r0 == 4 goto .L981
	if r0 == 5 goto .L982
	if r0 == 6 goto .L983
	r4 += -1
	r2 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r3
.L983:
	r4 += -1
	r2 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L982:
	r4 += -1
	r2 += -1
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r9
.L981:
	r4 += -1
	r2 += -1
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r0
.L980:
	r4 += -1
	r2 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r3
.L979:
	r4 += -1
	r2 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r5
.L978:
	r4 += -1
	r2 += -1
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r9
	if r1 == r4 goto .L992
.L932:
	r4 += -1
	r2 += -1
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r0
	r3 = *(u8 *) (r4+-1)
	*(u8 *) (r2+-1) = r3
	r5 = *(u8 *) (r4+-2)
	*(u8 *) (r2+-2) = r5
	r9 = *(u8 *) (r4+-3)
	*(u8 *) (r2+-3) = r9
	r0 = *(u8 *) (r4+-4)
	*(u8 *) (r2+-4) = r0
	r3 = *(u8 *) (r4+-5)
	*(u8 *) (r2+-5) = r3
	r5 = *(u8 *) (r4+-6)
	*(u8 *) (r2+-6) = r5
	r4 += -7
	r2 += -7
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r2+0) = r9
	if r1 != r4 goto .L932
	exit
.L930:
	if r1 == r2 goto .L929
	if r3 == 0 goto .L929
	r4 = r1
	r4 += r3
	r0 = r4
	r0 -= r1
	r0 &= 7
	if r0 == 0 goto .L933
	if r0 == 1 goto .L984
	if r0 == 2 goto .L985
	if r0 == 3 goto .L986
	if r0 == 4 goto .L987
	if r0 == 5 goto .L988
	if r0 == 6 goto .L989
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r3
	r1 += 1
	r2 += 1
.L989:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
.L988:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r9
	r1 += 1
	r2 += 1
.L987:
	r0 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r0
	r1 += 1
	r2 += 1
.L986:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r3
	r1 += 1
	r2 += 1
.L985:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r5
	r1 += 1
	r2 += 1
.L984:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r9
	r1 += 1
	r2 += 1
	if r1 == r4 goto .L993
.L933:
	r0 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r0
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r3
	r5 = *(u8 *) (r1+1)
	*(u8 *) (r2+1) = r5
	r9 = *(u8 *) (r1+2)
	*(u8 *) (r2+2) = r9
	r0 = *(u8 *) (r1+3)
	*(u8 *) (r2+3) = r0
	r3 = *(u8 *) (r1+4)
	*(u8 *) (r2+4) = r3
	r5 = *(u8 *) (r1+5)
	*(u8 *) (r2+5) = r5
	r9 = *(u8 *) (r1+6)
	*(u8 *) (r2+6) = r9
	r1 += 7
	r2 += 7
	if r1 != r4 goto .L933
.L929:
	exit
.L992:
	exit
.L993:
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
.L1010:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1033
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1033
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1033
	r5 = r1
	r5 >>= r0
	r5 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1033
	r9 = r1
	r9 >>= r0
	r9 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1033
	r2 = r1
	r2 >>= r0
	r2 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1033
	r3 = r1
	r3 >>= r0
	r3 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1033
	r4 = r1
	r4 >>= r0
	r4 &= 1
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1033
	if r0 != 32 goto .L1010
	r0 = r4
	exit
.L1033:
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
	if r1 == 0 goto .L1036
	r0 &= 1
	if r0 != 0 goto .L1036
	r0 = 1
.L1037:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1054
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1036
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1036
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1036
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1036
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1036
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1036
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1037
	exit
.L1054:
	exit
.L1036:
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
	if r8 s>= r0 goto .L1058
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= r8 goto .L1059
.L1057:
	r0 = r7
	r0 &= 1
	exit
.L1059:
	r7 = r8
	goto .L1057
.L1058:
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
	if r8 s>= r0 goto .L1063
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1064
.L1062:
	r0 = r7
	r0 &= 1
	exit
.L1064:
	r7 = r8
	goto .L1062
.L1063:
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
	if r8 s>= r0 goto .L1068
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= r8 goto .L1069
.L1067:
	r0 = r7
	r0 &= 1
	exit
.L1069:
	r7 = r8
	goto .L1067
.L1068:
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
	if r0 != 0 goto .L1072
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1072
	if r6 s< 0 goto .L1079
	r7 = 0x40000000 ll
	goto .L1076
.L1079:
	r7 = 0x3f000000 ll
	goto .L1076
.L1075:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1072
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1076:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1075
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1075
.L1072:
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
	if r0 != 0 goto .L1081
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1081
	if r6 s< 0 goto .L1088
	r7 = 0x4000000000000000 ll
	goto .L1085
.L1088:
	r7 = 0x3fe0000000000000 ll
	goto .L1085
.L1084:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1081
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1085:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1084
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1084
.L1081:
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
	if r0 != 0 goto .L1090
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1090
	if r6 s< 0 goto .L1097
	r7 = 0x4000000000000000 ll
	goto .L1094
.L1097:
	r7 = 0x3fe0000000000000 ll
	goto .L1094
.L1093:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1090
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1094:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1093
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1093
.L1090:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1099
	r4 = r1
	r5 = r2
	r5 += r3
	r0 = r5
	r0 -= r2
	r0 &= 7
	if r0 == 0 goto .L1100
	if r0 == 1 goto .L1123
	if r0 == 2 goto .L1124
	if r0 == 3 goto .L1125
	if r0 == 4 goto .L1126
	if r0 == 5 goto .L1127
	if r0 == 6 goto .L1128
	r9 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r9 ^= r3
	*(u8 *) (r1+0) = r9
	r2 += 1
	r4 += 1
.L1128:
	r0 = *(u8 *) (r4+0)
	r9 = *(u8 *) (r2+0)
	r0 ^= r9
	*(u8 *) (r4+0) = r0
	r2 += 1
	r4 += 1
.L1127:
	r0 = *(u8 *) (r4+0)
	r3 = *(u8 *) (r2+0)
	r0 ^= r3
	*(u8 *) (r4+0) = r0
	r2 += 1
	r4 += 1
.L1126:
	r9 = *(u8 *) (r4+0)
	r0 = *(u8 *) (r2+0)
	r9 ^= r0
	*(u8 *) (r4+0) = r9
	r2 += 1
	r4 += 1
.L1125:
	r9 = *(u8 *) (r4+0)
	r3 = *(u8 *) (r2+0)
	r9 ^= r3
	*(u8 *) (r4+0) = r9
	r2 += 1
	r4 += 1
.L1124:
	r0 = *(u8 *) (r4+0)
	r9 = *(u8 *) (r2+0)
	r0 ^= r9
	*(u8 *) (r4+0) = r0
	r2 += 1
	r4 += 1
.L1123:
	r0 = *(u8 *) (r4+0)
	r3 = *(u8 *) (r2+0)
	r0 ^= r3
	*(u8 *) (r4+0) = r0
	r2 += 1
	r4 += 1
	if r2 == r5 goto .L1099
.L1100:
	r9 = *(u8 *) (r4+0)
	r0 = *(u8 *) (r2+0)
	r9 ^= r0
	*(u8 *) (r4+0) = r9
	r2 += 1
	r4 += 1
	r9 = *(u8 *) (r4+0)
	r3 = *(u8 *) (r2+0)
	r9 ^= r3
	*(u8 *) (r4+0) = r9
	r0 = *(u8 *) (r4+1)
	r9 = *(u8 *) (r2+1)
	r0 ^= r9
	*(u8 *) (r4+1) = r0
	r0 = *(u8 *) (r4+2)
	r9 = *(u8 *) (r2+2)
	r0 ^= r9
	*(u8 *) (r4+2) = r0
	r0 = *(u8 *) (r4+3)
	r9 = *(u8 *) (r2+3)
	r0 ^= r9
	*(u8 *) (r4+3) = r0
	r0 = *(u8 *) (r4+4)
	r9 = *(u8 *) (r2+4)
	r0 ^= r9
	*(u8 *) (r4+4) = r0
	r0 = *(u8 *) (r4+5)
	r9 = *(u8 *) (r2+5)
	r0 ^= r9
	*(u8 *) (r4+5) = r0
	r0 = *(u8 *) (r4+6)
	r9 = *(u8 *) (r2+6)
	r0 ^= r9
	*(u8 *) (r4+6) = r0
	r2 += 7
	r4 += 7
	if r2 != r5 goto .L1100
.L1099:
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
	if r8 == 0 goto .L1132
	r2 = r8
	r2 &= 7
	if r2 == 0 goto .L1131
	if r2 == 1 goto .L1171
	if r2 == 2 goto .L1172
	if r2 == 3 goto .L1173
	if r2 == 4 goto .L1174
	if r2 == 5 goto .L1175
	if r2 == 6 goto .L1176
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1132
	r6 += 1
	r0 += 1
	r8 += -1
.L1176:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1132
	r6 += 1
	r0 += 1
	r8 += -1
.L1175:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1132
	r6 += 1
	r0 += 1
	r8 += -1
.L1174:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1132
	r6 += 1
	r0 += 1
	r8 += -1
.L1173:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1132
	r6 += 1
	r0 += 1
	r8 += -1
.L1172:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1132
	r6 += 1
	r0 += 1
	r8 += -1
.L1171:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1132
	r6 += 1
	r0 += 1
	r8 += -1
	if r8 == 0 goto .L1132
.L1131:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1132
	r6 += 1
	r0 += 1
	r9 = r8
	r9 += -1
	r8 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1132
	r0 += 1
	r8 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1132
	r0 += 1
	r8 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1132
	r0 += 1
	r8 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1132
	r0 += 1
	r8 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1132
	r0 += 1
	r8 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1132
	r0 += 1
	r8 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1132
	r6 += 7
	r0 += 1
	r8 += -1
	if r9 != 7 goto .L1131
.L1132:
	if r8 != 0 goto .L1134
	*(u8 *) (r0+0) = r8
.L1134:
	r0 = r7
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1226
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1179
	if r0 == 1 goto .L1220
	if r0 == 2 goto .L1221
	if r0 == 3 goto .L1222
	if r0 == 4 goto .L1223
	if r0 == 5 goto .L1224
	if r0 == 6 goto .L1225
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1178
	r3 += 1
.L1225:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 != 0 goto .L1228
.L1178:
	r0 = r3
	exit
.L1226:
	r3 = r2
	goto .L1178
.L1228:
	r3 += 1
.L1224:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1178
	r3 += 1
.L1223:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1178
	r3 += 1
.L1222:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1178
	r3 += 1
.L1221:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1178
	r3 += 1
.L1220:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1178
	r3 += 1
	if r2 == r3 goto .L1178
.L1179:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1178
	r5 = r3
	r5 += 1
	r3 = r5
	r4 = r1
	r4 += r5
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1178
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1178
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1178
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1178
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1178
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1178
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1178
	r5 += 7
	r3 = r5
	if r2 != r5 goto .L1179
	goto .L1178
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L1237:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1234
	r3 = r2
.L1233:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 == 0 goto .L1238
	r3 += 1
	if r4 != r5 goto .L1233
.L1231:
	r0 = r1
	exit
.L1238:
	r1 += 1
	goto .L1237
.L1234:
	r1 = r5
	goto .L1231
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1241
.L1240:
	r1 += 1
	if r0 == 0 goto .L1244
.L1241:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1240
	r3 = r1
	goto .L1240
.L1244:
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
	if r0 == 0 goto .L1245
	r8 = *(u8 *) (r6+0)
	r8 <<= 56
	r8 s>>= 56
.L1247:
	r2 = r8
	r1 = r7
	call	strchr
	r7 = r0
	if r0 == 0 goto .L1245
	r3 = *(u64 *) (r10+-8)
	r2 = r6
	r1 = r7
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1245
	r7 += 1
	goto .L1247
.L1245:
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
	if r0 s<= 0 goto .L1259
.L1251:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1254
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1253
.L1254:
	r0 = r6
	exit
.L1259:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1251
.L1253:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1254
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r7 = r3
	r6 = r4
	if r4 == 0 goto .L1264
	if r4 >= r2 goto .L1266
	r2 -= r4
	r3 = r1
	r3 += r2
	*(u64 *) (r10+-24) = r3
	if r1 > r3 goto .L1266
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
	if r4 == r0 goto .L1322
.L1268:
	r5 = *(u64 *) (r10+-24)
	if r5 <= r1 goto .L1266
	if r9 == 0 goto .L1263
	if r9 == 1 goto .L1307
	if r9 == 2 goto .L1308
	if r9 == 3 goto .L1309
	if r9 == 4 goto .L1310
	if r9 == 5 goto .L1311
	if r9 == 6 goto .L1312
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	r7 = r1
	r1 += 1
	if r3 == r6 goto .L1323
.L1312:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r7 = r1
	r1 += 1
	if r0 == r6 goto .L1324
.L1311:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r7 = r1
	r1 += 1
	if r2 == r6 goto .L1325
.L1310:
	r4 = *(u8 *) (r1+0)
	r4 <<= 56
	r4 s>>= 56
	r7 = r1
	r1 += 1
	if r4 == r6 goto .L1326
.L1309:
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	r7 = r1
	r1 += 1
	if r9 == r6 goto .L1327
.L1308:
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	r7 = r1
	r1 += 1
	if r5 == r6 goto .L1328
.L1307:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	r7 = r1
	r1 += 1
	if r3 != r6 goto .L1303
.L1321:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 == 0 goto .L1260
.L1303:
	r7 = *(u64 *) (r10+-24)
	if r7 <= r1 goto .L1266
.L1263:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r7 = r1
	r8 = r1
	r8 += 1
	if r0 == r6 goto .L1329
.L1305:
	r2 = *(u8 *) (r8+0)
	r2 <<= 56
	r2 s>>= 56
	r7 = r8
	r1 = r8
	r1 += 1
	if r2 == r6 goto .L1330
.L1313:
	r4 = *(u8 *) (r1+0)
	r4 <<= 56
	r4 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 2
	if r4 == r6 goto .L1331
.L1314:
	r9 = *(u8 *) (r1+0)
	r9 <<= 56
	r9 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 3
	if r9 == r6 goto .L1332
.L1315:
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 4
	if r5 == r6 goto .L1333
.L1316:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 5
	if r3 == r6 goto .L1334
.L1317:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 6
	if r0 == r6 goto .L1335
.L1318:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r7 = r1
	r1 = r8
	r1 += 7
	if r2 != r6 goto .L1303
	goto .L1321
.L1329:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r8
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1305
	goto .L1260
.L1264:
	r7 = r1
	goto .L1260
.L1266:
	r7 = 0
.L1260:
	r0 = r7
	exit
.L1322:
	*(u64 *) (r10+-40) = r9
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	r9 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L1268
	goto .L1260
.L1323:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1312
	goto .L1260
.L1324:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1311
	goto .L1260
.L1325:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1310
	goto .L1260
.L1326:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1309
	goto .L1260
.L1327:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1308
	goto .L1260
.L1328:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1307
	goto .L1260
.L1330:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1313
	goto .L1260
.L1331:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1314
	goto .L1260
.L1332:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1315
	goto .L1260
.L1333:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1316
	goto .L1260
.L1334:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1317
	goto .L1260
.L1335:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-32) = r1
	call	memcmp
	r0 <<= 32
	r1 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L1318
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
	r2 = r0
	r0 = 0
	if r0 s>= r2 goto .L1372
	*(u64 *) (r10+-8) = r0
.L1337:
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L1369
	r8 = 0
	r6 = 0x3ff0000000000000 ll
.L1341:
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
	if r0 s< 0 goto .L1342
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
	if r0 s< 0 goto .L1342
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
	if r0 s< 0 goto .L1342
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
	if r0 s>= 0 goto .L1341
.L1342:
	r3 = *(u64 *) (r10+-16)
	*(u32 *) (r3+0) = r8
	r4 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L1346
	r5 = -9223372036854775808 ll
	r5 ^= r7
	r7 = r5
.L1346:
	r0 = r7
	exit
.L1372:
	r1 = -9223372036854775808 ll
	r1 ^= r7
	r7 = r1
	*(u64 *) (r10+-8) = 1
	goto .L1337
.L1369:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	r8 = 0
	if r8 s< r0 goto .L1342
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	if r0 == r8 goto .L1342
	r6 = r8
.L1345:
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
	if r6 s< r0 goto .L1342
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
	if r6 s< r0 goto .L1342
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
	if r6 s< r0 goto .L1342
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
	if r6 s>= r0 goto .L1345
	goto .L1342
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = r1
	if r1 == 0 goto .L1373
	r1 = 0
.L1375:
	r3 = r0
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r1 += r3
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1373
	r4 = r0
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r1 += r4
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1373
	r5 = r0
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r1 += r5
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1373
	r9 = r0
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r1 += r9
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1373
	r3 = r0
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r1 += r3
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1373
	r4 = r0
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r1 += r4
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1373
	r5 = r0
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r1 += r5
	r2 += r2
	r0 >>= 1
	if r0 == 0 goto .L1373
	r9 = r0
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r1 += r9
	r2 += r2
	r0 >>= 1
	if r0 != 0 goto .L1375
.L1373:
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
	if r0 < r2 goto .L1394
	r9 = 32
	r4 = 1
.L1393:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1394
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1394
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1394
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1394
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1394
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1394
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1394
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1394
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1394
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1394
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1394
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1394
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1394
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1394
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1394
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1394
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1393
	r4 = r9
.L1394:
	r1 = 0
	if r4 != r1 goto .L1395
	r1 = r4
.L1396:
	if r3 != 0 goto .L1399
	r0 = r1
.L1399:
	exit
.L1398:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1396
.L1395:
	if r2 >= r0 goto .L1398
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L1398
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
	if r2 == r1 goto .L1422
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
.L1422:
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
	if r0 == r2 goto .L1425
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1425:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1429
	r0 = 0
.L1428:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1445
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1427
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1427
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1427
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1427
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1427
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1427
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1428
	exit
.L1445:
	exit
.L1429:
	r0 = r1
.L1427:
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
	if r1 >= r2 goto .L1447
.L1450:
	if r6 == 0 goto .L1449
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
	if r5 == 0 goto .L1453
	if r5 == 1 goto .L1530
	if r5 == 2 goto .L1531
	if r5 == 3 goto .L1532
	if r5 == 4 goto .L1533
	if r5 == 5 goto .L1534
	if r5 == 6 goto .L1535
	r5 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r5
	r0 += 8
	r4 += 8
.L1535:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
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
	if r0 == r6 goto .L1449
.L1453:
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
	if r0 != r6 goto .L1453
.L1449:
	if r9 > r3 goto .L1446
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
	if r3 == 0 goto .L1454
	if r3 == 1 goto .L1536
	if r3 == 2 goto .L1537
	if r3 == 3 goto .L1538
	if r3 == 4 goto .L1539
	if r3 == 5 goto .L1540
	if r3 == 6 goto .L1541
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1541:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1540:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1539:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1538:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1537:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1536:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1545
.L1454:
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
	if r0 != r2 goto .L1454
	exit
.L1447:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1450
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1446
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1455
	if r5 == 1 goto .L1524
	if r5 == 2 goto .L1525
	if r5 == 3 goto .L1526
	if r5 == 4 goto .L1527
	if r5 == 5 goto .L1528
	if r5 == 6 goto .L1529
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1529:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1528:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1527:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1526:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1525:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1524:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1546
.L1455:
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
	if r9 != 6 goto .L1455
.L1446:
	exit
.L1545:
	exit
.L1546:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 >= r2 goto .L1548
.L1551:
	if r9 == 0 goto .L1550
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
	if r5 == 0 goto .L1554
	if r5 == 1 goto .L1608
	if r5 == 2 goto .L1609
	if r5 == 3 goto .L1610
	if r5 == 4 goto .L1611
	if r5 == 5 goto .L1612
	if r5 == 6 goto .L1613
	r5 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r5
	r0 += 2
	r4 += 2
.L1613:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
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
	if r0 == r9 goto .L1550
.L1554:
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
	if r0 != r9 goto .L1554
.L1550:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1547
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1548:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1551
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1547
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1555
	if r5 == 1 goto .L1602
	if r5 == 2 goto .L1603
	if r5 == 3 goto .L1604
	if r5 == 4 goto .L1605
	if r5 == 5 goto .L1606
	if r5 == 6 goto .L1607
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1607:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1606:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1605:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1604:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1603:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1602:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1616
.L1555:
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
	if r9 != 6 goto .L1555
.L1547:
	exit
.L1616:
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
	if r1 >= r2 goto .L1618
.L1621:
	if r6 == 0 goto .L1620
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
	if r5 == 0 goto .L1624
	if r5 == 1 goto .L1701
	if r5 == 2 goto .L1702
	if r5 == 3 goto .L1703
	if r5 == 4 goto .L1704
	if r5 == 5 goto .L1705
	if r5 == 6 goto .L1706
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r4 += 4
.L1706:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
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
	if r0 == r6 goto .L1620
.L1624:
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
	if r0 != r6 goto .L1624
.L1620:
	if r9 > r3 goto .L1617
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
	if r3 == 0 goto .L1625
	if r3 == 1 goto .L1707
	if r3 == 2 goto .L1708
	if r3 == 3 goto .L1709
	if r3 == 4 goto .L1710
	if r3 == 5 goto .L1711
	if r3 == 6 goto .L1712
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1712:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1711:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1710:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1709:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1708:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1707:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1716
.L1625:
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
	if r0 != r2 goto .L1625
	exit
.L1618:
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1621
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1617
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1626
	if r5 == 1 goto .L1695
	if r5 == 2 goto .L1696
	if r5 == 3 goto .L1697
	if r5 == 4 goto .L1698
	if r5 == 5 goto .L1699
	if r5 == 6 goto .L1700
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1700:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1699:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1698:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1697:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1696:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1695:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1717
.L1626:
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
	if r9 != 6 goto .L1626
.L1617:
	exit
.L1716:
	exit
.L1717:
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
	if r0 != 0 goto .L1727
	r0 = r1
	r0 >>= 14
	if r0 != 0 goto .L1726
	r3 = r1
	r3 >>= 13
	if r3 != 0 goto .L1728
	r4 = r1
	r4 >>= 12
	if r4 != 0 goto .L1729
	r5 = r1
	r5 >>= 11
	if r5 != 0 goto .L1730
	r9 = r1
	r9 >>= 10
	if r9 != 0 goto .L1731
	r0 = r1
	r0 >>= 9
	if r0 != 0 goto .L1732
	r3 = r1
	r3 >>= 8
	if r3 != 0 goto .L1733
	r4 = r1
	r4 >>= 7
	if r4 != 0 goto .L1734
	r5 = r1
	r5 >>= 6
	if r5 != 0 goto .L1735
	r9 = r1
	r9 >>= 5
	if r9 != 0 goto .L1736
	r0 = r1
	r0 >>= 4
	if r0 != 0 goto .L1737
	r3 = r1
	r3 >>= 3
	if r3 != 0 goto .L1738
	r4 = r1
	r4 >>= 2
	if r4 != 0 goto .L1739
	r2 >>= 1
	if r2 != 0 goto .L1740
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L1742
.L1726:
	exit
.L1742:
	r0 = 15
	exit
.L1727:
	r0 = 0
	exit
.L1728:
	r0 = 2
	exit
.L1729:
	r0 = 3
	exit
.L1730:
	r0 = 4
	exit
.L1731:
	r0 = 5
	exit
.L1732:
	r0 = 6
	exit
.L1733:
	r0 = 7
	exit
.L1734:
	r0 = 8
	exit
.L1735:
	r0 = 9
	exit
.L1736:
	r0 = 10
	exit
.L1737:
	r0 = 11
	exit
.L1738:
	r0 = 12
	exit
.L1739:
	r0 = 13
	exit
.L1740:
	r0 = 14
	goto .L1726
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1746
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L1747
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L1748
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L1749
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L1750
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L1751
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L1752
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L1753
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L1754
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L1755
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L1756
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L1757
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L1758
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L1759
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L1760
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L1762
.L1745:
	exit
.L1762:
	r0 = 15
	exit
.L1746:
	r0 = 0
	exit
.L1747:
	r0 = 1
	exit
.L1748:
	r0 = 2
	exit
.L1749:
	r0 = 3
	exit
.L1750:
	r0 = 4
	exit
.L1751:
	r0 = 5
	exit
.L1752:
	r0 = 6
	exit
.L1753:
	r0 = 7
	exit
.L1754:
	r0 = 8
	exit
.L1755:
	r0 = 9
	exit
.L1756:
	r0 = 10
	exit
.L1757:
	r0 = 11
	exit
.L1758:
	r0 = 12
	exit
.L1759:
	r0 = 13
	exit
.L1760:
	r0 = 14
	goto .L1745
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L1769
	r1 = r6
	call	__fixsfdi
	exit
.L1769:
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
	if r1 == 0 goto .L1775
	r0 = 0
.L1774:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1791
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1773
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1773
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1773
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1773
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1773
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1773
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1774
	exit
.L1791:
	exit
.L1775:
	r0 = r1
.L1773:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1795
	if r2 == 0 goto .L1796
	r0 = 0
.L1794:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1812
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1793
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1793
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1793
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1793
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1793
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1793
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L1794
	exit
.L1812:
	exit
.L1795:
	r0 = r1
	exit
.L1796:
	r0 = r2
.L1793:
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
	if r0 < r2 goto .L1815
	r9 = 32
	r4 = 1
.L1814:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1815
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1815
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1815
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1815
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1815
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1815
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1815
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1815
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1815
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1815
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1815
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1815
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1815
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1815
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1815
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1815
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1814
	r4 = r9
.L1815:
	r1 = 0
	if r4 != r1 goto .L1816
	r1 = r4
.L1817:
	if r3 != 0 goto .L1820
	r0 = r1
.L1820:
	exit
.L1819:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1817
.L1816:
	if r2 >= r0 goto .L1819
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r5 = r4
	r5 |= r1
	r1 = r5
	goto .L1819
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	r3 = 0
	if r3 s>= r0 goto .L1844
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1845
.L1843:
	r0 = r8
	r0 &= 1
	exit
.L1845:
	r8 = 0
	goto .L1843
.L1844:
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
	if r3 s>= r0 goto .L1849
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1850
.L1848:
	r0 = r8
	r0 &= 1
	exit
.L1850:
	r8 = 0
	goto .L1848
.L1849:
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
	if r2 s< 0 goto .L1869
	r2 = 0
.L1854:
	if r3 == 0 goto .L1859
	r4 = r3
	r4 &= 1
	r4 = -r4
	r0 = r1
	r0 &= r4
	r1 <<= 33
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L1855
	r4 = 31
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
	r3 <<= 31
	r3 s>>= 32
	r5 = r3
	if r3 == 0 goto .L1855
	r4 += -1
	r4 &= 0xff
.L1856:
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
	if r3 == 0 goto .L1855
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
	if r3 == 0 goto .L1855
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
	if r3 == 0 goto .L1855
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
	if r3 == 0 goto .L1855
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
	if r3 == 0 goto .L1855
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L1856
.L1855:
	if r2 == 0 goto .L1857
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1857:
	exit
.L1869:
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r2 = 1
	goto .L1854
.L1859:
	r0 = r3
	goto .L1855
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1875
	r6 = 0
.L1871:
	if r2 s< 0 goto .L1876
.L1872:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1870
	r0 = -r0
.L1870:
	exit
.L1875:
	r1 = -r1
	r6 = 1
	goto .L1871
.L1876:
	r2 = -r2
	r6 ^= 1
	goto .L1872
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L1882
	r6 = 0
.L1878:
	r2 = r0
	if r0 s< 0 goto .L1883
.L1879:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1877
	r0 = -r0
.L1877:
	exit
.L1882:
	r1 = -r1
	r6 = 1
	goto .L1878
.L1883:
	r0 = -r0
	r2 = r0
	goto .L1879
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r0 < r2 goto .L1909
	r4 = 0
	r1 = r2
	r1 <<= 48
	if r1 s<= r4 goto .L1909
	r9 = r2
	r9 += r2
	r9 &= 0xffff
	if r9 > r0 goto .L1911
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1911
	r1 = r2
	r1 <<= 2
	r1 &= 0xffff
	if r1 > r0 goto .L1913
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L1913
	r1 = r2
	r1 <<= 3
	r1 &= 0xffff
	if r1 > r0 goto .L1915
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1915
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L1917
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L1917
	r9 = r2
	r9 <<= 5
	r9 &= 0xffff
	if r9 > r0 goto .L1919
	r5 = r9
	r5 <<= 48
	if r5 s<= r4 goto .L1919
	r1 = r2
	r1 <<= 6
	r1 &= 0xffff
	if r1 > r0 goto .L1921
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L1921
	r1 = r2
	r1 <<= 7
	r1 &= 0xffff
	if r1 > r0 goto .L1923
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1923
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L1925
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L1925
	r9 = r2
	r9 <<= 9
	r9 &= 0xffff
	if r9 > r0 goto .L1927
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1927
	r1 = r2
	r1 <<= 10
	r1 &= 0xffff
	if r1 > r0 goto .L1929
	r9 = r1
	r9 <<= 48
	if r9 s<= r4 goto .L1929
	r1 = r2
	r1 <<= 11
	r1 &= 0xffff
	if r1 > r0 goto .L1931
	r5 = r1
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1931
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L1933
	r1 = r9
	r1 <<= 48
	r1 s>>= 48
	if r4 s>= r1 goto .L1933
	r9 = r2
	r9 <<= 13
	r9 &= 0xffff
	if r9 > r0 goto .L1935
	r5 = r9
	r5 <<= 48
	r5 s>>= 48
	if r4 s>= r5 goto .L1935
	r1 = r2
	r1 <<= 14
	r1 &= 0xffff
	if r1 > r0 goto .L1937
	r9 = r1
	r9 <<= 48
	r9 s>>= 48
	if r4 s>= r9 goto .L1937
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L1957
	if r2 != r4 goto .L1957
	r2 = 0
	r4 = r2
.L1886:
	if r4 == 0 goto .L1888
	if r2 >= r0 goto .L1940
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L1891:
	r5 = r4
	r5 >>= 1
	r5 &= 0xffff
	r9 = r2
	r9 >>= 1
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1893
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1893:
	r5 = r4
	r5 >>= 2
	r5 &= 0xffff
	r9 = r2
	r9 >>= 2
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1894
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1894:
	r5 = r4
	r5 >>= 3
	r5 &= 0xffff
	r9 = r2
	r9 >>= 3
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1895
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1895:
	r5 = r4
	r5 >>= 4
	r5 &= 0xffff
	r9 = r2
	r9 >>= 4
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1896
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1896:
	r5 = r4
	r5 >>= 5
	r5 &= 0xffff
	r9 = r2
	r9 >>= 5
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1897
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1897:
	r5 = r4
	r5 >>= 6
	r5 &= 0xffff
	r9 = r2
	r9 >>= 6
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1898
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1898:
	r5 = r4
	r5 >>= 7
	r5 &= 0xffff
	r9 = r2
	r9 >>= 7
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1899
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1899:
	r5 = r4
	r5 >>= 8
	r5 &= 0xffff
	r9 = r2
	r9 >>= 8
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1900
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1900:
	r5 = r4
	r5 >>= 9
	r5 &= 0xffff
	r9 = r2
	r9 >>= 9
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1901
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1901:
	r5 = r4
	r5 >>= 10
	r5 &= 0xffff
	r9 = r2
	r9 >>= 10
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1902
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1902:
	r5 = r4
	r5 >>= 11
	r5 &= 0xffff
	r9 = r2
	r9 >>= 11
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1903
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1903:
	r5 = r4
	r5 >>= 12
	r5 &= 0xffff
	r9 = r2
	r9 >>= 12
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1904
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1904:
	r5 = r4
	r5 >>= 13
	r5 &= 0xffff
	r9 = r2
	r9 >>= 13
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1905
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1905:
	r5 = r4
	r5 >>= 14
	r5 &= 0xffff
	r9 = r2
	r9 >>= 14
	r9 &= 0xffff
	if r5 == 0 goto .L1955
	if r9 >= r0 goto .L1906
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1906:
	r2 >>= 15
	r2 &= 0xffff
	r4 >>= 15
	r4 &= 0xffff
	if r4 == 0 goto .L1955
	if r2 >= r0 goto .L1955
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r4 = r1
	r4 &= 0xffff
	goto .L1888
.L1957:
	r4 = 32768
	goto .L1886
.L1909:
	r4 = 1
	goto .L1886
.L1911:
	r2 = r9
	r4 = 2
	goto .L1886
.L1913:
	r2 = r1
	r4 = 4
	goto .L1886
.L1915:
	r2 = r1
	r4 = 8
	goto .L1886
.L1917:
	r2 = r9
	r4 = 16
	goto .L1886
.L1919:
	r2 = r9
	r4 = 32
	goto .L1886
.L1921:
	r2 = r1
	r4 = 64
	goto .L1886
.L1923:
	r2 = r1
	r4 = 128
	goto .L1886
.L1925:
	r2 = r9
	r4 = 256
	goto .L1886
.L1927:
	r2 = r9
	r4 = 512
	goto .L1886
.L1929:
	r2 = r1
	r4 = 1024
	goto .L1886
.L1931:
	r2 = r1
	r4 = 2048
	goto .L1886
.L1933:
	r2 = r9
	r4 = 4096
	goto .L1886
.L1935:
	r2 = r9
	r4 = 8192
	goto .L1886
.L1937:
	r2 = r1
	r4 = 16384
	goto .L1886
.L1940:
	r1 = 0
	goto .L1891
.L1955:
	r4 = r1
.L1888:
	if r3 != 0 goto .L1908
	r0 = r4
.L1908:
	exit
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L1960
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L1959:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1960
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1960
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1960
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1960
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1960
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1960
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1960
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1960
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1960
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1960
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1960
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1960
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1960
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1960
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1960
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1960
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L1959
	r4 = r0
.L1960:
	r0 = 0
	if r4 != r0 goto .L1961
	r0 = r4
.L1962:
	if r3 != 0 goto .L1987
.L1958:
	exit
.L1964:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1962
.L1961:
	if r2 >= r1 goto .L1964
	r1 -= r2
	r0 |= r4
	goto .L1964
.L1987:
	r0 = r1
	goto .L1958
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1989
	r2 += -32
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = 0
.L1990:
	r3 <<= 32
	r0 |= r3
	exit
.L1989:
	if r2 == 0 goto .L1992
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
	goto .L1990
.L1992:
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
	if r0 == 0 goto .L1994
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L1994:
	if r3 == 0 goto .L1997
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
.L1997:
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
	if r0 == 0 goto .L1999
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
.L2000:
	r0 <<= 32
	r0 |= r9
	exit
.L1999:
	if r2 == 0 goto .L2002
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
	goto .L2000
.L2002:
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
	if r0 == 0 goto .L2004
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L2004:
	if r3 == 0 goto .L2007
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
.L2007:
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
	if r1 <= 65534 goto .L2011
	r0 = 0
.L2011:
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
	if r3 != 0 goto .L2013
	r5 -= r1
	r4 = r5
.L2013:
	r0 += r9
	r0 += r4
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r3 = r1
	r6 = 1
	if r2 == 0 goto .L2015
	r6 = 0
.L2015:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	r0 = 1
	if r2 == 0 goto .L2018
	r0 = 0
.L2018:
	r0 &= 0xff
	if r0 == 0 goto .L2017
	r0 = r3
.L2017:
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
	if r0 s>= r3 goto .L2023
	if r3 s> r0 goto .L2024
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2023
	if r1 > r2 goto .L2024
	r0 = 1
	exit
.L2023:
	r0 = 0
	exit
.L2024:
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
	if r4 s>= r2 goto .L2030
	if r2 s> r4 goto .L2031
	if r3 >= r1 goto .L2030
	if r1 > r3 goto .L2031
	r0 = 1
	exit
.L2030:
	r0 = 0
	exit
.L2031:
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
	r3 = r1
	r6 = 1
	if r1 == 0 goto .L2034
	r6 = 0
.L2034:
	r6 &= 0xff
	r0 = 1
	if r1 == 0 goto .L2037
	r0 = 0
.L2037:
	r0 &= 0xff
	if r0 == 0 goto .L2035
	r1 = r2
.L2036:
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
.L2035:
	r1 = r0
	goto .L2036
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2039
	if r2 == 0 goto .L2041
	r1 = r2
	call	__ctzdi2
	r0 <<= 32
	r2 = 279172874240 ll
	r0 += r2
	r0 s>>= 32
	exit
.L2039:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2041:
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
	if r0 == 0 goto .L2043
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
.L2044:
	r0 <<= 32
	r0 |= r3
	exit
.L2043:
	if r2 == 0 goto .L2046
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
	goto .L2044
.L2046:
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
	if r0 == 0 goto .L2048
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2048:
	if r3 == 0 goto .L2051
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
.L2051:
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
	r4 = 0
	r0 = r1
	r0 = -r0
	r3 = 1
	if r0 > r4 goto .L2058
	r3 = r4
.L2058:
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
	if r9 > r0 goto .L2065
	r3 = 0
.L2065:
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
	if r0 >= r4 goto .L2066
	r9 = 0
.L2066:
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
	if r1 >= r2 goto .L2067
	r0 = 0
.L2067:
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
	goto .L2071
.L2069:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2070
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2071:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2069
	r2 = r6
	r1 = r7
	call	__muldf3
	r7 = r0
	goto .L2069
.L2070:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2073
.L2068:
	r0 = r7
	exit
.L2073:
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
	goto .L2068
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
	goto .L2077
.L2075:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L2076
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2077:
	r0 = r8
	r0 &= 1
	if r0 == 0 goto .L2075
	r2 = r6
	r1 = r7
	call	__mulsf3
	r7 = r0
	goto .L2075
.L2076:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2079
.L2074:
	r0 = r7
	exit
.L2079:
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
	goto .L2074
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2084
	if r3 > r0 goto .L2085
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2084
	if r1 > r2 goto .L2085
	r0 = 1
	exit
.L2084:
	r0 = 0
	exit
.L2085:
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
	if r4 >= r2 goto .L2091
	if r2 > r4 goto .L2092
	if r3 >= r1 goto .L2091
	if r1 > r3 goto .L2092
	r0 = 1
	exit
.L2091:
	r0 = 0
	exit
.L2092:
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
