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
	breq_s	r3,0,.L34
	push_s	r13
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r3	;5
	lp	@.L37	; lp_count:@.L22->@.L37
	.align 2
.L22:
	ldb.a	r12,[r1,1]
	breq.d	r12,r2,.L20
	stb.ab	r12,[r0,1]
	nop_s
	.align 2
.L37:
	; ZOL_END, begins @.L22
	mov_s	r0,0	;3
.L20:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L34:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	breq_s	r2,0,.L45
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov	lp_count,r2	;5
	lp	@.L49	; lp_count:@.L40->@.L49
	.align 2
.L40:
	mov_s	r0,r3	;4
	ldb.ab	r12,[r3,1]
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L49:
	; ZOL_END, begins @.L40
	.align 2
.L45:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L58
	.align 2
.L64:
	mov	lp_count,r2	;5
	lp	@.L63	; lp_count:@.L52->@.L63
	.align 2
.L52:
	ldb_s	r12,[r1]
	add_s	r0,r0,1   ;b,b,h
	ldb	r3,[r0,-1]
	brne.d	r3,r12,.L62
	add_s	r1,r1,1   ;b,b,h
	nop_s
	.align 2
.L63:
	; ZOL_END, begins @.L52
	.align 2
.L58:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L62:
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
	b.d	.L72
	sub	r12,r0,1 ;a,b,u6
	.align 4
.L74:
	ldb_s	r3,[r0]
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L72:
	brne.d	r2,r12,.L74
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
.L83:
	ldb.a	r3,[r1,1]
	mov_s	r0,r2	;4
	tst_s	r3,r3
	jeq.d	[blink]
	stb.ab	r3,[r2,1]
	ldb.a	r3,[r1,1]
	mov_s	r0,r2	;4
	brne.d	r3,0,.L83
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
.L98:
	ldb.a	r2,[r0,1]
	tst_s	r2,r2
	jeq_s	[blink]
	brne	r2,r1,.L98
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L102:
	ldb_s	r3,[r2]
	mov_s	r0,r2	;4
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	brne_s	r3,0,.L102
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	breq	r2,r3,.L108
	j_s.d	[blink]
	sub_s	r0,r2,r3
	.align 4
.L109:
	ldb.a	r2,[r0,1]
	ldb.a	r3,[r1,1]
	brne	r2,r3,.L107
	.align 2
.L108:
	brne_s	r2,0,.L109
	.align 2
.L107:
	sub_s	r0,r2,r3
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	breq_s	r2,0,.L116
	mov_s	r2,r0	;4
	.align 2
.L115:
	ldb.a	r3,[r2,1]
	brne_s	r3,0,.L115
	j_s.d	[blink]
	sub_s	r0,r2,r0
	.align 4
.L116:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L127
	ldb_s	r3,[r0]
	breq_s	r3,0,.L134
	push_s	r13
	add_s	r2,r2,-1   ;h,h,s3
	b.d	.L123
	add_s	r12,r0,r2   ;a,b,c/u3
	.align 4
.L136:
	breq	r0,r12,.L122
	brne	r2,r3,.L122
	ldb.a	r3,[r0,1]
	breq_s	r3,0,.L135
	.align 2
.L123:
	mov_s	r13,r1	;4
	ldb.ab	r2,[r1,1]
	brne_s	r2,0,.L136
	.align 2
.L122:
	sub_s	r0,r3,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L127:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L135:
	ldb_s	r2,[r13,1]
	sub_s	r0,r3,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L134:
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
	lp	@.L143	; lp_count:@.L139->@.L143
	.align 2
.L139:
	add_s	r1,r1,2   ;b,b,h
	ldb_s	r12,[r0,1]
	ldb.ab	r3,[r0,2]
	stb	r12,[r1,-2]
	stb	r3,[r1,-1]
	.align 2
.L143:
	; ZOL_END, begins @.L139
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
	brls	r0,31,.L174
	add	r2,r0,-127     ;a,b,limm
	brhi	r2,32,.L176
	.align 2
.L174:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L176:
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L174
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
	brls	r0,254,.L187
	brls	r0,8231,.L184
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L184
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L184
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L185
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L184:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L187:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L185:
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
	brne_s	r0,0,.L197
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L198
	vadd2	r0,r14,0
	vadd2	r2,r16,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L194
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L194:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L197:
	vadd2	r0,r14,0
	b_s	.L194
	.align 4
.L198:
	vadd2	r0,r16,0
	b_s	.L194
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
	bne.d	.L203
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L203
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L203:
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
	brne	r0,0,.L218
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L219
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L222
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L212:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L222:
	vadd2	r0,r16,0
	tst_s	r2,r2
	mov.ne	r0,r14
	mov.ne	r1,r15
	b_s	.L212
	.align 4
.L218:
	vadd2	r0,r14,0
	b_s	.L212
	.align 4
.L219:
	vadd2	r0,r16,0
	b_s	.L212
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
	bne.d	.L223
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L223
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	mov_s	r3,r13	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L225
	tst_s	r2,r2
	mov.ne	r14,r13
	mov_s	r0,r14
.L223:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L225:
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
	brne	r0,0,.L239
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L240
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L243
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L233:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L243:
	vadd2	r0,r16,0
	tst_s	r2,r2
	mov.ne	r0,r14
	mov.ne	r1,r15
	b_s	.L233
	.align 4
.L239:
	vadd2	r0,r14,0
	b_s	.L233
	.align 4
.L240:
	vadd2	r0,r16,0
	b_s	.L233
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
	brne	r0,0,.L250
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L251
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L254
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L244:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L254:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L244
	.align 4
.L250:
	vadd2	r0,r14,0
	b_s	.L244
	.align 4
.L251:
	vadd2	r0,r16,0
	b_s	.L244
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
	bne.d	.L255
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L255
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	mov_s	r3,r13	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L257
	tst_s	r2,r2
	mov.ne	r13,r14
	mov_s	r0,r13
.L255:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L257:
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
	brne	r0,0,.L271
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L272
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L275
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L265:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L275:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L265
	.align 4
.L271:
	vadd2	r0,r14,0
	b_s	.L265
	.align 4
.L272:
	vadd2	r0,r16,0
	b_s	.L265
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L277
	.align 2
.L278:
	and	r3,r0,63
	lsr.f	r0,r0,6
	ldb	r3,[r3,@digits]
	bne.d	.L278
	stb.ab	r3,[r2,1]
	.align 2
.L277:
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
	breq_s	r1,0,.L293
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
.L293:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L295
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L295:
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
	breq.d	r16,0,.L305
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	b.d	.L307
	mov_s	r14,0	;3
	.align 4
.L320:
	breq.d	r16,r14,.L305
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L307:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl.d	[r18]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L320
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r19	;4
	.align 2
.L321:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L305:
	add	r2,r16,1 ;a,b,c/u6
	mpy	r16,r16,r15
	tst_s	r15,r15
	add	r19,r21,r16 ;a,b,c/u6
	st	r2,[r20]	;26
	mov_s.ne	r1,r17
	mov_s.ne	r2,r15
	mov_s.ne	r0,r19
	jlne	@memmove
	b.d	.L321
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
	ld	r19,[r2]	;23
	breq	r19,0,.L323
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	b.d	.L325
	mov_s	r14,0	;3
	.align 4
.L334:
	breq.d	r19,r14,.L323
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L325:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl.d	[r16]
	mov_s	r18,r13	;4
	brne.d	r0,0,.L334
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L322:
	mov_s	r0,r18	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L323:
	b.d	.L322
	mov_s	r18,0	;4
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
.L338:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L338
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L338
	breq	r2,43,.L340
	breq	r2,45,.L341
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L349
	mov_s	r15,0	;3
	.align 2
.L343:
	mov_s	r0,0	;3
	.align 2
.L346:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L346
	brne_s	r15,0,.L337
	sub_s	r0,r14,r13
.L337:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L341:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	add_s	r12,r12,1   ;b,b,h
	bls.d	.L343
	mov.ls	r15,1
	.align 2
.L349:
	b.d	.L337
	mov_s	r0,0	;3
	.align 4
.L340:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L349
	add_s	r12,r12,1   ;b,b,h
	b.d	.L343
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L360:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L360
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L360
	breq	r2,43,.L362
	breq	r2,45,.L378
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L370
	mov_s	r15,0	;3
	.align 2
.L364:
	mov_s	r0,0	;3
	.align 2
.L367:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L367
	brne_s	r15,0,.L359
	sub_s	r0,r14,r13
.L359:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L378:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	mov_s	r12,r0	;4
	bls.d	.L364
	mov.ls	r15,1
	.align 2
.L370:
	b.d	.L359
	mov_s	r0,0	;3
	.align 4
.L362:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L370
	add_s	r12,r12,1   ;b,b,h
	b.d	.L364
	mov_s	r15,0	;3
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L380:
	mov_s	r14,r0	;4
	ldb.ab	r3,[r0,1]
	breq	r3,32,.L380
	sub	r2,r3,9 ;a,b,u6
	brls	r2,4,.L380
	breq	r3,43,.L382
	brne	r3,45,.L400
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r14,r14,1   ;b,b,h
	bhi.d	.L391
	mov.ls	r5,1
	.align 2
.L385:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L388:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	asr	r15,r2,31
	ldb.a	r3,[r14,1]
	mov_s	r4,r2	;4
	sub3	r2,r3,6 ;a,b,u6
	sbc	r1,r13,r15
	brls	r2,9,.L388
	brne	r5,0,.L379
	sub.f	r0,r4,r12
	sbc	r1,r15,r13
.L379:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L400:
	sub3	r2,r3,6 ;a,b,u6
	brhi	r2,9,.L391
	.align 2
.L392:
	b.d	.L385
	mov_s	r5,0	;4
	.align 4
.L382:
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	brls.d	r2,9,.L392
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L391:
	mov_s	r0,0	;3
	b.d	.L379
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
	beq_s	.L402
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	b.d	.L405
	mov_s	r18,r4	;4
	.align 4
.L412:
	beq_s	.L401
	sub_s	r13,r13,r15
	breq.d	r13,0,.L402
	add	r17,r14,r16 ;a,b,c/u6
	.align 2
.L405:
	lsr_s	r15,r13
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r19	;4
	jl.d	[r18]
	add_s	r13,r13,-1   ;h,h,s3
	tst_s	r0,r0
	bp	.L412
	mov_s	r13,r15	;4
	brne_s	r13,0,.L405
	.align 2
.L402:
	mov_s	r14,0	;3
	.align 2
.L401:
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
	mov.ne	r20,r0
	mov.ne	r17,r1
	mov.ne	r16,r3
	mov.ne	r19,r4
	bne.d	.L414
	mov.ne	r18,r5
	b.d	.L413
	mov_s	r14,0	;3
	.align 4
.L426:
	cmp_s	r0,0
	ble.d	.L416
	mov.le	r13,r15
	add	r17,r14,r16 ;a,b,c/u6
	asr_s	r13,r13,1
	.align 2
.L416:
	breq_s	r13,0,.L417
	.align 2
.L414:
	asr_s	r15,r13,1
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r2,r18	;4
	mov_s	r1,r14	;4
	mov_s	r0,r20	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	brne_s	r0,0,.L426
	.align 2
.L413:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.align 4
.L417:
	b.d	.L413
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
	breq_s	r2,0,.L445
	.align 2
.L442:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L442
	.align 2
.L445:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L451
	b_s	.L450
	.align 4
.L452:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L450
	.align 2
.L451:
	brne_s	r2,0,.L452
	.align 2
.L450:
	brlt	r2,r3,.L454
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L454:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L457:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L457
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L465
	mov_s	r2,r0	;4
	.align 2
.L464:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L464
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L465:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L474
	push_s	r14
	push_s	r13
	mov	lp_count,r2	;5
	lp	@.L483	; lp_count:@.L470->@.L483
	.align 2
.L470:
	mov_s	r12,r1	;4
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld_s	r13,[r12]		;15
	brne.d	r3,r13,.L471
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L471
	nop_s
	.align 2
.L483:
	; ZOL_END, begins @.L470
	mov_s	r0,0	;3
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L471:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L474:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L491
	mov_s.ne	r3,r0
	.align 2
.L496:
	mov	lp_count,r2	;5
	lp	@.L495	; lp_count:@.L486->@.L495
	.align 2
.L486:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L495:
	; ZOL_END, begins @.L486
	.align 2
.L491:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L506
	.align 2
.L513:
	mov	lp_count,r2	;5
	lp	@.L512	; lp_count:@.L499->@.L512
	.align 2
.L499:
	ld_s	r12,[r1]		;15
	add_s	r0,r0,4   ;b,b,h
	ld	r3,[r0,-4]	;23
	cmp_s	r3,r12
	bne.d	.L510
	add_s	r1,r1,4   ;b,b,h
	nop_s
	.align 2
.L512:
	; ZOL_END, begins @.L499
	.align 2
.L506:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L510:
	blt_s	.L511
	j_s.d	[blink]
	setgt	r0,r3,r12
	.align 4
.L511:
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
	brhs	r12,r3,.L537
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	add_s	r1,r1,r3   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L539	; lp_count:@.L525->@.L539
	.align 2
.L525:
	ld.a	r12,[r1,-4]	;23
	st.a	r12,[r3,-4]	;26
	.align 2
.L539:
	; ZOL_END, begins @.L525
	j_s	[blink]
	.align 4
.L537:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r3,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L538	; lp_count:@.L526->@.L538
	.align 2
.L526:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L538:
	; ZOL_END, begins @.L526
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
	lp	@.L549	; lp_count:@.L542->@.L549
	.align 2
.L542:
	st.ab	r1,[r3,4]	;26
	.align 2
.L549:
	; ZOL_END, begins @.L542
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L551
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L567	; lp_count:@.L553->@.L567
	.align 2
.L553:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L567:
	; ZOL_END, begins @.L553
	j_s	[blink]
	.align 4
.L551:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L566	; lp_count:@.L554->@.L566
	.align 2
.L554:
	ldb.ab	r3,[r0,1]
	stb.a	r3,[r1,1]
	.align 2
.L566:
	; ZOL_END, begins @.L554
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
	lp	@.L602	; lp_count:@.L597->@.L602
	.align 2
.L597:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L601
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L602:
	; ZOL_END, begins @.L597
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L601:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L606
	bbit1.d	r2,0,@.L610
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L605:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L605
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L610:
	j_s	[blink]
	.align 4
.L606:
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
	bn.d	.L611
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L611:
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
	bn.d	.L616
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L616:
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
	bn.d	.L621
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L621:
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
	brne_s	r0,0,.L629
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	bl.d	@__nesf2;1
	mov_s	r1,r15
	breq_s	r0,0,.L629
	tst_s	r13,r13
	mov_s	r14,0x3f000000 ; 5.0e-1
	mov.p	r14,0x40000000 ; 2.0e+0
	bbit0	r13,0,@.L632
	.align 2
.L633:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r14
	mov_s	r15,r0
	.align 2
.L632:
	div	r13,r13,2
	breq_s	r13,0,.L629
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	bbit1.d	r13,0,@.L633
	mov_s	r14,r0
	div	r13,r13,2
	.align 2
.L642:
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	bbit1.d	r13,0,@.L633
	mov_s	r14,r0
	b.d	.L642
	div	r13,r13,2
	.align 4
.L629:
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
	brne	r0,0,.L644
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L644
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L647
	.align 2
.L648:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L647:
	div	r13,r13,2
	breq_s	r13,0,.L644
	.align 2
.L649:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L648
	b.d	.L649
	div	r13,r13,2
	.align 4
.L644:
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
	brne	r0,0,.L657
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L657
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L660
	.align 2
.L661:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L660:
	div	r13,r13,2
	breq_s	r13,0,.L657
	.align 2
.L662:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L661
	b.d	.L662
	div	r13,r13,2
	.align 4
.L657:
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
	lp	@.L681	; lp_count:@.L671->@.L681
	.align 2
.L671:
	ldb.ab	r3,[r12,1]
	ldb.ab	r13,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L681:
	; ZOL_END, begins @.L671
	j_s.d	[blink]
	pop_s	r13
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	tst_s	r3,r3
	beq.d	.L683
	mov_s	r3,r0	;4
	.align 2
.L684:
	ldb.a	r12,[r3,1]
	brne_s	r12,0,.L684
	.align 2
.L683:
	breq_s	r2,0,.L685
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L698	; lp_count:@.L686->@.L698
	.align 2
.L686:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r3,1]
	nop_s
	.align 2
.L698:
	; ZOL_END, begins @.L686
	.align 2
.L685:
	stb	0,[r3]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L703
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L708	; lp_count:@.L701->@.L708
	.align 2
.L701:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L708:
	; ZOL_END, begins @.L701
	j_s	[blink]
	.align 4
.L703:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L716
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L710:
	b.d	.L713
	mov_s	r3,r13	;4
	.align 4
.L712:
	breq	r2,r12,.L711
	.align 2
.L713:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L712
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L710
	mov_s	r0,0	;3
.L711:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L716:
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
.L723:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r1,r3
	mov.ne	r12,r0
	brne.d	r3,0,.L723
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
	breq.d	r14,0,.L740
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L730:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L730
	sub.f	r2,r2,r1
	beq_s	.L740
	b.d	.L738
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L748:
	breq_s	r2,0,.L747
	.align 2
.L738:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r14,r2,.L748
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L732
	mov_s	r12,r0	;4
	.align 4
.L750:
	breq	r12,r15,.L734
	brne	r3,r2,.L735
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L749
	ldb.a	r3,[r13,1]
	.align 2
.L732:
	brne_s	r3,0,.L750
	.align 2
.L735:
	b.d	.L738
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L749:
	ldb_s	r3,[r13,1]
	.align 2
.L734:
	brne	r2,r3,.L735
.L728:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L747:
	b.d	.L728
	mov_s	r0,0	;3
	.align 4
.L740:
	b.d	.L728
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
	brlt	r0,0,.L762
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L755
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L754
	.align 2
.L755:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L762:
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L755
	.align 2
.L754:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L755
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq.d	[blink]
	mov_s	r12,r0	;4
	brlo	r1,r3,.L771
	sub_s	r1,r1,r3
	add.f	r5,r0,r1
	blo	.L771
	std.a	r14,[sp,-8]
	push_s	r13
	b.d	.L768
	ldb	r6,[r2]
	.align 4
.L765:
	brlo	r5,r12,.L784
	.align 2
.L768:
	ldb_s	r13,[r12]
	mov_s	r0,r12	;4
	brne.d	r13,r6,.L765
	add_s	r12,r12,1   ;b,b,h
	breq	r3,1,.L763
	sub	r15,r12,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r13,r3,1 ;a,b,u6
	mov	lp_count,r13	;5
	lp	@.L785	; lp_count:@.L766->@.L785
	.align 2
.L766:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L765
	nop_s
	.align 2
.L785:
	; ZOL_END, begins @.L766
.L763:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L784:
	b.d	.L763
	mov_s	r0,0	;3
	.align 4
.L771:
	j_s.d	[blink]
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
	bn	.L815
	vadd2	r0,r14,0
	mov_s	r3,1072693248	;13
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn.d	.L816
	mov.p	r21,0
	.align 2
.L795:
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L801:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__gedf2;1
	brge	r0,0,.L801
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	breq.d	r21,0,.L817
	bxor	r1,r15,31
.L792:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L817:
	vadd2	r0,r14,0
	b_s	.L792
	.align 4
.L816:
	vadd2	r0,r14,0
	mov_s	r3,1071644672	;13
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L798
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	brne	r0,0,.L807
	.align 2
.L798:
	vadd2	r0,r14,0
	st	0,[r20]	;37
	b_s	.L792
	.align 4
.L815:
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,-1074790400	;13
	bl.d	@__ledf2;1
	mov_s	r16,r14	;4
	brgt.d	r0,0,.L818
	bxor	r17,r15,31
	vadd2	r14,r16,0
	b.d	.L795
	mov_s	r21,1	;4
	.align 4
.L818:
	vadd2	r0,r14,0
	mov_s	r3,-1075838976	;13
	bl.d	@__gtdf2;1
	mov_s	r2,0	;3
	brle	r0,0,.L798
	mov_s	r21,1	;4
	.align 2
.L796:
	vadd2	r14,r16,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L803:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__ltdf2;1
	brlt	r0,0,.L803
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	tst	r21,r21
	bne.d	.L792
	bxor	r1,r15,31
	b_s	.L817
	.align 4
.L807:
	vadd2	r16,r14,0
	b.d	.L796
	mov_s	r21,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	or.f	0,r0,r1
	beq.d	.L823
	mov_s	r14,r1	;4
	mov_s	r13,r0	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L822:
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
	bne_s	.L822
.L819:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L823:
	mov_s	r0,0	;3
	b.d	.L819
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp_s	r1,r0
	mov.hs	r3,1
	bhs.d	.L845
	mov.hs	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L850	; lp_count:@.L827->@.L850
	.align 2
.L827:
	brlt	r1,0,.L828
	asl_s	r1,r1,1
	brls.d	r0,r1,.L829
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L850:
	; ZOL_END, begins @.L827
	.align 2
.L830:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L829:
	tst_s	r3,r3
	beq.d	.L830
	mov.eq	r12,0
	.align 2
.L828:
	mov_s	r12,0	;3
	.align 2
.L833:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L833
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L845:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L845
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
	beq_s	.L853
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L853:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L864
	xor	r12,r1,r3
	.align 2
.L861:
	fls	r0,r2
	brne.d	r12,0,.L865
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L865:
	fls	r12,r12
	rsub	r0,r12,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L864:
	brne	r1,r0,.L861
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
.L868:
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
	bne.d	.L868
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L878
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L898
	.align 2
.L878:
	breq	r3,0,.L899
	std.a	r14,[sp,-8]
	push_s	r13
	add3	r3,-8,r3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L903	; lp_count:@.L881->@.L903
	.align 2
.L881:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L903:
	; ZOL_END, begins @.L881
	brls	r2,r4,.L874
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	add_s	r0,r0,r4   ;b,b,h
	sub_s	r2,r2,r1
	mov	lp_count,r2	;5
	lp	@.L902	; lp_count:@.L882->@.L902
	.align 2
.L882:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r0,1]
	.align 2
.L902:
	; ZOL_END, begins @.L882
	.align 2
.L874:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L898:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L901	; lp_count:@.L883->@.L901
	.align 2
.L883:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L901:
	; ZOL_END, begins @.L883
	j_s	[blink]
	.align 4
.L899:
	cmp_s	r2,r4
	jls	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	add_s	r0,r0,r4   ;b,b,h
	sub_s	r2,r2,r1
	mov	lp_count,r2	;5
	lp	@.L900	; lp_count:@.L894->@.L900
	.align 2
.L894:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r0,1]
	.align 2
.L900:
	; ZOL_END, begins @.L894
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brlo.d	r0,r1,.L908
	lsr_s	r3,r2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L919
	.align 2
.L908:
	breq_s	r3,0,.L907
	add1	r3,-2,r3
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L921	; lp_count:@.L911->@.L921
	.align 2
.L911:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L921:
	; ZOL_END, begins @.L911
	.align 2
.L907:
	bbit0	r2,0,@.L904
	mov_s	r3,r2	;4
	add_s	r2,r1,r2   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	ldb	r2,[r2,-1]
	stb	r2,[r3,-1]
	.align 2
.L904:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L919:
	breq_s	r2,0,.L904
	add_s	r3,r0,r2   ;a,b,c/u3
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L920	; lp_count:@.L913->@.L920
	.align 2
.L913:
	ldb.a	r13,[r12,-1]
	stb.a	r13,[r3,-1]
	.align 2
.L920:
	; ZOL_END, begins @.L913
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
	brlo.d	r0,r1,.L926
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L939
	.align 2
.L926:
	breq_s	r3,0,.L925
	add2	r3,-4,r3
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L943	; lp_count:@.L929->@.L943
	.align 2
.L929:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L943:
	; ZOL_END, begins @.L929
	.align 2
.L925:
	brls	r2,r15,.L922
	add_s	r15,r15,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	add_s	r0,r0,r15   ;b,b,h
	sub_s	r2,r2,r1
	mov	lp_count,r2	;5
	lp	@.L942	; lp_count:@.L930->@.L942
	.align 2
.L930:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r0,1]
	.align 2
.L942:
	; ZOL_END, begins @.L930
	.align 2
.L922:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L939:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r0,r0,r2
	beq.d	.L922
	rsub.ne	r1,r1,r3
	.align 2
.L941:
	mov	lp_count,r1	;5
	lp	@.L940	; lp_count:@.L931->@.L940
	.align 2
.L931:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L940:
	; ZOL_END, begins @.L931
	b_s	.L922
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
	bbit1	r0,15,@.L959
	exth_s	r2,r0
	asr.f	r0,r2,14
	jne_s	[blink]
	lsr.f	0,r2,13
	bne_s	.L960
	lsr.f	0,r2,12
	bne_s	.L961
	lsr.f	0,r2,11
	bne_s	.L962
	lsr.f	0,r2,10
	bne_s	.L963
	lsr.f	0,r2,9
	bne_s	.L964
	lsr.f	0,r2,8
	bne_s	.L965
	lsr.f	0,r2,7
	bne_s	.L966
	lsr.f	0,r2,6
	bne_s	.L967
	lsr.f	0,r2,5
	bne_s	.L968
	lsr.f	0,r2,4
	bne_s	.L969
	lsr.f	0,r2,3
	bne_s	.L970
	lsr.f	0,r2,2
	bne_s	.L971
	lsr.f	0,r2,1
	bne_s	.L972
	tst_s	r2,r2
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L959:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L970:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L960:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L961:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L962:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L963:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L964:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L965:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L966:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L967:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L968:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L969:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L971:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L972:
	j_s.d	[blink]
	mov_s	r0,14	;3
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	bbit1	r0,0,@.L978
	exth_s	r2,r0
	bbit1	r2,1,@.L979
	bbit1	r2,2,@.L980
	bbit1	r2,3,@.L981
	bbit1	r2,4,@.L982
	bbit1	r2,5,@.L983
	bbit1	r2,6,@.L984
	bbit1	r2,7,@.L985
	bbit1	r2,8,@.L986
	bbit1	r2,9,@.L987
	bbit1	r2,10,@.L988
	bbit1	r2,11,@.L989
	bbit1	r2,12,@.L990
	bbit1	r2,13,@.L991
	bbit1	r2,14,@.L992
	lsr.f	0,r2,15
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L978:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L979:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L990:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L980:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L981:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L982:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L983:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L984:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L985:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L986:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L987:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L988:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L989:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L991:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L992:
	j_s.d	[blink]
	mov_s	r0,14	;3
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
	brge	r0,0,.L1002
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L1002:
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
	and	r3,r0,1
	xbfu	r2,r0,1
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,2
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,3
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,4
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,5
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,6
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,7
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,8
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,9
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,10
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,11
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,12
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,13
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,14
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r0,r0,15
	add_s	r0,r0,r2   ;b,b,h
	j_s.d	[blink]
	bmsk_s	r0,r0,0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	and	r3,r0,1
	xbfu	r2,r0,1
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,2
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,3
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,4
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,5
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,6
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,7
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,8
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,9
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,10
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,11
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,12
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,13
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r3,r0,14
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r0,r0,15
	j_s.d	[blink]
	add_s	r0,r0,r2   ;b,b,h
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov.f	r2,r0
	jeq.d	[blink]
	mov_s	r0,0	;3
	.align 2
.L1009:
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
	bne.d	.L1009
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
.L1017:
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
	bne.d	.L1017
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1049
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1048	; lp_count:@.L1025->@.L1048
	.align 2
.L1025:
	brlt	r1,0,.L1026
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1027
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1048:
	; ZOL_END, begins @.L1025
	.align 2
.L1028:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1027:
	tst_s	r3,r3
	beq.d	.L1028
	mov.eq	r12,0
	.align 2
.L1026:
	mov_s	r12,0	;3
	.align 2
.L1031:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1031
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1043:
	cmp_s	r0,r1
	.align 4
.L1049:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1043
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
	bn	.L1050
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L1050:
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
	bn	.L1055
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1055:
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
	bn.d	.L1066
	mov.n	r13,1
	beq.d	.L1064
	mov.eq	r0,0
	mov_s	r13,0	;3
	.align 2
.L1066:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1080	; lp_count:@.L1069->@.L1080
	.align 2
.L1069:
	and	r2,r1,1
	asr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	beq.d	.L1068
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1080:
	; ZOL_END, begins @.L1069
	.align 2
.L1068:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1064:
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
	bls.d	.L1085
	mov.hi	r3,32
	.align 2
.L1104:
	mov	lp_count,r3	;5
	lp	@.L1103	; lp_count:@.L1084->@.L1103
	.align 2
.L1084:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1087
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1103:
	; ZOL_END, begins @.L1084
	.align 2
.L1087:
	tst_s	r2,r2
	beq.d	.L1086
	mov.eq	r0,0
	.align 2
.L1085:
	mov_s	r0,0	;3
	.align 2
.L1090:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r2
	lsr.f	r2,r2,1
	bne.d	.L1090
	lsr_s	r1,r1
	.align 2
.L1086:
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
	bls.d	.L1113
	mov.hi	r3,32
	.align 2
.L1127:
	mov	lp_count,r3	;5
	lp	@.L1126	; lp_count:@.L1107->@.L1126
	.align 2
.L1107:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1110
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1126:
	; ZOL_END, begins @.L1107
	.align 2
.L1110:
	tst_s	r2,r2
	beq.d	.L1109
	mov.eq	r0,r12
	.align 2
.L1113:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	lsr.f	r2,r2,1
	bne.d	.L1113
	lsr_s	r1,r1
	.align 2
.L1109:
	tst_s	r13,r13
	neg.ne	r0,r0
	j_s.d	[blink]
	pop_s	r13
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	std.a	r14,[sp,-8]
	push_s	r13
	exth_s	r0,r0
	exth_s	r1,r1
	cmp_s	r1,r0
	bhs	.L1243
	btst_s	r1,15
	bne	.L1131
	asl_s	r3,r1,1
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1132
	btst_s	r3,15
	bne	.L1133
	asl_s	r3,r1,2
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1134
	btst_s	r3,15
	bne	.L1135
	asl_s	r3,r1,3
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1136
	btst_s	r3,15
	bne	.L1137
	asl_s	r3,r1,4
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1138
	btst_s	r3,15
	bne	.L1139
	asl_s	r3,r1,5
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1140
	btst_s	r3,15
	bne	.L1141
	asl_s	r3,r1,6
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1142
	btst_s	r3,15
	bne	.L1143
	asl_s	r3,r1,7
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1144
	btst_s	r3,15
	bne	.L1145
	asl	r3,r1,8
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1146
	btst_s	r3,15
	bne	.L1147
	asl	r3,r1,9
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1148
	btst_s	r3,15
	bne	.L1149
	asl	r3,r1,10
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1150
	btst_s	r3,15
	bne	.L1151
	asl	r3,r1,11
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1152
	btst_s	r3,15
	bne	.L1153
	asl	r3,r1,12
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1154
	btst_s	r3,15
	bne	.L1155
	asl	r3,r1,13
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1156
	btst_s	r3,15
	bne	.L1157
	asl	r3,r1,14
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1158
	btst_s	r3,15
	bne	.L1159
	asl_s	r1,r1,15
	exth_s	r13,r1
	cmp_s	r0,r13
	bls	.L1160
	tst_s	r13,r13
	bne	.L1244
	.align 2
.L1161:
	tst_s	r2,r2
	mov.ne	r13,r0
	mov_s	r0,r13	;4
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1148:
	blo	.L1194
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	mov_s	r13,r12	;4
	.align 2
.L1163:
	lsr.f	r15,r12,2
	beq.d	.L1161
	lsr	r14,r3,2
	brhi	r14,r0,.L1164
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1164:
	lsr.f	r15,r12,3
	beq.d	.L1161
	lsr	r14,r3,3
	brlo	r0,r14,.L1165
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1165:
	lsr.f	r15,r12,4
	beq.d	.L1161
	lsr	r14,r3,4
	brlo	r0,r14,.L1166
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1166:
	lsr.f	r15,r12,5
	beq.d	.L1161
	lsr	r14,r3,5
	brlo	r0,r14,.L1167
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1167:
	lsr.f	r15,r12,6
	beq.d	.L1161
	lsr	r14,r3,6
	brlo	r0,r14,.L1168
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1168:
	lsr.f	r15,r12,7
	beq.d	.L1161
	lsr	r14,r3,7
	brlo	r0,r14,.L1169
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1169:
	lsr.f	r15,r12,8
	beq.d	.L1161
	lsr	r14,r3,8
	brlo	r0,r14,.L1170
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1170:
	lsr.f	r15,r12,9
	beq.d	.L1161
	lsr	r14,r3,9
	brlo	r0,r14,.L1171
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1171:
	lsr.f	r15,r12,10
	beq.d	.L1161
	lsr	r14,r3,10
	brlo	r0,r14,.L1172
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1172:
	lsr.f	r15,r12,11
	beq.d	.L1161
	lsr	r14,r3,11
	brlo	r0,r14,.L1173
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1173:
	lsr.f	r15,r12,12
	beq.d	.L1161
	lsr	r14,r3,12
	brlo	r0,r14,.L1174
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1174:
	lsr.f	r15,r12,13
	beq.d	.L1161
	lsr	r14,r3,13
	brlo	r0,r14,.L1175
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1175:
	lsr.f	r15,r12,14
	beq.d	.L1161
	lsr	r14,r3,14
	brlo	r0,r14,.L1176
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1176:
	bxor.f	0,r12,14
	beq.d	.L1161
	lsr_s	r3,r3,15
	cmp_s	r0,r3
	blo.d	.L1161
	mov.lo	r0,0
	sub_s	r3,r0,r3
	exth_s	r0,r3
	b.d	.L1161
	bset_s	r13,r13,0
	.align 4
.L1243:
	bne.d	.L1161
	sub_s.ne	r13,r13,r13
	mov_s	r13,1	;3
	b.d	.L1161
	mov_s	r0,0	;3
	.align 4
.L1131:
	sub_s	r0,r0,r1
	exth_s	r0,r0
	b.d	.L1161
	mov_s	r13,1	;3
	.align 4
.L1132:
	blo	.L1186
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,2	;3
	b.d	.L1163
	mov_s	r13,2	;3
	.align 4
.L1133:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	bmsk_s	r1,r1,14
	mov_s	r14,1	;3
	mov_s	r12,2	;3
	mov_s	r13,2	;3
	.align 2
.L1181:
	cmp_s	r0,r1
	blo	.L1163
	sub_s	r1,r0,r1
	exth_s	r0,r1
	b.d	.L1163
	or_s	r13,r13,r14
	.align 4
.L1134:
	blo	.L1187
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,4	;3
	b.d	.L1163
	mov_s	r13,4	;3
	.align 4
.L1135:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2	;3
	mov_s	r12,4	;3
	b.d	.L1181
	mov_s	r13,4	;3
	.align 4
.L1136:
	blo	.L1188
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,8	;3
	b.d	.L1163
	mov_s	r13,8	;3
	.align 4
.L1137:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4	;3
	mov_s	r12,8	;3
	b.d	.L1181
	mov_s	r13,8	;3
	.align 4
.L1138:
	blo	.L1189
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,16	;3
	b.d	.L1163
	mov_s	r13,16	;3
	.align 4
.L1139:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8	;3
	mov_s	r12,16	;3
	b.d	.L1181
	mov_s	r13,16	;3
	.align 4
.L1140:
	blo	.L1190
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,32	;3
	b.d	.L1163
	mov_s	r13,32	;3
	.align 4
.L1141:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,16	;3
	mov_s	r12,32	;3
	b.d	.L1181
	mov_s	r13,32	;3
	.align 4
.L1142:
	blo	.L1191
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,64	;3
	b.d	.L1163
	mov_s	r13,64	;3
	.align 4
.L1143:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,32	;3
	mov_s	r12,64	;3
	b.d	.L1181
	mov_s	r13,64	;3
	.align 4
.L1144:
	blo	.L1192
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,128	;3
	b.d	.L1163
	mov_s	r13,128	;3
	.align 4
.L1145:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,64	;3
	mov_s	r12,128	;3
	b.d	.L1181
	mov_s	r13,128	;3
	.align 4
.L1147:
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,128	;3
	b.d	.L1181
	mov_s	r13,r12	;4
	.align 4
.L1149:
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,256	;6
	b.d	.L1181
	mov_s	r13,r12	;4
	.align 4
.L1186:
	mov_s	r12,2	;3
	.align 2
.L1180:
	lsr_s	r14,r12
	.align 2
.L1245:
	lsr_s	r1,r3
	b.d	.L1181
	mov_s	r13,0	;3
	.align 4
.L1151:
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,512	;6
	b.d	.L1181
	mov_s	r13,r12	;4
	.align 4
.L1153:
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,1024	;6
	b.d	.L1181
	mov_s	r13,r12	;4
	.align 4
.L1187:
	b.d	.L1180
	mov_s	r12,4	;3
	.align 4
.L1188:
	b.d	.L1180
	mov_s	r12,8	;3
	.align 4
.L1155:
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2048	;13
	b.d	.L1181
	mov_s	r13,r12	;4
	.align 4
.L1157:
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4096	;13
	b.d	.L1181
	mov_s	r13,r12	;4
	.align 4
.L1189:
	b.d	.L1180
	mov_s	r12,16	;3
	.align 4
.L1159:
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8192	;13
	b.d	.L1181
	mov_s	r13,r12	;4
	.align 4
.L1190:
	b.d	.L1180
	mov_s	r12,32	;3
	.align 4
.L1191:
	b.d	.L1180
	mov_s	r12,64	;3
	.align 4
.L1160:
	mov_s	r3,32768	;13
	btst_s	r0,15
	mov_s	r12,r3	;4
	mov_s.ne	r13,r3
	bne.d	.L1163
	sub_s.ne	r0,r0,r0
	b.d	.L1245
	lsr_s	r14,r12
	.align 4
.L1244:
	mov_s	r3,32768	;13
	mov_s	r1,16384	;13
	xor_s	r0,r0,r3
	mov_s	r14,r1	;4
	mov_s	r12,r3	;4
	b.d	.L1181
	mov_s	r13,r3	;4
	.align 4
.L1192:
	b.d	.L1180
	mov_s	r12,128	;3
	.align 4
.L1146:
	blo_s	.L1193
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	b.d	.L1163
	mov_s	r13,r12	;4
	.align 4
.L1193:
	b.d	.L1180
	mov	r12,256	;6
	.align 4
.L1150:
	blo_s	.L1195
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	b.d	.L1163
	mov_s	r13,r12	;4
	.align 4
.L1158:
	blo_s	.L1199
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	b.d	.L1163
	mov_s	r13,r12	;4
	.align 4
.L1195:
	b.d	.L1180
	mov	r12,1024	;6
	.align 4
.L1199:
	mov_s	r12,16384	;13
	b.d	.L1245
	lsr_s	r14,r12
	.align 4
.L1194:
	b.d	.L1180
	mov	r12,512	;6
	.align 4
.L1156:
	blo_s	.L1198
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	b.d	.L1163
	mov_s	r13,r12	;4
	.align 4
.L1154:
	blo_s	.L1197
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	b.d	.L1163
	mov_s	r13,r12	;4
	.align 4
.L1152:
	blo_s	.L1196
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	b.d	.L1163
	mov_s	r13,r12	;4
	.align 4
.L1198:
	mov_s	r12,8192	;13
	b.d	.L1245
	lsr_s	r14,r12
	.align 4
.L1197:
	mov_s	r12,4096	;13
	b.d	.L1245
	lsr_s	r14,r12
	.align 4
.L1196:
	mov_s	r12,2048	;13
	b.d	.L1245
	lsr_s	r14,r12
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1271
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1270	; lp_count:@.L1247->@.L1270
	.align 2
.L1247:
	brlt	r1,0,.L1248
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1249
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1270:
	; ZOL_END, begins @.L1247
	.align 2
.L1250:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1249:
	tst_s	r3,r3
	beq.d	.L1250
	mov.eq	r12,0
	.align 2
.L1248:
	mov_s	r12,0	;3
	.align 2
.L1253:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1253
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1265:
	cmp_s	r0,r1
	.align 4
.L1271:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1265
	lsr_s	r1,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1273
	asl	r1,r0,r2
	mov_s	r2,0	;3
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.align 4
.L1273:
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
	bbit0	r2,5,@.L1279
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1279:
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
	blt_s	.L1294
	bgt_s	.L1295
	cmp_s	r0,r2
	blo_s	.L1294
	bhi_s	.L1295
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1294:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1295:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1301
	bgt_s	.L1300
	brlo	r0,r2,.L1301
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1301:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1300:
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
	bbit0.d	r2,5,@.L1306
	mov_s	r3,r1	;4
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L1306:
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
	bbit0.d	r2,0,@.L1326
	mov_s	r16,0	;4
	.align 2
.L1328:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L1326:
	div	r13,r13,2
	breq_s	r13,0,.L1327
	.align 2
.L1329:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L1328
	b.d	.L1329
	div	r13,r13,2
	.align 4
.L1327:
	brge	r18,0,.L1325
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	.align 2
.L1325:
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
	bbit0.d	r1,0,@.L1334
	mov_s	r14,r1	;4
	.align 2
.L1336:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r13
	mov_s	r15,r0
	.align 2
.L1334:
	div	r14,r14,2
	breq_s	r14,0,.L1335
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1336
	mov_s	r13,r0
	div	r14,r14,2
	.align 2
.L1342:
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1336
	mov_s	r13,r0
	b.d	.L1342
	div	r14,r14,2
	.align 4
.L1335:
	brge	r16,0,.L1333
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	mov_s	r15,r0
	.align 2
.L1333:
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
	blo_s	.L1347
	bhi_s	.L1348
	cmp_s	r0,r2
	blo_s	.L1347
	bhi_s	.L1348
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1347:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1348:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1354
	bhi_s	.L1353
	brlo	r0,r2,.L1354
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1354:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1353:
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
