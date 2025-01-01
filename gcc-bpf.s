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
	if r4 == 0 goto .L114
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
	if r5 == r3 goto .L116
	r4 += -1
	r2 += 1
	r1 += 1
.L113:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L116
	r4 += -1
	r2 += 1
	r1 += 1
.L112:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L116
	r4 += -1
	r2 += 1
	r1 += 1
.L111:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L116
	r4 += -1
	r2 += 1
	r1 += 1
.L110:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L116
	r4 += -1
	r2 += 1
	r1 += 1
.L109:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r0 == r3 goto .L116
	r4 += -1
	r2 += 1
	r1 += 1
.L108:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r5 == r3 goto .L116
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L71
.L67:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r9 == r3 goto .L116
	r4 += -1
	r9 = r4
	r5 = r2
	r5 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r2 == r3 goto .L116
	r1 += 1
	r4 = *(u8 *) (r5+1)
	*(u8 *) (r1+0) = r4
	if r4 == r3 goto .L116
	r1 += 1
	r2 = *(u8 *) (r5+2)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L116
	r1 += 1
	r4 = *(u8 *) (r5+3)
	*(u8 *) (r1+0) = r4
	if r4 == r3 goto .L116
	r1 += 1
	r2 = *(u8 *) (r5+4)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L116
	r1 += 1
	r4 = *(u8 *) (r5+5)
	*(u8 *) (r1+0) = r4
	if r4 == r3 goto .L116
	r1 += 1
	r2 = *(u8 *) (r5+6)
	*(u8 *) (r1+0) = r2
	if r2 == r3 goto .L116
	r4 = r9
	r4 += -7
	r2 = r5
	r2 += 7
	r0 += 7
	r1 = r0
	if r9 != 7 goto .L67
.L71:
	r0 = 0
	exit
.L114:
	r0 = 0
	exit
.L116:
	r0 = r1
	r0 += 1
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L164
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L118
	if r0 == 1 goto .L158
	if r0 == 2 goto .L159
	if r0 == 3 goto .L160
	if r0 == 4 goto .L161
	if r0 == 5 goto .L162
	if r0 == 6 goto .L163
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L166
	r1 += 1
	r3 += -1
.L163:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L166
	r1 += 1
	r3 += -1
.L162:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L166
	r1 += 1
	r3 += -1
.L161:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L166
	r1 += 1
	r3 += -1
.L160:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L166
	r1 += 1
	r3 += -1
.L159:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L166
	r1 += 1
	r3 += -1
.L158:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L166
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L121
.L118:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L166
	r5 = r1
	r5 += 1
	r1 = r5
	r3 += -1
	r4 = r3
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L166
	r1 += 1
	r9 = *(u8 *) (r5+1)
	if r9 == r2 goto .L166
	r1 += 1
	r0 = *(u8 *) (r5+2)
	if r0 == r2 goto .L166
	r1 += 1
	r3 = *(u8 *) (r5+3)
	if r3 == r2 goto .L166
	r1 += 1
	r9 = *(u8 *) (r5+4)
	if r9 == r2 goto .L166
	r1 += 1
	r0 = *(u8 *) (r5+5)
	if r0 == r2 goto .L166
	r1 += 1
	r3 = *(u8 *) (r5+6)
	if r3 == r2 goto .L166
	r5 += 7
	r1 = r5
	r3 = r4
	r3 += -7
	if r4 != 7 goto .L118
.L121:
	r0 = 0
	exit
.L164:
	r0 = 0
	exit
.L166:
	r0 = r1
	exit
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L215
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
	if r4 != r5 goto .L218
	r3 += -1
	r1 += 1
	r2 += 1
.L214:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L218
	r3 += -1
	r1 += 1
	r2 += 1
.L213:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L218
	r3 += -1
	r1 += 1
	r2 += 1
.L212:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L218
	r3 += -1
	r1 += 1
	r2 += 1
.L211:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L218
	r3 += -1
	r1 += 1
	r2 += 1
.L210:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L218
	r3 += -1
	r1 += 1
	r2 += 1
.L209:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L218
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L172
.L168:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L218
	r3 += -1
	r5 = r3
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r9 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r0+0)
	if r9 != r3 goto .L218
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+1)
	r3 = *(u8 *) (r0+1)
	if r9 != r3 goto .L218
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+2)
	r3 = *(u8 *) (r0+2)
	if r9 != r3 goto .L218
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+3)
	r3 = *(u8 *) (r0+3)
	if r9 != r3 goto .L218
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+4)
	r3 = *(u8 *) (r0+4)
	if r9 != r3 goto .L218
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+5)
	r3 = *(u8 *) (r0+5)
	if r9 != r3 goto .L218
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r4+6)
	r9 = *(u8 *) (r0+6)
	if r4 != r9 goto .L218
	r3 = r5
	r3 += -7
	r1 += 1
	r0 += 7
	r2 = r0
	if r5 != 7 goto .L168
.L172:
	r0 = 0
	exit
.L215:
	r0 = 0
	exit
.L218:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
	.size	memcmp, .-memcmp
	.align	3
	.global	memcpy
	.type	memcpy, @function
memcpy:
	if r3 == 0 goto .L220
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r1
	r3 ^= -1
	r3 += r4
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L221
	if r3 == 1 goto .L244
	if r3 == 2 goto .L245
	if r3 == 3 goto .L246
	if r3 == 4 goto .L247
	if r3 == 5 goto .L248
	if r3 == 6 goto .L249
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r2 += 1
.L249:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L248:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L247:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
.L246:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L245:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L244:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
	if r0 == r4 goto .L220
.L221:
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
	if r0 != r4 goto .L221
.L220:
	r0 = r1
	exit
	.size	memcpy, .-memcpy
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
	if r4 == 0 goto .L252
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L251
	if r4 == 1 goto .L252
	if r4 == 2 goto .L266
	if r4 == 3 goto .L264
	if r4 == 4 goto .L262
	if r4 == 5 goto .L260
	if r4 == 6 goto .L258
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L251
.L258:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L251
.L260:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L251
.L262:
	r3 = r0
	r0 += -1
	r9 = *(u8 *) (r3+0)
	if r9 == r2 goto .L251
.L264:
	r3 = r0
	r0 += -1
	r4 = *(u8 *) (r3+0)
	if r4 == r2 goto .L251
.L266:
	r3 = r0
	r0 += -1
	r5 = *(u8 *) (r3+0)
	if r5 == r2 goto .L251
.L252:
	if r0 == r1 goto .L278
	r3 = r0
	r9 = r0
	r9 += -1
	r0 = *(u8 *) (r0+0)
	if r0 == r2 goto .L251
	r3 = r9
	r4 = r9
	r4 += -1
	r5 = *(u8 *) (r9+0)
	if r5 == r2 goto .L251
	r3 = r4
	r5 = r9
	r5 += -2
	r0 = *(u8 *) (r4+0)
	if r0 == r2 goto .L251
	r3 = r5
	r4 = r9
	r4 += -3
	r5 = *(u8 *) (r5+0)
	if r5 == r2 goto .L251
	r3 = r4
	r5 = r9
	r5 += -4
	r0 = *(u8 *) (r4+0)
	if r0 == r2 goto .L251
	r3 = r5
	r4 = r9
	r4 += -5
	r5 = *(u8 *) (r5+0)
	if r5 == r2 goto .L251
	r3 = r4
	r5 = r9
	r5 += -6
	r0 = *(u8 *) (r4+0)
	if r0 == r2 goto .L251
	r3 = r5
	r0 = r9
	r0 += -7
	r9 = *(u8 *) (r5+0)
	if r9 != r2 goto .L252
	goto .L251
.L278:
	r3 = 0
.L251:
	r0 = r3
	exit
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L280
	r4 = r1
	r4 += r3
	r0 = r1
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L281
	if r3 == 1 goto .L304
	if r3 == 2 goto .L305
	if r3 == 3 goto .L306
	if r3 == 4 goto .L307
	if r3 == 5 goto .L308
	if r3 == 6 goto .L309
	*(u8 *) (r1+0) = r2
	r0 += 1
.L309:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L308:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L307:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L306:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L305:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L304:
	*(u8 *) (r0+0) = r2
	r0 += 1
	if r4 == r0 goto .L280
.L281:
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
	if r4 != r0 goto .L281
.L280:
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
	if r1 == 0 goto .L312
.L313:
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L312
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L312
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L312
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L312
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L312
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L312
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L312
	r2 += 7
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
	r2 &= 0xff
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r4 = r0
	r4 s>>= 56
	if r0 == 0 goto .L335
.L330:
	r4 &= 0xff
	if r4 == r2 goto .L336
	r1 += 1
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 != 0 goto .L330
	r0 = r1
	exit
.L335:
	r0 = r1
	exit
.L336:
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
.L339:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r2 goto .L338
	r0 += 1
	if r3 != 0 goto .L339
	r0 = 0
.L338:
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
	if r0 != r3 goto .L343
.L342:
	if r0 == 0 goto .L343
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	if r0 == r3 goto .L342
.L343:
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
	if r0 == 0 goto .L349
	r2 = r1
.L348:
	r4 = r2
	r4 += 1
	r2 = r4
	r3 = *(u8 *) (r4+0)
	if r3 == 0 goto .L347
	r2 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L347
	r2 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L347
	r2 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L347
	r2 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L347
	r2 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L347
	r2 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L347
	r2 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L348
	goto .L347
.L349:
	r2 = r1
.L347:
	r0 = r2
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L370
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
	r3 += -1
	r5 = r1
	r5 += r3
	r3 &= 7
	if r3 == 0 goto .L368
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	if r4 != r0 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
	if r3 == 1 goto .L368
	if r3 == 2 goto .L406
	if r3 == 3 goto .L407
	if r3 == 4 goto .L408
	if r3 == 5 goto .L409
	if r3 == 6 goto .L410
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L367
	if r3 != r0 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
.L410:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L367
	if r9 != r0 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
.L409:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	if r4 != r0 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
.L408:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L367
	if r3 != r0 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
.L407:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L367
	if r9 != r0 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
.L406:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	if r4 != r0 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
.L368:
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L367
	if r1 == r5 goto .L367
	if r3 != r0 goto .L367
	r9 = r1
	r9 += 1
	r2 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L367
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L367
	if r1 != r0 goto .L367
	r2 += 1
	r0 = *(u8 *) (r9+1)
	if r0 == 0 goto .L367
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L367
	if r3 != r0 goto .L367
	r2 += 1
	r0 = *(u8 *) (r9+2)
	if r0 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	if r4 != r0 goto .L367
	r2 += 1
	r0 = *(u8 *) (r9+3)
	if r0 == 0 goto .L367
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L367
	if r1 != r0 goto .L367
	r2 += 1
	r0 = *(u8 *) (r9+4)
	if r0 == 0 goto .L367
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L367
	if r3 != r0 goto .L367
	r2 += 1
	r0 = *(u8 *) (r9+5)
	if r0 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	if r4 != r0 goto .L367
	r2 += 1
	r0 = *(u8 *) (r9+6)
	if r0 == 0 goto .L367
	r1 = *(u8 *) (r2+0)
	if r1 == 0 goto .L367
	if r1 != r0 goto .L367
	r1 = r9
	r1 += 7
	r2 += 1
	r0 = *(u8 *) (r9+7)
	if r0 != 0 goto .L368
.L367:
	r2 = *(u8 *) (r2+0)
	r0 -= r2
	exit
.L370:
	r0 = 0
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L413
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
	if r3 == 0 goto .L415
	if r3 == 1 goto .L438
	if r3 == 2 goto .L439
	if r3 == 3 goto .L440
	if r3 == 4 goto .L441
	if r3 == 5 goto .L442
	if r3 == 6 goto .L443
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L443:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L442:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L441:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L440:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L439:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L438:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L445
.L415:
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
	if r0 != r5 goto .L415
.L413:
	exit
.L445:
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
	if r2 <= 24 goto .L447
	r1 = 0
.L447:
	r0 = r1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 126 goto .L449
	r0 = 0
.L449:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L452
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L452:
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
	if r1 <= 30 goto .L455
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L455:
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
	if r1 <= 8 goto .L457
	r0 = 0
.L457:
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
	if r1 <= 92 goto .L459
	r0 = 0
.L459:
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
	if r1 <= 24 goto .L461
	r0 = 0
.L461:
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
	if r1 <= 93 goto .L463
	r0 = 0
.L463:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L467
	r1 += -9
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 3 goto .L466
	r0 = 0
.L466:
	r0 &= 1
	exit
.L467:
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
	if r1 <= 24 goto .L469
	r0 = 0
.L469:
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
	if r1 <= 30 goto .L473
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L474
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L475
	r0 += -65529
	r9 = 1
	r5 = r0;r5 &= 0xffffffff
	if r5 <= 1 goto .L472
	r9 = 0
.L472:
	r0 = r9
	r0 &= 1
	exit
.L473:
	r0 = 1
	exit
.L474:
	r0 = 1
	exit
.L475:
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
	if r1 <= 8 goto .L477
	r0 = 0
.L477:
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
	if r1 <= 254 goto .L486
	if r1 <= 8230 goto .L482
	r2 = r1
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L483
	r4 = r1
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L484
	r1 += -65532
	r1 = r1;r1 &= 0xffffffff
	if r1 > 1048579 goto .L485
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L486:
	r0 += 1
	r9 = 1
	r0 &= 127
	if r0 s> 32 goto .L480
	r9 = 0
.L480:
	r0 = r9
	r0 &= 1
	exit
.L482:
	r0 = 1
	exit
.L483:
	r0 = 1
	exit
.L484:
	r0 = 1
	exit
.L485:
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
	if r2 <= 8 goto .L490
	r1 |= 32
	r1 += -97
	r0 = 1
	r1 = r1;r1 &= 0xffffffff
	if r1 <= 4 goto .L489
	r0 = 0
.L489:
	r0 &= 1
	exit
.L490:
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
	if r0 != 0 goto .L495
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L496
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L499
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L495:
	r0 = r6
	exit
.L496:
	r0 = r7
	exit
.L499:
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
	if r0 != 0 goto .L503
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L504
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L507
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L503:
	r0 = r6
	exit
.L504:
	r0 = r7
	exit
.L507:
	r0 = 0x00000000 ll
	exit
	.size	fdimf, .-fdimf
	.align	3
	.global	fmax
	.type	fmax, @function
fmax:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L514
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L515
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L510
	if r0 == 0 goto .L516
	r0 = r7
	exit
.L510:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L513
	r8 = 0
.L513:
	r8 &= 0xff
	if r8 == 0 goto .L512
	r6 = r7
.L512:
	r0 = r6
	exit
.L514:
	r0 = r7
	exit
.L515:
	r0 = r6
	exit
.L516:
	r0 = r6
	exit
	.size	fmax, .-fmax
	.align	3
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L523
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L524
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L519
	if r2 == 0 goto .L525
	r0 = r7
	exit
.L519:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L522
	r8 = 0
.L522:
	r8 &= 0xff
	if r8 == 0 goto .L521
	r6 = r7
.L521:
	r0 = r6
	exit
.L523:
	r0 = r7
	exit
.L524:
	r0 = r6
	exit
.L525:
	r0 = r6
	exit
	.size	fmaxf, .-fmaxf
	.align	3
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	r6 = r1
	r7 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L532
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L533
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L528
	if r0 == 0 goto .L534
	r0 = r7
	exit
.L528:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L531
	r8 = 0
.L531:
	r8 &= 0xff
	if r8 == 0 goto .L530
	r6 = r7
.L530:
	r0 = r6
	exit
.L532:
	r0 = r7
	exit
.L533:
	r0 = r6
	exit
.L534:
	r0 = r6
	exit
	.size	fmaxl, .-fmaxl
	.align	3
	.global	fmin
	.type	fmin, @function
fmin:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L541
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L542
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L537
	if r0 == 0 goto .L543
	r0 = r7
	exit
.L537:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L540
	r8 = 0
.L540:
	r8 &= 0xff
	if r8 == 0 goto .L539
	r6 = r7
.L539:
	r0 = r6
	exit
.L541:
	r0 = r6
	exit
.L542:
	r0 = r7
	exit
.L543:
	r0 = r6
	exit
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L550
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L551
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L546
	if r2 == 0 goto .L552
	r0 = r7
	exit
.L546:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s<= 0 goto .L549
	r8 = 0
.L549:
	r8 &= 0xff
	if r8 == 0 goto .L548
	r6 = r7
.L548:
	r0 = r6
	exit
.L550:
	r0 = r6
	exit
.L551:
	r0 = r7
	exit
.L552:
	r0 = r6
	exit
	.size	fminf, .-fminf
	.align	3
	.global	fminl
	.type	fminl, @function
fminl:
	r7 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L559
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L560
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L555
	if r0 == 0 goto .L561
	r0 = r7
	exit
.L555:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L558
	r8 = 0
.L558:
	r8 &= 0xff
	if r8 == 0 goto .L557
	r6 = r7
.L557:
	r0 = r6
	exit
.L559:
	r0 = r6
	exit
.L560:
	r0 = r7
	exit
.L561:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r1 = r1;r1 &= 0xffffffff
	if r1 == 0 goto .L565
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
	if r1 == 0 goto .L563
	r4 = r1
	r4 &= 63
	r0 = r2
	r0 += r4
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r3
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L563
	r5 = r1
	r5 &= 63
	r9 = r2
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L563
	r3 = r1
	r3 &= 63
	r5 = r2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L563
	r3 = r1
	r3 &= 63
	r4 = r2
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L563
	r2 += r1
	r1 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L563:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
.L565:
	r0 = s.0 ll
	goto .L563
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
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
	if r2 == 0 goto .L586
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L583
	*(u64 *) (r2+8) = r1
.L583:
	exit
.L586:
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
	if r0 == 0 goto .L588
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L588:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L587
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L587:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L592
.L591:
	exit
.L592:
	r1 = -r1
	r0 = r1
	goto .L591
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r7 = r1
.L594:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r1 = r0
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	if r1 == 0 goto .L618
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
	if r2 == 0 goto .L618
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r3 = r0
	r3 <<= 32
	r0 = r3
	r0 s>>= 32
	if r3 == 0 goto .L618
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r4 = r0
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 == 0 goto .L618
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r5 = r0
	r5 <<= 32
	r0 = r5
	r0 s>>= 32
	if r5 == 0 goto .L618
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r9 = r0
	r9 <<= 32
	r0 = r9
	r0 s>>= 32
	if r9 == 0 goto .L618
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r1 = r0
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	if r1 == 0 goto .L618
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r2 = r0
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	if r2 == 0 goto .L618
	r7 += 1
	goto .L594
.L618:
	if r6 == 43 goto .L601
	if r6 != 45 goto .L602
	r3 = 1
.L596:
	r7 += 1
.L597:
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	r1 s>>= 56
	r4 = r1
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r9 = 9
	if r5 > 8 goto .L599
.L598:
	r2 = r0
	r2 <<= 2
	r0 += r2
	r0 <<= 33
	r0 s>>= 32
	r7 += 1
	r1 += -48
	r1 <<= 56
	r1 s>>= 56
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	r1 s>>= 56
	r4 = r1
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r9 <= r5 goto .L599
	r2 = r0
	r2 <<= 2
	r0 += r2
	r0 <<= 33
	r0 s>>= 32
	r1 += -48
	r1 <<= 56
	r1 s>>= 56
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r7+1)
	r1 <<= 56
	r1 s>>= 56
	r4 = r1
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r9 <= r5 goto .L599
	r2 = r0
	r2 <<= 2
	r0 += r2
	r0 <<= 33
	r0 s>>= 32
	r1 += -48
	r1 <<= 56
	r1 s>>= 56
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r7+2)
	r1 <<= 56
	r1 s>>= 56
	r4 = r1
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r9 <= r5 goto .L599
	r2 = r0
	r2 <<= 2
	r0 += r2
	r0 <<= 33
	r0 s>>= 32
	r7 += 3
	r1 += -48
	r1 <<= 56
	r1 s>>= 56
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	r1 s>>= 56
	r4 = r1
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r9 > r5 goto .L598
.L599:
	if r3 != 0 goto .L600
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L600:
	exit
.L601:
	r3 = r0
	goto .L596
.L602:
	r3 = r0
	goto .L597
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r7 = r1
.L620:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L643
	r7 += 1
	r8 = r7
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L643
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L643
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L643
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L643
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L643
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L643
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L643
	r7 += 1
	goto .L620
.L643:
	if r6 == 43 goto .L622
	if r6 != 45 goto .L623
	r1 = 1
.L622:
	r7 += 1
.L623:
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r3 = 0
	r2 = 9
	if r5 > 8 goto .L625
.L624:
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r7 += 1
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r2 <= r5 goto .L625
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r7+1)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r2 <= r5 goto .L625
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r7+2)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r2 <= r5 goto .L625
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r7 += 3
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r2 > r5 goto .L624
.L625:
	if r1 != 0 goto .L619
	r3 = -r3
.L619:
	r0 = r3
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r7 = r1
.L645:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L668
	r7 += 1
	r8 = r7
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L668
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L668
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L668
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L668
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L668
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L668
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L668
	r7 += 1
	goto .L645
.L668:
	if r6 == 43 goto .L647
	if r6 != 45 goto .L648
	r1 = 1
.L647:
	r7 += 1
.L648:
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r3 = 0
	r2 = 9
	if r5 > 8 goto .L650
.L649:
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r7 += 1
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r2 <= r5 goto .L650
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r7+1)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r2 <= r5 goto .L650
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r7+2)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r2 <= r5 goto .L650
	r9 = r3
	r9 <<= 2
	r9 += r3
	r9 += r9
	r7 += 3
	r0 += -48
	r0 <<= 56
	r0 s>>= 56
	r3 = r9
	r3 -= r0
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	if r2 > r5 goto .L649
.L650:
	if r1 != 0 goto .L644
	r3 = -r3
.L644:
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
	if r1 s< 0 goto .L672
.L671:
	exit
.L672:
	r0 = -r0
	goto .L671
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
	if r1 s< 0 goto .L676
.L675:
	exit
.L676:
	r0 = -r0
	goto .L675
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
	if r1 s< 0 goto .L680
.L679:
	exit
.L680:
	r0 = -r0
	goto .L679
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
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r0 = r3
	r0 s>>= 32
	if r3 == 0 goto .L688
.L683:
	if r2 == r0 goto .L689
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L683
	r0 = 0
	exit
.L688:
	r0 = 0
	exit
.L689:
	r0 = r1
	exit
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
	if r3 != r4 goto .L692
.L691:
	if r3 == 0 goto .L692
	if r4 == 0 goto .L692
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 == r4 goto .L691
.L692:
	if r4 s>= r3 goto .L696
	r0 = 1
	if r3 s> r4 goto .L695
	r0 = 0
.L695:
	r0 &= 1
	exit
.L696:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L699:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L715
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L715
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L715
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L715
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L715
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L715
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L715
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L699
.L715:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L719
	r0 = r1
.L718:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L717
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L717
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L717
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L717
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L717
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L717
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L717
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L718
	goto .L717
.L719:
	r0 = r1
.L717:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L761
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L736
	if r0 == 1 goto .L759
	if r0 == 2 goto .L760
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 = r9
	r5 s>>= 32
	if r4 != r9 goto .L738
	if r5 == 0 goto .L738
	r3 += -1
	r1 += 4
	r2 += 4
.L760:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 = r0
	r4 s>>= 32
	if r9 != r0 goto .L738
	if r4 == 0 goto .L738
	r3 += -1
	r1 += 4
	r2 += 4
.L759:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r0
	r5 s>>= 32
	if r9 != r0 goto .L738
	if r5 == 0 goto .L738
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L742
.L736:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r9 = r0
	r9 s>>= 32
	if r4 != r0 goto .L738
	if r9 == 0 goto .L738
	r3 += -1
	r5 = r3
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	r6 = r3
	r6 s>>= 32
	if r9 != r3 goto .L738
	if r6 == 0 goto .L738
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r6 = r4
	r6 s>>= 32
	if r3 != r4 goto .L738
	if r6 == 0 goto .L738
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r6 = r4
	r6 s>>= 32
	if r9 != r4 goto .L738
	if r6 == 0 goto .L738
	r3 = r5
	r3 += -3
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L736
.L742:
	r0 = 0
	exit
.L761:
	r0 = 0
	exit
.L741:
	r0 = 1
	if r5 s> r1 goto .L740
	r0 = 0
.L740:
	r0 &= 1
	exit
.L738:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r5 s>= r1 goto .L741
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L812
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L766
	if r0 == 1 goto .L806
	if r0 == 2 goto .L807
	if r0 == 3 goto .L808
	if r0 == 4 goto .L809
	if r0 == 5 goto .L810
	if r0 == 6 goto .L811
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L814
	r3 += -1
	r1 += 4
.L811:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L814
	r3 += -1
	r1 += 4
.L810:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L814
	r3 += -1
	r1 += 4
.L809:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L814
	r3 += -1
	r1 += 4
.L808:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L814
	r3 += -1
	r1 += 4
.L807:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L814
	r3 += -1
	r1 += 4
.L806:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L814
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L769
.L766:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L814
	r3 += -1
	r4 = r3
	r5 = r1
	r5 += 4
	r1 = r5
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L814
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L814
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L814
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L814
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L814
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L814
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L814
	r3 = r4
	r3 += -7
	r5 += 28
	r1 = r5
	if r4 != 7 goto .L766
.L769:
	r0 = 0
	exit
.L812:
	r0 = 0
	exit
.L814:
	r0 = r1
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L865
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L816
	if r0 == 1 goto .L859
	if r0 == 2 goto .L860
	if r0 == 3 goto .L861
	if r0 == 4 goto .L862
	if r0 == 5 goto .L863
	if r0 == 6 goto .L864
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L868
	r3 += -1
	r1 += 4
	r2 += 4
.L864:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L868
	r3 += -1
	r1 += 4
	r2 += 4
.L863:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L868
	r3 += -1
	r1 += 4
	r2 += 4
.L862:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L868
	r3 += -1
	r1 += 4
	r2 += 4
.L861:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L868
	r3 += -1
	r1 += 4
	r2 += 4
.L860:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L868
	r3 += -1
	r1 += 4
	r2 += 4
.L859:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L868
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L822
.L816:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L868
	r3 += -1
	r9 = r3
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r5 = *(u32 *) (r0+0)
	r5 <<= 32
	if r5 != r3 goto .L868
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r4 goto .L868
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L868
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r3 goto .L868
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r3 goto .L868
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r4 goto .L868
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L868
	r3 = r9
	r3 += -7
	r1 += 4
	r0 += 28
	r2 = r0
	if r9 != 7 goto .L816
.L822:
	r0 = 0
	exit
.L865:
	r0 = 0
	exit
.L821:
	r0 = 1
	if r9 s> r1 goto .L820
	r0 = 0
.L820:
	r0 &= 1
	exit
.L868:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r9 s>= r1 goto .L821
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r4 = r3
	r4 += -1
	if r3 == 0 goto .L870
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L871
	if r3 == 1 goto .L894
	if r3 == 2 goto .L895
	if r3 == 3 goto .L896
	if r3 == 4 goto .L897
	if r3 == 5 goto .L898
	if r3 == 6 goto .L899
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
.L899:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r4 += -1
	r0 += 4
	r2 += 4
.L898:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r4 += -1
	r0 += 4
	r2 += 4
.L897:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
.L896:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r4 += -1
	r0 += 4
	r2 += 4
.L895:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r4 += -1
	r0 += 4
	r2 += 4
.L894:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
	if r4 == -1 goto .L870
.L871:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r3 = *(u32 *) (r2+4)
	*(u32 *) (r0+4) = r3
	r5 = *(u32 *) (r2+8)
	*(u32 *) (r0+8) = r5
	r9 = *(u32 *) (r2+12)
	*(u32 *) (r0+12) = r9
	r3 = *(u32 *) (r2+16)
	*(u32 *) (r0+16) = r3
	r5 = *(u32 *) (r2+20)
	*(u32 *) (r0+20) = r5
	r9 = *(u32 *) (r2+24)
	*(u32 *) (r0+24) = r9
	r4 += -8
	r0 += 28
	r2 += 28
	if r4 != -1 goto .L871
.L870:
	r0 = r1
	exit
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L902
	r4 = r1
	r0 = r2
	r9 = r3
	r9 <<= 2
	r5 = r1
	r5 -= r2
	if r9 >= r5 goto .L903
	r2 = r3
	r2 += -1
	if r3 == 0 goto .L902
	r3 &= 7
	if r3 == 0 goto .L904
	if r3 == 1 goto .L952
	if r3 == 2 goto .L953
	if r3 == 3 goto .L954
	if r3 == 4 goto .L955
	if r3 == 5 goto .L956
	if r3 == 6 goto .L957
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r1+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
.L957:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r2 += -1
	r4 += 4
	r0 += 4
.L956:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r2 += -1
	r4 += 4
	r0 += 4
.L955:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
.L954:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r2 += -1
	r4 += 4
	r0 += 4
.L953:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r2 += -1
	r4 += 4
	r0 += 4
.L952:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
	if r2 == -1 goto .L902
.L904:
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
	if r2 != -1 goto .L904
	goto .L902
.L903:
	r5 = r3
	r5 += -1
	if r3 == 0 goto .L902
	r5 <<= 2
	r2 += r5
	r3 = r1
	r3 += r5
	r9 = r2
	r9 -= r0
	r9 >>= 2
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L905
	if r9 == 1 goto .L958
	if r9 == 2 goto .L959
	if r9 == 3 goto .L960
	if r9 == 4 goto .L961
	if r9 == 5 goto .L962
	if r9 == 6 goto .L963
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L963:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L962:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L961:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L960:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L959:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L958:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r5 = r2
	r2 += -4
	r3 += -4
	if r0 == r5 goto .L902
.L905:
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
	if r0 != r4 goto .L905
.L902:
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
	if r3 == 0 goto .L967
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L968
	if r3 == 1 goto .L991
	if r3 == 2 goto .L992
	if r3 == 3 goto .L993
	if r3 == 4 goto .L994
	if r3 == 5 goto .L995
	if r3 == 6 goto .L996
	*(u32 *) (r1+0) = r2
	r4 += -1
	r0 += 4
.L996:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L995:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L994:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L993:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L992:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L991:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L967
.L968:
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
	if r4 != -1 goto .L968
.L967:
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L999
	r0 = r1
	r0 += r3
	r2 += r3
	if r3 == 0 goto .L998
	r4 = r1
	r4 ^= -1
	r3 = r0
	r3 += r4
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1001
	if r3 == 1 goto .L1047
	if r3 == 2 goto .L1048
	if r3 == 3 goto .L1049
	if r3 == 4 goto .L1050
	if r3 == 5 goto .L1051
	if r3 == 6 goto .L1052
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1052:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1051:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1050:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1049:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1048:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1047:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r1 == r0 goto .L1061
.L1001:
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
	if r1 != r0 goto .L1001
	exit
.L999:
	if r1 == r2 goto .L998
	if r3 == 0 goto .L998
	r0 = r1
	r1 += r3
	r3 = r0
	r3 ^= -1
	r3 += r1
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1002
	if r3 == 1 goto .L1053
	if r3 == 2 goto .L1054
	if r3 == 3 goto .L1055
	if r3 == 4 goto .L1056
	if r3 == 5 goto .L1057
	if r3 == 6 goto .L1058
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L1058:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L1057:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
.L1056:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	r0 += 1
	r2 += 1
.L1055:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L1054:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L1053:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
	if r0 == r1 goto .L1062
.L1002:
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
	if r0 != r1 goto .L1002
.L998:
	exit
.L1061:
	exit
.L1062:
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
.L1079:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L1095
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r3 = r1
	r3 >>= r0
	r3 &= 1
	if r3 != 0 goto .L1095
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r4 = r1
	r4 >>= r0
	r4 &= 1
	if r4 != 0 goto .L1095
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r5 = r1
	r5 >>= r0
	r5 &= 1
	if r5 != 0 goto .L1095
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r9 = r1
	r9 >>= r0
	r9 &= 1
	if r9 != 0 goto .L1095
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L1095
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r3 = r1
	r3 >>= r0
	r3 &= 1
	if r3 != 0 goto .L1095
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r4 = r1
	r4 >>= r0
	r4 &= 1
	if r4 != 0 goto .L1095
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 32 goto .L1079
	r0 = 0
	exit
.L1095:
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
	if r1 == 0 goto .L1100
	r0 = r2
	r0 &= 1
	if r0 != 0 goto .L1098
	r0 = 1
.L1099:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1116
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1098
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1098
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1098
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1098
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1098
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1098
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1099
	exit
.L1116:
	exit
.L1100:
	r0 = r2
.L1098:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L1120
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1121
.L1119:
	r0 = r7
	r0 &= 1
	exit
.L1121:
	r7 = 0
	goto .L1119
.L1120:
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
	if r0 s<= 0 goto .L1125
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1126
.L1124:
	r0 = r7
	r0 &= 1
	exit
.L1126:
	r7 = 0
	goto .L1124
.L1125:
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
	if r0 s<= 0 goto .L1130
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1131
.L1129:
	r0 = r7
	r0 &= 1
	exit
.L1131:
	r7 = 0
	goto .L1129
.L1130:
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
	if r0 != 0 goto .L1134
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1134
	if r6 s< 0 goto .L1141
	r7 = 0x40000000 ll
	goto .L1138
.L1141:
	r7 = 0x3f000000 ll
	goto .L1138
.L1137:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1134
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1138:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1137
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1137
.L1134:
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
	if r0 != 0 goto .L1143
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1143
	if r6 s< 0 goto .L1150
	r7 = 0x4000000000000000 ll
	goto .L1147
.L1150:
	r7 = 0x3fe0000000000000 ll
	goto .L1147
.L1146:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1143
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1147:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1146
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1146
.L1143:
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
	if r0 != 0 goto .L1152
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1152
	if r6 s< 0 goto .L1159
	r7 = 0x4000000000000000 ll
	goto .L1156
.L1159:
	r7 = 0x3fe0000000000000 ll
	goto .L1156
.L1155:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1152
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1156:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1155
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1155
.L1152:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1161
	r4 = r2
	r0 = r1
	r2 += r3
	r3 = r4
	r3 ^= -1
	r3 += r2
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1162
	if r3 == 1 goto .L1185
	if r3 == 2 goto .L1186
	if r3 == 3 goto .L1187
	if r3 == 4 goto .L1188
	if r3 == 5 goto .L1189
	if r3 == 6 goto .L1190
	r9 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r4+0)
	r9 ^= r5
	*(u8 *) (r1+0) = r9
	r4 += 1
	r0 += 1
.L1190:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1189:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1188:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r9 ^= r3
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1187:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r4 += 1
	r0 += 1
.L1186:
	r3 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
.L1185:
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r4 += 1
	r0 += 1
	if r4 == r2 goto .L1161
.L1162:
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
	r5 = r0
	r5 += 1
	r3 = *(u8 *) (r5+0)
	r9 = *(u8 *) (r4+1)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r5 += 1
	r3 = *(u8 *) (r5+0)
	r9 = *(u8 *) (r4+2)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r5 += 1
	r3 = *(u8 *) (r5+0)
	r9 = *(u8 *) (r4+3)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r5 += 1
	r3 = *(u8 *) (r5+0)
	r9 = *(u8 *) (r4+4)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r5 += 1
	r3 = *(u8 *) (r5+0)
	r9 = *(u8 *) (r4+5)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r5 += 1
	r3 = *(u8 *) (r5+0)
	r9 = *(u8 *) (r4+6)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r4 += 7
	r0 += 7
	if r4 != r2 goto .L1162
.L1161:
	r0 = r1
	exit
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r8 = r1
	r6 = r2
	r7 = r3
	call	strlen
	r1 = r0
	r0 = r8
	r0 += r1
	if r7 == 0 goto .L1194
	r2 = r7
	r2 &= 7
	if r2 == 0 goto .L1193
	if r2 == 1 goto .L1233
	if r2 == 2 goto .L1234
	if r2 == 3 goto .L1235
	if r2 == 4 goto .L1236
	if r2 == 5 goto .L1237
	if r2 == 6 goto .L1238
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1196
	r6 += 1
	r0 += 1
	r7 += -1
.L1238:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1196
	r6 += 1
	r0 += 1
	r7 += -1
.L1237:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1196
	r6 += 1
	r0 += 1
	r7 += -1
.L1236:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1196
	r6 += 1
	r0 += 1
	r7 += -1
.L1235:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1196
	r6 += 1
	r0 += 1
	r7 += -1
.L1234:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1196
	r6 += 1
	r0 += 1
	r7 += -1
.L1233:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1196
	r6 += 1
	r0 += 1
	r7 += -1
	if r7 == 0 goto .L1194
.L1193:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1196
	r6 += 1
	r0 += 1
	r5 = r7
	r5 += -1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1196
	r1 = *(u8 *) (r6+1)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+1) = r1
	if r1 == 0 goto .L1196
	r2 = *(u8 *) (r6+2)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+2) = r2
	if r2 == 0 goto .L1196
	r3 = *(u8 *) (r6+3)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+3) = r3
	if r3 == 0 goto .L1196
	r4 = *(u8 *) (r6+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+4) = r4
	if r4 == 0 goto .L1196
	r9 = *(u8 *) (r6+5)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+5) = r9
	if r9 == 0 goto .L1196
	r1 = *(u8 *) (r6+6)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+6) = r1
	if r1 == 0 goto .L1196
	r6 += 7
	r0 += 7
	r7 = r5
	r7 += -7
	if r5 != 7 goto .L1193
.L1194:
	*(u8 *) (r0+0) = 0
.L1196:
	r0 = r8
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1288
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1241
	if r0 == 1 goto .L1282
	if r0 == 2 goto .L1283
	if r0 == 3 goto .L1284
	if r0 == 4 goto .L1285
	if r0 == 5 goto .L1286
	if r0 == 6 goto .L1287
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1240
	r3 += 1
.L1287:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 != 0 goto .L1290
.L1240:
	r0 = r3
	exit
.L1288:
	r3 = r2
	goto .L1240
.L1290:
	r3 += 1
.L1286:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1240
	r3 += 1
.L1285:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1240
	r3 += 1
.L1284:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1240
	r3 += 1
.L1283:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1240
	r3 += 1
.L1282:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1240
	r3 += 1
	if r2 == r3 goto .L1245
.L1241:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1240
	r5 = r3
	r5 += 1
	r3 = r5
	r4 = r1
	r4 += r5
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1240
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1240
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1240
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1240
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1240
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1240
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1240
	r5 += 7
	r3 = r5
	if r2 != r5 goto .L1241
.L1245:
	r3 = r2
	goto .L1240
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1298
.L1292:
	r3 = r2
.L1295:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 == 0 goto .L1299
	r3 += 1
	if r4 != r5 goto .L1295
.L1293:
	r0 = r1
	exit
.L1298:
	r1 = 0
	goto .L1293
.L1299:
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1292
	r1 = 0
	goto .L1293
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1302
.L1301:
	r1 += 1
	if r0 == 0 goto .L1305
.L1302:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1301
	r3 = r1
	goto .L1301
.L1305:
	r0 = r3
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	r6 = r1
	r7 = r2
	r1 = r2
	call	strlen
	r8 = r0
	if r0 == 0 goto .L1306
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
.L1308:
	r2 = *(u32 *) (r10+-8)
	r1 = r6
	call	strchr
	r6 = r0
	if r0 == 0 goto .L1306
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1306
	r6 += 1
	goto .L1308
.L1306:
	r0 = r6
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
	if r0 s<= 0 goto .L1321
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1315
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1314
.L1315:
	r0 = r6
	exit
.L1321:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1315
.L1314:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1315
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r6 = r1
	if r4 == 0 goto .L1326
	if r4 >= r2 goto .L1327
	r2 -= r4
	r1 += r2
	*(u64 *) (r10+-24) = r1
	if r6 > r1 goto .L1328
	r0 = *(u8 *) (r3+0)
	r0 <<= 56
	r4 += -1
	*(u64 *) (r10+-8) = r4
	r3 += 1
	*(u64 *) (r10+-16) = r3
	r1 -= r6
	r1 &= 7
	r8 = r1
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r7 = r0
	r7 s>>= 56
	if r2 == r0 goto .L1378
.L1331:
	r6 += 1
	r3 = *(u64 *) (r10+-24)
	if r3 < r6 goto .L1377
	if r8 == 0 goto .L1325
	if r8 == 1 goto .L1369
	if r8 == 2 goto .L1370
	if r8 == 3 goto .L1371
	if r8 == 4 goto .L1372
	if r8 == 5 goto .L1373
	if r8 == 6 goto .L1374
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r7 goto .L1379
.L1333:
	r6 += 1
.L1374:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r7 goto .L1380
.L1336:
	r6 += 1
.L1373:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r7 goto .L1381
.L1339:
	r6 += 1
.L1372:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r7 goto .L1382
.L1342:
	r6 += 1
.L1371:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r7 goto .L1383
.L1345:
	r6 += 1
.L1370:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r7 goto .L1384
.L1348:
	r6 += 1
.L1369:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r7 goto .L1385
.L1351:
	r6 += 1
	r4 = *(u64 *) (r10+-24)
	if r4 >= r6 goto .L1325
.L1377:
	r0 = 0
	exit
.L1386:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1324
.L1329:
	r0 = r6
	exit
.L1326:
	r0 = r1
	exit
.L1327:
	r0 = 0
	exit
.L1328:
	r0 = 0
	exit
.L1378:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1331
	goto .L1329
.L1379:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1333
	goto .L1329
.L1380:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1336
	goto .L1329
.L1381:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1339
	goto .L1329
.L1382:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1342
	goto .L1329
.L1383:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1345
	goto .L1329
.L1384:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1348
	goto .L1329
.L1385:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1351
	goto .L1329
.L1387:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1354
	goto .L1329
.L1388:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1356
	goto .L1329
.L1389:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1358
	goto .L1329
.L1390:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1360
	goto .L1329
.L1391:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1362
	goto .L1329
.L1392:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1364
	goto .L1329
.L1366:
	r6 = r8
	r6 += 7
	r9 = *(u64 *) (r10+-24)
	if r9 < r6 goto .L1377
.L1325:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r7 goto .L1386
.L1324:
	r6 += 1
	r8 = r6
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r7 goto .L1387
.L1354:
	r6 = r8
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r7 goto .L1388
.L1356:
	r6 = r8
	r6 += 2
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r7 goto .L1389
.L1358:
	r6 = r8
	r6 += 3
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r7 goto .L1390
.L1360:
	r6 = r8
	r6 += 4
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r7 goto .L1391
.L1362:
	r6 = r8
	r6 += 5
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r7 goto .L1392
.L1364:
	r6 = r8
	r6 += 6
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 != r7 goto .L1366
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1366
	goto .L1329
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1429
	*(u64 *) (r10+-8) = 0
.L1394:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1426
	r7 = 0
	r8 = 0x3fe0000000000000 ll
.L1398:
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = r8
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1399
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = r8
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1399
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = r8
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1399
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = r8
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = 0x3ff0000000000000 ll
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L1398
	goto .L1399
.L1429:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1394
.L1426:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1427
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 == 0 goto .L1428
	r7 = 0
	r8 = r7
.L1402:
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r8 s< r0 goto .L1399
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r8 s< r0 goto .L1399
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r8 s< r0 goto .L1399
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
	r2 = 0x3fe0000000000000 ll
	r1 = r0
	call	__ltdf2
	if r8 s>= r0 goto .L1402
	goto .L1399
.L1427:
	r7 = 0
.L1399:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r7
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1403
	r3 = -9223372036854775808 ll
	r3 ^= r6
	r6 = r3
.L1403:
	r0 = r6
	exit
.L1428:
	r7 = 0
	goto .L1399
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	if r1 == 0 goto .L1433
	r0 = 0
.L1432:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1449
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1430
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1430
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1430
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1430
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1430
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1430
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1432
	exit
.L1449:
	exit
.L1433:
	r0 = 0
.L1430:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1458
	r9 = 32
	r4 = 1
.L1451:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1458
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1453
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1458
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1453
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1458
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1453
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1458
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1453
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1458
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1453
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1458
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1453
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1458
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1453
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1458
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1453
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1451
.L1454:
	if r3 != 0 goto .L1459
	r0 = r9
.L1459:
	exit
.L1456:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1454
.L1457:
	if r2 >= r0 goto .L1456
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 = r4
	r1 |= r9
	r9 = r1;r9 &= 0xffffffff
	goto .L1456
.L1453:
	if r4 == 0 goto .L1476
.L1458:
	r9 = 0
	goto .L1457
.L1476:
	r9 = r4
	goto .L1454
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
	if r2 == r1 goto .L1479
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
.L1479:
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
	if r0 == r2 goto .L1482
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1482:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1486
	r0 = 0
.L1485:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1502
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1484
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1484
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1484
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1484
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1484
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1484
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1485
	exit
.L1502:
	exit
.L1486:
	r0 = r1
.L1484:
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
	if r2 >= r1 goto .L1504
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1504
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1503
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1510
	if r5 == 1 goto .L1579
	if r5 == 2 goto .L1580
	if r5 == 3 goto .L1581
	if r5 == 4 goto .L1582
	if r5 == 5 goto .L1583
	if r5 == 6 goto .L1584
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1584:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1583:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1582:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1581:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1580:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1579:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1600
.L1510:
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
	r0 += -1
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -2
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -3
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -4
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -5
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -6
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -7
	if r9 != 6 goto .L1510
.L1503:
	exit
.L1504:
	if r6 == 0 goto .L1507
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
	if r5 == 0 goto .L1508
	if r5 == 1 goto .L1585
	if r5 == 2 goto .L1586
	if r5 == 3 goto .L1587
	if r5 == 4 goto .L1588
	if r5 == 5 goto .L1589
	if r5 == 6 goto .L1590
	r5 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r5
	r0 += 8
	r4 += 8
.L1590:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1589:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1588:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1587:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1586:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1585:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1507
.L1508:
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
	if r0 != r6 goto .L1508
.L1507:
	if r9 > r3 goto .L1503
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
	if r3 == 0 goto .L1509
	if r3 == 1 goto .L1591
	if r3 == 2 goto .L1592
	if r3 == 3 goto .L1593
	if r3 == 4 goto .L1594
	if r3 == 5 goto .L1595
	if r3 == 6 goto .L1596
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1596:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1595:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1594:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1593:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1592:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1591:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1601
.L1509:
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
	if r0 != r2 goto .L1509
	exit
.L1601:
	exit
.L1600:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r2 >= r1 goto .L1603
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1603
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1602
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1608
	if r5 == 1 goto .L1655
	if r5 == 2 goto .L1656
	if r5 == 3 goto .L1657
	if r5 == 4 goto .L1658
	if r5 == 5 goto .L1659
	if r5 == 6 goto .L1660
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1660:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1659:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1658:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1657:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1656:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1655:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1669
.L1608:
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
	r0 += -1
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -2
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -3
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -4
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -5
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -6
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -7
	if r9 != 6 goto .L1608
.L1602:
	exit
.L1603:
	if r9 == 0 goto .L1606
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
	if r5 == 0 goto .L1607
	if r5 == 1 goto .L1661
	if r5 == 2 goto .L1662
	if r5 == 3 goto .L1663
	if r5 == 4 goto .L1664
	if r5 == 5 goto .L1665
	if r5 == 6 goto .L1666
	r5 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r5
	r0 += 2
	r4 += 2
.L1666:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1665:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1664:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1663:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1662:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1661:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L1606
.L1607:
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
	if r0 != r9 goto .L1607
.L1606:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1602
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1669:
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
	if r2 >= r1 goto .L1671
	r0 = r2
	r0 += r3
	if r1 > r0 goto .L1671
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1670
	r5 = r0
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1677
	if r5 == 1 goto .L1746
	if r5 == 2 goto .L1747
	if r5 == 3 goto .L1748
	if r5 == 4 goto .L1749
	if r5 == 5 goto .L1750
	if r5 == 6 goto .L1751
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1751:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1750:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
.L1749:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1748:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1747:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1746:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r0 += -1
	if r0 == -1 goto .L1767
.L1677:
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
	r0 += -1
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -2
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -3
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -4
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -5
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -6
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
	r0 = r9
	r0 += -7
	if r9 != 6 goto .L1677
.L1670:
	exit
.L1671:
	if r6 == 0 goto .L1674
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
	if r5 == 0 goto .L1675
	if r5 == 1 goto .L1752
	if r5 == 2 goto .L1753
	if r5 == 3 goto .L1754
	if r5 == 4 goto .L1755
	if r5 == 5 goto .L1756
	if r5 == 6 goto .L1757
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r4 += 4
.L1757:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1756:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1755:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1754:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1753:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1752:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L1674
.L1675:
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
	if r0 != r6 goto .L1675
.L1674:
	if r9 > r3 goto .L1670
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
	if r3 == 0 goto .L1676
	if r3 == 1 goto .L1758
	if r3 == 2 goto .L1759
	if r3 == 3 goto .L1760
	if r3 == 4 goto .L1761
	if r3 == 5 goto .L1762
	if r3 == 6 goto .L1763
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1763:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1762:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1761:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1760:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1759:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1758:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1768
.L1676:
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
	if r0 != r2 goto .L1676
	exit
.L1768:
	exit
.L1767:
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
	if r0 != 0 goto .L1778
	r0 = r1
	r0 s>>= 14
	if r0 != 0 goto .L1777
	r3 = r1
	r3 s>>= 13
	if r3 != 0 goto .L1779
	r4 = r1
	r4 s>>= 12
	if r4 != 0 goto .L1780
	r5 = r1
	r5 s>>= 11
	if r5 != 0 goto .L1781
	r9 = r1
	r9 s>>= 10
	if r9 != 0 goto .L1782
	r0 = r1
	r0 s>>= 9
	if r0 != 0 goto .L1783
	r3 = r1
	r3 s>>= 8
	if r3 != 0 goto .L1784
	r4 = r1
	r4 s>>= 7
	if r4 != 0 goto .L1785
	r5 = r1
	r5 s>>= 6
	if r5 != 0 goto .L1786
	r9 = r1
	r9 s>>= 5
	if r9 != 0 goto .L1787
	r0 = r1
	r0 s>>= 4
	if r0 != 0 goto .L1788
	r3 = r1
	r3 s>>= 3
	if r3 != 0 goto .L1789
	r4 = r1
	r4 s>>= 2
	if r4 != 0 goto .L1790
	r2 s>>= 1
	if r2 != 0 goto .L1791
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L1793
.L1777:
	exit
.L1793:
	r0 = 15
	exit
.L1778:
	r0 = 0
	exit
.L1779:
	r0 = 2
	exit
.L1780:
	r0 = 3
	exit
.L1781:
	r0 = 4
	exit
.L1782:
	r0 = 5
	exit
.L1783:
	r0 = 6
	exit
.L1784:
	r0 = 7
	exit
.L1785:
	r0 = 8
	exit
.L1786:
	r0 = 9
	exit
.L1787:
	r0 = 10
	exit
.L1788:
	r0 = 11
	exit
.L1789:
	r0 = 12
	exit
.L1790:
	r0 = 13
	exit
.L1791:
	r0 = 14
	goto .L1777
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1797
	r1 = r0
	r1 &= 2
	if r1 != 0 goto .L1798
	r2 = r0
	r2 &= 4
	if r2 != 0 goto .L1799
	r3 = r0
	r3 &= 8
	if r3 != 0 goto .L1800
	r4 = r0
	r4 &= 16
	if r4 != 0 goto .L1801
	r5 = r0
	r5 &= 32
	if r5 != 0 goto .L1802
	r9 = r0
	r9 &= 64
	if r9 != 0 goto .L1803
	r1 = r0
	r1 &= 128
	if r1 != 0 goto .L1804
	r2 = r0
	r2 &= 256
	if r2 != 0 goto .L1805
	r3 = r0
	r3 &= 512
	if r3 != 0 goto .L1806
	r4 = r0
	r4 &= 1024
	if r4 != 0 goto .L1807
	r5 = r0
	r5 &= 2048
	if r5 != 0 goto .L1808
	r9 = r0
	r9 &= 4096
	if r9 != 0 goto .L1809
	r1 = r0
	r1 &= 8192
	if r1 != 0 goto .L1810
	r2 = r0
	r2 &= 16384
	if r2 != 0 goto .L1811
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L1813
.L1796:
	exit
.L1813:
	r0 = 15
	exit
.L1797:
	r0 = 0
	exit
.L1798:
	r0 = 1
	exit
.L1799:
	r0 = 2
	exit
.L1800:
	r0 = 3
	exit
.L1801:
	r0 = 4
	exit
.L1802:
	r0 = 5
	exit
.L1803:
	r0 = 6
	exit
.L1804:
	r0 = 7
	exit
.L1805:
	r0 = 8
	exit
.L1806:
	r0 = 9
	exit
.L1807:
	r0 = 10
	exit
.L1808:
	r0 = 11
	exit
.L1809:
	r0 = 12
	exit
.L1810:
	r0 = 13
	exit
.L1811:
	r0 = 14
	goto .L1796
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r6 = r1
	r2 = 0x47000000 ll
	call	__gesf2
	if r0 s>= 0 goto .L1820
	r1 = r6
	call	__fixsfdi
	exit
.L1820:
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
	if r1 == 0 goto .L1826
	r0 = 0
.L1825:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1842
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1824
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1824
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1824
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	if r1 == 0 goto .L1824
	r2 = r1
	r2 &= 1
	r2 = -r2
	r2 &= r9
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	if r1 == 0 goto .L1824
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	if r1 == 0 goto .L1824
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 != 0 goto .L1825
	exit
.L1842:
	exit
.L1826:
	r0 = r1
.L1824:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r1 == 0 goto .L1846
	if r2 == 0 goto .L1847
	r0 = 0
.L1845:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1863
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1844
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1844
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1844
	r5 = r2
	r5 &= 1
	r5 = -r5
	r5 &= r4
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r9 = r4;r9 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1844
	r1 = r2
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	r9 += r9
	r4 = r9;r4 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1844
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r5 = r4;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1844
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L1845
	exit
.L1863:
	exit
.L1846:
	r0 = r1
	exit
.L1847:
	r0 = r2
.L1844:
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
	if r0 < r2 goto .L1872
	r9 = 32
	r4 = 1
.L1865:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1872
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1872
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1872
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1872
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1872
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1872
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1872
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1872
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1867
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1865
.L1868:
	if r3 != 0 goto .L1873
	r0 = r9
.L1873:
	exit
.L1870:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1868
.L1871:
	if r2 >= r0 goto .L1870
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 = r4
	r1 |= r9
	r9 = r1;r9 &= 0xffffffff
	goto .L1870
.L1867:
	if r4 == 0 goto .L1890
.L1872:
	r9 = 0
	goto .L1871
.L1890:
	r9 = r4
	goto .L1868
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1894
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1895
.L1893:
	r0 = r8
	r0 &= 1
	exit
.L1895:
	r8 = 0
	goto .L1893
.L1894:
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
	if r0 s<= 0 goto .L1899
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1900
.L1898:
	r0 = r8
	r0 &= 1
	exit
.L1900:
	r8 = 0
	goto .L1898
.L1899:
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
	if r2 s< 0 goto .L1920
	r2 = 0
	if r4 == r2 goto .L1921
.L1908:
	r3 = r4
	r3 &= 1
	r3 = -r3
	r0 = r1
	r0 &= r3
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1905
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
	if r4 == 0 goto .L1905
	r3 += -1
	r3 &= 0xff
.L1906:
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
	if r4 == 0 goto .L1905
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
	if r4 == 0 goto .L1905
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
	if r4 == 0 goto .L1905
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
	if r4 == 0 goto .L1905
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
	if r4 == 0 goto .L1905
	r3 += -1
	r3 &= 0xff
	if r3 != 0 goto .L1906
.L1905:
	if r2 == 0 goto .L1910
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L1920:
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r2 = 1
	goto .L1908
.L1921:
	r0 = r4
.L1910:
	exit
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1930
	if r2 s< 0 goto .L1931
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1930:
	r1 = -r1
	if r2 s<= 0 goto .L1932
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
.L1926:
	r0 = -r0
	exit
.L1931:
	r3 = 0
	r2 = -r2
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	goto .L1926
.L1932:
	r3 = 0
	r2 = -r2
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	exit
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L1938
	if r2 s< 0 goto .L1939
.L1936:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1938:
	if r2 s< 0 goto .L1940
.L1935:
	r3 = 1
	r1 = -r1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	r0 = -r0
	exit
.L1940:
	r0 = -r0
	r2 = r0
	goto .L1935
.L1939:
	r0 = -r0
	r2 = r0
	goto .L1936
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r0 goto .L1965
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1966
	r5 = r2
	r5 += r2
	r5 &= 0xffff
	if r5 > r0 goto .L1967
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1968
	r9 = r2
	r9 <<= 2
	r9 &= 0xffff
	if r9 > r0 goto .L1969
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1970
	r5 = r2
	r5 <<= 3
	r5 &= 0xffff
	if r5 > r0 goto .L1971
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1972
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L1973
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1974
	r5 = r2
	r5 <<= 5
	r5 &= 0xffff
	if r5 > r0 goto .L1975
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1976
	r9 = r2
	r9 <<= 6
	r9 &= 0xffff
	if r9 > r0 goto .L1977
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1978
	r5 = r2
	r5 <<= 7
	r5 &= 0xffff
	if r5 > r0 goto .L1979
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1980
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L1981
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1982
	r5 = r2
	r5 <<= 9
	r5 &= 0xffff
	if r5 > r0 goto .L1983
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1984
	r9 = r2
	r9 <<= 10
	r9 &= 0xffff
	if r9 > r0 goto .L1985
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1986
	r5 = r2
	r5 <<= 11
	r5 &= 0xffff
	if r5 > r0 goto .L1987
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1988
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L1989
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1990
	r5 = r2
	r5 <<= 13
	r5 &= 0xffff
	if r5 > r0 goto .L1991
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1992
	r9 = r2
	r9 <<= 14
	r9 &= 0xffff
	if r9 > r0 goto .L1993
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1994
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L1995
	r1 = 0
	r4 = 32768
	if r2 != r1 goto .L1964
.L1945:
	if r3 != 0 goto .L1998
	r0 = r1
	exit
.L1966:
	r4 = 1
	goto .L1964
.L1968:
	r2 = r5
	r4 = 2
	goto .L1964
.L1970:
	r2 = r9
	r4 = 4
	goto .L1964
.L1972:
	r2 = r5
	r4 = 8
	goto .L1964
.L1974:
	r2 = r9
	r4 = 16
	goto .L1964
.L1976:
	r2 = r5
	r4 = 32
	goto .L1964
.L1978:
	r2 = r9
	r4 = 64
	goto .L1964
.L1980:
	r2 = r5
	r4 = 128
	goto .L1964
.L1982:
	r2 = r9
	r4 = 256
	goto .L1964
.L1984:
	r2 = r5
	r4 = 512
	goto .L1964
.L1986:
	r2 = r9
	r4 = 1024
	goto .L1964
.L1988:
	r2 = r5
	r4 = 2048
	goto .L1964
.L1990:
	r2 = r9
	r4 = 4096
	goto .L1964
.L1992:
	r2 = r5
	r4 = 8192
	goto .L1964
.L1994:
	r2 = r9
	r4 = 16384
	goto .L1964
.L1997:
	r1 = 0
	goto .L1946
.L1965:
	r4 = 1
.L1964:
	if r2 >= r0 goto .L1997
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L1946:
	r5 = r4
	r5 >>= 1
	r9 = r2
	r9 >>= 1
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1948
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1948:
	r5 = r4
	r5 >>= 2
	r9 = r2
	r9 >>= 2
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1949
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1949:
	r5 = r4
	r5 >>= 3
	r9 = r2
	r9 >>= 3
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1950
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1950:
	r5 = r4
	r5 >>= 4
	r9 = r2
	r9 >>= 4
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1951
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1951:
	r5 = r4
	r5 >>= 5
	r9 = r2
	r9 >>= 5
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1952
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1952:
	r5 = r4
	r5 >>= 6
	r9 = r2
	r9 >>= 6
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1953
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1953:
	r5 = r4
	r5 >>= 7
	r9 = r2
	r9 >>= 7
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1954
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1954:
	r5 = r4
	r5 >>= 8
	r9 = r2
	r9 >>= 8
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1955
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1955:
	r5 = r4
	r5 >>= 9
	r9 = r2
	r9 >>= 9
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1956
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1956:
	r5 = r4
	r5 >>= 10
	r9 = r2
	r9 >>= 10
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1957
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1957:
	r5 = r4
	r5 >>= 11
	r9 = r2
	r9 >>= 11
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1958
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1958:
	r5 = r4
	r5 >>= 12
	r9 = r2
	r9 >>= 12
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1959
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1959:
	r5 = r4
	r5 >>= 13
	r9 = r2
	r9 >>= 13
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1960
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1960:
	r5 = r4
	r5 >>= 14
	r9 = r2
	r9 >>= 14
	if r5 == 0 goto .L1945
	if r9 >= r0 goto .L1961
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1961:
	r2 >>= 15
	r4 >>= 15
	if r4 == 0 goto .L1945
	if r2 >= r0 goto .L1945
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
	goto .L1945
.L1967:
	r2 = r5
	r4 = 2
	goto .L1964
.L1969:
	r2 = r9
	r4 = 4
	goto .L1964
.L1971:
	r2 = r5
	r4 = 8
	goto .L1964
.L1973:
	r2 = r9
	r4 = 16
	goto .L1964
.L1975:
	r2 = r5
	r4 = 32
	goto .L1964
.L1977:
	r2 = r9
	r4 = 64
	goto .L1964
.L1979:
	r2 = r5
	r4 = 128
	goto .L1964
.L1981:
	r2 = r9
	r4 = 256
	goto .L1964
.L1983:
	r2 = r5
	r4 = 512
	goto .L1964
.L1985:
	r2 = r9
	r4 = 1024
	goto .L1964
.L1987:
	r2 = r5
	r4 = 2048
	goto .L1964
.L1989:
	r2 = r9
	r4 = 4096
	goto .L1964
.L1991:
	r2 = r5
	r4 = 8192
	goto .L1964
.L1993:
	r2 = r9
	r4 = 16384
	goto .L1964
.L1995:
	r4 = 32768
	goto .L1964
.L1998:
	exit
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L2007
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L2000:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2007
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2002
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2007
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2002
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2007
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2002
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2007
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2002
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2007
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2002
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2007
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2002
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2007
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2002
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L2007
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L2002
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L2000
.L2003:
	if r3 != 0 goto .L2026
.L1999:
	r0 = r9
	exit
.L2005:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L2003
.L2006:
	if r2 >= r1 goto .L2005
	r1 -= r2
	r9 |= r4
	goto .L2005
.L2002:
	if r4 == 0 goto .L2027
.L2007:
	r9 = 0
	goto .L2006
.L2027:
	r9 = r4
	goto .L2003
.L2026:
	r9 = r1
	goto .L1999
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L2029
	r2 += -32
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r0 = 0
.L2030:
	r3 <<= 32
	r0 |= r3
	exit
.L2029:
	if r2 == 0 goto .L2032
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
	goto .L2030
.L2032:
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
	if r0 == 0 goto .L2034
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	r0 = 0
	exit
.L2034:
	if r3 == 0 goto .L2037
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
.L2037:
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
	if r0 == 0 goto .L2039
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
.L2040:
	r0 <<= 32
	r0 |= r9
	exit
.L2039:
	if r2 == 0 goto .L2042
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
	goto .L2040
.L2042:
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
	if r0 == 0 goto .L2044
	r1 = r2
	r1 s>>= 63
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 = r2
	r0 s>>= r3
	exit
.L2044:
	if r3 == 0 goto .L2047
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
.L2047:
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
	if r1 <= 65534 goto .L2051
	r0 = 0
.L2051:
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
	if r5 != 0 goto .L2052
	r1 = 2
	r1 -= r4
.L2053:
	r0 += r9
	r0 += r1
	exit
.L2052:
	r1 = 0
	goto .L2053
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L2055
	r6 = 0
.L2055:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	r3 = 1
	if r2 == 0 goto .L2058
	r3 = 0
.L2058:
	r3 &= 0xff
	if r3 != 0 goto .L2057
	r0 = 0
.L2057:
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
	if r0 s> r3 goto .L2061
	if r3 s>= r0 goto .L2062
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2063
	if r1 > r2 goto .L2064
	r0 = 1
	exit
.L2061:
	r0 = 0
	exit
.L2062:
	r0 = 2
	exit
.L2063:
	r0 = 0
	exit
.L2064:
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
	if r4 s> r2 goto .L2068
	if r2 s>= r4 goto .L2069
	if r3 >= r1 goto .L2070
	if r1 > r3 goto .L2071
	r0 = 1
	exit
.L2068:
	r0 = 0
	exit
.L2069:
	r0 = 2
	exit
.L2070:
	r0 = 0
	exit
.L2071:
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
	if r1 == 0 goto .L2074
	r6 = 0
.L2074:
	r6 &= 0xff
	r1 = 1
	if r3 == 0 goto .L2077
	r1 = 0
.L2077:
	r1 &= 0xff
	if r1 == 0 goto .L2075
	r1 = r2
.L2076:
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
.L2075:
	r1 = 0
	goto .L2076
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2079
	if r2 == 0 goto .L2081
	r1 = r2
	call	__ctzdi2
	r0 <<= 32
	r2 = 279172874240 ll
	r0 += r2
	r0 s>>= 32
	exit
.L2079:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2081:
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
	if r0 == 0 goto .L2083
	r2 += -32
	r1 >>= 32
	r0 = r2;r0 &= 0xffffffff
	r1 >>= r0
	r3 = r1;r3 &= 0xffffffff
	r0 = 0
.L2084:
	r0 <<= 32
	r0 |= r3
	exit
.L2083:
	if r2 == 0 goto .L2086
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
	goto .L2084
.L2086:
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
	if r0 == 0 goto .L2088
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	r1 = 0
	exit
.L2088:
	if r3 == 0 goto .L2091
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
.L2091:
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
	r7 = r1
	*(u64 *) (r10+-8) = r2
	r6 = *(u32 *) (r10+-8)
	r8 = r1;r8 &= 0xffffffff
	r2 = r6
	r1 = r8
	call	__muldsi3
	r7 s>>= 32
	r6 *= r7
	r1 = *(u64 *) (r10+-8)
	r1 s>>= 32
	r8 *= r1
	r6 += r8
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
	r2 = *(u64 *) (r10+-24)
	r7 *= r2
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
	if r1 != 0 goto .L2098
	r0 = 0
.L2098:
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
	r2 ^= r1
	r0 = r2
	r0 s>>= 32
	r0 ^= r2
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
	if r9 > r0 goto .L2105
	r3 = 0
.L2105:
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
	if r0 >= r4 goto .L2106
	r9 = 0
.L2106:
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
	if r1 >= r2 goto .L2107
	r0 = 0
.L2107:
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
	r7 = r2
	r8 = 0x3ff0000000000000 ll
	goto .L2111
.L2109:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L2110
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2111:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L2109
	r2 = r6
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L2109
.L2110:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2113
.L2108:
	r0 = r8
	exit
.L2113:
	r2 = r8
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r8 = r0
	goto .L2108
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r6 = r1
	r2 <<= 32
	r2 s>>= 32
	*(u64 *) (r10+-8) = r2
	r7 = r2
	r8 = 0x3f800000 ll
	goto .L2117
.L2115:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L2116
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2117:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L2115
	r2 = r6
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L2115
.L2116:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2119
.L2114:
	r0 = r8
	exit
.L2119:
	r2 = r8
	r1 = 0x3f800000 ll
	call	__divsf3
	r8 = r0
	goto .L2114
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 > r3 goto .L2122
	if r3 >= r0 goto .L2123
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2124
	if r1 > r2 goto .L2125
	r0 = 1
	exit
.L2122:
	r0 = 0
	exit
.L2123:
	r0 = 2
	exit
.L2124:
	r0 = 0
	exit
.L2125:
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
	if r4 > r2 goto .L2129
	if r2 >= r4 goto .L2130
	if r3 >= r1 goto .L2131
	if r1 > r3 goto .L2132
	r0 = 1
	exit
.L2129:
	r0 = 0
	exit
.L2130:
	r0 = 2
	exit
.L2131:
	r0 = 0
	exit
.L2132:
	r0 = 2
	exit
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
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
