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
	w4 &= 1
	if w4 == 0 goto .L8
	r9 = r2
	r5 = r1
	r9 += 1
	r0 = 1
	r5 -= r9
	if r5 <= 6 goto .L165
.L10:
	w0 &= 1
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
	r9 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r9 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L339:
	r9 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r9 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L338:
	r9 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r9 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L337:
	r9 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r9 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L336:
	r9 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r9 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
.L335:
	r9 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r9 goto .L353
	r3 += -1
	r1 += 1
	r2 += 1
	if r3 == 0 goto .L298
.L354:
	r9 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r9 goto .L353
	r9 = *(u8 *) (r1+1)
	r4 = *(u8 *) (r2+1)
	if r4 != r9 goto .L353
	r9 = *(u8 *) (r1+2)
	r4 = *(u8 *) (r2+2)
	if r4 != r9 goto .L353
	r9 = *(u8 *) (r1+3)
	r4 = *(u8 *) (r2+3)
	if r4 != r9 goto .L353
	r9 = *(u8 *) (r1+4)
	r4 = *(u8 *) (r2+4)
	if r4 != r9 goto .L353
	r9 = *(u8 *) (r1+5)
	r4 = *(u8 *) (r2+5)
	if r4 != r9 goto .L353
	r9 = *(u8 *) (r1+6)
	r4 = *(u8 *) (r2+6)
	if r4 != r9 goto .L353
	r9 = *(u8 *) (r1+7)
	r4 = *(u8 *) (r2+7)
	if r4 != r9 goto .L353
	r3 += -8
	r1 += 8
	r2 += 8
	if r3 != 0 goto .L354
.L298:
	r0 = 0
	exit
.L353:
	w9 -= w4
	r0 = (s32) r9
	exit
.L356:
	r9 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r4 != r9 goto .L353
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
	r1 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L398
.L399:
	r3 = *(s8 *) (r2+1)
	*(u8 *) (r0+1) = r3
	r0 += 1
	r4 = r0
	if r3 == 0 goto .L398
	r5 = *(s8 *) (r2+2)
	*(u8 *) (r0+1) = r5
	r0 += 1
	if r5 == 0 goto .L398
	r9 = *(s8 *) (r2+3)
	*(u8 *) (r4+2) = r9
	r0 = r4
	r0 += 2
	if r9 == 0 goto .L398
	r1 = *(s8 *) (r2+4)
	*(u8 *) (r4+3) = r1
	r0 += 1
	if r1 == 0 goto .L398
	r3 = *(s8 *) (r2+5)
	*(u8 *) (r4+4) = r3
	r0 += 1
	if r3 == 0 goto .L398
	r5 = *(s8 *) (r2+6)
	*(u8 *) (r4+5) = r5
	r0 += 1
	if r5 == 0 goto .L398
	r9 = *(s8 *) (r2+7)
	*(u8 *) (r4+6) = r9
	r2 += 8
	r0 += 1
	if r9 == 0 goto .L398
	r0 += 1
	r4 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	if r4 != 0 goto .L399
	exit
.L398:
	exit
	.size	stpcpy, .-stpcpy
	.align	3
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	r2 &= 0xff
	r0 = r1
	r3 = *(s8 *) (r1+0)
	if r3 != 0 goto .L419
	goto .L418
.L421:
	r0 += 1
	r3 = *(s8 *) (r0+0)
	if r3 == 0 goto .L418
.L419:
	w3 &= 255
	if w3 != w2 goto .L421
.L418:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 = (s32) r2
	r0 = r1
	goto .L428
.L431:
	r0 += 1
	if r1 == 0 goto .L430
.L428:
	r1 = *(s8 *) (r0+0)
	if w1 != w2 goto .L431
	exit
.L430:
	r0 = r1
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
	r0 = *(s8 *) (r1+0)
	r3 = *(s8 *) (r2+0)
	if w0 == w3 goto .L433
	r0 &= 0xff
.L434:
	r3 &= 0xff
	w0 -= w3
	exit
	.size	strcmp, .-strcmp
	.align	3
	.global	strlen
	.type	strlen, @function
strlen:
	r0 = *(u8 *) (r1+0)
	w2 = (s8) w0
	if w2 == 0 goto .L446
	r0 = r1
.L445:
	r0 += 1
	r3 = *(u8 *) (r0+0)
	r4 = r0
	w5 = (s8) w3
	if w5 == 0 goto .L462
	r0 += 1
	r9 = *(u8 *) (r0+0)
	w2 = (s8) w9
	if w2 == 0 goto .L462
	r0 = r4
	r0 += 2
	r4 = *(u8 *) (r0+0)
	w3 = (s8) w4
	if w3 == 0 goto .L462
	r0 += 1
	r5 = *(u8 *) (r0+0)
	w9 = (s8) w5
	if w9 == 0 goto .L462
	r0 += 1
	r2 = *(u8 *) (r0+0)
	w4 = (s8) w2
	if w4 == 0 goto .L462
	r0 += 1
	r3 = *(u8 *) (r0+0)
	w5 = (s8) w3
	if w5 == 0 goto .L462
	r0 += 1
	r9 = *(u8 *) (r0+0)
	w2 = (s8) w9
	if w2 == 0 goto .L462
	r0 += 1
	r4 = *(u8 *) (r0+0)
	w3 = (s8) w4
	if w3 != 0 goto .L445
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
	w4 -= w5
	r0 = (s32) r4
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
	w1 |= 32
	r0 = 1
	w1 += -97
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
	r0 = (s32) r1
	if w1 == 32 goto .L604
	w0 ^= 9
	r0 = r0
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
	r0 = (s32) r1
	if w1 <= 31 goto .L607
	w0 ^= 127
	r0 = r0
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
	w1 += -48
	r0 = 1
	if w1 <= 9 goto .L609
	r0 = 0
.L609:
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	w1 += -33
	r0 = 1
	if w1 <= 93 goto .L611
	r0 = 0
.L611:
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	w1 += -97
	r0 = 1
	if w1 <= 25 goto .L613
	r0 = 0
.L613:
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	w1 += -32
	r0 = 1
	if w1 <= 94 goto .L615
	r0 = 0
.L615:
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r0 = (s32) r1
	if w1 == 32 goto .L619
	r1 = r0
	r0 = 1
	w1 += -9
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
	w1 += -65
	r0 = 1
	if w1 <= 25 goto .L622
	r0 = 0
.L622:
	exit
	.size	isupper, .-isupper
	.align	3
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	r0 = (s32) r1
	if w1 <= 31 goto .L628
	r1 = r0
	w1 += -127
	if w1 > 32 goto .L629
.L628:
	r0 = 1
	exit
.L629:
	w1 += -8105
	if w1 <= 1 goto .L628
	w1 += -57297
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
	w1 += -48
	r0 = 1
	if w1 <= 9 goto .L631
	r0 = 0
.L631:
	exit
	.size	iswdigit, .-iswdigit
	.align	3
	.global	iswprint
	.type	iswprint, @function
iswprint:
	r0 = (s32) r1
	r2 = r1
	if w1 <= 254 goto .L640
	if w2 <= 8231 goto .L638
	r1 = r2
	w1 += -8234
	if w1 <= 47061 goto .L638
	w1 += -49110
	if w1 <= 8184 goto .L638
	w2 += -65532
	if w2 > 1048579 goto .L639
	w0 &= 65534
	w0 ^= 65534
	r0 = r0
	r0 = -r0
	r0 >>= 63
	exit
.L638:
	r0 = 1
	exit
.L640:
	r3 = r0
	r0 = 1
	w3 += 1
	w3 &= 127
	if w3 s<= 32 goto .L641
	r0 &= 1
	exit
.L641:
	r0 = 0
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
	r0 = (s32) r1
	w1 += -48
	if w1 <= 9 goto .L645
	w0 |= 32
	r1 = 1
	w0 += -97
	if w0 > 5 goto .L646
	r0 = r1
	r0 &= 1
	exit
.L645:
	r0 = 1
	exit
.L646:
	r1 = 0
	r0 = r1
	r0 &= 1
	exit
	.size	iswxdigit, .-iswxdigit
	.align	3
	.global	toascii
	.type	toascii, @function
toascii:
	r0 = r1
	w0 &= 127
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
	w0 &= -2147483648
	w1 &= -2147483648
	r2 = (s32) r0
	if w1 == w0 goto .L675
	if r2 != 0 goto .L681
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
	w0 &= -2147483648
	w1 &= -2147483648
	r2 = (s32) r0
	if w1 == w0 goto .L702
	if r2 != 0 goto .L708
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
	r0 = r1
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
	w1 += -1
	r1 = r1
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
	r0 = (s32) r1
	if w0 s< 0 goto .L757
	exit
.L757:
	w0 = -w0
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
.L765:
	r0 = *(s8 *) (r1+0)
	if w0 == 32 goto .L759
	r2 = r0
	r3 = r0
	w2 += -9
	if w2 <= 4 goto .L759
	if w0 == 43 goto .L760
	if w0 == 45 goto .L761
	w3 += -48
	if w3 > 9 goto .L770
	r2 = r0
	r5 = 0
	w2 += -48
.L763:
	r0 = 0
.L767:
	r4 = r0
	r3 = *(s8 *) (r1+1)
	w4 *= 10
	r9 = (s32) r2
	r0 = r4
	w3 += -48
	w0 -= w2
	r4 = (s32) r4
	r0 = (s32) r0
	if w3 > 9 goto .L780
	w0 *= 10
	r6 = *(s8 *) (r1+2)
	r4 = (s32) r0
	w6 += -48
	w0 -= w3
	r9 = (s32) r3
	r0 = (s32) r0
	if w6 > 9 goto .L780
	w0 *= 10
	r3 = *(s8 *) (r1+3)
	r4 = (s32) r0
	w3 += -48
	w0 -= w6
	r9 = (s32) r6
	r0 = (s32) r0
	if w3 > 9 goto .L780
	w0 *= 10
	r1 += 4
	r6 = r0
	r4 = (s32) r0
	w6 -= w3
	r2 = *(s8 *) (r1+0)
	r9 = (s32) r3
	r0 = (s32) r6
	w2 += -48
	if w2 <= 9 goto .L767
.L780:
	if r5 != 0 goto .L766
	w9 -= w4
	r0 = (s32) r9
	exit
.L759:
	r1 += 1
	goto .L765
.L761:
	r2 = *(s8 *) (r1+1)
	r1 += 1
	w2 += -48
	if w2 > 9 goto .L770
	r5 = 1
	goto .L763
.L760:
	r2 = *(s8 *) (r1+1)
	r5 = 0
	r1 += 1
	w2 += -48
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
	r0 = *(s8 *) (r1+0)
	if w0 == 32 goto .L783
	r2 = r0
	r3 = r0
	w2 += -9
	if w2 <= 4 goto .L783
	if w0 == 43 goto .L784
	if w0 == 45 goto .L785
	w3 += -48
	if w3 > 9 goto .L794
	r9 = 0
	w0 += -48
.L787:
	r2 = 0
.L791:
	r4 = (s32) r0
	r2 *= 10
	r5 = *(s8 *) (r1+1)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L812
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+2)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L812
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+3)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L812
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+4)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L812
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+5)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L812
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+6)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L812
	r2 *= 10
	r5 = *(s8 *) (r1+7)
	r3 = r2
	r4 = (s32) r0
	w5 += -48
	r2 -= r4
	if w5 > 9 goto .L812
	r2 *= 10
	r1 += 8
	r3 = r2
	r4 = (s32) r5
	r0 = *(s8 *) (r1+0)
	r2 -= r4
	w0 += -48
	if w0 <= 9 goto .L791
.L812:
	if r9 != 0 goto .L782
	r2 = r4
	r2 -= r3
.L782:
	r0 = r2
	exit
.L783:
	r1 += 1
	goto .L789
.L785:
	r0 = *(s8 *) (r1+1)
	r1 += 1
	w0 += -48
	if w0 > 9 goto .L794
	r9 = 1
	goto .L787
.L784:
	r0 = *(s8 *) (r1+1)
	r9 = 0
	r1 += 1
	w0 += -48
	if w0 <= 9 goto .L787
.L794:
	r2 = 0
	goto .L782
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
.L819:
	r0 = *(s8 *) (r1+0)
	if w0 == 32 goto .L815
	r2 = r0
	r3 = r0
	w2 += -9
	if w2 <= 4 goto .L815
	if w0 == 43 goto .L816
	if w0 == 45 goto .L817
	w3 += -48
	if w3 > 9 goto .L826
	r9 = 0
	w0 += -48
.L820:
	r2 = 0
.L823:
	r4 = (s32) r0
	r2 *= 10
	r5 = *(s8 *) (r1+1)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L844
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+2)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L844
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+3)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L844
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+4)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L844
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+5)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L844
	r2 *= 10
	r4 = (s32) r0
	r5 = *(s8 *) (r1+6)
	r3 = r2
	r0 = r5
	r2 -= r4
	w0 += -48
	if w0 > 9 goto .L844
	r2 *= 10
	r5 = *(s8 *) (r1+7)
	r3 = r2
	r4 = (s32) r0
	w5 += -48
	r2 -= r4
	if w5 > 9 goto .L844
	r2 *= 10
	r1 += 8
	r3 = r2
	r4 = (s32) r5
	r0 = *(s8 *) (r1+0)
	r2 -= r4
	w0 += -48
	if w0 <= 9 goto .L823
.L844:
	if r9 != 0 goto .L814
	r2 = r4
	r2 -= r3
.L814:
	r0 = r2
	exit
.L815:
	r1 += 1
	goto .L819
.L817:
	r0 = *(s8 *) (r1+1)
	r9 = 1
	r1 += 1
	w0 += -48
	if w0 <= 9 goto .L820
.L826:
	r2 = 0
	goto .L814
.L816:
	r0 = *(s8 *) (r1+1)
	r1 += 1
	w0 += -48
	if w0 > 9 goto .L826
	r9 = 0
	goto .L820
	.size	atoll, .-atoll
	.align	3
	.global	div
	.type	div, @function
div:
	r4 = r2
	r0 = r1
	w4 s/= w3
	w2 s%= w3
	*(u32 *) (r1+0) = r4
	*(u32 *) (r1+4) = r2
	exit
	.size	div, .-div
	.align	3
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	r0 = r1
	if r1 s< 0 goto .L849
	exit
.L849:
	r0 = -r0
	exit
	.size	imaxabs, .-imaxabs
	.align	3
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	r0 = r1
	r1 = r2
	r2 s%= r3
	r1 s/= r3
	*(u64 *) (r0+8) = r2
	*(u64 *) (r0+0) = r1
	exit
	.size	imaxdiv, .-imaxdiv
	.align	3
	.global	labs
	.type	labs, @function
labs:
	r0 = r1
	if r1 s< 0 goto .L853
	exit
.L853:
	r0 = -r0
	exit
	.size	labs, .-labs
	.align	3
	.global	ldiv
	.type	ldiv, @function
ldiv:
	r0 = r1
	r1 = r2
	r2 s%= r3
	r1 s/= r3
	*(u64 *) (r0+8) = r2
	*(u64 *) (r0+0) = r1
	exit
	.size	ldiv, .-ldiv
	.align	3
	.global	llabs
	.type	llabs, @function
llabs:
	r0 = r1
	if r1 s< 0 goto .L857
	exit
.L857:
	r0 = -r0
	exit
	.size	llabs, .-llabs
	.align	3
	.global	lldiv
	.type	lldiv, @function
lldiv:
	r0 = r1
	r1 = r2
	r2 s%= r3
	r1 s/= r3
	*(u64 *) (r0+8) = r2
	*(u64 *) (r0+0) = r1
	exit
	.size	lldiv, .-lldiv
	.align	3
	.global	wcschr
	.type	wcschr, @function
wcschr:
	r2 = (s32) r2
	r0 = *(s32 *) (r1+0)
	if r0 == 0 goto .L867
.L860:
	if w2 == w0 goto .L868
	r1 += 4
	r0 = *(s32 *) (r1+0)
	if r0 != 0 goto .L860
	exit
.L868:
	r0 = r1
	exit
.L867:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L879
.L880:
	if r3 == 0 goto .L871
	r1 += 4
	r2 += 4
.L879:
	r3 = *(s32 *) (r1+0)
	r4 = *(s32 *) (r2+0)
	if w3 == w4 goto .L880
.L871:
	if w3 s< w4 goto .L875
	r0 = 1
	if w3 s<= w4 goto .L881
	r0 &= 1
	exit
.L875:
	r0 = -1
	exit
.L881:
	r0 = 0
	r0 &= 1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L883:
	r3 = *(s32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r4 = r0
	r5 = r2
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L899
	r9 = *(s32 *) (r5+0)
	*(u32 *) (r4+0) = r9
	r5 = r2
	r4 = r0
	r5 += 8
	r4 += 8
	if r9 == 0 goto .L899
	r3 = *(s32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L899
	r9 = *(s32 *) (r5+0)
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L899
	r3 = *(s32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L899
	r9 = *(s32 *) (r5+0)
	*(u32 *) (r4+0) = r9
	r5 += 4
	r4 += 4
	if r9 == 0 goto .L899
	r3 = *(s32 *) (r5+0)
	*(u32 *) (r4+0) = r3
	r5 += 4
	r4 += 4
	if r3 == 0 goto .L899
	r5 = *(s32 *) (r5+0)
	*(u32 *) (r4+0) = r5
	r0 += 32
	r2 += 32
	if r5 != 0 goto .L883
.L899:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = *(u32 *) (r1+0)
	if w0 == 0 goto .L903
	r0 = r1
.L902:
	r0 += 4
	r2 = r0
	r3 = *(u32 *) (r0+0)
	if w3 == 0 goto .L919
	r0 += 4
	r4 = *(u32 *) (r0+0)
	if w4 == 0 goto .L919
	r0 = r2
	r0 += 8
	r5 = *(u32 *) (r0+0)
	if w5 == 0 goto .L919
	r0 += 4
	r9 = *(u32 *) (r0+0)
	if w9 == 0 goto .L919
	r0 += 4
	r2 = *(u32 *) (r0+0)
	if w2 == 0 goto .L919
	r0 += 4
	r3 = *(u32 *) (r0+0)
	if w3 == 0 goto .L919
	r0 += 4
	r4 = *(u32 *) (r0+0)
	if w4 == 0 goto .L919
	r0 += 4
	r5 = *(u32 *) (r0+0)
	if w5 != 0 goto .L902
.L919:
	r0 -= r1
	r0 s>>= 2
	exit
.L903:
	r0 = 0
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	if r3 == 0 goto .L927
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L983
	if r0 == 1 goto .L964
	if r0 == 2 goto .L965
	if r0 == 3 goto .L966
	if r0 == 4 goto .L967
	if r0 == 5 goto .L968
	if r0 != 6 goto .L985
.L969:
	r9 = *(s32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w4 != w9 goto .L923
	if r9 == 0 goto .L923
	r3 += -1
	r1 += 4
	r2 += 4
.L968:
	r0 = *(s32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	if w5 != w0 goto .L923
	if r0 == 0 goto .L923
	r3 += -1
	r1 += 4
	r2 += 4
.L967:
	r9 = *(s32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w4 != w9 goto .L923
	if r9 == 0 goto .L923
	r3 += -1
	r1 += 4
	r2 += 4
.L966:
	r0 = *(s32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	if w5 != w0 goto .L923
	if r0 == 0 goto .L923
	r3 += -1
	r1 += 4
	r2 += 4
.L965:
	r9 = *(s32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w4 != w9 goto .L923
	if r9 == 0 goto .L923
	r3 += -1
	r1 += 4
	r2 += 4
.L964:
	r0 = *(s32 *) (r1+0)
	r5 = *(u32 *) (r2+0)
	if w5 != w0 goto .L923
	if r0 == 0 goto .L923
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L927
.L983:
	r9 = *(s32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w4 != w9 goto .L923
	if r9 == 0 goto .L923
	r1 += 4
	r2 += 4
	r0 = r1
	r4 = r2
	r5 = *(s32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	if w9 != w5 goto .L923
	if r5 == 0 goto .L923
	r1 += 4
	r2 += 4
	r5 = *(s32 *) (r1+0)
	r9 = *(u32 *) (r2+0)
	if w9 != w5 goto .L923
	if r5 == 0 goto .L923
	r2 = r4
	r1 = r0
	r2 += 8
	r1 += 8
	r4 = *(s32 *) (r0+8)
	r5 = *(u32 *) (r2+0)
	if w5 != w4 goto .L923
	if r4 == 0 goto .L923
	r2 += 4
	r1 += 4
	r4 = *(s32 *) (r0+12)
	r9 = *(u32 *) (r2+0)
	if w9 != w4 goto .L923
	if r4 == 0 goto .L923
	r2 += 4
	r1 += 4
	r5 = *(s32 *) (r0+16)
	r4 = *(u32 *) (r2+0)
	if w4 != w5 goto .L923
	if r5 == 0 goto .L923
	r2 += 4
	r1 += 4
	r5 = *(s32 *) (r0+20)
	r9 = *(u32 *) (r2+0)
	if w9 != w5 goto .L923
	if r5 == 0 goto .L923
	r2 += 4
	r1 += 4
	r4 = *(s32 *) (r0+24)
	r5 = *(u32 *) (r2+0)
	if w5 != w4 goto .L923
	if r4 == 0 goto .L923
	r0 += 28
	r3 += -8
	r1 = r0
	r2 += 4
	if r3 != 0 goto .L983
.L927:
	r0 = 0
	exit
.L923:
	r3 = *(s32 *) (r1+0)
	r1 = *(s32 *) (r2+0)
	if w3 s< w1 goto .L986
	r0 = 1
	if w3 s<= w1 goto .L987
	r0 &= 1
	exit
.L986:
	r0 = -1
	exit
.L987:
	r0 = 0
	r0 &= 1
	exit
.L985:
	r5 = *(s32 *) (r1+0)
	r3 = *(u32 *) (r2+0)
	if w3 != w5 goto .L923
	if r5 == 0 goto .L923
	r3 = r4
	r1 += 4
	r2 += 4
	goto .L969
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 = (s32) r2
	if r3 == 0 goto .L992
	r4 = r3
	r0 = r3
	r4 += -1
	r0 &= 7
	if r0 == 0 goto .L1047
	if r0 == 1 goto .L1029
	if r0 == 2 goto .L1030
	if r0 == 3 goto .L1031
	if r0 == 4 goto .L1032
	if r0 == 5 goto .L1033
	if r0 != 6 goto .L1049
.L1034:
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1046
	r3 += -1
	r1 += 4
.L1033:
	r9 = *(u32 *) (r1+0)
	if w9 == w2 goto .L1046
	r3 += -1
	r1 += 4
.L1032:
	r4 = *(u32 *) (r1+0)
	if w4 == w2 goto .L1046
	r3 += -1
	r1 += 4
.L1031:
	r0 = *(u32 *) (r1+0)
	if w0 == w2 goto .L1046
	r3 += -1
	r1 += 4
.L1030:
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1046
	r3 += -1
	r1 += 4
.L1029:
	r9 = *(u32 *) (r1+0)
	if w9 == w2 goto .L1046
	r3 += -1
	r1 += 4
	if r3 == 0 goto .L992
.L1047:
	r4 = *(u32 *) (r1+0)
	if w4 == w2 goto .L1046
	r1 += 4
	r0 = r1
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1046
	r1 += 4
	r9 = *(u32 *) (r1+0)
	if w9 == w2 goto .L1046
	r1 = r0
	r1 += 8
	r4 = *(u32 *) (r1+0)
	if w4 == w2 goto .L1046
	r1 += 4
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1046
	r1 += 4
	r9 = *(u32 *) (r1+0)
	if w9 == w2 goto .L1046
	r1 += 4
	r4 = *(u32 *) (r1+0)
	if w4 == w2 goto .L1046
	r1 += 4
	r5 = *(u32 *) (r1+0)
	if w5 == w2 goto .L1046
	r0 += 28
	r3 += -8
	r1 = r0
	if r3 != 0 goto .L1047
.L992:
	r0 = 0
	exit
.L1046:
	r0 = r1
	exit
.L1049:
	r3 = *(u32 *) (r1+0)
	if w3 == w2 goto .L1046
	r3 = r4
	r1 += 4
	goto .L1034
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	if r3 == 0 goto .L1057
	r9 = r3
	r0 = r3
	r9 += -1
	r0 &= 7
	if r0 == 0 goto .L1113
	if r0 == 1 goto .L1094
	if r0 == 2 goto .L1095
	if r0 == 3 goto .L1096
	if r0 == 4 goto .L1097
	if r0 == 5 goto .L1098
	if r0 != 6 goto .L1115
.L1099:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1112
	r3 += -1
	r1 += 4
	r2 += 4
.L1098:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1112
	r3 += -1
	r1 += 4
	r2 += 4
.L1097:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1112
	r3 += -1
	r1 += 4
	r2 += 4
.L1096:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1112
	r3 += -1
	r1 += 4
	r2 += 4
.L1095:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1112
	r3 += -1
	r1 += 4
	r2 += 4
.L1094:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1112
	r3 += -1
	r1 += 4
	r2 += 4
	if r3 == 0 goto .L1057
.L1113:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1112
	r5 = *(u32 *) (r1+4)
	r4 = *(u32 *) (r2+4)
	if w5 != w4 goto .L1112
	r5 = *(u32 *) (r1+8)
	r4 = *(u32 *) (r2+8)
	if w5 != w4 goto .L1112
	r5 = *(u32 *) (r1+12)
	r4 = *(u32 *) (r2+12)
	if w5 != w4 goto .L1112
	r5 = *(u32 *) (r1+16)
	r4 = *(u32 *) (r2+16)
	if w5 != w4 goto .L1112
	r5 = *(u32 *) (r1+20)
	r4 = *(u32 *) (r2+20)
	if w5 != w4 goto .L1112
	r5 = *(u32 *) (r1+24)
	r4 = *(u32 *) (r2+24)
	if w5 != w4 goto .L1112
	r5 = *(u32 *) (r1+28)
	r4 = *(u32 *) (r2+28)
	if w5 != w4 goto .L1112
	r3 += -8
	r1 += 32
	r2 += 32
	if r3 != 0 goto .L1113
.L1057:
	r0 = 0
	exit
.L1112:
	r2 = (s32) r5
	r1 = (s32) r4
	if w4 s> w5 goto .L1116
	r0 = 1
	if w2 s<= w1 goto .L1117
	r0 &= 1
	exit
.L1116:
	r0 = -1
	exit
.L1117:
	r0 = 0
	r0 &= 1
	exit
.L1115:
	r5 = *(u32 *) (r1+0)
	r4 = *(u32 *) (r2+0)
	if w5 != w4 goto .L1112
	r3 = r9
	r1 += 4
	r2 += 4
	goto .L1099
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	if r1 == r2 goto .L1137
	r5 = r3
	r6 = r3
	r9 = r1
	r0 = r1
	r4 = r2
	r5 += -1
	r6 <<= 2
	r9 -= r2
	if r9 >= r6 goto .L1262
	if r3 == 0 goto .L1137
	r5 <<= 2
	r0 = r2
	r4 = r5
	r3 = r1
	r4 >>= 2
	r0 += r5
	r4 += 1
	r3 += r5
	r4 &= 7
	if r4 == 0 goto .L1256
	if r4 == 1 goto .L1208
	if r4 == 2 goto .L1209
	if r4 == 3 goto .L1210
	if r4 == 4 goto .L1211
	if r4 == 5 goto .L1212
	if r4 != 6 goto .L1263
.L1213:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1212:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1211:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
.L1210:
	r9 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r9
	r0 += -4
.L1209:
	r4 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r4
	r0 += -4
.L1208:
	r5 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r5
	r9 = r0
	r3 += -4
	r0 += -4
	if r2 == r9 goto .L1137
.L1256:
	r4 = *(u32 *) (r0+0)
	*(u32 *) (r3+0) = r4
	r5 = *(u32 *) (r0+-4)
	*(u32 *) (r3+-4) = r5
	r9 = *(u32 *) (r0+-8)
	*(u32 *) (r3+-8) = r9
	r4 = *(u32 *) (r0+-12)
	*(u32 *) (r3+-12) = r4
	r5 = *(u32 *) (r0+-16)
	*(u32 *) (r3+-16) = r5
	r9 = *(u32 *) (r0+-20)
	*(u32 *) (r3+-20) = r9
	r4 = *(u32 *) (r0+-24)
	*(u32 *) (r3+-24) = r4
	r5 = *(u32 *) (r0+-28)
	*(u32 *) (r3+-28) = r5
	r9 = r0
	r3 += -32
	r9 += -28
	r0 += -32
	if r2 != r9 goto .L1256
.L1137:
	r0 = r1
	exit
.L1262:
	if r3 == 0 goto .L1137
	if r5 <= 8 goto .L1214
	r9 = r2
	r6 = 1
	r9 |= r1
	r9 &= 7
	if r9 != 0 goto .L1264
.L1127:
	w6 &= 1
	if w6 == 0 goto .L1214
	r6 = r2
	r6 += 4
	r9 = r1
	r9 ^= r6
	r6 = r9
	r6 = -r6
	r6 |= r9
	if r6 s>= 0 goto .L1214
	r9 = r3
	r5 = 0
	r9 >>= 1
	r6 = r9
	r6 &= 7
	if r6 == r5 goto .L1258
	if r6 == 1 goto .L1221
	if r6 == 2 goto .L1222
	if r6 == 3 goto .L1223
	if r6 == 4 goto .L1224
	if r6 == 5 goto .L1225
	if r6 != 6 goto .L1265
.L1226:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1225:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1224:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1223:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1222:
	r6 = *(u64 *) (r4+0)
	r5 += 1
	*(u64 *) (r0+0) = r6
	r4 += 8
	r0 += 8
.L1221:
	r6 = *(u64 *) (r4+0)
	*(u64 *) (r0+0) = r6
	r5 += 1
	r4 += 8
	r0 += 8
	if r9 == r5 goto .L1255
.L1258:
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
	if r9 != r5 goto .L1258
.L1255:
	r9 = r3
	r9 &= 1
	if r9 == 0 goto .L1137
	r5 = r1
	r3 &= -2
	r0 = r1
	r3 <<= 2
	r2 += r3
	r5 += r3
	r2 = *(u32 *) (r2+0)
	*(u32 *) (r5+0) = r2
	exit
.L1264:
	r6 = 0
	goto .L1127
.L1214:
	r3 = r5
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L1257
	if r3 == 1 goto .L1215
	if r3 == 2 goto .L1216
	if r3 == 3 goto .L1217
	if r3 == 4 goto .L1218
	if r3 == 5 goto .L1219
	if r3 == 6 goto .L1220
	r4 = *(u32 *) (r2+0)
	r0 = r1
	*(u32 *) (r1+0) = r4
	r2 += 4
	r5 += -1
	r0 += 4
	r4 = r2
.L1220:
	r9 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r9
	r4 += 4
	r0 += 4
.L1219:
	r2 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r2
	r4 += 4
	r0 += 4
.L1218:
	r3 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r3
	r4 += 4
	r0 += 4
.L1217:
	r9 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r9
	r4 += 4
	r0 += 4
.L1216:
	r2 = *(u32 *) (r4+0)
	r5 += -1
	*(u32 *) (r0+0) = r2
	r4 += 4
	r0 += 4
.L1215:
	r3 = *(u32 *) (r4+0)
	*(u32 *) (r0+0) = r3
	r5 += -1
	r0 += 4
	r4 += 4
	if r5 == -1 goto .L1137
.L1257:
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
	if r5 != -1 goto .L1257
	goto .L1137
.L1263:
	r5 = *(u32 *) (r0+0)
	r3 += -4
	*(u32 *) (r3+4) = r5
	r0 += -4
	goto .L1213
.L1265:
	r0 = *(u64 *) (r2+0)
	r4 = r2
	*(u64 *) (r1+0) = r0
	r5 = 1
	r0 = r1
	r4 += 8
	r0 += 8
	goto .L1226
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r9 = r3
	r2 = (s32) r2
	r9 += -1
	if r3 == 0 goto .L1267
	r0 = r1
	r6 = r1
	r0 >>= 2
	r0 &= 1
	if r9 <= 5 goto .L1268
	if r0 == 0 goto .L1269
	r6 += 4
	*(u32 *) (r1+0) = r2
	r9 += -1
.L1269:
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
	r4 = r2
	r8 &= 7
	r4 |= r5
	r5 = 0
	if r8 == r5 goto .L1332
	if r8 == 1 goto .L1310
	if r8 == 2 goto .L1311
	if r8 == 3 goto .L1312
	if r8 == 4 goto .L1313
	if r8 == 5 goto .L1314
	if r8 != 6 goto .L1334
.L1315:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1314:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1313:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1312:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1311:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
.L1310:
	*(u64 *) (r0+0) = r4
	r5 += 1
	r0 += 8
	if r5 == r7 goto .L1331
.L1332:
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
	if r5 != r7 goto .L1332
.L1331:
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1267
	r3 &= -2
	r4 = r3
	r9 -= r3
	r4 <<= 2
	r6 += r4
.L1268:
	*(u32 *) (r6+0) = r2
	if r9 == 0 goto .L1267
	*(u32 *) (r6+4) = r2
	if r9 == 1 goto .L1267
	*(u32 *) (r6+8) = r2
	if r9 == 2 goto .L1267
	*(u32 *) (r6+12) = r2
	if r9 == 3 goto .L1267
	*(u32 *) (r6+16) = r2
	if r9 == 4 goto .L1267
	*(u32 *) (r6+20) = r2
.L1267:
	r0 = r1
	exit
.L1334:
	*(u64 *) (r0+0) = r4
	r5 = 1
	r0 += 8
	goto .L1315
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L1336
	r0 = r1
	r2 += r3
	r0 += r3
	if r3 == 0 goto .L1335
	r9 = r0
	r9 -= r1
	r9 &= 7
	if r9 == 0 goto .L1489
	if r9 == 1 goto .L1435
	if r9 == 2 goto .L1436
	if r9 == 3 goto .L1437
	if r9 == 4 goto .L1438
	if r9 == 5 goto .L1439
	if r9 == 6 goto .L1440
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1440:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1439:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L1438:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L1437:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L1436:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L1435:
	r2 += -1
	r3 = *(u8 *) (r0+-1)
	*(u8 *) (r2+0) = r3
	r0 += -1
	if r1 == r0 goto .L1495
.L1489:
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
	if r1 != r0 goto .L1489
	exit
.L1336:
	if r1 != r2 goto .L1496
.L1335:
	exit
.L1496:
	if r3 == 0 goto .L1335
	r0 = r3
	r0 += -1
	if r0 <= 7 goto .L1339
	r5 = r2
	r4 = 1
	r5 |= r1
	r5 &= 7
	if r5 != 0 goto .L1497
.L1340:
	w4 &= 1
	if w4 == 0 goto .L1339
	r9 = r1
	r5 = r2
	r9 += 1
	r0 = 1
	r5 -= r9
	if r5 <= 6 goto .L1498
.L1341:
	w0 &= 1
	if w0 == 0 goto .L1339
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
	if r4 == 0 goto .L1491
	if r4 == 1 goto .L1441
	if r4 == 2 goto .L1442
	if r4 == 3 goto .L1443
	if r4 == 4 goto .L1444
	if r4 == 5 goto .L1445
	if r4 != 6 goto .L1499
.L1446:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1445:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1444:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1443:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1442:
	r4 = *(u64 *) (r1+0)
	r0 += 8
	*(u64 *) (r0+-8) = r4
	r1 += 8
.L1441:
	r4 = *(u64 *) (r1+0)
	*(u64 *) (r0+0) = r4
	r1 += 8
	r0 += 8
	if r9 == r1 goto .L1488
.L1491:
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
	if r9 != r1 goto .L1491
.L1488:
	r0 = r3
	r2 += r5
	r0 -= r5
	if r3 == r5 goto .L1335
	r1 = *(u8 *) (r9+0)
	*(u8 *) (r2+0) = r1
	if r0 == 1 goto .L1335
	r3 = *(u8 *) (r9+1)
	*(u8 *) (r2+1) = r3
	if r0 == 2 goto .L1335
	r5 = *(u8 *) (r9+2)
	*(u8 *) (r2+2) = r5
	if r0 == 3 goto .L1335
	r4 = *(u8 *) (r9+3)
	*(u8 *) (r2+3) = r4
	if r0 == 4 goto .L1335
	r1 = *(u8 *) (r9+4)
	*(u8 *) (r2+4) = r1
	if r0 == 5 goto .L1335
	r3 = *(u8 *) (r9+5)
	*(u8 *) (r2+5) = r3
	if r0 == 6 goto .L1335
	r9 = *(u8 *) (r9+6)
	*(u8 *) (r2+6) = r9
	exit
.L1497:
	r4 = 0
	goto .L1340
.L1498:
	r0 = 0
	goto .L1341
.L1339:
	r0 = r1
	r0 += r3
	r3 &= 7
	if r3 == 0 goto .L1490
	if r3 == 1 goto .L1447
	if r3 == 2 goto .L1448
	if r3 == 3 goto .L1449
	if r3 == 4 goto .L1450
	if r3 == 5 goto .L1451
	if r3 == 6 goto .L1452
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1452:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1451:
	r3 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r3
	r1 += 1
.L1450:
	r9 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r9
	r1 += 1
.L1449:
	r5 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r5
	r1 += 1
.L1448:
	r4 = *(u8 *) (r1+0)
	r2 += 1
	*(u8 *) (r2+-1) = r4
	r1 += 1
.L1447:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r2+0) = r3
	r1 += 1
	r2 += 1
	if r0 == r1 goto .L1500
.L1490:
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
	if r0 != r1 goto .L1490
	goto .L1335
.L1495:
	exit
.L1499:
	r0 = *(u64 *) (r1+0)
	r1 += 8
	*(u64 *) (r2+0) = r0
	r0 = r2
	r0 += 8
	goto .L1446
.L1500:
	exit
	.size	bcopy, .-bcopy
	.align	3
	.global	rotl64
	.type	rotl64, @function
rotl64:
	r0 = r2
	r3 = r1
	w2 = -w2
	r3 <<= r0
	r2 &= 63
	r1 >>= r2
	r0 = r1
	r0 |= r3
	exit
	.size	rotl64, .-rotl64
	.align	3
	.global	rotr64
	.type	rotr64, @function
rotr64:
	r0 = r2
	r3 = r1
	w2 = -w2
	r3 >>= r0
	r2 &= 63
	r1 <<= r2
	r0 = r1
	r0 |= r3
	exit
	.size	rotr64, .-rotr64
	.align	3
	.global	rotl32
	.type	rotl32, @function
rotl32:
	r3 = r1
	r0 = r1
	w3 <<= w2
	w2 = -w2
	w2 &= 31
	w0 >>= w2
	w0 |= w3
	exit
	.size	rotl32, .-rotl32
	.align	3
	.global	rotr32
	.type	rotr32, @function
rotr32:
	r3 = r1
	r0 = r1
	w3 >>= w2
	w2 = -w2
	w2 &= 31
	w0 <<= w2
	w0 |= w3
	exit
	.size	rotr32, .-rotr32
	.align	3
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	r0 = r2
	r3 = r1
	w2 = -w2
	r3 <<= r0
	r2 &= 63
	r1 >>= r2
	r0 = r1
	r0 |= r3
	exit
	.size	rotl_sz, .-rotl_sz
	.align	3
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	r0 = r2
	r3 = r1
	w2 = -w2
	r3 >>= r0
	r2 &= 63
	r1 <<= r2
	r0 = r1
	r0 |= r3
	exit
	.size	rotr_sz, .-rotr_sz
	.align	3
	.global	rotl16
	.type	rotl16, @function
rotl16:
	r1 &= 0xffff
	w2 &= 15
	r0 = r1
	w0 <<= w2
	w2 = -w2
	w2 &= 15
	w1 >>= w2
	w0 |= w1
	exit
	.size	rotl16, .-rotl16
	.align	3
	.global	rotr16
	.type	rotr16, @function
rotr16:
	r1 &= 0xffff
	w2 &= 15
	r0 = r1
	w0 >>= w2
	w2 = -w2
	w2 &= 15
	w1 <<= w2
	w0 |= w1
	exit
	.size	rotr16, .-rotr16
	.align	3
	.global	rotl8
	.type	rotl8, @function
rotl8:
	r1 &= 0xff
	w2 &= 7
	r0 = r1
	w0 <<= w2
	w2 = -w2
	w2 &= 7
	w1 >>= w2
	w0 |= w1
	exit
	.size	rotl8, .-rotl8
	.align	3
	.global	rotr8
	.type	rotr8, @function
rotr8:
	r1 &= 0xff
	w2 &= 7
	r0 = r1
	w0 >>= w2
	w2 = -w2
	w2 &= 7
	w1 <<= w2
	w0 |= w1
	exit
	.size	rotr8, .-rotr8
	.align	3
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	r0 = r1
	r0 = bswap16 r0
	exit
	.size	bswap_16, .-bswap_16
	.align	3
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	r0 = r1
	r0 = bswap32 r0
	exit
	.size	bswap_32, .-bswap_32
	.align	3
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	r0 = r1
	r0 = bswap64 r0
	exit
	.size	bswap_64, .-bswap_64
	.align	3
	.global	ffs
	.type	ffs, @function
ffs:
	r1 = r1
	r2 = 0
.L1517:
	r0 = r1
	w0 >>= w2
	w2 += 1
	r0 &= 1
	r2 = r2
	if r0 != 0 goto .L1540
	r3 = r1
	w3 >>= w2
	w2 += 1
	r3 &= 1
	r2 = r2
	if r3 != 0 goto .L1540
	r4 = r1
	w4 >>= w2
	w2 += 1
	r4 &= 1
	r2 = r2
	if r4 != 0 goto .L1540
	r5 = r1
	w5 >>= w2
	w2 += 1
	r5 &= 1
	r2 = r2
	if r5 != 0 goto .L1540
	r9 = r1
	w9 >>= w2
	w2 += 1
	r9 &= 1
	r2 = r2
	if r9 != 0 goto .L1540
	r0 = r1
	w0 >>= w2
	w2 += 1
	r0 &= 1
	r2 = r2
	if r0 != 0 goto .L1540
	r3 = r1
	w3 >>= w2
	w2 += 1
	r3 &= 1
	r2 = r2
	if r3 != 0 goto .L1540
	r4 = r2
	r0 = r1
	w4 += 1
	w0 >>= w2
	r2 = r4
	r0 &= 1
	if r0 != 0 goto .L1540
	if w4 != 32 goto .L1517
	exit
.L1540:
	r0 = (s32) r2
	exit
	.size	ffs, .-ffs
	.align	3
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	r2 = (s32) r1
	r0 = r2
	if w1 == 0 goto .L1544
	r0 &= 1
	if r0 != 0 goto .L1544
	r0 = 1
.L1545:
	r2 s>>= 1
	w0 += 1
	r1 = r2
	r0 = (s32) r0
	w1 &= 1
	if w1 != 0 goto .L1563
	r2 s>>= 1
	w0 += 1
	r3 = r2
	r0 = (s32) r0
	w3 &= 1
	if w3 != 0 goto .L1544
	r2 s>>= 1
	w0 += 1
	r4 = r2
	r0 = (s32) r0
	w4 &= 1
	if w4 != 0 goto .L1544
	r2 s>>= 1
	w0 += 1
	r5 = r2
	r0 = (s32) r0
	w5 &= 1
	if w5 != 0 goto .L1544
	r2 s>>= 1
	w0 += 1
	r9 = r2
	r0 = (s32) r0
	w9 &= 1
	if w9 != 0 goto .L1544
	r2 s>>= 1
	w0 += 1
	r1 = r2
	r0 = (s32) r0
	w1 &= 1
	if w1 != 0 goto .L1544
	r2 s>>= 1
	w0 += 1
	r3 = r2
	r0 = (s32) r0
	w3 &= 1
	if w3 != 0 goto .L1544
	r2 s>>= 1
	w0 += 1
	r4 = r2
	r0 = (s32) r0
	w4 &= 1
	if w4 == 0 goto .L1545
	exit
.L1544:
	exit
.L1563:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r2 = 0xff7fffff ll
	r6 = r1
	call	__ltsf2
	if r0 s< 0 goto .L1567
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1568
	r0 = r7
	r0 &= 1
	exit
.L1567:
	r0 = 1
	exit
.L1568:
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
	if r0 s< 0 goto .L1572
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1573
	r0 = r7
	r0 &= 1
	exit
.L1572:
	r0 = 1
	exit
.L1573:
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
	if r0 s< 0 goto .L1577
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1578
	r0 = r7
	r0 &= 1
	exit
.L1577:
	r0 = 1
	exit
.L1578:
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
	r1 = r2
	call	__bpf_floatsidf
	*(u64 *) (r6+0) = r0
	exit
	.size	_Qp_itoq, .-_Qp_itoq
	.align	3
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	r7 = (s32) r2
	r8 = r1
	r2 = r1
	call	__unordsf2
	if r0 != 0 goto .L1581
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r8
	r1 = r0
	call	__nesf2
	if r0 == 0 goto .L1581
	if w7 s< 0 goto .L1598
	r6 = 0x40000000 ll
.L1583:
	r0 = r7
	w0 &= 1
	if w0 == 0 goto .L1584
.L1585:
	r1 = r8
	r2 = r6
	call	__mulsf3
	r8 = r0
.L1584:
	r1 = r7
	w1 >>= 31
	w1 += w7
	w1 s>>= 1
	r7 = (s32) r1
	if w1 == 0 goto .L1581
.L1586:
	r2 = r6
	r1 = r6
	call	__mulsf3
	r4 = r7
	r3 = r7
	w4 >>= 31
	r6 = r0
	w4 += w7
	r2 = r0
	w4 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1585
	r7 = (s32) r4
	call	__mulsf3
	r2 = r7
	r6 = r0
	w2 &= 1
	if w2 != 0 goto .L1585
	r5 = r7
	w5 >>= 31
	w5 += w7
	w5 s>>= 1
	r2 = r0
	r7 = (s32) r5
	r1 = r0
	call	__mulsf3
	r9 = r7
	r6 = r0
	w9 >>= 31
	r2 = r0
	w9 += w7
	r1 = r0
	w9 s>>= 1
	r0 = r7
	w0 &= 1
	if w0 != 0 goto .L1585
	r7 = (s32) r9
	call	__mulsf3
	r4 = r7
	r3 = r7
	w4 >>= 31
	r6 = r0
	w4 += w7
	r2 = r0
	w4 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1585
	r7 = (s32) r4
	call	__mulsf3
	r5 = r7
	r9 = r7
	w5 >>= 31
	r6 = r0
	w5 += w7
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w9 &= 1
	if w9 != 0 goto .L1585
	r7 = (s32) r5
	call	__mulsf3
	r4 = r7
	r6 = r0
	w4 &= 1
	r0 = r7
	r2 = r6
	w0 >>= 31
	r1 = r6
	w0 += w7
	w0 s>>= 1
	if w4 != 0 goto .L1585
	r7 = (s32) r0
	call	__mulsf3
	r5 = r7
	r3 = r7
	w5 >>= 31
	r6 = r0
	w5 += w7
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1585
	r7 = (s32) r5
	call	__mulsf3
	r1 = r7
	r6 = r0
	w1 &= 1
	if w1 != 0 goto .L1585
	r2 = r7
	w2 >>= 31
	w2 += w7
	w2 s>>= 1
	r7 = (s32) r2
	goto .L1586
.L1581:
	r0 = r8
	exit
.L1598:
	r6 = 0x3f000000 ll
	goto .L1583
	.size	ldexpf, .-ldexpf
	.align	3
	.global	ldexp
	.type	ldexp, @function
ldexp:
	r7 = (s32) r2
	r8 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L1600
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r8
	r1 = r0
	call	__nedf2
	if r0 == 0 goto .L1600
	if w7 s< 0 goto .L1617
	r6 = 0x4000000000000000 ll
.L1602:
	r0 = r7
	w0 &= 1
	if w0 == 0 goto .L1603
.L1604:
	r1 = r8
	r2 = r6
	call	__muldf3
	r8 = r0
.L1603:
	r1 = r7
	w1 >>= 31
	w1 += w7
	w1 s>>= 1
	r7 = (s32) r1
	if w1 == 0 goto .L1600
.L1605:
	r2 = r6
	r1 = r6
	call	__muldf3
	r4 = r7
	r3 = r7
	w4 >>= 31
	r6 = r0
	w4 += w7
	r2 = r0
	w4 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1604
	r7 = (s32) r4
	call	__muldf3
	r2 = r7
	r6 = r0
	w2 &= 1
	if w2 != 0 goto .L1604
	r5 = r7
	w5 >>= 31
	w5 += w7
	w5 s>>= 1
	r2 = r0
	r7 = (s32) r5
	r1 = r0
	call	__muldf3
	r9 = r7
	r6 = r0
	w9 >>= 31
	r2 = r0
	w9 += w7
	r1 = r0
	w9 s>>= 1
	r0 = r7
	w0 &= 1
	if w0 != 0 goto .L1604
	r7 = (s32) r9
	call	__muldf3
	r4 = r7
	r3 = r7
	w4 >>= 31
	r6 = r0
	w4 += w7
	r2 = r0
	w4 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1604
	r7 = (s32) r4
	call	__muldf3
	r5 = r7
	r9 = r7
	w5 >>= 31
	r6 = r0
	w5 += w7
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w9 &= 1
	if w9 != 0 goto .L1604
	r7 = (s32) r5
	call	__muldf3
	r4 = r7
	r6 = r0
	w4 &= 1
	r0 = r7
	r2 = r6
	w0 >>= 31
	r1 = r6
	w0 += w7
	w0 s>>= 1
	if w4 != 0 goto .L1604
	r7 = (s32) r0
	call	__muldf3
	r5 = r7
	r3 = r7
	w5 >>= 31
	r6 = r0
	w5 += w7
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1604
	r7 = (s32) r5
	call	__muldf3
	r1 = r7
	r6 = r0
	w1 &= 1
	if w1 != 0 goto .L1604
	r2 = r7
	w2 >>= 31
	w2 += w7
	w2 s>>= 1
	r7 = (s32) r2
	goto .L1605
.L1600:
	r0 = r8
	exit
.L1617:
	r6 = 0x3fe0000000000000 ll
	goto .L1602
	.size	ldexp, .-ldexp
	.align	3
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	r7 = (s32) r2
	r8 = r1
	r2 = r1
	call	__unorddf2
	if r0 != 0 goto .L1619
	r2 = r8
	r1 = r8
	call	__adddf3
	r1 = r8
	r2 = r0
	call	__nedf2
	if r0 == 0 goto .L1619
	if w7 s< 0 goto .L1636
	r6 = 0x4000000000000000 ll
.L1621:
	r0 = r7
	w0 &= 1
	if w0 == 0 goto .L1622
.L1623:
	r1 = r8
	r2 = r6
	call	__muldf3
	r8 = r0
.L1622:
	r1 = r7
	w1 >>= 31
	w1 += w7
	w1 s>>= 1
	r7 = (s32) r1
	if w1 == 0 goto .L1619
.L1624:
	r2 = r6
	r1 = r6
	call	__muldf3
	r4 = r7
	r3 = r7
	w4 >>= 31
	r6 = r0
	w4 += w7
	r2 = r0
	w4 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1623
	r7 = (s32) r4
	call	__muldf3
	r2 = r7
	r6 = r0
	w2 &= 1
	if w2 != 0 goto .L1623
	r5 = r7
	w5 >>= 31
	w5 += w7
	w5 s>>= 1
	r2 = r0
	r7 = (s32) r5
	r1 = r0
	call	__muldf3
	r9 = r7
	r6 = r0
	w9 >>= 31
	r2 = r0
	w9 += w7
	r1 = r0
	w9 s>>= 1
	r0 = r7
	w0 &= 1
	if w0 != 0 goto .L1623
	r7 = (s32) r9
	call	__muldf3
	r4 = r7
	r3 = r7
	w4 >>= 31
	r6 = r0
	w4 += w7
	r2 = r0
	w4 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1623
	r7 = (s32) r4
	call	__muldf3
	r5 = r7
	r9 = r7
	w5 >>= 31
	r6 = r0
	w5 += w7
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w9 &= 1
	if w9 != 0 goto .L1623
	r7 = (s32) r5
	call	__muldf3
	r4 = r7
	r6 = r0
	w4 &= 1
	r0 = r7
	r2 = r6
	w0 >>= 31
	r1 = r6
	w0 += w7
	w0 s>>= 1
	if w4 != 0 goto .L1623
	r7 = (s32) r0
	call	__muldf3
	r5 = r7
	r3 = r7
	w5 >>= 31
	r6 = r0
	w5 += w7
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w3 &= 1
	if w3 != 0 goto .L1623
	r7 = (s32) r5
	call	__muldf3
	r1 = r7
	r6 = r0
	w1 &= 1
	if w1 != 0 goto .L1623
	r2 = r7
	w2 >>= 31
	w2 += w7
	w2 s>>= 1
	r7 = (s32) r2
	goto .L1624
.L1619:
	r0 = r8
	exit
.L1636:
	r6 = 0x3fe0000000000000 ll
	goto .L1621
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	if r3 == 0 goto .L1638
	r0 = r3
	r0 += -1
	if r0 <= 6 goto .L1639
	r4 = r1
	r4 |= r2
	r4 &= 7
	if r4 != 0 goto .L1639
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
	if r6 == 0 goto .L1739
	if r6 == 1 goto .L1702
	if r6 == 2 goto .L1703
	if r6 == 3 goto .L1704
	if r6 == 4 goto .L1705
	if r6 == 5 goto .L1706
	if r6 == 6 goto .L1707
	r4 = *(u64 *) (r1+0)
	r0 = *(u64 *) (r2+0)
	r2 += 8
	r0 ^= r4
	r4 = r1
	*(u64 *) (r1+0) = r0
	r4 += 8
.L1707:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1706:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1705:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1704:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1703:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r4 += 8
	r0 ^= r6
	r2 += 8
	*(u64 *) (r4+-8) = r0
.L1702:
	r6 = *(u64 *) (r4+0)
	r0 = *(u64 *) (r2+0)
	r0 ^= r6
	*(u64 *) (r4+0) = r0
	r2 += 8
	r4 += 8
	if r9 == r2 goto .L1737
.L1739:
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
	if r9 != r2 goto .L1739
.L1737:
	r0 = r1
	r2 = r3
	r0 += r5
	r2 -= r5
	if r3 == r5 goto .L1638
	r3 = *(u8 *) (r0+0)
	r5 = *(u8 *) (r9+0)
	w3 ^= w5
	*(u8 *) (r0+0) = r3
	if r2 == 1 goto .L1638
	r4 = *(u8 *) (r0+1)
	r3 = *(u8 *) (r9+1)
	w3 ^= w4
	*(u8 *) (r0+1) = r3
	if r2 == 2 goto .L1638
	r5 = *(u8 *) (r0+2)
	r4 = *(u8 *) (r9+2)
	w4 ^= w5
	*(u8 *) (r0+2) = r4
	if r2 == 3 goto .L1638
	r5 = *(u8 *) (r0+3)
	r3 = *(u8 *) (r9+3)
	w3 ^= w5
	*(u8 *) (r0+3) = r3
	if r2 == 4 goto .L1638
	r4 = *(u8 *) (r0+4)
	r5 = *(u8 *) (r9+4)
	w5 ^= w4
	*(u8 *) (r0+4) = r5
	if r2 == 5 goto .L1638
	r4 = *(u8 *) (r0+5)
	r3 = *(u8 *) (r9+5)
	w3 ^= w4
	*(u8 *) (r0+5) = r3
	if r2 == 6 goto .L1638
	r5 = *(u8 *) (r0+6)
	r9 = *(u8 *) (r9+6)
	w9 ^= w5
	*(u8 *) (r0+6) = r9
.L1638:
	r0 = r1
	exit
.L1639:
	r4 = r2
	r9 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L1738
	if r3 == 1 goto .L1708
	if r3 == 2 goto .L1709
	if r3 == 3 goto .L1710
	if r3 == 4 goto .L1711
	if r3 == 5 goto .L1712
	if r3 == 6 goto .L1713
	r3 = *(u8 *) (r2+0)
	r0 = *(u8 *) (r1+0)
	r2 += 1
	w3 ^= w0
	r9 += 1
	*(u8 *) (r1+0) = r3
.L1713:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	w3 ^= w5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1712:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	r9 += 1
	w5 ^= w0
	r2 += 1
	*(u8 *) (r9+-1) = r5
.L1711:
	r0 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	w3 ^= w0
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1710:
	r5 = *(u8 *) (r9+0)
	r0 = *(u8 *) (r2+0)
	r9 += 1
	w0 ^= w5
	r2 += 1
	*(u8 *) (r9+-1) = r0
.L1709:
	r5 = *(u8 *) (r9+0)
	r3 = *(u8 *) (r2+0)
	r9 += 1
	w3 ^= w5
	r2 += 1
	*(u8 *) (r9+-1) = r3
.L1708:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r2+0)
	w5 ^= w0
	*(u8 *) (r9+0) = r5
	r2 += 1
	r9 += 1
	if r4 == r2 goto .L1638
.L1738:
	r0 = *(u8 *) (r9+0)
	r5 = *(u8 *) (r9+1)
	r3 = *(u8 *) (r2+0)
	w3 ^= w0
	r0 = *(u8 *) (r2+1)
	w0 ^= w5
	*(u8 *) (r9+0) = r3
	*(u8 *) (r9+1) = r0
	r3 = *(u8 *) (r2+2)
	r0 = *(u8 *) (r9+2)
	w3 ^= w0
	r5 = *(u8 *) (r9+3)
	*(u8 *) (r9+2) = r3
	r3 = *(u8 *) (r2+3)
	w3 ^= w5
	r0 = *(u8 *) (r2+4)
	*(u8 *) (r9+3) = r3
	r3 = *(u8 *) (r9+4)
	w0 ^= w3
	r5 = *(u8 *) (r9+5)
	*(u8 *) (r9+4) = r0
	r0 = *(u8 *) (r2+5)
	w0 ^= w5
	r3 = *(u8 *) (r2+6)
	*(u8 *) (r9+5) = r0
	r0 = *(u8 *) (r9+6)
	w3 ^= w0
	r5 = *(u8 *) (r9+7)
	*(u8 *) (r9+6) = r3
	r3 = *(u8 *) (r2+7)
	w3 ^= w5
	*(u8 *) (r9+7) = r3
	r2 += 8
	r9 += 8
	if r4 != r2 goto .L1738
	goto .L1638
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	r0 = *(u8 *) (r1+0)
	w4 = (s8) w0
	if w4 == 0 goto .L1749
	r0 = r1
.L1744:
	r0 += 1
	r5 = *(u8 *) (r0+0)
	r9 = r0
	w4 = (s8) w5
	if w4 == 0 goto .L1743
	r0 += 1
	r5 = *(u8 *) (r0+0)
	w4 = (s8) w5
	if w4 == 0 goto .L1743
	r0 = r9
	r0 += 2
	r9 = *(u8 *) (r0+0)
	w5 = (s8) w9
	if w5 == 0 goto .L1743
	r0 += 1
	r4 = *(u8 *) (r0+0)
	w9 = (s8) w4
	if w9 == 0 goto .L1743
	r0 += 1
	r5 = *(u8 *) (r0+0)
	w4 = (s8) w5
	if w4 == 0 goto .L1743
	r0 += 1
	r9 = *(u8 *) (r0+0)
	w5 = (s8) w9
	if w5 == 0 goto .L1743
	r0 += 1
	r4 = *(u8 *) (r0+0)
	w9 = (s8) w4
	if w9 == 0 goto .L1743
	r0 += 1
	r5 = *(u8 *) (r0+0)
	w4 = (s8) w5
	if w4 != 0 goto .L1744
.L1743:
	if r3 == 0 goto .L1746
	r9 = r3
	r5 = r3
	r9 += -1
	r5 &= 7
	if r5 == 0 goto .L1819
	if r5 == 1 goto .L1797
	if r5 == 2 goto .L1798
	if r5 == 3 goto .L1799
	if r5 == 4 goto .L1800
	if r5 == 5 goto .L1801
	if r5 != 6 goto .L1821
.L1802:
	r4 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1748
	r2 += 1
	r0 += 1
	r3 += -1
.L1801:
	r9 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1748
	r2 += 1
	r0 += 1
	r3 += -1
.L1800:
	r5 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1748
	r2 += 1
	r0 += 1
	r3 += -1
.L1799:
	r4 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1748
	r2 += 1
	r0 += 1
	r3 += -1
.L1798:
	r9 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1748
	r2 += 1
	r0 += 1
	r3 += -1
.L1797:
	r5 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1748
	r2 += 1
	r0 += 1
	r3 += -1
	if r3 == 0 goto .L1746
.L1819:
	r4 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1748
	r9 = *(s8 *) (r2+1)
	*(u8 *) (r0+1) = r9
	if r9 == 0 goto .L1748
	r5 = *(s8 *) (r2+2)
	*(u8 *) (r0+2) = r5
	if r5 == 0 goto .L1748
	r4 = *(s8 *) (r2+3)
	*(u8 *) (r0+3) = r4
	if r4 == 0 goto .L1748
	r9 = *(s8 *) (r2+4)
	*(u8 *) (r0+4) = r9
	if r9 == 0 goto .L1748
	r5 = *(s8 *) (r2+5)
	*(u8 *) (r0+5) = r5
	if r5 == 0 goto .L1748
	r4 = *(s8 *) (r2+6)
	*(u8 *) (r0+6) = r4
	if r4 == 0 goto .L1748
	r9 = *(s8 *) (r2+7)
	*(u8 *) (r0+7) = r9
	if r9 == 0 goto .L1748
	r2 += 8
	r0 += 8
	r3 += -8
	if r3 != 0 goto .L1819
.L1746:
	*(u8 *) (r0+0) = 0
.L1748:
	r0 = r1
	exit
.L1821:
	r3 = *(s8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1748
	r2 += 1
	r0 += 1
	r3 = r9
	goto .L1802
.L1749:
	r0 = r1
	goto .L1743
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r3 = 0
	if r2 == r3 goto .L1822
	r0 = r2
	r0 &= 7
	if r0 == r3 goto .L1878
	if r0 == 1 goto .L1864
	if r0 == 2 goto .L1865
	if r0 == 3 goto .L1866
	if r0 == 4 goto .L1867
	if r0 == 5 goto .L1868
	if r0 != 6 goto .L1881
.L1869:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	w4 = (s8) w0
	if w4 == 0 goto .L1822
	r3 += 1
.L1868:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	w0 = (s8) w9
	if w0 != 0 goto .L1882
.L1822:
	r0 = r3
	exit
.L1881:
	r4 = *(u8 *) (r1+0)
	w5 = (s8) w4
	if w5 == 0 goto .L1822
	r3 = 1
	goto .L1869
.L1882:
	r3 += 1
.L1867:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r3 += 1
.L1866:
	r0 = r1
	r0 += r3
	r4 = *(u8 *) (r0+0)
	w5 = (s8) w4
	if w5 == 0 goto .L1822
	r3 += 1
.L1865:
	r9 = r1
	r9 += r3
	r0 = *(u8 *) (r9+0)
	w4 = (s8) w0
	if w4 == 0 goto .L1822
	r3 += 1
.L1864:
	r5 = r1
	r5 += r3
	r9 = *(u8 *) (r5+0)
	w0 = (s8) w9
	if w0 == 0 goto .L1822
	r3 += 1
	if r2 == r3 goto .L1822
.L1878:
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r3 += 1
	r4 = r1
	r0 = r3
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r3 = r0
	r4 = r1
	r3 += 2
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r3 += 1
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r4+0)
	w9 = (s8) w5
	if w9 == 0 goto .L1822
	r0 += 7
	r3 = r0
	if r2 != r0 goto .L1878
	goto .L1822
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	r0 = r1
	r5 = *(s8 *) (r1+0)
	if r5 == 0 goto .L1888
.L1884:
	r3 = r2
	goto .L1887
.L1886:
	r3 += 1
	if w4 == w5 goto .L1885
.L1887:
	r4 = *(s8 *) (r3+0)
	if r4 != 0 goto .L1886
	r0 += 1
	r5 = *(s8 *) (r0+0)
	if r5 != 0 goto .L1884
.L1888:
	r0 = r5
.L1885:
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	r2 = (s32) r2
	r4 = 0
	goto .L1895
.L1898:
	r0 = r1
	r1 += 1
	r4 = r0
	if r3 == 0 goto .L1897
.L1895:
	r3 = *(s8 *) (r1+0)
	r0 = r3
	w0 ^= w2
	r5 = r0
	r5 += -1
	if r5 s< 0 goto .L1898
	r0 = r4
	r1 += 1
	r4 = r0
	if r3 != 0 goto .L1895
.L1897:
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	r5 = *(s8 *) (r2+0)
	if r5 == 0 goto .L1910
	r0 = r2
.L1901:
	r0 += 1
	r4 = *(u8 *) (r0+0)
	r3 = r0
	w6 = (s8) w4
	if w6 == 0 goto .L2010
	r0 += 1
	r9 = *(u8 *) (r0+0)
	w4 = (s8) w9
	if w4 == 0 goto .L2010
	r0 = r3
	r0 += 2
	r3 = *(u8 *) (r0+0)
	w6 = (s8) w3
	if w6 == 0 goto .L2010
	r0 += 1
	r9 = *(u8 *) (r0+0)
	w4 = (s8) w9
	if w4 == 0 goto .L2010
	r0 += 1
	r3 = *(u8 *) (r0+0)
	w6 = (s8) w3
	if w6 == 0 goto .L2010
	r0 += 1
	r9 = *(u8 *) (r0+0)
	w4 = (s8) w9
	if w4 == 0 goto .L2010
	r0 += 1
	r3 = *(u8 *) (r0+0)
	w6 = (s8) w3
	if w6 == 0 goto .L2010
	r0 += 1
	r9 = *(u8 *) (r0+0)
	w4 = (s8) w9
	if w4 != 0 goto .L1901
.L2010:
	r6 = r0
	r6 -= r2
	if r0 == r2 goto .L1910
	r6 += -1
	goto .L2012
.L2014:
	r1 += 1
	if r0 == 0 goto .L2013
.L2012:
	r0 = *(s8 *) (r1+0)
	if w0 != w5 goto .L2014
	r7 = r1
	r9 = r6
	r0 &= 0xff
	r7 += r6
	r3 = r2
	r4 = r1
	r9 &= 7
	if r9 == 0 goto .L2011
	r4 = *(u8 *) (r2+0)
	if r4 == 0 goto .L1904
	if w4 != w0 goto .L1904
	r4 = r1
	r3 += 1
	r4 += 1
	r0 = *(u8 *) (r1+1)
	if r0 == 0 goto .L1904
	if r9 == 1 goto .L2011
	if r9 == 2 goto .L1960
	if r9 == 3 goto .L1961
	if r9 == 4 goto .L1962
	if r9 == 5 goto .L1963
	if r9 == 6 goto .L1964
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1904
	if w9 != w0 goto .L1904
	r4 = r1
	r3 += 1
	r4 += 2
	r0 = *(u8 *) (r1+2)
	if r0 == 0 goto .L1904
.L1964:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1904
.L1963:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1904
.L1962:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1904
.L1961:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1904
.L1960:
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r4 += 1
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 == 0 goto .L1904
.L2011:
	r9 = *(u8 *) (r3+0)
	if r9 == 0 goto .L1904
	if r4 == r7 goto .L1904
	if w9 != w0 goto .L1904
	r3 += 1
	r0 = *(u8 *) (r4+1)
	r9 = r3
	if r0 == 0 goto .L1904
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r0 = *(u8 *) (r4+2)
	r3 += 1
	if r0 == 0 goto .L1904
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r3 = r9
	r0 = *(u8 *) (r4+3)
	r3 += 2
	if r0 == 0 goto .L1904
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r0 = *(u8 *) (r4+4)
	r3 += 1
	if r0 == 0 goto .L1904
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r0 = *(u8 *) (r4+5)
	r3 += 1
	if r0 == 0 goto .L1904
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r0 = *(u8 *) (r4+6)
	r3 += 1
	if r0 == 0 goto .L1904
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r0 = *(u8 *) (r4+7)
	r3 += 1
	if r0 == 0 goto .L1904
	r8 = *(u8 *) (r3+0)
	if r8 == 0 goto .L1904
	if w8 != w0 goto .L1904
	r4 += 8
	r3 += 1
	r0 = *(u8 *) (r4+0)
	if r0 != 0 goto .L2011
.L1904:
	r4 = *(u8 *) (r3+0)
	if r4 == r0 goto .L1910
	r1 += 1
	goto .L2012
.L2013:
	exit
.L1910:
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
	if r0 s< 0 goto .L2025
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2019
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s< 0 goto .L2018
.L2019:
	r0 = r6
	exit
.L2025:
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L2019
.L2018:
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
	if r4 == 0 goto .L2026
	if r2 < r4 goto .L2037
	r2 -= r4
	r5 = r1
	r5 += r2
	if r1 > r5 goto .L2037
	r9 = *(s8 *) (r3+0)
	r4 += -1
	r3 += 1
	*(u64 *) (r10+-8) = r3
.L2032:
	r1 = *(u8 *) (r0+0)
	r3 = r0
	w2 = (s8) w1
	r3 += 1
	if w2 == w9 goto .L2101
	r0 = r3
.L2028:
	if r5 >= r0 goto .L2032
.L2037:
	r0 = 0
.L2026:
	exit
.L2101:
	r2 = *(u64 *) (r10+-8)
	if r4 == 0 goto .L2026
.L2031:
	r7 = r3
	r6 = r4
	r1 = r3
	r7 += r4
	r6 &= 7
	if r6 == 0 goto .L2091
	if r6 == 1 goto .L2075
	if r6 == 2 goto .L2076
	if r6 == 3 goto .L2077
	if r6 == 4 goto .L2078
	if r6 == 5 goto .L2079
	if r6 == 6 goto .L2080
	r1 = *(u8 *) (r3+0)
	r6 = *(u8 *) (r2+0)
	if r6 != r1 goto .L2090
	r1 = r3
	r2 += 1
	r1 += 1
.L2080:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2090
	r1 += 1
	r2 += 1
.L2079:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2090
	r1 += 1
	r2 += 1
.L2078:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2090
	r1 += 1
	r2 += 1
.L2077:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2090
	r1 += 1
	r2 += 1
.L2076:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2090
	r1 += 1
	r2 += 1
.L2075:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2090
	r1 += 1
	r2 += 1
	if r1 == r7 goto .L2102
.L2091:
	r6 = *(u8 *) (r1+0)
	r8 = *(u8 *) (r2+0)
	if r8 != r6 goto .L2090
	r6 = *(u8 *) (r1+1)
	r8 = *(u8 *) (r2+1)
	if r8 != r6 goto .L2090
	r6 = *(u8 *) (r1+2)
	r8 = *(u8 *) (r2+2)
	if r8 != r6 goto .L2090
	r6 = *(u8 *) (r1+3)
	r8 = *(u8 *) (r2+3)
	if r8 != r6 goto .L2090
	r6 = *(u8 *) (r1+4)
	r8 = *(u8 *) (r2+4)
	if r8 != r6 goto .L2090
	r6 = *(u8 *) (r1+5)
	r8 = *(u8 *) (r2+5)
	if r8 != r6 goto .L2090
	r6 = *(u8 *) (r1+6)
	r8 = *(u8 *) (r2+6)
	if r8 != r6 goto .L2090
	r6 = *(u8 *) (r1+7)
	r8 = *(u8 *) (r2+7)
	if r8 != r6 goto .L2090
	r1 += 8
	r2 += 8
	if r1 != r7 goto .L2091
	exit
.L2090:
	if r3 > r5 goto .L2037
	r2 = *(u8 *) (r3+0)
	r0 = r3
	w1 = (s8) w2
	r0 += 1
	if w1 != w9 goto .L2028
	r7 = r3
	r2 = *(u64 *) (r10+-8)
	r3 = r0
	r0 = r7
	goto .L2031
.L2102:
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
	if r0 s< 0 goto .L2137
	r2 = 0x3ff0000000000000 ll
	r1 = r7
	call	__gedf2
	if r0 s< 0 goto .L2138
	*(u64 *) (r10+-16) = 0
.L2106:
	r8 = 0
	r6 = 0x3fe0000000000000 ll
.L2112:
	r1 = r7
	r2 = r6
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	w8 += 1
	r2 = r6
	r8 = (s32) r8
	r1 = r7
	r3 = r8
	w3 += 1
	if r0 s< 0 goto .L2113
	r8 = (s32) r3
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	r4 = r8
	r2 = r6
	w4 += 1
	r1 = r7
	if r0 s< 0 goto .L2113
	r8 = (s32) r4
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	r5 = r8
	r2 = r6
	w5 += 1
	r1 = r7
	if r0 s< 0 goto .L2113
	r8 = (s32) r5
	call	__muldf3
	r2 = 0x3ff0000000000000 ll
	r7 = r0
	r1 = r0
	call	__gedf2
	if r0 s>= 0 goto .L2112
.L2113:
	r1 = *(u64 *) (r10+-8)
	*(u32 *) (r1+0) = r8
	r2 = *(u64 *) (r10+-16)
	if r2 == 0 goto .L2119
	r9 = -9223372036854775808 ll
	r0 = r7
	r0 ^= r9
	exit
.L2138:
	r2 = 0x3fe0000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s>= 0 goto .L2109
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__nedf2
	if r0 != 0 goto .L2118
.L2109:
	r0 = *(u64 *) (r10+-8)
	*(u32 *) (r0+0) = 0
	r0 = r7
	exit
.L2137:
	r3 = -9223372036854775808 ll
	r6 = r7
	r2 = 0xbff0000000000000 ll
	r6 ^= r3
	r1 = r7
	call	__ledf2
	if r0 s> 0 goto .L2139
	r7 = r6
	*(u64 *) (r10+-16) = 1
	goto .L2106
.L2119:
	r0 = r7
	exit
.L2139:
	r2 = 0xbfe0000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s> 0 goto .L2116
	*(u32 *) (r8+0) = 0
	r0 = r7
	exit
.L2116:
	*(u64 *) (r10+-16) = 1
.L2107:
	r7 = r6
	r8 = 0
	r6 = 0x3fe0000000000000 ll
.L2114:
	r2 = r7
	r1 = r7
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	w8 += -1
	r2 = r7
	r8 = (s32) r8
	r1 = r7
	r4 = r8
	w4 += -1
	if r0 s>= 0 goto .L2113
	r8 = (s32) r4
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	r5 = r8
	r2 = r7
	w5 += -1
	r1 = r7
	if r0 s>= 0 goto .L2113
	r8 = (s32) r5
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	r9 = r8
	r2 = r7
	w9 += -1
	r1 = r7
	if r0 s>= 0 goto .L2113
	r8 = (s32) r9
	call	__adddf3
	r2 = r6
	r7 = r0
	r1 = r0
	call	__ltdf2
	if r0 s< 0 goto .L2114
	goto .L2113
.L2118:
	r6 = r7
	*(u64 *) (r10+-16) = 0
	goto .L2107
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r3 = r1
	if r1 == 0 goto .L2143
	r0 = 0
	r5 = r0
.L2142:
	r9 = r2
	r1 = r3
	r4 = r3
	r9 += r2
	r4 &= 1
	r1 >>= 1
	r4 = -r4
	r4 &= r2
	r0 += r4
	if r1 == 0 goto .L2159
	r4 = r9
	r1 &= 1
	r2 = r3
	r1 = -r1
	r4 += r9
	r1 &= r9
	r2 >>= 2
	r5 += r1
	if r2 == 0 goto .L2159
	r9 = r4
	r2 &= 1
	r1 = r3
	r2 = -r2
	r9 += r4
	r2 &= r4
	r1 >>= 3
	r0 += r2
	if r1 == 0 goto .L2159
	r4 = r9
	r1 &= 1
	r2 = r3
	r1 = -r1
	r4 += r9
	r1 &= r9
	r2 >>= 4
	r5 += r1
	if r2 == 0 goto .L2159
	r9 = r4
	r2 &= 1
	r1 = r3
	r2 = -r2
	r9 += r4
	r2 &= r4
	r1 >>= 5
	r0 += r2
	if r1 == 0 goto .L2159
	r1 &= 1
	r1 = -r1
	r1 &= r9
	r2 = r9
	r5 += r1
	r2 += r9
	r1 = r3
	r1 >>= 6
	if r1 == 0 goto .L2159
	r4 = r2
	r9 = r3
	r1 &= 1
	r4 += r2
	r1 = -r1
	r9 >>= 7
	r1 &= r2
	r0 += r1
	if r9 == 0 goto .L2159
	r9 &= 1
	r2 = r4
	r9 = -r9
	r2 += r4
	r9 &= r4
	r3 >>= 8
	r5 += r9
	if r3 != 0 goto .L2142
.L2159:
	r0 += r5
	exit
.L2143:
	r0 = r1
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r0 = r1
	r4 = r2
	if w2 >= w1 goto .L2206
	r5 = 32
	r1 = 1
.L2161:
	if w4 s< 0 goto .L2166
	r9 = r4
	w1 += w1
	w9 += w4
	r1 = r1
	r4 = r9
	if w0 <= w9 goto .L2163
	w5 += -1
	r2 = r5
	if w4 s< 0 goto .L2166
	r9 = r4
	w1 += w1
	w9 += w4
	r1 = r1
	r4 = r9
	if w0 <= w9 goto .L2163
	w2 += -1
	r2 = r2
	if w4 s< 0 goto .L2166
	r5 = r4
	w1 += w1
	w5 += w4
	r1 = r1
	r4 = r5
	if w0 <= w5 goto .L2163
	w2 += -1
	r9 = r2
	if w4 s< 0 goto .L2166
	r2 = r4
	w1 += w1
	w2 += w4
	r1 = r1
	r4 = r2
	if w0 <= w2 goto .L2163
	w9 += -1
	r9 = r9
	if w4 s< 0 goto .L2166
	r5 = r4
	w1 += w1
	w5 += w4
	r1 = r1
	r4 = r5
	if w0 <= w5 goto .L2163
	w9 += -1
	r2 = r9
	if w4 s< 0 goto .L2166
	r9 = r4
	w1 += w1
	w9 += w4
	r1 = r1
	r4 = r9
	if w0 <= w9 goto .L2163
	w2 += -1
	r2 = r2
	if w4 s< 0 goto .L2166
	r5 = r4
	w1 += w1
	w5 += w4
	r1 = r1
	r4 = r5
	if w0 <= w5 goto .L2163
	w2 += -1
	r9 = r2
	if w4 s< 0 goto .L2166
	r2 = r4
	w1 += w1
	w2 += w4
	r1 = r1
	r4 = r2
	if w0 <= w2 goto .L2163
	w9 += -1
	r5 = r9
	if w9 != 0 goto .L2161
.L2164:
	if r3 != 0 goto .L2186
	r0 = r5
	exit
.L2186:
	exit
.L2163:
	if r1 == 0 goto .L2180
.L2166:
	r5 = 0
	r9 = 1
	r7 = r5
	r6 = r5
.L2173:
	r8 = r0
	r2 = r9;r2 &= 0xff
	w8 -= w4
	if w0 >= w4 goto .L2167
	r2 = r7;r2 &= 0xff
.L2167:
	if w0 < w4 goto .L2170
	r0 = r8
.L2170:
	r0 = r0
	if r2 == 0 goto .L2171
	r2 = r1
.L2172:
	w2 |= w5
	r1 >>= 1
	r5 = r2
	r4 >>= 1
	if r1 != 0 goto .L2173
	goto .L2164
.L2171:
	r2 = r6
	goto .L2172
.L2206:
	r2 = r0
	r1 = 1
	w2 -= w4
	if w4 <= w0 goto .L2175
	r1 = 0
.L2175:
	r5 = r1;r5 &= 0xff
	if w4 > w0 goto .L2178
	r0 = r2
.L2178:
	r0 = r0
	goto .L2164
.L2180:
	r5 = r1
	goto .L2164
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	r1 = (s8) r1
	r0 = r1
	r2 = r1
	w0 s>>= 7
	r3 = (s8) r0
	r2 ^= r3
	if w1 == w3 goto .L2209
	w2 <<= 8
	r1 = r2
	call	__clzdi2
	w0 += -33
	r0 = (s32) r0
	exit
.L2209:
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
	if r0 == r2 goto .L2212
	call	__clzdi2
	w0 += -1
	r0 = (s32) r0
	exit
.L2212:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r3 = r1
	r9 = r2
	if w1 == 0 goto .L2216
	r0 = 0
.L2215:
	r1 = r3
	r4 = r9
	w3 &= 1
	w4 += w9
	w3 = -w3
	r1 >>= 1
	w3 &= w9
	r5 = r4
	w3 += w0
	r0 = r3
	if r1 == 0 goto .L2232
	r2 = r1
	r3 = r5
	w1 &= 1
	w3 += w5
	w1 = -w1
	r2 >>= 1
	w1 &= w5
	r9 = r3
	w1 += w0
	r0 = r1
	if r2 == 0 goto .L2214
	r4 = r2
	r1 = r2
	r5 = r9
	w1 &= 1
	w5 += w9
	w1 = -w1
	r4 >>= 1
	w1 &= w9
	r2 = r5
	w1 += w0
	r0 = r1
	if r4 == 0 goto .L2214
	r3 = r4
	r9 = r4
	r3 >>= 1
	w9 &= 1
	r4 = r2
	w9 = -w9
	w4 += w2
	w9 &= w2
	r5 = r4
	w9 += w0
	r0 = r9
	if r3 == 0 goto .L2214
	r1 = r3
	r2 = r5
	w3 &= 1
	w2 += w5
	w3 = -w3
	r1 >>= 1
	w3 &= w5
	r9 = r2
	w3 += w0
	r0 = r3
	if r1 == 0 goto .L2214
	r4 = r1
	r3 = r9
	w1 &= 1
	w3 += w9
	w1 = -w1
	r4 >>= 1
	w1 &= w9
	r5 = r3
	w1 += w0
	r0 = r1
	if r4 == 0 goto .L2214
	r3 = r4
	r1 = r5
	w4 &= 1
	w1 += w5
	w4 = -w4
	r3 >>= 1
	w4 &= w5
	r9 = r1
	w4 += w0
	r0 = r4
	if r3 == 0 goto .L2214
	r4 = r3
	r2 = r9
	w4 &= 1
	w2 += w9
	w4 = -w4
	r3 >>= 1
	w4 &= w9
	r9 = r2
	w4 += w0
	r0 = r4
	if r3 != 0 goto .L2215
	exit
.L2216:
	r0 = r3
.L2214:
	exit
.L2232:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r5 = r3
	r6 = r3
	w5 >>= 3
	w6 &= -8
	r3 = r3
	r5 = r5
	r7 = r6
	if r1 < r2 goto .L2234
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2421
.L2234:
	if r5 == 0 goto .L2237
	r5 <<= 3
	r0 = r2
	r8 = r5
	r4 = r1
	r8 += -8
	r5 += r2
	r8 >>= 3
	r8 += 1
	r8 &= 7
	if r8 == 0 goto .L2414
	if r8 == 1 goto .L2354
	if r8 == 2 goto .L2355
	if r8 == 3 goto .L2356
	if r8 == 4 goto .L2357
	if r8 == 5 goto .L2358
	if r8 == 6 goto .L2359
	r9 = *(u64 *) (r2+0)
	r0 += 8
	*(u64 *) (r1+0) = r9
	r4 += 8
.L2359:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2358:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2357:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2356:
	r9 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r9
	r0 += 8
.L2355:
	r8 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r8
	r0 += 8
.L2354:
	r8 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r8
	r0 += 8
	r4 += 8
	if r0 == r5 goto .L2411
.L2414:
	r9 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r9
	r8 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r8
	r9 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r9
	r8 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r8
	r9 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r9
	r8 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r8
	r9 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r9
	r8 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r8
	r0 += 64
	r4 += 64
	if r0 != r5 goto .L2414
.L2411:
	if w3 <= w6 goto .L2422
	r9 = r3
	w9 -= w6
	r5 = r9
	w5 += -1
	if w5 <= 7 goto .L2420
	r8 = r7
	r0 = r2
	r8 += 1
	r0 += r8
	r4 = r1
	r5 = 1
	r4 += r7
	r8 = r4
	r8 -= r0
	r0 = r2
	r0 += r7
	if r8 <= 6 goto .L2423
.L2241:
	w5 &= 1
	if w5 == 0 goto .L2240
	r8 = r0
	r5 = 1
	r8 |= r4
	r8 &= 7
	if r8 != 0 goto .L2424
.L2242:
	w5 &= 1
	if w5 == 0 goto .L2240
	r7 = r9
	w7 >>= 3
	r8 = r7
	r7 = r0
	r8 <<= 3
	r5 = r8
	r7 += r8
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2413
	if r5 == 1 goto .L2360
	if r5 == 2 goto .L2361
	if r5 == 3 goto .L2362
	if r5 == 4 goto .L2363
	if r5 == 5 goto .L2364
	if r5 == 6 goto .L2365
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2365:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2364:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2363:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2362:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2361:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2360:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2410
.L2413:
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
	if r0 != r7 goto .L2413
.L2410:
	r0 = r9
	w9 &= 7
	w0 &= -8
	w0 += w6
	r4 = r0
	if w9 == 0 goto .L2233
	r6 = r2
	r9 = r1
	r6 += r4
	r9 += r4
	r5 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r5
	r4 = r0
	w4 += 1
	r9 = r4
	if w3 <= w4 goto .L2233
	r6 = r2
	r4 = r1
	r6 += r9
	r4 += r9
	r5 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r5
	r9 = r0
	w9 += 2
	r5 = r9
	if w3 <= w9 goto .L2233
	r6 = r2
	r4 = r1
	r6 += r5
	r4 += r5
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r4 = r0
	w4 += 3
	r5 = r4
	if w3 <= w4 goto .L2233
	r6 = r2
	r9 = r1
	r6 += r5
	r9 += r5
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r4
	r9 = r0
	w9 += 4
	r5 = r9
	if w3 <= w9 goto .L2233
	r6 = r2
	r4 = r1
	r6 += r5
	r4 += r5
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r4 = r0
	w4 += 5
	r5 = r4
	if w3 <= w4 goto .L2233
	r6 = r2
	r9 = r1
	r6 += r5
	r9 += r5
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r4
	w0 += 6
	r5 = r0
	if w3 <= w0 goto .L2233
	r2 += r5
	r1 += r5
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2421:
	r4 = r3
	w4 += -1
	r9 = r4
	if r3 == 0 goto .L2233
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2415
	if r3 == 1 goto .L2348
	if r3 == 2 goto .L2349
	if r3 == 3 goto .L2350
	if r3 == 4 goto .L2351
	if r3 == 5 goto .L2352
	if r3 == 6 goto .L2353
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r4
.L2353:
	r5 = r1
	r3 = r2
	r5 += r9
	r3 += r9
	r9 += -1
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r5+0) = r0
.L2352:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r3
.L2351:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
.L2350:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2349:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2348:
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r0
	r9 += -1
	if r9 == -1 goto .L2425
.L2415:
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
	if r9 != -1 goto .L2415
.L2233:
	exit
.L2423:
	r5 = 0
	goto .L2241
.L2424:
	r5 = 0
	goto .L2242
.L2237:
	if r3 == 0 goto .L2233
.L2420:
	r1 += r7
	r0 = r2
	r4 = r1
	r0 += r7
.L2240:
	w3 += -1
	w3 -= w6
	r2 += 1
	r1 = r3
	r2 += r7
	r1 += r2
	r3 = r1
	r3 -= r0
	r3 &= 7
	if r3 == 0 goto .L2412
	if r3 == 1 goto .L2366
	if r3 == 2 goto .L2367
	if r3 == 3 goto .L2368
	if r3 == 4 goto .L2369
	if r3 == 5 goto .L2370
	if r3 == 6 goto .L2371
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2371:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2370:
	r2 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r0 += 1
.L2369:
	r3 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r3
	r0 += 1
.L2368:
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2367:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2366:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r2
	r0 += 1
	r4 += 1
	if r0 == r1 goto .L2426
.L2412:
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
	if r0 != r1 goto .L2412
	exit
.L2422:
	exit
.L2425:
	exit
.L2426:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r6 = r3
	r3 = r3
	w6 >>= 1
	r0 = r6
	if r1 < r2 goto .L2428
	r4 = r2
	r4 += r3
	if r1 <= r4 goto .L2573
.L2428:
	if r0 == 0 goto .L2431
	r9 = r6
	w9 += -1
	if w9 <= 6 goto .L2432
	r4 = r2
	r5 = 1
	r4 |= r1
	r4 &= 7
	if r4 != 0 goto .L2574
.L2433:
	w5 &= 1
	if w5 == 0 goto .L2432
	r9 = r2
	r7 = r1
	r9 += 2
	r4 = 1
	r7 -= r9
	if r7 <= 4 goto .L2575
.L2434:
	w4 &= 1
	if w4 == 0 goto .L2432
	r7 = r3
	r9 = r3
	w7 >>= 3
	r9 >>= 3
	r0 = r2
	r9 <<= 3
	r4 = r1
	r5 = r9
	r9 += r2
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2568
	if r5 == 1 goto .L2525
	if r5 == 2 goto .L2526
	if r5 == 3 goto .L2527
	if r5 == 4 goto .L2528
	if r5 == 5 goto .L2529
	if r5 == 6 goto .L2530
	r0 = *(u64 *) (r2+0)
	r4 += 8
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
.L2530:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2529:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2528:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2527:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2526:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2525:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r9 goto .L2566
.L2568:
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
	if r0 != r9 goto .L2568
.L2566:
	w7 <<= 2
	r9 = r7
	if w6 == w7 goto .L2431
	r9 += r9
	r0 = r2
	r4 = r1
	r0 += r9
	r4 += r9
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r9 = r7
	w9 += 1
	r0 = r9
	if w6 <= w9 goto .L2431
	r0 += r0
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r9 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r9
	w7 += 2
	r0 = r7
	if w6 <= w7 goto .L2431
	r0 += r0
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r9 = *(u16 *) (r5+0)
	*(u16 *) (r4+0) = r9
.L2431:
	r4 = r3
	w4 &= 1
	if w4 == 0 goto .L2427
	w3 += -1
	r3 = r3
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2573:
	r5 = r3
	w5 += -1
	r9 = r5
	if r3 == 0 goto .L2427
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2569
	if r3 == 1 goto .L2519
	if r3 == 2 goto .L2520
	if r3 == 3 goto .L2521
	if r3 == 4 goto .L2522
	if r3 == 5 goto .L2523
	if r3 == 6 goto .L2524
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
.L2524:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r4 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r4
.L2523:
	r5 = r1
	r0 = r2
	r5 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r5+0) = r3
.L2522:
	r4 = r1
	r5 = r2
	r4 += r9
	r5 += r9
	r9 += -1
	r0 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r0
.L2521:
	r4 = r1
	r3 = r2
	r4 += r9
	r3 += r9
	r9 += -1
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r4+0) = r5
.L2520:
	r0 = r1
	r4 = r2
	r0 += r9
	r4 += r9
	r9 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r3
.L2519:
	r5 = r2
	r0 = r1
	r5 += r9
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2576
.L2569:
	r6 = r2
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+0)
	r5 += r9
	r6 = r2
	r6 += r9
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r6+-1)
	r5 += r9
	r6 = r1
	*(u8 *) (r5+-1) = r3
	r6 += r9
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+-2)
	*(u8 *) (r6+-2) = r0
	r6 = r2
	r6 += r9
	r3 = *(u8 *) (r6+-3)
	r6 = r2
	*(u8 *) (r5+-3) = r3
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+-4)
	r5 += r9
	*(u8 *) (r5+-4) = r4
	r3 = r2
	r4 = r9
	r3 += r9
	r4 += -6
	r0 = *(u8 *) (r3+-5)
	r6 = r1
	r5 = r1
	r6 += r9
	r5 += r4
	*(u8 *) (r6+-5) = r0
	r6 = r2
	r0 = r2
	r6 += r4
	r0 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r0+-7)
	r5 += r9
	*(u8 *) (r5+-7) = r3
	r9 += -8
	if r9 != -1 goto .L2569
.L2427:
	exit
.L2574:
	r5 = 0
	goto .L2433
.L2575:
	r4 = 0
	goto .L2434
.L2432:
	r0 += r0
	r4 = r2
	r6 = r0
	r5 = r1
	r0 += -2
	r6 += r2
	r0 >>= 1
	r0 += 1
	r0 &= 7
	if r0 == 0 goto .L2567
	if r0 == 1 goto .L2531
	if r0 == 2 goto .L2532
	if r0 == 3 goto .L2533
	if r0 == 4 goto .L2534
	if r0 == 5 goto .L2535
	if r0 == 6 goto .L2536
	r0 = *(u16 *) (r2+0)
	r4 += 2
	*(u16 *) (r1+0) = r0
	r5 += 2
.L2536:
	r9 = *(u16 *) (r4+0)
	r5 += 2
	*(u16 *) (r5+-2) = r9
	r4 += 2
.L2535:
	r0 = *(u16 *) (r4+0)
	r5 += 2
	*(u16 *) (r5+-2) = r0
	r4 += 2
.L2534:
	r9 = *(u16 *) (r4+0)
	r5 += 2
	*(u16 *) (r5+-2) = r9
	r4 += 2
.L2533:
	r0 = *(u16 *) (r4+0)
	r5 += 2
	*(u16 *) (r5+-2) = r0
	r4 += 2
.L2532:
	r9 = *(u16 *) (r4+0)
	r5 += 2
	*(u16 *) (r5+-2) = r9
	r4 += 2
.L2531:
	r0 = *(u16 *) (r4+0)
	*(u16 *) (r5+0) = r0
	r4 += 2
	r5 += 2
	if r4 == r6 goto .L2431
.L2567:
	r9 = *(u16 *) (r4+0)
	*(u16 *) (r5+0) = r9
	r0 = *(u16 *) (r4+2)
	*(u16 *) (r5+2) = r0
	r9 = *(u16 *) (r4+4)
	*(u16 *) (r5+4) = r9
	r0 = *(u16 *) (r4+6)
	*(u16 *) (r5+6) = r0
	r9 = *(u16 *) (r4+8)
	*(u16 *) (r5+8) = r9
	r0 = *(u16 *) (r4+10)
	*(u16 *) (r5+10) = r0
	r9 = *(u16 *) (r4+12)
	*(u16 *) (r5+12) = r9
	r0 = *(u16 *) (r4+14)
	*(u16 *) (r5+14) = r0
	r4 += 16
	r5 += 16
	if r4 != r6 goto .L2567
	goto .L2431
.L2576:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r7 = r3
	r9 = r3
	w7 >>= 2
	w9 &= -4
	r3 = r3
	r4 = r7
	r8 = r9
	if r1 < r2 goto .L2578
	r0 = r2
	r0 += r3
	if r1 <= r0 goto .L2815
.L2578:
	if r4 == 0 goto .L2816
	r6 = r7
	w6 += -1
	if w6 <= 8 goto .L2583
	r5 = r1
	r0 = 1
	r5 |= r2
	r5 &= 7
	if r5 != 0 goto .L2817
.L2584:
	w0 &= 1
	if w0 == 0 goto .L2583
	r6 = r2
	r5 = r1
	r6 += 4
	r5 ^= r6
	r0 = r5
	r0 = -r0
	r0 |= r5
	if r0 s>= 0 goto .L2583
	r4 = r3
	r4 >>= 3
	r4 <<= 3
	r5 = r4
	r4 += r2
	*(u64 *) (r10+-8) = r4
	r6 = r3
	r5 += -8
	w6 >>= 3
	r5 >>= 3
	r0 = r2
	r5 += 1
	r4 = r1
	r5 &= 7
	if r5 == 0 goto .L2585
	if r5 == 1 goto .L2730
	if r5 == 2 goto .L2731
	if r5 == 3 goto .L2732
	if r5 == 4 goto .L2733
	if r5 == 5 goto .L2734
	if r5 == 6 goto .L2735
	r0 = *(u64 *) (r2+0)
	r4 += 8
	*(u64 *) (r1+0) = r0
	r0 = r2
	r0 += 8
.L2735:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2734:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2733:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2732:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2731:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2730:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	r5 = *(u64 *) (r10+-8)
	if r0 == r5 goto .L2803
.L2585:
	r5 = *(u64 *) (r10+-8)
	*(u64 *) (r10+-8) = r1
.L2807:
	r1 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r1
	r1 = *(u64 *) (r0+8)
	*(u64 *) (r4+8) = r1
	r1 = *(u64 *) (r0+16)
	*(u64 *) (r4+16) = r1
	r1 = *(u64 *) (r0+24)
	*(u64 *) (r4+24) = r1
	r1 = *(u64 *) (r0+32)
	*(u64 *) (r4+32) = r1
	r1 = *(u64 *) (r0+40)
	*(u64 *) (r4+40) = r1
	r1 = *(u64 *) (r0+48)
	*(u64 *) (r4+48) = r1
	r1 = *(u64 *) (r0+56)
	*(u64 *) (r4+56) = r1
	r0 += 64
	r4 += 64
	if r0 != r5 goto .L2807
	r1 = *(u64 *) (r10+-8)
.L2803:
	w6 += w6
	r0 = r6
	if w7 == w6 goto .L2588
	r0 <<= 2
	r5 = r2
	r4 = r1
	r5 += r0
	r4 += r0
	r0 = *(u32 *) (r5+0)
	*(u32 *) (r4+0) = r0
.L2588:
	if w3 <= w9 goto .L2577
	r6 = r3
	w6 -= w9
	r5 = r6
	w5 += -1
	if w5 <= 7 goto .L2814
	r7 = r8
	r0 = r2
	r7 += 1
	r0 += r7
	r4 = r1
	r5 = 1
	r4 += r8
	r7 = r4
	r7 -= r0
	r0 = r2
	r0 += r8
	if r7 > 6 goto .L2589
	r5 = 0
.L2589:
	w5 &= 1
	if w5 == 0 goto .L2582
	r7 = r0
	r5 = 1
	r7 |= r4
	r7 &= 7
	if r7 == 0 goto .L2590
	r5 = 0
.L2590:
	w5 &= 1
	if w5 == 0 goto .L2582
	r8 = r6
	r7 = r0
	w8 >>= 3
	r8 = r8
	r8 <<= 3
	r5 = r8
	r7 += r8
	r5 += -8
	r5 >>= 3
	r5 += 1
	r5 &= 7
	if r5 == 0 goto .L2805
	if r5 == 1 goto .L2742
	if r5 == 2 goto .L2743
	if r5 == 3 goto .L2744
	if r5 == 4 goto .L2745
	if r5 == 5 goto .L2746
	if r5 == 6 goto .L2747
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2747:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2746:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2745:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2744:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2743:
	r5 = *(u64 *) (r0+0)
	r4 += 8
	*(u64 *) (r4+-8) = r5
	r0 += 8
.L2742:
	r5 = *(u64 *) (r0+0)
	*(u64 *) (r4+0) = r5
	r0 += 8
	r4 += 8
	if r0 == r7 goto .L2802
.L2805:
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
	if r0 != r7 goto .L2805
.L2802:
	r0 = r6
	w6 &= 7
	w0 &= -8
	w0 += w9
	r9 = r0
	if w6 == 0 goto .L2577
	r6 = r2
	r5 = r1
	r6 += r9
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	w9 += 1
	r5 = r9
	if w3 <= w9 goto .L2577
	r6 = r2
	r4 = r1
	r6 += r5
	r4 += r5
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r4 = r0
	w4 += 2
	r5 = r4
	if w3 <= w4 goto .L2577
	r6 = r2
	r9 = r1
	r6 += r5
	r9 += r5
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r4
	r9 = r0
	w9 += 3
	r5 = r9
	if w3 <= w9 goto .L2577
	r6 = r2
	r4 = r1
	r6 += r5
	r4 += r5
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r4 = r0
	w4 += 4
	r5 = r4
	if w3 <= w4 goto .L2577
	r6 = r2
	r9 = r1
	r6 += r5
	r9 += r5
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r4
	r9 = r0
	w9 += 5
	r5 = r9
	if w3 <= w9 goto .L2577
	r6 = r2
	r4 = r1
	r6 += r5
	r4 += r5
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	w0 += 6
	r5 = r0
	if w3 <= w0 goto .L2577
	r2 += r5
	r1 += r5
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L2817:
	r0 = 0
	goto .L2584
.L2815:
	r5 = r3
	w5 += -1
	r9 = r5
	if r3 == 0 goto .L2577
	r3 = r9
	r3 += 1
	r3 &= 7
	if r3 == 0 goto .L2808
	if r3 == 1 goto .L2724
	if r3 == 2 goto .L2725
	if r3 == 3 goto .L2726
	if r3 == 4 goto .L2727
	if r3 == 5 goto .L2728
	if r3 != 6 goto .L2818
.L2729:
	r4 = r1
	r3 = r2
	r4 += r9
	r3 += r9
	r9 += -1
	r0 = *(u8 *) (r3+0)
	*(u8 *) (r4+0) = r0
.L2728:
	r5 = r1
	r4 = r2
	r5 += r9
	r4 += r9
	r9 += -1
	r3 = *(u8 *) (r4+0)
	*(u8 *) (r5+0) = r3
.L2727:
	r0 = r1
	r5 = r2
	r0 += r9
	r5 += r9
	r9 += -1
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
.L2726:
	r0 = r1
	r3 = r2
	r0 += r9
	r3 += r9
	r9 += -1
	r5 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r5
.L2725:
	r4 = r1
	r0 = r2
	r4 += r9
	r0 += r9
	r9 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
.L2724:
	r5 = r2
	r0 = r1
	r5 += r9
	r0 += r9
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r4
	r9 += -1
	if r9 == -1 goto .L2819
.L2808:
	r6 = r2
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+0)
	r5 += r9
	r6 = r2
	r6 += r9
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r6+-1)
	r5 += r9
	r6 = r1
	*(u8 *) (r5+-1) = r3
	r6 += r9
	r4 = r2
	r5 = r1
	r4 += r9
	r5 += r9
	r0 = *(u8 *) (r4+-2)
	*(u8 *) (r6+-2) = r0
	r6 = r2
	r6 += r9
	r3 = *(u8 *) (r6+-3)
	r6 = r2
	*(u8 *) (r5+-3) = r3
	r6 += r9
	r5 = r1
	r4 = *(u8 *) (r6+-4)
	r5 += r9
	*(u8 *) (r5+-4) = r4
	r3 = r2
	r4 = r9
	r3 += r9
	r4 += -6
	r0 = *(u8 *) (r3+-5)
	r6 = r1
	r5 = r1
	r6 += r9
	r5 += r4
	*(u8 *) (r6+-5) = r0
	r6 = r2
	r0 = r2
	r6 += r4
	r0 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r5 = r1
	r3 = *(u8 *) (r0+-7)
	r5 += r9
	*(u8 *) (r5+-7) = r3
	r9 += -8
	if r9 != -1 goto .L2808
.L2577:
	exit
.L2583:
	r4 <<= 2
	r6 = r4
	r4 += r2
	r6 += -4
	r5 = r4
	r6 >>= 2
	r0 = r2
	r6 += 1
	r4 = r1
	r6 &= 7
	if r6 == 0 goto .L2806
	if r6 == 1 goto .L2736
	if r6 == 2 goto .L2737
	if r6 == 3 goto .L2738
	if r6 == 4 goto .L2739
	if r6 == 5 goto .L2740
	if r6 == 6 goto .L2741
	r4 = *(u32 *) (r2+0)
	r0 += 4
	*(u32 *) (r1+0) = r4
	r4 = r1
	r4 += 4
.L2741:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2740:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2739:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2738:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2737:
	r6 = *(u32 *) (r0+0)
	r4 += 4
	*(u32 *) (r4+-4) = r6
	r0 += 4
.L2736:
	r6 = *(u32 *) (r0+0)
	*(u32 *) (r4+0) = r6
	r0 += 4
	r4 += 4
	if r0 == r5 goto .L2588
.L2806:
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
	if r0 != r5 goto .L2806
	goto .L2588
.L2816:
	if r3 == 0 goto .L2577
.L2814:
	r1 += r8
	r0 = r2
	r4 = r1
	r0 += r8
.L2582:
	w3 += -1
	r2 += 1
	w3 -= w9
	r2 += r8
	r3 = r3
	r3 += r2
	r1 = r3
	r1 -= r0
	r1 &= 7
	if r1 == 0 goto .L2804
	if r1 == 1 goto .L2748
	if r1 == 2 goto .L2749
	if r1 == 3 goto .L2750
	if r1 == 4 goto .L2751
	if r1 == 5 goto .L2752
	if r1 == 6 goto .L2753
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2753:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2752:
	r2 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r2
	r0 += 1
.L2751:
	r1 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r1
	r0 += 1
.L2750:
	r9 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r9
	r0 += 1
.L2749:
	r5 = *(u8 *) (r0+0)
	r4 += 1
	*(u8 *) (r4+-1) = r5
	r0 += 1
.L2748:
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r2
	r0 += 1
	r4 += 1
	if r0 == r3 goto .L2820
.L2804:
	r1 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r1
	r9 = *(u8 *) (r0+1)
	*(u8 *) (r4+1) = r9
	r5 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r5
	r2 = *(u8 *) (r0+3)
	*(u8 *) (r4+3) = r2
	r1 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r1
	r9 = *(u8 *) (r0+5)
	*(u8 *) (r4+5) = r9
	r5 = *(u8 *) (r0+6)
	*(u8 *) (r4+6) = r5
	r2 = *(u8 *) (r0+7)
	*(u8 *) (r4+7) = r2
	r0 += 8
	r4 += 8
	if r0 != r3 goto .L2804
	exit
.L2818:
	r4 = r1
	r0 = r2
	r4 += r9
	r0 += r9
	r9 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	goto .L2729
.L2819:
	exit
.L2820:
	exit
	.size	__cmovw, .-__cmovw
	.align	3
	.global	__modi
	.type	__modi, @function
__modi:
	r0 = r1
	w0 s%= w2
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
	r0 = r1
	w0 %= w2
	exit
	.size	__umodi, .-__umodi
	.align	3
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	r1 &= 0xffff
	r0 = r1
	r2 = r1
	w0 s>>= 15
	if w0 != 0 goto .L2830
	r0 = r1
	r0 >>= 14
	if r0 != 0 goto .L2829
	r3 = r1
	w3 s>>= 13
	if w3 != 0 goto .L2831
	r4 = r1
	w4 s>>= 12
	if w4 != 0 goto .L2832
	r5 = r1
	w5 s>>= 11
	if w5 != 0 goto .L2833
	r9 = r1
	w9 s>>= 10
	if w9 != 0 goto .L2834
	r0 = r1
	w0 s>>= 9
	if w0 != 0 goto .L2835
	r3 = r1
	w3 s>>= 8
	if w3 != 0 goto .L2836
	r4 = r1
	w4 s>>= 7
	if w4 != 0 goto .L2837
	r5 = r1
	w5 s>>= 6
	if w5 != 0 goto .L2838
	r9 = r1
	w9 s>>= 5
	if w9 != 0 goto .L2839
	r0 = r1
	w0 s>>= 4
	if w0 != 0 goto .L2840
	r3 = r1
	w3 s>>= 3
	if w3 != 0 goto .L2841
	r4 = r1
	w4 s>>= 2
	if w4 != 0 goto .L2842
	w2 s>>= 1
	if w2 != 0 goto .L2843
	r0 = 16
	if r1 != 0 goto .L2846
.L2829:
	exit
.L2830:
	r0 = 0
	exit
.L2841:
	r0 = 12
	exit
.L2846:
	r0 = 15
	exit
.L2831:
	r0 = 2
	exit
.L2832:
	r0 = 3
	exit
.L2833:
	r0 = 4
	exit
.L2834:
	r0 = 5
	exit
.L2835:
	r0 = 6
	exit
.L2836:
	r0 = 7
	exit
.L2837:
	r0 = 8
	exit
.L2838:
	r0 = 9
	exit
.L2839:
	r0 = 10
	exit
.L2840:
	r0 = 11
	exit
.L2842:
	r0 = 13
	exit
.L2843:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	w1 &= 1
	if w1 != 0 goto .L2850
	r1 = r0
	w1 &= 2
	if w1 != 0 goto .L2851
	r2 = r0
	w2 &= 4
	if w2 != 0 goto .L2852
	r3 = r0
	w3 &= 8
	if w3 != 0 goto .L2853
	r4 = r0
	w4 &= 16
	if w4 != 0 goto .L2854
	r5 = r0
	w5 &= 32
	if w5 != 0 goto .L2855
	r9 = r0
	w9 &= 64
	if w9 != 0 goto .L2856
	r1 = r0
	w1 &= 128
	if w1 != 0 goto .L2857
	r2 = r0
	w2 &= 256
	if w2 != 0 goto .L2858
	r3 = r0
	w3 &= 512
	if w3 != 0 goto .L2859
	r4 = r0
	w4 &= 1024
	if w4 != 0 goto .L2860
	r5 = r0
	w5 &= 2048
	if w5 != 0 goto .L2861
	r9 = r0
	w9 &= 4096
	if w9 != 0 goto .L2862
	r1 = r0
	w1 &= 8192
	if w1 != 0 goto .L2863
	r2 = r0
	w2 &= 16384
	if w2 != 0 goto .L2864
	r3 = r0
	r0 = 16
	w3 s>>= 15
	if w3 != 0 goto .L2867
	exit
.L2850:
	r0 = 0
	exit
.L2851:
	r0 = 1
	exit
.L2862:
	r0 = 12
	exit
.L2867:
	r0 = 15
	exit
.L2852:
	r0 = 2
	exit
.L2853:
	r0 = 3
	exit
.L2854:
	r0 = 4
	exit
.L2855:
	r0 = 5
	exit
.L2856:
	r0 = 6
	exit
.L2857:
	r0 = 7
	exit
.L2858:
	r0 = 8
	exit
.L2859:
	r0 = 9
	exit
.L2860:
	r0 = 10
	exit
.L2861:
	r0 = 11
	exit
.L2863:
	r0 = 13
	exit
.L2864:
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
	if r0 s>= 0 goto .L2874
	r1 = r6
	call	__fixsfdi
	exit
.L2874:
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
	r3 &= 1
	r4 = r1
	r5 = r1
	w2 s>>= 2
	w4 s>>= 3
	w2 &= 1
	w4 &= 1
	w5 s>>= 4
	w5 &= 1
	r0 = r1
	r9 = r1
	w0 s>>= 1
	w9 s>>= 5
	w0 &= 1
	w9 &= 1
	w0 += w3
	r3 = r1
	w0 += w2
	w3 s>>= 7
	w0 += w4
	r2 = r1
	w0 += w5
	w3 &= 1
	r4 = r1
	r5 = r1
	w2 s>>= 6
	w4 s>>= 8
	w2 &= 1
	w4 &= 1
	w5 s>>= 9
	w5 &= 1
	w0 += w9
	r9 = r1
	w0 += w2
	w9 s>>= 10
	w0 += w3
	w9 &= 1
	w0 += w4
	r3 = r1
	w0 += w5
	r2 = r1
	w0 += w9
	r4 = r1
	r5 = r1
	w3 s>>= 11
	w1 s>>= 15
	w3 &= 1
	w2 s>>= 12
	w0 += w3
	w2 &= 1
	w4 s>>= 13
	w0 += w2
	w4 &= 1
	w5 s>>= 14
	w0 += w4
	w5 &= 1
	w0 += w5
	w0 += w1
	w0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r1 &= 0xffff
	r3 = r1
	r2 = r1
	r3 &= 1
	r4 = r1
	r5 = r1
	w2 s>>= 2
	w4 s>>= 3
	w2 &= 1
	w4 &= 1
	w5 s>>= 4
	w5 &= 1
	r0 = r1
	r9 = r1
	w0 s>>= 1
	w9 s>>= 5
	w0 &= 1
	w9 &= 1
	w0 += w3
	r3 = r1
	w0 += w2
	w3 s>>= 7
	w0 += w4
	r2 = r1
	w0 += w5
	w3 &= 1
	r4 = r1
	r5 = r1
	w2 s>>= 6
	w4 s>>= 8
	w2 &= 1
	w4 &= 1
	w5 s>>= 9
	w5 &= 1
	w0 += w9
	r9 = r1
	w0 += w2
	w9 s>>= 10
	w0 += w3
	w9 &= 1
	w0 += w4
	r3 = r1
	w0 += w5
	r2 = r1
	w0 += w9
	r4 = r1
	r5 = r1
	w3 s>>= 11
	w1 s>>= 15
	w3 &= 1
	w2 s>>= 12
	w0 += w3
	w2 &= 1
	w4 s>>= 13
	w0 += w2
	w4 &= 1
	w5 s>>= 14
	w0 += w4
	w5 &= 1
	w0 += w5
	w0 += w1
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	r3 = r1
	r9 = r2
	if w1 == 0 goto .L2880
	r0 = 0
.L2879:
	r1 = r3
	r4 = r9
	w3 &= 1
	w4 += w9
	w3 = -w3
	r1 >>= 1
	w3 &= w9
	r5 = r4
	w3 += w0
	r0 = r3
	if r1 == 0 goto .L2896
	r2 = r1
	r3 = r5
	w1 &= 1
	w3 += w5
	w1 = -w1
	r2 >>= 1
	w1 &= w5
	r9 = r3
	w1 += w0
	r0 = r1
	if r2 == 0 goto .L2878
	r4 = r2
	r1 = r2
	r5 = r9
	w1 &= 1
	w5 += w9
	w1 = -w1
	r4 >>= 1
	w1 &= w9
	r2 = r5
	w1 += w0
	r0 = r1
	if r4 == 0 goto .L2878
	r3 = r4
	r9 = r4
	r3 >>= 1
	w9 &= 1
	r4 = r2
	w9 = -w9
	w4 += w2
	w9 &= w2
	r5 = r4
	w9 += w0
	r0 = r9
	if r3 == 0 goto .L2878
	r1 = r3
	r2 = r5
	w3 &= 1
	w2 += w5
	w3 = -w3
	r1 >>= 1
	w3 &= w5
	r9 = r2
	w3 += w0
	r0 = r3
	if r1 == 0 goto .L2878
	r4 = r1
	r3 = r9
	w1 &= 1
	w3 += w9
	w1 = -w1
	r4 >>= 1
	w1 &= w9
	r5 = r3
	w1 += w0
	r0 = r1
	if r4 == 0 goto .L2878
	r3 = r4
	r1 = r5
	w4 &= 1
	w1 += w5
	w4 = -w4
	r3 >>= 1
	w4 &= w5
	r9 = r1
	w4 += w0
	r0 = r4
	if r3 == 0 goto .L2878
	r4 = r3
	r2 = r9
	w4 &= 1
	w2 += w9
	w4 = -w4
	r3 >>= 1
	w4 &= w9
	r9 = r2
	w4 += w0
	r0 = r4
	if r3 != 0 goto .L2879
	exit
.L2880:
	r0 = r3
.L2878:
	exit
.L2896:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r9 = r1
	r2 = r2
	if w1 == 0 goto .L2900
	if r2 == 0 goto .L2901
	r0 = 0
.L2899:
	r1 = r2
	r4 = r9
	w2 &= 1
	w4 += w9
	w2 = -w2
	r1 >>= 1
	w2 &= w9
	r5 = r4
	w2 += w0
	r0 = r2
	if r1 == 0 goto .L2917
	r2 = r1
	r3 = r5
	w1 &= 1
	w3 += w5
	w1 = -w1
	r2 >>= 1
	w1 &= w5
	r9 = r3
	w1 += w0
	r0 = r1
	if r2 == 0 goto .L2898
	r1 = r2
	r4 = r9
	w2 &= 1
	w4 += w9
	w2 = -w2
	r1 >>= 1
	w2 &= w9
	r5 = r4
	w2 += w0
	r0 = r2
	if r1 == 0 goto .L2898
	r2 = r1
	r3 = r5
	w1 &= 1
	w3 += w5
	w1 = -w1
	r2 >>= 1
	w1 &= w5
	r9 = r3
	w1 += w0
	r0 = r1
	if r2 == 0 goto .L2898
	r1 = r2
	r4 = r9
	w2 &= 1
	w4 += w9
	w2 = -w2
	r1 >>= 1
	w2 &= w9
	r4 = r4
	w2 += w0
	r0 = r2
	if r1 == 0 goto .L2898
	r3 = r1
	r5 = r4
	w1 &= 1
	w5 += w4
	w1 = -w1
	r3 >>= 1
	w1 &= w4
	r9 = r5
	w1 += w0
	r0 = r1
	if r3 == 0 goto .L2898
	r2 = r3
	r1 = r9
	w3 &= 1
	w1 += w9
	w3 = -w3
	r2 >>= 1
	w3 &= w9
	r4 = r1
	w3 += w0
	r0 = r3
	if r2 == 0 goto .L2898
	r5 = r2
	r3 = r4
	w5 &= 1
	w3 += w4
	w5 = -w5
	r9 = r3
	w5 &= w4
	r2 >>= 1
	w5 += w0
	r0 = r5
	if r2 != 0 goto .L2899
	exit
.L2901:
	r0 = r2
.L2898:
	exit
.L2900:
	r0 = r9
	exit
.L2917:
	exit
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	3
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	r0 = r1
	r4 = r2
	r3 = (s32) r3
	if w2 >= w1 goto .L2964
	r5 = 32
	r1 = 1
.L2919:
	if w4 s< 0 goto .L2924
	r9 = r4
	w1 += w1
	w9 += w4
	r1 = r1
	r4 = r9
	if w0 <= w9 goto .L2921
	w5 += -1
	r2 = r5
	if w4 s< 0 goto .L2924
	r9 = r4
	w1 += w1
	w9 += w4
	r1 = r1
	r4 = r9
	if w0 <= w9 goto .L2921
	w2 += -1
	r2 = r2
	if w4 s< 0 goto .L2924
	r5 = r4
	w1 += w1
	w5 += w4
	r1 = r1
	r4 = r5
	if w0 <= w5 goto .L2921
	w2 += -1
	r9 = r2
	if w4 s< 0 goto .L2924
	r2 = r4
	w1 += w1
	w2 += w4
	r1 = r1
	r4 = r2
	if w0 <= w2 goto .L2921
	w9 += -1
	r9 = r9
	if w4 s< 0 goto .L2924
	r5 = r4
	w1 += w1
	w5 += w4
	r1 = r1
	r4 = r5
	if w0 <= w5 goto .L2921
	w9 += -1
	r2 = r9
	if w4 s< 0 goto .L2924
	r9 = r4
	w1 += w1
	w9 += w4
	r1 = r1
	r4 = r9
	if w0 <= w9 goto .L2921
	w2 += -1
	r2 = r2
	if w4 s< 0 goto .L2924
	r5 = r4
	w1 += w1
	w5 += w4
	r1 = r1
	r4 = r5
	if w0 <= w5 goto .L2921
	w2 += -1
	r9 = r2
	if w4 s< 0 goto .L2924
	r2 = r4
	w1 += w1
	w2 += w4
	r1 = r1
	r4 = r2
	if w0 <= w2 goto .L2921
	w9 += -1
	r5 = r9
	if w9 != 0 goto .L2919
.L2922:
	if r3 != 0 goto .L2944
	r0 = r5
	exit
.L2944:
	exit
.L2921:
	if r1 == 0 goto .L2938
.L2924:
	r5 = 0
	r9 = 1
	r7 = r5
	r6 = r5
.L2931:
	r8 = r0
	r2 = r9;r2 &= 0xff
	w8 -= w4
	if w0 >= w4 goto .L2925
	r2 = r7;r2 &= 0xff
.L2925:
	if w0 < w4 goto .L2928
	r0 = r8
.L2928:
	r0 = r0
	if r2 == 0 goto .L2929
	r2 = r1
.L2930:
	w2 |= w5
	r1 >>= 1
	r5 = r2
	r4 >>= 1
	if r1 != 0 goto .L2931
	goto .L2922
.L2929:
	r2 = r6
	goto .L2930
.L2964:
	r2 = r0
	r1 = 1
	w2 -= w4
	if w4 <= w0 goto .L2933
	r1 = 0
.L2933:
	r5 = r1;r5 &= 0xff
	if w4 > w0 goto .L2936
	r0 = r2
.L2936:
	r0 = r0
	goto .L2922
.L2938:
	r5 = r1
	goto .L2922
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s< 0 goto .L2968
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L2969
	r0 = r8
	r0 &= 1
	exit
.L2969:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2968:
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
	if r0 s< 0 goto .L2973
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L2974
	r0 = r8
	r0 &= 1
	exit
.L2974:
	r8 = 0
	r0 = r8
	r0 &= 1
	exit
.L2973:
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
	r1 = (s32) r1
	r4 = (s32) r2
	if w2 s< 0 goto .L2991
	if r4 == 0 goto .L2983
	r5 = 0
.L2979:
	r3 = 32
	r0 = 0
	goto .L2982
.L2992:
	w3 += -1
	r3 &= 0xff
	if r3 == 0 goto .L2981
.L2982:
	r2 = r4
	r9 = r1
	w2 &= 1
	r9 <<= 33
	w2 = -w2
	r4 s>>= 1
	w2 &= w1
	r1 = r9
	w2 += w0
	r1 s>>= 32
	r0 = (s32) r2
	if r4 != 0 goto .L2992
.L2981:
	if r5 == 0 goto .L2980
	w0 = -w0
	r0 = (s32) r0
	exit
.L2983:
	r0 = r4
.L2980:
	exit
.L2991:
	w4 = -w4
	r5 = 1
	r4 = (s32) r4
	goto .L2979
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L3039
	r0 = 1
	r5 = 0
.L2994:
	if r2 s>= 0 goto .L2995
	r2 = -r2
	r5 = r0
.L2995:
	r3 = r2
	r4 = r1
	if w1 <= w2 goto .L3040
	r0 = 32
	r1 = 1
.L2996:
	if w3 s< 0 goto .L3001
	r2 = r3
	w1 += w1
	w2 += w3
	r1 = r1
	r3 = r2
	if w4 <= w2 goto .L2998
	w0 += -1
	r9 = r0
	if w3 s< 0 goto .L3001
	r0 = r3
	w1 += w1
	w0 += w3
	r1 = r1
	r3 = r0
	if w4 <= w0 goto .L2998
	w9 += -1
	r9 = r9
	if w3 s< 0 goto .L3001
	r2 = r3
	w1 += w1
	w2 += w3
	r1 = r1
	r3 = r2
	if w4 <= w2 goto .L2998
	w9 += -1
	r0 = r9
	if w3 s< 0 goto .L3001
	r9 = r3
	w1 += w1
	w9 += w3
	r1 = r1
	r3 = r9
	if w4 <= w9 goto .L2998
	w0 += -1
	r0 = r0
	if w3 s< 0 goto .L3001
	r2 = r3
	w1 += w1
	w2 += w3
	r1 = r1
	r3 = r2
	if w4 <= w2 goto .L2998
	w0 += -1
	r9 = r0
	if w3 s< 0 goto .L3001
	r0 = r3
	w1 += w1
	w0 += w3
	r1 = r1
	r3 = r0
	if w4 <= w0 goto .L2998
	w9 += -1
	r9 = r9
	if w3 s< 0 goto .L3001
	r2 = r3
	w1 += w1
	w2 += w3
	r1 = r1
	r3 = r2
	if w4 <= w2 goto .L2998
	w9 += -1
	r9 = r9
	if w3 s< 0 goto .L3001
	r0 = r3
	w1 += w1
	w0 += w3
	r1 = r1
	r3 = r0
	if w4 <= w0 goto .L2998
	w9 += -1
	r0 = r9
	if w9 != 0 goto .L2996
.L2999:
	if r5 == 0 goto .L2993
	r0 = -r0
	exit
.L2993:
	exit
.L2998:
	if r1 == 0 goto .L3015
.L3001:
	r0 = 0
	r9 = 1
	r7 = r0
	r6 = r0
.L3008:
	r8 = r4
	r2 = r9;r2 &= 0xff
	w8 -= w3
	if w4 >= w3 goto .L3002
	r2 = r7;r2 &= 0xff
.L3002:
	if w4 < w3 goto .L3005
	r4 = r8
.L3005:
	r4 = r4
	if r2 == 0 goto .L3006
	r2 = r1
.L3007:
	w2 |= w0
	r1 >>= 1
	r0 = r2
	r3 >>= 1
	if r1 != 0 goto .L3008
	goto .L2999
.L3006:
	r2 = r6
	goto .L3007
.L3039:
	r1 = -r1
	r0 = 0
	r5 = 1
	goto .L2994
.L3040:
	r0 = 1
	if w3 <= w4 goto .L2999
	r0 = 0
	goto .L2999
.L3015:
	r0 = r1
	goto .L2999
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	if r1 s< 0 goto .L3090
	r5 = 0
.L3042:
	if r2 s>= 0 goto .L3043
	r2 = -r2
.L3043:
	r3 = r2
	r9 = r1
	if w1 <= w2 goto .L3091
	r1 = 32
	r0 = 1
.L3044:
	if w3 s< 0 goto .L3087
	r2 = r3
	w0 += w0
	w2 += w3
	r0 = r0
	r3 = r2
	if w9 <= w2 goto .L3089
	w1 += -1
	r1 = r1
	if w3 s< 0 goto .L3087
	r4 = r3
	w0 += w0
	w4 += w3
	r0 = r0
	r3 = r4
	if w9 <= w4 goto .L3089
	w1 += -1
	r1 = r1
	if w3 s< 0 goto .L3087
	r2 = r3
	w0 += w0
	w2 += w3
	r0 = r0
	r3 = r2
	if w9 <= w2 goto .L3089
	w1 += -1
	r4 = r1
	if w3 s< 0 goto .L3087
	r1 = r3
	w0 += w0
	w1 += w3
	r0 = r0
	r3 = r1
	if w9 <= w1 goto .L3089
	w4 += -1
	r4 = r4
	if w3 s< 0 goto .L3087
	r2 = r3
	w0 += w0
	w2 += w3
	r0 = r0
	r3 = r2
	if w9 <= w2 goto .L3089
	w4 += -1
	r1 = r4
	if w3 s< 0 goto .L3087
	r4 = r3
	w0 += w0
	w4 += w3
	r0 = r0
	r3 = r4
	if w9 <= w4 goto .L3089
	w1 += -1
	r1 = r1
	if w3 s< 0 goto .L3087
	r2 = r3
	w0 += w0
	w2 += w3
	r0 = r0
	r3 = r2
	if w9 <= w2 goto .L3089
	w1 += -1
	r4 = r1
	if w3 s< 0 goto .L3087
	r1 = r3
	w0 += w0
	w1 += w3
	r0 = r0
	r3 = r1
	if w9 <= w1 goto .L3089
	w4 += -1
	r1 = r4
	if w4 != 0 goto .L3044
.L3047:
	r0 = r9
	if r5 == 0 goto .L3041
	r0 = -r0
	exit
.L3089:
	if r0 == 0 goto .L3047
.L3087:
	r4 = r9
	w4 -= w3
	if w9 >= w3 goto .L3052
	r4 = r9
.L3052:
	r9 = r4
	r0 >>= 1
	r3 >>= 1
	goto .L3089
.L3041:
	exit
.L3090:
	r1 = -r1
	r5 = 1
	goto .L3042
.L3091:
	r1 = r9
	r0 = 1
	w1 -= w3
	if w3 <= w9 goto .L3057
	r0 = 0
.L3057:
	w0 &= 1
	if w0 == 0 goto .L3055
	r4 = r1
	r9 = r4
	goto .L3047
.L3055:
	r4 = r9
	r9 = r4
	goto .L3047
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r0 = r1;r0 &= 0xffff
	r2 &= 0xffff
	r3 = (s32) r3
	if w2 >= w0 goto .L3309
	w1 = (s16) w2
	if w1 s< 0 goto .L3097
	r4 = r2
	w4 += w2
	r4 &= 0xffff
	if w0 <= w4 goto .L3203
	w5 = (s16) w4
	if w5 s< 0 goto .L3204
	r4 = r2
	w4 <<= 2
	r4 &= 0xffff
	if w0 <= w4 goto .L3205
	w9 = (s16) w4
	if w9 s< 0 goto .L3206
	r4 = r2
	w4 <<= 3
	r4 &= 0xffff
	if w0 <= w4 goto .L3207
	w1 = (s16) w4
	if w1 s< 0 goto .L3208
	r4 = r2
	w4 <<= 4
	r4 &= 0xffff
	if w0 <= w4 goto .L3209
	w5 = (s16) w4
	if w5 s< 0 goto .L3210
	r4 = r2
	w4 <<= 5
	r4 &= 0xffff
	if w0 <= w4 goto .L3211
	w9 = (s16) w4
	if w9 s< 0 goto .L3212
	r4 = r2
	w4 <<= 6
	r4 &= 0xffff
	if w0 <= w4 goto .L3213
	w1 = (s16) w4
	if w1 s< 0 goto .L3214
	r4 = r2
	w4 <<= 7
	r4 &= 0xffff
	if w0 <= w4 goto .L3215
	w5 = (s16) w4
	if w5 s< 0 goto .L3216
	r4 = r2
	w4 <<= 8
	r4 &= 0xffff
	if w0 <= w4 goto .L3217
	w9 = (s16) w4
	if w9 s< 0 goto .L3218
	r4 = r2
	w4 <<= 9
	r4 &= 0xffff
	if w0 <= w4 goto .L3219
	w1 = (s16) w4
	if w1 s< 0 goto .L3220
	r4 = r2
	w4 <<= 10
	r4 &= 0xffff
	if w0 <= w4 goto .L3221
	w5 = (s16) w4
	if w5 s< 0 goto .L3222
	r4 = r2
	w4 <<= 11
	r4 &= 0xffff
	if w0 <= w4 goto .L3223
	w9 = (s16) w4
	if w9 s< 0 goto .L3224
	r4 = r2
	w4 <<= 12
	r4 &= 0xffff
	if w0 <= w4 goto .L3225
	w1 = (s16) w4
	if w1 s< 0 goto .L3226
	r4 = r2
	w4 <<= 13
	r4 &= 0xffff
	if w0 <= w4 goto .L3227
	w5 = (s16) w4
	if w5 s< 0 goto .L3228
	r4 = r2
	w4 <<= 14
	r4 &= 0xffff
	if w0 <= w4 goto .L3229
	w9 = (s16) w4
	if w9 s< 0 goto .L3230
	w2 <<= 15
	r1 = r2;r1 &= 0xffff
	if w0 <= w1 goto .L3231
	if r1 != 0 goto .L3310
.L3100:
	if r3 != 0 goto .L3280
	r0 = r1
	exit
.L3280:
	exit
.L3219:
	r2 = 512
.L3098:
	r6 = r0
	w6 -= w4
	r6 &= 0xffff
	if w0 >= w4 goto .L3192
	r6 = r0
.L3192:
	r5 = r6;r5 &= 0xffff
	r7 = 1
	if w0 >= w4 goto .L3195
	r7 = 0
.L3195:
	if r7 == 0 goto .L3194
	r7 = r2
.L3194:
	r9 = r7;r9 &= 0xffff
	r6 = r2
	r7 = r4
	r6 >>= 1
	r7 >>= 1
.L3196:
	r0 = r5
	w0 -= w7
	r0 &= 0xffff
	if w5 >= w7 goto .L3103
	r0 = r5
.L3103:
	r0 &= 0xffff
	r1 = 1
	if w5 >= w7 goto .L3106
	r1 = 0
.L3106:
	if r1 == 0 goto .L3105
	r1 = r6
.L3105:
	w1 |= w9
	r6 = r2
	r7 = r4
	r6 >>= 2
	r1 &= 0xffff
	r7 >>= 2
	if r6 == 0 goto .L3100
	r5 = r0
	w5 -= w7
	r9 = r5;r9 &= 0xffff
	r5 = 1
	if w0 >= w7 goto .L3107
	r5 = 0
.L3107:
	if w0 < w7 goto .L3110
	r0 = r9
.L3110:
	r0 &= 0xffff
	if r5 == 0 goto .L3112
	r5 = r6
.L3112:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 3
	r1 = r5;r1 &= 0xffff
	r7 >>= 3
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3113
	r5 = 0
.L3113:
	if w0 < w7 goto .L3116
	r0 = r9
.L3116:
	r0 &= 0xffff
	if r5 == 0 goto .L3118
	r5 = r6
.L3118:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 4
	r1 = r5;r1 &= 0xffff
	r7 >>= 4
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3119
	r5 = 0
.L3119:
	if w0 < w7 goto .L3122
	r0 = r9
.L3122:
	r0 &= 0xffff
	if r5 == 0 goto .L3124
	r5 = r6
.L3124:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 5
	r1 = r5;r1 &= 0xffff
	r7 >>= 5
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3125
	r5 = 0
.L3125:
	if w0 < w7 goto .L3128
	r0 = r9
.L3128:
	r0 &= 0xffff
	if r5 == 0 goto .L3130
	r5 = r6
.L3130:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 6
	r1 = r5;r1 &= 0xffff
	r7 >>= 6
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3131
	r5 = 0
.L3131:
	if w0 < w7 goto .L3134
	r0 = r9
.L3134:
	r0 &= 0xffff
	if r5 == 0 goto .L3136
	r5 = r6
.L3136:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 7
	r1 = r5;r1 &= 0xffff
	r7 >>= 7
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3137
	r5 = 0
.L3137:
	if w0 < w7 goto .L3140
	r0 = r9
.L3140:
	r0 &= 0xffff
	if r5 == 0 goto .L3142
	r5 = r6
.L3142:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 8
	r1 = r5;r1 &= 0xffff
	r7 >>= 8
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3143
	r5 = 0
.L3143:
	if w0 < w7 goto .L3146
	r0 = r9
.L3146:
	r0 &= 0xffff
	if r5 == 0 goto .L3148
	r5 = r6
.L3148:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 9
	r1 = r5;r1 &= 0xffff
	r7 >>= 9
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3149
	r5 = 0
.L3149:
	if w0 < w7 goto .L3152
	r0 = r9
.L3152:
	r0 &= 0xffff
	if r5 == 0 goto .L3154
	r5 = r6
.L3154:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 10
	r1 = r5;r1 &= 0xffff
	r7 >>= 10
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3155
	r5 = 0
.L3155:
	if w0 < w7 goto .L3158
	r0 = r9
.L3158:
	r0 &= 0xffff
	if r5 == 0 goto .L3160
	r5 = r6
.L3160:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 11
	r1 = r5;r1 &= 0xffff
	r7 >>= 11
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3161
	r5 = 0
.L3161:
	if w0 < w7 goto .L3164
	r0 = r9
.L3164:
	r0 &= 0xffff
	if r5 == 0 goto .L3166
	r5 = r6
.L3166:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 12
	r1 = r5;r1 &= 0xffff
	r7 >>= 12
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3167
	r5 = 0
.L3167:
	if w0 < w7 goto .L3170
	r0 = r9
.L3170:
	r0 &= 0xffff
	if r5 == 0 goto .L3172
	r5 = r6
.L3172:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 13
	r1 = r5;r1 &= 0xffff
	r7 >>= 13
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3173
	r5 = 0
.L3173:
	if w0 < w7 goto .L3176
	r0 = r9
.L3176:
	r0 &= 0xffff
	if r5 == 0 goto .L3178
	r5 = r6
.L3178:
	w5 |= w1
	r6 = r2
	r7 = r4
	r6 >>= 14
	r1 = r5;r1 &= 0xffff
	r7 >>= 14
	if r6 == 0 goto .L3100
	r9 = r0
	r5 = 1
	w9 -= w7
	r9 &= 0xffff
	if w0 >= w7 goto .L3179
	r5 = 0
.L3179:
	if w0 < w7 goto .L3182
	r0 = r9
.L3182:
	r0 &= 0xffff
	if r5 == 0 goto .L3184
	r5 = r6
.L3184:
	w5 |= w1
	r4 >>= 15
	r1 = r5;r1 &= 0xffff
	if w2 == 16384 goto .L3100
	r2 = r0
	r9 = 1
	w2 -= w4
	r2 &= 0xffff
	if w0 >= w4 goto .L3185
	r9 = 0
.L3185:
	if w0 >= w4 goto .L3188
	r2 = r0
.L3188:
	r9 |= r1
	r0 = r2;r0 &= 0xffff
	r1 = r9
	goto .L3100
.L3310:
	r2 = 32768
	r4 = r2
.L3099:
	r5 = r0
	w5 -= w4
	r5 &= 0xffff
	if w0 >= w4 goto .L3199
	r5 = r0
.L3199:
	r5 &= 0xffff
	r1 = 1
	if w0 >= w4 goto .L3202
	r1 = 0
.L3202:
	r9 = r1;r9 &= 0xff
	if r9 == 0 goto .L3201
	r9 = r2
.L3201:
	r6 = r2
	r7 = r4
	r9 &= 0xffff
	r6 >>= 1
	r7 >>= 1
	goto .L3196
.L3309:
	r4 = r0
	w4 -= w2
	r2 ^= r0
	r4 &= 0xffff
	r2 += -1
	r1 = r2
	r1 >>= 63
	if r2 s< 0 goto .L3095
	r4 = r0
.L3095:
	r0 = r4;r0 &= 0xffff
	goto .L3100
.L3203:
	r2 = 2
	goto .L3098
.L3204:
	r2 = 2
	goto .L3099
.L3205:
	r2 = 4
	goto .L3098
.L3206:
	r2 = 4
	goto .L3099
.L3207:
	r2 = 8
	goto .L3098
.L3208:
	r2 = 8
	goto .L3099
.L3209:
	r2 = 16
	goto .L3098
.L3210:
	r2 = 16
	goto .L3099
.L3211:
	r2 = 32
	goto .L3098
.L3212:
	r2 = 32
	goto .L3099
.L3213:
	r2 = 64
	goto .L3098
.L3214:
	r2 = 64
	goto .L3099
.L3215:
	r2 = 128
	goto .L3098
.L3216:
	r2 = 128
	goto .L3099
.L3217:
	r2 = 256
	goto .L3098
.L3218:
	r2 = 256
	goto .L3099
.L3220:
	r2 = 512
	goto .L3099
.L3221:
	r2 = 1024
	goto .L3098
.L3222:
	r2 = 1024
	goto .L3099
.L3223:
	r2 = 2048
	goto .L3098
.L3224:
	r2 = 2048
	goto .L3099
.L3225:
	r2 = 4096
	goto .L3098
.L3226:
	r2 = 4096
	goto .L3099
.L3227:
	r2 = 8192
	goto .L3098
.L3228:
	r2 = 8192
	goto .L3099
.L3229:
	r2 = 16384
	goto .L3098
.L3230:
	r2 = 16384
	goto .L3099
.L3231:
	r4 = 32768
	r2 = r4
	goto .L3098
.L3097:
	w0 -= w2
	r1 = 1
	r0 &= 0xffff
	goto .L3100
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 = (s32) r3
	if r2 >= r1 goto .L3360
	r0 = 64
	r4 = 1
	r9 = 2147483648 ll
.L3312:
	r5 = r2
	r5 &= r9
	if r5 != 0 goto .L3317
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3314
	w0 += -1
	r5 = r2
	r0 = r0
	r5 &= r9
	if r5 != 0 goto .L3317
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3314
	r5 = r2
	w0 += -1
	r5 &= r9
	r0 = r0
	if r5 != 0 goto .L3317
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3314
	r5 = r2
	w0 += -1
	r5 &= r9
	r0 = r0
	if r5 != 0 goto .L3317
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3314
	r5 = r2
	w0 += -1
	r5 &= r9
	r0 = r0
	if r5 != 0 goto .L3317
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3314
	r5 = r2
	w0 += -1
	r5 &= r9
	r0 = r0
	if r5 != 0 goto .L3317
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3314
	r5 = r2
	w0 += -1
	r5 &= r9
	r0 = r0
	if r5 != 0 goto .L3317
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3314
	w0 += -1
	r5 = r2
	r6 = r0
	r5 &= r9
	if r5 != 0 goto .L3317
	r2 += r2
	r4 += r4
	if r1 <= r2 goto .L3314
	w6 += -1
	r0 = r6
	if w6 != 0 goto .L3312
.L3315:
	if r3 == 0 goto .L3311
	r5 = r1
.L3311:
	r0 = r5
	exit
.L3314:
	if r4 == 0 goto .L3315
.L3317:
	r5 = 0
	r6 = 1
	r7 = r5
	r9 = r5
.L3324:
	r8 = r1
	r0 = r6;r0 &= 0xff
	r8 -= r2
	if r1 >= r2 goto .L3318
	r0 = r7;r0 &= 0xff
.L3318:
	if r1 < r2 goto .L3321
	r1 = r8
.L3321:
	if r0 == 0 goto .L3322
	r0 = r4
.L3323:
	r5 |= r0
	r4 >>= 1
	r2 >>= 1
	if r4 != 0 goto .L3324
	goto .L3315
.L3322:
	r0 = r9
	goto .L3323
.L3360:
	r4 = r1
	r0 = 1
	r4 -= r2
	if r2 <= r1 goto .L3326
	r0 = 0
.L3326:
	r5 = r0;r5 &= 0xff
	if r2 <= r1 goto .L3329
	r4 = r1
.L3329:
	r1 = r4
	goto .L3315
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r3 = (s32) r2
	w2 &= 32
	if w2 == 0 goto .L3362
	w3 += -32
	r0 = 0
	w1 <<= w3
	r1 = (s32) r1
	r1 <<= 32
	r0 |= r1
	exit
.L3362:
	if r3 == 0 goto .L3365
	r0 = r1
	r2 = r1
	w0 <<= w3
	r4 = 32
	r2 s>>= 32
	w4 -= w3
	w2 <<= w3
	w1 >>= w4
	r0 = r0
	w1 |= w2
	r1 = (s32) r1
	r1 <<= 32
	r0 |= r1
	exit
.L3365:
	r0 = r1
	exit
	.size	__ashldi3, .-__ashldi3
	.align	3
	.global	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	r0 = (s32) r3
	w3 &= 64
	if w3 == 0 goto .L3367
	w0 += -64
	r4 = 0
	r2 = r0
	r0 = r4
	r1 <<= r2
	exit
.L3367:
	if r0 == 0 goto .L3370
	r5 = r0
	r4 = r1
	r2 <<= r5
	r4 <<= r5
	r3 = 64
	w3 -= w0
	r0 = r4
	r9 = r3
	r1 >>= r9
	r1 |= r2
	exit
.L3370:
	r0 = r1
	r1 = r2
	exit
	.size	__ashlti3, .-__ashlti3
	.align	3
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	r3 = (s32) r2
	w2 &= 32
	if w2 == 0 goto .L3372
	r1 s>>= 32
	w3 += -32
	r0 = r1
	w1 s>>= w3
	w0 s>>= 31
	r1 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 <<= 32
	r0 |= r1
	exit
.L3372:
	if r3 == 0 goto .L3375
	r2 = r1
	w1 >>= w3
	r2 s>>= 32
	r4 = 32
	r0 = r2
	w4 -= w3
	w0 s>>= w3
	w2 <<= w4
	r0 = (s32) r0
	w2 |= w1
	r0 <<= 32
	r1 = r2
	r0 |= r1
	exit
.L3375:
	r0 = r1
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	r4 = (s32) r3
	w3 &= 64
	if w3 == 0 goto .L3377
	w4 += -64
	r1 = (s32) r4
	r3 = r2
	r0 = r2
	r3 s>>= 63
	r0 s>>= r1
	r1 = r3
	exit
.L3377:
	if r4 == 0 goto .L3380
	r0 = r4
	r1 >>= r0
	r3 = r2
	r0 = r2
	r3 s>>= r4
	r5 = 64
	w5 -= w4
	r9 = r5
	r0 <<= r9
	r0 |= r1
	r1 = r3
	exit
.L3380:
	r0 = r1
	r1 = r2
	exit
	.size	__ashrti3, .-__ashrti3
	.align	3
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	r0 = r1
	r0 = bswap64 r0
	exit
	.size	__bswapdi2, .-__bswapdi2
	.align	3
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	r0 = r1
	r0 = bswap32 r0
	exit
	.size	__bswapsi2, .-__bswapsi2
	.align	3
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	r2 = r1
	r0 = 1
	if w1 <= 65535 goto .L3384
	r0 = 0
.L3384:
	w0 <<= 4
	r5 = 16
	r1 = r0
	r4 = 8
	r1 &= 16
	w5 -= w1
	w2 >>= w5
	r9 = r2
	r9 &= 65280
	r9 += -1
	r9 >>= 63
	r9 <<= 3
	w4 -= w9
	r3 = 4
	w2 >>= w4
	w9 += w1
	r5 = r2
	r4 = 2
	r5 &= 240
	r0 = r4
	r5 += -1
	r5 >>= 63
	r5 <<= 2
	w3 -= w5
	w2 >>= w3
	r1 = r2
	r1 &= 12
	r1 += -1
	r1 >>= 63
	r1 <<= 1
	w0 -= w1
	w5 += w9
	w2 >>= w0
	r3 = r2
	r3 >>= 1
	r3 &= 1
	w3 ^= 1
	r0 = r3;r0 &= 0xff
	if w3 == 0 goto .L3386
	r0 = r4
	w0 -= w2
.L3386:
	w1 += w5
	w0 += w1
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	r0 = r1
	r6 = 1
	if r2 == 0 goto .L3388
	r6 = 0
.L3388:
	r1 = r6
	r3 = 1
	r1 += -1
	r1 &= r2
	if r2 == 0 goto .L3391
	r3 = 0
.L3391:
	w3 &= 1
	if w3 != 0 goto .L3390
	r0 = 0
.L3390:
	r1 |= r0
	w6 <<= 6
	call	__clzdi2
	w0 += w6
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
	if w3 s< w0 goto .L3402
	if w3 s> w0 goto .L3403
	r4 = r1
	r5 = r2
	if w2 > w1 goto .L3402
	if w4 > w5 goto .L3403
	r0 = 1
	exit
.L3402:
	r0 = 0
	exit
.L3403:
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
	if w3 s< w0 goto .L3409
	if w3 s> w0 goto .L3408
	r4 = r1
	r5 = r2
	if w2 > w1 goto .L3409
	r0 = 1
	if w4 <= w5 goto .L3410
	r0 &= 1
	exit
.L3409:
	r0 = -1
	exit
.L3410:
	r0 = 0
	r0 &= 1
	exit
.L3408:
	r0 = 1
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	if r2 s< r4 goto .L3415
	if r2 s> r4 goto .L3416
	if r1 < r3 goto .L3415
	if r1 > r3 goto .L3416
	r0 = 1
	exit
.L3415:
	r0 = 0
	exit
.L3416:
	r0 = 2
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	r3 = r1;r3 &= 0xffff
	r3 += -1
	r3 >>= 63
	r3 <<= 4
	w1 >>= w3
	r2 = r1;r2 &= 0xff
	r2 += -1
	r2 >>= 63
	r2 <<= 3
	w1 >>= w2
	w2 += w3
	r0 = r1
	r0 &= 15
	r0 += -1
	r0 >>= 63
	r0 <<= 2
	w1 >>= w0
	w0 += w2
	r4 = r1
	r5 = 2
	r4 &= 3
	r4 += -1
	r4 >>= 63
	r4 <<= 1
	w1 >>= w4
	w4 += w0
	w1 &= 3
	r0 = r1
	w1 >>= 1
	w0 ^= -1
	w5 -= w1
	w0 &= 1
	w0 = -w0
	w0 &= w5
	w0 += w4
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	r0 = r1
	r6 = 1
	if r1 == 0 goto .L3419
	r6 = 0
.L3419:
	r1 = 1
	if r0 == 0 goto .L3422
	r1 = 0
.L3422:
	w1 &= 1
	if w1 == 0 goto .L3420
	r1 = r2
	r2 = r6
	r2 += -1
	r2 &= r0
	w6 <<= 6
	r1 |= r2
	call	__ctzdi2
	w0 += w6
	exit
.L3420:
	r2 = r6
	r2 += -1
	r2 &= r0
	w6 <<= 6
	r1 = 0
	r1 |= r2
	call	__ctzdi2
	w0 += w6
	exit
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	if r1 != 0 goto .L3430
	if r2 != 0 goto .L3433
	r0 = r2
	exit
.L3430:
	call	__ctzdi2
	w0 += 1
	r0 = (s32) r0
	exit
.L3433:
	r1 = r2
	call	__ctzdi2
	w0 += 65
	r0 = (s32) r0
	exit
	.size	__ffsti2, .-__ffsti2
	.align	3
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	r0 = (s32) r2
	w2 &= 32
	if w2 == 0 goto .L3435
	w0 += -32
	r1 >>= 32
	r5 = 0
	w1 >>= w0
	r5 <<= 32
	r1 = r1
	r0 = r1
	r0 |= r5
	exit
.L3435:
	if r0 == 0 goto .L3438
	r3 = r1
	w1 >>= w0
	r3 >>= 32
	r4 = 32
	r2 = r3
	w4 -= w0
	w2 >>= w0
	w3 <<= w4
	r5 = r2
	w3 |= w1
	r5 <<= 32
	r1 = r3
	r0 = r1
	r0 |= r5
	exit
.L3438:
	r0 = r1
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	r4 = (s32) r3
	w3 &= 64
	if w3 == 0 goto .L3440
	w4 += -64
	r1 = r4
	r3 = 0
	r0 = r2
	r0 >>= r1
	r1 = r3
	exit
.L3440:
	if r4 == 0 goto .L3443
	r5 = r4
	r0 = 64
	r1 >>= r5
	w0 -= w4
	r3 = r2
	r9 = r0
	r3 >>= r5
	r0 = r2
	r0 <<= r9
	r0 |= r1
	r1 = r3
	exit
.L3443:
	r0 = r1
	r1 = r2
	exit
	.size	__lshrti3, .-__lshrti3
	.align	3
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	r5 = r1
	w1 >>= 16
	w5 &= 65535
	r4 = r1
	r3 = r2
	r0 = r5
	w3 &= 65535
	w0 *= w3
	r1 = r0
	w1 >>= 16
	w2 >>= 16
	w3 *= w4
	r9 = r5
	w3 += w1
	w9 *= w2
	r5 = r3
	w4 *= w2
	w5 &= 65535
	w0 &= 65535
	w9 += w5
	w3 >>= 16
	r1 = r9
	w3 += w4
	w1 <<= 16
	w9 >>= 16
	w0 += w1
	w3 += w9
	r0 = r0
	r3 <<= 32
	r0 |= r3
	exit
	.size	__muldsi3, .-__muldsi3
	.align	3
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	r4 = r1
	r0 = r1
	r3 = r2
	w0 &= 65535
	w3 &= 65535
	r5 = r1
	r1 = r0
	w5 >>= 16
	w1 *= w3
	w3 *= w5
	r6 = r1
	w6 >>= 16
	w3 += w6
	r9 = r3
	w9 &= 65535
	r6 = r2
	w1 &= 65535
	w6 >>= 16
	w3 >>= 16
	w5 *= w6
	w0 *= w6
	w3 += w5
	w0 += w9
	r9 = r0
	w0 >>= 16
	w9 <<= 16
	w3 += w0
	w1 += w9
	r3 <<= 32
	r5 = 4294967295 ll
	r6 = r2
	r0 = r5
	r6 s>>= 32
	r0 &= r1
	r1 = r4
	r0 |= r3
	w1 *= w6
	r3 = r0
	r4 s>>= 32
	r3 s>>= 32
	w2 *= w4
	w1 += w3
	r0 &= r5
	w1 += w2
	r1 <<= 32
	r0 |= r1
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
	if r1 != 0 goto .L3450
	r3 = r0
.L3450:
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
	r2 >>= 32
	w2 ^= w1
	r1 = r2
	w1 >>= 16
	w1 ^= w2
	r3 = r1
	w3 >>= 8
	w3 ^= w1
	r4 = r3
	w4 >>= 4
	w4 ^= w3
	w4 &= 15
	w0 s>>= w4
	w0 &= 1
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
	w2 ^= w1
	r1 = r2
	w1 >>= 16
	w1 ^= w2
	r3 = r1
	w3 >>= 8
	w3 ^= w1
	r4 = r3
	w4 >>= 4
	w4 ^= w3
	w4 &= 15
	w0 s>>= w4
	w0 &= 1
	exit
	.size	__parityti2, .-__parityti2
	.align	3
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	r2 = r1
	w2 >>= 16
	w1 ^= w2
	r0 = 27030
	r3 = r1
	w3 >>= 8
	w3 ^= w1
	r1 = r3
	w1 >>= 4
	w1 ^= w3
	w1 &= 15
	w0 s>>= w1
	w0 &= 1
	exit
	.size	__paritysi2, .-__paritysi2
	.align	3
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	r4 = 3689348814741910323 ll
	r2 = 6148914691236517205 ll
	r0 = r1
	r0 >>= 1
	r0 &= r2
	r1 -= r0
	r5 = r1
	r1 &= r4
	r3 = 1085102592571150095 ll
	r5 >>= 2
	r5 &= r4
	r5 += r1
	r1 = r5
	r1 >>= 4
	r1 += r5
	r1 &= r3
	r9 = r1
	r9 >>= 32
	w9 += w1
	r4 = r9
	w4 >>= 16
	w4 += w9
	r0 = r4
	w0 >>= 8
	w0 += w4
	w0 &= 127
	exit
	.size	__popcountdi2, .-__popcountdi2
	.align	3
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	r0 = r1
	w0 >>= 1
	w0 &= 1431655765
	w1 -= w0
	r2 = r1
	w1 &= 858993459
	w2 >>= 2
	w2 &= 858993459
	w2 += w1
	r3 = r2
	w3 >>= 4
	w3 += w2
	w3 &= 252645135
	r1 = r3
	w1 >>= 16
	w1 += w3
	r0 = r1
	w0 >>= 8
	w0 += w1
	w0 &= 63
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
	if r4 > r1 goto .L3457
	r9 = 0
.L3457:
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
	if r4 < r0 goto .L3458
	r9 = 0
.L3458:
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
	if r2 < r9 goto .L3459
	r0 = 0
.L3459:
	r4 = 1085102592571150095 ll
	r5 += r1
	r2 &= r4
	r0 += r5
	r0 &= r4
	r0 += r2
	r3 = r0
	r3 >>= 32
	w3 += w0
	r1 = r3
	w1 >>= 16
	w1 += w3
	r0 = r1
	w0 >>= 8
	w0 += w1
	w0 &= 255
	exit
	.size	__popcountti2, .-__popcountti2
	.align	3
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	r8 = (s32) r2
	*(u64 *) (r10+-8) = r8
	r6 = r1
	w2 &= 1
	r7 = 0x3ff0000000000000 ll
	if w2 == 0 goto .L3461
.L3463:
	r1 = r7
	r2 = r6
	call	__muldf3
	r7 = r0
.L3461:
	r0 = r8
	w0 >>= 31
	w0 += w8
	w0 s>>= 1
	r8 = (s32) r0
	if w0 == 0 goto .L3462
.L3464:
	r2 = r6
	r1 = r6
	call	__muldf3
	r3 = r8
	r4 = r8
	w3 >>= 31
	r6 = r0
	w3 += w8
	r2 = r0
	w3 s>>= 1
	r1 = r0
	w4 &= 1
	if w4 != 0 goto .L3463
	r8 = (s32) r3
	call	__muldf3
	r1 = r8
	r6 = r0
	w1 &= 1
	if w1 != 0 goto .L3463
	r5 = r8
	w5 >>= 31
	w5 += w8
	w5 s>>= 1
	r2 = r0
	r8 = (s32) r5
	r1 = r0
	call	__muldf3
	r9 = r8
	r6 = r0
	w9 >>= 31
	r2 = r0
	w9 += w8
	r1 = r0
	w9 s>>= 1
	r0 = r8
	w0 &= 1
	if w0 != 0 goto .L3463
	r8 = (s32) r9
	call	__muldf3
	r3 = r8
	r4 = r8
	w3 >>= 31
	r6 = r0
	w3 += w8
	r2 = r0
	w3 s>>= 1
	r1 = r0
	w4 &= 1
	if w4 != 0 goto .L3463
	r8 = (s32) r3
	call	__muldf3
	r5 = r8
	r9 = r8
	w5 >>= 31
	r6 = r0
	w5 += w8
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w9 &= 1
	if w9 != 0 goto .L3463
	r8 = (s32) r5
	call	__muldf3
	r3 = r8
	r6 = r0
	w3 &= 1
	r0 = r8
	r2 = r6
	w0 >>= 31
	r1 = r6
	w0 += w8
	w0 s>>= 1
	if w3 != 0 goto .L3463
	r8 = (s32) r0
	call	__muldf3
	r5 = r8
	r4 = r8
	w5 >>= 31
	r6 = r0
	w5 += w8
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w4 &= 1
	if w4 != 0 goto .L3463
	r8 = (s32) r5
	call	__muldf3
	r2 = r8
	r6 = r0
	w2 &= 1
	if w2 != 0 goto .L3463
	r1 = r8
	w1 >>= 31
	w1 += w8
	w1 s>>= 1
	r8 = (s32) r1
	goto .L3464
.L3462:
	r9 = *(u64 *) (r10+-8)
	if w9 s>= 0 goto .L3460
	r2 = r7
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	r7 = r0
.L3460:
	r0 = r7
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	r8 = (s32) r2
	*(u64 *) (r10+-8) = r8
	r6 = r1
	w2 &= 1
	r7 = 0x3f800000 ll
	if w2 == 0 goto .L3471
.L3473:
	r1 = r7
	r2 = r6
	call	__mulsf3
	r7 = r0
.L3471:
	r0 = r8
	w0 >>= 31
	w0 += w8
	w0 s>>= 1
	r8 = (s32) r0
	if w0 == 0 goto .L3472
.L3474:
	r2 = r6
	r1 = r6
	call	__mulsf3
	r3 = r8
	r4 = r8
	w3 >>= 31
	r6 = r0
	w3 += w8
	r2 = r0
	w3 s>>= 1
	r1 = r0
	w4 &= 1
	if w4 != 0 goto .L3473
	r8 = (s32) r3
	call	__mulsf3
	r1 = r8
	r6 = r0
	w1 &= 1
	if w1 != 0 goto .L3473
	r5 = r8
	w5 >>= 31
	w5 += w8
	w5 s>>= 1
	r2 = r0
	r8 = (s32) r5
	r1 = r0
	call	__mulsf3
	r9 = r8
	r6 = r0
	w9 >>= 31
	r2 = r0
	w9 += w8
	r1 = r0
	w9 s>>= 1
	r0 = r8
	w0 &= 1
	if w0 != 0 goto .L3473
	r8 = (s32) r9
	call	__mulsf3
	r3 = r8
	r4 = r8
	w3 >>= 31
	r6 = r0
	w3 += w8
	r2 = r0
	w3 s>>= 1
	r1 = r0
	w4 &= 1
	if w4 != 0 goto .L3473
	r8 = (s32) r3
	call	__mulsf3
	r5 = r8
	r9 = r8
	w5 >>= 31
	r6 = r0
	w5 += w8
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w9 &= 1
	if w9 != 0 goto .L3473
	r8 = (s32) r5
	call	__mulsf3
	r3 = r8
	r6 = r0
	w3 &= 1
	r0 = r8
	r2 = r6
	w0 >>= 31
	r1 = r6
	w0 += w8
	w0 s>>= 1
	if w3 != 0 goto .L3473
	r8 = (s32) r0
	call	__mulsf3
	r5 = r8
	r4 = r8
	w5 >>= 31
	r6 = r0
	w5 += w8
	r2 = r0
	w5 s>>= 1
	r1 = r0
	w4 &= 1
	if w4 != 0 goto .L3473
	r8 = (s32) r5
	call	__mulsf3
	r2 = r8
	r6 = r0
	w2 &= 1
	if w2 != 0 goto .L3473
	r1 = r8
	w1 >>= 31
	w1 += w8
	w1 s>>= 1
	r8 = (s32) r1
	goto .L3474
.L3472:
	r9 = *(u64 *) (r10+-8)
	if w9 s>= 0 goto .L3470
	r2 = r7
	r1 = 0x3f800000 ll
	call	__divsf3
	r7 = r0
.L3470:
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
	if w3 < w0 goto .L3484
	if w3 > w0 goto .L3485
	r4 = r1
	r5 = r2
	if w2 > w1 goto .L3484
	if w4 > w5 goto .L3485
	r0 = 1
	exit
.L3484:
	r0 = 0
	exit
.L3485:
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
	if w3 < w0 goto .L3491
	if w3 > w0 goto .L3490
	r4 = r1
	r5 = r2
	if w2 > w1 goto .L3491
	r0 = 1
	if w4 <= w5 goto .L3492
	r0 &= 1
	exit
.L3491:
	r0 = -1
	exit
.L3492:
	r0 = 0
	r0 &= 1
	exit
.L3490:
	r0 = 1
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	if r2 < r4 goto .L3497
	if r2 > r4 goto .L3498
	if r1 < r3 goto .L3497
	if r1 > r3 goto .L3498
	r0 = 1
	exit
.L3497:
	r0 = 0
	exit
.L3498:
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
	.global	__ltsf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
