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
	.mmi
	adds r14 = -1, r34
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	mov r8 = r32
	cmp.geu p6, p7 = r33, r32
	(p6) br.cond.dptk .L6
	;;
	.mmi
	add r15 = r33, r34
	nop 0
	add r14 = r32, r14
	.mmb
	cmp.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mii
	sub r33 = r15, r33, 1
	adds r15 = -1, r15
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
	st1 [r14] = r16, -1
	nop 0
	br.cloop.sptk.few .L8
	;;
.L7:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L6:
	.mmi
	add r14 = r33, r34
	nop 0
	cmp.eq p6, p7 = r33, r32
	.mmb
	mov r15 = r32
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	sub r14 = r14, r33, 1
	cmp.eq p6, p7 = 0, r34
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
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
	cmp.eq p6, p7 = 0, r35
	adds r14 = -1, r35
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mib
	nop 0
	zxt1 r34 = r34
	(p6) br.cond.dpnt .L21
	;;
	.mii
	nop 0
	(p7) mov ar.lc = r14
	nop 0
	.align 32
.L22:
	.mmi
	ld1 r14 = [r33], 1
	nop 0
	mov r8 = r32
	;;
	.mmi
	cmp4.ne p6, p7 = r34, r14
	st1 [r32] = r14, 1
	nop 0
	.bbb
	nop 0
	(p7) br.cond.dpnt .L35
	br.cloop.sptk.few .L22
	;;
.L21:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L35:
	.mib
	adds r8 = 1, r8
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp memccpy#
	.align 16
	.align 64
	.global memchr#
	.type	memchr#, @function
	.proc memchr#
memchr:
	.prologue
	.mmi
	cmp.eq p6, p7 = 0, r34
	adds r14 = -1, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mib
	nop 0
	zxt1 r33 = r33
	(p6) br.cond.dpnt .L43
	;;
	.mii
	nop 0
	(p7) mov ar.lc = r14
	nop 0
	.align 32
.L38:
	.mmi
	mov r8 = r32
	ld1 r14 = [r32], 1
	nop 0
	;;
	.mbb
	cmp4.ne p6, p7 = r33, r14
	(p7) br.cond.dpnt .L36
	br.cloop.sptk.few .L38
.L43:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L36:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp memchr#
	.align 16
	.align 64
	.global memcmp#
	.type	memcmp#, @function
	.proc memcmp#
memcmp:
	.prologue
	.mmi
	cmp.eq p6, p7 = 0, r34
	adds r14 = -1, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L54
	;;
	.mii
	nop 0
	(p7) mov ar.lc = r14
	nop 0
	.align 32
.L48:
	.mmi
	ld1 r8 = [r32]
	nop 0
	adds r32 = 1, r32
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mbb
	cmp4.eq p6, p7 = r14, r8
	(p7) br.cond.dpnt .L58
	br.cloop.sptk.few .L48
	;;
.L54:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L58:
	.mib
	sub r8 = r8, r14
	mov ar.lc = r2
	br.ret.sptk.many b0
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
	(p6) br.cond.dpnt .L60
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
.L60:
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
	mov r8 = r32
	br.cloop.sptk.few .L69
	;;
	.align 32
.L72:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L66:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L69:
	.mmi
	ld1 r14 = [r8]
	nop 0
	adds r32 = -1, r32
	;;
	.mib
	cmp4.eq p6, p7 = r33, r14
	nop 0
	(p6) br.cond.dpnt .L66
	;;
	.mib
	nop 0
	mov r8 = r32
	br.cloop.sptk.few .L69
	.mib
	nop 0
	nop 0
	br .L72
	.endp memrchr#
	.align 16
	.align 64
	.global memset#
	.type	memset#, @function
	.proc memset#
memset:
	.prologue
	.mmi
	adds r15 = -1, r34
	mov r14 = r32
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	mov r8 = r32
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L74
	;;
	.mii
	nop 0
	mov ar.lc = r15
	nop 0
	;;
	.align 32
.L75:
	.mib
	st1 [r14] = r33, 1
	nop 0
	br.cloop.sptk.few .L75
	;;
.L74:
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
	.mmi
	ld1 r15 = [r33]
	adds r14 = 1, r32
	adds r33 = 1, r33
	;;
	.mii
	nop 0
	sxt1 r16 = r15
	nop 0
	.mmi
	st1 [r32] = r15
	;;
	cmp4.eq p6, p7 = 0, r16
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L82
	;;
	.align 32
.L84:
	.mii
	ld1 r15 = [r33], 1
	mov r8 = r14
	;;
	sxt1 r16 = r15
	.mmi
	nop 0
	st1 [r14] = r15, 1
	nop 0
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L84
.L82:
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
	(p7) br.cond.dpnt .L89
	;;
	.align 32
.L90:
	.mii
	nop 0
	zxt1 r15 = r15
	nop 0
	;;
	.mib
	cmp4.ne p6, p7 = r33, r15
	nop 0
	(p7) br.cond.dpnt .L89
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
	(p7) br.cond.dptk .L90
.L89:
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
.L99:
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
	(p6) br.cond.dpnt .L97
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L99
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L97:
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
	(p6) br.cond.dpnt .L104
	.align 32
.L105:
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
	(p6) br.cond.dptk .L105
.L104:
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
	(p6) br.cond.dpnt .L110
	;;
	.align 32
.L111:
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
	(p6) br.cond.dptk .L111
.L110:
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
	mov r14 = r33
	add r34 = r33, r34
	;;
	.mib
	(p6) mov r8 = r0
	nop 0
	(p6) br.cond.dpnt .L116
	;;
	.mmi
	ld1 r15 = [r32]
	nop 0
	adds r32 = 1, r32
	;;
	.mib
	mov r8 = r15
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dpnt .L118
	.align 32
.L119:
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
	(p7) br.cond.dpnt .L118
	;;
	.mmi
	nop 0
	ld1 r15 = [r32], 1
	nop 0
	;;
	.mib
	mov r8 = r15
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L119
	.mmi
	mov r33 = r14
	nop 0
	nop 0
	;;
.L118:
	.mii
	ld1 r14 = [r33]
	nop 0
	;;
	sub r8 = r8, r14
.L116:
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
	and r14 = -2, r34
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	cmp.ge p6, p7 = 1, r34
	nop 0
	(p6) br.cond.dpnt .L125
	;;
	.mii
	adds r14 = -2, r14
	nop 0
	;;
	shr.u r14 = r14, 1
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L127:
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
	br.cloop.sptk.few .L127
	;;
.L125:
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
	.mmi
	mov r2 = r32
	adds r15 = -127, r32
	cmp4.geu p8, p9 = 31, r32
	.mmi
	addl r8 = 1, r0
	;;
	addl r14 = -8232, r2
	cmp4.geu p6, p7 = 32, r15
	;;
	.mib
	cmp4.geu p10, p11 = 1, r14
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	(p6) br.cond.dptk .L151
	.mib
	addl r2 = -65529, r2
	nop 0
	(p10) br.cond.dpnt .L151
	;;
	.mmi
	nop 0
	cmp4.geu p6, p7 = 2, r2
	nop 0
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L151:
	.mib
	nop 0
	nop 0
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
	addl r14 = 8231, r0
	mov r2 = r32
	;;
	cmp4.geu p8, p9 = r14, r32
	.mmi
	addl r14 = 254, r0
	addl r16 = -8234, r2
	addl r15 = -57344, r2
	;;
	.mib
	cmp4.ltu p6, p7 = r14, r32
	addl r14 = 47061, r0
	(p7) br.cond.dpnt .L167
	;;
	.mmi
	cmp4.geu p6, p7 = r14, r16
	addl r14 = 8184, r0
	addl r16 = -65532, r2
	;;
	.mmi
	cmp4.geu p10, p11 = r14, r15
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	nop 0
	.mmb
	addl r14 = 65534, r0
	addl r15 = 1048579, r0
	(p6) br.cond.dpnt .L163
	;;
	.mib
	and r2 = r14, r2
	cmp4.ltu p6, p7 = r15, r16
	(p10) br.cond.dpnt .L163
	;;
	.mib
	(p6) mov r8 = r0
	nop 0
	(p6) br.cond.dpnt .L159
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
.L159:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L163:
	.mib
	nop 0
	addl r8 = 1, r0
	br.ret.sptk.many b0
.L167:
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
	or r14 = 32, r32
	adds r32 = -48, r32
	addl r8 = 1, r0
	;;
	.mib
	adds r14 = -97, r14
	cmp4.geu p6, p7 = 9, r32
	(p6) br.cond.dptk .L168
	;;
	.mmi
	nop 0
	cmp4.geu p6, p7 = 5, r14
	nop 0
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L168:
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
	.mfi
	nop 0
	mov f6 = f8
	nop 0
	.mfi
	nop 0
	fcmp.unord p8, p9 = f9, f9
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	mov f8 = f0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f6, f6
	;;
	.mfb
	nop 0
	(p6) mov f8 = f6
	(p6) br.cond.dpnt .L175
	;;
	.mfb
	nop 0
	(p8) mov f8 = f9
	(p8) br.cond.dpnt .L175
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f6, f9
	;;
	.mfi
	nop 0
	(p6) fsub.d f8 = f6, f9
	nop 0
.L175:
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
	.mfi
	nop 0
	mov f6 = f8
	nop 0
	.mfi
	nop 0
	fcmp.unord p8, p9 = f9, f9
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	mov f8 = f0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f6, f6
	;;
	.mfb
	nop 0
	(p6) mov f8 = f6
	(p6) br.cond.dpnt .L185
	;;
	.mfb
	nop 0
	(p8) mov f8 = f9
	(p8) br.cond.dpnt .L185
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f6, f9
	;;
	.mfi
	nop 0
	(p6) fsub.s f8 = f6, f9
	nop 0
.L185:
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
	(p6) br.cond.dpnt .L202
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L201
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
	(p6) br.cond.dptk .L197
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L195
.L202:
	.mmi
	setf.d f8 = r14
	nop 0
	nop 0
.L195:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L197:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L202
.L201:
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
	(p6) br.cond.dpnt .L212
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L211
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
	(p6) br.cond.dptk .L207
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L205
.L212:
	.mmi
	setf.s f8 = r14
	nop 0
	nop 0
.L205:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L207:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L212
.L211:
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
	(p6) br.cond.dpnt .L220
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L221
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
	(p6) br.cond.dptk .L217
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L215
	.mmi
	nop 0
	adds r15 = 16, r12
	nop 0
	;;
	.mmi
	ldfe f8 = [r15]
	nop 0
	nop 0
.L215:
	.mib
	nop 0
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L217:
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
	(p6) br.cond.dptk .L215
	;;
.L221:
	.mib
	ldfe f8 = [r12]
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L220:
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
	(p6) br.cond.dpnt .L230
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L232
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
	(p6) br.cond.dptk .L227
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L230
.L232:
	.mib
	setf.d f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L227:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L232
.L230:
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
	(p6) br.cond.dpnt .L240
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L242
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
	(p6) br.cond.dptk .L237
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L240
.L242:
	.mib
	setf.s f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L237:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L242
.L240:
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
	(p6) br.cond.dpnt .L250
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L252
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
	(p6) br.cond.dptk .L247
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L252
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
.L247:
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
.L252:
	.body
	.copy_state 2
	.mib
	ldfe f8 = [r12]
	.label_state 3
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L250:
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
	addl r16 = @gprel(s.0#), gp
	cmp4.eq p6, p7 = 0, r32
	mov r14 = r32
	;;
	.mib
	add r17 = r1, r17
	(p6) addl r16 = @gprel(s.0#), gp
	(p6) br.cond.dpnt .L256
	.align 32
.L257:
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
	(p6) br.cond.dptk .L257
	;;
.L256:
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
	.mii
	mov r14 = r32
	cmp.ne p6, p7 = 0, r33
	;;
	(p7) adds r14 = 8, r32
	;;
	.mmi
	nop 0
	(p7) st8 [r14] = r0
	nop 0
	.mmb
	(p7) st8 [r32] = r0
	nop 0
	(p7) br.cond.dpnt .L266
	;;
	.mmi
	ld8 r15 = [r33]
	;;
	st8 [r14] = r15, 8
	nop 0
	;;
	.mmi
	nop 0
	st8 [r14] = r33
	nop 0
	.mmi
	ld8.a r14 = [r32]
	st8 [r33] = r32
	nop 0
	;;
	.mmi
	nop 0
	adds r15 = 8, r14
	cmp.eq p6, p7 = 0, r14
	.mmi
	chk.a.clr r14, .L274
.L275:
	.pred.rel.mutex p6, p7
	;;
	(p7) st8 [r15] = r32
	nop 0
.L266:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L274:
	.mmi
	nop 0
	ld8 r14 = [r32]
	nop 0
	;;
	.mib
	adds r15 = 8, r14
	cmp.eq p6, p7 = 0, r14
	br .L275
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
	nop 0
	adds r16 = 8, r14
	;;
	.mmi
	(p7) ld8 r17 = [r15]
	;;
	(p7) st8 [r16] = r17
	nop 0
	;;
	.mmi
	ld8 r15 = [r15]
	;;
	cmp.eq p6, p7 = 0, r15
	nop 0
	;;
	.mib
	(p7) st8 [r15] = r14
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
	(p6) br.cond.dpnt .L287
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L289:
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
	(p6) br.cond.dpnt .L286
	br.cloop.sptk.few .L289
	;;
.L287:
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
	(p6) br.cond.dpnt .L286
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
.L286:
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
	adds r15 = -1, r14
	nop 0
	.save rp, r38
	mov r38 = b0
	.body
	.mmb
	cmp.eq p6, p7 = 0, r14
	nop 0
	(p6) br.cond.dpnt .L304
	;;
	.mii
	nop 0
	mov ar.lc = r15
	nop 0
	.align 32
.L306:
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
	(p6) br.cond.dpnt .L303
	br.cloop.sptk.few .L306
.L304:
	.mmi
	mov r37 = r0
	nop 0
	nop 0
	;;
.L303:
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
	.mii
	ld1 r14 = [r32]
	adds r15 = 1, r32
	;;
	sxt1 r14 = r14
	;;
	.mmi
	adds r16 = -9, r14
	;;
	cmp4.geu p6, p7 = 4, r16
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p7) br.cond.dpnt .L319
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
	;;
	adds r16 = -9, r14
	;;
	.mmi
	nop 0
	cmp4.geu p6, p7 = 4, r16
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L340
	;;
.L319:
	.mib
	cmp4.eq p6, p7 = 43, r14
	nop 0
	(p6) br.cond.dpnt .L321
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 45, r14
	(p6) br.cond.dptk .L322
.L334:
	.mii
	ld1 r15 = [r32]
	mov r19 = r0
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
	nop 0
	(p7) mov r8 = r0
	(p7) br.cond.dpnt .L325
	;;
.L324:
	.mmi
	nop 0
	adds r32 = 1, r32
	mov r8 = r0
	;;
	.align 32
.L327:
	.mmi
	ld1 r18 = [r32], 1
	shladd r14 = r8, 2, r0
	adds r17 = -48, r15
	;;
	.mii
	add r14 = r14, r8
	sxt1 r15 = r18
	sxt1 r17 = r17
	;;
	.mmi
	shladd r14 = r14, 1, r0
	nop 0
	adds r18 = -48, r15
	;;
	.mib
	sub r8 = r14, r17
	cmp4.geu p6, p7 = 9, r18
	(p6) br.cond.dptk .L327
	;;
	.mbb
	cmp4.ne p6, p7 = 0, r19
	(p7) br.cond.dpnt .L325
	br.ret.sptk.many b0
	;;
.L325:
	.mib
	nop 0
	sub r8 = r0, r8
	br.ret.sptk.many b0
.L322:
	.mmi
	adds r32 = 1, r32
	;;
	ld1 r15 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r15
	;;
	adds r14 = -48, r15
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = 9, r14
	nop 0
	;;
	.mib
	nop 0
	(p7) addl r19 = 1, r0
	(p7) br.cond.dptk .L324
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
.L321:
	.mib
	nop 0
	adds r32 = 1, r32
	br .L334
	.endp atoi#
	.align 16
	.align 64
	.global atol#
	.type	atol#, @function
	.proc atol#
atol:
	.prologue
	.body
	.mii
	ld1 r14 = [r32]
	adds r15 = 1, r32
	;;
	sxt1 r14 = r14
	;;
	.mmi
	adds r16 = -9, r14
	;;
	cmp4.geu p6, p7 = 4, r16
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p7) br.cond.dpnt .L342
	.align 32
.L363:
	.mmi
	mov r32 = r15
	ld1 r14 = [r15], 1
	nop 0
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	;;
	adds r16 = -9, r14
	;;
	.mmi
	nop 0
	cmp4.geu p6, p7 = 4, r16
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L363
	;;
.L342:
	.mib
	cmp4.eq p6, p7 = 43, r14
	nop 0
	(p6) br.cond.dpnt .L344
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 45, r14
	(p6) br.cond.dptk .L345
.L357:
	.mii
	ld1 r15 = [r32]
	mov r19 = r0
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
	nop 0
	(p7) mov r8 = r0
	(p7) br.cond.dpnt .L348
	;;
.L347:
	.mmi
	nop 0
	adds r32 = 1, r32
	mov r8 = r0
	;;
	.align 32
.L350:
	.mmi
	ld1 r18 = [r32], 1
	shladd r14 = r8, 2, r0
	adds r17 = -48, r15
	;;
	.mii
	add r14 = r14, r8
	sxt1 r15 = r18
	sxt1 r17 = r17
	;;
	.mmi
	shladd r14 = r14, 1, r0
	nop 0
	adds r18 = -48, r15
	;;
	.mib
	sub r8 = r14, r17
	cmp4.geu p6, p7 = 9, r18
	(p6) br.cond.dptk .L350
	;;
	.mbb
	cmp4.ne p6, p7 = 0, r19
	(p7) br.cond.dpnt .L348
	br.ret.sptk.many b0
	;;
.L348:
	.mib
	nop 0
	sub r8 = r0, r8
	br.ret.sptk.many b0
.L345:
	.mmi
	adds r32 = 1, r32
	;;
	ld1 r15 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r15
	;;
	adds r14 = -48, r15
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = 9, r14
	nop 0
	;;
	.mib
	nop 0
	(p7) addl r19 = 1, r0
	(p7) br.cond.dptk .L347
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
.L344:
	.mib
	nop 0
	adds r32 = 1, r32
	br .L357
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
	(p6) br.cond.dpnt .L367
	;;
	.mmi
	setf.sig f4 = r33
	nop 0
	nop 0
	.align 32
.L370:
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
	(p6) br.cond.dpnt .L371
	;;
	.mib
	getf.sig r14 = f3
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dpnt .L366
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
	(p6) br.cond.dptk .L370
.L367:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L366:
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
.L371:
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
	(p6) br.cond.dptk .L370
	.mib
	nop 0
	nop 0
	br .L367
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
	(p6) br.cond.dpnt .L379
	;;
	.mmi
	setf.sig f4 = r33
	nop 0
	nop 0
	.align 32
.L382:
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
	.mmi
	nop 0
	adds r38 = -1, r38
	nop 0
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
	(p6) br.cond.dpnt .L378
	;;
	.mmi
	cmp4.ge p6, p7 = 0, r8
	;;
	(p7) getf.sig r15 = f2
	(p7) extr r39 = r38, 1, 31
	;;
	.mii
	(p7) getf.sig r14 = f3
	mov r38 = r39
	;;
	(p7) add r15 = r15, r14
	;;
	.mib
	(p7) setf.sig f4 = r15
	cmp4.ne p6, p7 = 0, r39
	(p6) br.cond.dptk .L382
.L379:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L378:
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
	.mii
	ld4 r14 = [r32]
	adds r15 = 4, r32
	;;
	cmp4.ne p6, p7 = 0, r14
	.mmi
	cmp4.ne p8, p9 = r14, r33
	;;
	(p8) addl r14 = 1, r0
	(p6) addl r16 = 1, r0
	;;
	.mii
	(p9) mov r14 = r0
	(p7) mov r16 = r0
	;;
	and r14 = r16, r14
	;;
	.mmi
	nop 0
	cmp4.eq p8, p9 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p8) mov r8 = r32
	(p8) br.cond.dpnt .L404
	;;
	.align 32
.L405:
	.mmi
	mov r8 = r15
	ld4 r14 = [r15], 4
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
	(p8) br.cond.dptk .L405
.L404:
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
	(p6) br.cond.dpnt .L412
	.align 32
.L413:
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
	(p6) br.cond.dptk .L413
	;;
.L412:
	.mmi
	nop 0
	cmp4.lt p8, p9 = r15, r16
	addl r8 = -1, r0
	.mmb
	nop 0
	cmp4.gt p6, p7 = r15, r16
	(p6) br.cond.dptk .L411
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L411:
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
.L420:
	.mmi
	ld4 r14 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mib
	st4 [r15] = r14, 4
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L420
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
	.mii
	ld4 r15 = [r32]
	adds r14 = 4, r32
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L425
	;;
	.align 32
.L426:
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
	(p6) br.cond.dptk .L426
.L425:
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
	.mmi
	adds r14 = -1, r34
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	cmp.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L440
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L433:
	.mmi
	mov r16 = r33
	nop 0
	mov r17 = r32
	.mmi
	ld4 r14 = [r33], 4
	ld4 r15 = [r32], 4
	nop 0
	;;
	.mmi
	cmp4.eq p10, p11 = r14, r15
	cmp4.ne p8, p9 = 0, r15
	cmp4.ne p6, p7 = 0, r14
	;;
	.mmi
	(p10) addl r15 = 1, r0
	nop 0
	(p8) addl r14 = 1, r0
	;;
	.mmi
	(p11) mov r15 = r0
	nop 0
	(p9) mov r14 = r0
	;;
	.mii
	and r14 = r15, r14
	nop 0
	;;
	tbit.nz.and.orcm p6, p7 = r14, 0
	.bbb
	nop 0
	(p7) br.cond.dpnt .L444
	br.cloop.sptk.few .L433
.L440:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L431:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L444:
	.mmi
	nop 0
	ld4 r15 = [r17]
	addl r8 = -1, r0
	.mmi
	nop 0
	ld4 r14 = [r16]
	nop 0
	;;
	.mib
	cmp4.lt p8, p9 = r14, r15
	cmp4.le p6, p7 = r14, r15
	(p7) br.cond.dptk .L431
	;;
	.mmi
	(p8) addl r8 = 1, r0
	nop 0
	mov ar.lc = r2
	;;
	.mib
	nop 0
	(p9) mov r8 = r0
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
	cmp.eq p6, p7 = 0, r34
	adds r14 = -1, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L452
	;;
	.mii
	nop 0
	(p7) mov ar.lc = r14
	nop 0
	.align 32
.L447:
	.mmi
	mov r8 = r32
	ld4 r14 = [r32], 4
	nop 0
	;;
	.mbb
	cmp4.ne p6, p7 = r33, r14
	(p7) br.cond.dpnt .L445
	br.cloop.sptk.few .L447
.L452:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L445:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp wmemchr#
	.align 16
	.align 64
	.global wmemcmp#
	.type	wmemcmp#, @function
	.proc wmemcmp#
wmemcmp:
	.prologue
	.mmi
	cmp.eq p6, p7 = 0, r34
	adds r14 = -1, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L464
	;;
	.mii
	nop 0
	(p7) mov ar.lc = r14
	nop 0
	.align 32
.L457:
	.mmi
	ld4 r15 = [r32]
	nop 0
	adds r32 = 4, r32
	.mmi
	ld4 r14 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mbb
	cmp4.eq p6, p7 = r14, r15
	(p7) br.cond.dpnt .L468
	br.cloop.sptk.few .L457
.L464:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L455:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L468:
	.mmi
	nop 0
	cmp4.lt p8, p9 = r14, r15
	addl r8 = -1, r0
	.mmb
	nop 0
	cmp4.le p6, p7 = r14, r15
	(p7) br.cond.dptk .L455
	;;
	.mmi
	(p8) addl r8 = 1, r0
	nop 0
	mov ar.lc = r2
	;;
	.mib
	nop 0
	(p9) mov r8 = r0
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
	(p6) br.cond.dpnt .L470
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
.L470:
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
	adds r14 = -1, r34
	mov r15 = r32
	(p6) br.cond.dpnt .L477
	;;
	.mib
	nop 0
	cmp.gtu p6, p7 = r16, r17
	(p7) br.cond.dptk .L489
	;;
	.mib
	shladd r14 = r14, 2, r0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L477
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
.L480:
	.mmi
	nop 0
	ld4 r15 = [r33], -4
	nop 0
	;;
	.mib
	st4 [r14] = r15, -4
	nop 0
	br.cloop.sptk.few .L480
	;;
.L477:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L489:
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L477
	;;
	.mii
	nop 0
	(p6) mov ar.lc = r14
	nop 0
	.align 32
.L479:
	.mmi
	ld4 r14 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mib
	st4 [r15] = r14, 4
	nop 0
	br.cloop.sptk.few .L479
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
	(p6) br.cond.dpnt .L491
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	;;
	.align 32
.L492:
	.mib
	st4 [r15] = r33
	adds r15 = 4, r15
	br.cloop.sptk.few .L492
	;;
.L491:
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
	.mmi
	nop 0
	adds r14 = -1, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	cmp.leu p6, p7 = r33, r32
	(p6) br.cond.dptk .L500
	;;
	.mmi
	add r33 = r33, r14
	nop 0
	add r14 = r32, r34
	.mmb
	cmp.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L499
	;;
	.mii
	sub r32 = r14, r32, 1
	adds r14 = -1, r14
	;;
	mov ar.lc = r32
	.align 32
.L502:
	.mmi
	nop 0
	ld1 r15 = [r14], -1
	nop 0
	;;
	.mib
	st1 [r33] = r15, -1
	nop 0
	br.cloop.sptk.few .L502
	;;
.L499:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L500:
	.mmi
	add r14 = r32, r34
	nop 0
	cmp.eq p6, p7 = r33, r32
	.mmb
	mov r15 = r33
	nop 0
	(p6) br.cond.dpnt .L499
	;;
	.mmi
	nop 0
	sub r14 = r14, r32, 1
	cmp.eq p6, p7 = 0, r34
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L499
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L503:
	.mmi
	ld1 r14 = [r32]
	nop 0
	adds r32 = 1, r32
	;;
	.mib
	st1 [r15] = r14, 1
	nop 0
	br.cloop.sptk.few .L503
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
.L543:
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
	(p7) br.cond.dpnt .L540
	br.cloop.sptk.few .L543
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L540:
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
	(p6) br.cond.dpnt .L547
	;;
	.mmi
	nop 0
	mov r8 = r14
	cmp4.ne p6, p7 = 0, r14
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L547
	;;
	.mmi
	addl r8 = 1, r0
	nop 0
	nop 0
	;;
	.align 32
.L549:
	.mii
	nop 0
	extr r14 = r32, 1, 31
	adds r8 = 1, r8
	;;
	.mib
	mov r32 = r14
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L549
.L547:
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
	.mmi
	addl r8 = 1, r0
	;;
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
	nop 0
	(p6) br.cond.dptk .L554
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
.L554:
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
	.mmi
	addl r8 = 1, r0
	;;
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
	nop 0
	(p6) br.cond.dptk .L559
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
.L559:
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
	.mmi
	addl r8 = 1, r0
	;;
	add r14 = r1, r14
	nop 0
	;;
	.mmi
	nop 0
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
	nop 0
	(p6) br.cond.dptk .L564
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
.L564:
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
	.mfi
	nop 0
	fcmp.unord p6, p7 = f8, f8
	cmp4.le p8, p9 = r0, r33
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L572
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
	(p6) br.cond.dptk .L572
	.mib
	nop 0
	tbit.z p6, p7 = r33, 0
	nop 0
	.mlx
	nop 0
	movl r14 = 0x40000000
	;;
	.mlx
	setf.s f6 = r14
	(p9) movl r14 = 0x3f000000
	;;
	.mib
	(p9) setf.s f6 = r14
	nop 0
	(p6) br.cond.dptk .L574
	;;
	.align 32
.L575:
	.mfi
	nop 0
	fmpy.s f8 = f8, f6
	nop 0
.L574:
	.mii
	nop 0
	extr.u r14 = r33, 31, 1
	;;
	add r33 = r14, r33
	;;
	.mii
	nop 0
	extr r33 = r33, 1, 31
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L572
.L576:
	.mii
	nop 0
	extr.u r14 = r33, 31, 1
	nop 0
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	nop 0
	;;
	.mib
	add r14 = r14, r33
	tbit.nz p6, p7 = r33, 0
	(p6) br.cond.dptk .L575
	;;
	.mib
	nop 0
	extr r33 = r14, 1, 31
	br .L576
.L572:
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
	.mfi
	nop 0
	fcmp.unord p6, p7 = f8, f8
	cmp4.le p8, p9 = r0, r33
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L584
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
	(p6) br.cond.dptk .L584
	.mib
	nop 0
	tbit.z p6, p7 = r33, 0
	nop 0
	.mlx
	nop 0
	movl r14 = 0x4000000000000000
	;;
	.mlx
	setf.d f6 = r14
	(p9) movl r14 = 0x3fe0000000000000
	;;
	.mib
	(p9) setf.d f6 = r14
	nop 0
	(p6) br.cond.dptk .L586
	;;
	.align 32
.L587:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	nop 0
.L586:
	.mii
	nop 0
	extr.u r14 = r33, 31, 1
	;;
	add r33 = r14, r33
	;;
	.mii
	nop 0
	extr r33 = r33, 1, 31
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L584
.L588:
	.mii
	nop 0
	extr.u r14 = r33, 31, 1
	nop 0
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	nop 0
	;;
	.mib
	add r14 = r14, r33
	tbit.nz p6, p7 = r33, 0
	(p6) br.cond.dptk .L587
	;;
	.mib
	nop 0
	extr r33 = r14, 1, 31
	br .L588
.L584:
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
	.mfi
	nop 0
	fcmp.unord p6, p7 = f8, f8
	cmp4.le p8, p9 = r0, r34
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L596
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
	(p6) br.cond.dptk .L596
	.mlx
	nop 0
	(p9) movl r14 = @gprel(.LC5)
	;;
	.mib
	nop 0
	tbit.z p6, p7 = r34, 0
	nop 0
	.mlx
	nop 0
	(p8) movl r14 = @gprel(.LC4)
	;;
	.mmi
	nop 0
	add r14 = r1, r14
	nop 0
	;;
	.mib
	ldfe f6 = [r14]
	nop 0
	(p6) br.cond.dptk .L598
	;;
	.align 32
.L599:
	.mfi
	nop 0
	fmpy f8 = f8, f6
	nop 0
.L598:
	.mii
	nop 0
	extr.u r14 = r34, 31, 1
	;;
	add r34 = r14, r34
	;;
	.mii
	nop 0
	extr r34 = r34, 1, 31
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L596
.L600:
	.mii
	nop 0
	extr.u r14 = r34, 31, 1
	nop 0
	.mfi
	nop 0
	fmpy f6 = f6, f6
	nop 0
	;;
	.mib
	add r14 = r14, r34
	tbit.nz p6, p7 = r34, 0
	(p6) br.cond.dptk .L599
	;;
	.mib
	nop 0
	extr r34 = r14, 1, 31
	br .L600
.L596:
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
	.mmi
	add r14 = r33, r34
	mov r17 = r32
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	mov r8 = r32
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L608
	;;
	.mii
	sub r14 = r14, r33, 1
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L609:
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
	br.cloop.sptk.few .L609
	;;
.L608:
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
	(p6) br.cond.dpnt .L617
	;;
	.align 32
.L618:
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
	(p6) br.cond.dptk .L618
	;;
.L617:
	.mmi
	nop 0
	cmp.eq p6, p7 = 0, r34
	adds r15 = -1, r34
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L619
	;;
	.mii
	nop 0
	(p7) mov ar.lc = r15
	nop 0
	.align 32
.L620:
	.mii
	ld1 r15 = [r33], 1
	nop 0
	;;
	sxt1 r16 = r15
	.mmi
	nop 0
	st1 [r14] = r15, 1
	nop 0
	;;
	.mbb
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dpnt .L622
	br.cloop.sptk.few .L620
.L619:
	.mmi
	st1 [r14] = r0
	nop 0
	nop 0
	;;
.L622:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	.endp strncat#
	.align 16
	.align 64
	.global strnlen#
	.type	strnlen#, @function
	.proc strnlen#
strnlen:
	.prologue
	.mmb
	cmp.eq p6, p7 = 0, r33
	adds r14 = -1, r33
	nop 0
	.mib
	mov r8 = r0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p6) br.cond.dpnt .L640
	;;
	.mii
	nop 0
	(p7) mov ar.lc = r14
	nop 0
.L633:
	.mmi
	ld1 r14 = [r32], 1
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mib
	cmp4.ne p6, p7 = 0, r14
	nop 0
	(p6) br.cond.dpnt .L641
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L641:
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L633
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L640:
	.mib
	mov r8 = r0
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
	(p7) br.cond.dpnt .L647
.L643:
	.mmi
	mov r15 = r33
	nop 0
	nop 0
	;;
	.align 32
.L646:
	.mmi
	ld1 r14 = [r15], 1
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mib
	cmp4.ne p6, p7 = 0, r14
	nop 0
	(p7) br.cond.dpnt .L651
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r16, r14
	(p7) br.cond.dptk .L646
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L651:
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
	(p7) br.cond.dptk .L643
.L647:
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
.L654:
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
	(p6) br.cond.dptk .L654
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
	.mib
	mov r19 = r14
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L669
	.align 32
.L661:
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
	(p6) br.cond.dptk .L661
	;;
	.mmi
	cmp.eq p6, p7 = r33, r16
	nop 0
	sub r20 = r16, r33
	.mib
	nop 0
	zxt1 r21 = r19
	(p6) br.cond.dpnt .L669
	;;
	.mmi
	(p7) add r20 = r33, r20
	nop 0
	nop 0
	.align 32
.L667:
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
	(p6) br.cond.dpnt .L666
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L667
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
.L666:
	.mmi
	nop 0
	mov r16 = r21
	mov r14 = r33
	;;
	.align 32
.L663:
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
	(p7) br.cond.dpnt .L664
	;;
	.mmi
	nop 0
	ld1 r15 = [r32], 1
	nop 0
	;;
	.mib
	mov r16 = r15
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L663
	.mmi
	mov r17 = r14
	nop 0
	nop 0
	;;
.L664:
	.mmi
	ld1 r14 = [r17]
	nop 0
	adds r32 = 1, r8
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r16, r14
	(p7) br.cond.dptk .L667
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L669:
	.mib
	nop 0
	mov r8 = r32
	br.ret.sptk.many b0
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
	(p6) br.cond.dpnt .L688
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L680
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L679
.L680:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L688:
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dptk .L680
.L679:
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
	sub r20 = r33, r35
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmi
	add r18 = r32, r35
	nop 0
	cmp.eq p8, p9 = 1, r35
	;;
	.mib
	(p6) mov r8 = r32
	add r20 = r32, r20
	(p6) br.cond.dpnt .L689
	;;
	.mib
	cmp.gtu p6, p7 = r35, r33
	nop 0
	(p6) br.cond.dpnt .L697
	;;
	.mib
	cmp.ltu p6, p7 = r20, r32
	nop 0
	(p6) br.cond.dpnt .L697
	;;
	.mii
	ld1 r19 = [r34], 1
	nop 0
	;;
	sxt1 r19 = r19
	.align 32
.L694:
	.pred.rel.mutex p8, p9
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
	nop 0
	cmp4.ne p6, p7 = r19, r14
	(p7) br.cond.dpnt .L704
	;;
.L691:
	.pred.rel.mutex p8, p9
	.mib
	adds r18 = 1, r18
	cmp.leu p6, p7 = r32, r20
	(p6) br.cond.dptk .L694
.L697:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L689:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L704:
	.pred.rel.mutex p8, p9
	.mmi
	sub r16 = r18, r32, 1
	nop 0
	mov r15 = r32
	.mmb
	mov r14 = r34
	nop 0
	(p8) br.cond.dpnt .L689
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.align 32
.L692:
	.pred.rel.mutex p8, p9
	.mmi
	ld1 r17 = [r15], 1
	ld1 r16 = [r14], 1
	nop 0
	;;
	.mbb
	cmp4.eq p6, p7 = r16, r17
	(p7) br.cond.dpnt .L691
	br.cloop.sptk.few .L692
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
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
	(p6) br.cond.dpnt .L706
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
.L706:
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
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L737
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
	;;
	.mmi
	(p6) mov r15 = r0
	nop 0
	nop 0
.L715:
	.mlx
	nop 0
	movl r16 = 0x3fe0000000000000
	.mmi
	mov r14 = r0
	;;
	setf.d f6 = r16
	nop 0
	;;
	.align 32
.L721:
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
	(p6) br.cond.dptk .L721
.L722:
	.mib
	st4 [r33] = r14
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dpnt .L712
.L717:
	.mfi
	nop 0
	fneg f8 = f8
	nop 0
.L712:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L738:
	.mlx
	nop 0
	movl r14 = 0x3fe0000000000000
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
	nop 0
	(p7) br.cond.dptk .L718
	.mmf
	nop 0
	nop 0
	fcmp.neq p6, p7 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L727
.L718:
	.mib
	st4 [r33] = r0
	nop 0
	br.ret.sptk.many b0
.L737:
	.mlx
	nop 0
	movl r14 = 0xbff0000000000000
	.mmf
	nop 0
	nop 0
	fneg f6 = f8
	;;
	.mmi
	nop 0
	setf.d f7 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.le p6, p7 = f8, f7
	;;
	.mfi
	nop 0
	(p6) mov f8 = f6
	nop 0
	.mmb
	(p6) addl r15 = 1, r0
	nop 0
	(p6) br.cond.dptk .L715
	.mlx
	nop 0
	movl r16 = 0xbfe0000000000000
	;;
	.mmi
	nop 0
	setf.d f7 = r16
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f7
	;;
	.mfi
	nop 0
	(p7) mov f8 = f6
	nop 0
	.mmb
	(p7) st4 [r33] = r0
	nop 0
	(p7) br.cond.dptk .L717
	;;
	.mlx
	nop 0
	movl r16 = 0x3fe0000000000000
	.mfi
	addl r15 = 1, r0
	mov f8 = f6
	mov r14 = r0
	;;
	.mmi
	setf.d f6 = r16
	nop 0
	nop 0
	.align 32
.L723:
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
	(p7) br.cond.dpnt .L722
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
	(p6) br.cond.dptk .L723
	.mib
	nop 0
	nop 0
	br .L722
.L727:
	.mfi
	nop 0
	mov f6 = f8
	mov r15 = r0
	.mlx
	mov r14 = r0
	movl r16 = 0x3fe0000000000000
	;;
	.mfi
	nop 0
	mov f8 = f6
	nop 0
	.mmb
	setf.d f6 = r16
	nop 0
	br .L723
	.endp frexp#
	.align 16
	.align 64
	.global __muldi3#
	.type	__muldi3#, @function
	.proc __muldi3#
__muldi3:
	.prologue
	.body
	.mmi
	mov r8 = r0
	nop 0
	cmp.eq p6, p7 = 0, r32
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L739
	.align 32
.L741:
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
	(p6) br.cond.dptk .L741
.L739:
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
	(p7) br.cond.dpnt .L748
	;;
	.align 32
.L747:
	.mib
	cmp4.le p6, p7 = r0, r33
	nop 0
	(p7) br.cond.dpnt .L748
	;;
	.mii
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
	;;
	cmp4.ltu p6, p7 = r33, r32
	.mmi
	cmp4.ne p8, p9 = 0, r14
	;;
	(p8) addl r16 = 1, r0
	(p6) addl r15 = 1, r0
	;;
	.mii
	(p9) mov r16 = r0
	(p7) mov r15 = r0
	;;
	and r15 = r16, r15
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r15
	(p7) br.cond.dptk .L747
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L751
	;;
.L748:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L753:
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
	(p6) br.cond.dptk .L753
	;;
.L751:
	.mmi
	nop 0
	cmp.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
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
	.mmi
	mov r8 = r0
	nop 0
	cmp4.eq p6, p7 = 0, r32
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L769
	.align 32
.L771:
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
	(p6) br.cond.dptk .L771
.L769:
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
	.mmi
	addp4 r17 = r34, r0
	mov r14 = r33
	extr.u r19 = r34, 3, 29
	.mmi
	mov r15 = r32
	and r18 = -8, r34
	cmp.gtu p6, p7 = r33, r32
	;;
	.mmi
	nop 0
	add r17 = r33, r17
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	addp4 r16 = r19, r0
	(p6) br.cond.dptk .L777
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r17, r32
	(p7) br.cond.dptk .L792
	;;
.L777:
	.mib
	shladd r16 = r16, 3, r0
	cmp4.eq p6, p7 = 0, r19
	(p6) br.cond.dpnt .L780
	;;
	.mii
	adds r16 = -8, r16
	nop 0
	;;
	shr.u r16 = r16, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.align 32
.L781:
	.mmi
	nop 0
	ld8 r16 = [r14], 8
	nop 0
	;;
	.mib
	st8 [r15] = r16, 8
	nop 0
	br.cloop.sptk.few .L781
	;;
.L780:
	.mmi
	addp4 r16 = r18, r0
	nop 0
	sub r15 = r34, r18, 1
	.mmb
	cmp4.geu p6, p7 = r18, r34
	nop 0
	(p6) br.cond.dpnt .L776
	;;
	.mmi
	add r14 = r33, r16, 1
	nop 0
	addp4 r15 = r15, r0
	.mii
	add r33 = r33, r16
	add r32 = r32, r16
	;;
	add r14 = r14, r15
	;;
	.mii
	sub r14 = r14, r33, 1
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L782:
	.mmi
	nop 0
	ld1 r14 = [r33], 1
	nop 0
	;;
	.mib
	st1 [r32] = r14, 1
	nop 0
	br.cloop.sptk.few .L782
	;;
.L776:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L792:
	.mib
	cmp4.ne p6, p7 = 0, r34
	adds r14 = -1, r34
	(p7) br.cond.dpnt .L776
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
.L783:
	.mmi
	nop 0
	ld1 r14 = [r33], -1
	nop 0
	;;
	.mib
	st1 [r32] = r14, -1
	nop 0
	br.cloop.sptk.few .L783
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
	.mmi
	nop 0
	addp4 r17 = r34, r0
	extr.u r18 = r34, 1, 31
	.mmi
	mov r15 = r33
	mov r14 = r32
	cmp.gtu p6, p7 = r33, r32
	;;
	.mmi
	nop 0
	add r17 = r33, r17
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	addp4 r16 = r18, r0
	(p6) br.cond.dptk .L794
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r17, r32
	(p7) br.cond.dptk .L807
	;;
.L794:
	.mib
	shladd r16 = r16, 1, r0
	cmp4.eq p6, p7 = 0, r18
	(p6) br.cond.dpnt .L797
	;;
	.mii
	adds r16 = -2, r16
	nop 0
	;;
	shr.u r16 = r16, 1
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.align 32
.L798:
	.mmi
	nop 0
	ld2 r16 = [r15], 2
	nop 0
	;;
	.mib
	st2 [r14] = r16, 2
	nop 0
	br.cloop.sptk.few .L798
	;;
.L797:
	.mib
	adds r14 = -1, r34
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L793
	;;
	.mmi
	addp4 r14 = r14, r0
	;;
	add r33 = r33, r14
	add r14 = r32, r14
	;;
	.mmi
	nop 0
	ld1 r15 = [r33]
	nop 0
	;;
	.mmi
	st1 [r14] = r15
	nop 0
	nop 0
.L793:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L807:
	.mib
	cmp4.ne p6, p7 = 0, r34
	adds r15 = -1, r34
	(p7) br.cond.dpnt .L793
	;;
	.mmi
	nop 0
	(p6) addp4 r15 = r15, r0
	nop 0
	;;
	.mmi
	(p6) add r33 = r33, r15
	(p6) add r32 = r32, r15
	(p6) mov ar.lc = r15
	;;
	.align 32
.L799:
	.mmi
	nop 0
	ld1 r15 = [r33], -1
	nop 0
	;;
	.mib
	st1 [r32] = r15, -1
	nop 0
	br.cloop.sptk.few .L799
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
	.mmi
	addp4 r17 = r34, r0
	mov r14 = r33
	extr.u r19 = r34, 2, 30
	.mmi
	mov r15 = r32
	and r18 = -4, r34
	cmp.gtu p6, p7 = r33, r32
	;;
	.mmi
	nop 0
	add r17 = r33, r17
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	addp4 r16 = r19, r0
	(p6) br.cond.dptk .L809
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r17, r32
	(p7) br.cond.dptk .L824
	;;
.L809:
	.mib
	shladd r16 = r16, 2, r0
	cmp4.eq p6, p7 = 0, r19
	(p6) br.cond.dpnt .L812
	;;
	.mii
	adds r16 = -4, r16
	nop 0
	;;
	shr.u r16 = r16, 2
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.align 32
.L813:
	.mmi
	nop 0
	ld4 r16 = [r14], 4
	nop 0
	;;
	.mib
	st4 [r15] = r16, 4
	nop 0
	br.cloop.sptk.few .L813
	;;
.L812:
	.mmi
	addp4 r16 = r18, r0
	nop 0
	sub r15 = r34, r18, 1
	.mmb
	cmp4.geu p6, p7 = r18, r34
	nop 0
	(p6) br.cond.dpnt .L808
	;;
	.mmi
	add r14 = r33, r16, 1
	nop 0
	addp4 r15 = r15, r0
	.mii
	add r33 = r33, r16
	add r32 = r32, r16
	;;
	add r14 = r14, r15
	;;
	.mii
	sub r14 = r14, r33, 1
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L814:
	.mmi
	nop 0
	ld1 r14 = [r33], 1
	nop 0
	;;
	.mib
	st1 [r32] = r14, 1
	nop 0
	br.cloop.sptk.few .L814
	;;
.L808:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L824:
	.mib
	cmp4.ne p6, p7 = 0, r34
	adds r14 = -1, r34
	(p7) br.cond.dpnt .L808
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
.L815:
	.mmi
	nop 0
	ld1 r14 = [r33], -1
	nop 0
	;;
	.mib
	st1 [r32] = r14, -1
	nop 0
	br.cloop.sptk.few .L815
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
.L839:
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
	(p6) br.cond.dpnt .L837
	;;
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L839
	;;
.L837:
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
.L845:
	.mmi
	addp4 r14 = r8, r0
	;;
	nop 0
	shr r14 = r32, r14
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dpnt .L843
	;;
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L845
	;;
.L843:
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
.L857:
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
	br.cloop.sptk.few .L857
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
.L862:
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
	br.cloop.sptk.few .L862
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
	.mmi
	mov r8 = r0
	nop 0
	cmp4.eq p6, p7 = 0, r32
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L866
	.align 32
.L868:
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
	(p6) br.cond.dptk .L868
.L866:
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
.L875:
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
	(p6) br.cond.dptk .L875
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L877:
	.mib
	nop 0
	mov r8 = r0
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
	(p7) br.cond.dpnt .L883
	;;
	.align 32
.L882:
	.mib
	cmp4.le p6, p7 = r0, r33
	nop 0
	(p7) br.cond.dpnt .L883
	;;
	.mii
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
	;;
	cmp4.ltu p6, p7 = r33, r32
	.mmi
	cmp4.ne p8, p9 = 0, r14
	;;
	(p8) addl r16 = 1, r0
	(p6) addl r15 = 1, r0
	;;
	.mii
	(p9) mov r16 = r0
	(p7) mov r15 = r0
	;;
	and r15 = r16, r15
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r15
	(p7) br.cond.dptk .L882
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L886
	;;
.L883:
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
.L886:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
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
	(p6) br.cond.dpnt .L896
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
.L896:
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
	.mmi
	cmp4.le p6, p7 = r0, r33
	nop 0
	mov r17 = r0
	;;
	.mib
	(p7) sub r33 = r0, r33
	(p7) addl r17 = 1, r0
	(p7) br.cond.dpnt .L912
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r33
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L910
	;;
.L912:
	.mmi
	nop 0
	addl r14 = 1, r0
	mov r8 = r0
	;;
	.align 32
.L914:
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
	(p6) br.cond.dptk .L914
	;;
	.mii
	cmp4.eq p6, p7 = 0, r17
	nop 0
	;;
	(p7) sub r8 = r0, r8
.L910:
	.mib
	nop 0
	nop 0
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
	.mmi
	mov r19 = r0
	cmp.le p6, p7 = r0, r32
	addl r15 = 1, r0
	;;
	.mmi
	(p7) sub r32 = r0, r32
	(p7) addl r19 = 1, r0
	cmp.le p6, p7 = r0, r33
	;;
	.mmi
	(p7) sub r33 = r0, r33
	(p7) xor r19 = 1, r19
	mov r17 = r32
	;;
	.mmi
	cmp4.ltu p6, p7 = r33, r32
	nop 0
	mov r14 = r33
	;;
	.mib
	nop 0
	(p7) addl r15 = 1, r0
	(p7) br.cond.dpnt .L926
	.align 32
.L925:
	.mib
	cmp4.le p6, p7 = r0, r14
	nop 0
	(p7) br.cond.dpnt .L926
	;;
	.mii
	shladd r14 = r14, 1, r0
	shladd r15 = r15, 1, r0
	;;
	cmp4.ltu p6, p7 = r14, r17
	.mmi
	cmp4.ne p8, p9 = 0, r15
	;;
	(p8) addl r18 = 1, r0
	(p6) addl r16 = 1, r0
	;;
	.mii
	(p9) mov r18 = r0
	(p7) mov r16 = r0
	;;
	and r16 = r18, r16
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r16
	(p7) br.cond.dptk .L925
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r15
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L929
	;;
.L926:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L931:
	.mmi
	cmp4.gtu p6, p7 = r14, r17
	;;
	(p7) or r8 = r8, r15
	extr.u r15 = r15, 1, 31
	.mii
	(p7) sub r17 = r17, r14
	nop 0
	;;
	extr.u r14 = r14, 1, 31
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L931
	;;
.L929:
	.mmi
	addp4 r8 = r8, r0
	nop 0
	cmp4.eq p6, p7 = 0, r19
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
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
	mov r16 = r0
	addl r15 = 1, r0
	;;
	.mmi
	(p7) sub r32 = r0, r32
	(p7) addl r16 = 1, r0
	cmp.le p6, p7 = r0, r33
	;;
	.mmi
	(p7) sub r33 = r0, r33
	nop 0
	mov r8 = r32
	;;
	.mib
	mov r14 = r33
	cmp4.ltu p6, p7 = r33, r32
	(p7) br.cond.dpnt .L949
	;;
	.align 32
.L944:
	.mib
	cmp4.le p6, p7 = r0, r14
	nop 0
	(p7) br.cond.dpnt .L949
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
	(p6) br.cond.dptk .L944
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L946
	;;
	.align 32
.L949:
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
	(p6) br.cond.dptk .L949
	;;
.L946:
	.mmi
	addp4 r8 = r8, r0
	nop 0
	cmp4.eq p6, p7 = 0, r16
	;;
	.mib
	nop 0
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
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
	addl r17 = 1, r0
	;;
	mov r8 = r32
	mov r16 = r33
	.mmb
	nop 0
	cmp4.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L962
	;;
	.align 32
.L961:
	.mii
	nop 0
	sxt2 r18 = r16
	nop 0
	.mii
	shladd r15 = r16, 1, r0
	shladd r14 = r17, 1, r0
	;;
	zxt2 r15 = r15
	.mib
	cmp4.le p6, p7 = r0, r18
	zxt2 r14 = r14
	(p7) br.cond.dpnt .L962
	;;
	.mmi
	cmp4.ltu p8, p9 = r15, r8
	cmp4.ne p6, p7 = 0, r14
	mov r16 = r15
	.mmi
	mov r17 = r14
	;;
	(p6) addl r18 = 1, r0
	(p8) addl r15 = 1, r0
	;;
	.mii
	(p7) mov r18 = r0
	(p9) mov r15 = r0
	;;
	and r15 = r18, r15
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r15
	(p7) br.cond.dptk .L961
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r18 = r0
	(p6) br.cond.dpnt .L965
	;;
.L962:
	.mmi
	mov r18 = r0
	nop 0
	nop 0
	.align 32
.L967:
	.mmi
	cmp4.gtu p6, p7 = r16, r8
	sub r15 = r8, r16
	extr.u r14 = r17, 1, 15
	;;
	.mii
	(p7) or r18 = r17, r18
	extr.u r16 = r16, 1, 15
	(p7) zxt2 r8 = r15
	.mmb
	mov r17 = r14
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L967
	;;
.L965:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r18
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
	(p7) br.cond.dpnt .L976
	;;
	.align 32
.L975:
	.mib
	nop 0
	tbit.z p6, p7 = r33, 31
	(p7) br.cond.dpnt .L976
	;;
	.mii
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
	;;
	cmp.ltu p6, p7 = r33, r32
	.mmi
	cmp.ne p8, p9 = 0, r14
	;;
	(p8) addl r16 = 1, r0
	(p6) addl r15 = 1, r0
	;;
	.mii
	(p9) mov r16 = r0
	(p7) mov r15 = r0
	;;
	and r15 = r16, r15
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r15
	(p7) br.cond.dptk .L975
	;;
	.mmi
	nop 0
	cmp.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L979
	;;
.L976:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L981:
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
	(p6) br.cond.dptk .L981
	;;
.L979:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	.endp __udivmodsi4_libgcc#
	.align 16
	.align 64
	.global __ashldi3#
	.type	__ashldi3#, @function
	.proc __ashldi3#
__ashldi3:
	.prologue
	.body
	.mii
	adds r14 = -32, r33
	tbit.z p6, p7 = r33, 5
	mov r15 = r0
	;;
	.mmi
	nop 0
	(p7) addp4 r14 = r14, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) shl r14 = r32, r14
	(p7) br.cond.dptk .L991
	;;
	.mmb
	sub r16 = 32, r33
	addp4 r15 = r33, r0
	nop 0
	.mii
	addp4 r14 = r32, r0
	extr r17 = r32, 32, 32
	cmp4.eq p6, p7 = 0, r33
	;;
	.mib
	addp4 r16 = r16, r0
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L989
	;;
	.mii
	nop 0
	shl r17 = r17, r15
	shl r15 = r32, r15
	;;
	.mii
	nop 0
	shr.u r14 = r14, r16
	;;
	or r14 = r17, r14
.L991:
	.mmi
	mov r8 = r0
	nop 0
	shl r15 = r15, 32
	;;
	.mii
	nop 0
	mix4.l r8 = r8, r15
	;;
	mix4.r r8 = r14, r8
.L989:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __ashldi3#
	.align 16
	.align 64
	.global __ashlti3#
	.type	__ashlti3#, @function
	.proc __ashlti3#
__ashlti3:
	.prologue
	.body
	.mii
	nop 0
	tbit.z p6, p7 = r34, 6
	adds r14 = -64, r34
	.mmi
	mov r8 = r0
	;;
	(p7) addp4 r14 = r14, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) shl r9 = r32, r14
	(p7) br.cond.dptk .L999
	.mmi
	cmp4.eq p6, p7 = 0, r34
	sub r14 = 64, r34
	addp4 r8 = r34, r0
	;;
	.mmi
	(p7) addp4 r14 = r14, r0
	(p6) mov r8 = r32
	(p6) mov r9 = r33
	;;
	.mii
	nop 0
	(p7) shl r9 = r33, r8
	(p7) shl r8 = r32, r8
	;;
	.mii
	nop 0
	(p7) shr.u r32 = r32, r14
	;;
	(p7) or r9 = r9, r32
.L999:
	.mib
	nop 0
	nop 0
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
	.mmi
	adds r15 = -32, r33
	nop 0
	shr r14 = r32, 32
	.mmi
	cmp4.eq p8, p9 = 0, r33
	nop 0
	shr r16 = r32, 63
	;;
	.mmi
	addp4 r15 = r15, r0
	nop 0
	tbit.z p6, p7 = r33, 5
	;;
	.mib
	nop 0
	(p7) shr r14 = r14, r15
	(p7) br.cond.dptk .L1005
	;;
	.mmi
	sub r17 = 32, r33
	addp4 r14 = r32, r0
	extr r15 = r32, 32, 32
	.mmi
	addp4 r33 = r33, r0
	(p8) mov r8 = r32
	shr r16 = r32, 32
	;;
	.mib
	addp4 r17 = r17, r0
	nop 0
	(p8) br.cond.dpnt .L1003
	;;
	.mii
	nop 0
	shr.u r14 = r14, r33
	shr r16 = r16, r33
	;;
	.mii
	nop 0
	shl r15 = r15, r17
	;;
	or r14 = r15, r14
	;;
.L1005:
	.mmi
	mov r8 = r0
	nop 0
	shl r14 = r14, 32
	;;
	.mii
	nop 0
	mix4.r r8 = r16, r8
	;;
	mix4.l r8 = r8, r14
.L1003:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __ashrdi3#
	.align 16
	.align 64
	.global __ashrti3#
	.type	__ashrti3#, @function
	.proc __ashrti3#
__ashrti3:
	.prologue
	.body
	.mmi
	adds r14 = -64, r34
	nop 0
	tbit.z p6, p7 = r34, 6
	;;
	.mii
	nop 0
	(p7) sxt4 r14 = r14
	(p7) shr r9 = r33, 63
	;;
	.mib
	nop 0
	(p7) shr r8 = r33, r14
	(p7) br.cond.dptk .L1013
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r34
	nop 0
	sub r14 = 64, r34
	.mmi
	addp4 r8 = r34, r0
	nop 0
	sxt4 r9 = r34
	;;
	.mii
	(p7) addp4 r14 = r14, r0
	(p7) shr r9 = r33, r9
	(p6) mov r8 = r32
	;;
	.mmi
	(p6) mov r9 = r33
	;;
	nop 0
	(p7) shr.u r8 = r32, r8
	;;
	.mii
	nop 0
	(p7) shl r33 = r33, r14
	;;
	(p7) or r8 = r8, r33
.L1013:
	.mib
	nop 0
	nop 0
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
	.mmi
	addl r14 = 65535, r0
	nop 0
	mov r8 = r0
	;;
	.mii
	cmp4.geu p6, p7 = r14, r32
	addp4 r14 = r32, r0
	;;
	(p6) addl r16 = 1, r0
	;;
	.mmi
	(p7) mov r16 = r0
	;;
	shladd r16 = r16, 4, r0
	nop 0
	;;
	.mmi
	sub r15 = 16, r16
	;;
	addp4 r15 = r15, r0
	nop 0
	;;
	.mii
	nop 0
	shr.u r14 = r14, r15
	addl r15 = 65280, r0
	;;
	.mii
	and r15 = r15, r14
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
	.mmi
	nop 0
	shladd r15 = r15, 3, r0
	nop 0
	;;
	.mmi
	sub r17 = 8, r15
	add r16 = r15, r16
	addl r15 = 240, r0
	;;
	.mmi
	addp4 r17 = r17, r0
	;;
	nop 0
	shr.u r14 = r14, r17
	;;
	.mii
	and r15 = r15, r14
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
	.mmi
	shladd r15 = r15, 2, r0
	;;
	sub r17 = 4, r15
	add r16 = r15, r16
	;;
	.mmi
	addp4 r17 = r17, r0
	;;
	nop 0
	shr.u r14 = r14, r17
	;;
	.mii
	and r15 = 12, r14
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
	.mmi
	shladd r15 = r15, 1, r0
	;;
	sub r17 = 2, r15
	add r15 = r15, r16
	;;
	.mmi
	addp4 r17 = r17, r0
	;;
	nop 0
	shr.u r14 = r14, r17
	;;
	.mii
	nop 0
	extr.u r17 = r14, 1, 1
	;;
	xor r17 = 1, r17
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r17, 0
	;;
	(p7) sub r8 = 2, r14
	;;
	.mib
	nop 0
	add r8 = r8, r15
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
	cmp4.ltu p10, p11 = r33, r32
	.mmi
	cmp4.gtu p8, p9 = r33, r32
	;;
	nop 0
	extr r14 = r33, 32, 32
	;;
	.mib
	cmp4.gt p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1033
	;;
	.mmi
	nop 0
	cmp4.lt p6, p7 = r14, r15
	nop 0
	;;
	.mbb
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L1029
	(p8) br.cond.dpnt .L1033
	;;
	.mii
	(p10) addl r8 = 2, r0
	nop 0
	;;
	(p11) addl r8 = 1, r0
.L1029:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1033:
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
	cmp4.ltu p10, p11 = r33, r32
	.mmi
	cmp4.gtu p8, p9 = r33, r32
	;;
	nop 0
	extr r14 = r33, 32, 32
	;;
	.mib
	cmp4.gt p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1041
	;;
	.mmi
	nop 0
	cmp4.lt p6, p7 = r14, r15
	nop 0
	;;
	.mbb
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L1038
	(p8) br.cond.dpnt .L1041
	;;
	.mii
	(p10) addl r8 = 2, r0
	nop 0
	;;
	(p11) addl r8 = 1, r0
	;;
.L1038:
	.mib
	nop 0
	adds r8 = -1, r8
	br.ret.sptk.many b0
	;;
.L1041:
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
	cmp.ltu p8, p9 = r34, r32
	(p6) br.cond.dpnt .L1049
	;;
	.mmi
	nop 0
	cmp.lt p6, p7 = r35, r33
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1045
	;;
	.mmi
	nop 0
	(p8) addl r8 = 2, r0
	cmp.gtu p6, p7 = r34, r32
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1049
	;;
	.mmi
	(p9) addl r8 = 1, r0
	nop 0
	nop 0
.L1045:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1049:
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
	adds r8 = -1, r32
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L1060
	;;
	.mmi
	nop 0
	mov r8 = r0
	adds r14 = -1, r33
	.mmb
	nop 0
	cmp.eq p6, p7 = 0, r33
	(p7) br.cond.dptk .L1065
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1060:
	.mmi
	andcm r8 = r8, r32
	;;
	nop 0
	popcnt r8 = r8
	;;
	.mib
	nop 0
	adds r8 = 1, r8
	br.ret.sptk.many b0
.L1065:
	.mmi
	andcm r33 = r14, r33
	;;
	nop 0
	popcnt r33 = r33
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
	nop 0
	.mmi
	adds r16 = -32, r33
	mov r15 = r0
	shr.u r14 = r32, 32
	;;
	.mmi
	nop 0
	(p7) addp4 r16 = r16, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) shr.u r14 = r14, r16
	(p7) br.cond.dptk .L1068
	;;
	.mmi
	sub r16 = 32, r33
	addp4 r18 = r33, r0
	extr.u r17 = r32, 32, 32
	.mmi
	addp4 r14 = r32, r0
	cmp4.eq p6, p7 = 0, r33
	shr.u r15 = r32, 32
	;;
	.mib
	addp4 r16 = r16, r0
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L1066
	;;
	.mii
	nop 0
	shr.u r14 = r14, r18
	shr.u r15 = r15, r18
	;;
	.mii
	nop 0
	shl r17 = r17, r16
	;;
	or r14 = r17, r14
	;;
.L1068:
	.mmi
	mov r8 = r0
	nop 0
	shl r14 = r14, 32
	;;
	.mii
	nop 0
	mix4.r r8 = r15, r8
	;;
	mix4.l r8 = r8, r14
.L1066:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __lshrdi3#
	.align 16
	.align 64
	.global __lshrti3#
	.type	__lshrti3#, @function
	.proc __lshrti3#
__lshrti3:
	.prologue
	.body
	.mii
	nop 0
	tbit.z p6, p7 = r34, 6
	adds r14 = -64, r34
	.mmi
	mov r9 = r0
	;;
	(p7) addp4 r14 = r14, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) shr.u r8 = r33, r14
	(p7) br.cond.dptk .L1076
	.mmi
	cmp4.eq p6, p7 = 0, r34
	sub r14 = 64, r34
	addp4 r9 = r34, r0
	;;
	.mmi
	(p7) addp4 r14 = r14, r0
	(p6) mov r8 = r32
	(p6) mov r9 = r33
	;;
	.mii
	nop 0
	(p7) shr.u r8 = r32, r9
	(p7) shr.u r9 = r33, r9
	;;
	.mii
	nop 0
	(p7) shl r33 = r33, r14
	;;
	(p7) or r8 = r8, r33
.L1076:
	.mib
	nop 0
	nop 0
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
	.mib
	nop 0
	tbit.z p6, p7 = r33, 0
	nop 0
	.mfi
	nop 0
	mov f6 = f8
	mov r14 = r33
	;;
	.mfi
	nop 0
	mov f8 = f1
	(p6) mov r14 = r33
	;;
	.mfb
	nop 0
	(p6) mov f8 = f1
	(p6) br.cond.dptk .L1105
	;;
	.align 32
.L1107:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	nop 0
.L1105:
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	;;
	add r14 = r15, r14
	;;
	.mii
	nop 0
	extr r14 = r14, 1, 31
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1106
.L1108:
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	nop 0
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	nop 0
	;;
	.mib
	add r15 = r15, r14
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L1107
	;;
	.mib
	nop 0
	extr r14 = r15, 1, 31
	br .L1108
.L1106:
	.mbb
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L1113
	br.ret.sptk.many b0
	;;
.L1113:
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
	.mib
	nop 0
	tbit.z p6, p7 = r33, 0
	nop 0
	.mfi
	nop 0
	mov f6 = f8
	mov r14 = r33
	;;
	.mfi
	nop 0
	mov f8 = f1
	(p6) mov r14 = r33
	;;
	.mfb
	nop 0
	(p6) mov f8 = f1
	(p6) br.cond.dptk .L1115
	;;
	.align 32
.L1117:
	.mfi
	nop 0
	fmpy.s f8 = f8, f6
	nop 0
.L1115:
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	;;
	add r14 = r15, r14
	;;
	.mii
	nop 0
	extr r14 = r14, 1, 31
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1116
.L1118:
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	nop 0
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	nop 0
	;;
	.mib
	add r15 = r15, r14
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L1117
	;;
	.mib
	nop 0
	extr r14 = r15, 1, 31
	br .L1118
.L1116:
	.mbb
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L1123
	br.ret.sptk.many b0
	;;
.L1123:
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
	cmp4.ltu p10, p11 = r33, r32
	.mmi
	cmp4.gtu p8, p9 = r33, r32
	;;
	nop 0
	extr.u r14 = r33, 32, 32
	;;
	.mib
	cmp4.gtu p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1128
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r14, r15
	nop 0
	;;
	.mbb
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L1124
	(p8) br.cond.dpnt .L1128
	;;
	.mii
	(p10) addl r8 = 2, r0
	nop 0
	;;
	(p11) addl r8 = 1, r0
.L1124:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1128:
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
	cmp4.ltu p10, p11 = r33, r32
	.mmi
	cmp4.gtu p8, p9 = r33, r32
	;;
	nop 0
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
	.mbb
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L1133
	(p8) br.cond.dpnt .L1136
	;;
	.mii
	(p10) addl r8 = 2, r0
	nop 0
	;;
	(p11) addl r8 = 1, r0
	;;
.L1133:
	.mib
	nop 0
	adds r8 = -1, r8
	br.ret.sptk.many b0
	;;
.L1136:
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
	cmp.ltu p8, p9 = r34, r32
	(p6) br.cond.dpnt .L1144
	;;
	.mmi
	nop 0
	cmp.ltu p6, p7 = r35, r33
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1140
	;;
	.mmi
	nop 0
	(p8) addl r8 = 2, r0
	cmp.gtu p6, p7 = r34, r32
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1144
	;;
	.mmi
	(p9) addl r8 = 1, r0
	nop 0
	nop 0
.L1140:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1144:
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
