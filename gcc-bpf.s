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
	if r0 == 0 goto .L335
.L330:
	r3 = *(u8 *) (r1+0)
	if r3 == r2 goto .L336
	r1 += 1
	r4 = *(u8 *) (r1+0)
	if r4 != 0 goto .L330
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
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	if r3 != r0 goto .L343
.L342:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L343
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	if r9 == r5 goto .L342
.L343:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
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
	r0 += -1
	if r3 == 0 goto .L370
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L367
	r5 = r1
	r5 += r0
	r0 &= 7
	if r0 == 0 goto .L368
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L367
	r4 = *(u8 *) (r1+0)
	if r9 != r4 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L367
	if r0 == 1 goto .L368
	if r0 == 2 goto .L407
	if r0 == 3 goto .L408
	if r0 == 4 goto .L409
	if r0 == 5 goto .L410
	if r0 == 6 goto .L411
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L367
	if r0 != r3 goto .L367
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L367
.L411:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r3 = *(u8 *) (r1+0)
	if r4 != r3 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L367
.L410:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L367
	r4 = *(u8 *) (r1+0)
	if r9 != r4 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L367
.L409:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L367
	r9 = *(u8 *) (r1+0)
	if r0 != r9 goto .L367
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L367
.L408:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L367
	r3 = *(u8 *) (r1+0)
	if r0 != r3 goto .L367
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L367
.L407:
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r0 = *(u8 *) (r1+0)
	if r4 != r0 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L367
.L368:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L367
	if r5 == r1 goto .L371
	r4 = *(u8 *) (r1+0)
	if r9 != r4 goto .L367
	r0 = r1
	r0 += 1
	r1 = r0
	r2 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r9 = *(u8 *) (r0+0)
	if r4 != r9 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+1)
	if r3 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r9 = *(u8 *) (r1+0)
	if r4 != r9 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+2)
	if r3 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r9 = *(u8 *) (r1+0)
	if r4 != r9 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+3)
	if r3 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r9 = *(u8 *) (r1+0)
	if r4 != r9 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+4)
	if r3 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r9 = *(u8 *) (r1+0)
	if r4 != r9 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+5)
	if r3 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r9 = *(u8 *) (r1+0)
	if r4 != r9 goto .L367
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+6)
	if r3 == 0 goto .L367
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L367
	r9 = *(u8 *) (r1+0)
	if r4 != r9 goto .L367
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r0+7)
	if r0 != 0 goto .L368
	goto .L367
.L371:
	r1 = r5
.L367:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L370:
	r0 = 0
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L414
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
	if r5 == 0 goto .L416
	if r5 == 1 goto .L427
	if r5 == 2 goto .L428
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L428:
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
	if r0 == r3 goto .L430
.L416:
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
	if r0 != r3 goto .L416
.L414:
	exit
.L430:
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
	if r1 <= 24 goto .L432
	r0 = 0
.L432:
	r0 &= 1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 126 goto .L434
	r0 = 0
.L434:
	r0 &= 1
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L437
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L437:
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
	if r1 <= 30 goto .L440
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L440:
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
	if r1 <= 8 goto .L442
	r0 = 0
.L442:
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
	if r1 <= 92 goto .L444
	r0 = 0
.L444:
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
	if r1 <= 24 goto .L446
	r0 = 0
.L446:
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
	if r1 <= 93 goto .L448
	r0 = 0
.L448:
	r0 &= 1
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L452
	r1 += -9
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 3 goto .L451
	r0 = 0
.L451:
	r0 &= 1
	exit
.L452:
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
	if r1 <= 24 goto .L454
	r0 = 0
.L454:
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
	if r1 <= 30 goto .L458
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L459
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L460
	r0 += -65529
	r5 = r0;r5 &= 0xffffffff
	r0 = 1
	if r5 <= 1 goto .L457
	r0 = 0
.L457:
	r0 &= 1
	exit
.L458:
	r0 = 1
	exit
.L459:
	r0 = 1
	exit
.L460:
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
	if r1 <= 8 goto .L462
	r0 = 0
.L462:
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
	if r1 <= 254 goto .L471
	if r1 <= 8230 goto .L467
	r2 = r1
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L468
	r4 = r1
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L469
	r1 += -65532
	r1 = r1;r1 &= 0xffffffff
	if r1 > 1048579 goto .L470
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L471:
	r0 += 1
	r0 &= 127
	r9 = 1
	if r0 s> 32 goto .L465
	r9 = 0
.L465:
	r0 = r9
	r0 &= 1
	exit
.L467:
	r0 = 1
	exit
.L468:
	r0 = 1
	exit
.L469:
	r0 = 1
	exit
.L470:
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
	if r2 <= 8 goto .L475
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 4 goto .L474
	r0 = 0
.L474:
	r0 &= 1
	exit
.L475:
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
	if r0 != 0 goto .L480
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L481
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L484
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L480:
	r0 = r6
	exit
.L481:
	r0 = r7
	exit
.L484:
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
	if r0 != 0 goto .L488
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L489
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L492
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L488:
	r0 = r6
	exit
.L489:
	r0 = r7
	exit
.L492:
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
	if r0 != 0 goto .L499
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L500
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L495
	if r0 == 0 goto .L501
	r0 = r7
	exit
.L495:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L496
	r8 = 0
.L496:
	r8 &= 0xff
	if r8 == 0 goto .L498
	r6 = r7
.L498:
	r0 = r6
	exit
.L499:
	r0 = r7
	exit
.L500:
	r0 = r6
	exit
.L501:
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
	if r0 != 0 goto .L508
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L509
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L504
	if r2 == 0 goto .L510
	r0 = r7
	exit
.L504:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L505
	r8 = 0
.L505:
	r8 &= 0xff
	if r8 == 0 goto .L507
	r6 = r7
.L507:
	r0 = r6
	exit
.L508:
	r0 = r7
	exit
.L509:
	r0 = r6
	exit
.L510:
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
	if r0 != 0 goto .L517
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L518
	r0 = r6
	r0 >>= 63
	r1 = r7
	r1 >>= 63
	if r0 == r1 goto .L513
	if r0 == 0 goto .L519
	r0 = r7
	exit
.L513:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L514
	r8 = 0
.L514:
	r8 &= 0xff
	if r8 == 0 goto .L516
	r6 = r7
.L516:
	r0 = r6
	exit
.L517:
	r0 = r7
	exit
.L518:
	r0 = r6
	exit
.L519:
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
	if r0 != 0 goto .L526
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L527
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L522
	if r0 == 0 goto .L528
	r0 = r7
	exit
.L522:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L523
	r8 = 0
.L523:
	r8 &= 0xff
	if r8 == 0 goto .L525
	r6 = r7
.L525:
	r0 = r6
	exit
.L526:
	r0 = r6
	exit
.L527:
	r0 = r7
	exit
.L528:
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
	if r0 != 0 goto .L535
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L536
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	r2 = r0
	r2 s>>= 32
	if r1 == r0 goto .L531
	if r2 == 0 goto .L537
	r0 = r7
	exit
.L531:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s<= 0 goto .L532
	r8 = 0
.L532:
	r8 &= 0xff
	if r8 == 0 goto .L534
	r6 = r7
.L534:
	r0 = r6
	exit
.L535:
	r0 = r6
	exit
.L536:
	r0 = r7
	exit
.L537:
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
	if r0 != 0 goto .L544
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L545
	r0 = r7
	r0 >>= 63
	r1 = r6
	r1 >>= 63
	if r0 == r1 goto .L540
	if r0 == 0 goto .L546
	r0 = r7
	exit
.L540:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L541
	r8 = 0
.L541:
	r8 &= 0xff
	if r8 == 0 goto .L543
	r6 = r7
.L543:
	r0 = r6
	exit
.L544:
	r0 = r6
	exit
.L545:
	r0 = r7
	exit
.L546:
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
	if r1 == 0 goto .L550
	r0 = s.0 ll
	r3 = digits ll
.L549:
	r4 = r1
	r4 &= 63
	r2 = r3
	r2 += r4
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r9 = r0
	r1 >>= 6
	if r1 == 0 goto .L548
	r4 = r1
	r4 &= 63
	r0 = r3
	r0 += r4
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r2
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L548
	r5 = r1
	r5 &= 63
	r9 = r3
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L548
	r2 = r1
	r2 &= 63
	r5 = r3
	r5 += r2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 != 0 goto .L549
.L548:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
.L550:
	r0 = s.0 ll
	goto .L548
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
	if r2 == 0 goto .L563
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L560
	*(u64 *) (r2+8) = r1
.L560:
	exit
.L563:
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
	if r0 == 0 goto .L565
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L565:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L564
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L564:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L569
.L568:
	r0 <<= 32
	r0 s>>= 32
	exit
.L569:
	r1 = -r1
	r0 = r1
	goto .L568
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r7 = r1
.L571:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r1 = r0
	r1 <<= 32
	r0 = r1
	r0 s>>= 32
	if r1 == 0 goto .L593
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
	if r2 == 0 goto .L593
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
	if r3 == 0 goto .L593
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
	if r4 == 0 goto .L593
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
	if r5 == 0 goto .L593
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
	if r9 == 0 goto .L593
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
	if r1 == 0 goto .L593
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
	if r2 == 0 goto .L593
	r7 += 1
	goto .L571
.L593:
	if r6 == 43 goto .L580
	if r6 != 45 goto .L574
	r4 = 1
.L573:
	r2 = r7
	r2 += 1
	r3 = *(u8 *) (r7+1)
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r5 = r3;r5 &= 0xffffffff
	if r5 > 9 goto .L575
.L578:
	r3 = r2
	r5 = 9
.L576:
	r1 = r0
	r1 <<= 2
	r0 += r1
	r0 <<= 33
	r0 s>>= 32
	r2 += 1
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r0 -= r9
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r9 = r1;r9 &= 0xffffffff
	r3 += 1
	if r5 <= r9 goto .L575
	r1 = r0
	r1 <<= 2
	r0 += r1
	r0 <<= 33
	r0 s>>= 32
	r2 += 1
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r0 -= r9
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r9 = r1;r9 &= 0xffffffff
	r3 += 1
	if r5 > r9 goto .L576
.L575:
	if r4 == 0 goto .L579
	exit
.L580:
	r4 = r0
	goto .L573
.L579:
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L574:
	r4 = *(u8 *) (r7+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r9 = r4;r9 &= 0xffffffff
	if r9 > 8 goto .L579
	r4 = r0
	r2 = r7
	goto .L578
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r7 = r1
.L595:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L620
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
	if r0 == 0 goto .L620
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L620
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L620
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L620
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L620
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L620
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L620
	r7 += 1
	goto .L595
.L620:
	if r6 == 43 goto .L597
	if r6 != 45 goto .L598
	r2 = 1
.L597:
	r9 = r7
	r9 += 1
	r0 = *(u8 *) (r7+1)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	if r1 > 9 goto .L604
.L602:
	r5 = r9
	r0 = 0
	r3 = 9
.L600:
	r0 *= 10
	r9 += 1
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r4 = *(u8 *) (r9+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r1 = r4;r1 &= 0xffffffff
	r5 += 1
	if r3 <= r1 goto .L599
	r0 *= 10
	r6 = *(u8 *) (r5+0)
	r6 <<= 56
	r6 s>>= 56
	r6 += -48
	r0 -= r6
	r4 = *(u8 *) (r9+1)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r1 = r4;r1 &= 0xffffffff
	r6 = r5
	r6 += 1
	if r3 <= r1 goto .L599
	r0 *= 10
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r1 = *(u8 *) (r9+2)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r4 = r1;r4 &= 0xffffffff
	r6 += 1
	if r3 <= r4 goto .L599
	r0 *= 10
	r9 += 3
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r4 = *(u8 *) (r9+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r1 = r4;r1 &= 0xffffffff
	r5 += 3
	if r3 > r1 goto .L600
.L599:
	if r2 == 0 goto .L603
	exit
.L604:
	r0 = 0
	goto .L599
.L598:
	r3 = *(u8 *) (r7+0)
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r4 = r3;r4 &= 0xffffffff
	r9 = r7
	if r4 <= 8 goto .L602
	r0 = 0
.L603:
	r0 = -r0
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r7 = r1
.L622:
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L647
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
	if r0 == 0 goto .L647
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L647
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L647
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L647
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L647
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L647
	r7 += 1
	r6 = *(u8 *) (r7+0)
	r6 <<= 56
	r6 s>>= 56
	r1 = r6
	call	isspace
	r0 <<= 32
	r2 = r0
	r2 s>>= 32
	if r0 == 0 goto .L647
	r7 += 1
	goto .L622
.L647:
	if r6 == 43 goto .L624
	if r6 != 45 goto .L625
	r2 = 1
.L624:
	r9 = r7
	r9 += 1
	r0 = *(u8 *) (r7+1)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r1 = r0;r1 &= 0xffffffff
	if r1 > 9 goto .L631
.L629:
	r5 = r9
	r0 = 0
	r3 = 9
.L627:
	r0 *= 10
	r9 += 1
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r4 = *(u8 *) (r9+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r1 = r4;r1 &= 0xffffffff
	r5 += 1
	if r3 <= r1 goto .L626
	r0 *= 10
	r6 = *(u8 *) (r5+0)
	r6 <<= 56
	r6 s>>= 56
	r6 += -48
	r0 -= r6
	r4 = *(u8 *) (r9+1)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r1 = r4;r1 &= 0xffffffff
	r6 = r5
	r6 += 1
	if r3 <= r1 goto .L626
	r0 *= 10
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r0 -= r4
	r1 = *(u8 *) (r9+2)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r4 = r1;r4 &= 0xffffffff
	r6 += 1
	if r3 <= r4 goto .L626
	r0 *= 10
	r9 += 3
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r4 = *(u8 *) (r9+0)
	r4 <<= 56
	r4 s>>= 56
	r4 += -48
	r1 = r4;r1 &= 0xffffffff
	r5 += 3
	if r3 > r1 goto .L627
.L626:
	if r2 == 0 goto .L630
	exit
.L631:
	r0 = 0
	goto .L626
.L625:
	r3 = *(u8 *) (r7+0)
	r3 <<= 56
	r3 s>>= 56
	r3 += -48
	r4 = r3;r4 &= 0xffffffff
	r9 = r7
	if r4 <= 8 goto .L629
	r0 = 0
.L630:
	r0 = -r0
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
	if r1 s< 0 goto .L651
.L650:
	exit
.L651:
	r0 = -r0
	goto .L650
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
	if r1 s< 0 goto .L655
.L654:
	exit
.L655:
	r0 = -r0
	goto .L654
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
	if r1 s< 0 goto .L659
.L658:
	exit
.L659:
	r0 = -r0
	goto .L658
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
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L668
.L662:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L669
	r1 += 4
	r0 = *(u32 *) (r1+0)
	if r0 != 0 goto .L662
	r0 = r1
	goto .L664
.L668:
	exit
.L669:
	r0 = r1
.L664:
	r1 = *(u32 *) (r0+0)
	if r1 == 0 goto .L670
.L661:
	exit
.L670:
	r0 = 0
	goto .L661
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r0 goto .L673
.L672:
	r4 = *(u32 *) (r1+0)
	if r4 == 0 goto .L673
	r5 = *(u32 *) (r2+0)
	if r5 == 0 goto .L673
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 == r9 goto .L672
.L673:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r3 goto .L677
	r0 = 1
	if r3 s> r1 goto .L676
	r0 = 0
.L676:
	r0 &= 1
	exit
.L677:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L680:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L696
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L696
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L696
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L696
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L696
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L696
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L696
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L680
.L696:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L700
	r0 = r1
.L699:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L698
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L698
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L698
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L698
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L698
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L698
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L698
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L699
	goto .L698
.L700:
	r0 = r1
.L698:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L742
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L717
	if r0 == 1 goto .L740
	if r0 == 2 goto .L741
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r5 = r9
	r5 s>>= 32
	if r4 != r9 goto .L719
	if r5 == 0 goto .L719
	r3 += -1
	r1 += 4
	r2 += 4
.L741:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r4 = r0
	r4 s>>= 32
	if r9 != r0 goto .L719
	if r4 == 0 goto .L719
	r3 += -1
	r1 += 4
	r2 += 4
.L740:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r5 = r0
	r5 s>>= 32
	if r9 != r0 goto .L719
	if r5 == 0 goto .L719
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L723
.L717:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	r9 = r0
	r9 s>>= 32
	if r4 != r0 goto .L719
	if r9 == 0 goto .L719
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
	if r9 != r3 goto .L719
	if r6 == 0 goto .L719
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r6 = r4
	r6 s>>= 32
	if r3 != r4 goto .L719
	if r6 == 0 goto .L719
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r6 = r4
	r6 s>>= 32
	if r9 != r4 goto .L719
	if r6 == 0 goto .L719
	r3 = r5
	r3 += -3
	r1 += 4
	r0 += 12
	r2 = r0
	if r5 != 3 goto .L717
.L723:
	r0 = 0
	exit
.L742:
	r0 = 0
	exit
.L722:
	r0 = 1
	if r5 s> r1 goto .L721
	r0 = 0
.L721:
	r0 &= 1
	exit
.L719:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r5 s>= r1 goto .L722
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L793
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L747
	if r0 == 1 goto .L787
	if r0 == 2 goto .L788
	if r0 == 3 goto .L789
	if r0 == 4 goto .L790
	if r0 == 5 goto .L791
	if r0 == 6 goto .L792
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L795
	r3 += -1
	r1 += 4
.L792:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L795
	r3 += -1
	r1 += 4
.L791:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L795
	r3 += -1
	r1 += 4
.L790:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L795
	r3 += -1
	r1 += 4
.L789:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r4 == r2 goto .L795
	r3 += -1
	r1 += 4
.L788:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r5 == r2 goto .L795
	r3 += -1
	r1 += 4
.L787:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L795
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L750
.L747:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L795
	r3 += -1
	r4 = r3
	r5 = r1
	r5 += 4
	r1 = r5
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L795
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L795
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L795
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L795
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r9 == r2 goto .L795
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == r2 goto .L795
	r1 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r3 == r2 goto .L795
	r3 = r4
	r3 += -7
	r5 += 28
	r1 = r5
	if r4 != 7 goto .L747
.L750:
	r0 = 0
	exit
.L793:
	r0 = 0
	exit
.L795:
	r0 = r1
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L846
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L797
	if r0 == 1 goto .L840
	if r0 == 2 goto .L841
	if r0 == 3 goto .L842
	if r0 == 4 goto .L843
	if r0 == 5 goto .L844
	if r0 == 6 goto .L845
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L849
	r3 += -1
	r1 += 4
	r2 += 4
.L845:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L849
	r3 += -1
	r1 += 4
	r2 += 4
.L844:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L849
	r3 += -1
	r1 += 4
	r2 += 4
.L843:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L849
	r3 += -1
	r1 += 4
	r2 += 4
.L842:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L849
	r3 += -1
	r1 += 4
	r2 += 4
.L841:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L849
	r3 += -1
	r1 += 4
	r2 += 4
.L840:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L849
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L803
.L797:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L849
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
	if r5 != r3 goto .L849
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r4 goto .L849
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L849
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r3 goto .L849
	r1 += 4
	r2 += 4
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r3 goto .L849
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r4 goto .L849
	r1 += 4
	r2 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L849
	r3 = r9
	r3 += -7
	r1 += 4
	r0 += 28
	r2 = r0
	if r9 != 7 goto .L797
.L803:
	r0 = 0
	exit
.L846:
	r0 = 0
	exit
.L802:
	r0 = 1
	if r9 s> r1 goto .L801
	r0 = 0
.L801:
	r0 &= 1
	exit
.L849:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	r1 = *(u32 *) (r2+0)
	r1 <<= 32
	r1 s>>= 32
	if r9 s>= r1 goto .L802
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r4 = r3
	r4 += -1
	if r3 == 0 goto .L851
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L852
	if r3 == 1 goto .L875
	if r3 == 2 goto .L876
	if r3 == 3 goto .L877
	if r3 == 4 goto .L878
	if r3 == 5 goto .L879
	if r3 == 6 goto .L880
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
.L880:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r4 += -1
	r0 += 4
	r2 += 4
.L879:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r4 += -1
	r0 += 4
	r2 += 4
.L878:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
.L877:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r4 += -1
	r0 += 4
	r2 += 4
.L876:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r4 += -1
	r0 += 4
	r2 += 4
.L875:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r4 += -1
	r0 += 4
	r2 += 4
	if r4 == -1 goto .L851
.L852:
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
	if r4 != -1 goto .L852
.L851:
	r0 = r1
	exit
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L883
	r4 = r1
	r0 = r2
	r9 = r3
	r9 <<= 2
	r5 = r1
	r5 -= r2
	if r9 >= r5 goto .L884
	r2 = r3
	r2 += -1
	if r3 == 0 goto .L883
	r3 &= 7
	if r3 == 0 goto .L885
	if r3 == 1 goto .L933
	if r3 == 2 goto .L934
	if r3 == 3 goto .L935
	if r3 == 4 goto .L936
	if r3 == 5 goto .L937
	if r3 == 6 goto .L938
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r1+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
.L938:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r2 += -1
	r4 += 4
	r0 += 4
.L937:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r2 += -1
	r4 += 4
	r0 += 4
.L936:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
.L935:
	r9 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r9
	r2 += -1
	r4 += 4
	r0 += 4
.L934:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r2 += -1
	r4 += 4
	r0 += 4
.L933:
	r3 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r3
	r2 += -1
	r4 += 4
	r0 += 4
	if r2 == -1 goto .L883
.L885:
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
	if r2 != -1 goto .L885
	goto .L883
.L884:
	r5 = r3
	r5 += -1
	if r3 == 0 goto .L883
	r5 <<= 2
	r2 += r5
	r3 = r1
	r3 += r5
	r9 = r2
	r9 -= r0
	r9 >>= 2
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L886
	if r9 == 1 goto .L939
	if r9 == 2 goto .L940
	if r9 == 3 goto .L941
	if r9 == 4 goto .L942
	if r9 == 5 goto .L943
	if r9 == 6 goto .L944
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L944:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L943:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L942:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r4
	r2 += -4
	r3 += -4
.L941:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
.L940:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r9
	r2 += -4
	r3 += -4
.L939:
	r4 = r2
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r3+0) = r5
	r2 += -4
	r3 += -4
	if r0 == r4 goto .L883
.L886:
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
	if r0 != r4 goto .L886
.L883:
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
	if r3 == 0 goto .L948
	r0 = r1
	r3 &= 7
	if r3 == 0 goto .L949
	if r3 == 1 goto .L972
	if r3 == 2 goto .L973
	if r3 == 3 goto .L974
	if r3 == 4 goto .L975
	if r3 == 5 goto .L976
	if r3 == 6 goto .L977
	*(u32 *) (r1+0) = r2
	r4 += -1
	r0 += 4
.L977:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L976:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L975:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L974:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L973:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
.L972:
	*(u32 *) (r0+0) = r2
	r4 += -1
	r0 += 4
	if r4 == -1 goto .L948
.L949:
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
	if r4 != -1 goto .L949
.L948:
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L980
	r0 = r1
	r0 += r3
	r2 += r3
	if r3 == 0 goto .L979
	r4 = r1
	r4 ^= -1
	r3 = r0
	r3 += r4
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L982
	if r3 == 1 goto .L1028
	if r3 == 2 goto .L1029
	if r3 == 3 goto .L1030
	if r3 == 4 goto .L1031
	if r3 == 5 goto .L1032
	if r3 == 6 goto .L1033
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1033:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1032:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1031:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1030:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1029:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1028:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r1 == r0 goto .L1042
.L982:
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
	if r1 != r0 goto .L982
	exit
.L980:
	if r1 == r2 goto .L979
	if r3 == 0 goto .L979
	r0 = r1
	r1 += r3
	r3 = r0
	r3 ^= -1
	r3 += r1
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L983
	if r3 == 1 goto .L1034
	if r3 == 2 goto .L1035
	if r3 == 3 goto .L1036
	if r3 == 4 goto .L1037
	if r3 == 5 goto .L1038
	if r3 == 6 goto .L1039
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L1039:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L1038:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
.L1037:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	r0 += 1
	r2 += 1
.L1036:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	r0 += 1
	r2 += 1
.L1035:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	r0 += 1
	r2 += 1
.L1034:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r0 += 1
	r2 += 1
	if r0 == r1 goto .L1043
.L983:
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
	if r0 != r1 goto .L983
.L979:
	exit
.L1042:
	exit
.L1043:
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
.L1060:
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L1076
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r3 = r1
	r3 >>= r0
	r3 &= 1
	if r3 != 0 goto .L1076
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r4 = r1
	r4 >>= r0
	r4 &= 1
	if r4 != 0 goto .L1076
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r5 = r1
	r5 >>= r0
	r5 &= 1
	if r5 != 0 goto .L1076
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r9 = r1
	r9 >>= r0
	r9 &= 1
	if r9 != 0 goto .L1076
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L1076
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r3 = r1
	r3 >>= r0
	r3 &= 1
	if r3 != 0 goto .L1076
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r4 = r1
	r4 >>= r0
	r4 &= 1
	if r4 != 0 goto .L1076
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 32 goto .L1060
	r0 = 0
	exit
.L1076:
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
	if r1 == 0 goto .L1081
	r0 = r2
	r0 &= 1
	if r0 != 0 goto .L1079
	r0 = 1
.L1080:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1097
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1079
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L1079
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L1079
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L1079
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1079
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L1079
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 == 0 goto .L1080
	exit
.L1097:
	exit
.L1081:
	r0 = r2
.L1079:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L1101
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
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
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
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
	.size	gl_isinfd, .-gl_isinfd
	.align	3
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	r6 = r1
	r2 = 0xffefffffffffffff ll
	call	__ltdf2
	if r0 s<= 0 goto .L1111
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1112
.L1110:
	r0 = r7
	r0 &= 1
	exit
.L1112:
	r7 = 0
	goto .L1110
.L1111:
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
	if r0 != 0 goto .L1115
	r2 = r8
	r1 = r8
	call	__addsf3
	r1 = r0
	r2 = r8
	call	__nesf2
	if r0 == 0 goto .L1115
	if r6 s< 0 goto .L1122
	r7 = 0x40000000 ll
	goto .L1119
.L1122:
	r7 = 0x3f000000 ll
	goto .L1119
.L1118:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1115
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1119:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1118
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1118
.L1115:
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
	if r0 != 0 goto .L1124
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1124
	if r6 s< 0 goto .L1131
	r7 = 0x4000000000000000 ll
	goto .L1128
.L1131:
	r7 = 0x3fe0000000000000 ll
	goto .L1128
.L1127:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1124
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1128:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1127
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1127
.L1124:
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
	if r0 != 0 goto .L1133
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r0
	r2 = r8
	call	__nedf2
	if r0 == 0 goto .L1133
	if r6 s< 0 goto .L1140
	r7 = 0x4000000000000000 ll
	goto .L1137
.L1140:
	r7 = 0x3fe0000000000000 ll
	goto .L1137
.L1136:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1133
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1137:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1136
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1136
.L1133:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1142
	r0 = r2
	r4 = r1
	r2 += r3
	r3 = r0
	r3 ^= -1
	r3 += r2
	r3 += 1
	r3 &= 3
	if r3 == 0 goto .L1143
	if r3 == 1 goto .L1154
	if r3 == 2 goto .L1155
	r5 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r1+0)
	r9 ^= r5
	*(u8 *) (r1+0) = r9
	r0 += 1
	r4 += 1
.L1155:
	r5 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r4+0) = r3
	r0 += 1
	r4 += 1
.L1154:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r5 ^= r9
	*(u8 *) (r4+0) = r5
	r0 += 1
	r4 += 1
	if r0 == r2 goto .L1142
.L1143:
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
	if r0 != r2 goto .L1143
.L1142:
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
	if r7 == 0 goto .L1159
	r2 = r7
	r2 &= 7
	if r2 == 0 goto .L1158
	if r2 == 1 goto .L1198
	if r2 == 2 goto .L1199
	if r2 == 3 goto .L1200
	if r2 == 4 goto .L1201
	if r2 == 5 goto .L1202
	if r2 == 6 goto .L1203
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1203:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1202:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1201:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1200:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1199:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1198:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
	if r7 == 0 goto .L1159
.L1158:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r5 = r7
	r5 += -1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1161
	r1 = *(u8 *) (r6+1)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+1) = r1
	if r1 == 0 goto .L1161
	r2 = *(u8 *) (r6+2)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+2) = r2
	if r2 == 0 goto .L1161
	r3 = *(u8 *) (r6+3)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+3) = r3
	if r3 == 0 goto .L1161
	r4 = *(u8 *) (r6+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+4) = r4
	if r4 == 0 goto .L1161
	r9 = *(u8 *) (r6+5)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+5) = r9
	if r9 == 0 goto .L1161
	r1 = *(u8 *) (r6+6)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+6) = r1
	if r1 == 0 goto .L1161
	r6 += 7
	r0 += 7
	r7 = r5
	r7 += -7
	if r5 != 7 goto .L1158
.L1159:
	*(u8 *) (r0+0) = 0
.L1161:
	r0 = r8
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1253
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1206
	if r0 == 1 goto .L1247
	if r0 == 2 goto .L1248
	if r0 == 3 goto .L1249
	if r0 == 4 goto .L1250
	if r0 == 5 goto .L1251
	if r0 == 6 goto .L1252
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1205
	r3 += 1
.L1252:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 != 0 goto .L1255
.L1205:
	r0 = r3
	exit
.L1253:
	r3 = r2
	goto .L1205
.L1255:
	r3 += 1
.L1251:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1205
	r3 += 1
.L1250:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1205
	r3 += 1
.L1249:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1205
	r3 += 1
.L1248:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1205
	r3 += 1
.L1247:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1205
	r3 += 1
	if r2 == r3 goto .L1210
.L1206:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1205
	r5 = r3
	r5 += 1
	r3 = r5
	r4 = r1
	r4 += r5
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1205
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1205
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1205
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1205
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1205
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1205
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1205
	r5 += 7
	r3 = r5
	if r2 != r5 goto .L1206
.L1210:
	r3 = r2
	goto .L1205
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1263
.L1257:
	r3 = r2
.L1260:
	r5 = *(u8 *) (r3+0)
	r5 <<= 56
	r4 = r5
	r4 s>>= 56
	if r5 == 0 goto .L1264
	r3 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r4 goto .L1260
.L1258:
	r0 = r1
	exit
.L1263:
	r1 = 0
	goto .L1258
.L1264:
	r1 += 1
	r9 = *(u8 *) (r1+0)
	if r9 != 0 goto .L1257
	r1 = 0
	goto .L1258
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1267
.L1266:
	r1 += 1
	if r0 == 0 goto .L1270
.L1267:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != r2 goto .L1266
	r3 = r1
	goto .L1266
.L1270:
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
	if r0 == 0 goto .L1271
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
.L1273:
	r2 = *(u32 *) (r10+-8)
	r1 = r6
	call	strchr
	r6 = r0
	if r0 == 0 goto .L1271
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1271
	r6 += 1
	goto .L1273
.L1271:
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
	if r0 s<= 0 goto .L1286
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1280
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1279
.L1280:
	r0 = r6
	exit
.L1286:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1280
.L1279:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	goto .L1280
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
	if r4 == 0 goto .L1291
	if r4 >= r2 goto .L1292
	if r6 > r1 goto .L1293
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
	if r3 == r2 goto .L1343
.L1296:
	r6 += 1
	r4 = *(u64 *) (r10+-24)
	if r4 < r6 goto .L1342
	if r8 == 0 goto .L1290
	if r8 == 1 goto .L1334
	if r8 == 2 goto .L1335
	if r8 == 3 goto .L1336
	if r8 == 4 goto .L1337
	if r8 == 5 goto .L1338
	if r8 == 6 goto .L1339
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r7 goto .L1344
.L1298:
	r6 += 1
.L1339:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r7 goto .L1345
.L1301:
	r6 += 1
.L1338:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r7 goto .L1346
.L1304:
	r6 += 1
.L1337:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r7 goto .L1347
.L1307:
	r6 += 1
.L1336:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r7 goto .L1348
.L1310:
	r6 += 1
.L1335:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r7 goto .L1349
.L1313:
	r6 += 1
.L1334:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r7 goto .L1350
.L1316:
	r6 += 1
	r5 = *(u64 *) (r10+-24)
	if r5 >= r6 goto .L1290
.L1342:
	r0 = 0
	exit
.L1351:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1289
.L1294:
	r0 = r6
	exit
.L1291:
	r0 = r6
	exit
.L1292:
	r0 = 0
	exit
.L1293:
	r0 = 0
	exit
.L1343:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1296
	goto .L1294
.L1344:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1298
	goto .L1294
.L1345:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1301
	goto .L1294
.L1346:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1304
	goto .L1294
.L1347:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1307
	goto .L1294
.L1348:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1310
	goto .L1294
.L1349:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1313
	goto .L1294
.L1350:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1316
	goto .L1294
.L1352:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1319
	goto .L1294
.L1353:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1321
	goto .L1294
.L1354:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1323
	goto .L1294
.L1355:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1325
	goto .L1294
.L1356:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1327
	goto .L1294
.L1357:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1329
	goto .L1294
.L1331:
	r6 = r8
	r6 += 7
	r0 = *(u64 *) (r10+-24)
	if r0 < r6 goto .L1342
.L1290:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r7 goto .L1351
.L1289:
	r6 += 1
	r8 = r6
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r7 goto .L1352
.L1319:
	r6 = r8
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r7 goto .L1353
.L1321:
	r6 = r8
	r6 += 2
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r7 goto .L1354
.L1323:
	r6 = r8
	r6 += 3
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r7 goto .L1355
.L1325:
	r6 = r8
	r6 += 4
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r7 goto .L1356
.L1327:
	r6 = r8
	r6 += 5
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r7 goto .L1357
.L1329:
	r6 = r8
	r6 += 6
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 != r7 goto .L1331
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1331
	goto .L1294
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1394
	*(u64 *) (r10+-8) = 0
.L1359:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1391
	r7 = 0
	r8 = 0x3fe0000000000000 ll
.L1363:
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
	if r0 s< 0 goto .L1364
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
	if r0 s< 0 goto .L1364
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
	if r0 s< 0 goto .L1364
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
	if r0 s>= 0 goto .L1363
	goto .L1364
.L1394:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1359
.L1391:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1392
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 == 0 goto .L1393
	r7 = 0
	r8 = r7
.L1367:
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
	if r8 s< r0 goto .L1364
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
	if r8 s< r0 goto .L1364
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
	if r8 s< r0 goto .L1364
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
	if r8 s>= r0 goto .L1367
	goto .L1364
.L1392:
	r7 = 0
.L1364:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r7
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1368
	r3 = -9223372036854775808 ll
	r3 ^= r6
	r6 = r3
.L1368:
	r0 = r6
	exit
.L1393:
	r7 = 0
	goto .L1364
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	if r1 == 0 goto .L1398
	r0 = 0
.L1397:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1414
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1395
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1395
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1395
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1395
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1395
	r5 = r1
	r5 &= 1
	r5 = -r5
	r5 &= r2
	r0 += r5
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1395
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r2
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1397
	exit
.L1414:
	exit
.L1398:
	r0 = 0
.L1395:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r0 < r2 goto .L1423
	r9 = 32
	r4 = 1
.L1416:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1423
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1418
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1423
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1418
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1423
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1418
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1423
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1418
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1423
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1418
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1423
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1418
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1423
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1418
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1423
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1418
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1416
.L1419:
	if r3 != 0 goto .L1424
	r0 = r9
.L1424:
	exit
.L1421:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1419
.L1422:
	if r2 >= r0 goto .L1421
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 = r4
	r1 |= r9
	r9 = r1;r9 &= 0xffffffff
	goto .L1421
.L1418:
	if r4 == 0 goto .L1441
.L1423:
	r9 = 0
	goto .L1422
.L1441:
	r9 = r4
	goto .L1419
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
	if r2 == r1 goto .L1444
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
.L1444:
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
	if r0 == r2 goto .L1447
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1447:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1451
	r0 = 0
.L1450:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	if r1 == 0 goto .L1459
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r4 += r0
	r0 = r4;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1449
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r0 = r9;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1449
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 != 0 goto .L1450
	exit
.L1459:
	exit
.L1451:
	r0 = r1
.L1449:
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
	if r2 >= r1 goto .L1461
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1461
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1460
	r3 = r0
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1467
	if r3 == 1 goto .L1536
	if r3 == 2 goto .L1537
	if r3 == 3 goto .L1538
	if r3 == 4 goto .L1539
	if r3 == 5 goto .L1540
	if r3 == 6 goto .L1541
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
	r0 += -1
.L1541:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
.L1540:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1539:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r0 += -1
.L1538:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1537:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1536:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
	r0 += -1
	if r0 == -1 goto .L1557
.L1467:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
	r3 = r0
	r4 = r2
	r4 += r0
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r9 = r3
	r9 += -1
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -2
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -3
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -4
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -5
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -6
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r0 = r3
	r0 += -7
	if r3 != 6 goto .L1467
.L1460:
	exit
.L1461:
	if r5 == 0 goto .L1464
	r0 = r2
	r4 = r1
	r5 <<= 3
	r6 = r2
	r6 += r5
	r5 = r6
	r5 -= r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1465
	if r5 == 1 goto .L1542
	if r5 == 2 goto .L1543
	if r5 == 3 goto .L1544
	if r5 == 4 goto .L1545
	if r5 == 5 goto .L1546
	if r5 == 6 goto .L1547
	r5 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r5
	r0 += 8
	r4 += 8
.L1547:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1546:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1545:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1544:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1543:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1542:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L1464
.L1465:
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
	if r0 != r6 goto .L1465
.L1464:
	if r9 > r3 goto .L1460
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r3 += -1
	r3 -= r9
	r3 = r3;r3 &= 0xffffffff
	r9 += r2
	r3 += r9
	r2 = r0
	r2 ^= -1
	r2 += r3
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L1466
	if r2 == 1 goto .L1548
	if r2 == 2 goto .L1549
	if r2 == 3 goto .L1550
	if r2 == 4 goto .L1551
	if r2 == 5 goto .L1552
	if r2 == 6 goto .L1553
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1553:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1552:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1551:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
	r0 += 1
	r1 += 1
.L1550:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1549:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1548:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
	if r0 == r3 goto .L1558
.L1466:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
	r0 += 1
	r1 += 1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r4 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r4
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r5
	r2 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r2
	r9 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r9
	r4 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r4
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r5
	r0 += 7
	r1 += 7
	if r0 != r3 goto .L1466
	exit
.L1558:
	exit
.L1557:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r5 >>= 1
	if r2 >= r1 goto .L1560
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1560
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1559
	r9 = r0
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L1565
	if r9 == 1 goto .L1612
	if r9 == 2 goto .L1613
	if r9 == 3 goto .L1614
	if r9 == 4 goto .L1615
	if r9 == 5 goto .L1616
	if r9 == 6 goto .L1617
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1617:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1616:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r0 += -1
.L1615:
	r4 = r2
	r4 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
.L1614:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r4
	r0 += -1
.L1613:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1612:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r5
	r0 += -1
	if r0 == -1 goto .L1626
.L1565:
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
	if r3 != 6 goto .L1565
.L1559:
	exit
.L1560:
	if r5 == 0 goto .L1563
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
	if r5 == 0 goto .L1564
	if r5 == 1 goto .L1618
	if r5 == 2 goto .L1619
	if r5 == 3 goto .L1620
	if r5 == 4 goto .L1621
	if r5 == 5 goto .L1622
	if r5 == 6 goto .L1623
	r5 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r5
	r0 += 2
	r4 += 2
.L1623:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1622:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1621:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1620:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1619:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1618:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	if r0 == r9 goto .L1563
.L1564:
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
	if r0 != r9 goto .L1564
.L1563:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1559
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1626:
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
	if r2 >= r1 goto .L1628
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1628
	r4 = r3
	r4 += -1
	r0 = r4;r0 &= 0xffffffff
	if r3 == 0 goto .L1627
	r3 = r0
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1634
	if r3 == 1 goto .L1703
	if r3 == 2 goto .L1704
	if r3 == 3 goto .L1705
	if r3 == 4 goto .L1706
	if r3 == 5 goto .L1707
	if r3 == 6 goto .L1708
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
	r0 += -1
.L1708:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
.L1707:
	r4 = r2
	r4 += r0
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
	r0 += -1
.L1706:
	r9 = r2
	r9 += r0
	r5 = r1
	r5 += r0
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r4
	r0 += -1
.L1705:
	r9 = r2
	r9 += r0
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r3+0) = r5
	r0 += -1
.L1704:
	r4 = r2
	r4 += r0
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r9+0) = r3
	r0 += -1
.L1703:
	r5 = r2
	r5 += r0
	r9 = r1
	r9 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r4
	r0 += -1
	if r0 == -1 goto .L1724
.L1634:
	r5 = r2
	r5 += r0
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r9
	r0 += -1
	r3 = r0
	r4 = r2
	r4 += r0
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r9 = r3
	r9 += -1
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -2
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -3
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -4
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -5
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r9 = r3
	r9 += -6
	r0 = r2
	r0 += r9
	r4 = r1
	r4 += r9
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	r0 = r3
	r0 += -7
	if r3 != 6 goto .L1634
.L1627:
	exit
.L1628:
	if r5 == 0 goto .L1631
	r0 = r2
	r4 = r1
	r5 <<= 2
	r6 = r2
	r6 += r5
	r5 = r6
	r5 -= r2
	r5 += -4
	r5 >>= 2
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L1632
	if r5 == 1 goto .L1709
	if r5 == 2 goto .L1710
	if r5 == 3 goto .L1711
	if r5 == 4 goto .L1712
	if r5 == 5 goto .L1713
	if r5 == 6 goto .L1714
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r4 += 4
.L1714:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1713:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1712:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1711:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1710:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
.L1709:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
	r0 += 4
	r4 += 4
	if r0 == r6 goto .L1631
.L1632:
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
	if r0 != r6 goto .L1632
.L1631:
	if r9 > r3 goto .L1627
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r3 += -1
	r3 -= r9
	r3 = r3;r3 &= 0xffffffff
	r9 += r2
	r3 += r9
	r2 = r0
	r2 ^= -1
	r2 += r3
	r2 += 1
	r2 &= 7
	if r2 == 0 goto .L1633
	if r2 == 1 goto .L1715
	if r2 == 2 goto .L1716
	if r2 == 3 goto .L1717
	if r2 == 4 goto .L1718
	if r2 == 5 goto .L1719
	if r2 == 6 goto .L1720
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1720:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1719:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1718:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
	r0 += 1
	r1 += 1
.L1717:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1716:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1715:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
	if r0 == r3 goto .L1725
.L1633:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r2
	r0 += 1
	r1 += 1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r4 = *(u8 *) (r0+1)
	*(u8 *) (r1+1) = r4
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r1+2) = r5
	r2 = *(u8 *) (r0+3)
	*(u8 *) (r1+3) = r2
	r9 = *(u8 *) (r0+4)
	*(u8 *) (r1+4) = r9
	r4 = *(u8 *) (r0+5)
	*(u8 *) (r1+5) = r4
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r1+6) = r5
	r0 += 7
	r1 += 7
	if r0 != r3 goto .L1633
	exit
.L1725:
	exit
.L1724:
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
	if r0 != 0 goto .L1734
	r0 = r1
	r0 s>>= 14
	if r0 != 0 goto .L1733
	r3 = r1
	r3 s>>= 13
	if r3 != 0 goto .L1735
	r4 = r1
	r4 s>>= 12
	if r4 != 0 goto .L1736
	r5 = r1
	r5 s>>= 11
	if r5 != 0 goto .L1737
	r9 = r1
	r9 s>>= 10
	if r9 != 0 goto .L1738
	r0 = r1
	r0 s>>= 9
	if r0 != 0 goto .L1739
	r3 = r1
	r3 s>>= 8
	if r3 != 0 goto .L1740
	r4 = r1
	r4 s>>= 7
	if r4 != 0 goto .L1741
	r5 = r1
	r5 s>>= 6
	if r5 != 0 goto .L1742
	r9 = r1
	r9 s>>= 5
	if r9 != 0 goto .L1743
	r0 = r1
	r0 s>>= 4
	if r0 != 0 goto .L1744
	r3 = r1
	r3 s>>= 3
	if r3 != 0 goto .L1745
	r4 = r1
	r4 s>>= 2
	if r4 != 0 goto .L1746
	r2 s>>= 1
	if r2 != 0 goto .L1747
	r1 &= 1
	r0 = 16
	if r1 != 0 goto .L1749
.L1733:
	exit
.L1749:
	r0 = 15
	exit
.L1734:
	r0 = 0
	exit
.L1735:
	r0 = 2
	exit
.L1736:
	r0 = 3
	exit
.L1737:
	r0 = 4
	exit
.L1738:
	r0 = 5
	exit
.L1739:
	r0 = 6
	exit
.L1740:
	r0 = 7
	exit
.L1741:
	r0 = 8
	exit
.L1742:
	r0 = 9
	exit
.L1743:
	r0 = 10
	exit
.L1744:
	r0 = 11
	exit
.L1745:
	r0 = 12
	exit
.L1746:
	r0 = 13
	exit
.L1747:
	r0 = 14
	goto .L1733
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r1 &= 0xffff
	r0 = r1
	r2 = r1
	r2 &= 1
	if r2 != 0 goto .L1752
	r3 = r1
	r3 &= 2
	if r3 != 0 goto .L1753
	r4 = r1
	r4 &= 4
	if r4 != 0 goto .L1754
	r5 = r1
	r5 &= 8
	if r5 != 0 goto .L1755
	r9 = r1
	r9 &= 16
	if r9 != 0 goto .L1756
	r2 = r1
	r2 &= 32
	if r2 != 0 goto .L1757
	r3 = r1
	r3 &= 64
	if r3 != 0 goto .L1758
	r4 = r1
	r4 &= 128
	if r4 != 0 goto .L1759
	r5 = r1
	r5 &= 256
	if r5 != 0 goto .L1760
	r9 = r1
	r9 &= 512
	if r9 != 0 goto .L1761
	r2 = r1
	r2 &= 1024
	if r2 != 0 goto .L1762
	r3 = r1
	r3 &= 2048
	if r3 != 0 goto .L1763
	r4 = r1
	r4 &= 4096
	if r4 != 0 goto .L1764
	r5 = r1
	r5 &= 8192
	if r5 != 0 goto .L1765
	r1 &= 16384
	if r1 != 0 goto .L1766
	r0 s>>= 15
	r1 = r0
	r0 = 16
	r0 -= r1
	exit
.L1752:
	r0 = 0
	exit
.L1753:
	r0 = 1
	exit
.L1754:
	r0 = 2
	exit
.L1755:
	r0 = 3
	exit
.L1756:
	r0 = 4
	exit
.L1757:
	r0 = 5
	exit
.L1758:
	r0 = 6
	exit
.L1759:
	r0 = 7
	exit
.L1760:
	r0 = 8
	exit
.L1761:
	r0 = 9
	exit
.L1762:
	r0 = 10
	exit
.L1763:
	r0 = 11
	exit
.L1764:
	r0 = 12
	exit
.L1765:
	r0 = 13
	exit
.L1766:
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
	if r0 s>= 0 goto .L1773
	r1 = r6
	call	__fixsfdi
	exit
.L1773:
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
	if r1 == 0 goto .L1779
	r0 = 0
.L1778:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	if r1 == 0 goto .L1787
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r4 += r0
	r0 = r4;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1777
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r0 = r9;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1777
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 != 0 goto .L1778
	exit
.L1787:
	exit
.L1779:
	r0 = r1
.L1777:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r4 = r1;r4 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r4 == 0 goto .L1791
	if r2 == 0 goto .L1792
	r0 = 0
.L1790:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r4 += r4
	r1 = r4;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1800
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r4 += r0
	r0 = r4;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1789
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r0 = r9;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1789
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r3 += r0
	r0 = r3;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L1790
	exit
.L1800:
	exit
.L1791:
	r0 = r4
	exit
.L1792:
	r0 = r2
.L1789:
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
	if r0 < r2 goto .L1809
	r9 = 32
	r4 = 1
.L1802:
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1809
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1809
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1809
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1809
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1809
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1809
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r1 = r2
	r1 <<= 32
	if r1 s< 0 goto .L1809
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1809
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 > r0 goto .L1804
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1802
.L1805:
	if r3 != 0 goto .L1810
	r0 = r9
.L1810:
	exit
.L1807:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1805
.L1808:
	if r2 >= r0 goto .L1807
	r0 -= r2
	r0 = r0;r0 &= 0xffffffff
	r1 = r4
	r1 |= r9
	r9 = r1;r9 &= 0xffffffff
	goto .L1807
.L1804:
	if r4 == 0 goto .L1827
.L1809:
	r9 = 0
	goto .L1808
.L1827:
	r9 = r4
	goto .L1805
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1831
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
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
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	3
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	r6 = r1
	r7 = r2
	call	__ltdf2
	if r0 s<= 0 goto .L1836
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1837
.L1835:
	r0 = r8
	r0 &= 1
	exit
.L1837:
	r8 = 0
	goto .L1835
.L1836:
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
	if r2 s< 0 goto .L1853
	r2 = 0
	if r3 == r2 goto .L1854
.L1845:
	r4 = 32
	r0 = 0
.L1843:
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
	if r3 == 0 goto .L1842
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
	if r3 == 0 goto .L1842
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
	if r3 == 0 goto .L1842
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
	if r3 == 0 goto .L1842
	r4 += -1
	r4 &= 0xff
	if r4 != 0 goto .L1843
.L1842:
	if r2 == 0 goto .L1847
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L1853:
	r3 = -r3
	r3 <<= 32
	r3 s>>= 32
	r2 = 1
	goto .L1845
.L1854:
	r0 = r3
.L1847:
	exit
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1863
	if r2 s< 0 goto .L1864
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1863:
	r1 = -r1
	if r2 s<= 0 goto .L1865
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
.L1859:
	r0 = -r0
	exit
.L1864:
	r3 = 0
	r2 = -r2
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	goto .L1859
.L1865:
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
	if r1 s< 0 goto .L1871
	if r2 s< 0 goto .L1872
.L1869:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1871:
	r1 = -r1
	if r2 s< 0 goto .L1873
.L1868:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	r0 = -r0
	exit
.L1873:
	r0 = -r0
	r2 = r0
	goto .L1868
.L1872:
	r0 = -r0
	r2 = r0
	goto .L1869
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r0 goto .L1895
	r1 = r2
	r1 <<= 48
	if r1 s<= 0 goto .L1896
	r5 = r2
	r5 += r2
	r5 &= 0xffff
	if r5 > r0 goto .L1897
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1898
	r9 = r2
	r9 <<= 2
	r9 &= 0xffff
	if r9 > r0 goto .L1899
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1900
	r5 = r2
	r5 <<= 3
	r5 &= 0xffff
	if r5 > r0 goto .L1901
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1902
	r9 = r2
	r9 <<= 4
	r9 &= 0xffff
	if r9 > r0 goto .L1903
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1904
	r5 = r2
	r5 <<= 5
	r5 &= 0xffff
	if r5 > r0 goto .L1905
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1906
	r9 = r2
	r9 <<= 6
	r9 &= 0xffff
	if r9 > r0 goto .L1907
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1908
	r5 = r2
	r5 <<= 7
	r5 &= 0xffff
	if r5 > r0 goto .L1909
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1910
	r9 = r2
	r9 <<= 8
	r9 &= 0xffff
	if r9 > r0 goto .L1911
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1912
	r5 = r2
	r5 <<= 9
	r5 &= 0xffff
	if r5 > r0 goto .L1913
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1914
	r9 = r2
	r9 <<= 10
	r9 &= 0xffff
	if r9 > r0 goto .L1915
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1916
	r5 = r2
	r5 <<= 11
	r5 &= 0xffff
	if r5 > r0 goto .L1917
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1918
	r9 = r2
	r9 <<= 12
	r9 &= 0xffff
	if r9 > r0 goto .L1919
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1920
	r5 = r2
	r5 <<= 13
	r5 &= 0xffff
	if r5 > r0 goto .L1921
	r4 = r5
	r4 <<= 48
	if r4 s<= 0 goto .L1922
	r9 = r2
	r9 <<= 14
	r9 &= 0xffff
	if r9 > r0 goto .L1923
	r1 = r9
	r1 <<= 48
	if r1 s<= 0 goto .L1924
	r2 <<= 15
	r2 &= 0xffff
	if r2 > r0 goto .L1925
	r1 = 0
	r4 = 32768
	if r2 != r1 goto .L1875
.L1876:
	if r3 != 0 goto .L1927
	r0 = r1
	exit
.L1893:
	r0 -= r2
	r0 &= 0xffff
	r1 = r4
.L1894:
	r5 = r4
	r5 >>= 1
	r9 = r2
	r9 >>= 1
	if r5 == 0 goto .L1876
	if r9 > r0 goto .L1877
	r0 -= r9
	r0 &= 0xffff
	r5 |= r1
	r1 = r5;r1 &= 0xffff
.L1877:
	r5 = r4
	r5 >>= 2
	r9 = r2
	r9 >>= 2
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1878
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1878:
	r5 = r4
	r5 >>= 3
	r9 = r2
	r9 >>= 3
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1879
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1879:
	r5 = r4
	r5 >>= 4
	r9 = r2
	r9 >>= 4
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1880
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1880:
	r5 = r4
	r5 >>= 5
	r9 = r2
	r9 >>= 5
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1881
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1881:
	r5 = r4
	r5 >>= 6
	r9 = r2
	r9 >>= 6
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1882
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1882:
	r5 = r4
	r5 >>= 7
	r9 = r2
	r9 >>= 7
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1883
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1883:
	r5 = r4
	r5 >>= 8
	r9 = r2
	r9 >>= 8
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1884
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1884:
	r5 = r4
	r5 >>= 9
	r9 = r2
	r9 >>= 9
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1885
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1885:
	r5 = r4
	r5 >>= 10
	r9 = r2
	r9 >>= 10
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1886
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1886:
	r5 = r4
	r5 >>= 11
	r9 = r2
	r9 >>= 11
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1887
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1887:
	r5 = r4
	r5 >>= 12
	r9 = r2
	r9 >>= 12
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1888
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1888:
	r5 = r4
	r5 >>= 13
	r9 = r2
	r9 >>= 13
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1889
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1889:
	r5 = r4
	r5 >>= 14
	r9 = r2
	r9 >>= 14
	if r5 == 0 goto .L1876
	if r9 >= r0 goto .L1890
	r0 -= r9
	r0 &= 0xffff
	r1 |= r5
	r1 &= 0xffff
.L1890:
	r4 >>= 15
	r2 >>= 15
	if r4 == 0 goto .L1876
	if r2 >= r0 goto .L1876
	r0 -= r2
	r0 &= 0xffff
	r1 |= 1
	r1 &= 0xffff
	goto .L1876
.L1895:
	r4 = 1
.L1875:
	if r0 >= r2 goto .L1893
	r1 = 0
	goto .L1894
.L1896:
	r4 = 1
	goto .L1875
.L1897:
	r2 = r5
	r4 = 2
	goto .L1875
.L1898:
	r2 = r5
	r4 = 2
	goto .L1875
.L1899:
	r2 = r9
	r4 = 4
	goto .L1875
.L1900:
	r2 = r9
	r4 = 4
	goto .L1875
.L1901:
	r2 = r5
	r4 = 8
	goto .L1875
.L1902:
	r2 = r5
	r4 = 8
	goto .L1875
.L1903:
	r2 = r9
	r4 = 16
	goto .L1875
.L1904:
	r2 = r9
	r4 = 16
	goto .L1875
.L1905:
	r2 = r5
	r4 = 32
	goto .L1875
.L1906:
	r2 = r5
	r4 = 32
	goto .L1875
.L1907:
	r2 = r9
	r4 = 64
	goto .L1875
.L1908:
	r2 = r9
	r4 = 64
	goto .L1875
.L1909:
	r2 = r5
	r4 = 128
	goto .L1875
.L1910:
	r2 = r5
	r4 = 128
	goto .L1875
.L1911:
	r2 = r9
	r4 = 256
	goto .L1875
.L1912:
	r2 = r9
	r4 = 256
	goto .L1875
.L1913:
	r2 = r5
	r4 = 512
	goto .L1875
.L1914:
	r2 = r5
	r4 = 512
	goto .L1875
.L1915:
	r2 = r9
	r4 = 1024
	goto .L1875
.L1916:
	r2 = r9
	r4 = 1024
	goto .L1875
.L1917:
	r2 = r5
	r4 = 2048
	goto .L1875
.L1918:
	r2 = r5
	r4 = 2048
	goto .L1875
.L1919:
	r2 = r9
	r4 = 4096
	goto .L1875
.L1920:
	r2 = r9
	r4 = 4096
	goto .L1875
.L1921:
	r2 = r5
	r4 = 8192
	goto .L1875
.L1922:
	r2 = r5
	r4 = 8192
	goto .L1875
.L1923:
	r2 = r9
	r4 = 16384
	goto .L1875
.L1924:
	r2 = r9
	r4 = 16384
	goto .L1875
.L1925:
	r4 = 32768
	goto .L1875
.L1927:
	exit
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L1936
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L1929:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1936
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1931
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1936
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1931
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1936
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1931
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1936
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1931
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1936
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1931
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1936
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1931
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1936
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1931
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1936
	r2 += r2
	r4 += r4
	if r2 > r1 goto .L1931
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L1929
.L1932:
	if r3 != 0 goto .L1955
.L1928:
	r0 = r9
	exit
.L1934:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1932
.L1935:
	if r2 >= r1 goto .L1934
	r1 -= r2
	r9 |= r4
	goto .L1934
.L1931:
	if r4 == 0 goto .L1956
.L1936:
	r9 = 0
	goto .L1935
.L1956:
	r9 = r4
	goto .L1932
.L1955:
	r9 = r1
	goto .L1928
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1958
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r0 = r2;r0 &= 0xffffffff
	r1 <<= r0
	r1 <<= 32
.L1959:
	r0 = r1
	exit
.L1958:
	if r2 == 0 goto .L1961
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
	goto .L1959
.L1961:
	r0 = r1
	exit
	.size	__ashldi3, .-__ashldi3
	.align	3
	.global	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	r3 <<= 32
	r3 s>>= 32
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L1963
	*(u64 *) (r10+-32) = 0
	r3 += -64
	r2 = r3;r2 &= 0xffffffff
	r0 = r1
	r0 <<= r2
	*(u64 *) (r10+-24) = r0
.L1964:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1963:
	if r3 == 0 goto .L1966
	r2 = *(u64 *) (r10+-16)
	r1 = r3;r1 &= 0xffffffff
	r4 = r2
	r4 <<= r1
	*(u64 *) (r10+-32) = r4
	r5 = *(u64 *) (r10+-8)
	r5 <<= r1
	r9 = 64
	r9 -= r3
	r3 = r9;r3 &= 0xffffffff
	r2 >>= r3
	r5 |= r2
	*(u64 *) (r10+-24) = r5
	goto .L1964
.L1966:
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
	if r0 == 0 goto .L1968
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
.L1968:
	if r2 == 0 goto .L1971
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
.L1971:
	r0 = r1
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	r3 <<= 32
	r3 s>>= 32
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L1973
	r0 = r2
	r2 s>>= 63
	*(u64 *) (r10+-24) = r2
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	*(u64 *) (r10+-32) = r0
.L1974:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1973:
	if r3 == 0 goto .L1976
	r2 = *(u64 *) (r10+-8)
	r1 = r2
	r1 s>>= r3
	*(u64 *) (r10+-24) = r1
	r4 = 64
	r4 -= r3
	r5 = r4;r5 &= 0xffffffff
	r2 <<= r5
	r3 = r3;r3 &= 0xffffffff
	r9 = *(u64 *) (r10+-16)
	r9 >>= r3
	r2 |= r9
	*(u64 *) (r10+-32) = r2
	goto .L1974
.L1976:
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
	if r1 <= 65534 goto .L1980
	r3 = 0
.L1980:
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
	if r5 == 0 goto .L1982
	r2 = 0
.L1982:
	r0 += r2
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	*(u64 *) (r10+-16) = r1
	r3 = r2
	r6 = 1
	if r2 == 0 goto .L1984
	r6 = 0
.L1984:
	r6 &= 0xff
	r0 = r6
	r0 += -1
	r2 &= r0
	r1 = *(u64 *) (r10+-16)
	r4 = 1
	if r3 == 0 goto .L1985
	r4 = 0
.L1985:
	r4 &= 0xff
	if r4 == 0 goto .L1986
	r5 = r1
.L1987:
	r1 = r2
	r1 |= r5
	call	__clzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 <<= 6
	r0 += r6
	r0 <<= 32
	r0 s>>= 32
	exit
.L1986:
	r5 = 0
	goto .L1987
	.size	__clzti2, .-__clzti2
	.align	3
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	r3 = r1
	r3 s>>= 32
	r0 = r2
	r0 s>>= 32
	if r0 s>= r3 goto .L1990
	if r3 s> r0 goto .L1991
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1992
	if r1 > r2 goto .L1993
	r0 = 1
	exit
.L1990:
	r0 = 0
	exit
.L1991:
	r0 = 2
	exit
.L1992:
	r0 = 0
	exit
.L1993:
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
	if r4 s>= r2 goto .L1997
	if r2 s> r4 goto .L1998
	if r3 >= r1 goto .L1999
	if r1 > r3 goto .L2000
	r0 = 1
	exit
.L1997:
	r0 = 0
	exit
.L1998:
	r0 = 2
	exit
.L1999:
	r0 = 0
	exit
.L2000:
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
	r0 = r1
	*(u64 *) (r10+-8) = r2
	r4 = r1
	r6 = 1
	if r1 == 0 goto .L2003
	r6 = 0
.L2003:
	r6 &= 0xff
	r3 = r6
	r1 = *(u64 *) (r10+-8)
	r2 = 1
	if r4 == 0 goto .L2004
	r2 = 0
.L2004:
	r2 &= 0xff
	if r2 != 0 goto .L2006
	r1 = 0
.L2006:
	r3 += -1
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
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	*(u64 *) (r10+-8) = r2
	if r1 != 0 goto .L2008
	r1 = r2
	if r2 == 0 goto .L2010
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L2008:
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2010:
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
	if r0 == 0 goto .L2012
	r0 = r1
	r0 >>= 32
	r2 += -32
	r4 = r2;r4 &= 0xffffffff
	r0 >>= r4
	r0 = r0;r0 &= 0xffffffff
	exit
.L2012:
	if r2 == 0 goto .L2015
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
.L2015:
	r0 = r1
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	r3 <<= 32
	r3 s>>= 32
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r0 = r3
	r0 &= 64
	if r0 == 0 goto .L2017
	*(u64 *) (r10+-24) = 0
	r3 += -64
	r4 = r3;r4 &= 0xffffffff
	r0 = r2
	r0 >>= r4
	*(u64 *) (r10+-32) = r0
.L2018:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L2017:
	if r3 == 0 goto .L2020
	r4 = *(u64 *) (r10+-8)
	r2 = r3;r2 &= 0xffffffff
	r1 = r4
	r1 >>= r2
	*(u64 *) (r10+-24) = r1
	r5 = 64
	r5 -= r3
	r3 = r5;r3 &= 0xffffffff
	r4 <<= r3
	r9 = *(u64 *) (r10+-16)
	r9 >>= r2
	r4 |= r9
	*(u64 *) (r10+-32) = r4
	goto .L2018
.L2020:
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
	r7 = r1
	*(u64 *) (r10+-8) = r2
	r8 = *(u32 *) (r10+-8)
	r6 = r1;r6 &= 0xffffffff
	r2 = r8
	r1 = r6
	call	__muldsi3
	r2 = r0
	r2 >>= 32
	r7 >>= 32
	r8 *= r7
	r1 = *(u64 *) (r10+-8)
	r1 >>= 32
	r6 *= r1
	r6 += r8
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
	r7 = r1
	r8 = r2
	r6 = r3
	*(u64 *) (r10+-56) = r4
	r2 = r3
	call	__mulddi3
	r6 *= r8
	r2 = *(u64 *) (r10+-56)
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
	if r1 != 0 goto .L2027
	r0 = 0
.L2027:
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
	if r9 > r0 goto .L2034
	r3 = 0
.L2034:
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
	if r0 >= r4 goto .L2035
	r9 = 0
.L2035:
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
	if r9 >= r0 goto .L2036
	r1 = 0
.L2036:
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
	goto .L2040
.L2038:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L2039
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2040:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L2038
	r2 = r6
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L2038
.L2039:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2042
.L2037:
	r0 = r8
	exit
.L2042:
	r2 = r8
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r8 = r0
	goto .L2037
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
	goto .L2046
.L2044:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L2045
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2046:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L2044
	r2 = r6
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L2044
.L2045:
	r2 = *(u64 *) (r10+-8)
	if r2 s< 0 goto .L2048
.L2043:
	r0 = r8
	exit
.L2048:
	r2 = r8
	r1 = 0x3f800000 ll
	call	__divsf3
	r8 = r0
	goto .L2043
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r3 >>= 32
	r0 = r2
	r0 >>= 32
	if r0 >= r3 goto .L2051
	if r3 > r0 goto .L2052
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2053
	if r1 > r2 goto .L2054
	r0 = 1
	exit
.L2051:
	r0 = 0
	exit
.L2052:
	r0 = 2
	exit
.L2053:
	r0 = 0
	exit
.L2054:
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
	if r4 >= r2 goto .L2058
	if r2 > r4 goto .L2059
	if r3 >= r1 goto .L2060
	if r1 > r3 goto .L2061
	r0 = 1
	exit
.L2058:
	r0 = 0
	exit
.L2059:
	r0 = 2
	exit
.L2060:
	r0 = 0
	exit
.L2061:
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
