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
	.save ar.lc, r3
	mov r3 = ar.lc
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
	;;
	sub r34 = r14, r34
	;;
	mov ar.lc = r34
	br .L5
	;;
.L6:
	ld1 r15 = [r33], -1
	;;
	st1 [r14] = r15, -1
.L5:
	br.cloop.sptk.few .L6
	br .L7
	;;
.L4:
	cmp.eq p6, p7 = r33, r8
	(p6) br.cond.dptk .L7
	mov r14 = r8
	add r34 = r33, r34
	;;
	sub r34 = r34, r33
	;;
	mov ar.lc = r34
	br .L8
	;;
.L9:
	adds r33 = 1, r33
	;;
	adds r15 = -1, r33
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15, 1
.L8:
	br.cloop.sptk.few .L9
.L7:
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	zxt1 r34 = r34
	mov ar.lc = r35
	br .L11
	;;
.L13:
	adds r35 = -1, r35
.L11:
	mov r8 = r32
	br.cloop.sptk.few .L16
	br .L12
	;;
.L16:
	ld1 r14 = [r33], 1
	;;
	st1 [r32] = r14, 1
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
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	zxt1 r33 = r33
	mov ar.lc = r34
	br .L18
	;;
.L20:
	adds r34 = -1, r34
.L18:
	mov r8 = r32
	br.cloop.sptk.few .L23
	br .L19
	;;
.L23:
	ld1 r14 = [r32], 1
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L20
.L19:
	;;
	cmp.eq p6, p7 = 0, r34
	(p7) br.cond.dptk .L21
	mov r8 = r0
.L21:
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov ar.lc = r34
	br .L25
	;;
.L27:
	adds r34 = -1, r34
.L25:
	mov r14 = r33
	mov r15 = r32
	br.cloop.sptk.few .L30
	br .L26
	;;
.L30:
	ld1 r16 = [r32], 1
	ld1 r17 = [r33], 1
	;;
	cmp.eq p6, p7 = r16, r17
	(p6) br.cond.dptk .L27
.L26:
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L29
	ld1 r8 = [r15]
	ld1 r14 = [r14]
	;;
	sub r8 = r8, r14
	br .L28
	;;
.L29:
	mov r8 = r0
.L28:
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	add r34 = r33, r34
	;;
	sub r34 = r34, r33
	;;
	mov ar.lc = r34
	br .L32
	;;
.L33:
	adds r33 = 1, r33
	;;
	adds r15 = -1, r33
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15, 1
.L32:
	br.cloop.sptk.few .L33
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	zxt1 r33 = r33
	adds r14 = -1, r34
	;;
	add r14 = r32, r14
	adds r15 = -1, r32
	;;
	sub r15 = r14, r15
	;;
	mov ar.lc = r15
	br .L35
	;;
.L37:
	ld1 r15 = [r14], -1
	;;
	cmp4.ne p6, p7 = r15, r33
	(p6) br.cond.dptk .L35
	add r8 = r32, r34
	br .L36
	;;
.L35:
	adds r34 = -1, r34
	br.cloop.sptk.few .L37
	mov r8 = r0
.L36:
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov r8 = r32
	;;
	add r34 = r8, r34
	mov r14 = r8
	;;
	sub r34 = r34, r14
	;;
	mov ar.lc = r34
	br .L40
	;;
.L41:
	st1 [r14] = r33, 1
.L40:
	br.cloop.sptk.few .L41
	;;
	mov ar.lc = r3
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
.L43:
	mov r8 = r32
	ld1 r14 = [r33], 1
	;;
	st1 [r32] = r14, 1
	;;
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L43
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
.L47:
	mov r8 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L46
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L47
.L46:
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
.L51:
	mov r8 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = r14, r33
	(p6) br.cond.dptk .L50
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L51
	mov r8 = r0
.L50:
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
.L56:
	mov r16 = r33
	mov r17 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	ld1 r15 = [r33], 1
	;;
	sxt1 r15 = r15
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L55
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L56
.L55:
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
.L59:
	;;
	mov r8 = r14
	ld1 r15 = [r14], 1
	;;
	sxt1 r15 = r15
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L59
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
	(p6) br.cond.dptk .L65
	mov r14 = r32
.L64:
	mov r16 = r33
	;;
	mov r17 = r14
	ld1 r15 = [r14], 1
	;;
	cmp.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L63
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
	(p6) br.cond.dptk .L63
	adds r15 = -1, r14
	;;
	ld1 r15 = [r15]
	ld1 r18 = [r33], 1
	;;
	cmp.eq p6, p7 = r15, r18
	(p6) br.cond.dptk .L64
.L63:
	ld1 r8 = [r17]
	ld1 r14 = [r16]
	;;
	sub r8 = r8, r14
	br .L62
	;;
.L65:
	mov r8 = r0
.L62:
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	shr.u r14 = r34, 1
	;;
	mov ar.lc = r14
	cmp.gt p6, p7 = r0, r34
	(p7) br.cond.dptk .L68
	;;
	mov ar.lc = 0
	br .L68
	;;
.L69:
	adds r14 = 1, r32
	;;
	ld1 r15 = [r14]
	mov r14 = r33
	;;
	st1 [r14] = r15, 1
	ld1 r15 = [r32], 2
	;;
	st1 [r14] = r15
	adds r33 = 2, r33
.L68:
	br.cloop.sptk.few .L69
	;;
	mov ar.lc = r3
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
	(p6) br.cond.dptk .L83
	addl r14 = -8232, r2
	;;
	cmp4.geu p6, p7 = 1, r14
	(p6) br.cond.dptk .L84
	addl r2 = -65529, r2
	;;
	cmp4.ltu p6, p7 = 2, r2
	(p6) br.cond.dptk .L85
	addl r8 = 1, r0
	br .L82
	;;
.L83:
	addl r8 = 1, r0
	br .L82
	;;
.L84:
	addl r8 = 1, r0
	br .L82
	;;
.L85:
	mov r8 = r0
.L82:
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
	(p6) br.cond.dptk .L88
	adds r2 = 1, r2
	;;
	and r2 = 127, r2
	;;
	cmp4.ltu p6, p7 = 32, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L89
	;;
.L88:
	addl r14 = 8231, r0
	;;
	cmp4.geu p8, p9 = r14, r2
	addl r14 = -8234, r2
	addl r15 = 47061, r0
	;;
	cmp4.geu p6, p7 = r15, r14
	;;
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L90
	addl r14 = -57344, r2
	addl r15 = 8184, r0
	;;
	cmp4.geu p6, p7 = r15, r14
	(p6) br.cond.dptk .L91
	addl r14 = -65532, r2
	addl r15 = 1048579, r0
	;;
	cmp4.ltu p6, p7 = r15, r14
	(p6) br.cond.dptk .L92
	addl r14 = 65534, r0
	;;
	and r2 = r14, r2
	;;
	cmp4.eq p6, p7 = r14, r2
	(p6) br.cond.dptk .L93
	addl r8 = 1, r0
	br .L89
	;;
.L90:
	addl r8 = 1, r0
	br .L89
	;;
.L91:
	addl r8 = 1, r0
	br .L89
	;;
.L92:
	mov r8 = r0
	br .L89
	;;
.L93:
	mov r8 = r0
.L89:
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
	(p6) br.cond.dptk .L96
	or r32 = 32, r32
	;;
	adds r32 = -97, r32
	;;
	cmp4.ltu p6, p7 = 5, r32
	(p6) br.cond.dptk .L97
	addl r8 = 1, r0
	br .L95
	;;
.L96:
	addl r8 = 1, r0
	br .L95
	;;
.L97:
	mov r8 = r0
.L95:
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
	(p6) br.cond.dptk .L100
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L103
	fcmp.gt p6, p7 = f8, f9
	;;
	(p7) br.cond.dptk .L106
	fsub.d f8 = f8, f9
	br .L100
	;;
.L103:
	mov f8 = f9
	br .L100
	;;
.L106:
	mov f8 = f0
.L100:
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
	(p6) br.cond.dptk .L108
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L111
	fcmp.gt p6, p7 = f8, f9
	;;
	(p7) br.cond.dptk .L114
	fsub.s f8 = f8, f9
	br .L108
	;;
.L111:
	mov f8 = f9
	br .L108
	;;
.L114:
	mov f8 = f0
.L108:
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
	(p6) br.cond.dptk .L119
	setf.d f9 = r15
	;;
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L120
	mov r17 = r14
	;;
	extr.u r17 = r17, 63, 1
	mov r16 = r15
	;;
	extr.u r16 = r16, 63, 1
	;;
	cmp4.eq p6, p7 = r16, r17
	(p6) br.cond.dptk .L117
	mov r16 = r14
	;;
	cmp.le p6, p7 = r0, r16
	(p6) br.cond.dptk .L121
	setf.d f8 = r15
	br .L116
	;;
.L117:
	setf.d f6 = r14
	setf.d f7 = r15
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L124
	setf.d f8 = r15
	br .L116
	;;
.L119:
	setf.d f8 = r15
	br .L116
	;;
.L120:
	setf.d f8 = r14
	br .L116
	;;
.L121:
	setf.d f8 = r14
	br .L116
	;;
.L124:
	setf.d f8 = r14
.L116:
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
	(p6) br.cond.dptk .L129
	setf.s f9 = r15
	;;
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L130
	mov r16 = r14
	movl r17 = -2147483648
	;;
	and r16 = r16, r17
	mov r18 = r15
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L127
	mov r17 = r14
	movl r16 = -2147483648
	;;
	and r16 = r17, r16
	;;
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L131
	setf.s f8 = r15
	br .L126
	;;
.L127:
	setf.s f6 = r14
	setf.s f7 = r15
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L134
	setf.s f8 = r15
	br .L126
	;;
.L129:
	setf.s f8 = r15
	br .L126
	;;
.L130:
	setf.s f8 = r14
	br .L126
	;;
.L131:
	setf.s f8 = r14
	br .L126
	;;
.L134:
	setf.s f8 = r14
.L126:
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
	(p6) br.cond.dptk .L139
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L140
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
	(p6) br.cond.dptk .L137
	adds r15 = -8, r2
	;;
	ld8 r14 = [r15]
	;;
	tbit.z p6, p7 = r14, 15
	(p6) br.cond.dptk .L141
	mov f8 = f9
	br .L136
	;;
.L137:
	adds r17 = -16, r2
	;;
	ldfe f6 = [r17]
	ldfe f7 = [r2]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L144
	mov f8 = f7
	br .L136
	;;
.L139:
	ldfe f8 = [r2]
	br .L136
	;;
.L140:
	adds r14 = -16, r2
	;;
	ldfe f8 = [r14]
	br .L136
	;;
.L141:
	adds r15 = -16, r2
	;;
	ldfe f8 = [r15]
	br .L136
	;;
.L144:
	adds r17 = -16, r2
	;;
	ldfe f8 = [r17]
.L136:
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
	(p6) br.cond.dptk .L149
	setf.d f9 = r14
	;;
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L150
	mov r17 = r15
	;;
	extr.u r17 = r17, 63, 1
	mov r16 = r14
	;;
	extr.u r16 = r16, 63, 1
	;;
	cmp4.eq p6, p7 = r16, r17
	(p6) br.cond.dptk .L147
	mov r16 = r15
	;;
	cmp.le p6, p7 = r0, r16
	(p6) br.cond.dptk .L151
	br .L146
	;;
.L147:
	setf.d f6 = r15
	setf.d f7 = r14
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L154
	setf.d f8 = r15
	br .L146
	;;
.L149:
	setf.d f8 = r14
	br .L146
	;;
.L150:
	setf.d f8 = r15
	br .L146
	;;
.L151:
	setf.d f8 = r14
	br .L146
	;;
.L154:
	setf.d f8 = r14
.L146:
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
	(p6) br.cond.dptk .L159
	setf.s f9 = r14
	;;
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L160
	mov r16 = r15
	movl r17 = -2147483648
	;;
	and r16 = r16, r17
	mov r18 = r14
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L157
	mov r17 = r15
	movl r16 = -2147483648
	;;
	and r16 = r17, r16
	;;
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L161
	br .L156
	;;
.L157:
	setf.s f6 = r15
	setf.s f7 = r14
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L164
	setf.s f8 = r15
	br .L156
	;;
.L159:
	setf.s f8 = r14
	br .L156
	;;
.L160:
	setf.s f8 = r15
	br .L156
	;;
.L161:
	setf.s f8 = r14
	br .L156
	;;
.L164:
	setf.s f8 = r14
.L156:
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
	(p6) br.cond.dptk .L169
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dptk .L170
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
	(p6) br.cond.dptk .L167
	adds r15 = -8, r2
	;;
	ld8 r14 = [r15]
	;;
	tbit.z p6, p7 = r14, 15
	(p6) br.cond.dptk .L171
	adds r17 = -16, r2
	mov f8 = f6
	br .L166
	;;
.L167:
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	ldfe f7 = [r2]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p7) br.cond.dptk .L174
	mov f8 = f6
	br .L166
	;;
.L169:
	ldfe f8 = [r2]
	br .L166
	;;
.L170:
	adds r15 = -16, r2
	;;
	ldfe f8 = [r15]
	br .L166
	;;
.L171:
	ldfe f8 = [r2]
	br .L166
	;;
.L174:
	ldfe f8 = [r2]
.L166:
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
	br .L176
	;;
.L177:
	and r16 = 63, r32
	movl r15 = @gprel(digits#)
	;;
	add r15 = r1, r15
	;;
	add r15 = r15, r16
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15, 1
	extr.u r32 = r32, 6, 26
.L176:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L177
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
	(p6) br.cond.dptk .L181
	adds r14 = 8, r32
	;;
	st8 [r14] = r0
	st8 [r32] = r0
	br .L180
	;;
.L181:
	ld8 r15 = [r33]
	mov r14 = r32
	;;
	st8 [r14] = r15, 8
	;;
	st8 [r14] = r33
	st8 [r33] = r32
	ld8 r14 = [r32]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L180
	adds r14 = 8, r14
	;;
	st8 [r14] = r32
.L180:
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
	(p6) br.cond.dptk .L184
	mov r15 = r32
	;;
	ld8 r14 = [r15], 8
	;;
	ld8 r15 = [r15]
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
.L184:
	adds r14 = 8, r32
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L183
	adds r14 = 8, r32
	;;
	ld8 r14 = [r14]
	ld8 r15 = [r32]
	;;
	st8 [r14] = r15
.L183:
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
	alloc r41 = ar.pfs, 5, 8, 3, 0
	.vframe r42
	mov r42 = r12
	.save ar.lc, r44
	mov r44 = ar.lc
	.save rp, r40
	mov r40 = b0
	mov r43 = r1
	.body
	ld8 r38 = [r34]
	mov r39 = r33
	mov r37 = r0
	;;
	mov ar.lc = r38
	br .L187
	;;
.L190:
	mov r46 = r39
	mov r45 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r43
	add r39 = r39, r35
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L188
	setf.sig f6 = r37
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br .L189
	;;
.L188:
	adds r37 = 1, r37
.L187:
	br.cloop.sptk.few .L190
	adds r14 = 1, r38
	;;
	st8 [r34] = r14
	setf.sig f6 = r35
	setf.sig f7 = r38
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r45 = f6
	mov r47 = r35
	mov r46 = r32
	br.call.sptk.many b0 = memcpy#
	mov r1 = r43
.L189:
	;;
	mov ar.pfs = r41
	mov ar.lc = r44
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
	.prologue 14, 39
	.save ar.pfs, r40
	alloc r40 = ar.pfs, 5, 7, 2, 0
	.vframe r41
	mov r41 = r12
	.save ar.lc, r43
	mov r43 = ar.lc
	.save rp, r39
	mov r39 = b0
	mov r42 = r1
	.body
	ld8 r14 = [r34]
	mov r38 = r33
	mov r37 = r0
	;;
	mov ar.lc = r14
	br .L192
	;;
.L195:
	mov r45 = r38
	mov r44 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r42
	add r38 = r38, r35
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L193
	setf.sig f6 = r37
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br .L194
	;;
.L193:
	adds r37 = 1, r37
.L192:
	br.cloop.sptk.few .L195
	mov r8 = r0
.L194:
	mov ar.pfs = r40
	;;
	mov ar.lc = r43
	mov b0 = r39
	.restore sp
	mov r12 = r41
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
.L198:
	;;
	mov r33 = r32
	ld1 r38 = [r32], 1
	;;
	sxt1 r38 = r38
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L198
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L204
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L205
	addl r15 = 1, r0
	br .L199
	;;
.L204:
	mov r15 = r0
.L199:
	adds r33 = 1, r33
	br .L200
	;;
.L205:
	mov r15 = r0
.L200:
	mov r8 = r0
	br .L201
	;;
.L202:
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
.L201:
	ld1 r14 = [r33], 1
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L202
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L203
	sub r8 = r0, r8
.L203:
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
.L209:
	;;
	mov r33 = r32
	ld1 r38 = [r32], 1
	;;
	sxt1 r38 = r38
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L209
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L215
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L216
	addl r15 = 1, r0
	br .L210
	;;
.L215:
	mov r15 = r0
.L210:
	adds r33 = 1, r33
	br .L211
	;;
.L216:
	mov r15 = r0
.L211:
	mov r8 = r0
	br .L212
	;;
.L213:
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
.L212:
	ld1 r14 = [r33], 1
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L213
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L214
	sub r8 = r0, r8
.L214:
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
.L220:
	;;
	mov r33 = r32
	ld1 r38 = [r32], 1
	;;
	sxt1 r38 = r38
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L220
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L226
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L227
	addl r15 = 1, r0
	br .L221
	;;
.L226:
	mov r15 = r0
.L221:
	adds r33 = 1, r33
	br .L222
	;;
.L227:
	mov r15 = r0
.L222:
	mov r8 = r0
	br .L223
	;;
.L224:
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
.L223:
	ld1 r14 = [r33], 1
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L224
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L225
	sub r8 = r0, r8
.L225:
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
	br .L231
	;;
.L235:
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
	(p6) br.cond.dptk .L232
	shr.u r34 = r34, 1
	br .L231
	;;
.L232:
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dptk .L236
	add r33 = r37, r35
	shr.u r14 = r34, 1
	;;
	sub r34 = r34, r14, 1
.L231:
	;;
	cmp.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L235
	mov r8 = r0
	br .L234
	;;
.L236:
	mov r8 = r37
.L234:
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
	br .L238
	;;
.L241:
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
	(p6) br.cond.dptk .L242
	;;
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dptk .L240
	add r33 = r38, r35
	adds r34 = -1, r34
.L240:
	;;
	extr r34 = r34, 1, 31
.L238:
	;;
	cmp4.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L241
	mov r8 = r0
	br .L239
	;;
.L242:
	mov r8 = r38
.L239:
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
.L252:
	mov r8 = r32
	ld4 r14 = [r32], 4
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L251
	adds r14 = -4, r32
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L252
.L251:
	ld4 r14 = [r8]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L253
	mov r8 = r0
.L253:
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
.L258:
	mov r14 = r33
	mov r15 = r32
	ld4 r17 = [r32], 4
	ld4 r16 = [r33], 4
	;;
	cmp4.ne p6, p7 = r16, r17
	(p6) br.cond.dptk .L257
	adds r16 = -4, r32
	;;
	ld4 r16 = [r16]
	;;
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L257
	adds r16 = -4, r33
	;;
	ld4 r16 = [r16]
	;;
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L258
.L257:
	ld4 r17 = [r15]
	ld4 r16 = [r14]
	;;
	cmp4.gt p6, p7 = r16, r17
	(p6) br.cond.dptk .L260
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L259
	;;
.L260:
	addl r8 = -1, r0
.L259:
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
.L263:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15, 4
	;;
	adds r15 = -4, r14
	;;
	ld4 r15 = [r15]
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L263
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
.L266:
	;;
	mov r8 = r14
	ld4 r15 = [r14], 4
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L266
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov ar.lc = r34
	br .L269
	;;
.L271:
	adds r34 = -1, r34
.L269:
	mov r14 = r33
	mov r15 = r32
	br.cloop.sptk.few .L275
	br .L270
	;;
.L275:
	ld4 r17 = [r32]
	ld4 r16 = [r33]
	;;
	cmp4.ne p6, p7 = r16, r17
	(p6) br.cond.dptk .L270
	ld4 r16 = [r32], 4
	;;
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L270
	ld4 r16 = [r33], 4
	;;
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L271
.L270:
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L273
	ld4 r17 = [r15]
	ld4 r16 = [r14]
	;;
	cmp4.gt p6, p7 = r16, r17
	(p6) br.cond.dptk .L274
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L272
	;;
.L273:
	mov r8 = r0
	br .L272
	;;
.L274:
	addl r8 = -1, r0
.L272:
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov ar.lc = r34
	br .L277
	;;
.L279:
	adds r34 = -1, r34
.L277:
	mov r8 = r32
	br.cloop.sptk.few .L282
	br .L278
	;;
.L282:
	ld4 r14 = [r32], 4
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L279
.L278:
	;;
	cmp.eq p6, p7 = 0, r34
	(p7) br.cond.dptk .L280
	mov r8 = r0
.L280:
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov ar.lc = r34
	br .L284
	;;
.L286:
	adds r34 = -1, r34
.L284:
	mov r14 = r33
	mov r15 = r32
	br.cloop.sptk.few .L290
	br .L285
	;;
.L290:
	ld4 r17 = [r32], 4
	ld4 r16 = [r33], 4
	;;
	cmp4.eq p6, p7 = r16, r17
	(p6) br.cond.dptk .L286
.L285:
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L288
	ld4 r17 = [r15]
	ld4 r16 = [r14]
	;;
	cmp4.gt p6, p7 = r16, r17
	(p6) br.cond.dptk .L289
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L287
	;;
.L288:
	mov r8 = r0
	br .L287
	;;
.L289:
	addl r8 = -1, r0
.L287:
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	mov ar.lc = r34
	br .L292
	;;
.L293:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15, 4
.L292:
	adds r34 = -1, r34
	br.cloop.sptk.few .L293
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov r8 = r32
	;;
	cmp.eq p6, p7 = r33, r8
	(p6) br.cond.dptk .L295
	sub r14 = r8, r33
	shladd r15 = r34, 2, r0
	;;
	cmp.gtu p6, p7 = r15, r14
	(p6) br.cond.dptk .L296
	mov r14 = r8
	mov ar.lc = r34
	br .L297
	;;
.L296:
	adds r34 = -1, r34
	;;
	shladd r34 = r34, 2, r0
	;;
	add r33 = r33, r34
	add r34 = r8, r34
	adds r14 = -4, r8
	;;
	sub r14 = r34, r14
	;;
	shr.u r14 = r14, 2
	;;
	mov ar.lc = r14
	br .L298
	;;
.L299:
	ld4 r14 = [r33], -4
	;;
	st4 [r34] = r14, -4
.L298:
	br.cloop.sptk.few .L299
	br .L295
	;;
.L300:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15, 4
.L297:
	adds r34 = -1, r34
	br.cloop.sptk.few .L300
.L295:
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov r8 = r32
	;;
	mov r14 = r8
	mov ar.lc = r34
	br .L302
	;;
.L303:
	adds r14 = 4, r14
	;;
	adds r15 = -4, r14
	;;
	st4 [r15] = r33
.L302:
	adds r34 = -1, r34
	br.cloop.sptk.few .L303
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	cmp.leu p6, p7 = r33, r32
	(p6) br.cond.dptk .L305
	add r32 = r32, r34
	add r33 = r33, r34
	;;
	adds r32 = -1, r32
	adds r14 = -1, r33
	sub r34 = r33, r34, 1
	;;
	sub r34 = r14, r34
	;;
	mov ar.lc = r34
	br .L306
	;;
.L307:
	ld1 r15 = [r32], -1
	;;
	st1 [r14] = r15, -1
.L306:
	br.cloop.sptk.few .L307
	br .L304
	;;
.L305:
	cmp.eq p6, p7 = r33, r32
	(p6) br.cond.dptk .L304
	add r34 = r32, r34
	;;
	sub r34 = r34, r32
	;;
	mov ar.lc = r34
	br .L309
	;;
.L310:
	adds r32 = 1, r32
	;;
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	st1 [r33] = r14, 1
.L309:
	br.cloop.sptk.few .L310
.L304:
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov r8 = r0
	mov ar.lc = 32
	br .L325
	;;
.L328:
	addp4 r14 = r32, r0
	addp4 r15 = r8, r0
	;;
	shr.u r14 = r14, r15
	;;
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L326
	adds r8 = 1, r8
	br .L327
	;;
.L326:
	adds r8 = 1, r8
.L325:
	br.cloop.sptk.few .L328
	;;
	mov r8 = r0
.L327:
	mov ar.lc = r3
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
	(p6) br.cond.dptk .L333
	addl r8 = 1, r0
	br .L331
	;;
.L332:
	extr r32 = r32, 1, 31
	adds r8 = 1, r8
.L331:
	;;
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L332
	br .L330
	;;
.L333:
	mov r8 = r0
.L330:
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
	(p6) br.cond.dptk .L337
	movl r14 = 0x7f7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p7) br.cond.dptk .L340
	addl r8 = 1, r0
	br .L335
	;;
.L337:
	addl r8 = 1, r0
	br .L335
	;;
.L340:
	mov r8 = r0
.L335:
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
	(p6) br.cond.dptk .L344
	movl r14 = 0x7fefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p7) br.cond.dptk .L347
	addl r8 = 1, r0
	br .L342
	;;
.L344:
	addl r8 = 1, r0
	br .L342
	;;
.L347:
	mov r8 = r0
.L342:
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
	(p6) br.cond.dptk .L351
	movl r14 = @gprel(.LC1)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p7) br.cond.dptk .L354
	addl r8 = 1, r0
	br .L349
	;;
.L351:
	addl r8 = 1, r0
	br .L349
	;;
.L354:
	mov r8 = r0
.L349:
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
	(p6) br.cond.dptk .L357
	fadd.s f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L357
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L361
	movl r14 = 0x3f000000
	;;
	setf.s f6 = r14
	br .L360
	;;
.L361:
	movl r14 = 0x40000000
	;;
	setf.s f6 = r14
.L360:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L359
	;;
	fmpy.s f8 = f8, f6
.L359:
	extr.u r14 = r33, 31, 1
	;;
	add r33 = r14, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L357
	fmpy.s f6 = f6, f6
	br .L360
	;;
.L357:
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
	(p6) br.cond.dptk .L363
	fadd.d f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L363
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L367
	movl r14 = 0x3fe0000000000000
	;;
	setf.d f6 = r14
	br .L366
	;;
.L367:
	movl r14 = 0x4000000000000000
	;;
	setf.d f6 = r14
.L366:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L365
	;;
	fmpy.d f8 = f8, f6
.L365:
	extr.u r14 = r33, 31, 1
	;;
	add r33 = r14, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L363
	fmpy.d f6 = f6, f6
	br .L366
	;;
.L363:
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
	(p6) br.cond.dptk .L369
	fadd f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L369
	cmp4.le p6, p7 = r0, r34
	(p6) br.cond.dptk .L373
	movl r14 = @gprel(.LC4)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	br .L372
	;;
.L373:
	movl r14 = @gprel(.LC5)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
.L372:
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L371
	;;
	fmpy f8 = f8, f6
.L371:
	extr.u r14 = r34, 31, 1
	;;
	add r34 = r14, r34
	;;
	extr r34 = r34, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L369
	fmpy f6 = f6, f6
	br .L372
	;;
.L369:
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov r8 = r32
	add r34 = r33, r34
	;;
	mov r14 = r8
	sub r34 = r34, r33
	;;
	mov ar.lc = r34
	br .L375
	;;
.L376:
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
.L375:
	br.cloop.sptk.few .L376
	;;
	mov ar.lc = r3
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
	alloc r36 = ar.pfs, 3, 5, 1, 0
	.vframe r37
	mov r37 = r12
	.save ar.lc, r39
	mov r39 = ar.lc
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	mov r40 = r32
	;;
	br.call.sptk.many b0 = strlen#
	mov r1 = r38
	add r8 = r32, r8
	mov ar.lc = r34
	br .L378
	;;
.L380:
	adds r34 = -1, r34
.L378:
	mov r15 = r8
	br.cloop.sptk.few .L382
	br .L379
	;;
.L382:
	ld1 r14 = [r33], 1
	;;
	st1 [r8] = r14, 1
	;;
	adds r14 = -1, r8
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L380
.L379:
	;;
	cmp.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L381
	st1 [r15] = r0
.L381:
	mov r8 = r32
	mov ar.pfs = r36
	mov ar.lc = r39
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	mov r8 = r0
	mov ar.lc = r33
	br .L384
	;;
.L386:
	adds r8 = 1, r8
.L384:
	br.cloop.sptk.few .L387
	br .L385
	;;
.L387:
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L386
.L385:
	mov ar.lc = r3
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
	br .L389
	;;
.L391:
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
	(p6) br.cond.dptk .L390
.L392:
	ld1 r15 = [r14], 1
	;;
	sxt1 r15 = r15
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L391
.L389:
	mov r8 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L394
	mov r14 = r33
	br .L392
	;;
.L394:
	mov r8 = r0
.L390:
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
.L397:
	mov r15 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = r14, r33
	(p7) br.cond.dptk .L396
	mov r8 = r15
.L396:
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L397
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
	(p6) br.cond.dptk .L404
	ld1 r34 = [r33]
	;;
	sxt1 r34 = r34
	br .L402
	;;
.L403:
	mov r42 = r35
	mov r41 = r33
	mov r40 = r32
	br.call.sptk.many b0 = strncmp#
	mov r1 = r39
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dptk .L405
	adds r32 = 1, r32
.L402:
	;;
	mov r41 = r34
	mov r40 = r32
	br.call.sptk.many b0 = strchr#
	mov r1 = r39
	mov r32 = r8
	;;
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L403
	mov r8 = r0
	br .L401
	;;
.L404:
	mov r8 = r32
	br .L401
	;;
.L405:
	mov r8 = r32
.L401:
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
	(p7) br.cond.dptk .L407
	fcmp.gt p6, p7 = f9, f0
	;;
	(p6) br.cond.dptk .L409
.L407:
	fcmp.gt p6, p7 = f8, f0
	;;
	(p7) br.cond.dptk .L410
	fcmp.lt p6, p7 = f9, f0
	;;
	(p7) br.cond.dptk .L410
.L409:
	fneg f8 = f8
.L410:
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
	(p6) br.cond.dptk .L420
	;;
	cmp.gtu p6, p7 = r35, r33
	(p6) br.cond.dptk .L424
	mov r36 = r8
	br .L426
	;;
.L422:
	ld1 r14 = [r36], 1
	;;
	sxt1 r14 = r14
	ld1 r15 = [r34]
	;;
	sxt1 r15 = r15
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L426
	adds r44 = -1, r35
	adds r43 = 1, r34
	mov r42 = r36
	br.call.sptk.many b0 = memcmp#
	mov r1 = r41
	;;
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dptk .L425
.L426:
	mov r32 = r36
	;;
	cmp.geu p6, p7 = r37, r36
	(p6) br.cond.dptk .L422
	mov r8 = r0
	br .L420
	;;
.L424:
	mov r8 = r0
	br .L420
	;;
.L425:
	mov r8 = r32
.L420:
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
	(p7) br.cond.dptk .L442
	fneg f8 = f8
	addl r15 = 1, r0
	br .L429
	;;
.L442:
	mov r15 = r0
.L429:
	fcmp.ge p6, p7 = f8, f1
	;;
	(p6) br.cond.dptk .L439
	br .L443
	;;
.L433:
	adds r14 = 1, r14
	movl r16 = 0x3fe0000000000000
	;;
	setf.d f6 = r16
	;;
	fmpy.d f8 = f8, f6
	br .L431
	;;
.L439:
	mov r14 = r0
.L431:
	fcmp.ge p6, p7 = f8, f1
	;;
	(p6) br.cond.dptk .L433
	br .L434
	;;
.L443:
	movl r14 = 0x3fe0000000000000
	;;
	setf.d f6 = r14
	;;
	fcmp.lt p8, p9 = f8, f6
	fcmp.neq p6, p7 = f8, f0
	;;
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L440
	mov r14 = r0
	br .L434
	;;
.L436:
	adds r14 = -1, r14
	fadd.d f8 = f8, f8
	br .L435
	;;
.L440:
	mov r14 = r0
.L435:
	movl r16 = 0x3fe0000000000000
	;;
	setf.d f6 = r16
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L436
.L434:
	st4 [r33] = r14
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L437
	fneg f8 = f8
.L437:
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
	br .L445
	;;
.L447:
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L446
	add r8 = r8, r33
.L446:
	shladd r33 = r33, 1, r0
	shr.u r32 = r32, 1
.L445:
	;;
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L447
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
	br .L449
	;;
.L451:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L449:
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
	(p6) br.cond.dptk .L456
	;;
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L451
	mov r8 = r0
	br .L453
	;;
.L454:
	cmp4.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L452
	sub r32 = r32, r33
	or r8 = r14, r8
.L452:
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	br .L453
	;;
.L456:
	mov r8 = r0
.L453:
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L454
	;;
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dptk .L455
	mov r8 = r32
.L455:
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
	(p6) br.cond.dptk .L459
	andcm r32 = -1, r32
.L459:
	;;
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dptk .L461
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
	br .L460
	;;
.L461:
	addl r8 = 7, r0
.L460:
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
	(p6) br.cond.dptk .L463
	andcm r32 = -1, r32
.L463:
	;;
	cmp.eq p6, p7 = 0, r32
	(p6) br.cond.dptk .L465
	setf.sig f7 = r32
	;;
	fcvt.xuf f6 = f7
	;;
	getf.exp r8 = f6
	addl r14 = 65598, r0
	;;
	sub r8 = r14, r8, 1
	br .L464
	;;
.L465:
	addl r8 = 63, r0
.L464:
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
	br .L467
	;;
.L469:
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L468
	add r8 = r8, r33
.L468:
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
.L467:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L469
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	extr.u r14 = r34, 3, 29
	and r15 = -8, r34
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L471
	addp4 r16 = r34, r0
	;;
	add r16 = r33, r16
	;;
	cmp.leu p6, p7 = r32, r16
	(p7) br.cond.dptk .L471
	addp4 r14 = r34, r0
	;;
	mov ar.lc = r14
	br .L472
	;;
.L471:
	mov r16 = r33
	mov r17 = r32
	addp4 r14 = r14, r0
	;;
	shladd r14 = r14, 3, r0
	;;
	add r14 = r14, r33
	;;
	sub r14 = r14, r16
	;;
	shr.u r14 = r14, 3
	;;
	mov ar.lc = r14
	br .L473
	;;
.L474:
	ld8 r14 = [r16], 8
	;;
	st8 [r17] = r14, 8
.L473:
	br.cloop.sptk.few .L474
	addp4 r14 = r15, r0
	;;
	add r33 = r33, r14
	add r32 = r32, r14
	sub r14 = r34, r15
	;;
	addp4 r14 = r14, r0
	;;
	mov ar.lc = r14
	cmp4.ltu p6, p7 = r34, r15
	(p6) br.cond.dptk .L480
	;;
	cmp4.eq p6, p7 = 0, r34
	(p7) br.cond.dptk .L475
.L480:
	mov ar.lc = 0
	br .L475
	;;
.L476:
	ld1 r14 = [r33], 1
	;;
	st1 [r32] = r14, 1
	adds r15 = 1, r15
.L475:
	br.cloop.sptk.few .L476
	br .L470
	;;
.L478:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L472:
	adds r34 = -1, r34
	br.cloop.sptk.few .L478
.L470:
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	extr.u r14 = r34, 1, 31
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L482
	addp4 r15 = r34, r0
	;;
	add r15 = r33, r15
	;;
	cmp.leu p6, p7 = r32, r15
	(p7) br.cond.dptk .L482
	addp4 r14 = r34, r0
	;;
	mov ar.lc = r14
	br .L483
	;;
.L482:
	mov r15 = r33
	mov r16 = r32
	addp4 r14 = r14, r0
	;;
	shladd r14 = r14, 1, r0
	;;
	add r14 = r14, r33
	;;
	sub r14 = r14, r15
	;;
	shr.u r14 = r14, 1
	;;
	mov ar.lc = r14
	br .L484
	;;
.L485:
	ld2 r14 = [r15], 2
	;;
	st2 [r16] = r14, 2
.L484:
	br.cloop.sptk.few .L485
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L481
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
	br .L481
	;;
.L487:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L483:
	adds r34 = -1, r34
	br.cloop.sptk.few .L487
.L481:
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	extr.u r14 = r34, 2, 30
	and r15 = -4, r34
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L490
	addp4 r16 = r34, r0
	;;
	add r16 = r33, r16
	;;
	cmp.leu p6, p7 = r32, r16
	(p7) br.cond.dptk .L490
	addp4 r14 = r34, r0
	;;
	mov ar.lc = r14
	br .L491
	;;
.L490:
	mov r16 = r33
	mov r17 = r32
	addp4 r14 = r14, r0
	;;
	shladd r14 = r14, 2, r0
	;;
	add r14 = r14, r33
	;;
	sub r14 = r14, r16
	;;
	shr.u r14 = r14, 2
	;;
	mov ar.lc = r14
	br .L492
	;;
.L493:
	ld4 r14 = [r16], 4
	;;
	st4 [r17] = r14, 4
.L492:
	br.cloop.sptk.few .L493
	addp4 r14 = r15, r0
	;;
	add r33 = r33, r14
	add r32 = r32, r14
	sub r14 = r34, r15
	;;
	addp4 r14 = r14, r0
	;;
	mov ar.lc = r14
	cmp4.ltu p6, p7 = r34, r15
	(p6) br.cond.dptk .L499
	;;
	cmp4.eq p6, p7 = 0, r34
	(p7) br.cond.dptk .L494
.L499:
	mov ar.lc = 0
	br .L494
	;;
.L495:
	ld1 r14 = [r33], 1
	;;
	st1 [r32] = r14, 1
	adds r15 = 1, r15
.L494:
	br.cloop.sptk.few .L495
	br .L489
	;;
.L497:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L491:
	adds r34 = -1, r34
	br.cloop.sptk.few .L497
.L489:
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov ar.lc = 16
	br .L507
	;;
.L509:
	sub r15 = 15, r8
	sxt4 r14 = r32
	;;
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L508
	adds r8 = 1, r8
.L507:
	br.cloop.sptk.few .L509
.L508:
	;;
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov ar.lc = 16
	br .L511
	;;
.L513:
	sxt4 r14 = r32
	addp4 r15 = r8, r0
	;;
	shr r14 = r14, r15
	;;
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L512
	adds r8 = 1, r8
.L511:
	br.cloop.sptk.few .L513
.L512:
	;;
	mov ar.lc = r3
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
	(p7) br.cond.dptk .L519
	fsub.s f8 = f8, f6
	;;
	fcvt.fx.trunc f8 = f8
	;;
	getf.sig r2 = f8
	;;
	addl r8 = 32768, r2
	br .L517
	;;
.L519:
	fcvt.fx.trunc f8 = f8
	;;
	getf.sig r8 = f8
.L517:
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov r15 = r0
	mov ar.lc = 16
	br .L521
	;;
.L523:
	sxt4 r14 = r32
	addp4 r16 = r15, r0
	;;
	shr r14 = r14, r16
	;;
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L522
	adds r8 = 1, r8
.L522:
	adds r15 = 1, r15
.L521:
	br.cloop.sptk.few .L523
	;;
	and r8 = 1, r8
	mov ar.lc = r3
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
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov r15 = r0
	mov ar.lc = 16
	br .L525
	;;
.L527:
	sxt4 r14 = r32
	addp4 r16 = r15, r0
	;;
	shr r14 = r14, r16
	;;
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L526
	adds r8 = 1, r8
.L526:
	adds r15 = 1, r15
.L525:
	br.cloop.sptk.few .L527
	;;
	mov ar.lc = r3
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
	br .L529
	;;
.L531:
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L530
	add r8 = r8, r33
.L530:
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
.L529:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L531
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
	(p6) br.cond.dptk .L537
	mov r8 = r0
	br .L534
	;;
.L536:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L535
	add r8 = r8, r32
.L535:
	shladd r32 = r32, 1, r0
	extr.u r33 = r33, 1, 31
.L534:
	;;
	cmp4.ne p6, p7 = 0, r33
	(p6) br.cond.dptk .L536
	br .L533
	;;
.L537:
	mov r8 = r0
.L533:
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
	br .L539
	;;
.L541:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L539:
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
	(p6) br.cond.dptk .L546
	;;
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L541
	mov r8 = r0
	br .L543
	;;
.L544:
	cmp4.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L542
	sub r32 = r32, r33
	or r8 = r14, r8
.L542:
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	br .L543
	;;
.L546:
	mov r8 = r0
.L543:
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L544
	;;
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dptk .L545
	mov r8 = r32
.L545:
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
	(p6) br.cond.dptk .L550
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) br.cond.dptk .L551
	mov r8 = r0
	br .L549
	;;
.L550:
	addl r8 = -1, r0
	br .L549
	;;
.L551:
	addl r8 = 1, r0
.L549:
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
	(p6) br.cond.dptk .L554
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) br.cond.dptk .L555
	mov r8 = r0
	br .L553
	;;
.L554:
	addl r8 = -1, r0
	br .L553
	;;
.L555:
	addl r8 = 1, r0
.L553:
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
	(p6) br.cond.dptk .L564
	sub r33 = r0, r33
	addl r15 = 1, r0
	br .L559
	;;
.L564:
	mov r15 = r0
.L559:
	mov r8 = r0
	mov r14 = r0
	br .L560
	;;
.L562:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L561
	add r8 = r8, r32
.L561:
	shladd r32 = r32, 1, r0
	extr r33 = r33, 1, 31
	adds r14 = 1, r14
	;;
	sxt1 r14 = r14
.L560:
	;;
	zxt1 r16 = r14
	;;
	cmp4.geu p6, p7 = 31, r16
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r33
	(p6) br.cond.dptk .L562
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L563
	sub r8 = r0, r8
.L563:
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
	(p6) br.cond.dptk .L570
	sub r39 = r0, r39
	addl r34 = 1, r0
	br .L567
	;;
.L570:
	mov r34 = r0
.L567:
	cmp.le p6, p7 = r0, r40
	(p6) br.cond.dptk .L568
	sub r40 = r0, r40
	;;
	cmp4.eq p6, p7 = 0, r34
	;;
	(p6) addl r34 = 1, r0
	;;
	(p7) mov r34 = r0
.L568:
	mov r41 = r0
	br.call.sptk.many b0 = __udivmodsi4#
	mov r1 = r38
	addp4 r8 = r8, r0
	;;
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L569
	sub r8 = r0, r8
.L569:
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
	(p6) br.cond.dptk .L575
	sub r39 = r0, r39
	addl r34 = 1, r0
	br .L572
	;;
.L575:
	mov r34 = r0
.L572:
	cmp.le p6, p7 = r0, r40
	(p6) br.cond.dptk .L573
	sub r40 = r0, r40
.L573:
	addl r41 = 1, r0
	br.call.sptk.many b0 = __udivmodsi4#
	mov r1 = r38
	addp4 r8 = r8, r0
	;;
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L574
	sub r8 = r0, r8
.L574:
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
	br .L577
	;;
.L579:
	shladd r33 = r33, 1, r0
	;;
	zxt2 r33 = r33
	shladd r14 = r14, 1, r0
	;;
	zxt2 r14 = r14
.L577:
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
	(p6) br.cond.dptk .L584
	;;
	tbit.z p6, p7 = r33, 15
	(p6) br.cond.dptk .L579
	mov r15 = r0
	br .L581
	;;
.L582:
	cmp4.gtu p6, p7 = r33, r8
	(p6) br.cond.dptk .L580
	sub r8 = r8, r33
	;;
	zxt2 r8 = r8
	or r15 = r15, r14
	;;
	zxt2 r15 = r15
.L580:
	extr.u r14 = r14, 1, 15
	extr.u r33 = r33, 1, 15
	br .L581
	;;
.L584:
	mov r15 = r0
.L581:
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L582
	;;
	cmp4.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L583
	mov r8 = r15
.L583:
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
	br .L587
	;;
.L589:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L587:
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
	(p6) br.cond.dptk .L594
	;;
	tbit.z p6, p7 = r33, 31
	(p6) br.cond.dptk .L589
	mov r8 = r0
	br .L591
	;;
.L592:
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L590
	sub r32 = r32, r33
	or r8 = r14, r8
.L590:
	shr.u r14 = r14, 1
	shr.u r33 = r33, 1
	br .L591
	;;
.L594:
	mov r8 = r0
.L591:
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L592
	;;
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dptk .L593
	mov r8 = r32
.L593:
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
	(p6) br.cond.dptk .L597
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
	br .L599
	;;
.L597:
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L599
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
.L599:
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
	(p6) br.cond.dptk .L602
	mov r14 = r0
	mov r15 = r0
	adds r34 = -64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shl r16 = r16, r34
	;;
	mov r15 = r16
	br .L603
	;;
.L602:
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L605
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
.L603:
	mov r8 = r14
	;;
	mov r9 = r15
	br .L604
	;;
.L605:
	mov r8 = r32
	mov r9 = r33
.L604:
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
	(p6) br.cond.dptk .L607
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
	br .L609
	;;
.L607:
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L609
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
.L609:
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
	(p6) br.cond.dptk .L612
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
	br .L613
	;;
.L612:
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L615
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
.L613:
	;;
	mov r8 = r14
	mov r9 = r15
	br .L614
	;;
.L615:
	mov r8 = r32
	mov r9 = r33
.L614:
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
	(p6) br.cond.dptk .L623
	addl r14 = 16, r0
	br .L619
	;;
.L623:
	mov r14 = r0
.L619:
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
	(p6) br.cond.dptk .L624
	addl r15 = 8, r0
	br .L620
	;;
.L624:
	mov r15 = r0
.L620:
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
	(p6) br.cond.dptk .L625
	addl r15 = 4, r0
	br .L621
	;;
.L625:
	mov r15 = r0
.L621:
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
	(p6) br.cond.dptk .L626
	addl r15 = 2, r0
	br .L622
	;;
.L626:
	mov r15 = r0
.L622:
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
	(p6) br.cond.dptk .L630
	;;
	cmp4.lt p6, p7 = r14, r15
	(p6) br.cond.dptk .L631
	;;
	cmp4.ltu p6, p7 = r32, r33
	(p6) br.cond.dptk .L632
	;;
	cmp4.gtu p6, p7 = r32, r33
	(p6) br.cond.dptk .L633
	addl r8 = 1, r0
	br .L629
	;;
.L630:
	mov r8 = r0
	br .L629
	;;
.L631:
	addl r8 = 2, r0
	br .L629
	;;
.L632:
	mov r8 = r0
	br .L629
	;;
.L633:
	addl r8 = 2, r0
.L629:
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
	(p6) br.cond.dptk .L637
	;;
	cmp.gt p6, p7 = r33, r35
	(p6) br.cond.dptk .L638
	;;
	cmp.ltu p6, p7 = r32, r34
	(p6) br.cond.dptk .L639
	;;
	cmp.gtu p6, p7 = r32, r34
	(p6) br.cond.dptk .L640
	addl r8 = 1, r0
	br .L636
	;;
.L637:
	mov r8 = r0
	br .L636
	;;
.L638:
	addl r8 = 2, r0
	br .L636
	;;
.L639:
	mov r8 = r0
	br .L636
	;;
.L640:
	addl r8 = 2, r0
.L636:
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
	(p6) br.cond.dptk .L646
	addl r8 = 16, r0
	br .L642
	;;
.L646:
	mov r8 = r0
.L642:
	addp4 r32 = r32, r0
	;;
	addp4 r14 = r8, r0
	;;
	shr.u r32 = r32, r14
	;;
	zxt1 r14 = r32
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L647
	addl r14 = 8, r0
	br .L643
	;;
.L647:
	mov r14 = r0
.L643:
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
	(p6) br.cond.dptk .L648
	addl r14 = 4, r0
	br .L644
	;;
.L648:
	mov r14 = r0
.L644:
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
	(p6) br.cond.dptk .L649
	addl r14 = 2, r0
	br .L645
	;;
.L649:
	mov r14 = r0
.L645:
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
	(p6) br.cond.dptk .L652
	;;
	cmp.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L654
	adds r8 = -1, r33
	;;
	andcm r8 = r8, r33
	;;
	popcnt r8 = r8
	;;
	adds r8 = 65, r8
	br .L653
	;;
.L652:
	adds r14 = -1, r32
	;;
	andcm r32 = r14, r32
	;;
	popcnt r32 = r32
	;;
	adds r8 = 1, r32
	br .L653
	;;
.L654:
	mov r8 = r0
.L653:
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
	(p6) br.cond.dptk .L656
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
	br .L658
	;;
.L656:
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L658
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
.L658:
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
	(p6) br.cond.dptk .L661
	mov r14 = r0
	mov r15 = r0
	adds r34 = -64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shr.u r14 = r17, r34
	br .L662
	;;
.L661:
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L664
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
.L662:
	;;
	mov r8 = r14
	mov r9 = r15
	br .L663
	;;
.L664:
	mov r8 = r32
	mov r9 = r33
.L663:
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
.L680:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L678
	;;
	fmpy.d f8 = f8, f6
.L678:
	extr.u r15 = r33, 31, 1
	;;
	add r33 = r15, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L679
	fmpy.d f6 = f6, f6
	br .L680
	;;
.L679:
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L681
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
.L681:
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
.L686:
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L684
	;;
	fmpy.s f8 = f8, f6
.L684:
	extr.u r15 = r33, 31, 1
	;;
	add r33 = r15, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dptk .L685
	fmpy.s f6 = f6, f6
	br .L686
	;;
.L685:
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L687
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
.L687:
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
	(p6) br.cond.dptk .L691
	;;
	cmp4.ltu p6, p7 = r14, r15
	(p6) br.cond.dptk .L692
	;;
	cmp4.ltu p6, p7 = r32, r33
	(p6) br.cond.dptk .L693
	;;
	cmp4.gtu p6, p7 = r32, r33
	(p6) br.cond.dptk .L694
	addl r8 = 1, r0
	br .L690
	;;
.L691:
	mov r8 = r0
	br .L690
	;;
.L692:
	addl r8 = 2, r0
	br .L690
	;;
.L693:
	mov r8 = r0
	br .L690
	;;
.L694:
	addl r8 = 2, r0
.L690:
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
	(p6) br.cond.dptk .L698
	;;
	cmp.gtu p6, p7 = r33, r35
	(p6) br.cond.dptk .L699
	;;
	cmp.ltu p6, p7 = r32, r34
	(p6) br.cond.dptk .L700
	;;
	cmp.gtu p6, p7 = r32, r34
	(p6) br.cond.dptk .L701
	addl r8 = 1, r0
	br .L697
	;;
.L698:
	mov r8 = r0
	br .L697
	;;
.L699:
	addl r8 = 2, r0
	br .L697
	;;
.L700:
	mov r8 = r0
	br .L697
	;;
.L701:
	addl r8 = 2, r0
.L697:
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
