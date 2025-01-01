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
	r3 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r3
	r5 = *(u8 *) (r2+2)
	*(u8 *) (r0+1) = r5
	r9 = *(u8 *) (r2+3)
	*(u8 *) (r0+2) = r9
	r3 = *(u8 *) (r2+4)
	*(u8 *) (r0+3) = r3
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r0+4) = r5
	r9 = *(u8 *) (r2+6)
	*(u8 *) (r0+5) = r9
	r3 = *(u8 *) (r2+7)
	*(u8 *) (r0+6) = r3
	r0 += 7
	r2 += 8
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
	r5 = *(u8 *) (r0+0)
	r0 += -1
	if r5 == r2 goto .L251
	if r4 == 1 goto .L252
	if r4 == 2 goto .L266
	if r4 == 3 goto .L264
	if r4 == 4 goto .L262
	if r4 == 5 goto .L260
	if r4 == 6 goto .L258
	r3 = r0
	r9 = *(u8 *) (r0+0)
	r0 += -1
	if r9 == r2 goto .L251
.L258:
	r3 = r0
	r4 = *(u8 *) (r0+0)
	r0 += -1
	if r4 == r2 goto .L251
.L260:
	r3 = r0
	r5 = *(u8 *) (r0+0)
	r0 += -1
	if r5 == r2 goto .L251
.L262:
	r3 = r0
	r9 = *(u8 *) (r0+0)
	r0 += -1
	if r9 == r2 goto .L251
.L264:
	r3 = r0
	r4 = *(u8 *) (r0+0)
	r0 += -1
	if r4 == r2 goto .L251
.L266:
	r3 = r0
	r5 = *(u8 *) (r0+0)
	r0 += -1
	if r5 == r2 goto .L251
.L252:
	if r0 == r1 goto .L278
	r3 = r0
	r9 = *(u8 *) (r0+0)
	r0 += -1
	if r9 == r2 goto .L251
	r3 = r0
	r5 = *(u8 *) (r0+0)
	r4 = r0
	r4 += -1
	if r5 == r2 goto .L251
	r3 = r4
	r9 = *(u8 *) (r4+0)
	r4 += -1
	if r9 == r2 goto .L251
	r3 = r4
	r5 = *(u8 *) (r4+0)
	r4 += -1
	if r5 == r2 goto .L251
	r3 = r4
	r9 = *(u8 *) (r4+0)
	r4 += -1
	if r9 == r2 goto .L251
	r3 = r4
	r5 = *(u8 *) (r4+0)
	r4 += -1
	if r5 == r2 goto .L251
	r3 = r4
	r9 = *(u8 *) (r4+0)
	r4 += -1
	if r9 == r2 goto .L251
	r3 = r4
	r4 = *(u8 *) (r4+0)
	r0 += -7
	if r4 != r2 goto .L252
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
	r2 &= 0xff
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
	r0 = r3
	r3 += -1
	if r0 == 0 goto .L370
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
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
	if r5 == r1 goto .L367
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
	r3 += r1
	r3 += 3
	r5 = r3
	r5 -= r0
	r5 += -2
	r5 >>= 1
	r5 += 1
	r5 &= 3
	if r5 == 0 goto .L415
	if r5 == 1 goto .L426
	if r5 == 2 goto .L427
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L427:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L426:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r3 goto .L429
.L415:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r9 = *(u8 *) (r0+2)
	*(u8 *) (r2+2) = r9
	r5 = *(u8 *) (r1+2)
	*(u8 *) (r4+2) = r5
	r9 = *(u8 *) (r0+4)
	*(u8 *) (r2+4) = r9
	r5 = *(u8 *) (r1+4)
	*(u8 *) (r4+4) = r5
	r2 += 6
	r1 += 6
	r0 += 6
	r4 += 6
	if r0 != r3 goto .L415
.L413:
	exit
.L429:
	exit
	.size	swab, .-swab
	.align	3
	.global	isalpha
	.type	isalpha, @function
isalpha:
	r1 <<= 32
	r1 s>>= 32
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 24 goto .L431
	r0 = 0
.L431:
	r0 &= 1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 126 goto .L433
	r0 = 0
.L433:
	r0 &= 1
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L436
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L436:
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
	if r1 <= 30 goto .L439
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L439:
	r0 = 1
	exit
	.size	iscntrl, .-iscntrl
	.align	3
	.global	isdigit
	.type	isdigit, @function
isdigit:
	r1 += -48
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 8 goto .L441
	r0 = 0
.L441:
	r0 &= 1
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 += -33
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 92 goto .L443
	r0 = 0
.L443:
	r0 &= 1
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 24 goto .L445
	r0 = 0
.L445:
	r0 &= 1
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 += -32
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 93 goto .L447
	r0 = 0
.L447:
	r0 &= 1
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L451
	r1 += -9
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 3 goto .L450
	r0 = 0
.L450:
	r0 &= 1
	exit
.L451:
	r0 = 1
	exit
	.size	isspace, .-isspace
	.align	3
	.global	isupper
	.type	isupper, @function
isupper:
	r1 += -65
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 24 goto .L453
	r0 = 0
.L453:
	r0 &= 1
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
	if r1 <= 30 goto .L457
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L458
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L459
	r0 += -65529
	r5 = r0;r5 &= 0xffffffff
	r0 = 1
	if r5 <= 1 goto .L456
	r0 = 0
.L456:
	r0 &= 1
	exit
.L457:
	r0 = 1
	exit
.L458:
	r0 = 1
	exit
.L459:
	r0 = 1
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	r1 += -48
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 8 goto .L461
	r0 = 0
.L461:
	r0 &= 1
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
	if r1 <= 254 goto .L470
	if r1 <= 8230 goto .L466
	r2 = r1
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L467
	r4 = r1
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L468
	r1 += -65532
	r1 = r1;r1 &= 0xffffffff
	if r1 > 1048579 goto .L469
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L470:
	r0 += 1
	r0 &= 127
	r9 = 1
	if r0 s> 32 goto .L464
	r9 = 0
.L464:
	r0 = r9
	r0 &= 1
	exit
.L466:
	r0 = 1
	exit
.L467:
	r0 = 1
	exit
.L468:
	r0 = 1
	exit
.L469:
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
	if r2 <= 8 goto .L474
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 4 goto .L473
	r0 = 0
.L473:
	r0 &= 1
	exit
.L474:
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
	if r0 != 0 goto .L479
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L480
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L483
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L479:
	r0 = r6
	exit
.L480:
	r0 = r7
	exit
.L483:
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
	if r0 != 0 goto .L487
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L488
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L491
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L487:
	r0 = r6
	exit
.L488:
	r0 = r7
	exit
.L491:
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
	if r0 != 0 goto .L498
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L499
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L494
	if r0 == 0 goto .L500
	r0 = r7
	exit
.L494:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L495
	r8 = 0
.L495:
	r8 &= 0xff
	if r8 == 0 goto .L497
	r6 = r7
.L497:
	r0 = r6
	exit
.L498:
	r0 = r7
	exit
.L499:
	r0 = r6
	exit
.L500:
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
	if r0 != 0 goto .L507
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L508
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L503
	if r2 == 0 goto .L509
	r0 = r7
	exit
.L503:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L504
	r8 = 0
.L504:
	r8 &= 0xff
	if r8 == 0 goto .L506
	r6 = r7
.L506:
	r0 = r6
	exit
.L507:
	r0 = r7
	exit
.L508:
	r0 = r6
	exit
.L509:
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
	if r0 != 0 goto .L516
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L517
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L512
	if r0 == 0 goto .L518
	r0 = r7
	exit
.L512:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L513
	r8 = 0
.L513:
	r8 &= 0xff
	if r8 == 0 goto .L515
	r6 = r7
.L515:
	r0 = r6
	exit
.L516:
	r0 = r7
	exit
.L517:
	r0 = r6
	exit
.L518:
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
	if r0 != 0 goto .L525
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L526
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L521
	if r0 == 0 goto .L527
	r0 = r7
	exit
.L521:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L522
	r8 = 0
.L522:
	r8 &= 0xff
	if r8 == 0 goto .L524
	r6 = r7
.L524:
	r0 = r6
	exit
.L525:
	r0 = r6
	exit
.L526:
	r0 = r7
	exit
.L527:
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
	if r0 != 0 goto .L534
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L535
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L530
	if r2 == 0 goto .L536
	r0 = r7
	exit
.L530:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s<= 0 goto .L531
	r8 = 0
.L531:
	r8 &= 0xff
	if r8 == 0 goto .L533
	r6 = r7
.L533:
	r0 = r6
	exit
.L534:
	r0 = r6
	exit
.L535:
	r0 = r7
	exit
.L536:
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
	if r0 != 0 goto .L543
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L544
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L539
	if r0 == 0 goto .L545
	r0 = r7
	exit
.L539:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L540
	r8 = 0
.L540:
	r8 &= 0xff
	if r8 == 0 goto .L542
	r6 = r7
.L542:
	r0 = r6
	exit
.L543:
	r0 = r6
	exit
.L544:
	r0 = r7
	exit
.L545:
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
	if r1 == 0 goto .L549
	r0 = s.0 ll
	r3 = digits ll
.L548:
	r4 = r1
	r4 &= 63
	r2 = r3
	r2 += r4
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r9 = r0
	r1 >>= 6
	if r1 == 0 goto .L547
	r4 = r1
	r4 &= 63
	r0 = r3
	r0 += r4
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r2
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L547
	r5 = r1
	r5 &= 63
	r9 = r3
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L547
	r2 = r1
	r2 &= 63
	r5 = r3
	r5 += r2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 != 0 goto .L548
.L547:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
.L549:
	r0 = s.0 ll
	goto .L547
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
	if r2 == 0 goto .L562
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L559
	*(u64 *) (r2+8) = r1
.L559:
	exit
.L562:
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
	if r0 == 0 goto .L564
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L564:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L563
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L563:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L568
.L567:
	r0 <<= 32
	r0 s>>= 32
	exit
.L568:
	r1 = -r1
	r0 = r1
	goto .L567
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r7 = r1
.L570:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r1 = r0
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	if r1 == 0 goto .L594
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
	if r2 == 0 goto .L594
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
	if r3 == 0 goto .L594
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
	if r4 == 0 goto .L594
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
	if r5 == 0 goto .L594
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
	if r9 == 0 goto .L594
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
	if r1 == 0 goto .L594
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
	if r2 == 0 goto .L594
	r7 += 1
	goto .L570
.L594:
	if r6 == 43 goto .L577
	if r6 != 45 goto .L578
	r3 = 1
.L572:
	r7 += 1
.L573:
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	r1 s>>= 56
	r4 = r1
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r9 = 9
	if r5 > 8 goto .L575
.L574:
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
	if r9 <= r5 goto .L575
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
	if r9 <= r5 goto .L575
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
	if r9 <= r5 goto .L575
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
	if r9 > r5 goto .L574
.L575:
	if r3 != 0 goto .L576
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L576:
	exit
.L577:
	r3 = r0
	goto .L572
.L578:
	r3 = r0
	goto .L573
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r7 = r1
.L596:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L619
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
	if r0 == 0 goto .L619
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L619
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L619
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L619
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L619
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L619
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L619
	r7 += 1
	goto .L596
.L619:
	if r6 == 43 goto .L598
	if r6 != 45 goto .L599
	r1 = 1
.L598:
	r7 += 1
.L599:
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r3 = 0
	r2 = 9
	if r5 > 8 goto .L601
.L600:
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
	if r2 <= r5 goto .L601
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
	if r2 <= r5 goto .L601
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
	if r2 <= r5 goto .L601
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
	if r2 > r5 goto .L600
.L601:
	if r1 != 0 goto .L595
	r3 = -r3
.L595:
	r0 = r3
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r7 = r1
.L621:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L644
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
	if r0 == 0 goto .L644
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L644
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L644
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L644
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L644
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L644
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	if r0 == 0 goto .L644
	r7 += 1
	goto .L621
.L644:
	if r6 == 43 goto .L623
	if r6 != 45 goto .L624
	r1 = 1
.L623:
	r7 += 1
.L624:
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	r4 = r0
	r4 += -48
	r5 = r4;r5 &= 0xffffffff
	r3 = 0
	r2 = 9
	if r5 > 8 goto .L626
.L625:
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
	if r2 <= r5 goto .L626
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
	if r2 <= r5 goto .L626
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
	if r2 <= r5 goto .L626
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
	if r2 > r5 goto .L625
.L626:
	if r1 != 0 goto .L620
	r3 = -r3
.L620:
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
	r0 <<= 32
	r0 s>>= 32
	*(u64 *) (r10+-8) = r0
	r2 = r8
	r1 = r7
	call	__moddi3
	r1 = *(u64 *) (r10+-8)
	*(u32 *) (r6+0) = r1
	*(u32 *) (r6+4) = r0
	r0 = r6
	exit
	.size	div, .-div
	.align	3
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	r0 = r1
	if r1 s< 0 goto .L648
.L647:
	exit
.L648:
	r0 = -r0
	goto .L647
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
	*(u64 *) (r10+-8) = r0
	r2 = r8
	r1 = r7
	call	__moddi3
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r6+0) = r1
	*(u64 *) (r6+8) = r0
	r0 = r6
	exit
	.size	imaxdiv, .-imaxdiv
	.align	3
	.global	labs
	.type	labs, @function
labs:
	r0 = r1
	if r1 s< 0 goto .L652
.L651:
	exit
.L652:
	r0 = -r0
	goto .L651
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
	*(u64 *) (r10+-8) = r0
	r2 = r8
	r1 = r7
	call	__moddi3
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r6+0) = r1
	*(u64 *) (r6+8) = r0
	r0 = r6
	exit
	.size	ldiv, .-ldiv
	.align	3
	.global	llabs
	.type	llabs, @function
llabs:
	r0 = r1
	if r1 s< 0 goto .L656
.L655:
	exit
.L656:
	r0 = -r0
	goto .L655
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
	*(u64 *) (r10+-8) = r0
	r2 = r8
	r1 = r7
	call	__moddi3
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r6+0) = r1
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
	if r3 == 0 goto .L664
.L659:
	if r2 == r0 goto .L665
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L659
	r0 = 0
	exit
.L664:
	r0 = 0
	exit
.L665:
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
	if r3 != r4 goto .L668
.L667:
	if r3 == 0 goto .L668
	if r4 == 0 goto .L668
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r4 s>>= 32
	if r3 == r4 goto .L667
.L668:
	if r4 s>= r3 goto .L672
	r0 = 1
	if r3 s> r4 goto .L671
	r0 = 0
.L671:
	r0 &= 1
	exit
.L672:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L675:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L691
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L691
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L691
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L691
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L691
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L691
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L691
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L675
.L691:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L695
	r0 = r1
.L694:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L693
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L693
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L693
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L693
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L693
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L693
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L693
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L694
	goto .L693
.L695:
	r0 = r1
.L693:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L737
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L712
	if r0 == 1 goto .L735
	if r0 == 2 goto .L736
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 = r9
	r5 s>>= 32
	if r4 != r9 goto .L714
	if r5 == 0 goto .L714
	r3 += -1
	r1 += 4
	r2 += 4
.L736:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 = r0
	r4 s>>= 32
	if r9 != r0 goto .L714
	if r4 == 0 goto .L714
	r3 += -1
	r1 += 4
	r2 += 4
.L735:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r0
	r5 s>>= 32
	if r9 != r0 goto .L714
	if r5 == 0 goto .L714
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L718
.L712:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r9 = r0
	r9 s>>= 32
	if r4 != r0 goto .L714
	if r9 == 0 goto .L714
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
	if r9 != r3 goto .L714
	if r6 == 0 goto .L714
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r6 = r4
	r6 s>>= 32
	if r3 != r4 goto .L714
	if r6 == 0 goto .L714
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r6 = r4
	r6 s>>= 32
	if r9 != r4 goto .L714
	if r6 == 0 goto .L714
	r3 = r5
	r3 += -3
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L712
.L718:
	r0 = 0
	exit
.L737:
	r0 = 0
	exit
.L717:
	r0 = 1
	if r5 s> r1 goto .L716
	r0 = 0
.L716:
	r0 &= 1
	exit
.L714:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r5 s>= r1 goto .L717
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L788
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L742
	if r0 == 1 goto .L782
	if r0 == 2 goto .L783
	if r0 == 3 goto .L784
	if r0 == 4 goto .L785
	if r0 == 5 goto .L786
	if r0 == 6 goto .L787
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L790
	r3 += -1
	r1 += 4
.L787:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L790
	r3 += -1
	r1 += 4
.L786:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L790
	r3 += -1
	r1 += 4
.L785:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L790
	r3 += -1
	r1 += 4
.L784:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L790
	r3 += -1
	r1 += 4
.L783:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L790
	r3 += -1
	r1 += 4
.L782:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L790
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L745
.L742:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L790
	r3 += -1
	r4 = r3
	r5 = r1
	r5 += 4
	r1 = r5
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L790
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L790
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L790
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L790
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L790
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L790
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L790
	r3 = r4
	r3 += -7
	r5 += 28
	r1 = r5
	if r4 != 7 goto .L742
.L745:
	r0 = 0
	exit
.L788:
	r0 = 0
	exit
.L790:
	r0 = r1
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L841
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L792
	if r0 == 1 goto .L835
	if r0 == 2 goto .L836
	if r0 == 3 goto .L837
	if r0 == 4 goto .L838
	if r0 == 5 goto .L839
	if r0 == 6 goto .L840
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L844
	r3 += -1
	r1 += 4
	r2 += 4
.L840:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L844
	r3 += -1
	r1 += 4
	r2 += 4
.L839:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L844
	r3 += -1
	r1 += 4
	r2 += 4
.L838:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L844
	r3 += -1
	r1 += 4
	r2 += 4
.L837:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L844
	r3 += -1
	r1 += 4
	r2 += 4
.L836:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L844
	r3 += -1
	r1 += 4
	r2 += 4
.L835:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L844
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L798
.L792:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L844
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
	if r5 != r3 goto .L844
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r4 goto .L844
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L844
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r3 goto .L844
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r3 goto .L844
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r4 goto .L844
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L844
	r3 = r9
	r3 += -7
	r1 += 4
	r0 += 28
	r2 = r0
	if r9 != 7 goto .L792
.L798:
	r0 = 0
	exit
.L841:
	r0 = 0
	exit
.L797:
	r0 = 1
	if r9 s> r1 goto .L796
	r0 = 0
.L796:
	r0 &= 1
	exit
.L844:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r9 s>= r1 goto .L797
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r4 = r3
	r4 += -1
	if r3 == 0 goto .L846
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L847
	if r3 == 1 goto .L870
	if r3 == 2 goto .L871
	if r3 == 3 goto .L872
	if r3 == 4 goto .L873
	if r3 == 5 goto .L874
	if r3 == 6 goto .L875
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
.L875:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r4 += -1
	r0 += 4
	r2 += 4
.L874:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r4 += -1
	r0 += 4
	r2 += 4
.L873:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
.L872:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r4 += -1
	r0 += 4
	r2 += 4
.L871:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r4 += -1
	r0 += 4
	r2 += 4
.L870:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
	if r4 == -1 goto .L846
.L847:
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
	if r4 != -1 goto .L847
.L846:
	r0 = r1
	exit
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L878
	r4 = r1
	r0 = r2
	r9 = r3
	r9 <<= 2
	r5 = r1
	r5 -= r2
	if r9 >= r5 goto .L879
	r2 = r3
	r2 += -1
	if r3 == 0 goto .L878
	r3 &= 7
	if r3 == 0 goto .L880
	if r3 == 1 goto .L928
	if r3 == 2 goto .L929
	if r3 == 3 goto .L930
	if r3 == 4 goto .L931
	if r3 == 5 goto .L932
	if r3 == 6 goto .L933
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r1+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
.L933:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r2 += -1
	r4 += 4
	r0 += 4
.L932:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r2 += -1
	r4 += 4
	r0 += 4
.L931:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
.L930:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r2 += -1
	r4 += 4
	r0 += 4
.L929:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r2 += -1
	r4 += 4
	r0 += 4
.L928:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
	if r2 == -1 goto .L878
.L880:
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
	if r2 != -1 goto .L880
	goto .L878
.L879:
	r5 = r3
	r5 += -1
	if r3 == 0 goto .L878
	r5 <<= 2
	r2 += r5
	r3 = r1
	r3 += r5
	r9 = r2
	r9 -= r0
	r9 >>= 2
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L881
	if r9 == 1 goto .L934
	if r9 == 2 goto .L935
	if r9 == 3 goto .L936
	if r9 == 4 goto .L937
	if r9 == 5 goto .L938
	if r9 == 6 goto .L939
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L939:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L938:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L937:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L936:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L935:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L934:
	r4 = r2
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
	if r0 == r4 goto .L878
.L881:
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
	if r0 != r4 goto .L881
.L878:
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
	if r3 == 0 goto .L943
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L944
	if r3 == 1 goto .L967
	if r3 == 2 goto .L968
	if r3 == 3 goto .L969
	if r3 == 4 goto .L970
	if r3 == 5 goto .L971
	if r3 == 6 goto .L972
	*(u32 *) (r1+0) = r2
	r4 += -1
	r0 += 4
.L972:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L971:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L970:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L969:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L968:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L967:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L943
.L944:
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
	if r4 != -1 goto .L944
.L943:
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L975
	r0 = r1
	r0 += r3
	r2 += r3
	if r3 == 0 goto .L974
	r4 = r1
	r4 ^= -1
	r3 = r0
	r3 += r4
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L977
	if r3 == 1 goto .L1023
	if r3 == 2 goto .L1024
	if r3 == 3 goto .L1025
	if r3 == 4 goto .L1026
	if r3 == 5 goto .L1027
	if r3 == 6 goto .L1028
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1028:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1027:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1026:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1025:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1024:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1023:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r1 == r0 goto .L1037
.L977:
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
	if r1 != r0 goto .L977
	exit
.L975:
	if r1 == r2 goto .L974
	if r3 == 0 goto .L974
	r0 = r1
	r1 += r3
	r3 = r0
	r3 ^= -1
	r3 += r1
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L978
	if r3 == 1 goto .L1029
	if r3 == 2 goto .L1030
	if r3 == 3 goto .L1031
	if r3 == 4 goto .L1032
	if r3 == 5 goto .L1033
	if r3 == 6 goto .L1034
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L1034:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L1033:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
.L1032:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	r0 += 1
	r2 += 1
.L1031:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L1030:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L1029:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
	if r0 == r1 goto .L1038
.L978:
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
	if r0 != r1 goto .L978
.L974:
	exit
.L1037:
	exit
.L1038:
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
	r0 = r0;r0 &= 0xffffffff
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
	r0 = r0;r0 &= 0xffffffff
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
	r0 &= 0xffff
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
	r0 &= 0xffff
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
	r0 &= 0xff
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
	r0 &= 0xff
	exit
	.size	rotr8, .-rotr8
	.align	3
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	r2 = r1
	r2 &= 65280
	r2 >>= 8
	r0 = r1
	r0 <<= 56
	r0 >>= 48
	r0 |= r2
	exit
	.size	bswap_16, .-bswap_16
	.align	3
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	r1 = r1;r1 &= 0xffffffff
	r3 = r1
	r3 >>= 24
	r2 = r1
	r2 >>= 8
	r2 &= 65280
	r0 = r1
	r0 <<= 8
	r0 &= 16711680
	r1 <<= 24
	r4 = r1;r4 &= 0xffffffff
	r4 |= r3
	r2 |= r4
	r0 |= r2
	exit
	.size	bswap_32, .-bswap_32
	.align	3
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	r6 = r1
	r6 >>= 56
	r9 = r1
	r9 >>= 40
	r9 &= 65280
	r5 = r1
	r5 >>= 24
	r5 &= 16711680
	r4 = r1
	r4 >>= 8
	r0 = 4278190080 ll
	r4 &= r0
	r3 = r1
	r3 <<= 8
	r2 = 1095216660480 ll
	r3 &= r2
	r2 = r1
	r2 <<= 24
	r7 = 280375465082880 ll
	r2 &= r7
	r0 = r1
	r0 <<= 40
	r7 = 71776119061217280 ll
	r0 &= r7
	r1 <<= 56
	r1 |= r6
	r9 |= r1
	r5 |= r9
	r4 |= r5
	r3 |= r4
	r2 |= r3
	r0 |= r2
	exit
	.size	bswap_64, .-bswap_64
	.align	3
	.global	ffs
	.type	ffs, @function
ffs:
	r0 = 0
	r1 = r1;r1 &= 0xffffffff
.L1055:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L1071
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r3 = r1
	r3 >>= r0
	r3 &= 1
	if r3 != 0 goto .L1071
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r4 = r1
	r4 >>= r0
	r4 &= 1
	if r4 != 0 goto .L1071
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r5 = r1
	r5 >>= r0
	r5 &= 1
	if r5 != 0 goto .L1071
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r9 = r1
	r9 >>= r0
	r9 &= 1
	if r9 != 0 goto .L1071
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L1071
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r3 = r1
	r3 >>= r0
	r3 &= 1
	if r3 != 0 goto .L1071
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r4 = r1
	r4 >>= r0
	r4 &= 1
	if r4 != 0 goto .L1071
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 32 goto .L1055
	r0 = 0
	exit
.L1071:
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
	if r1 == 0 goto .L1076
	r0 = r2
	r0 &= 1
	if r0 != 0 goto .L1074
	r0 = 1
.L1075:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1092
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1074
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1074
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1074
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1074
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1074
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1074
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1075
	exit
.L1092:
	exit
.L1076:
	r0 = r2
.L1074:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L1096
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1097
.L1095:
	r0 = r7
	r0 &= 1
	exit
.L1097:
	r7 = 0
	goto .L1095
.L1096:
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
	if r0 s<= 0 goto .L1101
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1102
.L1100:
	r0 = r7
	r0 &= 1
	exit
.L1102:
	r7 = 0
	goto .L1100
.L1101:
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
	if r0 s<= 0 goto .L1106
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1107
.L1105:
	r0 = r7
	r0 &= 1
	exit
.L1107:
	r7 = 0
	goto .L1105
.L1106:
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
	if r0 != 0 goto .L1110
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1110
	if r6 s< 0 goto .L1117
	r7 = 0x40000000 ll
	goto .L1114
.L1117:
	r7 = 0x3f000000 ll
	goto .L1114
.L1113:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1110
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1114:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1113
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1113
.L1110:
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
	if r0 != 0 goto .L1119
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1119
	if r6 s< 0 goto .L1126
	r7 = 0x4000000000000000 ll
	goto .L1123
.L1126:
	r7 = 0x3fe0000000000000 ll
	goto .L1123
.L1122:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1119
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1123:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1122
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1122
.L1119:
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
	if r0 != 0 goto .L1128
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1128
	if r6 s< 0 goto .L1135
	r7 = 0x4000000000000000 ll
	goto .L1132
.L1135:
	r7 = 0x3fe0000000000000 ll
	goto .L1132
.L1131:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1128
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1132:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1131
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1131
.L1128:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1137
	r0 = r2
	r4 = r1
	r2 += r3
	r3 = r0
	r3 ^= -1
	r3 += r2
	r3 += 1
	r3 &= 3
	if r3 == 0 goto .L1138
	if r3 == 1 goto .L1149
	if r3 == 2 goto .L1150
	r5 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r1+0)
	r9 ^= r5
	*(u8 *) (r1+0) = r9
	r0 += 1
	r4 += 1
.L1150:
	r5 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r4+0) = r3
	r0 += 1
	r4 += 1
.L1149:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r5 ^= r9
	*(u8 *) (r4+0) = r5
	r0 += 1
	r4 += 1
	if r0 == r2 goto .L1137
.L1138:
	r9 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r3 ^= r9
	*(u8 *) (r4+0) = r3
	r0 += 1
	r4 += 1
	r5 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r4+0)
	r9 ^= r5
	*(u8 *) (r4+0) = r9
	r5 = r4
	r5 += 1
	r9 = *(u8 *) (r0+1)
	r3 = *(u8 *) (r5+0)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r5 += 1
	r9 = *(u8 *) (r0+2)
	r3 = *(u8 *) (r5+0)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r0 += 3
	r4 += 3
	if r0 != r2 goto .L1138
.L1137:
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
	if r7 == 0 goto .L1154
	r2 = r7
	r2 &= 7
	if r2 == 0 goto .L1153
	if r2 == 1 goto .L1193
	if r2 == 2 goto .L1194
	if r2 == 3 goto .L1195
	if r2 == 4 goto .L1196
	if r2 == 5 goto .L1197
	if r2 == 6 goto .L1198
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1156
	r6 += 1
	r0 += 1
	r7 += -1
.L1198:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1156
	r6 += 1
	r0 += 1
	r7 += -1
.L1197:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1156
	r6 += 1
	r0 += 1
	r7 += -1
.L1196:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1156
	r6 += 1
	r0 += 1
	r7 += -1
.L1195:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1156
	r6 += 1
	r0 += 1
	r7 += -1
.L1194:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1156
	r6 += 1
	r0 += 1
	r7 += -1
.L1193:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1156
	r6 += 1
	r0 += 1
	r7 += -1
	if r7 == 0 goto .L1154
.L1153:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1156
	r6 += 1
	r0 += 1
	r5 = r7
	r5 += -1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1156
	r1 = *(u8 *) (r6+1)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+1) = r1
	if r1 == 0 goto .L1156
	r2 = *(u8 *) (r6+2)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+2) = r2
	if r2 == 0 goto .L1156
	r3 = *(u8 *) (r6+3)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+3) = r3
	if r3 == 0 goto .L1156
	r4 = *(u8 *) (r6+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+4) = r4
	if r4 == 0 goto .L1156
	r9 = *(u8 *) (r6+5)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+5) = r9
	if r9 == 0 goto .L1156
	r1 = *(u8 *) (r6+6)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+6) = r1
	if r1 == 0 goto .L1156
	r6 += 7
	r0 += 7
	r7 = r5
	r7 += -7
	if r5 != 7 goto .L1153
.L1154:
	*(u8 *) (r0+0) = 0
.L1156:
	r0 = r8
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1248
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1201
	if r0 == 1 goto .L1242
	if r0 == 2 goto .L1243
	if r0 == 3 goto .L1244
	if r0 == 4 goto .L1245
	if r0 == 5 goto .L1246
	if r0 == 6 goto .L1247
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1200
	r3 += 1
.L1247:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 != 0 goto .L1250
.L1200:
	r0 = r3
	exit
.L1248:
	r3 = r2
	goto .L1200
.L1250:
	r3 += 1
.L1246:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1200
	r3 += 1
.L1245:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1200
	r3 += 1
.L1244:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1200
	r3 += 1
.L1243:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1200
	r3 += 1
.L1242:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1200
	r3 += 1
	if r2 == r3 goto .L1205
.L1201:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1200
	r5 = r3
	r5 += 1
	r3 = r5
	r4 = r1
	r4 += r5
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1200
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1200
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1200
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1200
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1200
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1200
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1200
	r5 += 7
	r3 = r5
	if r2 != r5 goto .L1201
.L1205:
	r3 = r2
	goto .L1200
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1258
.L1252:
	r3 = r2
.L1255:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 == 0 goto .L1259
	r3 += 1
	if r4 != r5 goto .L1255
.L1253:
	r0 = r1
	exit
.L1258:
	r1 = 0
	goto .L1253
.L1259:
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1252
	r1 = 0
	goto .L1253
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1262
.L1261:
	r1 += 1
	if r0 == 0 goto .L1265
.L1262:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1261
	r3 = r1
	goto .L1261
.L1265:
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
	if r0 == 0 goto .L1266
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
.L1268:
	r2 = *(u32 *) (r10+-8)
	r1 = r6
	call	strchr
	r6 = r0
	if r0 == 0 goto .L1266
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1266
	r6 += 1
	goto .L1268
.L1266:
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
	if r0 s<= 0 goto .L1281
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1275
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1274
.L1275:
	r0 = r6
	exit
.L1281:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1275
.L1274:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1275
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r6 = r1
	r0 = r2
	r0 -= r4
	r1 += r0
	*(u64 *) (r10+-24) = r1
	if r4 == 0 goto .L1286
	if r4 >= r2 goto .L1287
	if r6 > r1 goto .L1288
	r2 = *(u8 *) (r3+0)
	r2 <<= 56
	r4 += -1
	*(u64 *) (r10+-8) = r4
	r3 += 1
	*(u64 *) (r10+-16) = r3
	r1 -= r6
	r1 &= 7
	r8 = r1
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r7 = r2
	r7 s>>= 56
	if r3 == r2 goto .L1338
.L1291:
	r6 += 1
	r4 = *(u64 *) (r10+-24)
	if r4 < r6 goto .L1337
	if r8 == 0 goto .L1285
	if r8 == 1 goto .L1329
	if r8 == 2 goto .L1330
	if r8 == 3 goto .L1331
	if r8 == 4 goto .L1332
	if r8 == 5 goto .L1333
	if r8 == 6 goto .L1334
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r7 goto .L1339
.L1293:
	r6 += 1
.L1334:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r7 goto .L1340
.L1296:
	r6 += 1
.L1333:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r7 goto .L1341
.L1299:
	r6 += 1
.L1332:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r7 goto .L1342
.L1302:
	r6 += 1
.L1331:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r7 goto .L1343
.L1305:
	r6 += 1
.L1330:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r7 goto .L1344
.L1308:
	r6 += 1
.L1329:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r7 goto .L1345
.L1311:
	r6 += 1
	r5 = *(u64 *) (r10+-24)
	if r5 >= r6 goto .L1285
.L1337:
	r0 = 0
	exit
.L1346:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1284
.L1289:
	r0 = r6
	exit
.L1286:
	r0 = r6
	exit
.L1287:
	r0 = 0
	exit
.L1288:
	r0 = 0
	exit
.L1338:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1291
	goto .L1289
.L1339:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1293
	goto .L1289
.L1340:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1296
	goto .L1289
.L1341:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1299
	goto .L1289
.L1342:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1302
	goto .L1289
.L1343:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1305
	goto .L1289
.L1344:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1308
	goto .L1289
.L1345:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1311
	goto .L1289
.L1347:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1314
	goto .L1289
.L1348:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1316
	goto .L1289
.L1349:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1318
	goto .L1289
.L1350:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1320
	goto .L1289
.L1351:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1322
	goto .L1289
.L1352:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1324
	goto .L1289
.L1326:
	r6 = r8
	r6 += 7
	r0 = *(u64 *) (r10+-24)
	if r0 < r6 goto .L1337
.L1285:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r7 goto .L1346
.L1284:
	r6 += 1
	r8 = r6
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r7 goto .L1347
.L1314:
	r6 = r8
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r7 goto .L1348
.L1316:
	r6 = r8
	r6 += 2
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r7 goto .L1349
.L1318:
	r6 = r8
	r6 += 3
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r7 goto .L1350
.L1320:
	r6 = r8
	r6 += 4
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r7 goto .L1351
.L1322:
	r6 = r8
	r6 += 5
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r7 goto .L1352
.L1324:
	r6 = r8
	r6 += 6
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 != r7 goto .L1326
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1326
	goto .L1289
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1389
	*(u64 *) (r10+-8) = 0
.L1354:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1386
	r7 = 0
	r8 = 0x3fe0000000000000 ll
.L1358:
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
	if r0 s< 0 goto .L1359
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
	if r0 s< 0 goto .L1359
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
	if r0 s< 0 goto .L1359
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
	if r0 s>= 0 goto .L1358
	goto .L1359
.L1389:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1354
.L1386:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1387
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 == 0 goto .L1388
	r7 = 0
	r8 = r7
.L1362:
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
	if r8 s< r0 goto .L1359
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
	if r8 s< r0 goto .L1359
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
	if r8 s< r0 goto .L1359
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
	if r8 s>= r0 goto .L1362
	goto .L1359
.L1387:
	r7 = 0
.L1359:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r7
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1363
	r3 = -9223372036854775808 ll
	r3 ^= r6
	r6 = r3
.L1363:
	r0 = r6
	exit
.L1388:
	r7 = 0
	goto .L1359
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	if r1 == 0 goto .L1393
	r0 = 0
.L1392:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1409
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1390
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1390
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1390
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1390
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1390
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1390
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1392
	exit
.L1409:
	exit
.L1393:
	r0 = 0
.L1390:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1418
	r9 = 32
	r4 = 1
.L1411:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1413
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1413
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1413
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1413
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1413
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1413
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1413
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1418
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1413
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1411
.L1414:
	if r3 != 0 goto .L1419
	r0 = r9
.L1419:
	exit
.L1416:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1414
.L1417:
	if r2 >= r0 goto .L1416
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 = r4
	r1 |= r9
	r9 = r1;r9 &= 0xffffffff
	goto .L1416
.L1413:
	if r4 == 0 goto .L1436
.L1418:
	r9 = 0
	goto .L1417
.L1436:
	r9 = r4
	goto .L1414
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
	if r2 == r1 goto .L1439
	r0 = r0;r0 &= 0xffffffff
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
.L1439:
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
	if r0 == r2 goto .L1442
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1442:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1446
	r0 = 0
.L1445:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	if r1 == 0 goto .L1454
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r4 += r0
	r0 = r4;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1444
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r0 = r9;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1444
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 != 0 goto .L1445
	exit
.L1454:
	exit
.L1446:
	r0 = r1
.L1444:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r6 = r3
	r6 >>= 3
	r5 = r3
	r5 &= -8
	r5 = r5;r5 &= 0xffffffff
	if r2 >= r1 goto .L1456
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1456
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1455
	r9 = r0
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L1462
	if r9 == 1 goto .L1531
	if r9 == 2 goto .L1532
	if r9 == 3 goto .L1533
	if r9 == 4 goto .L1534
	if r9 == 5 goto .L1535
	if r9 == 6 goto .L1536
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1536:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1535:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r0 += -1
.L1534:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
.L1533:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1532:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1531:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r0 += -1
	if r0 == -1 goto .L1552
.L1462:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
	r3 = r0
	r5 = r2
	r5 += r0
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 = r3
	r9 += -1
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -2
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -4
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -5
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -6
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r0 = r3
	r0 += -7
	if r3 != 6 goto .L1462
.L1455:
	exit
.L1456:
	if r6 == 0 goto .L1459
	r0 = r2
	r4 = r1
	r6 <<= 3
	r9 = r6
	r6 = r2
	r6 += r9
	r9 = r6
	r9 -= r2
	r9 += -8
	r9 >>= 3
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L1460
	if r9 == 1 goto .L1537
	if r9 == 2 goto .L1538
	if r9 == 3 goto .L1539
	if r9 == 4 goto .L1540
	if r9 == 5 goto .L1541
	if r9 == 6 goto .L1542
	r9 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r9
	r0 += 8
	r4 += 8
.L1542:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r0 += 8
	r4 += 8
.L1541:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r0 += 8
	r4 += 8
.L1540:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r0 += 8
	r4 += 8
.L1539:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r0 += 8
	r4 += 8
.L1538:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r0 += 8
	r4 += 8
.L1537:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1459
.L1460:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r0 += 8
	r4 += 8
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r9 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r9
	r9 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r9
	r9 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r9
	r9 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r9
	r9 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r9
	r9 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r9
	r0 += 56
	r4 += 56
	if r0 != r6 goto .L1460
.L1459:
	if r5 > r3 goto .L1455
	r0 = r2
	r0 += r5
	r1 += r5
	r2 += 1
	r3 += -1
	r3 -= r5
	r3 = r3;r3 &= 0xffffffff
	r5 += r2
	r5 += r3
	r2 = r0
	r2 ^= -1
	r2 += r5
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L1461
	if r2 == 1 goto .L1543
	if r2 == 2 goto .L1544
	if r2 == 3 goto .L1545
	if r2 == 4 goto .L1546
	if r2 == 5 goto .L1547
	if r2 == 6 goto .L1548
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1548:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1547:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1546:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
	r0 += 1
	r1 += 1
.L1545:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1544:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1543:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r5 goto .L1553
.L1461:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
	r0 += 1
	r1 += 1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r9 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r9
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r3
	r2 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r2
	r4 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r4
	r9 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r9
	r3 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r3
	r0 += 7
	r1 += 7
	if r0 != r5 goto .L1461
	exit
.L1553:
	exit
.L1552:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 1
	if r2 >= r1 goto .L1555
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1555
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1554
	r9 = r0
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L1560
	if r9 == 1 goto .L1607
	if r9 == 2 goto .L1608
	if r9 == 3 goto .L1609
	if r9 == 4 goto .L1610
	if r9 == 5 goto .L1611
	if r9 == 6 goto .L1612
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1612:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1611:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r0 += -1
.L1610:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
.L1609:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1608:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1607:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r0 += -1
	if r0 == -1 goto .L1621
.L1560:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
	r3 = r0
	r5 = r2
	r5 += r0
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 = r3
	r9 += -1
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -2
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -4
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -5
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -6
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r0 = r3
	r0 += -7
	if r3 != 6 goto .L1560
.L1554:
	exit
.L1555:
	if r5 == 0 goto .L1558
	r0 = r2
	r4 = r1
	r5 += r5
	r9 = r2
	r9 += r5
	r5 = r9
	r5 -= r2
	r5 += -2
	r5 >>= 1
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1559
	if r5 == 1 goto .L1613
	if r5 == 2 goto .L1614
	if r5 == 3 goto .L1615
	if r5 == 4 goto .L1616
	if r5 == 5 goto .L1617
	if r5 == 6 goto .L1618
	r5 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r5
	r0 += 2
	r4 += 2
.L1618:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1617:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1616:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1615:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1614:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1613:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L1558
.L1559:
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
	if r0 != r9 goto .L1559
.L1558:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1554
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1621:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r6 = r3
	r6 >>= 2
	r5 = r3
	r5 &= -4
	r5 = r5;r5 &= 0xffffffff
	if r2 >= r1 goto .L1623
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1623
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1622
	r9 = r0
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L1629
	if r9 == 1 goto .L1698
	if r9 == 2 goto .L1699
	if r9 == 3 goto .L1700
	if r9 == 4 goto .L1701
	if r9 == 5 goto .L1702
	if r9 == 6 goto .L1703
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1703:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1702:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r0 += -1
.L1701:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
.L1700:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1699:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1698:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r0 += -1
	if r0 == -1 goto .L1719
.L1629:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
	r3 = r0
	r5 = r2
	r5 += r0
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 = r3
	r9 += -1
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -2
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -3
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -4
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -5
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r9 = r3
	r9 += -6
	r5 = r2
	r5 += r9
	r4 = r1
	r4 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r0 = r3
	r0 += -7
	if r3 != 6 goto .L1629
.L1622:
	exit
.L1623:
	if r6 == 0 goto .L1626
	r0 = r2
	r4 = r1
	r6 <<= 2
	r9 = r6
	r6 = r2
	r6 += r9
	r9 = r6
	r9 -= r2
	r9 += -4
	r9 >>= 2
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L1627
	if r9 == 1 goto .L1704
	if r9 == 2 goto .L1705
	if r9 == 3 goto .L1706
	if r9 == 4 goto .L1707
	if r9 == 5 goto .L1708
	if r9 == 6 goto .L1709
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r0 += 4
	r4 += 4
.L1709:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1708:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1707:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1706:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1705:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
.L1704:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L1626
.L1627:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r0 += 4
	r4 += 4
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r9 = *(u32 *) (r0+4)
	*(u32 *) (r4+4) = r9
	r9 = *(u32 *) (r0+8)
	*(u32 *) (r4+8) = r9
	r9 = *(u32 *) (r0+12)
	*(u32 *) (r4+12) = r9
	r9 = *(u32 *) (r0+16)
	*(u32 *) (r4+16) = r9
	r9 = *(u32 *) (r0+20)
	*(u32 *) (r4+20) = r9
	r9 = *(u32 *) (r0+24)
	*(u32 *) (r4+24) = r9
	r0 += 28
	r4 += 28
	if r0 != r6 goto .L1627
.L1626:
	if r5 > r3 goto .L1622
	r0 = r2
	r0 += r5
	r1 += r5
	r2 += 1
	r3 += -1
	r3 -= r5
	r3 = r3;r3 &= 0xffffffff
	r5 += r2
	r5 += r3
	r2 = r0
	r2 ^= -1
	r2 += r5
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L1628
	if r2 == 1 goto .L1710
	if r2 == 2 goto .L1711
	if r2 == 3 goto .L1712
	if r2 == 4 goto .L1713
	if r2 == 5 goto .L1714
	if r2 == 6 goto .L1715
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1715:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1714:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1713:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
	r0 += 1
	r1 += 1
.L1712:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
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
	if r0 == r5 goto .L1720
.L1628:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
	r0 += 1
	r1 += 1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r9 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r9
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r3
	r2 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r2
	r4 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r4
	r9 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r9
	r3 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r3
	r0 += 7
	r1 += 7
	if r0 != r5 goto .L1628
	exit
.L1720:
	exit
.L1719:
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
	r0 <<= 32
	r0 s>>= 32
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
	if r0 != 0 goto .L1729
	r0 = r1
	r0 s>>= 14
	if r0 != 0 goto .L1728
	r3 = r1
	r3 s>>= 13
	if r3 != 0 goto .L1730
	r4 = r1
	r4 s>>= 12
	if r4 != 0 goto .L1731
	r5 = r1
	r5 s>>= 11
	if r5 != 0 goto .L1732
	r9 = r1
	r9 s>>= 10
	if r9 != 0 goto .L1733
	r0 = r1
	r0 s>>= 9
	if r0 != 0 goto .L1734
	r3 = r1
	r3 s>>= 8
	if r3 != 0 goto .L1735
	r4 = r1
	r4 s>>= 7
	if r4 != 0 goto .L1736
	r5 = r1
	r5 s>>= 6
	if r5 != 0 goto .L1737
	r9 = r1
	r9 s>>= 5
	if r9 != 0 goto .L1738
	r0 = r1
	r0 s>>= 4
	if r0 != 0 goto .L1739
	r3 = r1
	r3 s>>= 3
	if r3 != 0 goto .L1740
	r4 = r1
	r4 s>>= 2
	if r4 != 0 goto .L1741
	r2 s>>= 1
	if r2 != 0 goto .L1742
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L1744
.L1728:
	exit
.L1744:
	r0 = 15
	exit
.L1729:
	r0 = 0
	exit
.L1730:
	r0 = 2
	exit
.L1731:
	r0 = 3
	exit
.L1732:
	r0 = 4
	exit
.L1733:
	r0 = 5
	exit
.L1734:
	r0 = 6
	exit
.L1735:
	r0 = 7
	exit
.L1736:
	r0 = 8
	exit
.L1737:
	r0 = 9
	exit
.L1738:
	r0 = 10
	exit
.L1739:
	r0 = 11
	exit
.L1740:
	r0 = 12
	exit
.L1741:
	r0 = 13
	exit
.L1742:
	r0 = 14
	goto .L1728
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r1 &= 0xffff
	r0 = r1
	r2 = r1
	r2 &= 1
	if r2 != 0 goto .L1747
	r3 = r1
	r3 &= 2
	if r3 != 0 goto .L1748
	r4 = r1
	r4 &= 4
	if r4 != 0 goto .L1749
	r5 = r1
	r5 &= 8
	if r5 != 0 goto .L1750
	r9 = r1
	r9 &= 16
	if r9 != 0 goto .L1751
	r2 = r1
	r2 &= 32
	if r2 != 0 goto .L1752
	r3 = r1
	r3 &= 64
	if r3 != 0 goto .L1753
	r4 = r1
	r4 &= 128
	if r4 != 0 goto .L1754
	r5 = r1
	r5 &= 256
	if r5 != 0 goto .L1755
	r9 = r1
	r9 &= 512
	if r9 != 0 goto .L1756
	r2 = r1
	r2 &= 1024
	if r2 != 0 goto .L1757
	r3 = r1
	r3 &= 2048
	if r3 != 0 goto .L1758
	r4 = r1
	r4 &= 4096
	if r4 != 0 goto .L1759
	r5 = r1
	r5 &= 8192
	if r5 != 0 goto .L1760
	r1 &= 16384
	if r1 != 0 goto .L1761
	r0 s>>= 15
	r1 = r0
	r0 = 16
	r0 -= r1
	exit
.L1747:
	r0 = 0
	exit
.L1748:
	r0 = 1
	exit
.L1749:
	r0 = 2
	exit
.L1750:
	r0 = 3
	exit
.L1751:
	r0 = 4
	exit
.L1752:
	r0 = 5
	exit
.L1753:
	r0 = 6
	exit
.L1754:
	r0 = 7
	exit
.L1755:
	r0 = 8
	exit
.L1756:
	r0 = 9
	exit
.L1757:
	r0 = 10
	exit
.L1758:
	r0 = 11
	exit
.L1759:
	r0 = 12
	exit
.L1760:
	r0 = 13
	exit
.L1761:
	r0 = 14
	exit
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
	r1 &= 0xffff
	r0 = r1
	r1 &= 1
	r2 = r0
	r2 s>>= 1
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 s>>= 2
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 s>>= 3
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 s>>= 4
	r5 &= 1
	r1 += r5
	r9 = r0
	r9 s>>= 5
	r9 &= 1
	r1 += r9
	r2 = r0
	r2 s>>= 6
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 s>>= 7
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 s>>= 8
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 s>>= 9
	r5 &= 1
	r1 += r5
	r9 = r0
	r9 s>>= 10
	r9 &= 1
	r1 += r9
	r2 = r0
	r2 s>>= 11
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 s>>= 12
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 s>>= 13
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 s>>= 14
	r5 &= 1
	r1 += r5
	r0 s>>= 15
	r0 += r1
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r1 &= 0xffff
	r0 = r1
	r1 &= 1
	r2 = r0
	r2 s>>= 1
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 s>>= 2
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 s>>= 3
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 s>>= 4
	r5 &= 1
	r1 += r5
	r9 = r0
	r9 s>>= 5
	r9 &= 1
	r1 += r9
	r2 = r0
	r2 s>>= 6
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 s>>= 7
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 s>>= 8
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 s>>= 9
	r5 &= 1
	r1 += r5
	r9 = r0
	r9 s>>= 10
	r9 &= 1
	r1 += r9
	r2 = r0
	r2 s>>= 11
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 s>>= 12
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 s>>= 13
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 s>>= 14
	r5 &= 1
	r1 += r5
	r0 s>>= 15
	r0 += r1
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1774
	r0 = 0
.L1773:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	if r1 == 0 goto .L1782
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r4 += r0
	r0 = r4;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1772
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r0 = r9;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1772
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 != 0 goto .L1773
	exit
.L1782:
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
	r4 = r1;r4 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r4 == 0 goto .L1786
	if r2 == 0 goto .L1787
	r0 = 0
.L1785:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r4 += r4
	r1 = r4;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1795
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r4 += r0
	r0 = r4;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1784
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r0 = r9;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1784
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L1785
	exit
.L1795:
	exit
.L1786:
	r0 = r4
	exit
.L1787:
	r0 = r2
.L1784:
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
.L1797:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1799
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1799
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1799
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1799
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1799
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1799
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1799
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1804
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1799
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1797
.L1800:
	if r3 != 0 goto .L1805
	r0 = r9
.L1805:
	exit
.L1802:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1800
.L1803:
	if r2 >= r0 goto .L1802
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 = r4
	r1 |= r9
	r9 = r1;r9 &= 0xffffffff
	goto .L1802
.L1799:
	if r4 == 0 goto .L1822
.L1804:
	r9 = 0
	goto .L1803
.L1822:
	r9 = r4
	goto .L1800
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1826
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1827
.L1825:
	r0 = r8
	r0 &= 1
	exit
.L1827:
	r8 = 0
	goto .L1825
.L1826:
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
	if r0 s<= 0 goto .L1831
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1832
.L1830:
	r0 = r8
	r0 &= 1
	exit
.L1832:
	r8 = 0
	goto .L1830
.L1831:
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
	if r2 s< 0 goto .L1848
	r2 = 0
	if r3 == r2 goto .L1849
.L1840:
	r4 = 32
	r0 = 0
.L1838:
	r9 = r3
	r9 &= 1
	r9 = -r9
	r5 = r1
	r5 &= r9
	r5 += r0
	r5 <<= 32
	r0 = r5
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L1837
	r4 += -1
	r4 &= 0xff
	r9 = r3
	r9 &= 1
	r9 = -r9
	r5 = r1
	r5 &= r9
	r5 += r0
	r5 <<= 32
	r0 = r5
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r3 <<= 31
	r3 s>>= 32
	if r3 == 0 goto .L1837
	r4 += -1
	r4 &= 0xff
	r9 = r3
	r9 &= 1
	r9 = -r9
	r5 = r1
	r5 &= r9
	r5 += r0
	r5 <<= 32
	r0 = r5
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L1837
	r4 += -1
	r4 &= 0xff
	r9 = r3
	r9 &= 1
	r9 = -r9
	r5 = r1
	r5 &= r9
	r5 += r0
	r5 <<= 32
	r0 = r5
	r0 s>>= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r3 s>>= 1
	if r3 == 0 goto .L1837
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L1838
.L1837:
	if r2 == 0 goto .L1842
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L1848:
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r2 = 1
	goto .L1840
.L1849:
	r0 = r3
.L1842:
	exit
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1858
	if r2 s< 0 goto .L1859
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1858:
	r1 = -r1
	if r2 s<= 0 goto .L1860
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
.L1854:
	r0 = -r0
	exit
.L1859:
	r3 = 0
	r2 = -r2
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	goto .L1854
.L1860:
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
	if r1 s< 0 goto .L1866
	if r2 s< 0 goto .L1867
.L1864:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1866:
	r1 = -r1
	if r2 s< 0 goto .L1868
.L1863:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	r0 = -r0
	exit
.L1868:
	r0 = -r0
	r2 = r0
	goto .L1863
.L1867:
	r0 = -r0
	r2 = r0
	goto .L1864
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r0 goto .L1891
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1892
	r5 = r2
	r5 += r2
	r5 &= 0xffff
	if r5 > r0 goto .L1893
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1894
	r9 = r2
	r9 <<= 2
	r9 &= 0xffff
	if r9 > r0 goto .L1895
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1896
	r5 = r2
	r5 <<= 3
	r5 &= 0xffff
	if r5 > r0 goto .L1897
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1898
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L1899
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1900
	r5 = r2
	r5 <<= 5
	r5 &= 0xffff
	if r5 > r0 goto .L1901
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1902
	r9 = r2
	r9 <<= 6
	r9 &= 0xffff
	if r9 > r0 goto .L1903
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1904
	r5 = r2
	r5 <<= 7
	r5 &= 0xffff
	if r5 > r0 goto .L1905
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1906
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L1907
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1908
	r5 = r2
	r5 <<= 9
	r5 &= 0xffff
	if r5 > r0 goto .L1909
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1910
	r9 = r2
	r9 <<= 10
	r9 &= 0xffff
	if r9 > r0 goto .L1911
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1912
	r5 = r2
	r5 <<= 11
	r5 &= 0xffff
	if r5 > r0 goto .L1913
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1914
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L1915
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1916
	r5 = r2
	r5 <<= 13
	r5 &= 0xffff
	if r5 > r0 goto .L1917
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1918
	r9 = r2
	r9 <<= 14
	r9 &= 0xffff
	if r9 > r0 goto .L1919
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1920
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L1921
	r1 = 0
	r4 = 32768
	if r2 != r1 goto .L1870
.L1871:
	if r3 != 0 goto .L1923
	r0 = r1
	exit
.L1889:
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L1890:
	r5 = r4
	r5 >>= 1
	r9 = r2
	r9 >>= 1
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1873
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1873:
	r5 = r4
	r5 >>= 2
	r9 = r2
	r9 >>= 2
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1874
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1874:
	r5 = r4
	r5 >>= 3
	r9 = r2
	r9 >>= 3
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1875
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1875:
	r5 = r4
	r5 >>= 4
	r9 = r2
	r9 >>= 4
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1876
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1876:
	r5 = r4
	r5 >>= 5
	r9 = r2
	r9 >>= 5
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1877
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1877:
	r5 = r4
	r5 >>= 6
	r9 = r2
	r9 >>= 6
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1878
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1878:
	r5 = r4
	r5 >>= 7
	r9 = r2
	r9 >>= 7
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1879
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1879:
	r5 = r4
	r5 >>= 8
	r9 = r2
	r9 >>= 8
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1880
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1880:
	r5 = r4
	r5 >>= 9
	r9 = r2
	r9 >>= 9
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1881
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1881:
	r5 = r4
	r5 >>= 10
	r9 = r2
	r9 >>= 10
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1882
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1882:
	r5 = r4
	r5 >>= 11
	r9 = r2
	r9 >>= 11
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1883
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1883:
	r5 = r4
	r5 >>= 12
	r9 = r2
	r9 >>= 12
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1884
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1884:
	r5 = r4
	r5 >>= 13
	r9 = r2
	r9 >>= 13
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1885
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1885:
	r5 = r4
	r5 >>= 14
	r9 = r2
	r9 >>= 14
	if r5 == 0 goto .L1871
	if r9 >= r0 goto .L1886
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1886:
	r4 >>= 15
	r2 >>= 15
	if r4 == 0 goto .L1871
	if r2 >= r0 goto .L1871
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
	goto .L1871
.L1891:
	r4 = 1
.L1870:
	if r0 >= r2 goto .L1889
	r1 = 0
	goto .L1890
.L1892:
	r4 = 1
	goto .L1870
.L1893:
	r2 = r5
	r4 = 2
	goto .L1870
.L1894:
	r2 = r5
	r4 = 2
	goto .L1870
.L1895:
	r2 = r9
	r4 = 4
	goto .L1870
.L1896:
	r2 = r9
	r4 = 4
	goto .L1870
.L1897:
	r2 = r5
	r4 = 8
	goto .L1870
.L1898:
	r2 = r5
	r4 = 8
	goto .L1870
.L1899:
	r2 = r9
	r4 = 16
	goto .L1870
.L1900:
	r2 = r9
	r4 = 16
	goto .L1870
.L1901:
	r2 = r5
	r4 = 32
	goto .L1870
.L1902:
	r2 = r5
	r4 = 32
	goto .L1870
.L1903:
	r2 = r9
	r4 = 64
	goto .L1870
.L1904:
	r2 = r9
	r4 = 64
	goto .L1870
.L1905:
	r2 = r5
	r4 = 128
	goto .L1870
.L1906:
	r2 = r5
	r4 = 128
	goto .L1870
.L1907:
	r2 = r9
	r4 = 256
	goto .L1870
.L1908:
	r2 = r9
	r4 = 256
	goto .L1870
.L1909:
	r2 = r5
	r4 = 512
	goto .L1870
.L1910:
	r2 = r5
	r4 = 512
	goto .L1870
.L1911:
	r2 = r9
	r4 = 1024
	goto .L1870
.L1912:
	r2 = r9
	r4 = 1024
	goto .L1870
.L1913:
	r2 = r5
	r4 = 2048
	goto .L1870
.L1914:
	r2 = r5
	r4 = 2048
	goto .L1870
.L1915:
	r2 = r9
	r4 = 4096
	goto .L1870
.L1916:
	r2 = r9
	r4 = 4096
	goto .L1870
.L1917:
	r2 = r5
	r4 = 8192
	goto .L1870
.L1918:
	r2 = r5
	r4 = 8192
	goto .L1870
.L1919:
	r2 = r9
	r4 = 16384
	goto .L1870
.L1920:
	r2 = r9
	r4 = 16384
	goto .L1870
.L1921:
	r4 = 32768
	goto .L1870
.L1923:
	exit
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L1932
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L1925:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1932
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1927
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1932
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1927
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1932
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1927
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1932
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1927
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1932
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1927
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1932
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1927
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1932
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1927
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1932
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1927
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L1925
.L1928:
	if r3 != 0 goto .L1951
.L1924:
	r0 = r9
	exit
.L1930:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1928
.L1931:
	if r2 >= r1 goto .L1930
	r1 -= r2
	r9 |= r4
	goto .L1930
.L1927:
	if r4 == 0 goto .L1952
.L1932:
	r9 = 0
	goto .L1931
.L1952:
	r9 = r4
	goto .L1928
.L1951:
	r9 = r1
	goto .L1924
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1954
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r0 = r2;r0 &= 0xffffffff
	r1 <<= r0
	r1 <<= 32
.L1955:
	r0 = r1
	exit
.L1954:
	if r2 == 0 goto .L1957
	r5 = r1;r5 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	r3 = r5
	r3 <<= r4
	r1 >>= 32
	r1 <<= r4
	r9 = 32
	r9 -= r2
	r2 = r9;r2 &= 0xffffffff
	r5 >>= r2
	r5 |= r1
	r5 <<= 32
	r1 = r3;r1 &= 0xffffffff
	r1 |= r5
	goto .L1955
.L1957:
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
	if r0 == 0 goto .L1959
	*(u64 *) (r10+-16) = 0
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	*(u64 *) (r10+-8) = r1
.L1960:
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	exit
.L1959:
	if r3 == 0 goto .L1962
	r5 = r3;r5 &= 0xffffffff
	r4 = r1
	r4 <<= r5
	*(u64 *) (r10+-16) = r4
	r2 <<= r5
	r9 = 64
	r9 -= r3
	r3 = r9;r3 &= 0xffffffff
	r1 >>= r3
	r2 |= r1
	*(u64 *) (r10+-8) = r2
	goto .L1960
.L1962:
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
	if r0 == 0 goto .L1964
	r5 = r1
	r5 s>>= 32
	r0 = r1
	r0 s>>= 63
	r2 += -32
	r2 <<= 32
	r2 s>>= 32
	r4 = r5
	r4 s>>= r2
	r9 = r4;r9 &= 0xffffffff
	r0 <<= 32
	r0 |= r9
	exit
.L1964:
	if r2 == 0 goto .L1967
	r3 = r1
	r3 s>>= 32
	r0 = r3
	r0 s>>= r2
	r5 = r3;r5 &= 0xffffffff
	r4 = 32
	r4 -= r2
	r9 = r4;r9 &= 0xffffffff
	r5 <<= r9
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r1 >>= r2
	r1 |= r5
	r3 = r1;r3 &= 0xffffffff
	r0 <<= 32
	r0 |= r3
	exit
.L1967:
	r0 = r1
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	r3 <<= 32
	r3 s>>= 32
	r4 = r3
	r4 &= 64
	if r4 == 0 goto .L1969
	r1 = r2
	r1 s>>= 63
	*(u64 *) (r10+-8) = r1
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r2 s>>= r3
	*(u64 *) (r10+-16) = r2
.L1970:
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	exit
.L1969:
	if r3 == 0 goto .L1972
	r0 = r2
	r0 s>>= r3
	*(u64 *) (r10+-8) = r0
	r5 = 64
	r5 -= r3
	r9 = r5;r9 &= 0xffffffff
	r2 <<= r9
	r3 = r3;r3 &= 0xffffffff
	r1 >>= r3
	r2 |= r1
	*(u64 *) (r10+-16) = r2
	goto .L1970
.L1972:
	r0 = r1
	r1 = r2
	exit
	.size	__ashrti3, .-__ashrti3
	.align	3
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	r6 = r1
	r6 >>= 56
	r9 = r1
	r9 >>= 40
	r9 &= 65280
	r5 = r1
	r5 >>= 24
	r5 &= 16711680
	r4 = r1
	r4 >>= 8
	r0 = 4278190080 ll
	r4 &= r0
	r3 = r1
	r3 <<= 8
	r2 = 1095216660480 ll
	r3 &= r2
	r2 = r1
	r2 <<= 24
	r7 = 280375465082880 ll
	r2 &= r7
	r0 = r1
	r0 <<= 40
	r7 = 71776119061217280 ll
	r0 &= r7
	r1 <<= 56
	r6 |= r1
	r9 |= r6
	r5 |= r9
	r4 |= r5
	r3 |= r4
	r2 |= r3
	r0 |= r2
	exit
	.size	__bswapdi2, .-__bswapdi2
	.align	3
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	r1 = r1;r1 &= 0xffffffff
	r3 = r1
	r3 >>= 24
	r2 = r1
	r2 >>= 8
	r2 &= 65280
	r0 = r1
	r0 <<= 8
	r0 &= 16711680
	r1 <<= 24
	r4 = r1;r4 &= 0xffffffff
	r3 |= r4
	r2 |= r3
	r0 |= r2
	exit
	.size	__bswapsi2, .-__bswapsi2
	.align	3
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	r1 = r1;r1 &= 0xffffffff
	r3 = 1
	if r1 <= 65534 goto .L1976
	r3 = 0
.L1976:
	r3 &= 1
	r3 <<= 4
	r0 = 16
	r0 -= r3
	r2 = r0;r2 &= 0xffffffff
	r1 >>= r2
	r5 = r1;r5 &= 0xffffffff
	r1 &= 65280
	r1 += -1
	r1 >>= 63
	r1 <<= 3
	r4 = 8
	r4 -= r1
	r9 = r4;r9 &= 0xffffffff
	r5 >>= r9
	r0 = r5;r0 &= 0xffffffff
	r1 += r3
	r5 &= 240
	r5 += -1
	r5 >>= 63
	r5 <<= 2
	r3 = 4
	r3 -= r5
	r2 = r3;r2 &= 0xffffffff
	r0 >>= r2
	r9 = r0;r9 &= 0xffffffff
	r5 += r1
	r0 &= 12
	r0 += -1
	r0 >>= 63
	r0 += r0
	r1 = 2
	r4 = r1
	r4 -= r0
	r3 = r4;r3 &= 0xffffffff
	r9 >>= r3
	r0 += r5
	r5 = r9
	r5 &= r1
	r1 -= r9
	r2 = r1;r2 &= 0xffffffff
	if r5 == 0 goto .L1978
	r2 = 0
.L1978:
	r0 += r2
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L1980
	r6 = 0
.L1980:
	r6 &= 0xff
	r1 = r6
	r1 += -1
	r1 &= r2
	r3 = 1
	if r2 == 0 goto .L1981
	r3 = 0
.L1981:
	r3 &= 0xff
	if r3 != 0 goto .L1983
	r0 = 0
.L1983:
	r1 |= r0
	call	__clzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 <<= 6
	r0 += r6
	r0 <<= 32
	r0 s>>= 32
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
	if r0 s> r3 goto .L1986
	if r3 s>= r0 goto .L1987
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1988
	if r1 > r2 goto .L1989
	r0 = 1
	exit
.L1986:
	r0 = 0
	exit
.L1987:
	r0 = 2
	exit
.L1988:
	r0 = 0
	exit
.L1989:
	r0 = 2
	exit
	.size	__cmpdi2, .-__cmpdi2
	.align	3
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	call	__cmpdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r4 s> r2 goto .L1993
	if r2 s>= r4 goto .L1994
	if r3 >= r1 goto .L1995
	if r1 > r3 goto .L1996
	r0 = 1
	exit
.L1993:
	r0 = 0
	exit
.L1994:
	r0 = 2
	exit
.L1995:
	r0 = 0
	exit
.L1996:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r3 = r1;r3 &= 0xffffffff
	r4 = r1;r4 &= 0xffff
	r4 += -1
	r4 >>= 63
	r4 <<= 4
	r3 >>= r4
	r2 = r3;r2 &= 0xffffffff
	r3 &= 0xff
	r3 += -1
	r3 >>= 63
	r3 <<= 3
	r2 >>= r3
	r1 = r2;r1 &= 0xffffffff
	r3 += r4
	r2 &= 15
	r2 += -1
	r2 >>= 63
	r2 <<= 2
	r1 >>= r2
	r0 = r1;r0 &= 0xffffffff
	r2 += r3
	r1 &= 3
	r1 += -1
	r1 >>= 63
	r1 <<= 1
	r5 = r0
	r5 >>= r1
	r5 &= 3
	r1 += r2
	r0 = r5
	r0 ^= -1
	r0 &= 1
	r5 >>= 1
	r9 = 2
	r9 -= r5
	r4 = r9;r4 &= 0xffffffff
	r0 = -r0
	r0 &= r4
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	r3 = r1
	r4 = r1
	r6 = 1
	if r1 == 0 goto .L1999
	r6 = 0
.L1999:
	r6 &= 0xff
	r0 = r6
	r1 = 1
	if r4 == 0 goto .L2000
	r1 = 0
.L2000:
	r1 &= 0xff
	if r1 == 0 goto .L2001
	r1 = r2
.L2002:
	r0 += -1
	r0 &= r3
	r1 |= r0
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 <<= 6
	r0 += r6
	r0 <<= 32
	r0 s>>= 32
	exit
.L2001:
	r1 = 0
	goto .L2002
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L2004
	if r2 == 0 goto .L2006
	r1 = r2
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L2004:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2006:
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
	if r0 == 0 goto .L2008
	r0 = r1
	r0 >>= 32
	r2 += -32
	r4 = r2;r4 &= 0xffffffff
	r0 >>= r4
	r0 = r0;r0 &= 0xffffffff
	exit
.L2008:
	if r2 == 0 goto .L2011
	r4 = r1
	r4 >>= 32
	r5 = r2;r5 &= 0xffffffff
	r0 = r4
	r0 >>= r5
	r3 = 32
	r3 -= r2
	r2 = r3;r2 &= 0xffffffff
	r4 <<= r2
	r1 = r1;r1 &= 0xffffffff
	r1 >>= r5
	r1 |= r4
	r9 = r1;r9 &= 0xffffffff
	r0 <<= 32
	r0 |= r9
	exit
.L2011:
	r0 = r1
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	r3 <<= 32
	r3 s>>= 32
	r4 = r3
	r4 &= 64
	if r4 == 0 goto .L2013
	*(u64 *) (r10+-8) = 0
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r2 >>= r1
	*(u64 *) (r10+-16) = r2
.L2014:
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	exit
.L2013:
	if r3 == 0 goto .L2016
	r5 = r3;r5 &= 0xffffffff
	r0 = r2
	r0 >>= r5
	*(u64 *) (r10+-8) = r0
	r9 = 64
	r9 -= r3
	r3 = r9;r3 &= 0xffffffff
	r2 <<= r3
	r1 >>= r5
	r2 |= r1
	*(u64 *) (r10+-16) = r2
	goto .L2014
.L2016:
	r0 = r1
	r1 = r2
	exit
	.size	__lshrti3, .-__lshrti3
	.align	3
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	r3 = r1;r3 &= 0xffffffff
	r0 = r2;r0 &= 0xffffffff
	r1 &= 0xffff
	r2 &= 0xffff
	r4 = r1
	r4 *= r2
	r9 = r4
	r9 >>= 16
	r5 = r4;r5 &= 0xffff
	r3 >>= 16
	r2 *= r3
	r2 += r9
	r2 = r2;r2 &= 0xffffffff
	r4 = r2
	r4 <<= 16
	r4 += r5
	r4 = r4;r4 &= 0xffffffff
	r2 >>= 16
	r5 = r4
	r5 >>= 16
	r4 &= 0xffff
	r0 >>= 16
	r1 *= r0
	r1 += r5
	r1 = r1;r1 &= 0xffffffff
	r5 = r1
	r5 <<= 16
	r5 += r4
	r1 >>= 16
	r3 *= r0
	r2 += r3
	r2 += r1
	r2 <<= 32
	r0 = r5;r0 &= 0xffffffff
	r0 |= r2
	exit
	.size	__muldsi3, .-__muldsi3
	.align	3
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	r6 = r1
	*(u64 *) (r10+-8) = r2
	r8 = *(u32 *) (r10+-8)
	r7 = r1;r7 &= 0xffffffff
	r2 = r8
	r1 = r7
	call	__muldsi3
	r2 = r0
	r2 >>= 32
	r6 >>= 32
	r6 *= r8
	r1 = *(u64 *) (r10+-8)
	r1 >>= 32
	r1 *= r7
	r1 += r6
	r1 += r2
	r1 <<= 32
	r0 = r0;r0 &= 0xffffffff
	r0 |= r1
	exit
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	3
	.global	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	r9 = 4294967295 ll
	r3 = r1
	r3 &= r9
	r4 = r2
	r4 &= r9
	r0 = r3
	r0 *= r4
	r6 = r0
	r6 >>= 32
	r0 &= r9
	r1 >>= 32
	r5 = r1
	r4 *= r1
	r4 += r6
	r6 = r4
	r6 <<= 32
	r0 += r6
	r4 >>= 32
	r6 >>= 32
	r0 &= r9
	r2 >>= 32
	r1 = r3
	r1 *= r2
	r1 += r6
	r9 = r1
	r9 <<= 32
	r0 += r9
	r1 >>= 32
	r5 *= r2
	r4 += r5
	r1 += r4
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	*(u64 *) (r10+-24) = r1
	r6 = r2
	r8 = r3
	r7 = r4
	r2 = r3
	call	__mulddi3
	r6 *= r8
	r2 = *(u64 *) (r10+-24)
	r7 *= r2
	r6 += r7
	r1 += r6
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
	if r1 != 0 goto .L2023
	r0 = 0
.L2023:
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
	r0 >>= 32
	r1 = r1;r1 &= 0xffffffff
	r0 ^= r1
	r2 = r0
	r2 >>= 16
	r2 ^= r0
	r3 = r2
	r3 >>= 8
	r3 ^= r2
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
	r0 >>= 32
	r2 = r2;r2 &= 0xffffffff
	r0 ^= r2
	r1 = r0
	r1 >>= 16
	r1 ^= r0
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
	r9 = r5;r9 &= 0xffffffff
	r5 >>= 32
	r9 += r5
	r2 = r9
	r2 >>= 16
	r2 += r9
	r0 = r2
	r0 >>= 8
	r0 += r2
	r0 &= 127
	exit
	.size	__popcountdi2, .-__popcountdi2
	.align	3
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	r1 = r1;r1 &= 0xffffffff
	r0 = r1
	r0 >>= 1
	r0 &= 1431655765
	r1 -= r0
	r3 = r1;r3 &= 0xffffffff
	r2 = r3
	r2 >>= 2
	r2 &= 858993459
	r3 &= 858993459
	r2 += r3
	r4 = r2
	r4 >>= 4
	r4 += r2
	r4 &= 252645135
	r5 = r4
	r5 >>= 16
	r5 += r4
	r0 = r5
	r0 >>= 8
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
	if r9 > r0 goto .L2030
	r3 = 0
.L2030:
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
	if r0 >= r4 goto .L2031
	r9 = 0
.L2031:
	r3 = r5
	r3 += r2
	r9 += r3
	r2 = r9
	r9 <<= 60
	r0 = r4
	r0 >>= 4
	r9 |= r0
	r5 = r2
	r5 >>= 4
	r0 = r9
	r0 += r4
	r1 = 1
	if r9 >= r0 goto .L2032
	r1 = 0
.L2032:
	r5 += r2
	r1 += r5
	r4 = 1085102592571150095 ll
	r0 &= r4
	r1 &= r4
	r0 += r1
	r3 = r0
	r3 >>= 32
	r0 += r3
	r2 = r0;r2 &= 0xffffffff
	r9 = r2
	r9 >>= 16
	r9 += r2
	r1 = r9;r1 &= 0xffffffff
	r0 = r1
	r0 >>= 8
	r0 += r1
	r0 &= 0xff
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
	goto .L2036
.L2034:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L2035
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2036:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L2034
	r2 = r6
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L2034
.L2035:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2038
.L2033:
	r0 = r8
	exit
.L2038:
	r2 = r8
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r8 = r0
	goto .L2033
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
	goto .L2042
.L2040:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L2041
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2042:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L2040
	r2 = r6
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L2040
.L2041:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2044
.L2039:
	r0 = r8
	exit
.L2044:
	r2 = r8
	r1 = 0x3f800000 ll
	call	__divsf3
	r8 = r0
	goto .L2039
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 > r3 goto .L2047
	if r3 >= r0 goto .L2048
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2049
	if r1 > r2 goto .L2050
	r0 = 1
	exit
.L2047:
	r0 = 0
	exit
.L2048:
	r0 = 2
	exit
.L2049:
	r0 = 0
	exit
.L2050:
	r0 = 2
	exit
	.size	__ucmpdi2, .-__ucmpdi2
	.align	3
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	call	__ucmpdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r4 > r2 goto .L2054
	if r2 >= r4 goto .L2055
	if r3 >= r1 goto .L2056
	if r1 > r3 goto .L2057
	r0 = 1
	exit
.L2054:
	r0 = 0
	exit
.L2055:
	r0 = 2
	exit
.L2056:
	r0 = 0
	exit
.L2057:
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
