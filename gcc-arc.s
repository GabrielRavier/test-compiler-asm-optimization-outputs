	.file	"mini-libc.c"
	.cpu HS
	.arc_attribute Tag_ARC_PCS_config, 3
	.arc_attribute Tag_ARC_ABI_rf16, 0
	.arc_attribute Tag_ARC_ABI_pic, 0
	.arc_attribute Tag_ARC_ABI_tls, 1
	.arc_attribute Tag_ARC_ABI_sda, 0
	.arc_attribute Tag_ARC_ABI_exceptions, 0
	.arc_attribute Tag_ARC_CPU_variation, 2
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	brls	r0,r1,.L2
	add_s	r12,r1,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r3,r0,r2   ;a,b,c/u3
	mov_s	r2,r3	;4
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L12	; lp_count:@.L4->@.L12
	.align 2
.L4:
	ldb.a	r3,[r12,-1]
	stb.a	r3,[r2,-1]
	.align 2
.L12:
	; ZOL_END, begins @.L4
	j_s	[blink]
	.align 4
.L2:
	cmp_s	r0,r1
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L11	; lp_count:@.L5->@.L11
	.align 2
.L5:
	ldb.ab	r12,[r1,1]
	stb.a	r12,[r3,1]
	.align 2
.L11:
	; ZOL_END, begins @.L5
	j_s	[blink]
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	breq_s	r3,0,.L18
	push_s	r14
	push_s	r13
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	mov_s	r13,r3	;4
	mov	lp_count,r13	;5
	lp	@.L29	; lp_count:@.L15->@.L29
	.align 2
.L15:
	mov_s	r14,r0	;4
	ldb.a	r12,[r1,1]
	breq.d	r12,r2,.L28
	stb.ab	r12,[r0,1]
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L29:
	; ZOL_END, begins @.L15
	b.d	.L13
	mov_s	r0,0	;3
	.align 4
.L18:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L28:
	add_s	r0,r14,1   ;R0/R1,b,u6
.L13:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	breq_s	r2,0,.L34
	push_s	r13
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L43	; lp_count:@.L32->@.L43
	.align 2
.L32:
	mov_s	r0,r3	;4
	ldb.ab	r13,[r3,1]
	breq	r13,r1,.L30
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L43:
	; ZOL_END, begins @.L32
	mov_s	r0,0	;3
.L30:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L34:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L49
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r3,r2	;4
	mov	lp_count,r3	;5
	lp	@.L60	; lp_count:@.L46->@.L60
	.align 2
.L46:
	mov_s	r14,r1	;4
	mov_s	r15,r0	;4
	ldb.ab	r13,[r0,1]
	ldb.ab	r12,[r1,1]
	brne	r13,r12,.L59
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L60:
	; ZOL_END, begins @.L46
	b.d	.L44
	mov_s	r0,0	;3
	.align 4
.L49:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L59:
	ldb_s	r0,[r15]
	ldb_s	r2,[r14]
	sub_s	r0,r0,r2
.L44:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L67	; lp_count:@.L63->@.L67
	.align 2
.L63:
	ldb.ab	r12,[r1,1]
	stb.a	r12,[r3,1]
	.align 2
.L67:
	; ZOL_END, begins @.L63
	j_s	[blink]
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	extb_s	r1,r1
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	sub	r12,r0,1 ;a,b,u6
	.align 2
.L69:
	breq	r2,r12,.L73
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,-1]
	brne	r3,r1,.L69
	j_s	[blink]
	.align 4
.L73:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r0	;4
	extb_s	r1,r1
	mov	lp_count,r2	;5
	lp	@.L81	; lp_count:@.L77->@.L81
	.align 2
.L77:
	stb.ab	r1,[r3,1]
	.align 2
.L81:
	; ZOL_END, begins @.L77
	j_s	[blink]
	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	ldb_s	r2,[r1]
	tst_s	r2,r2
	jeq.d	[blink]
	stb_s	r2,[r0]
	add_s	r2,r0,1   ;a,b,c/u3
	.align 2
.L84:
	mov_s	r0,r2	;4
	ldb.a	r3,[r1,1]
	brne.d	r3,0,.L84
	stb.ab	r3,[r2,1]
	j_s	[blink]
	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	ldb_s	r2,[r0]
	tst_s	r2,r2
	jeq.d	[blink]
	extb_s	r1,r1
	.align 2
.L90:
	cmp_s	r2,r1
	jeq_s	[blink]
	ldb.a	r2,[r0,1]
	brne_s	r2,0,.L90
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L100:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r3,r1
	jeq_s	[blink]
	brne_s	r3,0,.L100
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	brne	r2,r3,.L104
	.align 2
.L105:
	breq_s	r2,0,.L104
	ldb.a	r2,[r0,1]
	ldb.a	r3,[r1,1]
	breq	r2,r3,.L105
	.align 2
.L104:
	j_s.d	[blink]
	sub_s	r0,r2,r3
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	tst_s	r2,r2
	beq.d	.L109
	mov.eq	r2,r0
	mov_s	r2,r0	;4
	.align 2
.L110:
	ldb.a	r3,[r2,1]
	brne_s	r3,0,.L110
	.align 2
.L109:
	j_s.d	[blink]
	sub_s	r0,r2,r0
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L119
	ldb_s	r12,[r0]
	breq_s	r12,0,.L122
	push_s	r13
	mov_s	r3,r1	;4
	add_s	r2,r2,r1   ;b,b,h
	.align 2
.L117:
	mov_s	r1,r3	;4
	ldb.ab	r13,[r3,1]
	breq_s	r13,0,.L116
	breq	r3,r2,.L116
	brne	r13,r12,.L116
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L117
	mov_s	r1,r3	;4
	.align 2
.L116:
	ldb_s	r2,[r1]
	sub_s	r0,r12,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L119:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L122:
	ldb_s	r2,[r1]
	j_s.d	[blink]
	sub_s	r0,r12,r2
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	cmp_s	r2,1
	jle	[blink]
	bclr_s	r2,r2,0
	sub1	r2,r2,1 ;a,b,u6
	lsr_s	r2,r2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L132	; lp_count:@.L128->@.L132
	.align 2
.L128:
	ldb_s	r3,[r0,1]
	stb_s	r3,[r1]
	ldb.ab	r3,[r0,2]
	stb_s	r3,[r1,1]
	add_s	r1,r1,2   ;b,b,h
	.align 2
.L132:
	; ZOL_END, begins @.L128
	j_s	[blink]
	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	bset_s	r0,r0,5
	add	r0,r0,-97 ;b,b,s12
	j_s.d	[blink]
	setlo	r0,r0,26
	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	seths	r0,127,r0
	j_s	[blink]
	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	cmp_s	r0,32
	seteq.ne	r0,r0,9
	j_s.d	[blink]
	mov.eq	r0,1
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp_s	r0,31
	seteq.hi	r0,r0,127
	j_s.d	[blink]
	mov.ls	r0,1
	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	sub3	r0,r0,6 ;a,b,u6
	j_s.d	[blink]
	setlo	r0,r0,10
	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	sub	r0,r0,33 ;a,b,u6
	seths	r0,93,r0
	j_s	[blink]
	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	add	r0,r0,-97 ;b,b,s12
	j_s.d	[blink]
	setlo	r0,r0,26
	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	sub3	r0,r0,4 ;a,b,u6
	seths	r0,94,r0
	j_s	[blink]
	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	cmp_s	r0,32
	sub.ne r0,r0,9
	setlo.ne	r0,r0,5
	j_s.d	[blink]
	mov.eq	r0,1
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	add	r0,r0,-65 ;b,b,s12
	j_s.d	[blink]
	setlo	r0,r0,26
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	brls	r0,31,.L161
	add	r2,r0,-127     ;a,b,limm
	brls	r2,32,.L162
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L163
	add_s	r0,r0,-65529   ;b,b,limm
	j_s.d	[blink]
	setlo	r0,r0,3
	.align 4
.L161:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L162:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L163:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	sub3	r0,r0,6 ;a,b,u6
	j_s.d	[blink]
	setlo	r0,r0,10
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	brls	r0,254,.L175
	brls	r0,8231,.L170
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L171
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L172
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L173
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L175:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L170:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L171:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L172:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L173:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	sub3	r2,r0,6 ;a,b,u6
	cmp_s	r2,9
	bset.hi r0,r0,5
	sub.hi r0,r0,97
	setlo.hi	r0,r0,6
	j_s.d	[blink]
	mov.ls	r0,1
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	j_s.d	[blink]
	bmsk_s	r0,r0,6
	.size	toascii, .-toascii
	.align 4
	.global	fdim
	.type	fdim, @function
fdim:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L185
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L186
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L182
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L182:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L185:
	vadd2	r0,r14,0
	b_s	.L182
	.align 4
.L186:
	vadd2	r0,r16,0
	b_s	.L182
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r13,r0
	mov_s	r14,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L191
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L191
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L191:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L204
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L205
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L202
	tst_s	r2,r2
	mov.eq	r14,r16
	mov.eq	r15,r17
	vadd2	r0,r14,0
.L200:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L202:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L200
	.align 4
.L204:
	vadd2	r0,r14,0
	b_s	.L200
	.align 4
.L205:
	vadd2	r0,r16,0
	b_s	.L200
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r0
	mov_s	r13,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L208
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L208
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	bmskn	r2,r2,30
	mov_s	r3,r13	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L210
	tst_s	r2,r2
	mov.eq	r13,r14
	mov_s	r0,r13
.L208:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L210:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r14,r13
	b.d	.L208
	mov_s	r0,r14
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L220
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L221
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L218
	tst_s	r2,r2
	mov.eq	r14,r16
	mov.eq	r15,r17
	vadd2	r0,r14,0
.L216:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L218:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L216
	.align 4
.L220:
	vadd2	r0,r14,0
	b_s	.L216
	.align 4
.L221:
	vadd2	r0,r16,0
	b_s	.L216
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L228
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L229
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L226
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.eq	r0,r14
	mov.eq	r1,r15
.L224:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L226:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L224
	.align 4
.L228:
	vadd2	r0,r14,0
	b_s	.L224
	.align 4
.L229:
	vadd2	r0,r16,0
	b_s	.L224
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r0
	mov_s	r13,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L232
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L232
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	bmskn	r2,r2,30
	mov_s	r3,r13	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L234
	tst_s	r2,r2
	mov.eq	r14,r13
	mov_s	r0,r14
.L232:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L234:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r13,r14
	b.d	.L232
	mov_s	r0,r13
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L244
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L245
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L242
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.eq	r0,r14
	mov.eq	r1,r15
.L240:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L242:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L240
	.align 4
.L244:
	vadd2	r0,r14,0
	b_s	.L240
	.align 4
.L245:
	vadd2	r0,r16,0
	b_s	.L240
	.size	fminl, .-fminl
	.section	.rodata
	.align 4
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.text
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	breq_s	r0,0,.L251
	mov_s	r2,@s.0	;13
	.align 2
.L250:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	lsr.f	r0,r0,6
	bne.d	.L250
	stb.ab	r3,[r2,1]
	.align 2
.L249:
	stb	0,[r2]
	mov_s	r0,@s.0	;13
	j_s	[blink]
	.align 4
.L251:
	mov_s	r2,@s.0	;13
	b_s	.L249
	.size	l64a, .-l64a
	.section	.bss
	.align 4
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.section	.text
	.align 4
	.global	srand
	.type	srand, @function
srand:
	add_s	r0,r0,-1   ;h,h,s3
	st	r0,[@seed]	;26
	st	0,[@seed+4]	;37
	j_s	[blink]
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	ld	r2,[@seed]	;23
	ld	r12,[@seed+4]	;23
	mpy	r12,r12,1284865837
	mpy	r3,r2,1481765933
	add_s	r12,r12,r3   ;b,b,h
	mpydu	r0,r2,1284865837
	add_s	r1,r1,r12   ;b,b,h
	add.f	r2,r0,1
	adc	r0,r1,0
	st	r2,[@seed]	;26
	st	r0,[@seed+4]	;26
	j_s.d	[blink]
	lsr_s	r0,r0
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	breq_s	r1,0,.L262
	ld_s	r2,[r1]		;15
	st_s	r2,[r0]		;16
	st_s	r1,[r0,4]		;16
	st_s	r0,[r1]		;16
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	jeq_s	[blink]
	j_s.d	[blink]
	st_s	r0,[r2,4]		;16
	.align 4
.L262:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L264
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L264:
	ld_s	r2,[r0,4]		;15
	tst_s	r2,r2
	jeq_s	[blink]
	ld_s	r3,[r0]		;15
	j_s.d	[blink]
	st_s	r3,[r2]		;16
	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	push_s	blink
	std.a	r20,[sp,-8]
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r17,r0	;4
	mov_s	r21,r1	;4
	mov_s	r20,r2	;4
	ld_s	r15,[r2]		;15
	breq.d	r15,0,.L268
	mov_s	r16,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	mov_s	r14,0	;3
	.align 2
.L270:
	mov_s	r19,r13	;4
	mov_s	r1,r13	;4
	jl.d	[r18]
	mov_s	r0,r17	;4
	breq_s	r0,0,.L267
	add_s	r14,r14,1   ;b,b,h
	brne.d	r15,r14,.L270
	add_s	r13,r13,r16   ;b,b,h
	.align 2
.L268:
	add_s	r2,r15,1   ;a,b,c/u3
	st	r2,[r20]	;26
	mpy	r15,r15,r16
	mov_s	r2,r16	;4
	mov_s	r1,r17	;4
	bl.d	@memcpy;1
	add	r0,r21,r15 ;a,b,c/u6
	mov_s	r19,r0	;4
	.align 2
.L267:
	mov_s	r0,r19	;4
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	push_s	blink
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	ld	r18,[r2]	;23
	tst	r18,r18
	beq.d	.L273
	mov.eq	r19,0
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	mov_s	r14,0	;3
	.align 2
.L275:
	mov_s	r19,r13	;4
	mov_s	r1,r13	;4
	jl.d	[r16]
	mov_s	r0,r15	;4
	breq_s	r0,0,.L273
	add_s	r14,r14,1   ;b,b,h
	brne.d	r18,r14,.L275
	add_s	r13,r13,r17   ;b,b,h
	mov_s	r19,0	;4
	.align 2
.L273:
	mov_s	r0,r19	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	j_s.d	[blink]
	abs_s	r0,r0
	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	push_s	blink
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	.align 2
.L282:
	mov_s	r14,r13	;4
	ldb.ab	r15,[r13,1]
	bl.d	@isspace;1
	mov_s	r0,r15	;4
	brne_s	r0,0,.L282
	breq	r15,43,.L288
	cmp_s	r15,45
	beq.d	.L283
	mov.eq	r12,1
	b.d	.L284
	mov_s	r12,r0	;4
	.align 4
.L288:
	mov_s	r12,r0	;4
	.align 2
.L283:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L284:
	ldb_s	r2,[r14]
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L286
	.align 2
.L285:
	mpy	r0,r0,10
	sub3	r2,r2,6 ;a,b,u6
	sub_s	r0,r0,r2
	ldb.a	r2,[r14,1]
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L285
	.align 2
.L286:
	tst_s	r12,r12
	neg.eq	r0,r0
	ld	blink,[sp,12]	;23
	pop_s	r13
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	push_s	blink
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	.align 2
.L295:
	mov_s	r14,r13	;4
	ldb.ab	r15,[r13,1]
	bl.d	@isspace;1
	mov_s	r0,r15	;4
	brne_s	r0,0,.L295
	breq	r15,43,.L301
	cmp_s	r15,45
	beq.d	.L296
	mov.eq	r12,1
	b.d	.L297
	mov_s	r12,r0	;4
	.align 4
.L301:
	mov_s	r12,r0	;4
	.align 2
.L296:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L297:
	ldb_s	r2,[r14]
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L299
	.align 2
.L298:
	mpy	r0,r0,10
	sub3	r2,r2,6 ;a,b,u6
	sub_s	r0,r0,r2
	ldb.a	r2,[r14,1]
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L298
	.align 2
.L299:
	tst_s	r12,r12
	neg.eq	r0,r0
	ld	blink,[sp,12]	;23
	pop_s	r13
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	push_s	blink
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	.align 2
.L308:
	mov_s	r14,r13	;4
	ldb.ab	r15,[r13,1]
	bl.d	@isspace;1
	mov_s	r0,r15	;4
	mov.f	r3,r0
	bne_s	.L308
	breq	r15,43,.L309
	brne	r15,45,.L310
	mov_s	r3,1	;3
	.align 2
.L309:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L310:
	ldb_s	r2,[r14]
	sub3	r12,r2,6 ;a,b,u6
	cmp_s	r12,9
	mov.ls	r0,0
	bhi.d	.L318
	mov.ls	r1,0
	.align 2
.L311:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	add_s	r13,r13,r1   ;b,b,h
	sub3	r2,r2,6 ;a,b,u6
	asr	r1,r2,31
	sub.f	r0,r12,r2
	sbc	r1,r13,r1
	ldb.a	r2,[r14,1]
	sub3	r12,r2,6 ;a,b,u6
	brls	r12,9,.L311
	.align 2
.L312:
	brne_s	r3,0,.L307
	mov_s	r2,0	;3
	sub.f	r0,r2,r0
	sbc	r1,r2,r1
.L307:
	ld	blink,[sp,12]	;23
	pop_s	r13
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.align 4
.L318:
	mov_s	r0,0	;3
	b.d	.L312
	mov_s	r1,0	;3
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	push_s	blink
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	mov_s	r18,r4	;4
	mov.f	r13,r2
	bne.d	.L322
	mov.eq	r14,0
	b.d	.L328
	mov_s	r0,r14	;4
	.align 4
.L324:
	mov_s	r13,r15	;4
	.align 2
.L321:
	breq_s	r13,0,.L327
	.align 2
.L322:
	lsr_s	r15,r13
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	brlt	r0,0,.L324
	brle	r0,0,.L319
	add	r17,r14,r16 ;a,b,c/u6
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L321
	sub_s	r13,r13,r15
	.align 4
.L327:
	mov_s	r14,0	;3
	.align 2
.L319:
	mov_s	r0,r14	;4
	.align 2
.L328:
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	push_s	blink
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r19,r0	;4
	mov_s	r16,r1	;4
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r17,r5	;4
	mov_s	r14,r2	;4
	tst_s	r2,r2
	bne.d	.L332
	mov.eq	r13,0
	b.d	.L337
	mov_s	r0,r13	;4
	.align 4
.L331:
	asr.f	r14,r14,1
	beq_s	.L336
	.align 2
.L332:
	asr_s	r13,r14,1
	mpy_s	r13,r13,r15
	add_s	r13,r13,r16   ;b,b,h
	mov_s	r2,r17	;4
	mov_s	r1,r13	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L329
	brle	r0,0,.L331
	add	r16,r13,r15 ;a,b,c/u6
	b.d	.L331
	add_s	r14,r14,-1   ;h,h,s3
	.align 4
.L336:
	mov_s	r13,0	;3
	.align 2
.L329:
	mov_s	r0,r13	;4
	.align 2
.L337:
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	div	r12,r1,r2
	rem	r1,r1,r2
	st_s	r12,[r0]		;16
	j_s.d	[blink]
	st_s	r1,[r0,4]		;16
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	asr	r2,r1,31
	xor_s	r0,r0,r2
	xor_s	r1,r1,r2
	sub.f	r0,r0,r2
	j_s.d	[blink]
	sbc	r1,r1,r2
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	push_s	blink
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r14,r1	;4
	mov_s	r15,r2	;4
	mov_s	r16,r3	;4
	mov_s	r17,r4	;4
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__divdi3;1
	vadd2	r18,r0,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__moddi3;1
	std	r18,[r13]
	std	r0,[r13,8]
	mov_s	r0,r13	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	j_s.d	[blink]
	abs_s	r0,r0
	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	div	r12,r1,r2
	rem	r1,r1,r2
	st_s	r12,[r0]		;16
	j_s.d	[blink]
	st_s	r1,[r0,4]		;16
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	asr	r2,r1,31
	xor_s	r0,r0,r2
	xor_s	r1,r1,r2
	sub.f	r0,r0,r2
	j_s.d	[blink]
	sbc	r1,r1,r2
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	push_s	blink
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r14,r1	;4
	mov_s	r15,r2	;4
	mov_s	r16,r3	;4
	mov_s	r17,r4	;4
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__divdi3;1
	vadd2	r18,r0,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__moddi3;1
	std	r18,[r13]
	std	r0,[r13,8]
	mov_s	r0,r13	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L360
	.align 2
.L353:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L353
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L360:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	brne	r2,r3,.L362
	.align 2
.L363:
	breq_s	r2,0,.L362
	breq_s	r3,0,.L362
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	breq	r2,r3,.L363
	.align 2
.L362:
	brlt	r2,r3,.L366
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L366:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L369:
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L369
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	beq.d	.L375
	mov.eq	r2,r0
	mov_s	r2,r0	;4
	.align 2
.L376:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L376
	.align 2
.L375:
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L386
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L395	; lp_count:@.L382->@.L395
	.align 2
.L382:
	mov_s	r14,r1	;4
	mov_s	r15,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld.ab	r13,[r1,4]	;23
	brne	r3,r13,.L383
	breq_s	r3,0,.L383
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L395:
	; ZOL_END, begins @.L382
	b.d	.L380
	mov_s	r0,0	;3
	.align 4
.L386:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L383:
	ld_s	r0,[r15]		;15
	ld_s	r2,[r14]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L380:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	breq_s	r2,0,.L400
	push_s	r13
	mov_s	r3,r0	;4
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L409	; lp_count:@.L398->@.L409
	.align 2
.L398:
	mov_s	r0,r3	;4
	ld.ab	r13,[r3,4]	;23
	breq	r13,r1,.L396
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L409:
	; ZOL_END, begins @.L398
	mov_s	r0,0	;3
.L396:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L400:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L416
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r3,r2	;4
	mov	lp_count,r3	;5
	lp	@.L427	; lp_count:@.L412->@.L427
	.align 2
.L412:
	mov_s	r14,r1	;4
	mov_s	r15,r0	;4
	ld.ab	r13,[r0,4]	;23
	ld.ab	r12,[r1,4]	;23
	brne	r13,r12,.L426
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L427:
	; ZOL_END, begins @.L412
	b.d	.L410
	mov_s	r0,0	;3
	.align 4
.L416:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L426:
	ld_s	r0,[r15]		;15
	ld_s	r2,[r14]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L410:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	tst_s	r2,r2
	jeq_s	[blink]
	push_s	r13
	sub	r3,r2,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L437	; lp_count:@.L430->@.L437
	.align 2
.L430:
	ld.ab	r13,[r1,4]	;23
	st.a	r13,[r12,4]	;26
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L437:
	; ZOL_END, begins @.L430
	j_s.d	[blink]
	pop_s	r13
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp_s	r0,r1
	jeq_s	[blink]
	push_s	r13
	sub_s	r13,r0,r1
	asl_s	r12,r2,2
	brlo.d	r13,r12,.L440
	mov_s	r3,r1	;4
	breq.d	r2,0,.L439
	sub	r3,r2,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	add_s	r2,r3,1   ;a,b,c/u3
	mov	lp_count,r2	;5
	lp	@.L453	; lp_count:@.L443->@.L453
	.align 2
.L443:
	ld.ab	r13,[r1,4]	;23
	st.a	r13,[r12,4]	;26
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L453:
	; ZOL_END, begins @.L443
	b_s	.L439
	.align 4
.L440:
	breq_s	r2,0,.L439
	add_s	r1,r1,r12   ;b,b,h
	add_s	r12,r12,r0   ;b,b,h
	sub_s	r2,r1,r3
	sub2	r2,r2,1 ;a,b,u6
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L452	; lp_count:@.L442->@.L452
	.align 2
.L442:
	ld.a	r3,[r1,-4]	;23
	st.a	r3,[r12,-4]	;26
	.align 2
.L452:
	; ZOL_END, begins @.L442
.L439:
	j_s.d	[blink]
	pop_s	r13
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	mov_s	r12,r0	;4
	mov	lp_count,r2	;5
	lp	@.L460	; lp_count:@.L456->@.L460
	.align 2
.L456:
	st.ab	r1,[r12,4]	;26
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L460:
	; ZOL_END, begins @.L456
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	brhs	r0,r1,.L462
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L472	; lp_count:@.L464->@.L472
	.align 2
.L464:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L472:
	; ZOL_END, begins @.L464
	j_s	[blink]
	.align 4
.L462:
	cmp_s	r0,r1
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L471	; lp_count:@.L465->@.L471
	.align 2
.L465:
	ldb.ab	r3,[r0,1]
	stb.a	r3,[r1,1]
	.align 2
.L471:
	; ZOL_END, begins @.L465
	j_s	[blink]
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr_s	r12,r0
	not_s	r3,r2
	lsr_s	r12,r12,r3
	asl	r3,r1,r2
	or_s	r3,r3,r12
	asl	r12,r0,r2
	btst_s	r2,5
	mov_s	r13,r12	;4
	mov.eq	r13,r3
	mov_s	r3,r13	;4
	sub.ne	r12,r12,r12
	neg_s	r2,r2
	and	r13,r2,63
	asl_s	r14,r1,1
	not_s	r15,r13
	asl_s	r14,r14,r15
	lsr_s	r0,r0,r13
	or_s	r0,r0,r14
	lsr_s	r1,r1,r13
	btst_s	r2,5
	mov_s	r2,r1	;4
	mov.eq	r2,r0
	mov_s	r0,r2	;4
	sub.ne	r1,r1,r1
	or_s	r0,r0,r12
	or_s	r1,r1,r3
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	std.a	r14,[sp,-8]
	push_s	r13
	asl_s	r12,r1,1
	not_s	r3,r2
	asl_s	r12,r12,r3
	lsr	r3,r0,r2
	or_s	r3,r3,r12
	lsr	r12,r1,r2
	btst_s	r2,5
	mov_s	r13,r12	;4
	mov.eq	r13,r3
	mov_s	r3,r13	;4
	sub.ne	r12,r12,r12
	neg_s	r2,r2
	and	r13,r2,63
	lsr_s	r14,r0
	not_s	r15,r13
	lsr_s	r14,r14,r15
	asl_s	r1,r1,r13
	or_s	r1,r1,r14
	asl_s	r0,r0,r13
	btst_s	r2,5
	mov_s	r2,r0	;4
	mov.eq	r2,r1
	mov_s	r1,r2	;4
	sub.ne	r0,r0,r0
	or_s	r0,r0,r3
	or_s	r1,r1,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	neg_s	r1,r1
	j_s.d	[blink]
	ror	r0,r0,r1
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	j_s.d	[blink]
	ror	r0,r0,r1
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	neg_s	r1,r1
	j_s.d	[blink]
	ror	r0,r0,r1
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	j_s.d	[blink]
	ror	r0,r0,r1
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	exth_s	r0,r0
	bmsk_s	r1,r1,3
	asl	r2,r0,r1
	neg_s	r1,r1
	bmsk_s	r1,r1,3
	lsr_s	r0,r0,r1
	or_s	r0,r0,r2
	j_s.d	[blink]
	exth_s	r0,r0
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	exth_s	r0,r0
	bmsk_s	r1,r1,3
	lsr	r2,r0,r1
	neg_s	r1,r1
	bmsk_s	r1,r1,3
	asl_s	r0,r0,r1
	or_s	r0,r0,r2
	j_s.d	[blink]
	exth_s	r0,r0
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	extb_s	r0,r0
	bmsk_s	r1,r1,2
	asl	r2,r0,r1
	neg_s	r1,r1
	bmsk_s	r1,r1,2
	lsr_s	r0,r0,r1
	or_s	r0,r0,r2
	j_s.d	[blink]
	extb_s	r0,r0
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	extb_s	r0,r0
	bmsk_s	r1,r1,2
	lsr	r2,r0,r1
	neg_s	r1,r1
	bmsk_s	r1,r1,2
	asl_s	r0,r0,r1
	or_s	r0,r0,r2
	j_s.d	[blink]
	extb_s	r0,r0
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	xbfu	r2,r0,232
	asl_s	r0,r0,8
	and	r0,r0,65280
	j_s.d	[blink]
	or_s	r0,r0,r2
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	push_s	r13
	lsr	r13,r0,24
	lsr	r2,r0,8
	and	r3,r2,65280
	asl	r12,r0,8
	and	r12,r12,16711680
	asl	r2,r0,24
	or_s	r2,r2,r13
	or_s	r2,r2,r3
	or	r0,r12,r2
	j_s.d	[blink]
	pop_s	r13
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r15,r1,24
	lsr	r13,r1,8
	and	r13,r13,65280
	asl	r12,r1,8
	and	r12,r12,16711680
	asl	r2,r1,24
	asl	r1,r0,8
	lsr	r14,r0,24
	lsr	r3,r0,8
	asl_s	r0,r0,24
	and	r3,r3,65280
	and	r1,r1,16711680
	or_s	r13,r13,r15
	or_s	r12,r12,r13
	or	r13,r14,r0
	or_s	r3,r3,r13
	or	r0,r2,r12
	or_s	r1,r1,r3
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	mov_s	r2,0	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L507	; lp_count:@.L502->@.L507
	.align 2
.L502:
	bbit1	r0,r2,@.L506
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L507:
	; ZOL_END, begins @.L502
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L506:
	j_s.d	[blink]
	add_s	r0,r2,1   ;R0/R1,b,u6
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L511
	bbit1.d	r2,0,@.L515
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L510:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L510
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L515:
	j_s	[blink]
	.align 4
.L511:
	mov_s	r0,r2	;4
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	push_s	blink
	push_s	r13
	mov_s	r1,0xff7fffff ; -3.402823466385288598117e+38
	bl.d	@__ltsf2;1
	mov_s	r13,r0
	tst_s	r0,r0
	bn.d	.L516
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L516:
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	gl_isinff, .-gl_isinff
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	push_s	blink
	std.a	r14,[sp,-8]
	vadd2	r14,r0,0
	mov_s	r3,-1048577	;13
	bl.d	@__ltdf2;1
	mov_s	r2,-1	;4
	tst_s	r0,r0
	bn.d	.L521
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L521:
	ld	blink,[sp,8]	;23
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	push_s	blink
	std.a	r14,[sp,-8]
	vadd2	r14,r0,0
	mov_s	r3,-1048577	;13
	bl.d	@__ltdf2;1
	mov_s	r2,-1	;4
	tst_s	r0,r0
	bn.d	.L526
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L526:
	ld	blink,[sp,8]	;23
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	push_s	blink
	push_s	r13
	mov_s	r13,r0	;4
	bl.d	@__floatsidf;1
	mov_s	r0,r1	;4
	std	r0,[r13]
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	_Qp_itoq, .-_Qp_itoq
	.align 4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	push_s	blink
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r15,r0
	mov_s	r14,r1	;4
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	brne_s	r0,0,.L534
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	bl.d	@__nesf2;1
	mov_s	r1,r15
	breq_s	r0,0,.L534
	tst_s	r14,r14
	mov_s	r13,0x3f000000 ; 5.0e-1
	mov.p	r13,0x40000000 ; 2.0e+0
	b_s	.L538
	.align 4
.L537:
	div	r14,r14,2
	breq_s	r14,0,.L534
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L538:
	bbit0	r14,0,@.L537
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L537
	mov_s	r15,r0
	.align 4
.L534:
	mov_s	r0,r15
	ld	blink,[sp,12]	;23
	pop_s	r13
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	ldexpf, .-ldexpf
	.align 4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r16,r0,0
	mov_s	r13,r2	;4
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L543
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L543
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L547
	.align 4
.L546:
	div	r13,r13,2
	.align 4
.L551:
	breq_s	r13,0,.L543
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L547:
	bbit0	r13,0,@.L546
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L551
	.align 4
.L543:
	vadd2	r0,r16,0
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	ldexp, .-ldexp
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r16,r0,0
	mov_s	r13,r2	;4
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L553
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L553
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L557
	.align 4
.L556:
	div	r13,r13,2
	.align 4
.L561:
	breq_s	r13,0,.L553
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L557:
	bbit0	r13,0,@.L556
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L561
	.align 4
.L553:
	vadd2	r0,r16,0
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	tst_s	r2,r2
	jeq_s	[blink]
	push_s	r13
	mov_s	r12,r0	;4
	mov	lp_count,r2	;5
	lp	@.L571	; lp_count:@.L564->@.L571
	.align 2
.L564:
	ldb.ab	r13,[r1,1]
	ldb.ab	r3,[r12,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L571:
	; ZOL_END, begins @.L564
	j_s.d	[blink]
	pop_s	r13
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r16,r0	;4
	mov_s	r14,r1	;4
	bl.d	@strlen;1
	mov_s	r15,r2	;4
	breq.d	r15,0,.L573
	add	r13,r16,r0 ;a,b,c/u6
	sub	r1,r14,1 ;a,b,u6
	mov_s	r12,r15	;4
	mov	lp_count,r12	;5
	lp	@.L580	; lp_count:@.L574->@.L580
	.align 2
.L574:
	ldb.a	r3,[r1,1]
	breq.d	r3,0,.L576
	stb.ab	r3,[r13,1]
	add_s	r15,r15,-1   ;h,h,s3
	.align 2
.L580:
	; ZOL_END, begins @.L574
	.align 2
.L573:
	stb	0,[r13]
	.align 2
.L576:
	mov_s	r0,r16	;4
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L585
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	sub_s	r12,r1,r0
	mov	lp_count,r12	;5
	lp	@.L591	; lp_count:@.L583->@.L591
	.align 2
.L583:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L591:
	; ZOL_END, begins @.L583
	j_s.d	[blink]
	mov_s	r0,r1	;4
	.align 4
.L585:
	j_s.d	[blink]
	mov_s	r0,r1	;4
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L600
	.align 2
.L593:
	sub	r3,r1,1 ;a,b,u6
	.align 2
.L596:
	ldb.a	r2,[r3,1]
	breq_s	r2,0,.L601
	brne	r2,r12,.L596
	j_s	[blink]
	.align 4
.L600:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L601:
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L593
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	.align 2
.L605:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r3,r1
	mov.ne	r12,r0
	brne.d	r3,0,.L605
	mov_s	r0,r12	;4
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r14,r1	;4
	bl.d	@strlen;1
	mov_s	r0,r1	;4
	mov.f	r15,r0
	beq_s	.L611
	ldb	r16,[r14]
	.align 2
.L613:
	mov_s	r1,r16	;4
	bl.d	@strchr;1
	mov_s	r0,r13	;4
	mov.f	r13,r0
	beq_s	.L611
	mov_s	r2,r15	;4
	mov_s	r1,r14	;4
	bl.d	@strncmp;1
	mov_s	r0,r13	;4
	breq_s	r0,0,.L611
	b.d	.L613
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L611:
	mov_s	r0,r13	;4
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.size	strstr, .-strstr
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L628
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L621
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L620
	.align 2
.L621:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L628:
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L621
	.align 2
.L620:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L621
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	push_s	blink
	st.a	r18,[sp,-4]	;26
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	tst_s	r3,r3
	beq.d	.L629
	mov.eq	r15,r0
	cmp_s	r1,r3
	blo.d	.L629
	mov.lo	r15,0
	sub_s	r14,r1,r3
	add.f	r14,r0,r14
	blo.d	.L629
	mov.lo	r15,0
	mov_s	r18,r2	;4
	ldb.ab	r17,[r18,1]
	mov_s	r13,r0	;4
	b.d	.L632
	sub	r16,r3,1 ;a,b,u6
	.align 4
.L631:
	brlo	r14,r13,.L638
	.align 2
.L632:
	mov_s	r15,r13	;4
	ldb.ab	r3,[r13,1]
	brne	r3,r17,.L631
	mov_s	r2,r16	;4
	mov_s	r1,r18	;4
	bl.d	@memcmp;1
	mov_s	r0,r13	;4
	brne_s	r0,0,.L631
	b.d	.L639
	mov_s	r0,r15	;4
	.align 4
.L638:
	mov_s	r15,0	;3
	.align 2
.L629:
	mov_s	r0,r15	;4
	.align 2
.L639:
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push_s	blink
	push_s	r13
	bl.d	@memcpy;1
	mov_s	r13,r2	;4
	add_s	r0,r0,r13   ;b,b,h
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	mempcpy, .-mempcpy
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	push_s	blink
	std.a	r20,[sp,-8]
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r14,r0,0
	mov_s	r20,r2	;4
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	bn.d	.L667
	mov.p	r21,0
	.align 2
.L643:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L663
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L647:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__gedf2;1
	brge	r0,0,.L647
	.align 2
.L648:
	breq.d	r21,0,.L652
	st	r13,[r20]	;26
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L652:
	vadd2	r0,r14,0
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L667:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b.d	.L643
	mov_s	r21,1	;4
	.align 4
.L663:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L648
	mov.p	r13,0
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	beq.d	.L648
	mov.eq	r13,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L651:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__ltdf2;1
	brlt	r0,0,.L651
	b_s	.L648
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r4,r0	;4
	or.f	0,r0,r1
	beq.d	.L672
	mov_s	r14,r1	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r13,r4	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L671:
	mov_s	r2,r13	;4
	bmsk_s	r2,r2,0
	mpy	r4,r15,r2
	mpydu	r2,r2,r12
	add_s	r3,r3,r4   ;b,b,h
	add.f	r0,r0,r2
	adc	r1,r1,r3
	add.f	r12,r12,r12
	adc	r15,r15,r15
	lsr.f	r14,r14
	rrc	r13,r13
	or.f	0,r13,r14
	bne_s	.L671
.L668:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L672:
	mov_s	r0,0	;3
	b.d	.L668
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp_s	r1,r0
	bhs.d	.L683
	mov.hs	r3,1
	mov_s	r3,1	;3
	.align 2
.L676:
	brlt	r1,0,.L683
	asl_s	r1,r1,1
	brls.d	r0,r1,.L678
	asl_s	r3,r3,1
	brne_s	r3,0,.L676
	b.d	.L679
	mov_s	r12,r3	;4
	.align 4
.L678:
	tst_s	r3,r3
	beq.d	.L679
	mov.eq	r12,r3
	.align 2
.L683:
	mov_s	r12,0	;3
	.align 2
.L682:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L682
	lsr_s	r1,r1
	.align 2
.L679:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L692
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L692:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L703
	xor	r12,r1,r3
	.align 2
.L700:
	fls	r0,r2
	breq.d	r12,0,.L698
	rsub	r0,r0,63
	fls	r12,r12
	rsub	r0,r12,31
	.align 2
.L698:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L703:
	brne	r1,r3,.L700
	j_s.d	[blink]
	mov_s	r0,63	;3
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov.f	r2,r0
	beq_s	.L707
	mov_s	r0,0	;3
	.align 2
.L706:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L706
	asl_s	r1,r1,1
	j_s	[blink]
	.align 4
.L707:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brhs.d	r0,r1,.L713
	bmskn	r4,r2,2
	.align 2
.L716:
	breq	r3,0,.L736
	std.a	r14,[sp,-8]
	push_s	r13
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L740	; lp_count:@.L719->@.L740
	.align 2
.L719:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L740:
	; ZOL_END, begins @.L719
	brls	r2,r4,.L712
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L739	; lp_count:@.L720->@.L739
	.align 2
.L720:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L739:
	; ZOL_END, begins @.L720
	.align 2
.L712:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L713:
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L716
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L738	; lp_count:@.L721->@.L738
	.align 2
.L721:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r0,-1]
	.align 2
.L738:
	; ZOL_END, begins @.L721
	j_s	[blink]
	.align 4
.L736:
	cmp_s	r2,r4
	jls	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L737	; lp_count:@.L732->@.L737
	.align 2
.L732:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L737:
	; ZOL_END, begins @.L732
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brhs.d	r0,r1,.L742
	lsr_s	r3,r2
	.align 2
.L745:
	breq_s	r3,0,.L744
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	add1	r3,-2,r3
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L756	; lp_count:@.L748->@.L756
	.align 2
.L748:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L756:
	; ZOL_END, begins @.L748
	.align 2
.L744:
	bbit0	r2,0,@.L741
	sub	r3,r2,1 ;a,b,u6
	add_s	r2,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	ldb_s	r2,[r2]
	stb_s	r2,[r3]
	.align 2
.L741:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L742:
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L745
	breq_s	r2,0,.L741
	add_s	r3,r0,r2   ;a,b,c/u3
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L755	; lp_count:@.L749->@.L755
	.align 2
.L749:
	ldb.a	r13,[r12,-1]
	stb.a	r13,[r3,-1]
	.align 2
.L755:
	; ZOL_END, begins @.L749
	b_s	.L741
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	brhs.d	r0,r1,.L758
	bmskn	r15,r2,1
	.align 2
.L761:
	breq_s	r3,0,.L760
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	add2	r3,-4,r3
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L776	; lp_count:@.L764->@.L776
	.align 2
.L764:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L776:
	; ZOL_END, begins @.L764
	.align 2
.L760:
	brls	r2,r15,.L757
	add_s	r15,r15,-1   ;h,h,s3
	add_s	r3,r1,r15   ;a,b,c/u3
	add_s	r0,r0,r15   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L775	; lp_count:@.L765->@.L775
	.align 2
.L765:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L775:
	; ZOL_END, begins @.L765
	.align 2
.L757:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L758:
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L761
	breq_s	r2,0,.L757
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L774	; lp_count:@.L766->@.L774
	.align 2
.L766:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r0,-1]
	.align 2
.L774:
	; ZOL_END, begins @.L766
	b_s	.L757
	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	j_s.d	[blink]
	rem	r0,r0,r1
	.size	__modi, .-__modi
	.align 4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	push_s	blink
	bl	@__floatunsidf;1
	pop_s	blink
	j_s	[blink]
	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	push_s	blink
	bl	@__floatunsisf;1
	pop_s	blink
	j_s	[blink]
	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	push_s	blink
	bl	@__floatundidf;1
	pop_s	blink
	j_s	[blink]
	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	push_s	blink
	bl	@__floatundisf;1
	pop_s	blink
	j_s	[blink]
	.size	__ulltof, .-__ulltof
	.align 4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	j_s.d	[blink]
	remu	r0,r0,r1
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	exth_s	r12,r0
	mov_s	r0,0	;3
	mov_s	r2,16	;3
	mov	lp_count,r2	;5
	lp	@.L795	; lp_count:@.L791->@.L795
	.align 2
.L791:
	rsub	r3,r0,15
	bbit1	r12,r3,@.L796
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L795:
	; ZOL_END, begins @.L791
	.align 2
.L796:
	j_s	[blink]
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	exth_s	r3,r0
	mov_s	r0,0	;3
	mov_s	r2,16	;3
	mov	lp_count,r2	;5
	lp	@.L803	; lp_count:@.L799->@.L803
	.align 2
.L799:
	bbit1	r3,r0,@.L804
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L803:
	; ZOL_END, begins @.L799
	.align 2
.L804:
	j_s	[blink]
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	push_s	blink
	push_s	r13
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__gesf2;1
	mov_s	r13,r0
	brge	r0,0,.L812
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L805:
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L812:
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L805
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	push_s	r13
	exth_s	r13,r0
	mov_s	r0,0	;3
	mov_s	r12,0	;3
	mov_s	r3,16	;3
	mov	lp_count,r3	;5
	lp	@.L818	; lp_count:@.L814->@.L818
	.align 2
.L814:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L818:
	; ZOL_END, begins @.L814
	bmsk_s	r0,r0,0
	j_s.d	[blink]
	pop_s	r13
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	push_s	r13
	exth_s	r13,r0
	mov_s	r0,0	;3
	mov_s	r12,0	;3
	mov_s	r3,16	;3
	mov	lp_count,r3	;5
	lp	@.L824	; lp_count:@.L820->@.L824
	.align 2
.L820:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L824:
	; ZOL_END, begins @.L820
	j_s.d	[blink]
	pop_s	r13
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov.f	r2,r0
	beq_s	.L828
	mov_s	r0,0	;3
	.align 2
.L827:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L827
	asl_s	r1,r1,1
	j_s	[blink]
	.align 4
.L828:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov.f	r3,r0
	beq_s	.L836
	breq_s	r1,0,.L837
	mov_s	r0,0	;3
	.align 2
.L835:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	lsr.f	r1,r1,1
	bne.d	.L835
	asl_s	r3,r3,1
	j_s	[blink]
	.align 4
.L836:
	j_s.d	[blink]
	mov_s	r0,r3	;4
	.align 4
.L837:
	j_s.d	[blink]
	mov_s	r0,r1	;4
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r1,r0
	bhs.d	.L850
	mov.hs	r3,1
	mov_s	r3,1	;3
	.align 2
.L843:
	brlt	r1,0,.L850
	asl_s	r1,r1,1
	brls.d	r0,r1,.L845
	asl_s	r3,r3,1
	brne_s	r3,0,.L843
	b.d	.L846
	mov_s	r12,r3	;4
	.align 4
.L845:
	tst_s	r3,r3
	beq.d	.L846
	mov.eq	r12,r3
	.align 2
.L850:
	mov_s	r12,0	;3
	.align 2
.L849:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L849
	lsr_s	r1,r1
	.align 2
.L846:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r13,r0
	bl.d	@__ltsf2;1
	mov_s	r14,r1
	tst_s	r0,r0
	mov.n	r0,-1
	bn	.L857
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L857:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r0,-1
	bn	.L862
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L862:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	asr	r2,r0,31
	asr	r3,r1,31
	mpy_s	r2,r2,r1
	mpy_s	r3,r3,r0
	add_s	r2,r2,r3   ;b,b,h
	mpydu	r0,r0,r1
	j_s.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	mpydu	r0,r0,r1
	j_s	[blink]
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	push_s	r14
	push_s	r13
	mov_s	r12,r0	;4
	tst_s	r1,r1
	neg.n	r1,r1
	bn.d	.L876
	mov.n	r14,1
	tst_s	r1,r1
	beq.d	.L881
	sub_s.ne	r14,r14,r14
	.align 2
.L876:
	mov_s	r3,32	;3
	mov_s	r0,0	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L882	; lp_count:@.L874->@.L882
	.align 2
.L874:
	and	r2,r1,1
	mpy_s	r2,r2,r12
	add_s	r0,r0,r2   ;b,b,h
	asr.f	r1,r1,1
	beq.d	.L873
	asl_s	r12,r12,1
	add_s	r3,r3,-1   ;h,h,s3
	extb_s	r3,r3
	.align 2
.L882:
	; ZOL_END, begins @.L874
	.align 2
.L873:
	tst_s	r14,r14
	neg.ne	r0,r0
.L871:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L881:
	b.d	.L871
	mov_s	r0,r1	;4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push_s	blink
	brlt	r0,0,.L892
	brlt	r1,0,.L893
	bl.d	@__udivmodsi4;1
	mov_s	r2,0	;3
	b_s	.L883
	.align 4
.L892:
	brlt.d	r1,0,.L894
	neg_s	r0,r0
	bl.d	@__udivmodsi4;1
	mov_s	r2,0	;3
	neg_s	r0,r0
.L883:
	.align 2
.L895:
	pop_s	blink
	j_s	[blink]
	.align 4
.L893:
	mov_s	r2,0	;3
	bl.d	@__udivmodsi4;1
	neg_s	r1,r1
	b.d	.L895
	neg_s	r0,r0
	.align 4
.L894:
	mov_s	r2,0	;3
	bl.d	@__udivmodsi4;1
	neg_s	r1,r1
	b_s	.L883
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push_s	blink
	brlt	r0,0,.L900
	mov_s	r2,1	;3
	bl.d	@__udivmodsi4;1
	abs_s	r1,r1
	b_s	.L896
	.align 4
.L900:
	mov_s	r2,1	;3
	abs_s	r1,r1
	bl.d	@__udivmodsi4;1
	neg_s	r0,r0
	neg_s	r0,r0
.L896:
	pop_s	blink
	j_s	[blink]
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	exth_s	r0,r0
	exth_s	r1,r1
	cmp_s	r1,r0
	bhs.d	.L909
	mov.hs	r3,1
	mov_s	r3,1	;3
	mov_s	r12,16	;3
	.align 2
.L902:
	btst_s	r1,15
	bne_s	.L909
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	brls.d	r0,r1,.L904
	exth_s	r3,r3
	add_s	r12,r12,-1   ;h,h,s3
	tst_s	r12,r12
	bne_s	.L902
	b.d	.L905
	mov_s	r12,0	;3
	.align 4
.L904:
	tst_s	r3,r3
	beq.d	.L905
	mov.eq	r12,r3
	.align 2
.L909:
	mov_s	r12,0	;3
	.align 2
.L908:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	bmsk.hs	r0,r0,15
	or.hs r12,r12,r3
	bmsk.hs	r12,r12,15
	lsr.f	r3,r3,1
	bne.d	.L908
	lsr_s	r1,r1
	.align 2
.L905:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r1,r0
	bhs.d	.L927
	mov.hs	r3,1
	mov_s	r3,1	;3
	.align 2
.L920:
	brlt	r1,0,.L927
	asl_s	r1,r1,1
	brls.d	r0,r1,.L922
	asl_s	r3,r3,1
	brne_s	r3,0,.L920
	b.d	.L923
	mov_s	r12,r3	;4
	.align 4
.L922:
	tst_s	r3,r3
	beq.d	.L923
	mov.eq	r12,r3
	.align 2
.L927:
	mov_s	r12,0	;3
	.align 2
.L926:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L926
	lsr_s	r1,r1
	.align 2
.L923:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L935
	asl	r1,r0,r2
	mov_s	r3,0	;3
	.align 2
.L936:
	j_s.d	[blink]
	mov_s	r0,r3	;4
	.align 4
.L935:
	tst_s	r2,r2
	jeq_s	[blink]
	asl	r3,r0,r2
	asl_s	r1,r1,r2
	rsub	r2,r2,32
	lsr	r2,r0,r2
	b.d	.L936
	or_s	r1,r1,r2
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0	r2,5,@.L941
	asr	r12,r1,31
	asr	r0,r1,r2
	.align 2
.L942:
	j_s.d	[blink]
	mov_s	r1,r12	;4
	.align 4
.L941:
	tst_s	r2,r2
	jeq_s	[blink]
	asr	r12,r1,r2
	rsub	r3,r2,32
	asl	r3,r1,r3
	lsr_s	r0,r0,r2
	b.d	.L942
	or_s	r0,r0,r3
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r15,r1,24
	lsr	r13,r1,8
	and	r13,r13,65280
	asl	r12,r1,8
	and	r12,r12,16711680
	asl	r2,r1,24
	asl	r1,r0,8
	lsr	r14,r0,24
	lsr	r3,r0,8
	asl_s	r0,r0,24
	and	r3,r3,65280
	and	r1,r1,16711680
	or_s	r13,r13,r15
	or_s	r12,r12,r13
	or	r13,r14,r0
	or_s	r3,r3,r13
	or	r0,r2,r12
	or_s	r1,r1,r3
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	lsr	r12,r0,24
	lsr	r2,r0,8
	and	r2,r2,65280
	asl	r3,r0,8
	and	r3,r3,16711680
	asl_s	r0,r0,24
	or_s	r12,r12,r0
	or_s	r2,r2,r12
	j_s.d	[blink]
	or	r0,r3,r2
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	push_s	r13
	seths	r12,65535,r0
	asl_s	r12,r12,4
	rsub	r2,r12,16
	lsr	r2,r0,r2
	and	r3,r2,65280
	seteq	r3,r3,0
	sub3	r13,8,r3
	lsr_s	r2,r2,r13
	add3_s	r12,r12,r3
	and	r3,r2,240
	seteq	r3,r3,0
	sub2	r13,4,r3
	lsr_s	r2,r2,r13
	add2	r3,r12,r3
	and	r0,r2,12
	seteq	r0,r0,0
	sub1	r12,2,r0
	lsr_s	r2,r2,r12
	add1_s	r3,r3,r0
	xbfu	r12,r2,1
	xor	r12,r12,1
	rsub	r2,r2,2
	extb.f	0,r12
	mov_s	r0,0	;3
	mov.ne	r0,r2
	add_s	r0,r0,r3   ;b,b,h
	j_s.d	[blink]
	pop_s	r13
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	brgt	r3,r1,.L954
	brlt	r3,r1,.L955
	brlo	r0,r2,.L956
	cmp_s	r0,r2
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.hi	r0,2
	.align 4
.L954:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L955:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L956:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	push_s	blink
	bl	@__cmpdi2;1
	add_s	r0,r0,-1   ;h,h,s3
	pop_s	blink
	j_s	[blink]
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exth_s	r12,r0
	seteq	r12,r12,0
	asl_s	r12,r12,4
	lsr	r2,r0,r12
	extb_s	r3,r2
	seteq	r3,r3,0
	asl_s	r3,r3,3
	lsr_s	r2,r2,r3
	add_s	r12,r12,r3   ;b,b,h
	and	r3,r2,15
	seteq	r3,r3,0
	asl_s	r3,r3,2
	lsr_s	r2,r2,r3
	add_s	r3,r3,r12   ;b,b,h
	and	r0,r2,3
	seteq	r0,r0,0
	asl_s	r0,r0,1
	lsr_s	r2,r2,r0
	add_s	r0,r0,r3   ;b,b,h
	bic	r3,1,r2    ;;constraint 6
	xbfu	r2,r2,1
	rsub	r2,r2,2
	mpy_s	r2,r2,r3
	j_s.d	[blink]
	add_s	r0,r0,r2   ;b,b,h
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	bbit0	r2,5,@.L964
	lsr	r0,r1,r2
	mov_s	r12,0	;3
	.align 2
.L965:
	j_s.d	[blink]
	mov_s	r1,r12	;4
	.align 4
.L964:
	tst_s	r2,r2
	jeq_s	[blink]
	lsr	r12,r1,r2
	rsub	r3,r2,32
	asl	r3,r1,r3
	lsr_s	r0,r0,r2
	b.d	.L965
	or_s	r0,r0,r3
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	push_s	r14
	push_s	r13
	exth_s	r2,r0
	exth_s	r12,r1
	mpy	r13,r2,r12
	lsr	r14,r13,16
	lsr	r3,r0,16
	mpy_s	r12,r12,r3
	add_s	r12,r12,r14   ;b,b,h
	lsr	r14,r12,16
	exth_s	r12,r12
	exth_s	r13,r13
	lsr_s	r1,r1,16
	mpy_s	r2,r2,r1
	add_s	r2,r2,r12   ;b,b,h
	asl	r0,r2,16
	lsr_s	r2,r2,16
	mpy_s	r3,r3,r1
	add_s	r1,r14,r3   ;a,b,c/u3
	add_s	r0,r0,r13   ;b,b,h
	add_s	r1,r1,r2   ;b,b,h
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r16,r0	;4
	mov_s	r13,r1	;4
	mov_s	r15,r2	;4
	mov_s	r14,r3	;4
	bl.d	@__muldsi3;1
	mov_s	r1,r2	;4
	mpy_s	r13,r13,r15
	mpy	r14,r14,r16
	add_s	r13,r13,r14   ;b,b,h
	add_s	r1,r1,r13   ;b,b,h
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	mov_s	r3,r1	;4
	mov_s	r1,0	;3
	sub.f	r0,r1,r0
	j_s.d	[blink]
	sbc	r1,r1,r3
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	xor_s	r0,r0,r1
	lsr	r3,r0,16
	xor_s	r3,r3,r0
	lsr	r2,r3,8
	xor_s	r2,r2,r3
	lsr	r0,r2,4
	xor_s	r0,r0,r2
	bmsk_s	r0,r0,3
	asr	r0,27030,r0
	j_s.d	[blink]
	bmsk_s	r0,r0,0
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	lsr	r2,r0,16
	xor_s	r0,r0,r2
	lsr	r2,r0,8
	xor_s	r2,r2,r0
	lsr	r0,r2,4
	xor_s	r0,r0,r2
	bmsk_s	r0,r0,3
	asr	r0,27030,r0
	j_s.d	[blink]
	bmsk_s	r0,r0,0
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr.f	r13,r1
	rrc	r12,r0
	and	r12,r12,1431655765
	and	r13,r13,1431655765
	sub.f	r12,r0,r12
	sbc	r3,r1,r13
	lsr	r15,r12,2
	lsr	r14,r3,2
	and	r2,r15,858993459
	and	r13,r14,858993459
	and	r14,r12,858993459
	and	r15,r3,858993459
	add.f	r12,r2,r14
	adc	r13,r13,r15
	asl	r14,r13,28
	lsr	r2,r12,4
	or_s	r2,r2,r14
	lsr	r3,r13,4
	add.f	r2,r2,r12
	adc	r3,r3,r13
	and	r2,r2,252645135
	and	r3,r3,252645135
	add_s	r2,r2,r3   ;b,b,h
	lsr	r3,r2,16
	add_s	r2,r2,r3   ;b,b,h
	lsr	r0,r2,8
	add_s	r0,r0,r2   ;b,b,h
	bmsk_s	r0,r0,6
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	lsr_s	r2,r0
	and	r2,r2,1431655765
	sub_s	r0,r0,r2
	lsr	r3,r0,2
	and	r3,r3,858993459
	and	r0,r0,858993459
	add_s	r3,r3,r0   ;b,b,h
	lsr	r2,r3,4
	add_s	r2,r2,r3   ;b,b,h
	and	r2,r2,252645135
	lsr	r3,r2,16
	add_s	r2,r2,r3   ;b,b,h
	lsr	r0,r2,8
	add_s	r0,r0,r2   ;b,b,h
	j_s.d	[blink]
	bmsk_s	r0,r0,5
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	push_s	blink
	st.a	r18,[sp,-4]	;26
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r14,r0,0
	mov_s	r18,r2	;4
	mov_s	r13,r2	;4
	mov_s	r17,1072693248	;13
	b.d	.L986
	mov_s	r16,0	;4
	.align 4
.L984:
	div	r13,r13,2
	.align 4
.L990:
	breq_s	r13,0,.L985
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L986:
	bbit0	r13,0,@.L984
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L990
	.align 4
.L985:
	brlt	r18,0,.L989
	.align 2
.L983:
	vadd2	r0,r16,0
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L989:
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	b_s	.L983
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0
	mov_s	r16,r1	;4
	mov_s	r15,0x3f800000 ; 1.0e+0
	b.d	.L994
	mov_s	r14,r1	;4
	.align 4
.L992:
	div	r14,r14,2
	breq_s	r14,0,.L993
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L994:
	bbit0	r14,0,@.L992
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L992
	mov_s	r15,r0
	.align 4
.L993:
	brlt	r16,0,.L997
	.align 2
.L991:
	mov_s	r0,r15
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.align 4
.L997:
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	b.d	.L991
	mov_s	r15,r0
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	brhi	r3,r1,.L1000
	brlo	r3,r1,.L1001
	brlo	r0,r2,.L1002
	cmp_s	r0,r2
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.hi	r0,2
	.align 4
.L1000:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1001:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1002:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	push_s	blink
	bl	@__ucmpdi2;1
	add_s	r0,r0,-1   ;h,h,s3
	pop_s	blink
	j_s	[blink]
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.bss
	.align 4
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.global	__divsf3
	.global	__divdf3
	.global	__fixsfsi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__gedf2
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__mulsf3
	.global	__nesf2
	.global	__addsf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__ltsf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
