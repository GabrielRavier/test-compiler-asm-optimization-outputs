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
	.mib
	mov r9 = r32
	mov r8 = r33
	br.ret.sptk.many b0
	.endp make_ti#
	.align 16
	.align 64
	.global make_tu#
	.type	make_tu#, @function
	.proc make_tu#
make_tu:
	.prologue
	.body
	.mib
	mov r9 = r32
	mov r8 = r33
	br.ret.sptk.many b0
	.endp make_tu#
	.align 16
	.align 64
	.global memmove#
	.type	memmove#, @function
	.proc memmove#
memmove:
	.prologue
	.mii
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	.mmb
	nop 0
	cmp.geu p6, p7 = r33, r32
	(p6) br.cond.dptk .L6
	;;
	.mmi
	add r15 = r33, r34
	nop 0
	cmp.eq p6, p7 = 0, r34
	.mmb
	adds r34 = -1, r34
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	sub r33 = r15, r33, 1
	add r34 = r32, r34
	nop 0
	.mii
	adds r15 = -1, r15
	nop 0
	;;
	mov ar.lc = r33
	.align 32
.L8:
	.mmi
	nop 0
	ld1 r16 = [r15], -1
	nop 0
	;;
	.mib
	st1 [r34] = r16, -1
	nop 0
	br.cloop.sptk.few .L8
	;;
.L7:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L6:
	.mib
	cmp.eq p6, p7 = r33, r32
	mov r15 = r32
	(p6) br.cond.dpnt .L7
	;;
	.mib
	cmp.eq p6, p7 = 0, r34
	add r34 = r33, r34
	(p6) br.cond.dpnt .L7
	;;
	.mii
	sub r34 = r34, r33, 1
	nop 0
	;;
	mov ar.lc = r34
	.align 32
.L9:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r15] = r14, 1
	nop 0
	br.cloop.sptk.few .L9
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp memmove#
	.align 16
	.align 64
	.global memccpy#
	.type	memccpy#, @function
	.proc memccpy#
memccpy:
	.prologue
	.mmi
	adds r15 = -1, r35
	mov r14 = r32
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mib
	cmp.eq p6, p7 = 0, r35
	zxt1 r34 = r34
	(p6) br.cond.dpnt .L25
	;;
	.mii
	nop 0
	mov ar.lc = r15
	nop 0
	.align 32
.L22:
	.mmi
	nop 0
	ld1 r15 = [r33], 1
	nop 0
	;;
	.mib
	st1 [r14] = r15, 1
	cmp4.ne p6, p7 = r34, r15
	(p7) br.cond.dpnt .L34
	;;
	.mib
	nop 0
	adds r35 = -1, r35
	br.cloop.sptk.few .L22
	;;
.L25:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L34:
	.mib
	cmp.eq p6, p7 = 0, r35
	mov ar.lc = r2
	(p6) br.cond.dpnt .L25
	;;
	.mib
	nop 0
	(p7) mov r8 = r14
	br.ret.sptk.many b0
	.endp memccpy#
	.align 16
	.align 64
	.global memchr#
	.type	memchr#, @function
	.proc memchr#
memchr:
	.prologue
	.mii
	adds r14 = -1, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt1 r33 = r33
	.mmb
	cmp.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L41
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L37:
	.mmi
	mov r8 = r32
	ld1 r14 = [r32], 1
	nop 0
	;;
	.mib
	cmp4.ne p6, p7 = r33, r14
	nop 0
	(p7) br.cond.dpnt .L47
	;;
	.mib
	nop 0
	adds r34 = -1, r34
	br.cloop.sptk.few .L37
	;;
.L41:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L47:
	.mmi
	nop 0
	cmp.ne p6, p7 = 0, r34
	mov ar.lc = r2
	.bbb
	nop 0
	(p7) br.cond.dpnt .L41
	br.ret.sptk.many b0
	.endp memchr#
	.align 16
	.align 64
	.global memcmp#
	.type	memcmp#, @function
	.proc memcmp#
memcmp:
	.prologue
	.mmb
	adds r16 = -1, r34
	mov r15 = r32
	nop 0
	.mii
	mov r14 = r33
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.eq p6, p7 = 0, r34
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L53
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.align 32
.L50:
	.mmi
	mov r33 = r14
	nop 0
	mov r32 = r15
	.mmi
	adds r14 = 1, r14
	nop 0
	adds r15 = 1, r15
	;;
	.mmi
	ld1 r8 = [r32]
	ld1 r16 = [r33]
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = r16, r8
	nop 0
	(p7) br.cond.dpnt .L61
	;;
	.mib
	nop 0
	adds r34 = -1, r34
	br.cloop.sptk.few .L50
.L53:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L48:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L61:
	.mmi
	nop 0
	cmp.eq p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r8, r16
	(p7) br.cond.dptk .L48
	;;
	.mib
	nop 0
	mov r8 = r0
	br .L48
	.endp memcmp#
	.align 16
	.align 64
	.global memcpy#
	.type	memcpy#, @function
	.proc memcpy#
memcpy:
	.prologue 12, 35
	.mmi
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 3, 3, 0
	cmp.eq p6, p7 = 0, r34
	.save rp, r35
	mov r35 = b0
	.mmb
	mov r37 = r1
	.body
	mov r40 = r34
	(p6) br.cond.dpnt .L63
	;;
	.mmi
	nop 0
	mov r39 = r33
	mov r38 = r32
	.mmb
	nop 0
	nop 0
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	mov r1 = r37
	nop 0
	nop 0
.L63:
	.mmi
	mov r8 = r32
	nop 0
	mov b0 = r35
	;;
	.mib
	nop 0
	mov ar.pfs = r36
	br.ret.sptk.many b0
	.endp memcpy#
	.align 16
	.align 64
	.global memrchr#
	.type	memrchr#, @function
	.proc memrchr#
memrchr:
	.prologue
	.mmi
	mov r14 = r34
	adds r34 = -1, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mib
	nop 0
	zxt1 r33 = r33
	nop 0
	;;
	.mmi
	add r32 = r32, r34
	nop 0
	mov ar.lc = r14
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L72
	.align 32
.L75:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L69:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L72:
	.mmi
	mov r8 = r32
	nop 0
	adds r32 = -1, r32
	;;
	.mmi
	nop 0
	ld1 r14 = [r8]
	nop 0
	;;
	.mbb
	cmp4.eq p6, p7 = r33, r14
	(p6) br.cond.dpnt .L69
	br.cloop.sptk.few .L72
	.mib
	nop 0
	nop 0
	br .L75
	.endp memrchr#
	.align 16
	.align 64
	.global memset#
	.type	memset#, @function
	.proc memset#
memset:
	.prologue
	.mmb
	cmp.eq p6, p7 = 0, r34
	mov r14 = r32
	nop 0
	.mii
	adds r34 = -1, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L77
	;;
	.mii
	nop 0
	mov ar.lc = r34
	nop 0
	;;
	.align 32
.L78:
	.mib
	st1 [r14] = r33, 1
	nop 0
	br.cloop.sptk.few .L78
	;;
.L77:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp memset#
	.align 16
	.align 64
	.global stpcpy#
	.type	stpcpy#, @function
	.proc stpcpy#
stpcpy:
	.prologue
	.body
	.mii
	ld1 r14 = [r33]
	adds r33 = 1, r33
	;;
	sxt1 r15 = r14
	.mmi
	st1 [r32] = r14
	;;
	cmp4.eq p6, p7 = 0, r15
	nop 0
	;;
	.mib
	(p6) mov r8 = r32
	adds r32 = 1, r32
	(p6) br.cond.dpnt .L85
	;;
	.align 32
.L87:
	.mii
	ld1 r15 = [r33], 1
	mov r8 = r32
	;;
	sxt1 r16 = r15
	.mmi
	nop 0
	st1 [r32] = r15, 1
	nop 0
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L87
.L85:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp stpcpy#
	.align 16
	.align 64
	.global strchrnul#
	.type	strchrnul#, @function
	.proc strchrnul#
strchrnul:
	.prologue
	.body
	.mii
	ld1 r14 = [r32]
	zxt1 r33 = r33
	mov r8 = r32
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mib
	mov r15 = r14
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L92
	;;
	.align 32
.L93:
	.mii
	nop 0
	zxt1 r15 = r15
	nop 0
	;;
	.mib
	cmp4.ne p6, p7 = r33, r15
	nop 0
	(p7) br.cond.dpnt .L92
	;;
	.mmi
	adds r8 = 1, r8
	;;
	ld1 r14 = [r8]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mib
	mov r15 = r14
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L93
.L92:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
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
.L102:
	.mmi
	ld1 r14 = [r32]
	mov r8 = r32
	adds r32 = 1, r32
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = r33, r14
	nop 0
	(p6) br.cond.dpnt .L100
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L102
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L100:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp strchr#
	.align 16
	.align 64
	.global strcmp#
	.type	strcmp#, @function
	.proc strcmp#
strcmp:
	.prologue
	.body
	.mmi
	ld1 r15 = [r32]
	nop 0
	adds r32 = 1, r32
	.mii
	ld1 r8 = [r33]
	adds r33 = 1, r33
	;;
	sxt1 r15 = r15
	.mii
	nop 0
	sxt1 r8 = r8
	;;
	cmp4.ne p6, p7 = 0, r15
	.mmi
	cmp4.eq p8, p9 = r8, r15
	;;
	(p6) addl r14 = 1, r0
	(p8) addl r16 = 1, r0
	;;
	.mii
	(p7) mov r14 = r0
	(p9) mov r16 = r0
	;;
	and r14 = r16, r14
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L107
	.align 32
.L108:
	.mmi
	ld1 r14 = [r32], 1
	ld1 r8 = [r33], 1
	nop 0
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	sxt1 r8 = r8
	;;
	.mmi
	cmp4.eq p6, p7 = r8, r14
	nop 0
	mov r15 = r14
	;;
	.mib
	nop 0
	cmp4.ne.and.orcm p6, p7 = 0, r14
	(p6) br.cond.dptk .L108
.L107:
	.mii
	nop 0
	zxt1 r15 = r15
	zxt1 r8 = r8
	;;
	.mib
	nop 0
	sub r8 = r15, r8
	br.ret.sptk.many b0
	.endp strcmp#
	.align 16
	.align 64
	.global strlen#
	.type	strlen#, @function
	.proc strlen#
strlen:
	.prologue
	.body
	.mmi
	ld1 r14 = [r32]
	nop 0
	adds r15 = 1, r32
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L113
	;;
	.align 32
.L114:
	.mmi
	mov r8 = r15
	nop 0
	adds r15 = 1, r15
	;;
	.mmi
	ld1 r14 = [r8]
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L114
.L113:
	.mib
	nop 0
	sub r8 = r8, r32
	br.ret.sptk.many b0
	.endp strlen#
	.align 16
	.align 64
	.global strncmp#
	.type	strncmp#, @function
	.proc strncmp#
strncmp:
	.prologue
	.body
	.mmi
	cmp.eq p6, p7 = 0, r34
	nop 0
	add r34 = r33, r34
	;;
	.mib
	(p6) mov r8 = r0
	nop 0
	(p6) br.cond.dpnt .L119
	;;
	.mii
	ld1 r14 = [r32]
	adds r32 = 1, r32
	;;
	mov r8 = r14
	.mmb
	cmp4.eq p6, p7 = 0, r14
	mov r14 = r33
	(p6) br.cond.dpnt .L121
	;;
	.align 32
.L122:
	.mmi
	ld1 r15 = [r14]
	mov r33 = r14
	adds r14 = 1, r14
	;;
	.mmi
	cmp4.eq p8, p9 = r8, r15
	nop 0
	cmp4.ne p6, p7 = 0, r15
	;;
	.mii
	(p8) addl r16 = 1, r0
	(p6) addl r15 = 1, r0
	;;
	(p9) mov r16 = r0
	.mii
	(p7) mov r15 = r0
	cmp.ne p6, p7 = r14, r34
	;;
	and r15 = r16, r15
	;;
	.mib
	nop 0
	tbit.nz.and.orcm p6, p7 = r15, 0
	(p7) br.cond.dpnt .L121
	;;
	.mmi
	nop 0
	ld1 r15 = [r32], 1
	nop 0
	;;
	.mib
	mov r8 = r15
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L122
	.mmi
	mov r33 = r14
	nop 0
	nop 0
	;;
.L121:
	.mii
	ld1 r14 = [r33]
	nop 0
	;;
	sub r8 = r8, r14
.L119:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp strncmp#
	.align 16
	.align 64
	.global swab#
	.type	swab#, @function
	.proc swab#
swab:
	.prologue
	.mmi
	cmp.ge p6, p7 = 1, r34
	and r34 = -2, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L128
	;;
	.mii
	adds r34 = -2, r34
	nop 0
	;;
	shr.u r34 = r34, 1
	;;
	.mii
	nop 0
	mov ar.lc = r34
	nop 0
	.align 32
.L130:
	.mmi
	adds r16 = 1, r32
	nop 0
	mov r14 = r33
	.mmi
	ld1 r15 = [r32], 2
	nop 0
	adds r33 = 2, r33
	;;
	.mmi
	ld1 r16 = [r16]
	;;
	st1 [r14] = r16, 1
	nop 0
	;;
	.mib
	st1 [r14] = r15
	nop 0
	br.cloop.sptk.few .L130
	;;
.L128:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp swab#
	.align 16
	.align 64
	.global isalpha#
	.type	isalpha#, @function
	.proc isalpha#
isalpha:
	.prologue
	.body
	.mmi
	or r32 = 32, r32
	;;
	adds r32 = -97, r32
	nop 0
	;;
	.mmi
	cmp4.geu p6, p7 = 25, r32
	;;
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp isalpha#
	.align 16
	.align 64
	.global isascii#
	.type	isascii#, @function
	.proc isascii#
isascii:
	.prologue
	.body
	.mmi
	cmp4.geu p6, p7 = 127, r32
	;;
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp isascii#
	.align 16
	.align 64
	.global isblank#
	.type	isblank#, @function
	.proc isblank#
isblank:
	.prologue
	.body
	.mii
	cmp4.eq p6, p7 = 32, r32
	cmp4.eq p8, p9 = 9, r32
	;;
	(p8) addl r14 = 1, r0
	.mmi
	(p6) addl r8 = 1, r0
	;;
	(p9) mov r14 = r0
	(p7) mov r8 = r0
	;;
	.mib
	nop 0
	or r8 = r14, r8
	br.ret.sptk.many b0
	.endp isblank#
	.align 16
	.align 64
	.global iscntrl#
	.type	iscntrl#, @function
	.proc iscntrl#
iscntrl:
	.prologue
	.body
	.mii
	cmp4.geu p6, p7 = 31, r32
	cmp4.eq p8, p9 = 127, r32
	;;
	(p8) addl r14 = 1, r0
	.mmi
	(p6) addl r8 = 1, r0
	;;
	(p9) mov r14 = r0
	(p7) mov r8 = r0
	;;
	.mib
	nop 0
	or r8 = r14, r8
	br.ret.sptk.many b0
	.endp iscntrl#
	.align 16
	.align 64
	.global isdigit#
	.type	isdigit#, @function
	.proc isdigit#
isdigit:
	.prologue
	.body
	.mmi
	adds r32 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r32
	nop 0
	;;
	.mmi
	nop 0
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp isdigit#
	.align 16
	.align 64
	.global isgraph#
	.type	isgraph#, @function
	.proc isgraph#
isgraph:
	.prologue
	.body
	.mmi
	adds r32 = -33, r32
	;;
	cmp4.geu p6, p7 = 93, r32
	nop 0
	;;
	.mmi
	nop 0
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp isgraph#
	.align 16
	.align 64
	.global islower#
	.type	islower#, @function
	.proc islower#
islower:
	.prologue
	.body
	.mmi
	adds r32 = -97, r32
	;;
	cmp4.geu p6, p7 = 25, r32
	nop 0
	;;
	.mmi
	nop 0
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp islower#
	.align 16
	.align 64
	.global isprint#
	.type	isprint#, @function
	.proc isprint#
isprint:
	.prologue
	.body
	.mmi
	adds r32 = -32, r32
	;;
	cmp4.geu p6, p7 = 94, r32
	nop 0
	;;
	.mmi
	nop 0
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp isprint#
	.align 16
	.align 64
	.global isspace#
	.type	isspace#, @function
	.proc isspace#
isspace:
	.prologue
	.body
	.mii
	cmp4.eq p6, p7 = 32, r32
	adds r15 = -9, r32
	;;
	(p6) addl r14 = 1, r0
	;;
	.mii
	(p7) mov r14 = r0
	cmp4.geu p6, p7 = 4, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	.mmi
	nop 0
	(p7) mov r8 = r0
	nop 0
	;;
	.mib
	nop 0
	or r8 = r14, r8
	br.ret.sptk.many b0
	.endp isspace#
	.align 16
	.align 64
	.global isupper#
	.type	isupper#, @function
	.proc isupper#
isupper:
	.prologue
	.body
	.mmi
	adds r32 = -65, r32
	;;
	cmp4.geu p6, p7 = 25, r32
	nop 0
	;;
	.mmi
	nop 0
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp isupper#
	.align 16
	.align 64
	.global iswcntrl#
	.type	iswcntrl#, @function
	.proc iswcntrl#
iswcntrl:
	.prologue
	.body
	.mii
	adds r14 = -127, r32
	cmp4.geu p8, p9 = 31, r32
	;;
	cmp4.geu p6, p7 = 32, r14
	;;
	.mib
	nop 0
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L157
	.mmi
	addl r15 = -8232, r0
	;;
	add r14 = r32, r15
	nop 0
	;;
	.mib
	cmp4.geu p6, p7 = 1, r14
	addl r14 = -65529, r0
	(p6) br.cond.dpnt .L157
	;;
	.mmi
	add r2 = r32, r14
	;;
	cmp4.geu p6, p7 = 2, r2
	nop 0
	;;
	.mmi
	nop 0
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
.L157:
	.mib
	nop 0
	addl r8 = 1, r0
	br.ret.sptk.many b0
	.endp iswcntrl#
	.align 16
	.align 64
	.global iswdigit#
	.type	iswdigit#, @function
	.proc iswdigit#
iswdigit:
	.prologue
	.body
	.mmi
	adds r32 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r32
	nop 0
	;;
	.mmi
	nop 0
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp iswdigit#
	.align 16
	.align 64
	.global iswprint#
	.type	iswprint#, @function
	.proc iswprint#
iswprint:
	.prologue
	.body
	.mii
	mov r2 = r32
	addl r14 = 254, r0
	;;
	cmp4.ltu p6, p7 = r14, r32
	.mmb
	addl r15 = -8234, r2
	addl r14 = 47061, r0
	(p7) br.cond.dpnt .L170
	;;
	.mmi
	cmp4.geu p6, p7 = r14, r15
	addl r14 = 8231, r0
	addl r15 = -57344, r2
	;;
	.mmi
	cmp4.geu p8, p9 = r14, r32
	nop 0
	addl r14 = 8184, r0
	;;
	.mib
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	nop 0
	(p6) br.cond.dpnt .L166
	;;
	.mmi
	cmp4.geu p6, p7 = r14, r15
	nop 0
	addl r15 = -65532, r2
	.mmb
	addl r14 = 1048579, r0
	nop 0
	(p6) br.cond.dpnt .L166
	;;
	.mmi
	cmp4.ltu p6, p7 = r14, r15
	nop 0
	addl r14 = 65534, r0
	;;
	.mib
	and r2 = r14, r2
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L162
	;;
	.mmi
	nop 0
	cmp4.ne p6, p7 = r14, r2
	nop 0
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L162:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L166:
	.mib
	nop 0
	addl r8 = 1, r0
	br.ret.sptk.many b0
.L170:
	.mmi
	adds r2 = 1, r32
	;;
	and r2 = 127, r2
	nop 0
	;;
	.mmi
	cmp4.ltu p6, p7 = 32, r2
	;;
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp iswprint#
	.align 16
	.align 64
	.global iswxdigit#
	.type	iswxdigit#, @function
	.proc iswxdigit#
iswxdigit:
	.prologue
	.body
	.mmi
	adds r14 = -48, r32
	;;
	cmp4.geu p6, p7 = 9, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L171
	.mmi
	or r32 = 32, r32
	;;
	adds r32 = -97, r32
	nop 0
	;;
	.mmi
	nop 0
	cmp4.geu p6, p7 = 5, r32
	nop 0
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L171:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp iswxdigit#
	.align 16
	.align 64
	.global toascii#
	.type	toascii#, @function
	.proc toascii#
toascii:
	.prologue
	.body
	.mib
	nop 0
	and r8 = 127, r32
	br.ret.sptk.many b0
	.endp toascii#
	.align 16
	.align 64
	.global fdim#
	.type	fdim#, @function
	.proc fdim#
fdim:
	.prologue
	.body
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L178
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mfb
	nop 0
	(p6) mov f8 = f9
	(p6) br.cond.dpnt .L178
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f9
	;;
	.mmf
	nop 0
	nop 0
	(p6) fsub.d f8 = f8, f9
	;;
	.mfi
	nop 0
	(p7) mov f8 = f0
	nop 0
.L178:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp fdim#
	.align 16
	.align 64
	.global fdimf#
	.type	fdimf#, @function
	.proc fdimf#
fdimf:
	.prologue
	.body
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L188
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mfb
	nop 0
	(p6) mov f8 = f9
	(p6) br.cond.dpnt .L188
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f9
	;;
	.mmf
	nop 0
	nop 0
	(p6) fsub.s f8 = f8, f9
	;;
	.mfi
	nop 0
	(p7) mov f8 = f0
	nop 0
.L188:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp fdimf#
	.align 16
	.align 64
	.global fmax#
	.type	fmax#, @function
	.proc fmax#
fmax:
	.prologue
	.body
	.mfi
	getf.d r15 = f8
	fcmp.unord p6, p7 = f8, f8
	nop 0
	;;
	.mib
	getf.d r14 = f9
	nop 0
	(p6) br.cond.dpnt .L205
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L204
	;;
	.mii
	nop 0
	shr.u r16 = r15, 63
	;;
	shr.u r17 = r14, 63
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L200
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L198
.L205:
	.mmi
	setf.d f8 = r14
	nop 0
	nop 0
.L198:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L200:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L205
.L204:
	.mib
	setf.d f8 = r15
	nop 0
	br.ret.sptk.many b0
	.endp fmax#
	.align 16
	.align 64
	.global fmaxf#
	.type	fmaxf#, @function
	.proc fmaxf#
fmaxf:
	.prologue
	.body
	.mfi
	getf.s r15 = f8
	fcmp.unord p6, p7 = f8, f8
	nop 0
	.mlx
	nop 0
	movl r18 = -2147483648
	;;
	.mib
	getf.s r14 = f9
	nop 0
	(p6) br.cond.dpnt .L215
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L214
	;;
	.mmi
	mov r16 = r15
	;;
	mov r17 = r14
	and r16 = r18, r16
	;;
	.mmi
	nop 0
	and r17 = r18, r17
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L210
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L208
.L215:
	.mmi
	setf.s f8 = r14
	nop 0
	nop 0
.L208:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L210:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L215
.L214:
	.mib
	setf.s f8 = r15
	nop 0
	br.ret.sptk.many b0
	.endp fmaxf#
	.align 16
	.align 64
	.global fmaxl#
	.type	fmaxl#, @function
	.proc fmaxl#
fmaxl:
	.prologue
	.mmf
	.fframe 16
	adds r12 = -16, r12
	.body
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mmi
	adds r14 = 16, r12
	stfe [r12] = f8
	nop 0
	.mmi
	adds r15 = 8, r12
	adds r17 = 24, r12
	addl r16 = 32768, r0
	;;
	.mib
	stfe [r14] = f9
	nop 0
	(p6) br.cond.dpnt .L223
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L224
	;;
	.mmi
	ld8 r14 = [r15]
	ld8 r15 = [r17]
	nop 0
	;;
	.mmi
	and r14 = r16, r14
	nop 0
	and r15 = r16, r15
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r15, r14
	(p6) br.cond.dptk .L220
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L218
	.mmi
	nop 0
	adds r15 = 16, r12
	nop 0
	;;
	.mmi
	ldfe f8 = [r15]
	nop 0
	nop 0
.L218:
	.mib
	nop 0
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L220:
	.body
	.copy_state 1
	.mmi
	adds r14 = 16, r12
	ldfe f6 = [r12]
	nop 0
	;;
	.mmi
	nop 0
	ldfe f7 = [r14]
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f6, f7
	;;
	.mfb
	nop 0
	(p6) mov f8 = f7
	(p6) br.cond.dptk .L218
	;;
.L224:
	.mib
	ldfe f8 = [r12]
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L223:
	.body
	.copy_state 2
	.mmi
	nop 0
	adds r14 = 16, r12
	nop 0
	;;
	.mib
	ldfe f8 = [r14]
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	.endp fmaxl#
	.align 16
	.align 64
	.global fmin#
	.type	fmin#, @function
	.proc fmin#
fmin:
	.prologue
	.body
	.mfi
	getf.d r14 = f8
	fcmp.unord p6, p7 = f8, f8
	nop 0
	;;
	.mib
	getf.d r15 = f9
	nop 0
	(p6) br.cond.dpnt .L233
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L235
	;;
	.mii
	nop 0
	shr.u r16 = r14, 63
	;;
	shr.u r17 = r15, 63
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L230
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L233
.L235:
	.mib
	setf.d f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L230:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L235
.L233:
	.mib
	setf.d f8 = r15
	nop 0
	br.ret.sptk.many b0
	.endp fmin#
	.align 16
	.align 64
	.global fminf#
	.type	fminf#, @function
	.proc fminf#
fminf:
	.prologue
	.body
	.mfi
	getf.s r14 = f8
	fcmp.unord p6, p7 = f8, f8
	nop 0
	.mlx
	nop 0
	movl r18 = -2147483648
	;;
	.mib
	getf.s r15 = f9
	nop 0
	(p6) br.cond.dpnt .L243
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L245
	;;
	.mmi
	mov r16 = r14
	;;
	mov r17 = r15
	and r16 = r18, r16
	;;
	.mmi
	nop 0
	and r17 = r18, r17
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L240
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L243
.L245:
	.mib
	setf.s f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L240:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L245
.L243:
	.mib
	setf.s f8 = r15
	nop 0
	br.ret.sptk.many b0
	.endp fminf#
	.align 16
	.align 64
	.global fminl#
	.type	fminl#, @function
	.proc fminl#
fminl:
	.prologue
	.mmf
	.fframe 16
	adds r12 = -16, r12
	.body
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mmi
	adds r14 = 16, r12
	stfe [r12] = f8
	nop 0
	.mmi
	adds r15 = 8, r12
	adds r17 = 24, r12
	addl r16 = 32768, r0
	;;
	.mib
	stfe [r14] = f9
	nop 0
	(p6) br.cond.dpnt .L253
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L255
	;;
	.mmi
	ld8 r14 = [r15]
	ld8 r15 = [r17]
	nop 0
	;;
	.mmi
	and r14 = r16, r14
	nop 0
	and r15 = r16, r15
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r15, r14
	(p6) br.cond.dptk .L250
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L255
	;;
	.mfi
	nop 0
	(p7) mov f8 = f9
	nop 0
	.mib
	nop 0
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L250:
	.body
	.copy_state 1
	.mmi
	adds r15 = 16, r12
	ldfe f6 = [r12]
	nop 0
	;;
	.mmi
	nop 0
	ldfe f7 = [r15]
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f6, f7
	;;
	.mmf
	(p7) adds r14 = 16, r12
	nop 0
	(p6) mov f8 = f6
	;;
	.mib
	(p7) ldfe f8 = [r14]
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L255:
	.body
	.copy_state 2
	.mib
	ldfe f8 = [r12]
	.label_state 3
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L253:
	.body
	.copy_state 3
	.mmi
	nop 0
	adds r15 = 16, r12
	nop 0
	;;
	.mib
	ldfe f8 = [r15]
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	.endp fminl#
	.align 16
	.align 64
	.global l64a#
	.type	l64a#, @function
	.proc l64a#
l64a:
	.prologue
	.body
	.mlx
	nop 0
	movl r17 = @gprel(digits#)
	.mmi
	mov r14 = r32
	addl r16 = @gprel(s.0#), gp
	cmp4.eq p6, p7 = 0, r32
	;;
	.mib
	nop 0
	add r17 = r1, r17
	(p6) br.cond.dpnt .L259
	.align 32
.L260:
	.mii
	and r15 = 63, r14
	extr.u r14 = r14, 6, 26
	;;
	add r15 = r17, r15
	.mmi
	cmp4.ne p6, p7 = 0, r14
	;;
	ld1 r15 = [r15]
	nop 0
	;;
	.mib
	st1 [r16] = r15, 1
	nop 0
	(p6) br.cond.dptk .L260
	;;
.L259:
	.mmi
	nop 0
	addl r8 = @gprel(s.0#), gp
	nop 0
	.mmb
	st1 [r16] = r0
	nop 0
	br.ret.sptk.many b0
	.endp l64a#
	.align 16
	.align 64
	.global srand#
	.type	srand#, @function
	.proc srand#
srand:
	.prologue
	.body
	.mii
	adds r32 = -1, r32
	addl r14 = @gprel(seed#), gp
	;;
	addp4 r32 = r32, r0
	;;
	.mib
	st8 [r14] = r32
	nop 0
	br.ret.sptk.many b0
	.endp srand#
	.align 16
	.align 64
	.global rand#
	.type	rand#, @function
	.proc rand#
rand:
	.prologue
	.body
	.mlx
	addl r14 = @gprel(seed#), gp
	movl r15 = 6364136223846793005
	;;
	.mmi
	ldf8 f6 = [r14]
	setf.sig f7 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f6 = f6, f7
	;;
	.mmi
	getf.sig r8 = f6
	;;
	adds r8 = 1, r8
	nop 0
	;;
	.mib
	st8 [r14] = r8
	extr.u r8 = r8, 33, 31
	br.ret.sptk.many b0
	.endp rand#
	.align 16
	.align 64
	.global insque#
	.type	insque#, @function
	.proc insque#
insque:
	.prologue
	.body
	.mmi
	nop 0
	cmp.ne p6, p7 = 0, r33
	nop 0
	;;
	.mmi
	(p7) adds r14 = 8, r32
	;;
	(p7) st8 [r14] = r0
	nop 0
	.mmb
	(p7) st8 [r32] = r0
	mov r14 = r32
	(p7) br.cond.dpnt .L269
	;;
	.mmi
	ld8 r15 = [r33]
	;;
	st8 [r14] = r15, 8
	nop 0
	;;
	.mmi
	st8 [r14] = r33
	ld8.a r14 = [r32]
	nop 0
	.mii
	st8 [r33] = r32
	nop 0
	;;
	cmp.eq p6, p7 = 0, r14
	.mii
	chk.a.clr r14, .L277
.L278:
	.pred.rel.mutex p6, p7
	nop 0
	;;
	(p7) adds r14 = 8, r14
	;;
	.mmi
	(p7) st8 [r14] = r32
	nop 0
	nop 0
.L269:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L277:
	.mmi
	nop 0
	ld8 r14 = [r32]
	nop 0
	;;
	.mib
	nop 0
	cmp.eq p6, p7 = 0, r14
	br .L278
	.endp insque#
	.align 16
	.align 64
	.global remque#
	.type	remque#, @function
	.proc remque#
remque:
	.prologue
	.body
	.mmi
	ld8 r14 = [r32]
	nop 0
	adds r15 = 8, r32
	;;
	.mmi
	cmp.eq p6, p7 = 0, r14
	;;
	(p7) ld8 r16 = [r15]
	(p7) adds r14 = 8, r14
	;;
	.mmi
	(p7) st8 [r14] = r16
	;;
	ld8 r14 = [r15]
	nop 0
	;;
	.mmi
	cmp.eq p6, p7 = 0, r14
	;;
	(p7) ld8 r15 = [r32]
	nop 0
	;;
	.mib
	(p7) st8 [r14] = r15
	nop 0
	br.ret.sptk.many b0
	.endp remque#
	.align 16
	.align 64
	.global lsearch#
	.type	lsearch#, @function
	.proc lsearch#
lsearch:
	.prologue 12, 40
	.mmb
	.save ar.pfs, r41
	alloc r41 = ar.pfs, 5, 7, 3, 0
	ld8 r39 = [r34]
	nop 0
	.mii
	mov r37 = r33
	.save ar.lc, r43
	mov r43 = ar.lc
	mov r42 = r1
	;;
	.mmi
	adds r14 = -1, r39
	nop 0
	.save rp, r40
	mov r40 = b0
	.body
	.mmb
	cmp.eq p6, p7 = 0, r39
	nop 0
	(p6) br.cond.dpnt .L290
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L292:
	.mmi
	nop 0
	ld8 r14 = [r36], 8
	mov r45 = r37
	.mmi
	mov r44 = r32
	mov r38 = r37
	add r37 = r37, r35
	;;
	.mib
	ld8 r1 = [r36], -8
	mov b6 = r14
	br.call.sptk.many b0 = b6
	;;
	.mmi
	nop 0
	mov r1 = r42
	cmp4.eq p6, p7 = 0, r8
	.bbb
	nop 0
	(p6) br.cond.dpnt .L289
	br.cloop.sptk.few .L292
	;;
.L290:
	.mmi
	setf.sig f7 = r39
	setf.sig f8 = r33
	adds r14 = 1, r39
	.mmi
	cmp.eq p6, p7 = 0, r35
	mov r46 = r35
	mov r45 = r32
	;;
	.mmi
	setf.sig f6 = r35
	st8 [r34] = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f6 = f6, f7, f8
	;;
	.mib
	getf.sig r38 = f6
	nop 0
	(p6) br.cond.dpnt .L289
	;;
	.mbb
	getf.sig r44 = f6
	br.call.sptk.many b0 = memmove#
	nop 0
	;;
	.mmi
	mov r1 = r42
	nop 0
	nop 0
.L289:
	.mii
	mov r8 = r38
	mov b0 = r40
	;;
	mov ar.pfs = r41
	;;
	.mib
	nop 0
	mov ar.lc = r43
	br.ret.sptk.many b0
	.endp lsearch#
	.align 16
	.align 64
	.global lfind#
	.type	lfind#, @function
	.proc lfind#
lfind:
	.prologue 12, 38
	.mmb
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 5, 5, 2, 0
	ld8 r14 = [r34]
	nop 0
	.mmi
	mov r40 = r1
	nop 0
	.save ar.lc, r41
	mov r41 = ar.lc
	;;
	.mmi
	cmp.eq p6, p7 = 0, r14
	adds r14 = -1, r14
	.save rp, r38
	mov r38 = b0
	.body
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L307
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L309:
	.mmi
	nop 0
	ld8 r14 = [r36], 8
	mov r43 = r33
	.mmi
	mov r42 = r32
	mov r37 = r33
	add r33 = r33, r35
	;;
	.mib
	ld8 r1 = [r36], -8
	mov b6 = r14
	br.call.sptk.many b0 = b6
	;;
	.mmi
	nop 0
	mov r1 = r40
	cmp4.eq p6, p7 = 0, r8
	.bbb
	nop 0
	(p6) br.cond.dpnt .L306
	br.cloop.sptk.few .L309
.L307:
	.mmi
	mov r37 = r0
	nop 0
	nop 0
	;;
.L306:
	.mii
	mov r8 = r37
	mov b0 = r38
	;;
	mov ar.pfs = r39
	;;
	.mib
	nop 0
	mov ar.lc = r41
	br.ret.sptk.many b0
	.endp lfind#
	.align 16
	.align 64
	.global abs#
	.type	abs#, @function
	.proc abs#
abs:
	.prologue
	.body
	.mmi
	cmp4.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	.endp abs#
	.align 16
	.align 64
	.global atoi#
	.type	atoi#, @function
	.proc atoi#
atoi:
	.prologue
	.body
	.mmi
	ld1 r14 = [r32]
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mmi
	adds r15 = -9, r14
	nop 0
	mov r17 = r14
	;;
	.mmi
	cmp4.geu p6, p7 = 4, r15
	nop 0
	adds r15 = 1, r32
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p7) br.cond.dpnt .L322
	.align 32
.L323:
	.mmi
	mov r32 = r15
	ld1 r14 = [r15], 1
	nop 0
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mii
	adds r16 = -9, r14
	mov r17 = r14
	;;
	cmp4.geu p6, p7 = 4, r16
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L323
	;;
.L322:
	.mib
	cmp4.eq p6, p7 = 43, r17
	nop 0
	(p6) br.cond.dpnt .L330
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 45, r17
	(p6) br.cond.dptk .L336
	;;
	.mmi
	(p7) addl r18 = 1, r0
	nop 0
	nop 0
	.mmi
	adds r32 = 1, r32
	nop 0
	nop 0
	;;
.L325:
	.mmi
	nop 0
	ld1 r15 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r15
	;;
	adds r14 = -48, r15
	;;
	.mib
	cmp4.geu p6, p7 = 9, r14
	nop 0
	(p7) br.cond.dpnt .L337
	;;
	.mmi
	nop 0
	(p6) adds r32 = 1, r32
	(p6) mov r8 = r0
	;;
	.align 32
.L326:
	.mmi
	ld1 r17 = [r32], 1
	shladd r14 = r8, 2, r0
	adds r16 = -48, r15
	;;
	.mii
	add r14 = r14, r8
	sxt1 r15 = r17
	sxt1 r16 = r16
	;;
	.mmi
	shladd r14 = r14, 1, r0
	nop 0
	adds r17 = -48, r15
	;;
	.mib
	sub r8 = r14, r16
	cmp4.geu p6, p7 = 9, r17
	(p6) br.cond.dptk .L326
	;;
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r18
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
.L336:
	.mii
	ld1 r15 = [r32]
	mov r18 = r0
	;;
	sxt1 r15 = r15
	;;
	.mmi
	adds r14 = -48, r15
	;;
	cmp4.geu p6, p7 = 9, r14
	nop 0
	;;
	.mib
	(p6) adds r32 = 1, r32
	(p6) mov r8 = r0
	(p6) br.cond.dptk .L326
	.mib
	nop 0
	nop 0
	br .L337
	;;
.L330:
	.mib
	mov r18 = r0
	adds r32 = 1, r32
	br .L325
	;;
.L337:
	.mmi
	mov r8 = r0
	nop 0
	cmp4.ne p6, p7 = 0, r18
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
	.endp atoi#
	.align 16
	.align 64
	.global atol#
	.type	atol#, @function
	.proc atol#
atol:
	.prologue
	.body
	.mmi
	ld1 r14 = [r32]
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mmi
	adds r15 = -9, r14
	nop 0
	mov r17 = r14
	;;
	.mmi
	cmp4.geu p6, p7 = 4, r15
	nop 0
	adds r15 = 1, r32
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p7) br.cond.dpnt .L339
	.align 32
.L340:
	.mmi
	mov r32 = r15
	ld1 r14 = [r15], 1
	nop 0
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mii
	adds r16 = -9, r14
	mov r17 = r14
	;;
	cmp4.geu p6, p7 = 4, r16
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L340
	;;
.L339:
	.mib
	cmp4.eq p6, p7 = 43, r17
	nop 0
	(p6) br.cond.dpnt .L347
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 45, r17
	(p6) br.cond.dptk .L353
	;;
	.mmi
	(p7) addl r18 = 1, r0
	nop 0
	nop 0
	.mmi
	adds r32 = 1, r32
	nop 0
	nop 0
	;;
.L342:
	.mmi
	nop 0
	ld1 r15 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r15
	;;
	adds r14 = -48, r15
	;;
	.mib
	cmp4.geu p6, p7 = 9, r14
	nop 0
	(p7) br.cond.dpnt .L354
	;;
	.mmi
	nop 0
	(p6) adds r32 = 1, r32
	(p6) mov r8 = r0
	;;
	.align 32
.L343:
	.mmi
	ld1 r17 = [r32], 1
	shladd r14 = r8, 2, r0
	adds r16 = -48, r15
	;;
	.mii
	add r14 = r14, r8
	sxt1 r15 = r17
	sxt1 r16 = r16
	;;
	.mmi
	shladd r14 = r14, 1, r0
	nop 0
	adds r17 = -48, r15
	;;
	.mib
	sub r8 = r14, r16
	cmp4.geu p6, p7 = 9, r17
	(p6) br.cond.dptk .L343
	;;
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r18
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
.L353:
	.mii
	ld1 r15 = [r32]
	mov r18 = r0
	;;
	sxt1 r15 = r15
	;;
	.mmi
	adds r14 = -48, r15
	;;
	cmp4.geu p6, p7 = 9, r14
	nop 0
	;;
	.mib
	(p6) adds r32 = 1, r32
	(p6) mov r8 = r0
	(p6) br.cond.dptk .L343
	.mib
	nop 0
	nop 0
	br .L354
	;;
.L347:
	.mib
	mov r18 = r0
	adds r32 = 1, r32
	br .L342
	;;
.L354:
	.mmi
	mov r8 = r0
	nop 0
	cmp4.ne p6, p7 = 0, r18
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
	.endp atol#
	.align 16
	.align 64
	.global atoll#
	.type	atoll#, @function
	.proc atoll#
atoll:
	.prologue
	.body
	.mib
	.restore sp
	.prologue
	alloc r2 = ar.pfs, 0, 0, 1, 0
	nop 0
	br.sptk.many atol#
	;;
	break.f 0
	;;
	.endp atoll#
	.align 16
	.align 64
	.global bsearch#
	.type	bsearch#, @function
	.proc bsearch#
bsearch:
	.prologue 12, 38
	.mmi
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 5, 4, 2, 0
	adds r16 = -32, r12
	adds r17 = -16, r12
	.mmi
	.fframe 48
	adds r12 = -48, r12
	mov r40 = r1
	cmp.eq p6, p7 = 0, r34
	;;
	.mmi
	.save.f 0x1
	stf.spill [r16] = f2, 32
	.save.f 0x2
	stf.spill [r17] = f3
	.save rp, r38
	mov r38 = b0
	;;
	.mmi
	nop 0
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	nop 0
	.mmb
	setf.sig f3 = r35
	nop 0
	(p6) br.cond.dpnt .L358
	;;
	.mmi
	setf.sig f4 = r33
	nop 0
	nop 0
	.align 32
.L361:
	.mib
	nop 0
	shr.u r37 = r34, 1
	nop 0
	.mmi
	ld8 r14 = [r36], 8
	nop 0
	mov r41 = r32
	;;
	.mmi
	setf.sig f6 = r37
	ld8 r1 = [r36], -8
	mov b6 = r14
	.mmi
	nop 0
	sub r34 = r34, r37, 1
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f2 = f6, f3, f4
	;;
	.mib
	getf.sig r42 = f2
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmi
	getf.sig r15 = f2
	nop 0
	cmp4.gt p6, p7 = r0, r8
	.mmb
	mov r1 = r40
	nop 0
	(p6) br.cond.dpnt .L362
	;;
	.mib
	getf.sig r14 = f3
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dpnt .L357
	;;
	.mmi
	cmp.ne p6, p7 = 0, r34
	;;
	add r15 = r15, r14
	nop 0
	;;
	.mib
	setf.sig f4 = r15
	nop 0
	(p6) br.cond.dptk .L361
.L358:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L357:
	.mmb
	getf.sig r8 = f2
	adds r18 = 16, r12
	nop 0
	.mmi
	adds r19 = 32, r12
	nop 0
	mov b0 = r38
	;;
	.mmi
	nop 0
	ldf.fill f2 = [r18], 32
	mov ar.pfs = r39
	.mmi
	nop 0
	ldf.fill f3 = [r19]
	nop 0
	;;
	.mib
	ldf.fill f4 = [r18]
	.label_state 1
	.restore sp
	adds r12 = 48, r12
	br.ret.sptk.many b0
.L362:
	.body
	.copy_state 1
	.mmi
	nop 0
	mov r34 = r37
	nop 0
	;;
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L361
	.mib
	nop 0
	nop 0
	br .L358
	.endp bsearch#
	.align 16
	.align 64
	.global bsearch_r#
	.type	bsearch_r#, @function
	.proc bsearch_r#
bsearch_r:
	.prologue 12, 40
	.mmi
	.save ar.pfs, r41
	alloc r41 = ar.pfs, 6, 5, 3, 0
	adds r16 = -32, r12
	adds r17 = -16, r12
	.mmi
	.fframe 48
	adds r12 = -48, r12
	mov r42 = r1
	mov r38 = r34
	;;
	.mmi
	.save.f 0x1
	stf.spill [r16] = f2, 32
	.save.f 0x2
	stf.spill [r17] = f3
	.save rp, r40
	mov r40 = b0
	.mii
	cmp4.eq p6, p7 = 0, r34
	nop 0
	;;
	nop 0
	.mmb
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	setf.sig f3 = r35
	(p6) br.cond.dpnt .L370
	;;
	.mmi
	setf.sig f4 = r33
	nop 0
	nop 0
	.align 32
.L373:
	.mib
	nop 0
	extr r39 = r38, 1, 31
	nop 0
	.mmi
	ld8 r14 = [r36], 8
	mov r45 = r37
	mov r43 = r32
	;;
	.mmi
	setf.sig f6 = r39
	ld8 r1 = [r36], -8
	mov b6 = r14
	;;
	.mmf
	nop 0
	nop 0
	xma.l f2 = f6, f3, f4
	;;
	.mib
	getf.sig r44 = f2
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mib
	cmp4.eq p6, p7 = 0, r8
	mov r1 = r42
	(p6) br.cond.dpnt .L369
	;;
	.mmi
	cmp4.ge p6, p7 = 0, r8
	;;
	(p7) getf.sig r15 = f2
	(p7) adds r38 = -1, r38
	;;
	.mii
	(p7) getf.sig r14 = f3
	(p7) extr r39 = r38, 1, 31
	;;
	mov r38 = r39
	;;
	.mmi
	nop 0
	(p7) add r15 = r15, r14
	nop 0
	;;
	.mib
	(p7) setf.sig f4 = r15
	cmp4.ne p6, p7 = 0, r39
	(p6) br.cond.dptk .L373
.L370:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L369:
	.mmb
	getf.sig r8 = f2
	adds r18 = 16, r12
	nop 0
	.mmi
	adds r19 = 32, r12
	nop 0
	mov b0 = r40
	;;
	.mmi
	nop 0
	ldf.fill f2 = [r18], 32
	mov ar.pfs = r41
	.mmi
	nop 0
	ldf.fill f3 = [r19]
	nop 0
	;;
	.mib
	ldf.fill f4 = [r18]
	.restore sp
	adds r12 = 48, r12
	br.ret.sptk.many b0
	.endp bsearch_r#
	.align 16
	.align 64
	.global div#
	.type	div#, @function
	.proc div#
div:
	.prologue 12, 35
	.mmi
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 2, 0
	.fframe 16
	adds r12 = -16, r12
	sxt4 r32 = r32
	.mii
	mov r37 = r1
	sxt4 r33 = r33
	;;
	.save rp, r35
	mov r35 = b0
	.body
	.mmb
	mov r39 = r33
	mov r38 = r32
	br.call.sptk.many b0 = __divdi3#
	;;
	.mmi
	mov r1 = r37
	mov r39 = r33
	nop 0
	.mmb
	mov r38 = r32
	mov r34 = r8
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmi
	mov r14 = r0
	nop 0
	addp4 r34 = r34, r0
	.mii
	addp4 r8 = r8, r0
	mov r1 = r37
	;;
	shl r34 = r34, 32
	;;
	.mii
	nop 0
	mix4.l r14 = r14, r34
	;;
	mix4.r r14 = r8, r14
	;;
	.mii
	mov r8 = r14
	mov b0 = r35
	;;
	mov ar.pfs = r36
	.mmb
	nop 0
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	.endp div#
	.align 16
	.align 64
	.global imaxabs#
	.type	imaxabs#, @function
	.proc imaxabs#
imaxabs:
	.prologue
	.body
	.mmi
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	.endp imaxabs#
	.align 16
	.align 64
	.global imaxdiv#
	.type	imaxdiv#, @function
	.proc imaxdiv#
imaxdiv:
	.prologue 12, 35
	.mmi
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 2, 0
	.fframe 16
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	.mmi
	mov r37 = r1
	.body
	mov r39 = r33
	mov r38 = r32
	;;
	.mib
	nop 0
	nop 0
	br.call.sptk.many b0 = __divdi3#
	;;
	.mmi
	mov r1 = r37
	mov r34 = r8
	nop 0
	.mmb
	mov r39 = r33
	mov r38 = r32
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmb
	mov r1 = r37
	mov r9 = r8
	nop 0
	.mii
	mov r8 = r34
	mov b0 = r35
	;;
	mov ar.pfs = r36
	.mmb
	nop 0
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	.endp imaxdiv#
	.align 16
	.align 64
	.global labs#
	.type	labs#, @function
	.proc labs#
labs:
	.prologue
	.body
	.mmi
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	.endp labs#
	.align 16
	.align 64
	.global ldiv#
	.type	ldiv#, @function
	.proc ldiv#
ldiv:
	.prologue 12, 35
	.mmi
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 2, 0
	.fframe 16
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	.mmi
	mov r37 = r1
	.body
	mov r39 = r33
	mov r38 = r32
	;;
	.mib
	nop 0
	nop 0
	br.call.sptk.many b0 = __divdi3#
	;;
	.mmi
	mov r1 = r37
	mov r34 = r8
	nop 0
	.mmb
	mov r39 = r33
	mov r38 = r32
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmb
	mov r1 = r37
	mov r9 = r8
	nop 0
	.mii
	mov r8 = r34
	mov b0 = r35
	;;
	mov ar.pfs = r36
	.mmb
	nop 0
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	.endp ldiv#
	.align 16
	.align 64
	.global llabs#
	.type	llabs#, @function
	.proc llabs#
llabs:
	.prologue
	.body
	.mmi
	cmp.le p6, p7 = r0, r32
	;;
	(p7) sub r8 = r0, r32
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	.endp llabs#
	.align 16
	.align 64
	.global lldiv#
	.type	lldiv#, @function
	.proc lldiv#
lldiv:
	.prologue 12, 35
	.mmi
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 4, 2, 0
	.fframe 16
	adds r12 = -16, r12
	.save rp, r35
	mov r35 = b0
	.mmi
	mov r37 = r1
	.body
	mov r39 = r33
	mov r38 = r32
	;;
	.mib
	nop 0
	nop 0
	br.call.sptk.many b0 = __divdi3#
	;;
	.mmi
	mov r1 = r37
	mov r34 = r8
	nop 0
	.mmb
	mov r39 = r33
	mov r38 = r32
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmb
	mov r1 = r37
	mov r9 = r8
	nop 0
	.mii
	mov r8 = r34
	mov b0 = r35
	;;
	mov ar.pfs = r36
	.mmb
	nop 0
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	.endp lldiv#
	.align 16
	.align 64
	.global wcschr#
	.type	wcschr#, @function
	.proc wcschr#
wcschr:
	.prologue
	.body
	.mmi
	ld4 r14 = [r32]
	;;
	cmp4.ne p6, p7 = 0, r14
	cmp4.ne p8, p9 = r14, r33
	;;
	.mmi
	(p8) addl r14 = 1, r0
	nop 0
	(p6) addl r15 = 1, r0
	;;
	.mii
	(p9) mov r14 = r0
	(p7) mov r15 = r0
	;;
	and r14 = r15, r14
	;;
	.mmi
	nop 0
	cmp4.eq p8, p9 = 0, r14
	nop 0
	;;
	.mib
	(p8) mov r8 = r32
	adds r32 = 4, r32
	(p8) br.cond.dpnt .L395
	;;
	.align 32
.L396:
	.mmi
	mov r8 = r32
	ld4 r14 = [r32], 4
	nop 0
	;;
	.mmi
	cmp4.ne p6, p7 = 0, r14
	;;
	(p6) cmp.eq.unc p8, p0 = r0, r0
	(p7) cmp.eq.unc p9, p0 = r0, r0
	.pred.rel.mutex p8, p9
	;;
	.mib
	nop 0
	cmp4.ne.and.orcm p8, p9 = r33, r14
	(p8) br.cond.dptk .L396
.L395:
	.pred.rel.mutex p6, p7
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp wcschr#
	.align 16
	.align 64
	.global wcscmp#
	.type	wcscmp#, @function
	.proc wcscmp#
wcscmp:
	.prologue
	.body
	.mmi
	ld4 r16 = [r32]
	nop 0
	adds r32 = 4, r32
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mmi
	cmp4.ne p6, p7 = 0, r16
	cmp4.eq p8, p9 = r15, r16
	cmp4.ne p10, p11 = 0, r15
	;;
	.mmi
	(p6) addl r17 = 1, r0
	(p8) addl r18 = 1, r0
	(p10) addl r14 = 1, r0
	;;
	.mmi
	(p7) mov r17 = r0
	(p9) mov r18 = r0
	(p11) mov r14 = r0
	;;
	.mmi
	and r17 = r18, r17
	;;
	and r14 = r17, r14
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L403
	.align 32
.L404:
	.mmi
	ld4 r16 = [r32], 4
	ld4 r15 = [r33], 4
	nop 0
	;;
	.mmi
	cmp4.ne p8, p9 = 0, r16
	cmp4.eq p10, p11 = r15, r16
	cmp4.ne p6, p7 = 0, r15
	;;
	.mmi
	(p10) addl r17 = 1, r0
	nop 0
	(p8) addl r14 = 1, r0
	;;
	.mii
	(p11) mov r17 = r0
	(p9) mov r14 = r0
	;;
	and r14 = r17, r14
	;;
	.mib
	nop 0
	tbit.nz.and.orcm p6, p7 = r14, 0
	(p6) br.cond.dptk .L404
	;;
.L403:
	.mmi
	nop 0
	cmp4.gt p6, p7 = r15, r16
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L402
	.mmi
	nop 0
	cmp4.lt p6, p7 = r15, r16
	nop 0
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L402:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp wcscmp#
	.align 16
	.align 64
	.global wcscpy#
	.type	wcscpy#, @function
	.proc wcscpy#
wcscpy:
	.prologue
	.body
	.mmi
	nop 0
	mov r8 = r32
	mov r15 = r32
	.align 32
.L411:
	.mmi
	ld4 r14 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mib
	st4 [r15] = r14, 4
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L411
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp wcscpy#
	.align 16
	.align 64
	.global wcslen#
	.type	wcslen#, @function
	.proc wcslen#
wcslen:
	.prologue
	.body
	.mmi
	ld4 r14 = [r32]
	;;
	cmp4.eq p6, p7 = 0, r14
	adds r14 = 4, r32
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L416
	;;
	.align 32
.L417:
	.mmi
	mov r8 = r14
	nop 0
	adds r14 = 4, r14
	;;
	.mmi
	nop 0
	ld4 r15 = [r8]
	nop 0
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L417
.L416:
	.mmi
	nop 0
	sub r8 = r8, r32
	nop 0
	;;
	.mib
	nop 0
	shr r8 = r8, 2
	br.ret.sptk.many b0
	.endp wcslen#
	.align 16
	.align 64
	.global wcsncmp#
	.type	wcsncmp#, @function
	.proc wcsncmp#
wcsncmp:
	.prologue
	.mmb
	adds r14 = -1, r34
	mov r16 = r32
	nop 0
	.mii
	mov r15 = r33
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.eq p6, p7 = 0, r34
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L427
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L424:
	.mmi
	mov r33 = r15
	nop 0
	mov r32 = r16
	.mmi
	ld4 r14 = [r15], 4
	ld4 r17 = [r16], 4
	nop 0
	;;
	.mmi
	cmp4.eq p10, p11 = r14, r17
	cmp4.ne p8, p9 = 0, r17
	cmp4.ne p6, p7 = 0, r14
	;;
	.mmi
	(p10) addl r17 = 1, r0
	nop 0
	(p8) addl r14 = 1, r0
	;;
	.mii
	(p11) mov r17 = r0
	(p9) mov r14 = r0
	;;
	and r14 = r17, r14
	;;
	.mib
	nop 0
	tbit.nz.and.orcm p6, p7 = r14, 0
	(p7) br.cond.dpnt .L436
	;;
	.mib
	nop 0
	adds r34 = -1, r34
	br.cloop.sptk.few .L424
.L427:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L422:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L436:
	.mib
	nop 0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L427
	.mmi
	ld4 r15 = [r32]
	ld4 r14 = [r33]
	nop 0
	;;
	.mmi
	nop 0
	cmp4.gt p6, p7 = r14, r15
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L422
	.mii
	cmp4.lt p6, p7 = r14, r15
	mov ar.lc = r2
	;;
	(p6) addl r8 = 1, r0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp wcsncmp#
	.align 16
	.align 64
	.global wmemchr#
	.type	wmemchr#, @function
	.proc wmemchr#
wmemchr:
	.prologue
	.mmi
	adds r14 = -1, r34
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	cmp.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L443
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L439:
	.mmi
	mov r8 = r32
	ld4 r14 = [r32], 4
	nop 0
	;;
	.mib
	cmp4.ne p6, p7 = r33, r14
	nop 0
	(p7) br.cond.dpnt .L449
	;;
	.mib
	nop 0
	adds r34 = -1, r34
	br.cloop.sptk.few .L439
	;;
.L443:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L449:
	.mmi
	nop 0
	cmp.ne p6, p7 = 0, r34
	mov ar.lc = r2
	.bbb
	nop 0
	(p7) br.cond.dpnt .L443
	br.ret.sptk.many b0
	.endp wmemchr#
	.align 16
	.align 64
	.global wmemcmp#
	.type	wmemcmp#, @function
	.proc wmemcmp#
wmemcmp:
	.prologue
	.mmb
	adds r16 = -1, r34
	mov r15 = r32
	nop 0
	.mii
	mov r14 = r33
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.eq p6, p7 = 0, r34
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L455
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.align 32
.L452:
	.mmi
	mov r33 = r14
	nop 0
	mov r32 = r15
	.mmi
	adds r14 = 4, r14
	nop 0
	adds r15 = 4, r15
	;;
	.mmi
	ld4 r17 = [r32]
	ld4 r16 = [r33]
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = r16, r17
	nop 0
	(p7) br.cond.dpnt .L464
	;;
	.mib
	nop 0
	adds r34 = -1, r34
	br.cloop.sptk.few .L452
.L455:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L450:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L464:
	.mib
	nop 0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dptk .L455
	;;
	.mmi
	nop 0
	cmp4.gt p6, p7 = r16, r17
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L450
	.mii
	cmp4.lt p6, p7 = r16, r17
	mov ar.lc = r2
	;;
	(p6) addl r8 = 1, r0
	;;
	.mib
	nop 0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	.endp wmemcmp#
	.align 16
	.align 64
	.global wmemcpy#
	.type	wmemcpy#, @function
	.proc wmemcpy#
wmemcpy:
	.prologue 12, 35
	.mmi
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 3, 3, 0
	cmp.eq p6, p7 = 0, r34
	.save rp, r35
	mov r35 = b0
	.mmb
	mov r37 = r1
	.body
	mov r39 = r33
	(p6) br.cond.dpnt .L466
	;;
	.mmi
	nop 0
	shladd r40 = r34, 2, r0
	mov r38 = r32
	.mmb
	nop 0
	nop 0
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	mov r1 = r37
	nop 0
	nop 0
.L466:
	.mmi
	mov r8 = r32
	nop 0
	mov b0 = r35
	;;
	.mib
	nop 0
	mov ar.pfs = r36
	br.ret.sptk.many b0
	.endp wmemcpy#
	.align 16
	.align 64
	.global wmemmove#
	.type	wmemmove#, @function
	.proc wmemmove#
wmemmove:
	.prologue
	.mmb
	cmp.eq p6, p7 = r33, r32
	sub r17 = r32, r33
	nop 0
	.mii
	shladd r16 = r34, 2, r0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	;;
	.mib
	mov r15 = r32
	adds r14 = -1, r34
	(p6) br.cond.dpnt .L473
	;;
	.mib
	nop 0
	cmp.gtu p6, p7 = r16, r17
	(p7) br.cond.dptk .L485
	;;
	.mib
	shladd r14 = r14, 2, r0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L473
	;;
	.mii
	nop 0
	shr.u r15 = r14, 2
	nop 0
	.mii
	add r33 = r33, r14
	add r14 = r32, r14
	;;
	mov ar.lc = r15
	.align 32
.L476:
	.mmi
	nop 0
	ld4 r15 = [r33], -4
	nop 0
	;;
	.mib
	st4 [r14] = r15, -4
	nop 0
	br.cloop.sptk.few .L476
	;;
.L473:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L485:
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L473
	;;
	.mii
	nop 0
	(p6) mov ar.lc = r14
	nop 0
	.align 32
.L475:
	.mmi
	ld4 r14 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mib
	st4 [r15] = r14, 4
	nop 0
	br.cloop.sptk.few .L475
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp wmemmove#
	.align 16
	.align 64
	.global wmemset#
	.type	wmemset#, @function
	.proc wmemset#
wmemset:
	.prologue
	.mmi
	adds r14 = -1, r34
	mov r15 = r32
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	mov r8 = r32
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L487
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	;;
	.align 32
.L488:
	.mib
	st4 [r15] = r33
	adds r15 = 4, r15
	br.cloop.sptk.few .L488
	;;
.L487:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp wmemset#
	.align 16
	.align 64
	.global bcopy#
	.type	bcopy#, @function
	.proc bcopy#
bcopy:
	.prologue
	.mii
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	nop 0
	.mmb
	cmp.leu p6, p7 = r33, r32
	nop 0
	(p6) br.cond.dptk .L496
	;;
	.mmi
	add r14 = r32, r34
	nop 0
	cmp.eq p6, p7 = 0, r34
	.mmb
	adds r34 = -1, r34
	nop 0
	(p6) br.cond.dpnt .L495
	;;
	.mmi
	sub r32 = r14, r32, 1
	add r33 = r33, r34
	nop 0
	.mii
	adds r14 = -1, r14
	nop 0
	;;
	mov ar.lc = r32
	.align 32
.L498:
	.mmi
	nop 0
	ld1 r15 = [r14], -1
	nop 0
	;;
	.mib
	st1 [r33] = r15, -1
	nop 0
	br.cloop.sptk.few .L498
	;;
.L495:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L496:
	.mib
	cmp.eq p6, p7 = r33, r32
	nop 0
	(p6) br.cond.dpnt .L495
	;;
	.mib
	cmp.eq p6, p7 = 0, r34
	add r34 = r32, r34
	(p6) br.cond.dpnt .L495
	;;
	.mii
	sub r34 = r34, r32, 1
	nop 0
	;;
	mov ar.lc = r34
	.align 32
.L499:
	.mmi
	ld1 r14 = [r32]
	nop 0
	adds r32 = 1, r32
	;;
	.mib
	st1 [r33] = r14, 1
	nop 0
	br.cloop.sptk.few .L499
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp bcopy#
	.align 16
	.align 64
	.global rotl64#
	.type	rotl64#, @function
	.proc rotl64#
rotl64:
	.prologue
	.body
	.mii
	sub r14 = r0, r33
	addp4 r33 = r33, r0
	;;
	and r14 = 63, r14
	;;
	.mii
	nop 0
	shl r33 = r32, r33
	;;
	shr.u r32 = r32, r14
	;;
	.mib
	nop 0
	or r8 = r33, r32
	br.ret.sptk.many b0
	.endp rotl64#
	.align 16
	.align 64
	.global rotr64#
	.type	rotr64#, @function
	.proc rotr64#
rotr64:
	.prologue
	.body
	.mii
	sub r14 = r0, r33
	addp4 r33 = r33, r0
	;;
	and r14 = 63, r14
	;;
	.mii
	nop 0
	shr.u r33 = r32, r33
	;;
	shl r32 = r32, r14
	;;
	.mib
	nop 0
	or r8 = r33, r32
	br.ret.sptk.many b0
	.endp rotr64#
	.align 16
	.align 64
	.global rotl32#
	.type	rotl32#, @function
	.proc rotl32#
rotl32:
	.prologue
	.body
	.mii
	sub r33 = 32, r33
	mix4.r r8 = r32, r32
	;;
	addp4 r33 = r33, r0
	;;
	.mib
	nop 0
	shr.u r8 = r8, r33
	br.ret.sptk.many b0
	.endp rotl32#
	.align 16
	.align 64
	.global rotr32#
	.type	rotr32#, @function
	.proc rotr32#
rotr32:
	.prologue
	.body
	.mmi
	addp4 r33 = r33, r0
	nop 0
	mix4.r r8 = r32, r32
	;;
	.mib
	nop 0
	shr.u r8 = r8, r33
	br.ret.sptk.many b0
	.endp rotr32#
	.align 16
	.align 64
	.global rotl_sz#
	.type	rotl_sz#, @function
	.proc rotl_sz#
rotl_sz:
	.prologue
	.body
	.mii
	sub r14 = r0, r33
	addp4 r33 = r33, r0
	;;
	and r14 = 63, r14
	;;
	.mii
	nop 0
	shl r33 = r32, r33
	;;
	shr.u r32 = r32, r14
	;;
	.mib
	nop 0
	or r8 = r33, r32
	br.ret.sptk.many b0
	.endp rotl_sz#
	.align 16
	.align 64
	.global rotr_sz#
	.type	rotr_sz#, @function
	.proc rotr_sz#
rotr_sz:
	.prologue
	.body
	.mii
	sub r14 = r0, r33
	addp4 r33 = r33, r0
	;;
	and r14 = 63, r14
	;;
	.mii
	nop 0
	shr.u r33 = r32, r33
	;;
	shl r32 = r32, r14
	;;
	.mib
	nop 0
	or r8 = r33, r32
	br.ret.sptk.many b0
	.endp rotr_sz#
	.align 16
	.align 64
	.global rotl16#
	.type	rotl16#, @function
	.proc rotl16#
rotl16:
	.prologue
	.body
	.mmi
	sub r14 = r0, r33
	and r33 = 15, r33
	zxt2 r32 = r32
	;;
	.mmi
	nop 0
	and r14 = 15, r14
	nop 0
	;;
	.mii
	nop 0
	shl r33 = r32, r33
	;;
	shr.u r32 = r32, r14
	;;
	.mib
	nop 0
	or r8 = r33, r32
	br.ret.sptk.many b0
	.endp rotl16#
	.align 16
	.align 64
	.global rotr16#
	.type	rotr16#, @function
	.proc rotr16#
rotr16:
	.prologue
	.body
	.mmi
	sub r14 = r0, r33
	and r33 = 15, r33
	zxt2 r8 = r32
	;;
	.mmi
	nop 0
	and r14 = 15, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r32 = r8, r33
	;;
	shl r8 = r8, r14
	;;
	.mib
	nop 0
	or r8 = r8, r32
	br.ret.sptk.many b0
	.endp rotr16#
	.align 16
	.align 64
	.global rotl8#
	.type	rotl8#, @function
	.proc rotl8#
rotl8:
	.prologue
	.body
	.mmi
	sub r14 = r0, r33
	and r33 = 7, r33
	zxt1 r32 = r32
	;;
	.mmi
	nop 0
	and r14 = 7, r14
	nop 0
	;;
	.mii
	nop 0
	shl r33 = r32, r33
	;;
	shr.u r32 = r32, r14
	;;
	.mib
	nop 0
	or r8 = r33, r32
	br.ret.sptk.many b0
	.endp rotl8#
	.align 16
	.align 64
	.global rotr8#
	.type	rotr8#, @function
	.proc rotr8#
rotr8:
	.prologue
	.body
	.mmi
	sub r14 = r0, r33
	and r33 = 7, r33
	zxt1 r8 = r32
	;;
	.mmi
	nop 0
	and r14 = 7, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r32 = r8, r33
	;;
	shl r8 = r8, r14
	;;
	.mib
	nop 0
	or r8 = r8, r32
	br.ret.sptk.many b0
	.endp rotr8#
	.align 16
	.align 64
	.global bswap_16#
	.type	bswap_16#, @function
	.proc bswap_16#
bswap_16:
	.prologue
	.body
	.mii
	nop 0
	extr.u r8 = r32, 8, 8
	zxt2 r32 = r32
	;;
	.mii
	nop 0
	dep.z r32 = r32, 8, 24
	nop 0
	;;
	.mib
	nop 0
	or r8 = r32, r8
	br.ret.sptk.many b0
	.endp bswap_16#
	.align 16
	.align 64
	.global bswap_32#
	.type	bswap_32#, @function
	.proc bswap_32#
bswap_32:
	.prologue
	.body
	.mib
	nop 0
	dep.z r14 = r32, 8, 24
	nop 0
	.mlx
	nop 0
	movl r15 = 16711680
	;;
	.mmi
	and r8 = r32, r15
	and r14 = r15, r14
	dep.z r15 = r32, 24, 8
	;;
	.mii
	or r14 = r15, r14
	extr.u r32 = r32, 24, 8
	shr.u r8 = r8, 8
	;;
	.mmi
	nop 0
	or r14 = r32, r14
	nop 0
	;;
	.mib
	nop 0
	or r8 = r8, r14
	br.ret.sptk.many b0
	.endp bswap_32#
	.align 16
	.align 64
	.global bswap_64#
	.type	bswap_64#, @function
	.proc bswap_64#
bswap_64:
	.prologue
	.body
	.mib
	nop 0
	mux1 r8 = r32, @rev
	br.ret.sptk.many b0
	.endp bswap_64#
	.align 16
	.align 64
	.global ffs#
	.type	ffs#, @function
	.proc ffs#
ffs:
	.prologue
	.mmi
	mov r8 = r0
	addp4 r32 = r32, r0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmi
	nop 0
	;;
	nop 0
	mov ar.lc = 31
	.align 32
.L539:
	.mii
	addp4 r14 = r8, r0
	adds r8 = 1, r8
	;;
	shr.u r14 = r32, r14
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r14, 0
	nop 0
	.bbb
	nop 0
	(p7) br.cond.dpnt .L536
	br.cloop.sptk.few .L539
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L536:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp ffs#
	.align 16
	.align 64
	.global libiberty_ffs#
	.type	libiberty_ffs#, @function
	.proc libiberty_ffs#
libiberty_ffs:
	.prologue
	.body
	.mmi
	cmp4.eq p6, p7 = 0, r32
	nop 0
	and r14 = 1, r32
	;;
	.mib
	(p6) mov r8 = r0
	nop 0
	(p6) br.cond.dpnt .L543
	;;
	.mmi
	nop 0
	mov r8 = r14
	cmp4.ne p6, p7 = 0, r14
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L543
	;;
	.mmi
	addl r8 = 1, r0
	nop 0
	nop 0
	;;
	.align 32
.L545:
	.mii
	nop 0
	extr r14 = r32, 1, 31
	adds r8 = 1, r8
	;;
	.mib
	mov r32 = r14
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L545
.L543:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp libiberty_ffs#
	.align 16
	.align 64
	.global gl_isinff#
	.type	gl_isinff#, @function
	.proc gl_isinff#
gl_isinff:
	.prologue
	.body
	.mlx
	nop 0
	movl r14 = 0xff7fffff
	;;
	.mmi
	nop 0
	setf.s f6 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f6
	;;
	.mib
	nop 0
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L550
	.mlx
	nop 0
	movl r14 = 0x7f7fffff
	;;
	.mmi
	nop 0
	setf.s f6 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f6
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L550:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp gl_isinff#
	.align 16
	.align 64
	.global gl_isinfd#
	.type	gl_isinfd#, @function
	.proc gl_isinfd#
gl_isinfd:
	.prologue
	.body
	.mlx
	nop 0
	movl r14 = 0xffefffffffffffff
	;;
	.mmi
	nop 0
	setf.d f6 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f6
	;;
	.mib
	nop 0
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L555
	.mlx
	nop 0
	movl r14 = 0x7fefffffffffffff
	;;
	.mmi
	nop 0
	setf.d f6 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f6
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L555:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
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
	.mlx
	nop 0
	movl r14 = @gprel(.LC0)
	;;
	.mmi
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f6
	;;
	.mib
	nop 0
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L560
	.mlx
	nop 0
	movl r14 = @gprel(.LC1)
	;;
	.mmi
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f6
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L560:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp gl_isinfl#
	.align 16
	.align 64
	.global _Qp_itoq#
	.type	_Qp_itoq#, @function
	.proc _Qp_itoq#
_Qp_itoq:
	.prologue
	.body
	.mii
	nop 0
	sxt4 r33 = r33
	nop 0
	;;
	.mmi
	nop 0
	setf.sig f6 = r33
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcvt.xf f6 = f6
	;;
	.mib
	stfe [r32] = f6
	nop 0
	br.ret.sptk.many b0
	.endp _Qp_itoq#
	.align 16
	.align 64
	.global ldexpf#
	.type	ldexpf#, @function
	.proc ldexpf#
ldexpf:
	.prologue
	.body
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L568
	;;
	.mmf
	nop 0
	nop 0
	fadd.s f6 = f8, f8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.eq p6, p7 = f6, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L568
	.mmi
	nop 0
	cmp4.le p6, p7 = r0, r33
	nop 0
	;;
	.mlx
	nop 0
	(p7) movl r14 = 0x3f000000
	;;
	.mlx
	nop 0
	(p6) movl r14 = 0x40000000
	;;
	.mii
	setf.s f6 = r14
	extr.u r14 = r33, 31, 1
	;;
	tbit.z p6, p7 = r33, 0
	.mmi
	add r33 = r14, r33
	;;
	nop 0
	extr r33 = r33, 1, 31
	;;
	.mfi
	nop 0
	(p7) fmpy.s f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r33
	nop 0
	(p6) br.cond.dpnt .L568
	.align 32
.L578:
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	extr.u r14 = r33, 31, 1
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r33, 0
	add r33 = r14, r33
	;;
	.mii
	nop 0
	extr r33 = r33, 1, 31
	nop 0
	;;
	.mfi
	nop 0
	(p7) fmpy.s f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r33
	nop 0
	(p7) br.cond.dptk .L578
.L568:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp ldexpf#
	.align 16
	.align 64
	.global ldexp#
	.type	ldexp#, @function
	.proc ldexp#
ldexp:
	.prologue
	.body
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L580
	;;
	.mmf
	nop 0
	nop 0
	fadd.d f6 = f8, f8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.eq p6, p7 = f6, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L580
	.mmi
	nop 0
	cmp4.le p6, p7 = r0, r33
	nop 0
	;;
	.mlx
	nop 0
	(p7) movl r14 = 0x3fe0000000000000
	;;
	.mlx
	nop 0
	(p6) movl r14 = 0x4000000000000000
	;;
	.mii
	setf.d f6 = r14
	extr.u r14 = r33, 31, 1
	;;
	tbit.z p6, p7 = r33, 0
	.mmi
	add r33 = r14, r33
	;;
	nop 0
	extr r33 = r33, 1, 31
	;;
	.mfi
	nop 0
	(p7) fmpy.d f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r33
	nop 0
	(p6) br.cond.dpnt .L580
	.align 32
.L590:
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	extr.u r14 = r33, 31, 1
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r33, 0
	add r33 = r14, r33
	;;
	.mii
	nop 0
	extr r33 = r33, 1, 31
	nop 0
	;;
	.mfi
	nop 0
	(p7) fmpy.d f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r33
	nop 0
	(p7) br.cond.dptk .L590
.L580:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
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
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L592
	;;
	.mmf
	nop 0
	nop 0
	fadd f6 = f8, f8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.eq p6, p7 = f6, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L592
	.mmi
	nop 0
	cmp4.le p6, p7 = r0, r34
	nop 0
	;;
	.mlx
	nop 0
	(p7) movl r14 = @gprel(.LC5)
	;;
	.mlx
	nop 0
	(p6) movl r14 = @gprel(.LC4)
	;;
	.mmi
	add r14 = r1, r14
	nop 0
	tbit.z p6, p7 = r34, 0
	;;
	.mii
	ldfe f6 = [r14]
	extr.u r14 = r34, 31, 1
	;;
	add r34 = r14, r34
	;;
	.mii
	nop 0
	extr r34 = r34, 1, 31
	nop 0
	;;
	.mfi
	nop 0
	(p7) fmpy f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L592
	.align 32
.L602:
	.mfi
	nop 0
	fmpy f6 = f6, f6
	extr.u r14 = r34, 31, 1
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r34, 0
	add r34 = r14, r34
	;;
	.mii
	nop 0
	extr r34 = r34, 1, 31
	nop 0
	;;
	.mfi
	nop 0
	(p7) fmpy f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r34
	nop 0
	(p7) br.cond.dptk .L602
.L592:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp ldexpl#
	.align 16
	.align 64
	.global memxor#
	.type	memxor#, @function
	.proc memxor#
memxor:
	.prologue
	.mmb
	cmp.eq p6, p7 = 0, r34
	add r34 = r33, r34
	nop 0
	.mii
	mov r17 = r32
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	;;
	.mib
	nop 0
	sub r34 = r34, r33, 1
	(p6) br.cond.dpnt .L604
	;;
	.mii
	nop 0
	mov ar.lc = r34
	nop 0
	.align 32
.L605:
	.mmi
	ld1 r15 = [r17]
	mov r14 = r17
	adds r17 = 1, r17
	.mii
	ld1 r16 = [r33]
	adds r33 = 1, r33
	;;
	xor r15 = r16, r15
	;;
	.mib
	st1 [r14] = r15
	nop 0
	br.cloop.sptk.few .L605
	;;
.L604:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp memxor#
	.align 16
	.align 64
	.global strncat#
	.type	strncat#, @function
	.proc strncat#
strncat:
	.prologue
	.mmi
	ld1 r14 = [r32]
	adds r16 = 1, r32
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmi
	nop 0
	mov r8 = r32
	nop 0
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) mov r14 = r32
	(p6) br.cond.dpnt .L613
	;;
	.align 32
.L614:
	.mmi
	mov r14 = r16
	nop 0
	adds r16 = 1, r16
	;;
	.mmi
	ld1 r15 = [r14]
	;;
	nop 0
	sxt1 r15 = r15
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L614
	;;
.L613:
	.mmi
	adds r15 = -1, r34
	nop 0
	mov r16 = r14
	.mmb
	cmp.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L621
	;;
	.mii
	nop 0
	mov ar.lc = r15
	nop 0
	.align 32
.L616:
	.mii
	ld1 r15 = [r33], 1
	mov r14 = r16
	;;
	sxt1 r17 = r15
	.mmi
	st1 [r16] = r15
	nop 0
	adds r16 = 1, r16
	;;
	.mib
	cmp4.ne p6, p7 = 0, r17
	nop 0
	(p7) br.cond.dpnt .L627
	;;
	.mib
	nop 0
	adds r34 = -1, r34
	br.cloop.sptk.few .L616
	.mmi
	mov r14 = r16
	nop 0
	nop 0
	;;
.L621:
	.mmi
	st1 [r14] = r0
	nop 0
	nop 0
.L618:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L627:
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r34
	(p6) br.cond.dptk .L618
	.mib
	st1 [r14] = r0
	nop 0
	br .L618
	.endp strncat#
	.align 16
	.align 64
	.global strnlen#
	.type	strnlen#, @function
	.proc strnlen#
strnlen:
	.prologue
	.mii
	cmp.eq p6, p7 = 0, r33
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	adds r33 = -1, r33
	;;
	.mmi
	nop 0
	(p6) mov r8 = r0
	mov ar.lc = r33
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L628
	;;
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L630:
	.mmi
	ld1 r14 = [r32], 1
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L637
.L628:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L637:
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L630
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp strnlen#
	.align 16
	.align 64
	.global strpbrk#
	.type	strpbrk#, @function
	.proc strpbrk#
strpbrk:
	.prologue
	.body
	.mii
	ld1 r14 = [r32]
	mov r8 = r32
	;;
	sxt1 r14 = r14
	;;
	.mib
	mov r16 = r14
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L643
.L639:
	.mmi
	mov r15 = r33
	nop 0
	nop 0
	;;
	.align 32
.L642:
	.mmi
	ld1 r14 = [r15], 1
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mib
	cmp4.ne p6, p7 = 0, r14
	nop 0
	(p7) br.cond.dpnt .L647
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r16, r14
	(p7) br.cond.dptk .L642
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L647:
	.mmi
	adds r8 = 1, r8
	;;
	ld1 r14 = [r8]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mib
	mov r16 = r14
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L639
.L643:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	.endp strpbrk#
	.align 16
	.align 64
	.global strrchr#
	.type	strrchr#, @function
	.proc strrchr#
strrchr:
	.prologue
	.body
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L650:
	.mmi
	mov r15 = r32
	ld1 r14 = [r32], 1
	nop 0
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mmi
	cmp4.eq p8, p9 = r33, r14
	nop 0
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p8) mov r8 = r15
	(p6) br.cond.dptk .L650
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp strrchr#
	.align 16
	.align 64
	.global strstr#
	.type	strstr#, @function
	.proc strstr#
strstr:
	.prologue
	.body
	.mii
	ld1 r14 = [r33]
	adds r15 = 1, r33
	;;
	sxt1 r14 = r14
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r14
	nop 0
	mov r19 = r14
	;;
	.mib
	nop 0
	(p6) mov r16 = r33
	(p6) br.cond.dpnt .L656
	;;
	.align 32
.L657:
	.mmi
	mov r16 = r15
	nop 0
	adds r15 = 1, r15
	;;
	.mmi
	ld1 r14 = [r16]
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L657
	;;
.L656:
	.mmi
	nop 0
	cmp.eq p6, p7 = r33, r16
	sub r20 = r16, r33
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L674
	;;
	.mmi
	(p7) add r20 = r33, r20
	nop 0
	nop 0
	.align 32
.L664:
	.mmi
	ld1 r14 = [r32]
	mov r8 = r32
	adds r32 = 1, r32
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = r19, r14
	nop 0
	(p6) br.cond.dpnt .L663
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L664
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L655:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L663:
	.mib
	cmp.ne p6, p7 = 0, r8
	nop 0
	(p7) br.cond.dpnt .L655
	;;
	.mmi
	ld1 r14 = [r8]
	;;
	mov r16 = r14
	cmp4.eq p6, p7 = 0, r14
	.mmb
	nop 0
	mov r14 = r33
	(p6) br.cond.dpnt .L668
	;;
	.align 32
.L661:
	.mmi
	ld1 r15 = [r14]
	mov r17 = r14
	adds r14 = 1, r14
	;;
	.mmi
	cmp4.eq p8, p9 = r16, r15
	nop 0
	cmp4.ne p6, p7 = 0, r15
	;;
	.mii
	(p8) addl r18 = 1, r0
	(p6) addl r15 = 1, r0
	;;
	(p9) mov r18 = r0
	.mii
	(p7) mov r15 = r0
	cmp.ne p6, p7 = r14, r20
	;;
	and r15 = r18, r15
	;;
	.mib
	nop 0
	tbit.nz.and.orcm p6, p7 = r15, 0
	(p7) br.cond.dpnt .L660
	;;
	.mmi
	nop 0
	ld1 r15 = [r32], 1
	nop 0
	;;
	.mib
	mov r16 = r15
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L661
	.mmi
	mov r17 = r14
	nop 0
	nop 0
	;;
.L660:
	.mmi
	ld1 r14 = [r17]
	nop 0
	adds r32 = 1, r8
	;;
	.mbb
	cmp4.eq p6, p7 = r16, r14
	(p6) br.cond.dpnt .L655
	br .L664
.L674:
	.mib
	nop 0
	mov r8 = r32
	br.ret.sptk.many b0
.L668:
	.mib
	nop 0
	mov r17 = r33
	br .L660
	.endp strstr#
	.align 16
	.align 64
	.global copysign#
	.type	copysign#, @function
	.proc copysign#
copysign:
	.prologue
	.body
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L686
.L676:
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L679
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L678
.L679:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L686:
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dptk .L676
.L678:
	.mfb
	nop 0
	fneg f8 = f8
	br.ret.sptk.many b0
	.endp copysign#
	.align 16
	.align 64
	.global memmem#
	.type	memmem#, @function
	.proc memmem#
memmem:
	.prologue
	.mmi
	cmp.eq p6, p7 = 0, r35
	sub r19 = r33, r35
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	;;
	.mib
	(p6) mov r8 = r32
	add r19 = r32, r19
	(p6) br.cond.dpnt .L687
	;;
	.mib
	cmp.gtu p6, p7 = r35, r33
	nop 0
	(p6) br.cond.dpnt .L697
	;;
	.mib
	cmp.ltu p6, p7 = r19, r32
	nop 0
	(p6) br.cond.dpnt .L697
	;;
	.mii
	ld1 r20 = [r34], 1
	nop 0
	;;
	sxt1 r20 = r20
	.align 32
.L694:
	.mmi
	ld1 r14 = [r32]
	mov r8 = r32
	adds r32 = 1, r32
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mib
	cmp4.ne p6, p7 = r20, r14
	nop 0
	(p7) br.cond.dpnt .L710
	;;
	.mib
	nop 0
	cmp.geu p6, p7 = r19, r32
	(p6) br.cond.dptk .L694
.L697:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L687:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L710:
	.mmi
	adds r18 = -1, r35
	mov r17 = r32
	nop 0
	.mmb
	mov r16 = r34
	cmp.eq p6, p7 = 1, r35
	(p6) br.cond.dpnt .L687
	;;
	.mii
	adds r14 = -1, r18
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L691:
	.mmi
	ld1 r15 = [r17]
	nop 0
	adds r17 = 1, r17
	.mmi
	ld1 r14 = [r16]
	nop 0
	adds r16 = 1, r16
	;;
	.mib
	cmp4.eq p6, p7 = r14, r15
	nop 0
	(p7) br.cond.dpnt .L711
	;;
	.mib
	nop 0
	adds r18 = -1, r18
	br.cloop.sptk.few .L691
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L711:
	.mib
	nop 0
	cmp.eq p6, p7 = 0, r18
	(p6) br.cond.dptk .L687
	;;
	.mib
	cmp.eq p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L687
	;;
	.mib
	nop 0
	cmp.geu p6, p7 = r19, r32
	(p6) br.cond.dptk .L694
	.mib
	nop 0
	nop 0
	br .L697
	.endp memmem#
	.align 16
	.align 64
	.global mempcpy#
	.type	mempcpy#, @function
	.proc mempcpy#
mempcpy:
	.prologue 12, 35
	.mmi
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 3, 3, 0
	cmp.eq p6, p7 = 0, r34
	.save rp, r35
	mov r35 = b0
	.mmb
	mov r37 = r1
	.body
	mov r39 = r33
	(p6) br.cond.dpnt .L713
	;;
	.mmi
	nop 0
	mov r40 = r34
	mov r38 = r32
	.mmb
	nop 0
	nop 0
	br.call.sptk.many b0 = memmove#
	;;
	.mmi
	mov r1 = r37
	nop 0
	nop 0
.L713:
	.mmi
	add r8 = r32, r34
	nop 0
	mov b0 = r35
	;;
	.mib
	nop 0
	mov ar.pfs = r36
	br.ret.sptk.many b0
	.endp mempcpy#
	.align 16
	.align 64
	.global frexp#
	.type	frexp#, @function
	.proc frexp#
frexp:
	.prologue
	.body
	.mfi
	nop 0
	fcmp.lt p6, p7 = f8, f0
	mov r14 = r0
	.mlx
	nop 0
	movl r16 = 0x3fe0000000000000
	;;
	.mmi
	nop 0
	setf.d f6 = r16
	nop 0
	;;
	.mfi
	nop 0
	(p6) fneg f8 = f8
	(p7) mov r15 = r0
	;;
	.mmi
	nop 0
	(p6) addl r15 = 1, r0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.ge p6, p7 = f8, f1
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L738
	.align 32
.L724:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	adds r14 = 1, r14
	;;
	.mmf
	nop 0
	nop 0
	fcmp.ge p6, p7 = f8, f1
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L724
.L725:
	.mmi
	cmp4.eq p6, p7 = 0, r15
	st4 [r33] = r14
	nop 0
	;;
	.mfb
	nop 0
	(p7) fneg f8 = f8
	br.ret.sptk.many b0
	;;
.L738:
	.mlx
	nop 0
	movl r14 = 0x3fe0000000000000
	.mmf
	nop 0
	nop 0
	fcmp.neq p6, p7 = f8, f0
	;;
	.mmi
	setf.d f6 = r14
	;;
	(p6) addl r14 = 1, r0
	nop 0
	;;
	.mmi
	nop 0
	(p7) mov r14 = r0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p8, p9 = f8, f6
	;;
	.mmi
	(p8) addl r16 = 1, r0
	;;
	(p9) mov r16 = r0
	nop 0
	;;
	.mmi
	nop 0
	and r14 = r16, r14
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = 0, r14
	mov r14 = r0
	(p6) br.cond.dptk .L725
	;;
	.align 32
.L726:
	.mfi
	nop 0
	fadd.d f8 = f8, f8
	adds r14 = -1, r14
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f6
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L725
	;;
	.mfi
	nop 0
	fadd.d f8 = f8, f8
	adds r14 = -1, r14
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f6
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L726
	.mib
	nop 0
	nop 0
	br .L725
	.endp frexp#
	.align 16
	.align 64
	.global __muldi3#
	.type	__muldi3#, @function
	.proc __muldi3#
__muldi3:
	.prologue
	.body
	.mib
	mov r8 = r0
	cmp.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L742
	.align 32
.L744:
	.mii
	nop 0
	extr r14 = r32, 0, 1
	shr.u r32 = r32, 1
	;;
	.mmi
	and r14 = r33, r14
	cmp.ne p6, p7 = 0, r32
	shladd r33 = r33, 1, r0
	;;
	.mib
	nop 0
	add r8 = r8, r14
	(p6) br.cond.dptk .L744
.L742:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __muldi3#
	.align 16
	.align 64
	.global udivmodsi4#
	.type	udivmodsi4#, @function
	.proc udivmodsi4#
udivmodsi4:
	.prologue
	.body
	.mib
	addl r14 = 1, r0
	cmp4.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L758
	;;
	.align 32
.L750:
	.mib
	cmp4.le p6, p7 = r0, r33
	nop 0
	(p7) br.cond.dpnt .L764
	;;
	.mmi
	shladd r33 = r33, 1, r0
	nop 0
	shladd r14 = r14, 1, r0
	;;
	.mmi
	cmp4.ltu p6, p7 = r33, r32
	nop 0
	cmp4.ne p8, p9 = 0, r14
	;;
	.mib
	nop 0
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L750
	.mib
	nop 0
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L753
	;;
.L758:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L752:
	.mmi
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) or r8 = r8, r14
	extr.u r14 = r14, 1, 31
	.mii
	(p7) sub r32 = r32, r33
	nop 0
	;;
	extr.u r33 = r33, 1, 31
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L752
	;;
.L753:
	.mmi
	nop 0
	cmp.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
.L764:
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r14
	(p8) br.cond.dptk .L758
	;;
	.mmi
	(p9) mov r8 = r0
	nop 0
	nop 0
	.mib
	nop 0
	nop 0
	br .L753
	.endp udivmodsi4#
	.align 16
	.align 64
	.global __clrsbqi2#
	.type	__clrsbqi2#, @function
	.proc __clrsbqi2#
__clrsbqi2:
	.prologue
	.body
	.mii
	nop 0
	extr r14 = r32, 7, 1
	sxt1 r15 = r32
	;;
	.mii
	xor r32 = r32, r14
	cmp4.eq p6, p7 = r15, r14
	;;
	sxt1 r32 = r32
	.mii
	(p7) addl r14 = 65566, r0
	(p6) addl r8 = 7, r0
	;;
	(p7) dep.z r32 = r32, 8, 24
	;;
	.mmi
	(p7) addp4 r32 = r32, r0
	;;
	(p7) setf.sig f6 = r32
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	(p7) fcvt.xuf f6 = f6
	;;
	.mmi
	nop 0
	(p7) getf.exp r8 = f6
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r14, r8, 1
	br.ret.sptk.many b0
	.endp __clrsbqi2#
	.align 16
	.align 64
	.global __clrsbdi2#
	.type	__clrsbdi2#, @function
	.proc __clrsbdi2#
__clrsbdi2:
	.prologue
	.body
	.mii
	nop 0
	shr r15 = r32, 63
	nop 0
	;;
	.mmi
	cmp.eq p6, p7 = r15, r32
	nop 0
	xor r14 = r15, r32
	;;
	.mmi
	(p7) setf.sig f7 = r14
	(p7) addl r14 = 65598, r0
	(p6) addl r8 = 63, r0
	;;
	.mmf
	nop 0
	nop 0
	(p7) fcvt.xuf f6 = f7
	;;
	.mmi
	nop 0
	(p7) getf.exp r8 = f6
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r14, r8, 1
	br.ret.sptk.many b0
	.endp __clrsbdi2#
	.align 16
	.align 64
	.global __mulsi3#
	.type	__mulsi3#, @function
	.proc __mulsi3#
__mulsi3:
	.prologue
	.body
	.mib
	mov r8 = r0
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L773
	.align 32
.L775:
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.mii
	and r14 = r33, r14
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
	;;
	.mib
	add r8 = r8, r14
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L775
.L773:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __mulsi3#
	.align 16
	.align 64
	.global __cmovd#
	.type	__cmovd#, @function
	.proc __cmovd#
__cmovd:
	.prologue
	.mii
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	and r17 = -8, r34
	.mmb
	nop 0
	cmp.gtu p6, p7 = r33, r32
	nop 0
	;;
	.mib
	nop 0
	extr.u r16 = r34, 3, 29
	(p6) br.cond.dptk .L781
	.mmi
	addp4 r15 = r34, r0
	;;
	add r15 = r33, r15
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r15, r32
	(p7) br.cond.dptk .L796
	;;
.L781:
	.mmi
	cmp4.eq p6, p7 = 0, r16
	addp4 r16 = r16, r0
	nop 0
	.mmb
	mov r15 = r33
	mov r14 = r32
	(p6) br.cond.dpnt .L784
	;;
	.mmi
	shladd r16 = r16, 3, r0
	;;
	adds r16 = -8, r16
	nop 0
	;;
	.mii
	nop 0
	shr.u r16 = r16, 3
	;;
	mov ar.lc = r16
	.align 32
.L785:
	.mmi
	nop 0
	ld8 r16 = [r15], 8
	nop 0
	;;
	.mib
	st8 [r14] = r16, 8
	nop 0
	br.cloop.sptk.few .L785
.L784:
	.mmi
	cmp4.geu p6, p7 = r17, r34
	nop 0
	addp4 r15 = r17, r0
	.mmb
	sub r17 = r34, r17, 1
	nop 0
	(p6) br.cond.dpnt .L780
	;;
	.mmi
	add r14 = r33, r15, 1
	nop 0
	addp4 r17 = r17, r0
	.mii
	add r33 = r33, r15
	add r32 = r32, r15
	;;
	add r14 = r14, r17
	;;
	.mii
	sub r14 = r14, r33, 1
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L786:
	.mmi
	nop 0
	ld1 r14 = [r33], 1
	nop 0
	;;
	.mib
	st1 [r32] = r14, 1
	nop 0
	br.cloop.sptk.few .L786
	;;
.L780:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L796:
	.mib
	cmp4.ne p6, p7 = 0, r34
	adds r14 = -1, r34
	(p7) br.cond.dpnt .L780
	;;
	.mmi
	nop 0
	(p6) addp4 r14 = r14, r0
	nop 0
	;;
	.mmi
	(p6) add r33 = r33, r14
	(p6) add r32 = r32, r14
	(p6) mov ar.lc = r14
	;;
	.align 32
.L787:
	.mmi
	nop 0
	ld1 r14 = [r33], -1
	nop 0
	;;
	.mib
	st1 [r32] = r14, -1
	nop 0
	br.cloop.sptk.few .L787
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp __cmovd#
	.align 16
	.align 64
	.global __cmovh#
	.type	__cmovh#, @function
	.proc __cmovh#
__cmovh:
	.prologue
	.mii
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.gtu p6, p7 = r33, r32
	;;
	.mib
	nop 0
	extr.u r16 = r34, 1, 31
	(p6) br.cond.dptk .L798
	.mmi
	addp4 r15 = r34, r0
	;;
	add r15 = r33, r15
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r15, r32
	(p7) br.cond.dptk .L811
	;;
.L798:
	.mmi
	cmp4.eq p6, p7 = 0, r16
	addp4 r16 = r16, r0
	nop 0
	.mmb
	mov r15 = r33
	mov r14 = r32
	(p6) br.cond.dpnt .L801
	;;
	.mmi
	shladd r16 = r16, 1, r0
	;;
	adds r16 = -2, r16
	nop 0
	;;
	.mii
	nop 0
	shr.u r16 = r16, 1
	;;
	mov ar.lc = r16
	.align 32
.L802:
	.mmi
	nop 0
	ld2 r16 = [r15], 2
	nop 0
	;;
	.mib
	st2 [r14] = r16, 2
	nop 0
	br.cloop.sptk.few .L802
.L801:
	.mib
	nop 0
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L797
	.mmi
	adds r34 = -1, r34
	;;
	addp4 r34 = r34, r0
	nop 0
	;;
	.mii
	add r33 = r33, r34
	add r32 = r32, r34
	;;
	nop 0
	.mmi
	ld1 r15 = [r33]
	;;
	st1 [r32] = r15
	nop 0
.L797:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L811:
	.mib
	cmp4.ne p6, p7 = 0, r34
	adds r16 = -1, r34
	(p7) br.cond.dpnt .L797
	;;
	.mmi
	nop 0
	(p6) addp4 r16 = r16, r0
	nop 0
	;;
	.mmi
	(p6) add r33 = r33, r16
	(p6) add r32 = r32, r16
	(p6) mov ar.lc = r16
	;;
	.align 32
.L803:
	.mmi
	nop 0
	ld1 r16 = [r33], -1
	nop 0
	;;
	.mib
	st1 [r32] = r16, -1
	nop 0
	br.cloop.sptk.few .L803
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp __cmovh#
	.align 16
	.align 64
	.global __cmovw#
	.type	__cmovw#, @function
	.proc __cmovw#
__cmovw:
	.prologue
	.mii
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	and r17 = -4, r34
	.mmb
	nop 0
	cmp.gtu p6, p7 = r33, r32
	nop 0
	;;
	.mib
	nop 0
	extr.u r16 = r34, 2, 30
	(p6) br.cond.dptk .L813
	.mmi
	addp4 r15 = r34, r0
	;;
	add r15 = r33, r15
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r15, r32
	(p7) br.cond.dptk .L828
	;;
.L813:
	.mmi
	cmp4.eq p6, p7 = 0, r16
	addp4 r16 = r16, r0
	nop 0
	.mmb
	mov r15 = r33
	mov r14 = r32
	(p6) br.cond.dpnt .L816
	;;
	.mmi
	shladd r16 = r16, 2, r0
	;;
	adds r16 = -4, r16
	nop 0
	;;
	.mii
	nop 0
	shr.u r16 = r16, 2
	;;
	mov ar.lc = r16
	.align 32
.L817:
	.mmi
	nop 0
	ld4 r16 = [r15], 4
	nop 0
	;;
	.mib
	st4 [r14] = r16, 4
	nop 0
	br.cloop.sptk.few .L817
.L816:
	.mmi
	cmp4.geu p6, p7 = r17, r34
	nop 0
	addp4 r15 = r17, r0
	.mmb
	sub r17 = r34, r17, 1
	nop 0
	(p6) br.cond.dpnt .L812
	;;
	.mmi
	add r14 = r33, r15, 1
	nop 0
	addp4 r17 = r17, r0
	.mii
	add r33 = r33, r15
	add r32 = r32, r15
	;;
	add r14 = r14, r17
	;;
	.mii
	sub r14 = r14, r33, 1
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L818:
	.mmi
	nop 0
	ld1 r14 = [r33], 1
	nop 0
	;;
	.mib
	st1 [r32] = r14, 1
	nop 0
	br.cloop.sptk.few .L818
	;;
.L812:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L828:
	.mib
	cmp4.ne p6, p7 = 0, r34
	adds r14 = -1, r34
	(p7) br.cond.dpnt .L812
	;;
	.mmi
	nop 0
	(p6) addp4 r14 = r14, r0
	nop 0
	;;
	.mmi
	(p6) add r33 = r33, r14
	(p6) add r32 = r32, r14
	(p6) mov ar.lc = r14
	;;
	.align 32
.L819:
	.mmi
	nop 0
	ld1 r14 = [r33], -1
	nop 0
	;;
	.mib
	st1 [r32] = r14, -1
	nop 0
	br.cloop.sptk.few .L819
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp __cmovw#
	.align 16
	.align 64
	.global __modi#
	.type	__modi#, @function
	.proc __modi#
__modi:
	.prologue 12, 34
	.mmi
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 3, 2, 0
	nop 0
	.save rp, r34
	mov r34 = b0
	.mmi
	mov r36 = r1
	.body
	nop 0
	sxt4 r38 = r33
	;;
	.mib
	nop 0
	sxt4 r37 = r32
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmi
	mov r1 = r36
	nop 0
	mov b0 = r34
	;;
	.mib
	nop 0
	mov ar.pfs = r35
	br.ret.sptk.many b0
	.endp __modi#
	.align 16
	.align 64
	.global __uitod#
	.type	__uitod#, @function
	.proc __uitod#
__uitod:
	.prologue
	.body
	.mmi
	addp4 r32 = r32, r0
	;;
	setf.sig f8 = r32
	nop 0
	;;
	.mfb
	nop 0
	fcvt.xuf.d f8 = f8
	br.ret.sptk.many b0
	.endp __uitod#
	.align 16
	.align 64
	.global __uitof#
	.type	__uitof#, @function
	.proc __uitof#
__uitof:
	.prologue
	.body
	.mmi
	addp4 r32 = r32, r0
	;;
	setf.sig f8 = r32
	nop 0
	;;
	.mfb
	nop 0
	fcvt.xuf.s f8 = f8
	br.ret.sptk.many b0
	.endp __uitof#
	.align 16
	.align 64
	.global __ulltod#
	.type	__ulltod#, @function
	.proc __ulltod#
__ulltod:
	.prologue
	.body
	.mmi
	nop 0
	setf.sig f6 = r32
	nop 0
	;;
	.mfb
	nop 0
	fcvt.xuf.d f8 = f6
	br.ret.sptk.many b0
	.endp __ulltod#
	.align 16
	.align 64
	.global __ulltof#
	.type	__ulltof#, @function
	.proc __ulltof#
__ulltof:
	.prologue
	.body
	.mmi
	nop 0
	setf.sig f6 = r32
	nop 0
	;;
	.mfb
	nop 0
	fcvt.xuf.s f8 = f6
	br.ret.sptk.many b0
	.endp __ulltof#
	.align 16
	.align 64
	.global __umodi#
	.type	__umodi#, @function
	.proc __umodi#
__umodi:
	.prologue 12, 34
	.mib
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 3, 2, 0
	.save rp, r34
	mov r34 = b0
	nop 0
	.mmi
	mov r36 = r1
	.body
	addp4 r38 = r33, r0
	addp4 r37 = r32, r0
	;;
	.mib
	nop 0
	nop 0
	br.call.sptk.many b0 = __umoddi3#
	;;
	.mmi
	mov r1 = r36
	nop 0
	mov b0 = r34
	;;
	.mib
	nop 0
	mov ar.pfs = r35
	br.ret.sptk.many b0
	.endp __umodi#
	.align 16
	.align 64
	.global __clzhi2#
	.type	__clzhi2#, @function
	.proc __clzhi2#
__clzhi2:
	.prologue
	.mii
	mov r8 = r0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt2 r32 = r32
	.mmi
	nop 0
	;;
	nop 0
	mov ar.lc = 15
	.align 32
.L843:
	.mmi
	sub r14 = 15, r8
	;;
	addp4 r14 = r14, r0
	nop 0
	;;
	.mii
	nop 0
	shr r14 = r32, r14
	nop 0
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dpnt .L841
	;;
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L843
	;;
.L841:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp __clzhi2#
	.align 16
	.align 64
	.global __ctzhi2#
	.type	__ctzhi2#, @function
	.proc __ctzhi2#
__ctzhi2:
	.prologue
	.mii
	mov r8 = r0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt2 r32 = r32
	.mmi
	nop 0
	;;
	nop 0
	mov ar.lc = 15
	.align 32
.L849:
	.mmi
	addp4 r14 = r8, r0
	;;
	nop 0
	shr r14 = r32, r14
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dpnt .L847
	;;
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L849
	;;
.L847:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp __ctzhi2#
	.align 16
	.align 64
	.global __fixunssfsi#
	.type	__fixunssfsi#, @function
	.proc __fixunssfsi#
__fixunssfsi:
	.prologue
	.body
	.mlx
	nop 0
	movl r2 = 0x47000000
	;;
	.mmi
	nop 0
	setf.s f6 = r2
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.ge p6, p7 = f8, f6
	;;
	.mmf
	nop 0
	nop 0
	(p6) fsub.s f8 = f8, f6
	;;
	.mmf
	nop 0
	nop 0
	(p7) fcvt.fx.trunc f8 = f8
	;;
	.mmf
	nop 0
	nop 0
	(p6) fcvt.fx.trunc f8 = f8
	;;
	.mmi
	(p7) getf.sig r8 = f8
	;;
	(p6) getf.sig r2 = f8
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 32768, r2
	br.ret.sptk.many b0
	.endp __fixunssfsi#
	.align 16
	.align 64
	.global __parityhi2#
	.type	__parityhi2#, @function
	.proc __parityhi2#
__parityhi2:
	.prologue
	.mmi
	mov r8 = r0
	mov r15 = r0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mii
	nop 0
	zxt2 r32 = r32
	;;
	mov ar.lc = 15
	.align 32
.L861:
	.mmi
	addp4 r14 = r15, r0
	nop 0
	adds r15 = 1, r15
	;;
	.mii
	nop 0
	shr r14 = r32, r14
	;;
	and r14 = 1, r14
	;;
	.mib
	nop 0
	add r8 = r8, r14
	br.cloop.sptk.few .L861
	;;
	.mib
	and r8 = 1, r8
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp __parityhi2#
	.align 16
	.align 64
	.global __popcounthi2#
	.type	__popcounthi2#, @function
	.proc __popcounthi2#
__popcounthi2:
	.prologue
	.mmi
	mov r8 = r0
	mov r15 = r0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mii
	nop 0
	zxt2 r32 = r32
	;;
	mov ar.lc = 15
	.align 32
.L866:
	.mmi
	addp4 r14 = r15, r0
	nop 0
	adds r15 = 1, r15
	;;
	.mii
	nop 0
	shr r14 = r32, r14
	;;
	and r14 = 1, r14
	;;
	.mib
	nop 0
	add r8 = r8, r14
	br.cloop.sptk.few .L866
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp __popcounthi2#
	.align 16
	.align 64
	.global __mulsi3_iq2000#
	.type	__mulsi3_iq2000#, @function
	.proc __mulsi3_iq2000#
__mulsi3_iq2000:
	.prologue
	.body
	.mib
	mov r8 = r0
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L870
	.align 32
.L872:
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.mii
	and r14 = r33, r14
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
	;;
	.mib
	add r8 = r8, r14
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L872
.L870:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __mulsi3_iq2000#
	.align 16
	.align 64
	.global __mulsi3_lm32#
	.type	__mulsi3_lm32#, @function
	.proc __mulsi3_lm32#
__mulsi3_lm32:
	.prologue
	.body
	.mib
	cmp4.eq p6, p7 = 0, r32
	mov r8 = r0
	(p6) br.cond.dpnt .L877
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L877
	.align 32
.L879:
	.mii
	nop 0
	extr r14 = r33, 0, 1
	nop 0
	;;
	.mii
	and r14 = r32, r14
	extr.u r33 = r33, 1, 31
	shladd r32 = r32, 1, r0
	;;
	.mib
	add r8 = r8, r14
	cmp4.ne p6, p7 = 0, r33
	(p6) br.cond.dptk .L879
.L877:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __mulsi3_lm32#
	.align 16
	.align 64
	.global __udivmodsi4#
	.type	__udivmodsi4#, @function
	.proc __udivmodsi4#
__udivmodsi4:
	.prologue
	.body
	.mib
	addl r14 = 1, r0
	cmp4.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L894
	;;
	.align 32
.L886:
	.mib
	cmp4.le p6, p7 = r0, r33
	nop 0
	(p7) br.cond.dpnt .L900
	;;
	.mmi
	shladd r33 = r33, 1, r0
	nop 0
	shladd r14 = r14, 1, r0
	;;
	.mmi
	cmp4.ltu p6, p7 = r33, r32
	nop 0
	cmp4.ne p8, p9 = 0, r14
	;;
	.mib
	nop 0
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L886
	.mib
	nop 0
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L889
	;;
.L894:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L888:
	.mmi
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) or r8 = r8, r14
	extr.u r14 = r14, 1, 31
	.mii
	(p7) sub r32 = r32, r33
	nop 0
	;;
	extr.u r33 = r33, 1, 31
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L888
	;;
.L889:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
.L900:
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r14
	(p8) br.cond.dptk .L894
	;;
	.mmi
	(p9) mov r8 = r0
	nop 0
	nop 0
	.mib
	nop 0
	nop 0
	br .L889
	.endp __udivmodsi4#
	.align 16
	.align 64
	.global __mspabi_cmpf#
	.type	__mspabi_cmpf#, @function
	.proc __mspabi_cmpf#
__mspabi_cmpf:
	.prologue
	.body
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	(p6) addl r8 = -1, r0
	nop 0
	(p6) br.cond.dpnt .L901
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f9
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L901:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __mspabi_cmpf#
	.align 16
	.align 64
	.global __mspabi_cmpd#
	.type	__mspabi_cmpd#, @function
	.proc __mspabi_cmpd#
__mspabi_cmpd:
	.prologue
	.body
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	(p6) addl r8 = -1, r0
	nop 0
	(p6) br.cond.dpnt .L906
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f9
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L906:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __mspabi_cmpd#
	.align 16
	.align 64
	.global __mspabi_mpysll#
	.type	__mspabi_mpysll#, @function
	.proc __mspabi_mpysll#
__mspabi_mpysll:
	.prologue
	.body
	.mmi
	setf.sig f6 = r32
	setf.sig f7 = r33
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f6 = f6, f7
	;;
	.mib
	getf.sig r8 = f6
	nop 0
	br.ret.sptk.many b0
	.endp __mspabi_mpysll#
	.align 16
	.align 64
	.global __mspabi_mpyull#
	.type	__mspabi_mpyull#, @function
	.proc __mspabi_mpyull#
__mspabi_mpyull:
	.prologue
	.body
	.mmi
	setf.sig f6 = r32
	setf.sig f7 = r33
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f6 = f6, f7
	;;
	.mib
	getf.sig r8 = f6
	nop 0
	br.ret.sptk.many b0
	.endp __mspabi_mpyull#
	.align 16
	.align 64
	.global __mulhi3#
	.type	__mulhi3#, @function
	.proc __mulhi3#
__mulhi3:
	.prologue
	.body
	.mii
	cmp4.le p6, p7 = r0, r33
	addl r14 = 1, r0
	;;
	(p7) sub r33 = r0, r33
	.mmi
	(p6) mov r17 = r0
	;;
	(p7) addl r17 = 1, r0
	cmp4.eq p6, p7 = 0, r33
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L917
	;;
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L918:
	.mii
	nop 0
	extr r15 = r33, 0, 1
	cmp4.geu p6, p7 = 31, r14
	.mmb
	nop 0
	adds r16 = 1, r14
	nop 0
	;;
	.mii
	and r15 = r32, r15
	extr r33 = r33, 1, 31
	zxt1 r14 = r16
	.mmb
	nop 0
	shladd r32 = r32, 1, r0
	nop 0
	;;
	.mib
	add r8 = r8, r15
	cmp4.ne.and.orcm p6, p7 = 0, r33
	(p6) br.cond.dptk .L918
	;;
.L917:
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r17
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
	.endp __mulhi3#
	.align 16
	.align 64
	.global __divsi3#
	.type	__divsi3#, @function
	.proc __divsi3#
__divsi3:
	.prologue
	.body
	.mii
	cmp.le p6, p7 = r0, r32
	addl r15 = 1, r0
	;;
	(p7) sub r32 = r0, r32
	.mmi
	(p7) addl r17 = 1, r0
	;;
	(p6) mov r17 = r0
	cmp.le p6, p7 = r0, r33
	.mmi
	mov r16 = r32
	;;
	(p7) sub r33 = r0, r33
	(p7) xor r17 = 1, r17
	;;
	.mib
	mov r14 = r33
	cmp4.ltu p6, p7 = r33, r32
	(p7) br.cond.dpnt .L940
	;;
	.align 32
.L931:
	.mib
	cmp4.le p6, p7 = r0, r14
	nop 0
	(p7) br.cond.dpnt .L948
	;;
	.mmi
	shladd r14 = r14, 1, r0
	nop 0
	shladd r15 = r15, 1, r0
	;;
	.mmi
	cmp4.ltu p6, p7 = r14, r16
	nop 0
	cmp4.ne p8, p9 = 0, r15
	;;
	.mib
	nop 0
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L931
	.mib
	nop 0
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L934
	;;
.L940:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L933:
	.mmi
	cmp4.gtu p6, p7 = r14, r16
	;;
	(p7) or r8 = r8, r15
	extr.u r15 = r15, 1, 31
	.mii
	(p7) sub r16 = r16, r14
	nop 0
	;;
	extr.u r14 = r14, 1, 31
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L933
	;;
.L934:
	.mmi
	addp4 r8 = r8, r0
	nop 0
	cmp4.eq p6, p7 = 0, r17
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
.L948:
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r15
	(p8) br.cond.dptk .L940
	;;
	.mmi
	(p9) mov r8 = r0
	nop 0
	nop 0
	.mib
	nop 0
	nop 0
	br .L934
	.endp __divsi3#
	.align 16
	.align 64
	.global __modsi3#
	.type	__modsi3#, @function
	.proc __modsi3#
__modsi3:
	.prologue
	.body
	.mmi
	cmp.le p6, p7 = r0, r32
	nop 0
	addl r15 = 1, r0
	;;
	.mii
	(p7) sub r32 = r0, r32
	(p7) addl r16 = 1, r0
	;;
	(p6) mov r16 = r0
	.mii
	cmp.le p6, p7 = r0, r33
	mov r8 = r32
	;;
	(p7) sub r33 = r0, r33
	;;
	.mib
	mov r14 = r33
	cmp4.ltu p6, p7 = r33, r32
	(p7) br.cond.dpnt .L962
	;;
	.align 32
.L951:
	.mib
	cmp4.le p6, p7 = r0, r14
	nop 0
	(p7) br.cond.dpnt .L968
	;;
	.mmi
	shladd r14 = r14, 1, r0
	nop 0
	shladd r15 = r15, 1, r0
	;;
	.mmi
	cmp4.ltu p6, p7 = r14, r8
	nop 0
	cmp4.ne p8, p9 = 0, r15
	;;
	.mib
	nop 0
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L951
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L954
	;;
	.align 32
.L962:
	.mmi
	cmp4.gtu p6, p7 = r14, r8
	nop 0
	extr.u r15 = r15, 1, 31
	;;
	.mmi
	nop 0
	(p7) sub r8 = r8, r14
	extr.u r14 = r14, 1, 31
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L962
	;;
.L954:
	.mmi
	addp4 r8 = r8, r0
	nop 0
	cmp4.eq p6, p7 = 0, r16
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
.L968:
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r15
	(p8) br.cond.dptk .L962
	.mib
	nop 0
	nop 0
	br .L954
	.endp __modsi3#
	.align 16
	.align 64
	.global __udivmodhi4#
	.type	__udivmodhi4#, @function
	.proc __udivmodhi4#
__udivmodhi4:
	.prologue
	.body
	.mii
	nop 0
	zxt2 r32 = r32
	zxt2 r33 = r33
	.mmi
	addl r15 = 1, r0
	;;
	mov r8 = r32
	mov r14 = r33
	.mmb
	nop 0
	cmp4.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L978
	;;
	.align 32
.L970:
	.mii
	nop 0
	sxt2 r16 = r14
	nop 0
	;;
	.mib
	cmp4.le p6, p7 = r0, r16
	nop 0
	(p7) br.cond.dpnt .L971
	;;
	.mmi
	shladd r14 = r14, 1, r0
	nop 0
	shladd r15 = r15, 1, r0
	;;
	.mii
	nop 0
	zxt2 r14 = r14
	zxt2 r16 = r15
	;;
	.mmi
	cmp4.ltu p6, p7 = r14, r8
	nop 0
	mov r15 = r16
	;;
	.mib
	nop 0
	cmp.ne.and.orcm p6, p7 = 0, r16
	(p6) br.cond.dptk .L970
	;;
.L971:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r15
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r17 = r0
	(p7) br.cond.dpnt .L973
	;;
.L978:
	.mmi
	mov r17 = r0
	nop 0
	nop 0
	.align 32
.L972:
	.mmi
	cmp4.gtu p6, p7 = r14, r8
	nop 0
	extr.u r16 = r15, 1, 15
	;;
	.mmi
	(p7) sub r8 = r8, r14
	(p7) or r17 = r15, r17
	extr.u r14 = r14, 1, 15
	.mii
	mov r15 = r16
	nop 0
	;;
	(p7) zxt2 r8 = r8
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L972
	;;
.L973:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r17
	br.ret.sptk.many b0
	.endp __udivmodhi4#
	.align 16
	.align 64
	.global __udivmodsi4_libgcc#
	.type	__udivmodsi4_libgcc#, @function
	.proc __udivmodsi4_libgcc#
__udivmodsi4_libgcc:
	.prologue
	.body
	.mib
	addl r14 = 1, r0
	cmp.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L992
	;;
	.align 32
.L984:
	.mib
	nop 0
	tbit.z p6, p7 = r33, 31
	(p7) br.cond.dpnt .L998
	;;
	.mmi
	shladd r33 = r33, 1, r0
	nop 0
	shladd r14 = r14, 1, r0
	;;
	.mmi
	cmp.ltu p6, p7 = r33, r32
	nop 0
	cmp.ne p8, p9 = 0, r14
	;;
	.mib
	nop 0
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L984
	.mib
	nop 0
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L987
	;;
.L992:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L986:
	.mmi
	cmp.gtu p6, p7 = r33, r32
	;;
	(p7) or r8 = r14, r8
	shr.u r14 = r14, 1
	.mmi
	(p7) sub r32 = r32, r33
	nop 0
	shr.u r33 = r33, 1
	;;
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L986
	;;
.L987:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
.L998:
	.mib
	nop 0
	cmp.ne p8, p9 = 0, r14
	(p8) br.cond.dptk .L992
	;;
	.mmi
	(p9) mov r8 = r0
	nop 0
	nop 0
	.mib
	nop 0
	nop 0
	br .L987
	.endp __udivmodsi4_libgcc#
	.align 16
	.align 64
	.global __ashldi3#
	.type	__ashldi3#, @function
	.proc __ashldi3#
__ashldi3:
	.prologue
	.body
	.mib
	nop 0
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L1000
	.mmi
	adds r33 = -32, r33
	mov r8 = r0
	mov r14 = r0
	;;
	.mii
	addp4 r33 = r33, r0
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
	;;
	.mii
	nop 0
	shl r32 = r32, r33
	;;
	mix4.r r8 = r32, r8
.L999:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L1000:
	.mmb
	sub r17 = 32, r33
	cmp4.eq p6, p7 = 0, r33
	nop 0
	.mmi
	addp4 r16 = r32, r0
	addp4 r33 = r33, r0
	extr r15 = r32, 32, 32
	;;
	.mib
	addp4 r17 = r17, r0
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L999
	;;
	.mmi
	nop 0
	mov r8 = r0
	nop 0
	;;
	.mii
	nop 0
	shl r15 = r15, r33
	shl r14 = r32, r33
	;;
	.mii
	nop 0
	shr.u r16 = r16, r17
	;;
	shl r14 = r14, 32
	;;
	.mii
	nop 0
	mix4.l r8 = r8, r14
	;;
	or r32 = r15, r16
	;;
	.mib
	nop 0
	mix4.r r8 = r32, r8
	br .L999
	.endp __ashldi3#
	.align 16
	.align 64
	.global __ashlti3#
	.type	__ashlti3#, @function
	.proc __ashlti3#
__ashlti3:
	.prologue
	.body
	.mib
	nop 0
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L1007
	.mii
	adds r34 = -64, r34
	mov r8 = r0
	;;
	addp4 r34 = r34, r0
	;;
	.mib
	nop 0
	shl r9 = r32, r34
	br.ret.sptk.many b0
.L1007:
	.mmi
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) sub r14 = 64, r34
	(p7) addp4 r34 = r34, r0
	.mii
	(p6) mov r8 = r32
	(p6) mov r9 = r33
	;;
	(p7) addp4 r14 = r14, r0
	;;
	.mii
	nop 0
	(p7) shl r9 = r33, r34
	(p7) shl r8 = r32, r34
	;;
	.mii
	nop 0
	(p7) shr.u r32 = r32, r14
	nop 0
	;;
	.mib
	nop 0
	(p7) or r9 = r9, r32
	br.ret.sptk.many b0
	.endp __ashlti3#
	.align 16
	.align 64
	.global __ashrdi3#
	.type	__ashrdi3#, @function
	.proc __ashrdi3#
__ashrdi3:
	.prologue
	.body
	.mib
	nop 0
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L1014
	.mmi
	adds r33 = -32, r33
	mov r8 = r0
	shr r14 = r32, 32
	.mii
	nop 0
	shr r32 = r32, 63
	;;
	addp4 r33 = r33, r0
	;;
	.mii
	nop 0
	mix4.r r8 = r32, r8
	;;
	shr r14 = r14, r33
	;;
	.mii
	nop 0
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
.L1013:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L1014:
	.mmb
	sub r17 = 32, r33
	cmp4.eq p6, p7 = 0, r33
	nop 0
	.mmi
	addp4 r14 = r32, r0
	addp4 r33 = r33, r0
	extr r16 = r32, 32, 32
	;;
	.mmi
	addp4 r17 = r17, r0
	nop 0
	(p6) mov r8 = r32
	.mib
	nop 0
	shr r32 = r32, 32
	(p6) br.cond.dpnt .L1013
	;;
	.mmi
	nop 0
	mov r8 = r0
	nop 0
	;;
	.mii
	nop 0
	shr.u r14 = r14, r33
	shr r32 = r32, r33
	;;
	.mii
	nop 0
	shl r16 = r16, r17
	;;
	mix4.r r8 = r32, r8
	;;
	.mmi
	or r14 = r16, r14
	;;
	nop 0
	shl r14 = r14, 32
	;;
	.mib
	nop 0
	mix4.l r8 = r8, r14
	br .L1013
	.endp __ashrdi3#
	.align 16
	.align 64
	.global __ashrti3#
	.type	__ashrti3#, @function
	.proc __ashrti3#
__ashrti3:
	.prologue
	.body
	.mib
	nop 0
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L1021
	.mii
	adds r34 = -64, r34
	shr r9 = r33, 63
	;;
	sxt4 r8 = r34
	;;
	.mib
	nop 0
	shr r8 = r33, r8
	br.ret.sptk.many b0
.L1021:
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r34
	nop 0
	;;
	.mmi
	(p7) sub r14 = 64, r34
	(p7) addp4 r8 = r34, r0
	(p7) sxt4 r34 = r34
	.mmi
	nop 0
	(p6) mov r9 = r33
	nop 0
	;;
	.mii
	(p7) addp4 r14 = r14, r0
	(p7) shr r9 = r33, r34
	(p6) mov r8 = r32
	;;
	.mii
	nop 0
	(p7) shr.u r8 = r32, r8
	;;
	(p7) shl r33 = r33, r14
	;;
	.mib
	nop 0
	(p7) or r8 = r8, r33
	br.ret.sptk.many b0
	.endp __ashrti3#
	.align 16
	.align 64
	.global __bswapdi2#
	.type	__bswapdi2#, @function
	.proc __bswapdi2#
__bswapdi2:
	.prologue
	.body
	.mib
	nop 0
	mux1 r8 = r32, @rev
	br.ret.sptk.many b0
	.endp __bswapdi2#
	.align 16
	.align 64
	.global __bswapsi2#
	.type	__bswapsi2#, @function
	.proc __bswapsi2#
__bswapsi2:
	.prologue
	.body
	.mii
	nop 0
	dep.z r15 = r32, 24, 8
	;;
	extr.u r8 = r32, 24, 8
	;;
	.mii
	nop 0
	extr.u r14 = r32, 8, 24
	or r8 = r15, r8
	.mmi
	addl r15 = 65280, r0
	;;
	and r14 = r15, r14
	dep.z r32 = r32, 8, 24
	;;
	.mlx
	or r8 = r14, r8
	movl r14 = 16711680
	;;
	.mmi
	nop 0
	and r32 = r14, r32
	nop 0
	;;
	.mib
	nop 0
	or r8 = r32, r8
	br.ret.sptk.many b0
	.endp __bswapsi2#
	.align 16
	.align 64
	.global __clzsi2#
	.type	__clzsi2#, @function
	.proc __clzsi2#
__clzsi2:
	.prologue
	.body
	.mii
	addl r14 = 65535, r0
	addp4 r8 = r32, r0
	;;
	cmp4.geu p6, p7 = r14, r32
	;;
	.mmi
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	nop 0
	;;
	.mmi
	shladd r15 = r15, 4, r0
	;;
	sub r14 = 16, r15
	nop 0
	;;
	.mii
	addp4 r14 = r14, r0
	nop 0
	;;
	shr.u r8 = r8, r14
	.mmi
	addl r14 = 65280, r0
	;;
	and r14 = r14, r8
	addp4 r8 = r8, r0
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	nop 0
	;;
	.mmi
	(p7) mov r14 = r0
	;;
	shladd r14 = r14, 3, r0
	nop 0
	;;
	.mmi
	sub r16 = 8, r14
	add r15 = r14, r15
	addl r14 = 240, r0
	;;
	.mmi
	addp4 r16 = r16, r0
	;;
	nop 0
	shr.u r8 = r8, r16
	;;
	.mii
	and r14 = r14, r8
	addp4 r8 = r8, r0
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	.mmi
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	nop 0
	;;
	.mmi
	shladd r14 = r14, 2, r0
	;;
	sub r17 = 4, r14
	add r16 = r14, r15
	;;
	.mmi
	addp4 r17 = r17, r0
	;;
	nop 0
	shr.u r8 = r8, r17
	;;
	.mii
	and r14 = 12, r8
	addp4 r8 = r8, r0
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	.mmi
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	nop 0
	;;
	.mmi
	shladd r15 = r15, 1, r0
	;;
	sub r14 = 2, r15
	nop 0
	;;
	.mmi
	addp4 r14 = r14, r0
	;;
	nop 0
	shr.u r8 = r8, r14
	;;
	.mii
	nop 0
	extr.u r14 = r8, 1, 1
	;;
	xor r14 = 1, r14
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r14, 0
	nop 0
	;;
	.mii
	(p7) sub r14 = 2, r8
	add r8 = r15, r16
	;;
	(p6) mov r14 = r0
	;;
	.mib
	nop 0
	add r8 = r14, r8
	br.ret.sptk.many b0
	.endp __clzsi2#
	.align 16
	.align 64
	.global __clzti2#
	.type	__clzti2#, @function
	.proc __clzti2#
__clzti2:
	.prologue
	.body
	.mmi
	cmp.eq p6, p7 = 0, r33
	;;
	(p6) addl r8 = 1, r0
	nop 0
	;;
	.mmi
	nop 0
	(p7) mov r8 = r0
	nop 0
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r8
	adds r14 = -1, r8
	dep.z r8 = r8, 6, 26
	;;
	.mii
	and r14 = r33, r14
	(p6) mov r32 = r0
	;;
	or r32 = r32, r14
	.mmi
	addl r14 = 65598, r0
	;;
	setf.sig f6 = r32
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcvt.xuf f6 = f6
	;;
	.mmi
	getf.exp r15 = f6
	;;
	sub r14 = r14, r15
	nop 0
	;;
	.mib
	nop 0
	add r8 = r8, r14
	br.ret.sptk.many b0
	.endp __clzti2#
	.align 16
	.align 64
	.global __cmpdi2#
	.type	__cmpdi2#, @function
	.proc __cmpdi2#
__cmpdi2:
	.prologue
	.body
	.mii
	nop 0
	extr r15 = r32, 32, 32
	;;
	extr r14 = r33, 32, 32
	;;
	.mib
	cmp4.gt p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1043
	;;
	.mmi
	nop 0
	cmp4.lt p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1039
	;;
	.mib
	cmp4.gtu p6, p7 = r33, r32
	nop 0
	(p6) br.cond.dpnt .L1043
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r33, r32
	nop 0
	;;
	.mii
	(p6) addl r8 = 2, r0
	nop 0
	;;
	(p7) addl r8 = 1, r0
.L1039:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1043:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	.endp __cmpdi2#
	.align 16
	.align 64
	.global __aeabi_lcmp#
	.type	__aeabi_lcmp#, @function
	.proc __aeabi_lcmp#
__aeabi_lcmp:
	.prologue
	.body
	.mii
	nop 0
	extr r15 = r32, 32, 32
	;;
	extr r14 = r33, 32, 32
	;;
	.mib
	cmp4.gt p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1051
	;;
	.mmi
	nop 0
	cmp4.lt p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1048
	;;
	.mib
	cmp4.gtu p6, p7 = r33, r32
	nop 0
	(p6) br.cond.dpnt .L1051
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r33, r32
	nop 0
	;;
	.mii
	(p6) addl r8 = 2, r0
	nop 0
	;;
	(p7) addl r8 = 1, r0
	;;
.L1048:
	.mib
	nop 0
	adds r8 = -1, r8
	br.ret.sptk.many b0
	;;
.L1051:
	.mmi
	nop 0
	mov r8 = r0
	nop 0
	;;
	.mib
	nop 0
	adds r8 = -1, r8
	br.ret.sptk.many b0
	.endp __aeabi_lcmp#
	.align 16
	.align 64
	.global __cmpti2#
	.type	__cmpti2#, @function
	.proc __cmpti2#
__cmpti2:
	.prologue
	.body
	.mib
	cmp.gt p6, p7 = r35, r33
	nop 0
	(p6) br.cond.dpnt .L1059
	;;
	.mmi
	nop 0
	cmp.lt p6, p7 = r35, r33
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1055
	;;
	.mib
	cmp.gtu p6, p7 = r34, r32
	nop 0
	(p6) br.cond.dpnt .L1059
	;;
	.mmi
	nop 0
	cmp.ltu p6, p7 = r34, r32
	nop 0
	;;
	.mii
	(p6) addl r8 = 2, r0
	nop 0
	;;
	(p7) addl r8 = 1, r0
.L1055:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1059:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	.endp __cmpti2#
	.align 16
	.align 64
	.global __ctzsi2#
	.type	__ctzsi2#, @function
	.proc __ctzsi2#
__ctzsi2:
	.prologue
	.body
	.mii
	nop 0
	zxt2 r15 = r32
	addp4 r14 = r32, r0
	;;
	.mii
	cmp4.eq p6, p7 = 0, r15
	nop 0
	;;
	(p6) addl r16 = 1, r0
	;;
	.mmi
	(p7) mov r16 = r0
	;;
	shladd r17 = r16, 4, r0
	shladd r16 = r16, 4, r0
	;;
	.mii
	nop 0
	shr.u r14 = r14, r17
	;;
	zxt1 r15 = r14
	;;
	.mii
	cmp4.eq p6, p7 = 0, r15
	addp4 r14 = r14, r0
	;;
	(p6) addl r15 = 1, r0
	;;
	.mmi
	(p7) mov r15 = r0
	;;
	shladd r17 = r15, 3, r0
	shladd r15 = r15, 3, r0
	;;
	.mmi
	add r16 = r15, r16
	;;
	nop 0
	shr.u r14 = r14, r17
	;;
	.mii
	and r15 = 15, r14
	addp4 r14 = r14, r0
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	.mmi
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	nop 0
	;;
	.mii
	shladd r17 = r15, 2, r0
	shladd r15 = r15, 2, r0
	;;
	add r15 = r15, r16
	;;
	.mii
	nop 0
	shr.u r14 = r14, r17
	nop 0
	;;
	.mii
	and r16 = 3, r14
	addp4 r14 = r14, r0
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	.mmi
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	nop 0
	;;
	.mii
	shladd r16 = r8, 1, r0
	shladd r8 = r8, 1, r0
	;;
	add r15 = r8, r15
	;;
	.mii
	nop 0
	shr.u r14 = r14, r16
	nop 0
	;;
	.mmi
	andcm r8 = 1, r14
	nop 0
	extr.u r14 = r14, 1, 1
	;;
	.mii
	sub r14 = 2, r14
	sub r8 = r0, r8
	;;
	and r8 = r14, r8
	;;
	.mib
	nop 0
	add r8 = r15, r8
	br.ret.sptk.many b0
	.endp __ctzsi2#
	.align 16
	.align 64
	.global __ctzti2#
	.type	__ctzti2#, @function
	.proc __ctzti2#
__ctzti2:
	.prologue
	.body
	.mmi
	cmp.eq p6, p7 = 0, r32
	;;
	(p6) addl r8 = 1, r0
	(p7) mov r33 = r0
	;;
	.mmi
	(p7) mov r8 = r0
	;;
	adds r14 = -1, r8
	dep.z r8 = r8, 6, 26
	;;
	.mmi
	and r32 = r32, r14
	;;
	or r32 = r32, r33
	nop 0
	;;
	.mmi
	adds r14 = -1, r32
	;;
	andcm r32 = r14, r32
	nop 0
	;;
	.mii
	nop 0
	popcnt r32 = r32
	nop 0
	;;
	.mib
	nop 0
	add r8 = r8, r32
	br.ret.sptk.many b0
	.endp __ctzti2#
	.align 16
	.align 64
	.global __ffsti2#
	.type	__ffsti2#, @function
	.proc __ffsti2#
__ffsti2:
	.prologue
	.body
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L1070
	;;
	.mib
	nop 0
	cmp.eq p6, p7 = 0, r33
	(p7) br.cond.dptk .L1075
	;;
	.mmi
	(p6) mov r8 = r0
	nop 0
	nop 0
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1070:
	.mmi
	adds r8 = -1, r32
	;;
	andcm r8 = r8, r32
	nop 0
	;;
	.mii
	nop 0
	popcnt r8 = r8
	nop 0
	;;
	.mib
	nop 0
	adds r8 = 1, r8
	br.ret.sptk.many b0
.L1075:
	.mmi
	adds r14 = -1, r33
	;;
	andcm r33 = r14, r33
	nop 0
	;;
	.mii
	nop 0
	popcnt r33 = r33
	nop 0
	;;
	.mib
	nop 0
	adds r8 = 65, r33
	br.ret.sptk.many b0
	.endp __ffsti2#
	.align 16
	.align 64
	.global __lshrdi3#
	.type	__lshrdi3#, @function
	.proc __lshrdi3#
__lshrdi3:
	.prologue
	.body
	.mib
	nop 0
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L1077
	.mmi
	adds r33 = -32, r33
	nop 0
	mov r14 = r0
	.mii
	mov r8 = r0
	shr.u r32 = r32, 32
	;;
	addp4 r33 = r33, r0
	;;
	.mii
	nop 0
	mix4.r r8 = r14, r8
	;;
	shr.u r33 = r32, r33
	;;
	.mii
	nop 0
	shl r33 = r33, 32
	;;
	mix4.l r8 = r8, r33
.L1076:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L1077:
	.mmb
	sub r17 = 32, r33
	cmp4.eq p6, p7 = 0, r33
	nop 0
	.mmi
	addp4 r16 = r32, r0
	addp4 r33 = r33, r0
	extr.u r15 = r32, 32, 32
	;;
	.mmi
	addp4 r17 = r17, r0
	nop 0
	(p6) mov r8 = r32
	.mib
	nop 0
	shr.u r32 = r32, 32
	(p6) br.cond.dpnt .L1076
	;;
	.mmi
	nop 0
	mov r8 = r0
	nop 0
	;;
	.mii
	nop 0
	shr.u r16 = r16, r33
	shr.u r14 = r32, r33
	;;
	.mii
	nop 0
	shl r15 = r15, r17
	;;
	mix4.r r8 = r14, r8
	;;
	.mmi
	or r33 = r15, r16
	;;
	nop 0
	shl r33 = r33, 32
	;;
	.mib
	nop 0
	mix4.l r8 = r8, r33
	br .L1076
	.endp __lshrdi3#
	.align 16
	.align 64
	.global __lshrti3#
	.type	__lshrti3#, @function
	.proc __lshrti3#
__lshrti3:
	.prologue
	.body
	.mib
	nop 0
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L1084
	.mii
	adds r34 = -64, r34
	mov r9 = r0
	;;
	addp4 r8 = r34, r0
	;;
	.mib
	nop 0
	shr.u r8 = r33, r8
	br.ret.sptk.many b0
.L1084:
	.mmi
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) sub r14 = 64, r34
	(p7) addp4 r34 = r34, r0
	.mii
	(p6) mov r8 = r32
	(p6) mov r9 = r33
	;;
	(p7) addp4 r14 = r14, r0
	;;
	.mii
	nop 0
	(p7) shr.u r8 = r32, r34
	(p7) shr.u r9 = r33, r34
	;;
	.mii
	nop 0
	(p7) shl r33 = r33, r14
	nop 0
	;;
	.mib
	nop 0
	(p7) or r8 = r8, r33
	br.ret.sptk.many b0
	.endp __lshrti3#
	.align 16
	.align 64
	.global __muldsi3#
	.type	__muldsi3#, @function
	.proc __muldsi3#
__muldsi3:
	.prologue
	.body
	.mmi
	addl r16 = 65535, r0
	nop 0
	mov r8 = r0
	;;
	.mmi
	and r14 = r16, r32
	nop 0
	extr.u r32 = r32, 16, 16
	;;
	.mmb
	setf.sig f9 = r14
	and r14 = r16, r33
	nop 0
	.mmi
	setf.sig f7 = r32
	nop 0
	extr.u r33 = r33, 16, 16
	;;
	.mmi
	nop 0
	setf.sig f8 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f6 = f8, f9
	;;
	.mmi
	getf.sig r17 = f6
	setf.sig f6 = r33
	nop 0
	;;
	.mii
	nop 0
	extr.u r15 = r17, 16, 16
	and r17 = r16, r17
	;;
	.mmi
	nop 0
	setf.sig f10 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f7, f8, f10
	;;
	.mmi
	getf.sig r14 = f10
	;;
	nop 0
	dep.z r15 = r14, 16, 16
	;;
	.mii
	add r15 = r15, r17
	extr.u r14 = r14, 16, 16
	;;
	extr.u r17 = r15, 16, 16
	.mmi
	setf.sig f8 = r14
	nop 0
	and r15 = r16, r15
	;;
	.mmi
	nop 0
	setf.sig f10 = r17
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f8 = f7, f6, f8
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f6, f9, f10
	;;
	.mmi
	getf.sig r32 = f8
	;;
	getf.sig r33 = f10
	nop 0
	;;
	.mii
	nop 0
	dep.z r14 = r33, 16, 16
	nop 0
	;;
	.mii
	add r14 = r14, r15
	extr.u r33 = r33, 16, 16
	;;
	shl r14 = r14, 32
	.mmi
	add r32 = r32, r33
	;;
	nop 0
	mix4.l r8 = r8, r14
	;;
	.mib
	nop 0
	mix4.r r8 = r32, r8
	br.ret.sptk.many b0
	.endp __muldsi3#
	.align 16
	.align 64
	.global __muldi3_compiler_rt#
	.type	__muldi3_compiler_rt#, @function
	.proc __muldi3_compiler_rt#
__muldi3_compiler_rt:
	.prologue
	.body
	.mmi
	addl r16 = 65535, r0
	mov r8 = r0
	extr r19 = r33, 32, 32
	;;
	.mmi
	and r14 = r16, r32
	nop 0
	extr r18 = r32, 32, 32
	;;
	.mmi
	setf.sig f9 = r14
	nop 0
	and r14 = r16, r33
	;;
	.mmi
	setf.sig f7 = r14
	nop 0
	extr.u r14 = r32, 16, 16
	;;
	.mmi
	setf.sig f8 = r14
	nop 0
	extr.u r14 = r33, 16, 16
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f6 = f7, f9
	;;
	.mmi
	getf.sig r17 = f6
	setf.sig f6 = r14
	nop 0
	;;
	.mii
	nop 0
	extr.u r15 = r17, 16, 16
	and r17 = r16, r17
	;;
	.mmi
	nop 0
	setf.sig f10 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f8, f7, f10
	;;
	.mmi
	getf.sig r14 = f10
	;;
	nop 0
	dep.z r15 = r14, 16, 16
	;;
	.mii
	add r15 = r15, r17
	extr.u r14 = r14, 16, 16
	;;
	extr.u r17 = r15, 16, 16
	.mmi
	setf.sig f7 = r14
	nop 0
	and r15 = r16, r15
	;;
	.mmi
	nop 0
	setf.sig f10 = r17
	nop 0
	;;
	.mfi
	nop 0
	xma.l f8 = f8, f6, f7
	nop 0
	.mmi
	setf.sig f7 = r19
	nop 0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f6, f9, f10
	;;
	.mmi
	getf.sig r14 = f10
	setf.sig f10 = r18
	nop 0
	;;
	.mii
	nop 0
	dep.z r16 = r14, 16, 16
	nop 0
	;;
	.mmi
	add r15 = r16, r15
	getf.sig r16 = f8
	extr.u r14 = r14, 16, 16
	.mmi
	setf.sig f8 = r32
	;;
	nop 0
	shl r15 = r15, 32
	;;
	.mii
	nop 0
	mix4.l r8 = r8, r15
	;;
	add r14 = r16, r14
	;;
	.mii
	nop 0
	mix4.r r8 = r14, r8
	;;
	extr r14 = r8, 32, 32
	;;
	.mmi
	nop 0
	setf.sig f9 = r14
	nop 0
	;;
	.mfi
	nop 0
	xma.l f6 = f7, f8, f9
	nop 0
	.mmi
	setf.sig f7 = r33
	nop 0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f10, f7, f6
	;;
	.mmi
	nop 0
	getf.sig r14 = f10
	nop 0
	;;
	.mib
	nop 0
	mix4.r r8 = r14, r8
	br.ret.sptk.many b0
	.endp __muldi3_compiler_rt#
	.align 16
	.align 64
	.global __mulddi3#
	.type	__mulddi3#, @function
	.proc __mulddi3#
__mulddi3:
	.prologue
	.body
	.mmi
	addp4 r16 = 4294967295 - 0x100000000, r0
	;;
	and r14 = r16, r32
	shr.u r32 = r32, 32
	;;
	.mmi
	setf.sig f7 = r14
	nop 0
	and r14 = r16, r33
	.mmi
	setf.sig f6 = r32
	nop 0
	shr.u r33 = r33, 32
	;;
	.mmi
	setf.sig f9 = r14
	setf.sig f8 = r33
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f10 = f7, f9
	;;
	.mii
	getf.sig r14 = f10
	nop 0
	;;
	shr.u r15 = r14, 32
	.mmi
	and r14 = r16, r14
	;;
	setf.sig f10 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f9, f6, f10
	;;
	.mii
	getf.sig r15 = f10
	nop 0
	;;
	shl r17 = r15, 32
	.mii
	nop 0
	shr.u r15 = r15, 32
	;;
	shr.u r18 = r17, 32
	.mmi
	setf.sig f9 = r15
	nop 0
	add r14 = r14, r17
	;;
	.mmi
	setf.sig f10 = r18
	nop 0
	and r14 = r16, r14
	;;
	.mmf
	nop 0
	nop 0
	xma.l f9 = f6, f8, f9
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f7, f8, f10
	;;
	.mmi
	getf.sig r15 = f9
	;;
	getf.sig r9 = f10
	nop 0
	;;
	.mii
	nop 0
	shl r8 = r9, 32
	shr.u r9 = r9, 32
	;;
	.mib
	add r8 = r14, r8
	add r9 = r15, r9
	br.ret.sptk.many b0
	.endp __mulddi3#
	.align 16
	.align 64
	.global __multi3#
	.type	__multi3#, @function
	.proc __multi3#
__multi3:
	.prologue
	.body
	.mmi
	nop 0
	addp4 r16 = 4294967295 - 0x100000000, r0
	nop 0
	;;
	.mmi
	and r14 = r16, r32
	;;
	setf.sig f6 = r14
	and r14 = r16, r34
	;;
	.mmi
	setf.sig f7 = r14
	nop 0
	shr.u r14 = r32, 32
	;;
	.mmi
	setf.sig f8 = r14
	nop 0
	shr.u r14 = r34, 32
	;;
	.mmi
	nop 0
	setf.sig f9 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f10 = f6, f7
	;;
	.mii
	getf.sig r14 = f10
	nop 0
	;;
	shr.u r15 = r14, 32
	.mmi
	and r14 = r16, r14
	;;
	setf.sig f10 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f7, f8, f10
	;;
	.mii
	getf.sig r15 = f10
	nop 0
	;;
	shl r17 = r15, 32
	.mii
	nop 0
	shr.u r15 = r15, 32
	;;
	shr.u r18 = r17, 32
	.mmi
	setf.sig f7 = r15
	nop 0
	add r14 = r14, r17
	;;
	.mmi
	setf.sig f10 = r18
	nop 0
	and r14 = r16, r14
	;;
	.mfi
	nop 0
	xma.l f8 = f8, f9, f7
	nop 0
	.mmi
	setf.sig f7 = r35
	nop 0
	nop 0
	;;
	.mfi
	nop 0
	xma.l f10 = f6, f9, f10
	nop 0
	.mmi
	setf.sig f6 = r32
	;;
	getf.sig r16 = f8
	nop 0
	;;
	.mmi
	getf.sig r8 = f10
	setf.sig f10 = r34
	nop 0
	;;
	.mii
	nop 0
	shr.u r15 = r8, 32
	shl r8 = r8, 32
	;;
	.mmi
	add r16 = r16, r15
	nop 0
	add r8 = r14, r8
	;;
	.mmi
	nop 0
	setf.sig f8 = r16
	nop 0
	;;
	.mfi
	nop 0
	xma.l f8 = f6, f7, f8
	nop 0
	.mmi
	setf.sig f6 = r33
	nop 0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f10 = f10, f6, f8
	;;
	.mib
	getf.sig r9 = f10
	nop 0
	br.ret.sptk.many b0
	.endp __multi3#
	.align 16
	.align 64
	.global __negdi2#
	.type	__negdi2#, @function
	.proc __negdi2#
__negdi2:
	.prologue
	.body
	.mib
	nop 0
	sub r8 = r0, r32
	br.ret.sptk.many b0
	.endp __negdi2#
	.align 16
	.align 64
	.global __negti2#
	.type	__negti2#, @function
	.proc __negti2#
__negti2:
	.prologue
	.body
	.mii
	cmp.eq p6, p7 = 0, r32
	sub r8 = 0, r32
	;;
	(p7) sub r9 = -1, r33
	;;
	.mib
	nop 0
	(p6) sub r9 = 0, r33
	br.ret.sptk.many b0
	.endp __negti2#
	.align 16
	.align 64
	.global __paritydi2#
	.type	__paritydi2#, @function
	.proc __paritydi2#
__paritydi2:
	.prologue
	.body
	.mii
	nop 0
	shr r14 = r32, 32
	addl r8 = 27030, r0
	;;
	.mii
	xor r32 = r32, r14
	nop 0
	;;
	extr.u r14 = r32, 16, 16
	;;
	.mmi
	xor r14 = r32, r14
	;;
	nop 0
	extr.u r32 = r14, 8, 24
	;;
	.mmi
	xor r32 = r14, r32
	;;
	nop 0
	extr.u r14 = r32, 4, 28
	;;
	.mmi
	xor r14 = r32, r14
	;;
	and r14 = 15, r14
	nop 0
	;;
	.mii
	nop 0
	shr r8 = r8, r14
	nop 0
	;;
	.mib
	nop 0
	and r8 = 1, r8
	br.ret.sptk.many b0
	.endp __paritydi2#
	.align 16
	.align 64
	.global __parityti2#
	.type	__parityti2#, @function
	.proc __parityti2#
__parityti2:
	.prologue
	.body
	.mii
	xor r32 = r33, r32
	addl r8 = 27030, r0
	;;
	extr r14 = r32, 32, 32
	;;
	.mmi
	xor r32 = r14, r32
	;;
	nop 0
	extr.u r14 = r32, 16, 16
	;;
	.mmi
	xor r14 = r32, r14
	;;
	nop 0
	extr.u r15 = r14, 8, 24
	;;
	.mmi
	xor r15 = r14, r15
	;;
	nop 0
	extr.u r14 = r15, 4, 28
	;;
	.mmi
	xor r14 = r15, r14
	;;
	and r14 = 15, r14
	nop 0
	;;
	.mii
	nop 0
	shr r8 = r8, r14
	nop 0
	;;
	.mib
	nop 0
	and r8 = 1, r8
	br.ret.sptk.many b0
	.endp __parityti2#
	.align 16
	.align 64
	.global __paritysi2#
	.type	__paritysi2#, @function
	.proc __paritysi2#
__paritysi2:
	.prologue
	.body
	.mii
	nop 0
	extr.u r14 = r32, 16, 16
	addl r8 = 27030, r0
	;;
	.mii
	xor r14 = r32, r14
	nop 0
	;;
	extr.u r32 = r14, 8, 24
	;;
	.mmi
	xor r32 = r14, r32
	;;
	nop 0
	extr.u r14 = r32, 4, 28
	;;
	.mmi
	xor r14 = r32, r14
	;;
	and r14 = 15, r14
	nop 0
	;;
	.mii
	nop 0
	shr r8 = r8, r14
	nop 0
	;;
	.mib
	nop 0
	and r8 = 1, r8
	br.ret.sptk.many b0
	.endp __paritysi2#
	.align 16
	.align 64
	.global __popcountdi2#
	.type	__popcountdi2#, @function
	.proc __popcountdi2#
__popcountdi2:
	.prologue
	.body
	.mib
	nop 0
	shr.u r14 = r32, 1
	nop 0
	.mlx
	nop 0
	movl r15 = 6148914691236517205
	;;
	.mlx
	and r14 = r15, r14
	movl r16 = 3689348814741910323
	;;
	.mii
	sub r32 = r32, r14
	nop 0
	;;
	shr.u r15 = r32, 2
	.mmi
	and r32 = r16, r32
	;;
	and r15 = r16, r15
	nop 0
	;;
	.mmi
	add r15 = r15, r32
	;;
	nop 0
	shr.u r14 = r15, 4
	;;
	.mlx
	add r14 = r14, r15
	movl r15 = 1085102592571150095
	;;
	.mmi
	nop 0
	and r14 = r15, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r15 = r14, 32
	;;
	add r15 = r15, r14
	;;
	.mii
	nop 0
	extr.u r14 = r15, 16, 16
	;;
	add r14 = r14, r15
	;;
	.mii
	nop 0
	extr.u r8 = r14, 8, 24
	;;
	add r8 = r8, r14
	;;
	.mib
	nop 0
	and r8 = 127, r8
	br.ret.sptk.many b0
	.endp __popcountdi2#
	.align 16
	.align 64
	.global __popcountsi2#
	.type	__popcountsi2#, @function
	.proc __popcountsi2#
__popcountsi2:
	.prologue
	.body
	.mib
	nop 0
	extr.u r14 = r32, 1, 31
	nop 0
	.mlx
	nop 0
	movl r15 = 1431655765
	;;
	.mlx
	and r14 = r15, r14
	movl r16 = 858993459
	;;
	.mii
	sub r14 = r32, r14
	nop 0
	;;
	extr.u r15 = r14, 2, 30
	.mmi
	and r14 = r16, r14
	;;
	and r15 = r16, r15
	nop 0
	;;
	.mmi
	add r14 = r14, r15
	;;
	nop 0
	extr.u r15 = r14, 4, 27
	;;
	.mlx
	add r14 = r15, r14
	movl r15 = 252645135
	;;
	.mmi
	nop 0
	and r14 = r15, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r15 = r14, 16
	;;
	add r14 = r15, r14
	;;
	.mii
	nop 0
	extr.u r8 = r14, 8, 21
	;;
	add r8 = r8, r14
	;;
	.mib
	nop 0
	and r8 = 63, r8
	br.ret.sptk.many b0
	.endp __popcountsi2#
	.align 16
	.align 64
	.global __popcountti2#
	.type	__popcountti2#, @function
	.proc __popcountti2#
__popcountti2:
	.prologue
	.body
	.mlx
	nop 0
	movl r20 = 6148914691236517205
	.mib
	nop 0
	shr.u r27 = r33, 1
	nop 0
	;;
	.mib
	nop 0
	shrp r26 = r33, r32, 1
	nop 0
	.mlx
	and r23 = r20, r27
	movl r15 = 3689348814741910323
	;;
	.mlx
	and r22 = r20, r26
	movl r14 = 1085102592571150095
	;;
	.mmi
	sub r20 = r32, r22
	;;
	cmp.gtu p6, p7 = r20, r32
	and r16 = r15, r20
	;;
	.mmi
	(p7) sub r21 = r33, r23
	;;
	(p6) sub r21 = r33, r23, 1
	nop 0
	;;
	.mii
	nop 0
	shrp r22 = r21, r20, 2
	shr.u r23 = r21, 2
	.mmi
	and r17 = r15, r21
	;;
	and r18 = r15, r22
	and r19 = r15, r23
	;;
	.mmi
	add r20 = r18, r16
	;;
	cmp.gtu p6, p7 = r18, r20
	nop 0
	;;
	.mmi
	(p7) add r21 = r19, r17
	;;
	(p6) add r21 = r19, r17, 1
	nop 0
	;;
	.mii
	nop 0
	shrp r18 = r21, r20, 4
	shr.u r19 = r21, 4
	;;
	.mmi
	add r16 = r18, r20
	;;
	cmp.gtu p6, p7 = r18, r16
	and r15 = r14, r16
	;;
	.mmi
	(p7) add r17 = r19, r21
	;;
	(p6) add r17 = r19, r21, 1
	nop 0
	;;
	.mmi
	and r14 = r14, r17
	;;
	add r14 = r14, r15
	nop 0
	;;
	.mii
	nop 0
	shr.u r15 = r14, 32
	;;
	add r15 = r15, r14
	;;
	.mii
	nop 0
	extr.u r14 = r15, 16, 16
	;;
	add r14 = r14, r15
	;;
	.mii
	nop 0
	extr.u r8 = r14, 8, 24
	;;
	add r8 = r8, r14
	;;
	.mib
	nop 0
	zxt1 r8 = r8
	br.ret.sptk.many b0
	.endp __popcountti2#
	.align 16
	.align 64
	.global __powidf2#
	.type	__powidf2#, @function
	.proc __powidf2#
__powidf2:
	.prologue
	.body
	.mfi
	mov r14 = r33
	mov f6 = f8
	nop 0
	.mfi
	nop 0
	mov f8 = f1
	nop 0
	;;
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	;;
	tbit.z p6, p7 = r14, 0
	.mmi
	add r14 = r15, r14
	;;
	nop 0
	extr r14 = r14, 1, 31
	;;
	.mfi
	nop 0
	(p7) fmpy.d f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r14
	nop 0
	(p6) br.cond.dpnt .L1116
	.align 32
.L1121:
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	extr.u r15 = r14, 31, 1
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r14, 0
	add r14 = r15, r14
	;;
	.mii
	nop 0
	extr r14 = r14, 1, 31
	nop 0
	;;
	.mfi
	nop 0
	(p7) fmpy.d f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r14
	nop 0
	(p7) br.cond.dptk .L1121
	;;
.L1116:
	.mbb
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L1122
	br.ret.sptk.many b0
	;;
.L1122:
	.mmf
	nop 0
	nop 0
	frcpa.s0 f7, p6 = f1, f8
	;;
	.mmf
	nop 0
	nop 0
	(p6) fnma.s1 f6 = f8, f7, f1
	;;
	.mfi
	nop 0
	(p6) fmpy.s1 f9 = f6, f6
	nop 0
	.mfi
	nop 0
	(p6) fma.s1 f6 = f7, f6, f7
	nop 0
	;;
	.mfi
	nop 0
	(p6) fmpy.s1 f10 = f9, f9
	nop 0
	.mfi
	nop 0
	(p6) fma.s1 f6 = f6, f9, f6
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	(p6) fma.s1 f6 = f6, f10, f6
	;;
	.mmf
	nop 0
	nop 0
	(p6) fmpy.d.s1 f9 = f6, f1
	;;
	.mmf
	nop 0
	nop 0
	(p6) fnma.s1 f8 = f8, f9, f1
	;;
	.mmf
	nop 0
	nop 0
	(p6) fma.d.s0 f7 = f8, f6, f9
	;;
	.mfb
	nop 0
	mov f8 = f7
	br.ret.sptk.many b0
	.endp __powidf2#
	.align 16
	.align 64
	.global __powisf2#
	.type	__powisf2#, @function
	.proc __powisf2#
__powisf2:
	.prologue
	.body
	.mfi
	mov r14 = r33
	mov f6 = f8
	nop 0
	.mfi
	nop 0
	mov f8 = f1
	nop 0
	;;
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	;;
	tbit.z p6, p7 = r14, 0
	.mmi
	add r14 = r15, r14
	;;
	nop 0
	extr r14 = r14, 1, 31
	;;
	.mfi
	nop 0
	(p7) fmpy.s f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r14
	nop 0
	(p6) br.cond.dpnt .L1125
	.align 32
.L1130:
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	extr.u r15 = r14, 31, 1
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r14, 0
	add r14 = r15, r14
	;;
	.mii
	nop 0
	extr r14 = r14, 1, 31
	nop 0
	;;
	.mfi
	nop 0
	(p7) fmpy.s f8 = f8, f6
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r14
	nop 0
	(p7) br.cond.dptk .L1130
	;;
.L1125:
	.mbb
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L1131
	br.ret.sptk.many b0
	;;
.L1131:
	.mmf
	nop 0
	nop 0
	frcpa.s0 f6, p6 = f1, f8
	;;
	.mmf
	nop 0
	nop 0
	(p6) fnma.s1 f9 = f8, f6, f1
	;;
	.mmf
	nop 0
	nop 0
	(p6) fma.s1 f7 = f6, f9, f6
	;;
	.mmf
	nop 0
	nop 0
	(p6) fma.s1 f7 = f7, f9, f6
	;;
	.mmf
	nop 0
	nop 0
	(p6) fmpy.s.s1 f9 = f7, f1
	;;
	.mmf
	nop 0
	nop 0
	(p6) fnma.s1 f8 = f9, f8, f1
	;;
	.mmf
	nop 0
	nop 0
	(p6) fma.s.s0 f6 = f8, f7, f9
	;;
	.mfb
	nop 0
	mov f8 = f6
	br.ret.sptk.many b0
	.endp __powisf2#
	.align 16
	.align 64
	.global __ucmpdi2#
	.type	__ucmpdi2#, @function
	.proc __ucmpdi2#
__ucmpdi2:
	.prologue
	.body
	.mii
	nop 0
	extr.u r15 = r32, 32, 32
	;;
	extr.u r14 = r33, 32, 32
	;;
	.mib
	cmp4.gtu p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1136
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1132
	;;
	.mib
	cmp4.gtu p6, p7 = r33, r32
	nop 0
	(p6) br.cond.dpnt .L1136
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r33, r32
	nop 0
	;;
	.mii
	(p6) addl r8 = 2, r0
	nop 0
	;;
	(p7) addl r8 = 1, r0
.L1132:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1136:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	.endp __ucmpdi2#
	.align 16
	.align 64
	.global __aeabi_ulcmp#
	.type	__aeabi_ulcmp#, @function
	.proc __aeabi_ulcmp#
__aeabi_ulcmp:
	.prologue
	.body
	.mii
	nop 0
	extr.u r15 = r32, 32, 32
	;;
	extr.u r14 = r33, 32, 32
	;;
	.mib
	cmp4.gtu p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1144
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1141
	;;
	.mib
	cmp4.gtu p6, p7 = r33, r32
	nop 0
	(p6) br.cond.dpnt .L1144
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r33, r32
	nop 0
	;;
	.mii
	(p6) addl r8 = 2, r0
	nop 0
	;;
	(p7) addl r8 = 1, r0
	;;
.L1141:
	.mib
	nop 0
	adds r8 = -1, r8
	br.ret.sptk.many b0
	;;
.L1144:
	.mmi
	nop 0
	mov r8 = r0
	nop 0
	;;
	.mib
	nop 0
	adds r8 = -1, r8
	br.ret.sptk.many b0
	.endp __aeabi_ulcmp#
	.align 16
	.align 64
	.global __ucmpti2#
	.type	__ucmpti2#, @function
	.proc __ucmpti2#
__ucmpti2:
	.prologue
	.body
	.mib
	cmp.gtu p6, p7 = r35, r33
	nop 0
	(p6) br.cond.dpnt .L1152
	;;
	.mmi
	nop 0
	cmp.ltu p6, p7 = r35, r33
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1148
	;;
	.mib
	cmp.gtu p6, p7 = r34, r32
	nop 0
	(p6) br.cond.dpnt .L1152
	;;
	.mmi
	nop 0
	cmp.ltu p6, p7 = r34, r32
	nop 0
	;;
	.mii
	(p6) addl r8 = 2, r0
	nop 0
	;;
	(p7) addl r8 = 1, r0
.L1148:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1152:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
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
