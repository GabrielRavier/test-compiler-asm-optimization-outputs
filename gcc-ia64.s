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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	adds r14 = -8, r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16], 8
	;;
	ld8 r15 = [r16], -8
	mov r8 = r14
	;;
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	adds r14 = -8, r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16], 8
	;;
	ld8 r15 = [r16], -8
	mov r8 = r14
	;;
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -24, r2
	;;
	ld8 r15 = [r14]
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	cmp.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L6
	adds r14 = -24, r2
	adds r16 = -24, r2
	mov r15 = r2
	;;
	ld8 r16 = [r16]
	ld8 r15 = [r15]
	;;
	add r15 = r16, r15
	;;
	st8 [r14] = r15
	mov r14 = r2
	adds r17 = -32, r2
	;;
	ld8 r15 = [r17]
	ld8 r14 = [r14]
	;;
	add r14 = r15, r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	br .L7
	;;
.L8:
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r14 = -1, r14
	adds r17 = -32, r2
	;;
	st8 [r17] = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	st1 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L7:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L8
	br .L9
	;;
.L6:
	adds r14 = -24, r2
	;;
	ld8 r15 = [r14]
	adds r17 = -32, r2
	;;
	ld8 r14 = [r17]
	;;
	cmp.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L9
	br .L10
	;;
.L11:
	adds r14 = -24, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -24, r2
	;;
	adds r16 = 1, r15
	;;
	st8 [r14] = r16
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r16 = 1, r14
	adds r17 = -32, r2
	;;
	st8 [r17] = r16
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L10:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L11
.L9:
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st4 [r14] = r34
	adds r14 = 8, r2
	;;
	st8 [r14] = r35
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	zxt1 r14 = r14
	;;
	mov r15 = r14
	mov r14 = r2
	;;
	st4 [r14] = r15
	br .L14
	;;
.L16:
	adds r14 = 8, r2
	adds r15 = 8, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r14 = 1, r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
.L14:
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L15
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	st1 [r14] = r15
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r15, r14
	(p6) br.cond.dptk .L16
.L15:
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L17
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r14 = 1, r14
	br .L18
	;;
.L17:
	mov r14 = r0
.L18:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st4 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	zxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	st4 [r14] = r15
	br .L20
	;;
.L22:
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L20:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L21
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r15, r14
	(p6) br.cond.dptk .L22
.L21:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L23
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	br .L25
	;;
.L23:
	mov r14 = r0
.L25:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	br .L27
	;;
.L29:
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
.L27:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L28
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L29
.L28:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L30
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sub r14 = r15, r14
	br .L32
	;;
.L30:
	mov r14 = r0
.L32:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	br .L34
	;;
.L35:
	adds r14 = -24, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -24, r2
	;;
	adds r16 = 1, r15
	;;
	st8 [r14] = r16
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r16 = 1, r14
	adds r17 = -32, r2
	;;
	st8 [r17] = r16
	ld1 r15 = [r15]
	;;
	st1 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L34:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L35
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st4 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	zxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	st4 [r14] = r15
	br .L38
	;;
.L40:
	mov r14 = r2
	adds r16 = -32, r2
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	add r14 = r15, r14
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r15, r14
	(p6) br.cond.dptk .L38
	mov r14 = r2
	adds r16 = -32, r2
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	add r14 = r15, r14
	br .L39
	;;
.L38:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st8 [r15] = r16
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L40
	mov r14 = r0
.L39:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st4 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	br .L42
	;;
.L43:
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	zxt1 r14 = r14
	;;
	mov r15 = r14
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	st1 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -32, r2
	;;
	st8 [r16] = r14
.L42:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L43
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	br .L46
	;;
.L47:
	adds r14 = 8, r2
	adds r15 = 8, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
	ld8 r14 = [r2]
	;;
	adds r14 = 1, r14
	;;
	st8 [r2] = r14
.L46:
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	ld8 r14 = [r2]
	;;
	st1 [r14] = r15
	ld8 r14 = [r2]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L47
	ld8 r14 = [r2]
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	zxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = 8, r2
	;;
	st4 [r14] = r15
	br .L50
	;;
.L52:
	ld8 r14 = [r2]
	;;
	adds r14 = 1, r14
	;;
	st8 [r2] = r14
.L50:
	ld8 r14 = [r2]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L51
	ld8 r14 = [r2]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r15, r14
	(p6) br.cond.dptk .L52
.L51:
	ld8 r14 = [r2]
	;;
	mov r8 = r14
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
	mov r14 = r32
	;;
	st4 [r2] = r33
.L57:
	ld1 r15 = [r14]
	;;
	sxt1 r15 = r15
	;;
	mov r16 = r15
	ld4 r15 = [r2]
	;;
	cmp4.ne p6, p7 = r16, r15
	(p6) br.cond.dptk .L55
	br .L56
	;;
.L55:
	mov r15 = r14
	;;
	adds r14 = 1, r15
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L57
	mov r14 = r0
.L56:
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	br .L59
	;;
.L61:
	ld8 r14 = [r2]
	;;
	adds r14 = 1, r14
	;;
	st8 [r2] = r14
	adds r14 = 8, r2
	adds r15 = 8, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
.L59:
	ld8 r14 = [r2]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L60
	ld8 r14 = [r2]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L61
.L60:
	ld8 r14 = [r2]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sub r14 = r15, r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	br .L64
	;;
.L65:
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
.L64:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L65
	mov r14 = r2
	;;
	ld8 r15 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	sub r14 = r15, r14
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st8 [r15] = r16
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L70
	mov r14 = r0
	br .L69
	;;
.L72:
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L70:
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L71
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L71
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L71
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L72
.L71:
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sub r14 = r15, r14
.L69:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	br .L74
	;;
.L75:
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r14 = 1, r14
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	st1 [r14] = r15
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	adds r14 = 1, r14
	adds r16 = -32, r2
	;;
	ld8 r15 = [r16]
	;;
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 2, r15
	;;
	st8 [r14] = r15
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 2, r14
	adds r16 = -32, r2
	;;
	st8 [r16] = r14
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -2, r15
	;;
	st8 [r14] = r15
.L74:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.lt p6, p7 = 1, r14
	(p6) br.cond.dptk .L75
	nop 0
	nop 0
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	or r14 = 32, r14
	;;
	adds r14 = -97, r14
	;;
	cmp4.geu p6, p7 = 25, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	cmp4.geu p6, p7 = 127, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	cmp4.eq p6, p7 = 32, r14
	(p6) br.cond.dptk .L81
	ld4 r14 = [r2]
	;;
	cmp4.ne p6, p7 = 9, r14
	(p6) br.cond.dptk .L82
.L81:
	addl r14 = 1, r0
	br .L84
	;;
.L82:
	mov r14 = r0
.L84:
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	cmp4.geu p6, p7 = 31, r14
	(p6) br.cond.dptk .L86
	ld4 r14 = [r2]
	;;
	cmp4.ne p6, p7 = 127, r14
	(p6) br.cond.dptk .L87
.L86:
	addl r14 = 1, r0
	br .L89
	;;
.L87:
	mov r14 = r0
.L89:
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	adds r14 = -33, r14
	;;
	cmp4.geu p6, p7 = 93, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	adds r14 = -97, r14
	;;
	cmp4.geu p6, p7 = 25, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	adds r14 = -32, r14
	;;
	cmp4.geu p6, p7 = 94, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	cmp4.eq p6, p7 = 32, r14
	(p6) br.cond.dptk .L99
	ld4 r14 = [r2]
	;;
	adds r14 = -9, r14
	;;
	cmp4.ltu p6, p7 = 4, r14
	(p6) br.cond.dptk .L100
.L99:
	addl r14 = 1, r0
	br .L102
	;;
.L100:
	mov r14 = r0
.L102:
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	adds r14 = -65, r14
	;;
	cmp4.geu p6, p7 = 25, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st4 [r3] = r32
	ld4 r14 = [r3]
	;;
	cmp4.geu p6, p7 = 31, r14
	(p6) br.cond.dptk .L106
	ld4 r14 = [r3]
	;;
	adds r14 = -127, r14
	;;
	cmp4.geu p6, p7 = 32, r14
	(p6) br.cond.dptk .L106
	ld4 r2 = [r3]
	;;
	addl r14 = -8232, r2
	;;
	cmp4.geu p6, p7 = 1, r14
	(p6) br.cond.dptk .L106
	ld4 r2 = [r3]
	;;
	addl r14 = -65529, r2
	;;
	cmp4.ltu p6, p7 = 2, r14
	(p6) br.cond.dptk .L107
.L106:
	addl r14 = 1, r0
	br .L109
	;;
.L107:
	mov r14 = r0
.L109:
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st4 [r3] = r32
	ld4 r14 = [r3]
	addl r15 = 254, r0
	;;
	cmp4.ltu p6, p7 = r15, r14
	(p6) br.cond.dptk .L113
	ld4 r14 = [r3]
	;;
	adds r14 = 1, r14
	;;
	and r14 = 127, r14
	;;
	cmp4.ltu p6, p7 = 32, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	br .L114
	;;
.L113:
	ld4 r14 = [r3]
	addl r15 = 8231, r0
	;;
	cmp4.geu p6, p7 = r15, r14
	(p6) br.cond.dptk .L115
	ld4 r2 = [r3]
	;;
	addl r14 = -8234, r2
	addl r15 = 47061, r0
	;;
	cmp4.geu p6, p7 = r15, r14
	(p6) br.cond.dptk .L115
	ld4 r2 = [r3]
	;;
	addl r14 = -57344, r2
	addl r15 = 8184, r0
	;;
	cmp4.ltu p6, p7 = r15, r14
	(p6) br.cond.dptk .L116
.L115:
	addl r14 = 1, r0
	br .L114
	;;
.L116:
	ld4 r2 = [r3]
	;;
	addl r14 = -65532, r2
	addl r15 = 1048579, r0
	;;
	cmp4.ltu p6, p7 = r15, r14
	(p6) br.cond.dptk .L117
	ld4 r14 = [r3]
	addl r15 = 65534, r0
	;;
	and r14 = r15, r14
	;;
	mov r15 = r14
	addl r14 = 65534, r0
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L118
.L117:
	mov r14 = r0
	br .L114
	;;
.L118:
	addl r14 = 1, r0
.L114:
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L120
	ld4 r14 = [r2]
	;;
	or r14 = 32, r14
	;;
	adds r14 = -97, r14
	;;
	cmp4.ltu p6, p7 = 5, r14
	(p6) br.cond.dptk .L121
.L120:
	addl r14 = 1, r0
	br .L123
	;;
.L121:
	mov r14 = r0
.L123:
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	and r14 = 127, r14
	;;
	mov r8 = r14
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
	;;
	stfd [r2] = f8
	adds r14 = 8, r2
	;;
	stfd [r14] = f9
	ldfd f7 = [r2]
	ldfd f6 = [r2]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L127
	ldfd f6 = [r2]
	br .L128
	;;
.L127:
	adds r15 = 8, r2
	adds r14 = 8, r2
	;;
	ldfd f7 = [r15]
	ldfd f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L129
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
	br .L128
	;;
.L129:
	adds r14 = 8, r2
	ldfd f7 = [r2]
	;;
	ldfd f6 = [r14]
	;;
	fcmp.gt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L134
	adds r14 = 8, r2
	ldfd f7 = [r2]
	;;
	ldfd f6 = [r14]
	;;
	fsub.d f6 = f7, f6
	br .L128
	;;
.L134:
	mov f6 = f0
.L128:
	;;
	mov f8 = f6
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
	;;
	stfs [r2] = f8
	adds r14 = 4, r2
	;;
	stfs [r14] = f9
	ldfs f7 = [r2]
	ldfs f6 = [r2]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L136
	ldfs f6 = [r2]
	br .L137
	;;
.L136:
	adds r15 = 4, r2
	adds r14 = 4, r2
	;;
	ldfs f7 = [r15]
	ldfs f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L138
	adds r14 = 4, r2
	;;
	ldfs f6 = [r14]
	br .L137
	;;
.L138:
	adds r14 = 4, r2
	ldfs f7 = [r2]
	;;
	ldfs f6 = [r14]
	;;
	fcmp.gt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L143
	adds r14 = 4, r2
	ldfs f7 = [r2]
	;;
	ldfs f6 = [r14]
	;;
	fsub.s f6 = f7, f6
	br .L137
	;;
.L143:
	mov f6 = f0
.L137:
	;;
	mov f8 = f6
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
	;;
	stfd [r2] = f8
	adds r14 = 8, r2
	;;
	stfd [r14] = f9
	ldfd f7 = [r2]
	ldfd f6 = [r2]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L145
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
	br .L146
	;;
.L145:
	adds r15 = 8, r2
	adds r14 = 8, r2
	;;
	ldfd f7 = [r15]
	ldfd f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L147
	ldfd f6 = [r2]
	br .L146
	;;
.L147:
	ld8 r14 = [r2]
	;;
	shr.u r14 = r14, 63
	;;
	and r14 = 1, r14
	;;
	mov r15 = r14
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	shr.u r14 = r14, 63
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L148
	ld8 r14 = [r2]
	;;
	shr.u r14 = r14, 63
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L149
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
	br .L146
	;;
.L149:
	ldfd f6 = [r2]
	br .L146
	;;
.L148:
	adds r14 = 8, r2
	ldfd f7 = [r2]
	;;
	ldfd f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L155
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
	br .L146
	;;
.L155:
	ldfd f6 = [r2]
.L146:
	;;
	mov f8 = f6
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
	;;
	stfs [r2] = f8
	adds r14 = 4, r2
	;;
	stfs [r14] = f9
	ldfs f7 = [r2]
	ldfs f6 = [r2]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L157
	adds r14 = 4, r2
	;;
	ldfs f6 = [r14]
	br .L158
	;;
.L157:
	adds r15 = 4, r2
	adds r14 = 4, r2
	;;
	ldfs f7 = [r15]
	ldfs f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L159
	ldfs f6 = [r2]
	br .L158
	;;
.L159:
	ld4 r14 = [r2]
	movl r15 = -2147483648
	;;
	and r14 = r15, r14
	;;
	mov r16 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	movl r15 = -2147483648
	;;
	and r14 = r15, r14
	;;
	cmp4.eq p6, p7 = r14, r16
	(p6) br.cond.dptk .L160
	ld4 r14 = [r2]
	movl r15 = -2147483648
	;;
	and r14 = r15, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L161
	adds r14 = 4, r2
	;;
	ldfs f6 = [r14]
	br .L158
	;;
.L161:
	ldfs f6 = [r2]
	br .L158
	;;
.L160:
	adds r14 = 4, r2
	ldfs f7 = [r2]
	;;
	ldfs f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L167
	adds r14 = 4, r2
	;;
	ldfs f6 = [r14]
	br .L158
	;;
.L167:
	ldfs f6 = [r2]
.L158:
	;;
	mov f8 = f6
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
	mov r14 = r2
	;;
	stfe [r14] = f9
	adds r15 = -16, r2
	;;
	ldfe f7 = [r15]
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L169
	mov r14 = r2
	;;
	ldfe f6 = [r14]
	br .L170
	;;
.L169:
	mov r15 = r2
	mov r14 = r2
	;;
	ldfe f7 = [r15]
	ldfe f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L171
	adds r15 = -16, r2
	;;
	ldfe f6 = [r15]
	br .L170
	;;
.L171:
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	addl r14 = 32768, r0
	;;
	and r14 = r14, r15
	;;
	mov r15 = r14
	mov r14 = r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	mov r16 = r14
	addl r14 = 32768, r0
	;;
	and r14 = r14, r16
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L172
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	addl r14 = 32768, r0
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L173
	mov r14 = r2
	;;
	ldfe f6 = [r14]
	br .L170
	;;
.L173:
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	br .L170
	;;
.L172:
	mov r14 = r2
	adds r15 = -16, r2
	;;
	ldfe f7 = [r15]
	ldfe f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L179
	mov r14 = r2
	;;
	ldfe f6 = [r14]
	br .L170
	;;
.L179:
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
.L170:
	;;
	mov f8 = f6
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
	;;
	stfd [r2] = f8
	adds r14 = 8, r2
	;;
	stfd [r14] = f9
	ldfd f7 = [r2]
	ldfd f6 = [r2]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L181
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
	br .L182
	;;
.L181:
	adds r15 = 8, r2
	adds r14 = 8, r2
	;;
	ldfd f7 = [r15]
	ldfd f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L183
	ldfd f6 = [r2]
	br .L182
	;;
.L183:
	ld8 r14 = [r2]
	;;
	shr.u r14 = r14, 63
	;;
	and r14 = 1, r14
	;;
	mov r15 = r14
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	shr.u r14 = r14, 63
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L184
	ld8 r14 = [r2]
	;;
	shr.u r14 = r14, 63
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L185
	ldfd f6 = [r2]
	br .L182
	;;
.L185:
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
	br .L182
	;;
.L184:
	adds r14 = 8, r2
	ldfd f7 = [r2]
	;;
	ldfd f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L191
	ldfd f6 = [r2]
	br .L182
	;;
.L191:
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
.L182:
	;;
	mov f8 = f6
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
	;;
	stfs [r2] = f8
	adds r14 = 4, r2
	;;
	stfs [r14] = f9
	ldfs f7 = [r2]
	ldfs f6 = [r2]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L193
	adds r14 = 4, r2
	;;
	ldfs f6 = [r14]
	br .L194
	;;
.L193:
	adds r15 = 4, r2
	adds r14 = 4, r2
	;;
	ldfs f7 = [r15]
	ldfs f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L195
	ldfs f6 = [r2]
	br .L194
	;;
.L195:
	ld4 r14 = [r2]
	movl r15 = -2147483648
	;;
	and r14 = r15, r14
	;;
	mov r16 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	movl r15 = -2147483648
	;;
	and r14 = r15, r14
	;;
	cmp4.eq p6, p7 = r14, r16
	(p6) br.cond.dptk .L196
	ld4 r14 = [r2]
	movl r15 = -2147483648
	;;
	and r14 = r15, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L197
	ldfs f6 = [r2]
	br .L194
	;;
.L197:
	adds r14 = 4, r2
	;;
	ldfs f6 = [r14]
	br .L194
	;;
.L196:
	adds r14 = 4, r2
	ldfs f7 = [r2]
	;;
	ldfs f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L203
	ldfs f6 = [r2]
	br .L194
	;;
.L203:
	adds r14 = 4, r2
	;;
	ldfs f6 = [r14]
.L194:
	;;
	mov f8 = f6
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
	mov r14 = r2
	;;
	stfe [r14] = f9
	adds r15 = -16, r2
	;;
	ldfe f7 = [r15]
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L205
	mov r14 = r2
	;;
	ldfe f6 = [r14]
	br .L206
	;;
.L205:
	mov r15 = r2
	mov r14 = r2
	;;
	ldfe f7 = [r15]
	ldfe f6 = [r14]
	;;
	fcmp.ord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L207
	adds r15 = -16, r2
	;;
	ldfe f6 = [r15]
	br .L206
	;;
.L207:
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	addl r14 = 32768, r0
	;;
	and r14 = r14, r15
	;;
	mov r15 = r14
	mov r14 = r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	mov r16 = r14
	addl r14 = 32768, r0
	;;
	and r14 = r14, r16
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L208
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	addl r14 = 32768, r0
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L209
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	br .L206
	;;
.L209:
	mov r14 = r2
	;;
	ldfe f6 = [r14]
	br .L206
	;;
.L208:
	mov r14 = r2
	adds r15 = -16, r2
	;;
	ldfe f7 = [r15]
	ldfe f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L215
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	br .L206
	;;
.L215:
	mov r14 = r2
	;;
	ldfe f6 = [r14]
.L206:
	;;
	mov f8 = f6
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	st4 [r14] = r15
	addl r14 = @gprel(s.0#), gp
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	br .L217
	;;
.L218:
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 63, r14
	movl r15 = @gprel(digits#)
	;;
	add r15 = r1, r15
	addp4 r14 = r14, r0
	;;
	add r14 = r15, r14
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	st1 [r14] = r15
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -16, r2
	;;
	st8 [r16] = r14
	adds r14 = -8, r2
	adds r15 = -8, r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 6, 26
	;;
	st4 [r14] = r15
.L217:
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L218
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	st1 [r14] = r0
	addl r14 = @gprel(s.0#), gp
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	adds r14 = -1, r14
	;;
	addp4 r14 = r14, r0
	addl r15 = @gprel(seed#), gp
	;;
	st8 [r15] = r14
	nop 0
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
	;;
	ld8 r14 = [r14]
	movl r15 = 6364136223846793005
	;;
	setf.sig f6 = r14
	setf.sig f7 = r15
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r14 = f6
	;;
	adds r14 = 1, r14
	addl r15 = @gprel(seed#), gp
	;;
	st8 [r15] = r14
	addl r14 = @gprel(seed#), gp
	;;
	ld8 r14 = [r14]
	;;
	shr.u r14 = r14, 33
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r14 = -8, r2
	adds r15 = 8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L224
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r0
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	st8 [r14] = r15
	br .L223
	;;
.L224:
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld8 r15 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	st8 [r14] = r15
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 8, r14
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r15 = [r16]
	;;
	st8 [r14] = r15
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L223
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	ld8 r14 = [r14]
	;;
	adds r14 = 8, r14
	adds r16 = -16, r2
	;;
	ld8 r15 = [r16]
	;;
	st8 [r14] = r15
.L223:
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L227
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld8 r14 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r15 = [r16]
	;;
	adds r15 = 8, r15
	;;
	ld8 r15 = [r15]
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
.L227:
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L229
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r15 = [r16]
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
.L229:
	nop 0
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
	.prologue 14, 38
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 5, 5, 3, 0
	.vframe r40
	mov r40 = r12
	adds r12 = -80, r12
	.save rp, r38
	mov r38 = b0
	mov r41 = r1
	.body
	;;
	adds r14 = -32, r40
	;;
	st8 [r14] = r32
	adds r14 = -24, r40
	;;
	st8 [r14] = r33
	adds r14 = -16, r40
	;;
	st8 [r14] = r34
	adds r14 = -8, r40
	;;
	st8 [r14] = r35
	mov r14 = r40
	;;
	st8 [r14] = r36
	adds r14 = -8, r40
	;;
	ld8 r37 = [r14]
	;;
	mov r14 = r37
	;;
	adds r14 = -1, r14
	;;
	mov r15 = r14
	adds r14 = -56, r40
	;;
	st8 [r14] = r15
	mov r16 = r37
	mov r17 = r0
	adds r14 = -48, r40
	adds r15 = -24, r40
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -40, r40
	adds r15 = -16, r40
	;;
	ld8 r15 = [r15]
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -64, r40
	;;
	st8 [r14] = r0
	br .L231
	;;
.L234:
	adds r15 = -64, r40
	;;
	ld8 r14 = [r15]
	setf.sig f6 = r37
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -48, r40
	;;
	ld8 r14 = [r14]
	;;
	add r16 = r14, r15
	adds r15 = -32, r40
	mov r14 = r40
	;;
	ld8 r14 = [r14]
	mov r43 = r16
	ld8 r42 = [r15]
	;;
	ld8 r15 = [r14], 8
	;;
	mov b6 = r15
	ld8 r1 = [r14]
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r41
	mov r14 = r8
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L232
	adds r16 = -64, r40
	;;
	ld8 r14 = [r16]
	setf.sig f6 = r37
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -48, r40
	;;
	ld8 r14 = [r14]
	;;
	add r14 = r14, r15
	br .L233
	;;
.L232:
	adds r15 = -64, r40
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -64, r40
	;;
	st8 [r16] = r14
.L231:
	adds r14 = -40, r40
	adds r16 = -64, r40
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	cmp.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L234
	adds r14 = -40, r40
	;;
	ld8 r14 = [r14]
	;;
	adds r15 = 1, r14
	adds r14 = -16, r40
	;;
	ld8 r14 = [r14]
	;;
	st8 [r14] = r15
	adds r14 = -40, r40
	;;
	ld8 r14 = [r14]
	setf.sig f6 = r37
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -48, r40
	;;
	ld8 r14 = [r14]
	;;
	add r16 = r14, r15
	adds r15 = -8, r40
	adds r14 = -32, r40
	;;
	ld8 r44 = [r15]
	ld8 r43 = [r14]
	mov r42 = r16
	br.call.sptk.many b0 = memcpy#
	mov r1 = r41
	mov r14 = r8
.L233:
	;;
	mov r8 = r14
	mov ar.pfs = r39
	mov b0 = r38
	.restore sp
	mov r12 = r40
	br.ret.sptk.many b0
	;;
	.endp lsearch#
	.align 16
	.global lfind#
	.type	lfind#, @function
	.proc lfind#
lfind:
	.prologue 14, 38
	.save ar.pfs, r39
	alloc r39 = ar.pfs, 5, 5, 2, 0
	.vframe r40
	mov r40 = r12
	adds r12 = -80, r12
	.save rp, r38
	mov r38 = b0
	mov r41 = r1
	.body
	;;
	adds r14 = -32, r40
	;;
	st8 [r14] = r32
	adds r14 = -24, r40
	;;
	st8 [r14] = r33
	adds r14 = -16, r40
	;;
	st8 [r14] = r34
	adds r14 = -8, r40
	;;
	st8 [r14] = r35
	mov r14 = r40
	;;
	st8 [r14] = r36
	adds r14 = -8, r40
	;;
	ld8 r37 = [r14]
	;;
	mov r14 = r37
	;;
	adds r14 = -1, r14
	;;
	mov r15 = r14
	adds r14 = -56, r40
	;;
	st8 [r14] = r15
	mov r16 = r37
	mov r17 = r0
	adds r14 = -48, r40
	adds r15 = -24, r40
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -40, r40
	adds r15 = -16, r40
	;;
	ld8 r15 = [r15]
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -64, r40
	;;
	st8 [r14] = r0
	br .L236
	;;
.L239:
	adds r15 = -64, r40
	;;
	ld8 r14 = [r15]
	setf.sig f6 = r37
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -48, r40
	;;
	ld8 r14 = [r14]
	;;
	add r16 = r14, r15
	adds r15 = -32, r40
	mov r14 = r40
	;;
	ld8 r14 = [r14]
	mov r43 = r16
	ld8 r42 = [r15]
	;;
	ld8 r15 = [r14], 8
	;;
	mov b6 = r15
	ld8 r1 = [r14]
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r41
	mov r14 = r8
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L237
	adds r16 = -64, r40
	;;
	ld8 r14 = [r16]
	setf.sig f6 = r37
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -48, r40
	;;
	ld8 r14 = [r14]
	;;
	add r14 = r14, r15
	br .L238
	;;
.L237:
	adds r15 = -64, r40
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -64, r40
	;;
	st8 [r16] = r14
.L236:
	adds r14 = -40, r40
	adds r16 = -64, r40
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	cmp.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L239
	mov r14 = r0
.L238:
	;;
	mov r8 = r14
	mov ar.pfs = r39
	mov b0 = r38
	.restore sp
	mov r12 = r40
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	cmp4.le p6, p7 = r0, r14
	;;
	(p7) sub r14 = r0, r14
	;;
	mov r8 = r14
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
	.prologue 14, 33
	.save ar.pfs, r34
	alloc r34 = ar.pfs, 1, 4, 1, 0
	.vframe r35
	mov r35 = r12
	adds r12 = -32, r12
	.save rp, r33
	mov r33 = b0
	mov r36 = r1
	.body
	;;
	mov r14 = r35
	;;
	st8 [r14] = r32
	adds r14 = -16, r35
	;;
	st4 [r14] = r0
	adds r14 = -12, r35
	;;
	st4 [r14] = r0
	br .L243
	;;
.L244:
	mov r14 = r35
	mov r15 = r35
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
.L243:
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r37 = r14
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	mov r14 = r8
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L244
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L245
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L247
	adds r14 = -12, r35
	addl r15 = 1, r0
	;;
	st4 [r14] = r15
.L245:
	mov r14 = r35
	mov r15 = r35
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
	br .L247
	;;
.L248:
	adds r14 = -16, r35
	;;
	ld4 r15 = [r14]
	;;
	mov r14 = r15
	;;
	shladd r14 = r14, 2, r0
	;;
	add r14 = r14, r15
	;;
	shladd r14 = r14, 1, r0
	;;
	mov r17 = r14
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	mov r15 = r35
	;;
	adds r16 = 1, r14
	;;
	st8 [r15] = r16
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	sub r14 = r17, r14
	adds r15 = -16, r35
	;;
	st4 [r15] = r14
.L247:
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L248
	adds r14 = -12, r35
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L249
	adds r15 = -16, r35
	;;
	ld4 r14 = [r15]
	;;
	sub r14 = r0, r14
	br .L251
	;;
.L249:
	adds r15 = -16, r35
	;;
	ld4 r14 = [r15]
.L251:
	;;
	mov r8 = r14
	mov ar.pfs = r34
	mov b0 = r33
	.restore sp
	mov r12 = r35
	br.ret.sptk.many b0
	;;
	.endp atoi#
	.align 16
	.global atol#
	.type	atol#, @function
	.proc atol#
atol:
	.prologue 14, 33
	.save ar.pfs, r34
	alloc r34 = ar.pfs, 1, 4, 1, 0
	.vframe r35
	mov r35 = r12
	adds r12 = -32, r12
	.save rp, r33
	mov r33 = b0
	mov r36 = r1
	.body
	;;
	mov r14 = r35
	;;
	st8 [r14] = r32
	adds r14 = -16, r35
	;;
	st8 [r14] = r0
	adds r14 = -8, r35
	;;
	st4 [r14] = r0
	br .L253
	;;
.L254:
	mov r14 = r35
	mov r15 = r35
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
.L253:
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r37 = r14
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	mov r14 = r8
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L254
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L255
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L257
	adds r14 = -8, r35
	addl r15 = 1, r0
	;;
	st4 [r14] = r15
.L255:
	mov r14 = r35
	mov r15 = r35
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
	br .L257
	;;
.L258:
	adds r14 = -16, r35
	;;
	ld8 r15 = [r14]
	;;
	mov r14 = r15
	;;
	shladd r14 = r14, 2, r0
	;;
	add r14 = r14, r15
	;;
	shladd r14 = r14, 1, r0
	;;
	mov r17 = r14
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	mov r15 = r35
	;;
	adds r16 = 1, r14
	;;
	st8 [r15] = r16
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	sxt4 r14 = r14
	;;
	sub r14 = r17, r14
	adds r15 = -16, r35
	;;
	st8 [r15] = r14
.L257:
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L258
	adds r14 = -8, r35
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L259
	adds r15 = -16, r35
	;;
	ld8 r14 = [r15]
	;;
	sub r14 = r0, r14
	br .L261
	;;
.L259:
	adds r15 = -16, r35
	;;
	ld8 r14 = [r15]
.L261:
	;;
	mov r8 = r14
	mov ar.pfs = r34
	mov b0 = r33
	.restore sp
	mov r12 = r35
	br.ret.sptk.many b0
	;;
	.endp atol#
	.align 16
	.global atoll#
	.type	atoll#, @function
	.proc atoll#
atoll:
	.prologue 14, 33
	.save ar.pfs, r34
	alloc r34 = ar.pfs, 1, 4, 1, 0
	.vframe r35
	mov r35 = r12
	adds r12 = -32, r12
	.save rp, r33
	mov r33 = b0
	mov r36 = r1
	.body
	;;
	mov r14 = r35
	;;
	st8 [r14] = r32
	adds r14 = -16, r35
	;;
	st8 [r14] = r0
	adds r14 = -8, r35
	;;
	st4 [r14] = r0
	br .L263
	;;
.L264:
	mov r14 = r35
	mov r15 = r35
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
.L263:
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r37 = r14
	br.call.sptk.many b0 = isspace#
	mov r1 = r36
	mov r14 = r8
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L264
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.eq p6, p7 = 43, r14
	(p6) br.cond.dptk .L265
	;;
	cmp4.ne p6, p7 = 45, r14
	(p6) br.cond.dptk .L267
	adds r14 = -8, r35
	addl r15 = 1, r0
	;;
	st4 [r14] = r15
.L265:
	mov r14 = r35
	mov r15 = r35
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
	br .L267
	;;
.L268:
	adds r14 = -16, r35
	;;
	ld8 r15 = [r14]
	;;
	mov r14 = r15
	;;
	shladd r14 = r14, 2, r0
	;;
	add r14 = r14, r15
	;;
	shladd r14 = r14, 1, r0
	;;
	mov r17 = r14
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	mov r15 = r35
	;;
	adds r16 = 1, r14
	;;
	st8 [r15] = r16
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	sxt4 r14 = r14
	;;
	sub r14 = r17, r14
	adds r15 = -16, r35
	;;
	st8 [r15] = r14
.L267:
	mov r14 = r35
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	adds r14 = -48, r14
	;;
	cmp4.geu p6, p7 = 9, r14
	(p6) br.cond.dptk .L268
	adds r14 = -8, r35
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L269
	adds r15 = -16, r35
	;;
	ld8 r14 = [r15]
	;;
	sub r14 = r0, r14
	br .L271
	;;
.L269:
	adds r15 = -16, r35
	;;
	ld8 r14 = [r15]
.L271:
	;;
	mov r8 = r14
	mov ar.pfs = r34
	mov b0 = r33
	.restore sp
	mov r12 = r35
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
	adds r12 = -64, r12
	.save rp, r38
	mov r38 = b0
	mov r41 = r1
	.body
	;;
	adds r14 = -32, r40
	;;
	st8 [r14] = r32
	adds r14 = -24, r40
	;;
	st8 [r14] = r33
	adds r14 = -16, r40
	;;
	st8 [r14] = r34
	adds r14 = -8, r40
	;;
	st8 [r14] = r35
	mov r14 = r40
	;;
	st8 [r14] = r36
	br .L273
	;;
.L278:
	adds r14 = -16, r40
	;;
	ld8 r14 = [r14]
	;;
	shr.u r15 = r14, 1
	adds r14 = -8, r40
	;;
	ld8 r14 = [r14]
	setf.sig f6 = r15
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -24, r40
	;;
	ld8 r14 = [r14]
	;;
	add r14 = r14, r15
	adds r15 = -48, r40
	;;
	st8 [r15] = r14
	adds r37 = -40, r40
	adds r15 = -32, r40
	mov r14 = r40
	;;
	ld8 r14 = [r14]
	adds r16 = -48, r40
	;;
	ld8 r43 = [r16]
	ld8 r42 = [r15]
	ld8 r15 = [r14], 8
	;;
	mov b6 = r15
	ld8 r1 = [r14]
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r41
	st4 [r37] = r8
	adds r14 = -40, r40
	;;
	ld4 r14 = [r14]
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L274
	adds r14 = -16, r40
	adds r15 = -16, r40
	;;
	ld8 r15 = [r15]
	;;
	shr.u r15 = r15, 1
	;;
	st8 [r14] = r15
	br .L273
	;;
.L274:
	adds r14 = -40, r40
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ge p6, p7 = 0, r14
	(p6) br.cond.dptk .L276
	adds r14 = -24, r40
	adds r15 = -8, r40
	adds r17 = -48, r40
	;;
	ld8 r16 = [r17]
	ld8 r15 = [r15]
	;;
	add r15 = r16, r15
	;;
	st8 [r14] = r15
	adds r14 = -16, r40
	;;
	ld8 r14 = [r14]
	;;
	shr.u r14 = r14, 1
	adds r15 = -16, r40
	;;
	ld8 r15 = [r15]
	;;
	sub r15 = r15, r14
	adds r14 = -16, r40
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	br .L273
	;;
.L276:
	adds r15 = -48, r40
	;;
	ld8 r14 = [r15]
	br .L277
	;;
.L273:
	adds r14 = -16, r40
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L278
	mov r14 = r0
.L277:
	;;
	mov r8 = r14
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
	adds r12 = -80, r12
	.save rp, r39
	mov r39 = b0
	mov r42 = r1
	.body
	;;
	adds r14 = -32, r41
	;;
	st8 [r14] = r32
	adds r14 = -24, r41
	;;
	st8 [r14] = r33
	adds r14 = -16, r41
	;;
	st8 [r14] = r34
	adds r14 = -8, r41
	;;
	st8 [r14] = r35
	mov r14 = r41
	;;
	st8 [r14] = r36
	adds r14 = 8, r41
	;;
	st8 [r14] = r37
	adds r14 = -24, r41
	;;
	ld8 r14 = [r14]
	adds r15 = -64, r41
	;;
	st8 [r15] = r14
	adds r14 = -56, r41
	adds r15 = -16, r41
	;;
	ld8 r15 = [r15]
	;;
	st4 [r14] = r15
	br .L280
	;;
.L284:
	adds r14 = -56, r41
	;;
	ld4 r14 = [r14]
	;;
	extr r14 = r14, 1, 31
	;;
	sxt4 r15 = r14
	adds r14 = -8, r41
	;;
	ld8 r14 = [r14]
	setf.sig f6 = r15
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r16 = f6
	adds r14 = -48, r41
	adds r17 = -64, r41
	;;
	ld8 r15 = [r17]
	;;
	add r15 = r15, r16
	;;
	st8 [r14] = r15
	adds r38 = -40, r41
	adds r17 = 8, r41
	adds r16 = -48, r41
	adds r15 = -32, r41
	mov r14 = r41
	;;
	ld8 r14 = [r14]
	ld8 r45 = [r17]
	ld8 r44 = [r16]
	ld8 r43 = [r15]
	;;
	ld8 r15 = [r14], 8
	;;
	mov b6 = r15
	ld8 r1 = [r14]
	br.call.sptk.many b0 = b6
	;;
	mov r1 = r42
	st4 [r38] = r8
	adds r14 = -40, r41
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L281
	adds r14 = -48, r41
	;;
	ld8 r14 = [r14]
	br .L282
	;;
.L281:
	adds r14 = -40, r41
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ge p6, p7 = 0, r14
	(p6) br.cond.dptk .L283
	adds r15 = -48, r41
	adds r14 = -8, r41
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	add r14 = r15, r14
	adds r17 = -64, r41
	;;
	st8 [r17] = r14
	adds r14 = -56, r41
	adds r15 = -56, r41
	;;
	ld4 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st4 [r14] = r15
.L283:
	adds r14 = -56, r41
	adds r15 = -56, r41
	;;
	ld4 r15 = [r15]
	;;
	extr r15 = r15, 1, 31
	;;
	st4 [r14] = r15
.L280:
	adds r14 = -56, r41
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L284
	mov r14 = r0
.L282:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	;;
	mov r14 = r37
	;;
	st4 [r14] = r32
	adds r14 = 4, r37
	;;
	st4 [r14] = r33
	mov r15 = r37
	adds r14 = 4, r37
	;;
	ld4 r15 = [r15]
	;;
	sxt4 r15 = r15
	ld4 r14 = [r14]
	;;
	sxt4 r14 = r14
	;;
	mov r40 = r14
	mov r39 = r15
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r38
	mov r14 = r8
	;;
	mov r34 = r14
	mov r15 = r37
	adds r14 = 4, r37
	;;
	ld4 r15 = [r15]
	;;
	sxt4 r15 = r15
	ld4 r14 = [r14]
	;;
	sxt4 r14 = r14
	;;
	mov r40 = r14
	mov r39 = r15
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r38
	mov r14 = r8
	;;
	mov r15 = r14
	adds r14 = -16, r37
	;;
	st4 [r14] = r34
	adds r14 = -12, r37
	;;
	st4 [r14] = r15
	mov r14 = r0
	adds r16 = -16, r37
	;;
	ld4 r15 = [r16]
	;;
	shl r15 = r15, 32
	;;
	mix4.l r14 = r14, r15
	adds r15 = -12, r37
	;;
	ld4 r15 = [r15]
	;;
	mix4.r r14 = r15, r14
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	ld8 r14 = [r2]
	;;
	cmp.le p6, p7 = r0, r14
	;;
	(p7) sub r14 = r0, r14
	;;
	mov r8 = r14
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
	.prologue 14, 37
	.save ar.pfs, r38
	alloc r38 = ar.pfs, 2, 7, 2, 0
	.vframe r39
	mov r39 = r12
	adds r12 = -48, r12
	.save rp, r37
	mov r37 = b0
	mov r40 = r1
	.body
	;;
	mov r14 = r39
	;;
	st8 [r14] = r32
	adds r14 = 8, r39
	;;
	st8 [r14] = r33
	mov r14 = r39
	adds r15 = 8, r39
	;;
	ld8 r42 = [r15]
	ld8 r41 = [r14]
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r40
	mov r14 = r8
	;;
	mov r36 = r14
	mov r15 = r39
	adds r14 = 8, r39
	;;
	ld8 r15 = [r15]
	ld8 r42 = [r14]
	;;
	mov r41 = r15
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r40
	mov r14 = r8
	;;
	mov r15 = r14
	adds r14 = -32, r39
	;;
	st8 [r14] = r36
	adds r14 = -24, r39
	;;
	st8 [r14] = r15
	mov r15 = r0
	adds r14 = -32, r39
	;;
	ld8 r15 = [r14]
	mov r14 = r0
	;;
	adds r14 = -24, r39
	;;
	ld8 r14 = [r14]
	mov r34 = r15
	;;
	mov r35 = r14
	mov r14 = r34
	;;
	mov r15 = r35
	mov r8 = r14
	;;
	mov r9 = r15
	mov ar.pfs = r38
	mov b0 = r37
	.restore sp
	mov r12 = r39
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
	;;
	st8 [r2] = r32
	ld8 r14 = [r2]
	;;
	cmp.le p6, p7 = r0, r14
	;;
	(p7) sub r14 = r0, r14
	;;
	mov r8 = r14
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
	.prologue 14, 37
	.save ar.pfs, r38
	alloc r38 = ar.pfs, 2, 7, 2, 0
	.vframe r39
	mov r39 = r12
	adds r12 = -48, r12
	.save rp, r37
	mov r37 = b0
	mov r40 = r1
	.body
	;;
	mov r14 = r39
	;;
	st8 [r14] = r32
	adds r14 = 8, r39
	;;
	st8 [r14] = r33
	mov r14 = r39
	adds r15 = 8, r39
	;;
	ld8 r42 = [r15]
	ld8 r41 = [r14]
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r40
	mov r14 = r8
	;;
	mov r36 = r14
	mov r15 = r39
	adds r14 = 8, r39
	;;
	ld8 r15 = [r15]
	ld8 r42 = [r14]
	;;
	mov r41 = r15
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r40
	mov r14 = r8
	;;
	mov r15 = r14
	adds r14 = -32, r39
	;;
	st8 [r14] = r36
	adds r14 = -24, r39
	;;
	st8 [r14] = r15
	mov r15 = r0
	adds r14 = -32, r39
	;;
	ld8 r15 = [r14]
	mov r14 = r0
	;;
	adds r14 = -24, r39
	;;
	ld8 r14 = [r14]
	mov r34 = r15
	;;
	mov r35 = r14
	mov r14 = r34
	;;
	mov r15 = r35
	mov r8 = r14
	;;
	mov r9 = r15
	mov ar.pfs = r38
	mov b0 = r37
	.restore sp
	mov r12 = r39
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
	;;
	st8 [r2] = r32
	ld8 r14 = [r2]
	;;
	cmp.le p6, p7 = r0, r14
	;;
	(p7) sub r14 = r0, r14
	;;
	mov r8 = r14
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
	.prologue 14, 37
	.save ar.pfs, r38
	alloc r38 = ar.pfs, 2, 7, 2, 0
	.vframe r39
	mov r39 = r12
	adds r12 = -48, r12
	.save rp, r37
	mov r37 = b0
	mov r40 = r1
	.body
	;;
	mov r14 = r39
	;;
	st8 [r14] = r32
	adds r14 = 8, r39
	;;
	st8 [r14] = r33
	mov r14 = r39
	adds r15 = 8, r39
	;;
	ld8 r42 = [r15]
	ld8 r41 = [r14]
	br.call.sptk.many b0 = __divdi3#
	mov r1 = r40
	mov r14 = r8
	;;
	mov r36 = r14
	mov r15 = r39
	adds r14 = 8, r39
	;;
	ld8 r15 = [r15]
	ld8 r42 = [r14]
	;;
	mov r41 = r15
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r40
	mov r14 = r8
	;;
	mov r15 = r14
	adds r14 = -32, r39
	;;
	st8 [r14] = r36
	adds r14 = -24, r39
	;;
	st8 [r14] = r15
	mov r15 = r0
	adds r14 = -32, r39
	;;
	ld8 r15 = [r14]
	mov r14 = r0
	;;
	adds r14 = -24, r39
	;;
	ld8 r14 = [r14]
	mov r34 = r15
	;;
	mov r35 = r14
	mov r14 = r34
	;;
	mov r15 = r35
	mov r8 = r14
	;;
	mov r9 = r15
	mov ar.pfs = r38
	mov b0 = r37
	.restore sp
	mov r12 = r39
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	br .L300
	;;
.L302:
	ld8 r14 = [r2]
	;;
	adds r14 = 4, r14
	;;
	st8 [r2] = r14
.L300:
	ld8 r14 = [r2]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L301
	ld8 r14 = [r2]
	;;
	ld4 r14 = [r14]
	adds r15 = 8, r2
	;;
	ld4 r15 = [r15]
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L302
.L301:
	ld8 r14 = [r2]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L303
	ld8 r14 = [r2]
	br .L305
	;;
.L303:
	mov r14 = r0
.L305:
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	br .L307
	;;
.L309:
	ld8 r14 = [r2]
	;;
	adds r14 = 4, r14
	;;
	st8 [r2] = r14
	adds r14 = 8, r2
	adds r15 = 8, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 4, r15
	;;
	st8 [r14] = r15
.L307:
	ld8 r14 = [r2]
	;;
	ld4 r15 = [r14]
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L308
	ld8 r14 = [r2]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L308
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L309
.L308:
	ld8 r14 = [r2]
	;;
	ld4 r15 = [r14]
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.gt p6, p7 = r14, r15
	(p6) br.cond.dptk .L310
	ld8 r14 = [r2]
	;;
	ld4 r15 = [r14]
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	br .L312
	;;
.L310:
	addl r14 = -1, r0
.L312:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	nop 0
.L314:
	adds r14 = 8, r2
	;;
	ld8 r15 = [r14]
	adds r14 = 8, r2
	;;
	adds r16 = 4, r15
	;;
	st8 [r14] = r16
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	mov r16 = r2
	;;
	adds r17 = 4, r14
	;;
	st8 [r16] = r17
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L314
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	br .L317
	;;
.L318:
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 4, r15
	;;
	st8 [r14] = r15
.L317:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L318
	mov r14 = r2
	;;
	ld8 r15 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	sub r14 = r15, r14
	;;
	shr r14 = r14, 2
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	br .L321
	;;
.L323:
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 4, r14
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r14 = -8, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 4, r15
	;;
	st8 [r14] = r15
.L321:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L322
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L322
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L322
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L323
.L322:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L324
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.gt p6, p7 = r14, r15
	(p6) br.cond.dptk .L325
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	br .L328
	;;
.L325:
	addl r14 = -1, r0
	br .L328
	;;
.L324:
	mov r14 = r0
.L328:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st4 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	br .L330
	;;
.L332:
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 4, r14
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
.L330:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L331
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld4 r14 = [r14]
	adds r15 = -8, r2
	;;
	ld4 r15 = [r15]
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L332
.L331:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L333
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	br .L335
	;;
.L333:
	mov r14 = r0
.L335:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	br .L337
	;;
.L339:
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 4, r14
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r14 = -8, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 4, r15
	;;
	st8 [r14] = r15
.L337:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L338
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L339
.L338:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L340
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.gt p6, p7 = r14, r15
	(p6) br.cond.dptk .L341
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	ld4 r14 = [r14]
	;;
	cmp4.lt p6, p7 = r14, r15
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	br .L344
	;;
.L341:
	addl r14 = -1, r0
	br .L344
	;;
.L340:
	mov r14 = r0
.L344:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	br .L346
	;;
.L347:
	adds r14 = -8, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -8, r2
	;;
	adds r16 = 4, r15
	;;
	st8 [r14] = r16
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r16 = -16, r2
	;;
	adds r17 = 4, r14
	;;
	st8 [r16] = r17
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
.L346:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st8 [r15] = r16
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L347
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r15 = -16, r2
	adds r14 = -8, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L350
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	br .L351
	;;
.L350:
	adds r14 = -16, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	sub r15 = r15, r14
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	shladd r14 = r14, 2, r0
	;;
	cmp.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L356
	br .L353
	;;
.L354:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	shladd r14 = r14, 2, r0
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	shladd r14 = r14, 2, r0
	adds r16 = -16, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
.L353:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st8 [r15] = r16
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L354
	br .L355
	;;
.L357:
	adds r14 = -8, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -8, r2
	;;
	adds r16 = 4, r15
	;;
	st8 [r14] = r16
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r16 = -16, r2
	;;
	adds r17 = 4, r14
	;;
	st8 [r16] = r17
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
.L356:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st8 [r15] = r16
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L357
.L355:
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
.L351:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st4 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	br .L359
	;;
.L360:
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	adds r16 = 4, r14
	;;
	st8 [r15] = r16
	adds r15 = -8, r2
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
.L359:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st8 [r15] = r16
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L360
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -24, r2
	adds r16 = -32, r2
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	cmp.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L363
	mov r14 = r2
	adds r16 = -32, r2
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	add r14 = r15, r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r16 = -24, r2
	mov r15 = r2
	;;
	ld8 r16 = [r16]
	ld8 r15 = [r15]
	;;
	add r15 = r16, r15
	;;
	st8 [r14] = r15
	br .L364
	;;
.L365:
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r14 = -1, r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	;;
	st1 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L364:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L365
	br .L369
	;;
.L363:
	adds r14 = -24, r2
	adds r16 = -32, r2
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L369
	br .L367
	;;
.L368:
	adds r14 = -32, r2
	;;
	ld8 r15 = [r14]
	;;
	adds r14 = 1, r15
	adds r16 = -32, r2
	;;
	st8 [r16] = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	adds r16 = -24, r2
	;;
	adds r17 = 1, r14
	;;
	st8 [r16] = r17
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L367:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L368
.L369:
	nop 0
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	ld8 r15 = [r2]
	;;
	ld4 r16 = [r14]
	;;
	shl r16 = r15, r16
	ld4 r14 = [r14]
	;;
	sub r14 = r0, r14
	;;
	and r14 = 63, r14
	;;
	addp4 r14 = r14, r0
	;;
	shr.u r14 = r15, r14
	;;
	or r14 = r16, r14
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	ld8 r15 = [r2]
	;;
	ld4 r16 = [r14]
	;;
	shr.u r16 = r15, r16
	ld4 r14 = [r14]
	;;
	sub r14 = r0, r14
	;;
	and r14 = 63, r14
	;;
	addp4 r14 = r14, r0
	;;
	shl r14 = r15, r14
	;;
	or r14 = r16, r14
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r15 = 4, r2
	ld4 r14 = [r2]
	;;
	ld4 r15 = [r15]
	;;
	sub r15 = 32, r15
	;;
	addp4 r15 = r15, r0
	mix4.r r16 = r14, r14
	;;
	shr.u r16 = r16, r15
	;;
	mov r14 = r16
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r15 = 4, r2
	ld4 r14 = [r2]
	;;
	ld4 r15 = [r15]
	;;
	addp4 r15 = r15, r0
	mix4.r r16 = r14, r14
	;;
	shr.u r16 = r16, r15
	;;
	mov r14 = r16
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	ld8 r15 = [r2]
	;;
	shl r15 = r15, r14
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r14 = 64, r14
	;;
	addp4 r16 = r14, r0
	ld8 r14 = [r2]
	;;
	shr.u r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	ld8 r15 = [r2]
	;;
	shr.u r15 = r15, r14
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r14 = 64, r14
	;;
	addp4 r16 = r14, r0
	ld8 r14 = [r2]
	;;
	shl r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	mov r8 = r14
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
	;;
	st2 [r2] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	ld2 r14 = [r2]
	;;
	mov r15 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	addp4 r14 = r14, r0
	;;
	shl r14 = r15, r14
	;;
	zxt2 r14 = r14
	;;
	mov r16 = r14
	ld2 r14 = [r2]
	;;
	mov r17 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r15 = 16, r14
	addp4 r14 = r17, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	zxt2 r14 = r14
	zxt2 r15 = r16
	;;
	zxt2 r14 = r14
	;;
	or r14 = r14, r15
	;;
	zxt2 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st2 [r2] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	ld2 r14 = [r2]
	;;
	mov r16 = r14
	adds r14 = 4, r2
	;;
	ld4 r15 = [r14]
	addp4 r14 = r16, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	zxt2 r14 = r14
	;;
	mov r16 = r14
	ld2 r14 = [r2]
	;;
	mov r15 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r14 = 16, r14
	;;
	addp4 r14 = r14, r0
	;;
	shl r14 = r15, r14
	;;
	zxt2 r14 = r14
	zxt2 r15 = r16
	;;
	zxt2 r14 = r14
	;;
	or r14 = r14, r15
	;;
	zxt2 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st1 [r2] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	ld1 r14 = [r2]
	;;
	mov r15 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	addp4 r14 = r14, r0
	;;
	shl r14 = r15, r14
	;;
	zxt1 r14 = r14
	;;
	mov r16 = r14
	ld1 r14 = [r2]
	;;
	mov r17 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r15 = 8, r14
	addp4 r14 = r17, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	zxt1 r14 = r14
	zxt1 r15 = r16
	;;
	zxt1 r14 = r14
	;;
	or r14 = r14, r15
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	;;
	st1 [r2] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	ld1 r14 = [r2]
	;;
	mov r16 = r14
	adds r14 = 4, r2
	;;
	ld4 r15 = [r14]
	addp4 r14 = r16, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	zxt1 r14 = r14
	;;
	mov r16 = r14
	ld1 r14 = [r2]
	;;
	mov r15 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r14 = 8, r14
	;;
	addp4 r14 = r14, r0
	;;
	shl r14 = r15, r14
	;;
	zxt1 r14 = r14
	zxt1 r15 = r16
	;;
	zxt1 r14 = r14
	;;
	or r14 = r14, r15
	;;
	zxt1 r14 = r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st2 [r14] = r32
	addl r14 = 255, r0
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	mov r14 = r2
	;;
	ld2 r15 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shl r14 = r14, 8
	;;
	and r14 = r14, r15
	;;
	shr.u r14 = r14, 8
	;;
	zxt2 r14 = r14
	;;
	mov r16 = r14
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	zxt2 r14 = r14
	;;
	mov r15 = r14
	mov r14 = r2
	;;
	ld2 r14 = [r14]
	zxt2 r15 = r15
	;;
	and r14 = r14, r15
	;;
	zxt2 r14 = r14
	;;
	dep.z r14 = r14, 8, 24
	;;
	zxt2 r14 = r14
	zxt2 r15 = r16
	;;
	zxt2 r14 = r14
	;;
	or r14 = r14, r15
	;;
	zxt2 r14 = r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	addl r14 = 255, r0
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	mov r14 = r2
	;;
	ld4 r15 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shl r14 = r14, 24
	;;
	and r14 = r14, r15
	;;
	shr.u r14 = r14, 24
	;;
	mov r16 = r14
	mov r14 = r2
	;;
	ld4 r15 = [r14]
	adds r17 = -16, r2
	;;
	ld8 r14 = [r17]
	;;
	shl r14 = r14, 16
	;;
	and r14 = r14, r15
	;;
	shr.u r14 = r14, 8
	;;
	or r14 = r14, r16
	;;
	mov r16 = r14
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	dep.z r14 = r14, 8, 24
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	and r14 = r14, r15
	;;
	dep.z r14 = r14, 8, 24
	;;
	or r14 = r14, r16
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	mov r16 = r14
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = r16, r14
	;;
	dep.z r14 = r14, 24, 8
	;;
	or r14 = r14, r15
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	addl r14 = 255, r0
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shl r15 = r14, 56
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	and r14 = r14, r15
	;;
	shr.u r15 = r14, 56
	adds r17 = -16, r2
	;;
	ld8 r14 = [r17]
	;;
	shl r16 = r14, 48
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	and r14 = r14, r16
	;;
	shr.u r14 = r14, 40
	;;
	or r15 = r14, r15
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shl r16 = r14, 40
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	and r14 = r14, r16
	;;
	shr.u r14 = r14, 24
	;;
	or r15 = r14, r15
	adds r17 = -16, r2
	;;
	ld8 r14 = [r17]
	;;
	shl r16 = r14, 32
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	and r14 = r14, r16
	;;
	shr.u r14 = r14, 8
	;;
	or r15 = r14, r15
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shl r16 = r14, 24
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	and r14 = r14, r16
	;;
	shl r14 = r14, 8
	;;
	or r15 = r14, r15
	adds r17 = -16, r2
	;;
	ld8 r14 = [r17]
	;;
	shl r16 = r14, 16
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	and r14 = r14, r16
	;;
	shl r14 = r14, 24
	;;
	or r15 = r14, r15
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shl r16 = r14, 8
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	and r14 = r14, r16
	;;
	shl r14 = r14, 40
	;;
	or r15 = r14, r15
	mov r14 = r2
	;;
	ld8 r16 = [r14]
	adds r17 = -16, r2
	;;
	ld8 r14 = [r17]
	;;
	and r14 = r14, r16
	;;
	shl r14 = r14, 56
	;;
	or r14 = r14, r15
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	br .L397
	;;
.L400:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r16 = -16, r2
	;;
	ld4 r15 = [r16]
	addp4 r14 = r14, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L398
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = 1, r14
	br .L399
	;;
.L398:
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	adds r14 = 1, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
.L397:
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	cmp4.geu p6, p7 = 31, r14
	(p6) br.cond.dptk .L400
	mov r14 = r0
.L399:
	;;
	mov r8 = r14
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
	alloc r16 = ar.pfs, 1, 1, 0, 0
	.vframe r2
	mov r2 = r12
	.body
	mov r14 = r32
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L402
	mov r14 = r0
	br .L403
	;;
.L402:
	addl r33 = 1, r0
	br .L404
	;;
.L405:
	extr r14 = r14, 1, 31
	adds r33 = 1, r33
.L404:
	;;
	and r15 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dptk .L405
	mov r14 = r33
.L403:
	;;
	mov r8 = r14
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
	;;
	stfs [r2] = f8
	ldfs f7 = [r2]
	movl r14 = 0xff7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L407
	ldfs f7 = [r2]
	movl r14 = 0x7f7fffff
	;;
	setf.s f6 = r14
	;;
	fcmp.gt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L412
.L407:
	addl r14 = 1, r0
	br .L411
	;;
.L412:
	mov r14 = r0
.L411:
	;;
	mov r8 = r14
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
	;;
	stfd [r2] = f8
	ldfd f7 = [r2]
	movl r14 = 0xffefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L414
	ldfd f7 = [r2]
	movl r14 = 0x7fefffffffffffff
	;;
	setf.d f6 = r14
	;;
	fcmp.gt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L419
.L414:
	addl r14 = 1, r0
	br .L418
	;;
.L419:
	mov r14 = r0
.L418:
	;;
	mov r8 = r14
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
	;;
	stfe [r2] = f8
	ldfe f7 = [r2]
	movl r14 = @gprel(.LC0)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L421
	ldfe f7 = [r2]
	movl r14 = @gprel(.LC1)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	;;
	fcmp.gt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L426
.L421:
	addl r14 = 1, r0
	br .L425
	;;
.L426:
	mov r14 = r0
.L425:
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	sxt4 r14 = r14
	;;
	setf.sig f7 = r14
	;;
	fcvt.xf f6 = f7
	;;
	fnorm.d f6 = f6
	;;
	fnorm f6 = f6
	ld8 r14 = [r2]
	;;
	stfe [r14] = f6
	nop 0
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	stfs [r14] = f8
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	mov r15 = r2
	mov r14 = r2
	;;
	ldfs f7 = [r15]
	ldfs f6 = [r14]
	;;
	fcmp.unord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L429
	mov r14 = r2
	;;
	ldfs f6 = [r14]
	;;
	fadd.s f6 = f6, f6
	mov r14 = r2
	;;
	ldfs f7 = [r14]
	;;
	fcmp.eq p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L429
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L430
	movl r14 = 0x3f000000
	;;
	setf.s f6 = r14
	br .L431
	;;
.L430:
	movl r15 = 0x40000000
	;;
	setf.s f6 = r15
.L431:
	;;
	getf.s r15 = f6
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
.L434:
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L432
	mov r14 = r2
	mov r15 = r2
	;;
	ldfs f7 = [r15]
	adds r15 = -16, r2
	;;
	ldfs f6 = [r15]
	;;
	fmpy.s f6 = f7, f6
	;;
	stfs [r14] = f6
.L432:
	adds r15 = 4, r2
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r16 = r14, 31, 1
	;;
	add r14 = r16, r14
	;;
	extr r14 = r14, 1, 31
	;;
	st4 [r15] = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L436
	adds r14 = -16, r2
	;;
	ldfs f6 = [r14]
	;;
	fmpy.s f6 = f6, f6
	;;
	getf.s r14 = f6
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	br .L434
	;;
.L436:
	nop 0
.L429:
	mov r14 = r2
	;;
	ldfs f6 = [r14]
	;;
	mov f8 = f6
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	stfd [r14] = f8
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	mov r15 = r2
	mov r14 = r2
	;;
	ldfd f7 = [r15]
	ldfd f6 = [r14]
	;;
	fcmp.unord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L438
	mov r14 = r2
	;;
	ldfd f6 = [r14]
	;;
	fadd.d f6 = f6, f6
	mov r14 = r2
	;;
	ldfd f7 = [r14]
	;;
	fcmp.eq p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L438
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L439
	movl r14 = 0x3fe0000000000000
	;;
	setf.d f6 = r14
	br .L440
	;;
.L439:
	movl r15 = 0x4000000000000000
	;;
	setf.d f6 = r15
.L440:
	;;
	getf.d r15 = f6
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
.L443:
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L441
	mov r14 = r2
	mov r15 = r2
	;;
	ldfd f7 = [r15]
	adds r15 = -16, r2
	;;
	ldfd f6 = [r15]
	;;
	fmpy.d f6 = f7, f6
	;;
	stfd [r14] = f6
.L441:
	adds r15 = 8, r2
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r16 = r14, 31, 1
	;;
	add r14 = r16, r14
	;;
	extr r14 = r14, 1, 31
	;;
	st4 [r15] = r14
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L445
	adds r14 = -16, r2
	;;
	ldfd f6 = [r14]
	;;
	fmpy.d f6 = f6, f6
	;;
	getf.d r14 = f6
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	br .L443
	;;
.L445:
	nop 0
.L438:
	mov r14 = r2
	;;
	ldfd f6 = [r14]
	;;
	mov f8 = f6
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	;;
	.endp ldexp#
	.section	.rodata
	.align 16
.LC2:
	data4	0
	data4	-2147483648
	data4	16382
	data4	0
	.align 16
.LC3:
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	stfe [r14] = f8
	mov r14 = r2
	;;
	st4 [r14] = r34
	adds r15 = -16, r2
	adds r14 = -16, r2
	;;
	ldfe f7 = [r15]
	ldfe f6 = [r14]
	;;
	fcmp.unord p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L447
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	;;
	fadd f6 = f6, f6
	adds r14 = -16, r2
	;;
	ldfe f7 = [r14]
	;;
	fcmp.eq p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L447
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L448
	movl r14 = @gprel(.LC2)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
	br .L449
	;;
.L448:
	movl r14 = @gprel(.LC3)
	;;
	add r14 = r1, r14
	;;
	ldfe f6 = [r14]
.L449:
	adds r14 = -32, r2
	;;
	stfe [r14] = f6
.L452:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L450
	adds r14 = -16, r2
	adds r15 = -16, r2
	;;
	ldfe f7 = [r15]
	adds r15 = -32, r2
	;;
	ldfe f6 = [r15]
	;;
	fmpy f6 = f7, f6
	;;
	stfe [r14] = f6
.L450:
	mov r15 = r2
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r16 = r14, 31, 1
	;;
	add r14 = r16, r14
	;;
	extr r14 = r14, 1, 31
	;;
	st4 [r15] = r14
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L454
	adds r14 = -32, r2
	;;
	ldfe f6 = [r14]
	;;
	fmpy f6 = f6, f6
	adds r15 = -32, r2
	;;
	stfe [r15] = f6
	br .L452
	;;
.L454:
	nop 0
.L447:
	adds r14 = -16, r2
	;;
	ldfe f6 = [r14]
	;;
	mov f8 = f6
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st8 [r14] = r34
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	adds r15 = -16, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	br .L456
	;;
.L457:
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r15 = 1, r14
	adds r16 = -32, r2
	;;
	st8 [r16] = r15
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r17 = r14
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -24, r2
	;;
	adds r16 = 1, r14
	;;
	st8 [r15] = r16
	ld1 r15 = [r14]
	;;
	sxt1 r15 = r15
	sxt1 r16 = r17
	;;
	sxt1 r15 = r15
	;;
	xor r15 = r15, r16
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L456:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L457
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
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
	adds r12 = -48, r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	;;
	adds r14 = -16, r37
	;;
	st8 [r14] = r32
	adds r14 = -8, r37
	;;
	st8 [r14] = r33
	mov r14 = r37
	;;
	st8 [r14] = r34
	adds r14 = -16, r37
	;;
	ld8 r39 = [r14]
	br.call.sptk.many b0 = strlen#
	mov r1 = r38
	mov r15 = r8
	adds r14 = -16, r37
	;;
	ld8 r14 = [r14]
	;;
	add r14 = r14, r15
	adds r15 = -32, r37
	;;
	st8 [r15] = r14
	br .L460
	;;
.L462:
	adds r14 = -8, r37
	adds r15 = -8, r37
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
	adds r16 = -32, r37
	;;
	ld8 r14 = [r16]
	;;
	adds r14 = 1, r14
	adds r15 = -32, r37
	;;
	st8 [r15] = r14
	mov r14 = r37
	mov r15 = r37
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st8 [r14] = r15
.L460:
	mov r14 = r37
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L461
	adds r14 = -8, r37
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	adds r16 = -32, r37
	;;
	ld8 r14 = [r16]
	;;
	st1 [r14] = r15
	adds r15 = -32, r37
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L462
.L461:
	mov r14 = r37
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L463
	adds r16 = -32, r37
	;;
	ld8 r14 = [r16]
	;;
	st1 [r14] = r0
.L463:
	adds r14 = -16, r37
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	adds r14 = -16, r2
	;;
	st8 [r14] = r0
	br .L466
	;;
.L471:
	nop 0
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -16, r2
	;;
	st8 [r16] = r14
.L466:
	adds r14 = 8, r2
	adds r16 = -16, r2
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	cmp.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L467
	mov r14 = r2
	;;
	ld8 r15 = [r14]
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	add r14 = r15, r14
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L471
.L467:
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	br .L473
	;;
.L477:
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	br .L474
	;;
.L476:
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r15 = 1, r14
	adds r16 = -16, r2
	;;
	st8 [r16] = r15
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L474
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	br .L475
	;;
.L474:
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L476
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st8 [r14] = r15
.L473:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L477
	mov r14 = r0
.L475:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	mov r14 = r32
	;;
	mov r15 = r2
	;;
	st4 [r15] = r33
	adds r15 = -16, r2
	;;
	st8 [r15] = r0
.L480:
	ld1 r15 = [r14]
	;;
	sxt1 r15 = r15
	;;
	mov r16 = r15
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	cmp4.ne p6, p7 = r16, r15
	(p6) br.cond.dptk .L479
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
.L479:
	mov r15 = r14
	;;
	adds r14 = 1, r15
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L480
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	mov r8 = r14
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
	.prologue 14, 35
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 2, 5, 3, 0
	.vframe r37
	mov r37 = r12
	adds r12 = -32, r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	;;
	mov r14 = r37
	;;
	st8 [r14] = r32
	adds r14 = 8, r37
	;;
	st8 [r14] = r33
	mov r14 = r37
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r37
	;;
	st8 [r15] = r14
	adds r34 = -8, r37
	adds r14 = 8, r37
	;;
	ld8 r39 = [r14]
	br.call.sptk.many b0 = strlen#
	mov r1 = r38
	st8 [r34] = r8
	adds r14 = -8, r37
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L485
	mov r14 = r37
	;;
	ld8 r14 = [r14]
	br .L484
	;;
.L487:
	adds r15 = -8, r37
	adds r14 = 8, r37
	;;
	ld8 r41 = [r15]
	ld8 r40 = [r14]
	adds r14 = -16, r37
	;;
	ld8 r39 = [r14]
	br.call.sptk.many b0 = strncmp#
	mov r1 = r38
	mov r14 = r8
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L486
	adds r15 = -16, r37
	;;
	ld8 r14 = [r15]
	br .L484
	;;
.L486:
	adds r15 = -16, r37
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r15 = -16, r37
	;;
	st8 [r15] = r14
.L485:
	adds r14 = 8, r37
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r40 = r14
	adds r14 = -16, r37
	;;
	ld8 r39 = [r14]
	br.call.sptk.many b0 = strchr#
	mov r1 = r38
	adds r15 = -16, r37
	;;
	st8 [r15] = r8
	adds r15 = -16, r37
	;;
	ld8 r14 = [r15]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L487
	mov r14 = r0
.L484:
	;;
	mov r8 = r14
	mov ar.pfs = r36
	mov b0 = r35
	.restore sp
	mov r12 = r37
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
	;;
	stfd [r2] = f8
	adds r14 = 8, r2
	;;
	stfd [r14] = f9
	ldfd f6 = [r2]
	;;
	fcmp.lt p6, p7 = f6, f0
	;;
	(p7) br.cond.dptk .L489
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
	;;
	fcmp.gt p6, p7 = f6, f0
	;;
	(p6) br.cond.dptk .L491
.L489:
	ldfd f6 = [r2]
	;;
	fcmp.gt p6, p7 = f6, f0
	;;
	(p7) br.cond.dptk .L492
	adds r14 = 8, r2
	;;
	ldfd f6 = [r14]
	;;
	fcmp.lt p6, p7 = f6, f0
	;;
	(p7) br.cond.dptk .L492
.L491:
	ldfd f6 = [r2]
	;;
	fneg f6 = f6
	br .L495
	;;
.L492:
	ldfd f6 = [r2]
.L495:
	;;
	mov f8 = f6
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
	.prologue 14, 36
	.save ar.pfs, r37
	alloc r37 = ar.pfs, 4, 4, 3, 0
	.vframe r38
	mov r38 = r12
	adds r12 = -48, r12
	.save rp, r36
	mov r36 = b0
	mov r39 = r1
	.body
	;;
	adds r14 = -16, r38
	;;
	st8 [r14] = r32
	adds r14 = -8, r38
	;;
	st8 [r14] = r33
	mov r14 = r38
	;;
	st8 [r14] = r34
	adds r14 = 8, r38
	;;
	st8 [r14] = r35
	adds r15 = -8, r38
	adds r14 = 8, r38
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	sub r15 = r15, r14
	adds r14 = -24, r38
	adds r16 = -16, r38
	;;
	ld8 r16 = [r16]
	;;
	add r15 = r16, r15
	;;
	st8 [r14] = r15
	adds r14 = 8, r38
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L499
	adds r14 = -16, r38
	;;
	ld8 r14 = [r14]
	br .L500
	;;
.L499:
	adds r15 = -8, r38
	adds r14 = 8, r38
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	cmp.gtu p6, p7 = r14, r15
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	zxt1 r14 = r14
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L501
	mov r14 = r0
	br .L500
	;;
.L501:
	adds r14 = -16, r38
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r38
	;;
	st8 [r15] = r14
	br .L502
	;;
.L504:
	adds r16 = -32, r38
	;;
	ld8 r14 = [r16]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	mov r15 = r14
	mov r14 = r38
	;;
	ld8 r14 = [r14]
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = r14, r15
	(p6) br.cond.dptk .L503
	adds r15 = -32, r38
	;;
	ld8 r14 = [r15]
	;;
	adds r15 = 1, r14
	mov r14 = r38
	;;
	ld8 r14 = [r14]
	;;
	adds r16 = 1, r14
	adds r14 = 8, r38
	;;
	ld8 r14 = [r14]
	;;
	adds r14 = -1, r14
	;;
	mov r42 = r14
	mov r41 = r16
	mov r40 = r15
	br.call.sptk.many b0 = memcmp#
	mov r1 = r39
	mov r14 = r8
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L503
	adds r16 = -32, r38
	;;
	ld8 r14 = [r16]
	br .L500
	;;
.L503:
	adds r15 = -32, r38
	;;
	ld8 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -32, r38
	;;
	st8 [r16] = r14
.L502:
	adds r14 = -24, r38
	adds r16 = -32, r38
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	cmp.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L504
	mov r14 = r0
.L500:
	;;
	mov r8 = r14
	mov ar.pfs = r37
	mov b0 = r36
	.restore sp
	mov r12 = r38
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
	adds r12 = -32, r12
	.save rp, r35
	mov r35 = b0
	mov r38 = r1
	.body
	;;
	adds r14 = -16, r37
	;;
	st8 [r14] = r32
	adds r14 = -8, r37
	;;
	st8 [r14] = r33
	mov r14 = r37
	;;
	st8 [r14] = r34
	mov r15 = r37
	adds r14 = -8, r37
	;;
	ld8 r41 = [r15]
	ld8 r40 = [r14]
	adds r14 = -16, r37
	;;
	ld8 r39 = [r14]
	br.call.sptk.many b0 = memcpy#
	mov r1 = r38
	mov r15 = r8
	mov r14 = r37
	;;
	ld8 r14 = [r14]
	;;
	add r14 = r15, r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	stfd [r14] = f8
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	adds r14 = -12, r2
	;;
	st4 [r14] = r0
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	mov r14 = r2
	;;
	ldfd f6 = [r14]
	;;
	fcmp.lt p6, p7 = f6, f0
	;;
	(p7) br.cond.dptk .L508
	mov r14 = r2
	mov r15 = r2
	;;
	ldfd f6 = [r15]
	;;
	fneg f6 = f6
	;;
	stfd [r14] = f6
	addl r14 = 1, r0
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
.L508:
	mov r14 = r2
	;;
	ldfd f6 = [r14]
	;;
	fcmp.ge p6, p7 = f6, f1
	;;
	(p7) br.cond.dptk .L523
	br .L512
	;;
.L513:
	adds r14 = -12, r2
	adds r15 = -12, r2
	;;
	ld4 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st4 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ldfd f7 = [r15]
	movl r15 = 0x4000000000000000
	;;
	setf.d f6 = r15
	mov f8 = f7
	;;
	mov f7 = f6
	;;
	frcpa.s0 f6, p6 = f8, f7
	;;
	(p6) fnma.s1 f9 = f7, f6, f1
	;;
	(p6) fma.s1 f10 = f6, f9, f6
	(p6) fmpy.s1 f9 = f9, f9
	;;
	(p6) fma.s1 f10 = f10, f9, f10
	(p6) fmpy.s1 f9 = f9, f9
	;;
	(p6) fma.s1 f9 = f10, f9, f10
	;;
	(p6) fmpy.d.s1 f10 = f8, f9
	;;
	(p6) fnma.s1 f7 = f7, f10, f8
	;;
	(p6) fma.d.s0 f6 = f7, f9, f10
	;;
	mov f6 = f6
	;;
	stfd [r14] = f6
.L512:
	mov r14 = r2
	;;
	ldfd f6 = [r14]
	;;
	fcmp.ge p6, p7 = f6, f1
	;;
	(p6) br.cond.dptk .L513
	br .L514
	;;
.L523:
	mov r14 = r2
	;;
	ldfd f7 = [r14]
	movl r14 = 0x3fe0000000000000
	;;
	setf.d f6 = r14
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L514
	mov r14 = r2
	;;
	ldfd f6 = [r14]
	;;
	fcmp.eq p6, p7 = f6, f0
	;;
	(p6) br.cond.dptk .L514
	br .L516
	;;
.L517:
	adds r14 = -12, r2
	adds r15 = -12, r2
	;;
	ld4 r15 = [r15]
	;;
	adds r15 = -1, r15
	;;
	st4 [r14] = r15
	mov r14 = r2
	mov r15 = r2
	;;
	ldfd f6 = [r15]
	;;
	fadd.d f6 = f6, f6
	;;
	stfd [r14] = f6
.L516:
	mov r14 = r2
	;;
	ldfd f7 = [r14]
	movl r15 = 0x3fe0000000000000
	;;
	setf.d f6 = r15
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p6) br.cond.dptk .L517
.L514:
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	adds r15 = -12, r2
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L518
	mov r14 = r2
	mov r15 = r2
	;;
	ldfd f6 = [r15]
	;;
	fneg f6 = f6
	;;
	stfd [r14] = f6
.L518:
	mov r14 = r2
	;;
	ldfd f6 = [r14]
	;;
	mov f8 = f6
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	adds r14 = -16, r2
	;;
	st8 [r14] = r0
	adds r14 = -8, r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	br .L525
	;;
.L527:
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L526
	adds r14 = 8, r2
	adds r16 = -16, r2
	;;
	ld8 r15 = [r16]
	ld8 r14 = [r14]
	;;
	add r14 = r15, r14
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
.L526:
	adds r14 = 8, r2
	adds r15 = 8, r2
	;;
	ld8 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st8 [r14] = r15
	adds r14 = -8, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	shr.u r15 = r15, 1
	;;
	st8 [r14] = r15
.L525:
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L527
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	;;
	st8 [r14] = r34
	addl r14 = 1, r0
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r14 = -12, r2
	;;
	st4 [r14] = r0
	br .L530
	;;
.L532:
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st4 [r14] = r15
	adds r17 = -16, r2
	;;
	ld4 r14 = [r17]
	;;
	shladd r14 = r14, 1, r0
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
.L530:
	adds r15 = 4, r2
	mov r14 = r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L533
	adds r17 = -16, r2
	;;
	ld4 r14 = [r17]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L533
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L532
	br .L533
	;;
.L535:
	mov r15 = r2
	adds r14 = 4, r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L534
	mov r14 = r2
	mov r16 = r2
	adds r15 = 4, r2
	;;
	ld4 r16 = [r16]
	ld4 r15 = [r15]
	;;
	sub r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	adds r15 = -12, r2
	;;
	ld4 r16 = [r15]
	adds r17 = -16, r2
	;;
	ld4 r15 = [r17]
	;;
	or r15 = r15, r16
	;;
	st4 [r14] = r15
.L534:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	extr.u r14 = r14, 1, 31
	adds r17 = -16, r2
	;;
	st4 [r17] = r14
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 1, 31
	;;
	st4 [r14] = r15
.L533:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L535
	adds r14 = 8, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L536
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	br .L537
	;;
.L536:
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
.L537:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st1 [r14] = r32
	mov r14 = r2
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L539
	mov r14 = r2
	mov r15 = r2
	;;
	ld1 r15 = [r15]
	;;
	andcm r15 = -1, r15
	;;
	st1 [r14] = r15
.L539:
	mov r14 = r2
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L540
	addl r14 = 7, r0
	br .L541
	;;
.L540:
	mov r14 = r2
	;;
	ld1 r14 = [r14]
	;;
	sxt1 r14 = r14
	;;
	dep.z r14 = r14, 8, 24
	;;
	addp4 r14 = r14, r0
	;;
	setf.sig f7 = r14
	;;
	fcvt.xuf f6 = f7
	;;
	getf.exp r14 = f6
	addl r15 = 65598, r0
	;;
	sub r14 = r15, r14
	;;
	adds r14 = -32, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = -1, r14
.L541:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L543
	mov r14 = r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	andcm r15 = -1, r15
	;;
	st8 [r14] = r15
.L543:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L544
	addl r14 = 63, r0
	br .L545
	;;
.L544:
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	;;
	setf.sig f7 = r14
	;;
	fcvt.xuf f6 = f7
	;;
	getf.exp r14 = f6
	addl r15 = 65598, r0
	;;
	sub r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = -1, r14
.L545:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	br .L547
	;;
.L549:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L548
	adds r14 = 4, r2
	adds r16 = -16, r2
	;;
	ld4 r15 = [r16]
	ld4 r14 = [r14]
	;;
	add r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
.L548:
	mov r14 = r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 1, 31
	;;
	st4 [r14] = r15
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st4 [r14] = r15
.L547:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L549
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	mov r8 = r14
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
	adds r12 = -48, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st4 [r14] = r34
	adds r14 = -40, r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 3, 29
	;;
	st4 [r14] = r15
	adds r14 = -44, r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	and r15 = -8, r15
	;;
	st4 [r14] = r15
	adds r14 = -32, r2
	adds r15 = -16, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r15 = -32, r2
	adds r14 = -24, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	cmp.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L552
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	add r14 = r15, r14
	adds r15 = -32, r2
	;;
	ld8 r15 = [r15]
	;;
	cmp.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L559
.L552:
	adds r14 = -48, r2
	;;
	st4 [r14] = r0
	br .L554
	;;
.L555:
	adds r15 = -48, r2
	;;
	ld4 r14 = [r15]
	;;
	shladd r14 = r14, 3, r0
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	shladd r14 = r14, 3, r0
	adds r16 = -16, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r15 = -48, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -48, r2
	;;
	st4 [r16] = r14
.L554:
	adds r14 = -40, r2
	adds r16 = -48, r2
	;;
	ld4 r15 = [r16]
	ld4 r14 = [r14]
	;;
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L555
	br .L556
	;;
.L557:
	adds r14 = -44, r2
	;;
	ld4 r14 = [r14]
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	adds r14 = -44, r2
	;;
	ld4 r14 = [r14]
	adds r16 = -32, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
	adds r14 = -44, r2
	adds r15 = -44, r2
	;;
	ld4 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st4 [r14] = r15
.L556:
	mov r15 = r2
	adds r14 = -44, r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.ltu p6, p7 = r14, r15
	(p6) br.cond.dptk .L557
	br .L558
	;;
.L560:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r16 = -32, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
.L559:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st4 [r15] = r16
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L560
	nop 0
.L558:
	nop 0
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
	adds r12 = -48, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st4 [r14] = r34
	adds r14 = -44, r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 1, 31
	;;
	st4 [r14] = r15
	adds r14 = -40, r2
	adds r15 = -16, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -32, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r15 = -40, r2
	adds r14 = -32, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	cmp.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L562
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -32, r2
	;;
	ld8 r15 = [r15]
	;;
	add r14 = r15, r14
	adds r15 = -40, r2
	;;
	ld8 r15 = [r15]
	;;
	cmp.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L568
.L562:
	adds r14 = -48, r2
	;;
	st4 [r14] = r0
	br .L564
	;;
.L565:
	adds r15 = -48, r2
	;;
	ld4 r14 = [r15]
	;;
	shladd r14 = r14, 1, r0
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	shladd r14 = r14, 1, r0
	adds r16 = -16, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld2 r15 = [r15]
	;;
	sxt2 r15 = r15
	;;
	st2 [r14] = r15
	adds r15 = -48, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -48, r2
	;;
	st4 [r16] = r14
.L564:
	adds r14 = -44, r2
	adds r16 = -48, r2
	;;
	ld4 r15 = [r16]
	ld4 r14 = [r14]
	;;
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L565
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L567
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	adds r14 = -1, r14
	;;
	addp4 r15 = r14, r0
	adds r14 = -32, r2
	;;
	ld8 r14 = [r14]
	;;
	add r15 = r14, r15
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	adds r14 = -1, r14
	;;
	addp4 r16 = r14, r0
	adds r14 = -40, r2
	;;
	ld8 r14 = [r14]
	;;
	add r14 = r14, r16
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
	br .L567
	;;
.L569:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -32, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r16 = -40, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
.L568:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st4 [r15] = r16
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L569
	nop 0
.L567:
	nop 0
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
	adds r12 = -48, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st4 [r14] = r34
	adds r14 = -40, r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 2, 30
	;;
	st4 [r14] = r15
	adds r14 = -44, r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	and r15 = -4, r15
	;;
	st4 [r14] = r15
	adds r14 = -32, r2
	adds r15 = -16, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -24, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r15 = -32, r2
	adds r14 = -24, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	cmp.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L571
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	add r14 = r15, r14
	adds r15 = -32, r2
	;;
	ld8 r15 = [r15]
	;;
	cmp.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L578
.L571:
	adds r14 = -48, r2
	;;
	st4 [r14] = r0
	br .L573
	;;
.L574:
	adds r15 = -48, r2
	;;
	ld4 r14 = [r15]
	;;
	shladd r14 = r14, 2, r0
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	shladd r14 = r14, 2, r0
	adds r16 = -16, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
	adds r15 = -48, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -48, r2
	;;
	st4 [r16] = r14
.L573:
	adds r14 = -40, r2
	adds r16 = -48, r2
	;;
	ld4 r15 = [r16]
	ld4 r14 = [r14]
	;;
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L574
	br .L575
	;;
.L576:
	adds r14 = -44, r2
	;;
	ld4 r14 = [r14]
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	adds r14 = -44, r2
	;;
	ld4 r14 = [r14]
	adds r16 = -32, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
	adds r14 = -44, r2
	adds r15 = -44, r2
	;;
	ld4 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st4 [r14] = r15
.L575:
	mov r15 = r2
	adds r14 = -44, r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.ltu p6, p7 = r14, r15
	(p6) br.cond.dptk .L576
	br .L577
	;;
.L579:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -24, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r14
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r16 = -32, r2
	;;
	ld8 r16 = [r16]
	;;
	add r14 = r16, r14
	ld1 r15 = [r15]
	;;
	sxt1 r15 = r15
	;;
	st1 [r14] = r15
.L578:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	mov r15 = r2
	;;
	adds r16 = -1, r14
	;;
	st4 [r15] = r16
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L579
	nop 0
.L577:
	nop 0
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
	adds r12 = -16, r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	;;
	st4 [r36] = r32
	adds r14 = 4, r36
	;;
	st4 [r14] = r33
	adds r14 = 4, r36
	ld4 r15 = [r36]
	;;
	sxt4 r15 = r15
	ld4 r14 = [r14]
	;;
	sxt4 r14 = r14
	;;
	mov r39 = r14
	mov r38 = r15
	br.call.sptk.many b0 = __moddi3#
	mov r1 = r37
	mov r14 = r8
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	setf.sig f7 = r14
	;;
	fcvt.xuf.d f6 = f7
	;;
	mov f8 = f6
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	setf.sig f7 = r14
	;;
	fcvt.xuf.s f6 = f7
	;;
	mov f8 = f6
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
	;;
	st8 [r2] = r32
	ld8 r14 = [r2]
	;;
	setf.sig f7 = r14
	;;
	fcvt.xuf.d f6 = f7
	;;
	mov f8 = f6
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
	;;
	st8 [r2] = r32
	ld8 r14 = [r2]
	;;
	setf.sig f7 = r14
	;;
	fcvt.xuf.s f6 = f7
	;;
	mov f8 = f6
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
	adds r12 = -16, r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	;;
	st4 [r36] = r32
	adds r14 = 4, r36
	;;
	st4 [r14] = r33
	adds r14 = 4, r36
	ld4 r15 = [r36]
	;;
	ld4 r14 = [r14]
	;;
	mov r39 = r14
	mov r38 = r15
	br.call.sptk.many b0 = __umoddi3#
	mov r1 = r37
	mov r14 = r8
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st2 [r14] = r32
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	br .L593
	;;
.L596:
	mov r14 = r2
	;;
	ld2 r14 = [r14]
	;;
	mov r16 = r14
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	sub r15 = 15, r14
	sxt4 r14 = r16
	;;
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L598
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
.L593:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	cmp4.ge p6, p7 = 15, r14
	(p6) br.cond.dptk .L596
	br .L595
	;;
.L598:
	nop 0
.L595:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st2 [r14] = r32
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	br .L600
	;;
.L603:
	mov r14 = r2
	;;
	ld2 r14 = [r14]
	adds r16 = -16, r2
	;;
	ld4 r15 = [r16]
	sxt4 r14 = r14
	;;
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L605
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
.L600:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	cmp4.ge p6, p7 = 15, r14
	(p6) br.cond.dptk .L603
	br .L602
	;;
.L605:
	nop 0
.L602:
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	mov r8 = r14
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
	;;
	stfs [r3] = f8
	ldfs f7 = [r3]
	movl r14 = 0x47000000
	;;
	setf.s f6 = r14
	;;
	fcmp.ge p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L611
	ldfs f7 = [r3]
	movl r14 = 0x47000000
	;;
	setf.s f6 = r14
	;;
	fsub.s f6 = f7, f6
	;;
	fcvt.fx.trunc f6 = f6
	;;
	getf.sig r2 = f6
	;;
	addl r14 = 32768, r2
	br .L609
	;;
.L611:
	ldfs f6 = [r3]
	;;
	fcvt.fx.trunc f6 = f6
	;;
	getf.sig r14 = f6
.L609:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st2 [r14] = r32
	adds r14 = -12, r2
	;;
	st4 [r14] = r0
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	br .L613
	;;
.L615:
	mov r14 = r2
	;;
	ld2 r14 = [r14]
	adds r16 = -16, r2
	;;
	ld4 r15 = [r16]
	sxt4 r14 = r14
	;;
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L614
	adds r14 = -12, r2
	adds r15 = -12, r2
	;;
	ld4 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st4 [r14] = r15
.L614:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
.L613:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	cmp4.ge p6, p7 = 15, r14
	(p6) br.cond.dptk .L615
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st2 [r14] = r32
	adds r14 = -12, r2
	;;
	st4 [r14] = r0
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	br .L618
	;;
.L620:
	mov r14 = r2
	;;
	ld2 r14 = [r14]
	adds r16 = -16, r2
	;;
	ld4 r15 = [r16]
	sxt4 r14 = r14
	;;
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L619
	adds r14 = -12, r2
	adds r15 = -12, r2
	;;
	ld4 r15 = [r15]
	;;
	adds r15 = 1, r15
	;;
	st4 [r14] = r15
.L619:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	adds r14 = 1, r14
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
.L618:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	cmp4.ge p6, p7 = 15, r14
	(p6) br.cond.dptk .L620
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	br .L623
	;;
.L625:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L624
	adds r14 = 4, r2
	adds r16 = -16, r2
	;;
	ld4 r15 = [r16]
	ld4 r14 = [r14]
	;;
	add r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
.L624:
	mov r14 = r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 1, 31
	;;
	st4 [r14] = r15
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st4 [r14] = r15
.L623:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L625
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L630
	mov r14 = r0
	br .L629
	;;
.L632:
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L631
	mov r14 = r2
	adds r16 = -16, r2
	;;
	ld4 r15 = [r16]
	ld4 r14 = [r14]
	;;
	add r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
.L631:
	mov r14 = r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st4 [r14] = r15
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 1, 31
	;;
	st4 [r14] = r15
.L630:
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L632
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
.L629:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	;;
	st4 [r14] = r34
	addl r14 = 1, r0
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r14 = -12, r2
	;;
	st4 [r14] = r0
	br .L634
	;;
.L636:
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st4 [r14] = r15
	adds r17 = -16, r2
	;;
	ld4 r14 = [r17]
	;;
	shladd r14 = r14, 1, r0
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
.L634:
	adds r15 = 4, r2
	mov r14 = r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L637
	adds r17 = -16, r2
	;;
	ld4 r14 = [r17]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L637
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L636
	br .L637
	;;
.L639:
	mov r15 = r2
	adds r14 = 4, r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L638
	mov r14 = r2
	mov r16 = r2
	adds r15 = 4, r2
	;;
	ld4 r16 = [r16]
	ld4 r15 = [r15]
	;;
	sub r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	adds r15 = -12, r2
	;;
	ld4 r16 = [r15]
	adds r17 = -16, r2
	;;
	ld4 r15 = [r17]
	;;
	or r15 = r15, r16
	;;
	st4 [r14] = r15
.L638:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	extr.u r14 = r14, 1, 31
	adds r17 = -16, r2
	;;
	st4 [r17] = r14
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	extr.u r15 = r15, 1, 31
	;;
	st4 [r14] = r15
.L637:
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L639
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L640
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	br .L641
	;;
.L640:
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
.L641:
	;;
	mov r8 = r14
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
	;;
	stfs [r2] = f8
	adds r14 = 4, r2
	;;
	stfs [r14] = f9
	adds r14 = 4, r2
	ldfs f7 = [r2]
	;;
	ldfs f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L650
	addl r14 = -1, r0
	br .L645
	;;
.L650:
	adds r14 = 4, r2
	ldfs f7 = [r2]
	;;
	ldfs f6 = [r14]
	;;
	fcmp.gt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L651
	addl r14 = 1, r0
	br .L645
	;;
.L651:
	mov r14 = r0
.L645:
	;;
	mov r8 = r14
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
	;;
	stfd [r2] = f8
	adds r14 = 8, r2
	;;
	stfd [r14] = f9
	adds r14 = 8, r2
	ldfd f7 = [r2]
	;;
	ldfd f6 = [r14]
	;;
	fcmp.lt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L660
	addl r14 = -1, r0
	br .L655
	;;
.L660:
	adds r14 = 8, r2
	ldfd f7 = [r2]
	;;
	ldfd f6 = [r14]
	;;
	fcmp.gt p6, p7 = f7, f6
	;;
	(p7) br.cond.dptk .L661
	addl r14 = 1, r0
	br .L655
	;;
.L661:
	mov r14 = r0
.L655:
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	adds r14 = 8, r2
	ld8 r15 = [r2]
	;;
	ld8 r14 = [r14]
	setf.sig f6 = r15
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r14 = f6
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	adds r14 = 8, r2
	ld8 r15 = [r2]
	;;
	ld8 r14 = [r14]
	setf.sig f6 = r15
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r14 = f6
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r14 = -12, r2
	;;
	st4 [r14] = r0
	adds r14 = -8, r2
	;;
	st4 [r14] = r0
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L667
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	sub r15 = r0, r15
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	addl r15 = 1, r0
	;;
	st4 [r14] = r15
.L667:
	adds r14 = -16, r2
	;;
	st1 [r14] = r0
	br .L668
	;;
.L671:
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L669
	adds r14 = -8, r2
	adds r16 = -8, r2
	mov r15 = r2
	;;
	ld4 r16 = [r16]
	ld4 r15 = [r15]
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
.L669:
	mov r14 = r2
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st4 [r14] = r15
	adds r14 = 4, r2
	adds r15 = 4, r2
	;;
	ld4 r15 = [r15]
	;;
	extr r15 = r15, 1, 31
	;;
	st4 [r14] = r15
	adds r15 = -16, r2
	;;
	ld1 r14 = [r15]
	;;
	sxt1 r14 = r14
	;;
	zxt1 r14 = r14
	;;
	adds r14 = 1, r14
	;;
	zxt1 r14 = r14
	adds r15 = -16, r2
	;;
	st1 [r15] = r14
.L668:
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L670
	adds r15 = -16, r2
	;;
	ld1 r14 = [r15]
	;;
	cmp4.geu p6, p7 = 31, r14
	(p6) br.cond.dptk .L671
.L670:
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L672
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r14 = r0, r14
	br .L674
	;;
.L672:
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
.L674:
	;;
	mov r8 = r14
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
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 4, 3, 0
	.vframe r36
	mov r36 = r12
	adds r12 = -32, r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	;;
	mov r14 = r36
	;;
	st8 [r14] = r32
	adds r14 = 8, r36
	;;
	st8 [r14] = r33
	adds r14 = -16, r36
	;;
	st4 [r14] = r0
	mov r14 = r36
	;;
	ld8 r14 = [r14]
	;;
	cmp.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L676
	mov r14 = r36
	mov r15 = r36
	;;
	ld8 r15 = [r15]
	;;
	sub r15 = r0, r15
	;;
	st8 [r14] = r15
	adds r15 = -16, r36
	;;
	ld4 r14 = [r15]
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	adds r15 = -16, r36
	;;
	st4 [r15] = r14
.L676:
	adds r14 = 8, r36
	;;
	ld8 r14 = [r14]
	;;
	cmp.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L677
	adds r14 = 8, r36
	adds r15 = 8, r36
	;;
	ld8 r15 = [r15]
	;;
	sub r15 = r0, r15
	;;
	st8 [r14] = r15
	adds r15 = -16, r36
	;;
	ld4 r14 = [r15]
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	adds r15 = -16, r36
	;;
	st4 [r15] = r14
.L677:
	mov r14 = r36
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = 8, r36
	;;
	ld8 r14 = [r14]
	mov r40 = r0
	;;
	mov r39 = r14
	mov r38 = r15
	br.call.sptk.many b0 = __udivmodsi4#
	mov r1 = r37
	mov r15 = r8
	adds r14 = -8, r36
	;;
	addp4 r15 = r15, r0
	;;
	st8 [r14] = r15
	adds r15 = -16, r36
	;;
	ld4 r14 = [r15]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L678
	adds r14 = -8, r36
	adds r15 = -8, r36
	;;
	ld8 r15 = [r15]
	;;
	sub r15 = r0, r15
	;;
	st8 [r14] = r15
.L678:
	adds r14 = -8, r36
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
	br.ret.sptk.many b0
	;;
	.endp __divsi3#
	.align 16
	.global __modsi3#
	.type	__modsi3#, @function
	.proc __modsi3#
__modsi3:
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 4, 3, 0
	.vframe r36
	mov r36 = r12
	adds r12 = -32, r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	;;
	mov r14 = r36
	;;
	st8 [r14] = r32
	adds r14 = 8, r36
	;;
	st8 [r14] = r33
	adds r14 = -16, r36
	;;
	st4 [r14] = r0
	mov r14 = r36
	;;
	ld8 r14 = [r14]
	;;
	cmp.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L681
	mov r14 = r36
	mov r15 = r36
	;;
	ld8 r15 = [r15]
	;;
	sub r15 = r0, r15
	;;
	st8 [r14] = r15
	addl r14 = 1, r0
	adds r15 = -16, r36
	;;
	st4 [r15] = r14
.L681:
	adds r14 = 8, r36
	;;
	ld8 r14 = [r14]
	;;
	cmp.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L682
	adds r14 = 8, r36
	adds r15 = 8, r36
	;;
	ld8 r15 = [r15]
	;;
	sub r15 = r0, r15
	;;
	st8 [r14] = r15
.L682:
	mov r14 = r36
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = 8, r36
	;;
	ld8 r14 = [r14]
	addl r40 = 1, r0
	;;
	mov r39 = r14
	mov r38 = r15
	br.call.sptk.many b0 = __udivmodsi4#
	mov r1 = r37
	mov r15 = r8
	adds r14 = -8, r36
	;;
	addp4 r15 = r15, r0
	;;
	st8 [r14] = r15
	adds r15 = -16, r36
	;;
	ld4 r14 = [r15]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L683
	adds r14 = -8, r36
	adds r15 = -8, r36
	;;
	ld8 r15 = [r15]
	;;
	sub r15 = r0, r15
	;;
	st8 [r14] = r15
.L683:
	adds r14 = -8, r36
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st2 [r14] = r32
	adds r14 = 2, r2
	;;
	st2 [r14] = r33
	adds r14 = 4, r2
	;;
	st4 [r14] = r34
	addl r14 = 1, r0
	adds r15 = -16, r2
	;;
	st2 [r15] = r14
	adds r14 = -14, r2
	;;
	st2 [r14] = r0
	br .L686
	;;
.L688:
	adds r14 = 2, r2
	adds r15 = 2, r2
	;;
	ld2 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st2 [r14] = r15
	adds r17 = -16, r2
	;;
	ld2 r14 = [r17]
	;;
	shladd r14 = r14, 1, r0
	adds r15 = -16, r2
	;;
	st2 [r15] = r14
.L686:
	adds r15 = 2, r2
	mov r14 = r2
	;;
	ld2 r15 = [r15]
	ld2 r14 = [r14]
	;;
	cmp4.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L689
	adds r17 = -16, r2
	;;
	ld2 r14 = [r17]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L689
	adds r14 = 2, r2
	;;
	ld2 r14 = [r14]
	;;
	sxt2 r14 = r14
	;;
	cmp4.le p6, p7 = r0, r14
	(p6) br.cond.dptk .L688
	br .L689
	;;
.L691:
	mov r15 = r2
	adds r14 = 2, r2
	;;
	ld2 r15 = [r15]
	ld2 r14 = [r14]
	;;
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L690
	mov r14 = r2
	mov r16 = r2
	adds r15 = 2, r2
	;;
	ld2 r16 = [r16]
	ld2 r15 = [r15]
	;;
	sub r15 = r16, r15
	;;
	st2 [r14] = r15
	adds r14 = -14, r2
	adds r15 = -14, r2
	;;
	ld2 r16 = [r15]
	adds r17 = -16, r2
	;;
	ld2 r15 = [r17]
	;;
	or r15 = r15, r16
	;;
	st2 [r14] = r15
.L690:
	adds r15 = -16, r2
	;;
	ld2 r14 = [r15]
	;;
	extr.u r14 = r14, 1, 31
	adds r17 = -16, r2
	;;
	st2 [r17] = r14
	adds r14 = 2, r2
	adds r15 = 2, r2
	;;
	ld2 r15 = [r15]
	;;
	extr.u r15 = r15, 1, 31
	;;
	st2 [r14] = r15
.L689:
	adds r15 = -16, r2
	;;
	ld2 r14 = [r15]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L691
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L692
	mov r14 = r2
	;;
	ld2 r14 = [r14]
	br .L693
	;;
.L692:
	adds r14 = -14, r2
	;;
	ld2 r14 = [r14]
.L693:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	st4 [r14] = r34
	addl r14 = 1, r0
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -24, r2
	;;
	st8 [r14] = r0
	br .L695
	;;
.L697:
	adds r14 = -8, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	shladd r15 = r15, 1, r0
	;;
	st8 [r14] = r15
	adds r17 = -32, r2
	;;
	ld8 r14 = [r17]
	;;
	shladd r14 = r14, 1, r0
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
.L695:
	adds r15 = -8, r2
	adds r14 = -16, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	cmp.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L698
	adds r17 = -32, r2
	;;
	ld8 r14 = [r17]
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L698
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	movl r15 = 2147483648
	;;
	and r14 = r15, r14
	;;
	cmp.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L697
	br .L698
	;;
.L700:
	adds r15 = -16, r2
	adds r14 = -8, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	cmp.gtu p6, p7 = r14, r15
	(p6) br.cond.dptk .L699
	adds r14 = -16, r2
	adds r16 = -16, r2
	adds r15 = -8, r2
	;;
	ld8 r16 = [r16]
	ld8 r15 = [r15]
	;;
	sub r15 = r16, r15
	;;
	st8 [r14] = r15
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld8 r16 = [r15]
	adds r17 = -32, r2
	;;
	ld8 r15 = [r17]
	;;
	or r15 = r15, r16
	;;
	st8 [r14] = r15
.L699:
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	shr.u r14 = r14, 1
	adds r17 = -32, r2
	;;
	st8 [r17] = r14
	adds r14 = -8, r2
	adds r15 = -8, r2
	;;
	ld8 r15 = [r15]
	;;
	shr.u r15 = r15, 1
	;;
	st8 [r14] = r15
.L698:
	adds r15 = -32, r2
	;;
	ld8 r14 = [r15]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L700
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L701
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	br .L702
	;;
.L701:
	adds r14 = -24, r2
	;;
	ld8 r14 = [r14]
.L702:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	addl r14 = 32, r0
	adds r15 = -32, r2
	;;
	st4 [r15] = r14
	adds r14 = -24, r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = 8, r2
	;;
	ld4 r15 = [r14]
	adds r16 = -32, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L704
	adds r14 = -16, r2
	;;
	st4 [r14] = r0
	adds r14 = -24, r2
	;;
	ld4 r14 = [r14]
	adds r15 = 8, r2
	;;
	ld4 r16 = [r15]
	adds r17 = -32, r2
	;;
	ld4 r15 = [r17]
	;;
	sub r15 = r16, r15
	;;
	addp4 r15 = r15, r0
	;;
	shl r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
	br .L705
	;;
.L704:
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L706
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	br .L708
	;;
.L706:
	adds r14 = -24, r2
	;;
	ld4 r14 = [r14]
	adds r15 = 8, r2
	;;
	ld4 r15 = [r15]
	;;
	addp4 r15 = r15, r0
	;;
	shl r15 = r14, r15
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
	adds r14 = -24, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	addp4 r14 = r14, r0
	;;
	shl r15 = r15, r14
	adds r14 = -24, r2
	;;
	ld4 r17 = [r14]
	adds r14 = 8, r2
	adds r18 = -32, r2
	;;
	ld4 r16 = [r18]
	ld4 r14 = [r14]
	;;
	sub r16 = r16, r14
	addp4 r14 = r17, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
.L705:
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
.L708:
	;;
	mov r8 = r14
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
	adds r12 = -64, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	;;
	mov r14 = r2
	;;
	st4 [r14] = r34
	addl r14 = 64, r0
	adds r15 = -64, r2
	;;
	st4 [r15] = r14
	adds r16 = -48, r2
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	mov r14 = r2
	;;
	ld4 r15 = [r14]
	adds r16 = -64, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L710
	adds r14 = -32, r2
	;;
	st8 [r14] = r0
	adds r14 = -48, r2
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	ld4 r16 = [r15]
	adds r17 = -64, r2
	;;
	ld4 r15 = [r17]
	;;
	sub r15 = r16, r15
	;;
	addp4 r15 = r15, r0
	;;
	shl r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
	br .L711
	;;
.L710:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L712
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	br .L714
	;;
.L712:
	adds r14 = -48, r2
	;;
	ld8 r15 = [r14]
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	shl r15 = r15, r14
	adds r14 = -32, r2
	;;
	st8 [r14] = r15
	adds r14 = -48, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	shl r15 = r15, r14
	adds r14 = -48, r2
	;;
	ld8 r14 = [r14]
	mov r16 = r2
	adds r18 = -64, r2
	;;
	ld4 r17 = [r18]
	ld4 r16 = [r16]
	;;
	sub r16 = r17, r16
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
.L711:
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
.L714:
	;;
	mov r8 = r14
	mov r9 = r15
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
	adds r12 = -32, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	addl r14 = 32, r0
	adds r15 = -32, r2
	;;
	st4 [r15] = r14
	adds r14 = -24, r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = 8, r2
	;;
	ld4 r15 = [r14]
	adds r16 = -32, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L716
	adds r14 = -24, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r15 = [r14]
	adds r17 = -32, r2
	;;
	ld4 r14 = [r17]
	;;
	adds r16 = -1, r14
	sxt4 r14 = r15
	;;
	addp4 r15 = r16, r0
	;;
	shr r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
	adds r14 = -24, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r16 = [r14]
	adds r14 = 8, r2
	;;
	ld4 r15 = [r14]
	adds r17 = -32, r2
	;;
	ld4 r14 = [r17]
	;;
	sub r15 = r15, r14
	sxt4 r14 = r16
	;;
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
	br .L717
	;;
.L716:
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L718
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	br .L720
	;;
.L718:
	adds r14 = -24, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r15 = [r14]
	adds r14 = 8, r2
	;;
	ld4 r16 = [r14]
	sxt4 r14 = r15
	;;
	addp4 r15 = r16, r0
	;;
	shr r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
	adds r14 = -24, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	mov r16 = r14
	adds r14 = 8, r2
	adds r17 = -32, r2
	;;
	ld4 r15 = [r17]
	ld4 r14 = [r14]
	;;
	sub r14 = r15, r14
	;;
	addp4 r14 = r14, r0
	;;
	shl r15 = r16, r14
	adds r14 = -24, r2
	;;
	ld4 r17 = [r14]
	adds r14 = 8, r2
	;;
	ld4 r16 = [r14]
	addp4 r14 = r17, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
.L717:
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
.L720:
	;;
	mov r8 = r14
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
	adds r12 = -64, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	;;
	mov r14 = r2
	;;
	st4 [r14] = r34
	addl r14 = 64, r0
	adds r15 = -64, r2
	;;
	st4 [r15] = r14
	adds r16 = -48, r2
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	mov r14 = r2
	;;
	ld4 r15 = [r14]
	adds r16 = -64, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L722
	adds r14 = -48, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	adds r17 = -64, r2
	;;
	ld4 r15 = [r17]
	;;
	adds r15 = -1, r15
	;;
	sxt4 r15 = r15
	;;
	shr r15 = r14, r15
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
	adds r14 = -48, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	ld4 r16 = [r15]
	adds r17 = -64, r2
	;;
	ld4 r15 = [r17]
	;;
	sub r15 = r16, r15
	;;
	sxt4 r15 = r15
	;;
	shr r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -32, r2
	;;
	st8 [r14] = r15
	br .L723
	;;
.L722:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L724
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	br .L726
	;;
.L724:
	adds r14 = -48, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	ld4 r15 = [r15]
	;;
	sxt4 r15 = r15
	;;
	shr r15 = r14, r15
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
	adds r14 = -48, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	mov r16 = r14
	mov r14 = r2
	adds r17 = -64, r2
	;;
	ld4 r15 = [r17]
	ld4 r14 = [r14]
	;;
	sub r14 = r15, r14
	;;
	addp4 r14 = r14, r0
	;;
	shl r15 = r16, r14
	adds r14 = -48, r2
	;;
	ld8 r16 = [r14]
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	shr.u r14 = r16, r14
	;;
	or r15 = r14, r15
	adds r14 = -32, r2
	;;
	st8 [r14] = r15
.L723:
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
.L726:
	;;
	mov r8 = r14
	mov r9 = r15
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
	;;
	st8 [r2] = r32
	ld8 r14 = [r2]
	;;
	shr.u r15 = r14, 56
	ld8 r14 = [r2]
	;;
	shr.u r14 = r14, 40
	addl r16 = 65280, r0
	;;
	and r14 = r16, r14
	;;
	or r15 = r14, r15
	ld8 r14 = [r2]
	;;
	shr.u r14 = r14, 24
	movl r16 = 16711680
	;;
	and r14 = r16, r14
	;;
	or r15 = r14, r15
	ld8 r14 = [r2]
	;;
	shr.u r14 = r14, 8
	movl r16 = 4278190080
	;;
	and r14 = r16, r14
	;;
	or r15 = r14, r15
	ld8 r14 = [r2]
	;;
	shl r14 = r14, 8
	movl r16 = 1095216660480
	;;
	and r14 = r16, r14
	;;
	or r15 = r14, r15
	ld8 r14 = [r2]
	;;
	shl r14 = r14, 24
	movl r16 = 280375465082880
	;;
	and r14 = r16, r14
	;;
	or r15 = r14, r15
	ld8 r14 = [r2]
	;;
	shl r14 = r14, 40
	movl r16 = 71776119061217280
	;;
	and r14 = r16, r14
	;;
	or r15 = r14, r15
	ld8 r14 = [r2]
	;;
	shl r14 = r14, 56
	;;
	or r14 = r14, r15
	;;
	mov r8 = r14
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
	;;
	st4 [r2] = r32
	ld4 r14 = [r2]
	;;
	extr.u r14 = r14, 24, 8
	;;
	mov r15 = r14
	ld4 r14 = [r2]
	;;
	extr.u r14 = r14, 8, 24
	;;
	mov r16 = r14
	addl r14 = 65280, r0
	;;
	and r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	mov r16 = r14
	ld4 r14 = [r2]
	;;
	dep.z r14 = r14, 8, 24
	movl r15 = 16711680
	;;
	and r14 = r15, r14
	;;
	or r14 = r14, r16
	;;
	mov r15 = r14
	ld4 r14 = [r2]
	;;
	dep.z r14 = r14, 24, 8
	;;
	or r14 = r14, r15
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	addl r15 = 65535, r0
	;;
	cmp4.ltu p6, p7 = r15, r14
	(p6) br.cond.dptk .L732
	addl r15 = 16, r0
	br .L733
	;;
.L732:
	mov r15 = r0
.L733:
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r15 = 16, r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	addp4 r14 = r14, r0
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r14 = -8, r2
	adds r15 = -12, r2
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	addl r15 = 65280, r0
	;;
	and r14 = r15, r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L734
	addl r15 = 8, r0
	br .L735
	;;
.L734:
	mov r15 = r0
.L735:
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r15 = 8, r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	addp4 r14 = r14, r0
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	adds r16 = -8, r2
	;;
	ld4 r16 = [r16]
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	addl r15 = 240, r0
	;;
	and r14 = r15, r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L736
	addl r15 = 4, r0
	br .L737
	;;
.L736:
	mov r15 = r0
.L737:
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r15 = 4, r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	addp4 r14 = r14, r0
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	adds r16 = -8, r2
	;;
	ld4 r16 = [r16]
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = 12, r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L738
	addl r15 = 2, r0
	br .L739
	;;
.L738:
	mov r15 = r0
.L739:
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
	;;
	sub r15 = 2, r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	addp4 r14 = r14, r0
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	adds r16 = -8, r2
	;;
	ld4 r16 = [r16]
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = 2, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	sub r14 = 2, r14
	setf.sig f6 = r15
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	add r14 = r15, r14
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	adds r16 = -16, r2
	;;
	mov r14 = r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	sub r14 = r0, r14
	;;
	sxt4 r14 = r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14]
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	andcm r14 = -1, r14
	;;
	and r14 = r14, r15
	;;
	mov r16 = r14
	adds r14 = -16, r2
	;;
	ld8 r15 = [r14]
	adds r17 = -32, r2
	;;
	ld8 r14 = [r17]
	;;
	and r14 = r14, r15
	;;
	or r14 = r14, r16
	;;
	setf.sig f7 = r14
	;;
	fcvt.xuf f6 = f7
	;;
	getf.exp r14 = f6
	addl r15 = 65598, r0
	;;
	sub r14 = r15, r14
	;;
	mov r15 = r14
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	and r14 = 64, r14
	;;
	add r14 = r15, r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r14 = -8, r2
	adds r15 = 8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	cmp4.le p6, p7 = r14, r15
	(p6) br.cond.dptk .L744
	mov r14 = r0
	br .L749
	;;
.L744:
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ge p6, p7 = r14, r15
	(p6) br.cond.dptk .L746
	addl r14 = 2, r0
	br .L749
	;;
.L746:
	adds r14 = -16, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L747
	mov r14 = r0
	br .L749
	;;
.L747:
	adds r14 = -16, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L748
	addl r14 = 2, r0
	br .L749
	;;
.L748:
	addl r14 = 1, r0
.L749:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	;;
	st8 [r36] = r32
	adds r14 = 8, r36
	;;
	st8 [r14] = r33
	adds r14 = 8, r36
	;;
	ld8 r39 = [r14]
	ld8 r38 = [r36]
	br.call.sptk.many b0 = __cmpdi2#
	mov r1 = r37
	mov r14 = r8
	;;
	adds r14 = -1, r14
	;;
	mov r8 = r14
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
	adds r12 = -48, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	;;
	mov r14 = r2
	;;
	st8 [r14] = r34, 8
	;;
	st8 [r14] = r35, -8
	;;
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	adds r16 = -48, r2
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	;;
	adds r16 = -32, r2
	mov r14 = r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	adds r14 = -40, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	cmp.le p6, p7 = r14, r15
	(p6) br.cond.dptk .L753
	mov r14 = r0
	br .L758
	;;
.L753:
	adds r14 = -40, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	cmp.ge p6, p7 = r14, r15
	(p6) br.cond.dptk .L755
	addl r14 = 2, r0
	br .L758
	;;
.L755:
	adds r14 = -48, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -32, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L756
	mov r14 = r0
	br .L758
	;;
.L756:
	adds r16 = -48, r2
	;;
	ld8 r15 = [r16]
	adds r14 = -32, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L757
	addl r14 = 2, r0
	br .L758
	;;
.L757:
	addl r14 = 1, r0
.L758:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	addl r15 = 65535, r0
	;;
	and r14 = r15, r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L760
	addl r15 = 16, r0
	br .L761
	;;
.L760:
	mov r15 = r0
.L761:
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	adds r15 = -16, r2
	;;
	ld4 r16 = [r15]
	ld4 r15 = [r14]
	;;
	addp4 r14 = r16, r0
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
	adds r14 = -8, r2
	adds r15 = -12, r2
	;;
	ld4 r15 = [r15]
	;;
	st4 [r14] = r15
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	addl r15 = 255, r0
	;;
	and r14 = r15, r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L762
	addl r15 = 8, r0
	br .L763
	;;
.L762:
	mov r15 = r0
.L763:
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	adds r15 = -16, r2
	;;
	ld4 r16 = [r15]
	ld4 r15 = [r14]
	;;
	addp4 r14 = r16, r0
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	adds r16 = -8, r2
	;;
	ld4 r16 = [r16]
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	and r14 = 15, r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L764
	addl r15 = 4, r0
	br .L765
	;;
.L764:
	mov r15 = r0
.L765:
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	adds r15 = -16, r2
	;;
	ld4 r16 = [r15]
	ld4 r15 = [r14]
	;;
	addp4 r14 = r16, r0
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	adds r16 = -8, r2
	;;
	ld4 r16 = [r16]
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	and r14 = 3, r14
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L766
	addl r15 = 2, r0
	br .L767
	;;
.L766:
	mov r15 = r0
.L767:
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	adds r14 = -12, r2
	adds r15 = -16, r2
	;;
	ld4 r16 = [r15]
	ld4 r15 = [r14]
	;;
	addp4 r14 = r16, r0
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	and r14 = 3, r14
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	adds r16 = -8, r2
	;;
	ld4 r16 = [r16]
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	andcm r14 = -1, r14
	;;
	and r14 = 1, r14
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 1, 31
	;;
	sub r14 = 2, r14
	sub r15 = r0, r15
	;;
	and r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	add r14 = r15, r14
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	adds r16 = -16, r2
	;;
	mov r14 = r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	(p7) mov r14 = r0
	;;
	zxt1 r14 = r14
	;;
	sub r14 = r0, r14
	;;
	sxt4 r14 = r14
	adds r15 = -32, r2
	;;
	st8 [r15] = r14
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14]
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	and r14 = r14, r15
	;;
	mov r16 = r14
	adds r14 = -16, r2
	;;
	ld8 r15 = [r14]
	adds r17 = -32, r2
	;;
	ld8 r14 = [r17]
	;;
	andcm r14 = -1, r14
	;;
	and r14 = r14, r15
	;;
	or r14 = r14, r16
	;;
	adds r15 = -1, r14
	andcm r14 = -1, r14
	;;
	and r14 = r14, r15
	;;
	popcnt r14 = r14
	;;
	mov r15 = r14
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16]
	;;
	and r14 = 64, r14
	;;
	add r14 = r15, r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	;;
	mov r14 = r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	adds r16 = -16, r2
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L772
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L773
	mov r14 = r0
	br .L775
	;;
.L773:
	adds r14 = -8, r2
	;;
	ld8 r14 = [r14]
	;;
	adds r15 = -1, r14
	andcm r14 = -1, r14
	;;
	and r14 = r14, r15
	;;
	popcnt r14 = r14
	;;
	adds r14 = 65, r14
	br .L775
	;;
.L772:
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	adds r15 = -1, r14
	andcm r14 = -1, r14
	;;
	and r14 = r14, r15
	;;
	popcnt r14 = r14
	;;
	adds r14 = 1, r14
.L775:
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	addl r14 = 32, r0
	adds r15 = -32, r2
	;;
	st4 [r15] = r14
	mov r14 = r2
	;;
	ld8 r15 = [r14]
	adds r14 = -24, r2
	;;
	st8 [r14] = r15
	adds r14 = 8, r2
	;;
	ld4 r15 = [r14]
	adds r16 = -32, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L777
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r0
	adds r14 = -24, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r16 = [r14]
	adds r14 = 8, r2
	;;
	ld4 r15 = [r14]
	adds r17 = -32, r2
	;;
	ld4 r14 = [r17]
	;;
	sub r15 = r15, r14
	addp4 r14 = r16, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
	br .L778
	;;
.L777:
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L779
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	br .L781
	;;
.L779:
	adds r14 = -24, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r16 = [r14]
	adds r14 = 8, r2
	;;
	ld4 r15 = [r14]
	addp4 r14 = r16, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
	adds r14 = -24, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	adds r15 = 8, r2
	adds r17 = -32, r2
	;;
	ld4 r16 = [r17]
	ld4 r15 = [r15]
	;;
	sub r15 = r16, r15
	;;
	addp4 r15 = r15, r0
	;;
	shl r15 = r14, r15
	adds r14 = -24, r2
	;;
	ld4 r17 = [r14]
	adds r14 = 8, r2
	;;
	ld4 r16 = [r14]
	addp4 r14 = r17, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	;;
	or r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
.L778:
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
.L781:
	;;
	mov r8 = r14
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
	adds r12 = -64, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	;;
	mov r14 = r2
	;;
	st4 [r14] = r34
	addl r14 = 64, r0
	adds r15 = -64, r2
	;;
	st4 [r15] = r14
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	adds r16 = -48, r2
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	mov r14 = r2
	;;
	ld4 r15 = [r14]
	adds r16 = -64, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = r14, r15
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L783
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r0
	adds r14 = -48, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	;;
	ld4 r16 = [r15]
	adds r17 = -64, r2
	;;
	ld4 r15 = [r17]
	;;
	sub r15 = r16, r15
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r15 = r14, r15
	adds r14 = -32, r2
	;;
	st8 [r14] = r15
	br .L784
	;;
.L783:
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L785
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	br .L787
	;;
.L785:
	adds r14 = -48, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14]
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	shr.u r15 = r15, r14
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
	adds r14 = -48, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	mov r15 = r2
	adds r17 = -64, r2
	;;
	ld4 r16 = [r17]
	ld4 r15 = [r15]
	;;
	sub r15 = r16, r15
	;;
	addp4 r15 = r15, r0
	;;
	shl r15 = r14, r15
	adds r14 = -48, r2
	;;
	ld8 r16 = [r14]
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	;;
	shr.u r14 = r16, r14
	;;
	or r15 = r14, r15
	adds r14 = -32, r2
	;;
	st8 [r14] = r15
.L784:
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
.L787:
	;;
	mov r8 = r14
	mov r9 = r15
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
	adds r12 = -32, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	addl r14 = 16, r0
	adds r15 = -32, r2
	;;
	st4 [r15] = r14
	adds r15 = -28, r2
	addl r14 = -1, r0
	adds r17 = -32, r2
	;;
	ld4 r16 = [r17]
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	;;
	st4 [r15] = r14
	mov r15 = r2
	adds r14 = -28, r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	and r14 = r14, r15
	;;
	mov r16 = r14
	adds r15 = 4, r2
	adds r14 = -28, r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	and r14 = r14, r15
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
	adds r14 = -16, r2
	;;
	ld4 r14 = [r14]
	adds r15 = -24, r2
	adds r17 = -32, r2
	;;
	ld4 r16 = [r17]
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	;;
	st4 [r15] = r14
	adds r14 = -16, r2
	;;
	ld4 r14 = [r14]
	adds r15 = -28, r2
	;;
	ld4 r15 = [r15]
	;;
	and r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r18 = -32, r2
	;;
	ld4 r15 = [r18]
	addp4 r14 = r14, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	mov r16 = r14
	adds r15 = 4, r2
	adds r14 = -28, r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	and r14 = r14, r15
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r16 = f6
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld4 r15 = [r15]
	;;
	add r15 = r15, r16
	;;
	st4 [r14] = r15
	adds r14 = -16, r2
	;;
	ld4 r15 = [r14]
	adds r16 = -24, r2
	adds r14 = -28, r2
	;;
	ld4 r16 = [r16]
	ld4 r14 = [r14]
	;;
	and r14 = r14, r16
	;;
	mov r16 = r14
	adds r17 = -32, r2
	;;
	ld4 r14 = [r17]
	;;
	addp4 r14 = r14, r0
	;;
	shl r14 = r16, r14
	;;
	add r15 = r15, r14
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
	adds r14 = -24, r2
	;;
	ld4 r14 = [r14]
	adds r18 = -32, r2
	;;
	ld4 r15 = [r18]
	addp4 r14 = r14, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
	adds r14 = -16, r2
	;;
	ld4 r14 = [r14]
	adds r15 = -24, r2
	adds r17 = -32, r2
	;;
	ld4 r16 = [r17]
	addp4 r14 = r14, r0
	;;
	addp4 r16 = r16, r0
	;;
	shr.u r14 = r14, r16
	;;
	st4 [r15] = r14
	adds r14 = -16, r2
	;;
	ld4 r14 = [r14]
	adds r15 = -28, r2
	;;
	ld4 r15 = [r15]
	;;
	and r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	adds r18 = -32, r2
	;;
	ld4 r15 = [r18]
	addp4 r14 = r14, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	mov r16 = r14
	mov r15 = r2
	adds r14 = -28, r2
	;;
	ld4 r15 = [r15]
	ld4 r14 = [r14]
	;;
	and r14 = r14, r15
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r16 = f6
	adds r14 = -24, r2
	adds r15 = -24, r2
	;;
	ld4 r15 = [r15]
	;;
	add r15 = r15, r16
	;;
	st4 [r14] = r15
	adds r14 = -16, r2
	;;
	ld4 r15 = [r14]
	adds r16 = -24, r2
	adds r14 = -28, r2
	;;
	ld4 r16 = [r16]
	ld4 r14 = [r14]
	;;
	and r14 = r14, r16
	;;
	mov r16 = r14
	adds r17 = -32, r2
	;;
	ld4 r14 = [r17]
	;;
	addp4 r14 = r14, r0
	;;
	shl r14 = r16, r14
	;;
	add r15 = r15, r14
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	mov r16 = r14
	adds r14 = -24, r2
	;;
	ld4 r14 = [r14]
	adds r18 = -32, r2
	;;
	ld4 r15 = [r18]
	addp4 r14 = r14, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	add r14 = r16, r14
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	mov r16 = r14
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r17 = -32, r2
	;;
	ld4 r15 = [r17]
	addp4 r14 = r14, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	;;
	mov r17 = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	adds r18 = -32, r2
	;;
	ld4 r15 = [r18]
	addp4 r14 = r14, r0
	;;
	addp4 r15 = r15, r0
	;;
	shr.u r14 = r14, r15
	setf.sig f6 = r17
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r14 = f6
	;;
	add r14 = r16, r14
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
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
	.prologue 14, 34
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 4, 2, 0
	.vframe r36
	mov r36 = r12
	adds r12 = -48, r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	;;
	mov r14 = r36
	;;
	st8 [r14] = r32
	adds r14 = 8, r36
	;;
	st8 [r14] = r33
	mov r14 = r36
	;;
	ld8 r14 = [r14]
	adds r15 = -32, r36
	;;
	st8 [r15] = r14
	adds r14 = -24, r36
	adds r15 = 8, r36
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -32, r36
	;;
	ld4 r15 = [r14]
	adds r14 = -24, r36
	;;
	ld4 r14 = [r14]
	;;
	mov r39 = r14
	mov r38 = r15
	br.call.sptk.many b0 = __muldsi3#
	mov r1 = r37
	mov r15 = r8
	adds r14 = -16, r36
	;;
	st8 [r14] = r15
	adds r14 = -16, r36
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	mov r17 = r14
	adds r14 = -28, r36
	;;
	ld4 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -24, r36
	;;
	ld4 r14 = [r14]
	setf.sig f6 = r15
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -32, r36
	;;
	ld4 r16 = [r14]
	adds r14 = -24, r36
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r14 = f6
	;;
	add r14 = r15, r14
	;;
	add r14 = r17, r14
	;;
	mov r15 = r14
	adds r14 = -16, r36
	;;
	adds r14 = 4, r14
	;;
	st4 [r14] = r15
	adds r14 = -16, r36
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
	mov ar.pfs = r35
	mov b0 = r34
	.restore sp
	mov r12 = r36
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
	adds r12 = -48, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	addl r14 = 32, r0
	adds r15 = -48, r2
	;;
	st4 [r15] = r14
	adds r14 = -40, r2
	adds r16 = -48, r2
	;;
	ld4 r15 = [r16]
	addl r16 = -1, r0
	;;
	shr.u r15 = r16, r15
	;;
	st8 [r14] = r15
	mov r15 = r2
	adds r14 = -40, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	and r16 = r14, r15
	adds r15 = 8, r2
	adds r14 = -40, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	and r14 = r14, r15
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	ld8 r16 = [r14]
	adds r14 = -32, r2
	adds r17 = -48, r2
	;;
	ld4 r15 = [r17]
	;;
	shr.u r15 = r16, r15
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -40, r2
	;;
	ld8 r14 = [r14]
	;;
	and r15 = r14, r15
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
	mov r15 = r2
	adds r18 = -48, r2
	;;
	ld4 r14 = [r18]
	ld8 r15 = [r15]
	;;
	shr.u r16 = r15, r14
	adds r15 = 8, r2
	adds r14 = -40, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	and r14 = r14, r15
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r16 = f6
	adds r14 = -32, r2
	adds r15 = -32, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r16
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	ld8 r15 = [r14]
	adds r16 = -32, r2
	adds r14 = -40, r2
	;;
	ld8 r16 = [r16]
	ld8 r14 = [r14]
	;;
	and r16 = r14, r16
	adds r17 = -48, r2
	;;
	ld4 r14 = [r17]
	;;
	shl r14 = r16, r14
	;;
	add r15 = r15, r14
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
	adds r15 = -32, r2
	adds r18 = -48, r2
	;;
	ld4 r14 = [r18]
	ld8 r15 = [r15]
	;;
	shr.u r14 = r15, r14
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	ld8 r16 = [r14]
	adds r14 = -32, r2
	adds r17 = -48, r2
	;;
	ld4 r15 = [r17]
	;;
	shr.u r15 = r16, r15
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -40, r2
	;;
	ld8 r14 = [r14]
	;;
	and r15 = r14, r15
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
	adds r15 = 8, r2
	adds r18 = -48, r2
	;;
	ld4 r14 = [r18]
	ld8 r15 = [r15]
	;;
	shr.u r16 = r15, r14
	mov r15 = r2
	adds r14 = -40, r2
	;;
	ld8 r15 = [r15]
	ld8 r14 = [r14]
	;;
	and r14 = r14, r15
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r16 = f6
	adds r14 = -32, r2
	adds r15 = -32, r2
	;;
	ld8 r15 = [r15]
	;;
	add r15 = r15, r16
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	ld8 r15 = [r14]
	adds r16 = -32, r2
	adds r14 = -40, r2
	;;
	ld8 r16 = [r16]
	ld8 r14 = [r14]
	;;
	and r16 = r14, r16
	adds r17 = -48, r2
	;;
	ld4 r14 = [r17]
	;;
	shl r14 = r16, r14
	;;
	add r15 = r15, r14
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	mov r16 = r14
	adds r15 = -32, r2
	adds r18 = -48, r2
	;;
	ld4 r14 = [r18]
	ld8 r15 = [r15]
	;;
	shr.u r14 = r15, r14
	;;
	add r14 = r16, r14
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	mov r17 = r14
	mov r15 = r2
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	ld8 r15 = [r15]
	;;
	shr.u r16 = r15, r14
	adds r15 = 8, r2
	adds r18 = -48, r2
	;;
	ld4 r14 = [r18]
	ld8 r15 = [r15]
	;;
	shr.u r14 = r15, r14
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r14 = f6
	;;
	add r14 = r17, r14
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
	mov r9 = r15
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
	.prologue 14, 36
	.save ar.pfs, r37
	alloc r37 = ar.pfs, 4, 4, 2, 0
	.vframe r38
	mov r38 = r12
	adds r12 = -80, r12
	.save rp, r36
	mov r36 = b0
	mov r39 = r1
	.body
	;;
	adds r14 = -16, r38
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	;;
	mov r14 = r38
	;;
	st8 [r14] = r34, 8
	;;
	st8 [r14] = r35, -8
	;;
	adds r14 = -16, r38
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	adds r16 = -64, r38
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	;;
	adds r16 = -48, r38
	mov r14 = r38
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	adds r14 = -64, r38
	;;
	ld8 r15 = [r14]
	adds r14 = -48, r38
	;;
	ld8 r14 = [r14]
	;;
	mov r41 = r14
	mov r40 = r15
	br.call.sptk.many b0 = __mulddi3#
	mov r1 = r39
	mov r14 = r8
	mov r15 = r9
	adds r16 = -32, r38
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	adds r14 = -32, r38
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	mov r17 = r14
	adds r14 = -56, r38
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -48, r38
	;;
	ld8 r14 = [r14]
	setf.sig f6 = r15
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r15 = f6
	adds r14 = -64, r38
	;;
	ld8 r16 = [r14]
	adds r14 = -48, r38
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	setf.sig f6 = r16
	;;
	setf.sig f7 = r14
	;;
	xmpy.l f6 = f6, f7
	;;
	getf.sig r14 = f6
	;;
	add r14 = r15, r14
	;;
	add r14 = r17, r14
	;;
	mov r15 = r14
	adds r14 = -32, r38
	;;
	adds r14 = 8, r14
	;;
	st8 [r14] = r15
	adds r14 = -32, r38
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	mov r8 = r14
	mov r9 = r15
	mov ar.pfs = r37
	mov b0 = r36
	.restore sp
	mov r12 = r38
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
	;;
	st8 [r2] = r32
	ld8 r14 = [r2]
	;;
	sub r14 = r0, r14
	;;
	mov r8 = r14
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
	;;
	st8 [r2] = r32, 8
	;;
	st8 [r2] = r33, -8
	;;
	ld8 r14 = [r2], 8
	;;
	ld8 r15 = [r2], -8
	cmp.eq p6, p7 = 0, r14
	sub r16 = 0, r14
	;;
	(p7) sub r17 = -1, r15
	;;
	(p6) sub r17 = 0, r15
	mov r14 = r16
	;;
	mov r15 = r17
	mov r8 = r14
	;;
	mov r9 = r15
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = -8, r2
	mov r15 = r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -8, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	xor r14 = r14, r15
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 16, 16
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 8, 24
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 4, 28
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = 15, r14
	;;
	mov r15 = r14
	addl r14 = 27030, r0
	;;
	sxt4 r14 = r14
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	and r14 = 1, r14
	;;
	mov r8 = r14
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
	adds r12 = -48, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	adds r16 = -32, r2
	;;
	mov r14 = r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -32, r2
	;;
	ld8 r14 = [r14]
	;;
	xor r14 = r14, r15
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	mov r15 = r14
	adds r14 = -16, r2
	;;
	ld4 r14 = [r14]
	;;
	xor r14 = r14, r15
	adds r15 = -48, r2
	;;
	st4 [r15] = r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 16, 16
	;;
	mov r15 = r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -48, r2
	;;
	st4 [r15] = r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 8, 24
	;;
	mov r15 = r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -48, r2
	;;
	st4 [r15] = r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 4, 28
	;;
	mov r15 = r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -48, r2
	;;
	st4 [r15] = r14
	adds r16 = -48, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = 15, r14
	;;
	mov r15 = r14
	addl r14 = 27030, r0
	;;
	sxt4 r14 = r14
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	and r14 = 1, r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 16, 16
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 8, 24
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 4, 28
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	xor r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	and r14 = 15, r14
	;;
	mov r15 = r14
	addl r14 = 27030, r0
	;;
	sxt4 r14 = r14
	addp4 r15 = r15, r0
	;;
	shr r14 = r14, r15
	;;
	and r14 = 1, r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shr.u r14 = r14, 1
	movl r15 = 6148914691236517205
	;;
	and r14 = r15, r14
	adds r16 = -16, r2
	;;
	ld8 r15 = [r16]
	;;
	sub r14 = r15, r14
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shr.u r14 = r14, 2
	movl r15 = 3689348814741910323
	;;
	and r15 = r15, r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	movl r16 = 3689348814741910323
	;;
	and r14 = r16, r14
	;;
	add r14 = r15, r14
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	shr.u r15 = r14, 4
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	add r14 = r15, r14
	movl r15 = 1085102592571150095
	;;
	and r14 = r15, r14
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r16 = -16, r2
	;;
	ld8 r14 = [r16]
	;;
	mov r16 = r14
	adds r15 = -16, r2
	;;
	ld8 r14 = [r15]
	;;
	shr.u r14 = r14, 32
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r14 = r14, 16, 16
	;;
	mov r16 = r14
	adds r14 = -8, r2
	adds r15 = -8, r2
	;;
	ld4 r15 = [r15]
	;;
	add r15 = r15, r16
	;;
	st4 [r14] = r15
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r14 = r14, 8, 24
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	add r14 = r15, r14
	;;
	and r14 = 127, r14
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st4 [r14] = r32
	mov r14 = r2
	;;
	ld4 r14 = [r14]
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 1, 31
	;;
	mov r15 = r14
	movl r14 = 1431655765
	;;
	and r14 = r14, r15
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	sub r14 = r14, r15
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 2, 30
	;;
	mov r15 = r14
	movl r14 = 858993459
	;;
	and r14 = r14, r15
	;;
	mov r16 = r14
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	movl r15 = 858993459
	;;
	and r14 = r15, r14
	;;
	add r14 = r16, r14
	adds r16 = -16, r2
	;;
	st4 [r16] = r14
	adds r15 = -16, r2
	;;
	ld4 r14 = [r15]
	;;
	extr.u r14 = r14, 4, 28
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	add r14 = r15, r14
	movl r15 = 252645135
	;;
	and r14 = r15, r14
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 16, 16
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	add r14 = r14, r15
	adds r15 = -16, r2
	;;
	st4 [r15] = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	extr.u r14 = r14, 8, 24
	;;
	mov r15 = r14
	adds r16 = -16, r2
	;;
	ld4 r14 = [r16]
	;;
	add r14 = r15, r14
	;;
	and r14 = 63, r14
	;;
	mov r8 = r14
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
	adds r12 = -32, r12
	.body
	;;
	mov r20 = r2
	;;
	st8 [r20] = r32, 8
	;;
	st8 [r20] = r33, -8
	;;
	mov r20 = r2
	;;
	adds r20 = 8, r20
	;;
	ld8 r21 = [r20], -8
	;;
	ld8 r20 = [r20]
	adds r14 = -32, r2
	;;
	st8 [r14] = r20, 8
	;;
	st8 [r14] = r21, -8
	adds r16 = -32, r2
	;;
	ld8 r22 = [r16], 8
	;;
	ld8 r23 = [r16], -8
	;;
	shrp r20 = r23, r22, 1
	shr.u r21 = r23, 1
	movl r22 = 6148914691236517205
	;;
	and r18 = r22, r20
	movl r22 = 6148914691236517205
	;;
	and r19 = r22, r21
	adds r17 = -32, r2
	;;
	ld8 r22 = [r17], 8
	;;
	ld8 r23 = [r17], -8
	sub r20 = r22, r18
	;;
	cmp.gtu p6, p7 = r20, r22
	;;
	(p7) sub r21 = r23, r19
	;;
	(p6) sub r21 = r23, r19, 1
	adds r14 = -32, r2
	;;
	st8 [r14] = r20, 8
	;;
	st8 [r14] = r21, -8
	adds r16 = -32, r2
	;;
	ld8 r20 = [r16], 8
	;;
	ld8 r21 = [r16], -8
	;;
	shrp r18 = r21, r20, 2
	shr.u r19 = r21, 2
	movl r20 = 3689348814741910323
	;;
	and r16 = r20, r18
	movl r20 = 3689348814741910323
	;;
	and r17 = r20, r19
	adds r14 = -32, r2
	;;
	ld8 r18 = [r14]
	movl r19 = 3689348814741910323
	;;
	and r14 = r19, r18
	adds r18 = -24, r2
	;;
	ld8 r18 = [r18]
	movl r19 = 3689348814741910323
	;;
	and r15 = r19, r18
	add r18 = r16, r14
	;;
	cmp.gtu p6, p7 = r16, r18
	;;
	(p7) add r19 = r17, r15
	;;
	(p6) add r19 = r17, r15, 1
	adds r14 = -32, r2
	;;
	st8 [r14] = r18, 8
	;;
	st8 [r14] = r19, -8
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16], 8
	;;
	ld8 r15 = [r16], -8
	;;
	shrp r18 = r15, r14, 4
	shr.u r19 = r15, 4
	adds r14 = -32, r2
	;;
	ld8 r16 = [r14], 8
	;;
	ld8 r17 = [r14], -8
	;;
	add r14 = r18, r16
	;;
	cmp.gtu p6, p7 = r18, r14
	;;
	(p7) add r15 = r19, r17
	;;
	(p6) add r15 = r19, r17, 1
	movl r16 = 1085102592571150095
	;;
	and r16 = r16, r14
	adds r17 = -32, r2
	;;
	st8 [r17] = r16
	adds r16 = -24, r2
	movl r17 = 1085102592571150095
	;;
	and r14 = r17, r15
	;;
	st8 [r16] = r14
	adds r14 = -32, r2
	;;
	ld8 r18 = [r14]
	adds r16 = -32, r2
	;;
	ld8 r14 = [r16], 8
	;;
	ld8 r15 = [r16], -8
	;;
	mov r16 = r15
	mov r17 = r0
	;;
	mov r15 = r16
	adds r14 = -16, r2
	;;
	add r15 = r18, r15
	;;
	st8 [r14] = r15
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	;;
	mov r16 = r14
	adds r14 = -16, r2
	;;
	ld8 r14 = [r14]
	;;
	shr.u r14 = r14, 32
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	add r15 = r16, r15
	;;
	st4 [r14] = r15
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r14 = r14, 16, 16
	;;
	mov r16 = r14
	adds r14 = -8, r2
	adds r15 = -8, r2
	;;
	ld4 r15 = [r15]
	;;
	add r15 = r15, r16
	;;
	st4 [r14] = r15
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r14 = r14, 8, 24
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	add r14 = r15, r14
	;;
	mov r15 = r14
	addl r14 = 255, r0
	;;
	and r14 = r14, r15
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	stfd [r14] = f8
	adds r14 = 8, r2
	;;
	st4 [r14] = r33
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r14 = r14, 31, 1
	;;
	zxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -8, r2
	;;
	st4 [r14] = r15
	getf.d r15 = f1
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
.L816:
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L813
	mov r14 = r2
	adds r15 = -16, r2
	;;
	ldfd f7 = [r15]
	ldfd f6 = [r14]
	;;
	fmpy.d f6 = f7, f6
	;;
	getf.d r15 = f6
	adds r14 = -16, r2
	;;
	st8 [r14] = r15
.L813:
	adds r15 = 8, r2
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r16 = r14, 31, 1
	;;
	add r14 = r16, r14
	;;
	extr r14 = r14, 1, 31
	;;
	st4 [r15] = r14
	adds r14 = 8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L821
	mov r14 = r2
	mov r15 = r2
	;;
	ldfd f6 = [r15]
	;;
	fmpy.d f6 = f6, f6
	;;
	stfd [r14] = f6
	br .L816
	;;
.L821:
	nop 0
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L817
	adds r14 = -16, r2
	;;
	ldfd f6 = [r14]
	mov f8 = f1
	;;
	mov f7 = f6
	;;
	frcpa.s0 f6, p6 = f8, f7
	;;
	(p6) fnma.s1 f9 = f7, f6, f1
	;;
	(p6) fma.s1 f10 = f6, f9, f6
	(p6) fmpy.s1 f9 = f9, f9
	;;
	(p6) fma.s1 f10 = f10, f9, f10
	(p6) fmpy.s1 f9 = f9, f9
	;;
	(p6) fma.s1 f9 = f10, f9, f10
	;;
	(p6) fmpy.d.s1 f10 = f8, f9
	;;
	(p6) fnma.s1 f7 = f7, f10, f8
	;;
	(p6) fma.d.s0 f6 = f7, f9, f10
	;;
	mov f6 = f6
	br .L819
	;;
.L817:
	adds r15 = -16, r2
	;;
	ldfd f6 = [r15]
.L819:
	;;
	mov f8 = f6
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	stfs [r14] = f8
	adds r14 = 4, r2
	;;
	st4 [r14] = r33
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r14 = r14, 31, 1
	;;
	zxt1 r14 = r14
	;;
	mov r15 = r14
	adds r14 = -12, r2
	;;
	st4 [r14] = r15
	getf.s r15 = f1
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
.L826:
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	and r14 = 1, r14
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L823
	mov r14 = r2
	adds r15 = -16, r2
	;;
	ldfs f7 = [r15]
	ldfs f6 = [r14]
	;;
	fmpy.s f6 = f7, f6
	;;
	getf.s r15 = f6
	adds r14 = -16, r2
	;;
	st4 [r14] = r15
.L823:
	adds r15 = 4, r2
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	extr.u r16 = r14, 31, 1
	;;
	add r14 = r16, r14
	;;
	extr r14 = r14, 1, 31
	;;
	st4 [r15] = r14
	adds r14 = 4, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L831
	mov r14 = r2
	mov r15 = r2
	;;
	ldfs f6 = [r15]
	;;
	fmpy.s f6 = f6, f6
	;;
	stfs [r14] = f6
	br .L826
	;;
.L831:
	nop 0
	adds r14 = -12, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dptk .L827
	adds r14 = -16, r2
	;;
	ldfs f6 = [r14]
	mov f8 = f1
	;;
	mov f7 = f6
	;;
	frcpa.s0 f6, p6 = f8, f7
	;;
	(p6) fnma.s1 f9 = f7, f6, f1
	;;
	(p6) fma.s1 f10 = f6, f9, f6
	;;
	(p6) fma.s1 f9 = f10, f9, f6
	;;
	(p6) fmpy.s.s1 f10 = f8, f9
	;;
	(p6) fnma.s1 f7 = f10, f7, f8
	;;
	(p6) fma.s.s0 f6 = f7, f9, f10
	;;
	mov f6 = f6
	br .L829
	;;
.L827:
	adds r15 = -16, r2
	;;
	ldfs f6 = [r15]
.L829:
	;;
	mov f8 = f6
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
	adds r12 = -16, r12
	.body
	;;
	mov r14 = r2
	;;
	st8 [r14] = r32
	adds r14 = 8, r2
	;;
	st8 [r14] = r33
	mov r14 = r2
	;;
	ld8 r14 = [r14]
	adds r15 = -16, r2
	;;
	st8 [r15] = r14
	adds r14 = -8, r2
	adds r15 = 8, r2
	;;
	ld8 r15 = [r15]
	;;
	st8 [r14] = r15
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	cmp4.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L833
	mov r14 = r0
	br .L838
	;;
.L833:
	adds r14 = -12, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	adds r14 = 4, r14
	;;
	ld4 r14 = [r14]
	;;
	cmp4.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L835
	addl r14 = 2, r0
	br .L838
	;;
.L835:
	adds r14 = -16, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L836
	mov r14 = r0
	br .L838
	;;
.L836:
	adds r14 = -16, r2
	;;
	ld4 r15 = [r14]
	adds r14 = -8, r2
	;;
	ld4 r14 = [r14]
	;;
	cmp4.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L837
	addl r14 = 2, r0
	br .L838
	;;
.L837:
	addl r14 = 1, r0
.L838:
	;;
	mov r8 = r14
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
	adds r12 = -16, r12
	.save rp, r34
	mov r34 = b0
	mov r37 = r1
	.body
	;;
	st8 [r36] = r32
	adds r14 = 8, r36
	;;
	st8 [r14] = r33
	ld8 r15 = [r36]
	adds r14 = 8, r36
	;;
	ld8 r14 = [r14]
	;;
	mov r39 = r14
	mov r38 = r15
	br.call.sptk.many b0 = __ucmpdi2#
	mov r1 = r37
	mov r14 = r8
	;;
	adds r14 = -1, r14
	;;
	mov r8 = r14
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
	adds r12 = -48, r12
	.body
	;;
	adds r14 = -16, r2
	;;
	st8 [r14] = r32, 8
	;;
	st8 [r14] = r33, -8
	;;
	mov r14 = r2
	;;
	st8 [r14] = r34, 8
	;;
	st8 [r14] = r35, -8
	;;
	adds r14 = -16, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	adds r16 = -48, r2
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	;;
	adds r16 = -32, r2
	mov r14 = r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r15 = [r14], -8
	;;
	ld8 r14 = [r14]
	;;
	st8 [r16] = r14, 8
	;;
	st8 [r16] = r15, -8
	adds r14 = -40, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	cmp.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L842
	mov r14 = r0
	br .L847
	;;
.L842:
	adds r14 = -40, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -32, r2
	;;
	adds r14 = 8, r14
	;;
	ld8 r14 = [r14]
	;;
	cmp.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L844
	addl r14 = 2, r0
	br .L847
	;;
.L844:
	adds r14 = -48, r2
	;;
	ld8 r15 = [r14]
	adds r14 = -32, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.leu p6, p7 = r14, r15
	(p6) br.cond.dptk .L845
	mov r14 = r0
	br .L847
	;;
.L845:
	adds r16 = -48, r2
	;;
	ld8 r15 = [r16]
	adds r14 = -32, r2
	;;
	ld8 r14 = [r14]
	;;
	cmp.geu p6, p7 = r14, r15
	(p6) br.cond.dptk .L846
	addl r14 = 2, r0
	br .L847
	;;
.L846:
	addl r14 = 1, r0
.L847:
	;;
	mov r8 = r14
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
