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
	if r0 == 1 goto .L107
	if r0 == 2 goto .L108
	if r0 == 3 goto .L109
	if r0 == 4 goto .L110
	if r0 == 5 goto .L111
	if r0 == 6 goto .L112
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L112:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L111:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r3 == r0 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L110:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L109:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L108:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r3 == r0 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
.L107:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L68
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L68
.L67:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L68
	r4 += -1
	r5 = r4
	r9 = r2
	r9 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r3 == r2 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+1)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+3)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+5)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L68
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L68
	r4 += -1
	r2 = r9
	r2 += 7
	r0 += 7
	r1 = r0
	if r5 != 7 goto .L67
.L68:
	if r4 == 0 goto .L72
	r0 = r1
	r0 += 1
	exit
.L72:
	r0 = 0
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	r0 = r1
	if r3 == 0 goto .L116
	r1 = r3
	r1 &= 7
	if r1 == 0 goto .L115
	if r1 == 1 goto .L157
	if r1 == 2 goto .L158
	if r1 == 3 goto .L159
	if r1 == 4 goto .L160
	if r1 == 5 goto .L161
	if r1 == 6 goto .L162
	r4 = *(u8 *) (r0+0)
	if r2 == r4 goto .L116
	r0 += 1
	r3 += -1
.L162:
	r5 = *(u8 *) (r0+0)
	if r2 == r5 goto .L116
	r0 += 1
	r3 += -1
.L161:
	r9 = *(u8 *) (r0+0)
	if r2 == r9 goto .L116
	r0 += 1
	r3 += -1
.L160:
	r1 = *(u8 *) (r0+0)
	if r2 == r1 goto .L116
	r0 += 1
	r3 += -1
.L159:
	r4 = *(u8 *) (r0+0)
	if r2 == r4 goto .L116
	r0 += 1
	r3 += -1
.L158:
	r5 = *(u8 *) (r0+0)
	if r2 == r5 goto .L116
	r0 += 1
	r3 += -1
.L157:
	r9 = *(u8 *) (r0+0)
	if r2 == r9 goto .L116
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L116
.L115:
	r1 = *(u8 *) (r0+0)
	if r2 == r1 goto .L116
	r0 += 1
	r9 = r0
	r3 += -1
	r4 = r3
	r5 = *(u8 *) (r0+0)
	if r2 == r5 goto .L116
	r0 += 1
	r3 += -1
	r1 = *(u8 *) (r9+1)
	if r2 == r1 goto .L116
	r0 += 1
	r3 += -1
	r5 = *(u8 *) (r9+2)
	if r2 == r5 goto .L116
	r0 += 1
	r3 += -1
	r1 = *(u8 *) (r9+3)
	if r2 == r1 goto .L116
	r0 += 1
	r3 += -1
	r5 = *(u8 *) (r9+4)
	if r2 == r5 goto .L116
	r0 += 1
	r3 += -1
	r1 = *(u8 *) (r9+5)
	if r2 == r1 goto .L116
	r0 += 1
	r3 += -1
	r9 = *(u8 *) (r9+6)
	if r2 == r9 goto .L116
	r0 += 1
	r3 += -1
	if r4 != 7 goto .L115
.L116:
	if r3 == 0 goto .L165
.L118:
	exit
.L165:
	r0 = 0
	goto .L118
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L168
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L167
	if r0 == 1 goto .L207
	if r0 == 2 goto .L208
	if r0 == 3 goto .L209
	if r0 == 4 goto .L210
	if r0 == 5 goto .L211
	if r0 == 6 goto .L212
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
.L212:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
.L211:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
.L210:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
.L209:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
.L208:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
.L207:
	r4 = *(u8 *) (r1+0)
	r5 = *(u8 *) (r2+0)
	if r4 != r5 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L168
.L167:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L168
	r3 += -1
	r5 = r3
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r0+0)
	if r6 != r9 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+1)
	r6 = *(u8 *) (r0+1)
	if r9 != r6 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+2)
	r6 = *(u8 *) (r0+2)
	if r9 != r6 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+3)
	r6 = *(u8 *) (r0+3)
	if r9 != r6 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+4)
	r6 = *(u8 *) (r0+4)
	if r9 != r6 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+5)
	r6 = *(u8 *) (r0+5)
	if r9 != r6 goto .L168
	r3 += -1
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r4+6)
	r6 = *(u8 *) (r0+6)
	if r4 != r6 goto .L168
	r3 += -1
	r1 += 1
	r0 += 7
	r2 = r0
	if r5 != 7 goto .L167
.L168:
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
	.global	memcpy
	.type	memcpy, @function
memcpy:
	if r3 == 0 goto .L215
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r1
	r3 ^= -1
	r3 += r4
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L216
	if r3 == 1 goto .L239
	if r3 == 2 goto .L240
	if r3 == 3 goto .L241
	if r3 == 4 goto .L242
	if r3 == 5 goto .L243
	if r3 == 6 goto .L244
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r2 += 1
.L244:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L243:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L242:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
.L241:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L240:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L239:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
	if r0 == r4 goto .L215
.L216:
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
	if r0 != r4 goto .L216
.L215:
	r0 = r1
	exit
	.size	memcpy, .-memcpy
	.align	3
	.global	memrchr
	.type	memrchr, @function
memrchr:
	r2 &= 0xff
	r0 = r3
	r0 += -1
	r3 &= 7
	if r3 == 0 goto .L247
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	r5 = r0
	r5 += -1
	if r2 == r9 goto .L287
	r0 = r5
	if r3 == 1 goto .L247
	if r3 == 2 goto .L268
	if r3 == 3 goto .L265
	if r3 == 4 goto .L262
	if r3 == 5 goto .L259
	if r3 == 6 goto .L256
	r3 = r1
	r3 += r5
	r9 = *(u8 *) (r3+0)
	r4 = r5
	r4 += -1
	if r2 == r9 goto .L287
	r0 = r4
.L256:
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r5+0)
	r9 = r0
	r9 += -1
	if r2 == r3 goto .L287
	r0 = r9
.L259:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	r3 = r0
	r3 += -1
	if r2 == r5 goto .L287
	r0 = r3
.L262:
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	r4 = r0
	r4 += -1
	if r2 == r5 goto .L287
	r0 = r4
.L265:
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r3+0)
	r5 = r0
	r5 += -1
	if r2 == r9 goto .L287
	r0 = r5
.L268:
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	r9 = r0
	r9 += -1
	if r2 == r3 goto .L287
	r0 = r9
	goto .L247
.L288:
	r1 = 0
.L248:
	r0 = r1
	exit
.L289:
	r0 += -1
.L247:
	if r0 == -1 goto .L288
	r5 = r1
	r5 += r0
	r4 = *(u8 *) (r5+0)
	r3 = r0
	r3 += -1
	if r2 == r4 goto .L287
	r0 = r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L287
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L287
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L287
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L287
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L287
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L287
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 != r5 goto .L289
.L287:
	r1 += r0
	goto .L248
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L291
	r4 = r1
	r4 += r3
	r0 = r1
	r2 &= 0xff
	r5 = r1
	r5 ^= -1
	r3 = r4
	r3 += r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L292
	if r3 == 1 goto .L315
	if r3 == 2 goto .L316
	if r3 == 3 goto .L317
	if r3 == 4 goto .L318
	if r3 == 5 goto .L319
	if r3 == 6 goto .L320
	*(u8 *) (r1+0) = r2
	r0 += 1
.L320:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L319:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L318:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L317:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L316:
	*(u8 *) (r0+0) = r2
	r0 += 1
.L315:
	*(u8 *) (r0+0) = r2
	r0 += 1
	if r0 == r4 goto .L291
.L292:
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
	if r0 != r4 goto .L292
.L291:
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
	if r1 == 0 goto .L323
.L324:
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L323
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L323
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L323
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L323
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L323
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L323
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L323
	r2 += 7
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L324
	exit
.L323:
	exit
	.size	stpcpy, .-stpcpy
	.align	3
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	r0 = r1
	r2 &= 0xff
	r1 = *(u8 *) (r1+0)
	if r1 == 0 goto .L345
.L341:
	r3 = *(u8 *) (r0+0)
	if r2 == r3 goto .L342
	r0 += 1
	r4 = *(u8 *) (r0+0)
	if r4 != 0 goto .L341
.L342:
	exit
.L345:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r2 s>>= 32
.L348:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	if r2 == r3 goto .L349
	r1 += 1
	r0 = *(u8 *) (r1+-1)
	if r0 != 0 goto .L348
	exit
.L349:
	r0 = r1
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
	if r3 != r0 goto .L353
.L352:
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L353
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	if r9 == r5 goto .L352
.L353:
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
	if r0 == 0 goto .L359
	r2 = r1
.L358:
	r4 = r2
	r4 += 1
	r2 = r4
	r3 = *(u8 *) (r4+0)
	if r3 == 0 goto .L357
	r2 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L357
	r2 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L357
	r2 += 1
	r0 = *(u8 *) (r4+3)
	if r0 == 0 goto .L357
	r2 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L357
	r2 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L357
	r2 += 1
	r9 = *(u8 *) (r4+6)
	if r9 == 0 goto .L357
	r2 += 1
	r4 = *(u8 *) (r4+7)
	if r4 != 0 goto .L358
	goto .L357
.L359:
	r2 = r1
.L357:
	r0 = r2
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L380
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L377
	r3 += -1
	r4 = r1
	r4 += r3
	r9 = r4
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L378
	r3 = *(u8 *) (r2+0)
	if r3 == 0 goto .L377
	r5 = *(u8 *) (r1+0)
	if r5 != r3 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L377
	if r9 == 1 goto .L378
	if r9 == 2 goto .L417
	if r9 == 3 goto .L418
	if r9 == 4 goto .L419
	if r9 == 5 goto .L420
	if r9 == 6 goto .L421
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L377
	if r3 != r0 goto .L377
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L377
.L421:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r3 = *(u8 *) (r1+0)
	if r3 != r5 goto .L377
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L377
.L420:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L377
	r5 = *(u8 *) (r1+0)
	if r5 != r9 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L377
.L419:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L377
	r9 = *(u8 *) (r1+0)
	if r9 != r0 goto .L377
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r1+0)
	if r5 == 0 goto .L377
.L418:
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L377
	r3 = *(u8 *) (r1+0)
	if r3 != r0 goto .L377
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L377
.L417:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r0 = *(u8 *) (r1+0)
	if r0 != r5 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L377
.L378:
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L377
	if r1 == r4 goto .L377
	r5 = *(u8 *) (r1+0)
	if r5 != r9 goto .L377
	r0 = r1
	r0 += 1
	r1 = r0
	r2 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L377
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r9 = *(u8 *) (r0+0)
	if r9 != r5 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+1)
	if r3 == 0 goto .L377
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+2)
	if r3 == 0 goto .L377
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+3)
	if r3 == 0 goto .L377
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+4)
	if r3 == 0 goto .L377
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+5)
	if r3 == 0 goto .L377
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L377
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+6)
	if r3 == 0 goto .L377
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L377
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L377
	r1 += 1
	r2 += 1
	r0 = *(u8 *) (r0+7)
	if r0 != 0 goto .L378
.L377:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L380:
	r0 = 0
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 0 goto .L424
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
	if r5 == 0 goto .L426
	if r5 == 1 goto .L437
	if r5 == 2 goto .L438
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L438:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
.L437:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r5
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r3 goto .L440
.L426:
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
	if r0 != r3 goto .L426
.L424:
	exit
.L440:
	exit
	.size	swab, .-swab
	.align	3
	.global	isalpha
	.type	isalpha, @function
isalpha:
	r1 = r1;r1 &= 0xffffffff
	r1 |= 32
	r1 += -97
	r2 = r1;r2 &= 0xffffffff
	r0 = 1
	if r2 <= 24 goto .L442
	r0 = 0
.L442:
	r0 &= 1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 126 goto .L444
	r0 = 0
.L444:
	r0 &= 1
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L447
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L447:
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
	if r1 <= 30 goto .L450
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L450:
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
	if r1 <= 8 goto .L452
	r0 = 0
.L452:
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
	if r1 <= 92 goto .L454
	r0 = 0
.L454:
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
	if r1 <= 24 goto .L456
	r0 = 0
.L456:
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
	if r1 <= 93 goto .L458
	r0 = 0
.L458:
	r0 &= 1
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L462
	r1 += -9
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 3 goto .L461
	r0 = 0
.L461:
	r0 &= 1
	exit
.L462:
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
	if r1 <= 24 goto .L464
	r0 = 0
.L464:
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
	if r1 <= 30 goto .L468
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L469
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L470
	r0 += -65529
	r5 = r0;r5 &= 0xffffffff
	r0 = 1
	if r5 <= 1 goto .L467
	r0 = 0
.L467:
	r0 &= 1
	exit
.L468:
	r0 = 1
	exit
.L469:
	r0 = 1
	exit
.L470:
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
	if r1 <= 8 goto .L472
	r0 = 0
.L472:
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
	if r1 <= 254 goto .L481
	r1 = r0;r1 &= 0xffffffff
	if r1 <= 8230 goto .L477
	r2 = r0
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L478
	r4 = r0
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L479
	r9 = r0
	r9 += -65532
	r1 = r9;r1 &= 0xffffffff
	if r1 > 1048579 goto .L480
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L481:
	r0 += 1
	r0 &= 127
	r2 = 1
	if r0 s> 32 goto .L475
	r2 = 0
.L475:
	r0 = r2
	r0 &= 1
	exit
.L477:
	r0 = 1
	exit
.L478:
	r0 = 1
	exit
.L479:
	r0 = 1
	exit
.L480:
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
	if r2 <= 8 goto .L485
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 4 goto .L484
	r0 = 0
.L484:
	r0 &= 1
	exit
.L485:
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
	if r0 != 0 goto .L490
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L491
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L494
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L490:
	r0 = r6
	exit
.L491:
	r0 = r7
	exit
.L494:
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
	if r0 != 0 goto .L498
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L499
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L502
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L498:
	r0 = r6
	exit
.L499:
	r0 = r7
	exit
.L502:
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
	if r0 != 0 goto .L509
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L510
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L505
	if r6 s>= 0 goto .L511
	r0 = r7
	exit
.L505:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L506
	r8 = 0
.L506:
	r8 &= 0xff
	if r8 == 0 goto .L508
	r6 = r7
.L508:
	r0 = r6
	exit
.L509:
	r0 = r7
	exit
.L510:
	r0 = r6
	exit
.L511:
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
	if r0 != 0 goto .L518
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L519
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L514
	r2 = r6
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L520
	r0 = r7
	exit
.L514:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L515
	r8 = 0
.L515:
	r8 &= 0xff
	if r8 == 0 goto .L517
	r6 = r7
.L517:
	r0 = r6
	exit
.L518:
	r0 = r7
	exit
.L519:
	r0 = r6
	exit
.L520:
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
	if r0 != 0 goto .L527
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L528
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L523
	if r6 s>= 0 goto .L529
	r0 = r7
	exit
.L523:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L524
	r8 = 0
.L524:
	r8 &= 0xff
	if r8 == 0 goto .L526
	r6 = r7
.L526:
	r0 = r6
	exit
.L527:
	r0 = r7
	exit
.L528:
	r0 = r6
	exit
.L529:
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
	if r0 != 0 goto .L536
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L537
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L532
	if r7 s>= 0 goto .L538
	r0 = r7
	exit
.L532:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L533
	r8 = 0
.L533:
	r8 &= 0xff
	if r8 == 0 goto .L535
	r6 = r7
.L535:
	r0 = r6
	exit
.L536:
	r0 = r6
	exit
.L537:
	r0 = r7
	exit
.L538:
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
	if r0 != 0 goto .L545
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L546
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L541
	r2 = r7
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L547
	r0 = r7
	exit
.L541:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s<= 0 goto .L542
	r8 = 0
.L542:
	r8 &= 0xff
	if r8 == 0 goto .L544
	r6 = r7
.L544:
	r0 = r6
	exit
.L545:
	r0 = r6
	exit
.L546:
	r0 = r7
	exit
.L547:
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
	if r0 != 0 goto .L554
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L555
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L550
	if r7 s>= 0 goto .L556
	r0 = r7
	exit
.L550:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L551
	r8 = 0
.L551:
	r8 &= 0xff
	if r8 == 0 goto .L553
	r6 = r7
.L553:
	r0 = r6
	exit
.L554:
	r0 = r6
	exit
.L555:
	r0 = r7
	exit
.L556:
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
	if r1 == 0 goto .L560
	r0 = s.0 ll
	r3 = digits ll
.L559:
	r4 = r1
	r4 &= 63
	r2 = r3
	r2 += r4
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r9 = r0
	r1 >>= 6
	if r1 == 0 goto .L558
	r4 = r1
	r4 &= 63
	r0 = r3
	r0 += r4
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r2
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L558
	r5 = r1
	r5 &= 63
	r9 = r3
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L558
	r2 = r1
	r2 &= 63
	r5 = r3
	r5 += r2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 != 0 goto .L559
.L558:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
.L560:
	r0 = s.0 ll
	goto .L558
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
	if r2 == 0 goto .L573
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L570
	*(u64 *) (r2+8) = r1
.L570:
	exit
.L573:
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
	if r0 == 0 goto .L575
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L575:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L574
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L574:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L579
.L578:
	r0 <<= 32
	r0 s>>= 32
	exit
.L579:
	r1 = -r1
	r0 = r1
	goto .L578
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r6 = r1
.L581:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L602
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L602
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L602
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L602
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L602
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L602
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L602
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L602
	r6 += 1
	goto .L581
.L602:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L588
	if r0 != 45 goto .L589
	r4 = 1
.L583:
	r6 += 1
.L584:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r2 = r1;r2 &= 0xffffffff
	if r2 > 9 goto .L590
	r5 = r6
	r0 = 0
	r3 = 9
.L586:
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r6 += 1
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r9 = r2;r9 &= 0xffffffff
	r5 += 1
	if r3 <= r9 goto .L585
	r1 = r0
	r1 <<= 2
	r0 += r1
	r0 <<= 33
	r0 s>>= 32
	r6 += 1
	r2 = *(u8 *) (r5+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r1 = r9;r1 &= 0xffffffff
	r5 += 1
	if r3 > r1 goto .L586
.L585:
	if r4 != 0 goto .L587
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L587:
	exit
.L588:
	r4 = 0
	goto .L583
.L589:
	r4 = 0
	goto .L584
.L590:
	r0 = 0
	goto .L585
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r6 = r1
.L604:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L629
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L629
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L629
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L629
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L629
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L629
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L629
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L629
	r6 += 1
	goto .L604
.L629:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L611
	if r0 != 45 goto .L612
	r4 = 1
.L606:
	r6 += 1
.L607:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r2 = r1;r2 &= 0xffffffff
	if r2 > 9 goto .L613
	r9 = r6
	r0 = 0
	r3 = 9
.L609:
	r0 *= 10
	r6 += 1
	r5 = *(u8 *) (r9+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r2 = r1;r2 &= 0xffffffff
	r9 += 1
	if r3 <= r2 goto .L608
	r0 *= 10
	r5 = *(u8 *) (r9+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r1 = *(u8 *) (r6+1)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r2 = r1;r2 &= 0xffffffff
	r5 = r9
	r5 += 1
	if r3 <= r2 goto .L608
	r0 *= 10
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r2 = *(u8 *) (r6+2)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	r5 += 1
	if r3 <= r1 goto .L608
	r0 *= 10
	r6 += 3
	r5 = *(u8 *) (r5+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	r9 += 3
	if r3 > r1 goto .L609
.L608:
	if r4 != 0 goto .L610
	r0 = -r0
.L610:
	exit
.L611:
	r4 = 0
	goto .L606
.L612:
	r4 = 0
	goto .L607
.L613:
	r0 = 0
	goto .L608
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r6 = r1
.L631:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L656
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L656
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L656
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L656
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L656
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L656
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L656
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L656
	r6 += 1
	goto .L631
.L656:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L638
	if r0 != 45 goto .L639
	r4 = 1
.L633:
	r6 += 1
.L634:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r2 = r1;r2 &= 0xffffffff
	if r2 > 9 goto .L640
	r9 = r6
	r0 = 0
	r3 = 9
.L636:
	r0 *= 10
	r6 += 1
	r5 = *(u8 *) (r9+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r2 = r1;r2 &= 0xffffffff
	r9 += 1
	if r3 <= r2 goto .L635
	r0 *= 10
	r5 = *(u8 *) (r9+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r1 = *(u8 *) (r6+1)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r2 = r1;r2 &= 0xffffffff
	r5 = r9
	r5 += 1
	if r3 <= r2 goto .L635
	r0 *= 10
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r2 = *(u8 *) (r6+2)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	r5 += 1
	if r3 <= r1 goto .L635
	r0 *= 10
	r6 += 3
	r5 = *(u8 *) (r5+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	r9 += 3
	if r3 > r1 goto .L636
.L635:
	if r4 != 0 goto .L637
	r0 = -r0
.L637:
	exit
.L638:
	r4 = 0
	goto .L633
.L639:
	r4 = 0
	goto .L634
.L640:
	r0 = 0
	goto .L635
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
	if r1 s< 0 goto .L660
.L659:
	exit
.L660:
	r0 = -r0
	goto .L659
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
	if r1 s< 0 goto .L664
.L663:
	exit
.L664:
	r0 = -r0
	goto .L663
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
	if r1 s< 0 goto .L668
.L667:
	exit
.L668:
	r0 = -r0
	goto .L667
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
	if r0 == 0 goto .L672
.L671:
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r2 == r3 goto .L672
	r1 += 4
	r4 = *(u32 *) (r1+0)
	if r4 != 0 goto .L671
.L672:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L674
	r0 = r1
.L674:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r0 goto .L679
.L678:
	r4 = *(u32 *) (r1+0)
	if r4 == 0 goto .L679
	r5 = *(u32 *) (r2+0)
	if r5 == 0 goto .L679
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 == r9 goto .L678
.L679:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r4 goto .L683
	r0 = 1
	if r3 s< r4 goto .L682
	r0 = 0
.L682:
	r0 &= 1
	exit
.L683:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L686:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L702
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L702
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L702
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L702
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L702
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L702
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L702
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L686
.L702:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L706
	r0 = r1
.L705:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L704
	r0 += 4
	r4 = *(u32 *) (r2+4)
	if r4 == 0 goto .L704
	r0 += 4
	r5 = *(u32 *) (r2+8)
	if r5 == 0 goto .L704
	r0 += 4
	r9 = *(u32 *) (r2+12)
	if r9 == 0 goto .L704
	r0 += 4
	r3 = *(u32 *) (r2+16)
	if r3 == 0 goto .L704
	r0 += 4
	r4 = *(u32 *) (r2+20)
	if r4 == 0 goto .L704
	r0 += 4
	r5 = *(u32 *) (r2+24)
	if r5 == 0 goto .L704
	r0 += 4
	r2 = *(u32 *) (r2+28)
	if r2 != 0 goto .L705
	goto .L704
.L706:
	r0 = r1
.L704:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L724
	r0 = r3
	r0 &= 3
	if r0 == 0 goto .L723
	if r0 == 1 goto .L746
	if r0 == 2 goto .L747
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L724
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L724
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
.L747:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L724
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L724
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
.L746:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L724
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L724
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L724
.L723:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L724
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L724
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L724
	r3 += -1
	r5 = r3
	r0 = r1
	r0 += 4
	r1 = r0
	r2 += 4
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r9 goto .L724
	r6 = *(u32 *) (r0+0)
	if r6 == 0 goto .L724
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L724
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L724
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L724
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L724
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L724
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L724
	r3 += -1
	r0 += 12
	r1 = r0
	r2 += 4
	if r5 != 3 goto .L723
.L724:
	if r3 == 0 goto .L728
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r5 goto .L729
	r0 = 1
	if r3 s< r5 goto .L727
	r0 = 0
.L727:
	r0 &= 1
	exit
.L728:
	r0 = 0
	exit
.L729:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L752
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L751
	if r0 == 1 goto .L792
	if r0 == 2 goto .L793
	if r0 == 3 goto .L794
	if r0 == 4 goto .L795
	if r0 == 5 goto .L796
	if r0 == 6 goto .L797
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L752
	r3 += -1
	r1 += 4
.L797:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L752
	r3 += -1
	r1 += 4
.L796:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L752
	r3 += -1
	r1 += 4
.L795:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L752
	r3 += -1
	r1 += 4
.L794:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L752
	r3 += -1
	r1 += 4
.L793:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L752
	r3 += -1
	r1 += 4
.L792:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L752
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L752
.L751:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L752
	r3 += -1
	r4 = r3
	r9 = r1
	r9 += 4
	r1 = r9
	r5 = *(u32 *) (r9+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L752
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L752
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L752
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L752
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L752
	r3 += -1
	r1 += 4
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L752
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L752
	r3 += -1
	r9 += 28
	r1 = r9
	if r4 != 7 goto .L751
.L752:
	if r3 == 0 goto .L799
	r0 = r1
	exit
.L799:
	r0 = 0
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L802
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L801
	if r0 == 1 goto .L844
	if r0 == 2 goto .L845
	if r0 == 3 goto .L846
	if r0 == 4 goto .L847
	if r0 == 5 goto .L848
	if r0 == 6 goto .L849
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
.L849:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
.L848:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
.L847:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
.L846:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
.L845:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
.L844:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L802
.L801:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L802
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
	if r6 != r9 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L802
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L802
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	if r5 != 7 goto .L801
.L802:
	if r3 == 0 goto .L806
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r5 goto .L807
	r0 = 1
	if r3 s< r5 goto .L805
	r0 = 0
.L805:
	r0 &= 1
	exit
.L806:
	r0 = 0
	exit
.L807:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r0 = r3
	r3 += -1
	if r0 == 0 goto .L852
	r5 = r1
	r4 = r3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L853
	if r4 == 1 goto .L876
	if r4 == 2 goto .L877
	if r4 == 3 goto .L878
	if r4 == 4 goto .L879
	if r4 == 5 goto .L880
	if r4 == 6 goto .L881
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r3 += -1
	r5 += 4
	r2 += 4
.L881:
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r0
	r3 += -1
	r5 += 4
	r2 += 4
.L880:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r4
	r3 += -1
	r5 += 4
	r2 += 4
.L879:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r9
	r3 += -1
	r5 += 4
	r2 += 4
.L878:
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r0
	r3 += -1
	r5 += 4
	r2 += 4
.L877:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r4
	r3 += -1
	r5 += 4
	r2 += 4
.L876:
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r9
	r3 += -1
	r5 += 4
	r2 += 4
	if r3 == -1 goto .L852
.L853:
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r0
	r5 += 4
	r2 += 4
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r4
	r9 = *(u32 *) (r2+4)
	*(u32 *) (r5+4) = r9
	r0 = *(u32 *) (r2+8)
	*(u32 *) (r5+8) = r0
	r4 = *(u32 *) (r2+12)
	*(u32 *) (r5+12) = r4
	r9 = *(u32 *) (r2+16)
	*(u32 *) (r5+16) = r9
	r0 = *(u32 *) (r2+20)
	*(u32 *) (r5+20) = r0
	r4 = *(u32 *) (r2+24)
	*(u32 *) (r5+24) = r4
	r3 += -8
	r5 += 28
	r2 += 28
	if r3 != -1 goto .L853
.L852:
	r0 = r1
	exit
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L884
	r4 = r3
	r4 <<= 2
	r0 = r1
	r0 -= r2
	if r4 >= r0 goto .L885
	r5 = r3
	r5 += -1
	if r3 == 0 goto .L884
	r9 = r1
	r3 = r5
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L888
	if r5 == 1 goto .L939
	if r5 == 2 goto .L940
	if r5 == 3 goto .L941
	if r5 == 4 goto .L942
	if r5 == 5 goto .L943
	if r5 == 6 goto .L944
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r4
	r3 += -1
	r9 += 4
	r2 += 4
.L944:
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r0
	r3 += -1
	r9 += 4
	r2 += 4
.L943:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r5
	r3 += -1
	r9 += 4
	r2 += 4
.L942:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r4
	r3 += -1
	r9 += 4
	r2 += 4
.L941:
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r0
	r3 += -1
	r9 += 4
	r2 += 4
.L940:
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r5
	r3 += -1
	r9 += 4
	r2 += 4
.L939:
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r4
	r3 += -1
	r9 += 4
	r2 += 4
	if r3 == -1 goto .L884
.L888:
	r0 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r0
	r9 += 4
	r2 += 4
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r9+0) = r5
	r4 = *(u32 *) (r2+4)
	*(u32 *) (r9+4) = r4
	r0 = *(u32 *) (r2+8)
	*(u32 *) (r9+8) = r0
	r5 = *(u32 *) (r2+12)
	*(u32 *) (r9+12) = r5
	r4 = *(u32 *) (r2+16)
	*(u32 *) (r9+16) = r4
	r0 = *(u32 *) (r2+20)
	*(u32 *) (r9+20) = r0
	r5 = *(u32 *) (r2+24)
	*(u32 *) (r9+24) = r5
	r3 += -8
	r9 += 28
	r2 += 28
	if r3 != -1 goto .L888
	goto .L884
.L885:
	if r3 == 0 goto .L884
	r3 += -1
	r3 <<= 2
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r2 += -4
	r3 >>= 2
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L887
	if r3 == 1 goto .L933
	if r3 == 2 goto .L934
	if r3 == 3 goto .L935
	if r3 == 4 goto .L936
	if r3 == 5 goto .L937
	if r3 == 6 goto .L938
	r0 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r0
	r9 += -4
	r4 += -4
.L938:
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	r9 += -4
	r4 += -4
.L937:
	r3 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r3
	r9 += -4
	r4 += -4
.L936:
	r0 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r0
	r9 += -4
	r4 += -4
.L935:
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	r9 += -4
	r4 += -4
.L934:
	r3 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r3
	r9 += -4
	r4 += -4
.L933:
	r0 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r0
	r9 += -4
	r4 += -4
	if r9 == r2 goto .L884
.L887:
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	r9 += -4
	r4 += -4
	r3 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r3
	r0 = *(u32 *) (r9+-4)
	*(u32 *) (r4+-4) = r0
	r5 = *(u32 *) (r9+-8)
	*(u32 *) (r4+-8) = r5
	r3 = *(u32 *) (r9+-12)
	*(u32 *) (r4+-12) = r3
	r0 = *(u32 *) (r9+-16)
	*(u32 *) (r4+-16) = r0
	r5 = *(u32 *) (r9+-20)
	*(u32 *) (r4+-20) = r5
	r3 = *(u32 *) (r9+-24)
	*(u32 *) (r4+-24) = r3
	r9 += -28
	r4 += -28
	if r9 != r2 goto .L887
.L884:
	r0 = r1
	exit
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r2 s>>= 32
	r0 = r3
	r3 += -1
	if r0 == 0 goto .L948
	r5 = r1
	r4 = r3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L949
	if r4 == 1 goto .L972
	if r4 == 2 goto .L973
	if r4 == 3 goto .L974
	if r4 == 4 goto .L975
	if r4 == 5 goto .L976
	if r4 == 6 goto .L977
	*(u32 *) (r1+0) = r2
	r3 += -1
	r5 += 4
.L977:
	*(u32 *) (r5+0) = r2
	r3 += -1
	r5 += 4
.L976:
	*(u32 *) (r5+0) = r2
	r3 += -1
	r5 += 4
.L975:
	*(u32 *) (r5+0) = r2
	r3 += -1
	r5 += 4
.L974:
	*(u32 *) (r5+0) = r2
	r3 += -1
	r5 += 4
.L973:
	*(u32 *) (r5+0) = r2
	r3 += -1
	r5 += 4
.L972:
	*(u32 *) (r5+0) = r2
	r3 += -1
	r5 += 4
	if r3 == -1 goto .L948
.L949:
	*(u32 *) (r5+0) = r2
	r5 += 4
	*(u32 *) (r5+0) = r2
	*(u32 *) (r5+4) = r2
	*(u32 *) (r5+8) = r2
	*(u32 *) (r5+12) = r2
	*(u32 *) (r5+16) = r2
	*(u32 *) (r5+20) = r2
	*(u32 *) (r5+24) = r2
	r3 += -8
	r5 += 28
	if r3 != -1 goto .L949
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
	r2 = r2;r2 &= 0xffffffff
	r3 = r1
	r3 <<= r2
	r0 = 64
	r0 -= r2
	r4 = r0;r4 &= 0xffffffff
	r1 >>= r4
	r0 = r1
	r0 |= r3
	exit
	.size	rotl_sz, .-rotl_sz
	.align	3
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	r2 = r2;r2 &= 0xffffffff
	r3 = r1
	r3 >>= r2
	r0 = 64
	r0 -= r2
	r4 = r0;r4 &= 0xffffffff
	r1 <<= r4
	r0 = r1
	r0 |= r3
	exit
	.size	rotr_sz, .-rotr_sz
	.align	3
	.global	rotl16
	.type	rotl16, @function
rotl16:
	r1 &= 0xffff
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 <<= r2
	r0 = 16
	r0 -= r4
	r2 = r0;r2 &= 0xffffffff
	r1 >>= r2
	r1 |= r3
	r0 = r1;r0 &= 0xffff
	exit
	.size	rotl16, .-rotl16
	.align	3
	.global	rotr16
	.type	rotr16, @function
rotr16:
	r1 &= 0xffff
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 >>= r2
	r0 = 16
	r0 -= r4
	r2 = r0;r2 &= 0xffffffff
	r1 <<= r2
	r1 |= r3
	r0 = r1;r0 &= 0xffff
	exit
	.size	rotr16, .-rotr16
	.align	3
	.global	rotl8
	.type	rotl8, @function
rotl8:
	r1 &= 0xff
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 <<= r2
	r0 = 8
	r0 -= r4
	r2 = r0;r2 &= 0xffffffff
	r1 >>= r2
	r1 |= r3
	r0 = r1;r0 &= 0xff
	exit
	.size	rotl8, .-rotl8
	.align	3
	.global	rotr8
	.type	rotr8, @function
rotr8:
	r1 &= 0xff
	r2 <<= 32
	r4 = r2
	r4 s>>= 32
	r2 >>= 32
	r3 = r1
	r3 >>= r2
	r0 = 8
	r0 -= r4
	r2 = r0;r2 &= 0xffffffff
	r1 <<= r2
	r1 |= r3
	r0 = r1;r0 &= 0xff
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
	r2 = r1
	r2 >>= 24
	r0 = r1
	r0 &= 16711680
	r0 >>= 8
	r0 |= r2
	r3 = r1
	r3 &= 65280
	r3 <<= 8
	r0 |= r3
	r1 &= 0xff
	r1 <<= 24
	r0 |= r1
	exit
	.size	bswap_32, .-bswap_32
	.align	3
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	r2 = r1
	r2 >>= 56
	r0 = r1
	r0 >>= 40
	r0 &= 65280
	r0 |= r2
	r3 = r1
	r3 >>= 24
	r3 &= 16711680
	r0 |= r3
	r4 = 1095216660480 ll
	r5 = r1
	r5 &= r4
	r5 >>= 8
	r0 |= r5
	r9 = 4278190080 ll
	r2 = r1
	r2 &= r9
	r2 <<= 8
	r0 |= r2
	r3 = r1
	r3 &= 16711680
	r3 <<= 24
	r0 |= r3
	r4 = r1
	r4 &= 65280
	r4 <<= 40
	r0 |= r4
	r1 <<= 56
	r0 |= r1
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
	if r0 != 0 goto .L1082
	r0 = 1
.L1080:
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L1099
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
.L1099:
	exit
.L1081:
	r0 = 0
	exit
.L1082:
	r0 = 1
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
	if r0 s<= 0 goto .L1103
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1104
.L1102:
	r0 = r7
	r0 &= 1
	exit
.L1104:
	r7 = 0
	goto .L1102
.L1103:
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
	if r0 s<= 0 goto .L1108
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1109
.L1107:
	r0 = r7
	r0 &= 1
	exit
.L1109:
	r7 = 0
	goto .L1107
.L1108:
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
	if r0 s<= 0 goto .L1113
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1114
.L1112:
	r0 = r7
	r0 &= 1
	exit
.L1114:
	r7 = 0
	goto .L1112
.L1113:
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
	if r0 != 0 goto .L1117
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r0
	r1 = r8
	call	__nesf2
	if r0 == 0 goto .L1117
	if r6 s< 0 goto .L1124
	r7 = 0x40000000 ll
	goto .L1121
.L1124:
	r7 = 0x3f000000 ll
	goto .L1121
.L1120:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1117
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1121:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1120
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1120
.L1117:
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
	if r0 != 0 goto .L1126
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1126
	if r6 s< 0 goto .L1133
	r7 = 0x4000000000000000 ll
	goto .L1130
.L1133:
	r7 = 0x3fe0000000000000 ll
	goto .L1130
.L1129:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1126
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1130:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1129
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1129
.L1126:
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
	if r0 != 0 goto .L1135
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1135
	if r6 s< 0 goto .L1142
	r7 = 0x4000000000000000 ll
	goto .L1139
.L1142:
	r7 = 0x3fe0000000000000 ll
	goto .L1139
.L1138:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1135
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1139:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1138
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1138
.L1135:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1144
	r0 = r2
	r4 = r1
	r2 += r3
	r3 = r0
	r3 ^= -1
	r3 += r2
	r3 += 1
	r3 &= 3
	if r3 == 0 goto .L1145
	if r3 == 1 goto .L1156
	if r3 == 2 goto .L1157
	r5 = *(u8 *) (r0+0)
	r9 = *(u8 *) (r1+0)
	r9 ^= r5
	*(u8 *) (r1+0) = r9
	r0 += 1
	r4 += 1
.L1157:
	r5 = *(u8 *) (r0+0)
	r3 = *(u8 *) (r4+0)
	r3 ^= r5
	*(u8 *) (r4+0) = r3
	r0 += 1
	r4 += 1
.L1156:
	r9 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r4+0)
	r5 ^= r9
	*(u8 *) (r4+0) = r5
	r0 += 1
	r4 += 1
	if r0 == r2 goto .L1144
.L1145:
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
	if r0 != r2 goto .L1145
.L1144:
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
	if r7 == 0 goto .L1161
	r2 = r7
	r2 &= 7
	if r2 == 0 goto .L1160
	if r2 == 1 goto .L1200
	if r2 == 2 goto .L1201
	if r2 == 3 goto .L1202
	if r2 == 4 goto .L1203
	if r2 == 5 goto .L1204
	if r2 == 6 goto .L1205
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1205:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1204:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1203:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1202:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1201:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
.L1200:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r7 += -1
	if r7 == 0 goto .L1161
.L1160:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1161
	r6 += 1
	r0 += 1
	r9 = r7
	r9 += -1
	r7 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1161
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1161
	r0 += 1
	r7 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1161
	r0 += 1
	r7 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1161
	r0 += 1
	r7 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1161
	r0 += 1
	r7 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1161
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1161
	r6 += 7
	r0 += 1
	r7 += -1
	if r9 != 7 goto .L1160
.L1161:
	if r7 != 0 goto .L1163
	*(u8 *) (r0+0) = 0
.L1163:
	r0 = r8
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1254
	r0 = r3
	r0 ^= -1
	r0 += r2
	r0 += 1
	r0 &= 7
	if r0 == r3 goto .L1208
	if r0 == 1 goto .L1248
	if r0 == 2 goto .L1249
	if r0 == 3 goto .L1250
	if r0 == 4 goto .L1251
	if r0 == 5 goto .L1252
	if r0 == 6 goto .L1253
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1209
	r3 += 1
.L1253:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 != 0 goto .L1256
.L1209:
	r0 = r3
	exit
.L1254:
	r3 = 0
	goto .L1209
.L1256:
	r3 += 1
.L1252:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1209
	r3 += 1
.L1251:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1209
	r3 += 1
.L1250:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1209
	r3 += 1
.L1249:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1209
	r3 += 1
.L1248:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1209
	r3 += 1
	if r3 == r2 goto .L1209
.L1208:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1209
	r5 = r3
	r5 += 1
	r3 = r5
	r4 = r1
	r4 += r5
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1209
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1209
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1209
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1209
	r3 += 1
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	if r4 == 0 goto .L1209
	r3 += 1
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	if r0 == 0 goto .L1209
	r3 += 1
	r4 = r1
	r4 += r3
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1209
	r5 += 7
	r3 = r5
	if r5 != r2 goto .L1208
	goto .L1209
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1265
.L1258:
	r3 = r2
.L1261:
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1266
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r3 += 1
	if r5 != r9 goto .L1261
	r0 = r1
	exit
.L1265:
	exit
.L1266:
	r1 += 1
	r0 = *(u8 *) (r1+0)
	if r0 != 0 goto .L1258
	r0 = 0
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	goto .L1269
.L1268:
	r1 += 1
	r4 = *(u8 *) (r1+-1)
	if r4 == 0 goto .L1272
.L1269:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1268
	r3 = r1
	goto .L1268
.L1272:
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
	if r0 == 0 goto .L1277
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
	r1 = r6
.L1275:
	r2 = *(u32 *) (r10+-8)
	call	strchr
	r6 = r0
	if r0 == 0 goto .L1279
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1278
	r1 = r6
	r1 += 1
	goto .L1275
.L1279:
	r0 = 0
	exit
.L1277:
	r0 = r6
	exit
.L1278:
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
	if r0 s<= 0 goto .L1293
.L1281:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1291
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1283
	r0 = r6
	exit
.L1293:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1281
.L1283:
	r1 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r1
	exit
.L1291:
	r0 = r6
	exit
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
	if r4 == 0 goto .L1299
	r5 = 1
	if r4 >= r2 goto .L1296
	r5 = 0
.L1296:
	r5 &= 0xff
	if r5 != 0 goto .L1300
	r2 = *(u64 *) (r10+-24)
	if r6 > r2 goto .L1301
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 += -1
	*(u64 *) (r10+-8) = r4
	r3 += 1
	*(u64 *) (r10+-16) = r3
	r2 -= r6
	r2 &= 7
	r8 = r2
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r7 = r9
	r7 s>>= 56
	if r3 == r9 goto .L1351
.L1304:
	r6 += 1
	r4 = *(u64 *) (r10+-24)
	if r4 < r6 goto .L1350
	if r8 == 0 goto .L1298
	if r8 == 1 goto .L1342
	if r8 == 2 goto .L1343
	if r8 == 3 goto .L1344
	if r8 == 4 goto .L1345
	if r8 == 5 goto .L1346
	if r8 == 6 goto .L1347
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r7 goto .L1352
.L1306:
	r6 += 1
.L1347:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r7 goto .L1353
.L1309:
	r6 += 1
.L1346:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r7 goto .L1354
.L1312:
	r6 += 1
.L1345:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r7 goto .L1355
.L1315:
	r6 += 1
.L1344:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r7 goto .L1356
.L1318:
	r6 += 1
.L1343:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r7 goto .L1357
.L1321:
	r6 += 1
.L1342:
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r7 goto .L1358
.L1324:
	r6 += 1
	r0 = *(u64 *) (r10+-24)
	if r0 >= r6 goto .L1298
.L1350:
	r0 = 0
	exit
.L1359:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1297
.L1302:
	r0 = r6
	exit
.L1299:
	r0 = r6
	exit
.L1300:
	r0 = 0
	exit
.L1301:
	r0 = 0
	exit
.L1351:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1304
	goto .L1302
.L1352:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1306
	goto .L1302
.L1353:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1309
	goto .L1302
.L1354:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1312
	goto .L1302
.L1355:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1315
	goto .L1302
.L1356:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1318
	goto .L1302
.L1357:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1321
	goto .L1302
.L1358:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1324
	goto .L1302
.L1360:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1327
	goto .L1302
.L1361:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1329
	goto .L1302
.L1362:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1331
	goto .L1302
.L1363:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1333
	goto .L1302
.L1364:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1335
	goto .L1302
.L1365:
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1337
	goto .L1302
.L1339:
	r6 = r8
	r6 += 7
	r5 = *(u64 *) (r10+-24)
	if r5 < r6 goto .L1350
.L1298:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == r7 goto .L1359
.L1297:
	r6 += 1
	r8 = r6
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	if r5 == r7 goto .L1360
.L1327:
	r6 = r8
	r6 += 1
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	if r2 == r7 goto .L1361
.L1329:
	r6 = r8
	r6 += 2
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	if r9 == r7 goto .L1362
.L1331:
	r6 = r8
	r6 += 3
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	if r3 == r7 goto .L1363
.L1333:
	r6 = r8
	r6 += 4
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	if r4 == r7 goto .L1364
.L1335:
	r6 = r8
	r6 += 5
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == r7 goto .L1365
.L1337:
	r6 = r8
	r6 += 6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	if r1 != r7 goto .L1339
	r3 = *(u64 *) (r10+-8)
	r2 = *(u64 *) (r10+-16)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1339
	goto .L1302
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1402
	*(u64 *) (r10+-8) = 0
.L1367:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1399
	r7 = 0
	r8 = 0x3fe0000000000000 ll
.L1371:
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
	if r0 s< 0 goto .L1372
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
	if r0 s< 0 goto .L1372
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
	if r0 s< 0 goto .L1372
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
	if r0 s>= 0 goto .L1371
	goto .L1372
.L1402:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1367
.L1399:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1400
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 == 0 goto .L1401
	r7 = 0
	r8 = r7
.L1375:
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
	if r8 s< r0 goto .L1372
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
	if r8 s< r0 goto .L1372
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
	if r8 s< r0 goto .L1372
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
	if r8 s>= r0 goto .L1375
	goto .L1372
.L1400:
	r7 = 0
.L1372:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r7
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1376
	r3 = -9223372036854775808 ll
	r3 ^= r6
	r6 = r3
.L1376:
	r0 = r6
	exit
.L1401:
	r7 = 0
	goto .L1372
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	if r1 == 0 goto .L1406
	r0 = 0
.L1405:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r4 = r2
	r4 &= r3
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1416
	r5 = r1
	r5 &= 1
	r5 = -r5
	r9 = r2
	r9 &= r5
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1417
	r3 = r1
	r3 &= 1
	r3 = -r3
	r4 = r2
	r4 &= r3
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1404
	r5 = r1
	r5 &= 1
	r5 = -r5
	r9 = r2
	r9 &= r5
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1404
	r3 = r1
	r3 &= 1
	r3 = -r3
	r4 = r2
	r4 &= r3
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1404
	r5 = r1
	r5 &= 1
	r5 = -r5
	r9 = r2
	r9 &= r5
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1404
	r3 = r1
	r3 &= 1
	r3 = -r3
	r4 = r2
	r4 &= r3
	r0 += r4
	r2 += r2
	r1 >>= 1
	if r1 == 0 goto .L1404
	r5 = r1
	r5 &= 1
	r5 = -r5
	r9 = r2
	r9 &= r5
	r0 += r9
	r2 += r2
	r1 >>= 1
	if r1 != 0 goto .L1405
	goto .L1404
.L1417:
	exit
.L1416:
	exit
.L1406:
	r0 = 0
.L1404:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r4 = 1
	if r1 < r2 goto .L1420
	r9 = 32
	r4 = 1
.L1419:
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1420
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1420
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1420
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1420
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1420
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1420
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1420
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1420
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1420
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1420
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1420
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1420
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1420
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1420
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1420
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1420
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1419
.L1420:
	r0 = 0
	if r4 != r0 goto .L1422
.L1423:
	if r3 != 0 goto .L1453
.L1426:
	exit
.L1425:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1423
.L1422:
	if r2 >= r1 goto .L1425
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
	goto .L1425
.L1453:
	r0 = r1
	goto .L1426
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r2 = r1
	r2 s>>= 56
	r1 s>>= 63
	r0 = r1
	r0 ^= r2
	if r1 == r2 goto .L1456
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
.L1456:
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
	r1 = r2
	r1 ^= r0
	if r2 == r0 goto .L1459
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1459:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1463
	r0 = 0
.L1462:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	if r1 == 0 goto .L1469
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1470
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1461
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 != 0 goto .L1462
.L1461:
	exit
.L1470:
	exit
.L1469:
	exit
.L1463:
	r0 = 0
	goto .L1461
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
	if r2 >= r1 goto .L1472
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1472
	if r3 == 0 goto .L1566
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1478
	if r4 == 1 goto .L1557
	if r4 == 2 goto .L1558
	if r4 == 3 goto .L1559
	if r4 == 4 goto .L1560
	if r4 == 5 goto .L1561
	if r4 == 6 goto .L1562
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
	r3 += -1
.L1562:
	r4 = r2
	r4 += r3
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r3 += -1
.L1561:
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r3 += -1
.L1560:
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r3 += -1
.L1559:
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
	r3 += -1
.L1558:
	r4 = r2
	r4 += r3
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r3 += -1
.L1557:
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r3 += -1
	if r3 == -1 goto .L1567
.L1478:
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r3
	r9 += -1
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r3 = r9
	r3 += -1
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -2
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -3
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -4
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -5
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -6
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -7
	if r9 != 6 goto .L1478
.L1471:
	exit
.L1566:
	exit
.L1472:
	if r6 == 0 goto .L1475
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
	if r5 == 0 goto .L1476
	if r5 == 1 goto .L1545
	if r5 == 2 goto .L1546
	if r5 == 3 goto .L1547
	if r5 == 4 goto .L1548
	if r5 == 5 goto .L1549
	if r5 == 6 goto .L1550
	r5 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r5
	r0 += 8
	r4 += 8
.L1550:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1549:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
.L1548:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
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
	if r0 == r6 goto .L1475
.L1476:
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
	if r0 != r6 goto .L1476
.L1475:
	if r9 > r3 goto .L1471
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r3 += -1
	r3 -= r9
	r3 = r3;r3 &= 0xffffffff
	r2 += r9
	r2 += r3
	r9 = r0
	r9 ^= -1
	r9 += r2
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L1477
	if r9 == 1 goto .L1551
	if r9 == 2 goto .L1552
	if r9 == 3 goto .L1553
	if r9 == 4 goto .L1554
	if r9 == 5 goto .L1555
	if r9 == 6 goto .L1556
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1556:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1555:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1554:
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
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1568
.L1477:
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
	if r0 != r2 goto .L1477
	exit
.L1568:
	exit
.L1567:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r2 >= r1 goto .L1570
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1570
	if r3 == 0 goto .L1634
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1575
	if r4 == 1 goto .L1626
	if r4 == 2 goto .L1627
	if r4 == 3 goto .L1628
	if r4 == 4 goto .L1629
	if r4 == 5 goto .L1630
	if r4 == 6 goto .L1631
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
	r3 += -1
.L1631:
	r4 = r2
	r4 += r3
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r3 += -1
.L1630:
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r3 += -1
.L1629:
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r3 += -1
.L1628:
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
	r3 += -1
.L1627:
	r4 = r2
	r4 += r3
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r3 += -1
.L1626:
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r3 += -1
	if r3 == -1 goto .L1635
.L1575:
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r3
	r9 += -1
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r3 = r9
	r3 += -1
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -2
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -3
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -4
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -5
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -6
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -7
	if r9 != 6 goto .L1575
.L1569:
	exit
.L1634:
	exit
.L1570:
	if r9 == 0 goto .L1573
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
	if r5 == 0 goto .L1574
	if r5 == 1 goto .L1620
	if r5 == 2 goto .L1621
	if r5 == 3 goto .L1622
	if r5 == 4 goto .L1623
	if r5 == 5 goto .L1624
	if r5 == 6 goto .L1625
	r5 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r5
	r0 += 2
	r4 += 2
.L1625:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1624:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
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
	if r0 == r9 goto .L1573
.L1574:
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
	if r0 != r9 goto .L1574
.L1573:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1569
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1635:
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
	if r2 >= r1 goto .L1637
	r0 = r2
	r0 += r3
	if r1 >= r0 goto .L1637
	if r3 == 0 goto .L1731
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r4 = r3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1643
	if r4 == 1 goto .L1722
	if r4 == 2 goto .L1723
	if r4 == 3 goto .L1724
	if r4 == 4 goto .L1725
	if r4 == 5 goto .L1726
	if r4 == 6 goto .L1727
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
	r3 += -1
.L1727:
	r4 = r2
	r4 += r3
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r3 += -1
.L1726:
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r3 += -1
.L1725:
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r3 += -1
.L1724:
	r5 = r2
	r5 += r3
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r9+0) = r0
	r3 += -1
.L1723:
	r4 = r2
	r4 += r3
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r9
	r3 += -1
.L1722:
	r4 = r2
	r4 += r3
	r0 = r1
	r0 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r3 += -1
	if r3 == -1 goto .L1732
.L1643:
	r9 = r2
	r9 += r3
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r9 = r3
	r9 += -1
	r5 = r2
	r5 += r9
	r3 = r1
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r3 = r9
	r3 += -1
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -2
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -3
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -4
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -5
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -6
	r5 = r2
	r5 += r3
	r4 = r1
	r4 += r3
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
	r3 = r9
	r3 += -7
	if r9 != 6 goto .L1643
.L1636:
	exit
.L1731:
	exit
.L1637:
	if r6 == 0 goto .L1640
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
	if r5 == 0 goto .L1641
	if r5 == 1 goto .L1710
	if r5 == 2 goto .L1711
	if r5 == 3 goto .L1712
	if r5 == 4 goto .L1713
	if r5 == 5 goto .L1714
	if r5 == 6 goto .L1715
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r4 += 4
.L1715:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r5
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
	if r0 == r6 goto .L1640
.L1641:
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
	if r0 != r6 goto .L1641
.L1640:
	if r9 > r3 goto .L1636
	r0 = r2
	r0 += r9
	r1 += r9
	r2 += 1
	r3 += -1
	r3 -= r9
	r3 = r3;r3 &= 0xffffffff
	r2 += r9
	r2 += r3
	r9 = r0
	r9 ^= -1
	r9 += r2
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L1642
	if r9 == 1 goto .L1716
	if r9 == 2 goto .L1717
	if r9 == 3 goto .L1718
	if r9 == 4 goto .L1719
	if r9 == 5 goto .L1720
	if r9 == 6 goto .L1721
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1721:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1720:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
.L1719:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r9
	r0 += 1
	r1 += 1
.L1718:
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r4
	r0 += 1
	r1 += 1
.L1717:
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r1 += 1
.L1716:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r1+0) = r3
	r0 += 1
	r1 += 1
	if r0 == r2 goto .L1733
.L1642:
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
	if r0 != r2 goto .L1642
	exit
.L1733:
	exit
.L1732:
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
	r0 = r1
	r0 >>= 15
	if r0 != 0 goto .L1742
	r2 = r1
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1743
	r3 = r1
	r3 >>= 13
	r3 &= 1
	if r3 != 0 goto .L1744
	r4 = r1
	r4 >>= 12
	r4 &= 1
	if r4 != 0 goto .L1745
	r5 = r1
	r5 >>= 11
	r5 &= 1
	if r5 != 0 goto .L1746
	r9 = r1
	r9 >>= 10
	r9 &= 1
	if r9 != 0 goto .L1747
	r0 = r1
	r0 >>= 9
	r0 &= 1
	if r0 != 0 goto .L1748
	r2 = r1
	r2 >>= 8
	r2 &= 1
	if r2 != 0 goto .L1749
	r3 = r1
	r3 >>= 7
	r3 &= 1
	if r3 != 0 goto .L1750
	r4 = r1
	r4 >>= 6
	r4 &= 1
	if r4 != 0 goto .L1751
	r5 = r1
	r5 >>= 5
	r5 &= 1
	if r5 != 0 goto .L1752
	r9 = r1
	r9 >>= 4
	r9 &= 1
	if r9 != 0 goto .L1753
	r0 = r1
	r0 >>= 3
	r0 &= 1
	if r0 != 0 goto .L1754
	r2 = r1
	r2 >>= 2
	r2 &= 1
	if r2 != 0 goto .L1755
	r3 = r1
	r3 >>= 1
	r3 &= 1
	if r3 != 0 goto .L1756
	r1 &= 1
	r0 = 16
	r0 -= r1
	exit
.L1742:
	r0 = 0
	exit
.L1743:
	r0 = 1
	exit
.L1744:
	r0 = 2
	exit
.L1745:
	r0 = 3
	exit
.L1746:
	r0 = 4
	exit
.L1747:
	r0 = 5
	exit
.L1748:
	r0 = 6
	exit
.L1749:
	r0 = 7
	exit
.L1750:
	r0 = 8
	exit
.L1751:
	r0 = 9
	exit
.L1752:
	r0 = 10
	exit
.L1753:
	r0 = 11
	exit
.L1754:
	r0 = 12
	exit
.L1755:
	r0 = 13
	exit
.L1756:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1759
	r1 = r0
	r1 >>= 1
	r1 &= 1
	if r1 != 0 goto .L1760
	r2 = r0
	r2 >>= 2
	r2 &= 1
	if r2 != 0 goto .L1761
	r3 = r0
	r3 >>= 3
	r3 &= 1
	if r3 != 0 goto .L1762
	r4 = r0
	r4 >>= 4
	r4 &= 1
	if r4 != 0 goto .L1763
	r5 = r0
	r5 >>= 5
	r5 &= 1
	if r5 != 0 goto .L1764
	r9 = r0
	r9 >>= 6
	r9 &= 1
	if r9 != 0 goto .L1765
	r1 = r0
	r1 >>= 7
	r1 &= 1
	if r1 != 0 goto .L1766
	r2 = r0
	r2 >>= 8
	r2 &= 1
	if r2 != 0 goto .L1767
	r3 = r0
	r3 >>= 9
	r3 &= 1
	if r3 != 0 goto .L1768
	r4 = r0
	r4 >>= 10
	r4 &= 1
	if r4 != 0 goto .L1769
	r5 = r0
	r5 >>= 11
	r5 &= 1
	if r5 != 0 goto .L1770
	r9 = r0
	r9 >>= 12
	r9 &= 1
	if r9 != 0 goto .L1771
	r1 = r0
	r1 >>= 13
	r1 &= 1
	if r1 != 0 goto .L1772
	r2 = r0
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1773
	r0 >>= 15
	r3 = 16
	r3 -= r0
	r0 = r3
	r0 <<= 32
	r0 s>>= 32
	exit
.L1759:
	r0 = 0
	exit
.L1760:
	r0 = 1
	exit
.L1761:
	r0 = 2
	exit
.L1762:
	r0 = 3
	exit
.L1763:
	r0 = 4
	exit
.L1764:
	r0 = 5
	exit
.L1765:
	r0 = 6
	exit
.L1766:
	r0 = 7
	exit
.L1767:
	r0 = 8
	exit
.L1768:
	r0 = 9
	exit
.L1769:
	r0 = 10
	exit
.L1770:
	r0 = 11
	exit
.L1771:
	r0 = 12
	exit
.L1772:
	r0 = 13
	exit
.L1773:
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
	if r0 s>= 0 goto .L1780
	r1 = r6
	call	__fixsfdi
	exit
.L1780:
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
	r1 &= 1
	r2 = r0
	r2 >>= 1
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 >>= 2
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 >>= 3
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 >>= 4
	r5 &= 1
	r1 += r5
	r9 = r0
	r9 >>= 5
	r9 &= 1
	r1 += r9
	r2 = r0
	r2 >>= 6
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 >>= 7
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 >>= 8
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 >>= 9
	r5 &= 1
	r1 += r5
	r9 = r0
	r9 >>= 10
	r9 &= 1
	r1 += r9
	r2 = r0
	r2 >>= 11
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 >>= 12
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 >>= 13
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 >>= 14
	r5 &= 1
	r1 += r5
	r0 >>= 15
	r0 += r1
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	r2 = r0
	r2 >>= 1
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 >>= 2
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 >>= 3
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 >>= 4
	r5 &= 1
	r1 += r5
	r9 = r0
	r9 >>= 5
	r9 &= 1
	r1 += r9
	r2 = r0
	r2 >>= 6
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 >>= 7
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 >>= 8
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 >>= 9
	r5 &= 1
	r1 += r5
	r9 = r0
	r9 >>= 10
	r9 &= 1
	r1 += r9
	r2 = r0
	r2 >>= 11
	r2 &= 1
	r1 += r2
	r3 = r0
	r3 >>= 12
	r3 &= 1
	r1 += r3
	r4 = r0
	r4 >>= 13
	r4 &= 1
	r1 += r4
	r5 = r0
	r5 >>= 14
	r5 &= 1
	r1 += r5
	r0 >>= 15
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r1 = r1;r1 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	if r1 == 0 goto .L1786
	r0 = 0
.L1785:
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	if r1 == 0 goto .L1792
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	if r1 == 0 goto .L1793
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	if r1 == 0 goto .L1784
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	if r1 != 0 goto .L1785
.L1784:
	exit
.L1793:
	exit
.L1792:
	exit
.L1786:
	r0 = 0
	goto .L1784
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r4 = r1;r4 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r4 == 0 goto .L1797
	if r2 == 0 goto .L1798
	r0 = 0
.L1796:
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r4 += r4
	r1 = r4;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1803
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1804
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r0 += r9
	r0 = r0;r0 &= 0xffffffff
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	if r2 == 0 goto .L1795
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	if r2 != 0 goto .L1796
.L1795:
	exit
.L1804:
	exit
.L1803:
	exit
.L1797:
	r0 = 0
	exit
.L1798:
	r0 = 0
	goto .L1795
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	3
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L1807
	r9 = 32
	r4 = 1
.L1806:
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1807
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1807
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1807
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1807
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1807
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1807
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1807
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1807
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1807
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1807
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1807
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1807
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1807
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1807
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1807
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r1 <= r2 goto .L1807
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if r9 != 0 goto .L1806
.L1807:
	r0 = 0
	if r4 != r0 goto .L1809
.L1810:
	if r3 != 0 goto .L1840
.L1813:
	exit
.L1812:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1810
.L1809:
	if r2 >= r1 goto .L1812
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
	goto .L1812
.L1840:
	r0 = r1
	goto .L1813
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1844
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
	if r0 s<= 0 goto .L1849
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
	r4 = r2
	r4 s>>= 32
	if r2 s< 0 goto .L1870
	r2 = 0
.L1854:
	if r4 == 0 goto .L1859
	r3 = r4
	r3 &= 1
	r3 = -r3
	r0 = r1
	r0 &= r3
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	if r4 == 0 goto .L1855
	r3 = 31
	r3 &= 0xff
.L1856:
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
	if r4 == 0 goto .L1855
	r3 += -1
	r3 &= 0xff
	if r3 == 0 goto .L1855
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
	if r4 == 0 goto .L1855
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
	if r4 == 0 goto .L1855
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
	if r4 == 0 goto .L1855
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
	if r4 == 0 goto .L1855
	r3 += -1
	r3 &= 0xff
	goto .L1856
.L1870:
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r2 = 1
	goto .L1854
.L1859:
	r0 = 0
.L1855:
	if r2 == 0 goto .L1857
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1857:
	exit
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1876
	r6 = 0
.L1872:
	if r2 s< 0 goto .L1877
.L1873:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1874
	r0 = -r0
.L1874:
	exit
.L1876:
	r1 = -r1
	r6 = 1
	goto .L1872
.L1877:
	r2 = -r2
	r6 ^= 1
	goto .L1873
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L1883
	r6 = 0
.L1879:
	r2 = r0
	if r0 s< 0 goto .L1884
.L1880:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1881
	r0 = -r0
.L1881:
	exit
.L1883:
	r1 = -r1
	r6 = 1
	goto .L1879
.L1884:
	r0 = -r0
	r2 = r0
	goto .L1880
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r1 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r1 goto .L1905
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1906
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1907
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1908
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1909
	r5 = r2
	r5 <<= 48
	if r5 s<= 0 goto .L1910
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1911
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1912
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1913
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1914
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1915
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1916
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1917
	r5 = r2
	r5 <<= 48
	if r5 s<= 0 goto .L1918
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1919
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1920
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1921
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1922
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1923
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1924
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1925
	r5 = r2
	r5 <<= 48
	if r5 s<= 0 goto .L1926
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1927
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1928
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1929
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1930
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1931
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1932
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1933
	r5 = r2
	r5 <<= 48
	if r5 s<= 0 goto .L1934
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1935
	r9 = r2
	r9 <<= 48
	r4 = 32768
	if r9 s< 0 goto .L1886
	r4 = 0
	r2 = r4
.L1886:
	if r4 == 0 goto .L1937
	if r2 >= r1 goto .L1938
	r1 -= r2
	r1 &= 0xffff
	r0 = r4
.L1888:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 > r1 goto .L1889
	r1 -= r2
	r1 &= 0xffff
	r5 = r4
	r5 |= r0
	r0 = r5;r0 &= 0xffff
.L1889:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1890
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1890:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1891
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1891:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1892
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1892:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1893
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1893:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1894
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1894:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1895
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1895:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1896
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1896:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1897
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1897:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1898
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1898:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1899
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1899:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1900
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1900:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1901
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1901:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1902
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1902:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1887
	if r2 >= r1 goto .L1887
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
	goto .L1887
.L1905:
	r4 = 1
	goto .L1886
.L1906:
	r4 = 1
	goto .L1886
.L1907:
	r4 = 2
	goto .L1886
.L1908:
	r4 = 2
	goto .L1886
.L1909:
	r4 = 4
	goto .L1886
.L1910:
	r4 = 4
	goto .L1886
.L1911:
	r4 = 8
	goto .L1886
.L1912:
	r4 = 8
	goto .L1886
.L1913:
	r4 = 16
	goto .L1886
.L1914:
	r4 = 16
	goto .L1886
.L1915:
	r4 = 32
	goto .L1886
.L1916:
	r4 = 32
	goto .L1886
.L1917:
	r4 = 64
	goto .L1886
.L1918:
	r4 = 64
	goto .L1886
.L1919:
	r4 = 128
	goto .L1886
.L1920:
	r4 = 128
	goto .L1886
.L1921:
	r4 = 256
	goto .L1886
.L1922:
	r4 = 256
	goto .L1886
.L1923:
	r4 = 512
	goto .L1886
.L1924:
	r4 = 512
	goto .L1886
.L1925:
	r4 = 1024
	goto .L1886
.L1926:
	r4 = 1024
	goto .L1886
.L1927:
	r4 = 2048
	goto .L1886
.L1928:
	r4 = 2048
	goto .L1886
.L1929:
	r4 = 4096
	goto .L1886
.L1930:
	r4 = 4096
	goto .L1886
.L1931:
	r4 = 8192
	goto .L1886
.L1932:
	r4 = 8192
	goto .L1886
.L1933:
	r4 = 16384
	goto .L1886
.L1934:
	r4 = 16384
	goto .L1886
.L1935:
	r4 = 32768
	goto .L1886
.L1938:
	r0 = 0
	goto .L1888
.L1937:
	r0 = 0
.L1887:
	if r3 != 0 goto .L1940
.L1904:
	exit
.L1940:
	r0 = r1
	goto .L1904
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r4 = 1
	if r1 < r2 goto .L1943
	r0 = 64
	r4 = 1
	r5 = 2147483648 ll
.L1942:
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1943
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L1943
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1943
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L1943
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1943
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L1943
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1943
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L1943
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1943
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L1943
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1943
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L1943
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1943
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L1943
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1943
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L1943
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L1942
.L1943:
	r0 = 0
	if r4 != r0 goto .L1945
.L1946:
	if r3 != 0 goto .L1976
.L1949:
	exit
.L1948:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1946
.L1945:
	if r2 >= r1 goto .L1948
	r1 -= r2
	r0 |= r4
	goto .L1948
.L1976:
	r0 = r1
	goto .L1949
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1978
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r0 = r2;r0 &= 0xffffffff
	r1 <<= r0
	r1 <<= 32
.L1979:
	r0 = r1
	exit
.L1978:
	if r2 == 0 goto .L1981
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
	goto .L1979
.L1981:
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
	if r0 == 0 goto .L1983
	*(u64 *) (r10+-32) = 0
	r3 += -64
	r4 = r3;r4 &= 0xffffffff
	r0 = r1
	r0 <<= r4
	*(u64 *) (r10+-24) = r0
.L1984:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1983:
	if r3 == 0 goto .L1986
	r4 = *(u64 *) (r10+-16)
	r1 = r3;r1 &= 0xffffffff
	r2 = r4
	r2 <<= r1
	*(u64 *) (r10+-32) = r2
	r5 = *(u64 *) (r10+-8)
	r5 <<= r1
	r9 = 64
	r9 -= r3
	r3 = r9;r3 &= 0xffffffff
	r4 >>= r3
	r4 |= r5
	*(u64 *) (r10+-24) = r4
	goto .L1984
.L1986:
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
	if r0 == 0 goto .L1988
	r0 = r1
	r0 s>>= 63
	r1 s>>= 32
	r2 += -32
	r2 <<= 32
	r2 s>>= 32
	r1 s>>= r2
	r5 = r1;r5 &= 0xffffffff
	r0 <<= 32
	r0 |= r5
	exit
.L1988:
	if r2 == 0 goto .L1991
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
.L1991:
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
	if r0 == 0 goto .L1993
	r0 = r2
	r2 s>>= 63
	*(u64 *) (r10+-24) = r2
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	*(u64 *) (r10+-32) = r0
.L1994:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1993:
	if r3 == 0 goto .L1996
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
	goto .L1994
.L1996:
	r0 = r1
	r1 = r2
	exit
	.size	__ashrti3, .-__ashrti3
	.align	3
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	r7 = r1
	r7 >>= 56
	r6 = r1
	r6 >>= 40
	r6 &= 65280
	r9 = r1
	r9 >>= 24
	r9 &= 16711680
	r5 = r1
	r5 >>= 8
	r0 = 4278190080 ll
	r5 &= r0
	r4 = r1
	r4 <<= 8
	r2 = 1095216660480 ll
	r4 &= r2
	r3 = r1
	r3 <<= 24
	r0 = 280375465082880 ll
	r3 &= r0
	r2 = r1
	r2 <<= 40
	r0 = 71776119061217280 ll
	r2 &= r0
	r0 = r1
	r0 <<= 56
	r0 |= r7
	r0 |= r6
	r0 |= r9
	r0 |= r5
	r0 |= r4
	r0 |= r3
	r0 |= r2
	exit
	.size	__bswapdi2, .-__bswapdi2
	.align	3
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	r1 = r1;r1 &= 0xffffffff
	r4 = r1
	r4 >>= 24
	r3 = r1
	r3 >>= 8
	r3 &= 65280
	r2 = r1
	r2 <<= 8
	r2 &= 16711680
	r1 <<= 24
	r0 = r1;r0 &= 0xffffffff
	r0 |= r4
	r0 |= r3
	r0 |= r2
	exit
	.size	__bswapsi2, .-__bswapsi2
	.align	3
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	r1 = r1;r1 &= 0xffffffff
	r3 = 1
	if r1 <= 65534 goto .L2000
	r3 = 0
.L2000:
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
	r4 = r0;r4 &= 0xffffffff
	r5 += r1
	r0 &= 12
	r0 += -1
	r0 >>= 63
	r0 += r0
	r9 = 2
	r1 = r9
	r1 -= r0
	r3 = r1;r3 &= 0xffffffff
	r4 >>= r3
	r0 += r5
	r5 = r4
	r5 &= r9
	r5 >>= 1
	r5 ^= 1
	r9 -= r4
	r2 = r9;r2 &= 0xffffffff
	r5 = -r5
	r5 &= r2
	r0 += r5
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r1 = 1
	if r2 == 0 goto .L2002
	r1 = 0
.L2002:
	r1 &= 1
	r6 = r1
	r6 = -r6
	r1 += -1
	r0 = *(u64 *) (r10+-8)
	r1 &= r0
	r2 = *(u64 *) (r10+-16)
	r3 = r6
	r3 &= r2
	r1 |= r3
	call	__clzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 &= 64
	r0 += r6
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzti2, .-__clzti2
	.align	3
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	r0 = r1
	r0 s>>= 32
	r3 = r2
	r3 s>>= 32
	if r3 s>= r0 goto .L2005
	r4 = r2
	r4 s>>= 32
	r5 = r1
	r5 s>>= 32
	if r5 s> r4 goto .L2006
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2007
	if r1 > r2 goto .L2008
	r0 = 1
	exit
.L2005:
	r0 = 0
	exit
.L2006:
	r0 = 2
	exit
.L2007:
	r0 = 0
	exit
.L2008:
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
	*(u64 *) (r10+-16) = r1
	if r4 s>= r2 goto .L2012
	if r2 s> r4 goto .L2013
	r2 = *(u64 *) (r10+-16)
	if r3 >= r2 goto .L2014
	if r2 > r3 goto .L2015
	r0 = 1
	exit
.L2012:
	r0 = 0
	exit
.L2013:
	r0 = 2
	exit
.L2014:
	r0 = 0
	exit
.L2015:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r0 = r1;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffff
	r3 += -1
	r3 >>= 63
	r3 <<= 4
	r0 >>= r3
	r2 = r0;r2 &= 0xffffffff
	r0 &= 0xff
	r0 += -1
	r0 >>= 63
	r0 <<= 3
	r2 >>= r0
	r1 = r2;r1 &= 0xffffffff
	r0 += r3
	r2 &= 15
	r2 += -1
	r2 >>= 63
	r2 <<= 2
	r1 >>= r2
	r4 = r1;r4 &= 0xffffffff
	r0 += r2
	r1 &= 3
	r1 += -1
	r1 >>= 63
	r1 <<= 1
	r5 = r4
	r5 >>= r1
	r5 &= 3
	r0 += r1
	r2 = r5
	r2 ^= -1
	r2 &= 1
	r5 >>= 1
	r9 = 2
	r9 -= r5
	r3 = r9;r3 &= 0xffffffff
	r2 = -r2
	r3 &= r2
	r0 += r3
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r6 = 1
	if r1 == 0 goto .L2018
	r6 = 0
.L2018:
	r6 &= 1
	r6 = -r6
	r1 = *(u64 *) (r10+-8)
	r0 = r6
	r0 &= r1
	r1 = r6
	r1 ^= -1
	r2 = *(u64 *) (r10+-16)
	r1 &= r2
	r1 |= r0
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r6 &= 64
	r0 += r6
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	if r1 != 0 goto .L2020
	if r2 == 0 goto .L2022
	r1 = r2
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L2020:
	r1 = *(u64 *) (r10+-16)
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L2022:
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
	if r0 == 0 goto .L2024
	r0 = r1
	r0 >>= 32
	r2 += -32
	r4 = r2;r4 &= 0xffffffff
	r0 >>= r4
	r0 = r0;r0 &= 0xffffffff
	exit
.L2024:
	if r2 == 0 goto .L2027
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
.L2027:
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
	if r0 == 0 goto .L2029
	*(u64 *) (r10+-24) = 0
	r3 += -64
	r4 = r3;r4 &= 0xffffffff
	r0 = r2
	r0 >>= r4
	*(u64 *) (r10+-32) = r0
.L2030:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L2029:
	if r3 == 0 goto .L2032
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
	goto .L2030
.L2032:
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
	r1 &= 0xffff
	r2 &= 0xffff
	r0 = r1
	r0 *= r2
	r9 = r0
	r9 >>= 16
	r3 >>= 16
	r5 = r3
	r5 *= r2
	r5 += r9
	r5 = r5;r5 &= 0xffffffff
	r2 = r0;r2 &= 0xffff
	r0 = r5
	r0 <<= 16
	r0 += r2
	r5 >>= 16
	r2 = 4294967295 ll
	r0 &= r2
	r9 = r0
	r9 >>= 16
	r0 &= 0xffff
	r4 >>= 16
	r1 *= r4
	r1 += r9
	r1 = r1;r1 &= 0xffffffff
	r9 = r1
	r9 <<= 16
	r9 += r0
	r9 = r9;r9 &= 0xffffffff
	r5 <<= 32
	r0 = r5
	r0 |= r9
	r5 >>= 32
	r1 >>= 16
	r1 += r5
	r1 <<= 32
	r0 &= r2
	r0 |= r1
	r1 >>= 32
	r3 *= r4
	r3 += r1
	r3 <<= 32
	r0 &= r2
	r0 |= r3
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
	r5 = 4294967295 ll
	r0 = r1
	r0 &= r5
	r3 = r2
	r3 &= r5
	r9 = r0
	r9 *= r3
	r4 = r9
	r4 >>= 32
	r9 &= r5
	r1 >>= 32
	r6 = r1
	r6 *= r3
	r4 += r6
	r3 = r4
	r3 <<= 32
	r6 = r3
	r6 += r9
	r4 >>= 32
	r3 >>= 32
	r6 &= r5
	r2 >>= 32
	r0 *= r2
	r3 += r0
	r0 = r3
	r0 <<= 32
	r0 += r6
	r3 >>= 32
	r3 += r4
	r1 *= r2
	r1 += r3
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	*(u64 *) (r10+-56) = r1
	r6 = r2
	r8 = r3
	r7 = r4
	r2 = r3
	call	__mulddi3
	r6 *= r8
	r2 = *(u64 *) (r10+-56)
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
	if r1 != 0 goto .L2039
	r0 = 0
.L2039:
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
	r5 += r9
	r2 = r5
	r2 >>= 16
	r2 += r5
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
	if r9 > r0 goto .L2046
	r3 = 0
.L2046:
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
	if r0 >= r4 goto .L2047
	r9 = 0
.L2047:
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
	if r1 >= r2 goto .L2048
	r0 = 0
.L2048:
	r5 += r9
	r0 += r5
	r4 = 1085102592571150095 ll
	r2 &= r4
	r0 &= r4
	r0 += r2
	r9 = r0
	r9 >>= 32
	r0 += r9
	r3 = r0;r3 &= 0xffffffff
	r1 = r3
	r1 >>= 16
	r1 += r3
	r2 = r1;r2 &= 0xffffffff
	r0 = r2
	r0 >>= 8
	r0 += r2
	r0 &= 0xff
	exit
	.size	__popcountti2, .-__popcountti2
	.align	3
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	r6 = r1
	r2 <<= 32
	r7 = r2
	r7 s>>= 32
	r2 >>= 63
	*(u64 *) (r10+-8) = r2
	r8 = 0x3ff0000000000000 ll
	goto .L2052
.L2050:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L2051
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L2052:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L2050
	r2 = r6
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L2050
.L2051:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L2054
	r2 = r8
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	exit
.L2054:
	r0 = r8
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r6 = r1
	r2 <<= 32
	r7 = r2
	r7 s>>= 32
	r2 >>= 63
	*(u64 *) (r10+-8) = r2
	r8 = 0x3f800000 ll
	goto .L2058
.L2056:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L2057
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L2058:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L2056
	r2 = r6
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L2056
.L2057:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L2060
	r2 = r8
	r1 = 0x3f800000 ll
	call	__divsf3
	exit
.L2060:
	r0 = r8
	exit
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r0 = r1
	r0 >>= 32
	r3 = r2
	r3 >>= 32
	if r3 >= r0 goto .L2063
	r4 = r2
	r4 >>= 32
	r5 = r1
	r5 >>= 32
	if r5 > r4 goto .L2064
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L2065
	if r1 > r2 goto .L2066
	r0 = 1
	exit
.L2063:
	r0 = 0
	exit
.L2064:
	r0 = 2
	exit
.L2065:
	r0 = 0
	exit
.L2066:
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
	*(u64 *) (r10+-16) = r1
	if r4 >= r2 goto .L2070
	if r2 > r4 goto .L2071
	r2 = *(u64 *) (r10+-16)
	if r3 >= r2 goto .L2072
	if r2 > r3 goto .L2073
	r0 = 1
	exit
.L2070:
	r0 = 0
	exit
.L2071:
	r0 = 2
	exit
.L2072:
	r0 = 0
	exit
.L2073:
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
