	.file	"mini-libc.c"
	.text
	.align	3
	.global	make_ti
	.type	make_ti, @function
make_ti:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	r0 = r2
	r3 = r1
	r1 = r3
	exit
	.size	make_ti, .-make_ti
	.align	3
	.global	make_tu
	.type	make_tu, @function
make_tu:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	r0 = r2
	r3 = r1
	r1 = r3
	exit
	.size	make_tu, .-make_tu
	.align	3
	.global	memmove
	.type	memmove, @function
memmove:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-8)
	if r1 >= r0 goto .L6
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-40)
	r0 += r1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-40)
	r0 += r1
	*(u64 *) (r10+-8) = r0
	goto .L7
.L8:
	r0 = *(u64 *) (r10+-16)
	r0 += -1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += -1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = *(u64 *) (r10+-8)
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-40)
	r0 += -1
	*(u64 *) (r10+-40) = r0
.L7:
	r0 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L8
	goto .L9
.L6:
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-8)
	if r1 == r0 goto .L9
	goto .L10
.L11:
	r0 = *(u64 *) (r10+-16)
	r1 = r0
	r1 += 1
	*(u64 *) (r10+-16) = r1
	r1 = *(u64 *) (r10+-8)
	r2 = r1
	r2 += 1
	*(u64 *) (r10+-8) = r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-40)
	r0 += -1
	*(u64 *) (r10+-40) = r0
.L10:
	r0 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L11
.L9:
	r0 = *(u64 *) (r10+-24)
	exit
	.size	memmove, .-memmove
	.align	3
	.global	memccpy
	.type	memccpy, @function
memccpy:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u32 *) (r10+-36) = r3
	*(u64 *) (r10+-48) = r4
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-36)
	r0 &= 0xff
	*(u32 *) (r10+-36) = r0
	goto .L14
.L16:
	r0 = *(u64 *) (r10+-48)
	r0 += -1
	*(u64 *) (r10+-48) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
.L14:
	r0 = *(u64 *) (r10+-48)
	if r0 == 0 goto .L15
	r0 = *(u64 *) (r10+-16)
	r1 = *(u8 *) (r0+0)
	r0 = *(u64 *) (r10+-8)
	*(u8 *) (r0+0) = r1
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-36)
	r1 <<= 32
	r1 s>>= 32
	if r1 != r0 goto .L16
.L15:
	r0 = *(u64 *) (r10+-48)
	if r0 == 0 goto .L17
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	exit
.L17:
	r0 = 0
	exit
	.size	memccpy, .-memccpy
	.align	3
	.global	memchr
	.type	memchr, @function
memchr:
	*(u64 *) (r10+-16) = r1
	*(u32 *) (r10+-20) = r2
	*(u64 *) (r10+-32) = r3
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	r0 = *(u32 *) (r10+-20)
	r0 &= 0xff
	*(u32 *) (r10+-20) = r0
	goto .L20
.L22:
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	r0 += -1
	*(u64 *) (r10+-32) = r0
.L20:
	r0 = *(u64 *) (r10+-32)
	if r0 == 0 goto .L21
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-20)
	r1 <<= 32
	r1 s>>= 32
	if r1 != r0 goto .L22
.L21:
	r0 = *(u64 *) (r10+-32)
	if r0 == 0 goto .L23
	r0 = *(u64 *) (r10+-8)
	exit
.L23:
	r0 = 0
	exit
	.size	memchr, .-memchr
	.align	3
	.global	memcmp
	.type	memcmp, @function
memcmp:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	goto .L27
.L29:
	r0 = *(u64 *) (r10+-40)
	r0 += -1
	*(u64 *) (r10+-40) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
.L27:
	r0 = *(u64 *) (r10+-40)
	if r0 == 0 goto .L28
	r0 = *(u64 *) (r10+-8)
	r1 = *(u8 *) (r0+0)
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	if r1 == r0 goto .L29
.L28:
	r0 = *(u64 *) (r10+-40)
	if r0 == 0 goto .L30
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 -= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	exit
.L30:
	r0 = 0
	exit
	.size	memcmp, .-memcmp
	.align	3
	.global	memcpy
	.type	memcpy, @function
memcpy:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	goto .L34
.L35:
	r1 = *(u64 *) (r10+-16)
	r0 = r1
	r0 += 1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-8)
	r2 = r0
	r2 += 1
	*(u64 *) (r10+-8) = r2
	r1 = *(u8 *) (r1+0)
	*(u8 *) (r0+0) = r1
	r0 = *(u64 *) (r10+-40)
	r0 += -1
	*(u64 *) (r10+-40) = r0
.L34:
	r0 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L35
	r0 = *(u64 *) (r10+-24)
	exit
	.size	memcpy, .-memcpy
	.align	3
	.global	memrchr
	.type	memrchr, @function
memrchr:
	*(u64 *) (r10+-16) = r1
	*(u32 *) (r10+-20) = r2
	*(u64 *) (r10+-32) = r3
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	r0 = *(u32 *) (r10+-20)
	r0 &= 0xff
	*(u32 *) (r10+-20) = r0
	goto .L38
.L40:
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-32)
	r0 += r1
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-20)
	r1 <<= 32
	r1 s>>= 32
	if r1 != r0 goto .L38
	r1 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-32)
	r1 += r0
	goto .L39
.L38:
	r0 = *(u64 *) (r10+-32)
	r1 = r0
	r1 += -1
	*(u64 *) (r10+-32) = r1
	if r0 != 0 goto .L40
	r1 = 0
.L39:
	r0 = r1
	exit
	.size	memrchr, .-memrchr
	.align	3
	.global	memset
	.type	memset, @function
memset:
	*(u64 *) (r10+-16) = r1
	*(u32 *) (r10+-20) = r2
	*(u64 *) (r10+-32) = r3
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	goto .L42
.L43:
	r0 = *(u32 *) (r10+-20)
	r1 = r0;r1 &= 0xff
	r0 = *(u64 *) (r10+-8)
	*(u8 *) (r0+0) = r1
	r0 = *(u64 *) (r10+-32)
	r0 += -1
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
.L42:
	r0 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L43
	r0 = *(u64 *) (r10+-16)
	exit
	.size	memset, .-memset
	.align	3
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	goto .L46
.L47:
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
.L46:
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = *(u64 *) (r10+-8)
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L47
	r0 = *(u64 *) (r10+-8)
	exit
	.size	stpcpy, .-stpcpy
	.align	3
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	*(u64 *) (r10+-8) = r1
	*(u32 *) (r10+-12) = r2
	r0 = *(u32 *) (r10+-12)
	r0 &= 0xff
	*(u32 *) (r10+-12) = r0
	goto .L50
.L52:
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
.L50:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 0 goto .L51
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-12)
	r1 <<= 32
	r1 s>>= 32
	if r1 != r0 goto .L52
.L51:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	strchrnul, .-strchrnul
	.align	3
	.global	strchr
	.type	strchr, @function
strchr:
	*(u32 *) (r10+-4) = r2
.L57:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r2 = r0
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	if r0 != r2 goto .L55
	r0 = r1
	exit
.L55:
	r0 = r1
	r1 = r0
	r1 += 1
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L57
	r0 = 0
	exit
	.size	strchr, .-strchr
	.align	3
	.global	strcmp
	.type	strcmp, @function
strcmp:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	goto .L59
.L61:
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
.L59:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r1 = r0
	r1 <<= 56
	r1 s>>= 56
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r1 != r0 goto .L60
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L61
.L60:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 -= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	strcmp, .-strcmp
	.align	3
	.global	strlen
	.type	strlen, @function
strlen:
	*(u64 *) (r10+-16) = r1
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	goto .L64
.L65:
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
.L64:
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L65
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-8)
	r1 -= r0
	r0 = r1
	exit
	.size	strlen, .-strlen
	.align	3
	.global	strncmp
	.type	strncmp, @function
strncmp:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-40)
	r1 = r0
	r1 += -1
	*(u64 *) (r10+-40) = r1
	if r0 != 0 goto .L70
	r0 = 0
	exit
.L72:
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-40)
	r0 += -1
	*(u64 *) (r10+-40) = r0
.L70:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	if r0 == 0 goto .L71
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	if r0 == 0 goto .L71
	r0 = *(u64 *) (r10+-40)
	if r0 == 0 goto .L71
	r0 = *(u64 *) (r10+-8)
	r1 = *(u8 *) (r0+0)
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	if r1 == r0 goto .L72
.L71:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 -= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	strncmp, .-strncmp
	.align	3
	.global	swab
	.type	swab, @function
swab:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	goto .L74
.L75:
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = *(u64 *) (r10+-16)
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	r1 = r0
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 2
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 2
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-40)
	r0 += -2
	*(u64 *) (r10+-40) = r0
.L74:
	r0 = *(u64 *) (r10+-40)
	if r0 s> 1 goto .L75
	goto 0
	goto 0
	exit
	.size	swab, .-swab
	.align	3
	.global	isalpha
	.type	isalpha, @function
isalpha:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 |= 32
	r0 = r0;r0 &= 0xffffffff
	r0 += -97
	r0 = r0;r0 &= 0xffffffff
	r2 = 1
	r1 = 25
	if r1 > r0 goto .L77
	r2 = 0
.L77:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	isalpha, .-isalpha
	.align	3
	.global	isascii
	.type	isascii, @function
isascii:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r2 = 1
	r1 = 127
	if r1 > r0 goto .L80
	r2 = 0
.L80:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	isascii, .-isascii
	.align	3
	.global	isblank
	.type	isblank, @function
isblank:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 32 goto .L83
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 9 goto .L84
.L83:
	r0 = 1
	exit
.L84:
	r0 = 0
	exit
	.size	isblank, .-isblank
	.align	3
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r1 = 31
	if r1 > r0 goto .L88
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 127 goto .L89
.L88:
	r0 = 1
	exit
.L89:
	r0 = 0
	exit
	.size	iscntrl, .-iscntrl
	.align	3
	.global	isdigit
	.type	isdigit, @function
isdigit:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += -48
	r0 = r0;r0 &= 0xffffffff
	r2 = 1
	r1 = 9
	if r1 > r0 goto .L93
	r2 = 0
.L93:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	isdigit, .-isdigit
	.align	3
	.global	isgraph
	.type	isgraph, @function
isgraph:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += -33
	r0 = r0;r0 &= 0xffffffff
	r2 = 1
	r1 = 93
	if r1 > r0 goto .L96
	r2 = 0
.L96:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	isgraph, .-isgraph
	.align	3
	.global	islower
	.type	islower, @function
islower:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += -97
	r0 = r0;r0 &= 0xffffffff
	r2 = 1
	r1 = 25
	if r1 > r0 goto .L99
	r2 = 0
.L99:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	islower, .-islower
	.align	3
	.global	isprint
	.type	isprint, @function
isprint:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += -32
	r0 = r0;r0 &= 0xffffffff
	r2 = 1
	r1 = 94
	if r1 > r0 goto .L102
	r2 = 0
.L102:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	isprint, .-isprint
	.align	3
	.global	isspace
	.type	isspace, @function
isspace:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 32 goto .L105
	r0 = *(u32 *) (r10+-4)
	r0 += -9
	r0 = r0;r0 &= 0xffffffff
	if r0 > 4 goto .L106
.L105:
	r0 = 1
	exit
.L106:
	r0 = 0
	exit
	.size	isspace, .-isspace
	.align	3
	.global	isupper
	.type	isupper, @function
isupper:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += -65
	r0 = r0;r0 &= 0xffffffff
	r2 = 1
	r1 = 25
	if r1 > r0 goto .L110
	r2 = 0
.L110:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	isupper, .-isupper
	.align	3
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r1 = 31
	if r1 > r0 goto .L113
	r0 = *(u32 *) (r10+-4)
	r0 += -127
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 = 32
	if r1 > r0 goto .L113
	r0 = *(u32 *) (r10+-4)
	r0 += -8232
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 = 1
	if r1 > r0 goto .L113
	r0 = *(u32 *) (r10+-4)
	r0 += -65529
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	if r0 > 2 goto .L114
.L113:
	r0 = 1
	exit
.L114:
	r0 = 0
	exit
	.size	iswcntrl, .-iswcntrl
	.align	3
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += -48
	r0 = r0;r0 &= 0xffffffff
	r2 = 1
	r1 = 9
	if r1 > r0 goto .L118
	r2 = 0
.L118:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	iswdigit, .-iswdigit
	.align	3
	.global	iswprint
	.type	iswprint, @function
iswprint:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	if r0 > 254 goto .L121
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	r0 &= 127
	r0 <<= 32
	r0 s>>= 32
	r1 = 1
	if r0 s> 32 goto .L122
	r1 = 0
.L122:
	r0 = r1;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
.L121:
	r0 = *(u32 *) (r10+-4)
	r1 = 8231
	if r1 > r0 goto .L124
	r0 = *(u32 *) (r10+-4)
	r0 += -8234
	r0 = r0;r0 &= 0xffffffff
	r1 = 47061
	if r1 > r0 goto .L124
	r0 = *(u32 *) (r10+-4)
	r0 += -57344
	r0 = r0;r0 &= 0xffffffff
	if r0 > 8184 goto .L125
.L124:
	r0 = 1
	exit
.L125:
	r0 = *(u32 *) (r10+-4)
	r0 += -65532
	r0 = r0;r0 &= 0xffffffff
	if r0 > 1048579 goto .L126
	r0 = *(u32 *) (r10+-4)
	r0 &= 65534
	r0 <<= 32
	r0 s>>= 32
	if r0 != 65534 goto .L127
.L126:
	r0 = 0
	exit
.L127:
	r0 = 1
	exit
	.size	iswprint, .-iswprint
	.align	3
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += -48
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 = 9
	if r1 > r0 goto .L129
	r0 = *(u32 *) (r10+-4)
	r0 |= 32
	r0 <<= 32
	r0 s>>= 32
	r0 += -97
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	if r0 > 5 goto .L130
.L129:
	r0 = 1
	exit
.L130:
	r0 = 0
	exit
	.size	iswxdigit, .-iswxdigit
	.align	3
	.global	toascii
	.type	toascii, @function
toascii:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 &= 127
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	toascii, .-toascii
	.align	3
	.global	fdim
	.type	fdim, @function
fdim:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-8)
	call	__unorddf2
	if r0 == 0 goto .L147
	r0 = *(u64 *) (r10+-8)
	exit
.L147:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-16)
	call	__unorddf2
	if r0 == 0 goto .L148
	r0 = *(u64 *) (r10+-16)
	exit
.L148:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__gtdf2
	if r0 s<= 0 goto .L149
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__subdf3
	exit
.L149:
	r0 = 0x0000000000000000 ll
	exit
	.size	fdim, .-fdim
	.align	3
	.global	fdimf
	.type	fdimf, @function
fdimf:
	*(u32 *) (r10+-4) = r1
	*(u32 *) (r10+-8) = r2
	r2 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-4)
	call	__unordsf2
	if r0 == 0 goto .L162
	r0 = *(u32 *) (r10+-4)
	exit
.L162:
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-8)
	call	__unordsf2
	if r0 == 0 goto .L163
	r0 = *(u32 *) (r10+-8)
	exit
.L163:
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-4)
	call	__gtsf2
	if r0 s<= 0 goto .L164
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-4)
	call	__subsf3
	exit
.L164:
	r0 = 0x00000000 ll
	exit
	.size	fdimf, .-fdimf
	.align	3
	.global	fmax
	.type	fmax, @function
fmax:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-8)
	call	__unorddf2
	if r0 == 0 goto .L180
	r0 = *(u64 *) (r10+-16)
	exit
.L180:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-16)
	call	__unorddf2
	if r0 == 0 goto .L181
	r0 = *(u64 *) (r10+-8)
	exit
.L181:
	r0 = *(u64 *) (r10+-8)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r1 == r0 goto .L171
	r0 = *(u64 *) (r10+-8)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L172
	r0 = *(u64 *) (r10+-16)
	exit
.L172:
	r0 = *(u64 *) (r10+-8)
	exit
.L171:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L182
	r0 = *(u64 *) (r10+-16)
	exit
.L182:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	fmax, .-fmax
	.align	3
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	*(u32 *) (r10+-4) = r1
	*(u32 *) (r10+-8) = r2
	r2 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-4)
	call	__unordsf2
	if r0 == 0 goto .L198
	r0 = *(u32 *) (r10+-8)
	exit
.L198:
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-8)
	call	__unordsf2
	if r0 == 0 goto .L199
	r0 = *(u32 *) (r10+-4)
	exit
.L199:
	r0 = *(u32 *) (r10+-4)
	r0 &= -2147483648
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u32 *) (r10+-8)
	r0 &= -2147483648
	r0 <<= 32
	r0 s>>= 32
	if r1 == r0 goto .L189
	r0 = *(u32 *) (r10+-4)
	r0 &= -2147483648
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L190
	r0 = *(u32 *) (r10+-8)
	exit
.L190:
	r0 = *(u32 *) (r10+-4)
	exit
.L189:
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-4)
	call	__ltsf2
	r1 = 0
	if r1 s< r0 goto .L200
	r0 = *(u32 *) (r10+-8)
	exit
.L200:
	r0 = *(u32 *) (r10+-4)
	exit
	.size	fmaxf, .-fmaxf
	.align	3
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-8)
	call	__unorddf2
	if r0 == 0 goto .L216
	r0 = *(u64 *) (r10+-16)
	exit
.L216:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-16)
	call	__unorddf2
	if r0 == 0 goto .L217
	r0 = *(u64 *) (r10+-8)
	exit
.L217:
	r0 = *(u64 *) (r10+-8)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r1 == r0 goto .L207
	r0 = *(u64 *) (r10+-8)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L208
	r0 = *(u64 *) (r10+-16)
	exit
.L208:
	r0 = *(u64 *) (r10+-8)
	exit
.L207:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L218
	r0 = *(u64 *) (r10+-16)
	exit
.L218:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	fmaxl, .-fmaxl
	.align	3
	.global	fmin
	.type	fmin, @function
fmin:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-8)
	call	__unorddf2
	if r0 == 0 goto .L234
	r0 = *(u64 *) (r10+-16)
	exit
.L234:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-16)
	call	__unorddf2
	if r0 == 0 goto .L235
	r0 = *(u64 *) (r10+-8)
	exit
.L235:
	r0 = *(u64 *) (r10+-8)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r1 == r0 goto .L225
	r0 = *(u64 *) (r10+-8)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L226
	r0 = *(u64 *) (r10+-8)
	exit
.L226:
	r0 = *(u64 *) (r10+-16)
	exit
.L225:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L236
	r0 = *(u64 *) (r10+-8)
	exit
.L236:
	r0 = *(u64 *) (r10+-16)
	exit
	.size	fmin, .-fmin
	.align	3
	.global	fminf
	.type	fminf, @function
fminf:
	*(u32 *) (r10+-4) = r1
	*(u32 *) (r10+-8) = r2
	r2 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-4)
	call	__unordsf2
	if r0 == 0 goto .L252
	r0 = *(u32 *) (r10+-8)
	exit
.L252:
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-8)
	call	__unordsf2
	if r0 == 0 goto .L253
	r0 = *(u32 *) (r10+-4)
	exit
.L253:
	r0 = *(u32 *) (r10+-4)
	r0 &= -2147483648
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u32 *) (r10+-8)
	r0 &= -2147483648
	r0 <<= 32
	r0 s>>= 32
	if r1 == r0 goto .L243
	r0 = *(u32 *) (r10+-4)
	r0 &= -2147483648
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L244
	r0 = *(u32 *) (r10+-4)
	exit
.L244:
	r0 = *(u32 *) (r10+-8)
	exit
.L243:
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-4)
	call	__ltsf2
	r1 = 0
	if r1 s< r0 goto .L254
	r0 = *(u32 *) (r10+-4)
	exit
.L254:
	r0 = *(u32 *) (r10+-8)
	exit
	.size	fminf, .-fminf
	.align	3
	.global	fminl
	.type	fminl, @function
fminl:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-8)
	call	__unorddf2
	if r0 == 0 goto .L270
	r0 = *(u64 *) (r10+-16)
	exit
.L270:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-16)
	call	__unorddf2
	if r0 == 0 goto .L271
	r0 = *(u64 *) (r10+-8)
	exit
.L271:
	r0 = *(u64 *) (r10+-8)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r1 == r0 goto .L261
	r0 = *(u64 *) (r10+-8)
	r0 >>= 63
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L262
	r0 = *(u64 *) (r10+-8)
	exit
.L262:
	r0 = *(u64 *) (r10+-16)
	exit
.L261:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L272
	r0 = *(u64 *) (r10+-8)
	exit
.L272:
	r0 = *(u64 *) (r10+-16)
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
	*(u64 *) (r10+-24) = r1
	r0 = *(u64 *) (r10+-24)
	*(u32 *) (r10+-12) = r0
	r0 = s.0 ll
	*(u64 *) (r10+-8) = r0
	goto .L274
.L275:
	r0 = *(u32 *) (r10+-12)
	r0 &= 63
	r1 = r0;r1 &= 0xffffffff
	r0 = digits ll
	r0 += r1
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = *(u64 *) (r10+-8)
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
	r0 = *(u32 *) (r10+-12)
	r0 >>= 6
	*(u32 *) (r10+-12) = r0
.L274:
	r0 = *(u32 *) (r10+-12)
	if r0 != 0 goto .L275
	r0 = *(u64 *) (r10+-8)
	r1 = 0
	*(u8 *) (r0+0) = r1
	r0 = s.0 ll
	exit
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	3
	.global	srand
	.type	srand, @function
srand:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r1 = r0
	r0 = seed ll
	*(u64 *) (r0+0) = r1
	goto 0
	exit
	.size	srand, .-srand
	.align	3
	.global	rand
	.type	rand, @function
rand:
	r0 = seed ll
	r0 = *(u64 *) (r0+0)
	r1 = 6364136223846793005 ll
	r0 *= r1
	r0 += 1
	r1 = r0
	r0 = seed ll
	*(u64 *) (r0+0) = r1
	r0 = seed ll
	r0 = *(u64 *) (r0+0)
	r0 >>= 33
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	rand, .-rand
	.align	3
	.global	insque
	.type	insque, @function
insque:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-16)
	if r0 != 0 goto .L281
	r0 = *(u64 *) (r10+-8)
	r1 = 0
	*(u64 *) (r0+8) = r1
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r0+8)
	r0 = *(u64 *) (r10+-8)
	*(u64 *) (r0+0) = r1
	exit
.L281:
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r0+0)
	r0 = *(u64 *) (r10+-8)
	*(u64 *) (r0+0) = r1
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-16)
	*(u64 *) (r0+8) = r1
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r0+0) = r1
	r0 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r0+0)
	if r0 == 0 goto .L280
	r0 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r0+0)
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r0+8) = r1
.L280:
	exit
	.size	insque, .-insque
	.align	3
	.global	remque
	.type	remque, @function
remque:
	*(u64 *) (r10+-16) = r1
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r0+0)
	if r0 == 0 goto .L284
	r0 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r0+0)
	r1 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r1+8)
	*(u64 *) (r0+8) = r1
.L284:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r0+8)
	if r0 == 0 goto .L286
	r0 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r0+8)
	r1 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r0+0) = r1
.L286:
	goto 0
	exit
	.size	remque, .-remque
	.align	3
	.global	abs
	.type	abs, @function
abs:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= 0 goto .L288
	r0 = -r0
.L288:
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	abs, .-abs
	.align	3
	.global	atoi
	.type	atoi, @function
atoi:
	*(u64 *) (r10+-16) = r1
	r0 = 0
	*(u32 *) (r10+-4) = r0
	r0 = 0
	*(u32 *) (r10+-8) = r0
	goto .L291
.L292:
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
.L291:
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = r0
	call	isspace
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L292
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L293
	if r0 != 45 goto .L295
	r0 = 1
	*(u32 *) (r10+-8) = r0
.L293:
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
	goto .L295
.L296:
	r1 = *(u32 *) (r10+-4)
	r0 = r1
	r0 <<= 2
	r0 += r1
	r0 += r0
	r0 <<= 32
	r1 = r0
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r2 = r0
	r2 += 1
	*(u64 *) (r10+-16) = r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r0 <<= 32
	r0 s>>= 32
	r1 -= r0
	*(u32 *) (r10+-4) = r1
.L295:
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r0 = r0;r0 &= 0xffffffff
	r0 += -48
	r0 = r0;r0 &= 0xffffffff
	r1 = 9
	if r1 > r0 goto .L296
	r0 = *(u32 *) (r10+-8)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L297
	r0 = *(u32 *) (r10+-4)
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L297:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	atoi, .-atoi
	.align	3
	.global	atol
	.type	atol, @function
atol:
	*(u64 *) (r10+-24) = r1
	r0 = 0
	*(u64 *) (r10+-8) = r0
	r0 = 0
	*(u32 *) (r10+-12) = r0
	goto .L301
.L302:
	r0 = *(u64 *) (r10+-24)
	r0 += 1
	*(u64 *) (r10+-24) = r0
.L301:
	r0 = *(u64 *) (r10+-24)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = r0
	call	isspace
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L302
	r0 = *(u64 *) (r10+-24)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L303
	if r0 != 45 goto .L305
	r0 = 1
	*(u32 *) (r10+-12) = r0
.L303:
	r0 = *(u64 *) (r10+-24)
	r0 += 1
	*(u64 *) (r10+-24) = r0
	goto .L305
.L306:
	r1 = *(u64 *) (r10+-8)
	r0 = r1
	r0 <<= 2
	r0 += r1
	r0 += r0
	r2 = r0
	r0 = *(u64 *) (r10+-24)
	r1 = r0
	r1 += 1
	*(u64 *) (r10+-24) = r1
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r0 <<= 32
	r0 s>>= 32
	r1 = r0
	r0 = r2
	r0 -= r1
	*(u64 *) (r10+-8) = r0
.L305:
	r0 = *(u64 *) (r10+-24)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r0 = r0;r0 &= 0xffffffff
	r0 += -48
	r0 = r0;r0 &= 0xffffffff
	r1 = 9
	if r1 > r0 goto .L306
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L307
	r0 = *(u64 *) (r10+-8)
	r0 = -r0
	exit
.L307:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	atol, .-atol
	.align	3
	.global	atoll
	.type	atoll, @function
atoll:
	*(u64 *) (r10+-24) = r1
	r0 = 0
	*(u64 *) (r10+-8) = r0
	r0 = 0
	*(u32 *) (r10+-12) = r0
	goto .L311
.L312:
	r0 = *(u64 *) (r10+-24)
	r0 += 1
	*(u64 *) (r10+-24) = r0
.L311:
	r0 = *(u64 *) (r10+-24)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = r0
	call	isspace
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L312
	r0 = *(u64 *) (r10+-24)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 == 43 goto .L313
	if r0 != 45 goto .L315
	r0 = 1
	*(u32 *) (r10+-12) = r0
.L313:
	r0 = *(u64 *) (r10+-24)
	r0 += 1
	*(u64 *) (r10+-24) = r0
	goto .L315
.L316:
	r1 = *(u64 *) (r10+-8)
	r0 = r1
	r0 <<= 2
	r0 += r1
	r0 += r0
	r2 = r0
	r0 = *(u64 *) (r10+-24)
	r1 = r0
	r1 += 1
	*(u64 *) (r10+-24) = r1
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r0 += -48
	r0 <<= 32
	r0 s>>= 32
	r1 = r0
	r0 = r2
	r0 -= r1
	*(u64 *) (r10+-8) = r0
.L315:
	r0 = *(u64 *) (r10+-24)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r0 = r0;r0 &= 0xffffffff
	r0 += -48
	r0 = r0;r0 &= 0xffffffff
	r1 = 9
	if r1 > r0 goto .L316
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L317
	r0 = *(u64 *) (r10+-8)
	r0 = -r0
	exit
.L317:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	atoll, .-atoll
	.align	3
	.global	div
	.type	div, @function
div:
	*(u64 *) (r10+-16) = r1
	*(u32 *) (r10+-20) = r2
	*(u32 *) (r10+-24) = r3
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-24)
	r1 <<= 32
	r1 s>>= 32
	r2 = r1
	r1 = r0
	call	__divdi3
	r0 <<= 32
	r6 = r0
	r6 s>>= 32
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-24)
	r1 <<= 32
	r1 s>>= 32
	r2 = r1
	r1 = r0
	call	__moddi3
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+0) = r6
	r1 = *(u64 *) (r10+-16)
	*(u32 *) (r1+4) = r0
	r0 = *(u64 *) (r10+-16)
	exit
	.size	div, .-div
	.align	3
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	*(u64 *) (r10+-8) = r1
	r0 = *(u64 *) (r10+-8)
	if r0 s>= 0 goto .L323
	r0 = -r0
.L323:
	exit
	.size	imaxabs, .-imaxabs
	.align	3
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r2 = *(u64 *) (r10+-40)
	r1 = *(u64 *) (r10+-32)
	call	__divdi3
	r6 = r0
	r0 = *(u64 *) (r10+-32)
	r2 = *(u64 *) (r10+-40)
	r1 = r0
	call	__moddi3
	r1 = r0
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r0+0) = r6
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r0+8) = r1
	r0 = *(u64 *) (r10+-24)
	exit
	.size	imaxdiv, .-imaxdiv
	.align	3
	.global	labs
	.type	labs, @function
labs:
	*(u64 *) (r10+-8) = r1
	r0 = *(u64 *) (r10+-8)
	if r0 s>= 0 goto .L328
	r0 = -r0
.L328:
	exit
	.size	labs, .-labs
	.align	3
	.global	ldiv
	.type	ldiv, @function
ldiv:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r2 = *(u64 *) (r10+-40)
	r1 = *(u64 *) (r10+-32)
	call	__divdi3
	r6 = r0
	r0 = *(u64 *) (r10+-32)
	r2 = *(u64 *) (r10+-40)
	r1 = r0
	call	__moddi3
	r1 = r0
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r0+0) = r6
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r0+8) = r1
	r0 = *(u64 *) (r10+-24)
	exit
	.size	ldiv, .-ldiv
	.align	3
	.global	llabs
	.type	llabs, @function
llabs:
	*(u64 *) (r10+-8) = r1
	r0 = *(u64 *) (r10+-8)
	if r0 s>= 0 goto .L333
	r0 = -r0
.L333:
	exit
	.size	llabs, .-llabs
	.align	3
	.global	lldiv
	.type	lldiv, @function
lldiv:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r2 = *(u64 *) (r10+-40)
	r1 = *(u64 *) (r10+-32)
	call	__divdi3
	r6 = r0
	r0 = *(u64 *) (r10+-32)
	r2 = *(u64 *) (r10+-40)
	r1 = r0
	call	__moddi3
	r1 = r0
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r0+0) = r6
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r0+8) = r1
	r0 = *(u64 *) (r10+-24)
	exit
	.size	lldiv, .-lldiv
	.align	3
	.global	wcschr
	.type	wcschr, @function
wcschr:
	*(u64 *) (r10+-8) = r1
	*(u32 *) (r10+-12) = r2
	goto .L338
.L340:
	r0 = *(u64 *) (r10+-8)
	r0 += 4
	*(u64 *) (r10+-8) = r0
.L338:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L339
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-12)
	r1 <<= 32
	r1 s>>= 32
	if r1 != r0 goto .L340
.L339:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L341
	r0 = *(u64 *) (r10+-8)
	exit
.L341:
	r0 = 0
	exit
	.size	wcschr, .-wcschr
	.align	3
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	goto .L345
.L347:
	r0 = *(u64 *) (r10+-8)
	r0 += 4
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 4
	*(u64 *) (r10+-16) = r0
.L345:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r1 != r0 goto .L346
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L346
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L347
.L346:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u64 *) (r10+-16)
	r1 = *(u32 *) (r1+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r0 goto .L348
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r2 = 1
	if r1 s> r0 goto .L349
	r2 = 0
.L349:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
.L348:
	r0 = -1
	exit
	.size	wcscmp, .-wcscmp
	.align	3
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-24) = r2
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	goto 0
.L353:
	r1 = *(u64 *) (r10+-24)
	r0 = r1
	r0 += 4
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-16)
	r2 = r0
	r2 += 4
	*(u64 *) (r10+-16) = r2
	r1 = *(u32 *) (r1+0)
	r1 <<= 32
	r1 s>>= 32
	*(u32 *) (r0+0) = r1
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L353
	r0 = *(u64 *) (r10+-8)
	exit
	.size	wcscpy, .-wcscpy
	.align	3
	.global	wcslen
	.type	wcslen, @function
wcslen:
	*(u64 *) (r10+-16) = r1
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	goto .L356
.L357:
	r0 = *(u64 *) (r10+-16)
	r0 += 4
	*(u64 *) (r10+-16) = r0
.L356:
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L357
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	r0 -= r1
	r0 s>>= 2
	exit
	.size	wcslen, .-wcslen
	.align	3
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	*(u64 *) (r10+-24) = r3
	goto .L360
.L362:
	r0 = *(u64 *) (r10+-24)
	r0 += -1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 4
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 4
	*(u64 *) (r10+-16) = r0
.L360:
	r0 = *(u64 *) (r10+-24)
	if r0 == 0 goto .L361
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r1 != r0 goto .L361
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L361
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L362
.L361:
	r0 = *(u64 *) (r10+-24)
	if r0 == 0 goto .L363
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u64 *) (r10+-16)
	r1 = *(u32 *) (r1+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r0 goto .L364
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r2 = 1
	if r1 s> r0 goto .L365
	r2 = 0
.L365:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
.L364:
	r0 = -1
	exit
.L363:
	r0 = 0
	exit
	.size	wcsncmp, .-wcsncmp
	.align	3
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	*(u64 *) (r10+-8) = r1
	*(u32 *) (r10+-12) = r2
	*(u64 *) (r10+-24) = r3
	goto .L370
.L372:
	r0 = *(u64 *) (r10+-24)
	r0 += -1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 4
	*(u64 *) (r10+-8) = r0
.L370:
	r0 = *(u64 *) (r10+-24)
	if r0 == 0 goto .L371
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-12)
	r1 <<= 32
	r1 s>>= 32
	if r1 != r0 goto .L372
.L371:
	r0 = *(u64 *) (r10+-24)
	if r0 == 0 goto .L373
	r0 = *(u64 *) (r10+-8)
	exit
.L373:
	r0 = 0
	exit
	.size	wmemchr, .-wmemchr
	.align	3
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	*(u64 *) (r10+-24) = r3
	goto .L377
.L379:
	r0 = *(u64 *) (r10+-24)
	r0 += -1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 4
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += 4
	*(u64 *) (r10+-16) = r0
.L377:
	r0 = *(u64 *) (r10+-24)
	if r0 == 0 goto .L378
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	if r1 == r0 goto .L379
.L378:
	r0 = *(u64 *) (r10+-24)
	if r0 == 0 goto .L380
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u64 *) (r10+-16)
	r1 = *(u32 *) (r1+0)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r0 goto .L381
	r0 = *(u64 *) (r10+-8)
	r0 = *(u32 *) (r0+0)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	r2 = 1
	if r1 s> r0 goto .L382
	r2 = 0
.L382:
	r0 = r2;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	exit
.L381:
	r0 = -1
	exit
.L380:
	r0 = 0
	exit
	.size	wmemcmp, .-wmemcmp
	.align	3
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-24) = r2
	*(u64 *) (r10+-32) = r3
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	goto .L387
.L388:
	r0 = *(u64 *) (r10+-24)
	r1 = r0
	r1 += 4
	*(u64 *) (r10+-24) = r1
	r1 = *(u64 *) (r10+-16)
	r2 = r1
	r2 += 4
	*(u64 *) (r10+-16) = r2
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r1+0) = r0
.L387:
	r0 = *(u64 *) (r10+-32)
	r1 = r0
	r1 += -1
	*(u64 *) (r10+-32) = r1
	if r0 != 0 goto .L388
	r0 = *(u64 *) (r10+-8)
	exit
	.size	wmemcpy, .-wmemcpy
	.align	3
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-24) = r2
	*(u64 *) (r10+-32) = r3
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-24)
	if r1 != r0 goto .L391
	r0 = *(u64 *) (r10+-16)
	exit
.L391:
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-24)
	r1 -= r0
	r0 = *(u64 *) (r10+-32)
	r0 <<= 2
	if r1 >= r0 goto .L397
	goto .L394
.L395:
	r0 = *(u64 *) (r10+-32)
	r0 <<= 2
	r1 = r0
	r0 = *(u64 *) (r10+-24)
	r0 += r1
	r1 = *(u64 *) (r10+-32)
	r1 <<= 2
	r2 = r1
	r1 = *(u64 *) (r10+-16)
	r1 += r2
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r1+0) = r0
.L394:
	r0 = *(u64 *) (r10+-32)
	r1 = r0
	r1 += -1
	*(u64 *) (r10+-32) = r1
	if r0 != 0 goto .L395
	goto .L396
.L398:
	r0 = *(u64 *) (r10+-24)
	r1 = r0
	r1 += 4
	*(u64 *) (r10+-24) = r1
	r1 = *(u64 *) (r10+-16)
	r2 = r1
	r2 += 4
	*(u64 *) (r10+-16) = r2
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r1+0) = r0
.L397:
	r0 = *(u64 *) (r10+-32)
	r1 = r0
	r1 += -1
	*(u64 *) (r10+-32) = r1
	if r0 != 0 goto .L398
.L396:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	wmemmove, .-wmemmove
	.align	3
	.global	wmemset
	.type	wmemset, @function
wmemset:
	*(u64 *) (r10+-16) = r1
	*(u32 *) (r10+-20) = r2
	*(u64 *) (r10+-32) = r3
	r0 = *(u64 *) (r10+-16)
	*(u64 *) (r10+-8) = r0
	goto .L400
.L401:
	r0 = *(u64 *) (r10+-16)
	r1 = r0
	r1 += 4
	*(u64 *) (r10+-16) = r1
	r1 = *(u32 *) (r10+-20)
	*(u32 *) (r0+0) = r1
.L400:
	r0 = *(u64 *) (r10+-32)
	r1 = r0
	r1 += -1
	*(u64 *) (r10+-32) = r1
	if r0 != 0 goto .L401
	r0 = *(u64 *) (r10+-8)
	exit
	.size	wmemset, .-wmemset
	.align	3
	.global	bcopy
	.type	bcopy, @function
bcopy:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r1 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-16)
	if r1 >= r0 goto .L404
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-40)
	r0 += r1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-40)
	r0 += r1
	*(u64 *) (r10+-16) = r0
	goto .L405
.L406:
	r0 = *(u64 *) (r10+-8)
	r0 += -1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r0 += -1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = *(u64 *) (r10+-16)
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-40)
	r0 += -1
	*(u64 *) (r10+-40) = r0
.L405:
	r0 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L406
	goto .L410
.L404:
	r1 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-16)
	if r1 == r0 goto .L410
	goto .L408
.L409:
	r0 = *(u64 *) (r10+-8)
	r1 = r0
	r1 += 1
	*(u64 *) (r10+-8) = r1
	r1 = *(u64 *) (r10+-16)
	r2 = r1
	r2 += 1
	*(u64 *) (r10+-16) = r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-40)
	r0 += -1
	*(u64 *) (r10+-40) = r0
.L408:
	r0 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L409
.L410:
	goto 0
	exit
	.size	bcopy, .-bcopy
	.align	3
	.global	rotl64
	.type	rotl64, @function
rotl64:
	*(u64 *) (r10+-8) = r1
	*(u32 *) (r10+-12) = r2
	r0 = *(u64 *) (r10+-8)
	r2 = *(u32 *) (r10+-12)
	r1 = r0
	r1 <<= r2
	r2 = *(u32 *) (r10+-12)
	r2 = -r2
	r2 &= 63
	r2 = r2;r2 &= 0xffffffff
	r0 >>= r2
	r0 |= r1
	exit
	.size	rotl64, .-rotl64
	.align	3
	.global	rotr64
	.type	rotr64, @function
rotr64:
	*(u64 *) (r10+-8) = r1
	*(u32 *) (r10+-12) = r2
	r0 = *(u64 *) (r10+-8)
	r2 = *(u32 *) (r10+-12)
	r1 = r0
	r1 >>= r2
	r2 = *(u32 *) (r10+-12)
	r2 = -r2
	r2 &= 63
	r2 = r2;r2 &= 0xffffffff
	r0 <<= r2
	r0 |= r1
	exit
	.size	rotr64, .-rotr64
	.align	3
	.global	rotl32
	.type	rotl32, @function
rotl32:
	*(u32 *) (r10+-4) = r1
	*(u32 *) (r10+-8) = r2
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-8)
	r2 = r0
	r2 <<= r1
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-8)
	r0 = -r0
	r0 &= 31
	r0 = r0;r0 &= 0xffffffff
	r1 >>= r0
	r0 = r2
	r0 |= r1
	r0 = r0;r0 &= 0xffffffff
	exit
	.size	rotl32, .-rotl32
	.align	3
	.global	rotr32
	.type	rotr32, @function
rotr32:
	*(u32 *) (r10+-4) = r1
	*(u32 *) (r10+-8) = r2
	r0 = *(u32 *) (r10+-4)
	r2 = r0;r2 &= 0xffffffff
	r1 = *(u32 *) (r10+-8)
	r2 >>= r1
	r3 = r2
	r1 = *(u32 *) (r10+-8)
	r1 = -r1
	r1 &= 31
	r1 = r1;r1 &= 0xffffffff
	r2 = r0
	r2 <<= r1
	r0 = r3
	r1 = r2
	r0 |= r1
	r0 = r0;r0 &= 0xffffffff
	exit
	.size	rotr32, .-rotr32
	.align	3
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	*(u64 *) (r10+-8) = r1
	*(u32 *) (r10+-12) = r2
	r0 = *(u32 *) (r10+-12)
	r1 = *(u64 *) (r10+-8)
	r1 <<= r0
	r0 = *(u32 *) (r10+-12)
	r2 = 64
	r2 -= r0
	r2 = r2;r2 &= 0xffffffff
	r0 = *(u64 *) (r10+-8)
	r0 >>= r2
	r1 |= r0
	r0 = r1
	exit
	.size	rotl_sz, .-rotl_sz
	.align	3
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	*(u64 *) (r10+-8) = r1
	*(u32 *) (r10+-12) = r2
	r0 = *(u32 *) (r10+-12)
	r1 = *(u64 *) (r10+-8)
	r1 >>= r0
	r0 = *(u32 *) (r10+-12)
	r2 = 64
	r2 -= r0
	r2 = r2;r2 &= 0xffffffff
	r0 = *(u64 *) (r10+-8)
	r0 <<= r2
	r1 |= r0
	r0 = r1
	exit
	.size	rotr_sz, .-rotr_sz
	.align	3
	.global	rotl16
	.type	rotl16, @function
rotl16:
	*(u16 *) (r10+-2) = r1
	*(u32 *) (r10+-8) = r2
	r0 = *(u16 *) (r10+-2)
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-8)
	r1 <<= r0
	r0 = r1;r0 &= 0xffffffff
	r1 = r0;r1 &= 0xffff
	r0 = *(u16 *) (r10+-2)
	r2 = r0;r2 &= 0xffffffff
	r3 = *(u32 *) (r10+-8)
	r0 = 16
	r0 -= r3
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r2 >>= r0
	r0 = r2;r0 &= 0xffffffff
	r0 &= 0xffff
	r1 |= r0
	r0 = r1;r0 &= 0xffff
	exit
	.size	rotl16, .-rotl16
	.align	3
	.global	rotr16
	.type	rotr16, @function
rotr16:
	*(u16 *) (r10+-2) = r1
	*(u32 *) (r10+-8) = r2
	r0 = *(u16 *) (r10+-2)
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-8)
	r1 >>= r0
	r0 = r1;r0 &= 0xffffffff
	r1 = r0;r1 &= 0xffff
	r0 = *(u16 *) (r10+-2)
	r2 = r0;r2 &= 0xffffffff
	r3 = *(u32 *) (r10+-8)
	r0 = 16
	r0 -= r3
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r2 <<= r0
	r0 = r2;r0 &= 0xffffffff
	r0 &= 0xffff
	r1 |= r0
	r0 = r1;r0 &= 0xffff
	exit
	.size	rotr16, .-rotr16
	.align	3
	.global	rotl8
	.type	rotl8, @function
rotl8:
	*(u8 *) (r10+-1) = r1
	*(u32 *) (r10+-8) = r2
	r0 = *(u8 *) (r10+-1)
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-8)
	r1 <<= r0
	r0 = r1;r0 &= 0xffffffff
	r1 = r0;r1 &= 0xff
	r0 = *(u8 *) (r10+-1)
	r2 = r0;r2 &= 0xffffffff
	r3 = *(u32 *) (r10+-8)
	r0 = 8
	r0 -= r3
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r2 >>= r0
	r0 = r2;r0 &= 0xffffffff
	r0 &= 0xff
	r1 |= r0
	r0 = r1;r0 &= 0xff
	exit
	.size	rotl8, .-rotl8
	.align	3
	.global	rotr8
	.type	rotr8, @function
rotr8:
	*(u8 *) (r10+-1) = r1
	*(u32 *) (r10+-8) = r2
	r0 = *(u8 *) (r10+-1)
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-8)
	r1 >>= r0
	r0 = r1;r0 &= 0xffffffff
	r1 = r0;r1 &= 0xff
	r0 = *(u8 *) (r10+-1)
	r2 = r0;r2 &= 0xffffffff
	r3 = *(u32 *) (r10+-8)
	r0 = 8
	r0 -= r3
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r2 <<= r0
	r0 = r2;r0 &= 0xffffffff
	r0 &= 0xff
	r1 |= r0
	r0 = r1;r0 &= 0xff
	exit
	.size	rotr8, .-rotr8
	.align	3
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	*(u16 *) (r10+-10) = r1
	r0 = 255
	*(u16 *) (r10+-2) = r0
	r0 = *(u16 *) (r10+-10)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u16 *) (r10+-2)
	r0 <<= 32
	r0 s>>= 32
	r0 <<= 8
	r0 <<= 32
	r0 s>>= 32
	r1 &= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 s>>= 8
	r0 <<= 32
	r0 s>>= 32
	r1 = r0
	r1 <<= 48
	r1 s>>= 48
	r0 = *(u16 *) (r10+-10)
	r2 = r0
	r2 <<= 32
	r2 s>>= 32
	r0 = *(u16 *) (r10+-2)
	r0 <<= 32
	r0 s>>= 32
	r2 &= r0
	r0 = r2
	r0 <<= 32
	r0 s>>= 32
	r0 <<= 48
	r0 s>>= 48
	r0 <<= 8
	r0 <<= 48
	r0 s>>= 48
	r1 |= r0
	r0 = r1
	r0 <<= 48
	r0 s>>= 48
	r0 &= 0xffff
	exit
	.size	bswap_16, .-bswap_16
	.align	3
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	*(u32 *) (r10+-12) = r1
	r0 = 255
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 <<= 24
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-12)
	r1 &= r0
	r0 = r1;r0 &= 0xffffffff
	r0 >>= 24
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r0 <<= 16
	r2 = r0;r2 &= 0xffffffff
	r0 = *(u32 *) (r10+-12)
	r2 &= r0
	r0 = r2;r0 &= 0xffffffff
	r0 >>= 8
	r0 = r0;r0 &= 0xffffffff
	r1 |= r0
	r1 = r1;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r0 <<= 8
	r2 = r0;r2 &= 0xffffffff
	r0 = *(u32 *) (r10+-12)
	r2 &= r0
	r0 = r2;r0 &= 0xffffffff
	r0 <<= 8
	r0 = r0;r0 &= 0xffffffff
	r1 |= r0
	r1 = r1;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-4)
	r2 &= r0
	r0 = r2;r0 &= 0xffffffff
	r0 <<= 24
	r0 = r0;r0 &= 0xffffffff
	r1 |= r0
	r0 = r1;r0 &= 0xffffffff
	exit
	.size	bswap_32, .-bswap_32
	.align	3
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	*(u64 *) (r10+-16) = r1
	r0 = 255
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 56
	r1 = *(u64 *) (r10+-16)
	r0 &= r1
	r0 >>= 56
	r1 = r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 48
	r2 = *(u64 *) (r10+-16)
	r0 &= r2
	r0 >>= 40
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 40
	r2 = *(u64 *) (r10+-16)
	r0 &= r2
	r0 >>= 24
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 32
	r2 = *(u64 *) (r10+-16)
	r0 &= r2
	r0 >>= 8
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 24
	r2 = *(u64 *) (r10+-16)
	r0 &= r2
	r0 <<= 8
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 16
	r2 = *(u64 *) (r10+-16)
	r0 &= r2
	r0 <<= 24
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 8
	r2 = *(u64 *) (r10+-16)
	r0 &= r2
	r0 <<= 40
	r1 |= r0
	r0 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-8)
	r0 &= r2
	r0 <<= 56
	r1 |= r0
	r0 = r1
	exit
	.size	bswap_64, .-bswap_64
	.align	3
	.global	ffs
	.type	ffs, @function
ffs:
	*(u32 *) (r10+-12) = r1
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L438
.L441:
	r1 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-4)
	r1 >>= r0
	r0 = r1;r0 &= 0xffffffff
	r0 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L439
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	r0 = r0;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	exit
.L439:
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	*(u32 *) (r10+-4) = r0
.L438:
	r0 = *(u32 *) (r10+-4)
	r1 = 31
	if r1 > r0 goto .L441
	r0 = 0
	exit
	.size	ffs, .-ffs
	.align	3
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L443
	r0 = 0
	exit
.L443:
	r6 = 1
	goto .L445
.L446:
	r0 s>>= 1
	r0 <<= 32
	r0 s>>= 32
	r1 = r6
	r1 += 1
	r1 <<= 32
	r6 = r1
	r6 s>>= 32
.L445:
	r1 = r0
	r1 &= 1
	r1 <<= 32
	r1 s>>= 32
	if r1 == 0 goto .L446
	r0 = r6
	exit
	.size	libiberty_ffs, .-libiberty_ffs
	.align	3
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	*(u32 *) (r10+-4) = r1
	r2 = 0xff7fffff ll
	r1 = *(u32 *) (r10+-4)
	call	__ltsf2
	r1 = 0
	if r1 s>= r0 goto .L448
	r2 = 0x7f7fffff ll
	r1 = *(u32 *) (r10+-4)
	call	__gtsf2
	if r0 s<= 0 goto .L453
.L448:
	r0 = 1
	exit
.L453:
	r0 = 0
	exit
	.size	gl_isinff, .-gl_isinff
	.align	3
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	*(u64 *) (r10+-8) = r1
	r2 = 0xffefffffffffffff ll
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r1 = 0
	if r1 s>= r0 goto .L455
	r2 = 0x7fefffffffffffff ll
	r1 = *(u64 *) (r10+-8)
	call	__gtdf2
	if r0 s<= 0 goto .L460
.L455:
	r0 = 1
	exit
.L460:
	r0 = 0
	exit
	.size	gl_isinfd, .-gl_isinfd
	.align	3
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	*(u64 *) (r10+-8) = r1
	r2 = 0xffefffffffffffff ll
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r1 = 0
	if r1 s>= r0 goto .L462
	r2 = 0x7fefffffffffffff ll
	r1 = *(u64 *) (r10+-8)
	call	__gtdf2
	if r0 s<= 0 goto .L467
.L462:
	r0 = 1
	exit
.L467:
	r0 = 0
	exit
	.size	gl_isinfl, .-gl_isinfl
	.align	3
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	*(u64 *) (r10+-8) = r1
	*(u32 *) (r10+-12) = r2
	r1 = *(u32 *) (r10+-12)
	call	__bpf_floatsidf
	r1 = *(u64 *) (r10+-8)
	*(u64 *) (r1+0) = r0
	goto 0
	exit
	.size	_Qp_itoq, .-_Qp_itoq
	.align	3
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	*(u32 *) (r10+-12) = r1
	*(u32 *) (r10+-16) = r2
	r2 = *(u32 *) (r10+-12)
	r1 = *(u32 *) (r10+-12)
	call	__unordsf2
	if r0 != 0 goto .L470
	r0 = *(u32 *) (r10+-12)
	r2 = r0
	r1 = r0
	call	__addsf3
	r2 = r0
	r1 = *(u32 *) (r10+-12)
	call	__nesf2
	if r0 == 0 goto .L470
	r0 = *(u32 *) (r10+-16)
	r0 <<= 32
	r0 s>>= 32
	if r0 s>= 0 goto .L472
	r0 = 0x3f000000 ll
	goto .L473
.L472:
	r0 = 0x40000000 ll
.L473:
	*(u32 *) (r10+-4) = r0
.L476:
	r0 = *(u32 *) (r10+-16)
	r0 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L474
	r2 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-12)
	call	__mulsf3
	*(u32 *) (r10+-12) = r0
.L474:
	r0 = *(u32 *) (r10+-16)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0
	r1 >>= 63
	r1 += r0
	r0 = r1
	r0 s>>= 1
	*(u32 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-16)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L479
	r2 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-4)
	call	__mulsf3
	*(u32 *) (r10+-4) = r0
	goto .L476
.L479:
	goto 0
.L470:
	r0 = *(u32 *) (r10+-12)
	exit
	.size	ldexpf, .-ldexpf
	.align	3
	.global	ldexp
	.type	ldexp, @function
ldexp:
	*(u64 *) (r10+-16) = r1
	*(u32 *) (r10+-20) = r2
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-16)
	call	__unorddf2
	if r0 != 0 goto .L481
	r0 = *(u64 *) (r10+-16)
	r2 = r0
	r1 = r0
	call	__adddf3
	r2 = r0
	r1 = *(u64 *) (r10+-16)
	call	__nedf2
	if r0 == 0 goto .L481
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	if r0 s>= 0 goto .L483
	r0 = 0x3fe0000000000000 ll
	goto .L484
.L483:
	r0 = 0x4000000000000000 ll
.L484:
	*(u64 *) (r10+-8) = r0
.L487:
	r0 = *(u32 *) (r10+-20)
	r0 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L485
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-16)
	call	__muldf3
	*(u64 *) (r10+-16) = r0
.L485:
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0
	r1 >>= 63
	r1 += r0
	r0 = r1
	r0 s>>= 1
	*(u32 *) (r10+-20) = r0
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L490
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-8)
	call	__muldf3
	*(u64 *) (r10+-8) = r0
	goto .L487
.L490:
	goto 0
.L481:
	r0 = *(u64 *) (r10+-16)
	exit
	.size	ldexp, .-ldexp
	.align	3
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	*(u64 *) (r10+-16) = r1
	*(u32 *) (r10+-20) = r2
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-16)
	call	__unorddf2
	if r0 != 0 goto .L492
	r0 = *(u64 *) (r10+-16)
	r2 = r0
	r1 = r0
	call	__adddf3
	r2 = r0
	r1 = *(u64 *) (r10+-16)
	call	__nedf2
	if r0 == 0 goto .L492
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	if r0 s>= 0 goto .L494
	r0 = 0x3fe0000000000000 ll
	goto .L495
.L494:
	r0 = 0x4000000000000000 ll
.L495:
	*(u64 *) (r10+-8) = r0
.L498:
	r0 = *(u32 *) (r10+-20)
	r0 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L496
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-16)
	call	__muldf3
	*(u64 *) (r10+-16) = r0
.L496:
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0
	r1 >>= 63
	r1 += r0
	r0 = r1
	r0 s>>= 1
	*(u32 *) (r10+-20) = r0
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L501
	r2 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-8)
	call	__muldf3
	*(u64 *) (r10+-8) = r0
	goto .L498
.L501:
	goto 0
.L492:
	r0 = *(u64 *) (r10+-16)
	exit
	.size	ldexpl, .-ldexpl
	.align	3
	.global	memxor
	.type	memxor, @function
memxor:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-16) = r0
	goto .L503
.L504:
	r0 = *(u64 *) (r10+-8)
	r1 = r0
	r1 += 1
	*(u64 *) (r10+-8) = r1
	r0 = *(u8 *) (r0+0)
	r2 = r0
	r2 <<= 56
	r2 s>>= 56
	r0 = *(u64 *) (r10+-16)
	r1 = r0
	r1 += 1
	*(u64 *) (r10+-16) = r1
	r1 = *(u8 *) (r0+0)
	r1 <<= 56
	r1 s>>= 56
	r2 ^= r1
	r1 = r2
	r1 <<= 56
	r1 s>>= 56
	*(u8 *) (r0+0) = r1
	r0 = *(u64 *) (r10+-40)
	r0 += -1
	*(u64 *) (r10+-40) = r0
.L503:
	r0 = *(u64 *) (r10+-40)
	if r0 != 0 goto .L504
	r0 = *(u64 *) (r10+-24)
	exit
	.size	memxor, .-memxor
	.align	3
	.global	strncat
	.type	strncat, @function
strncat:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-24) = r2
	*(u64 *) (r10+-32) = r3
	r1 = *(u64 *) (r10+-16)
	call	strlen
	r1 = *(u64 *) (r10+-16)
	r1 += r0
	*(u64 *) (r10+-8) = r1
	goto .L507
.L509:
	r0 = *(u64 *) (r10+-24)
	r0 += 1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	r0 += -1
	*(u64 *) (r10+-32) = r0
.L507:
	r0 = *(u64 *) (r10+-32)
	if r0 == 0 goto .L508
	r0 = *(u64 *) (r10+-24)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r1 = *(u64 *) (r10+-8)
	*(u8 *) (r1+0) = r0
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L509
.L508:
	r0 = *(u64 *) (r10+-32)
	if r0 != 0 goto .L510
	r0 = *(u64 *) (r10+-8)
	r1 = 0
	*(u8 *) (r0+0) = r1
.L510:
	r0 = *(u64 *) (r10+-16)
	exit
	.size	strncat, .-strncat
	.align	3
	.global	strnlen
	.type	strnlen, @function
strnlen:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-24) = r2
	r0 = 0
	*(u64 *) (r10+-8) = r0
	goto .L513
.L518:
	goto 0
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
.L513:
	r1 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-24)
	if r1 >= r0 goto .L514
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	r0 += r1
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L518
.L514:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	strnlen, .-strnlen
	.align	3
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-24) = r2
	goto .L520
.L524:
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	goto .L521
.L523:
	r0 = *(u64 *) (r10+-8)
	r1 = r0
	r1 += 1
	*(u64 *) (r10+-8) = r1
	r0 = *(u8 *) (r0+0)
	r1 = r0
	r1 <<= 56
	r1 s>>= 56
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r1 != r0 goto .L521
	r0 = *(u64 *) (r10+-16)
	exit
.L521:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L523
	r0 = *(u64 *) (r10+-16)
	r0 += 1
	*(u64 *) (r10+-16) = r0
.L520:
	r0 = *(u64 *) (r10+-16)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L524
	r0 = 0
	exit
	.size	strpbrk, .-strpbrk
	.align	3
	.global	strrchr
	.type	strrchr, @function
strrchr:
	*(u32 *) (r10+-12) = r2
	r0 = 0
	*(u64 *) (r10+-8) = r0
.L527:
	r0 = *(u8 *) (r1+0)
	r0 <<= 56
	r0 s>>= 56
	r2 = r0
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	if r0 != r2 goto .L526
	*(u64 *) (r10+-8) = r1
.L526:
	r0 = r1
	r1 = r0
	r1 += 1
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L527
	r0 = *(u64 *) (r10+-8)
	exit
	.size	strrchr, .-strrchr
	.align	3
	.global	strstr
	.type	strstr, @function
strstr:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r1 = *(u64 *) (r10+-32)
	call	strlen
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-16)
	if r0 != 0 goto .L532
	r0 = *(u64 *) (r10+-24)
	exit
.L534:
	r3 = *(u64 *) (r10+-16)
	r2 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-8)
	call	strncmp
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L533
	r0 = *(u64 *) (r10+-8)
	exit
.L533:
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
.L532:
	r0 = *(u64 *) (r10+-32)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	r2 = r0
	r1 = *(u64 *) (r10+-8)
	call	strchr
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	if r0 != 0 goto .L534
	r0 = 0
	exit
	.size	strstr, .-strstr
	.align	3
	.global	copysign
	.type	copysign, @function
copysign:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r2 = 0x0000000000000000 ll
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L536
	r2 = 0x0000000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__gtdf2
	if r0 s> 0 goto .L538
.L536:
	r2 = 0x0000000000000000 ll
	r1 = *(u64 *) (r10+-8)
	call	__gtdf2
	if r0 s<= 0 goto .L539
	r2 = 0x0000000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L539
.L538:
	r0 = *(u64 *) (r10+-8)
	r1 = -9223372036854775808 ll
	r0 ^= r1
	exit
.L539:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	copysign, .-copysign
	.align	3
	.global	memmem
	.type	memmem, @function
memmem:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u64 *) (r10+-40) = r3
	*(u64 *) (r10+-48) = r4
	r1 = *(u64 *) (r10+-32)
	r0 = *(u64 *) (r10+-48)
	r1 -= r0
	r0 = *(u64 *) (r10+-24)
	r0 += r1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-48)
	if r0 != 0 goto .L546
	r0 = *(u64 *) (r10+-24)
	exit
.L546:
	r2 = 1
	r0 = *(u64 *) (r10+-32)
	r1 = *(u64 *) (r10+-48)
	if r1 >= r0 goto .L548
	r2 = 0
.L548:
	r0 = r2;r0 &= 0xff
	if r0 == 0 goto .L549
	r0 = 0
	exit
.L549:
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	goto .L550
.L552:
	r0 = *(u64 *) (r10+-8)
	r0 = *(u8 *) (r0+0)
	r1 = r0
	r1 <<= 56
	r1 s>>= 56
	r0 = *(u64 *) (r10+-40)
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	if r1 != r0 goto .L551
	r0 = *(u64 *) (r10+-48)
	r0 += -1
	r2 = r0
	r0 = *(u64 *) (r10+-40)
	r0 += 1
	r1 = r0
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	r3 = r2
	r2 = r1
	r1 = r0
	call	memcmp
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L551
	r0 = *(u64 *) (r10+-8)
	exit
.L551:
	r0 = *(u64 *) (r10+-8)
	r0 += 1
	*(u64 *) (r10+-8) = r0
.L550:
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-16)
	if r1 > r0 goto .L552
	r0 = 0
	exit
	.size	memmem, .-memmem
	.align	3
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	*(u64 *) (r10+-24) = r3
	r3 = *(u64 *) (r10+-24)
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	memcpy
	r1 = *(u64 *) (r10+-24)
	r0 += r1
	exit
	.size	mempcpy, .-mempcpy
	.align	3
	.global	frexp
	.type	frexp, @function
frexp:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-24) = r2
	r0 = 0
	*(u32 *) (r10+-8) = r0
	r0 = 0
	*(u32 *) (r10+-4) = r0
	r2 = 0x0000000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L556
	r0 = *(u64 *) (r10+-16)
	r1 = -9223372036854775808 ll
	r0 ^= r1
	*(u64 *) (r10+-16) = r0
	r0 = 1
	*(u32 *) (r10+-4) = r0
.L556:
	r2 = 0x3ff0000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__gedf2
	if r0 s< 0 goto .L573
	goto .L560
.L561:
	r0 = *(u32 *) (r10+-8)
	r0 += 1
	*(u32 *) (r10+-8) = r0
	r2 = 0x4000000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__divdf3
	*(u64 *) (r10+-16) = r0
.L560:
	r2 = 0x3ff0000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__gedf2
	if r0 s>= 0 goto .L561
	goto .L562
.L573:
	r2 = 0x3fe0000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L562
	r2 = 0x0000000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__nedf2
	if r0 == 0 goto .L562
	goto .L565
.L566:
	r0 = *(u32 *) (r10+-8)
	r0 += -1
	*(u32 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r2 = r0
	r1 = r0
	call	__adddf3
	*(u64 *) (r10+-16) = r0
.L565:
	r2 = 0x3fe0000000000000 ll
	r1 = *(u64 *) (r10+-16)
	call	__ltdf2
	r1 = 0
	if r1 s>= r0 goto .L566
.L562:
	r0 = *(u64 *) (r10+-24)
	r1 = *(u32 *) (r10+-8)
	*(u32 *) (r0+0) = r1
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L567
	r0 = *(u64 *) (r10+-16)
	r1 = -9223372036854775808 ll
	r0 ^= r1
	*(u64 *) (r10+-16) = r0
.L567:
	r0 = *(u64 *) (r10+-16)
	exit
	.size	frexp, .-frexp
	.align	3
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = 0
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-16) = r0
	goto .L575
.L577:
	r0 = *(u64 *) (r10+-16)
	r0 &= 1
	if r0 == 0 goto .L576
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-32)
	r0 += r1
	*(u64 *) (r10+-8) = r0
.L576:
	r0 = *(u64 *) (r10+-32)
	r0 += r0
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-16)
	r0 >>= 1
	*(u64 *) (r10+-16) = r0
.L575:
	r0 = *(u64 *) (r10+-16)
	if r0 != 0 goto .L577
	r0 = *(u64 *) (r10+-8)
	exit
	.size	__muldi3, .-__muldi3
	.align	3
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	*(u32 *) (r10+-12) = r1
	*(u32 *) (r10+-16) = r2
	*(u64 *) (r10+-24) = r3
	r0 = 1
	*(u32 *) (r10+-4) = r0
	r0 = 0
	*(u32 *) (r10+-8) = r0
	goto .L580
.L582:
	r0 = *(u32 *) (r10+-16)
	r0 += r0
	*(u32 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-4)
	r0 += r0
	*(u32 *) (r10+-4) = r0
.L580:
	r1 = *(u32 *) (r10+-16)
	r0 = *(u32 *) (r10+-12)
	if r1 >= r0 goto .L583
	r0 = *(u32 *) (r10+-4)
	if r0 == 0 goto .L583
	r0 = *(u32 *) (r10+-16)
	r0 <<= 32
	r0 s>>= 32
	if r0 s>= 0 goto .L582
	goto .L583
.L585:
	r0 = *(u32 *) (r10+-12)
	r1 = *(u32 *) (r10+-16)
	if r1 >= r0 goto .L584
	r0 = *(u32 *) (r10+-12)
	r1 = *(u32 *) (r10+-16)
	r0 -= r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-4)
	r0 |= r1
	*(u32 *) (r10+-8) = r0
.L584:
	r0 = *(u32 *) (r10+-4)
	r0 >>= 1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-16)
	r0 >>= 1
	*(u32 *) (r10+-16) = r0
.L583:
	r0 = *(u32 *) (r10+-4)
	if r0 != 0 goto .L585
	r0 = *(u64 *) (r10+-24)
	if r0 == 0 goto .L586
	r0 = *(u32 *) (r10+-12)
	exit
.L586:
	r0 = *(u32 *) (r10+-8)
	exit
	.size	udivmodsi4, .-udivmodsi4
	.align	3
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	*(u8 *) (r10+-9) = r1
	r0 = *(u8 *) (r10+-9)
	r0 <<= 56
	r0 s>>= 56
	if r0 s>= 0 goto .L589
	r0 = *(u8 *) (r10+-9)
	r0 ^= -1
	*(u8 *) (r10+-9) = r0
.L589:
	r0 = *(u8 *) (r10+-9)
	r0 <<= 56
	r0 s>>= 56
	if r0 != 0 goto .L590
	r0 = 7
	exit
.L590:
	r0 = *(u8 *) (r10+-9)
	r0 <<= 24
	r0 <<= 32
	r0 s>>= 32
	r0 s>>= 24
	r0 = r0;r0 &= 0xffffffff
	r0 <<= 8
	r0 = r0;r0 &= 0xffffffff
	r1 = r0
	call	__clzdi2
	r0 = r0;r0 &= 0xffffffff
	r0 += -32
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 += -1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clrsbqi2, .-__clrsbqi2
	.align	3
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	*(u64 *) (r10+-16) = r1
	r0 = *(u64 *) (r10+-16)
	if r0 s>= 0 goto .L593
	r0 = *(u64 *) (r10+-16)
	r0 ^= -1
	*(u64 *) (r10+-16) = r0
.L593:
	r0 = *(u64 *) (r10+-16)
	if r0 != 0 goto .L594
	r0 = 63
	exit
.L594:
	r0 = *(u64 *) (r10+-16)
	r1 = r0
	call	__clzdi2
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 += -1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clrsbdi2, .-__clrsbdi2
	.align	3
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	*(u32 *) (r10+-12) = r1
	*(u32 *) (r10+-16) = r2
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L597
.L599:
	r0 = *(u32 *) (r10+-12)
	r0 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L598
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-16)
	r0 += r1
	*(u32 *) (r10+-4) = r0
.L598:
	r0 = *(u32 *) (r10+-12)
	r0 >>= 1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-16)
	r0 += r0
	*(u32 *) (r10+-16) = r0
.L597:
	r0 = *(u32 *) (r10+-12)
	if r0 != 0 goto .L599
	r0 = *(u32 *) (r10+-4)
	exit
	.size	__mulsi3, .-__mulsi3
	.align	3
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	*(u64 *) (r10+-40) = r1
	*(u64 *) (r10+-48) = r2
	*(u32 *) (r10+-52) = r3
	r0 = *(u32 *) (r10+-52)
	r0 >>= 3
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-52)
	r0 &= -8
	*(u32 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-24)
	r1 = *(u64 *) (r10+-32)
	if r1 >= r0 goto .L602
	r0 = *(u32 *) (r10+-52)
	r1 = *(u64 *) (r10+-32)
	r1 += r0
	r0 = *(u64 *) (r10+-24)
	if r1 > r0 goto .L609
.L602:
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L604
.L605:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 3
	r1 = *(u64 *) (r10+-48)
	r1 += r0
	r0 = *(u32 *) (r10+-4)
	r0 <<= 3
	r2 = r0
	r0 = *(u64 *) (r10+-40)
	r0 += r2
	r1 = *(u64 *) (r1+0)
	*(u64 *) (r0+0) = r1
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	*(u32 *) (r10+-4) = r0
.L604:
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-12)
	if r1 >= r0 goto .L605
	goto .L606
.L607:
	r1 = *(u32 *) (r10+-8)
	r0 = *(u64 *) (r10+-32)
	r0 += r1
	r2 = *(u32 *) (r10+-8)
	r1 = *(u64 *) (r10+-24)
	r1 += r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
	r0 = *(u32 *) (r10+-8)
	r0 += 1
	*(u32 *) (r10+-8) = r0
.L606:
	r1 = *(u32 *) (r10+-52)
	r0 = *(u32 *) (r10+-8)
	if r1 > r0 goto .L607
	goto .L608
.L610:
	r1 = *(u32 *) (r10+-52)
	r0 = *(u64 *) (r10+-32)
	r0 += r1
	r2 = *(u32 *) (r10+-52)
	r1 = *(u64 *) (r10+-24)
	r1 += r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
.L609:
	r0 = *(u32 *) (r10+-52)
	r1 = r0
	r1 += -1
	*(u32 *) (r10+-52) = r1
	if r0 != 0 goto .L610
	goto 0
.L608:
	goto 0
	exit
	.size	__cmovd, .-__cmovd
	.align	3
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	*(u64 *) (r10+-32) = r1
	*(u64 *) (r10+-40) = r2
	*(u32 *) (r10+-44) = r3
	r0 = *(u32 *) (r10+-44)
	r0 >>= 1
	*(u32 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-24)
	if r1 >= r0 goto .L612
	r0 = *(u32 *) (r10+-44)
	r1 = *(u64 *) (r10+-24)
	r1 += r0
	r0 = *(u64 *) (r10+-16)
	if r1 > r0 goto .L618
.L612:
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L614
.L615:
	r0 = *(u32 *) (r10+-4)
	r0 += r0
	r1 = r0
	r0 = *(u64 *) (r10+-40)
	r0 += r1
	r2 = r0
	r0 = *(u32 *) (r10+-4)
	r0 += r0
	r3 = r0
	r0 = *(u64 *) (r10+-32)
	r0 += r3
	r1 = r0
	r0 = *(u16 *) (r2+0)
	r0 <<= 48
	r0 s>>= 48
	*(u16 *) (r1+0) = r0
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	*(u32 *) (r10+-4) = r0
.L614:
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-8)
	if r1 >= r0 goto .L615
	r0 = *(u32 *) (r10+-44)
	r0 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L617
	r0 = *(u32 *) (r10+-44)
	r0 += -1
	r0 = r0;r0 &= 0xffffffff
	r1 = r0
	r0 = *(u64 *) (r10+-24)
	r0 += r1
	r1 = *(u32 *) (r10+-44)
	r1 += -1
	r1 = r1;r1 &= 0xffffffff
	r2 = r1
	r1 = *(u64 *) (r10+-16)
	r1 += r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
	goto .L617
.L619:
	r1 = *(u32 *) (r10+-44)
	r0 = *(u64 *) (r10+-24)
	r0 += r1
	r2 = *(u32 *) (r10+-44)
	r1 = *(u64 *) (r10+-16)
	r1 += r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
.L618:
	r0 = *(u32 *) (r10+-44)
	r1 = r0
	r1 += -1
	*(u32 *) (r10+-44) = r1
	if r0 != 0 goto .L619
	goto 0
.L617:
	goto 0
	exit
	.size	__cmovh, .-__cmovh
	.align	3
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	*(u64 *) (r10+-40) = r1
	*(u64 *) (r10+-48) = r2
	*(u32 *) (r10+-52) = r3
	r0 = *(u32 *) (r10+-52)
	r0 >>= 2
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-52)
	r0 &= -4
	*(u32 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-24)
	r1 = *(u64 *) (r10+-32)
	if r1 >= r0 goto .L621
	r0 = *(u32 *) (r10+-52)
	r1 = *(u64 *) (r10+-32)
	r1 += r0
	r0 = *(u64 *) (r10+-24)
	if r1 > r0 goto .L628
.L621:
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L623
.L624:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 2
	r1 = r0
	r0 = *(u64 *) (r10+-48)
	r0 += r1
	r1 = *(u32 *) (r10+-4)
	r1 <<= 2
	r2 = r1
	r1 = *(u64 *) (r10+-40)
	r1 += r2
	r0 = *(u32 *) (r0+0)
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r1+0) = r0
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	*(u32 *) (r10+-4) = r0
.L623:
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-12)
	if r1 >= r0 goto .L624
	goto .L625
.L626:
	r1 = *(u32 *) (r10+-8)
	r0 = *(u64 *) (r10+-32)
	r0 += r1
	r2 = *(u32 *) (r10+-8)
	r1 = *(u64 *) (r10+-24)
	r1 += r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
	r0 = *(u32 *) (r10+-8)
	r0 += 1
	*(u32 *) (r10+-8) = r0
.L625:
	r1 = *(u32 *) (r10+-52)
	r0 = *(u32 *) (r10+-8)
	if r1 > r0 goto .L626
	goto .L627
.L629:
	r1 = *(u32 *) (r10+-52)
	r0 = *(u64 *) (r10+-32)
	r0 += r1
	r2 = *(u32 *) (r10+-52)
	r1 = *(u64 *) (r10+-24)
	r1 += r2
	r0 = *(u8 *) (r0+0)
	r0 <<= 56
	r0 s>>= 56
	*(u8 *) (r1+0) = r0
.L628:
	r0 = *(u32 *) (r10+-52)
	r1 = r0
	r1 += -1
	*(u32 *) (r10+-52) = r1
	if r0 != 0 goto .L629
	goto 0
.L627:
	goto 0
	exit
	.size	__cmovw, .-__cmovw
	.align	3
	.global	__modi
	.type	__modi, @function
__modi:
	*(u32 *) (r10+-4) = r1
	*(u32 *) (r10+-8) = r2
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-8)
	r1 <<= 32
	r1 s>>= 32
	r2 = r1
	r1 = r0
	call	__moddi3
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__modi, .-__modi
	.align	3
	.global	__uitod
	.type	__uitod, @function
__uitod:
	*(u32 *) (r10+-4) = r1
	r1 = *(u32 *) (r10+-4)
	call	__bpf_floatunsidf
	exit
	.size	__uitod, .-__uitod
	.align	3
	.global	__uitof
	.type	__uitof, @function
__uitof:
	*(u32 *) (r10+-4) = r1
	r1 = *(u32 *) (r10+-4)
	call	__floatunsisf
	exit
	.size	__uitof, .-__uitof
	.align	3
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	*(u64 *) (r10+-8) = r1
	r1 = *(u64 *) (r10+-8)
	call	__floatundidf
	exit
	.size	__ulltod, .-__ulltod
	.align	3
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	*(u64 *) (r10+-8) = r1
	r1 = *(u64 *) (r10+-8)
	call	__floatundisf
	exit
	.size	__ulltof, .-__ulltof
	.align	3
	.global	__umodi
	.type	__umodi, @function
__umodi:
	*(u32 *) (r10+-4) = r1
	*(u32 *) (r10+-8) = r2
	r1 = *(u32 *) (r10+-4)
	r0 = *(u32 *) (r10+-8)
	r1 %= r0
	r0 = r1;r0 &= 0xffffffff
	exit
	.size	__umodi, .-__umodi
	.align	3
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	*(u16 *) (r10+-10) = r1
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L643
.L646:
	r0 = *(u16 *) (r10+-10)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u32 *) (r10+-4)
	r0 = 15
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L648
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	*(u32 *) (r10+-4) = r0
.L643:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 = 15
	if r1 s> r0 goto .L646
	goto .L645
.L648:
	goto 0
.L645:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzhi2, .-__clzhi2
	.align	3
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	*(u16 *) (r10+-10) = r1
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L650
.L653:
	r0 = *(u16 *) (r10+-10)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L655
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	*(u32 *) (r10+-4) = r0
.L650:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 = 15
	if r1 s> r0 goto .L653
	goto .L652
.L655:
	goto 0
.L652:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ctzhi2, .-__ctzhi2
	.align	3
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	*(u32 *) (r10+-4) = r1
	r2 = 0x47000000 ll
	r1 = *(u32 *) (r10+-4)
	call	__gesf2
	if r0 s< 0 goto .L661
	r2 = 0x47000000 ll
	r1 = *(u32 *) (r10+-4)
	call	__subsf3
	r1 = r0
	call	__fixsfdi
	r0 += 32768
	exit
.L661:
	r1 = *(u32 *) (r10+-4)
	call	__fixsfdi
	exit
	.size	__fixunssfsi, .-__fixunssfsi
	.align	3
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	*(u16 *) (r10+-10) = r1
	r0 = 0
	*(u32 *) (r10+-8) = r0
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L663
.L665:
	r0 = *(u16 *) (r10+-10)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L664
	r0 = *(u32 *) (r10+-8)
	r0 += 1
	*(u32 *) (r10+-8) = r0
.L664:
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	*(u32 *) (r10+-4) = r0
.L663:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 = 15
	if r1 s> r0 goto .L665
	r0 = *(u32 *) (r10+-8)
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__parityhi2, .-__parityhi2
	.align	3
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	*(u16 *) (r10+-10) = r1
	r0 = 0
	*(u32 *) (r10+-8) = r0
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L668
.L670:
	r0 = *(u16 *) (r10+-10)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L669
	r0 = *(u32 *) (r10+-8)
	r0 += 1
	*(u32 *) (r10+-8) = r0
.L669:
	r0 = *(u32 *) (r10+-4)
	r0 += 1
	*(u32 *) (r10+-4) = r0
.L668:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 = 15
	if r1 s> r0 goto .L670
	r0 = *(u32 *) (r10+-8)
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__popcounthi2, .-__popcounthi2
	.align	3
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	*(u32 *) (r10+-12) = r1
	*(u32 *) (r10+-16) = r2
	r0 = 0
	*(u32 *) (r10+-4) = r0
	goto .L673
.L675:
	r0 = *(u32 *) (r10+-12)
	r0 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L674
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-16)
	r0 += r1
	*(u32 *) (r10+-4) = r0
.L674:
	r0 = *(u32 *) (r10+-12)
	r0 >>= 1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-16)
	r0 += r0
	*(u32 *) (r10+-16) = r0
.L673:
	r0 = *(u32 *) (r10+-12)
	if r0 != 0 goto .L675
	r0 = *(u32 *) (r10+-4)
	exit
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	3
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	*(u32 *) (r10+-12) = r1
	*(u32 *) (r10+-16) = r2
	r0 = 0
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-12)
	if r0 != 0 goto .L680
	r0 = 0
	exit
.L682:
	r0 = *(u32 *) (r10+-16)
	r0 &= 1
	r0 = r0;r0 &= 0xffffffff
	if r0 == 0 goto .L681
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-4) = r0
.L681:
	r0 = *(u32 *) (r10+-12)
	r0 += r0
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-16)
	r0 >>= 1
	*(u32 *) (r10+-16) = r0
.L680:
	r0 = *(u32 *) (r10+-16)
	if r0 != 0 goto .L682
	r0 = *(u32 *) (r10+-4)
	exit
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	3
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	*(u32 *) (r10+-12) = r1
	*(u32 *) (r10+-16) = r2
	*(u32 *) (r10+-20) = r3
	r0 = 1
	*(u32 *) (r10+-4) = r0
	r0 = 0
	*(u32 *) (r10+-8) = r0
	goto .L684
.L686:
	r0 = *(u32 *) (r10+-16)
	r0 += r0
	*(u32 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-4)
	r0 += r0
	*(u32 *) (r10+-4) = r0
.L684:
	r1 = *(u32 *) (r10+-16)
	r0 = *(u32 *) (r10+-12)
	if r1 >= r0 goto .L687
	r0 = *(u32 *) (r10+-4)
	if r0 == 0 goto .L687
	r0 = *(u32 *) (r10+-16)
	r0 <<= 32
	r0 s>>= 32
	if r0 s>= 0 goto .L686
	goto .L687
.L689:
	r0 = *(u32 *) (r10+-12)
	r1 = *(u32 *) (r10+-16)
	if r1 >= r0 goto .L688
	r0 = *(u32 *) (r10+-12)
	r1 = *(u32 *) (r10+-16)
	r0 -= r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-4)
	r0 |= r1
	*(u32 *) (r10+-8) = r0
.L688:
	r0 = *(u32 *) (r10+-4)
	r0 >>= 1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-16)
	r0 >>= 1
	*(u32 *) (r10+-16) = r0
.L687:
	r0 = *(u32 *) (r10+-4)
	if r0 != 0 goto .L689
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L690
	r0 = *(u32 *) (r10+-12)
	exit
.L690:
	r0 = *(u32 *) (r10+-8)
	exit
	.size	__udivmodsi4, .-__udivmodsi4
	.align	3
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	*(u32 *) (r10+-4) = r1
	*(u32 *) (r10+-8) = r2
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-4)
	call	__ltsf2
	r1 = 0
	if r1 s< r0 goto .L700
	r0 = -1
	exit
.L700:
	r2 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-4)
	call	__gtsf2
	if r0 s<= 0 goto .L701
	r0 = 1
	exit
.L701:
	r0 = 0
	exit
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	3
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__ltdf2
	r1 = 0
	if r1 s< r0 goto .L710
	r0 = -1
	exit
.L710:
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__gtdf2
	if r0 s<= 0 goto .L711
	r0 = 1
	exit
.L711:
	r0 = 0
	exit
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	3
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r1 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-16)
	r1 *= r0
	r0 = r1
	exit
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	3
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r1 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-16)
	r1 *= r0
	r0 = r1
	exit
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	3
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	*(u32 *) (r10+-20) = r1
	*(u32 *) (r10+-24) = r2
	r0 = 0
	*(u32 *) (r10+-8) = r0
	r0 = 0
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-24)
	r0 <<= 32
	r0 s>>= 32
	if r0 s>= 0 goto .L717
	r0 = *(u32 *) (r10+-24)
	r0 = -r0
	*(u32 *) (r10+-24) = r0
	r0 = 1
	*(u32 *) (r10+-8) = r0
.L717:
	r0 = 0
	*(u8 *) (r10+-1) = r0
	goto .L718
.L721:
	r0 = *(u32 *) (r10+-24)
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L719
	r0 = *(u32 *) (r10+-12)
	r1 = *(u32 *) (r10+-20)
	r0 += r1
	*(u32 *) (r10+-12) = r0
.L719:
	r0 = *(u32 *) (r10+-20)
	r0 += r0
	*(u32 *) (r10+-20) = r0
	r0 = *(u32 *) (r10+-24)
	r0 <<= 32
	r0 s>>= 32
	r0 s>>= 1
	*(u32 *) (r10+-24) = r0
	r0 = *(u8 *) (r10+-1)
	r0 <<= 56
	r0 s>>= 56
	r0 &= 0xff
	r0 += 1
	r0 &= 0xff
	*(u8 *) (r10+-1) = r0
.L718:
	r0 = *(u32 *) (r10+-24)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L720
	r0 = *(u8 *) (r10+-1)
	r1 = 31
	if r1 > r0 goto .L721
.L720:
	r0 = *(u32 *) (r10+-8)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L722
	r0 = *(u32 *) (r10+-12)
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	exit
.L722:
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__mulhi3, .-__mulhi3
	.align	3
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = 0
	*(u32 *) (r10+-4) = r0
	r0 = *(u64 *) (r10+-24)
	if r0 s>= 0 goto .L726
	r0 = *(u64 *) (r10+-24)
	r0 = -r0
	*(u64 *) (r10+-24) = r0
	r0 = *(u32 *) (r10+-4)
	r0 += -1
	r0 >>= 63
	r0 &= 0xff
	*(u32 *) (r10+-4) = r0
.L726:
	r0 = *(u64 *) (r10+-32)
	if r0 s>= 0 goto .L727
	r0 = *(u64 *) (r10+-32)
	r0 = -r0
	*(u64 *) (r10+-32) = r0
	r0 = *(u32 *) (r10+-4)
	r0 += -1
	r0 >>= 63
	r0 &= 0xff
	*(u32 *) (r10+-4) = r0
.L727:
	r0 = *(u64 *) (r10+-32)
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u64 *) (r10+-24)
	r0 = r0;r0 &= 0xffffffff
	r3 = 0
	r2 = r1
	r1 = r0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L728
	r0 = *(u64 *) (r10+-16)
	r0 = -r0
	*(u64 *) (r10+-16) = r0
.L728:
	r0 = *(u64 *) (r10+-16)
	exit
	.size	__divsi3, .-__divsi3
	.align	3
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = 0
	*(u32 *) (r10+-4) = r0
	r0 = *(u64 *) (r10+-24)
	if r0 s>= 0 goto .L731
	r0 = *(u64 *) (r10+-24)
	r0 = -r0
	*(u64 *) (r10+-24) = r0
	r0 = 1
	*(u32 *) (r10+-4) = r0
.L731:
	r0 = *(u64 *) (r10+-32)
	if r0 s>= 0 goto .L732
	r0 = *(u64 *) (r10+-32)
	r0 = -r0
	*(u64 *) (r10+-32) = r0
.L732:
	r0 = *(u64 *) (r10+-32)
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u64 *) (r10+-24)
	r0 = r0;r0 &= 0xffffffff
	r3 = 1
	r2 = r1
	r1 = r0
	call	__udivmodsi4
	r0 = r0;r0 &= 0xffffffff
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L733
	r0 = *(u64 *) (r10+-16)
	r0 = -r0
	*(u64 *) (r10+-16) = r0
.L733:
	r0 = *(u64 *) (r10+-16)
	exit
	.size	__modsi3, .-__modsi3
	.align	3
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	*(u16 *) (r10+-10) = r1
	*(u16 *) (r10+-12) = r2
	*(u32 *) (r10+-16) = r3
	r0 = 1
	*(u16 *) (r10+-2) = r0
	r0 = 0
	*(u16 *) (r10+-4) = r0
	goto .L736
.L738:
	r0 = *(u16 *) (r10+-12)
	r0 += r0
	*(u16 *) (r10+-12) = r0
	r0 = *(u16 *) (r10+-2)
	r0 += r0
	*(u16 *) (r10+-2) = r0
.L736:
	r1 = *(u16 *) (r10+-12)
	r0 = *(u16 *) (r10+-10)
	if r1 >= r0 goto .L739
	r0 = *(u16 *) (r10+-2)
	if r0 == 0 goto .L739
	r0 = *(u16 *) (r10+-12)
	r0 <<= 48
	r0 s>>= 48
	if r0 s>= 0 goto .L738
	goto .L739
.L741:
	r0 = *(u16 *) (r10+-10)
	r1 = *(u16 *) (r10+-12)
	if r1 >= r0 goto .L740
	r0 = *(u16 *) (r10+-10)
	r1 = *(u16 *) (r10+-12)
	r0 -= r1
	*(u16 *) (r10+-10) = r0
	r0 = *(u16 *) (r10+-4)
	r1 = *(u16 *) (r10+-2)
	r0 |= r1
	*(u16 *) (r10+-4) = r0
.L740:
	r0 = *(u16 *) (r10+-2)
	r0 >>= 1
	*(u16 *) (r10+-2) = r0
	r0 = *(u16 *) (r10+-12)
	r0 >>= 1
	*(u16 *) (r10+-12) = r0
.L739:
	r0 = *(u16 *) (r10+-2)
	if r0 != 0 goto .L741
	r0 = *(u32 *) (r10+-16)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L742
	r0 = *(u16 *) (r10+-10)
	exit
.L742:
	r0 = *(u16 *) (r10+-4)
	exit
	.size	__udivmodhi4, .-__udivmodhi4
	.align	3
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	*(u32 *) (r10+-36) = r3
	r0 = 1
	*(u64 *) (r10+-8) = r0
	r0 = 0
	*(u64 *) (r10+-16) = r0
	goto .L745
.L747:
	r0 = *(u64 *) (r10+-32)
	r0 += r0
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-8)
	r0 += r0
	*(u64 *) (r10+-8) = r0
.L745:
	r1 = *(u64 *) (r10+-32)
	r0 = *(u64 *) (r10+-24)
	if r1 >= r0 goto .L748
	r0 = *(u64 *) (r10+-8)
	if r0 == 0 goto .L748
	r0 = *(u64 *) (r10+-32)
	r1 = 2147483648 ll
	r0 &= r1
	if r0 == 0 goto .L747
	goto .L748
.L750:
	r0 = *(u64 *) (r10+-24)
	r1 = *(u64 *) (r10+-32)
	if r1 >= r0 goto .L749
	r0 = *(u64 *) (r10+-24)
	r1 = *(u64 *) (r10+-32)
	r0 -= r1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	r0 |= r1
	*(u64 *) (r10+-16) = r0
.L749:
	r0 = *(u64 *) (r10+-8)
	r0 >>= 1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	r0 >>= 1
	*(u64 *) (r10+-32) = r0
.L748:
	r0 = *(u64 *) (r10+-8)
	if r0 != 0 goto .L750
	r0 = *(u32 *) (r10+-36)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L751
	r0 = *(u64 *) (r10+-24)
	exit
.L751:
	r0 = *(u64 *) (r10+-16)
	exit
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	3
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	*(u64 *) (r10+-32) = r1
	*(u32 *) (r10+-36) = r2
	r0 = 32
	*(u32 *) (r10+-4) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-36)
	r1 = *(u32 *) (r10+-4)
	r0 &= r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L754
	r0 = 0
	*(u32 *) (r10+-24) = r0
	r1 = *(u32 *) (r10+-16)
	r0 = *(u32 *) (r10+-36)
	r2 = *(u32 *) (r10+-4)
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 <<= r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r10+-20) = r0
	goto .L755
.L754:
	r0 = *(u32 *) (r10+-36)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L756
	r0 = *(u64 *) (r10+-32)
	exit
.L756:
	r1 = *(u32 *) (r10+-16)
	r0 = *(u32 *) (r10+-36)
	r1 <<= r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-36)
	r1 <<= r0
	r1 = r1;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-16)
	r0 = *(u32 *) (r10+-4)
	r3 = *(u32 *) (r10+-36)
	r0 -= r3
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r2 >>= r0
	r0 = r2;r0 &= 0xffffffff
	r1 |= r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r10+-20) = r0
.L755:
	r0 = *(u64 *) (r10+-24)
	exit
	.size	__ashldi3, .-__ashldi3
	.align	3
	.global	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
	*(u64 *) (r10+-56) = r1
	*(u64 *) (r10+-48) = r2
	*(u32 *) (r10+-60) = r3
	r0 = 64
	*(u32 *) (r10+-4) = r0
	r0 = *(u64 *) (r10+-56)
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-60)
	r1 = *(u32 *) (r10+-4)
	r0 &= r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L760
	r0 = 0
	*(u64 *) (r10+-40) = r0
	r1 = *(u64 *) (r10+-24)
	r0 = *(u32 *) (r10+-60)
	r2 = *(u32 *) (r10+-4)
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 <<= r0
	r0 = r1
	*(u64 *) (r10+-32) = r0
	goto .L761
.L760:
	r0 = *(u32 *) (r10+-60)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L762
	r1 = *(u64 *) (r10+-56)
	r0 = *(u64 *) (r10+-48)
	goto .L764
.L762:
	r0 = *(u64 *) (r10+-24)
	r1 = *(u32 *) (r10+-60)
	r0 <<= r1
	*(u64 *) (r10+-40) = r0
	r0 = *(u64 *) (r10+-16)
	r1 = r0
	r0 = *(u32 *) (r10+-60)
	r1 <<= r0
	r3 = *(u64 *) (r10+-24)
	r0 = *(u32 *) (r10+-4)
	r2 = *(u32 *) (r10+-60)
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r2 = r0;r2 &= 0xffffffff
	r0 = r3
	r0 >>= r2
	r1 |= r0
	r0 = r1
	*(u64 *) (r10+-32) = r0
.L761:
	r1 = *(u64 *) (r10+-40)
	r0 = *(u64 *) (r10+-32)
.L764:
	r2 = r1
	r3 = r0
	r0 = r2
	r1 = r3
	exit
	.size	__ashlti3, .-__ashlti3
	.align	3
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	*(u64 *) (r10+-32) = r1
	*(u32 *) (r10+-36) = r2
	r0 = 32
	*(u32 *) (r10+-4) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-36)
	r1 = *(u32 *) (r10+-4)
	r0 &= r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L766
	r0 = *(u32 *) (r10+-12)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u32 *) (r10+-4)
	r0 += -1
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r10+-20) = r0
	r0 = *(u32 *) (r10+-12)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u32 *) (r10+-36)
	r2 = *(u32 *) (r10+-4)
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
	goto .L767
.L766:
	r0 = *(u32 *) (r10+-36)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L768
	r0 = *(u64 *) (r10+-32)
	exit
.L768:
	r0 = *(u32 *) (r10+-12)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u32 *) (r10+-36)
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r10+-20) = r0
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r2 = *(u32 *) (r10+-36)
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 <<= r0
	r1 = r1;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-16)
	r0 = *(u32 *) (r10+-36)
	r2 >>= r0
	r0 = r2;r0 &= 0xffffffff
	r1 |= r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
.L767:
	r0 = *(u64 *) (r10+-24)
	exit
	.size	__ashrdi3, .-__ashrdi3
	.align	3
	.global	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
	*(u64 *) (r10+-56) = r1
	*(u64 *) (r10+-48) = r2
	*(u32 *) (r10+-60) = r3
	r0 = 64
	*(u32 *) (r10+-4) = r0
	r0 = *(u64 *) (r10+-56)
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-60)
	r1 = *(u32 *) (r10+-4)
	r0 &= r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L772
	r1 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r10+-4)
	r0 += -1
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	*(u64 *) (r10+-32) = r1
	r1 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r10+-60)
	r2 = *(u32 *) (r10+-4)
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	r0 = r1
	*(u64 *) (r10+-40) = r0
	goto .L773
.L772:
	r0 = *(u32 *) (r10+-60)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L774
	r1 = *(u64 *) (r10+-56)
	r0 = *(u64 *) (r10+-48)
	goto .L776
.L774:
	r1 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r10+-60)
	r0 <<= 32
	r0 s>>= 32
	r1 s>>= r0
	*(u64 *) (r10+-32) = r1
	r0 = *(u64 *) (r10+-16)
	r2 = r0
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-60)
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r0 = r2
	r0 <<= r1
	r1 = *(u64 *) (r10+-24)
	r2 = *(u32 *) (r10+-60)
	r1 >>= r2
	r0 |= r1
	*(u64 *) (r10+-40) = r0
.L773:
	r1 = *(u64 *) (r10+-40)
	r0 = *(u64 *) (r10+-32)
.L776:
	r2 = r1
	r3 = r0
	r0 = r2
	r1 = r3
	exit
	.size	__ashrti3, .-__ashrti3
	.align	3
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	*(u64 *) (r10+-8) = r1
	r0 = *(u64 *) (r10+-8)
	r0 >>= 56
	r1 = r0
	r0 = *(u64 *) (r10+-8)
	r0 >>= 40
	r0 &= 65280
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 >>= 24
	r0 &= 16711680
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 >>= 8
	r2 = 4278190080 ll
	r0 &= r2
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 8
	r2 = 1095216660480 ll
	r0 &= r2
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 24
	r2 = 280375465082880 ll
	r0 &= r2
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 40
	r2 = 71776119061217280 ll
	r0 &= r2
	r1 |= r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 56
	r1 |= r0
	r0 = r1
	exit
	.size	__bswapdi2, .-__bswapdi2
	.align	3
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	*(u32 *) (r10+-4) = r1
	r0 = *(u32 *) (r10+-4)
	r0 >>= 24
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r0 >>= 8
	r0 = r0;r0 &= 0xffffffff
	r0 &= 65280
	r0 = r0;r0 &= 0xffffffff
	r1 |= r0
	r1 = r1;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r0 <<= 8
	r0 = r0;r0 &= 0xffffffff
	r0 &= 16711680
	r0 = r0;r0 &= 0xffffffff
	r1 |= r0
	r1 = r1;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r0 <<= 24
	r0 = r0;r0 &= 0xffffffff
	r1 |= r0
	r0 = r1;r0 &= 0xffffffff
	exit
	.size	__bswapsi2, .-__bswapsi2
	.align	3
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	*(u32 *) (r10+-20) = r1
	r0 = *(u32 *) (r10+-20)
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	if r0 > 65535 goto .L782
	r0 = 16
	goto .L783
.L782:
	r0 = 0
.L783:
	*(u32 *) (r10+-8) = r0
	r1 = *(u32 *) (r10+-8)
	r0 = 16
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u32 *) (r10+-4)
	r1 = r0;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-8)
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 65280
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L784
	r0 = 8
	goto .L785
.L784:
	r0 = 0
.L785:
	*(u32 *) (r10+-8) = r0
	r1 = *(u32 *) (r10+-8)
	r0 = 8
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u32 *) (r10+-4)
	r1 = r0;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 240
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L786
	r0 = 4
	goto .L787
.L786:
	r0 = 0
.L787:
	*(u32 *) (r10+-8) = r0
	r1 = *(u32 *) (r10+-8)
	r0 = 4
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u32 *) (r10+-4)
	r1 = r0;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 12
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L788
	r0 = 2
	goto .L789
.L788:
	r0 = 0
.L789:
	*(u32 *) (r10+-8) = r0
	r1 = *(u32 *) (r10+-8)
	r0 = 2
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r2 = *(u32 *) (r10+-4)
	r1 = r0;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 2
	r0 = r0;r0 &= 0xffffffff
	r0 += -1
	r0 >>= 63
	r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r2 = 2
	r2 -= r0
	r0 = r2;r0 &= 0xffffffff
	r1 *= r0
	r1 = r1;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-12)
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzsi2, .-__clzsi2
	.align	3
	.global	__clzti2
	.type	__clzti2, @function
__clzti2:
	*(u64 *) (r10+-40) = r1
	*(u64 *) (r10+-32) = r2
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-16)
	r1 = 1
	if r0 == 0 goto .L792
	r1 = 0
.L792:
	r0 = r1;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	*(u64 *) (r10+-8) = r0
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-8)
	r0 ^= -1
	r1 &= r0
	r2 = r1
	r0 = *(u64 *) (r10+-24)
	r1 = *(u64 *) (r10+-8)
	r0 &= r1
	r1 = r2
	r1 |= r0
	call	__clzdi2
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u64 *) (r10+-8)
	r0 <<= 32
	r0 s>>= 32
	r0 &= 64
	r0 <<= 32
	r0 s>>= 32
	r1 += r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__clzti2, .-__clzti2
	.align	3
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-4)
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	if r1 s>= r0 goto .L795
	r0 = 0
	exit
.L795:
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r1 = *(u32 *) (r10+-12)
	r1 <<= 32
	r1 s>>= 32
	if r1 s> r0 goto .L797
	r0 = 2
	exit
.L797:
	r1 = *(u32 *) (r10+-8)
	r0 = *(u32 *) (r10+-16)
	if r1 >= r0 goto .L798
	r0 = 0
	exit
.L798:
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-16)
	if r1 > r0 goto .L799
	r0 = 2
	exit
.L799:
	r0 = 1
	exit
	.size	__cmpdi2, .-__cmpdi2
	.align	3
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r2 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	call	__cmpdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += -1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	3
	.global	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
	*(u64 *) (r10+-48) = r1
	*(u64 *) (r10+-40) = r2
	*(u64 *) (r10+-64) = r3
	*(u64 *) (r10+-56) = r4
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-64)
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-56)
	*(u64 *) (r10+-24) = r0
	r1 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-24)
	if r1 s>= r0 goto .L804
	r0 = 0
	exit
.L804:
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-24)
	if r1 s> r0 goto .L806
	r0 = 2
	exit
.L806:
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-32)
	if r1 >= r0 goto .L807
	r0 = 0
	exit
.L807:
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-32)
	if r1 > r0 goto .L808
	r0 = 2
	exit
.L808:
	r0 = 1
	exit
	.size	__cmpti2, .-__cmpti2
	.align	3
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	*(u32 *) (r10+-20) = r1
	r0 = *(u32 *) (r10+-20)
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 65535
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L811
	r0 = 16
	goto .L812
.L811:
	r0 = 0
.L812:
	*(u32 *) (r10+-8) = r0
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-8)
	r0 >>= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-8)
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 255
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L813
	r0 = 8
	goto .L814
.L813:
	r0 = 0
.L814:
	*(u32 *) (r10+-8) = r0
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-8)
	r0 >>= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 15
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L815
	r0 = 4
	goto .L816
.L815:
	r0 = 0
.L816:
	*(u32 *) (r10+-8) = r0
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-8)
	r0 >>= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 3
	r0 = r0;r0 &= 0xffffffff
	if r0 != 0 goto .L817
	r0 = 2
	goto .L818
.L817:
	r0 = 0
.L818:
	*(u32 *) (r10+-8) = r0
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-8)
	r0 >>= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 3
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-4)
	r0 ^= -1
	r0 = r0;r0 &= 0xffffffff
	r0 &= 1
	r2 = r0;r2 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r0 >>= 1
	r0 = r0;r0 &= 0xffffffff
	r1 = 2
	r1 -= r0
	r1 = r1;r1 &= 0xffffffff
	r0 = r2
	r0 = -r0
	r0 &= r1
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-12)
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ctzsi2, .-__ctzsi2
	.align	3
	.global	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
	*(u64 *) (r10+-40) = r1
	*(u64 *) (r10+-32) = r2
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-24)
	r1 = 1
	if r0 == 0 goto .L821
	r1 = 0
.L821:
	r0 = r1;r0 &= 0xff
	r0 <<= 32
	r0 s>>= 32
	r0 = -r0
	r0 <<= 32
	r0 s>>= 32
	*(u64 *) (r10+-8) = r0
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-8)
	r1 &= r0
	r2 = r1
	r0 = *(u64 *) (r10+-24)
	r1 = *(u64 *) (r10+-8)
	r1 ^= -1
	r0 &= r1
	r1 = r2
	r1 |= r0
	call	__ctzdi2
	r1 = r0
	r1 <<= 32
	r1 s>>= 32
	r0 = *(u64 *) (r10+-8)
	r0 <<= 32
	r0 s>>= 32
	r0 &= 64
	r0 <<= 32
	r0 s>>= 32
	r1 += r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ctzti2, .-__ctzti2
	.align	3
	.global	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
	*(u64 *) (r10+-32) = r1
	*(u64 *) (r10+-24) = r2
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	if r0 != 0 goto .L824
	r0 = *(u64 *) (r10+-8)
	if r0 != 0 goto .L825
	r0 = 0
	exit
.L825:
	r0 = *(u64 *) (r10+-8)
	r1 = r0
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r0 += 65
	r0 = r0;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	exit
.L824:
	r0 = *(u64 *) (r10+-16)
	r1 = r0
	call	__ctzdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += 1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__ffsti2, .-__ffsti2
	.align	3
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	*(u64 *) (r10+-32) = r1
	*(u32 *) (r10+-36) = r2
	r0 = 32
	*(u32 *) (r10+-4) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-36)
	r1 = *(u32 *) (r10+-4)
	r0 &= r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L829
	r0 = 0
	*(u32 *) (r10+-20) = r0
	r1 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-36)
	r2 = *(u32 *) (r10+-4)
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 >>= r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
	goto .L830
.L829:
	r0 = *(u32 *) (r10+-36)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L831
	r0 = *(u64 *) (r10+-32)
	exit
.L831:
	r1 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-36)
	r1 >>= r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-20) = r0
	r1 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-4)
	r2 = *(u32 *) (r10+-36)
	r0 -= r2
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 <<= r0
	r1 = r1;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-16)
	r0 = *(u32 *) (r10+-36)
	r2 >>= r0
	r0 = r2;r0 &= 0xffffffff
	r1 |= r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
.L830:
	r0 = *(u64 *) (r10+-24)
	exit
	.size	__lshrdi3, .-__lshrdi3
	.align	3
	.global	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
	*(u64 *) (r10+-56) = r1
	*(u64 *) (r10+-48) = r2
	*(u32 *) (r10+-60) = r3
	r0 = 64
	*(u32 *) (r10+-4) = r0
	r1 = *(u64 *) (r10+-56)
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-60)
	r1 = *(u32 *) (r10+-4)
	r0 &= r1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L835
	r0 = 0
	*(u64 *) (r10+-32) = r0
	r2 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r10+-60)
	r1 = *(u32 *) (r10+-4)
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r0 = r2
	r0 >>= r1
	*(u64 *) (r10+-40) = r0
	goto .L836
.L835:
	r0 = *(u32 *) (r10+-60)
	r0 <<= 32
	r0 s>>= 32
	if r0 != 0 goto .L837
	r1 = *(u64 *) (r10+-56)
	r0 = *(u64 *) (r10+-48)
	goto .L839
.L837:
	r0 = *(u64 *) (r10+-16)
	r1 = *(u32 *) (r10+-60)
	r0 >>= r1
	*(u64 *) (r10+-32) = r0
	r2 = *(u64 *) (r10+-16)
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-60)
	r0 -= r1
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r0 = r2
	r0 <<= r1
	r1 = *(u64 *) (r10+-24)
	r2 = *(u32 *) (r10+-60)
	r1 >>= r2
	r0 |= r1
	*(u64 *) (r10+-40) = r0
.L836:
	r3 = *(u64 *) (r10+-40)
	r2 = *(u64 *) (r10+-32)
	r1 = r3
	r0 = r2
.L839:
	r2 = r1
	r3 = r0
	r0 = r2
	r1 = r3
	exit
	.size	__lshrti3, .-__lshrti3
	.align	3
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	*(u32 *) (r10+-28) = r1
	*(u32 *) (r10+-32) = r2
	r0 = 16
	*(u32 *) (r10+-4) = r0
	r1 = *(u32 *) (r10+-4)
	r0 = 4294967295 ll
	r0 >>= r1
	*(u32 *) (r10+-8) = r0
	r1 = *(u32 *) (r10+-28)
	r0 = *(u32 *) (r10+-8)
	r1 &= r0
	r1 = r1;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-32)
	r0 = *(u32 *) (r10+-8)
	r2 &= r0
	r0 = r2;r0 &= 0xffffffff
	r1 *= r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
	r0 = *(u32 *) (r10+-24)
	r1 = *(u32 *) (r10+-4)
	r0 >>= r1
	*(u32 *) (r10+-12) = r0
	r1 = *(u32 *) (r10+-24)
	r0 = *(u32 *) (r10+-8)
	r1 &= r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
	r1 = *(u32 *) (r10+-28)
	r0 = *(u32 *) (r10+-4)
	r1 >>= r0
	r1 = r1;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-32)
	r0 = *(u32 *) (r10+-8)
	r2 &= r0
	r0 = r2;r0 &= 0xffffffff
	r1 *= r0
	r0 = r1;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r1 = *(u32 *) (r10+-24)
	r2 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-8)
	r2 &= r0
	r2 = r2;r2 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r2 <<= r0
	r0 = r2;r0 &= 0xffffffff
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
	r1 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-4)
	r1 >>= r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r10+-20) = r0
	r0 = *(u32 *) (r10+-24)
	r1 = *(u32 *) (r10+-4)
	r0 >>= r1
	*(u32 *) (r10+-12) = r0
	r1 = *(u32 *) (r10+-24)
	r0 = *(u32 *) (r10+-8)
	r1 &= r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
	r1 = *(u32 *) (r10+-32)
	r0 = *(u32 *) (r10+-4)
	r1 >>= r0
	r1 = r1;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-28)
	r0 = *(u32 *) (r10+-8)
	r2 &= r0
	r0 = r2;r0 &= 0xffffffff
	r1 *= r0
	r0 = r1;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r1 = *(u32 *) (r10+-24)
	r2 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-8)
	r2 &= r0
	r2 = r2;r2 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r2 <<= r0
	r0 = r2;r0 &= 0xffffffff
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	*(u32 *) (r10+-24) = r0
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-12)
	r0 = *(u32 *) (r10+-4)
	r2 >>= r0
	r0 = r2;r0 &= 0xffffffff
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r10+-20) = r0
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r2 = *(u32 *) (r10+-28)
	r0 = *(u32 *) (r10+-4)
	r2 >>= r0
	r2 = r2;r2 &= 0xffffffff
	r3 = *(u32 *) (r10+-32)
	r0 = *(u32 *) (r10+-4)
	r3 >>= r0
	r0 = r3;r0 &= 0xffffffff
	r2 *= r0
	r0 = r2;r0 &= 0xffffffff
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r10+-20) = r0
	r0 = *(u64 *) (r10+-24)
	exit
	.size	__muldsi3, .-__muldsi3
	.align	3
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	*(u64 *) (r10+-32) = r1
	*(u64 *) (r10+-40) = r2
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-16) = r0
	r1 = *(u32 *) (r10+-16)
	r0 = *(u32 *) (r10+-8)
	r2 = r1
	r1 = r0
	call	__muldsi3
	*(u64 *) (r10+-24) = r0
	r0 = *(u32 *) (r10+-20)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r0 <<= 32
	r0 s>>= 32
	r2 = r0;r2 &= 0xffffffff
	r0 = *(u32 *) (r10+-16)
	r2 *= r0
	r2 = r2;r2 &= 0xffffffff
	r3 = *(u32 *) (r10+-8)
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r3 *= r0
	r0 = r3;r0 &= 0xffffffff
	r2 += r0
	r0 = r2;r0 &= 0xffffffff
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	*(u32 *) (r10+-20) = r0
	r0 = *(u64 *) (r10+-24)
	exit
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	3
	.global	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
	*(u64 *) (r10+-48) = r1
	*(u64 *) (r10+-56) = r2
	r0 = 32
	*(u32 *) (r10+-4) = r0
	r1 = *(u32 *) (r10+-4)
	r0 = -1
	r0 >>= r1
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-48)
	r1 = *(u64 *) (r10+-16)
	r0 &= r1
	r1 = *(u64 *) (r10+-56)
	r2 = *(u64 *) (r10+-16)
	r1 &= r2
	r0 *= r1
	*(u64 *) (r10+-40) = r0
	r0 = *(u64 *) (r10+-40)
	r1 = *(u32 *) (r10+-4)
	r0 >>= r1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-40)
	r1 = *(u64 *) (r10+-16)
	r0 &= r1
	*(u64 *) (r10+-40) = r0
	r0 = *(u32 *) (r10+-4)
	r1 = *(u64 *) (r10+-48)
	r1 >>= r0
	r0 = *(u64 *) (r10+-56)
	r2 = *(u64 *) (r10+-16)
	r0 &= r2
	r1 *= r0
	r0 = *(u64 *) (r10+-24)
	r0 += r1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-40)
	r1 = *(u64 *) (r10+-24)
	r2 = *(u64 *) (r10+-16)
	r1 &= r2
	r2 = *(u32 *) (r10+-4)
	r1 <<= r2
	r0 += r1
	*(u64 *) (r10+-40) = r0
	r0 = *(u32 *) (r10+-4)
	r1 = *(u64 *) (r10+-24)
	r1 >>= r0
	r0 = r1
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-40)
	r1 = *(u32 *) (r10+-4)
	r0 >>= r1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-40)
	r1 = *(u64 *) (r10+-16)
	r0 &= r1
	*(u64 *) (r10+-40) = r0
	r0 = *(u32 *) (r10+-4)
	r1 = *(u64 *) (r10+-56)
	r1 >>= r0
	r0 = *(u64 *) (r10+-48)
	r2 = *(u64 *) (r10+-16)
	r0 &= r2
	r1 *= r0
	r0 = *(u64 *) (r10+-24)
	r0 += r1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-40)
	r1 = *(u64 *) (r10+-24)
	r2 = *(u64 *) (r10+-16)
	r1 &= r2
	r2 = *(u32 *) (r10+-4)
	r1 <<= r2
	r0 += r1
	*(u64 *) (r10+-40) = r0
	r0 = *(u64 *) (r10+-32)
	r2 = r0
	r1 = *(u32 *) (r10+-4)
	r0 = *(u64 *) (r10+-24)
	r0 >>= r1
	r1 = r2
	r1 += r0
	r0 = r1
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-32)
	r3 = r0
	r1 = *(u32 *) (r10+-4)
	r0 = *(u64 *) (r10+-48)
	r0 >>= r1
	r2 = *(u32 *) (r10+-4)
	r1 = *(u64 *) (r10+-56)
	r1 >>= r2
	r0 *= r1
	r1 = r3
	r1 += r0
	r0 = r1
	*(u64 *) (r10+-32) = r0
	r2 = *(u64 *) (r10+-40)
	r1 = *(u64 *) (r10+-32)
	r0 = r2
	r3 = r1
	r1 = r3
	exit
	.size	__mulddi3, .-__mulddi3
	.align	3
	.global	__multi3
	.type	__multi3, @function
__multi3:
	*(u64 *) (r10+-64) = r1
	*(u64 *) (r10+-56) = r2
	*(u64 *) (r10+-80) = r3
	*(u64 *) (r10+-72) = r4
	r0 = *(u64 *) (r10+-64)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-56)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-80)
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-72)
	*(u64 *) (r10+-24) = r0
	r1 = *(u64 *) (r10+-32)
	r0 = *(u64 *) (r10+-16)
	r2 = r1
	r1 = r0
	call	__mulddi3
	r2 = r0
	r3 = r1
	*(u64 *) (r10+-48) = r2
	*(u64 *) (r10+-40) = r3
	r0 = *(u64 *) (r10+-40)
	r2 = r0
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-32)
	r0 *= r1
	r1 = *(u64 *) (r10+-16)
	r3 = *(u64 *) (r10+-24)
	r1 *= r3
	r0 += r1
	r1 = r2
	r1 += r0
	r0 = r1
	*(u64 *) (r10+-40) = r0
	r2 = *(u64 *) (r10+-48)
	r1 = *(u64 *) (r10+-40)
	r0 = r2
	r3 = r1
	r1 = r3
	exit
	.size	__multi3, .-__multi3
	.align	3
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	*(u64 *) (r10+-8) = r1
	r0 = *(u64 *) (r10+-8)
	r0 = -r0
	exit
	.size	__negdi2, .-__negdi2
	.align	3
	.global	__negti2
	.type	__negti2, @function
__negti2:
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r2
	r4 = *(u64 *) (r10+-16)
	r3 = *(u64 *) (r10+-8)
	r2 = 0
	r5 = 0
	r1 = r2
	r1 -= r4
	r4 = 1
	if r1 > r2 goto .L851
	r4 = 0
.L851:
	r0 = r5
	r0 -= r3
	r0 -= r4
	r5 = r1
	r4 = r0
	r3 = r5
	r2 = r4
	r0 = r3
	r1 = r2
	exit
	.size	__negti2, .-__negti2
	.align	3
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	*(u64 *) (r10+-24) = r1
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-16)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 16
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 8
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 4
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 15
	r0 = r0;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	r1 = 27030
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__paritydi2, .-__paritydi2
	.align	3
	.global	__parityti2
	.type	__parityti2, @function
__parityti2:
	*(u64 *) (r10+-48) = r1
	*(u64 *) (r10+-40) = r2
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-16)
	r1 = r0
	r0 = *(u64 *) (r10+-24)
	r1 ^= r0
	r0 = r1
	*(u64 *) (r10+-32) = r0
	r0 = *(u32 *) (r10+-28)
	r0 <<= 32
	r0 s>>= 32
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-32)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 16
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 8
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 4
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 15
	r0 = r0;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	r1 = 27030
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__parityti2, .-__parityti2
	.align	3
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	*(u32 *) (r10+-12) = r1
	r0 = *(u32 *) (r10+-12)
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 16
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 8
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 4
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 ^= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 &= 15
	r0 = r0;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	r1 = 27030
	r1 s>>= r0
	r0 = r1
	r0 <<= 32
	r0 s>>= 32
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__paritysi2, .-__paritysi2
	.align	3
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	*(u64 *) (r10+-24) = r1
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 >>= 1
	r1 = r0
	r0 = 6148914691236517205 ll
	r1 &= r0
	r0 = *(u64 *) (r10+-8)
	r0 -= r1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 >>= 2
	r1 = 3689348814741910323 ll
	r0 &= r1
	r1 = *(u64 *) (r10+-8)
	r2 = 3689348814741910323 ll
	r1 &= r2
	r0 += r1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 >>= 4
	r1 = *(u64 *) (r10+-8)
	r0 += r1
	r1 = 1085102592571150095 ll
	r0 &= r1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u64 *) (r10+-8)
	r1 >>= 32
	r1 = r1;r1 &= 0xffffffff
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-12)
	r0 >>= 16
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-12)
	r0 += r1
	*(u32 *) (r10+-12) = r0
	r0 = *(u32 *) (r10+-12)
	r0 >>= 8
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-12)
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	r0 &= 127
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__popcountdi2, .-__popcountdi2
	.align	3
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	*(u32 *) (r10+-12) = r1
	r0 = *(u32 *) (r10+-12)
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 1
	r0 = r0;r0 &= 0xffffffff
	r0 &= 1431655765
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r0 -= r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 2
	r0 = r0;r0 &= 0xffffffff
	r0 &= 858993459
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r1 &= 858993459
	r1 = r1;r1 &= 0xffffffff
	r0 += r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 4
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 &= 252645135
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 16
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-4)
	r0 += r1
	*(u32 *) (r10+-4) = r0
	r0 = *(u32 *) (r10+-4)
	r0 >>= 8
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-4)
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	r0 &= 63
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__popcountsi2, .-__popcountsi2
	.align	3
	.global	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
	*(u64 *) (r10+-48) = r1
	*(u64 *) (r10+-40) = r2
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 63
	r1 = r0
	r0 = *(u64 *) (r10+-16)
	r0 >>= 1
	r1 |= r0
	r0 = r1
	r1 = *(u64 *) (r10+-8)
	r1 >>= 1
	r2 = 6148914691236517205 ll
	r0 &= r2
	r5 = r0
	r0 = 6148914691236517205 ll
	r1 &= r0
	r3 = r1
	r2 = *(u64 *) (r10+-16)
	r4 = *(u64 *) (r10+-8)
	r1 = r2
	r1 -= r5
	r5 = 1
	if r1 > r2 goto .L864
	r5 = 0
.L864:
	r0 = r4
	r0 -= r3
	r0 -= r5
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 62
	r1 = r0
	r0 = *(u64 *) (r10+-16)
	r0 >>= 2
	r1 |= r0
	r0 = r1
	r1 = *(u64 *) (r10+-8)
	r1 >>= 2
	r3 = 3689348814741910323 ll
	r0 &= r3
	r2 = r0
	r0 = 3689348814741910323 ll
	r1 &= r0
	r4 = r1
	r1 = *(u64 *) (r10+-16)
	r0 = 3689348814741910323 ll
	r1 &= r0
	r5 = r1
	r1 = *(u64 *) (r10+-8)
	r0 = 3689348814741910323 ll
	r1 &= r0
	r3 = r1
	r1 = r2
	r1 += r5
	r5 = 1
	if r2 >= r1 goto .L865
	r5 = 0
.L865:
	r0 = r4
	r0 += r3
	r2 = r5
	r2 += r0
	r0 = r2
	*(u64 *) (r10+-16) = r1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-8)
	r0 <<= 60
	r1 = r0
	r0 = *(u64 *) (r10+-16)
	r0 >>= 4
	r1 |= r0
	r0 = r1
	r1 = *(u64 *) (r10+-8)
	r1 >>= 4
	r4 = r1
	r5 = *(u64 *) (r10+-16)
	r3 = *(u64 *) (r10+-8)
	r2 = r0
	r2 += r5
	r5 = 1
	if r0 >= r2 goto .L866
	r5 = 0
.L866:
	r1 = r4
	r1 += r3
	r0 = r5
	r0 += r1
	r1 = r0
	r0 = r2
	r3 = r1
	r1 = 1085102592571150095 ll
	r0 &= r1
	*(u64 *) (r10+-16) = r0
	r1 = 1085102592571150095 ll
	r0 = r3
	r0 &= r1
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-8)
	r1 >>= 0
	r0 += r1
	*(u64 *) (r10+-24) = r0
	r0 = *(u64 *) (r10+-24)
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u64 *) (r10+-24)
	r1 >>= 32
	r1 = r1;r1 &= 0xffffffff
	r0 += r1
	*(u32 *) (r10+-28) = r0
	r0 = *(u32 *) (r10+-28)
	r0 >>= 16
	r0 = r0;r0 &= 0xffffffff
	r1 = *(u32 *) (r10+-28)
	r0 += r1
	*(u32 *) (r10+-28) = r0
	r0 = *(u32 *) (r10+-28)
	r0 >>= 8
	r1 = r0;r1 &= 0xffffffff
	r0 = *(u32 *) (r10+-28)
	r1 += r0
	r0 = r1;r0 &= 0xffffffff
	r0 <<= 32
	r0 s>>= 32
	r0 &= 255
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__popcountti2, .-__popcountti2
	.align	3
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	*(u64 *) (r10+-24) = r1
	*(u32 *) (r10+-28) = r2
	r0 = *(u32 *) (r10+-28)
	r0 >>= 31
	r0 &= 0xff
	*(u32 *) (r10+-12) = r0
	r0 = 0x3ff0000000000000 ll
	*(u64 *) (r10+-8) = r0
.L872:
	r0 = *(u32 *) (r10+-28)
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L869
	r2 = *(u64 *) (r10+-24)
	r1 = *(u64 *) (r10+-8)
	call	__muldf3
	*(u64 *) (r10+-8) = r0
.L869:
	r0 = *(u32 *) (r10+-28)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0
	r1 >>= 63
	r1 += r0
	r0 = r1
	r0 s>>= 1
	*(u32 *) (r10+-28) = r0
	r0 = *(u32 *) (r10+-28)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L877
	r2 = *(u64 *) (r10+-24)
	r1 = *(u64 *) (r10+-24)
	call	__muldf3
	*(u64 *) (r10+-24) = r0
	goto .L872
.L877:
	goto 0
	r0 = *(u32 *) (r10+-12)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L873
	r2 = *(u64 *) (r10+-8)
	r1 = 0x3ff0000000000000 ll
	call	__divdf3
	exit
.L873:
	r0 = *(u64 *) (r10+-8)
	exit
	.size	__powidf2, .-__powidf2
	.align	3
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	*(u32 *) (r10+-12) = r1
	*(u32 *) (r10+-16) = r2
	r0 = *(u32 *) (r10+-16)
	r0 >>= 31
	r0 &= 0xff
	*(u32 *) (r10+-8) = r0
	r0 = 0x3f800000 ll
	*(u32 *) (r10+-4) = r0
.L882:
	r0 = *(u32 *) (r10+-16)
	r0 &= 1
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L879
	r2 = *(u32 *) (r10+-12)
	r1 = *(u32 *) (r10+-4)
	call	__mulsf3
	*(u32 *) (r10+-4) = r0
.L879:
	r0 = *(u32 *) (r10+-16)
	r0 <<= 32
	r0 s>>= 32
	r1 = r0
	r1 >>= 63
	r1 += r0
	r0 = r1
	r0 s>>= 1
	*(u32 *) (r10+-16) = r0
	r0 = *(u32 *) (r10+-16)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L887
	r2 = *(u32 *) (r10+-12)
	r1 = *(u32 *) (r10+-12)
	call	__mulsf3
	*(u32 *) (r10+-12) = r0
	goto .L882
.L887:
	goto 0
	r0 = *(u32 *) (r10+-8)
	r0 <<= 32
	r0 s>>= 32
	if r0 == 0 goto .L883
	r2 = *(u32 *) (r10+-4)
	r1 = 0x3f800000 ll
	call	__divsf3
	exit
.L883:
	r0 = *(u32 *) (r10+-4)
	exit
	.size	__powisf2, .-__powisf2
	.align	3
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	*(u64 *) (r10+-24) = r1
	*(u64 *) (r10+-32) = r2
	r0 = *(u64 *) (r10+-24)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-32)
	*(u64 *) (r10+-16) = r0
	r1 = *(u32 *) (r10+-4)
	r0 = *(u32 *) (r10+-12)
	if r1 >= r0 goto .L889
	r0 = 0
	exit
.L889:
	r0 = *(u32 *) (r10+-4)
	r1 = *(u32 *) (r10+-12)
	if r1 > r0 goto .L891
	r0 = 2
	exit
.L891:
	r1 = *(u32 *) (r10+-8)
	r0 = *(u32 *) (r10+-16)
	if r1 >= r0 goto .L892
	r0 = 0
	exit
.L892:
	r0 = *(u32 *) (r10+-8)
	r1 = *(u32 *) (r10+-16)
	if r1 > r0 goto .L893
	r0 = 2
	exit
.L893:
	r0 = 1
	exit
	.size	__ucmpdi2, .-__ucmpdi2
	.align	3
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	*(u64 *) (r10+-8) = r1
	*(u64 *) (r10+-16) = r2
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-8)
	r2 = r1
	r1 = r0
	call	__ucmpdi2
	r0 <<= 32
	r0 s>>= 32
	r0 += -1
	r0 <<= 32
	r0 s>>= 32
	exit
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	3
	.global	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	*(u64 *) (r10+-48) = r1
	*(u64 *) (r10+-40) = r2
	*(u64 *) (r10+-64) = r3
	*(u64 *) (r10+-56) = r4
	r0 = *(u64 *) (r10+-48)
	*(u64 *) (r10+-16) = r0
	r0 = *(u64 *) (r10+-40)
	*(u64 *) (r10+-8) = r0
	r0 = *(u64 *) (r10+-64)
	*(u64 *) (r10+-32) = r0
	r0 = *(u64 *) (r10+-56)
	*(u64 *) (r10+-24) = r0
	r1 = *(u64 *) (r10+-8)
	r0 = *(u64 *) (r10+-24)
	if r1 >= r0 goto .L898
	r0 = 0
	exit
.L898:
	r0 = *(u64 *) (r10+-8)
	r1 = *(u64 *) (r10+-24)
	if r1 > r0 goto .L900
	r0 = 2
	exit
.L900:
	r1 = *(u64 *) (r10+-16)
	r0 = *(u64 *) (r10+-32)
	if r1 >= r0 goto .L901
	r0 = 0
	exit
.L901:
	r0 = *(u64 *) (r10+-16)
	r1 = *(u64 *) (r10+-32)
	if r1 > r0 goto .L902
	r0 = 2
	exit
.L902:
	r0 = 1
	exit
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
	.global	__divsf3
	.global	__ctzdi2
	.global	__fixsfdi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__bpf_floatunsidf
	.global	__clzdi2
	.global	__divdf3
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
