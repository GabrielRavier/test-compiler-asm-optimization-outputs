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
	.mmi
	mov r8 = r32
	adds r20 = -1, r34
	and r18 = -8, r34
	.mmi
	mov r15 = r32
	adds r30 = -8, r34
	adds r31 = -2, r34
	;;
	.mmi
	adds r25 = -8, r18
	add r17 = r8, r34
	adds r9 = -1, r34
	.mmi
	or r16 = r33, r32
	mov r14 = r33
	mov r19 = r18
	;;
	.mii
	nop 0
	.save pr, r2
	mov r2 = pr
	shr.u r10 = r25, 3
	.mmb
	cmp.geu p12, p13 = 7, r9
	and r27 = 7, r16
	nop 0
	;;
	.mmi
	mov r22 = r10
	cmp.eq p10, p11 = 0, r27
	(p12) adds r27 = 1, r33
	.mmi
	cmp.geu p6, p7 = r33, r32
	cmp.eq p32, p33 = 0, r34
	cmp.geu p34, p35 = 8, r20
	;;
	.mmb
	(p10) addl r9 = 1, r0
	cmp.eq p2, p3 = r33, r32
	nop 0
	.mmi
	cmp.eq p4, p5 = 0, r34
	cmp.lt p16, p17 = 2, r22
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	;;
	.mii
	nop 0
	mov ar.lc = r10
	(p11) mov r9 = r0
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dptk .L6
	;;
	.mmi
	mov r9 = r10
	add r18 = r33, r34
	mov r10 = ar.lc
	.mmb
	add r32 = r32, r20
	add r15 = r8, r30
	(p32) br.cond.dpnt .L7
	;;
	.mmi
	sub r29 = r18, r34
	nop 0
	add r14 = r33, r30
	.mmb
	add r33 = r33, r31
	nop 0
	(p34) br.cond.dpnt .L86
	;;
	.mii
	sub r26 = r32, r33
	or r20 = r14, r15
	;;
	adds r16 = 6, r26
	.mmi
	and r21 = 7, r20
	;;
	cmp.ltu p36, p37 = 6, r16
	cmp.eq p38, p39 = 0, r21
	;;
	.mii
	(p38) addl r21 = 1, r0
	(p36) addl r16 = 1, r0
	;;
	(p39) mov r21 = r0
	.mmi
	(p37) mov r16 = r0
	;;
	and r11 = r21, r16
	adds r21 = -1, r9
	;;
	.mib
	cmp4.eq p40, p41 = 0, r11
	nop 0
	(p40) br.cond.dpnt .L86
	;;
	.mib
	nop 0
	cmp.lt p42, p43 = 2, r10
	(p43) br.cond.dptk .L76
	.mmi
	ld8 r16 = [r14]
	adds r14 = -8, r14
	mov ar.lc = r21
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
	sub r29 = r34, r19
	cmp.eq p44, p45 = r19, r34
	(p44) br.cond.dpnt .L7
	;;
	.mmi
	adds r34 = -1, r15
	adds r18 = -1, r14
	adds r17 = -2, r15
	.mmi
	adds r19 = -2, r14
	cmp.eq p48, p49 = 2, r29
	adds r30 = -3, r15
	;;
	.mmi
	ld1 r25 = [r34]
	adds r32 = -3, r14
	cmp.eq p50, p51 = 3, r29
	.mmi
	adds r24 = -4, r15
	adds r23 = -4, r14
	cmp.eq p52, p53 = 4, r29
	;;
	.mmi
	adds r31 = -5, r15
	adds r33 = -5, r14
	cmp.eq p54, p55 = 5, r29
	.mmi
	adds r28 = -6, r15
	adds r27 = -6, r14
	cmp.eq p56, p57 = 6, r29
	;;
	.mmi
	adds r26 = -7, r15
	ld1.sa r20 = [r17]
	adds r9 = -7, r14
	.mmb
	st1 [r18] = r25
	cmp.eq p46, p47 = 1, r29
	(p46) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r16 = [r30]
	ld1.sa r21 = [r24]
	nop 0
	;;
	.mmi
	ld1.sa r10 = [r31]
	;;
	ld1.c.clr r20 = [r17]
	nop 0
	;;
	.mib
	st1 [r19] = r20
	nop 0
	(p48) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r11 = [r28]
	;;
	ld1.c.clr r16 = [r30]
	nop 0
	;;
	.mib
	st1 [r32] = r16
	nop 0
	(p50) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r22 = [r26]
	;;
	ld1.c.clr r21 = [r24]
	nop 0
	;;
	.mib
	st1 [r23] = r21
	nop 0
	(p52) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r10 = [r31]
	nop 0
	;;
	.mib
	st1 [r33] = r10
	nop 0
	(p54) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r11 = [r28]
	nop 0
	;;
	.mib
	st1 [r27] = r11
	nop 0
	(p56) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r22 = [r26]
	nop 0
	;;
	.mmi
	st1 [r9] = r22
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
	.pred.rel.mutex p2, p3
	.pred.rel.mutex p4, p5
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p16, p17
	.mib
	sub r17 = r32, r33, 1
	mov r19 = r25
	(p2) br.cond.dpnt .L7
	;;
	.mmi
	cmp.ltu p8, p9 = 6, r17
	nop 0
	add r17 = r32, r18
	.mmb
	adds r19 = -1, r22
	nop 0
	(p4) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	(p8) addl r21 = 1, r0
	nop 0
	;;
	.mib
	(p9) mov r21 = r0
	nop 0
	(p12) br.cond.dpnt .L13
	;;
	.mmi
	adds r27 = 1, r33
	nop 0
	and r11 = r21, r9
	;;
	.mbb
	cmp4.eq p14, p15 = 0, r11
	(p14) br.cond.dpnt .L13
	(p17) br.cond.dptk .L79
	.mmb
	ld8 r16 = [r33]
	adds r14 = 8, r33
	nop 0
	.mmi
	adds r15 = 8, r15
	nop 0
	mov ar.lc = r19
	;;
	.mmi
	st8 [r32] = r16
	nop 0
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
	adds r27 = 1, r17
	.mmi
	adds r28 = 2, r17
	adds r29 = 3, r17
	adds r30 = 4, r17
	;;
	.mmi
	adds r31 = 5, r17
	cmp.eq p22, p23 = 2, r14
	adds r32 = 2, r33
	.mmi
	cmp.eq p24, p25 = 3, r14
	cmp.eq p26, p27 = 4, r14
	adds r25 = 4, r33
	;;
	.mmi
	cmp.eq p28, p29 = 5, r14
	adds r26 = 5, r33
	cmp.eq p30, p31 = 6, r14
	.mmi
	ld1.s r15 = [r33]
	adds r20 = 6, r33
	cmp.eq p18, p19 = r18, r34
	;;
	.mmi
	adds r18 = 1, r33
	adds r34 = 3, r33
	mov ar.lc = r3
	.mmb
	ld1.sa r9 = [r32]
	cmp.eq p20, p21 = 1, r14
	(p18) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r16 = [r18]
	ld1.sa r19 = [r34]
	nop 0
	;;
	.mmi
	chk.s r15, .L87
	nop 0
	nop 0
.L88:
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
	ld1.sa r21 = [r25]
	;;
	ld1.c.clr r16 = [r18]
	nop 0
	;;
	.mib
	st1 [r27] = r16
	nop 0
	(p22) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r10 = [r26]
	;;
	ld1.c.clr r9 = [r32]
	nop 0
	;;
	.mib
	st1 [r28] = r9
	nop 0
	(p24) br.cond.dpnt .L7
	;;
	.mmi
	ld1.sa r11 = [r20]
	;;
	ld1.c.clr r19 = [r34]
	nop 0
	;;
	.mib
	st1 [r29] = r19
	nop 0
	(p26) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r21 = [r25]
	nop 0
	;;
	.mib
	st1 [r30] = r21
	nop 0
	(p28) br.cond.dpnt .L7
	;;
	.mmi
	nop 0
	ld1.c.clr r10 = [r26]
	nop 0
	;;
	.mib
	st1 [r31] = r10
	nop 0
	(p30) br.cond.dpnt .L7
	;;
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	.mmi
	ld1.c.clr r11 = [r20]
	nop 0
	nop 0
	;;
	.mib
	st1 [r17] = r11
	nop 0
	br.ret.sptk.many b0
.L76:
	.mmi
	ld8 r22 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r22
	adds r15 = -8, r15
	br.cloop.sptk.few .L76
	.mib
	nop 0
	nop 0
	br .L77
.L79:
	.mmi
	ld8 r24 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r24
	adds r15 = 8, r15
	br.cloop.sptk.few .L79
	.mib
	nop 0
	nop 0
	br .L80
	;;
.L86:
	.mmi
	sub r34 = r18, r29, 1
	adds r14 = -1, r17
	adds r15 = -1, r18
	;;
	.mii
	nop 0
	mov ar.lc = r34
	;;
	mov r17 = ar.lc
	;;
	.mii
	nop 0
	mov r30 = ar.lc
	;;
	adds r17 = -1, r17
	;;
	.mib
	nop 0
	cmp.lt p58, p59 = 2, r30
	(p59) br.cond.dptk .L78
	.mmi
	ld1 r16 = [r15]
	adds r15 = -1, r15
	mov ar.lc = r17
	;;
	.mmi
	nop 0
	st1 [r14] = r16
	adds r14 = -1, r14
	.align 32
.L11:
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r14] = r16
	adds r14 = -1, r14
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
	ld1 r24 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r14] = r24
	adds r14 = -1, r14
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
	add r22 = r33, r34
	nop 0
	mov r29 = r8
	;;
	.mii
	sub r23 = r22, r27
	nop 0
	;;
	mov ar.lc = r23
	.align 32
.L17:
	.mmi
	mov r24 = r33
	mov r33 = r27
	adds r27 = 1, r27
	;;
	.mmi
	nop 0
	ld1 r28 = [r24]
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
.L87:
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.mib
	ld1 r15 = [r33]
	nop 0
	br .L88
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
	(p6) br.cond.dpnt .L90
	.align 32
.L91:
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
	(p9) br.cond.dpnt .L103
	br.cloop.sptk.few .L91
	;;
.L90:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L103:
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
	(p6) br.cond.dpnt .L112
	.align 32
.L106:
	.mmi
	mov r8 = r32
	ld1 r3 = [r32]
	adds r32 = 1, r32
	;;
	.mbb
	cmp4.ne p8, p9 = r33, r3
	(p9) br.cond.dpnt .L104
	br.cloop.sptk.few .L106
.L112:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L104:
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
	(p6) br.cond.dpnt .L125
	.align 32
.L117:
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
	(p9) br.cond.dpnt .L129
	br.cloop.sptk.few .L117
	;;
.L125:
	.mib
	mov r8 = r0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L129:
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
	(p6) br.cond.dpnt .L131
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L131:
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
	br.cloop.sptk.few .L144
	;;
	.align 32
.L143:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L137:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L144:
	.mmi
	adds r32 = -1, r32
	nop 0
	nop 0
	;;
	.align 32
.L140:
	.mmi
	nop 0
	ld1 r3 = [r8]
	nop 0
	;;
	.mib
	cmp4.eq p6, p7 = r33, r3
	nop 0
	(p6) br.cond.dpnt .L137
	;;
	.mib
	mov r8 = r32
	adds r32 = -1, r32
	br.cloop.sptk.few .L140
	.mib
	nop 0
	nop 0
	br .L143
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
	(p7) br.cond.dpnt .L148
	br.call.sptk.many b0 = memset#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L148:
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
	(p6) br.cond.dpnt .L151
	;;
	.align 32
.L153:
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
	(p8) br.cond.dptk .L153
.L151:
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
	(p7) br.cond.dpnt .L158
	;;
	.align 32
.L159:
	.mii
	nop 0
	zxt1 r15 = r10
	nop 0
	;;
	.mib
	cmp4.ne p8, p9 = r33, r15
	nop 0
	(p9) br.cond.dpnt .L158
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
	(p11) br.cond.dptk .L159
.L158:
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
.L169:
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
	(p6) br.cond.dpnt .L167
	(p8) br.cond.dptk .L169
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L167:
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
	(p7) br.cond.dpnt .L175
	.align 32
.L176:
	.mmi
	ld1.s r3 = [r32]
	ld1.s r8 = [r33]
	cmp4.ne p8, p9 = 0, r17
	.mmb
	nop 0
	nop 0
	(p9) br.cond.dpnt .L181
	;;
	.mmi
	chk.s r3, .L182
	nop 0
	nop 0
.L183:
	.mii
	nop 0
	sxt1 r9 = r3
	nop 0
	.mmi
	adds r32 = 1, r32
	chk.s r8, .L184
	nop 0
.L185:
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
	(p10) br.cond.dptk .L176
	.mii
	nop 0
	zxt1 r16 = r3
	nop 0
	;;
.L175:
	.mii
	nop 0
	zxt1 r18 = r11
	nop 0
	;;
	.mib
	nop 0
	sub r8 = r16, r18
	br.ret.sptk.many b0
.L181:
	.mmi
	mov r16 = r0
	nop 0
	zxt1 r18 = r11
	;;
	.mib
	nop 0
	sub r8 = r16, r18
	br.ret.sptk.many b0
.L182:
	.mib
	ld1 r3 = [r32]
	nop 0
	br .L183
	;;
.L184:
	.mib
	ld1 r8 = [r33]
	nop 0
	br .L185
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
	(p6) br.cond.dpnt .L186
	;;
	.align 32
.L188:
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
	(p8) br.cond.dptk .L188
	.mmi
	sub r8 = r8, r32
	nop 0
	nop 0
.L186:
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
	(p6) br.cond.dpnt .L193
	;;
	.mmi
	chk.s r15, .L207
	nop 0
	nop 0
.L208:
	.mii
	mov r8 = r15
	cmp4.ne p8, p9 = 0, r15
	;;
	(p9) mov r8 = r0
	.mmb
	nop 0
	(p9) ld1 r15 = [r33]
	(p9) br.cond.dpnt .L196
	;;
	.mmi
	ld1.s r15 = [r14]
	nop 0
	nop 0
	;;
	.align 32
.L197:
	.mmi
	mov r19 = r14
	ld1.s r2 = [r17]
	chk.s r15, .L205
.L206:
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
	(p15) br.cond.dpnt .L196
	;;
	.mmi
	nop 0
	ld1.s r15 = [r14]
	chk.s r2, .L203
.L204:
	.mmi
	nop 0
	mov r8 = r2
	adds r17 = 1, r17
	.mmb
	nop 0
	cmp4.ne p6, p7 = 0, r2
	(p6) br.cond.dptk .L197
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
.L196:
	.mmi
	sub r8 = r8, r15
	nop 0
	nop 0
.L193:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L203:
	.mib
	ld1 r2 = [r17]
	nop 0
	br .L204
.L205:
	.mib
	ld1 r15 = [r14]
	nop 0
	br .L206
	;;
.L207:
	.mib
	ld1 r15 = [r32]
	nop 0
	br .L208
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
	(p6) br.cond.dpnt .L209
	;;
	.mii
	nop 0
	mov ar.lc = r9
	adds r14 = -2, r10
	.bbb
	(p2) br.cond.dpnt .L211
	(p4) br.cond.dpnt .L211
	(p9) br.cond.dptk .L225
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
.L212:
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
	br.cloop.sptk.few .L212
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
.L222:
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
	(p10) br.cond.dpnt .L209
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
	chk.s r25, .L228
.L229:
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
	(p18) br.cond.dpnt .L209
	nop 0
	;;
	.mmi
	chk.s r31, .L230
	nop 0
	nop 0
.L231:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mii
	ld1.s r20 = [r19]
	nop 0
	;;
	chk.s r14, .L232
.L233:
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
	(p20) br.cond.dpnt .L209
	nop 0
	;;
	.mmi
	chk.s r32, .L236
	nop 0
	nop 0
.L237:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p22, p23
	.mii
	ld1.s r9 = [r37]
	nop 0
	;;
	chk.s r16, .L234
.L235:
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
	(p22) br.cond.dpnt .L209
	nop 0
	;;
	.mmi
	chk.s r20, .L238
	nop 0
	nop 0
.L239:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mii
	ld1.s r19 = [r41]
	nop 0
	;;
	chk.s r8, .L240
.L241:
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
	(p12) br.cond.dpnt .L209
	nop 0
	;;
	.mmi
	chk.s r9, .L242
	nop 0
	nop 0
.L243:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mii
	ld1.s r37 = [r26]
	nop 0
	;;
	chk.s r10, .L244
.L245:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mmi
	ld1.s r36 = [r30]
	st1 [r35] = r9
	nop 0
	;;
	.mbb
	st1 [r24] = r10
	(p14) br.cond.dpnt .L209
	nop 0
	;;
	.mmi
	chk.s r19, .L246
	nop 0
	nop 0
.L247:
	.pred.rel.mutex p16, p17
	.mmi
	chk.s r28, .L248
	nop 0
	nop 0
.L249:
	.pred.rel.mutex p16, p17
	.mmi
	nop 0
	st1 [r39] = r19
	nop 0
	.mmb
	st1 [r38] = r28
	nop 0
	(p16) br.cond.dpnt .L209
	;;
	.mmi
	chk.s r37, .L250
	nop 0
	nop 0
.L251:
	.mmi
	chk.s r36, .L252
	nop 0
	nop 0
.L253:
	.mmi
	st1 [r27] = r37
	st1 [r33] = r36
	nop 0
.L209:
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
	.mmi
	adds r21 = 8, r17
	nop 0
	nop 0
	;;
	.align 32
.L221:
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
	br.cloop.sptk.few .L221
	.mib
	nop 0
	nop 0
	br .L222
.L211:
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
.L214:
	.mmi
	nop 0
	adds r17 = 1, r33
	nop 0
	.mmi
	ld1 r11 = [r32]
	adds r32 = 2, r32
	chk.s r21, .L226
	;;
.L227:
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
	br.cloop.sptk.few .L214
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L226:
	.mib
	ld1 r21 = [r18]
	nop 0
	br .L227
.L228:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p18, p19
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mib
	ld1 r25 = [r32]
	nop 0
	br .L229
.L230:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mib
	ld1 r31 = [r20]
	nop 0
	br .L231
.L232:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.mib
	ld1 r14 = [r8]
	nop 0
	br .L233
.L234:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p22, p23
	.mib
	ld1 r16 = [r10]
	nop 0
	br .L235
.L236:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p22, p23
	.mib
	ld1 r32 = [r9]
	nop 0
	br .L237
.L238:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r20 = [r19]
	nop 0
	br .L239
.L240:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r8 = [r28]
	nop 0
	br .L241
.L242:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r9 = [r37]
	nop 0
	br .L243
.L244:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r10 = [r36]
	nop 0
	br .L245
.L246:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r19 = [r41]
	nop 0
	br .L247
.L248:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r28 = [r40]
	nop 0
	br .L249
.L250:
	.mib
	ld1 r37 = [r26]
	nop 0
	br .L251
.L252:
	.mib
	ld1 r36 = [r30]
	nop 0
	br .L253
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
	(p6) br.cond.dptk .L274
	(p10) br.cond.dpnt .L274
	;;
	.mii
	(p12) addl r8 = 1, r0
	nop 0
	;;
	(p13) mov r8 = r0
.L274:
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
	(p7) br.cond.dpnt .L290
	;;
	.mmi
	(p14) mov r8 = r0
	and r19 = r11, r2
	(p8) cmp4.eq.or.andcm p12, p13 = 0, r0
	.bbb
	(p12) br.cond.dpnt .L286
	(p10) br.cond.dpnt .L286
	(p14) br.cond.dpnt .L282
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
.L282:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L286:
	.mib
	nop 0
	addl r8 = 1, r0
	br.ret.sptk.many b0
.L290:
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
	(p6) br.cond.dptk .L291
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
.L291:
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
	(p6) br.cond.dpnt .L298
	;;
	.mfb
	nop 0
	(p8) mov f8 = f9
	(p8) br.cond.dpnt .L298
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
.L298:
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
	(p6) br.cond.dpnt .L308
	;;
	.mfb
	nop 0
	(p8) mov f8 = f9
	(p8) br.cond.dpnt .L308
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
.L308:
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
	.mmf
	nop 0
	getf.d r15 = f8
	fcmp.unord p8, p9 = f9, f9
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mmi
	getf.d r14 = f9
	;;
	nop 0
	shr.u r16 = r15, 63
	;;
	.mii
	nop 0
	shr.u r17 = r14, 63
	cmp4.ne p14, p15 = 0, r16
	.bbb
	nop 0
	(p6) br.cond.dpnt .L323
	(p8) br.cond.dpnt .L324
	;;
	.mib
	cmp4.eq p10, p11 = r17, r16
	nop 0
	(p10) br.cond.dptk .L320
	;;
	.mfb
	nop 0
	mov f8 = f9
	(p15) br.cond.dptk .L324
.L318:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L320:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p13) br.cond.dptk .L318
.L323:
	.mib
	setf.d f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L324:
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
	fcmp.unord p8, p9 = f9, f9
	nop 0
	.mlx
	nop 0
	movl r18 = -2147483648
	;;
	.mfi
	getf.s r14 = f9
	fcmp.unord p6, p7 = f8, f8
	nop 0
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
	.bbb
	nop 0
	(p6) br.cond.dpnt .L333
	(p8) br.cond.dpnt .L334
	;;
	.mib
	cmp4.eq p10, p11 = r3, r2
	nop 0
	(p10) br.cond.dptk .L330
	;;
	.mfb
	nop 0
	mov f8 = f9
	(p15) br.cond.dptk .L334
.L328:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L330:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f9
	;;
	.mib
	nop 0
	nop 0
	(p13) br.cond.dptk .L328
.L333:
	.mib
	setf.s f8 = r14
	nop 0
	br.ret.sptk.many b0
	;;
.L334:
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
	fcmp.unord p8, p9 = f9, f9
	nop 0
	;;
	.mmi
	adds r14 = 16, r12
	adds r10 = 16, r12
	adds r15 = 24, r12
	.mmi
	stfe [r12] = f9
	adds r17 = 8, r12
	addl r16 = 32768, r0
	;;
	.mmf
	stfe [r14] = f8
	ld8 r3 = [r17]
	fcmp.unord p6, p7 = f8, f8
	.mfi
	nop 0
	mov f8 = f9
	mov r11 = r10
	;;
	.mmi
	nop 0
	ldfe.s f7 = [r10]
	and r9 = r16, r3
	.mmi
	ld8 r2 = [r15]
	;;
	ldfe.s f32 = [r12]
	and r8 = r16, r2
	.bbb
	nop 0
	(p6) br.cond.dpnt .L343
	(p8) br.cond.dpnt .L344
	;;
	.mib
	cmp4.ne p14, p15 = 0, r8
	cmp4.eq p10, p11 = r9, r8
	(p10) br.cond.dptk .L340
	;;
	.mfi
	nop 0
	(p15) mov f8 = f6
	nop 0
	.mmb
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
.L340:
	.body
	.copy_state 1
	.mmi
	chk.s f7, .L348
	nop 0
	nop 0
	;;
.L349:
	.mmf
	nop 0
	nop 0
	mov f8 = f7
	;;
	.mmi
	chk.s f32, .L352
	nop 0
	nop 0
.L353:
	.mmf
	nop 0
	nop 0
	mov f7 = f32
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f8, f7
	;;
	.mfi
	nop 0
	(p12) mov f8 = f7
	nop 0
	.mmb
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
.L343:
	.body
	.copy_state 2
	.mmi
	chk.s f32, .L350
	nop 0
	nop 0
	;;
.L351:
	.mfi
	nop 0
	mov f8 = f32
	nop 0
	.mmb
	.label_state 3
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
	;;
.L344:
	.body
	.copy_state 3
	.mib
	ldfe f8 = [r11]
	.label_state 4
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L348:
	.body
	.copy_state 4
	.mib
	ldfe f7 = [r10]
	nop 0
	br .L349
	;;
.L350:
	.mib
	ldfe f32 = [r12]
	nop 0
	br .L351
	;;
.L352:
	.mib
	ldfe f32 = [r12]
	nop 0
	br .L353
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
	fcmp.unord p8, p9 = f9, f9
	.mmf
	nop 0
	nop 0
	fcmp.unord p6, p7 = f8, f8
	;;
	.mmi
	getf.d r14 = f9
	;;
	setf.d f6 = r15
	shr.u r16 = r15, 63
	;;
	.mii
	nop 0
	shr.u r17 = r14, 63
	cmp4.ne p14, p15 = 0, r16
	.bbb
	nop 0
	(p6) br.cond.dpnt .L359
	(p8) br.cond.dpnt .L360
	;;
	.mbb
	cmp4.eq p10, p11 = r17, r16
	(p10) br.cond.dptk .L356
	(p15) br.cond.dptk .L359
.L354:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L356:
	.mfi
	nop 0
	mov f8 = f9
	nop 0
	.mfi
	nop 0
	fcmp.lt p12, p13 = f6, f9
	nop 0
	;;
	.mib
	nop 0
	nop 0
	(p13) br.cond.dptk .L354
.L360:
	.mib
	setf.d f8 = r15
	nop 0
	br.ret.sptk.many b0
	;;
.L359:
	.mib
	setf.d f8 = r14
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
	getf.s r15 = f8
	fcmp.unord p8, p9 = f9, f9
	nop 0
	.mlx
	nop 0
	movl r18 = -2147483648
	;;
	.mfi
	getf.s r14 = f9
	fcmp.unord p6, p7 = f8, f8
	nop 0
	;;
	.mii
	setf.s f6 = r15
	mov r16 = r15
	;;
	mov r17 = r14
	.mmi
	and r2 = r18, r16
	;;
	and r3 = r18, r17
	cmp4.ne p14, p15 = 0, r2
	.bbb
	nop 0
	(p6) br.cond.dpnt .L369
	(p8) br.cond.dpnt .L370
	;;
	.mbb
	cmp4.eq p10, p11 = r3, r2
	(p10) br.cond.dptk .L366
	(p15) br.cond.dptk .L369
.L364:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L366:
	.mfi
	nop 0
	mov f8 = f9
	nop 0
	.mfi
	nop 0
	fcmp.lt p12, p13 = f6, f9
	nop 0
	;;
	.mib
	nop 0
	nop 0
	(p13) br.cond.dptk .L364
.L370:
	.mib
	setf.s f8 = r15
	nop 0
	br.ret.sptk.many b0
	;;
.L369:
	.mib
	setf.s f8 = r14
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
	fcmp.unord p8, p9 = f9, f9
	nop 0
	.mfi
	nop 0
	fcmp.unord p6, p7 = f8, f8
	nop 0
	;;
	.mmi
	adds r14 = 16, r12
	adds r10 = 16, r12
	adds r15 = 24, r12
	.mmi
	stfe [r12] = f9
	adds r17 = 8, r12
	addl r16 = 32768, r0
	;;
	.mmi
	stfe [r14] = f8
	ld8 r3 = [r17]
	mov r11 = r10
	;;
	.mmi
	nop 0
	ldfe.s f7 = [r10]
	and r9 = r16, r3
	.mmi
	ld8 r2 = [r15]
	;;
	ldfe.s f6 = [r12]
	and r8 = r16, r2
	.bbb
	nop 0
	(p6) br.cond.dpnt .L379
	(p8) br.cond.dpnt .L380
	;;
	.mib
	cmp4.ne p14, p15 = 0, r8
	cmp4.eq p10, p11 = r9, r8
	(p10) br.cond.dptk .L376
	;;
	.mfi
	nop 0
	(p15) mov f8 = f9
	nop 0
	.mmb
	.label_state 1
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
.L376:
	.body
	.copy_state 1
	.mmi
	chk.s f6, .L388
	nop 0
	nop 0
	;;
.L389:
	.mmf
	nop 0
	nop 0
	mov f8 = f6
	;;
	.mmi
	chk.s f7, .L384
	nop 0
	nop 0
.L385:
	.mmf
	nop 0
	nop 0
	fcmp.lt p12, p13 = f7, f8
	;;
	.mfi
	nop 0
	(p12) mov f8 = f7
	nop 0
	.mmb
	.label_state 2
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
.L379:
	.body
	.copy_state 2
	.mmi
	chk.s f6, .L386
	nop 0
	nop 0
	;;
.L387:
	.mfi
	nop 0
	mov f8 = f6
	nop 0
	.mmb
	.label_state 3
	.restore sp
	adds r12 = 16, r12
	nop 0
	br.ret.sptk.many b0
	;;
.L380:
	.body
	.copy_state 3
	.mib
	ldfe f8 = [r11]
	.label_state 4
	.restore sp
	adds r12 = 16, r12
	br.ret.sptk.many b0
.L384:
	.body
	.copy_state 4
	.mib
	ldfe f7 = [r10]
	nop 0
	br .L385
	;;
.L386:
	.mib
	ldfe f6 = [r12]
	nop 0
	br .L387
	;;
.L388:
	.mib
	ldfe f6 = [r12]
	nop 0
	br .L389
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
	(p6) br.cond.dpnt .L391
	.mii
	and r15 = 63, r14
	extr.u r14 = r14, 6, 26
	;;
	add r3 = r2, r15
	;;
	.align 32
.L392:
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
	(p8) br.cond.dptk .L392
	;;
.L391:
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
	(p7) br.cond.dpnt .L401
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
.L401:
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
	(p6) br.cond.dpnt .L420
	;;
	.mmi
	mov r45 = r37
	mov r44 = r32
	mov ar.lc = r14
	.align 32
.L422:
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
	(p8) br.cond.dpnt .L419
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L422
.L420:
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
	(p10) br.cond.dpnt .L419
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
.L419:
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
	(p6) br.cond.dpnt .L437
	;;
	.mmi
	mov r43 = r33
	mov r42 = r32
	mov ar.lc = r15
	.align 32
.L439:
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
	(p8) br.cond.dpnt .L436
	;;
	.mib
	nop 0
	nop 0
	br.cloop.sptk.few .L439
.L437:
	.mmi
	mov r37 = r0
	nop 0
	nop 0
	;;
.L436:
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
	ld1 r27 = [r32]
	adds r28 = 1, r32
	;;
	sxt1 r14 = r27
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
	(p7) br.cond.dpnt .L452
	.mmi
	ld1.s r27 = [r28]
	nop 0
	nop 0
	;;
	.align 32
.L475:
	.mmi
	nop 0
	mov r32 = r28
	chk.s r27, .L477
.L478:
	.mii
	nop 0
	sxt1 r14 = r27
	adds r28 = 1, r28
	;;
	.mmi
	ld1.s r27 = [r28]
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
	(p6) br.cond.dptk .L475
.L452:
	.mmi
	adds r11 = 1, r32
	mov r19 = r0
	mov r8 = r0
	.mmi
	adds r10 = -48, r14
	adds r22 = 1, r32
	cmp4.eq p8, p9 = 43, r14
	;;
	.mmi
	cmp4.eq p12, p13 = 45, r14
	ld1.s r2 = [r11]
	cmp4.geu p6, p7 = 9, r10
	.bbb
	nop 0
	(p8) br.cond.dpnt .L454
	(p12) br.cond.dptk .L455
	;;
	.mbb
	mov r11 = r32
	(p7) br.cond.dpnt .L482
	br .L460
.L460:
	.mmi
	nop 0
	ld1.s r21 = [r22]
	adds r16 = -48, r15
	;;
	.align 32
.L476:
	.mii
	shladd r20 = r8, 2, r0
	sxt1 r24 = r16
	chk.s r21, .L479
.L480:
	.mmi
	adds r22 = 1, r22
	nop 0
	sxt1 r15 = r21
	;;
	.mmi
	add r23 = r20, r8
	ld1.s r21 = [r22]
	adds r26 = -48, r15
	.mmi
	adds r16 = -48, r15
	;;
	shladd r25 = r23, 1, r0
	cmp4.geu p8, p9 = 9, r26
	;;
	.mib
	nop 0
	sub r8 = r25, r24
	(p8) br.cond.dptk .L476
	.mmi
	nop 0
	cmp4.ne p10, p11 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p11) sub r8 = r24, r25
	br.ret.sptk.many b0
.L455:
	.mmi
	addl r19 = 1, r0
	adds r22 = 1, r11
	chk.s r2, .L484
	;;
.L485:
	.mii
	mov r8 = r2
	nop 0
	;;
	sxt1 r15 = r8
	.mmi
	mov r8 = r0
	;;
	adds r9 = -48, r15
	nop 0
	;;
	.mib
	nop 0
	cmp4.ltu p14, p15 = 9, r9
	(p15) br.cond.dptk .L460
.L482:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L454:
	.mmi
	nop 0
	adds r22 = 1, r11
	chk.s r2, .L486
.L487:
	.mii
	nop 0
	sxt1 r15 = r2
	;;
	adds r3 = -48, r15
	;;
	.mbb
	cmp4.geu p10, p11 = 9, r3
	(p11) br.cond.dpnt .L482
	br .L460
.L477:
	.mib
	ld1 r27 = [r28]
	nop 0
	br .L478
.L479:
	.mib
	ld1 r21 = [r22]
	nop 0
	br .L480
.L484:
	.mib
	ld1 r2 = [r11]
	nop 0
	br .L485
	;;
.L486:
	.mib
	ld1 r2 = [r11]
	nop 0
	br .L487
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
	ld1 r27 = [r32]
	adds r28 = 1, r32
	;;
	sxt1 r14 = r27
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
	(p7) br.cond.dpnt .L489
	.mmi
	ld1.s r27 = [r28]
	nop 0
	nop 0
	;;
	.align 32
.L512:
	.mmi
	nop 0
	mov r32 = r28
	chk.s r27, .L514
.L515:
	.mii
	nop 0
	sxt1 r14 = r27
	adds r28 = 1, r28
	;;
	.mmi
	ld1.s r27 = [r28]
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
	(p6) br.cond.dptk .L512
.L489:
	.mmi
	adds r11 = 1, r32
	mov r19 = r0
	mov r8 = r0
	.mmi
	adds r10 = -48, r14
	adds r22 = 1, r32
	cmp4.eq p8, p9 = 43, r14
	;;
	.mmi
	cmp4.eq p12, p13 = 45, r14
	ld1.s r2 = [r11]
	cmp4.geu p6, p7 = 9, r10
	.bbb
	nop 0
	(p8) br.cond.dpnt .L491
	(p12) br.cond.dptk .L492
	;;
	.mbb
	mov r11 = r32
	(p7) br.cond.dpnt .L519
	br .L497
.L497:
	.mmi
	nop 0
	ld1.s r21 = [r22]
	adds r16 = -48, r15
	;;
	.align 32
.L513:
	.mii
	shladd r20 = r8, 2, r0
	sxt1 r24 = r16
	chk.s r21, .L516
.L517:
	.mmi
	adds r22 = 1, r22
	nop 0
	sxt1 r15 = r21
	;;
	.mmi
	add r23 = r20, r8
	ld1.s r21 = [r22]
	adds r26 = -48, r15
	.mmi
	adds r16 = -48, r15
	;;
	shladd r25 = r23, 1, r0
	cmp4.geu p8, p9 = 9, r26
	;;
	.mib
	nop 0
	sub r8 = r25, r24
	(p8) br.cond.dptk .L513
	.mmi
	nop 0
	cmp4.ne p10, p11 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p11) sub r8 = r24, r25
	br.ret.sptk.many b0
.L492:
	.mmi
	addl r19 = 1, r0
	adds r22 = 1, r11
	chk.s r2, .L521
	;;
.L522:
	.mii
	mov r8 = r2
	nop 0
	;;
	sxt1 r15 = r8
	.mmi
	mov r8 = r0
	;;
	adds r9 = -48, r15
	nop 0
	;;
	.mib
	nop 0
	cmp4.ltu p14, p15 = 9, r9
	(p15) br.cond.dptk .L497
.L519:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L491:
	.mmi
	nop 0
	adds r22 = 1, r11
	chk.s r2, .L523
.L524:
	.mii
	nop 0
	sxt1 r15 = r2
	;;
	adds r3 = -48, r15
	;;
	.mbb
	cmp4.geu p10, p11 = 9, r3
	(p11) br.cond.dpnt .L519
	br .L497
.L514:
	.mib
	ld1 r27 = [r28]
	nop 0
	br .L515
.L516:
	.mib
	ld1 r21 = [r22]
	nop 0
	br .L517
.L521:
	.mib
	ld1 r2 = [r11]
	nop 0
	br .L522
	;;
.L523:
	.mib
	ld1 r2 = [r11]
	nop 0
	br .L524
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
	ld1 r27 = [r32]
	adds r28 = 1, r32
	;;
	sxt1 r14 = r27
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
	(p7) br.cond.dpnt .L526
	.mmi
	ld1.s r27 = [r28]
	nop 0
	nop 0
	;;
	.align 32
.L545:
	.mmi
	nop 0
	mov r32 = r28
	chk.s r27, .L548
.L549:
	.mii
	nop 0
	sxt1 r14 = r27
	adds r28 = 1, r28
	;;
	.mmi
	ld1.s r27 = [r28]
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
	(p6) br.cond.dptk .L545
.L526:
	.mmi
	mov r19 = r0
	adds r11 = 1, r32
	adds r8 = -48, r14
	.mmb
	adds r22 = 1, r32
	cmp4.eq p8, p9 = 43, r14
	(p8) br.cond.dpnt .L528
	;;
	.mmi
	ld1.s r9 = [r11]
	adds r22 = 1, r11
	cmp4.ne p12, p13 = 45, r14
	.mmb
	cmp4.geu p6, p7 = 9, r8
	mov r8 = r0
	(p13) br.cond.dptk .L546
	;;
	.mib
	nop 0
	mov r11 = r32
	(p7) br.cond.dpnt .L556
.L533:
	.mmi
	nop 0
	ld1.s r21 = [r22]
	adds r16 = -48, r15
	;;
	.align 32
.L547:
	.mii
	shladd r20 = r8, 2, r0
	sxt1 r24 = r16
	chk.s r21, .L550
.L551:
	.mmi
	adds r22 = 1, r22
	nop 0
	sxt1 r15 = r21
	;;
	.mmi
	add r23 = r20, r8
	ld1.s r21 = [r22]
	adds r26 = -48, r15
	.mmi
	adds r16 = -48, r15
	;;
	shladd r25 = r23, 1, r0
	cmp4.geu p8, p9 = 9, r26
	;;
	.mib
	nop 0
	sub r8 = r25, r24
	(p8) br.cond.dptk .L547
	.mmi
	nop 0
	cmp4.ne p10, p11 = 0, r19
	nop 0
	;;
	.mib
	nop 0
	(p11) sub r8 = r24, r25
	br.ret.sptk.many b0
.L546:
	.mmi
	nop 0
	addl r19 = 1, r0
	chk.s r9, .L553
.L554:
	.mii
	nop 0
	sxt1 r15 = r9
	;;
	adds r10 = -48, r15
	;;
	.mbb
	cmp4.geu p14, p15 = 9, r10
	(p14) br.cond.dptk .L533
	br .L556
.L536:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L556:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L528:
	.mmi
	ld1 r2 = [r11]
	nop 0
	adds r22 = 1, r11
	;;
	.mii
	nop 0
	sxt1 r15 = r2
	;;
	adds r3 = -48, r15
	;;
	.mib
	cmp4.ltu p10, p11 = 9, r3
	nop 0
	(p10) br.cond.dpnt .L536
	;;
	.mib
	nop 0
	mov r8 = r0
	br .L533
.L548:
	.mib
	ld1 r27 = [r28]
	nop 0
	br .L549
.L550:
	.mib
	ld1 r21 = [r22]
	nop 0
	br .L551
.L553:
	.mib
	ld1 r9 = [r11]
	nop 0
	br .L554
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
	(p6) br.cond.dpnt .L559
	br .L574
.L575:
	.mib
	ld8 r14 = [r36], 8
	sub r34 = r34, r37, 1
	br .L573
	;;
.L574:
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
.L573:
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
	(p8) br.cond.dpnt .L563
	;;
	.mii
	nop 0
	shr.u r37 = r34, 1
	nop 0
	.mmb
	getf.sig r2 = f4
	mov r41 = r32
	(p10) br.cond.dpnt .L558
	;;
	.mmi
	nop 0
	add r3 = r15, r2
	nop 0
	;;
	.mib
	setf.sig f3 = r3
	nop 0
	(p12) br.cond.dptk .L575
.L559:
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
.L563:
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
	(p12) br.cond.dptk .L575
	.mib
	nop 0
	nop 0
	br .L559
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
	(p7) br.cond.dpnt .L581
	br .L594
.L595:
	.mmi
	nop 0
	ld8 r2 = [r36], 8
	nop 0
	;;
	.mmi
	ld8 r1 = [r36], -8
	nop 0
	nop 0
.L596:
	.mib
	nop 0
	nop 0
	br .L593
	;;
.L594:
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
.L593:
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
	(p8) br.cond.dpnt .L576
	;;
	.mii
	getf.sig r3 = f4
	extr r14 = r33, 1, 31
	mov r45 = r37
	.mmb
	mov r43 = r32
	cmp4.eq p12, p13 = 0, r39
	(p10) br.cond.dpnt .L579
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
	(p14) br.cond.dptk .L595
.L581:
	.mmi
	setf.sig f2 = r0
	nop 0
	nop 0
	;;
.L576:
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
.L579:
	.body
	.copy_state 1
	.pred.rel.mutex p12, p13
	.mib
	mov r33 = r39
	nop 0
	(p12) br.cond.dpnt .L581
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
	br .L596
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
	(p7) br.cond.dpnt .L615
	.align 32
.L612:
	.mib
	cmp4.ne p8, p9 = r14, r33
	nop 0
	(p9) br.cond.dpnt .L621
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
	(p11) br.cond.dptk .L612
.L615:
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
	;;
.L621:
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
.L625:
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
	(p6) br.cond.dpnt .L623
	(p8) br.cond.dptk .L625
.L623:
	.mmi
	addl r8 = -1, r0
	nop 0
	cmp4.lt p10, p11 = r15, r14
	.mmb
	cmp4.gt p12, p13 = r15, r14
	nop 0
	(p12) br.cond.dptk .L622
	;;
	.mii
	(p10) addl r8 = 1, r0
	nop 0
	;;
	(p11) mov r8 = r0
.L622:
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
.L632:
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
	(p6) br.cond.dptk .L632
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
	(p6) br.cond.dpnt .L636
	;;
	.align 32
.L638:
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
	(p8) br.cond.dptk .L638
	.mii
	sub r3 = r8, r32
	nop 0
	;;
	shr r8 = r3, 2
.L636:
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
	(p6) br.cond.dpnt .L654
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L645:
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
	(p9) br.cond.dpnt .L658
	br.cloop.sptk.few .L645
.L654:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L643:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L658:
	.mmi
	ld4 r10 = [r16]
	nop 0
	addl r8 = -1, r0
	;;
	.mib
	cmp4.lt p10, p11 = r9, r10
	cmp4.le p12, p13 = r9, r10
	(p13) br.cond.dptk .L643
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
	(p6) br.cond.dpnt .L667
	.align 32
.L661:
	.mmi
	mov r8 = r32
	ld4 r3 = [r32]
	adds r32 = 4, r32
	;;
	.mbb
	cmp4.ne p8, p9 = r33, r3
	(p9) br.cond.dpnt .L659
	br.cloop.sptk.few .L661
.L667:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L659:
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
	(p6) br.cond.dpnt .L681
	.align 32
.L672:
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
	(p9) br.cond.dpnt .L685
	br.cloop.sptk.few .L672
.L681:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L670:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L685:
	.mmi
	addl r8 = -1, r0
	nop 0
	cmp4.lt p10, p11 = r10, r9
	.mmb
	cmp4.le p12, p13 = r10, r9
	nop 0
	(p13) br.cond.dptk .L670
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
	(p6) br.cond.dpnt .L687
	br.call.sptk.many b0 = memcpy#
	;;
	.mmi
	nop 0
	mov r1 = r37
	mov r8 = r32
.L687:
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
	sub r18 = r32, r33
	shladd r15 = r34, 2, r0
	.mmi
	mov r27 = r32
	mov r14 = r33
	adds r16 = -1, r34
	;;
	.mmi
	cmp.geu p14, p15 = 8, r16
	shladd r28 = r16, 2, r0
	or r19 = r32, r33
	.mmi
	adds r25 = 4, r33
	cmp.ne p6, p7 = r33, r32
	shr.u r20 = r34, 1
	;;
	.mmi
	cmp.gtu p8, p9 = r15, r18
	mov r15 = r32
	shr.u r29 = r28, 2
	.mmi
	and r3 = 7, r19
	cmp.ne p12, p13 = r25, r32
	(p14) adds r25 = 4, r33
	;;
	.mmi
	mov r30 = r29
	adds r9 = -1, r20
	.save ar.lc, r2
	mov r2 = ar.lc
	.body
	.mmb
	cmp.ne p10, p11 = 0, r34
	cmp.eq.and.orcm p12, p13 = 0, r3
	(p7) br.cond.dpnt .L708
	;;
	.mii
	nop 0
	mov ar.lc = r29
	nop 0
	.mmb
	mov r17 = r9
	mov r10 = r9
	(p8) br.cond.dptk .L695
	;;
	.bbb
	(p11) br.cond.dpnt .L708
	(p14) br.cond.dpnt .L699
	(p13) br.cond.dpnt .L699
	;;
	.mii
	nop 0
	mov ar.lc = r9
	adds r17 = -1, r17
	.mmb
	nop 0
	cmp.lt p6, p7 = 2, r10
	(p7) br.cond.dptk .L725
	;;
	.mmb
	ld8 r16 = [r33]
	adds r14 = 8, r33
	nop 0
	.mmi
	adds r15 = 8, r15
	nop 0
	mov ar.lc = r17
	;;
	.mmi
	st8 [r32] = r16
	nop 0
	nop 0
	.align 32
.L702:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L702
	.mib
	and r14 = -2, r34
	tbit.z p8, p9 = r34, 0
	(p8) br.cond.dpnt .L708
	;;
.L729:
	.mmi
	shladd r21 = r14, 2, r0
	;;
	add r33 = r33, r21
	add r22 = r8, r21
	;;
	.mmi
	nop 0
	ld4 r23 = [r33]
	nop 0
	;;
	.mmi
	st4 [r22] = r23
	nop 0
	nop 0
.L708:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L725:
	.mmi
	ld8 r11 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r11
	adds r15 = 8, r15
	br.cloop.sptk.few .L725
	.mmi
	nop 0
	and r14 = -2, r34
	tbit.z p8, p9 = r34, 0
	.bbb
	nop 0
	(p9) br.cond.dptk .L729
	br .L708
	;;
.L695:
	.mmi
	add r33 = r33, r28
	add r14 = r32, r28
	adds r16 = -1, r29
	.mmb
	cmp.eq p10, p11 = 0, r34
	cmp.lt p12, p13 = 2, r30
	(p10) br.cond.dpnt .L708
	;;
	.mib
	nop 0
	nop 0
	(p13) br.cond.dptk .L724
	.mmi
	ld4 r15 = [r33]
	adds r33 = -4, r33
	mov ar.lc = r16
	;;
	.mmi
	nop 0
	st4 [r14] = r15
	adds r14 = -4, r14
	.align 32
.L698:
	.mmi
	ld4 r15 = [r33]
	nop 0
	adds r33 = -4, r33
	;;
	.mib
	st4 [r14] = r15
	adds r14 = -4, r14
	br.cloop.sptk.few .L698
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L724:
	.mmi
	ld4 r31 = [r33]
	nop 0
	adds r33 = -4, r33
	;;
	.mib
	st4 [r14] = r31
	adds r14 = -4, r14
	br.cloop.sptk.few .L724
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L699:
	.mii
	nop 0
	mov ar.lc = r16
	nop 0
	.align 32
.L701:
	.mmi
	mov r24 = r33
	mov r33 = r25
	adds r25 = 4, r25
	;;
	.mmi
	nop 0
	ld4 r26 = [r24]
	nop 0
	;;
	.mib
	st4 [r27] = r26
	adds r27 = 4, r27
	br.cloop.sptk.few .L701
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
	(p6) br.cond.dpnt .L733
	(p8) br.cond.dpnt .L738
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
.L736:
	.mib
	st8 [r11] = r15
	adds r11 = 8, r11
	br.cloop.sptk.few .L736
	.mib
	and r19 = -2, r34
	tbit.z p12, p13 = r34, 0
	(p12) br.cond.dpnt .L733
	;;
	.mii
	shladd r20 = r19, 2, r0
	sub r16 = r16, r19
	;;
	add r3 = r17, r20
	;;
.L734:
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
	(p14) br.cond.dpnt .L733
	;;
	.mib
	st4 [r22] = r33
	nop 0
	(p6) br.cond.dpnt .L733
	;;
	.mib
	st4 [r23] = r33
	nop 0
	(p8) br.cond.dpnt .L733
	;;
	.mib
	st4 [r24] = r33
	nop 0
	(p10) br.cond.dpnt .L733
	;;
	.mmi
	st4 [r25] = r33
	(p13) st4 [r21] = r33
	nop 0
.L733:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L738:
	.mib
	nop 0
	nop 0
	br .L734
	.endp wmemset#
	.align 16
	.align 64
	.global bcopy#
	.type	bcopy#, @function
	.proc bcopy#
bcopy:
	.prologue 1, 2
	.mmi
	adds r19 = -1, r34
	and r17 = -8, r34
	add r16 = r33, r34
	.mmi
	adds r28 = -8, r34
	adds r29 = -2, r34
	adds r8 = -1, r34
	;;
	.mmi
	add r30 = r33, r19
	or r15 = r33, r32
	nop 0
	.mmi
	mov r14 = r32
	mov r18 = r17
	add r24 = r32, r29
	;;
	.mmi
	sub r31 = r30, r24
	and r22 = 7, r15
	.save pr, r2
	mov r2 = pr
	.mmi
	cmp.geu p12, p13 = 7, r8
	cmp.leu p6, p7 = r33, r32
	cmp.eq p32, p33 = 0, r34
	;;
	.mmi
	adds r26 = 6, r31
	cmp.eq p10, p11 = 0, r22
	(p12) adds r22 = 1, r32
	.mmi
	cmp.geu p34, p35 = 8, r19
	cmp.eq p2, p3 = r33, r32
	cmp.eq p4, p5 = 0, r34
	;;
	.mmi
	cmp.ltu p36, p37 = 6, r26
	(p10) addl r8 = 1, r0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dptk .L765
	;;
	.mmi
	(p36) addl r26 = 1, r0
	add r17 = r32, r34
	add r14 = r32, r28
	.mmb
	add r33 = r33, r28
	adds r32 = -8, r18
	(p32) br.cond.dpnt .L764
	;;
	.mib
	nop 0
	nop 0
	(p34) br.cond.dpnt .L767
	;;
	.mii
	nop 0
	shr.u r25 = r32, 3
	or r23 = r33, r14
	.mmi
	(p37) mov r26 = r0
	;;
	nop 0
	mov ar.lc = r25
	.mii
	and r19 = 7, r23
	adds r20 = -1, r25
	;;
	mov r8 = ar.lc
	.mmi
	cmp.eq p38, p39 = 0, r19
	;;
	(p38) addl r19 = 1, r0
	nop 0
	;;
	.mmi
	(p39) mov r19 = r0
	;;
	and r15 = r19, r26
	nop 0
	;;
	.mib
	cmp4.eq p40, p41 = 0, r15
	nop 0
	(p40) br.cond.dpnt .L767
	;;
	.mib
	nop 0
	cmp.lt p42, p43 = 2, r8
	(p43) br.cond.dptk .L835
	.mmi
	ld8 r15 = [r14]
	adds r14 = -8, r14
	mov ar.lc = r20
	;;
	.mmi
	nop 0
	st8 [r33] = r15
	adds r33 = -8, r33
	.align 32
.L768:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = -8, r33
	br.cloop.sptk.few .L768
	;;
.L836:
	.mmi
	sub r14 = r16, r18
	sub r33 = r17, r18
	nop 0
	.mmb
	sub r16 = r34, r18
	cmp.eq p44, p45 = r18, r34
	(p44) br.cond.dpnt .L764
	;;
	.mmi
	adds r17 = -1, r33
	adds r18 = -1, r14
	adds r34 = -2, r33
	.mmi
	adds r28 = -2, r14
	cmp.eq p48, p49 = 2, r16
	adds r9 = -3, r33
	;;
	.mmi
	ld1 r24 = [r17]
	adds r21 = -3, r14
	cmp.eq p50, p51 = 3, r16
	.mmi
	adds r10 = -4, r33
	adds r29 = -4, r14
	cmp.eq p52, p53 = 4, r16
	;;
	.mmi
	adds r11 = -5, r33
	adds r30 = -5, r14
	cmp.eq p54, p55 = 5, r16
	.mmi
	adds r22 = -6, r33
	adds r27 = -6, r14
	cmp.eq p56, p57 = 6, r16
	;;
	.mmi
	adds r32 = -7, r33
	ld1.sa r31 = [r34]
	adds r23 = -7, r14
	.mmb
	st1 [r18] = r24
	cmp.eq p46, p47 = 1, r16
	(p46) br.cond.dpnt .L764
	;;
	.mmi
	ld1.sa r25 = [r9]
	ld1.sa r26 = [r10]
	nop 0
	;;
	.mmi
	ld1.sa r19 = [r11]
	;;
	ld1.c.clr r31 = [r34]
	nop 0
	;;
	.mib
	st1 [r28] = r31
	nop 0
	(p48) br.cond.dpnt .L764
	;;
	.mmi
	ld1.sa r8 = [r22]
	;;
	ld1.c.clr r25 = [r9]
	nop 0
	;;
	.mib
	st1 [r21] = r25
	nop 0
	(p50) br.cond.dpnt .L764
	;;
	.mmi
	ld1.sa r15 = [r32]
	;;
	ld1.c.clr r26 = [r10]
	nop 0
	;;
	.mib
	st1 [r29] = r26
	nop 0
	(p52) br.cond.dpnt .L764
	;;
	.mmi
	nop 0
	ld1.c.clr r19 = [r11]
	nop 0
	;;
	.mib
	st1 [r30] = r19
	nop 0
	(p54) br.cond.dpnt .L764
	;;
	.mmi
	nop 0
	ld1.c.clr r8 = [r22]
	nop 0
	;;
	.mib
	st1 [r27] = r8
	nop 0
	(p56) br.cond.dpnt .L764
	;;
	.mmi
	nop 0
	ld1.c.clr r15 = [r32]
	nop 0
	;;
	.mmi
	st1 [r23] = r15
	nop 0
	nop 0
.L764:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L765:
	.pred.rel.mutex p2, p3
	.pred.rel.mutex p4, p5
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.mmi
	(p11) mov r8 = r0
	nop 0
	sub r16 = r33, r32, 1
	.mmb
	adds r18 = -8, r17
	nop 0
	(p2) br.cond.dpnt .L764
	;;
	.mmi
	cmp.ltu p8, p9 = 6, r16
	nop 0
	add r16 = r33, r17
	.mib
	nop 0
	shr.u r9 = r18, 3
	(p4) br.cond.dpnt .L764
	;;
	.mii
	nop 0
	mov ar.lc = r9
	(p8) addl r20 = 1, r0
	;;
	.mii
	nop 0
	mov r11 = ar.lc
	(p9) mov r20 = r0
	.mmb
	nop 0
	nop 0
	(p12) br.cond.dpnt .L772
	;;
	.mmi
	adds r22 = 1, r32
	nop 0
	and r10 = r20, r8
	;;
	.mib
	cmp4.eq p14, p15 = 0, r10
	nop 0
	(p14) br.cond.dpnt .L772
	;;
	.mib
	adds r18 = -1, r11
	cmp.lt p16, p17 = 2, r11
	(p17) br.cond.dptk .L838
	;;
	.mmi
	ld8 r15 = [r32]
	adds r14 = 8, r32
	mov ar.lc = r18
	;;
	.mmi
	nop 0
	st8 [r33] = r15
	adds r33 = 8, r33
	.align 32
.L773:
	.mmi
	ld8 r15 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r33] = r15
	adds r33 = 8, r33
	br.cloop.sptk.few .L773
.L839:
	.mmi
	add r32 = r32, r17
	sub r14 = r34, r17
	adds r27 = 1, r16
	.mmi
	adds r28 = 2, r16
	adds r29 = 3, r16
	adds r30 = 4, r16
	;;
	.mmi
	adds r24 = 5, r16
	cmp.eq p22, p23 = 2, r14
	adds r31 = 2, r32
	.mmi
	cmp.eq p24, p25 = 3, r14
	adds r23 = 3, r32
	cmp.eq p26, p27 = 4, r14
	;;
	.mmi
	adds r25 = 4, r32
	cmp.eq p28, p29 = 5, r14
	adds r26 = 5, r32
	.mmi
	cmp.eq p30, p31 = 6, r14
	ld1.s r33 = [r32]
	adds r15 = 6, r16
	;;
	.mmi
	ld1.sa r8 = [r23]
	cmp.eq p18, p19 = r17, r34
	adds r17 = 1, r32
	.mmb
	adds r34 = 6, r32
	cmp.eq p20, p21 = 1, r14
	(p18) br.cond.dpnt .L764
	;;
	.mii
	ld1.sa r19 = [r17]
	mov ar.lc = r3
	;;
	chk.s r33, .L845
.L846:
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.mib
	st1 [r16] = r33
	nop 0
	(p20) br.cond.dpnt .L764
	;;
	.mmi
	ld1.sa r16 = [r31]
	ld1.sa r18 = [r25]
	nop 0
	;;
	.mmi
	nop 0
	ld1.c.clr r19 = [r17]
	nop 0
	;;
	.mib
	st1 [r27] = r19
	nop 0
	(p22) br.cond.dpnt .L764
	;;
	.mmi
	ld1.sa r20 = [r26]
	;;
	ld1.c.clr r16 = [r31]
	nop 0
	;;
	.mib
	st1 [r28] = r16
	nop 0
	(p24) br.cond.dpnt .L764
	;;
	.mmi
	ld1.sa r9 = [r34]
	;;
	ld1.c.clr r8 = [r23]
	nop 0
	;;
	.mib
	st1 [r29] = r8
	nop 0
	(p26) br.cond.dpnt .L764
	;;
	.mmi
	nop 0
	ld1.c.clr r18 = [r25]
	nop 0
	;;
	.mib
	st1 [r30] = r18
	nop 0
	(p28) br.cond.dpnt .L764
	;;
	.mmi
	nop 0
	ld1.c.clr r20 = [r26]
	nop 0
	;;
	.mib
	st1 [r24] = r20
	nop 0
	(p30) br.cond.dpnt .L764
	;;
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	.mmi
	ld1.c.clr r9 = [r34]
	nop 0
	nop 0
	;;
	.mib
	st1 [r15] = r9
	nop 0
	br.ret.sptk.many b0
.L835:
	.mmi
	ld8 r20 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r33] = r20
	adds r33 = -8, r33
	br.cloop.sptk.few .L835
	.mib
	nop 0
	nop 0
	br .L836
.L838:
	.mmi
	ld8 r22 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r33] = r22
	adds r33 = 8, r33
	br.cloop.sptk.few .L838
	.mib
	nop 0
	nop 0
	br .L839
.L767:
	.mmi
	sub r20 = r17, r34
	adds r14 = -1, r16
	adds r15 = -1, r17
	;;
	.mmi
	nop 0
	sub r33 = r17, r20, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r33
	;;
	mov r16 = ar.lc
	;;
	.mib
	adds r17 = -1, r16
	cmp.lt p58, p59 = 2, r16
	(p59) br.cond.dptk .L837
	;;
	.mmi
	ld1 r16 = [r15]
	adds r15 = -1, r15
	mov ar.lc = r17
	;;
	.mmi
	nop 0
	st1 [r14] = r16
	adds r14 = -1, r14
	.align 32
.L770:
	.mmi
	ld1 r16 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r14] = r16
	adds r14 = -1, r14
	br.cloop.sptk.few .L770
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L837:
	.mmi
	ld1 r17 = [r15]
	nop 0
	adds r15 = -1, r15
	;;
	.mib
	st1 [r14] = r17
	adds r14 = -1, r14
	br.cloop.sptk.few .L837
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L772:
	.mmi
	nop 0
	add r10 = r32, r34
	nop 0
	;;
	.mii
	sub r11 = r10, r22
	nop 0
	;;
	mov ar.lc = r11
	.align 32
.L776:
	.mmi
	mov r21 = r32
	mov r32 = r22
	adds r22 = 1, r22
	;;
	.mmi
	nop 0
	ld1 r27 = [r21]
	nop 0
	;;
	.mib
	st1 [r33] = r27
	adds r33 = 1, r33
	br.cloop.sptk.few .L776
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L845:
	.pred.rel.mutex p20, p21
	.pred.rel.mutex p22, p23
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.mib
	ld1 r33 = [r32]
	nop 0
	br .L846
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
.L876:
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
	(p7) br.cond.dpnt .L873
	br.cloop.sptk.few .L876
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	;;
.L873:
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
	(p6) br.cond.dpnt .L880
	;;
	.mib
	nop 0
	mov r8 = r14
	(p8) br.cond.dpnt .L880
	;;
	.mmi
	addl r8 = 1, r0
	nop 0
	nop 0
	;;
	.align 32
.L882:
	.mii
	nop 0
	extr r2 = r32, 1, 31
	adds r8 = 1, r8
	;;
	.mib
	mov r32 = r2
	tbit.z p10, p11 = r2, 0
	(p10) br.cond.dptk .L882
.L880:
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
	(p6) br.cond.dptk .L887
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
.L887:
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
	(p6) br.cond.dptk .L892
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
.L892:
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
	(p6) br.cond.dptk .L897
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
.L897:
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
	(p6) br.cond.dpnt .L905
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
	(p10) br.cond.dptk .L905
	(p12) br.cond.dptk .L907
	.align 32
.L908:
	.mfi
	nop 0
	fmpy.s f8 = f8, f7
	nop 0
.L907:
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
	(p14) br.cond.dpnt .L905
	.mfi
	nop 0
	fmpy.s f7 = f7, f7
	nop 0
.L909:
	.mii
	nop 0
	extr.u r3 = r33, 31, 1
	nop 0
	;;
	.mib
	add r8 = r3, r33
	tbit.nz p8, p9 = r33, 0
	(p8) br.cond.dptk .L908
	;;
	.mfi
	nop 0
	fmpy.s f7 = f7, f7
	extr r33 = r8, 1, 31
	.mmb
	nop 0
	nop 0
	br .L909
.L905:
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
	(p6) br.cond.dpnt .L917
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
	(p10) br.cond.dptk .L917
	(p12) br.cond.dptk .L919
	.align 32
.L920:
	.mfi
	nop 0
	fmpy.d f8 = f8, f7
	nop 0
.L919:
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
	(p14) br.cond.dpnt .L917
	.mfi
	nop 0
	fmpy.d f7 = f7, f7
	nop 0
.L921:
	.mii
	nop 0
	extr.u r3 = r33, 31, 1
	nop 0
	;;
	.mib
	add r8 = r3, r33
	tbit.nz p8, p9 = r33, 0
	(p8) br.cond.dptk .L920
	;;
	.mfi
	nop 0
	fmpy.d f7 = f7, f7
	extr r33 = r8, 1, 31
	.mmb
	nop 0
	nop 0
	br .L921
.L917:
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
	(p6) br.cond.dpnt .L929
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
	(p10) br.cond.dptk .L929
	;;
	.mmi
	nop 0
	(p8) ldfe f6 = [r2]
	nop 0
	;;
	.mib
	(p9) ldfe f6 = [r3]
	nop 0
	(p12) br.cond.dptk .L931
	;;
	.align 32
.L932:
	.mfi
	nop 0
	fmpy f8 = f8, f6
	nop 0
.L931:
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
	(p14) br.cond.dpnt .L929
	.mfi
	nop 0
	fmpy f6 = f6, f6
	nop 0
.L933:
	.mii
	nop 0
	extr.u r9 = r34, 31, 1
	nop 0
	;;
	.mib
	add r10 = r9, r34
	tbit.nz p8, p9 = r34, 0
	(p8) br.cond.dptk .L932
	;;
	.mfi
	nop 0
	fmpy f6 = f6, f6
	extr r34 = r10, 1, 31
	.mmb
	nop 0
	nop 0
	br .L933
.L929:
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
	(p6) br.cond.dpnt .L941
	(p2) br.cond.dpnt .L980
	;;
	.mib
	nop 0
	shr.u r10 = r17, 3
	(p4) br.cond.dpnt .L980
	;;
	.mii
	nop 0
	mov ar.lc = r10
	nop 0
	.align 32
.L943:
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
	br.cloop.sptk.few .L943
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
	(p8) br.cond.dpnt .L941
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
	(p18) br.cond.dpnt .L941
	;;
	.mii
	ld1 r18 = [r28]
	nop 0
	;;
	chk.s r10, .L981
.L982:
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
	(p20) br.cond.dpnt .L941
	;;
	.mmi
	ld1.sa r28 = [r30]
	;;
	ld1.c.clr r21 = [r29]
	chk.s r16, .L983
	;;
.L984:
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
	(p10) br.cond.dpnt .L941
	;;
	.mmi
	nop 0
	ld1.c.clr r28 = [r30]
	chk.s r14, .L985
.L986:
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
	(p12) br.cond.dpnt .L941
	;;
	.mii
	ld1 r30 = [r31]
	nop 0
	;;
	chk.s r33, .L987
.L988:
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
	(p14) br.cond.dpnt .L941
	;;
	.mii
	ld1 r31 = [r32]
	nop 0
	;;
	chk.s r23, .L989
.L990:
	.pred.rel.mutex p16, p17
	.mmi
	nop 0
	xor r24 = r31, r23
	nop 0
	;;
	.mib
	st1 [r32] = r24
	nop 0
	(p16) br.cond.dpnt .L941
	;;
	.mii
	ld1 r32 = [r17]
	nop 0
	;;
	chk.s r25, .L991
.L992:
	.mmi
	nop 0
	xor r26 = r32, r25
	nop 0
	;;
	.mmi
	st1 [r17] = r26
	nop 0
	nop 0
.L941:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L980:
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
	(p23) br.cond.dptk .L976
	;;
	.mii
	nop 0
	mov ar.lc = r14
	nop 0
	.align 32
.L945:
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
	br.cloop.sptk.few .L945
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
.L976:
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
.L973:
	.mmi
	mov r15 = r16
	adds r16 = 1, r16
	chk.s r10, .L977
.L978:
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
	br.cloop.sptk.few .L973
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L977:
	.mib
	ld1 r10 = [r17]
	nop 0
	br .L978
	;;
.L981:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.pred.rel.mutex p20, p21
	.mib
	ld1 r10 = [r23]
	nop 0
	br .L982
.L983:
	.pred.rel.mutex p10, p11
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r16 = [r24]
	nop 0
	br .L984
.L985:
	.pred.rel.mutex p12, p13
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r14 = [r25]
	nop 0
	br .L986
.L987:
	.pred.rel.mutex p14, p15
	.pred.rel.mutex p16, p17
	.mib
	ld1 r33 = [r26]
	nop 0
	br .L988
.L989:
	.pred.rel.mutex p16, p17
	.mib
	ld1 r23 = [r27]
	nop 0
	br .L990
.L991:
	.mib
	ld1 r25 = [r9]
	nop 0
	br .L992
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
	(p6) br.cond.dpnt .L994
	;;
	.align 32
.L995:
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
	(p8) br.cond.dptk .L995
.L994:
	.mmi
	cmp.eq p10, p11 = 0, r34
	nop 0
	adds r9 = -1, r34
	;;
	.mib
	nop 0
	(p11) mov ar.lc = r9
	(p10) br.cond.dpnt .L996
	.align 32
.L997:
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
	(p13) br.cond.dpnt .L999
	br.cloop.sptk.few .L997
.L996:
	.mmi
	st1 [r17] = r0
	nop 0
	nop 0
	;;
.L999:
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
	(p6) br.cond.dpnt .L1018
.L1010:
	.mii
	ld1 r3 = [r32]
	adds r32 = 1, r32
	;;
	sxt1 r9 = r3
	;;
	.mib
	nop 0
	cmp4.ne p8, p9 = 0, r9
	(p8) br.cond.dpnt .L1019
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L1019:
	.mib
	nop 0
	adds r8 = 1, r8
	br.cloop.sptk.few .L1010
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
	;;
.L1018:
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
	(p7) br.cond.dpnt .L1025
.L1021:
	.mmi
	mov r15 = r33
	nop 0
	nop 0
	;;
	.align 32
.L1024:
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
	(p9) br.cond.dpnt .L1031
	(p13) br.cond.dptk .L1024
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L1031:
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
	(p11) br.cond.dptk .L1021
.L1025:
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
.L1034:
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
	(p6) br.cond.dptk .L1034
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
	(p6) br.cond.dpnt .L1048
	.align 32
.L1040:
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
	(p8) br.cond.dptk .L1040
	.mmi
	sub r20 = r16, r33
	nop 0
	cmp.eq p10, p11 = r33, r16
	.mib
	nop 0
	zxt1 r21 = r19
	(p10) br.cond.dpnt .L1048
	;;
	.mib
	nop 0
	(p11) add r20 = r33, r20
	br .L1055
.L1046:
	.mib
	nop 0
	nop 0
	br .L1055
.L1055:
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
	(p12) br.cond.dpnt .L1045
	(p14) br.cond.dptk .L1046
	.mib
	nop 0
	mov r8 = r0
	br.ret.sptk.many b0
.L1045:
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
.L1042:
	.mmi
	nop 0
	ld1.s r24 = [r32]
	chk.s r11, .L1059
.L1060:
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
	(p11) br.cond.dpnt .L1043
	;;
	.mmi
	nop 0
	mov r17 = r22
	chk.s r24, .L1057
.L1058:
	.mmi
	nop 0
	mov r25 = r24
	adds r32 = 1, r32
	.mmb
	nop 0
	cmp4.ne p12, p13 = 0, r24
	(p12) br.cond.dptk .L1042
	;;
	.mmi
	mov r17 = r22
	nop 0
	nop 0
	;;
.L1043:
	.mmi
	ld1 r26 = [r17]
	nop 0
	adds r32 = 1, r8
	;;
	.mib
	nop 0
	cmp4.eq p14, p15 = r25, r26
	(p15) br.cond.dptk .L1046
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1048:
	.mib
	nop 0
	mov r8 = r32
	br.ret.sptk.many b0
.L1057:
	.mib
	ld1 r24 = [r32]
	nop 0
	br .L1058
.L1059:
	.mib
	ld1 r11 = [r22]
	nop 0
	br .L1060
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
	(p6) br.cond.dpnt .L1073
	;;
	.mmf
	nop 0
	nop 0
	fcmp.gt p8, p9 = f8, f0
	;;
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1065
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p10, p11 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p10) br.cond.dpnt .L1074
.L1065:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
.L1073:
	.mmf
	nop 0
	nop 0
	fcmp.gt p12, p13 = f9, f0
	;;
	.mib
	nop 0
	nop 0
	(p13) br.cond.dptk .L1065
.L1074:
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
	(p6) br.cond.dpnt .L1075
	(p10) br.cond.dpnt .L1086
	;;
	.mib
	nop 0
	cmp.ltu p12, p13 = r27, r32
	(p12) br.cond.dpnt .L1086
	;;
	.mmi
	chk.s r19, .L1103
	nop 0
	nop 0
.L1104:
	.pred.rel.mutex p8, p9
	.mii
	nop 0
	sxt1 r26 = r19
	nop 0
	.align 32
.L1081:
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
	(p15) br.cond.dpnt .L1093
	;;
.L1077:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	cmp.leu p14, p15 = r8, r27
	(p14) br.cond.dptk .L1081
.L1086:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
.L1075:
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1093:
	.pred.rel.mutex p8, p9
	.mbb
	nop 0
	(p8) br.cond.dpnt .L1075
	br .L1096
.L1078:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mib
	nop 0
	nop 0
	br .L1095
.L1096:
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
.L1095:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mmi
	chk.s r17, .L1097
	nop 0
	nop 0
.L1098:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mmi
	nop 0
	adds r11 = 1, r11
	chk.s r10, .L1099
.L1100:
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
	(p7) br.cond.dpnt .L1094
	;;
	.mib
	mov r25 = r18
	cmp.gtu p10, p11 = r18, r27
	br.cloop.sptk.few .L1078
	;;
	.mib
	nop 0
	mov ar.lc = r2
	br.ret.sptk.many b0
.L1094:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mmi
	ld1.s r23 = [r18]
	nop 0
	adds r8 = 1, r18
	.mmb
	mov r15 = r22
	nop 0
	(p10) br.cond.dpnt .L1086
	;;
	.mmi
	nop 0
	add r16 = r8, r21
	mov r11 = r8
	.mmi
	nop 0
	cmp.gtu p10, p11 = r8, r27
	chk.s r23, .L1101
.L1102:
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
	(p12) br.cond.dptk .L1077
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
	br .L1078
.L1097:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mib
	ld1 r17 = [r11]
	nop 0
	br .L1098
.L1099:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mib
	ld1 r10 = [r15]
	nop 0
	br .L1100
.L1101:
	.pred.rel.mutex p8, p9
	.pred.rel.mutex p10, p11
	.mib
	ld1 r23 = [r18]
	nop 0
	br .L1102
.L1103:
	.pred.rel.mutex p8, p9
	.mib
	ld1 r19 = [r34]
	nop 0
	br .L1104
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
	(p6) br.cond.dpnt .L1106
	br.call.sptk.many b0 = memmove#
	;;
	.mmi
	mov r1 = r37
	nop 0
	nop 0
.L1106:
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
	mov r15 = r0
	nop 0
	mov f6 = f8
	;;
	.mfi
	setf.d f7 = r14
	fneg f10 = f8
	nop 0
	.mlx
	nop 0
	movl r2 = 0x3fe0000000000000
	;;
	.mlx
	setf.d f9 = r2
	movl r16 = 0xbfe0000000000000
	.mmf
	nop 0
	nop 0
	fcmp.lt p6, p7 = f8, f0
	;;
	.mlx
	nop 0
	movl r3 = 0x3fe0000000000000
	.mfb
	nop 0
	fcmp.neq p12, p13 = f8, f0
	(p6) br.cond.dpnt .L1137
	;;
	.mfi
	nop 0
	fcmp.ge p8, p9 = f8, f1
	nop 0
	.mmf
	mov r8 = r0
	setf.d f11 = r3
	mov f10 = f8
	;;
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1138
.L1115:
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
.L1121:
	.mfi
	nop 0
	fmpy.d f6 = f6, f12
	adds r8 = 1, r8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.ge p10, p11 = f6, f1
	;;
	.mib
	nop 0
	nop 0
	(p10) br.cond.dptk .L1121
.L1122:
	.mmi
	cmp4.eq p12, p13 = 0, r15
	st4 [r33] = r8
	nop 0
	;;
	.mmf
	nop 0
	nop 0
	(p12) mov f8 = f6
	;;
	.mfb
	nop 0
	(p13) fneg f8 = f6
	br.ret.sptk.many b0
	;;
.L1138:
	.pred.rel.mutex p12, p13
	.mmf
	nop 0
	nop 0
	fcmp.lt p10, p11 = f8, f9
	.mmf
	mov r15 = r0
	nop 0
	mov f6 = f10
	;;
	.mbb
	nop 0
	(p11) br.cond.dptk .L1118
	(p12) br.cond.dpnt .L1127
.L1118:
	.mib
	st4 [r33] = r0
	nop 0
	br.ret.sptk.many b0
.L1137:
	.mfi
	nop 0
	fcmp.le p14, p15 = f6, f7
	addl r15 = 1, r0
	.mmi
	setf.d f8 = r16
	setf.d f11 = r3
	mov r8 = r0
	;;
	.mfb
	nop 0
	(p14) mov f6 = f10
	(p14) br.cond.dptk .L1115
	;;
	.mfi
	nop 0
	fcmp.gt p6, p7 = f6, f8
	nop 0
	.mfi
	nop 0
	mov f8 = f6
	nop 0
	;;
	.mfb
	nop 0
	mov f6 = f10
	(p7) br.cond.dptk .L1118
	;;
	.align 32
.L1139:
	.mfi
	nop 0
	fadd.d f6 = f6, f6
	adds r8 = -1, r8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p8, p9 = f6, f11
	;;
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1122
	;;
	.mfi
	nop 0
	fadd.d f6 = f6, f6
	adds r8 = -1, r8
	;;
	.mmf
	nop 0
	nop 0
	fcmp.lt p8, p9 = f6, f11
	;;
	.mib
	nop 0
	nop 0
	(p8) br.cond.dptk .L1139
	.mib
	nop 0
	nop 0
	br .L1122
.L1127:
	.mib
	nop 0
	nop 0
	br .L1139
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
	(p6) br.cond.dpnt .L1140
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
.L1142:
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
	(p8) br.cond.dptk .L1142
.L1140:
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
	(p7) br.cond.dpnt .L1149
	.mmi
	cmp4.le p8, p9 = r0, r33
	nop 0
	nop 0
	.align 32
.L1148:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1149
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
	(p15) br.cond.dptk .L1148
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1152
	;;
.L1149:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1154:
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
	(p10) br.cond.dptk .L1154
.L1152:
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
	(p6) br.cond.dpnt .L1171
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.align 32
.L1173:
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
	(p8) br.cond.dptk .L1173
.L1171:
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
	nop 0
	and r17 = -8, r34
	extr.u r18 = r34, 3, 29
	.mmi
	addp4 r16 = r34, r0
	mov r14 = r33
	mov r15 = r32
	;;
	.mmi
	addp4 r10 = r18, r0
	add r8 = r33, r16
	.save pr, r2
	mov r2 = pr
	.mmi
	cmp4.ne p8, p9 = 0, r34
	cmp4.eq p4, p5 = 0, r18
	cmp4.ne p38, p39 = 0, r34
	;;
	.mmi
	shladd r11 = r10, 3, r0
	(p38) addp4 r19 = r17, r0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	.mmb
	cmp.leu p6, p7 = r33, r32
	cmp4.ne p36, p37 = 0, r18
	(p7) br.cond.dptk .L1274
	;;
	.mii
	nop 0
	(p4) mov ar.lc = 0
	nop 0
	.mmb
	adds r19 = -1, r34
	cmp.ltu p2, p3 = r8, r32
	(p3) br.cond.dptk .L1263
.L1273:
	.pred.rel.mutex p36, p37
	.pred.rel.mutex p38, p39
	;;
	.mmi
	(p38) addp4 r19 = r17, r0
	nop 0
	nop 0
.L1274:
	.pred.rel.mutex p36, p37
	.pred.rel.mutex p38, p39
	.mib
	adds r20 = -8, r11
	nop 0
	(p37) br.cond.dpnt .L1264
	;;
	.mii
	nop 0
	shr.u r21 = r20, 3
	;;
	mov ar.lc = r21
	;;
	.mii
	nop 0
	mov r22 = ar.lc
	nop 0
	;;
	.mib
	adds r18 = -1, r22
	cmp.lt p40, p41 = 2, r22
	(p41) br.cond.dptk .L1245
	;;
	.mmi
	ld8 r16 = [r14]
	adds r14 = 8, r14
	mov ar.lc = r18
	;;
	.mmi
	nop 0
	st8 [r15] = r16
	adds r15 = 8, r15
	.align 32
.L1185:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1185
.L1246:
	.mmi
	sub r25 = r34, r17, 1
	addp4 r19 = r17, r0
	nop 0
	.mmb
	sub r18 = r34, r17
	cmp4.geu p42, p43 = r17, r34
	(p42) br.cond.dpnt .L1178
	;;
	.mib
	nop 0
	extr.u r29 = r18, 3, 29
	nop 0
	.mmi
	add r15 = r32, r19
	add r14 = r33, r19
	add r27 = r33, r19, 1
	;;
	.mmi
	or r26 = r15, r14
	sub r28 = r15, r27
	nop 0
	.mmb
	shladd r31 = r29, 3, r0
	cmp4.geu p44, p45 = 7, r25
	(p44) br.cond.dpnt .L1187
	;;
	.mmi
	and r30 = 7, r26
	cmp.ltu p46, p47 = 6, r28
	adds r8 = -8, r31
	;;
	.mmi
	cmp.eq p48, p49 = 0, r30
	(p46) addl r28 = 1, r0
	shr.u r9 = r8, 3
	;;
	.mii
	nop 0
	mov ar.lc = r9
	(p47) mov r28 = r0
	.mmi
	(p48) addl r30 = 1, r0
	;;
	nop 0
	mov r10 = ar.lc
	.mmi
	(p49) mov r30 = r0
	;;
	and r16 = r30, r28
	nop 0
	;;
	.mib
	cmp4.eq p50, p51 = 0, r16
	nop 0
	(p50) br.cond.dpnt .L1187
	;;
	.mii
	nop 0
	mov r19 = ar.lc
	;;
	cmp.lt p52, p53 = 2, r10
	;;
	.mib
	nop 0
	adds r19 = -1, r19
	(p53) br.cond.dptk .L1247
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
.L1188:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1188
	;;
	.mmi
	and r15 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mib
	add r17 = r17, r15
	cmp4.eq p54, p55 = 0, r18
	(p54) br.cond.dpnt .L1178
	;;
.L1265:
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
	addp4 r29 = r25, r0
	addp4 r30 = r24, r0
	.mmi
	addp4 r31 = r23, r0
	addp4 r8 = r22, r0
	addp4 r20 = r21, r0
	;;
	.mmi
	adds r28 = 6, r17
	ld1 r11 = [r26]
	add r9 = r32, r14
	.mmi
	cmp4.leu p56, p57 = r34, r25
	add r15 = r32, r29
	cmp4.geu p58, p59 = r24, r34
	;;
	.mmi
	addp4 r17 = r28, r0
	add r10 = r33, r30
	add r16 = r32, r30
	.mmi
	cmp4.geu p60, p61 = r23, r34
	add r24 = r33, r31
	add r18 = r32, r31
	;;
	.mmi
	cmp4.geu p28, p29 = r22, r34
	add r25 = r33, r8
	add r19 = r32, r8
	.mmi
	cmp4.geu p30, p31 = r21, r34
	add r27 = r33, r20
	add r30 = r32, r20
	;;
	.mmi
	cmp4.geu p32, p33 = r28, r34
	add r34 = r33, r29
	add r33 = r33, r17
	.mmb
	ld1.sa r23 = [r10]
	st1 [r9] = r11
	(p56) br.cond.dpnt .L1178
	;;
	.mmi
	ld1 r14 = [r34]
	nop 0
	add r32 = r32, r17
	;;
	.mib
	st1 [r15] = r14
	nop 0
	(p58) br.cond.dpnt .L1178
	;;
	.mmi
	nop 0
	ld1.c.clr r23 = [r10]
	nop 0
	;;
	.mib
	st1 [r16] = r23
	nop 0
	(p60) br.cond.dpnt .L1178
.L1259:
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
	(p28) br.cond.dpnt .L1178
	;;
	.mmi
	nop 0
	ld1 r18 = [r25]
	nop 0
	;;
	.mib
	st1 [r19] = r18
	nop 0
	(p30) br.cond.dpnt .L1178
	;;
	.mmi
	nop 0
	ld1 r27 = [r27]
	nop 0
	;;
	.mib
	st1 [r30] = r27
	nop 0
	(p32) br.cond.dpnt .L1178
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
.L1178:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1245:
	.mmi
	ld8 r24 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r24
	adds r15 = 8, r15
	br.cloop.sptk.few .L1245
	.mib
	nop 0
	nop 0
	br .L1246
.L1247:
	.mmi
	ld8 r11 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r11
	adds r15 = 8, r15
	br.cloop.sptk.few .L1247
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
	(p55) br.cond.dptk .L1265
	br .L1178
	;;
.L1263:
	.pred.rel.mutex p4, p5
	.pred.rel.mutex p8, p9
	.mmi
	cmp4.geu p10, p11 = 8, r19
	nop 0
	addp4 r17 = r19, r0
	.mmb
	adds r15 = -1, r18
	nop 0
	(p9) br.cond.dpnt .L1178
	;;
	.mmi
	adds r14 = -7, r17
	add r9 = r32, r17
	adds r20 = -1, r17
	.mmb
	(p10) addp4 r17 = r19, r0
	addp4 r10 = r15, r0
	(p10) br.cond.dpnt .L1192
	;;
	.mib
	nop 0
	(p5) mov ar.lc = r10
	nop 0
	.mmi
	add r15 = r32, r14
	add r14 = r33, r14
	add r11 = r33, r20
	;;
	.mii
	nop 0
	mov r22 = ar.lc
	sub r23 = r9, r11
	.mmi
	or r24 = r14, r15
	;;
	nop 0
	mov r21 = ar.lc
	.mii
	adds r25 = 6, r23
	and r26 = 7, r24
	;;
	cmp.ltu p12, p13 = 6, r25
	.mmi
	cmp.eq p14, p15 = 0, r26
	;;
	(p14) addl r26 = 1, r0
	(p12) addl r25 = 1, r0
	;;
	.mii
	(p15) mov r26 = r0
	(p13) mov r25 = r0
	;;
	and r27 = r26, r25
	;;
	.mib
	cmp4.eq p16, p17 = 0, r27
	nop 0
	(p16) br.cond.dpnt .L1192
	;;
	.mmi
	nop 0
	cmp.lt p18, p19 = 2, r22
	nop 0
	;;
	.mib
	nop 0
	adds r21 = -1, r21
	(p19) br.cond.dptk .L1250
	;;
	.mmi
	ld8 r16 = [r14]
	adds r14 = -8, r14
	mov ar.lc = r21
	;;
	.mmi
	nop 0
	st8 [r15] = r16
	adds r15 = -8, r15
	.align 32
.L1193:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1193
	;;
.L1251:
	.mmi
	shladd r18 = r18, 3, r0
	nop 0
	mov ar.lc = r3
	;;
	.mib
	sub r19 = r19, r18
	cmp4.eq p20, p21 = r18, r34
	(p20) br.cond.dpnt .L1178
	;;
	.mmi
	addp4 r29 = r19, r0
	adds r30 = -1, r19
	adds r31 = -2, r19
	.mmi
	adds r34 = -3, r19
	adds r8 = -4, r19
	adds r9 = -5, r19
	;;
	.mmi
	add r21 = r33, r29
	addp4 r16 = r30, r0
	addp4 r17 = r31, r0
	.mmi
	addp4 r10 = r34, r0
	addp4 r11 = r8, r0
	addp4 r20 = r9, r0
	;;
	.mmi
	ld1 r26 = [r21]
	add r15 = r32, r29
	cmp4.eq p22, p23 = 0, r19
	.mmi
	add r22 = r33, r16
	add r28 = r32, r16
	cmp4.eq p24, p25 = 0, r30
	;;
	.mmi
	add r23 = r33, r17
	add r29 = r32, r17
	cmp4.eq p26, p27 = 0, r31
	.mmi
	add r24 = r33, r10
	add r18 = r32, r10
	cmp4.eq p28, p29 = 0, r34
	;;
	.mmi
	add r25 = r33, r11
	cmp4.eq p30, p31 = 0, r8
	add r27 = r33, r20
	.mmi
	add r30 = r32, r20
	adds r14 = -6, r19
	add r19 = r32, r11
	;;
	.mmi
	addp4 r31 = r14, r0
	ld1.sa r34 = [r22]
	nop 0
	.mmb
	cmp4.eq p32, p33 = 0, r9
	st1 [r15] = r26
	(p22) br.cond.dpnt .L1178
	;;
	.mmi
	nop 0
	add r33 = r33, r31
	add r32 = r32, r31
	.mmi
	ld1.sa r8 = [r23]
	;;
	ld1.c.clr r34 = [r22]
	nop 0
	;;
	.mib
	st1 [r28] = r34
	nop 0
	(p24) br.cond.dpnt .L1178
	;;
	.mmi
	nop 0
	ld1.c.clr r8 = [r23]
	nop 0
	;;
	.mib
	st1 [r29] = r8
	nop 0
	(p27) br.cond.dptk .L1259
	;;
	.mib
	nop 0
	mov pr = r2, -1
	br.ret.sptk.many b0
.L1250:
	.mmi
	ld8 r28 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r28
	adds r15 = -8, r15
	br.cloop.sptk.few .L1250
	.mib
	nop 0
	nop 0
	br .L1251
.L1264:
	.pred.rel.mutex p38, p39
	.mib
	nop 0
	nop 0
	(p39) br.cond.dpnt .L1178
.L1187:
	.mmi
	sub r25 = r34, r17, 1
	nop 0
	add r32 = r32, r19
	.mii
	add r22 = r33, r19, 1
	add r33 = r33, r19
	;;
	addp4 r19 = r25, r0
	;;
	.mmi
	add r21 = r22, r19
	;;
	sub r28 = r21, r33, 1
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
	(p63) br.cond.dptk .L1249
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
.L1190:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1190
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1249:
	.mmi
	ld1 r31 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r31
	adds r32 = 1, r32
	br.cloop.sptk.few .L1249
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
	;;
.L1192:
	.mii
	nop 0
	mov ar.lc = r17
	add r33 = r33, r17
	.mmi
	add r32 = r32, r17
	;;
	nop 0
	mov r9 = ar.lc
	;;
	.mib
	adds r15 = -1, r9
	cmp.lt p34, p35 = 2, r9
	(p35) br.cond.dptk .L1252
	;;
	.mmi
	ld1 r14 = [r33]
	adds r33 = -1, r33
	mov ar.lc = r15
	;;
	.mmi
	nop 0
	st1 [r32] = r14
	adds r32 = -1, r32
	.align 32
.L1196:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1196
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1252:
	.mmi
	ld1 r16 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r16
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
	.endp __cmovd#
	.align 16
	.align 64
	.global __cmovh#
	.type	__cmovh#, @function
	.proc __cmovh#
__cmovh:
	.prologue 1, 2
	.mmi
	mov r15 = r32
	addp4 r22 = r34, r0
	extr.u r16 = r34, 3, 29
	.mmi
	or r21 = r32, r33
	adds r20 = 2, r33
	mov r14 = r33
	;;
	.mib
	nop 0
	extr.u r17 = r34, 1, 31
	nop 0
	.mmi
	mov r18 = r16
	and r26 = 7, r21
	sub r30 = r32, r20
	;;
	.mmi
	adds r24 = -1, r17
	shladd r31 = r16, 3, r0
	extr.u r9 = r34, 3, 29
	.mmi
	add r8 = r33, r22
	adds r19 = -1, r34
	mov r16 = r32
	;;
	.mmi
	adds r25 = -8, r31
	shladd r11 = r9, 3, r0
	.save pr, r2
	mov r2 = pr
	.mmi
	cmp.eq p36, p37 = 0, r26
	cmp.ltu p38, p39 = 4, r30
	cmp4.ne p8, p9 = 0, r34
	;;
	.mmi
	(p38) addl r30 = 1, r0
	cmp4.geu p4, p5 = 8, r19
	shr.u r27 = r25, 3
	.mmi
	cmp.leu p6, p7 = r33, r32
	cmp4.ne p34, p35 = 0, r17
	cmp.ltu p2, p3 = r8, r32
	;;
	.mmb
	mov r8 = r27
	(p39) mov r30 = r0
	nop 0
	.mmi
	cmp4.geu p40, p41 = 6, r24
	(p36) addl r24 = 1, r0
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	;;
	.mii
	nop 0
	mov ar.lc = r27
	nop 0
	.mmb
	(p37) mov r24 = r0
	cmp.lt p44, p45 = 2, r8
	(p7) br.cond.dptk .L1362
	;;
	.mib
	nop 0
	nop 0
	(p3) br.cond.dptk .L1337
.L1362:
	.pred.rel.mutex p34, p35
	.pred.rel.mutex p40, p41
	.pred.rel.mutex p44, p45
	.mmi
	and r21 = r30, r24
	nop 0
	adds r19 = -1, r8
	.bbb
	nop 0
	(p35) br.cond.dpnt .L1278
	(p40) br.cond.dpnt .L1348
	;;
	.mbb
	cmp4.eq p42, p43 = 0, r21
	(p42) br.cond.dpnt .L1348
	(p45) br.cond.dptk .L1329
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
.L1283:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = 8, r15
	br.cloop.sptk.few .L1283
	.mmi
	shladd r11 = r18, 2, r0
	;;
	addp4 r15 = r11, r0
	adds r20 = 1, r11
	.mmb
	adds r19 = 2, r11
	cmp4.eq p46, p47 = r11, r17
	(p46) br.cond.dpnt .L1278
	;;
.L1338:
	.mmi
	shladd r14 = r15, 1, r0
	addp4 r22 = r20, r0
	addp4 r23 = r19, r0
	.mii
	cmp4.geu p48, p49 = r20, r17
	cmp4.geu p50, p51 = r19, r17
	;;
	add r17 = r33, r14
	.mmi
	shladd r28 = r22, 1, r0
	shladd r16 = r23, 1, r0
	add r29 = r32, r14
	;;
	.mmi
	ld2 r30 = [r17]
	add r18 = r33, r28
	add r31 = r32, r28
	.mii
	add r26 = r33, r16
	add r24 = r32, r16
	;;
	nop 0
	.mmb
	ld2.sa r27 = [r26]
	st2 [r29] = r30
	(p48) br.cond.dpnt .L1278
	;;
	.mmi
	nop 0
	ld2 r25 = [r18]
	nop 0
	;;
	.mib
	st2 [r31] = r25
	nop 0
	(p50) br.cond.dpnt .L1278
	;;
	.mmi
	nop 0
	ld2.c.clr r27 = [r26]
	nop 0
	;;
	.mmi
	st2 [r24] = r27
	nop 0
	nop 0
.L1278:
	.mib
	adds r15 = -1, r34
	tbit.z p54, p55 = r34, 0
	(p54) br.cond.dptk .L1275
	;;
.L1339:
	.mmi
	addp4 r34 = r15, r0
	;;
	add r33 = r33, r34
	add r32 = r32, r34
	;;
	.mmi
	nop 0
	ld1 r22 = [r33]
	nop 0
	;;
	.mmi
	st1 [r32] = r22
	nop 0
	nop 0
.L1275:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1329:
	.mmi
	ld8 r10 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r10
	adds r15 = 8, r15
	br.cloop.sptk.few .L1329
	.mmi
	shladd r11 = r18, 2, r0
	;;
	addp4 r15 = r11, r0
	adds r20 = 1, r11
	.mmb
	adds r19 = 2, r11
	cmp4.eq p46, p47 = r11, r17
	(p47) br.cond.dptk .L1338
	;;
	.mib
	nop 0
	nop 0
	br .L1278
.L1337:
	.pred.rel.mutex p4, p5
	.pred.rel.mutex p8, p9
	.mib
	adds r24 = -8, r11
	addp4 r18 = r19, r0
	(p9) br.cond.dpnt .L1275
	;;
	.mib
	nop 0
	shr.u r27 = r24, 3
	nop 0
	.mmi
	adds r14 = -7, r18
	add r17 = r32, r18
	adds r10 = -1, r18
	;;
	.mib
	nop 0
	mov ar.lc = r27
	nop 0
	.mmi
	add r15 = r32, r14
	add r14 = r33, r14
	add r23 = r33, r10
	;;
	.mii
	nop 0
	mov r30 = ar.lc
	sub r25 = r17, r23
	.mmb
	or r26 = r14, r15
	(p4) addp4 r18 = r19, r0
	(p4) br.cond.dpnt .L1288
	;;
	.mii
	adds r28 = 6, r25
	and r29 = 7, r26
	;;
	cmp.ltu p10, p11 = 6, r28
	.mmi
	cmp.eq p12, p13 = 0, r29
	;;
	(p12) addl r28 = 1, r0
	(p10) addl r27 = 1, r0
	;;
	.mii
	(p13) mov r28 = r0
	(p11) mov r27 = r0
	;;
	and r21 = r28, r27
	;;
	.mib
	cmp4.eq p14, p15 = 0, r21
	nop 0
	(p14) br.cond.dpnt .L1288
	;;
	.mib
	adds r21 = -1, r30
	cmp.lt p16, p17 = 2, r30
	(p17) br.cond.dptk .L1332
	;;
	.mmi
	ld8 r16 = [r14]
	adds r14 = -8, r14
	mov ar.lc = r21
	;;
	.mmi
	nop 0
	st8 [r15] = r16
	adds r15 = -8, r15
	.align 32
.L1289:
	.mmi
	ld8 r16 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r16
	adds r15 = -8, r15
	br.cloop.sptk.few .L1289
	;;
.L1333:
	.mmi
	and r15 = -8, r34
	and r34 = 7, r34
	mov ar.lc = r3
	;;
	.mib
	sub r19 = r19, r15
	cmp4.eq p18, p19 = 0, r34
	(p18) br.cond.dpnt .L1275
	;;
	.mmi
	addp4 r8 = r19, r0
	adds r9 = -1, r19
	adds r10 = -2, r19
	.mmi
	adds r11 = -3, r19
	adds r22 = -4, r19
	adds r23 = -5, r19
	;;
	.mmi
	add r26 = r33, r8
	addp4 r16 = r9, r0
	addp4 r17 = r10, r0
	.mmi
	addp4 r18 = r11, r0
	addp4 r28 = r22, r0
	addp4 r29 = r23, r0
	;;
	.mmi
	ld1 r21 = [r26]
	add r30 = r32, r8
	cmp4.eq p20, p21 = 0, r19
	.mmi
	add r31 = r33, r16
	add r8 = r32, r16
	cmp4.eq p22, p23 = 0, r9
	;;
	.mmi
	add r34 = r33, r17
	add r9 = r32, r17
	cmp4.eq p24, p25 = 0, r10
	.mmi
	add r24 = r33, r18
	add r10 = r32, r18
	cmp4.eq p26, p27 = 0, r11
	;;
	.mmi
	add r25 = r33, r28
	cmp4.eq p28, p29 = 0, r22
	add r27 = r33, r29
	.mmi
	add r20 = r32, r29
	adds r14 = -6, r19
	add r19 = r32, r28
	;;
	.mmi
	addp4 r11 = r14, r0
	ld1.sa r15 = [r31]
	nop 0
	.mmb
	cmp4.eq p30, p31 = 0, r23
	st1 [r30] = r21
	(p20) br.cond.dpnt .L1275
	;;
	.mmi
	add r33 = r33, r11
	nop 0
	add r32 = r32, r11
	.mmi
	ld1.sa r22 = [r34]
	ld1.sa r23 = [r24]
	nop 0
	;;
	.mmi
	ld1.sa r14 = [r25]
	;;
	ld1.c.clr r15 = [r31]
	nop 0
	;;
	.mib
	st1 [r8] = r15
	nop 0
	(p22) br.cond.dpnt .L1275
	;;
	.mmi
	ld1.sa r16 = [r27]
	;;
	ld1.c.clr r22 = [r34]
	nop 0
	;;
	.mib
	st1 [r9] = r22
	nop 0
	(p24) br.cond.dpnt .L1275
	;;
	.mmi
	ld1.sa r17 = [r33]
	;;
	ld1.c.clr r23 = [r24]
	nop 0
	;;
	.mib
	st1 [r10] = r23
	nop 0
	(p26) br.cond.dpnt .L1275
	;;
	.mmi
	nop 0
	ld1.c.clr r14 = [r25]
	nop 0
	;;
	.mib
	st1 [r19] = r14
	nop 0
	(p28) br.cond.dpnt .L1275
	;;
	.mmi
	nop 0
	ld1.c.clr r16 = [r27]
	nop 0
	;;
	.mib
	st1 [r20] = r16
	nop 0
	(p30) br.cond.dpnt .L1275
	;;
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	.mmi
	ld1.c.clr r17 = [r33]
	nop 0
	nop 0
	;;
	.mib
	st1 [r32] = r17
	nop 0
	br.ret.sptk.many b0
.L1332:
	.mmi
	ld8 r20 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r20
	adds r15 = -8, r15
	br.cloop.sptk.few .L1332
	.mib
	nop 0
	nop 0
	br .L1333
	;;
.L1348:
	.mii
	addp4 r21 = r17, r0
	mov r15 = r33
	;;
	shladd r8 = r21, 1, r0
	;;
	.mmi
	adds r9 = -2, r8
	;;
	nop 0
	shr.u r10 = r9, 1
	;;
	.mii
	nop 0
	mov ar.lc = r10
	;;
	mov r11 = ar.lc
	;;
	.mib
	adds r17 = -1, r11
	cmp.lt p52, p53 = 2, r11
	(p53) br.cond.dptk .L1331
	;;
	.mmb
	ld2 r14 = [r33]
	adds r15 = 2, r33
	nop 0
	.mmi
	adds r16 = 2, r16
	nop 0
	mov ar.lc = r17
	;;
	.mmi
	st2 [r32] = r14
	nop 0
	nop 0
	.align 32
.L1285:
	.mmi
	ld2 r14 = [r15]
	nop 0
	adds r15 = 2, r15
	;;
	.mib
	st2 [r16] = r14
	adds r16 = 2, r16
	br.cloop.sptk.few .L1285
	.mmi
	nop 0
	adds r15 = -1, r34
	tbit.z p54, p55 = r34, 0
	.bbb
	nop 0
	(p54) br.cond.dptk .L1275
	br .L1339
	;;
.L1331:
	.mmi
	ld2 r19 = [r15]
	nop 0
	adds r15 = 2, r15
	;;
	.mib
	st2 [r16] = r19
	adds r16 = 2, r16
	br.cloop.sptk.few .L1331
	.mmi
	nop 0
	adds r15 = -1, r34
	tbit.z p54, p55 = r34, 0
	.bbb
	nop 0
	(p54) br.cond.dptk .L1275
	br .L1339
	;;
.L1288:
	.mmi
	add r33 = r33, r18
	add r32 = r32, r18
	mov ar.lc = r18
	;;
	.mii
	nop 0
	mov r18 = ar.lc
	nop 0
	;;
	.mib
	adds r15 = -1, r18
	cmp.lt p32, p33 = 2, r18
	(p33) br.cond.dptk .L1334
	;;
	.mmi
	ld1 r14 = [r33]
	adds r33 = -1, r33
	mov ar.lc = r15
	;;
	.mmi
	nop 0
	st1 [r32] = r14
	adds r32 = -1, r32
	.align 32
.L1291:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1291
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1334:
	.mmi
	ld1 r29 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r29
	adds r32 = -1, r32
	br.cloop.sptk.few .L1334
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
	.mmi
	mov r15 = r32
	and r16 = -4, r34
	extr.u r17 = r34, 3, 29
	.mmi
	addp4 r22 = r34, r0
	or r20 = r33, r32
	adds r23 = 4, r33
	;;
	.mib
	nop 0
	extr.u r18 = r34, 2, 30
	nop 0
	.mmi
	mov r21 = r17
	mov r14 = r33
	and r28 = 7, r20
	;;
	.mmb
	adds r30 = -1, r18
	shladd r17 = r17, 3, r0
	nop 0
	.mii
	adds r19 = -1, r34
	.save pr, r2
	mov r2 = pr
	cmp.ne p34, p35 = r23, r32
	;;
	.mmi
	cmp.eq p40, p41 = 0, r28
	adds r29 = -8, r17
	cmp4.ne p8, p9 = 0, r34
	.mmi
	cmp4.geu p4, p5 = 8, r19
	cmp4.ne p38, p39 = 0, r34
	mov r17 = r32
	;;
	.mmb
	cmp.leu p6, p7 = r33, r32
	cmp4.ne p36, p37 = 0, r18
	nop 0
	.mib
	cmp4.geu p42, p43 = 8, r30
	.save ar.lc, r3
	mov r3 = ar.lc
	.body
	(p7) br.cond.dptk .L1473
	;;
	.mmi
	nop 0
	add r22 = r33, r22
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p2, p3 = r22, r32
	(p3) br.cond.dptk .L1453
.L1473:
	.pred.rel.mutex p34, p35
	.pred.rel.mutex p36, p37
	.pred.rel.mutex p38, p39
	.pred.rel.mutex p40, p41
	.pred.rel.mutex p42, p43
	.mmi
	addp4 r19 = r18, r0
	nop 0
	(p34) addl r22 = 1, r0
	.mib
	nop 0
	shr.u r26 = r29, 3
	(p37) br.cond.dpnt .L1454
	;;
	.mii
	nop 0
	mov ar.lc = r26
	shladd r20 = r19, 2, r0
	.mmb
	(p40) addl r30 = 1, r0
	(p35) mov r22 = r0
	(p42) br.cond.dpnt .L1475
	;;
	.mii
	nop 0
	mov r31 = ar.lc
	(p41) mov r30 = r0
	;;
	.mmi
	nop 0
	and r30 = r22, r30
	nop 0
	;;
	.mib
	cmp4.eq p44, p45 = 0, r30
	nop 0
	(p44) br.cond.dpnt .L1475
	;;
	.mib
	adds r19 = -1, r31
	cmp.lt p46, p47 = 2, r31
	(p47) br.cond.dptk .L1432
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
.L1371:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1371
	.mmi
	nop 0
	shladd r21 = r21, 1, r0
	nop 0
	;;
	.mib
	addp4 r27 = r21, r0
	cmp4.eq p48, p49 = r21, r18
	(p48) br.cond.dpnt .L1374
	;;
.L1455:
	.mmi
	shladd r18 = r27, 2, r0
	;;
	add r15 = r33, r18
	add r8 = r32, r18
	;;
	.mmi
	nop 0
	ld4 r9 = [r15]
	nop 0
	;;
	.mmi
	st4 [r8] = r9
	nop 0
	nop 0
.L1374:
	.mmi
	sub r28 = r34, r16, 1
	addp4 r30 = r16, r0
	nop 0
	.mmb
	sub r18 = r34, r16
	cmp4.geu p52, p53 = r16, r34
	(p52) br.cond.dpnt .L1363
	;;
	.mib
	nop 0
	extr.u r31 = r18, 3, 29
	nop 0
	.mmi
	add r15 = r32, r30
	add r14 = r33, r30
	add r17 = r33, r30, 1
	;;
	.mmi
	or r29 = r15, r14
	sub r26 = r15, r17
	nop 0
	.mmb
	shladd r25 = r31, 3, r0
	cmp4.geu p54, p55 = 7, r28
	(p54) br.cond.dpnt .L1366
	;;
	.mmi
	and r24 = 7, r29
	cmp.ltu p56, p57 = 6, r26
	adds r21 = -8, r25
	;;
	.mmi
	cmp.eq p58, p59 = 0, r24
	(p56) addl r26 = 1, r0
	shr.u r27 = r21, 3
	;;
	.mii
	nop 0
	mov ar.lc = r27
	(p57) mov r26 = r0
	.mmi
	(p58) addl r24 = 1, r0
	;;
	nop 0
	mov r9 = ar.lc
	.mmi
	(p59) mov r24 = r0
	;;
	and r8 = r24, r26
	nop 0
	;;
	.mib
	cmp4.eq p60, p61 = 0, r8
	nop 0
	(p60) br.cond.dpnt .L1366
	;;
	.mib
	adds r19 = -1, r9
	cmp.lt p62, p63 = 2, r9
	(p63) br.cond.dptk .L1435
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
.L1375:
	.mmi
	ld8 r17 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r17
	adds r15 = 8, r15
	br.cloop.sptk.few .L1375
	;;
	.mmi
	and r15 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mib
	add r16 = r16, r15
	cmp4.eq p6, p7 = 0, r18
	(p6) br.cond.dpnt .L1363
	;;
.L1456:
	.mmi
	addp4 r10 = r16, r0
	adds r11 = 1, r16
	adds r30 = 2, r16
	.mmi
	adds r23 = 3, r16
	adds r22 = 4, r16
	adds r28 = 5, r16
	;;
	.mmi
	add r26 = r33, r10
	addp4 r8 = r11, r0
	addp4 r17 = r30, r0
	.mmi
	addp4 r9 = r23, r0
	addp4 r19 = r22, r0
	addp4 r20 = r28, r0
	;;
	.mmi
	adds r29 = 6, r16
	ld1 r21 = [r26]
	add r14 = r32, r10
	.mmi
	cmp4.geu p2, p3 = r11, r34
	add r15 = r32, r8
	cmp4.leu p8, p9 = r34, r30
	;;
	.mmi
	addp4 r18 = r29, r0
	add r31 = r33, r17
	cmp4.geu p24, p25 = r23, r34
	.mmi
	add r24 = r33, r9
	add r9 = r32, r9
	cmp4.geu p26, p27 = r22, r34
	;;
	.mmi
	add r25 = r33, r19
	add r19 = r32, r19
	cmp4.geu p28, p29 = r28, r34
	.mmi
	add r27 = r33, r20
	add r20 = r32, r20
	cmp4.geu p30, p31 = r29, r34
	;;
	.mmi
	add r34 = r33, r8
	add r8 = r32, r17
	add r33 = r33, r18
	.mmb
	add r32 = r32, r18
	st1 [r14] = r21
	(p2) br.cond.dpnt .L1363
	;;
	.mmi
	nop 0
	ld1 r16 = [r34]
	nop 0
	;;
	.mib
	st1 [r15] = r16
	nop 0
	(p8) br.cond.dpnt .L1363
.L1449:
	.pred.rel.mutex p24, p25
	.pred.rel.mutex p26, p27
	.pred.rel.mutex p28, p29
	.pred.rel.mutex p30, p31
	.mmi
	nop 0
	ld1 r31 = [r31]
	nop 0
	;;
	.mib
	st1 [r8] = r31
	nop 0
	(p24) br.cond.dpnt .L1363
	;;
	.mmi
	nop 0
	ld1 r24 = [r24]
	nop 0
	;;
	.mib
	st1 [r9] = r24
	nop 0
	(p26) br.cond.dpnt .L1363
	;;
	.mmi
	nop 0
	ld1 r25 = [r25]
	nop 0
	;;
	.mib
	st1 [r19] = r25
	nop 0
	(p28) br.cond.dpnt .L1363
	;;
	.mmi
	nop 0
	ld1 r27 = [r27]
	nop 0
	;;
	.mib
	st1 [r20] = r27
	nop 0
	(p30) br.cond.dpnt .L1363
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
.L1363:
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1432:
	.mmi
	ld8 r25 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r25
	adds r15 = 8, r15
	br.cloop.sptk.few .L1432
	.mmi
	shladd r21 = r21, 1, r0
	;;
	addp4 r27 = r21, r0
	cmp4.eq p48, p49 = r21, r18
	.bbb
	nop 0
	(p49) br.cond.dptk .L1455
	br .L1374
.L1435:
	.mmi
	ld8 r19 = [r14]
	nop 0
	adds r14 = 8, r14
	;;
	.mib
	st8 [r15] = r19
	adds r15 = 8, r15
	br.cloop.sptk.few .L1435
	;;
	.mmi
	and r15 = -8, r18
	nop 0
	and r18 = 7, r18
	;;
	.mmi
	nop 0
	add r16 = r16, r15
	cmp4.eq p6, p7 = 0, r18
	.bbb
	nop 0
	(p7) br.cond.dptk .L1456
	br .L1363
	;;
.L1453:
	.pred.rel.mutex p4, p5
	.pred.rel.mutex p8, p9
	.mib
	addp4 r18 = r19, r0
	extr.u r16 = r34, 3, 29
	(p9) br.cond.dpnt .L1363
	;;
	.mmi
	adds r14 = -7, r18
	add r9 = r32, r18
	adds r8 = -1, r18
	.mmb
	(p4) addp4 r18 = r19, r0
	shladd r10 = r16, 3, r0
	(p4) br.cond.dpnt .L1379
	;;
	.mmi
	adds r21 = -8, r10
	nop 0
	add r15 = r32, r14
	.mii
	add r14 = r33, r14
	add r11 = r33, r8
	;;
	shr.u r26 = r21, 3
	.mii
	sub r24 = r9, r11
	or r25 = r14, r15
	;;
	mov ar.lc = r26
	.mmi
	adds r27 = 6, r24
	nop 0
	and r28 = 7, r25
	;;
	.mii
	nop 0
	mov r29 = ar.lc
	cmp.ltu p10, p11 = 6, r27
	.mmi
	cmp.eq p12, p13 = 0, r28
	;;
	(p12) addl r27 = 1, r0
	(p10) addl r26 = 1, r0
	;;
	.mii
	(p13) mov r27 = r0
	(p11) mov r26 = r0
	;;
	and r31 = r27, r26
	;;
	.mib
	cmp4.eq p14, p15 = 0, r31
	nop 0
	(p14) br.cond.dpnt .L1379
	;;
	.mib
	adds r21 = -1, r29
	cmp.lt p16, p17 = 2, r29
	(p17) br.cond.dptk .L1438
	;;
	.mmi
	ld8 r16 = [r14]
	adds r14 = -8, r14
	mov ar.lc = r21
	;;
	.mmi
	nop 0
	st8 [r15] = r16
	adds r15 = -8, r15
	.align 32
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
	;;
.L1439:
	.mmi
	and r15 = -8, r34
	and r34 = 7, r34
	mov ar.lc = r3
	;;
	.mib
	sub r19 = r19, r15
	cmp4.eq p18, p19 = 0, r34
	(p18) br.cond.dpnt .L1363
	;;
	.mmi
	addp4 r8 = r19, r0
	adds r9 = -1, r19
	adds r10 = -2, r19
	.mmi
	adds r23 = -3, r19
	adds r22 = -4, r19
	adds r11 = -5, r19
	;;
	.mmi
	add r21 = r33, r8
	addp4 r16 = r9, r0
	addp4 r17 = r10, r0
	.mmi
	addp4 r18 = r23, r0
	addp4 r28 = r22, r0
	addp4 r29 = r11, r0
	;;
	.mmi
	ld1 r15 = [r21]
	add r26 = r32, r8
	cmp4.eq p20, p21 = 0, r19
	.mmi
	add r30 = r33, r16
	add r34 = r32, r16
	cmp4.eq p22, p23 = 0, r9
	;;
	.mmi
	add r31 = r33, r17
	add r8 = r32, r17
	cmp4.eq p24, p25 = 0, r10
	.mmi
	add r24 = r33, r18
	add r9 = r32, r18
	cmp4.eq p26, p27 = 0, r23
	;;
	.mmi
	add r25 = r33, r28
	cmp4.eq p28, p29 = 0, r22
	add r27 = r33, r29
	.mmi
	add r20 = r32, r29
	adds r14 = -6, r19
	add r19 = r32, r28
	;;
	.mmi
	nop 0
	addp4 r10 = r14, r0
	cmp4.eq p30, p31 = 0, r11
	.mmb
	ld1.sa r23 = [r30]
	st1 [r26] = r15
	(p20) br.cond.dpnt .L1363
	;;
	.mmi
	add r33 = r33, r10
	nop 0
	add r32 = r32, r10
	;;
	.mmi
	nop 0
	ld1.c.clr r23 = [r30]
	nop 0
	;;
	.mib
	st1 [r34] = r23
	nop 0
	(p23) br.cond.dptk .L1449
	;;
	.mib
	nop 0
	mov pr = r2, -1
	br.ret.sptk.many b0
.L1438:
	.mmi
	ld8 r20 = [r14]
	nop 0
	adds r14 = -8, r14
	;;
	.mib
	st8 [r15] = r20
	adds r15 = -8, r15
	br.cloop.sptk.few .L1438
	.mib
	nop 0
	nop 0
	br .L1439
	;;
.L1475:
	.mii
	adds r10 = -4, r20
	mov r15 = r33
	;;
	shr.u r23 = r10, 2
	;;
	.mii
	nop 0
	mov ar.lc = r23
	;;
	mov r22 = ar.lc
	;;
	.mib
	adds r18 = -1, r22
	cmp.lt p50, p51 = 2, r22
	(p51) br.cond.dptk .L1434
	;;
	.mmb
	ld4 r14 = [r33]
	adds r15 = 4, r33
	nop 0
	.mmi
	adds r17 = 4, r17
	nop 0
	mov ar.lc = r18
	;;
	.mmi
	st4 [r32] = r14
	nop 0
	nop 0
	.align 32
.L1373:
	.mmi
	ld4 r14 = [r15]
	nop 0
	adds r15 = 4, r15
	;;
	.mib
	st4 [r17] = r14
	adds r17 = 4, r17
	br.cloop.sptk.few .L1373
	.mib
	nop 0
	nop 0
	br .L1374
.L1434:
	.mmi
	ld4 r14 = [r15]
	nop 0
	adds r15 = 4, r15
	;;
	.mib
	st4 [r17] = r14
	adds r17 = 4, r17
	br.cloop.sptk.few .L1434
	.mib
	nop 0
	nop 0
	br .L1374
.L1454:
	.pred.rel.mutex p38, p39
	.mib
	nop 0
	(p38) addp4 r30 = r16, r0
	(p39) br.cond.dpnt .L1363
	;;
.L1366:
	.mmi
	sub r10 = r34, r16, 1
	nop 0
	add r32 = r32, r30
	.mii
	add r11 = r33, r30, 1
	add r33 = r33, r30
	;;
	addp4 r30 = r10, r0
	;;
	.mmi
	add r23 = r11, r30
	;;
	sub r22 = r23, r33, 1
	nop 0
	;;
	.mii
	nop 0
	mov ar.lc = r22
	;;
	mov r28 = ar.lc
	;;
	.mib
	adds r15 = -1, r28
	cmp.lt p4, p5 = 2, r28
	(p5) br.cond.dptk .L1437
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
.L1377:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = 1, r32
	br.cloop.sptk.few .L1377
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1437:
	.mmi
	ld1 r8 = [r33]
	nop 0
	adds r33 = 1, r33
	;;
	.mib
	st1 [r32] = r8
	adds r32 = 1, r32
	br.cloop.sptk.few .L1437
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
	;;
.L1379:
	.mii
	nop 0
	mov ar.lc = r18
	add r33 = r33, r18
	.mmi
	add r32 = r32, r18
	;;
	nop 0
	mov r22 = ar.lc
	;;
	.mib
	adds r15 = -1, r22
	cmp.lt p32, p33 = 2, r22
	(p33) br.cond.dptk .L1440
	;;
	.mmi
	ld1 r14 = [r33]
	adds r33 = -1, r33
	mov ar.lc = r15
	;;
	.mmi
	nop 0
	st1 [r32] = r14
	adds r32 = -1, r32
	.align 32
.L1383:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1383
	.mii
	nop 0
	mov pr = r2, -1
	nop 0
	;;
	.mib
	nop 0
	mov ar.lc = r3
	br.ret.sptk.many b0
.L1440:
	.mmi
	ld1 r14 = [r33]
	nop 0
	adds r33 = -1, r33
	;;
	.mib
	st1 [r32] = r14
	adds r32 = -1, r32
	br.cloop.sptk.few .L1440
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
	.mii
	(p6) mov r8 = r0
	shr.u r15 = r14, 13
	shr.u r16 = r14, 12
	.mmb
	cmp4.eq p8, p9 = 0, r14
	nop 0
	(p6) br.cond.dpnt .L1488
	;;
	.mmi
	cmp4.ne p12, p13 = 0, r15
	cmp4.ne p14, p15 = 0, r16
	shr.u r8 = r14, 14
	.mib
	nop 0
	shr.u r17 = r14, 11
	nop 0
	;;
	.mii
	cmp4.ne p6, p7 = 0, r17
	shr.u r18 = r14, 10
	shr.u r19 = r14, 9
	.mmi
	cmp4.ne p10, p11 = 0, r8
	;;
	nop 0
	shr.u r20 = r14, 8
	.mii
	nop 0
	shr.u r21 = r14, 7
	;;
	shr.u r22 = r14, 6
	.mii
	nop 0
	shr.u r23 = r14, 5
	;;
	shr.u r24 = r14, 4
	.mii
	nop 0
	shr.u r25 = r14, 3
	;;
	shr.u r26 = r14, 2
	.mib
	nop 0
	shr.u r27 = r14, 1
	(p10) br.cond.dpnt .L1488
	;;
	.mmi
	(p8) addl r8 = 16, r0
	nop 0
	cmp4.ne p10, p11 = 0, r19
	;;
	.mmi
	(p9) addl r8 = 15, r0
	nop 0
	cmp4.ne p8, p9 = 0, r18
	;;
	.mib
	(p12) addl r8 = 2, r0
	nop 0
	(p12) br.cond.dpnt .L1488
	;;
	.mib
	cmp4.ne p12, p13 = 0, r20
	(p14) addl r8 = 3, r0
	(p14) br.cond.dpnt .L1488
	;;
	.mib
	cmp4.ne p14, p15 = 0, r21
	(p6) addl r8 = 4, r0
	(p6) br.cond.dpnt .L1488
	;;
	.mib
	cmp4.ne p6, p7 = 0, r22
	(p8) addl r8 = 5, r0
	(p8) br.cond.dpnt .L1488
	;;
	.mib
	cmp4.ne p8, p9 = 0, r23
	(p10) addl r8 = 6, r0
	(p10) br.cond.dpnt .L1488
	;;
	.mib
	cmp4.ne p10, p11 = 0, r24
	(p12) addl r8 = 7, r0
	(p12) br.cond.dpnt .L1488
	;;
	.mib
	cmp4.ne p12, p13 = 0, r25
	(p14) addl r8 = 8, r0
	(p14) br.cond.dpnt .L1488
	;;
	.mib
	cmp4.ne p14, p15 = 0, r26
	(p6) addl r8 = 9, r0
	(p6) br.cond.dpnt .L1488
	;;
	.mib
	cmp4.ne p6, p7 = 0, r27
	(p8) addl r8 = 10, r0
	(p8) br.cond.dpnt .L1488
	;;
	.mib
	(p10) addl r8 = 11, r0
	nop 0
	(p10) br.cond.dpnt .L1488
	;;
	.mib
	(p12) addl r8 = 12, r0
	nop 0
	(p12) br.cond.dpnt .L1488
	;;
	.mib
	nop 0
	(p14) addl r8 = 13, r0
	(p14) br.cond.dpnt .L1488
	;;
	.mmi
	(p6) addl r8 = 14, r0
	nop 0
	nop 0
.L1488:
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
	zxt2 r14 = r32
	;;
	.mii
	nop 0
	tbit.nz p8, p9 = r14, 1
	;;
	tbit.nz p12, p13 = r14, 2
	.mib
	(p6) mov r8 = r0
	shr.u r2 = r14, 15
	(p6) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p14, p15 = r14, 3
	nop 0
	.mmb
	(p8) addl r8 = 1, r0
	cmp4.eq p10, p11 = 0, r2
	(p8) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p6, p7 = r14, 4
	(p12) addl r8 = 2, r0
	.mmb
	nop 0
	nop 0
	(p12) br.cond.dpnt .L1508
	;;
	.mmi
	(p10) addl r8 = 16, r0
	nop 0
	tbit.nz p8, p9 = r14, 5
	;;
	.mii
	(p11) addl r8 = 15, r0
	tbit.nz p10, p11 = r14, 6
	;;
	tbit.nz p12, p13 = r14, 7
	.mmb
	(p14) addl r8 = 3, r0
	nop 0
	(p14) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p14, p15 = r14, 8
	(p6) addl r8 = 4, r0
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p6, p7 = r14, 9
	(p8) addl r8 = 5, r0
	.mmb
	nop 0
	nop 0
	(p8) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p8, p9 = r14, 10
	(p10) addl r8 = 6, r0
	.mmb
	nop 0
	nop 0
	(p10) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p10, p11 = r14, 11
	(p12) addl r8 = 7, r0
	.mmb
	nop 0
	nop 0
	(p12) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p12, p13 = r14, 12
	(p14) addl r8 = 8, r0
	.mmb
	nop 0
	nop 0
	(p14) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p14, p15 = r14, 13
	(p6) addl r8 = 9, r0
	.mmb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L1508
	;;
	.mii
	nop 0
	tbit.nz p6, p7 = r14, 14
	(p8) addl r8 = 10, r0
	.mmb
	nop 0
	nop 0
	(p8) br.cond.dpnt .L1508
	;;
	.mib
	(p10) addl r8 = 11, r0
	nop 0
	(p10) br.cond.dpnt .L1508
	;;
	.mib
	(p12) addl r8 = 12, r0
	nop 0
	(p12) br.cond.dpnt .L1508
	;;
	.mib
	nop 0
	(p14) addl r8 = 13, r0
	(p14) br.cond.dpnt .L1508
	;;
	.mmi
	(p6) addl r8 = 14, r0
	nop 0
	nop 0
.L1508:
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
	(p6) br.cond.dpnt .L1540
	.mii
	nop 0
	extr r14 = r32, 0, 1
	nop 0
	;;
	.align 32
.L1542:
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
	(p8) br.cond.dptk .L1542
.L1540:
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
	(p6) br.cond.dpnt .L1551
	(p8) br.cond.dpnt .L1551
	.mii
	nop 0
	extr r14 = r33, 0, 1
	nop 0
	;;
	.align 32
.L1549:
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
	(p10) br.cond.dptk .L1549
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1551:
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
	(p7) br.cond.dpnt .L1557
	.mmi
	cmp4.le p8, p9 = r0, r33
	nop 0
	nop 0
	.align 32
.L1556:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1557
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
	(p15) br.cond.dptk .L1556
	.mmi
	nop 0
	cmp4.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1560
	;;
.L1557:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1562:
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
	(p10) br.cond.dptk .L1562
.L1560:
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
	(p6) br.cond.dpnt .L1571
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
.L1571:
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
	(p6) br.cond.dpnt .L1576
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
.L1576:
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
	(p7) br.cond.dpnt .L1587
	;;
	.mmi
	nop 0
	cmp4.eq p8, p9 = 0, r33
	nop 0
	;;
	.mib
	nop 0
	(p8) mov r8 = r0
	(p8) br.cond.dpnt .L1585
	;;
.L1587:
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
.L1589:
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
	(p10) br.cond.dptk .L1589
	.mii
	cmp4.eq p12, p13 = 0, r17
	nop 0
	;;
	(p13) sub r8 = r0, r8
.L1585:
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
	(p11) br.cond.dpnt .L1601
	.align 32
.L1600:
	.mib
	cmp4.le p12, p13 = r0, r2
	nop 0
	(p13) br.cond.dpnt .L1601
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
	(p14) br.cond.dptk .L1600
	.mib
	nop 0
	(p7) mov r8 = r0
	(p7) br.cond.dpnt .L1602
	;;
.L1601:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1605:
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
	(p10) br.cond.dptk .L1605
	.mmi
	addp4 r8 = r8, r0
	nop 0
	nop 0
.L1602:
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
	(p11) br.cond.dpnt .L1635
	;;
	.align 32
.L1618:
	.mib
	cmp4.le p12, p13 = r0, r14
	nop 0
	(p13) br.cond.dpnt .L1635
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
	(p14) br.cond.dptk .L1618
	.mib
	nop 0
	nop 0
	(p7) br.cond.dpnt .L1620
	.align 32
.L1635:
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
	(p10) br.cond.dptk .L1635
	;;
.L1620:
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
	(p7) br.cond.dpnt .L1674
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
	(p11) br.cond.dpnt .L1675
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
.L1640:
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
	(p10) br.cond.dpnt .L1639
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
	(p10) br.cond.dptk .L1640
.L1675:
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
	(p13) br.cond.dptk .L1663
	;;
	.mii
	nop 0
	zxt2 r8 = r3
	nop 0
.L1663:
	.pred.rel.mutex p14, p15
	.mib
	nop 0
	nop 0
	(p14) br.cond.dpnt .L1642
	;;
.L1644:
	.mmb
	cmp4.gtu p6, p7 = r10, r8
	or r28 = r20, r19
	nop 0
	.mmi
	sub r27 = r8, r10
	nop 0
	extr.u r29 = r18, 2, 14
	;;
	.mii
	nop 0
	extr.u r14 = r16, 2, 14
	(p7) zxt2 r19 = r28
	.mmb
	nop 0
	cmp4.eq p8, p9 = 0, r29
	nop 0
	;;
	.mii
	nop 0
	extr.u r30 = r18, 3, 13
	(p7) zxt2 r8 = r27
	;;
	.mmi
	cmp4.gtu p10, p11 = r14, r8
	sub r9 = r8, r14
	extr.u r31 = r18, 4, 12
	.mii
	cmp4.eq p12, p13 = 0, r30
	zxt2 r15 = r19
	;;
	extr.u r33 = r18, 5, 11
	.mmi
	cmp4.eq p6, p7 = 0, r31
	;;
	nop 0
	extr.u r2 = r18, 6, 10
	;;
	.mii
	nop 0
	extr.u r3 = r18, 7, 9
	;;
	extr.u r25 = r18, 8, 8
	;;
	.mib
	nop 0
	extr.u r26 = r18, 9, 7
	(p8) br.cond.dpnt .L1642
	;;
	.mii
	(p11) or r19 = r29, r15
	extr.u r20 = r16, 3, 13
	(p11) zxt2 r8 = r9
	.mmb
	nop 0
	cmp4.eq p10, p11 = 0, r33
	nop 0
	;;
	.mmi
	cmp4.gtu p14, p15 = r20, r8
	sub r32 = r8, r20
	extr.u r17 = r18, 10, 6
	.mib
	nop 0
	zxt2 r10 = r19
	(p12) br.cond.dpnt .L1642
	;;
	.mii
	(p15) or r19 = r30, r10
	extr.u r21 = r16, 4, 12
	(p15) zxt2 r8 = r32
	.mmb
	nop 0
	cmp4.eq p14, p15 = 0, r2
	nop 0
	;;
	.mmi
	cmp4.gtu p8, p9 = r21, r8
	sub r24 = r8, r21
	extr.u r11 = r18, 11, 5
	.mib
	nop 0
	zxt2 r22 = r19
	(p6) br.cond.dpnt .L1642
	;;
	.mii
	(p9) or r19 = r31, r22
	extr.u r27 = r16, 5, 11
	(p9) zxt2 r8 = r24
	.mmb
	nop 0
	cmp4.eq p8, p9 = 0, r3
	nop 0
	;;
	.mmi
	cmp4.gtu p12, p13 = r27, r8
	sub r28 = r8, r27
	extr.u r29 = r18, 12, 4
	.mib
	nop 0
	zxt2 r23 = r19
	(p10) br.cond.dpnt .L1642
	;;
	.mii
	(p13) or r19 = r33, r23
	extr.u r33 = r16, 6, 10
	(p13) zxt2 r8 = r28
	.mmb
	nop 0
	cmp4.eq p12, p13 = 0, r25
	nop 0
	;;
	.mmi
	cmp4.gtu p6, p7 = r33, r8
	sub r15 = r8, r33
	extr.u r30 = r18, 13, 3
	.mib
	nop 0
	zxt2 r31 = r19
	(p14) br.cond.dpnt .L1642
	;;
	.mii
	(p7) or r19 = r2, r31
	extr.u r14 = r16, 7, 9
	(p7) zxt2 r8 = r15
	.mmb
	nop 0
	cmp4.eq p6, p7 = 0, r26
	nop 0
	;;
	.mmi
	cmp4.gtu p10, p11 = r14, r8
	sub r10 = r8, r14
	extr.u r9 = r18, 14, 2
	.mib
	nop 0
	zxt2 r2 = r19
	(p8) br.cond.dpnt .L1642
	;;
	.mii
	(p11) or r19 = r3, r2
	extr.u r20 = r16, 8, 8
	(p11) zxt2 r8 = r10
	.mmb
	nop 0
	cmp4.eq p10, p11 = 0, r17
	nop 0
	;;
	.mmi
	cmp4.gtu p14, p15 = r20, r8
	sub r32 = r8, r20
	extr.u r22 = r16, 9, 7
	.mib
	nop 0
	zxt2 r3 = r19
	(p12) br.cond.dpnt .L1642
	;;
	.mii
	(p15) or r19 = r25, r3
	extr.u r23 = r16, 10, 6
	(p15) zxt2 r8 = r32
	.mmb
	nop 0
	cmp4.eq p14, p15 = 0, r11
	nop 0
	;;
	.mmi
	cmp4.gtu p8, p9 = r22, r8
	sub r21 = r8, r22
	extr.u r27 = r16, 11, 5
	.mib
	nop 0
	zxt2 r25 = r19
	(p6) br.cond.dpnt .L1642
	;;
	.mii
	(p9) or r19 = r26, r25
	extr.u r31 = r16, 12, 4
	(p9) zxt2 r8 = r21
	.mmb
	nop 0
	cmp4.eq p8, p9 = 0, r29
	nop 0
	;;
	.mmi
	cmp4.gtu p12, p13 = r23, r8
	sub r24 = r8, r23
	extr.u r15 = r16, 13, 3
	.mib
	nop 0
	zxt2 r26 = r19
	(p10) br.cond.dpnt .L1642
	;;
	.mii
	(p13) or r19 = r17, r26
	extr.u r14 = r16, 14, 2
	(p13) zxt2 r8 = r24
	.mmb
	nop 0
	cmp4.eq p12, p13 = 0, r30
	nop 0
	;;
	.mmi
	cmp4.gtu p6, p7 = r27, r8
	sub r28 = r8, r27
	extr.u r16 = r16, 15, 1
	.mib
	nop 0
	zxt2 r17 = r19
	(p14) br.cond.dpnt .L1642
	;;
	.mii
	(p7) or r19 = r11, r17
	(p7) zxt2 r8 = r28
	cmp4.eq p6, p7 = 0, r9
	;;
	.mmi
	cmp4.gtu p10, p11 = r31, r8
	nop 0
	sub r33 = r8, r31
	.mib
	nop 0
	zxt2 r11 = r19
	(p8) br.cond.dpnt .L1642
	;;
	.mmi
	(p11) or r19 = r29, r11
	nop 0
	(p11) zxt2 r8 = r33
	;;
	.mmi
	cmp4.gtu p14, p15 = r15, r8
	sub r2 = r8, r15
	tbit.nz p10, p11 = r18, 15
	.mib
	nop 0
	zxt2 r29 = r19
	(p12) br.cond.dpnt .L1642
	;;
	.mii
	(p15) or r19 = r30, r29
	(p15) zxt2 r8 = r2
	;;
	cmp4.gtu p8, p9 = r14, r8
	.mib
	sub r10 = r8, r14
	zxt2 r30 = r19
	(p6) br.cond.dpnt .L1642
	;;
	.mii
	(p9) or r19 = r9, r30
	(p9) zxt2 r8 = r10
	;;
	cmp4.gtu p12, p13 = r16, r8
	.mib
	sub r18 = r8, r16
	zxt2 r9 = r19
	(p11) br.cond.dpnt .L1642
	;;
	.mii
	(p12) mov r8 = r0
	(p13) or r19 = 1, r9
	;;
	(p13) zxt2 r8 = r18
.L1642:
	.mmi
	nop 0
	cmp4.ne p14, p15 = 0, r34
	nop 0
	;;
	.mib
	nop 0
	(p15) mov r8 = r19
	br.ret.sptk.many b0
.L1639:
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
	(p12) br.cond.dpnt .L1642
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
	br .L1644
.L1674:
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
	(p7) br.cond.dpnt .L1678
	.mii
	nop 0
	tbit.z p8, p9 = r33, 31
	nop 0
	.align 32
.L1677:
	.pred.rel.mutex p8, p9
	.mib
	nop 0
	nop 0
	(p9) br.cond.dpnt .L1678
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
	(p15) br.cond.dptk .L1677
	.mmi
	nop 0
	cmp.eq p6, p7 = 0, r14
	nop 0
	;;
	.mib
	nop 0
	(p6) mov r8 = r0
	(p6) br.cond.dpnt .L1681
	;;
.L1678:
	.mmi
	mov r8 = r0
	nop 0
	nop 0
	.align 32
.L1683:
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
	(p10) br.cond.dptk .L1683
.L1681:
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
	(p7) br.cond.dptk .L1694
	(p8) br.cond.dpnt .L1692
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
.L1694:
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
.L1692:
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
	(p7) br.cond.dptk .L1702
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
.L1702:
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
	(p7) br.cond.dptk .L1708
	(p8) br.cond.dpnt .L1706
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
.L1708:
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
.L1706:
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
	(p7) br.cond.dptk .L1716
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
.L1716:
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
	(p6) br.cond.dpnt .L1736
	;;
	.mib
	(p12) addl r8 = 2, r0
	nop 0
	(p12) br.cond.dpnt .L1732
	;;
	.mmi
	nop 0
	(p10) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1736
.L1732:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1736:
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
	(p6) br.cond.dpnt .L1744
	;;
	.mib
	(p12) addl r8 = 1, r0
	nop 0
	(p12) br.cond.dpnt .L1740
	;;
	.mmi
	nop 0
	(p10) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
	(p8) br.cond.dpnt .L1744
.L1740:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1744:
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
	(p6) br.cond.dpnt .L1751
	;;
	.mib
	(p10) addl r8 = 2, r0
	nop 0
	(p10) br.cond.dpnt .L1747
	;;
	.mmi
	nop 0
	(p8) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p9) addl r8 = 1, r0
	(p12) br.cond.dpnt .L1751
.L1747:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1751:
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
	(p6) br.cond.dptk .L1762
	;;
	.mmi
	nop 0
	andcm r33 = r14, r33
	mov r8 = r0
	.bbb
	nop 0
	(p9) br.cond.dptk .L1767
	br.ret.sptk.many b0
	;;
.L1762:
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
.L1767:
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
	(p7) br.cond.dptk .L1770
	;;
	.mmi
	nop 0
	addp4 r8 = r33, r0
	nop 0
	;;
	.mib
	(p8) mov r8 = r32
	nop 0
	(p8) br.cond.dpnt .L1768
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
.L1770:
	.mii
	nop 0
	unpack4.l r8 = r8, r11
	nop 0
.L1768:
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
	(p7) br.cond.dptk .L1778
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
.L1778:
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
	(p6) br.cond.dptk .L1807
	;;
	.align 32
.L1809:
	.mfi
	nop 0
	fmpy.d f8 = f8, f6
	nop 0
.L1807:
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
	(p8) br.cond.dpnt .L1808
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	nop 0
.L1810:
	.mii
	nop 0
	extr.u r2 = r8, 31, 1
	nop 0
	;;
	.mib
	add r3 = r2, r8
	tbit.nz p10, p11 = r8, 0
	(p10) br.cond.dptk .L1809
	;;
	.mfi
	nop 0
	fmpy.d f6 = f6, f6
	extr r8 = r3, 1, 31
	.mmb
	nop 0
	nop 0
	br .L1810
.L1808:
	.pred.rel.mutex p12, p13
	.mbb
	nop 0
	(p13) br.cond.dpnt .L1815
	br.ret.sptk.many b0
.L1815:
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
	(p6) br.cond.dptk .L1817
	;;
	.align 32
.L1819:
	.mfi
	nop 0
	fmpy.s f8 = f8, f6
	nop 0
.L1817:
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
	(p8) br.cond.dpnt .L1818
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	nop 0
.L1820:
	.mii
	nop 0
	extr.u r2 = r8, 31, 1
	nop 0
	;;
	.mib
	add r3 = r2, r8
	tbit.nz p10, p11 = r8, 0
	(p10) br.cond.dptk .L1819
	;;
	.mfi
	nop 0
	fmpy.s f6 = f6, f6
	extr r8 = r3, 1, 31
	.mmb
	nop 0
	nop 0
	br .L1820
.L1818:
	.pred.rel.mutex p12, p13
	.mbb
	nop 0
	(p13) br.cond.dpnt .L1825
	br.ret.sptk.many b0
.L1825:
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
	(p6) br.cond.dpnt .L1830
	;;
	.mib
	(p12) addl r8 = 2, r0
	nop 0
	(p12) br.cond.dpnt .L1826
	;;
	.mmi
	nop 0
	(p10) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) addl r8 = 1, r0
	(p8) br.cond.dpnt .L1830
.L1826:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1830:
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
	(p6) br.cond.dpnt .L1838
	;;
	.mib
	(p12) addl r8 = 1, r0
	nop 0
	(p12) br.cond.dpnt .L1834
	;;
	.mmi
	nop 0
	(p10) addl r8 = 1, r0
	nop 0
	;;
	.mib
	nop 0
	(p11) mov r8 = r0
	(p8) br.cond.dpnt .L1838
.L1834:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1838:
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
	(p6) br.cond.dpnt .L1845
	;;
	.mib
	(p10) addl r8 = 2, r0
	nop 0
	(p10) br.cond.dpnt .L1841
	;;
	.mmi
	nop 0
	(p8) addl r8 = 2, r0
	nop 0
	;;
	.mib
	nop 0
	(p9) addl r8 = 1, r0
	(p12) br.cond.dpnt .L1845
.L1841:
	.mib
	nop 0
	nop 0
	br.ret.sptk.many b0
	;;
.L1845:
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
