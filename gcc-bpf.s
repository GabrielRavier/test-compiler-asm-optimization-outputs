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
	if r1 <= r2 goto .L5
	r5 = r1
	r2 += r3
	r5 += r3
	if r3 == 0 goto .L6
	r4 = r5
	r4 -= r1
	r4 &= 7
	if r4 == 0 goto .L158
	if r4 == 1 goto .L104
	if r4 == 2 goto .L105
	if r4 == 3 goto .L106
	if r4 == 4 goto .L107
	if r4 == 5 goto .L108
	if r4 == 6 goto .L109
	r2 += -1
	r5 += -1
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r0
.L109:
	r2 += -1
	r5 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r3
.L108:
	r2 += -1
	r5 += -1
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r9
.L107:
	r2 += -1
	r5 += -1
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r4
.L106:
	r2 += -1
	r5 += -1
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r0
.L105:
	r2 += -1
	r5 += -1
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r3
.L104:
	r5 += -1
	r9 = *(u8 *) (r2+-1)
	*(u8 *) (r5+0) = r9
	r2 += -1
	if r1 == r5 goto .L6
.L158:
	r4 = *(u8 *) (r2+-1)
	r2 += -8
	*(u8 *) (r5+-1) = r4
	r0 = *(u8 *) (r2+6)
	*(u8 *) (r5+-2) = r0
	r3 = *(u8 *) (r2+5)
	*(u8 *) (r5+-3) = r3
	r9 = *(u8 *) (r2+4)
	r5 += -8
	*(u8 *) (r5+4) = r9
	r4 = *(u8 *) (r2+3)
	*(u8 *) (r5+3) = r4
	r0 = *(u8 *) (r2+2)
	*(u8 *) (r5+2) = r0
	r3 = *(u8 *) (r2+1)
	*(u8 *) (r5+1) = r3
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r5+0) = r9
	if r1 != r5 goto .L158
.L6:
	r0 = r1
	exit
.L5:
	if r1 == r2 goto .L6
	if r3 == 0 goto .L6
	r0 = r3
	r0 += -1
	if r0 <= 7 goto .L8
	r5 = r2
	r4 = 1
	r5 |= r1
	r5 &= 7
	if r5 != 0 goto .L164
.L9:
	r4 &= 1
	if w4 == 0 goto .L8
	r9 = r2
	r5 = r1
	r9 += 1
	r0 = 1
	r5 -= r9
	if r5 <= 6 goto .L165
.L10:
	r0 &= 1
	if w0 == 0 goto .L8
	r5 = r3
	r9 = r2
	r5 &= -8
	r0 = r1
	r4 = r5
	r9 += r5
	r4 += -8
	r4 >>= 3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L160
	if r4 == 1 goto .L110
	if r4 == 2 goto .L111
	if r4 == 3 goto .L112
	if r4 == 4 goto .L113
	if r4 == 5 goto .L114
	if r4 != 6 goto .L166
.L115:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L114:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L113:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L112:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L111:
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r2 += 8
.L110:
	r4 = *(u64 *) (r2+0)
	*(u64 *) (r0+0) = r4
	r2 += 8
	r0 += 8
	if r9 == r2 goto .L157
.L160:
	r4 = *(u64 *) (r2+0)
	*(u64 *) (r0+0) = r4
	r4 = *(u64 *) (r2+8)
	*(u64 *) (r0+8) = r4
	r4 = *(u64 *) (r2+16)
	*(u64 *) (r0+16) = r4
	r4 = *(u64 *) (r2+24)
	*(u64 *) (r0+24) = r4
	r4 = *(u64 *) (r2+32)
	*(u64 *) (r0+32) = r4
	r4 = *(u64 *) (r2+40)
	*(u64 *) (r0+40) = r4
	r4 = *(u64 *) (r2+48)
	*(u64 *) (r0+48) = r4
	r4 = *(u64 *) (r2+56)
	*(u64 *) (r0+56) = r4
	r2 += 64
	r0 += 64
	if r9 != r2 goto .L160
.L157:
	r0 = r1
	r2 = r3
	r0 += r5
	r2 -= r5
	if r3 == r5 goto .L6
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L6
	r5 = *(u8 *) (r9+1)
	*(u8 *) (r0+1) = r5
	if r2 == 2 goto .L6
	r4 = *(u8 *) (r9+2)
	*(u8 *) (r0+2) = r4
	if r2 == 3 goto .L6
	r3 = *(u8 *) (r9+3)
	*(u8 *) (r0+3) = r3
	if r2 == 4 goto .L6
	r5 = *(u8 *) (r9+4)
	*(u8 *) (r0+4) = r5
	if r2 == 5 goto .L6
	r4 = *(u8 *) (r9+5)
	*(u8 *) (r0+5) = r4
	if r2 == 6 goto .L6
	r9 = *(u8 *) (r9+6)
	*(u8 *) (r0+6) = r9
	goto .L6
.L164:
	r4 = 0
	goto .L9
.L165:
	r0 = 0
	goto .L10
.L8:
	r5 = r3
	r4 = r1
	r5 += r1
	r3 &= 7
	if r3 == 0 goto .L159
	if r3 == 1 goto .L116
	if r3 == 2 goto .L117
	if r3 == 3 goto .L118
	if r3 == 4 goto .L119
	if r3 == 5 goto .L120
	if r3 == 6 goto .L121
	r0 = *(u8 *) (r2+0)
	r4 += 1
	*(u8 *) (r1+0) = r0
	r2 += 1
.L121:
	r3 = *(u8 *) (r2+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r2 += 1
.L120:
	r9 = *(u8 *) (r2+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r2 += 1
.L119:
	r0 = *(u8 *) (r2+0)
	r4 += 1
	*(u8 *) (r4+-1) = r0
	r2 += 1
.L118:
	r3 = *(u8 *) (r2+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r2 += 1
.L117:
	r9 = *(u8 *) (r2+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r2 += 1
.L116:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r4+0) = r0
	r2 += 1
	r4 += 1
	if r5 == r4 goto .L6
.L159:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r4+0) = r3
	r9 = *(u8 *) (r2+1)
	*(u8 *) (r4+1) = r9
	r0 = *(u8 *) (r2+2)
	*(u8 *) (r4+2) = r0
	r3 = *(u8 *) (r2+3)
	*(u8 *) (r4+3) = r3
	r9 = *(u8 *) (r2+4)
	*(u8 *) (r4+4) = r9
	r0 = *(u8 *) (r2+5)
	*(u8 *) (r4+5) = r0
	r3 = *(u8 *) (r2+6)
	*(u8 *) (r4+6) = r3
	r9 = *(u8 *) (r2+7)
	*(u8 *) (r4+7) = r9
	r2 += 8
	r4 += 8
	if r5 != r4 goto .L159
	goto .L6
.L166:
	r0 = *(u64 *) (r2+0)
	r2 += 8
	*(u64 *) (r1+0) = r0
	r0 = r1
	r0 += 8
	goto .L115
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	if r4 == 0 goto .L170
	r5 = r4
	r0 = r4
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L228
	if r0 == 1 goto .L211
	if r0 == 2 goto .L212
	if r0 == 3 goto .L213
	if r0 == 4 goto .L214
	if r0 == 5 goto .L215
	if r0 != 6 goto .L230
.L216:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if w9 == w3 goto .L227
	r4 += -1
	r2 += 1
	r1 += 1
.L215:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if w5 == w3 goto .L227
	r4 += -1
	r2 += 1
	r1 += 1
.L214:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if w0 == w3 goto .L227
	r4 += -1
	r2 += 1
	r1 += 1
.L213:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if w9 == w3 goto .L227
	r4 += -1
	r2 += 1
	r1 += 1
.L212:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if w5 == w3 goto .L227
	r4 += -1
	r2 += 1
	r1 += 1
.L211:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if w0 == w3 goto .L227
	r4 += -1
	r2 += 1
	r1 += 1
	if r4 == 0 goto .L170
.L228:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if w9 == w3 goto .L227
	r1 += 1
	r5 = *(u8 *) (r2+1)
	*(u8 *) (r1+0) = r5
	r0 = r1
	if w5 == w3 goto .L227
	r9 = *(u8 *) (r2+2)
	*(u8 *) (r1+1) = r9
	r1 += 1
	if w9 == w3 goto .L227
	r5 = *(u8 *) (r2+3)
	*(u8 *) (r0+2) = r5
	r1 = r0
	r1 += 2
	if w5 == w3 goto .L227
	r9 = *(u8 *) (r2+4)
	*(u8 *) (r0+3) = r9
	r1 += 1
	if w9 == w3 goto .L227
	r5 = *(u8 *) (r2+5)
	*(u8 *) (r0+4) = r5
	r1 += 1
	if w5 == w3 goto .L227
	r9 = *(u8 *) (r2+6)
	*(u8 *) (r0+5) = r9
	r1 += 1
	if w9 == w3 goto .L227
	r5 = *(u8 *) (r2+7)
	*(u8 *) (r0+6) = r5
	r1 += 1
	if w5 == w3 goto .L227
	r0 += 7
	r4 += -8
	r2 += 8
	r1 = r0
	if r4 != 0 goto .L228
.L170:
	r0 = 0
	exit
.L227:
	r0 = r1
	r0 += 1
	exit
.L230:
	r4 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r4
	if w4 == w3 goto .L227
	r4 = r5
	r2 += 1
	r1 += 1
	goto .L216
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	if r3 == 0 goto .L235
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L290
	if r0 == 1 goto .L272
	if r0 == 2 goto .L273
	if r0 == 3 goto .L274
	if r0 == 4 goto .L275
	if r0 == 5 goto .L276
	if r0 != 6 goto .L292
.L277:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L289
	r1 += 1
	r3 += -1
.L276:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L289
	r1 += 1
	r3 += -1
.L275:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L289
	r1 += 1
	r3 += -1
.L274:
	r0 = *(u8 *) (r1+0)
	if r0 == r2 goto .L289
	r1 += 1
	r3 += -1
.L273:
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L289
	r1 += 1
	r3 += -1
.L272:
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L289
	r1 += 1
	r3 += -1
	if r3 == 0 goto .L235
.L290:
	r4 = *(u8 *) (r1+0)
	if r4 == r2 goto .L289
	r1 += 1
	r0 = r1
	r5 = *(u8 *) (r1+0)
	if r5 == r2 goto .L289
	r1 += 1
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L289
	r1 = r0
	r4 = *(u8 *) (r0+2)
	r1 += 2
	if r4 == r2 goto .L289
	r1 += 1
	r5 = *(u8 *) (r0+3)
	if r5 == r2 goto .L289
	r1 += 1
	r9 = *(u8 *) (r0+4)
	if r9 == r2 goto .L289
	r1 += 1
	r4 = *(u8 *) (r0+5)
	if r4 == r2 goto .L289
	r1 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == r2 goto .L289
	r0 += 7
	r3 += -8
	r1 = r0
	if r3 != 0 goto .L290
.L235:
	r0 = 0
	exit
.L289:
	r0 = r1
	exit
.L292:
	r3 = *(u8 *) (r1+0)
	if r3 == r2 goto .L289
	r1 += 1
	r3 = r4
	goto .L277
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	if r3 == 0 goto .L298
	r5 = r3
	r0 = r3
	r5 += -1
	r0 &= 7
	if r0 == 0 goto .L354
	if r0 == 1 goto .L335
	if r0 == 2 goto .L336
	if r0 == 3 goto .L337
	if r0 == 4 goto .L338
	if r0 == 5 goto .L339
	if r0 != 6 goto .L356
.L340:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r0 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L339:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r0 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L338:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r0 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L337:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r0 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L336:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r0 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L335:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r0 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L298
.L354:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r0 goto .L353
	r0 = *(u8 *) (r1+1)
	r4 = *(u8 *) (r2+1)
	if r4 != r0 goto .L353
	r0 = *(u8 *) (r1+2)
	r4 = *(u8 *) (r2+2)
	if r4 != r0 goto .L353
	r0 = *(u8 *) (r1+3)
	r4 = *(u8 *) (r2+3)
	if r4 != r0 goto .L353
	r0 = *(u8 *) (r1+4)
	r4 = *(u8 *) (r2+4)
	if r4 != r0 goto .L353
	r0 = *(u8 *) (r1+5)
	r4 = *(u8 *) (r2+5)
	if r4 != r0 goto .L353
	r0 = *(u8 *) (r1+6)
	r4 = *(u8 *) (r2+6)
	if r4 != r0 goto .L353
	r0 = *(u8 *) (r1+7)
	r4 = *(u8 *) (r2+7)
	if r4 != r0 goto .L353
	r3 += -8
	r1 += 8
	r2 += 8
	if r3 != 0 goto .L354
.L298:
	r0 = 0
	exit
.L353:
	r0 -= r4
	exit
.L356:
	r0 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r0 goto .L353
	r3 = r5
	r1 += 1
	r2 += 1
	goto .L340
	.size	memcmp, .-memcmp
	.align	3
	.global	memrchr
	.type	memrchr, @function
memrchr:
	r3 += -1
	r4 = r1
	r2 &= 0xff
	r4 += -1
	r1 += r3
	r3 = r1
	r3 -= r4
	r3 &= 7
	if r3 == 0 goto .L391
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L357
	if r3 == 1 goto .L391
	if r3 == 2 goto .L372
	if r3 == 3 goto .L370
	if r3 == 4 goto .L368
	if r3 == 5 goto .L366
	if r3 != 6 goto .L393
.L364:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L357
.L366:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L357
.L368:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 == r2 goto .L357
.L370:
	r0 = r1
	r1 += -1
	r3 = *(u8 *) (r0+0)
	if r3 == r2 goto .L357
.L372:
	r0 = r1
	r1 += -1
	r5 = *(u8 *) (r0+0)
	if r5 == r2 goto .L394
.L391:
	if r1 == r4 goto .L395
	r5 = r1
	r0 = r1
	r5 += -1
	r9 = *(u8 *) (r1+0)
	if r9 == r2 goto .L396
	r9 = r1
	r0 = r5
	r9 += -2
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L357
	r5 = r1
	r0 = r9
	r5 += -3
	r3 = *(u8 *) (r9+0)
	if r3 == r2 goto .L357
	r9 += -2
	r0 = r5
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L357
	r5 += -2
	r0 = r9
	r3 = *(u8 *) (r9+0)
	if r3 == r2 goto .L357
	r9 += -2
	r0 = r5
	r3 = *(u8 *) (r5+0)
	if r3 == r2 goto .L357
	r0 = r9
	r5 += -2
	r9 = *(u8 *) (r9+0)
	if r9 == r2 goto .L357
	r0 = r5
	r1 += -8
	r5 = *(u8 *) (r5+0)
	if r5 != r2 goto .L391
	exit
.L395:
	r0 = 0
.L357:
	exit
.L393:
	r0 = r1
	r1 += -1
	r9 = *(u8 *) (r0+0)
	if r9 != r2 goto .L364
	exit
.L396:
	exit
.L394:
	exit
	.size	memrchr, .-memrchr
	.align	3
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	r0 = r1
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L398
.L399:
	r0 += 1
	r4 = *(u8 *) (r2+1)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	r3 = r0
	if r4 == 0 goto .L398
	r5 = *(u8 *) (r2+2)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L398
	r0 = r3
	r9 = *(u8 *) (r2+3)
	r0 += 2
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L398
	r1 = *(u8 *) (r2+4)
	r0 += 1
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L398
	r4 = *(u8 *) (r2+5)
	r0 += 1
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L398
	r3 = *(u8 *) (r2+6)
	r0 += 1
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L398
	r5 = *(u8 *) (r2+7)
	r0 += 1
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	r2 += 8
	if r5 == 0 goto .L398
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 != 0 goto .L399
	exit
.L398:
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
	if r1 != 0 goto .L419
	goto .L418
.L421:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r4 = r3
	r4 s>>= 56
	if r3 == 0 goto .L418
.L419:
	r4 &= 0xff
	if r4 != r2 goto .L421
.L418:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r0 = r1
	r2 s>>= 32
	goto .L428
.L431:
	r0 += 1
	if r3 == 0 goto .L430
.L428:
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if w3 != w2 goto .L431
	exit
.L430:
	r0 = r3
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L442
.L433:
	if r0 == 0 goto .L434
	r1 += 1
	r2 += 1
.L442:
	r0 = *(u8 *) (r1+0)
	r3 = *(u8 *) (r2+0)
	r0 <<= 56
	r3 <<= 56
	r0 s>>= 56
	r3 s>>= 56
	if w0 == w3 goto .L433
	r0 &= 0xff
.L434:
	r3 &= 0xff
	r0 -= r3
	exit
	.size	strcmp, .-strcmp
	.align	3
	.global	strlen
	.type	strlen, @function
strlen:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if w0 == 0 goto .L446
	r0 = r1
.L445:
	r0 += 1
	r2 = *(u8 *) (r0+0)
	r3 = r0
	r2 <<= 56
	r2 s>>= 56
	if w2 == 0 goto .L462
	r0 += 1
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L462
	r0 = r3
	r0 += 2
	r5 = *(u8 *) (r0+0)
	r5 <<= 56
	r5 s>>= 56
	if w5 == 0 goto .L462
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L462
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if w3 == 0 goto .L462
	r0 += 1
	r2 = *(u8 *) (r0+0)
	r2 <<= 56
	r2 s>>= 56
	if w2 == 0 goto .L462
	r0 += 1
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L462
	r0 += 1
	r5 = *(u8 *) (r0+0)
	r5 <<= 56
	r5 s>>= 56
	if w5 != 0 goto .L445
.L462:
	r0 -= r1
	exit
.L446:
	r0 = 0
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L471
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L554
	r3 += -1
	r9 = r1
	r9 += r3
	r3 &= 7
	if r3 == 0 goto .L552
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L551
	r2 = r0
	if r3 == 1 goto .L552
	if r3 == 2 goto .L536
	if r3 == 3 goto .L537
	if r3 == 4 goto .L538
	if r3 == 5 goto .L539
	if r3 == 6 goto .L540
	r5 = *(u8 *) (r0+0)
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r1 += 1
	r0 += 1
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L551
	r2 = r0
.L540:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r1 += 1
	r3 = r2
	r4 = *(u8 *) (r1+0)
	r3 += 1
	if r4 == 0 goto .L551
	r2 = r3
.L539:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r1 += 1
	r5 = r2
	r4 = *(u8 *) (r1+0)
	r5 += 1
	if r4 == 0 goto .L551
	r2 = r5
.L538:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L551
	r2 = r0
.L537:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r1 += 1
	r3 = r2
	r4 = *(u8 *) (r1+0)
	r3 += 1
	if r4 == 0 goto .L551
	r2 = r3
.L536:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r1 += 1
	r0 = r2
	r4 = *(u8 *) (r1+0)
	r0 += 1
	if r4 == 0 goto .L551
	r2 = r0
.L552:
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L466
	if r1 == r9 goto .L466
	if w5 != w4 goto .L466
	r0 = r2
	r4 = *(u8 *) (r1+1)
	r0 += 1
	if r4 == 0 goto .L551
	r5 = *(u8 *) (r0+0)
	r2 = r0
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r4 = *(u8 *) (r1+2)
	if r4 == 0 goto .L551
	r5 = *(u8 *) (r0+1)
	r2 += 1
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r4 = *(u8 *) (r1+3)
	if r4 == 0 goto .L551
	r2 = r0
	r5 = *(u8 *) (r0+2)
	r2 += 2
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r4 = *(u8 *) (r1+4)
	if r4 == 0 goto .L551
	r5 = *(u8 *) (r0+3)
	r2 += 1
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r4 = *(u8 *) (r1+5)
	if r4 == 0 goto .L551
	r5 = *(u8 *) (r0+4)
	r2 += 1
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r4 = *(u8 *) (r1+6)
	if r4 == 0 goto .L551
	r5 = *(u8 *) (r0+5)
	r2 += 1
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r4 = *(u8 *) (r1+7)
	if r4 == 0 goto .L551
	r2 += 1
	r5 = *(u8 *) (r0+6)
	if r5 == 0 goto .L466
	if w5 != w4 goto .L466
	r1 += 8
	r4 = *(u8 *) (r1+0)
	if r4 == 0 goto .L551
	r0 += 7
	r2 = r0
	goto .L552
.L551:
	r5 = *(u8 *) (r2+1)
	r4 = 0
.L466:
	r4 -= r5
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	exit
.L471:
	r0 = r3
	exit
.L554:
	r5 = *(u8 *) (r2+0)
	goto .L466
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	if r3 s<= 1 goto .L555
	r3 += -2
	r3 &= -2
	r0 = r1
	r4 = r2
	r0 += 1
	r5 = r1
	r4 += 1
	r5 += r3
	r5 += 3
	r3 = r5
	r3 -= r0
	r3 += -2
	r3 >>= 1
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L594
	if r3 == 1 goto .L580
	if r3 == 2 goto .L581
	if r3 == 3 goto .L582
	if r3 == 4 goto .L583
	if r3 == 5 goto .L584
	if r3 != 6 goto .L596
.L585:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L584:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L583:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L582:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L581:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
.L580:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r1 += 2
	r0 += 2
	r4 += 2
	if r0 == r5 goto .L597
.L594:
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
	r9 = *(u8 *) (r0+14)
	*(u8 *) (r2+14) = r9
	r3 = *(u8 *) (r1+14)
	*(u8 *) (r4+14) = r3
	r2 += 16
	r1 += 16
	r0 += 16
	r4 += 16
	if r0 != r5 goto .L594
.L555:
	exit
.L596:
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r1+0)
	r2 += 2
	*(u8 *) (r4+0) = r3
	r1 += 2
	r0 += 2
	r4 += 2
	goto .L585
.L597:
	exit
	.size	swab, .-swab
	.align	3
	.global	isalpha
	.type	isalpha, @function
isalpha:
	r1 <<= 32
	r0 = 1
	r1 s>>= 32
	r1 |= 32
	r1 += -97
	if w1 <= 25 goto .L599
	r0 = 0
.L599:
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r0 = 1
	if w1 <= 127 goto .L601
	r0 = 0
.L601:
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if w1 == 32 goto .L604
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L604:
	r0 = 1
	exit
	.size	isblank, .-isblank
	.align	3
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	r1 <<= 32
	r1 s>>= 32
	if w1 <= 31 goto .L607
	r1 ^= 127
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L607:
	r0 = 1
	exit
	.size	iscntrl, .-iscntrl
	.align	3
	.global	isdigit
	.type	isdigit, @function
isdigit:
	r1 <<= 32
	r0 = 1
	r1 s>>= 32
	r1 += -48
	if w1 <= 9 goto .L609
	r0 = 0
.L609:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	r1 <<= 32
	r0 = 1
	r1 s>>= 32
	r1 += -33
	if w1 <= 93 goto .L611
	r0 = 0
.L611:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	r1 <<= 32
	r0 = 1
	r1 s>>= 32
	r1 += -97
	if w1 <= 25 goto .L613
	r0 = 0
.L613:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	r1 <<= 32
	r0 = 1
	r1 s>>= 32
	r1 += -32
	if w1 <= 94 goto .L615
	r0 = 0
.L615:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if w1 == 32 goto .L619
	r1 += -9
	r0 = 1
	if w1 > 4 goto .L620
	r0 &= 1
	exit
.L620:
	r0 = 0
	r0 &= 1
	exit
.L619:
	r0 = 1
	exit
	.size	isspace, .-isspace
	.align	3
	.global	isupper
	.type	isupper, @function
isupper:
	r1 <<= 32
	r0 = 1
	r1 s>>= 32
	r1 += -65
	if w1 <= 25 goto .L622
	r0 = 0
.L622:
	exit
	.size	isupper, .-isupper
	.align	3
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	r1 <<= 32
	r1 s>>= 32
	if w1 <= 31 goto .L628
	r0 = r1
	r0 += -127
	if w0 > 32 goto .L629
.L628:
	r0 = 1
	exit
.L629:
	r0 += -8105
	if w0 <= 1 goto .L628
	r1 += -65529
	r0 = 1
	if w1 <= 2 goto .L625
	r0 = 0
.L625:
	r0 &= 1
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	r1 <<= 32
	r0 = 1
	r1 s>>= 32
	r1 += -48
	if w1 <= 9 goto .L631
	r0 = 0
.L631:
	exit
	.size	iswdigit, .-iswdigit
	.align	3
	.global	iswprint
	.type	iswprint, @function
iswprint:
	r1 <<= 32
	r0 = r1
	r1 >>= 32
	r0 s>>= 32
	if w1 <= 254 goto .L640
	if w1 <= 8231 goto .L638
	r2 = r1
	r2 += -8234
	if w2 <= 47061 goto .L638
	r2 += -49110
	if w2 <= 8184 goto .L638
	r1 += -65532
	if w1 > 1048579 goto .L639
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L638:
	r0 = 1
	exit
.L640:
	r0 += 1
	r1 = 1
	r0 &= 127
	if w0 s<= 32 goto .L641
	r0 = r1
	r0 &= 1
	exit
.L641:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
.L639:
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
	if w0 <= 9 goto .L645
	r1 |= 32
	r0 = 1
	r1 += -97
	if w1 > 5 goto .L646
	r0 &= 1
	exit
.L645:
	r0 = 1
	exit
.L646:
	r0 = 0
	r0 &= 1
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
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L651
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L652
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L655
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L655:
	r0 = 0x0000000000000000 ll
	exit
.L651:
	r0 = r6
	exit
.L652:
	r0 = r7
	exit
	.size	fdim, .-fdim
	.align	3
	.global	fdimf
	.type	fdimf, @function
fdimf:
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L659
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L660
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L663
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L663:
	r0 = 0x00000000 ll
	exit
.L659:
	r0 = r6
	exit
.L660:
	r0 = r7
	exit
	.size	fdimf, .-fdimf
	.align	3
	.global	fmax
	.type	fmax, @function
fmax:
	r6 = r2
	r7 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L672
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L671
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if w0 == w1 goto .L666
	if r0 != 0 goto .L672
.L671:
	r0 = r7
	exit
.L666:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s< 0 goto .L672
	r6 = r7
.L672:
	r0 = r6
	exit
	.size	fmax, .-fmax
	.align	3
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	r6 = r2
	r7 = r1
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L681
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L680
	r0 = r7
	r1 = r6
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r0 s>>= 32
	if w1 == w0 goto .L675
	if r0 != 0 goto .L681
.L680:
	r0 = r7
	exit
.L675:
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s< 0 goto .L681
	r6 = r7
.L681:
	r0 = r6
	exit
	.size	fmaxf, .-fmaxf
	.align	3
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	r6 = r2
	r7 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L690
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L689
	r0 = r7
	r1 = r6
	r0 >>= 63
	r1 >>= 63
	if w0 == w1 goto .L684
	if r0 != 0 goto .L690
.L689:
	r0 = r7
	exit
.L684:
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s< 0 goto .L690
	r6 = r7
.L690:
	r0 = r6
	exit
	.size	fmaxl, .-fmaxl
	.align	3
	.global	fmin
	.type	fmin, @function
fmin:
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L697
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L699
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if w0 == w1 goto .L693
	if r0 != 0 goto .L699
.L697:
	r0 = r7
	exit
.L693:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s< 0 goto .L699
	r6 = r7
.L699:
	r0 = r6
	exit
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L706
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L708
	r0 = r6
	r1 = r7
	r0 &= -2147483648
	r1 &= -2147483648
	r0 <<= 32
	r0 s>>= 32
	if w1 == w0 goto .L702
	if r0 != 0 goto .L708
.L706:
	r0 = r7
	exit
.L702:
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s< 0 goto .L708
	r6 = r7
.L708:
	r0 = r6
	exit
	.size	fminf, .-fminf
	.align	3
	.global	fminl
	.type	fminl, @function
fminl:
	r7 = r2
	r6 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L715
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L717
	r0 = r6
	r1 = r7
	r0 >>= 63
	r1 >>= 63
	if w0 == w1 goto .L711
	if r0 != 0 goto .L717
.L715:
	r0 = r7
	exit
.L711:
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s< 0 goto .L717
	r6 = r7
.L717:
	r0 = r6
	exit
	.size	fminl, .-fminl
	.align	3
	.global	l64a
	.type	l64a, @function
l64a:
	r0 = r1;r0 &= 0xffffffff
	if w1 == 0 goto .L721
	r1 = s.0 ll
	r4 = r0
	r2 = digits ll
	r4 &= 63
	r3 = r2
	r3 += r4
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r1+0) = r5
	r0 >>= 6
	r1 += 1
	r9 = r1
	if r0 == 0 goto .L719
	r3 = r0
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r5
	r0 >>= 6
	r1 += 1
	if r0 == 0 goto .L719
	r3 = r0
	r4 = r2
	r3 &= 63
	r4 += r3
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r1+0) = r5
	r0 >>= 6
	r1 = r9
	r1 += 2
	if r0 == 0 goto .L719
	r9 = r0
	r3 = r2
	r9 &= 63
	r3 += r9
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r1+0) = r4
	r0 >>= 6
	r1 += 1
	if r0 == 0 goto .L719
	r5 = r0
	r9 = r2
	r5 &= 63
	r9 += r5
	r3 = *(u8 *) (r9+0)
	*(u8 *) (r1+0) = r3
	r0 >>= 6
	r1 += 1
	if r0 == 0 goto .L719
	r2 += r0
	r1 += 1
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+-1) = r0
.L719:
	*(u8 *) (r1+0) = 0
	r0 = s.0 ll
	exit
.L721:
	r1 = s.0 ll
	r0 = s.0 ll
	*(u8 *) (r1+0) = 0
	exit
	.size	l64a, .-l64a
	.align	3
	.global	srand
	.type	srand, @function
srand:
	r0 = seed ll
	r1 += -1
	r1 = r1;r1 &= 0xffffffff
	*(u64 *) (r0+0) = r1
	exit
	.size	srand, .-srand
	.align	3
	.global	rand
	.type	rand, @function
rand:
	r1 = seed ll
	r2 = 6364136223846793005 ll
	r0 = *(u64 *) (r1+0)
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
	if r2 == 0 goto .L745
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r0
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L739
	*(u64 *) (r2+8) = r1
.L739:
	exit
.L745:
	*(u64 *) (r1+8) = r2
	*(u64 *) (r1+0) = r2
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	r0 = *(u64 *) (r1+0)
	if r0 == 0 goto .L747
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L747:
	r1 = *(u64 *) (r1+8)
	if r1 == 0 goto .L746
	*(u64 *) (r1+0) = r0
.L746:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if w1 s< 0 goto .L757
	exit
.L757:
	r1 = -r1
	r0 = r1
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
.L765:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if w0 == 32 goto .L759
	r2 = r0;r2 &= 0xffffffff
	r3 = r2
	r3 += -9
	if w3 <= 4 goto .L759
	if w0 == 43 goto .L760
	if w0 == 45 goto .L761
	r2 += -48
	if w2 > 9 goto .L770
	r0 += -48
	r3 = 0
	r9 = r0
.L763:
	r0 = 0
.L767:
	r4 = *(u8 *) (r1+1)
	r5 = r9
	r2 = r4
	r9 = r0
	r2 <<= 56
	r9 <<= 2
	r2 s>>= 56
	r0 += r9
	r2 += -48
	r0 <<= 33
	r0 s>>= 32
	r4 = r0
	r0 -= r5
	r0 <<= 32
	r0 s>>= 32
	if w2 > 9 goto .L780
	r4 = *(u8 *) (r1+2)
	r9 = r0
	r5 = r2
	r9 <<= 2
	r2 = r4
	r0 += r9
	r2 <<= 56
	r0 <<= 33
	r2 s>>= 56
	r0 s>>= 32
	r2 += -48
	r4 = r0
	r0 -= r5
	r0 <<= 32
	r0 s>>= 32
	if w2 > 9 goto .L780
	r4 = *(u8 *) (r1+3)
	r9 = r0
	r5 = r2
	r9 <<= 2
	r2 = r4
	r0 += r9
	r2 <<= 56
	r0 <<= 33
	r2 s>>= 56
	r0 s>>= 32
	r2 += -48
	r4 = r0
	r0 -= r5
	r0 <<= 32
	r0 s>>= 32
	if w2 > 9 goto .L780
	r5 = r0
	r5 <<= 2
	r1 += 4
	r0 += r5
	r9 = *(u8 *) (r1+0)
	r0 <<= 33
	r9 <<= 56
	r0 s>>= 32
	r9 s>>= 56
	r4 = r0
	r5 = r2
	r0 -= r2
	r9 += -48
	r0 <<= 32
	r0 s>>= 32
	if w9 <= 9 goto .L767
.L780:
	if r3 != 0 goto .L766
	r0 = r5
	r0 -= r4
	r0 <<= 32
	r0 s>>= 32
	exit
.L759:
	r1 += 1
	goto .L765
.L761:
	r2 = *(u8 *) (r1+1)
	r1 += 1
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r9 = r2
	if w2 > 9 goto .L770
	r3 = 1
	goto .L763
.L760:
	r2 = *(u8 *) (r1+1)
	r3 = 0
	r2 <<= 56
	r1 += 1
	r2 s>>= 56
	r2 += -48
	r9 = r2
	if w2 <= 9 goto .L763
.L770:
	r0 = 0
.L766:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
.L789:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if w0 == 32 goto .L783
	r2 = r0;r2 &= 0xffffffff
	r3 = r2
	r3 += -9
	if w3 <= 4 goto .L783
	if w0 == 43 goto .L784
	if w0 == 45 goto .L785
	r2 += -48
	if w2 > 9 goto .L794
	r2 = 0
	r0 += -48
.L787:
	r3 = 0
.L791:
	r5 = r0
	r3 *= 10
	r9 = *(u8 *) (r1+1)
	r4 = r3
	r0 = r9
	r3 -= r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	if w0 > 9 goto .L804
	r3 *= 10
	r5 = r0
	r9 = *(u8 *) (r1+2)
	r4 = r3
	r0 = r9
	r3 -= r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	if w0 > 9 goto .L804
	r3 *= 10
	r9 = *(u8 *) (r1+3)
	r4 = r3
	r9 <<= 56
	r5 = r0
	r9 s>>= 56
	r3 -= r0
	r9 += -48
	if w9 > 9 goto .L804
	r3 *= 10
	r1 += 4
	r4 = r3
	r0 = *(u8 *) (r1+0)
	r5 = r9
	r0 <<= 56
	r3 -= r9
	r0 s>>= 56
	r0 += -48
	if w0 <= 9 goto .L791
.L804:
	if r2 != 0 goto .L782
	r3 = r5
	r3 -= r4
.L782:
	r0 = r3
	exit
.L783:
	r1 += 1
	goto .L789
.L785:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	if w0 > 9 goto .L794
	r2 = 1
	goto .L787
.L784:
	r0 = *(u8 *) (r1+1)
	r2 = 0
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	if w0 <= 9 goto .L787
.L794:
	r3 = 0
	goto .L782
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
.L811:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if w0 == 32 goto .L807
	r2 = r0;r2 &= 0xffffffff
	r3 = r2
	r3 += -9
	if w3 <= 4 goto .L807
	if w0 == 43 goto .L808
	if w0 == 45 goto .L809
	r2 += -48
	if w2 > 9 goto .L818
	r2 = 0
	r0 += -48
.L812:
	r3 = 0
.L815:
	r5 = r0
	r3 *= 10
	r9 = *(u8 *) (r1+1)
	r4 = r3
	r0 = r9
	r3 -= r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	if w0 > 9 goto .L828
	r3 *= 10
	r5 = r0
	r9 = *(u8 *) (r1+2)
	r4 = r3
	r0 = r9
	r3 -= r5
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	if w0 > 9 goto .L828
	r3 *= 10
	r9 = *(u8 *) (r1+3)
	r4 = r3
	r9 <<= 56
	r5 = r0
	r9 s>>= 56
	r3 -= r0
	r9 += -48
	if w9 > 9 goto .L828
	r3 *= 10
	r1 += 4
	r4 = r3
	r0 = *(u8 *) (r1+0)
	r5 = r9
	r0 <<= 56
	r3 -= r9
	r0 s>>= 56
	r0 += -48
	if w0 <= 9 goto .L815
.L828:
	if r2 != 0 goto .L806
	r3 = r5
	r3 -= r4
.L806:
	r0 = r3
	exit
.L807:
	r1 += 1
	goto .L811
.L809:
	r0 = *(u8 *) (r1+1)
	r2 = 1
	r0 <<= 56
	r1 += 1
	r0 s>>= 56
	r0 += -48
	if w0 <= 9 goto .L812
.L818:
	r3 = 0
	goto .L806
.L808:
	r0 = *(u8 *) (r1+1)
	r1 += 1
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	if w0 > 9 goto .L818
	r2 = 0
	goto .L812
	.size	atoll, .-atoll
	.align	3
	.global	div
	.type	div, @function
div:
	r2 <<= 32
	r3 <<= 32
	r3 s>>= 32
	r6 = r1
	r8 = r3
	r7 = r2
	r2 = r3
	r7 s>>= 32
	r1 = r7
	call	__divdi3
	r2 = r8
	*(u32 *) (r6+0) = r0
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
	if r1 s< 0 goto .L833
	exit
.L833:
	r0 = -r0
	exit
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
	r2 = r8
	*(u64 *) (r6+0) = r0
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
	if r1 s< 0 goto .L837
	exit
.L837:
	r0 = -r0
	exit
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
	r2 = r8
	*(u64 *) (r6+0) = r0
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
	if r1 s< 0 goto .L841
	exit
.L841:
	r0 = -r0
	exit
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
	r2 = r8
	*(u64 *) (r6+0) = r0
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
	r3 = *(u32 *) (r1+0)
	r2 s>>= 32
	r3 <<= 32
	r0 = r3
	r0 s>>= 32
	if r3 == 0 goto .L851
.L844:
	if w2 == w0 goto .L852
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r0 = r4
	r0 s>>= 32
	if r4 != 0 goto .L844
	exit
.L852:
	r0 = r1
	exit
.L851:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L863
.L864:
	if r3 == 0 goto .L855
	r1 += 4
	r2 += 4
.L863:
	r3 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r3 <<= 32
	r4 <<= 32
	r3 s>>= 32
	r4 s>>= 32
	if w3 == w4 goto .L864
.L855:
	if w3 s< w4 goto .L859
	r0 = 1
	if w3 s<= w4 goto .L865
	r0 &= 1
	exit
.L859:
	r0 = -1
	exit
.L865:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L867:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L883
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L883
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L883
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L883
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L883
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L883
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L883
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L867
.L883:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if w0 == 0 goto .L887
	r0 = r1
.L886:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if w3 == 0 goto .L903
	r0 += 4
	r4 = *(u32 *) (r0+0)
	if w4 == 0 goto .L903
	r0 = r2
	r0 += 8
	r5 = *(u32 *) (r0+0)
	if w5 == 0 goto .L903
	r0 += 4
	r9 = *(u32 *) (r0+0)
	if w9 == 0 goto .L903
	r0 += 4
	r2 = *(u32 *) (r0+0)
	if w2 == 0 goto .L903
	r0 += 4
	r3 = *(u32 *) (r0+0)
	if w3 == 0 goto .L903
	r0 += 4
	r4 = *(u32 *) (r0+0)
	if w4 == 0 goto .L903
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if w5 != 0 goto .L886
.L903:
	r0 -= r1
	r0 s>>= 2
	exit
.L887:
	r0 = 0
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L911
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L967
	if r0 == 1 goto .L948
	if r0 == 2 goto .L949
	if r0 == 3 goto .L950
	if r0 == 4 goto .L951
	if r0 == 5 goto .L952
	if r0 != 6 goto .L969
.L953:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	if w4 != w9 goto .L907
	if r9 == 0 goto .L907
	r3 += -1
	r1 += 4
	r2 += 4
.L952:
	r0 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r0 <<= 32
	r0 s>>= 32
	if w5 != w0 goto .L907
	if r0 == 0 goto .L907
	r3 += -1
	r1 += 4
	r2 += 4
.L951:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	if w4 != w9 goto .L907
	if r9 == 0 goto .L907
	r3 += -1
	r1 += 4
	r2 += 4
.L950:
	r0 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r0 <<= 32
	r0 s>>= 32
	if w5 != w0 goto .L907
	if r0 == 0 goto .L907
	r3 += -1
	r1 += 4
	r2 += 4
.L949:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	if w4 != w9 goto .L907
	if r9 == 0 goto .L907
	r3 += -1
	r1 += 4
	r2 += 4
.L948:
	r0 = *(u32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	r0 <<= 32
	r0 s>>= 32
	if w5 != w0 goto .L907
	if r0 == 0 goto .L907
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L911
.L967:
	r9 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	if w4 != w9 goto .L907
	if r9 == 0 goto .L907
	r1 += 4
	r2 += 4
	r0 = *(u32 *) (r1+0)
	r5 = r1
	r0 <<= 32
	r4 = r2
	r0 s>>= 32
	r9 = *(u32 *) (r2+0)
	if w9 != w0 goto .L907
	if r0 == 0 goto .L907
	r1 += 4
	r2 += 4
	r0 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r0 <<= 32
	r0 s>>= 32
	if w9 != w0 goto .L907
	if r0 == 0 goto .L907
	r1 = r5
	r2 = r4
	r1 += 8
	r2 += 8
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r5 <<= 32
	r5 s>>= 32
	if w4 != w5 goto .L907
	if r5 == 0 goto .L907
	r1 += 4
	r2 += 4
	r0 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r0 <<= 32
	r0 s>>= 32
	if w9 != w0 goto .L907
	if r0 == 0 goto .L907
	r1 += 4
	r2 += 4
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r5 <<= 32
	r5 s>>= 32
	if w4 != w5 goto .L907
	if r5 == 0 goto .L907
	r1 += 4
	r2 += 4
	r0 = *(u32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	r0 <<= 32
	r0 s>>= 32
	if w9 != w0 goto .L907
	if r0 == 0 goto .L907
	r1 += 4
	r2 += 4
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	r5 <<= 32
	r5 s>>= 32
	if w4 != w5 goto .L907
	if r5 == 0 goto .L907
	r3 += -8
	r1 += 4
	r2 += 4
	if r3 != 0 goto .L967
.L911:
	r0 = 0
	exit
.L907:
	r3 = *(u32 *) (r1+0)
	r1 = *(u32 *) (r2+0)
	r2 = r3
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
	if w2 s< w1 goto .L970
	r0 = 1
	if w2 s<= w1 goto .L971
	r0 &= 1
	exit
.L970:
	r0 = -1
	exit
.L971:
	r0 = 0
	r0 &= 1
	exit
.L969:
	r5 = *(u32 *) (r1+0)
	r3 = *(u32 *) (r2+0)
	r5 <<= 32
	r5 s>>= 32
	if w3 != w5 goto .L907
	if r5 == 0 goto .L907
	r3 = r4
	r1 += 4
	r2 += 4
	goto .L953
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	if r3 == 0 goto .L976
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L1031
	if r0 == 1 goto .L1013
	if r0 == 2 goto .L1014
	if r0 == 3 goto .L1015
	if r0 == 4 goto .L1016
	if r0 == 5 goto .L1017
	if r0 != 6 goto .L1033
.L1018:
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1030
	r3 += -1
	r1 += 4
.L1017:
	r9 = *(u32 *) (r1+0)
	if w9 == w2 goto .L1030
	r3 += -1
	r1 += 4
.L1016:
	r4 = *(u32 *) (r1+0)
	if w4 == w2 goto .L1030
	r3 += -1
	r1 += 4
.L1015:
	r0 = *(u32 *) (r1+0)
	if w0 == w2 goto .L1030
	r3 += -1
	r1 += 4
.L1014:
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1030
	r3 += -1
	r1 += 4
.L1013:
	r9 = *(u32 *) (r1+0)
	if w9 == w2 goto .L1030
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L976
.L1031:
	r4 = *(u32 *) (r1+0)
	if w4 == w2 goto .L1030
	r1 += 4
	r0 = r1
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1030
	r1 += 4
	r9 = *(u32 *) (r1+0)
	if w9 == w2 goto .L1030
	r1 = r0
	r1 += 8
	r4 = *(u32 *) (r1+0)
	if w4 == w2 goto .L1030
	r1 += 4
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1030
	r1 += 4
	r9 = *(u32 *) (r1+0)
	if w9 == w2 goto .L1030
	r1 += 4
	r4 = *(u32 *) (r1+0)
	if w4 == w2 goto .L1030
	r1 += 4
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1030
	r0 += 28
	r3 += -8
	r1 = r0
	if r3 != 0 goto .L1031
.L976:
	r0 = 0
	exit
.L1030:
	r0 = r1
	exit
.L1033:
	r3 = *(u32 *) (r1+0)
	if w3 == w2 goto .L1030
	r3 = r4
	r1 += 4
	goto .L1018
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L1041
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L1097
	if r0 == 1 goto .L1078
	if r0 == 2 goto .L1079
	if r0 == 3 goto .L1080
	if r0 == 4 goto .L1081
	if r0 == 5 goto .L1082
	if r0 != 6 goto .L1099
.L1083:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1096
	r3 += -1
	r1 += 4
	r2 += 4
.L1082:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1096
	r3 += -1
	r1 += 4
	r2 += 4
.L1081:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1096
	r3 += -1
	r1 += 4
	r2 += 4
.L1080:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1096
	r3 += -1
	r1 += 4
	r2 += 4
.L1079:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1096
	r3 += -1
	r1 += 4
	r2 += 4
.L1078:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1096
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L1041
.L1097:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1096
	r5 = *(u32 *) (r1+4)
	r4 = *(u32 *) (r2+4)
	if w5 != w4 goto .L1096
	r5 = *(u32 *) (r1+8)
	r4 = *(u32 *) (r2+8)
	if w5 != w4 goto .L1096
	r5 = *(u32 *) (r1+12)
	r4 = *(u32 *) (r2+12)
	if w5 != w4 goto .L1096
	r5 = *(u32 *) (r1+16)
	r4 = *(u32 *) (r2+16)
	if w5 != w4 goto .L1096
	r5 = *(u32 *) (r1+20)
	r4 = *(u32 *) (r2+20)
	if w5 != w4 goto .L1096
	r5 = *(u32 *) (r1+24)
	r4 = *(u32 *) (r2+24)
	if w5 != w4 goto .L1096
	r5 = *(u32 *) (r1+28)
	r4 = *(u32 *) (r2+28)
	if w5 != w4 goto .L1096
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L1097
.L1041:
	r0 = 0
	exit
.L1096:
	r5 <<= 32
	r4 <<= 32
	r5 s>>= 32
	r4 s>>= 32
	if w5 s< w4 goto .L1100
	r0 = 1
	if w5 s<= w4 goto .L1101
	r0 &= 1
	exit
.L1100:
	r0 = -1
	exit
.L1101:
	r0 = 0
	r0 &= 1
	exit
.L1099:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1096
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L1083
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1121
	r5 = r3
	r6 = r3
	r9 = r1
	r0 = r1
	r4 = r2
	r5 += -1
	r6 <<= 2
	r9 -= r2
	if r9 >= r6 goto .L1246
	if r3 == 0 goto .L1121
	r5 <<= 2
	r0 = r2
	r4 = r5
	r3 = r1
	r4 >>= 2
	r0 += r5
	r4 += 1
	r3 += r5
	r4 &= 7
	if r4 == 0 goto .L1240
	if r4 == 1 goto .L1192
	if r4 == 2 goto .L1193
	if r4 == 3 goto .L1194
	if r4 == 4 goto .L1195
	if r4 == 5 goto .L1196
	if r4 != 6 goto .L1247
.L1197:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1196:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1195:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
.L1194:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1193:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1192:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r5
	r9 = r0
	r3 += -4
	r0 += -4
	if r2 == r9 goto .L1121
.L1240:
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r4
	r5 = *(u32 *) (r0+-4)
	*(u32 *) (r3+-4) = r5
	r4 = *(u32 *) (r0+-8)
	*(u32 *) (r3+-8) = r4
	r5 = *(u32 *) (r0+-12)
	*(u32 *) (r3+-12) = r5
	r4 = *(u32 *) (r0+-16)
	*(u32 *) (r3+-16) = r4
	r5 = *(u32 *) (r0+-20)
	r9 = r0
	*(u32 *) (r3+-20) = r5
	r9 += -28
	r4 = *(u32 *) (r0+-24)
	*(u32 *) (r3+-24) = r4
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r3+-28) = r5
	r0 += -32
	r3 += -32
	if r2 != r9 goto .L1240
.L1121:
	r0 = r1
	exit
.L1246:
	if r3 == 0 goto .L1121
	if r5 <= 8 goto .L1198
	r9 = r2
	r6 = 1
	r9 |= r1
	r9 &= 7
	if r9 != 0 goto .L1248
.L1111:
	r6 &= 1
	if w6 == 0 goto .L1198
	r6 = r2
	r6 += 4
	r9 = r1
	r9 ^= r6
	r6 = r9
	r6 = -r6
	r6 |= r9
	if r6 s>= 0 goto .L1198
	r9 = r3
	r5 = 0
	r9 >>= 1
	r6 = r9
	r6 &= 7
	if r6 == r5 goto .L1242
	if r6 == 1 goto .L1205
	if r6 == 2 goto .L1206
	if r6 == 3 goto .L1207
	if r6 == 4 goto .L1208
	if r6 == 5 goto .L1209
	if r6 != 6 goto .L1249
.L1210:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1209:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1208:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1207:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1206:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1205:
	r6 = *(u64 *) (r4+0)
	*(u64 *) (r0+0) = r6
	r5 += 1
	r4 += 8
	r0 += 8
	if r9 == r5 goto .L1239
.L1242:
	r6 = *(u64 *) (r4+0)
	*(u64 *) (r0+0) = r6
	r6 = *(u64 *) (r4+8)
	*(u64 *) (r0+8) = r6
	r6 = *(u64 *) (r4+16)
	*(u64 *) (r0+16) = r6
	r6 = *(u64 *) (r4+24)
	*(u64 *) (r0+24) = r6
	r6 = *(u64 *) (r4+32)
	*(u64 *) (r0+32) = r6
	r6 = *(u64 *) (r4+40)
	*(u64 *) (r0+40) = r6
	r6 = *(u64 *) (r4+48)
	*(u64 *) (r0+48) = r6
	r6 = *(u64 *) (r4+56)
	*(u64 *) (r0+56) = r6
	r5 += 8
	r4 += 64
	r0 += 64
	if r9 != r5 goto .L1242
.L1239:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1121
	r5 = r1
	r3 &= -2
	r0 = r1
	r3 <<= 2
	r2 += r3
	r5 += r3
	r2 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r2
	exit
.L1248:
	r6 = 0
	goto .L1111
.L1198:
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1241
	if r3 == 1 goto .L1199
	if r3 == 2 goto .L1200
	if r3 == 3 goto .L1201
	if r3 == 4 goto .L1202
	if r3 == 5 goto .L1203
	if r3 == 6 goto .L1204
	r4 = *(u32 *) (r2+0)
	r0 = r1
	*(u32 *) (r1+0) = r4
	r2 += 4
	r5 += -1
	r0 += 4
	r4 = r2
.L1204:
	r9 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r9
	r4 += 4
	r0 += 4
.L1203:
	r2 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r2
	r4 += 4
	r0 += 4
.L1202:
	r3 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r3
	r4 += 4
	r0 += 4
.L1201:
	r9 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r9
	r4 += 4
	r0 += 4
.L1200:
	r2 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r2
	r4 += 4
	r0 += 4
.L1199:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r0+0) = r3
	r5 += -1
	r0 += 4
	r4 += 4
	if r5 == -1 goto .L1121
.L1241:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r0+0) = r9
	r2 = *(u32 *) (r4+4)
	*(u32 *) (r0+4) = r2
	r3 = *(u32 *) (r4+8)
	*(u32 *) (r0+8) = r3
	r9 = *(u32 *) (r4+12)
	*(u32 *) (r0+12) = r9
	r2 = *(u32 *) (r4+16)
	*(u32 *) (r0+16) = r2
	r3 = *(u32 *) (r4+20)
	*(u32 *) (r0+20) = r3
	r9 = *(u32 *) (r4+24)
	*(u32 *) (r0+24) = r9
	r2 = *(u32 *) (r4+28)
	*(u32 *) (r0+28) = r2
	r5 += -8
	r0 += 32
	r4 += 32
	if r5 != -1 goto .L1241
	goto .L1121
.L1247:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
	goto .L1197
.L1249:
	r0 = *(u64 *) (r2+0)
	r4 = r2
	*(u64 *) (r1+0) = r0
	r5 = 1
	r0 = r1
	r4 += 8
	r0 += 8
	goto .L1210
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r9 = r3
	r2 s>>= 32
	r9 += -1
	if r3 == 0 goto .L1251
	r0 = r1
	r6 = r1
	r0 >>= 2
	r0 &= 1
	if r9 <= 5 goto .L1252
	if r0 == 0 goto .L1253
	r6 += 4
	*(u32 *) (r1+0) = r2
	r9 += -1
.L1253:
	r3 -= r0
	r5 = r2
	r0 <<= 2
	r5 <<= 32
	r4 = r0
	r7 = r3
	r0 = r1
	r7 >>= 1
	r0 += r4
	r8 = r7
	r4 = r2;r4 &= 0xffffffff
	r8 &= 7
	r4 |= r5
	r5 = 0
	if r8 == r5 goto .L1316
	if r8 == 1 goto .L1294
	if r8 == 2 goto .L1295
	if r8 == 3 goto .L1296
	if r8 == 4 goto .L1297
	if r8 == 5 goto .L1298
	if r8 != 6 goto .L1318
.L1299:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1298:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1297:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1296:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1295:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1294:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
	if r5 == r7 goto .L1315
.L1316:
	*(u64 *) (r0+0) = r4
	*(u64 *) (r0+8) = r4
	*(u64 *) (r0+16) = r4
	*(u64 *) (r0+24) = r4
	*(u64 *) (r0+32) = r4
	*(u64 *) (r0+40) = r4
	*(u64 *) (r0+48) = r4
	*(u64 *) (r0+56) = r4
	r5 += 8
	r0 += 64
	if r5 != r7 goto .L1316
.L1315:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1251
	r3 &= -2
	r4 = r3
	r9 -= r3
	r4 <<= 2
	r6 += r4
.L1252:
	*(u32 *) (r6+0) = r2
	if r9 == 0 goto .L1251
	*(u32 *) (r6+4) = r2
	if r9 == 1 goto .L1251
	*(u32 *) (r6+8) = r2
	if r9 == 2 goto .L1251
	*(u32 *) (r6+12) = r2
	if r9 == 3 goto .L1251
	*(u32 *) (r6+16) = r2
	if r9 == 4 goto .L1251
	*(u32 *) (r6+20) = r2
.L1251:
	r0 = r1
	exit
.L1318:
	*(u64 *) (r0+0) = r4
	r5 = 1
	r0 += 8
	goto .L1299
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1320
	r0 = r1
	r2 += r3
	r0 += r3
	if r3 == 0 goto .L1319
	r9 = r0
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1473
	if r9 == 1 goto .L1419
	if r9 == 2 goto .L1420
	if r9 == 3 goto .L1421
	if r9 == 4 goto .L1422
	if r9 == 5 goto .L1423
	if r9 == 6 goto .L1424
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1424:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1423:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1422:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1421:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1420:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1419:
	r2 += -1
	r3 = *(u8 *) (r0+-1)
	*(u8 *) (r2+0) = r3
	r0 += -1
	if r1 == r0 goto .L1479
.L1473:
	r9 = *(u8 *) (r0+-1)
	r0 += -8
	*(u8 *) (r2+-1) = r9
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r2+-2) = r5
	r4 = *(u8 *) (r0+5)
	*(u8 *) (r2+-3) = r4
	r3 = *(u8 *) (r0+4)
	r2 += -8
	*(u8 *) (r2+4) = r3
	r9 = *(u8 *) (r0+3)
	*(u8 *) (r2+3) = r9
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r2+2) = r5
	r4 = *(u8 *) (r0+1)
	*(u8 *) (r2+1) = r4
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
	if r1 != r0 goto .L1473
	exit
.L1320:
	if r1 != r2 goto .L1480
.L1319:
	exit
.L1480:
	if r3 == 0 goto .L1319
	r0 = r3
	r0 += -1
	if r0 <= 7 goto .L1323
	r5 = r2
	r4 = 1
	r5 |= r1
	r5 &= 7
	if r5 != 0 goto .L1481
.L1324:
	r4 &= 1
	if w4 == 0 goto .L1323
	r9 = r1
	r5 = r2
	r9 += 1
	r0 = 1
	r5 -= r9
	if r5 <= 6 goto .L1482
.L1325:
	r0 &= 1
	if w0 == 0 goto .L1323
	r5 = r3
	r9 = r1
	r5 &= -8
	r0 = r2
	r4 = r5
	r9 += r5
	r4 += -8
	r4 >>= 3
	r4 += 1
	r4 &= 7
	if r4 == 0 goto .L1475
	if r4 == 1 goto .L1425
	if r4 == 2 goto .L1426
	if r4 == 3 goto .L1427
	if r4 == 4 goto .L1428
	if r4 == 5 goto .L1429
	if r4 != 6 goto .L1483
.L1430:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1429:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1428:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1427:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1426:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1425:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r0+0) = r4
	r1 += 8
	r0 += 8
	if r9 == r1 goto .L1472
.L1475:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r0+0) = r4
	r4 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r4
	r4 = *(u64 *) (r1+16)
	*(u64 *) (r0+16) = r4
	r4 = *(u64 *) (r1+24)
	*(u64 *) (r0+24) = r4
	r4 = *(u64 *) (r1+32)
	*(u64 *) (r0+32) = r4
	r4 = *(u64 *) (r1+40)
	*(u64 *) (r0+40) = r4
	r4 = *(u64 *) (r1+48)
	*(u64 *) (r0+48) = r4
	r4 = *(u64 *) (r1+56)
	*(u64 *) (r0+56) = r4
	r1 += 64
	r0 += 64
	if r9 != r1 goto .L1475
.L1472:
	r0 = r3
	r2 += r5
	r0 -= r5
	if r3 == r5 goto .L1319
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r1
	if r0 == 1 goto .L1319
	r3 = *(u8 *) (r9+1)
	*(u8 *) (r2+1) = r3
	if r0 == 2 goto .L1319
	r5 = *(u8 *) (r9+2)
	*(u8 *) (r2+2) = r5
	if r0 == 3 goto .L1319
	r4 = *(u8 *) (r9+3)
	*(u8 *) (r2+3) = r4
	if r0 == 4 goto .L1319
	r1 = *(u8 *) (r9+4)
	*(u8 *) (r2+4) = r1
	if r0 == 5 goto .L1319
	r3 = *(u8 *) (r9+5)
	*(u8 *) (r2+5) = r3
	if r0 == 6 goto .L1319
	r9 = *(u8 *) (r9+6)
	*(u8 *) (r2+6) = r9
	exit
.L1481:
	r4 = 0
	goto .L1324
.L1482:
	r0 = 0
	goto .L1325
.L1323:
	r0 = r1
	r0 += r3
	r3 &= 7
	if r3 == 0 goto .L1474
	if r3 == 1 goto .L1431
	if r3 == 2 goto .L1432
	if r3 == 3 goto .L1433
	if r3 == 4 goto .L1434
	if r3 == 5 goto .L1435
	if r3 == 6 goto .L1436
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1436:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1435:
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1434:
	r9 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r9
	r1 += 1
.L1433:
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1432:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1431:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r3
	r1 += 1
	r2 += 1
	if r0 == r1 goto .L1484
.L1474:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r9
	r5 = *(u8 *) (r1+1)
	*(u8 *) (r2+1) = r5
	r4 = *(u8 *) (r1+2)
	*(u8 *) (r2+2) = r4
	r3 = *(u8 *) (r1+3)
	*(u8 *) (r2+3) = r3
	r9 = *(u8 *) (r1+4)
	*(u8 *) (r2+4) = r9
	r5 = *(u8 *) (r1+5)
	*(u8 *) (r2+5) = r5
	r4 = *(u8 *) (r1+6)
	*(u8 *) (r2+6) = r4
	r3 = *(u8 *) (r1+7)
	*(u8 *) (r2+7) = r3
	r1 += 8
	r2 += 8
	if r0 != r1 goto .L1474
	goto .L1319
.L1479:
	exit
.L1483:
	r0 = *(u64 *) (r1+0)
	r1 += 8
	*(u64 *) (r2+0) = r0
	r0 = r2
	r0 += 8
	goto .L1430
.L1484:
	exit
	.size	bcopy, .-bcopy
	.align	3
	.global	rotl64
	.type	rotl64, @function
rotl64:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r0 = -r0
	r0 &= 63
	r2 >>= 32
	r3 = r1
	r1 >>= r0
	r3 <<= r2
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
	r0 = -r0
	r0 &= 63
	r2 >>= 32
	r3 = r1
	r1 <<= r0
	r3 >>= r2
	r0 = r1
	r0 |= r3
	exit
	.size	rotr64, .-rotr64
	.align	3
	.global	rotl32
	.type	rotl32, @function
rotl32:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r0 = -r0
	r0 &= 31
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 32
	r3 = r1
	r1 >>= r0
	r3 <<= r2
	r0 = r3
	r0 |= r1
	exit
	.size	rotl32, .-rotl32
	.align	3
	.global	rotr32
	.type	rotr32, @function
rotr32:
	r2 <<= 32
	r0 = r2
	r0 s>>= 32
	r0 = -r0
	r0 &= 31
	r1 = r1;r1 &= 0xffffffff
	r2 >>= 32
	r3 = r1
	r1 <<= r0
	r3 >>= r2
	r0 = r3
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
	r0 = -r0
	r0 &= 63
	r2 >>= 32
	r3 = r1
	r1 >>= r0
	r3 <<= r2
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
	r0 = -r0
	r0 &= 63
	r2 >>= 32
	r3 = r1
	r1 <<= r0
	r3 >>= r2
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
	r0 = r1
	r3 &= 15
	r2 = -r2
	r0 <<= r3
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
	r0 = r1
	r3 &= 15
	r2 = -r2
	r0 >>= r3
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
	r0 = r1
	r3 &= 7
	r2 = -r2
	r0 <<= r3
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
	r0 = r1
	r3 &= 7
	r2 = -r2
	r0 >>= r3
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
	r1 = r1;r1 &= 0xffffffff
	r0 = 0
.L1501:
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1524
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1524
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1524
	r5 = r1
	r5 >>= r0
	r0 += 1
	r5 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L1524
	r9 = r1
	r9 >>= r0
	r0 += 1
	r9 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r9 != 0 goto .L1524
	r2 = r1
	r2 >>= r0
	r0 += 1
	r2 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L1524
	r3 = r1
	r3 >>= r0
	r0 += 1
	r3 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L1524
	r4 = r1
	r4 >>= r0
	r0 += 1
	r4 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r4 != 0 goto .L1524
	if w0 != 32 goto .L1501
	r0 = r4
	exit
.L1524:
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	ffs, .-ffs
	.align	3
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	r1 <<= 32
	r9 = r1
	r9 s>>= 32
	r0 = r9
	if r1 == 0 goto .L1528
	r0 &= 1
	if r0 != 0 goto .L1528
	r0 = 1
.L1529:
	r9 s>>= 1
	r0 += 1
	r1 = r9
	r0 <<= 32
	r1 <<= 32
	r9 &= 1
	r0 s>>= 32
	if w9 != 0 goto .L1547
	r1 s>>= 33
	r0 += 1
	r2 = r1
	r0 <<= 32
	r2 <<= 32
	r1 &= 1
	r0 s>>= 32
	if w1 != 0 goto .L1528
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if w3 != 0 goto .L1528
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if w5 != 0 goto .L1528
	r1 = r9
	r0 += 1
	r1 s>>= 33
	r0 <<= 32
	r2 = r1
	r0 s>>= 32
	r2 <<= 32
	r1 &= 1
	if w1 != 0 goto .L1528
	r3 = r2
	r0 += 1
	r3 s>>= 33
	r0 <<= 32
	r4 = r3
	r0 s>>= 32
	r4 <<= 32
	r3 &= 1
	if w3 != 0 goto .L1528
	r5 = r4
	r0 += 1
	r5 s>>= 33
	r0 <<= 32
	r9 = r5
	r0 s>>= 32
	r9 <<= 32
	r5 &= 1
	if w5 != 0 goto .L1528
	r0 += 1
	r9 s>>= 33
	r0 <<= 32
	r1 = r9
	r0 s>>= 32
	r1 &= 1
	if w1 == 0 goto .L1529
	exit
.L1528:
	exit
.L1547:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r2 = 0xff7fffff ll
	r6 = r1
	call	__ltsf2
	if r0 s< 0 goto .L1551
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1552
	r0 = r7
	r0 &= 1
	exit
.L1551:
	r0 = 1
	exit
.L1552:
	r7 = 0
	r0 = r7
	r0 &= 1
	exit
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	r2 = 0xffefffffffffffff ll
	r6 = r1
	call	__ltdf2
	if r0 s< 0 goto .L1556
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1557
	r0 = r7
	r0 &= 1
	exit
.L1556:
	r0 = 1
	exit
.L1557:
	r7 = 0
	r0 = r7
	r0 &= 1
	exit
	.size	gl_isinfd, .-gl_isinfd
	.align	3
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	r2 = 0xffefffffffffffff ll
	r6 = r1
	call	__ltdf2
	if r0 s< 0 goto .L1561
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1562
	r0 = r7
	r0 &= 1
	exit
.L1561:
	r0 = 1
	exit
.L1562:
	r7 = 0
	r0 = r7
	r0 &= 1
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
	r2 <<= 32
	r2 s>>= 32
	r8 = r1
	r6 = r2
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L1565
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1565
	if w6 s< 0 goto .L1582
	r7 = 0x40000000 ll
.L1567:
	r0 = r6
	r0 &= 1
	if w0 == 0 goto .L1568
.L1569:
	r1 = r8
	r2 = r7
	call	__mulsf3
	r8 = r0
.L1568:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1565
.L1570:
	r2 = r7
	r1 = r7
	call	__mulsf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1569
	r4 s>>= 1
	r6 = r4
	call	__mulsf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if w2 != 0 goto .L1569
	r5 = r6
	r5 >>= 63
	r5 += r6
	r5 <<= 31
	r5 s>>= 32
	r2 = r0
	r6 = r5
	r1 = r0
	call	__mulsf3
	r9 = r6
	r7 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r6
	r0 = r6
	r0 &= 1
	if w0 != 0 goto .L1569
	r9 s>>= 1
	r6 = r9
	call	__mulsf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r4 <<= 31
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1569
	r4 s>>= 32
	r6 = r4
	call	__mulsf3
	r5 = r6
	r9 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r9 &= 1
	if w9 != 0 goto .L1569
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r4 = r6
	r7 = r0
	r4 &= 1
	r0 = r6
	r2 = r7
	r0 >>= 63
	r1 = r7
	r0 += r6
	r0 <<= 31
	if w4 != 0 goto .L1569
	r0 s>>= 32
	r6 = r0
	call	__mulsf3
	r5 = r6
	r3 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1569
	r5 s>>= 1
	r6 = r5
	call	__mulsf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if w1 != 0 goto .L1569
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1570
.L1565:
	r0 = r8
	exit
.L1582:
	r7 = 0x3f000000 ll
	goto .L1567
	.size	ldexpf, .-ldexpf
	.align	3
	.global	ldexp
	.type	ldexp, @function
ldexp:
	r2 <<= 32
	r2 s>>= 32
	r8 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L1584
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1584
	if w6 s< 0 goto .L1601
	r7 = 0x4000000000000000 ll
.L1586:
	r0 = r6
	r0 &= 1
	if w0 == 0 goto .L1587
.L1588:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1587:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1584
.L1589:
	r2 = r7
	r1 = r7
	call	__muldf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1588
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if w2 != 0 goto .L1588
	r5 = r6
	r5 >>= 63
	r5 += r6
	r5 <<= 31
	r5 s>>= 32
	r2 = r0
	r6 = r5
	r1 = r0
	call	__muldf3
	r9 = r6
	r7 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r6
	r0 = r6
	r0 &= 1
	if w0 != 0 goto .L1588
	r9 s>>= 1
	r6 = r9
	call	__muldf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r4 <<= 31
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1588
	r4 s>>= 32
	r6 = r4
	call	__muldf3
	r5 = r6
	r9 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r9 &= 1
	if w9 != 0 goto .L1588
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r4 = r6
	r7 = r0
	r4 &= 1
	r0 = r6
	r2 = r7
	r0 >>= 63
	r1 = r7
	r0 += r6
	r0 <<= 31
	if w4 != 0 goto .L1588
	r0 s>>= 32
	r6 = r0
	call	__muldf3
	r5 = r6
	r3 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1588
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if w1 != 0 goto .L1588
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1589
.L1584:
	r0 = r8
	exit
.L1601:
	r7 = 0x3fe0000000000000 ll
	goto .L1586
	.size	ldexp, .-ldexp
	.align	3
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	r2 <<= 32
	r2 s>>= 32
	r8 = r1
	r6 = r2
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L1603
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1603
	if w6 s< 0 goto .L1620
	r7 = 0x4000000000000000 ll
.L1605:
	r0 = r6
	r0 &= 1
	if w0 == 0 goto .L1606
.L1607:
	r1 = r8
	r2 = r7
	call	__muldf3
	r8 = r0
.L1606:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1603
.L1608:
	r2 = r7
	r1 = r7
	call	__muldf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1607
	r4 s>>= 1
	r6 = r4
	call	__muldf3
	r2 = r6
	r7 = r0
	r2 &= 1
	if w2 != 0 goto .L1607
	r5 = r6
	r5 >>= 63
	r5 += r6
	r5 <<= 31
	r5 s>>= 32
	r2 = r0
	r6 = r5
	r1 = r0
	call	__muldf3
	r9 = r6
	r7 = r0
	r9 >>= 63
	r2 = r0
	r1 = r0
	r9 += r6
	r0 = r6
	r0 &= 1
	if w0 != 0 goto .L1607
	r9 s>>= 1
	r6 = r9
	call	__muldf3
	r4 = r6
	r3 = r6
	r4 >>= 63
	r7 = r0
	r4 += r6
	r2 = r0
	r4 <<= 31
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1607
	r4 s>>= 32
	r6 = r4
	call	__muldf3
	r5 = r6
	r9 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r9 &= 1
	if w9 != 0 goto .L1607
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r4 = r6
	r7 = r0
	r4 &= 1
	r0 = r6
	r2 = r7
	r0 >>= 63
	r1 = r7
	r0 += r6
	r0 <<= 31
	if w4 != 0 goto .L1607
	r0 s>>= 32
	r6 = r0
	call	__muldf3
	r5 = r6
	r3 = r6
	r5 >>= 63
	r7 = r0
	r5 += r6
	r2 = r0
	r1 = r0
	r3 &= 1
	if w3 != 0 goto .L1607
	r5 s>>= 1
	r6 = r5
	call	__muldf3
	r1 = r6
	r7 = r0
	r1 &= 1
	if w1 != 0 goto .L1607
	r2 = r6
	r2 >>= 63
	r2 += r6
	r2 <<= 31
	r2 s>>= 32
	r6 = r2
	goto .L1608
.L1603:
	r0 = r8
	exit
.L1620:
	r7 = 0x3fe0000000000000 ll
	goto .L1605
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1622
	r0 = r3
	r0 += -1
	if r0 <= 6 goto .L1623
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 != 0 goto .L1623
	r5 = r3
	r9 = r2
	r5 &= -8
	r4 = r1
	r6 = r5
	r9 += r5
	r6 += -8
	r6 >>= 3
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L1723
	if r6 == 1 goto .L1686
	if r6 == 2 goto .L1687
	if r6 == 3 goto .L1688
	if r6 == 4 goto .L1689
	if r6 == 5 goto .L1690
	if r6 == 6 goto .L1691
	r4 = *(u64 *) (r1+0)
	r0 = *(u64 *) (r2+0)
	r2 += 8
	r0 ^= r4
	r4 = r1
	*(u64 *) (r1+0) = r0
	r4 += 8
.L1691:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1690:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1689:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1688:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1687:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1686:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r0 ^= r6
	*(u64 *) (r4+0) = r0
	r2 += 8
	r4 += 8
	if r9 == r2 goto .L1721
.L1723:
	r6 = *(u64 *) (r4+0)
	r7 = *(u64 *) (r2+0)
	r7 ^= r6
	*(u64 *) (r4+0) = r7
	r6 = r4
	r0 = *(u64 *) (r2+8)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+16)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+24)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+32)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+40)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+48)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r0 = *(u64 *) (r2+56)
	r7 = *(u64 *) (r6+8)
	r0 ^= r7
	*(u64 *) (r6+8) = r0
	r6 += 8
	r4 += 64
	r2 += 64
	if r9 != r2 goto .L1723
.L1721:
	r0 = r1
	r2 = r3
	r0 += r5
	r2 -= r5
	if r3 == r5 goto .L1622
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r9+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L1622
	r4 = *(u8 *) (r0+1)
	r3 = *(u8 *) (r9+1)
	r3 ^= r4
	*(u8 *) (r0+1) = r3
	if r2 == 2 goto .L1622
	r5 = *(u8 *) (r0+2)
	r4 = *(u8 *) (r9+2)
	r4 ^= r5
	*(u8 *) (r0+2) = r4
	if r2 == 3 goto .L1622
	r5 = *(u8 *) (r0+3)
	r3 = *(u8 *) (r9+3)
	r3 ^= r5
	*(u8 *) (r0+3) = r3
	if r2 == 4 goto .L1622
	r4 = *(u8 *) (r0+4)
	r5 = *(u8 *) (r9+4)
	r5 ^= r4
	*(u8 *) (r0+4) = r5
	if r2 == 5 goto .L1622
	r4 = *(u8 *) (r0+5)
	r3 = *(u8 *) (r9+5)
	r3 ^= r4
	*(u8 *) (r0+5) = r3
	if r2 == 6 goto .L1622
	r5 = *(u8 *) (r0+6)
	r9 = *(u8 *) (r9+6)
	r9 ^= r5
	*(u8 *) (r0+6) = r9
.L1622:
	r0 = r1
	exit
.L1623:
	r4 = r2
	r9 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1722
	if r3 == 1 goto .L1692
	if r3 == 2 goto .L1693
	if r3 == 3 goto .L1694
	if r3 == 4 goto .L1695
	if r3 == 5 goto .L1696
	if r3 == 6 goto .L1697
	r3 = *(u8 *) (r2+0)
	r0 = *(u8 *) (r1+0)
	r2 += 1
	r3 ^= r0
	r9 += 1
	*(u8 *) (r1+0) = r3
.L1697:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1696:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r9 += 1
	r5 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r5
.L1695:
	r0 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r0
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1694:
	r5 = *(u8 *) (r9+0)
	r0 = *(u8 *) (r2+0)
	r9 += 1
	r0 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r0
.L1693:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	r3 ^= r5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1692:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r5 ^= r0
	*(u8 *) (r9+0) = r5
	r2 += 1
	r9 += 1
	if r4 == r2 goto .L1622
.L1722:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r9+1)
	r3 = *(u8 *) (r2+0)
	r3 ^= r0
	r0 = *(u8 *) (r2+1)
	r0 ^= r5
	*(u8 *) (r9+0) = r3
	*(u8 *) (r9+1) = r0
	r3 = *(u8 *) (r2+2)
	r0 = *(u8 *) (r9+2)
	r3 ^= r0
	r5 = *(u8 *) (r9+3)
	*(u8 *) (r9+2) = r3
	r3 = *(u8 *) (r2+3)
	r3 ^= r5
	r0 = *(u8 *) (r2+4)
	*(u8 *) (r9+3) = r3
	r3 = *(u8 *) (r9+4)
	r0 ^= r3
	r5 = *(u8 *) (r9+5)
	*(u8 *) (r9+4) = r0
	r0 = *(u8 *) (r2+5)
	r0 ^= r5
	r3 = *(u8 *) (r2+6)
	*(u8 *) (r9+5) = r0
	r0 = *(u8 *) (r9+6)
	r3 ^= r0
	r5 = *(u8 *) (r9+7)
	*(u8 *) (r9+6) = r3
	r3 = *(u8 *) (r2+7)
	r3 ^= r5
	*(u8 *) (r9+7) = r3
	r2 += 8
	r9 += 8
	if r4 != r2 goto .L1722
	goto .L1622
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if w0 == 0 goto .L1733
	r0 = r1
.L1728:
	r0 += 1
	r4 = *(u8 *) (r0+0)
	r5 = r0
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1727
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1727
	r0 = r5
	r0 += 2
	r5 = *(u8 *) (r0+0)
	r5 <<= 56
	r5 s>>= 56
	if w5 == 0 goto .L1727
	r0 += 1
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1727
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1727
	r0 += 1
	r5 = *(u8 *) (r0+0)
	r5 <<= 56
	r5 s>>= 56
	if w5 == 0 goto .L1727
	r0 += 1
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1727
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 != 0 goto .L1728
.L1727:
	if r3 == 0 goto .L1730
	r5 = r3
	r4 = r3
	r5 += -1
	r4 &= 7
	if r4 == 0 goto .L1803
	if r4 == 1 goto .L1781
	if r4 == 2 goto .L1782
	if r4 == 3 goto .L1783
	if r4 == 4 goto .L1784
	if r4 == 5 goto .L1785
	if r4 != 6 goto .L1805
.L1786:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1732
	r2 += 1
	r0 += 1
	r3 += -1
.L1785:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1732
	r2 += 1
	r0 += 1
	r3 += -1
.L1784:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1732
	r2 += 1
	r0 += 1
	r3 += -1
.L1783:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1732
	r2 += 1
	r0 += 1
	r3 += -1
.L1782:
	r5 = *(u8 *) (r2+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1732
	r2 += 1
	r0 += 1
	r3 += -1
.L1781:
	r4 = *(u8 *) (r2+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1732
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1730
.L1803:
	r9 = *(u8 *) (r2+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1732
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+1) = r5
	if r5 == 0 goto .L1732
	r4 = *(u8 *) (r2+2)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+2) = r4
	if r4 == 0 goto .L1732
	r9 = *(u8 *) (r2+3)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+3) = r9
	if r9 == 0 goto .L1732
	r5 = *(u8 *) (r2+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+4) = r5
	if r5 == 0 goto .L1732
	r4 = *(u8 *) (r2+5)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+5) = r4
	if r4 == 0 goto .L1732
	r9 = *(u8 *) (r2+6)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+6) = r9
	if r9 == 0 goto .L1732
	r5 = *(u8 *) (r2+7)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+7) = r5
	if r5 == 0 goto .L1732
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1803
.L1730:
	*(u8 *) (r0+0) = 0
.L1732:
	r0 = r1
	exit
.L1805:
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1732
	r2 += 1
	r0 += 1
	r3 = r5
	goto .L1786
.L1733:
	r0 = r1
	goto .L1727
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1806
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1862
	if r0 == 1 goto .L1848
	if r0 == 2 goto .L1849
	if r0 == 3 goto .L1850
	if r0 == 4 goto .L1851
	if r0 == 5 goto .L1852
	if r0 != 6 goto .L1865
.L1853:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1806
	r3 += 1
.L1852:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 != 0 goto .L1866
.L1806:
	r0 = r3
	exit
.L1865:
	r4 = *(u8 *) (r1+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1806
	r3 = 1
	goto .L1853
.L1866:
	r3 += 1
.L1851:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1806
	r3 += 1
.L1850:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1806
	r3 += 1
.L1849:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1806
	r3 += 1
.L1848:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1806
	r3 += 1
	if r2 == r3 goto .L1806
.L1862:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1806
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	r5 <<= 56
	r5 s>>= 56
	if w5 == 0 goto .L1806
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1806
	r3 = r0
	r5 = r1
	r3 += 2
	r5 += r3
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1806
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	r5 <<= 56
	r5 s>>= 56
	if w5 == 0 goto .L1806
	r3 += 1
	r9 = r1
	r9 += r3
	r4 = *(u8 *) (r9+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1806
	r3 += 1
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1806
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	r5 <<= 56
	r5 s>>= 56
	if w5 == 0 goto .L1806
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1862
	goto .L1806
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1872
.L1878:
	r3 = r2
	goto .L1871
.L1870:
	r3 += 1
	if w4 == w5 goto .L1869
.L1871:
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r4 = r9
	r4 s>>= 56
	if r9 != 0 goto .L1870
	r1 += 1
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 != 0 goto .L1878
.L1872:
	r1 = r5
.L1869:
	r0 = r1
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 <<= 32
	r4 = 0
	r2 s>>= 32
	goto .L1882
.L1885:
	r9 = r1
	r1 += 1
	r4 = r9
	if r0 == 0 goto .L1884
.L1882:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r3 = r0
	r3 ^= r2
	r5 = r3;r5 &= 0xffffffff
	r5 += -1
	if r5 s< 0 goto .L1885
	r9 = r4
	r1 += 1
	r4 = r9
	if r0 != 0 goto .L1882
.L1884:
	r0 = r9
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	r0 = *(u8 *) (r2+0)
	r0 <<= 56
	r5 = r0
	r5 s>>= 56
	if r0 == 0 goto .L1897
	r0 = r2
.L1888:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r4 = r0
	r3 <<= 56
	r3 s>>= 56
	if w3 == 0 goto .L1997
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1997
	r0 = r4
	r0 += 2
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1997
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if w3 == 0 goto .L1997
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 == 0 goto .L1997
	r0 += 1
	r4 = *(u8 *) (r0+0)
	r4 <<= 56
	r4 s>>= 56
	if w4 == 0 goto .L1997
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r3 <<= 56
	r3 s>>= 56
	if w3 == 0 goto .L1997
	r0 += 1
	r9 = *(u8 *) (r0+0)
	r9 <<= 56
	r9 s>>= 56
	if w9 != 0 goto .L1888
.L1997:
	r9 = r0
	r9 -= r2
	if r0 == r2 goto .L1897
	r9 += -1
	goto .L1999
.L2001:
	r1 += 1
	if r0 == 0 goto .L2000
.L1999:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if w0 != w5 goto .L2001
	r7 = r1
	r6 = r9
	r0 &= 0xff
	r7 += r9
	r3 = r2
	r4 = r1
	r6 &= 7
	if r6 == 0 goto .L1998
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L1891
	if w4 != w0 goto .L1891
	r4 = r1
	r3 += 1
	r4 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L1891
	if r6 == 1 goto .L1998
	if r6 == 2 goto .L1947
	if r6 == 3 goto .L1948
	if r6 == 4 goto .L1949
	if r6 == 5 goto .L1950
	if r6 == 6 goto .L1951
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1891
	if w4 != w0 goto .L1891
	r4 = r1
	r3 += 1
	r4 += 2
	r0 = *(u8 *) (r1+2)
	if r0 == 0 goto .L1891
.L1951:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1891
	if w6 != w0 goto .L1891
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1891
.L1950:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1891
	if w6 != w0 goto .L1891
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1891
.L1949:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1891
	if w6 != w0 goto .L1891
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1891
.L1948:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1891
	if w6 != w0 goto .L1891
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1891
.L1947:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1891
	if w6 != w0 goto .L1891
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1891
.L1998:
	r6 = *(u8 *) (r3+0)
	if r6 == 0 goto .L1891
	if r4 == r7 goto .L1891
	if w6 != w0 goto .L1891
	r3 += 1
	r0 = *(u8 *) (r4+1)
	r6 = r3
	if r0 == 0 goto .L1891
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1891
	if w8 != w0 goto .L1891
	r0 = *(u8 *) (r4+2)
	r3 += 1
	if r0 == 0 goto .L1891
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1891
	if w8 != w0 goto .L1891
	r3 = r6
	r0 = *(u8 *) (r4+3)
	r3 += 2
	if r0 == 0 goto .L1891
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1891
	if w8 != w0 goto .L1891
	r0 = *(u8 *) (r4+4)
	r3 += 1
	if r0 == 0 goto .L1891
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1891
	if w8 != w0 goto .L1891
	r0 = *(u8 *) (r4+5)
	r3 += 1
	if r0 == 0 goto .L1891
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1891
	if w8 != w0 goto .L1891
	r0 = *(u8 *) (r4+6)
	r3 += 1
	if r0 == 0 goto .L1891
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1891
	if w8 != w0 goto .L1891
	r0 = *(u8 *) (r4+7)
	r3 += 1
	if r0 == 0 goto .L1891
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1891
	if w8 != w0 goto .L1891
	r4 += 8
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 != 0 goto .L1998
.L1891:
	r4 = *(u8 *) (r3+0)
	if r4 == r0 goto .L1897
	r1 += 1
	goto .L1999
.L2000:
	exit
.L1897:
	r0 = r1
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
	r2 = 0x0000000000000000 ll
	if r0 s< 0 goto .L2012
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2006
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s< 0 goto .L2005
.L2006:
	r0 = r6
	exit
.L2012:
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L2006
.L2005:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	r0 = r6
	exit
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r0 = r1
	if r4 == 0 goto .L2013
	if r2 < r4 goto .L2024
	r2 -= r4
	r9 = r1
	r9 += r2
	if r1 > r9 goto .L2024
	r5 = *(u8 *) (r3+0)
	r4 += -1
	r5 <<= 56
	r3 += 1
	r5 s>>= 56
	*(u64 *) (r10+-8) = r3
.L2019:
	r1 = *(u8 *) (r0+0)
	r3 = r0
	r1 <<= 56
	r3 += 1
	r1 s>>= 56
	if w1 == w5 goto .L2088
	r0 = r3
.L2015:
	if r9 >= r0 goto .L2019
.L2024:
	r0 = 0
.L2013:
	exit
.L2088:
	r2 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L2013
.L2018:
	r7 = r3
	r6 = r4
	r1 = r3
	r7 += r4
	r6 &= 7
	if r6 == 0 goto .L2078
	if r6 == 1 goto .L2062
	if r6 == 2 goto .L2063
	if r6 == 3 goto .L2064
	if r6 == 4 goto .L2065
	if r6 == 5 goto .L2066
	if r6 == 6 goto .L2067
	r1 = *(u8 *) (r3+0)
	r6 = *(u8 *) (r2+0)
	if r6 != r1 goto .L2077
	r1 = r3
	r2 += 1
	r1 += 1
.L2067:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2077
	r1 += 1
	r2 += 1
.L2066:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2077
	r1 += 1
	r2 += 1
.L2065:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2077
	r1 += 1
	r2 += 1
.L2064:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2077
	r1 += 1
	r2 += 1
.L2063:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2077
	r1 += 1
	r2 += 1
.L2062:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2077
	r1 += 1
	r2 += 1
	if r1 == r7 goto .L2089
.L2078:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2077
	r6 = *(u8 *) (r1+1)
	r8 = *(u8 *) (r2+1)
	if r8 != r6 goto .L2077
	r6 = *(u8 *) (r1+2)
	r8 = *(u8 *) (r2+2)
	if r8 != r6 goto .L2077
	r6 = *(u8 *) (r1+3)
	r8 = *(u8 *) (r2+3)
	if r8 != r6 goto .L2077
	r6 = *(u8 *) (r1+4)
	r8 = *(u8 *) (r2+4)
	if r8 != r6 goto .L2077
	r6 = *(u8 *) (r1+5)
	r8 = *(u8 *) (r2+5)
	if r8 != r6 goto .L2077
	r6 = *(u8 *) (r1+6)
	r8 = *(u8 *) (r2+6)
	if r8 != r6 goto .L2077
	r6 = *(u8 *) (r1+7)
	r8 = *(u8 *) (r2+7)
	if r8 != r6 goto .L2077
	r1 += 8
	r2 += 8
	if r1 != r7 goto .L2078
	exit
.L2077:
	if r3 > r9 goto .L2024
	r2 = *(u8 *) (r3+0)
	r0 = r3
	r2 <<= 56
	r0 += 1
	r2 s>>= 56
	if w2 != w5 goto .L2015
	r7 = r3
	r2 = *(u64 *) (r10+-8)
	r3 = r0
	r0 = r7
	goto .L2018
.L2089:
	exit
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r8 = r2
	*(u64 *) (r10+-8) = r2
	r7 = r1
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s< 0 goto .L2124
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L2125
	*(u64 *) (r10+-16) = 0
.L2093:
	r8 = 0
	r6 = 0x3fe0000000000000 ll
.L2099:
	r1 = r7
	r2 = r6
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	r8 += 1
	r2 = r6
	r8 <<= 32
	r1 = r7
	r8 s>>= 32
	r9 = r8
	r9 += 1
	r9 <<= 32
	if r0 s< 0 goto .L2100
	r9 s>>= 32
	r8 = r9
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	r2 = r6
	r3 = r0
	r1 = r7
	r0 = r8
	r0 += 1
	r0 <<= 32
	if r3 s< 0 goto .L2100
	r0 s>>= 32
	r8 = r0
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	r5 = r8
	r2 = r6
	r5 += 1
	r1 = r7
	r5 <<= 32
	if r0 s< 0 goto .L2100
	r5 s>>= 32
	r8 = r5
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L2099
.L2100:
	r1 = *(u64 *) (r10+-8)
	*(u32 *) (r1+0) = r8
	r2 = *(u64 *) (r10+-16)
	if r2 == 0 goto .L2106
	r9 = -9223372036854775808 ll
	r0 = r7
	r0 ^= r9
	exit
.L2125:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s>= 0 goto .L2096
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	if r0 != 0 goto .L2105
.L2096:
	r0 = *(u64 *) (r10+-8)
	*(u32 *) (r0+0) = 0
	r0 = r7
	exit
.L2124:
	r3 = -9223372036854775808 ll
	r6 = r7
	r2 = 0xbff0000000000000 ll
	r6 ^= r3
	r1 = r7
	call	__ledf2
	if r0 s> 0 goto .L2126
	r7 = r6
	*(u64 *) (r10+-16) = 1
	goto .L2093
.L2106:
	r0 = r7
	exit
.L2126:
	r2 = 0xbfe0000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s> 0 goto .L2103
	*(u32 *) (r8+0) = 0
	r0 = r7
	exit
.L2103:
	*(u64 *) (r10+-16) = 1
.L2094:
	r7 = r6
	r8 = 0
	r6 = 0x3fe0000000000000 ll
.L2101:
	r2 = r7
	r1 = r7
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	r8 += -1
	r2 = r7
	r8 <<= 32
	r1 = r7
	r8 s>>= 32
	r5 = r8
	r5 += -1
	r5 <<= 32
	if r0 s>= 0 goto .L2100
	r5 s>>= 32
	r8 = r5
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	r2 = r7
	r9 = r0
	r1 = r7
	r0 = r8
	r0 += -1
	r0 <<= 32
	if r9 s>= 0 goto .L2100
	r0 s>>= 32
	r8 = r0
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	r4 = r8
	r2 = r7
	r4 += -1
	r1 = r7
	r4 <<= 32
	if r0 s>= 0 goto .L2100
	r4 s>>= 32
	r8 = r4
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	if r0 s< 0 goto .L2101
	goto .L2100
.L2105:
	r6 = r7
	*(u64 *) (r10+-16) = 0
	goto .L2094
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L2130
	r0 = 0
	r5 = r0
.L2129:
	r9 = r2
	r1 = r3
	r4 = r3
	r9 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L2146
	r4 = r9
	r1 &= 1
	r2 = r3
	r1 = -r1
	r4 += r9
	r1 &= r9
	r2 >>= 2
	r5 += r1
	if r2 == 0 goto .L2146
	r9 = r4
	r2 &= 1
	r1 = r3
	r2 = -r2
	r9 += r4
	r2 &= r4
	r1 >>= 3
	r0 += r2
	if r1 == 0 goto .L2146
	r4 = r9
	r1 &= 1
	r2 = r3
	r1 = -r1
	r4 += r9
	r1 &= r9
	r2 >>= 4
	r5 += r1
	if r2 == 0 goto .L2146
	r9 = r4
	r2 &= 1
	r1 = r3
	r2 = -r2
	r9 += r4
	r2 &= r4
	r1 >>= 5
	r0 += r2
	if r1 == 0 goto .L2146
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r2 = r9
	r5 += r1
	r2 += r9
	r1 = r3
	r1 >>= 6
	if r1 == 0 goto .L2146
	r4 = r2
	r9 = r3
	r1 &= 1
	r4 += r2
	r1 = -r1
	r9 >>= 7
	r1 &= r2
	r0 += r1
	if r9 == 0 goto .L2146
	r9 &= 1
	r2 = r4
	r9 = -r9
	r2 += r4
	r9 &= r4
	r3 >>= 8
	r5 += r9
	if r3 != 0 goto .L2129
.L2146:
	r0 += r5
	exit
.L2130:
	r0 = r1
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1;r0 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	if w2 >= w1 goto .L2193
	r5 = 32
	r1 = 1
.L2148:
	if w4 s< 0 goto .L2153
	r9 = r4
	r1 += r1
	r9 += r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r9;r4 &= 0xffffffff
	if w9 >= w0 goto .L2150
	r5 += -1
	r2 = r5;r2 &= 0xffffffff
	if w4 s< 0 goto .L2153
	r4 += r4
	r1 += r1
	r9 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w9 >= w0 goto .L2150
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	if w4 s< 0 goto .L2153
	r4 += r4
	r1 += r1
	r5 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w5 >= w0 goto .L2150
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	if w4 s< 0 goto .L2153
	r4 += r4
	r1 += r1
	r2 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w2 >= w0 goto .L2150
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if w4 s< 0 goto .L2153
	r4 += r4
	r1 += r1
	r5 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w5 >= w0 goto .L2150
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	if w4 s< 0 goto .L2153
	r4 += r4
	r1 += r1
	r9 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w9 >= w0 goto .L2150
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	if w4 s< 0 goto .L2153
	r4 += r4
	r1 += r1
	r5 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w5 >= w0 goto .L2150
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	if w4 s< 0 goto .L2153
	r4 += r4
	r1 += r1
	r2 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w2 >= w0 goto .L2150
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if w9 != 0 goto .L2148
.L2151:
	if r3 != 0 goto .L2173
	r0 = r5
	exit
.L2173:
	exit
.L2150:
	if r1 == 0 goto .L2167
.L2153:
	r5 = 0
	r6 = 1
	r8 = r5
	r7 = r5
.L2160:
	r2 = r0
	r9 = r6;r9 &= 0xff
	r2 -= r4
	r2 = r2;r2 &= 0xffffffff
	if w0 >= w4 goto .L2154
	r9 = r8;r9 &= 0xff
.L2154:
	if w0 >= w4 goto .L2157
	r2 = r0
.L2157:
	r0 = r2;r0 &= 0xffffffff
	if r9 == 0 goto .L2158
	r9 = r1
.L2159:
	r5 |= r9
	r1 >>= 1
	r5 = r5;r5 &= 0xffffffff
	r4 >>= 1
	if r1 != 0 goto .L2160
	goto .L2151
.L2158:
	r9 = r7
	goto .L2159
.L2193:
	r1 = r0
	r2 = 1
	r1 -= r4
	r9 = r1;r9 &= 0xffffffff
	if w4 <= w0 goto .L2162
	r2 = 0
.L2162:
	r5 = r2;r5 &= 0xff
	if w4 > w0 goto .L2165
	r0 = r9
.L2165:
	r0 = r0;r0 &= 0xffffffff
	goto .L2151
.L2167:
	r5 = r1
	goto .L2151
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 <<= 56
	r2 = r1
	r1 s>>= 63
	r2 s>>= 56
	r0 = r2
	r0 ^= r1
	if w2 == w1 goto .L2196
	r0 <<= 8
	r1 = r0;r1 &= 0xffffffff
	call	__clzdi2
	r1 = -4294967296 ll
	r0 = r0;r0 &= 0xffffffff
	r0 += -32
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2196:
	r0 = 7
	exit
	.size	__clrsbqi2, .-__clrsbqi2
	.align	3
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	r2 = r1
	r0 = r1
	r2 s>>= 63
	r1 ^= r2
	if r0 == r2 goto .L2199
	call	__clzdi2
	r1 = -4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L2199:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if w1 == 0 goto .L2203
	r0 = 0
.L2202:
	r1 = r3
	r4 = r2
	r3 &= 1
	r4 += r2
	r3 = -r3
	r1 >>= 1
	r3 &= r2
	r9 = r4;r9 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2219
	r2 = r1
	r5 = r9
	r1 &= 1
	r5 += r9
	r1 = -r1
	r2 >>= 1
	r1 &= r9
	r5 = r5;r5 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2201
	r3 = r2
	r1 = r5
	r2 &= 1
	r1 += r5
	r2 = -r2
	r3 >>= 1
	r2 &= r5
	r4 = r1;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2201
	r9 = r3
	r5 = r4
	r3 &= 1
	r5 += r4
	r3 = -r3
	r9 >>= 1
	r3 &= r4
	r5 = r5;r5 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r9 == 0 goto .L2201
	r3 = r9
	r1 = r9
	r2 = r5
	r1 &= 1
	r2 += r5
	r1 = -r1
	r3 >>= 1
	r1 &= r5
	r9 = r2;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2201
	r1 = r3
	r4 = r9
	r3 &= 1
	r4 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r2 = r4;r2 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2201
	r3 = r1
	r5 = r2
	r1 &= 1
	r5 += r2
	r1 = -r1
	r3 >>= 1
	r1 &= r2
	r9 = r5;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2201
	r1 = r3
	r4 = r9
	r1 &= 1
	r4 += r9
	r1 = -r1
	r3 >>= 1
	r1 &= r9
	r2 = r4;r2 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L2202
	exit
.L2203:
	r0 = r3
.L2201:
	exit
.L2219:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r6 = r3
	r5 &= -8
	r6 >>= 3
	r5 = r5;r5 &= 0xffffffff
	if r1 < r2 goto .L2221
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2408
.L2221:
	if r6 == 0 goto .L2224
	r6 <<= 3
	r0 = r2
	r7 = r6
	r4 = r1
	r7 += -8
	r6 += r2
	r7 >>= 3
	r7 += 1
	r7 &= 7
	if r7 == 0 goto .L2401
	if r7 == 1 goto .L2341
	if r7 == 2 goto .L2342
	if r7 == 3 goto .L2343
	if r7 == 4 goto .L2344
	if r7 == 5 goto .L2345
	if r7 == 6 goto .L2346
	r9 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r1+0) = r9
	r4 += 8
.L2346:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2345:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2344:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2343:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2342:
	r7 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r7
	r0 += 8
.L2341:
	r7 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r7
	r0 += 8
	r4 += 8
	if r0 == r6 goto .L2398
.L2401:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r7 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r7
	r9 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r9
	r7 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r7
	r9 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r9
	r7 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r7
	r9 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r9
	r7 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r7
	r0 += 64
	r4 += 64
	if r0 != r6 goto .L2401
.L2398:
	if w3 <= w5 goto .L2409
	r0 = r3
	r0 -= r5
	r9 = r0;r9 &= 0xffffffff
	r4 = r9
	r4 += -1
	if w4 <= 7 goto .L2407
	r7 = r5
	r6 = r2
	r7 += 1
	r6 += r7
	r4 = r1
	r0 = r2
	r4 += r5
	r0 += r5
	r7 = r4
	r7 -= r6
	r6 = 1
	if r7 <= 6 goto .L2410
.L2228:
	r6 &= 1
	if w6 == 0 goto .L2227
	r7 = r0
	r6 = 1
	r7 |= r4
	r7 &= 7
	if r7 != 0 goto .L2411
.L2229:
	r6 &= 1
	if w6 == 0 goto .L2227
	r8 = r9
	r7 = r0
	r8 >>= 3
	r8 <<= 3
	r6 = r8
	r7 += r8
	r6 += -8
	r6 >>= 3
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2400
	if r6 == 1 goto .L2347
	if r6 == 2 goto .L2348
	if r6 == 3 goto .L2349
	if r6 == 4 goto .L2350
	if r6 == 5 goto .L2351
	if r6 == 6 goto .L2352
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2352:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2351:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2350:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2349:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2348:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2347:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2397
.L2400:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r6 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r6
	r6 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r6
	r6 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r6
	r6 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r6
	r6 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r6
	r6 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r6
	r6 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r6
	r0 += 64
	r4 += 64
	if r0 != r7 goto .L2400
.L2397:
	r4 = r9
	r9 &= 7
	r4 &= -8
	r5 += r4
	r5 = r5;r5 &= 0xffffffff
	if w9 == 0 goto .L2220
	r9 = r1
	r0 = r2
	r9 += r5
	r0 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r9 = r5
	r9 += 1
	r4 = r9;r4 &= 0xffffffff
	if w9 >= w3 goto .L2220
	r6 = r2
	r0 = r1
	r6 += r4
	r0 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r0+0) = r9
	r4 = r5
	r4 += 2
	r0 = r4;r0 &= 0xffffffff
	if w3 <= w0 goto .L2220
	r6 = r2
	r9 = r1
	r6 += r0
	r9 += r0
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r4
	r0 = r5
	r0 += 3
	r9 = r0;r9 &= 0xffffffff
	if w0 >= w3 goto .L2220
	r6 = r2
	r0 = r1
	r6 += r9
	r0 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += 4
	r0 = r9;r0 &= 0xffffffff
	if w3 <= w0 goto .L2220
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 5
	r4 = r0;r4 &= 0xffffffff
	if w0 >= w3 goto .L2220
	r6 = r2
	r9 = r1
	r6 += r4
	r9 += r4
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r0
	r5 += 6
	r5 = r5;r5 &= 0xffffffff
	if w3 <= w5 goto .L2220
	r2 += r5
	r1 += r5
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2408:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2220
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2402
	if r3 == 1 goto .L2335
	if r3 == 2 goto .L2336
	if r3 == 3 goto .L2337
	if r3 == 4 goto .L2338
	if r3 == 5 goto .L2339
	if r3 == 6 goto .L2340
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2340:
	r5 = r1
	r3 = r2
	r5 += r9
	r3 += r9
	r9 += -1
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
.L2339:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2338:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
.L2337:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2336:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2335:
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2412
.L2402:
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r0 = *(u8 *) (r6+0)
	r6 = r2
	*(u8 *) (r5+0) = r0
	r6 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r6+-1)
	r6 = r2
	*(u8 *) (r5+-1) = r3
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+-2)
	r5 += r9
	*(u8 *) (r5+-2) = r4
	r3 = r2
	r6 = r1
	r3 += r9
	r6 += r9
	r0 = *(u8 *) (r3+-3)
	r5 = r1
	*(u8 *) (r6+-3) = r0
	r5 += r9
	r6 = r2
	r6 += r9
	r4 = *(u8 *) (r6+-4)
	*(u8 *) (r5+-4) = r4
	r5 = r1
	r5 += r9
	r0 = r9
	r6 = r2
	r0 += -6
	r6 += r9
	r3 = *(u8 *) (r6+-5)
	*(u8 *) (r5+-5) = r3
	r5 = r1
	r5 += r0
	r6 = r2
	r6 += r0
	r0 = r2
	r4 = *(u8 *) (r6+0)
	r0 += r9
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r0+-7)
	r5 += r9
	*(u8 *) (r5+-7) = r3
	r9 += -8
	if r9 != -1 goto .L2402
.L2220:
	exit
.L2410:
	r6 = 0
	goto .L2228
.L2411:
	r6 = 0
	goto .L2229
.L2224:
	if r3 == 0 goto .L2220
.L2407:
	r1 += r5
	r0 = r2
	r4 = r1
	r0 += r5
.L2227:
	r3 += -1
	r3 -= r5
	r2 += 1
	r1 = r3;r1 &= 0xffffffff
	r2 += r5
	r1 += r2
	r3 = r1
	r3 -= r0
	r3 &= 7
	if r3 == 0 goto .L2399
	if r3 == 1 goto .L2353
	if r3 == 2 goto .L2354
	if r3 == 3 goto .L2355
	if r3 == 4 goto .L2356
	if r3 == 5 goto .L2357
	if r3 == 6 goto .L2358
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2358:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2357:
	r2 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r0 += 1
.L2356:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2355:
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2354:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2353:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r2
	r0 += 1
	r4 += 1
	if r0 == r1 goto .L2413
.L2399:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
	r9 = *(u8 *) (r0+1)
	*(u8 *) (r4+1) = r9
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r5
	r2 = *(u8 *) (r0+3)
	*(u8 *) (r4+3) = r2
	r3 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r3
	r9 = *(u8 *) (r0+5)
	*(u8 *) (r4+5) = r9
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r4+6) = r5
	r2 = *(u8 *) (r0+7)
	*(u8 *) (r4+7) = r2
	r0 += 8
	r4 += 8
	if r0 != r1 goto .L2399
	exit
.L2409:
	exit
.L2412:
	exit
.L2413:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r1 < r2 goto .L2415
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2560
.L2415:
	if r9 == 0 goto .L2418
	r6 = r9
	r6 += -1
	if w6 <= 6 goto .L2419
	r0 = r2
	r4 = 1
	r0 |= r1
	r0 &= 7
	if r0 != 0 goto .L2561
.L2420:
	r4 &= 1
	if w4 == 0 goto .L2419
	r6 = r2
	r5 = r1
	r6 += 2
	r0 = 1
	r5 -= r6
	if r5 <= 4 goto .L2562
.L2421:
	r0 &= 1
	if w0 == 0 goto .L2419
	r6 = r3
	r0 = r2
	r6 >>= 3
	r4 = r1
	r7 = r6
	r7 <<= 3
	r5 = r7
	r7 += r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2555
	if r5 == 1 goto .L2512
	if r5 == 2 goto .L2513
	if r5 == 3 goto .L2514
	if r5 == 4 goto .L2515
	if r5 == 5 goto .L2516
	if r5 == 6 goto .L2517
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r1+0) = r4
	r4 = r1
	r4 += 8
.L2517:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2516:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2515:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2514:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2513:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2512:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2553
.L2555:
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
	r5 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r5
	r0 += 64
	r4 += 64
	if r0 != r7 goto .L2555
.L2553:
	r6 <<= 2
	if w9 == w6 goto .L2418
	r0 = r6
	r0 += r6
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r0 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r0
	r0 = r6
	r0 += 1
	if w9 <= w0 goto .L2418
	r0 += r0
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r0 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r0
	r6 += 2
	if w9 <= w6 goto .L2418
	r6 += r6
	r9 = r2
	r5 = r1
	r9 += r6
	r5 += r6
	r4 = *(u16 *) (r9+0)
	*(u16 *) (r5+0) = r4
.L2418:
	r0 = r3
	r0 &= 1
	if w0 == 0 goto .L2414
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2560:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2414
	r5 = r9
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2556
	if r5 == 1 goto .L2506
	if r5 == 2 goto .L2507
	if r5 == 3 goto .L2508
	if r5 == 4 goto .L2509
	if r5 == 5 goto .L2510
	if r5 == 6 goto .L2511
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2511:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2510:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
.L2509:
	r4 = r1
	r3 = r2
	r4 += r9
	r3 += r9
	r9 += -1
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r4+0) = r5
.L2508:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
.L2507:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2506:
	r5 = r2
	r3 = r1
	r5 += r9
	r3 += r9
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r3+0) = r0
	r9 += -1
	if r9 == -1 goto .L2563
.L2556:
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r0 = *(u8 *) (r6+0)
	r6 = r2
	*(u8 *) (r5+0) = r0
	r6 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r6+-1)
	r6 = r2
	*(u8 *) (r5+-1) = r3
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+-2)
	r5 += r9
	*(u8 *) (r5+-2) = r4
	r3 = r2
	r6 = r1
	r3 += r9
	r6 += r9
	r0 = *(u8 *) (r3+-3)
	r5 = r1
	*(u8 *) (r6+-3) = r0
	r5 += r9
	r6 = r2
	r6 += r9
	r4 = *(u8 *) (r6+-4)
	*(u8 *) (r5+-4) = r4
	r5 = r1
	r5 += r9
	r0 = r9
	r6 = r2
	r0 += -6
	r6 += r9
	r3 = *(u8 *) (r6+-5)
	*(u8 *) (r5+-5) = r3
	r5 = r1
	r5 += r0
	r6 = r2
	r6 += r0
	r0 = r2
	r4 = *(u8 *) (r6+0)
	r0 += r9
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r0+-7)
	r5 += r9
	*(u8 *) (r5+-7) = r3
	r9 += -8
	if r9 != -1 goto .L2556
.L2414:
	exit
.L2561:
	r4 = 0
	goto .L2420
.L2562:
	r0 = 0
	goto .L2421
.L2419:
	r9 += r9
	r0 = r2
	r6 = r9
	r4 = r1
	r9 += -2
	r6 += r2
	r9 >>= 1
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L2554
	if r9 == 1 goto .L2518
	if r9 == 2 goto .L2519
	if r9 == 3 goto .L2520
	if r9 == 4 goto .L2521
	if r9 == 5 goto .L2522
	if r9 == 6 goto .L2523
	r0 = *(u16 *) (r2+0)
	r4 += 2
	*(u16 *) (r1+0) = r0
	r0 = r2
	r0 += 2
.L2523:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2522:
	r9 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r9
	r0 += 2
.L2521:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2520:
	r9 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r9
	r0 += 2
.L2519:
	r5 = *(u16 *) (r0+0)
	r4 += 2
	*(u16 *) (r4+-2) = r5
	r0 += 2
.L2518:
	r9 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r9
	r0 += 2
	r4 += 2
	if r0 == r6 goto .L2418
.L2554:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r9 = *(u16 *) (r0+2)
	*(u16 *) (r4+2) = r9
	r5 = *(u16 *) (r0+4)
	*(u16 *) (r4+4) = r5
	r9 = *(u16 *) (r0+6)
	*(u16 *) (r4+6) = r9
	r5 = *(u16 *) (r0+8)
	*(u16 *) (r4+8) = r5
	r9 = *(u16 *) (r0+10)
	*(u16 *) (r4+10) = r9
	r5 = *(u16 *) (r0+12)
	*(u16 *) (r4+12) = r5
	r9 = *(u16 *) (r0+14)
	*(u16 *) (r4+14) = r9
	r0 += 16
	r4 += 16
	if r0 != r6 goto .L2554
	goto .L2418
.L2563:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r5 = r3
	r9 = r3
	r5 &= -4
	r9 >>= 2
	r5 = r5;r5 &= 0xffffffff
	if r1 < r2 goto .L2565
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2802
.L2565:
	if r9 == 0 goto .L2803
	r6 = r9
	r6 += -1
	if w6 <= 8 goto .L2570
	r0 = r1
	r4 = 1
	r0 |= r2
	r0 &= 7
	if r0 != 0 goto .L2804
.L2571:
	r4 &= 1
	if w4 == 0 goto .L2570
	r6 = r2
	r4 = r1
	r6 += 4
	r4 ^= r6
	r0 = r4
	r0 = -r0
	r0 |= r4
	if r0 s>= 0 goto .L2570
	r7 = r3
	r0 = r2
	r7 >>= 3
	r4 = r1
	r8 = r7
	r8 <<= 3
	r6 = r8
	r8 += r2
	r6 += -8
	r6 >>= 3
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2794
	if r6 == 1 goto .L2717
	if r6 == 2 goto .L2718
	if r6 == 3 goto .L2719
	if r6 == 4 goto .L2720
	if r6 == 5 goto .L2721
	if r6 == 6 goto .L2722
	r4 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r1+0) = r4
	r4 = r1
	r4 += 8
.L2722:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2721:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2720:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2719:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2718:
	r6 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r6
	r0 += 8
.L2717:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r0 += 8
	r4 += 8
	if r0 == r8 goto .L2790
.L2794:
	r6 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r6
	r6 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r6
	r6 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r6
	r6 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r6
	r6 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r6
	r6 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r6
	r6 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r6
	r6 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r6
	r0 += 64
	r4 += 64
	if r0 != r8 goto .L2794
.L2790:
	r7 <<= 1
	if w9 == w7 goto .L2575
	r7 <<= 2
	r9 = r2
	r0 = r1
	r9 += r7
	r0 += r7
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r0+0) = r4
.L2575:
	if w3 <= w5 goto .L2564
	r9 = r3
	r9 -= r5
	r6 = r9;r6 &= 0xffffffff
	r0 = r6
	r0 += -1
	if w0 <= 7 goto .L2801
	r8 = r5
	r7 = r2
	r8 += 1
	r7 += r8
	r4 = r1
	r0 = r2
	r4 += r5
	r0 += r5
	r8 = r4
	r8 -= r7
	r7 = 1
	if r8 <= 6 goto .L2805
.L2576:
	r7 &= 1
	if w7 == 0 goto .L2569
	r8 = r0
	r7 = 1
	r8 |= r4
	r8 &= 7
	if r8 != 0 goto .L2806
.L2577:
	r7 &= 1
	if w7 == 0 goto .L2569
	r8 = r6
	r7 = r0
	r8 >>= 3
	r8 <<= 3
	r9 = r8
	r7 += r8
	r9 += -8
	r9 >>= 3
	r9 += 1
	r9 &= 7
	if r9 == 0 goto .L2792
	if r9 == 1 goto .L2729
	if r9 == 2 goto .L2730
	if r9 == 3 goto .L2731
	if r9 == 4 goto .L2732
	if r9 == 5 goto .L2733
	if r9 == 6 goto .L2734
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2734:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2733:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2732:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2731:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2730:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2729:
	r8 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r8
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2789
.L2792:
	r8 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r8
	r9 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r9
	r8 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r8
	r9 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r9
	r8 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r8
	r9 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r9
	r8 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r8
	r8 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r8
	r0 += 64
	r4 += 64
	if r0 != r7 goto .L2792
.L2789:
	r4 = r6
	r6 &= 7
	r4 &= -8
	r5 += r4
	r5 = r5;r5 &= 0xffffffff
	if w6 == 0 goto .L2564
	r9 = r1
	r0 = r2
	r9 += r5
	r0 += r5
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r4
	r9 = r5
	r9 += 1
	r4 = r9;r4 &= 0xffffffff
	if w9 >= w3 goto .L2564
	r6 = r2
	r0 = r1
	r6 += r4
	r0 += r4
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r0+0) = r9
	r4 = r5
	r4 += 2
	r0 = r4;r0 &= 0xffffffff
	if w3 <= w0 goto .L2564
	r6 = r2
	r9 = r1
	r6 += r0
	r9 += r0
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r4
	r0 = r5
	r0 += 3
	r9 = r0;r9 &= 0xffffffff
	if w0 >= w3 goto .L2564
	r6 = r2
	r0 = r1
	r6 += r9
	r0 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r0+0) = r4
	r9 = r5
	r9 += 4
	r0 = r9;r0 &= 0xffffffff
	if w3 <= w0 goto .L2564
	r6 = r2
	r4 = r1
	r6 += r0
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 = r5
	r0 += 5
	r4 = r0;r4 &= 0xffffffff
	if w0 >= w3 goto .L2564
	r6 = r2
	r9 = r1
	r6 += r4
	r9 += r4
	r0 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r0
	r5 += 6
	r5 = r5;r5 &= 0xffffffff
	if w3 <= w5 goto .L2564
	r2 += r5
	r1 += r5
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2802:
	r4 = r3
	r4 += -1
	r9 = r4;r9 &= 0xffffffff
	if r3 == 0 goto .L2564
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2795
	if r3 == 1 goto .L2711
	if r3 == 2 goto .L2712
	if r3 == 3 goto .L2713
	if r3 == 4 goto .L2714
	if r3 == 5 goto .L2715
	if r3 == 6 goto .L2716
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2716:
	r5 = r1
	r3 = r2
	r5 += r9
	r3 += r9
	r9 += -1
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
.L2715:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2714:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
.L2713:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2712:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2711:
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2807
.L2795:
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r0 = *(u8 *) (r6+0)
	r6 = r2
	*(u8 *) (r5+0) = r0
	r6 += r9
	r5 = r1
	r5 += r9
	r3 = *(u8 *) (r6+-1)
	r6 = r2
	*(u8 *) (r5+-1) = r3
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+-2)
	r5 += r9
	*(u8 *) (r5+-2) = r4
	r3 = r2
	r6 = r1
	r3 += r9
	r6 += r9
	r0 = *(u8 *) (r3+-3)
	r5 = r1
	*(u8 *) (r6+-3) = r0
	r5 += r9
	r6 = r2
	r6 += r9
	r4 = *(u8 *) (r6+-4)
	*(u8 *) (r5+-4) = r4
	r5 = r1
	r5 += r9
	r0 = r9
	r6 = r2
	r0 += -6
	r6 += r9
	r3 = *(u8 *) (r6+-5)
	*(u8 *) (r5+-5) = r3
	r5 = r1
	r5 += r0
	r6 = r2
	r6 += r0
	r0 = r2
	r4 = *(u8 *) (r6+0)
	r0 += r9
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r0+-7)
	r5 += r9
	*(u8 *) (r5+-7) = r3
	r9 += -8
	if r9 != -1 goto .L2795
.L2564:
	exit
.L2804:
	r4 = 0
	goto .L2571
.L2805:
	r7 = 0
	goto .L2576
.L2806:
	r7 = 0
	goto .L2577
.L2570:
	r9 <<= 2
	r0 = r2
	r6 = r9
	r4 = r1
	r6 += -4
	r9 += r2
	r6 >>= 2
	r6 += 1
	r6 &= 7
	if r6 == 0 goto .L2793
	if r6 == 1 goto .L2723
	if r6 == 2 goto .L2724
	if r6 == 3 goto .L2725
	if r6 == 4 goto .L2726
	if r6 == 5 goto .L2727
	if r6 == 6 goto .L2728
	r0 = *(u32 *) (r2+0)
	r4 += 4
	*(u32 *) (r1+0) = r0
	r0 = r2
	r0 += 4
.L2728:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2727:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2726:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2725:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2724:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2723:
	r6 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r6
	r0 += 4
	r4 += 4
	if r0 == r9 goto .L2575
.L2793:
	r6 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r6
	r6 = *(u32 *) (r0+4)
	*(u32 *) (r4+4) = r6
	r6 = *(u32 *) (r0+8)
	*(u32 *) (r4+8) = r6
	r6 = *(u32 *) (r0+12)
	*(u32 *) (r4+12) = r6
	r6 = *(u32 *) (r0+16)
	*(u32 *) (r4+16) = r6
	r6 = *(u32 *) (r0+20)
	*(u32 *) (r4+20) = r6
	r6 = *(u32 *) (r0+24)
	*(u32 *) (r4+24) = r6
	r6 = *(u32 *) (r0+28)
	*(u32 *) (r4+28) = r6
	r0 += 32
	r4 += 32
	if r0 != r9 goto .L2793
	goto .L2575
.L2803:
	if r3 == 0 goto .L2564
.L2801:
	r1 += r5
	r0 = r2
	r4 = r1
	r0 += r5
.L2569:
	r3 += -1
	r3 -= r5
	r2 += 1
	r1 = r3;r1 &= 0xffffffff
	r2 += r5
	r1 += r2
	r3 = r1
	r3 -= r0
	r3 &= 7
	if r3 == 0 goto .L2791
	if r3 == 1 goto .L2735
	if r3 == 2 goto .L2736
	if r3 == 3 goto .L2737
	if r3 == 4 goto .L2738
	if r3 == 5 goto .L2739
	if r3 == 6 goto .L2740
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2740:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2739:
	r2 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r0 += 1
.L2738:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2737:
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2736:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2735:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r2
	r0 += 1
	r4 += 1
	if r0 == r1 goto .L2808
.L2791:
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
	r9 = *(u8 *) (r0+1)
	*(u8 *) (r4+1) = r9
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r5
	r2 = *(u8 *) (r0+3)
	*(u8 *) (r4+3) = r2
	r3 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r3
	r9 = *(u8 *) (r0+5)
	*(u8 *) (r4+5) = r9
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r4+6) = r5
	r2 = *(u8 *) (r0+7)
	*(u8 *) (r4+7) = r2
	r0 += 8
	r4 += 8
	if r0 != r1 goto .L2791
	exit
.L2807:
	exit
.L2808:
	exit
	.size	__cmovw, .-__cmovw
	.align	3
	.global	__modi
	.type	__modi, @function
__modi:
	r1 <<= 32
	r2 <<= 32
	r1 s>>= 32
	r2 s>>= 32
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
	r2 <<= 32
	r0 >>= 15
	if r0 != 0 goto .L2818
	r0 = r2
	r0 >>= 46
	if r0 != 0 goto .L2817
	r3 = r2
	r3 >>= 45
	if w3 != 0 goto .L2819
	r4 = r2
	r4 >>= 44
	if w4 != 0 goto .L2820
	r5 = r2
	r5 >>= 43
	if w5 != 0 goto .L2821
	r9 = r2
	r9 >>= 42
	if w9 != 0 goto .L2822
	r0 = r2
	r0 >>= 41
	if w0 != 0 goto .L2823
	r3 = r2
	r3 >>= 40
	if w3 != 0 goto .L2824
	r4 = r2
	r4 >>= 39
	if w4 != 0 goto .L2825
	r5 = r2
	r5 >>= 38
	if w5 != 0 goto .L2826
	r9 = r2
	r9 >>= 37
	if w9 != 0 goto .L2827
	r0 = r2
	r0 >>= 36
	if w0 != 0 goto .L2828
	r3 = r2
	r3 >>= 35
	if w3 != 0 goto .L2829
	r4 = r2
	r4 >>= 34
	if w4 != 0 goto .L2830
	r2 >>= 33
	if w2 != 0 goto .L2831
	r0 = 16
	if r1 != 0 goto .L2834
.L2817:
	exit
.L2818:
	r0 = 0
	exit
.L2829:
	r0 = 12
	exit
.L2834:
	r0 = 15
	exit
.L2819:
	r0 = 2
	exit
.L2820:
	r0 = 3
	exit
.L2821:
	r0 = 4
	exit
.L2822:
	r0 = 5
	exit
.L2823:
	r0 = 6
	exit
.L2824:
	r0 = 7
	exit
.L2825:
	r0 = 8
	exit
.L2826:
	r0 = 9
	exit
.L2827:
	r0 = 10
	exit
.L2828:
	r0 = 11
	exit
.L2830:
	r0 = 13
	exit
.L2831:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if w1 != 0 goto .L2838
	r1 = r0
	r1 &= 2
	if w1 != 0 goto .L2839
	r2 = r0
	r2 &= 4
	if w2 != 0 goto .L2840
	r3 = r0
	r3 &= 8
	if w3 != 0 goto .L2841
	r4 = r0
	r4 &= 16
	if w4 != 0 goto .L2842
	r5 = r0
	r5 &= 32
	if w5 != 0 goto .L2843
	r9 = r0
	r9 &= 64
	if w9 != 0 goto .L2844
	r1 = r0
	r1 &= 128
	if w1 != 0 goto .L2845
	r2 = r0
	r2 &= 256
	if w2 != 0 goto .L2846
	r3 = r0
	r3 &= 512
	if w3 != 0 goto .L2847
	r4 = r0
	r4 &= 1024
	if w4 != 0 goto .L2848
	r5 = r0
	r5 &= 2048
	if w5 != 0 goto .L2849
	r9 = r0
	r9 &= 4096
	if w9 != 0 goto .L2850
	r1 = r0
	r1 &= 8192
	if w1 != 0 goto .L2851
	r2 = r0
	r2 &= 16384
	if w2 != 0 goto .L2852
	r0 >>= 15
	r3 = r0
	r0 = 16
	if r3 != 0 goto .L2855
	exit
.L2838:
	r0 = 0
	exit
.L2839:
	r0 = 1
	exit
.L2850:
	r0 = 12
	exit
.L2855:
	r0 = 15
	exit
.L2840:
	r0 = 2
	exit
.L2841:
	r0 = 3
	exit
.L2842:
	r0 = 4
	exit
.L2843:
	r0 = 5
	exit
.L2844:
	r0 = 6
	exit
.L2845:
	r0 = 7
	exit
.L2846:
	r0 = 8
	exit
.L2847:
	r0 = 9
	exit
.L2848:
	r0 = 10
	exit
.L2849:
	r0 = 11
	exit
.L2851:
	r0 = 13
	exit
.L2852:
	r0 = 14
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	r2 = 0x47000000 ll
	r6 = r1
	call	__gesf2
	if r0 s>= 0 goto .L2862
	r1 = r6
	call	__fixsfdi
	exit
.L2862:
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
	r3 = r1
	r2 = r1
	r4 = r1
	r5 = r1
	r3 >>= 1
	r2 >>= 2
	r3 &= 1
	r2 &= 1
	r4 >>= 3
	r5 >>= 4
	r4 &= 1
	r5 &= 1
	r0 = r1
	r9 = r1
	r0 &= 1
	r9 >>= 5
	r0 += r3
	r9 &= 1
	r0 += r2
	r3 = r1
	r0 += r4
	r2 = r1
	r0 += r5
	r4 = r1
	r5 = r1
	r2 >>= 6
	r3 >>= 7
	r2 &= 1
	r3 &= 1
	r4 >>= 8
	r5 >>= 9
	r4 &= 1
	r5 &= 1
	r0 += r9
	r9 = r1
	r0 += r2
	r9 >>= 10
	r0 += r3
	r9 &= 1
	r0 += r4
	r3 = r1
	r0 += r5
	r2 = r1
	r0 += r9
	r4 = r1
	r5 = r1
	r3 >>= 11
	r1 >>= 15
	r3 &= 1
	r2 >>= 12
	r0 += r3
	r2 &= 1
	r4 >>= 13
	r0 += r2
	r4 &= 1
	r5 >>= 14
	r0 += r4
	r5 &= 1
	r0 += r5
	r0 += r1
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r1 &= 0xffff
	r3 = r1
	r2 = r1
	r4 = r1
	r5 = r1
	r3 >>= 1
	r2 >>= 2
	r3 &= 1
	r2 &= 1
	r4 >>= 3
	r5 >>= 4
	r4 &= 1
	r5 &= 1
	r0 = r1
	r9 = r1
	r0 &= 1
	r9 >>= 5
	r0 += r3
	r9 &= 1
	r0 += r2
	r3 = r1
	r0 += r4
	r2 = r1
	r0 += r5
	r4 = r1
	r5 = r1
	r2 >>= 6
	r3 >>= 7
	r2 &= 1
	r3 &= 1
	r4 >>= 8
	r5 >>= 9
	r4 &= 1
	r5 &= 1
	r0 += r9
	r9 = r1
	r0 += r2
	r9 >>= 10
	r0 += r3
	r9 &= 1
	r0 += r4
	r3 = r1
	r0 += r5
	r2 = r1
	r0 += r9
	r4 = r1
	r5 = r1
	r3 >>= 11
	r1 >>= 15
	r3 &= 1
	r2 >>= 12
	r0 += r3
	r2 &= 1
	r4 >>= 13
	r0 += r2
	r4 &= 1
	r5 >>= 14
	r0 += r4
	r5 &= 1
	r0 += r5
	r0 += r1
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r3 = r1;r3 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if w1 == 0 goto .L2868
	r0 = 0
.L2867:
	r1 = r3
	r4 = r2
	r3 &= 1
	r4 += r2
	r3 = -r3
	r1 >>= 1
	r3 &= r2
	r9 = r4;r9 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2884
	r2 = r1
	r5 = r9
	r1 &= 1
	r5 += r9
	r1 = -r1
	r2 >>= 1
	r1 &= r9
	r5 = r5;r5 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2866
	r3 = r2
	r1 = r5
	r2 &= 1
	r1 += r5
	r2 = -r2
	r3 >>= 1
	r2 &= r5
	r4 = r1;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2866
	r9 = r3
	r5 = r4
	r3 &= 1
	r5 += r4
	r3 = -r3
	r9 >>= 1
	r3 &= r4
	r5 = r5;r5 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r9 == 0 goto .L2866
	r3 = r9
	r1 = r9
	r2 = r5
	r1 &= 1
	r2 += r5
	r1 = -r1
	r3 >>= 1
	r1 &= r5
	r9 = r2;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2866
	r1 = r3
	r4 = r9
	r3 &= 1
	r4 += r9
	r3 = -r3
	r1 >>= 1
	r3 &= r9
	r2 = r4;r2 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2866
	r3 = r1
	r5 = r2
	r1 &= 1
	r5 += r2
	r1 = -r1
	r3 >>= 1
	r1 &= r2
	r9 = r5;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2866
	r1 = r3
	r4 = r9
	r1 &= 1
	r4 += r9
	r1 = -r1
	r3 >>= 1
	r1 &= r9
	r2 = r4;r2 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 != 0 goto .L2867
	exit
.L2868:
	r0 = r3
.L2866:
	exit
.L2884:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r9 = r1;r9 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if w1 == 0 goto .L2888
	if r2 == 0 goto .L2889
	r0 = 0
.L2887:
	r1 = r2
	r4 = r9
	r2 &= 1
	r4 += r9
	r2 = -r2
	r1 >>= 1
	r2 &= r9
	r5 = r4;r5 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2905
	r2 = r1
	r3 = r5
	r1 &= 1
	r3 += r5
	r1 = -r1
	r2 >>= 1
	r1 &= r5
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2886
	r1 = r2
	r4 = r9
	r2 &= 1
	r4 += r9
	r2 = -r2
	r1 >>= 1
	r2 &= r9
	r5 = r4;r5 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2886
	r2 = r1
	r3 = r5
	r1 &= 1
	r3 += r5
	r1 = -r1
	r2 >>= 1
	r1 &= r5
	r9 = r3;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2886
	r1 = r2
	r4 = r9
	r2 &= 1
	r4 += r9
	r2 = -r2
	r1 >>= 1
	r2 &= r9
	r4 = r4;r4 &= 0xffffffff
	r0 += r2
	r0 = r0;r0 &= 0xffffffff
	if r1 == 0 goto .L2886
	r3 = r1
	r5 = r4
	r1 &= 1
	r5 += r4
	r1 = -r1
	r3 >>= 1
	r1 &= r4
	r9 = r5;r9 &= 0xffffffff
	r0 += r1
	r0 = r0;r0 &= 0xffffffff
	if r3 == 0 goto .L2886
	r2 = r3
	r1 = r9
	r3 &= 1
	r1 += r9
	r3 = -r3
	r2 >>= 1
	r3 &= r9
	r5 = r1;r5 &= 0xffffffff
	r0 += r3
	r0 = r0;r0 &= 0xffffffff
	if r2 == 0 goto .L2886
	r4 = r2
	r3 = r5
	r4 &= 1
	r3 += r5
	r4 = -r4
	r9 = r3;r9 &= 0xffffffff
	r4 &= r5
	r2 >>= 1
	r0 += r4
	r0 = r0;r0 &= 0xffffffff
	if r2 != 0 goto .L2887
	exit
.L2889:
	r0 = r2
.L2886:
	exit
.L2888:
	r0 = r9
	exit
.L2905:
	exit
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	3
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	r3 s>>= 32
	if w2 >= w1 goto .L2952
	r5 = 32
	r1 = 1
.L2907:
	if w4 s< 0 goto .L2912
	r9 = r4
	r1 += r1
	r9 += r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r9;r4 &= 0xffffffff
	if w9 >= w0 goto .L2909
	r5 += -1
	r2 = r5;r2 &= 0xffffffff
	if w4 s< 0 goto .L2912
	r4 += r4
	r1 += r1
	r9 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w9 >= w0 goto .L2909
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	if w4 s< 0 goto .L2912
	r4 += r4
	r1 += r1
	r5 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w5 >= w0 goto .L2909
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	if w4 s< 0 goto .L2912
	r4 += r4
	r1 += r1
	r2 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w2 >= w0 goto .L2909
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if w4 s< 0 goto .L2912
	r4 += r4
	r1 += r1
	r5 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w5 >= w0 goto .L2909
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	if w4 s< 0 goto .L2912
	r4 += r4
	r1 += r1
	r9 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w9 >= w0 goto .L2909
	r2 += -1
	r2 = r2;r2 &= 0xffffffff
	if w4 s< 0 goto .L2912
	r4 += r4
	r1 += r1
	r5 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w5 >= w0 goto .L2909
	r2 += -1
	r9 = r2;r9 &= 0xffffffff
	if w4 s< 0 goto .L2912
	r4 += r4
	r1 += r1
	r2 = r4
	r1 = r1;r1 &= 0xffffffff
	r4 = r4;r4 &= 0xffffffff
	if w2 >= w0 goto .L2909
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	if w9 != 0 goto .L2907
.L2910:
	if r3 != 0 goto .L2932
	r0 = r5
	exit
.L2932:
	exit
.L2909:
	if r1 == 0 goto .L2926
.L2912:
	r5 = 0
	r6 = 1
	r8 = r5
	r7 = r5
.L2919:
	r2 = r0
	r9 = r6;r9 &= 0xff
	r2 -= r4
	r2 = r2;r2 &= 0xffffffff
	if w0 >= w4 goto .L2913
	r9 = r8;r9 &= 0xff
.L2913:
	if w0 >= w4 goto .L2916
	r2 = r0
.L2916:
	r0 = r2;r0 &= 0xffffffff
	if r9 == 0 goto .L2917
	r9 = r1
.L2918:
	r5 |= r9
	r1 >>= 1
	r5 = r5;r5 &= 0xffffffff
	r4 >>= 1
	if r1 != 0 goto .L2919
	goto .L2910
.L2917:
	r9 = r7
	goto .L2918
.L2952:
	r1 = r0
	r2 = 1
	r1 -= r4
	r9 = r1;r9 &= 0xffffffff
	if w4 <= w0 goto .L2921
	r2 = 0
.L2921:
	r5 = r2;r5 &= 0xff
	if w4 > w0 goto .L2924
	r0 = r9
.L2924:
	r0 = r0;r0 &= 0xffffffff
	goto .L2910
.L2926:
	r5 = r1
	goto .L2910
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s< 0 goto .L2956
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2957
	r0 = r8
	r0 &= 1
	exit
.L2957:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2956:
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
	if r0 s< 0 goto .L2961
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2962
	r0 = r8
	r0 &= 1
	exit
.L2962:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2961:
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
	r0 = r1
	r2 <<= 32
	r0 <<= 32
	r2 s>>= 32
	r0 s>>= 32
	if w2 s< 0 goto .L2993
	if r2 == 0 goto .L2971
	r4 = 0
.L2967:
	r3 = r2
	r1 = r0
	r3 &= 1
	r1 <<= 33
	r3 = -r3
	r2 s>>= 1
	r0 &= r3
	r2 <<= 32
	r1 s>>= 32
	r9 = r2
	r9 s>>= 32
	if r2 == 0 goto .L2969
	r5 = r1
	r9 &= 1
	r5 <<= 33
	r9 = -r9
	r5 s>>= 32
	r1 &= r9
	r2 s>>= 33
	r0 += r1
	r0 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2969
	r1 = 30
.L2970:
	r3 = r2
	r2 &= 1
	r2 = -r2
	r9 = r5
	r3 s>>= 1
	r5 &= r2
	r9 <<= 33
	r2 = r3
	r0 += r5
	r9 s>>= 32
	r0 <<= 32
	r2 <<= 32
	r0 s>>= 32
	if r3 == 0 goto .L2969
	r3 &= 1
	r3 = -r3
	r5 = r9
	r1 += -1
	r9 &= r3
	r2 s>>= 33
	r5 <<= 33
	r3 = r2
	r0 += r9
	r1 &= 0xff
	r0 <<= 32
	r5 s>>= 32
	r3 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2969
	r2 &= 1
	r2 = -r2
	r3 s>>= 33
	r6 = r5
	r9 = r3
	r5 &= r2
	r1 += -1
	r6 <<= 33
	r0 += r5
	r1 &= 0xff
	r0 <<= 32
	r6 s>>= 32
	r3 <<= 32
	r2 = r9
	r0 s>>= 32
	if r9 == 0 goto .L2969
	r2 &= 1
	r2 = -r2
	r9 = r6
	r5 = r6
	r3 s>>= 33
	r5 &= r2
	r1 += -1
	r9 <<= 33
	r0 += r5
	r6 = r9
	r2 = r3
	r0 <<= 32
	r1 &= 0xff
	r6 s>>= 32
	r2 <<= 32
	r0 s>>= 32
	if r3 == 0 goto .L2969
	r5 = r6
	r1 += -1
	r3 &= 1
	r5 <<= 33
	r3 = -r3
	r1 &= 0xff
	r6 &= r3
	r5 s>>= 32
	r0 += r6
	r2 s>>= 33
	r0 <<= 32
	r0 s>>= 32
	if r2 == 0 goto .L2969
	r1 += -1
	r1 &= 0xff
	if r1 != 0 goto .L2970
.L2969:
	if r4 == 0 goto .L2968
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L2971:
	r0 = r2
.L2968:
	exit
.L2993:
	r2 = -r2
	r4 = 1
	r2 <<= 32
	r2 s>>= 32
	goto .L2967
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L3040
	r0 = 1
	r5 = 0
.L2995:
	if r2 s>= 0 goto .L2996
	r2 = -r2
	r5 = r0
.L2996:
	r3 = r2;r3 &= 0xffffffff
	r4 = r1;r4 &= 0xffffffff
	if w1 <= w2 goto .L3041
	r0 = 32
	r1 = 1
.L2997:
	if w3 s< 0 goto .L3002
	r2 = r3
	r1 += r1
	r2 += r3
	r1 = r1;r1 &= 0xffffffff
	r3 = r2;r3 &= 0xffffffff
	if w2 >= w4 goto .L2999
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	if w3 s< 0 goto .L3002
	r0 = r3
	r1 += r1
	r0 += r3
	r1 = r1;r1 &= 0xffffffff
	r3 = r0;r3 &= 0xffffffff
	if w0 >= w4 goto .L2999
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if w3 s< 0 goto .L3002
	r2 = r3
	r1 += r1
	r2 += r3
	r1 = r1;r1 &= 0xffffffff
	r3 = r2;r3 &= 0xffffffff
	if w2 >= w4 goto .L2999
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	if w3 s< 0 goto .L3002
	r9 = r3
	r1 += r1
	r9 += r3
	r1 = r1;r1 &= 0xffffffff
	r3 = r9;r3 &= 0xffffffff
	if w9 >= w4 goto .L2999
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if w3 s< 0 goto .L3002
	r2 = r3
	r1 += r1
	r2 += r3
	r1 = r1;r1 &= 0xffffffff
	r3 = r2;r3 &= 0xffffffff
	if w2 >= w4 goto .L2999
	r0 += -1
	r9 = r0;r9 &= 0xffffffff
	if w3 s< 0 goto .L3002
	r0 = r3
	r1 += r1
	r0 += r3
	r1 = r1;r1 &= 0xffffffff
	r3 = r0;r3 &= 0xffffffff
	if w0 >= w4 goto .L2999
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if w3 s< 0 goto .L3002
	r2 = r3
	r1 += r1
	r2 += r3
	r1 = r1;r1 &= 0xffffffff
	r3 = r2;r3 &= 0xffffffff
	if w2 >= w4 goto .L2999
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if w3 s< 0 goto .L3002
	r0 = r3
	r1 += r1
	r0 += r3
	r1 = r1;r1 &= 0xffffffff
	r3 = r0;r3 &= 0xffffffff
	if w0 >= w4 goto .L2999
	r9 += -1
	r0 = r9;r0 &= 0xffffffff
	if w9 != 0 goto .L2997
.L3000:
	if r5 == 0 goto .L2994
	r0 = -r0
	exit
.L2994:
	exit
.L2999:
	if r1 == 0 goto .L3016
.L3002:
	r0 = 0
	r6 = 1
	r8 = r0
	r7 = r0
.L3009:
	r2 = r4
	r9 = r6;r9 &= 0xff
	r2 -= r3
	r2 = r2;r2 &= 0xffffffff
	if w4 >= w3 goto .L3003
	r9 = r8;r9 &= 0xff
.L3003:
	if w4 >= w3 goto .L3006
	r2 = r4
.L3006:
	r4 = r2;r4 &= 0xffffffff
	if r9 == 0 goto .L3007
	r9 = r1
.L3008:
	r0 |= r9
	r1 >>= 1
	r0 = r0;r0 &= 0xffffffff
	r3 >>= 1
	if r1 != 0 goto .L3009
	goto .L3000
.L3007:
	r9 = r7
	goto .L3008
.L3040:
	r1 = -r1
	r0 = 0
	r5 = 1
	goto .L2995
.L3041:
	r0 = 1
	if w3 <= w4 goto .L3000
	r0 = 0
	goto .L3000
.L3016:
	r0 = r1
	goto .L3000
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s< 0 goto .L3091
	r5 = 0
.L3043:
	if r2 s>= 0 goto .L3044
	r2 = -r2
.L3044:
	r3 = r2;r3 &= 0xffffffff
	r4 = r1;r4 &= 0xffffffff
	if w1 <= w2 goto .L3092
	r1 = 32
	r0 = 1
.L3045:
	if w3 s< 0 goto .L3088
	r9 = r3
	r0 += r0
	r9 += r3
	r0 = r0;r0 &= 0xffffffff
	r3 = r9;r3 &= 0xffffffff
	if w9 >= w4 goto .L3090
	r1 += -1
	r1 = r1;r1 &= 0xffffffff
	if w3 s< 0 goto .L3088
	r2 = r3
	r0 += r0
	r2 += r3
	r0 = r0;r0 &= 0xffffffff
	r3 = r2;r3 &= 0xffffffff
	if w2 >= w4 goto .L3090
	r1 += -1
	r9 = r1;r9 &= 0xffffffff
	if w3 s< 0 goto .L3088
	r1 = r3
	r0 += r0
	r1 += r3
	r0 = r0;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	if w1 >= w4 goto .L3090
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	if w3 s< 0 goto .L3088
	r2 = r3
	r0 += r0
	r2 += r3
	r0 = r0;r0 &= 0xffffffff
	r3 = r2;r3 &= 0xffffffff
	if w2 >= w4 goto .L3090
	r9 += -1
	r1 = r9;r1 &= 0xffffffff
	if w3 s< 0 goto .L3088
	r9 = r3
	r0 += r0
	r9 += r3
	r0 = r0;r0 &= 0xffffffff
	r3 = r9;r3 &= 0xffffffff
	if w9 >= w4 goto .L3090
	r1 += -1
	r1 = r1;r1 &= 0xffffffff
	if w3 s< 0 goto .L3088
	r2 = r3
	r0 += r0
	r2 += r3
	r0 = r0;r0 &= 0xffffffff
	r3 = r2;r3 &= 0xffffffff
	if w2 >= w4 goto .L3090
	r1 += -1
	r9 = r1;r9 &= 0xffffffff
	if w3 s< 0 goto .L3088
	r1 = r3
	r0 += r0
	r1 += r3
	r0 = r0;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	if w1 >= w4 goto .L3090
	r9 += -1
	r2 = r9;r2 &= 0xffffffff
	if w3 s< 0 goto .L3088
	r9 = r3
	r0 += r0
	r9 += r3
	r0 = r0;r0 &= 0xffffffff
	r3 = r9;r3 &= 0xffffffff
	if w9 >= w4 goto .L3090
	r2 += -1
	r1 = r2;r1 &= 0xffffffff
	if w2 != 0 goto .L3045
.L3048:
	r0 = r4
	if r5 == 0 goto .L3042
	r0 = -r0
	exit
.L3090:
	if r0 == 0 goto .L3048
.L3088:
	r1 = r4
	r1 -= r3
	r2 = r1;r2 &= 0xffffffff
	if w4 >= w3 goto .L3053
	r2 = r4
.L3053:
	r4 = r2;r4 &= 0xffffffff
	r0 >>= 1
	r3 >>= 1
	goto .L3090
.L3042:
	exit
.L3091:
	r1 = -r1
	r5 = 1
	goto .L3043
.L3092:
	r0 = r4
	r1 = 1
	r0 -= r3
	r2 = r0;r2 &= 0xffffffff
	if w3 <= w4 goto .L3058
	r1 = 0
.L3058:
	r1 &= 1
	if w1 != 0 goto .L3057
	r2 = r4
.L3057:
	r4 = r2;r4 &= 0xffffffff
	goto .L3048
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r3 <<= 32
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 s>>= 32
	if w2 >= w0 goto .L3312
	r5 = r2
	r5 <<= 16
	if w5 s< 0 goto .L3098
	r4 = r2
	r4 += r2
	r4 &= 0xffff
	if w0 <= w4 goto .L3204
	r9 = r4
	r9 <<= 16
	if w9 s< 0 goto .L3205
	r4 = r2
	r4 <<= 2
	r4 &= 0xffff
	if w0 <= w4 goto .L3206
	r1 = r4
	r1 <<= 16
	if w1 s< 0 goto .L3207
	r4 = r2
	r4 <<= 3
	r4 &= 0xffff
	if w0 <= w4 goto .L3208
	r5 = r4
	r5 <<= 16
	if w5 s< 0 goto .L3209
	r4 = r2
	r4 <<= 4
	r4 &= 0xffff
	if w0 <= w4 goto .L3210
	r9 = r4
	r9 <<= 16
	if w9 s< 0 goto .L3211
	r4 = r2
	r4 <<= 5
	r4 &= 0xffff
	if w0 <= w4 goto .L3212
	r1 = r4
	r1 <<= 16
	if w1 s< 0 goto .L3213
	r4 = r2
	r4 <<= 6
	r4 &= 0xffff
	if w0 <= w4 goto .L3214
	r5 = r4
	r5 <<= 16
	if w5 s< 0 goto .L3215
	r4 = r2
	r4 <<= 7
	r4 &= 0xffff
	if w0 <= w4 goto .L3216
	r9 = r4
	r9 <<= 16
	if w9 s< 0 goto .L3217
	r4 = r2
	r4 <<= 8
	r4 &= 0xffff
	if w0 <= w4 goto .L3218
	r1 = r4
	r1 <<= 16
	if w1 s< 0 goto .L3219
	r4 = r2
	r4 <<= 9
	r4 &= 0xffff
	if w0 <= w4 goto .L3220
	r5 = r4
	r5 <<= 16
	if w5 s< 0 goto .L3221
	r4 = r2
	r4 <<= 10
	r4 &= 0xffff
	if w0 <= w4 goto .L3222
	r9 = r4
	r9 <<= 16
	if w9 s< 0 goto .L3223
	r4 = r2
	r4 <<= 11
	r4 &= 0xffff
	if w0 <= w4 goto .L3224
	r1 = r4
	r1 <<= 16
	if w1 s< 0 goto .L3225
	r4 = r2
	r4 <<= 12
	r4 &= 0xffff
	if w0 <= w4 goto .L3226
	r5 = r4
	r5 <<= 16
	if w5 s< 0 goto .L3227
	r4 = r2
	r4 <<= 13
	r4 &= 0xffff
	if w0 <= w4 goto .L3228
	r9 = r4
	r9 <<= 16
	if w9 s< 0 goto .L3229
	r4 = r2
	r4 <<= 14
	r4 &= 0xffff
	if w0 <= w4 goto .L3230
	r1 = r4
	r1 <<= 16
	if w1 s< 0 goto .L3231
	r2 <<= 15
	r2 &= 0xffff
	if w0 <= w2 goto .L3232
	if r2 != 0 goto .L3313
.L3101:
	if r3 != 0 goto .L3281
	r0 = r2
	exit
.L3281:
	exit
.L3220:
	r1 = 512
.L3099:
	r2 = r0
	r2 -= r4
	r2 &= 0xffff
	if w0 >= w4 goto .L3193
	r2 = r0
.L3193:
	r5 = r2;r5 &= 0xffff
	r2 = 1
	if w0 < w4 goto .L3311
.L3203:
	if r2 == 0 goto .L3202
	r2 = r1
.L3202:
	r6 = r1
	r7 = r4
	r0 = r5
	r7 >>= 1
	r2 &= 0xffff
	r0 -= r7
	r6 >>= 1
	r0 &= 0xffff
	if w5 >= w7 goto .L3104
	r0 = r5
.L3104:
	r0 &= 0xffff
	r9 = 1
	if w5 >= w7 goto .L3107
	r9 = 0
.L3107:
	r5 = r9;r5 &= 0xff
	if r5 == 0 goto .L3106
	r5 = r6
.L3106:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 2
	r2 &= 0xffff
	r7 >>= 2
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3108
	r5 = 0
.L3108:
	if w0 < w7 goto .L3111
	r0 = r9
.L3111:
	r0 &= 0xffff
	if r5 == 0 goto .L3113
	r5 = r6
.L3113:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 3
	r2 &= 0xffff
	r7 >>= 3
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3114
	r5 = 0
.L3114:
	if w0 < w7 goto .L3117
	r0 = r9
.L3117:
	r0 &= 0xffff
	if r5 == 0 goto .L3119
	r5 = r6
.L3119:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 4
	r2 &= 0xffff
	r7 >>= 4
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3120
	r5 = 0
.L3120:
	if w0 < w7 goto .L3123
	r0 = r9
.L3123:
	r0 &= 0xffff
	if r5 == 0 goto .L3125
	r5 = r6
.L3125:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 5
	r2 &= 0xffff
	r7 >>= 5
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3126
	r5 = 0
.L3126:
	if w0 < w7 goto .L3129
	r0 = r9
.L3129:
	r0 &= 0xffff
	if r5 == 0 goto .L3131
	r5 = r6
.L3131:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 6
	r2 &= 0xffff
	r7 >>= 6
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3132
	r5 = 0
.L3132:
	if w0 < w7 goto .L3135
	r0 = r9
.L3135:
	r0 &= 0xffff
	if r5 == 0 goto .L3137
	r5 = r6
.L3137:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 7
	r2 &= 0xffff
	r7 >>= 7
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3138
	r5 = 0
.L3138:
	if w0 < w7 goto .L3141
	r0 = r9
.L3141:
	r0 &= 0xffff
	if r5 == 0 goto .L3143
	r5 = r6
.L3143:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 8
	r2 &= 0xffff
	r7 >>= 8
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3144
	r5 = 0
.L3144:
	if w0 < w7 goto .L3147
	r0 = r9
.L3147:
	r0 &= 0xffff
	if r5 == 0 goto .L3149
	r5 = r6
.L3149:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 9
	r2 &= 0xffff
	r7 >>= 9
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3150
	r5 = 0
.L3150:
	if w0 < w7 goto .L3153
	r0 = r9
.L3153:
	r0 &= 0xffff
	if r5 == 0 goto .L3155
	r5 = r6
.L3155:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 10
	r2 &= 0xffff
	r7 >>= 10
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3156
	r5 = 0
.L3156:
	if w0 < w7 goto .L3159
	r0 = r9
.L3159:
	r0 &= 0xffff
	if r5 == 0 goto .L3161
	r5 = r6
.L3161:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 11
	r2 &= 0xffff
	r7 >>= 11
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3162
	r5 = 0
.L3162:
	if w0 < w7 goto .L3165
	r0 = r9
.L3165:
	r0 &= 0xffff
	if r5 == 0 goto .L3167
	r5 = r6
.L3167:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 12
	r2 &= 0xffff
	r7 >>= 12
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3168
	r5 = 0
.L3168:
	if w0 < w7 goto .L3171
	r0 = r9
.L3171:
	r0 &= 0xffff
	if r5 == 0 goto .L3173
	r5 = r6
.L3173:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 13
	r2 &= 0xffff
	r7 >>= 13
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3174
	r5 = 0
.L3174:
	if w0 < w7 goto .L3177
	r0 = r9
.L3177:
	r0 &= 0xffff
	if r5 == 0 goto .L3179
	r5 = r6
.L3179:
	r2 |= r5
	r6 = r1
	r7 = r4
	r6 >>= 14
	r2 &= 0xffff
	r7 >>= 14
	if r6 == 0 goto .L3101
	r9 = r0
	r5 = 1
	r9 -= r7
	r9 &= 0xffff
	if w0 >= w7 goto .L3180
	r5 = 0
.L3180:
	if w0 < w7 goto .L3183
	r0 = r9
.L3183:
	r0 &= 0xffff
	if r5 == 0 goto .L3185
	r5 = r6
.L3185:
	r2 |= r5
	r4 >>= 15
	r2 &= 0xffff
	if w1 == 16384 goto .L3101
	r1 = r0
	r9 = 1
	r1 -= r4
	r1 &= 0xffff
	if w0 >= w4 goto .L3186
	r9 = 0
.L3186:
	if w0 >= w4 goto .L3189
	r1 = r0
.L3189:
	r9 |= r2
	r0 = r1;r0 &= 0xffff
	r2 = r9
	goto .L3101
.L3313:
	r1 = 32768
	r4 = r1
.L3100:
	r5 = r0
	r5 -= r4
	r5 &= 0xffff
	if w0 >= w4 goto .L3200
	r5 = r0
.L3200:
	r5 &= 0xffff
	r2 = 1
	if w0 >= w4 goto .L3203
.L3311:
	r2 = 0
	goto .L3203
.L3312:
	r1 = r0
	r1 -= r2
	r2 ^= r0
	r1 &= 0xffff
	r2 += -1
	r4 = r2
	r4 >>= 63
	if r2 s< 0 goto .L3096
	r1 = r0
.L3096:
	r0 = r1;r0 &= 0xffff
	r2 = r4
	goto .L3101
.L3204:
	r1 = 2
	goto .L3099
.L3205:
	r1 = 2
	goto .L3100
.L3206:
	r1 = 4
	goto .L3099
.L3207:
	r1 = 4
	goto .L3100
.L3208:
	r1 = 8
	goto .L3099
.L3209:
	r1 = 8
	goto .L3100
.L3210:
	r1 = 16
	goto .L3099
.L3211:
	r1 = 16
	goto .L3100
.L3212:
	r1 = 32
	goto .L3099
.L3213:
	r1 = 32
	goto .L3100
.L3214:
	r1 = 64
	goto .L3099
.L3215:
	r1 = 64
	goto .L3100
.L3216:
	r1 = 128
	goto .L3099
.L3217:
	r1 = 128
	goto .L3100
.L3218:
	r1 = 256
	goto .L3099
.L3219:
	r1 = 256
	goto .L3100
.L3221:
	r1 = 512
	goto .L3100
.L3222:
	r1 = 1024
	goto .L3099
.L3223:
	r1 = 1024
	goto .L3100
.L3224:
	r1 = 2048
	goto .L3099
.L3225:
	r1 = 2048
	goto .L3100
.L3226:
	r1 = 4096
	goto .L3099
.L3227:
	r1 = 4096
	goto .L3100
.L3228:
	r1 = 8192
	goto .L3099
.L3229:
	r1 = 8192
	goto .L3100
.L3230:
	r1 = 16384
	goto .L3099
.L3231:
	r1 = 16384
	goto .L3100
.L3232:
	r4 = 32768
	r1 = r4
	goto .L3099
.L3098:
	r0 -= r2
	r2 = 1
	r0 &= 0xffff
	goto .L3101
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r1 goto .L3363
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L3315:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L3320
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3317
	r0 += -1
	r5 = r2
	r0 = r0;r0 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3320
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3317
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3320
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3317
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3320
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3317
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3320
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3317
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3320
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3317
	r5 = r2
	r0 += -1
	r5 &= r9
	r0 = r0;r0 &= 0xffffffff
	if r5 != 0 goto .L3320
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3317
	r0 += -1
	r5 = r2
	r6 = r0;r6 &= 0xffffffff
	r5 &= r9
	if r5 != 0 goto .L3320
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3317
	r6 += -1
	r0 = r6;r0 &= 0xffffffff
	if w6 != 0 goto .L3315
.L3318:
	if r3 == 0 goto .L3314
	r5 = r1
.L3314:
	r0 = r5
	exit
.L3317:
	if r4 == 0 goto .L3318
.L3320:
	r5 = 0
	r6 = 1
	r7 = r5
	r9 = r5
.L3327:
	r8 = r1
	r0 = r6;r0 &= 0xff
	r8 -= r2
	if r1 >= r2 goto .L3321
	r0 = r7;r0 &= 0xff
.L3321:
	if r1 < r2 goto .L3324
	r1 = r8
.L3324:
	if r0 == 0 goto .L3325
	r0 = r4
.L3326:
	r5 |= r0
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L3327
	goto .L3318
.L3325:
	r0 = r9
	goto .L3326
.L3363:
	r4 = r1
	r0 = 1
	r4 -= r2
	if r2 <= r1 goto .L3329
	r0 = 0
.L3329:
	r5 = r0;r5 &= 0xff
	if r2 <= r1 goto .L3332
	r4 = r1
.L3332:
	r1 = r4
	goto .L3318
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if w0 == 0 goto .L3365
	r2 += -32
	r0 = 0
	r2 = r2;r2 &= 0xffffffff
	r1 <<= r2
	r3 = r1
	r3 <<= 32
	r3 s>>= 32
	r3 <<= 32
	r0 |= r3
	exit
.L3365:
	if r2 == 0 goto .L3368
	r4 = 32
	r4 -= r2
	r0 = r4;r0 &= 0xffffffff
	r3 = r1;r3 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	r9 = r3
	r1 s>>= 32
	r9 <<= r5
	r1 <<= r5
	r3 >>= r0
	r0 = r9;r0 &= 0xffffffff
	r3 |= r1
	r3 <<= 32
	r3 s>>= 32
	r3 <<= 32
	r0 |= r3
	exit
.L3368:
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
	if w0 == 0 goto .L3370
	r3 += -64
	r0 = 0
	r2 = r3;r2 &= 0xffffffff
	r1 <<= r2
	exit
.L3370:
	if r3 == 0 goto .L3373
	r5 = r3;r5 &= 0xffffffff
	r0 = r1
	r2 <<= r5
	r4 = 64
	r0 <<= r5
	r4 -= r3
	r3 = r4;r3 &= 0xffffffff
	r1 >>= r3
	r1 |= r2
	exit
.L3373:
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
	if w0 == 0 goto .L3375
	r2 += -32
	r4 = r1
	r3 = r2
	r4 s>>= 32
	r1 s>>= 63
	r3 <<= 32
	r1 <<= 32
	r3 s>>= 32
	r0 = r1
	r4 s>>= r3
	r2 = r4;r2 &= 0xffffffff
	r0 |= r2
	exit
.L3375:
	if r2 == 0 goto .L3378
	r9 = r2;r9 &= 0xffffffff
	r4 = r1
	r3 = r1;r3 &= 0xffffffff
	r4 s>>= 32
	r3 >>= r9
	r0 = r4
	r5 = 32
	r5 -= r2
	r5 = r5;r5 &= 0xffffffff
	r0 <<= r5
	r0 |= r3
	r1 = r4
	r1 s>>= r2
	r2 = r0;r2 &= 0xffffffff
	r1 <<= 32
	r0 = r1
	r0 |= r2
	exit
.L3378:
	r0 = r1
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	r3 <<= 32
	r3 s>>= 32
	r0 = r3
	r0 &= 64
	if w0 == 0 goto .L3380
	r5 = r2
	r0 = r2
	r5 s>>= 63
	r3 += -64
	r1 = r5
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	exit
.L3380:
	if r3 == 0 goto .L3383
	r4 = r3;r4 &= 0xffffffff
	r5 = 64
	r1 >>= r4
	r5 -= r3
	r0 = r2
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r0 <<= r9
	r5 s>>= r3
	r0 |= r1
	r1 = r5
	exit
.L3383:
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
	r2 = r1;r2 &= 0xffffffff
	r0 = 1
	if w1 <= 65535 goto .L3387
	r0 = 0
.L3387:
	r1 = r2
	r0 <<= 36
	r4 = 16
	r0 s>>= 32
	r3 = 8
	r4 -= r0
	r5 = r4;r5 &= 0xffffffff
	r1 >>= r5
	r9 = r1;r9 &= 0xffffffff
	r1 &= 65280
	r1 += -1
	r1 >>= 63
	r1 <<= 3
	r3 -= r1
	r0 += r1
	r2 = r3;r2 &= 0xffffffff
	r3 = 2
	r9 >>= r2
	r1 = r9;r1 &= 0xffffffff
	r9 &= 240
	r9 += -1
	r9 >>= 63
	r9 <<= r3
	r4 = 4
	r0 += r9
	r4 -= r9
	r2 = r3
	r5 = r4;r5 &= 0xffffffff
	r1 >>= r5
	r9 = r1;r9 &= 0xffffffff
	r1 &= 12
	r1 += -1
	r1 >>= 63
	r1 <<= 1
	r2 -= r1
	r4 = r2;r4 &= 0xffffffff
	r9 >>= r4
	r9 = r9;r9 &= 0xffffffff
	r2 = r9
	r2 >>= 1
	r2 &= 1
	r5 = r2
	r5 ^= 1
	if r2 != 0 goto .L3388
	r3 -= r9
	r0 += r1
	r0 += r3
	exit
.L3388:
	r3 = r5
	r0 += r1
	r0 += r3
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L3391
	r6 = 0
.L3391:
	r1 = r6
	r3 = 1
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L3394
	r3 = 0
.L3394:
	r3 &= 1
	if w3 != 0 goto .L3393
	r0 = 0
.L3393:
	r1 |= r0
	r6 <<= 6
	call	__clzdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += r6
	exit
	.size	__clzti2, .-__clzti2
	.align	3
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	r3 = r1
	r0 = r2
	r3 s>>= 32
	r0 s>>= 32
	if w3 s< w0 goto .L3405
	if w3 s> w0 goto .L3406
	r4 = r1;r4 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if w2 > w1 goto .L3405
	if w4 > w5 goto .L3406
	r0 = 1
	exit
.L3405:
	r0 = 0
	exit
.L3406:
	r0 = 2
	exit
	.size	__cmpdi2, .-__cmpdi2
	.align	3
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	r3 = r1
	r0 = r2
	r3 s>>= 32
	r0 s>>= 32
	if w3 s< w0 goto .L3412
	if w3 s> w0 goto .L3411
	r4 = r1;r4 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if w2 > w1 goto .L3412
	r0 = 1
	if w4 <= w5 goto .L3413
	r0 &= 1
	exit
.L3412:
	r0 = -1
	exit
.L3413:
	r0 = 0
	r0 &= 1
	exit
.L3411:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r2 s< r4 goto .L3418
	if r2 s> r4 goto .L3419
	if r1 < r3 goto .L3418
	if r1 > r3 goto .L3419
	r0 = 1
	exit
.L3418:
	r0 = 0
	exit
.L3419:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r1 <<= 32
	r3 = r1
	r1 >>= 32
	r3 s>>= 32
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
	r1 = 2
	r3 += r4
	r2 >>= r4
	r4 = r2;r4 &= 0xffffffff
	r2 &= 15
	r2 += -1
	r2 >>= 63
	r2 <<= 2
	r4 >>= r2
	r3 += r2
	r5 = r4;r5 &= 0xffffffff
	r4 &= 3
	r4 += -1
	r4 >>= 63
	r4 <<= 1
	r5 >>= r4
	r3 += r4
	r5 &= 3
	r0 = r5
	r5 >>= 1
	r0 ^= -1
	r1 -= r5
	r0 &= 1
	r0 = -r0
	r0 &= r1
	r0 += r3
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	r0 = r1
	r6 = 1
	if r1 == 0 goto .L3422
	r6 = 0
.L3422:
	r1 = 1
	if r0 == 0 goto .L3425
	r1 = 0
.L3425:
	r1 &= 1
	if w1 == 0 goto .L3423
	r1 = r2
.L3424:
	r2 = r6
	r2 += -1
	r2 &= r0
	r6 <<= 6
	r1 |= r2
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += r6
	exit
.L3423:
	r1 = 0
	goto .L3424
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L3433
	if r2 != 0 goto .L3436
	r0 = r2
	exit
.L3433:
	call	__ctzdi2
	r1 = 4294967296 ll
	r0 <<= 32
	r0 += r1
	r0 s>>= 32
	exit
.L3436:
	r1 = r2
	call	__ctzdi2
	r2 = 279172874240 ll
	r0 <<= 32
	r0 += r2
	r0 s>>= 32
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
	if w0 == 0 goto .L3438
	r0 = 0
	r0 <<= 32
	r2 += -32
	r4 = r0
	r5 = r2;r5 &= 0xffffffff
	r1 >>= 32
	r1 >>= r5
	r3 = r1;r3 &= 0xffffffff
	r0 = r3
	r0 |= r4
	exit
.L3438:
	if r2 == 0 goto .L3441
	r5 = r2;r5 &= 0xffffffff
	r3 = r1
	r4 = 32
	r3 >>= 32
	r4 -= r2
	r9 = r3
	r9 >>= r5
	r0 = r9;r0 &= 0xffffffff
	r0 <<= 32
	r2 = r4;r2 &= 0xffffffff
	r1 = r1;r1 &= 0xffffffff
	r4 = r0
	r1 >>= r5
	r3 <<= r2
	r3 |= r1
	r3 = r3;r3 &= 0xffffffff
	r0 = r3
	r0 |= r4
	exit
.L3441:
	r0 = r1
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	r3 <<= 32
	r3 s>>= 32
	r0 = r3
	r0 &= 64
	if w0 == 0 goto .L3443
	r3 += -64
	r1 = r3;r1 &= 0xffffffff
	r4 = 0
	r0 = r2
	r0 >>= r1
	r1 = r4
	exit
.L3443:
	if r3 == 0 goto .L3446
	r5 = r3;r5 &= 0xffffffff
	r1 >>= r5
	r4 = r2
	r0 = r2
	r4 >>= r5
	r9 = 64
	r9 -= r3
	r3 = r9;r3 &= 0xffffffff
	r0 <<= r3
	r0 |= r1
	r1 = r4
	exit
.L3446:
	r0 = r1
	r1 = r2
	exit
	.size	__lshrti3, .-__lshrti3
	.align	3
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	r4 = r1;r4 &= 0xffff
	r5 = r2;r5 &= 0xffff
	r0 = r4
	r1 = r1;r1 &= 0xffffffff
	r0 *= r5
	r1 >>= 16
	r2 = r2;r2 &= 0xffffffff
	r5 *= r1
	r2 >>= 16
	r4 *= r2
	r1 *= r2
	r3 = r0
	r0 &= 65535
	r3 >>= 16
	r3 += r5
	r9 = r3;r9 &= 0xffffffff
	r5 = r9
	r9 >>= 16
	r5 <<= 16
	r9 += r1
	r0 += r5
	r0 = r0;r0 &= 0xffffffff
	r1 = r0
	r0 &= 65535
	r1 >>= 16
	r1 += r4
	r4 = r1;r4 &= 0xffffffff
	r2 = r4
	r4 >>= 16
	r2 <<= 16
	r9 += r4
	r0 += r2
	r9 <<= 32
	r0 = r0;r0 &= 0xffffffff
	r0 |= r9
	exit
	.size	__muldsi3, .-__muldsi3
	.align	3
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	r4 = r2;r4 &= 0xffffffff
	r6 = r2;r6 &= 0xffff
	r2 s>>= 32
	r5 = r1;r5 &= 0xffffffff
	r9 = r1;r9 &= 0xffff
	r3 = r5
	r0 = r9
	r3 *= r2
	r0 *= r6
	r5 >>= 16
	r2 = r4
	r6 *= r5
	r4 >>= 16
	r9 *= r4
	r5 *= r4
	r4 = r0
	r4 >>= 16
	r4 += r6
	r4 = r4;r4 &= 0xffffffff
	r6 = r4
	r6 <<= 16
	r1 s>>= 32
	r0 &= 65535
	r4 >>= 16
	r0 += r6
	r4 += r5
	r0 = r0;r0 &= 0xffffffff
	r5 = r0
	r5 >>= 16
	r5 += r9
	r9 = r5;r9 &= 0xffffffff
	r6 = r9
	r9 >>= 16
	r4 += r9
	r4 <<= 32
	r2 *= r1
	r6 <<= 16
	r1 = 4294967295 ll
	r0 &= 65535
	r0 += r6
	r0 &= r1
	r0 |= r4
	r4 = r0
	r0 &= r1
	r4 s>>= 32
	r3 += r4
	r3 += r2
	r3 <<= 32
	r0 |= r3
	exit
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	3
	.global	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	r5 = 4294967295 ll
	r7 = r2
	r9 = r1
	r2 = r1
	r3 = r7
	r2 &= r5
	r3 &= r5
	r0 = r2
	r0 *= r3
	r1 = r0
	r1 >>= 32
	r7 >>= 32
	r9 >>= 32
	r0 &= r5
	r3 *= r9
	r2 *= r7
	r3 += r1
	r9 *= r7
	r6 = r3
	r1 = r3
	r6 <<= 32
	r1 >>= 32
	r0 += r6
	r1 += r9
	r6 >>= 32
	r0 &= r5
	r2 += r6
	r4 = r2
	r2 >>= 32
	r4 <<= 32
	r1 += r2
	r0 += r4
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	r0 = r2
	r5 = r1
	r2 = r1
	r1 >>= 32
	r9 = 4294967295 ll
	r5 *= r4
	r2 &= r9
	r7 = r3
	r4 = r1
	r7 &= r9
	r6 = r3
	r3 >>= 32
	r6 *= r0
	r0 = r2
	r0 *= r7
	r7 *= r1
	r1 = r0
	r1 >>= 32
	r4 *= r3
	r7 += r1
	r2 *= r3
	r0 &= r9
	r3 = r7
	r1 = r5
	r3 <<= 32
	r7 >>= 32
	r0 += r3
	r7 += r4
	r0 &= r9
	r3 >>= 32
	r2 += r3
	r9 = r2
	r2 >>= 32
	r9 <<= 32
	r7 += r2
	r0 += r9
	r1 += r7
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
	r0 = r1
	r3 = 1
	r0 = -r0
	if r1 != 0 goto .L3453
	r3 = r0
.L3453:
	r1 = r2
	r1 = -r1
	r1 -= r3
	exit
	.size	__negti2, .-__negti2
	.align	3
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	r2 = r1
	r0 = 27030
	r2 s>>= 32
	r2 ^= r1
	r1 = r2;r1 &= 0xffffffff
	r3 = r1
	r3 >>= 16
	r3 ^= r1
	r4 = r3
	r4 >>= 8
	r4 ^= r3
	r5 = r4
	r5 >>= 4
	r5 ^= r4
	r5 &= 15
	r0 s>>= r5
	r0 &= 1
	exit
	.size	__paritydi2, .-__paritydi2
	.align	3
	.global	__parityti2
	.type	__parityti2, @function
__parityti2:
	r1 ^= r2
	r0 = 27030
	r2 = r1
	r2 s>>= 32
	r2 ^= r1
	r1 = r2;r1 &= 0xffffffff
	r3 = r1
	r3 >>= 16
	r3 ^= r1
	r4 = r3
	r4 >>= 8
	r4 ^= r3
	r5 = r4
	r5 >>= 4
	r5 ^= r4
	r5 &= 15
	r0 s>>= r5
	r0 &= 1
	exit
	.size	__parityti2, .-__parityti2
	.align	3
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	r1 = r1;r1 &= 0xffffffff
	r0 = 27030
	r3 = r1
	r3 >>= 16
	r3 ^= r1
	r2 = r3
	r2 >>= 8
	r2 ^= r3
	r4 = r2
	r4 >>= 4
	r4 ^= r2
	r4 &= 15
	r0 s>>= r4
	r0 &= 1
	exit
	.size	__paritysi2, .-__paritysi2
	.align	3
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	r4 = 3689348814741910323 ll
	r2 = 6148914691236517205 ll
	r3 = 1085102592571150095 ll
	r0 = r1
	r0 >>= 1
	r0 &= r2
	r1 -= r0
	r5 = r1
	r1 &= r4
	r5 >>= 2
	r5 &= r4
	r5 += r1
	r9 = r5
	r9 >>= 4
	r9 += r5
	r9 &= r3
	r1 = r9
	r1 >>= 32
	r1 += r9
	r4 = r1;r4 &= 0xffffffff
	r2 = r4
	r2 >>= 16
	r2 += r4
	r0 = r2;r0 &= 0xffffffff
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
	r2 &= 858993459
	r3 >>= 2
	r3 &= 858993459
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
	r4 = r1
	r4 >>= 1
	r3 = 6148914691236517205 ll
	r0 = r2
	r5 = r2
	r0 <<= 63
	r5 >>= 1
	r0 |= r4
	r5 &= r3
	r0 &= r3
	r4 = r1
	r9 = 1
	r4 -= r0
	if r4 > r1 goto .L3460
	r9 = 0
.L3460:
	r3 = 3689348814741910323 ll
	r6 = r4
	r4 &= r3
	r2 -= r5
	r6 >>= 2
	r2 -= r9
	r5 = r4
	r0 = r2
	r1 = r2
	r0 <<= 62
	r1 >>= 2
	r0 |= r6
	r1 &= r3
	r0 &= r3
	r2 &= r3
	r4 = r0
	r9 = 1
	r4 += r5
	if r4 < r0 goto .L3461
	r9 = 0
.L3461:
	r3 = r1
	r3 += r2
	r2 = r4
	r2 >>= 4
	r1 = r9
	r0 = 1
	r1 += r3
	r9 = r1
	r5 = r1
	r9 <<= 60
	r5 >>= 4
	r9 |= r2
	r2 = r9
	r2 += r4
	if r2 < r9 goto .L3462
	r0 = 0
.L3462:
	r4 = 1085102592571150095 ll
	r5 += r1
	r2 &= r4
	r0 += r5
	r0 &= r4
	r0 += r2
	r3 = r0
	r3 >>= 32
	r3 += r0
	r1 = r3;r1 &= 0xffffffff
	r9 = r1
	r9 >>= 16
	r9 += r1
	r0 = r9;r0 &= 0xffffffff
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
	r2 <<= 32
	r2 s>>= 32
	*(u64 *) (r10+-8) = r2
	r0 = r2
	r6 = r1
	r0 &= 1
	r8 = r2
	r7 = 0x3ff0000000000000 ll
	if w0 == 0 goto .L3464
.L3466:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L3464:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3465
.L3467:
	r2 = r6
	r1 = r6
	call	__muldf3
	r5 = r8
	r4 = r8
	r5 >>= 63
	r6 = r0
	r5 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if w4 != 0 goto .L3466
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if w2 != 0 goto .L3466
	r3 = r8
	r3 >>= 63
	r3 += r8
	r3 <<= 31
	r3 s>>= 32
	r2 = r0
	r8 = r3
	r1 = r0
	call	__muldf3
	r9 = r8
	r4 = r8
	r9 >>= 63
	r6 = r0
	r9 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if w4 != 0 goto .L3466
	r9 s>>= 1
	r8 = r9
	call	__muldf3
	r4 = r8
	r6 = r0
	r4 &= 1
	r0 = r8
	r2 = r6
	r0 >>= 63
	r1 = r6
	r0 += r8
	r0 <<= 31
	if w4 != 0 goto .L3466
	r0 s>>= 32
	r8 = r0
	call	__muldf3
	r5 = r8
	r4 = r8
	r5 >>= 63
	r6 = r0
	r5 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if w4 != 0 goto .L3466
	r5 s>>= 1
	r8 = r5
	call	__muldf3
	r9 = r8
	r4 = r8
	r9 >>= 63
	r6 = r0
	r9 += r8
	r2 = r0
	r9 <<= 31
	r1 = r0
	r4 &= 1
	if w4 != 0 goto .L3466
	r9 s>>= 32
	r8 = r9
	call	__muldf3
	r4 = r8
	r6 = r0
	r4 &= 1
	r0 = r8
	r2 = r6
	r0 >>= 63
	r1 = r6
	r0 += r8
	if w4 != 0 goto .L3466
	r0 s>>= 1
	r8 = r0
	call	__muldf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if w1 != 0 goto .L3466
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3467
.L3465:
	r3 = *(u64 *) (r10+-8)
	if w3 s>= 0 goto .L3463
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L3463:
	r0 = r7
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r2 <<= 32
	r2 s>>= 32
	*(u64 *) (r10+-8) = r2
	r0 = r2
	r6 = r1
	r0 &= 1
	r8 = r2
	r7 = 0x3f800000 ll
	if w0 == 0 goto .L3474
.L3476:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L3474:
	r1 = r8
	r1 >>= 63
	r1 += r8
	r1 s>>= 1
	r8 = r1
	if r1 == 0 goto .L3475
.L3477:
	r2 = r6
	r1 = r6
	call	__mulsf3
	r5 = r8
	r4 = r8
	r5 >>= 63
	r6 = r0
	r5 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if w4 != 0 goto .L3476
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r2 = r8
	r6 = r0
	r2 &= 1
	if w2 != 0 goto .L3476
	r3 = r8
	r3 >>= 63
	r3 += r8
	r3 <<= 31
	r3 s>>= 32
	r2 = r0
	r8 = r3
	r1 = r0
	call	__mulsf3
	r9 = r8
	r4 = r8
	r9 >>= 63
	r6 = r0
	r9 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if w4 != 0 goto .L3476
	r9 s>>= 1
	r8 = r9
	call	__mulsf3
	r4 = r8
	r6 = r0
	r4 &= 1
	r0 = r8
	r2 = r6
	r0 >>= 63
	r1 = r6
	r0 += r8
	r0 <<= 31
	if w4 != 0 goto .L3476
	r0 s>>= 32
	r8 = r0
	call	__mulsf3
	r5 = r8
	r4 = r8
	r5 >>= 63
	r6 = r0
	r5 += r8
	r2 = r0
	r1 = r0
	r4 &= 1
	if w4 != 0 goto .L3476
	r5 s>>= 1
	r8 = r5
	call	__mulsf3
	r9 = r8
	r4 = r8
	r9 >>= 63
	r6 = r0
	r9 += r8
	r2 = r0
	r9 <<= 31
	r1 = r0
	r4 &= 1
	if w4 != 0 goto .L3476
	r9 s>>= 32
	r8 = r9
	call	__mulsf3
	r4 = r8
	r6 = r0
	r4 &= 1
	r0 = r8
	r2 = r6
	r0 >>= 63
	r1 = r6
	r0 += r8
	if w4 != 0 goto .L3476
	r0 s>>= 1
	r8 = r0
	call	__mulsf3
	r1 = r8
	r6 = r0
	r1 &= 1
	if w1 != 0 goto .L3476
	r2 = r8
	r2 >>= 63
	r2 += r8
	r2 <<= 31
	r2 s>>= 32
	r8 = r2
	goto .L3477
.L3475:
	r3 = *(u64 *) (r10+-8)
	if w3 s>= 0 goto .L3473
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L3473:
	r0 = r7
	exit
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	r3 = r1
	r0 = r2
	r3 >>= 32
	r0 >>= 32
	if w3 < w0 goto .L3487
	if w3 > w0 goto .L3488
	r4 = r1;r4 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if w2 > w1 goto .L3487
	if w4 > w5 goto .L3488
	r0 = 1
	exit
.L3487:
	r0 = 0
	exit
.L3488:
	r0 = 2
	exit
	.size	__ucmpdi2, .-__ucmpdi2
	.align	3
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	r3 = r1
	r0 = r2
	r3 >>= 32
	r0 >>= 32
	if w3 < w0 goto .L3494
	if w3 > w0 goto .L3493
	r4 = r1;r4 &= 0xffffffff
	r5 = r2;r5 &= 0xffffffff
	if w2 > w1 goto .L3494
	r0 = 1
	if w4 <= w5 goto .L3495
	r0 &= 1
	exit
.L3494:
	r0 = -1
	exit
.L3495:
	r0 = 0
	r0 &= 1
	exit
.L3493:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r2 < r4 goto .L3500
	if r2 > r4 goto .L3501
	if r1 < r3 goto .L3500
	if r1 > r3 goto .L3501
	r0 = 1
	exit
.L3500:
	r0 = 0
	exit
.L3501:
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
	.global	__ledf2
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
