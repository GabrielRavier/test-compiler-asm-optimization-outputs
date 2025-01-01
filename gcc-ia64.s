	.file	"mini-libc.c"
	.pred.safe_across_calls p1-p5,p16-p63
	.text
	.align 16
	.align 64
	.global make_ti#
	.type	make_ti#, @function
	.proc make_ti#
make_ti:
	.prologue
	.body
	mov r9 = r32
	mov r8 = r33
	br.ret.sptk.many b0
	;;
	.endp make_ti#
	.align 16
	.align 64
	.global make_tu#
	.type	make_tu#, @function
	.proc make_tu#
make_tu:
	.prologue
	.body
	mov r9 = r32
	mov r8 = r33
	br.ret.sptk.many b0
	;;
	.endp make_tu#
	.align 16
	.align 64
	.global memmove#
	.type	memmove#, @function
	.proc memmove#
memmove:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	cmp.geu p6, p7 = r33, r32
	(p6) br.cond.dptk .L6
	add r16 = r33, r34
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L7
	adds r15 = -1, r16
	adds r34 = -1, r34
	;;
	add r34 = r32, r34
	sub r33 = r16, r33, 1
	;;
	mov ar.lc = r33
	.align 32
.L8:
	ld1 r16 = [r15], -1
	;;
	st1 [r34] = r16, -1
	br.cloop.sptk.few .L8
.L7:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L6:
	cmp.eq p6, p7 = r33, r32
	(p6) br.cond.dpnt .L7
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L7
	mov r15 = r32
	add r34 = r33, r34
	;;
	sub r34 = r34, r33, 1
	;;
	mov ar.lc = r34
	.align 32
.L9:
	ld1 r14 = [r33]
	adds r33 = 1, r33
	;;
	st1 [r15] = r14, 1
	br.cloop.sptk.few .L9
	br .L7
	;;
	.endp memmove#
	.align 16
	.align 64
	.global memccpy#
	.type	memccpy#, @function
	.proc memccpy#
memccpy:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt1 r34 = r34
	cmp.eq p6, p7 = 0, r35
	(p6) br.cond.dpnt .L24
	mov r14 = r32
	adds r15 = -1, r35
	;;
	mov ar.lc = r15
	.align 32
.L21:
	ld1 r15 = [r33], 1
	;;
	st1 [r14] = r15, 1
	cmp4.ne p6, p7 = r34, r15
	(p7) br.cond.dpnt .L31
	adds r35 = -1, r35
	br.cloop.sptk.few .L21
.L24:
	mov r8 = r0
	br .L19
	;;
.L31:
	cmp.eq p6, p7 = 0, r35
	;;
	(p7) mov r8 = r14
	(p6) br.cond.dpnt .L24
.L19:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memccpy#
	.align 16
	.align 64
	.global memchr#
	.type	memchr#, @function
	.proc memchr#
memchr:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt1 r33 = r33
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L38
	adds r14 = -1, r34
	;;
	mov ar.lc = r14
	.align 32
.L34:
	mov r8 = r32
	adds r32 = 1, r32
	;;
	ld1 r14 = [r8]
	;;
	cmp4.ne p6, p7 = r33, r14
	(p7) br.cond.dpnt .L42
	adds r34 = -1, r34
	br.cloop.sptk.few .L34
.L38:
	mov r8 = r0
	br .L32
	;;
.L42:
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L38
.L32:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memchr#
	.align 16
	.align 64
	.global memcmp#
	.type	memcmp#, @function
	.proc memcmp#
memcmp:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L48
	mov r15 = r32
	mov r14 = r33
	adds r16 = -1, r34
	;;
	mov ar.lc = r16
	.align 32
.L45:
	mov r33 = r14
	mov r32 = r15
	adds r15 = 1, r15
	adds r14 = 1, r14
	;;
	ld1 r17 = [r32]
	ld1 r16 = [r33]
	;;
	cmp4.eq p6, p7 = r16, r17
	(p7) br.cond.dpnt .L55
	adds r34 = -1, r34
	br.cloop.sptk.few .L45
	br .L48
	;;
.L55:
	cmp.eq p6, p7 = 0, r34
	;;
	(p7) mov r8 = r17
	(p7) mov r14 = r16
	;;
	(p7) sub r8 = r8, r14
	(p7) br.cond.dptk .L43
.L48:
	;;
	mov r8 = r0
.L43:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memcmp#
	.align 16
	.align 64
	.global memcpy#
	.type	memcpy#, @function
	.proc memcpy#
memcpy:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 3, 3, 0
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r39 = r33
	mov r40 = r34
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L57
	mov r38 = r32
	;;
	br.call.sptk.many b0 = memcpy#
	mov r1 = r37
.L57:
	mov r8 = r32
	;;
	mov ar.pfs = r36
	mov b0 = r35
	br.ret.sptk.many b0
	;;
	.endp memcpy#
	.align 16
	.align 64
	.global memrchr#
	.type	memrchr#, @function
	.proc memrchr#
memrchr:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt1 r33 = r33
	adds r34 = -1, r34
	;;
	add r32 = r32, r34
	adds r34 = 1, r34
	;;
	mov ar.lc = r34
	.align 32
.L63:
	;;
	br.cloop.sptk.few .L65
	br .L67
	;;
.L65:
	mov r8 = r32
	adds r32 = -1, r32
	;;
	ld1 r14 = [r8]
	;;
	cmp4.eq p6, p7 = r33, r14
	(p7) br.cond.dptk .L63
	br .L62
	;;
.L67:
	mov r8 = r0
.L62:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memrchr#
	.align 16
	.align 64
	.global memset#
	.type	memset#, @function
	.proc memset#
memset:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L69
	mov r14 = r32
	adds r34 = -1, r34
	;;
	mov ar.lc = r34
	.align 32
.L70:
	st1 [r14] = r33, 1
	;;
	br.cloop.sptk.few .L70
.L69:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memset#
	.align 16
	.align 64
	.global stpcpy#
	.type	stpcpy#, @function
	.proc stpcpy#
stpcpy:
	.prologue
	.body
	ld1 r14 = [r33]
	;;
	sxt1 r15 = r14
	st1 [r32] = r14
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L76
	adds r33 = 1, r33
	adds r32 = 1, r32
	.align 32
.L78:
	;;
	mov r8 = r32
	ld1 r15 = [r33], 1
	;;
	sxt1 r16 = r15
	st1 [r32] = r15, 1
	;;
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L78
.L76:
	br.ret.sptk.many b0
	;;
	.endp stpcpy#
	.align 16
	.align 64
	.global strchrnul#
	.type	strchrnul#, @function
	.proc strchrnul#
strchrnul:
	.prologue
	.body
	mov r8 = r32
	zxt1 r33 = r33
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L82
	.align 32
.L83:
	;;
	zxt1 r15 = r15
	;;
	cmp4.ne p6, p7 = r33, r15
	(p7) br.cond.dpnt .L82
	adds r8 = 1, r8
	;;
	ld1 r14 = [r8]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L83
.L82:
	br.ret.sptk.many b0
	;;
	.endp strchrnul#
	.align 16
	.align 64
	.global strchr#
	.type	strchr#, @function
	.proc strchr#
strchr:
	.prologue
	.body
	.align 32
.L91:
	mov r8 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = r33, r14
	(p6) br.cond.dpnt .L89
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L91
	mov r8 = r0
.L89:
	br.ret.sptk.many b0
	;;
	.endp strchr#
	.align 16
	.align 64
	.global strcmp#
	.type	strcmp#, @function
	.proc strcmp#
strcmp:
	.prologue
	.body
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	;;
	mov r8 = r14
	ld1 r15 = [r33]
	;;
	sxt1 r15 = r15
	;;
	mov r16 = r15
	cmp4.ne p6, p7 = 0, r14
	;;
	(p6) addl r17 = 1, r0
	;;
	(p7) mov r17 = r0
	cmp4.eq p6, p7 = r15, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	and r14 = r14, r17
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L95
	adds r32 = 1, r32
	adds r33 = 1, r33
	.align 32
.L96:
	;;
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	mov r8 = r14
	ld1 r15 = [r33], 1
	;;
	sxt1 r15 = r15
	;;
	mov r16 = r15
	cmp4.eq p6, p7 = r15, r14
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r14
	(p6) br.cond.dptk .L96
.L95:
	zxt1 r8 = r8
	zxt1 r16 = r16
	;;
	sub r8 = r8, r16
	br.ret.sptk.many b0
	;;
	.endp strcmp#
	.align 16
	.align 64
	.global strlen#
	.type	strlen#, @function
	.proc strlen#
strlen:
	.prologue
	.body
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L100
	adds r15 = 1, r32
	.align 32
.L101:
	;;
	mov r8 = r15
	adds r15 = 1, r15
	;;
	ld1 r14 = [r8]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L101
.L100:
	sub r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp strlen#
	.align 16
	.align 64
	.global strncmp#
	.type	strncmp#, @function
	.proc strncmp#
strncmp:
	.prologue
	.body
	cmp.eq p6, p7 = 0, r34
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L105
	ld1 r14 = [r32]
	;;
	mov r8 = r14
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L107
	adds r32 = 1, r32
	mov r14 = r33
	add r34 = r33, r34
	.align 32
.L108:
	;;
	mov r33 = r14
	ld1 r16 = [r14], 1
	;;
	cmp4.ne p6, p7 = 0, r16
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	cmp4.eq p6, p7 = r8, r16
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	and r15 = r16, r15
	cmp.ne p6, p7 = r14, r34
	;;
	tbit.nz.and.orcm p6, p7 = r15, 0
	(p7) br.cond.dpnt .L107
	ld1 r15 = [r32], 1
	;;
	mov r8 = r15
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L108
	mov r33 = r14
.L107:
	;;
	ld1 r14 = [r33]
	;;
	sub r8 = r8, r14
.L105:
	br.ret.sptk.many b0
	;;
	.endp strncmp#
	.align 16
	.align 64
	.global swab#
	.type	swab#, @function
	.proc swab#
swab:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.ge p6, p7 = 1, r34
	(p6) br.cond.dpnt .L113
	and r34 = -2, r34
	;;
	adds r34 = -2, r34
	;;
	shr.u r34 = r34, 1
	;;
	mov ar.lc = r34
	.align 32
.L115:
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
	br.cloop.sptk.few .L115
.L113:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp swab#
	.align 16
	.align 64
	.global isalpha#
	.type	isalpha#, @function
	.proc isalpha#
isalpha:
	.prologue
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
	br.ret.sptk.many b0
	;;
	.endp isalpha#
	.align 16
	.align 64
	.global isascii#
	.type	isascii#, @function
	.proc isascii#
isascii:
	.prologue
	.body
	cmp4.geu p6, p7 = 127, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp isascii#
	.align 16
	.align 64
	.global isblank#
	.type	isblank#, @function
	.proc isblank#
isblank:
	.prologue
	.body
	cmp4.eq p6, p7 = 32, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	cmp4.eq p6, p7 = 9, r32
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	or r8 = r14, r8
	br.ret.sptk.many b0
	;;
	.endp isblank#
	.align 16
	.align 64
	.global iscntrl#
	.type	iscntrl#, @function
	.proc iscntrl#
iscntrl:
	.prologue
	.body
	cmp4.geu p6, p7 = 31, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	cmp4.eq p6, p7 = 127, r32
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	or r8 = r14, r8
	br.ret.sptk.many b0
	;;
	.endp iscntrl#
	.align 16
	.align 64
	.global isdigit#
	.type	isdigit#, @function
	.proc isdigit#
isdigit:
	.prologue
	.body
	adds r32 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp isdigit#
	.align 16
	.align 64
	.global isgraph#
	.type	isgraph#, @function
	.proc isgraph#
isgraph:
	.prologue
	.body
	adds r32 = -33, r32
	;;
	cmp4.geu p6, p7 = 93, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp isgraph#
	.align 16
	.align 64
	.global islower#
	.type	islower#, @function
	.proc islower#
islower:
	.prologue
	.body
	adds r32 = -97, r32
	;;
	cmp4.geu p6, p7 = 25, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp islower#
	.align 16
	.align 64
	.global isprint#
	.type	isprint#, @function
	.proc isprint#
isprint:
	.prologue
	.body
	adds r32 = -32, r32
	;;
	cmp4.geu p6, p7 = 94, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp isprint#
	.align 16
	.align 64
	.global isspace#
	.type	isspace#, @function
	.proc isspace#
isspace:
	.prologue
	.body
	adds r14 = -9, r32
	;;
	cmp4.geu p6, p7 = 4, r14
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	cmp4.eq p6, p7 = 32, r32
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	or r8 = r14, r8
	br.ret.sptk.many b0
	;;
	.endp isspace#
	.align 16
	.align 64
	.global isupper#
	.type	isupper#, @function
	.proc isupper#
isupper:
	.prologue
	.body
	adds r32 = -65, r32
	;;
	cmp4.geu p6, p7 = 25, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp isupper#
	.align 16
	.align 64
	.global iswcntrl#
	.type	iswcntrl#, @function
	.proc iswcntrl#
iswcntrl:
	.prologue
	.body
	adds r14 = -127, r32
	;;
	cmp4.geu p6, p7 = 32, r14
	cmp4.geu p8, p9 = 31, r32
	;;
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L141
	addl r15 = -8232, r0
	;;
	add r14 = r32, r15
	;;
	cmp4.geu p6, p7 = 1, r14
	(p6) br.cond.dpnt .L141
	addl r14 = -65529, r0
	;;
	add r2 = r32, r14
	;;
	cmp4.geu p6, p7 = 2, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L138
	;;
.L141:
	addl r8 = 1, r0
.L138:
	br.ret.sptk.many b0
	;;
	.endp iswcntrl#
	.align 16
	.align 64
	.global iswdigit#
	.type	iswdigit#, @function
	.proc iswdigit#
iswdigit:
	.prologue
	.body
	adds r32 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp iswdigit#
	.align 16
	.align 64
	.global iswprint#
	.type	iswprint#, @function
	.proc iswprint#
iswprint:
	.prologue
	.body
	mov r2 = r32
	addl r14 = 254, r0
	;;
	cmp4.ltu p6, p7 = r14, r32
	(p7) br.cond.dpnt .L152
	addl r15 = -8234, r2
	addl r14 = 47061, r0
	;;
	cmp4.geu p6, p7 = r14, r15
	addl r14 = 8231, r0
	;;
	cmp4.geu p8, p9 = r14, r32
	;;
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	(p6) br.cond.dpnt .L149
	addl r15 = -57344, r2
	addl r14 = 8184, r0
	;;
	cmp4.geu p6, p7 = r14, r15
	(p6) br.cond.dpnt .L149
	addl r15 = -65532, r2
	addl r14 = 1048579, r0
	;;
	cmp4.ltu p6, p7 = r14, r15
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L145
	addl r14 = 65534, r0
	;;
	and r2 = r14, r2
	;;
	cmp4.ne p6, p7 = r14, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L145
	;;
.L152:
	adds r2 = 1, r32
	;;
	and r2 = 127, r2
	;;
	cmp4.ltu p6, p7 = 32, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L145
	;;
.L149:
	addl r8 = 1, r0
.L145:
	br.ret.sptk.many b0
	;;
	.endp iswprint#
	.align 16
	.align 64
	.global iswxdigit#
	.type	iswxdigit#, @function
	.proc iswxdigit#
iswxdigit:
	.prologue
	.body
	adds r14 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r14
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L153
	or r32 = 32, r32
	;;
	adds r32 = -97, r32
	;;
	cmp4.geu p6, p7 = 5, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L153:
	br.ret.sptk.many b0
	;;
	.endp iswxdigit#
	.align 16
	.align 64
	.global toascii#
	.type	toascii#, @function
	.proc toascii#
toascii:
	.prologue
	.body
	and r8 = 127, r32
	br.ret.sptk.many b0
	;;
	.endp toascii#
	.align 16
	.align 64
	.global fdim#
	.type	fdim#, @function
	.proc fdim#
fdim:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L159
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) mov f8 = f9
	(p6) br.cond.dpnt .L159
	;;
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) fsub.d f8 = f8, f9
	;;
	(p7) mov f8 = f0
.L159:
	br.ret.sptk.many b0
	;;
	.endp fdim#
	.align 16
	.align 64
	.global fdimf#
	.type	fdimf#, @function
	.proc fdimf#
fdimf:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L168
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) mov f8 = f9
	(p6) br.cond.dpnt .L168
	;;
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) fsub.s f8 = f8, f9
	;;
	(p7) mov f8 = f0
.L168:
	br.ret.sptk.many b0
	;;
	.endp fdimf#
	.align 16
	.align 64
	.global fmax#
	.type	fmax#, @function
	.proc fmax#
fmax:
	.prologue
	.body
	getf.d r15 = f8
	getf.d r14 = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L184
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L183
	shr.u r16 = r15, 63
	shr.u r17 = r14, 63
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L179
	;;
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L177
.L184:
	setf.d f8 = r14
.L177:
	br.ret.sptk.many b0
	;;
.L179:
	fcmp.lt p6, p7 = f8, f9
	;;
	(p6) br.cond.dptk .L184
.L183:
	setf.d f8 = r15
	br .L177
	;;
	.endp fmax#
	.align 16
	.align 64
	.global fmaxf#
	.type	fmaxf#, @function
	.proc fmaxf#
fmaxf:
	.prologue
	.body
	getf.s r15 = f8
	getf.s r14 = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L193
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L192
	mov r16 = r15
	movl r18 = -2147483648
	;;
	and r16 = r18, r16
	mov r17 = r14
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L188
	;;
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L186
.L193:
	setf.s f8 = r14
.L186:
	br.ret.sptk.many b0
	;;
.L188:
	fcmp.lt p6, p7 = f8, f9
	;;
	(p6) br.cond.dptk .L193
.L192:
	setf.s f8 = r15
	br .L186
	;;
	.endp fmaxf#
	.align 16
	.align 64
	.global fmaxl#
	.type	fmaxl#, @function
	.proc fmaxl#
fmaxl:
	.prologue
	.fframe 16
	adds r12 = -16, r12
	.body
	;;
	stfe [r12] = f8
	adds r14 = 16, r12
	;;
	stfe [r14] = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L200
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L201
	adds r15 = 8, r12
	;;
	ld8 r14 = [r15]
	addl r16 = 32768, r0
	;;
	and r14 = r16, r14
	adds r17 = 24, r12
	;;
	ld8 r15 = [r17]
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = r15, r14
	(p6) br.cond.dptk .L197
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L195
	adds r15 = 16, r12
	;;
	ldfe f8 = [r15]
	br .L195
	;;
.L197:
	ldfe f6 = [r12]
	adds r14 = 16, r12
	;;
	ldfe f7 = [r14]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p6) mov f8 = f7
	(p6) br.cond.dptk .L195
.L201:
	;;
	ldfe f8 = [r12]
.L195:
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L200:
	.body
	.copy_state 1
	adds r14 = 16, r12
	;;
	ldfe f8 = [r14]
	br .L195
	;;
	.endp fmaxl#
	.align 16
	.align 64
	.global fmin#
	.type	fmin#, @function
	.proc fmin#
fmin:
	.prologue
	.body
	getf.d r14 = f8
	getf.d r15 = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L209
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L211
	shr.u r16 = r14, 63
	shr.u r17 = r15, 63
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L206
	;;
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L211
.L209:
	setf.d f8 = r15
.L204:
	br.ret.sptk.many b0
	;;
.L206:
	fcmp.lt p6, p7 = f8, f9
	;;
	(p7) br.cond.dptk .L209
.L211:
	setf.d f8 = r14
	br .L204
	;;
	.endp fmin#
	.align 16
	.align 64
	.global fminf#
	.type	fminf#, @function
	.proc fminf#
fminf:
	.prologue
	.body
	getf.s r14 = f8
	getf.s r15 = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L218
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L220
	mov r16 = r14
	movl r18 = -2147483648
	;;
	and r16 = r18, r16
	mov r17 = r15
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L215
	;;
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L220
.L218:
	setf.s f8 = r15
.L213:
	br.ret.sptk.many b0
	;;
.L215:
	fcmp.lt p6, p7 = f8, f9
	;;
	(p7) br.cond.dptk .L218
.L220:
	setf.s f8 = r14
	br .L213
	;;
	.endp fminf#
	.align 16
	.align 64
	.global fminl#
	.type	fminl#, @function
	.proc fminl#
fminl:
	.prologue
	.fframe 16
	adds r12 = -16, r12
	.body
	;;
	stfe [r12] = f8
	adds r14 = 16, r12
	;;
	stfe [r14] = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L227
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L229
	adds r15 = 8, r12
	;;
	ld8 r14 = [r15]
	addl r16 = 32768, r0
	;;
	and r14 = r16, r14
	adds r17 = 24, r12
	;;
	ld8 r15 = [r17]
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = r15, r14
	(p6) br.cond.dptk .L224
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	(p7) mov f8 = f9
	(p7) br.cond.dptk .L222
.L229:
	;;
	ldfe f8 = [r12]
	br .L222
	;;
.L224:
	ldfe f6 = [r12]
	adds r15 = 16, r12
	;;
	ldfe f7 = [r15]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p6) mov f8 = f6
	(p7) adds r14 = 16, r12
	;;
	(p7) ldfe f8 = [r14]
.L222:
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L227:
	.body
	.copy_state 1
	adds r15 = 16, r12
	;;
	ldfe f8 = [r15]
	br .L222
	;;
	.endp fminl#
	.align 16
	.align 64
	.global l64a#
	.type	l64a#, @function
	.proc l64a#
l64a:
	.prologue
	.body
	mov r14 = r32
	addl r16 = @gprel(s.0#), gp
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L232
	movl r17 = @gprel(digits#)
	;;
	add r17 = r1, r17
	.align 32
.L233:
	and r15 = 63, r14
	;;
	add r15 = r17, r15
	;;
	ld1 r15 = [r15]
	;;
	st1 [r16] = r15, 1
	extr.u r14 = r14, 6, 26
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L233
.L232:
	st1 [r16] = r0
	addl r8 = @gprel(s.0#), gp
	br.ret.sptk.many b0
	;;
	.endp l64a#
	.align 16
	.align 64
	.global srand#
	.type	srand#, @function
	.proc srand#
srand:
	.prologue
	.body
	adds r32 = -1, r32
	;;
	addp4 r32 = r32, r0
	addl r14 = @gprel(seed#), gp
	;;
	st8 [r14] = r32
	br.ret.sptk.many b0
	;;
	.endp srand#
	.align 16
	.align 64
	.global rand#
	.type	rand#, @function
	.proc rand#
rand:
	.prologue
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
	extr.u r8 = r8, 33, 31
	br.ret.sptk.many b0
	;;
	.endp rand#
	.align 16
	.align 64
	.global insque#
	.type	insque#, @function
	.proc insque#
insque:
	.prologue
	.body
	cmp.ne p6, p7 = 0, r33
	;;
	(p7) adds r14 = 8, r32
	;;
	(p7) st8 [r14] = r0
	(p7) st8 [r32] = r0
	(p7) br.cond.dpnt .L241
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
	;;
	(p7) adds r14 = 8, r14
	;;
	(p7) st8 [r14] = r32
.L241:
	br.ret.sptk.many b0
	;;
	.endp insque#
	.align 16
	.align 64
	.global remque#
	.type	remque#, @function
	.proc remque#
remque:
	.prologue
	.body
	ld8 r14 = [r32]
	adds r15 = 8, r32
	;;
	cmp.eq p6, p7 = 0, r14
	;;
	(p7) ld8 r16 = [r15]
	(p7) adds r14 = 8, r14
	;;
	(p7) st8 [r14] = r16
	ld8 r14 = [r15]
	;;
	cmp.eq p6, p7 = 0, r14
	;;
	(p7) ld8 r15 = [r32]
	;;
	(p7) st8 [r14] = r15
	br.ret.sptk.many b0
	;;
	.endp remque#
	.align 16
	.align 64
	.global lsearch#
	.type	lsearch#, @function
	.proc lsearch#
lsearch:
	.prologue 12, 40
	.save ar.pfs, r41
	alloc r41 = ar.pfs, 5, 7, 3, 0
	.save ar.lc, r43
	mov r43 = ar.lc
	.save rp, r40
	mov r40 = b0
	mov r42 = r1
	.body
	ld8 r39 = [r34]
	;;
	cmp.eq p6, p7 = 0, r39
	(p6) br.cond.dpnt .L259
	mov r37 = r33
	adds r14 = -1, r39
	;;
	mov ar.lc = r14
	.align 32
.L261:
	mov r38 = r37
	mov r45 = r37
	mov r44 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r42
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L258
	add r37 = r37, r35
	br.cloop.sptk.few .L261
.L259:
	adds r14 = 1, r39
	;;
	st8 [r34] = r14
	setf.sig f6 = r35
	setf.sig f7 = r39
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r44 = f6
	mov r46 = r35
	mov r45 = r32
	br.call.sptk.many b0 = memcpy#
	mov r1 = r42
	mov r38 = r8
.L258:
	;;
	mov r8 = r38
	mov ar.pfs = r41
	mov ar.lc = r43
	mov b0 = r40
	br.ret.sptk.many b0
	;;
	.endp lsearch#
	.align 16
	.align 64
	.global lfind#
	.type	lfind#, @function
	.proc lfind#
lfind:
	.prologue 12, 38
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 5, 5, 2, 0
	.save ar.lc, r41
	mov r41 = ar.lc
	.save rp, r38
	mov r38 = b0
	mov r40 = r1
	.body
	ld8 r14 = [r34]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L271
	adds r14 = -1, r14
	;;
	mov ar.lc = r14
	.align 32
.L273:
	mov r37 = r33
	mov r43 = r33
	mov r42 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r40
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L270
	add r33 = r33, r35
	br.cloop.sptk.few .L273
.L271:
	mov r37 = r0
.L270:
	;;
	mov r8 = r37
	mov ar.pfs = r39
	mov ar.lc = r41
	mov b0 = r38
	br.ret.sptk.many b0
	;;
	.endp lfind#
	.align 16
	.align 64
	.global abs#
	.type	abs#, @function
	.proc abs#
abs:
	.prologue
	.body
	cmp4.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp abs#
	.align 16
	.align 64
	.global atoi#
	.type	atoi#, @function
	.proc atoi#
atoi:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 1, 5, 1, 0
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	.align 32
.L285:
	mov r34 = r32
	ld1 r33 = [r32], 1
	;;
	sxt1 r33 = r33
	;;
	mov r38 = r33
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L285
	;;
	cmp4.eq p6, p7 = 43, r33
	(p6) br.cond.dpnt .L292
	;;
	cmp4.ne p6, p7 = 45, r33
	;;
	(p7) addl r17 = 1, r0
	(p7) br.cond.dptk .L286
	;;
	mov r17 = r0
	br .L287
	;;
.L292:
	mov r17 = r0
.L286:
	adds r34 = 1, r34
.L287:
	;;
	ld1 r14 = [r34]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	;;
	(p6) adds r34 = 1, r34
	(p7) br.cond.dpnt .L289
	.align 32
.L288:
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r14 = r14, 1, r0
	adds r15 = -48, r15
	;;
	sxt1 r15 = r15
	;;
	sub r8 = r14, r15
	ld1 r14 = [r34], 1
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L288
.L289:
	;;
	cmp4.ne p6, p7 = 0, r17
	;;
	(p7) sub r8 = r0, r8
	mov ar.pfs = r36
	mov b0 = r35
	br.ret.sptk.many b0
	;;
	.endp atoi#
	.align 16
	.align 64
	.global atol#
	.type	atol#, @function
	.proc atol#
atol:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 1, 5, 1, 0
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	.align 32
.L298:
	mov r34 = r32
	ld1 r33 = [r32], 1
	;;
	sxt1 r33 = r33
	;;
	mov r38 = r33
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L298
	cmp4.eq p8, p9 = 43, r33
	(p8) br.cond.dpnt .L299
	;;
	cmp4.ne p8, p9 = 45, r33
	(p8) br.cond.dptk .L300
	cmp.eq p6, p7 = r0, r0
.L299:
	.pred.rel.mutex p6, p7
	adds r34 = 1, r34
.L300:
	.pred.rel.mutex p6, p7
	;;
	ld1 r14 = [r34]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -48, r14
	;;
	cmp4.geu p8, p9 = 9, r14
	;;
	(p8) adds r34 = 1, r34
	(p8) mov r8 = r0
	(p9) br.cond.dpnt .L308
	.align 32
.L301:
	.pred.rel.mutex p6, p7
	;;
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r14 = r14, 1, r0
	adds r15 = -48, r15
	;;
	sxt1 r15 = r15
	;;
	sub r8 = r14, r15
	ld1 r14 = [r34], 1
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -48, r14
	;;
	cmp4.geu p8, p9 = 9, r14
	(p8) br.cond.dptk .L301
.L302:
	.pred.rel.mutex p6, p7
	(p7) sub r8 = r0, r8
	mov ar.pfs = r36
	mov b0 = r35
	br.ret.sptk.many b0
	;;
.L308:
	.pred.rel.mutex p6, p7
	mov r8 = r0
	br .L302
	;;
	.endp atol#
	.align 16
	.align 64
	.global atoll#
	.type	atoll#, @function
	.proc atoll#
atoll:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 1, 5, 1, 0
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	.align 32
.L310:
	mov r34 = r32
	ld1 r33 = [r32], 1
	;;
	sxt1 r33 = r33
	;;
	mov r38 = r33
	br.call.sptk.many b0 = isspace#
	mov r1 = r37
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L310
	cmp4.eq p8, p9 = 43, r33
	(p8) br.cond.dpnt .L311
	;;
	cmp4.ne p8, p9 = 45, r33
	(p8) br.cond.dptk .L312
	cmp.eq p6, p7 = r0, r0
.L311:
	.pred.rel.mutex p6, p7
	adds r34 = 1, r34
.L312:
	.pred.rel.mutex p6, p7
	;;
	ld1 r14 = [r34]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -48, r14
	;;
	cmp4.geu p8, p9 = 9, r14
	;;
	(p8) adds r34 = 1, r34
	(p8) mov r8 = r0
	(p9) br.cond.dpnt .L320
	.align 32
.L313:
	.pred.rel.mutex p6, p7
	;;
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r14 = r14, 1, r0
	adds r15 = -48, r15
	;;
	sxt1 r15 = r15
	;;
	sub r8 = r14, r15
	ld1 r14 = [r34], 1
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -48, r14
	;;
	cmp4.geu p8, p9 = 9, r14
	(p8) br.cond.dptk .L313
.L314:
	.pred.rel.mutex p6, p7
	(p7) sub r8 = r0, r8
	mov ar.pfs = r36
	mov b0 = r35
	br.ret.sptk.many b0
	;;
.L320:
	.pred.rel.mutex p6, p7
	mov r8 = r0
	br .L314
	;;
	.endp atoll#
	.align 16
	.align 64
	.global bsearch#
	.type	bsearch#, @function
	.proc bsearch#
bsearch:
	.prologue 12, 38
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 5, 4, 2, 0
	adds r16 = -32, r12
	adds r17 = -16, r12
	.fframe 48
	adds r12 = -48, r12
	.save rp, r38
	mov r38 = b0
	mov r40 = r1
	;;
	.save.f 0x1
	stf.spill [r16] = f2, 32
	.save.f 0x2
	stf.spill [r17] = f3
	;;
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	setf.sig f4 = r33
	setf.sig f3 = r35
	cmp.eq p6, p7 = 0, r34
	(p7) br.cond.dptk .L325
	.align 32
.L322:
	setf.sig f2 = r0
.L321:
	;;
	getf.sig r8 = f2
	adds r18 = 16, r12
	adds r19 = 32, r12
	mov ar.pfs = r39
	mov b0 = r38
	;;
	ldf.fill f2 = [r18], 32
	ldf.fill f3 = [r19]
	;;
	ldf.fill f4 = [r18]
	.label_state 1
	.restore sp
	adds r12 = 48, r12
	br.ret.sptk.many b0
	;;
.L326:
	.body
	.copy_state 1
	mov r34 = r37
.L323:
	;;
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L322
.L325:
	shr.u r37 = r34, 1
	;;
	setf.sig f6 = r37
	;;
	xma.l f2 = f6, f3, f4
	;;
	getf.sig r42 = f2
	mov r41 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r40
	cmp4.gt p6, p7 = r0, r8
	(p6) br.cond.dpnt .L326
	;;
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dpnt .L321
	getf.sig r15 = f2
	getf.sig r14 = f3
	;;
	add r15 = r15, r14
	;;
	setf.sig f4 = r15
	sub r34 = r34, r37, 1
	br .L323
	;;
	.endp bsearch#
	.align 16
	.align 64
	.global bsearch_r#
	.type	bsearch_r#, @function
	.proc bsearch_r#
bsearch_r:
	.prologue 12, 40
	.save ar.pfs, r41
	alloc r41 = ar.pfs, 6, 5, 3, 0
	adds r16 = -32, r12
	adds r17 = -16, r12
	.fframe 48
	adds r12 = -48, r12
	.save rp, r40
	mov r40 = b0
	mov r42 = r1
	;;
	.save.f 0x1
	stf.spill [r16] = f2, 32
	.save.f 0x2
	stf.spill [r17] = f3
	;;
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	setf.sig f4 = r33
	setf.sig f3 = r35
	mov r39 = r34
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L333
	.align 32
.L336:
	;;
	extr r38 = r39, 1, 31
	;;
	setf.sig f6 = r38
	;;
	xma.l f2 = f6, f3, f4
	mov r45 = r37
	;;
	getf.sig r44 = f2
	mov r43 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r42
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L332
	;;
	cmp4.ge p6, p7 = 0, r8
	;;
	(p7) getf.sig r15 = f2
	(p7) getf.sig r14 = f3
	;;
	(p7) add r15 = r15, r14
	;;
	(p7) setf.sig f4 = r15
	(p7) adds r39 = -1, r39
	;;
	(p7) extr r38 = r39, 1, 31
	;;
	mov r39 = r38
	cmp4.ne p6, p7 = 0, r38
	(p6) br.cond.dptk .L336
.L333:
	setf.sig f2 = r0
.L332:
	;;
	getf.sig r8 = f2
	adds r18 = 16, r12
	adds r19 = 32, r12
	mov ar.pfs = r41
	mov b0 = r40
	;;
	ldf.fill f2 = [r18], 32
	ldf.fill f3 = [r19]
	;;
	ldf.fill f4 = [r18]
	.restore sp
	adds r12 = 48, r12
	br.ret.sptk.many b0
	;;
	.endp bsearch_r#
	.align 16
	.align 64
	.global div#
	.type	div#, @function
	.proc div#
div:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 2, 0
	.fframe 16
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	sxt4 r32 = r32
	sxt4 r33 = r33
	;;
	mov r39 = r33
	mov r38 = r32
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r37
	mov r34 = r8
	;;
	mov r39 = r33
	mov r38 = r32
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r37
	mov r14 = r0
	addp4 r34 = r34, r0
	;;
	shl r34 = r34, 32
	;;
	mix4.l r14 = r14, r34
	addp4 r8 = r8, r0
	;;
	mix4.r r14 = r8, r14
	;;
	mov r8 = r14
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
	.endp div#
	.align 16
	.align 64
	.global imaxabs#
	.type	imaxabs#, @function
	.proc imaxabs#
imaxabs:
	.prologue
	.body
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp imaxabs#
	.align 16
	.align 64
	.global imaxdiv#
	.type	imaxdiv#, @function
	.proc imaxdiv#
imaxdiv:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 2, 0
	.fframe 16
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r39 = r33
	mov r38 = r32
	;;
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r37
	mov r34 = r8
	mov r39 = r33
	mov r38 = r32
	;;
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r37
	mov r9 = r8
	mov r8 = r34
	;;
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
	.endp imaxdiv#
	.align 16
	.align 64
	.global labs#
	.type	labs#, @function
	.proc labs#
labs:
	.prologue
	.body
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp labs#
	.align 16
	.align 64
	.global ldiv#
	.type	ldiv#, @function
	.proc ldiv#
ldiv:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 2, 0
	.fframe 16
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r39 = r33
	mov r38 = r32
	;;
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r37
	mov r34 = r8
	mov r39 = r33
	mov r38 = r32
	;;
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r37
	mov r9 = r8
	mov r8 = r34
	;;
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
	.endp ldiv#
	.align 16
	.align 64
	.global llabs#
	.type	llabs#, @function
	.proc llabs#
llabs:
	.prologue
	.body
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp llabs#
	.align 16
	.align 64
	.global lldiv#
	.type	lldiv#, @function
	.proc lldiv#
lldiv:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 2, 0
	.fframe 16
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r39 = r33
	mov r38 = r32
	;;
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r37
	mov r34 = r8
	mov r39 = r33
	mov r38 = r32
	;;
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r37
	mov r9 = r8
	mov r8 = r34
	;;
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
	.endp lldiv#
	.align 16
	.align 64
	.global wcschr#
	.type	wcschr#, @function
	.proc wcschr#
wcschr:
	.prologue
	.body
	ld4 r14 = [r32]
	;;
	cmp4.ne p6, p7 = r14, r33
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	cmp4.ne p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p8, p9 = 0, r14
	;;
	(p8) mov r8 = r32
	(p8) br.cond.dpnt .L357
	adds r32 = 4, r32
	.align 32
.L358:
	;;
	mov r8 = r32
	ld4 r14 = [r32], 4
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	(p6) cmp.eq.unc p8, p0 = r0, r0
	(p7) cmp.eq.unc p9, p0 = r0, r0
	.pred.rel.mutex p8, p9
	;;
	cmp4.ne.and.orcm p8, p9 = r33, r14
	(p8) br.cond.dptk .L358
.L357:
	.pred.rel.mutex p6, p7
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp wcschr#
	.align 16
	.align 64
	.global wcscmp#
	.type	wcscmp#, @function
	.proc wcscmp#
wcscmp:
	.prologue
	.body
	ld4 r16 = [r32]
	ld4 r15 = [r33]
	;;
	cmp4.ne p6, p7 = 0, r16
	;;
	(p6) addl r17 = 1, r0
	;;
	(p7) mov r17 = r0
	cmp4.eq p6, p7 = r15, r16
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	and r17 = r14, r17
	cmp4.ne p6, p7 = 0, r15
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	and r14 = r17, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L364
	adds r32 = 4, r32
	adds r33 = 4, r33
	.align 32
.L365:
	;;
	ld4 r16 = [r32], 4
	ld4 r15 = [r33], 4
	;;
	cmp4.ne p6, p7 = 0, r16
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	cmp4.eq p6, p7 = r15, r16
	;;
	(p6) addl r17 = 1, r0
	;;
	(p7) mov r17 = r0
	;;
	and r14 = r17, r14
	cmp4.ne p6, p7 = 0, r15
	;;
	tbit.nz.and.orcm p6, p7 = r14, 0
	(p6) br.cond.dptk .L365
.L364:
	;;
	cmp4.gt p6, p7 = r15, r16
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L363
	cmp4.lt p6, p7 = r15, r16
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L363:
	br.ret.sptk.many b0
	;;
	.endp wcscmp#
	.align 16
	.align 64
	.global wcscpy#
	.type	wcscpy#, @function
	.proc wcscpy#
wcscpy:
	.prologue
	.body
	mov r8 = r32
	mov r15 = r32
	.align 32
.L371:
	ld4 r14 = [r33]
	adds r33 = 4, r33
	;;
	st4 [r15] = r14, 4
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L371
	br.ret.sptk.many b0
	;;
	.endp wcscpy#
	.align 16
	.align 64
	.global wcslen#
	.type	wcslen#, @function
	.proc wcslen#
wcslen:
	.prologue
	.body
	ld4 r14 = [r32]
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L375
	adds r14 = 4, r32
	.align 32
.L376:
	;;
	mov r8 = r14
	adds r14 = 4, r14
	;;
	ld4 r15 = [r8]
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L376
.L375:
	sub r8 = r8, r32
	;;
	shr r8 = r8, 2
	br.ret.sptk.many b0
	;;
	.endp wcslen#
	.align 16
	.align 64
	.global wcsncmp#
	.type	wcsncmp#, @function
	.proc wcsncmp#
wcsncmp:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L385
	mov r16 = r32
	mov r15 = r33
	adds r14 = -1, r34
	;;
	mov ar.lc = r14
	.align 32
.L382:
	mov r33 = r15
	mov r32 = r16
	ld4 r18 = [r16], 4
	ld4 r17 = [r15], 4
	;;
	cmp4.ne p6, p7 = 0, r18
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	cmp4.eq p6, p7 = r17, r18
	;;
	(p6) addl r18 = 1, r0
	;;
	(p7) mov r18 = r0
	;;
	and r14 = r18, r14
	cmp4.ne p6, p7 = 0, r17
	;;
	tbit.nz.and.orcm p6, p7 = r14, 0
	(p7) br.cond.dpnt .L393
	adds r34 = -1, r34
	br.cloop.sptk.few .L382
.L385:
	mov r8 = r0
.L380:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L393:
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L385
	ld4 r15 = [r32]
	ld4 r14 = [r33]
	;;
	cmp4.gt p6, p7 = r14, r15
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L380
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L380
	;;
	.endp wcsncmp#
	.align 16
	.align 64
	.global wmemchr#
	.type	wmemchr#, @function
	.proc wmemchr#
wmemchr:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L400
	adds r14 = -1, r34
	;;
	mov ar.lc = r14
	.align 32
.L396:
	mov r8 = r32
	adds r32 = 4, r32
	;;
	ld4 r14 = [r8]
	;;
	cmp4.ne p6, p7 = r33, r14
	(p7) br.cond.dpnt .L404
	adds r34 = -1, r34
	br.cloop.sptk.few .L396
.L400:
	mov r8 = r0
	br .L394
	;;
.L404:
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L400
.L394:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp wmemchr#
	.align 16
	.align 64
	.global wmemcmp#
	.type	wmemcmp#, @function
	.proc wmemcmp#
wmemcmp:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L410
	mov r15 = r32
	mov r14 = r33
	adds r16 = -1, r34
	;;
	mov ar.lc = r16
	.align 32
.L407:
	mov r33 = r14
	mov r32 = r15
	adds r15 = 4, r15
	adds r14 = 4, r14
	;;
	ld4 r17 = [r32]
	ld4 r16 = [r33]
	;;
	cmp4.eq p6, p7 = r16, r17
	(p7) br.cond.dpnt .L418
	adds r34 = -1, r34
	br.cloop.sptk.few .L407
.L410:
	mov r8 = r0
.L405:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L418:
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L410
	;;
	cmp4.gt p6, p7 = r16, r17
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L405
	cmp4.lt p6, p7 = r16, r17
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L405
	;;
	.endp wmemcmp#
	.align 16
	.align 64
	.global wmemcpy#
	.type	wmemcpy#, @function
	.proc wmemcpy#
wmemcpy:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 3, 3, 0
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r39 = r33
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L420
	shladd r40 = r34, 2, r0
	mov r38 = r32
	;;
	br.call.sptk.many b0 = memcpy#
	mov r1 = r37
.L420:
	mov r8 = r32
	;;
	mov ar.pfs = r36
	mov b0 = r35
	br.ret.sptk.many b0
	;;
	.endp wmemcpy#
	.align 16
	.align 64
	.global wmemmove#
	.type	wmemmove#, @function
	.proc wmemmove#
wmemmove:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	cmp.eq p6, p7 = r33, r32
	(p6) br.cond.dpnt .L426
	mov r15 = r32
	adds r14 = -1, r34
	sub r16 = r32, r33
	shladd r17 = r34, 2, r0
	;;
	cmp.gtu p6, p7 = r17, r16
	(p6) br.cond.dptk .L427
	;;
	cmp.ne p6, p7 = 0, r34
	;;
	(p6) mov ar.lc = r14
	(p7) br.cond.dpnt .L426
	.align 32
.L428:
	ld4 r14 = [r33]
	adds r33 = 4, r33
	;;
	st4 [r15] = r14, 4
	br.cloop.sptk.few .L428
	br .L426
	;;
.L427:
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L426
	shladd r15 = r14, 2, r0
	;;
	add r33 = r33, r15
	add r14 = r32, r15
	shr.u r15 = r15, 2
	;;
	mov ar.lc = r15
	.align 32
.L429:
	ld4 r15 = [r33], -4
	;;
	st4 [r14] = r15, -4
	br.cloop.sptk.few .L429
.L426:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp wmemmove#
	.align 16
	.align 64
	.global wmemset#
	.type	wmemset#, @function
	.proc wmemset#
wmemset:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	adds r14 = -1, r34
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L438
	mov r15 = r32
	;;
	mov ar.lc = r14
	.align 32
.L439:
	st4 [r15] = r33
	adds r15 = 4, r15
	;;
	br.cloop.sptk.few .L439
.L438:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp wmemset#
	.align 16
	.align 64
	.global bcopy#
	.type	bcopy#, @function
	.proc bcopy#
bcopy:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.leu p6, p7 = r33, r32
	(p6) br.cond.dptk .L446
	add r15 = r32, r34
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L445
	adds r14 = -1, r15
	adds r34 = -1, r34
	;;
	add r33 = r33, r34
	sub r32 = r15, r32, 1
	;;
	mov ar.lc = r32
	.align 32
.L448:
	ld1 r15 = [r14], -1
	;;
	st1 [r33] = r15, -1
	br.cloop.sptk.few .L448
.L445:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L446:
	cmp.eq p6, p7 = r33, r32
	(p6) br.cond.dpnt .L445
	;;
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L445
	add r34 = r32, r34
	;;
	sub r34 = r34, r32, 1
	;;
	mov ar.lc = r34
	.align 32
.L449:
	ld1 r14 = [r32]
	adds r32 = 1, r32
	;;
	st1 [r33] = r14, 1
	br.cloop.sptk.few .L449
	br .L445
	;;
	.endp bcopy#
	.align 16
	.align 64
	.global rotl64#
	.type	rotl64#, @function
	.proc rotl64#
rotl64:
	.prologue
	.body
	addp4 r8 = r33, r0
	;;
	shl r8 = r32, r8
	sub r33 = r0, r33
	;;
	and r33 = 63, r33
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotl64#
	.align 16
	.align 64
	.global rotr64#
	.type	rotr64#, @function
	.proc rotr64#
rotr64:
	.prologue
	.body
	addp4 r8 = r33, r0
	;;
	shr.u r8 = r32, r8
	sub r33 = r0, r33
	;;
	and r33 = 63, r33
	;;
	shl r32 = r32, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotr64#
	.align 16
	.align 64
	.global rotl32#
	.type	rotl32#, @function
	.proc rotl32#
rotl32:
	.prologue
	.body
	sub r33 = 32, r33
	;;
	addp4 r33 = r33, r0
	mix4.r r8 = r32, r32
	;;
	shr.u r8 = r8, r33
	br.ret.sptk.many b0
	;;
	.endp rotl32#
	.align 16
	.align 64
	.global rotr32#
	.type	rotr32#, @function
	.proc rotr32#
rotr32:
	.prologue
	.body
	addp4 r33 = r33, r0
	mix4.r r8 = r32, r32
	;;
	shr.u r8 = r8, r33
	br.ret.sptk.many b0
	;;
	.endp rotr32#
	.align 16
	.align 64
	.global rotl_sz#
	.type	rotl_sz#, @function
	.proc rotl_sz#
rotl_sz:
	.prologue
	.body
	addp4 r8 = r33, r0
	;;
	shl r8 = r32, r8
	sub r33 = r0, r33
	;;
	and r33 = 63, r33
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotl_sz#
	.align 16
	.align 64
	.global rotr_sz#
	.type	rotr_sz#, @function
	.proc rotr_sz#
rotr_sz:
	.prologue
	.body
	addp4 r8 = r33, r0
	;;
	shr.u r8 = r32, r8
	sub r33 = r0, r33
	;;
	and r33 = 63, r33
	;;
	shl r32 = r32, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotr_sz#
	.align 16
	.align 64
	.global rotl16#
	.type	rotl16#, @function
	.proc rotl16#
rotl16:
	.prologue
	.body
	zxt2 r8 = r32
	and r14 = 15, r33
	;;
	shl r8 = r8, r14
	sub r33 = r0, r33
	zxt2 r32 = r32
	;;
	and r33 = 15, r33
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotl16#
	.align 16
	.align 64
	.global rotr16#
	.type	rotr16#, @function
	.proc rotr16#
rotr16:
	.prologue
	.body
	zxt2 r8 = r32
	and r14 = 15, r33
	;;
	shr.u r32 = r8, r14
	sub r33 = r0, r33
	;;
	and r33 = 15, r33
	;;
	shl r8 = r8, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotr16#
	.align 16
	.align 64
	.global rotl8#
	.type	rotl8#, @function
	.proc rotl8#
rotl8:
	.prologue
	.body
	zxt1 r8 = r32
	and r14 = 7, r33
	;;
	shl r8 = r8, r14
	sub r33 = r0, r33
	zxt1 r32 = r32
	;;
	and r33 = 7, r33
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotl8#
	.align 16
	.align 64
	.global rotr8#
	.type	rotr8#, @function
	.proc rotr8#
rotr8:
	.prologue
	.body
	zxt1 r8 = r32
	and r14 = 7, r33
	;;
	shr.u r32 = r8, r14
	sub r33 = r0, r33
	;;
	and r33 = 7, r33
	;;
	shl r8 = r8, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotr8#
	.align 16
	.align 64
	.global bswap_16#
	.type	bswap_16#, @function
	.proc bswap_16#
bswap_16:
	.prologue
	.body
	zxt2 r8 = r32
	extr.u r32 = r32, 8, 8
	;;
	dep.z r8 = r8, 8, 24
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp bswap_16#
	.align 16
	.align 64
	.global bswap_32#
	.type	bswap_32#, @function
	.proc bswap_32#
bswap_32:
	.prologue
	.body
	dep.z r14 = r32, 8, 24
	movl r8 = 16711680
	;;
	and r14 = r8, r14
	dep.z r15 = r32, 24, 8
	;;
	or r14 = r15, r14
	extr.u r15 = r32, 24, 8
	;;
	or r14 = r15, r14
	and r8 = r32, r8
	;;
	shr.u r8 = r8, 8
	;;
	or r8 = r8, r14
	br.ret.sptk.many b0
	;;
	.endp bswap_32#
	.align 16
	.align 64
	.global bswap_64#
	.type	bswap_64#, @function
	.proc bswap_64#
bswap_64:
	.prologue
	.body
	mux1 r8 = r32, @rev
	br.ret.sptk.many b0
	;;
	.endp bswap_64#
	.align 16
	.align 64
	.global ffs#
	.type	ffs#, @function
	.proc ffs#
ffs:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r0
	addp4 r32 = r32, r0
	mov ar.lc = 31
	.align 32
.L488:
	;;
	addp4 r14 = r8, r0
	;;
	shr.u r14 = r32, r14
	adds r8 = 1, r8
	;;
	tbit.z p6, p7 = r14, 0
	(p7) br.cond.dpnt .L485
	br.cloop.sptk.few .L488
	mov r8 = r0
.L485:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp ffs#
	.align 16
	.align 64
	.global libiberty_ffs#
	.type	libiberty_ffs#, @function
	.proc libiberty_ffs#
libiberty_ffs:
	.prologue
	.body
	cmp4.eq p6, p7 = 0, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L491
	and r14 = 1, r32
	;;
	mov r8 = r14
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L491
	;;
	addl r8 = 1, r0
	.align 32
.L493:
	extr r14 = r32, 1, 31
	;;
	mov r32 = r14
	adds r8 = 1, r8
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L493
.L491:
	br.ret.sptk.many b0
	;;
	.endp libiberty_ffs#
	.align 16
	.align 64
	.global gl_isinff#
	.type	gl_isinff#, @function
	.proc gl_isinff#
gl_isinff:
	.prologue
	.body
	movl r14 = 0xff7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L497
	movl r14 = 0x7f7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L497:
	br.ret.sptk.many b0
	;;
	.endp gl_isinff#
	.align 16
	.align 64
	.global gl_isinfd#
	.type	gl_isinfd#, @function
	.proc gl_isinfd#
gl_isinfd:
	.prologue
	.body
	movl r14 = 0xffefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L501
	movl r14 = 0x7fefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L501:
	br.ret.sptk.many b0
	;;
	.endp gl_isinfd#
	.section	.rodata.cst16,"aM",@progbits,16
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
	.align 64
	.global gl_isinfl#
	.type	gl_isinfl#, @function
	.proc gl_isinfl#
gl_isinfl:
	.prologue
	.body
	movl r14 = @gprel(.LC0)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L505
	movl r14 = @gprel(.LC1)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L505:
	br.ret.sptk.many b0
	;;
	.endp gl_isinfl#
	.align 16
	.align 64
	.global _Qp_itoq#
	.type	_Qp_itoq#, @function
	.proc _Qp_itoq#
_Qp_itoq:
	.prologue
	.body
	sxt4 r33 = r33
	;;
	setf.sig f6 = r33
	;;
	fcvt.xf f6 = f6
	;;
	stfe [r32] = f6
	br.ret.sptk.many b0
	;;
	.endp _Qp_itoq#
	.align 16
	.align 64
	.global ldexpf#
	.type	ldexpf#, @function
	.proc ldexpf#
ldexpf:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L512
	fadd.s f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f6, f8
	;;
	(p6) br.cond.dptk .L512
	cmp4.le p6, p7 = r0, r33
	;;
	(p7) movl r14 = 0x3f000000
	;;
	(p6) movl r14 = 0x40000000
	;;
	setf.s f6 = r14
	.align 32
.L515:
	tbit.z p6, p7 = r33, 0
	;;
	(p7) fmpy.s f8 = f8, f6
	extr.u r14 = r33, 31, 1
	;;
	add r33 = r14, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L512
	fmpy.s f6 = f6, f6
	br .L515
	;;
.L512:
	br.ret.sptk.many b0
	;;
	.endp ldexpf#
	.align 16
	.align 64
	.global ldexp#
	.type	ldexp#, @function
	.proc ldexp#
ldexp:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L522
	fadd.d f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f6, f8
	;;
	(p6) br.cond.dptk .L522
	cmp4.le p6, p7 = r0, r33
	;;
	(p7) movl r14 = 0x3fe0000000000000
	;;
	(p6) movl r14 = 0x4000000000000000
	;;
	setf.d f6 = r14
	.align 32
.L525:
	tbit.z p6, p7 = r33, 0
	;;
	(p7) fmpy.d f8 = f8, f6
	extr.u r14 = r33, 31, 1
	;;
	add r33 = r14, r33
	;;
	extr r33 = r33, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L522
	fmpy.d f6 = f6, f6
	br .L525
	;;
.L522:
	br.ret.sptk.many b0
	;;
	.endp ldexp#
	.section	.rodata.cst16
	.align 16
.LC4:
	data4	0
	data4	-2147483648
	data4	16384
	data4	0
	.align 16
.LC5:
	data4	0
	data4	-2147483648
	data4	16382
	data4	0
	.text
	.align 16
	.align 64
	.global ldexpl#
	.type	ldexpl#, @function
	.proc ldexpl#
ldexpl:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L532
	fadd f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f6, f8
	;;
	(p6) br.cond.dptk .L532
	cmp4.le p6, p7 = r0, r34
	;;
	(p7) movl r14 = @gprel(.LC5)
	;;
	(p6) movl r14 = @gprel(.LC4)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	.align 32
.L535:
	tbit.z p6, p7 = r34, 0
	;;
	(p7) fmpy f8 = f8, f6
	extr.u r14 = r34, 31, 1
	;;
	add r34 = r14, r34
	;;
	extr r34 = r34, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L532
	fmpy f6 = f6, f6
	br .L535
	;;
.L532:
	br.ret.sptk.many b0
	;;
	.endp ldexpl#
	.align 16
	.align 64
	.global memxor#
	.type	memxor#, @function
	.proc memxor#
memxor:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L542
	add r34 = r33, r34
	mov r17 = r32
	;;
	sub r34 = r34, r33, 1
	;;
	mov ar.lc = r34
	.align 32
.L543:
	mov r14 = r17
	ld1 r15 = [r17]
	adds r17 = 1, r17
	ld1 r16 = [r33]
	adds r33 = 1, r33
	;;
	xor r15 = r16, r15
	;;
	st1 [r14] = r15
	br.cloop.sptk.few .L543
.L542:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memxor#
	.align 16
	.align 64
	.global strncat#
	.type	strncat#, @function
	.proc strncat#
strncat:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 4, 1, 0
	.save ar.lc, r38
	mov r38 = ar.lc
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r39 = r32
	;;
	br.call.sptk.many b0 = strlen#
	mov r1 = r37
	add r8 = r32, r8
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L555
	;;
	mov r14 = r8
	adds r15 = -1, r34
	;;
	mov ar.lc = r15
	.align 32
.L551:
	mov r8 = r14
	ld1 r15 = [r33], 1
	;;
	sxt1 r16 = r15
	st1 [r14] = r15, 1
	;;
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dpnt .L559
	adds r34 = -1, r34
	br.cloop.sptk.few .L551
	mov r8 = r14
	br .L555
	;;
.L559:
	cmp.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L553
.L555:
	st1 [r8] = r0
.L553:
	mov r8 = r32
	mov ar.pfs = r36
	mov ar.lc = r38
	mov b0 = r35
	br.ret.sptk.many b0
	;;
	.endp strncat#
	.align 16
	.align 64
	.global strnlen#
	.type	strnlen#, @function
	.proc strnlen#
strnlen:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r0
	cmp.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L560
	adds r33 = -1, r33
	;;
	mov ar.lc = r33
.L562:
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L568
.L560:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L568:
	adds r8 = 1, r8
	br.cloop.sptk.few .L562
	br .L560
	;;
	.endp strnlen#
	.align 16
	.align 64
	.global strpbrk#
	.type	strpbrk#, @function
	.proc strpbrk#
strpbrk:
	.prologue
	.body
	mov r8 = r32
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	;;
	mov r16 = r14
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L574
.L570:
	mov r15 = r33
	.align 32
.L573:
	;;
	ld1 r14 = [r15], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L577
	;;
	cmp4.eq p6, p7 = r16, r14
	(p7) br.cond.dptk .L573
.L571:
	br.ret.sptk.many b0
	;;
.L577:
	adds r8 = 1, r8
	;;
	ld1 r14 = [r8]
	;;
	sxt1 r14 = r14
	;;
	mov r16 = r14
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L570
.L574:
	mov r8 = r0
	br .L571
	;;
	.endp strpbrk#
	.align 16
	.align 64
	.global strrchr#
	.type	strrchr#, @function
	.proc strrchr#
strrchr:
	.prologue
	.body
	mov r8 = r0
	.align 32
.L580:
	mov r15 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = r33, r14
	;;
	(p6) mov r8 = r15
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L580
	br.ret.sptk.many b0
	;;
	.endp strrchr#
	.align 16
	.align 64
	.global strstr#
	.type	strstr#, @function
	.proc strstr#
strstr:
	.prologue 12, 36
	.save ar.pfs, r37
	alloc r37 = ar.pfs, 2, 5, 3, 0
	.save rp, r36
	mov r36 = b0
	mov r38 = r1
	.body
	mov r39 = r33
	;;
	br.call.sptk.many b0 = strlen#
	mov r1 = r38
	mov r34 = r8
	cmp.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L584
	ld1 r35 = [r33]
	;;
	sxt1 r35 = r35
	.align 32
.L586:
	;;
	mov r40 = r35
	mov r39 = r32
	br.call.sptk.many b0 = strchr#
	mov r1 = r38
	mov r32 = r8
	cmp.ne p6, p7 = 0, r8
	(p7) br.cond.dpnt .L584
	mov r41 = r34
	;;
	mov r40 = r33
	mov r39 = r32
	br.call.sptk.many b0 = strncmp#
	mov r1 = r38
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L584
	adds r32 = 1, r32
	br .L586
	;;
.L584:
	mov r8 = r32
	mov ar.pfs = r37
	mov b0 = r36
	br.ret.sptk.many b0
	;;
	.endp strstr#
	.align 16
	.align 64
	.global copysign#
	.type	copysign#, @function
	.proc copysign#
copysign:
	.prologue
	.body
	fcmp.lt p6, p7 = f8, f0
	;;
	(p6) br.cond.dpnt .L603
.L594:
	fcmp.gt p6, p7 = f8, f0
	;;
	(p7) br.cond.dpnt .L597
	fcmp.lt p6, p7 = f9, f0
	;;
	(p6) br.cond.dpnt .L596
.L597:
	br.ret.sptk.many b0
	;;
.L603:
	fcmp.gt p6, p7 = f9, f0
	;;
	(p7) br.cond.dptk .L594
.L596:
	fneg f8 = f8
	br .L597
	;;
	.endp copysign#
	.align 16
	.align 64
	.global memmem#
	.type	memmem#, @function
	.proc memmem#
memmem:
	.prologue 12, 39
	.save ar.pfs, r40
	alloc r40 = ar.pfs, 4, 6, 3, 0
	.save rp, r39
	mov r39 = b0
	mov r41 = r1
	.body
	cmp.eq p6, p7 = 0, r35
	;;
	(p6) mov r38 = r32
	(p6) br.cond.dpnt .L604
	cmp.gtu p6, p7 = r35, r33
	(p6) br.cond.dpnt .L610
	sub r33 = r33, r35
	;;
	add r33 = r32, r33
	;;
	cmp.ltu p6, p7 = r33, r32
	(p6) br.cond.dpnt .L610
	ld1 r37 = [r34], 1
	;;
	sxt1 r37 = r37
	adds r35 = -1, r35
	br .L607
	;;
.L606:
	cmp.geu p6, p7 = r33, r32
	(p7) br.cond.dpnt .L610
.L607:
	ld1 r14 = [r32]
	;;
	sxt1 r14 = r14
	mov r38 = r32
	adds r32 = 1, r32
	;;
	cmp4.ne p6, p7 = r37, r14
	(p6) br.cond.dptk .L606
	mov r44 = r35
	mov r43 = r34
	mov r42 = r32
	br.call.sptk.many b0 = memcmp#
	mov r1 = r41
	;;
	cmp4.eq p6, p7 = 0, r8
	(p7) br.cond.dptk .L606
	br .L604
	;;
.L610:
	mov r38 = r0
.L604:
	;;
	mov r8 = r38
	mov ar.pfs = r40
	mov b0 = r39
	br.ret.sptk.many b0
	;;
	.endp memmem#
	.align 16
	.align 64
	.global mempcpy#
	.type	mempcpy#, @function
	.proc mempcpy#
mempcpy:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 3, 3, 0
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r38 = r32
	mov r39 = r33
	mov r40 = r34
	;;
	br.call.sptk.many b0 = memcpy#
	mov r1 = r37
	add r8 = r32, r34
	;;
	mov ar.pfs = r36
	mov b0 = r35
	br.ret.sptk.many b0
	;;
	.endp mempcpy#
	.align 16
	.align 64
	.global frexp#
	.type	frexp#, @function
	.proc frexp#
frexp:
	.prologue
	.body
	fcmp.lt p6, p7 = f8, f0
	;;
	(p6) fneg f8 = f8
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	fcmp.ge p6, p7 = f8, f1
	;;
	(p7) br.cond.dpnt .L637
	mov r14 = r0
	movl r16 = 0x3fe0000000000000
	;;
	setf.d f6 = r16
	.align 32
.L623:
	adds r14 = 1, r14
	;;
	fmpy.d f8 = f8, f6
	;;
	fcmp.ge p6, p7 = f8, f1
	;;
	(p6) br.cond.dptk .L623
.L624:
	st4 [r33] = r14
	cmp4.eq p6, p7 = 0, r15
	;;
	(p7) fneg f8 = f8
	br.ret.sptk.many b0
	;;
.L637:
	fcmp.neq p6, p7 = f8, f0
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	movl r16 = 0x3fe0000000000000
	;;
	setf.d f6 = r16
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	and r14 = r16, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	mov r14 = r0
	(p6) br.cond.dptk .L624
	.align 32
.L625:
	;;
	adds r14 = -1, r14
	fadd.d f8 = f8, f8
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L625
	br .L624
	;;
	.endp frexp#
	.align 16
	.align 64
	.global __muldi3#
	.type	__muldi3#, @function
	.proc __muldi3#
__muldi3:
	.prologue
	.body
	mov r8 = r0
	cmp.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L639
	.align 32
.L641:
	extr r14 = r32, 0, 1
	;;
	and r14 = r33, r14
	;;
	add r8 = r8, r14
	shladd r33 = r33, 1, r0
	shr.u r32 = r32, 1
	;;
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L641
.L639:
	br.ret.sptk.many b0
	;;
	.endp __muldi3#
	.align 16
	.align 64
	.global udivmodsi4#
	.type	udivmodsi4#, @function
	.proc udivmodsi4#
udivmodsi4:
	.prologue
	.body
	addl r14 = 1, r0
	cmp4.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L654
	.align 32
.L646:
	;;
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L659
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
	;;
	cmp4.ltu p6, p7 = r33, r32
	cmp4.ne p8, p9 = 0, r14
	;;
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L646
	br .L647
	;;
.L659:
	cmp4.ne p8, p9 = 0, r14
.L647:
	.pred.rel.mutex p8, p9
	;;
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L649
.L654:
	;;
	mov r8 = r0
	.align 32
.L648:
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r8, r14
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L648
.L649:
	;;
	cmp.ne p6, p7 = 0, r34
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp udivmodsi4#
	.align 16
	.align 64
	.global __clrsbqi2#
	.type	__clrsbqi2#, @function
	.proc __clrsbqi2#
__clrsbqi2:
	.prologue
	.body
	sxt1 r15 = r32
	extr r14 = r32, 7, 1
	;;
	xor r32 = r32, r14
	;;
	sxt1 r32 = r32
	cmp4.eq p6, p7 = r15, r14
	;;
	(p7) dep.z r32 = r32, 8, 24
	;;
	(p7) addp4 r32 = r32, r0
	;;
	(p7) setf.sig f6 = r32
	;;
	(p7) fcvt.xuf f6 = f6
	;;
	(p7) getf.exp r8 = f6
	(p7) addl r14 = 65566, r0
	;;
	(p7) sub r8 = r14, r8, 1
	;;
	(p6) addl r8 = 7, r0
	br.ret.sptk.many b0
	;;
	.endp __clrsbqi2#
	.align 16
	.align 64
	.global __clrsbdi2#
	.type	__clrsbdi2#, @function
	.proc __clrsbdi2#
__clrsbdi2:
	.prologue
	.body
	shr r15 = r32, 63
	;;
	xor r14 = r15, r32
	cmp.eq p6, p7 = r15, r32
	;;
	(p7) setf.sig f7 = r14
	;;
	(p7) fcvt.xuf f6 = f7
	;;
	(p7) getf.exp r8 = f6
	(p7) addl r14 = 65598, r0
	;;
	(p7) sub r8 = r14, r8, 1
	;;
	(p6) addl r8 = 63, r0
	br.ret.sptk.many b0
	;;
	.endp __clrsbdi2#
	.align 16
	.align 64
	.global __mulsi3#
	.type	__mulsi3#, @function
	.proc __mulsi3#
__mulsi3:
	.prologue
	.body
	mov r8 = r0
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L668
	.align 32
.L670:
	extr r14 = r32, 0, 1
	;;
	and r14 = r33, r14
	;;
	add r8 = r8, r14
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L670
.L668:
	br.ret.sptk.many b0
	;;
	.endp __mulsi3#
	.align 16
	.align 64
	.global __cmovd#
	.type	__cmovd#, @function
	.proc __cmovd#
__cmovd:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	extr.u r16 = r34, 3, 29
	and r17 = -8, r34
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L675
	addp4 r14 = r34, r0
	;;
	add r14 = r33, r14
	;;
	cmp.ltu p6, p7 = r14, r32
	(p6) br.cond.dptk .L675
	adds r14 = -1, r34
	;;
	cmp4.ne p6, p7 = 0, r34
	;;
	(p6) addp4 r14 = r14, r0
	;;
	(p6) add r33 = r33, r14
	(p6) add r32 = r32, r14
	(p6) mov ar.lc = r14
	(p7) br.cond.dpnt .L674
	.align 32
.L681:
	;;
	ld1 r14 = [r33], -1
	;;
	st1 [r32] = r14, -1
	br.cloop.sptk.few .L681
	br .L674
	;;
.L675:
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dpnt .L678
	mov r15 = r33
	mov r14 = r32
	addp4 r16 = r16, r0
	;;
	shladd r16 = r16, 3, r0
	;;
	adds r16 = -8, r16
	;;
	shr.u r16 = r16, 3
	;;
	mov ar.lc = r16
	.align 32
.L679:
	ld8 r16 = [r15], 8
	;;
	st8 [r14] = r16, 8
	br.cloop.sptk.few .L679
.L678:
	cmp4.geu p6, p7 = r17, r34
	(p6) br.cond.dpnt .L674
	addp4 r15 = r17, r0
	;;
	add r14 = r33, r15
	add r32 = r32, r15
	add r33 = r33, r15, 1
	sub r17 = r34, r17, 1
	;;
	addp4 r17 = r17, r0
	;;
	add r33 = r33, r17
	;;
	sub r33 = r33, r14, 1
	;;
	mov ar.lc = r33
	.align 32
.L680:
	ld1 r15 = [r14], 1
	;;
	st1 [r32] = r15, 1
	br.cloop.sptk.few .L680
.L674:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __cmovd#
	.align 16
	.align 64
	.global __cmovh#
	.type	__cmovh#, @function
	.proc __cmovh#
__cmovh:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	extr.u r16 = r34, 1, 31
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L690
	addp4 r14 = r34, r0
	;;
	add r14 = r33, r14
	;;
	cmp.ltu p6, p7 = r14, r32
	(p6) br.cond.dptk .L690
	adds r16 = -1, r34
	;;
	cmp4.ne p6, p7 = 0, r34
	;;
	(p6) addp4 r16 = r16, r0
	;;
	(p6) add r33 = r33, r16
	(p6) add r32 = r32, r16
	(p6) mov ar.lc = r16
	(p7) br.cond.dpnt .L689
	.align 32
.L695:
	;;
	ld1 r16 = [r33], -1
	;;
	st1 [r32] = r16, -1
	br.cloop.sptk.few .L695
	br .L689
	;;
.L690:
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dpnt .L693
	mov r15 = r33
	mov r14 = r32
	addp4 r16 = r16, r0
	;;
	shladd r16 = r16, 1, r0
	;;
	adds r16 = -2, r16
	;;
	shr.u r16 = r16, 1
	;;
	mov ar.lc = r16
	.align 32
.L694:
	ld2 r16 = [r15], 2
	;;
	st2 [r14] = r16, 2
	br.cloop.sptk.few .L694
.L693:
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L689
	adds r34 = -1, r34
	;;
	addp4 r34 = r34, r0
	;;
	add r33 = r33, r34
	;;
	ld1 r15 = [r33]
	add r32 = r32, r34
	;;
	st1 [r32] = r15
.L689:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __cmovh#
	.align 16
	.align 64
	.global __cmovw#
	.type	__cmovw#, @function
	.proc __cmovw#
__cmovw:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	extr.u r16 = r34, 2, 30
	and r17 = -4, r34
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L703
	addp4 r14 = r34, r0
	;;
	add r14 = r33, r14
	;;
	cmp.ltu p6, p7 = r14, r32
	(p6) br.cond.dptk .L703
	adds r14 = -1, r34
	;;
	cmp4.ne p6, p7 = 0, r34
	;;
	(p6) addp4 r14 = r14, r0
	;;
	(p6) add r33 = r33, r14
	(p6) add r32 = r32, r14
	(p6) mov ar.lc = r14
	(p7) br.cond.dpnt .L702
	.align 32
.L709:
	;;
	ld1 r14 = [r33], -1
	;;
	st1 [r32] = r14, -1
	br.cloop.sptk.few .L709
	br .L702
	;;
.L703:
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dpnt .L706
	mov r15 = r33
	mov r14 = r32
	addp4 r16 = r16, r0
	;;
	shladd r16 = r16, 2, r0
	;;
	adds r16 = -4, r16
	;;
	shr.u r16 = r16, 2
	;;
	mov ar.lc = r16
	.align 32
.L707:
	ld4 r16 = [r15], 4
	;;
	st4 [r14] = r16, 4
	br.cloop.sptk.few .L707
.L706:
	cmp4.geu p6, p7 = r17, r34
	(p6) br.cond.dpnt .L702
	addp4 r15 = r17, r0
	;;
	add r14 = r33, r15
	add r32 = r32, r15
	add r33 = r33, r15, 1
	sub r17 = r34, r17, 1
	;;
	addp4 r17 = r17, r0
	;;
	add r33 = r33, r17
	;;
	sub r33 = r33, r14, 1
	;;
	mov ar.lc = r33
	.align 32
.L708:
	ld1 r15 = [r14], 1
	;;
	st1 [r32] = r15, 1
	br.cloop.sptk.few .L708
.L702:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __cmovw#
	.align 16
	.align 64
	.global __modi#
	.type	__modi#, @function
	.proc __modi#
__modi:
	.prologue 12, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 3, 2, 0
	.save rp, r34
	mov r34 = b0
	mov r36 = r1
	.body
	sxt4 r38 = r33
	sxt4 r37 = r32
	;;
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r36
	;;
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp __modi#
	.align 16
	.align 64
	.global __uitod#
	.type	__uitod#, @function
	.proc __uitod#
__uitod:
	.prologue
	.body
	addp4 r32 = r32, r0
	;;
	setf.sig f8 = r32
	;;
	fcvt.xuf.d f8 = f8
	br.ret.sptk.many b0
	;;
	.endp __uitod#
	.align 16
	.align 64
	.global __uitof#
	.type	__uitof#, @function
	.proc __uitof#
__uitof:
	.prologue
	.body
	addp4 r32 = r32, r0
	;;
	setf.sig f8 = r32
	;;
	fcvt.xuf.s f8 = f8
	br.ret.sptk.many b0
	;;
	.endp __uitof#
	.align 16
	.align 64
	.global __ulltod#
	.type	__ulltod#, @function
	.proc __ulltod#
__ulltod:
	.prologue
	.body
	setf.sig f6 = r32
	;;
	fcvt.xuf.d f8 = f6
	br.ret.sptk.many b0
	;;
	.endp __ulltod#
	.align 16
	.align 64
	.global __ulltof#
	.type	__ulltof#, @function
	.proc __ulltof#
__ulltof:
	.prologue
	.body
	setf.sig f6 = r32
	;;
	fcvt.xuf.s f8 = f6
	br.ret.sptk.many b0
	;;
	.endp __ulltof#
	.align 16
	.align 64
	.global __umodi#
	.type	__umodi#, @function
	.proc __umodi#
__umodi:
	.prologue 12, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 3, 2, 0
	.save rp, r34
	mov r34 = b0
	mov r36 = r1
	.body
	addp4 r38 = r33, r0
	addp4 r37 = r32, r0
	;;
	br.call.sptk.many b0 = __umoddi3#
	mov r1 = r36
	;;
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp __umodi#
	.align 16
	.align 64
	.global __clzhi2#
	.type	__clzhi2#, @function
	.proc __clzhi2#
__clzhi2:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r0
	zxt2 r32 = r32
	mov ar.lc = 15
	.align 32
.L731:
	;;
	sub r14 = 15, r8
	;;
	addp4 r14 = r14, r0
	;;
	shr r14 = r32, r14
	;;
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dpnt .L729
	adds r8 = 1, r8
	br.cloop.sptk.few .L731
.L729:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __clzhi2#
	.align 16
	.align 64
	.global __ctzhi2#
	.type	__ctzhi2#, @function
	.proc __ctzhi2#
__ctzhi2:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r0
	zxt2 r32 = r32
	mov ar.lc = 15
	.align 32
.L736:
	;;
	addp4 r14 = r8, r0
	;;
	shr r14 = r32, r14
	;;
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dpnt .L734
	adds r8 = 1, r8
	br.cloop.sptk.few .L736
.L734:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __ctzhi2#
	.align 16
	.align 64
	.global __fixunssfsi#
	.type	__fixunssfsi#, @function
	.proc __fixunssfsi#
__fixunssfsi:
	.prologue
	.body
	movl r2 = 0x47000000
	;;
	setf.s f6 = r2
	;;
	fcmp.ge p6, p7 = f8, f6
	;;
	(p6) fsub.s f8 = f8, f6
	;;
	(p6) fcvt.fx.trunc f8 = f8
	;;
	(p6) getf.sig r2 = f8
	;;
	(p6) addl r8 = 32768, r2
	(p7) fcvt.fx.trunc f8 = f8
	;;
	(p7) getf.sig r8 = f8
	br.ret.sptk.many b0
	;;
	.endp __fixunssfsi#
	.align 16
	.align 64
	.global __parityhi2#
	.type	__parityhi2#, @function
	.proc __parityhi2#
__parityhi2:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r0
	mov r15 = r0
	zxt2 r32 = r32
	mov ar.lc = 15
	.align 32
.L747:
	;;
	addp4 r14 = r15, r0
	;;
	shr r14 = r32, r14
	;;
	and r14 = 1, r14
	;;
	add r8 = r8, r14
	adds r15 = 1, r15
	br.cloop.sptk.few .L747
	;;
	and r8 = 1, r8
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __parityhi2#
	.align 16
	.align 64
	.global __popcounthi2#
	.type	__popcounthi2#, @function
	.proc __popcounthi2#
__popcounthi2:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r0
	mov r15 = r0
	zxt2 r32 = r32
	mov ar.lc = 15
	.align 32
.L751:
	;;
	addp4 r14 = r15, r0
	;;
	shr r14 = r32, r14
	;;
	and r14 = 1, r14
	;;
	add r8 = r8, r14
	adds r15 = 1, r15
	br.cloop.sptk.few .L751
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __popcounthi2#
	.align 16
	.align 64
	.global __mulsi3_iq2000#
	.type	__mulsi3_iq2000#, @function
	.proc __mulsi3_iq2000#
__mulsi3_iq2000:
	.prologue
	.body
	mov r8 = r0
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L754
	.align 32
.L756:
	extr r14 = r32, 0, 1
	;;
	and r14 = r33, r14
	;;
	add r8 = r8, r14
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L756
.L754:
	br.ret.sptk.many b0
	;;
	.endp __mulsi3_iq2000#
	.align 16
	.align 64
	.global __mulsi3_lm32#
	.type	__mulsi3_lm32#, @function
	.proc __mulsi3_lm32#
__mulsi3_lm32:
	.prologue
	.body
	mov r8 = r0
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L760
	;;
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L760
	.align 32
.L762:
	extr r14 = r33, 0, 1
	;;
	and r14 = r32, r14
	;;
	add r8 = r8, r14
	shladd r32 = r32, 1, r0
	extr.u r33 = r33, 1, 31
	;;
	cmp4.ne p6, p7 = 0, r33
	(p6) br.cond.dptk .L762
.L760:
	br.ret.sptk.many b0
	;;
	.endp __mulsi3_lm32#
	.align 16
	.align 64
	.global __udivmodsi4#
	.type	__udivmodsi4#, @function
	.proc __udivmodsi4#
__udivmodsi4:
	.prologue
	.body
	addl r14 = 1, r0
	cmp4.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L776
	.align 32
.L768:
	;;
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L781
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
	;;
	cmp4.ltu p6, p7 = r33, r32
	cmp4.ne p8, p9 = 0, r14
	;;
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L768
	br .L769
	;;
.L781:
	cmp4.ne p8, p9 = 0, r14
.L769:
	.pred.rel.mutex p8, p9
	;;
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L771
.L776:
	;;
	mov r8 = r0
	.align 32
.L770:
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r8, r14
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L770
.L771:
	;;
	cmp4.ne p6, p7 = 0, r34
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp __udivmodsi4#
	.align 16
	.align 64
	.global __mspabi_cmpf#
	.type	__mspabi_cmpf#, @function
	.proc __mspabi_cmpf#
__mspabi_cmpf:
	.prologue
	.body
	fcmp.lt p6, p7 = f8, f9
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dpnt .L782
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L782:
	br.ret.sptk.many b0
	;;
	.endp __mspabi_cmpf#
	.align 16
	.align 64
	.global __mspabi_cmpd#
	.type	__mspabi_cmpd#, @function
	.proc __mspabi_cmpd#
__mspabi_cmpd:
	.prologue
	.body
	fcmp.lt p6, p7 = f8, f9
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dpnt .L786
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L786:
	br.ret.sptk.many b0
	;;
	.endp __mspabi_cmpd#
	.align 16
	.align 64
	.global __mspabi_mpysll#
	.type	__mspabi_mpysll#, @function
	.proc __mspabi_mpysll#
__mspabi_mpysll:
	.prologue
	.body
	setf.sig f6 = r32
	setf.sig f7 = r33
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r8 = f6
	br.ret.sptk.many b0
	;;
	.endp __mspabi_mpysll#
	.align 16
	.align 64
	.global __mspabi_mpyull#
	.type	__mspabi_mpyull#, @function
	.proc __mspabi_mpyull#
__mspabi_mpyull:
	.prologue
	.body
	setf.sig f6 = r32
	setf.sig f7 = r33
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r8 = f6
	br.ret.sptk.many b0
	;;
	.endp __mspabi_mpyull#
	.align 16
	.align 64
	.global __mulhi3#
	.type	__mulhi3#, @function
	.proc __mulhi3#
__mulhi3:
	.prologue
	.body
	cmp4.le p6, p7 = r0, r33
	;;
	(p7) sub r33 = r0, r33
	(p7) addl r16 = 1, r0
	;;
	(p6) mov r16 = r0
	cmp4.eq p6, p7 = 0, r33
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L796
	addl r14 = 1, r0
	;;
	mov r8 = r0
	.align 32
.L797:
	extr r15 = r33, 0, 1
	;;
	and r15 = r32, r15
	;;
	add r8 = r8, r15
	shladd r32 = r32, 1, r0
	extr r33 = r33, 1, 31
	cmp4.geu p6, p7 = 31, r14
	adds r14 = 1, r14
	;;
	zxt1 r14 = r14
	cmp4.ne.and.orcm p6, p7 = 0, r33
	(p6) br.cond.dptk .L797
.L796:
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
	;;
	.endp __mulhi3#
	.align 16
	.align 64
	.global __divsi3#
	.type	__divsi3#, @function
	.proc __divsi3#
__divsi3:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 3, 0
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r38 = r32
	mov r39 = r33
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r38 = r0, r32
	(p7) addl r34 = 1, r0
	;;
	(p6) mov r34 = r0
	cmp.le p6, p7 = r0, r33
	;;
	(p7) sub r39 = r0, r33
	(p7) xor r34 = 1, r34
	mov r40 = r0
	br.call.sptk.many b0 = __udivmodsi4#
	mov r1 = r37
	addp4 r8 = r8, r0
	;;
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) sub r8 = r0, r8
	mov ar.pfs = r36
	mov b0 = r35
	br.ret.sptk.many b0
	;;
	.endp __divsi3#
	.align 16
	.align 64
	.global __modsi3#
	.type	__modsi3#, @function
	.proc __modsi3#
__modsi3:
	.prologue 12, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 3, 0
	.save rp, r35
	mov r35 = b0
	mov r37 = r1
	.body
	mov r38 = r32
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r38 = r0, r32
	(p7) addl r34 = 1, r0
	;;
	(p6) mov r34 = r0
	cmp.le p6, p7 = r0, r33
	;;
	(p7) sub r39 = r0, r33
	;;
	(p6) mov r39 = r33
	addl r40 = 1, r0
	br.call.sptk.many b0 = __udivmodsi4#
	mov r1 = r37
	addp4 r8 = r8, r0
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) sub r8 = r0, r8
	mov ar.pfs = r36
	mov b0 = r35
	br.ret.sptk.many b0
	;;
	.endp __modsi3#
	.align 16
	.align 64
	.global __udivmodhi4#
	.type	__udivmodhi4#, @function
	.proc __udivmodhi4#
__udivmodhi4:
	.prologue
	.body
	zxt2 r32 = r32
	;;
	mov r8 = r32
	zxt2 r33 = r33
	;;
	mov r14 = r33
	addl r15 = 1, r0
	cmp4.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L832
	.align 32
.L824:
	;;
	sxt2 r16 = r14
	;;
	cmp4.le p6, p7 = r0, r16
	(p7) br.cond.dpnt .L825
	shladd r14 = r14, 1, r0
	;;
	zxt2 r17 = r14
	;;
	mov r14 = r17
	shladd r15 = r15, 1, r0
	;;
	zxt2 r16 = r15
	;;
	mov r15 = r16
	cmp4.ltu p6, p7 = r17, r8
	;;
	cmp.ne.and.orcm p6, p7 = 0, r16
	(p6) br.cond.dptk .L824
.L825:
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	(p7) mov r17 = r0
	(p7) br.cond.dpnt .L827
.L832:
	;;
	mov r17 = r0
	.align 32
.L826:
	cmp4.gtu p6, p7 = r14, r8
	;;
	(p7) sub r8 = r8, r14
	;;
	(p7) zxt2 r8 = r8
	(p7) or r17 = r15, r17
	extr.u r16 = r15, 1, 15
	;;
	mov r15 = r16
	extr.u r14 = r14, 1, 15
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L826
.L827:
	;;
	cmp4.ne p6, p7 = 0, r34
	;;
	(p7) mov r8 = r17
	br.ret.sptk.many b0
	;;
	.endp __udivmodhi4#
	.align 16
	.align 64
	.global __udivmodsi4_libgcc#
	.type	__udivmodsi4_libgcc#, @function
	.proc __udivmodsi4_libgcc#
__udivmodsi4_libgcc:
	.prologue
	.body
	addl r14 = 1, r0
	cmp.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L845
	.align 32
.L837:
	;;
	tbit.z p6, p7 = r33, 31
	(p7) br.cond.dpnt .L850
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
	;;
	cmp.ltu p6, p7 = r33, r32
	cmp.ne p8, p9 = 0, r14
	;;
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L837
	br .L838
	;;
.L850:
	cmp.ne p8, p9 = 0, r14
.L838:
	.pred.rel.mutex p8, p9
	;;
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L840
.L845:
	;;
	mov r8 = r0
	.align 32
.L839:
	cmp.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r14, r8
	shr.u r14 = r14, 1
	shr.u r33 = r33, 1
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L839
.L840:
	;;
	cmp4.ne p6, p7 = 0, r34
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp __udivmodsi4_libgcc#
	.align 16
	.align 64
	.global __ashldi3#
	.type	__ashldi3#, @function
	.proc __ashldi3#
__ashldi3:
	.prologue
	.body
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L852
	adds r33 = -32, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r32 = r32, r33
	mov r14 = r0
.L853:
	mov r8 = r0
	;;
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
	;;
	mix4.r r8 = r32, r8
.L851:
	br.ret.sptk.many b0
	;;
.L852:
	cmp4.eq p6, p7 = 0, r33
	;;
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L851
	addp4 r16 = r33, r0
	;;
	shl r14 = r32, r16
	sub r33 = 32, r33
	addp4 r15 = r32, r0
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r15 = r15, r33
	extr r32 = r32, 32, 32
	;;
	shl r32 = r32, r16
	;;
	or r32 = r32, r15
	br .L853
	;;
	.endp __ashldi3#
	.align 16
	.align 64
	.global __ashlti3#
	.type	__ashlti3#, @function
	.proc __ashlti3#
__ashlti3:
	.prologue
	.body
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L858
	adds r34 = -64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shl r9 = r32, r34
	mov r8 = r0
.L860:
	br.ret.sptk.many b0
	;;
.L858:
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) addp4 r9 = r34, r0
	;;
	(p7) shl r8 = r32, r9
	(p7) sub r34 = 64, r34
	;;
	(p7) addp4 r34 = r34, r0
	;;
	(p7) shr.u r32 = r32, r34
	(p7) shl r9 = r33, r9
	;;
	(p7) or r9 = r9, r32
	(p6) mov r8 = r32
	;;
	(p6) mov r9 = r33
	br .L860
	;;
	.endp __ashlti3#
	.align 16
	.align 64
	.global __ashrdi3#
	.type	__ashrdi3#, @function
	.proc __ashrdi3#
__ashrdi3:
	.prologue
	.body
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L864
	shr r14 = r32, 63
	adds r33 = -32, r33
	shr r32 = r32, 32
	;;
	addp4 r33 = r33, r0
	;;
	shr r33 = r32, r33
.L865:
	mov r8 = r0
	;;
	mix4.r r8 = r14, r8
	shl r33 = r33, 32
	;;
	mix4.l r8 = r8, r33
.L863:
	br.ret.sptk.many b0
	;;
.L864:
	cmp4.eq p6, p7 = 0, r33
	;;
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L863
	extr r15 = r32, 32, 32
	shr r14 = r32, 32
	addp4 r16 = r33, r0
	;;
	shr r14 = r14, r16
	sub r33 = 32, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r33 = r15, r33
	addp4 r32 = r32, r0
	;;
	shr.u r32 = r32, r16
	;;
	or r33 = r33, r32
	br .L865
	;;
	.endp __ashrdi3#
	.align 16
	.align 64
	.global __ashrti3#
	.type	__ashrti3#, @function
	.proc __ashrti3#
__ashrti3:
	.prologue
	.body
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L870
	shr r9 = r33, 63
	adds r34 = -64, r34
	;;
	sxt4 r8 = r34
	;;
	shr r8 = r33, r8
.L872:
	br.ret.sptk.many b0
	;;
.L870:
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) sxt4 r9 = r34
	;;
	(p7) shr r9 = r33, r9
	(p7) sub r14 = 64, r34
	;;
	(p7) addp4 r14 = r14, r0
	;;
	(p7) shl r33 = r33, r14
	(p7) addp4 r34 = r34, r0
	;;
	(p7) shr.u r8 = r32, r34
	;;
	(p7) or r8 = r8, r33
	;;
	(p6) mov r8 = r32
	(p6) mov r9 = r33
	br .L872
	;;
	.endp __ashrti3#
	.align 16
	.align 64
	.global __bswapdi2#
	.type	__bswapdi2#, @function
	.proc __bswapdi2#
__bswapdi2:
	.prologue
	.body
	mux1 r8 = r32, @rev
	br.ret.sptk.many b0
	;;
	.endp __bswapdi2#
	.align 16
	.align 64
	.global __bswapsi2#
	.type	__bswapsi2#, @function
	.proc __bswapsi2#
__bswapsi2:
	.prologue
	.body
	extr.u r8 = r32, 24, 8
	dep.z r14 = r32, 24, 8
	;;
	or r8 = r14, r8
	extr.u r14 = r32, 8, 24
	addl r15 = 65280, r0
	;;
	and r14 = r15, r14
	;;
	or r8 = r14, r8
	dep.z r32 = r32, 8, 24
	movl r14 = 16711680
	;;
	and r32 = r14, r32
	;;
	or r8 = r32, r8
	br.ret.sptk.many b0
	;;
	.endp __bswapsi2#
	.align 16
	.align 64
	.global __clzsi2#
	.type	__clzsi2#, @function
	.proc __clzsi2#
__clzsi2:
	.prologue
	.body
	addl r14 = 65535, r0
	;;
	cmp4.geu p6, p7 = r14, r32
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	shladd r16 = r16, 4, r0
	;;
	sub r15 = 16, r16
	addp4 r14 = r32, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	addl r15 = 65280, r0
	;;
	and r15 = r15, r14
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r15 = r15, 3, r0
	;;
	sub r17 = 8, r15
	addp4 r14 = r14, r0
	;;
	addp4 r17 = r17, r0
	;;
	shr.u r14 = r14, r17
	add r16 = r15, r16
	addl r15 = 240, r0
	;;
	and r15 = r15, r14
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r15 = r15, 2, r0
	;;
	sub r17 = 4, r15
	addp4 r14 = r14, r0
	;;
	addp4 r17 = r17, r0
	;;
	shr.u r14 = r14, r17
	add r16 = r15, r16
	;;
	and r15 = 12, r14
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r15 = r15, 1, r0
	;;
	sub r17 = 2, r15
	addp4 r14 = r14, r0
	;;
	addp4 r17 = r17, r0
	;;
	shr.u r14 = r14, r17
	;;
	mov r8 = r14
	extr.u r14 = r14, 1, 1
	;;
	xor r14 = 1, r14
	;;
	tbit.z p6, p7 = r14, 0
	;;
	(p7) sub r8 = 2, r8
	;;
	(p6) mov r8 = r0
	add r15 = r15, r16
	;;
	add r8 = r8, r15
	br.ret.sptk.many b0
	;;
	.endp __clzsi2#
	.align 16
	.align 64
	.global __clzti2#
	.type	__clzti2#, @function
	.proc __clzti2#
__clzti2:
	.prologue
	.body
	cmp.eq p6, p7 = 0, r33
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	adds r14 = -1, r15
	;;
	and r33 = r33, r14
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) mov r32 = r0
	;;
	or r32 = r32, r33
	;;
	setf.sig f6 = r32
	;;
	fcvt.xuf f6 = f6
	;;
	getf.exp r14 = f6
	addl r8 = 65598, r0
	;;
	sub r8 = r8, r14
	dep.z r15 = r15, 6, 26
	;;
	add r8 = r15, r8
	br.ret.sptk.many b0
	;;
	.endp __clzti2#
	.align 16
	.align 64
	.global __cmpdi2#
	.type	__cmpdi2#, @function
	.proc __cmpdi2#
__cmpdi2:
	.prologue
	.body
	extr r15 = r32, 32, 32
	extr r14 = r33, 32, 32
	;;
	cmp4.gt p6, p7 = r14, r15
	(p6) br.cond.dpnt .L891
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L887
	cmp4.gtu p6, p7 = r33, r32
	(p6) br.cond.dpnt .L891
	;;
	cmp4.ltu p6, p7 = r33, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
	br .L887
	;;
.L891:
	mov r8 = r0
.L887:
	br.ret.sptk.many b0
	;;
	.endp __cmpdi2#
	.align 16
	.align 64
	.global __aeabi_lcmp#
	.type	__aeabi_lcmp#, @function
	.proc __aeabi_lcmp#
__aeabi_lcmp:
	.prologue 12, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 3, 2, 0
	.save rp, r34
	mov r34 = b0
	mov r36 = r1
	.body
	mov r37 = r32
	mov r38 = r33
	;;
	br.call.sptk.many b0 = __cmpdi2#
	mov r1 = r36
	adds r8 = -1, r8
	;;
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp __aeabi_lcmp#
	.align 16
	.align 64
	.global __cmpti2#
	.type	__cmpti2#, @function
	.proc __cmpti2#
__cmpti2:
	.prologue
	.body
	cmp.gt p6, p7 = r35, r33
	(p6) br.cond.dpnt .L900
	;;
	cmp.lt p6, p7 = r35, r33
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L896
	cmp.gtu p6, p7 = r34, r32
	(p6) br.cond.dpnt .L900
	;;
	cmp.ltu p6, p7 = r34, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
	br .L896
	;;
.L900:
	mov r8 = r0
.L896:
	br.ret.sptk.many b0
	;;
	.endp __cmpti2#
	.align 16
	.align 64
	.global __ctzsi2#
	.type	__ctzsi2#, @function
	.proc __ctzsi2#
__ctzsi2:
	.prologue
	.body
	zxt2 r14 = r32
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r16 = r15, 4, r0
	addp4 r14 = r32, r0
	shladd r15 = r15, 4, r0
	;;
	shr.u r14 = r14, r15
	;;
	zxt1 r15 = r14
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r17 = r15, 3, r0
	addp4 r14 = r14, r0
	shladd r15 = r15, 3, r0
	;;
	shr.u r14 = r14, r15
	add r17 = r17, r16
	;;
	and r15 = 15, r14
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r16 = r15, 2, r0
	addp4 r14 = r14, r0
	shladd r15 = r15, 2, r0
	;;
	shr.u r14 = r14, r15
	add r16 = r16, r17
	;;
	and r15 = 3, r14
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r8 = r15, 1, r0
	addp4 r14 = r14, r0
	shladd r15 = r15, 1, r0
	;;
	shr.u r14 = r14, r15
	;;
	andcm r15 = 1, r14
	extr.u r14 = r14, 1, 1
	;;
	sub r14 = 2, r14
	sub r15 = r0, r15
	;;
	and r14 = r14, r15
	add r8 = r8, r16
	;;
	add r8 = r8, r14
	br.ret.sptk.many b0
	;;
	.endp __ctzsi2#
	.align 16
	.align 64
	.global __ctzti2#
	.type	__ctzti2#, @function
	.proc __ctzti2#
__ctzti2:
	.prologue
	.body
	cmp.eq p6, p7 = 0, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	(p7) mov r33 = r0
	;;
	adds r14 = -1, r8
	;;
	and r32 = r32, r14
	;;
	or r32 = r32, r33
	;;
	adds r14 = -1, r32
	;;
	andcm r32 = r14, r32
	;;
	popcnt r32 = r32
	dep.z r8 = r8, 6, 26
	;;
	add r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp __ctzti2#
	.align 16
	.align 64
	.global __ffsti2#
	.type	__ffsti2#, @function
	.proc __ffsti2#
__ffsti2:
	.prologue
	.body
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L910
	;;
	cmp.eq p6, p7 = 0, r33
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dptk .L909
	adds r14 = -1, r33
	;;
	andcm r33 = r14, r33
	;;
	popcnt r33 = r33
	;;
	adds r8 = 65, r33
	br .L909
	;;
.L910:
	adds r8 = -1, r32
	;;
	andcm r8 = r8, r32
	;;
	popcnt r8 = r8
	;;
	adds r8 = 1, r8
.L909:
	br.ret.sptk.many b0
	;;
	.endp __ffsti2#
	.align 16
	.align 64
	.global __lshrdi3#
	.type	__lshrdi3#, @function
	.proc __lshrdi3#
__lshrdi3:
	.prologue
	.body
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L915
	adds r33 = -32, r33
	shr.u r32 = r32, 32
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r33 = r32, r33
	mov r14 = r0
.L916:
	mov r8 = r0
	;;
	mix4.r r8 = r14, r8
	shl r33 = r33, 32
	;;
	mix4.l r8 = r8, r33
.L914:
	br.ret.sptk.many b0
	;;
.L915:
	cmp4.eq p6, p7 = 0, r33
	;;
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L914
	extr.u r15 = r32, 32, 32
	shr.u r14 = r32, 32
	addp4 r16 = r33, r0
	;;
	shr.u r14 = r14, r16
	sub r33 = 32, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r33 = r15, r33
	addp4 r32 = r32, r0
	;;
	shr.u r32 = r32, r16
	;;
	or r33 = r33, r32
	br .L916
	;;
	.endp __lshrdi3#
	.align 16
	.align 64
	.global __lshrti3#
	.type	__lshrti3#, @function
	.proc __lshrti3#
__lshrti3:
	.prologue
	.body
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L921
	adds r34 = -64, r34
	;;
	addp4 r8 = r34, r0
	;;
	shr.u r8 = r33, r8
	mov r9 = r0
.L923:
	br.ret.sptk.many b0
	;;
.L921:
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) addp4 r8 = r34, r0
	;;
	(p7) shr.u r9 = r33, r8
	(p7) sub r34 = 64, r34
	;;
	(p7) addp4 r34 = r34, r0
	;;
	(p7) shl r33 = r33, r34
	(p7) shr.u r8 = r32, r8
	;;
	(p7) or r8 = r8, r33
	;;
	(p6) mov r8 = r32
	(p6) mov r9 = r33
	br .L923
	;;
	.endp __lshrti3#
	.align 16
	.align 64
	.global __muldsi3#
	.type	__muldsi3#, @function
	.proc __muldsi3#
__muldsi3:
	.prologue
	.body
	addl r17 = 65535, r0
	;;
	and r14 = r17, r32
	;;
	setf.sig f7 = r14
	and r14 = r17, r33
	;;
	setf.sig f8 = r14
	;;
	xmpy.l f6 = f8, f7
	;;
	getf.sig r14 = f6
	;;
	extr.u r15 = r14, 16, 16
	extr.u r32 = r32, 16, 16
	;;
	setf.sig f6 = r32
	setf.sig f9 = r15
	;;
	xma.l f9 = f6, f8, f9
	;;
	getf.sig r15 = f9
	and r14 = r17, r14
	;;
	dep.z r16 = r15, 16, 16
	;;
	add r16 = r16, r14
	;;
	extr.u r14 = r16, 16, 16
	extr.u r33 = r33, 16, 16
	;;
	setf.sig f8 = r33
	setf.sig f9 = r14
	;;
	xma.l f9 = f8, f7, f9
	;;
	getf.sig r14 = f9
	and r16 = r17, r16
	;;
	dep.z r17 = r14, 16, 16
	;;
	add r16 = r17, r16
	mov r8 = r0
	;;
	shl r16 = r16, 32
	;;
	mix4.l r8 = r8, r16
	extr.u r15 = r15, 16, 16
	;;
	setf.sig f7 = r15
	;;
	xma.l f7 = f6, f8, f7
	;;
	getf.sig r32 = f7
	extr.u r14 = r14, 16, 16
	;;
	add r32 = r32, r14
	;;
	mix4.r r8 = r32, r8
	br.ret.sptk.many b0
	;;
	.endp __muldsi3#
	.align 16
	.align 64
	.global __muldi3_compiler_rt#
	.type	__muldi3_compiler_rt#, @function
	.proc __muldi3_compiler_rt#
__muldi3_compiler_rt:
	.prologue 12, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 3, 2, 0
	.save rp, r34
	mov r34 = b0
	mov r36 = r1
	.body
	mov r38 = r33
	mov r37 = r32
	;;
	br.call.sptk.many b0 = __muldsi3#
	mov r1 = r36
	extr r14 = r32, 32, 32
	extr r15 = r33, 32, 32
	;;
	setf.sig f6 = r15
	setf.sig f7 = r32
	;;
	xmpy.l f6 = f6, f7
	setf.sig f8 = r14
	setf.sig f7 = r33
	;;
	xma.l f8 = f8, f7, f6
	;;
	getf.sig r14 = f8
	extr r15 = r8, 32, 32
	;;
	add r14 = r14, r15
	;;
	mix4.r r8 = r14, r8
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp __muldi3_compiler_rt#
	.align 16
	.align 64
	.global __mulddi3#
	.type	__mulddi3#, @function
	.proc __mulddi3#
__mulddi3:
	.prologue
	.body
	addp4 r16 = 4294967295 - 0x100000000, r0
	;;
	and r14 = r16, r32
	;;
	setf.sig f7 = r14
	and r14 = r16, r33
	;;
	setf.sig f8 = r14
	;;
	xmpy.l f6 = f7, f8
	;;
	getf.sig r14 = f6
	;;
	shr.u r15 = r14, 32
	shr.u r32 = r32, 32
	;;
	setf.sig f6 = r32
	setf.sig f9 = r15
	;;
	xma.l f9 = f8, f6, f9
	;;
	getf.sig r15 = f9
	and r14 = r16, r14
	;;
	shl r17 = r15, 32
	;;
	add r14 = r14, r17
	shr.u r17 = r17, 32
	shr.u r33 = r33, 32
	;;
	setf.sig f8 = r33
	setf.sig f9 = r17
	;;
	xma.l f9 = f7, f8, f9
	;;
	getf.sig r9 = f9
	and r14 = r16, r14
	;;
	shl r8 = r9, 32
	shr.u r15 = r15, 32
	;;
	setf.sig f7 = r15
	;;
	xma.l f7 = f6, f8, f7
	;;
	getf.sig r15 = f7
	shr.u r9 = r9, 32
	add r8 = r14, r8
	;;
	add r9 = r15, r9
	br.ret.sptk.many b0
	;;
	.endp __mulddi3#
	.align 16
	.align 64
	.global __multi3#
	.type	__multi3#, @function
	.proc __multi3#
__multi3:
	.prologue 12, 36
	.save ar.pfs, r37
	alloc r37 = ar.pfs, 4, 3, 2, 0
	.save rp, r36
	mov r36 = b0
	mov r38 = r1
	.body
	mov r40 = r34
	mov r39 = r32
	;;
	br.call.sptk.many b0 = __mulddi3#
	mov r1 = r38
	setf.sig f7 = r32
	setf.sig f8 = r35
	;;
	xmpy.l f6 = f7, f8
	setf.sig f7 = r34
	setf.sig f8 = r33
	;;
	xma.l f7 = f7, f8, f6
	;;
	getf.sig r34 = f7
	;;
	add r9 = r34, r9
	mov ar.pfs = r37
	mov b0 = r36
	br.ret.sptk.many b0
	;;
	.endp __multi3#
	.align 16
	.align 64
	.global __negdi2#
	.type	__negdi2#, @function
	.proc __negdi2#
__negdi2:
	.prologue
	.body
	sub r8 = r0, r32
	br.ret.sptk.many b0
	;;
	.endp __negdi2#
	.align 16
	.align 64
	.global __negti2#
	.type	__negti2#, @function
	.proc __negti2#
__negti2:
	.prologue
	.body
	cmp.eq p6, p7 = 0, r32
	sub r8 = 0, r32
	;;
	(p7) sub r9 = -1, r33
	;;
	(p6) sub r9 = 0, r33
	br.ret.sptk.many b0
	;;
	.endp __negti2#
	.align 16
	.align 64
	.global __paritydi2#
	.type	__paritydi2#, @function
	.proc __paritydi2#
__paritydi2:
	.prologue
	.body
	shr r14 = r32, 32
	;;
	xor r32 = r32, r14
	;;
	extr.u r14 = r32, 16, 16
	;;
	xor r14 = r32, r14
	;;
	extr.u r32 = r14, 8, 24
	;;
	xor r32 = r14, r32
	;;
	extr.u r14 = r32, 4, 28
	;;
	xor r14 = r32, r14
	addl r8 = 27030, r0
	;;
	and r14 = 15, r14
	;;
	shr r8 = r8, r14
	;;
	and r8 = 1, r8
	br.ret.sptk.many b0
	;;
	.endp __paritydi2#
	.align 16
	.align 64
	.global __parityti2#
	.type	__parityti2#, @function
	.proc __parityti2#
__parityti2:
	.prologue
	.body
	xor r32 = r33, r32
	;;
	extr r14 = r32, 32, 32
	;;
	xor r32 = r14, r32
	;;
	extr.u r14 = r32, 16, 16
	;;
	xor r14 = r32, r14
	;;
	extr.u r15 = r14, 8, 24
	;;
	xor r15 = r14, r15
	;;
	extr.u r14 = r15, 4, 28
	;;
	xor r14 = r15, r14
	addl r8 = 27030, r0
	;;
	and r14 = 15, r14
	;;
	shr r8 = r8, r14
	;;
	and r8 = 1, r8
	br.ret.sptk.many b0
	;;
	.endp __parityti2#
	.align 16
	.align 64
	.global __paritysi2#
	.type	__paritysi2#, @function
	.proc __paritysi2#
__paritysi2:
	.prologue
	.body
	extr.u r14 = r32, 16, 16
	;;
	xor r14 = r32, r14
	;;
	extr.u r32 = r14, 8, 24
	;;
	xor r32 = r14, r32
	;;
	extr.u r14 = r32, 4, 28
	;;
	xor r14 = r32, r14
	addl r8 = 27030, r0
	;;
	and r14 = 15, r14
	;;
	shr r8 = r8, r14
	;;
	and r8 = 1, r8
	br.ret.sptk.many b0
	;;
	.endp __paritysi2#
	.align 16
	.align 64
	.global __popcountdi2#
	.type	__popcountdi2#, @function
	.proc __popcountdi2#
__popcountdi2:
	.prologue
	.body
	shr.u r14 = r32, 1
	movl r15 = 6148914691236517205
	;;
	and r14 = r15, r14
	;;
	sub r32 = r32, r14
	;;
	shr.u r15 = r32, 2
	movl r14 = 3689348814741910323
	;;
	and r15 = r14, r15
	and r32 = r14, r32
	;;
	add r15 = r15, r32
	;;
	shr.u r14 = r15, 4
	;;
	add r14 = r14, r15
	movl r15 = 1085102592571150095
	;;
	and r14 = r15, r14
	;;
	shr.u r15 = r14, 32
	;;
	add r15 = r15, r14
	;;
	extr.u r14 = r15, 16, 16
	;;
	add r14 = r14, r15
	;;
	extr.u r8 = r14, 8, 24
	;;
	add r8 = r8, r14
	;;
	and r8 = 127, r8
	br.ret.sptk.many b0
	;;
	.endp __popcountdi2#
	.align 16
	.align 64
	.global __popcountsi2#
	.type	__popcountsi2#, @function
	.proc __popcountsi2#
__popcountsi2:
	.prologue
	.body
	extr.u r14 = r32, 1, 31
	movl r15 = 1431655765
	;;
	and r14 = r15, r14
	;;
	sub r32 = r32, r14
	;;
	extr.u r15 = r32, 2, 30
	movl r14 = 858993459
	;;
	and r15 = r14, r15
	and r14 = r14, r32
	;;
	add r14 = r14, r15
	;;
	extr.u r15 = r14, 4, 27
	;;
	add r14 = r15, r14
	movl r15 = 252645135
	;;
	and r14 = r15, r14
	;;
	shr.u r15 = r14, 16
	;;
	add r14 = r15, r14
	;;
	extr.u r8 = r14, 8, 21
	;;
	add r8 = r8, r14
	;;
	and r8 = 63, r8
	br.ret.sptk.many b0
	;;
	.endp __popcountsi2#
	.align 16
	.align 64
	.global __popcountti2#
	.type	__popcountti2#, @function
	.proc __popcountti2#
__popcountti2:
	.prologue
	.body
	shrp r20 = r33, r32, 1
	shr.u r21 = r33, 1
	movl r18 = 6148914691236517205
	;;
	and r14 = r18, r20
	and r15 = r18, r21
	;;
	sub r20 = r32, r14
	;;
	cmp.gtu p6, p7 = r20, r32
	;;
	(p7) sub r21 = r33, r15
	;;
	(p6) sub r21 = r33, r15, 1
	;;
	shrp r16 = r21, r20, 2
	shr.u r17 = r21, 2
	movl r14 = 3689348814741910323
	;;
	and r18 = r14, r16
	and r19 = r14, r17
	and r16 = r14, r20
	and r17 = r14, r21
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
	and r15 = r16, r18
	and r14 = r16, r19
	;;
	add r14 = r14, r15
	;;
	shr.u r15 = r14, 32
	;;
	add r15 = r15, r14
	;;
	extr.u r14 = r15, 16, 16
	;;
	add r14 = r14, r15
	;;
	extr.u r8 = r14, 8, 24
	;;
	add r8 = r8, r14
	;;
	zxt1 r8 = r8
	br.ret.sptk.many b0
	;;
	.endp __popcountti2#
	.align 16
	.align 64
	.global __powidf2#
	.type	__powidf2#, @function
	.proc __powidf2#
__powidf2:
	.prologue
	.body
	mov f6 = f8
	mov r14 = r33
	mov f8 = f1
	.align 32
.L953:
	;;
	tbit.z p6, p7 = r14, 0
	;;
	(p7) fmpy.d f8 = f8, f6
	extr.u r15 = r14, 31, 1
	;;
	add r14 = r15, r14
	;;
	extr r14 = r14, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L952
	fmpy.d f6 = f6, f6
	br .L953
	;;
.L952:
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L956
.L950:
	br.ret.sptk.many b0
	;;
.L956:
	frcpa.s0 f9, p6 = f1, f8
	;;
	(p6) fnma.s1 f6 = f8, f9, f1
	;;
	(p6) fma.s1 f7 = f9, f6, f9
	(p6) fmpy.s1 f6 = f6, f6
	;;
	(p6) fma.s1 f7 = f7, f6, f7
	(p6) fmpy.s1 f6 = f6, f6
	;;
	(p6) fma.s1 f6 = f7, f6, f7
	;;
	(p6) fmpy.d.s1 f7 = f6, f1
	;;
	(p6) fnma.s1 f8 = f8, f7, f1
	;;
	(p6) fma.d.s0 f9 = f8, f6, f7
	;;
	mov f8 = f9
	br .L950
	;;
	.endp __powidf2#
	.align 16
	.align 64
	.global __powisf2#
	.type	__powisf2#, @function
	.proc __powisf2#
__powisf2:
	.prologue
	.body
	mov f6 = f8
	mov r14 = r33
	mov f8 = f1
	.align 32
.L960:
	;;
	tbit.z p6, p7 = r14, 0
	;;
	(p7) fmpy.s f8 = f8, f6
	extr.u r15 = r14, 31, 1
	;;
	add r14 = r15, r14
	;;
	extr r14 = r14, 1, 31
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L959
	fmpy.s f6 = f6, f6
	br .L960
	;;
.L959:
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L963
.L957:
	br.ret.sptk.many b0
	;;
.L963:
	frcpa.s0 f6, p6 = f1, f8
	;;
	(p6) fnma.s1 f9 = f8, f6, f1
	;;
	(p6) fma.s1 f7 = f6, f9, f6
	;;
	(p6) fma.s1 f7 = f7, f9, f6
	;;
	(p6) fmpy.s.s1 f9 = f7, f1
	;;
	(p6) fnma.s1 f8 = f9, f8, f1
	;;
	(p6) fma.s.s0 f6 = f8, f7, f9
	;;
	mov f8 = f6
	br .L957
	;;
	.endp __powisf2#
	.align 16
	.align 64
	.global __ucmpdi2#
	.type	__ucmpdi2#, @function
	.proc __ucmpdi2#
__ucmpdi2:
	.prologue
	.body
	extr.u r15 = r32, 32, 32
	extr.u r14 = r33, 32, 32
	;;
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dpnt .L968
	;;
	cmp4.ltu p6, p7 = r14, r15
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L964
	cmp4.gtu p6, p7 = r33, r32
	(p6) br.cond.dpnt .L968
	;;
	cmp4.ltu p6, p7 = r33, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
	br .L964
	;;
.L968:
	mov r8 = r0
.L964:
	br.ret.sptk.many b0
	;;
	.endp __ucmpdi2#
	.align 16
	.align 64
	.global __aeabi_ulcmp#
	.type	__aeabi_ulcmp#, @function
	.proc __aeabi_ulcmp#
__aeabi_ulcmp:
	.prologue 12, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 3, 2, 0
	.save rp, r34
	mov r34 = b0
	mov r36 = r1
	.body
	mov r37 = r32
	mov r38 = r33
	;;
	br.call.sptk.many b0 = __ucmpdi2#
	mov r1 = r36
	adds r8 = -1, r8
	;;
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp __aeabi_ulcmp#
	.align 16
	.align 64
	.global __ucmpti2#
	.type	__ucmpti2#, @function
	.proc __ucmpti2#
__ucmpti2:
	.prologue
	.body
	cmp.gtu p6, p7 = r35, r33
	(p6) br.cond.dpnt .L977
	;;
	cmp.ltu p6, p7 = r35, r33
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L973
	cmp.gtu p6, p7 = r34, r32
	(p6) br.cond.dpnt .L977
	;;
	cmp.ltu p6, p7 = r34, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
	br .L973
	;;
.L977:
	mov r8 = r0
.L973:
	br.ret.sptk.many b0
	;;
	.endp __ucmpti2#
	.sbss
	.align 8
	.type	s.0#, @object
	.size	s.0#, 7
s.0:
	.skip	7
	.align 8
	.type	seed#, @object
	.size	seed#, 8
seed:
	.skip	8
	.section	.rodata
	.align 8
	.type	digits#, @object
	.size	digits#, 65
digits:
	stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.global __umoddi3#
	.global __moddi3#
	.global __divdi3#
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
