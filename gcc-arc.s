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
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	mov_s	r12,r17	;4
	mov_s	r13,r15	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	breq	r12,r13,.L233
	tst_s	r12,r12
	mov.eq	r14,r0
	mov.eq	r15,r1
	vadd2	r0,r14,0
.L232:
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L233:
	bl	@__ltdf2;1
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
	push_s	r14
	push_s	r13
	mov_s	r2,r0	;4
	mov_s	r3,r1	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	mov_s	r14,r0
	breq.d	r2,r3,.L241
	mov_s	r13,r1
	tst_s	r2,r2
	mov.eq	r13,r0
	mov_s	r0,r13
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L241:
	bl	@__ltsf2;1
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
	push_s	r13
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	mov_s	r12,r17	;4
	mov_s	r13,r15	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	breq	r12,r13,.L249
	tst_s	r12,r12
	mov.eq	r14,r0
	mov.eq	r15,r1
	vadd2	r0,r14,0
.L248:
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L249:
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L248
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	mov_s	r12,r15	;4
	mov_s	r13,r17	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	breq	r12,r13,.L257
	tst_s	r12,r12
	mov.eq	r14,r2
	mov.eq	r15,r3
	vadd2	r0,r14,0
.L256:
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L257:
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L256
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r2,r0	;4
	mov_s	r3,r1	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	mov_s	r13,r0
	breq.d	r2,r3,.L265
	mov_s	r14,r1
	tst_s	r2,r2
	mov.eq	r13,r1
	mov_s	r0,r13
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L265:
	bl	@__ltsf2;1
	tst_s	r0,r0
	mov.p	r13,r14
	mov_s	r0,r13
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
	push_s	r13
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	mov_s	r12,r15	;4
	mov_s	r13,r17	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	breq	r12,r13,.L273
	tst_s	r12,r12
	mov.eq	r14,r2
	mov.eq	r15,r3
	vadd2	r0,r14,0
.L272:
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L273:
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L272
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L281
	.align 2
.L282:
	and	r3,r0,63
	lsr.f	r0,r0,6
	ldb	r3,[r3,@digits]
	bne.d	.L282
	stb.ab	r3,[r2,1]
	.align 2
.L281:
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
	breq_s	r1,0,.L297
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
.L297:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L299
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L299:
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
	breq.d	r16,0,.L309
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	b.d	.L311
	mov_s	r14,0	;3
	.align 4
.L324:
	breq.d	r16,r14,.L309
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L311:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl.d	[r18]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L324
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r19	;4
	.align 2
.L325:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L309:
	add	r2,r16,1 ;a,b,c/u6
	mpy	r16,r16,r15
	tst_s	r15,r15
	add	r19,r21,r16 ;a,b,c/u6
	st	r2,[r20]	;26
	mov_s.ne	r1,r17
	mov_s.ne	r2,r15
	mov_s.ne	r0,r19
	jlne	@memmove
	b.d	.L325
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
	breq	r19,0,.L327
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	b.d	.L329
	mov_s	r14,0	;3
	.align 4
.L338:
	breq.d	r19,r14,.L327
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L329:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl.d	[r16]
	mov_s	r18,r13	;4
	brne.d	r0,0,.L338
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L326:
	mov_s	r0,r18	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L327:
	b.d	.L326
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
.L342:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L342
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L342
	breq	r2,43,.L344
	breq	r2,45,.L345
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L353
	mov_s	r15,0	;3
	.align 2
.L347:
	mov_s	r0,0	;3
	.align 2
.L350:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L350
	brne_s	r15,0,.L341
	sub_s	r0,r14,r13
.L341:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L345:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	add_s	r12,r12,1   ;b,b,h
	bls.d	.L347
	mov.ls	r15,1
	.align 2
.L353:
	b.d	.L341
	mov_s	r0,0	;3
	.align 4
.L344:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L353
	add_s	r12,r12,1   ;b,b,h
	b.d	.L347
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L364:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L364
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L364
	breq	r2,43,.L366
	breq	r2,45,.L382
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L374
	mov_s	r15,0	;3
	.align 2
.L368:
	mov_s	r0,0	;3
	.align 2
.L371:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L371
	brne_s	r15,0,.L363
	sub_s	r0,r14,r13
.L363:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L382:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	mov_s	r12,r0	;4
	bls.d	.L368
	mov.ls	r15,1
	.align 2
.L374:
	b.d	.L363
	mov_s	r0,0	;3
	.align 4
.L366:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L374
	add_s	r12,r12,1   ;b,b,h
	b.d	.L368
	mov_s	r15,0	;3
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L384:
	mov_s	r14,r0	;4
	ldb.ab	r3,[r0,1]
	breq	r3,32,.L384
	sub	r2,r3,9 ;a,b,u6
	brls	r2,4,.L384
	breq	r3,43,.L386
	brne	r3,45,.L404
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r14,r14,1   ;b,b,h
	bhi.d	.L395
	mov.ls	r5,1
	.align 2
.L389:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L392:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	asr	r15,r2,31
	ldb.a	r3,[r14,1]
	mov_s	r4,r2	;4
	sub3	r2,r3,6 ;a,b,u6
	sbc	r1,r13,r15
	brls	r2,9,.L392
	brne	r5,0,.L383
	sub.f	r0,r4,r12
	sbc	r1,r15,r13
.L383:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L404:
	sub3	r2,r3,6 ;a,b,u6
	brhi	r2,9,.L395
	.align 2
.L396:
	b.d	.L389
	mov_s	r5,0	;4
	.align 4
.L386:
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	brls.d	r2,9,.L396
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L395:
	mov_s	r0,0	;3
	b.d	.L383
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
	beq_s	.L406
	mov_s	r19,r0	;4
	mov_s	r17,r1	;4
	mov_s	r16,r3	;4
	b.d	.L409
	mov_s	r18,r4	;4
	.align 4
.L416:
	beq_s	.L405
	sub_s	r13,r13,r15
	breq.d	r13,0,.L406
	add	r17,r14,r16 ;a,b,c/u6
	.align 2
.L409:
	lsr_s	r15,r13
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r19	;4
	jl.d	[r18]
	add_s	r13,r13,-1   ;h,h,s3
	tst_s	r0,r0
	bp	.L416
	mov_s	r13,r15	;4
	brne_s	r13,0,.L409
	.align 2
.L406:
	mov_s	r14,0	;3
	.align 2
.L405:
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
	beq.d	.L422
	mov_s	r18,r5	;4
	.align 2
.L418:
	asr_s	r15,r13,1
	mpy	r14,r15,r16
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r2,r18	;4
	mov_s	r1,r14	;4
	mov_s	r0,r20	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	breq_s	r0,0,.L417
	brle	r0,0,.L420
	asr.f	r13,r13,1
	bne.d	.L418
	add	r17,r14,r16 ;a,b,c/u6
	.align 2
.L422:
	mov_s	r14,0	;3
	.align 2
.L417:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.align 4
.L420:
	breq_s	r15,0,.L422
	b.d	.L418
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
	breq_s	r2,0,.L449
	.align 2
.L446:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L446
	.align 2
.L449:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L455
	b_s	.L454
	.align 4
.L456:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L454
	.align 2
.L455:
	brne_s	r2,0,.L456
	.align 2
.L454:
	brlt	r2,r3,.L458
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L458:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L461:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L461
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L469
	mov_s	r2,r0	;4
	.align 2
.L468:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L468
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L469:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L478
	push_s	r14
	push_s	r13
	mov	lp_count,r2	;5
	lp	@.L487	; lp_count:@.L474->@.L487
	.align 2
.L474:
	mov_s	r12,r1	;4
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld_s	r13,[r12]		;15
	brne.d	r3,r13,.L475
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L475
	nop_s
	.align 2
.L487:
	; ZOL_END, begins @.L474
	mov_s	r0,0	;3
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L475:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L478:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L495
	mov_s.ne	r3,r0
	.align 2
.L500:
	mov	lp_count,r2	;5
	lp	@.L499	; lp_count:@.L490->@.L499
	.align 2
.L490:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L499:
	; ZOL_END, begins @.L490
	.align 2
.L495:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L510
	.align 2
.L517:
	mov	lp_count,r2	;5
	lp	@.L516	; lp_count:@.L503->@.L516
	.align 2
.L503:
	ld_s	r12,[r1]		;15
	add_s	r0,r0,4   ;b,b,h
	ld	r3,[r0,-4]	;23
	cmp_s	r3,r12
	bne.d	.L514
	add_s	r1,r1,4   ;b,b,h
	nop_s
	.align 2
.L516:
	; ZOL_END, begins @.L503
	.align 2
.L510:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L514:
	blt_s	.L515
	j_s.d	[blink]
	setgt	r0,r3,r12
	.align 4
.L515:
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
	brlo	r12,r3,.L526
	tst_s	r2,r2
	jeq_s	[blink]
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r2,1 ;a,b,u6
	brls.d	r3,23,.L530
	add_s	r12,r1,4   ;a,b,c/u3
	add_s	r13,r1,4   ;a,b,c/u3
	breq.d	r13,r0,.L530
	mov_s	r12,r13	;4
	bbit0.d	r0,2,@.L537
	xbfu	r12,r0,2
	mov_s	r4,r0	;4
	ld_s	r3,[r1]		;15
	st.ab	r3,[r4,4]	;26
	.align 2
.L531:
	sub_s	r2,r2,r12
	add2	r3,-8,r12
	add_s	r1,r1,r3   ;b,b,h
	add2	r12,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L555	; lp_count:@.L532->@.L555
	.align 2
.L532:
	ldd.a	r14,[r1,8]
	std.ab	r14,[r12,8]
	.align 2
.L555:
	; ZOL_END, begins @.L532
	bbit0	r2,0,@.L539
	bclr_s	r2,r2,0
	add2_s	r13,r13,r2
	add2	r2,r4,r2
	ld_s	r3,[r13]		;15
	st_s	r3,[r2]		;16
.L539:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L526:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	add_s	r1,r1,r3   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L554	; lp_count:@.L529->@.L554
	.align 2
.L529:
	ld.a	r12,[r1,-4]	;23
	st.a	r12,[r3,-4]	;26
	.align 2
.L554:
	; ZOL_END, begins @.L529
	j_s	[blink]
	.align 4
.L537:
	mov_s	r13,r1	;4
	b.d	.L531
	mov_s	r4,r0	;4
	.align 4
.L530:
	b.d	.L535
	sub2	r2,r0,1 ;a,b,u6
	.align 4
.L553:
	add_s	r12,r12,4   ;b,b,h
	.align 2
.L535:
	ld	r13,[r12,-4]	;23
	add_s	r3,r3,-1   ;h,h,s3
	st.a	r13,[r2,4]	;26
	brne	r3,-1,.L553
	b_s	.L539
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
	brls.d	r13,5,.L562
	xbfu	r12,r0,2
	bbit0.d	r3,0,@.L559
	mov_s	r4,r0	;4
	sub1	r13,r2,1 ;a,b,u6
	st.ab	r1,[r4,4]	;26
	.align 2
.L559:
	sub_s	r2,r2,r12
	mov_s	r15,r1	;4
	mov_s	r14,r1	;4
	add2	r12,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L588	; lp_count:@.L560->@.L588
	.align 2
.L560:
	std.ab	r14,[r12,8]
	.align 2
.L588:
	; ZOL_END, begins @.L560
	bbit0	r2,0,@.L557
	bclr_s	r2,r2,0
	sub_s	r13,r13,r2
	add2	r2,r4,r2
	.align 2
.L558:
	breq.d	r13,0,.L557
	st_s	r1,[r2]		;16
	breq.d	r13,1,.L557
	st_s	r1,[r2,4]		;16
	breq.d	r13,2,.L557
	st_s	r1,[r2,8]		;16
	breq.d	r13,3,.L557
	st_s	r1,[r2,12]		;16
	breq.d	r13,4,.L557
	st_s	r1,[r2,16]		;16
	st_s	r1,[r2,20]		;16
.L557:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L562:
	b.d	.L558
	mov_s	r2,r0	;4
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L590
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L630	; lp_count:@.L592->@.L630
	.align 2
.L592:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L630:
	; ZOL_END, begins @.L592
	j_s	[blink]
	.align 4
.L590:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L627
	push_s	r14
	push_s	r13
	or	r12,r1,r0
	add_s	r3,r0,1   ;a,b,c/u3
	bmsk_s	r12,r12,1
	sub_s	r13,r1,r3
	seteq	r12,r12,0
	seths	r13,r13,3
	tst_s	r12,r13
	beq_s	.L593
	bmskn	r14,r2,1
	sub2	r3,r14,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L629	; lp_count:@.L594->@.L629
	.align 2
.L594:
	ld.a	r13,[r12,4]	;23
	st.ab	r13,[r1,4]	;26
	.align 2
.L629:
	; ZOL_END, begins @.L594
	add_s	r0,r0,r14   ;b,b,h
	breq.d	r2,r14,.L589
	sub_s	r3,r2,r14
	ldb_s	r2,[r0]
	breq.d	r3,1,.L589
	stb_s	r2,[r1]
	ldb_s	r2,[r0,1]
	breq.d	r3,2,.L589
	stb_s	r2,[r1,1]
	ldb_s	r2,[r0,2]
	stb_s	r2,[r1,2]
	.align 2
.L589:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L593:
	add_s	r1,r1,-1   ;h,h,s3
	b.d	.L597
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L628:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L597:
	ldb	r2,[r3,-1]
	brne.d	r3,r0,.L628
	stb.a	r2,[r1,1]
	b_s	.L589
	.align 4
.L627:
	add_s	r3,r0,1   ;a,b,c/u3
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L624:
	ldb	r2,[r3,-1]
	cmp_s	r3,r0
	jeq.d	[blink]
	stb.a	r2,[r1,1]
	b.d	.L624
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
	lp	@.L665	; lp_count:@.L660->@.L665
	.align 2
.L660:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L664
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L665:
	; ZOL_END, begins @.L660
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L664:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L669
	bbit1.d	r2,0,@.L673
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L668:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L668
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L673:
	j_s	[blink]
	.align 4
.L669:
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
	breq_s	r0,0,.L683
	tst_s	r14,r14
	mov_s	r13,0x3f000000 ; 5.0e-1
	mov.p	r13,0x40000000 ; 2.0e+0
	bbit0	r14,0,@.L686
	.align 2
.L687:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r13
	mov_s	r15,r0
	.align 2
.L686:
	div	r14,r14,2
	breq_s	r14,0,.L683
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L687
	mov_s	r13,r0
	div	r14,r14,2
	.align 2
.L696:
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L687
	mov_s	r13,r0
	b.d	.L696
	div	r14,r14,2
	.align 4
.L683:
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
	breq_s	r0,0,.L698
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L701
	.align 2
.L702:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L701:
	div	r13,r13,2
	breq_s	r13,0,.L698
	.align 2
.L703:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L702
	b.d	.L703
	div	r13,r13,2
	.align 4
.L698:
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
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L711
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L714
	.align 2
.L715:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L714:
	div	r13,r13,2
	breq_s	r13,0,.L711
	.align 2
.L716:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L715
	b.d	.L716
	div	r13,r13,2
	.align 4
.L711:
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
	brls	r3,3,.L725
	or	r3,r0,r1
	tst	r3,3
	bne_s	.L725
	bmskn	r4,r2,1
	sub2	r12,r4,1 ;a,b,u6
	sub2	r14,r1,1 ;a,b,u6
	add	r5,r0,r4 ;a,b,c/u6
	mov_s	r13,r0	;4
	lsr_s	r12,r12,2
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L748	; lp_count:@.L726->@.L748
	.align 2
.L726:
	ld_s	r15,[r13]		;15
	ld.a	r3,[r14,4]	;23
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	.align 2
.L748:
	; ZOL_END, begins @.L726
	add_s	r1,r1,r4   ;b,b,h
	breq.d	r4,r2,.L724
	sub	r3,r2,r4
	ldb	r2,[r5]
	ldb_s	r12,[r1]
	xor_s	r2,r2,r12
	breq.d	r3,1,.L724
	stb	r2,[r5]
	ldb	r12,[r5,1]
	ldb_s	r2,[r1,1]
	xor_s	r2,r2,r12
	breq.d	r3,2,.L724
	stb	r2,[r5,1]
	ldb	r3,[r5,2]
	ldb_s	r2,[r1,2]
	xor_s	r2,r2,r3
	stb	r2,[r5,2]
.L724:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L725:
	mov_s	r12,r0	;4
	mov	lp_count,r2	;5
	lp	@.L747	; lp_count:@.L728->@.L747
	.align 2
.L728:
	ldb.ab	r13,[r12,1]
	ldb.ab	r3,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L747:
	; ZOL_END, begins @.L728
	b_s	.L724
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	tst_s	r3,r3
	beq.d	.L750
	mov_s	r3,r0	;4
	.align 2
.L751:
	ldb.a	r12,[r3,1]
	brne_s	r12,0,.L751
	.align 2
.L750:
	breq_s	r2,0,.L752
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L765	; lp_count:@.L753->@.L765
	.align 2
.L753:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r3,1]
	nop_s
	.align 2
.L765:
	; ZOL_END, begins @.L753
	.align 2
.L752:
	stb	0,[r3]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L770
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L775	; lp_count:@.L768->@.L775
	.align 2
.L768:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L775:
	; ZOL_END, begins @.L768
	j_s	[blink]
	.align 4
.L770:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L783
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L777:
	b.d	.L780
	mov_s	r3,r13	;4
	.align 4
.L779:
	breq	r2,r12,.L778
	.align 2
.L780:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L779
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L777
	mov_s	r0,0	;3
.L778:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L783:
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
.L790:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r1,r3
	mov.ne	r12,r0
	brne.d	r3,0,.L790
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
	breq.d	r14,0,.L807
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L797:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L797
	sub.f	r2,r2,r1
	beq_s	.L807
	b.d	.L805
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L815:
	breq_s	r2,0,.L814
	.align 2
.L805:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r2,r14,.L815
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L799
	mov_s	r12,r0	;4
	.align 4
.L817:
	breq	r12,r15,.L801
	brne	r3,r2,.L802
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L816
	ldb.a	r3,[r13,1]
	.align 2
.L799:
	brne_s	r3,0,.L817
	.align 2
.L802:
	b.d	.L805
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L814:
	mov_s	r0,0	;3
.L795:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L816:
	ldb_s	r3,[r13,1]
	.align 2
.L801:
	breq	r2,r3,.L795
	b.d	.L805
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L807:
	b.d	.L795
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
	brlt	r0,0,.L829
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L822
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L821
	.align 2
.L822:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L829:
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L822
	.align 2
.L821:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L822
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq_s	[blink]
	brlo	r1,r3,.L839
	sub_s	r1,r1,r3
	add.f	r5,r0,r1
	blo	.L839
	std.a	r14,[sp,-8]
	push_s	r13
	b.d	.L836
	ldb	r6,[r2]
	.align 4
.L832:
	brlo	r5,r0,.L841
	.align 2
.L836:
	mov_s	r13,r0	;4
	ldb.ab	r12,[r13,1]
	cmp_s	r12,r6
	bne.d	.L832
	mov_s.ne	r0,r13
	breq	r3,1,.L830
	.align 2
.L835:
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r12,r3,1 ;a,b,u6
	mov	lp_count,r12	;5
	lp	@.L856	; lp_count:@.L833->@.L856
	.align 2
.L833:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L855
	nop_s
	.align 2
.L856:
	; ZOL_END, begins @.L833
.L830:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L855:
	brlo	r5,r13,.L841
	mov_s	r0,r13	;4
	ldb.ab	r12,[r0,1]
	brne	r6,r12,.L832
	mov_s	r12,r13	;4
	mov_s	r13,r0	;4
	b.d	.L835
	mov_s	r0,r12	;4
	.align 4
.L841:
	b.d	.L830
	mov_s	r0,0	;3
	.align 4
.L839:
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
	bn	.L886
	vadd2	r0,r14,0
	mov_s	r3,1072693248	;13
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn.d	.L887
	mov.p	r23,0
	.align 2
.L866:
	mov_s	r13,0	;3
	mov_s	r20,0	;4
	mov_s	r21,1071644672	;13
	mov_s	r18,0	;4
	mov_s	r19,1073741824	;13
	.align 2
.L872:
	vadd2	r16,r14,0
	vadd2	r2,r20,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r2,r18,0
	vadd2	r14,r0,0
	vadd2	r0,r16,0
	bl	@__gedf2;1
	brge	r0,0,.L872
	st	r13,[r22]	;26
	mov_s	r0,r14	;4
	breq.d	r23,0,.L888
	bxor	r1,r15,31
.L863:
	ld	blink,[sp,44]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,8]
	ldd.ab	r22,[sp,12]
	j_s	[blink]
	.align 4
.L888:
	vadd2	r0,r14,0
	b_s	.L863
	.align 4
.L887:
	vadd2	r0,r14,0
	mov_s	r3,1071644672	;13
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L869
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	brne	r0,0,.L878
	.align 2
.L869:
	vadd2	r0,r14,0
	st	0,[r22]	;37
	b_s	.L863
	.align 4
.L886:
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,-1074790400	;13
	bl.d	@__ledf2;1
	mov_s	r16,r14	;4
	brgt.d	r0,0,.L889
	bxor	r17,r15,31
	vadd2	r14,r16,0
	b.d	.L866
	mov_s	r23,1	;4
	.align 4
.L889:
	vadd2	r0,r14,0
	mov_s	r3,-1075838976	;13
	bl.d	@__gtdf2;1
	mov_s	r2,0	;3
	brle	r0,0,.L869
	mov_s	r23,1	;4
	.align 2
.L867:
	vadd2	r14,r16,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1070596096	;13
	.align 2
.L874:
	vadd2	r2,r14,0
	vadd2	r18,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	vadd2	r0,r18,0
	bl	@__ltdf2;1
	brlt	r0,0,.L874
	st	r13,[r22]	;26
	mov_s	r0,r14	;4
	tst	r23,r23
	bne.d	.L863
	bxor	r1,r15,31
	b_s	.L888
	.align 4
.L878:
	vadd2	r16,r14,0
	b.d	.L867
	mov_s	r23,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	or.f	0,r0,r1
	beq.d	.L894
	mov_s	r14,r1	;4
	mov_s	r13,r0	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L893:
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
	bne_s	.L893
.L890:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L894:
	mov_s	r0,0	;3
	b.d	.L890
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp_s	r1,r0
	mov.hs	r3,1
	bhs.d	.L916
	mov.hs	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L921	; lp_count:@.L898->@.L921
	.align 2
.L898:
	brlt	r1,0,.L899
	asl_s	r1,r1,1
	brls.d	r0,r1,.L900
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L921:
	; ZOL_END, begins @.L898
	.align 2
.L901:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L900:
	tst_s	r3,r3
	beq.d	.L901
	mov.eq	r12,0
	.align 2
.L899:
	mov_s	r12,0	;3
	.align 2
.L904:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L904
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L916:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L916
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
	beq_s	.L924
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L924:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L935
	xor	r12,r1,r3
	.align 2
.L932:
	fls	r0,r2
	brne.d	r12,0,.L936
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L936:
	fls	r12,r12
	rsub	r0,r12,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L935:
	brne	r1,r0,.L932
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
.L939:
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
	bne.d	.L939
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L949
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L981
	.align 2
.L949:
	tst_s	r3,r3
	beq_s	.L982
	std.a	r14,[sp,-8]
	push_s	r13
	add3	r3,-8,r3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L987	; lp_count:@.L952->@.L987
	.align 2
.L952:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L987:
	; ZOL_END, begins @.L952
	brls	r2,r4,.L945
	sub	r15,r2,r4
	sub	r3,r15,1 ;a,b,u6
	brls	r3,6,.L954
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
	beq_s	.L954
	bmskn	r5,r15,1
	sub2	r3,r5,1 ;a,b,u6
	sub2	r12,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L986	; lp_count:@.L955->@.L986
	.align 2
.L955:
	ld.a	r14,[r12,4]	;23
	st.ab	r14,[r13,4]	;26
	.align 2
.L986:
	; ZOL_END, begins @.L955
	breq.d	r15,r5,.L945
	add	r4,r4,r5   ;(p)b,b,c/u6
	add	r13,r1,r4 ;a,b,c/u6
	add	r12,r0,r4 ;a,b,c/u6
	add	r3,r4,1 ;a,b,c/u6
	ldb_s	r13,[r13]
	brls.d	r2,r3,.L945
	stb_s	r13,[r12]
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	add_s	r4,r4,2   ;h,h,s3
	cmp_s	r2,r4
	ldb_s	r2,[r12]
	bls.d	.L945
	stb_s	r2,[r3]
	add_s	r1,r1,r4   ;b,b,h
	add	r4,r4,r0   ;(p)b,b,c/u6
	ldb_s	r2,[r1]
	stb	r2,[r4]
	.align 2
.L945:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L981:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L985	; lp_count:@.L959->@.L985
	.align 2
.L959:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L985:
	; ZOL_END, begins @.L959
	j_s	[blink]
	.align 4
.L954:
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L984	; lp_count:@.L957->@.L984
	.align 2
.L957:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r4,1]
	.align 2
.L984:
	; ZOL_END, begins @.L957
	b_s	.L945
	.align 4
.L982:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L983	; lp_count:@.L976->@.L983
	.align 2
.L976:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r4,1]
	.align 2
.L983:
	; ZOL_END, begins @.L976
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	brlo.d	r0,r1,.L992
	lsr	r4,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	cmp_s	r3,r0
	bhs	.L1019
	.align 2
.L992:
	tst	r4,r4
	beq_s	.L1020
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r4,1 ;a,b,u6
	cmp_s	r3,11
	bls	.L995
	add_s	r3,r1,2   ;a,b,c/u3
	sub_s	r3,r0,r3
	cmp	r3,4
	bls	.L995 ;brls out of range
	lsr_s	r3,r0
	neg_s	r3,r3
	tst	r3,3
	and	r12,r3,3
	beq.d	.L996
	mov.eq	r6,0
	ldh_s.x	r13,[r1]
	bbit0.d	r3,1,@.L1005
	sth_s	r13,[r0]
	ldh_s.x	r3,[r1,2]
	cmp_s	r12,3
	sth_s	r3,[r0,2]
	bne.d	.L996
	mov.ne	r6,2
	mov_s	r6,3	;4
	ldh_s.x	r3,[r1,4]
	sth_s	r3,[r0,4]
	.align 2
.L996:
	sub	r5,r4,r12
	add1	r13,-8,r12
	add_s	r13,r13,r1   ;b,b,h
	add1	r12,r0,r12
	lsr	r3,r5,2
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1024	; lp_count:@.L998->@.L1024
	.align 2
.L998:
	ldd.a	r14,[r13,8]
	std.ab	r14,[r12,8]
	.align 2
.L1024:
	; ZOL_END, begins @.L998
	bmskn	r3,r5,1
	tst	r5,3
	beq.d	.L991
	add_s	r3,r3,r6   ;b,b,h
	add1	r14,r0,r3
	ldh.x.as	r15,[r1,r3]
	add_s	r13,r3,1   ;a,b,c/u3
	asl_s	r12,r3,1
	brls.d	r4,r13,.L991
	sth_s	r15,[r14]
	mov_s	r13,r12	;4
	add_s	r14,r1,r12   ;a,b,c/u3
	add_s	r13,r13,r0   ;b,b,h
	add_s	r3,r3,2   ;b,b,h
	cmp	r4,r3
	ldh_s.x	r3,[r14,2]
	bls.d	.L991
	sth_s	r3,[r13,2]
	add_s	r3,r1,r12   ;a,b,c/u3
	add_s	r12,r12,r0   ;b,b,h
	ldh_s.x	r3,[r3,4]
	sth_s	r3,[r12,4]
	.align 2
.L991:
	bbit0	r2,0,@.L988
	add_s	r1,r1,r2   ;b,b,h
	.align 2
.L1025:
	add_s	r2,r2,r0   ;b,b,h
	ldb	r3,[r1,-1]
	stb	r3,[r2,-1]
	.align 2
.L988:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1019:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r3,r1
	mov	lp_count,r1	;5
	lp	@.L1023	; lp_count:@.L1003->@.L1023
	.align 2
.L1003:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1023:
	; ZOL_END, begins @.L1003
	j_s	[blink]
	.align 4
.L1005:
	b.d	.L996
	mov_s	r6,1	;4
	.align 4
.L995:
	add1	r3,-2,r4
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1022	; lp_count:@.L1000->@.L1022
	.align 2
.L1000:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L1022:
	; ZOL_END, begins @.L1000
	bbit0	r2,0,@.L988
	b.d	.L1025
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L1020:
	bbit0	r2,0,@.L1026
	add_s	r1,r1,r2   ;b,b,h
	add_s	r2,r2,r0   ;b,b,h
	ldb	r3,[r1,-1]
	stb	r3,[r2,-1]
	.align 2
.L1026:
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	brlo.d	r0,r1,.L1033
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1061
	.align 2
.L1033:
	tst_s	r3,r3
	beq_s	.L1062
	sub	r12,r3,1 ;a,b,u6
	cmp_s	r12,23
	bls	.L1035
	add_s	r12,r1,4   ;a,b,c/u3
	cmp_s	r0,r12
	beq_s	.L1035
	xbfu	r12,r0,2
	bbit0.d	r0,2,@.L1036
	mov_s	r6,0	;4
	mov_s	r6,r12	;4
	ld_s	r13,[r1]		;15
	st_s	r13,[r0]		;16
	.align 2
.L1036:
	sub_s	r13,r3,r12
	add2	r14,-8,r12
	add_s	r14,r14,r1   ;b,b,h
	add2	r12,r0,r12
	lsr_s	r3,r13
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1068	; lp_count:@.L1037->@.L1068
	.align 2
.L1037:
	ldd.a	r4,[r14,8]
	std.ab	r4,[r12,8]
	.align 2
.L1068:
	; ZOL_END, begins @.L1037
	bbit0	r13,0,@.L1040
	bmskn	r3,r13,0
	add_s	r3,r3,r6   ;b,b,h
	add2	r12,r1,r3
	add2	r3,r0,r3
	ld_s	r12,[r12]		;15
	st_s	r12,[r3]		;16
	.align 2
.L1040:
	brls	r2,r15,.L1028
	sub	r4,r2,r15
	sub	r3,r4,1 ;a,b,u6
	brls	r3,6,.L1031
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
	beq_s	.L1031
	bmskn	r5,r4,1
	sub2	r3,r5,1 ;a,b,u6
	sub2	r12,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1067	; lp_count:@.L1041->@.L1067
	.align 2
.L1041:
	ld.a	r14,[r12,4]	;23
	st.ab	r14,[r13,4]	;26
	.align 2
.L1067:
	; ZOL_END, begins @.L1041
	breq.d	r5,r4,.L1028
	add_s	r15,r15,r5   ;b,b,h
	add_s	r13,r1,r15   ;a,b,c/u3
	add_s	r12,r0,r15   ;a,b,c/u3
	add_s	r3,r15,1   ;a,b,c/u3
	ldb_s	r13,[r13]
	brls.d	r2,r3,.L1028
	stb_s	r13,[r12]
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	add_s	r15,r15,2   ;b,b,h
	cmp_s	r2,r15
	ldb_s	r2,[r12]
	bls.d	.L1028
	stb_s	r2,[r3]
	add_s	r1,r1,r15   ;b,b,h
	add_s	r15,r15,r0   ;b,b,h
	ldb_s	r2,[r1]
	stb_s	r2,[r15]
	.align 2
.L1028:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1061:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r2,r2,r0
	beq.d	.L1028
	rsub.ne	r1,r1,r3
	.align 2
.L1066:
	mov	lp_count,r1	;5
	lp	@.L1065	; lp_count:@.L1045->@.L1065
	.align 2
.L1045:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1065:
	; ZOL_END, begins @.L1045
	b_s	.L1028
	.align 4
.L1035:
	add2	r3,-4,r3
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1064	; lp_count:@.L1039->@.L1064
	.align 2
.L1039:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L1064:
	; ZOL_END, begins @.L1039
	b_s	.L1040
	.align 4
.L1062:
	breq_s	r2,0,.L1028
	.align 2
.L1031:
	add_s	r15,r15,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	sub_s	r2,r2,r1
	add_s	r15,r15,r0   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L1063	; lp_count:@.L1043->@.L1063
	.align 2
.L1043:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r15,1]
	.align 2
.L1063:
	; ZOL_END, begins @.L1043
	b_s	.L1028
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
	bbit1	r0,15,@.L1084
	exth_s	r2,r0
	asr.f	r0,r2,14
	jne_s	[blink]
	lsr.f	0,r2,13
	bne_s	.L1085
	lsr.f	0,r2,12
	bne_s	.L1086
	lsr.f	0,r2,11
	bne_s	.L1087
	lsr.f	0,r2,10
	bne_s	.L1088
	lsr.f	0,r2,9
	bne_s	.L1089
	lsr.f	0,r2,8
	bne_s	.L1090
	lsr.f	0,r2,7
	bne_s	.L1091
	lsr.f	0,r2,6
	bne_s	.L1092
	lsr.f	0,r2,5
	bne_s	.L1093
	lsr.f	0,r2,4
	bne_s	.L1094
	lsr.f	0,r2,3
	bne_s	.L1095
	lsr.f	0,r2,2
	bne_s	.L1096
	lsr.f	0,r2,1
	bne_s	.L1097
	tst_s	r2,r2
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1084:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1095:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1085:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1086:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1087:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1088:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1089:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1090:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1091:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1092:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1093:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1094:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1096:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1097:
	j_s.d	[blink]
	mov_s	r0,14	;3
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	bbit1	r0,0,@.L1103
	exth_s	r2,r0
	bbit1	r2,1,@.L1104
	bbit1	r2,2,@.L1105
	bbit1	r2,3,@.L1106
	bbit1	r2,4,@.L1107
	bbit1	r2,5,@.L1108
	bbit1	r2,6,@.L1109
	bbit1	r2,7,@.L1110
	bbit1	r2,8,@.L1111
	bbit1	r2,9,@.L1112
	bbit1	r2,10,@.L1113
	bbit1	r2,11,@.L1114
	bbit1	r2,12,@.L1115
	bbit1	r2,13,@.L1116
	bbit1	r2,14,@.L1117
	lsr.f	0,r2,15
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1103:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1104:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1115:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1105:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1106:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1107:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1108:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1109:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1110:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1111:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1112:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1113:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1114:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1116:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1117:
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
	brge	r0,0,.L1127
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L1127:
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
.L1134:
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
	bne.d	.L1134
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
.L1142:
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
	bne.d	.L1142
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1174
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1173	; lp_count:@.L1150->@.L1173
	.align 2
.L1150:
	brlt	r1,0,.L1151
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1152
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1173:
	; ZOL_END, begins @.L1150
	.align 2
.L1153:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1152:
	tst_s	r3,r3
	beq.d	.L1153
	mov.eq	r12,0
	.align 2
.L1151:
	mov_s	r12,0	;3
	.align 2
.L1156:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1156
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1168:
	cmp_s	r0,r1
	.align 4
.L1174:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1168
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
	bn	.L1175
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L1175:
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
	bn	.L1180
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1180:
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
	bn.d	.L1191
	mov.n	r13,1
	beq.d	.L1189
	mov.eq	r0,0
	mov_s	r13,0	;3
	.align 2
.L1191:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1205	; lp_count:@.L1194->@.L1205
	.align 2
.L1194:
	and	r2,r1,1
	asr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	beq.d	.L1193
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1205:
	; ZOL_END, begins @.L1194
	.align 2
.L1193:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1189:
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
	bls.d	.L1210
	mov.hi	r3,32
	.align 2
.L1227:
	mov	lp_count,r3	;5
	lp	@.L1226	; lp_count:@.L1209->@.L1226
	.align 2
.L1209:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1213
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1226:
	; ZOL_END, begins @.L1209
	.align 2
.L1213:
	tst_s	r2,r2
	beq.d	.L1211
	mov.eq	r0,0
	.align 2
.L1210:
	mov_s	r0,0	;3
	.align 2
.L1215:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r2
	lsr.f	r2,r2,1
	bne.d	.L1215
	lsr_s	r1,r1
	.align 2
.L1211:
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
	bls.d	.L1236
	mov.hi	r3,32
	.align 2
.L1248:
	mov	lp_count,r3	;5
	lp	@.L1247	; lp_count:@.L1230->@.L1247
	.align 2
.L1230:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1234
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1247:
	; ZOL_END, begins @.L1230
	.align 2
.L1234:
	tst_s	r2,r2
	beq.d	.L1232
	mov.eq	r0,r12
	.align 2
.L1236:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	lsr.f	r2,r2,1
	bne.d	.L1236
	lsr_s	r1,r1
	.align 2
.L1232:
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
	bhs	.L1364
	btst_s	r1,15
	bne	.L1252
	asl_s	r3,r1,1
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1253
	btst_s	r3,15
	bne	.L1254
	asl_s	r3,r1,2
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1255
	btst_s	r3,15
	bne	.L1256
	asl_s	r3,r1,3
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1257
	btst_s	r3,15
	bne	.L1258
	asl_s	r3,r1,4
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1259
	btst_s	r3,15
	bne	.L1260
	asl_s	r3,r1,5
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1261
	btst_s	r3,15
	bne	.L1262
	asl_s	r3,r1,6
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1263
	btst_s	r3,15
	bne	.L1264
	asl_s	r3,r1,7
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1265
	btst_s	r3,15
	bne	.L1266
	asl	r3,r1,8
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1267
	btst_s	r3,15
	bne	.L1268
	asl	r3,r1,9
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1269
	btst_s	r3,15
	bne	.L1270
	asl	r3,r1,10
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1271
	btst_s	r3,15
	bne	.L1272
	asl	r3,r1,11
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1273
	btst_s	r3,15
	bne	.L1274
	asl	r3,r1,12
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1275
	btst_s	r3,15
	bne	.L1276
	asl	r3,r1,13
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1277
	btst_s	r3,15
	bne	.L1278
	asl	r3,r1,14
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1279
	btst_s	r3,15
	bne	.L1280
	asl_s	r1,r1,15
	exth_s	r13,r1
	cmp_s	r0,r13
	bls	.L1281
	tst_s	r13,r13
	bne	.L1365
	.align 2
.L1282:
	tst_s	r2,r2
	mov.ne	r13,r0
	mov_s	r0,r13	;4
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1269:
	blo	.L1315
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	mov_s	r13,r12	;4
	.align 2
.L1284:
	lsr.f	r15,r12,2
	beq.d	.L1282
	lsr	r14,r3,2
	brhi	r14,r0,.L1285
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1285:
	lsr.f	r15,r12,3
	beq.d	.L1282
	lsr	r14,r3,3
	brlo	r0,r14,.L1286
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1286:
	lsr.f	r15,r12,4
	beq.d	.L1282
	lsr	r14,r3,4
	brlo	r0,r14,.L1287
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1287:
	lsr.f	r15,r12,5
	beq.d	.L1282
	lsr	r14,r3,5
	brlo	r0,r14,.L1288
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1288:
	lsr.f	r15,r12,6
	beq.d	.L1282
	lsr	r14,r3,6
	brlo	r0,r14,.L1289
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1289:
	lsr.f	r15,r12,7
	beq.d	.L1282
	lsr	r14,r3,7
	brlo	r0,r14,.L1290
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1290:
	lsr.f	r15,r12,8
	beq.d	.L1282
	lsr	r14,r3,8
	brlo	r0,r14,.L1291
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1291:
	lsr.f	r15,r12,9
	beq.d	.L1282
	lsr	r14,r3,9
	brlo	r0,r14,.L1292
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1292:
	lsr.f	r15,r12,10
	beq.d	.L1282
	lsr	r14,r3,10
	brlo	r0,r14,.L1293
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1293:
	lsr.f	r15,r12,11
	beq.d	.L1282
	lsr	r14,r3,11
	brlo	r0,r14,.L1294
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1294:
	lsr.f	r15,r12,12
	beq.d	.L1282
	lsr	r14,r3,12
	brlo	r0,r14,.L1295
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1295:
	lsr.f	r15,r12,13
	beq.d	.L1282
	lsr	r14,r3,13
	brlo	r0,r14,.L1296
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1296:
	lsr.f	r15,r12,14
	beq.d	.L1282
	lsr	r14,r3,14
	brlo	r0,r14,.L1297
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1297:
	bxor.f	0,r12,14
	beq.d	.L1282
	lsr_s	r3,r3,15
	cmp_s	r0,r3
	blo.d	.L1282
	mov.lo	r0,0
	sub_s	r3,r0,r3
	exth_s	r0,r3
	b.d	.L1282
	bset_s	r13,r13,0
	.align 4
.L1364:
	bne.d	.L1282
	sub_s.ne	r13,r13,r13
	mov_s	r13,1	;3
	b.d	.L1282
	mov_s	r0,0	;3
	.align 4
.L1252:
	sub_s	r0,r0,r1
	exth_s	r0,r0
	b.d	.L1282
	mov_s	r13,1	;3
	.align 4
.L1253:
	blo	.L1307
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,2	;3
	b.d	.L1284
	mov_s	r13,2	;3
	.align 4
.L1254:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	bmsk_s	r1,r1,14
	mov_s	r14,1	;3
	mov_s	r12,2	;3
	mov_s	r13,2	;3
	.align 2
.L1302:
	cmp_s	r0,r1
	blo	.L1284
	sub_s	r1,r0,r1
	exth_s	r0,r1
	b.d	.L1284
	or_s	r13,r13,r14
	.align 4
.L1255:
	blo	.L1308
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,4	;3
	b.d	.L1284
	mov_s	r13,4	;3
	.align 4
.L1256:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2	;3
	mov_s	r12,4	;3
	b.d	.L1302
	mov_s	r13,4	;3
	.align 4
.L1257:
	blo	.L1309
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,8	;3
	b.d	.L1284
	mov_s	r13,8	;3
	.align 4
.L1258:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4	;3
	mov_s	r12,8	;3
	b.d	.L1302
	mov_s	r13,8	;3
	.align 4
.L1259:
	blo	.L1310
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,16	;3
	b.d	.L1284
	mov_s	r13,16	;3
	.align 4
.L1260:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8	;3
	mov_s	r12,16	;3
	b.d	.L1302
	mov_s	r13,16	;3
	.align 4
.L1261:
	blo	.L1311
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,32	;3
	b.d	.L1284
	mov_s	r13,32	;3
	.align 4
.L1262:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,16	;3
	mov_s	r12,32	;3
	b.d	.L1302
	mov_s	r13,32	;3
	.align 4
.L1263:
	blo	.L1312
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,64	;3
	b.d	.L1284
	mov_s	r13,64	;3
	.align 4
.L1264:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,32	;3
	mov_s	r12,64	;3
	b.d	.L1302
	mov_s	r13,64	;3
	.align 4
.L1265:
	blo	.L1313
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,128	;3
	b.d	.L1284
	mov_s	r13,128	;3
	.align 4
.L1266:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,64	;3
	mov_s	r12,128	;3
	b.d	.L1302
	mov_s	r13,128	;3
	.align 4
.L1268:
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,128	;3
	b.d	.L1302
	mov_s	r13,r12	;4
	.align 4
.L1270:
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,256	;6
	b.d	.L1302
	mov_s	r13,r12	;4
	.align 4
.L1307:
	mov_s	r12,2	;3
	.align 2
.L1301:
	lsr_s	r14,r12
	.align 2
.L1366:
	lsr_s	r1,r3
	b.d	.L1302
	mov_s	r13,0	;3
	.align 4
.L1272:
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,512	;6
	b.d	.L1302
	mov_s	r13,r12	;4
	.align 4
.L1274:
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,1024	;6
	b.d	.L1302
	mov_s	r13,r12	;4
	.align 4
.L1308:
	b.d	.L1301
	mov_s	r12,4	;3
	.align 4
.L1309:
	b.d	.L1301
	mov_s	r12,8	;3
	.align 4
.L1276:
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2048	;13
	b.d	.L1302
	mov_s	r13,r12	;4
	.align 4
.L1278:
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4096	;13
	b.d	.L1302
	mov_s	r13,r12	;4
	.align 4
.L1310:
	b.d	.L1301
	mov_s	r12,16	;3
	.align 4
.L1280:
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8192	;13
	b.d	.L1302
	mov_s	r13,r12	;4
	.align 4
.L1311:
	b.d	.L1301
	mov_s	r12,32	;3
	.align 4
.L1312:
	b.d	.L1301
	mov_s	r12,64	;3
	.align 4
.L1281:
	mov_s	r3,32768	;13
	btst_s	r0,15
	mov_s	r12,r3	;4
	mov_s.ne	r13,r3
	bne.d	.L1284
	sub_s.ne	r0,r0,r0
	b.d	.L1366
	lsr_s	r14,r12
	.align 4
.L1365:
	mov_s	r3,32768	;13
	mov_s	r1,16384	;13
	xor_s	r0,r0,r3
	mov_s	r14,r1	;4
	mov_s	r12,r3	;4
	b.d	.L1302
	mov_s	r13,r3	;4
	.align 4
.L1313:
	b.d	.L1301
	mov_s	r12,128	;3
	.align 4
.L1267:
	blo_s	.L1314
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	b.d	.L1284
	mov_s	r13,r12	;4
	.align 4
.L1314:
	b.d	.L1301
	mov	r12,256	;6
	.align 4
.L1271:
	blo_s	.L1316
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	b.d	.L1284
	mov_s	r13,r12	;4
	.align 4
.L1279:
	blo_s	.L1320
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	b.d	.L1284
	mov_s	r13,r12	;4
	.align 4
.L1316:
	b.d	.L1301
	mov	r12,1024	;6
	.align 4
.L1320:
	mov_s	r12,16384	;13
	b.d	.L1366
	lsr_s	r14,r12
	.align 4
.L1315:
	b.d	.L1301
	mov	r12,512	;6
	.align 4
.L1277:
	blo_s	.L1319
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	b.d	.L1284
	mov_s	r13,r12	;4
	.align 4
.L1275:
	blo_s	.L1318
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	b.d	.L1284
	mov_s	r13,r12	;4
	.align 4
.L1273:
	blo_s	.L1317
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	b.d	.L1284
	mov_s	r13,r12	;4
	.align 4
.L1319:
	mov_s	r12,8192	;13
	b.d	.L1366
	lsr_s	r14,r12
	.align 4
.L1318:
	mov_s	r12,4096	;13
	b.d	.L1366
	lsr_s	r14,r12
	.align 4
.L1317:
	mov_s	r12,2048	;13
	b.d	.L1366
	lsr_s	r14,r12
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1392
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1391	; lp_count:@.L1368->@.L1391
	.align 2
.L1368:
	brlt	r1,0,.L1369
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1370
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1391:
	; ZOL_END, begins @.L1368
	.align 2
.L1371:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1370:
	tst_s	r3,r3
	beq.d	.L1371
	mov.eq	r12,0
	.align 2
.L1369:
	mov_s	r12,0	;3
	.align 2
.L1374:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1374
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1386:
	cmp_s	r0,r1
	.align 4
.L1392:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1386
	lsr_s	r1,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1394
	asl	r1,r0,r2
	mov_s	r2,0	;3
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.align 4
.L1394:
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
	bbit0	r2,5,@.L1400
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1400:
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
	blt_s	.L1415
	bgt_s	.L1416
	cmp_s	r0,r2
	blo_s	.L1415
	bhi_s	.L1416
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1415:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1416:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1422
	bgt_s	.L1421
	brlo	r0,r2,.L1422
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1422:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1421:
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
	bbit0.d	r2,5,@.L1427
	mov_s	r3,r1	;4
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L1427:
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
	bbit0.d	r2,0,@.L1447
	mov_s	r16,0	;4
	.align 2
.L1449:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L1447:
	div	r13,r13,2
	breq_s	r13,0,.L1448
	.align 2
.L1450:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L1449
	b.d	.L1450
	div	r13,r13,2
	.align 4
.L1448:
	brge	r18,0,.L1446
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	.align 2
.L1446:
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
	bbit0.d	r1,0,@.L1455
	mov_s	r14,r1	;4
	.align 2
.L1457:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r13
	mov_s	r15,r0
	.align 2
.L1455:
	div	r14,r14,2
	breq_s	r14,0,.L1456
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1457
	mov_s	r13,r0
	div	r14,r14,2
	.align 2
.L1463:
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1457
	mov_s	r13,r0
	b.d	.L1463
	div	r14,r14,2
	.align 4
.L1456:
	brge	r16,0,.L1454
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	mov_s	r15,r0
	.align 2
.L1454:
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
	blo_s	.L1468
	bhi_s	.L1469
	cmp_s	r0,r2
	blo_s	.L1468
	bhi_s	.L1469
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1468:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1469:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1475
	bhi_s	.L1474
	brlo	r0,r2,.L1475
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1475:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1474:
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
	.global	__subdf3
	.global	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
