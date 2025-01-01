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
	breq_s	r3,0,.L22
	push_s	r14
	push_s	r13
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	mov_s	r12,r0	;4
	mov_s	r14,r3	;4
	mov	lp_count,r14	;5
	lp	@.L28	; lp_count:@.L15->@.L28
	.align 2
.L15:
	mov_s	r0,r12	;4
	ldb.a	r13,[r1,1]
	breq.d	r2,r13,.L14
	stb.ab	r13,[r12,1]
	add_s	r3,r3,-1   ;h,h,s3
	mov_s	r0,r12	;4
	.align 2
.L28:
	; ZOL_END, begins @.L15
	.align 2
.L14:
	tst_s	r3,r3
	add.ne r0,r0,1
	mov.eq	r0,0
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L22:
	tst_s	r3,r3
	add.ne r0,r0,1
	j_s.d	[blink]
	mov.eq	r0,0
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	breq_s	r2,0,.L38
	push_s	r13
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L41	; lp_count:@.L31->@.L41
	.align 2
.L31:
	mov_s	r0,r3	;4
	ldb.ab	r13,[r3,1]
	breq	r1,r13,.L30
	mov_s	r0,r3	;4
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L41:
	; ZOL_END, begins @.L31
	.align 2
.L30:
	tst_s	r2,r2
	mov_s	r2,0	;3
	mov.ne	r2,r0
	mov_s	r0,r2	;4
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L38:
	tst_s	r2,r2
	mov_s	r2,0	;3
	mov.ne	r2,r0
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L51
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r13,r2	;4
	mov	lp_count,r13	;5
	lp	@.L57	; lp_count:@.L44->@.L57
	.align 2
.L44:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	ldb.ab	r15,[r12,1]
	ldb.ab	r14,[r3,1]
	brne	r15,r14,.L43
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r0,r12	;4
	mov_s	r1,r3	;4
	.align 2
.L57:
	; ZOL_END, begins @.L44
	.align 2
.L43:
	tst_s	r2,r2
	beq.d	.L42
	mov.eq	r0,0
	ldb_s	r0,[r0]
	ldb_s	r2,[r1]
	sub_s	r0,r0,r2
.L42:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L51:
	breq_s	r2,0,.L53
	ldb_s	r0,[r0]
	ldb_s	r2,[r1]
	j_s.d	[blink]
	sub_s	r0,r0,r2
	.align 4
.L53:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r0,1 ;a,b,u6
	mov	lp_count,r2	;5
	lp	@.L64	; lp_count:@.L60->@.L64
	.align 2
.L60:
	ldb.ab	r12,[r1,1]
	stb.a	r12,[r3,1]
	.align 2
.L64:
	; ZOL_END, begins @.L60
	j_s	[blink]
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	push_s	r13
	extb_s	r1,r1
	add_s	r2,r2,r0   ;b,b,h
	not_s	r12,r0
	.align 2
.L66:
	breq.d	r2,r0,.L71
	add_s	r13,r12,r2   ;a,b,c/u3
	ldb.a	r3,[r2,-1]
	brne	r1,r3,.L66
	b.d	.L65
	add_s	r0,r0,r13   ;b,b,h
	.align 4
.L71:
	mov_s	r0,0	;3
.L65:
	j_s.d	[blink]
	pop_s	r13
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
	lp	@.L78	; lp_count:@.L74->@.L78
	.align 2
.L74:
	stb.ab	r1,[r3,1]
	.align 2
.L78:
	; ZOL_END, begins @.L74
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
.L81:
	mov_s	r0,r2	;4
	ldb.a	r3,[r1,1]
	brne.d	r3,0,.L81
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
.L87:
	ldb_s	r2,[r0]
	cmp_s	r1,r2
	jeq_s	[blink]
	ldb.a	r2,[r0,1]
	brne_s	r2,0,.L87
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L97:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r1,r3
	jeq_s	[blink]
	ldb	r3,[r2,-1]
	brne_s	r3,0,.L97
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r3,[r0]
	ldb_s	r2,[r1]
	cmp_s	r3,r2
	bne.d	.L101
	mov.eq	r2,r0
	.align 2
.L102:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	breq_s	r3,0,.L101
	ldb_s	r12,[r2]
	ldb.a	r3,[r1,1]
	breq.d	r12,r3,.L102
	mov_s	r0,r2	;4
	.align 2
.L101:
	ldb_s	r0,[r0]
	ldb_s	r2,[r1]
	j_s.d	[blink]
	sub_s	r0,r0,r2
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	tst_s	r2,r2
	beq.d	.L106
	mov.eq	r2,r0
	mov_s	r2,r0	;4
	.align 2
.L107:
	ldb.a	r3,[r2,1]
	brne_s	r3,0,.L107
	.align 2
.L106:
	j_s.d	[blink]
	sub_s	r0,r2,r0
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L116
	ldb_s	r3,[r0]
	breq_s	r3,0,.L118
	push_s	r14
	push_s	r13
	mov_s	r12,r1	;4
	mov_s	r3,r0	;4
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	.align 2
.L114:
	mov_s	r1,r12	;4
	ldb.ab	r13,[r12,1]
	breq.d	r13,0,.L113
	mov_s	r0,r3	;4
	breq	r3,r2,.L113
	ldb.ab	r14,[r3,1]
	ldb	r13,[r12,-1]
	brne	r14,r13,.L113
	mov_s	r0,r3	;4
	ldb_s	r13,[r3]
	brne.d	r13,0,.L114
	mov_s	r1,r12	;4
	.align 2
.L113:
	ldb_s	r0,[r0]
	ldb_s	r2,[r1]
	sub_s	r0,r0,r2
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L116:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L118:
	ldb_s	r0,[r0]
	ldb_s	r2,[r1]
	j_s.d	[blink]
	sub_s	r0,r0,r2
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	cmp_s	r2,1
	jle	[blink]
	sub1	r2,r2,1 ;a,b,u6
	lsr_s	r2,r2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L128	; lp_count:@.L124->@.L128
	.align 2
.L124:
	ldb_s	r3,[r0,1]
	stb_s	r3,[r1]
	ldb.ab	r3,[r0,2]
	stb_s	r3,[r1,1]
	add_s	r1,r1,2   ;b,b,h
	.align 2
.L128:
	; ZOL_END, begins @.L124
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
	brls	r0,31,.L157
	add	r2,r0,-127     ;a,b,limm
	brls	r2,32,.L158
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L159
	add_s	r0,r0,-65529   ;b,b,limm
	j_s.d	[blink]
	setlo	r0,r0,3
	.align 4
.L157:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L158:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L159:
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
	brls	r0,254,.L171
	brls	r0,8231,.L166
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L167
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L168
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L169
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L171:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L166:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L167:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L168:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L169:
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
	brne_s	r0,0,.L181
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L182
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L178
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L178:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L181:
	vadd2	r0,r14,0
	b_s	.L178
	.align 4
.L182:
	vadd2	r0,r16,0
	b_s	.L178
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
	bne.d	.L187
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L187
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L187:
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
	brne	r0,0,.L200
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L201
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L198
	mov_s	r2,r17	;4
	tst_s	r2,r2
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L196:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L198:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L196
	.align 4
.L200:
	vadd2	r0,r14,0
	b_s	.L196
	.align 4
.L201:
	vadd2	r0,r16,0
	b_s	.L196
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
	bne.d	.L204
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L204
	mov.ne	r0,r14
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L206
	tst_s	r14,r14
	mov.p	r13,r14
	mov_s	r0,r13
.L204:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L206:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r14,r13
	b.d	.L204
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
	brne	r0,0,.L216
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L217
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L214
	mov_s	r2,r17	;4
	tst_s	r2,r2
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L212:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L214:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L212
	.align 4
.L216:
	vadd2	r0,r14,0
	b_s	.L212
	.align 4
.L217:
	vadd2	r0,r16,0
	b_s	.L212
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
	brne	r0,0,.L224
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L225
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L222
	mov_s	r2,r17	;4
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L220:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L222:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L220
	.align 4
.L224:
	vadd2	r0,r14,0
	b_s	.L220
	.align 4
.L225:
	vadd2	r0,r16,0
	b_s	.L220
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
	bne.d	.L228
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L228
	mov.ne	r0,r14
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L230
	tst_s	r14,r14
	mov.p	r14,r13
	mov_s	r0,r14
.L228:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L230:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r13,r14
	b.d	.L228
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
	brne	r0,0,.L240
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L241
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L238
	mov_s	r2,r17	;4
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L236:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L238:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L236
	.align 4
.L240:
	vadd2	r0,r14,0
	b_s	.L236
	.align 4
.L241:
	vadd2	r0,r16,0
	b_s	.L236
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
	breq_s	r0,0,.L247
	mov_s	r2,@s.0	;13
	.align 2
.L246:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	lsr.f	r0,r0,6
	bne.d	.L246
	stb.ab	r3,[r2,1]
	.align 2
.L245:
	stb	0,[r2]
	mov_s	r0,@s.0	;13
	j_s	[blink]
	.align 4
.L247:
	mov_s	r2,@s.0	;13
	b_s	.L245
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
	mpydu	r2,r2,1284865837
	add_s	r3,r3,r12   ;b,b,h
	add.f	r12,r2,1
	adc	r2,r3,0
	st	r12,[@seed]	;26
	st	r2,[@seed+4]	;26
	j_s.d	[blink]
	lsr_s	r0,r2
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	breq_s	r1,0,.L258
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
.L258:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L260
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L260:
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
	st.a	r20,[sp,-4]	;26
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r17,r0	;4
	mov_s	r19,r1	;4
	mov_s	r20,r2	;4
	ld	r16,[r2]	;23
	breq.d	r16,0,.L264
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r14,r1	;4
	mov_s	r13,0	;3
	.align 2
.L267:
	mov_s	r1,r14	;4
	jl.d	[r18]
	mov_s	r0,r17	;4
	breq_s	r0,0,.L270
	add_s	r13,r13,1   ;b,b,h
	brne.d	r13,r16,.L267
	add_s	r14,r14,r15   ;b,b,h
	.align 2
.L264:
	add	r2,r16,1 ;a,b,c/u6
	st	r2,[r20]	;26
	mpy	r16,r16,r15
	mov_s	r2,r15	;4
	mov_s	r1,r17	;4
	bl.d	@memcpy;1
	add	r0,r19,r16 ;a,b,c/u6
.L263:
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.align 4
.L270:
	mpy_s	r13,r13,r15
	b.d	.L263
	add	r0,r19,r13 ;a,b,c/u6
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
	beq.d	.L271
	mov.eq	r0,0
	mov_s	r16,r0	;4
	mov_s	r19,r1	;4
	mov_s	r15,r3	;4
	mov_s	r17,r4	;4
	mov_s	r14,r1	;4
	mov_s	r13,0	;3
	.align 2
.L274:
	mov_s	r1,r14	;4
	jl.d	[r17]
	mov_s	r0,r16	;4
	breq_s	r0,0,.L278
	add_s	r13,r13,1   ;b,b,h
	brne.d	r13,r18,.L274
	add_s	r14,r14,r15   ;b,b,h
	b.d	.L271
	mov_s	r0,0	;3
	.align 4
.L278:
	mpy_s	r13,r13,r15
	add	r0,r19,r13 ;a,b,c/u6
.L271:
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
	push_s	r14
	push_s	r13
	mov_s	r14,r0	;4
	.align 2
.L282:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L282
	ldb_s	r2,[r13]
	breq	r2,43,.L288
	cmp_s	r2,45
	beq.d	.L283
	mov.eq	r3,1
	b.d	.L294
	mov_s	r3,0	;3
	.align 4
.L288:
	mov_s	r3,0	;3
	.align 2
.L283:
	add_s	r13,r13,1   ;b,b,h
	ldb_s	r2,[r13]
	.align 2
.L294:
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bhi.d	.L285
	mov.hi	r0,0
	mov_s	r0,0	;3
	.align 2
.L286:
	mpy	r0,r0,10
	ldb.ab	r2,[r13,1]
	sub3	r2,r2,6 ;a,b,u6
	sub_s	r0,r0,r2
	ldb_s	r2,[r13]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L286
	.align 2
.L285:
	tst_s	r3,r3
	neg.eq	r0,r0
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r0	;4
	.align 2
.L296:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L296
	ldb_s	r2,[r13]
	breq	r2,43,.L302
	cmp_s	r2,45
	beq.d	.L297
	mov.eq	r3,1
	b.d	.L308
	mov_s	r3,0	;3
	.align 4
.L302:
	mov_s	r3,0	;3
	.align 2
.L297:
	add_s	r13,r13,1   ;b,b,h
	ldb_s	r2,[r13]
	.align 2
.L308:
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bhi.d	.L299
	mov.hi	r0,0
	mov_s	r0,0	;3
	.align 2
.L300:
	mpy	r0,r0,10
	ldb.ab	r2,[r13,1]
	sub3	r2,r2,6 ;a,b,u6
	sub_s	r0,r0,r2
	ldb_s	r2,[r13]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L300
	.align 2
.L299:
	tst_s	r3,r3
	neg.eq	r0,r0
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r0	;4
	.align 2
.L310:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L310
	ldb_s	r2,[r13]
	breq	r2,43,.L316
	cmp_s	r2,45
	beq.d	.L311
	mov.eq	r12,1
	b.d	.L322
	mov_s	r12,0	;3
	.align 4
.L316:
	mov_s	r12,0	;3
	.align 2
.L311:
	add_s	r13,r13,1   ;b,b,h
	ldb_s	r2,[r13]
	.align 2
.L322:
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L318
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L314:
	mpy	r1,r1,10
	mpydu	r2,r0,10
	add_s	r3,r3,r1   ;b,b,h
	ldb.ab	r0,[r13,1]
	sub3	r0,r0,6 ;a,b,u6
	asr	r1,r0,31
	sub.f	r0,r2,r0
	sbc	r1,r3,r1
	ldb_s	r2,[r13]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L314
	.align 2
.L313:
	brne_s	r12,0,.L309
	mov_s	r2,0	;3
	sub.f	r0,r2,r0
	sbc	r1,r2,r1
.L309:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L318:
	mov_s	r0,0	;3
	b.d	.L313
	mov_s	r1,0	;3
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	push_s	blink
	st.a	r18,[sp,-4]	;26
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r15,r3	;4
	mov_s	r17,r4	;4
	mov.f	r14,r2
	bne.d	.L327
	mov.eq	r13,0
	b.d	.L332
	mov_s	r0,r13	;4
	.align 4
.L326:
	breq_s	r14,0,.L331
	.align 2
.L327:
	lsr_s	r13,r14
	mpy_s	r13,r13,r15
	add_s	r13,r13,r16   ;b,b,h
	mov_s	r1,r13	;4
	jl.d	[r17]
	mov_s	r0,r18	;4
	tst_s	r0,r0
	bn.d	.L326
	lsr.n	r14,r14,1
	brle	r0,0,.L323
	add	r16,r13,r15 ;a,b,c/u6
	lsr_s	r2,r14
	add_s	r14,r14,-1   ;h,h,s3
	b.d	.L326
	sub_s	r14,r14,r2
	.align 4
.L331:
	mov_s	r13,0	;3
	.align 2
.L323:
	mov_s	r0,r13	;4
	.align 2
.L332:
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
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
	bne.d	.L336
	mov.eq	r13,0
	b.d	.L341
	mov_s	r0,r13	;4
	.align 4
.L335:
	asr.f	r14,r14,1
	beq_s	.L340
	.align 2
.L336:
	asr_s	r13,r14,1
	mpy_s	r13,r13,r15
	add_s	r13,r13,r16   ;b,b,h
	mov_s	r2,r17	;4
	mov_s	r1,r13	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L333
	brle	r0,0,.L335
	add	r16,r13,r15 ;a,b,c/u6
	b.d	.L335
	add_s	r14,r14,-1   ;h,h,s3
	.align 4
.L340:
	mov_s	r13,0	;3
	.align 2
.L333:
	mov_s	r0,r13	;4
	.align 2
.L341:
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
	breq_s	r2,0,.L358
	.align 2
.L357:
	ld_s	r2,[r0]		;15
	breq	r1,r2,.L358
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L357
	.align 2
.L358:
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	mov_s	r2,0	;3
	mov.ne	r2,r0
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r3,[r0]		;15
	ld_s	r2,[r1]		;15
	brne	r3,r2,.L371
	mov_s	r2,r0	;4
	ld.ab	r12,[r2,4]	;23
	breq.d	r12,0,.L371
	mov_s	r3,r1	;4
	ld.ab	r12,[r3,4]	;23
	breq_s	r12,0,.L371
	push_s	r13
	.align 2
.L367:
	mov_s	r0,r2	;4
	ld_s	r13,[r2]		;15
	ld_s	r12,[r3]		;15
	brne.d	r13,r12,.L365
	mov_s	r1,r3	;4
	ld.ab	r12,[r2,4]	;23
	breq_s	r12,0,.L365
	ld.ab	r12,[r3,4]	;23
	brne_s	r12,0,.L367
	.align 2
.L365:
	ld_s	r3,[r0]		;15
	ld_s	r2,[r1]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L371:
	ld_s	r3,[r0]		;15
	ld_s	r2,[r1]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	j_s	[blink]
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L380:
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L380
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	beq.d	.L386
	mov.eq	r2,r0
	mov_s	r2,r0	;4
	.align 2
.L387:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L387
	.align 2
.L386:
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L401
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r3,r0	;4
	mov_s	r12,r1	;4
	mov_s	r13,r2	;4
	mov	lp_count,r13	;5
	lp	@.L409	; lp_count:@.L393->@.L409
	.align 2
.L393:
	mov_s	r1,r12	;4
	mov_s	r0,r3	;4
	ld.ab	r15,[r3,4]	;23
	ld.ab	r14,[r12,4]	;23
	brne	r15,r14,.L392
	ld	r14,[r3,-4]	;23
	breq_s	r14,0,.L392
	ld	r14,[r12,-4]	;23
	breq_s	r14,0,.L392
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r0,r3	;4
	mov_s	r1,r12	;4
	.align 2
.L409:
	; ZOL_END, begins @.L393
	.align 2
.L392:
	tst_s	r2,r2
	beq.d	.L391
	mov.eq	r0,0
	ld_s	r3,[r0]		;15
	ld_s	r2,[r1]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L391:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L401:
	breq_s	r2,0,.L403
	ld_s	r3,[r0]		;15
	ld_s	r2,[r1]		;15
	brlt	r3,r2,.L405
	mov_s	r0,r3	;4
	j_s.d	[blink]
	setgt	r0,r0,r2
	.align 4
.L403:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L405:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	breq_s	r2,0,.L419
	push_s	r13
	mov_s	r3,r0	;4
	mov_s	r12,r2	;4
	mov	lp_count,r12	;5
	lp	@.L422	; lp_count:@.L412->@.L422
	.align 2
.L412:
	mov_s	r0,r3	;4
	ld.ab	r13,[r3,4]	;23
	breq	r1,r13,.L411
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r0,r3	;4
	.align 2
.L422:
	; ZOL_END, begins @.L412
	.align 2
.L411:
	tst_s	r2,r2
	mov_s	r2,0	;3
	mov.ne	r2,r0
	mov_s	r0,r2	;4
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L419:
	tst_s	r2,r2
	mov_s	r2,0	;3
	mov.ne	r2,r0
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L433
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r0	;4
	mov_s	r3,r1	;4
	mov_s	r13,r2	;4
	mov	lp_count,r13	;5
	lp	@.L441	; lp_count:@.L425->@.L441
	.align 2
.L425:
	mov_s	r1,r3	;4
	mov_s	r0,r12	;4
	ld.ab	r15,[r12,4]	;23
	ld.ab	r14,[r3,4]	;23
	brne	r15,r14,.L424
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r0,r12	;4
	mov_s	r1,r3	;4
	.align 2
.L441:
	; ZOL_END, begins @.L425
	.align 2
.L424:
	tst_s	r2,r2
	beq.d	.L423
	mov.eq	r0,0
	ld_s	r3,[r0]		;15
	ld_s	r2,[r1]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L423:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L433:
	breq_s	r2,0,.L435
	ld_s	r3,[r0]		;15
	ld_s	r2,[r1]		;15
	brlt	r3,r2,.L437
	mov_s	r0,r3	;4
	j_s.d	[blink]
	setgt	r0,r0,r2
	.align 4
.L435:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L437:
	j_s.d	[blink]
	mov_s	r0,-1	;4
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
	lp	@.L451	; lp_count:@.L444->@.L451
	.align 2
.L444:
	ld.ab	r13,[r1,4]	;23
	st.a	r13,[r12,4]	;26
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L451:
	; ZOL_END, begins @.L444
	j_s.d	[blink]
	pop_s	r13
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp_s	r0,r1
	jeq_s	[blink]
	sub_s	r3,r0,r1
	asl_s	r12,r2,2
	brlo	r3,r12,.L454
	tst_s	r2,r2
	jeq.d	[blink]
	sub	r3,r2,1 ;a,b,u6
	push_s	r13
	sub2	r12,r0,1 ;a,b,u6
	add_s	r2,r3,1   ;a,b,c/u3
	mov	lp_count,r2	;5
	lp	@.L467	; lp_count:@.L457->@.L467
	.align 2
.L457:
	ld.ab	r13,[r1,4]	;23
	st.a	r13,[r12,4]	;26
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L467:
	; ZOL_END, begins @.L457
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L454:
	tst_s	r2,r2
	jeq_s	[blink]
	add2_s	r1,r1,r2
	add2	r3,r0,r2
	add2	r2,-4,r2
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L466	; lp_count:@.L456->@.L466
	.align 2
.L456:
	ld.a	r12,[r1,-4]	;23
	st.a	r12,[r3,-4]	;26
	.align 2
.L466:
	; ZOL_END, begins @.L456
	j_s	[blink]
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
	lp	@.L474	; lp_count:@.L470->@.L474
	.align 2
.L470:
	st.ab	r1,[r12,4]	;26
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L474:
	; ZOL_END, begins @.L470
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	brhs	r0,r1,.L476
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L486	; lp_count:@.L478->@.L486
	.align 2
.L478:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L486:
	; ZOL_END, begins @.L478
	j_s	[blink]
	.align 4
.L476:
	cmp_s	r0,r1
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L485	; lp_count:@.L479->@.L485
	.align 2
.L479:
	ldb.ab	r3,[r0,1]
	stb.a	r3,[r1,1]
	.align 2
.L485:
	; ZOL_END, begins @.L479
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
	asl	r2,r0,r1
	rsub	r1,r1,16
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
	lsr	r2,r0,r1
	rsub	r1,r1,16
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
	asl	r2,r0,r1
	rsub	r1,r1,8
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
	lsr	r2,r0,r1
	rsub	r1,r1,8
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
	extb_s	r0,r0
	asl_s	r0,r0,8
	j_s.d	[blink]
	or_s	r0,r0,r2
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	lsr	r3,r0,24
	and	r2,r0,16711680
	lsr_s	r2,r2,8
	or_s	r2,r2,r3
	and	r3,r0,65280
	asl_s	r3,r3,8
	or_s	r2,r2,r3
	asl_s	r0,r0,24
	j_s.d	[blink]
	or_s	r0,r0,r2
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	lsr	r2,r1,24
	and	r12,r1,16711680
	lsr_s	r12,r12,8
	or_s	r12,r12,r2
	and	r2,r1,65280
	asl_s	r2,r2,8
	or_s	r12,r12,r2
	asl	r3,r1,24
	lsr	r1,r0,24
	and	r2,r0,16711680
	lsr_s	r2,r2,8
	or_s	r1,r1,r2
	and	r2,r0,65280
	asl_s	r2,r2,8
	or_s	r1,r1,r2
	asl	r2,r0,24
	or	r0,r12,r3
	j_s.d	[blink]
	or_s	r1,r1,r2
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	mov_s	r2,0	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L521	; lp_count:@.L516->@.L521
	.align 2
.L516:
	bbit1	r0,r2,@.L520
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L521:
	; ZOL_END, begins @.L516
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L520:
	j_s.d	[blink]
	add_s	r0,r2,1   ;R0/R1,b,u6
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L525
	bbit1	r2,0,@.L526
	mov_s	r0,1	;3
	.align 2
.L524:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L524
	add_s	r0,r0,1   ;b,b,h
	j_s	[blink]
	.align 4
.L525:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L526:
	j_s.d	[blink]
	mov_s	r0,1	;3
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
	bn.d	.L529
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L529:
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
	bn.d	.L534
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L534:
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
	bn.d	.L539
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L539:
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
	brne_s	r0,0,.L547
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	mov_s	r1,r0
	bl.d	@__nesf2;1
	mov_s	r0,r15
	breq_s	r0,0,.L547
	tst_s	r14,r14
	mov_s	r13,0x3f000000 ; 5.0e-1
	mov.p	r13,0x40000000 ; 2.0e+0
	b_s	.L551
	.align 4
.L550:
	div	r14,r14,2
	breq_s	r14,0,.L547
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L551:
	bbit0	r14,0,@.L550
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L550
	mov_s	r15,r0
	.align 4
.L547:
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
	brne	r0,0,.L556
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L556
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L560
	.align 4
.L559:
	div	r13,r13,2
	.align 4
.L564:
	breq_s	r13,0,.L556
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L560:
	bbit0	r13,0,@.L559
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L564
	.align 4
.L556:
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
	brne	r0,0,.L566
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L566
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L570
	.align 4
.L569:
	div	r13,r13,2
	.align 4
.L574:
	breq_s	r13,0,.L566
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L570:
	bbit0	r13,0,@.L569
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L574
	.align 4
.L566:
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
	lp	@.L584	; lp_count:@.L577->@.L584
	.align 2
.L577:
	ldb.ab	r13,[r1,1]
	ldb.ab	r3,[r12,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L584:
	; ZOL_END, begins @.L577
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
	breq.d	r14,0,.L586
	add_s	r2,r15,r0   ;a,b,c/u3
	sub	r1,r13,1 ;a,b,u6
	mov_s	r3,r2	;4
	mov_s	r13,r14	;4
	mov	lp_count,r13	;5
	lp	@.L593	; lp_count:@.L587->@.L593
	.align 2
.L587:
	mov_s	r2,r3	;4
	ldb.a	r12,[r1,1]
	breq.d	r12,0,.L586
	stb.ab	r12,[r3,1]
	mov_s	r2,r3	;4
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L593:
	; ZOL_END, begins @.L587
	.align 2
.L586:
	brne_s	r14,0,.L589
	stb	0,[r2]
	.align 2
.L589:
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
	breq_s	r1,0,.L598
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	sub_s	r1,r1,r0
	mov	lp_count,r1	;5
	lp	@.L602	; lp_count:@.L596->@.L602
	.align 2
.L596:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L602:
	; ZOL_END, begins @.L596
	j_s	[blink]
	.align 4
.L598:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r2,[r0]
	breq_s	r2,0,.L611
	.align 2
.L604:
	sub	r2,r1,1 ;a,b,u6
	.align 2
.L607:
	ldb.a	r3,[r2,1]
	breq_s	r3,0,.L612
	ldb_s	r12,[r2]
	ldb_s	r3,[r0]
	brne	r12,r3,.L607
	j_s	[blink]
	.align 4
.L611:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L612:
	ldb.a	r2,[r0,1]
	brne_s	r2,0,.L604
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
.L616:
	ldb_s	r3,[r2]
	cmp_s	r1,r3
	mov_s	r3,r2	;4
	mov.ne	r3,r0
	mov_s	r0,r3	;4
	ldb.ab	r3,[r2,1]
	brne_s	r3,0,.L616
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
	beq_s	.L622
	ldb	r16,[r14]
	.align 2
.L624:
	mov_s	r1,r16	;4
	bl.d	@strchr;1
	mov_s	r0,r13	;4
	mov.f	r13,r0
	beq_s	.L628
	mov_s	r2,r15	;4
	mov_s	r1,r14	;4
	bl.d	@strncmp;1
	mov_s	r0,r13	;4
	breq_s	r0,0,.L622
	b.d	.L624
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L628:
	mov_s	r13,0	;3
	.align 2
.L622:
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
	brlt	r0,0,.L639
	.align 2
.L630:
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L633
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L632
	.align 2
.L633:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L639:
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L630
	.align 2
.L632:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L633
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
	sub_s	r14,r1,r3
	add_s	r14,r14,r0   ;b,b,h
	tst_s	r3,r3
	beq.d	.L640
	mov.eq	r15,r0
	cmp_s	r1,r3
	blo.d	.L640
	mov.lo	r15,0
	cmp_s	r0,r14
	bhi.d	.L640
	mov.hi	r15,0
	mov_s	r18,r2	;4
	ldb.ab	r17,[r18,1]
	mov_s	r13,r0	;4
	b.d	.L643
	sub	r16,r3,1 ;a,b,u6
	.align 4
.L642:
	brlo	r14,r13,.L649
	.align 2
.L643:
	mov_s	r15,r13	;4
	ldb.ab	r3,[r13,1]
	brne	r3,r17,.L642
	mov_s	r2,r16	;4
	mov_s	r1,r18	;4
	bl.d	@memcmp;1
	mov_s	r0,r13	;4
	brne_s	r0,0,.L642
	b.d	.L650
	mov_s	r0,r15	;4
	.align 4
.L649:
	mov_s	r15,0	;3
	.align 2
.L640:
	mov_s	r0,r15	;4
	.align 2
.L650:
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
	bn.d	.L678
	mov.p	r21,0
	.align 2
.L654:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L674
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L658:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__gedf2;1
	brge	r0,0,.L658
	.align 2
.L659:
	breq.d	r21,0,.L663
	st	r13,[r20]	;26
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L663:
	vadd2	r0,r14,0
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L678:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b.d	.L654
	mov_s	r21,1	;4
	.align 4
.L674:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L659
	mov.p	r13,0
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	beq.d	.L659
	mov.eq	r13,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L662:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	vadd2	r2,r16,0
	bl	@__ltdf2;1
	brlt	r0,0,.L662
	b_s	.L659
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r4,r0	;4
	or.f	0,r0,r1
	beq.d	.L683
	mov_s	r14,r1	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r13,r4	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L682:
	mov_s	r2,r13	;4
	bmsk_s	r2,r2,0
	mpy	r4,r15,r2
	mpydu	r2,r12,r2
	add_s	r3,r3,r4   ;b,b,h
	add.f	r0,r0,r2
	adc	r1,r1,r3
	add.f	r12,r12,r12
	adc	r15,r15,r15
	lsr.f	r14,r14
	rrc	r13,r13
	or.f	0,r13,r14
	bne_s	.L682
.L679:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L683:
	mov_s	r0,0	;3
	b.d	.L679
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp_s	r1,r0
	bhs.d	.L688
	mov.hs	r3,1
	mov_s	r3,1	;3
	.align 2
.L687:
	brlt	r1,0,.L688
	asl_s	r1,r1,1
	brls.d	r0,r1,.L688
	asl_s	r3,r3,1
	brne_s	r3,0,.L687
	.align 2
.L688:
	tst_s	r3,r3
	beq.d	.L690
	mov.eq	r12,0
	mov_s	r12,0	;3
	.align 2
.L689:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L689
	lsr_s	r1,r1
	.align 2
.L690:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L702
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L702:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r2,r1,31
	xor_s	r0,r0,r2
	xor_s	r1,r1,r2
	or.f	0,r0,r1
	beq_s	.L709
	fls	r0,r0
	breq.d	r1,0,.L708
	rsub	r0,r0,63
	fls	r1,r1
	rsub	r0,r1,31
	.align 2
.L708:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L709:
	j_s.d	[blink]
	mov_s	r0,63	;3
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov.f	r2,r0
	beq_s	.L714
	mov_s	r0,0	;3
	.align 2
.L713:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L713
	asl_s	r1,r1,1
	j_s	[blink]
	.align 4
.L714:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brhs.d	r0,r1,.L720
	bmskn	r4,r2,2
	.align 2
.L723:
	breq	r3,0,.L743
	std.a	r14,[sp,-8]
	push_s	r13
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L747	; lp_count:@.L726->@.L747
	.align 2
.L726:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L747:
	; ZOL_END, begins @.L726
	brls	r2,r4,.L719
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L746	; lp_count:@.L727->@.L746
	.align 2
.L727:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L746:
	; ZOL_END, begins @.L727
	.align 2
.L719:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L720:
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L723
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r1,r1,r2   ;b,b,h
	add_s	r0,r0,r2   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L745	; lp_count:@.L728->@.L745
	.align 2
.L728:
	ldb.a	r3,[r1,-1]
	stb.a	r3,[r0,-1]
	.align 2
.L745:
	; ZOL_END, begins @.L728
	j_s	[blink]
	.align 4
.L743:
	cmp_s	r2,r4
	jls	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	add	r3,r1,r4 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L744	; lp_count:@.L739->@.L744
	.align 2
.L739:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L744:
	; ZOL_END, begins @.L739
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brhs.d	r0,r1,.L749
	lsr_s	r3,r2
	.align 2
.L752:
	breq_s	r3,0,.L751
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	add1	r3,-2,r3
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L764	; lp_count:@.L755->@.L764
	.align 2
.L755:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L764:
	; ZOL_END, begins @.L755
	.align 2
.L751:
	bbit0	r2,0,@.L748
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r12,r1,r2   ;a,b,c/u3
	add_s	r3,r0,r2   ;a,b,c/u3
	ldb_s	r2,[r12]
	stb_s	r2,[r3]
	.align 2
.L748:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L749:
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L752
	add_s	r12,r1,r2   ;a,b,c/u3
	breq.d	r2,0,.L748
	add_s	r3,r0,r2   ;a,b,c/u3
	.align 2
.L763:
	mov	lp_count,r2	;5
	lp	@.L762	; lp_count:@.L756->@.L762
	.align 2
.L756:
	ldb.a	r13,[r12,-1]
	stb.a	r13,[r3,-1]
	.align 2
.L762:
	; ZOL_END, begins @.L756
	b_s	.L748
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	brhs.d	r0,r1,.L766
	bmskn	r15,r2,1
	.align 2
.L769:
	breq_s	r3,0,.L768
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	add2	r3,-4,r3
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L785	; lp_count:@.L772->@.L785
	.align 2
.L772:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L785:
	; ZOL_END, begins @.L772
	.align 2
.L768:
	brls	r2,r15,.L765
	add_s	r15,r15,-1   ;h,h,s3
	add_s	r3,r1,r15   ;a,b,c/u3
	add_s	r0,r0,r15   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r1   ;b,b,h
	sub_s	r2,r2,r3
	mov	lp_count,r2	;5
	lp	@.L784	; lp_count:@.L773->@.L784
	.align 2
.L773:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L784:
	; ZOL_END, begins @.L773
	.align 2
.L765:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L766:
	add_s	r12,r1,r2   ;a,b,c/u3
	brlo	r12,r0,.L769
	tst_s	r2,r2
	add.ne r1,r1,r2
	beq.d	.L765
	add.ne r0,r0,r2
	.align 2
.L783:
	mov	lp_count,r2	;5
	lp	@.L782	; lp_count:@.L774->@.L782
	.align 2
.L774:
	ldb.a	r3,[r1,-1]
	stb.a	r3,[r0,-1]
	.align 2
.L782:
	; ZOL_END, begins @.L774
	b_s	.L765
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
	lp	@.L804	; lp_count:@.L800->@.L804
	.align 2
.L800:
	rsub	r3,r0,15
	bbit1	r12,r3,@.L805
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L804:
	; ZOL_END, begins @.L800
	.align 2
.L805:
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
	lp	@.L812	; lp_count:@.L808->@.L812
	.align 2
.L808:
	bbit1	r3,r0,@.L813
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L812:
	; ZOL_END, begins @.L808
	.align 2
.L813:
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
	brge	r0,0,.L821
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L814:
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L821:
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L814
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
	lp	@.L827	; lp_count:@.L823->@.L827
	.align 2
.L823:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L827:
	; ZOL_END, begins @.L823
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
	lp	@.L833	; lp_count:@.L829->@.L833
	.align 2
.L829:
	asr	r2,r13,r12
	bmsk_s	r2,r2,0
	add_s	r0,r0,r2   ;b,b,h
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L833:
	; ZOL_END, begins @.L829
	j_s.d	[blink]
	pop_s	r13
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov.f	r2,r0
	beq_s	.L837
	mov_s	r0,0	;3
	.align 2
.L836:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	add_s	r0,r0,r3   ;b,b,h
	lsr.f	r2,r2,1
	bne.d	.L836
	asl_s	r1,r1,1
	j_s	[blink]
	.align 4
.L837:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov.f	r3,r0
	beq_s	.L845
	breq_s	r1,0,.L846
	mov_s	r0,0	;3
	.align 2
.L844:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	lsr.f	r1,r1,1
	bne.d	.L844
	asl_s	r3,r3,1
	j_s	[blink]
	.align 4
.L845:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L846:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r1,r0
	bhs.d	.L853
	mov.hs	r3,1
	mov_s	r3,1	;3
	.align 2
.L852:
	brlt	r1,0,.L853
	asl_s	r1,r1,1
	brls.d	r0,r1,.L853
	asl_s	r3,r3,1
	brne_s	r3,0,.L852
	.align 2
.L853:
	tst_s	r3,r3
	beq.d	.L855
	mov.eq	r12,0
	mov_s	r12,0	;3
	.align 2
.L854:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L854
	lsr_s	r1,r1
	.align 2
.L855:
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
	bn	.L865
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L865:
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
	bn	.L870
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L870:
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
	mov.n	r14,1
	mov.p	r14,0
	tst_s	r1,r1
	beq.d	.L881
	mov.eq	r0,0
	mov_s	r3,32	;3
	mov_s	r0,0	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L889	; lp_count:@.L882->@.L889
	.align 2
.L882:
	and	r2,r1,1
	mpy_s	r2,r2,r12
	add_s	r0,r0,r2   ;b,b,h
	asr.f	r1,r1,1
	beq.d	.L881
	asl_s	r12,r12,1
	add_s	r3,r3,-1   ;h,h,s3
	extb_s	r3,r3
	.align 2
.L889:
	; ZOL_END, begins @.L882
	.align 2
.L881:
	tst_s	r14,r14
	neg.ne	r0,r0
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
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
	cmp_s	r1,r0
	bhs.d	.L903
	mov.hs	r3,1
	mov_s	r3,1	;3
	mov_s	r12,16	;3
	.align 2
.L902:
	btst_s	r1,15
	bne_s	.L903
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	brls.d	r0,r1,.L903
	exth_s	r3,r3
	add_s	r12,r12,-1   ;h,h,s3
	tst_s	r12,r12
	bne_s	.L902
	.align 2
.L903:
	tst_s	r3,r3
	beq.d	.L905
	mov.eq	r12,0
	mov_s	r12,0	;3
	.align 2
.L904:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	bmsk.hs	r0,r0,15
	or.hs r12,r12,r3
	bmsk.hs	r12,r12,15
	lsr.f	r3,r3,1
	bne.d	.L904
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
	bhs.d	.L918
	mov.hs	r3,1
	mov_s	r3,1	;3
	.align 2
.L917:
	brlt	r1,0,.L918
	asl_s	r1,r1,1
	brls.d	r0,r1,.L918
	asl_s	r3,r3,1
	brne_s	r3,0,.L917
	.align 2
.L918:
	tst_s	r3,r3
	beq.d	.L920
	mov.eq	r12,0
	mov_s	r12,0	;3
	.align 2
.L919:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L919
	lsr_s	r1,r1
	.align 2
.L920:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0.d	r2,5,@.L931
	mov_s	r12,r0	;4
	asl	r1,r12,r2
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L931:
	push_s	r13
	breq.d	r2,0,.L933
	mov_s	r13,r1	;4
	asl	r0,r12,r2
	asl_s	r13,r13,r2
	rsub	r2,r2,32
	lsr_s	r12,r12,r2
	or	r1,r12,r13
.L933:
	j_s.d	[blink]
	pop_s	r13
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0.d	r2,5,@.L939
	mov_s	r12,r1	;4
	asr	r0,r12,r2
	j_s.d	[blink]
	asr_s	r1,r1,31
	.align 4
.L939:
	push_s	r13
	breq.d	r2,0,.L941
	mov_s	r13,r0	;4
	asr_s	r1,r1,r2
	rsub	r3,r2,32
	asl_s	r12,r12,r3
	lsr_s	r13,r13,r2
	or	r0,r12,r13
.L941:
	j_s.d	[blink]
	pop_s	r13
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r1,24
	lsr	r15,r1,8
	and	r15,r15,65280
	asl	r14,r1,8
	and	r14,r14,16711680
	asl_s	r1,r1,24
	asl	r12,r0,8
	lsr	r4,r0,24
	lsr	r13,r0,8
	asl	r2,r0,24
	and	r13,r13,65280
	and	r12,r12,16711680
	or	r0,r3,r15
	or_s	r0,r0,r14
	or	r2,r2,r4
	or_s	r2,r2,r13
	or_s	r0,r0,r1
	or	r1,r2,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	lsr	r12,r0,24
	lsr	r3,r0,8
	and	r3,r3,65280
	asl	r2,r0,8
	and	r2,r2,16711680
	asl_s	r0,r0,24
	or_s	r0,r0,r12
	or_s	r0,r0,r3
	j_s.d	[blink]
	or_s	r0,r0,r2
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
	add1	r0,r3,r0
	xbfu	r3,r2,1
	xor	r3,r3,1
	extb_s	r3,r3
	rsub	r2,r2,2
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	j_s.d	[blink]
	pop_s	r13
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	push_s	r14
	push_s	r13
	mov_s	r13,r2	;4
	cmp_s	r1,r3
	blt.d	.L953
	mov.lt	r0,0
	mov_s	r14,r0	;4
	cmp_s	r1,r3
	bgt.d	.L953
	mov.gt	r0,2
	cmp_s	r14,r13
	blo.d	.L953
	mov.lo	r0,0
	cmp_s	r14,r13
	mov_s	r0,1	;3
	mov.hi	r0,2
.L953:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
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
	exth_s	r3,r0
	seteq	r3,r3,0
	asl_s	r3,r3,4
	lsr	r2,r0,r3
	extb_s	r0,r2
	seteq	r0,r0,0
	asl_s	r0,r0,3
	lsr_s	r2,r2,r0
	add_s	r0,r0,r3   ;b,b,h
	and	r3,r2,15
	seteq	r3,r3,0
	asl_s	r3,r3,2
	lsr_s	r2,r2,r3
	add_s	r0,r0,r3   ;b,b,h
	and	r3,r2,3
	seteq	r3,r3,0
	asl_s	r3,r3,1
	lsr_s	r2,r2,r3
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
	bbit0.d	r2,5,@.L964
	mov_s	r12,r1	;4
	lsr	r0,r12,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L964:
	push_s	r13
	breq.d	r2,0,.L966
	mov_s	r13,r0	;4
	lsr_s	r1,r1,r2
	rsub	r3,r2,32
	asl_s	r12,r12,r3
	lsr_s	r13,r13,r2
	or	r0,r12,r13
.L966:
	j_s.d	[blink]
	pop_s	r13
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
	add_s	r2,r2,r14   ;b,b,h
	mpy_s	r1,r1,r3
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
	mov_s	r13,r1	;4
	mov_s	r1,r2	;4
	mov_s	r14,r3	;4
	mov_s	r15,r0	;4
	bl.d	@__muldsi3;1
	mov_s	r16,r2	;4
	vadd2	r2,r0,0
	mov_s	r1,r3	;4
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
	mov_s	r2,r1	;4
	xor_s	r2,r2,r0
	lsr	r3,r2,16
	xor_s	r3,r3,r2
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
	mov_s	r13,r2	;4
	lsr	r18,r2,31
	mov_s	r17,1072693248	;13
	b.d	.L988
	mov_s	r16,0	;4
	.align 4
.L986:
	div	r13,r13,2
	.align 4
.L991:
	breq_s	r13,0,.L987
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L988:
	bbit0	r13,0,@.L986
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L991
	.align 4
.L987:
	breq	r18,0,.L985
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	.align 2
.L985:
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
	mov_s	r13,r0
	mov_s	r14,r1	;4
	mov_s	r15,0x3f800000 ; 1.0e+0
	b.d	.L995
	lsr	r16,r1,31
	.align 4
.L993:
	div	r14,r14,2
	breq_s	r14,0,.L994
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L995:
	bbit0	r14,0,@.L993
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L993
	mov_s	r15,r0
	.align 4
.L994:
	breq	r16,0,.L992
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	mov_s	r15,r0
	.align 2
.L992:
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
	push_s	r14
	push_s	r13
	mov_s	r13,r2	;4
	cmp_s	r1,r3
	blo.d	.L999
	mov.lo	r0,0
	mov_s	r14,r0	;4
	cmp_s	r1,r3
	bhi.d	.L999
	mov.hi	r0,2
	cmp_s	r14,r13
	blo.d	.L999
	mov.lo	r0,0
	cmp_s	r14,r13
	mov_s	r0,1	;3
	mov.hi	r0,2
.L999:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
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
