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
	lp	@.L43	; lp_count:@.L4->@.L43
	.align 2
.L4:
	ldb.a	r3,[r12,-1]
	stb.a	r3,[r2,-1]
	.align 2
.L43:
	; ZOL_END, begins @.L4
	j_s	[blink]
	.align 4
.L2:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L40
	std.a	r14,[sp,-8]
	push_s	r13
	or	r12,r1,r0
	add_s	r3,r1,1   ;a,b,c/u3
	bmsk_s	r12,r12,1
	sub_s	r13,r0,r3
	seteq	r12,r12,0
	seths	r13,r13,3
	tst_s	r12,r13
	beq_s	.L5
	bmskn	r15,r2,1
	sub2	r3,r15,1 ;a,b,u6
	sub2	r13,r1,1 ;a,b,u6
	mov_s	r12,r0	;4
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L42	; lp_count:@.L6->@.L42
	.align 2
.L6:
	ld.a	r14,[r13,4]	;23
	st.ab	r14,[r12,4]	;26
	.align 2
.L42:
	; ZOL_END, begins @.L6
	add_s	r1,r1,r15   ;b,b,h
	breq.d	r2,r15,.L3
	sub_s	r3,r2,r15
	ldb_s	r2,[r1]
	breq.d	r3,1,.L3
	stb_s	r2,[r12]
	ldb_s	r2,[r1,1]
	breq.d	r3,2,.L3
	stb_s	r2,[r12,1]
	ldb_s	r2,[r1,2]
	stb_s	r2,[r12,2]
.L3:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L5:
	sub	r12,r0,1 ;a,b,u6
	b.d	.L9
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L41:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L9:
	ldb	r2,[r3,-1]
	brne.d	r3,r1,.L41
	stb.a	r2,[r12,1]
	b_s	.L3
	.align 4
.L40:
	add_s	r3,r1,1   ;a,b,c/u3
	sub	r12,r0,1 ;a,b,u6
	add_s	r1,r1,r2   ;b,b,h
	.align 2
.L36:
	ldb	r2,[r3,-1]
	cmp_s	r3,r1
	jeq.d	[blink]
	stb.a	r2,[r12,1]
	b.d	.L36
	add_s	r3,r3,1   ;b,b,h
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	breq_s	r3,0,.L58
	push_s	r13
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r3	;5
	lp	@.L61	; lp_count:@.L46->@.L61
	.align 2
.L46:
	ldb.a	r12,[r1,1]
	breq.d	r12,r2,.L44
	stb.ab	r12,[r0,1]
	nop_s
	.align 2
.L61:
	; ZOL_END, begins @.L46
	mov_s	r0,0	;3
.L44:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L58:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	breq_s	r2,0,.L70
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov	lp_count,r2	;5
	lp	@.L74	; lp_count:@.L64->@.L74
	.align 2
.L64:
	mov_s	r0,r3	;4
	ldb.ab	r12,[r3,1]
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L74:
	; ZOL_END, begins @.L64
	.align 2
.L70:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L85
	.align 2
.L91:
	mov	lp_count,r2	;5
	lp	@.L90	; lp_count:@.L77->@.L90
	.align 2
.L77:
	ldb_s	r12,[r1]
	add_s	r0,r0,1   ;b,b,h
	ldb	r3,[r0,-1]
	brne.d	r3,r12,.L89
	add_s	r1,r1,1   ;b,b,h
	nop_s
	.align 2
.L90:
	; ZOL_END, begins @.L77
	.align 2
.L85:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L89:
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
	b.d	.L99
	sub	r12,r0,1 ;a,b,u6
	.align 4
.L101:
	ldb_s	r3,[r0]
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L99:
	brne.d	r2,r12,.L101
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
.L110:
	ldb.a	r3,[r1,1]
	mov_s	r0,r2	;4
	tst_s	r3,r3
	jeq.d	[blink]
	stb.ab	r3,[r2,1]
	ldb.a	r3,[r1,1]
	mov_s	r0,r2	;4
	brne.d	r3,0,.L110
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
.L124:
	ldb.a	r2,[r0,1]
	tst_s	r2,r2
	jeq_s	[blink]
	brne	r2,r1,.L124
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L128:
	ldb_s	r3,[r2]
	mov_s	r0,r2	;4
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	brne_s	r3,0,.L128
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	breq	r2,r3,.L134
	j_s.d	[blink]
	sub_s	r0,r2,r3
	.align 4
.L135:
	ldb.a	r2,[r0,1]
	ldb.a	r3,[r1,1]
	brne	r2,r3,.L133
	.align 2
.L134:
	brne_s	r2,0,.L135
	.align 2
.L133:
	sub_s	r0,r2,r3
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	breq_s	r2,0,.L142
	mov_s	r2,r0	;4
	.align 2
.L141:
	ldb.a	r3,[r2,1]
	brne_s	r3,0,.L141
	j_s.d	[blink]
	sub_s	r0,r2,r0
	.align 4
.L142:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L153
	ldb_s	r3,[r0]
	breq_s	r3,0,.L160
	push_s	r13
	add_s	r2,r2,-1   ;h,h,s3
	b.d	.L149
	add_s	r12,r0,r2   ;a,b,c/u3
	.align 4
.L162:
	breq	r0,r12,.L148
	brne	r2,r3,.L148
	ldb.a	r3,[r0,1]
	breq_s	r3,0,.L161
	.align 2
.L149:
	mov_s	r13,r1	;4
	ldb.ab	r2,[r1,1]
	brne_s	r2,0,.L162
	.align 2
.L148:
	sub_s	r0,r3,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L153:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L161:
	ldb_s	r2,[r13,1]
	sub_s	r0,r3,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L160:
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
	lp	@.L169	; lp_count:@.L165->@.L169
	.align 2
.L165:
	add_s	r1,r1,2   ;b,b,h
	ldb_s	r12,[r0,1]
	ldb.ab	r3,[r0,2]
	stb	r12,[r1,-2]
	stb	r3,[r1,-1]
	.align 2
.L169:
	; ZOL_END, begins @.L165
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
	brls	r0,31,.L200
	add	r2,r0,-127     ;a,b,limm
	brhi	r2,32,.L202
	.align 2
.L200:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L202:
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L200
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
	brls	r0,254,.L213
	brls	r0,8231,.L210
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L210
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L210
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L211
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L210:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L213:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L211:
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
	brne_s	r0,0,.L223
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L224
	vadd2	r0,r14,0
	vadd2	r2,r16,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L220
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L220:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L223:
	vadd2	r0,r14,0
	b_s	.L220
	.align 4
.L224:
	vadd2	r0,r16,0
	b_s	.L220
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
	bne.d	.L229
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L229
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L229:
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
	brne	r0,0,.L244
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L245
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L248
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L238:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L248:
	vadd2	r0,r16,0
	tst_s	r2,r2
	mov.ne	r0,r14
	mov.ne	r1,r15
	b_s	.L238
	.align 4
.L244:
	vadd2	r0,r14,0
	b_s	.L238
	.align 4
.L245:
	vadd2	r0,r16,0
	b_s	.L238
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
	bne.d	.L249
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L249
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	mov_s	r3,r13	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L251
	tst_s	r2,r2
	mov.ne	r14,r13
	mov_s	r0,r14
.L249:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L251:
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
	brne	r0,0,.L265
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L266
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L269
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L259:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L269:
	vadd2	r0,r16,0
	tst_s	r2,r2
	mov.ne	r0,r14
	mov.ne	r1,r15
	b_s	.L259
	.align 4
.L265:
	vadd2	r0,r14,0
	b_s	.L259
	.align 4
.L266:
	vadd2	r0,r16,0
	b_s	.L259
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
	brne	r0,0,.L276
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L277
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L280
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L270:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L280:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L270
	.align 4
.L276:
	vadd2	r0,r14,0
	b_s	.L270
	.align 4
.L277:
	vadd2	r0,r16,0
	b_s	.L270
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
	bne.d	.L281
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L281
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	mov_s	r3,r13	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L283
	tst_s	r2,r2
	mov.ne	r13,r14
	mov_s	r0,r13
.L281:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L283:
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
	brne	r0,0,.L297
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L298
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L301
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L291:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L301:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L291
	.align 4
.L297:
	vadd2	r0,r14,0
	b_s	.L291
	.align 4
.L298:
	vadd2	r0,r16,0
	b_s	.L291
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L303
	.align 2
.L304:
	and	r3,r0,63
	lsr.f	r0,r0,6
	ldb	r3,[r3,@digits]
	bne.d	.L304
	stb.ab	r3,[r2,1]
	.align 2
.L303:
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
	breq_s	r1,0,.L319
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
.L319:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L321
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L321:
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
	breq.d	r16,0,.L331
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	b.d	.L333
	mov_s	r14,0	;3
	.align 4
.L346:
	breq.d	r16,r14,.L331
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L333:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl.d	[r18]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L346
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r19	;4
	.align 2
.L347:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L331:
	add	r2,r16,1 ;a,b,c/u6
	mpy	r16,r16,r15
	tst_s	r15,r15
	add	r19,r21,r16 ;a,b,c/u6
	st	r2,[r20]	;26
	mov_s.ne	r1,r17
	mov_s.ne	r2,r15
	mov_s.ne	r0,r19
	jlne	@memmove
	b.d	.L347
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
	breq	r19,0,.L349
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	b.d	.L351
	mov_s	r14,0	;3
	.align 4
.L360:
	breq.d	r19,r14,.L349
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L351:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl.d	[r16]
	mov_s	r18,r13	;4
	brne.d	r0,0,.L360
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L348:
	mov_s	r0,r18	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L349:
	b.d	.L348
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
.L383:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L383
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L383
	breq	r2,43,.L366
	breq	r2,45,.L367
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L375
	mov_s	r15,0	;3
	.align 2
.L369:
	mov_s	r0,0	;3
	.align 2
.L372:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L372
	brne_s	r15,0,.L363
	sub_s	r0,r14,r13
.L363:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L367:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	add_s	r12,r12,1   ;b,b,h
	bls.d	.L369
	mov.ls	r15,1
	.align 2
.L375:
	b.d	.L363
	mov_s	r0,0	;3
	.align 4
.L366:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L375
	add_s	r12,r12,1   ;b,b,h
	b.d	.L369
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L406:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L406
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L406
	breq	r2,43,.L391
	breq	r2,45,.L409
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L399
	mov_s	r15,0	;3
	.align 2
.L393:
	mov_s	r0,0	;3
	.align 2
.L396:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L396
	brne_s	r15,0,.L388
	sub_s	r0,r14,r13
.L388:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L409:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	mov_s	r12,r0	;4
	bls.d	.L393
	mov.ls	r15,1
	.align 2
.L399:
	b.d	.L388
	mov_s	r0,0	;3
	.align 4
.L391:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L399
	add_s	r12,r12,1   ;b,b,h
	b.d	.L393
	mov_s	r15,0	;3
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L430:
	mov_s	r14,r0	;4
	ldb.ab	r3,[r0,1]
	breq	r3,32,.L430
	sub	r2,r3,9 ;a,b,u6
	brls	r2,4,.L430
	breq	r3,43,.L413
	brne	r3,45,.L434
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r14,r14,1   ;b,b,h
	bhi.d	.L422
	mov.ls	r5,1
	.align 2
.L416:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L419:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	asr	r15,r2,31
	ldb.a	r3,[r14,1]
	mov_s	r4,r2	;4
	sub3	r2,r3,6 ;a,b,u6
	sbc	r1,r13,r15
	brls	r2,9,.L419
	brne	r5,0,.L410
	sub.f	r0,r4,r12
	sbc	r1,r15,r13
.L410:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L434:
	sub3	r2,r3,6 ;a,b,u6
	brhi	r2,9,.L422
	.align 2
.L423:
	b.d	.L416
	mov_s	r5,0	;4
	.align 4
.L413:
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	brls.d	r2,9,.L423
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L422:
	mov_s	r0,0	;3
	b.d	.L410
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
	beq_s	.L436
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	b.d	.L439
	mov_s	r19,r4	;4
	.align 4
.L446:
	beq_s	.L435
	sub_s	r13,r13,r15
	breq.d	r13,0,.L436
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L439:
	lsr_s	r15,r13
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	tst_s	r0,r0
	bp	.L446
	mov_s	r13,r15	;4
	brne_s	r13,0,.L439
	.align 2
.L436:
	mov_s	r14,0	;3
	.align 2
.L435:
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
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	mov_s	r19,r4	;4
	mov.f	r13,r2
	beq.d	.L452
	mov_s	r20,r5	;4
	.align 2
.L460:
	asr_s	r15,r13,1
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r2,r20	;4
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	breq_s	r0,0,.L447
	brle	r0,0,.L450
	asr.f	r13,r13,1
	bne.d	.L460
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L452:
	mov_s	r14,0	;3
	.align 2
.L447:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.align 4
.L450:
	breq_s	r15,0,.L452
	b.d	.L460
	mov_s	r13,r15	;4
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
	breq_s	r2,0,.L481
	.align 2
.L478:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L478
	.align 2
.L481:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L489
	b_s	.L488
	.align 4
.L490:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L488
	.align 2
.L489:
	brne_s	r2,0,.L490
	.align 2
.L488:
	brlt	r2,r3,.L492
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L492:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L495:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L495
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L503
	mov_s	r2,r0	;4
	.align 2
.L502:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L502
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L503:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L512
	push_s	r14
	push_s	r13
	mov	lp_count,r2	;5
	lp	@.L522	; lp_count:@.L508->@.L522
	.align 2
.L508:
	mov_s	r12,r1	;4
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld_s	r13,[r12]		;15
	brne.d	r3,r13,.L509
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L509
	nop_s
	.align 2
.L522:
	; ZOL_END, begins @.L508
	mov_s	r0,0	;3
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L509:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L512:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L531
	mov_s.ne	r3,r0
	.align 2
.L536:
	mov	lp_count,r2	;5
	lp	@.L535	; lp_count:@.L525->@.L535
	.align 2
.L525:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L535:
	; ZOL_END, begins @.L525
	.align 2
.L531:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L548
	.align 2
.L555:
	mov	lp_count,r2	;5
	lp	@.L554	; lp_count:@.L539->@.L554
	.align 2
.L539:
	ld_s	r12,[r1]		;15
	add_s	r0,r0,4   ;b,b,h
	ld	r3,[r0,-4]	;23
	cmp_s	r3,r12
	bne.d	.L552
	add_s	r1,r1,4   ;b,b,h
	nop_s
	.align 2
.L554:
	; ZOL_END, begins @.L539
	.align 2
.L548:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L552:
	blt_s	.L553
	j_s.d	[blink]
	setgt	r0,r3,r12
	.align 4
.L553:
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
	brlo	r12,r3,.L564
	tst_s	r2,r2
	jeq_s	[blink]
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r2,1 ;a,b,u6
	brls.d	r3,23,.L568
	add_s	r12,r1,4   ;a,b,c/u3
	add_s	r13,r1,4   ;a,b,c/u3
	breq.d	r13,r0,.L568
	mov_s	r12,r13	;4
	bbit0.d	r0,2,@.L575
	xbfu	r12,r0,2
	mov_s	r4,r0	;4
	ld_s	r3,[r1]		;15
	st.ab	r3,[r4,4]	;26
	.align 2
.L569:
	sub_s	r2,r2,r12
	add2	r3,-8,r12
	add_s	r1,r1,r3   ;b,b,h
	add2	r12,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L593	; lp_count:@.L570->@.L593
	.align 2
.L570:
	ldd.a	r14,[r1,8]
	std.ab	r14,[r12,8]
	.align 2
.L593:
	; ZOL_END, begins @.L570
	bbit0	r2,0,@.L577
	bclr_s	r2,r2,0
	add2_s	r13,r13,r2
	add2	r2,r4,r2
	ld_s	r3,[r13]		;15
	st_s	r3,[r2]		;16
.L577:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L564:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	add_s	r1,r1,r3   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L592	; lp_count:@.L567->@.L592
	.align 2
.L567:
	ld.a	r12,[r1,-4]	;23
	st.a	r12,[r3,-4]	;26
	.align 2
.L592:
	; ZOL_END, begins @.L567
	j_s	[blink]
	.align 4
.L575:
	mov_s	r13,r1	;4
	b.d	.L569
	mov_s	r4,r0	;4
	.align 4
.L568:
	b.d	.L573
	sub2	r2,r0,1 ;a,b,u6
	.align 4
.L591:
	add_s	r12,r12,4   ;b,b,h
	.align 2
.L573:
	ld	r13,[r12,-4]	;23
	add_s	r3,r3,-1   ;h,h,s3
	st.a	r13,[r2,4]	;26
	brne	r3,-1,.L591
	b_s	.L577
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	tst_s	r2,r2
	jeq_s	[blink]
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r13,r2,1 ;a,b,u6
	lsr	r3,r0,2
	brls.d	r13,5,.L600
	xbfu	r12,r0,2
	bbit0.d	r3,0,@.L597
	mov_s	r4,r0	;4
	sub1	r13,r2,1 ;a,b,u6
	st.ab	r1,[r4,4]	;26
	.align 2
.L597:
	sub_s	r2,r2,r12
	mov_s	r15,r1	;4
	mov_s	r14,r1	;4
	add2	r12,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L626	; lp_count:@.L598->@.L626
	.align 2
.L598:
	std.ab	r14,[r12,8]
	.align 2
.L626:
	; ZOL_END, begins @.L598
	bbit0	r2,0,@.L595
	bclr_s	r2,r2,0
	sub_s	r13,r13,r2
	add2	r2,r4,r2
	.align 2
.L596:
	breq.d	r13,0,.L595
	st_s	r1,[r2]		;16
	breq.d	r13,1,.L595
	st_s	r1,[r2,4]		;16
	breq.d	r13,2,.L595
	st_s	r1,[r2,8]		;16
	breq.d	r13,3,.L595
	st_s	r1,[r2,12]		;16
	breq.d	r13,4,.L595
	st_s	r1,[r2,16]		;16
	st_s	r1,[r2,20]		;16
.L595:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L600:
	b.d	.L596
	mov_s	r2,r0	;4
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L628
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L668	; lp_count:@.L630->@.L668
	.align 2
.L630:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L668:
	; ZOL_END, begins @.L630
	j_s	[blink]
	.align 4
.L628:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L665
	push_s	r14
	push_s	r13
	or	r12,r1,r0
	add_s	r3,r0,1   ;a,b,c/u3
	bmsk_s	r12,r12,1
	sub_s	r13,r1,r3
	seteq	r12,r12,0
	seths	r13,r13,3
	tst_s	r12,r13
	beq_s	.L631
	bmskn	r14,r2,1
	sub2	r3,r14,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L667	; lp_count:@.L632->@.L667
	.align 2
.L632:
	ld.a	r13,[r12,4]	;23
	st.ab	r13,[r1,4]	;26
	.align 2
.L667:
	; ZOL_END, begins @.L632
	add_s	r0,r0,r14   ;b,b,h
	breq.d	r2,r14,.L627
	sub_s	r3,r2,r14
	ldb_s	r2,[r0]
	breq.d	r3,1,.L627
	stb_s	r2,[r1]
	ldb_s	r2,[r0,1]
	breq.d	r3,2,.L627
	stb_s	r2,[r1,1]
	ldb_s	r2,[r0,2]
	stb_s	r2,[r1,2]
	.align 2
.L627:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L631:
	add_s	r1,r1,-1   ;h,h,s3
	b.d	.L635
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L666:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L635:
	ldb	r2,[r3,-1]
	brne.d	r3,r0,.L666
	stb.a	r2,[r1,1]
	b_s	.L627
	.align 4
.L665:
	add_s	r3,r0,1   ;a,b,c/u3
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L662:
	ldb	r2,[r3,-1]
	cmp_s	r3,r0
	jeq.d	[blink]
	stb.a	r2,[r1,1]
	b.d	.L662
	add_s	r3,r3,1   ;b,b,h
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
	lp	@.L703	; lp_count:@.L698->@.L703
	.align 2
.L698:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L702
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L703:
	; ZOL_END, begins @.L698
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L702:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L707
	bbit1.d	r2,0,@.L711
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L706:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L706
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L711:
	j_s	[blink]
	.align 4
.L707:
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
	bn.d	.L712
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L712:
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
	bn.d	.L717
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L717:
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
	bn.d	.L722
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L722:
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
	brne_s	r0,0,.L730
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	bl.d	@__nesf2;1
	mov_s	r1,r15
	breq_s	r0,0,.L730
	tst_s	r13,r13
	mov_s	r14,0x3f000000 ; 5.0e-1
	mov.p	r14,0x40000000 ; 2.0e+0
	bbit0	r13,0,@.L733
	.align 2
.L734:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r14
	mov_s	r15,r0
	.align 2
.L733:
	div	r13,r13,2
	breq_s	r13,0,.L730
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	bbit1.d	r13,0,@.L734
	mov_s	r14,r0
	div	r13,r13,2
	.align 2
.L743:
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	bbit1.d	r13,0,@.L734
	mov_s	r14,r0
	b.d	.L743
	div	r13,r13,2
	.align 4
.L730:
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
	brne	r0,0,.L745
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L745
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L748
	.align 2
.L749:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L748:
	div	r13,r13,2
	breq_s	r13,0,.L745
	.align 2
.L750:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L749
	b.d	.L750
	div	r13,r13,2
	.align 4
.L745:
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
	brne	r0,0,.L758
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L758
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L761
	.align 2
.L762:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L761:
	div	r13,r13,2
	breq_s	r13,0,.L758
	.align 2
.L763:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L762
	b.d	.L763
	div	r13,r13,2
	.align 4
.L758:
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
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r2,1 ;a,b,u6
	brls	r3,3,.L772
	or	r3,r0,r1
	tst	r3,3
	bne_s	.L772
	bmskn	r4,r2,1
	sub2	r12,r4,1 ;a,b,u6
	sub2	r14,r1,1 ;a,b,u6
	add	r5,r0,r4 ;a,b,c/u6
	mov_s	r13,r0	;4
	lsr_s	r12,r12,2
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L795	; lp_count:@.L773->@.L795
	.align 2
.L773:
	ld_s	r15,[r13]		;15
	ld.a	r3,[r14,4]	;23
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	.align 2
.L795:
	; ZOL_END, begins @.L773
	add_s	r1,r1,r4   ;b,b,h
	breq.d	r4,r2,.L771
	sub	r3,r2,r4
	ldb	r2,[r5]
	ldb_s	r12,[r1]
	xor_s	r2,r2,r12
	breq.d	r3,1,.L771
	stb	r2,[r5]
	ldb	r12,[r5,1]
	ldb_s	r2,[r1,1]
	xor_s	r2,r2,r12
	breq.d	r3,2,.L771
	stb	r2,[r5,1]
	ldb	r3,[r5,2]
	ldb_s	r2,[r1,2]
	xor_s	r2,r2,r3
	stb	r2,[r5,2]
.L771:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L772:
	mov_s	r12,r0	;4
	mov	lp_count,r2	;5
	lp	@.L794	; lp_count:@.L775->@.L794
	.align 2
.L775:
	ldb.ab	r13,[r12,1]
	ldb.ab	r3,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L794:
	; ZOL_END, begins @.L775
	b_s	.L771
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	tst_s	r3,r3
	beq.d	.L797
	mov_s	r3,r0	;4
	.align 2
.L798:
	ldb.a	r12,[r3,1]
	brne_s	r12,0,.L798
	.align 2
.L797:
	breq_s	r2,0,.L799
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L812	; lp_count:@.L800->@.L812
	.align 2
.L800:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r3,1]
	nop_s
	.align 2
.L812:
	; ZOL_END, begins @.L800
	.align 2
.L799:
	stb	0,[r3]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L817
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L823	; lp_count:@.L815->@.L823
	.align 2
.L815:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L823:
	; ZOL_END, begins @.L815
	j_s	[blink]
	.align 4
.L817:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L831
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L825:
	b.d	.L828
	mov_s	r3,r13	;4
	.align 4
.L827:
	breq	r2,r12,.L826
	.align 2
.L828:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L827
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L825
	mov_s	r0,0	;3
.L826:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L831:
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
.L838:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r1,r3
	mov.ne	r12,r0
	brne.d	r3,0,.L838
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
	breq.d	r14,0,.L855
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L845:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L845
	sub.f	r2,r2,r1
	beq_s	.L855
	b.d	.L853
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L863:
	breq_s	r2,0,.L862
	.align 2
.L853:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r2,r14,.L863
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L847
	mov_s	r12,r0	;4
	.align 4
.L865:
	breq	r12,r15,.L849
	brne	r3,r2,.L850
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L864
	ldb.a	r3,[r13,1]
	.align 2
.L847:
	brne_s	r3,0,.L865
	.align 2
.L850:
	b.d	.L853
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L862:
	mov_s	r0,0	;3
.L843:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L864:
	ldb_s	r3,[r13,1]
	.align 2
.L849:
	breq	r2,r3,.L843
	b.d	.L853
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L855:
	b.d	.L843
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
	brlt	r0,0,.L877
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L870
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L869
	.align 2
.L870:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L877:
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L870
	.align 2
.L869:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L870
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq_s	[blink]
	brlo	r1,r3,.L887
	sub_s	r1,r1,r3
	add.f	r5,r0,r1
	blo	.L887
	std.a	r14,[sp,-8]
	push_s	r13
	b.d	.L884
	ldb	r6,[r2]
	.align 4
.L880:
	brlo	r5,r0,.L889
	.align 2
.L884:
	mov_s	r13,r0	;4
	ldb.ab	r12,[r13,1]
	cmp_s	r12,r6
	bne.d	.L880
	mov_s.ne	r0,r13
	breq	r3,1,.L878
	.align 2
.L883:
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r12,r3,1 ;a,b,u6
	mov	lp_count,r12	;5
	lp	@.L906	; lp_count:@.L881->@.L906
	.align 2
.L881:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L905
	nop_s
	.align 2
.L906:
	; ZOL_END, begins @.L881
.L878:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L905:
	brlo	r5,r13,.L889
	mov_s	r0,r13	;4
	ldb.ab	r12,[r0,1]
	brne	r6,r12,.L880
	mov_s	r12,r13	;4
	mov_s	r13,r0	;4
	b.d	.L883
	mov_s	r0,r12	;4
	.align 4
.L889:
	b.d	.L878
	mov_s	r0,0	;3
	.align 4
.L887:
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
	bn	.L936
	vadd2	r0,r14,0
	mov_s	r3,1072693248	;13
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn.d	.L937
	mov.p	r21,0
	.align 2
.L916:
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L922:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__gedf2;1
	brge	r0,0,.L922
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	breq.d	r21,0,.L938
	bxor	r1,r15,31
.L913:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L938:
	vadd2	r0,r14,0
	b_s	.L913
	.align 4
.L937:
	vadd2	r0,r14,0
	mov_s	r3,1071644672	;13
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L919
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	brne	r0,0,.L928
	.align 2
.L919:
	vadd2	r0,r14,0
	st	0,[r20]	;37
	b_s	.L913
	.align 4
.L936:
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,-1074790400	;13
	bl.d	@__ledf2;1
	mov_s	r16,r14	;4
	brgt.d	r0,0,.L939
	bxor	r17,r15,31
	vadd2	r14,r16,0
	b.d	.L916
	mov_s	r21,1	;4
	.align 4
.L939:
	vadd2	r0,r14,0
	mov_s	r3,-1075838976	;13
	bl.d	@__gtdf2;1
	mov_s	r2,0	;3
	brle	r0,0,.L919
	mov_s	r21,1	;4
	.align 2
.L917:
	vadd2	r14,r16,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L924:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__ltdf2;1
	brlt	r0,0,.L924
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	tst	r21,r21
	bne.d	.L913
	bxor	r1,r15,31
	b_s	.L938
	.align 4
.L928:
	vadd2	r16,r14,0
	b.d	.L917
	mov_s	r21,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	or.f	0,r0,r1
	beq.d	.L944
	mov_s	r14,r1	;4
	mov_s	r13,r0	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L943:
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
	bne_s	.L943
.L940:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L944:
	mov_s	r0,0	;3
	b.d	.L940
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp_s	r1,r0
	mov.hs	r3,1
	bhs.d	.L966
	mov.hs	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L971	; lp_count:@.L948->@.L971
	.align 2
.L948:
	brlt	r1,0,.L949
	asl_s	r1,r1,1
	brls.d	r0,r1,.L950
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L971:
	; ZOL_END, begins @.L948
	.align 2
.L951:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L950:
	tst_s	r3,r3
	beq.d	.L951
	mov.eq	r12,0
	.align 2
.L949:
	mov_s	r12,0	;3
	.align 2
.L954:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L954
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L966:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L966
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
	beq_s	.L974
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L974:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L985
	xor	r12,r1,r3
	.align 2
.L982:
	fls	r0,r2
	brne.d	r12,0,.L986
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L986:
	fls	r12,r12
	rsub	r0,r12,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L985:
	brne	r1,r0,.L982
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
.L989:
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
	bne.d	.L989
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L999
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L1033
	.align 2
.L999:
	tst_s	r3,r3
	beq_s	.L1034
	std.a	r14,[sp,-8]
	push_s	r13
	add3	r3,-8,r3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1039	; lp_count:@.L1002->@.L1039
	.align 2
.L1002:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L1039:
	; ZOL_END, begins @.L1002
	brls	r2,r4,.L995
	sub	r15,r2,r4
	sub	r3,r15,1 ;a,b,u6
	brls	r3,6,.L1004
	add	r13,r0,r4 ;a,b,c/u6
	add	r12,r1,r4 ;a,b,c/u6
	add	r3,r4,1 ;a,b,c/u6
	add_s	r3,r3,r1   ;b,b,h
	or	r14,r12,r13
	sub_s	r3,r13,r3
	bmsk_s	r14,r14,1
	seths	r3,r3,3
	seteq	r14,r14,0
	tst_s	r3,r14
	beq_s	.L1004
	bmskn	r5,r15,1
	sub2	r3,r5,1 ;a,b,u6
	sub2	r12,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1038	; lp_count:@.L1005->@.L1038
	.align 2
.L1005:
	ld.a	r14,[r12,4]	;23
	st.ab	r14,[r13,4]	;26
	.align 2
.L1038:
	; ZOL_END, begins @.L1005
	breq.d	r15,r5,.L995
	add	r4,r4,r5   ;(p)b,b,c/u6
	add	r13,r1,r4 ;a,b,c/u6
	add	r12,r0,r4 ;a,b,c/u6
	add	r3,r4,1 ;a,b,c/u6
	ldb_s	r13,[r13]
	brls.d	r2,r3,.L995
	stb_s	r13,[r12]
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	add_s	r4,r4,2   ;h,h,s3
	cmp_s	r2,r4
	ldb_s	r2,[r12]
	bls.d	.L995
	stb_s	r2,[r3]
	add_s	r1,r1,r4   ;b,b,h
	add	r4,r4,r0   ;(p)b,b,c/u6
	ldb_s	r2,[r1]
	stb	r2,[r4]
	.align 2
.L995:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1033:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L1037	; lp_count:@.L1009->@.L1037
	.align 2
.L1009:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1037:
	; ZOL_END, begins @.L1009
	j_s	[blink]
	.align 4
.L1004:
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1036	; lp_count:@.L1007->@.L1036
	.align 2
.L1007:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r4,1]
	.align 2
.L1036:
	; ZOL_END, begins @.L1007
	b_s	.L995
	.align 4
.L1034:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1035	; lp_count:@.L1028->@.L1035
	.align 2
.L1028:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r4,1]
	.align 2
.L1035:
	; ZOL_END, begins @.L1028
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	brlo.d	r0,r1,.L1044
	lsr	r4,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	cmp_s	r3,r0
	bhs	.L1071
	.align 2
.L1044:
	tst	r4,r4
	beq_s	.L1072
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r4,1 ;a,b,u6
	cmp_s	r3,11
	bls	.L1047
	add_s	r3,r1,2   ;a,b,c/u3
	sub_s	r3,r0,r3
	cmp	r3,4
	bls	.L1047 ;brls out of range
	lsr_s	r3,r0
	neg_s	r3,r3
	tst	r3,3
	and	r12,r3,3
	beq.d	.L1048
	mov.eq	r6,0
	ldh_s.x	r13,[r1]
	bbit0.d	r3,1,@.L1057
	sth_s	r13,[r0]
	ldh_s.x	r3,[r1,2]
	cmp_s	r12,3
	sth_s	r3,[r0,2]
	bne.d	.L1048
	mov.ne	r6,2
	mov_s	r6,3	;4
	ldh_s.x	r3,[r1,4]
	sth_s	r3,[r0,4]
	.align 2
.L1048:
	sub	r5,r4,r12
	add1	r13,-8,r12
	add_s	r13,r13,r1   ;b,b,h
	add1	r12,r0,r12
	lsr	r3,r5,2
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1076	; lp_count:@.L1050->@.L1076
	.align 2
.L1050:
	ldd.a	r14,[r13,8]
	std.ab	r14,[r12,8]
	.align 2
.L1076:
	; ZOL_END, begins @.L1050
	bmskn	r3,r5,1
	tst	r5,3
	beq.d	.L1043
	add_s	r3,r3,r6   ;b,b,h
	add1	r14,r0,r3
	ldh.x.as	r15,[r1,r3]
	add_s	r13,r3,1   ;a,b,c/u3
	asl_s	r12,r3,1
	brls.d	r4,r13,.L1043
	sth_s	r15,[r14]
	mov_s	r13,r12	;4
	add_s	r14,r1,r12   ;a,b,c/u3
	add_s	r13,r13,r0   ;b,b,h
	add_s	r3,r3,2   ;b,b,h
	cmp	r4,r3
	ldh_s.x	r3,[r14,2]
	bls.d	.L1043
	sth_s	r3,[r13,2]
	add_s	r3,r1,r12   ;a,b,c/u3
	add_s	r12,r12,r0   ;b,b,h
	ldh_s.x	r3,[r3,4]
	sth_s	r3,[r12,4]
	.align 2
.L1043:
	bbit0	r2,0,@.L1040
	add_s	r1,r1,r2   ;b,b,h
	.align 2
.L1077:
	add_s	r2,r2,r0   ;b,b,h
	ldb	r3,[r1,-1]
	stb	r3,[r2,-1]
	.align 2
.L1040:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1071:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r3,r1
	mov	lp_count,r1	;5
	lp	@.L1075	; lp_count:@.L1055->@.L1075
	.align 2
.L1055:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1075:
	; ZOL_END, begins @.L1055
	j_s	[blink]
	.align 4
.L1057:
	b.d	.L1048
	mov_s	r6,1	;4
	.align 4
.L1047:
	add1	r3,-2,r4
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1074	; lp_count:@.L1052->@.L1074
	.align 2
.L1052:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L1074:
	; ZOL_END, begins @.L1052
	bbit0	r2,0,@.L1040
	b.d	.L1077
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L1072:
	bbit0	r2,0,@.L1078
	add_s	r1,r1,r2   ;b,b,h
	add_s	r2,r2,r0   ;b,b,h
	ldb	r3,[r1,-1]
	stb	r3,[r2,-1]
	.align 2
.L1078:
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	brlo.d	r0,r1,.L1085
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1113
	.align 2
.L1085:
	tst_s	r3,r3
	beq_s	.L1114
	sub	r12,r3,1 ;a,b,u6
	cmp_s	r12,23
	bls	.L1087
	add_s	r12,r1,4   ;a,b,c/u3
	cmp_s	r0,r12
	beq_s	.L1087
	xbfu	r12,r0,2
	bbit0.d	r0,2,@.L1088
	mov_s	r6,0	;4
	mov_s	r6,r12	;4
	ld_s	r13,[r1]		;15
	st_s	r13,[r0]		;16
	.align 2
.L1088:
	sub_s	r13,r3,r12
	add2	r14,-8,r12
	add_s	r14,r14,r1   ;b,b,h
	add2	r12,r0,r12
	lsr_s	r3,r13
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1120	; lp_count:@.L1089->@.L1120
	.align 2
.L1089:
	ldd.a	r4,[r14,8]
	std.ab	r4,[r12,8]
	.align 2
.L1120:
	; ZOL_END, begins @.L1089
	bbit0	r13,0,@.L1092
	bmskn	r3,r13,0
	add_s	r3,r3,r6   ;b,b,h
	add2	r12,r1,r3
	add2	r3,r0,r3
	ld_s	r12,[r12]		;15
	st_s	r12,[r3]		;16
	.align 2
.L1092:
	brls	r2,r15,.L1080
	sub	r4,r2,r15
	sub	r3,r4,1 ;a,b,u6
	brls	r3,6,.L1083
	add_s	r13,r0,r15   ;a,b,c/u3
	add_s	r12,r1,r15   ;a,b,c/u3
	add_s	r3,r15,1   ;a,b,c/u3
	add_s	r3,r3,r1   ;b,b,h
	or	r14,r12,r13
	sub_s	r3,r13,r3
	bmsk_s	r14,r14,1
	seths	r3,r3,3
	seteq	r14,r14,0
	tst_s	r3,r14
	beq_s	.L1083
	bmskn	r5,r4,1
	sub2	r3,r5,1 ;a,b,u6
	sub2	r12,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1119	; lp_count:@.L1093->@.L1119
	.align 2
.L1093:
	ld.a	r14,[r12,4]	;23
	st.ab	r14,[r13,4]	;26
	.align 2
.L1119:
	; ZOL_END, begins @.L1093
	breq.d	r5,r4,.L1080
	add_s	r15,r15,r5   ;b,b,h
	add_s	r13,r1,r15   ;a,b,c/u3
	add_s	r12,r0,r15   ;a,b,c/u3
	add_s	r3,r15,1   ;a,b,c/u3
	ldb_s	r13,[r13]
	brls.d	r2,r3,.L1080
	stb_s	r13,[r12]
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	add_s	r15,r15,2   ;b,b,h
	cmp_s	r2,r15
	ldb_s	r2,[r12]
	bls.d	.L1080
	stb_s	r2,[r3]
	add_s	r1,r1,r15   ;b,b,h
	add_s	r15,r15,r0   ;b,b,h
	ldb_s	r2,[r1]
	stb_s	r2,[r15]
	.align 2
.L1080:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1113:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r2,r2,r0
	beq.d	.L1080
	rsub.ne	r1,r1,r3
	.align 2
.L1118:
	mov	lp_count,r1	;5
	lp	@.L1117	; lp_count:@.L1097->@.L1117
	.align 2
.L1097:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1117:
	; ZOL_END, begins @.L1097
	b_s	.L1080
	.align 4
.L1087:
	add2	r3,-4,r3
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1116	; lp_count:@.L1091->@.L1116
	.align 2
.L1091:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L1116:
	; ZOL_END, begins @.L1091
	b_s	.L1092
	.align 4
.L1114:
	breq_s	r2,0,.L1080
	.align 2
.L1083:
	add_s	r15,r15,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	sub_s	r2,r2,r1
	add_s	r15,r15,r0   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L1115	; lp_count:@.L1095->@.L1115
	.align 2
.L1095:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r15,1]
	.align 2
.L1115:
	; ZOL_END, begins @.L1095
	b_s	.L1080
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
	bbit1	r0,15,@.L1136
	exth_s	r2,r0
	asr.f	r0,r2,14
	jne_s	[blink]
	lsr.f	0,r2,13
	bne_s	.L1137
	lsr.f	0,r2,12
	bne_s	.L1138
	lsr.f	0,r2,11
	bne_s	.L1139
	lsr.f	0,r2,10
	bne_s	.L1140
	lsr.f	0,r2,9
	bne_s	.L1141
	lsr.f	0,r2,8
	bne_s	.L1142
	lsr.f	0,r2,7
	bne_s	.L1143
	lsr.f	0,r2,6
	bne_s	.L1144
	lsr.f	0,r2,5
	bne_s	.L1145
	lsr.f	0,r2,4
	bne_s	.L1146
	lsr.f	0,r2,3
	bne_s	.L1147
	lsr.f	0,r2,2
	bne_s	.L1148
	lsr.f	0,r2,1
	bne_s	.L1149
	tst_s	r2,r2
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1136:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1147:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1137:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1138:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1139:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1140:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1141:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1142:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1143:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1144:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1145:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1146:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1148:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1149:
	j_s.d	[blink]
	mov_s	r0,14	;3
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	bbit1	r0,0,@.L1155
	exth_s	r2,r0
	bbit1	r2,1,@.L1156
	bbit1	r2,2,@.L1157
	bbit1	r2,3,@.L1158
	bbit1	r2,4,@.L1159
	bbit1	r2,5,@.L1160
	bbit1	r2,6,@.L1161
	bbit1	r2,7,@.L1162
	bbit1	r2,8,@.L1163
	bbit1	r2,9,@.L1164
	bbit1	r2,10,@.L1165
	bbit1	r2,11,@.L1166
	bbit1	r2,12,@.L1167
	bbit1	r2,13,@.L1168
	bbit1	r2,14,@.L1169
	lsr.f	0,r2,15
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1155:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1156:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1167:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1157:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1158:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1159:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1160:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1161:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1162:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1163:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1164:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1165:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1166:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1168:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1169:
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
	brge	r0,0,.L1179
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L1179:
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
.L1186:
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
	bne.d	.L1186
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
.L1194:
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
	bne.d	.L1194
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1226
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1225	; lp_count:@.L1202->@.L1225
	.align 2
.L1202:
	brlt	r1,0,.L1203
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1204
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1225:
	; ZOL_END, begins @.L1202
	.align 2
.L1205:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1204:
	tst_s	r3,r3
	beq.d	.L1205
	mov.eq	r12,0
	.align 2
.L1203:
	mov_s	r12,0	;3
	.align 2
.L1208:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1208
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1220:
	cmp_s	r0,r1
	.align 4
.L1226:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1220
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
	bn	.L1227
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L1227:
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
	bn	.L1232
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1232:
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
	bn.d	.L1243
	mov.n	r13,1
	beq.d	.L1241
	mov.eq	r0,0
	mov_s	r13,0	;3
	.align 2
.L1243:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1257	; lp_count:@.L1246->@.L1257
	.align 2
.L1246:
	and	r2,r1,1
	asr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	beq.d	.L1245
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1257:
	; ZOL_END, begins @.L1246
	.align 2
.L1245:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1241:
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
	mov.n	r2,0
	mov.n	r13,1
	mov.p	r2,1
	mov.p	r13,0
	tst_s	r1,r1
	neg.n	r1,r1
	mov.n	r13,r2
	cmp_s	r0,r1
	mov_s	r12,r0	;4
	mov_s	r2,1	;3
	bls.d	.L1262
	mov.hi	r3,32
	.align 2
.L1279:
	mov	lp_count,r3	;5
	lp	@.L1278	; lp_count:@.L1261->@.L1278
	.align 2
.L1261:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1265
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1278:
	; ZOL_END, begins @.L1261
	.align 2
.L1265:
	tst_s	r2,r2
	beq.d	.L1263
	mov.eq	r0,0
	.align 2
.L1262:
	mov_s	r0,0	;3
	.align 2
.L1267:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r2
	lsr.f	r2,r2,1
	bne.d	.L1267
	lsr_s	r1,r1
	.align 2
.L1263:
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
	bls.d	.L1297
	mov.hi	r3,32
	.align 2
.L1301:
	mov	lp_count,r3	;5
	lp	@.L1300	; lp_count:@.L1282->@.L1300
	.align 2
.L1282:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1286
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1300:
	; ZOL_END, begins @.L1282
	.align 2
.L1286:
	tst_s	r2,r2
	beq.d	.L1284
	mov.eq	r0,r12
	.align 2
.L1297:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	lsr.f	r2,r2,1
	bne.d	.L1297
	lsr_s	r1,r1
	.align 2
.L1284:
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
	bhs	.L1419
	btst_s	r1,15
	bne	.L1305
	asl_s	r3,r1,1
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1306
	btst_s	r3,15
	bne	.L1307
	asl_s	r3,r1,2
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1308
	btst_s	r3,15
	bne	.L1309
	asl_s	r3,r1,3
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1310
	btst_s	r3,15
	bne	.L1311
	asl_s	r3,r1,4
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1312
	btst_s	r3,15
	bne	.L1313
	asl_s	r3,r1,5
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1314
	btst_s	r3,15
	bne	.L1315
	asl_s	r3,r1,6
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1316
	btst_s	r3,15
	bne	.L1317
	asl_s	r3,r1,7
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1318
	btst_s	r3,15
	bne	.L1319
	asl	r3,r1,8
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1320
	btst_s	r3,15
	bne	.L1321
	asl	r3,r1,9
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1322
	btst_s	r3,15
	bne	.L1323
	asl	r3,r1,10
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1324
	btst_s	r3,15
	bne	.L1325
	asl	r3,r1,11
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1326
	btst_s	r3,15
	bne	.L1327
	asl	r3,r1,12
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1328
	btst_s	r3,15
	bne	.L1329
	asl	r3,r1,13
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1330
	btst_s	r3,15
	bne	.L1331
	asl	r3,r1,14
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1332
	btst_s	r3,15
	bne	.L1333
	asl_s	r1,r1,15
	exth_s	r13,r1
	cmp_s	r0,r13
	bls	.L1334
	tst_s	r13,r13
	bne	.L1420
	.align 2
.L1335:
	tst_s	r2,r2
	mov.ne	r13,r0
	mov_s	r0,r13	;4
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1322:
	blo	.L1368
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	mov_s	r13,r12	;4
	.align 2
.L1337:
	lsr.f	r15,r12,2
	beq.d	.L1335
	lsr	r14,r3,2
	brhi	r14,r0,.L1338
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1338:
	lsr.f	r15,r12,3
	beq.d	.L1335
	lsr	r14,r3,3
	brlo	r0,r14,.L1339
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1339:
	lsr.f	r15,r12,4
	beq.d	.L1335
	lsr	r14,r3,4
	brlo	r0,r14,.L1340
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1340:
	lsr.f	r15,r12,5
	beq.d	.L1335
	lsr	r14,r3,5
	brlo	r0,r14,.L1341
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1341:
	lsr.f	r15,r12,6
	beq.d	.L1335
	lsr	r14,r3,6
	brlo	r0,r14,.L1342
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1342:
	lsr.f	r15,r12,7
	beq.d	.L1335
	lsr	r14,r3,7
	brlo	r0,r14,.L1343
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1343:
	lsr.f	r15,r12,8
	beq.d	.L1335
	lsr	r14,r3,8
	brlo	r0,r14,.L1344
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1344:
	lsr.f	r15,r12,9
	beq.d	.L1335
	lsr	r14,r3,9
	brlo	r0,r14,.L1345
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1345:
	lsr.f	r15,r12,10
	beq.d	.L1335
	lsr	r14,r3,10
	brlo	r0,r14,.L1346
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1346:
	lsr.f	r15,r12,11
	beq.d	.L1335
	lsr	r14,r3,11
	brlo	r0,r14,.L1347
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1347:
	lsr.f	r15,r12,12
	beq.d	.L1335
	lsr	r14,r3,12
	brlo	r0,r14,.L1348
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1348:
	lsr.f	r15,r12,13
	beq.d	.L1335
	lsr	r14,r3,13
	brlo	r0,r14,.L1349
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1349:
	lsr.f	r15,r12,14
	beq.d	.L1335
	lsr	r14,r3,14
	brlo	r0,r14,.L1350
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1350:
	bxor.f	0,r12,14
	beq.d	.L1335
	lsr_s	r3,r3,15
	cmp_s	r0,r3
	blo.d	.L1335
	mov.lo	r0,0
	sub_s	r3,r0,r3
	exth_s	r0,r3
	b.d	.L1335
	bset_s	r13,r13,0
	.align 4
.L1419:
	bne.d	.L1335
	sub_s.ne	r13,r13,r13
	mov_s	r13,1	;3
	b.d	.L1335
	mov_s	r0,0	;3
	.align 4
.L1305:
	sub_s	r0,r0,r1
	exth_s	r0,r0
	b.d	.L1335
	mov_s	r13,1	;3
	.align 4
.L1306:
	blo	.L1360
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,2	;3
	b.d	.L1337
	mov_s	r13,2	;3
	.align 4
.L1307:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	bmsk_s	r1,r1,14
	mov_s	r14,1	;3
	mov_s	r12,2	;3
	mov_s	r13,2	;3
	.align 2
.L1355:
	cmp_s	r0,r1
	blo	.L1337
	sub_s	r1,r0,r1
	exth_s	r0,r1
	b.d	.L1337
	or_s	r13,r13,r14
	.align 4
.L1308:
	blo	.L1361
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,4	;3
	b.d	.L1337
	mov_s	r13,4	;3
	.align 4
.L1309:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2	;3
	mov_s	r12,4	;3
	b.d	.L1355
	mov_s	r13,4	;3
	.align 4
.L1310:
	blo	.L1362
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,8	;3
	b.d	.L1337
	mov_s	r13,8	;3
	.align 4
.L1311:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4	;3
	mov_s	r12,8	;3
	b.d	.L1355
	mov_s	r13,8	;3
	.align 4
.L1312:
	blo	.L1363
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,16	;3
	b.d	.L1337
	mov_s	r13,16	;3
	.align 4
.L1313:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8	;3
	mov_s	r12,16	;3
	b.d	.L1355
	mov_s	r13,16	;3
	.align 4
.L1314:
	blo	.L1364
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,32	;3
	b.d	.L1337
	mov_s	r13,32	;3
	.align 4
.L1315:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,16	;3
	mov_s	r12,32	;3
	b.d	.L1355
	mov_s	r13,32	;3
	.align 4
.L1316:
	blo	.L1365
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,64	;3
	b.d	.L1337
	mov_s	r13,64	;3
	.align 4
.L1317:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,32	;3
	mov_s	r12,64	;3
	b.d	.L1355
	mov_s	r13,64	;3
	.align 4
.L1318:
	blo	.L1366
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,128	;3
	b.d	.L1337
	mov_s	r13,128	;3
	.align 4
.L1319:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,64	;3
	mov_s	r12,128	;3
	b.d	.L1355
	mov_s	r13,128	;3
	.align 4
.L1321:
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,128	;3
	b.d	.L1355
	mov_s	r13,r12	;4
	.align 4
.L1323:
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,256	;6
	b.d	.L1355
	mov_s	r13,r12	;4
	.align 4
.L1360:
	mov_s	r12,2	;3
	.align 2
.L1354:
	lsr_s	r14,r12
	.align 2
.L1421:
	lsr_s	r1,r3
	b.d	.L1355
	mov_s	r13,0	;3
	.align 4
.L1325:
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,512	;6
	b.d	.L1355
	mov_s	r13,r12	;4
	.align 4
.L1327:
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,1024	;6
	b.d	.L1355
	mov_s	r13,r12	;4
	.align 4
.L1361:
	b.d	.L1354
	mov_s	r12,4	;3
	.align 4
.L1362:
	b.d	.L1354
	mov_s	r12,8	;3
	.align 4
.L1329:
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2048	;13
	b.d	.L1355
	mov_s	r13,r12	;4
	.align 4
.L1331:
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4096	;13
	b.d	.L1355
	mov_s	r13,r12	;4
	.align 4
.L1363:
	b.d	.L1354
	mov_s	r12,16	;3
	.align 4
.L1333:
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8192	;13
	b.d	.L1355
	mov_s	r13,r12	;4
	.align 4
.L1364:
	b.d	.L1354
	mov_s	r12,32	;3
	.align 4
.L1365:
	b.d	.L1354
	mov_s	r12,64	;3
	.align 4
.L1334:
	mov_s	r3,32768	;13
	btst_s	r0,15
	mov_s	r12,r3	;4
	mov_s.ne	r13,r3
	bne.d	.L1337
	sub_s.ne	r0,r0,r0
	b.d	.L1421
	lsr_s	r14,r12
	.align 4
.L1420:
	mov_s	r3,32768	;13
	mov_s	r1,16384	;13
	xor_s	r0,r0,r3
	mov_s	r14,r1	;4
	mov_s	r12,r3	;4
	b.d	.L1355
	mov_s	r13,r3	;4
	.align 4
.L1366:
	b.d	.L1354
	mov_s	r12,128	;3
	.align 4
.L1320:
	blo_s	.L1367
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	b.d	.L1337
	mov_s	r13,r12	;4
	.align 4
.L1367:
	b.d	.L1354
	mov	r12,256	;6
	.align 4
.L1324:
	blo_s	.L1369
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	b.d	.L1337
	mov_s	r13,r12	;4
	.align 4
.L1332:
	blo_s	.L1373
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	b.d	.L1337
	mov_s	r13,r12	;4
	.align 4
.L1369:
	b.d	.L1354
	mov	r12,1024	;6
	.align 4
.L1373:
	mov_s	r12,16384	;13
	b.d	.L1421
	lsr_s	r14,r12
	.align 4
.L1368:
	b.d	.L1354
	mov	r12,512	;6
	.align 4
.L1330:
	blo_s	.L1372
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	b.d	.L1337
	mov_s	r13,r12	;4
	.align 4
.L1328:
	blo_s	.L1371
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	b.d	.L1337
	mov_s	r13,r12	;4
	.align 4
.L1326:
	blo_s	.L1370
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	b.d	.L1337
	mov_s	r13,r12	;4
	.align 4
.L1372:
	mov_s	r12,8192	;13
	b.d	.L1421
	lsr_s	r14,r12
	.align 4
.L1371:
	mov_s	r12,4096	;13
	b.d	.L1421
	lsr_s	r14,r12
	.align 4
.L1370:
	mov_s	r12,2048	;13
	b.d	.L1421
	lsr_s	r14,r12
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1447
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1446	; lp_count:@.L1423->@.L1446
	.align 2
.L1423:
	brlt	r1,0,.L1424
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1425
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1446:
	; ZOL_END, begins @.L1423
	.align 2
.L1426:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1425:
	tst_s	r3,r3
	beq.d	.L1426
	mov.eq	r12,0
	.align 2
.L1424:
	mov_s	r12,0	;3
	.align 2
.L1429:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1429
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1441:
	cmp_s	r0,r1
	.align 4
.L1447:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1441
	lsr_s	r1,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1449
	asl	r1,r0,r2
	mov_s	r2,0	;3
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.align 4
.L1449:
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
	bbit0	r2,5,@.L1455
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1455:
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
	blt_s	.L1470
	bgt_s	.L1471
	cmp_s	r0,r2
	blo_s	.L1470
	bhi_s	.L1471
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1470:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1471:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1477
	bgt_s	.L1476
	brlo	r0,r2,.L1477
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1477:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1476:
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
	bbit0.d	r2,5,@.L1482
	mov_s	r3,r1	;4
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L1482:
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
	bbit0.d	r2,0,@.L1502
	mov_s	r16,0	;4
	.align 2
.L1504:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L1502:
	div	r13,r13,2
	breq_s	r13,0,.L1503
	.align 2
.L1505:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L1504
	b.d	.L1505
	div	r13,r13,2
	.align 4
.L1503:
	brge	r18,0,.L1501
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	.align 2
.L1501:
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
	bbit0.d	r1,0,@.L1510
	mov_s	r14,r1	;4
	.align 2
.L1512:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r13
	mov_s	r15,r0
	.align 2
.L1510:
	div	r14,r14,2
	breq_s	r14,0,.L1511
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1512
	mov_s	r13,r0
	div	r14,r14,2
	.align 2
.L1518:
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1512
	mov_s	r13,r0
	b.d	.L1518
	div	r14,r14,2
	.align 4
.L1511:
	brge	r16,0,.L1509
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	mov_s	r15,r0
	.align 2
.L1509:
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
	blo_s	.L1523
	bhi_s	.L1524
	cmp_s	r0,r2
	blo_s	.L1523
	bhi_s	.L1524
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1523:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1524:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1530
	bhi_s	.L1529
	brlo	r0,r2,.L1530
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1530:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1529:
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
