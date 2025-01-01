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
	cmp.ne p6, p7 = 0, r34
	;;
	(p7) mov r8 = r0
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
	cmp4.geu p6, p7 = 2, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
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
	(p7) br.cond.dpnt .L93
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
	(p6) br.cond.dpnt .L89
	addl r15 = -57344, r2
	addl r14 = 8184, r0
	;;
	cmp4.geu p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	(p6) br.cond.dpnt .L89
	addl r15 = -65532, r2
	addl r14 = 1048579, r0
	;;
	cmp4.ltu p6, p7 = r14, r15
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L89
	addl r14 = 65534, r0
	;;
	and r2 = r14, r2
	;;
	cmp4.ne p6, p7 = r14, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
	br .L89
	;;
.L93:
	adds r2 = 1, r32
	;;
	and r2 = 127, r2
	;;
	cmp4.ltu p6, p7 = 32, r2
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L89:
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
	(p6) br.cond.dptk .L95
	or r32 = 32, r32
	;;
	adds r32 = -97, r32
	;;
	cmp4.geu p6, p7 = 5, r32
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L95:
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
	(p6) br.cond.dpnt .L99
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) mov f8 = f9
	(p6) br.cond.dpnt .L99
	;;
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) fsub.d f8 = f8, f9
	;;
	(p7) mov f8 = f0
.L99:
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
	(p6) br.cond.dpnt .L107
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) mov f8 = f9
	(p6) br.cond.dpnt .L107
	;;
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) fsub.s f8 = f8, f9
	;;
	(p7) mov f8 = f0
.L107:
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
	(p6) br.cond.dpnt .L115
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) setf.d f8 = r14
	(p6) br.cond.dpnt .L115
	shr.u r16 = r14, 63
	shr.u r17 = r15, 63
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L116
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p7) setf.d f8 = r15
	(p7) br.cond.dptk .L115
	;;
	setf.d f8 = r14
	br .L115
	;;
.L116:
	setf.d f6 = r14
	;;
	fcmp.lt p6, p7 = f6, f9
	;;
	(p6) setf.d f8 = r15
	;;
	(p7) setf.d f8 = r14
.L115:
	br.ret.sptk.many b0
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
	(p6) br.cond.dpnt .L123
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) setf.s f8 = r14
	(p6) br.cond.dpnt .L123
	mov r16 = r14
	movl r18 = -2147483648
	;;
	and r16 = r18, r16
	mov r17 = r15
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L124
	mov r16 = r14
	;;
	and r16 = r18, r16
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p7) setf.s f8 = r15
	(p7) br.cond.dptk .L123
	;;
	setf.s f8 = r14
	br .L123
	;;
.L124:
	setf.s f6 = r14
	;;
	fcmp.lt p6, p7 = f6, f9
	;;
	(p6) setf.s f8 = r15
	;;
	(p7) setf.s f8 = r14
.L123:
	br.ret.sptk.many b0
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
	(p6) br.cond.dpnt .L135
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L136
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
	(p6) br.cond.dptk .L132
	adds r15 = 8, r12
	;;
	ld8 r14 = [r15]
	;;
	tbit.z p6, p7 = r14, 15
	;;
	(p7) mov f8 = f9
	(p7) br.cond.dptk .L131
	;;
	ldfe f8 = [r12]
	br .L131
	;;
.L132:
	ldfe f6 = [r12]
	adds r14 = 16, r12
	;;
	ldfe f7 = [r14]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p6) mov f8 = f7
	;;
	(p7) ldfe f8 = [r12]
.L131:
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L135:
	.body
	.copy_state 1
	adds r14 = 16, r12
	;;
	ldfe f8 = [r14]
	br .L131
	;;
.L136:
	ldfe f8 = [r12]
	br .L131
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
	(p6) br.cond.dpnt .L139
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) setf.d f8 = r15
	(p6) br.cond.dpnt .L139
	shr.u r16 = r15, 63
	shr.u r17 = r14, 63
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L140
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p6) setf.d f8 = r14
.L139:
	br.ret.sptk.many b0
	;;
.L140:
	setf.d f6 = r15
	;;
	fcmp.lt p6, p7 = f6, f9
	;;
	(p6) setf.d f8 = r15
	;;
	(p7) setf.d f8 = r14
	br .L139
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
	(p6) br.cond.dpnt .L147
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) setf.s f8 = r15
	(p6) br.cond.dpnt .L147
	mov r16 = r15
	movl r18 = -2147483648
	;;
	and r16 = r18, r16
	mov r17 = r14
	;;
	and r17 = r18, r17
	;;
	cmp4.eq p6, p7 = r17, r16
	(p6) br.cond.dptk .L148
	mov r16 = r15
	;;
	and r16 = r18, r16
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p6) setf.s f8 = r14
.L147:
	br.ret.sptk.many b0
	;;
.L148:
	setf.s f6 = r15
	;;
	fcmp.lt p6, p7 = f6, f9
	;;
	(p6) setf.s f8 = r15
	;;
	(p7) setf.s f8 = r14
	br .L147
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
	(p6) br.cond.dpnt .L159
	fcmp.unord p6, p7 = f9, f9
	;;
	(p6) br.cond.dpnt .L160
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
	(p6) br.cond.dptk .L156
	adds r15 = 8, r12
	;;
	ld8 r14 = [r15]
	;;
	tbit.z p6, p7 = r14, 15
	(p7) br.cond.dptk .L155
	adds r17 = 16, r12
	;;
	ldfe f8 = [r17]
	br .L155
	;;
.L156:
	ldfe f6 = [r12]
	adds r17 = 16, r12
	;;
	ldfe f7 = [r17]
	;;
	fcmp.lt p6, p7 = f6, f7
	;;
	(p6) mov f8 = f6
	(p7) adds r14 = 16, r12
	;;
	(p7) ldfe f8 = [r14]
.L155:
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L159:
	.body
	.copy_state 1
	adds r15 = 16, r12
	;;
	ldfe f8 = [r15]
	br .L155
	;;
.L160:
	ldfe f8 = [r12]
	br .L155
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
	br .L163
	;;
.L164:
	and r14 = 63, r32
	;;
	add r14 = r16, r14
	;;
	ld1 r14 = [r14]
	;;
	st1 [r15] = r14, 1
	extr.u r32 = r32, 6, 26
.L163:
	;;
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L164
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
	(p7) br.cond.dpnt .L167
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
.L167:
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
	br .L174
	;;
.L175:
	adds r38 = 1, r38
.L174:
	br.cloop.sptk.few .L177
	br .L178
	;;
.L177:
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
	(p6) br.cond.dptk .L175
	setf.sig f6 = r38
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br .L176
	;;
.L178:
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
.L176:
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
	br .L180
	;;
.L181:
	adds r38 = 1, r38
.L180:
	br.cloop.sptk.few .L183
	br .L184
	;;
.L183:
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
	(p6) br.cond.dptk .L181
	setf.sig f6 = r38
	setf.sig f7 = r35
	setf.sig f8 = r33
	;;
	xma.l f6 = f6, f7, f8
	;;
	getf.sig r8 = f6
	br .L182
	;;
.L184:
	mov r8 = r0
.L182:
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
.L187:
	mov r33 = r32
	ld1 r37 = [r32], 1
	;;
	sxt1 r37 = r37
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L187
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dpnt .L193
	;;
	cmp4.ne p6, p7 = 45, r14
	;;
	(p7) addl r17 = 1, r0
	(p7) br.cond.dptk .L188
	;;
	mov r17 = r0
	br .L189
	;;
.L193:
	mov r17 = r0
.L188:
	adds r33 = 1, r33
.L189:
	mov r8 = r0
	br .L190
	;;
.L191:
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
.L190:
	ld1 r14 = [r33], 1
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L191
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
.L198:
	mov r33 = r32
	ld1 r37 = [r32], 1
	;;
	sxt1 r37 = r37
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L198
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dpnt .L204
	;;
	cmp4.ne p6, p7 = 45, r14
	;;
	(p7) addl r17 = 1, r0
	(p7) br.cond.dptk .L199
	;;
	mov r17 = r0
	br .L200
	;;
.L204:
	mov r17 = r0
.L199:
	adds r33 = 1, r33
.L200:
	mov r8 = r0
	br .L201
	;;
.L202:
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
.L209:
	mov r33 = r32
	ld1 r37 = [r32], 1
	;;
	sxt1 r37 = r37
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dptk .L209
	ld1 r14 = [r33]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dpnt .L215
	;;
	cmp4.ne p6, p7 = 45, r14
	;;
	(p7) addl r17 = 1, r0
	(p7) br.cond.dptk .L210
	;;
	mov r17 = r0
	br .L211
	;;
.L215:
	mov r17 = r0
.L210:
	adds r33 = 1, r33
.L211:
	mov r8 = r0
	br .L212
	;;
.L213:
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
.L220:
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L226
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
	(p7) br.cond.dpnt .L220
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dpnt .L225
	getf.sig r15 = f2
	getf.sig r14 = f3
	;;
	add r15 = r15, r14
	;;
	setf.sig f4 = r15
	shr.u r14 = r34, 1
	;;
	sub r34 = r34, r14, 1
	br .L220
	;;
.L226:
	mov r8 = r0
.L223:
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
.L225:
	.body
	.copy_state 1
	getf.sig r8 = f2
	br .L223
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
	br .L228
	;;
.L234:
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
.L228:
	;;
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L233
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
	(p7) br.cond.dptk .L234
	getf.sig r8 = f2
	br .L229
	;;
.L233:
	mov r8 = r0
.L229:
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
	.global wcschr#
	.type	wcschr#, @function
	.proc wcschr#
wcschr:
	.prologue
	.body
.L244:
	mov r8 = r32
	ld4 r14 = [r32], 4
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L243
	adds r14 = -4, r32
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L244
.L243:
	ld4 r14 = [r8]
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	(p7) mov r8 = r0
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
.L250:
	mov r16 = r33
	mov r17 = r32
	ld4 r15 = [r32], 4
	ld4 r14 = [r33], 4
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dpnt .L249
	adds r14 = -4, r32
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L249
	adds r14 = -4, r33
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L250
.L249:
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.gt p6, p7 = r14, r15
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L251
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L251:
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
.L255:
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
	(p6) br.cond.dptk .L255
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
.L258:
	;;
	mov r8 = r14
	ld4 r15 = [r14], 4
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L258
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
.L261:
	mov r16 = r33
	mov r17 = r32
	;;
	br.cloop.sptk.few .L267
	br .L262
	;;
.L267:
	ld4 r15 = [r32]
	ld4 r14 = [r33]
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dpnt .L262
	ld4 r14 = [r32], 4
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L262
	ld4 r14 = [r33], 4
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L262
	adds r34 = -1, r34
	br .L261
	;;
.L262:
	cmp.eq p6, p7 = 0, r34
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dptk .L264
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.gt p6, p7 = r14, r15
	;;
	(p6) addl r8 = -1, r0
	(p6) br.cond.dptk .L264
	ld4 r15 = [r17]
	ld4 r14 = [r16]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L264:
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
	br .L269
	;;
.L271:
	adds r34 = -1, r34
.L269:
	mov r8 = r32
	br.cloop.sptk.few .L274
	br .L270
	;;
.L274:
	ld4 r14 = [r32], 4
	;;
	cmp4.ne p6, p7 = r14, r33
	(p6) br.cond.dptk .L271
.L270:
	;;
	cmp.ne p6, p7 = 0, r34
	;;
	(p7) mov r8 = r0
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
	br .L276
	;;
.L278:
	adds r34 = -1, r34
.L276:
	mov r16 = r33
	mov r17 = r32
	br.cloop.sptk.few .L282
	br .L277
	;;
.L282:
	ld4 r15 = [r32], 4
	ld4 r14 = [r33], 4
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L278
.L277:
	;;
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
	br .L284
	;;
.L285:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15, 4
.L284:
	adds r34 = -1, r34
	br.cloop.sptk.few .L285
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
	(p6) br.cond.dpnt .L287
	sub r14 = r32, r33
	shladd r15 = r34, 2, r0
	;;
	cmp.gtu p6, p7 = r15, r14
	;;
	(p7) mov r14 = r32
	(p7) mov ar.lc = r34
	(p7) br.cond.dptk .L289
	adds r34 = -1, r34
	;;
	shladd r34 = r34, 2, r0
	;;
	add r14 = r32, r34
	add r33 = r33, r34
	adds r34 = 4, r34
	;;
	shr.u r34 = r34, 2
	;;
	mov ar.lc = r34
	br .L290
	;;
.L291:
	ld4 r15 = [r33], -4
	;;
	st4 [r14] = r15, -4
.L290:
	br.cloop.sptk.few .L291
.L287:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L292:
	adds r33 = 4, r33
	;;
	adds r15 = -4, r33
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15, 4
.L289:
	adds r34 = -1, r34
	br.cloop.sptk.few .L292
	br .L287
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
	br .L294
	;;
.L295:
	adds r14 = 4, r14
	;;
	adds r15 = -4, r14
	;;
	st4 [r15] = r33
.L294:
	adds r34 = -1, r34
	br.cloop.sptk.few .L295
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
	(p6) br.cond.dptk .L297
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
	br .L298
	;;
.L299:
	ld1 r15 = [r32], -1
	;;
	st1 [r14] = r15, -1
.L298:
	br.cloop.sptk.few .L299
.L296:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L297:
	cmp.eq p6, p7 = r33, r32
	;;
	(p7) mov ar.lc = r34
	(p7) br.cond.dptk .L301
	br .L296
	;;
.L302:
	adds r32 = 1, r32
	;;
	adds r14 = -1, r32
	;;
	ld1 r14 = [r14]
	;;
	st1 [r33] = r14, 1
.L301:
	br.cloop.sptk.few .L302
	br .L296
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
.L317:
	;;
	br.cloop.sptk.few .L320
	br .L321
	;;
.L320:
	addp4 r14 = r32, r0
	addp4 r15 = r8, r0
	;;
	shr.u r14 = r14, r15
	;;
	tbit.z p6, p7 = r14, 0
	(p7) br.cond.dpnt .L322
	adds r8 = 1, r8
	br .L317
	;;
.L322:
	adds r8 = 1, r8
.L319:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L321:
	mov r8 = r0
	br .L319
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
	(p7) br.cond.dptk .L325
	;;
	mov r8 = r0
	br .L324
	;;
.L326:
	extr r32 = r32, 1, 31
	adds r8 = 1, r8
.L325:
	;;
	tbit.z p6, p7 = r32, 0
	(p6) br.cond.dptk .L326
.L324:
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
	(p6) br.cond.dptk .L329
	movl r14 = 0x7f7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L329:
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
	(p6) br.cond.dptk .L332
	movl r14 = 0x7fefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.gt p6, p7 = f8, f6
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L332:
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
	(p6) br.cond.dptk .L335
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
.L335:
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
	(p6) br.cond.dpnt .L339
	fadd.s f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L339
	cmp4.le p6, p7 = r0, r33
	;;
	(p7) movl r14 = 0x3f000000
	;;
	(p6) movl r14 = 0x40000000
	;;
	setf.s f6 = r14
.L342:
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
	(p6) br.cond.dpnt .L339
	fmpy.s f6 = f6, f6
	br .L342
	;;
.L339:
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
	(p6) br.cond.dpnt .L345
	fadd.d f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L345
	cmp4.le p6, p7 = r0, r33
	;;
	(p7) movl r14 = 0x3fe0000000000000
	;;
	(p6) movl r14 = 0x4000000000000000
	;;
	setf.d f6 = r14
.L348:
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
	(p6) br.cond.dpnt .L345
	fmpy.d f6 = f6, f6
	br .L348
	;;
.L345:
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
	.global ldexpl#
	.type	ldexpl#, @function
	.proc ldexpl#
ldexpl:
	.prologue
	.body
	fcmp.unord p6, p7 = f8, f8
	;;
	(p6) br.cond.dpnt .L351
	fadd f6 = f8, f8
	;;
	fcmp.eq p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L351
	cmp4.le p6, p7 = r0, r34
	;;
	(p7) movl r14 = @gprel(.LC5)
	;;
	(p6) movl r14 = @gprel(.LC4)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
.L354:
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
	(p6) br.cond.dpnt .L351
	fmpy f6 = f6, f6
	br .L354
	;;
.L351:
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
	br .L357
	;;
.L358:
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
.L357:
	br.cloop.sptk.few .L358
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
	br .L360
	;;
.L362:
	adds r34 = -1, r34
.L360:
	mov r15 = r8
	br.cloop.sptk.few .L364
	br .L361
	;;
.L364:
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
	(p6) br.cond.dptk .L362
.L361:
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
.L366:
	;;
	br.cloop.sptk.few .L369
	br .L367
	;;
.L369:
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L368
.L367:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L368:
	adds r8 = 1, r8
	br .L366
	;;
	.endp strnlen#
	.align 16
	.global strpbrk#
	.type	strpbrk#, @function
	.proc strpbrk#
strpbrk:
	.prologue
	.body
.L371:
	mov r8 = r32
	ld1 r14 = [r32], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L376
	mov r16 = r33
	adds r17 = -1, r32
.L374:
	;;
	ld1 r14 = [r16], 1
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L371
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
	(p7) br.cond.dptk .L374
.L372:
	br.ret.sptk.many b0
	;;
.L376:
	mov r8 = r0
	br .L372
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
.L379:
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
	(p6) br.cond.dptk .L379
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
	(p6) br.cond.dpnt .L383
	ld1 r35 = [r33]
	;;
	sxt1 r35 = r35
.L384:
	;;
	mov r40 = r35
	mov r39 = r32
	br.call.sptk.many b0 = strchr#
	mov r1 = r38
	mov r32 = r8
	cmp.ne p6, p7 = 0, r8
	(p7) br.cond.dpnt .L388
	mov r41 = r34
	;;
	mov r40 = r33
	mov r39 = r32
	br.call.sptk.many b0 = strncmp#
	mov r1 = r38
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L387
	adds r32 = 1, r32
	br .L384
	;;
.L388:
	mov r8 = r0
.L383:
	mov ar.pfs = r37
	mov b0 = r36
	br.ret.sptk.many b0
	;;
.L387:
	mov r8 = r32
	br .L383
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
	(p6) br.cond.dpnt .L402
.L390:
	fcmp.gt p6, p7 = f8, f0
	;;
	(p7) br.cond.dpnt .L393
	fcmp.lt p6, p7 = f9, f0
	;;
	(p6) br.cond.dpnt .L392
.L393:
	br.ret.sptk.many b0
	;;
.L402:
	fcmp.gt p6, p7 = f9, f0
	;;
	(p7) br.cond.dptk .L390
.L392:
	fneg f8 = f8
	br .L393
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
	(p6) br.cond.dpnt .L404
	cmp.gtu p6, p7 = r35, r33
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L404
	adds r38 = 1, r34
	adds r35 = -1, r35
.L405:
	mov r37 = r32
	cmp.geu p6, p7 = r36, r32
	(p7) br.cond.dpnt .L411
	ld1 r15 = [r32], 1
	;;
	sxt1 r15 = r15
	ld1 r14 = [r34]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L405
	mov r44 = r35
	mov r43 = r38
	mov r42 = r32
	br.call.sptk.many b0 = memcmp#
	mov r1 = r41
	;;
	cmp4.eq p6, p7 = 0, r8
	(p7) br.cond.dptk .L405
	mov r8 = r37
	br .L404
	;;
.L411:
	mov r8 = r0
.L404:
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
	(p6) br.cond.dptk .L416
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
	(p7) br.cond.dptk .L419
	;;
	mov r14 = r0
	movl r16 = 0x3fe0000000000000
	;;
	setf.d f6 = r16
	br .L420
	;;
.L418:
	adds r14 = 1, r14
	fmpy.d f8 = f8, f6
.L416:
	;;
	fcmp.ge p6, p7 = f8, f1
	;;
	(p6) br.cond.dptk .L418
.L419:
	st4 [r33] = r14
	cmp4.eq p6, p7 = 0, r15
	;;
	(p7) fneg f8 = f8
	br.ret.sptk.many b0
	;;
.L421:
	adds r14 = -1, r14
	fadd.d f8 = f8, f8
.L420:
	;;
	fcmp.lt p6, p7 = f8, f6
	;;
	(p6) br.cond.dptk .L421
	br .L419
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
	br .L430
	;;
.L431:
	extr r14 = r32, 0, 1
	;;
	and r14 = r14, r33
	shr.u r32 = r32, 1
	;;
	add r8 = r8, r14
	shladd r33 = r33, 1, r0
.L430:
	cmp.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L431
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
	br .L433
	;;
.L436:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L433:
	;;
	cmp4.gtu p6, p7 = r32, r33
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r14
	(p7) br.cond.dpnt .L442
	;;
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L436
	mov r8 = r0
	br .L435
	;;
.L442:
	mov r8 = r0
.L435:
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L443
	;;
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r14, r8
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	br .L435
	;;
.L443:
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
	extr r14 = r32, 7, 1
	sxt1 r32 = r32
	;;
	xor r14 = r32, r14
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
	shr r15 = r32, 63
	;;
	xor r14 = r32, r15
	cmp.eq p6, p7 = r32, r15
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
	.global __mulsi3#
	.type	__mulsi3#, @function
	.proc __mulsi3#
__mulsi3:
	.prologue
	.body
	mov r8 = r0
	br .L451
	;;
.L452:
	extr r14 = r32, 0, 1
	;;
	and r14 = r33, r14
	extr.u r32 = r32, 1, 31
	;;
	add r8 = r8, r14
	shladd r33 = r33, 1, r0
.L451:
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L452
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
	cmp.leu p6, p7 = r33, r32
	(p6) br.cond.dptk .L454
.L456:
	mov r16 = r32
	addp4 r17 = r17, r0
	mov r15 = r33
	;;
	mov ar.lc = r17
	br .L455
	;;
.L454:
	addp4 r16 = r34, r0
	;;
	add r16 = r33, r16
	;;
	cmp.gtu p6, p7 = r32, r16
	;;
	(p7) addp4 r14 = r34, r0
	;;
	(p7) mov ar.lc = r14
	(p7) br.cond.dptk .L457
	br .L456
	;;
.L458:
	ld8 r17 = [r15], 8
	;;
	st8 [r16] = r17, 8
.L455:
	br.cloop.sptk.few .L458
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
	(p6) br.cond.spnt .L463
	;;
	cmp4.eq p6, p7 = 0, r34
	(p7) br.cond.sptk .L459
.L463:
	mov ar.lc = 0
	br .L459
	;;
.L460:
	ld1 r15 = [r33], 1
	;;
	st1 [r32] = r15, 1
	adds r14 = 1, r14
.L459:
	br.cloop.sptk.few .L460
.L453:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L462:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L457:
	adds r34 = -1, r34
	br.cloop.sptk.few .L462
	br .L453
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
	cmp.leu p6, p7 = r33, r32
	(p6) br.cond.dptk .L465
.L467:
	mov r15 = r32
	;;
	addp4 r16 = r16, r0
	mov r14 = r33
	;;
	mov ar.lc = r16
	br .L466
	;;
.L465:
	addp4 r15 = r34, r0
	;;
	add r15 = r33, r15
	;;
	cmp.gtu p6, p7 = r32, r15
	;;
	(p7) addp4 r14 = r34, r0
	;;
	(p7) mov ar.lc = r14
	(p7) br.cond.dptk .L468
	br .L467
	;;
.L469:
	ld2 r16 = [r14], 2
	;;
	st2 [r15] = r16, 2
.L466:
	br.cloop.sptk.few .L469
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L464
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
.L464:
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L471:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L468:
	adds r34 = -1, r34
	br.cloop.sptk.few .L471
	br .L464
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
	cmp.leu p6, p7 = r33, r32
	(p6) br.cond.dptk .L473
.L475:
	mov r16 = r32
	addp4 r17 = r17, r0
	mov r15 = r33
	;;
	mov ar.lc = r17
	br .L474
	;;
.L473:
	addp4 r16 = r34, r0
	;;
	add r16 = r33, r16
	;;
	cmp.gtu p6, p7 = r32, r16
	;;
	(p7) addp4 r14 = r34, r0
	;;
	(p7) mov ar.lc = r14
	(p7) br.cond.dptk .L476
	br .L475
	;;
.L477:
	ld4 r17 = [r15], 4
	;;
	st4 [r16] = r17, 4
.L474:
	br.cloop.sptk.few .L477
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
	(p6) br.cond.spnt .L482
	;;
	cmp4.eq p6, p7 = 0, r34
	(p7) br.cond.sptk .L478
.L482:
	mov ar.lc = 0
	br .L478
	;;
.L479:
	ld1 r15 = [r33], 1
	;;
	st1 [r32] = r15, 1
	adds r14 = 1, r14
.L478:
	br.cloop.sptk.few .L479
.L472:
	;;
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L481:
	addp4 r14 = r34, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
.L476:
	adds r34 = -1, r34
	br.cloop.sptk.few .L481
	br .L472
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
.L490:
	;;
	br.cloop.sptk.few .L492
	br .L491
	;;
.L492:
	sub r14 = 15, r8
	sxt4 r15 = r32
	;;
	addp4 r14 = r14, r0
	;;
	shr r15 = r15, r14
	;;
	tbit.nz p6, p7 = r15, 0
	(p6) br.cond.dpnt .L491
	adds r8 = 1, r8
	br .L490
	;;
.L491:
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
.L494:
	;;
	br.cloop.sptk.few .L496
	br .L495
	;;
.L496:
	sxt4 r14 = r32
	addp4 r15 = r8, r0
	;;
	shr r14 = r14, r15
	;;
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dpnt .L495
	adds r8 = 1, r8
	br .L494
	;;
.L495:
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
	br .L504
	;;
.L505:
	sxt4 r14 = r32
	addp4 r16 = r15, r0
	;;
	shr r14 = r14, r16
	;;
	and r14 = 1, r14
	adds r15 = 1, r15
	;;
	add r8 = r8, r14
.L504:
	br.cloop.sptk.few .L505
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
	br .L507
	;;
.L508:
	sxt4 r14 = r32
	addp4 r16 = r15, r0
	;;
	shr r14 = r14, r16
	;;
	and r14 = 1, r14
	adds r15 = 1, r15
	;;
	add r8 = r8, r14
.L507:
	br.cloop.sptk.few .L508
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
	br .L510
	;;
.L511:
	extr r14 = r32, 0, 1
	;;
	and r14 = r33, r14
	extr.u r32 = r32, 1, 31
	;;
	add r8 = r8, r14
	shladd r33 = r33, 1, r0
.L510:
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L511
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
	(p7) br.cond.dptk .L514
	;;
	mov r8 = r0
	br .L513
	;;
.L515:
	extr r14 = r33, 0, 1
	;;
	and r14 = r32, r14
	extr.u r33 = r33, 1, 31
	;;
	add r8 = r8, r14
	shladd r32 = r32, 1, r0
.L514:
	cmp4.ne p6, p7 = 0, r33
	(p6) br.cond.dptk .L515
.L513:
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
	br .L518
	;;
.L521:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L518:
	;;
	cmp4.gtu p6, p7 = r32, r33
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r14
	(p7) br.cond.dpnt .L527
	;;
	cmp4.le p6, p7 = r0, r33
	(p6) br.cond.dptk .L521
	mov r8 = r0
	br .L520
	;;
.L527:
	mov r8 = r0
.L520:
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L528
	;;
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r14, r8
	extr.u r14 = r14, 1, 31
	extr.u r33 = r33, 1, 31
	br .L520
	;;
.L528:
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
	(p6) br.cond.dpnt .L530
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L530:
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
	(p6) br.cond.dpnt .L533
	fcmp.gt p6, p7 = f8, f9
	;;
	(p6) addl r8 = 1, r0
	;;
	(p7) mov r8 = r0
.L533:
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
	br .L539
	;;
.L540:
	extr r15 = r33, 0, 1
	;;
	and r15 = r32, r15
	extr r33 = r33, 1, 31
	adds r14 = 1, r14
	;;
	sxt1 r14 = r14
	add r8 = r8, r15
	shladd r32 = r32, 1, r0
.L539:
	;;
	zxt1 r15 = r14
	;;
	cmp4.geu p6, p7 = 31, r15
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r33
	(p6) br.cond.dptk .L540
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
	;;
	(p7) sub r39 = r0, r33
	(p7) extr.u r34 = r34, 0, 1
	;;
	(p7) xor r34 = 1, r34
	;;
	(p7) zxt1 r34 = r34
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
	.global __udivmodhi4#
	.type	__udivmodhi4#, @function
	.proc __udivmodhi4#
__udivmodhi4:
	.prologue
	.body
	zxt2 r32 = r32
	zxt2 r33 = r33
	addl r14 = 1, r0
	br .L554
	;;
.L557:
	shladd r33 = r33, 1, r0
	;;
	zxt2 r33 = r33
	shladd r14 = r14, 1, r0
	;;
	zxt2 r14 = r14
.L554:
	cmp4.gtu p6, p7 = r32, r33
	;;
	cmp4.ne.and.orcm p6, p7 = 0, r14
	(p7) br.cond.dpnt .L563
	;;
	tbit.z p6, p7 = r33, 15
	(p6) br.cond.dptk .L557
	mov r8 = r0
	br .L556
	;;
.L563:
	mov r8 = r0
.L556:
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L564
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
	br .L556
	;;
.L564:
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
	br .L566
	;;
.L569:
	shladd r33 = r33, 1, r0
	shladd r14 = r14, 1, r0
.L566:
	;;
	cmp.gtu p6, p7 = r32, r33
	;;
	cmp.ne.and.orcm p6, p7 = 0, r14
	(p7) br.cond.dpnt .L575
	;;
	tbit.z p6, p7 = r33, 31
	(p6) br.cond.dptk .L569
	mov r8 = r0
	br .L568
	;;
.L575:
	mov r8 = r0
.L568:
	cmp.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L576
	;;
	cmp.gtu p6, p7 = r33, r32
	;;
	(p7) sub r32 = r32, r33
	(p7) or r8 = r14, r8
	shr.u r14 = r14, 1
	shr.u r33 = r33, 1
	br .L568
	;;
.L576:
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
	(p6) br.cond.dptk .L578
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
.L580:
	br.ret.sptk.many b0
	;;
.L578:
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
	br .L580
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
	(p6) br.cond.dptk .L583
	mov r8 = r0
	adds r34 = -64, r34
	;;
	addp4 r34 = r34, r0
	;;
	shl r9 = r32, r34
.L585:
	br.ret.sptk.many b0
	;;
.L583:
	cmp4.eq p6, p7 = 0, r34
	;;
	(p7) addp4 r9 = r34, r0
	;;
	(p7) shl r8 = r32, r9
	(p7) shl r9 = r33, r9
	(p7) sub r34 = 64, r34
	;;
	(p7) addp4 r34 = r34, r0
	;;
	(p7) shr.u r32 = r32, r34
	;;
	(p7) or r9 = r9, r32
	(p6) mov r8 = r32
	;;
	(p6) mov r9 = r33
	br .L585
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
	(p6) br.cond.dptk .L588
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
.L590:
	br.ret.sptk.many b0
	;;
.L588:
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
	br .L590
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
	(p6) br.cond.dptk .L593
	shr r9 = r33, 63
	adds r34 = -64, r34
	;;
	sxt4 r8 = r34
	;;
	shr r8 = r33, r8
.L595:
	br.ret.sptk.many b0
	;;
.L593:
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
	br .L595
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
	cmp4.geu p6, p7 = r14, r32
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r15 = r15, 4, r0
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
	cmp4.eq p6, p7 = 0, r16
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	shladd r16 = r16, 3, r0
	;;
	sub r17 = 8, r16
	addp4 r14 = r14, r0
	;;
	addp4 r17 = r17, r0
	;;
	shr.u r14 = r14, r17
	add r15 = r15, r16
	addl r16 = 240, r0
	;;
	and r16 = r16, r14
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	shladd r16 = r16, 2, r0
	;;
	sub r17 = 4, r16
	addp4 r14 = r14, r0
	;;
	addp4 r17 = r17, r0
	;;
	shr.u r14 = r14, r17
	add r15 = r15, r16
	;;
	and r16 = 12, r14
	;;
	cmp4.eq p6, p7 = 0, r16
	;;
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	shladd r16 = r16, 1, r0
	;;
	sub r17 = 2, r16
	addp4 r14 = r14, r0
	;;
	addp4 r17 = r17, r0
	;;
	shr.u r14 = r14, r17
	add r15 = r15, r16
	;;
	extr.u r8 = r14, 1, 1
	;;
	xor r8 = 1, r8
	;;
	zxt1 r8 = r8
	sub r14 = 2, r14
	;;
	sub r8 = r0, r8
	;;
	and r8 = r14, r8
	;;
	add r8 = r15, r8
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
	and r33 = r33, r14
	and r32 = r32, r16
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
	(p6) br.cond.dpnt .L602
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L602
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L602
	cmp4.ltu p6, p7 = r33, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
.L602:
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
	(p6) br.cond.dpnt .L609
	cmp.lt p6, p7 = r35, r33
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L609
	cmp.gtu p6, p7 = r34, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L609
	cmp.ltu p6, p7 = r34, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
.L609:
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
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r8 = r15, 4, r0
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
	shladd r16 = r15, 3, r0
	addp4 r14 = r14, r0
	shladd r15 = r15, 3, r0
	;;
	shr.u r14 = r14, r15
	add r8 = r8, r16
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
	add r8 = r8, r16
	;;
	and r15 = 3, r14
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) addl r15 = 1, r0
	;;
	(p7) mov r15 = r0
	;;
	shladd r16 = r15, 1, r0
	addp4 r14 = r14, r0
	shladd r15 = r15, 1, r0
	;;
	shr.u r14 = r14, r15
	add r8 = r8, r16
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
	and r33 = r33, r14
	andcm r14 = r32, r14
	;;
	or r14 = r33, r14
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
	(p6) br.cond.dptk .L617
	;;
	cmp.eq p6, p7 = 0, r33
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dptk .L618
	adds r14 = -1, r33
	;;
	andcm r33 = r14, r33
	;;
	popcnt r33 = r33
	;;
	adds r8 = 65, r33
	br .L618
	;;
.L617:
	adds r8 = -1, r32
	;;
	andcm r8 = r8, r32
	;;
	popcnt r8 = r8
	;;
	adds r8 = 1, r8
.L618:
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
	(p6) br.cond.dptk .L621
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
.L623:
	br.ret.sptk.many b0
	;;
.L621:
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
	br .L623
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
	(p6) br.cond.dptk .L626
	mov r9 = r0
	adds r34 = -64, r34
	;;
	addp4 r8 = r34, r0
	;;
	shr.u r8 = r33, r8
.L628:
	br.ret.sptk.many b0
	;;
.L626:
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
	br .L628
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
	addp4 r16 = 4294967295 - 0x100000000, r0
	;;
	and r14 = r16, r32
	;;
	setf.sig f8 = r14
	and r14 = r16, r33
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f8, f7
	;;
	getf.sig r15 = f6
	;;
	shr.u r14 = r15, 32
	and r15 = r16, r15
	shr.u r32 = r32, 32
	;;
	setf.sig f6 = r32
	setf.sig f9 = r14
	;;
	xma.l f9 = f6, f7, f9
	;;
	getf.sig r14 = f9
	;;
	shl r17 = r14, 32
	;;
	add r15 = r17, r15
	shr.u r18 = r14, 32
	shr.u r14 = r17, 32
	;;
	and r15 = r16, r15
	shr.u r33 = r33, 32
	;;
	setf.sig f7 = r33
	setf.sig f9 = r14
	;;
	xma.l f9 = f8, f7, f9
	;;
	getf.sig r14 = f9
	;;
	shl r8 = r14, 32
	shr.u r14 = r14, 32
	;;
	add r14 = r14, r18
	;;
	setf.sig f8 = r14
	;;
	xma.l f8 = f6, f7, f8
	;;
	getf.sig r9 = f8
	add r8 = r8, r15
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
	xor r33 = r32, r33
	;;
	extr r14 = r33, 32, 32
	;;
	xor r33 = r14, r33
	;;
	extr.u r14 = r33, 16, 16
	;;
	xor r14 = r33, r14
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
	shrp r20 = r33, r32, 1
	shr.u r21 = r33, 1
	movl r14 = 6148914691236517205
	;;
	and r16 = r14, r20
	and r17 = r14, r21
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
.L645:
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
	(p6) br.cond.dpnt .L644
	fmpy.d f8 = f8, f8
	br .L645
	;;
.L644:
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) mov f8 = f6
	(p6) br.cond.dptk .L646
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
.L646:
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
.L651:
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
	(p6) br.cond.dpnt .L650
	fmpy.s f8 = f8, f8
	br .L651
	;;
.L650:
	cmp4.eq p6, p7 = 0, r15
	;;
	(p6) mov f8 = f6
	(p6) br.cond.dptk .L652
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
.L652:
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
	(p6) br.cond.dpnt .L655
	cmp4.ltu p6, p7 = r14, r15
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L655
	cmp4.gtu p6, p7 = r33, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L655
	cmp4.ltu p6, p7 = r33, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
.L655:
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
	(p6) br.cond.dpnt .L662
	cmp.ltu p6, p7 = r35, r33
	;;
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L662
	cmp.gtu p6, p7 = r34, r32
	;;
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L662
	cmp.ltu p6, p7 = r34, r32
	;;
	(p6) addl r8 = 2, r0
	;;
	(p7) addl r8 = 1, r0
.L662:
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
