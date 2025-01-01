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
	ld	r16,[r2]	;23
	breq.d	r16,0,.L314
	mov_s	r15,r3	;4
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
	brne.d	r16,r14,.L316
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L314:
	add	r2,r16,1 ;a,b,c/u6
	st	r2,[r20]	;26
	mpy	r16,r16,r15
	add	r19,r21,r16 ;a,b,c/u6
	tst_s	r15,r15
	mov_s.ne	r2,r15
	mov_s.ne	r1,r17
	mov_s.ne	r0,r19
	jlne	@memmove
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
	breq	r18,0,.L330
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	mov_s	r14,0	;3
	.align 2
.L332:
	mov_s	r19,r13	;4
	mov_s	r1,r13	;4
	jl.d	[r16]
	mov_s	r0,r15	;4
	breq_s	r0,0,.L329
	add_s	r14,r14,1   ;b,b,h
	brne.d	r18,r14,.L332
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L330:
	mov_s	r19,0	;4
	.align 2
.L329:
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
	push_s	r13
	mov_s	r3,r0	;4
	.align 2
.L356:
	mov_s	r12,r3	;4
	ldb.ab	r13,[r3,1]
	breq	r13,32,.L356
	sub	r2,r13,9 ;a,b,u6
	setlo	r0,r2,5
	brne_s	r0,0,.L356
	breq	r13,43,.L352
	cmp_s	r13,45
	beq.d	.L346
	mov.eq	r3,1
	b.d	.L347
	mov_s	r3,0	;3
	.align 4
.L352:
	mov_s	r3,0	;3
	.align 2
.L346:
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L347:
	ldb_s	r2,[r12]
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L349
	.align 2
.L348:
	mpy	r0,r0,10
	sub_s	r0,r0,r2
	ldb.a	r2,[r12,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L348
	.align 2
.L349:
	tst_s	r3,r3
	neg.eq	r0,r0
	j_s.d	[blink]
	pop_s	r13
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	push_s	r13
	mov_s	r3,r0	;4
	.align 2
.L372:
	mov_s	r12,r3	;4
	ldb.ab	r13,[r3,1]
	breq	r13,32,.L372
	sub	r2,r13,9 ;a,b,u6
	setlo	r0,r2,5
	brne_s	r0,0,.L372
	breq	r13,43,.L368
	cmp_s	r13,45
	beq.d	.L362
	mov.eq	r3,1
	b.d	.L363
	mov_s	r3,0	;3
	.align 4
.L368:
	mov_s	r3,0	;3
	.align 2
.L362:
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L363:
	ldb_s	r2,[r12]
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L365
	.align 2
.L364:
	mpy	r0,r0,10
	sub_s	r0,r0,r2
	ldb.a	r2,[r12,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L364
	.align 2
.L365:
	tst_s	r3,r3
	neg.eq	r0,r0
	j_s.d	[blink]
	pop_s	r13
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	push_s	r14
	push_s	r13
	.align 2
.L388:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L388
	sub	r14,r2,9 ;a,b,u6
	setlo	r14,r14,5
	brne_s	r14,0,.L388
	breq	r2,43,.L378
	brne	r2,45,.L379
	mov_s	r14,1	;3
	.align 2
.L378:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L379:
	ldb_s	r2,[r3]
	sub3	r2,r2,6 ;a,b,u6
	mov_s	r0,0	;3
	brhi.d	r2,9,.L381
	mov_s	r1,0	;3
	.align 2
.L380:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	add_s	r13,r13,r1   ;b,b,h
	asr	r1,r2,31
	sub.f	r0,r12,r2
	sbc	r1,r13,r1
	ldb.a	r2,[r3,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L380
	.align 2
.L381:
	brne_s	r14,0,.L375
	rsub.f	r0,r0,0
	sbc	r1,0,r1
.L375:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
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
	beq_s	.L393
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	b.d	.L396
	mov_s	r18,r4	;4
	.align 4
.L397:
	mov_s	r13,r15	;4
	.align 2
.L394:
	breq_s	r13,0,.L393
	.align 2
.L396:
	lsr_s	r15,r13
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	brlt	r0,0,.L397
	brle	r0,0,.L392
	add	r17,r14,r16 ;a,b,c/u6
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L394
	sub_s	r13,r13,r15
	.align 4
.L393:
	mov_s	r14,0	;3
	.align 2
.L392:
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
	breq_s	r2,0,.L404
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r13,r2	;4
	mov_s	r16,r3	;4
	mov_s	r20,r4	;4
	b.d	.L407
	mov_s	r18,r5	;4
	.align 4
.L406:
	breq.d	r15,0,.L404
	mov_s	r13,r15	;4
	.align 2
.L407:
	asr_s	r15,r13,1
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r2,r18	;4
	mov_s	r1,r14	;4
	jl.d	[r20]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L403
	brle	r0,0,.L406
	add	r17,r14,r16 ;a,b,c/u6
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L406
	asr_s	r15,r13,1
	.align 4
.L404:
	mov_s	r14,0	;3
	.align 2
.L403:
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
	breq_s	r2,0,.L436
	.align 2
.L431:
	breq	r1,r2,.L440
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L431
	.align 2
.L436:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L440:
	tst_s	r2,r2
	jne_s	[blink]
	b_s	.L436
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	brne	r2,r3,.L442
	.align 2
.L443:
	breq_s	r2,0,.L442
	breq_s	r3,0,.L442
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	breq	r2,r3,.L443
	.align 2
.L442:
	brlt	r2,r3,.L446
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L446:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L452:
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L452
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	beq.d	.L458
	mov_s	r2,r0	;4
	.align 2
.L459:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L459
	.align 2
.L458:
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L477
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r14,r2	;4
	mov	lp_count,r14	;5
	lp	@.L480	; lp_count:@.L465->@.L480
	.align 2
.L465:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	ld.ab	r13,[r12,4]	;23
	ld_s	r15,[r1]		;15
	brne.d	r13,r15,.L464
	add_s	r3,r3,4   ;b,b,h
	breq_s	r13,0,.L464
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L480:
	; ZOL_END, begins @.L465
	.align 2
.L468:
	mov_s	r0,0	;3
.L463:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L464:
	breq_s	r2,0,.L468
	ld_s	r0,[r0]		;15
	ld_s	r2,[r1]		;15
	cmp_s	r0,r2
	bge.d	.L463
	setgt.ge	r0,r0,r2
	b.d	.L463
	mov_s	r0,-1	;4
	.align 4
.L477:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	breq_s	r2,0,.L492
	push_s	r13
	mov_s	r3,r0	;4
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L497	; lp_count:@.L483->@.L497
	.align 2
.L483:
	mov_s	r0,r3	;4
	ld_s	r13,[r0]		;15
	breq.d	r13,r1,.L496
	add_s	r3,r3,4   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L497:
	; ZOL_END, begins @.L483
	.align 2
.L487:
	b.d	.L481
	mov_s	r0,0	;3
	.align 4
.L496:
	breq_s	r2,0,.L487
.L481:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L492:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L512
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r13,r2	;4
	mov	lp_count,r13	;5
	lp	@.L516	; lp_count:@.L500->@.L516
	.align 2
.L500:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	add_s	r12,r12,4   ;b,b,h
	ld_s	r15,[r0]		;15
	ld_s	r14,[r1]		;15
	brne.d	r15,r14,.L515
	add_s	r3,r3,4   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L516:
	; ZOL_END, begins @.L500
	.align 2
.L503:
	mov_s	r0,0	;3
.L498:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L515:
	breq_s	r2,0,.L503
	mov_s	r0,r15	;4
	cmp_s	r15,r14
	bge.d	.L498
	setgt.ge	r0,r0,r14
	b.d	.L498
	mov_s	r0,-1	;4
	.align 4
.L512:
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
	brlo	r12,r3,.L525
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r3,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L539	; lp_count:@.L528->@.L539
	.align 2
.L528:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L539:
	; ZOL_END, begins @.L528
	j_s	[blink]
	.align 4
.L525:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,r3   ;b,b,h
	add_s	r12,r0,r3   ;a,b,c/u3
	sub2	r2,r3,1 ;a,b,u6
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L538	; lp_count:@.L527->@.L538
	.align 2
.L527:
	ld.a	r3,[r1,-4]	;23
	st.a	r3,[r12,-4]	;26
	.align 2
.L538:
	; ZOL_END, begins @.L527
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
	lp	@.L549	; lp_count:@.L542->@.L549
	.align 2
.L542:
	st.ab	r1,[r12,4]	;26
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
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
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
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
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
	b_s	.L633
	.align 4
.L632:
	div	r13,r13,2
	breq_s	r13,0,.L629
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	mov_s	r14,r0
	.align 2
.L633:
	bbit0	r13,0,@.L632
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L632
	mov_s	r15,r0
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
	brne	r0,0,.L654
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L654
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L658
	.align 4
.L657:
	div	r13,r13,2
	.align 4
.L665:
	breq_s	r13,0,.L654
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L658:
	bbit0	r13,0,@.L657
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L665
	.align 4
.L654:
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
	lp	@.L678	; lp_count:@.L668->@.L678
	.align 2
.L668:
	ldb.ab	r3,[r12,1]
	ldb.ab	r13,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L678:
	; ZOL_END, begins @.L668
	j_s.d	[blink]
	pop_s	r13
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	breq.d	r3,0,.L680
	mov_s	r12,r0	;4
	.align 2
.L681:
	ldb.a	r3,[r12,1]
	brne_s	r3,0,.L681
	.align 2
.L680:
	breq_s	r2,0,.L694
	push_s	r14
	push_s	r13
	add_s	r1,r1,-1   ;h,h,s3
	mov_s	r3,r12	;4
	mov_s	r14,r2	;4
	mov	lp_count,r14	;5
	lp	@.L699	; lp_count:@.L683->@.L699
	.align 2
.L683:
	mov_s	r12,r3	;4
	ldb.a	r13,[r1,1]
	breq.d	r13,0,.L698
	stb.ab	r13,[r3,1]
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L699:
	; ZOL_END, begins @.L683
	b.d	.L688
	mov_s	r12,r3	;4
	.align 4
.L698:
	brne_s	r2,0,.L685
	.align 2
.L688:
	stb	0,[r12]
.L685:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L694:
	stb	0,[r12]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L704
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L709	; lp_count:@.L702->@.L709
	.align 2
.L702:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L709:
	; ZOL_END, begins @.L702
	j_s	[blink]
	.align 4
.L704:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L717
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L711:
	mov_s	r3,r13	;4
	.align 2
.L714:
	ldb.a	r2,[r3,1]
	breq_s	r2,0,.L722
	brne	r2,r12,.L714
.L712:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L717:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L722:
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L711
	b.d	.L712
	mov_s	r0,0	;3
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	.align 2
.L725:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r3,r1
	mov.ne	r12,r0
	brne.d	r3,0,.L725
	mov_s	r0,r12	;4
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r2,r0	;4
	ldb_s	r14,[r1]
	breq.d	r14,0,.L732
	mov_s	r3,r1	;4
	.align 2
.L733:
	ldb.a	r12,[r3,1]
	brne_s	r12,0,.L733
	.align 2
.L732:
	sub.f	r3,r3,r1
	beq.d	.L731
	mov.eq	r0,r2
	add_s	r3,r3,-1   ;h,h,s3
	b.d	.L740
	add_s	r15,r1,r3   ;a,b,c/u3
	.align 4
.L739:
	breq_s	r0,0,.L731
	ldb_s	r3,[r0]
	tst_s	r3,r3
	beq.d	.L736
	mov.eq	r2,r1
	mov_s	r13,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L737:
	ldb_s	r12,[r2]
	breq_s	r12,0,.L736
	breq	r2,r15,.L736
	brne	r12,r3,.L736
	ldb.a	r3,[r13,1]
	brne.d	r3,0,.L737
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L736:
	ldb_s	r2,[r2]
	breq	r2,r3,.L731
	add_s	r2,r0,1   ;a,b,c/u3
	.align 2
.L740:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	breq	r3,r14,.L739
	brne_s	r3,0,.L740
	mov_s	r0,0	;3
.L731:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
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
	brlt	r0,0,.L765
	.align 2
.L756:
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L759
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L758
	.align 2
.L759:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L765:
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L756
	.align 2
.L758:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L759
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq.d	[blink]
	mov_s	r7,r0	;4
	brlo	r1,r3,.L795
	sub_s	r1,r1,r3
	add.f	r8,r0,r1
	blo	.L795
	b.d	.L789
	ldb.ab	r9,[r2,1]
	.align 4
.L798:
	breq_s	r15,0,.L766
	mov_s	r13,r6	;4
	breq	r13,r5,.L766
	.align 2
.L768:
	brhi	r7,r8,.L796
	ldb	r12,[r7]
	mov_s	r0,r7	;4
	brne.d	r12,r9,.L768
	add_s	r7,r7,1   ;h,h,s3
	b_s	.L790
	.align 4
.L796:
	b.d	.L766
	mov_s	r0,0	;3
	.align 4
.L797:
	brhi	r7,r8,.L795
	.align 2
.L789:
	ldb	r12,[r7]
	mov_s	r0,r7	;4
	brne.d	r12,r9,.L797
	add_s	r7,r7,1   ;h,h,s3
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L790:
	add.f	r15,r3,-1
	beq_s	.L766
	mov_s	r13,r7	;4
	mov_s	r12,r2	;4
	mov_s	r14,r15	;4
	mov	lp_count,r14	;5
	lp	@.L799	; lp_count:@.L770->@.L799
	.align 2
.L770:
	mov_s	r1,r12	;4
	mov_s	r4,r13	;4
	add_s	r13,r13,1   ;b,b,h
	ldb	r6,[r4]
	ldb	r5,[r1]
	brne.d	r6,r5,.L798
	add_s	r12,r12,1   ;b,b,h
	add_s	r15,r15,-1   ;h,h,s3
	.align 2
.L799:
	; ZOL_END, begins @.L770
.L766:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L795:
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
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	bn.d	.L834
	mov.p	r21,0
	.align 2
.L807:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L830
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L811:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__gedf2;1
	brge	r0,0,.L811
	.align 2
.L812:
	breq.d	r21,0,.L816
	st	r13,[r20]	;26
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L816:
	vadd2	r0,r14,0
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L834:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b.d	.L807
	mov_s	r21,1	;4
	.align 4
.L830:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L812
	mov.p	r13,0
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	breq.d	r0,0,.L812
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L815:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__ltdf2;1
	brlt	r0,0,.L815
	b_s	.L812
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or.f	0,r0,r1
	beq.d	.L839
	mov_s	r12,r2	;4
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r15,r3	;4
	mov_s	r14,r1	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L838:
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
	bne_s	.L838
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L839:
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
	bhs.d	.L861
	mov.lo	r12,32
	.align 2
.L865:
	mov	lp_count,r12	;5
	lp	@.L864	; lp_count:@.L846->@.L864
	.align 2
.L846:
	brlt	r1,0,.L847
	asl_s	r1,r1,1
	brls.d	r0,r1,.L847
	asl_s	r3,r3,1
	nop_s
	.align 2
.L864:
	; ZOL_END, begins @.L846
	.align 2
.L855:
	b.d	.L849
	mov_s	r12,0	;3
	.align 4
.L847:
	breq_s	r3,0,.L855
	.align 2
.L861:
	mov_s	r12,0	;3
	.align 2
.L851:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L851
	lsr_s	r1,r1
	.align 2
.L849:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L868
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L868:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L879
	xor	r12,r1,r3
	.align 2
.L876:
	fls	r0,r2
	breq.d	r12,0,.L874
	rsub	r0,r0,63
	fls	r12,r12
	rsub	r0,r12,31
	.align 2
.L874:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L879:
	brne	r1,r0,.L876
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
.L882:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L882
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L889
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L889
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L917	; lp_count:@.L895->@.L917
	.align 2
.L895:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r0,-1]
	.align 2
.L917:
	; ZOL_END, begins @.L895
	j_s	[blink]
	.align 4
.L889:
	breq	r3,0,.L907
	std.a	r14,[sp,-8]
	push_s	r13
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L916	; lp_count:@.L893->@.L916
	.align 2
.L893:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L916:
	; ZOL_END, begins @.L893
	brls	r2,r4,.L888
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L915	; lp_count:@.L894->@.L915
	.align 2
.L894:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L915:
	; ZOL_END, begins @.L894
	.align 2
.L888:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L907:
	cmp_s	r2,r4
	jls	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L914	; lp_count:@.L909->@.L914
	.align 2
.L909:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L914:
	; ZOL_END, begins @.L909
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brlo.d	r0,r1,.L919
	lsr_s	r3,r2
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L919
	breq_s	r2,0,.L918
	add_s	r3,r0,r2   ;a,b,c/u3
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L934	; lp_count:@.L924->@.L934
	.align 2
.L924:
	ldb.a	r13,[r12,-1]
	stb.a	r13,[r3,-1]
	.align 2
.L934:
	; ZOL_END, begins @.L924
	b_s	.L918
	.align 4
.L919:
	breq_s	r3,0,.L922
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	add1	r3,-2,r3
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L933	; lp_count:@.L923->@.L933
	.align 2
.L923:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L933:
	; ZOL_END, begins @.L923
	.align 2
.L922:
	bbit0	r2,0,@.L918
	mov_s	r3,r2	;4
	add_s	r2,r1,r2   ;a,b,c/u3
	ldb	r2,[r2,-1]
	add_s	r3,r3,r0   ;b,b,h
	stb	r2,[r3,-1]
	.align 2
.L918:
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
	brlo.d	r0,r1,.L936
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L936
	breq_s	r2,0,.L935
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L955	; lp_count:@.L942->@.L955
	.align 2
.L942:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r0,-1]
	.align 2
.L955:
	; ZOL_END, begins @.L942
	b_s	.L935
	.align 4
.L936:
	breq_s	r3,0,.L939
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	add2	r3,-4,r3
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L954	; lp_count:@.L940->@.L954
	.align 2
.L940:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L954:
	; ZOL_END, begins @.L940
	.align 2
.L939:
	brls	r2,r15,.L935
	add_s	r15,r15,-1   ;h,h,s3
	add_s	r3,r1,r15   ;a,b,c/u3
	add_s	r0,r0,r15   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L953	; lp_count:@.L941->@.L953
	.align 2
.L941:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L953:
	; ZOL_END, begins @.L941
	.align 2
.L935:
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
	lp	@.L974	; lp_count:@.L970->@.L974
	.align 2
.L970:
	rsub	r3,r0,15
	bbit1	r12,r3,@.L975
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L974:
	; ZOL_END, begins @.L970
	.align 2
.L975:
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
	lp	@.L982	; lp_count:@.L978->@.L982
	.align 2
.L978:
	bbit1	r3,r0,@.L983
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L982:
	; ZOL_END, begins @.L978
	.align 2
.L983:
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
	brge	r0,0,.L991
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L984:
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L991:
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L984
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
	lp	@.L997	; lp_count:@.L993->@.L997
	.align 2
.L993:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L997:
	; ZOL_END, begins @.L993
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
	lp	@.L1003	; lp_count:@.L999->@.L1003
	.align 2
.L999:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L1003:
	; ZOL_END, begins @.L999
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
.L1006:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L1006
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
.L1014:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	lsr.f	r1,r1,1
	bne.d	.L1014
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov_s	r3,1	;3
	cmp_s	r1,r0
	bhs.d	.L1037
	mov.lo	r12,32
	.align 2
.L1041:
	mov	lp_count,r12	;5
	lp	@.L1040	; lp_count:@.L1022->@.L1040
	.align 2
.L1022:
	brlt	r1,0,.L1023
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1023
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1040:
	; ZOL_END, begins @.L1022
	.align 2
.L1031:
	b.d	.L1025
	mov_s	r12,0	;3
	.align 4
.L1023:
	breq_s	r3,0,.L1031
	.align 2
.L1037:
	mov_s	r12,0	;3
	.align 2
.L1027:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1027
	lsr_s	r1,r1
	.align 2
.L1025:
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
	bn	.L1042
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L1042:
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
	bn	.L1047
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1047:
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
	breq.d	r1,0,.L1058
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1072	; lp_count:@.L1059->@.L1072
	.align 2
.L1059:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	asr.f	r1,r1,1
	beq.d	.L1058
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1072:
	; ZOL_END, begins @.L1059
	.align 2
.L1058:
	tst_s	r13,r13
	neg.ne	r0,r0
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
	mov_s	r12,r0	;4
	brls.d	r0,r1,.L1092
	mov_s	r2,1	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L1095	; lp_count:@.L1077->@.L1095
	.align 2
.L1077:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1076
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1095:
	; ZOL_END, begins @.L1077
	.align 2
.L1084:
	b.d	.L1078
	mov_s	r3,0	;3
	.align 4
.L1076:
	breq_s	r2,0,.L1084
	.align 2
.L1092:
	mov_s	r3,0	;3
	.align 2
.L1080:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r3,r3,r2
	lsr.f	r2,r2,1
	bne.d	.L1080
	lsr_s	r1,r1
	.align 2
.L1078:
	breq.d	r13,0,.L1073
	mov_s	r0,r3	;4
	neg_s	r0,r3
.L1073:
	j_s.d	[blink]
	pop_s	r13
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push_s	r13
	tst_s	r0,r0
	neg.n	r0,r0
	mov.n	r13,1
	mov.p	r13,0
	mov_s	r12,r0	;4
	abs_s	r1,r1
	brls.d	r0,r1,.L1110
	mov_s	r2,1	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L1117	; lp_count:@.L1099->@.L1117
	.align 2
.L1099:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1098
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1117:
	; ZOL_END, begins @.L1099
	b.d	.L1118
	mov_s	r0,r12	;4
	.align 4
.L1098:
	breq_s	r2,0,.L1100
	.align 2
.L1110:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	lsr.f	r2,r2,1
	bne.d	.L1110
	lsr_s	r1,r1
	.align 2
.L1100:
	mov_s	r0,r12	;4
	.align 2
.L1118:
	breq_s	r13,0,.L1096
	neg_s	r0,r12
.L1096:
	j_s.d	[blink]
	pop_s	r13
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	exth_s	r0,r0
	exth_s	r1,r1
	mov_s	r3,1	;3
	cmp_s	r1,r0
	bhs.d	.L1135
	mov.lo	r12,16
	.align 2
.L1139:
	mov	lp_count,r12	;5
	lp	@.L1138	; lp_count:@.L1120->@.L1138
	.align 2
.L1120:
	btst_s	r1,15
	bne_s	.L1121
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	brls.d	r0,r1,.L1121
	exth_s	r3,r3
	nop_s
	.align 2
.L1138:
	; ZOL_END, begins @.L1120
	.align 2
.L1129:
	b.d	.L1123
	mov_s	r12,0	;3
	.align 4
.L1121:
	breq_s	r3,0,.L1129
	.align 2
.L1135:
	mov_s	r12,0	;3
	.align 2
.L1125:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	bmsk.hs	r0,r0,15
	or.hs r12,r12,r3
	bmsk.hs	r12,r12,15
	lsr.f	r3,r3,1
	bne.d	.L1125
	lsr_s	r1,r1
	.align 2
.L1123:
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
	bhs.d	.L1156
	mov.lo	r12,32
	.align 2
.L1160:
	mov	lp_count,r12	;5
	lp	@.L1159	; lp_count:@.L1141->@.L1159
	.align 2
.L1141:
	brlt	r1,0,.L1142
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1142
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1159:
	; ZOL_END, begins @.L1141
	.align 2
.L1150:
	b.d	.L1144
	mov_s	r12,0	;3
	.align 4
.L1142:
	breq_s	r3,0,.L1150
	.align 2
.L1156:
	mov_s	r12,0	;3
	.align 2
.L1146:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1146
	lsr_s	r1,r1
	.align 2
.L1144:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1162
	asl	r1,r0,r2
	mov_s	r12,0	;3
	.align 2
.L1163:
	j_s.d	[blink]
	mov_s	r0,r12	;4
	.align 4
.L1162:
	tst_s	r2,r2
	jeq_s	[blink]
	asl	r12,r0,r2
	rsub	r3,r2,32
	lsr	r3,r0,r3
	asl_s	r1,r1,r2
	b.d	.L1163
	or_s	r1,r1,r3
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0	r2,5,@.L1168
	asr	r12,r1,31
	asr	r0,r1,r2
	.align 2
.L1169:
	j_s.d	[blink]
	mov_s	r1,r12	;4
	.align 4
.L1168:
	tst_s	r2,r2
	jeq_s	[blink]
	asr	r12,r1,r2
	rsub	r3,r2,32
	asl	r3,r1,r3
	lsr_s	r0,r0,r2
	b.d	.L1169
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
	blt_s	.L1183
	bgt_s	.L1184
	cmp_s	r0,r2
	blo_s	.L1183
	bhi_s	.L1184
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1183:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1184:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1190
	bgt_s	.L1191
	cmp_s	r0,r2
	blo_s	.L1190
	bls.d	.L1187
	mov.ls	r0,1
	.align 2
.L1191:
	b.d	.L1187
	mov_s	r0,2	;3
	.align 4
.L1190:
	mov_s	r0,0	;3
	.align 2
.L1187:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
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
	bbit0	r2,5,@.L1196
	lsr	r0,r1,r2
	mov_s	r12,0	;3
	.align 2
.L1197:
	j_s.d	[blink]
	mov_s	r1,r12	;4
	.align 4
.L1196:
	tst_s	r2,r2
	jeq_s	[blink]
	lsr	r12,r1,r2
	rsub	r3,r2,32
	asl	r3,r1,r3
	lsr_s	r0,r0,r2
	b.d	.L1197
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
	std.a	r14,[sp,-8]
	push_s	r13
	mpyuw	r13,r0,r2
	lsr	r12,r0,16
	lsr	r58,r13,16
	dmachu	r4,r2,r12
	lsr	r15,r2,16
	exth	r58,r4
	dmachu	r14,r0,r15
	exth_s	r13,r13
	asl	r5,r14,16
	lsr	r58,r4,16
	dmachu	r12,r12,r15
	lsr_s	r14,r14,16
	add_s	r12,r12,r14   ;b,b,h
	mpy_s	r3,r3,r0
	add_s	r3,r3,r12   ;b,b,h
	mpy_s	r1,r1,r2
	add	r0,r13,r5 ;a,b,c/u6
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
	b.d	.L1218
	mov_s	r16,0	;4
	.align 4
.L1216:
	div	r13,r13,2
	.align 4
.L1222:
	breq_s	r13,0,.L1217
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L1218:
	bbit0	r13,0,@.L1216
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L1222
	.align 4
.L1217:
	brlt	r18,0,.L1221
	.align 2
.L1215:
	vadd2	r0,r16,0
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L1221:
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	b_s	.L1215
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
	b.d	.L1226
	mov_s	r14,r1	;4
	.align 4
.L1224:
	div	r14,r14,2
	breq_s	r14,0,.L1225
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L1226:
	bbit0	r14,0,@.L1224
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L1224
	mov_s	r15,r0
	.align 4
.L1225:
	brlt	r16,0,.L1229
	.align 2
.L1223:
	mov_s	r0,r15
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.align 4
.L1229:
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	b.d	.L1223
	mov_s	r15,r0
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp_s	r1,r3
	blo_s	.L1234
	bhi_s	.L1235
	cmp_s	r0,r2
	blo_s	.L1234
	bhi_s	.L1235
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1234:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1235:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1241
	bhi_s	.L1242
	cmp_s	r0,r2
	blo_s	.L1241
	bls.d	.L1238
	mov.ls	r0,1
	.align 2
.L1242:
	b.d	.L1238
	mov_s	r0,2	;3
	.align 4
.L1241:
	mov_s	r0,0	;3
	.align 2
.L1238:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
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
