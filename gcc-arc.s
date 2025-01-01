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
	cmp_s	r0,r1
	bls_s	.L2
	tst_s	r2,r2
	add_s	r12,r1,r2   ;a,b,c/u3
	jeq.d	[blink]
	add_s	r3,r0,r2   ;a,b,c/u3
	mov_s	r2,r3	;4
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L19	; lp_count:@.L4->@.L19
	.align 2
.L4:
	ldb.a	r3,[r12,-1]
	stb.a	r3,[r2,-1]
	.align 2
.L19:
	; ZOL_END, begins @.L4
	j_s	[blink]
	.align 4
.L2:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L18	; lp_count:@.L5->@.L18
	.align 2
.L5:
	ldb.ab	r12,[r1,1]
	stb.a	r12,[r3,1]
	.align 2
.L18:
	; ZOL_END, begins @.L5
	j_s	[blink]
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	breq_s	r3,0,.L35
	push_s	r13
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r3	;5
	lp	@.L39	; lp_count:@.L22->@.L39
	.align 2
.L22:
	ldb.a	r12,[r1,1]
	mov_s	r13,r0	;4
	breq.d	r12,r2,.L38
	stb.ab	r12,[r0,1]
	nop_s
	.align 2
.L39:
	; ZOL_END, begins @.L22
	b.d	.L20
	mov_s	r0,0	;3
	.align 4
.L38:
	add_s	r0,r13,1   ;R0/R1,b,u6
.L20:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L35:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	breq_s	r2,0,.L47
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov	lp_count,r2	;5
	lp	@.L51	; lp_count:@.L42->@.L51
	.align 2
.L42:
	mov_s	r0,r3	;4
	ldb.ab	r12,[r3,1]
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L51:
	; ZOL_END, begins @.L42
	.align 2
.L47:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L60
	.align 2
.L66:
	mov	lp_count,r2	;5
	lp	@.L65	; lp_count:@.L54->@.L65
	.align 2
.L54:
	ldb_s	r12,[r1]
	add_s	r0,r0,1   ;b,b,h
	ldb	r3,[r0,-1]
	brne.d	r3,r12,.L64
	add_s	r1,r1,1   ;b,b,h
	nop_s
	.align 2
.L65:
	; ZOL_END, begins @.L54
	.align 2
.L60:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L64:
	j_s.d	[blink]
	sub_s	r0,r3,r12
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	push_s	blink
	push_s	r13
	mov_s	r13,r0	;4
	tst_s	r2,r2
	jlne	@memcpy
	mov_s	r0,r13	;4
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	add_s	r2,r2,-1   ;h,h,s3
	extb_s	r1,r1
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L74
	sub	r12,r0,1 ;a,b,u6
	.align 4
.L76:
	ldb_s	r3,[r0]
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L74:
	brne.d	r2,r12,.L76
	mov_s	r0,r2	;4
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	push_s	blink
	push_s	r13
	tst_s	r2,r2
	mov_s	r13,r0	;4
	bmsk.ne	r1,r1,7
	jlne	@memset
	mov_s	r0,r13	;4
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
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
.L86:
	ldb.a	r3,[r1,1]
	mov_s	r0,r2	;4
	tst_s	r3,r3
	jeq.d	[blink]
	stb.ab	r3,[r2,1]
	ldb.a	r3,[r1,1]
	mov_s	r0,r2	;4
	brne.d	r3,0,.L86
	stb.ab	r3,[r2,1]
	j_s	[blink]
	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	ldb_s	r2,[r0]
	tst_s	r2,r2
	jeq_s	[blink]
	extb_s	r1,r1
	cmp_s	r2,r1
	jeq_s	[blink]
	.align 2
.L101:
	ldb.a	r2,[r0,1]
	tst_s	r2,r2
	jeq_s	[blink]
	brne	r2,r1,.L101
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L105:
	ldb_s	r3,[r2]
	mov_s	r0,r2	;4
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	brne_s	r3,0,.L105
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	breq	r2,r3,.L111
	j_s.d	[blink]
	sub_s	r0,r2,r3
	.align 4
.L112:
	ldb.a	r2,[r0,1]
	ldb.a	r3,[r1,1]
	brne	r2,r3,.L110
	.align 2
.L111:
	brne_s	r2,0,.L112
	.align 2
.L110:
	sub_s	r0,r2,r3
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	breq_s	r2,0,.L119
	mov_s	r2,r0	;4
	.align 2
.L118:
	ldb.a	r3,[r2,1]
	brne_s	r3,0,.L118
	j_s.d	[blink]
	sub_s	r0,r2,r0
	.align 4
.L119:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L130
	ldb_s	r3,[r0]
	breq_s	r3,0,.L137
	push_s	r13
	add_s	r2,r2,-1   ;h,h,s3
	b.d	.L126
	add_s	r12,r0,r2   ;a,b,c/u3
	.align 4
.L139:
	breq	r0,r12,.L125
	brne	r2,r3,.L125
	ldb.a	r3,[r0,1]
	breq_s	r3,0,.L138
	.align 2
.L126:
	mov_s	r13,r1	;4
	ldb.ab	r2,[r1,1]
	brne_s	r2,0,.L139
	.align 2
.L125:
	sub_s	r0,r3,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L130:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L138:
	ldb_s	r2,[r13,1]
	sub_s	r0,r3,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L137:
	ldb_s	r2,[r1]
	j_s.d	[blink]
	sub_s	r0,r3,r2
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
	lp	@.L146	; lp_count:@.L142->@.L146
	.align 2
.L142:
	add_s	r1,r1,2   ;b,b,h
	ldb_s	r12,[r0,1]
	ldb.ab	r3,[r0,2]
	stb	r12,[r1,-2]
	stb	r3,[r1,-1]
	.align 2
.L146:
	; ZOL_END, begins @.L142
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
	brls	r0,31,.L177
	add	r2,r0,-127     ;a,b,limm
	brhi	r2,32,.L179
	.align 2
.L177:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L179:
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L177
	add_s	r0,r0,-65529   ;b,b,limm
	j_s.d	[blink]
	setlo	r0,r0,3
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
	brls	r0,254,.L190
	brls	r0,8231,.L187
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L187
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L187
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L188
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L187:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L190:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L188:
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
	brne_s	r0,0,.L200
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L201
	vadd2	r0,r14,0
	vadd2	r2,r16,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L197
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L197:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L200:
	vadd2	r0,r14,0
	b_s	.L197
	.align 4
.L201:
	vadd2	r0,r16,0
	b_s	.L197
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
	bne.d	.L206
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L206
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L206:
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
	brne	r0,0,.L221
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L222
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L225
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L215:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L225:
	vadd2	r0,r16,0
	tst_s	r2,r2
	mov.ne	r0,r14
	mov.ne	r1,r15
	b_s	.L215
	.align 4
.L221:
	vadd2	r0,r14,0
	b_s	.L215
	.align 4
.L222:
	vadd2	r0,r16,0
	b_s	.L215
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r13,r1
	mov_s	r14,r0
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L226
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L226
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	mov_s	r3,r13	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L228
	tst_s	r2,r2
	mov.ne	r14,r13
	mov_s	r0,r14
.L226:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L228:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.p	r13,r14
	mov_s	r0,r13
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
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
	brne	r0,0,.L242
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L243
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L246
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L236:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L246:
	vadd2	r0,r16,0
	tst_s	r2,r2
	mov.ne	r0,r14
	mov.ne	r1,r15
	b_s	.L236
	.align 4
.L242:
	vadd2	r0,r14,0
	b_s	.L236
	.align 4
.L243:
	vadd2	r0,r16,0
	b_s	.L236
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
	brne	r0,0,.L253
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L254
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L257
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L247:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L257:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L247
	.align 4
.L253:
	vadd2	r0,r14,0
	b_s	.L247
	.align 4
.L254:
	vadd2	r0,r16,0
	b_s	.L247
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r13,r1
	mov_s	r14,r0
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L258
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L258
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	mov_s	r3,r13	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L260
	tst_s	r2,r2
	mov.ne	r13,r14
	mov_s	r0,r13
.L258:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L260:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.p	r14,r13
	mov_s	r0,r14
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
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
	brne	r0,0,.L274
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L275
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L278
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L268:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L278:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L268
	.align 4
.L274:
	vadd2	r0,r14,0
	b_s	.L268
	.align 4
.L275:
	vadd2	r0,r16,0
	b_s	.L268
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L280
	.align 2
.L281:
	and	r3,r0,63
	lsr.f	r0,r0,6
	ldb	r3,[r3,@digits]
	bne.d	.L281
	stb.ab	r3,[r2,1]
	.align 2
.L280:
	mov_s	r0,@s.0	;13
	stb	0,[r2]
	j_s	[blink]
	.size	l64a, .-l64a
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
	push_s	r13
	ld	r2,[@seed]	;23
	ld	r12,[@seed+4]	;23
	mpy	r13,r2,1481765933
	mpydu	r0,r2,1284865837
	mpy	r12,r12,1284865837
	add_s	r12,r12,r13   ;b,b,h
	add.f	r2,r0,1
	add_s	r1,r1,r12   ;b,b,h
	st	r2,[@seed]	;26
	adc	r0,r1,0
	st	r0,[@seed+4]	;26
	lsr_s	r0,r0
	j_s.d	[blink]
	pop_s	r13
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	breq_s	r1,0,.L296
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
.L296:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L298
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L298:
	ld_s	r3,[r0,4]		;15
	tst_s	r3,r3
	jeq_s	[blink]
	j_s.d	[blink]
	st_s	r2,[r3]		;16
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
	ld	r16,[r2]	;23
	mov_s	r20,r2	;4
	mov_s	r17,r0	;4
	mov_s	r21,r1	;4
	breq.d	r16,0,.L308
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	b.d	.L310
	mov_s	r14,0	;3
	.align 4
.L323:
	breq.d	r16,r14,.L308
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L310:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl.d	[r18]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L323
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r19	;4
	.align 2
.L324:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L308:
	add	r2,r16,1 ;a,b,c/u6
	mpy	r16,r16,r15
	tst_s	r15,r15
	add	r19,r21,r16 ;a,b,c/u6
	st	r2,[r20]	;26
	mov_s.ne	r1,r17
	mov_s.ne	r2,r15
	mov_s.ne	r0,r19
	jlne	@memmove
	b.d	.L324
	mov_s	r0,r19	;4
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
	breq	r18,0,.L326
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	b.d	.L328
	mov_s	r14,0	;3
	.align 4
.L337:
	breq.d	r18,r14,.L326
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L328:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl.d	[r16]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L337
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L325:
	mov_s	r0,r19	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L326:
	b.d	.L325
	mov_s	r19,0	;4
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
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L341:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L341
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L341
	breq	r2,43,.L343
	breq	r2,45,.L344
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L352
	mov_s	r15,0	;3
	.align 2
.L346:
	mov_s	r0,0	;3
	.align 2
.L349:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L349
	brne_s	r15,0,.L340
	sub_s	r0,r14,r13
.L340:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L344:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	add_s	r12,r12,1   ;b,b,h
	bls.d	.L346
	mov.ls	r15,1
	.align 2
.L352:
	b.d	.L340
	mov_s	r0,0	;3
	.align 4
.L343:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L352
	add_s	r12,r12,1   ;b,b,h
	b.d	.L346
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	b	@atoi
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L365:
	mov_s	r14,r0	;4
	ldb.ab	r3,[r0,1]
	breq	r3,32,.L365
	sub	r2,r3,9 ;a,b,u6
	brls	r2,4,.L365
	breq	r3,43,.L367
	brne	r3,45,.L385
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r14,r14,1   ;b,b,h
	bhi.d	.L376
	mov.ls	r5,1
	.align 2
.L370:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L373:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	asr	r15,r2,31
	ldb.a	r3,[r14,1]
	mov_s	r4,r2	;4
	sub3	r2,r3,6 ;a,b,u6
	sbc	r1,r13,r15
	brls	r2,9,.L373
	brne	r5,0,.L364
	sub.f	r0,r4,r12
	sbc	r1,r15,r13
.L364:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L385:
	sub3	r2,r3,6 ;a,b,u6
	brhi	r2,9,.L376
	.align 2
.L377:
	b.d	.L370
	mov_s	r5,0	;4
	.align 4
.L367:
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	brls.d	r2,9,.L377
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L376:
	mov_s	r0,0	;3
	b.d	.L364
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
	mov.f	r13,r2
	beq_s	.L387
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	b.d	.L390
	mov_s	r18,r4	;4
	.align 4
.L397:
	brle	r0,0,.L386
	sub_s	r13,r13,r15
	breq.d	r13,0,.L387
	add	r17,r14,r16 ;a,b,c/u6
	.align 2
.L390:
	lsr_s	r15,r13
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r19	;4
	jl.d	[r18]
	add_s	r13,r13,-1   ;h,h,s3
	brge	r0,0,.L397
	mov_s	r13,r15	;4
	brne_s	r13,0,.L390
	.align 2
.L387:
	mov_s	r14,0	;3
	.align 2
.L386:
	mov_s	r0,r14	;4
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
	st.a	r20,[sp,-4]	;26
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov.f	r13,r2
	beq_s	.L399
	mov_s	r20,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	mov_s	r19,r4	;4
	b.d	.L402
	mov_s	r18,r5	;4
	.align 4
.L412:
	cmp_s	r0,0
	ble.d	.L401
	mov.le	r13,r15
	add	r17,r14,r16 ;a,b,c/u6
	asr_s	r13,r13,1
	.align 2
.L401:
	breq_s	r13,0,.L399
	.align 2
.L402:
	asr_s	r15,r13,1
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r2,r18	;4
	mov_s	r1,r14	;4
	mov_s	r0,r20	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	brne_s	r0,0,.L412
	.align 2
.L398:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.align 4
.L399:
	b.d	.L398
	mov_s	r14,0	;3
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
	sub.f	r0,r0,r2
	xor_s	r1,r1,r2
	j_s.d	[blink]
	sbc	r1,r1,r2
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r17,r4	;4
	mov_s	r15,r2	;4
	mov_s	r14,r1	;4
	mov_s	r16,r3	;4
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__divdi3;1
	std	r0,[r13]
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__moddi3;1
	std	r0,[r13,8]
	mov_s	r0,r13	;4
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
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
	sub.f	r0,r0,r2
	xor_s	r1,r1,r2
	j_s.d	[blink]
	sbc	r1,r1,r2
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r17,r4	;4
	mov_s	r15,r2	;4
	mov_s	r14,r1	;4
	mov_s	r16,r3	;4
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__divdi3;1
	std	r0,[r13]
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__moddi3;1
	std	r0,[r13,8]
	mov_s	r0,r13	;4
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L431
	.align 2
.L428:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L428
	.align 2
.L431:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L437
	b_s	.L436
	.align 4
.L445:
	breq_s	r3,0,.L436
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L436
	.align 2
.L437:
	brne_s	r2,0,.L445
	.align 2
.L436:
	brlt	r2,r3,.L440
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L440:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L447:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L447
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L455
	mov_s	r2,r0	;4
	.align 2
.L454:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L454
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L455:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L464
	push_s	r14
	push_s	r13
	mov	lp_count,r2	;5
	lp	@.L473	; lp_count:@.L460->@.L473
	.align 2
.L460:
	mov_s	r12,r1	;4
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld_s	r13,[r12]		;15
	brne.d	r3,r13,.L461
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L461
	nop_s
	.align 2
.L473:
	; ZOL_END, begins @.L460
	mov_s	r0,0	;3
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L461:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L464:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L481
	mov_s.ne	r3,r0
	.align 2
.L486:
	mov	lp_count,r2	;5
	lp	@.L485	; lp_count:@.L476->@.L485
	.align 2
.L476:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L485:
	; ZOL_END, begins @.L476
	.align 2
.L481:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L496
	.align 2
.L503:
	mov	lp_count,r2	;5
	lp	@.L502	; lp_count:@.L489->@.L502
	.align 2
.L489:
	ld_s	r12,[r1]		;15
	add_s	r0,r0,4   ;b,b,h
	ld	r3,[r0,-4]	;23
	cmp_s	r3,r12
	bne.d	.L500
	add_s	r1,r1,4   ;b,b,h
	nop_s
	.align 2
.L502:
	; ZOL_END, begins @.L489
	.align 2
.L496:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L500:
	blt_s	.L501
	j_s.d	[blink]
	setgt	r0,r3,r12
	.align 4
.L501:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	push_s	blink
	push_s	r13
	tst_s	r2,r2
	mov_s	r13,r0	;4
	asl.ne	r2,r2,2
	jlne	@memcpy
	mov_s	r0,r13	;4
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp_s	r0,r1
	jeq_s	[blink]
	asl_s	r3,r2,2
	sub_s	r12,r0,r1
	brhs	r12,r3,.L525
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	add_s	r1,r1,r3   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L527	; lp_count:@.L514->@.L527
	.align 2
.L514:
	ld.a	r12,[r1,-4]	;23
	st.a	r12,[r3,-4]	;26
	.align 2
.L527:
	; ZOL_END, begins @.L514
	j_s	[blink]
	.align 4
.L525:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r3,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L526	; lp_count:@.L515->@.L526
	.align 2
.L515:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L526:
	; ZOL_END, begins @.L515
	j_s	[blink]
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r0	;4
	mov	lp_count,r2	;5
	lp	@.L537	; lp_count:@.L530->@.L537
	.align 2
.L530:
	st.ab	r1,[r3,4]	;26
	.align 2
.L537:
	; ZOL_END, begins @.L530
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L539
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L555	; lp_count:@.L541->@.L555
	.align 2
.L541:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L555:
	; ZOL_END, begins @.L541
	j_s	[blink]
	.align 4
.L539:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L554	; lp_count:@.L542->@.L554
	.align 2
.L542:
	ldb.ab	r3,[r0,1]
	stb.a	r3,[r1,1]
	.align 2
.L554:
	; ZOL_END, begins @.L542
	j_s	[blink]
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	std.a	r14,[sp,-8]
	push_s	r13
	neg_s	r15,r2
	and	r13,r15,63
	not_s	r3,r2
	not	r4,r13
	lsr_s	r14,r0
	asl_s	r12,r1,1
	btst_s	r2,5
	lsr_s	r14,r14,r3
	asl	r3,r1,r2
	asl	r2,r0,r2
	or_s	r3,r3,r14
	asl	r12,r12,r4
	lsr_s	r1,r1,r13
	lsr_s	r0,r0,r13
	mov_s	r14,r2	;4
	mov.eq	r14,r3
	sub.ne	r2,r2,r2
	or_s	r0,r0,r12
	btst_s	r15,5
	mov_s	r12,r1	;4
	mov.eq	r12,r0
	mov_s	r0,r12	;4
	sub.ne	r1,r1,r1
	or_s	r0,r0,r2
	or_s	r1,r1,r14
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
	neg_s	r15,r2
	and	r13,r15,63
	not_s	r3,r2
	not	r4,r13
	asl_s	r14,r1,1
	lsr_s	r12,r0
	btst_s	r2,5
	asl_s	r14,r14,r3
	lsr	r3,r0,r2
	lsr	r2,r1,r2
	or_s	r3,r3,r14
	lsr	r12,r12,r4
	asl_s	r0,r0,r13
	asl_s	r1,r1,r13
	mov_s	r14,r2	;4
	mov.eq	r14,r3
	sub.ne	r2,r2,r2
	or_s	r1,r1,r12
	btst_s	r15,5
	mov_s	r12,r0	;4
	mov.eq	r12,r1
	mov_s	r1,r12	;4
	sub.ne	r0,r0,r0
	or_s	r0,r0,r14
	or_s	r1,r1,r2
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
	bmsk_s	r1,r1,3
	neg_s	r2,r1
	exth_s	r0,r0
	bmsk_s	r2,r2,3
	asl	r1,r0,r1
	lsr_s	r0,r0,r2
	or_s	r0,r0,r1
	j_s.d	[blink]
	exth_s	r0,r0
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	bmsk_s	r1,r1,3
	neg_s	r2,r1
	exth_s	r0,r0
	bmsk_s	r2,r2,3
	lsr	r1,r0,r1
	asl_s	r0,r0,r2
	or_s	r0,r0,r1
	j_s.d	[blink]
	exth_s	r0,r0
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	bmsk_s	r1,r1,2
	neg_s	r2,r1
	extb_s	r0,r0
	bmsk_s	r2,r2,2
	asl	r1,r0,r1
	lsr_s	r0,r0,r2
	or_s	r0,r0,r1
	j_s.d	[blink]
	extb_s	r0,r0
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	bmsk_s	r1,r1,2
	neg_s	r2,r1
	extb_s	r0,r0
	bmsk_s	r2,r2,2
	lsr	r1,r0,r1
	asl_s	r0,r0,r2
	or_s	r0,r0,r1
	j_s.d	[blink]
	extb_s	r0,r0
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	exth_s	r2,r0
	xbfu	r0,r0,232
	asl_s	r2,r2,8
	or_s	r0,r0,r2
	j_s.d	[blink]
	exth_s	r0,r0
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	j_s.d	[blink]
	swape	r0,r0
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	mov_s	r2,r1	;4
	swape	r1,r0
	j_s.d	[blink]
	swape	r0,r2
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	mov_s	r2,0	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L590	; lp_count:@.L585->@.L590
	.align 2
.L585:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L589
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L590:
	; ZOL_END, begins @.L585
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L589:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L594
	bbit1.d	r2,0,@.L598
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L593:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L593
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L598:
	j_s	[blink]
	.align 4
.L594:
	mov_s	r0,0	;3
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
	bn.d	.L599
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L599:
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
	bn.d	.L604
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L604:
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
	bn.d	.L609
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L609:
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
	mov_s	r13,r1	;4
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	brne_s	r0,0,.L617
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	bl.d	@__nesf2;1
	mov_s	r1,r15
	breq_s	r0,0,.L617
	tst_s	r13,r13
	mov_s	r14,0x3f000000 ; 5.0e-1
	mov.p	r14,0x40000000 ; 2.0e+0
	bbit0	r13,0,@.L620
	.align 2
.L621:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r14
	mov_s	r15,r0
	.align 2
.L620:
	div	r13,r13,2
	breq_s	r13,0,.L617
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	bbit1.d	r13,0,@.L621
	mov_s	r14,r0
	div	r13,r13,2
	.align 2
.L630:
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	bbit1.d	r13,0,@.L621
	mov_s	r14,r0
	b.d	.L630
	div	r13,r13,2
	.align 4
.L617:
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
	brne	r0,0,.L632
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L632
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L635
	.align 2
.L636:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L635:
	div	r13,r13,2
	breq_s	r13,0,.L632
	.align 2
.L637:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L636
	b.d	.L637
	div	r13,r13,2
	.align 4
.L632:
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
	brne	r0,0,.L645
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L645
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L648
	.align 2
.L649:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L648:
	div	r13,r13,2
	breq_s	r13,0,.L645
	.align 2
.L650:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L649
	b.d	.L650
	div	r13,r13,2
	.align 4
.L645:
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
	lp	@.L669	; lp_count:@.L659->@.L669
	.align 2
.L659:
	ldb.ab	r3,[r12,1]
	ldb.ab	r13,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L669:
	; ZOL_END, begins @.L659
	j_s.d	[blink]
	pop_s	r13
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	tst_s	r3,r3
	beq.d	.L671
	mov_s	r3,r0	;4
	.align 2
.L672:
	ldb.a	r12,[r3,1]
	brne_s	r12,0,.L672
	.align 2
.L671:
	breq_s	r2,0,.L673
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L686	; lp_count:@.L674->@.L686
	.align 2
.L674:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r3,1]
	nop_s
	.align 2
.L686:
	; ZOL_END, begins @.L674
	.align 2
.L673:
	stb	0,[r3]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L691
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L696	; lp_count:@.L689->@.L696
	.align 2
.L689:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L696:
	; ZOL_END, begins @.L689
	j_s	[blink]
	.align 4
.L691:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L704
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L698:
	b.d	.L701
	mov_s	r3,r13	;4
	.align 4
.L700:
	breq	r2,r12,.L699
	.align 2
.L701:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L700
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L698
	mov_s	r0,0	;3
.L699:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L704:
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
.L711:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r1,r3
	mov.ne	r12,r0
	brne.d	r3,0,.L711
	mov_s	r0,r12	;4
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	std.a	r14,[sp,-8]
	push_s	r13
	ldb_s	r14,[r1]
	breq.d	r14,0,.L728
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L718:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L718
	sub.f	r2,r2,r1
	beq_s	.L728
	b.d	.L726
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L736:
	breq_s	r2,0,.L735
	.align 2
.L726:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r2,r14,.L736
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L720
	mov_s	r12,r0	;4
	.align 4
.L738:
	breq	r12,r15,.L722
	brne	r3,r2,.L723
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L737
	ldb.a	r3,[r13,1]
	.align 2
.L720:
	brne_s	r3,0,.L738
	.align 2
.L723:
	b.d	.L726
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L737:
	ldb_s	r3,[r13,1]
	.align 2
.L722:
	brne	r3,r2,.L723
.L716:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L735:
	b.d	.L716
	mov_s	r0,0	;3
	.align 4
.L728:
	b.d	.L716
	mov_s	r0,r3	;4
	.size	strstr, .-strstr
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	vadd2	r16,r2,0
	vadd2	r14,r0,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L750
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L743
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L742
	.align 2
.L743:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L750:
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L743
	.align 2
.L742:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L743
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	std.a	r14,[sp,-8]
	push_s	r13
	breq.d	r3,0,.L751
	mov_s	r13,r0	;4
	brlo	r1,r3,.L759
	sub_s	r1,r1,r3
	add.f	r6,r13,r1
	blo	.L759
	ldb	r7,[r2]
	b.d	.L756
	add	r5,r13,r3 ;a,b,c/u6
	.align 4
.L753:
	brlo.d	r6,r13,.L759
	add_s	r5,r5,1   ;h,h,s3
	.align 2
.L756:
	ldb_s	r12,[r13]
	mov_s	r0,r13	;4
	brne.d	r12,r7,.L753
	add_s	r13,r13,1   ;b,b,h
	breq	r3,1,.L751
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r12,r5,r13
	mov	lp_count,r12	;5
	lp	@.L769	; lp_count:@.L754->@.L769
	.align 2
.L754:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L753
	nop_s
	.align 2
.L769:
	; ZOL_END, begins @.L754
.L751:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L759:
	b.d	.L751
	mov_s	r0,0	;3
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r0	;4
	mov.f	r13,r2
	jlne	@memmove
	add_s	r0,r14,r13   ;a,b,c/u3
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
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
	mov_s	r3,0	;3
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn	.L799
	vadd2	r0,r14,0
	mov_s	r3,1072693248	;13
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn.d	.L800
	mov.p	r21,0
	.align 2
.L779:
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L785:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__gedf2;1
	brge	r0,0,.L785
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	breq.d	r21,0,.L801
	bxor	r1,r15,31
.L776:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L801:
	vadd2	r0,r14,0
	b_s	.L776
	.align 4
.L800:
	vadd2	r0,r14,0
	mov_s	r3,1071644672	;13
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L782
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	brne	r0,0,.L791
	.align 2
.L782:
	vadd2	r0,r14,0
	st	0,[r20]	;37
	b_s	.L776
	.align 4
.L799:
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,-1074790400	;13
	bl.d	@__ledf2;1
	mov_s	r16,r14	;4
	brgt.d	r0,0,.L802
	bxor	r17,r15,31
	vadd2	r14,r16,0
	b.d	.L779
	mov_s	r21,1	;4
	.align 4
.L802:
	vadd2	r0,r14,0
	mov_s	r3,-1075838976	;13
	bl.d	@__gtdf2;1
	mov_s	r2,0	;3
	brle	r0,0,.L782
	mov_s	r21,1	;4
	.align 2
.L780:
	vadd2	r14,r16,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L787:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__ltdf2;1
	brlt	r0,0,.L787
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	tst	r21,r21
	bne.d	.L776
	bxor	r1,r15,31
	b_s	.L801
	.align 4
.L791:
	vadd2	r16,r14,0
	b.d	.L780
	mov_s	r21,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	or.f	0,r0,r1
	beq.d	.L807
	mov_s	r14,r1	;4
	mov_s	r13,r0	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L806:
	mov_s	r2,r13	;4
	bmsk_s	r2,r2,0
	mpy	r4,r15,r2
	mpydu	r2,r2,r12
	add.f	r0,r0,r2
	add_s	r3,r3,r4   ;b,b,h
	adc	r1,r1,r3
	add.f	r12,r12,r12
	adc	r15,r15,r15
	lsr.f	r14,r14
	rrc	r13,r13
	or.f	0,r13,r14
	bne_s	.L806
.L803:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L807:
	mov_s	r0,0	;3
	b.d	.L803
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp_s	r1,r0
	mov.hs	r3,1
	bhs.d	.L828
	mov.hs	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L834	; lp_count:@.L811->@.L834
	.align 2
.L811:
	brlt	r1,0,.L812
	asl_s	r1,r1,1
	brls.d	r0,r1,.L833
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L834:
	; ZOL_END, begins @.L811
	.align 2
.L814:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L833:
	tst_s	r3,r3
	beq.d	.L814
	mov.eq	r12,0
	.align 2
.L812:
	mov_s	r12,0	;3
	.align 2
.L817:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L817
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L828:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L828
	lsr_s	r1,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L837
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L837:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L848
	xor	r12,r1,r3
	.align 2
.L845:
	fls	r0,r2
	brne.d	r12,0,.L849
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L849:
	fls	r12,r12
	rsub	r0,r12,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L848:
	brne	r1,r0,.L845
	j_s.d	[blink]
	mov_s	r0,63	;3
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov.f	r2,r0
	jeq.d	[blink]
	mov_s	r0,0	;3
	.align 2
.L852:
	and	r3,r2,1
	lsr.f	r2,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	jeq.d	[blink]
	asl_s	r1,r1,1
	and	r3,r2,1
	lsr.f	r2,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	bne.d	.L852
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L859
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L884
	.align 2
.L859:
	breq	r3,0,.L877
	std.a	r14,[sp,-8]
	push_s	r13
	add3	r3,-8,r3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L888	; lp_count:@.L863->@.L888
	.align 2
.L863:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L888:
	; ZOL_END, begins @.L863
	brls	r2,r4,.L858
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	add_s	r0,r0,r4   ;b,b,h
	sub_s	r2,r2,r1
	mov	lp_count,r2	;5
	lp	@.L887	; lp_count:@.L864->@.L887
	.align 2
.L864:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r0,1]
	.align 2
.L887:
	; ZOL_END, begins @.L864
	.align 2
.L858:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L884:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L886	; lp_count:@.L865->@.L886
	.align 2
.L865:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L886:
	; ZOL_END, begins @.L865
	j_s	[blink]
	.align 4
.L877:
	cmp_s	r2,r4
	jls	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	add_s	r0,r0,r4   ;b,b,h
	sub_s	r2,r2,r1
	mov	lp_count,r2	;5
	lp	@.L885	; lp_count:@.L879->@.L885
	.align 2
.L879:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r0,1]
	.align 2
.L885:
	; ZOL_END, begins @.L879
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brlo.d	r0,r1,.L890
	lsr_s	r3,r2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L904
	.align 2
.L890:
	breq_s	r3,0,.L893
	add1	r3,-2,r3
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L906	; lp_count:@.L894->@.L906
	.align 2
.L894:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L906:
	; ZOL_END, begins @.L894
	.align 2
.L893:
	bbit0	r2,0,@.L889
	mov_s	r3,r2	;4
	add_s	r2,r1,r2   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	ldb	r2,[r2,-1]
	stb	r2,[r3,-1]
	.align 2
.L889:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L904:
	breq_s	r2,0,.L889
	add_s	r3,r0,r2   ;a,b,c/u3
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L905	; lp_count:@.L895->@.L905
	.align 2
.L895:
	ldb.a	r13,[r12,-1]
	stb.a	r13,[r3,-1]
	.align 2
.L905:
	; ZOL_END, begins @.L895
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	brlo.d	r0,r1,.L908
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L925
	.align 2
.L908:
	breq_s	r3,0,.L911
	add2	r3,-4,r3
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L929	; lp_count:@.L912->@.L929
	.align 2
.L912:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L929:
	; ZOL_END, begins @.L912
	.align 2
.L911:
	brls	r2,r15,.L907
	add_s	r15,r15,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	add_s	r0,r0,r15   ;b,b,h
	sub_s	r2,r2,r1
	mov	lp_count,r2	;5
	lp	@.L928	; lp_count:@.L913->@.L928
	.align 2
.L913:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r0,1]
	.align 2
.L928:
	; ZOL_END, begins @.L913
	.align 2
.L907:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L925:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r0,r0,r2
	beq.d	.L907
	rsub.ne	r1,r1,r3
	.align 2
.L927:
	mov	lp_count,r1	;5
	lp	@.L926	; lp_count:@.L914->@.L926
	.align 2
.L914:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L926:
	; ZOL_END, begins @.L914
	b_s	.L907
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
	mov_s	r2,16	;3
	exth_s	r12,r0
	mov_s	r0,0	;3
	mov	lp_count,r2	;5
	lp	@.L948	; lp_count:@.L944->@.L948
	.align 2
.L944:
	rsub	r3,r0,15
	bbit1	r12,r3,@.L949
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L948:
	; ZOL_END, begins @.L944
	.align 2
.L949:
	j_s	[blink]
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov_s	r2,16	;3
	exth_s	r3,r0
	mov_s	r0,0	;3
	mov	lp_count,r2	;5
	lp	@.L956	; lp_count:@.L952->@.L956
	.align 2
.L952:
	bbit1	r3,r0,@.L957
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L956:
	; ZOL_END, begins @.L952
	.align 2
.L957:
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
	brge	r0,0,.L965
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L965:
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	push_s	r13
	mov_s	r12,0	;3
	exth_s	r13,r0
	mov_s	r3,16	;3
	mov_s	r0,0	;3
	mov	lp_count,r3	;5
	lp	@.L971	; lp_count:@.L967->@.L971
	.align 2
.L967:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L971:
	; ZOL_END, begins @.L967
	bmsk_s	r0,r0,0
	j_s.d	[blink]
	pop_s	r13
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	push_s	r13
	mov_s	r12,0	;3
	exth_s	r13,r0
	mov_s	r3,16	;3
	mov_s	r0,0	;3
	mov	lp_count,r3	;5
	lp	@.L977	; lp_count:@.L973->@.L977
	.align 2
.L973:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L977:
	; ZOL_END, begins @.L973
	j_s.d	[blink]
	pop_s	r13
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov.f	r2,r0
	jeq.d	[blink]
	mov_s	r0,0	;3
	.align 2
.L980:
	and	r3,r2,1
	lsr.f	r2,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	jeq.d	[blink]
	asl_s	r1,r1,1
	and	r3,r2,1
	lsr.f	r2,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	bne.d	.L980
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov.f	r3,r0
	jeq.d	[blink]
	mov_s	r0,0	;3
	tst_s	r1,r1
	jeq_s	[blink]
	.align 2
.L988:
	and	r2,r1,1
	lsr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	jeq.d	[blink]
	asl_s	r3,r3,1
	and	r2,r1,1
	lsr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	bne.d	.L988
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1020
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1019	; lp_count:@.L996->@.L1019
	.align 2
.L996:
	brlt	r1,0,.L997
	asl_s	r1,r1,1
	brls.d	r0,r1,.L998
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1019:
	; ZOL_END, begins @.L996
	.align 2
.L999:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L998:
	tst_s	r3,r3
	beq.d	.L999
	mov.eq	r12,0
	.align 2
.L997:
	mov_s	r12,0	;3
	.align 2
.L1002:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1002
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1014:
	cmp_s	r0,r1
	.align 4
.L1020:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1014
	lsr_s	r1,r1
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
	bn	.L1021
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L1021:
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
	bn	.L1026
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1026:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	mpyd	r0,r0,r1
	j_s	[blink]
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
	push_s	r13
	tst_s	r1,r1
	mov_s	r3,r0	;4
	neg.n	r1,r1
	bn.d	.L1037
	mov.n	r13,1
	beq.d	.L1035
	mov.eq	r0,0
	mov_s	r13,0	;3
	.align 2
.L1037:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1051	; lp_count:@.L1040->@.L1051
	.align 2
.L1040:
	and	r2,r1,1
	asr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	beq.d	.L1039
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1051:
	; ZOL_END, begins @.L1040
	.align 2
.L1039:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1035:
	j_s.d	[blink]
	pop_s	r13
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push_s	r13
	tst_s	r0,r0
	neg.n	r0,r0
	mov.n	r13,1
	mov.p	r13,0
	tst_s	r1,r1
	neg.n	r1,r1
	bxor.n r13,r13,0
	cmp_s	r0,r1
	mov_s	r12,r0	;4
	mov_s	r2,1	;3
	bls.d	.L1056
	mov.hi	r3,32
	.align 2
.L1075:
	mov	lp_count,r3	;5
	lp	@.L1074	; lp_count:@.L1055->@.L1074
	.align 2
.L1055:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1058
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1074:
	; ZOL_END, begins @.L1055
	.align 2
.L1058:
	tst_s	r2,r2
	beq.d	.L1057
	mov.eq	r0,0
	.align 2
.L1056:
	mov_s	r0,0	;3
	.align 2
.L1061:
	cmp_s	r1,r12
	sub.ls	r12,r12,r1
	or.ls r0,r0,r2
	lsr.f	r2,r2,1
	bne.d	.L1061
	lsr_s	r1,r1
	.align 2
.L1057:
	tst_s	r13,r13
	neg.ne	r0,r0
	j_s.d	[blink]
	pop_s	r13
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push_s	r13
	mov.f	r12,r0
	neg.n	r12,r12
	abs_s	r1,r1
	mov.n	r13,1
	mov.p	r13,0
	cmp_s	r12,r1
	mov_s	r0,r12	;4
	mov_s	r2,1	;3
	bls.d	.L1084
	mov.hi	r3,32
	.align 2
.L1098:
	mov	lp_count,r3	;5
	lp	@.L1097	; lp_count:@.L1078->@.L1097
	.align 2
.L1078:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1081
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1097:
	; ZOL_END, begins @.L1078
	.align 2
.L1081:
	tst_s	r2,r2
	beq.d	.L1080
	mov.eq	r0,r12
	.align 2
.L1084:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	lsr.f	r2,r2,1
	bne.d	.L1084
	lsr_s	r1,r1
	.align 2
.L1080:
	tst_s	r13,r13
	neg.ne	r0,r0
	j_s.d	[blink]
	pop_s	r13
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	push_s	r14
	push_s	r13
	exth_s	r0,r0
	exth_s	r1,r1
	cmp_s	r1,r0
	mov_s	r3,1	;3
	bhs.d	.L1101
	mov.lo	r12,16
	.align 2
.L1118:
	mov	lp_count,r12	;5
	lp	@.L1117	; lp_count:@.L1100->@.L1117
	.align 2
.L1100:
	asl_s	r14,r1,1
	btst_s	r1,15
	bne.d	.L1101
	asl_s	r13,r3,1
	exth_s	r1,r14
	brls.d	r0,r1,.L1116
	exth_s	r3,r13
	nop_s
	.align 2
.L1117:
	; ZOL_END, begins @.L1100
	.align 2
.L1113:
	mov_s	r12,0	;3
	tst_s	r2,r2
	mov.eq	r0,r12
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L1116:
	breq_s	r3,0,.L1113
	.align 2
.L1101:
	mov_s	r12,0	;3
	.align 2
.L1106:
	sub_s	r14,r0,r1
	brlo.d	r0,r1,.L1105
	or	r13,r3,r12
	exth_s	r0,r14
	exth_s	r12,r13
	.align 2
.L1105:
	lsr.f	r3,r3,1
	bne.d	.L1106
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1144
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1143	; lp_count:@.L1120->@.L1143
	.align 2
.L1120:
	brlt	r1,0,.L1121
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1122
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1143:
	; ZOL_END, begins @.L1120
	.align 2
.L1123:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1122:
	tst_s	r3,r3
	beq.d	.L1123
	mov.eq	r12,0
	.align 2
.L1121:
	mov_s	r12,0	;3
	.align 2
.L1126:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1126
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1138:
	cmp_s	r0,r1
	.align 4
.L1144:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1138
	lsr_s	r1,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1146
	asl	r1,r0,r2
	mov_s	r2,0	;3
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.align 4
.L1146:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r3,r2,32
	asl_s	r1,r1,r2
	asl	r2,r0,r2
	lsr_s	r0,r0,r3
	or_s	r1,r1,r0
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0	r2,5,@.L1152
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1152:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r12,r2,32
	asr	r3,r1,r2
	lsr_s	r0,r0,r2
	asl	r2,r1,r12
	or_s	r0,r0,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	mov_s	r2,r1	;4
	swape	r1,r0
	j_s.d	[blink]
	swape	r0,r2
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	j_s.d	[blink]
	swape	r0,r0
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	seths	r3,65535,r0
	asl_s	r3,r3,4
	rsub	r2,r3,16
	lsr	r2,r0,r2
	and	r12,r2,65280
	seteq	r12,r12,0
	add3_s	r3,r3,r12
	sub3	r12,8,r12
	lsr_s	r2,r2,r12
	and	r12,r2,240
	seteq	r12,r12,0
	add2_s	r3,r3,r12
	sub2	r12,4,r12
	lsr_s	r2,r2,r12
	and	r12,r2,12
	seteq	r12,r12,0
	add1_s	r3,r3,r12
	sub1	r12,2,r12
	lsr_s	r2,r2,r12
	rsub	r0,r2,2
	btst_s	r2,1
	mov_s	r2,0	;3
	mov.eq	r2,r0
	mov_s	r0,r2	;4
	j_s.d	[blink]
	add_s	r0,r0,r3   ;b,b,h
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp_s	r1,r3
	blt_s	.L1167
	bgt_s	.L1168
	cmp_s	r0,r2
	blo_s	.L1167
	bhi_s	.L1168
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1167:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1168:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1174
	bgt_s	.L1173
	brlo	r0,r2,.L1174
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1174:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1173:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	bmsk	r58,r0,15
	seteq	r58,r58,0
	asl	r58,r58,4
	lsr	r2,r0,r58
	extb_s	r3,r2
	seteq	r3,r3,0
	asl_s	r3,r3,3
	add	r58,r58,r3   ;(p)b,b,c/u6
	lsr_s	r2,r2,r3
	and	r3,r2,15
	seteq	r3,r3,0
	asl_s	r3,r3,2
	add	r58,r58,r3   ;(p)b,b,c/u6
	lsr_s	r2,r2,r3
	and	r3,r2,3
	seteq	r3,r3,0
	asl_s	r3,r3,1
	add	r58,r58,r3   ;(p)b,b,c/u6
	lsr_s	r2,r2,r3
	bic	r0,1,r2    ;;constraint 6
	xbfu	r2,r2,1
	rsub	r2,r2,2
	j_s.d	[blink]
	dmachu	r0,r0,r2
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	bbit0.d	r2,5,@.L1179
	mov_s	r3,r1	;4
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L1179:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r12,r2,32
	lsr_s	r0,r0,r2
	lsr_s	r1,r1,r2
	asl_s	r3,r3,r12
	j_s.d	[blink]
	or_s	r0,r0,r3
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	push_s	r13
	mpyuw	r58,r0,r1
	lsr	r3,r0,16
	exth	r13,r58
	lsr	r12,r1,16
	lsr	r58,r58,16
	dmachu	r1,r1,r3
	exth	r58,r1
	dmachu	r2,r0,r12
	lsr	r58,r1,16
	dmachu	r1,r3,r12
	asl	r0,r2,16
	lsr_s	r2,r2,16
	add_s	r0,r0,r13   ;b,b,h
	add_s	r1,r1,r2   ;b,b,h
	j_s.d	[blink]
	pop_s	r13
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	std.a	r14,[sp,-8]
	push_s	r13
	mpyuw	r13,r0,r2
	lsr	r12,r0,16
	lsr	r14,r2,16
	mpy_s	r3,r3,r0
	lsr	r58,r13,16
	dmachu	r15,r2,r12
	exth	r58,r15
	exth_s	r13,r13
	mpy_s	r1,r1,r2
	dmachu	r0,r0,r14
	lsr	r58,r15,16
	dmachu	r12,r12,r14
	lsr	r14,r0,16
	add_s	r12,r12,r14   ;b,b,h
	add_s	r3,r3,r12   ;b,b,h
	asl_s	r0,r0,16
	add_s	r0,r0,r13   ;b,b,h
	add_s	r1,r1,r3   ;b,b,h
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	mov_s	r2,0	;3
	sub.f	r0,r2,r0
	j_s.d	[blink]
	sbc	r1,r2,r1
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
	push_s	r13
	lsr.f	r12,r1
	and	r12,r12,1431655765
	rrc	r3,r0
	and	r3,r3,1431655765
	sub.f	r0,r0,r3
	and	r13,r0,858993459
	sbc	r3,r1,r12
	lsr_s	r0,r0,2
	lsr	r12,r3,2
	and	r2,r0,858993459
	add.f	r2,r2,r13
	and	r13,r12,858993459
	and	r12,r3,858993459
	lsr	r3,r2,4
	adc	r12,r13,r12
	asl	r13,r12,28
	or_s	r3,r3,r13
	add.f	r3,r3,r2
	lsr	r2,r12,4
	and	r3,r3,252645135
	adc	r2,r2,r12
	and	r2,r2,252645135
	add_s	r2,r2,r3   ;b,b,h
	lsr	r3,r2,16
	add_s	r2,r2,r3   ;b,b,h
	lsr	r0,r2,8
	add_s	r0,r0,r2   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	pop_s	r13
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	lsr_s	r2,r0
	and	r2,r2,1431655765
	sub_s	r0,r0,r2
	and	r3,r0,858993459
	lsr	r2,r0,2
	and	r2,r2,858993459
	add_s	r2,r2,r3   ;b,b,h
	lsr	r3,r2,4
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
	bbit0.d	r2,0,@.L1199
	mov_s	r16,0	;4
	.align 2
.L1201:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L1199:
	div	r13,r13,2
	breq_s	r13,0,.L1200
	.align 2
.L1202:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L1201
	b.d	.L1202
	div	r13,r13,2
	.align 4
.L1200:
	brge	r18,0,.L1198
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	.align 2
.L1198:
	vadd2	r0,r16,0
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r15,0x3f800000 ; 1.0e+0
	mov_s	r13,r0
	mov_s	r16,r1	;4
	bbit0.d	r1,0,@.L1207
	mov_s	r14,r1	;4
	.align 2
.L1209:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r13
	mov_s	r15,r0
	.align 2
.L1207:
	div	r14,r14,2
	breq_s	r14,0,.L1208
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1209
	mov_s	r13,r0
	div	r14,r14,2
	.align 2
.L1215:
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1209
	mov_s	r13,r0
	b.d	.L1215
	div	r14,r14,2
	.align 4
.L1208:
	brge	r16,0,.L1206
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	mov_s	r15,r0
	.align 2
.L1206:
	mov_s	r0,r15
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp_s	r1,r3
	blo_s	.L1220
	bhi_s	.L1221
	cmp_s	r0,r2
	blo_s	.L1220
	bhi_s	.L1221
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1220:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1221:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1227
	bhi_s	.L1226
	brlo	r0,r2,.L1227
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1227:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1226:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.bss
	.align 4
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.align 4
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.section	.rodata
	.align 4
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.global	__divsf3
	.global	__divdf3
	.global	__fixsfsi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__gedf2
	.global	__ledf2
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
