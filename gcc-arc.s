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
	b	@atoi
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	push_s	r14
	push_s	r13
	.align 2
.L374:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L374
	sub	r14,r2,9 ;a,b,u6
	setlo	r14,r14,5
	brne_s	r14,0,.L374
	breq	r2,43,.L364
	brne	r2,45,.L365
	mov_s	r14,1	;3
	.align 2
.L364:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L365:
	ldb_s	r2,[r3]
	sub3	r2,r2,6 ;a,b,u6
	mov_s	r0,0	;3
	brhi.d	r2,9,.L367
	mov_s	r1,0	;3
	.align 2
.L366:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	add_s	r13,r13,r1   ;b,b,h
	asr	r1,r2,31
	sub.f	r0,r12,r2
	sbc	r1,r13,r1
	ldb.a	r2,[r3,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L366
	.align 2
.L367:
	brne_s	r14,0,.L361
	rsub.f	r0,r0,0
	sbc	r1,0,r1
.L361:
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
	beq_s	.L379
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	b.d	.L382
	mov_s	r18,r4	;4
	.align 4
.L383:
	mov_s	r13,r15	;4
	.align 2
.L380:
	breq_s	r13,0,.L379
	.align 2
.L382:
	lsr_s	r15,r13
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	brlt	r0,0,.L383
	brle	r0,0,.L378
	add	r17,r14,r16 ;a,b,c/u6
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L380
	sub_s	r13,r13,r15
	.align 4
.L379:
	mov_s	r14,0	;3
	.align 2
.L378:
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
	breq_s	r2,0,.L390
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r13,r2	;4
	mov_s	r16,r3	;4
	mov_s	r20,r4	;4
	b.d	.L393
	mov_s	r18,r5	;4
	.align 4
.L392:
	breq.d	r15,0,.L390
	mov_s	r13,r15	;4
	.align 2
.L393:
	asr_s	r15,r13,1
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r2,r18	;4
	mov_s	r1,r14	;4
	jl.d	[r20]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L389
	brle	r0,0,.L392
	add	r17,r14,r16 ;a,b,c/u6
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L392
	asr_s	r15,r13,1
	.align 4
.L390:
	mov_s	r14,0	;3
	.align 2
.L389:
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
	breq_s	r2,0,.L422
	.align 2
.L417:
	breq	r1,r2,.L426
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L417
	.align 2
.L422:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L426:
	tst_s	r2,r2
	jne_s	[blink]
	b_s	.L422
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	brne	r2,r3,.L428
	.align 2
.L429:
	breq_s	r2,0,.L428
	breq_s	r3,0,.L428
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	breq	r2,r3,.L429
	.align 2
.L428:
	brlt	r2,r3,.L432
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L432:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L438:
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L438
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	beq.d	.L444
	mov_s	r2,r0	;4
	.align 2
.L445:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L445
	.align 2
.L444:
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L463
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r14,r2	;4
	mov	lp_count,r14	;5
	lp	@.L466	; lp_count:@.L451->@.L466
	.align 2
.L451:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	ld.ab	r13,[r12,4]	;23
	ld_s	r15,[r1]		;15
	brne.d	r13,r15,.L450
	add_s	r3,r3,4   ;b,b,h
	breq_s	r13,0,.L450
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L466:
	; ZOL_END, begins @.L451
	.align 2
.L454:
	mov_s	r0,0	;3
.L449:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L450:
	breq_s	r2,0,.L454
	ld_s	r0,[r0]		;15
	ld_s	r2,[r1]		;15
	cmp_s	r0,r2
	bge.d	.L449
	setgt.ge	r0,r0,r2
	b.d	.L449
	mov_s	r0,-1	;4
	.align 4
.L463:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	breq_s	r2,0,.L478
	push_s	r13
	mov_s	r3,r0	;4
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L483	; lp_count:@.L469->@.L483
	.align 2
.L469:
	mov_s	r0,r3	;4
	ld_s	r13,[r0]		;15
	breq.d	r13,r1,.L482
	add_s	r3,r3,4   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L483:
	; ZOL_END, begins @.L469
	.align 2
.L473:
	b.d	.L467
	mov_s	r0,0	;3
	.align 4
.L482:
	breq_s	r2,0,.L473
.L467:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L478:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L498
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r13,r2	;4
	mov	lp_count,r13	;5
	lp	@.L502	; lp_count:@.L486->@.L502
	.align 2
.L486:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	add_s	r12,r12,4   ;b,b,h
	ld_s	r15,[r0]		;15
	ld_s	r14,[r1]		;15
	brne.d	r15,r14,.L501
	add_s	r3,r3,4   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L502:
	; ZOL_END, begins @.L486
	.align 2
.L489:
	mov_s	r0,0	;3
.L484:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L501:
	breq_s	r2,0,.L489
	mov_s	r0,r15	;4
	cmp_s	r15,r14
	bge.d	.L484
	setgt.ge	r0,r0,r14
	b.d	.L484
	mov_s	r0,-1	;4
	.align 4
.L498:
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
	brlo	r12,r3,.L511
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r3,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L525	; lp_count:@.L514->@.L525
	.align 2
.L514:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L525:
	; ZOL_END, begins @.L514
	j_s	[blink]
	.align 4
.L511:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,r3   ;b,b,h
	add_s	r12,r0,r3   ;a,b,c/u3
	sub2	r2,r3,1 ;a,b,u6
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L524	; lp_count:@.L513->@.L524
	.align 2
.L513:
	ld.a	r3,[r1,-4]	;23
	st.a	r3,[r12,-4]	;26
	.align 2
.L524:
	; ZOL_END, begins @.L513
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
	lp	@.L535	; lp_count:@.L528->@.L535
	.align 2
.L528:
	st.ab	r1,[r12,4]	;26
	.align 2
.L535:
	; ZOL_END, begins @.L528
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L537
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L553	; lp_count:@.L539->@.L553
	.align 2
.L539:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L553:
	; ZOL_END, begins @.L539
	j_s	[blink]
	.align 4
.L537:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L552	; lp_count:@.L540->@.L552
	.align 2
.L540:
	ldb.ab	r3,[r0,1]
	stb.a	r3,[r1,1]
	.align 2
.L552:
	; ZOL_END, begins @.L540
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
	lp	@.L588	; lp_count:@.L583->@.L588
	.align 2
.L583:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L587
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L588:
	; ZOL_END, begins @.L583
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L587:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L592
	bbit1.d	r2,0,@.L596
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L591:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L591
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L596:
	j_s	[blink]
	.align 4
.L592:
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
	bn.d	.L597
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L597:
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
	bn.d	.L602
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L602:
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
	bn.d	.L607
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L607:
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
	brne_s	r0,0,.L615
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	bl.d	@__nesf2;1
	mov_s	r1,r15
	breq_s	r0,0,.L615
	tst_s	r13,r13
	mov_s	r14,0x3f000000 ; 5.0e-1
	mov.p	r14,0x40000000 ; 2.0e+0
	b_s	.L619
	.align 4
.L618:
	div	r13,r13,2
	breq_s	r13,0,.L615
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	mov_s	r14,r0
	.align 2
.L619:
	bbit0	r13,0,@.L618
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L618
	mov_s	r15,r0
	.align 4
.L615:
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
	brne	r0,0,.L627
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L627
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L631
	.align 4
.L630:
	div	r13,r13,2
	.align 4
.L638:
	breq_s	r13,0,.L627
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L631:
	bbit0	r13,0,@.L630
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L638
	.align 4
.L627:
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
	brne	r0,0,.L640
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L640
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L644
	.align 4
.L643:
	div	r13,r13,2
	.align 4
.L651:
	breq_s	r13,0,.L640
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L644:
	bbit0	r13,0,@.L643
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L651
	.align 4
.L640:
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
	lp	@.L664	; lp_count:@.L654->@.L664
	.align 2
.L654:
	ldb.ab	r3,[r12,1]
	ldb.ab	r13,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L664:
	; ZOL_END, begins @.L654
	j_s.d	[blink]
	pop_s	r13
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	breq.d	r3,0,.L666
	mov_s	r12,r0	;4
	.align 2
.L667:
	ldb.a	r3,[r12,1]
	brne_s	r3,0,.L667
	.align 2
.L666:
	breq_s	r2,0,.L680
	push_s	r14
	push_s	r13
	add_s	r1,r1,-1   ;h,h,s3
	mov_s	r3,r12	;4
	mov_s	r14,r2	;4
	mov	lp_count,r14	;5
	lp	@.L685	; lp_count:@.L669->@.L685
	.align 2
.L669:
	mov_s	r12,r3	;4
	ldb.a	r13,[r1,1]
	breq.d	r13,0,.L684
	stb.ab	r13,[r3,1]
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L685:
	; ZOL_END, begins @.L669
	b.d	.L674
	mov_s	r12,r3	;4
	.align 4
.L684:
	brne_s	r2,0,.L671
	.align 2
.L674:
	stb	0,[r12]
.L671:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L680:
	stb	0,[r12]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L690
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L695	; lp_count:@.L688->@.L695
	.align 2
.L688:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L695:
	; ZOL_END, begins @.L688
	j_s	[blink]
	.align 4
.L690:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L703
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L697:
	mov_s	r3,r13	;4
	.align 2
.L700:
	ldb.a	r2,[r3,1]
	breq_s	r2,0,.L708
	brne	r2,r12,.L700
.L698:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L703:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L708:
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L697
	b.d	.L698
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
	cmp_s	r3,r1
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
	mov_s	r2,r0	;4
	ldb_s	r14,[r1]
	breq.d	r14,0,.L718
	mov_s	r3,r1	;4
	.align 2
.L719:
	ldb.a	r12,[r3,1]
	brne_s	r12,0,.L719
	.align 2
.L718:
	sub.f	r3,r3,r1
	beq.d	.L717
	mov.eq	r0,r2
	add_s	r3,r3,-1   ;h,h,s3
	b.d	.L726
	add_s	r15,r1,r3   ;a,b,c/u3
	.align 4
.L725:
	breq_s	r0,0,.L717
	ldb_s	r3,[r0]
	tst_s	r3,r3
	beq.d	.L722
	mov.eq	r2,r1
	mov_s	r13,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L723:
	ldb_s	r12,[r2]
	breq_s	r12,0,.L722
	breq	r2,r15,.L722
	brne	r12,r3,.L722
	ldb.a	r3,[r13,1]
	brne.d	r3,0,.L723
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L722:
	ldb_s	r2,[r2]
	breq	r2,r3,.L717
	add_s	r2,r0,1   ;a,b,c/u3
	.align 2
.L726:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	breq	r3,r14,.L725
	brne_s	r3,0,.L726
	mov_s	r0,0	;3
.L717:
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
	brlt	r0,0,.L751
	.align 2
.L742:
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L745
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L744
	.align 2
.L745:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L751:
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L742
	.align 2
.L744:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L745
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq.d	[blink]
	mov_s	r7,r0	;4
	brlo	r1,r3,.L781
	sub_s	r1,r1,r3
	add.f	r8,r0,r1
	blo	.L781
	b.d	.L775
	ldb.ab	r9,[r2,1]
	.align 4
.L784:
	breq_s	r15,0,.L752
	mov_s	r13,r6	;4
	breq	r13,r5,.L752
	.align 2
.L754:
	brhi	r7,r8,.L782
	ldb	r12,[r7]
	mov_s	r0,r7	;4
	brne.d	r12,r9,.L754
	add_s	r7,r7,1   ;h,h,s3
	b_s	.L776
	.align 4
.L782:
	b.d	.L752
	mov_s	r0,0	;3
	.align 4
.L783:
	brhi	r7,r8,.L781
	.align 2
.L775:
	ldb	r12,[r7]
	mov_s	r0,r7	;4
	brne.d	r12,r9,.L783
	add_s	r7,r7,1   ;h,h,s3
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L776:
	add.f	r15,r3,-1
	beq_s	.L752
	mov_s	r13,r7	;4
	mov_s	r12,r2	;4
	mov_s	r14,r15	;4
	mov	lp_count,r14	;5
	lp	@.L785	; lp_count:@.L756->@.L785
	.align 2
.L756:
	mov_s	r1,r12	;4
	mov_s	r4,r13	;4
	add_s	r13,r13,1   ;b,b,h
	ldb	r6,[r4]
	ldb	r5,[r1]
	brne.d	r6,r5,.L784
	add_s	r12,r12,1   ;b,b,h
	add_s	r15,r15,-1   ;h,h,s3
	.align 2
.L785:
	; ZOL_END, begins @.L756
.L752:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L781:
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
	bn.d	.L820
	mov.p	r21,0
	.align 2
.L793:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L816
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L797:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__gedf2;1
	brge	r0,0,.L797
	.align 2
.L798:
	breq.d	r21,0,.L802
	st	r13,[r20]	;26
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L802:
	vadd2	r0,r14,0
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L820:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b.d	.L793
	mov_s	r21,1	;4
	.align 4
.L816:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L798
	mov.p	r13,0
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	breq.d	r0,0,.L798
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L801:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__ltdf2;1
	brlt	r0,0,.L801
	b_s	.L798
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or.f	0,r0,r1
	beq.d	.L825
	mov_s	r12,r2	;4
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r15,r3	;4
	mov_s	r14,r1	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L824:
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
	bne_s	.L824
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L825:
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
	bhs.d	.L847
	mov.lo	r12,32
	.align 2
.L851:
	mov	lp_count,r12	;5
	lp	@.L850	; lp_count:@.L832->@.L850
	.align 2
.L832:
	brlt	r1,0,.L833
	asl_s	r1,r1,1
	brls.d	r0,r1,.L833
	asl_s	r3,r3,1
	nop_s
	.align 2
.L850:
	; ZOL_END, begins @.L832
	.align 2
.L841:
	b.d	.L835
	mov_s	r12,0	;3
	.align 4
.L833:
	breq_s	r3,0,.L841
	.align 2
.L847:
	mov_s	r12,0	;3
	.align 2
.L837:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L837
	lsr_s	r1,r1
	.align 2
.L835:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L854
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L854:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L865
	xor	r12,r1,r3
	.align 2
.L862:
	fls	r0,r2
	breq.d	r12,0,.L860
	rsub	r0,r0,63
	fls	r12,r12
	rsub	r0,r12,31
	.align 2
.L860:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L865:
	brne	r1,r0,.L862
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
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L868
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L875
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L875
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L903	; lp_count:@.L881->@.L903
	.align 2
.L881:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r0,-1]
	.align 2
.L903:
	; ZOL_END, begins @.L881
	j_s	[blink]
	.align 4
.L875:
	breq	r3,0,.L893
	std.a	r14,[sp,-8]
	push_s	r13
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L902	; lp_count:@.L879->@.L902
	.align 2
.L879:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L902:
	; ZOL_END, begins @.L879
	brls	r2,r4,.L874
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L901	; lp_count:@.L880->@.L901
	.align 2
.L880:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L901:
	; ZOL_END, begins @.L880
	.align 2
.L874:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L893:
	cmp_s	r2,r4
	jls	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L900	; lp_count:@.L895->@.L900
	.align 2
.L895:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L900:
	; ZOL_END, begins @.L895
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brlo.d	r0,r1,.L905
	lsr_s	r3,r2
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L905
	breq_s	r2,0,.L904
	add_s	r3,r0,r2   ;a,b,c/u3
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L920	; lp_count:@.L910->@.L920
	.align 2
.L910:
	ldb.a	r13,[r12,-1]
	stb.a	r13,[r3,-1]
	.align 2
.L920:
	; ZOL_END, begins @.L910
	b_s	.L904
	.align 4
.L905:
	breq_s	r3,0,.L908
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	add1	r3,-2,r3
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L919	; lp_count:@.L909->@.L919
	.align 2
.L909:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L919:
	; ZOL_END, begins @.L909
	.align 2
.L908:
	bbit0	r2,0,@.L904
	mov_s	r3,r2	;4
	add_s	r2,r1,r2   ;a,b,c/u3
	ldb	r2,[r2,-1]
	add_s	r3,r3,r0   ;b,b,h
	stb	r2,[r3,-1]
	.align 2
.L904:
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
	brlo.d	r0,r1,.L922
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L922
	breq_s	r2,0,.L921
	mov_s	r3,r12	;4
	add_s	r0,r0,r2   ;b,b,h
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L941	; lp_count:@.L928->@.L941
	.align 2
.L928:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r0,-1]
	.align 2
.L941:
	; ZOL_END, begins @.L928
	b_s	.L921
	.align 4
.L922:
	breq_s	r3,0,.L925
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	add2	r3,-4,r3
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L940	; lp_count:@.L926->@.L940
	.align 2
.L926:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L940:
	; ZOL_END, begins @.L926
	.align 2
.L925:
	brls	r2,r15,.L921
	add_s	r15,r15,-1   ;h,h,s3
	add_s	r3,r1,r15   ;a,b,c/u3
	add_s	r0,r0,r15   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L939	; lp_count:@.L927->@.L939
	.align 2
.L927:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L939:
	; ZOL_END, begins @.L927
	.align 2
.L921:
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
	lp	@.L960	; lp_count:@.L956->@.L960
	.align 2
.L956:
	rsub	r3,r0,15
	bbit1	r12,r3,@.L961
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L960:
	; ZOL_END, begins @.L956
	.align 2
.L961:
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
	lp	@.L968	; lp_count:@.L964->@.L968
	.align 2
.L964:
	bbit1	r3,r0,@.L969
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L968:
	; ZOL_END, begins @.L964
	.align 2
.L969:
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
	brge	r0,0,.L977
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L970:
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L977:
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L970
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
	lp	@.L983	; lp_count:@.L979->@.L983
	.align 2
.L979:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L983:
	; ZOL_END, begins @.L979
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
	lp	@.L989	; lp_count:@.L985->@.L989
	.align 2
.L985:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L989:
	; ZOL_END, begins @.L985
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
.L992:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L992
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
.L1000:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	lsr.f	r1,r1,1
	bne.d	.L1000
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov_s	r3,1	;3
	cmp_s	r0,r1
	bls.d	.L1023
	mov.hi	r12,32
	.align 2
.L1027:
	mov	lp_count,r12	;5
	lp	@.L1026	; lp_count:@.L1008->@.L1026
	.align 2
.L1008:
	brlt	r1,0,.L1009
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1009
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1026:
	; ZOL_END, begins @.L1008
	.align 2
.L1017:
	b.d	.L1011
	mov_s	r12,0	;3
	.align 4
.L1009:
	breq_s	r3,0,.L1017
	.align 2
.L1023:
	mov_s	r12,0	;3
	.align 2
.L1013:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1013
	lsr_s	r1,r1
	.align 2
.L1011:
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
	bn	.L1028
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L1028:
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
	bn	.L1033
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1033:
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
	breq.d	r1,0,.L1044
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1058	; lp_count:@.L1045->@.L1058
	.align 2
.L1045:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	asr.f	r1,r1,1
	beq.d	.L1044
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1058:
	; ZOL_END, begins @.L1045
	.align 2
.L1044:
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
	brls.d	r0,r1,.L1078
	mov_s	r2,1	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L1081	; lp_count:@.L1063->@.L1081
	.align 2
.L1063:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1062
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1081:
	; ZOL_END, begins @.L1063
	.align 2
.L1070:
	b.d	.L1064
	mov_s	r3,0	;3
	.align 4
.L1062:
	breq_s	r2,0,.L1070
	.align 2
.L1078:
	mov_s	r3,0	;3
	.align 2
.L1066:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r3,r3,r2
	lsr.f	r2,r2,1
	bne.d	.L1066
	lsr_s	r1,r1
	.align 2
.L1064:
	breq.d	r13,0,.L1059
	mov_s	r0,r3	;4
	neg_s	r0,r3
.L1059:
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
	brls.d	r0,r1,.L1096
	mov_s	r2,1	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L1103	; lp_count:@.L1085->@.L1103
	.align 2
.L1085:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1084
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1103:
	; ZOL_END, begins @.L1085
	b.d	.L1104
	mov_s	r0,r12	;4
	.align 4
.L1084:
	breq_s	r2,0,.L1086
	.align 2
.L1096:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	lsr.f	r2,r2,1
	bne.d	.L1096
	lsr_s	r1,r1
	.align 2
.L1086:
	mov_s	r0,r12	;4
	.align 2
.L1104:
	breq_s	r13,0,.L1082
	neg_s	r0,r12
.L1082:
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
	bhs.d	.L1121
	mov.lo	r12,16
	.align 2
.L1125:
	mov	lp_count,r12	;5
	lp	@.L1124	; lp_count:@.L1106->@.L1124
	.align 2
.L1106:
	btst_s	r1,15
	bne_s	.L1107
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	brls.d	r0,r1,.L1107
	exth_s	r3,r3
	nop_s
	.align 2
.L1124:
	; ZOL_END, begins @.L1106
	.align 2
.L1115:
	b.d	.L1109
	mov_s	r12,0	;3
	.align 4
.L1107:
	breq_s	r3,0,.L1115
	.align 2
.L1121:
	mov_s	r12,0	;3
	.align 2
.L1111:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	bmsk.hs	r0,r0,15
	or.hs r12,r12,r3
	bmsk.hs	r12,r12,15
	lsr.f	r3,r3,1
	bne.d	.L1111
	lsr_s	r1,r1
	.align 2
.L1109:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov_s	r3,1	;3
	cmp_s	r0,r1
	bls.d	.L1142
	mov.hi	r12,32
	.align 2
.L1146:
	mov	lp_count,r12	;5
	lp	@.L1145	; lp_count:@.L1127->@.L1145
	.align 2
.L1127:
	brlt	r1,0,.L1128
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1128
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1145:
	; ZOL_END, begins @.L1127
	.align 2
.L1136:
	b.d	.L1130
	mov_s	r12,0	;3
	.align 4
.L1128:
	breq_s	r3,0,.L1136
	.align 2
.L1142:
	mov_s	r12,0	;3
	.align 2
.L1132:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1132
	lsr_s	r1,r1
	.align 2
.L1130:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1148
	asl	r1,r0,r2
	mov_s	r12,0	;3
	.align 2
.L1149:
	j_s.d	[blink]
	mov_s	r0,r12	;4
	.align 4
.L1148:
	tst_s	r2,r2
	jeq_s	[blink]
	asl	r12,r0,r2
	rsub	r3,r2,32
	lsr	r3,r0,r3
	asl_s	r1,r1,r2
	b.d	.L1149
	or_s	r1,r1,r3
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0	r2,5,@.L1154
	asr	r12,r1,31
	asr	r0,r1,r2
	.align 2
.L1155:
	j_s.d	[blink]
	mov_s	r1,r12	;4
	.align 4
.L1154:
	tst_s	r2,r2
	jeq_s	[blink]
	asr	r12,r1,r2
	rsub	r3,r2,32
	asl	r3,r1,r3
	lsr_s	r0,r0,r2
	b.d	.L1155
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
	blt_s	.L1169
	bgt_s	.L1170
	cmp_s	r0,r2
	blo_s	.L1169
	bhi_s	.L1170
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1169:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1170:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1176
	bgt_s	.L1177
	cmp_s	r0,r2
	blo_s	.L1176
	bls.d	.L1173
	mov.ls	r0,1
	.align 2
.L1177:
	b.d	.L1173
	mov_s	r0,2	;3
	.align 4
.L1176:
	mov_s	r0,0	;3
	.align 2
.L1173:
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
	bbit0	r2,5,@.L1182
	lsr	r0,r1,r2
	mov_s	r12,0	;3
	.align 2
.L1183:
	j_s.d	[blink]
	mov_s	r1,r12	;4
	.align 4
.L1182:
	tst_s	r2,r2
	jeq_s	[blink]
	lsr	r12,r1,r2
	rsub	r3,r2,32
	asl	r3,r1,r3
	lsr_s	r0,r0,r2
	b.d	.L1183
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
	b.d	.L1204
	mov_s	r16,0	;4
	.align 4
.L1202:
	div	r13,r13,2
	.align 4
.L1208:
	breq_s	r13,0,.L1203
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L1204:
	bbit0	r13,0,@.L1202
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L1208
	.align 4
.L1203:
	brlt	r18,0,.L1207
	.align 2
.L1201:
	vadd2	r0,r16,0
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L1207:
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	b_s	.L1201
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
	b.d	.L1212
	mov_s	r14,r1	;4
	.align 4
.L1210:
	div	r14,r14,2
	breq_s	r14,0,.L1211
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L1212:
	bbit0	r14,0,@.L1210
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L1210
	mov_s	r15,r0
	.align 4
.L1211:
	brlt	r16,0,.L1215
	.align 2
.L1209:
	mov_s	r0,r15
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.align 4
.L1215:
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	b.d	.L1209
	mov_s	r15,r0
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
	bhi_s	.L1228
	cmp_s	r0,r2
	blo_s	.L1227
	bls.d	.L1224
	mov.ls	r0,1
	.align 2
.L1228:
	b.d	.L1224
	mov_s	r0,2	;3
	.align 4
.L1227:
	mov_s	r0,0	;3
	.align 2
.L1224:
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
