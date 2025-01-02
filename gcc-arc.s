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
	breq_s	r2,0,.L69
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov	lp_count,r2	;5
	lp	@.L73	; lp_count:@.L64->@.L73
	.align 2
.L64:
	mov_s	r0,r3	;4
	ldb.ab	r12,[r3,1]
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L73:
	; ZOL_END, begins @.L64
	.align 2
.L69:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L82
	.align 2
.L88:
	mov	lp_count,r2	;5
	lp	@.L87	; lp_count:@.L76->@.L87
	.align 2
.L76:
	ldb_s	r12,[r1]
	add_s	r0,r0,1   ;b,b,h
	ldb	r3,[r0,-1]
	brne.d	r3,r12,.L86
	add_s	r1,r1,1   ;b,b,h
	nop_s
	.align 2
.L87:
	; ZOL_END, begins @.L76
	.align 2
.L82:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L86:
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
	b.d	.L96
	sub	r12,r0,1 ;a,b,u6
	.align 4
.L98:
	ldb_s	r3,[r0]
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L96:
	brne.d	r2,r12,.L98
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
.L107:
	ldb.a	r3,[r1,1]
	mov_s	r0,r2	;4
	tst_s	r3,r3
	jeq.d	[blink]
	stb.ab	r3,[r2,1]
	ldb.a	r3,[r1,1]
	mov_s	r0,r2	;4
	brne.d	r3,0,.L107
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
.L122:
	ldb.a	r2,[r0,1]
	tst_s	r2,r2
	jeq_s	[blink]
	brne	r2,r1,.L122
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L126:
	ldb_s	r3,[r2]
	mov_s	r0,r2	;4
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	brne_s	r3,0,.L126
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	breq	r2,r3,.L132
	j_s.d	[blink]
	sub_s	r0,r2,r3
	.align 4
.L133:
	ldb.a	r2,[r0,1]
	ldb.a	r3,[r1,1]
	brne	r2,r3,.L131
	.align 2
.L132:
	brne_s	r2,0,.L133
	.align 2
.L131:
	sub_s	r0,r2,r3
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	breq_s	r2,0,.L140
	mov_s	r2,r0	;4
	.align 2
.L139:
	ldb.a	r3,[r2,1]
	brne_s	r3,0,.L139
	j_s.d	[blink]
	sub_s	r0,r2,r0
	.align 4
.L140:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L151
	ldb_s	r3,[r0]
	breq_s	r3,0,.L158
	push_s	r13
	add_s	r2,r2,-1   ;h,h,s3
	b.d	.L147
	add_s	r12,r0,r2   ;a,b,c/u3
	.align 4
.L160:
	breq	r0,r12,.L146
	brne	r2,r3,.L146
	ldb.a	r3,[r0,1]
	breq_s	r3,0,.L159
	.align 2
.L147:
	mov_s	r13,r1	;4
	ldb.ab	r2,[r1,1]
	brne_s	r2,0,.L160
	.align 2
.L146:
	sub_s	r0,r3,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L151:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L159:
	ldb_s	r2,[r13,1]
	sub_s	r0,r3,r2
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L158:
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
	lp	@.L167	; lp_count:@.L163->@.L167
	.align 2
.L163:
	add_s	r1,r1,2   ;b,b,h
	ldb_s	r12,[r0,1]
	ldb.ab	r3,[r0,2]
	stb	r12,[r1,-2]
	stb	r3,[r1,-1]
	.align 2
.L167:
	; ZOL_END, begins @.L163
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
	brls	r0,31,.L198
	add	r2,r0,-127     ;a,b,limm
	brhi	r2,32,.L200
	.align 2
.L198:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L200:
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L198
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
	brls	r0,254,.L211
	brls	r0,8231,.L208
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L208
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L208
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L209
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L208:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L211:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L209:
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
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L218
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L218:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r1
	bl.d	@__gtsf2;1
	mov_s	r13,r0
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r0,r13
	mov.gt	r1,r14
	jlgt	@__subsf3
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
	st.a	r18,[sp,-4]	;26
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r14,r2,0
	vadd2	r16,r0,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	mov_s	r13,r0	;4
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	bl.d	@__ltdf2;1
	xbfu	r18,r13,31
	bmsk	r18,r18,7
	lsr_s	r0,r0,31
	breq	r18,r0,.L233
	vadd2	r0,r16,0
	tst_s	r13,r13
	mov.n	r0,r14
	mov.n	r1,r15
.L232:
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L233:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__gedf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L232
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r1
	mov_s	r14,r0
	bl.d	@__ltsf2;1
	mov_s	r1,0x00000000
	mov_s	r15,r0	;4
	mov_s	r1,0x00000000
	bl.d	@__ltsf2;1
	mov_s	r0,r13
	xbfu	r16,r15,31
	bmsk	r16,r16,7
	lsr_s	r0,r0,31
	breq	r16,r0,.L243
	tst_s	r15,r15
	mov.n	r14,r13
	mov_s	r0,r14
.L242:
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.align 4
.L243:
	mov_s	r1,r13
	bl.d	@__gesf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.p	r13,r14
	b.d	.L242
	mov_s	r0,r13
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	push_s	blink
	st.a	r18,[sp,-4]	;26
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r14,r2,0
	vadd2	r16,r0,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	mov_s	r13,r0	;4
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	bl.d	@__ltdf2;1
	xbfu	r18,r13,31
	bmsk	r18,r18,7
	lsr_s	r0,r0,31
	breq	r18,r0,.L253
	vadd2	r0,r16,0
	tst_s	r13,r13
	mov.n	r0,r14
	mov.n	r1,r15
.L252:
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L253:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__gedf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L252
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	push_s	blink
	st.a	r18,[sp,-4]	;26
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r14,r2,0
	vadd2	r16,r0,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	mov_s	r13,r0	;4
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	bl.d	@__ltdf2;1
	xbfu	r18,r13,31
	bmsk	r18,r18,7
	lsr_s	r0,r0,31
	breq	r18,r0,.L263
	tst_s	r13,r13
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
.L262:
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L263:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ledf2;1
	cmp_s	r0,0
	mov.le	r14,r16
	mov.le	r15,r17
	vadd2	r0,r14,0
	b_s	.L262
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r1
	mov_s	r14,r0
	bl.d	@__ltsf2;1
	mov_s	r1,0x00000000
	mov_s	r15,r0	;4
	mov_s	r1,0x00000000
	bl.d	@__ltsf2;1
	mov_s	r0,r13
	xbfu	r16,r15,31
	bmsk	r16,r16,7
	lsr_s	r0,r0,31
	breq	r16,r0,.L273
	tst_s	r15,r15
	mov.n	r13,r14
	mov_s	r0,r13
.L272:
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.align 4
.L273:
	mov_s	r1,r13
	bl.d	@__lesf2;1
	mov_s	r0,r14
	cmp_s	r0,0
	mov.le	r13,r14
	b.d	.L272
	mov_s	r0,r13
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	push_s	blink
	st.a	r18,[sp,-4]	;26
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r14,r2,0
	vadd2	r16,r0,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	mov_s	r13,r0	;4
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	bl.d	@__ltdf2;1
	xbfu	r18,r13,31
	bmsk	r18,r18,7
	lsr_s	r0,r0,31
	breq	r18,r0,.L283
	tst_s	r13,r13
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
.L282:
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L283:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ledf2;1
	cmp_s	r0,0
	mov.le	r14,r16
	mov.le	r15,r17
	vadd2	r0,r14,0
	b_s	.L282
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L293
	.align 2
.L294:
	and	r3,r0,63
	lsr.f	r0,r0,6
	ldb	r3,[r3,@digits]
	bne.d	.L294
	stb.ab	r3,[r2,1]
	.align 2
.L293:
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
	breq_s	r1,0,.L309
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
.L309:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L311
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L311:
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
	breq.d	r16,0,.L321
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	b.d	.L323
	mov_s	r14,0	;3
	.align 4
.L336:
	breq.d	r16,r14,.L321
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L323:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl.d	[r18]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L336
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r19	;4
	.align 2
.L337:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L321:
	add	r2,r16,1 ;a,b,c/u6
	mpy	r16,r16,r15
	tst_s	r15,r15
	add	r19,r21,r16 ;a,b,c/u6
	st	r2,[r20]	;26
	mov_s.ne	r1,r17
	mov_s.ne	r2,r15
	mov_s.ne	r0,r19
	jlne	@memmove
	b.d	.L337
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
	breq	r19,0,.L339
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	b.d	.L341
	mov_s	r14,0	;3
	.align 4
.L350:
	breq.d	r19,r14,.L339
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L341:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl.d	[r16]
	mov_s	r18,r13	;4
	brne.d	r0,0,.L350
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L338:
	mov_s	r0,r18	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L339:
	b.d	.L338
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
.L354:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L354
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L354
	breq	r2,43,.L356
	breq	r2,45,.L357
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L365
	mov_s	r15,0	;3
	.align 2
.L359:
	mov_s	r0,0	;3
	.align 2
.L362:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L362
	brne_s	r15,0,.L353
	sub_s	r0,r14,r13
.L353:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L357:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	add_s	r12,r12,1   ;b,b,h
	bls.d	.L359
	mov.ls	r15,1
	.align 2
.L365:
	b.d	.L353
	mov_s	r0,0	;3
	.align 4
.L356:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L365
	add_s	r12,r12,1   ;b,b,h
	b.d	.L359
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L376:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L376
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L376
	breq	r2,43,.L378
	breq	r2,45,.L394
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L386
	mov_s	r15,0	;3
	.align 2
.L380:
	mov_s	r0,0	;3
	.align 2
.L383:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L383
	brne_s	r15,0,.L375
	sub_s	r0,r14,r13
.L375:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L394:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	mov_s	r12,r0	;4
	bls.d	.L380
	mov.ls	r15,1
	.align 2
.L386:
	b.d	.L375
	mov_s	r0,0	;3
	.align 4
.L378:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L386
	add_s	r12,r12,1   ;b,b,h
	b.d	.L380
	mov_s	r15,0	;3
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L396:
	mov_s	r14,r0	;4
	ldb.ab	r3,[r0,1]
	breq	r3,32,.L396
	sub	r2,r3,9 ;a,b,u6
	brls	r2,4,.L396
	breq	r3,43,.L398
	brne	r3,45,.L416
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r14,r14,1   ;b,b,h
	bhi.d	.L407
	mov.ls	r5,1
	.align 2
.L401:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L404:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	asr	r15,r2,31
	ldb.a	r3,[r14,1]
	mov_s	r4,r2	;4
	sub3	r2,r3,6 ;a,b,u6
	sbc	r1,r13,r15
	brls	r2,9,.L404
	brne	r5,0,.L395
	sub.f	r0,r4,r12
	sbc	r1,r15,r13
.L395:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L416:
	sub3	r2,r3,6 ;a,b,u6
	brhi	r2,9,.L407
	.align 2
.L408:
	b.d	.L401
	mov_s	r5,0	;4
	.align 4
.L398:
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	brls.d	r2,9,.L408
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L407:
	mov_s	r0,0	;3
	b.d	.L395
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
	beq_s	.L418
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	b.d	.L421
	mov_s	r18,r4	;4
	.align 4
.L428:
	beq_s	.L417
	sub_s	r13,r13,r15
	breq.d	r13,0,.L418
	add	r17,r14,r16 ;a,b,c/u6
	.align 2
.L421:
	lsr_s	r15,r13
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r19	;4
	jl.d	[r18]
	add_s	r13,r13,-1   ;h,h,s3
	tst_s	r0,r0
	bp	.L428
	mov_s	r13,r15	;4
	brne_s	r13,0,.L421
	.align 2
.L418:
	mov_s	r14,0	;3
	.align 2
.L417:
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
	mov_s	r20,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	mov_s	r19,r4	;4
	mov.f	r13,r2
	beq.d	.L434
	mov_s	r18,r5	;4
	.align 2
.L430:
	asr_s	r15,r13,1
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r2,r18	;4
	mov_s	r1,r14	;4
	mov_s	r0,r20	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	breq_s	r0,0,.L429
	brle	r0,0,.L432
	asr.f	r13,r13,1
	bne.d	.L430
	add	r17,r14,r16 ;a,b,c/u6
	.align 2
.L434:
	mov_s	r14,0	;3
	.align 2
.L429:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.align 4
.L432:
	breq_s	r15,0,.L434
	b.d	.L430
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
	breq_s	r2,0,.L461
	.align 2
.L458:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L458
	.align 2
.L461:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L467
	b_s	.L466
	.align 4
.L468:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L466
	.align 2
.L467:
	brne_s	r2,0,.L468
	.align 2
.L466:
	brlt	r2,r3,.L470
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L470:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L473:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L473
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L481
	mov_s	r2,r0	;4
	.align 2
.L480:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L480
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L481:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L490
	push_s	r14
	push_s	r13
	mov	lp_count,r2	;5
	lp	@.L499	; lp_count:@.L486->@.L499
	.align 2
.L486:
	mov_s	r12,r1	;4
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld_s	r13,[r12]		;15
	brne.d	r3,r13,.L487
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L487
	nop_s
	.align 2
.L499:
	; ZOL_END, begins @.L486
	mov_s	r0,0	;3
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L487:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L490:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L507
	mov_s.ne	r3,r0
	.align 2
.L512:
	mov	lp_count,r2	;5
	lp	@.L511	; lp_count:@.L502->@.L511
	.align 2
.L502:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L511:
	; ZOL_END, begins @.L502
	.align 2
.L507:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L522
	.align 2
.L529:
	mov	lp_count,r2	;5
	lp	@.L528	; lp_count:@.L515->@.L528
	.align 2
.L515:
	ld_s	r12,[r1]		;15
	add_s	r0,r0,4   ;b,b,h
	ld	r3,[r0,-4]	;23
	cmp_s	r3,r12
	bne.d	.L526
	add_s	r1,r1,4   ;b,b,h
	nop_s
	.align 2
.L528:
	; ZOL_END, begins @.L515
	.align 2
.L522:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L526:
	blt_s	.L527
	j_s.d	[blink]
	setgt	r0,r3,r12
	.align 4
.L527:
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
	brlo	r12,r3,.L538
	tst_s	r2,r2
	jeq_s	[blink]
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r2,1 ;a,b,u6
	brls.d	r3,23,.L542
	add_s	r12,r1,4   ;a,b,c/u3
	add_s	r13,r1,4   ;a,b,c/u3
	breq.d	r13,r0,.L542
	mov_s	r12,r13	;4
	bbit0.d	r0,2,@.L549
	xbfu	r12,r0,2
	mov_s	r4,r0	;4
	ld_s	r3,[r1]		;15
	st.ab	r3,[r4,4]	;26
	.align 2
.L543:
	sub_s	r2,r2,r12
	add2	r3,-8,r12
	add_s	r1,r1,r3   ;b,b,h
	add2	r12,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L567	; lp_count:@.L544->@.L567
	.align 2
.L544:
	ldd.a	r14,[r1,8]
	std.ab	r14,[r12,8]
	.align 2
.L567:
	; ZOL_END, begins @.L544
	bbit0	r2,0,@.L551
	bclr_s	r2,r2,0
	add2_s	r13,r13,r2
	add2	r2,r4,r2
	ld_s	r3,[r13]		;15
	st_s	r3,[r2]		;16
.L551:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L538:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	add_s	r1,r1,r3   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L566	; lp_count:@.L541->@.L566
	.align 2
.L541:
	ld.a	r12,[r1,-4]	;23
	st.a	r12,[r3,-4]	;26
	.align 2
.L566:
	; ZOL_END, begins @.L541
	j_s	[blink]
	.align 4
.L549:
	mov_s	r13,r1	;4
	b.d	.L543
	mov_s	r4,r0	;4
	.align 4
.L542:
	b.d	.L547
	sub2	r2,r0,1 ;a,b,u6
	.align 4
.L565:
	add_s	r12,r12,4   ;b,b,h
	.align 2
.L547:
	ld	r13,[r12,-4]	;23
	add_s	r3,r3,-1   ;h,h,s3
	st.a	r13,[r2,4]	;26
	brne	r3,-1,.L565
	b_s	.L551
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
	brls.d	r13,5,.L574
	xbfu	r12,r0,2
	bbit0.d	r3,0,@.L571
	mov_s	r4,r0	;4
	sub1	r13,r2,1 ;a,b,u6
	st.ab	r1,[r4,4]	;26
	.align 2
.L571:
	sub_s	r2,r2,r12
	mov_s	r15,r1	;4
	mov_s	r14,r1	;4
	add2	r12,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L600	; lp_count:@.L572->@.L600
	.align 2
.L572:
	std.ab	r14,[r12,8]
	.align 2
.L600:
	; ZOL_END, begins @.L572
	bbit0	r2,0,@.L569
	bclr_s	r2,r2,0
	sub_s	r13,r13,r2
	add2	r2,r4,r2
	.align 2
.L570:
	breq.d	r13,0,.L569
	st_s	r1,[r2]		;16
	breq.d	r13,1,.L569
	st_s	r1,[r2,4]		;16
	breq.d	r13,2,.L569
	st_s	r1,[r2,8]		;16
	breq.d	r13,3,.L569
	st_s	r1,[r2,12]		;16
	breq.d	r13,4,.L569
	st_s	r1,[r2,16]		;16
	st_s	r1,[r2,20]		;16
.L569:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L574:
	b.d	.L570
	mov_s	r2,r0	;4
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L602
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L642	; lp_count:@.L604->@.L642
	.align 2
.L604:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L642:
	; ZOL_END, begins @.L604
	j_s	[blink]
	.align 4
.L602:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L639
	push_s	r14
	push_s	r13
	or	r12,r1,r0
	add_s	r3,r0,1   ;a,b,c/u3
	bmsk_s	r12,r12,1
	sub_s	r13,r1,r3
	seteq	r12,r12,0
	seths	r13,r13,3
	tst_s	r12,r13
	beq_s	.L605
	bmskn	r14,r2,1
	sub2	r3,r14,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L641	; lp_count:@.L606->@.L641
	.align 2
.L606:
	ld.a	r13,[r12,4]	;23
	st.ab	r13,[r1,4]	;26
	.align 2
.L641:
	; ZOL_END, begins @.L606
	add_s	r0,r0,r14   ;b,b,h
	breq.d	r2,r14,.L601
	sub_s	r3,r2,r14
	ldb_s	r2,[r0]
	breq.d	r3,1,.L601
	stb_s	r2,[r1]
	ldb_s	r2,[r0,1]
	breq.d	r3,2,.L601
	stb_s	r2,[r1,1]
	ldb_s	r2,[r0,2]
	stb_s	r2,[r1,2]
	.align 2
.L601:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L605:
	add_s	r1,r1,-1   ;h,h,s3
	b.d	.L609
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L640:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L609:
	ldb	r2,[r3,-1]
	brne.d	r3,r0,.L640
	stb.a	r2,[r1,1]
	b_s	.L601
	.align 4
.L639:
	add_s	r3,r0,1   ;a,b,c/u3
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L636:
	ldb	r2,[r3,-1]
	cmp_s	r3,r0
	jeq.d	[blink]
	stb.a	r2,[r1,1]
	b.d	.L636
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
	lp	@.L677	; lp_count:@.L672->@.L677
	.align 2
.L672:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L676
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L677:
	; ZOL_END, begins @.L672
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L676:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L681
	bbit1.d	r2,0,@.L685
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L680:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L680
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L685:
	j_s	[blink]
	.align 4
.L681:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	gl_isinff, .-gl_isinff
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	j_s.d	[blink]
	mov_s	r0,0	;3
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
	bl.d	@__addsf3;1
	mov_s	r1,r0
	bl.d	@__nesf2;1
	mov_s	r1,r15
	breq_s	r0,0,.L695
	tst_s	r14,r14
	mov_s	r13,0x3f000000 ; 5.0e-1
	mov.p	r13,0x40000000 ; 2.0e+0
	bbit0	r14,0,@.L698
	.align 2
.L699:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r13
	mov_s	r15,r0
	.align 2
.L698:
	div	r14,r14,2
	breq_s	r14,0,.L695
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L699
	mov_s	r13,r0
	div	r14,r14,2
	.align 2
.L708:
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L699
	mov_s	r13,r0
	b.d	.L708
	div	r14,r14,2
	.align 4
.L695:
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
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L710
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L713
	.align 2
.L714:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L713:
	div	r13,r13,2
	breq_s	r13,0,.L710
	.align 2
.L715:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L714
	b.d	.L715
	div	r13,r13,2
	.align 4
.L710:
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
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r16,r0,0
	mov_s	r13,r2	;4
	vadd2	r2,r0,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r18,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L722
	vadd2	r18,r16,0
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L726
	.align 2
.L727:
	vadd2	r0,r18,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r18,r0,0
	.align 2
.L726:
	div	r13,r13,2
	breq_s	r13,0,.L722
	.align 2
.L728:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L727
	b.d	.L728
	div	r13,r13,2
	.align 4
.L722:
	vadd2	r0,r18,0
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
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
	brls	r3,3,.L738
	or	r3,r0,r1
	tst	r3,3
	bne_s	.L738
	bmskn	r4,r2,1
	sub2	r12,r4,1 ;a,b,u6
	sub2	r14,r1,1 ;a,b,u6
	add	r5,r0,r4 ;a,b,c/u6
	mov_s	r13,r0	;4
	lsr_s	r12,r12,2
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L761	; lp_count:@.L739->@.L761
	.align 2
.L739:
	ld_s	r15,[r13]		;15
	ld.a	r3,[r14,4]	;23
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	.align 2
.L761:
	; ZOL_END, begins @.L739
	add_s	r1,r1,r4   ;b,b,h
	breq.d	r4,r2,.L737
	sub	r3,r2,r4
	ldb	r2,[r5]
	ldb_s	r12,[r1]
	xor_s	r2,r2,r12
	breq.d	r3,1,.L737
	stb	r2,[r5]
	ldb	r12,[r5,1]
	ldb_s	r2,[r1,1]
	xor_s	r2,r2,r12
	breq.d	r3,2,.L737
	stb	r2,[r5,1]
	ldb	r3,[r5,2]
	ldb_s	r2,[r1,2]
	xor_s	r2,r2,r3
	stb	r2,[r5,2]
.L737:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L738:
	mov_s	r12,r0	;4
	mov	lp_count,r2	;5
	lp	@.L760	; lp_count:@.L741->@.L760
	.align 2
.L741:
	ldb.ab	r13,[r12,1]
	ldb.ab	r3,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L760:
	; ZOL_END, begins @.L741
	b_s	.L737
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	tst_s	r3,r3
	beq.d	.L763
	mov_s	r3,r0	;4
	.align 2
.L764:
	ldb.a	r12,[r3,1]
	brne_s	r12,0,.L764
	.align 2
.L763:
	breq_s	r2,0,.L765
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L778	; lp_count:@.L766->@.L778
	.align 2
.L766:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r3,1]
	nop_s
	.align 2
.L778:
	; ZOL_END, begins @.L766
	.align 2
.L765:
	stb	0,[r3]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L783
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L788	; lp_count:@.L781->@.L788
	.align 2
.L781:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L788:
	; ZOL_END, begins @.L781
	j_s	[blink]
	.align 4
.L783:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L796
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L790:
	b.d	.L793
	mov_s	r3,r13	;4
	.align 4
.L792:
	breq	r2,r12,.L791
	.align 2
.L793:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L792
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L790
	mov_s	r0,0	;3
.L791:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L796:
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
.L803:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r1,r3
	mov.ne	r12,r0
	brne.d	r3,0,.L803
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
	breq.d	r14,0,.L820
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L810:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L810
	sub.f	r2,r2,r1
	beq_s	.L820
	b.d	.L818
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L828:
	breq_s	r2,0,.L827
	.align 2
.L818:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r2,r14,.L828
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L812
	mov_s	r12,r0	;4
	.align 4
.L830:
	breq	r12,r15,.L814
	brne	r3,r2,.L815
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L829
	ldb.a	r3,[r13,1]
	.align 2
.L812:
	brne_s	r3,0,.L830
	.align 2
.L815:
	b.d	.L818
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L827:
	mov_s	r0,0	;3
.L808:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L829:
	ldb_s	r3,[r13,1]
	.align 2
.L814:
	breq	r2,r3,.L808
	b.d	.L818
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L820:
	b.d	.L808
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
	brlt	r0,0,.L842
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L835
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L834
	.align 2
.L835:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L842:
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L835
	.align 2
.L834:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L835
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq_s	[blink]
	brlo	r1,r3,.L852
	sub_s	r1,r1,r3
	add.f	r5,r0,r1
	blo	.L852
	std.a	r14,[sp,-8]
	push_s	r13
	b.d	.L849
	ldb	r6,[r2]
	.align 4
.L845:
	brlo	r5,r0,.L854
	.align 2
.L849:
	mov_s	r13,r0	;4
	ldb.ab	r12,[r13,1]
	cmp_s	r12,r6
	bne.d	.L845
	mov_s.ne	r0,r13
	breq	r3,1,.L843
	.align 2
.L848:
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r12,r3,1 ;a,b,u6
	mov	lp_count,r12	;5
	lp	@.L869	; lp_count:@.L846->@.L869
	.align 2
.L846:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L868
	nop_s
	.align 2
.L869:
	; ZOL_END, begins @.L846
.L843:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L868:
	brlo	r5,r13,.L854
	mov_s	r0,r13	;4
	ldb.ab	r12,[r0,1]
	brne	r6,r12,.L845
	mov_s	r12,r13	;4
	mov_s	r13,r0	;4
	b.d	.L848
	mov_s	r0,r12	;4
	.align 4
.L854:
	b.d	.L843
	mov_s	r0,0	;3
	.align 4
.L852:
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
	std.a	r22,[sp,-8]
	std.a	r20,[sp,-8]
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r14,r0,0
	mov_s	r22,r2	;4
	mov_s	r3,0	;3
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn	.L901
	vadd2	r0,r14,0
	mov_s	r3,1072693248	;13
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn.d	.L902
	mov.p	r23,0
	.align 2
.L879:
	mov_s	r13,0	;3
	mov_s	r20,0	;4
	mov_s	r21,1071644672	;13
	mov_s	r18,0	;4
	mov_s	r19,1073741824	;13
	.align 2
.L885:
	vadd2	r16,r14,0
	vadd2	r2,r20,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r2,r18,0
	vadd2	r14,r0,0
	vadd2	r0,r16,0
	bl	@__gedf2;1
	brge	r0,0,.L885
	st	r13,[r22]	;26
	mov_s	r0,r14	;4
	breq.d	r23,0,.L903
	bxor	r1,r15,31
.L876:
	ld	blink,[sp,44]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,8]
	ldd.ab	r22,[sp,12]
	j_s	[blink]
	.align 4
.L903:
	vadd2	r0,r14,0
	b_s	.L876
	.align 4
.L902:
	vadd2	r0,r14,0
	mov_s	r3,1071644672	;13
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	vadd2	r0,r14,0
	bp	.L898
	mov_s	r2,0	;3
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	brne	r0,0,.L891
	.align 2
.L900:
	vadd2	r0,r14,0
	st	0,[r22]	;37
	b_s	.L876
	.align 4
.L901:
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,-1074790400	;13
	bl.d	@__ledf2;1
	mov_s	r16,r14	;4
	brgt.d	r0,0,.L904
	bxor	r17,r15,31
	vadd2	r14,r16,0
	b.d	.L879
	mov_s	r23,1	;4
	.align 4
.L898:
	st	0,[r22]	;37
	b_s	.L876
	.align 4
.L904:
	vadd2	r0,r14,0
	mov_s	r3,-1075838976	;13
	bl.d	@__gtdf2;1
	mov_s	r2,0	;3
	brle	r0,0,.L900
	mov_s	r23,1	;4
	.align 2
.L880:
	vadd2	r14,r16,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1070596096	;13
	.align 2
.L887:
	vadd2	r2,r14,0
	vadd2	r18,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	vadd2	r0,r18,0
	bl	@__ltdf2;1
	brlt	r0,0,.L887
	st	r13,[r22]	;26
	mov_s	r0,r14	;4
	tst	r23,r23
	bne.d	.L876
	bxor	r1,r15,31
	b_s	.L903
	.align 4
.L891:
	vadd2	r16,r14,0
	b.d	.L880
	mov_s	r23,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	or.f	0,r0,r1
	beq.d	.L909
	mov_s	r14,r1	;4
	mov_s	r13,r0	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L908:
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
	bne_s	.L908
.L905:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L909:
	mov_s	r0,0	;3
	b.d	.L905
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp_s	r1,r0
	mov.hs	r3,1
	bhs.d	.L931
	mov.hs	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L936	; lp_count:@.L913->@.L936
	.align 2
.L913:
	brlt	r1,0,.L914
	asl_s	r1,r1,1
	brls.d	r0,r1,.L915
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L936:
	; ZOL_END, begins @.L913
	.align 2
.L916:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L915:
	tst_s	r3,r3
	beq.d	.L916
	mov.eq	r12,0
	.align 2
.L914:
	mov_s	r12,0	;3
	.align 2
.L919:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L919
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L931:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L931
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
	beq_s	.L939
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L939:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L950
	xor	r12,r1,r3
	.align 2
.L947:
	fls	r0,r2
	brne.d	r12,0,.L951
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L951:
	fls	r12,r12
	rsub	r0,r12,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L950:
	brne	r1,r0,.L947
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
.L954:
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
	bne.d	.L954
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L964
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L996
	.align 2
.L964:
	tst_s	r3,r3
	beq_s	.L997
	std.a	r14,[sp,-8]
	push_s	r13
	add3	r3,-8,r3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1002	; lp_count:@.L967->@.L1002
	.align 2
.L967:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L1002:
	; ZOL_END, begins @.L967
	brls	r2,r4,.L960
	sub	r15,r2,r4
	sub	r3,r15,1 ;a,b,u6
	brls	r3,6,.L969
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
	beq_s	.L969
	bmskn	r5,r15,1
	sub2	r3,r5,1 ;a,b,u6
	sub2	r12,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1001	; lp_count:@.L970->@.L1001
	.align 2
.L970:
	ld.a	r14,[r12,4]	;23
	st.ab	r14,[r13,4]	;26
	.align 2
.L1001:
	; ZOL_END, begins @.L970
	breq.d	r15,r5,.L960
	add	r4,r4,r5   ;(p)b,b,c/u6
	add	r13,r1,r4 ;a,b,c/u6
	add	r12,r0,r4 ;a,b,c/u6
	add	r3,r4,1 ;a,b,c/u6
	ldb_s	r13,[r13]
	brls.d	r2,r3,.L960
	stb_s	r13,[r12]
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	add_s	r4,r4,2   ;h,h,s3
	cmp_s	r2,r4
	ldb_s	r2,[r12]
	bls.d	.L960
	stb_s	r2,[r3]
	add_s	r1,r1,r4   ;b,b,h
	add	r4,r4,r0   ;(p)b,b,c/u6
	ldb_s	r2,[r1]
	stb	r2,[r4]
	.align 2
.L960:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L996:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L1000	; lp_count:@.L974->@.L1000
	.align 2
.L974:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1000:
	; ZOL_END, begins @.L974
	j_s	[blink]
	.align 4
.L969:
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L999	; lp_count:@.L972->@.L999
	.align 2
.L972:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r4,1]
	.align 2
.L999:
	; ZOL_END, begins @.L972
	b_s	.L960
	.align 4
.L997:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L998	; lp_count:@.L991->@.L998
	.align 2
.L991:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r4,1]
	.align 2
.L998:
	; ZOL_END, begins @.L991
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	brlo.d	r0,r1,.L1007
	lsr	r4,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	cmp_s	r3,r0
	bhs	.L1034
	.align 2
.L1007:
	tst	r4,r4
	beq_s	.L1035
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r4,1 ;a,b,u6
	cmp_s	r3,11
	bls	.L1010
	add_s	r3,r1,2   ;a,b,c/u3
	sub_s	r3,r0,r3
	cmp	r3,4
	bls	.L1010 ;brls out of range
	lsr_s	r3,r0
	neg_s	r3,r3
	tst	r3,3
	and	r12,r3,3
	beq.d	.L1011
	mov.eq	r6,0
	ldh_s.x	r13,[r1]
	bbit0.d	r3,1,@.L1020
	sth_s	r13,[r0]
	ldh_s.x	r3,[r1,2]
	cmp_s	r12,3
	sth_s	r3,[r0,2]
	bne.d	.L1011
	mov.ne	r6,2
	mov_s	r6,3	;4
	ldh_s.x	r3,[r1,4]
	sth_s	r3,[r0,4]
	.align 2
.L1011:
	sub	r5,r4,r12
	add1	r13,-8,r12
	add_s	r13,r13,r1   ;b,b,h
	add1	r12,r0,r12
	lsr	r3,r5,2
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1039	; lp_count:@.L1013->@.L1039
	.align 2
.L1013:
	ldd.a	r14,[r13,8]
	std.ab	r14,[r12,8]
	.align 2
.L1039:
	; ZOL_END, begins @.L1013
	bmskn	r3,r5,1
	tst	r5,3
	beq.d	.L1006
	add_s	r3,r3,r6   ;b,b,h
	add1	r14,r0,r3
	ldh.x.as	r15,[r1,r3]
	add_s	r13,r3,1   ;a,b,c/u3
	asl_s	r12,r3,1
	brls.d	r4,r13,.L1006
	sth_s	r15,[r14]
	mov_s	r13,r12	;4
	add_s	r14,r1,r12   ;a,b,c/u3
	add_s	r13,r13,r0   ;b,b,h
	add_s	r3,r3,2   ;b,b,h
	cmp	r4,r3
	ldh_s.x	r3,[r14,2]
	bls.d	.L1006
	sth_s	r3,[r13,2]
	add_s	r3,r1,r12   ;a,b,c/u3
	add_s	r12,r12,r0   ;b,b,h
	ldh_s.x	r3,[r3,4]
	sth_s	r3,[r12,4]
	.align 2
.L1006:
	bbit0	r2,0,@.L1003
	add_s	r1,r1,r2   ;b,b,h
	.align 2
.L1040:
	add_s	r2,r2,r0   ;b,b,h
	ldb	r3,[r1,-1]
	stb	r3,[r2,-1]
	.align 2
.L1003:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1034:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r3,r1
	mov	lp_count,r1	;5
	lp	@.L1038	; lp_count:@.L1018->@.L1038
	.align 2
.L1018:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1038:
	; ZOL_END, begins @.L1018
	j_s	[blink]
	.align 4
.L1020:
	b.d	.L1011
	mov_s	r6,1	;4
	.align 4
.L1010:
	add1	r3,-2,r4
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1037	; lp_count:@.L1015->@.L1037
	.align 2
.L1015:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L1037:
	; ZOL_END, begins @.L1015
	bbit0	r2,0,@.L1003
	b.d	.L1040
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L1035:
	bbit0	r2,0,@.L1041
	add_s	r1,r1,r2   ;b,b,h
	add_s	r2,r2,r0   ;b,b,h
	ldb	r3,[r1,-1]
	stb	r3,[r2,-1]
	.align 2
.L1041:
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	brlo.d	r0,r1,.L1048
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1076
	.align 2
.L1048:
	tst_s	r3,r3
	beq_s	.L1077
	sub	r12,r3,1 ;a,b,u6
	cmp_s	r12,23
	bls	.L1050
	add_s	r12,r1,4   ;a,b,c/u3
	cmp_s	r0,r12
	beq_s	.L1050
	xbfu	r12,r0,2
	bbit0.d	r0,2,@.L1051
	mov_s	r6,0	;4
	mov_s	r6,r12	;4
	ld_s	r13,[r1]		;15
	st_s	r13,[r0]		;16
	.align 2
.L1051:
	sub_s	r13,r3,r12
	add2	r14,-8,r12
	add_s	r14,r14,r1   ;b,b,h
	add2	r12,r0,r12
	lsr_s	r3,r13
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1083	; lp_count:@.L1052->@.L1083
	.align 2
.L1052:
	ldd.a	r4,[r14,8]
	std.ab	r4,[r12,8]
	.align 2
.L1083:
	; ZOL_END, begins @.L1052
	bbit0	r13,0,@.L1055
	bmskn	r3,r13,0
	add_s	r3,r3,r6   ;b,b,h
	add2	r12,r1,r3
	add2	r3,r0,r3
	ld_s	r12,[r12]		;15
	st_s	r12,[r3]		;16
	.align 2
.L1055:
	brls	r2,r15,.L1043
	sub	r4,r2,r15
	sub	r3,r4,1 ;a,b,u6
	brls	r3,6,.L1046
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
	beq_s	.L1046
	bmskn	r5,r4,1
	sub2	r3,r5,1 ;a,b,u6
	sub2	r12,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1082	; lp_count:@.L1056->@.L1082
	.align 2
.L1056:
	ld.a	r14,[r12,4]	;23
	st.ab	r14,[r13,4]	;26
	.align 2
.L1082:
	; ZOL_END, begins @.L1056
	breq.d	r5,r4,.L1043
	add_s	r15,r15,r5   ;b,b,h
	add_s	r13,r1,r15   ;a,b,c/u3
	add_s	r12,r0,r15   ;a,b,c/u3
	add_s	r3,r15,1   ;a,b,c/u3
	ldb_s	r13,[r13]
	brls.d	r2,r3,.L1043
	stb_s	r13,[r12]
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	add_s	r15,r15,2   ;b,b,h
	cmp_s	r2,r15
	ldb_s	r2,[r12]
	bls.d	.L1043
	stb_s	r2,[r3]
	add_s	r1,r1,r15   ;b,b,h
	add_s	r15,r15,r0   ;b,b,h
	ldb_s	r2,[r1]
	stb_s	r2,[r15]
	.align 2
.L1043:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1076:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r2,r2,r0
	beq.d	.L1043
	rsub.ne	r1,r1,r3
	.align 2
.L1081:
	mov	lp_count,r1	;5
	lp	@.L1080	; lp_count:@.L1060->@.L1080
	.align 2
.L1060:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1080:
	; ZOL_END, begins @.L1060
	b_s	.L1043
	.align 4
.L1050:
	add2	r3,-4,r3
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1079	; lp_count:@.L1054->@.L1079
	.align 2
.L1054:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L1079:
	; ZOL_END, begins @.L1054
	b_s	.L1055
	.align 4
.L1077:
	breq_s	r2,0,.L1043
	.align 2
.L1046:
	add_s	r15,r15,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	sub_s	r2,r2,r1
	add_s	r15,r15,r0   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L1078	; lp_count:@.L1058->@.L1078
	.align 2
.L1058:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r15,1]
	.align 2
.L1078:
	; ZOL_END, begins @.L1058
	b_s	.L1043
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
	bbit1	r0,15,@.L1099
	exth_s	r2,r0
	asr.f	r0,r2,14
	jne_s	[blink]
	lsr.f	0,r2,13
	bne_s	.L1100
	lsr.f	0,r2,12
	bne_s	.L1101
	lsr.f	0,r2,11
	bne_s	.L1102
	lsr.f	0,r2,10
	bne_s	.L1103
	lsr.f	0,r2,9
	bne_s	.L1104
	lsr.f	0,r2,8
	bne_s	.L1105
	lsr.f	0,r2,7
	bne_s	.L1106
	lsr.f	0,r2,6
	bne_s	.L1107
	lsr.f	0,r2,5
	bne_s	.L1108
	lsr.f	0,r2,4
	bne_s	.L1109
	lsr.f	0,r2,3
	bne_s	.L1110
	lsr.f	0,r2,2
	bne_s	.L1111
	lsr.f	0,r2,1
	bne_s	.L1112
	tst_s	r2,r2
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1099:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1110:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1100:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1101:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1102:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1103:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1104:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1105:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1106:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1107:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1108:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1109:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1111:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1112:
	j_s.d	[blink]
	mov_s	r0,14	;3
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	bbit1	r0,0,@.L1118
	exth_s	r2,r0
	bbit1	r2,1,@.L1119
	bbit1	r2,2,@.L1120
	bbit1	r2,3,@.L1121
	bbit1	r2,4,@.L1122
	bbit1	r2,5,@.L1123
	bbit1	r2,6,@.L1124
	bbit1	r2,7,@.L1125
	bbit1	r2,8,@.L1126
	bbit1	r2,9,@.L1127
	bbit1	r2,10,@.L1128
	bbit1	r2,11,@.L1129
	bbit1	r2,12,@.L1130
	bbit1	r2,13,@.L1131
	bbit1	r2,14,@.L1132
	lsr.f	0,r2,15
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1118:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1119:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1130:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1120:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1121:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1122:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1123:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1124:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1125:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1126:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1127:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1128:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1129:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1131:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1132:
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
	brge	r0,0,.L1142
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L1142:
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
.L1149:
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
	bne.d	.L1149
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
.L1157:
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
	bne.d	.L1157
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1189
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1188	; lp_count:@.L1165->@.L1188
	.align 2
.L1165:
	brlt	r1,0,.L1166
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1167
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1188:
	; ZOL_END, begins @.L1165
	.align 2
.L1168:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1167:
	tst_s	r3,r3
	beq.d	.L1168
	mov.eq	r12,0
	.align 2
.L1166:
	mov_s	r12,0	;3
	.align 2
.L1171:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1171
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1183:
	cmp_s	r0,r1
	.align 4
.L1189:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1183
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
	bn	.L1190
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L1190:
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
	bn	.L1195
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1195:
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
	bn.d	.L1206
	mov.n	r13,1
	beq.d	.L1204
	mov.eq	r0,0
	mov_s	r13,0	;3
	.align 2
.L1206:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1220	; lp_count:@.L1209->@.L1220
	.align 2
.L1209:
	and	r2,r1,1
	asr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	beq.d	.L1208
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1220:
	; ZOL_END, begins @.L1209
	.align 2
.L1208:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1204:
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
	bls.d	.L1225
	mov.hi	r3,32
	.align 2
.L1242:
	mov	lp_count,r3	;5
	lp	@.L1241	; lp_count:@.L1224->@.L1241
	.align 2
.L1224:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1228
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1241:
	; ZOL_END, begins @.L1224
	.align 2
.L1228:
	tst_s	r2,r2
	beq.d	.L1226
	mov.eq	r0,0
	.align 2
.L1225:
	mov_s	r0,0	;3
	.align 2
.L1230:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r2
	lsr.f	r2,r2,1
	bne.d	.L1230
	lsr_s	r1,r1
	.align 2
.L1226:
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
	bls.d	.L1251
	mov.hi	r3,32
	.align 2
.L1263:
	mov	lp_count,r3	;5
	lp	@.L1262	; lp_count:@.L1245->@.L1262
	.align 2
.L1245:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1249
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1262:
	; ZOL_END, begins @.L1245
	.align 2
.L1249:
	tst_s	r2,r2
	beq.d	.L1247
	mov.eq	r0,r12
	.align 2
.L1251:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	lsr.f	r2,r2,1
	bne.d	.L1251
	lsr_s	r1,r1
	.align 2
.L1247:
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
	bhs	.L1379
	btst_s	r1,15
	bne	.L1267
	asl_s	r3,r1,1
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1268
	btst_s	r3,15
	bne	.L1269
	asl_s	r3,r1,2
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1270
	btst_s	r3,15
	bne	.L1271
	asl_s	r3,r1,3
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1272
	btst_s	r3,15
	bne	.L1273
	asl_s	r3,r1,4
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1274
	btst_s	r3,15
	bne	.L1275
	asl_s	r3,r1,5
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1276
	btst_s	r3,15
	bne	.L1277
	asl_s	r3,r1,6
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1278
	btst_s	r3,15
	bne	.L1279
	asl_s	r3,r1,7
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1280
	btst_s	r3,15
	bne	.L1281
	asl	r3,r1,8
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1282
	btst_s	r3,15
	bne	.L1283
	asl	r3,r1,9
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1284
	btst_s	r3,15
	bne	.L1285
	asl	r3,r1,10
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1286
	btst_s	r3,15
	bne	.L1287
	asl	r3,r1,11
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1288
	btst_s	r3,15
	bne	.L1289
	asl	r3,r1,12
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1290
	btst_s	r3,15
	bne	.L1291
	asl	r3,r1,13
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1292
	btst_s	r3,15
	bne	.L1293
	asl	r3,r1,14
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1294
	btst_s	r3,15
	bne	.L1295
	asl_s	r1,r1,15
	exth_s	r13,r1
	cmp_s	r0,r13
	bls	.L1296
	tst_s	r13,r13
	bne	.L1380
	.align 2
.L1297:
	tst_s	r2,r2
	mov.ne	r13,r0
	mov_s	r0,r13	;4
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1284:
	blo	.L1330
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	mov_s	r13,r12	;4
	.align 2
.L1299:
	lsr.f	r15,r12,2
	beq.d	.L1297
	lsr	r14,r3,2
	brhi	r14,r0,.L1300
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1300:
	lsr.f	r15,r12,3
	beq.d	.L1297
	lsr	r14,r3,3
	brlo	r0,r14,.L1301
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1301:
	lsr.f	r15,r12,4
	beq.d	.L1297
	lsr	r14,r3,4
	brlo	r0,r14,.L1302
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1302:
	lsr.f	r15,r12,5
	beq.d	.L1297
	lsr	r14,r3,5
	brlo	r0,r14,.L1303
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1303:
	lsr.f	r15,r12,6
	beq.d	.L1297
	lsr	r14,r3,6
	brlo	r0,r14,.L1304
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1304:
	lsr.f	r15,r12,7
	beq.d	.L1297
	lsr	r14,r3,7
	brlo	r0,r14,.L1305
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1305:
	lsr.f	r15,r12,8
	beq.d	.L1297
	lsr	r14,r3,8
	brlo	r0,r14,.L1306
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1306:
	lsr.f	r15,r12,9
	beq.d	.L1297
	lsr	r14,r3,9
	brlo	r0,r14,.L1307
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1307:
	lsr.f	r15,r12,10
	beq.d	.L1297
	lsr	r14,r3,10
	brlo	r0,r14,.L1308
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1308:
	lsr.f	r15,r12,11
	beq.d	.L1297
	lsr	r14,r3,11
	brlo	r0,r14,.L1309
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1309:
	lsr.f	r15,r12,12
	beq.d	.L1297
	lsr	r14,r3,12
	brlo	r0,r14,.L1310
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1310:
	lsr.f	r15,r12,13
	beq.d	.L1297
	lsr	r14,r3,13
	brlo	r0,r14,.L1311
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1311:
	lsr.f	r15,r12,14
	beq.d	.L1297
	lsr	r14,r3,14
	brlo	r0,r14,.L1312
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1312:
	bxor.f	0,r12,14
	beq.d	.L1297
	lsr_s	r3,r3,15
	cmp_s	r0,r3
	blo.d	.L1297
	mov.lo	r0,0
	sub_s	r3,r0,r3
	exth_s	r0,r3
	b.d	.L1297
	bset_s	r13,r13,0
	.align 4
.L1379:
	bne.d	.L1297
	sub_s.ne	r13,r13,r13
	mov_s	r13,1	;3
	b.d	.L1297
	mov_s	r0,0	;3
	.align 4
.L1267:
	sub_s	r0,r0,r1
	exth_s	r0,r0
	b.d	.L1297
	mov_s	r13,1	;3
	.align 4
.L1268:
	blo	.L1322
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,2	;3
	b.d	.L1299
	mov_s	r13,2	;3
	.align 4
.L1269:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	bmsk_s	r1,r1,14
	mov_s	r14,1	;3
	mov_s	r12,2	;3
	mov_s	r13,2	;3
	.align 2
.L1317:
	cmp_s	r0,r1
	blo	.L1299
	sub_s	r1,r0,r1
	exth_s	r0,r1
	b.d	.L1299
	or_s	r13,r13,r14
	.align 4
.L1270:
	blo	.L1323
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,4	;3
	b.d	.L1299
	mov_s	r13,4	;3
	.align 4
.L1271:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2	;3
	mov_s	r12,4	;3
	b.d	.L1317
	mov_s	r13,4	;3
	.align 4
.L1272:
	blo	.L1324
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,8	;3
	b.d	.L1299
	mov_s	r13,8	;3
	.align 4
.L1273:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4	;3
	mov_s	r12,8	;3
	b.d	.L1317
	mov_s	r13,8	;3
	.align 4
.L1274:
	blo	.L1325
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,16	;3
	b.d	.L1299
	mov_s	r13,16	;3
	.align 4
.L1275:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8	;3
	mov_s	r12,16	;3
	b.d	.L1317
	mov_s	r13,16	;3
	.align 4
.L1276:
	blo	.L1326
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,32	;3
	b.d	.L1299
	mov_s	r13,32	;3
	.align 4
.L1277:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,16	;3
	mov_s	r12,32	;3
	b.d	.L1317
	mov_s	r13,32	;3
	.align 4
.L1278:
	blo	.L1327
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,64	;3
	b.d	.L1299
	mov_s	r13,64	;3
	.align 4
.L1279:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,32	;3
	mov_s	r12,64	;3
	b.d	.L1317
	mov_s	r13,64	;3
	.align 4
.L1280:
	blo	.L1328
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,128	;3
	b.d	.L1299
	mov_s	r13,128	;3
	.align 4
.L1281:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,64	;3
	mov_s	r12,128	;3
	b.d	.L1317
	mov_s	r13,128	;3
	.align 4
.L1283:
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,128	;3
	b.d	.L1317
	mov_s	r13,r12	;4
	.align 4
.L1285:
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,256	;6
	b.d	.L1317
	mov_s	r13,r12	;4
	.align 4
.L1322:
	mov_s	r12,2	;3
	.align 2
.L1316:
	lsr_s	r14,r12
	.align 2
.L1381:
	lsr_s	r1,r3
	b.d	.L1317
	mov_s	r13,0	;3
	.align 4
.L1287:
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,512	;6
	b.d	.L1317
	mov_s	r13,r12	;4
	.align 4
.L1289:
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,1024	;6
	b.d	.L1317
	mov_s	r13,r12	;4
	.align 4
.L1323:
	b.d	.L1316
	mov_s	r12,4	;3
	.align 4
.L1324:
	b.d	.L1316
	mov_s	r12,8	;3
	.align 4
.L1291:
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2048	;13
	b.d	.L1317
	mov_s	r13,r12	;4
	.align 4
.L1293:
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4096	;13
	b.d	.L1317
	mov_s	r13,r12	;4
	.align 4
.L1325:
	b.d	.L1316
	mov_s	r12,16	;3
	.align 4
.L1295:
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8192	;13
	b.d	.L1317
	mov_s	r13,r12	;4
	.align 4
.L1326:
	b.d	.L1316
	mov_s	r12,32	;3
	.align 4
.L1327:
	b.d	.L1316
	mov_s	r12,64	;3
	.align 4
.L1296:
	mov_s	r3,32768	;13
	btst_s	r0,15
	mov_s	r12,r3	;4
	mov_s.ne	r13,r3
	bne.d	.L1299
	sub_s.ne	r0,r0,r0
	b.d	.L1381
	lsr_s	r14,r12
	.align 4
.L1380:
	mov_s	r3,32768	;13
	mov_s	r1,16384	;13
	xor_s	r0,r0,r3
	mov_s	r14,r1	;4
	mov_s	r12,r3	;4
	b.d	.L1317
	mov_s	r13,r3	;4
	.align 4
.L1328:
	b.d	.L1316
	mov_s	r12,128	;3
	.align 4
.L1282:
	blo_s	.L1329
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	b.d	.L1299
	mov_s	r13,r12	;4
	.align 4
.L1329:
	b.d	.L1316
	mov	r12,256	;6
	.align 4
.L1286:
	blo_s	.L1331
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	b.d	.L1299
	mov_s	r13,r12	;4
	.align 4
.L1294:
	blo_s	.L1335
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	b.d	.L1299
	mov_s	r13,r12	;4
	.align 4
.L1331:
	b.d	.L1316
	mov	r12,1024	;6
	.align 4
.L1335:
	mov_s	r12,16384	;13
	b.d	.L1381
	lsr_s	r14,r12
	.align 4
.L1330:
	b.d	.L1316
	mov	r12,512	;6
	.align 4
.L1292:
	blo_s	.L1334
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	b.d	.L1299
	mov_s	r13,r12	;4
	.align 4
.L1290:
	blo_s	.L1333
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	b.d	.L1299
	mov_s	r13,r12	;4
	.align 4
.L1288:
	blo_s	.L1332
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	b.d	.L1299
	mov_s	r13,r12	;4
	.align 4
.L1334:
	mov_s	r12,8192	;13
	b.d	.L1381
	lsr_s	r14,r12
	.align 4
.L1333:
	mov_s	r12,4096	;13
	b.d	.L1381
	lsr_s	r14,r12
	.align 4
.L1332:
	mov_s	r12,2048	;13
	b.d	.L1381
	lsr_s	r14,r12
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1407
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1406	; lp_count:@.L1383->@.L1406
	.align 2
.L1383:
	brlt	r1,0,.L1384
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1385
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1406:
	; ZOL_END, begins @.L1383
	.align 2
.L1386:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1385:
	tst_s	r3,r3
	beq.d	.L1386
	mov.eq	r12,0
	.align 2
.L1384:
	mov_s	r12,0	;3
	.align 2
.L1389:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1389
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1401:
	cmp_s	r0,r1
	.align 4
.L1407:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1401
	lsr_s	r1,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1409
	asl	r1,r0,r2
	mov_s	r2,0	;3
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.align 4
.L1409:
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
	bbit0	r2,5,@.L1415
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1415:
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
	blt_s	.L1430
	bgt_s	.L1431
	cmp_s	r0,r2
	blo_s	.L1430
	bhi_s	.L1431
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1430:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1431:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1437
	bgt_s	.L1436
	brlo	r0,r2,.L1437
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1437:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1436:
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
	bbit0.d	r2,5,@.L1442
	mov_s	r3,r1	;4
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L1442:
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
	bbit0.d	r2,0,@.L1462
	mov_s	r16,0	;4
	.align 2
.L1464:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L1462:
	div	r13,r13,2
	breq_s	r13,0,.L1463
	.align 2
.L1465:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L1464
	b.d	.L1465
	div	r13,r13,2
	.align 4
.L1463:
	brge	r18,0,.L1461
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	.align 2
.L1461:
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
	bbit0.d	r1,0,@.L1470
	mov_s	r14,r1	;4
	.align 2
.L1472:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r13
	mov_s	r15,r0
	.align 2
.L1470:
	div	r14,r14,2
	breq_s	r14,0,.L1471
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1472
	mov_s	r13,r0
	div	r14,r14,2
	.align 2
.L1478:
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1472
	mov_s	r13,r0
	b.d	.L1478
	div	r14,r14,2
	.align 4
.L1471:
	brge	r16,0,.L1469
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	mov_s	r15,r0
	.align 2
.L1469:
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
	blo_s	.L1483
	bhi_s	.L1484
	cmp_s	r0,r2
	blo_s	.L1483
	bhi_s	.L1484
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1483:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1484:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1490
	bhi_s	.L1489
	brlo	r0,r2,.L1490
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1490:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1489:
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
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__mulsf3
	.global	__nesf2
	.global	__addsf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__lesf2
	.global	__ledf2
	.global	__gesf2
	.global	__ltsf2
	.global	__gedf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__subdf3
	.global	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
