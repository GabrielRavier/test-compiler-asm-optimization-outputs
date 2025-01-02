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
	brle	r2,2,.L170
	add_s	r2,r2,-1   ;h,h,s3
	ldb_s	r12,[r0,1]
	stb_s	r12,[r1]
	mov	lp_count,r2	;5
	lp	@.L172	; lp_count:@.L165->@.L172
	.align 2
.L165:
	mov_s	r12,r1	;4
	add_s	r1,r1,2   ;b,b,h
	ldb.ab	r3,[r0,2]
	stb_s	r3,[r12,1]
	ldb_s	r12,[r0,1]
	stb_s	r12,[r1]
	.align 2
.L172:
	; ZOL_END, begins @.L165
	ldb.ab	r3,[r0,2]
	j_s.d	[blink]
	stb_s	r3,[r1,1]
	.align 4
.L170:
	add_s	r1,r1,2   ;b,b,h
	ldb_s	r12,[r0,1]
	ldb.ab	r3,[r0,2]
	stb	r12,[r1,-2]
	stb	r3,[r1,-1]
	add_s	r2,r2,-1   ;h,h,s3
	tst_s	r2,r2
	bne_s	.L170
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
	brls	r0,31,.L203
	add	r2,r0,-127     ;a,b,limm
	brhi	r2,32,.L205
	.align 2
.L203:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L205:
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L203
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
	brls	r0,254,.L216
	brls	r0,8231,.L213
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L213
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L213
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L214
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L213:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L216:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L214:
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
	brne_s	r0,0,.L226
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L227
	vadd2	r0,r14,0
	vadd2	r2,r16,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L223
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L223:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L226:
	vadd2	r0,r14,0
	b_s	.L223
	.align 4
.L227:
	vadd2	r0,r16,0
	b_s	.L223
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
	bne.d	.L232
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L232
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L232:
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
	brne	r0,0,.L247
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L248
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L251
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L241:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L251:
	vadd2	r0,r16,0
	tst_s	r2,r2
	mov.ne	r0,r14
	mov.ne	r1,r15
	b_s	.L241
	.align 4
.L247:
	vadd2	r0,r14,0
	b_s	.L241
	.align 4
.L248:
	vadd2	r0,r16,0
	b_s	.L241
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
	bne.d	.L252
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L252
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	mov_s	r3,r13	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L254
	tst_s	r2,r2
	mov.ne	r14,r13
	mov_s	r0,r14
.L252:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L254:
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
	brne	r0,0,.L268
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L269
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L272
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L262:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L272:
	vadd2	r0,r16,0
	tst_s	r2,r2
	mov.ne	r0,r14
	mov.ne	r1,r15
	b_s	.L262
	.align 4
.L268:
	vadd2	r0,r14,0
	b_s	.L262
	.align 4
.L269:
	vadd2	r0,r16,0
	b_s	.L262
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
	brne	r0,0,.L279
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L280
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L283
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L273:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L283:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L273
	.align 4
.L279:
	vadd2	r0,r14,0
	b_s	.L273
	.align 4
.L280:
	vadd2	r0,r16,0
	b_s	.L273
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
	bne.d	.L284
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L284
	mov.ne	r0,r14
	mov_s	r2,r14	;4
	mov_s	r3,r13	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L286
	tst_s	r2,r2
	mov.ne	r13,r14
	mov_s	r0,r13
.L284:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L286:
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
	brne	r0,0,.L300
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L301
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L304
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L294:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L304:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L294
	.align 4
.L300:
	vadd2	r0,r14,0
	b_s	.L294
	.align 4
.L301:
	vadd2	r0,r16,0
	b_s	.L294
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L306
	.align 2
.L307:
	and	r3,r0,63
	lsr.f	r0,r0,6
	ldb	r3,[r3,@digits]
	bne.d	.L307
	stb.ab	r3,[r2,1]
	.align 2
.L306:
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
	breq_s	r1,0,.L322
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
.L322:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L324
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L324:
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
	breq.d	r16,0,.L334
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	b.d	.L336
	mov_s	r14,0	;3
	.align 4
.L349:
	breq.d	r16,r14,.L334
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L336:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl.d	[r18]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L349
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r19	;4
	.align 2
.L350:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L334:
	add	r2,r16,1 ;a,b,c/u6
	mpy	r16,r16,r15
	tst_s	r15,r15
	add	r19,r21,r16 ;a,b,c/u6
	st	r2,[r20]	;26
	mov_s.ne	r1,r17
	mov_s.ne	r2,r15
	mov_s.ne	r0,r19
	jlne	@memmove
	b.d	.L350
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
	breq	r19,0,.L352
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	b.d	.L354
	mov_s	r14,0	;3
	.align 4
.L363:
	breq.d	r19,r14,.L352
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L354:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl.d	[r16]
	mov_s	r18,r13	;4
	brne.d	r0,0,.L363
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L351:
	mov_s	r0,r18	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L352:
	b.d	.L351
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
.L386:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L386
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L386
	breq	r2,43,.L369
	breq	r2,45,.L370
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L378
	mov_s	r15,0	;3
	.align 2
.L372:
	mov_s	r0,0	;3
	.align 2
.L375:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L375
	brne_s	r15,0,.L366
	sub_s	r0,r14,r13
.L366:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L370:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	add_s	r12,r12,1   ;b,b,h
	bls.d	.L372
	mov.ls	r15,1
	.align 2
.L378:
	b.d	.L366
	mov_s	r0,0	;3
	.align 4
.L369:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L378
	add_s	r12,r12,1   ;b,b,h
	b.d	.L372
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L409:
	mov_s	r12,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L409
	sub	r3,r2,9 ;a,b,u6
	brls	r3,4,.L409
	breq	r2,43,.L394
	breq	r2,45,.L412
	sub3	r3,r2,6 ;a,b,u6
	brhi	r3,9,.L402
	mov_s	r15,0	;3
	.align 2
.L396:
	mov_s	r0,0	;3
	.align 2
.L399:
	mpy	r13,r0,10
	ldb.a	r2,[r12,1]
	mov_s	r14,r3	;4
	sub_s	r0,r13,r3
	sub3	r3,r2,6 ;a,b,u6
	brls	r3,9,.L399
	brne_s	r15,0,.L391
	sub_s	r0,r14,r13
.L391:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L412:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	cmp_s	r3,9
	mov_s	r12,r0	;4
	bls.d	.L396
	mov.ls	r15,1
	.align 2
.L402:
	b.d	.L391
	mov_s	r0,0	;3
	.align 4
.L394:
	ldb_s	r2,[r12,1]
	sub3	r3,r2,6 ;a,b,u6
	brhi.d	r3,9,.L402
	add_s	r12,r12,1   ;b,b,h
	b.d	.L396
	mov_s	r15,0	;3
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L433:
	mov_s	r14,r0	;4
	ldb.ab	r3,[r0,1]
	breq	r3,32,.L433
	sub	r2,r3,9 ;a,b,u6
	brls	r2,4,.L433
	breq	r3,43,.L416
	brne	r3,45,.L437
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r14,r14,1   ;b,b,h
	bhi.d	.L425
	mov.ls	r5,1
	.align 2
.L419:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L422:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	asr	r15,r2,31
	ldb.a	r3,[r14,1]
	mov_s	r4,r2	;4
	sub3	r2,r3,6 ;a,b,u6
	sbc	r1,r13,r15
	brls	r2,9,.L422
	brne	r5,0,.L413
	sub.f	r0,r4,r12
	sbc	r1,r15,r13
.L413:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L437:
	sub3	r2,r3,6 ;a,b,u6
	brhi	r2,9,.L425
	.align 2
.L426:
	b.d	.L419
	mov_s	r5,0	;4
	.align 4
.L416:
	ldb_s	r3,[r14,1]
	sub3	r2,r3,6 ;a,b,u6
	brls.d	r2,9,.L426
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L425:
	mov_s	r0,0	;3
	b.d	.L413
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
	beq_s	.L439
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	b.d	.L442
	mov_s	r19,r4	;4
	.align 4
.L449:
	beq_s	.L438
	sub_s	r13,r13,r15
	breq.d	r13,0,.L439
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L442:
	lsr_s	r15,r13
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	tst_s	r0,r0
	bp	.L449
	mov_s	r13,r15	;4
	brne_s	r13,0,.L442
	.align 2
.L439:
	mov_s	r14,0	;3
	.align 2
.L438:
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
	beq.d	.L455
	mov_s	r20,r5	;4
	.align 2
.L463:
	asr_s	r15,r13,1
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r2,r20	;4
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	breq_s	r0,0,.L450
	brle	r0,0,.L453
	asr.f	r13,r13,1
	bne.d	.L463
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L455:
	mov_s	r14,0	;3
	.align 2
.L450:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.align 4
.L453:
	breq_s	r15,0,.L455
	b.d	.L463
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
	breq_s	r2,0,.L484
	.align 2
.L481:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L481
	.align 2
.L484:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L492
	b_s	.L491
	.align 4
.L493:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L491
	.align 2
.L492:
	brne_s	r2,0,.L493
	.align 2
.L491:
	brlt	r2,r3,.L495
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L495:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L498:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L498
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L506
	mov_s	r2,r0	;4
	.align 2
.L505:
	ld.a	r3,[r2,4]	;23
	brne_s	r3,0,.L505
	sub_s	r0,r2,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L506:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L515
	push_s	r14
	push_s	r13
	mov	lp_count,r2	;5
	lp	@.L525	; lp_count:@.L511->@.L525
	.align 2
.L511:
	mov_s	r12,r1	;4
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld_s	r13,[r12]		;15
	brne.d	r3,r13,.L512
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L512
	nop_s
	.align 2
.L525:
	; ZOL_END, begins @.L511
	mov_s	r0,0	;3
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L512:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L515:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L534
	mov_s.ne	r3,r0
	.align 2
.L539:
	mov	lp_count,r2	;5
	lp	@.L538	; lp_count:@.L528->@.L538
	.align 2
.L528:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L538:
	; ZOL_END, begins @.L528
	.align 2
.L534:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L551
	.align 2
.L558:
	mov	lp_count,r2	;5
	lp	@.L557	; lp_count:@.L542->@.L557
	.align 2
.L542:
	ld_s	r12,[r1]		;15
	add_s	r0,r0,4   ;b,b,h
	ld	r3,[r0,-4]	;23
	cmp_s	r3,r12
	bne.d	.L555
	add_s	r1,r1,4   ;b,b,h
	nop_s
	.align 2
.L557:
	; ZOL_END, begins @.L542
	.align 2
.L551:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L555:
	blt_s	.L556
	j_s.d	[blink]
	setgt	r0,r3,r12
	.align 4
.L556:
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
	brlo	r12,r3,.L567
	tst_s	r2,r2
	jeq_s	[blink]
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r2,1 ;a,b,u6
	brls.d	r3,23,.L571
	add_s	r12,r1,4   ;a,b,c/u3
	add_s	r13,r1,4   ;a,b,c/u3
	breq.d	r13,r0,.L571
	mov_s	r12,r13	;4
	bbit0.d	r0,2,@.L578
	xbfu	r12,r0,2
	mov_s	r4,r0	;4
	ld_s	r3,[r1]		;15
	st.ab	r3,[r4,4]	;26
	.align 2
.L572:
	sub_s	r2,r2,r12
	add2	r3,-8,r12
	add_s	r1,r1,r3   ;b,b,h
	add2	r12,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L596	; lp_count:@.L573->@.L596
	.align 2
.L573:
	ldd.a	r14,[r1,8]
	std.ab	r14,[r12,8]
	.align 2
.L596:
	; ZOL_END, begins @.L573
	bbit0	r2,0,@.L580
	bclr_s	r2,r2,0
	add2_s	r13,r13,r2
	add2	r2,r4,r2
	ld_s	r3,[r13]		;15
	st_s	r3,[r2]		;16
.L580:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L567:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	add_s	r1,r1,r3   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L595	; lp_count:@.L570->@.L595
	.align 2
.L570:
	ld.a	r12,[r1,-4]	;23
	st.a	r12,[r3,-4]	;26
	.align 2
.L595:
	; ZOL_END, begins @.L570
	j_s	[blink]
	.align 4
.L578:
	mov_s	r13,r1	;4
	b.d	.L572
	mov_s	r4,r0	;4
	.align 4
.L571:
	b.d	.L576
	sub2	r2,r0,1 ;a,b,u6
	.align 4
.L594:
	add_s	r12,r12,4   ;b,b,h
	.align 2
.L576:
	ld	r13,[r12,-4]	;23
	add_s	r3,r3,-1   ;h,h,s3
	st.a	r13,[r2,4]	;26
	brne	r3,-1,.L594
	b_s	.L580
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
	brls.d	r13,5,.L603
	xbfu	r12,r0,2
	bbit0.d	r3,0,@.L600
	mov_s	r4,r0	;4
	sub1	r13,r2,1 ;a,b,u6
	st.ab	r1,[r4,4]	;26
	.align 2
.L600:
	sub_s	r2,r2,r12
	mov_s	r15,r1	;4
	mov_s	r14,r1	;4
	add2	r12,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L629	; lp_count:@.L601->@.L629
	.align 2
.L601:
	std.ab	r14,[r12,8]
	.align 2
.L629:
	; ZOL_END, begins @.L601
	bbit0	r2,0,@.L598
	bclr_s	r2,r2,0
	sub_s	r13,r13,r2
	add2	r2,r4,r2
	.align 2
.L599:
	breq.d	r13,0,.L598
	st_s	r1,[r2]		;16
	breq.d	r13,1,.L598
	st_s	r1,[r2,4]		;16
	breq.d	r13,2,.L598
	st_s	r1,[r2,8]		;16
	breq.d	r13,3,.L598
	st_s	r1,[r2,12]		;16
	breq.d	r13,4,.L598
	st_s	r1,[r2,16]		;16
	st_s	r1,[r2,20]		;16
.L598:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L603:
	b.d	.L599
	mov_s	r2,r0	;4
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L631
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	mov	lp_count,r0	;5
	lp	@.L671	; lp_count:@.L633->@.L671
	.align 2
.L633:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L671:
	; ZOL_END, begins @.L633
	j_s	[blink]
	.align 4
.L631:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L668
	push_s	r14
	push_s	r13
	or	r12,r1,r0
	add_s	r3,r0,1   ;a,b,c/u3
	bmsk_s	r12,r12,1
	sub_s	r13,r1,r3
	seteq	r12,r12,0
	seths	r13,r13,3
	tst_s	r12,r13
	beq_s	.L634
	bmskn	r14,r2,1
	sub2	r3,r14,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L670	; lp_count:@.L635->@.L670
	.align 2
.L635:
	ld.a	r13,[r12,4]	;23
	st.ab	r13,[r1,4]	;26
	.align 2
.L670:
	; ZOL_END, begins @.L635
	add_s	r0,r0,r14   ;b,b,h
	breq.d	r2,r14,.L630
	sub_s	r3,r2,r14
	ldb_s	r2,[r0]
	breq.d	r3,1,.L630
	stb_s	r2,[r1]
	ldb_s	r2,[r0,1]
	breq.d	r3,2,.L630
	stb_s	r2,[r1,1]
	ldb_s	r2,[r0,2]
	stb_s	r2,[r1,2]
	.align 2
.L630:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L634:
	add_s	r1,r1,-1   ;h,h,s3
	b.d	.L638
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L669:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L638:
	ldb	r2,[r3,-1]
	brne.d	r3,r0,.L669
	stb.a	r2,[r1,1]
	b_s	.L630
	.align 4
.L668:
	add_s	r3,r0,1   ;a,b,c/u3
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L665:
	ldb	r2,[r3,-1]
	cmp_s	r3,r0
	jeq.d	[blink]
	stb.a	r2,[r1,1]
	b.d	.L665
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
	lp	@.L706	; lp_count:@.L701->@.L706
	.align 2
.L701:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L705
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L706:
	; ZOL_END, begins @.L701
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L705:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L710
	bbit1.d	r2,0,@.L714
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L709:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L709
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L714:
	j_s	[blink]
	.align 4
.L710:
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
	bn.d	.L715
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L715:
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
	bn.d	.L720
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L720:
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
	bn.d	.L725
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L725:
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
	brne_s	r0,0,.L733
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	bl.d	@__nesf2;1
	mov_s	r1,r15
	breq_s	r0,0,.L733
	tst_s	r13,r13
	mov_s	r14,0x3f000000 ; 5.0e-1
	mov.p	r14,0x40000000 ; 2.0e+0
	bbit0	r13,0,@.L736
	.align 2
.L737:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r14
	mov_s	r15,r0
	.align 2
.L736:
	div	r13,r13,2
	breq_s	r13,0,.L733
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	bbit1.d	r13,0,@.L737
	mov_s	r14,r0
	div	r13,r13,2
	.align 2
.L746:
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	bbit1.d	r13,0,@.L737
	mov_s	r14,r0
	b.d	.L746
	div	r13,r13,2
	.align 4
.L733:
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
	brne	r0,0,.L748
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L748
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L751
	.align 2
.L752:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L751:
	div	r13,r13,2
	breq_s	r13,0,.L748
	.align 2
.L753:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L752
	b.d	.L753
	div	r13,r13,2
	.align 4
.L748:
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
	brne	r0,0,.L761
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L761
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L764
	.align 2
.L765:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L764:
	div	r13,r13,2
	breq_s	r13,0,.L761
	.align 2
.L766:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L765
	b.d	.L766
	div	r13,r13,2
	.align 4
.L761:
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
	brls	r3,3,.L775
	or	r3,r0,r1
	tst	r3,3
	bne_s	.L775
	bmskn	r4,r2,1
	sub2	r12,r4,1 ;a,b,u6
	sub2	r14,r1,1 ;a,b,u6
	add	r5,r0,r4 ;a,b,c/u6
	mov_s	r13,r0	;4
	lsr_s	r12,r12,2
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L798	; lp_count:@.L776->@.L798
	.align 2
.L776:
	ld_s	r15,[r13]		;15
	ld.a	r3,[r14,4]	;23
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	.align 2
.L798:
	; ZOL_END, begins @.L776
	add_s	r1,r1,r4   ;b,b,h
	breq.d	r4,r2,.L774
	sub	r3,r2,r4
	ldb	r2,[r5]
	ldb_s	r12,[r1]
	xor_s	r2,r2,r12
	breq.d	r3,1,.L774
	stb	r2,[r5]
	ldb	r12,[r5,1]
	ldb_s	r2,[r1,1]
	xor_s	r2,r2,r12
	breq.d	r3,2,.L774
	stb	r2,[r5,1]
	ldb	r3,[r5,2]
	ldb_s	r2,[r1,2]
	xor_s	r2,r2,r3
	stb	r2,[r5,2]
.L774:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L775:
	mov_s	r12,r0	;4
	mov	lp_count,r2	;5
	lp	@.L797	; lp_count:@.L778->@.L797
	.align 2
.L778:
	ldb.ab	r13,[r12,1]
	ldb.ab	r3,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L797:
	; ZOL_END, begins @.L778
	b_s	.L774
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	tst_s	r3,r3
	beq.d	.L800
	mov_s	r3,r0	;4
	.align 2
.L801:
	ldb.a	r12,[r3,1]
	brne_s	r12,0,.L801
	.align 2
.L800:
	breq_s	r2,0,.L802
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L815	; lp_count:@.L803->@.L815
	.align 2
.L803:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r3,1]
	nop_s
	.align 2
.L815:
	; ZOL_END, begins @.L803
	.align 2
.L802:
	stb	0,[r3]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L820
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L826	; lp_count:@.L818->@.L826
	.align 2
.L818:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L826:
	; ZOL_END, begins @.L818
	j_s	[blink]
	.align 4
.L820:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L834
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L828:
	b.d	.L831
	mov_s	r3,r13	;4
	.align 4
.L830:
	breq	r2,r12,.L829
	.align 2
.L831:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L830
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L828
	mov_s	r0,0	;3
.L829:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L834:
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
.L841:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	cmp_s	r1,r3
	mov.ne	r12,r0
	brne.d	r3,0,.L841
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
	breq.d	r14,0,.L858
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L848:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L848
	sub.f	r2,r2,r1
	beq_s	.L858
	b.d	.L856
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L866:
	breq_s	r2,0,.L865
	.align 2
.L856:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r2,r14,.L866
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L850
	mov_s	r12,r0	;4
	.align 4
.L868:
	breq	r12,r15,.L852
	brne	r3,r2,.L853
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L867
	ldb.a	r3,[r13,1]
	.align 2
.L850:
	brne_s	r3,0,.L868
	.align 2
.L853:
	b.d	.L856
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L865:
	mov_s	r0,0	;3
.L846:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L867:
	ldb_s	r3,[r13,1]
	.align 2
.L852:
	breq	r2,r3,.L846
	b.d	.L856
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L858:
	b.d	.L846
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
	brlt	r0,0,.L880
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L873
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L872
	.align 2
.L873:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L880:
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L873
	.align 2
.L872:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L873
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq_s	[blink]
	brlo	r1,r3,.L890
	sub_s	r1,r1,r3
	add.f	r5,r0,r1
	blo	.L890
	std.a	r14,[sp,-8]
	push_s	r13
	b.d	.L887
	ldb	r6,[r2]
	.align 4
.L883:
	brlo	r5,r0,.L892
	.align 2
.L887:
	mov_s	r13,r0	;4
	ldb.ab	r12,[r13,1]
	cmp_s	r12,r6
	bne.d	.L883
	mov_s.ne	r0,r13
	breq	r3,1,.L881
	.align 2
.L886:
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r12,r3,1 ;a,b,u6
	mov	lp_count,r12	;5
	lp	@.L909	; lp_count:@.L884->@.L909
	.align 2
.L884:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L908
	nop_s
	.align 2
.L909:
	; ZOL_END, begins @.L884
.L881:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L908:
	brlo	r5,r13,.L892
	mov_s	r0,r13	;4
	ldb.ab	r12,[r0,1]
	brne	r6,r12,.L883
	mov_s	r12,r13	;4
	mov_s	r13,r0	;4
	b.d	.L886
	mov_s	r0,r12	;4
	.align 4
.L892:
	b.d	.L881
	mov_s	r0,0	;3
	.align 4
.L890:
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
	bn	.L939
	vadd2	r0,r14,0
	mov_s	r3,1072693248	;13
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn.d	.L940
	mov.p	r21,0
	.align 2
.L919:
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L925:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__gedf2;1
	brge	r0,0,.L925
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	breq.d	r21,0,.L941
	bxor	r1,r15,31
.L916:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L941:
	vadd2	r0,r14,0
	b_s	.L916
	.align 4
.L940:
	vadd2	r0,r14,0
	mov_s	r3,1071644672	;13
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L922
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	brne	r0,0,.L931
	.align 2
.L922:
	vadd2	r0,r14,0
	st	0,[r20]	;37
	b_s	.L916
	.align 4
.L939:
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,-1074790400	;13
	bl.d	@__ledf2;1
	mov_s	r16,r14	;4
	brgt.d	r0,0,.L942
	bxor	r17,r15,31
	vadd2	r14,r16,0
	b.d	.L919
	mov_s	r21,1	;4
	.align 4
.L942:
	vadd2	r0,r14,0
	mov_s	r3,-1075838976	;13
	bl.d	@__gtdf2;1
	mov_s	r2,0	;3
	brle	r0,0,.L922
	mov_s	r21,1	;4
	.align 2
.L920:
	vadd2	r14,r16,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L927:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__ltdf2;1
	brlt	r0,0,.L927
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	tst	r21,r21
	bne.d	.L916
	bxor	r1,r15,31
	b_s	.L941
	.align 4
.L931:
	vadd2	r16,r14,0
	b.d	.L920
	mov_s	r21,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	or.f	0,r0,r1
	beq.d	.L947
	mov_s	r14,r1	;4
	mov_s	r13,r0	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L946:
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
	bne_s	.L946
.L943:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L947:
	mov_s	r0,0	;3
	b.d	.L943
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp_s	r1,r0
	mov.hs	r3,1
	bhs.d	.L969
	mov.hs	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L974	; lp_count:@.L951->@.L974
	.align 2
.L951:
	brlt	r1,0,.L952
	asl_s	r1,r1,1
	brls.d	r0,r1,.L953
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L974:
	; ZOL_END, begins @.L951
	.align 2
.L954:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L953:
	tst_s	r3,r3
	beq.d	.L954
	mov.eq	r12,0
	.align 2
.L952:
	mov_s	r12,0	;3
	.align 2
.L957:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L957
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L969:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L969
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
	beq_s	.L977
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L977:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L988
	xor	r12,r1,r3
	.align 2
.L985:
	fls	r0,r2
	brne.d	r12,0,.L989
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L989:
	fls	r12,r12
	rsub	r0,r12,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L988:
	brne	r1,r0,.L985
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
.L992:
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
	bne.d	.L992
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L1002
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L1036
	.align 2
.L1002:
	tst_s	r3,r3
	beq_s	.L1037
	std.a	r14,[sp,-8]
	push_s	r13
	add3	r3,-8,r3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1042	; lp_count:@.L1005->@.L1042
	.align 2
.L1005:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	.align 2
.L1042:
	; ZOL_END, begins @.L1005
	brls	r2,r4,.L998
	sub	r15,r2,r4
	sub	r3,r15,1 ;a,b,u6
	brls	r3,6,.L1007
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
	beq_s	.L1007
	bmskn	r5,r15,1
	sub2	r3,r5,1 ;a,b,u6
	sub2	r12,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1041	; lp_count:@.L1008->@.L1041
	.align 2
.L1008:
	ld.a	r14,[r12,4]	;23
	st.ab	r14,[r13,4]	;26
	.align 2
.L1041:
	; ZOL_END, begins @.L1008
	breq.d	r15,r5,.L998
	add	r4,r4,r5   ;(p)b,b,c/u6
	add	r13,r1,r4 ;a,b,c/u6
	add	r12,r0,r4 ;a,b,c/u6
	add	r3,r4,1 ;a,b,c/u6
	ldb_s	r13,[r13]
	brls.d	r2,r3,.L998
	stb_s	r13,[r12]
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	add_s	r4,r4,2   ;h,h,s3
	cmp_s	r2,r4
	ldb_s	r2,[r12]
	bls.d	.L998
	stb_s	r2,[r3]
	add_s	r1,r1,r4   ;b,b,h
	add	r4,r4,r0   ;(p)b,b,c/u6
	ldb_s	r2,[r1]
	stb	r2,[r4]
	.align 2
.L998:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1036:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L1040	; lp_count:@.L1012->@.L1040
	.align 2
.L1012:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1040:
	; ZOL_END, begins @.L1012
	j_s	[blink]
	.align 4
.L1007:
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1039	; lp_count:@.L1010->@.L1039
	.align 2
.L1010:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r4,1]
	.align 2
.L1039:
	; ZOL_END, begins @.L1010
	b_s	.L998
	.align 4
.L1037:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1038	; lp_count:@.L1031->@.L1038
	.align 2
.L1031:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r4,1]
	.align 2
.L1038:
	; ZOL_END, begins @.L1031
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	brlo.d	r0,r1,.L1047
	lsr	r4,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	cmp_s	r3,r0
	bhs	.L1074
	.align 2
.L1047:
	tst	r4,r4
	beq_s	.L1075
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r3,r4,1 ;a,b,u6
	cmp_s	r3,11
	bls	.L1050
	add_s	r3,r1,2   ;a,b,c/u3
	sub_s	r3,r0,r3
	cmp	r3,4
	bls	.L1050 ;brls out of range
	lsr_s	r3,r0
	neg_s	r3,r3
	tst	r3,3
	and	r12,r3,3
	beq.d	.L1051
	mov.eq	r6,0
	ldh_s.x	r13,[r1]
	bbit0.d	r3,1,@.L1060
	sth_s	r13,[r0]
	ldh_s.x	r3,[r1,2]
	cmp_s	r12,3
	sth_s	r3,[r0,2]
	bne.d	.L1051
	mov.ne	r6,2
	mov_s	r6,3	;4
	ldh_s.x	r3,[r1,4]
	sth_s	r3,[r0,4]
	.align 2
.L1051:
	sub	r5,r4,r12
	add1	r13,-8,r12
	add_s	r13,r13,r1   ;b,b,h
	add1	r12,r0,r12
	lsr	r3,r5,2
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1079	; lp_count:@.L1053->@.L1079
	.align 2
.L1053:
	ldd.a	r14,[r13,8]
	std.ab	r14,[r12,8]
	.align 2
.L1079:
	; ZOL_END, begins @.L1053
	bmskn	r3,r5,1
	tst	r5,3
	beq.d	.L1046
	add_s	r3,r3,r6   ;b,b,h
	add1	r14,r0,r3
	ldh.x.as	r15,[r1,r3]
	add_s	r13,r3,1   ;a,b,c/u3
	asl_s	r12,r3,1
	brls.d	r4,r13,.L1046
	sth_s	r15,[r14]
	mov_s	r13,r12	;4
	add_s	r14,r1,r12   ;a,b,c/u3
	add_s	r13,r13,r0   ;b,b,h
	add_s	r3,r3,2   ;b,b,h
	cmp	r4,r3
	ldh_s.x	r3,[r14,2]
	bls.d	.L1046
	sth_s	r3,[r13,2]
	add_s	r3,r1,r12   ;a,b,c/u3
	add_s	r12,r12,r0   ;b,b,h
	ldh_s.x	r3,[r3,4]
	sth_s	r3,[r12,4]
	.align 2
.L1046:
	bbit0	r2,0,@.L1043
	add_s	r1,r1,r2   ;b,b,h
	.align 2
.L1080:
	add_s	r2,r2,r0   ;b,b,h
	ldb	r3,[r1,-1]
	stb	r3,[r2,-1]
	.align 2
.L1043:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1074:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r3,r1
	mov	lp_count,r1	;5
	lp	@.L1078	; lp_count:@.L1058->@.L1078
	.align 2
.L1058:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1078:
	; ZOL_END, begins @.L1058
	j_s	[blink]
	.align 4
.L1060:
	b.d	.L1051
	mov_s	r6,1	;4
	.align 4
.L1050:
	add1	r3,-2,r4
	sub1	r13,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1077	; lp_count:@.L1055->@.L1077
	.align 2
.L1055:
	ldh.x.a	r14,[r13,2]
	sth.a	r14,[r12,2]
	.align 2
.L1077:
	; ZOL_END, begins @.L1055
	bbit0	r2,0,@.L1043
	b.d	.L1080
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L1075:
	bbit0	r2,0,@.L1081
	add_s	r1,r1,r2   ;b,b,h
	add_s	r2,r2,r0   ;b,b,h
	ldb	r3,[r1,-1]
	stb	r3,[r2,-1]
	.align 2
.L1081:
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	brlo.d	r0,r1,.L1088
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1116
	.align 2
.L1088:
	tst_s	r3,r3
	beq_s	.L1117
	sub	r12,r3,1 ;a,b,u6
	cmp_s	r12,23
	bls	.L1090
	add_s	r12,r1,4   ;a,b,c/u3
	cmp_s	r0,r12
	beq_s	.L1090
	xbfu	r12,r0,2
	bbit0.d	r0,2,@.L1091
	mov_s	r6,0	;4
	mov_s	r6,r12	;4
	ld_s	r13,[r1]		;15
	st_s	r13,[r0]		;16
	.align 2
.L1091:
	sub_s	r13,r3,r12
	add2	r14,-8,r12
	add_s	r14,r14,r1   ;b,b,h
	add2	r12,r0,r12
	lsr_s	r3,r13
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1123	; lp_count:@.L1092->@.L1123
	.align 2
.L1092:
	ldd.a	r4,[r14,8]
	std.ab	r4,[r12,8]
	.align 2
.L1123:
	; ZOL_END, begins @.L1092
	bbit0	r13,0,@.L1095
	bmskn	r3,r13,0
	add_s	r3,r3,r6   ;b,b,h
	add2	r12,r1,r3
	add2	r3,r0,r3
	ld_s	r12,[r12]		;15
	st_s	r12,[r3]		;16
	.align 2
.L1095:
	brls	r2,r15,.L1083
	sub	r4,r2,r15
	sub	r3,r4,1 ;a,b,u6
	brls	r3,6,.L1086
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
	beq_s	.L1086
	bmskn	r5,r4,1
	sub2	r3,r5,1 ;a,b,u6
	sub2	r12,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1122	; lp_count:@.L1096->@.L1122
	.align 2
.L1096:
	ld.a	r14,[r12,4]	;23
	st.ab	r14,[r13,4]	;26
	.align 2
.L1122:
	; ZOL_END, begins @.L1096
	breq.d	r5,r4,.L1083
	add_s	r15,r15,r5   ;b,b,h
	add_s	r13,r1,r15   ;a,b,c/u3
	add_s	r12,r0,r15   ;a,b,c/u3
	add_s	r3,r15,1   ;a,b,c/u3
	ldb_s	r13,[r13]
	brls.d	r2,r3,.L1083
	stb_s	r13,[r12]
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r3,r3,r0   ;b,b,h
	add_s	r15,r15,2   ;b,b,h
	cmp_s	r2,r15
	ldb_s	r2,[r12]
	bls.d	.L1083
	stb_s	r2,[r3]
	add_s	r1,r1,r15   ;b,b,h
	add_s	r15,r15,r0   ;b,b,h
	ldb_s	r2,[r1]
	stb_s	r2,[r15]
	.align 2
.L1083:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1116:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r2,r2,r0
	beq.d	.L1083
	rsub.ne	r1,r1,r3
	.align 2
.L1121:
	mov	lp_count,r1	;5
	lp	@.L1120	; lp_count:@.L1100->@.L1120
	.align 2
.L1100:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1120:
	; ZOL_END, begins @.L1100
	b_s	.L1083
	.align 4
.L1090:
	add2	r3,-4,r3
	sub2	r13,r1,1 ;a,b,u6
	sub2	r12,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1119	; lp_count:@.L1094->@.L1119
	.align 2
.L1094:
	ld.a	r14,[r13,4]	;23
	st.a	r14,[r12,4]	;26
	.align 2
.L1119:
	; ZOL_END, begins @.L1094
	b_s	.L1095
	.align 4
.L1117:
	breq_s	r2,0,.L1083
	.align 2
.L1086:
	add_s	r15,r15,-1   ;h,h,s3
	sub	r3,r1,1 ;a,b,u6
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	sub_s	r2,r2,r1
	add_s	r15,r15,r0   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L1118	; lp_count:@.L1098->@.L1118
	.align 2
.L1098:
	ldb.a	r3,[r1,1]
	stb.a	r3,[r15,1]
	.align 2
.L1118:
	; ZOL_END, begins @.L1098
	b_s	.L1083
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
	bbit1	r0,15,@.L1139
	exth_s	r2,r0
	asr.f	r0,r2,14
	jne_s	[blink]
	lsr.f	0,r2,13
	bne_s	.L1140
	lsr.f	0,r2,12
	bne_s	.L1141
	lsr.f	0,r2,11
	bne_s	.L1142
	lsr.f	0,r2,10
	bne_s	.L1143
	lsr.f	0,r2,9
	bne_s	.L1144
	lsr.f	0,r2,8
	bne_s	.L1145
	lsr.f	0,r2,7
	bne_s	.L1146
	lsr.f	0,r2,6
	bne_s	.L1147
	lsr.f	0,r2,5
	bne_s	.L1148
	lsr.f	0,r2,4
	bne_s	.L1149
	lsr.f	0,r2,3
	bne_s	.L1150
	lsr.f	0,r2,2
	bne_s	.L1151
	lsr.f	0,r2,1
	bne_s	.L1152
	tst_s	r2,r2
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1139:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1150:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1140:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1141:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1142:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1143:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1144:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1145:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1146:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1147:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1148:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1149:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1151:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1152:
	j_s.d	[blink]
	mov_s	r0,14	;3
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	bbit1	r0,0,@.L1158
	exth_s	r2,r0
	bbit1	r2,1,@.L1159
	bbit1	r2,2,@.L1160
	bbit1	r2,3,@.L1161
	bbit1	r2,4,@.L1162
	bbit1	r2,5,@.L1163
	bbit1	r2,6,@.L1164
	bbit1	r2,7,@.L1165
	bbit1	r2,8,@.L1166
	bbit1	r2,9,@.L1167
	bbit1	r2,10,@.L1168
	bbit1	r2,11,@.L1169
	bbit1	r2,12,@.L1170
	bbit1	r2,13,@.L1171
	bbit1	r2,14,@.L1172
	lsr.f	0,r2,15
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1158:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1159:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1170:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1160:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1161:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1162:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1163:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1164:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1165:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1166:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1167:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1168:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1169:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1171:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1172:
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
	brge	r0,0,.L1182
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L1182:
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
.L1189:
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
	bne.d	.L1189
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
.L1197:
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
	bne.d	.L1197
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1229
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1228	; lp_count:@.L1205->@.L1228
	.align 2
.L1205:
	brlt	r1,0,.L1206
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1207
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1228:
	; ZOL_END, begins @.L1205
	.align 2
.L1208:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1207:
	tst_s	r3,r3
	beq.d	.L1208
	mov.eq	r12,0
	.align 2
.L1206:
	mov_s	r12,0	;3
	.align 2
.L1211:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1211
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1223:
	cmp_s	r0,r1
	.align 4
.L1229:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1223
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
	bn	.L1230
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L1230:
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
	bn	.L1235
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1235:
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
	bn.d	.L1246
	mov.n	r13,1
	beq.d	.L1244
	mov.eq	r0,0
	mov_s	r13,0	;3
	.align 2
.L1246:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1260	; lp_count:@.L1249->@.L1260
	.align 2
.L1249:
	and	r2,r1,1
	asr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	beq.d	.L1248
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1260:
	; ZOL_END, begins @.L1249
	.align 2
.L1248:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1244:
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
	bls.d	.L1265
	mov.hi	r3,32
	.align 2
.L1282:
	mov	lp_count,r3	;5
	lp	@.L1281	; lp_count:@.L1264->@.L1281
	.align 2
.L1264:
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1268
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1281:
	; ZOL_END, begins @.L1264
	.align 2
.L1268:
	tst_s	r2,r2
	beq.d	.L1266
	mov.eq	r0,0
	.align 2
.L1265:
	mov_s	r0,0	;3
	.align 2
.L1270:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r2
	lsr.f	r2,r2,1
	bne.d	.L1270
	lsr_s	r1,r1
	.align 2
.L1266:
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
	bls.d	.L1300
	mov.hi	r3,32
	.align 2
.L1304:
	mov	lp_count,r3	;5
	lp	@.L1303	; lp_count:@.L1285->@.L1303
	.align 2
.L1285:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1289
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1303:
	; ZOL_END, begins @.L1285
	.align 2
.L1289:
	tst_s	r2,r2
	beq.d	.L1287
	mov.eq	r0,r12
	.align 2
.L1300:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	lsr.f	r2,r2,1
	bne.d	.L1300
	lsr_s	r1,r1
	.align 2
.L1287:
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
	bhs	.L1422
	btst_s	r1,15
	bne	.L1308
	asl_s	r3,r1,1
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1309
	btst_s	r3,15
	bne	.L1310
	asl_s	r3,r1,2
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1311
	btst_s	r3,15
	bne	.L1312
	asl_s	r3,r1,3
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1313
	btst_s	r3,15
	bne	.L1314
	asl_s	r3,r1,4
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1315
	btst_s	r3,15
	bne	.L1316
	asl_s	r3,r1,5
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1317
	btst_s	r3,15
	bne	.L1318
	asl_s	r3,r1,6
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1319
	btst_s	r3,15
	bne	.L1320
	asl_s	r3,r1,7
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1321
	btst_s	r3,15
	bne	.L1322
	asl	r3,r1,8
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1323
	btst_s	r3,15
	bne	.L1324
	asl	r3,r1,9
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1325
	btst_s	r3,15
	bne	.L1326
	asl	r3,r1,10
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1327
	btst_s	r3,15
	bne	.L1328
	asl	r3,r1,11
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1329
	btst_s	r3,15
	bne	.L1330
	asl	r3,r1,12
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1331
	btst_s	r3,15
	bne	.L1332
	asl	r3,r1,13
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1333
	btst_s	r3,15
	bne	.L1334
	asl	r3,r1,14
	exth_s	r3,r3
	cmp_s	r0,r3
	bls	.L1335
	btst_s	r3,15
	bne	.L1336
	asl_s	r1,r1,15
	exth_s	r13,r1
	cmp_s	r0,r13
	bls	.L1337
	tst_s	r13,r13
	bne	.L1423
	.align 2
.L1338:
	tst_s	r2,r2
	mov.ne	r13,r0
	mov_s	r0,r13	;4
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1325:
	blo	.L1371
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	mov_s	r13,r12	;4
	.align 2
.L1340:
	lsr.f	r15,r12,2
	beq.d	.L1338
	lsr	r14,r3,2
	brhi	r14,r0,.L1341
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1341:
	lsr.f	r15,r12,3
	beq.d	.L1338
	lsr	r14,r3,3
	brlo	r0,r14,.L1342
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1342:
	lsr.f	r15,r12,4
	beq.d	.L1338
	lsr	r14,r3,4
	brlo	r0,r14,.L1343
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1343:
	lsr.f	r15,r12,5
	beq.d	.L1338
	lsr	r14,r3,5
	brlo	r0,r14,.L1344
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1344:
	lsr.f	r15,r12,6
	beq.d	.L1338
	lsr	r14,r3,6
	brlo	r0,r14,.L1345
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1345:
	lsr.f	r15,r12,7
	beq.d	.L1338
	lsr	r14,r3,7
	brlo	r0,r14,.L1346
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1346:
	lsr.f	r15,r12,8
	beq.d	.L1338
	lsr	r14,r3,8
	brlo	r0,r14,.L1347
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1347:
	lsr.f	r15,r12,9
	beq.d	.L1338
	lsr	r14,r3,9
	brlo	r0,r14,.L1348
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1348:
	lsr.f	r15,r12,10
	beq.d	.L1338
	lsr	r14,r3,10
	brlo	r0,r14,.L1349
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1349:
	lsr.f	r15,r12,11
	beq.d	.L1338
	lsr	r14,r3,11
	brlo	r0,r14,.L1350
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1350:
	lsr.f	r15,r12,12
	beq.d	.L1338
	lsr	r14,r3,12
	brlo	r0,r14,.L1351
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1351:
	lsr.f	r15,r12,13
	beq.d	.L1338
	lsr	r14,r3,13
	brlo	r0,r14,.L1352
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1352:
	lsr.f	r15,r12,14
	beq.d	.L1338
	lsr	r14,r3,14
	brlo	r0,r14,.L1353
	sub_s	r14,r0,r14
	exth_s	r0,r14
	or_s	r13,r13,r15
	.align 2
.L1353:
	bxor.f	0,r12,14
	beq.d	.L1338
	lsr_s	r3,r3,15
	cmp_s	r0,r3
	blo.d	.L1338
	mov.lo	r0,0
	sub_s	r3,r0,r3
	exth_s	r0,r3
	b.d	.L1338
	bset_s	r13,r13,0
	.align 4
.L1422:
	bne.d	.L1338
	sub_s.ne	r13,r13,r13
	mov_s	r13,1	;3
	b.d	.L1338
	mov_s	r0,0	;3
	.align 4
.L1308:
	sub_s	r0,r0,r1
	exth_s	r0,r0
	b.d	.L1338
	mov_s	r13,1	;3
	.align 4
.L1309:
	blo	.L1363
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,2	;3
	b.d	.L1340
	mov_s	r13,2	;3
	.align 4
.L1310:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	bmsk_s	r1,r1,14
	mov_s	r14,1	;3
	mov_s	r12,2	;3
	mov_s	r13,2	;3
	.align 2
.L1358:
	cmp_s	r0,r1
	blo	.L1340
	sub_s	r1,r0,r1
	exth_s	r0,r1
	b.d	.L1340
	or_s	r13,r13,r14
	.align 4
.L1311:
	blo	.L1364
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,4	;3
	b.d	.L1340
	mov_s	r13,4	;3
	.align 4
.L1312:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2	;3
	mov_s	r12,4	;3
	b.d	.L1358
	mov_s	r13,4	;3
	.align 4
.L1313:
	blo	.L1365
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,8	;3
	b.d	.L1340
	mov_s	r13,8	;3
	.align 4
.L1314:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4	;3
	mov_s	r12,8	;3
	b.d	.L1358
	mov_s	r13,8	;3
	.align 4
.L1315:
	blo	.L1366
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,16	;3
	b.d	.L1340
	mov_s	r13,16	;3
	.align 4
.L1316:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8	;3
	mov_s	r12,16	;3
	b.d	.L1358
	mov_s	r13,16	;3
	.align 4
.L1317:
	blo	.L1367
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,32	;3
	b.d	.L1340
	mov_s	r13,32	;3
	.align 4
.L1318:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,16	;3
	mov_s	r12,32	;3
	b.d	.L1358
	mov_s	r13,32	;3
	.align 4
.L1319:
	blo	.L1368
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,64	;3
	b.d	.L1340
	mov_s	r13,64	;3
	.align 4
.L1320:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,32	;3
	mov_s	r12,64	;3
	b.d	.L1358
	mov_s	r13,64	;3
	.align 4
.L1321:
	blo	.L1369
	sub_s	r0,r0,r3
	exth_s	r0,r0
	mov_s	r12,128	;3
	b.d	.L1340
	mov_s	r13,128	;3
	.align 4
.L1322:
	sub_s	r0,r0,r3
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,64	;3
	mov_s	r12,128	;3
	b.d	.L1358
	mov_s	r13,128	;3
	.align 4
.L1324:
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,128	;3
	b.d	.L1358
	mov_s	r13,r12	;4
	.align 4
.L1326:
	sub_s	r0,r0,r3
	mov	r12,512	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,256	;6
	b.d	.L1358
	mov_s	r13,r12	;4
	.align 4
.L1363:
	mov_s	r12,2	;3
	.align 2
.L1357:
	lsr_s	r14,r12
	.align 2
.L1424:
	lsr_s	r1,r3
	b.d	.L1358
	mov_s	r13,0	;3
	.align 4
.L1328:
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,512	;6
	b.d	.L1358
	mov_s	r13,r12	;4
	.align 4
.L1330:
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov	r14,1024	;6
	b.d	.L1358
	mov_s	r13,r12	;4
	.align 4
.L1364:
	b.d	.L1357
	mov_s	r12,4	;3
	.align 4
.L1365:
	b.d	.L1357
	mov_s	r12,8	;3
	.align 4
.L1332:
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,2048	;13
	b.d	.L1358
	mov_s	r13,r12	;4
	.align 4
.L1334:
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,4096	;13
	b.d	.L1358
	mov_s	r13,r12	;4
	.align 4
.L1366:
	b.d	.L1357
	mov_s	r12,16	;3
	.align 4
.L1336:
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	lsr_s	r1,r3
	mov_s	r14,8192	;13
	b.d	.L1358
	mov_s	r13,r12	;4
	.align 4
.L1367:
	b.d	.L1357
	mov_s	r12,32	;3
	.align 4
.L1368:
	b.d	.L1357
	mov_s	r12,64	;3
	.align 4
.L1337:
	mov_s	r3,32768	;13
	btst_s	r0,15
	mov_s	r12,r3	;4
	mov_s.ne	r13,r3
	bne.d	.L1340
	sub_s.ne	r0,r0,r0
	b.d	.L1424
	lsr_s	r14,r12
	.align 4
.L1423:
	mov_s	r3,32768	;13
	mov_s	r1,16384	;13
	xor_s	r0,r0,r3
	mov_s	r14,r1	;4
	mov_s	r12,r3	;4
	b.d	.L1358
	mov_s	r13,r3	;4
	.align 4
.L1369:
	b.d	.L1357
	mov_s	r12,128	;3
	.align 4
.L1323:
	blo_s	.L1370
	sub_s	r0,r0,r3
	mov	r12,256	;6
	exth_s	r0,r0
	b.d	.L1340
	mov_s	r13,r12	;4
	.align 4
.L1370:
	b.d	.L1357
	mov	r12,256	;6
	.align 4
.L1327:
	blo_s	.L1372
	sub_s	r0,r0,r3
	mov	r12,1024	;6
	exth_s	r0,r0
	b.d	.L1340
	mov_s	r13,r12	;4
	.align 4
.L1335:
	blo_s	.L1376
	sub_s	r0,r0,r3
	mov_s	r12,16384	;13
	exth_s	r0,r0
	b.d	.L1340
	mov_s	r13,r12	;4
	.align 4
.L1372:
	b.d	.L1357
	mov	r12,1024	;6
	.align 4
.L1376:
	mov_s	r12,16384	;13
	b.d	.L1424
	lsr_s	r14,r12
	.align 4
.L1371:
	b.d	.L1357
	mov	r12,512	;6
	.align 4
.L1333:
	blo_s	.L1375
	sub_s	r0,r0,r3
	mov_s	r12,8192	;13
	exth_s	r0,r0
	b.d	.L1340
	mov_s	r13,r12	;4
	.align 4
.L1331:
	blo_s	.L1374
	sub_s	r0,r0,r3
	mov_s	r12,4096	;13
	exth_s	r0,r0
	b.d	.L1340
	mov_s	r13,r12	;4
	.align 4
.L1329:
	blo_s	.L1373
	sub_s	r0,r0,r3
	mov_s	r12,2048	;13
	exth_s	r0,r0
	b.d	.L1340
	mov_s	r13,r12	;4
	.align 4
.L1375:
	mov_s	r12,8192	;13
	b.d	.L1424
	lsr_s	r14,r12
	.align 4
.L1374:
	mov_s	r12,4096	;13
	b.d	.L1424
	lsr_s	r14,r12
	.align 4
.L1373:
	mov_s	r12,2048	;13
	b.d	.L1424
	lsr_s	r14,r12
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	mov.ls	r3,1
	bls.d	.L1450
	mov.ls	r12,0
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1449	; lp_count:@.L1426->@.L1449
	.align 2
.L1426:
	brlt	r1,0,.L1427
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1428
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1449:
	; ZOL_END, begins @.L1426
	.align 2
.L1429:
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1428:
	tst_s	r3,r3
	beq.d	.L1429
	mov.eq	r12,0
	.align 2
.L1427:
	mov_s	r12,0	;3
	.align 2
.L1432:
	cmp_s	r0,r1
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1432
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1444:
	cmp_s	r0,r1
	.align 4
.L1450:
	sub.hs	r0,r0,r1
	or.hs r12,r12,r3
	lsr.f	r3,r3,1
	bne.d	.L1444
	lsr_s	r1,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1452
	asl	r1,r0,r2
	mov_s	r2,0	;3
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.align 4
.L1452:
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
	bbit0	r2,5,@.L1458
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1458:
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
	blt_s	.L1473
	bgt_s	.L1474
	cmp_s	r0,r2
	blo_s	.L1473
	bhi_s	.L1474
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1473:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1474:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1480
	bgt_s	.L1479
	brlo	r0,r2,.L1480
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1480:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1479:
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
	bbit0.d	r2,5,@.L1485
	mov_s	r3,r1	;4
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L1485:
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
	bbit0.d	r2,0,@.L1505
	mov_s	r16,0	;4
	.align 2
.L1507:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L1505:
	div	r13,r13,2
	breq_s	r13,0,.L1506
	.align 2
.L1508:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L1507
	b.d	.L1508
	div	r13,r13,2
	.align 4
.L1506:
	brge	r18,0,.L1504
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	.align 2
.L1504:
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
	bbit0.d	r1,0,@.L1513
	mov_s	r14,r1	;4
	.align 2
.L1515:
	mov_s	r0,r15
	bl.d	@__mulsf3;1
	mov_s	r1,r13
	mov_s	r15,r0
	.align 2
.L1513:
	div	r14,r14,2
	breq_s	r14,0,.L1514
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1515
	mov_s	r13,r0
	div	r14,r14,2
	.align 2
.L1521:
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	bbit1.d	r14,0,@.L1515
	mov_s	r13,r0
	b.d	.L1521
	div	r14,r14,2
	.align 4
.L1514:
	brge	r16,0,.L1512
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r15
	mov_s	r15,r0
	.align 2
.L1512:
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
	blo_s	.L1526
	bhi_s	.L1527
	cmp_s	r0,r2
	blo_s	.L1526
	bhi_s	.L1527
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1526:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1527:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1533
	bhi_s	.L1532
	brlo	r0,r2,.L1533
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1533:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1532:
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
