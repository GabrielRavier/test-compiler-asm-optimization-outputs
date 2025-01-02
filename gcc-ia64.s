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
	.prologue 1, 2
	.mii
	mov r8 = r32
	.save pr, r2
	mov r2 = pr
	cmp.geu p6, p7 = r33, r32
	;;
	.mib
	nop 0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	(p6) br.cond.dptk .L6
	.mmi
	nop 0
	add r18 = r33, r34
	add r17 = r32, r34
	.mmb
	nop 0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L7
	.mmi
	nop 0
	adds r16 = -1, r34
	nop 0
	;;
	.mib
	nop 0
	cmp.geu p6, p7 = 8, r16
	(p6) br.cond.dpnt .L8
	.mmi
	adds r14 = -8, r34
	adds r19 = -2, r34
	add r16 = r32, r16
	;;
	.mmi
	add r15 = r32, r14
	add r14 = r33, r14
	add r33 = r33, r19
	;;
	.mmi
	sub r16 = r16, r33
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
	.mmb
	nop 0
	cmp.lt p6, p7 = 2, r16
	(p7) br.cond.dptk .L76
	.mmi
	adds r16 = -1, r16
	;;
	nop 0
	mov ar.lc = r16
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mmi
	nop 0
	st8 [r15] = r16
	adds r15 = -8, r15
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
.L77:
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
	adds r18 = -1, r14
	cmp.eq p6, p7 = 1, r16
	.mmi
	adds r20 = -2, r15
	adds r19 = -2, r14
	cmp.eq p8, p9 = 2, r16
	;;
	.mmi
	adds r22 = -3, r15
	adds r21 = -3, r14
	cmp.eq p10, p11 = 3, r16
	.mmi
	adds r24 = -4, r15
	adds r23 = -4, r14
	cmp.eq p12, p13 = 4, r16
	;;
	.mmi
	adds r26 = -5, r15
	adds r25 = -5, r14
	cmp.eq p14, p15 = 5, r16
	.mmi
	adds r28 = -6, r15
	adds r27 = -6, r14
	cmp.eq p16, p17 = 6, r16
	;;
	.mmi
	ld1 r16 = [r17]
	adds r15 = -7, r15
	adds r14 = -7, r14
	;;
	.mib
	st1 [r18] = r16
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r16 = [r20]
	nop 0
	;;
	.mib
	st1 [r19] = r16
	nop 0
	(p8) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r16 = [r22]
	nop 0
	;;
	.mib
	st1 [r21] = r16
	nop 0
	(p10) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r16 = [r24]
	nop 0
	;;
	.mib
	st1 [r23] = r16
	nop 0
	(p12) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r16 = [r26]
	nop 0
	;;
	.mib
	st1 [r25] = r16
	nop 0
	(p14) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r16 = [r28]
	nop 0
	;;
	.mib
	st1 [r27] = r16
	nop 0
	(p16) br.cond.dpnt .L7
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
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L6:
	.mib
	nop 0
	cmp.eq p6, p7 = r33, r32
	(p6) br.cond.dpnt .L7
	;;
	.mib
	nop 0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L7
	.mmi
	adds r14 = -1, r34
	;;
	cmp.geu p6, p7 = 7, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) adds r15 = 1, r33
	(p6) br.cond.dpnt .L13
	;;
	.mmi
	or r14 = r33, r32
	sub r16 = r32, r33, 1
	adds r15 = 1, r33
	;;
	.mii
	and r14 = 7, r14
	cmp.ltu p6, p7 = 6, r16
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
	mov r15 = r32
	mov r14 = r33
	;;
	.mii
	adds r16 = -8, r18
	add r17 = r32, r18
	;;
	shr.u r16 = r16, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p6, p7 = 2, r16
	nop 0
	(p7) br.cond.dptk .L79
	.mmi
	adds r16 = -1, r16
	adds r14 = 8, r33
	nop 0
	.mii
	adds r15 = 8, r15
	nop 0
	;;
	mov ar.lc = r16
	.mmi
	ld8 r16 = [r33]
	;;
	st8 [r32] = r16
	nop 0
	.align 32
.L14:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L14
.L80:
	.mmi
	add r33 = r33, r18
	sub r14 = r34, r18
	adds r16 = 1, r17
	.mmi
	adds r19 = 2, r17
	adds r20 = 3, r17
	adds r22 = 4, r17
	;;
	.mmi
	adds r24 = 5, r17
	cmp.eq p8, p9 = 2, r14
	adds r21 = 2, r33
	.mmi
	cmp.eq p10, p11 = 3, r14
	adds r23 = 3, r33
	cmp.eq p12, p13 = 4, r14
	;;
	.mmi
	adds r25 = 4, r33
	cmp.eq p14, p15 = 5, r14
	adds r26 = 5, r33
	.mmi
	cmp.eq p16, p17 = 6, r14
	ld1.s r15 = [r33]
	cmp.eq p6, p7 = r18, r34
	;;
	.mib
	adds r18 = 1, r33
	mov ar.lc = r3
	(p6) br.cond.dpnt .L7
	;;
	.mmi
	cmp.eq p6, p7 = 1, r14
	ld1.sa r14 = [r18]
	nop 0
	;;
	.mmi
	chk.s r15, .L86
	nop 0
	nop 0
.L87:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
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
	ld1.c.clr r14 = [r18]
	nop 0
	;;
	.mib
	st1 [r16] = r14
	nop 0
	(p8) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r14 = [r21]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p10) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p12) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r22] = r14
	nop 0
	(p14) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1 r14 = [r26]
	nop 0
	;;
	.mib
	st1 [r24] = r14
	nop 0
	(p16) br.cond.dpnt .L7
	;;
	.mmi
	ld1 r14 = [r33]
	nop 0
	mov pr = r2, -1
	;;
	.mib
	st1 [r17] = r14
	nop 0
	br.ret.sptk.many b0
.L76:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L76
	.mib
	nop 0
	nop 0
	br .L77
.L79:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L79
	.mib
	nop 0
	nop 0
	br .L80
	;;
.L8:
	.mmi
	sub r34 = r18, r34
	adds r15 = -1, r18
	adds r17 = -1, r17
	;;
	.mmi
	nop 0
	sub r34 = r18, r34, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r34
	;;
	mov r16 = ar.lc
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r16
	(p7) br.cond.dptk .L78
	.mmi
	adds r16 = -1, r16
	;;
	nop 0
	mov ar.lc = r16
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mmi
	nop 0
	st1 [r17] = r16
	adds r17 = -1, r17
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
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L78:
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r17] = r16
	adds r17 = -1, r17
	br.cloop.sptk.few .L78
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
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
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L86:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r33]
	nop 0
	br .L87
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
	(p6) br.cond.dpnt .L89
	.align 32
.L90:
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
	(p7) br.cond.dpnt .L102
	br.cloop.sptk.few .L90
	;;
.L89:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L102:
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
	(p6) br.cond.dpnt .L111
	.align 32
.L105:
	.mmi
	mov r8 = r32
	ld1 r14 = [r32]
	adds r32 = 1, r32
	;;
	.mbb
	cmp4.ne p6, p7 = r33, r14
	(p7) br.cond.dpnt .L103
	br.cloop.sptk.few .L105
.L111:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L103:
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
	(p6) br.cond.dpnt .L124
	.align 32
.L116:
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
	(p7) br.cond.dpnt .L128
	br.cloop.sptk.few .L116
	;;
.L124:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L128:
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
	(p6) br.cond.dpnt .L130
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L130:
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
	br.cloop.sptk.few .L143
	;;
	.align 32
.L142:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L136:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L143:
	.mmi
	adds r32 = -1, r32
	nop 0
	nop 0
	;;
	.align 32
.L139:
	.mmi
	nop 0
	ld1 r14 = [r8]
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = r33, r14
	nop 0
	(p6) br.cond.dpnt .L136
	;;
	.mib
	mov r8 = r32
	adds r32 = -1, r32
	br.cloop.sptk.few .L139
	.mib
	nop 0
	nop 0
	br .L142
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
	(p7) br.cond.dpnt .L147
	br.call.sptk.many b0 = memset#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L147:
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
	(p6) br.cond.dpnt .L150
	;;
	.align 32
.L152:
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
	(p6) br.cond.dptk .L152
.L150:
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
	(p7) br.cond.dpnt .L157
	;;
	.align 32
.L158:
	.mii
	nop 0
	zxt1 r15 = r15
	nop 0
	;;
	.mib
	cmp4.ne p6, p7 = r33, r15
	nop 0
	(p7) br.cond.dpnt .L157
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
	(p7) br.cond.dptk .L158
.L157:
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
.L168:
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
	(p6) br.cond.dpnt .L166
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L168
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L166:
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
	(p7) br.cond.dpnt .L174
	;;
	.align 32
.L175:
	.mmi
	ld1.s r16 = [r32]
	ld1.s r14 = [r33]
	cmp4.ne p6, p7 = 0, r17
	.mmb
	nop 0
	nop 0
	(p7) br.cond.dpnt .L180
	;;
	.mmi
	chk.s r16, .L181
	nop 0
	nop 0
.L182:
	.mii
	nop 0
	sxt1 r15 = r16
	nop 0
	.mmi
	adds r32 = 1, r32
	chk.s r14, .L183
	nop 0
.L184:
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
	(p6) br.cond.dptk .L175
	.mii
	nop 0
	zxt1 r16 = r16
	nop 0
	;;
.L174:
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
.L180:
	.mmi
	mov r16 = r0
	nop 0
	zxt1 r8 = r8
	;;
	.mib
	nop 0
	sub r8 = r16, r8
	br.ret.sptk.many b0
.L181:
	.mib
	ld1 r16 = [r32]
	nop 0
	br .L182
.L183:
	.mib
	ld1 r14 = [r33]
	nop 0
	br .L184
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
	(p6) br.cond.dpnt .L185
	;;
	.align 32
.L187:
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
	(p6) br.cond.dptk .L187
	.mmi
	sub r8 = r8, r32
	nop 0
	nop 0
.L185:
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
	(p6) br.cond.dpnt .L192
	;;
	.mmi
	chk.s r15, .L204
	nop 0
	nop 0
.L205:
	.mii
	mov r8 = r15
	cmp4.ne p6, p7 = 0, r15
	;;
	(p7) mov r8 = r0
	.mmb
	nop 0
	(p7) ld1 r15 = [r33]
	(p7) br.cond.dpnt .L195
	;;
	.mmi
	ld1.s r15 = [r14]
	nop 0
	nop 0
	;;
	.align 32
.L196:
	.mmi
	nop 0
	mov r19 = r14
	chk.s r15, .L202
.L203:
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
	(p7) br.cond.dpnt .L195
	;;
	.mii
	ld1 r15 = [r17]
	adds r17 = 1, r17
	;;
	mov r8 = r15
	.mmb
	cmp4.ne p6, p7 = 0, r15
	ld1.s r15 = [r14]
	(p6) br.cond.dptk .L196
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
.L195:
	.mmi
	sub r8 = r8, r15
	nop 0
	nop 0
.L192:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L202:
	.mib
	ld1 r15 = [r14]
	nop 0
	br .L203
	;;
.L204:
	.mib
	ld1 r15 = [r32]
	nop 0
	br .L205
	.endp strncmp#
	.align 16
	.align 64
	.global swab#
	.type	swab#, @function
	.proc swab#
swab:
	.prologue 1, 2
	.mmi
	alloc r16 = ar.pfs, 3, 0, 7, 0
	adds r18 = -2, r34
	or r14 = r32, r33
	.mmi
	mov r17 = r32
	and r28 = -16, r34
	shr.u r29 = r34, 1
	;;
	.mmi
	adds r20 = 8, r33
	mov r16 = r33
	shr.u r27 = r34, 4
	.mmi
	and r14 = 7, r14
	adds r15 = -16, r28
	adds r21 = 8, r32
	;;
	.mmi
	mov r24 = r33
	mov r25 = r20
	.save pr, r2
	mov r2 = pr
	.mmi
	cmp.ge p6, p7 = 1, r34
	nop 0
	shr.u r15 = r15, 4
	;;
	.mib
	nop 0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	(p6) br.cond.dpnt .L206
	;;
	.mii
	nop 0
	mov ar.lc = r15
	cmp.geu p6, p7 = 13, r18
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L208
	;;
	.mib
	cmp.ne p6, p7 = 0, r14
	mov r14 = ar.lc
	(p6) br.cond.dpnt .L208
	;;
	.mmi
	nop 0
	cmp.lt p6, p7 = 3, r15
	nop 0
	;;
	.mib
	nop 0
	adds r14 = -2, r14
	(p7) br.cond.dptk .L222
	;;
	.mmi
	ld8 r19 = [r32]
	ld8 r18 = [r21]
	mov ar.lc = r14
	.mmi
	adds r17 = 16, r32
	adds r21 = 24, r32
	adds r16 = 16, r33
	;;
	.mmi
	adds r20 = 24, r33
	nop 0
	mov r26 = r24
	;;
	.mii
	nop 0
	mix1.l r15 = r18, r19
	mix1.r r14 = r18, r19
	.mmb
	ld8 r19 = [r17]
	adds r17 = 16, r17
	nop 0
	;;
	.mmi
	ld8 r18 = [r21]
	nop 0
	adds r21 = 8, r17
	;;
	.mii
	nop 0
	mux1 r15 = r15, @alt
	mux1 r14 = r14, @alt
	;;
	.align 32
.L209:
	.mii
	nop 0
	unpack1.l r23 = r14, r15
	unpack1.h r22 = r14, r15
	.mmb
	mov r24 = r16
	adds r16 = 16, r16
	nop 0
	;;
	.mii
	nop 0
	mix1.r r14 = r18, r19
	mix1.l r15 = r18, r19
	.mmb
	mov r18 = r25
	ld8 r19 = [r17]
	nop 0
	;;
	.mmi
	adds r17 = 16, r17
	mov r25 = r20
	adds r20 = 8, r16
	;;
	.mii
	nop 0
	mux1 r14 = r14, @alt
	mux1 r15 = r15, @alt
	.mmb
	st8 [r26] = r23
	mov r26 = r24
	nop 0
	;;
	.mmi
	nop 0
	st8 [r18] = r22
	nop 0
	.mmb
	ld8 r18 = [r21]
	adds r21 = 8, r17
	br.cloop.sptk.few .L209
	.mii
	nop 0
	unpack1.h r22 = r14, r15
	unpack1.l r23 = r14, r15
	;;
	.mii
	nop 0
	mix1.l r15 = r18, r19
	mix1.r r14 = r18, r19
	;;
	.mii
	nop 0
	mux1 r15 = r15, @alt
	mux1 r14 = r14, @alt
	.mmb
	st8 [r24] = r23
	st8 [r25] = r22
	nop 0
	;;
	.mii
	nop 0
	unpack1.h r22 = r14, r15
	unpack1.l r23 = r14, r15
	;;
	.mmi
	st8 [r16] = r23
	st8 [r20] = r22
	nop 0
.L219:
	.mmi
	shladd r14 = r27, 3, r0
	nop 0
	add r33 = r33, r28
	.mmi
	add r32 = r32, r28
	nop 0
	shladd r27 = r27, 4, r0
	;;
	.mmi
	sub r34 = r34, r27
	adds r16 = 1, r32
	adds r15 = 1, r33
	.mmi
	adds r18 = 2, r33
	adds r20 = 3, r32
	adds r17 = 3, r33
	;;
	.mmi
	adds r19 = 2, r32
	adds r22 = 4, r33
	adds r24 = 5, r32
	.mmi
	adds r21 = 5, r33
	adds r23 = 4, r32
	adds r26 = 6, r33
	;;
	.mmi
	adds r30 = 7, r32
	adds r25 = 7, r33
	adds r28 = 6, r32
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
	cmp.ge p14, p15 = 11, r34
	.mmi
	cmp.ge p16, p17 = 13, r34
	adds r27 = 13, r32
	cmp.eq p6, p7 = r14, r29
	;;
	.mib
	ld1.s r14 = [r32]
	nop 0
	(p6) br.cond.dpnt .L206
	;;
	.mii
	ld1 r16 = [r16]
	cmp.ge p6, p7 = 3, r34
	;;
	chk.s r14, .L223
.L224:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
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
	ld1.s r15 = [r20]
	ld1.s r14 = [r19]
	(p6) br.cond.dpnt .L206
	;;
	.mmi
	chk.s r15, .L225
	nop 0
	nop 0
.L226:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r14, .L227
	nop 0
	nop 0
.L228:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	st1 [r18] = r15
	ld1.s r15 = [r24]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r17] = r14
	nop 0
	.mmb
	ld1.s r14 = [r23]
	nop 0
	(p8) br.cond.dpnt .L206
	;;
	.mmi
	chk.s r15, .L229
	nop 0
	nop 0
.L230:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r14, .L231
	nop 0
	nop 0
.L232:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	st1 [r22] = r15
	ld1.s r15 = [r30]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r21] = r14
	nop 0
	.mmb
	ld1.s r14 = [r28]
	nop 0
	(p10) br.cond.dpnt .L206
	;;
	.mmi
	chk.s r15, .L233
	nop 0
	nop 0
.L234:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r14, .L235
	nop 0
	nop 0
.L236:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	st1 [r26] = r15
	ld1.s r15 = [r37]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r25] = r14
	nop 0
	.mmb
	ld1.s r14 = [r36]
	nop 0
	(p12) br.cond.dpnt .L206
	;;
	.mmi
	chk.s r15, .L237
	nop 0
	nop 0
.L238:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r14, .L239
	nop 0
	nop 0
.L240:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
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
	(p14) br.cond.dpnt .L206
	;;
	.mmi
	chk.s r15, .L241
	nop 0
	nop 0
.L242:
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r14, .L243
	nop 0
	nop 0
.L244:
	.pred.rel.mutex p16, p17
	.mmi
	st1 [r39] = r15
	ld1.s r15 = [r27]
	nop 0
	;;
	.mmi
	nop 0
	st1 [r38] = r14
	nop 0
	.mmb
	ld1.s r14 = [r32]
	nop 0
	(p16) br.cond.dpnt .L206
	;;
	.mmi
	chk.s r15, .L245
	nop 0
	nop 0
.L246:
	.mmi
	chk.s r14, .L247
	nop 0
	nop 0
.L248:
	.mmi
	st1 [r16] = r15
	st1 [r33] = r14
	nop 0
.L206:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L222:
	.mmi
	adds r21 = 8, r17
	nop 0
	nop 0
	;;
	.align 32
.L218:
	.mmi
	ld8 r19 = [r17]
	ld8 r18 = [r21]
	adds r20 = 8, r16
	.mmi
	adds r17 = 16, r17
	;;
	adds r21 = 8, r17
	nop 0
	;;
	.mii
	nop 0
	mix1.r r14 = r18, r19
	mix1.l r15 = r18, r19
	;;
	.mii
	nop 0
	mux1 r14 = r14, @alt
	mux1 r15 = r15, @alt
	;;
	.mii
	nop 0
	unpack1.l r23 = r14, r15
	unpack1.h r22 = r14, r15
	;;
	.mmi
	nop 0
	st8 [r16] = r23
	adds r16 = 16, r16
	.mmb
	nop 0
	st8 [r20] = r22
	br.cloop.sptk.few .L218
	.mib
	nop 0
	nop 0
	br .L219
.L208:
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
.L211:
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
	br.cloop.sptk.few .L211
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L223:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r32]
	nop 0
	br .L224
.L225:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r20]
	nop 0
	br .L226
	;;
.L227:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r19]
	nop 0
	br .L228
.L229:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r24]
	nop 0
	br .L230
	;;
.L231:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r23]
	nop 0
	br .L232
.L233:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r30]
	nop 0
	br .L234
	;;
.L235:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r28]
	nop 0
	br .L236
.L237:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r37]
	nop 0
	br .L238
	;;
.L239:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r36]
	nop 0
	br .L240
.L241:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r41]
	nop 0
	br .L242
	;;
.L243:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r40]
	nop 0
	br .L244
.L245:
	.mib
	ld1 r15 = [r27]
	nop 0
	br .L246
	;;
.L247:
	.mib
	ld1 r14 = [r32]
	nop 0
	br .L248
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
	(p6) br.cond.dptk .L269
	(p10) br.cond.dpnt .L269
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
.L269:
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
	.mmi
	mov r2 = r32
	addl r15 = 8231, r0
	nop 0
	.mmi
	addl r14 = 254, r0
	addl r17 = 47061, r0
	addl r16 = 8184, r0
	;;
	.mmi
	addl r18 = -8234, r2
	cmp4.geu p8, p9 = r15, r32
	addl r15 = -57344, r2
	.mmb
	cmp4.ltu p6, p7 = r14, r32
	addl r14 = 1048579, r0
	(p7) br.cond.dpnt .L285
	;;
	.mmi
	cmp4.geu p6, p7 = r17, r18
	cmp4.geu p10, p11 = r16, r15
	addl r17 = -65532, r2
	.mmi
	addl r15 = 65534, r0
	;;
	and r2 = r15, r2
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	.bbb
	nop 0
	(p6) br.cond.dpnt .L281
	(p10) br.cond.dpnt .L281
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r14, r17
	nop 0
	;;
	.mib
	(p6) mov r8 = r0
	nop 0
	(p6) br.cond.dpnt .L277
	;;
	.mmi
	nop 0
	cmp4.ne p6, p7 = r15, r2
	nop 0
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L277:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L281:
	.mib
	nop 0
	addl r8 = 1, r0
	br.ret.sptk.many b0
.L285:
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
	(p6) br.cond.dptk .L286
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
.L286:
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
	fcmp.unord p8, p9 = f9, f9
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f6, f6
	;;
	.mfb
	nop 0
	(p6) mov f8 = f6
	(p6) br.cond.dpnt .L293
	;;
	.mfb
	nop 0
	(p8) mov f8 = f9
	(p8) br.cond.dpnt .L293
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
.L293:
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
	mov f8 = f0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p8, p9 = f9, f9
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f6, f6
	;;
	.mfb
	nop 0
	(p6) mov f8 = f6
	(p6) br.cond.dpnt .L303
	;;
	.mfb
	nop 0
	(p8) mov f8 = f9
	(p8) br.cond.dpnt .L303
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
.L303:
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
	(p6) br.cond.dpnt .L320
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L319
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
	(p6) br.cond.dptk .L315
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L313
.L320:
	.mmi
	setf.d f8 = r14
	nop 0
	nop 0
.L313:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L315:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L320
.L319:
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
	.mmi
	nop 0
	getf.s r15 = f8
	nop 0
	;;
	.mlx
	getf.s r14 = f9
	movl r18 = -2147483648
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L330
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L329
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
	(p6) br.cond.dptk .L325
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L323
.L330:
	.mmi
	setf.s f8 = r14
	nop 0
	nop 0
.L323:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L325:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L330
.L329:
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
	.mfi
	.fframe 16
	adds r12 = -16, r12
	.body
	mov f6 = f8
	nop 0
	.mfi
	nop 0
	fcmp.unord p6, p7 = f8, f8
	nop 0
	;;
	.mmi
	adds r15 = 8, r12
	adds r17 = 24, r12
	addl r16 = 32768, r0
	.mmi
	adds r14 = 16, r12
	stfe [r12] = f8
	nop 0
	;;
	.mmi
	nop 0
	stfe [r14] = f9
	nop 0
	.mmb
	ld8.s r14 = [r15]
	nop 0
	(p6) br.cond.dpnt .L338
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L343
	;;
	.mmi
	chk.s r14, .L344
	nop 0
	nop 0
.L345:
	.mii
	ld8 r15 = [r17]
	and r14 = r16, r14
	;;
	and r15 = r16, r15
	;;
	.mib
	cmp4.eq p6, p7 = r15, r14
	nop 0
	(p6) br.cond.dptk .L335
	;;
	.mib
	cmp4.ne p6, p7 = 0, r14
	nop 0
	(p7) br.cond.dptk .L336
	;;
	.mmi
	nop 0
	(p6) adds r15 = 16, r12
	nop 0
	;;
	.mmi
	(p6) ldfe f8 = [r15]
	nop 0
	nop 0
.L333:
.L343:
	.mib
	nop 0
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L335:
	.body
	.copy_state 1
	.mmi
	adds r14 = 16, r12
	;;
	ldfe f7 = [r14]
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f7
	;;
	.mfb
	nop 0
	(p6) mov f8 = f7
	(p6) br.cond.dptk .L333
	;;
.L336:
	.mfi
	nop 0
	mov f8 = f6
	nop 0
	.mmb
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
	;;
.L338:
	.body
	.copy_state 2
	.mmi
	nop 0
	adds r14 = 16, r12
	nop 0
	;;
	.mib
	ldfe f8 = [r14]
	.label_state 3
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L344:
	.body
	.copy_state 3
	.mib
	ld8 r14 = [r15]
	nop 0
	br .L345
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
	(p6) br.cond.dpnt .L351
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L353
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
	(p6) br.cond.dptk .L348
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L351
.L353:
	.mib
	setf.d f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L348:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L353
.L351:
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
	.mmi
	nop 0
	getf.s r14 = f8
	nop 0
	;;
	.mlx
	getf.s r15 = f9
	movl r18 = -2147483648
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L361
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L363
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
	cmp4.eq p6, p7 = r17, r16
	nop 0
	(p6) br.cond.dptk .L358
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r16
	(p7) br.cond.dptk .L361
.L363:
	.mib
	setf.s f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L358:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L363
.L361:
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
	adds r15 = 8, r12
	adds r17 = 24, r12
	addl r16 = 32768, r0
	.mmi
	adds r14 = 16, r12
	stfe [r12] = f8
	nop 0
	;;
	.mmi
	nop 0
	stfe [r14] = f9
	nop 0
	.mmb
	ld8.s r14 = [r15]
	nop 0
	(p6) br.cond.dpnt .L371
	;;
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f9, f9
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L366
	;;
	.mmi
	chk.s r14, .L376
	nop 0
	nop 0
.L377:
	.mii
	ld8 r15 = [r17]
	and r14 = r16, r14
	;;
	and r15 = r16, r15
	;;
	.mib
	cmp4.eq p6, p7 = r15, r14
	adds r15 = 16, r12
	(p6) br.cond.dptk .L368
	;;
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r14
	nop 0
	;;
	.mfi
	nop 0
	(p7) mov f8 = f9
	nop 0
.L366:
	.mib
	nop 0
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L368:
	.body
	.copy_state 1
	.mmi
	nop 0
	ldfe f7 = [r15]
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f7
	;;
	.mmi
	nop 0
	(p7) adds r14 = 16, r12
	nop 0
	;;
	.mib
	(p7) ldfe f8 = [r14]
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L371:
	.body
	.copy_state 2
	.mmi
	nop 0
	adds r15 = 16, r12
	nop 0
	;;
	.mib
	ldfe f8 = [r15]
	.label_state 3
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L376:
	.body
	.copy_state 3
	.mib
	ld8 r14 = [r15]
	nop 0
	br .L377
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
	(p6) br.cond.dpnt .L379
	.mmi
	nop 0
	and r15 = 63, r14
	extr.u r14 = r14, 6, 26
	;;
	.align 32
.L380:
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
	(p6) br.cond.dptk .L380
	;;
.L379:
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
	(p7) br.cond.dpnt .L389
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
.L389:
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
	(p6) br.cond.dpnt .L408
	;;
	.mmi
	mov r45 = r37
	mov r44 = r32
	mov ar.lc = r14
	.align 32
.L410:
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
	(p6) br.cond.dpnt .L407
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L410
.L408:
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
	(p6) br.cond.dpnt .L407
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
.L407:
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
	(p6) br.cond.dpnt .L425
	;;
	.mmi
	mov r43 = r33
	mov r42 = r32
	mov ar.lc = r15
	.align 32
.L427:
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
	(p6) br.cond.dpnt .L424
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L427
.L425:
	.mmi
	mov r37 = r0
	nop 0
	nop 0
	;;
.L424:
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
	(p7) br.cond.dpnt .L440
	.align 32
.L463:
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
	(p6) br.cond.dptk .L463
	;;
.L440:
	.mmi
	adds r18 = -48, r14
	nop 0
	mov r8 = r0
	.mmb
	cmp4.eq p6, p7 = 43, r14
	nop 0
	(p6) br.cond.dpnt .L442
	;;
	.mib
	cmp4.eq p6, p7 = 45, r14
	nop 0
	(p6) br.cond.dptk .L443
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r18
	(p7) br.cond.dpnt .L466
.L445:
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
.L448:
	.mmi
	shladd r14 = r8, 2, r0
	adds r17 = -48, r15
	chk.s r18, .L464
.L465:
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
	(p6) br.cond.dptk .L448
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r17, r14
	br.ret.sptk.many b0
.L443:
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
	(p7) br.cond.dptk .L445
.L466:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L442:
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
	(p7) br.cond.dpnt .L466
	br .L445
.L464:
	.mib
	ld1 r18 = [r32]
	nop 0
	br .L465
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
	(p7) br.cond.dpnt .L469
	.align 32
.L492:
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
	(p6) br.cond.dptk .L492
	;;
.L469:
	.mmi
	adds r18 = -48, r14
	nop 0
	mov r8 = r0
	.mmb
	cmp4.eq p6, p7 = 43, r14
	nop 0
	(p6) br.cond.dpnt .L471
	;;
	.mib
	cmp4.eq p6, p7 = 45, r14
	nop 0
	(p6) br.cond.dptk .L472
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r18
	(p7) br.cond.dpnt .L495
.L474:
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
.L477:
	.mmi
	shladd r14 = r8, 2, r0
	adds r17 = -48, r15
	chk.s r18, .L493
.L494:
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
	(p6) br.cond.dptk .L477
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r17, r14
	br.ret.sptk.many b0
.L472:
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
	(p7) br.cond.dptk .L474
.L495:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L471:
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
	(p7) br.cond.dpnt .L495
	br .L474
.L493:
	.mib
	ld1 r18 = [r32]
	nop 0
	br .L494
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
	(p7) br.cond.dpnt .L498
	.align 32
.L517:
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
	(p6) br.cond.dptk .L517
	;;
.L498:
	.mmi
	adds r18 = -48, r14
	nop 0
	mov r8 = r0
	.mmb
	cmp4.eq p6, p7 = 43, r14
	nop 0
	(p6) br.cond.dpnt .L500
	;;
	.mib
	cmp4.ne p6, p7 = 45, r14
	nop 0
	(p7) br.cond.dptk .L518
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r18
	(p7) br.cond.dpnt .L521
.L502:
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
.L505:
	.mmi
	shladd r14 = r8, 2, r0
	adds r17 = -48, r15
	chk.s r18, .L519
.L520:
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
	(p6) br.cond.dptk .L505
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p7) sub r8 = r17, r14
	br.ret.sptk.many b0
.L518:
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
	(p6) br.cond.dptk .L502
.L521:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L500:
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
	(p6) br.cond.dpnt .L521
	br .L502
.L519:
	.mib
	ld1 r18 = [r32]
	nop 0
	br .L520
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
	setf.sig f3 = r33
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	nop 0
	;;
	.mbb
	setf.sig f4 = r35
	(p6) br.cond.dpnt .L524
	br .L539
.L541:
	.mib
	ld8 r14 = [r36], 8
	sub r34 = r34, r37, 1
	br .L538
	;;
.L539:
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
.L538:
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
	xma.l f2 = f6, f4, f3
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
	(p6) br.cond.dpnt .L528
	;;
	.mii
	nop 0
	shr.u r37 = r34, 1
	nop 0
	.mmb
	getf.sig r14 = f4
	cmp4.eq p6, p7 = 0, r8
	(p6) br.cond.dpnt .L523
	;;
	.mmi
	cmp.ne p6, p7 = 0, r34
	;;
	add r15 = r15, r14
	nop 0
	;;
	.mib
	setf.sig f3 = r15
	nop 0
	(p6) br.cond.dptk .L541
.L524:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L523:
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
.L528:
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
	(p6) br.cond.dptk .L541
	.mib
	nop 0
	nop 0
	br .L524
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
	setf.sig f3 = r33
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	nop 0
	;;
	.mbb
	setf.sig f4 = r35
	(p7) br.cond.dpnt .L547
	br .L560
.L555:
	.mii
	nop 0
	extr r14 = r38, 1, 31
	nop 0
	.mmb
	adds r38 = -1, r38
	nop 0
	br .L559
	;;
.L560:
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
.L559:
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
	xma.l f2 = f2, f4, f3
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
	(p6) br.cond.dpnt .L542
	;;
	.mib
	getf.sig r14 = f4
	cmp4.ge p6, p7 = 0, r8
	(p6) br.cond.dpnt .L545
	;;
	.mmi
	cmp4.ne p6, p7 = 0, r38
	;;
	add r15 = r15, r14
	nop 0
	;;
	.mib
	setf.sig f3 = r15
	nop 0
	(p6) br.cond.dptk .L555
.L547:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L542:
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
.L545:
	.body
	.copy_state 1
	.mmi
	nop 0
	mov r38 = r39
	cmp4.eq p6, p7 = 0, r39
	.bbb
	nop 0
	(p6) br.cond.dpnt .L547
	br .L555
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
	(p7) br.cond.dpnt .L579
	;;
	.align 32
.L576:
	.mib
	cmp4.ne p6, p7 = r14, r33
	nop 0
	(p7) br.cond.dpnt .L585
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
	(p7) br.cond.dptk .L576
.L579:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	;;
.L585:
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
.L589:
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
	(p6) br.cond.dpnt .L587
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L589
	;;
.L587:
	.mmi
	addl r8 = -1, r0
	nop 0
	cmp4.lt p8, p9 = r15, r14
	.mmb
	cmp4.gt p6, p7 = r15, r14
	nop 0
	(p6) br.cond.dptk .L586
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L586:
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
.L596:
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
	(p6) br.cond.dptk .L596
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
	(p6) br.cond.dpnt .L600
	;;
	.align 32
.L602:
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
	(p6) br.cond.dptk .L602
	.mii
	sub r8 = r8, r32
	nop 0
	;;
	shr r8 = r8, 2
.L600:
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
	(p6) br.cond.dpnt .L618
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L609:
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
	(p7) br.cond.dpnt .L622
	br.cloop.sptk.few .L609
.L618:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L607:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L622:
	.mmi
	ld4 r15 = [r16]
	nop 0
	addl r8 = -1, r0
	;;
	.mib
	cmp4.lt p8, p9 = r14, r15
	cmp4.le p6, p7 = r14, r15
	(p7) br.cond.dptk .L607
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
	(p6) br.cond.dpnt .L631
	.align 32
.L625:
	.mmi
	mov r8 = r32
	ld4 r14 = [r32]
	adds r32 = 4, r32
	;;
	.mbb
	cmp4.ne p6, p7 = r33, r14
	(p7) br.cond.dpnt .L623
	br.cloop.sptk.few .L625
.L631:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L623:
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
	(p6) br.cond.dpnt .L645
	.align 32
.L636:
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
	(p7) br.cond.dpnt .L649
	br.cloop.sptk.few .L636
.L645:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L634:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L649:
	.mmi
	addl r8 = -1, r0
	nop 0
	cmp4.lt p8, p9 = r14, r15
	.mmb
	cmp4.le p6, p7 = r14, r15
	nop 0
	(p7) br.cond.dptk .L634
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
	(p6) br.cond.dpnt .L651
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L651:
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
	(p7) br.cond.dpnt .L672
	;;
	.mib
	cmp.gtu p6, p7 = r16, r17
	or r17 = r32, r33
	(p6) br.cond.dptk .L659
	;;
	.mib
	and r17 = 7, r17
	cmp.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L672
	;;
	.mmi
	nop 0
	cmp.geu p6, p7 = 8, r14
	nop 0
	;;
	.mib
	(p6) adds r16 = 4, r33
	nop 0
	(p6) br.cond.dpnt .L663
	;;
	.mmi
	adds r16 = 4, r33
	;;
	cmp.ne p6, p7 = r16, r32
	nop 0
	;;
	.mib
	cmp.eq.and.orcm p6, p7 = 0, r17
	nop 0
	(p7) br.cond.dpnt .L663
	;;
	.mii
	nop 0
	shr.u r16 = r34, 1
	mov r14 = r32
	;;
	.mmi
	adds r16 = -1, r16
	;;
	nop 0
	mov ar.lc = r16
	.mmb
	nop 0
	cmp.lt p6, p7 = 2, r16
	(p7) br.cond.dptk .L689
	.mmi
	adds r16 = -1, r16
	adds r15 = 8, r33
	nop 0
	.mii
	adds r14 = 8, r14
	nop 0
	;;
	mov ar.lc = r16
	.mmi
	ld8 r16 = [r33]
	;;
	st8 [r32] = r16
	nop 0
	.align 32
.L666:
	.mmi
	ld8 r16 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r16
	adds r14 = 8, r14
	br.cloop.sptk.few .L666
	;;
	.mib
	and r14 = -2, r34
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dpnt .L672
	;;
.L693:
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
.L672:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L689:
	.mmi
	ld8 r16 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r16
	adds r14 = 8, r14
	br.cloop.sptk.few .L689
	;;
	.mmi
	nop 0
	and r14 = -2, r34
	tbit.z p6, p7 = r34, 0
	.bbb
	nop 0
	(p7) br.cond.dptk .L693
	br .L672
	;;
.L659:
	.mib
	shladd r14 = r14, 2, r0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L672
	;;
	.mii
	add r33 = r33, r14
	shr.u r15 = r14, 2
	add r14 = r32, r14
	;;
	.mii
	nop 0
	mov ar.lc = r15
	nop 0
	.mmb
	cmp.lt p6, p7 = 2, r15
	nop 0
	(p7) br.cond.dptk .L688
	.mmi
	adds r15 = -1, r15
	;;
	nop 0
	mov ar.lc = r15
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = -4, r33
	;;
	.mmi
	nop 0
	st4 [r14] = r15
	adds r14 = -4, r14
	.align 32
.L662:
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = -4, r33
	;;
	.mib
	st4 [r14] = r15
	adds r14 = -4, r14
	br.cloop.sptk.few .L662
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L688:
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = -4, r33
	;;
	.mib
	st4 [r14] = r15
	adds r14 = -4, r14
	br.cloop.sptk.few .L688
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L663:
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L665:
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
	br.cloop.sptk.few .L665
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
	(p6) br.cond.dpnt .L697
	;;
	.mib
	nop 0
	cmp.geu p6, p7 = 5, r16
	(p6) br.cond.dpnt .L702
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
.L700:
	.mib
	st8 [r14] = r15
	adds r14 = 8, r14
	br.cloop.sptk.few .L700
	;;
	.mib
	and r14 = -2, r34
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dpnt .L697
	;;
	.mii
	shladd r15 = r14, 2, r0
	sub r16 = r16, r14
	;;
	add r14 = r17, r15
	;;
.L698:
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
	(p6) br.cond.dpnt .L697
	;;
	.mib
	st4 [r15] = r33
	cmp.eq p6, p7 = 1, r16
	(p6) br.cond.dpnt .L697
	;;
	.mib
	st4 [r17] = r33
	cmp.eq p6, p7 = 2, r16
	(p6) br.cond.dpnt .L697
	;;
	.mib
	st4 [r18] = r33
	cmp.eq p6, p7 = 3, r16
	(p6) br.cond.dpnt .L697
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
.L697:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L702:
	.mib
	nop 0
	mov r14 = r32
	br .L698
	.endp wmemset#
	.align 16
	.align 64
	.global bcopy#
	.type	bcopy#, @function
	.proc bcopy#
bcopy:
	.prologue 1, 2
	.mii
	nop 0
	.save pr, r2
	mov r2 = pr
	cmp.leu p6, p7 = r33, r32
	;;
	.mib
	nop 0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	(p6) br.cond.dptk .L729
	.mmi
	nop 0
	add r17 = r32, r34
	add r16 = r33, r34
	.mmb
	nop 0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L728
	.mmi
	nop 0
	adds r15 = -1, r34
	nop 0
	;;
	.mib
	nop 0
	cmp.geu p6, p7 = 8, r15
	(p6) br.cond.dpnt .L731
	.mmi
	adds r18 = -8, r34
	adds r19 = -2, r34
	add r15 = r33, r15
	;;
	.mmi
	add r14 = r32, r18
	add r33 = r33, r18
	add r32 = r32, r19
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
	(p6) br.cond.dpnt .L731
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
	.mmb
	nop 0
	cmp.lt p6, p7 = 2, r15
	(p7) br.cond.dptk .L799
	.mmi
	adds r15 = -1, r15
	;;
	nop 0
	mov ar.lc = r15
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mmi
	nop 0
	st8 [r33] = r15
	adds r33 = -8, r33
	.align 32
.L732:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = -8, r33
	br.cloop.sptk.few .L732
.L800:
	.mmi
	sub r14 = r16, r18
	sub r15 = r17, r18
	nop 0
	.mmb
	sub r16 = r34, r18
	cmp.eq p6, p7 = r18, r34
	(p6) br.cond.dpnt .L728
	;;
	.mmi
	adds r17 = -1, r15
	adds r18 = -1, r14
	cmp.eq p6, p7 = 1, r16
	.mmi
	adds r20 = -2, r15
	adds r19 = -2, r14
	cmp.eq p8, p9 = 2, r16
	;;
	.mmi
	adds r22 = -3, r15
	adds r21 = -3, r14
	cmp.eq p10, p11 = 3, r16
	.mmi
	adds r24 = -4, r15
	adds r23 = -4, r14
	cmp.eq p12, p13 = 4, r16
	;;
	.mmi
	adds r26 = -5, r15
	adds r25 = -5, r14
	cmp.eq p14, p15 = 5, r16
	.mmi
	adds r28 = -6, r15
	adds r27 = -6, r14
	cmp.eq p16, p17 = 6, r16
	;;
	.mmi
	ld1 r16 = [r17]
	adds r15 = -7, r15
	adds r14 = -7, r14
	;;
	.mib
	st1 [r18] = r16
	nop 0
	(p6) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r16 = [r20]
	nop 0
	;;
	.mib
	st1 [r19] = r16
	nop 0
	(p8) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r16 = [r22]
	nop 0
	;;
	.mib
	st1 [r21] = r16
	nop 0
	(p10) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r16 = [r24]
	nop 0
	;;
	.mib
	st1 [r23] = r16
	nop 0
	(p12) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r16 = [r26]
	nop 0
	;;
	.mib
	st1 [r25] = r16
	nop 0
	(p14) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r16 = [r28]
	nop 0
	;;
	.mib
	st1 [r27] = r16
	nop 0
	(p16) br.cond.dpnt .L728
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
.L728:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L729:
	.mib
	nop 0
	cmp.eq p6, p7 = r33, r32
	(p6) br.cond.dpnt .L728
	;;
	.mib
	nop 0
	cmp.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L728
	.mmi
	adds r14 = -1, r34
	;;
	cmp.geu p6, p7 = 7, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) adds r15 = 1, r32
	(p6) br.cond.dpnt .L736
	;;
	.mmi
	or r14 = r33, r32
	sub r16 = r33, r32, 1
	adds r15 = 1, r32
	;;
	.mii
	and r14 = 7, r14
	cmp.ltu p6, p7 = 6, r16
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
	(p6) br.cond.dpnt .L736
	.mmi
	and r17 = -8, r34
	nop 0
	mov r14 = r32
	;;
	.mii
	adds r15 = -8, r17
	add r16 = r33, r17
	;;
	shr.u r15 = r15, 3
	;;
	.mii
	nop 0
	mov ar.lc = r15
	nop 0
	.mmb
	cmp.lt p6, p7 = 2, r15
	nop 0
	(p7) br.cond.dptk .L802
	.mii
	adds r15 = -1, r15
	adds r14 = 8, r32
	;;
	mov ar.lc = r15
	.mmi
	ld8 r15 = [r32]
	;;
	st8 [r33] = r15
	adds r33 = 8, r33
	.align 32
.L737:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = 8, r33
	br.cloop.sptk.few .L737
.L803:
	.mmi
	add r32 = r32, r17
	sub r14 = r34, r17
	adds r18 = 1, r16
	.mmi
	adds r19 = 2, r16
	adds r20 = 3, r16
	adds r22 = 4, r16
	;;
	.mmi
	adds r24 = 5, r16
	cmp.eq p8, p9 = 2, r14
	adds r21 = 2, r32
	.mmi
	cmp.eq p10, p11 = 3, r14
	adds r23 = 3, r32
	cmp.eq p12, p13 = 4, r14
	;;
	.mmi
	adds r25 = 4, r32
	cmp.eq p14, p15 = 5, r14
	adds r26 = 5, r32
	.mmi
	cmp.eq p16, p17 = 6, r14
	ld1.s r15 = [r32]
	cmp.eq p6, p7 = r17, r34
	;;
	.mib
	adds r17 = 1, r32
	mov ar.lc = r3
	(p6) br.cond.dpnt .L728
	;;
	.mmi
	cmp.eq p6, p7 = 1, r14
	ld1.sa r14 = [r17]
	nop 0
	;;
	.mmi
	chk.s r15, .L809
	nop 0
	nop 0
.L810:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	adds r32 = 6, r32
	st1 [r16] = r15
	adds r16 = 6, r16
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r17]
	nop 0
	;;
	.mib
	st1 [r18] = r14
	nop 0
	(p8) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r14 = [r21]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p10) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p12) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r22] = r14
	nop 0
	(p14) br.cond.dpnt .L728
	;;
	.mmi
	nop 0
	ld1 r14 = [r26]
	nop 0
	;;
	.mib
	st1 [r24] = r14
	nop 0
	(p16) br.cond.dpnt .L728
	;;
	.mmi
	ld1 r14 = [r32]
	nop 0
	mov pr = r2, -1
	;;
	.mib
	st1 [r16] = r14
	nop 0
	br.ret.sptk.many b0
.L799:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = -8, r33
	br.cloop.sptk.few .L799
	.mib
	nop 0
	nop 0
	br .L800
.L802:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = 8, r33
	br.cloop.sptk.few .L802
	.mib
	nop 0
	nop 0
	br .L803
.L731:
	.mmi
	sub r34 = r17, r34
	adds r14 = -1, r16
	adds r15 = -1, r17
	;;
	.mmi
	nop 0
	sub r34 = r17, r34, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r34
	;;
	mov r16 = ar.lc
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r16
	(p7) br.cond.dptk .L801
	.mmi
	adds r16 = -1, r16
	;;
	nop 0
	mov ar.lc = r16
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mmi
	nop 0
	st1 [r14] = r16
	adds r14 = -1, r14
	.align 32
.L734:
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r14] = r16
	adds r14 = -1, r14
	br.cloop.sptk.few .L734
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L801:
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r14] = r16
	adds r14 = -1, r14
	br.cloop.sptk.few .L801
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L736:
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
.L740:
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
	br.cloop.sptk.few .L740
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L809:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r32]
	nop 0
	br .L810
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
	zxt2 r8 = r32
	;;
	extr.u r32 = r32, 8, 8
	;;
	.mii
	nop 0
	dep.z r8 = r8, 8, 24
	nop 0
	;;
	.mib
	nop 0
	or r8 = r8, r32
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
	dep.z r8 = r32, 8, 24
	nop 0
	.mlx
	nop 0
	movl r14 = 16711680
	;;
	.mmi
	and r8 = r14, r8
	nop 0
	dep.z r16 = r32, 24, 8
	;;
	.mii
	or r8 = r16, r8
	extr.u r15 = r32, 24, 8
	and r32 = r32, r14
	;;
	.mmi
	or r8 = r15, r8
	nop 0
	shr.u r32 = r32, 8
	;;
	.mib
	nop 0
	or r8 = r32, r8
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
.L840:
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
	(p7) br.cond.dpnt .L837
	br.cloop.sptk.few .L840
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L837:
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
	(p6) br.cond.dpnt .L844
	;;
	.mib
	mov r8 = r14
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L844
	;;
	.mmi
	addl r8 = 1, r0
	nop 0
	nop 0
	;;
	.align 32
.L846:
	.mii
	nop 0
	extr r14 = r32, 1, 31
	adds r8 = 1, r8
	;;
	.mib
	mov r32 = r14
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L846
.L844:
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
	movl r14 = 0x7f7fffff
	.mmi
	nop 0
	addl r8 = 1, r0
	nop 0
	;;
	.mlx
	setf.s f7 = r14
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
	nop 0
	(p6) br.cond.dptk .L851
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f7
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L851:
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
	movl r14 = 0x7fefffffffffffff
	.mmi
	nop 0
	addl r8 = 1, r0
	nop 0
	;;
	.mlx
	setf.d f7 = r14
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
	nop 0
	(p6) br.cond.dptk .L856
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f7
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L856:
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
	.mlx
	addl r8 = 1, r0
	movl r15 = @gprel(.LC1)
	;;
	.mmi
	add r14 = r1, r14
	nop 0
	add r15 = r1, r15
	;;
	.mmi
	ldfe f6 = [r14]
	ldfe f7 = [r15]
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
	(p6) br.cond.dptk .L861
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f7
	;;
	.mii
	(p6) addl r8 = 1, r0
	nop 0
	;;
	(p7) mov r8 = r0
.L861:
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
	.mlx
	nop 0
	movl r14 = 0x40000000
	.mfi
	nop 0
	fcmp.unord p6, p7 = f8, f8
	cmp4.le p8, p9 = r0, r33
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L869
	;;
	.mmf
	nop 0
	nop 0
	fadd.s f6 = f8, f8
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
	(p6) br.cond.dptk .L869
	;;
	.mib
	(p9) setf.s f6 = r14
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L871
	;;
	.align 32
.L872:
	.mfi
	nop 0
	fmpy.s f8 = f8, f6
	nop 0
.L871:
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
	(p6) br.cond.dpnt .L869
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	nop 0
.L873:
	.mii
	nop 0
	extr.u r14 = r33, 31, 1
	nop 0
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r33, 0
	(p6) br.cond.dptk .L872
	;;
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	add r33 = r14, r33
	;;
	.mib
	nop 0
	extr r33 = r33, 1, 31
	br .L873
.L869:
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
	.mlx
	nop 0
	movl r14 = 0x4000000000000000
	.mfi
	nop 0
	fcmp.unord p6, p7 = f8, f8
	cmp4.le p8, p9 = r0, r33
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L881
	;;
	.mmf
	nop 0
	nop 0
	fadd.d f6 = f8, f8
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
	(p6) br.cond.dptk .L881
	;;
	.mib
	(p9) setf.d f6 = r14
	tbit.z p6, p7 = r33, 0
	(p6) br.cond.dptk .L883
	;;
	.align 32
.L884:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	nop 0
.L883:
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
	(p6) br.cond.dpnt .L881
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	nop 0
.L885:
	.mii
	nop 0
	extr.u r14 = r33, 31, 1
	nop 0
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r33, 0
	(p6) br.cond.dptk .L884
	;;
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	add r33 = r14, r33
	;;
	.mib
	nop 0
	extr r33 = r33, 1, 31
	br .L885
.L881:
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
	.mlx
	nop 0
	movl r14 = @gprel(.LC4)
	.mfi
	nop 0
	fcmp.unord p6, p7 = f8, f8
	cmp4.le p8, p9 = r0, r34
	;;
	.mlx
	nop 0
	movl r15 = @gprel(.LC5)
	.mmb
	add r14 = r1, r14
	nop 0
	(p6) br.cond.dpnt .L893
	;;
	.mfi
	nop 0
	fadd f6 = f8, f8
	add r15 = r1, r15
	;;
	.mmf
	nop 0
	nop 0
	fcmp.eq p6, p7 = f6, f8
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dptk .L893
	;;
	.mmi
	(p8) ldfe f6 = [r14]
	nop 0
	tbit.z p6, p7 = r34, 0
	;;
	.mib
	(p9) ldfe f6 = [r15]
	nop 0
	(p6) br.cond.dptk .L895
	;;
	.align 32
.L896:
	.mfi
	nop 0
	fmpy f8 = f8, f6
	nop 0
.L895:
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
	(p6) br.cond.dpnt .L893
	.mfi
	nop 0
	fmpy f6 = f6, f6
	nop 0
.L897:
	.mii
	nop 0
	extr.u r14 = r34, 31, 1
	nop 0
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r34, 0
	(p6) br.cond.dptk .L896
	;;
	.mfi
	nop 0
	fmpy f6 = f6, f6
	add r34 = r14, r34
	;;
	.mib
	nop 0
	extr r34 = r34, 1, 31
	br .L897
.L893:
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
	.prologue 1, 2
	.mmi
	mov r8 = r32
	mov r14 = r32
	adds r20 = -1, r34
	.mmi
	or r15 = r33, r32
	mov r16 = r33
	and r19 = -8, r34
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
	(p6) br.cond.dpnt .L905
	;;
	.mib
	cmp.geu p6, p7 = 6, r20
	nop 0
	(p6) br.cond.dpnt .L906
	;;
	.mib
	nop 0
	cmp.ne p6, p7 = 0, r15
	(p6) br.cond.dpnt .L906
	.mii
	nop 0
	mov ar.lc = r17
	nop 0
	.align 32
.L907:
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
	br.cloop.sptk.few .L907
	;;
	.mmi
	ld1.s r15 = [r18]
	add r33 = r33, r19
	sub r14 = r34, r19
	.mmi
	adds r16 = 1, r18
	adds r17 = 2, r18
	adds r20 = 3, r18
	;;
	.mmi
	adds r21 = 4, r18
	adds r22 = 5, r18
	adds r23 = 1, r33
	.mmi
	cmp.eq p8, p9 = 2, r14
	adds r24 = 2, r33
	cmp.eq p10, p11 = 3, r14
	;;
	.mmi
	adds r25 = 3, r33
	cmp.eq p12, p13 = 4, r14
	adds r26 = 4, r33
	.mmi
	cmp.eq p14, p15 = 5, r14
	adds r27 = 5, r33
	cmp.eq p16, p17 = 6, r14
	;;
	.mmi
	nop 0
	cmp.eq p6, p7 = r19, r34
	nop 0
	.mmb
	ld1.s r19 = [r33]
	nop 0
	(p6) br.cond.dpnt .L905
	;;
	.mmi
	cmp.eq p6, p7 = 1, r14
	ld1.s r14 = [r23]
	nop 0
	;;
	.mmi
	chk.s r15, .L941
	nop 0
	nop 0
.L942:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r19, .L943
	nop 0
	nop 0
.L944:
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
	(p6) br.cond.dpnt .L905
	;;
	.mii
	ld1 r15 = [r16]
	nop 0
	;;
	chk.s r14, .L945
.L946:
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
	(p8) br.cond.dpnt .L905
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r17]
	chk.s r14, .L947
	;;
.L948:
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
	(p10) br.cond.dpnt .L905
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r20]
	chk.s r14, .L949
	;;
.L950:
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
	(p12) br.cond.dpnt .L905
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r21]
	chk.s r14, .L951
	;;
.L952:
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
	(p14) br.cond.dpnt .L905
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r22]
	chk.s r14, .L953
	;;
.L954:
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
	(p16) br.cond.dpnt .L905
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r18]
	chk.s r14, .L955
	;;
.L956:
	.mmi
	nop 0
	xor r14 = r15, r14
	nop 0
	;;
	.mmi
	st1 [r18] = r14
	nop 0
	nop 0
.L905:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L906:
	.mmi
	add r34 = r33, r34
	nop 0
	mov r16 = r8
	.mii
	mov r15 = r8
	mov r17 = r33
	;;
	sub r34 = r34, r33, 1
	;;
	.mii
	nop 0
	mov ar.lc = r34
	;;
	mov r14 = ar.lc
	;;
	.mii
	nop 0
	mov r18 = ar.lc
	;;
	adds r14 = -1, r14
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r18
	(p7) br.cond.dptk .L940
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L909:
	.mmi
	nop 0
	adds r33 = 1, r33
	adds r16 = 1, r16
	.mmi
	ld1 r14 = [r17]
	ld1 r18 = [r15]
	mov r19 = r15
	;;
	.mmi
	mov r17 = r33
	mov r15 = r16
	xor r14 = r18, r14
	;;
	.mib
	st1 [r19] = r14
	nop 0
	br.cloop.sptk.few .L909
	.mmi
	ld1 r14 = [r33]
	ld1 r18 = [r16]
	mov pr = r2, -1
	;;
	.mmi
	xor r14 = r18, r14
	nop 0
	mov ar.lc = r3
	;;
	.mib
	st1 [r16] = r14
	nop 0
	br.ret.sptk.many b0
.L940:
	.mmi
	mov r17 = r33
	nop 0
	adds r33 = 1, r33
	.mmi
	ld1.sa r18 = [r16]
	nop 0
	nop 0
	;;
	.align 32
.L937:
	.mmi
	mov r15 = r16
	ld1 r14 = [r17]
	nop 0
	.mmi
	mov r17 = r33
	adds r33 = 1, r33
	adds r16 = 1, r16
	;;
	.mmi
	nop 0
	ld1.c.clr r18 = [r15]
	nop 0
	;;
	.mmi
	xor r14 = r18, r14
	ld1.sa r18 = [r16]
	nop 0
	;;
	.mib
	st1 [r15] = r14
	nop 0
	br.cloop.sptk.few .L937
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L941:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r15 = [r18]
	nop 0
	br .L942
.L943:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r19 = [r33]
	nop 0
	br .L944
.L945:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r23]
	nop 0
	br .L946
	;;
.L947:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r24]
	nop 0
	br .L948
	;;
.L949:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r25]
	nop 0
	br .L950
	;;
.L951:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r26]
	nop 0
	br .L952
	;;
.L953:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r27]
	nop 0
	br .L954
	;;
.L955:
	.mib
	ld1 r14 = [r33]
	nop 0
	br .L956
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
	(p6) br.cond.dpnt .L958
	;;
	.align 32
.L959:
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
	(p6) br.cond.dptk .L959
	;;
.L958:
	.mmi
	cmp.eq p6, p7 = 0, r34
	nop 0
	adds r15 = -1, r34
	;;
	.mib
	nop 0
	(p7) mov ar.lc = r15
	(p6) br.cond.dpnt .L960
	.align 32
.L961:
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
	(p7) br.cond.dpnt .L963
	br.cloop.sptk.few .L961
.L960:
	.mmi
	st1 [r14] = r0
	nop 0
	nop 0
	;;
.L963:
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
	(p6) br.cond.dpnt .L982
.L974:
	.mii
	ld1 r14 = [r32]
	adds r32 = 1, r32
	;;
	sxt1 r14 = r14
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dpnt .L983
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L983:
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L974
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L982:
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
	(p7) br.cond.dpnt .L989
.L985:
	.mmi
	mov r15 = r33
	nop 0
	nop 0
	;;
	.align 32
.L988:
	.mii
	ld1 r14 = [r15]
	adds r15 = 1, r15
	;;
	sxt1 r14 = r14
	;;
	.mib
	cmp4.ne p6, p7 = 0, r14
	nop 0
	(p7) br.cond.dpnt .L995
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r16, r14
	(p7) br.cond.dptk .L988
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L995:
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
	(p7) br.cond.dptk .L985
.L989:
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
.L998:
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
	(p6) br.cond.dptk .L998
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
	(p6) br.cond.dpnt .L1012
	.align 32
.L1004:
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
	(p6) br.cond.dptk .L1004
	;;
	.mmi
	sub r20 = r16, r33
	nop 0
	cmp.eq p6, p7 = r33, r16
	.mib
	nop 0
	zxt1 r21 = r19
	(p6) br.cond.dpnt .L1012
	;;
	.mib
	nop 0
	(p7) add r20 = r33, r20
	br .L1019
.L1010:
	.mib
	nop 0
	nop 0
	br .L1019
.L1019:
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
	(p6) br.cond.dpnt .L1009
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p6) br.cond.dptk .L1010
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
.L1009:
	.mii
	mov r14 = r33
	mov r16 = r21
	;;
	mov r17 = r14
	.align 32
.L1006:
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
	(p7) br.cond.dpnt .L1007
	;;
	.mmi
	nop 0
	mov r17 = r14
	chk.s r15, .L1021
.L1022:
	.mmi
	nop 0
	mov r16 = r15
	adds r32 = 1, r32
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r15
	(p6) br.cond.dptk .L1006
	;;
	.mmi
	mov r17 = r14
	nop 0
	nop 0
	;;
.L1007:
	.mmi
	ld1 r14 = [r17]
	nop 0
	adds r32 = 1, r8
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = r16, r14
	(p7) br.cond.dptk .L1010
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1012:
	.mib
	nop 0
	mov r8 = r32
	br.ret.sptk.many b0
.L1021:
	.mib
	ld1 r15 = [r32]
	nop 0
	br .L1022
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
	fcmp.lt p6, p7 = f8, f0
	nop 0
	.mfi
	nop 0
	fneg f6 = f8
	nop 0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1035
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L1027
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1036
.L1027:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L1035:
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dptk .L1027
.L1036:
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
	sub r20 = r33, r35
	.mmi
	ld1.s r19 = [r34]
	adds r21 = -1, r35
	adds r22 = 1, r34
	;;
	.mmb
	(p6) mov r8 = r32
	cmp.eq p8, p9 = 1, r35
	nop 0
	.mib
	add r20 = r32, r20
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	(p6) br.cond.dpnt .L1037
	;;
	.mib
	cmp.gtu p6, p7 = r35, r33
	nop 0
	(p6) br.cond.dpnt .L1048
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r20, r32
	(p6) br.cond.dpnt .L1048
	;;
	.mmi
	chk.s r19, .L1065
	nop 0
	nop 0
.L1066:
	.pred.rel.mutex p8, p9
	.mii
	nop 0
	sxt1 r19 = r19
	nop 0
	.align 32
.L1043:
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
	cmp4.ne p6, p7 = r19, r14
	sub r16 = r16, r18, 1
	mov r14 = r18
	;;
	.mib
	(p6) mov r8 = r18
	mov ar.lc = r16
	(p7) br.cond.dpnt .L1055
	;;
.L1039:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	cmp.leu p6, p7 = r8, r20
	(p6) br.cond.dptk .L1043
.L1048:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L1037:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1055:
	.pred.rel.mutex p8, p9
	.mbb
	nop 0
	(p8) br.cond.dpnt .L1037
	br .L1058
.L1040:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	nop 0
	br .L1057
.L1058:
	.pred.rel.mutex p8, p9
	.mmi
	ld1.s r17 = [r14]
	ld1.s r16 = [r15]
	nop 0
	;;
	.align 32
.L1057:
	.pred.rel.mutex p8, p9
	.mmi
	chk.s r17, .L1059
	nop 0
	nop 0
.L1060:
	.pred.rel.mutex p8, p9
	.mmi
	nop 0
	adds r14 = 1, r14
	chk.s r16, .L1061
.L1062:
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
	(p7) br.cond.dpnt .L1056
	br.cloop.sptk.few .L1040
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1056:
	.pred.rel.mutex p8, p9
	.mmi
	nop 0
	ld1.s r14 = [r18]
	adds r8 = 1, r18
	.mmb
	cmp.gtu p6, p7 = r18, r20
	mov r15 = r22
	(p6) br.cond.dpnt .L1048
	;;
	.mmi
	add r16 = r8, r21
	;;
	sub r16 = r16, r8, 1
	chk.s r14, .L1063
.L1064:
	.pred.rel.mutex p8, p9
	.mii
	nop 0
	sxt1 r14 = r14
	nop 0
	;;
	.mmb
	cmp4.ne p6, p7 = r19, r14
	mov r14 = r18
	nop 0
	.mib
	mov r18 = r8
	mov ar.lc = r16
	(p6) br.cond.dptk .L1039
	;;
	.mmi
	ld1.s r17 = [r18]
	ld1.s r16 = [r15]
	mov r8 = r14
	.mmb
	nop 0
	mov r14 = r18
	br .L1040
	;;
.L1059:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r17 = [r14]
	nop 0
	br .L1060
.L1061:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r16 = [r15]
	nop 0
	br .L1062
.L1063:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r14 = [r18]
	nop 0
	br .L1064
.L1065:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r19 = [r34]
	nop 0
	br .L1066
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
	(p6) br.cond.dpnt .L1068
	br.call.sptk.many b0 = memmove#
	;;
	.mmi
	mov r1 = r37
	nop 0
	nop 0
.L1068:
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
	.mlx
	nop 0
	movl r14 = 0xbff0000000000000
	.mmf
	nop 0
	nop 0
	fneg f7 = f8
	;;
	.mlx
	setf.d f6 = r14
	movl r14 = 0x3fe0000000000000
	.mlx
	nop 0
	movl r16 = 0xbfe0000000000000
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1099
	;;
	.mfi
	nop 0
	fcmp.ge p6, p7 = f8, f1
	nop 0
	.mfi
	setf.d f6 = r14
	mov f7 = f8
	mov r14 = r0
	;;
	.mlx
	nop 0
	movl r16 = 0x3fe0000000000000
	;;
	.mib
	nop 0
	(p6) mov r15 = r0
	(p7) br.cond.dpnt .L1100
.L1077:
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
.L1083:
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
	(p6) br.cond.dptk .L1083
.L1084:
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
.L1100:
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f6
	.mmi
	mov r15 = r0
	setf.d f6 = r16
	nop 0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dptk .L1080
	;;
	.mmf
	nop 0
	nop 0
	fcmp.neq p6, p7 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1089
.L1080:
	.mib
	st4 [r33] = r0
	nop 0
	br.ret.sptk.many b0
.L1099:
	.mfi
	nop 0
	fcmp.le p6, p7 = f8, f6
	nop 0
	.mlx
	setf.d f6 = r16
	movl r16 = 0x3fe0000000000000
	;;
	.mmi
	nop 0
	mov r14 = r0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	(p6) mov f8 = f7
	.mmb
	(p6) addl r15 = 1, r0
	nop 0
	(p6) br.cond.dptk .L1077
	;;
	.mmi
	nop 0
	addl r15 = 1, r0
	nop 0
	;;
	.mfi
	nop 0
	fcmp.gt p6, p7 = f8, f6
	nop 0
	.mmi
	setf.d f6 = r16
	nop 0
	nop 0
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dptk .L1080
	;;
	.mmf
	nop 0
	nop 0
	mov f8 = f7
	;;
	.align 32
.L1101:
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
	(p7) br.cond.dpnt .L1084
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
	(p6) br.cond.dptk .L1101
	.mib
	nop 0
	nop 0
	br .L1084
.L1089:
	.mfb
	nop 0
	mov f8 = f7
	br .L1101
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
	(p6) br.cond.dpnt .L1102
	.mii
	nop 0
	extr r14 = r32, 0, 1
	shr.u r32 = r32, 1
	;;
	.align 32
.L1104:
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
	(p6) br.cond.dptk .L1104
.L1102:
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
	(p7) br.cond.dpnt .L1111
	;;
	.align 32
.L1110:
	.mib
	cmp4.le p6, p7 = r0, r33
	nop 0
	(p7) br.cond.dpnt .L1111
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
	(p7) br.cond.dptk .L1110
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1114
	;;
.L1111:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1116:
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
	(p6) br.cond.dptk .L1116
	;;
.L1114:
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
	.mmi
	addl r16 = 65566, r0
	;;
	xor r32 = r32, r14
	cmp4.eq p6, p7 = r15, r14
	;;
	.mii
	nop 0
	sxt1 r32 = r32
	(p6) addl r8 = 7, r0
	;;
	.mii
	nop 0
	(p7) dep.z r32 = r32, 8, 24
	;;
	(p7) addp4 r32 = r32, r0
	;;
	.mmi
	nop 0
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
	(p7) sub r8 = r16, r8, 1
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
	addl r16 = 65598, r0
	;;
	.mmi
	xor r14 = r15, r32
	nop 0
	cmp.eq p6, p7 = r15, r32
	;;
	.mmi
	(p7) setf.sig f7 = r14
	nop 0
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
	(p7) sub r8 = r16, r8, 1
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
	(p6) br.cond.dpnt .L1133
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.align 32
.L1135:
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
	(p6) br.cond.dptk .L1135
.L1133:
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
	.prologue 1, 2
	.mmi
	and r17 = -8, r34
	nop 0
	extr.u r14 = r34, 3, 29
	.mmi
	addp4 r15 = r34, r0
	nop 0
	adds r18 = -1, r34
	;;
	.mmi
	addp4 r16 = r14, r0
	add r15 = r33, r15
	.save pr, r2
	mov r2 = pr
	.mmi
	nop 0
	cmp.leu p6, p7 = r33, r32
	nop 0
	;;
	.mib
	shladd r16 = r16, 3, r0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	(p7) br.cond.dptk .L1234
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r15, r32
	(p7) br.cond.dptk .L1225
	;;
.L1234:
	.mmi
	adds r16 = -8, r16
	mov r15 = r32
	nop 0
	.mmb
	cmp4.ne p6, p7 = 0, r14
	mov r14 = r33
	(p7) br.cond.dpnt .L1226
	;;
	.mii
	nop 0
	shr.u r16 = r16, 3
	;;
	mov ar.lc = r16
	.mmb
	nop 0
	cmp.lt p6, p7 = 2, r16
	(p7) br.cond.dptk .L1207
	.mmi
	adds r16 = -1, r16
	adds r14 = 8, r33
	nop 0
	.mii
	adds r15 = 8, r15
	nop 0
	;;
	mov ar.lc = r16
	.mmi
	ld8 r16 = [r33]
	;;
	st8 [r32] = r16
	nop 0
	.align 32
.L1147:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1147
.L1208:
	.mmi
	sub r16 = r34, r17, 1
	addp4 r19 = r17, r0
	nop 0
	.mmb
	sub r18 = r34, r17
	cmp4.geu p6, p7 = r17, r34
	(p6) br.cond.dpnt .L1140
	;;
	.mmi
	add r15 = r32, r19
	add r14 = r33, r19
	nop 0
	.mmb
	add r20 = r33, r19, 1
	cmp4.geu p6, p7 = 7, r16
	(p6) br.cond.dpnt .L1149
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
	.mmi
	(p6) addl r20 = 1, r0
	nop 0
	adds r16 = -8, r16
	;;
	.mmi
	(p7) mov r20 = r0
	cmp.eq p6, p7 = 0, r21
	shr.u r16 = r16, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	(p6) addl r21 = 1, r0
	;;
	.mmi
	(p7) mov r21 = r0
	;;
	and r20 = r21, r20
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = 0, r20
	mov r20 = ar.lc
	(p6) br.cond.dpnt .L1149
	;;
	.mii
	nop 0
	mov r19 = ar.lc
	;;
	cmp.lt p6, p7 = 2, r20
	;;
	.mib
	nop 0
	adds r19 = -1, r19
	(p7) br.cond.dptk .L1209
	;;
	.mmi
	ld8 r16 = [r14]
	adds r14 = 8, r14
	mov ar.lc = r19
	;;
	.mmi
	nop 0
	st8 [r15] = r16
	adds r15 = 8, r15
	.align 32
.L1150:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1150
	.mmi
	and r14 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mib
	add r17 = r17, r14
	cmp4.eq p6, p7 = 0, r18
	(p6) br.cond.dpnt .L1140
	;;
.L1227:
	.mmi
	addp4 r14 = r17, r0
	adds r25 = 1, r17
	adds r24 = 2, r17
	.mmi
	adds r23 = 3, r17
	adds r22 = 4, r17
	adds r21 = 5, r17
	;;
	.mmi
	add r26 = r33, r14
	addp4 r15 = r25, r0
	addp4 r16 = r24, r0
	.mmi
	addp4 r18 = r23, r0
	addp4 r19 = r22, r0
	addp4 r20 = r21, r0
	;;
	.mmi
	adds r17 = 6, r17
	add r14 = r32, r14
	cmp4.leu p6, p7 = r34, r25
	.mmi
	cmp4.geu p8, p9 = r24, r34
	cmp4.geu p10, p11 = r23, r34
	add r23 = r33, r16
	;;
	.mmi
	add r16 = r32, r16
	add r24 = r33, r18
	add r18 = r32, r18
	.mmi
	cmp4.geu p12, p13 = r22, r34
	add r22 = r33, r15
	add r15 = r32, r15
	;;
	.mmi
	add r25 = r33, r19
	add r19 = r32, r19
	cmp4.geu p14, p15 = r21, r34
	.mmi
	ld1 r21 = [r26]
	add r27 = r33, r20
	add r20 = r32, r20
	;;
	.mmi
	cmp4.geu p16, p17 = r17, r34
	nop 0
	addp4 r17 = r17, r0
	.mmb
	st1 [r14] = r21
	nop 0
	(p6) br.cond.dpnt .L1140
	;;
	.mmi
	ld1 r14 = [r22]
	add r33 = r33, r17
	add r32 = r32, r17
	;;
	.mib
	st1 [r15] = r14
	nop 0
	(p8) br.cond.dpnt .L1140
	;;
	.mmi
	nop 0
	ld1 r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r16] = r14
	nop 0
	(p10) br.cond.dpnt .L1140
.L1221:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	nop 0
	ld1 r14 = [r24]
	nop 0
	;;
	.mib
	st1 [r18] = r14
	nop 0
	(p12) br.cond.dpnt .L1140
	;;
	.mmi
	nop 0
	ld1 r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p14) br.cond.dpnt .L1140
	;;
	.mmi
	nop 0
	ld1 r14 = [r27]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p16) br.cond.dpnt .L1140
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
.L1140:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1207:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1207
	.mib
	nop 0
	nop 0
	br .L1208
.L1209:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1209
	.mmi
	and r14 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mmi
	nop 0
	add r17 = r17, r14
	cmp4.eq p6, p7 = 0, r18
	.bbb
	nop 0
	(p7) br.cond.dptk .L1227
	br .L1140
	;;
.L1225:
	.mib
	addp4 r19 = r18, r0
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L1140
	;;
	.mmi
	adds r15 = -7, r19
	adds r20 = -1, r19
	nop 0
	.mmb
	add r17 = r32, r19
	cmp4.geu p6, p7 = 8, r18
	(p6) br.cond.dpnt .L1235
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
	cmp4.eq p6, p7 = 0, r17
	adds r17 = -1, r14
	(p6) br.cond.dpnt .L1154
	;;
	.mii
	addp4 r17 = r17, r0
	cmp4.eq p6, p7 = 0, r14
	;;
	(p7) mov ar.lc = r17
	;;
	.mii
	nop 0
	(p6) mov ar.lc = 0
	;;
	mov r17 = ar.lc
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r17
	(p7) br.cond.dptk .L1212
	.mmi
	adds r17 = -1, r17
	;;
	nop 0
	mov ar.lc = r17
	.mmi
	ld8 r17 = [r15]
	nop 0
	adds r15 = -8, r15
	;;
	.mmi
	nop 0
	st8 [r16] = r17
	adds r16 = -8, r16
	.align 32
.L1155:
	.mmi
	ld8 r17 = [r15]
	nop 0
	adds r15 = -8, r15
	;;
	.mib
	st8 [r16] = r17
	adds r16 = -8, r16
	br.cloop.sptk.few .L1155
	;;
.L1213:
	.mmi
	shladd r14 = r14, 3, r0
	nop 0
	mov ar.lc = r3
	;;
	.mib
	sub r18 = r18, r14
	cmp4.eq p6, p7 = r14, r34
	(p6) br.cond.dpnt .L1140
	;;
	.mmi
	addp4 r14 = r18, r0
	adds r25 = -1, r18
	adds r24 = -2, r18
	.mmi
	adds r23 = -3, r18
	adds r22 = -4, r18
	adds r21 = -5, r18
	;;
	.mmi
	add r26 = r33, r14
	cmp4.eq p6, p7 = 0, r18
	addp4 r16 = r25, r0
	.mmi
	addp4 r17 = r24, r0
	addp4 r19 = r22, r0
	addp4 r20 = r21, r0
	;;
	.mmi
	adds r15 = -6, r18
	addp4 r18 = r23, r0
	add r14 = r32, r14
	.mmi
	cmp4.eq p8, p9 = 0, r25
	cmp4.eq p10, p11 = 0, r24
	cmp4.eq p12, p13 = 0, r23
	;;
	.mmi
	addp4 r15 = r15, r0
	add r23 = r33, r17
	add r17 = r32, r17
	.mmi
	add r24 = r33, r18
	add r18 = r32, r18
	add r25 = r33, r19
	;;
	.mmi
	add r19 = r32, r19
	cmp4.eq p14, p15 = 0, r22
	add r22 = r33, r16
	.mmi
	add r16 = r32, r16
	add r27 = r33, r20
	add r20 = r32, r20
	;;
	.mmi
	cmp4.eq p16, p17 = 0, r21
	ld1 r21 = [r26]
	add r33 = r33, r15
	.mmi
	nop 0
	add r32 = r32, r15
	nop 0
	;;
	.mib
	st1 [r14] = r21
	nop 0
	(p6) br.cond.dpnt .L1140
	;;
	.mmi
	nop 0
	ld1 r14 = [r22]
	nop 0
	;;
	.mib
	st1 [r16] = r14
	nop 0
	(p8) br.cond.dpnt .L1140
	;;
	.mmi
	nop 0
	ld1 r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r17] = r14
	nop 0
	(p11) br.cond.dptk .L1221
	;;
	.mib
	nop 0
	mov pr = r2, -1
	br.ret.sptk.many b0
.L1212:
	.mmi
	ld8 r17 = [r15]
	nop 0
	adds r15 = -8, r15
	;;
	.mib
	st8 [r16] = r17
	adds r16 = -8, r16
	br.cloop.sptk.few .L1212
	.mib
	nop 0
	nop 0
	br .L1213
.L1226:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) addp4 r19 = r17, r0
	(p7) br.cond.dpnt .L1140
	;;
.L1149:
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
	add r14 = r14, r17
	;;
	sub r14 = r14, r33, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r14
	;;
	mov r15 = ar.lc
	;;
	.mii
	nop 0
	mov r16 = ar.lc
	;;
	adds r15 = -1, r15
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r16
	(p7) br.cond.dptk .L1211
	.mmi
	ld1 r14 = [r33]
	adds r33 = 1, r33
	mov ar.lc = r15
	;;
	.mmi
	nop 0
	st1 [r32] = r14
	adds r32 = 1, r32
	.align 32
.L1152:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1152
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1211:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1211
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1154:
	.mmi
	add r17 = r32, r19
	nop 0
	nop 0
	;;
.L1235:
	.mii
	nop 0
	mov ar.lc = r19
	add r33 = r33, r19
	.mmi
	mov r32 = r17
	;;
	nop 0
	mov r14 = ar.lc
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r14
	(p7) br.cond.dptk .L1214
	.mmi
	adds r14 = -1, r14
	;;
	nop 0
	mov ar.lc = r14
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mmi
	nop 0
	st1 [r32] = r14
	adds r32 = -1, r32
	.align 32
.L1158:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1158
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1214:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1214
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
	.endp __cmovd#
	.align 16
	.align 64
	.global __cmovh#
	.type	__cmovh#, @function
	.proc __cmovh#
__cmovh:
	.prologue 1, 2
	.mii
	nop 0
	extr.u r17 = r34, 1, 31
	nop 0
	;;
	.mii
	nop 0
	.save pr, r2
	mov r2 = pr
	cmp.leu p6, p7 = r33, r32
	;;
	.mib
	nop 0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	(p7) br.cond.dptk .L1240
	.mmi
	addp4 r14 = r34, r0
	;;
	add r14 = r33, r14
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r14, r32
	(p7) br.cond.dptk .L1298
	;;
.L1240:
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r17
	(p7) br.cond.dpnt .L1239
	.mmi
	nop 0
	adds r14 = -1, r17
	nop 0
	;;
	.mib
	nop 0
	cmp4.geu p6, p7 = 6, r14
	(p6) br.cond.dpnt .L1243
	.mmi
	or r15 = r32, r33
	nop 0
	adds r14 = 2, r33
	;;
	.mii
	and r15 = 7, r15
	sub r14 = r32, r14
	;;
	cmp.eq p6, p7 = 0, r15
	.mmi
	cmp.ltu p8, p9 = 4, r14
	;;
	(p8) addl r15 = 1, r0
	(p6) addl r14 = 1, r0
	;;
	.mii
	(p9) mov r15 = r0
	(p7) mov r14 = r0
	;;
	and r14 = r15, r14
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1243
	.mii
	nop 0
	extr.u r16 = r34, 3, 29
	mov r15 = r32
	.mmi
	mov r14 = r33
	;;
	mov r18 = r16
	shladd r16 = r16, 3, r0
	;;
	.mmi
	adds r16 = -8, r16
	;;
	nop 0
	shr.u r16 = r16, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p6, p7 = 2, r16
	nop 0
	(p7) br.cond.dptk .L1290
	.mmi
	adds r16 = -1, r16
	adds r14 = 8, r33
	nop 0
	.mii
	adds r15 = 8, r15
	nop 0
	;;
	mov ar.lc = r16
	.mmi
	ld8 r16 = [r33]
	;;
	st8 [r32] = r16
	nop 0
	.align 32
.L1244:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1244
	.mmi
	shladd r18 = r18, 2, r0
	;;
	addp4 r15 = r18, r0
	adds r20 = 1, r18
	.mmb
	adds r19 = 2, r18
	cmp4.eq p6, p7 = r18, r17
	(p6) br.cond.dpnt .L1239
	;;
.L1299:
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
	(p6) br.cond.dpnt .L1239
	;;
	.mmi
	nop 0
	ld2 r14 = [r18]
	nop 0
	;;
	.mib
	st2 [r15] = r14
	nop 0
	(p8) br.cond.dpnt .L1239
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
.L1239:
	.mib
	adds r14 = -1, r34
	tbit.z p6, p7 = r34, 0
	(p6) br.cond.dptk .L1236
	;;
.L1300:
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
.L1236:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1290:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1290
	.mmi
	shladd r18 = r18, 2, r0
	;;
	addp4 r15 = r18, r0
	adds r20 = 1, r18
	.mmb
	adds r19 = 2, r18
	cmp4.eq p6, p7 = r18, r17
	(p7) br.cond.dptk .L1299
	;;
	.mib
	nop 0
	nop 0
	br .L1239
.L1298:
	.mib
	adds r17 = -1, r34
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L1236
	;;
	.mib
	addp4 r18 = r17, r0
	cmp4.geu p6, p7 = 8, r17
	(p6) br.cond.dpnt .L1249
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
	(p6) br.cond.dpnt .L1249
	.mii
	nop 0
	extr.u r16 = r34, 3, 29
	;;
	shladd r16 = r16, 3, r0
	;;
	.mmi
	adds r16 = -8, r16
	;;
	nop 0
	shr.u r16 = r16, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p6, p7 = 2, r16
	nop 0
	(p7) br.cond.dptk .L1293
	.mmi
	adds r16 = -1, r16
	;;
	nop 0
	mov ar.lc = r16
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mmi
	nop 0
	st8 [r15] = r16
	adds r15 = -8, r15
	.align 32
.L1250:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1250
.L1294:
	.mmi
	and r14 = -8, r34
	nop 0
	and r34 = 7, r34
	;;
	.mib
	sub r14 = r17, r14
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L1236
	;;
	.mmi
	addp4 r15 = r14, r0
	adds r25 = -1, r14
	adds r24 = -2, r14
	.mmi
	adds r23 = -3, r14
	adds r22 = -4, r14
	adds r21 = -5, r14
	;;
	.mmi
	add r26 = r33, r15
	addp4 r16 = r25, r0
	addp4 r17 = r24, r0
	.mmi
	addp4 r18 = r23, r0
	addp4 r19 = r22, r0
	addp4 r20 = r21, r0
	;;
	.mmi
	add r15 = r32, r15
	cmp4.eq p6, p7 = 0, r14
	cmp4.eq p8, p9 = 0, r25
	.mmi
	cmp4.eq p10, p11 = 0, r24
	add r24 = r33, r18
	add r18 = r32, r18
	;;
	.mmi
	cmp4.eq p12, p13 = 0, r23
	add r23 = r33, r17
	add r17 = r32, r17
	.mmi
	add r25 = r33, r19
	add r19 = r32, r19
	cmp4.eq p14, p15 = 0, r22
	;;
	.mmi
	add r22 = r33, r16
	add r16 = r32, r16
	add r27 = r33, r20
	.mmi
	add r20 = r32, r20
	adds r14 = -6, r14
	cmp4.eq p16, p17 = 0, r21
	;;
	.mmi
	addp4 r14 = r14, r0
	ld1 r21 = [r26]
	nop 0
	;;
	.mmi
	nop 0
	add r33 = r33, r14
	add r32 = r32, r14
	.mmb
	ld1.sa r14 = [r23]
	st1 [r15] = r21
	(p6) br.cond.dpnt .L1236
	;;
	.mmi
	ld1 r15 = [r22]
	nop 0
	mov ar.lc = r3
	;;
	.mib
	st1 [r16] = r15
	nop 0
	(p8) br.cond.dpnt .L1236
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r17] = r14
	nop 0
	(p10) br.cond.dpnt .L1236
	;;
	.mmi
	nop 0
	ld1 r14 = [r24]
	nop 0
	;;
	.mib
	st1 [r18] = r14
	nop 0
	(p12) br.cond.dpnt .L1236
	;;
	.mmi
	nop 0
	ld1 r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p14) br.cond.dpnt .L1236
	;;
	.mmi
	nop 0
	ld1 r14 = [r27]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p16) br.cond.dpnt .L1236
	;;
	.mmi
	ld1 r14 = [r33]
	nop 0
	mov pr = r2, -1
	;;
	.mib
	st1 [r32] = r14
	nop 0
	br.ret.sptk.many b0
.L1293:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1293
	.mib
	nop 0
	nop 0
	br .L1294
	;;
.L1243:
	.mmi
	addp4 r14 = r17, r0
	mov r15 = r33
	mov r16 = r32
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
	.mmb
	nop 0
	cmp.lt p6, p7 = 2, r14
	(p7) br.cond.dptk .L1292
	.mmi
	adds r14 = -1, r14
	adds r15 = 2, r33
	nop 0
	.mii
	adds r16 = 2, r16
	nop 0
	;;
	mov ar.lc = r14
	.mmi
	ld2 r14 = [r33]
	;;
	st2 [r32] = r14
	nop 0
	.align 32
.L1246:
	.mmi
	ld2 r14 = [r15]
	nop 0
	adds r15 = 2, r15
	;;
	.mib
	st2 [r16] = r14
	adds r16 = 2, r16
	br.cloop.sptk.few .L1246
	.mmi
	nop 0
	adds r14 = -1, r34
	tbit.z p6, p7 = r34, 0
	.bbb
	nop 0
	(p6) br.cond.dptk .L1236
	br .L1300
	;;
.L1292:
	.mmi
	ld2 r14 = [r15]
	nop 0
	adds r15 = 2, r15
	;;
	.mib
	st2 [r16] = r14
	adds r16 = 2, r16
	br.cloop.sptk.few .L1292
	.mmi
	nop 0
	adds r14 = -1, r34
	tbit.z p6, p7 = r34, 0
	.bbb
	nop 0
	(p6) br.cond.dptk .L1236
	br .L1300
	;;
.L1249:
	.mii
	nop 0
	mov ar.lc = r18
	add r33 = r33, r18
	.mmi
	add r32 = r32, r18
	;;
	nop 0
	mov r14 = ar.lc
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r14
	(p7) br.cond.dptk .L1295
	.mmi
	adds r14 = -1, r14
	;;
	nop 0
	mov ar.lc = r14
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mmi
	nop 0
	st1 [r32] = r14
	adds r32 = -1, r32
	.align 32
.L1252:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1252
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1295:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1295
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
	.endp __cmovh#
	.align 16
	.align 64
	.global __cmovw#
	.type	__cmovw#, @function
	.proc __cmovw#
__cmovw:
	.prologue 1, 2
	.mii
	nop 0
	extr.u r18 = r34, 2, 30
	and r16 = -4, r34
	;;
	.mii
	nop 0
	.save pr, r2
	mov r2 = pr
	cmp.leu p6, p7 = r33, r32
	;;
	.mib
	nop 0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	(p7) br.cond.dptk .L1310
	.mmi
	addp4 r14 = r34, r0
	;;
	add r14 = r33, r14
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = r14, r32
	(p7) br.cond.dptk .L1395
	;;
.L1310:
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r18
	(p7) br.cond.dpnt .L1396
	.mmi
	nop 0
	adds r14 = -1, r18
	nop 0
	;;
	.mib
	nop 0
	cmp4.geu p6, p7 = 8, r14
	(p6) br.cond.dpnt .L1312
	.mmi
	or r14 = r33, r32
	nop 0
	adds r15 = 4, r33
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
	(p6) br.cond.dpnt .L1312
	.mii
	nop 0
	extr.u r17 = r34, 3, 29
	mov r15 = r32
	.mmi
	mov r14 = r33
	;;
	mov r19 = r17
	shladd r17 = r17, 3, r0
	;;
	.mmi
	adds r17 = -8, r17
	;;
	nop 0
	shr.u r17 = r17, 3
	;;
	.mii
	nop 0
	mov ar.lc = r17
	nop 0
	.mmb
	cmp.lt p6, p7 = 2, r17
	nop 0
	(p7) br.cond.dptk .L1374
	.mmi
	adds r17 = -1, r17
	adds r14 = 8, r33
	nop 0
	.mii
	adds r15 = 8, r15
	nop 0
	;;
	mov ar.lc = r17
	.mmi
	ld8 r17 = [r33]
	;;
	st8 [r32] = r17
	nop 0
	.align 32
.L1313:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1313
	.mmi
	nop 0
	shladd r19 = r19, 1, r0
	nop 0
	;;
	.mib
	addp4 r15 = r19, r0
	cmp4.eq p6, p7 = r19, r18
	(p6) br.cond.dpnt .L1316
	;;
.L1397:
	.mmi
	shladd r14 = r15, 2, r0
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
.L1316:
	.mmi
	sub r17 = r34, r16, 1
	addp4 r19 = r16, r0
	nop 0
	.mmb
	sub r18 = r34, r16
	cmp4.geu p6, p7 = r16, r34
	(p6) br.cond.dpnt .L1305
	;;
	.mmi
	add r15 = r32, r19
	add r14 = r33, r19
	nop 0
	.mmb
	add r20 = r33, r19, 1
	cmp4.geu p6, p7 = 7, r17
	(p6) br.cond.dpnt .L1308
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
	.mmi
	(p6) addl r20 = 1, r0
	nop 0
	adds r17 = -8, r17
	;;
	.mmi
	(p7) mov r20 = r0
	cmp.eq p6, p7 = 0, r21
	shr.u r17 = r17, 3
	;;
	.mii
	nop 0
	mov ar.lc = r17
	(p6) addl r21 = 1, r0
	;;
	.mmi
	(p7) mov r21 = r0
	;;
	and r20 = r21, r20
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = 0, r20
	mov r20 = ar.lc
	(p6) br.cond.dpnt .L1308
	;;
	.mii
	nop 0
	mov r19 = ar.lc
	;;
	cmp.lt p6, p7 = 2, r20
	;;
	.mib
	nop 0
	adds r19 = -1, r19
	(p7) br.cond.dptk .L1377
	;;
	.mmi
	ld8 r17 = [r14]
	adds r14 = 8, r14
	mov ar.lc = r19
	;;
	.mmi
	nop 0
	st8 [r15] = r17
	adds r15 = 8, r15
	.align 32
.L1317:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1317
	.mmi
	and r14 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mib
	add r16 = r16, r14
	cmp4.eq p6, p7 = 0, r18
	(p6) br.cond.dpnt .L1305
	;;
.L1398:
	.mmi
	addp4 r14 = r16, r0
	adds r25 = 1, r16
	adds r24 = 2, r16
	.mmi
	adds r23 = 3, r16
	adds r22 = 4, r16
	adds r21 = 5, r16
	;;
	.mmi
	add r26 = r33, r14
	addp4 r15 = r25, r0
	addp4 r17 = r24, r0
	.mmi
	addp4 r18 = r23, r0
	addp4 r19 = r22, r0
	addp4 r20 = r21, r0
	;;
	.mmi
	adds r16 = 6, r16
	add r14 = r32, r14
	cmp4.geu p6, p7 = r25, r34
	.mmi
	cmp4.leu p8, p9 = r34, r24
	cmp4.geu p10, p11 = r23, r34
	add r23 = r33, r17
	;;
	.mmi
	add r17 = r32, r17
	add r24 = r33, r18
	add r18 = r32, r18
	.mmi
	cmp4.geu p12, p13 = r22, r34
	add r22 = r33, r15
	add r15 = r32, r15
	;;
	.mmi
	add r25 = r33, r19
	add r19 = r32, r19
	cmp4.geu p14, p15 = r21, r34
	.mmi
	ld1 r21 = [r26]
	add r27 = r33, r20
	add r20 = r32, r20
	;;
	.mmi
	cmp4.geu p16, p17 = r16, r34
	nop 0
	addp4 r16 = r16, r0
	.mmb
	st1 [r14] = r21
	nop 0
	(p6) br.cond.dpnt .L1305
	;;
	.mmi
	ld1 r14 = [r22]
	add r33 = r33, r16
	add r32 = r32, r16
	;;
	.mib
	st1 [r15] = r14
	nop 0
	(p8) br.cond.dpnt .L1305
.L1391:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	nop 0
	ld1 r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r17] = r14
	nop 0
	(p10) br.cond.dpnt .L1305
	;;
	.mmi
	nop 0
	ld1 r14 = [r24]
	nop 0
	;;
	.mib
	st1 [r18] = r14
	nop 0
	(p12) br.cond.dpnt .L1305
	;;
	.mmi
	nop 0
	ld1 r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p14) br.cond.dpnt .L1305
	;;
	.mmi
	nop 0
	ld1 r14 = [r27]
	nop 0
	;;
	.mib
	st1 [r20] = r14
	nop 0
	(p16) br.cond.dpnt .L1305
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
.L1305:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1374:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1374
	.mmi
	shladd r19 = r19, 1, r0
	;;
	addp4 r15 = r19, r0
	cmp4.eq p6, p7 = r19, r18
	.bbb
	nop 0
	(p7) br.cond.dptk .L1397
	br .L1316
.L1377:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1377
	.mmi
	and r14 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mmi
	nop 0
	add r16 = r16, r14
	cmp4.eq p6, p7 = 0, r18
	.bbb
	nop 0
	(p7) br.cond.dptk .L1398
	br .L1305
	;;
.L1395:
	.mib
	adds r17 = -1, r34
	cmp4.ne p6, p7 = 0, r34
	(p7) br.cond.dpnt .L1305
	;;
	.mib
	addp4 r18 = r17, r0
	cmp4.geu p6, p7 = 8, r17
	(p6) br.cond.dpnt .L1321
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
	(p6) br.cond.dpnt .L1321
	.mii
	nop 0
	extr.u r16 = r34, 3, 29
	;;
	shladd r16 = r16, 3, r0
	;;
	.mmi
	adds r16 = -8, r16
	;;
	nop 0
	shr.u r16 = r16, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p6, p7 = 2, r16
	nop 0
	(p7) br.cond.dptk .L1380
	.mmi
	adds r16 = -1, r16
	;;
	nop 0
	mov ar.lc = r16
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mmi
	nop 0
	st8 [r15] = r16
	adds r15 = -8, r15
	.align 32
.L1322:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1322
	;;
.L1381:
	.mmi
	and r14 = -8, r34
	and r34 = 7, r34
	mov ar.lc = r3
	;;
	.mib
	sub r14 = r17, r14
	cmp4.eq p6, p7 = 0, r34
	(p6) br.cond.dpnt .L1305
	;;
	.mmi
	addp4 r15 = r14, r0
	adds r25 = -1, r14
	adds r24 = -2, r14
	.mmi
	adds r23 = -3, r14
	adds r22 = -4, r14
	adds r21 = -5, r14
	;;
	.mmi
	add r26 = r33, r15
	addp4 r16 = r25, r0
	addp4 r17 = r24, r0
	.mmi
	addp4 r18 = r23, r0
	addp4 r19 = r22, r0
	addp4 r20 = r21, r0
	;;
	.mmi
	add r15 = r32, r15
	cmp4.eq p6, p7 = 0, r14
	cmp4.eq p8, p9 = 0, r25
	.mmi
	cmp4.eq p10, p11 = 0, r24
	add r24 = r33, r18
	add r18 = r32, r18
	;;
	.mmi
	cmp4.eq p12, p13 = 0, r23
	add r23 = r33, r17
	add r17 = r32, r17
	.mmi
	add r25 = r33, r19
	add r19 = r32, r19
	cmp4.eq p14, p15 = 0, r22
	;;
	.mmi
	add r22 = r33, r16
	add r16 = r32, r16
	add r27 = r33, r20
	.mmi
	add r20 = r32, r20
	adds r14 = -6, r14
	cmp4.eq p16, p17 = 0, r21
	;;
	.mmi
	addp4 r14 = r14, r0
	ld1 r21 = [r26]
	nop 0
	;;
	.mmi
	add r33 = r33, r14
	nop 0
	add r32 = r32, r14
	.mmb
	st1 [r15] = r21
	nop 0
	(p6) br.cond.dpnt .L1305
	;;
	.mmi
	nop 0
	ld1 r15 = [r22]
	nop 0
	;;
	.mib
	st1 [r16] = r15
	nop 0
	(p9) br.cond.dptk .L1391
	;;
	.mib
	nop 0
	mov pr = r2, -1
	br.ret.sptk.many b0
.L1380:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1380
	.mib
	nop 0
	nop 0
	br .L1381
.L1396:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p6) addp4 r19 = r16, r0
	(p7) br.cond.dpnt .L1305
	;;
.L1308:
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
	add r14 = r14, r16
	;;
	sub r14 = r14, r33, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r14
	;;
	mov r15 = ar.lc
	;;
	.mii
	nop 0
	mov r16 = ar.lc
	;;
	adds r15 = -1, r15
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r16
	(p7) br.cond.dptk .L1379
	.mmi
	ld1 r14 = [r33]
	adds r33 = 1, r33
	mov ar.lc = r15
	;;
	.mmi
	nop 0
	st1 [r32] = r14
	adds r32 = 1, r32
	.align 32
.L1319:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1319
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1379:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1379
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1312:
	.mmi
	addp4 r14 = r18, r0
	mov r15 = r33
	mov r17 = r32
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
	.mmb
	nop 0
	cmp.lt p6, p7 = 2, r14
	(p7) br.cond.dptk .L1376
	.mmi
	adds r14 = -1, r14
	adds r15 = 4, r33
	nop 0
	.mii
	adds r17 = 4, r17
	nop 0
	;;
	mov ar.lc = r14
	.mmi
	ld4 r14 = [r33]
	;;
	st4 [r32] = r14
	nop 0
	.align 32
.L1315:
	.mmi
	ld4 r14 = [r15]
	nop 0
	adds r15 = 4, r15
	;;
	.mib
	st4 [r17] = r14
	adds r17 = 4, r17
	br.cloop.sptk.few .L1315
	.mib
	nop 0
	nop 0
	br .L1316
.L1376:
	.mmi
	ld4 r14 = [r15]
	nop 0
	adds r15 = 4, r15
	;;
	.mib
	st4 [r17] = r14
	adds r17 = 4, r17
	br.cloop.sptk.few .L1376
	.mib
	nop 0
	nop 0
	br .L1316
	;;
.L1321:
	.mii
	nop 0
	mov ar.lc = r18
	add r33 = r33, r18
	.mmi
	add r32 = r32, r18
	;;
	nop 0
	mov r14 = ar.lc
	;;
	.mib
	nop 0
	cmp.lt p6, p7 = 2, r14
	(p7) br.cond.dptk .L1382
	.mmi
	adds r14 = -1, r14
	;;
	nop 0
	mov ar.lc = r14
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mmi
	nop 0
	st1 [r32] = r14
	adds r32 = -1, r32
	.align 32
.L1325:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1325
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1382:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1382
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
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
	zxt2 r14 = r32
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1417
	;;
	.mii
	nop 0
	shr.u r8 = r14, 14
	nop 0
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r8
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 13
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 12
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 3, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 11
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 4, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 10
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 5, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 9
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 6, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 8
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 7, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 7
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 8, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 6
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 9, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 5
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 10, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 4
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 11, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 3
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 12, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 2
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 13, r0
	(p6) br.cond.dpnt .L1417
	.mii
	nop 0
	shr.u r15 = r14, 1
	;;
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p6) addl r8 = 14, r0
	(p6) br.cond.dpnt .L1417
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mii
	(p6) addl r8 = 16, r0
	nop 0
	;;
	(p7) addl r8 = 15, r0
.L1417:
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
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 1
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 1, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 2
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 2, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 3
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 3, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 4
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 4, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 5
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 5, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 6
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 6, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 7
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 7, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 8
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 8, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 9
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 9, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 10
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 10, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 11
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 11, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 12
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 12, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 13
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 13, r0
	(p6) br.cond.dpnt .L1437
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 14
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 14, r0
	(p6) br.cond.dpnt .L1437
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
.L1437:
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
	.body
	.mii
	nop 0
	extr.u r8 = r32, 1, 1
	and r14 = 1, r32
	;;
	.mmi
	add r8 = r14, r8
	nop 0
	extr.u r27 = r32, 2, 1
	;;
	.mmi
	add r8 = r8, r27
	nop 0
	extr.u r26 = r32, 3, 1
	;;
	.mmi
	add r8 = r8, r26
	nop 0
	extr.u r25 = r32, 4, 1
	;;
	.mmi
	add r8 = r8, r25
	nop 0
	extr.u r24 = r32, 5, 1
	;;
	.mmi
	add r8 = r8, r24
	nop 0
	extr.u r23 = r32, 6, 1
	;;
	.mmi
	add r8 = r8, r23
	nop 0
	extr.u r22 = r32, 7, 1
	;;
	.mmi
	add r8 = r8, r22
	nop 0
	extr.u r21 = r32, 8, 1
	;;
	.mmi
	add r8 = r8, r21
	nop 0
	extr.u r20 = r32, 9, 1
	;;
	.mmi
	add r8 = r8, r20
	nop 0
	extr.u r19 = r32, 10, 1
	;;
	.mmi
	add r8 = r8, r19
	nop 0
	extr.u r18 = r32, 11, 1
	;;
	.mmi
	add r8 = r8, r18
	nop 0
	extr.u r17 = r32, 12, 1
	;;
	.mmi
	add r8 = r8, r17
	nop 0
	extr.u r16 = r32, 13, 1
	;;
	.mmi
	add r8 = r8, r16
	nop 0
	extr.u r15 = r32, 14, 1
	;;
	.mii
	add r8 = r8, r15
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
	extr.u r28 = r32, 1, 1
	and r14 = 1, r32
	;;
	.mmi
	add r14 = r14, r28
	nop 0
	extr.u r27 = r32, 2, 1
	;;
	.mmi
	add r14 = r14, r27
	nop 0
	extr.u r26 = r32, 3, 1
	;;
	.mmi
	add r14 = r14, r26
	nop 0
	extr.u r25 = r32, 4, 1
	;;
	.mmi
	add r14 = r14, r25
	nop 0
	extr.u r24 = r32, 5, 1
	;;
	.mmi
	add r14 = r14, r24
	nop 0
	extr.u r23 = r32, 6, 1
	;;
	.mmi
	add r14 = r14, r23
	nop 0
	extr.u r22 = r32, 7, 1
	;;
	.mmi
	add r14 = r14, r22
	nop 0
	extr.u r21 = r32, 8, 1
	;;
	.mmi
	add r14 = r14, r21
	nop 0
	extr.u r20 = r32, 9, 1
	;;
	.mmi
	add r14 = r14, r20
	nop 0
	extr.u r19 = r32, 10, 1
	;;
	.mmi
	add r14 = r14, r19
	nop 0
	extr.u r18 = r32, 11, 1
	;;
	.mmi
	add r14 = r14, r18
	nop 0
	extr.u r17 = r32, 12, 1
	;;
	.mmi
	add r14 = r14, r17
	nop 0
	extr.u r16 = r32, 13, 1
	;;
	.mmi
	add r14 = r14, r16
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
	(p6) br.cond.dpnt .L1469
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.align 32
.L1471:
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
	(p6) br.cond.dptk .L1471
.L1469:
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
	(p6) br.cond.dpnt .L1480
	;;
	.mib
	nop 0
	cmp4.eq p6, p7 = 0, r33
	(p6) br.cond.dpnt .L1480
	.mii
	nop 0
	extr r14 = r33, 0, 1
	nop 0
	;;
	.align 32
.L1478:
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
	(p6) br.cond.dptk .L1478
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1480:
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
	(p7) br.cond.dpnt .L1486
	;;
	.align 32
.L1485:
	.mib
	cmp4.le p6, p7 = r0, r33
	nop 0
	(p7) br.cond.dpnt .L1486
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
	(p7) br.cond.dptk .L1485
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1489
	;;
.L1486:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1491:
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
	(p6) br.cond.dptk .L1491
	;;
.L1489:
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
	(p6) br.cond.dpnt .L1500
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
.L1500:
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
	(p6) br.cond.dpnt .L1505
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
.L1505:
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
	(p7) br.cond.dpnt .L1516
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r33
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1514
	;;
.L1516:
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
.L1518:
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
	(p6) br.cond.dptk .L1518
	;;
	.mii
	cmp4.eq p6, p7 = 0, r17
	nop 0
	;;
	(p7) sub r8 = r0, r8
.L1514:
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
	(p7) br.cond.dpnt .L1530
	.align 32
.L1529:
	.mib
	cmp4.le p6, p7 = r0, r14
	nop 0
	(p7) br.cond.dpnt .L1530
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
	(p6) br.cond.dptk .L1529
	.mib
	nop 0
	(p9) mov r8 = r0
	(p9) br.cond.dpnt .L1531
	;;
.L1530:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1534:
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
	(p6) br.cond.dptk .L1534
	.mmi
	addp4 r8 = r8, r0
	nop 0
	nop 0
	;;
.L1531:
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
	(p7) br.cond.dpnt .L1564
	;;
	.align 32
.L1547:
	.mib
	cmp4.le p6, p7 = r0, r14
	nop 0
	(p7) br.cond.dpnt .L1564
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
	(p6) br.cond.dptk .L1547
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1549
	;;
	.align 32
.L1564:
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
	(p6) br.cond.dptk .L1564
	;;
.L1549:
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
	(p7) br.cond.dpnt .L1603
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
	(p7) br.cond.dpnt .L1604
	;;
	.align 32
.L1569:
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
	(p6) br.cond.dpnt .L1568
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
	(p6) br.cond.dptk .L1569
	;;
.L1604:
	.mmi
	mov r19 = r18
	nop 0
	extr.u r15 = r18, 1, 15
	.mii
	cmp4.leu p6, p7 = r16, r32
	sub r14 = r32, r16
	;;
	(p7) mov r19 = r0
	.mmb
	mov r20 = r15
	nop 0
	(p7) br.cond.dptk .L1592
	;;
	.mii
	nop 0
	zxt2 r8 = r14
	nop 0
.L1592:
	.mii
	nop 0
	extr.u r14 = r16, 1, 15
	nop 0
	.mmb
	cmp4.eq p6, p7 = 0, r15
	nop 0
	(p6) br.cond.dpnt .L1571
	;;
.L1573:
	.mmi
	cmp4.gtu p6, p7 = r14, r8
	nop 0
	extr.u r15 = r16, 2, 14
	;;
	.mmi
	(p7) sub r8 = r8, r14
	(p7) or r19 = r20, r19
	extr.u r14 = r18, 2, 14
	;;
	.mii
	nop 0
	(p7) zxt2 r8 = r8
	(p7) zxt2 r19 = r19
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p6) br.cond.dpnt .L1571
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
	(p7) br.cond.dpnt .L1571
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
.L1571:
	.mmi
	nop 0
	cmp4.ne p6, p7 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p7) mov r8 = r19
	br.ret.sptk.many b0
.L1568:
	.mmi
	addp4 r21 = r16, r0
	addl r22 = 32767, r0
	addl r17 = 32767, r0
	.mmi
	addp4 r20 = r18, r0
	sub r23 = r32, r15
	cmp4.eq p6, p7 = 0, r14
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1571
	;;
	.mmi
	cmp4.gtu p6, p7 = r15, r32
	mov r16 = r21
	mov r18 = r20
	;;
	.mmi
	(p7) and r21 = r22, r21
	(p6) and r20 = r17, r20
	(p6) and r17 = r17, r16
	.mmi
	(p6) mov r16 = r15
	(p6) mov r18 = r14
	(p6) mov r19 = r0
	;;
	.mmi
	(p7) mov r16 = r15
	(p7) mov r18 = r14
	(p7) zxt2 r8 = r23
	.mii
	(p7) and r20 = r22, r20
	(p7) zxt2 r14 = r21
	;;
	(p6) zxt2 r20 = r20
	.mib
	nop 0
	(p6) zxt2 r14 = r17
	br .L1573
.L1603:
	.mmi
	cmp4.ne p6, p7 = r32, r33
	;;
	(p6) mov r19 = r0
	(p7) mov r8 = r0
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
	(p7) br.cond.dpnt .L1607
	;;
	.align 32
.L1606:
	.mib
	nop 0
	tbit.z p6, p7 = r33, 31
	(p7) br.cond.dpnt .L1607
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
	(p7) br.cond.dptk .L1606
	;;
	.mmi
	nop 0
	cmp.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1610
	;;
.L1607:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1612:
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
	(p6) br.cond.dptk .L1612
	;;
.L1610:
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
	sub r17 = 32, r33
	;;
	.mmi
	(p7) addp4 r14 = r14, r0
	addp4 r17 = r17, r0
	extr r16 = r32, 32, 32
	.mib
	nop 0
	shl r15 = r15, 32
	nop 0
	;;
	.mib
	nop 0
	(p7) shl r14 = r32, r14
	(p7) br.cond.dptk .L1623
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r33
	addp4 r15 = r33, r0
	addp4 r14 = r32, r0
	;;
	.mib
	(p6) mov r8 = r32
	nop 0
	(p6) br.cond.dpnt .L1621
	;;
	.mii
	nop 0
	shr.u r14 = r14, r17
	shl r16 = r16, r15
	;;
	.mii
	nop 0
	shl r15 = r32, r15
	nop 0
	;;
	.mii
	nop 0
	shl r15 = r15, 32
	or r14 = r16, r14
.L1623:
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
.L1621:
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
	(p7) br.cond.dptk .L1631
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
.L1631:
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
	.mmb
	addp4 r18 = r33, r0
	sub r17 = 32, r33
	nop 0
	;;
	.mmi
	(p7) addp4 r15 = r15, r0
	addp4 r17 = r17, r0
	(p7) shr r32 = r32, 63
	;;
	.mii
	nop 0
	shr r16 = r32, 32
	;;
	shr r2 = r16, r18
	;;
	.mib
	nop 0
	(p7) shr r14 = r14, r15
	(p7) br.cond.dptk .L1637
	;;
	.mii
	cmp4.eq p6, p7 = 0, r33
	extr r15 = r32, 32, 32
	addp4 r14 = r32, r0
	;;
	.mii
	nop 0
	shl r15 = r15, r17
	nop 0
	.mmb
	(p6) mov r8 = r32
	mov r32 = r2
	(p6) br.cond.dpnt .L1635
	;;
	.mii
	nop 0
	shr.u r14 = r14, r18
	;;
	or r14 = r15, r14
	;;
.L1637:
	.mmi
	mov r8 = r0
	nop 0
	shl r14 = r14, 32
	;;
	.mii
	nop 0
	mix4.r r8 = r32, r8
	;;
	mix4.l r8 = r8, r14
.L1635:
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
	(p7) br.cond.dptk .L1645
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
.L1645:
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
	.mib
	nop 0
	extr.u r8 = r32, 24, 8
	nop 0
	.mlx
	addl r16 = 65280, r0
	movl r15 = 16711680
	;;
	.mii
	nop 0
	dep.z r17 = r32, 24, 8
	;;
	extr.u r14 = r32, 8, 24
	.mmi
	or r8 = r17, r8
	;;
	and r14 = r16, r14
	dep.z r32 = r32, 8, 24
	;;
	.mmi
	or r8 = r14, r8
	nop 0
	and r32 = r15, r32
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
	addl r15 = 65280, r0
	addl r17 = 240, r0
	.mmi
	mov r8 = r0
	;;
	cmp4.geu p6, p7 = r14, r32
	addp4 r14 = r32, r0
	;;
	.mmi
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	nop 0
	;;
	.mmi
	shladd r16 = r16, 4, r0
	;;
	sub r18 = 16, r16
	nop 0
	;;
	.mmi
	addp4 r18 = r18, r0
	;;
	nop 0
	shr.u r14 = r14, r18
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
	shladd r15 = r15, 3, r0
	;;
	sub r18 = 8, r15
	add r16 = r15, r16
	;;
	.mmi
	addp4 r18 = r18, r0
	;;
	nop 0
	shr.u r14 = r14, r18
	;;
	.mii
	and r17 = r17, r14
	addp4 r14 = r14, r0
	;;
	cmp4.eq p6, p7 = 0, r17
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
	.mii
	cmp.eq p6, p7 = 0, r33
	addl r8 = 65598, r0
	;;
	(p6) addl r15 = 1, r0
	;;
	.mmi
	nop 0
	(p7) mov r15 = r0
	nop 0
	;;
	.mmi
	adds r14 = -1, r15
	cmp4.eq p6, p7 = 0, r15
	dep.z r15 = r15, 6, 26
	;;
	.mii
	and r14 = r33, r14
	(p6) mov r32 = r0
	;;
	or r32 = r32, r14
	;;
	.mmi
	nop 0
	setf.sig f6 = r32
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcvt.xuf f6 = f6
	;;
	.mmi
	getf.exp r14 = f6
	;;
	sub r8 = r8, r14
	nop 0
	;;
	.mib
	nop 0
	add r8 = r15, r8
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
	(p6) br.cond.dpnt .L1665
	;;
	.mmi
	nop 0
	cmp4.lt p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1661
	;;
	.mmi
	nop 0
	(p10) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1665
.L1661:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1665:
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
	(p6) br.cond.dpnt .L1673
	;;
	.mmi
	nop 0
	cmp4.lt p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 1, r0
	nop 0
	(p6) br.cond.dpnt .L1669
	;;
	.mmi
	nop 0
	(p10) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
	(p8) br.cond.dpnt .L1673
.L1669:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1673:
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
	(p6) br.cond.dpnt .L1680
	;;
	.mmi
	nop 0
	cmp.lt p6, p7 = r35, r33
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1676
	;;
	.mmi
	(p8) addl r8 = 2, r0
	nop 0
	cmp.gtu p6, p7 = r34, r32
	;;
	.mib
	nop 0
	(p9) addl r8 = 1, r0
	(p6) br.cond.dpnt .L1680
.L1676:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1680:
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
	(p6) br.cond.dptk .L1691
	;;
	.mmi
	mov r8 = r0
	cmp.eq p6, p7 = 0, r33
	andcm r33 = r14, r33
	.bbb
	nop 0
	(p7) br.cond.dptk .L1696
	br.ret.sptk.many b0
	;;
.L1691:
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
.L1696:
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
	sub r17 = 32, r33
	nop 0
	;;
	.mmi
	(p7) addp4 r15 = r15, r0
	addp4 r17 = r17, r0
	shr.u r14 = r32, 32
	;;
	.mii
	nop 0
	(p7) shr.u r15 = r16, r15
	addp4 r16 = r32, r0
	.mmb
	nop 0
	nop 0
	(p7) br.cond.dptk .L1699
	;;
	.mmi
	cmp4.eq p6, p7 = 0, r33
	addp4 r8 = r33, r0
	extr.u r15 = r32, 32, 32
	;;
	.mii
	nop 0
	shl r15 = r15, r17
	(p6) mov r8 = r32
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1697
	;;
	.mii
	nop 0
	shr.u r16 = r16, r8
	shr.u r8 = r14, r8
	;;
	.mmi
	or r15 = r15, r16
	nop 0
	nop 0
	;;
.L1699:
	.mii
	nop 0
	unpack4.l r8 = r8, r15
	nop 0
.L1697:
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
	(p7) br.cond.dptk .L1707
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
.L1707:
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
	setf.sig f8 = r14
	setf.sig f6 = r33
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f10 = f8, f9
	;;
	.mii
	getf.sig r17 = f10
	nop 0
	;;
	extr.u r15 = r17, 16, 16
	.mmi
	and r17 = r16, r17
	;;
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
	.mmi
	add r15 = r15, r17
	nop 0
	extr.u r14 = r14, 16, 16
	;;
	.mii
	setf.sig f8 = r14
	extr.u r14 = r15, 16, 16
	and r15 = r16, r15
	;;
	.mmi
	nop 0
	setf.sig f10 = r14
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
	.mmi
	nop 0
	setf.sig f6 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f10 = f7, f9
	;;
	.mii
	getf.sig r17 = f10
	nop 0
	;;
	extr.u r15 = r17, 16, 16
	.mmi
	and r17 = r16, r17
	;;
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
	.mmi
	add r15 = r15, r17
	nop 0
	extr.u r14 = r14, 16, 16
	;;
	.mii
	setf.sig f7 = r14
	extr.u r14 = r15, 16, 16
	and r15 = r16, r15
	;;
	.mmi
	nop 0
	setf.sig f10 = r14
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
	.mlx
	nop 0
	movl r17 = 1085102592571150095
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
	.mmi
	add r14 = r14, r15
	;;
	and r14 = r17, r14
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
	.mlx
	nop 0
	movl r17 = 252645135
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
	.mmi
	add r14 = r15, r14
	;;
	and r14 = r17, r14
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
	(p6) br.cond.dptk .L1736
	;;
	.align 32
.L1738:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	nop 0
.L1736:
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
	(p6) br.cond.dpnt .L1737
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	nop 0
.L1739:
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	nop 0
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L1738
	;;
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	add r14 = r15, r14
	;;
	.mib
	nop 0
	extr r14 = r14, 1, 31
	br .L1739
.L1737:
	.mbb
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L1744
	br.ret.sptk.many b0
	;;
.L1744:
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
	(p6) br.cond.dptk .L1746
	;;
	.align 32
.L1748:
	.mfi
	nop 0
	fmpy.s f8 = f8, f6
	nop 0
.L1746:
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
	(p6) br.cond.dpnt .L1747
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	nop 0
.L1749:
	.mii
	nop 0
	extr.u r15 = r14, 31, 1
	nop 0
	;;
	.mib
	nop 0
	tbit.nz p6, p7 = r14, 0
	(p6) br.cond.dptk .L1748
	;;
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	add r14 = r15, r14
	;;
	.mib
	nop 0
	extr r14 = r14, 1, 31
	br .L1749
.L1747:
	.mbb
	cmp4.le p6, p7 = r0, r33
	(p7) br.cond.dpnt .L1754
	br.ret.sptk.many b0
	;;
.L1754:
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
	(p6) br.cond.dpnt .L1759
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1755
	;;
	.mmi
	nop 0
	(p10) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1759
.L1755:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1759:
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
	(p6) br.cond.dpnt .L1767
	;;
	.mmi
	nop 0
	cmp4.ltu p6, p7 = r14, r15
	nop 0
	;;
	.mib
	(p6) addl r8 = 1, r0
	nop 0
	(p6) br.cond.dpnt .L1763
	;;
	.mmi
	nop 0
	(p10) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
	(p8) br.cond.dpnt .L1767
.L1763:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1767:
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
	(p6) br.cond.dpnt .L1774
	;;
	.mmi
	nop 0
	cmp.ltu p6, p7 = r35, r33
	nop 0
	;;
	.mib
	(p6) addl r8 = 2, r0
	nop 0
	(p6) br.cond.dpnt .L1770
	;;
	.mmi
	(p8) addl r8 = 2, r0
	nop 0
	cmp.gtu p6, p7 = r34, r32
	;;
	.mib
	nop 0
	(p9) addl r8 = 1, r0
	(p6) br.cond.dpnt .L1774
.L1770:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1774:
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
