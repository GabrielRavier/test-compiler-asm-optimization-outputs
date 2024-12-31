	.file	"mini-libc.c"
	.pred.safe_across_calls p1-p5,p16-p63
	.text
	.align 16
	.global make_ti#
	.type	make_ti#, @function
	.proc make_ti#
make_ti:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r0
	mov r15 = r0
	;;
	mov r15 = r32
	mov r14 = r33
	;;
	mov r8 = r14
	mov r9 = r15
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp make_ti#
	.align 16
	.global make_tu#
	.type	make_tu#, @function
	.proc make_tu#
make_tu:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r0
	mov r15 = r0
	;;
	mov r15 = r32
	mov r14 = r33
	;;
	mov r8 = r14
	mov r9 = r15
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp make_tu#
	.align 16
	.global memmove#
	.type	memmove#, @function
	.proc memmove#
memmove:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	cmp.geu p6, p7 = r33, r8
	(p6) br.cond.dptk .L4
	add r33 = r33, r34
	add r15 = r8, r34
	;;
	adds r33 = -1, r33
	adds r14 = -1, r15
	sub r34 = r15, r34, 1
	br .L5
	;;
.L6:
	ld1 r15 = [r33]
	adds r33 = -1, r33
	;;
	st1 [r14] = r15
	adds r14 = -1, r14
.L5:
	;;
	cmp.ne p6, p7 = r34, r14
	(p6) br.cond.dptk .L6
	br .L7
	;;
.L4:
	cmp.eq p6, p7 = r33, r8
	(p6) br.cond.dptk .L7
	mov r14 = r8
	add r34 = r33, r34
	br .L8
	;;
.L9:
	adds r33 = 1, r33
	;;
	adds r15 = -1, r33
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
	adds r14 = 1, r14
.L8:
	cmp.ne p6, p7 = r34, r33
	(p6) br.cond.dptk .L9
.L7:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp memmove#
	.align 16
	.global memccpy#
	.type	memccpy#, @function
	.proc memccpy#
memccpy:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt1 r34 = r34
	br .L11
	;;
.L13:
	adds r35 = -1, r35
.L11:
	mov r8 = r32
	;;
	cmp.eq p6, p7 = 0, r35
	(p6) br.cond.dptk .L12
	ld1 r14 = [r33]
	adds r33 = 1, r33
	;;
	st1 [r32] = r14
	adds r32 = 1, r32
	;;
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r34
	(p6) br.cond.dptk .L13
.L12:
	;;
	cmp.eq p6, p7 = 0, r35
	(p6) br.cond.dptk .L15
	adds r8 = 1, r8
	br .L14
	;;
.L15:
	mov r8 = r0
.L14:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp memccpy#
	.align 16
	.global memchr#
	.type	memchr#, @function
	.proc memchr#
memchr:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt1 r33 = r33
	br .L17
	;;
.L19:
	adds r34 = -1, r34
.L17:
	mov r8 = r32
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L18
	ld1 r14 = [r32]
	adds r32 = 1, r32
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L19
.L18:
	;;
	cmp.eq p6, p7 = 0, r34
	(p7) br.cond.dptk .L20
	mov r8 = r0
.L20:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp memchr#
	.align 16
	.global memcmp#
	.type	memcmp#, @function
	.proc memcmp#
memcmp:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	br .L23
	;;
.L25:
	adds r34 = -1, r34
.L23:
	mov r14 = r33
	mov r15 = r32
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L24
	ld1 r16 = [r32]
	adds r32 = 1, r32
	ld1 r17 = [r33]
	adds r33 = 1, r33
	;;
	cmp.eq p6, p7 = r16, r17
	(p6) br.cond.dptk .L25
.L24:
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L27
	ld1 r8 = [r15]
	ld1 r14 = [r14]
	;;
	sub r8 = r8, r14
	br .L26
	;;
.L27:
	mov r8 = r0
.L26:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp memcmp#
	.align 16
	.global memcpy#
	.type	memcpy#, @function
	.proc memcpy#
memcpy:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	add r34 = r33, r34
	br .L29
	;;
.L30:
	adds r33 = 1, r33
	;;
	adds r15 = -1, r33
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
	adds r14 = 1, r14
.L29:
	cmp.ne p6, p7 = r34, r33
	(p6) br.cond.dptk .L30
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp memcpy#
	.align 16
	.global memrchr#
	.type	memrchr#, @function
	.proc memrchr#
memrchr:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt1 r33 = r33
	adds r14 = -1, r34
	;;
	add r14 = r32, r14
	adds r15 = -1, r32
	br .L32
	;;
.L34:
	ld1 r16 = [r14]
	adds r14 = -1, r14
	;;
	cmp4.ne p6, p7 = r16, r33
	(p6) br.cond.dptk .L32
	add r8 = r32, r34
	br .L33
	;;
.L32:
	adds r34 = -1, r34
	cmp.ne p6, p7 = r15, r14
	(p6) br.cond.dptk .L34
	mov r8 = r0
.L33:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp memrchr#
	.align 16
	.global memset#
	.type	memset#, @function
	.proc memset#
memset:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	add r34 = r8, r34
	mov r14 = r8
	br .L36
	;;
.L37:
	st1 [r14] = r33
	adds r14 = 1, r14
.L36:
	;;
	cmp.ne p6, p7 = r34, r14
	(p6) br.cond.dptk .L37
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp memset#
	.align 16
	.global stpcpy#
	.type	stpcpy#, @function
	.proc stpcpy#
stpcpy:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
.L39:
	mov r8 = r32
	ld1 r14 = [r33]
	adds r33 = 1, r33
	;;
	st1 [r32] = r14
	adds r32 = 1, r32
	;;
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L39
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp stpcpy#
	.align 16
	.global strchrnul#
	.type	strchrnul#, @function
	.proc strchrnul#
strchrnul:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt1 r33 = r33
.L42:
	mov r8 = r32
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	adds r32 = 1, r32
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L41
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L42
.L41:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp strchrnul#
	.align 16
	.global strchr#
	.type	strchr#, @function
	.proc strchr#
strchr:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
.L45:
	mov r8 = r32
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	adds r32 = 1, r32
	;;
	cmp4.eq p6, p7 = r14, r33
	(p6) br.cond.dptk .L44
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L45
	mov r8 = r0
.L44:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp strchr#
	.align 16
	.global strcmp#
	.type	strcmp#, @function
	.proc strcmp#
strcmp:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
.L49:
	mov r16 = r33
	mov r17 = r32
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	adds r32 = 1, r32
	ld1 r15 = [r33]
	;;
	sxt1 r15 = r15
	adds r33 = 1, r33
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L48
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L49
.L48:
	ld1 r8 = [r17]
	ld1 r14 = [r16]
	;;
	sub r8 = r8, r14
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp strcmp#
	.align 16
	.global strlen#
	.type	strlen#, @function
	.proc strlen#
strlen:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
.L51:
	;;
	mov r8 = r14
	ld1 r15 = [r14]
	;;
	sxt1 r15 = r15
	adds r14 = 1, r14
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L51
	sub r8 = r8, r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp strlen#
	.align 16
	.global strncmp#
	.type	strncmp#, @function
	.proc strncmp#
strncmp:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L56
	mov r14 = r32
.L55:
	mov r16 = r33
	;;
	mov r17 = r14
	ld1 r15 = [r14]
	adds r14 = 1, r14
	;;
	cmp.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L54
	ld1 r15 = [r33]
	add r18 = r32, r34
	;;
	cmp.ne p8, p9 = r14, r18
	cmp.ne p6, p7 = 0, r15
	;;
	(p8) addl r15 = 1, r0
	;;
	(p9) mov r15 = r0
	(p6) addl r18 = 1, r0
	;;
	(p7) mov r18 = r0
	;;
	and r15 = r18, r15
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L54
	adds r15 = -1, r14
	;;
	ld1 r15 = [r15]
	ld1 r18 = [r33]
	adds r33 = 1, r33
	;;
	cmp.eq p6, p7 = r15, r18
	(p6) br.cond.dptk .L55
.L54:
	ld1 r8 = [r17]
	ld1 r14 = [r16]
	;;
	sub r8 = r8, r14
	br .L53
	;;
.L56:
	mov r8 = r0
.L53:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp strncmp#
	.align 16
	.global swab#
	.type	swab#, @function
	.proc swab#
swab:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
	br .L58
	;;
.L59:
	adds r15 = 1, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r33] = r15
	ld1 r16 = [r14]
	adds r15 = 1, r33
	;;
	st1 [r15] = r16
	adds r33 = 2, r33
	adds r14 = 2, r14
.L58:
	add r15 = r32, r34
	;;
	sub r15 = r15, r14
	;;
	cmp.lt p6, p7 = 1, r15
	(p6) br.cond.dptk .L59
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp swab#
	.align 16
	.global isalpha#
	.type	isalpha#, @function
	.proc isalpha#
isalpha:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	or r32 = 32, r32
	;;
	adds r32 = -97, r32
	;;
	cmp4.geu p6, p7 = 25, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp isalpha#
	.align 16
	.global isascii#
	.type	isascii#, @function
	.proc isascii#
isascii:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp4.geu p6, p7 = 127, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp isascii#
	.align 16
	.global isblank#
	.type	isblank#, @function
	.proc isblank#
isblank:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp4.eq p6, p7 = 32, r32
	cmp4.eq p8, p9 = 9, r32
	;;
	(p8) addl r8 = 1, r0
	;;
	(p9) mov r8 = r0
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	or r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp isblank#
	.align 16
	.global iscntrl#
	.type	iscntrl#, @function
	.proc iscntrl#
iscntrl:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp4.geu p8, p9 = 31, r32
	cmp4.eq p6, p7 = 127, r32
	;;
	(p8) addl r8 = 1, r0
	;;
	(p9) mov r8 = r0
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	or r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp iscntrl#
	.align 16
	.global isdigit#
	.type	isdigit#, @function
	.proc isdigit#
isdigit:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	adds r32 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp isdigit#
	.align 16
	.global isgraph#
	.type	isgraph#, @function
	.proc isgraph#
isgraph:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	adds r32 = -33, r32
	;;
	cmp4.geu p6, p7 = 93, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp isgraph#
	.align 16
	.global islower#
	.type	islower#, @function
	.proc islower#
islower:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	adds r32 = -97, r32
	;;
	cmp4.geu p6, p7 = 25, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp islower#
	.align 16
	.global isprint#
	.type	isprint#, @function
	.proc isprint#
isprint:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	adds r32 = -32, r32
	;;
	cmp4.geu p6, p7 = 94, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp isprint#
	.align 16
	.global isspace#
	.type	isspace#, @function
	.proc isspace#
isspace:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp4.eq p6, p7 = 32, r32
	adds r32 = -9, r32
	;;
	cmp4.geu p8, p9 = 4, r32
	;;
	(p8) addl r8 = 1, r0
	;;
	(p9) mov r8 = r0
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	or r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp isspace#
	.align 16
	.global isupper#
	.type	isupper#, @function
	.proc isupper#
isupper:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	adds r32 = -65, r32
	;;
	cmp4.geu p6, p7 = 25, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp isupper#
	.align 16
	.global iswcntrl#
	.type	iswcntrl#, @function
	.proc iswcntrl#
iswcntrl:
	.prologue 2, 3
	.vframe r3
	mov r3 = r12
	.body
	mov r2 = r32
	;;
	cmp4.geu p8, p9 = 31, r2
	adds r14 = -127, r2
	;;
	cmp4.geu p6, p7 = 32, r14
	;;
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L72
	addl r14 = -8232, r2
	;;
	cmp4.geu p6, p7 = 1, r14
	(p6) br.cond.dptk .L73
	addl r2 = -65529, r2
	;;
	cmp4.ltu p6, p7 = 2, r2
	(p6) br.cond.dptk .L74
	addl r8 = 1, r0
	br .L71
	;;
.L72:
	addl r8 = 1, r0
	br .L71
	;;
.L73:
	addl r8 = 1, r0
	br .L71
	;;
.L74:
	mov r8 = r0
.L71:
	.restore sp
	mov r12 = r3
	br.ret.sptk.many b0
	;;
	.endp iswcntrl#
	.align 16
	.global iswdigit#
	.type	iswdigit#, @function
	.proc iswdigit#
iswdigit:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	adds r32 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp iswdigit#
	.align 16
	.global iswprint#
	.type	iswprint#, @function
	.proc iswprint#
iswprint:
	.prologue 2, 3
	.vframe r3
	mov r3 = r12
	.body
	mov r2 = r32
	addl r14 = 254, r0
	;;
	cmp4.ltu p6, p7 = r14, r2
	(p6) br.cond.dptk .L77
	adds r2 = 1, r2
	;;
	and r2 = 127, r2
	;;
	cmp4.ltu p6, p7 = 32, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L78
	;;
.L77:
	addl r14 = 8231, r0
	;;
	cmp4.geu p8, p9 = r14, r2
	addl r14 = -8234, r2
	addl r15 = 47061, r0
	;;
	cmp4.geu p6, p7 = r15, r14
	;;
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L79
	addl r14 = -57344, r2
	addl r15 = 8184, r0
	;;
	cmp4.geu p6, p7 = r15, r14
	(p6) br.cond.dptk .L80
	addl r14 = -65532, r2
	addl r15 = 1048579, r0
	;;
	cmp4.ltu p6, p7 = r15, r14
	(p6) br.cond.dptk .L81
	addl r14 = 65534, r0
	;;
	and r2 = r14, r2
	;;
	cmp4.eq p6, p7 = r14, r2
	(p6) br.cond.dptk .L82
	addl r8 = 1, r0
	br .L78
	;;
.L79:
	addl r8 = 1, r0
	br .L78
	;;
.L80:
	addl r8 = 1, r0
	br .L78
	;;
.L81:
	mov r8 = r0
	br .L78
	;;
.L82:
	mov r8 = r0
.L78:
	.restore sp
	mov r12 = r3
	br.ret.sptk.many b0
	;;
	.endp iswprint#
	.align 16
	.global iswxdigit#
	.type	iswxdigit#, @function
	.proc iswxdigit#
iswxdigit:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	adds r14 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L85
	or r32 = 32, r32
	;;
	adds r32 = -97, r32
	;;
	cmp4.ltu p6, p7 = 5, r32
	(p6) br.cond.dptk .L86
	addl r8 = 1, r0
	br .L84
	;;
.L85:
	addl r8 = 1, r0
	br .L84
	;;
.L86:
	mov r8 = r0
.L84:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp iswxdigit#
	.align 16
	.global toascii#
	.type	toascii#, @function
	.proc toascii#
toascii:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	and r8 = 127, r32
	;;
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp toascii#
	.align 16
	.global fdim#
	.type	fdim#, @function
	.proc fdim#
fdim:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L89
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L92
	fcmp.gt p6, p7 = f8, f9
	;;
	(p7) br.cond.dptk .L95
	fsub.d f8 = f8, f9
	br .L89
	;;
.L92:
	mov f8 = f9
	br .L89
	;;
.L95:
	mov f8 = f0
.L89:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp fdim#
	.align 16
	.global fdimf#
	.type	fdimf#, @function
	.proc fdimf#
fdimf:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L97
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L100
	fcmp.gt p6, p7 = f8, f9
	;;
	(p7) br.cond.dptk .L103
	fsub.s f8 = f8, f9
	br .L97
	;;
.L100:
	mov f8 = f9
	br .L97
	;;
.L103:
	mov f8 = f0
.L97:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp fdimf#
	.align 16
	.global fmax#
	.type	fmax#, @function
	.proc fmax#
fmax:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	getf.d r14 = f8
	getf.d r15 = f9
	;;
	setf.d f8 = r14
	;;
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L108
	setf.d f9 = r15
	;;
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L109
	mov r17 = r14
	;;
	extr.u r17 = r17, 63, 1
	mov r16 = r15
	;;
	extr.u r16 = r16, 63, 1
	;;
	cmp4.eq p6, p7 = r16, r17
	(p6) br.cond.dptk .L106
	mov r16 = r14
	;;
	cmp.le p6, p7 = r0, r16
	(p6) br.cond.dptk .L110
	setf.d f8 = r15
	br .L105
	;;
.L106:
	setf.d f6 = r14
	setf.d f7 = r15
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L113
	setf.d f8 = r15
	br .L105
	;;
.L108:
	setf.d f8 = r15
	br .L105
	;;
.L109:
	setf.d f8 = r14
	br .L105
	;;
.L110:
	setf.d f8 = r14
	br .L105
	;;
.L113:
	setf.d f8 = r14
.L105:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp fmax#
	.align 16
	.global fmaxf#
	.type	fmaxf#, @function
	.proc fmaxf#
fmaxf:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	getf.s r14 = f8
	getf.s r15 = f9
	;;
	setf.s f8 = r14
	;;
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L118
	setf.s f9 = r15
	;;
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L119
	mov r16 = r14
	movl r17 = -2147483648
	;;
	and r16 = r16, r17
	mov r18 = r15
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L116
	mov r17 = r14
	movl r16 = -2147483648
	;;
	and r16 = r17, r16
	;;
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L120
	setf.s f8 = r15
	br .L115
	;;
.L116:
	setf.s f6 = r14
	setf.s f7 = r15
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L123
	setf.s f8 = r15
	br .L115
	;;
.L118:
	setf.s f8 = r15
	br .L115
	;;
.L119:
	setf.s f8 = r14
	br .L115
	;;
.L120:
	setf.s f8 = r14
	br .L115
	;;
.L123:
	setf.s f8 = r14
.L115:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp fmaxf#
	.align 16
	.global fmaxl#
	.type	fmaxl#, @function
	.proc fmaxl#
fmaxl:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	adds r12 = -16, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	stfe [r14] = f8
	stfe [r2] = f9
	mov r15 = r14
	mov f6 = f8
	;;
	fcmp.unord p6, p7 = f6, f6
	;;
	(p6) br.cond.dptk .L128
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L129
	adds r15 = -8, r2
	;;
	ld8 r14 = [r15]
	addl r16 = 32768, r0
	;;
	and r14 = r16, r14
	adds r17 = 8, r2
	;;
	ld8 r15 = [r17]
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = r15, r14
	(p6) br.cond.dptk .L126
	adds r15 = -8, r2
	;;
	ld8 r14 = [r15]
	;;
	tbit.z p6, p7 = r14, 15
	(p6) br.cond.dptk .L130
	mov f8 = f9
	br .L125
	;;
.L126:
	adds r17 = -16, r2
	;;
	ldfe f6 = [r17]
	ldfe f7 = [r2]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L133
	mov f8 = f7
	br .L125
	;;
.L128:
	ldfe f8 = [r2]
	br .L125
	;;
.L129:
	adds r14 = -16, r2
	;;
	ldfe f8 = [r14]
	br .L125
	;;
.L130:
	adds r15 = -16, r2
	;;
	ldfe f8 = [r15]
	br .L125
	;;
.L133:
	adds r17 = -16, r2
	;;
	ldfe f8 = [r17]
.L125:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp fmaxl#
	.align 16
	.global fmin#
	.type	fmin#, @function
	.proc fmin#
fmin:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	getf.d r15 = f8
	getf.d r14 = f9
	;;
	setf.d f8 = r15
	;;
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L138
	setf.d f9 = r14
	;;
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L139
	mov r17 = r15
	;;
	extr.u r17 = r17, 63, 1
	mov r16 = r14
	;;
	extr.u r16 = r16, 63, 1
	;;
	cmp4.eq p6, p7 = r16, r17
	(p6) br.cond.dptk .L136
	mov r16 = r15
	;;
	cmp.le p6, p7 = r0, r16
	(p6) br.cond.dptk .L140
	br .L135
	;;
.L136:
	setf.d f6 = r15
	setf.d f7 = r14
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L143
	setf.d f8 = r15
	br .L135
	;;
.L138:
	setf.d f8 = r14
	br .L135
	;;
.L139:
	setf.d f8 = r15
	br .L135
	;;
.L140:
	setf.d f8 = r14
	br .L135
	;;
.L143:
	setf.d f8 = r14
.L135:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp fmin#
	.align 16
	.global fminf#
	.type	fminf#, @function
	.proc fminf#
fminf:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	getf.s r15 = f8
	getf.s r14 = f9
	;;
	setf.s f8 = r15
	;;
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L148
	setf.s f9 = r14
	;;
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L149
	mov r16 = r15
	movl r17 = -2147483648
	;;
	and r16 = r16, r17
	mov r18 = r14
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L146
	mov r17 = r15
	movl r16 = -2147483648
	;;
	and r16 = r17, r16
	;;
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L150
	br .L145
	;;
.L146:
	setf.s f6 = r15
	setf.s f7 = r14
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L153
	setf.s f8 = r15
	br .L145
	;;
.L148:
	setf.s f8 = r14
	br .L145
	;;
.L149:
	setf.s f8 = r15
	br .L145
	;;
.L150:
	setf.s f8 = r14
	br .L145
	;;
.L153:
	setf.s f8 = r14
.L145:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp fminf#
	.align 16
	.global fminl#
	.type	fminl#, @function
	.proc fminl#
fminl:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	adds r12 = -16, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	stfe [r14] = f8
	stfe [r2] = f9
	mov r15 = r14
	mov f6 = f8
	;;
	fcmp.unord p6, p7 = f6, f6
	;;
	(p6) br.cond.dptk .L158
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L159
	adds r15 = -8, r2
	;;
	ld8 r14 = [r15]
	addl r16 = 32768, r0
	;;
	and r14 = r16, r14
	adds r17 = 8, r2
	;;
	ld8 r15 = [r17]
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = r15, r14
	(p6) br.cond.dptk .L156
	adds r15 = -8, r2
	;;
	ld8 r14 = [r15]
	;;
	tbit.z p6, p7 = r14, 15
	(p6) br.cond.dptk .L160
	adds r17 = -16, r2
	mov f8 = f6
	br .L155
	;;
.L156:
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	ldfe f7 = [r2]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L163
	mov f8 = f6
	br .L155
	;;
.L158:
	ldfe f8 = [r2]
	br .L155
	;;
.L159:
	adds r15 = -16, r2
	;;
	ldfe f8 = [r15]
	br .L155
	;;
.L160:
	ldfe f8 = [r2]
	br .L155
	;;
.L163:
	ldfe f8 = [r2]
.L155:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp fminl#
	.section	.rodata
	.align 8
	.type	digits#, @object
	.size	digits#, 65
digits:
	stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align 16
	.global l64a#
	.type	l64a#, @function
	.proc l64a#
l64a:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addl r14 = @gprel(s.0#), gp
	br .L165
	;;
.L166:
	and r16 = 63, r32
	movl r15 = @gprel(digits#)
	;;
	add r15 = r1, r15
	;;
	add r15 = r15, r16
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
	adds r14 = 1, r14
	extr.u r32 = r32, 6, 26
.L165:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L166
	st1 [r14] = r0
	addl r8 = @gprel(s.0#), gp
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp l64a#
	.sbss
	.align 8
	.type	seed#, @object
	.size	seed#, 8
seed:
	.skip	8
	.text
	.align 16
	.global srand#
	.type	srand#, @function
	.proc srand#
srand:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	adds r32 = -1, r32
	;;
	addp4 r32 = r32, r0
	addl r14 = @gprel(seed#), gp
	;;
	st8 [r14] = r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp srand#
	.align 16
	.global rand#
	.type	rand#, @function
	.proc rand#
rand:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addl r14 = @gprel(seed#), gp
	movl r15 = 6364136223846793005
	;;
	ldf8 f6 = [r14]
	setf.sig f7 = r15
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r8 = f6
	;;
	adds r8 = 1, r8
	;;
	st8 [r14] = r8
	shr.u r8 = r8, 33
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rand#
	.align 16
	.global insque#
	.type	insque#, @function
	.proc insque#
insque:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.ne p6, p7 = 0, r33
	(p6) br.cond.dptk .L170
	adds r14 = 8, r32
	;;
	st8 [r14] = r0
	st8 [r32] = r0
	br .L169
	;;
.L170:
	ld8 r14 = [r33]
	;;
	st8 [r32] = r14
	adds r14 = 8, r32
	;;
	st8 [r14] = r33
	st8 [r33] = r32
	ld8 r14 = [r32]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L169
	adds r14 = 8, r14
	;;
	st8 [r14] = r32
.L169:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp insque#
	.align 16
	.global remque#
	.type	remque#, @function
	.proc remque#
remque:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	ld8 r14 = [r32]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L173
	adds r15 = 8, r32
	;;
	ld8 r15 = [r15]
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
.L173:
	adds r14 = 8, r32
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L172
	adds r14 = 8, r32
	;;
	ld8 r14 = [r14]
	ld8 r15 = [r32]
	;;
	st8 [r14] = r15
.L172:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp remque#
	.align 16
	.global lsearch#
	.type	lsearch#, @function
	.proc lsearch#
lsearch:
	.prologue 14, 40
	.save ar.pfs, r41
	alloc r41 = ar.pfs, 5, 7, 3, 0
	.vframe r42
	mov r42 = r12
	.save rp, r40
	mov r40 = b0
	mov r43 = r1
	.body
	ld8 r38 = [r34]
	mov r39 = r33
	mov r37 = r0
	br .L176
	;;
.L179:
	mov r45 = r39
	mov r44 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r43
	add r39 = r39, r35
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L177
	setf.sig f6 = r37
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br .L178
	;;
.L177:
	adds r37 = 1, r37
.L176:
	;;
	cmp.ne p6, p7 = r38, r37
	(p6) br.cond.dptk .L179
	adds r14 = 1, r38
	;;
	st8 [r34] = r14
	setf.sig f6 = r35
	setf.sig f7 = r38
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r44 = f6
	mov r46 = r35
	mov r45 = r32
	br.call.sptk.many b0 = memcpy#
	mov r1 = r43
.L178:
	;;
	mov ar.pfs = r41
	mov b0 = r40
	.restore sp
	mov r12 = r42
	br.ret.sptk.many b0
	;;
	.endp lsearch#
	.align 16
	.global lfind#
	.type	lfind#, @function
	.proc lfind#
lfind:
	.prologue 14, 40
	.save ar.pfs, r41
	alloc r41 = ar.pfs, 5, 7, 2, 0
	.vframe r42
	mov r42 = r12
	.save rp, r40
	mov r40 = b0
	mov r43 = r1
	.body
	ld8 r39 = [r34]
	mov r38 = r33
	mov r37 = r0
	br .L181
	;;
.L184:
	mov r45 = r38
	mov r44 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r43
	add r38 = r38, r35
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L182
	setf.sig f6 = r37
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br .L183
	;;
.L182:
	adds r37 = 1, r37
.L181:
	;;
	cmp.ne p6, p7 = r39, r37
	(p6) br.cond.dptk .L184
	mov r8 = r0
.L183:
	mov ar.pfs = r41
	mov b0 = r40
	.restore sp
	mov r12 = r42
	br.ret.sptk.many b0
	;;
	.endp lfind#
	.align 16
	.global abs#
	.type	abs#, @function
	.proc abs#
abs:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp4.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	;;
	(p6) mov r8 = r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp abs#
	.align 16
	.global atoi#
	.type	atoi#, @function
	.proc atoi#
atoi:
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 1, 5, 1, 0
	.vframe r36
	mov r36 = r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	mov r33 = r32
.L187:
	;;
	mov r33 = r32
	ld1 r38 = [r32]
	;;
	sxt1 r38 = r38
	adds r32 = 1, r32
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L187
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L193
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L194
	addl r15 = 1, r0
	br .L188
	;;
.L193:
	mov r15 = r0
.L188:
	adds r33 = 1, r33
	br .L189
	;;
.L194:
	mov r15 = r0
.L189:
	mov r8 = r0
	br .L190
	;;
.L191:
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r8 = r14, 1, r0
	;;
	mov r14 = r8
	;;
	adds r14 = -1, r33
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	sub r8 = r8, r14
.L190:
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	adds r33 = 1, r33
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L191
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L192
	sub r8 = r0, r8
.L192:
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
	br.ret.sptk.many b0
	;;
	.endp atoi#
	.align 16
	.global atol#
	.type	atol#, @function
	.proc atol#
atol:
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 1, 5, 1, 0
	.vframe r36
	mov r36 = r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	mov r33 = r32
.L197:
	;;
	mov r33 = r32
	ld1 r38 = [r32]
	;;
	sxt1 r38 = r38
	adds r32 = 1, r32
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L197
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L203
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L204
	addl r15 = 1, r0
	br .L198
	;;
.L203:
	mov r15 = r0
.L198:
	adds r33 = 1, r33
	br .L199
	;;
.L204:
	mov r15 = r0
.L199:
	mov r8 = r0
	br .L200
	;;
.L201:
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r8 = r14, 1, r0
	;;
	mov r14 = r8
	;;
	adds r14 = -1, r33
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	sxt4 r14 = r14
	;;
	sub r8 = r8, r14
.L200:
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	adds r33 = 1, r33
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L201
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L202
	sub r8 = r0, r8
.L202:
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
	br.ret.sptk.many b0
	;;
	.endp atol#
	.align 16
	.global atoll#
	.type	atoll#, @function
	.proc atoll#
atoll:
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 1, 5, 1, 0
	.vframe r36
	mov r36 = r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	mov r33 = r32
.L207:
	;;
	mov r33 = r32
	ld1 r38 = [r32]
	;;
	sxt1 r38 = r38
	adds r32 = 1, r32
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L207
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L213
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L214
	addl r15 = 1, r0
	br .L208
	;;
.L213:
	mov r15 = r0
.L208:
	adds r33 = 1, r33
	br .L209
	;;
.L214:
	mov r15 = r0
.L209:
	mov r8 = r0
	br .L210
	;;
.L211:
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r8 = r14, 1, r0
	;;
	mov r14 = r8
	;;
	adds r14 = -1, r33
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	sxt4 r14 = r14
	;;
	sub r8 = r8, r14
.L210:
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	adds r33 = 1, r33
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L211
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L212
	sub r8 = r0, r8
.L212:
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
	br.ret.sptk.many b0
	;;
	.endp atoll#
	.align 16
	.global bsearch#
	.type	bsearch#, @function
	.proc bsearch#
bsearch:
	.prologue 14, 38
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 5, 5, 2, 0
	.vframe r40
	mov r40 = r12
	.save rp, r38
	mov r38 = b0
	mov r41 = r1
	.body
	br .L217
	;;
.L221:
	shr.u r37 = r34, 1
	;;
	setf.sig f6 = r37
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r37 = f6
	;;
	mov r43 = r37
	mov r42 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r41
	cmp4.le p6, p7 = r0, r8
	(p6) br.cond.dptk .L218
	shr.u r34 = r34, 1
	br .L217
	;;
.L218:
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dptk .L222
	add r33 = r37, r35
	shr.u r14 = r34, 1
	;;
	sub r34 = r34, r14, 1
.L217:
	;;
	cmp.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L221
	mov r8 = r0
	br .L220
	;;
.L222:
	mov r8 = r37
.L220:
	mov ar.pfs = r39
	mov b0 = r38
	.restore sp
	mov r12 = r40
	br.ret.sptk.many b0
	;;
	.endp bsearch#
	.align 16
	.global bsearch_r#
	.type	bsearch_r#, @function
	.proc bsearch_r#
bsearch_r:
	.prologue 14, 39
	.save ar.pfs, r40
	alloc r40 = ar.pfs, 6, 5, 3, 0
	.vframe r41
	mov r41 = r12
	.save rp, r39
	mov r39 = b0
	mov r42 = r1
	.body
	br .L224
	;;
.L227:
	extr r38 = r34, 1, 31
	;;
	setf.sig f6 = r38
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r38 = f6
	mov r45 = r37
	;;
	mov r44 = r38
	mov r43 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r42
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dptk .L228
	;;
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dptk .L226
	add r33 = r38, r35
	adds r34 = -1, r34
.L226:
	;;
	extr r34 = r34, 1, 31
.L224:
	;;
	cmp4.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L227
	mov r8 = r0
	br .L225
	;;
.L228:
	mov r8 = r38
.L225:
	mov ar.pfs = r40
	mov b0 = r39
	.restore sp
	mov r12 = r41
	br.ret.sptk.many b0
	;;
	.endp bsearch_r#
	.align 16
	.global div#
	.type	div#, @function
	.proc div#
div:
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 5, 2, 0
	.vframe r37
	mov r37 = r12
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	sxt4 r32 = r32
	sxt4 r33 = r33
	;;
	mov r40 = r33
	mov r39 = r32
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r38
	mov r34 = r8
	;;
	mov r40 = r33
	mov r39 = r32
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r38
	st4 [r37] = r34
	adds r15 = 4, r37
	;;
	st4 [r15] = r8
	mov r8 = r0
	addp4 r14 = r34, r0
	;;
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
	ld4 r14 = [r15]
	;;
	mix4.r r8 = r14, r8
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
	br.ret.sptk.many b0
	;;
	.endp div#
	.align 16
	.global imaxabs#
	.type	imaxabs#, @function
	.proc imaxabs#
imaxabs:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	;;
	(p6) mov r8 = r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp imaxabs#
	.align 16
	.global imaxdiv#
	.type	imaxdiv#, @function
	.proc imaxdiv#
imaxdiv:
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 5, 2, 0
	.vframe r37
	mov r37 = r12
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	mov r40 = r33
	mov r39 = r32
	;;
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r38
	mov r34 = r8
	mov r40 = r33
	mov r39 = r32
	;;
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r38
	mov r14 = r8
	st8 [r37] = r34
	adds r15 = 8, r37
	;;
	st8 [r15] = r14
	mov r8 = r0
	mov r9 = r0
	;;
	mov r8 = r34
	mov r9 = r14
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
	br.ret.sptk.many b0
	;;
	.endp imaxdiv#
	.align 16
	.global labs#
	.type	labs#, @function
	.proc labs#
labs:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	;;
	(p6) mov r8 = r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp labs#
	.align 16
	.global ldiv#
	.type	ldiv#, @function
	.proc ldiv#
ldiv:
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 5, 2, 0
	.vframe r37
	mov r37 = r12
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	mov r40 = r33
	mov r39 = r32
	;;
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r38
	mov r34 = r8
	mov r40 = r33
	mov r39 = r32
	;;
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r38
	mov r14 = r8
	st8 [r37] = r34
	adds r15 = 8, r37
	;;
	st8 [r15] = r14
	mov r8 = r0
	mov r9 = r0
	;;
	mov r8 = r34
	mov r9 = r14
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
	br.ret.sptk.many b0
	;;
	.endp ldiv#
	.align 16
	.global llabs#
	.type	llabs#, @function
	.proc llabs#
llabs:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	;;
	(p6) mov r8 = r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp llabs#
	.align 16
	.global lldiv#
	.type	lldiv#, @function
	.proc lldiv#
lldiv:
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 5, 2, 0
	.vframe r37
	mov r37 = r12
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	mov r40 = r33
	mov r39 = r32
	;;
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r38
	mov r34 = r8
	mov r40 = r33
	mov r39 = r32
	;;
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r38
	mov r14 = r8
	st8 [r37] = r34
	adds r15 = 8, r37
	;;
	st8 [r15] = r14
	mov r8 = r0
	mov r9 = r0
	;;
	mov r8 = r34
	mov r9 = r14
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
	br.ret.sptk.many b0
	;;
	.endp lldiv#
	.align 16
	.global wcschr#
	.type	wcschr#, @function
	.proc wcschr#
wcschr:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
.L238:
	mov r8 = r32
	ld4 r14 = [r32]
	adds r32 = 4, r32
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L237
	adds r14 = -4, r32
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L238
.L237:
	ld4 r14 = [r8]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L239
	mov r8 = r0
.L239:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wcschr#
	.align 16
	.global wcscmp#
	.type	wcscmp#, @function
	.proc wcscmp#
wcscmp:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
.L243:
	mov r14 = r33
	mov r15 = r32
	ld4 r17 = [r32]
	adds r32 = 4, r32
	ld4 r16 = [r33]
	adds r33 = 4, r33
	;;
	cmp4.ne p6, p7 = r16, r17
	(p6) br.cond.dptk .L242
	adds r16 = -4, r32
	;;
	ld4 r16 = [r16]
	;;
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L242
	adds r16 = -4, r33
	;;
	ld4 r16 = [r16]
	;;
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L243
.L242:
	ld4 r17 = [r15]
	ld4 r16 = [r14]
	;;
	cmp4.gt p6, p7 = r16, r17
	(p6) br.cond.dptk .L245
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L244
	;;
.L245:
	addl r8 = -1, r0
.L244:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wcscmp#
	.align 16
	.global wcscpy#
	.type	wcscpy#, @function
	.proc wcscpy#
wcscpy:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	mov r14 = r8
.L247:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
	adds r14 = 4, r14
	;;
	adds r15 = -4, r14
	;;
	ld4 r15 = [r15]
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L247
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wcscpy#
	.align 16
	.global wcslen#
	.type	wcslen#, @function
	.proc wcslen#
wcslen:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
.L249:
	;;
	mov r8 = r14
	ld4 r15 = [r14]
	adds r14 = 4, r14
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L249
	sub r8 = r8, r32
	;;
	shr r8 = r8, 2
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wcslen#
	.align 16
	.global wcsncmp#
	.type	wcsncmp#, @function
	.proc wcsncmp#
wcsncmp:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	br .L251
	;;
.L253:
	adds r34 = -1, r34
.L251:
	mov r14 = r33
	mov r15 = r32
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L252
	ld4 r17 = [r32]
	ld4 r16 = [r33]
	;;
	cmp4.ne p6, p7 = r16, r17
	(p6) br.cond.dptk .L252
	ld4 r16 = [r32]
	adds r32 = 4, r32
	;;
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L252
	ld4 r16 = [r33]
	adds r33 = 4, r33
	;;
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L253
.L252:
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L255
	ld4 r17 = [r15]
	ld4 r16 = [r14]
	;;
	cmp4.gt p6, p7 = r16, r17
	(p6) br.cond.dptk .L256
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L254
	;;
.L255:
	mov r8 = r0
	br .L254
	;;
.L256:
	addl r8 = -1, r0
.L254:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wcsncmp#
	.align 16
	.global wmemchr#
	.type	wmemchr#, @function
	.proc wmemchr#
wmemchr:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	br .L258
	;;
.L260:
	adds r34 = -1, r34
.L258:
	mov r8 = r32
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L259
	ld4 r14 = [r32]
	adds r32 = 4, r32
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L260
.L259:
	;;
	cmp.eq p6, p7 = 0, r34
	(p7) br.cond.dptk .L261
	mov r8 = r0
.L261:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wmemchr#
	.align 16
	.global wmemcmp#
	.type	wmemcmp#, @function
	.proc wmemcmp#
wmemcmp:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	br .L264
	;;
.L266:
	adds r34 = -1, r34
.L264:
	mov r14 = r33
	mov r15 = r32
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L265
	ld4 r17 = [r32]
	adds r32 = 4, r32
	ld4 r16 = [r33]
	adds r33 = 4, r33
	;;
	cmp4.eq p6, p7 = r16, r17
	(p6) br.cond.dptk .L266
.L265:
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L268
	ld4 r17 = [r15]
	ld4 r16 = [r14]
	;;
	cmp4.gt p6, p7 = r16, r17
	(p6) br.cond.dptk .L269
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L267
	;;
.L268:
	mov r8 = r0
	br .L267
	;;
.L269:
	addl r8 = -1, r0
.L267:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wmemcmp#
	.align 16
	.global wmemcpy#
	.type	wmemcpy#, @function
	.proc wmemcpy#
wmemcpy:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	br .L271
	;;
.L272:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
	adds r14 = 4, r14
.L271:
	adds r34 = -1, r34
	;;
	cmp.ne p6, p7 = -1, r34
	(p6) br.cond.dptk .L272
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wmemcpy#
	.align 16
	.global wmemmove#
	.type	wmemmove#, @function
	.proc wmemmove#
wmemmove:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	cmp.eq p6, p7 = r33, r8
	(p6) br.cond.dptk .L274
	sub r14 = r8, r33
	shladd r15 = r34, 2, r0
	;;
	cmp.gtu p6, p7 = r15, r14
	(p6) br.cond.dptk .L275
	mov r14 = r8
	br .L276
	;;
.L275:
	adds r34 = -1, r34
	;;
	shladd r34 = r34, 2, r0
	;;
	add r33 = r33, r34
	add r34 = r8, r34
	adds r14 = -4, r8
	br .L277
	;;
.L278:
	ld4 r15 = [r33]
	adds r33 = -4, r33
	;;
	st4 [r34] = r15
	adds r34 = -4, r34
.L277:
	;;
	cmp.ne p6, p7 = r14, r34
	(p6) br.cond.dptk .L278
	br .L274
	;;
.L279:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
	adds r14 = 4, r14
.L276:
	adds r34 = -1, r34
	;;
	cmp.ne p6, p7 = -1, r34
	(p6) br.cond.dptk .L279
.L274:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wmemmove#
	.align 16
	.global wmemset#
	.type	wmemset#, @function
	.proc wmemset#
wmemset:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	br .L281
	;;
.L282:
	adds r14 = 4, r14
	;;
	adds r15 = -4, r14
	;;
	st4 [r15] = r33
.L281:
	adds r34 = -1, r34
	;;
	cmp.ne p6, p7 = -1, r34
	(p6) br.cond.dptk .L282
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp wmemset#
	.align 16
	.global bcopy#
	.type	bcopy#, @function
	.proc bcopy#
bcopy:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.leu p6, p7 = r33, r32
	(p6) br.cond.dptk .L284
	add r32 = r32, r34
	add r33 = r33, r34
	;;
	adds r32 = -1, r32
	adds r14 = -1, r33
	sub r34 = r33, r34, 1
	br .L285
	;;
.L286:
	ld1 r15 = [r32]
	adds r32 = -1, r32
	;;
	st1 [r14] = r15
	adds r14 = -1, r14
.L285:
	;;
	cmp.ne p6, p7 = r34, r14
	(p6) br.cond.dptk .L286
	br .L283
	;;
.L284:
	cmp.eq p6, p7 = r33, r32
	(p6) br.cond.dptk .L283
	add r34 = r32, r34
	br .L288
	;;
.L289:
	adds r32 = 1, r32
	;;
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	st1 [r33] = r14
	adds r33 = 1, r33
.L288:
	cmp.ne p6, p7 = r34, r32
	(p6) br.cond.dptk .L289
.L283:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp bcopy#
	.align 16
	.global rotl64#
	.type	rotl64#, @function
	.proc rotl64#
rotl64:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r14 = r33, r0
	;;
	shl r14 = r32, r14
	sub r33 = r0, r33
	;;
	and r33 = 63, r33
	;;
	shr.u r8 = r32, r33
	;;
	or r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotl64#
	.align 16
	.global rotr64#
	.type	rotr64#, @function
	.proc rotr64#
rotr64:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r14 = r33, r0
	;;
	shr.u r14 = r32, r14
	sub r33 = r0, r33
	;;
	and r33 = 63, r33
	;;
	shl r8 = r32, r33
	;;
	or r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotr64#
	.align 16
	.global rotl32#
	.type	rotl32#, @function
	.proc rotl32#
rotl32:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	sub r33 = 32, r33
	;;
	addp4 r33 = r33, r0
	mix4.r r8 = r32, r32
	;;
	shr.u r8 = r8, r33
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotl32#
	.align 16
	.global rotr32#
	.type	rotr32#, @function
	.proc rotr32#
rotr32:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r33 = r33, r0
	mix4.r r8 = r32, r32
	;;
	shr.u r8 = r8, r33
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotr32#
	.align 16
	.global rotl_sz#
	.type	rotl_sz#, @function
	.proc rotl_sz#
rotl_sz:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r14 = r33, r0
	;;
	shl r14 = r32, r14
	sub r33 = 64, r33
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r14, r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotl_sz#
	.align 16
	.global rotr_sz#
	.type	rotr_sz#, @function
	.proc rotr_sz#
rotr_sz:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r14 = r33, r0
	;;
	shr.u r14 = r32, r14
	sub r33 = 64, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r32 = r32, r33
	;;
	or r8 = r14, r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotr_sz#
	.align 16
	.global rotl16#
	.type	rotl16#, @function
	.proc rotl16#
rotl16:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r32 = r32
	addp4 r8 = r33, r0
	;;
	shl r8 = r32, r8
	sub r33 = 16, r33
	addp4 r32 = r32, r0
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r32, r8
	;;
	zxt2 r8 = r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotl16#
	.align 16
	.global rotr16#
	.type	rotr16#, @function
	.proc rotr16#
rotr16:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r32 = r32
	addp4 r8 = r33, r0
	;;
	shr.u r8 = r32, r8
	sub r33 = 16, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r32 = r32, r33
	;;
	or r8 = r32, r8
	;;
	zxt2 r8 = r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotr16#
	.align 16
	.global rotl8#
	.type	rotl8#, @function
	.proc rotl8#
rotl8:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt1 r32 = r32
	addp4 r8 = r33, r0
	;;
	shl r8 = r32, r8
	sub r33 = 8, r33
	addp4 r32 = r32, r0
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r32, r8
	;;
	zxt1 r8 = r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotl8#
	.align 16
	.global rotr8#
	.type	rotr8#, @function
	.proc rotr8#
rotr8:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt1 r32 = r32
	addp4 r8 = r33, r0
	;;
	shr.u r8 = r32, r8
	sub r33 = 8, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r32 = r32, r33
	;;
	or r8 = r32, r8
	;;
	zxt1 r8 = r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp rotr8#
	.align 16
	.global bswap_16#
	.type	bswap_16#, @function
	.proc bswap_16#
bswap_16:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r32 = r32
	;;
	mov r14 = r32
	;;
	zxt1 r14 = r14
	shr.u r32 = r32, 8
	;;
	shl r14 = r14, 8
	;;
	or r8 = r14, r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp bswap_16#
	.align 16
	.global bswap_32#
	.type	bswap_32#, @function
	.proc bswap_32#
bswap_32:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r14 = r32, r0
	extr.u r16 = r32, 24, 8
	movl r15 = 16711680
	;;
	and r14 = r15, r14
	;;
	extr.u r14 = r14, 8, 32
	addl r15 = 65280, r0
	;;
	and r15 = r15, r32
	;;
	dep.z r15 = r15, 8, 24
	dep.z r8 = r32, 24, 8
	;;
	or r8 = r15, r8
	;;
	or r8 = r16, r8
	;;
	or r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp bswap_32#
	.align 16
	.global bswap_64#
	.type	bswap_64#, @function
	.proc bswap_64#
bswap_64:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	shr.u r14 = r32, 56
	movl r8 = 71776119061217280
	;;
	and r8 = r8, r32
	;;
	shr.u r8 = r8, 40
	;;
	or r8 = r14, r8
	movl r14 = 280375465082880
	;;
	and r14 = r14, r32
	;;
	shr.u r14 = r14, 24
	;;
	or r8 = r14, r8
	movl r14 = 1095216660480
	;;
	and r14 = r14, r32
	;;
	shr.u r14 = r14, 8
	;;
	or r8 = r14, r8
	movl r14 = 4278190080
	;;
	and r14 = r14, r32
	;;
	shl r14 = r14, 8
	;;
	or r8 = r14, r8
	movl r14 = 16711680
	;;
	and r14 = r14, r32
	;;
	shl r14 = r14, 24
	;;
	or r8 = r14, r8
	addl r14 = 65280, r0
	;;
	and r14 = r14, r32
	;;
	shl r14 = r14, 40
	;;
	or r8 = r14, r8
	shl r32 = r32, 56
	;;
	or r8 = r32, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp bswap_64#
	.align 16
	.global ffs#
	.type	ffs#, @function
	.proc ffs#
ffs:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r0
	br .L304
	;;
.L307:
	addp4 r14 = r32, r0
	addp4 r15 = r8, r0
	;;
	shr.u r14 = r14, r15
	;;
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L305
	adds r8 = 1, r8
	br .L306
	;;
.L305:
	adds r8 = 1, r8
.L304:
	;;
	cmp4.ne p6, p7 = 32, r8
	(p6) br.cond.dptk .L307
	mov r8 = r0
.L306:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp ffs#
	.align 16
	.global libiberty_ffs#
	.type	libiberty_ffs#, @function
	.proc libiberty_ffs#
libiberty_ffs:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dptk .L312
	addl r8 = 1, r0
	br .L310
	;;
.L311:
	extr r32 = r32, 1, 31
	adds r8 = 1, r8
.L310:
	;;
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L311
	br .L309
	;;
.L312:
	mov r8 = r0
.L309:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp libiberty_ffs#
	.align 16
	.global gl_isinff#
	.type	gl_isinff#, @function
	.proc gl_isinff#
gl_isinff:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	movl r14 = 0xff7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L316
	movl r14 = 0x7f7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p7) br.cond.dptk .L319
	addl r8 = 1, r0
	br .L314
	;;
.L316:
	addl r8 = 1, r0
	br .L314
	;;
.L319:
	mov r8 = r0
.L314:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp gl_isinff#
	.align 16
	.global gl_isinfd#
	.type	gl_isinfd#, @function
	.proc gl_isinfd#
gl_isinfd:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	movl r14 = 0xffefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L323
	movl r14 = 0x7fefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p7) br.cond.dptk .L326
	addl r8 = 1, r0
	br .L321
	;;
.L323:
	addl r8 = 1, r0
	br .L321
	;;
.L326:
	mov r8 = r0
.L321:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp gl_isinfd#
	.section	.rodata
	.align 16
.LC0:
	data4	-1
	data4	-1
	data4	65534
	data4	0
	.align 16
.LC1:
	data4	-1
	data4	-1
	data4	32766
	data4	0
	.text
	.align 16
	.global gl_isinfl#
	.type	gl_isinfl#, @function
	.proc gl_isinfl#
gl_isinfl:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	movl r14 = @gprel(.LC0)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L330
	movl r14 = @gprel(.LC1)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p7) br.cond.dptk .L333
	addl r8 = 1, r0
	br .L328
	;;
.L330:
	addl r8 = 1, r0
	br .L328
	;;
.L333:
	mov r8 = r0
.L328:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp gl_isinfl#
	.align 16
	.global _Qp_itoq#
	.type	_Qp_itoq#, @function
	.proc _Qp_itoq#
_Qp_itoq:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	sxt4 r33 = r33
	;;
	setf.sig f6 = r33
	;;
	fcvt.xf f6 = f6
	;;
	stfe [r32] = f6
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp _Qp_itoq#
	.align 16
	.global ldexpf#
	.type	ldexpf#, @function
	.proc ldexpf#
ldexpf:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L336
	fadd.s f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L336
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L340
	movl r14 = 0x3f000000
	;;
	setf.s f6 = r14
	br .L339
	;;
.L340:
	movl r14 = 0x40000000
	;;
	setf.s f6 = r14
.L339:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L338
	;;
	fmpy.s f8 = f8, f6
.L338:
	extr.u r14 = r33, 31, 1
	;;
	add r33 = r14, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L336
	fmpy.s f6 = f6, f6
	br .L339
	;;
.L336:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp ldexpf#
	.align 16
	.global ldexp#
	.type	ldexp#, @function
	.proc ldexp#
ldexp:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L342
	fadd.d f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L342
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L346
	movl r14 = 0x3fe0000000000000
	;;
	setf.d f6 = r14
	br .L345
	;;
.L346:
	movl r14 = 0x4000000000000000
	;;
	setf.d f6 = r14
.L345:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L344
	;;
	fmpy.d f8 = f8, f6
.L344:
	extr.u r14 = r33, 31, 1
	;;
	add r33 = r14, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L342
	fmpy.d f6 = f6, f6
	br .L345
	;;
.L342:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp ldexp#
	.section	.rodata
	.align 16
.LC4:
	data4	0
	data4	-2147483648
	data4	16382
	data4	0
	.align 16
.LC5:
	data4	0
	data4	-2147483648
	data4	16384
	data4	0
	.text
	.align 16
	.global ldexpl#
	.type	ldexpl#, @function
	.proc ldexpl#
ldexpl:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dptk .L348
	fadd f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L348
	cmp4.le p6, p7 = r0, r34
	(p6) br.cond.dptk .L352
	movl r14 = @gprel(.LC4)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	br .L351
	;;
.L352:
	movl r14 = @gprel(.LC5)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
.L351:
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L350
	;;
	fmpy f8 = f8, f6
.L350:
	extr.u r14 = r34, 31, 1
	;;
	add r34 = r14, r34
	;;
	extr r34 = r34, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L348
	fmpy f6 = f6, f6
	br .L351
	;;
.L348:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp ldexpl#
	.align 16
	.global memxor#
	.type	memxor#, @function
	.proc memxor#
memxor:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	add r34 = r33, r34
	;;
	mov r14 = r8
	br .L354
	;;
.L355:
	adds r33 = 1, r33
	;;
	adds r15 = -1, r33
	;;
	ld1 r17 = [r15]
	adds r14 = 1, r14
	;;
	adds r16 = -1, r14
	;;
	ld1 r15 = [r16]
	;;
	xor r15 = r17, r15
	;;
	st1 [r16] = r15
.L354:
	cmp.ne p6, p7 = r34, r33
	(p6) br.cond.dptk .L355
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp memxor#
	.align 16
	.global strncat#
	.type	strncat#, @function
	.proc strncat#
strncat:
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 4, 1, 0
	.vframe r37
	mov r37 = r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	mov r39 = r32
	;;
	br.call.sptk.many b0 = strlen#
	mov r1 = r38
	add r8 = r32, r8
	br .L357
	;;
.L359:
	adds r34 = -1, r34
.L357:
	mov r15 = r8
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L358
	ld1 r14 = [r33]
	adds r33 = 1, r33
	;;
	st1 [r8] = r14
	adds r8 = 1, r8
	;;
	adds r14 = -1, r8
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L359
.L358:
	;;
	cmp.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L360
	st1 [r15] = r0
.L360:
	mov r8 = r32
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
	br.ret.sptk.many b0
	;;
	.endp strncat#
	.align 16
	.global strnlen#
	.type	strnlen#, @function
	.proc strnlen#
strnlen:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r0
	br .L362
	;;
.L364:
	adds r8 = 1, r8
.L362:
	;;
	cmp.eq p6, p7 = r33, r8
	(p6) br.cond.dptk .L363
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	adds r32 = 1, r32
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L364
.L363:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp strnlen#
	.align 16
	.global strpbrk#
	.type	strpbrk#, @function
	.proc strpbrk#
strpbrk:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	br .L366
	;;
.L368:
	adds r15 = -1, r14
	;;
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	adds r16 = -1, r32
	;;
	ld1 r16 = [r16]
	;;
	sxt1 r16 = r16
	;;
	cmp4.eq p6, p7 = r15, r16
	(p6) br.cond.dptk .L367
.L369:
	ld1 r15 = [r14]
	;;
	sxt1 r15 = r15
	adds r14 = 1, r14
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L368
.L366:
	mov r8 = r32
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	adds r32 = 1, r32
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L371
	mov r14 = r33
	br .L369
	;;
.L371:
	mov r8 = r0
.L367:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp strpbrk#
	.align 16
	.global strrchr#
	.type	strrchr#, @function
	.proc strrchr#
strrchr:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r0
.L374:
	mov r15 = r32
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	adds r32 = 1, r32
	;;
	cmp4.eq p6, p7 = r14, r33
	(p7) br.cond.dptk .L373
	mov r8 = r15
.L373:
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L374
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp strrchr#
	.align 16
	.global strstr#
	.type	strstr#, @function
	.proc strstr#
strstr:
	.prologue 14, 36
	.save ar.pfs, r37
	alloc r37 = ar.pfs, 2, 6, 3, 0
	.vframe r38
	mov r38 = r12
	.save rp, r36
	mov r36 = b0
	mov r39 = r1
	.body
	mov r40 = r33
	;;
	br.call.sptk.many b0 = strlen#
	mov r1 = r39
	mov r35 = r8
	;;
	cmp.eq p6, p7 = 0, r35
	(p6) br.cond.dptk .L380
	ld1 r34 = [r33]
	;;
	sxt1 r34 = r34
	br .L378
	;;
.L379:
	mov r42 = r35
	mov r41 = r33
	mov r40 = r32
	br.call.sptk.many b0 = strncmp#
	mov r1 = r39
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dptk .L381
	adds r32 = 1, r32
.L378:
	;;
	mov r41 = r34
	mov r40 = r32
	br.call.sptk.many b0 = strchr#
	mov r1 = r39
	mov r32 = r8
	;;
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L379
	mov r8 = r0
	br .L377
	;;
.L380:
	mov r8 = r32
	br .L377
	;;
.L381:
	mov r8 = r32
.L377:
	mov ar.pfs = r37
	mov b0 = r36
	.restore sp
	mov r12 = r38
	br.ret.sptk.many b0
	;;
	.endp strstr#
	.align 16
	.global copysign#
	.type	copysign#, @function
	.proc copysign#
copysign:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.lt p6, p7 = f8, f0
	;;
	(p7) br.cond.dptk .L383
	fcmp.gt p6, p7 = f9, f0
	;;
	(p6) br.cond.dptk .L385
.L383:
	fcmp.gt p6, p7 = f8, f0
	;;
	(p7) br.cond.dptk .L386
	fcmp.lt p6, p7 = f9, f0
	;;
	(p7) br.cond.dptk .L386
.L385:
	fneg f8 = f8
.L386:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp copysign#
	.align 16
	.global memmem#
	.type	memmem#, @function
	.proc memmem#
memmem:
	.prologue 14, 38
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 4, 6, 3, 0
	.vframe r40
	mov r40 = r12
	.save rp, r38
	mov r38 = b0
	mov r41 = r1
	.body
	mov r8 = r32
	sub r37 = r33, r35
	;;
	add r37 = r8, r37
	cmp.eq p6, p7 = 0, r35
	(p6) br.cond.dptk .L396
	;;
	cmp.gtu p6, p7 = r35, r33
	(p6) br.cond.dptk .L400
	mov r36 = r8
	br .L397
	;;
.L398:
	ld1 r14 = [r36]
	;;
	sxt1 r14 = r14
	adds r36 = 1, r36
	ld1 r15 = [r34]
	;;
	sxt1 r15 = r15
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L397
	adds r44 = -1, r35
	adds r43 = 1, r34
	mov r42 = r36
	br.call.sptk.many b0 = memcmp#
	mov r1 = r41
	;;
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dptk .L401
.L397:
	mov r32 = r36
	;;
	cmp.geu p6, p7 = r37, r36
	(p6) br.cond.dptk .L398
	mov r8 = r0
	br .L396
	;;
.L400:
	mov r8 = r0
	br .L396
	;;
.L401:
	mov r8 = r32
.L396:
	mov ar.pfs = r39
	mov b0 = r38
	.restore sp
	mov r12 = r40
	br.ret.sptk.many b0
	;;
	.endp memmem#
	.align 16
	.global mempcpy#
	.type	mempcpy#, @function
	.proc mempcpy#
mempcpy:
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 4, 3, 0
	.vframe r37
	mov r37 = r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	mov r39 = r32
	mov r40 = r33
	mov r41 = r34
	;;
	br.call.sptk.many b0 = memcpy#
	mov r1 = r38
	add r8 = r8, r34
	;;
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
	br.ret.sptk.many b0
	;;
	.endp mempcpy#
	.align 16
	.global frexp#
	.type	frexp#, @function
	.proc frexp#
frexp:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.lt p6, p7 = f8, f0
	;;
	(p7) br.cond.dptk .L417
	fneg f8 = f8
	addl r15 = 1, r0
	br .L404
	;;
.L417:
	mov r15 = r0
.L404:
	fcmp.ge p6, p7 = f8, f1
	;;
	(p6) br.cond.dptk .L414
	br .L418
	;;
.L408:
	adds r14 = 1, r14
	movl r16 = 0x3fe0000000000000
	;;
	setf.d f6 = r16
	;;
	fmpy.d f8 = f8, f6
	br .L406
	;;
.L414:
	mov r14 = r0
.L406:
	fcmp.ge p6, p7 = f8, f1
	;;
	(p6) br.cond.dptk .L408
	br .L409
	;;
.L418:
	movl r14 = 0x3fe0000000000000
	;;
	setf.d f6 = r14
	;;
	fcmp.lt p8, p9 = f8, f6
	fcmp.neq p6, p7 = f8, f0
	;;
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L415
	mov r14 = r0
	br .L409
	;;
.L411:
	adds r14 = -1, r14
	fadd.d f8 = f8, f8
	br .L410
	;;
.L415:
	mov r14 = r0
.L410:
	movl r16 = 0x3fe0000000000000
	;;
	setf.d f6 = r16
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L411
.L409:
	st4 [r33] = r14
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L412
	fneg f8 = f8
.L412:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp frexp#
	.align 16
	.global __muldi3#
	.type	__muldi3#, @function
	.proc __muldi3#
__muldi3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r0
	br .L420
	;;
.L422:
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L421
	add r8 = r8, r33
.L421:
	shladd r33 = r33, 1, r0
	shr.u r32 = r32, 1
.L420:
	;;
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L422
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __muldi3#
	.align 16
	.global udivmodsi4#
	.type	udivmodsi4#, @function
	.proc udivmodsi4#
udivmodsi4:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addl r14 = 1, r0
	br .L424
	;;
.L426:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L424:
	;;
	cmp4.gtu p6, p7 = r32, r33
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	cmp4.ne p6, p7 = 0, r14
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L431
	;;
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L426
	mov r8 = r0
	br .L428
	;;
.L429:
	cmp4.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L427
	sub r32 = r32, r33
	or r8 = r14, r8
.L427:
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	br .L428
	;;
.L431:
	mov r8 = r0
.L428:
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L429
	;;
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dptk .L430
	mov r8 = r32
.L430:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp udivmodsi4#
	.align 16
	.global __clrsbqi2#
	.type	__clrsbqi2#, @function
	.proc __clrsbqi2#
__clrsbqi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	sxt1 r32 = r32
	;;
	cmp4.le p6, p7 = r0, r32
	(p6) br.cond.dptk .L434
	andcm r32 = -1, r32
.L434:
	;;
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dptk .L436
	dep.z r32 = r32, 8, 24
	;;
	addp4 r32 = r32, r0
	;;
	setf.sig f6 = r32
	;;
	fcvt.xuf f6 = f6
	;;
	getf.exp r8 = f6
	addl r14 = 65566, r0
	;;
	sub r8 = r14, r8, 1
	br .L435
	;;
.L436:
	addl r8 = 7, r0
.L435:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __clrsbqi2#
	.align 16
	.global __clrsbdi2#
	.type	__clrsbdi2#, @function
	.proc __clrsbdi2#
__clrsbdi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.le p6, p7 = r0, r32
	(p6) br.cond.dptk .L438
	andcm r32 = -1, r32
.L438:
	;;
	cmp.eq p6, p7 = 0, r32
	(p6) br.cond.dptk .L440
	setf.sig f7 = r32
	;;
	fcvt.xuf f6 = f7
	;;
	getf.exp r8 = f6
	addl r14 = 65598, r0
	;;
	sub r8 = r14, r8, 1
	br .L439
	;;
.L440:
	addl r8 = 63, r0
.L439:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __clrsbdi2#
	.align 16
	.global __mulsi3#
	.type	__mulsi3#, @function
	.proc __mulsi3#
__mulsi3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r0
	br .L442
	;;
.L444:
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L443
	add r8 = r8, r33
.L443:
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
.L442:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L444
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mulsi3#
	.align 16
	.global __cmovd#
	.type	__cmovd#, @function
	.proc __cmovd#
__cmovd:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	extr.u r14 = r34, 3, 29
	and r15 = -8, r34
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L446
	addp4 r16 = r34, r0
	;;
	add r16 = r33, r16
	;;
	cmp.leu p6, p7 = r32, r16
	(p6) br.cond.dptk .L447
.L446:
	mov r16 = r33
	mov r17 = r32
	addp4 r14 = r14, r0
	;;
	shladd r14 = r14, 3, r0
	;;
	add r14 = r14, r33
	br .L448
	;;
.L449:
	ld8 r18 = [r16]
	adds r16 = 8, r16
	;;
	st8 [r17] = r18
	adds r17 = 8, r17
.L448:
	cmp.ne p6, p7 = r14, r16
	(p6) br.cond.dptk .L449
	addp4 r14 = r15, r0
	;;
	add r33 = r33, r14
	add r32 = r32, r14
	br .L450
	;;
.L451:
	ld1 r14 = [r33]
	adds r33 = 1, r33
	;;
	st1 [r32] = r14
	adds r32 = 1, r32
	adds r15 = 1, r15
.L450:
	;;
	cmp4.ltu p6, p7 = r15, r34
	(p6) br.cond.dptk .L451
	br .L445
	;;
.L453:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L447:
	adds r34 = -1, r34
	;;
	cmp4.ne p6, p7 = -1, r34
	(p6) br.cond.dptk .L453
.L445:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __cmovd#
	.align 16
	.global __cmovh#
	.type	__cmovh#, @function
	.proc __cmovh#
__cmovh:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	extr.u r14 = r34, 1, 31
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L455
	addp4 r15 = r34, r0
	;;
	add r15 = r33, r15
	;;
	cmp.leu p6, p7 = r32, r15
	(p6) br.cond.dptk .L456
.L455:
	mov r15 = r33
	mov r16 = r32
	addp4 r14 = r14, r0
	;;
	shladd r14 = r14, 1, r0
	;;
	add r14 = r14, r33
	br .L457
	;;
.L458:
	ld2 r17 = [r15]
	adds r15 = 2, r15
	;;
	st2 [r16] = r17
	adds r16 = 2, r16
.L457:
	cmp.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L458
	;;
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L454
	adds r34 = -1, r34
	;;
	addp4 r34 = r34, r0
	;;
	add r33 = r33, r34
	add r32 = r32, r34
	;;
	ld1 r14 = [r33]
	;;
	st1 [r32] = r14
	br .L454
	;;
.L460:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L456:
	adds r34 = -1, r34
	;;
	cmp4.ne p6, p7 = -1, r34
	(p6) br.cond.dptk .L460
.L454:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __cmovh#
	.align 16
	.global __cmovw#
	.type	__cmovw#, @function
	.proc __cmovw#
__cmovw:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	extr.u r14 = r34, 2, 30
	and r15 = -4, r34
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L462
	addp4 r16 = r34, r0
	;;
	add r16 = r33, r16
	;;
	cmp.leu p6, p7 = r32, r16
	(p6) br.cond.dptk .L463
.L462:
	mov r16 = r33
	mov r17 = r32
	addp4 r14 = r14, r0
	;;
	shladd r14 = r14, 2, r0
	;;
	add r14 = r14, r33
	br .L464
	;;
.L465:
	ld4 r18 = [r16]
	adds r16 = 4, r16
	;;
	st4 [r17] = r18
	adds r17 = 4, r17
.L464:
	cmp.ne p6, p7 = r14, r16
	(p6) br.cond.dptk .L465
	addp4 r14 = r15, r0
	;;
	add r33 = r33, r14
	add r32 = r32, r14
	br .L466
	;;
.L467:
	ld1 r14 = [r33]
	adds r33 = 1, r33
	;;
	st1 [r32] = r14
	adds r32 = 1, r32
	adds r15 = 1, r15
.L466:
	;;
	cmp4.ltu p6, p7 = r15, r34
	(p6) br.cond.dptk .L467
	br .L461
	;;
.L469:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L463:
	adds r34 = -1, r34
	;;
	cmp4.ne p6, p7 = -1, r34
	(p6) br.cond.dptk .L469
.L461:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __cmovw#
	.align 16
	.global __modi#
	.type	__modi#, @function
	.proc __modi#
__modi:
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 4, 2, 0
	.vframe r36
	mov r36 = r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	sxt4 r39 = r33
	sxt4 r38 = r32
	;;
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r37
	;;
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
	br.ret.sptk.many b0
	;;
	.endp __modi#
	.align 16
	.global __uitod#
	.type	__uitod#, @function
	.proc __uitod#
__uitod:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r32 = r32, r0
	;;
	setf.sig f8 = r32
	;;
	fcvt.xuf.d f8 = f8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __uitod#
	.align 16
	.global __uitof#
	.type	__uitof#, @function
	.proc __uitof#
__uitof:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r32 = r32, r0
	;;
	setf.sig f8 = r32
	;;
	fcvt.xuf.s f8 = f8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __uitof#
	.align 16
	.global __ulltod#
	.type	__ulltod#, @function
	.proc __ulltod#
__ulltod:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	setf.sig f6 = r32
	;;
	fcvt.xuf.d f8 = f6
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ulltod#
	.align 16
	.global __ulltof#
	.type	__ulltof#, @function
	.proc __ulltof#
__ulltof:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	setf.sig f6 = r32
	;;
	fcvt.xuf.s f8 = f6
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ulltof#
	.align 16
	.global __umodi#
	.type	__umodi#, @function
	.proc __umodi#
__umodi:
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 4, 2, 0
	.vframe r36
	mov r36 = r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	addp4 r39 = r33, r0
	addp4 r38 = r32, r0
	;;
	br.call.sptk.many b0 = __umoddi3#
	mov r1 = r37
	;;
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
	br.ret.sptk.many b0
	;;
	.endp __umodi#
	.align 16
	.global __clzhi2#
	.type	__clzhi2#, @function
	.proc __clzhi2#
__clzhi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r32 = r32
	mov r8 = r0
	br .L477
	;;
.L479:
	sub r15 = 15, r8
	sxt4 r14 = r32
	;;
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L478
	adds r8 = 1, r8
.L477:
	;;
	cmp4.ne p6, p7 = 16, r8
	(p6) br.cond.dptk .L479
.L478:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __clzhi2#
	.align 16
	.global __ctzhi2#
	.type	__ctzhi2#, @function
	.proc __ctzhi2#
__ctzhi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r32 = r32
	mov r8 = r0
	br .L481
	;;
.L483:
	sxt4 r14 = r32
	addp4 r15 = r8, r0
	;;
	shr r14 = r14, r15
	;;
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L482
	adds r8 = 1, r8
.L481:
	;;
	cmp4.ne p6, p7 = 16, r8
	(p6) br.cond.dptk .L483
.L482:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ctzhi2#
	.align 16
	.global __fixunssfsi#
	.type	__fixunssfsi#, @function
	.proc __fixunssfsi#
__fixunssfsi:
	.prologue 2, 3
	.vframe r3
	mov r3 = r12
	.body
	movl r2 = 0x47000000
	;;
	setf.s f6 = r2
	;;
	fcmp.ge p6, p7 = f8, f6
	;;
	(p7) br.cond.dptk .L489
	fsub.s f8 = f8, f6
	;;
	fcvt.fx.trunc f8 = f8
	;;
	getf.sig r2 = f8
	;;
	addl r8 = 32768, r2
	br .L487
	;;
.L489:
	fcvt.fx.trunc f8 = f8
	;;
	getf.sig r8 = f8
.L487:
	.restore sp
	mov r12 = r3
	br.ret.sptk.many b0
	;;
	.endp __fixunssfsi#
	.align 16
	.global __parityhi2#
	.type	__parityhi2#, @function
	.proc __parityhi2#
__parityhi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov r15 = r0
	br .L491
	;;
.L493:
	sxt4 r14 = r32
	addp4 r16 = r15, r0
	;;
	shr r14 = r14, r16
	;;
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L492
	adds r8 = 1, r8
.L492:
	adds r15 = 1, r15
.L491:
	;;
	cmp4.ne p6, p7 = 16, r15
	(p6) br.cond.dptk .L493
	and r8 = 1, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __parityhi2#
	.align 16
	.global __popcounthi2#
	.type	__popcounthi2#, @function
	.proc __popcounthi2#
__popcounthi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov r15 = r0
	br .L495
	;;
.L497:
	sxt4 r14 = r32
	addp4 r16 = r15, r0
	;;
	shr r14 = r14, r16
	;;
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L496
	adds r8 = 1, r8
.L496:
	adds r15 = 1, r15
.L495:
	;;
	cmp4.ne p6, p7 = 16, r15
	(p6) br.cond.dptk .L497
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __popcounthi2#
	.align 16
	.global __mulsi3_iq2000#
	.type	__mulsi3_iq2000#, @function
	.proc __mulsi3_iq2000#
__mulsi3_iq2000:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r0
	br .L499
	;;
.L501:
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L500
	add r8 = r8, r33
.L500:
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
.L499:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L501
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mulsi3_iq2000#
	.align 16
	.global __mulsi3_lm32#
	.type	__mulsi3_lm32#, @function
	.proc __mulsi3_lm32#
__mulsi3_lm32:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dptk .L507
	mov r8 = r0
	br .L504
	;;
.L506:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L505
	add r8 = r8, r32
.L505:
	shladd r32 = r32, 1, r0
	extr.u r33 = r33, 1, 31
.L504:
	;;
	cmp4.ne p6, p7 = 0, r33
	(p6) br.cond.dptk .L506
	br .L503
	;;
.L507:
	mov r8 = r0
.L503:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mulsi3_lm32#
	.align 16
	.global __udivmodsi4#
	.type	__udivmodsi4#, @function
	.proc __udivmodsi4#
__udivmodsi4:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addl r14 = 1, r0
	br .L509
	;;
.L511:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L509:
	;;
	cmp4.gtu p6, p7 = r32, r33
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	cmp4.ne p6, p7 = 0, r14
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L516
	;;
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L511
	mov r8 = r0
	br .L513
	;;
.L514:
	cmp4.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L512
	sub r32 = r32, r33
	or r8 = r14, r8
.L512:
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	br .L513
	;;
.L516:
	mov r8 = r0
.L513:
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L514
	;;
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dptk .L515
	mov r8 = r32
.L515:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __udivmodsi4#
	.align 16
	.global __mspabi_cmpf#
	.type	__mspabi_cmpf#, @function
	.proc __mspabi_cmpf#
__mspabi_cmpf:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.lt p6, p7 = f8, f9
	;;
	(p6) br.cond.dptk .L520
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) br.cond.dptk .L521
	mov r8 = r0
	br .L519
	;;
.L520:
	addl r8 = -1, r0
	br .L519
	;;
.L521:
	addl r8 = 1, r0
.L519:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mspabi_cmpf#
	.align 16
	.global __mspabi_cmpd#
	.type	__mspabi_cmpd#, @function
	.proc __mspabi_cmpd#
__mspabi_cmpd:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	fcmp.lt p6, p7 = f8, f9
	;;
	(p6) br.cond.dptk .L524
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) br.cond.dptk .L525
	mov r8 = r0
	br .L523
	;;
.L524:
	addl r8 = -1, r0
	br .L523
	;;
.L525:
	addl r8 = 1, r0
.L523:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mspabi_cmpd#
	.align 16
	.global __mspabi_mpysll#
	.type	__mspabi_mpysll#, @function
	.proc __mspabi_mpysll#
__mspabi_mpysll:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	setf.sig f6 = r32
	setf.sig f7 = r33
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r8 = f6
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mspabi_mpysll#
	.align 16
	.global __mspabi_mpyull#
	.type	__mspabi_mpyull#, @function
	.proc __mspabi_mpyull#
__mspabi_mpyull:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	setf.sig f6 = r32
	setf.sig f7 = r33
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r8 = f6
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mspabi_mpyull#
	.align 16
	.global __mulhi3#
	.type	__mulhi3#, @function
	.proc __mulhi3#
__mulhi3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L534
	sub r33 = r0, r33
	addl r15 = 1, r0
	br .L529
	;;
.L534:
	mov r15 = r0
.L529:
	mov r8 = r0
	mov r14 = r0
	br .L530
	;;
.L532:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L531
	add r8 = r8, r32
.L531:
	shladd r32 = r32, 1, r0
	extr r33 = r33, 1, 31
	adds r14 = 1, r14
	;;
	sxt1 r14 = r14
.L530:
	;;
	zxt1 r16 = r14
	;;
	cmp4.geu p6, p7 = 31, r16
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r33
	(p6) br.cond.dptk .L532
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L533
	sub r8 = r0, r8
.L533:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mulhi3#
	.align 16
	.global __divsi3#
	.type	__divsi3#, @function
	.proc __divsi3#
__divsi3:
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 5, 3, 0
	.vframe r37
	mov r37 = r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	mov r39 = r32
	mov r40 = r33
	;;
	cmp.le p6, p7 = r0, r39
	(p6) br.cond.dptk .L540
	sub r39 = r0, r39
	addl r34 = 1, r0
	br .L537
	;;
.L540:
	mov r34 = r0
.L537:
	cmp.le p6, p7 = r0, r40
	(p6) br.cond.dptk .L538
	sub r40 = r0, r40
	;;
	cmp4.eq p6, p7 = 0, r34
	;;
	(p6) addl r34 = 1, r0
	;;
	(p7) mov r34 = r0
.L538:
	mov r41 = r0
	br.call.sptk.many b0 = __udivmodsi4#
	mov r1 = r38
	addp4 r8 = r8, r0
	;;
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L539
	sub r8 = r0, r8
.L539:
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
	br.ret.sptk.many b0
	;;
	.endp __divsi3#
	.align 16
	.global __modsi3#
	.type	__modsi3#, @function
	.proc __modsi3#
__modsi3:
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 5, 3, 0
	.vframe r37
	mov r37 = r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	mov r39 = r32
	mov r40 = r33
	;;
	cmp.le p6, p7 = r0, r39
	(p6) br.cond.dptk .L545
	sub r39 = r0, r39
	addl r34 = 1, r0
	br .L542
	;;
.L545:
	mov r34 = r0
.L542:
	cmp.le p6, p7 = r0, r40
	(p6) br.cond.dptk .L543
	sub r40 = r0, r40
.L543:
	addl r41 = 1, r0
	br.call.sptk.many b0 = __udivmodsi4#
	mov r1 = r38
	addp4 r8 = r8, r0
	;;
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L544
	sub r8 = r0, r8
.L544:
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
	br.ret.sptk.many b0
	;;
	.endp __modsi3#
	.align 16
	.global __udivmodhi4#
	.type	__udivmodhi4#, @function
	.proc __udivmodhi4#
__udivmodhi4:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r8 = r32
	zxt2 r33 = r33
	addl r14 = 1, r0
	br .L547
	;;
.L549:
	shladd r33 = r33, 1, r0
	;;
	zxt2 r33 = r33
	shladd r14 = r14, 1, r0
	;;
	zxt2 r14 = r14
.L547:
	cmp4.gtu p6, p7 = r8, r33
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	cmp4.ne p6, p7 = 0, r14
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L554
	;;
	tbit.z p6, p7 = r33, 15
	(p6) br.cond.dptk .L549
	mov r15 = r0
	br .L551
	;;
.L552:
	cmp4.gtu p6, p7 = r33, r8
	(p6) br.cond.dptk .L550
	sub r8 = r8, r33
	;;
	zxt2 r8 = r8
	or r15 = r15, r14
	;;
	zxt2 r15 = r15
.L550:
	extr.u r14 = r14, 1, 15
	extr.u r33 = r33, 1, 15
	br .L551
	;;
.L554:
	mov r15 = r0
.L551:
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L552
	;;
	cmp4.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L553
	mov r8 = r15
.L553:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __udivmodhi4#
	.align 16
	.global __udivmodsi4_libgcc#
	.type	__udivmodsi4_libgcc#, @function
	.proc __udivmodsi4_libgcc#
__udivmodsi4_libgcc:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addl r14 = 1, r0
	br .L557
	;;
.L559:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L557:
	;;
	cmp.gtu p6, p7 = r32, r33
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	cmp.ne p6, p7 = 0, r14
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L564
	;;
	tbit.z p6, p7 = r33, 31
	(p6) br.cond.dptk .L559
	mov r8 = r0
	br .L561
	;;
.L562:
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L560
	sub r32 = r32, r33
	or r8 = r14, r8
.L560:
	shr.u r14 = r14, 1
	shr.u r33 = r33, 1
	br .L561
	;;
.L564:
	mov r8 = r0
.L561:
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L562
	;;
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dptk .L563
	mov r8 = r32
.L563:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __udivmodsi4_libgcc#
	.align 16
	.global __ashldi3#
	.type	__ashldi3#, @function
	.proc __ashldi3#
__ashldi3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L567
	mov r8 = r0
	;;
	dep r8 = 0, r8, 0, 32
	adds r33 = -32, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r14 = r14, r33
	;;
	mix4.r r8 = r14, r8
	br .L569
	;;
.L567:
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L569
	mov r15 = r14
	addp4 r17 = r33, r0
	;;
	shl r16 = r15, r17
	mov r8 = r0
	;;
	shl r16 = r16, 32
	;;
	mix4.l r8 = r8, r16
	extr r14 = r14, 32, 32
	;;
	shl r14 = r14, r17
	sub r33 = 32, r33
	addp4 r15 = r15, r0
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r15 = r15, r33
	;;
	or r15 = r14, r15
	;;
	mix4.r r8 = r15, r8
.L569:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ashldi3#
	.align 16
	.global __ashlti3#
	.type	__ashlti3#, @function
	.proc __ashlti3#
__ashlti3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r16 = r32
	mov r17 = r33
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L572
	mov r14 = r0
	mov r15 = r0
	adds r34 = -64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shl r16 = r16, r34
	;;
	mov r15 = r16
	br .L573
	;;
.L572:
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L575
	addp4 r18 = r34, r0
	mov r14 = r0
	mov r15 = r0
	;;
	shl r14 = r16, r18
	shl r18 = r17, r18
	sub r34 = 64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shr.u r16 = r16, r34
	;;
	or r16 = r18, r16
	;;
	mov r15 = r16
.L573:
	mov r8 = r14
	;;
	mov r9 = r15
	br .L574
	;;
.L575:
	mov r8 = r32
	mov r9 = r33
.L574:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ashlti3#
	.align 16
	.global __ashrdi3#
	.type	__ashrdi3#, @function
	.proc __ashrdi3#
__ashrdi3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L577
	;;
	shr r15 = r14, 63
	mov r8 = r0
	;;
	mix4.r r8 = r15, r8
	adds r33 = -32, r33
	shr r14 = r14, 32
	;;
	addp4 r33 = r33, r0
	;;
	shr r14 = r14, r33
	;;
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
	br .L579
	;;
.L577:
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L579
	shr r15 = r14, 32
	addp4 r16 = r33, r0
	;;
	shr r15 = r15, r16
	mov r8 = r0
	;;
	mix4.r r8 = r15, r8
	extr r15 = r14, 32, 32
	sub r33 = 32, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r15 = r15, r33
	addp4 r14 = r14, r0
	;;
	shr.u r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
.L579:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ashrdi3#
	.align 16
	.global __ashrti3#
	.type	__ashrti3#, @function
	.proc __ashrti3#
__ashrti3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r16 = r32
	mov r17 = r33
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L582
	;;
	mov r16 = r17
	mov r14 = r0
	mov r15 = r0
	;;
	shr r15 = r16, 63
	adds r34 = -64, r34
	;;
	sxt4 r34 = r34
	;;
	shr r16 = r16, r34
	;;
	mov r14 = r16
	br .L583
	;;
.L582:
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L585
	sxt4 r18 = r34
	mov r14 = r0
	mov r15 = r0
	;;
	shr r15 = r17, r18
	sub r18 = 64, r34
	;;
	addp4 r18 = r18, r0
	;;
	shl r17 = r17, r18
	addp4 r34 = r34, r0
	;;
	shr.u r16 = r16, r34
	;;
	or r14 = r16, r17
.L583:
	;;
	mov r8 = r14
	mov r9 = r15
	br .L584
	;;
.L585:
	mov r8 = r32
	mov r9 = r33
.L584:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ashrti3#
	.align 16
	.global __bswapdi2#
	.type	__bswapdi2#, @function
	.proc __bswapdi2#
__bswapdi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	shr.u r20 = r32, 56
	shr.u r19 = r32, 40
	addl r14 = 65280, r0
	;;
	and r19 = r14, r19
	shr.u r18 = r32, 24
	movl r14 = 16711680
	;;
	and r18 = r14, r18
	shr.u r17 = r32, 8
	movl r14 = 4278190080
	;;
	and r17 = r14, r17
	shl r16 = r32, 8
	movl r14 = 1095216660480
	;;
	and r16 = r14, r16
	shl r15 = r32, 24
	movl r14 = 280375465082880
	;;
	and r15 = r14, r15
	shl r14 = r32, 40
	movl r21 = 71776119061217280
	;;
	and r14 = r21, r14
	shl r8 = r32, 56
	;;
	or r8 = r20, r8
	;;
	or r8 = r19, r8
	;;
	or r8 = r18, r8
	;;
	or r8 = r17, r8
	;;
	or r8 = r16, r8
	;;
	or r8 = r15, r8
	;;
	or r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __bswapdi2#
	.align 16
	.global __bswapsi2#
	.type	__bswapsi2#, @function
	.proc __bswapsi2#
__bswapsi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	extr.u r16 = r32, 24, 8
	extr.u r15 = r32, 8, 24
	addl r14 = 65280, r0
	;;
	and r15 = r14, r15
	dep.z r17 = r32, 8, 24
	movl r14 = 16711680
	;;
	and r14 = r17, r14
	dep.z r8 = r32, 24, 8
	;;
	or r8 = r16, r8
	;;
	or r8 = r15, r8
	;;
	or r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __bswapsi2#
	.align 16
	.global __clzsi2#
	.type	__clzsi2#, @function
	.proc __clzsi2#
__clzsi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addl r14 = 65535, r0
	;;
	cmp4.ltu p6, p7 = r14, r32
	(p6) br.cond.dptk .L593
	addl r14 = 16, r0
	br .L589
	;;
.L593:
	mov r14 = r0
.L589:
	;;
	sub r15 = 16, r14
	addp4 r32 = r32, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r32 = r32, r15
	addl r15 = 65280, r0
	;;
	and r15 = r15, r32
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L594
	addl r15 = 8, r0
	br .L590
	;;
.L594:
	mov r15 = r0
.L590:
	;;
	sub r16 = 8, r15
	addp4 r32 = r32, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r32 = r32, r16
	add r14 = r14, r15
	addl r15 = 240, r0
	;;
	and r15 = r15, r32
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L595
	addl r15 = 4, r0
	br .L591
	;;
.L595:
	mov r15 = r0
.L591:
	;;
	sub r16 = 4, r15
	addp4 r32 = r32, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r32 = r32, r16
	add r14 = r14, r15
	;;
	and r15 = 12, r32
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L596
	addl r15 = 2, r0
	br .L592
	;;
.L596:
	mov r15 = r0
.L592:
	;;
	sub r16 = 2, r15
	addp4 r32 = r32, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r32 = r32, r16
	add r14 = r14, r15
	;;
	tbit.z p6, p7 = r32, 1
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	sub r32 = 2, r32
	;;
	setf.sig f6 = r32
	setf.sig f7 = r15
	setf.sig f8 = r14
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __clzsi2#
	.align 16
	.global __clzti2#
	.type	__clzti2#, @function
	.proc __clzti2#
__clzti2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r16 = r33
	;;
	cmp.eq p6, p7 = 0, r16
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	sub r15 = r0, r14
	adds r14 = -1, r14
	;;
	and r14 = r16, r14
	and r32 = r32, r15
	;;
	or r32 = r32, r14
	;;
	setf.sig f6 = r32
	;;
	fcvt.xuf f6 = f6
	;;
	getf.exp r14 = f6
	addl r8 = 65598, r0
	;;
	sub r8 = r8, r14
	and r15 = 64, r15
	;;
	add r8 = r8, r15
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __clzti2#
	.align 16
	.global __cmpdi2#
	.type	__cmpdi2#, @function
	.proc __cmpdi2#
__cmpdi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	extr r15 = r32, 32, 32
	extr r14 = r33, 32, 32
	;;
	cmp4.gt p6, p7 = r14, r15
	(p6) br.cond.dptk .L600
	;;
	cmp4.lt p6, p7 = r14, r15
	(p6) br.cond.dptk .L601
	;;
	cmp4.ltu p6, p7 = r32, r33
	(p6) br.cond.dptk .L602
	;;
	cmp4.gtu p6, p7 = r32, r33
	(p6) br.cond.dptk .L603
	addl r8 = 1, r0
	br .L599
	;;
.L600:
	mov r8 = r0
	br .L599
	;;
.L601:
	addl r8 = 2, r0
	br .L599
	;;
.L602:
	mov r8 = r0
	br .L599
	;;
.L603:
	addl r8 = 2, r0
.L599:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __cmpdi2#
	.align 16
	.global __aeabi_lcmp#
	.type	__aeabi_lcmp#, @function
	.proc __aeabi_lcmp#
__aeabi_lcmp:
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 4, 2, 0
	.vframe r36
	mov r36 = r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	mov r38 = r32
	mov r39 = r33
	;;
	br.call.sptk.many b0 = __cmpdi2#
	mov r1 = r37
	adds r8 = -1, r8
	;;
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
	br.ret.sptk.many b0
	;;
	.endp __aeabi_lcmp#
	.align 16
	.global __cmpti2#
	.type	__cmpti2#, @function
	.proc __cmpti2#
__cmpti2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.lt p6, p7 = r33, r35
	(p6) br.cond.dptk .L607
	;;
	cmp.gt p6, p7 = r33, r35
	(p6) br.cond.dptk .L608
	;;
	cmp.ltu p6, p7 = r32, r34
	(p6) br.cond.dptk .L609
	;;
	cmp.gtu p6, p7 = r32, r34
	(p6) br.cond.dptk .L610
	addl r8 = 1, r0
	br .L606
	;;
.L607:
	mov r8 = r0
	br .L606
	;;
.L608:
	addl r8 = 2, r0
	br .L606
	;;
.L609:
	mov r8 = r0
	br .L606
	;;
.L610:
	addl r8 = 2, r0
.L606:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __cmpti2#
	.align 16
	.global __ctzsi2#
	.type	__ctzsi2#, @function
	.proc __ctzsi2#
__ctzsi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	zxt2 r14 = r32
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L616
	addl r8 = 16, r0
	br .L612
	;;
.L616:
	mov r8 = r0
.L612:
	addp4 r32 = r32, r0
	;;
	addp4 r14 = r8, r0
	;;
	shr.u r32 = r32, r14
	;;
	zxt1 r14 = r32
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L617
	addl r14 = 8, r0
	br .L613
	;;
.L617:
	mov r14 = r0
.L613:
	addp4 r32 = r32, r0
	;;
	addp4 r15 = r14, r0
	;;
	shr.u r32 = r32, r15
	add r8 = r8, r14
	;;
	and r14 = 15, r32
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L618
	addl r14 = 4, r0
	br .L614
	;;
.L618:
	mov r14 = r0
.L614:
	addp4 r32 = r32, r0
	;;
	addp4 r15 = r14, r0
	;;
	shr.u r32 = r32, r15
	add r8 = r8, r14
	;;
	and r14 = 3, r32
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L619
	addl r14 = 2, r0
	br .L615
	;;
.L619:
	mov r14 = r0
.L615:
	addp4 r32 = r32, r0
	;;
	addp4 r15 = r14, r0
	;;
	shr.u r32 = r32, r15
	;;
	and r32 = 3, r32
	add r8 = r8, r14
	;;
	andcm r14 = 1, r32
	extr.u r32 = r32, 1, 1
	;;
	sub r32 = 2, r32
	sub r14 = r0, r14
	;;
	and r32 = r14, r32
	;;
	add r8 = r8, r32
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ctzsi2#
	.align 16
	.global __ctzti2#
	.type	__ctzti2#, @function
	.proc __ctzti2#
__ctzti2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
	;;
	cmp.eq p6, p7 = 0, r14
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	sub r15 = r0, r15
	;;
	and r16 = r33, r15
	andcm r14 = r14, r15
	;;
	or r14 = r16, r14
	;;
	adds r8 = -1, r14
	;;
	andcm r8 = r8, r14
	;;
	popcnt r8 = r8
	and r15 = 64, r15
	;;
	add r8 = r8, r15
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ctzti2#
	.align 16
	.global __ffsti2#
	.type	__ffsti2#, @function
	.proc __ffsti2#
__ffsti2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L622
	;;
	cmp.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L624
	adds r8 = -1, r33
	;;
	andcm r8 = r8, r33
	;;
	popcnt r8 = r8
	;;
	adds r8 = 65, r8
	br .L623
	;;
.L622:
	adds r14 = -1, r32
	;;
	andcm r32 = r14, r32
	;;
	popcnt r32 = r32
	;;
	adds r8 = 1, r32
	br .L623
	;;
.L624:
	mov r8 = r0
.L623:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ffsti2#
	.align 16
	.global __lshrdi3#
	.type	__lshrdi3#, @function
	.proc __lshrdi3#
__lshrdi3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L626
	mov r8 = r0
	;;
	dep r8 = 0, r8, 32, 32
	adds r33 = -32, r33
	shr.u r14 = r14, 32
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r14 = r14, r33
	;;
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
	br .L628
	;;
.L626:
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L628
	shr.u r15 = r14, 32
	addp4 r16 = r33, r0
	;;
	shr.u r15 = r15, r16
	mov r8 = r0
	;;
	mix4.r r8 = r15, r8
	extr.u r15 = r14, 32, 32
	sub r33 = 32, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r15 = r15, r33
	addp4 r14 = r14, r0
	;;
	shr.u r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
.L628:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __lshrdi3#
	.align 16
	.global __lshrti3#
	.type	__lshrti3#, @function
	.proc __lshrti3#
__lshrti3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r16 = r32
	mov r17 = r33
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L631
	mov r14 = r0
	mov r15 = r0
	adds r34 = -64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shr.u r14 = r17, r34
	br .L632
	;;
.L631:
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L634
	addp4 r18 = r34, r0
	mov r14 = r0
	mov r15 = r0
	;;
	shr.u r15 = r17, r18
	sub r34 = 64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shl r17 = r17, r34
	shr.u r16 = r16, r18
	;;
	or r14 = r16, r17
.L632:
	;;
	mov r8 = r14
	mov r9 = r15
	br .L633
	;;
.L634:
	mov r8 = r32
	mov r9 = r33
.L633:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __lshrti3#
	.align 16
	.global __muldsi3#
	.type	__muldsi3#, @function
	.proc __muldsi3#
__muldsi3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addl r16 = 65535, r0
	;;
	and r14 = r16, r32
	;;
	setf.sig f8 = r14
	and r14 = r16, r33
	;;
	setf.sig f6 = r14
	;;
	xmpy.l f7 = f8, f6
	;;
	getf.sig r14 = f7
	mov r8 = r0
	;;
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
	;;
	mov r15 = r8
	;;
	extr.u r14 = r15, 16, 16
	and r15 = r16, r15
	;;
	shl r15 = r15, 32
	;;
	mix4.l r8 = r8, r15
	extr.u r32 = r32, 16, 16
	;;
	setf.sig f7 = r32
	setf.sig f9 = r14
	;;
	xma.l f9 = f6, f7, f9
	;;
	getf.sig r14 = f9
	;;
	dep.z r15 = r14, 16, 16
	;;
	add r15 = r15, r8
	;;
	shl r15 = r15, 32
	;;
	mix4.l r8 = r8, r15
	extr.u r14 = r14, 16, 16
	;;
	mix4.r r8 = r14, r8
	;;
	mov r15 = r8
	;;
	extr.u r14 = r15, 16, 16
	and r15 = r16, r15
	;;
	shl r15 = r15, 32
	;;
	mix4.l r8 = r8, r15
	extr.u r33 = r33, 16, 16
	;;
	setf.sig f6 = r33
	setf.sig f9 = r14
	;;
	xma.l f9 = f8, f6, f9
	;;
	getf.sig r14 = f9
	;;
	dep.z r15 = r14, 16, 16
	;;
	add r15 = r15, r8
	;;
	shl r15 = r15, 32
	;;
	mix4.l r8 = r8, r15
	;;
	extr r15 = r8, 32, 32
	extr.u r14 = r14, 16, 16
	;;
	add r14 = r14, r15
	;;
	mix4.r r8 = r14, r8
	;;
	extr r14 = r8, 32, 32
	;;
	setf.sig f8 = r14
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r14 = f6
	;;
	mix4.r r8 = r14, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __muldsi3#
	.align 16
	.global __muldi3_compiler_rt#
	.type	__muldi3_compiler_rt#, @function
	.proc __muldi3_compiler_rt#
__muldi3_compiler_rt:
	.prologue 14, 36
	.save ar.pfs, r37
	alloc r37 = ar.pfs, 2, 6, 2, 0
	.vframe r38
	mov r38 = r12
	.save rp, r36
	mov r36 = b0
	mov r39 = r1
	.body
	mov r35 = r32
	mov r34 = r33
	mov r41 = r33
	mov r40 = r32
	;;
	br.call.sptk.many b0 = __muldsi3#
	mov r1 = r39
	mov r14 = r8
	;;
	mov r8 = r14
	extr r14 = r14, 32, 32
	extr r32 = r32, 32, 32
	extr r33 = r33, 32, 32
	;;
	setf.sig f7 = r33
	setf.sig f8 = r35
	;;
	xmpy.l f6 = f7, f8
	setf.sig f7 = r32
	setf.sig f8 = r34
	;;
	xma.l f7 = f7, f8, f6
	;;
	getf.sig r32 = f7
	;;
	add r32 = r32, r14
	;;
	mix4.r r8 = r32, r8
	mov ar.pfs = r37
	mov b0 = r36
	.restore sp
	mov r12 = r38
	br.ret.sptk.many b0
	;;
	.endp __muldi3_compiler_rt#
	.align 16
	.global __mulddi3#
	.type	__mulddi3#, @function
	.proc __mulddi3#
__mulddi3:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	addp4 r18 = 4294967295 - 0x100000000, r0
	;;
	and r14 = r18, r32
	;;
	setf.sig f8 = r14
	and r14 = r18, r33
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f8, f7
	;;
	getf.sig r15 = f6
	mov r16 = r0
	mov r17 = r0
	;;
	mov r16 = r15
	shr.u r14 = r15, 32
	and r15 = r18, r15
	;;
	mov r16 = r15
	shr.u r32 = r32, 32
	;;
	setf.sig f6 = r32
	setf.sig f9 = r14
	;;
	xma.l f9 = f6, f7, f9
	;;
	getf.sig r14 = f9
	;;
	shl r19 = r14, 32
	;;
	add r16 = r19, r15
	shr.u r14 = r14, 32
	;;
	mov r17 = r14
	mov r15 = r16
	;;
	shr.u r14 = r15, 32
	and r15 = r18, r15
	;;
	mov r16 = r15
	shr.u r33 = r33, 32
	;;
	setf.sig f7 = r33
	setf.sig f9 = r14
	;;
	xma.l f9 = f8, f7, f9
	;;
	getf.sig r14 = f9
	;;
	shl r18 = r14, 32
	;;
	add r16 = r18, r15
	shr.u r14 = r14, 32
	;;
	add r14 = r14, r17
	;;
	mov r17 = r14
	setf.sig f8 = r14
	;;
	xma.l f8 = f6, f7, f8
	;;
	getf.sig r32 = f8
	;;
	mov r17 = r32
	mov r8 = r16
	;;
	mov r9 = r17
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __mulddi3#
	.align 16
	.global __multi3#
	.type	__multi3#, @function
	.proc __multi3#
__multi3:
	.prologue 14, 38
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 4, 6, 2, 0
	.vframe r40
	mov r40 = r12
	.save rp, r38
	mov r38 = b0
	mov r41 = r1
	.body
	mov r37 = r32
	mov r36 = r34
	mov r43 = r34
	mov r42 = r32
	;;
	br.call.sptk.many b0 = __mulddi3#
	mov r1 = r41
	mov r14 = r8
	mov r15 = r9
	setf.sig f7 = r37
	setf.sig f8 = r35
	;;
	xmpy.l f6 = f7, f8
	setf.sig f7 = r36
	setf.sig f8 = r33
	;;
	xma.l f7 = f7, f8, f6
	;;
	getf.sig r36 = f7
	;;
	add r36 = r36, r9
	;;
	mov r15 = r36
	mov r8 = r14
	;;
	mov r9 = r15
	mov ar.pfs = r39
	mov b0 = r38
	.restore sp
	mov r12 = r40
	br.ret.sptk.many b0
	;;
	.endp __multi3#
	.align 16
	.global __negdi2#
	.type	__negdi2#, @function
	.proc __negdi2#
__negdi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	sub r8 = r0, r32
	;;
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __negdi2#
	.align 16
	.global __negti2#
	.type	__negti2#, @function
	.proc __negti2#
__negti2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.eq p6, p7 = 0, r32
	sub r8 = 0, r32
	;;
	(p7) sub r9 = -1, r33
	;;
	(p6) sub r9 = 0, r33
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __negti2#
	.align 16
	.global __paritydi2#
	.type	__paritydi2#, @function
	.proc __paritydi2#
__paritydi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	extr r14 = r32, 32, 32
	;;
	xor r32 = r14, r32
	;;
	extr.u r14 = r32, 16, 16
	;;
	xor r32 = r32, r14
	;;
	extr.u r14 = r32, 8, 24
	;;
	xor r32 = r32, r14
	;;
	extr.u r14 = r32, 4, 28
	;;
	xor r32 = r32, r14
	;;
	and r32 = 15, r32
	addl r8 = 27030, r0
	;;
	shr r8 = r8, r32
	;;
	and r8 = 1, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __paritydi2#
	.align 16
	.global __parityti2#
	.type	__parityti2#, @function
	.proc __parityti2#
__parityti2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	xor r32 = r33, r32
	;;
	extr r14 = r32, 32, 32
	;;
	xor r32 = r14, r32
	;;
	extr.u r14 = r32, 16, 16
	;;
	xor r32 = r32, r14
	;;
	extr.u r14 = r32, 8, 24
	;;
	xor r32 = r32, r14
	;;
	extr.u r14 = r32, 4, 28
	;;
	xor r32 = r32, r14
	;;
	and r32 = 15, r32
	addl r8 = 27030, r0
	;;
	shr r8 = r8, r32
	;;
	and r8 = 1, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __parityti2#
	.align 16
	.global __paritysi2#
	.type	__paritysi2#, @function
	.proc __paritysi2#
__paritysi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
	;;
	extr.u r14 = r32, 16, 16
	;;
	xor r14 = r32, r14
	;;
	extr.u r15 = r14, 8, 24
	;;
	xor r14 = r14, r15
	;;
	extr.u r15 = r14, 4, 28
	;;
	xor r14 = r14, r15
	;;
	and r14 = 15, r14
	addl r8 = 27030, r0
	;;
	shr r8 = r8, r14
	;;
	and r8 = 1, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __paritysi2#
	.align 16
	.global __popcountdi2#
	.type	__popcountdi2#, @function
	.proc __popcountdi2#
__popcountdi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
	;;
	shr.u r14 = r32, 1
	movl r15 = 6148914691236517205
	;;
	and r14 = r15, r14
	;;
	sub r14 = r32, r14
	;;
	shr.u r15 = r14, 2
	movl r16 = 3689348814741910323
	;;
	and r15 = r16, r15
	and r14 = r16, r14
	;;
	add r14 = r15, r14
	;;
	shr.u r15 = r14, 4
	;;
	add r14 = r15, r14
	movl r15 = 1085102592571150095
	;;
	and r14 = r15, r14
	;;
	extr.u r15 = r14, 32, 32
	;;
	add r14 = r15, r14
	;;
	extr.u r15 = r14, 16, 16
	;;
	add r14 = r14, r15
	;;
	extr.u r8 = r14, 8, 24
	;;
	add r8 = r8, r14
	;;
	and r8 = 127, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __popcountdi2#
	.align 16
	.global __popcountsi2#
	.type	__popcountsi2#, @function
	.proc __popcountsi2#
__popcountsi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
	extr.u r15 = r32, 1, 31
	;;
	movl r14 = 1431655765
	;;
	and r14 = r15, r14
	;;
	sub r14 = r32, r14
	;;
	extr.u r15 = r14, 2, 30
	movl r16 = 858993459
	;;
	and r15 = r15, r16
	and r14 = r14, r16
	;;
	add r14 = r15, r14
	;;
	extr.u r15 = r14, 4, 27
	;;
	add r14 = r15, r14
	movl r15 = 252645135
	;;
	and r14 = r14, r15
	;;
	extr.u r15 = r14, 16, 16
	;;
	add r14 = r14, r15
	;;
	extr.u r8 = r14, 8, 21
	;;
	add r8 = r8, r14
	;;
	and r8 = 63, r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __popcountsi2#
	.align 16
	.global __popcountti2#
	.type	__popcountti2#, @function
	.proc __popcountti2#
__popcountti2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
	mov r15 = r33
	shrp r18 = r33, r32, 1
	shr.u r19 = r33, 1
	;;
	movl r14 = 6148914691236517205
	mov r16 = r0
	mov r17 = r0
	;;
	and r16 = r14, r18
	and r17 = r14, r19
	;;
	sub r14 = r32, r16
	;;
	cmp.gtu p6, p7 = r14, r32
	;;
	(p7) sub r15 = r33, r17
	;;
	(p6) sub r15 = r33, r17, 1
	;;
	shrp r16 = r15, r14, 2
	shr.u r17 = r15, 2
	movl r20 = 3689348814741910323
	mov r18 = r0
	mov r19 = r0
	;;
	and r18 = r20, r16
	and r19 = r20, r17
	mov r16 = r0
	mov r17 = r0
	;;
	and r16 = r20, r14
	and r17 = r20, r15
	;;
	add r14 = r18, r16
	;;
	cmp.gtu p6, p7 = r18, r14
	;;
	(p7) add r15 = r19, r17
	;;
	(p6) add r15 = r19, r17, 1
	;;
	shrp r16 = r15, r14, 4
	shr.u r17 = r15, 4
	;;
	add r18 = r16, r14
	;;
	cmp.gtu p6, p7 = r16, r18
	;;
	(p7) add r19 = r17, r15
	;;
	(p6) add r19 = r17, r15, 1
	movl r16 = 1085102592571150095
	;;
	and r14 = r16, r18
	and r15 = r16, r19
	;;
	add r14 = r15, r14
	;;
	extr.u r15 = r14, 32, 32
	;;
	add r14 = r15, r14
	;;
	extr.u r15 = r14, 16, 16
	;;
	add r14 = r14, r15
	;;
	extr.u r8 = r14, 8, 24
	;;
	add r8 = r8, r14
	;;
	zxt1 r8 = r8
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __popcountti2#
	.align 16
	.global __powidf2#
	.type	__powidf2#, @function
	.proc __powidf2#
__powidf2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov f6 = f8
	extr.u r14 = r33, 31, 1
	mov f8 = f1
.L650:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L648
	;;
	fmpy.d f8 = f8, f6
.L648:
	extr.u r15 = r33, 31, 1
	;;
	add r33 = r15, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L649
	fmpy.d f6 = f6, f6
	br .L650
	;;
.L649:
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L651
	mov f10 = f1
	mov f8 = f8
	;;
	frcpa.s0 f9, p6 = f10, f8
	;;
	(p6) fnma.s1 f6 = f8, f9, f10
	;;
	(p6) fma.s1 f7 = f9, f6, f9
	(p6) fmpy.s1 f6 = f6, f6
	;;
	(p6) fma.s1 f7 = f7, f6, f7
	(p6) fmpy.s1 f6 = f6, f6
	;;
	(p6) fma.s1 f6 = f7, f6, f7
	;;
	(p6) fmpy.d.s1 f7 = f10, f6
	;;
	(p6) fnma.s1 f10 = f8, f7, f10
	;;
	(p6) fma.d.s0 f9 = f10, f6, f7
	;;
	mov f8 = f9
.L651:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __powidf2#
	.align 16
	.global __powisf2#
	.type	__powisf2#, @function
	.proc __powisf2#
__powisf2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	mov f6 = f8
	extr.u r14 = r33, 31, 1
	mov f8 = f1
.L656:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L654
	;;
	fmpy.s f8 = f8, f6
.L654:
	extr.u r15 = r33, 31, 1
	;;
	add r33 = r15, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L655
	fmpy.s f6 = f6, f6
	br .L656
	;;
.L655:
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L657
	mov f7 = f1
	mov f8 = f8
	;;
	frcpa.s0 f6, p6 = f7, f8
	;;
	(p6) fnma.s1 f10 = f8, f6, f7
	;;
	(p6) fma.s1 f9 = f6, f10, f6
	;;
	(p6) fma.s1 f9 = f9, f10, f6
	;;
	(p6) fmpy.s.s1 f10 = f7, f9
	;;
	(p6) fnma.s1 f7 = f10, f8, f7
	;;
	(p6) fma.s.s0 f6 = f7, f9, f10
	;;
	mov f8 = f6
.L657:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __powisf2#
	.align 16
	.global __ucmpdi2#
	.type	__ucmpdi2#, @function
	.proc __ucmpdi2#
__ucmpdi2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	extr.u r15 = r32, 32, 32
	extr.u r14 = r33, 32, 32
	;;
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L661
	;;
	cmp4.ltu p6, p7 = r14, r15
	(p6) br.cond.dptk .L662
	;;
	cmp4.ltu p6, p7 = r32, r33
	(p6) br.cond.dptk .L663
	;;
	cmp4.gtu p6, p7 = r32, r33
	(p6) br.cond.dptk .L664
	addl r8 = 1, r0
	br .L660
	;;
.L661:
	mov r8 = r0
	br .L660
	;;
.L662:
	addl r8 = 2, r0
	br .L660
	;;
.L663:
	mov r8 = r0
	br .L660
	;;
.L664:
	addl r8 = 2, r0
.L660:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ucmpdi2#
	.align 16
	.global __aeabi_ulcmp#
	.type	__aeabi_ulcmp#, @function
	.proc __aeabi_ulcmp#
__aeabi_ulcmp:
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 4, 2, 0
	.vframe r36
	mov r36 = r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	mov r38 = r32
	mov r39 = r33
	;;
	br.call.sptk.many b0 = __ucmpdi2#
	mov r1 = r37
	adds r8 = -1, r8
	;;
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
	br.ret.sptk.many b0
	;;
	.endp __aeabi_ulcmp#
	.align 16
	.global __ucmpti2#
	.type	__ucmpti2#, @function
	.proc __ucmpti2#
__ucmpti2:
	.prologue 2, 2
	.vframe r2
	mov r2 = r12
	.body
	cmp.ltu p6, p7 = r33, r35
	(p6) br.cond.dptk .L668
	;;
	cmp.gtu p6, p7 = r33, r35
	(p6) br.cond.dptk .L669
	;;
	cmp.ltu p6, p7 = r32, r34
	(p6) br.cond.dptk .L670
	;;
	cmp.gtu p6, p7 = r32, r34
	(p6) br.cond.dptk .L671
	addl r8 = 1, r0
	br .L667
	;;
.L668:
	mov r8 = r0
	br .L667
	;;
.L669:
	addl r8 = 2, r0
	br .L667
	;;
.L670:
	mov r8 = r0
	br .L667
	;;
.L671:
	addl r8 = 2, r0
.L667:
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp __ucmpti2#
	.sbss
	.align 8
	.type	s.0#, @object
	.size	s.0#, 7
s.0:
	.skip	7
	.global __umoddi3#
	.global __moddi3#
	.global __divdi3#
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
