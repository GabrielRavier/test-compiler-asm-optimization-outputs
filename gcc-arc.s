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
	add_s	r12,r1,r2   ;a,b,c/u3
	tst_s	r2,r2
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
	breq_s	r3,0,.L33
	push_s	r14
	push_s	r13
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	mov_s	r12,r0	;4
	mov_s	r14,r3	;4
	mov	lp_count,r14	;5
	lp	@.L38	; lp_count:@.L22->@.L38
	.align 2
.L22:
	mov_s	r0,r12	;4
	ldb.a	r13,[r1,1]
	breq.d	r13,r2,.L37
	stb.ab	r13,[r12,1]
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L38:
	; ZOL_END, begins @.L22
	.align 2
.L25:
	b.d	.L20
	mov_s	r0,0	;3
	.align 4
.L37:
	tst_s	r3,r3
	beq.d	.L25
	mov_s.ne	r0,r12
.L20:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L33:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	breq_s	r2,0,.L50
	push_s	r13
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L55	; lp_count:@.L41->@.L55
	.align 2
.L41:
	mov_s	r0,r3	;4
	ldb_s	r13,[r0]
	breq.d	r13,r1,.L54
	add_s	r3,r3,1   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L55:
	; ZOL_END, begins @.L41
	.align 2
.L45:
	b.d	.L39
	mov_s	r0,0	;3
	.align 4
.L54:
	breq_s	r2,0,.L45
.L39:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L50:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L69
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r13,r2	;4
	mov	lp_count,r13	;5
	lp	@.L74	; lp_count:@.L58->@.L74
	.align 2
.L58:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	add_s	r12,r12,1   ;b,b,h
	ldb_s	r15,[r0]
	ldb_s	r14,[r1]
	brne.d	r15,r14,.L73
	add_s	r3,r3,1   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L74:
	; ZOL_END, begins @.L58
	b.d	.L75
	mov_s	r0,0	;3
	.align 4
.L73:
	tst_s	r2,r2
	mov_s.ne	r0,r15
	mov_s.ne	r2,r14
	bne.d	.L56
	sub.ne	r0,r0,r2
	mov_s	r0,0	;3
.L56:
	.align 2
.L75:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L69:
	j_s.d	[blink]
	mov_s	r0,0	;3
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
	extb_s	r1,r1
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	sub	r12,r0,1 ;a,b,u6
	.align 2
.L83:
	breq	r2,r12,.L87
	mov_s	r0,r2	;4
	ldb_s	r3,[r0]
	brne.d	r3,r1,.L83
	add_s	r2,r2,-1   ;h,h,s3
	j_s	[blink]
	.align 4
.L87:
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
	mov	lp_count,r2	;5
	lp	@.L98	; lp_count:@.L91->@.L98
	.align 2
.L91:
	stb.ab	r1,[r3,1]
	.align 2
.L98:
	; ZOL_END, begins @.L91
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
.L101:
	mov_s	r0,r2	;4
	ldb.a	r3,[r1,1]
	brne.d	r3,0,.L101
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
	.align 2
.L107:
	cmp_s	r2,r1
	jeq_s	[blink]
	ldb.a	r2,[r0,1]
	brne_s	r2,0,.L107
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L119:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r3,r1
	jeq_s	[blink]
	brne_s	r3,0,.L119
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	brne	r2,r3,.L123
	.align 2
.L124:
	breq_s	r2,0,.L123
	ldb.a	r2,[r0,1]
	ldb.a	r3,[r1,1]
	breq	r2,r3,.L124
	.align 2
.L123:
	j_s.d	[blink]
	sub_s	r0,r2,r3
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	tst_s	r2,r2
	beq.d	.L128
	mov_s	r2,r0	;4
	.align 2
.L129:
	ldb.a	r3,[r2,1]
	brne_s	r3,0,.L129
	.align 2
.L128:
	j_s.d	[blink]
	sub_s	r0,r2,r0
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L138
	ldb_s	r12,[r0]
	breq_s	r12,0,.L147
	push_s	r13
	mov_s	r3,r1	;4
	add_s	r2,r2,r1   ;b,b,h
	.align 2
.L136:
	mov_s	r1,r3	;4
	ldb.ab	r13,[r3,1]
	breq_s	r13,0,.L135
	breq	r3,r2,.L135
	brne	r13,r12,.L135
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L136
	mov_s	r1,r3	;4
	.align 2
.L135:
	ldb_s	r2,[r1]
	sub_s	r0,r12,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L138:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L147:
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
	lp	@.L157	; lp_count:@.L153->@.L157
	.align 2
.L153:
	ldb_s	r3,[r0,1]
	stb_s	r3,[r1]
	ldb.ab	r3,[r0,2]
	stb_s	r3,[r1,1]
	add_s	r1,r1,2   ;b,b,h
	.align 2
.L157:
	; ZOL_END, begins @.L153
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
	brls	r0,31,.L188
	add	r2,r0,-127     ;a,b,limm
	brls	r2,32,.L188
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L188
	add_s	r0,r0,-65529   ;b,b,limm
	j_s.d	[blink]
	setlo	r0,r0,3
	.align 4
.L188:
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
	brls	r0,254,.L200
	brls	r0,8231,.L197
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L197
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L197
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L198
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L200:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L197:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L198:
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
	brne_s	r0,0,.L210
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L211
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L207
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L207:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L210:
	vadd2	r0,r14,0
	b_s	.L207
	.align 4
.L211:
	vadd2	r0,r16,0
	b_s	.L207
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
	bne.d	.L216
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L216
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L216:
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
	brne	r0,0,.L231
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L232
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L227
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.ne	r0,r14
	mov.ne	r1,r15
.L225:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L227:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L225
	.align 4
.L231:
	vadd2	r0,r14,0
	b_s	.L225
	.align 4
.L232:
	vadd2	r0,r16,0
	b_s	.L225
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
	bne.d	.L235
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L235
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	bmskn	r2,r2,30
	mov_s	r3,r13	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L237
	tst_s	r2,r2
	mov.ne	r14,r13
	mov_s	r0,r14
.L235:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L237:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.p	r13,r14
	b.d	.L235
	mov_s	r0,r13
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
	brne	r0,0,.L251
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L252
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L247
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.ne	r0,r14
	mov.ne	r1,r15
.L245:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L247:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L245
	.align 4
.L251:
	vadd2	r0,r14,0
	b_s	.L245
	.align 4
.L252:
	vadd2	r0,r16,0
	b_s	.L245
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
	brne	r0,0,.L261
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L262
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L257
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
.L255:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L257:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
	b_s	.L255
	.align 4
.L261:
	vadd2	r0,r14,0
	b_s	.L255
	.align 4
.L262:
	vadd2	r0,r16,0
	b_s	.L255
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
	bne.d	.L265
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L265
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	bmskn	r2,r2,30
	mov_s	r3,r13	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L267
	tst_s	r2,r2
	mov.ne	r13,r14
	mov_s	r0,r13
.L265:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L267:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.p	r14,r13
	b.d	.L265
	mov_s	r0,r14
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
	brne	r0,0,.L281
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L282
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	breq	r2,r3,.L277
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
.L275:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L277:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
	b_s	.L275
	.align 4
.L281:
	vadd2	r0,r14,0
	b_s	.L275
	.align 4
.L282:
	vadd2	r0,r16,0
	b_s	.L275
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L286
	.align 2
.L287:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	lsr.f	r0,r0,6
	bne.d	.L287
	stb.ab	r3,[r2,1]
	.align 2
.L286:
	stb	0,[r2]
	mov_s	r0,@s.0	;13
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
	ld	r12,[@seed+4]	;23
	mpy	r12,r12,1284865837
	ld	r2,[@seed]	;23
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
	breq_s	r1,0,.L302
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
.L302:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L304
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L304:
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
	breq.d	r15,0,.L314
	mov_s	r16,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	mov_s	r14,0	;3
	.align 2
.L316:
	mov_s	r19,r13	;4
	mov_s	r1,r13	;4
	jl.d	[r18]
	mov_s	r0,r17	;4
	breq_s	r0,0,.L313
	add_s	r14,r14,1   ;b,b,h
	brne.d	r15,r14,.L316
	add_s	r13,r13,r16   ;b,b,h
	.align 2
.L314:
	add_s	r2,r15,1   ;a,b,c/u3
	st	r2,[r20]	;26
	mpy	r15,r15,r16
	mov_s	r2,r16	;4
	mov_s	r1,r17	;4
	bl.d	@memcpy;1
	add	r0,r21,r15 ;a,b,c/u6
	mov_s	r19,r0	;4
	.align 2
.L313:
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
	breq	r18,0,.L326
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	mov_s	r14,0	;3
	.align 2
.L328:
	mov_s	r19,r13	;4
	mov_s	r1,r13	;4
	jl.d	[r16]
	mov_s	r0,r15	;4
	breq_s	r0,0,.L325
	add_s	r14,r14,1   ;b,b,h
	brne.d	r18,r14,.L328
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L326:
	mov_s	r19,0	;4
	.align 2
.L325:
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
.L340:
	mov_s	r14,r13	;4
	ldb.ab	r15,[r13,1]
	bl.d	@isspace;1
	mov_s	r0,r15	;4
	brne_s	r0,0,.L340
	breq	r15,43,.L346
	cmp_s	r15,45
	beq.d	.L341
	mov.eq	r3,1
	b.d	.L342
	mov_s	r3,0	;3
	.align 4
.L346:
	mov_s	r3,0	;3
	.align 2
.L341:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L342:
	ldb_s	r2,[r14]
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L344
	.align 2
.L343:
	mpy	r0,r0,10
	sub_s	r0,r0,r2
	ldb.a	r2,[r14,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L343
	.align 2
.L344:
	tst_s	r3,r3
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
.L353:
	mov_s	r14,r13	;4
	ldb.ab	r15,[r13,1]
	bl.d	@isspace;1
	mov_s	r0,r15	;4
	brne_s	r0,0,.L353
	breq	r15,43,.L359
	cmp_s	r15,45
	beq.d	.L354
	mov.eq	r3,1
	b.d	.L355
	mov_s	r3,0	;3
	.align 4
.L359:
	mov_s	r3,0	;3
	.align 2
.L354:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L355:
	ldb_s	r2,[r14]
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L357
	.align 2
.L356:
	mpy	r0,r0,10
	sub_s	r0,r0,r2
	ldb.a	r2,[r14,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L356
	.align 2
.L357:
	tst_s	r3,r3
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
.L366:
	mov_s	r14,r13	;4
	ldb.ab	r15,[r13,1]
	bl.d	@isspace;1
	mov_s	r0,r15	;4
	mov.f	r3,r0
	bne_s	.L366
	breq	r15,43,.L367
	brne	r15,45,.L368
	mov_s	r3,1	;3
	.align 2
.L367:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L368:
	ldb_s	r2,[r14]
	sub3	r2,r2,6 ;a,b,u6
	mov_s	r0,0	;3
	brhi.d	r2,9,.L370
	mov_s	r1,0	;3
	.align 2
.L369:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	add_s	r13,r13,r1   ;b,b,h
	asr	r1,r2,31
	sub.f	r0,r12,r2
	sbc	r1,r13,r1
	ldb.a	r2,[r14,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L369
	.align 2
.L370:
	brne_s	r3,0,.L365
	rsub.f	r0,r0,0
	sbc	r1,0,r1
.L365:
	ld	blink,[sp,12]	;23
	pop_s	r13
	ldd.ab	r14,[sp,12]
	j_s	[blink]
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
	beq_s	.L380
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	b.d	.L383
	mov_s	r18,r4	;4
	.align 4
.L384:
	mov_s	r13,r15	;4
	.align 2
.L381:
	breq_s	r13,0,.L380
	.align 2
.L383:
	lsr_s	r15,r13
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	brlt	r0,0,.L384
	brle	r0,0,.L379
	add	r17,r14,r16 ;a,b,c/u6
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L381
	sub_s	r13,r13,r15
	.align 4
.L380:
	mov_s	r14,0	;3
	.align 2
.L379:
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
	breq_s	r2,0,.L391
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r13,r2	;4
	mov_s	r16,r3	;4
	mov_s	r20,r4	;4
	b.d	.L394
	mov_s	r18,r5	;4
	.align 4
.L393:
	breq.d	r15,0,.L391
	mov_s	r13,r15	;4
	.align 2
.L394:
	asr_s	r15,r13,1
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r2,r18	;4
	mov_s	r1,r14	;4
	jl.d	[r20]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L390
	brle	r0,0,.L393
	add	r17,r14,r16 ;a,b,c/u6
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L393
	asr_s	r15,r13,1
	.align 4
.L391:
	mov_s	r14,0	;3
	.align 2
.L390:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	div	r12,r1,r2
	st_s	r12,[r0]		;16
	rem	r1,r1,r2
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
	st_s	r12,[r0]		;16
	rem	r1,r1,r2
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
	breq_s	r2,0,.L423
	.align 2
.L418:
	breq	r1,r2,.L427
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L418
	.align 2
.L423:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L427:
	tst_s	r2,r2
	jne_s	[blink]
	b_s	.L423
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	brne	r2,r3,.L429
	.align 2
.L430:
	breq_s	r2,0,.L429
	breq_s	r3,0,.L429
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	breq	r2,r3,.L430
	.align 2
.L429:
	brlt	r2,r3,.L433
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L433:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L439:
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L439
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	beq.d	.L445
	mov_s	r2,r0	;4
	.align 2
.L446:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L446
	.align 2
.L445:
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L464
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r14,r2	;4
	mov	lp_count,r14	;5
	lp	@.L467	; lp_count:@.L452->@.L467
	.align 2
.L452:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	ld.ab	r13,[r12,4]	;23
	ld_s	r15,[r1]		;15
	brne.d	r13,r15,.L451
	add_s	r3,r3,4   ;b,b,h
	breq_s	r13,0,.L451
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L467:
	; ZOL_END, begins @.L452
	.align 2
.L455:
	mov_s	r0,0	;3
.L450:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L451:
	breq_s	r2,0,.L455
	ld_s	r0,[r0]		;15
	ld_s	r2,[r1]		;15
	cmp_s	r0,r2
	bge.d	.L450
	setgt.ge	r0,r0,r2
	b.d	.L450
	mov_s	r0,-1	;4
	.align 4
.L464:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	breq_s	r2,0,.L479
	push_s	r13
	mov_s	r3,r0	;4
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L484	; lp_count:@.L470->@.L484
	.align 2
.L470:
	mov_s	r0,r3	;4
	ld_s	r13,[r0]		;15
	breq.d	r13,r1,.L483
	add_s	r3,r3,4   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L484:
	; ZOL_END, begins @.L470
	.align 2
.L474:
	b.d	.L468
	mov_s	r0,0	;3
	.align 4
.L483:
	breq_s	r2,0,.L474
.L468:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L479:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L499
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r13,r2	;4
	mov	lp_count,r13	;5
	lp	@.L503	; lp_count:@.L487->@.L503
	.align 2
.L487:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	add_s	r12,r12,4   ;b,b,h
	ld_s	r15,[r0]		;15
	ld_s	r14,[r1]		;15
	brne.d	r15,r14,.L502
	add_s	r3,r3,4   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L503:
	; ZOL_END, begins @.L487
	.align 2
.L490:
	mov_s	r0,0	;3
.L485:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L502:
	breq_s	r2,0,.L490
	mov_s	r0,r15	;4
	cmp_s	r15,r14
	bge.d	.L485
	setgt.ge	r0,r0,r14
	b.d	.L485
	mov_s	r0,-1	;4
	.align 4
.L499:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	push_s	blink
	push_s	r13
	mov_s	r13,r0	;4
	tst_s	r2,r2
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
	brlo	r12,r3,.L512
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
	.align 4
.L512:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,r3   ;b,b,h
	add_s	r12,r0,r3   ;a,b,c/u3
	sub2	r2,r3,1 ;a,b,u6
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L525	; lp_count:@.L514->@.L525
	.align 2
.L514:
	ld.a	r3,[r1,-4]	;23
	st.a	r3,[r12,-4]	;26
	.align 2
.L525:
	; ZOL_END, begins @.L514
	j_s	[blink]
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r12,r0	;4
	mov	lp_count,r2	;5
	lp	@.L536	; lp_count:@.L529->@.L536
	.align 2
.L529:
	st.ab	r1,[r12,4]	;26
	.align 2
.L536:
	; ZOL_END, begins @.L529
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L538
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L554	; lp_count:@.L540->@.L554
	.align 2
.L540:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L554:
	; ZOL_END, begins @.L540
	j_s	[blink]
	.align 4
.L538:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L553	; lp_count:@.L541->@.L553
	.align 2
.L541:
	ldb.ab	r3,[r0,1]
	stb.a	r3,[r1,1]
	.align 2
.L553:
	; ZOL_END, begins @.L541
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
	mov_s	r2,r0	;4
	swape	r0,r1
	j_s.d	[blink]
	swape	r1,r2
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	mov_s	r2,0	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L589	; lp_count:@.L584->@.L589
	.align 2
.L584:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L588
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L589:
	; ZOL_END, begins @.L584
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L588:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L593
	bbit1.d	r2,0,@.L597
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L592:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L592
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L597:
	j_s	[blink]
	.align 4
.L593:
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
	bn.d	.L598
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L598:
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
	bn.d	.L603
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L603:
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
	bn.d	.L608
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L608:
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
	brne_s	r0,0,.L616
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	bl.d	@__nesf2;1
	mov_s	r1,r15
	breq_s	r0,0,.L616
	tst_s	r13,r13
	mov_s	r14,0x3f000000 ; 5.0e-1
	mov.p	r14,0x40000000 ; 2.0e+0
	b_s	.L620
	.align 4
.L619:
	div	r13,r13,2
	breq_s	r13,0,.L616
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	mov_s	r14,r0
	.align 2
.L620:
	bbit0	r13,0,@.L619
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L619
	mov_s	r15,r0
	.align 4
.L616:
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
	brne	r0,0,.L628
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L628
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L632
	.align 4
.L631:
	div	r13,r13,2
	.align 4
.L639:
	breq_s	r13,0,.L628
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L632:
	bbit0	r13,0,@.L631
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L639
	.align 4
.L628:
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
	brne	r0,0,.L641
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L641
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L645
	.align 4
.L644:
	div	r13,r13,2
	.align 4
.L652:
	breq_s	r13,0,.L641
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L645:
	bbit0	r13,0,@.L644
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L652
	.align 4
.L641:
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
	lp	@.L665	; lp_count:@.L655->@.L665
	.align 2
.L655:
	ldb.ab	r3,[r12,1]
	ldb.ab	r13,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L665:
	; ZOL_END, begins @.L655
	j_s.d	[blink]
	pop_s	r13
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	push_s	blink
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r15,r0	;4
	mov_s	r13,r1	;4
	bl.d	@strlen;1
	mov_s	r14,r2	;4
	breq.d	r14,0,.L672
	add_s	r2,r15,r0   ;a,b,c/u3
	sub	r1,r13,1 ;a,b,u6
	mov_s	r3,r2	;4
	mov_s	r13,r14	;4
	mov	lp_count,r13	;5
	lp	@.L678	; lp_count:@.L668->@.L678
	.align 2
.L668:
	mov_s	r2,r3	;4
	ldb.a	r12,[r1,1]
	breq.d	r12,0,.L677
	stb.ab	r12,[r3,1]
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L678:
	; ZOL_END, begins @.L668
	b.d	.L672
	mov_s	r2,r3	;4
	.align 4
.L677:
	brne_s	r14,0,.L670
	.align 2
.L672:
	stb	0,[r2]
	.align 2
.L670:
	mov_s	r0,r15	;4
	ld	blink,[sp,12]	;23
	pop_s	r13
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L683
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L688	; lp_count:@.L681->@.L688
	.align 2
.L681:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L688:
	; ZOL_END, begins @.L681
	j_s	[blink]
	.align 4
.L683:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L696
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L690:
	mov_s	r3,r13	;4
	.align 2
.L693:
	ldb.a	r2,[r3,1]
	breq_s	r2,0,.L701
	brne	r2,r12,.L693
.L691:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L696:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L701:
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L690
	b.d	.L691
	mov_s	r0,0	;3
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	.align 2
.L704:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r3,r1
	mov.ne	r12,r0
	brne.d	r3,0,.L704
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
	beq_s	.L710
	ldb	r16,[r14]
	.align 2
.L712:
	mov_s	r1,r16	;4
	bl.d	@strchr;1
	mov_s	r0,r13	;4
	mov.f	r13,r0
	beq_s	.L710
	mov_s	r2,r15	;4
	bl.d	@strncmp;1
	mov_s	r1,r14	;4
	breq_s	r0,0,.L710
	b.d	.L712
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L710:
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
	brlt	r0,0,.L729
	.align 2
.L720:
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L723
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L722
	.align 2
.L723:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L729:
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L720
	.align 2
.L722:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L723
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
	mov_s	r13,r0	;4
	tst_s	r3,r3
	beq.d	.L730
	mov.eq	r15,r0
	brlo	r1,r3,.L736
	sub_s	r14,r1,r3
	add.f	r14,r0,r14
	blo_s	.L736
	mov_s	r18,r2	;4
	ldb.ab	r17,[r18,1]
	b.d	.L733
	sub	r16,r3,1 ;a,b,u6
	.align 4
.L732:
	brhi	r13,r14,.L736
	.align 2
.L733:
	ldb_s	r3,[r13]
	mov_s	r15,r13	;4
	brne.d	r3,r17,.L732
	add_s	r13,r13,1   ;b,b,h
	mov_s	r2,r16	;4
	mov_s	r1,r18	;4
	bl.d	@memcmp;1
	mov_s	r0,r13	;4
	brne_s	r0,0,.L732
	b.d	.L742
	mov_s	r0,r15	;4
	.align 4
.L736:
	mov_s	r15,0	;3
	.align 2
.L730:
	mov_s	r0,r15	;4
	.align 2
.L742:
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
	bn.d	.L773
	mov.p	r21,0
	.align 2
.L746:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L769
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L750:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__gedf2;1
	brge	r0,0,.L750
	.align 2
.L751:
	breq.d	r21,0,.L755
	st	r13,[r20]	;26
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L755:
	vadd2	r0,r14,0
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L773:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b.d	.L746
	mov_s	r21,1	;4
	.align 4
.L769:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L751
	mov.p	r13,0
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	breq.d	r0,0,.L751
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L754:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__ltdf2;1
	brlt	r0,0,.L754
	b_s	.L751
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or.f	0,r0,r1
	beq.d	.L778
	mov_s	r12,r2	;4
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r15,r3	;4
	mov_s	r14,r1	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L777:
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
	bne_s	.L777
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L778:
	mov_s	r0,0	;3
	j_s.d	[blink]
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov_s	r3,1	;3
	cmp_s	r1,r0
	bhs.d	.L800
	mov.lo	r12,32
	.align 2
.L804:
	mov	lp_count,r12	;5
	lp	@.L803	; lp_count:@.L785->@.L803
	.align 2
.L785:
	brlt	r1,0,.L786
	asl_s	r1,r1,1
	brls.d	r0,r1,.L786
	asl_s	r3,r3,1
	nop_s
	.align 2
.L803:
	; ZOL_END, begins @.L785
	.align 2
.L794:
	b.d	.L788
	mov_s	r12,0	;3
	.align 4
.L786:
	breq_s	r3,0,.L794
	.align 2
.L800:
	mov_s	r12,0	;3
	.align 2
.L790:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L790
	lsr_s	r1,r1
	.align 2
.L788:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L807
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L807:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L818
	xor	r12,r1,r3
	.align 2
.L815:
	fls	r0,r2
	breq.d	r12,0,.L813
	rsub	r0,r0,63
	fls	r12,r12
	rsub	r0,r12,31
	.align 2
.L813:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L818:
	brne	r1,r0,.L815
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
.L821:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L821
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L828
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L828
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L856	; lp_count:@.L834->@.L856
	.align 2
.L834:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r0,-1]
	.align 2
.L856:
	; ZOL_END, begins @.L834
	j_s	[blink]
	.align 4
.L828:
	breq	r3,0,.L846
	std.a	r14,[sp,-8]
	push_s	r13
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L855	; lp_count:@.L832->@.L855
	.align 2
.L832:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L855:
	; ZOL_END, begins @.L832
	brls	r2,r4,.L827
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L854	; lp_count:@.L833->@.L854
	.align 2
.L833:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L854:
	; ZOL_END, begins @.L833
	.align 2
.L827:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L846:
	cmp_s	r2,r4
	jls	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L853	; lp_count:@.L848->@.L853
	.align 2
.L848:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L853:
	; ZOL_END, begins @.L848
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brlo.d	r0,r1,.L858
	lsr_s	r3,r2
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L858
	breq_s	r2,0,.L857
	add_s	r3,r0,r2   ;a,b,c/u3
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L873	; lp_count:@.L863->@.L873
	.align 2
.L863:
	ldb.a	r13,[r12,-1]
	stb.a	r13,[r3,-1]
	.align 2
.L873:
	; ZOL_END, begins @.L863
	b_s	.L857
	.align 4
.L858:
	breq_s	r3,0,.L861
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	add1	r3,-2,r3
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L872	; lp_count:@.L862->@.L872
	.align 2
.L862:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L872:
	; ZOL_END, begins @.L862
	.align 2
.L861:
	bbit0	r2,0,@.L857
	mov_s	r3,r2	;4
	add_s	r2,r1,r2   ;a,b,c/u3
	ldb	r2,[r2,-1]
	add_s	r3,r3,r0   ;b,b,h
	stb	r2,[r3,-1]
	.align 2
.L857:
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
	brlo.d	r0,r1,.L875
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L875
	breq_s	r2,0,.L874
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L894	; lp_count:@.L881->@.L894
	.align 2
.L881:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r0,-1]
	.align 2
.L894:
	; ZOL_END, begins @.L881
	b_s	.L874
	.align 4
.L875:
	breq_s	r3,0,.L878
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	add2	r3,-4,r3
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L893	; lp_count:@.L879->@.L893
	.align 2
.L879:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L893:
	; ZOL_END, begins @.L879
	.align 2
.L878:
	brls	r2,r15,.L874
	add_s	r15,r15,-1   ;h,h,s3
	add_s	r3,r1,r15   ;a,b,c/u3
	add_s	r0,r0,r15   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L892	; lp_count:@.L880->@.L892
	.align 2
.L880:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L892:
	; ZOL_END, begins @.L880
	.align 2
.L874:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
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
	lp	@.L913	; lp_count:@.L909->@.L913
	.align 2
.L909:
	rsub	r3,r0,15
	bbit1	r12,r3,@.L914
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L913:
	; ZOL_END, begins @.L909
	.align 2
.L914:
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
	lp	@.L921	; lp_count:@.L917->@.L921
	.align 2
.L917:
	bbit1	r3,r0,@.L922
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L921:
	; ZOL_END, begins @.L917
	.align 2
.L922:
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
	brge	r0,0,.L930
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L923:
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L930:
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L923
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
	lp	@.L936	; lp_count:@.L932->@.L936
	.align 2
.L932:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L936:
	; ZOL_END, begins @.L932
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
	lp	@.L942	; lp_count:@.L938->@.L942
	.align 2
.L938:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L942:
	; ZOL_END, begins @.L938
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
.L945:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L945
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
.L953:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	lsr.f	r1,r1,1
	bne.d	.L953
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov_s	r3,1	;3
	cmp_s	r1,r0
	bhs.d	.L976
	mov.lo	r12,32
	.align 2
.L980:
	mov	lp_count,r12	;5
	lp	@.L979	; lp_count:@.L961->@.L979
	.align 2
.L961:
	brlt	r1,0,.L962
	asl_s	r1,r1,1
	brls.d	r0,r1,.L962
	asl_s	r3,r3,1
	nop_s
	.align 2
.L979:
	; ZOL_END, begins @.L961
	.align 2
.L970:
	b.d	.L964
	mov_s	r12,0	;3
	.align 4
.L962:
	breq_s	r3,0,.L970
	.align 2
.L976:
	mov_s	r12,0	;3
	.align 2
.L966:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L966
	lsr_s	r1,r1
	.align 2
.L964:
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
	bn	.L981
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L981:
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
	bn	.L986
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L986:
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
	mov_s	r3,r0	;4
	tst_s	r1,r1
	neg.n	r1,r1
	mov.n	r13,1
	mov.p	r13,0
	breq.d	r1,0,.L997
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1011	; lp_count:@.L998->@.L1011
	.align 2
.L998:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	asr.f	r1,r1,1
	beq.d	.L997
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1011:
	; ZOL_END, begins @.L998
	.align 2
.L997:
	tst_s	r13,r13
	neg.ne	r0,r0
	j_s.d	[blink]
	pop_s	r13
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push_s	blink
	push_s	r13
	tst_s	r0,r0
	neg.n	r0,r0
	mov.n	r13,1
	mov.p	r13,0
	tst_s	r1,r1
	neg.n	r1,r1
	bxor.n r13,r13,0
	bl.d	@__udivmodsi4;1
	mov_s	r2,0	;3
	tst_s	r13,r13
	neg.ne	r0,r0
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push_s	blink
	push_s	r13
	tst_s	r0,r0
	neg.n	r0,r0
	mov.n	r13,1
	mov.p	r13,0
	mov_s	r2,1	;3
	bl.d	@__udivmodsi4;1
	abs_s	r1,r1
	tst_s	r13,r13
	neg.ne	r0,r0
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	exth_s	r0,r0
	exth_s	r1,r1
	mov_s	r3,1	;3
	cmp_s	r1,r0
	bhs.d	.L1045
	mov.lo	r12,16
	.align 2
.L1049:
	mov	lp_count,r12	;5
	lp	@.L1048	; lp_count:@.L1030->@.L1048
	.align 2
.L1030:
	btst_s	r1,15
	bne_s	.L1031
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	brls.d	r0,r1,.L1031
	exth_s	r3,r3
	nop_s
	.align 2
.L1048:
	; ZOL_END, begins @.L1030
	.align 2
.L1039:
	b.d	.L1033
	mov_s	r12,0	;3
	.align 4
.L1031:
	breq_s	r3,0,.L1039
	.align 2
.L1045:
	mov_s	r12,0	;3
	.align 2
.L1035:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	bmsk.hs	r0,r0,15
	or.hs r12,r12,r3
	bmsk.hs	r12,r12,15
	lsr.f	r3,r3,1
	bne.d	.L1035
	lsr_s	r1,r1
	.align 2
.L1033:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov_s	r3,1	;3
	cmp_s	r1,r0
	bhs.d	.L1066
	mov.lo	r12,32
	.align 2
.L1070:
	mov	lp_count,r12	;5
	lp	@.L1069	; lp_count:@.L1051->@.L1069
	.align 2
.L1051:
	brlt	r1,0,.L1052
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1052
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1069:
	; ZOL_END, begins @.L1051
	.align 2
.L1060:
	b.d	.L1054
	mov_s	r12,0	;3
	.align 4
.L1052:
	breq_s	r3,0,.L1060
	.align 2
.L1066:
	mov_s	r12,0	;3
	.align 2
.L1056:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1056
	lsr_s	r1,r1
	.align 2
.L1054:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1072
	asl	r1,r0,r2
	mov_s	r12,0	;3
	.align 2
.L1073:
	j_s.d	[blink]
	mov_s	r0,r12	;4
	.align 4
.L1072:
	tst_s	r2,r2
	jeq_s	[blink]
	asl	r12,r0,r2
	rsub	r3,r2,32
	lsr	r3,r0,r3
	asl_s	r1,r1,r2
	b.d	.L1073
	or_s	r1,r1,r3
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0	r2,5,@.L1078
	asr	r12,r1,31
	asr	r0,r1,r2
	.align 2
.L1079:
	j_s.d	[blink]
	mov_s	r1,r12	;4
	.align 4
.L1078:
	tst_s	r2,r2
	jeq_s	[blink]
	asr	r12,r1,r2
	rsub	r3,r2,32
	asl	r3,r1,r3
	lsr_s	r0,r0,r2
	b.d	.L1079
	or_s	r0,r0,r3
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	mov_s	r2,r0	;4
	swape	r0,r1
	j_s.d	[blink]
	swape	r1,r2
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
	add2_s	r12,r12,r3
	and	r3,r2,12
	seteq	r3,r3,0
	sub1	r13,2,r3
	lsr_s	r2,r2,r13
	rsub	r0,r2,2
	btst_s	r2,1
	mov_s	r2,0	;3
	mov.eq	r2,r0
	mov_s	r0,r2	;4
	add1	r3,r12,r3
	add_s	r0,r0,r3   ;b,b,h
	j_s.d	[blink]
	pop_s	r13
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp_s	r1,r3
	blt_s	.L1093
	bgt_s	.L1094
	cmp_s	r0,r2
	blo_s	.L1093
	bhi_s	.L1094
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1093:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1094:
	j_s.d	[blink]
	mov_s	r0,2	;3
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
	add_s	r3,r3,r12   ;b,b,h
	and	r58,r2,15
	seteq	r58,r58,0
	asl	r58,r58,2
	lsr	r2,r2,r58
	add	r58,r58,r3   ;(p)b,b,c/u6
	and	r3,r2,3
	seteq	r3,r3,0
	asl_s	r3,r3,1
	lsr_s	r2,r2,r3
	bic	r0,1,r2    ;;constraint 6
	xbfu	r2,r2,1
	rsub	r2,r2,2
	add	r58,r58,r3   ;(p)b,b,c/u6
	j_s.d	[blink]
	dmachu	r0,r0,r2
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	bbit0	r2,5,@.L1101
	lsr	r0,r1,r2
	mov_s	r12,0	;3
	.align 2
.L1102:
	j_s.d	[blink]
	mov_s	r1,r12	;4
	.align 4
.L1101:
	tst_s	r2,r2
	jeq_s	[blink]
	lsr	r12,r1,r2
	rsub	r3,r2,32
	asl	r3,r1,r3
	lsr_s	r0,r0,r2
	b.d	.L1102
	or_s	r0,r0,r3
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	push_s	r13
	mpyuw	r12,r0,r1
	lsr	r3,r0,16
	lsr	r58,r12,16
	dmachu	r13,r1,r3
	lsr_s	r1,r1,16
	exth	r58,r13
	dmachu	r2,r0,r1
	exth_s	r12,r12
	asl	r0,r2,16
	lsr	r58,r13,16
	dmachu	r1,r3,r1
	lsr_s	r2,r2,16
	add_s	r0,r0,r12   ;b,b,h
	add_s	r1,r1,r2   ;b,b,h
	j_s.d	[blink]
	pop_s	r13
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r14,r0	;4
	mov_s	r16,r1	;4
	mov_s	r13,r2	;4
	mov_s	r15,r3	;4
	bl.d	@__muldsi3;1
	mov_s	r1,r2	;4
	mpy	r13,r13,r16
	mpy_s	r14,r14,r15
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
	b.d	.L1123
	mov_s	r16,0	;4
	.align 4
.L1121:
	div	r13,r13,2
	.align 4
.L1127:
	breq_s	r13,0,.L1122
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L1123:
	bbit0	r13,0,@.L1121
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L1127
	.align 4
.L1122:
	brlt	r18,0,.L1126
	.align 2
.L1120:
	vadd2	r0,r16,0
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L1126:
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	b_s	.L1120
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
	b.d	.L1131
	mov_s	r14,r1	;4
	.align 4
.L1129:
	div	r14,r14,2
	breq_s	r14,0,.L1130
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L1131:
	bbit0	r14,0,@.L1129
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L1129
	mov_s	r15,r0
	.align 4
.L1130:
	brlt	r16,0,.L1134
	.align 2
.L1128:
	mov_s	r0,r15
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.align 4
.L1134:
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	b.d	.L1128
	mov_s	r15,r0
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp_s	r1,r3
	blo_s	.L1139
	bhi_s	.L1140
	cmp_s	r0,r2
	blo_s	.L1139
	bhi_s	.L1140
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1139:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1140:
	j_s.d	[blink]
	mov_s	r0,2	;3
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
