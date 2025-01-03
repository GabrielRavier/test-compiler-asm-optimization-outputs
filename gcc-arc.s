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
	mov_s	r9,r3	;4
	sub_s	r2,r12,r1
	mov	lp_count,r2	;5
	lp	@.L43	; lp_count:@.L4->@.L43
	.align 2
.L4:
	ldb.a	r10,[r12,-1]
	stb.a	r10,[r9,-1]
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
	or	r14,r1,r0
	add_s	r15,r1,1   ;a,b,c/u3
	bmsk_s	r14,r14,1
	sub_s	r13,r0,r15
	seteq	r14,r14,0
	seths	r13,r13,3
	tst_s	r14,r13
	beq_s	.L5
	bmskn	r15,r2,1
	sub2	r3,r15,1 ;a,b,u6
	sub2	r4,r1,1 ;a,b,u6
	mov_s	r5,r0	;4
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L42	; lp_count:@.L6->@.L42
	.align 2
.L6:
	ld.a	r6,[r4,4]	;23
	st.ab	r6,[r5,4]	;26
	.align 2
.L42:
	; ZOL_END, begins @.L6
	add_s	r1,r1,r15   ;b,b,h
	breq.d	r2,r15,.L3
	sub_s	r12,r2,r15
	ldb_s	r2,[r1]
	breq.d	r12,1,.L3
	stb	r2,[r5]
	ldb_s	r14,[r1,1]
	breq.d	r12,2,.L3
	stb	r14,[r5,1]
	ldb_s	r1,[r1,2]
	stb	r1,[r5,2]
.L3:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L5:
	sub	r7,r0,1 ;a,b,u6
	b.d	.L9
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L41:
	add_s	r15,r15,1   ;b,b,h
	.align 2
.L9:
	ldb	r8,[r15,-1]
	brne.d	r15,r1,.L41
	stb.a	r8,[r7,1]
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
	add_s	r12,r0,1   ;a,b,c/u3
	.align 2
.L110:
	ldb.a	r3,[r1,1]
	mov_s	r0,r12	;4
	tst_s	r3,r3
	jeq.d	[blink]
	stb.ab	r3,[r12,1]
	ldb.a	r3,[r1,1]
	mov_s	r0,r12	;4
	brne.d	r3,0,.L110
	stb.ab	r3,[r12,1]
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
	mov_s	r1,r0	;4
	.align 2
.L141:
	ldb.a	r3,[r1,1]
	brne_s	r3,0,.L141
	j_s.d	[blink]
	sub_s	r0,r1,r0
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
	ldb_s	r12,[r0,1]
	add_s	r1,r1,2   ;b,b,h
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
	add	r1,r0,-8232     ;a,b,limm
	brls	r1,1,.L203
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
	add	r1,r0,-57344     ;a,b,limm
	brls	r1,8184,.L213
	add	r3,r0,-65532     ;a,b,limm
	brhi	r3,1048579,.L214
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
	fscmp	r0,r0
	jv	[blink]
	fscmp	r1,r1
	bv	.L236
	fscmpf	r0,r1
	ble_s	.L239
	j_s.d	[blink]
	fssub	r0,r0,r1
	.align 4
.L239:
	j_s.d	[blink]
	mov_s	r0,0x00000000
	.align 4
.L236:
	j_s.d	[blink]
	mov_s	r0,r1
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
	fscmp	r0,r0
	bv	.L255
	fscmp	r1,r1
	jv	[blink]
	mov_s	r2,r0	;4
	mov_s	r3,r1	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L254
	tst_s	r2,r2
	j_s.d	[blink]
	mov.ne	r0,r1
	.align 4
.L254:
	fscmpf	r0,r1
	j_s.d	[blink]
	mov.lo	r0,r1
	.align 4
.L255:
	j_s.d	[blink]
	mov_s	r0,r1
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
	fscmp	r0,r0
	bv	.L284
	fscmp	r1,r1
	jv	[blink]
	mov_s	r3,r0	;4
	mov_s	r12,r1	;4
	bmskn	r3,r3,30
	bmskn	r12,r12,30
	breq	r3,r12,.L283
	tst_s	r3,r3
	mov.ne	r1,r0
	j_s.d	[blink]
	mov_s	r0,r1
	.align 4
.L283:
	fscmpf	r0,r1
	mov.lo	r1,r0
	j_s.d	[blink]
	mov_s	r0,r1
	.align 4
.L284:
	j_s.d	[blink]
	mov_s	r0,r1
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
	brne	r0,0,.L294
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L295
	mov_s	r2,r17	;4
	mov_s	r3,r15	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	brne	r2,r3,.L298
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L288:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L298:
	tst_s	r2,r2
	mov.ne	r14,r16
	mov.ne	r15,r17
	vadd2	r0,r14,0
	b_s	.L288
	.align 4
.L294:
	vadd2	r0,r14,0
	b_s	.L288
	.align 4
.L295:
	vadd2	r0,r16,0
	b_s	.L288
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L300
	.align 2
.L301:
	and	r3,r0,63
	lsr.f	r0,r0,6
	ldb	r1,[r3,@digits]
	bne.d	.L301
	stb.ab	r1,[r2,1]
	.align 2
.L300:
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
	ld	r2,[@seed]	;23
	ld	r12,[@seed+4]	;23
	mpy	r3,r2,1481765933
	mpydu	r0,r2,1284865837
	mpy	r12,r12,1284865837
	add_s	r12,r12,r3   ;b,b,h
	add.f	r0,r0,1
	add_s	r1,r1,r12   ;b,b,h
	st	r0,[@seed]	;26
	add.cs	r1,r1,1
	st	r1,[@seed+4]	;26
	j_s.d	[blink]
	lsr_s	r0,r1
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	breq_s	r1,0,.L316
	ld_s	r2,[r1]		;15
	st_s	r2,[r0]		;16
	st_s	r1,[r0,4]		;16
	st_s	r0,[r1]		;16
	ld_s	r1,[r0]		;15
	tst_s	r1,r1
	jeq_s	[blink]
	j_s.d	[blink]
	st_s	r0,[r1,4]		;16
	.align 4
.L316:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L318
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L318:
	ld_s	r0,[r0,4]		;15
	tst_s	r0,r0
	jeq_s	[blink]
	j_s.d	[blink]
	st_s	r2,[r0]		;16
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
	breq.d	r16,0,.L328
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	b.d	.L330
	mov_s	r14,0	;3
	.align 4
.L343:
	breq.d	r16,r14,.L328
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L330:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl.d	[r18]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L343
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r19	;4
	.align 2
.L344:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L328:
	add	r2,r16,1 ;a,b,c/u6
	mpy	r16,r16,r15
	tst_s	r15,r15
	add	r19,r21,r16 ;a,b,c/u6
	st	r2,[r20]	;26
	mov_s.ne	r1,r17
	mov_s.ne	r2,r15
	mov_s.ne	r0,r19
	jlne	@memmove
	b.d	.L344
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
	breq	r19,0,.L346
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	b.d	.L348
	mov_s	r14,0	;3
	.align 4
.L357:
	breq.d	r19,r14,.L346
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L348:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl.d	[r16]
	mov_s	r18,r13	;4
	brne.d	r0,0,.L357
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L345:
	mov_s	r0,r18	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L346:
	b.d	.L345
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
.L380:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L380
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L380
	breq	r2,43,.L363
	breq	r2,45,.L364
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L372
	mov_s	r15,0	;3
	.align 2
.L366:
	mov_s	r0,0	;3
	.align 2
.L369:
	mpy	r12,r0,10
	ldb.a	r14,[r3,1]
	mov_s	r13,r2	;4
	sub_s	r0,r12,r2
	sub3	r2,r14,6 ;a,b,u6
	brls	r2,9,.L369
	brne_s	r15,0,.L360
	sub_s	r0,r13,r12
.L360:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L364:
	ldb_s	r1,[r3,1]
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r3,r3,1   ;b,b,h
	bls.d	.L366
	mov.ls	r15,1
	.align 2
.L372:
	b.d	.L360
	mov_s	r0,0	;3
	.align 4
.L363:
	ldb_s	r0,[r3,1]
	sub3	r2,r0,6 ;a,b,u6
	brhi.d	r2,9,.L372
	add_s	r3,r3,1   ;b,b,h
	b.d	.L366
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L403:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L403
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L403
	breq	r2,43,.L388
	breq	r2,45,.L406
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L396
	mov_s	r15,0	;3
	.align 2
.L390:
	mov_s	r0,0	;3
	.align 2
.L393:
	mpy	r12,r0,10
	ldb.a	r14,[r3,1]
	mov_s	r13,r2	;4
	sub_s	r0,r12,r2
	sub3	r2,r14,6 ;a,b,u6
	brls	r2,9,.L393
	brne_s	r15,0,.L385
	sub_s	r0,r13,r12
.L385:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L406:
	ldb_s	r1,[r3,1]
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	mov_s	r3,r0	;4
	bls.d	.L390
	mov.ls	r15,1
	.align 2
.L396:
	b.d	.L385
	mov_s	r0,0	;3
	.align 4
.L388:
	ldb_s	r0,[r3,1]
	sub3	r2,r0,6 ;a,b,u6
	brhi.d	r2,9,.L396
	add_s	r3,r3,1   ;b,b,h
	b.d	.L390
	mov_s	r15,0	;3
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	.align 2
.L427:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L427
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L427
	breq	r2,43,.L410
	brne	r2,45,.L433
	ldb_s	r1,[r3,1]
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r3,r3,1   ;b,b,h
	bhi.d	.L419
	mov.ls	r5,1
	.align 2
.L413:
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L416:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	asr	r14,r2,31
	ldb.a	r15,[r3,1]
	mov_s	r4,r2	;4
	sub3	r2,r15,6 ;a,b,u6
	sbc	r1,r13,r14
	brls	r2,9,.L416
	brne	r5,0,.L407
	sub.f	r0,r4,r12
	sbc	r1,r14,r13
.L407:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L433:
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L419
	.align 2
.L420:
	b.d	.L413
	mov_s	r5,0	;4
	.align 4
.L410:
	ldb_s	r0,[r3,1]
	sub3	r2,r0,6 ;a,b,u6
	brls.d	r2,9,.L420
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L419:
	mov_s	r0,0	;3
	j_s.d	[blink]
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
	beq_s	.L435
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	b.d	.L438
	mov_s	r19,r4	;4
	.align 4
.L445:
	beq_s	.L434
	sub_s	r13,r13,r15
	breq.d	r13,0,.L435
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L438:
	lsr_s	r15,r13
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	tst_s	r0,r0
	bp	.L445
	mov_s	r13,r15	;4
	brne_s	r13,0,.L438
	.align 2
.L435:
	mov_s	r14,0	;3
	.align 2
.L434:
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
	beq.d	.L451
	mov_s	r20,r5	;4
	.align 2
.L459:
	asr_s	r15,r13,1
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r2,r20	;4
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	breq_s	r0,0,.L446
	brle	r0,0,.L449
	asr.f	r13,r13,1
	bne.d	.L459
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L451:
	mov_s	r14,0	;3
	.align 2
.L446:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
	.align 4
.L449:
	breq_s	r15,0,.L451
	b.d	.L459
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
	breq_s	r2,0,.L480
	.align 2
.L477:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L477
	.align 2
.L480:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L488
	b_s	.L487
	.align 4
.L489:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L487
	.align 2
.L488:
	brne_s	r2,0,.L489
	.align 2
.L487:
	brlt	r2,r3,.L491
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L491:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L494:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L494
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L502
	mov_s	r1,r0	;4
	.align 2
.L501:
	ld.a	r3,[r1,4]	;23
	brne_s	r3,0,.L501
	sub_s	r0,r1,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L502:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L511
	push_s	r14
	push_s	r13
	mov	lp_count,r2	;5
	lp	@.L521	; lp_count:@.L507->@.L521
	.align 2
.L507:
	mov_s	r12,r1	;4
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld_s	r13,[r12]		;15
	brne.d	r3,r13,.L508
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L508
	nop_s
	.align 2
.L521:
	; ZOL_END, begins @.L507
	mov_s	r0,0	;3
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L508:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L511:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L530
	mov_s.ne	r3,r0
	.align 2
.L535:
	mov	lp_count,r2	;5
	lp	@.L534	; lp_count:@.L524->@.L534
	.align 2
.L524:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L534:
	; ZOL_END, begins @.L524
	.align 2
.L530:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L547
	.align 2
.L554:
	mov	lp_count,r2	;5
	lp	@.L553	; lp_count:@.L538->@.L553
	.align 2
.L538:
	ld_s	r12,[r1]		;15
	add_s	r0,r0,4   ;b,b,h
	ld	r3,[r0,-4]	;23
	cmp_s	r3,r12
	bne.d	.L551
	add_s	r1,r1,4   ;b,b,h
	nop_s
	.align 2
.L553:
	; ZOL_END, begins @.L538
	.align 2
.L547:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L551:
	blt_s	.L552
	j_s.d	[blink]
	setgt	r0,r3,r12
	.align 4
.L552:
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
	brlo	r12,r3,.L563
	tst_s	r2,r2
	jeq_s	[blink]
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r14,r2,1 ;a,b,u6
	brls.d	r14,23,.L567
	add_s	r15,r1,4   ;a,b,c/u3
	add_s	r13,r1,4   ;a,b,c/u3
	breq.d	r13,r0,.L567
	mov_s	r15,r13	;4
	bbit0.d	r0,2,@.L574
	xbfu	r12,r0,2
	mov_s	r4,r0	;4
	ld_s	r3,[r1]		;15
	st.ab	r3,[r4,4]	;26
	.align 2
.L568:
	sub_s	r2,r2,r12
	add2	r5,-8,r12
	add2	r6,r0,r12
	add_s	r1,r1,r5   ;b,b,h
	lsr_s	r12,r2
	mov	lp_count,r12	;5
	lp	@.L592	; lp_count:@.L569->@.L592
	.align 2
.L569:
	ldd.a	r8,[r1,8]
	std.ab	r8,[r6,8]
	.align 2
.L592:
	; ZOL_END, begins @.L569
	bbit0	r2,0,@.L576
	bclr_s	r2,r2,0
	add2_s	r13,r13,r2
	add2	r2,r4,r2
	ld_s	r1,[r13]		;15
	st_s	r1,[r2]		;16
.L576:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L563:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	add_s	r1,r1,r3   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L591	; lp_count:@.L566->@.L591
	.align 2
.L566:
	ld.a	r10,[r1,-4]	;23
	st.a	r10,[r3,-4]	;26
	.align 2
.L591:
	; ZOL_END, begins @.L566
	j_s	[blink]
	.align 4
.L574:
	mov_s	r13,r1	;4
	b.d	.L568
	mov_s	r4,r0	;4
	.align 4
.L567:
	b.d	.L572
	sub2	r7,r0,1 ;a,b,u6
	.align 4
.L590:
	add_s	r15,r15,4   ;b,b,h
	.align 2
.L572:
	ld	r9,[r15,-4]	;23
	add_s	r14,r14,-1   ;h,h,s3
	st.a	r9,[r7,4]	;26
	brne	r14,-1,.L590
	b_s	.L576
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
	brls.d	r13,5,.L599
	xbfu	r12,r0,2
	bbit0.d	r3,0,@.L596
	mov_s	r4,r0	;4
	sub1	r13,r2,1 ;a,b,u6
	st.ab	r1,[r4,4]	;26
	.align 2
.L596:
	sub_s	r2,r2,r12
	mov_s	r15,r1	;4
	mov_s	r14,r1	;4
	add2	r5,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L625	; lp_count:@.L597->@.L625
	.align 2
.L597:
	std.ab	r14,[r5,8]
	.align 2
.L625:
	; ZOL_END, begins @.L597
	bbit0	r2,0,@.L594
	bclr_s	r2,r2,0
	sub_s	r13,r13,r2
	add2	r2,r4,r2
	.align 2
.L595:
	breq.d	r13,0,.L594
	st_s	r1,[r2]		;16
	breq.d	r13,1,.L594
	st_s	r1,[r2,4]		;16
	breq.d	r13,2,.L594
	st_s	r1,[r2,8]		;16
	breq.d	r13,3,.L594
	st_s	r1,[r2,12]		;16
	breq.d	r13,4,.L594
	st_s	r1,[r2,16]		;16
	st_s	r1,[r2,20]		;16
.L594:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L599:
	b.d	.L595
	mov_s	r2,r0	;4
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L627
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r12,r3,r0
	mov	lp_count,r12	;5
	lp	@.L667	; lp_count:@.L629->@.L667
	.align 2
.L629:
	ldb.a	r7,[r3,-1]
	stb.a	r7,[r1,-1]
	.align 2
.L667:
	; ZOL_END, begins @.L629
	j_s	[blink]
	.align 4
.L627:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L664
	push_s	r14
	push_s	r13
	or	r14,r1,r0
	add_s	r3,r0,1   ;a,b,c/u3
	bmsk_s	r14,r14,1
	sub_s	r13,r1,r3
	seteq	r14,r14,0
	seths	r13,r13,3
	tst_s	r14,r13
	beq_s	.L630
	bmskn	r14,r2,1
	sub2	r3,r14,1 ;a,b,u6
	sub2	r4,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L666	; lp_count:@.L631->@.L666
	.align 2
.L631:
	ld.a	r5,[r4,4]	;23
	st.ab	r5,[r1,4]	;26
	.align 2
.L666:
	; ZOL_END, begins @.L631
	add_s	r0,r0,r14   ;b,b,h
	breq.d	r2,r14,.L626
	sub_s	r12,r2,r14
	ldb_s	r2,[r0]
	breq.d	r12,1,.L626
	stb_s	r2,[r1]
	ldb_s	r13,[r0,1]
	breq.d	r12,2,.L626
	stb_s	r13,[r1,1]
	ldb_s	r0,[r0,2]
	stb_s	r0,[r1,2]
	.align 2
.L626:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L630:
	add_s	r1,r1,-1   ;h,h,s3
	b.d	.L634
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L665:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L634:
	ldb	r6,[r3,-1]
	brne.d	r3,r0,.L665
	stb.a	r6,[r1,1]
	b_s	.L626
	.align 4
.L664:
	add_s	r12,r0,1   ;a,b,c/u3
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L661:
	ldb	r2,[r12,-1]
	cmp_s	r12,r0
	jeq.d	[blink]
	stb.a	r2,[r1,1]
	b.d	.L661
	add_s	r12,r12,1   ;b,b,h
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	std.a	r14,[sp,-8]
	push_s	r13
	neg_s	r14,r2
	and	r13,r14,63
	not	r4,r2
	not_s	r15,r13
	lsr_s	r12,r0
	asl_s	r3,r1,1
	asl	r5,r1,r2
	btst_s	r2,5
	lsr	r12,r12,r4
	asl	r2,r0,r2
	lsr_s	r1,r1,r13
	lsr_s	r0,r0,r13
	or	r12,r12,r5
	asl_s	r3,r3,r15
	mov_s	r15,r2	;4
	mov.eq	r15,r12
	sub.ne	r2,r2,r2
	or_s	r3,r3,r0
	btst_s	r14,5
	mov_s	r0,r1	;4
	mov.eq	r0,r3
	sub.ne	r1,r1,r1
	or_s	r0,r0,r2
	or_s	r1,r1,r15
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
	neg_s	r14,r2
	and	r13,r14,63
	not	r4,r2
	not_s	r15,r13
	asl_s	r12,r1,1
	lsr_s	r3,r0
	lsr	r5,r0,r2
	btst_s	r2,5
	asl	r12,r12,r4
	lsr	r2,r1,r2
	asl_s	r0,r0,r13
	asl_s	r1,r1,r13
	or	r12,r12,r5
	lsr_s	r3,r3,r15
	mov_s	r15,r2	;4
	mov.eq	r15,r12
	sub.ne	r2,r2,r2
	or_s	r3,r3,r1
	btst_s	r14,5
	mov_s	r1,r0	;4
	mov.eq	r1,r3
	sub.ne	r0,r0,r0
	or_s	r0,r0,r15
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
	lp	@.L702	; lp_count:@.L697->@.L702
	.align 2
.L697:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L701
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L702:
	; ZOL_END, begins @.L697
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L701:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L706
	bbit1.d	r2,0,@.L710
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L705:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L705
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L710:
	j_s	[blink]
	.align 4
.L706:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	fscmpf	r0,0xff7fffff
	blo_s	.L713
	fscmpf	r0,0x7f7fffff
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L713:
	j_s.d	[blink]
	mov_s	r0,1	;3
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
	bn.d	.L715
	mov.n	r0,1
	vadd2	r0,r14,0
	mov_s	r3,2146435071	;13
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L715:
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
	fscmp	r0,r0
	jv	[blink]
	fsadd	r2,r0,r0
	fscmp	r2,r0
	jeq_s	[blink]
	tst_s	r1,r1
	mov_s	r3,0x3f000000 ; 5.0e-1
	mov.p	r3,0x40000000 ; 2.0e+0
	bbit0	r1,0,@.L730
	.align 2
.L731:
	fsmul	r0,r0,r3
	.align 2
.L730:
	div	r1,r1,2
	tst_s	r1,r1
	jeq_s	[blink]
	bbit1.d	r1,0,@.L731
	fsmul	r3,r3,r3
	div	r1,r1,2
	.align 2
.L739:
	bbit1.d	r1,0,@.L731
	fsmul	r3,r3,r3
	b.d	.L739
	div	r1,r1,2
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
	brne	r0,0,.L741
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L741
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L744
	.align 2
.L745:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L744:
	div	r13,r13,2
	breq_s	r13,0,.L741
	.align 2
.L746:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L745
	b.d	.L746
	div	r13,r13,2
	.align 4
.L741:
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
	brne	r0,0,.L754
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L754
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	bbit0	r13,0,@.L757
	.align 2
.L758:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L757:
	div	r13,r13,2
	breq_s	r13,0,.L754
	.align 2
.L759:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L758
	b.d	.L759
	div	r13,r13,2
	.align 4
.L754:
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
	brls	r3,3,.L768
	or	r4,r0,r1
	tst	r4,3
	bne_s	.L768
	bmskn	r6,r2,1
	sub2	r12,r6,1 ;a,b,u6
	sub2	r14,r1,1 ;a,b,u6
	add	r5,r0,r6 ;a,b,c/u6
	mov_s	r13,r0	;4
	lsr_s	r12,r12,2
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L791	; lp_count:@.L769->@.L791
	.align 2
.L769:
	ld_s	r15,[r13]		;15
	ld.a	r3,[r14,4]	;23
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	.align 2
.L791:
	; ZOL_END, begins @.L769
	add_s	r1,r1,r6   ;b,b,h
	breq.d	r6,r2,.L767
	sub	r14,r2,r6
	ldb	r2,[r5]
	ldb_s	r12,[r1]
	xor_s	r2,r2,r12
	breq.d	r14,1,.L767
	stb	r2,[r5]
	ldb	r13,[r5,1]
	ldb_s	r15,[r1,1]
	xor_s	r15,r15,r13
	breq.d	r14,2,.L767
	stb	r15,[r5,1]
	ldb	r3,[r5,2]
	ldb_s	r1,[r1,2]
	xor_s	r1,r1,r3
	stb	r1,[r5,2]
.L767:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L768:
	mov_s	r7,r0	;4
	mov	lp_count,r2	;5
	lp	@.L790	; lp_count:@.L771->@.L790
	.align 2
.L771:
	ldb.ab	r14,[r7,1]
	ldb.ab	r12,[r1,1]
	xor_s	r12,r12,r14
	stb	r12,[r7,-1]
	.align 2
.L790:
	; ZOL_END, begins @.L771
	b_s	.L767
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	breq.d	r3,0,.L793
	mov_s	r4,r0	;4
	.align 2
.L794:
	ldb.a	r12,[r4,1]
	brne_s	r12,0,.L794
	.align 2
.L793:
	breq_s	r2,0,.L795
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L808	; lp_count:@.L796->@.L808
	.align 2
.L796:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r4,1]
	nop_s
	.align 2
.L808:
	; ZOL_END, begins @.L796
	.align 2
.L795:
	stb	0,[r4]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	breq_s	r1,0,.L813
	sub	r2,r0,1 ;a,b,u6
	mov_s	r0,0	;3
	mov	lp_count,r1	;5
	lp	@.L819	; lp_count:@.L811->@.L819
	.align 2
.L811:
	ldb.a	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L819:
	; ZOL_END, begins @.L811
	j_s	[blink]
	.align 4
.L813:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L827
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L821:
	b.d	.L824
	mov_s	r3,r13	;4
	.align 4
.L823:
	breq	r2,r12,.L822
	.align 2
.L824:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L823
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L821
	mov_s	r0,0	;3
.L822:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L827:
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
.L833:
	ldb_s	r3,[r2]
	cmp_s	r3,r1
	mov.eq	r0,r2
	tst_s	r3,r3
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	ldb_s	r3,[r2]
	cmp_s	r3,r1
	mov.eq	r0,r2
	brne.d	r3,0,.L833
	add_s	r2,r2,1   ;b,b,h
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	std.a	r14,[sp,-8]
	push_s	r13
	ldb_s	r14,[r1]
	breq.d	r14,0,.L850
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L840:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L840
	sub.f	r2,r2,r1
	beq_s	.L850
	b.d	.L848
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L858:
	breq_s	r2,0,.L857
	.align 2
.L848:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r2,r14,.L858
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L842
	mov_s	r12,r0	;4
	.align 4
.L860:
	breq	r12,r15,.L844
	brne	r3,r2,.L845
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L859
	ldb.a	r3,[r13,1]
	.align 2
.L842:
	brne_s	r3,0,.L860
	.align 2
.L845:
	b.d	.L848
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L857:
	mov_s	r0,0	;3
.L838:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L859:
	ldb_s	r3,[r13,1]
	.align 2
.L844:
	breq	r2,r3,.L838
	b.d	.L848
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L850:
	b.d	.L838
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
	brlt	r0,0,.L872
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L865
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L864
	.align 2
.L865:
	vadd2	r0,r14,0
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L872:
	vadd2	r0,r16,0
	mov_s	r2,0	;3
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L865
	.align 2
.L864:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b_s	.L865
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq_s	[blink]
	brlo	r1,r3,.L882
	sub_s	r1,r1,r3
	add.f	r5,r0,r1
	blo	.L882
	std.a	r14,[sp,-8]
	push_s	r13
	b.d	.L879
	ldb	r6,[r2]
	.align 4
.L875:
	brlo	r5,r0,.L884
	.align 2
.L879:
	mov_s	r13,r0	;4
	ldb.ab	r12,[r13,1]
	cmp_s	r12,r6
	bne.d	.L875
	mov_s.ne	r0,r13
	breq	r3,1,.L873
	.align 2
.L878:
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r9,r3,1 ;a,b,u6
	mov	lp_count,r9	;5
	lp	@.L901	; lp_count:@.L876->@.L901
	.align 2
.L876:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L900
	nop_s
	.align 2
.L901:
	; ZOL_END, begins @.L876
.L873:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L900:
	brlo	r5,r13,.L884
	mov_s	r0,r13	;4
	ldb.ab	r7,[r0,1]
	brne	r6,r7,.L875
	mov_s	r8,r13	;4
	mov_s	r13,r0	;4
	b.d	.L878
	mov_s	r0,r8	;4
	.align 4
.L884:
	b.d	.L873
	mov_s	r0,0	;3
	.align 4
.L882:
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
	bn	.L931
	vadd2	r0,r14,0
	mov_s	r3,1072693248	;13
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bn.d	.L932
	mov.p	r21,0
	.align 2
.L911:
	mov_s	r13,0	;3
	mov_s	r18,0	;4
	mov_s	r19,1071644672	;13
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L917:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__gedf2;1
	brge	r0,0,.L917
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	breq.d	r21,0,.L933
	bxor	r1,r15,31
.L908:
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L933:
	vadd2	r0,r14,0
	b_s	.L908
	.align 4
.L932:
	vadd2	r0,r14,0
	mov_s	r3,1071644672	;13
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L914
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	brne	r0,0,.L923
	.align 2
.L914:
	vadd2	r0,r14,0
	st	0,[r20]	;37
	b_s	.L908
	.align 4
.L931:
	vadd2	r0,r14,0
	mov_s	r2,0	;3
	mov_s	r3,-1074790400	;13
	bl.d	@__ledf2;1
	mov_s	r16,r14	;4
	brgt.d	r0,0,.L934
	bxor	r17,r15,31
	vadd2	r14,r16,0
	b.d	.L911
	mov_s	r21,1	;4
	.align 4
.L934:
	vadd2	r0,r14,0
	mov_s	r3,-1075838976	;13
	bl.d	@__gtdf2;1
	mov_s	r2,0	;3
	brle	r0,0,.L914
	mov_s	r21,1	;4
	.align 2
.L912:
	vadd2	r14,r16,0
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	.align 2
.L919:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r16,0
	vadd2	r14,r0,0
	bl	@__ltdf2;1
	brlt	r0,0,.L919
	st	r13,[r20]	;26
	mov_s	r0,r14	;4
	tst	r21,r21
	bne.d	.L908
	bxor	r1,r15,31
	b_s	.L933
	.align 4
.L923:
	vadd2	r16,r14,0
	b.d	.L912
	mov_s	r21,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	or.f	0,r0,r1
	beq.d	.L939
	mov_s	r14,r1	;4
	mov_s	r13,r0	;4
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L938:
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
	bne_s	.L938
.L935:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L939:
	mov_s	r0,0	;3
	b.d	.L935
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	brhs	r1,r0,.L966
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L967	; lp_count:@.L943->@.L967
	.align 2
.L943:
	brlt	r1,0,.L948
	asl_s	r1,r1,1
	brls.d	r0,r1,.L945
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L967:
	; ZOL_END, begins @.L943
	.align 2
.L946:
	tst_s	r2,r2
	.align 2
.L968:
	mov.eq	r0,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L945:
	tst_s	r3,r3
	beq.d	.L946
	mov.eq	r12,0
	.align 2
.L948:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L949:
	seths	r14,r0,r1
	tst_s	r14,r14
	mov_s	r13,r15	;4
	sub_s	r14,r0,r1
	mov.ne	r13,r3
	mov.ne	r0,r14
	or_s	r12,r12,r13
	lsr.f	r3,r3,1
	bne.d	.L949
	lsr_s	r1,r1
	b.d	.L968
	tst_s	r2,r2
	.align 4
.L966:
	seths	r12,r0,r1
	tst_s	r12,r12
	sub_s	r1,r0,r1
	mov.ne	r0,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L971
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L971:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L982
	xor	r12,r1,r3
	.align 2
.L979:
	fls	r0,r2
	brne.d	r12,0,.L983
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L983:
	fls	r0,r12
	rsub	r0,r0,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L982:
	brne	r1,r0,.L979
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
.L986:
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
	bne.d	.L986
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L996
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1030 ;brhs out of range
	.align 2
.L996:
	tst_s	r3,r3
	beq_s	.L1031
	std.a	r14,[sp,-8]
	push_s	r13
	add3	r3,-8,r3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r7,r0,1 ;a,b,u6
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1036	; lp_count:@.L999->@.L1036
	.align 2
.L999:
	ldd.a	r14,[r13,8]
	std.a	r14,[r7,8]
	.align 2
.L1036:
	; ZOL_END, begins @.L999
	brls	r2,r4,.L992
	sub	r15,r2,r4
	sub	r12,r15,1 ;a,b,u6
	brls	r12,6,.L1001
	add	r13,r0,r4 ;a,b,c/u6
	add	r8,r1,r4 ;a,b,c/u6
	add	r3,r4,1 ;a,b,c/u6
	add_s	r3,r3,r1   ;b,b,h
	or	r14,r8,r13
	sub_s	r12,r13,r3
	bmsk_s	r14,r14,1
	seths	r12,r12,3
	seteq	r14,r14,0
	tst_s	r12,r14
	beq_s	.L1001
	bmskn	r9,r15,1
	sub2	r3,r9,1 ;a,b,u6
	sub2	r10,r8,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1035	; lp_count:@.L1002->@.L1035
	.align 2
.L1002:
	ld.a	r11,[r10,4]	;23
	st.ab	r11,[r13,4]	;26
	.align 2
.L1035:
	; ZOL_END, begins @.L1002
	breq.d	r15,r9,.L992
	add	r4,r4,r9   ;(p)b,b,c/u6
	add	r30,r1,r4 ;a,b,c/u6
	add	r58,r0,r4 ;a,b,c/u6
	add	r15,r4,1 ;a,b,c/u6
	ldb	r13,[r30]
	brls.d	r2,r15,.L992
	stb	r13,[r58]
	add_s	r14,r1,r15   ;a,b,c/u3
	add_s	r15,r15,r0   ;b,b,h
	add_s	r4,r4,2   ;h,h,s3
	cmp_s	r2,r4
	ldb_s	r2,[r14]
	bls.d	.L992
	stb_s	r2,[r15]
	add_s	r1,r1,r4   ;b,b,h
	add	r4,r4,r0   ;(p)b,b,c/u6
	ldb_s	r1,[r1]
	stb	r1,[r4]
	.align 2
.L992:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1030:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L1034	; lp_count:@.L1006->@.L1034
	.align 2
.L1006:
	ldb.a	r0,[r3,-1]
	stb.a	r0,[r2,-1]
	.align 2
.L1034:
	; ZOL_END, begins @.L1006
	j_s	[blink]
	.align 4
.L1001:
	add_s	r4,r4,-1   ;h,h,s3
	sub	r5,r1,1 ;a,b,u6
	add_s	r2,r2,r5   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1033	; lp_count:@.L1004->@.L1033
	.align 2
.L1004:
	ldb.a	r59,[r1,1]
	stb.a	r59,[r4,1]
	.align 2
.L1033:
	; ZOL_END, begins @.L1004
	b_s	.L992
	.align 4
.L1031:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r5,r1,1 ;a,b,u6
	add_s	r2,r2,r5   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1032	; lp_count:@.L1025->@.L1032
	.align 2
.L1025:
	ldb.a	r6,[r1,1]
	stb.a	r6,[r4,1]
	.align 2
.L1032:
	; ZOL_END, begins @.L1025
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	brlo.d	r0,r1,.L1041
	lsr	r4,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	cmp_s	r3,r0
	bhs	.L1068
	.align 2
.L1041:
	tst	r4,r4
	beq_s	.L1069
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r13,r4,1 ;a,b,u6
	cmp_s	r13,11
	bls	.L1044
	add_s	r14,r1,2   ;a,b,c/u3
	sub_s	r15,r0,r14
	cmp	r15,4
	bls	.L1044 ;brls out of range
	lsr_s	r3,r0
	neg_s	r3,r3
	tst	r3,3
	and	r12,r3,3
	beq.d	.L1045
	mov.eq	r6,0
	ldh_s.x	r13,[r1]
	bbit0.d	r3,1,@.L1054
	sth_s	r13,[r0]
	ldh_s.x	r14,[r1,2]
	cmp_s	r12,3
	sth_s	r14,[r0,2]
	bne.d	.L1045
	mov.ne	r6,2
	mov_s	r6,3	;4
	ldh_s.x	r15,[r1,4]
	sth_s	r15,[r0,4]
	.align 2
.L1045:
	sub	r5,r4,r12
	add1	r13,-8,r12
	add1	r7,r0,r12
	add_s	r13,r13,r1   ;b,b,h
	lsr	r8,r5,2
	add3	r3,-8,r8
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1073	; lp_count:@.L1047->@.L1073
	.align 2
.L1047:
	ldd.a	r10,[r13,8]
	std.ab	r10,[r7,8]
	.align 2
.L1073:
	; ZOL_END, begins @.L1047
	bmskn	r3,r5,1
	tst	r5,3
	beq.d	.L1040
	add_s	r3,r3,r6   ;b,b,h
	add1	r6,r0,r3
	ldh.x.as	r14,[r1,r3]
	add_s	r15,r3,1   ;a,b,c/u3
	asl_s	r12,r3,1
	brls.d	r4,r15,.L1040
	sth	r14,[r6]
	mov_s	r13,r12	;4
	add_s	r14,r1,r12   ;a,b,c/u3
	add_s	r13,r13,r0   ;b,b,h
	add_s	r3,r3,2   ;b,b,h
	cmp	r4,r3
	ldh_s.x	r3,[r14,2]
	bls.d	.L1040
	sth_s	r3,[r13,2]
	add_s	r15,r1,r12   ;a,b,c/u3
	add_s	r12,r12,r0   ;b,b,h
	ldh_s.x	r13,[r15,4]
	sth_s	r13,[r12,4]
	.align 2
.L1040:
	bbit0	r2,0,@.L1037
	add_s	r1,r1,r2   ;b,b,h
	.align 2
.L1074:
	add_s	r2,r2,r0   ;b,b,h
	ldb	r1,[r1,-1]
	stb	r1,[r2,-1]
	.align 2
.L1037:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1068:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r3,r1
	mov	lp_count,r1	;5
	lp	@.L1072	; lp_count:@.L1052->@.L1072
	.align 2
.L1052:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1072:
	; ZOL_END, begins @.L1052
	j_s	[blink]
	.align 4
.L1054:
	b.d	.L1045
	mov_s	r6,1	;4
	.align 4
.L1044:
	add1	r14,-2,r4
	sub1	r9,r1,1 ;a,b,u6
	sub1	r11,r0,1 ;a,b,u6
	lsr_s	r12,r14
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L1071	; lp_count:@.L1049->@.L1071
	.align 2
.L1049:
	ldh.x.a	r30,[r9,2]
	sth.a	r30,[r11,2]
	.align 2
.L1071:
	; ZOL_END, begins @.L1049
	bbit0	r2,0,@.L1037
	b.d	.L1074
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L1069:
	bbit0	r2,0,@.L1075
	add_s	r1,r1,r2   ;b,b,h
	add_s	r2,r2,r0   ;b,b,h
	ldb	r0,[r1,-1]
	stb	r0,[r2,-1]
	.align 2
.L1075:
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	brlo.d	r0,r1,.L1082
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1110
	.align 2
.L1082:
	tst_s	r3,r3
	beq_s	.L1111
	sub	r13,r3,1 ;a,b,u6
	cmp_s	r13,23
	bls	.L1084
	add_s	r14,r1,4   ;a,b,c/u3
	cmp_s	r0,r14
	beq_s	.L1084
	xbfu	r12,r0,2
	bbit0.d	r0,2,@.L1085
	mov_s	r6,0	;4
	mov_s	r6,r12	;4
	ld_s	r13,[r1]		;15
	st_s	r13,[r0]		;16
	.align 2
.L1085:
	sub_s	r13,r3,r12
	add2	r14,-8,r12
	add2	r7,r0,r12
	add_s	r14,r14,r1   ;b,b,h
	lsr_s	r3,r13
	add3	r12,-8,r3
	lsr_s	r12,r12,3
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L1117	; lp_count:@.L1086->@.L1117
	.align 2
.L1086:
	ldd.a	r4,[r14,8]
	std.ab	r4,[r7,8]
	.align 2
.L1117:
	; ZOL_END, begins @.L1086
	bbit0	r13,0,@.L1089
	bclr_s	r13,r13,0
	add_s	r13,r13,r6   ;b,b,h
	add2	r5,r1,r13
	add2	r8,r0,r13
	ld	r14,[r5]	;23
	st	r14,[r8]	;26
	.align 2
.L1089:
	brls	r2,r15,.L1077
	sub	r30,r2,r15
	sub	r12,r30,1 ;a,b,u6
	brls	r12,6,.L1080
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
	beq_s	.L1080
	bmskn	r6,r30,1
	sub2	r3,r6,1 ;a,b,u6
	sub2	r58,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1116	; lp_count:@.L1090->@.L1116
	.align 2
.L1090:
	ld.a	r59,[r58,4]	;23
	st.ab	r59,[r13,4]	;26
	.align 2
.L1116:
	; ZOL_END, begins @.L1090
	breq.d	r6,r30,.L1077
	add_s	r15,r15,r6   ;b,b,h
	add_s	r13,r1,r15   ;a,b,c/u3
	add_s	r12,r0,r15   ;a,b,c/u3
	add_s	r14,r15,1   ;a,b,c/u3
	ldb_s	r3,[r13]
	brls.d	r2,r14,.L1077
	stb_s	r3,[r12]
	add_s	r13,r1,r14   ;a,b,c/u3
	add_s	r14,r14,r0   ;b,b,h
	add_s	r15,r15,2   ;b,b,h
	cmp_s	r2,r15
	ldb_s	r2,[r13]
	bls.d	.L1077
	stb_s	r2,[r14]
	add_s	r1,r1,r15   ;b,b,h
	add_s	r15,r15,r0   ;b,b,h
	ldb_s	r1,[r1]
	stb_s	r1,[r15]
	.align 2
.L1077:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1110:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r2,r2,r0
	beq.d	.L1077
	rsub.ne	r1,r1,r3
	.align 2
.L1115:
	mov	lp_count,r1	;5
	lp	@.L1114	; lp_count:@.L1094->@.L1114
	.align 2
.L1094:
	ldb.a	r0,[r3,-1]
	stb.a	r0,[r2,-1]
	.align 2
.L1114:
	; ZOL_END, begins @.L1094
	b_s	.L1077
	.align 4
.L1084:
	add2	r3,-4,r3
	sub2	r9,r1,1 ;a,b,u6
	sub2	r10,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1113	; lp_count:@.L1088->@.L1113
	.align 2
.L1088:
	ld.a	r11,[r9,4]	;23
	st.a	r11,[r10,4]	;26
	.align 2
.L1113:
	; ZOL_END, begins @.L1088
	b_s	.L1089
	.align 4
.L1111:
	breq_s	r2,0,.L1077
	.align 2
.L1080:
	add_s	r15,r15,-1   ;h,h,s3
	sub	r7,r1,1 ;a,b,u6
	add_s	r2,r2,r7   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	sub_s	r2,r2,r1
	add_s	r15,r15,r0   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L1112	; lp_count:@.L1092->@.L1112
	.align 2
.L1092:
	ldb.a	r0,[r1,1]
	stb.a	r0,[r15,1]
	.align 2
.L1112:
	; ZOL_END, begins @.L1092
	b_s	.L1077
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
	j_s.d	[blink]
	fcvt32 r0,r0,0x00	;fuint2s r0,r0
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
	bbit1	r0,15,@.L1133
	exth_s	r2,r0
	asr.f	r0,r2,14
	jne_s	[blink]
	lsr.f	0,r2,13
	bne_s	.L1134
	lsr.f	0,r2,12
	bne_s	.L1135
	lsr.f	0,r2,11
	bne_s	.L1136
	lsr.f	0,r2,10
	bne_s	.L1137
	lsr.f	0,r2,9
	bne_s	.L1138
	lsr.f	0,r2,8
	bne_s	.L1139
	lsr.f	0,r2,7
	bne_s	.L1140
	lsr.f	0,r2,6
	bne_s	.L1141
	lsr.f	0,r2,5
	bne_s	.L1142
	lsr.f	0,r2,4
	bne_s	.L1143
	lsr.f	0,r2,3
	bne_s	.L1144
	lsr.f	0,r2,2
	bne_s	.L1145
	lsr.f	0,r2,1
	bne_s	.L1146
	tst_s	r2,r2
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1133:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1144:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1134:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1135:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1136:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1137:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1138:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1139:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1140:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1141:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1142:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1143:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1145:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1146:
	j_s.d	[blink]
	mov_s	r0,14	;3
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	bbit1	r0,0,@.L1152
	exth_s	r2,r0
	bbit1	r2,1,@.L1153
	bbit1	r2,2,@.L1154
	bbit1	r2,3,@.L1155
	bbit1	r2,4,@.L1156
	bbit1	r2,5,@.L1157
	bbit1	r2,6,@.L1158
	bbit1	r2,7,@.L1159
	bbit1	r2,8,@.L1160
	bbit1	r2,9,@.L1161
	bbit1	r2,10,@.L1162
	bbit1	r2,11,@.L1163
	bbit1	r2,12,@.L1164
	bbit1	r2,13,@.L1165
	bbit1	r2,14,@.L1166
	lsr.f	0,r2,15
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1152:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1153:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1164:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1154:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1155:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1156:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1157:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1158:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1159:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1160:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1161:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1162:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1163:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1165:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1166:
	j_s.d	[blink]
	mov_s	r0,14	;3
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	fscmpf	r0,0x47000000
	fssub.ge	r0,r0,0x47000000
	fcvt32.ge r0,r0,0x0B	;fs2int_rz r0,r0
	add.ge r0,r0,32768
	j_s.d	[blink]
	fcvt32.lt r0,r0,0x0B	;fs2int_rz r0,r0
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	and	r3,r0,1
	xbfu	r2,r0,1
	xbfu	r1,r0,2
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r4,r0,3
	add_s	r2,r2,r1   ;b,b,h
	xbfu	r5,r0,4
	add_s	r2,r2,r4   ;b,b,h
	xbfu	r6,r0,5
	add_s	r2,r2,r5   ;b,b,h
	xbfu	r7,r0,6
	add_s	r2,r2,r6   ;b,b,h
	xbfu	r8,r0,7
	add_s	r2,r2,r7   ;b,b,h
	xbfu	r9,r0,8
	add_s	r2,r2,r8   ;b,b,h
	xbfu	r10,r0,9
	add_s	r2,r2,r9   ;b,b,h
	xbfu	r11,r0,10
	add_s	r2,r2,r10   ;b,b,h
	xbfu	r12,r0,11
	add_s	r2,r2,r11   ;b,b,h
	xbfu	r3,r0,12
	add_s	r2,r2,r12   ;b,b,h
	xbfu	r1,r0,13
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r4,r0,14
	add_s	r2,r2,r1   ;b,b,h
	add_s	r2,r2,r4   ;b,b,h
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
	xbfu	r1,r0,2
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r4,r0,3
	add_s	r2,r2,r1   ;b,b,h
	xbfu	r5,r0,4
	add_s	r2,r2,r4   ;b,b,h
	xbfu	r6,r0,5
	add_s	r2,r2,r5   ;b,b,h
	xbfu	r7,r0,6
	add_s	r2,r2,r6   ;b,b,h
	xbfu	r8,r0,7
	add_s	r2,r2,r7   ;b,b,h
	xbfu	r9,r0,8
	add_s	r2,r2,r8   ;b,b,h
	xbfu	r10,r0,9
	add_s	r2,r2,r9   ;b,b,h
	xbfu	r11,r0,10
	add_s	r2,r2,r10   ;b,b,h
	xbfu	r12,r0,11
	add_s	r2,r2,r11   ;b,b,h
	xbfu	r3,r0,12
	add_s	r2,r2,r12   ;b,b,h
	xbfu	r1,r0,13
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r4,r0,14
	add_s	r2,r2,r1   ;b,b,h
	add_s	r2,r2,r4   ;b,b,h
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
.L1182:
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
	bne.d	.L1182
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
.L1190:
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
	bne.d	.L1190
	asl_s	r3,r3,1
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	bls	.L1221
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1222	; lp_count:@.L1198->@.L1222
	.align 2
.L1198:
	brlt	r1,0,.L1203
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1200
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1222:
	; ZOL_END, begins @.L1198
	.align 2
.L1201:
	tst_s	r2,r2
	.align 2
.L1223:
	mov.eq	r0,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1200:
	tst_s	r3,r3
	beq.d	.L1201
	mov.eq	r12,0
	.align 2
.L1203:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L1204:
	seths	r14,r0,r1
	tst_s	r14,r14
	mov_s	r13,r15	;4
	sub_s	r14,r0,r1
	mov.ne	r13,r3
	mov.ne	r0,r14
	or_s	r12,r12,r13
	lsr.f	r3,r3,1
	bne.d	.L1204
	lsr_s	r1,r1
	b.d	.L1223
	tst_s	r2,r2
	.align 4
.L1221:
	seths	r12,r0,r1
	sub_s	r1,r0,r1
	mov.hs	r0,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	fscmpf	r0,r1
	blo_s	.L1226
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L1226:
	j_s.d	[blink]
	mov_s	r0,-1	;4
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
	bn	.L1228
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L1228:
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
	bn.d	.L1239
	mov.n	r13,1
	beq.d	.L1237
	mov.eq	r0,0
	mov_s	r13,0	;3
	.align 2
.L1239:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1253	; lp_count:@.L1242->@.L1253
	.align 2
.L1242:
	and	r2,r1,1
	asr.f	r1,r1,1
	mpy_s	r2,r2,r3
	add_s	r0,r0,r2   ;b,b,h
	beq.d	.L1241
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1253:
	; ZOL_END, begins @.L1242
	.align 2
.L1241:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1237:
	j_s.d	[blink]
	pop_s	r13
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	std.a	r14,[sp,-8]
	push_s	r13
	tst_s	r0,r0
	neg.n	r0,r0
	mov.n	r2,0
	mov.n	r4,1
	mov.p	r2,1
	mov.p	r4,0
	tst_s	r1,r1
	neg.n	r1,r1
	mov.n	r4,r2
	cmp_s	r0,r1
	mov_s	r13,r0	;4
	mov_s	r2,r1	;4
	mov.hi	r3,1
	bls.d	.L1277
	mov.hi	r12,32
	.align 2
.L1279:
	mov	lp_count,r12	;5
	lp	@.L1278	; lp_count:@.L1257->@.L1278
	.align 2
.L1257:
	asl_s	r2,r2,1
	brls.d	r0,r2,.L1262
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1278:
	; ZOL_END, begins @.L1257
	.align 2
.L1262:
	tst_s	r3,r3
	mov_s	r0,0	;3
	beq.d	.L1260
	sub_s.ne	r15,r15,r15
	.align 2
.L1259:
	seths	r1,r13,r2
	tst_s	r1,r1
	mov_s	r12,r15	;4
	sub_s	r14,r13,r2
	mov.ne	r12,r3
	mov.ne	r13,r14
	or_s	r0,r0,r12
	lsr.f	r3,r3,1
	bne.d	.L1259
	lsr_s	r2,r2
	.align 2
.L1260:
	tst	r4,r4
	neg.ne	r0,r0
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1277:
	b.d	.L1260
	seths	r0,r0,r1
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
	mov.hi	r2,1
	bls.d	.L1304
	mov.hi	r3,32
	.align 2
.L1306:
	mov	lp_count,r3	;5
	lp	@.L1305	; lp_count:@.L1282->@.L1305
	.align 2
.L1282:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1287
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1305:
	; ZOL_END, begins @.L1282
	.align 2
.L1287:
	tst_s	r2,r2
	beq.d	.L1285
	mov.eq	r0,r12
	.align 2
.L1284:
	sub.f	r3,r0,r1
	mov.hs	r0,r3
	lsr.f	r2,r2,1
	bne.d	.L1284
	lsr_s	r1,r1
	.align 2
.L1285:
	tst_s	r13,r13
	neg.ne	r0,r0
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L1304:
	sub_s	r1,r12,r1
	b.d	.L1285
	mov.hs	r0,r1
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	std.a	r14,[sp,-8]
	push_s	r13
	exth_s	r12,r0
	exth_s	r1,r1
	cmp_s	r1,r12
	bhs	.L1392
	btst_s	r1,15
	bne	.L1310
	asl_s	r3,r1,1
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1317
	btst_s	r3,15
	bne_s	.L1317
	asl_s	r3,r1,2
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1319
	btst_s	r3,15
	bne	.L1319
	asl_s	r3,r1,3
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1321
	btst_s	r3,15
	bne	.L1321
	asl_s	r3,r1,4
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1323
	btst_s	r3,15
	bne	.L1323
	asl_s	r3,r1,5
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1325
	btst_s	r3,15
	bne	.L1325
	asl_s	r3,r1,6
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1327
	btst_s	r3,15
	bne	.L1327
	asl_s	r3,r1,7
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1329
	btst_s	r3,15
	bne	.L1329
	asl	r3,r1,8
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1331
	btst_s	r3,15
	bne	.L1331
	asl	r3,r1,9
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1333
	btst_s	r3,15
	bne	.L1333
	asl	r3,r1,10
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1335
	btst_s	r3,15
	bne	.L1335
	asl	r3,r1,11
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1337
	btst_s	r3,15
	bne	.L1337
	asl	r3,r1,12
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1339
	btst_s	r3,15
	bne	.L1339
	asl	r3,r1,13
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1341
	btst_s	r3,15
	bne	.L1341
	asl	r3,r1,14
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1343
	btst_s	r3,15
	bne	.L1343
	asl	r0,r1,15
	exth_s	r0,r0
	cmp_s	r12,r0
	bls	.L1344
	tst_s	r0,r0
	mov_s.ne	r13,32768
	bne.d	.L1312
	mov_s.ne	r3,r13
	.align 2
.L1313:
	tst_s	r2,r2
	mov.ne	r0,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1317:
	mov_s	r13,2	;3
	.align 2
.L1312:
	sub_s	r14,r12,r3
	.align 2
.L1393:
	cmp_s	r12,r3
	exth_s	r14,r14
	mov_s	r15,r12	;4
	mov.hs	r15,r14
	lsr_s	r1,r3
	cmp_s	r12,r3
	sub_s	r14,r15,r1
	mov_s	r0,0	;3
	mov.hs	r0,r13
	exth_s	r14,r14
	cmp_s	r15,r1
	mov_s	r12,r15	;4
	mov.hs	r12,r14
	mov_s	r14,0	;3
	cmp_s	r15,r1
	lsr	r4,r13,1
	mov_s	r15,r14	;4
	mov.hs	r15,r4
	exth_s	r0,r0
	or_s	r0,r0,r15
	lsr.f	r5,r13,2
	beq.d	.L1313
	lsr	r15,r3,2
	seths	r6,r12,r15
	tst	r6,r6
	sub_s	r1,r12,r15
	mov_s	r7,r14	;4
	mov.ne	r7,r5
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r7
	lsr.f	r8,r13,3
	beq.d	.L1313
	lsr	r15,r3,3
	seths	r9,r12,r15
	tst	r9,r9
	sub_s	r1,r12,r15
	mov_s	r10,r14	;4
	mov.ne	r10,r8
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r10
	lsr.f	r11,r13,4
	beq.d	.L1313
	lsr	r15,r3,4
	seths	r30,r12,r15
	tst	r30,r30
	sub_s	r1,r12,r15
	mov_s	r4,r14	;4
	mov.ne	r4,r11
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r4
	lsr.f	r58,r13,5
	beq.d	.L1313
	lsr	r15,r3,5
	seths	r59,r12,r15
	tst	r59,r59
	sub_s	r1,r12,r15
	mov_s	r5,r14	;4
	mov.ne	r5,r58
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r5
	lsr.f	r6,r13,6
	beq.d	.L1313
	lsr	r15,r3,6
	seths	r7,r12,r15
	tst	r7,r7
	sub_s	r1,r12,r15
	mov_s	r8,r14	;4
	mov.ne	r8,r6
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r8
	lsr.f	r9,r13,7
	beq.d	.L1313
	lsr	r15,r3,7
	seths	r10,r12,r15
	tst	r10,r10
	sub_s	r1,r12,r15
	mov_s	r11,r14	;4
	mov.ne	r11,r9
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r11
	lsr.f	r30,r13,8
	beq.d	.L1313
	lsr	r15,r3,8
	seths	r4,r12,r15
	tst	r4,r4
	sub_s	r1,r12,r15
	mov_s	r5,r14	;4
	mov.ne	r5,r30
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r5
	lsr.f	r58,r13,9
	beq.d	.L1313
	lsr	r15,r3,9
	seths	r59,r12,r15
	tst	r59,r59
	sub_s	r1,r12,r15
	mov_s	r6,r14	;4
	mov.ne	r6,r58
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r6
	lsr.f	r7,r13,10
	beq.d	.L1313
	lsr	r15,r3,10
	seths	r8,r12,r15
	tst	r8,r8
	sub_s	r1,r12,r15
	mov_s	r9,r14	;4
	mov.ne	r9,r7
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r9
	lsr.f	r10,r13,11
	beq.d	.L1313
	lsr	r15,r3,11
	seths	r11,r12,r15
	tst	r11,r11
	sub_s	r1,r12,r15
	mov_s	r4,r14	;4
	mov.ne	r4,r10
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r4
	lsr.f	r30,r13,12
	beq.d	.L1313
	lsr	r15,r3,12
	seths	r5,r12,r15
	tst	r5,r5
	sub_s	r1,r12,r15
	mov_s	r6,r14	;4
	mov.ne	r6,r30
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r6
	lsr.f	r58,r13,13
	beq.d	.L1313
	lsr	r15,r3,13
	seths	r59,r12,r15
	tst	r59,r59
	sub_s	r1,r12,r15
	mov_s	r7,r14	;4
	mov.ne	r7,r58
	exth_s	r1,r1
	mov.ne	r12,r1
	or	r0,r0,r7
	lsr.f	r8,r13,14
	beq.d	.L1313
	lsr	r15,r3,14
	seths	r9,r12,r15
	tst	r9,r9
	sub_s	r1,r12,r15
	mov.ne	r14,r8
	exth_s	r1,r1
	mov.ne	r12,r1
	or_s	r0,r0,r14
	bxor.f	0,r13,14
	beq.d	.L1313
	lsr_s	r3,r3,15
	seths	r13,r12,r3
	sub_s	r3,r12,r3
	exth_s	r3,r3
	tst_s	r13,r13
	mov.ne	r12,r3
	b.d	.L1313
	or_s	r0,r0,r13
	.align 4
.L1319:
	b.d	.L1312
	mov_s	r13,4	;3
	.align 4
.L1321:
	b.d	.L1312
	mov_s	r13,8	;3
	.align 4
.L1323:
	b.d	.L1312
	mov_s	r13,16	;3
	.align 4
.L1333:
	b.d	.L1312
	mov	r13,512	;6
	.align 4
.L1325:
	b.d	.L1312
	mov_s	r13,32	;3
	.align 4
.L1327:
	b.d	.L1312
	mov_s	r13,64	;3
	.align 4
.L1329:
	b.d	.L1312
	mov_s	r13,128	;3
	.align 4
.L1331:
	b.d	.L1312
	mov	r13,256	;6
	.align 4
.L1392:
	seteq	r13,r1,r12
	sub_s	r3,r12,r1
	exth_s	r3,r3
	tst_s	r13,r13
	mov.ne	r12,r3
	b.d	.L1313
	exth_s	r0,r13
	.align 4
.L1335:
	b.d	.L1312
	mov	r13,1024	;6
	.align 4
.L1337:
	mov_s	r13,2048	;13
	b.d	.L1393
	sub_s	r14,r12,r3
	.align 4
.L1339:
	mov_s	r13,4096	;13
	b.d	.L1393
	sub_s	r14,r12,r3
	.align 4
.L1341:
	mov_s	r13,8192	;13
	b.d	.L1393
	sub_s	r14,r12,r3
	.align 4
.L1343:
	mov_s	r13,16384	;13
	b.d	.L1393
	sub_s	r14,r12,r3
	.align 4
.L1344:
	mov_s	r3,32768	;13
	b.d	.L1312
	mov_s	r13,r3	;4
	.align 4
.L1310:
	sub_s	r1,r12,r1
	exth_s	r12,r1
	b.d	.L1313
	mov_s	r0,1	;3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	bls	.L1418
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1419	; lp_count:@.L1395->@.L1419
	.align 2
.L1395:
	brlt	r1,0,.L1400
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1397
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1419:
	; ZOL_END, begins @.L1395
	.align 2
.L1398:
	tst_s	r2,r2
	.align 2
.L1420:
	mov.eq	r0,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1397:
	tst_s	r3,r3
	beq.d	.L1398
	mov.eq	r12,0
	.align 2
.L1400:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L1401:
	seths	r14,r0,r1
	tst_s	r14,r14
	mov_s	r13,r15	;4
	sub_s	r14,r0,r1
	mov.ne	r13,r3
	mov.ne	r0,r14
	or_s	r12,r12,r13
	lsr.f	r3,r3,1
	bne.d	.L1401
	lsr_s	r1,r1
	b.d	.L1420
	tst_s	r2,r2
	.align 4
.L1418:
	seths	r12,r0,r1
	sub_s	r1,r0,r1
	mov.hs	r0,r1
	tst_s	r2,r2
	j_s.d	[blink]
	mov.eq	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1422
	asl	r1,r0,r2
	mov_s	r2,0	;3
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.align 4
.L1422:
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
	bbit0	r2,5,@.L1428
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1428:
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
	push_s	r13
	seths	r3,65535,r0
	mov_s	r13,0	;3
	asl_s	r3,r3,4
	rsub	r2,r3,16
	lsr_s	r0,r0,r2
	and	r12,r0,65280
	seteq	r12,r12,0
	add3_s	r3,r3,r12
	sub3	r1,8,r12
	lsr_s	r0,r0,r1
	and	r2,r0,240
	seteq	r2,r2,0
	add2_s	r3,r3,r2
	sub2	r12,4,r2
	lsr_s	r0,r0,r12
	and	r1,r0,12
	seteq	r1,r1,0
	add1_s	r3,r3,r1
	sub1	r2,2,r1
	lsr_s	r0,r0,r2
	rsub	r4,r0,2
	btst_s	r0,1
	mov.eq	r13,r4
	add_s	r0,r13,r3   ;a,b,c/u3
	j_s.d	[blink]
	pop_s	r13
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp_s	r1,r3
	blt_s	.L1443
	bgt_s	.L1444
	cmp_s	r0,r2
	blo_s	.L1443
	bhi_s	.L1444
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1443:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1444:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1450
	bgt_s	.L1449
	brlo	r0,r2,.L1450
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1450:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1449:
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
	and	r0,r2,15
	seteq	r0,r0,0
	asl_s	r0,r0,2
	add	r58,r58,r0   ;(p)b,b,c/u6
	lsr_s	r2,r2,r0
	and	r1,r2,3
	seteq	r1,r1,0
	asl_s	r1,r1,1
	add	r58,r58,r1   ;(p)b,b,c/u6
	lsr_s	r2,r2,r1
	bic	r4,1,r2    ;;constraint 6
	xbfu	r2,r2,1
	rsub	r2,r2,2
	j_s.d	[blink]
	dmachu	r0,r4,r2
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	bbit0.d	r2,5,@.L1455
	mov_s	r3,r1	;4
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L1455:
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
	mpy_s	r1,r1,r2
	exth_s	r13,r13
	dmachu	r0,r0,r14
	lsr	r58,r15,16
	dmachu	r2,r12,r14
	lsr	r4,r0,16
	add_s	r2,r2,r4   ;b,b,h
	add_s	r3,r3,r2   ;b,b,h
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
	lsr	r1,r0,8
	xor_s	r1,r1,r0
	lsr	r0,r1,4
	xor_s	r0,r0,r1
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
	sbc	r1,r1,r12
	lsr_s	r0,r0,2
	and	r5,r0,858993459
	lsr	r4,r1,2
	add.f	r6,r5,r13
	and	r7,r4,858993459
	and	r8,r1,858993459
	lsr	r2,r6,4
	adc	r9,r7,r8
	asl	r12,r9,28
	or_s	r2,r2,r12
	add.f	r10,r2,r6
	lsr	r11,r9,4
	and	r10,r10,252645135
	adc	r13,r11,r9
	and	r13,r13,252645135
	add_s	r13,r13,r10   ;b,b,h
	lsr	r3,r13,16
	add_s	r13,r13,r3   ;b,b,h
	lsr	r0,r13,8
	add_s	r0,r0,r13   ;b,b,h
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
	lsr	r1,r0,2
	and	r1,r1,858993459
	add_s	r1,r1,r3   ;b,b,h
	lsr	r0,r1,4
	add_s	r1,r1,r0   ;b,b,h
	and	r1,r1,252645135
	lsr	r4,r1,16
	add_s	r1,r1,r4   ;b,b,h
	lsr	r0,r1,8
	add_s	r0,r0,r1   ;b,b,h
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
	bbit0.d	r2,0,@.L1475
	mov_s	r16,0	;4
	.align 2
.L1477:
	vadd2	r0,r16,0
	vadd2	r2,r14,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L1475:
	div	r13,r13,2
	breq_s	r13,0,.L1476
	.align 2
.L1478:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	bbit1	r13,0,@.L1477
	b.d	.L1478
	div	r13,r13,2
	.align 4
.L1476:
	brge	r18,0,.L1474
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	vadd2	r16,r0,0
	.align 2
.L1474:
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
	mov_s	r3,r0
	mov_s	r0,0x3f800000 ; 1.0e+0
	bbit0.d	r1,0,@.L1483
	mov_s	r2,r1	;4
	.align 2
.L1485:
	fsmul	r0,r0,r3
	.align 2
.L1483:
	div	r2,r2,2
	breq_s	r2,0,.L1484
	bbit1.d	r2,0,@.L1485
	fsmul	r3,r3,r3
	div	r2,r2,2
	.align 2
.L1494:
	bbit1.d	r2,0,@.L1485
	fsmul	r3,r3,r3
	b.d	.L1494
	div	r2,r2,2
	.align 4
.L1484:
	tst_s	r1,r1
	jp	[blink]
	push_s	blink
	mov_s	r1,r0
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl	@__divsf3;1
	pop_s	blink
	j_s	[blink]
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp_s	r1,r3
	blo_s	.L1499
	bhi_s	.L1500
	cmp_s	r0,r2
	blo_s	.L1499
	bhi_s	.L1500
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1499:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1500:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1506
	bhi_s	.L1505
	brlo	r0,r2,.L1506
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1506:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1505:
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
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsidf
	.global	__gedf2
	.global	__ledf2
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__ltdf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
