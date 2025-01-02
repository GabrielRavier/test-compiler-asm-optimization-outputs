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
	adds r14 = -8, r34
	adds r19 = -2, r34
	adds r16 = -1, r34
	.mmi
	mov r8 = r32
	add r18 = r33, r34
	add r17 = r32, r34
	;;
	.mib
	cmp.geu p6, p7 = r33, r32
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p6) br.cond.dptk .L6
	;;
	.mmi
	add r15 = r32, r14
	add r14 = r33, r14
	nop 0
	.mmb
	add r33 = r33, r19
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	or r19 = r14, r15
	nop 0
	cmp.geu p6, p7 = 8, r16
	.mmb
	add r16 = r32, r16
	nop 0
	(p6) br.cond.dpnt .L8
	;;
	.mii
	sub r16 = r16, r33
	and r19 = 7, r19
	;;
	adds r16 = 6, r16
	.mmi
	cmp.eq p8, p9 = 0, r19
	;;
	cmp.ltu p6, p7 = 6, r16
	(p8) addl r19 = 1, r0
	;;
	.mii
	(p9) mov r19 = r0
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	;;
	.mmi
	nop 0
	and r16 = r19, r16
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dpnt .L8
	.mmi
	and r19 = -8, r34
	;;
	adds r16 = -8, r19
	nop 0
	;;
	.mii
	nop 0
	shr.u r16 = r16, 3
	;;
	mov ar.lc = r16
	.align 32
.L9:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L9
	;;
	.mmi
	sub r15 = r18, r19
	sub r14 = r17, r19
	nop 0
	.mmb
	sub r16 = r34, r19
	cmp.eq p6, p7 = r19, r34
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	adds r17 = -1, r15
	adds r20 = -2, r15
	adds r19 = -2, r14
	.mmi
	adds r22 = -3, r15
	adds r21 = -3, r14
	adds r24 = -4, r15
	;;
	.mmi
	ld1 r18 = [r17]
	adds r17 = -1, r14
	adds r23 = -4, r14
	.mmi
	adds r26 = -5, r15
	adds r25 = -5, r14
	adds r28 = -6, r15
	;;
	.mmi
	adds r27 = -6, r14
	cmp.eq p8, p9 = 3, r16
	cmp.eq p10, p11 = 4, r16
	.mmi
	adds r15 = -7, r15
	adds r14 = -7, r14
	cmp.eq p12, p13 = 6, r16
	;;
	.mib
	st1 [r17] = r18
	cmp.eq p6, p7 = 1, r16
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	ld1 r17 = [r20]
	nop 0
	cmp.eq p6, p7 = 2, r16
	;;
	.mib
	st1 [r19] = r17
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r17 = [r22]
	cmp.eq p6, p7 = 5, r16
	.mmi
	nop 0
	ld1.sa r16 = [r24]
	nop 0
	;;
	.mib
	st1 [r21] = r17
	nop 0
	(p8) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r16 = [r24]
	nop 0
	;;
	.mib
	st1 [r23] = r16
	nop 0
	(p10) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r16 = [r26]
	nop 0
	;;
	.mib
	st1 [r25] = r16
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r16 = [r28]
	nop 0
	;;
	.mib
	st1 [r27] = r16
	nop 0
	(p12) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r15 = [r15]
	nop 0
	;;
	.mmi
	st1 [r14] = r15
	nop 0
	nop 0
.L7:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L6:
	.mmi
	mov r14 = r16
	nop 0
	sub r16 = r32, r33, 1
	.mmb
	cmp.eq p6, p7 = r33, r32
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mib
	cmp.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	cmp.geu p6, p7 = 7, r14
	nop 0
	or r14 = r33, r32
	;;
	.mib
	and r14 = 7, r14
	(p6) adds r15 = 1, r33
	(p6) br.cond.dpnt .L13
	;;
	.mii
	cmp.ltu p6, p7 = 6, r16
	adds r15 = 1, r33
	;;
	(p6) addl r16 = 1, r0
	;;
	.mii
	(p7) mov r16 = r0
	cmp.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	.mmi
	(p7) mov r14 = r0
	;;
	and r14 = r16, r14
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L13
	.mmi
	and r18 = -8, r34
	mov r14 = r32
	mov r15 = r33
	;;
	.mmi
	adds r16 = -8, r18
	nop 0
	add r17 = r32, r18
	;;
	.mii
	nop 0
	shr.u r16 = r16, 3
	;;
	mov ar.lc = r16
	.align 32
.L14:
	.mmi
	ld8 r16 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r16
	adds r14 = 8, r14
	br.cloop.sptk.few .L14
	;;
	.mmi
	add r33 = r33, r18
	sub r14 = r34, r18
	adds r16 = 1, r17
	.mmi
	adds r20 = 2, r17
	adds r22 = 3, r17
	adds r24 = 4, r17
	;;
	.mmi
	adds r19 = 1, r33
	adds r21 = 2, r33
	adds r23 = 3, r33
	.mmi
	adds r25 = 4, r33
	adds r27 = 5, r33
	adds r26 = 5, r17
	;;
	.mmi
	cmp.eq p8, p9 = 2, r14
	cmp.eq p10, p11 = 3, r14
	cmp.eq p12, p13 = 4, r14
	.mmi
	cmp.eq p14, p15 = 5, r14
	ld1.s r15 = [r33]
	cmp.eq p6, p7 = r18, r34
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	cmp.eq p6, p7 = 1, r14
	chk.s r15, .L69
.L70:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.mmi
	adds r33 = 6, r33
	st1 [r17] = r15
	adds r17 = 6, r17
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r15 = [r19]
	cmp.eq p6, p7 = 6, r14
	.mmi
	nop 0
	ld1.sa r14 = [r21]
	nop 0
	;;
	.mib
	st1 [r16] = r15
	nop 0
	(p8) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r21]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p10) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r22] = r14
	nop 0
	(p12) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r24] = r14
	nop 0
	(p14) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r14 = [r27]
	nop 0
	;;
	.mib
	st1 [r26] = r14
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	ld1 r14 = [r33]
	nop 0
	mov ar.lc = r2
	;;
	.mib
	st1 [r17] = r14
	nop 0
	br.ret.sptk.many b0
.L8:
	.mmi
	sub r34 = r18, r34
	adds r15 = -1, r18
	adds r17 = -1, r17
	;;
	.mii
	sub r34 = r18, r34, 1
	nop 0
	;;
	mov ar.lc = r34
	.align 32
.L11:
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r17] = r16
	adds r17 = -1, r17
	br.cloop.sptk.few .L11
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L13:
	.mmi
	add r14 = r33, r34
	nop 0
	mov r16 = r8
	;;
	.mii
	sub r14 = r14, r15
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L17:
	.mmi
	mov r14 = r33
	mov r33 = r15
	adds r15 = 1, r15
	;;
	.mmi
	nop 0
	ld1 r14 = [r14]
	nop 0
	;;
	.mib
	st1 [r16] = r14
	adds r16 = 1, r16
	br.cloop.sptk.few .L17
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L69:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.mib
	ld1 r15 = [r33]
	nop 0
	br .L70
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
	nop 0
	;;
	.mib
	nop 0
	(p7) mov ar.lc = r14
	(p6) br.cond.dpnt .L72
	.align 32
.L73:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mmi
	st1 [r32] = r14
	adds r32 = 1, r32
	cmp4.ne p6, p7 = r34, r14
	.bbb
	nop 0
	(p7) br.cond.dpnt .L85
	br.cloop.sptk.few .L73
	;;
.L72:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L85:
	.mib
	mov r8 = r32
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
	nop 0
	;;
	.mib
	nop 0
	(p7) mov ar.lc = r14
	(p6) br.cond.dpnt .L93
	.align 32
.L88:
	.mmi
	mov r8 = r32
	ld1 r14 = [r32]
	adds r32 = 1, r32
	;;
	.mbb
	cmp4.ne p6, p7 = r33, r14
	(p7) br.cond.dpnt .L86
	br.cloop.sptk.few .L88
.L93:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L86:
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
	;;
	.mib
	nop 0
	(p7) mov ar.lc = r14
	(p6) br.cond.dpnt .L104
	.align 32
.L98:
	.mmi
	ld1 r8 = [r32]
	ld1 r14 = [r33]
	adds r32 = 1, r32
	.mmi
	nop 0
	adds r33 = 1, r33
	nop 0
	;;
	.mbb
	cmp4.eq p6, p7 = r14, r8
	(p7) br.cond.dpnt .L108
	br.cloop.sptk.few .L98
	;;
.L104:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L108:
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
	mov r38 = r32
	mov r39 = r33
	.mmi
	mov r40 = r34
	mov r37 = r1
	cmp.eq p6, p7 = 0, r34
	;;
	.mmi
	mov r8 = r32
	nop 0
	.save rp, r35
	mov r35 = b0
	.body
	.bbb
	nop 0
	(p6) br.cond.dpnt .L110
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L110:
	.mii
	nop 0
	mov ar.pfs = r36
	nop 0
	;;
	.mib
	nop 0
	mov b0 = r35
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
	br.cloop.sptk.few .L123
	;;
	.align 32
.L122:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L116:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L123:
	.mmi
	adds r32 = -1, r32
	nop 0
	nop 0
	;;
	.align 32
.L119:
	.mmi
	nop 0
	ld1 r14 = [r8]
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = r33, r14
	nop 0
	(p6) br.cond.dpnt .L116
	;;
	.mib
	mov r8 = r32
	adds r32 = -1, r32
	br.cloop.sptk.few .L119
	.mib
	nop 0
	nop 0
	br .L122
	.endp memrchr#
	.align 16
	.align 64
	.global memset#
	.type	memset#, @function
	.proc memset#
memset:
	.prologue 12, 35
	.mmi
	.save ar.pfs, r36
	alloc r36 = ar.pfs, 3, 3, 3, 0
	mov r38 = r32
	mov r40 = r34
	.mmi
	mov r37 = r1
	cmp.ne p6, p7 = 0, r34
	zxt1 r39 = r33
	;;
	.mmi
	mov r8 = r32
	nop 0
	.save rp, r35
	mov r35 = b0
	.body
	.bbb
	nop 0
	(p7) br.cond.dpnt .L127
	br.call.sptk.many b0 = memset#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L127:
	.mii
	nop 0
	mov ar.pfs = r36
	nop 0
	;;
	.mib
	nop 0
	mov b0 = r35
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
	adds r33 = 1, r33
	adds r14 = 1, r32
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
	(p6) br.cond.dpnt .L130
	;;
	.align 32
.L132:
	.mmi
	ld1 r15 = [r33]
	mov r8 = r14
	adds r33 = 1, r33
	;;
	.mib
	nop 0
	sxt1 r16 = r15
	nop 0
	.mmi
	st1 [r14] = r15
	nop 0
	adds r14 = 1, r14
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p6) br.cond.dptk .L132
.L130:
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
	.mmi
	ld1 r14 = [r32]
	mov r8 = r32
	zxt1 r33 = r33
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mib
	mov r15 = r14
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L137
	;;
	.align 32
.L138:
	.mii
	nop 0
	zxt1 r15 = r15
	nop 0
	;;
	.mib
	cmp4.ne p6, p7 = r33, r15
	nop 0
	(p7) br.cond.dpnt .L137
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
	(p7) br.cond.dptk .L138
.L137:
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
.L147:
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
	(p6) br.cond.dpnt .L145
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L147
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L145:
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
	ld1 r14 = [r32]
	ld1 r15 = [r33]
	adds r32 = 1, r32
	.mmi
	nop 0
	adds r33 = 1, r33
	nop 0
	;;
	.mii
	nop 0
	sxt1 r16 = r14
	sxt1 r15 = r15
	;;
	.mmi
	cmp4.eq p6, p7 = r15, r16
	mov r17 = r16
	mov r8 = r15
	;;
	.mib
	nop 0
	(p7) zxt1 r16 = r14
	(p7) br.cond.dpnt .L153
	;;
	.align 32
.L154:
	.mmi
	ld1.s r16 = [r32]
	ld1.s r14 = [r33]
	cmp4.ne p6, p7 = 0, r17
	.mmb
	nop 0
	nop 0
	(p7) br.cond.dpnt .L159
	;;
	.mmi
	chk.s r16, .L160
	nop 0
	nop 0
.L161:
	.mii
	nop 0
	sxt1 r15 = r16
	nop 0
	.mmi
	adds r32 = 1, r32
	chk.s r14, .L162
	nop 0
.L163:
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mmi
	mov r17 = r15
	nop 0
	mov r8 = r14
	.mmb
	adds r33 = 1, r33
	cmp4.eq p6, p7 = r14, r15
	(p6) br.cond.dptk .L154
	.mii
	nop 0
	zxt1 r16 = r16
	nop 0
	;;
.L153:
	.mii
	nop 0
	zxt1 r8 = r8
	nop 0
	;;
	.mib
	nop 0
	sub r8 = r16, r8
	br.ret.sptk.many b0
	;;
.L159:
	.mmi
	mov r16 = r0
	nop 0
	zxt1 r8 = r8
	;;
	.mib
	nop 0
	sub r8 = r16, r8
	br.ret.sptk.many b0
.L160:
	.mib
	ld1 r16 = [r32]
	nop 0
	br .L161
.L162:
	.mib
	ld1 r14 = [r33]
	nop 0
	br .L163
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
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L164
	;;
	.align 32
.L166:
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
	(p6) br.cond.dptk .L166
	.mmi
	sub r8 = r8, r32
	nop 0
	nop 0
.L164:
	.mib
	nop 0
	nop 0
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
	ld1.s r15 = [r32]
	nop 0
	.mmi
	mov r14 = r33
	adds r17 = 1, r32
	add r34 = r33, r34
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L171
	;;
	.mmi
	chk.s r15, .L183
	nop 0
	nop 0
.L184:
	.mii
	mov r8 = r15
	cmp4.ne p6, p7 = 0, r15
	;;
	(p7) mov r8 = r0
	.mmb
	nop 0
	(p7) ld1 r15 = [r33]
	(p7) br.cond.dpnt .L174
	;;
	.mmi
	ld1.s r15 = [r14]
	nop 0
	nop 0
	;;
	.align 32
.L175:
	.mmi
	nop 0
	mov r19 = r14
	chk.s r15, .L181
.L182:
	.mmi
	cmp4.ne p8, p9 = 0, r15
	cmp4.eq p10, p11 = r8, r15
	adds r14 = 1, r14
	;;
	.mmi
	(p10) addl r18 = 1, r0
	(p8) addl r16 = 1, r0
	cmp.ne p6, p7 = r14, r34
	;;
	.mii
	(p11) mov r18 = r0
	(p9) mov r16 = r0
	;;
	and r16 = r18, r16
	;;
	.mib
	nop 0
	tbit.nz.and.orcm p6, p7 = r16, 0
	(p7) br.cond.dpnt .L174
	;;
	.mii
	ld1 r15 = [r17]
	adds r17 = 1, r17
	;;
	mov r8 = r15
	.mmb
	cmp4.ne p6, p7 = 0, r15
	ld1.s r15 = [r14]
	(p6) br.cond.dptk .L175
	;;
	.mmi
	adds r19 = 1, r19
	nop 0
	mov r8 = r0
	;;
	.mmi
	ld1 r15 = [r19]
	nop 0
	nop 0
	;;
.L174:
	.mmi
	sub r8 = r8, r15
	nop 0
	nop 0
.L171:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L181:
	.mib
	ld1 r15 = [r14]
	nop 0
	br .L182
	;;
.L183:
	.mib
	ld1 r15 = [r32]
	nop 0
	br .L184
	.endp strncmp#
	.align 16
	.align 64
	.global swab#
	.type	swab#, @function
	.proc swab#
swab:
	.prologue
	.mmi
	alloc r16 = ar.pfs, 3, 0, 7, 0
	or r14 = r32, r33
	and r21 = -16, r34
	.mmi
	adds r18 = -2, r34
	mov r17 = r32
	shr.u r22 = r34, 1
	;;
	.mmi
	and r14 = 7, r14
	mov r16 = r33
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmi
	adds r15 = -16, r21
	cmp.ge p6, p7 = 1, r34
	shr.u r20 = r34, 4
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L185
	;;
	.mii
	nop 0
	shr.u r15 = r15, 4
	cmp.geu p6, p7 = 13, r18
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L187
	;;
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L187
	.mii
	nop 0
	mov ar.lc = r15
	adds r15 = 8, r17
	;;
	.align 32
.L188:
	.mmi
	ld8 r14 = [r17]
	ld8 r18 = [r15]
	adds r19 = 8, r16
	.mmi
	nop 0
	adds r17 = 16, r17
	nop 0
	;;
	.mii
	nop 0
	mix1.r r15 = r18, r14
	mix1.l r14 = r18, r14
	;;
	.mii
	nop 0
	mux1 r15 = r15, @alt
	mux1 r14 = r14, @alt
	;;
	.mii
	nop 0
	unpack1.l r18 = r15, r14
	unpack1.h r14 = r15, r14
	.mmi
	adds r15 = 8, r17
	;;
	st8 [r16] = r18
	adds r16 = 16, r16
	.mmb
	nop 0
	st8 [r19] = r14
	br.cloop.sptk.few .L188
	.mmi
	shladd r14 = r20, 3, r0
	nop 0
	add r33 = r33, r21
	.mmi
	add r32 = r32, r21
	nop 0
	shladd r20 = r20, 4, r0
	;;
	.mmi
	sub r34 = r34, r20
	adds r16 = 1, r32
	adds r15 = 1, r33
	.mmi
	adds r18 = 2, r33
	adds r21 = 3, r32
	adds r17 = 3, r33
	;;
	.mmi
	adds r19 = 2, r32
	adds r24 = 4, r33
	adds r26 = 5, r32
	.mmi
	adds r23 = 5, r33
	adds r25 = 4, r32
	adds r28 = 6, r33
	;;
	.mmi
	adds r30 = 7, r32
	adds r27 = 7, r33
	adds r29 = 6, r32
	.mmi
	adds r35 = 8, r33
	adds r37 = 9, r32
	adds r31 = 9, r33
	;;
	.mmi
	adds r36 = 8, r32
	adds r39 = 10, r33
	adds r41 = 11, r32
	.mmi
	adds r38 = 11, r33
	adds r40 = 10, r32
	cmp.ge p8, p9 = 5, r34
	;;
	.mmi
	cmp.ge p10, p11 = 7, r34
	cmp.ge p12, p13 = 9, r34
	adds r20 = 13, r32
	.mmb
	cmp.eq p6, p7 = r14, r22
	ld1.s r14 = [r32]
	(p6) br.cond.dpnt .L185
	;;
	.mii
	ld1 r16 = [r16]
	cmp.ge p6, p7 = 3, r34
	;;
	chk.s r14, .L196
.L197:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mmi
	adds r32 = 12, r32
	st1 [r33] = r16
	adds r16 = 12, r33
	.mmi
	adds r33 = 13, r33
	;;
	st1 [r15] = r14
	nop 0
	.mmb
	ld1.s r15 = [r21]
	ld1.s r14 = [r19]
	(p6) br.cond.dpnt .L185
	;;
	.mii
	cmp.ge p6, p7 = 11, r34
	nop 0
	;;
	chk.s r15, .L198
.L199:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mmi
	chk.s r14, .L200
	nop 0
	nop 0
.L201:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mmi
	st1 [r18] = r15
	ld1.s r15 = [r26]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r17] = r14
	nop 0
	.mmb
	ld1.s r14 = [r25]
	nop 0
	(p8) br.cond.dpnt .L185
	;;
	.mii
	cmp.ge p8, p9 = 13, r34
	nop 0
	;;
	chk.s r15, .L202
.L203:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mmi
	chk.s r14, .L204
	nop 0
	nop 0
.L205:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mmi
	st1 [r24] = r15
	ld1.s r15 = [r30]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r23] = r14
	nop 0
	.mmb
	ld1.s r14 = [r29]
	nop 0
	(p10) br.cond.dpnt .L185
	;;
	.mmi
	chk.s r15, .L206
	nop 0
	nop 0
.L207:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p12, p13
	.mmi
	chk.s r14, .L208
	nop 0
	nop 0
.L209:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p12, p13
	.mmi
	st1 [r28] = r15
	ld1.s r15 = [r37]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r27] = r14
	nop 0
	.mmb
	ld1.s r14 = [r36]
	nop 0
	(p12) br.cond.dpnt .L185
	;;
	.mmi
	chk.s r15, .L210
	nop 0
	nop 0
.L211:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.mmi
	chk.s r14, .L212
	nop 0
	nop 0
.L213:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.mmi
	st1 [r35] = r15
	ld1.s r15 = [r41]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r31] = r14
	nop 0
	.mmb
	ld1.s r14 = [r40]
	nop 0
	(p6) br.cond.dpnt .L185
	;;
	.mmi
	chk.s r15, .L214
	nop 0
	nop 0
.L215:
	.pred.rel.mutex p8, p9
	.mmi
	chk.s r14, .L216
	nop 0
	nop 0
.L217:
	.pred.rel.mutex p8, p9
	.mmi
	st1 [r39] = r15
	ld1.s r15 = [r20]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r38] = r14
	nop 0
	.mmb
	ld1.s r14 = [r32]
	nop 0
	(p8) br.cond.dpnt .L185
	;;
	.mmi
	chk.s r15, .L218
	nop 0
	nop 0
.L219:
	.mmi
	chk.s r14, .L220
	nop 0
	nop 0
.L221:
	.mmi
	st1 [r16] = r15
	st1 [r33] = r14
	nop 0
.L185:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L187:
	.mmi
	and r14 = -2, r34
	;;
	adds r14 = -2, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r14 = r14, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r14
	adds r14 = 1, r32
	;;
	.align 32
.L190:
	.mmi
	ld1 r14 = [r14]
	nop 0
	adds r15 = 1, r33
	.mmi
	ld1 r16 = [r32]
	nop 0
	adds r32 = 2, r32
	;;
	.mmi
	st1 [r33] = r14
	nop 0
	adds r14 = 1, r32
	.mmb
	adds r33 = 2, r33
	st1 [r15] = r16
	br.cloop.sptk.few .L190
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L196:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	ld1 r14 = [r32]
	nop 0
	br .L197
.L198:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	ld1 r15 = [r21]
	nop 0
	br .L199
	;;
.L200:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	ld1 r14 = [r19]
	nop 0
	br .L201
.L202:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	ld1 r15 = [r26]
	nop 0
	br .L203
	;;
.L204:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	ld1 r14 = [r25]
	nop 0
	br .L205
.L206:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p12, p13
	.mib
	ld1 r15 = [r30]
	nop 0
	br .L207
	;;
.L208:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p12, p13
	.mib
	ld1 r14 = [r29]
	nop 0
	br .L209
.L210:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.mib
	ld1 r15 = [r37]
	nop 0
	br .L211
	;;
.L212:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.mib
	ld1 r14 = [r36]
	nop 0
	br .L213
.L214:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r15 = [r41]
	nop 0
	br .L215
	;;
.L216:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r14 = [r40]
	nop 0
	br .L217
.L218:
	.mib
	ld1 r15 = [r20]
	nop 0
	br .L219
	;;
.L220:
	.mib
	ld1 r14 = [r32]
	nop 0
	br .L221
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
	adds r15 = -9, r32
	cmp4.eq p6, p7 = 32, r32
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
	addl r8 = 1, r0
	.mmi
	cmp4.geu p8, p9 = 31, r32
	;;
	addl r14 = -8232, r2
	cmp4.geu p6, p7 = 32, r15
	.mmi
	addl r2 = -65529, r2
	;;
	cmp4.geu p10, p11 = 1, r14
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	.bbb
	nop 0
	(p6) br.cond.dptk .L242
	(p10) br.cond.dpnt .L242
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
.L242:
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
	mov r2 = r32
	addl r14 = 8231, r0
	;;
	addl r16 = -8234, r2
	.mmi
	cmp4.geu p8, p9 = r14, r32
	addl r15 = -57344, r2
	addl r14 = 254, r0
	;;
	.mib
	cmp4.ltu p6, p7 = r14, r32
	addl r14 = 47061, r0
	(p7) br.cond.dpnt .L258
	;;
	.mmi
	cmp4.geu p6, p7 = r14, r16
	addl r14 = 8184, r0
	addl r16 = -65532, r2
	;;
	.mmi
	cmp4.geu p10, p11 = r14, r15
	addl r15 = 1048579, r0
	nop 0
	.mmb
	addl r14 = 65534, r0
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	(p6) br.cond.dpnt .L254
	;;
	.mib
	nop 0
	nop 0
	(p10) br.cond.dpnt .L254
	;;
	.mmi
	cmp4.ltu p6, p7 = r15, r16
	nop 0
	and r2 = r14, r2
	;;
	.mib
	(p6) mov r8 = r0
	nop 0
	(p6) br.cond.dpnt .L250
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
.L250:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L254:
	.mib
	nop 0
	addl r8 = 1, r0
	br.ret.sptk.many b0
.L258:
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
	addl r8 = 1, r0
	adds r32 = -48, r32
	;;
	.mib
	adds r14 = -97, r14
	cmp4.geu p6, p7 = 9, r32
	(p6) br.cond.dptk .L259
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
.L259:
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
	mov f8 = f0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f6, f9
	;;
	.mfb
	nop 0
	(p6) fsub.d f8 = f6, f9
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
	mov f8 = f0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f6, f9
	;;
	.mfb
	nop 0
	(p6) fsub.s f8 = f6, f9
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
	getf.d r14 = f8
	fcmp.ge p8, p9 = f8, f9
	nop 0
	;;
	.mmi
	nop 0
	getf.d r15 = f9
	nop 0
	;;
	.mii
	nop 0
	shr.u r16 = r14, 63
	;;
	shr.u r17 = r15, 63
	;;
	.mib
	cmp4.eq p6, p7 = r17, r16
	nop 0
	(p6) br.cond.dptk .L281
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L280
.L286:
	.mmi
	setf.d f8 = r15
	nop 0
	nop 0
.L280:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L281:
	.pred.rel.mutex p8, p9
	.mbb
	nop 0
	(p9) br.cond.dptk .L286
	;;
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
	.mlx
	getf.s r14 = f8
	movl r18 = -2147483648
	.mmf
	nop 0
	nop 0
	fcmp.ge p8, p9 = f8, f9
	;;
	.mmi
	getf.s r15 = f9
	;;
	mov r16 = r14
	nop 0
	;;
	.mii
	mov r17 = r15
	and r16 = r18, r16
	;;
	and r17 = r18, r17
	;;
	.mib
	cmp4.eq p6, p7 = r17, r16
	nop 0
	(p6) br.cond.dptk .L291
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L290
.L296:
	.mmi
	setf.s f8 = r15
	nop 0
	nop 0
.L290:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L291:
	.pred.rel.mutex p8, p9
	.mbb
	nop 0
	(p9) br.cond.dptk .L296
	;;
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
	fcmp.ge p8, p9 = f8, f9
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
	.mmi
	stfe [r14] = f9
	ld8 r14 = [r15]
	nop 0
	;;
	.mii
	ld8 r15 = [r17]
	and r14 = r16, r14
	;;
	and r15 = r16, r15
	;;
	.mib
	cmp4.eq p6, p7 = r15, r14
	nop 0
	(p6) br.cond.dptk .L301
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mfi
	nop 0
	(p7) mov f8 = f9
	nop 0
	.mmb
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
	;;
.L301:
	.body
	.copy_state 1
	.pred.rel.mutex p8, p9
	.mmi
	nop 0
	(p9) adds r14 = 16, r12
	nop 0
	;;
	.mib
	(p9) ldfe f8 = [r14]
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
	.mmf
	nop 0
	getf.d r15 = f8
	fcmp.ge p8, p9 = f8, f9
	.mmf
	nop 0
	nop 0
	mov f8 = f9
	;;
	.mmi
	nop 0
	getf.d r14 = f9
	nop 0
	;;
	.mii
	nop 0
	shr.u r16 = r15, 63
	;;
	shr.u r17 = r14, 63
	;;
	.mib
	cmp4.eq p6, p7 = r17, r16
	nop 0
	(p6) br.cond.dptk .L309
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L308
.L314:
	.mmi
	setf.d f8 = r15
	nop 0
	nop 0
.L308:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L309:
	.pred.rel.mutex p8, p9
	.mbb
	nop 0
	(p9) br.cond.dptk .L314
	;;
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
	.mmf
	nop 0
	getf.s r15 = f8
	fcmp.ge p8, p9 = f8, f9
	.mmf
	nop 0
	nop 0
	mov f8 = f9
	;;
	.mlx
	getf.s r14 = f9
	movl r18 = -2147483648
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
	cmp4.eq p6, p7 = r17, r16
	nop 0
	(p6) br.cond.dptk .L319
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dptk .L318
.L324:
	.mmi
	setf.s f8 = r15
	nop 0
	nop 0
.L318:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L319:
	.pred.rel.mutex p8, p9
	.mbb
	nop 0
	(p9) br.cond.dptk .L324
	;;
	br.ret.sptk.many b0
	.endp fminf#
	.align 16
	.align 64
	.global fminl#
	.type	fminl#, @function
	.proc fminl#
fminl:
	.prologue
	.mfi
	.fframe 16
	adds r12 = -16, r12
	.body
	mov f6 = f8
	nop 0
	.mfi
	nop 0
	fcmp.ge p8, p9 = f8, f9
	nop 0
	;;
	.mmi
	adds r14 = 16, r12
	stfe [r12] = f9
	nop 0
	.mmi
	adds r15 = 24, r12
	adds r17 = 8, r12
	addl r16 = 32768, r0
	;;
	.mmf
	stfe [r14] = f8
	nop 0
	mov f8 = f9
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
	ldfe.s f7 = [r12]
	cmp4.eq p6, p7 = r15, r14
	(p6) br.cond.dptk .L329
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mfi
	nop 0
	(p7) mov f8 = f6
	nop 0
	.mmb
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
	;;
.L329:
	.body
	.copy_state 1
	.pred.rel.mutex p8, p9
	.mmi
	nop 0
	(p9) adds r14 = 16, r12
	nop 0
	;;
	.mmi
	chk.s f7, .L336
	nop 0
	nop 0
.L337:
	.pred.rel.mutex p8, p9
	.mmf
	nop 0
	nop 0
	mov f8 = f7
	;;
	.mib
	(p9) ldfe f8 = [r14]
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L336:
	.body
	.copy_state 2
	.pred.rel.mutex p8, p9
	.mib
	ldfe f7 = [r12]
	nop 0
	br .L337
	.endp fminl#
	.align 16
	.align 64
	.global l64a#
	.type	l64a#, @function
	.proc l64a#
l64a:
	.prologue
	.body
	.mmi
	cmp4.eq p6, p7 = 0, r32
	nop 0
	addl r16 = @gprel(s.0#), gp
	.mlx
	mov r14 = r32
	movl r17 = @gprel(digits#)
	;;
	.mib
	(p6) addl r16 = @gprel(s.0#), gp
	add r17 = r1, r17
	(p6) br.cond.dpnt .L339
	.mmi
	nop 0
	and r15 = 63, r14
	extr.u r14 = r14, 6, 26
	;;
	.align 32
.L340:
	.mmi
	add r15 = r17, r15
	nop 0
	cmp4.ne p6, p7 = 0, r14
	;;
	.mmi
	nop 0
	ld1 r15 = [r15]
	nop 0
	;;
	.mmb
	st1 [r16] = r15
	and r15 = 63, r14
	nop 0
	.mib
	adds r16 = 1, r16
	extr.u r14 = r14, 6, 26
	(p6) br.cond.dptk .L340
	;;
.L339:
	.mib
	st1 [r16] = r0
	addl r8 = @gprel(s.0#), gp
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
	ld8.sa r15 = [r33]
	cmp.ne p6, p7 = 0, r33
	adds r14 = 8, r32
	;;
	.mmi
	nop 0
	(p7) st8 [r14] = r0
	nop 0
	.mmb
	(p7) st8 [r32] = r0
	nop 0
	(p7) br.cond.dpnt .L349
	;;
	.mmi
	ld8.c.clr r15 = [r33]
	;;
	st8 [r32] = r15
	nop 0
	.mmi
	st8 [r14] = r33
	;;
	st8 [r33] = r32
	nop 0
	;;
	.mii
	ld8 r14 = [r32]
	nop 0
	;;
	cmp.eq p6, p7 = 0, r14
	.mmi
	adds r15 = 8, r14
	;;
	(p7) st8 [r15] = r32
	nop 0
.L349:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
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
	.mmi
	mov r37 = r33
	mov r42 = r1
	.save ar.lc, r43
	mov r43 = ar.lc
	;;
	.mmb
	nop 0
	adds r14 = -1, r39
	nop 0
	.mib
	cmp.eq p6, p7 = 0, r39
	.save rp, r40
	mov r40 = b0
	.body
	(p6) br.cond.dpnt .L368
	;;
	.mmi
	mov r45 = r37
	mov r44 = r32
	mov ar.lc = r14
	.align 32
.L370:
	.mmi
	ld8 r14 = [r36], 8
	mov r38 = r37
	add r37 = r37, r35
	;;
	.mii
	nop 0
	mov b6 = r14
	nop 0
	.mmb
	ld8 r1 = [r36], -8
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmi
	mov r45 = r37
	mov r44 = r32
	nop 0
	.mmb
	mov r1 = r42
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L367
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L370
.L368:
	.mmi
	setf.sig f6 = r35
	setf.sig f7 = r39
	adds r14 = 1, r39
	.mmi
	mov r46 = r35
	mov r45 = r32
	cmp.eq p6, p7 = 0, r35
	;;
	.mmi
	setf.sig f8 = r33
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
	(p6) br.cond.dpnt .L367
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
.L367:
	.mii
	mov r8 = r38
	mov ar.pfs = r41
	;;
	mov ar.lc = r43
	;;
	.mib
	nop 0
	mov b0 = r40
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
	.mmb
	nop 0
	adds r15 = -1, r14
	nop 0
	.mib
	cmp.eq p6, p7 = 0, r14
	.save rp, r38
	mov r38 = b0
	.body
	(p6) br.cond.dpnt .L385
	;;
	.mmi
	mov r43 = r33
	mov r42 = r32
	mov ar.lc = r15
	.align 32
.L387:
	.mmi
	ld8 r14 = [r36], 8
	mov r37 = r33
	add r33 = r33, r35
	;;
	.mii
	nop 0
	mov b6 = r14
	nop 0
	.mmb
	ld8 r1 = [r36], -8
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmi
	mov r43 = r33
	mov r42 = r32
	nop 0
	.mmb
	mov r1 = r40
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L384
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L387
.L385:
	.mmi
	mov r37 = r0
	nop 0
	nop 0
	;;
.L384:
	.mii
	mov r8 = r37
	mov ar.pfs = r39
	;;
	mov ar.lc = r41
	;;
	.mib
	nop 0
	mov b0 = r38
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
	adds r16 = 1, r32
	;;
	sxt1 r14 = r14
	;;
	.mii
	adds r17 = -9, r14
	mov r15 = r14
	;;
	cmp4.geu p6, p7 = 4, r17
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p7) br.cond.dpnt .L400
	.align 32
.L421:
	.mmi
	ld1 r14 = [r16]
	mov r32 = r16
	adds r16 = 1, r16
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mii
	adds r17 = -9, r14
	mov r15 = r14
	;;
	cmp4.geu p6, p7 = 4, r17
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L421
	;;
.L400:
	.mmi
	adds r18 = -48, r14
	nop 0
	mov r8 = r0
	.mmb
	cmp4.eq p6, p7 = 43, r14
	nop 0
	(p6) br.cond.dpnt .L402
	;;
	.mib
	cmp4.eq p6, p7 = 45, r14
	nop 0
	(p6) br.cond.dptk .L403
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r18
	(p7) br.cond.dpnt .L424
.L405:
	.mmi
	mov r8 = r0
	nop 0
	adds r32 = 1, r32
	;;
	.mmi
	ld1.s r18 = [r32]
	nop 0
	nop 0
	;;
	.align 32
.L408:
	.mmi
	shladd r14 = r8, 2, r0
	adds r17 = -48, r15
	chk.s r18, .L422
.L423:
	.mii
	nop 0
	sxt1 r15 = r18
	adds r32 = 1, r32
	;;
	.mii
	add r14 = r14, r8
	sxt1 r17 = r17
	adds r18 = -48, r15
	;;
	.mmi
	nop 0
	shladd r14 = r14, 1, r0
	cmp4.geu p6, p7 = 9, r18
	.mmi
	nop 0
	ld1.s r18 = [r32]
	nop 0
	;;
	.mib
	nop 0
	sub r8 = r14, r17
	(p6) br.cond.dptk .L408
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r17, r14
	br.ret.sptk.many b0
.L403:
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
	(p7) br.cond.dptk .L405
.L424:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L402:
	.mmi
	adds r32 = 1, r32
	nop 0
	mov r19 = r0
	;;
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
	.mbb
	cmp4.geu p6, p7 = 9, r14
	(p7) br.cond.dpnt .L424
	br .L405
.L422:
	.mib
	ld1 r18 = [r32]
	nop 0
	br .L423
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
	adds r16 = 1, r32
	;;
	sxt1 r14 = r14
	;;
	.mii
	adds r17 = -9, r14
	mov r15 = r14
	;;
	cmp4.geu p6, p7 = 4, r17
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p7) br.cond.dpnt .L427
	.align 32
.L448:
	.mmi
	ld1 r14 = [r16]
	mov r32 = r16
	adds r16 = 1, r16
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mii
	adds r17 = -9, r14
	mov r15 = r14
	;;
	cmp4.geu p6, p7 = 4, r17
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L448
	;;
.L427:
	.mmi
	adds r18 = -48, r14
	nop 0
	mov r8 = r0
	.mmb
	cmp4.eq p6, p7 = 43, r14
	nop 0
	(p6) br.cond.dpnt .L429
	;;
	.mib
	cmp4.eq p6, p7 = 45, r14
	nop 0
	(p6) br.cond.dptk .L430
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r18
	(p7) br.cond.dpnt .L451
.L432:
	.mmi
	mov r8 = r0
	nop 0
	adds r32 = 1, r32
	;;
	.mmi
	ld1.s r18 = [r32]
	nop 0
	nop 0
	;;
	.align 32
.L435:
	.mmi
	shladd r14 = r8, 2, r0
	adds r17 = -48, r15
	chk.s r18, .L449
.L450:
	.mii
	nop 0
	sxt1 r15 = r18
	adds r32 = 1, r32
	;;
	.mii
	add r14 = r14, r8
	sxt1 r17 = r17
	adds r18 = -48, r15
	;;
	.mmi
	nop 0
	shladd r14 = r14, 1, r0
	cmp4.geu p6, p7 = 9, r18
	.mmi
	nop 0
	ld1.s r18 = [r32]
	nop 0
	;;
	.mib
	nop 0
	sub r8 = r14, r17
	(p6) br.cond.dptk .L435
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r17, r14
	br.ret.sptk.many b0
.L430:
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
	(p7) br.cond.dptk .L432
.L451:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L429:
	.mmi
	adds r32 = 1, r32
	nop 0
	mov r19 = r0
	;;
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
	.mbb
	cmp4.geu p6, p7 = 9, r14
	(p7) br.cond.dpnt .L451
	br .L432
.L449:
	.mib
	ld1 r18 = [r32]
	nop 0
	br .L450
	.endp atol#
	.align 16
	.align 64
	.global atoll#
	.type	atoll#, @function
	.proc atoll#
atoll:
	.prologue
	.body
	.mii
	ld1 r14 = [r32]
	adds r16 = 1, r32
	;;
	sxt1 r14 = r14
	;;
	.mii
	adds r17 = -9, r14
	mov r15 = r14
	;;
	cmp4.geu p6, p7 = 4, r17
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p7) br.cond.dpnt .L454
	.align 32
.L472:
	.mmi
	ld1 r14 = [r16]
	mov r32 = r16
	adds r16 = 1, r16
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mii
	adds r17 = -9, r14
	mov r15 = r14
	;;
	cmp4.geu p6, p7 = 4, r17
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L472
	;;
.L454:
	.mmi
	adds r18 = -48, r14
	nop 0
	mov r8 = r0
	.mmb
	cmp4.eq p6, p7 = 43, r14
	nop 0
	(p6) br.cond.dpnt .L456
	;;
	.mib
	cmp4.ne p6, p7 = 45, r14
	nop 0
	(p7) br.cond.dptk .L473
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r18
	(p7) br.cond.dpnt .L476
.L458:
	.mmi
	mov r8 = r0
	nop 0
	adds r32 = 1, r32
	;;
	.mmi
	ld1.s r18 = [r32]
	nop 0
	nop 0
	;;
	.align 32
.L461:
	.mmi
	shladd r14 = r8, 2, r0
	adds r17 = -48, r15
	chk.s r18, .L474
.L475:
	.mii
	nop 0
	sxt1 r15 = r18
	adds r32 = 1, r32
	;;
	.mii
	add r14 = r14, r8
	sxt1 r17 = r17
	adds r18 = -48, r15
	;;
	.mmi
	nop 0
	shladd r14 = r14, 1, r0
	cmp4.geu p6, p7 = 9, r18
	.mmi
	nop 0
	ld1.s r18 = [r32]
	nop 0
	;;
	.mib
	nop 0
	sub r8 = r14, r17
	(p6) br.cond.dptk .L461
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r17, r14
	br.ret.sptk.many b0
.L473:
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
	cmp4.geu p6, p7 = 9, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r19 = 1, r0
	(p6) br.cond.dptk .L458
.L476:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L456:
	.mmi
	adds r32 = 1, r32
	nop 0
	mov r19 = r0
	;;
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
	.mbb
	cmp4.ltu p6, p7 = 9, r14
	(p6) br.cond.dpnt .L476
	br .L458
.L474:
	.mib
	ld1 r18 = [r32]
	nop 0
	br .L475
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
	setf.sig f3 = r35
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	nop 0
	;;
	.mbb
	setf.sig f4 = r33
	(p6) br.cond.dpnt .L479
	br .L494
.L496:
	.mib
	ld8 r14 = [r36], 8
	sub r34 = r34, r37, 1
	br .L493
	;;
.L494:
	.mii
	nop 0
	shr.u r37 = r34, 1
	mov r41 = r32
	.mmi
	ld8 r14 = [r36], 8
	;;
	nop 0
	sub r34 = r34, r37, 1
	.align 32
.L493:
	.mmi
	nop 0
	setf.sig f6 = r37
	mov b6 = r14
	.mmi
	nop 0
	ld8 r1 = [r36], -8
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
	nop 0
	getf.sig r15 = f2
	mov r41 = r32
	.mmb
	mov r1 = r40
	cmp4.gt p6, p7 = r0, r8
	(p6) br.cond.dpnt .L483
	;;
	.mii
	nop 0
	shr.u r37 = r34, 1
	nop 0
	.mmb
	getf.sig r14 = f3
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L478
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
	(p6) br.cond.dptk .L496
.L479:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L478:
	.mmb
	getf.sig r8 = f2
	adds r18 = 16, r12
	nop 0
	.mmi
	adds r19 = 32, r12
	nop 0
	mov ar.pfs = r39
	;;
	.mmi
	nop 0
	ldf.fill f2 = [r18], 32
	mov b0 = r38
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
.L483:
	.body
	.copy_state 1
	.mmi
	nop 0
	mov r34 = r37
	nop 0
	;;
	.mib
	cmp.ne p6, p7 = 0, r34
	shr.u r37 = r34, 1
	(p6) br.cond.dptk .L496
	.mib
	nop 0
	nop 0
	br .L479
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
	mov r38 = r34
	mov r42 = r1
	;;
	.mmb
	.save.f 0x1
	stf.spill [r16] = f2, 32
	.save.f 0x2
	stf.spill [r17] = f3
	nop 0
	.mmi
	cmp4.ne p6, p7 = 0, r34
	nop 0
	.save rp, r40
	mov r40 = b0
	;;
	.mmi
	setf.sig f3 = r35
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	nop 0
	;;
	.mbb
	setf.sig f4 = r33
	(p7) br.cond.dpnt .L502
	br .L513
.L498:
	.mii
	nop 0
	extr r14 = r38, 1, 31
	nop 0
	.mmb
	adds r38 = -1, r38
	nop 0
	br .L512
	;;
.L513:
	.mmb
	nop 0
	mov r45 = r37
	nop 0
	.mii
	mov r43 = r32
	extr r14 = r38, 1, 31
	adds r38 = -1, r38
	;;
	.align 32
.L512:
	.mmb
	setf.sig f2 = r14
	mov r39 = r14
	nop 0
	.mii
	ld8 r14 = [r36], 8
	extr r38 = r38, 1, 31
	;;
	mov b6 = r14
	.mmi
	nop 0
	ld8 r1 = [r36], -8
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f2 = f2, f3, f4
	;;
	.mib
	getf.sig r44 = f2
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmi
	getf.sig r15 = f2
	mov r45 = r37
	mov r43 = r32
	.mmb
	mov r1 = r42
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L497
	;;
	.mib
	getf.sig r14 = f3
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dpnt .L500
	;;
	.mmi
	cmp4.ne p6, p7 = 0, r38
	;;
	add r15 = r15, r14
	nop 0
	;;
	.mib
	setf.sig f4 = r15
	nop 0
	(p6) br.cond.dptk .L498
.L502:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L497:
	.mmb
	getf.sig r8 = f2
	adds r18 = 16, r12
	nop 0
	.mmi
	adds r19 = 32, r12
	nop 0
	mov ar.pfs = r41
	;;
	.mmi
	nop 0
	ldf.fill f2 = [r18], 32
	mov b0 = r40
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
.L500:
	.body
	.copy_state 1
	.mmi
	nop 0
	mov r38 = r39
	cmp4.eq p6, p7 = 0, r39
	.bbb
	nop 0
	(p6) br.cond.dpnt .L502
	br .L498
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
	.mmi
	mov r37 = r1
	nop 0
	sxt4 r33 = r33
	;;
	.mmi
	mov r39 = r33
	mov r38 = r32
	.save rp, r35
	mov r35 = b0
	.body
	.mmb
	nop 0
	nop 0
	br.call.sptk.many b0 = __divdi3#
	;;
	.mmi
	mov r34 = r8
	mov r39 = r33
	nop 0
	.mmb
	mov r38 = r32
	mov r1 = r37
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmi
	adds r15 = 16, r12
	nop 0
	mov r14 = r0
	.mii
	adds r16 = 20, r12
	mov r1 = r37
	;;
	unpack4.l r34 = r8, r34
	;;
	.mmi
	st8 [r15] = r34
	;;
	ld4 r16 = [r16]
	nop 0
	;;
	.mmi
	ld4 r15 = [r15]
	;;
	nop 0
	shl r15 = r15, 32
	;;
	.mii
	nop 0
	mix4.l r14 = r14, r15
	;;
	mix4.r r14 = r16, r14
	;;
	.mii
	mov r8 = r14
	mov ar.pfs = r36
	;;
	mov b0 = r35
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
	mov r39 = r33
	mov r38 = r32
	mov r37 = r1
	.body
	;;
	.mib
	nop 0
	nop 0
	br.call.sptk.many b0 = __divdi3#
	;;
	.mmi
	mov r34 = r8
	mov r39 = r33
	nop 0
	.mmb
	mov r38 = r32
	mov r1 = r37
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmb
	mov r9 = r8
	mov r8 = r34
	nop 0
	.mii
	mov r1 = r37
	mov ar.pfs = r36
	;;
	mov b0 = r35
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
	mov r39 = r33
	mov r38 = r32
	mov r37 = r1
	.body
	;;
	.mib
	nop 0
	nop 0
	br.call.sptk.many b0 = __divdi3#
	;;
	.mmi
	mov r34 = r8
	mov r39 = r33
	nop 0
	.mmb
	mov r38 = r32
	mov r1 = r37
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmb
	mov r9 = r8
	mov r8 = r34
	nop 0
	.mii
	mov r1 = r37
	mov ar.pfs = r36
	;;
	mov b0 = r35
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
	mov r39 = r33
	mov r38 = r32
	mov r37 = r1
	.body
	;;
	.mib
	nop 0
	nop 0
	br.call.sptk.many b0 = __divdi3#
	;;
	.mmi
	mov r34 = r8
	mov r39 = r33
	nop 0
	.mmb
	mov r38 = r32
	mov r1 = r37
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmb
	mov r9 = r8
	mov r8 = r34
	nop 0
	.mii
	mov r1 = r37
	mov ar.pfs = r36
	;;
	mov b0 = r35
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
	nop 0
	ld4 r14 = [r32]
	nop 0
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L532
	;;
	.align 32
.L529:
	.mib
	cmp4.ne p6, p7 = r14, r33
	nop 0
	(p7) br.cond.dpnt .L536
	;;
	.mmi
	adds r32 = 4, r32
	;;
	ld4 r14 = [r32]
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p7) br.cond.dptk .L529
.L532:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	;;
.L536:
	.mib
	nop 0
	mov r8 = r32
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
	.align 32
.L540:
	.mmi
	ld4 r14 = [r32]
	nop 0
	adds r32 = 4, r32
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mib
	cmp4.ne p6, p7 = r15, r14
	nop 0
	(p6) br.cond.dpnt .L538
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L540
	;;
.L538:
	.mmi
	addl r8 = -1, r0
	nop 0
	cmp4.lt p8, p9 = r15, r14
	.mmb
	cmp4.gt p6, p7 = r15, r14
	nop 0
	(p6) br.cond.dptk .L537
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L537:
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
.L547:
	.mmi
	ld4 r14 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mmi
	nop 0
	st4 [r15] = r14
	adds r15 = 4, r15
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L547
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
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L551
	;;
	.align 32
.L553:
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
	(p6) br.cond.dptk .L553
	.mii
	sub r8 = r8, r32
	nop 0
	;;
	shr r8 = r8, 2
.L551:
	.mib
	nop 0
	nop 0
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
	nop 0
	adds r14 = -1, r34
	nop 0
	.mib
	cmp.eq p6, p7 = 0, r34
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p6) br.cond.dpnt .L567
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L560:
	.mmi
	ld4 r15 = [r32]
	mov r16 = r32
	adds r32 = 4, r32
	.mii
	ld4 r14 = [r33]
	adds r33 = 4, r33
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mbb
	cmp4.eq.and.orcm p6, p7 = r15, r14
	(p7) br.cond.dpnt .L571
	br.cloop.sptk.few .L560
.L567:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L558:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L571:
	.mmi
	ld4 r15 = [r16]
	nop 0
	addl r8 = -1, r0
	;;
	.mib
	cmp4.lt p8, p9 = r14, r15
	cmp4.le p6, p7 = r14, r15
	(p7) br.cond.dptk .L558
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
	;;
	.mib
	nop 0
	(p7) mov ar.lc = r14
	(p6) br.cond.dpnt .L579
	.align 32
.L574:
	.mmi
	mov r8 = r32
	ld4 r14 = [r32]
	adds r32 = 4, r32
	;;
	.mbb
	cmp4.ne p6, p7 = r33, r14
	(p7) br.cond.dpnt .L572
	br.cloop.sptk.few .L574
.L579:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L572:
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
	;;
	.mib
	nop 0
	(p7) mov ar.lc = r14
	(p6) br.cond.dpnt .L591
	.align 32
.L584:
	.mmi
	ld4 r15 = [r32]
	ld4 r14 = [r33]
	adds r32 = 4, r32
	.mmi
	nop 0
	adds r33 = 4, r33
	nop 0
	;;
	.mbb
	cmp4.eq p6, p7 = r14, r15
	(p7) br.cond.dpnt .L595
	br.cloop.sptk.few .L584
.L591:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L582:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L595:
	.mmi
	addl r8 = -1, r0
	nop 0
	cmp4.lt p8, p9 = r14, r15
	.mmb
	cmp4.le p6, p7 = r14, r15
	nop 0
	(p7) br.cond.dptk .L582
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
	shladd r40 = r34, 2, r0
	mov r38 = r32
	.mmi
	mov r39 = r33
	mov r37 = r1
	cmp.eq p6, p7 = 0, r34
	;;
	.mmi
	mov r8 = r32
	nop 0
	.save rp, r35
	mov r35 = b0
	.body
	.bbb
	nop 0
	(p6) br.cond.dpnt .L597
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L597:
	.mii
	nop 0
	mov ar.pfs = r36
	nop 0
	;;
	.mib
	nop 0
	mov b0 = r35
	br.ret.sptk.many b0
	.endp wmemcpy#
	.align 16
	.align 64
	.global wmemmove#
	.type	wmemmove#, @function
	.proc wmemmove#
wmemmove:
	.prologue
	.mmi
	mov r8 = r32
	mov r18 = r32
	mov r15 = r33
	.mmi
	adds r14 = -1, r34
	sub r17 = r32, r33
	shladd r16 = r34, 2, r0
	;;
	.mib
	cmp.ne p6, p7 = r33, r32
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p7) br.cond.dpnt .L618
	;;
	.mib
	cmp.gtu p6, p7 = r16, r17
	or r17 = r32, r33
	(p6) br.cond.dptk .L605
	;;
	.mib
	and r17 = 7, r17
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L618
	;;
	.mmi
	nop 0
	cmp.geu p6, p7 = 8, r14
	nop 0
	;;
	.mib
	(p6) adds r16 = 4, r33
	nop 0
	(p6) br.cond.dpnt .L609
	;;
	.mmi
	adds r16 = 4, r33
	;;
	cmp.ne p6, p7 = r16, r32
	nop 0
	;;
	.mii
	cmp.eq.and.orcm p6, p7 = 0, r17
	nop 0
	;;
	(p6) shr.u r16 = r34, 1
	.mmi
	(p6) mov r14 = r32
	;;
	(p6) adds r16 = -1, r16
	nop 0
	;;
	.mib
	nop 0
	(p6) mov ar.lc = r16
	(p7) br.cond.dpnt .L609
	.align 32
.L612:
	.mmi
	ld8 r16 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r16
	adds r14 = 8, r14
	br.cloop.sptk.few .L612
	;;
	.mib
	and r14 = -2, r34
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dpnt .L618
	;;
	.mmi
	shladd r14 = r14, 2, r0
	;;
	add r33 = r33, r14
	add r14 = r8, r14
	;;
	.mmi
	nop 0
	ld4 r15 = [r33]
	nop 0
	;;
	.mmi
	st4 [r14] = r15
	nop 0
	nop 0
.L618:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L605:
	.mib
	nop 0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L618
	.mmi
	shladd r14 = r14, 2, r0
	;;
	add r33 = r33, r14
	shr.u r15 = r14, 2
	.mii
	add r14 = r32, r14
	nop 0
	;;
	mov ar.lc = r15
	.align 32
.L608:
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = -4, r33
	;;
	.mib
	st4 [r14] = r15
	adds r14 = -4, r14
	br.cloop.sptk.few .L608
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L609:
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L611:
	.mmi
	mov r14 = r33
	mov r33 = r16
	adds r16 = 4, r16
	;;
	.mmi
	nop 0
	ld4 r14 = [r14]
	nop 0
	;;
	.mib
	st4 [r18] = r14
	adds r18 = 4, r18
	br.cloop.sptk.few .L611
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
	mov r8 = r32
	adds r16 = -1, r34
	extr.u r14 = r32, 2, 1
	.mmi
	nop 0
	cmp.eq p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p6) br.cond.dpnt .L631
	;;
	.mib
	nop 0
	cmp.geu p6, p7 = 5, r16
	(p6) br.cond.dpnt .L636
	;;
	.mmi
	cmp.eq p6, p7 = 0, r14
	nop 0
	unpack4.l r15 = r33, r33
	;;
	.mmi
	(p7) adds r16 = -2, r34
	sub r34 = r34, r14
	shladd r14 = r14, 2, r0
	.mmi
	(p6) mov r17 = r32
	(p7) st4 [r32] = r33
	nop 0
	;;
	.mii
	nop 0
	shr.u r18 = r34, 1
	(p7) adds r17 = 4, r32
	.mmb
	nop 0
	add r14 = r32, r14
	nop 0
	;;
	.mii
	adds r18 = -1, r18
	nop 0
	;;
	mov ar.lc = r18
	;;
	.align 32
.L634:
	.mib
	st8 [r14] = r15
	adds r14 = 8, r14
	br.cloop.sptk.few .L634
	;;
	.mib
	and r14 = -2, r34
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dpnt .L631
	;;
	.mii
	shladd r15 = r14, 2, r0
	sub r16 = r16, r14
	;;
	add r14 = r17, r15
	;;
.L632:
	.mmi
	adds r15 = 4, r14
	adds r17 = 8, r14
	adds r18 = 12, r14
	.mmi
	adds r19 = 16, r14
	adds r20 = 20, r14
	cmp.eq p6, p7 = 0, r16
	;;
	.mib
	st4 [r14] = r33
	nop 0
	(p6) br.cond.dpnt .L631
	;;
	.mib
	st4 [r15] = r33
	cmp.eq p6, p7 = 1, r16
	(p6) br.cond.dpnt .L631
	;;
	.mib
	st4 [r17] = r33
	cmp.eq p6, p7 = 2, r16
	(p6) br.cond.dpnt .L631
	;;
	.mib
	st4 [r18] = r33
	cmp.eq p6, p7 = 3, r16
	(p6) br.cond.dpnt .L631
	;;
	.mmi
	cmp.eq p6, p7 = 4, r16
	st4 [r19] = r33
	nop 0
	;;
	.mmi
	(p7) st4 [r20] = r33
	nop 0
	nop 0
.L631:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L636:
	.mib
	nop 0
	mov r14 = r32
	br .L632
	.endp wmemset#
	.align 16
	.align 64
	.global bcopy#
	.type	bcopy#, @function
	.proc bcopy#
bcopy:
	.prologue
	.mmi
	adds r18 = -8, r34
	adds r19 = -2, r34
	adds r14 = -1, r34
	.mmi
	sub r16 = r33, r32, 1
	add r17 = r32, r34
	cmp.leu p6, p7 = r33, r32
	;;
	.mib
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p6) br.cond.dptk .L663
	;;
	.mmi
	add r16 = r33, r34
	mov r15 = r14
	add r14 = r32, r18
	.mmb
	add r32 = r32, r19
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	cmp.geu p6, p7 = 8, r15
	nop 0
	add r15 = r33, r15
	.mmb
	add r33 = r33, r18
	nop 0
	(p6) br.cond.dpnt .L665
	;;
	.mmi
	sub r15 = r15, r32
	nop 0
	or r18 = r33, r14
	;;
	.mii
	adds r15 = 6, r15
	and r18 = 7, r18
	;;
	cmp.ltu p6, p7 = 6, r15
	.mmi
	cmp.eq p8, p9 = 0, r18
	;;
	(p8) addl r18 = 1, r0
	(p6) addl r15 = 1, r0
	;;
	.mii
	(p9) mov r18 = r0
	(p7) mov r15 = r0
	;;
	and r15 = r18, r15
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r15
	(p6) br.cond.dpnt .L665
	.mmi
	and r18 = -8, r34
	;;
	adds r15 = -8, r18
	nop 0
	;;
	.mii
	nop 0
	shr.u r15 = r15, 3
	;;
	mov ar.lc = r15
	.align 32
.L666:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = -8, r33
	br.cloop.sptk.few .L666
	.mmi
	sub r14 = r16, r18
	sub r15 = r17, r18
	nop 0
	.mmb
	sub r16 = r34, r18
	cmp.eq p6, p7 = r18, r34
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	adds r17 = -1, r15
	adds r20 = -2, r15
	adds r19 = -2, r14
	.mmi
	adds r22 = -3, r15
	adds r21 = -3, r14
	adds r24 = -4, r15
	;;
	.mmi
	ld1 r18 = [r17]
	adds r17 = -1, r14
	adds r23 = -4, r14
	.mmi
	adds r26 = -5, r15
	adds r25 = -5, r14
	adds r28 = -6, r15
	;;
	.mmi
	adds r27 = -6, r14
	cmp.eq p8, p9 = 3, r16
	cmp.eq p10, p11 = 4, r16
	.mmi
	adds r15 = -7, r15
	adds r14 = -7, r14
	cmp.eq p12, p13 = 6, r16
	;;
	.mib
	st1 [r17] = r18
	cmp.eq p6, p7 = 1, r16
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	ld1 r17 = [r20]
	nop 0
	cmp.eq p6, p7 = 2, r16
	;;
	.mib
	st1 [r19] = r17
	nop 0
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1 r17 = [r22]
	cmp.eq p6, p7 = 5, r16
	.mmi
	nop 0
	ld1.sa r16 = [r24]
	nop 0
	;;
	.mib
	st1 [r21] = r17
	nop 0
	(p8) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1.c.clr r16 = [r24]
	nop 0
	;;
	.mib
	st1 [r23] = r16
	nop 0
	(p10) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1 r16 = [r26]
	nop 0
	;;
	.mib
	st1 [r25] = r16
	nop 0
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1 r16 = [r28]
	nop 0
	;;
	.mib
	st1 [r27] = r16
	nop 0
	(p12) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1 r15 = [r15]
	nop 0
	;;
	.mmi
	st1 [r14] = r15
	nop 0
	nop 0
.L662:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L663:
	.mib
	cmp.eq p6, p7 = r33, r32
	nop 0
	(p6) br.cond.dpnt .L662
	;;
	.mib
	cmp.eq p6, p7 = 0, r34
	nop 0
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	cmp.geu p6, p7 = 7, r14
	nop 0
	or r14 = r33, r32
	;;
	.mib
	and r14 = 7, r14
	(p6) adds r15 = 1, r32
	(p6) br.cond.dpnt .L670
	;;
	.mii
	cmp.ltu p6, p7 = 6, r16
	adds r15 = 1, r32
	;;
	(p6) addl r16 = 1, r0
	;;
	.mii
	(p7) mov r16 = r0
	cmp.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	.mmi
	(p7) mov r14 = r0
	;;
	and r14 = r16, r14
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L670
	.mmi
	and r17 = -8, r34
	nop 0
	mov r14 = r32
	;;
	.mmi
	adds r15 = -8, r17
	nop 0
	add r16 = r33, r17
	;;
	.mii
	nop 0
	shr.u r15 = r15, 3
	;;
	mov ar.lc = r15
	.align 32
.L671:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = 8, r33
	br.cloop.sptk.few .L671
	.mmi
	add r32 = r32, r17
	sub r14 = r34, r17
	adds r18 = 1, r16
	.mmi
	adds r20 = 2, r16
	adds r22 = 3, r16
	adds r24 = 4, r16
	;;
	.mmi
	adds r19 = 1, r32
	adds r21 = 2, r32
	adds r23 = 3, r32
	.mmi
	adds r25 = 4, r32
	adds r27 = 5, r32
	adds r26 = 5, r16
	;;
	.mmi
	cmp.eq p8, p9 = 2, r14
	cmp.eq p10, p11 = 3, r14
	cmp.eq p12, p13 = 4, r14
	.mmi
	cmp.eq p14, p15 = 5, r14
	ld1.s r15 = [r32]
	cmp.eq p6, p7 = r17, r34
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	cmp.eq p6, p7 = 1, r14
	chk.s r15, .L726
.L727:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.mmi
	adds r32 = 6, r32
	st1 [r16] = r15
	adds r16 = 6, r16
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1 r15 = [r19]
	cmp.eq p6, p7 = 6, r14
	.mmi
	nop 0
	ld1.sa r14 = [r21]
	nop 0
	;;
	.mib
	st1 [r18] = r15
	nop 0
	(p8) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r21]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p10) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1 r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r22] = r14
	nop 0
	(p12) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1 r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r24] = r14
	nop 0
	(p14) br.cond.dpnt .L662
	;;
	.mmi
	nop 0
	ld1 r14 = [r27]
	nop 0
	;;
	.mib
	st1 [r26] = r14
	nop 0
	(p6) br.cond.dpnt .L662
	;;
	.mmi
	ld1 r14 = [r32]
	nop 0
	mov ar.lc = r2
	;;
	.mib
	st1 [r16] = r14
	nop 0
	br.ret.sptk.many b0
.L665:
	.mmi
	sub r34 = r17, r34
	adds r15 = -1, r17
	adds r16 = -1, r16
	;;
	.mii
	sub r34 = r17, r34, 1
	nop 0
	;;
	mov ar.lc = r34
	.align 32
.L668:
	.mmi
	ld1 r14 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r16] = r14
	adds r16 = -1, r16
	br.cloop.sptk.few .L668
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L670:
	.mmi
	nop 0
	add r14 = r32, r34
	nop 0
	;;
	.mii
	sub r14 = r14, r15
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L674:
	.mmi
	mov r14 = r32
	mov r32 = r15
	adds r15 = 1, r15
	;;
	.mmi
	nop 0
	ld1 r14 = [r14]
	nop 0
	;;
	.mib
	st1 [r33] = r14
	adds r33 = 1, r33
	br.cloop.sptk.few .L674
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L726:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.mib
	ld1 r15 = [r32]
	nop 0
	br .L727
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
	and r14 = r15, r14
	and r8 = r32, r15
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
	;;
	.mmi
	nop 0
	addp4 r14 = r8, r0
	mov ar.lc = 31
	;;
	.align 32
.L757:
	.mii
	nop 0
	shr.u r14 = r32, r14
	adds r8 = 1, r8
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r14, 0
	addp4 r14 = r8, r0
	.bbb
	nop 0
	(p7) br.cond.dpnt .L754
	br.cloop.sptk.few .L757
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L754:
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
	(p6) br.cond.dpnt .L761
	;;
	.mib
	mov r8 = r14
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L761
	;;
	.mmi
	addl r8 = 1, r0
	nop 0
	nop 0
	;;
	.align 32
.L763:
	.mii
	nop 0
	extr r14 = r32, 1, 31
	adds r8 = 1, r8
	;;
	.mib
	mov r32 = r14
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L763
.L761:
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
	.mib
	nop 0
	mov r8 = r0
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
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	.endp gl_isinfd#
	.align 16
	.align 64
	.global gl_isinfl#
	.type	gl_isinfl#, @function
	.proc gl_isinfl#
gl_isinfl:
	.prologue
	.body
	.mib
	nop 0
	mov r8 = r0
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
	fadd.s f6 = f8, f8
	cmp4.le p8, p9 = r0, r33
	.mlx
	nop 0
	movl r14 = 0x40000000
	;;
	.mfi
	nop 0
	fcmp.eq p6, p7 = f6, f8
	nop 0
	.mlx
	setf.s f6 = r14
	(p9) movl r14 = 0x3f000000
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L777
	;;
	.mib
	(p9) setf.s f6 = r14
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L779
	;;
	.align 32
.L780:
	.mfi
	nop 0
	fmpy.s f8 = f8, f6
	nop 0
.L779:
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
	(p6) br.cond.dpnt .L777
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	nop 0
.L781:
	.mii
	nop 0
	extr.u r14 = r33, 31, 1
	nop 0
	;;
	.mib
	add r14 = r14, r33
	tbit.nz p6, p7 = r33, 0
	(p6) br.cond.dptk .L780
	;;
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	extr r33 = r14, 1, 31
	.mmb
	nop 0
	nop 0
	br .L781
.L777:
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
	fadd.d f6 = f8, f8
	cmp4.le p8, p9 = r0, r33
	.mlx
	nop 0
	movl r14 = 0x4000000000000000
	;;
	.mfi
	nop 0
	fcmp.eq p6, p7 = f6, f8
	nop 0
	.mlx
	setf.d f6 = r14
	(p9) movl r14 = 0x3fe0000000000000
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L789
	;;
	.mib
	(p9) setf.d f6 = r14
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L791
	;;
	.align 32
.L792:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	nop 0
.L791:
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
	(p6) br.cond.dpnt .L789
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	nop 0
.L793:
	.mii
	nop 0
	extr.u r14 = r33, 31, 1
	nop 0
	;;
	.mib
	add r14 = r14, r33
	tbit.nz p6, p7 = r33, 0
	(p6) br.cond.dptk .L792
	;;
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	extr r33 = r14, 1, 31
	.mmb
	nop 0
	nop 0
	br .L793
.L789:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp ldexp#
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	data4	0
	data4	-2147483648
	data4	16384
	data4	0
	.align 16
.LC1:
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
	fadd f6 = f8, f8
	cmp4.le p8, p9 = r0, r34
	.mlx
	nop 0
	movl r14 = @gprel(.LC0)
	;;
	.mmi
	nop 0
	add r14 = r1, r14
	nop 0
	;;
	.mlx
	ldfe.s f7 = [r14]
	(p9) movl r14 = @gprel(.LC1)
	;;
	.mmi
	nop 0
	(p9) add r14 = r1, r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.eq p6, p7 = f6, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L801
	;;
	.mii
	nop 0
	tbit.z p6, p7 = r34, 0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	mov f6 = f7
	;;
	.mbb
	(p9) ldfe f6 = [r14]
	(p9) br.cond.dpnt .L815
	nop 0
	;;
	.mmi
	chk.s f6, .L811
	nop 0
	nop 0
.L815:
	.pred.rel.mutex p6, p7
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L803
	.align 32
.L804:
	.mfi
	nop 0
	fmpy f8 = f8, f6
	nop 0
.L803:
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
	(p6) br.cond.dpnt .L801
	.mfi
	nop 0
	fmpy f6 = f6, f6
	nop 0
.L805:
	.mii
	nop 0
	extr.u r14 = r34, 31, 1
	nop 0
	;;
	.mib
	add r14 = r14, r34
	tbit.nz p6, p7 = r34, 0
	(p6) br.cond.dptk .L804
	;;
	.mfi
	nop 0
	fmpy f6 = f6, f6
	extr r34 = r14, 1, 31
	.mmb
	nop 0
	nop 0
	br .L805
.L801:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L811:
	.pred.rel.mutex p6, p7
	.mbb
	ldfe f6 = [r14]
	(p6) br.cond.dptk .L803
	br .L804
	.endp ldexpl#
	.align 16
	.align 64
	.global memxor#
	.type	memxor#, @function
	.proc memxor#
memxor:
	.prologue 1, 2
	.mmi
	or r15 = r33, r32
	and r19 = -8, r34
	mov r8 = r32
	.mmi
	mov r14 = r32
	adds r20 = -1, r34
	mov r16 = r33
	;;
	.mmb
	and r15 = 7, r15
	add r18 = r32, r19
	nop 0
	.mii
	adds r17 = -8, r19
	.save pr, r2
	mov r2 = pr
	cmp.eq p6, p7 = 0, r34
	;;
	.mii
	nop 0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	shr.u r17 = r17, 3
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L817
	;;
	.mib
	cmp.geu p6, p7 = 6, r20
	nop 0
	(p6) br.cond.dpnt .L818
	;;
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r15
	(p6) br.cond.dpnt .L818
	.mii
	nop 0
	mov ar.lc = r17
	nop 0
	.align 32
.L819:
	.mmi
	ld8 r17 = [r16]
	ld8 r15 = [r14]
	adds r16 = 8, r16
	;;
	.mmi
	nop 0
	xor r15 = r17, r15
	nop 0
	;;
	.mib
	st8 [r14] = r15
	adds r14 = 8, r14
	br.cloop.sptk.few .L819
	;;
	.mmi
	add r33 = r33, r19
	ld1.s r15 = [r18]
	sub r14 = r34, r19
	.mmi
	adds r16 = 1, r18
	adds r17 = 2, r18
	adds r20 = 3, r18
	;;
	.mmi
	adds r23 = 1, r33
	adds r24 = 2, r33
	adds r25 = 3, r33
	.mmi
	adds r21 = 4, r18
	adds r26 = 4, r33
	adds r22 = 5, r18
	;;
	.mmi
	adds r27 = 5, r33
	cmp.eq p8, p9 = 2, r14
	cmp.eq p10, p11 = 3, r14
	.mmi
	cmp.eq p12, p13 = 4, r14
	cmp.eq p14, p15 = 5, r14
	cmp.eq p16, p17 = 6, r14
	;;
	.mmi
	nop 0
	cmp.eq p6, p7 = r19, r34
	nop 0
	.mmb
	ld1.s r19 = [r33]
	nop 0
	(p6) br.cond.dpnt .L817
	;;
	.mmi
	cmp.eq p6, p7 = 1, r14
	ld1.s r14 = [r23]
	nop 0
	;;
	.mmi
	chk.s r15, .L848
	nop 0
	nop 0
.L849:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r19, .L850
	nop 0
	nop 0
.L851:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	xor r15 = r19, r15
	nop 0
	adds r33 = 6, r33
	;;
	.mib
	st1 [r18] = r15
	adds r18 = 6, r18
	(p6) br.cond.dpnt .L817
	;;
	.mii
	ld1 r15 = [r16]
	nop 0
	;;
	chk.s r14, .L852
.L853:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	xor r14 = r15, r14
	ld1.sa r15 = [r17]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r16] = r14
	nop 0
	.mmb
	ld1.s r14 = [r24]
	nop 0
	(p8) br.cond.dpnt .L817
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r17]
	chk.s r14, .L854
	;;
.L855:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	xor r14 = r15, r14
	ld1.sa r15 = [r20]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r17] = r14
	nop 0
	.mmb
	ld1.s r14 = [r25]
	nop 0
	(p10) br.cond.dpnt .L817
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r20]
	chk.s r14, .L856
	;;
.L857:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	xor r14 = r15, r14
	ld1.sa r15 = [r21]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r20] = r14
	nop 0
	.mmb
	ld1.s r14 = [r26]
	nop 0
	(p12) br.cond.dpnt .L817
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r21]
	chk.s r14, .L858
	;;
.L859:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	xor r14 = r15, r14
	ld1.sa r15 = [r22]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r21] = r14
	nop 0
	.mmb
	ld1.s r14 = [r27]
	nop 0
	(p14) br.cond.dpnt .L817
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r22]
	chk.s r14, .L860
	;;
.L861:
	.pred.rel.mutex p16, p17
	.mmi
	xor r14 = r15, r14
	ld1.sa r15 = [r18]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r22] = r14
	nop 0
	.mmb
	ld1.s r14 = [r33]
	nop 0
	(p16) br.cond.dpnt .L817
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r18]
	chk.s r14, .L862
	;;
.L863:
	.mmi
	nop 0
	xor r14 = r15, r14
	nop 0
	;;
	.mmi
	st1 [r18] = r14
	nop 0
	nop 0
.L817:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L818:
	.mmi
	add r34 = r33, r34
	nop 0
	mov r16 = r8
	;;
	.mii
	sub r34 = r34, r33, 1
	nop 0
	;;
	mov ar.lc = r34
	.align 32
.L821:
	.mmi
	ld1 r15 = [r33]
	ld1 r17 = [r16]
	mov r14 = r16
	.mii
	adds r33 = 1, r33
	adds r16 = 1, r16
	;;
	xor r15 = r17, r15
	;;
	.mib
	st1 [r14] = r15
	nop 0
	br.cloop.sptk.few .L821
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L848:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r18]
	nop 0
	br .L849
.L850:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r19 = [r33]
	nop 0
	br .L851
.L852:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r23]
	nop 0
	br .L853
	;;
.L854:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r24]
	nop 0
	br .L855
	;;
.L856:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r25]
	nop 0
	br .L857
	;;
.L858:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r26]
	nop 0
	br .L859
	;;
.L860:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r27]
	nop 0
	br .L861
	;;
.L862:
	.mib
	ld1 r14 = [r33]
	nop 0
	br .L863
	.endp memxor#
	.align 16
	.align 64
	.global strncat#
	.type	strncat#, @function
	.proc strncat#
strncat:
	.prologue
	.mmb
	ld1 r14 = [r32]
	mov r8 = r32
	nop 0
	.mmi
	adds r16 = 1, r32
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
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
	(p6) br.cond.dpnt .L865
	;;
	.align 32
.L866:
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
	(p6) br.cond.dptk .L866
	;;
.L865:
	.mmi
	cmp.eq p6, p7 = 0, r34
	nop 0
	adds r15 = -1, r34
	;;
	.mib
	nop 0
	(p7) mov ar.lc = r15
	(p6) br.cond.dpnt .L867
	.align 32
.L868:
	.mii
	ld1 r15 = [r33]
	adds r33 = 1, r33
	;;
	sxt1 r16 = r15
	.mmi
	st1 [r14] = r15
	nop 0
	adds r14 = 1, r14
	;;
	.mbb
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dpnt .L870
	br.cloop.sptk.few .L868
.L867:
	.mmi
	st1 [r14] = r0
	nop 0
	nop 0
	;;
.L870:
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
	mov r8 = r0
	cmp.eq p6, p7 = 0, r33
	nop 0
	.mmi
	adds r14 = -1, r33
	nop 0
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	;;
	.mib
	nop 0
	(p7) mov ar.lc = r14
	(p6) br.cond.dpnt .L888
.L881:
	.mii
	ld1 r14 = [r32]
	adds r32 = 1, r32
	;;
	sxt1 r14 = r14
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L889
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L889:
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L881
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L888:
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
	(p7) br.cond.dpnt .L895
.L891:
	.mmi
	mov r15 = r33
	nop 0
	nop 0
	;;
	.align 32
.L894:
	.mii
	ld1 r14 = [r15]
	adds r15 = 1, r15
	;;
	sxt1 r14 = r14
	;;
	.mib
	cmp4.ne p6, p7 = 0, r14
	nop 0
	(p7) br.cond.dpnt .L899
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r16, r14
	(p7) br.cond.dptk .L894
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L899:
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
	(p7) br.cond.dptk .L891
.L895:
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
.L902:
	.mmi
	ld1 r14 = [r32]
	;;
	nop 0
	sxt1 r14 = r14
	;;
	.mmi
	cmp4.ne p8, p9 = r14, r33
	nop 0
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	(p9) mov r8 = r32
	adds r32 = 1, r32
	(p6) br.cond.dptk .L902
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
	(p6) br.cond.dpnt .L916
	.align 32
.L908:
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
	(p6) br.cond.dptk .L908
	;;
	.mmi
	sub r20 = r16, r33
	nop 0
	cmp.eq p6, p7 = r33, r16
	.mib
	nop 0
	zxt1 r21 = r19
	(p6) br.cond.dpnt .L916
	;;
	.mib
	nop 0
	(p7) add r20 = r33, r20
	br .L923
.L914:
	.mib
	nop 0
	nop 0
	br .L923
.L923:
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
	(p6) br.cond.dpnt .L913
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L914
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
.L913:
	.mii
	mov r14 = r33
	mov r16 = r21
	;;
	mov r17 = r14
	.align 32
.L910:
	.mii
	ld1 r15 = [r14]
	adds r14 = 1, r14
	;;
	cmp4.ne p6, p7 = 0, r15
	.mmi
	cmp4.eq p8, p9 = r16, r15
	;;
	(p8) addl r18 = 1, r0
	(p6) addl r15 = 1, r0
	;;
	.mmi
	(p9) mov r18 = r0
	(p7) mov r15 = r0
	cmp.ne p6, p7 = r14, r20
	;;
	.mmi
	and r15 = r18, r15
	;;
	nop 0
	tbit.nz.and.orcm p6, p7 = r15, 0
	.mmb
	ld1.s r15 = [r32]
	nop 0
	(p7) br.cond.dpnt .L911
	;;
	.mmi
	nop 0
	mov r17 = r14
	chk.s r15, .L925
.L926:
	.mmi
	nop 0
	mov r16 = r15
	adds r32 = 1, r32
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L910
	;;
	.mmi
	mov r17 = r14
	nop 0
	nop 0
	;;
.L911:
	.mmi
	ld1 r14 = [r17]
	nop 0
	adds r32 = 1, r8
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r16, r14
	(p7) br.cond.dptk .L914
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L916:
	.mib
	nop 0
	mov r8 = r32
	br.ret.sptk.many b0
.L925:
	.mib
	ld1 r15 = [r32]
	nop 0
	br .L926
	.endp strstr#
	.align 16
	.align 64
	.global copysign#
	.type	copysign#, @function
	.proc copysign#
copysign:
	.prologue
	.body
	.mfi
	nop 0
	fcmp.gt p8, p9 = f8, f0
	nop 0
	.mfi
	nop 0
	fcmp.lt p10, p11 = f9, f0
	nop 0
	;;
	.mfi
	nop 0
	mov f6 = f8
	nop 0
	.mfi
	nop 0
	fcmp.lt p6, p7 = f8, f0
	nop 0
	;;
	.mmi
	(p10) addl r15 = 1, r0
	nop 0
	(p8) addl r14 = 1, r0
	;;
	.mmf
	(p11) mov r15 = r0
	(p9) mov r14 = r0
	fcmp.gt p8, p9 = f9, f0
	;;
	.mmi
	nop 0
	and r14 = r15, r14
	nop 0
	;;
	.mmf
	cmp4.eq p10, p11 = 0, r14
	(p9) cmp4.ne.and.orcm p6, p7 = 0, r0
	fneg f6 = f6
	.bbb
	(p6) br.cond.dpnt .L933
	(p11) br.cond.dpnt .L933
	br.ret.sptk.many b0
	;;
.L933:
	.mfb
	nop 0
	mov f8 = f6
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
	mov r8 = r32
	cmp.eq p6, p7 = 0, r35
	sub r19 = r33, r35
	.mmi
	ld1.s r20 = [r34]
	adds r21 = -1, r35
	adds r22 = 1, r34
	;;
	.mmb
	(p6) mov r8 = r32
	add r19 = r32, r19
	nop 0
	.mib
	cmp.eq p8, p9 = 1, r35
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p6) br.cond.dpnt .L934
	;;
	.mib
	cmp.gtu p6, p7 = r35, r33
	nop 0
	(p6) br.cond.dpnt .L945
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r19, r32
	(p6) br.cond.dpnt .L945
	;;
	.mmi
	chk.s r20, .L962
	nop 0
	nop 0
.L963:
	.pred.rel.mutex p8, p9
	.mii
	nop 0
	sxt1 r20 = r20
	nop 0
	.align 32
.L940:
	.pred.rel.mutex p8, p9
	.mmi
	ld1 r14 = [r8]
	adds r18 = 1, r8
	mov r15 = r22
	;;
	.mii
	nop 0
	sxt1 r14 = r14
	add r16 = r18, r21
	;;
	.mmi
	cmp4.ne p6, p7 = r20, r14
	sub r16 = r16, r18, 1
	mov r14 = r18
	;;
	.mib
	(p6) mov r8 = r18
	mov ar.lc = r16
	(p7) br.cond.dpnt .L952
	;;
.L936:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	cmp.leu p6, p7 = r8, r19
	(p6) br.cond.dptk .L940
.L945:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L934:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L952:
	.pred.rel.mutex p8, p9
	.mbb
	nop 0
	(p8) br.cond.dpnt .L934
	br .L955
.L937:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	nop 0
	br .L954
.L955:
	.pred.rel.mutex p8, p9
	.mmi
	ld1.s r17 = [r14]
	ld1.s r16 = [r15]
	nop 0
	;;
	.align 32
.L954:
	.pred.rel.mutex p8, p9
	.mmi
	chk.s r17, .L956
	nop 0
	nop 0
.L957:
	.pred.rel.mutex p8, p9
	.mmi
	nop 0
	adds r14 = 1, r14
	chk.s r16, .L958
.L959:
	.pred.rel.mutex p8, p9
	.mmi
	adds r15 = 1, r15
	nop 0
	cmp4.eq p6, p7 = r16, r17
	;;
	.mmi
	ld1.s r17 = [r14]
	ld1.s r16 = [r15]
	nop 0
	.bbb
	nop 0
	(p7) br.cond.dpnt .L953
	br.cloop.sptk.few .L937
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L953:
	.pred.rel.mutex p8, p9
	.mmi
	nop 0
	ld1.s r14 = [r18]
	adds r8 = 1, r18
	.mmb
	cmp.gtu p6, p7 = r18, r19
	mov r15 = r22
	(p6) br.cond.dpnt .L945
	;;
	.mmi
	add r16 = r8, r21
	;;
	sub r16 = r16, r8, 1
	chk.s r14, .L960
.L961:
	.pred.rel.mutex p8, p9
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mmb
	cmp4.ne p6, p7 = r20, r14
	mov r14 = r18
	nop 0
	.mib
	mov r18 = r8
	mov ar.lc = r16
	(p6) br.cond.dptk .L936
	;;
	.mmi
	ld1.s r17 = [r18]
	ld1.s r16 = [r15]
	mov r8 = r14
	.mmb
	nop 0
	mov r14 = r18
	br .L937
	;;
.L956:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r17 = [r14]
	nop 0
	br .L957
.L958:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r16 = [r15]
	nop 0
	br .L959
.L960:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r14 = [r18]
	nop 0
	br .L961
.L962:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r20 = [r34]
	nop 0
	br .L963
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
	mov r40 = r34
	mov r38 = r32
	.mmi
	mov r39 = r33
	mov r37 = r1
	cmp.eq p6, p7 = 0, r34
	;;
	.mii
	nop 0
	.save rp, r35
	mov r35 = b0
	.body
	nop 0
	.bbb
	nop 0
	(p6) br.cond.dpnt .L965
	br.call.sptk.many b0 = memmove#
	;;
	.mmi
	mov r1 = r37
	nop 0
	nop 0
.L965:
	.mmi
	add r8 = r32, r34
	nop 0
	mov ar.pfs = r36
	;;
	.mib
	nop 0
	mov b0 = r35
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
	mov r16 = r0
	.mlx
	mov r14 = r0
	movl r15 = 0x3fe0000000000000
	;;
	.mlx
	setf.d f6 = r15
	movl r18 = 0x3fd0000000000000
	;;
	.mfi
	nop 0
	(p6) fneg f8 = f8
	(p6) addl r16 = 1, r0
	;;
	.mfi
	nop 0
	fcmp.lt p8, p9 = f8, f6
	nop 0
	.mfi
	nop 0
	fcmp.neq p6, p7 = f8, f0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	mov f7 = f6
	;;
	.mmi
	(p6) addl r17 = 1, r0
	nop 0
	(p8) addl r15 = 1, r0
	;;
	.mmf
	(p7) mov r17 = r0
	(p9) mov r15 = r0
	fcmp.ge p6, p7 = f8, f1
	;;
	.mlx
	and r15 = r17, r15
	movl r17 = 0x4000000000000000
	;;
	.mib
	setf.d f9 = r17
	nop 0
	(p7) br.cond.dpnt .L990
	.align 32
.L976:
	.mmf
	nop 0
	nop 0
	mov f6 = f8
	.mfi
	nop 0
	fmpy.d f8 = f8, f7
	adds r14 = 1, r14
	;;
	.mmf
	nop 0
	nop 0
	fcmp.ge p6, p7 = f6, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L976
.L977:
	.mmi
	cmp4.eq p6, p7 = 0, r16
	st4 [r33] = r14
	nop 0
	;;
	.mfb
	nop 0
	(p7) fneg f8 = f8
	br.ret.sptk.many b0
.L990:
	.mmi
	setf.d f7 = r18
	mov r14 = r0
	cmp4.eq p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) mov r14 = r0
	(p6) br.cond.dptk .L977
	;;
	.align 32
.L978:
	.mmf
	nop 0
	nop 0
	mov f6 = f8
	.mfi
	nop 0
	fadd.d f8 = f8, f8
	adds r14 = -1, r14
	;;
	.mfi
	nop 0
	fcmp.lt p6, p7 = f6, f7
	nop 0
	.mfi
	nop 0
	mov f6 = f8
	nop 0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L977
	;;
	.mfi
	nop 0
	fadd.d f8 = f8, f8
	adds r14 = -1, r14
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f6, f7
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L978
	.mib
	nop 0
	nop 0
	br .L977
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
	(p6) br.cond.dpnt .L994
	.mii
	nop 0
	extr r14 = r32, 0, 1
	shr.u r32 = r32, 1
	;;
	.align 32
.L996:
	.mmi
	and r14 = r33, r14
	shladd r33 = r33, 1, r0
	cmp.ne p6, p7 = 0, r32
	;;
	.mmi
	nop 0
	add r8 = r8, r14
	extr r14 = r32, 0, 1
	.mib
	nop 0
	shr.u r32 = r32, 1
	(p6) br.cond.dptk .L996
.L994:
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
	(p7) br.cond.dpnt .L1003
	;;
	.align 32
.L1002:
	.mib
	cmp4.le p6, p7 = r0, r33
	nop 0
	(p7) br.cond.dpnt .L1003
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
	(p7) br.cond.dptk .L1002
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1006
	;;
.L1003:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1008:
	.mmi
	nop 0
	cmp4.gtu p6, p7 = r33, r32
	nop 0
	;;
	.mmi
	(p7) sub r32 = r32, r33
	(p7) or r8 = r8, r14
	extr.u r14 = r14, 1, 31
	;;
	.mii
	nop 0
	extr.u r33 = r33, 1, 31
	nop 0
	.mmb
	cmp4.ne p6, p7 = 0, r14
	nop 0
	(p6) br.cond.dptk .L1008
	;;
.L1006:
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
	xor r14 = r15, r32
	nop 0
	cmp.eq p6, p7 = r15, r32
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
	(p6) br.cond.dpnt .L1024
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.align 32
.L1026:
	.mii
	and r14 = r33, r14
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
	;;
	.mmi
	nop 0
	add r8 = r8, r14
	extr r14 = r32, 0, 1
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L1026
.L1024:
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
	nop 0
	and r17 = -8, r34
	extr.u r14 = r34, 3, 29
	.mmi
	addp4 r15 = r34, r0
	adds r18 = -1, r34
	cmp.leu p6, p7 = r33, r32
	;;
	.mib
	add r15 = r33, r15
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p7) br.cond.dptk .L1035
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r15, r32
	(p7) br.cond.dptk .L1085
	;;
.L1035:
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dpnt .L1086
	.mmi
	addp4 r16 = r14, r0
	mov r15 = r33
	mov r14 = r32
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
.L1038:
	.mmi
	ld8 r16 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r16
	adds r14 = 8, r14
	br.cloop.sptk.few .L1038
	.mmi
	sub r16 = r34, r17, 1
	addp4 r19 = r17, r0
	nop 0
	.mmb
	sub r18 = r34, r17
	cmp4.geu p6, p7 = r17, r34
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	add r15 = r32, r19
	add r14 = r33, r19
	nop 0
	.mmb
	add r20 = r33, r19, 1
	cmp4.geu p6, p7 = 7, r16
	(p6) br.cond.dpnt .L1040
	;;
	.mmi
	sub r20 = r15, r20
	or r21 = r15, r14
	extr.u r16 = r18, 3, 29
	;;
	.mmi
	cmp.ltu p6, p7 = 6, r20
	and r21 = 7, r21
	shladd r16 = r16, 3, r0
	;;
	.mii
	(p6) addl r20 = 1, r0
	adds r16 = -8, r16
	;;
	(p7) mov r20 = r0
	.mii
	cmp.eq p6, p7 = 0, r21
	shr.u r16 = r16, 3
	;;
	(p6) addl r21 = 1, r0
	;;
	.mmi
	(p7) mov r21 = r0
	;;
	and r20 = r21, r20
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r20
	(p6) br.cond.dpnt .L1040
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.align 32
.L1041:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1041
	.mmi
	and r14 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mib
	add r17 = r17, r14
	cmp4.eq p6, p7 = 0, r18
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	addp4 r14 = r17, r0
	adds r21 = 1, r17
	adds r25 = 2, r17
	.mmi
	adds r24 = 3, r17
	adds r23 = 4, r17
	adds r22 = 5, r17
	;;
	.mmi
	add r26 = r33, r14
	addp4 r15 = r21, r0
	addp4 r16 = r25, r0
	.mmi
	addp4 r18 = r24, r0
	addp4 r19 = r23, r0
	addp4 r20 = r22, r0
	;;
	.mmi
	ld1 r26 = [r26]
	add r14 = r32, r14
	add r27 = r33, r15
	.mmi
	add r15 = r32, r15
	add r28 = r33, r16
	add r16 = r32, r16
	;;
	.mmi
	add r29 = r33, r18
	add r18 = r32, r18
	add r30 = r33, r19
	.mmi
	add r19 = r32, r19
	add r31 = r33, r20
	add r20 = r32, r20
	;;
	.mmi
	adds r17 = 6, r17
	cmp4.geu p8, p9 = r24, r34
	cmp4.geu p10, p11 = r23, r34
	.mmi
	cmp4.geu p12, p13 = r22, r34
	st1 [r14] = r26
	cmp4.leu p6, p7 = r34, r21
	;;
	.mib
	ld1.s r21 = [r27]
	addp4 r14 = r17, r0
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	add r33 = r33, r14
	nop 0
	add r32 = r32, r14
	.mii
	ld1.sa r14 = [r28]
	cmp4.geu p6, p7 = r25, r34
	;;
	chk.s r21, .L1087
.L1088:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	st1 [r15] = r21
	nop 0
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	cmp4.geu p6, p7 = r17, r34
	;;
	ld1.c.clr r14 = [r28]
	nop 0
	;;
	.mib
	st1 [r16] = r14
	nop 0
	(p8) br.cond.dpnt .L1031
	;;
	.mmi
	nop 0
	ld1 r14 = [r29]
	nop 0
	;;
	.mib
	st1 [r18] = r14
	nop 0
	(p10) br.cond.dpnt .L1031
	;;
	.mmi
	nop 0
	ld1 r14 = [r30]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p12) br.cond.dpnt .L1031
	;;
	.mmi
	nop 0
	ld1 r14 = [r31]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	nop 0
	ld1 r14 = [r33]
	nop 0
	;;
	.mmi
	st1 [r32] = r14
	nop 0
	nop 0
.L1031:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1085:
	.mib
	addp4 r19 = r18, r0
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L1031
	;;
	.mmi
	adds r15 = -7, r19
	adds r20 = -1, r19
	nop 0
	.mmb
	add r17 = r32, r19
	cmp4.geu p6, p7 = 8, r18
	(p6) br.cond.dpnt .L1045
	;;
	.mmi
	add r16 = r32, r15
	add r15 = r33, r15
	add r20 = r33, r20
	;;
	.mmi
	sub r17 = r17, r20
	nop 0
	or r20 = r15, r16
	;;
	.mii
	adds r17 = 6, r17
	and r20 = 7, r20
	;;
	cmp.ltu p6, p7 = 6, r17
	.mmi
	cmp.eq p8, p9 = 0, r20
	;;
	(p8) addl r20 = 1, r0
	(p6) addl r17 = 1, r0
	;;
	.mii
	(p9) mov r20 = r0
	(p7) mov r17 = r0
	;;
	and r17 = r20, r17
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r17
	(p6) br.cond.dpnt .L1045
	;;
	.mmi
	adds r17 = -1, r14
	nop 0
	cmp4.eq p6, p7 = 0, r14
	;;
	.mii
	addp4 r17 = r17, r0
	(p6) mov ar.lc = 0
	;;
	(p7) mov ar.lc = r17
	.align 32
.L1046:
	.mmi
	ld8 r17 = [r15]
	nop 0
	adds r15 = -8, r15
	;;
	.mib
	st8 [r16] = r17
	adds r16 = -8, r16
	br.cloop.sptk.few .L1046
	.mmi
	nop 0
	shladd r14 = r14, 3, r0
	nop 0
	;;
	.mib
	sub r15 = r18, r14
	cmp4.eq p6, p7 = r14, r34
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	addp4 r14 = r15, r0
	adds r23 = -1, r15
	adds r22 = -2, r15
	.mmi
	adds r21 = -3, r15
	adds r20 = -4, r15
	cmp4.eq p6, p7 = 0, r15
	;;
	.mmi
	add r24 = r33, r14
	addp4 r16 = r23, r0
	addp4 r17 = r22, r0
	.mmi
	addp4 r18 = r21, r0
	addp4 r19 = r20, r0
	cmp4.eq p10, p11 = 0, r21
	;;
	.mmi
	adds r21 = -5, r15
	adds r15 = -6, r15
	add r14 = r32, r14
	.mmi
	ld1 r24 = [r24]
	add r25 = r33, r16
	add r16 = r32, r16
	;;
	.mmi
	add r26 = r33, r17
	add r17 = r32, r17
	add r27 = r33, r18
	.mmi
	add r18 = r32, r18
	add r28 = r33, r19
	add r19 = r32, r19
	;;
	.mmi
	cmp4.eq p8, p9 = 0, r22
	cmp4.eq p12, p13 = 0, r20
	addp4 r15 = r15, r0
	.mmb
	st1 [r14] = r24
	addp4 r14 = r21, r0
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	ld1 r24 = [r25]
	add r20 = r33, r14
	add r14 = r32, r14
	.mmi
	add r33 = r33, r15
	add r32 = r32, r15
	cmp4.eq p6, p7 = 0, r23
	;;
	.mmi
	nop 0
	ld1.sa r15 = [r28]
	nop 0
	.mmb
	st1 [r16] = r24
	nop 0
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	ld1 r16 = [r26]
	nop 0
	cmp4.eq p6, p7 = 0, r21
	;;
	.mib
	st1 [r17] = r16
	nop 0
	(p8) br.cond.dpnt .L1031
	;;
	.mmi
	nop 0
	ld1 r16 = [r27]
	nop 0
	;;
	.mib
	st1 [r18] = r16
	nop 0
	(p10) br.cond.dpnt .L1031
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r28]
	nop 0
	;;
	.mib
	st1 [r19] = r15
	nop 0
	(p12) br.cond.dpnt .L1031
	;;
	.mmi
	nop 0
	ld1 r15 = [r20]
	nop 0
	;;
	.mib
	st1 [r14] = r15
	nop 0
	(p6) br.cond.dpnt .L1031
	;;
	.mmi
	nop 0
	ld1 r14 = [r33]
	nop 0
	;;
	.mib
	st1 [r32] = r14
	nop 0
	br .L1031
.L1086:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) addp4 r19 = r17, r0
	(p7) br.cond.dpnt .L1031
	;;
.L1040:
	.mmi
	sub r17 = r34, r17, 1
	nop 0
	add r14 = r33, r19, 1
	.mii
	add r33 = r33, r19
	add r32 = r32, r19
	;;
	addp4 r17 = r17, r0
	;;
	.mmi
	nop 0
	add r14 = r14, r17
	nop 0
	;;
	.mii
	sub r14 = r14, r33, 1
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L1043:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1043
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L1045:
	.mmi
	add r33 = r33, r19
	add r32 = r32, r19
	mov ar.lc = r19
	;;
	.align 32
.L1049:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1049
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1087:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	ld1 r21 = [r27]
	nop 0
	br .L1088
	.endp __cmovd#
	.align 16
	.align 64
	.global __cmovh#
	.type	__cmovh#, @function
	.proc __cmovh#
__cmovh:
	.prologue
	.mmi
	or r15 = r32, r33
	nop 0
	extr.u r17 = r34, 1, 31
	.mmi
	addp4 r14 = r34, r0
	nop 0
	cmp.leu p6, p7 = r33, r32
	;;
	.mmi
	and r15 = 7, r15
	add r14 = r33, r14
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	nop 0
	nop 0
	(p7) br.cond.dptk .L1136
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r14, r32
	(p7) br.cond.dptk .L1133
	;;
.L1136:
	.mib
	adds r14 = -1, r17
	cmp4.ne p6, p7 = 0, r17
	(p7) br.cond.dpnt .L1092
	;;
	.mib
	cmp4.geu p6, p7 = 6, r14
	adds r14 = 2, r33
	(p6) br.cond.dpnt .L1096
	;;
	.mii
	sub r14 = r32, r14
	cmp.eq p6, p7 = 0, r15
	;;
	cmp.ltu p8, p9 = 4, r14
	.mmi
	(p6) addl r14 = 1, r0
	;;
	(p8) addl r15 = 1, r0
	(p7) mov r14 = r0
	;;
	.mmi
	(p9) mov r15 = r0
	;;
	and r14 = r15, r14
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1096
	.mii
	nop 0
	extr.u r16 = r34, 3, 29
	mov r14 = r32
	.mmi
	mov r15 = r33
	;;
	shladd r16 = r16, 3, r0
	extr.u r18 = r34, 3, 29
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
.L1097:
	.mmi
	ld8 r16 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r16
	adds r14 = 8, r14
	br.cloop.sptk.few .L1097
	.mmi
	shladd r18 = r18, 2, r0
	;;
	addp4 r15 = r18, r0
	adds r20 = 1, r18
	.mmb
	adds r19 = 2, r18
	cmp4.eq p6, p7 = r18, r17
	(p6) br.cond.dpnt .L1092
	;;
	.mmi
	shladd r14 = r15, 1, r0
	addp4 r16 = r20, r0
	addp4 r18 = r19, r0
	.mii
	cmp4.geu p6, p7 = r20, r17
	cmp4.geu p8, p9 = r19, r17
	;;
	add r17 = r33, r14
	.mmi
	shladd r15 = r16, 1, r0
	shladd r16 = r18, 1, r0
	add r14 = r32, r14
	;;
	.mmi
	nop 0
	ld2 r17 = [r17]
	add r18 = r33, r15
	.mmi
	add r15 = r32, r15
	add r19 = r33, r16
	add r16 = r32, r16
	;;
	.mib
	st2 [r14] = r17
	nop 0
	(p6) br.cond.dpnt .L1092
	;;
	.mmi
	nop 0
	ld2 r14 = [r18]
	nop 0
	;;
	.mib
	st2 [r15] = r14
	nop 0
	(p8) br.cond.dpnt .L1092
	;;
	.mmi
	nop 0
	ld2 r14 = [r19]
	nop 0
	;;
	.mmi
	st2 [r16] = r14
	nop 0
	nop 0
.L1092:
	.mib
	adds r14 = -1, r34
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L1089
	;;
.L1134:
	.mmi
	addp4 r14 = r14, r0
	;;
	add r33 = r33, r14
	add r32 = r32, r14
	;;
	.mmi
	nop 0
	ld1 r14 = [r33]
	nop 0
	;;
	.mmi
	st1 [r32] = r14
	nop 0
	nop 0
.L1089:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1133:
	.mib
	adds r17 = -1, r34
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L1089
	;;
	.mib
	addp4 r18 = r17, r0
	cmp4.geu p6, p7 = 8, r17
	(p6) br.cond.dpnt .L1102
	;;
	.mmi
	adds r14 = -7, r18
	adds r19 = -1, r18
	add r16 = r32, r18
	;;
	.mmi
	add r15 = r32, r14
	add r14 = r33, r14
	add r19 = r33, r19
	;;
	.mmi
	sub r16 = r16, r19
	nop 0
	or r19 = r14, r15
	;;
	.mii
	adds r16 = 6, r16
	and r19 = 7, r19
	;;
	cmp.ltu p6, p7 = 6, r16
	.mmi
	cmp.eq p8, p9 = 0, r19
	;;
	(p8) addl r19 = 1, r0
	(p6) addl r16 = 1, r0
	;;
	.mii
	(p9) mov r19 = r0
	(p7) mov r16 = r0
	;;
	and r16 = r19, r16
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dpnt .L1102
	.mii
	nop 0
	extr.u r16 = r34, 3, 29
	;;
	shladd r16 = r16, 3, r0
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
.L1103:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1103
	.mmi
	and r14 = -8, r34
	nop 0
	and r34 = 7, r34
	;;
	.mib
	sub r14 = r17, r14
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L1089
	;;
	.mmi
	addp4 r15 = r14, r0
	adds r23 = -1, r14
	adds r22 = -2, r14
	.mmi
	adds r21 = -3, r14
	adds r20 = -4, r14
	cmp4.eq p6, p7 = 0, r14
	;;
	.mmi
	add r24 = r33, r15
	addp4 r16 = r23, r0
	addp4 r17 = r22, r0
	.mmi
	addp4 r18 = r21, r0
	addp4 r19 = r20, r0
	cmp4.eq p10, p11 = 0, r21
	;;
	.mmi
	adds r21 = -5, r14
	adds r14 = -6, r14
	add r15 = r32, r15
	.mmi
	ld1 r24 = [r24]
	add r25 = r33, r16
	add r16 = r32, r16
	;;
	.mmi
	add r26 = r33, r17
	add r17 = r32, r17
	add r27 = r33, r18
	.mmi
	add r18 = r32, r18
	add r28 = r33, r19
	add r19 = r32, r19
	;;
	.mmi
	cmp4.eq p8, p9 = 0, r22
	cmp4.eq p12, p13 = 0, r20
	addp4 r14 = r14, r0
	.mmb
	st1 [r15] = r24
	addp4 r15 = r21, r0
	(p6) br.cond.dpnt .L1089
	;;
	.mmi
	ld1 r24 = [r25]
	add r20 = r33, r15
	add r15 = r32, r15
	.mmi
	add r33 = r33, r14
	add r32 = r32, r14
	cmp4.eq p6, p7 = 0, r23
	;;
	.mmi
	nop 0
	ld1.sa r14 = [r28]
	nop 0
	.mmb
	st1 [r16] = r24
	nop 0
	(p6) br.cond.dpnt .L1089
	;;
	.mmi
	ld1 r16 = [r26]
	nop 0
	cmp4.eq p6, p7 = 0, r21
	;;
	.mib
	st1 [r17] = r16
	nop 0
	(p8) br.cond.dpnt .L1089
	;;
	.mmi
	nop 0
	ld1 r16 = [r27]
	nop 0
	;;
	.mib
	st1 [r18] = r16
	nop 0
	(p10) br.cond.dpnt .L1089
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r28]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p12) br.cond.dpnt .L1089
	;;
	.mmi
	nop 0
	ld1 r14 = [r20]
	nop 0
	;;
	.mib
	st1 [r15] = r14
	nop 0
	(p6) br.cond.dpnt .L1089
	;;
	.mmi
	ld1 r14 = [r33]
	nop 0
	mov ar.lc = r2
	;;
	.mib
	st1 [r32] = r14
	nop 0
	br.ret.sptk.many b0
.L1096:
	.mmi
	addp4 r14 = r17, r0
	mov r16 = r33
	mov r15 = r32
	;;
	.mmi
	shladd r14 = r14, 1, r0
	;;
	adds r14 = -2, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r14 = r14, 1
	;;
	mov ar.lc = r14
	.align 32
.L1099:
	.mmi
	ld2 r14 = [r16]
	nop 0
	adds r16 = 2, r16
	;;
	.mib
	st2 [r15] = r14
	adds r15 = 2, r15
	br.cloop.sptk.few .L1099
	.mmi
	nop 0
	adds r14 = -1, r34
	tbit.z p6, p7 = r34, 0
	.bbb
	nop 0
	(p6) br.cond.dptk .L1089
	br .L1134
	;;
.L1102:
	.mmi
	add r33 = r33, r18
	add r32 = r32, r18
	mov ar.lc = r18
	;;
	.align 32
.L1105:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1105
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
	adds r15 = 4, r33
	and r16 = -4, r34
	extr.u r18 = r34, 2, 30
	.mmi
	addp4 r14 = r34, r0
	adds r17 = -1, r34
	cmp.leu p6, p7 = r33, r32
	;;
	.mib
	add r14 = r33, r14
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p7) br.cond.dptk .L1193
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r14, r32
	(p7) br.cond.dptk .L1191
	;;
.L1193:
	.mib
	adds r14 = -1, r18
	cmp4.ne p6, p7 = 0, r18
	(p7) br.cond.dpnt .L1192
	;;
	.mib
	cmp4.geu p6, p7 = 8, r14
	or r14 = r33, r32
	(p6) br.cond.dpnt .L1144
	;;
	.mii
	and r14 = 7, r14
	cmp.ne p6, p7 = r15, r32
	;;
	(p6) addl r15 = 1, r0
	;;
	.mii
	(p7) mov r15 = r0
	cmp.eq p6, p7 = 0, r14
	;;
	(p6) addl r14 = 1, r0
	;;
	.mmi
	(p7) mov r14 = r0
	;;
	and r14 = r15, r14
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1144
	.mii
	nop 0
	extr.u r17 = r34, 3, 29
	mov r14 = r32
	.mmi
	mov r15 = r33
	;;
	shladd r17 = r17, 3, r0
	extr.u r19 = r34, 3, 29
	;;
	.mii
	adds r17 = -8, r17
	nop 0
	;;
	shr.u r17 = r17, 3
	;;
	.mii
	nop 0
	mov ar.lc = r17
	nop 0
	.align 32
.L1145:
	.mmi
	ld8 r17 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r17
	adds r14 = 8, r14
	br.cloop.sptk.few .L1145
	.mmi
	nop 0
	shladd r19 = r19, 1, r0
	nop 0
	;;
	.mib
	addp4 r14 = r19, r0
	cmp4.eq p6, p7 = r19, r18
	(p6) br.cond.dpnt .L1148
	;;
	.mmi
	shladd r14 = r14, 2, r0
	;;
	add r15 = r33, r14
	add r14 = r32, r14
	;;
	.mmi
	nop 0
	ld4 r15 = [r15]
	nop 0
	;;
	.mmi
	st4 [r14] = r15
	nop 0
	nop 0
.L1148:
	.mmi
	sub r17 = r34, r16, 1
	addp4 r19 = r16, r0
	nop 0
	.mmb
	sub r18 = r34, r16
	cmp4.geu p6, p7 = r16, r34
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	add r15 = r32, r19
	add r14 = r33, r19
	nop 0
	.mmb
	add r20 = r33, r19, 1
	cmp4.geu p6, p7 = 7, r17
	(p6) br.cond.dpnt .L1140
	;;
	.mmi
	sub r20 = r15, r20
	or r21 = r15, r14
	extr.u r17 = r18, 3, 29
	;;
	.mmi
	cmp.ltu p6, p7 = 6, r20
	and r21 = 7, r21
	shladd r17 = r17, 3, r0
	;;
	.mii
	(p6) addl r20 = 1, r0
	adds r17 = -8, r17
	;;
	(p7) mov r20 = r0
	.mii
	cmp.eq p6, p7 = 0, r21
	shr.u r17 = r17, 3
	;;
	(p6) addl r21 = 1, r0
	;;
	.mmi
	(p7) mov r21 = r0
	;;
	and r20 = r21, r20
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r20
	(p6) br.cond.dpnt .L1140
	.mii
	nop 0
	mov ar.lc = r17
	nop 0
	.align 32
.L1149:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1149
	.mmi
	and r14 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mib
	add r16 = r16, r14
	cmp4.eq p6, p7 = 0, r18
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	addp4 r14 = r16, r0
	adds r21 = 1, r16
	adds r25 = 2, r16
	.mmi
	adds r24 = 3, r16
	adds r23 = 4, r16
	adds r22 = 5, r16
	;;
	.mmi
	add r26 = r33, r14
	addp4 r15 = r21, r0
	addp4 r17 = r25, r0
	.mmi
	addp4 r18 = r24, r0
	addp4 r19 = r23, r0
	addp4 r20 = r22, r0
	;;
	.mmi
	ld1 r26 = [r26]
	add r14 = r32, r14
	add r27 = r33, r15
	.mmi
	add r15 = r32, r15
	add r28 = r33, r17
	add r17 = r32, r17
	;;
	.mmi
	add r29 = r33, r18
	add r18 = r32, r18
	add r30 = r33, r19
	.mmi
	add r19 = r32, r19
	add r31 = r33, r20
	add r20 = r32, r20
	;;
	.mmi
	adds r16 = 6, r16
	cmp4.geu p8, p9 = r24, r34
	cmp4.geu p10, p11 = r23, r34
	.mmi
	cmp4.geu p12, p13 = r22, r34
	st1 [r14] = r26
	cmp4.geu p6, p7 = r21, r34
	;;
	.mib
	ld1.s r21 = [r27]
	addp4 r14 = r16, r0
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	add r33 = r33, r14
	nop 0
	add r32 = r32, r14
	.mii
	ld1.sa r14 = [r28]
	cmp4.leu p6, p7 = r34, r25
	;;
	chk.s r21, .L1194
.L1195:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	st1 [r15] = r21
	nop 0
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	cmp4.geu p6, p7 = r16, r34
	;;
	ld1.c.clr r14 = [r28]
	nop 0
	;;
	.mib
	st1 [r17] = r14
	nop 0
	(p8) br.cond.dpnt .L1137
	;;
	.mmi
	nop 0
	ld1 r14 = [r29]
	nop 0
	;;
	.mib
	st1 [r18] = r14
	nop 0
	(p10) br.cond.dpnt .L1137
	;;
	.mmi
	nop 0
	ld1 r14 = [r30]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p12) br.cond.dpnt .L1137
	;;
	.mmi
	nop 0
	ld1 r14 = [r31]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	nop 0
	ld1 r14 = [r33]
	nop 0
	;;
	.mmi
	st1 [r32] = r14
	nop 0
	nop 0
.L1137:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1191:
	.mib
	addp4 r18 = r17, r0
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L1137
	;;
	.mmi
	adds r14 = -7, r18
	adds r19 = -1, r18
	nop 0
	.mmb
	add r16 = r32, r18
	cmp4.geu p6, p7 = 8, r17
	(p6) br.cond.dpnt .L1153
	;;
	.mmi
	add r15 = r32, r14
	add r14 = r33, r14
	add r19 = r33, r19
	;;
	.mmi
	sub r16 = r16, r19
	nop 0
	or r19 = r14, r15
	;;
	.mii
	adds r16 = 6, r16
	and r19 = 7, r19
	;;
	cmp.ltu p6, p7 = 6, r16
	.mmi
	cmp.eq p8, p9 = 0, r19
	;;
	(p8) addl r19 = 1, r0
	(p6) addl r16 = 1, r0
	;;
	.mii
	(p9) mov r19 = r0
	(p7) mov r16 = r0
	;;
	and r16 = r19, r16
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r16
	(p6) br.cond.dpnt .L1153
	.mii
	nop 0
	extr.u r16 = r34, 3, 29
	;;
	shladd r16 = r16, 3, r0
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
.L1154:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1154
	.mmi
	and r14 = -8, r34
	nop 0
	and r34 = 7, r34
	;;
	.mib
	sub r14 = r17, r14
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	addp4 r15 = r14, r0
	adds r23 = -1, r14
	adds r22 = -2, r14
	.mmi
	adds r21 = -3, r14
	adds r20 = -4, r14
	cmp4.eq p6, p7 = 0, r14
	;;
	.mmi
	add r24 = r33, r15
	addp4 r16 = r23, r0
	addp4 r17 = r22, r0
	.mmi
	addp4 r18 = r21, r0
	addp4 r19 = r20, r0
	cmp4.eq p10, p11 = 0, r21
	;;
	.mmi
	adds r21 = -5, r14
	adds r14 = -6, r14
	add r15 = r32, r15
	.mmi
	ld1 r24 = [r24]
	add r25 = r33, r16
	add r16 = r32, r16
	;;
	.mmi
	add r26 = r33, r17
	add r17 = r32, r17
	add r27 = r33, r18
	.mmi
	add r18 = r32, r18
	add r28 = r33, r19
	add r19 = r32, r19
	;;
	.mmi
	cmp4.eq p8, p9 = 0, r22
	cmp4.eq p12, p13 = 0, r20
	addp4 r14 = r14, r0
	.mmb
	st1 [r15] = r24
	addp4 r15 = r21, r0
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	ld1 r24 = [r25]
	add r20 = r33, r15
	add r15 = r32, r15
	.mmi
	add r33 = r33, r14
	add r32 = r32, r14
	cmp4.eq p6, p7 = 0, r23
	;;
	.mmi
	nop 0
	ld1.sa r14 = [r28]
	nop 0
	.mmb
	st1 [r16] = r24
	nop 0
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	ld1 r16 = [r26]
	nop 0
	cmp4.eq p6, p7 = 0, r21
	;;
	.mib
	st1 [r17] = r16
	nop 0
	(p8) br.cond.dpnt .L1137
	;;
	.mmi
	nop 0
	ld1 r16 = [r27]
	nop 0
	;;
	.mib
	st1 [r18] = r16
	nop 0
	(p10) br.cond.dpnt .L1137
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r28]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p12) br.cond.dpnt .L1137
	;;
	.mmi
	nop 0
	ld1 r14 = [r20]
	nop 0
	;;
	.mib
	st1 [r15] = r14
	nop 0
	(p6) br.cond.dpnt .L1137
	;;
	.mmi
	nop 0
	ld1 r14 = [r33]
	nop 0
	;;
	.mib
	st1 [r32] = r14
	nop 0
	br .L1137
.L1144:
	.mmi
	addp4 r14 = r18, r0
	mov r17 = r33
	mov r15 = r32
	;;
	.mmi
	shladd r14 = r14, 2, r0
	;;
	adds r14 = -4, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r14 = r14, 2
	;;
	mov ar.lc = r14
	.align 32
.L1147:
	.mmi
	ld4 r14 = [r17]
	nop 0
	adds r17 = 4, r17
	;;
	.mib
	st4 [r15] = r14
	adds r15 = 4, r15
	br.cloop.sptk.few .L1147
	.mib
	nop 0
	nop 0
	br .L1148
.L1192:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) addp4 r19 = r16, r0
	(p7) br.cond.dpnt .L1137
	;;
.L1140:
	.mmi
	sub r16 = r34, r16, 1
	nop 0
	add r14 = r33, r19, 1
	.mii
	add r33 = r33, r19
	add r32 = r32, r19
	;;
	addp4 r16 = r16, r0
	;;
	.mmi
	nop 0
	add r14 = r14, r16
	nop 0
	;;
	.mii
	sub r14 = r14, r33, 1
	nop 0
	;;
	mov ar.lc = r14
	.align 32
.L1151:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1151
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L1153:
	.mmi
	add r33 = r33, r18
	add r32 = r32, r18
	mov ar.lc = r18
	;;
	.align 32
.L1157:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1157
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1194:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mib
	ld1 r21 = [r27]
	nop 0
	br .L1195
	.endp __cmovw#
	.align 16
	.align 64
	.global __modi#
	.type	__modi#, @function
	.proc __modi#
__modi:
	.prologue 12, 34
	.mii
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 2, 3, 2, 0
	.save rp, r34
	mov r34 = b0
	sxt4 r38 = r33
	.mmb
	nop 0
	mov r36 = r1
	.body
	nop 0
	;;
	.mib
	nop 0
	sxt4 r37 = r32
	br.call.sptk.many b0 = __moddi3#
	;;
	.mmi
	mov r1 = r36
	nop 0
	mov ar.pfs = r35
	;;
	.mib
	nop 0
	mov b0 = r34
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
	addp4 r38 = r33, r0
	addp4 r37 = r32, r0
	mov r36 = r1
	.body
	;;
	.mib
	nop 0
	nop 0
	br.call.sptk.many b0 = __umoddi3#
	;;
	.mmi
	mov r1 = r36
	nop 0
	mov ar.pfs = r35
	;;
	.mib
	nop 0
	mov b0 = r34
	br.ret.sptk.many b0
	.endp __umodi#
	.align 16
	.align 64
	.global __clzhi2#
	.type	__clzhi2#, @function
	.proc __clzhi2#
__clzhi2:
	.prologue
	.body
	.mii
	nop 0
	tbit.nz p6, p7 = r32, 15
	zxt2 r32 = r32
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1208
	;;
	.mii
	nop 0
	shr.u r8 = r32, 14
	nop 0
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 13
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 12
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 3, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 11
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 4, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 10
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 5, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 9
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 6, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 8
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 7, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 7
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 8, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 6
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 9, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 5
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 10, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 4
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 11, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 3
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 12, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 2
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 13, r0
	(p6) br.cond.dpnt .L1208
	.mii
	nop 0
	shr.u r14 = r32, 1
	;;
	cmp4.ne p6, p7 = 0, r14
	;;
	.mib
	nop 0
	(p6) addl r8 = 14, r0
	(p6) br.cond.dpnt .L1208
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r32
	nop 0
	;;
	.mii
	(p6) addl r8 = 16, r0
	nop 0
	;;
	(p7) addl r8 = 15, r0
.L1208:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	.endp __clzhi2#
	.align 16
	.align 64
	.global __ctzhi2#
	.type	__ctzhi2#, @function
	.proc __ctzhi2#
__ctzhi2:
	.prologue
	.body
	.mii
	nop 0
	tbit.nz p6, p7 = r32, 0
	zxt2 r15 = r32
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 1
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 1, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 2
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 3
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 3, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 4
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 4, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 5
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 5, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 6
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 6, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 7
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 7, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 8
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 8, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 9
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 9, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 10
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 10, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 11
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 11, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 12
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 12, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 13
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 13, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 14
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 14, r0
	(p6) br.cond.dpnt .L1228
	.mii
	nop 0
	shr.u r15 = r15, 15
	;;
	cmp4.eq p6, p7 = 0, r15
	;;
	.mii
	(p6) addl r8 = 16, r0
	nop 0
	;;
	(p7) addl r8 = 15, r0
.L1228:
	.mib
	nop 0
	nop 0
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
	.mmf
	nop 0
	nop 0
	fcvt.fx.trunc f7 = f8
	;;
	.mmi
	setf.s f6 = r2
	;;
	getf.sig r8 = f7
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
	(p6) fcvt.fx.trunc f8 = f8
	;;
	.mmi
	nop 0
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
	.body
	.mii
	nop 0
	extr.u r14 = r32, 1, 1
	and r8 = 1, r32
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 2, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 3, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 4, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 5, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 6, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 7, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 8, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 9, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 10, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 11, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 12, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 13, 1
	;;
	.mmi
	add r8 = r8, r14
	nop 0
	extr.u r14 = r32, 14, 1
	;;
	.mii
	add r8 = r8, r14
	extr.u r32 = r32, 15, 1
	;;
	add r8 = r8, r32
	;;
	.mib
	nop 0
	and r8 = 1, r8
	br.ret.sptk.many b0
	.endp __parityhi2#
	.align 16
	.align 64
	.global __popcounthi2#
	.type	__popcounthi2#, @function
	.proc __popcounthi2#
__popcounthi2:
	.prologue
	.body
	.mii
	nop 0
	extr.u r15 = r32, 1, 1
	and r14 = 1, r32
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 2, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 3, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 4, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 5, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 6, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 7, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 8, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 9, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 10, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 11, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 12, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 13, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r15 = r32, 14, 1
	;;
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r8 = r32, 15, 1
	;;
	.mib
	nop 0
	add r8 = r14, r8
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
	(p6) br.cond.dpnt .L1260
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.align 32
.L1262:
	.mii
	and r14 = r33, r14
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
	;;
	.mmi
	nop 0
	add r8 = r8, r14
	extr r14 = r32, 0, 1
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r32
	(p6) br.cond.dptk .L1262
.L1260:
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
	mov r8 = r0
	cmp4.eq p6, p7 = 0, r32
	(p6) br.cond.dpnt .L1271
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L1271
	.mii
	nop 0
	extr r14 = r33, 0, 1
	nop 0
	;;
	.align 32
.L1269:
	.mii
	and r14 = r32, r14
	extr.u r33 = r33, 1, 31
	shladd r32 = r32, 1, r0
	;;
	.mmi
	nop 0
	add r8 = r8, r14
	extr r14 = r33, 0, 1
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r33
	(p6) br.cond.dptk .L1269
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1271:
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
	(p7) br.cond.dpnt .L1277
	;;
	.align 32
.L1276:
	.mib
	cmp4.le p6, p7 = r0, r33
	nop 0
	(p7) br.cond.dpnt .L1277
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
	(p7) br.cond.dptk .L1276
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1280
	;;
.L1277:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1282:
	.mmi
	nop 0
	cmp4.gtu p6, p7 = r33, r32
	nop 0
	;;
	.mmi
	(p7) sub r32 = r32, r33
	(p7) or r8 = r8, r14
	extr.u r14 = r14, 1, 31
	;;
	.mii
	nop 0
	extr.u r33 = r33, 1, 31
	nop 0
	.mmb
	cmp4.ne p6, p7 = 0, r14
	nop 0
	(p6) br.cond.dptk .L1282
	;;
.L1280:
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
	.mfi
	nop 0
	fcmp.lt p6, p7 = f8, f9
	nop 0
	.mfi
	nop 0
	fcmp.gt p8, p9 = f8, f9
	nop 0
	;;
	.mib
	(p6) addl r8 = -1, r0
	nop 0
	(p6) br.cond.dpnt .L1290
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L1290:
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
	.mfi
	nop 0
	fcmp.lt p6, p7 = f8, f9
	nop 0
	.mfi
	nop 0
	fcmp.gt p8, p9 = f8, f9
	nop 0
	;;
	.mib
	(p6) addl r8 = -1, r0
	nop 0
	(p6) br.cond.dpnt .L1295
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L1295:
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
	mov r17 = r0
	nop 0
	cmp4.le p6, p7 = r0, r33
	;;
	.mib
	(p7) addl r17 = 1, r0
	(p7) sub r33 = r0, r33
	(p7) br.cond.dpnt .L1306
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r33
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1304
	;;
.L1306:
	.mmi
	addl r14 = 1, r0
	mov r8 = r0
	extr r15 = r33, 0, 1
	.mmi
	nop 0
	;;
	nop 0
	adds r16 = 1, r14
	;;
	.align 32
.L1308:
	.mmi
	nop 0
	and r15 = r32, r15
	extr r33 = r33, 1, 31
	.mmi
	cmp4.ne p6, p7 = 32, r14
	shladd r32 = r32, 1, r0
	zxt1 r14 = r16
	;;
	.mmi
	adds r16 = 1, r14
	add r8 = r8, r15
	extr r15 = r33, 0, 1
	.mmb
	nop 0
	cmp4.ne.and.orcm p6, p7 = 0, r33
	(p6) br.cond.dptk .L1308
	;;
	.mii
	cmp4.eq p6, p7 = 0, r17
	nop 0
	;;
	(p7) sub r8 = r0, r8
.L1304:
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
	addl r14 = 1, r0
	mov r17 = r0
	cmp.le p6, p7 = r0, r32
	.mmi
	addl r15 = 1, r0
	;;
	(p7) mov r14 = r0
	(p7) addl r17 = 1, r0
	.mmi
	(p7) sub r32 = r0, r32
	nop 0
	cmp.le p6, p7 = r0, r33
	;;
	.mmi
	(p7) sub r33 = r0, r33
	(p7) mov r17 = r14
	mov r16 = r32
	;;
	.mmi
	cmp4.ltu p6, p7 = r33, r32
	nop 0
	mov r14 = r33
	;;
	.mib
	nop 0
	(p7) addl r15 = 1, r0
	(p7) br.cond.dpnt .L1320
	.align 32
.L1319:
	.mib
	cmp4.le p6, p7 = r0, r14
	nop 0
	(p7) br.cond.dpnt .L1320
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
	(p6) br.cond.dptk .L1319
	.mib
	nop 0
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L1321
	;;
.L1320:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1324:
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r16, r14
	nop 0
	;;
	.mmi
	(p7) sub r16 = r16, r14
	(p7) or r8 = r8, r15
	extr.u r15 = r15, 1, 31
	;;
	.mii
	nop 0
	extr.u r14 = r14, 1, 31
	nop 0
	.mmb
	cmp4.ne p6, p7 = 0, r15
	nop 0
	(p6) br.cond.dptk .L1324
	.mmi
	addp4 r8 = r8, r0
	nop 0
	nop 0
	;;
.L1321:
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r17
	nop 0
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
	mov r16 = r0
	cmp.le p6, p7 = r0, r32
	addl r15 = 1, r0
	;;
	.mmi
	(p7) addl r16 = 1, r0
	(p7) sub r32 = r0, r32
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
	(p7) br.cond.dpnt .L1353
	;;
	.align 32
.L1337:
	.mib
	cmp4.le p6, p7 = r0, r14
	nop 0
	(p7) br.cond.dpnt .L1353
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
	(p6) br.cond.dptk .L1337
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1339
	;;
	.align 32
.L1353:
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
	(p6) br.cond.dptk .L1353
	;;
.L1339:
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
	.mmb
	nop 0
	addl r18 = 1, r0
	nop 0
	;;
	.mmi
	shladd r14 = r18, 1, r0
	shladd r15 = r33, 1, r0
	mov r8 = r32
	.mmb
	mov r16 = r33
	cmp4.gtu p6, p7 = r32, r33
	(p7) br.cond.dpnt .L1390
	;;
	.mii
	nop 0
	zxt2 r15 = r15
	zxt2 r14 = r14
	;;
	.mii
	nop 0
	sxt2 r17 = r16
	nop 0
	;;
	.mib
	nop 0
	cmp4.le p6, p7 = r0, r17
	(p7) br.cond.dpnt .L1391
	;;
	.align 32
.L1358:
	.mii
	cmp4.ne p6, p7 = 0, r14
	mov r19 = r14
	;;
	(p6) addl r20 = 1, r0
	;;
	.mii
	(p7) mov r20 = r0
	cmp4.ltu p6, p7 = r15, r8
	;;
	(p6) addl r17 = 1, r0
	;;
	.mmi
	(p7) mov r17 = r0
	;;
	and r17 = r20, r17
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = 0, r17
	nop 0
	(p6) br.cond.dpnt .L1357
	;;
	.mmi
	mov r18 = r14
	nop 0
	mov r16 = r15
	;;
	.mmi
	shladd r15 = r16, 1, r0
	shladd r14 = r18, 1, r0
	sxt2 r17 = r16
	;;
	.mii
	nop 0
	zxt2 r14 = r14
	zxt2 r15 = r15
	.mmb
	nop 0
	cmp4.le p6, p7 = r0, r17
	(p6) br.cond.dptk .L1358
	;;
.L1391:
	.mmb
	mov r19 = r18
	cmp4.leu p6, p7 = r16, r32
	nop 0
	.mmi
	sub r14 = r32, r16
	nop 0
	extr.u r17 = r16, 1, 15
	;;
	.mib
	nop 0
	(p7) mov r19 = r0
	(p7) br.cond.dptk .L1381
	;;
	.mii
	nop 0
	zxt2 r8 = r14
	nop 0
.L1381:
	.mii
	nop 0
	extr.u r14 = r18, 1, 15
	nop 0
	;;
	.mib
	mov r20 = r14
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
.L1362:
	.mmi
	cmp4.gtu p6, p7 = r17, r8
	nop 0
	extr.u r14 = r18, 2, 14
	;;
	.mmi
	(p7) sub r8 = r8, r17
	(p7) or r19 = r20, r19
	extr.u r15 = r16, 2, 14
	;;
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	(p7) zxt2 r19 = r19
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 3, 13
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 3, 13
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 4, 12
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 4, 12
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 5, 11
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 5, 11
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 6, 10
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 6, 10
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 7, 9
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 7, 9
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 8, 8
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 8, 8
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 9, 7
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 9, 7
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 10, 6
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 10, 6
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 11, 5
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 11, 5
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 12, 4
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 12, 4
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 13, 3
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 13, 3
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	;;
	(p7) zxt2 r19 = r19
	.mmi
	(p7) sub r8 = r8, r15
	;;
	(p7) or r19 = r14, r19
	extr.u r14 = r18, 14, 2
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	;;
	extr.u r15 = r16, 14, 2
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1360
	;;
	.mmi
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	extr.u r16 = r16, 15, 1
	;;
	.mmi
	(p7) sub r8 = r8, r15
	nop 0
	(p7) zxt2 r19 = r19
	;;
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	(p7) or r19 = r14, r19
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r18, 15
	(p7) br.cond.dpnt .L1360
	;;
	.mmi
	cmp4.gtu p6, p7 = r16, r8
	;;
	(p7) sub r8 = r8, r16
	(p7) zxt2 r19 = r19
	;;
	.mii
	(p6) mov r8 = r0
	(p7) or r19 = 1, r19
	;;
	(p7) zxt2 r8 = r8
.L1360:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r19
	br.ret.sptk.many b0
.L1357:
	.mmi
	addl r23 = 32767, r0
	addp4 r17 = r16, r0
	addl r22 = 32767, r0
	.mmi
	addp4 r20 = r18, r0
	sub r21 = r32, r15
	addp4 r18 = r18, r0
	;;
	.mmb
	and r20 = r22, r20
	mov r16 = r17
	nop 0
	.mii
	and r17 = r23, r17
	zxt2 r21 = r21
	cmp4.eq p6, p7 = 0, r14
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1360
	;;
	.mii
	cmp4.gtu p6, p7 = r15, r32
	zxt2 r17 = r17
	zxt2 r20 = r20
	.mmi
	and r16 = r22, r16
	;;
	(p6) mov r18 = r14
	(p6) mov r19 = r0
	.mmi
	(p7) mov r16 = r15
	nop 0
	(p7) mov r8 = r21
	;;
	.mmi
	(p7) and r20 = r23, r18
	(p7) mov r18 = r14
	(p6) zxt2 r17 = r16
	.mmb
	nop 0
	(p6) mov r16 = r15
	br .L1362
.L1390:
	.mmi
	cmp4.ne p6, p7 = r32, r33
	;;
	(p7) mov r8 = r0
	(p6) mov r19 = r0
	;;
	.mmi
	(p7) addl r19 = 1, r0
	nop 0
	cmp4.ne p6, p7 = 0, r34
	;;
	.mib
	nop 0
	(p7) mov r8 = r19
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
	(p7) br.cond.dpnt .L1394
	;;
	.align 32
.L1393:
	.mib
	nop 0
	tbit.z p6, p7 = r33, 31
	(p7) br.cond.dpnt .L1394
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
	(p7) br.cond.dptk .L1393
	;;
	.mmi
	nop 0
	cmp.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1397
	;;
.L1394:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1399:
	.mmi
	nop 0
	cmp.gtu p6, p7 = r33, r32
	nop 0
	;;
	.mmi
	(p7) sub r32 = r32, r33
	(p7) or r8 = r14, r8
	shr.u r14 = r14, 1
	.mib
	nop 0
	shr.u r33 = r33, 1
	nop 0
	;;
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L1399
	;;
.L1397:
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
	.mib
	nop 0
	tbit.z p6, p7 = r33, 5
	nop 0
	.mmi
	adds r14 = -32, r33
	mov r15 = r0
	sub r16 = 32, r33
	;;
	.mmi
	(p7) addp4 r14 = r14, r0
	addp4 r16 = r16, r0
	extr r17 = r32, 32, 32
	.mib
	nop 0
	shl r15 = r15, 32
	nop 0
	;;
	.mib
	nop 0
	(p7) shl r14 = r32, r14
	(p7) br.cond.dptk .L1409
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r33
	addp4 r15 = r33, r0
	addp4 r14 = r32, r0
	;;
	.mib
	(p6) mov r8 = r32
	nop 0
	(p6) br.cond.dpnt .L1407
	;;
	.mii
	nop 0
	shr.u r14 = r14, r16
	shl r17 = r17, r15
	;;
	.mii
	nop 0
	shl r15 = r32, r15
	nop 0
	;;
	.mii
	nop 0
	shl r15 = r15, 32
	or r14 = r17, r14
.L1409:
	.mii
	mov r8 = r0
	nop 0
	;;
	mix4.l r8 = r8, r15
	;;
	.mii
	nop 0
	mix4.r r8 = r14, r8
	nop 0
.L1407:
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
	.mii
	nop 0
	(p7) shl r9 = r32, r14
	sub r14 = 64, r34
	.mmb
	nop 0
	nop 0
	(p7) br.cond.dptk .L1417
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r34
	nop 0
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
.L1417:
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
	.mii
	adds r15 = -32, r33
	tbit.z p6, p7 = r33, 5
	shr r14 = r32, 32
	.mmi
	cmp4.eq p8, p9 = 0, r33
	;;
	addp4 r15 = r15, r0
	shr r16 = r32, 63
	.mmi
	(p8) mov r8 = r32
	sub r17 = 32, r33
	addp4 r33 = r33, r0
	;;
	.mmi
	nop 0
	addp4 r17 = r17, r0
	nop 0
	;;
	.mib
	nop 0
	(p7) shr r14 = r14, r15
	(p7) br.cond.dptk .L1423
	;;
	.mii
	nop 0
	extr r15 = r32, 32, 32
	shr r16 = r32, 32
	.mmb
	addp4 r14 = r32, r0
	nop 0
	(p8) br.cond.dpnt .L1421
	;;
	.mii
	nop 0
	shl r15 = r15, r17
	shr r16 = r16, r33
	;;
	.mii
	nop 0
	shr.u r14 = r14, r33
	;;
	or r14 = r15, r14
	;;
.L1423:
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
.L1421:
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
	.mii
	adds r14 = -64, r34
	tbit.z p6, p7 = r34, 6
	;;
	(p7) sxt4 r14 = r14
	.mii
	nop 0
	(p7) shr r9 = r33, 63
	;;
	(p7) shr r8 = r33, r14
	.mmb
	sub r14 = 64, r34
	nop 0
	(p7) br.cond.dptk .L1431
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r34
	addp4 r8 = r34, r0
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
.L1431:
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
	extr.u r8 = r32, 24, 8
	;;
	dep.z r15 = r32, 24, 8
	;;
	.mii
	or r8 = r15, r8
	extr.u r14 = r32, 8, 24
	addl r15 = 65280, r0
	;;
	.mmi
	and r14 = r15, r14
	nop 0
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
	adds r14 = -1, r8
	cmp4.eq p6, p7 = 0, r8
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
	cmp4.gtu p8, p9 = r33, r32
	;;
	.mii
	nop 0
	extr r14 = r33, 32, 32
	cmp4.ltu p10, p11 = r33, r32
	;;
	.mib
	cmp4.gt p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1451
	;;
	.mmi
	nop 0
	cmp4.lt p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1447
	;;
	.mmi
	nop 0
	(p10) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1451
.L1447:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1451:
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
	cmp4.gtu p8, p9 = r33, r32
	;;
	.mii
	nop 0
	extr r14 = r33, 32, 32
	cmp4.ltu p10, p11 = r33, r32
	;;
	.mib
	cmp4.gt p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1459
	;;
	.mmi
	nop 0
	cmp4.lt p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 1, r0
	nop 0
	(p6) br.cond.dpnt .L1455
	;;
	.mmi
	nop 0
	(p10) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
	(p8) br.cond.dpnt .L1459
.L1455:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1459:
	.mib
	nop 0
	addl r8 = -1, r0
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
	cmp.ltu p8, p9 = r34, r32
	cmp.gt p6, p7 = r35, r33
	(p6) br.cond.dpnt .L1466
	;;
	.mmi
	nop 0
	cmp.lt p6, p7 = r35, r33
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1462
	;;
	.mmi
	(p8) addl r8 = 2, r0
	nop 0
	cmp.gtu p6, p7 = r34, r32
	;;
	.mib
	nop 0
	(p9) addl r8 = 1, r0
	(p6) br.cond.dpnt .L1466
.L1462:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1466:
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
	.mmi
	adds r8 = -1, r32
	nop 0
	adds r14 = -1, r33
	.mmb
	cmp.ne p6, p7 = 0, r32
	nop 0
	(p6) br.cond.dptk .L1477
	;;
	.mmi
	mov r8 = r0
	cmp.eq p6, p7 = 0, r33
	andcm r33 = r14, r33
	.bbb
	nop 0
	(p7) br.cond.dptk .L1482
	br.ret.sptk.many b0
	;;
.L1477:
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
.L1482:
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
	.mii
	adds r15 = -32, r33
	tbit.z p6, p7 = r33, 5
	shr.u r16 = r32, 32
	.mmb
	mov r8 = r0
	addp4 r17 = r32, r0
	nop 0
	;;
	.mii
	(p7) addp4 r15 = r15, r0
	shr.u r14 = r32, 32
	;;
	(p7) shr.u r16 = r16, r15
	.mmb
	sub r15 = 32, r33
	nop 0
	(p7) br.cond.dptk .L1485
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r33
	addp4 r8 = r33, r0
	extr.u r16 = r32, 32, 32
	.mmi
	nop 0
	addp4 r15 = r15, r0
	nop 0
	;;
	.mib
	(p6) mov r8 = r32
	nop 0
	(p6) br.cond.dpnt .L1483
	;;
	.mii
	nop 0
	shl r16 = r16, r15
	;;
	shr.u r17 = r17, r8
	.mii
	nop 0
	shr.u r8 = r14, r8
	;;
	or r16 = r16, r17
	;;
.L1485:
	.mii
	nop 0
	unpack4.l r8 = r8, r16
	nop 0
.L1483:
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
	.mii
	nop 0
	(p7) shr.u r8 = r33, r14
	sub r14 = 64, r34
	.mmb
	nop 0
	nop 0
	(p7) br.cond.dptk .L1493
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r34
	nop 0
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
.L1493:
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
	.mmi
	add r14 = r14, r15
	nop 0
	extr.u r33 = r33, 16, 16
	;;
	.mii
	add r32 = r32, r33
	shl r14 = r14, 32
	;;
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
	(p6) br.cond.dptk .L1522
	;;
	.align 32
.L1524:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	nop 0
.L1522:
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
	(p6) br.cond.dpnt .L1523
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	nop 0
.L1525:
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	nop 0
	;;
	.mib
	add r15 = r15, r14
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L1524
	;;
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	extr r14 = r15, 1, 31
	.mmb
	nop 0
	nop 0
	br .L1525
.L1523:
	.mbb
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L1530
	br.ret.sptk.many b0
	;;
.L1530:
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
	(p6) fma.s1 f6 = f6, f9, f6
	nop 0
	.mfi
	nop 0
	(p6) fmpy.s1 f10 = f9, f9
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
	(p6) br.cond.dptk .L1532
	;;
	.align 32
.L1534:
	.mfi
	nop 0
	fmpy.s f8 = f8, f6
	nop 0
.L1532:
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
	(p6) br.cond.dpnt .L1533
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	nop 0
.L1535:
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	nop 0
	;;
	.mib
	add r15 = r15, r14
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L1534
	;;
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	extr r14 = r15, 1, 31
	.mmb
	nop 0
	nop 0
	br .L1535
.L1533:
	.mbb
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L1540
	br.ret.sptk.many b0
	;;
.L1540:
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
	cmp4.gtu p8, p9 = r33, r32
	;;
	.mii
	nop 0
	extr.u r14 = r33, 32, 32
	cmp4.ltu p10, p11 = r33, r32
	;;
	.mib
	cmp4.gtu p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1545
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1541
	;;
	.mmi
	nop 0
	(p10) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1545
.L1541:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1545:
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
	cmp4.gtu p8, p9 = r33, r32
	;;
	.mii
	nop 0
	extr.u r14 = r33, 32, 32
	cmp4.ltu p10, p11 = r33, r32
	;;
	.mib
	cmp4.gtu p6, p7 = r14, r15
	nop 0
	(p6) br.cond.dpnt .L1553
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 1, r0
	nop 0
	(p6) br.cond.dpnt .L1549
	;;
	.mmi
	nop 0
	(p10) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
	(p8) br.cond.dpnt .L1553
.L1549:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1553:
	.mib
	nop 0
	addl r8 = -1, r0
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
	cmp.ltu p8, p9 = r34, r32
	cmp.gtu p6, p7 = r35, r33
	(p6) br.cond.dpnt .L1560
	;;
	.mmi
	nop 0
	cmp.ltu p6, p7 = r35, r33
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1556
	;;
	.mmi
	(p8) addl r8 = 2, r0
	nop 0
	cmp.gtu p6, p7 = r34, r32
	;;
	.mib
	nop 0
	(p9) addl r8 = 1, r0
	(p6) br.cond.dpnt .L1560
.L1556:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1560:
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
