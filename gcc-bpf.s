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
	r0 = r2
	r0 += r3
	r4 = r1
	r4 += r3
	r3 &= 7
	if r3 == 0 goto .L5
	r0 += -1
	r4 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	if r3 == 1 goto .L5
	if r3 == 2 goto .L21
	if r3 == 3 goto .L19
	if r3 == 4 goto .L17
	if r3 == 5 goto .L15
	if r3 == 6 goto .L13
	r0 += -1
	r4 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
.L13:
	r0 += -1
	r4 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
.L15:
	r0 += -1
	r4 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
.L17:
	r0 += -1
	r4 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
.L19:
	r0 += -1
	r4 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
.L21:
	r0 += -1
	r4 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r5
	goto .L5
.L6:
	r0 += -1
	r4 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r3 = *(u8 *) (r0+-1)
	*(u8 *) (r4+-1) = r3
	r5 = *(u8 *) (r0+-2)
	*(u8 *) (r4+-2) = r5
	r9 = *(u8 *) (r0+-3)
	*(u8 *) (r4+-3) = r9
	r3 = *(u8 *) (r0+-4)
	*(u8 *) (r4+-4) = r3
	r5 = *(u8 *) (r0+-5)
	*(u8 *) (r4+-5) = r5
	r9 = *(u8 *) (r0+-6)
	*(u8 *) (r4+-6) = r9
	r0 += -7
	r4 += -7
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
.L5:
	if r0 != r2 goto .L6
.L7:
	r0 = r1
	exit
.L4:
	if r1 == r2 goto .L7
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L8
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r2 += 1
	if r3 == 1 goto .L8
	if r3 == 2 goto .L42
	if r3 == 3 goto .L40
	if r3 == 4 goto .L38
	if r3 == 5 goto .L36
	if r3 == 6 goto .L34
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L34:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L36:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
.L38:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L40:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L42:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
	goto .L8
.L9:
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
.L8:
	if r0 != r4 goto .L9
	goto .L7
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	r3 &= 0xff
	r0 = r4
	r0 &= 7
	if r0 == 0 goto .L55
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
	if r0 == 1 goto .L55
	if r0 == 2 goto .L95
	if r0 == 3 goto .L96
	if r0 == 4 goto .L97
	if r0 == 5 goto .L98
	if r0 == 6 goto .L99
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L99:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r3 == r0 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L98:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L97:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L96:
	r0 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r0
	if r3 == r0 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L95:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r2 += 1
	r1 += 1
.L55:
	if r4 == 0 goto .L56
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r9
	if r3 == r9 goto .L56
	r4 += -1
	r9 = r2
	r9 += 1
	r0 = r1
	r0 += 1
	r1 = r0
	r2 = *(u8 *) (r2+1)
	*(u8 *) (r0+0) = r2
	if r3 == r2 goto .L56
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r9+1)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+2)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L56
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r9+3)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+4)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L56
	r4 += -1
	r1 += 1
	r5 = *(u8 *) (r9+5)
	*(u8 *) (r1+0) = r5
	if r3 == r5 goto .L56
	r4 += -1
	r1 += 1
	r2 = *(u8 *) (r9+6)
	*(u8 *) (r1+0) = r2
	if r3 == r2 goto .L56
	r4 += -1
	r2 = r9
	r2 += 7
	r0 += 7
	r1 = r0
	goto .L55
.L56:
	if r4 == 0 goto .L59
	r0 = r1
	r0 += 1
	exit
.L59:
	r0 = 0
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	r2 &= 0xff
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L102
	r4 = *(u8 *) (r1+0)
	if r2 == r4 goto .L103
	r1 += 1
	r3 += -1
	if r0 == 1 goto .L102
	if r0 == 2 goto .L142
	if r0 == 3 goto .L143
	if r0 == 4 goto .L144
	if r0 == 5 goto .L145
	if r0 == 6 goto .L146
	r5 = *(u8 *) (r1+0)
	if r2 == r5 goto .L103
	r1 += 1
	r3 += -1
.L146:
	r9 = *(u8 *) (r1+0)
	if r2 == r9 goto .L103
	r1 += 1
	r3 += -1
.L145:
	r0 = *(u8 *) (r1+0)
	if r2 == r0 goto .L103
	r1 += 1
	r3 += -1
.L144:
	r4 = *(u8 *) (r1+0)
	if r2 == r4 goto .L103
	r1 += 1
	r3 += -1
.L143:
	r5 = *(u8 *) (r1+0)
	if r2 == r5 goto .L103
	r1 += 1
	r3 += -1
.L142:
	r9 = *(u8 *) (r1+0)
	if r2 == r9 goto .L103
	r1 += 1
	r3 += -1
.L102:
	if r3 == 0 goto .L103
	r0 = *(u8 *) (r1+0)
	if r2 == r0 goto .L103
	r9 = r1
	r9 += 1
	r1 = r9
	r3 += -1
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L103
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+1)
	if r2 == r0 goto .L103
	r1 += 1
	r3 += -1
	r4 = *(u8 *) (r9+2)
	if r2 == r4 goto .L103
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+3)
	if r2 == r5 goto .L103
	r1 += 1
	r3 += -1
	r0 = *(u8 *) (r9+4)
	if r2 == r0 goto .L103
	r1 += 1
	r3 += -1
	r4 = *(u8 *) (r9+5)
	if r2 == r4 goto .L103
	r1 += 1
	r3 += -1
	r5 = *(u8 *) (r9+6)
	if r2 == r5 goto .L103
	r9 += 7
	r1 = r9
	r3 += -1
	goto .L102
.L103:
	if r3 == 0 goto .L148
	r0 = r1
	exit
.L148:
	r0 = 0
	exit
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L150
	r5 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r5 != r4 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
	if r0 == 1 goto .L150
	if r0 == 2 goto .L190
	if r0 == 3 goto .L191
	if r0 == 4 goto .L192
	if r0 == 5 goto .L193
	if r0 == 6 goto .L194
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
.L194:
	r5 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r5 != r4 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
.L193:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
.L192:
	r5 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r5 != r4 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
.L191:
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
.L190:
	r5 = *(u8 *) (r1+0)
	r4 = *(u8 *) (r2+0)
	if r5 != r4 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
.L150:
	if r3 == 0 goto .L151
	r9 = *(u8 *) (r1+0)
	r0 = *(u8 *) (r2+0)
	if r9 != r0 goto .L151
	r3 += -1
	r1 += 1
	r4 = r1
	r0 = r2
	r0 += 1
	r2 = r0
	r6 = *(u8 *) (r1+0)
	r9 = *(u8 *) (r0+0)
	if r6 != r9 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r4+1)
	r6 = *(u8 *) (r0+1)
	if r5 != r6 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+2)
	r6 = *(u8 *) (r0+2)
	if r9 != r6 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r4+3)
	r6 = *(u8 *) (r0+3)
	if r5 != r6 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
	r9 = *(u8 *) (r4+4)
	r6 = *(u8 *) (r0+4)
	if r9 != r6 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
	r5 = *(u8 *) (r4+5)
	r6 = *(u8 *) (r0+5)
	if r5 != r6 goto .L151
	r3 += -1
	r1 += 1
	r2 += 1
	r4 = *(u8 *) (r4+6)
	r6 = *(u8 *) (r0+6)
	if r4 != r6 goto .L151
	r3 += -1
	r1 += 1
	r0 += 7
	r2 = r0
	goto .L150
.L151:
	if r3 == 0 goto .L154
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L154:
	r0 = 0
	exit
	.size	memcmp, .-memcmp
	.align	3
	.global	memcpy
	.type	memcpy, @function
memcpy:
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r4
	r3 -= r1
	r3 &= 7
	if r3 == 0 goto .L197
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r5
	r0 += 1
	r2 += 1
	if r3 == 1 goto .L197
	if r3 == 2 goto .L210
	if r3 == 3 goto .L208
	if r3 == 4 goto .L206
	if r3 == 5 goto .L204
	if r3 == 6 goto .L202
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L202:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L204:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
.L206:
	r9 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r2 += 1
.L208:
	r3 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r3
	r0 += 1
	r2 += 1
.L210:
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r2 += 1
	goto .L197
.L198:
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
.L197:
	if r0 != r4 goto .L198
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
	if r3 == 0 goto .L222
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	r5 = r0
	r5 += -1
	if r2 == r9 goto .L262
	r0 = r5
	if r3 == 1 goto .L222
	if r3 == 2 goto .L243
	if r3 == 3 goto .L240
	if r3 == 4 goto .L237
	if r3 == 5 goto .L234
	if r3 == 6 goto .L231
	r3 = r1
	r3 += r5
	r9 = *(u8 *) (r3+0)
	r4 = r5
	r4 += -1
	if r2 == r9 goto .L262
	r0 = r4
.L231:
	r5 = r1
	r5 += r0
	r3 = *(u8 *) (r5+0)
	r9 = r0
	r9 += -1
	if r2 == r3 goto .L262
	r0 = r9
.L234:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	r3 = r0
	r3 += -1
	if r2 == r5 goto .L262
	r0 = r3
.L237:
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	r4 = r0
	r4 += -1
	if r2 == r5 goto .L262
	r0 = r4
.L240:
	r3 = r1
	r3 += r0
	r9 = *(u8 *) (r3+0)
	r5 = r0
	r5 += -1
	if r2 == r9 goto .L262
	r0 = r5
.L243:
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	r9 = r0
	r9 += -1
	if r2 == r3 goto .L262
	r0 = r9
	goto .L222
.L263:
	r1 = 0
.L223:
	r0 = r1
	exit
.L264:
	r0 += -1
.L222:
	if r0 == -1 goto .L263
	r5 = r1
	r5 += r0
	r4 = *(u8 *) (r5+0)
	r3 = r0
	r3 += -1
	if r2 == r4 goto .L262
	r0 = r3
	r9 = r1
	r9 += r3
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L262
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L262
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L262
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L262
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 == r5 goto .L262
	r0 += -1
	r4 = r1
	r4 += r0
	r3 = *(u8 *) (r4+0)
	if r2 == r3 goto .L262
	r0 += -1
	r9 = r1
	r9 += r0
	r5 = *(u8 *) (r9+0)
	if r2 != r5 goto .L264
.L262:
	r1 += r0
	goto .L223
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	r0 = r1
	r1 += r3
	r3 = r0
	r2 &= 0xff
	r4 = r1
	r4 -= r0
	r4 &= 7
	if r4 == 0 goto .L266
	*(u8 *) (r0+0) = r2
	r3 += 1
	if r4 == 1 goto .L266
	if r4 == 2 goto .L279
	if r4 == 3 goto .L277
	if r4 == 4 goto .L275
	if r4 == 5 goto .L273
	if r4 == 6 goto .L271
	*(u8 *) (r3+0) = r2
	r3 += 1
.L271:
	*(u8 *) (r3+0) = r2
	r3 += 1
.L273:
	*(u8 *) (r3+0) = r2
	r3 += 1
.L275:
	*(u8 *) (r3+0) = r2
	r3 += 1
.L277:
	*(u8 *) (r3+0) = r2
	r3 += 1
.L279:
	*(u8 *) (r3+0) = r2
	r3 += 1
	goto .L266
.L267:
	*(u8 *) (r3+0) = r2
	r3 += 1
	*(u8 *) (r3+0) = r2
	*(u8 *) (r3+1) = r2
	*(u8 *) (r3+2) = r2
	*(u8 *) (r3+3) = r2
	*(u8 *) (r3+4) = r2
	*(u8 *) (r3+5) = r2
	*(u8 *) (r3+6) = r2
	r3 += 7
.L266:
	if r3 != r1 goto .L267
	exit
	.size	memset, .-memset
	.align	3
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	r0 = r1
.L291:
	r1 = *(u8 *) (r2+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L300
	r2 += 1
	r0 += 1
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L301
	r0 += 1
	r5 = *(u8 *) (r2+1)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L300
	r0 += 1
	r9 = *(u8 *) (r2+2)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L300
	r0 += 1
	r1 = *(u8 *) (r2+3)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L300
	r0 += 1
	r4 = *(u8 *) (r2+4)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L300
	r0 += 1
	r3 = *(u8 *) (r2+5)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L300
	r0 += 1
	r5 = *(u8 *) (r2+6)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L300
	r2 += 7
	r0 += 1
	goto .L291
.L301:
	exit
.L300:
	exit
	.size	stpcpy, .-stpcpy
	.align	3
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	r0 = r1
	r2 &= 0xff
	goto .L303
.L305:
	r0 += 1
.L303:
	r1 = *(u8 *) (r0+0)
	if r1 == 0 goto .L304
	if r2 != r1 goto .L305
.L304:
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	r2 <<= 32
	r2 s>>= 32
.L308:
	r3 = *(u8 *) (r1+0)
	r3 <<= 56
	r3 s>>= 56
	if r2 == r3 goto .L309
	r1 += 1
	r0 = *(u8 *) (r1+-1)
	if r0 != 0 goto .L308
	exit
.L309:
	r0 = r1
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	goto .L312
.L314:
	r1 += 1
	r2 += 1
.L312:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r3 = *(u8 *) (r2+0)
	r3 <<= 56
	if r3 != r0 goto .L313
	r4 = *(u8 *) (r1+0)
	if r4 != 0 goto .L314
.L313:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
	.size	strcmp, .-strcmp
	.align	3
	.global	strlen
	.type	strlen, @function
strlen:
	r0 = r1
.L316:
	r2 = *(u8 *) (r0+0)
	if r2 == 0 goto .L325
	r0 += 1
	r4 = r0
	r3 = *(u8 *) (r0+0)
	if r3 == 0 goto .L325
	r0 += 1
	r5 = *(u8 *) (r4+1)
	if r5 == 0 goto .L325
	r0 += 1
	r9 = *(u8 *) (r4+2)
	if r9 == 0 goto .L325
	r0 += 1
	r2 = *(u8 *) (r4+3)
	if r2 == 0 goto .L325
	r0 += 1
	r3 = *(u8 *) (r4+4)
	if r3 == 0 goto .L325
	r0 += 1
	r5 = *(u8 *) (r4+5)
	if r5 == 0 goto .L325
	r0 += 1
	r4 = *(u8 *) (r4+6)
	if r4 == 0 goto .L325
	r0 += 1
	goto .L316
.L325:
	r0 -= r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	if r3 == 0 goto .L331
	r3 += -1
	r4 = r1
	r4 += r3
	r0 = r4
	r0 -= r1
	r0 &= 7
	if r0 == 0 goto .L328
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L329
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L329
	r5 = *(u8 *) (r1+0)
	if r5 != r9 goto .L329
	r1 += 1
	r2 += 1
	if r0 == 1 goto .L328
	if r0 == 2 goto .L367
	if r0 == 3 goto .L368
	if r0 == 4 goto .L369
	if r0 == 5 goto .L370
	if r0 == 6 goto .L371
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L329
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L329
	r3 = *(u8 *) (r1+0)
	if r3 != r9 goto .L329
	r1 += 1
	r2 += 1
.L371:
	r5 = *(u8 *) (r1+0)
	if r5 == 0 goto .L329
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L329
	r9 = *(u8 *) (r1+0)
	if r9 != r0 goto .L329
	r1 += 1
	r2 += 1
.L370:
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r0 = *(u8 *) (r1+0)
	if r0 != r5 goto .L329
	r1 += 1
	r2 += 1
.L369:
	r9 = *(u8 *) (r1+0)
	if r9 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r3 = *(u8 *) (r1+0)
	if r3 != r5 goto .L329
	r1 += 1
	r2 += 1
.L368:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L329
	r9 = *(u8 *) (r2+0)
	if r9 == 0 goto .L329
	r5 = *(u8 *) (r1+0)
	if r5 != r9 goto .L329
	r1 += 1
	r2 += 1
.L367:
	r3 = *(u8 *) (r1+0)
	if r3 == 0 goto .L329
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L329
	r9 = *(u8 *) (r1+0)
	if r9 != r0 goto .L329
	r1 += 1
	r2 += 1
.L328:
	r5 = *(u8 *) (r1+0)
	if r5 == 0 goto .L329
	r0 = *(u8 *) (r2+0)
	if r0 == 0 goto .L329
	if r1 == r4 goto .L329
	r3 = *(u8 *) (r1+0)
	if r3 != r0 goto .L329
	r0 = r1
	r0 += 1
	r1 = r0
	r2 += 1
	r9 = *(u8 *) (r0+0)
	if r9 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r9 = *(u8 *) (r0+0)
	if r9 != r5 goto .L329
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+1)
	if r3 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L329
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+2)
	if r3 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L329
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+3)
	if r3 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L329
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+4)
	if r3 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L329
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+5)
	if r3 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L329
	r1 += 1
	r2 += 1
	r3 = *(u8 *) (r0+6)
	if r3 == 0 goto .L329
	r5 = *(u8 *) (r2+0)
	if r5 == 0 goto .L329
	r9 = *(u8 *) (r1+0)
	if r9 != r5 goto .L329
	r0 += 7
	r1 = r0
	r2 += 1
	goto .L328
.L329:
	r0 = *(u8 *) (r1+0)
	r1 = *(u8 *) (r2+0)
	r0 -= r1
	exit
.L331:
	r0 = 0
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	r5 = r1
	r5 += 1
	r4 = r2
	r4 += 1
	r0 = r1
	r1 += r3
	r3 = r1
	r3 -= r0
	r3 >>= 1
	r3 &= 3
	if r3 == 0 goto .L375
	r9 = r1
	r9 -= r0
	if r9 s<= 1 goto .L388
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	if r3 == 1 goto .L375
	if r3 == 2 goto .L386
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
.L386:
	r3 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r3
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r9
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	goto .L375
.L376:
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
	r2 += 2
	r0 += 2
	r5 += 2
	r4 += 2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r2+0) = r9
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r4+0) = r3
	r9 = *(u8 *) (r5+2)
	*(u8 *) (r2+2) = r9
	r3 = *(u8 *) (r0+2)
	*(u8 *) (r4+2) = r3
	r9 = *(u8 *) (r5+4)
	*(u8 *) (r2+4) = r9
	r3 = *(u8 *) (r0+4)
	*(u8 *) (r4+4) = r3
	r2 += 6
	r0 += 6
	r5 += 6
	r4 += 6
.L375:
	r3 = r1
	r3 -= r0
	if r3 s> 1 goto .L376
.L388:
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
	if r2 <= 24 goto .L390
	r0 = 0
.L390:
	r0 &= 1
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 126 goto .L392
	r0 = 0
.L392:
	r0 &= 1
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L395
	r1 ^= 9
	r0 = r1;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L395:
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
	if r1 <= 30 goto .L398
	r0 ^= 127
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	exit
.L398:
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
	if r1 <= 8 goto .L400
	r0 = 0
.L400:
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
	if r1 <= 92 goto .L402
	r0 = 0
.L402:
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
	if r1 <= 24 goto .L404
	r0 = 0
.L404:
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
	if r1 <= 93 goto .L406
	r0 = 0
.L406:
	r0 &= 1
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	r1 <<= 32
	r1 s>>= 32
	if r1 == 32 goto .L410
	r1 += -9
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 3 goto .L409
	r0 = 0
.L409:
	r0 &= 1
	exit
.L410:
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
	if r1 <= 24 goto .L412
	r0 = 0
.L412:
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
	if r1 <= 30 goto .L416
	r1 = r0
	r1 += -127
	r2 = r1;r2 &= 0xffffffff
	if r2 <= 31 goto .L417
	r3 = r0
	r3 += -8232
	r4 = r3;r4 &= 0xffffffff
	if r4 == 0 goto .L418
	r0 += -65529
	r5 = r0;r5 &= 0xffffffff
	r0 = 1
	if r5 <= 1 goto .L415
	r0 = 0
.L415:
	r0 &= 1
	exit
.L416:
	r0 = 1
	exit
.L417:
	r0 = 1
	exit
.L418:
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
	if r1 <= 8 goto .L420
	r0 = 0
.L420:
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
	if r1 <= 254 goto .L429
	r1 = r0;r1 &= 0xffffffff
	if r1 <= 8230 goto .L425
	r2 = r0
	r2 += -8234
	r3 = r2;r3 &= 0xffffffff
	if r3 <= 47060 goto .L426
	r4 = r0
	r4 += -57344
	r5 = r4;r5 &= 0xffffffff
	if r5 <= 8183 goto .L427
	r9 = r0
	r9 += -65532
	r1 = r9;r1 &= 0xffffffff
	if r1 > 1048579 goto .L428
	r0 &= 65534
	r0 ^= 65534
	r0 = -r0
	r0 >>= 63
	exit
.L429:
	r0 += 1
	r0 &= 127
	r2 = 1
	if r0 s> 32 goto .L423
	r2 = 0
.L423:
	r0 = r2
	r0 &= 1
	exit
.L425:
	r0 = 1
	exit
.L426:
	r0 = 1
	exit
.L427:
	r0 = 1
	exit
.L428:
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
	if r2 <= 8 goto .L433
	r1 |= 32
	r1 += -97
	r1 = r1;r1 &= 0xffffffff
	r0 = 1
	if r1 <= 4 goto .L432
	r0 = 0
.L432:
	r0 &= 1
	exit
.L433:
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
	if r0 != 0 goto .L438
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L439
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L442
	r2 = r7
	r1 = r6
	call	__subdf3
	exit
.L438:
	r0 = r6
	exit
.L439:
	r0 = r7
	exit
.L442:
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
	if r0 != 0 goto .L446
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L447
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L450
	r2 = r7
	r1 = r6
	call	__subsf3
	exit
.L446:
	r0 = r6
	exit
.L447:
	r0 = r7
	exit
.L450:
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
	if r0 != 0 goto .L457
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L458
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L453
	if r6 s>= 0 goto .L459
	r0 = r7
	exit
.L453:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L454
	r8 = 0
.L454:
	r8 &= 0xff
	if r8 == 0 goto .L456
	r6 = r7
.L456:
	r0 = r6
	exit
.L457:
	r0 = r7
	exit
.L458:
	r0 = r6
	exit
.L459:
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
	if r0 != 0 goto .L466
	r2 = r7
	r1 = r7
	call	__unordsf2
	if r0 != 0 goto .L467
	r0 = r6
	r0 &= -2147483648
	r0 <<= 32
	r1 = r7
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L462
	r2 = r6
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L468
	r0 = r7
	exit
.L462:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltsf2
	if r0 s<= 0 goto .L463
	r8 = 0
.L463:
	r8 &= 0xff
	if r8 == 0 goto .L465
	r6 = r7
.L465:
	r0 = r6
	exit
.L466:
	r0 = r7
	exit
.L467:
	r0 = r6
	exit
.L468:
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
	if r0 != 0 goto .L475
	r2 = r7
	r1 = r7
	call	__unorddf2
	if r0 != 0 goto .L476
	r1 = r7
	r1 >>= 63
	r0 = r6
	r0 >>= 63
	if r0 == r1 goto .L471
	if r6 s>= 0 goto .L477
	r0 = r7
	exit
.L471:
	r8 = 1
	r2 = r7
	r1 = r6
	call	__ltdf2
	if r0 s<= 0 goto .L472
	r8 = 0
.L472:
	r8 &= 0xff
	if r8 == 0 goto .L474
	r6 = r7
.L474:
	r0 = r6
	exit
.L475:
	r0 = r7
	exit
.L476:
	r0 = r6
	exit
.L477:
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
	if r0 != 0 goto .L484
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L485
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L480
	if r7 s>= 0 goto .L486
	r0 = r7
	exit
.L480:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L481
	r8 = 0
.L481:
	r8 &= 0xff
	if r8 == 0 goto .L483
	r6 = r7
.L483:
	r0 = r6
	exit
.L484:
	r0 = r6
	exit
.L485:
	r0 = r7
	exit
.L486:
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
	if r0 != 0 goto .L493
	r2 = r6
	r1 = r6
	call	__unordsf2
	if r0 != 0 goto .L494
	r0 = r7
	r0 &= -2147483648
	r0 <<= 32
	r1 = r6
	r1 &= -2147483648
	r1 <<= 32
	if r1 == r0 goto .L489
	r2 = r7
	r2 &= -2147483648
	r2 <<= 32
	if r2 == 0 goto .L495
	r0 = r7
	exit
.L489:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltsf2
	if r0 s<= 0 goto .L490
	r8 = 0
.L490:
	r8 &= 0xff
	if r8 == 0 goto .L492
	r6 = r7
.L492:
	r0 = r6
	exit
.L493:
	r0 = r6
	exit
.L494:
	r0 = r7
	exit
.L495:
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
	if r0 != 0 goto .L502
	r2 = r6
	r1 = r6
	call	__unorddf2
	if r0 != 0 goto .L503
	r1 = r6
	r1 >>= 63
	r0 = r7
	r0 >>= 63
	if r0 == r1 goto .L498
	if r7 s>= 0 goto .L504
	r0 = r7
	exit
.L498:
	r8 = 1
	r2 = r6
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L499
	r8 = 0
.L499:
	r8 &= 0xff
	if r8 == 0 goto .L501
	r6 = r7
.L501:
	r0 = r6
	exit
.L502:
	r0 = r6
	exit
.L503:
	r0 = r7
	exit
.L504:
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
	r0 = s.0 ll
	r3 = digits ll
	if r1 == 0 goto .L515
	r4 = r1
	r4 &= 63
	r2 = r3
	r2 += r4
	r5 = *(u8 *) (r2+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r9 = r0
	r1 >>= 6
	if r1 == 0 goto .L515
	r4 = r1
	r4 &= 63
	r0 = r3
	r0 += r4
	r2 = *(u8 *) (r0+0)
	*(u8 *) (r9+0) = r2
	r0 = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L515
	r5 = r1
	r5 &= 63
	r9 = r3
	r9 += r5
	r4 = *(u8 *) (r9+0)
	*(u8 *) (r0+0) = r4
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L515
	r2 = r1
	r2 &= 63
	r5 = r3
	r5 += r2
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r0+0) = r9
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L515
	r2 = r1
	r2 &= 63
	r4 = r3
	r4 += r2
	r5 = *(u8 *) (r4+0)
	*(u8 *) (r0+0) = r5
	r0 += 1
	r1 >>= 6
	if r1 == 0 goto .L515
	r3 += r1
	r1 = *(u8 *) (r3+0)
	*(u8 *) (r0+0) = r1
	r0 += 1
.L515:
	*(u8 *) (r0+0) = 0
	r0 = s.0 ll
	exit
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
	if r2 == 0 goto .L521
	r0 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r0
	*(u64 *) (r1+8) = r2
	*(u64 *) (r2+0) = r1
	r2 = *(u64 *) (r1+0)
	if r2 == 0 goto .L518
	*(u64 *) (r2+8) = r1
.L518:
	exit
.L521:
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
	if r0 == 0 goto .L523
	r2 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r2
.L523:
	r3 = *(u64 *) (r1+8)
	if r3 == 0 goto .L522
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r3+0) = r1
.L522:
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	r1 <<= 32
	r1 s>>= 32
	r0 = r1
	if r1 s< 0 goto .L527
.L526:
	r0 <<= 32
	r0 s>>= 32
	exit
.L527:
	r1 = -r1
	r0 = r1
	goto .L526
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	r6 = r1
.L529:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L547
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L547
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L547
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L547
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L547
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L547
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L547
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L547
	r6 += 1
	goto .L529
.L547:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L536
	if r0 != 45 goto .L537
	r4 = 1
.L531:
	r6 += 1
.L532:
	r1 = r6
	r0 = 0
	r3 = 9
.L533:
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r5 = r2;r5 &= 0xffffffff
	if r3 <= r5 goto .L548
	r9 = r0
	r9 <<= 2
	r0 += r9
	r0 <<= 33
	r0 s>>= 32
	r2 = *(u8 *) (r1+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r1 += 1
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r9 = r5;r9 &= 0xffffffff
	if r3 <= r9 goto .L548
	r2 = r0
	r2 <<= 2
	r0 += r2
	r0 <<= 33
	r0 s>>= 32
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r0 <<= 32
	r0 s>>= 32
	r1 += 1
	goto .L533
.L536:
	r4 = 0
	goto .L531
.L537:
	r4 = 0
	goto .L532
.L548:
	if r4 != 0 goto .L535
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L535:
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	r6 = r1
.L550:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L570
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L570
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L570
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L570
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L570
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L570
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L570
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L570
	r6 += 1
	goto .L550
.L570:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L557
	if r0 != 45 goto .L558
	r4 = 1
.L552:
	r6 += 1
.L553:
	r0 = 0
	r3 = 9
.L554:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r3 <= r1 goto .L571
	r0 *= 10
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L571
	r0 *= 10
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r5 = r6
	r5 += 1
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L571
	r0 *= 10
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r5 += 1
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L571
	r0 *= 10
	r5 = *(u8 *) (r5+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 3
	goto .L554
.L557:
	r4 = 0
	goto .L552
.L558:
	r4 = 0
	goto .L553
.L571:
	if r4 != 0 goto .L556
	r0 = -r0
.L556:
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	r6 = r1
.L573:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L593
	r6 += 1
	r7 = r6
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L593
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L593
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L593
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L593
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L593
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L593
	r6 += 1
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	call	isspace
	r0 <<= 32
	if r0 == 0 goto .L593
	r6 += 1
	goto .L573
.L593:
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L580
	if r0 != 45 goto .L581
	r4 = 1
.L575:
	r6 += 1
.L576:
	r0 = 0
	r3 = 9
.L577:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	r2 += -48
	r1 = r2;r1 &= 0xffffffff
	if r3 <= r1 goto .L594
	r0 *= 10
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 1
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L594
	r0 *= 10
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r5 = r6
	r5 += 1
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L594
	r0 *= 10
	r1 = *(u8 *) (r5+0)
	r1 <<= 56
	r1 s>>= 56
	r1 += -48
	r0 -= r1
	r5 += 1
	r9 = *(u8 *) (r5+0)
	r9 <<= 56
	r9 s>>= 56
	r9 += -48
	r2 = r9;r2 &= 0xffffffff
	if r3 <= r2 goto .L594
	r0 *= 10
	r5 = *(u8 *) (r5+0)
	r5 <<= 56
	r5 s>>= 56
	r5 += -48
	r0 -= r5
	r6 += 3
	goto .L577
.L580:
	r4 = 0
	goto .L575
.L581:
	r4 = 0
	goto .L576
.L594:
	if r4 != 0 goto .L579
	r0 = -r0
.L579:
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
	if r1 s< 0 goto .L598
.L597:
	exit
.L598:
	r0 = -r0
	goto .L597
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
	if r1 s< 0 goto .L602
.L601:
	exit
.L602:
	r0 = -r0
	goto .L601
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
	if r1 s< 0 goto .L606
.L605:
	exit
.L606:
	r0 = -r0
	goto .L605
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
	goto .L609
.L611:
	r1 += 4
.L609:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L610
	r3 = *(u32 *) (r1+0)
	r3 <<= 32
	r3 s>>= 32
	if r2 != r3 goto .L611
.L610:
	r0 = *(u32 *) (r1+0)
	if r0 == 0 goto .L612
	r0 = r1
.L612:
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	goto .L615
.L617:
	r1 += 4
	r2 += 4
.L615:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 != r0 goto .L616
	r4 = *(u32 *) (r1+0)
	if r4 == 0 goto .L616
	r5 = *(u32 *) (r2+0)
	if r5 != 0 goto .L617
.L616:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 s>= r9 goto .L620
	r3 = r0
	r0 = 1
	if r3 s< r9 goto .L619
	r0 = 0
.L619:
	r0 &= 1
	exit
.L620:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	r0 = r1
.L622:
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	if r3 == 0 goto .L638
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r0+0) = r9
	r4 = r0
	r4 += 4
	r5 = r2
	r5 += 4
	if r9 == 0 goto .L638
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L638
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L638
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L638
	r9 = *(u32 *) (r5+0)
	r9 <<= 32
	r9 s>>= 32
	*(u32 *) (r4+0) = r9
	r4 += 4
	r5 += 4
	if r9 == 0 goto .L638
	r3 = *(u32 *) (r5+0)
	r3 <<= 32
	r3 s>>= 32
	*(u32 *) (r4+0) = r3
	r4 += 4
	r5 += 4
	if r3 == 0 goto .L638
	r5 = *(u32 *) (r5+0)
	r5 <<= 32
	r5 s>>= 32
	*(u32 *) (r4+0) = r5
	r0 += 28
	r2 += 28
	if r5 != 0 goto .L622
.L638:
	r0 = r1
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	r0 = r1
.L640:
	r2 = *(u32 *) (r0+0)
	if r2 == 0 goto .L649
	r0 += 4
	r4 = r0
	r3 = *(u32 *) (r0+0)
	if r3 == 0 goto .L649
	r0 += 4
	r5 = *(u32 *) (r4+4)
	if r5 == 0 goto .L649
	r0 += 4
	r9 = *(u32 *) (r4+8)
	if r9 == 0 goto .L649
	r0 += 4
	r2 = *(u32 *) (r4+12)
	if r2 == 0 goto .L649
	r0 += 4
	r3 = *(u32 *) (r4+16)
	if r3 == 0 goto .L649
	r0 += 4
	r5 = *(u32 *) (r4+20)
	if r5 == 0 goto .L649
	r0 += 4
	r4 = *(u32 *) (r4+24)
	if r4 == 0 goto .L649
	r0 += 4
	goto .L640
.L649:
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	r5 = r3
	r5 &= 3
	if r5 == 0 goto .L651
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r0 goto .L652
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L652
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L652
	r3 += -1
	r1 += 4
	r2 += 4
	if r5 == 1 goto .L651
	if r5 == 2 goto .L673
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L652
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L652
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L652
	r3 += -1
	r1 += 4
	r2 += 4
.L673:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L652
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L652
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L652
	r3 += -1
	r1 += 4
	r2 += 4
.L651:
	if r3 == 0 goto .L652
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L652
	r9 = *(u32 *) (r1+0)
	if r9 == 0 goto .L652
	r0 = *(u32 *) (r2+0)
	if r0 == 0 goto .L652
	r3 += -1
	r0 = r1
	r0 += 4
	r1 = r0
	r2 += 4
	r9 = *(u32 *) (r0+0)
	r9 <<= 32
	r6 = *(u32 *) (r2+0)
	r6 <<= 32
	if r6 != r9 goto .L652
	r6 = *(u32 *) (r0+0)
	if r6 == 0 goto .L652
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L652
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L652
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L652
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L652
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L652
	r6 = *(u32 *) (r1+0)
	if r6 == 0 goto .L652
	r6 = *(u32 *) (r2+0)
	if r6 == 0 goto .L652
	r3 += -1
	r0 += 12
	r1 = r0
	r2 += 4
	goto .L651
.L652:
	if r3 == 0 goto .L656
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r0 goto .L657
	r1 = r0
	r0 = 1
	if r3 s< r1 goto .L655
	r0 = 0
.L655:
	r0 &= 1
	exit
.L656:
	r0 = 0
	exit
.L657:
	r0 = -1
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	r2 <<= 32
	r2 s>>= 32
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L677
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L678
	r3 += -1
	r1 += 4
	if r4 == 1 goto .L677
	if r4 == 2 goto .L717
	if r4 == 3 goto .L718
	if r4 == 4 goto .L719
	if r4 == 5 goto .L720
	if r4 == 6 goto .L721
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L678
	r3 += -1
	r1 += 4
.L721:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L678
	r3 += -1
	r1 += 4
.L720:
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L678
	r3 += -1
	r1 += 4
.L719:
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r0 s>>= 32
	if r2 == r0 goto .L678
	r3 += -1
	r1 += 4
.L718:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L678
	r3 += -1
	r1 += 4
.L717:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L678
	r3 += -1
	r1 += 4
.L677:
	if r3 == 0 goto .L678
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L678
	r3 += -1
	r0 = r1
	r0 += 4
	r1 = r0
	r5 = *(u32 *) (r0+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L678
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L678
	r3 += -1
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L678
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L678
	r3 += -1
	r1 += 4
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r4 s>>= 32
	if r2 == r4 goto .L678
	r3 += -1
	r1 += 4
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r9 s>>= 32
	if r2 == r9 goto .L678
	r3 += -1
	r1 += 4
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r5 s>>= 32
	if r2 == r5 goto .L678
	r3 += -1
	r0 += 28
	r1 = r0
	goto .L677
.L678:
	if r3 == 0 goto .L723
	r0 = r1
	exit
.L723:
	r0 = 0
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	r0 = r3
	r0 &= 7
	if r0 == 0 goto .L725
	r4 = *(u32 *) (r1+0)
	r4 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r4 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
	if r0 == 1 goto .L725
	if r0 == 2 goto .L767
	if r0 == 3 goto .L768
	if r0 == 4 goto .L769
	if r0 == 5 goto .L770
	if r0 == 6 goto .L771
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
.L771:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
.L770:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
.L769:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
.L768:
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
.L767:
	r5 = *(u32 *) (r1+0)
	r5 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r5 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
.L725:
	if r3 == 0 goto .L726
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r0 = *(u32 *) (r2+0)
	r0 <<= 32
	if r0 != r9 goto .L726
	r3 += -1
	r1 += 4
	r0 = r2
	r0 += 4
	r2 = r0
	r9 = *(u32 *) (r1+0)
	r9 <<= 32
	r6 = *(u32 *) (r0+0)
	r6 <<= 32
	if r6 != r9 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r5 = *(u32 *) (r2+0)
	r5 <<= 32
	if r5 != r6 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r4 = *(u32 *) (r2+0)
	r4 <<= 32
	if r4 != r6 goto .L726
	r3 += -1
	r1 += 4
	r2 += 4
	r6 = *(u32 *) (r1+0)
	r6 <<= 32
	r9 = *(u32 *) (r2+0)
	r9 <<= 32
	if r9 != r6 goto .L726
	r3 += -1
	r1 += 4
	r0 += 28
	r2 = r0
	goto .L725
.L726:
	if r3 == 0 goto .L730
	r0 = *(u32 *) (r1+0)
	r0 <<= 32
	r3 = *(u32 *) (r2+0)
	r3 <<= 32
	if r3 s>= r0 goto .L731
	r1 = r0
	r0 = 1
	if r3 s< r1 goto .L729
	r0 = 0
.L729:
	r0 &= 1
	exit
.L730:
	r0 = 0
	exit
.L731:
	r0 = -1
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	r0 = r1
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L774
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r0 += 4
	r2 += 4
	if r4 == 1 goto .L774
	if r4 == 2 goto .L797
	if r4 == 3 goto .L798
	if r4 == 4 goto .L799
	if r4 == 5 goto .L800
	if r4 == 6 goto .L801
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L801:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L800:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
.L799:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r9
	r0 += 4
	r2 += 4
.L798:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r0 += 4
	r2 += 4
.L797:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r0 += 4
	r2 += 4
	goto .L774
.L775:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r3
	r0 += 4
	r2 += 4
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r4
	r5 = *(u32 *) (r2+4)
	*(u32 *) (r0+4) = r5
	r3 = *(u32 *) (r2+8)
	*(u32 *) (r0+8) = r3
	r4 = *(u32 *) (r2+12)
	*(u32 *) (r0+12) = r4
	r5 = *(u32 *) (r2+16)
	*(u32 *) (r0+16) = r5
	r3 = *(u32 *) (r2+20)
	*(u32 *) (r0+20) = r3
	r3 = r9
	r3 += -7
	r9 = *(u32 *) (r2+24)
	*(u32 *) (r0+24) = r9
	r0 += 28
	r2 += 28
.L774:
	r9 = r3
	r9 += -1
	if r3 != 0 goto .L775
	r0 = r1
	exit
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	r0 = r1
	if r1 == r2 goto .L804
	r4 = r3
	r4 <<= 2
	r1 -= r2
	if r4 >= r1 goto .L805
	r1 = r0
	r9 = r3
	r9 &= 7
	if r9 == 0 goto .L806
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r0+0) = r5
	r1 += 4
	r2 += 4
	if r9 == 1 goto .L806
	if r9 == 2 goto .L857
	if r9 == 3 goto .L858
	if r9 == 4 goto .L859
	if r9 == 5 goto .L860
	if r9 == 6 goto .L861
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r4
	r1 += 4
	r2 += 4
.L861:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r1 += 4
	r2 += 4
.L860:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r1 += 4
	r2 += 4
.L859:
	r3 += -1
	r4 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r4
	r1 += 4
	r2 += 4
.L858:
	r3 += -1
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r1 += 4
	r2 += 4
.L857:
	r3 += -1
	r5 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r5
	r1 += 4
	r2 += 4
	goto .L806
.L805:
	r1 = r3
	r1 <<= 2
	r3 &= 7
	if r3 == 0 goto .L807
	r1 += -4
	r9 = r2
	r9 += r1
	r4 = r0
	r4 += r1
	r5 = *(u32 *) (r9+0)
	*(u32 *) (r4+0) = r5
	if r3 == 1 goto .L807
	if r3 == 2 goto .L852
	if r3 == 3 goto .L853
	if r3 == 4 goto .L854
	if r3 == 5 goto .L855
	if r3 == 6 goto .L856
	r1 += -4
	r9 = r2
	r9 += r1
	r3 = r0
	r3 += r1
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L856:
	r1 += -4
	r5 = r2
	r5 += r1
	r9 = r0
	r9 += r1
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
.L855:
	r1 += -4
	r4 = r2
	r4 += r1
	r5 = r0
	r5 += r1
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
.L854:
	r1 += -4
	r4 = r2
	r4 += r1
	r3 = r0
	r3 += r1
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r3+0) = r5
.L853:
	r1 += -4
	r9 = r2
	r9 += r1
	r3 = r0
	r3 += r1
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L852:
	r1 += -4
	r5 = r2
	r5 += r1
	r9 = r0
	r9 += r1
	r3 = *(u32 *) (r5+0)
	*(u32 *) (r9+0) = r3
	goto .L807
.L808:
	r4 = r2
	r4 += r9
	r1 = r0
	r1 += r9
	r5 = *(u32 *) (r4+0)
	*(u32 *) (r1+0) = r5
	r3 = r9
	r3 += -4
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -8
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -12
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -16
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -20
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r3 = r9
	r3 += -24
	r1 = r2
	r1 += r3
	r4 = r0
	r4 += r3
	r5 = *(u32 *) (r1+0)
	*(u32 *) (r4+0) = r5
	r1 = r9
	r1 += -28
	r9 = r2
	r9 += r1
	r3 = r0
	r3 += r1
	r4 = *(u32 *) (r9+0)
	*(u32 *) (r3+0) = r4
.L807:
	r9 = r1
	r9 += -4
	if r1 != 0 goto .L808
	exit
.L809:
	r3 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r3
	r1 += 4
	r2 += 4
	r9 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r9
	r5 = *(u32 *) (r2+4)
	*(u32 *) (r1+4) = r5
	r3 = *(u32 *) (r2+8)
	*(u32 *) (r1+8) = r3
	r9 = *(u32 *) (r2+12)
	*(u32 *) (r1+12) = r9
	r5 = *(u32 *) (r2+16)
	*(u32 *) (r1+16) = r5
	r3 = *(u32 *) (r2+20)
	*(u32 *) (r1+20) = r3
	r3 = r4
	r3 += -7
	r4 = *(u32 *) (r2+24)
	*(u32 *) (r1+24) = r4
	r1 += 28
	r2 += 28
.L806:
	r4 = r3
	r4 += -1
	if r3 != 0 goto .L809
.L804:
	exit
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	r2 <<= 32
	r2 s>>= 32
	r0 = r1
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L865
	r3 += -1
	*(u32 *) (r1+0) = r2
	r0 += 4
	if r4 == 1 goto .L865
	if r4 == 2 goto .L888
	if r4 == 3 goto .L889
	if r4 == 4 goto .L890
	if r4 == 5 goto .L891
	if r4 == 6 goto .L892
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L892:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L891:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L890:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L889:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
.L888:
	r3 += -1
	*(u32 *) (r0+0) = r2
	r0 += 4
	goto .L865
.L866:
	*(u32 *) (r0+0) = r2
	r0 += 4
	*(u32 *) (r0+0) = r2
	*(u32 *) (r0+4) = r2
	*(u32 *) (r0+8) = r2
	*(u32 *) (r0+12) = r2
	*(u32 *) (r0+16) = r2
	*(u32 *) (r0+20) = r2
	r3 = r5
	r3 += -7
	*(u32 *) (r0+24) = r2
	r0 += 28
.L865:
	r5 = r3
	r5 += -1
	if r3 != 0 goto .L866
	r0 = r1
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	if r1 >= r2 goto .L895
	r0 = r1
	r0 += r3
	r2 += r3
	r3 &= 7
	if r3 == 0 goto .L896
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
	if r3 == 1 goto .L896
	if r3 == 2 goto .L912
	if r3 == 3 goto .L910
	if r3 == 4 goto .L908
	if r3 == 5 goto .L906
	if r3 == 6 goto .L904
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L904:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L906:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
.L908:
	r0 += -1
	r2 += -1
	r4 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r4
.L910:
	r0 += -1
	r2 += -1
	r3 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r3
.L912:
	r0 += -1
	r2 += -1
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
	goto .L896
.L897:
	r0 += -1
	r2 += -1
	r9 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r9
	r4 = *(u8 *) (r0+-1)
	*(u8 *) (r2+-1) = r4
	r3 = *(u8 *) (r0+-2)
	*(u8 *) (r2+-2) = r3
	r5 = *(u8 *) (r0+-3)
	*(u8 *) (r2+-3) = r5
	r9 = *(u8 *) (r0+-4)
	*(u8 *) (r2+-4) = r9
	r4 = *(u8 *) (r0+-5)
	*(u8 *) (r2+-5) = r4
	r3 = *(u8 *) (r0+-6)
	*(u8 *) (r2+-6) = r3
	r0 += -7
	r2 += -7
	r5 = *(u8 *) (r0+0)
	*(u8 *) (r2+0) = r5
.L896:
	if r0 != r1 goto .L897
	exit
.L895:
	if r1 == r2 goto .L894
	r0 = r2
	r2 += r3
	r3 = r2
	r3 -= r0
	r3 &= 7
	if r3 == 0 goto .L899
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r1 += 1
	r0 += 1
	if r3 == 1 goto .L899
	if r3 == 2 goto .L933
	if r3 == 3 goto .L931
	if r3 == 4 goto .L929
	if r3 == 5 goto .L927
	if r3 == 6 goto .L925
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	r1 += 1
	r0 += 1
.L925:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r9
	r1 += 1
	r0 += 1
.L927:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r3
	r1 += 1
	r0 += 1
.L929:
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r1 += 1
	r0 += 1
.L931:
	r5 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r5
	r1 += 1
	r0 += 1
.L933:
	r9 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r9
	r1 += 1
	r0 += 1
	goto .L899
.L900:
	r3 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r3
	r1 += 1
	r0 += 1
	r4 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r4
	r5 = *(u8 *) (r1+1)
	*(u8 *) (r0+1) = r5
	r9 = *(u8 *) (r1+2)
	*(u8 *) (r0+2) = r9
	r3 = *(u8 *) (r1+3)
	*(u8 *) (r0+3) = r3
	r4 = *(u8 *) (r1+4)
	*(u8 *) (r0+4) = r4
	r5 = *(u8 *) (r1+5)
	*(u8 *) (r0+5) = r5
	r9 = *(u8 *) (r1+6)
	*(u8 *) (r0+6) = r9
	r1 += 7
	r0 += 7
.L899:
	if r0 != r2 goto .L900
.L894:
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
.L959:
	if r0 == 32 goto .L963
	r2 = r1
	r2 >>= r0
	r2 &= 1
	if r2 != 0 goto .L964
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	goto .L959
.L964:
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	exit
.L963:
	r0 = 0
	exit
	.size	ffs, .-ffs
	.align	3
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	r1 <<= 32
	r2 = r1
	r2 s>>= 32
	if r1 == 0 goto .L969
	r0 = 1
.L967:
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L978
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L979
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L966
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r5 = r2
	r5 &= 1
	if r5 != 0 goto .L966
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r9 = r2
	r9 &= 1
	if r9 != 0 goto .L966
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r2
	r1 &= 1
	if r1 != 0 goto .L966
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r3 = r2
	r3 &= 1
	if r3 != 0 goto .L966
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r4 = r2
	r4 &= 1
	if r4 != 0 goto .L966
	r2 s>>= 1
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	goto .L967
.L979:
	exit
.L978:
	exit
.L969:
	r0 = 0
.L966:
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	r6 = r1
	r2 = 0xff7fffff ll
	call	__ltsf2
	if r0 s<= 0 goto .L983
	r7 = 1
	r2 = 0x7f7fffff ll
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L984
.L982:
	r0 = r7
	r0 &= 1
	exit
.L984:
	r7 = 0
	goto .L982
.L983:
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
	if r0 s<= 0 goto .L988
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L989
.L987:
	r0 = r7
	r0 &= 1
	exit
.L989:
	r7 = 0
	goto .L987
.L988:
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
	if r0 s<= 0 goto .L993
	r7 = 1
	r2 = 0x7fefffffffffffff ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L994
.L992:
	r0 = r7
	r0 &= 1
	exit
.L994:
	r7 = 0
	goto .L992
.L993:
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
	if r0 != 0 goto .L997
	r2 = r8
	r1 = r8
	call	__addsf3
	r2 = r0
	r1 = r8
	call	__nesf2
	if r0 == 0 goto .L997
	if r6 s< 0 goto .L1004
	r7 = 0x40000000 ll
	goto .L1001
.L1004:
	r7 = 0x3f000000 ll
	goto .L1001
.L1000:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L997
	r2 = r7
	r1 = r7
	call	__mulsf3
	r7 = r0
.L1001:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1000
	r2 = r7
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1000
.L997:
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
	if r0 != 0 goto .L1006
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1006
	if r6 s< 0 goto .L1013
	r7 = 0x4000000000000000 ll
	goto .L1010
.L1013:
	r7 = 0x3fe0000000000000 ll
	goto .L1010
.L1009:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1006
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1010:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1009
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1009
.L1006:
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
	if r0 != 0 goto .L1015
	r2 = r8
	r1 = r8
	call	__adddf3
	r2 = r0
	r1 = r8
	call	__nedf2
	if r0 == 0 goto .L1015
	if r6 s< 0 goto .L1022
	r7 = 0x4000000000000000 ll
	goto .L1019
.L1022:
	r7 = 0x3fe0000000000000 ll
	goto .L1019
.L1018:
	r1 = r6
	r1 >>= 63
	r1 += r6
	r1 s>>= 1
	r6 = r1
	if r1 == 0 goto .L1015
	r2 = r7
	r1 = r7
	call	__muldf3
	r7 = r0
.L1019:
	r0 = r6
	r0 &= 1
	if r0 == 0 goto .L1018
	r2 = r7
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1018
.L1015:
	r0 = r8
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	r0 = r1
	r4 = r1
	r4 += r3
	r3 = r4
	r3 -= r1
	r3 &= 3
	if r3 == 0 goto .L1024
	r9 = *(u8 *) (r2+0)
	r5 = *(u8 *) (r1+0)
	r5 ^= r9
	*(u8 *) (r1+0) = r5
	r2 += 1
	r0 += 1
	if r3 == 1 goto .L1024
	if r3 == 2 goto .L1029
	r9 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r9
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
.L1029:
	r5 = *(u8 *) (r2+0)
	r9 = *(u8 *) (r0+0)
	r9 ^= r5
	*(u8 *) (r0+0) = r9
	r2 += 1
	r0 += 1
	goto .L1024
.L1025:
	r5 = *(u8 *) (r2+0)
	r3 = *(u8 *) (r0+0)
	r3 ^= r5
	*(u8 *) (r0+0) = r3
	r2 += 1
	r0 += 1
	r9 = *(u8 *) (r2+0)
	r5 = *(u8 *) (r0+0)
	r5 ^= r9
	*(u8 *) (r0+0) = r5
	r5 = r0
	r5 += 1
	r9 = *(u8 *) (r2+1)
	r3 = *(u8 *) (r5+0)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r5 += 1
	r9 = *(u8 *) (r2+2)
	r3 = *(u8 *) (r5+0)
	r3 ^= r9
	*(u8 *) (r5+0) = r3
	r2 += 3
	r0 += 3
.L1024:
	if r0 != r4 goto .L1025
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
	r2 = r7
	r2 &= 7
	if r2 == 0 goto .L1037
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1038
	r6 += 1
	r0 += 1
	r7 += -1
	if r2 == 1 goto .L1037
	if r2 == 2 goto .L1076
	if r2 == 3 goto .L1077
	if r2 == 4 goto .L1078
	if r2 == 5 goto .L1079
	if r2 == 6 goto .L1080
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1038
	r6 += 1
	r0 += 1
	r7 += -1
.L1080:
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1038
	r6 += 1
	r0 += 1
	r7 += -1
.L1079:
	r9 = *(u8 *) (r6+0)
	r9 <<= 56
	r9 s>>= 56
	*(u8 *) (r0+0) = r9
	if r9 == 0 goto .L1038
	r6 += 1
	r0 += 1
	r7 += -1
.L1078:
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1038
	r6 += 1
	r0 += 1
	r7 += -1
.L1077:
	r2 = *(u8 *) (r6+0)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1038
	r6 += 1
	r0 += 1
	r7 += -1
.L1076:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1038
	r6 += 1
	r0 += 1
	r7 += -1
.L1037:
	if r7 == 0 goto .L1038
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1038
	r6 += 1
	r0 += 1
	r9 = r7
	r9 += -1
	r7 = r9
	r1 = *(u8 *) (r6+0)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1038
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+1)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1038
	r0 += 1
	r7 += -1
	r3 = *(u8 *) (r6+2)
	r3 <<= 56
	r3 s>>= 56
	*(u8 *) (r0+0) = r3
	if r3 == 0 goto .L1038
	r0 += 1
	r7 += -1
	r4 = *(u8 *) (r6+3)
	r4 <<= 56
	r4 s>>= 56
	*(u8 *) (r0+0) = r4
	if r4 == 0 goto .L1038
	r0 += 1
	r7 += -1
	r5 = *(u8 *) (r6+4)
	r5 <<= 56
	r5 s>>= 56
	*(u8 *) (r0+0) = r5
	if r5 == 0 goto .L1038
	r0 += 1
	r7 += -1
	r1 = *(u8 *) (r6+5)
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	if r1 == 0 goto .L1038
	r0 += 1
	r7 += -1
	r2 = *(u8 *) (r6+6)
	r2 <<= 56
	r2 s>>= 56
	*(u8 *) (r0+0) = r2
	if r2 == 0 goto .L1038
	r6 += 7
	r0 += 1
	r9 += -7
	r7 = r9
	goto .L1037
.L1038:
	if r7 != 0 goto .L1040
	*(u8 *) (r0+0) = 0
.L1040:
	r0 = r8
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	r0 = 0
	r3 = r2
	r3 &= 7
	if r3 == r0 goto .L1083
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 != 0 goto .L1127
.L1084:
	exit
.L1127:
	r0 += 1
	if r3 == 1 goto .L1083
	if r3 == 2 goto .L1121
	if r3 == 3 goto .L1122
	if r3 == 4 goto .L1123
	if r3 == 5 goto .L1124
	if r3 == 6 goto .L1125
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1084
	r0 += 1
.L1125:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1084
	r0 += 1
.L1124:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1084
	r0 += 1
.L1123:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1084
	r0 += 1
.L1122:
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1084
	r0 += 1
.L1121:
	r4 = r1
	r4 += r0
	r5 = *(u8 *) (r4+0)
	if r5 == 0 goto .L1084
	r0 += 1
.L1083:
	if r0 == r2 goto .L1084
	r9 = r1
	r9 += r0
	r3 = *(u8 *) (r9+0)
	if r3 == 0 goto .L1084
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1084
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1084
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1084
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1084
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1084
	r0 += 1
	r3 = r1
	r3 += r0
	r5 = *(u8 *) (r3+0)
	if r5 == 0 goto .L1084
	r0 += 1
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r4+0)
	if r9 == 0 goto .L1084
	r0 += 1
	goto .L1083
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L1129:
	r0 = *(u8 *) (r1+0)
	if r0 == 0 goto .L1134
	r3 = r2
.L1132:
	r4 = *(u8 *) (r3+0)
	if r4 == 0 goto .L1135
	r9 = *(u8 *) (r3+0)
	r9 <<= 56
	r5 = *(u8 *) (r1+0)
	r5 <<= 56
	r3 += 1
	if r5 != r9 goto .L1132
	r0 = r1
	exit
.L1135:
	r1 += 1
	goto .L1129
.L1134:
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
	goto .L1138
.L1137:
	r1 += 1
	r4 = *(u8 *) (r1+-1)
	if r4 == 0 goto .L1141
.L1138:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	if r2 != r0 goto .L1137
	r3 = r1
	goto .L1137
.L1141:
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
	if r0 == 0 goto .L1146
	r0 = *(u8 *) (r7+0)
	r0 <<= 56
	r0 s>>= 56
	*(u64 *) (r10+-8) = r0
	r1 = r6
.L1144:
	r2 = *(u32 *) (r10+-8)
	call	strchr
	r6 = r0
	if r0 == 0 goto .L1148
	r3 = r8
	r2 = r7
	r1 = r6
	call	strncmp
	r0 <<= 32
	if r0 == 0 goto .L1147
	r1 = r6
	r1 += 1
	goto .L1144
.L1148:
	r0 = 0
	exit
.L1146:
	r0 = r6
	exit
.L1147:
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
	if r0 s<= 0 goto .L1162
.L1150:
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1160
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__ltdf2
	if r0 s<= 0 goto .L1152
	r0 = r6
	exit
.L1162:
	r2 = 0x0000000000000000 ll
	r1 = r7
	call	__gtdf2
	if r0 s<= 0 goto .L1150
.L1152:
	r1 = -9223372036854775808 ll
	r0 = r6
	r0 ^= r1
	exit
.L1160:
	r0 = r6
	exit
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	r6 = r1
	r7 = r3
	r0 = r2
	r0 -= r4
	r1 += r0
	*(u64 *) (r10+-8) = r1
	if r4 == 0 goto .L1169
	r3 = 1
	if r4 >= r2 goto .L1165
	r3 = 0
.L1165:
	r3 &= 0xff
	if r3 != 0 goto .L1170
	r4 += -1
	*(u64 *) (r10+-16) = r4
	r2 = r7
	r2 += 1
	*(u64 *) (r10+-24) = r2
	r8 = *(u64 *) (r10+-8)
	r8 -= r6
	r8 &= 3
	if r8 == 0 goto .L1166
	r4 = *(u64 *) (r10+-8)
	if r4 <= r6 goto .L1189
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 == r5 goto .L1190
.L1173:
	r6 += 1
	if r8 == 1 goto .L1166
	if r8 == 2 goto .L1177
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 == r0 goto .L1191
.L1175:
	r6 += 1
.L1177:
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r2 = *(u8 *) (r7+0)
	r2 <<= 56
	if r2 == r3 goto .L1192
.L1178:
	r6 += 1
	goto .L1166
.L1193:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1167
.L1171:
	r0 = r6
	exit
.L1189:
	r0 = 0
	exit
.L1169:
	r0 = r6
	exit
.L1170:
	r0 = 0
	exit
.L1190:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1173
	goto .L1171
.L1191:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1175
	goto .L1171
.L1192:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1178
	goto .L1171
.L1194:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1182
	goto .L1171
.L1195:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1184
	goto .L1171
.L1186:
	r6 = r8
	r6 += 3
.L1166:
	r4 = *(u64 *) (r10+-8)
	if r4 <= r6 goto .L1189
	r5 = *(u8 *) (r6+0)
	r5 <<= 56
	r9 = *(u8 *) (r7+0)
	r9 <<= 56
	if r9 == r5 goto .L1193
.L1167:
	r6 += 1
	r8 = r6
	r0 = *(u8 *) (r6+0)
	r0 <<= 56
	r1 = *(u8 *) (r7+0)
	r1 <<= 56
	if r1 == r0 goto .L1194
.L1182:
	r6 = r8
	r6 += 1
	r3 = *(u8 *) (r6+0)
	r3 <<= 56
	r2 = *(u8 *) (r7+0)
	r2 <<= 56
	if r2 == r3 goto .L1195
.L1184:
	r6 = r8
	r6 += 2
	r4 = *(u8 *) (r6+0)
	r4 <<= 56
	r5 = *(u8 *) (r7+0)
	r5 <<= 56
	if r5 != r4 goto .L1186
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-24)
	r1 = r6
	r1 += 1
	call	memcmp
	r0 <<= 32
	if r0 != 0 goto .L1186
	goto .L1171
	.size	memmem, .-memmem
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	r6 = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	call	__ltdf2
	if r0 s<= 0 goto .L1222
	*(u64 *) (r10+-8) = 0
.L1197:
	r2 = 0x3ff0000000000000 ll
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1223
	r7 = 0
	r8 = 0x3ff0000000000000 ll
.L1199:
	r2 = r8
	r1 = r6
	call	__gedf2
	if r0 s< 0 goto .L1202
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = r8
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1202
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = r8
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1202
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	r2 = r8
	r1 = r0
	call	__gedf2
	if r0 s< 0 goto .L1202
	r7 += 1
	r7 <<= 32
	r7 s>>= 32
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__muldf3
	r6 = r0
	goto .L1199
.L1222:
	r0 = -9223372036854775808 ll
	r0 ^= r6
	r6 = r0
	*(u64 *) (r10+-8) = 1
	goto .L1197
.L1223:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r0 s> 0 goto .L1221
	r2 = 0x0000000000000000 ll
	r1 = r6
	call	__nedf2
	if r0 != 0 goto .L1210
	r7 = 0
	goto .L1202
.L1210:
	r7 = 0
	r8 = r7
	goto .L1204
.L1221:
	r7 = 0
.L1202:
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r7
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1206
	r3 = -9223372036854775808 ll
	r3 ^= r6
	r6 = r3
.L1206:
	r0 = r6
	exit
.L1224:
	r7 += -1
	r7 <<= 32
	r7 s>>= 32
	r2 = r6
	r1 = r6
	call	__adddf3
	r6 = r0
.L1204:
	r2 = 0x3fe0000000000000 ll
	r1 = r6
	call	__ltdf2
	if r8 s< r0 goto .L1202
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
	if r8 s< r0 goto .L1202
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
	if r8 s< r0 goto .L1202
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
	if r8 s>= r0 goto .L1224
	goto .L1202
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	r0 = 0
.L1226:
	if r1 == 0 goto .L1235
	r3 = r1
	r3 &= 1
	r3 = -r3
	r4 = r2
	r4 &= r3
	r2 += r2
	r1 >>= 1
	r0 += r4
	if r1 == 0 goto .L1236
	r5 = r1
	r5 &= 1
	r5 = -r5
	r9 = r2
	r9 &= r5
	r2 += r2
	r1 >>= 1
	r0 += r9
	if r1 == 0 goto .L1235
	r3 = r1
	r3 &= 1
	r3 = -r3
	r4 = r2
	r4 &= r3
	r2 += r2
	r1 >>= 1
	r0 += r4
	if r1 == 0 goto .L1235
	r5 = r1
	r5 &= 1
	r5 = -r5
	r9 = r2
	r9 &= r5
	r2 += r2
	r1 >>= 1
	r0 += r9
	if r1 == 0 goto .L1235
	r3 = r1
	r3 &= 1
	r3 = -r3
	r4 = r2
	r4 &= r3
	r2 += r2
	r1 >>= 1
	r0 += r4
	if r1 == 0 goto .L1235
	r5 = r1
	r5 &= 1
	r5 = -r5
	r9 = r2
	r9 &= r5
	r2 += r2
	r1 >>= 1
	r0 += r9
	if r1 == 0 goto .L1235
	r3 = r1
	r3 &= 1
	r3 = -r3
	r4 = r2
	r4 &= r3
	r2 += r2
	r1 >>= 1
	r0 += r4
	if r1 == 0 goto .L1235
	r5 = r1
	r5 &= 1
	r5 = -r5
	r9 = r2
	r9 &= r5
	r2 += r2
	r1 >>= 1
	r0 += r9
	goto .L1226
.L1236:
	exit
.L1235:
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r5 = 33
	r4 = 1
	goto .L1238
.L1245:
	r0 = 0
	goto .L1241
.L1246:
	r0 = 0
	goto .L1241
.L1242:
	r4 >>= 1
	r2 >>= 1
.L1241:
	if r4 == 0 goto .L1264
	if r2 >= r1 goto .L1242
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
	goto .L1242
.L1264:
	if r3 != 0 goto .L1265
.L1244:
	exit
.L1265:
	r0 = r1
	goto .L1244
.L1266:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
.L1238:
	if r2 >= r1 goto .L1245
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	if r5 == 0 goto .L1246
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1263
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1245
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1263
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1245
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1263
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1245
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1263
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1245
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1263
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1245
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1263
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1245
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1263
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1245
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1266
.L1263:
	r0 = 0
	goto .L1241
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
	if r1 == r2 goto .L1269
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
.L1269:
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
	if r2 == r0 goto .L1272
	call	__clzdi2
	r0 <<= 32
	r1 = -4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1272:
	r0 = 63
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	r1 = r1;r1 &= 0xffffffff
	r4 = r2;r4 &= 0xffffffff
	r0 = 0
.L1274:
	if r1 == 0 goto .L1279
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	r0 = r3;r0 &= 0xffffffff
	if r1 == 0 goto .L1280
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r4 += r0
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	r0 = r4;r0 &= 0xffffffff
	if r1 == 0 goto .L1279
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	r0 = r9;r0 &= 0xffffffff
	if r1 == 0 goto .L1279
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r3 += r0
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	r0 = r3;r0 &= 0xffffffff
	goto .L1274
.L1280:
	exit
.L1279:
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	r3 = r3;r3 &= 0xffffffff
	r6 = r3
	r6 >>= 3
	r0 = r3
	r0 &= -8
	r0 = r0;r0 &= 0xffffffff
	if r2 >= r1 goto .L1282
	r4 = r2
	r4 += r3
	if r4 < r1 goto .L1282
	r0 = 4294967295 ll
	r9 = r0
	r9 -= r3
	r9 ^= -1
	r9 &= 7
	if r9 == 0 goto .L1283
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r6 = r2
	r6 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r6
	if r9 == 1 goto .L1283
	if r9 == 2 goto .L1359
	if r9 == 3 goto .L1360
	if r9 == 4 goto .L1361
	if r9 == 5 goto .L1362
	if r9 == 6 goto .L1363
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1363:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1362:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1361:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1360:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1359:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1283:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	if r3 == r0 goto .L1281
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	goto .L1283
.L1282:
	r4 = r2
	r5 = r1
	r6 <<= 3
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 3
	r9 &= 7
	if r9 == 0 goto .L1284
	r7 = *(u64 *) (r2+0)
	*(u64 *) (r1+0) = r7
	r4 += 8
	r5 += 8
	if r9 == 1 goto .L1284
	if r9 == 2 goto .L1323
	if r9 == 3 goto .L1321
	if r9 == 4 goto .L1319
	if r9 == 5 goto .L1317
	if r9 == 6 goto .L1315
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1315:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1317:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1319:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
.L1321:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
.L1323:
	r7 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r7
	r4 += 8
	r5 += 8
	goto .L1284
.L1285:
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r4 += 8
	r5 += 8
	r9 = *(u64 *) (r4+0)
	*(u64 *) (r5+0) = r9
	r9 = *(u64 *) (r4+8)
	*(u64 *) (r5+8) = r9
	r9 = *(u64 *) (r4+16)
	*(u64 *) (r5+16) = r9
	r9 = *(u64 *) (r4+24)
	*(u64 *) (r5+24) = r9
	r9 = *(u64 *) (r4+32)
	*(u64 *) (r5+32) = r9
	r9 = *(u64 *) (r4+40)
	*(u64 *) (r5+40) = r9
	r9 = *(u64 *) (r4+48)
	*(u64 *) (r5+48) = r9
	r4 += 56
	r5 += 56
.L1284:
	if r4 != r6 goto .L1285
	r4 = r3
	r4 &= 7
	if r4 == 0 goto .L1286
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1281
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1286
	if r4 == 2 goto .L1354
	if r4 == 3 goto .L1355
	if r4 == 4 goto .L1356
	if r4 == 5 goto .L1357
	if r4 == 6 goto .L1358
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1358:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1357:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1356:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1355:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1354:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1286
.L1287:
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r5 = r2
	r5 += r0
	r6 = r1
	r6 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r6+0) = r4
	r9 = r0
	r9 += 1
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 2
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 3
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 4
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 5
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 6
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r0 += 7
.L1286:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1287
	exit
.L1281:
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	r3 = r3;r3 &= 0xffffffff
	r9 = r3
	r9 >>= 1
	if r2 >= r1 goto .L1368
	r0 = r2
	r0 += r3
	if r0 < r1 goto .L1368
	r0 = 4294967295 ll
	r4 = r0
	r4 -= r3
	r4 ^= -1
	r4 &= 7
	if r4 == 0 goto .L1369
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r9+0)
	*(u8 *) (r5+0) = r6
	if r4 == 1 goto .L1369
	if r4 == 2 goto .L1417
	if r4 == 3 goto .L1418
	if r4 == 4 goto .L1419
	if r4 == 5 goto .L1420
	if r4 == 6 goto .L1421
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1421:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1420:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1419:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1418:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1417:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1369:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	if r3 == r0 goto .L1367
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	goto .L1369
.L1368:
	r0 = r2
	r4 = r1
	r9 += r9
	r9 += r2
	r5 = r9
	r5 -= r2
	r5 >>= 1
	r5 &= 7
	if r5 == 0 goto .L1370
	r6 = *(u16 *) (r2+0)
	*(u16 *) (r1+0) = r6
	r0 += 2
	r4 += 2
	if r5 == 1 goto .L1370
	if r5 == 2 goto .L1386
	if r5 == 3 goto .L1384
	if r5 == 4 goto .L1382
	if r5 == 5 goto .L1380
	if r5 == 6 goto .L1378
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1378:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1380:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1382:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1384:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
.L1386:
	r5 = *(u16 *) (r0+0)
	*(u16 *) (r4+0) = r5
	r0 += 2
	r4 += 2
	goto .L1370
.L1371:
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
.L1370:
	if r0 != r9 goto .L1371
	r0 = r3
	r0 &= 1
	if r0 == 0 goto .L1367
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r2 += r3
	r1 += r3
	r2 = *(u8 *) (r2+0)
	*(u8 *) (r1+0) = r2
	exit
.L1367:
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	r3 = r3;r3 &= 0xffffffff
	r6 = r3
	r6 >>= 2
	r0 = r3
	r0 &= -4
	r0 = r0;r0 &= 0xffffffff
	if r2 >= r1 goto .L1425
	r4 = r2
	r4 += r3
	if r4 < r1 goto .L1425
	r0 = 4294967295 ll
	r9 = r0
	r9 -= r3
	r9 ^= -1
	r9 &= 7
	if r9 == 0 goto .L1426
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r6 = r2
	r6 += r3
	r5 = r1
	r5 += r3
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r6
	if r9 == 1 goto .L1426
	if r9 == 2 goto .L1502
	if r9 == 3 goto .L1503
	if r9 == 4 goto .L1504
	if r9 == 5 goto .L1505
	if r9 == 6 goto .L1506
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1506:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1505:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1504:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1503:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1502:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
.L1426:
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	if r3 == r0 goto .L1424
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	r3 += -1
	r3 = r3;r3 &= 0xffffffff
	r9 = r2
	r9 += r3
	r4 = r1
	r4 += r3
	r5 = *(u8 *) (r9+0)
	*(u8 *) (r4+0) = r5
	goto .L1426
.L1425:
	r4 = r2
	r5 = r1
	r6 <<= 2
	r6 += r2
	r9 = r6
	r9 -= r2
	r9 >>= 2
	r9 &= 7
	if r9 == 0 goto .L1427
	r7 = *(u32 *) (r2+0)
	*(u32 *) (r1+0) = r7
	r4 += 4
	r5 += 4
	if r9 == 1 goto .L1427
	if r9 == 2 goto .L1466
	if r9 == 3 goto .L1464
	if r9 == 4 goto .L1462
	if r9 == 5 goto .L1460
	if r9 == 6 goto .L1458
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1458:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1460:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1462:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
.L1464:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
.L1466:
	r7 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r7
	r4 += 4
	r5 += 4
	goto .L1427
.L1428:
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r4 += 4
	r5 += 4
	r9 = *(u32 *) (r4+0)
	*(u32 *) (r5+0) = r9
	r9 = *(u32 *) (r4+4)
	*(u32 *) (r5+4) = r9
	r9 = *(u32 *) (r4+8)
	*(u32 *) (r5+8) = r9
	r9 = *(u32 *) (r4+12)
	*(u32 *) (r5+12) = r9
	r9 = *(u32 *) (r4+16)
	*(u32 *) (r5+16) = r9
	r9 = *(u32 *) (r4+20)
	*(u32 *) (r5+20) = r9
	r9 = *(u32 *) (r4+24)
	*(u32 *) (r5+24) = r9
	r4 += 28
	r5 += 28
.L1427:
	if r4 != r6 goto .L1428
	r4 = r3
	r4 -= r0
	r4 &= 7
	if r4 == 0 goto .L1429
	r5 = r0;r5 &= 0xffffffff
	if r3 <= r5 goto .L1424
	r6 = r2
	r6 += r0
	r9 = r1
	r9 += r0
	r6 = *(u8 *) (r6+0)
	*(u8 *) (r9+0) = r6
	r0 += 1
	if r4 == 1 goto .L1429
	if r4 == 2 goto .L1497
	if r4 == 3 goto .L1498
	if r4 == 4 goto .L1499
	if r4 == 5 goto .L1500
	if r4 == 6 goto .L1501
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1501:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1500:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1499:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1498:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
.L1497:
	r5 = r2
	r5 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r5+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	goto .L1429
.L1430:
	r6 = r2
	r6 += r0
	r4 = r1
	r4 += r0
	r9 = *(u8 *) (r6+0)
	*(u8 *) (r4+0) = r9
	r0 += 1
	r5 = r2
	r5 += r0
	r6 = r1
	r6 += r0
	r4 = *(u8 *) (r5+0)
	*(u8 *) (r6+0) = r4
	r9 = r0
	r9 += 1
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 2
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 3
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 4
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 5
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r9 = r0
	r9 += 6
	r6 = r2
	r6 += r9
	r5 = r1
	r5 += r9
	r4 = *(u8 *) (r6+0)
	*(u8 *) (r5+0) = r4
	r0 += 7
.L1429:
	r5 = r0;r5 &= 0xffffffff
	if r3 > r5 goto .L1430
	exit
.L1424:
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
	if r0 != 0 goto .L1518
	r2 = r1
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1519
	r3 = r1
	r3 >>= 13
	r3 &= 1
	if r3 != 0 goto .L1520
	r4 = r1
	r4 >>= 12
	r4 &= 1
	if r4 != 0 goto .L1521
	r5 = r1
	r5 >>= 11
	r5 &= 1
	if r5 != 0 goto .L1522
	r9 = r1
	r9 >>= 10
	r9 &= 1
	if r9 != 0 goto .L1523
	r0 = r1
	r0 >>= 9
	r0 &= 1
	if r0 != 0 goto .L1524
	r2 = r1
	r2 >>= 8
	r2 &= 1
	if r2 != 0 goto .L1525
	r3 = r1
	r3 >>= 7
	r3 &= 1
	if r3 != 0 goto .L1526
	r4 = r1
	r4 >>= 6
	r4 &= 1
	if r4 != 0 goto .L1527
	r5 = r1
	r5 >>= 5
	r5 &= 1
	if r5 != 0 goto .L1528
	r9 = r1
	r9 >>= 4
	r9 &= 1
	if r9 != 0 goto .L1529
	r0 = r1
	r0 >>= 3
	r0 &= 1
	if r0 != 0 goto .L1530
	r2 = r1
	r2 >>= 2
	r2 &= 1
	if r2 != 0 goto .L1531
	r3 = r1
	r3 >>= 1
	r3 &= 1
	if r3 != 0 goto .L1532
	r1 &= 1
	r0 = 16
	r0 -= r1
	exit
.L1518:
	r0 = 0
	exit
.L1519:
	r0 = 1
	exit
.L1520:
	r0 = 2
	exit
.L1521:
	r0 = 3
	exit
.L1522:
	r0 = 4
	exit
.L1523:
	r0 = 5
	exit
.L1524:
	r0 = 6
	exit
.L1525:
	r0 = 7
	exit
.L1526:
	r0 = 8
	exit
.L1527:
	r0 = 9
	exit
.L1528:
	r0 = 10
	exit
.L1529:
	r0 = 11
	exit
.L1530:
	r0 = 12
	exit
.L1531:
	r0 = 13
	exit
.L1532:
	r0 = 14
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	r0 = r1;r0 &= 0xffff
	r1 &= 1
	if r1 != 0 goto .L1535
	r1 = r0
	r1 >>= 1
	r1 &= 1
	if r1 != 0 goto .L1536
	r2 = r0
	r2 >>= 2
	r2 &= 1
	if r2 != 0 goto .L1537
	r3 = r0
	r3 >>= 3
	r3 &= 1
	if r3 != 0 goto .L1538
	r4 = r0
	r4 >>= 4
	r4 &= 1
	if r4 != 0 goto .L1539
	r5 = r0
	r5 >>= 5
	r5 &= 1
	if r5 != 0 goto .L1540
	r9 = r0
	r9 >>= 6
	r9 &= 1
	if r9 != 0 goto .L1541
	r1 = r0
	r1 >>= 7
	r1 &= 1
	if r1 != 0 goto .L1542
	r2 = r0
	r2 >>= 8
	r2 &= 1
	if r2 != 0 goto .L1543
	r3 = r0
	r3 >>= 9
	r3 &= 1
	if r3 != 0 goto .L1544
	r4 = r0
	r4 >>= 10
	r4 &= 1
	if r4 != 0 goto .L1545
	r5 = r0
	r5 >>= 11
	r5 &= 1
	if r5 != 0 goto .L1546
	r9 = r0
	r9 >>= 12
	r9 &= 1
	if r9 != 0 goto .L1547
	r1 = r0
	r1 >>= 13
	r1 &= 1
	if r1 != 0 goto .L1548
	r2 = r0
	r2 >>= 14
	r2 &= 1
	if r2 != 0 goto .L1549
	r0 >>= 15
	r3 = 16
	r3 -= r0
	r0 = r3
	r0 <<= 32
	r0 s>>= 32
	exit
.L1535:
	r0 = 0
	exit
.L1536:
	r0 = 1
	exit
.L1537:
	r0 = 2
	exit
.L1538:
	r0 = 3
	exit
.L1539:
	r0 = 4
	exit
.L1540:
	r0 = 5
	exit
.L1541:
	r0 = 6
	exit
.L1542:
	r0 = 7
	exit
.L1543:
	r0 = 8
	exit
.L1544:
	r0 = 9
	exit
.L1545:
	r0 = 10
	exit
.L1546:
	r0 = 11
	exit
.L1547:
	r0 = 12
	exit
.L1548:
	r0 = 13
	exit
.L1549:
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
	if r0 s>= 0 goto .L1556
	r1 = r6
	call	__fixsfdi
	exit
.L1556:
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
	r2 = r1;r2 &= 0xffff
	r0 = r1
	r0 &= 1
	r1 = r2
	r1 >>= 1
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 2
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 3
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 4
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 >>= 5
	r9 &= 1
	r0 += r9
	r1 = r2
	r1 >>= 6
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 7
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 8
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 9
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 >>= 10
	r9 &= 1
	r0 += r9
	r1 = r2
	r1 >>= 11
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 12
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 13
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 14
	r5 &= 1
	r0 += r5
	r2 >>= 15
	r0 += r2
	r0 &= 1
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	r2 = r1;r2 &= 0xffff
	r0 = r1
	r0 &= 1
	r1 = r2
	r1 >>= 1
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 2
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 3
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 4
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 >>= 5
	r9 &= 1
	r0 += r9
	r1 = r2
	r1 >>= 6
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 7
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 8
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 9
	r5 &= 1
	r0 += r5
	r9 = r2
	r9 >>= 10
	r9 &= 1
	r0 += r9
	r1 = r2
	r1 >>= 11
	r1 &= 1
	r0 += r1
	r3 = r2
	r3 >>= 12
	r3 &= 1
	r0 += r3
	r4 = r2
	r4 >>= 13
	r4 &= 1
	r0 += r4
	r5 = r2
	r5 >>= 14
	r5 &= 1
	r0 += r5
	r2 >>= 15
	r0 += r2
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
	r0 = 0
.L1560:
	if r1 == 0 goto .L1565
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r1 >>= 1
	r4 += r4
	r2 = r4;r2 &= 0xffffffff
	r0 = r3;r0 &= 0xffffffff
	if r1 == 0 goto .L1566
	r4 = r1
	r4 &= 1
	r4 = -r4
	r4 &= r2
	r4 += r0
	r1 >>= 1
	r2 += r2
	r5 = r2;r5 &= 0xffffffff
	r0 = r4;r0 &= 0xffffffff
	if r1 == 0 goto .L1565
	r9 = r1
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r1 >>= 1
	r5 += r5
	r2 = r5;r2 &= 0xffffffff
	r0 = r9;r0 &= 0xffffffff
	if r1 == 0 goto .L1565
	r3 = r1
	r3 &= 1
	r3 = -r3
	r3 &= r2
	r3 += r0
	r1 >>= 1
	r2 += r2
	r4 = r2;r4 &= 0xffffffff
	r0 = r3;r0 &= 0xffffffff
	goto .L1560
.L1566:
	exit
.L1565:
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	r4 = r1;r4 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r4 == 0 goto .L1571
	r0 = 0
.L1569:
	if r2 == 0 goto .L1576
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r4
	r3 += r0
	r4 += r4
	r1 = r4;r1 &= 0xffffffff
	r2 >>= 1
	r0 = r3;r0 &= 0xffffffff
	if r2 == 0 goto .L1577
	r4 = r2
	r4 &= 1
	r4 = -r4
	r4 &= r1
	r4 += r0
	r1 += r1
	r5 = r1;r5 &= 0xffffffff
	r2 >>= 1
	r0 = r4;r0 &= 0xffffffff
	if r2 == 0 goto .L1568
	r9 = r2
	r9 &= 1
	r9 = -r9
	r9 &= r5
	r9 += r0
	r5 += r5
	r1 = r5;r1 &= 0xffffffff
	r2 >>= 1
	r0 = r9;r0 &= 0xffffffff
	if r2 == 0 goto .L1568
	r3 = r2
	r3 &= 1
	r3 = -r3
	r3 &= r1
	r3 += r0
	r1 += r1
	r4 = r1;r4 &= 0xffffffff
	r2 >>= 1
	r0 = r3;r0 &= 0xffffffff
	goto .L1569
.L1577:
	exit
.L1576:
	exit
.L1571:
	r0 = 0
.L1568:
	exit
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	3
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	r3 <<= 32
	r3 s>>= 32
	r5 = 33
	r4 = 1
	goto .L1579
.L1586:
	r0 = 0
	goto .L1582
.L1587:
	r0 = 0
	goto .L1582
.L1583:
	r4 >>= 1
	r2 >>= 1
.L1582:
	if r4 == 0 goto .L1605
	if r2 >= r1 goto .L1583
	r1 -= r2
	r1 = r1;r1 &= 0xffffffff
	r0 |= r4
	goto .L1583
.L1605:
	if r3 != 0 goto .L1606
.L1585:
	exit
.L1606:
	r0 = r1
	goto .L1585
.L1607:
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
.L1579:
	if r2 >= r1 goto .L1586
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	if r5 == 0 goto .L1587
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1604
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1586
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1604
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1586
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1604
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1586
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s< 0 goto .L1604
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1586
	r5 += -1
	r5 = r5;r5 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1604
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1586
	r5 += -1
	r9 = r5;r9 &= 0xffffffff
	r5 = r2
	r5 <<= 32
	if r5 s< 0 goto .L1604
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1586
	r9 += -1
	r9 = r9;r9 &= 0xffffffff
	r0 = r2
	r0 <<= 32
	if r0 s< 0 goto .L1604
	r2 += r2
	r2 = r2;r2 &= 0xffffffff
	r4 += r4
	r4 = r4;r4 &= 0xffffffff
	if r2 >= r1 goto .L1586
	r9 += -1
	r5 = r9;r5 &= 0xffffffff
	r9 = r2
	r9 <<= 32
	if r9 s>= 0 goto .L1607
.L1604:
	r0 = 0
	goto .L1582
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	r6 = r1
	r7 = r2
	call	__ltsf2
	if r0 s<= 0 goto .L1611
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtsf2
	if r0 s<= 0 goto .L1612
.L1610:
	r0 = r8
	r0 &= 1
	exit
.L1612:
	r8 = 0
	goto .L1610
.L1611:
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
	if r0 s<= 0 goto .L1616
	r8 = 1
	r2 = r7
	r1 = r6
	call	__gtdf2
	if r0 s<= 0 goto .L1617
.L1615:
	r0 = r8
	r0 &= 1
	exit
.L1617:
	r8 = 0
	goto .L1615
.L1616:
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
	if r2 s< 0 goto .L1632
	r3 = 0
.L1621:
	r2 = 33
	r0 = 0
.L1622:
	if r4 == 0 goto .L1623
	r2 += -1
	r2 &= 0xff
	if r2 == 0 goto .L1623
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	r0 s>>= 32
	if r4 == 0 goto .L1623
	r2 += -1
	r2 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 <<= 31
	r4 s>>= 32
	r0 s>>= 32
	if r4 == 0 goto .L1623
	r2 += -1
	r2 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	r0 s>>= 32
	if r4 == 0 goto .L1623
	r2 += -1
	r2 &= 0xff
	r5 = r4
	r5 &= 1
	r5 = -r5
	r9 = r1
	r9 &= r5
	r0 += r9
	r0 <<= 32
	r1 += r1
	r1 <<= 32
	r1 s>>= 32
	r4 s>>= 1
	r0 s>>= 32
	goto .L1622
.L1632:
	r4 = -r4
	r4 <<= 32
	r4 s>>= 32
	r3 = 1
	goto .L1621
.L1623:
	if r3 == 0 goto .L1625
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
.L1625:
	exit
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	if r1 s< 0 goto .L1638
	r6 = 0
.L1634:
	if r2 s< 0 goto .L1639
.L1635:
	r3 = 0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1636
	r0 = -r0
.L1636:
	exit
.L1638:
	r1 = -r1
	r6 = 1
	goto .L1634
.L1639:
	r2 = -r2
	r6 ^= 1
	goto .L1635
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	r0 = r2
	if r1 s< 0 goto .L1645
	r6 = 0
.L1641:
	r2 = r0
	if r0 s< 0 goto .L1646
.L1642:
	r3 = 1
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	if r6 == 0 goto .L1643
	r0 = -r0
.L1643:
	exit
.L1645:
	r1 = -r1
	r6 = 1
	goto .L1641
.L1646:
	r0 = -r0
	r2 = r0
	goto .L1642
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	r1 &= 0xffff
	r2 &= 0xffff
	r3 <<= 32
	r3 s>>= 32
	if r2 >= r1 goto .L1667
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1668
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1669
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1670
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1671
	r5 = r2
	r5 <<= 48
	if r5 s<= 0 goto .L1672
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1673
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1674
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1675
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1676
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1677
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1678
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1679
	r5 = r2
	r5 <<= 48
	if r5 s<= 0 goto .L1680
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1681
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1682
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1683
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1684
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1685
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1686
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1687
	r5 = r2
	r5 <<= 48
	if r5 s<= 0 goto .L1688
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1689
	r9 = r2
	r9 <<= 48
	if r9 s<= 0 goto .L1690
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1691
	r0 = r2
	r0 <<= 48
	if r0 s<= 0 goto .L1692
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1693
	r4 = r2
	r4 <<= 48
	if r4 s<= 0 goto .L1694
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1695
	r5 = r2
	r5 <<= 48
	if r5 s<= 0 goto .L1696
	r2 += r2
	r2 &= 0xffff
	if r2 > r1 goto .L1697
	r9 = r2
	r9 <<= 48
	r4 = 32768
	if r9 s< 0 goto .L1648
	r4 = 0
	r2 = r4
.L1648:
	if r4 == 0 goto .L1699
	if r2 >= r1 goto .L1700
	r1 -= r2
	r1 &= 0xffff
	r0 = r4
.L1650:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1651
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1651:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1652
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1652:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1653
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1653:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1654
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1654:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1655
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1655:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1656
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1656:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1657
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1657:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1658
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1658:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1659
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1659:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1660
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1660:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1661
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1661:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1662
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1662:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1663
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1663:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1664
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
.L1664:
	r4 >>= 1
	r2 >>= 1
	if r4 == 0 goto .L1649
	if r2 >= r1 goto .L1649
	r1 -= r2
	r1 &= 0xffff
	r0 |= r4
	r0 &= 0xffff
	goto .L1649
.L1667:
	r4 = 1
	goto .L1648
.L1668:
	r4 = 1
	goto .L1648
.L1669:
	r4 = 2
	goto .L1648
.L1670:
	r4 = 2
	goto .L1648
.L1671:
	r4 = 4
	goto .L1648
.L1672:
	r4 = 4
	goto .L1648
.L1673:
	r4 = 8
	goto .L1648
.L1674:
	r4 = 8
	goto .L1648
.L1675:
	r4 = 16
	goto .L1648
.L1676:
	r4 = 16
	goto .L1648
.L1677:
	r4 = 32
	goto .L1648
.L1678:
	r4 = 32
	goto .L1648
.L1679:
	r4 = 64
	goto .L1648
.L1680:
	r4 = 64
	goto .L1648
.L1681:
	r4 = 128
	goto .L1648
.L1682:
	r4 = 128
	goto .L1648
.L1683:
	r4 = 256
	goto .L1648
.L1684:
	r4 = 256
	goto .L1648
.L1685:
	r4 = 512
	goto .L1648
.L1686:
	r4 = 512
	goto .L1648
.L1687:
	r4 = 1024
	goto .L1648
.L1688:
	r4 = 1024
	goto .L1648
.L1689:
	r4 = 2048
	goto .L1648
.L1690:
	r4 = 2048
	goto .L1648
.L1691:
	r4 = 4096
	goto .L1648
.L1692:
	r4 = 4096
	goto .L1648
.L1693:
	r4 = 8192
	goto .L1648
.L1694:
	r4 = 8192
	goto .L1648
.L1695:
	r4 = 16384
	goto .L1648
.L1696:
	r4 = 16384
	goto .L1648
.L1697:
	r4 = 32768
	goto .L1648
.L1700:
	r0 = 0
	goto .L1650
.L1699:
	r0 = 0
.L1649:
	if r3 != 0 goto .L1702
.L1666:
	exit
.L1702:
	r0 = r1
	goto .L1666
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	r3 <<= 32
	r3 s>>= 32
	r0 = 65
	r4 = 1
	r5 = 2147483648 ll
.L1704:
	if r2 >= r1 goto .L1711
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L1712
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1729
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1711
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1729
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1711
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1729
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1711
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1729
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1711
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1729
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1711
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1729
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1711
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1729
	r2 += r2
	r4 += r4
	if r2 >= r1 goto .L1711
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r9 = r2
	r9 &= r5
	if r9 != 0 goto .L1729
	r2 += r2
	r4 += r4
	goto .L1704
.L1729:
	r0 = 0
	goto .L1707
.L1711:
	r0 = 0
	goto .L1707
.L1712:
	r0 = 0
	goto .L1707
.L1708:
	r4 >>= 1
	r2 >>= 1
.L1707:
	if r4 == 0 goto .L1730
	if r2 >= r1 goto .L1708
	r1 -= r2
	r0 |= r4
	goto .L1708
.L1730:
	if r3 != 0 goto .L1731
.L1710:
	exit
.L1731:
	r0 = r1
	goto .L1710
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	r2 <<= 32
	r2 s>>= 32
	r0 = r2
	r0 &= 32
	if r0 == 0 goto .L1733
	r1 = r1;r1 &= 0xffffffff
	r2 += -32
	r0 = r2;r0 &= 0xffffffff
	r1 <<= r0
	r1 <<= 32
.L1734:
	r0 = r1
	exit
.L1733:
	if r2 == 0 goto .L1736
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
	goto .L1734
.L1736:
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
	if r0 == 0 goto .L1738
	*(u64 *) (r10+-32) = 0
	r3 += -64
	r4 = r3;r4 &= 0xffffffff
	r0 = r1
	r0 <<= r4
	*(u64 *) (r10+-24) = r0
.L1739:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1738:
	if r3 == 0 goto .L1741
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
	goto .L1739
.L1741:
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
	if r0 == 0 goto .L1743
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
.L1743:
	if r2 == 0 goto .L1746
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
.L1746:
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
	if r0 == 0 goto .L1748
	r0 = r2
	r2 s>>= 63
	*(u64 *) (r10+-24) = r2
	r3 += -64
	r3 <<= 32
	r3 s>>= 32
	r0 s>>= r3
	*(u64 *) (r10+-32) = r0
.L1749:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1748:
	if r3 == 0 goto .L1751
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
	goto .L1749
.L1751:
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
	if r1 <= 65534 goto .L1755
	r3 = 0
.L1755:
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
	if r2 == 0 goto .L1757
	r1 = 0
.L1757:
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
	if r3 s>= r0 goto .L1760
	r4 = r2
	r4 s>>= 32
	r5 = r1
	r5 s>>= 32
	if r5 s> r4 goto .L1761
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1762
	if r1 > r2 goto .L1763
	r0 = 1
	exit
.L1760:
	r0 = 0
	exit
.L1761:
	r0 = 2
	exit
.L1762:
	r0 = 0
	exit
.L1763:
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
	if r4 s>= r2 goto .L1767
	if r2 s> r4 goto .L1768
	r2 = *(u64 *) (r10+-16)
	if r3 >= r2 goto .L1769
	if r2 > r3 goto .L1770
	r0 = 1
	exit
.L1767:
	r0 = 0
	exit
.L1768:
	r0 = 2
	exit
.L1769:
	r0 = 0
	exit
.L1770:
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
	if r1 == 0 goto .L1773
	r6 = 0
.L1773:
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
	if r1 != 0 goto .L1775
	if r2 == 0 goto .L1777
	r1 = r2
	call	__ctzdi2
	r0 += 65
	r0 <<= 32
	r0 s>>= 32
	exit
.L1775:
	r1 = *(u64 *) (r10+-16)
	call	__ctzdi2
	r0 <<= 32
	r1 = 4294967296 ll
	r0 += r1
	r0 s>>= 32
	exit
.L1777:
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
	if r0 == 0 goto .L1779
	r0 = r1
	r0 >>= 32
	r2 += -32
	r4 = r2;r4 &= 0xffffffff
	r0 >>= r4
	r0 = r0;r0 &= 0xffffffff
	exit
.L1779:
	if r2 == 0 goto .L1782
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
.L1782:
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
	if r0 == 0 goto .L1784
	*(u64 *) (r10+-24) = 0
	r3 += -64
	r4 = r3;r4 &= 0xffffffff
	r0 = r2
	r0 >>= r4
	*(u64 *) (r10+-32) = r0
.L1785:
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-24)
	exit
.L1784:
	if r3 == 0 goto .L1787
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
	goto .L1785
.L1787:
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
	if r1 != 0 goto .L1794
	r0 = 0
.L1794:
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
	if r9 > r0 goto .L1801
	r3 = 0
.L1801:
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
	if r0 >= r4 goto .L1802
	r9 = 0
.L1802:
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
	if r1 >= r2 goto .L1803
	r0 = 0
.L1803:
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
	goto .L1807
.L1805:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L1806
	r2 = r6
	r1 = r6
	call	__muldf3
	r6 = r0
.L1807:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L1805
	r2 = r6
	r1 = r8
	call	__muldf3
	r8 = r0
	goto .L1805
.L1806:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1809
	r2 = r8
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	exit
.L1809:
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
	goto .L1813
.L1811:
	r1 = r7
	r1 >>= 63
	r1 += r7
	r1 s>>= 1
	r7 = r1
	if r1 == 0 goto .L1812
	r2 = r6
	r1 = r6
	call	__mulsf3
	r6 = r0
.L1813:
	r0 = r7
	r0 &= 1
	if r0 == 0 goto .L1811
	r2 = r6
	r1 = r8
	call	__mulsf3
	r8 = r0
	goto .L1811
.L1812:
	r2 = *(u64 *) (r10+-8)
	if r2 == 0 goto .L1815
	r2 = r8
	r1 = 0x3f800000 ll
	call	__divsf3
	exit
.L1815:
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
	if r3 >= r0 goto .L1818
	r4 = r2
	r4 >>= 32
	r5 = r1
	r5 >>= 32
	if r5 > r4 goto .L1819
	r1 = r1;r1 &= 0xffffffff
	r2 = r2;r2 &= 0xffffffff
	if r2 >= r1 goto .L1820
	if r1 > r2 goto .L1821
	r0 = 1
	exit
.L1818:
	r0 = 0
	exit
.L1819:
	r0 = 2
	exit
.L1820:
	r0 = 0
	exit
.L1821:
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
	if r4 >= r2 goto .L1825
	if r2 > r4 goto .L1826
	r2 = *(u64 *) (r10+-16)
	if r3 >= r2 goto .L1827
	if r2 > r3 goto .L1828
	r0 = 1
	exit
.L1825:
	r0 = 0
	exit
.L1826:
	r0 = 2
	exit
.L1827:
	r0 = 0
	exit
.L1828:
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
