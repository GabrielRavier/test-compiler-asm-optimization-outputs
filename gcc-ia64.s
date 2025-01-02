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
	cmp.eq p32, p33 = 0, r34
	(p32) br.cond.dpnt .L7
	.mmi
	nop 0
	adds r22 = -1, r34
	nop 0
	;;
	.mib
	nop 0
	cmp.geu p34, p35 = 8, r22
	(p34) br.cond.dpnt .L8
	.mmi
	adds r24 = -8, r34
	adds r30 = -2, r34
	add r21 = r32, r22
	;;
	.mmi
	add r15 = r32, r24
	add r14 = r33, r24
	add r33 = r33, r30
	;;
	.mmi
	sub r23 = r21, r33
	nop 0
	or r25 = r14, r15
	;;
	.mii
	adds r26 = 6, r23
	and r31 = 7, r25
	;;
	cmp.ltu p36, p37 = 6, r26
	.mmi
	cmp.eq p38, p39 = 0, r31
	;;
	(p38) addl r31 = 1, r0
	(p36) addl r26 = 1, r0
	;;
	.mii
	(p39) mov r31 = r0
	(p37) mov r26 = r0
	;;
	and r32 = r31, r26
	;;
	.mib
	nop 0
	cmp4.eq p40, p41 = 0, r32
	(p40) br.cond.dpnt .L8
	.mmi
	and r19 = -8, r34
	;;
	adds r9 = -8, r19
	nop 0
	;;
	.mii
	nop 0
	shr.u r16 = r9, 3
	;;
	mov ar.lc = r16
	.mmb
	nop 0
	cmp.lt p42, p43 = 2, r16
	(p43) br.cond.dptk .L76
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
	sub r10 = r34, r19
	cmp.eq p44, p45 = r19, r34
	(p44) br.cond.dpnt .L7
	;;
	.mmi
	adds r17 = -1, r15
	adds r18 = -1, r14
	adds r34 = -2, r15
	.mmi
	adds r19 = -2, r14
	cmp.eq p48, p49 = 2, r10
	adds r11 = -3, r15
	;;
	.mmi
	ld1 r21 = [r17]
	adds r22 = -3, r14
	cmp.eq p50, p51 = 3, r10
	.mmi
	adds r20 = -4, r15
	adds r24 = -4, r14
	cmp.eq p52, p53 = 4, r10
	;;
	.mmi
	adds r29 = -5, r15
	adds r30 = -5, r14
	cmp.eq p54, p55 = 5, r10
	.mmi
	adds r28 = -6, r15
	adds r27 = -6, r14
	cmp.eq p56, p57 = 6, r10
	;;
	.mmi
	adds r33 = -7, r15
	ld1.sa r23 = [r34]
	adds r25 = -7, r14
	.mmb
	st1 [r18] = r21
	cmp.eq p46, p47 = 1, r10
	(p46) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r26 = [r11]
	ld1.sa r31 = [r20]
	nop 0
	;;
	.mmi
	ld1.sa r32 = [r29]
	;;
	ld1.c.clr r23 = [r34]
	nop 0
	;;
	.mib
	st1 [r19] = r23
	nop 0
	(p48) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r9 = [r28]
	;;
	ld1.c.clr r26 = [r11]
	nop 0
	;;
	.mib
	st1 [r22] = r26
	nop 0
	(p50) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r16 = [r33]
	;;
	ld1.c.clr r31 = [r20]
	nop 0
	;;
	.mib
	st1 [r24] = r31
	nop 0
	(p52) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r32 = [r29]
	nop 0
	;;
	.mib
	st1 [r30] = r32
	nop 0
	(p54) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r9 = [r28]
	nop 0
	;;
	.mib
	st1 [r27] = r9
	nop 0
	(p56) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r16 = [r33]
	nop 0
	;;
	.mmi
	st1 [r25] = r16
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
	cmp.eq p2, p3 = r33, r32
	(p2) br.cond.dpnt .L7
	.mib
	nop 0
	cmp.eq p4, p5 = 0, r34
	(p4) br.cond.dpnt .L7
	.mmi
	adds r14 = -1, r34
	;;
	cmp.geu p8, p9 = 7, r14
	nop 0
	;;
	.mib
	nop 0
	(p8) adds r27 = 1, r33
	(p8) br.cond.dpnt .L13
	;;
	.mmi
	or r9 = r33, r32
	sub r16 = r32, r33, 1
	adds r27 = 1, r33
	;;
	.mii
	and r10 = 7, r9
	cmp.ltu p10, p11 = 6, r16
	;;
	cmp.eq p12, p13 = 0, r10
	.mmi
	(p10) addl r16 = 1, r0
	;;
	(p11) mov r16 = r0
	(p12) addl r10 = 1, r0
	;;
	.mmi
	(p13) mov r10 = r0
	;;
	and r11 = r16, r10
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r11
	(p14) br.cond.dpnt .L13
	.mmi
	and r18 = -8, r34
	mov r15 = r32
	mov r14 = r33
	;;
	.mii
	adds r19 = -8, r18
	add r17 = r32, r18
	;;
	shr.u r16 = r19, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p16, p17 = 2, r16
	nop 0
	(p17) br.cond.dptk .L79
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
	sub r30 = r34, r18
	adds r27 = 1, r17
	.mmi
	adds r28 = 2, r17
	adds r29 = 3, r17
	adds r22 = 4, r17
	;;
	.mmi
	adds r24 = 5, r17
	cmp.eq p22, p23 = 2, r30
	adds r21 = 2, r33
	.mmi
	cmp.eq p24, p25 = 3, r30
	adds r23 = 3, r33
	cmp.eq p26, p27 = 4, r30
	;;
	.mmi
	adds r25 = 4, r33
	cmp.eq p28, p29 = 5, r30
	adds r26 = 5, r33
	.mmi
	cmp.eq p30, p31 = 6, r30
	ld1.s r15 = [r33]
	adds r31 = 6, r33
	;;
	.mmi
	ld1.sa r14 = [r23]
	cmp.eq p18, p19 = r18, r34
	adds r18 = 1, r33
	.mmb
	cmp.eq p20, p21 = 1, r30
	ld1.sa r34 = [r21]
	(p18) br.cond.dpnt .L7
	;;
	.mii
	ld1.sa r32 = [r18]
	mov ar.lc = r3
	;;
	chk.s r15, .L86
.L87:
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.mib
	st1 [r17] = r15
	adds r17 = 6, r17
	(p20) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r9 = [r25]
	;;
	ld1.c.clr r32 = [r18]
	nop 0
	;;
	.mib
	st1 [r27] = r32
	nop 0
	(p22) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r16 = [r26]
	;;
	ld1.c.clr r34 = [r21]
	nop 0
	;;
	.mib
	st1 [r28] = r34
	nop 0
	(p24) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r10 = [r31]
	;;
	ld1.c.clr r14 = [r23]
	nop 0
	;;
	.mib
	st1 [r29] = r14
	nop 0
	(p26) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r9 = [r25]
	nop 0
	;;
	.mib
	st1 [r22] = r9
	nop 0
	(p28) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r16 = [r26]
	nop 0
	;;
	.mib
	st1 [r24] = r16
	nop 0
	(p30) br.cond.dpnt .L7
	;;
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	.mmi
	ld1.c.clr r10 = [r31]
	nop 0
	nop 0
	;;
	.mib
	st1 [r17] = r10
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
	ld8 r20 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r20
	adds r15 = 8, r15
	br.cloop.sptk.few .L79
	.mib
	nop 0
	nop 0
	br .L80
	;;
.L8:
	.mmi
	sub r14 = r18, r34
	adds r15 = -1, r18
	adds r17 = -1, r17
	;;
	.mmi
	nop 0
	sub r10 = r18, r14, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r10
	;;
	mov r16 = ar.lc
	;;
	.mib
	nop 0
	cmp.lt p58, p59 = 2, r16
	(p59) br.cond.dptk .L78
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
	ld1 r34 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r17] = r34
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
	add r11 = r33, r34
	nop 0
	mov r29 = r8
	;;
	.mii
	sub r19 = r11, r27
	nop 0
	;;
	mov ar.lc = r19
	.align 32
.L17:
	.mmi
	mov r20 = r33
	mov r33 = r27
	adds r27 = 1, r27
	;;
	.mmi
	nop 0
	ld1 r28 = [r20]
	nop 0
	;;
	.mib
	st1 [r29] = r28
	adds r29 = 1, r29
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
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
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
	ld1 r3 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mmi
	st1 [r32] = r3
	adds r32 = 1, r32
	cmp4.ne p8, p9 = r34, r3
	.bbb
	nop 0
	(p9) br.cond.dpnt .L102
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
	ld1 r3 = [r32]
	adds r32 = 1, r32
	;;
	.mbb
	cmp4.ne p8, p9 = r33, r3
	(p9) br.cond.dpnt .L103
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
	ld1 r9 = [r33]
	adds r32 = 1, r32
	.mmi
	nop 0
	adds r33 = 1, r33
	nop 0
	;;
	.mbb
	cmp4.eq p8, p9 = r9, r8
	(p9) br.cond.dpnt .L128
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
	sub r8 = r8, r9
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
	ld1 r3 = [r8]
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = r33, r3
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
	ld1 r2 = [r33]
	mov r8 = r14
	adds r33 = 1, r33
	;;
	.mib
	nop 0
	sxt1 r3 = r2
	nop 0
	.mmi
	st1 [r14] = r2
	nop 0
	adds r14 = 1, r14
	;;
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r3
	(p8) br.cond.dptk .L152
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
	sxt1 r2 = r14
	nop 0
	;;
	.mib
	mov r10 = r2
	cmp4.ne p6, p7 = 0, r2
	(p7) br.cond.dpnt .L157
	;;
	.align 32
.L158:
	.mii
	nop 0
	zxt1 r15 = r10
	nop 0
	;;
	.mib
	cmp4.ne p8, p9 = r33, r15
	nop 0
	(p9) br.cond.dpnt .L157
	;;
	.mmi
	adds r8 = 1, r8
	;;
	ld1 r3 = [r8]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r9 = r3
	nop 0
	;;
	.mib
	mov r10 = r9
	cmp4.eq p10, p11 = 0, r9
	(p11) br.cond.dptk .L158
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
	sxt1 r2 = r14
	nop 0
	;;
	.mmi
	nop 0
	cmp4.eq p6, p7 = r33, r2
	cmp4.ne p8, p9 = 0, r2
	.bbb
	nop 0
	(p6) br.cond.dpnt .L166
	(p8) br.cond.dptk .L168
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
	sxt1 r2 = r15
	;;
	.mmi
	cmp4.eq p6, p7 = r2, r16
	mov r17 = r16
	mov r11 = r2
	;;
	.mib
	nop 0
	(p7) zxt1 r16 = r14
	(p7) br.cond.dpnt .L174
	.align 32
.L175:
	.mmi
	ld1.s r3 = [r32]
	ld1.s r8 = [r33]
	cmp4.ne p8, p9 = 0, r17
	.mmb
	nop 0
	nop 0
	(p9) br.cond.dpnt .L180
	;;
	.mmi
	chk.s r3, .L181
	nop 0
	nop 0
.L182:
	.mii
	nop 0
	sxt1 r9 = r3
	nop 0
	.mmi
	adds r32 = 1, r32
	chk.s r8, .L183
	nop 0
.L184:
	.mii
	nop 0
	sxt1 r10 = r8
	nop 0
	;;
	.mmi
	mov r17 = r9
	nop 0
	mov r11 = r10
	.mmb
	adds r33 = 1, r33
	cmp4.eq p10, p11 = r10, r9
	(p10) br.cond.dptk .L175
	.mii
	nop 0
	zxt1 r16 = r3
	nop 0
	;;
.L174:
	.mii
	nop 0
	zxt1 r18 = r11
	nop 0
	;;
	.mib
	nop 0
	sub r8 = r16, r18
	br.ret.sptk.many b0
.L180:
	.mmi
	mov r16 = r0
	nop 0
	zxt1 r18 = r11
	;;
	.mib
	nop 0
	sub r8 = r16, r18
	br.ret.sptk.many b0
.L181:
	.mib
	ld1 r3 = [r32]
	nop 0
	br .L182
	;;
.L183:
	.mib
	ld1 r8 = [r33]
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
	sxt1 r2 = r14
	;;
	cmp4.eq p6, p7 = 0, r2
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
	ld1 r3 = [r8]
	;;
	nop 0
	sxt1 r9 = r3
	;;
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r9
	(p8) br.cond.dptk .L187
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
	chk.s r15, .L206
	nop 0
	nop 0
.L207:
	.mii
	mov r8 = r15
	cmp4.ne p8, p9 = 0, r15
	;;
	(p9) mov r8 = r0
	.mmb
	nop 0
	(p9) ld1 r15 = [r33]
	(p9) br.cond.dpnt .L195
	;;
	.mmi
	ld1.s r15 = [r14]
	nop 0
	nop 0
	;;
	.align 32
.L196:
	.mmi
	mov r19 = r14
	ld1.s r2 = [r17]
	chk.s r15, .L204
.L205:
	.mmi
	cmp4.ne p12, p13 = 0, r15
	cmp4.eq p10, p11 = r8, r15
	adds r14 = 1, r14
	;;
	.mmi
	(p10) addl r18 = 1, r0
	(p12) addl r16 = 1, r0
	cmp.ne p14, p15 = r14, r34
	;;
	.mii
	(p11) mov r18 = r0
	(p13) mov r16 = r0
	;;
	and r16 = r18, r16
	;;
	.mib
	nop 0
	tbit.nz.and.orcm p14, p15 = r16, 0
	(p15) br.cond.dpnt .L195
	;;
	.mmi
	nop 0
	ld1.s r15 = [r14]
	chk.s r2, .L202
.L203:
	.mmi
	nop 0
	mov r8 = r2
	adds r17 = 1, r17
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r2
	(p6) br.cond.dptk .L196
	;;
	.mmi
	adds r3 = 1, r19
	nop 0
	mov r8 = r0
	;;
	.mmi
	ld1 r15 = [r3]
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
	ld1 r2 = [r17]
	nop 0
	br .L203
.L204:
	.mib
	ld1 r15 = [r14]
	nop 0
	br .L205
	;;
.L206:
	.mib
	ld1 r15 = [r32]
	nop 0
	br .L207
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
	and r8 = 7, r14
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
	cmp.geu p2, p3 = 13, r18
	shr.u r9 = r15, 4
	;;
	.mmb
	mov r10 = r9
	cmp.ne p4, p5 = 0, r8
	nop 0
	.mib
	cmp.lt p8, p9 = 3, r9
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	(p6) br.cond.dpnt .L208
	;;
	.mii
	nop 0
	mov ar.lc = r9
	adds r14 = -2, r10
	.bbb
	(p2) br.cond.dpnt .L210
	(p4) br.cond.dpnt .L210
	(p9) br.cond.dptk .L224
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
.L211:
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
	br.cloop.sptk.few .L211
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
.L221:
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
	adds r8 = 2, r32
	adds r11 = 4, r33
	adds r9 = 5, r32
	.mmi
	adds r21 = 5, r33
	adds r10 = 4, r32
	adds r22 = 6, r33
	;;
	.mmi
	adds r19 = 7, r32
	adds r23 = 7, r33
	adds r28 = 6, r32
	.mmi
	adds r35 = 8, r33
	adds r37 = 9, r32
	adds r24 = 9, r33
	;;
	.mmi
	adds r36 = 8, r32
	adds r39 = 10, r33
	adds r41 = 11, r32
	.mmi
	adds r38 = 11, r33
	adds r40 = 10, r32
	cmp.ge p20, p21 = 5, r34
	;;
	.mmi
	cmp.ge p22, p23 = 7, r34
	cmp.ge p12, p13 = 9, r34
	cmp.ge p14, p15 = 11, r34
	.mmi
	cmp.ge p16, p17 = 13, r34
	ld1.s r25 = [r32]
	adds r27 = 12, r33
	;;
	.mmi
	nop 0
	adds r26 = 13, r32
	adds r30 = 12, r32
	.mmb
	ld1.s r31 = [r20]
	cmp.eq p10, p11 = r14, r29
	(p10) br.cond.dpnt .L208
	;;
	.mmi
	nop 0
	ld1 r29 = [r16]
	cmp.ge p18, p19 = 3, r34
	.mmi
	nop 0
	ld1.s r14 = [r8]
	nop 0
	;;
	.mii
	ld1.s r16 = [r10]
	nop 0
	;;
	chk.s r25, .L227
.L228:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p18, p19
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mmi
	ld1.s r32 = [r9]
	st1 [r33] = r29
	adds r33 = 13, r33
	;;
	.mbb
	st1 [r15] = r25
	(p18) br.cond.dpnt .L208
	nop 0
	;;
	.mmi
	chk.s r31, .L229
	nop 0
	nop 0
.L230:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mii
	ld1.s r20 = [r19]
	nop 0
	;;
	chk.s r14, .L231
.L232:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mmi
	ld1.s r8 = [r28]
	st1 [r18] = r31
	nop 0
	;;
	.mbb
	st1 [r17] = r14
	(p20) br.cond.dpnt .L208
	nop 0
	;;
	.mmi
	chk.s r32, .L235
	nop 0
	nop 0
.L236:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p22, p23
	.mii
	ld1.s r9 = [r37]
	nop 0
	;;
	chk.s r16, .L233
.L234:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p22, p23
	.mmi
	ld1.s r10 = [r36]
	st1 [r11] = r32
	nop 0
	;;
	.mbb
	st1 [r21] = r16
	(p22) br.cond.dpnt .L208
	nop 0
	;;
	.mmi
	chk.s r20, .L237
	nop 0
	nop 0
.L238:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mii
	ld1.s r19 = [r41]
	nop 0
	;;
	chk.s r8, .L239
.L240:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	ld1.s r28 = [r40]
	st1 [r22] = r20
	nop 0
	;;
	.mbb
	st1 [r23] = r8
	(p12) br.cond.dpnt .L208
	nop 0
	;;
	.mmi
	chk.s r9, .L241
	nop 0
	nop 0
.L242:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mii
	ld1.s r37 = [r26]
	nop 0
	;;
	chk.s r10, .L243
.L244:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	ld1.s r36 = [r30]
	st1 [r35] = r9
	nop 0
	;;
	.mbb
	st1 [r24] = r10
	(p14) br.cond.dpnt .L208
	nop 0
	;;
	.mmi
	chk.s r19, .L245
	nop 0
	nop 0
.L246:
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r28, .L247
	nop 0
	nop 0
.L248:
	.pred.rel.mutex p16, p17
	.mmi
	nop 0
	st1 [r39] = r19
	nop 0
	.mmb
	st1 [r38] = r28
	nop 0
	(p16) br.cond.dpnt .L208
	;;
	.mmi
	chk.s r37, .L249
	nop 0
	nop 0
.L250:
	.mmi
	chk.s r36, .L251
	nop 0
	nop 0
.L252:
	.mmi
	st1 [r27] = r37
	st1 [r33] = r36
	nop 0
.L208:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L224:
	.mmi
	adds r21 = 8, r17
	nop 0
	nop 0
	;;
	.align 32
.L220:
	.mmi
	ld8 r19 = [r17]
	ld8 r22 = [r21]
	adds r11 = 8, r16
	.mmi
	adds r17 = 16, r17
	;;
	adds r21 = 8, r17
	nop 0
	;;
	.mii
	nop 0
	mix1.r r23 = r22, r19
	mix1.l r24 = r22, r19
	;;
	.mii
	nop 0
	mux1 r25 = r23, @alt
	mux1 r26 = r24, @alt
	;;
	.mii
	nop 0
	unpack1.l r30 = r25, r26
	unpack1.h r31 = r25, r26
	;;
	.mmi
	nop 0
	st8 [r16] = r30
	adds r16 = 16, r16
	.mmb
	nop 0
	st8 [r11] = r31
	br.cloop.sptk.few .L220
	.mib
	nop 0
	nop 0
	br .L221
.L210:
	.mmi
	and r41 = -2, r34
	nop 0
	adds r18 = 1, r32
	;;
	.mmi
	adds r40 = -2, r41
	ld1.s r21 = [r18]
	nop 0
	;;
	.mii
	nop 0
	shr.u r15 = r40, 1
	;;
	mov ar.lc = r15
	.align 32
.L213:
	.mmi
	nop 0
	adds r17 = 1, r33
	nop 0
	.mmi
	ld1 r11 = [r32]
	adds r32 = 2, r32
	chk.s r21, .L225
	;;
.L226:
	.mmi
	st1 [r33] = r21
	nop 0
	adds r33 = 2, r33
	.mmi
	adds r18 = 1, r32
	st1 [r17] = r11
	nop 0
	;;
	.mib
	ld1.s r21 = [r18]
	nop 0
	br.cloop.sptk.few .L213
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L225:
	.mib
	ld1 r21 = [r18]
	nop 0
	br .L226
.L227:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p18, p19
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mib
	ld1 r25 = [r32]
	nop 0
	br .L228
.L229:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mib
	ld1 r31 = [r20]
	nop 0
	br .L230
.L231:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mib
	ld1 r14 = [r8]
	nop 0
	br .L232
.L233:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p22, p23
	.mib
	ld1 r16 = [r10]
	nop 0
	br .L234
.L235:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p22, p23
	.mib
	ld1 r32 = [r9]
	nop 0
	br .L236
.L237:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r20 = [r19]
	nop 0
	br .L238
.L239:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r8 = [r28]
	nop 0
	br .L240
.L241:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r9 = [r37]
	nop 0
	br .L242
.L243:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r10 = [r36]
	nop 0
	br .L244
.L245:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r19 = [r41]
	nop 0
	br .L246
.L247:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r28 = [r40]
	nop 0
	br .L248
.L249:
	.mib
	ld1 r37 = [r26]
	nop 0
	br .L250
.L251:
	.mib
	ld1 r36 = [r30]
	nop 0
	br .L252
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
	adds r2 = -97, r32
	nop 0
	;;
	.mmi
	cmp4.geu p6, p7 = 25, r2
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
	.mmi
	adds r15 = -9, r32
	nop 0
	cmp4.eq p6, p7 = 32, r32
	;;
	.mmi
	cmp4.geu p8, p9 = 4, r15
	nop 0
	(p6) addl r14 = 1, r0
	;;
	.mii
	(p7) mov r14 = r0
	(p8) addl r8 = 1, r0
	;;
	(p9) mov r8 = r0
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
	nop 0
	adds r15 = -127, r32
	.mmi
	addl r8 = 1, r0
	nop 0
	cmp4.geu p8, p9 = 31, r32
	;;
	.mmi
	addl r14 = -8232, r2
	cmp4.geu p6, p7 = 32, r15
	addl r3 = -65529, r2
	;;
	.mmi
	cmp4.geu p10, p11 = 1, r14
	cmp4.geu p12, p13 = 2, r3
	(p8) cmp4.eq.or.andcm p6, p7 = 0, r0
	.bbb
	nop 0
	(p6) br.cond.dptk .L273
	(p10) br.cond.dpnt .L273
	;;
	.mii
	(p12) addl r8 = 1, r0
	nop 0
	;;
	(p13) mov r8 = r0
.L273:
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
	adds r20 = 1, r32
	.mmi
	addl r14 = 254, r0
	addl r17 = 47061, r0
	addl r16 = 8184, r0
	;;
	.mmi
	addl r18 = -8234, r2
	cmp4.geu p8, p9 = r15, r32
	addl r3 = -57344, r2
	.mmi
	and r21 = 127, r20
	addl r9 = -65532, r2
	addl r10 = 1048579, r0
	;;
	.mmi
	cmp4.geu p12, p13 = r17, r18
	cmp4.geu p10, p11 = r16, r3
	cmp4.ltu p14, p15 = r10, r9
	.mmb
	addl r11 = 65534, r0
	cmp4.ltu p6, p7 = r14, r32
	(p7) br.cond.dpnt .L289
	;;
	.mmi
	(p14) mov r8 = r0
	and r19 = r11, r2
	(p8) cmp4.eq.or.andcm p12, p13 = 0, r0
	.bbb
	(p12) br.cond.dpnt .L285
	(p10) br.cond.dpnt .L285
	(p14) br.cond.dpnt .L281
	;;
	.mmi
	nop 0
	cmp4.ne p8, p9 = r11, r19
	nop 0
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L281:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L285:
	.mib
	nop 0
	addl r8 = 1, r0
	br.ret.sptk.many b0
.L289:
	.mmi
	cmp4.ltu p6, p7 = 32, r21
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
	adds r2 = -97, r14
	cmp4.geu p6, p7 = 9, r32
	(p6) br.cond.dptk .L290
	;;
	.mmi
	nop 0
	cmp4.geu p8, p9 = 5, r2
	nop 0
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L290:
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
	(p6) br.cond.dpnt .L297
	;;
	.mfb
	nop 0
	(p8) mov f8 = f9
	(p8) br.cond.dpnt .L297
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p10, p11 = f6, f9
	;;
	.mfi
	nop 0
	(p10) fsub.d f8 = f6, f9
	nop 0
.L297:
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
	(p6) br.cond.dpnt .L307
	;;
	.mfb
	nop 0
	(p8) mov f8 = f9
	(p8) br.cond.dpnt .L307
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p10, p11 = f6, f9
	;;
	.mfi
	nop 0
	(p10) fsub.s f8 = f6, f9
	nop 0
.L307:
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
	.mfb
	getf.d r14 = f9
	fcmp.unord p8, p9 = f9, f9
	(p6) br.cond.dpnt .L324
	;;
	.mib
	nop 0
	nop 0
	(p8) br.cond.dpnt .L323
	;;
	.mii
	nop 0
	shr.u r16 = r15, 63
	nop 0
	;;
	.mii
	nop 0
	shr.u r17 = r14, 63
	cmp4.ne p14, p15 = 0, r16
	;;
	.mbb
	cmp4.eq p10, p11 = r17, r16
	(p10) br.cond.dptk .L319
	(p15) br.cond.dptk .L317
.L324:
	.mmi
	setf.d f8 = r14
	nop 0
	nop 0
.L317:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L319:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p12) br.cond.dptk .L324
.L323:
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
	.mfb
	nop 0
	fcmp.unord p8, p9 = f9, f9
	(p6) br.cond.dpnt .L334
	;;
	.mib
	nop 0
	nop 0
	(p8) br.cond.dpnt .L333
	;;
	.mmi
	mov r16 = r15
	;;
	mov r17 = r14
	and r2 = r18, r16
	;;
	.mmi
	and r3 = r18, r17
	nop 0
	cmp4.ne p14, p15 = 0, r2
	;;
	.mbb
	cmp4.eq p10, p11 = r3, r2
	(p10) br.cond.dptk .L329
	(p15) br.cond.dptk .L327
.L334:
	.mmi
	setf.s f8 = r14
	nop 0
	nop 0
.L327:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L329:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p12) br.cond.dptk .L334
.L333:
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
	.mmf
	adds r14 = 16, r12
	adds r10 = 16, r12
	fcmp.unord p8, p9 = f9, f9
	;;
	.mmi
	ld8.sa r2 = [r15]
	stfe [r12] = f8
	nop 0
	.mmb
	mov r11 = r10
	stfe [r14] = f9
	(p6) br.cond.dpnt .L342
	;;
	.mmi
	nop 0
	ldfe.s f9 = [r10]
	nop 0
	.mmb
	ld8.s r3 = [r17]
	nop 0
	(p8) br.cond.dpnt .L347
	;;
	.mmi
	nop 0
	ld8.c.clr r2 = [r15]
	chk.s r3, .L350
.L351:
	.mmi
	nop 0
	and r9 = r16, r3
	nop 0
	;;
	.mmi
	and r8 = r16, r2
	;;
	cmp4.ne p14, p15 = 0, r8
	cmp4.eq p10, p11 = r9, r8
	.bbb
	nop 0
	(p10) br.cond.dptk .L339
	(p15) br.cond.dptk .L340
	;;
	.mmi
	nop 0
	(p14) adds r9 = 16, r12
	nop 0
	;;
	.mmi
	(p14) ldfe f8 = [r9]
	nop 0
	nop 0
.L337:
.L347:
	.mib
	nop 0
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L339:
	.body
	.copy_state 1
	.mmi
	chk.s f9, .L348
	nop 0
	nop 0
	;;
.L349:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f9
	;;
	.mfb
	nop 0
	(p12) mov f8 = f9
	(p12) br.cond.dptk .L347
	;;
.L340:
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
.L342:
	.body
	.copy_state 2
	.mib
	ldfe f8 = [r11]
	.label_state 3
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L348:
	.body
	.copy_state 3
	.mib
	ldfe f9 = [r10]
	nop 0
	br .L349
.L350:
	.mib
	ld8 r3 = [r17]
	nop 0
	br .L351
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
	.mfb
	getf.d r15 = f9
	fcmp.unord p8, p9 = f9, f9
	(p6) br.cond.dpnt .L358
	;;
	.mib
	nop 0
	nop 0
	(p8) br.cond.dpnt .L360
	;;
	.mii
	nop 0
	shr.u r16 = r14, 63
	nop 0
	;;
	.mii
	nop 0
	shr.u r17 = r15, 63
	cmp4.ne p14, p15 = 0, r16
	;;
	.mbb
	cmp4.eq p10, p11 = r17, r16
	(p10) br.cond.dptk .L355
	(p15) br.cond.dptk .L358
.L360:
	.mib
	setf.d f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L355:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p12) br.cond.dptk .L360
.L358:
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
	.mfb
	nop 0
	fcmp.unord p8, p9 = f9, f9
	(p6) br.cond.dpnt .L368
	;;
	.mib
	nop 0
	nop 0
	(p8) br.cond.dpnt .L370
	;;
	.mmi
	mov r16 = r14
	;;
	mov r17 = r15
	and r2 = r18, r16
	;;
	.mmi
	and r3 = r18, r17
	nop 0
	cmp4.ne p14, p15 = 0, r2
	;;
	.mbb
	cmp4.eq p10, p11 = r3, r2
	(p10) br.cond.dptk .L365
	(p15) br.cond.dptk .L368
.L370:
	.mib
	setf.s f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L365:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p12) br.cond.dptk .L370
.L368:
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
	.mfi
	.fframe 16
	adds r12 = -16, r12
	.body
	fcmp.unord p6, p7 = f8, f8
	nop 0
	.mfi
	nop 0
	fcmp.unord p8, p9 = f9, f9
	nop 0
	;;
	.mmi
	adds r15 = 8, r12
	adds r17 = 24, r12
	addl r16 = 32768, r0
	.mmi
	adds r14 = 16, r12
	stfe [r12] = f8
	adds r10 = 16, r12
	;;
	.mmi
	ld8.s r2 = [r15]
	nop 0
	mov r11 = r10
	.mmb
	stfe [r14] = f9
	nop 0
	(p6) br.cond.dpnt .L378
	;;
	.mmi
	nop 0
	ldfe.s f10 = [r10]
	nop 0
	.mmb
	ld8.s r3 = [r17]
	nop 0
	(p8) br.cond.dpnt .L373
	;;
	.mmi
	chk.s r2, .L383
	nop 0
	nop 0
.L384:
	.mmi
	nop 0
	and r8 = r16, r2
	nop 0
	;;
	.mii
	cmp4.ne p14, p15 = 0, r8
	nop 0
	;;
	chk.s r3, .L387
.L388:
	.pred.rel.mutex p14, p15
	.mmi
	nop 0
	and r9 = r16, r3
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p10, p11 = r9, r8
	(p10) br.cond.dptk .L375
	;;
	.mfi
	nop 0
	(p15) mov f8 = f9
	nop 0
.L373:
	.mib
	nop 0
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L375:
	.body
	.copy_state 1
	.mmi
	chk.s f10, .L385
	nop 0
	nop 0
	;;
.L386:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f10
	;;
	.mmi
	nop 0
	(p13) adds r8 = 16, r12
	nop 0
	;;
	.mib
	(p13) ldfe f8 = [r8]
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
	;;
.L378:
	.body
	.copy_state 2
	.mib
	ldfe f8 = [r11]
	.label_state 3
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L383:
	.body
	.copy_state 3
	.mib
	ld8 r2 = [r15]
	nop 0
	br .L384
.L385:
	.mib
	ldfe f10 = [r10]
	nop 0
	br .L386
.L387:
	.pred.rel.mutex p14, p15
	.mib
	ld8 r3 = [r17]
	nop 0
	br .L388
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
	add r2 = r1, r17
	(p6) br.cond.dpnt .L390
	.mii
	and r15 = 63, r14
	extr.u r14 = r14, 6, 26
	;;
	add r3 = r2, r15
	;;
	.align 32
.L391:
	.mmb
	and r15 = 63, r14
	ld1 r8 = [r3]
	nop 0
	.mii
	cmp4.ne p8, p9 = 0, r14
	extr.u r14 = r14, 6, 26
	;;
	add r3 = r2, r15
	.mmb
	st1 [r16] = r8
	adds r16 = 1, r16
	(p8) br.cond.dptk .L391
	;;
.L390:
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
	addp4 r2 = r32, r0
	;;
	.mib
	st8 [r14] = r2
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
	xmpy.l f8 = f6, f7
	;;
	.mmi
	getf.sig r8 = f8
	;;
	adds r2 = 1, r8
	nop 0
	;;
	.mib
	st8 [r14] = r2
	extr.u r8 = r2, 33, 31
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
	(p7) br.cond.dpnt .L400
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
	ld8 r2 = [r32]
	nop 0
	;;
	cmp.eq p8, p9 = 0, r2
	.mmi
	adds r3 = 8, r2
	;;
	(p9) st8 [r3] = r32
	nop 0
.L400:
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
	.mii
	ld8 r14 = [r32]
	adds r15 = 8, r32
	;;
	cmp.eq p6, p7 = 0, r14
	.mmi
	adds r16 = 8, r14
	ld8.a r2 = [r15]
	nop 0
	;;
	.mmi
	(p7) ld8 r17 = [r15]
	;;
	(p7) st8 [r16] = r17
	nop 0
	;;
	.mmi
	ld8.c.clr r2 = [r15]
	;;
	cmp.eq p8, p9 = 0, r2
	nop 0
	;;
	.mib
	(p9) st8 [r2] = r14
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
	(p6) br.cond.dpnt .L419
	;;
	.mmi
	mov r45 = r37
	mov r44 = r32
	mov ar.lc = r14
	.align 32
.L421:
	.mmi
	ld8 r2 = [r36], 8
	mov r38 = r37
	add r37 = r37, r35
	;;
	.mii
	nop 0
	mov b6 = r2
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
	cmp4.eq p8, p9 = 0, r8
	(p8) br.cond.dpnt .L418
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L421
.L419:
	.mmi
	setf.sig f6 = r35
	setf.sig f7 = r39
	adds r3 = 1, r39
	.mmi
	mov r46 = r35
	mov r45 = r32
	cmp.eq p10, p11 = 0, r35
	;;
	.mmi
	setf.sig f8 = r33
	st8 [r34] = r3
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f9 = f6, f7, f8
	;;
	.mib
	getf.sig r38 = f9
	nop 0
	(p10) br.cond.dpnt .L418
	;;
	.mbb
	getf.sig r44 = f9
	br.call.sptk.many b0 = memmove#
	nop 0
	;;
	.mmi
	mov r1 = r42
	nop 0
	nop 0
.L418:
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
	(p6) br.cond.dpnt .L436
	;;
	.mmi
	mov r43 = r33
	mov r42 = r32
	mov ar.lc = r15
	.align 32
.L438:
	.mmi
	ld8 r2 = [r36], 8
	mov r37 = r33
	add r33 = r33, r35
	;;
	.mii
	nop 0
	mov b6 = r2
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
	cmp4.eq p8, p9 = 0, r8
	(p8) br.cond.dpnt .L435
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L438
.L436:
	.mmi
	mov r37 = r0
	nop 0
	nop 0
	;;
.L435:
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
	ld1 r25 = [r32]
	adds r26 = 1, r32
	;;
	sxt1 r14 = r25
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
	(p7) br.cond.dpnt .L451
	.mmi
	ld1.s r25 = [r26]
	nop 0
	nop 0
	;;
	.align 32
.L474:
	.mmi
	nop 0
	mov r32 = r26
	chk.s r25, .L475
.L476:
	.mii
	nop 0
	sxt1 r14 = r25
	adds r26 = 1, r26
	;;
	.mmi
	ld1.s r25 = [r26]
	adds r17 = -9, r14
	mov r15 = r14
	;;
	.mmi
	nop 0
	cmp4.geu p6, p7 = 4, r17
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L474
.L451:
	.mmi
	adds r10 = -48, r14
	mov r8 = r0
	nop 0
	.mmb
	cmp4.eq p8, p9 = 43, r14
	cmp4.eq p12, p13 = 45, r14
	(p8) br.cond.dpnt .L453
	;;
	.mib
	nop 0
	nop 0
	(p12) br.cond.dptk .L454
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r10
	(p7) br.cond.dpnt .L479
.L456:
	.mmi
	mov r8 = r0
	adds r32 = 1, r32
	nop 0
	.mmi
	adds r20 = -48, r15
	;;
	ld1.s r16 = [r32]
	nop 0
	;;
	.align 32
.L459:
	.mii
	shladd r11 = r8, 2, r0
	sxt1 r22 = r20
	chk.s r16, .L477
.L478:
	.mmi
	adds r32 = 1, r32
	nop 0
	sxt1 r15 = r16
	;;
	.mmi
	add r21 = r11, r8
	ld1.s r16 = [r32]
	adds r24 = -48, r15
	.mmi
	adds r20 = -48, r15
	;;
	shladd r23 = r21, 1, r0
	cmp4.geu p8, p9 = 9, r24
	;;
	.mib
	nop 0
	sub r8 = r23, r22
	(p8) br.cond.dptk .L459
	.mmi
	nop 0
	cmp4.ne p10, p11 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p11) sub r8 = r22, r23
	br.ret.sptk.many b0
.L454:
	.mmi
	adds r32 = 1, r32
	;;
	ld1 r8 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r8
	mov r8 = r0
	;;
	.mmi
	adds r9 = -48, r15
	;;
	cmp4.ltu p14, p15 = 9, r9
	nop 0
	;;
	.mib
	nop 0
	(p15) addl r19 = 1, r0
	(p15) br.cond.dptk .L456
.L479:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L453:
	.mmi
	adds r32 = 1, r32
	nop 0
	mov r19 = r0
	;;
	.mmi
	nop 0
	ld1 r2 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r2
	;;
	adds r3 = -48, r15
	;;
	.mbb
	cmp4.geu p10, p11 = 9, r3
	(p11) br.cond.dpnt .L479
	br .L456
.L475:
	.mib
	ld1 r25 = [r26]
	nop 0
	br .L476
.L477:
	.mib
	ld1 r16 = [r32]
	nop 0
	br .L478
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
	ld1 r25 = [r32]
	adds r26 = 1, r32
	;;
	sxt1 r14 = r25
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
	(p7) br.cond.dpnt .L482
	.mmi
	ld1.s r25 = [r26]
	nop 0
	nop 0
	;;
	.align 32
.L505:
	.mmi
	nop 0
	mov r32 = r26
	chk.s r25, .L506
.L507:
	.mii
	nop 0
	sxt1 r14 = r25
	adds r26 = 1, r26
	;;
	.mmi
	ld1.s r25 = [r26]
	adds r17 = -9, r14
	mov r15 = r14
	;;
	.mmi
	nop 0
	cmp4.geu p6, p7 = 4, r17
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L505
.L482:
	.mmi
	adds r10 = -48, r14
	mov r8 = r0
	nop 0
	.mmb
	cmp4.eq p8, p9 = 43, r14
	cmp4.eq p12, p13 = 45, r14
	(p8) br.cond.dpnt .L484
	;;
	.mib
	nop 0
	nop 0
	(p12) br.cond.dptk .L485
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r10
	(p7) br.cond.dpnt .L510
.L487:
	.mmi
	mov r8 = r0
	adds r32 = 1, r32
	nop 0
	.mmi
	adds r20 = -48, r15
	;;
	ld1.s r16 = [r32]
	nop 0
	;;
	.align 32
.L490:
	.mii
	shladd r11 = r8, 2, r0
	sxt1 r22 = r20
	chk.s r16, .L508
.L509:
	.mmi
	adds r32 = 1, r32
	nop 0
	sxt1 r15 = r16
	;;
	.mmi
	add r21 = r11, r8
	ld1.s r16 = [r32]
	adds r24 = -48, r15
	.mmi
	adds r20 = -48, r15
	;;
	shladd r23 = r21, 1, r0
	cmp4.geu p8, p9 = 9, r24
	;;
	.mib
	nop 0
	sub r8 = r23, r22
	(p8) br.cond.dptk .L490
	.mmi
	nop 0
	cmp4.ne p10, p11 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p11) sub r8 = r22, r23
	br.ret.sptk.many b0
.L485:
	.mmi
	adds r32 = 1, r32
	;;
	ld1 r8 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r8
	mov r8 = r0
	;;
	.mmi
	adds r9 = -48, r15
	;;
	cmp4.ltu p14, p15 = 9, r9
	nop 0
	;;
	.mib
	nop 0
	(p15) addl r19 = 1, r0
	(p15) br.cond.dptk .L487
.L510:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L484:
	.mmi
	adds r32 = 1, r32
	nop 0
	mov r19 = r0
	;;
	.mmi
	nop 0
	ld1 r2 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r2
	;;
	adds r3 = -48, r15
	;;
	.mbb
	cmp4.geu p10, p11 = 9, r3
	(p11) br.cond.dpnt .L510
	br .L487
.L506:
	.mib
	ld1 r25 = [r26]
	nop 0
	br .L507
.L508:
	.mib
	ld1 r16 = [r32]
	nop 0
	br .L509
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
	ld1 r25 = [r32]
	adds r26 = 1, r32
	;;
	sxt1 r14 = r25
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
	(p7) br.cond.dpnt .L513
	.mmi
	ld1.s r25 = [r26]
	nop 0
	nop 0
	;;
	.align 32
.L532:
	.mmi
	nop 0
	mov r32 = r26
	chk.s r25, .L534
.L535:
	.mii
	nop 0
	sxt1 r14 = r25
	adds r26 = 1, r26
	;;
	.mmi
	ld1.s r25 = [r26]
	adds r17 = -9, r14
	mov r15 = r14
	;;
	.mmi
	nop 0
	cmp4.geu p6, p7 = 4, r17
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq.or.andcm p6, p7 = 32, r14
	(p6) br.cond.dptk .L532
.L513:
	.mmi
	adds r10 = -48, r14
	mov r8 = r0
	nop 0
	.mmb
	cmp4.eq p8, p9 = 43, r14
	cmp4.ne p12, p13 = 45, r14
	(p8) br.cond.dpnt .L515
	;;
	.mib
	nop 0
	nop 0
	(p13) br.cond.dptk .L533
	;;
	.mib
	mov r19 = r0
	cmp4.geu p6, p7 = 9, r10
	(p7) br.cond.dpnt .L538
.L517:
	.mmi
	mov r8 = r0
	adds r32 = 1, r32
	nop 0
	.mmi
	adds r20 = -48, r15
	;;
	ld1.s r16 = [r32]
	nop 0
	;;
	.align 32
.L520:
	.mii
	shladd r11 = r8, 2, r0
	sxt1 r22 = r20
	chk.s r16, .L536
.L537:
	.mmi
	adds r32 = 1, r32
	nop 0
	sxt1 r15 = r16
	;;
	.mmi
	add r21 = r11, r8
	ld1.s r16 = [r32]
	adds r24 = -48, r15
	.mmi
	adds r20 = -48, r15
	;;
	shladd r23 = r21, 1, r0
	cmp4.geu p8, p9 = 9, r24
	;;
	.mib
	nop 0
	sub r8 = r23, r22
	(p8) br.cond.dptk .L520
	.mmi
	nop 0
	cmp4.ne p10, p11 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p11) sub r8 = r22, r23
	br.ret.sptk.many b0
.L533:
	.mmi
	adds r32 = 1, r32
	;;
	ld1 r8 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r8
	mov r8 = r0
	;;
	.mmi
	adds r9 = -48, r15
	;;
	cmp4.geu p14, p15 = 9, r9
	nop 0
	;;
	.mib
	nop 0
	(p14) addl r19 = 1, r0
	(p14) br.cond.dptk .L517
.L538:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L515:
	.mmi
	adds r32 = 1, r32
	nop 0
	mov r19 = r0
	;;
	.mmi
	nop 0
	ld1 r2 = [r32]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r15 = r2
	;;
	adds r3 = -48, r15
	;;
	.mbb
	cmp4.ltu p10, p11 = 9, r3
	(p10) br.cond.dpnt .L538
	br .L517
.L534:
	.mib
	ld1 r25 = [r26]
	nop 0
	br .L535
.L536:
	.mib
	ld1 r16 = [r32]
	nop 0
	br .L537
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
	(p6) br.cond.dpnt .L541
	br .L556
.L557:
	.mib
	ld8 r14 = [r36], 8
	sub r34 = r34, r37, 1
	br .L555
	;;
.L556:
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
.L555:
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
	getf.sig r15 = f2
	mov r1 = r40
	cmp4.gt p8, p9 = r0, r8
	.mmb
	cmp4.eq p10, p11 = 0, r8
	cmp.ne p12, p13 = 0, r34
	(p8) br.cond.dpnt .L545
	;;
	.mii
	nop 0
	shr.u r37 = r34, 1
	nop 0
	.mmb
	getf.sig r2 = f4
	mov r41 = r32
	(p10) br.cond.dpnt .L540
	;;
	.mmi
	nop 0
	add r3 = r15, r2
	nop 0
	;;
	.mib
	setf.sig f3 = r3
	nop 0
	(p12) br.cond.dptk .L557
.L541:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L540:
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
.L545:
	.body
	.copy_state 1
	.mmi
	mov r34 = r37
	nop 0
	mov r41 = r32
	;;
	.mib
	cmp.ne p12, p13 = 0, r34
	shr.u r37 = r34, 1
	(p12) br.cond.dptk .L557
	.mib
	nop 0
	nop 0
	br .L541
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
	cmp4.ne p6, p7 = 0, r34
	;;
	.mmi
	.save.f 0x1
	stf.spill [r16] = f2, 32
	.save.f 0x2
	stf.spill [r17] = f3
	.save rp, r40
	mov r40 = b0
	;;
	.mmi
	.save.f 0x4
	stf.spill [r16] = f4
	.body
	setf.sig f4 = r35
	nop 0
	;;
	.mmi
	nop 0
	setf.sig f3 = r33
	mov r33 = r34
	.bbb
	nop 0
	(p7) br.cond.dpnt .L563
	br .L576
.L577:
	.mmi
	nop 0
	ld8 r2 = [r36], 8
	nop 0
	;;
	.mmi
	ld8 r1 = [r36], -8
	nop 0
	nop 0
.L578:
	.mib
	nop 0
	nop 0
	br .L575
	;;
.L576:
	.mmi
	nop 0
	adds r38 = -1, r33
	extr r14 = r33, 1, 31
	.mmi
	ld8 r2 = [r36], 8
	mov r45 = r37
	mov r43 = r32
	;;
	.mmi
	setf.sig f2 = r14
	mov r39 = r14
	extr r33 = r38, 1, 31
	.mmi
	ld8 r1 = [r36], -8
	nop 0
	nop 0
	;;
	.align 32
.L575:
	.mmf
	nop 0
	nop 0
	xma.l f2 = f2, f4, f3
	.mii
	nop 0
	mov b6 = r2
	adds r38 = -1, r39
	;;
	.mib
	getf.sig r44 = f2
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmi
	getf.sig r15 = f2
	mov r1 = r42
	cmp4.eq p8, p9 = 0, r8
	.mmb
	cmp4.ge p10, p11 = 0, r8
	cmp4.ne p14, p15 = 0, r33
	(p8) br.cond.dpnt .L558
	;;
	.mii
	getf.sig r3 = f4
	extr r14 = r33, 1, 31
	mov r45 = r37
	.mmb
	mov r43 = r32
	cmp4.eq p12, p13 = 0, r39
	(p10) br.cond.dpnt .L561
	;;
	.mmi
	setf.sig f2 = r14
	mov r39 = r14
	adds r38 = -1, r33
	;;
	.mii
	nop 0
	extr r33 = r38, 1, 31
	;;
	add r8 = r15, r3
	;;
	.mib
	setf.sig f3 = r8
	nop 0
	(p14) br.cond.dptk .L577
.L563:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L558:
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
.L561:
	.body
	.copy_state 1
	.pred.rel.mutex p12, p13
	.mib
	mov r33 = r39
	nop 0
	(p12) br.cond.dpnt .L563
	;;
	.mii
	nop 0
	extr r14 = r33, 1, 31
	nop 0
	.mmi
	ld8 r2 = [r36], 8
	nop 0
	nop 0
	;;
	.mmi
	setf.sig f2 = r14
	mov r39 = r14
	extr r33 = r38, 1, 31
	.mmb
	nop 0
	ld8 r1 = [r36], -8
	br .L578
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
	mov r14 = r0
	adds r16 = 20, r12
	.mmi
	mov r1 = r37
	;;
	nop 0
	unpack4.l r2 = r8, r34
	.mmi
	ld4.a r8 = [r16]
	;;
	st8 [r15] = r2
	nop 0
	;;
	.mmi
	nop 0
	ld4 r3 = [r15]
	nop 0
	;;
	.mii
	nop 0
	shl r9 = r3, 32
	;;
	mix4.l r14 = r14, r9
	;;
	.mmi
	ld4.c.clr r8 = [r16]
	;;
	nop 0
	mix4.r r14 = r8, r14
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
	(p7) br.cond.dpnt .L597
	.align 32
.L594:
	.mib
	cmp4.ne p8, p9 = r14, r33
	nop 0
	(p9) br.cond.dpnt .L603
	;;
	.mmi
	adds r32 = 4, r32
	;;
	ld4 r14 = [r32]
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p10, p11 = 0, r14
	(p11) br.cond.dptk .L594
.L597:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	;;
.L603:
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
.L607:
	.mmi
	ld4 r14 = [r32]
	nop 0
	adds r32 = 4, r32
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mmi
	nop 0
	cmp4.ne p6, p7 = r15, r14
	cmp4.ne p8, p9 = 0, r14
	.bbb
	nop 0
	(p6) br.cond.dpnt .L605
	(p8) br.cond.dptk .L607
.L605:
	.mmi
	addl r8 = -1, r0
	nop 0
	cmp4.lt p10, p11 = r15, r14
	.mmb
	cmp4.gt p12, p13 = r15, r14
	nop 0
	(p12) br.cond.dptk .L604
	;;
	.mii
	(p10) addl r8 = 1, r0
	nop 0
	;;
	(p11) mov r8 = r0
.L604:
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
.L614:
	.mmi
	ld4 r2 = [r33]
	nop 0
	adds r33 = 4, r33
	;;
	.mmi
	nop 0
	st4 [r15] = r2
	adds r15 = 4, r15
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r2
	(p6) br.cond.dptk .L614
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
	(p6) br.cond.dpnt .L618
	;;
	.align 32
.L620:
	.mmi
	mov r8 = r14
	nop 0
	adds r14 = 4, r14
	;;
	.mmi
	nop 0
	ld4 r2 = [r8]
	nop 0
	;;
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r2
	(p8) br.cond.dptk .L620
	.mii
	sub r3 = r8, r32
	nop 0
	;;
	shr r8 = r3, 2
.L618:
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
	(p6) br.cond.dpnt .L636
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L627:
	.mmi
	ld4 r15 = [r32]
	mov r16 = r32
	adds r32 = 4, r32
	.mii
	ld4 r9 = [r33]
	adds r33 = 4, r33
	;;
	cmp4.ne p8, p9 = 0, r15
	;;
	.mbb
	cmp4.eq.and.orcm p8, p9 = r15, r9
	(p9) br.cond.dpnt .L640
	br.cloop.sptk.few .L627
.L636:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L625:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L640:
	.mmi
	ld4 r10 = [r16]
	nop 0
	addl r8 = -1, r0
	;;
	.mib
	cmp4.lt p10, p11 = r9, r10
	cmp4.le p12, p13 = r9, r10
	(p13) br.cond.dptk .L625
	;;
	.mmi
	(p10) addl r8 = 1, r0
	nop 0
	mov ar.lc = r2
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
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
	(p6) br.cond.dpnt .L649
	.align 32
.L643:
	.mmi
	mov r8 = r32
	ld4 r3 = [r32]
	adds r32 = 4, r32
	;;
	.mbb
	cmp4.ne p8, p9 = r33, r3
	(p9) br.cond.dpnt .L641
	br.cloop.sptk.few .L643
.L649:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L641:
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
	(p6) br.cond.dpnt .L663
	.align 32
.L654:
	.mmi
	ld4 r9 = [r32]
	ld4 r10 = [r33]
	adds r32 = 4, r32
	.mmi
	nop 0
	adds r33 = 4, r33
	nop 0
	;;
	.mbb
	cmp4.eq p8, p9 = r10, r9
	(p9) br.cond.dpnt .L667
	br.cloop.sptk.few .L654
.L663:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L652:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L667:
	.mmi
	addl r8 = -1, r0
	nop 0
	cmp4.lt p10, p11 = r10, r9
	.mmb
	cmp4.le p12, p13 = r10, r9
	nop 0
	(p13) br.cond.dptk .L652
	;;
	.mmi
	(p10) addl r8 = 1, r0
	nop 0
	mov ar.lc = r2
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
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
	(p6) br.cond.dpnt .L669
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L669:
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
	mov r23 = r32
	mov r15 = r33
	.mmi
	adds r14 = -1, r34
	sub r17 = r32, r33
	shladd r21 = r34, 2, r0
	;;
	.mmi
	shladd r24 = r14, 2, r0
	cmp.geu p12, p13 = 8, r14
	or r3 = r32, r33
	.mmi
	cmp.ne p6, p7 = r33, r32
	cmp.gtu p8, p9 = r21, r17
	shr.u r16 = r34, 1
	;;
	.mmi
	(p12) adds r21 = 4, r33
	and r9 = 7, r3
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	adds r16 = -1, r16
	cmp.ne p10, p11 = 0, r34
	(p7) br.cond.dpnt .L690
	;;
	.bbb
	(p8) br.cond.dptk .L677
	(p11) br.cond.dpnt .L690
	(p12) br.cond.dpnt .L681
	;;
	.mii
	adds r21 = 4, r33
	mov ar.lc = r16
	cmp.lt p6, p7 = 2, r16
	;;
	.mmi
	nop 0
	cmp.ne p14, p15 = r21, r32
	nop 0
	;;
	.mib
	cmp.eq.and.orcm p14, p15 = 0, r9
	nop 0
	(p15) br.cond.dpnt .L681
	;;
	.mib
	nop 0
	mov r14 = r32
	(p7) br.cond.dptk .L707
	;;
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
.L684:
	.mmi
	ld8 r16 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r16
	adds r14 = 8, r14
	br.cloop.sptk.few .L684
	.mib
	and r11 = -2, r34
	tbit.z p8, p9 = r34, 0
	(p8) br.cond.dpnt .L690
	;;
.L711:
	.mmi
	shladd r15 = r11, 2, r0
	;;
	add r33 = r33, r15
	add r18 = r8, r15
	;;
	.mmi
	nop 0
	ld4 r19 = [r33]
	nop 0
	;;
	.mmi
	st4 [r18] = r19
	nop 0
	nop 0
.L690:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L707:
	.mmi
	ld8 r10 = [r15]
	nop 0
	adds r15 = 8, r15
	;;
	.mib
	st8 [r14] = r10
	adds r14 = 8, r14
	br.cloop.sptk.few .L707
	.mmi
	nop 0
	and r11 = -2, r34
	tbit.z p8, p9 = r34, 0
	.bbb
	nop 0
	(p9) br.cond.dptk .L711
	br .L690
	;;
.L677:
	.mmi
	add r33 = r33, r24
	add r14 = r32, r24
	shr.u r15 = r24, 2
	.mmb
	cmp.eq p10, p11 = 0, r34
	nop 0
	(p10) br.cond.dpnt .L690
	;;
	.mii
	nop 0
	mov ar.lc = r15
	nop 0
	.mmb
	cmp.lt p12, p13 = 2, r15
	nop 0
	(p13) br.cond.dptk .L706
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
.L680:
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = -4, r33
	;;
	.mib
	st4 [r14] = r15
	adds r14 = -4, r14
	br.cloop.sptk.few .L680
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L706:
	.mmi
	ld4 r25 = [r33]
	nop 0
	adds r33 = -4, r33
	;;
	.mib
	st4 [r14] = r25
	adds r14 = -4, r14
	br.cloop.sptk.few .L706
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L681:
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L683:
	.mmi
	mov r20 = r33
	mov r33 = r21
	adds r21 = 4, r21
	;;
	.mmi
	nop 0
	ld4 r22 = [r20]
	nop 0
	;;
	.mib
	st4 [r23] = r22
	adds r23 = 4, r23
	br.cloop.sptk.few .L683
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
	mov r3 = r32
	nop 0
	cmp.eq p6, p7 = 0, r34
	;;
	.mmi
	nop 0
	cmp.geu p8, p9 = 5, r16
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.bbb
	nop 0
	(p6) br.cond.dpnt .L715
	(p8) br.cond.dpnt .L720
	.mii
	cmp.eq p10, p11 = 0, r14
	unpack4.l r15 = r33, r33
	shladd r9 = r14, 2, r0
	;;
	.mmi
	(p11) adds r16 = -2, r34
	sub r34 = r34, r14
	nop 0
	.mmi
	(p10) mov r17 = r32
	(p11) st4 [r32] = r33
	add r11 = r32, r9
	;;
	.mii
	nop 0
	shr.u r18 = r34, 1
	(p11) adds r17 = 4, r32
	;;
	.mii
	adds r10 = -1, r18
	nop 0
	;;
	mov ar.lc = r10
	;;
	.align 32
.L718:
	.mib
	st8 [r11] = r15
	adds r11 = 8, r11
	br.cloop.sptk.few .L718
	.mib
	and r19 = -2, r34
	tbit.z p12, p13 = r34, 0
	(p12) br.cond.dpnt .L715
	;;
	.mii
	shladd r20 = r19, 2, r0
	sub r16 = r16, r19
	;;
	add r3 = r17, r20
	;;
.L716:
	.mmi
	adds r22 = 4, r3
	adds r23 = 8, r3
	adds r24 = 12, r3
	.mmi
	adds r25 = 16, r3
	adds r21 = 20, r3
	cmp.eq p12, p13 = 4, r16
	;;
	.mmi
	st4 [r3] = r33
	cmp.eq p14, p15 = 0, r16
	cmp.eq p6, p7 = 1, r16
	.mmb
	cmp.eq p8, p9 = 2, r16
	cmp.eq p10, p11 = 3, r16
	(p14) br.cond.dpnt .L715
	;;
	.mib
	st4 [r22] = r33
	nop 0
	(p6) br.cond.dpnt .L715
	;;
	.mib
	st4 [r23] = r33
	nop 0
	(p8) br.cond.dpnt .L715
	;;
	.mib
	st4 [r24] = r33
	nop 0
	(p10) br.cond.dpnt .L715
	;;
	.mmi
	st4 [r25] = r33
	(p13) st4 [r21] = r33
	nop 0
.L715:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L720:
	.mib
	nop 0
	nop 0
	br .L716
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
	(p6) br.cond.dptk .L747
	.mmi
	nop 0
	add r17 = r32, r34
	add r16 = r33, r34
	.mmb
	nop 0
	cmp.eq p32, p33 = 0, r34
	(p32) br.cond.dpnt .L746
	.mmi
	nop 0
	adds r20 = -1, r34
	nop 0
	;;
	.mib
	nop 0
	cmp.geu p34, p35 = 8, r20
	(p34) br.cond.dpnt .L749
	.mmi
	adds r22 = -8, r34
	adds r19 = -2, r34
	add r24 = r33, r20
	;;
	.mmi
	add r14 = r32, r22
	add r33 = r33, r22
	add r32 = r32, r19
	;;
	.mmi
	sub r27 = r24, r32
	nop 0
	or r21 = r33, r14
	;;
	.mii
	adds r23 = 6, r27
	and r25 = 7, r21
	;;
	cmp.ltu p36, p37 = 6, r23
	.mmi
	cmp.eq p38, p39 = 0, r25
	;;
	(p38) addl r25 = 1, r0
	(p36) addl r23 = 1, r0
	;;
	.mii
	(p39) mov r25 = r0
	(p37) mov r23 = r0
	;;
	and r26 = r25, r23
	;;
	.mib
	nop 0
	cmp4.eq p40, p41 = 0, r26
	(p40) br.cond.dpnt .L749
	.mmi
	and r18 = -8, r34
	;;
	adds r28 = -8, r18
	nop 0
	;;
	.mii
	nop 0
	shr.u r15 = r28, 3
	;;
	mov ar.lc = r15
	.mmb
	nop 0
	cmp.lt p42, p43 = 2, r15
	(p43) br.cond.dptk .L817
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
.L750:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = -8, r33
	br.cloop.sptk.few .L750
	;;
.L818:
	.mmi
	sub r30 = r16, r18
	sub r31 = r17, r18
	nop 0
	.mmb
	sub r33 = r34, r18
	cmp.eq p44, p45 = r18, r34
	(p44) br.cond.dpnt .L746
	;;
	.mmi
	adds r17 = -1, r31
	adds r14 = -1, r30
	adds r34 = -2, r31
	.mmi
	adds r18 = -2, r30
	cmp.eq p48, p49 = 2, r33
	adds r8 = -3, r31
	;;
	.mmi
	ld1 r16 = [r17]
	adds r20 = -3, r30
	cmp.eq p50, p51 = 3, r33
	.mmi
	adds r9 = -4, r31
	adds r22 = -4, r30
	cmp.eq p52, p53 = 4, r33
	;;
	.mmi
	adds r10 = -5, r31
	adds r19 = -5, r30
	cmp.eq p54, p55 = 5, r33
	.mmi
	adds r11 = -6, r31
	adds r24 = -6, r30
	cmp.eq p56, p57 = 6, r33
	;;
	.mmi
	adds r15 = -7, r31
	ld1.sa r32 = [r34]
	adds r27 = -7, r30
	.mmb
	st1 [r14] = r16
	cmp.eq p46, p47 = 1, r33
	(p46) br.cond.dpnt .L746
	;;
	.mmi
	ld1.sa r21 = [r8]
	ld1.sa r23 = [r9]
	nop 0
	;;
	.mmi
	ld1.sa r25 = [r10]
	;;
	ld1.c.clr r32 = [r34]
	nop 0
	;;
	.mib
	st1 [r18] = r32
	nop 0
	(p48) br.cond.dpnt .L746
	;;
	.mmi
	ld1.sa r26 = [r11]
	;;
	ld1.c.clr r21 = [r8]
	nop 0
	;;
	.mib
	st1 [r20] = r21
	nop 0
	(p50) br.cond.dpnt .L746
	;;
	.mmi
	ld1.sa r28 = [r15]
	;;
	ld1.c.clr r23 = [r9]
	nop 0
	;;
	.mib
	st1 [r22] = r23
	nop 0
	(p52) br.cond.dpnt .L746
	;;
	.mmi
	nop 0
	ld1.c.clr r25 = [r10]
	nop 0
	;;
	.mib
	st1 [r19] = r25
	nop 0
	(p54) br.cond.dpnt .L746
	;;
	.mmi
	nop 0
	ld1.c.clr r26 = [r11]
	nop 0
	;;
	.mib
	st1 [r24] = r26
	nop 0
	(p56) br.cond.dpnt .L746
	;;
	.mmi
	nop 0
	ld1.c.clr r28 = [r15]
	nop 0
	;;
	.mmi
	st1 [r27] = r28
	nop 0
	nop 0
.L746:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L747:
	.mib
	nop 0
	cmp.eq p2, p3 = r33, r32
	(p2) br.cond.dpnt .L746
	.mib
	nop 0
	cmp.eq p4, p5 = 0, r34
	(p4) br.cond.dpnt .L746
	.mmi
	adds r14 = -1, r34
	;;
	cmp.geu p8, p9 = 7, r14
	nop 0
	;;
	.mib
	nop 0
	(p8) adds r15 = 1, r32
	(p8) br.cond.dpnt .L754
	;;
	.mmi
	or r8 = r33, r32
	sub r16 = r33, r32, 1
	adds r15 = 1, r32
	;;
	.mii
	and r9 = 7, r8
	cmp.ltu p10, p11 = 6, r16
	;;
	cmp.eq p12, p13 = 0, r9
	.mmi
	(p10) addl r16 = 1, r0
	;;
	(p11) mov r16 = r0
	(p12) addl r9 = 1, r0
	;;
	.mmi
	(p13) mov r9 = r0
	;;
	and r10 = r16, r9
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r10
	(p14) br.cond.dpnt .L754
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
	cmp.lt p16, p17 = 2, r15
	nop 0
	(p17) br.cond.dptk .L820
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
.L755:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = 8, r33
	br.cloop.sptk.few .L755
.L821:
	.mmi
	add r32 = r32, r17
	sub r27 = r34, r17
	adds r18 = 1, r16
	.mmi
	adds r19 = 2, r16
	adds r20 = 3, r16
	adds r22 = 4, r16
	;;
	.mmi
	adds r24 = 5, r16
	cmp.eq p22, p23 = 2, r27
	adds r21 = 2, r32
	.mmi
	cmp.eq p24, p25 = 3, r27
	adds r23 = 3, r32
	cmp.eq p26, p27 = 4, r27
	;;
	.mmi
	adds r25 = 4, r32
	cmp.eq p28, p29 = 5, r27
	adds r26 = 5, r32
	.mmi
	cmp.eq p30, p31 = 6, r27
	ld1.s r28 = [r32]
	adds r29 = 6, r32
	;;
	.mmi
	adds r31 = 6, r16
	ld1.sa r33 = [r21]
	cmp.eq p18, p19 = r17, r34
	.mmb
	adds r17 = 1, r32
	cmp.eq p20, p21 = 1, r27
	(p18) br.cond.dpnt .L746
	;;
	.mmi
	nop 0
	ld1.sa r30 = [r17]
	mov ar.lc = r3
	.mii
	ld1.sa r34 = [r23]
	nop 0
	;;
	chk.s r28, .L827
.L828:
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.mib
	st1 [r16] = r28
	nop 0
	(p20) br.cond.dpnt .L746
	;;
	.mmi
	ld1.sa r14 = [r25]
	;;
	ld1.c.clr r30 = [r17]
	nop 0
	;;
	.mib
	st1 [r18] = r30
	nop 0
	(p22) br.cond.dpnt .L746
	;;
	.mmi
	ld1.sa r8 = [r26]
	;;
	ld1.c.clr r33 = [r21]
	nop 0
	;;
	.mib
	st1 [r19] = r33
	nop 0
	(p24) br.cond.dpnt .L746
	;;
	.mmi
	ld1.sa r16 = [r29]
	;;
	ld1.c.clr r34 = [r23]
	nop 0
	;;
	.mib
	st1 [r20] = r34
	nop 0
	(p26) br.cond.dpnt .L746
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r22] = r14
	nop 0
	(p28) br.cond.dpnt .L746
	;;
	.mmi
	nop 0
	ld1.c.clr r8 = [r26]
	nop 0
	;;
	.mib
	st1 [r24] = r8
	nop 0
	(p30) br.cond.dpnt .L746
	;;
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	.mmi
	ld1.c.clr r16 = [r29]
	nop 0
	nop 0
	;;
	.mib
	st1 [r31] = r16
	nop 0
	br.ret.sptk.many b0
.L817:
	.mmi
	ld8 r29 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r33] = r29
	adds r33 = -8, r33
	br.cloop.sptk.few .L817
	.mib
	nop 0
	nop 0
	br .L818
.L820:
	.mmi
	ld8 r11 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r33] = r11
	adds r33 = 8, r33
	br.cloop.sptk.few .L820
	.mib
	nop 0
	nop 0
	br .L821
.L749:
	.mmi
	sub r29 = r17, r34
	adds r14 = -1, r16
	adds r15 = -1, r17
	;;
	.mmi
	nop 0
	sub r30 = r17, r29, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r30
	;;
	mov r16 = ar.lc
	;;
	.mib
	nop 0
	cmp.lt p58, p59 = 2, r16
	(p59) br.cond.dptk .L819
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
.L752:
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r14] = r16
	adds r14 = -1, r14
	br.cloop.sptk.few .L752
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L819:
	.mmi
	ld1 r31 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r14] = r31
	adds r14 = -1, r14
	br.cloop.sptk.few .L819
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L754:
	.mmi
	nop 0
	add r9 = r32, r34
	nop 0
	;;
	.mii
	sub r10 = r9, r15
	nop 0
	;;
	mov ar.lc = r10
	.align 32
.L758:
	.mmi
	mov r11 = r32
	mov r32 = r15
	adds r15 = 1, r15
	;;
	.mmi
	nop 0
	ld1 r18 = [r11]
	nop 0
	;;
	.mib
	st1 [r33] = r18
	adds r33 = 1, r33
	br.cloop.sptk.few .L758
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L827:
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.mib
	ld1 r28 = [r32]
	nop 0
	br .L828
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
	and r2 = 63, r14
	;;
	.mii
	nop 0
	shl r3 = r32, r33
	;;
	shr.u r32 = r32, r2
	;;
	.mib
	nop 0
	or r8 = r3, r32
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
	and r2 = 63, r14
	;;
	.mii
	nop 0
	shr.u r3 = r32, r33
	;;
	shl r32 = r32, r2
	;;
	.mib
	nop 0
	or r8 = r3, r32
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
	addp4 r2 = r33, r0
	;;
	.mib
	nop 0
	shr.u r8 = r8, r2
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
	and r2 = 63, r14
	;;
	.mii
	nop 0
	shl r3 = r32, r33
	;;
	shr.u r32 = r32, r2
	;;
	.mib
	nop 0
	or r8 = r3, r32
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
	and r2 = 63, r14
	;;
	.mii
	nop 0
	shr.u r3 = r32, r33
	;;
	shl r32 = r32, r2
	;;
	.mib
	nop 0
	or r8 = r3, r32
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
	and r2 = 15, r14
	nop 0
	;;
	.mii
	nop 0
	shl r3 = r32, r33
	;;
	shr.u r8 = r32, r2
	;;
	.mib
	nop 0
	or r8 = r3, r8
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
	and r2 = 15, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r3 = r8, r33
	;;
	shl r9 = r8, r2
	;;
	.mib
	nop 0
	or r8 = r9, r3
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
	and r2 = 7, r14
	nop 0
	;;
	.mii
	nop 0
	shl r3 = r32, r33
	;;
	shr.u r8 = r32, r2
	;;
	.mib
	nop 0
	or r8 = r3, r8
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
	and r2 = 7, r14
	nop 0
	;;
	.mii
	nop 0
	shr.u r3 = r8, r33
	;;
	shl r9 = r8, r2
	;;
	.mib
	nop 0
	or r8 = r9, r3
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
	dep.z r2 = r8, 8, 24
	nop 0
	;;
	.mib
	nop 0
	or r8 = r2, r32
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
	and r2 = r14, r8
	nop 0
	dep.z r16 = r32, 24, 8
	;;
	.mii
	or r9 = r16, r2
	extr.u r15 = r32, 24, 8
	and r32 = r32, r14
	;;
	.mmi
	or r10 = r15, r9
	nop 0
	shr.u r3 = r32, 8
	;;
	.mib
	nop 0
	or r8 = r3, r10
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
.L858:
	.mii
	nop 0
	shr.u r3 = r32, r14
	adds r8 = 1, r8
	;;
	.mmi
	addp4 r14 = r8, r0
	;;
	nop 0
	tbit.z p6, p7 = r3, 0
	.bbb
	nop 0
	(p7) br.cond.dpnt .L855
	br.cloop.sptk.few .L858
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L855:
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
	cmp4.ne p8, p9 = 0, r14
	(p6) br.cond.dpnt .L862
	;;
	.mib
	nop 0
	mov r8 = r14
	(p8) br.cond.dpnt .L862
	;;
	.mmi
	addl r8 = 1, r0
	nop 0
	nop 0
	;;
	.align 32
.L864:
	.mii
	nop 0
	extr r2 = r32, 1, 31
	adds r8 = 1, r8
	;;
	.mib
	mov r32 = r2
	tbit.z p10, p11 = r2, 0
	(p10) br.cond.dptk .L864
.L862:
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
	movl r2 = 0xff7fffff
	.mlx
	addl r8 = 1, r0
	movl r14 = 0x7f7fffff
	;;
	.mmi
	setf.s f6 = r2
	setf.s f7 = r14
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
	(p6) br.cond.dptk .L869
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p8, p9 = f8, f7
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L869:
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
	movl r2 = 0xffefffffffffffff
	.mlx
	addl r8 = 1, r0
	movl r14 = 0x7fefffffffffffff
	;;
	.mmi
	setf.d f6 = r2
	setf.d f7 = r14
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
	(p6) br.cond.dptk .L874
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p8, p9 = f8, f7
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L874:
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
	add r3 = r1, r14
	nop 0
	add r2 = r1, r15
	;;
	.mmi
	ldfe f6 = [r3]
	ldfe f7 = [r2]
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
	(p6) br.cond.dptk .L879
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p8, p9 = f8, f7
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L879:
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
	fcvt.xf f7 = f6
	;;
	.mib
	stfe [r32] = f7
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
	tbit.z p12, p13 = r33, 0
	.mlx
	cmp4.le p8, p9 = r0, r33
	movl r14 = 0x40000000
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L887
	;;
	.mfi
	nop 0
	fadd.s f6 = f8, f8
	nop 0
	.mlx
	setf.s f7 = r14
	(p9) movl r14 = 0x3f000000
	;;
	.mmi
	nop 0
	(p9) setf.s f7 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.eq p10, p11 = f6, f8
	;;
	.mbb
	nop 0
	(p10) br.cond.dptk .L887
	(p12) br.cond.dptk .L889
	.align 32
.L890:
	.mfi
	nop 0
	fmpy.s f8 = f8, f7
	nop 0
.L889:
	.mii
	nop 0
	extr.u r2 = r33, 31, 1
	;;
	add r33 = r2, r33
	;;
	.mii
	nop 0
	extr r33 = r33, 1, 31
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r33
	(p14) br.cond.dpnt .L887
	.mfi
	nop 0
	fmpy.s f7 = f7, f7
	nop 0
.L891:
	.mii
	nop 0
	extr.u r3 = r33, 31, 1
	nop 0
	;;
	.mib
	add r8 = r3, r33
	tbit.nz p8, p9 = r33, 0
	(p8) br.cond.dptk .L890
	;;
	.mfi
	nop 0
	fmpy.s f7 = f7, f7
	extr r33 = r8, 1, 31
	.mmb
	nop 0
	nop 0
	br .L891
.L887:
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
	tbit.z p12, p13 = r33, 0
	.mlx
	cmp4.le p8, p9 = r0, r33
	movl r14 = 0x4000000000000000
	;;
	.mib
	nop 0
	nop 0
	(p6) br.cond.dpnt .L899
	;;
	.mfi
	nop 0
	fadd.d f6 = f8, f8
	nop 0
	.mlx
	setf.d f7 = r14
	(p9) movl r14 = 0x3fe0000000000000
	;;
	.mmi
	nop 0
	(p9) setf.d f7 = r14
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.eq p10, p11 = f6, f8
	;;
	.mbb
	nop 0
	(p10) br.cond.dptk .L899
	(p12) br.cond.dptk .L901
	.align 32
.L902:
	.mfi
	nop 0
	fmpy.d f8 = f8, f7
	nop 0
.L901:
	.mii
	nop 0
	extr.u r2 = r33, 31, 1
	;;
	add r33 = r2, r33
	;;
	.mii
	nop 0
	extr r33 = r33, 1, 31
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r33
	(p14) br.cond.dpnt .L899
	.mfi
	nop 0
	fmpy.d f7 = f7, f7
	nop 0
.L903:
	.mii
	nop 0
	extr.u r3 = r33, 31, 1
	nop 0
	;;
	.mib
	add r8 = r3, r33
	tbit.nz p8, p9 = r33, 0
	(p8) br.cond.dptk .L902
	;;
	.mfi
	nop 0
	fmpy.d f7 = f7, f7
	extr r33 = r8, 1, 31
	.mmb
	nop 0
	nop 0
	br .L903
.L899:
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
	tbit.z p12, p13 = r34, 0
	.mlx
	cmp4.le p8, p9 = r0, r34
	movl r14 = @gprel(.LC4)
	;;
	.mlx
	nop 0
	movl r15 = @gprel(.LC5)
	.mmb
	add r2 = r1, r14
	nop 0
	(p6) br.cond.dpnt .L911
	;;
	.mfi
	nop 0
	fadd f6 = f8, f8
	add r3 = r1, r15
	;;
	.mmf
	nop 0
	nop 0
	fcmp.eq p10, p11 = f6, f8
	;;
	.mib
	nop 0
	nop 0
	(p10) br.cond.dptk .L911
	;;
	.mmi
	nop 0
	(p8) ldfe f6 = [r2]
	nop 0
	;;
	.mib
	(p9) ldfe f6 = [r3]
	nop 0
	(p12) br.cond.dptk .L913
	;;
	.align 32
.L914:
	.mfi
	nop 0
	fmpy f8 = f8, f6
	nop 0
.L913:
	.mii
	nop 0
	extr.u r8 = r34, 31, 1
	;;
	add r34 = r8, r34
	;;
	.mii
	nop 0
	extr r34 = r34, 1, 31
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r34
	(p14) br.cond.dpnt .L911
	.mfi
	nop 0
	fmpy f6 = f6, f6
	nop 0
.L915:
	.mii
	nop 0
	extr.u r9 = r34, 31, 1
	nop 0
	;;
	.mib
	add r10 = r9, r34
	tbit.nz p8, p9 = r34, 0
	(p8) br.cond.dptk .L914
	;;
	.mfi
	nop 0
	fmpy f6 = f6, f6
	extr r34 = r10, 1, 31
	.mmb
	nop 0
	nop 0
	br .L915
.L911:
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
	add r27 = r33, r34
	mov r8 = r32
	mov r14 = r32
	.mmi
	adds r20 = -1, r34
	or r15 = r33, r32
	mov r16 = r33
	;;
	.mmb
	and r19 = -8, r34
	and r9 = 7, r15
	nop 0
	.mii
	mov r15 = r8
	.save pr, r2
	mov r2 = pr
	cmp.eq p6, p7 = 0, r34
	;;
	.mmb
	add r18 = r32, r19
	adds r17 = -8, r19
	nop 0
	.mmi
	cmp.geu p2, p3 = 6, r20
	cmp.ne p4, p5 = 0, r9
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	;;
	.mbb
	nop 0
	(p6) br.cond.dpnt .L923
	(p2) br.cond.dpnt .L962
	;;
	.mib
	nop 0
	shr.u r10 = r17, 3
	(p4) br.cond.dpnt .L962
	;;
	.mii
	nop 0
	mov ar.lc = r10
	nop 0
	.align 32
.L925:
	.mmi
	ld8 r21 = [r16]
	ld8 r11 = [r14]
	adds r16 = 8, r16
	;;
	.mmi
	nop 0
	xor r22 = r21, r11
	nop 0
	;;
	.mib
	st8 [r14] = r22
	adds r14 = 8, r14
	br.cloop.sptk.few .L925
	.mmi
	adds r17 = 6, r18
	add r33 = r33, r19
	sub r20 = r34, r19
	.mmi
	adds r28 = 1, r18
	adds r29 = 2, r18
	adds r30 = 3, r18
	;;
	.mmi
	ld1.sa r21 = [r29]
	adds r31 = 4, r18
	adds r32 = 5, r18
	.mmi
	adds r23 = 1, r33
	cmp.eq p20, p21 = 2, r20
	adds r24 = 2, r33
	;;
	.mmi
	ld1.s r10 = [r23]
	cmp.eq p10, p11 = 3, r20
	adds r25 = 3, r33
	.mmi
	cmp.eq p12, p13 = 4, r20
	adds r26 = 4, r33
	cmp.eq p14, p15 = 5, r20
	;;
	.mmi
	ld1.s r16 = [r24]
	adds r27 = 5, r33
	cmp.eq p16, p17 = 6, r20
	.mmb
	adds r9 = 6, r33
	cmp.eq p8, p9 = r19, r34
	(p8) br.cond.dpnt .L923
	;;
	.mmi
	nop 0
	ld1 r34 = [r18]
	cmp.eq p18, p19 = 1, r20
	.mmi
	ld1 r19 = [r33]
	;;
	ld1.s r14 = [r25]
	xor r15 = r19, r34
	.mmi
	nop 0
	ld1.s r33 = [r26]
	nop 0
	;;
	.mib
	st1 [r18] = r15
	nop 0
	(p18) br.cond.dpnt .L923
	;;
	.mii
	ld1 r18 = [r28]
	nop 0
	;;
	chk.s r10, .L963
.L964:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.mmi
	ld1.s r23 = [r27]
	nop 0
	xor r11 = r18, r10
	;;
	.mib
	st1 [r28] = r11
	nop 0
	(p20) br.cond.dpnt .L923
	;;
	.mmi
	ld1.sa r28 = [r30]
	;;
	ld1.c.clr r21 = [r29]
	chk.s r16, .L965
	;;
.L966:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	nop 0
	xor r22 = r21, r16
	nop 0
	;;
	.mib
	st1 [r29] = r22
	nop 0
	(p10) br.cond.dpnt .L923
	;;
	.mmi
	nop 0
	ld1.c.clr r28 = [r30]
	chk.s r14, .L967
.L968:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	ld1.s r25 = [r9]
	;;
	xor r29 = r28, r14
	nop 0
	;;
	.mib
	st1 [r30] = r29
	nop 0
	(p12) br.cond.dpnt .L923
	;;
	.mii
	ld1 r30 = [r31]
	nop 0
	;;
	chk.s r33, .L969
.L970:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	nop 0
	xor r20 = r30, r33
	nop 0
	;;
	.mib
	st1 [r31] = r20
	nop 0
	(p14) br.cond.dpnt .L923
	;;
	.mii
	ld1 r31 = [r32]
	nop 0
	;;
	chk.s r23, .L971
.L972:
	.pred.rel.mutex p16, p17
	.mmi
	nop 0
	xor r24 = r31, r23
	nop 0
	;;
	.mib
	st1 [r32] = r24
	nop 0
	(p16) br.cond.dpnt .L923
	;;
	.mii
	ld1 r32 = [r17]
	nop 0
	;;
	chk.s r25, .L973
.L974:
	.mmi
	nop 0
	xor r26 = r32, r25
	nop 0
	;;
	.mmi
	st1 [r17] = r26
	nop 0
	nop 0
.L923:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L962:
	.mmi
	sub r34 = r27, r33, 1
	mov r16 = r8
	mov r17 = r33
	;;
	.mii
	nop 0
	mov ar.lc = r34
	;;
	mov r19 = ar.lc
	;;
	.mib
	adds r14 = -1, r19
	cmp.lt p22, p23 = 2, r19
	(p23) br.cond.dptk .L958
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L927:
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
	br.cloop.sptk.few .L927
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
.L958:
	.mmi
	nop 0
	mov r17 = r33
	adds r33 = 1, r33
	.mmi
	ld1.sa r18 = [r16]
	;;
	ld1.s r10 = [r17]
	nop 0
	;;
	.align 32
.L955:
	.mmi
	mov r15 = r16
	adds r16 = 1, r16
	chk.s r10, .L959
.L960:
	.mmi
	mov r17 = r33
	nop 0
	adds r33 = 1, r33
	;;
	.mmi
	ld1.c.clr r18 = [r15]
	;;
	xor r11 = r18, r10
	nop 0
	.mmi
	ld1.s r10 = [r17]
	ld1.sa r18 = [r16]
	nop 0
	;;
	.mib
	st1 [r15] = r11
	nop 0
	br.cloop.sptk.few .L955
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L959:
	.mib
	ld1 r10 = [r17]
	nop 0
	br .L960
	;;
.L963:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.mib
	ld1 r10 = [r23]
	nop 0
	br .L964
.L965:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r16 = [r24]
	nop 0
	br .L966
.L967:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r25]
	nop 0
	br .L968
.L969:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r33 = [r26]
	nop 0
	br .L970
.L971:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r23 = [r27]
	nop 0
	br .L972
.L973:
	.mib
	ld1 r25 = [r9]
	nop 0
	br .L974
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
	sxt1 r17 = r14
	;;
	cmp4.eq p6, p7 = 0, r17
	;;
	.mib
	nop 0
	(p6) mov r17 = r32
	(p6) br.cond.dpnt .L976
	;;
	.align 32
.L977:
	.mmi
	mov r17 = r16
	nop 0
	adds r16 = 1, r16
	;;
	.mmi
	ld1 r15 = [r17]
	;;
	nop 0
	sxt1 r3 = r15
	;;
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r3
	(p8) br.cond.dptk .L977
.L976:
	.mmi
	cmp.eq p10, p11 = 0, r34
	nop 0
	adds r9 = -1, r34
	;;
	.mib
	nop 0
	(p11) mov ar.lc = r9
	(p10) br.cond.dpnt .L978
	.align 32
.L979:
	.mii
	ld1 r10 = [r33]
	adds r33 = 1, r33
	;;
	sxt1 r11 = r10
	.mmi
	st1 [r17] = r10
	nop 0
	adds r17 = 1, r17
	;;
	.mbb
	cmp4.ne p12, p13 = 0, r11
	(p13) br.cond.dpnt .L981
	br.cloop.sptk.few .L979
.L978:
	.mmi
	st1 [r17] = r0
	nop 0
	nop 0
	;;
.L981:
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
	(p6) br.cond.dpnt .L1000
.L992:
	.mii
	ld1 r3 = [r32]
	adds r32 = 1, r32
	;;
	sxt1 r9 = r3
	;;
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r9
	(p8) br.cond.dpnt .L1001
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L1001:
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L992
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L1000:
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
	sxt1 r2 = r14
	;;
	.mib
	mov r16 = r2
	cmp4.ne p6, p7 = 0, r2
	(p7) br.cond.dpnt .L1007
.L1003:
	.mmi
	mov r15 = r33
	nop 0
	nop 0
	;;
	.align 32
.L1006:
	.mii
	ld1 r3 = [r15]
	adds r15 = 1, r15
	;;
	sxt1 r9 = r3
	;;
	.mmi
	nop 0
	cmp4.eq p12, p13 = r16, r9
	cmp4.ne p8, p9 = 0, r9
	.bbb
	nop 0
	(p9) br.cond.dpnt .L1013
	(p13) br.cond.dptk .L1006
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L1013:
	.mmi
	adds r8 = 1, r8
	;;
	ld1 r10 = [r8]
	nop 0
	;;
	.mii
	nop 0
	sxt1 r11 = r10
	nop 0
	;;
	.mib
	mov r16 = r11
	cmp4.eq p10, p11 = 0, r11
	(p11) br.cond.dptk .L1003
.L1007:
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
.L1016:
	.mmi
	ld1 r14 = [r32]
	;;
	nop 0
	sxt1 r2 = r14
	;;
	.mmi
	cmp4.ne p8, p9 = r2, r33
	nop 0
	cmp4.ne p6, p7 = 0, r2
	;;
	.mib
	(p9) mov r8 = r32
	adds r32 = 1, r32
	(p6) br.cond.dptk .L1016
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
	sxt1 r2 = r14
	;;
	.mib
	mov r19 = r2
	cmp4.eq p6, p7 = 0, r2
	(p6) br.cond.dpnt .L1030
	.align 32
.L1022:
	.mmi
	mov r16 = r15
	nop 0
	adds r15 = 1, r15
	;;
	.mmi
	ld1 r3 = [r16]
	;;
	nop 0
	sxt1 r8 = r3
	;;
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r8
	(p8) br.cond.dptk .L1022
	.mmi
	sub r20 = r16, r33
	nop 0
	cmp.eq p10, p11 = r33, r16
	.mib
	nop 0
	zxt1 r21 = r19
	(p10) br.cond.dpnt .L1030
	;;
	.mib
	nop 0
	(p11) add r20 = r33, r20
	br .L1037
.L1028:
	.mib
	nop 0
	nop 0
	br .L1037
.L1037:
	.mmi
	ld1 r9 = [r32]
	mov r8 = r32
	adds r32 = 1, r32
	;;
	.mii
	nop 0
	sxt1 r10 = r9
	nop 0
	;;
	.mmi
	nop 0
	cmp4.eq p12, p13 = r19, r10
	cmp4.ne p14, p15 = 0, r10
	.bbb
	nop 0
	(p12) br.cond.dpnt .L1027
	(p14) br.cond.dptk .L1028
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
.L1027:
	.mmi
	mov r22 = r33
	nop 0
	mov r25 = r21
	;;
	.mmi
	nop 0
	ld1.s r11 = [r22]
	mov r17 = r22
	;;
	.align 32
.L1024:
	.mmi
	nop 0
	ld1.s r24 = [r32]
	chk.s r11, .L1041
.L1042:
	.mmi
	cmp4.ne p6, p7 = 0, r11
	cmp4.eq p8, p9 = r25, r11
	adds r22 = 1, r22
	;;
	.mmi
	(p8) addl r18 = 1, r0
	(p6) addl r11 = 1, r0
	cmp.ne p10, p11 = r22, r20
	;;
	.mmi
	(p9) mov r18 = r0
	nop 0
	(p7) mov r11 = r0
	;;
	.mmi
	and r23 = r18, r11
	ld1.s r11 = [r22]
	nop 0
	;;
	.mib
	nop 0
	tbit.nz.and.orcm p10, p11 = r23, 0
	(p11) br.cond.dpnt .L1025
	;;
	.mmi
	nop 0
	mov r17 = r22
	chk.s r24, .L1039
.L1040:
	.mmi
	nop 0
	mov r25 = r24
	adds r32 = 1, r32
	.mmb
	nop 0
	cmp4.ne p12, p13 = 0, r24
	(p12) br.cond.dptk .L1024
	;;
	.mmi
	mov r17 = r22
	nop 0
	nop 0
	;;
.L1025:
	.mmi
	ld1 r26 = [r17]
	nop 0
	adds r32 = 1, r8
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = r25, r26
	(p15) br.cond.dptk .L1028
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1030:
	.mib
	nop 0
	mov r8 = r32
	br.ret.sptk.many b0
.L1039:
	.mib
	ld1 r24 = [r32]
	nop 0
	br .L1040
.L1041:
	.mib
	ld1 r11 = [r22]
	nop 0
	br .L1042
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
	(p6) br.cond.dpnt .L1055
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p8, p9 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1047
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p10, p11 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p10) br.cond.dpnt .L1056
.L1047:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L1055:
	.mmf
	nop 0
	nop 0
	fcmp.gt p12, p13 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p13) br.cond.dptk .L1047
.L1056:
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
	.mmi
	add r27 = r32, r20
	cmp.gtu p10, p11 = r35, r33
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	;;
	.mbb
	nop 0
	(p6) br.cond.dpnt .L1057
	(p10) br.cond.dpnt .L1068
	;;
	.mib
	nop 0
	cmp.ltu p12, p13 = r27, r32
	(p12) br.cond.dpnt .L1068
	;;
	.mmi
	chk.s r19, .L1085
	nop 0
	nop 0
.L1086:
	.pred.rel.mutex p8, p9
	.mii
	nop 0
	sxt1 r26 = r19
	nop 0
	.align 32
.L1063:
	.pred.rel.mutex p8, p9
	.mmi
	ld1 r14 = [r8]
	adds r18 = 1, r8
	mov r15 = r22
	;;
	.mii
	nop 0
	sxt1 r3 = r14
	add r16 = r18, r21
	.mmi
	mov r11 = r18
	;;
	cmp4.ne p14, p15 = r26, r3
	sub r9 = r16, r18, 1
	;;
	.mib
	(p14) mov r8 = r18
	mov ar.lc = r9
	(p15) br.cond.dpnt .L1075
	;;
.L1059:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	cmp.leu p14, p15 = r8, r27
	(p14) br.cond.dptk .L1063
.L1068:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L1057:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1075:
	.pred.rel.mutex p8, p9
	.mbb
	nop 0
	(p8) br.cond.dpnt .L1057
	br .L1078
.L1060:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mib
	nop 0
	nop 0
	br .L1077
.L1078:
	.pred.rel.mutex p8, p9
	.mmi
	nop 0
	ld1.s r17 = [r11]
	nop 0
	.mmi
	ld1.s r10 = [r15]
	mov r25 = r18
	cmp.gtu p10, p11 = r18, r27
	;;
	.align 32
.L1077:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mmi
	chk.s r17, .L1079
	nop 0
	nop 0
.L1080:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mmi
	nop 0
	adds r11 = 1, r11
	chk.s r10, .L1081
.L1082:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mii
	adds r15 = 1, r15
	cmp4.eq p6, p7 = r10, r17
	;;
	nop 0
	.mmb
	ld1.s r17 = [r11]
	ld1.s r10 = [r15]
	(p7) br.cond.dpnt .L1076
	;;
	.mib
	mov r25 = r18
	cmp.gtu p10, p11 = r18, r27
	br.cloop.sptk.few .L1060
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1076:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mmi
	ld1.s r23 = [r18]
	nop 0
	adds r8 = 1, r18
	.mmb
	mov r15 = r22
	nop 0
	(p10) br.cond.dpnt .L1068
	;;
	.mmi
	nop 0
	add r16 = r8, r21
	mov r11 = r8
	.mmi
	nop 0
	cmp.gtu p10, p11 = r8, r27
	chk.s r23, .L1083
.L1084:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mmi
	mov r18 = r8
	nop 0
	sxt1 r24 = r23
	;;
	.mib
	sub r9 = r16, r18, 1
	cmp4.ne p12, p13 = r26, r24
	(p12) br.cond.dptk .L1059
	;;
	.mmb
	ld1.s r17 = [r11]
	mov r8 = r25
	nop 0
	.mmi
	mov r25 = r18
	ld1.s r10 = [r15]
	mov ar.lc = r9
	;;
	.mib
	nop 0
	nop 0
	br .L1060
.L1079:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mib
	ld1 r17 = [r11]
	nop 0
	br .L1080
.L1081:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mib
	ld1 r10 = [r15]
	nop 0
	br .L1082
.L1083:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mib
	ld1 r23 = [r18]
	nop 0
	br .L1084
.L1085:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r19 = [r34]
	nop 0
	br .L1086
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
	(p6) br.cond.dpnt .L1088
	br.call.sptk.many b0 = memmove#
	;;
	.mmi
	mov r1 = r37
	nop 0
	nop 0
.L1088:
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
	movl r2 = 0xbff0000000000000
	.mmf
	nop 0
	nop 0
	fneg f7 = f8
	;;
	.mlx
	setf.d f9 = r2
	movl r14 = 0x3fe0000000000000
	.mlx
	nop 0
	movl r16 = 0xbfe0000000000000
	;;
	.mmf
	setf.d f6 = r14
	setf.d f10 = r16
	fcmp.lt p6, p7 = f8, f0
	.mfi
	nop 0
	fcmp.neq p12, p13 = f8, f0
	mov r8 = r0
	;;
	.mlx
	nop 0
	movl r3 = 0x3fe0000000000000
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1119
	;;
	.mmf
	nop 0
	nop 0
	fcmp.ge p8, p9 = f8, f1
	.mmf
	setf.d f11 = r3
	nop 0
	mov f7 = f8
	;;
	.mib
	nop 0
	(p8) mov r15 = r0
	(p9) br.cond.dpnt .L1120
.L1097:
	.mlx
	nop 0
	movl r9 = 0x3fe0000000000000
	.mmi
	mov r8 = r0
	;;
	setf.d f12 = r9
	nop 0
	;;
	.align 32
.L1103:
	.mfi
	nop 0
	fmpy.d f8 = f8, f12
	adds r8 = 1, r8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.ge p10, p11 = f8, f1
	;;
	.mib
	nop 0
	nop 0
	(p10) br.cond.dptk .L1103
.L1104:
	.mmi
	cmp4.eq p12, p13 = 0, r15
	st4 [r33] = r8
	nop 0
	;;
	.mfb
	nop 0
	(p13) fneg f8 = f8
	br.ret.sptk.many b0
	;;
.L1120:
	.pred.rel.mutex p12, p13
	.mfi
	nop 0
	fcmp.lt p10, p11 = f8, f6
	mov r15 = r0
	;;
	.mbb
	nop 0
	(p11) br.cond.dptk .L1100
	(p12) br.cond.dpnt .L1109
.L1100:
	.mib
	st4 [r33] = r0
	nop 0
	br.ret.sptk.many b0
.L1119:
	.mfi
	nop 0
	fcmp.le p14, p15 = f8, f9
	nop 0
	.mmi
	setf.d f11 = r3
	nop 0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	(p14) mov f8 = f7
	.mmb
	(p14) addl r15 = 1, r0
	nop 0
	(p14) br.cond.dptk .L1097
	;;
	.mmi
	nop 0
	addl r15 = 1, r0
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p6, p7 = f8, f10
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dptk .L1100
	;;
	.mfi
	nop 0
	mov f8 = f7
	nop 0
	;;
	.align 32
.L1121:
	.mfi
	nop 0
	fadd.d f8 = f8, f8
	adds r8 = -1, r8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p8, p9 = f8, f11
	;;
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1104
	;;
	.mfi
	nop 0
	fadd.d f8 = f8, f8
	adds r8 = -1, r8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p8, p9 = f8, f11
	;;
	.mib
	nop 0
	nop 0
	(p8) br.cond.dptk .L1121
	.mib
	nop 0
	nop 0
	br .L1104
.L1109:
	.mfb
	nop 0
	mov f8 = f7
	br .L1121
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
	(p6) br.cond.dpnt .L1122
	.mii
	nop 0
	extr r14 = r32, 0, 1
	shr.u r32 = r32, 1
	;;
	.mmi
	nop 0
	and r2 = r33, r14
	shladd r33 = r33, 1, r0
	;;
	.align 32
.L1124:
	.mib
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	.mmi
	add r8 = r8, r2
	cmp.ne p8, p9 = 0, r32
	shr.u r32 = r32, 1
	;;
	.mib
	and r2 = r33, r14
	shladd r33 = r33, 1, r0
	(p8) br.cond.dptk .L1124
.L1122:
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
	(p7) br.cond.dpnt .L1131
	.mmi
	cmp4.le p8, p9 = r0, r33
	nop 0
	nop 0
	.align 32
.L1130:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1131
	;;
	.mmi
	shladd r33 = r33, 1, r0
	nop 0
	shladd r14 = r14, 1, r0
	;;
	.mmi
	cmp4.ltu p10, p11 = r33, r32
	cmp4.ne p12, p13 = 0, r14
	cmp4.le p8, p9 = r0, r33
	;;
	.mmi
	(p12) addl r16 = 1, r0
	nop 0
	(p10) addl r15 = 1, r0
	;;
	.mii
	(p13) mov r16 = r0
	(p11) mov r15 = r0
	;;
	and r15 = r16, r15
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r15
	(p15) br.cond.dptk .L1130
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1134
	;;
.L1131:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1136:
	.mmi
	nop 0
	cmp4.gtu p8, p9 = r33, r32
	nop 0
	;;
	.mmi
	(p9) sub r32 = r32, r33
	(p9) or r8 = r8, r14
	extr.u r14 = r14, 1, 31
	;;
	.mii
	nop 0
	extr.u r33 = r33, 1, 31
	nop 0
	.mmb
	cmp4.ne p10, p11 = 0, r14
	nop 0
	(p10) br.cond.dptk .L1136
.L1134:
	.mmi
	nop 0
	cmp.ne p12, p13 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p12) mov r8 = r32
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
	sxt1 r2 = r32
	(p6) addl r8 = 7, r0
	;;
	.mii
	nop 0
	(p7) dep.z r2 = r2, 8, 24
	;;
	(p7) addp4 r2 = r2, r0
	;;
	.mmi
	nop 0
	(p7) setf.sig f6 = r2
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
	(p6) br.cond.dpnt .L1153
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.align 32
.L1155:
	.mii
	and r2 = r33, r14
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
	;;
	.mii
	nop 0
	extr r14 = r32, 0, 1
	add r8 = r8, r2
	.mmb
	nop 0
	cmp4.ne p8, p9 = 0, r32
	(p8) br.cond.dptk .L1155
.L1153:
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
	.mii
	and r17 = -8, r34
	extr.u r14 = r34, 3, 29
	addp4 r15 = r34, r0
	.mmi
	adds r18 = -1, r34
	;;
	addp4 r16 = r14, r0
	adds r25 = -1, r14
	.mmi
	add r8 = r33, r15
	mov r15 = r32
	addp4 r19 = r18, r0
	;;
	.mmb
	addp4 r26 = r25, r0
	shladd r9 = r16, 3, r0
	nop 0
	.mii
	adds r20 = -1, r19
	.save pr, r2
	mov r2 = pr
	cmp4.eq p16, p17 = 0, r14
	;;
	.mmi
	adds r10 = -8, r9
	adds r9 = -7, r19
	cmp4.ne p38, p39 = 0, r34
	.mmi
	cmp.leu p6, p7 = r33, r32
	cmp4.ne p36, p37 = 0, r14
	cmp.ltu p2, p3 = r8, r32
	;;
	.mmb
	add r16 = r32, r9
	(p38) addp4 r11 = r17, r0
	nop 0
	.mmi
	cmp4.ne p4, p5 = 0, r34
	cmp4.geu p8, p9 = 8, r18
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	;;
	.mii
	nop 0
	(p17) mov ar.lc = r26
	nop 0
	.bbb
	nop 0
	(p7) br.cond.dptk .L1259
	(p3) br.cond.dptk .L1245
.L1259:
	.pred.rel.mutex p36, p37
	.pred.rel.mutex p38, p39
	.mib
	mov r14 = r33
	shr.u r16 = r10, 3
	(p37) br.cond.dpnt .L1246
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p40, p41 = 2, r16
	nop 0
	(p41) br.cond.dptk .L1227
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
.L1167:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1167
.L1228:
	.mmi
	sub r22 = r34, r17, 1
	addp4 r11 = r17, r0
	nop 0
	.mmb
	sub r18 = r34, r17
	cmp4.geu p42, p43 = r17, r34
	(p42) br.cond.dpnt .L1160
	;;
	.mib
	nop 0
	extr.u r25 = r18, 3, 29
	nop 0
	.mmi
	add r15 = r32, r11
	add r14 = r33, r11
	add r20 = r33, r11, 1
	;;
	.mmi
	or r23 = r15, r14
	sub r24 = r15, r20
	nop 0
	.mmb
	shladd r21 = r25, 3, r0
	cmp4.geu p44, p45 = 7, r22
	(p44) br.cond.dpnt .L1169
	;;
	.mmi
	and r27 = 7, r23
	cmp.ltu p46, p47 = 6, r24
	adds r26 = -8, r21
	;;
	.mmi
	cmp.eq p48, p49 = 0, r27
	(p46) addl r24 = 1, r0
	shr.u r28 = r26, 3
	;;
	.mii
	nop 0
	mov ar.lc = r28
	(p47) mov r24 = r0
	.mmi
	(p48) addl r27 = 1, r0
	;;
	nop 0
	mov r30 = ar.lc
	.mmi
	(p49) mov r27 = r0
	;;
	and r29 = r27, r24
	nop 0
	;;
	.mib
	cmp4.eq p50, p51 = 0, r29
	nop 0
	(p50) br.cond.dpnt .L1169
	;;
	.mib
	adds r19 = -1, r30
	cmp.lt p52, p53 = 2, r30
	(p53) br.cond.dptk .L1229
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
.L1170:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1170
	;;
	.mmi
	and r15 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mib
	add r17 = r17, r15
	cmp4.eq p54, p55 = 0, r18
	(p54) br.cond.dpnt .L1160
	;;
.L1247:
	.mmi
	addp4 r14 = r17, r0
	adds r9 = 1, r17
	adds r10 = 2, r17
	.mmi
	adds r11 = 3, r17
	adds r22 = 4, r17
	adds r23 = 5, r17
	;;
	.mmi
	add r21 = r33, r14
	addp4 r29 = r9, r0
	addp4 r16 = r10, r0
	.mmi
	addp4 r30 = r11, r0
	addp4 r19 = r22, r0
	addp4 r20 = r23, r0
	;;
	.mmi
	adds r28 = 6, r17
	ld1 r8 = [r21]
	add r26 = r32, r14
	.mmi
	cmp4.leu p56, p57 = r34, r9
	add r15 = r32, r29
	cmp4.geu p58, p59 = r10, r34
	;;
	.mmi
	addp4 r17 = r28, r0
	add r31 = r33, r16
	add r9 = r32, r16
	.mmi
	cmp4.geu p60, p61 = r11, r34
	add r24 = r33, r30
	add r18 = r32, r30
	;;
	.mmi
	cmp4.geu p28, p29 = r22, r34
	add r25 = r33, r19
	cmp4.geu p30, p31 = r23, r34
	.mmi
	add r27 = r33, r20
	add r30 = r32, r20
	cmp4.geu p32, p33 = r28, r34
	;;
	.mmi
	add r34 = r33, r29
	add r29 = r32, r19
	add r33 = r33, r17
	.mmb
	ld1.sa r10 = [r31]
	st1 [r26] = r8
	(p56) br.cond.dpnt .L1160
	;;
	.mmi
	ld1 r14 = [r34]
	nop 0
	add r32 = r32, r17
	;;
	.mib
	st1 [r15] = r14
	nop 0
	(p58) br.cond.dpnt .L1160
	;;
	.mmi
	nop 0
	ld1.c.clr r10 = [r31]
	nop 0
	;;
	.mib
	st1 [r9] = r10
	nop 0
	(p60) br.cond.dpnt .L1160
.L1241:
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.pred.rel.mutex p32, p33
	.mmi
	nop 0
	ld1 r24 = [r24]
	nop 0
	;;
	.mib
	st1 [r18] = r24
	nop 0
	(p28) br.cond.dpnt .L1160
	;;
	.mmi
	nop 0
	ld1 r25 = [r25]
	nop 0
	;;
	.mib
	st1 [r29] = r25
	nop 0
	(p30) br.cond.dpnt .L1160
	;;
	.mmi
	nop 0
	ld1 r27 = [r27]
	nop 0
	;;
	.mib
	st1 [r30] = r27
	nop 0
	(p32) br.cond.dpnt .L1160
	;;
	.mmi
	nop 0
	ld1 r33 = [r33]
	nop 0
	;;
	.mmi
	st1 [r32] = r33
	nop 0
	nop 0
.L1160:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1227:
	.mmi
	ld8 r19 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r19
	adds r15 = 8, r15
	br.cloop.sptk.few .L1227
	.mib
	nop 0
	nop 0
	br .L1228
.L1229:
	.mmi
	ld8 r8 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r8
	adds r15 = 8, r15
	br.cloop.sptk.few .L1229
	;;
	.mmi
	and r15 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mmi
	nop 0
	add r17 = r17, r15
	cmp4.eq p54, p55 = 0, r18
	.bbb
	nop 0
	(p55) br.cond.dptk .L1247
	br .L1160
	;;
.L1245:
	.pred.rel.mutex p4, p5
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p16, p17
	.mii
	nop 0
	(p16) mov ar.lc = 0
	add r17 = r32, r19
	.mmb
	add r15 = r33, r9
	add r10 = r33, r20
	(p5) br.cond.dpnt .L1160
	;;
	.mib
	nop 0
	nop 0
	(p8) br.cond.dpnt .L1260
	;;
	.mii
	sub r11 = r17, r10
	mov r17 = ar.lc
	or r21 = r15, r16
	;;
	.mii
	adds r22 = 6, r11
	and r23 = 7, r21
	;;
	cmp.ltu p10, p11 = 6, r22
	.mmi
	cmp.eq p12, p13 = 0, r23
	;;
	(p12) addl r23 = 1, r0
	(p10) addl r22 = 1, r0
	;;
	.mii
	(p13) mov r23 = r0
	(p11) mov r22 = r0
	;;
	and r24 = r23, r22
	;;
	.mib
	cmp4.eq p14, p15 = 0, r24
	nop 0
	(p14) br.cond.dpnt .L1174
	;;
	.mib
	nop 0
	cmp.lt p18, p19 = 2, r17
	(p19) br.cond.dptk .L1232
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
.L1175:
	.mmi
	ld8 r17 = [r15]
	nop 0
	adds r15 = -8, r15
	;;
	.mib
	st8 [r16] = r17
	adds r16 = -8, r16
	br.cloop.sptk.few .L1175
	;;
.L1233:
	.mmi
	shladd r14 = r14, 3, r0
	nop 0
	mov ar.lc = r3
	;;
	.mib
	sub r18 = r18, r14
	cmp4.eq p20, p21 = r14, r34
	(p20) br.cond.dpnt .L1160
	;;
	.mmi
	addp4 r28 = r18, r0
	adds r29 = -1, r18
	adds r30 = -2, r18
	.mmi
	adds r31 = -3, r18
	adds r34 = -4, r18
	adds r8 = -5, r18
	;;
	.mmi
	add r17 = r33, r28
	addp4 r16 = r29, r0
	addp4 r9 = r30, r0
	.mmi
	addp4 r10 = r31, r0
	addp4 r19 = r34, r0
	addp4 r20 = r8, r0
	;;
	.mmi
	ld1 r21 = [r17]
	add r11 = r32, r28
	cmp4.eq p22, p23 = 0, r18
	.mmi
	add r22 = r33, r16
	add r26 = r32, r16
	cmp4.eq p24, p25 = 0, r29
	;;
	.mmi
	add r23 = r33, r9
	add r28 = r32, r9
	cmp4.eq p26, p27 = 0, r30
	.mmi
	add r24 = r33, r10
	cmp4.eq p28, p29 = 0, r31
	add r25 = r33, r19
	;;
	.mmi
	add r29 = r32, r19
	cmp4.eq p30, p31 = 0, r34
	add r27 = r33, r20
	.mmi
	add r30 = r32, r20
	adds r15 = -6, r18
	add r18 = r32, r10
	;;
	.mmi
	addp4 r31 = r15, r0
	ld1.sa r14 = [r22]
	nop 0
	.mmb
	cmp4.eq p32, p33 = 0, r8
	st1 [r11] = r21
	(p22) br.cond.dpnt .L1160
	;;
	.mmi
	nop 0
	add r33 = r33, r31
	add r32 = r32, r31
	.mmi
	ld1.sa r34 = [r23]
	;;
	ld1.c.clr r14 = [r22]
	nop 0
	;;
	.mib
	st1 [r26] = r14
	nop 0
	(p24) br.cond.dpnt .L1160
	;;
	.mmi
	nop 0
	ld1.c.clr r34 = [r23]
	nop 0
	;;
	.mib
	st1 [r28] = r34
	nop 0
	(p27) br.cond.dptk .L1241
	;;
	.mib
	nop 0
	mov pr = r2, -1
	br.ret.sptk.many b0
.L1232:
	.mmi
	ld8 r27 = [r15]
	nop 0
	adds r15 = -8, r15
	;;
	.mib
	st8 [r16] = r27
	adds r16 = -8, r16
	br.cloop.sptk.few .L1232
	.mib
	nop 0
	nop 0
	br .L1233
.L1246:
	.pred.rel.mutex p38, p39
	.mib
	nop 0
	nop 0
	(p39) br.cond.dpnt .L1160
.L1169:
	.mmi
	sub r18 = r34, r17, 1
	nop 0
	add r32 = r32, r11
	.mii
	add r22 = r33, r11, 1
	add r33 = r33, r11
	;;
	addp4 r11 = r18, r0
	;;
	.mmi
	add r23 = r22, r11
	;;
	sub r28 = r23, r33, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r28
	;;
	mov r29 = ar.lc
	;;
	.mib
	adds r15 = -1, r29
	cmp.lt p62, p63 = 2, r29
	(p63) br.cond.dptk .L1231
	;;
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
.L1172:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1172
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1231:
	.mmi
	ld1 r30 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r30
	adds r32 = 1, r32
	br.cloop.sptk.few .L1231
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1174:
	.mmi
	add r17 = r32, r19
	nop 0
	nop 0
	;;
.L1260:
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
	cmp.lt p34, p35 = 2, r14
	(p35) br.cond.dptk .L1234
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
.L1178:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1178
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1234:
	.mmi
	ld1 r8 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r8
	adds r32 = -1, r32
	br.cloop.sptk.few .L1234
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
	(p7) br.cond.dptk .L1265
	.mmi
	addp4 r14 = r34, r0
	;;
	add r8 = r33, r14
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p2, p3 = r8, r32
	(p3) br.cond.dptk .L1323
.L1265:
	.mib
	nop 0
	cmp4.ne p34, p35 = 0, r17
	(p35) br.cond.dpnt .L1264
	.mmi
	nop 0
	adds r19 = -1, r17
	nop 0
	;;
	.mib
	nop 0
	cmp4.geu p36, p37 = 6, r19
	(p36) br.cond.dpnt .L1268
	.mmi
	or r11 = r32, r33
	nop 0
	adds r20 = 2, r33
	;;
	.mii
	and r26 = 7, r11
	sub r22 = r32, r20
	;;
	cmp.eq p38, p39 = 0, r26
	.mmi
	cmp.ltu p40, p41 = 4, r22
	;;
	(p40) addl r26 = 1, r0
	(p38) addl r22 = 1, r0
	;;
	.mii
	(p41) mov r26 = r0
	(p39) mov r22 = r0
	;;
	and r23 = r26, r22
	;;
	.mib
	nop 0
	cmp4.eq p42, p43 = 0, r23
	(p42) br.cond.dpnt .L1268
	.mii
	nop 0
	extr.u r24 = r34, 3, 29
	mov r15 = r32
	.mmi
	mov r14 = r33
	;;
	shladd r25 = r24, 3, r0
	mov r18 = r24
	;;
	.mmi
	adds r27 = -8, r25
	;;
	nop 0
	shr.u r16 = r27, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p44, p45 = 2, r16
	nop 0
	(p45) br.cond.dptk .L1315
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
.L1269:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1269
	.mmi
	shladd r28 = r18, 2, r0
	;;
	addp4 r29 = r28, r0
	adds r30 = 1, r28
	.mmb
	adds r31 = 2, r28
	cmp4.eq p46, p47 = r28, r17
	(p46) br.cond.dpnt .L1264
	;;
.L1324:
	.mmi
	shladd r9 = r29, 1, r0
	addp4 r15 = r30, r0
	addp4 r8 = r31, r0
	.mii
	cmp4.geu p48, p49 = r30, r17
	cmp4.geu p50, p51 = r31, r17
	;;
	add r17 = r33, r9
	.mmi
	shladd r10 = r15, 1, r0
	shladd r16 = r8, 1, r0
	add r14 = r32, r9
	;;
	.mmi
	ld2 r11 = [r17]
	add r18 = r33, r10
	add r20 = r32, r10
	.mii
	add r19 = r33, r16
	add r26 = r32, r16
	;;
	nop 0
	.mmb
	ld2.sa r23 = [r19]
	st2 [r14] = r11
	(p48) br.cond.dpnt .L1264
	;;
	.mmi
	nop 0
	ld2 r22 = [r18]
	nop 0
	;;
	.mib
	st2 [r20] = r22
	nop 0
	(p50) br.cond.dpnt .L1264
	;;
	.mmi
	nop 0
	ld2.c.clr r23 = [r19]
	nop 0
	;;
	.mmi
	st2 [r26] = r23
	nop 0
	nop 0
.L1264:
	.mib
	adds r28 = -1, r34
	tbit.z p54, p55 = r34, 0
	(p54) br.cond.dptk .L1261
	;;
.L1325:
	.mmi
	addp4 r34 = r28, r0
	;;
	add r33 = r33, r34
	add r32 = r32, r34
	;;
	.mmi
	nop 0
	ld1 r29 = [r33]
	nop 0
	;;
	.mmi
	st1 [r32] = r29
	nop 0
	nop 0
.L1261:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1315:
	.mmi
	ld8 r21 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r21
	adds r15 = 8, r15
	br.cloop.sptk.few .L1315
	.mmi
	shladd r28 = r18, 2, r0
	;;
	addp4 r29 = r28, r0
	adds r30 = 1, r28
	.mmb
	adds r31 = 2, r28
	cmp4.eq p46, p47 = r28, r17
	(p47) br.cond.dptk .L1324
	;;
	.mib
	nop 0
	nop 0
	br .L1264
.L1323:
	.mib
	adds r17 = -1, r34
	cmp4.ne p4, p5 = 0, r34
	(p5) br.cond.dpnt .L1261
	;;
	.mib
	addp4 r18 = r17, r0
	cmp4.geu p8, p9 = 8, r17
	(p8) br.cond.dpnt .L1274
	;;
	.mmi
	adds r9 = -7, r18
	adds r19 = -1, r18
	add r16 = r32, r18
	;;
	.mmi
	add r15 = r32, r9
	add r14 = r33, r9
	add r10 = r33, r19
	;;
	.mmi
	sub r11 = r16, r10
	nop 0
	or r20 = r14, r15
	;;
	.mii
	adds r21 = 6, r11
	and r22 = 7, r20
	;;
	cmp.ltu p10, p11 = 6, r21
	.mmi
	cmp.eq p12, p13 = 0, r22
	;;
	(p12) addl r22 = 1, r0
	(p10) addl r21 = 1, r0
	;;
	.mii
	(p13) mov r22 = r0
	(p11) mov r21 = r0
	;;
	and r23 = r22, r21
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r23
	(p14) br.cond.dpnt .L1274
	.mii
	nop 0
	extr.u r24 = r34, 3, 29
	;;
	shladd r25 = r24, 3, r0
	;;
	.mmi
	adds r26 = -8, r25
	;;
	nop 0
	shr.u r16 = r26, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p16, p17 = 2, r16
	nop 0
	(p17) br.cond.dptk .L1318
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
.L1275:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1275
	;;
.L1319:
	.mmi
	and r15 = -8, r34
	nop 0
	and r34 = 7, r34
	;;
	.mib
	sub r17 = r17, r15
	cmp4.eq p18, p19 = 0, r34
	(p18) br.cond.dpnt .L1261
	;;
	.mmi
	addp4 r28 = r17, r0
	adds r29 = -1, r17
	adds r30 = -2, r17
	.mmi
	adds r31 = -3, r17
	adds r8 = -4, r17
	adds r9 = -5, r17
	;;
	.mmi
	add r20 = r33, r28
	addp4 r16 = r29, r0
	addp4 r10 = r30, r0
	.mmi
	addp4 r18 = r31, r0
	addp4 r19 = r8, r0
	addp4 r11 = r9, r0
	;;
	.mmi
	ld1 r21 = [r20]
	add r26 = r32, r28
	cmp4.eq p20, p21 = 0, r17
	.mmi
	add r22 = r33, r16
	add r34 = r32, r16
	cmp4.eq p22, p23 = 0, r29
	;;
	.mmi
	add r23 = r33, r10
	cmp4.eq p24, p25 = 0, r30
	add r24 = r33, r18
	.mmi
	add r28 = r32, r18
	cmp4.eq p26, p27 = 0, r31
	add r25 = r33, r19
	;;
	.mmi
	add r29 = r32, r19
	cmp4.eq p28, p29 = 0, r8
	add r27 = r33, r11
	.mmi
	add r30 = r32, r11
	adds r14 = -6, r17
	add r17 = r32, r10
	;;
	.mmi
	addp4 r31 = r14, r0
	ld1.sa r15 = [r22]
	nop 0
	.mmb
	cmp4.eq p30, p31 = 0, r9
	st1 [r26] = r21
	(p20) br.cond.dpnt .L1261
	;;
	.mmb
	add r33 = r33, r31
	add r32 = r32, r31
	nop 0
	.mmi
	ld1.sa r8 = [r23]
	ld1.sa r9 = [r24]
	mov ar.lc = r3
	;;
	.mmi
	ld1.sa r14 = [r25]
	;;
	ld1.c.clr r15 = [r22]
	nop 0
	;;
	.mib
	st1 [r34] = r15
	nop 0
	(p22) br.cond.dpnt .L1261
	;;
	.mmi
	ld1.sa r16 = [r27]
	;;
	ld1.c.clr r8 = [r23]
	nop 0
	;;
	.mib
	st1 [r17] = r8
	nop 0
	(p24) br.cond.dpnt .L1261
	;;
	.mmi
	ld1.sa r10 = [r33]
	;;
	ld1.c.clr r9 = [r24]
	nop 0
	;;
	.mib
	st1 [r28] = r9
	nop 0
	(p26) br.cond.dpnt .L1261
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r29] = r14
	nop 0
	(p28) br.cond.dpnt .L1261
	;;
	.mmi
	nop 0
	ld1.c.clr r16 = [r27]
	nop 0
	;;
	.mib
	st1 [r30] = r16
	nop 0
	(p30) br.cond.dpnt .L1261
	;;
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	.mmi
	ld1.c.clr r10 = [r33]
	nop 0
	nop 0
	;;
	.mib
	st1 [r32] = r10
	nop 0
	br.ret.sptk.many b0
.L1318:
	.mmi
	ld8 r27 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r27
	adds r15 = -8, r15
	br.cloop.sptk.few .L1318
	.mib
	nop 0
	nop 0
	br .L1319
	;;
.L1268:
	.mmi
	addp4 r24 = r17, r0
	mov r15 = r33
	mov r16 = r32
	;;
	.mmi
	shladd r25 = r24, 1, r0
	;;
	adds r27 = -2, r25
	nop 0
	;;
	.mii
	nop 0
	shr.u r14 = r27, 1
	;;
	mov ar.lc = r14
	.mmb
	nop 0
	cmp.lt p52, p53 = 2, r14
	(p53) br.cond.dptk .L1317
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
.L1271:
	.mmi
	ld2 r14 = [r15]
	nop 0
	adds r15 = 2, r15
	;;
	.mib
	st2 [r16] = r14
	adds r16 = 2, r16
	br.cloop.sptk.few .L1271
	.mmi
	nop 0
	adds r28 = -1, r34
	tbit.z p54, p55 = r34, 0
	.bbb
	nop 0
	(p54) br.cond.dptk .L1261
	br .L1325
.L1317:
	.mmi
	ld2 r21 = [r15]
	nop 0
	adds r15 = 2, r15
	;;
	.mib
	st2 [r16] = r21
	adds r16 = 2, r16
	br.cloop.sptk.few .L1317
	.mmi
	nop 0
	adds r28 = -1, r34
	tbit.z p54, p55 = r34, 0
	.bbb
	nop 0
	(p54) br.cond.dptk .L1261
	br .L1325
	;;
.L1274:
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
	cmp.lt p32, p33 = 2, r14
	(p33) br.cond.dptk .L1320
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
.L1277:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1277
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1320:
	.mmi
	ld1 r18 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r18
	adds r32 = -1, r32
	br.cloop.sptk.few .L1320
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
	(p7) br.cond.dptk .L1335
	.mmi
	addp4 r14 = r34, r0
	;;
	add r8 = r33, r14
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p2, p3 = r8, r32
	(p3) br.cond.dptk .L1420
.L1335:
	.mib
	nop 0
	cmp4.ne p34, p35 = 0, r18
	(p35) br.cond.dpnt .L1421
	.mmi
	nop 0
	adds r9 = -1, r18
	nop 0
	;;
	.mib
	nop 0
	cmp4.geu p38, p39 = 8, r9
	(p38) br.cond.dpnt .L1337
	.mii
	or r14 = r33, r32
	adds r10 = 4, r33
	;;
	and r19 = 7, r14
	.mmi
	cmp.ne p40, p41 = r10, r32
	;;
	cmp.eq p42, p43 = 0, r19
	(p40) addl r10 = 1, r0
	;;
	.mii
	(p41) mov r10 = r0
	(p42) addl r19 = 1, r0
	;;
	(p43) mov r19 = r0
	;;
	.mmi
	nop 0
	and r11 = r10, r19
	nop 0
	;;
	.mib
	nop 0
	cmp4.eq p44, p45 = 0, r11
	(p44) br.cond.dpnt .L1337
	.mii
	nop 0
	extr.u r20 = r34, 3, 29
	mov r15 = r32
	.mmi
	mov r14 = r33
	;;
	shladd r26 = r20, 3, r0
	mov r19 = r20
	;;
	.mmi
	adds r22 = -8, r26
	;;
	nop 0
	shr.u r17 = r22, 3
	;;
	.mii
	nop 0
	mov ar.lc = r17
	nop 0
	.mmb
	cmp.lt p46, p47 = 2, r17
	nop 0
	(p47) br.cond.dptk .L1399
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
.L1338:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1338
	.mmi
	nop 0
	shladd r24 = r19, 1, r0
	nop 0
	;;
	.mib
	addp4 r25 = r24, r0
	cmp4.eq p48, p49 = r24, r18
	(p48) br.cond.dpnt .L1341
	;;
.L1422:
	.mmi
	shladd r18 = r25, 2, r0
	;;
	add r27 = r33, r18
	add r21 = r32, r18
	;;
	.mmi
	nop 0
	ld4 r17 = [r27]
	nop 0
	;;
	.mmi
	st4 [r21] = r17
	nop 0
	nop 0
.L1341:
	.mmi
	sub r9 = r34, r16, 1
	addp4 r8 = r16, r0
	nop 0
	.mmb
	sub r18 = r34, r16
	cmp4.geu p52, p53 = r16, r34
	(p52) br.cond.dpnt .L1330
	;;
	.mib
	nop 0
	extr.u r20 = r18, 3, 29
	nop 0
	.mmi
	add r15 = r32, r8
	add r14 = r33, r8
	add r10 = r33, r8, 1
	;;
	.mmi
	or r19 = r15, r14
	sub r11 = r15, r10
	nop 0
	.mmb
	shladd r22 = r20, 3, r0
	cmp4.geu p54, p55 = 7, r9
	(p54) br.cond.dpnt .L1333
	;;
	.mmi
	and r26 = 7, r19
	cmp.ltu p56, p57 = 6, r11
	adds r23 = -8, r22
	;;
	.mmi
	cmp.eq p58, p59 = 0, r26
	(p56) addl r11 = 1, r0
	shr.u r24 = r23, 3
	;;
	.mii
	nop 0
	mov ar.lc = r24
	(p57) mov r11 = r0
	.mmi
	(p58) addl r26 = 1, r0
	;;
	nop 0
	mov r27 = ar.lc
	.mmi
	(p59) mov r26 = r0
	;;
	and r25 = r26, r11
	nop 0
	;;
	.mib
	cmp4.eq p60, p61 = 0, r25
	nop 0
	(p60) br.cond.dpnt .L1333
	;;
	.mib
	adds r19 = -1, r27
	cmp.lt p62, p63 = 2, r27
	(p63) br.cond.dptk .L1402
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
.L1342:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1342
	;;
	.mmi
	and r15 = -8, r18
	nop 0
	and r14 = 7, r18
	;;
	.mib
	add r16 = r16, r15
	cmp4.eq p6, p7 = 0, r14
	(p6) br.cond.dpnt .L1330
	;;
.L1423:
	.mmi
	addp4 r28 = r16, r0
	adds r29 = 1, r16
	adds r30 = 2, r16
	.mmi
	adds r31 = 3, r16
	adds r8 = 4, r16
	adds r9 = 5, r16
	;;
	.mmi
	add r26 = r33, r28
	addp4 r11 = r29, r0
	addp4 r17 = r30, r0
	.mmi
	addp4 r18 = r31, r0
	addp4 r19 = r8, r0
	addp4 r20 = r9, r0
	;;
	.mmi
	adds r10 = 6, r16
	ld1 r22 = [r26]
	add r14 = r32, r28
	.mmi
	cmp4.geu p2, p3 = r29, r34
	add r21 = r32, r11
	cmp4.leu p4, p5 = r34, r30
	;;
	.mmi
	addp4 r15 = r10, r0
	add r23 = r33, r17
	add r17 = r32, r17
	.mmi
	cmp4.geu p24, p25 = r31, r34
	add r24 = r33, r18
	add r28 = r32, r18
	;;
	.mmi
	cmp4.geu p26, p27 = r8, r34
	add r25 = r33, r19
	add r29 = r32, r19
	.mmi
	cmp4.geu p28, p29 = r9, r34
	add r27 = r33, r20
	add r30 = r32, r20
	;;
	.mmi
	cmp4.geu p30, p31 = r10, r34
	add r34 = r33, r11
	add r33 = r33, r15
	.mmb
	add r32 = r32, r15
	st1 [r14] = r22
	(p2) br.cond.dpnt .L1330
	;;
	.mmi
	nop 0
	ld1 r16 = [r34]
	nop 0
	;;
	.mib
	st1 [r21] = r16
	nop 0
	(p4) br.cond.dpnt .L1330
.L1416:
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.mmi
	nop 0
	ld1 r23 = [r23]
	nop 0
	;;
	.mib
	st1 [r17] = r23
	nop 0
	(p24) br.cond.dpnt .L1330
	;;
	.mmi
	nop 0
	ld1 r24 = [r24]
	nop 0
	;;
	.mib
	st1 [r28] = r24
	nop 0
	(p26) br.cond.dpnt .L1330
	;;
	.mmi
	nop 0
	ld1 r25 = [r25]
	nop 0
	;;
	.mib
	st1 [r29] = r25
	nop 0
	(p28) br.cond.dpnt .L1330
	;;
	.mmi
	nop 0
	ld1 r27 = [r27]
	nop 0
	;;
	.mib
	st1 [r30] = r27
	nop 0
	(p30) br.cond.dpnt .L1330
	;;
	.mmi
	nop 0
	ld1 r33 = [r33]
	nop 0
	;;
	.mmi
	st1 [r32] = r33
	nop 0
	nop 0
.L1330:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1399:
	.mmi
	ld8 r23 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r23
	adds r15 = 8, r15
	br.cloop.sptk.few .L1399
	.mmi
	shladd r24 = r19, 1, r0
	;;
	addp4 r25 = r24, r0
	cmp4.eq p48, p49 = r24, r18
	.bbb
	nop 0
	(p49) br.cond.dptk .L1422
	br .L1341
.L1402:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1402
	;;
	.mmi
	and r15 = -8, r18
	nop 0
	and r14 = 7, r18
	;;
	.mmi
	nop 0
	add r16 = r16, r15
	cmp4.eq p6, p7 = 0, r14
	.bbb
	nop 0
	(p7) br.cond.dptk .L1423
	br .L1330
.L1420:
	.mib
	adds r17 = -1, r34
	cmp4.ne p4, p5 = 0, r34
	(p5) br.cond.dpnt .L1330
	;;
	.mib
	addp4 r18 = r17, r0
	cmp4.geu p8, p9 = 8, r17
	(p8) br.cond.dpnt .L1346
	;;
	.mmi
	adds r9 = -7, r18
	adds r19 = -1, r18
	add r16 = r32, r18
	;;
	.mmi
	add r15 = r32, r9
	add r14 = r33, r9
	add r10 = r33, r19
	;;
	.mmi
	sub r11 = r16, r10
	nop 0
	or r20 = r14, r15
	;;
	.mii
	adds r21 = 6, r11
	and r22 = 7, r20
	;;
	cmp.ltu p10, p11 = 6, r21
	.mmi
	cmp.eq p12, p13 = 0, r22
	;;
	(p12) addl r22 = 1, r0
	(p10) addl r21 = 1, r0
	;;
	.mii
	(p13) mov r22 = r0
	(p11) mov r21 = r0
	;;
	and r23 = r22, r21
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r23
	(p14) br.cond.dpnt .L1346
	.mii
	nop 0
	extr.u r24 = r34, 3, 29
	;;
	shladd r25 = r24, 3, r0
	;;
	.mmi
	adds r26 = -8, r25
	;;
	nop 0
	shr.u r16 = r26, 3
	;;
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.mmb
	cmp.lt p16, p17 = 2, r16
	nop 0
	(p17) br.cond.dptk .L1405
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
.L1347:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1347
	;;
.L1406:
	.mmi
	and r15 = -8, r34
	and r34 = 7, r34
	mov ar.lc = r3
	;;
	.mib
	sub r17 = r17, r15
	cmp4.eq p18, p19 = 0, r34
	(p18) br.cond.dpnt .L1330
	;;
	.mmi
	addp4 r28 = r17, r0
	adds r29 = -1, r17
	adds r30 = -2, r17
	.mmi
	adds r31 = -3, r17
	adds r8 = -4, r17
	adds r9 = -5, r17
	;;
	.mmi
	add r20 = r33, r28
	addp4 r16 = r29, r0
	addp4 r10 = r30, r0
	.mmi
	addp4 r18 = r31, r0
	addp4 r19 = r8, r0
	addp4 r11 = r9, r0
	;;
	.mmi
	ld1 r21 = [r20]
	add r26 = r32, r28
	cmp4.eq p20, p21 = 0, r17
	.mmi
	add r22 = r33, r16
	add r34 = r32, r16
	cmp4.eq p22, p23 = 0, r29
	;;
	.mmi
	add r23 = r33, r10
	cmp4.eq p24, p25 = 0, r30
	add r24 = r33, r18
	.mmi
	add r28 = r32, r18
	cmp4.eq p26, p27 = 0, r31
	add r25 = r33, r19
	;;
	.mmi
	add r29 = r32, r19
	cmp4.eq p28, p29 = 0, r8
	add r27 = r33, r11
	.mmi
	add r30 = r32, r11
	adds r14 = -6, r17
	add r17 = r32, r10
	;;
	.mmi
	nop 0
	addp4 r31 = r14, r0
	cmp4.eq p30, p31 = 0, r9
	.mmb
	ld1.sa r15 = [r22]
	st1 [r26] = r21
	(p20) br.cond.dpnt .L1330
	;;
	.mmi
	add r33 = r33, r31
	nop 0
	add r32 = r32, r31
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r22]
	nop 0
	;;
	.mib
	st1 [r34] = r15
	nop 0
	(p23) br.cond.dptk .L1416
	;;
	.mib
	nop 0
	mov pr = r2, -1
	br.ret.sptk.many b0
.L1405:
	.mmi
	ld8 r27 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r27
	adds r15 = -8, r15
	br.cloop.sptk.few .L1405
	.mib
	nop 0
	nop 0
	br .L1406
.L1421:
	.mmi
	nop 0
	cmp4.ne p36, p37 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p36) addp4 r8 = r16, r0
	(p37) br.cond.dpnt .L1330
	;;
.L1333:
	.mmi
	sub r28 = r34, r16, 1
	nop 0
	add r29 = r33, r8, 1
	.mii
	add r33 = r33, r8
	add r32 = r32, r8
	;;
	addp4 r30 = r28, r0
	;;
	.mmi
	add r31 = r29, r30
	;;
	sub r8 = r31, r33, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r8
	;;
	mov r9 = ar.lc
	;;
	.mib
	adds r15 = -1, r9
	cmp.lt p8, p9 = 2, r9
	(p9) br.cond.dptk .L1404
	;;
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
.L1344:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1344
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1404:
	.mmi
	ld1 r11 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r11
	adds r32 = 1, r32
	br.cloop.sptk.few .L1404
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1337:
	.mmi
	addp4 r28 = r18, r0
	mov r15 = r33
	mov r17 = r32
	;;
	.mmi
	shladd r29 = r28, 2, r0
	;;
	adds r30 = -4, r29
	nop 0
	;;
	.mii
	nop 0
	shr.u r14 = r30, 2
	;;
	mov ar.lc = r14
	.mmb
	nop 0
	cmp.lt p50, p51 = 2, r14
	(p51) br.cond.dptk .L1401
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
.L1340:
	.mmi
	ld4 r14 = [r15]
	nop 0
	adds r15 = 4, r15
	;;
	.mib
	st4 [r17] = r14
	adds r17 = 4, r17
	br.cloop.sptk.few .L1340
	.mib
	nop 0
	nop 0
	br .L1341
.L1401:
	.mmi
	ld4 r31 = [r15]
	nop 0
	adds r15 = 4, r15
	;;
	.mib
	st4 [r17] = r31
	adds r17 = 4, r17
	br.cloop.sptk.few .L1401
	.mib
	nop 0
	nop 0
	br .L1341
	;;
.L1346:
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
	cmp.lt p32, p33 = 2, r14
	(p33) br.cond.dptk .L1407
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
.L1350:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1350
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1407:
	.mmi
	ld1 r8 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r8
	adds r32 = -1, r32
	br.cloop.sptk.few .L1407
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
	(p6) br.cond.dpnt .L1442
	;;
	.mii
	nop 0
	shr.u r8 = r14, 14
	nop 0
	;;
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r8
	(p8) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r15 = r14, 13
	;;
	cmp4.ne p10, p11 = 0, r15
	;;
	.mib
	nop 0
	(p10) addl r8 = 2, r0
	(p10) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r2 = r14, 12
	;;
	cmp4.ne p12, p13 = 0, r2
	;;
	.mib
	nop 0
	(p12) addl r8 = 3, r0
	(p12) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r3 = r14, 11
	;;
	cmp4.ne p14, p15 = 0, r3
	;;
	.mib
	nop 0
	(p14) addl r8 = 4, r0
	(p14) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r9 = r14, 10
	;;
	cmp4.ne p6, p7 = 0, r9
	;;
	.mib
	nop 0
	(p6) addl r8 = 5, r0
	(p6) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r10 = r14, 9
	;;
	cmp4.ne p8, p9 = 0, r10
	;;
	.mib
	nop 0
	(p8) addl r8 = 6, r0
	(p8) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r11 = r14, 8
	;;
	cmp4.ne p10, p11 = 0, r11
	;;
	.mib
	nop 0
	(p10) addl r8 = 7, r0
	(p10) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r16 = r14, 7
	;;
	cmp4.ne p12, p13 = 0, r16
	;;
	.mib
	nop 0
	(p12) addl r8 = 8, r0
	(p12) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r17 = r14, 6
	;;
	cmp4.ne p14, p15 = 0, r17
	;;
	.mib
	nop 0
	(p14) addl r8 = 9, r0
	(p14) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r18 = r14, 5
	;;
	cmp4.ne p6, p7 = 0, r18
	;;
	.mib
	nop 0
	(p6) addl r8 = 10, r0
	(p6) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r19 = r14, 4
	;;
	cmp4.ne p8, p9 = 0, r19
	;;
	.mib
	nop 0
	(p8) addl r8 = 11, r0
	(p8) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r20 = r14, 3
	;;
	cmp4.ne p10, p11 = 0, r20
	;;
	.mib
	nop 0
	(p10) addl r8 = 12, r0
	(p10) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r21 = r14, 2
	;;
	cmp4.ne p12, p13 = 0, r21
	;;
	.mib
	nop 0
	(p12) addl r8 = 13, r0
	(p12) br.cond.dpnt .L1442
	.mii
	nop 0
	shr.u r22 = r14, 1
	;;
	cmp4.ne p14, p15 = 0, r22
	;;
	.mib
	nop 0
	(p14) addl r8 = 14, r0
	(p14) br.cond.dpnt .L1442
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
.L1442:
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
	(p6) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p8, p9 = r15, 1
	nop 0
	;;
	.mib
	nop 0
	(p8) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p10, p11 = r15, 2
	nop 0
	;;
	.mib
	nop 0
	(p10) addl r8 = 2, r0
	(p10) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p12, p13 = r15, 3
	nop 0
	;;
	.mib
	nop 0
	(p12) addl r8 = 3, r0
	(p12) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p14, p15 = r15, 4
	nop 0
	;;
	.mib
	nop 0
	(p14) addl r8 = 4, r0
	(p14) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 5
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 5, r0
	(p6) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p8, p9 = r15, 6
	nop 0
	;;
	.mib
	nop 0
	(p8) addl r8 = 6, r0
	(p8) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p10, p11 = r15, 7
	nop 0
	;;
	.mib
	nop 0
	(p10) addl r8 = 7, r0
	(p10) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p12, p13 = r15, 8
	nop 0
	;;
	.mib
	nop 0
	(p12) addl r8 = 8, r0
	(p12) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p14, p15 = r15, 9
	nop 0
	;;
	.mib
	nop 0
	(p14) addl r8 = 9, r0
	(p14) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p6, p7 = r15, 10
	nop 0
	;;
	.mib
	nop 0
	(p6) addl r8 = 10, r0
	(p6) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p8, p9 = r15, 11
	nop 0
	;;
	.mib
	nop 0
	(p8) addl r8 = 11, r0
	(p8) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p10, p11 = r15, 12
	nop 0
	;;
	.mib
	nop 0
	(p10) addl r8 = 12, r0
	(p10) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p12, p13 = r15, 13
	nop 0
	;;
	.mib
	nop 0
	(p12) addl r8 = 13, r0
	(p12) br.cond.dpnt .L1462
	.mii
	nop 0
	tbit.nz p14, p15 = r15, 14
	nop 0
	;;
	.mib
	nop 0
	(p14) addl r8 = 14, r0
	(p14) br.cond.dpnt .L1462
	.mii
	nop 0
	shr.u r2 = r15, 15
	;;
	cmp4.eq p6, p7 = 0, r2
	;;
	.mii
	(p6) addl r8 = 16, r0
	nop 0
	;;
	(p7) addl r8 = 15, r0
.L1462:
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
	add r2 = r14, r8
	nop 0
	extr.u r27 = r32, 2, 1
	;;
	.mmi
	add r3 = r2, r27
	nop 0
	extr.u r26 = r32, 3, 1
	;;
	.mmi
	add r9 = r3, r26
	nop 0
	extr.u r25 = r32, 4, 1
	;;
	.mmi
	add r10 = r9, r25
	nop 0
	extr.u r24 = r32, 5, 1
	;;
	.mmi
	add r11 = r10, r24
	nop 0
	extr.u r23 = r32, 6, 1
	;;
	.mmi
	add r28 = r11, r23
	nop 0
	extr.u r22 = r32, 7, 1
	;;
	.mmi
	add r29 = r28, r22
	nop 0
	extr.u r21 = r32, 8, 1
	;;
	.mmi
	add r30 = r29, r21
	nop 0
	extr.u r20 = r32, 9, 1
	;;
	.mmi
	add r31 = r30, r20
	nop 0
	extr.u r19 = r32, 10, 1
	;;
	.mmi
	add r8 = r31, r19
	nop 0
	extr.u r18 = r32, 11, 1
	;;
	.mmi
	add r14 = r8, r18
	nop 0
	extr.u r17 = r32, 12, 1
	;;
	.mmi
	add r27 = r14, r17
	nop 0
	extr.u r16 = r32, 13, 1
	;;
	.mmi
	add r26 = r27, r16
	nop 0
	extr.u r15 = r32, 14, 1
	;;
	.mii
	add r25 = r26, r15
	extr.u r32 = r32, 15, 1
	;;
	add r24 = r25, r32
	;;
	.mib
	nop 0
	and r8 = 1, r24
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
	add r2 = r14, r28
	nop 0
	extr.u r27 = r32, 2, 1
	;;
	.mmi
	add r3 = r2, r27
	nop 0
	extr.u r26 = r32, 3, 1
	;;
	.mmi
	add r9 = r3, r26
	nop 0
	extr.u r25 = r32, 4, 1
	;;
	.mmi
	add r10 = r9, r25
	nop 0
	extr.u r24 = r32, 5, 1
	;;
	.mmi
	add r11 = r10, r24
	nop 0
	extr.u r23 = r32, 6, 1
	;;
	.mmi
	add r29 = r11, r23
	nop 0
	extr.u r22 = r32, 7, 1
	;;
	.mmi
	add r30 = r29, r22
	nop 0
	extr.u r21 = r32, 8, 1
	;;
	.mii
	add r31 = r30, r21
	extr.u r20 = r32, 9, 1
	;;
	extr.u r19 = r32, 10, 1
	;;
	.mii
	nop 0
	extr.u r18 = r32, 11, 1
	;;
	extr.u r17 = r32, 12, 1
	;;
	.mii
	nop 0
	extr.u r16 = r32, 13, 1
	;;
	extr.u r15 = r32, 14, 1
	;;
	.mii
	nop 0
	extr.u r8 = r32, 15, 1
	add r32 = r31, r20
	;;
	.mmi
	add r28 = r32, r19
	;;
	add r14 = r28, r18
	nop 0
	;;
	.mmi
	add r27 = r14, r17
	;;
	add r26 = r27, r16
	nop 0
	;;
	.mmi
	nop 0
	add r25 = r26, r15
	nop 0
	;;
	.mib
	nop 0
	add r8 = r25, r8
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
	(p6) br.cond.dpnt .L1494
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.align 32
.L1496:
	.mii
	and r2 = r33, r14
	extr.u r32 = r32, 1, 31
	shladd r33 = r33, 1, r0
	;;
	.mii
	nop 0
	extr r14 = r32, 0, 1
	add r8 = r8, r2
	.mmb
	nop 0
	cmp4.ne p8, p9 = 0, r32
	(p8) br.cond.dptk .L1496
.L1494:
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
	.mmi
	mov r8 = r0
	cmp4.eq p6, p7 = 0, r32
	cmp4.eq p8, p9 = 0, r33
	.bbb
	nop 0
	(p6) br.cond.dpnt .L1505
	(p8) br.cond.dpnt .L1505
	.mii
	nop 0
	extr r14 = r33, 0, 1
	nop 0
	;;
	.align 32
.L1503:
	.mii
	and r2 = r32, r14
	extr.u r33 = r33, 1, 31
	shladd r32 = r32, 1, r0
	;;
	.mii
	nop 0
	extr r14 = r33, 0, 1
	add r8 = r8, r2
	.mmb
	nop 0
	cmp4.ne p10, p11 = 0, r33
	(p10) br.cond.dptk .L1503
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1505:
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
	(p7) br.cond.dpnt .L1511
	.mmi
	cmp4.le p8, p9 = r0, r33
	nop 0
	nop 0
	.align 32
.L1510:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1511
	;;
	.mmi
	shladd r33 = r33, 1, r0
	nop 0
	shladd r14 = r14, 1, r0
	;;
	.mmi
	cmp4.ltu p10, p11 = r33, r32
	cmp4.ne p12, p13 = 0, r14
	cmp4.le p8, p9 = r0, r33
	;;
	.mmi
	(p12) addl r16 = 1, r0
	nop 0
	(p10) addl r15 = 1, r0
	;;
	.mii
	(p13) mov r16 = r0
	(p11) mov r15 = r0
	;;
	and r15 = r16, r15
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r15
	(p15) br.cond.dptk .L1510
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1514
	;;
.L1511:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1516:
	.mmi
	nop 0
	cmp4.gtu p8, p9 = r33, r32
	nop 0
	;;
	.mmi
	(p9) sub r32 = r32, r33
	(p9) or r8 = r8, r14
	extr.u r14 = r14, 1, 31
	;;
	.mii
	nop 0
	extr.u r33 = r33, 1, 31
	nop 0
	.mmb
	cmp4.ne p10, p11 = 0, r14
	nop 0
	(p10) br.cond.dptk .L1516
.L1514:
	.mmi
	nop 0
	cmp4.ne p12, p13 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p12) mov r8 = r32
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
	(p6) br.cond.dpnt .L1525
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p8, p9 = f8, f9
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L1525:
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
	(p6) br.cond.dpnt .L1530
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p8, p9 = f8, f9
	;;
	.mii
	(p8) addl r8 = 1, r0
	nop 0
	;;
	(p9) mov r8 = r0
.L1530:
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
	xmpy.l f8 = f6, f7
	;;
	.mib
	getf.sig r8 = f8
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
	xmpy.l f8 = f6, f7
	;;
	.mib
	getf.sig r8 = f8
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
	(p7) br.cond.dpnt .L1541
	;;
	.mmi
	nop 0
	cmp4.eq p8, p9 = 0, r33
	nop 0
	;;
	.mib
	nop 0
	(p8) mov r8 = r0
	(p8) br.cond.dpnt .L1539
	;;
.L1541:
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
.L1543:
	.mmi
	nop 0
	and r2 = r32, r15
	extr r33 = r33, 1, 31
	.mmi
	cmp4.ne p10, p11 = 32, r14
	shladd r32 = r32, 1, r0
	zxt1 r14 = r16
	;;
	.mii
	nop 0
	extr r15 = r33, 0, 1
	adds r16 = 1, r14
	.mmb
	add r8 = r8, r2
	cmp4.ne.and.orcm p10, p11 = 0, r33
	(p10) br.cond.dptk .L1543
	.mii
	cmp4.eq p12, p13 = 0, r17
	nop 0
	;;
	(p13) sub r8 = r0, r8
.L1539:
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
	cmp.le p6, p7 = r0, r32
	cmp.le p8, p9 = r0, r33
	nop 0
	.mmi
	addl r14 = 1, r0
	mov r17 = r0
	addl r15 = 1, r0
	;;
	.mmi
	(p7) sub r32 = r0, r32
	(p9) sub r33 = r0, r33
	(p7) mov r14 = r0
	.mmi
	(p7) addl r17 = 1, r0
	;;
	cmp4.ltu p10, p11 = r33, r32
	(p9) mov r17 = r14
	.mmi
	mov r16 = r32
	nop 0
	mov r2 = r33
	;;
	.mib
	nop 0
	(p11) addl r15 = 1, r0
	(p11) br.cond.dpnt .L1555
	.align 32
.L1554:
	.mib
	cmp4.le p12, p13 = r0, r2
	nop 0
	(p13) br.cond.dpnt .L1555
	;;
	.mmi
	shladd r2 = r2, 1, r0
	nop 0
	shladd r15 = r15, 1, r0
	;;
	.mmi
	cmp4.ltu p14, p15 = r2, r16
	nop 0
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p7) cmp4.ne.and.orcm p14, p15 = 0, r0
	(p14) br.cond.dptk .L1554
	.mib
	nop 0
	(p7) mov r8 = r0
	(p7) br.cond.dpnt .L1556
	;;
.L1555:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1559:
	.mmi
	nop 0
	cmp4.ltu p8, p9 = r16, r2
	nop 0
	;;
	.mmi
	(p9) sub r16 = r16, r2
	(p9) or r8 = r8, r15
	extr.u r15 = r15, 1, 31
	;;
	.mii
	nop 0
	extr.u r2 = r2, 1, 31
	nop 0
	.mmb
	cmp4.ne p10, p11 = 0, r15
	nop 0
	(p10) br.cond.dptk .L1559
	.mmi
	addp4 r8 = r8, r0
	nop 0
	nop 0
.L1556:
	.mmi
	nop 0
	cmp4.eq p12, p13 = 0, r17
	nop 0
	;;
	.mib
	nop 0
	(p13) sub r8 = r0, r8
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
	cmp.le p8, p9 = r0, r33
	mov r16 = r0
	.mmi
	addl r15 = 1, r0
	;;
	(p7) sub r32 = r0, r32
	(p9) sub r33 = r0, r33
	.mmi
	(p7) addl r16 = 1, r0
	;;
	mov r8 = r32
	mov r14 = r33
	.mmb
	nop 0
	cmp4.ltu p10, p11 = r33, r32
	(p11) br.cond.dpnt .L1589
	;;
	.align 32
.L1572:
	.mib
	cmp4.le p12, p13 = r0, r14
	nop 0
	(p13) br.cond.dpnt .L1589
	;;
	.mmi
	shladd r14 = r14, 1, r0
	nop 0
	shladd r15 = r15, 1, r0
	;;
	.mmi
	cmp4.ltu p14, p15 = r14, r8
	nop 0
	cmp4.ne p6, p7 = 0, r15
	;;
	.mib
	nop 0
	(p7) cmp4.ne.and.orcm p14, p15 = 0, r0
	(p14) br.cond.dptk .L1572
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L1574
	.align 32
.L1589:
	.mmi
	cmp4.gtu p8, p9 = r14, r8
	nop 0
	extr.u r15 = r15, 1, 31
	;;
	.mmi
	nop 0
	(p9) sub r8 = r8, r14
	extr.u r14 = r14, 1, 31
	.mmb
	nop 0
	cmp4.ne p10, p11 = 0, r15
	(p10) br.cond.dptk .L1589
	;;
.L1574:
	.mmi
	addp4 r8 = r8, r0
	nop 0
	cmp4.eq p12, p13 = 0, r16
	;;
	.mib
	nop 0
	(p13) sub r8 = r0, r8
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
	addl r18 = 1, r0
	cmp4.ne p14, p15 = 0, r34
	nop 0
	;;
	.mmi
	shladd r14 = r18, 1, r0
	shladd r15 = r33, 1, r0
	mov r8 = r32
	.mmi
	mov r16 = r33
	cmp4.ne p8, p9 = r32, r33
	cmp4.gtu p6, p7 = r32, r33
	;;
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L1628
	;;
	.mii
	nop 0
	zxt2 r2 = r15
	zxt2 r10 = r14
	;;
	.mii
	nop 0
	sxt2 r17 = r16
	nop 0
	;;
	.mib
	nop 0
	cmp4.le p10, p11 = r0, r17
	(p11) br.cond.dpnt .L1629
	.mmi
	nop 0
	cmp4.ltu p8, p9 = r2, r8
	cmp4.ne p6, p7 = 0, r10
	.mmi
	nop 0
	shladd r15 = r2, 1, r0
	shladd r14 = r10, 1, r0
	;;
	.align 32
.L1594:
	.pred.rel.mutex p6, p7
	.pred.rel.mutex p8, p9
	.mmi
	(p6) addl r20 = 1, r0
	(p8) addl r17 = 1, r0
	mov r19 = r10
	;;
	.mii
	(p7) mov r20 = r0
	(p9) mov r17 = r0
	;;
	and r11 = r20, r17
	;;
	.mib
	cmp4.eq p10, p11 = 0, r11
	nop 0
	(p10) br.cond.dpnt .L1593
	;;
	.mmi
	mov r18 = r10
	mov r16 = r2
	zxt2 r10 = r14
	.mib
	nop 0
	zxt2 r2 = r15
	nop 0
	;;
	.mmi
	cmp4.ltu p8, p9 = r2, r8
	cmp4.ne p6, p7 = 0, r10
	nop 0
	.mmi
	shladd r15 = r2, 1, r0
	shladd r14 = r10, 1, r0
	sxt2 r17 = r16
	;;
	.mib
	nop 0
	cmp4.le p10, p11 = r0, r17
	(p10) br.cond.dptk .L1594
.L1629:
	.mmi
	mov r19 = r18
	nop 0
	extr.u r9 = r18, 1, 15
	.mmi
	cmp4.leu p12, p13 = r16, r32
	nop 0
	sub r3 = r32, r16
	;;
	.mmi
	(p13) mov r19 = r0
	mov r20 = r9
	extr.u r10 = r16, 1, 15
	.mmb
	cmp4.eq p14, p15 = 0, r9
	nop 0
	(p13) br.cond.dptk .L1617
	;;
	.mii
	nop 0
	zxt2 r8 = r3
	nop 0
.L1617:
	.pred.rel.mutex p14, p15
	.mib
	nop 0
	nop 0
	(p14) br.cond.dpnt .L1596
	;;
.L1598:
	.mmi
	cmp4.gtu p6, p7 = r10, r8
	nop 0
	extr.u r25 = r18, 2, 14
	;;
	.mmi
	(p7) sub r8 = r8, r10
	(p7) or r19 = r20, r19
	extr.u r26 = r16, 2, 14
	.mii
	cmp4.eq p8, p9 = 0, r25
	nop 0
	;;
	(p7) zxt2 r8 = r8
	.mib
	nop 0
	(p7) zxt2 r19 = r19
	(p8) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p10, p11 = r26, r8
	nop 0
	extr.u r27 = r18, 3, 13
	;;
	.mii
	(p11) sub r8 = r8, r26
	extr.u r28 = r16, 3, 13
	(p11) zxt2 r19 = r19
	.mmi
	cmp4.eq p12, p13 = 0, r27
	;;
	nop 0
	(p11) zxt2 r8 = r8
	.mmb
	nop 0
	(p11) or r19 = r25, r19
	(p12) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p14, p15 = r28, r8
	nop 0
	extr.u r29 = r18, 4, 12
	;;
	.mii
	(p15) sub r8 = r8, r28
	extr.u r30 = r16, 4, 12
	(p15) zxt2 r19 = r19
	.mmi
	cmp4.eq p6, p7 = 0, r29
	;;
	nop 0
	(p15) zxt2 r8 = r8
	.mmb
	nop 0
	(p15) or r19 = r27, r19
	(p6) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p8, p9 = r30, r8
	nop 0
	extr.u r31 = r18, 5, 11
	;;
	.mii
	(p9) sub r8 = r8, r30
	extr.u r33 = r16, 5, 11
	(p9) zxt2 r19 = r19
	.mmi
	cmp4.eq p10, p11 = 0, r31
	;;
	nop 0
	(p9) zxt2 r8 = r8
	.mmb
	nop 0
	(p9) or r19 = r29, r19
	(p10) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p12, p13 = r33, r8
	nop 0
	extr.u r14 = r18, 6, 10
	;;
	.mii
	(p13) sub r8 = r8, r33
	extr.u r15 = r16, 6, 10
	(p13) zxt2 r19 = r19
	.mmi
	cmp4.eq p14, p15 = 0, r14
	;;
	nop 0
	(p13) zxt2 r8 = r8
	.mmb
	nop 0
	(p13) or r19 = r31, r19
	(p14) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p6, p7 = r15, r8
	nop 0
	extr.u r17 = r18, 7, 9
	;;
	.mii
	(p7) sub r8 = r8, r15
	extr.u r2 = r16, 7, 9
	(p7) zxt2 r19 = r19
	.mmi
	cmp4.eq p8, p9 = 0, r17
	;;
	nop 0
	(p7) zxt2 r8 = r8
	.mmb
	nop 0
	(p7) or r19 = r14, r19
	(p8) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p10, p11 = r2, r8
	nop 0
	extr.u r3 = r18, 8, 8
	;;
	.mii
	(p11) sub r8 = r8, r2
	extr.u r9 = r16, 8, 8
	(p11) zxt2 r19 = r19
	.mmi
	cmp4.eq p12, p13 = 0, r3
	;;
	nop 0
	(p11) zxt2 r8 = r8
	.mmb
	nop 0
	(p11) or r19 = r17, r19
	(p12) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p14, p15 = r9, r8
	nop 0
	extr.u r10 = r18, 9, 7
	;;
	.mii
	(p15) sub r8 = r8, r9
	extr.u r20 = r16, 9, 7
	(p15) zxt2 r19 = r19
	.mmi
	cmp4.eq p6, p7 = 0, r10
	;;
	nop 0
	(p15) zxt2 r8 = r8
	.mmb
	nop 0
	(p15) or r19 = r3, r19
	(p6) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p8, p9 = r20, r8
	nop 0
	extr.u r32 = r18, 10, 6
	;;
	.mii
	(p9) sub r8 = r8, r20
	extr.u r11 = r16, 10, 6
	(p9) zxt2 r19 = r19
	.mmi
	cmp4.eq p10, p11 = 0, r32
	;;
	nop 0
	(p9) zxt2 r8 = r8
	.mmb
	nop 0
	(p9) or r19 = r10, r19
	(p10) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p12, p13 = r11, r8
	nop 0
	extr.u r22 = r18, 11, 5
	;;
	.mii
	(p13) sub r8 = r8, r11
	extr.u r21 = r16, 11, 5
	(p13) zxt2 r19 = r19
	.mmi
	cmp4.eq p14, p15 = 0, r22
	;;
	nop 0
	(p13) zxt2 r8 = r8
	.mmb
	nop 0
	(p13) or r19 = r32, r19
	(p14) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p6, p7 = r21, r8
	nop 0
	extr.u r24 = r18, 12, 4
	;;
	.mii
	(p7) sub r8 = r8, r21
	extr.u r23 = r16, 12, 4
	(p7) zxt2 r19 = r19
	.mmi
	cmp4.eq p8, p9 = 0, r24
	;;
	nop 0
	(p7) zxt2 r8 = r8
	.mmb
	nop 0
	(p7) or r19 = r22, r19
	(p8) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p10, p11 = r23, r8
	nop 0
	extr.u r25 = r18, 13, 3
	;;
	.mii
	(p11) sub r8 = r8, r23
	extr.u r26 = r16, 13, 3
	(p11) zxt2 r19 = r19
	.mmi
	cmp4.eq p12, p13 = 0, r25
	;;
	nop 0
	(p11) zxt2 r8 = r8
	.mmb
	nop 0
	(p11) or r19 = r24, r19
	(p12) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p14, p15 = r26, r8
	nop 0
	extr.u r27 = r18, 14, 2
	;;
	.mii
	(p15) sub r8 = r8, r26
	extr.u r28 = r16, 14, 2
	(p15) zxt2 r19 = r19
	.mmi
	cmp4.eq p6, p7 = 0, r27
	;;
	nop 0
	(p15) zxt2 r8 = r8
	.mmb
	nop 0
	(p15) or r19 = r25, r19
	(p6) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p8, p9 = r28, r8
	nop 0
	extr.u r16 = r16, 15, 1
	;;
	.mii
	(p9) sub r8 = r8, r28
	tbit.nz p10, p11 = r18, 15
	(p9) zxt2 r19 = r19
	;;
	.mii
	nop 0
	(p9) zxt2 r8 = r8
	nop 0
	.mmb
	(p9) or r19 = r27, r19
	nop 0
	(p11) br.cond.dpnt .L1596
	;;
	.mmi
	cmp4.gtu p12, p13 = r16, r8
	;;
	(p13) sub r8 = r8, r16
	(p13) zxt2 r19 = r19
	;;
	.mii
	(p12) mov r8 = r0
	(p13) or r19 = 1, r19
	;;
	(p13) zxt2 r8 = r8
.L1596:
	.mmi
	nop 0
	cmp4.ne p14, p15 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p15) mov r8 = r19
	br.ret.sptk.many b0
.L1593:
	.mmi
	addp4 r21 = r16, r0
	cmp4.gtu p14, p15 = r2, r32
	addl r22 = 32767, r0
	.mmi
	addl r24 = 32767, r0
	addp4 r20 = r18, r0
	sub r23 = r32, r2
	;;
	.mmi
	mov r16 = r21
	mov r18 = r20
	(p15) and r21 = r22, r21
	.mmb
	(p14) and r20 = r24, r20
	cmp4.eq p12, p13 = 0, r10
	(p12) br.cond.dpnt .L1596
	;;
	.mmi
	(p14) and r24 = r24, r16
	(p14) mov r16 = r2
	(p14) mov r18 = r10
	.mmi
	(p14) mov r19 = r0
	(p15) and r20 = r22, r20
	(p15) zxt2 r8 = r23
	;;
	.mmi
	(p15) mov r16 = r2
	(p15) mov r18 = r10
	(p15) zxt2 r10 = r21
	.mib
	nop 0
	(p14) zxt2 r20 = r20
	nop 0
	;;
	.mib
	nop 0
	(p14) zxt2 r10 = r24
	br .L1598
.L1628:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p14, p15
	.mii
	(p8) mov r19 = r0
	(p9) mov r8 = r0
	;;
	(p9) addl r19 = 1, r0
	;;
	.mib
	nop 0
	(p15) mov r8 = r19
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
	(p7) br.cond.dpnt .L1632
	.mii
	nop 0
	tbit.z p8, p9 = r33, 31
	nop 0
	.align 32
.L1631:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1632
	;;
	.mmi
	shladd r33 = r33, 1, r0
	nop 0
	shladd r14 = r14, 1, r0
	;;
	.mmi
	cmp.ltu p10, p11 = r33, r32
	cmp.ne p12, p13 = 0, r14
	tbit.z p8, p9 = r33, 31
	;;
	.mmi
	(p12) addl r16 = 1, r0
	nop 0
	(p10) addl r15 = 1, r0
	;;
	.mii
	(p13) mov r16 = r0
	(p11) mov r15 = r0
	;;
	and r15 = r16, r15
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = 0, r15
	(p15) br.cond.dptk .L1631
	.mmi
	nop 0
	cmp.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1635
	;;
.L1632:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1637:
	.mmi
	nop 0
	cmp.gtu p8, p9 = r33, r32
	nop 0
	;;
	.mmi
	(p9) sub r32 = r32, r33
	(p9) or r8 = r14, r8
	shr.u r14 = r14, 1
	.mib
	nop 0
	shr.u r33 = r33, 1
	nop 0
	;;
	.mib
	nop 0
	cmp.ne p10, p11 = 0, r14
	(p10) br.cond.dptk .L1637
.L1635:
	.mmi
	nop 0
	cmp4.ne p12, p13 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p12) mov r8 = r32
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
	.mmi
	adds r10 = -32, r33
	mov r9 = r0
	tbit.z p6, p7 = r33, 5
	.mmi
	cmp4.eq p8, p9 = 0, r33
	addp4 r15 = r33, r0
	sub r17 = 32, r33
	;;
	.mmi
	(p7) addp4 r10 = r10, r0
	addp4 r2 = r17, r0
	extr r16 = r32, 32, 32
	.mmi
	(p8) mov r8 = r32
	addp4 r14 = r32, r0
	shl r11 = r9, 32
	;;
	.mii
	nop 0
	shl r3 = r16, r15
	shl r9 = r32, r15
	;;
	.mii
	nop 0
	(p7) shl r10 = r32, r10
	shr.u r2 = r14, r2
	.bbb
	nop 0
	(p7) br.cond.dptk .L1648
	(p8) br.cond.dpnt .L1646
	;;
	.mii
	nop 0
	shl r11 = r9, 32
	nop 0
	;;
	.mii
	mov r8 = r2
	nop 0
	;;
	or r10 = r3, r8
.L1648:
	.mii
	mov r8 = r0
	nop 0
	;;
	mix4.l r8 = r8, r11
	;;
	.mii
	nop 0
	mix4.r r8 = r10, r8
	nop 0
.L1646:
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
	.mmi
	nop 0
	adds r14 = -64, r34
	tbit.z p6, p7 = r34, 6
	.mmi
	cmp4.eq p8, p9 = 0, r34
	sub r2 = 64, r34
	mov r8 = r0
	;;
	.mmi
	(p7) addp4 r14 = r14, r0
	nop 0
	(p9) addp4 r2 = r2, r0
	;;
	.mib
	nop 0
	(p7) shl r9 = r32, r14
	(p7) br.cond.dptk .L1656
	;;
	.mii
	addp4 r8 = r34, r0
	(p8) mov r9 = r33
	;;
	(p8) mov r8 = r32
	;;
	.mii
	nop 0
	(p9) shl r9 = r33, r8
	(p9) shl r8 = r32, r8
	;;
	.mii
	nop 0
	(p9) shr.u r32 = r32, r2
	;;
	(p9) or r9 = r9, r32
.L1656:
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
	cmp4.eq p8, p9 = 0, r33
	tbit.z p6, p7 = r33, 5
	.mmi
	addp4 r18 = r33, r0
	sub r17 = 32, r33
	shr r10 = r32, 32
	;;
	.mmi
	(p7) addp4 r15 = r15, r0
	addp4 r3 = r17, r0
	(p7) shr r32 = r32, 63
	;;
	.mii
	(p8) mov r8 = r32
	extr r2 = r32, 32, 32
	shr r16 = r32, 32
	.mmi
	addp4 r14 = r32, r0
	;;
	nop 0
	shr r9 = r16, r18
	;;
	.mii
	nop 0
	(p7) shr r10 = r10, r15
	shl r2 = r2, r3
	.bbb
	nop 0
	(p7) br.cond.dptk .L1662
	(p8) br.cond.dpnt .L1660
	;;
	.mii
	nop 0
	shr.u r8 = r14, r18
	;;
	mov r32 = r9
	;;
	.mii
	mov r9 = r2
	nop 0
	;;
	or r10 = r9, r8
	;;
.L1662:
	.mmi
	mov r8 = r0
	nop 0
	shl r11 = r10, 32
	;;
	.mii
	nop 0
	mix4.r r8 = r32, r8
	;;
	mix4.l r8 = r8, r11
.L1660:
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
	.mmi
	cmp4.eq p8, p9 = 0, r34
	nop 0
	sub r2 = 64, r34
	;;
	.mii
	(p9) addp4 r2 = r2, r0
	(p7) sxt4 r14 = r14
	(p7) shr r9 = r33, 63
	;;
	.mib
	nop 0
	(p7) shr r8 = r33, r14
	(p7) br.cond.dptk .L1670
	;;
	.mmi
	addp4 r8 = r34, r0
	nop 0
	sxt4 r9 = r34
	;;
	.mii
	nop 0
	(p9) shr r9 = r33, r9
	(p9) shl r33 = r33, r2
	.mmi
	(p8) mov r8 = r32
	;;
	(p8) mov r9 = r33
	nop 0
	;;
	.mii
	nop 0
	(p9) shr.u r8 = r32, r8
	;;
	(p9) or r8 = r8, r33
.L1670:
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
	or r2 = r17, r8
	;;
	and r3 = r16, r14
	dep.z r32 = r32, 8, 24
	;;
	.mmi
	or r10 = r3, r2
	nop 0
	and r9 = r15, r32
	;;
	.mib
	nop 0
	or r8 = r9, r10
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
	addp4 r2 = r32, r0
	addl r15 = 65280, r0
	.mii
	addl r17 = 240, r0
	mov r8 = r0
	;;
	cmp4.geu p6, p7 = r14, r32
	;;
	.mmi
	(p6) addl r16 = 1, r0
	;;
	(p7) mov r16 = r0
	nop 0
	;;
	.mmi
	shladd r3 = r16, 4, r0
	;;
	sub r18 = 16, r3
	nop 0
	;;
	.mmi
	addp4 r9 = r18, r0
	;;
	nop 0
	shr.u r10 = r2, r9
	;;
	.mii
	and r11 = r15, r10
	addp4 r19 = r10, r0
	;;
	cmp4.eq p8, p9 = 0, r11
	;;
	.mmi
	(p8) addl r11 = 1, r0
	;;
	(p9) mov r11 = r0
	nop 0
	;;
	.mmi
	shladd r20 = r11, 3, r0
	;;
	sub r21 = 8, r20
	add r22 = r20, r3
	;;
	.mmi
	addp4 r23 = r21, r0
	;;
	nop 0
	shr.u r24 = r19, r23
	;;
	.mii
	and r25 = r17, r24
	addp4 r26 = r24, r0
	;;
	cmp4.eq p10, p11 = 0, r25
	;;
	.mmi
	(p10) addl r20 = 1, r0
	;;
	(p11) mov r20 = r0
	nop 0
	;;
	.mmi
	shladd r27 = r20, 2, r0
	;;
	sub r28 = 4, r27
	add r29 = r27, r22
	;;
	.mmi
	addp4 r30 = r28, r0
	;;
	nop 0
	shr.u r31 = r26, r30
	;;
	.mii
	and r32 = 12, r31
	addp4 r14 = r31, r0
	;;
	cmp4.eq p12, p13 = 0, r32
	;;
	.mmi
	(p12) addl r32 = 1, r0
	;;
	(p13) mov r32 = r0
	nop 0
	;;
	.mmi
	shladd r15 = r32, 1, r0
	;;
	sub r17 = 2, r15
	add r9 = r15, r29
	;;
	.mmi
	addp4 r2 = r17, r0
	;;
	nop 0
	shr.u r16 = r14, r2
	;;
	.mii
	nop 0
	extr.u r3 = r16, 1, 1
	;;
	xor r18 = 1, r3
	;;
	.mii
	nop 0
	tbit.z p14, p15 = r18, 0
	;;
	(p15) sub r8 = 2, r16
	;;
	.mib
	nop 0
	add r8 = r8, r9
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
	cmp4.eq p8, p9 = 0, r15
	dep.z r2 = r15, 6, 26
	;;
	.mii
	and r3 = r33, r14
	(p8) mov r32 = r0
	;;
	or r32 = r32, r3
	;;
	.mmi
	nop 0
	setf.sig f6 = r32
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	fcvt.xuf f7 = f6
	;;
	.mmi
	getf.exp r9 = f7
	;;
	sub r10 = r8, r9
	nop 0
	;;
	.mib
	nop 0
	add r8 = r2, r10
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
	cmp4.lt p12, p13 = r14, r15
	cmp4.gt p6, p7 = r14, r15
	(p6) br.cond.dpnt .L1690
	;;
	.mib
	(p12) addl r8 = 2, r0
	nop 0
	(p12) br.cond.dpnt .L1686
	;;
	.mmi
	nop 0
	(p10) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1690
.L1686:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1690:
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
	cmp4.lt p12, p13 = r14, r15
	cmp4.gt p6, p7 = r14, r15
	(p6) br.cond.dpnt .L1698
	;;
	.mib
	(p12) addl r8 = 1, r0
	nop 0
	(p12) br.cond.dpnt .L1694
	;;
	.mmi
	nop 0
	(p10) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
	(p8) br.cond.dpnt .L1698
.L1694:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1698:
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
	.mmi
	cmp.lt p10, p11 = r35, r33
	cmp.ltu p8, p9 = r34, r32
	nop 0
	.mmb
	cmp.gt p6, p7 = r35, r33
	cmp.gtu p12, p13 = r34, r32
	(p6) br.cond.dpnt .L1705
	;;
	.mib
	(p10) addl r8 = 2, r0
	nop 0
	(p10) br.cond.dpnt .L1701
	;;
	.mmi
	nop 0
	(p8) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p9) addl r8 = 1, r0
	(p12) br.cond.dpnt .L1705
.L1701:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1705:
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
	shladd r2 = r16, 4, r0
	;;
	.mii
	nop 0
	shr.u r3 = r14, r17
	;;
	zxt1 r9 = r3
	;;
	.mii
	cmp4.eq p8, p9 = 0, r9
	addp4 r10 = r3, r0
	;;
	(p8) addl r9 = 1, r0
	;;
	.mmi
	(p9) mov r9 = r0
	;;
	shladd r11 = r9, 3, r0
	shladd r18 = r9, 3, r0
	;;
	.mmi
	add r19 = r18, r2
	;;
	nop 0
	shr.u r20 = r10, r11
	;;
	.mii
	and r21 = 15, r20
	addp4 r22 = r20, r0
	;;
	cmp4.eq p10, p11 = 0, r21
	;;
	.mmi
	(p10) addl r21 = 1, r0
	;;
	(p11) mov r21 = r0
	nop 0
	;;
	.mii
	shladd r23 = r21, 2, r0
	shladd r24 = r21, 2, r0
	;;
	add r25 = r24, r19
	;;
	.mii
	nop 0
	shr.u r26 = r22, r23
	nop 0
	;;
	.mii
	and r27 = 3, r26
	addp4 r28 = r26, r0
	;;
	cmp4.eq p12, p13 = 0, r27
	;;
	.mmi
	(p12) addl r8 = 1, r0
	;;
	(p13) mov r8 = r0
	nop 0
	;;
	.mii
	shladd r29 = r8, 1, r0
	shladd r8 = r8, 1, r0
	;;
	add r30 = r8, r25
	;;
	.mii
	nop 0
	shr.u r31 = r28, r29
	nop 0
	;;
	.mmi
	andcm r32 = 1, r31
	nop 0
	extr.u r15 = r31, 1, 1
	;;
	.mii
	sub r14 = 2, r15
	sub r16 = r0, r32
	;;
	and r17 = r14, r16
	;;
	.mib
	nop 0
	add r8 = r30, r17
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
	or r2 = r32, r33
	nop 0
	;;
	.mmi
	adds r3 = -1, r2
	;;
	andcm r9 = r3, r2
	nop 0
	;;
	.mii
	nop 0
	popcnt r10 = r9
	nop 0
	;;
	.mib
	nop 0
	add r8 = r8, r10
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
	adds r14 = -1, r33
	nop 0
	.mmb
	cmp.ne p6, p7 = 0, r32
	cmp.eq p8, p9 = 0, r33
	(p6) br.cond.dptk .L1716
	;;
	.mmi
	nop 0
	andcm r33 = r14, r33
	mov r8 = r0
	.bbb
	nop 0
	(p9) br.cond.dptk .L1721
	br.ret.sptk.many b0
	;;
.L1716:
	.mmi
	andcm r2 = r8, r32
	;;
	nop 0
	popcnt r3 = r2
	;;
	.mib
	nop 0
	adds r8 = 1, r3
	br.ret.sptk.many b0
.L1721:
	.mii
	nop 0
	popcnt r9 = r33
	nop 0
	;;
	.mib
	nop 0
	adds r8 = 65, r9
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
	.mmi
	adds r11 = -32, r33
	mov r8 = r0
	tbit.z p6, p7 = r33, 5
	.mmi
	cmp4.eq p8, p9 = 0, r33
	sub r17 = 32, r33
	shr.u r16 = r32, 32
	;;
	.mmi
	(p7) addp4 r11 = r11, r0
	addp4 r3 = r17, r0
	extr.u r15 = r32, 32, 32
	.mii
	addp4 r2 = r32, r0
	shr.u r14 = r32, 32
	;;
	(p7) shr.u r11 = r16, r11
	.mib
	nop 0
	shl r10 = r15, r3
	(p7) br.cond.dptk .L1724
	;;
	.mmi
	nop 0
	addp4 r8 = r33, r0
	nop 0
	;;
	.mib
	(p8) mov r8 = r32
	nop 0
	(p8) br.cond.dpnt .L1722
	;;
	.mii
	nop 0
	shr.u r9 = r2, r8
	shr.u r8 = r14, r8
	;;
	.mmi
	or r11 = r10, r9
	nop 0
	nop 0
	;;
.L1724:
	.mii
	nop 0
	unpack4.l r8 = r8, r11
	nop 0
.L1722:
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
	.mmi
	nop 0
	adds r14 = -64, r34
	tbit.z p6, p7 = r34, 6
	.mmi
	cmp4.eq p8, p9 = 0, r34
	sub r2 = 64, r34
	mov r9 = r0
	;;
	.mmi
	(p7) addp4 r14 = r14, r0
	nop 0
	(p9) addp4 r2 = r2, r0
	;;
	.mib
	nop 0
	(p7) shr.u r8 = r33, r14
	(p7) br.cond.dptk .L1732
	;;
	.mii
	addp4 r9 = r34, r0
	(p8) mov r8 = r32
	;;
	(p8) mov r9 = r33
	;;
	.mii
	nop 0
	(p9) shr.u r8 = r32, r9
	(p9) shr.u r9 = r33, r9
	;;
	.mii
	nop 0
	(p9) shl r33 = r33, r2
	;;
	(p9) or r8 = r8, r33
.L1732:
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
	and r2 = r16, r33
	extr.u r32 = r32, 16, 16
	;;
	.mmi
	setf.sig f9 = r14
	setf.sig f8 = r2
	extr.u r33 = r33, 16, 16
	;;
	.mmi
	setf.sig f7 = r32
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
	and r3 = r16, r17
	;;
	setf.sig f11 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f12 = f7, f8, f11
	;;
	.mmi
	getf.sig r9 = f12
	;;
	nop 0
	dep.z r10 = r9, 16, 16
	;;
	.mii
	add r18 = r10, r3
	extr.u r11 = r9, 16, 16
	;;
	extr.u r20 = r18, 16, 16
	.mmi
	setf.sig f13 = r11
	nop 0
	and r21 = r16, r18
	;;
	.mmi
	nop 0
	setf.sig f15 = r20
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f14 = f7, f6, f13
	;;
	.mmf
	nop 0
	nop 0
	xma.l f32 = f6, f9, f15
	;;
	.mmi
	getf.sig r19 = f14
	;;
	getf.sig r22 = f32
	nop 0
	;;
	.mii
	nop 0
	dep.z r23 = r22, 16, 16
	nop 0
	;;
	.mmi
	add r25 = r23, r21
	nop 0
	extr.u r24 = r22, 16, 16
	;;
	.mii
	add r26 = r19, r24
	shl r27 = r25, 32
	;;
	mix4.l r8 = r8, r27
	;;
	.mib
	nop 0
	mix4.r r8 = r26, r8
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
	.mii
	addl r16 = 65535, r0
	extr.u r3 = r32, 16, 16
	mov r8 = r0
	.mmb
	setf.sig f34 = r32
	setf.sig f38 = r33
	nop 0
	;;
	.mmb
	and r14 = r16, r32
	and r2 = r16, r33
	nop 0
	.mmi
	setf.sig f8 = r3
	nop 0
	extr.u r9 = r33, 16, 16
	;;
	.mmi
	setf.sig f9 = r14
	setf.sig f7 = r2
	extr r19 = r33, 32, 32
	;;
	.mmi
	setf.sig f6 = r9
	setf.sig f33 = r19
	extr r18 = r32, 32, 32
	;;
	.mmi
	nop 0
	setf.sig f37 = r18
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
	and r10 = r16, r17
	;;
	setf.sig f11 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f12 = f8, f7, f11
	;;
	.mmi
	getf.sig r11 = f12
	;;
	nop 0
	dep.z r20 = r11, 16, 16
	;;
	.mii
	add r22 = r20, r10
	extr.u r21 = r11, 16, 16
	;;
	extr.u r23 = r22, 16, 16
	.mmi
	setf.sig f13 = r21
	nop 0
	and r24 = r16, r22
	;;
	.mmi
	nop 0
	setf.sig f15 = r23
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f14 = f8, f6, f13
	;;
	.mmf
	nop 0
	nop 0
	xma.l f32 = f6, f9, f15
	;;
	.mmi
	getf.sig r29 = f14
	;;
	getf.sig r25 = f32
	nop 0
	;;
	.mii
	nop 0
	dep.z r26 = r25, 16, 16
	nop 0
	;;
	.mmi
	add r28 = r26, r24
	nop 0
	extr.u r27 = r25, 16, 16
	;;
	.mii
	add r30 = r29, r27
	shl r31 = r28, 32
	;;
	mix4.l r8 = r8, r31
	;;
	.mii
	nop 0
	mix4.r r8 = r30, r8
	;;
	extr r16 = r8, 32, 32
	;;
	.mmi
	nop 0
	setf.sig f35 = r16
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f36 = f33, f34, f35
	;;
	.mmf
	nop 0
	nop 0
	xma.l f39 = f37, f38, f36
	;;
	.mmi
	nop 0
	getf.sig r32 = f39
	nop 0
	;;
	.mib
	nop 0
	mix4.r r8 = r32, r8
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
	nop 0
	addp4 r16 = 4294967295 - 0x100000000, r0
	nop 0
	;;
	.mmi
	and r14 = r16, r32
	and r2 = r16, r33
	shr.u r32 = r32, 32
	.mib
	nop 0
	shr.u r33 = r33, 32
	nop 0
	;;
	.mmi
	setf.sig f7 = r14
	setf.sig f9 = r2
	nop 0
	;;
	.mmi
	setf.sig f6 = r32
	setf.sig f8 = r33
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f10 = f7, f9
	;;
	.mii
	getf.sig r3 = f10
	nop 0
	;;
	shr.u r15 = r3, 32
	.mmi
	and r8 = r16, r3
	;;
	setf.sig f11 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f12 = f9, f6, f11
	;;
	.mii
	getf.sig r9 = f12
	nop 0
	;;
	shl r17 = r9, 32
	.mii
	nop 0
	shr.u r10 = r9, 32
	;;
	shr.u r18 = r17, 32
	.mmi
	setf.sig f13 = r10
	nop 0
	add r19 = r8, r17
	;;
	.mmi
	setf.sig f15 = r18
	nop 0
	and r21 = r16, r19
	;;
	.mmf
	nop 0
	nop 0
	xma.l f14 = f6, f8, f13
	;;
	.mmf
	nop 0
	nop 0
	xma.l f32 = f7, f8, f15
	;;
	.mmi
	getf.sig r11 = f14
	;;
	getf.sig r20 = f32
	nop 0
	;;
	.mii
	nop 0
	shl r22 = r20, 32
	shr.u r23 = r20, 32
	;;
	.mib
	add r8 = r21, r22
	add r9 = r11, r23
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
	.mii
	addp4 r16 = 4294967295 - 0x100000000, r0
	shr.u r3 = r32, 32
	shr.u r8 = r34, 32
	.mmb
	setf.sig f34 = r32
	setf.sig f35 = r35
	nop 0
	;;
	.mmi
	and r14 = r16, r32
	nop 0
	and r2 = r16, r34
	.mmi
	setf.sig f8 = r3
	setf.sig f9 = r8
	nop 0
	;;
	.mmi
	setf.sig f6 = r14
	setf.sig f7 = r2
	nop 0
	;;
	.mmi
	setf.sig f37 = r34
	setf.sig f38 = r33
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xmpy.l f10 = f6, f7
	;;
	.mii
	getf.sig r9 = f10
	nop 0
	;;
	shr.u r15 = r9, 32
	.mmi
	and r10 = r16, r9
	;;
	setf.sig f11 = r15
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f12 = f7, f8, f11
	;;
	.mii
	getf.sig r11 = f12
	nop 0
	;;
	shl r17 = r11, 32
	.mii
	nop 0
	shr.u r19 = r11, 32
	;;
	shr.u r18 = r17, 32
	.mmi
	setf.sig f13 = r19
	nop 0
	add r20 = r10, r17
	;;
	.mmi
	setf.sig f15 = r18
	nop 0
	and r22 = r16, r20
	;;
	.mmf
	nop 0
	nop 0
	xma.l f14 = f8, f9, f13
	;;
	.mmf
	nop 0
	nop 0
	xma.l f32 = f6, f9, f15
	;;
	.mmi
	getf.sig r25 = f14
	;;
	getf.sig r21 = f32
	nop 0
	;;
	.mii
	nop 0
	shr.u r23 = r21, 32
	shl r24 = r21, 32
	;;
	.mmi
	add r26 = r25, r23
	nop 0
	add r8 = r22, r24
	;;
	.mmi
	nop 0
	setf.sig f33 = r26
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	xma.l f36 = f34, f35, f33
	;;
	.mmf
	nop 0
	nop 0
	xma.l f39 = f37, f38, f36
	;;
	.mib
	getf.sig r9 = f39
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
	extr.u r2 = r32, 16, 16
	;;
	.mmi
	xor r3 = r32, r2
	;;
	nop 0
	extr.u r9 = r3, 8, 24
	;;
	.mmi
	xor r10 = r3, r9
	;;
	nop 0
	extr.u r11 = r10, 4, 28
	;;
	.mmi
	xor r15 = r10, r11
	;;
	and r16 = 15, r15
	nop 0
	;;
	.mii
	nop 0
	shr r17 = r8, r16
	nop 0
	;;
	.mib
	nop 0
	and r8 = 1, r17
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
	xor r2 = r14, r32
	;;
	nop 0
	extr.u r3 = r2, 16, 16
	;;
	.mmi
	xor r9 = r2, r3
	;;
	nop 0
	extr.u r15 = r9, 8, 24
	;;
	.mmi
	xor r10 = r9, r15
	;;
	nop 0
	extr.u r11 = r10, 4, 28
	;;
	.mmi
	xor r16 = r10, r11
	;;
	and r17 = 15, r16
	nop 0
	;;
	.mii
	nop 0
	shr r18 = r8, r17
	nop 0
	;;
	.mib
	nop 0
	and r8 = 1, r18
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
	xor r2 = r32, r14
	nop 0
	;;
	extr.u r32 = r2, 8, 24
	;;
	.mmi
	xor r3 = r2, r32
	;;
	nop 0
	extr.u r9 = r3, 4, 28
	;;
	.mmi
	xor r10 = r3, r9
	;;
	and r11 = 15, r10
	nop 0
	;;
	.mii
	nop 0
	shr r15 = r8, r11
	nop 0
	;;
	.mib
	nop 0
	and r8 = 1, r15
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
	and r2 = r15, r14
	movl r16 = 3689348814741910323
	.mlx
	nop 0
	movl r17 = 1085102592571150095
	;;
	.mii
	sub r32 = r32, r2
	nop 0
	;;
	shr.u r3 = r32, 2
	.mmi
	and r8 = r16, r32
	;;
	and r9 = r16, r3
	nop 0
	;;
	.mmi
	add r10 = r9, r8
	;;
	nop 0
	shr.u r11 = r10, 4
	;;
	.mmi
	add r18 = r11, r10
	;;
	and r19 = r17, r18
	nop 0
	;;
	.mii
	nop 0
	shr.u r20 = r19, 32
	;;
	add r21 = r20, r19
	;;
	.mii
	nop 0
	extr.u r22 = r21, 16, 16
	;;
	add r23 = r22, r21
	;;
	.mii
	nop 0
	extr.u r24 = r23, 8, 24
	;;
	add r25 = r24, r23
	;;
	.mib
	nop 0
	and r8 = 127, r25
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
	and r2 = r15, r14
	movl r16 = 858993459
	.mlx
	nop 0
	movl r17 = 252645135
	;;
	.mii
	sub r3 = r32, r2
	nop 0
	;;
	extr.u r8 = r3, 2, 30
	.mmi
	and r9 = r16, r3
	;;
	and r10 = r16, r8
	nop 0
	;;
	.mmi
	add r11 = r9, r10
	;;
	nop 0
	extr.u r18 = r11, 4, 27
	;;
	.mmi
	add r19 = r18, r11
	;;
	and r20 = r17, r19
	nop 0
	;;
	.mii
	nop 0
	shr.u r21 = r20, 16
	;;
	add r22 = r21, r20
	;;
	.mii
	nop 0
	extr.u r23 = r22, 8, 21
	;;
	add r24 = r23, r22
	;;
	.mib
	nop 0
	and r8 = 63, r24
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
	sub r2 = r32, r22
	;;
	cmp.gtu p6, p7 = r2, r32
	and r16 = r15, r2
	;;
	.mmi
	(p7) sub r21 = r33, r23
	;;
	(p6) sub r21 = r33, r23, 1
	nop 0
	;;
	.mii
	nop 0
	shrp r3 = r21, r2, 2
	shr.u r8 = r21, 2
	.mmi
	and r17 = r15, r21
	;;
	and r18 = r15, r3
	and r19 = r15, r8
	;;
	.mmi
	add r9 = r18, r16
	;;
	cmp.gtu p8, p9 = r18, r9
	nop 0
	;;
	.mmi
	(p9) add r21 = r19, r17
	;;
	(p8) add r21 = r19, r17, 1
	nop 0
	;;
	.mii
	nop 0
	shrp r10 = r21, r9, 4
	shr.u r11 = r21, 4
	;;
	.mmi
	add r28 = r10, r9
	;;
	cmp.gtu p10, p11 = r10, r28
	and r29 = r14, r28
	;;
	.mmi
	(p11) add r17 = r11, r21
	;;
	(p10) add r17 = r11, r21, 1
	nop 0
	;;
	.mmi
	and r30 = r14, r17
	;;
	add r31 = r30, r29
	nop 0
	;;
	.mii
	nop 0
	shr.u r32 = r31, 32
	;;
	add r33 = r32, r31
	;;
	.mii
	nop 0
	extr.u r20 = r33, 16, 16
	;;
	add r15 = r20, r33
	;;
	.mii
	nop 0
	extr.u r24 = r15, 8, 24
	;;
	add r14 = r24, r15
	;;
	.mib
	nop 0
	zxt1 r8 = r14
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
	mov r8 = r33
	;;
	.mfi
	nop 0
	mov f8 = f1
	(p6) mov r8 = r33
	;;
	.mfb
	nop 0
	(p6) mov f8 = f1
	(p6) br.cond.dptk .L1761
	;;
	.align 32
.L1763:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	nop 0
.L1761:
	.mii
	nop 0
	extr.u r15 = r8, 31, 1
	cmp4.le p12, p13 = r0, r33
	;;
	.mii
	add r14 = r15, r8
	nop 0
	;;
	extr r8 = r14, 1, 31
	;;
	.mib
	nop 0
	cmp4.eq p8, p9 = 0, r8
	(p8) br.cond.dpnt .L1762
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	nop 0
.L1764:
	.mii
	nop 0
	extr.u r2 = r8, 31, 1
	nop 0
	;;
	.mib
	add r3 = r2, r8
	tbit.nz p10, p11 = r8, 0
	(p10) br.cond.dptk .L1763
	;;
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	extr r8 = r3, 1, 31
	.mmb
	nop 0
	nop 0
	br .L1764
.L1762:
	.pred.rel.mutex p12, p13
	.mbb
	nop 0
	(p13) br.cond.dpnt .L1769
	br.ret.sptk.many b0
.L1769:
	.mmf
	nop 0
	nop 0
	frcpa.s0 f7, p14 = f1, f8
	;;
	.mmf
	nop 0
	nop 0
	(p14) fnma.s1 f10 = f8, f7, f1
	;;
	.mfi
	nop 0
	(p14) fma.s1 f11 = f7, f10, f7
	nop 0
	.mfi
	nop 0
	(p14) fmpy.s1 f9 = f10, f10
	nop 0
	;;
	.mfi
	nop 0
	(p14) fma.s1 f13 = f11, f9, f11
	nop 0
	.mfi
	nop 0
	(p14) fmpy.s1 f12 = f9, f9
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	(p14) fma.s1 f14 = f13, f12, f13
	;;
	.mmf
	nop 0
	nop 0
	(p14) fmpy.d.s1 f15 = f14, f1
	;;
	.mmf
	nop 0
	nop 0
	(p14) fnma.s1 f32 = f8, f15, f1
	;;
	.mmf
	nop 0
	nop 0
	(p14) fma.d.s0 f7 = f32, f14, f15
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
	mov r8 = r33
	;;
	.mfi
	nop 0
	mov f8 = f1
	(p6) mov r8 = r33
	;;
	.mfb
	nop 0
	(p6) mov f8 = f1
	(p6) br.cond.dptk .L1771
	;;
	.align 32
.L1773:
	.mfi
	nop 0
	fmpy.s f8 = f8, f6
	nop 0
.L1771:
	.mii
	nop 0
	extr.u r15 = r8, 31, 1
	cmp4.le p12, p13 = r0, r33
	;;
	.mii
	add r14 = r15, r8
	nop 0
	;;
	extr r8 = r14, 1, 31
	;;
	.mib
	nop 0
	cmp4.eq p8, p9 = 0, r8
	(p8) br.cond.dpnt .L1772
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	nop 0
.L1774:
	.mii
	nop 0
	extr.u r2 = r8, 31, 1
	nop 0
	;;
	.mib
	add r3 = r2, r8
	tbit.nz p10, p11 = r8, 0
	(p10) br.cond.dptk .L1773
	;;
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	extr r8 = r3, 1, 31
	.mmb
	nop 0
	nop 0
	br .L1774
.L1772:
	.pred.rel.mutex p12, p13
	.mbb
	nop 0
	(p13) br.cond.dpnt .L1779
	br.ret.sptk.many b0
.L1779:
	.mmf
	nop 0
	nop 0
	frcpa.s0 f10, p14 = f1, f8
	;;
	.mmf
	nop 0
	nop 0
	(p14) fnma.s1 f9 = f8, f10, f1
	;;
	.mmf
	nop 0
	nop 0
	(p14) fma.s1 f7 = f10, f9, f10
	;;
	.mmf
	nop 0
	nop 0
	(p14) fma.s1 f11 = f7, f9, f10
	;;
	.mmf
	nop 0
	nop 0
	(p14) fmpy.s.s1 f12 = f11, f1
	;;
	.mmf
	nop 0
	nop 0
	(p14) fnma.s1 f13 = f12, f8, f1
	;;
	.mmf
	nop 0
	nop 0
	(p14) fma.s.s0 f10 = f13, f11, f12
	;;
	.mfb
	nop 0
	mov f8 = f10
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
	cmp4.ltu p12, p13 = r14, r15
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dpnt .L1784
	;;
	.mib
	(p12) addl r8 = 2, r0
	nop 0
	(p12) br.cond.dpnt .L1780
	;;
	.mmi
	nop 0
	(p10) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1784
.L1780:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1784:
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
	cmp4.ltu p12, p13 = r14, r15
	cmp4.gtu p6, p7 = r14, r15
	(p6) br.cond.dpnt .L1792
	;;
	.mib
	(p12) addl r8 = 1, r0
	nop 0
	(p12) br.cond.dpnt .L1788
	;;
	.mmi
	nop 0
	(p10) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
	(p8) br.cond.dpnt .L1792
.L1788:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1792:
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
	.mmi
	cmp.ltu p10, p11 = r35, r33
	cmp.ltu p8, p9 = r34, r32
	nop 0
	.mmb
	cmp.gtu p6, p7 = r35, r33
	cmp.gtu p12, p13 = r34, r32
	(p6) br.cond.dpnt .L1799
	;;
	.mib
	(p10) addl r8 = 2, r0
	nop 0
	(p10) br.cond.dpnt .L1795
	;;
	.mmi
	nop 0
	(p8) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p9) addl r8 = 1, r0
	(p12) br.cond.dpnt .L1799
.L1795:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1799:
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
