	.file	"mini-libc.c"
	.pred.safe_across_calls p1-p5,p16-p63
	.text
	.align 16
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
	(p6) br.cond.dptk .L4
	add r33 = r33, r34
	add r15 = r32, r34
	;;
	adds r33 = -1, r33
	adds r14 = -1, r15
	sub r34 = r15, r34, 1
	;;
	sub r34 = r15, r34, 1
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
.L7:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L4:
	cmp.eq p6, p7 = r33, r32
	;;
	(p7) mov r14 = r32
	(p7) mov ar.lc = r34
	(p7) br.cond.dptk .L8
	br .L7
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
	br .L7
	;;
	.endp memmove#
	.align 16
	.global memccpy#
	.type	memccpy#, @function
	.proc memccpy#
memccpy:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
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
	;;
	(p7) adds r8 = 1, r8
	;;
	(p6) mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memccpy#
	.align 16
	.global memchr#
	.type	memchr#, @function
	.proc memchr#
memchr:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
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
	;;
	(p6) mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memchr#
	.align 16
	.global memcmp#
	.type	memcmp#, @function
	.proc memcmp#
memcmp:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov ar.lc = r34
	br .L25
	;;
.L27:
	adds r34 = -1, r34
.L25:
	mov r16 = r33
	mov r17 = r32
	br.cloop.sptk.few .L30
	br .L26
	;;
.L30:
	ld1 r15 = [r32], 1
	ld1 r14 = [r33], 1
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L27
.L26:
	;;
	cmp.eq p6, p7 = 0, r34
	;;
	(p7) ld1 r8 = [r17]
	(p7) ld1 r14 = [r16]
	;;
	(p7) sub r8 = r8, r14
	;;
	(p6) mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memcmp#
	.align 16
	.global memcpy#
	.type	memcpy#, @function
	.proc memcpy#
memcpy:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	mov r14 = r32
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
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memcpy#
	.align 16
	.global memrchr#
	.type	memrchr#, @function
	.proc memrchr#
memrchr:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt1 r33 = r33
	adds r15 = -1, r34
	;;
	add r14 = r32, r15
	mov ar.lc = r34
.L35:
	adds r34 = -1, r34
	;;
	br.cloop.sptk.few .L37
	br .L39
	;;
.L37:
	ld1 r15 = [r14], -1
	;;
	cmp4.ne p6, p7 = r15, r33
	(p6) br.cond.dptk .L35
	add r8 = r32, r34
	br .L36
	;;
.L39:
	mov r8 = r0
.L36:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memrchr#
	.align 16
	.global memset#
	.type	memset#, @function
	.proc memset#
memset:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	mov r14 = r32
	zxt1 r33 = r33
	mov ar.lc = r34
	br .L41
	;;
.L42:
	st1 [r14] = r33, 1
.L41:
	br.cloop.sptk.few .L42
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memset#
	.align 16
	.global stpcpy#
	.type	stpcpy#, @function
	.proc stpcpy#
stpcpy:
	.prologue
	.body
.L44:
	mov r8 = r32
	ld1 r14 = [r33], 1
	;;
	st1 [r32] = r14, 1
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L44
	br.ret.sptk.many b0
	;;
	.endp stpcpy#
	.align 16
	.global strchrnul#
	.type	strchrnul#, @function
	.proc strchrnul#
strchrnul:
	.prologue
	.body
	zxt1 r33 = r33
.L48:
	mov r8 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L47
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L48
.L47:
	br.ret.sptk.many b0
	;;
	.endp strchrnul#
	.align 16
	.global strchr#
	.type	strchr#, @function
	.proc strchr#
strchr:
	.prologue
	.body
.L52:
	mov r8 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = r14, r33
	(p6) br.cond.dpnt .L51
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L52
	mov r8 = r0
.L51:
	br.ret.sptk.many b0
	;;
	.endp strchr#
	.align 16
	.global strcmp#
	.type	strcmp#, @function
	.proc strcmp#
strcmp:
	.prologue
	.body
.L57:
	mov r16 = r33
	mov r17 = r32
	ld1 r15 = [r32], 1
	;;
	sxt1 r15 = r15
	ld1 r14 = [r33], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dpnt .L56
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L57
.L56:
	ld1 r8 = [r17]
	ld1 r14 = [r16]
	;;
	sub r8 = r8, r14
	br.ret.sptk.many b0
	;;
	.endp strcmp#
	.align 16
	.global strlen#
	.type	strlen#, @function
	.proc strlen#
strlen:
	.prologue
	.body
	mov r15 = r32
.L60:
	;;
	mov r8 = r15
	ld1 r14 = [r15], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L60
	sub r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp strlen#
	.align 16
	.global strncmp#
	.type	strncmp#, @function
	.proc strncmp#
strncmp:
	.prologue
	.body
	cmp.eq p6, p7 = 0, r34
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L63
	mov r14 = r32
	add r32 = r32, r34
.L65:
	mov r17 = r33
	;;
	mov r18 = r14
	ld1 r15 = [r14], 1
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dpnt .L64
	ld1 r15 = [r33]
	;;
	cmp4.ne p8, p9 = 0, r15
	cmp.ne p6, p7 = r14, r32
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	(p8) addl r16 = 1, r0
	;;
	(p9) mov r16 = r0
	;;
	and r15 = r16, r15
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dpnt .L64
	adds r15 = -1, r14
	;;
	ld1 r16 = [r15]
	ld1 r15 = [r33], 1
	;;
	cmp4.eq p6, p7 = r15, r16
	(p6) br.cond.dptk .L65
.L64:
	ld1 r8 = [r18]
	ld1 r14 = [r17]
	;;
	sub r8 = r8, r14
.L63:
	br.ret.sptk.many b0
	;;
	.endp strncmp#
	.align 16
	.global swab#
	.type	swab#, @function
	.proc swab#
swab:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	shr.u r14 = r34, 1
	;;
	mov ar.lc = r14
	cmp.gt p6, p7 = r0, r34
	;;
	(p7) mov ar.lc = r14
	;;
	(p6) mov ar.lc = 0
	br .L69
	;;
.L70:
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
.L69:
	br.cloop.sptk.few .L70
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp swab#
	.align 16
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
	.global isblank#
	.type	isblank#, @function
	.proc isblank#
isblank:
	.prologue
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
	br.ret.sptk.many b0
	;;
	.endp isblank#
	.align 16
	.global iscntrl#
	.type	iscntrl#, @function
	.proc iscntrl#
iscntrl:
	.prologue
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
	br.ret.sptk.many b0
	;;
	.endp iscntrl#
	.align 16
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
	.global isspace#
	.type	isspace#, @function
	.proc isspace#
isspace:
	.prologue
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
	br.ret.sptk.many b0
	;;
	.endp isspace#
	.align 16
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
	.global iswcntrl#
	.type	iswcntrl#, @function
	.proc iswcntrl#
iswcntrl:
	.prologue
	.body
	cmp4.geu p6, p7 = 31, r32
	adds r14 = -127, r32
	;;
	cmp4.geu p8, p9 = 32, r14
	;;
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dptk .L83
	addl r15 = -8232, r0
	;;
	add r14 = r32, r15
	;;
	cmp4.geu p6, p7 = 1, r14
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dpnt .L83
	addl r14 = -65529, r0
	;;
	add r2 = r32, r14
	;;
	cmp4.ltu p6, p7 = 2, r2
	;;
	(p6) mov r8 = r0
	;;
	(p7) addl r8 = 1, r0
.L83:
	br.ret.sptk.many b0
	;;
	.endp iswcntrl#
	.align 16
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
	(p7) br.cond.dpnt .L95
	addl r14 = 8231, r0
	;;
	cmp4.geu p6, p7 = r14, r32
	addl r15 = -8234, r2
	addl r14 = 47061, r0
	;;
	cmp4.geu p8, p9 = r14, r15
	;;
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dpnt .L90
	addl r15 = -57344, r2
	addl r14 = 8184, r0
	;;
	cmp4.geu p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dpnt .L90
	addl r15 = -65532, r2
	addl r14 = 1048579, r0
	;;
	cmp4.ltu p6, p7 = r14, r15
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L90
	addl r14 = 65534, r0
	;;
	and r2 = r14, r2
	;;
	cmp4.eq p6, p7 = r14, r2
	;;
	(p6) mov r8 = r0
	;;
	(p7) addl r8 = 1, r0
	br .L90
	;;
.L95:
	adds r2 = 1, r32
	;;
	and r2 = 127, r2
	;;
	cmp4.ltu p6, p7 = 32, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L90:
	br.ret.sptk.many b0
	;;
	.endp iswprint#
	.align 16
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
	(p6) br.cond.dptk .L97
	or r32 = 32, r32
	;;
	adds r32 = -97, r32
	;;
	cmp4.ltu p6, p7 = 5, r32
	;;
	(p6) mov r8 = r0
	;;
	(p7) addl r8 = 1, r0
.L97:
	br.ret.sptk.many b0
	;;
	.endp iswxdigit#
	.align 16
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
	.global fdim#
	.type	fdim#, @function
	.proc fdim#
fdim:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L102
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) mov f8 = f9
	(p6) br.cond.dpnt .L102
	;;
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) fsub.d f8 = f8, f9
	;;
	(p7) mov f8 = f0
.L102:
	br.ret.sptk.many b0
	;;
	.endp fdim#
	.align 16
	.global fdimf#
	.type	fdimf#, @function
	.proc fdimf#
fdimf:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L110
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) mov f8 = f9
	(p6) br.cond.dpnt .L110
	;;
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) fsub.s f8 = f8, f9
	;;
	(p7) mov f8 = f0
.L110:
	br.ret.sptk.many b0
	;;
	.endp fdimf#
	.align 16
	.global fmax#
	.type	fmax#, @function
	.proc fmax#
fmax:
	.prologue
	.body
	getf.d r14 = f8
	getf.d r15 = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) setf.d f8 = r15
	(p6) br.cond.dpnt .L118
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) setf.d f8 = r14
	(p6) br.cond.dpnt .L118
	shr.u r16 = r14, 63
	shr.u r17 = r15, 63
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L119
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p7) setf.d f8 = r15
	(p7) br.cond.dptk .L118
	;;
	setf.d f8 = r14
.L118:
	br.ret.sptk.many b0
	;;
.L119:
	setf.d f6 = r14
	;;
	fcmp.lt p6, p7 = f6, f9
	;;
	(p6) setf.d f8 = r15
	(p6) br.cond.dptk .L118
	;;
	setf.d f8 = r14
	br .L118
	;;
	.endp fmax#
	.align 16
	.global fmaxf#
	.type	fmaxf#, @function
	.proc fmaxf#
fmaxf:
	.prologue
	.body
	getf.s r14 = f8
	getf.s r15 = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) setf.s f8 = r15
	(p6) br.cond.dpnt .L128
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) setf.s f8 = r14
	(p6) br.cond.dpnt .L128
	mov r16 = r14
	movl r18 = -2147483648
	;;
	and r16 = r18, r16
	mov r17 = r15
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L129
	mov r16 = r14
	;;
	and r16 = r18, r16
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p7) setf.s f8 = r15
	(p7) br.cond.dptk .L128
	;;
	setf.s f8 = r14
.L128:
	br.ret.sptk.many b0
	;;
.L129:
	setf.s f6 = r14
	;;
	fcmp.lt p6, p7 = f6, f9
	;;
	(p6) setf.s f8 = r15
	(p6) br.cond.dptk .L128
	;;
	setf.s f8 = r14
	br .L128
	;;
	.endp fmaxf#
	.align 16
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
	(p6) br.cond.dpnt .L141
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L142
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
	(p6) br.cond.dptk .L139
	adds r15 = 8, r12
	;;
	ld8 r14 = [r15]
	;;
	tbit.z p6, p7 = r14, 15
	;;
	(p7) mov f8 = f9
	(p7) br.cond.dptk .L138
	;;
	ldfe f8 = [r12]
.L138:
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L139:
	.body
	.copy_state 1
	ldfe f6 = [r12]
	adds r14 = 16, r12
	;;
	ldfe f7 = [r14]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p6) mov f8 = f7
	(p6) br.cond.dptk .L138
	;;
	ldfe f8 = [r12]
	br .L138
	;;
.L141:
	adds r14 = 16, r12
	;;
	ldfe f8 = [r14]
	br .L138
	;;
.L142:
	ldfe f8 = [r12]
	br .L138
	;;
	.endp fmaxl#
	.align 16
	.global fmin#
	.type	fmin#, @function
	.proc fmin#
fmin:
	.prologue
	.body
	getf.d r15 = f8
	getf.d r14 = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) setf.d f8 = r14
	(p6) br.cond.dpnt .L148
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) setf.d f8 = r15
	(p6) br.cond.dpnt .L148
	shr.u r16 = r15, 63
	shr.u r17 = r14, 63
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L149
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p6) setf.d f8 = r14
.L148:
	br.ret.sptk.many b0
	;;
.L149:
	setf.d f6 = r15
	;;
	fcmp.lt p6, p7 = f6, f9
	;;
	(p6) setf.d f8 = r15
	(p6) br.cond.dptk .L148
	;;
	mov f8 = f9
	br .L148
	;;
	.endp fmin#
	.align 16
	.global fminf#
	.type	fminf#, @function
	.proc fminf#
fminf:
	.prologue
	.body
	getf.s r15 = f8
	getf.s r14 = f9
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) setf.s f8 = r14
	(p6) br.cond.dpnt .L158
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) setf.s f8 = r15
	(p6) br.cond.dpnt .L158
	mov r16 = r15
	movl r18 = -2147483648
	;;
	and r16 = r18, r16
	mov r17 = r14
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L159
	mov r16 = r15
	;;
	and r16 = r18, r16
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p6) setf.s f8 = r14
.L158:
	br.ret.sptk.many b0
	;;
.L159:
	setf.s f6 = r15
	;;
	fcmp.lt p6, p7 = f6, f9
	;;
	(p6) setf.s f8 = r15
	(p6) br.cond.dptk .L158
	;;
	mov f8 = f9
	br .L158
	;;
	.endp fminf#
	.align 16
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
	(p6) br.cond.dpnt .L171
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L172
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
	(p6) br.cond.dptk .L169
	adds r15 = 8, r12
	;;
	ld8 r14 = [r15]
	;;
	tbit.z p6, p7 = r14, 15
	(p7) br.cond.dptk .L168
	adds r15 = 16, r12
	;;
	ldfe f8 = [r15]
.L168:
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L169:
	.body
	.copy_state 1
	ldfe f6 = [r12]
	adds r17 = 16, r12
	;;
	ldfe f7 = [r17]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p6) mov f8 = f6
	(p6) br.cond.dptk .L168
	adds r17 = 16, r12
	;;
	ldfe f8 = [r17]
	br .L168
	;;
.L171:
	adds r14 = 16, r12
	;;
	ldfe f8 = [r14]
	br .L168
	;;
.L172:
	ldfe f8 = [r12]
	br .L168
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
	.prologue
	.body
	addl r15 = @gprel(s.0#), gp
	movl r16 = @gprel(digits#)
	;;
	add r16 = r1, r16
	br .L178
	;;
.L179:
	and r14 = 63, r32
	;;
	add r14 = r16, r14
	;;
	ld1 r14 = [r14]
	;;
	st1 [r15] = r14, 1
	extr.u r32 = r32, 6, 26
.L178:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L179
	st1 [r15] = r0
	addl r8 = @gprel(s.0#), gp
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
	(p7) br.cond.dpnt .L182
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
.L182:
	br.ret.sptk.many b0
	;;
	.endp insque#
	.align 16
	.global remque#
	.type	remque#, @function
	.proc remque#
remque:
	.prologue
	.body
	ld8 r14 = [r32]
	;;
	cmp.eq p6, p7 = 0, r14
	;;
	(p7) mov r15 = r32
	;;
	(p7) ld8 r14 = [r15], 8
	;;
	(p7) ld8 r15 = [r15]
	(p7) adds r14 = 8, r14
	;;
	(p7) st8 [r14] = r15
	adds r14 = 8, r32
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	;;
	(p7) adds r14 = 8, r32
	;;
	(p7) ld8 r14 = [r14]
	(p7) ld8 r15 = [r32]
	;;
	(p7) st8 [r14] = r15
	br.ret.sptk.many b0
	;;
	.endp remque#
	.align 16
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
	mov r37 = r33
	mov r38 = r0
	;;
	mov ar.lc = r39
	br .L189
	;;
.L190:
	adds r38 = 1, r38
.L189:
	br.cloop.sptk.few .L192
	br .L193
	;;
.L192:
	mov r45 = r37
	mov r44 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r42
	add r37 = r37, r35
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L190
	setf.sig f6 = r38
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br .L191
	;;
.L193:
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
.L191:
	;;
	mov ar.pfs = r41
	mov ar.lc = r43
	mov b0 = r40
	br.ret.sptk.many b0
	;;
	.endp lsearch#
	.align 16
	.global lfind#
	.type	lfind#, @function
	.proc lfind#
lfind:
	.prologue 12, 39
	.save ar.pfs, r40
	alloc r40 = ar.pfs, 5, 6, 2, 0
	.save ar.lc, r42
	mov r42 = ar.lc
	.save rp, r39
	mov r39 = b0
	mov r41 = r1
	.body
	mov r37 = r33
	mov r38 = r0
	ld8 r34 = [r34]
	;;
	mov ar.lc = r34
	br .L195
	;;
.L196:
	adds r38 = 1, r38
.L195:
	br.cloop.sptk.few .L198
	br .L199
	;;
.L198:
	mov r44 = r37
	mov r43 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r41
	add r37 = r37, r35
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L196
	setf.sig f6 = r38
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br .L197
	;;
.L199:
	mov r8 = r0
.L197:
	mov ar.pfs = r40
	mov ar.lc = r42
	mov b0 = r39
	br.ret.sptk.many b0
	;;
	.endp lfind#
	.align 16
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
	.global atoi#
	.type	atoi#, @function
	.proc atoi#
atoi:
	.prologue 12, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 1, 4, 1, 0
	.save rp, r34
	mov r34 = b0
	mov r36 = r1
	.body
.L202:
	mov r33 = r32
	ld1 r37 = [r32], 1
	;;
	sxt1 r37 = r37
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L202
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dpnt .L208
	;;
	cmp4.ne p6, p7 = 45, r14
	;;
	(p7) addl r17 = 1, r0
	(p7) br.cond.dptk .L203
	;;
	mov r17 = r0
	br .L204
	;;
.L208:
	mov r17 = r0
.L203:
	adds r33 = 1, r33
.L204:
	mov r8 = r0
	br .L205
	;;
.L206:
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r14 = r14, 1, r0
	adds r16 = -1, r33
	;;
	ld1 r8 = [r16]
	;;
	sxt1 r8 = r8
	;;
	adds r8 = -48, r8
	;;
	sub r8 = r14, r8
.L205:
	ld1 r14 = [r33], 1
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L206
	;;
	cmp4.ne p6, p7 = 0, r17
	;;
	(p7) sub r8 = r0, r8
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp atoi#
	.align 16
	.global atol#
	.type	atol#, @function
	.proc atol#
atol:
	.prologue 12, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 1, 4, 1, 0
	.save rp, r34
	mov r34 = b0
	mov r36 = r1
	.body
.L213:
	mov r33 = r32
	ld1 r37 = [r32], 1
	;;
	sxt1 r37 = r37
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L213
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dpnt .L219
	;;
	cmp4.ne p6, p7 = 45, r14
	;;
	(p7) addl r17 = 1, r0
	(p7) br.cond.dptk .L214
	;;
	mov r17 = r0
	br .L215
	;;
.L219:
	mov r17 = r0
.L214:
	adds r33 = 1, r33
.L215:
	mov r8 = r0
	br .L216
	;;
.L217:
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r14 = r14, 1, r0
	adds r16 = -1, r33
	;;
	ld1 r8 = [r16]
	;;
	sxt1 r8 = r8
	;;
	adds r8 = -48, r8
	;;
	sxt4 r8 = r8
	;;
	sub r8 = r14, r8
.L216:
	ld1 r14 = [r33], 1
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L217
	;;
	cmp4.ne p6, p7 = 0, r17
	;;
	(p7) sub r8 = r0, r8
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp atol#
	.align 16
	.global atoll#
	.type	atoll#, @function
	.proc atoll#
atoll:
	.prologue 12, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 1, 4, 1, 0
	.save rp, r34
	mov r34 = b0
	mov r36 = r1
	.body
.L224:
	mov r33 = r32
	ld1 r37 = [r32], 1
	;;
	sxt1 r37 = r37
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L224
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dpnt .L230
	;;
	cmp4.ne p6, p7 = 45, r14
	;;
	(p7) addl r17 = 1, r0
	(p7) br.cond.dptk .L225
	;;
	mov r17 = r0
	br .L226
	;;
.L230:
	mov r17 = r0
.L225:
	adds r33 = 1, r33
.L226:
	mov r8 = r0
	br .L227
	;;
.L228:
	shladd r14 = r8, 2, r0
	;;
	add r14 = r14, r8
	;;
	shladd r14 = r14, 1, r0
	adds r16 = -1, r33
	;;
	ld1 r8 = [r16]
	;;
	sxt1 r8 = r8
	;;
	adds r8 = -48, r8
	;;
	sxt4 r8 = r8
	;;
	sub r8 = r14, r8
.L227:
	ld1 r14 = [r33], 1
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L228
	;;
	cmp4.ne p6, p7 = 0, r17
	;;
	(p7) sub r8 = r0, r8
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp atoll#
	.align 16
	.global bsearch#
	.type	bsearch#, @function
	.proc bsearch#
bsearch:
	.prologue 12, 37
	.save ar.pfs, r38
	alloc r38 = ar.pfs, 5, 3, 2, 0
	adds r16 = -32, r12
	adds r17 = -16, r12
	.fframe 48
	adds r12 = -48, r12
	.save rp, r37
	mov r37 = b0
	mov r39 = r1
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
.L235:
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L241
	shr.u r14 = r34, 1
	;;
	setf.sig f2 = r14
	;;
	xma.l f2 = f2, f3, f4
	;;
	getf.sig r41 = f2
	mov r40 = r32
	ld8 r14 = [r36], 8
	;;
	mov b6 = r14
	ld8 r1 = [r36], -8
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r39
	cmp4.le p6, p7 = r0, r8
	;;
	(p7) shr.u r34 = r34, 1
	(p7) br.cond.dpnt .L235
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dpnt .L240
	getf.sig r15 = f2
	getf.sig r14 = f3
	;;
	add r15 = r15, r14
	;;
	setf.sig f4 = r15
	shr.u r14 = r34, 1
	;;
	sub r34 = r34, r14, 1
	br .L235
	;;
.L241:
	mov r8 = r0
.L238:
	adds r18 = 16, r12
	adds r19 = 32, r12
	mov ar.pfs = r38
	mov b0 = r37
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
.L240:
	.body
	.copy_state 1
	getf.sig r8 = f2
	br .L238
	;;
	.endp bsearch#
	.align 16
	.global bsearch_r#
	.type	bsearch_r#, @function
	.proc bsearch_r#
bsearch_r:
	.prologue 12, 38
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 6, 3, 3, 0
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
	setf.sig f4 = r35
	setf.sig f3 = r33
	br .L243
	;;
.L249:
	cmp4.ge p6, p7 = 0, r8
	;;
	(p7) getf.sig r15 = f2
	(p7) getf.sig r14 = f4
	;;
	(p7) add r15 = r15, r14
	;;
	(p7) setf.sig f3 = r15
	(p7) adds r34 = -1, r34
	;;
	extr r34 = r34, 1, 31
.L243:
	;;
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L248
	extr r14 = r34, 1, 31
	;;
	setf.sig f2 = r14
	;;
	xma.l f2 = f2, f4, f3
	mov r43 = r37
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
	cmp4.eq p6, p7 = 0, r8
	(p7) br.cond.dptk .L249
	getf.sig r8 = f2
	br .L244
	;;
.L248:
	mov r8 = r0
.L244:
	adds r18 = 16, r12
	adds r19 = 32, r12
	mov ar.pfs = r39
	mov b0 = r38
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
	mov r15 = r8
	mov r8 = r34
	;;
	mov r9 = r15
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
	.endp imaxdiv#
	.align 16
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
	mov r15 = r8
	mov r8 = r34
	;;
	mov r9 = r15
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
	.endp ldiv#
	.align 16
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
	mov r15 = r8
	mov r8 = r34
	;;
	mov r9 = r15
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
	.endp lldiv#
	.align 16
	.global wcschr#
	.type	wcschr#, @function
	.proc wcschr#
wcschr:
	.prologue
	.body
.L259:
	mov r8 = r32
	ld4 r14 = [r32], 4
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L258
	adds r14 = -4, r32
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L259
.L258:
	ld4 r14 = [r8]
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp wcschr#
	.align 16
	.global wcscmp#
	.type	wcscmp#, @function
	.proc wcscmp#
wcscmp:
	.prologue
	.body
.L265:
	mov r16 = r33
	mov r17 = r32
	ld4 r15 = [r32], 4
	ld4 r14 = [r33], 4
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dpnt .L264
	adds r14 = -4, r32
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L264
	adds r14 = -4, r33
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L265
.L264:
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.gt p6, p7 = r14, r15
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L266
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L266:
	br.ret.sptk.many b0
	;;
	.endp wcscmp#
	.align 16
	.global wcscpy#
	.type	wcscpy#, @function
	.proc wcscpy#
wcscpy:
	.prologue
	.body
	mov r8 = r32
	mov r14 = r32
.L270:
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
	(p6) br.cond.dptk .L270
	br.ret.sptk.many b0
	;;
	.endp wcscpy#
	.align 16
	.global wcslen#
	.type	wcslen#, @function
	.proc wcslen#
wcslen:
	.prologue
	.body
	mov r14 = r32
.L273:
	;;
	mov r8 = r14
	ld4 r15 = [r14], 4
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L273
	sub r8 = r8, r32
	;;
	shr r8 = r8, 2
	br.ret.sptk.many b0
	;;
	.endp wcslen#
	.align 16
	.global wcsncmp#
	.type	wcsncmp#, @function
	.proc wcsncmp#
wcsncmp:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov ar.lc = r34
.L276:
	mov r16 = r33
	mov r17 = r32
	;;
	br.cloop.sptk.few .L282
	br .L277
	;;
.L282:
	ld4 r15 = [r32]
	ld4 r14 = [r33]
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dpnt .L277
	ld4 r14 = [r32], 4
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L277
	ld4 r14 = [r33], 4
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L277
	adds r34 = -1, r34
	br .L276
	;;
.L277:
	cmp.eq p6, p7 = 0, r34
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dptk .L279
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.gt p6, p7 = r14, r15
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L279
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L279:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp wcsncmp#
	.align 16
	.global wmemchr#
	.type	wmemchr#, @function
	.proc wmemchr#
wmemchr:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov ar.lc = r34
	br .L284
	;;
.L286:
	adds r34 = -1, r34
.L284:
	mov r8 = r32
	br.cloop.sptk.few .L289
	br .L285
	;;
.L289:
	ld4 r14 = [r32], 4
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L286
.L285:
	;;
	cmp.eq p6, p7 = 0, r34
	;;
	(p6) mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp wmemchr#
	.align 16
	.global wmemcmp#
	.type	wmemcmp#, @function
	.proc wmemcmp#
wmemcmp:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov ar.lc = r34
	br .L291
	;;
.L293:
	adds r34 = -1, r34
.L291:
	mov r16 = r33
	mov r17 = r32
	br.cloop.sptk.few .L297
	br .L292
	;;
.L297:
	ld4 r15 = [r32], 4
	ld4 r14 = [r33], 4
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L293
.L292:
	;;
	cmp.eq p6, p7 = 0, r34
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dptk .L294
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.gt p6, p7 = r14, r15
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L294
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L294:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp wmemcmp#
	.align 16
	.global wmemcpy#
	.type	wmemcpy#, @function
	.proc wmemcpy#
wmemcpy:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	mov r14 = r32
	mov ar.lc = r34
	br .L299
	;;
.L300:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15, 4
.L299:
	adds r34 = -1, r34
	br.cloop.sptk.few .L300
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp wmemcpy#
	.align 16
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
	(p6) br.cond.dpnt .L302
	sub r14 = r32, r33
	shladd r15 = r34, 2, r0
	;;
	cmp.gtu p6, p7 = r15, r14
	;;
	(p7) mov r14 = r32
	(p7) mov ar.lc = r34
	(p7) br.cond.dptk .L304
	adds r34 = -1, r34
	;;
	shladd r34 = r34, 2, r0
	;;
	add r33 = r33, r34
	add r14 = r32, r34
	adds r34 = 4, r34
	;;
	shr.u r34 = r34, 2
	;;
	mov ar.lc = r34
	br .L305
	;;
.L306:
	ld4 r15 = [r33], -4
	;;
	st4 [r14] = r15, -4
.L305:
	br.cloop.sptk.few .L306
.L302:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L307:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15, 4
.L304:
	adds r34 = -1, r34
	br.cloop.sptk.few .L307
	br .L302
	;;
	.endp wmemmove#
	.align 16
	.global wmemset#
	.type	wmemset#, @function
	.proc wmemset#
wmemset:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	mov r14 = r32
	mov ar.lc = r34
	br .L309
	;;
.L310:
	adds r14 = 4, r14
	;;
	adds r15 = -4, r14
	;;
	st4 [r15] = r33
.L309:
	adds r34 = -1, r34
	br.cloop.sptk.few .L310
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp wmemset#
	.align 16
	.global bcopy#
	.type	bcopy#, @function
	.proc bcopy#
bcopy:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	cmp.leu p6, p7 = r33, r32
	(p6) br.cond.dptk .L312
	add r32 = r32, r34
	add r33 = r33, r34
	;;
	adds r32 = -1, r32
	adds r14 = -1, r33
	sub r34 = r33, r34, 1
	;;
	sub r34 = r33, r34, 1
	;;
	mov ar.lc = r34
	br .L313
	;;
.L314:
	ld1 r15 = [r32], -1
	;;
	st1 [r14] = r15, -1
.L313:
	br.cloop.sptk.few .L314
.L311:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L312:
	cmp.eq p6, p7 = r33, r32
	;;
	(p7) mov ar.lc = r34
	(p7) br.cond.dptk .L316
	br .L311
	;;
.L317:
	adds r32 = 1, r32
	;;
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	st1 [r33] = r14, 1
.L316:
	br.cloop.sptk.few .L317
	br .L311
	;;
	.endp bcopy#
	.align 16
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
	.global rotl_sz#
	.type	rotl_sz#, @function
	.proc rotl_sz#
rotl_sz:
	.prologue
	.body
	addp4 r8 = r33, r0
	;;
	shl r8 = r32, r8
	sub r33 = 64, r33
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotl_sz#
	.align 16
	.global rotr_sz#
	.type	rotr_sz#, @function
	.proc rotr_sz#
rotr_sz:
	.prologue
	.body
	addp4 r8 = r33, r0
	;;
	shr.u r8 = r32, r8
	sub r33 = 64, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r32 = r32, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotr_sz#
	.align 16
	.global rotl16#
	.type	rotl16#, @function
	.proc rotl16#
rotl16:
	.prologue
	.body
	zxt2 r32 = r32
	addp4 r8 = r33, r0
	;;
	shl r8 = r32, r8
	sub r33 = 16, r33
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r32, r8
	br.ret.sptk.many b0
	;;
	.endp rotl16#
	.align 16
	.global rotr16#
	.type	rotr16#, @function
	.proc rotr16#
rotr16:
	.prologue
	.body
	zxt2 r8 = r32
	addp4 r14 = r33, r0
	;;
	shr.u r32 = r8, r14
	sub r33 = 16, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r8 = r8, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotr16#
	.align 16
	.global rotl8#
	.type	rotl8#, @function
	.proc rotl8#
rotl8:
	.prologue
	.body
	zxt1 r32 = r32
	addp4 r8 = r33, r0
	;;
	shl r8 = r32, r8
	sub r33 = 8, r33
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r32 = r32, r33
	;;
	or r8 = r32, r8
	br.ret.sptk.many b0
	;;
	.endp rotl8#
	.align 16
	.global rotr8#
	.type	rotr8#, @function
	.proc rotr8#
rotr8:
	.prologue
	.body
	zxt1 r8 = r32
	addp4 r14 = r33, r0
	;;
	shr.u r32 = r8, r14
	sub r33 = 8, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r8 = r8, r33
	;;
	or r8 = r8, r32
	br.ret.sptk.many b0
	;;
	.endp rotr8#
	.align 16
	.global bswap_16#
	.type	bswap_16#, @function
	.proc bswap_16#
bswap_16:
	.prologue
	.body
	zxt1 r8 = r32
	extr.u r32 = r32, 8, 8
	;;
	shl r8 = r8, 8
	;;
	or r8 = r32, r8
	br.ret.sptk.many b0
	;;
	.endp bswap_16#
	.align 16
	.global bswap_32#
	.type	bswap_32#, @function
	.proc bswap_32#
bswap_32:
	.prologue
	.body
	extr.u r8 = r32, 24, 8
	movl r14 = 16711680
	;;
	and r14 = r32, r14
	;;
	shr.u r14 = r14, 8
	addl r15 = 65280, r0
	;;
	and r15 = r15, r32
	;;
	dep.z r15 = r15, 8, 24
	dep.z r32 = r32, 24, 8
	;;
	or r32 = r15, r32
	;;
	or r8 = r32, r8
	;;
	or r8 = r8, r14
	br.ret.sptk.many b0
	;;
	.endp bswap_32#
	.align 16
	.global bswap_64#
	.type	bswap_64#, @function
	.proc bswap_64#
bswap_64:
	.prologue
	.body
	shr.u r15 = r32, 56
	movl r14 = 71776119061217280
	;;
	and r14 = r14, r32
	;;
	shr.u r14 = r14, 40
	;;
	or r14 = r15, r14
	movl r15 = 280375465082880
	;;
	and r15 = r15, r32
	;;
	shr.u r15 = r15, 24
	;;
	or r14 = r15, r14
	movl r15 = 1095216660480
	;;
	and r15 = r15, r32
	;;
	shr.u r15 = r15, 8
	;;
	or r14 = r15, r14
	movl r15 = 4278190080
	;;
	and r15 = r15, r32
	;;
	shl r15 = r15, 8
	;;
	or r14 = r15, r14
	movl r15 = 16711680
	;;
	and r15 = r15, r32
	;;
	shl r15 = r15, 24
	;;
	or r14 = r15, r14
	addl r15 = 65280, r0
	;;
	and r15 = r15, r32
	;;
	shl r15 = r15, 40
	;;
	or r14 = r15, r14
	shl r32 = r32, 56
	;;
	or r8 = r32, r14
	br.ret.sptk.many b0
	;;
	.endp bswap_64#
	.align 16
	.global ffs#
	.type	ffs#, @function
	.proc ffs#
ffs:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r0
	mov ar.lc = 32
.L332:
	;;
	br.cloop.sptk.few .L335
	br .L336
	;;
.L335:
	addp4 r14 = r32, r0
	addp4 r15 = r8, r0
	;;
	shr.u r14 = r14, r15
	;;
	tbit.z p6, p7 = r14, 0
	(p7) br.cond.dpnt .L337
	adds r8 = 1, r8
	br .L332
	;;
.L337:
	adds r8 = 1, r8
.L334:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L336:
	mov r8 = r0
	br .L334
	;;
	.endp ffs#
	.align 16
	.global libiberty_ffs#
	.type	libiberty_ffs#, @function
	.proc libiberty_ffs#
libiberty_ffs:
	.prologue
	.body
	cmp4.eq p6, p7 = 0, r32
	;;
	(p7) addl r8 = 1, r0
	(p7) br.cond.dptk .L340
	;;
	mov r8 = r0
	br .L339
	;;
.L341:
	extr r32 = r32, 1, 31
	adds r8 = 1, r8
.L340:
	;;
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L341
.L339:
	br.ret.sptk.many b0
	;;
	.endp libiberty_ffs#
	.align 16
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
	(p6) br.cond.dptk .L344
	movl r14 = 0x7f7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L344:
	br.ret.sptk.many b0
	;;
	.endp gl_isinff#
	.align 16
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
	(p6) br.cond.dptk .L350
	movl r14 = 0x7fefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L350:
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
	(p6) br.cond.dptk .L356
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
.L356:
	br.ret.sptk.many b0
	;;
	.endp gl_isinfl#
	.align 16
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
	.global ldexpf#
	.type	ldexpf#, @function
	.proc ldexpf#
ldexpf:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L363
	fadd.s f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L363
	cmp4.le p6, p7 = r0, r33
	;;
	(p7) movl r14 = 0x3f000000
	;;
	(p6) movl r14 = 0x40000000
	;;
	setf.s f6 = r14
.L366:
	tbit.z p6, p7 = r33, 0
	;;
	(p7) fmpy.s f8 = f8, f6
	extr.u r14 = r33, 31, 1
	;;
	add r14 = r14, r33
	;;
	extr r14 = r14, 1, 31
	;;
	mov r33 = r14
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L363
	fmpy.s f6 = f6, f6
	br .L366
	;;
.L363:
	br.ret.sptk.many b0
	;;
	.endp ldexpf#
	.align 16
	.global ldexp#
	.type	ldexp#, @function
	.proc ldexp#
ldexp:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L369
	fadd.d f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L369
	cmp4.le p6, p7 = r0, r33
	;;
	(p7) movl r14 = 0x3fe0000000000000
	;;
	(p6) movl r14 = 0x4000000000000000
	;;
	setf.d f6 = r14
.L372:
	tbit.z p6, p7 = r33, 0
	;;
	(p7) fmpy.d f8 = f8, f6
	extr.u r14 = r33, 31, 1
	;;
	add r14 = r14, r33
	;;
	extr r14 = r14, 1, 31
	;;
	mov r33 = r14
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L369
	fmpy.d f6 = f6, f6
	br .L372
	;;
.L369:
	br.ret.sptk.many b0
	;;
	.endp ldexp#
	.section	.rodata.cst16
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
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L375
	fadd f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L375
	cmp4.le p6, p7 = r0, r34
	;;
	(p7) movl r14 = @gprel(.LC4)
	;;
	(p6) movl r14 = @gprel(.LC5)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
.L378:
	tbit.z p6, p7 = r34, 0
	;;
	(p7) fmpy f8 = f8, f6
	extr.u r14 = r34, 31, 1
	;;
	add r14 = r14, r34
	;;
	extr r14 = r14, 1, 31
	;;
	mov r34 = r14
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L375
	fmpy f6 = f6, f6
	br .L378
	;;
.L375:
	br.ret.sptk.many b0
	;;
	.endp ldexpl#
	.align 16
	.global memxor#
	.type	memxor#, @function
	.proc memxor#
memxor:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r32
	mov r15 = r32
	mov ar.lc = r34
	br .L381
	;;
.L382:
	adds r33 = 1, r33
	;;
	adds r14 = -1, r33
	;;
	ld1 r17 = [r14]
	adds r15 = 1, r15
	;;
	adds r16 = -1, r15
	;;
	ld1 r14 = [r16]
	;;
	xor r14 = r17, r14
	;;
	st1 [r16] = r14
.L381:
	br.cloop.sptk.few .L382
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp memxor#
	.align 16
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
	mov ar.lc = r34
	br .L384
	;;
.L386:
	adds r34 = -1, r34
.L384:
	mov r15 = r8
	br.cloop.sptk.few .L388
	br .L385
	;;
.L388:
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
	(p6) br.cond.dptk .L386
.L385:
	;;
	cmp.ne p6, p7 = 0, r34
	;;
	(p7) st1 [r15] = r0
	mov r8 = r32
	mov ar.pfs = r36
	mov ar.lc = r38
	mov b0 = r35
	br.ret.sptk.many b0
	;;
	.endp strncat#
	.align 16
	.global strnlen#
	.type	strnlen#, @function
	.proc strnlen#
strnlen:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	mov r8 = r0
	mov ar.lc = r33
.L390:
	;;
	br.cloop.sptk.few .L393
	br .L391
	;;
.L393:
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L392
.L391:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L392:
	adds r8 = 1, r8
	br .L390
	;;
	.endp strnlen#
	.align 16
	.global strpbrk#
	.type	strpbrk#, @function
	.proc strpbrk#
strpbrk:
	.prologue
	.body
.L395:
	mov r8 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L400
	mov r16 = r33
	adds r17 = -1, r32
.L398:
	;;
	ld1 r14 = [r16], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L395
	adds r14 = -1, r16
	;;
	ld1 r15 = [r14]
	;;
	sxt1 r15 = r15
	ld1 r14 = [r17]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = r14, r15
	(p7) br.cond.dptk .L398
.L396:
	br.ret.sptk.many b0
	;;
.L400:
	mov r8 = r0
	br .L396
	;;
	.endp strpbrk#
	.align 16
	.global strrchr#
	.type	strrchr#, @function
	.proc strrchr#
strrchr:
	.prologue
	.body
	mov r8 = r0
.L403:
	mov r15 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = r14, r33
	;;
	(p6) mov r8 = r15
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L403
	br.ret.sptk.many b0
	;;
	.endp strrchr#
	.align 16
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
	;;
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L407
	ld1 r35 = [r33]
	;;
	sxt1 r35 = r35
.L408:
	;;
	mov r40 = r35
	mov r39 = r32
	br.call.sptk.many b0 = strchr#
	mov r1 = r38
	mov r32 = r8
	cmp.ne p6, p7 = 0, r8
	(p7) br.cond.dpnt .L412
	mov r41 = r34
	;;
	mov r40 = r33
	mov r39 = r32
	br.call.sptk.many b0 = strncmp#
	mov r1 = r38
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L411
	adds r32 = 1, r32
	br .L408
	;;
.L412:
	mov r8 = r0
.L407:
	mov ar.pfs = r37
	mov b0 = r36
	br.ret.sptk.many b0
	;;
.L411:
	mov r8 = r32
	br .L407
	;;
	.endp strstr#
	.align 16
	.global copysign#
	.type	copysign#, @function
	.proc copysign#
copysign:
	.prologue
	.body
	fcmp.lt p6, p7 = f8, f0
	;;
	(p6) br.cond.dpnt .L426
.L414:
	fcmp.gt p6, p7 = f8, f0
	;;
	(p7) br.cond.dpnt .L417
	fcmp.lt p6, p7 = f9, f0
	;;
	(p6) br.cond.dpnt .L416
.L417:
	br.ret.sptk.many b0
	;;
.L426:
	fcmp.gt p6, p7 = f9, f0
	;;
	(p7) br.cond.dptk .L414
.L416:
	fneg f8 = f8
	br .L417
	;;
	.endp copysign#
	.align 16
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
	sub r36 = r33, r35
	;;
	add r36 = r32, r36
	cmp.eq p6, p7 = 0, r35
	;;
	(p6) mov r8 = r32
	(p6) br.cond.dpnt .L428
	cmp.gtu p6, p7 = r35, r33
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L428
	adds r38 = 1, r34
	adds r35 = -1, r35
.L429:
	mov r37 = r32
	cmp.geu p6, p7 = r36, r32
	(p7) br.cond.dpnt .L435
	ld1 r15 = [r32], 1
	;;
	sxt1 r15 = r15
	ld1 r14 = [r34]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L429
	mov r44 = r35
	mov r43 = r38
	mov r42 = r32
	br.call.sptk.many b0 = memcmp#
	mov r1 = r41
	;;
	cmp4.eq p6, p7 = 0, r8
	(p7) br.cond.dptk .L429
	mov r8 = r37
	br .L428
	;;
.L435:
	mov r8 = r0
.L428:
	mov ar.pfs = r40
	mov b0 = r39
	br.ret.sptk.many b0
	;;
	.endp memmem#
	.align 16
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
	(p6) mov r14 = r0
	(p6) movl r16 = 0x3fe0000000000000
	;;
	(p6) setf.d f6 = r16
	(p6) br.cond.dptk .L440
	movl r14 = 0x3fe0000000000000
	;;
	setf.d f6 = r14
	;;
	fcmp.lt p6, p7 = f8, f6
	fcmp.neq p8, p9 = f8, f0
	;;
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	;;
	(p7) mov r14 = r0
	(p7) br.cond.dptk .L443
	;;
	mov r14 = r0
	movl r16 = 0x3fe0000000000000
	;;
	setf.d f6 = r16
	br .L444
	;;
.L442:
	adds r14 = 1, r14
	fmpy.d f8 = f8, f6
.L440:
	;;
	fcmp.ge p6, p7 = f8, f1
	;;
	(p6) br.cond.dptk .L442
.L443:
	st4 [r33] = r14
	cmp4.eq p6, p7 = 0, r15
	;;
	(p7) fneg f8 = f8
	br.ret.sptk.many b0
	;;
.L445:
	adds r14 = -1, r14
	fadd.d f8 = f8, f8
.L444:
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L445
	br .L443
	;;
	.endp frexp#
	.align 16
	.global __muldi3#
	.type	__muldi3#, @function
	.proc __muldi3#
__muldi3:
	.prologue
	.body
	mov r8 = r0
	br .L454
	;;
.L456:
	tbit.z p6, p7 = r32, 0
	;;
	(p7) add r8 = r8, r33
	shladd r33 = r33, 1, r0
	shr.u r32 = r32, 1
.L454:
	;;
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L456
	br.ret.sptk.many b0
	;;
	.endp __muldi3#
	.align 16
	.global udivmodsi4#
	.type	udivmodsi4#, @function
	.proc udivmodsi4#
udivmodsi4:
	.prologue
	.body
	addl r14 = 1, r0
	br .L458
	;;
.L461:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L458:
	;;
	cmp4.gtu p6, p7 = r32, r33
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r14
	(p7) br.cond.dpnt .L467
	;;
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L461
	mov r8 = r0
	br .L460
	;;
.L467:
	mov r8 = r0
.L460:
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L468
	;;
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r14, r8
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	br .L460
	;;
.L468:
	cmp.ne p6, p7 = 0, r34
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp udivmodsi4#
	.align 16
	.global __clrsbqi2#
	.type	__clrsbqi2#, @function
	.proc __clrsbqi2#
__clrsbqi2:
	.prologue
	.body
	sxt1 r32 = r32
	;;
	andcm r14 = -1, r32
	;;
	cmp4.le p6, p7 = r32, r14
	;;
	(p7) mov r14 = r32
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	(p7) dep.z r14 = r14, 8, 24
	;;
	(p7) addp4 r14 = r14, r0
	;;
	(p7) setf.sig f6 = r14
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
	.global __clrsbdi2#
	.type	__clrsbdi2#, @function
	.proc __clrsbdi2#
__clrsbdi2:
	.prologue
	.body
	andcm r14 = -1, r32
	;;
	cmp.le p6, p7 = r14, r32
	;;
	(p7) mov r32 = r14
	;;
	cmp.eq p6, p7 = 0, r32
	;;
	(p7) setf.sig f7 = r32
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
	.global __mulsi3#
	.type	__mulsi3#, @function
	.proc __mulsi3#
__mulsi3:
	.prologue
	.body
	mov r8 = r0
	br .L478
	;;
.L480:
	tbit.z p6, p7 = r32, 0
	;;
	(p7) add r8 = r8, r33
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
.L478:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L480
	br.ret.sptk.many b0
	;;
	.endp __mulsi3#
	.align 16
	.global __cmovd#
	.type	__cmovd#, @function
	.proc __cmovd#
__cmovd:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	extr.u r17 = r34, 3, 29
	and r18 = -8, r34
	;;
	mov r14 = r18
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L482
	addp4 r16 = r34, r0
	;;
	add r16 = r33, r16
	;;
	cmp.leu p6, p7 = r32, r16
	;;
	(p6) addp4 r14 = r34, r0
	;;
	(p6) mov ar.lc = r14
	(p6) br.cond.dptk .L483
.L482:
	mov r16 = r32
	addp4 r17 = r17, r0
	mov r15 = r33
	;;
	mov ar.lc = r17
	br .L484
	;;
.L485:
	ld8 r17 = [r15], 8
	;;
	st8 [r16] = r17, 8
.L484:
	br.cloop.sptk.few .L485
	addp4 r18 = r18, r0
	;;
	add r33 = r33, r18
	add r32 = r32, r18
	sub r15 = r34, r14
	;;
	addp4 r15 = r15, r0
	;;
	mov ar.lc = r15
	cmp4.ltu p6, p7 = r34, r14
	(p6) br.cond.spnt .L491
	;;
	cmp4.eq p6, p7 = 0, r34
	(p7) br.cond.sptk .L486
.L491:
	mov ar.lc = 0
	br .L486
	;;
.L487:
	ld1 r15 = [r33], 1
	;;
	st1 [r32] = r15, 1
	adds r14 = 1, r14
.L486:
	br.cloop.sptk.few .L487
.L481:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L489:
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
	br.cloop.sptk.few .L489
	br .L481
	;;
	.endp __cmovd#
	.align 16
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
	(p6) br.cond.dptk .L493
	addp4 r15 = r34, r0
	;;
	add r15 = r33, r15
	;;
	cmp.leu p6, p7 = r32, r15
	;;
	(p6) addp4 r14 = r34, r0
	;;
	(p6) mov ar.lc = r14
	(p6) br.cond.dptk .L494
.L493:
	mov r15 = r32
	addp4 r16 = r16, r0
	mov r14 = r33
	;;
	mov ar.lc = r16
	br .L495
	;;
.L496:
	ld2 r16 = [r14], 2
	;;
	st2 [r15] = r16, 2
.L495:
	br.cloop.sptk.few .L496
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L492
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
.L492:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L498:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L494:
	adds r34 = -1, r34
	br.cloop.sptk.few .L498
	br .L492
	;;
	.endp __cmovh#
	.align 16
	.global __cmovw#
	.type	__cmovw#, @function
	.proc __cmovw#
__cmovw:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	extr.u r17 = r34, 2, 30
	and r18 = -4, r34
	;;
	mov r14 = r18
	cmp.gtu p6, p7 = r33, r32
	(p6) br.cond.dptk .L501
	addp4 r16 = r34, r0
	;;
	add r16 = r33, r16
	;;
	cmp.leu p6, p7 = r32, r16
	;;
	(p6) addp4 r14 = r34, r0
	;;
	(p6) mov ar.lc = r14
	(p6) br.cond.dptk .L502
.L501:
	mov r16 = r32
	addp4 r17 = r17, r0
	mov r15 = r33
	;;
	mov ar.lc = r17
	br .L503
	;;
.L504:
	ld4 r17 = [r15], 4
	;;
	st4 [r16] = r17, 4
.L503:
	br.cloop.sptk.few .L504
	addp4 r18 = r18, r0
	;;
	add r33 = r33, r18
	add r32 = r32, r18
	sub r15 = r34, r14
	;;
	addp4 r15 = r15, r0
	;;
	mov ar.lc = r15
	cmp4.ltu p6, p7 = r34, r14
	(p6) br.cond.spnt .L510
	;;
	cmp4.eq p6, p7 = 0, r34
	(p7) br.cond.sptk .L505
.L510:
	mov ar.lc = 0
	br .L505
	;;
.L506:
	ld1 r15 = [r33], 1
	;;
	st1 [r32] = r15, 1
	adds r14 = 1, r14
.L505:
	br.cloop.sptk.few .L506
.L500:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L508:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L502:
	adds r34 = -1, r34
	br.cloop.sptk.few .L508
	br .L500
	;;
	.endp __cmovw#
	.align 16
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
	.global __clzhi2#
	.type	__clzhi2#, @function
	.proc __clzhi2#
__clzhi2:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov ar.lc = 16
.L518:
	;;
	br.cloop.sptk.few .L520
	br .L519
	;;
.L520:
	sub r14 = 15, r8
	sxt4 r15 = r32
	;;
	addp4 r14 = r14, r0
	;;
	shr r15 = r15, r14
	;;
	tbit.nz p6, p7 = r15, 0
	(p6) br.cond.dpnt .L519
	adds r8 = 1, r8
	br .L518
	;;
.L519:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __clzhi2#
	.align 16
	.global __ctzhi2#
	.type	__ctzhi2#, @function
	.proc __ctzhi2#
__ctzhi2:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov ar.lc = 16
.L522:
	;;
	br.cloop.sptk.few .L524
	br .L523
	;;
.L524:
	sxt4 r14 = r32
	addp4 r15 = r8, r0
	;;
	shr r14 = r14, r15
	;;
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dpnt .L523
	adds r8 = 1, r8
	br .L522
	;;
.L523:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __ctzhi2#
	.align 16
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
	.global __parityhi2#
	.type	__parityhi2#, @function
	.proc __parityhi2#
__parityhi2:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov r15 = r0
	mov ar.lc = 16
	br .L532
	;;
.L534:
	sxt4 r14 = r32
	addp4 r16 = r15, r0
	;;
	shr r14 = r14, r16
	;;
	tbit.z p6, p7 = r14, 0
	;;
	(p7) adds r8 = 1, r8
	adds r15 = 1, r15
.L532:
	br.cloop.sptk.few .L534
	;;
	and r8 = 1, r8
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __parityhi2#
	.align 16
	.global __popcounthi2#
	.type	__popcounthi2#, @function
	.proc __popcounthi2#
__popcounthi2:
	.prologue
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	zxt2 r32 = r32
	mov r8 = r0
	mov r15 = r0
	mov ar.lc = 16
	br .L536
	;;
.L538:
	sxt4 r14 = r32
	addp4 r16 = r15, r0
	;;
	shr r14 = r14, r16
	;;
	tbit.z p6, p7 = r14, 0
	;;
	(p7) adds r8 = 1, r8
	adds r15 = 1, r15
.L536:
	br.cloop.sptk.few .L538
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
	.endp __popcounthi2#
	.align 16
	.global __mulsi3_iq2000#
	.type	__mulsi3_iq2000#, @function
	.proc __mulsi3_iq2000#
__mulsi3_iq2000:
	.prologue
	.body
	mov r8 = r0
	br .L540
	;;
.L542:
	tbit.z p6, p7 = r32, 0
	;;
	(p7) add r8 = r8, r33
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
.L540:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L542
	br.ret.sptk.many b0
	;;
	.endp __mulsi3_iq2000#
	.align 16
	.global __mulsi3_lm32#
	.type	__mulsi3_lm32#, @function
	.proc __mulsi3_lm32#
__mulsi3_lm32:
	.prologue
	.body
	cmp4.eq p6, p7 = 0, r32
	;;
	(p7) mov r8 = r0
	(p7) br.cond.dptk .L545
	;;
	mov r8 = r0
	br .L544
	;;
.L547:
	tbit.z p6, p7 = r33, 0
	;;
	(p7) add r8 = r8, r32
	shladd r32 = r32, 1, r0
	extr.u r33 = r33, 1, 31
.L545:
	;;
	cmp4.ne p6, p7 = 0, r33
	(p6) br.cond.dptk .L547
.L544:
	br.ret.sptk.many b0
	;;
	.endp __mulsi3_lm32#
	.align 16
	.global __udivmodsi4#
	.type	__udivmodsi4#, @function
	.proc __udivmodsi4#
__udivmodsi4:
	.prologue
	.body
	addl r14 = 1, r0
	br .L550
	;;
.L553:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L550:
	;;
	cmp4.gtu p6, p7 = r32, r33
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r14
	(p7) br.cond.dpnt .L559
	;;
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L553
	mov r8 = r0
	br .L552
	;;
.L559:
	mov r8 = r0
.L552:
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L560
	;;
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r14, r8
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	br .L552
	;;
.L560:
	cmp4.ne p6, p7 = 0, r34
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp __udivmodsi4#
	.align 16
	.global __mspabi_cmpf#
	.type	__mspabi_cmpf#, @function
	.proc __mspabi_cmpf#
__mspabi_cmpf:
	.prologue
	.body
	fcmp.lt p6, p7 = f8, f9
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dpnt .L562
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L562:
	br.ret.sptk.many b0
	;;
	.endp __mspabi_cmpf#
	.align 16
	.global __mspabi_cmpd#
	.type	__mspabi_cmpd#, @function
	.proc __mspabi_cmpd#
__mspabi_cmpd:
	.prologue
	.body
	fcmp.lt p6, p7 = f8, f9
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dpnt .L566
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L566:
	br.ret.sptk.many b0
	;;
	.endp __mspabi_cmpd#
	.align 16
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
	mov r8 = r0
	mov r14 = r0
	br .L573
	;;
.L575:
	tbit.z p6, p7 = r33, 0
	;;
	(p7) add r8 = r8, r32
	shladd r32 = r32, 1, r0
	extr r33 = r33, 1, 31
	adds r14 = 1, r14
	;;
	sxt1 r14 = r14
.L573:
	;;
	zxt1 r15 = r14
	;;
	cmp4.geu p6, p7 = 31, r15
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r33
	(p6) br.cond.dptk .L575
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p7) sub r8 = r0, r8
	br.ret.sptk.many b0
	;;
	.endp __mulhi3#
	.align 16
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
	(p7) br.cond.dpnt .L584
.L581:
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
.L584:
	sub r39 = r0, r33
	cmp4.eq p6, p7 = 0, r34
	;;
	(p6) addl r34 = 1, r0
	;;
	(p7) mov r34 = r0
	br .L581
	;;
	.endp __divsi3#
	.align 16
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
	.global __udivmodhi4#
	.type	__udivmodhi4#, @function
	.proc __udivmodhi4#
__udivmodhi4:
	.prologue
	.body
	zxt2 r32 = r32
	zxt2 r33 = r33
	addl r14 = 1, r0
	br .L591
	;;
.L594:
	shladd r33 = r33, 1, r0
	;;
	zxt2 r33 = r33
	shladd r14 = r14, 1, r0
	;;
	zxt2 r14 = r14
.L591:
	cmp4.gtu p6, p7 = r32, r33
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r14
	(p7) br.cond.dpnt .L600
	;;
	tbit.z p6, p7 = r33, 15
	(p6) br.cond.dptk .L594
	mov r8 = r0
	br .L593
	;;
.L600:
	mov r8 = r0
.L593:
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L601
	;;
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	;;
	(p7) zxt2 r32 = r32
	(p7) or r8 = r8, r14
	;;
	(p7) zxt2 r8 = r8
	extr.u r14 = r14, 1, 15
	extr.u r33 = r33, 1, 15
	br .L593
	;;
.L601:
	cmp4.ne p6, p7 = 0, r34
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp __udivmodhi4#
	.align 16
	.global __udivmodsi4_libgcc#
	.type	__udivmodsi4_libgcc#, @function
	.proc __udivmodsi4_libgcc#
__udivmodsi4_libgcc:
	.prologue
	.body
	addl r14 = 1, r0
	br .L603
	;;
.L606:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L603:
	;;
	cmp.gtu p6, p7 = r32, r33
	;;
	cmp.ne.and.orcm p6, p7 = 0, r14
	(p7) br.cond.dpnt .L612
	;;
	tbit.z p6, p7 = r33, 31
	(p6) br.cond.dptk .L606
	mov r8 = r0
	br .L605
	;;
.L612:
	mov r8 = r0
.L605:
	cmp.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L613
	;;
	cmp.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r14, r8
	shr.u r14 = r14, 1
	shr.u r33 = r33, 1
	br .L605
	;;
.L613:
	cmp4.ne p6, p7 = 0, r34
	;;
	(p6) mov r8 = r32
	br.ret.sptk.many b0
	;;
	.endp __udivmodsi4_libgcc#
	.align 16
	.global __ashldi3#
	.type	__ashldi3#, @function
	.proc __ashldi3#
__ashldi3:
	.prologue
	.body
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L615
	mov r8 = r0
	;;
	dep r8 = 0, r8, 0, 32
	adds r33 = -32, r33
	;;
	addp4 r33 = r33, r0
	;;
	shl r32 = r32, r33
	;;
	mix4.r r8 = r32, r8
.L617:
	br.ret.sptk.many b0
	;;
.L615:
	cmp4.eq p6, p7 = 0, r33
	;;
	(p7) addp4 r15 = r33, r0
	;;
	(p7) shl r14 = r32, r15
	(p7) mov r8 = r0
	;;
	(p7) shl r14 = r14, 32
	;;
	(p7) mix4.l r8 = r8, r14
	(p7) extr r14 = r32, 32, 32
	;;
	(p7) shl r14 = r14, r15
	(p7) sub r33 = 32, r33
	(p7) addp4 r32 = r32, r0
	;;
	(p7) addp4 r33 = r33, r0
	;;
	(p7) shr.u r32 = r32, r33
	;;
	(p7) or r32 = r14, r32
	;;
	(p7) mix4.r r8 = r32, r8
	;;
	(p6) mov r8 = r32
	br .L617
	;;
	.endp __ashldi3#
	.align 16
	.global __ashlti3#
	.type	__ashlti3#, @function
	.proc __ashlti3#
__ashlti3:
	.prologue
	.body
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L620
	mov r8 = r0
	adds r34 = -64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shl r9 = r32, r34
.L622:
	br.ret.sptk.many b0
	;;
.L620:
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) addp4 r14 = r34, r0
	(p7) mov r8 = r0
	(p7) mov r9 = r0
	;;
	(p7) shl r8 = r32, r14
	(p7) shl r14 = r33, r14
	(p7) sub r34 = 64, r34
	;;
	(p7) addp4 r34 = r34, r0
	;;
	(p7) shr.u r32 = r32, r34
	;;
	(p7) or r9 = r14, r32
	(p6) mov r8 = r32
	;;
	(p6) mov r9 = r33
	br .L622
	;;
	.endp __ashlti3#
	.align 16
	.global __ashrdi3#
	.type	__ashrdi3#, @function
	.proc __ashrdi3#
__ashrdi3:
	.prologue
	.body
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L625
	shr r14 = r32, 63
	mov r8 = r0
	;;
	mix4.r r8 = r14, r8
	adds r33 = -32, r33
	shr r32 = r32, 32
	;;
	addp4 r33 = r33, r0
	;;
	shr r32 = r32, r33
	;;
	shl r32 = r32, 32
	;;
	mix4.l r8 = r8, r32
.L627:
	br.ret.sptk.many b0
	;;
.L625:
	cmp4.eq p6, p7 = 0, r33
	;;
	(p7) shr r14 = r32, 32
	(p7) addp4 r15 = r33, r0
	;;
	(p7) shr r14 = r14, r15
	(p7) mov r8 = r0
	;;
	(p7) mix4.r r8 = r14, r8
	(p7) extr r14 = r32, 32, 32
	(p7) sub r33 = 32, r33
	;;
	(p7) addp4 r33 = r33, r0
	;;
	(p7) shl r14 = r14, r33
	(p7) addp4 r32 = r32, r0
	;;
	(p7) shr.u r32 = r32, r15
	;;
	(p7) or r32 = r14, r32
	;;
	(p7) shl r32 = r32, 32
	;;
	(p7) mix4.l r8 = r8, r32
	;;
	(p6) mov r8 = r32
	br .L627
	;;
	.endp __ashrdi3#
	.align 16
	.global __ashrti3#
	.type	__ashrti3#, @function
	.proc __ashrti3#
__ashrti3:
	.prologue
	.body
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L630
	shr r9 = r33, 63
	adds r34 = -64, r34
	;;
	sxt4 r34 = r34
	;;
	shr r8 = r33, r34
.L632:
	br.ret.sptk.many b0
	;;
.L630:
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) sxt4 r14 = r34
	(p7) mov r8 = r0
	(p7) mov r9 = r0
	;;
	(p7) shr r9 = r33, r14
	(p7) sub r14 = 64, r34
	;;
	(p7) addp4 r14 = r14, r0
	;;
	(p7) shl r14 = r33, r14
	(p7) addp4 r34 = r34, r0
	;;
	(p7) shr.u r32 = r32, r34
	;;
	(p7) or r8 = r32, r14
	;;
	(p6) mov r8 = r32
	(p6) mov r9 = r33
	br .L632
	;;
	.endp __ashrti3#
	.align 16
	.global __bswapdi2#
	.type	__bswapdi2#, @function
	.proc __bswapdi2#
__bswapdi2:
	.prologue
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
	shl r8 = r32, 40
	movl r14 = 71776119061217280
	;;
	and r8 = r14, r8
	shl r14 = r32, 56
	;;
	or r14 = r20, r14
	;;
	or r14 = r19, r14
	;;
	or r14 = r18, r14
	;;
	or r14 = r17, r14
	;;
	or r14 = r16, r14
	;;
	or r14 = r15, r14
	;;
	or r8 = r8, r14
	br.ret.sptk.many b0
	;;
	.endp __bswapdi2#
	.align 16
	.global __bswapsi2#
	.type	__bswapsi2#, @function
	.proc __bswapsi2#
__bswapsi2:
	.prologue
	.body
	extr.u r15 = r32, 24, 8
	extr.u r14 = r32, 8, 24
	addl r16 = 65280, r0
	;;
	and r14 = r16, r14
	dep.z r8 = r32, 8, 24
	movl r16 = 16711680
	;;
	and r8 = r16, r8
	dep.z r32 = r32, 24, 8
	;;
	or r15 = r32, r15
	;;
	or r14 = r15, r14
	;;
	or r8 = r14, r8
	br.ret.sptk.many b0
	;;
	.endp __bswapsi2#
	.align 16
	.global __clzsi2#
	.type	__clzsi2#, @function
	.proc __clzsi2#
__clzsi2:
	.prologue
	.body
	addl r14 = 65535, r0
	;;
	cmp4.ltu p6, p7 = r14, r32
	;;
	(p6) mov r15 = r0
	;;
	(p7) addl r15 = 16, r0
	;;
	sub r16 = 16, r15
	addp4 r14 = r32, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	addl r16 = 65280, r0
	;;
	and r16 = r16, r14
	;;
	cmp4.ne p6, p7 = 0, r16
	;;
	(p6) mov r17 = r0
	;;
	(p7) addl r17 = 8, r0
	;;
	sub r16 = 8, r17
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	add r15 = r15, r17
	addl r16 = 240, r0
	;;
	and r16 = r16, r14
	;;
	cmp4.ne p6, p7 = 0, r16
	;;
	(p6) mov r17 = r0
	;;
	(p7) addl r17 = 4, r0
	;;
	sub r16 = 4, r17
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	add r15 = r15, r17
	;;
	and r16 = 12, r14
	;;
	cmp4.ne p6, p7 = 0, r16
	;;
	(p6) mov r17 = r0
	;;
	(p7) addl r17 = 2, r0
	;;
	sub r16 = 2, r17
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	add r15 = r15, r17
	;;
	tbit.z p6, p7 = r14, 1
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	sub r8 = 2, r14
	;;
	setf.sig f6 = r8
	setf.sig f7 = r16
	setf.sig f8 = r15
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br.ret.sptk.many b0
	;;
	.endp __clzsi2#
	.align 16
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
	sub r16 = r0, r15
	adds r14 = -1, r15
	;;
	and r14 = r33, r14
	and r16 = r32, r16
	;;
	or r16 = r16, r14
	;;
	setf.sig f6 = r16
	;;
	fcvt.xuf f6 = f6
	;;
	getf.exp r14 = f6
	addl r8 = 65598, r0
	;;
	sub r8 = r8, r14
	shl r15 = r15, 6
	;;
	add r8 = r15, r8
	br.ret.sptk.many b0
	;;
	.endp __clzti2#
	.align 16
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
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L647
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L647
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L647
	cmp4.ltu p6, p7 = r33, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
.L647:
	br.ret.sptk.many b0
	;;
	.endp __cmpdi2#
	.align 16
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
	.global __cmpti2#
	.type	__cmpti2#, @function
	.proc __cmpti2#
__cmpti2:
	.prologue
	.body
	cmp.gt p6, p7 = r35, r33
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L654
	cmp.lt p6, p7 = r35, r33
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L654
	cmp.gtu p6, p7 = r34, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L654
	cmp.ltu p6, p7 = r34, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
.L654:
	br.ret.sptk.many b0
	;;
	.endp __cmpti2#
	.align 16
	.global __ctzsi2#
	.type	__ctzsi2#, @function
	.proc __ctzsi2#
__ctzsi2:
	.prologue
	.body
	zxt2 r14 = r32
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	(p6) mov r8 = r0
	;;
	(p7) addl r8 = 16, r0
	addp4 r14 = r32, r0
	;;
	addp4 r15 = r8, r0
	;;
	shr.u r14 = r14, r15
	;;
	zxt1 r15 = r14
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	(p6) mov r15 = r0
	;;
	(p7) addl r15 = 8, r0
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r15, r0
	;;
	shr.u r14 = r14, r16
	add r8 = r8, r15
	;;
	and r15 = 15, r14
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	(p6) mov r15 = r0
	;;
	(p7) addl r15 = 4, r0
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r15, r0
	;;
	shr.u r14 = r14, r16
	add r8 = r8, r15
	;;
	and r15 = 3, r14
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	(p6) mov r15 = r0
	;;
	(p7) addl r15 = 2, r0
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r15, r0
	;;
	shr.u r14 = r14, r16
	add r8 = r8, r15
	;;
	andcm r15 = 1, r14
	extr.u r14 = r14, 1, 1
	;;
	sub r14 = 2, r14
	sub r15 = r0, r15
	;;
	and r14 = r15, r14
	;;
	add r8 = r8, r14
	br.ret.sptk.many b0
	;;
	.endp __ctzsi2#
	.align 16
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
	;;
	sub r14 = r0, r8
	;;
	and r15 = r33, r14
	andcm r14 = r32, r14
	;;
	or r14 = r15, r14
	;;
	adds r15 = -1, r14
	;;
	andcm r14 = r15, r14
	;;
	popcnt r14 = r14
	shl r8 = r8, 6
	;;
	add r8 = r8, r14
	br.ret.sptk.many b0
	;;
	.endp __ctzti2#
	.align 16
	.global __ffsti2#
	.type	__ffsti2#, @function
	.proc __ffsti2#
__ffsti2:
	.prologue
	.body
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L670
	;;
	cmp.eq p6, p7 = 0, r33
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dptk .L671
	adds r14 = -1, r33
	;;
	andcm r14 = r14, r33
	;;
	popcnt r14 = r14
	;;
	adds r8 = 65, r14
	br .L671
	;;
.L670:
	adds r8 = -1, r32
	;;
	andcm r8 = r8, r32
	;;
	popcnt r8 = r8
	;;
	adds r8 = 1, r8
.L671:
	br.ret.sptk.many b0
	;;
	.endp __ffsti2#
	.align 16
	.global __lshrdi3#
	.type	__lshrdi3#, @function
	.proc __lshrdi3#
__lshrdi3:
	.prologue
	.body
	tbit.z p6, p7 = r33, 5
	(p6) br.cond.dptk .L674
	mov r8 = r0
	;;
	dep r8 = 0, r8, 32, 32
	adds r33 = -32, r33
	shr.u r32 = r32, 32
	;;
	addp4 r33 = r33, r0
	;;
	shr.u r32 = r32, r33
	;;
	shl r32 = r32, 32
	;;
	mix4.l r8 = r8, r32
.L676:
	br.ret.sptk.many b0
	;;
.L674:
	cmp4.eq p6, p7 = 0, r33
	;;
	(p7) shr.u r14 = r32, 32
	(p7) addp4 r15 = r33, r0
	;;
	(p7) shr.u r14 = r14, r15
	(p7) mov r8 = r0
	;;
	(p7) mix4.r r8 = r14, r8
	(p7) extr.u r14 = r32, 32, 32
	(p7) sub r33 = 32, r33
	;;
	(p7) addp4 r33 = r33, r0
	;;
	(p7) shl r14 = r14, r33
	(p7) addp4 r32 = r32, r0
	;;
	(p7) shr.u r32 = r32, r15
	;;
	(p7) or r32 = r14, r32
	;;
	(p7) shl r32 = r32, 32
	;;
	(p7) mix4.l r8 = r8, r32
	;;
	(p6) mov r8 = r32
	br .L676
	;;
	.endp __lshrdi3#
	.align 16
	.global __lshrti3#
	.type	__lshrti3#, @function
	.proc __lshrti3#
__lshrti3:
	.prologue
	.body
	tbit.z p6, p7 = r34, 6
	(p6) br.cond.dptk .L679
	mov r9 = r0
	adds r34 = -64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shr.u r8 = r33, r34
.L681:
	br.ret.sptk.many b0
	;;
.L679:
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) addp4 r14 = r34, r0
	(p7) mov r8 = r0
	(p7) mov r9 = r0
	;;
	(p7) shr.u r9 = r33, r14
	(p7) sub r34 = 64, r34
	;;
	(p7) addp4 r34 = r34, r0
	;;
	(p7) shl r34 = r33, r34
	(p7) shr.u r32 = r32, r14
	;;
	(p7) or r8 = r32, r34
	;;
	(p6) mov r8 = r32
	(p6) mov r9 = r33
	br .L681
	;;
	.endp __lshrti3#
	.align 16
	.global __muldsi3#
	.type	__muldsi3#, @function
	.proc __muldsi3#
__muldsi3:
	.prologue
	.body
	addl r15 = 65535, r0
	;;
	and r14 = r15, r32
	;;
	setf.sig f8 = r14
	and r14 = r15, r33
	;;
	setf.sig f6 = r14
	;;
	xmpy.l f7 = f6, f8
	;;
	getf.sig r14 = f7
	mov r8 = r0
	;;
	shl r14 = r14, 32
	;;
	mix4.l r8 = r8, r14
	;;
	extr.u r14 = r8, 16, 16
	and r16 = r15, r8
	;;
	shl r16 = r16, 32
	;;
	mix4.l r8 = r8, r16
	extr.u r32 = r32, 16, 16
	;;
	setf.sig f7 = r32
	setf.sig f9 = r14
	;;
	xma.l f9 = f7, f6, f9
	;;
	getf.sig r14 = f9
	;;
	dep.z r16 = r14, 16, 16
	;;
	add r16 = r16, r8
	;;
	shl r16 = r16, 32
	;;
	mix4.l r8 = r8, r16
	extr.u r14 = r14, 16, 16
	;;
	mix4.r r8 = r14, r8
	;;
	extr.u r14 = r8, 16, 16
	and r15 = r15, r8
	;;
	shl r15 = r15, 32
	;;
	mix4.l r8 = r8, r15
	extr.u r33 = r33, 16, 16
	;;
	setf.sig f6 = r33
	setf.sig f9 = r14
	;;
	xma.l f9 = f6, f8, f9
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
	br.ret.sptk.many b0
	;;
	.endp __muldsi3#
	.align 16
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
	extr r14 = r8, 32, 32
	extr r15 = r32, 32, 32
	extr r16 = r33, 32, 32
	;;
	setf.sig f6 = r16
	setf.sig f7 = r32
	;;
	xmpy.l f6 = f6, f7
	setf.sig f8 = r15
	setf.sig f7 = r33
	;;
	xma.l f8 = f8, f7, f6
	;;
	getf.sig r33 = f8
	;;
	add r14 = r33, r14
	;;
	mix4.r r8 = r14, r8
	mov ar.pfs = r35
	mov b0 = r34
	br.ret.sptk.many b0
	;;
	.endp __muldi3_compiler_rt#
	.align 16
	.global __mulddi3#
	.type	__mulddi3#, @function
	.proc __mulddi3#
__mulddi3:
	.prologue
	.body
	addp4 r15 = 4294967295 - 0x100000000, r0
	;;
	and r14 = r15, r32
	;;
	setf.sig f8 = r14
	and r14 = r15, r33
	;;
	setf.sig f6 = r14
	;;
	xmpy.l f7 = f8, f6
	;;
	getf.sig r16 = f7
	;;
	shr.u r14 = r16, 32
	and r16 = r15, r16
	shr.u r32 = r32, 32
	;;
	setf.sig f7 = r32
	setf.sig f9 = r14
	;;
	xma.l f9 = f7, f6, f9
	;;
	getf.sig r14 = f9
	;;
	shl r17 = r14, 32
	;;
	add r8 = r17, r16
	shr.u r9 = r14, 32
	;;
	shr.u r14 = r8, 32
	and r15 = r8, r15
	shr.u r33 = r33, 32
	;;
	setf.sig f6 = r33
	setf.sig f9 = r14
	;;
	xma.l f9 = f8, f6, f9
	;;
	getf.sig r14 = f9
	;;
	shl r16 = r14, 32
	;;
	add r8 = r16, r15
	shr.u r14 = r14, 32
	;;
	add r14 = r14, r9
	;;
	setf.sig f8 = r14
	;;
	xma.l f8 = f7, f6, f8
	;;
	getf.sig r9 = f8
	br.ret.sptk.many b0
	;;
	.endp __mulddi3#
	.align 16
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
	setf.sig f7 = r35
	setf.sig f8 = r32
	;;
	xmpy.l f6 = f7, f8
	setf.sig f7 = r33
	setf.sig f8 = r34
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
	shr.u r14 = r32, 2
	movl r15 = 3689348814741910323
	;;
	and r14 = r15, r14
	and r32 = r15, r32
	;;
	add r32 = r14, r32
	;;
	shr.u r14 = r32, 4
	;;
	add r32 = r14, r32
	movl r14 = 1085102592571150095
	;;
	and r32 = r14, r32
	;;
	shr.u r14 = r32, 32
	;;
	add r14 = r14, r32
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
	br.ret.sptk.many b0
	;;
	.endp __popcountdi2#
	.align 16
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
	extr.u r14 = r32, 2, 30
	movl r15 = 858993459
	;;
	and r14 = r15, r14
	and r32 = r15, r32
	;;
	add r32 = r32, r14
	;;
	extr.u r14 = r32, 4, 27
	;;
	add r14 = r14, r32
	movl r15 = 252645135
	;;
	and r14 = r15, r14
	;;
	shr.u r32 = r14, 16
	;;
	add r32 = r32, r14
	;;
	extr.u r8 = r32, 8, 21
	;;
	add r8 = r8, r32
	;;
	and r8 = 63, r8
	br.ret.sptk.many b0
	;;
	.endp __popcountsi2#
	.align 16
	.global __popcountti2#
	.type	__popcountti2#, @function
	.proc __popcountti2#
__popcountti2:
	.prologue
	.body
	shrp r18 = r33, r32, 1
	shr.u r19 = r33, 1
	movl r14 = 6148914691236517205
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
	shrp r18 = r15, r14, 2
	shr.u r19 = r15, 2
	movl r16 = 3689348814741910323
	;;
	and r20 = r16, r18
	and r21 = r16, r19
	and r18 = r16, r14
	and r19 = r16, r15
	;;
	add r14 = r20, r18
	;;
	cmp.gtu p6, p7 = r20, r14
	;;
	(p7) add r15 = r21, r19
	;;
	(p6) add r15 = r21, r19, 1
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
	shr.u r15 = r14, 32
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
	br.ret.sptk.many b0
	;;
	.endp __popcountti2#
	.align 16
	.global __powidf2#
	.type	__powidf2#, @function
	.proc __powidf2#
__powidf2:
	.prologue
	.body
	extr.u r15 = r33, 31, 1
	mov f6 = f1
.L698:
	tbit.z p6, p7 = r33, 0
	;;
	(p7) fmpy.d f6 = f6, f8
	extr.u r14 = r33, 31, 1
	;;
	add r14 = r14, r33
	;;
	extr r14 = r14, 1, 31
	;;
	mov r33 = r14
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L697
	fmpy.d f8 = f8, f8
	br .L698
	;;
.L697:
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) mov f8 = f6
	(p6) br.cond.dptk .L699
	mov f10 = f1
	;;
	frcpa.s0 f9, p6 = f10, f6
	;;
	(p6) fnma.s1 f7 = f6, f9, f10
	;;
	(p6) fma.s1 f8 = f9, f7, f9
	(p6) fmpy.s1 f7 = f7, f7
	;;
	(p6) fma.s1 f8 = f8, f7, f8
	(p6) fmpy.s1 f7 = f7, f7
	;;
	(p6) fma.s1 f7 = f8, f7, f8
	;;
	(p6) fmpy.d.s1 f10 = f10, f7
	;;
	(p6) fnma.s1 f6 = f6, f10, f1
	;;
	(p6) fma.d.s0 f9 = f6, f7, f10
	;;
	mov f8 = f9
.L699:
	br.ret.sptk.many b0
	;;
	.endp __powidf2#
	.align 16
	.global __powisf2#
	.type	__powisf2#, @function
	.proc __powisf2#
__powisf2:
	.prologue
	.body
	extr.u r15 = r33, 31, 1
	mov f6 = f1
.L704:
	tbit.z p6, p7 = r33, 0
	;;
	(p7) fmpy.s f6 = f6, f8
	extr.u r14 = r33, 31, 1
	;;
	add r14 = r14, r33
	;;
	extr r14 = r14, 1, 31
	;;
	mov r33 = r14
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L703
	fmpy.s f8 = f8, f8
	br .L704
	;;
.L703:
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) mov f8 = f6
	(p6) br.cond.dptk .L705
	;;
	mov f8 = f1
	;;
	frcpa.s0 f7, p6 = f8, f6
	;;
	(p6) fnma.s1 f10 = f6, f7, f8
	;;
	(p6) fma.s1 f9 = f7, f10, f7
	;;
	(p6) fma.s1 f9 = f9, f10, f7
	;;
	(p6) fmpy.s.s1 f8 = f8, f9
	;;
	(p6) fnma.s1 f6 = f8, f6, f1
	;;
	(p6) fma.s.s0 f7 = f6, f9, f8
	;;
	mov f8 = f7
.L705:
	br.ret.sptk.many b0
	;;
	.endp __powisf2#
	.align 16
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
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L708
	cmp4.ltu p6, p7 = r14, r15
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L708
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L708
	cmp4.ltu p6, p7 = r33, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
.L708:
	br.ret.sptk.many b0
	;;
	.endp __ucmpdi2#
	.align 16
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
	.global __ucmpti2#
	.type	__ucmpti2#, @function
	.proc __ucmpti2#
__ucmpti2:
	.prologue
	.body
	cmp.gtu p6, p7 = r35, r33
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L715
	cmp.ltu p6, p7 = r35, r33
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L715
	cmp.gtu p6, p7 = r34, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L715
	cmp.ltu p6, p7 = r34, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
.L715:
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
