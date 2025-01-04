	.file	"mini-libc.c"
	.cpu HS
	.arc_attribute Tag_ARC_PCS_config, 3
	.arc_attribute Tag_ARC_ABI_rf16, 0
	.arc_attribute Tag_ARC_ABI_pic, 0
	.arc_attribute Tag_ARC_ABI_tls, 1
	.arc_attribute Tag_ARC_ABI_sda, 0
	.arc_attribute Tag_ARC_ABI_exceptions, 0
	.arc_attribute Tag_ARC_CPU_variation, 4
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	cmp_s	r0,r1
	bls_s	.L2
	tst_s	r2,r2
	add_s	r3,r1,r2   ;a,b,c/u3
	add_s	r2,r2,r0   ;b,b,h
	jeq_s	[blink]
	sub_s	r1,r3,r1
	mov	lp_count,r1	;5
	lp	@.L43	; lp_count:@.L4->@.L43
	.align 2
.L4:
	ldb.a	r10,[r3,-1]
	stb.a	r10,[r2,-1]
	.align 2
.L43:
	nop_s
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
	bmskn	r4,r2,1
	sub2	r3,r4,1 ;a,b,u6
	lsr_s	r3,r3,2
	sub2	r5,r1,1 ;a,b,u6
	mov_s	r6,r0	;4
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L42	; lp_count:@.L6->@.L42
	.align 2
.L6:
	ld.a	r7,[r5,4]	;23
	st.ab	r7,[r6,4]	;26
	.align 2
.L42:
	nop_s
	; ZOL_END, begins @.L6
	sub.f	r12,r2,r4
	add_s	r1,r1,r4   ;b,b,h
	beq_s	.L3
	ldb_s	r2,[r1]
	stb	r2,[r6]
	breq	r12,1,.L3
	ldb_s	r14,[r1,1]
	stb	r14,[r6,1]
	breq	r12,2,.L3
	ldb_s	r1,[r1,2]
	stb	r1,[r6,2]
.L3:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L5:
	sub	r8,r0,1 ;a,b,u6
	add_s	r1,r1,r2   ;b,b,h
	.align 2
.L9:
	ldb	r9,[r15,-1]
	cmp_s	r15,r1
	add_s	r15,r15,1   ;b,b,h
	stb.a	r9,[r8,1]
	bne_s	.L9
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
	add_s	r3,r3,1   ;b,b,h
	stb.a	r2,[r12,1]
	bne_s	.L36
	j_s	[blink]
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
	stb.ab	r12,[r0,1]
	breq	r12,r2,.L44
	nop_s
	.align 2
.L61:
	; ZOL_END, begins @.L46
	mov_s	r0,0	;3
.L44:
	pop_s	r13
	j_s	[blink]
	.align 4
.L58:
	mov_s	r0,0	;3
	j_s	[blink]
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
	mov_s	r0,0	;3
	j_s	[blink]
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
	ldb_s	r3,[r0]
	add_s	r1,r1,1   ;b,b,h
	ldb	r12,[r1,-1]
	add_s	r0,r0,1   ;b,b,h
	brne	r3,r12,.L89
	nop_s
	.align 2
.L90:
	; ZOL_END, begins @.L77
	.align 2
.L85:
	mov_s	r0,0	;3
	j_s	[blink]
	.align 4
.L89:
	sub_s	r0,r3,r12
	j_s	[blink]
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	push_s	blink
	push_s	r13
	tst_s	r2,r2
	mov_s	r13,r0	;4
	jlne	@memcpy
	mov_s	r0,r13	;4
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	add_s	r2,r2,-1   ;h,h,s3
	extb_s	r1,r1
	add_s	r2,r2,r0   ;b,b,h
	sub	r12,r0,1 ;a,b,u6
	b_s	.L99
	.align 4
.L101:
	ldb_s	r3,[r0]
	add_s	r2,r2,-1   ;h,h,s3
	cmp_s	r3,r1
	jeq_s	[blink]
	.align 2
.L99:
	mov_s	r0,r2	;4
	brne	r2,r12,.L101
	mov_s	r0,0	;3
	j_s	[blink]
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	push_s	blink
	push_s	r13
	tst_s	r2,r2
	bmsk.ne	r1,r1,7
	mov_s	r13,r0	;4
	jlne	@memset
	mov_s	r0,r13	;4
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	ldb_s	r2,[r1]
	stb_s	r2,[r0]
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r12,r0,1   ;a,b,c/u3
	.align 2
.L110:
	ldb.a	r3,[r1,1]
	mov_s	r0,r12	;4
	stb.ab	r3,[r12,1]
	tst_s	r3,r3
	jeq_s	[blink]
	ldb.a	r3,[r1,1]
	mov_s	r0,r12	;4
	stb.ab	r3,[r12,1]
	brne_s	r3,0,.L110
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
	add_s	r2,r2,1   ;b,b,h
	cmp_s	r3,r1
	jeq_s	[blink]
	brne_s	r3,0,.L128
	mov_s	r0,0	;3
	j_s	[blink]
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	breq	r2,r3,.L134
	b_s	.L133
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
	breq_s	r2,0,.L141
	mov_s	r1,r0	;4
	.align 2
.L140:
	ldb.a	r3,[r1,1]
	brne_s	r3,0,.L140
	sub_s	r0,r1,r0
	j_s	[blink]
	.align 4
.L141:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L152
	ldb_s	r3,[r0]
	breq_s	r3,0,.L159
	push_s	r13
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r12,r0,r2   ;a,b,c/u3
	b_s	.L148
	.align 4
.L161:
	breq	r0,r12,.L147
	brne	r2,r3,.L147
	ldb.a	r3,[r0,1]
	breq_s	r3,0,.L160
	.align 2
.L148:
	mov_s	r13,r1	;4
	ldb.ab	r2,[r1,1]
	brne_s	r2,0,.L161
	.align 2
.L147:
	sub_s	r0,r3,r2
	pop_s	r13
	j_s	[blink]
	.align 4
.L152:
	mov_s	r0,0	;3
	j_s	[blink]
	.align 4
.L160:
	ldb_s	r2,[r13,1]
	sub_s	r0,r3,r2
	pop_s	r13
	j_s	[blink]
	.align 4
.L159:
	ldb_s	r2,[r1]
	sub_s	r0,r3,r2
	j_s	[blink]
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
	brle	r2,2,.L169
	push_s	r13
	add_s	r2,r2,-1   ;h,h,s3
	ldb_s	r12,[r0,1]
	ldb.ab	r3,[r0,2]
	stb_s	r12,[r1]
	mov	lp_count,r2	;5
	lp	@.L174	; lp_count:@.L164->@.L174
	.align 2
.L164:
	ldb_s	r12,[r0,1]
	mov_s	r13,r1	;4
	add_s	r1,r1,2   ;b,b,h
	stb_s	r3,[r13,1]
	ldb.ab	r3,[r0,2]
	stb_s	r12,[r1]
	.align 2
.L174:
	nop_s
	; ZOL_END, begins @.L164
	nop_s
	stb_s	r3,[r1,1]
	pop_s	r13
	j_s	[blink]
	.align 4
.L169:
	ldb_s	r12,[r0,1]
	add_s	r1,r1,2   ;b,b,h
	ldb.ab	r3,[r0,2]
	stb	r12,[r1,-2]
	stb	r3,[r1,-1]
	nop_s
	dbnz	r2,.L169
	j_s	[blink]
	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	bset_s	r0,r0,5
	add	r0,r0,-97 ;b,b,s12
	setlo	r0,r0,26
	j_s	[blink]
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
	mov.eq	r0,1
	j_s	[blink]
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmp_s	r0,31
	seteq.hi	r0,r0,127
	mov.ls	r0,1
	j_s	[blink]
	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	sub3	r0,r0,6 ;a,b,u6
	setlo	r0,r0,10
	j_s	[blink]
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
	setlo	r0,r0,26
	j_s	[blink]
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
	mov.eq	r0,1
	j_s	[blink]
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	add	r0,r0,-65 ;b,b,s12
	setlo	r0,r0,26
	j_s	[blink]
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	brls	r0,31,.L205
	add	r2,r0,-127     ;a,b,limm
	brhi	r2,32,.L207
	.align 2
.L205:
	mov_s	r0,1	;3
	j_s	[blink]
	.align 4
.L207:
	add	r1,r0,-8232     ;a,b,limm
	brls	r1,1,.L205
	add_s	r0,r0,-65529   ;b,b,limm
	setlo	r0,r0,3
	j_s	[blink]
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	sub3	r0,r0,6 ;a,b,u6
	setlo	r0,r0,10
	j_s	[blink]
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	brls	r0,254,.L218
	brls	r0,8231,.L215
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L215
	add	r1,r0,-57344     ;a,b,limm
	brls	r1,8184,.L215
	add	r3,r0,-65532     ;a,b,limm
	brhi	r3,1048579,.L216
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L215:
	mov_s	r0,1	;3
	j_s	[blink]
	.align 4
.L218:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	seths	r0,r0,33
	j_s	[blink]
	.align 4
.L216:
	mov_s	r0,0	;3
	j_s	[blink]
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
	mov.ls	r0,1
	j_s	[blink]
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	bmsk_s	r0,r0,6
	j_s	[blink]
	.size	toascii, .-toascii
	.align 4
	.global	fdim
	.type	fdim, @function
fdim:
	fdcmp r0, r0
	jv	[blink]
	fdcmp r2, r2
	bv	.L229
	fdcmpf r0, r2
	ble_s	.L232
	fdsub r0,r0,r2
	j_s	[blink]
	.align 4
.L232:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	j_s	[blink]
	.align 4
.L229:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	fscmp	r0,r0
	jv	[blink]
	fscmp	r1,r1
	bv	.L238
	fscmpf	r0,r1
	ble_s	.L241
	fssub	r0,r0,r1
	j_s	[blink]
	.align 4
.L241:
	mov_s	r0,0x00000000
	j_s	[blink]
	.align 4
.L238:
	mov_s	r0,r1
	j_s	[blink]
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	fdcmp r0, r0
	bv	.L246
	fdcmp r2, r2
	jv	[blink]
	push_s	r13
	mov_s	r12,r1	;4
	mov_s	r13,r3	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	brne	r12,r13,.L253
	fdcmpf r0, r2
	mov.lo	r0,r2
	mov.lo	r1,r3
	pop_s	r13
	j_s	[blink]
	.align 4
.L253:
	tst_s	r12,r12
	mov.ne	r0,r2
	mov.ne	r1,r3
	pop_s	r13
	j_s	[blink]
	.align 4
.L246:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	fscmp	r0,r0
	bv	.L257
	fscmp	r1,r1
	jv	[blink]
	mov_s	r2,r0	;4
	mov_s	r3,r1	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L256
	tst_s	r2,r2
	mov.ne	r0,r1
	j_s	[blink]
	.align 4
.L256:
	fscmpf	r0,r1
	mov.lo	r0,r1
	j_s	[blink]
	.align 4
.L257:
	mov_s	r0,r1
	j_s	[blink]
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	fdcmp r0, r0
	bv	.L264
	fdcmp r2, r2
	jv	[blink]
	push_s	r13
	mov_s	r12,r1	;4
	mov_s	r13,r3	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	brne	r12,r13,.L271
	fdcmpf r0, r2
	mov.lo	r0,r2
	mov.lo	r1,r3
	pop_s	r13
	j_s	[blink]
	.align 4
.L271:
	tst_s	r12,r12
	mov.ne	r0,r2
	mov.ne	r1,r3
	pop_s	r13
	j_s	[blink]
	.align 4
.L264:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	fdcmp r0, r0
	bv	.L275
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r12,r0,0
	fdcmp r2, r2
	bv	.L272
	mov_s	r14,r13	;4
	mov_s	r15,r3	;4
	bmskn	r14,r14,30
	bmskn	r15,r15,30
	breq	r14,r15,.L274
	tst_s	r14,r14
	mov.ne	r2,r0
	mov.ne	r3,r1
	vadd2	r0,r2,0
.L272:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L274:
	fdcmpf r0, r2
	mov.lo	r2,r0
	mov.lo	r3,r1
	vadd2	r0,r2,0
	b_s	.L272
	.align 4
.L275:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	fscmp	r0,r0
	bv	.L285
	fscmp	r1,r1
	jv	[blink]
	mov_s	r3,r0	;4
	mov_s	r12,r1	;4
	bmskn	r3,r3,30
	bmskn	r12,r12,30
	breq	r3,r12,.L284
	tst_s	r3,r3
	mov.ne	r1,r0
	mov_s	r0,r1
	j_s	[blink]
	.align 4
.L284:
	fscmpf	r0,r1
	mov.lo	r1,r0
	mov_s	r0,r1
	j_s	[blink]
	.align 4
.L285:
	mov_s	r0,r1
	j_s	[blink]
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	fdcmp r0, r0
	bv	.L292
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r12,r0,0
	fdcmp r2, r2
	bv	.L289
	mov_s	r14,r13	;4
	mov_s	r15,r3	;4
	bmskn	r14,r14,30
	bmskn	r15,r15,30
	breq	r14,r15,.L291
	tst_s	r14,r14
	mov.ne	r2,r0
	mov.ne	r3,r1
	vadd2	r0,r2,0
.L289:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L291:
	fdcmpf r0, r2
	mov.lo	r2,r0
	mov.lo	r3,r1
	vadd2	r0,r2,0
	b_s	.L289
	.align 4
.L292:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L300
	mov_s	r12,@digits	;13
	.align 2
.L301:
	and	r3,r0,63
	ldb_s	r1,[r12,r3]
	lsr.f	r0,r0,6
	stb.ab	r1,[r2,1]
	bne_s	.L301
	.align 2
.L300:
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
	ld	r2,[@seed]	;23
	mpy	r3,r2,1481765933
	ld	r12,[@seed+4]	;23
	mpy	r12,r12,1284865837
	add_s	r12,r12,r3   ;b,b,h
	mpydu	r0,r2,1284865837
	add.f	r4,r0,1
	add_s	r1,r1,r12   ;b,b,h
	adc	r0,r1,0
	st	r4,[@seed]	;26
	st	r0,[@seed+4]	;26
	lsr_s	r0,r0
	j_s	[blink]
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	breq_s	r1,0,.L316
	ld_s	r2,[r1]		;15
	st_s	r1,[r0,4]		;16
	st_s	r2,[r0]		;16
	st_s	r0,[r1]		;16
	ld_s	r1,[r0]		;15
	tst_s	r1,r1
	jeq_s	[blink]
	st_s	r0,[r1,4]		;16
	j_s	[blink]
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
	st_s	r2,[r0]		;16
	j_s	[blink]
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
	mov_s	r15,r3	;4
	breq	r16,0,.L328
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	mov_s	r14,0	;3
	b_s	.L330
	.align 4
.L343:
	add_s	r13,r13,r15   ;b,b,h
	breq	r16,r14,.L328
	.align 2
.L330:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl	[r18]
	mov_s	r19,r13	;4
	add_s	r14,r14,1   ;b,b,h
	brne_s	r0,0,.L343
	.align 2
.L327:
	mov_s	r0,r19	;4
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
	tst_s	r15,r15
	st	r2,[r20]	;26
	mpy	r16,r16,r15
	add	r19,r21,r16 ;a,b,c/u6
	mov_s.ne	r2,r15
	mov_s.ne	r1,r17
	mov_s.ne	r0,r19
	jlne	@memmove
	b_s	.L327
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
	breq	r19,0,.L345
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	mov_s	r14,0	;3
	b_s	.L347
	.align 4
.L356:
	add_s	r13,r13,r17   ;b,b,h
	breq	r19,r14,.L345
	.align 2
.L347:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl	[r16]
	mov_s	r18,r13	;4
	add_s	r14,r14,1   ;b,b,h
	brne_s	r0,0,.L356
	.align 2
.L344:
	mov_s	r0,r18	;4
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L345:
	mov_s	r18,0	;4
	b_s	.L344
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	abs_s	r0,r0
	j_s	[blink]
	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L379:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L379
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L379
	breq	r2,43,.L362
	breq	r2,45,.L363
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L371
	mov_s	r15,0	;3
	.align 2
.L365:
	mov_s	r0,0	;3
	.align 2
.L368:
	ldb.a	r14,[r3,1]
	mov_s	r13,r2	;4
	mpy	r12,r0,10
	sub_s	r0,r12,r2
	sub3	r2,r14,6 ;a,b,u6
	brls	r2,9,.L368
	brne_s	r15,0,.L359
	sub_s	r0,r13,r12
.L359:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L363:
	ldb_s	r1,[r3,1]
	add_s	r3,r3,1   ;b,b,h
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	mov.ls	r15,1
	bls_s	.L365
	.align 2
.L371:
	mov_s	r0,0	;3
	b_s	.L359
	.align 4
.L362:
	ldb_s	r0,[r3,1]
	add_s	r3,r3,1   ;b,b,h
	sub3	r2,r0,6 ;a,b,u6
	brhi	r2,9,.L371
	mov_s	r15,0	;3
	b_s	.L365
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	std.a	r14,[sp,-8]
	push_s	r13
	.align 2
.L402:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L402
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L402
	breq	r2,43,.L387
	breq	r2,45,.L405
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L395
	mov_s	r15,0	;3
	.align 2
.L389:
	mov_s	r0,0	;3
	.align 2
.L392:
	ldb.a	r14,[r3,1]
	mov_s	r13,r2	;4
	mpy	r12,r0,10
	sub_s	r0,r12,r2
	sub3	r2,r14,6 ;a,b,u6
	brls	r2,9,.L392
	brne_s	r15,0,.L384
	sub_s	r0,r13,r12
.L384:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L405:
	ldb_s	r1,[r3,1]
	mov_s	r3,r0	;4
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	mov.ls	r15,1
	bls_s	.L389
	.align 2
.L395:
	mov_s	r0,0	;3
	b_s	.L384
	.align 4
.L387:
	ldb_s	r0,[r3,1]
	add_s	r3,r3,1   ;b,b,h
	sub3	r2,r0,6 ;a,b,u6
	brhi	r2,9,.L395
	mov_s	r15,0	;3
	b_s	.L389
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	.align 2
.L426:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L426
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L426
	breq	r2,43,.L409
	brne	r2,45,.L432
	ldb_s	r1,[r3,1]
	add_s	r3,r3,1   ;b,b,h
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	mov.ls	r5,1
	bhi	.L418
	.align 2
.L412:
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L415:
	ldb.a	r15,[r3,1]
	asr	r14,r2,31
	mpy	r1,r1,10
	mpydu	r12,r0,10
	mov_s	r4,r2	;4
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	sub3	r2,r15,6 ;a,b,u6
	sbc	r1,r13,r14
	brls	r2,9,.L415
	brne	r5,0,.L406
	sub.f	r0,r4,r12
	sbc	r1,r14,r13
.L406:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L432:
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L418
	.align 2
.L419:
	mov_s	r5,0	;4
	b_s	.L412
	.align 4
.L409:
	ldb_s	r0,[r3,1]
	add_s	r3,r3,1   ;b,b,h
	sub3	r2,r0,6 ;a,b,u6
	brls	r2,9,.L419
	.align 2
.L418:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
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
	beq_s	.L434
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	mov_s	r19,r4	;4
	b_s	.L437
	.align 4
.L444:
	beq_s	.L433
	sub_s	r13,r13,r15
	add	r16,r14,r17 ;a,b,c/u6
	breq_s	r13,0,.L434
	.align 2
.L437:
	lsr_s	r15,r13
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl	[r19]
	tst_s	r0,r0
	add_s	r13,r13,-1   ;h,h,s3
	bp	.L444
	mov_s	r13,r15	;4
	brne_s	r13,0,.L437
	.align 2
.L434:
	mov_s	r14,0	;3
	.align 2
.L433:
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
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	mov_s	r19,r4	;4
	mov_s	r20,r5	;4
	beq_s	.L450
	.align 2
.L458:
	asr_s	r15,r13,1
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r2,r20	;4
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	breq_s	r0,0,.L445
	brle	r0,0,.L448
	asr.f	r13,r13,1
	add	r16,r14,r17 ;a,b,c/u6
	bne_s	.L458
	.align 2
.L450:
	mov_s	r14,0	;3
	.align 2
.L445:
	mov_s	r0,r14	;4
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ld.ab	r20,[sp,8]	;23
	j_s	[blink]
	.align 4
.L448:
	breq_s	r15,0,.L450
	mov_s	r13,r15	;4
	b_s	.L458
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	div	r3,r1,r2
	rem	r1,r1,r2
	st_s	r3,[r0]		;16
	st_s	r1,[r0,4]		;16
	j_s	[blink]
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	asr	r2,r1,31
	xor_s	r0,r0,r2
	sub.f	r0,r0,r2
	xor_s	r1,r1,r2
	sbc	r1,r1,r2
	j_s	[blink]
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r17,r4	;4
	mov_s	r15,r2	;4
	mov_s	r14,r1	;4
	mov_s	r16,r3	;4
	mov_s	r13,r0	;4
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
	abs_s	r0,r0
	j_s	[blink]
	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	div	r3,r1,r2
	rem	r1,r1,r2
	st_s	r3,[r0]		;16
	st_s	r1,[r0,4]		;16
	j_s	[blink]
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	asr	r2,r1,31
	xor_s	r0,r0,r2
	sub.f	r0,r0,r2
	xor_s	r1,r1,r2
	sbc	r1,r1,r2
	j_s	[blink]
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r17,r4	;4
	mov_s	r15,r2	;4
	mov_s	r14,r1	;4
	mov_s	r16,r3	;4
	mov_s	r13,r0	;4
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
	breq_s	r2,0,.L479
	.align 2
.L476:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L476
	.align 2
.L479:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L487
	b_s	.L486
	.align 4
.L488:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L486
	.align 2
.L487:
	brne_s	r2,0,.L488
	.align 2
.L486:
	brlt	r2,r3,.L490
	setgt	r0,r2,r3
	j_s	[blink]
	.align 4
.L490:
	mov_s	r0,-1	;4
	j_s	[blink]
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L493:
	ld.ab	r2,[r1,4]	;23
	st.a	r2,[r3,4]	;26
	tst_s	r2,r2
	jeq_s	[blink]
	ld.ab	r2,[r1,4]	;23
	st.a	r2,[r3,4]	;26
	brne_s	r2,0,.L493
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L501
	mov_s	r1,r0	;4
	.align 2
.L500:
	ld.a	r3,[r1,4]	;23
	brne_s	r3,0,.L500
	sub_s	r0,r1,r0
	asr_s	r0,r0,2
	j_s	[blink]
	.align 4
.L501:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L510
	push_s	r14
	push_s	r13
	mov	lp_count,r2	;5
	lp	@.L520	; lp_count:@.L506->@.L520
	.align 2
.L506:
	ld_s	r13,[r1]		;15
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	mov_s	r12,r1	;4
	add_s	r1,r1,4   ;b,b,h
	brne	r3,r13,.L507
	breq_s	r3,0,.L507
	nop_s
	.align 2
.L520:
	; ZOL_END, begins @.L506
	mov_s	r0,0	;3
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.align 4
.L507:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.align 4
.L510:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	mov_s.ne	r3,r0
	beq_s	.L529
	.align 2
.L534:
	mov	lp_count,r2	;5
	lp	@.L533	; lp_count:@.L523->@.L533
	.align 2
.L523:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L533:
	; ZOL_END, begins @.L523
	.align 2
.L529:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L546
	.align 2
.L553:
	mov	lp_count,r2	;5
	lp	@.L552	; lp_count:@.L537->@.L552
	.align 2
.L537:
	ld_s	r3,[r0]		;15
	add_s	r1,r1,4   ;b,b,h
	ld	r12,[r1,-4]	;23
	add_s	r0,r0,4   ;b,b,h
	cmp_s	r3,r12
	bne_s	.L550
	nop_s
	.align 2
.L552:
	; ZOL_END, begins @.L537
	.align 2
.L546:
	mov_s	r0,0	;3
	j_s	[blink]
	.align 4
.L550:
	blt_s	.L551
	setgt	r0,r3,r12
	j_s	[blink]
	.align 4
.L551:
	mov_s	r0,-1	;4
	j_s	[blink]
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	push_s	blink
	push_s	r13
	tst_s	r2,r2
	asl.ne	r2,r2,2
	mov_s	r13,r0	;4
	jlne	@memcpy
	mov_s	r0,r13	;4
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp_s	r0,r1
	jeq_s	[blink]
	asl_s	r3,r2,2
	sub_s	r12,r0,r1
	brlo	r12,r3,.L562
	tst_s	r2,r2
	jeq_s	[blink]
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r14,r2,1 ;a,b,u6
	add_s	r15,r1,4   ;a,b,c/u3
	brls	r14,23,.L566
	add_s	r13,r1,4   ;a,b,c/u3
	mov_s	r15,r13	;4
	breq	r13,r0,.L566
	xbfu	r12,r0,2
	bbit0	r0,2,@.L573
	ld_s	r3,[r1]		;15
	mov_s	r4,r0	;4
	st.ab	r3,[r4,4]	;26
	.align 2
.L567:
	sub_s	r2,r2,r12
	lsr_s	r3,r2
	add2	r5,-8,r12
	add2	r6,r0,r12
	add_s	r1,r1,r5   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L590	; lp_count:@.L568->@.L590
	.align 2
.L568:
	ldd.a	r8,[r1,8]
	std.ab	r8,[r6,8]
	.align 2
.L590:
	nop_s
	; ZOL_END, begins @.L568
	bbit0	r2,0,@.L575
	bclr_s	r2,r2,0
	asl_s	r2,r2,2
	ld_s	r1,[r13,r2]		;15
	add	r4,r4,r2   ;(p)b,b,c/u6
	st	r1,[r4]	;26
.L575:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L562:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	lsr_s	r2,r2,2
	add_s	r1,r1,r3   ;b,b,h
	add_s	r2,r2,1   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L589	; lp_count:@.L565->@.L589
	.align 2
.L565:
	ld.a	r9,[r1,-4]	;23
	st.a	r9,[r3,-4]	;26
	.align 2
.L589:
	nop_s
	; ZOL_END, begins @.L565
	j_s	[blink]
	.align 4
.L573:
	mov_s	r13,r1	;4
	mov_s	r4,r0	;4
	b_s	.L567
	.align 4
.L566:
	sub2	r2,r0,1 ;a,b,u6
	.align 2
.L571:
	ld	r7,[r15,-4]	;23
	add_s	r14,r14,-1   ;h,h,s3
	cmp_s	r14,-1
	add_s	r15,r15,4   ;b,b,h
	st.a	r7,[r2,4]	;26
	bne_s	.L571
	b_s	.L575
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
	xbfu	r12,r0,2
	brls	r13,5,.L597
	mov_s	r4,r0	;4
	bbit0	r3,0,@.L594
	nop_s
	st.ab	r1,[r4,4]	;26
	sub1	r13,r2,1 ;a,b,u6
	.align 2
.L594:
	sub_s	r2,r2,r12
	lsr_s	r3,r2
	add2	r5,r0,r12
	mov_s	r15,r1	;4
	mov_s	r14,r1	;4
	mov	lp_count,r3	;5
	lp	@.L623	; lp_count:@.L595->@.L623
	.align 2
.L595:
	std.ab	r14,[r5,8]
	.align 2
.L623:
	nop_s
	; ZOL_END, begins @.L595
	bbit0	r2,0,@.L592
	bclr_s	r2,r2,0
	sub_s	r13,r13,r2
	add2	r2,r4,r2
	.align 2
.L593:
	st_s	r1,[r2]		;16
	breq_s	r13,0,.L592
	st_s	r1,[r2,4]		;16
	breq	r13,1,.L592
	st_s	r1,[r2,8]		;16
	breq	r13,2,.L592
	st_s	r1,[r2,12]		;16
	breq	r13,3,.L592
	st_s	r1,[r2,16]		;16
	breq	r13,4,.L592
	st_s	r1,[r2,20]		;16
.L592:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L597:
	mov_s	r2,r0	;4
	b_s	.L593
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L625
	tst_s	r2,r2
	add_s	r3,r0,r2   ;a,b,c/u3
	add_s	r1,r1,r2   ;b,b,h
	jeq_s	[blink]
	sub_s	r12,r3,r0
	mov	lp_count,r12	;5
	lp	@.L665	; lp_count:@.L627->@.L665
	.align 2
.L627:
	ldb.a	r9,[r3,-1]
	stb.a	r9,[r1,-1]
	.align 2
.L665:
	nop_s
	; ZOL_END, begins @.L627
	j_s	[blink]
	.align 4
.L625:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L662
	push_s	r14
	push_s	r13
	or	r14,r1,r0
	add_s	r12,r0,1   ;a,b,c/u3
	bmsk_s	r14,r14,1
	sub_s	r13,r1,r12
	seteq	r14,r14,0
	seths	r13,r13,3
	tst_s	r14,r13
	beq_s	.L628
	bmskn	r4,r2,1
	sub2	r3,r4,1 ;a,b,u6
	lsr_s	r3,r3,2
	sub2	r5,r0,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L664	; lp_count:@.L629->@.L664
	.align 2
.L629:
	ld.a	r6,[r5,4]	;23
	st.ab	r6,[r1,4]	;26
	.align 2
.L664:
	nop_s
	; ZOL_END, begins @.L629
	sub.f	r2,r2,r4
	add_s	r0,r0,r4   ;b,b,h
	beq_s	.L624
	ldb_s	r14,[r0]
	stb_s	r14,[r1]
	breq	r2,1,.L624
	ldb_s	r12,[r0,1]
	stb_s	r12,[r1,1]
	breq	r2,2,.L624
	ldb_s	r0,[r0,2]
	stb_s	r0,[r1,2]
	.align 2
.L624:
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.align 4
.L628:
	sub	r7,r1,1 ;a,b,u6
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L632:
	ldb	r8,[r12,-1]
	cmp_s	r12,r0
	add_s	r12,r12,1   ;b,b,h
	stb.a	r8,[r7,1]
	bne_s	.L632
	b_s	.L624
	.align 4
.L662:
	add_s	r12,r0,1   ;a,b,c/u3
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L659:
	ldb	r2,[r12,-1]
	cmp_s	r12,r0
	add_s	r12,r12,1   ;b,b,h
	stb.a	r2,[r1,1]
	bne_s	.L659
	j_s	[blink]
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	std.a	r14,[sp,-8]
	push_s	r13
	neg_s	r14,r2
	lsr_s	r12,r0
	and	r13,r14,63
	not_s	r15,r2
	btst_s	r2,5
	asl_s	r3,r1,1
	lsr_s	r12,r12,r15
	asl	r15,r1,r2
	asl	r2,r0,r2
	lsr_s	r0,r0,r13
	not	r4,r13
	lsr_s	r1,r1,r13
	asl	r3,r3,r4
	or_s	r12,r12,r15
	mov_s	r13,r2	;4
	mov.eq	r13,r12
	sub.ne	r2,r2,r2
	or_s	r3,r3,r0
	btst_s	r14,5
	mov_s	r0,r1	;4
	mov.eq	r0,r3
	sub.ne	r1,r1,r1
	or_s	r0,r0,r2
	or_s	r1,r1,r13
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
	asl_s	r12,r1,1
	and	r13,r14,63
	not_s	r15,r2
	btst_s	r2,5
	lsr_s	r3,r0
	asl_s	r12,r12,r15
	lsr	r15,r0,r2
	lsr	r2,r1,r2
	asl_s	r1,r1,r13
	not	r4,r13
	asl_s	r0,r0,r13
	lsr	r3,r3,r4
	or_s	r12,r12,r15
	mov_s	r13,r2	;4
	mov.eq	r13,r12
	sub.ne	r2,r2,r2
	or_s	r3,r3,r1
	btst_s	r14,5
	mov_s	r1,r0	;4
	mov.eq	r1,r3
	sub.ne	r0,r0,r0
	or_s	r0,r0,r13
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
	ror	r0,r0,r1
	j_s	[blink]
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	ror	r0,r0,r1
	j_s	[blink]
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	neg_s	r1,r1
	ror	r0,r0,r1
	j_s	[blink]
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	ror	r0,r0,r1
	j_s	[blink]
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
	exth_s	r0,r0
	j_s	[blink]
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
	exth_s	r0,r0
	j_s	[blink]
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
	extb_s	r0,r0
	j_s	[blink]
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
	extb_s	r0,r0
	j_s	[blink]
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	exth_s	r2,r0
	asl_s	r2,r2,8
	xbfu	r0,r0,232
	or_s	r0,r0,r2
	exth_s	r0,r0
	j_s	[blink]
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	swape	r0,r0
	j_s	[blink]
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	mov_s	r2,r0	;4
	swape	r0,r1
	swape	r1,r2
	j_s	[blink]
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	mov_s	r2,0	;3
	mov_s	r3,32	;3
	mov	lp_count,r3	;5
	lp	@.L700	; lp_count:@.L695->@.L700
	.align 2
.L695:
	lsr	r12,r0,r2
	add_s	r2,r2,1   ;b,b,h
	bbit1	r12,0,@.L699
	nop_s
	.align 2
.L700:
	; ZOL_END, begins @.L695
	mov_s	r0,0	;3
	j_s	[blink]
	.align 4
.L699:
	mov_s	r0,r2	;4
	j_s	[blink]
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L704
	and	r0,r2,1
	bbit1	r2,0,@.L701
	mov_s	r0,1	;3
	.align 2
.L703:
	asr_s	r2,r2,1
	add_s	r0,r0,1   ;b,b,h
	bbit0	r2,0,@.L703
	j_s	[blink]
	.align 4
.L704:
	mov_s	r0,0	;3
.L701:
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	fscmpf	r0,0xff7fffff
	blo_s	.L709
	fscmpf	r0,0x7f7fffff
	mov_s	r0,1	;3
	mov.le	r0,0
	j_s	[blink]
	.align 4
.L709:
	mov_s	r0,1	;3
	j_s	[blink]
	.size	gl_isinff, .-gl_isinff
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	fdcmpf r0, r2
	blo_s	.L713
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	fdcmpf r0, r2
	mov_s	r0,1	;3
	mov.le	r0,0
	j_s	[blink]
	.align 4
.L713:
	mov_s	r0,1	;3
	j_s	[blink]
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	fdcmpf r0, r2
	blo_s	.L717
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	fdcmpf r0, r2
	mov_s	r0,1	;3
	mov.le	r0,0
	j_s	[blink]
	.align 4
.L717:
	mov_s	r0,1	;3
	j_s	[blink]
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	fcvt32_64 r2,r1,0x02	;fint2d r2,r1
	std	r2,[r0]
	j_s	[blink]
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
	mov_s	r3,0x3f000000 ; 5.0e-1
	tst_s	r1,r1
	mov.p	r3,0x40000000 ; 2.0e+0
	bbit0	r1,0,@.L724
	.align 2
.L725:
	fsmul	r0,r0,r3
	.align 2
.L724:
	div	r1,r1,2
	tst_s	r1,r1
	jeq_s	[blink]
	fsmul	r3,r3,r3
	bbit1	r1,0,@.L725
	.align 2
.L732:
	div	r1,r1,2
	fsmul	r3,r3,r3
	bbit1	r1,0,@.L725
	b_s	.L732
	.size	ldexpf, .-ldexpf
	.align 4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	fdcmp r0, r0
	jv	[blink]
	push_s	r13
	fdadd r12,r0,r0
	fdcmp r12, r0
	beq_s	.L734
	mov_s	r12,0	;3
	mov_s	r13,1071644672	;13
	tst_s	r2,r2
	mov.p	r12,0x00000000
	mov.p	r13,0x40000000; 2.0e+0
	bbit0	r2,0,@.L736
	.align 2
.L737:
	fdmul r0,r0,r12
	.align 2
.L736:
	div	r2,r2,2
	breq_s	r2,0,.L734
	fdmul r12,r12,r12
	bbit1	r2,0,@.L737
	.align 2
.L747:
	div	r2,r2,2
	fdmul r12,r12,r12
	bbit1	r2,0,@.L737
	b_s	.L747
	.align 4
.L734:
	pop_s	r13
	j_s	[blink]
	.size	ldexp, .-ldexp
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	fdcmp r0, r0
	jv	[blink]
	push_s	r13
	fdadd r12,r0,r0
	fdcmp r0, r12
	beq_s	.L749
	mov_s	r12,0	;3
	mov_s	r13,1071644672	;13
	tst_s	r2,r2
	mov.p	r12,0x00000000
	mov.p	r13,0x40000000; 2.0e+0
	bbit0	r2,0,@.L751
	.align 2
.L752:
	fdmul r0,r0,r12
	.align 2
.L751:
	div	r2,r2,2
	breq_s	r2,0,.L749
	fdmul r12,r12,r12
	bbit1	r2,0,@.L752
	.align 2
.L762:
	div	r2,r2,2
	fdmul r12,r12,r12
	bbit1	r2,0,@.L752
	b_s	.L762
	.align 4
.L749:
	pop_s	r13
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
	brls	r3,3,.L765
	or	r4,r0,r1
	tst	r4,3
	bne_s	.L765
	bmskn	r4,r2,1
	sub2	r12,r4,1 ;a,b,u6
	lsr_s	r12,r12,2
	add_s	r12,r12,1   ;b,b,h
	sub2	r14,r1,1 ;a,b,u6
	add	r5,r0,r4 ;a,b,c/u6
	mov_s	r13,r0	;4
	brle	r12,2,.L787
	add_s	r12,r12,-1   ;h,h,s3
	ld.a	r3,[r14,4]	;23
	ld_s	r15,[r0]		;15
	mov	lp_count,r12	;5
	lp	@.L795	; lp_count:@.L766->@.L795
	.align 2
.L766:
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	ld.a	r3,[r14,4]	;23
	ld_s	r15,[r13]		;15
	.align 2
.L795:
	; ZOL_END, begins @.L766
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	.align 2
.L788:
	cmp	r4,r2
	add_s	r1,r1,r4   ;b,b,h
	sub	r2,r2,r4
	beq_s	.L764
	ldb	r13,[r5]
	ldb_s	r12,[r1]
	xor_s	r13,r13,r12
	stb	r13,[r5]
	breq	r2,1,.L764
	ldb	r6,[r5,1]
	cmp_s	r2,2
	ldb_s	r14,[r1,1]
	xor	r2,r14,r6
	stb	r2,[r5,1]
	beq_s	.L764
	ldb	r15,[r5,2]
	ldb_s	r1,[r1,2]
	xor_s	r1,r1,r15
	stb	r1,[r5,2]
.L764:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L787:
	ld_s	r15,[r13]		;15
	ld.a	r3,[r14,4]	;23
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	nop_s
	dbnz	r12,.L787
	b_s	.L788
	.align 4
.L765:
	mov_s	r12,r0	;4
	brle	r2,2,.L789
	add_s	r2,r2,-1   ;h,h,s3
	ldb.ab	r3,[r1,1]
	ldb.ab	r13,[r12,1]
	mov	lp_count,r2	;5
	lp	@.L794	; lp_count:@.L768->@.L794
	.align 2
.L768:
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	ldb.ab	r3,[r1,1]
	ldb.ab	r13,[r12,1]
	.align 2
.L794:
	; ZOL_END, begins @.L768
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	b_s	.L764
	.align 4
.L789:
	ldb.ab	r13,[r12,1]
	ldb.ab	r3,[r1,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	nop_s
	dbnz	r2,.L789
	b_s	.L764
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	mov_s	r4,r0	;4
	breq_s	r3,0,.L797
	.align 2
.L798:
	ldb.a	r12,[r4,1]
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
	stb.ab	r12,[r4,1]
	tst_s	r12,r12
	jeq_s	[blink]
	nop_s
	.align 2
.L812:
	; ZOL_END, begins @.L800
	.align 2
.L799:
	nop_s
	stb	0,[r4]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	tst_s	r1,r1
	mov_s.ne	r2,r0
	sub_s.ne	r0,r0,r0
	beq_s	.L822
	.align 2
.L824:
	mov	lp_count,r1	;5
	lp	@.L823	; lp_count:@.L814->@.L823
	.align 2
.L814:
	ldb_s	r3,[r2,r0]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L823:
	; ZOL_END, begins @.L814
	j_s	[blink]
	.align 4
.L822:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L832
	push_s	r13
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L826:
	mov_s	r3,r13	;4
	b_s	.L829
	.align 4
.L828:
	breq	r2,r12,.L827
	.align 2
.L829:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L828
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L826
	mov_s	r0,0	;3
.L827:
	pop_s	r13
	j_s	[blink]
	.align 4
.L832:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	.align 2
.L838:
	ldb_s	r3,[r2]
	cmp_s	r3,r1
	mov.eq	r0,r2
	tst_s	r3,r3
	add_s	r2,r2,1   ;b,b,h
	jeq_s	[blink]
	ldb_s	r3,[r2]
	cmp_s	r3,r1
	mov.eq	r0,r2
	add_s	r2,r2,1   ;b,b,h
	brne_s	r3,0,.L838
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	std.a	r14,[sp,-8]
	push_s	r13
	ldb_s	r14,[r1]
	mov_s	r3,r0	;4
	breq_s	r14,0,.L855
	mov_s	r2,r1	;4
	.align 2
.L845:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L845
	sub.f	r2,r2,r1
	beq_s	.L855
	sub	r4,r2,1 ;a,b,u6
	b_s	.L853
	.align 4
.L863:
	breq_s	r2,0,.L862
	.align 2
.L853:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	add_s	r3,r3,1   ;b,b,h
	brne	r2,r14,.L863
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	mov_s	r12,r0	;4
	b_s	.L847
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
	add_s	r3,r0,1   ;a,b,c/u3
	b_s	.L853
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
	add_s	r3,r0,1   ;a,b,c/u3
	b_s	.L853
	.align 4
.L855:
	mov_s	r0,r3	;4
	b_s	.L843
	.size	strstr, .-strstr
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	push_s	r13
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	fdcmpf r0, r12
	blo_s	.L877
	ble_s	.L870
	fdcmpf r2, r12
	blo_s	.L869
.L870:
	pop_s	r13
	j_s	[blink]
	.align 4
.L877:
	fdcmpf r2, r12
	ble_s	.L870
	.align 2
.L869:
	mov_s	r2,r0	;4
	bxor	r3,r1,31
	vadd2	r0,r2,0
	pop_s	r13
	j_s	[blink]
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
	ldb	r6,[r2]
	b_s	.L884
	.align 4
.L880:
	brlo	r5,r0,.L889
	.align 2
.L884:
	mov_s	r13,r0	;4
	ldb.ab	r12,[r13,1]
	cmp_s	r12,r6
	mov_s.ne	r0,r13
	bne_s	.L880
	breq	r3,1,.L878
	.align 2
.L883:
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r9,r3,1 ;a,b,u6
	mov	lp_count,r9	;5
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
	ldb.ab	r7,[r0,1]
	brne	r6,r7,.L880
	mov_s	r8,r13	;4
	mov_s	r13,r0	;4
	mov_s	r0,r8	;4
	b_s	.L883
	.align 4
.L889:
	mov_s	r0,0	;3
	b_s	.L878
	.align 4
.L887:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push_s	blink
	push_s	r14
	push_s	r13
	mov.f	r13,r2
	mov_s	r14,r0	;4
	jlne	@memmove
	add_s	r0,r14,r13   ;a,b,c/u3
	ld	blink,[sp,8]	;23
	pop_s	r13
	ld.ab	r14,[sp,8]	;23
	j_s	[blink]
	.size	mempcpy, .-mempcpy
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r12,r0,0
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	fdcmpf r0, r14
	blo	.L936
	mov_s	r0,0	;3
	mov_s	r1,1072693248	;13
	fdcmpf r12, r0
	mov.ge	r4,0
	blt	.L937
	.align 2
.L916:
	mov_s	r3,0	;3
	mov_s	r0,0	;3
	mov_s	r1,1071644672	;13
	mov_s	r14,0	;3
	mov_s	r15,1072693248	;13
	.align 2
.L922:
	fdmul r12,r12,r0
	add_s	r3,r3,1   ;b,b,h
	fdcmpf r12, r14
	bge_s	.L922
	st_s	r3,[r2]		;16
	mov_s	r0,r12	;4
	bxor	r1,r13,31
	breq	r4,0,.L938
.L913:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L938:
	vadd2	r0,r12,0
	b_s	.L913
	.align 4
.L937:
	mov_s	r0,0	;3
	mov_s	r1,1071644672	;13
	fdcmpf r12, r0
	bhs_s	.L919
	fdcmp r12, r14
	bne_s	.L928
	.align 2
.L919:
	vadd2	r0,r12,0
	st	0,[r2]	;37
	b_s	.L913
	.align 4
.L936:
	mov_s	r14,0	;3
	mov_s	r15,-1074790400	;13
	fdcmpf r0, r14
	mov_s	r14,r0	;4
	bxor	r15,r13,31
	bhi_s	.L939
	vadd2	r12,r14,0
	mov_s	r4,1	;4
	b_s	.L916
	.align 4
.L939:
	mov_s	r0,0	;3
	mov_s	r1,-1075838976	;13
	fdcmpf r12, r0
	ble_s	.L919
	mov_s	r4,1	;4
	.align 2
.L917:
	vadd2	r12,r14,0
	mov_s	r3,0	;3
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	.align 2
.L924:
	fdadd r12,r12,r12
	add_s	r3,r3,-1   ;h,h,s3
	fdcmpf r12, r14
	blo_s	.L924
	st_s	r3,[r2]		;16
	mov_s	r0,r12	;4
	bxor	r1,r13,31
	brne	r4,0,.L913
	b_s	.L938
	.align 4
.L928:
	vadd2	r14,r12,0
	mov_s	r4,0	;4
	b_s	.L917
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or.f	0,r0,r1
	beq_s	.L944
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r0	;4
	mov_s	r14,r1	;4
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
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L944:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	j_s	[blink]
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	brhs	r1,r0,.L974
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L975	; lp_count:@.L951->@.L975
	.align 2
.L951:
	brlt	r1,0,.L956
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	brls	r0,r1,.L953
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L975:
	; ZOL_END, begins @.L951
	.align 2
.L954:
	tst_s	r2,r2
	mov.eq	r0,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L953:
	tst_s	r3,r3
	mov.eq	r12,0
	beq_s	.L954
	.align 2
.L956:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L957:
	seths	r14,r0,r1
	tst_s	r14,r14
	mov_s	r13,r15	;4
	sub_s	r14,r0,r1
	mov.ne	r13,r3
	mov.ne	r0,r14
	lsr.f	r3,r3,1
	lsr_s	r1,r1
	or_s	r12,r12,r13
	bne_s	.L957
	b_s	.L954
	.align 4
.L974:
	seths	r12,r0,r1
	tst_s	r12,r12
	sub_s	r1,r0,r1
	mov.ne	r0,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s	[blink]
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L978
	asl_s	r0,r0,8
	fls	r0,r0
	rsub	r0,r0,30
	j_s	[blink]
	.align 4
.L978:
	mov_s	r0,7	;3
	j_s	[blink]
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r2,r1,31
	cmp_s	r0,r2
	xor	r3,r0,r2
	xor_s	r2,r2,r1
	beq_s	.L989
	.align 2
.L986:
	fls	r0,r3
	rsub	r0,r0,63
	brne_s	r2,0,.L990
	add_s	r0,r0,-1   ;h,h,s3
	j_s	[blink]
	.align 4
.L990:
	fls	r0,r2
	rsub	r0,r0,31
	add_s	r0,r0,-1   ;h,h,s3
	j_s	[blink]
	.align 4
.L989:
	brne	r1,r0,.L986
	mov_s	r0,63	;3
	j_s	[blink]
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov.f	r2,r0
	mov_s	r0,0	;3
	jeq_s	[blink]
	.align 2
.L993:
	and	r3,r2,1
	lsr.f	r2,r2,1
	mpy_s	r3,r3,r1
	asl_s	r1,r1,1
	add_s	r0,r0,r3   ;b,b,h
	jeq_s	[blink]
	and	r3,r2,1
	lsr.f	r2,r2,1
	mpy_s	r3,r3,r1
	asl_s	r1,r1,1
	add_s	r0,r0,r3   ;b,b,h
	bne_s	.L993
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	bmskn	r4,r2,2
	brlo	r0,r1,.L1003
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L1037
	.align 2
.L1003:
	tst_s	r3,r3
	beq_s	.L1038
	std.a	r14,[sp,-8]
	push_s	r13
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r7,r0,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1043	; lp_count:@.L1006->@.L1043
	.align 2
.L1006:
	ldd.a	r14,[r13,8]
	std.a	r14,[r7,8]
	.align 2
.L1043:
	nop_s
	; ZOL_END, begins @.L1006
	brls	r2,r4,.L999
	sub	r8,r2,r4
	sub	r15,r8,1 ;a,b,u6
	brls	r15,6,.L1008
	add	r13,r0,r4 ;a,b,c/u6
	add	r9,r1,r4 ;a,b,c/u6
	add	r12,r4,1 ;a,b,c/u6
	add_s	r12,r12,r1   ;b,b,h
	or	r14,r9,r13
	sub_s	r3,r13,r12
	bmsk_s	r14,r14,1
	seths	r3,r3,3
	seteq	r14,r14,0
	tst_s	r3,r14
	beq_s	.L1008
	bmskn	r15,r8,1
	sub2	r3,r15,1 ;a,b,u6
	lsr_s	r3,r3,2
	sub2	r10,r9,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1042	; lp_count:@.L1009->@.L1042
	.align 2
.L1009:
	ld.a	r11,[r10,4]	;23
	st.ab	r11,[r13,4]	;26
	.align 2
.L1042:
	nop_s
	; ZOL_END, begins @.L1009
	cmp	r8,r15
	add_s	r15,r15,r4   ;b,b,h
	beq_s	.L999
	ldb_s	r13,[r1,r15]
	add_s	r12,r0,r15   ;a,b,c/u3
	add_s	r14,r15,1   ;a,b,c/u3
	stb_s	r13,[r12]
	brls	r2,r14,.L999
	ldb_s	r3,[r1,r14]
	add_s	r15,r15,2   ;b,b,h
	add_s	r14,r14,r0   ;b,b,h
	stb_s	r3,[r14]
	brls	r2,r15,.L999
	ldb_s	r2,[r1,r15]
	add_s	r15,r15,r0   ;b,b,h
	stb_s	r2,[r15]
	.align 2
.L999:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1037:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L1041	; lp_count:@.L1013->@.L1041
	.align 2
.L1013:
	ldb.a	r0,[r3,-1]
	stb.a	r0,[r2,-1]
	.align 2
.L1041:
	nop_s
	; ZOL_END, begins @.L1013
	j_s	[blink]
	.align 4
.L1008:
	add_s	r4,r4,-1   ;h,h,s3
	sub	r5,r1,1 ;a,b,u6
	add_s	r2,r2,r5   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1040	; lp_count:@.L1011->@.L1040
	.align 2
.L1011:
	ldb.a	r30,[r1,1]
	stb.a	r30,[r4,1]
	.align 2
.L1040:
	nop_s
	; ZOL_END, begins @.L1011
	b_s	.L999
	.align 4
.L1038:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r5,r1,1 ;a,b,u6
	add_s	r2,r2,r5   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1039	; lp_count:@.L1032->@.L1039
	.align 2
.L1032:
	ldb.a	r6,[r1,1]
	stb.a	r6,[r4,1]
	.align 2
.L1039:
	nop_s
	; ZOL_END, begins @.L1032
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	lsr	r4,r2,1
	brlo	r0,r1,.L1048
	add_s	r3,r1,r2   ;a,b,c/u3
	cmp_s	r3,r0
	bhs	.L1075
	.align 2
.L1048:
	tst	r4,r4
	beq_s	.L1076
	std.a	r14,[sp,-8]
	push_s	r13
	sub	r13,r4,1 ;a,b,u6
	cmp_s	r13,11
	bls	.L1051
	add_s	r14,r1,2   ;a,b,c/u3
	sub_s	r15,r0,r14
	cmp_s	r15,4
	bls	.L1051
	lsr_s	r3,r0
	neg_s	r3,r3
	tst	r3,3
	and	r12,r3,3
	mov.eq	r6,0
	beq_s	.L1052
	ldh_s.x	r13,[r1]
	sth_s	r13,[r0]
	nop_s
	bbit0	r3,1,@.L1061
	ldh_s.x	r14,[r1,2]
	cmp_s	r12,3
	mov.ne	r6,2
	sth_s	r14,[r0,2]
	bne_s	.L1052
	ldh_s.x	r15,[r1,4]
	mov_s	r6,3	;4
	sth_s	r15,[r0,4]
	.align 2
.L1052:
	sub	r5,r4,r12
	lsr	r7,r5,2
	add3	r3,-8,r7
	lsr_s	r3,r3,3
	add1	r13,-8,r12
	add1	r8,r0,r12
	add_s	r13,r13,r1   ;b,b,h
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1080	; lp_count:@.L1054->@.L1080
	.align 2
.L1054:
	ldd.a	r10,[r13,8]
	std.ab	r10,[r8,8]
	.align 2
.L1080:
	nop_s
	; ZOL_END, begins @.L1054
	bmskn	r15,r5,1
	tst	r5,3
	add_s	r15,r15,r6   ;b,b,h
	beq_s	.L1047
	ldh.x.as	r3,[r1,r15]
	add_s	r12,r15,1   ;a,b,c/u3
	add1	r6,r0,r15
	cmp	r4,r12
	sth	r3,[r6]
	asl_s	r12,r15,1
	bls_s	.L1047
	add_s	r13,r12,2   ;a,b,c/u3
	ldh.x	r14,[r1,r13]
	add_s	r15,r15,2   ;b,b,h
	add_s	r13,r13,r0   ;b,b,h
	sth_s	r14,[r13]
	brls	r4,r15,.L1047
	add_s	r12,r12,4   ;b,b,h
	ldh.x	r15,[r1,r12]
	add_s	r12,r12,r0   ;b,b,h
	sth_s	r15,[r12]
	.align 2
.L1047:
	nop_s
	bbit0	r2,0,@.L1044
	.align 2
.L1077:
	add_s	r2,r2,-1   ;h,h,s3
	ldb_s	r1,[r1,r2]
	add_s	r2,r2,r0   ;b,b,h
	stb_s	r1,[r2]
	.align 2
.L1044:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1075:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r3,r1
	mov	lp_count,r1	;5
	lp	@.L1079	; lp_count:@.L1059->@.L1079
	.align 2
.L1059:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1079:
	nop_s
	; ZOL_END, begins @.L1059
	j_s	[blink]
	.align 4
.L1061:
	mov_s	r6,1	;4
	b_s	.L1052
	.align 4
.L1051:
	add1	r3,-2,r4
	lsr_s	r15,r3
	sub1	r9,r1,1 ;a,b,u6
	sub1	r11,r0,1 ;a,b,u6
	add_s	r15,r15,1   ;b,b,h
	mov	lp_count,r15	;5
	lp	@.L1078	; lp_count:@.L1056->@.L1078
	.align 2
.L1056:
	ldh.x.a	r30,[r9,2]
	sth.a	r30,[r11,2]
	.align 2
.L1078:
	nop_s
	; ZOL_END, begins @.L1056
	bbit0	r2,0,@.L1044
	b_s	.L1077
	.align 4
.L1076:
	bbit0	r2,0,@.L1071
	add_s	r2,r2,-1   ;h,h,s3
	ldb_s	r3,[r1,r2]
	add_s	r2,r2,r0   ;b,b,h
	stb_s	r3,[r2]
	.align 2
.L1071:
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r2,2
	bmskn	r15,r2,1
	brlo	r0,r1,.L1086
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1114
	.align 2
.L1086:
	tst_s	r3,r3
	beq_s	.L1115
	sub	r13,r3,1 ;a,b,u6
	cmp_s	r13,23
	bls	.L1088
	add_s	r14,r1,4   ;a,b,c/u3
	cmp_s	r0,r14
	beq_s	.L1088
	xbfu	r12,r0,2
	mov_s	r6,0	;4
	bbit0	r0,2,@.L1089
	ld_s	r13,[r1]		;15
	mov_s	r6,r12	;4
	st_s	r13,[r0]		;16
	.align 2
.L1089:
	sub_s	r13,r3,r12
	lsr_s	r3,r13
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add2	r14,-8,r12
	add2	r7,r0,r12
	add_s	r14,r14,r1   ;b,b,h
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1121	; lp_count:@.L1090->@.L1121
	.align 2
.L1090:
	ldd.a	r4,[r14,8]
	std.ab	r4,[r7,8]
	.align 2
.L1121:
	nop_s
	; ZOL_END, begins @.L1090
	bbit0	r13,0,@.L1093
	bclr_s	r13,r13,0
	add_s	r13,r13,r6   ;b,b,h
	asl_s	r13,r13,2
	ld_s	r12,[r1,r13]		;15
	add_s	r13,r13,r0   ;b,b,h
	st_s	r12,[r13]		;16
	.align 2
.L1093:
	brls	r2,r15,.L1081
	sub	r10,r2,r15
	sub	r14,r10,1 ;a,b,u6
	brls	r14,6,.L1084
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
	beq_s	.L1084
	bmskn	r11,r10,1
	sub2	r3,r11,1 ;a,b,u6
	lsr_s	r3,r3,2
	sub2	r30,r12,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1120	; lp_count:@.L1094->@.L1120
	.align 2
.L1094:
	ld.a	r58,[r30,4]	;23
	st.ab	r58,[r13,4]	;26
	.align 2
.L1120:
	nop_s
	; ZOL_END, begins @.L1094
	cmp	r11,r10
	add	r11,r11,r15   ;(p)b,b,c/u6
	beq_s	.L1081
	ldb	r15,[r1,r11]
	add	r59,r0,r11 ;a,b,c/u6
	add	r13,r11,1 ;a,b,c/u6
	stb	r15,[r59]
	brls	r2,r13,.L1081
	ldb_s	r12,[r1,r13]
	add_s	r11,r11,2   ;h,h,s3
	add_s	r13,r13,r0   ;b,b,h
	stb_s	r12,[r13]
	brls	r2,r11,.L1081
	ldb	r2,[r1,r11]
	add	r11,r11,r0   ;(p)b,b,c/u6
	stb	r2,[r11]
	.align 2
.L1081:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1114:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r2,r2,r0
	rsub.ne	r1,r1,r3
	beq_s	.L1081
	.align 2
.L1119:
	mov	lp_count,r1	;5
	lp	@.L1118	; lp_count:@.L1098->@.L1118
	.align 2
.L1098:
	ldb.a	r0,[r3,-1]
	stb.a	r0,[r2,-1]
	.align 2
.L1118:
	nop_s
	; ZOL_END, begins @.L1098
	b_s	.L1081
	.align 4
.L1088:
	add2	r3,-4,r3
	lsr_s	r3,r3,2
	sub2	r5,r1,1 ;a,b,u6
	sub2	r8,r0,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1117	; lp_count:@.L1092->@.L1117
	.align 2
.L1092:
	ld.a	r9,[r5,4]	;23
	st.a	r9,[r8,4]	;26
	.align 2
.L1117:
	nop_s
	; ZOL_END, begins @.L1092
	b_s	.L1093
	.align 4
.L1115:
	breq_s	r2,0,.L1081
	.align 2
.L1084:
	add_s	r15,r15,-1   ;h,h,s3
	sub	r6,r1,1 ;a,b,u6
	add_s	r2,r2,r6   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	sub_s	r2,r2,r1
	add_s	r15,r15,r0   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L1116	; lp_count:@.L1096->@.L1116
	.align 2
.L1096:
	ldb.a	r0,[r1,1]
	stb.a	r0,[r15,1]
	.align 2
.L1116:
	nop_s
	; ZOL_END, begins @.L1096
	b_s	.L1081
	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	rem	r0,r0,r1
	j_s	[blink]
	.size	__modi, .-__modi
	.align 4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	fcvt32_64 r0,r0,0x00	;fuint2d r0,r0
	j_s	[blink]
	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	fcvt32 r0,r0,0x00	;fuint2s r0,r0
	j_s	[blink]
	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	fcvt64 r0,r0,0x00	;ful2d r0,r0
	j_s	[blink]
	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	fcvt64_32 r0,r0,0x00	;ful2s r0,r0
	j_s	[blink]
	.size	__ulltof, .-__ulltof
	.align 4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	remu	r0,r0,r1
	j_s	[blink]
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	bbit1	r0,15,@.L1137
	exth_s	r2,r0
	asr.f	r0,r2,14
	jne_s	[blink]
	lsr.f	0,r2,13
	bne_s	.L1138
	lsr.f	0,r2,12
	bne_s	.L1139
	lsr.f	0,r2,11
	bne_s	.L1140
	lsr.f	0,r2,10
	bne_s	.L1141
	lsr.f	0,r2,9
	bne_s	.L1142
	lsr.f	0,r2,8
	bne_s	.L1143
	lsr.f	0,r2,7
	bne_s	.L1144
	lsr.f	0,r2,6
	bne_s	.L1145
	lsr.f	0,r2,5
	bne_s	.L1146
	lsr.f	0,r2,4
	bne_s	.L1147
	lsr.f	0,r2,3
	bne_s	.L1148
	lsr.f	0,r2,2
	bne_s	.L1149
	lsr.f	0,r2,1
	bne_s	.L1150
	tst_s	r2,r2
	mov_s	r0,15	;3
	mov.eq	r0,16
	j_s	[blink]
	.align 4
.L1137:
	mov_s	r0,0	;3
	j_s	[blink]
	.align 4
.L1148:
	mov_s	r0,12	;3
	j_s	[blink]
	.align 4
.L1138:
	mov_s	r0,2	;3
	j_s	[blink]
	.align 4
.L1139:
	mov_s	r0,3	;3
	j_s	[blink]
	.align 4
.L1140:
	mov_s	r0,4	;3
	j_s	[blink]
	.align 4
.L1141:
	mov_s	r0,5	;3
	j_s	[blink]
	.align 4
.L1142:
	mov_s	r0,6	;3
	j_s	[blink]
	.align 4
.L1143:
	mov_s	r0,7	;3
	j_s	[blink]
	.align 4
.L1144:
	mov_s	r0,8	;3
	j_s	[blink]
	.align 4
.L1145:
	mov_s	r0,9	;3
	j_s	[blink]
	.align 4
.L1146:
	mov_s	r0,10	;3
	j_s	[blink]
	.align 4
.L1147:
	mov_s	r0,11	;3
	j_s	[blink]
	.align 4
.L1149:
	mov_s	r0,13	;3
	j_s	[blink]
	.align 4
.L1150:
	mov_s	r0,14	;3
	j_s	[blink]
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	bbit1	r0,0,@.L1156
	exth_s	r2,r0
	bbit1	r2,1,@.L1157
	bbit1	r2,2,@.L1158
	bbit1	r2,3,@.L1159
	bbit1	r2,4,@.L1160
	bbit1	r2,5,@.L1161
	bbit1	r2,6,@.L1162
	bbit1	r2,7,@.L1163
	bbit1	r2,8,@.L1164
	bbit1	r2,9,@.L1165
	bbit1	r2,10,@.L1166
	bbit1	r2,11,@.L1167
	bbit1	r2,12,@.L1168
	bbit1	r2,13,@.L1169
	bbit1	r2,14,@.L1170
	lsr.f	0,r2,15
	mov_s	r0,15	;3
	mov.eq	r0,16
	j_s	[blink]
	.align 4
.L1156:
	mov_s	r0,0	;3
	j_s	[blink]
	.align 4
.L1157:
	mov_s	r0,1	;3
	j_s	[blink]
	.align 4
.L1168:
	mov_s	r0,12	;3
	j_s	[blink]
	.align 4
.L1158:
	mov_s	r0,2	;3
	j_s	[blink]
	.align 4
.L1159:
	mov_s	r0,3	;3
	j_s	[blink]
	.align 4
.L1160:
	mov_s	r0,4	;3
	j_s	[blink]
	.align 4
.L1161:
	mov_s	r0,5	;3
	j_s	[blink]
	.align 4
.L1162:
	mov_s	r0,6	;3
	j_s	[blink]
	.align 4
.L1163:
	mov_s	r0,7	;3
	j_s	[blink]
	.align 4
.L1164:
	mov_s	r0,8	;3
	j_s	[blink]
	.align 4
.L1165:
	mov_s	r0,9	;3
	j_s	[blink]
	.align 4
.L1166:
	mov_s	r0,10	;3
	j_s	[blink]
	.align 4
.L1167:
	mov_s	r0,11	;3
	j_s	[blink]
	.align 4
.L1169:
	mov_s	r0,13	;3
	j_s	[blink]
	.align 4
.L1170:
	mov_s	r0,14	;3
	j_s	[blink]
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	fscmpf	r0,0x47000000
	fssub.ge	r0,r0,0x47000000
	fcvt32.ge r0,r0,0x0B	;fs2int_rz r0,r0
	add.ge r0,r0,32768
	fcvt32.lt r0,r0,0x0B	;fs2int_rz r0,r0
	j_s	[blink]
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	and	r12,r0,1
	xbfu	r2,r0,1
	xbfu	r3,r0,2
	add_s	r2,r2,r12   ;b,b,h
	xbfu	r1,r0,3
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r4,r0,4
	add_s	r2,r2,r1   ;b,b,h
	xbfu	r5,r0,5
	add_s	r2,r2,r4   ;b,b,h
	xbfu	r6,r0,6
	add_s	r2,r2,r5   ;b,b,h
	xbfu	r7,r0,7
	add_s	r2,r2,r6   ;b,b,h
	xbfu	r8,r0,8
	add_s	r2,r2,r7   ;b,b,h
	xbfu	r9,r0,9
	add_s	r2,r2,r8   ;b,b,h
	xbfu	r10,r0,10
	add_s	r2,r2,r9   ;b,b,h
	xbfu	r11,r0,11
	add_s	r2,r2,r10   ;b,b,h
	xbfu	r3,r0,12
	add_s	r2,r2,r11   ;b,b,h
	xbfu	r12,r0,13
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r1,r0,14
	add_s	r2,r2,r12   ;b,b,h
	add_s	r2,r2,r1   ;b,b,h
	xbfu	r0,r0,15
	add_s	r0,r0,r2   ;b,b,h
	bmsk_s	r0,r0,0
	j_s	[blink]
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	and	r12,r0,1
	xbfu	r2,r0,1
	xbfu	r3,r0,2
	add_s	r2,r2,r12   ;b,b,h
	xbfu	r1,r0,3
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r4,r0,4
	add_s	r2,r2,r1   ;b,b,h
	xbfu	r5,r0,5
	add_s	r2,r2,r4   ;b,b,h
	xbfu	r6,r0,6
	add_s	r2,r2,r5   ;b,b,h
	xbfu	r7,r0,7
	add_s	r2,r2,r6   ;b,b,h
	xbfu	r8,r0,8
	add_s	r2,r2,r7   ;b,b,h
	xbfu	r9,r0,9
	add_s	r2,r2,r8   ;b,b,h
	xbfu	r10,r0,10
	add_s	r2,r2,r9   ;b,b,h
	xbfu	r11,r0,11
	add_s	r2,r2,r10   ;b,b,h
	xbfu	r3,r0,12
	add_s	r2,r2,r11   ;b,b,h
	xbfu	r12,r0,13
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r1,r0,14
	add_s	r2,r2,r12   ;b,b,h
	add_s	r2,r2,r1   ;b,b,h
	xbfu	r0,r0,15
	add_s	r0,r0,r2   ;b,b,h
	j_s	[blink]
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov.f	r2,r0
	mov_s	r0,0	;3
	jeq_s	[blink]
	.align 2
.L1186:
	and	r3,r2,1
	lsr.f	r2,r2,1
	mpy_s	r3,r3,r1
	asl_s	r1,r1,1
	add_s	r0,r0,r3   ;b,b,h
	jeq_s	[blink]
	and	r3,r2,1
	lsr.f	r2,r2,1
	mpy_s	r3,r3,r1
	asl_s	r1,r1,1
	add_s	r0,r0,r3   ;b,b,h
	bne_s	.L1186
	j_s	[blink]
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov.f	r3,r0
	mov_s	r0,0	;3
	jeq_s	[blink]
	tst_s	r1,r1
	jeq_s	[blink]
	.align 2
.L1194:
	and	r2,r1,1
	lsr.f	r1,r1,1
	mpy_s	r2,r2,r3
	asl_s	r3,r3,1
	add_s	r0,r0,r2   ;b,b,h
	jeq_s	[blink]
	and	r2,r1,1
	lsr.f	r1,r1,1
	mpy_s	r2,r2,r3
	asl_s	r3,r3,1
	add_s	r0,r0,r2   ;b,b,h
	bne_s	.L1194
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	bls	.L1225
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1226	; lp_count:@.L1202->@.L1226
	.align 2
.L1202:
	brlt	r1,0,.L1207
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	brls	r0,r1,.L1204
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1226:
	; ZOL_END, begins @.L1202
	.align 2
.L1205:
	tst_s	r2,r2
	mov.eq	r0,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1204:
	tst_s	r3,r3
	mov.eq	r12,0
	beq_s	.L1205
	.align 2
.L1207:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L1208:
	seths	r14,r0,r1
	tst_s	r14,r14
	mov_s	r13,r15	;4
	sub_s	r14,r0,r1
	mov.ne	r13,r3
	mov.ne	r0,r14
	lsr.f	r3,r3,1
	lsr_s	r1,r1
	or_s	r12,r12,r13
	bne_s	.L1208
	b_s	.L1205
	.align 4
.L1225:
	seths	r12,r0,r1
	sub_s	r1,r0,r1
	mov.hs	r0,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s	[blink]
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	fscmpf	r0,r1
	blo_s	.L1229
	mov_s	r0,1	;3
	mov.le	r0,0
	j_s	[blink]
	.align 4
.L1229:
	mov_s	r0,-1	;4
	j_s	[blink]
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	fdcmpf r0, r2
	blo_s	.L1233
	mov_s	r0,1	;3
	mov.le	r0,0
	j_s	[blink]
	.align 4
.L1233:
	mov_s	r0,-1	;4
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
	mov.n	r13,1
	bn	.L1241
	mov.eq	r0,0
	beq_s	.L1239
	mov_s	r13,0	;3
	.align 2
.L1241:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1255	; lp_count:@.L1244->@.L1255
	.align 2
.L1244:
	and	r2,r1,1
	asr.f	r1,r1,1
	mpy_s	r2,r2,r3
	asl_s	r3,r3,1
	add_s	r0,r0,r2   ;b,b,h
	beq_s	.L1243
	nop_s
	.align 2
.L1255:
	; ZOL_END, begins @.L1244
	.align 2
.L1243:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1239:
	pop_s	r13
	j_s	[blink]
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
	mov.hi	r12,32
	bls	.L1279
	.align 2
.L1281:
	mov	lp_count,r12	;5
	lp	@.L1280	; lp_count:@.L1259->@.L1280
	.align 2
.L1259:
	asl_s	r2,r2,1
	asl_s	r3,r3,1
	brls	r0,r2,.L1264
	nop_s
	.align 2
.L1280:
	; ZOL_END, begins @.L1259
	.align 2
.L1264:
	tst_s	r3,r3
	mov_s	r0,0	;3
	sub_s.ne	r15,r15,r15
	beq_s	.L1262
	.align 2
.L1261:
	seths	r1,r13,r2
	tst_s	r1,r1
	sub_s	r14,r13,r2
	mov_s	r12,r15	;4
	mov.ne	r12,r3
	mov.ne	r13,r14
	lsr.f	r3,r3,1
	lsr_s	r2,r2
	or_s	r0,r0,r12
	bne_s	.L1261
	.align 2
.L1262:
	tst	r4,r4
	neg.ne	r0,r0
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1279:
	seths	r0,r0,r1
	b_s	.L1262
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
	mov.hi	r3,32
	bls_s	.L1306
	.align 2
.L1308:
	mov	lp_count,r3	;5
	lp	@.L1307	; lp_count:@.L1284->@.L1307
	.align 2
.L1284:
	asl_s	r1,r1,1
	asl_s	r2,r2,1
	brls	r12,r1,.L1289
	nop_s
	.align 2
.L1307:
	; ZOL_END, begins @.L1284
	.align 2
.L1289:
	tst_s	r2,r2
	mov.eq	r0,r12
	beq_s	.L1287
	.align 2
.L1286:
	sub.f	r3,r0,r1
	mov.hs	r0,r3
	lsr.f	r2,r2,1
	lsr_s	r1,r1
	bne_s	.L1286
	.align 2
.L1287:
	tst_s	r13,r13
	neg.ne	r0,r0
	pop_s	r13
	j_s	[blink]
	.align 4
.L1306:
	sub_s	r1,r12,r1
	mov.hs	r0,r1
	b_s	.L1287
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
	bhs	.L1394
	btst_s	r1,15
	bne	.L1312
	asl_s	r3,r1,1
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1319
	btst_s	r3,15
	bne_s	.L1319
	asl_s	r3,r1,2
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1321
	btst_s	r3,15
	bne	.L1321
	asl_s	r3,r1,3
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1323
	btst_s	r3,15
	bne	.L1323
	asl_s	r3,r1,4
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1325
	btst_s	r3,15
	bne	.L1325
	asl_s	r3,r1,5
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1327
	btst_s	r3,15
	bne	.L1327
	asl_s	r3,r1,6
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1329
	btst_s	r3,15
	bne	.L1329
	asl_s	r3,r1,7
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1331
	btst_s	r3,15
	bne	.L1331
	asl	r3,r1,8
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1333
	btst_s	r3,15
	bne	.L1333
	asl	r3,r1,9
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1335
	btst_s	r3,15
	bne	.L1335
	asl	r3,r1,10
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1337
	btst_s	r3,15
	bne	.L1337
	asl	r3,r1,11
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1339
	btst_s	r3,15
	bne	.L1339
	asl	r3,r1,12
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1341
	btst_s	r3,15
	bne	.L1341
	asl	r3,r1,13
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1343
	btst_s	r3,15
	bne	.L1343
	asl	r3,r1,14
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1345
	btst_s	r3,15
	bne	.L1345
	asl	r0,r1,15
	exth_s	r0,r0
	cmp_s	r12,r0
	bls	.L1346
	tst_s	r0,r0
	mov_s.ne	r13,32768
	mov_s.ne	r3,r13
	bne_s	.L1314
	.align 2
.L1315:
	tst_s	r2,r2
	mov.ne	r0,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1319:
	mov_s	r13,2	;3
	.align 2
.L1314:
	sub_s	r14,r12,r3
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
	mov_s	r1,r14	;4
	mov.hs	r1,r4
	exth_s	r0,r0
	lsr.f	r5,r13,2
	lsr	r15,r3,2
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r5
	mov.ne	r12,r15
	lsr.f	r6,r13,3
	lsr	r15,r3,3
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r6
	mov.ne	r12,r15
	lsr.f	r7,r13,4
	lsr	r15,r3,4
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r7
	mov.ne	r12,r15
	lsr.f	r8,r13,5
	lsr	r15,r3,5
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r8
	mov.ne	r12,r15
	lsr.f	r9,r13,6
	lsr	r15,r3,6
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r9
	mov.ne	r12,r15
	lsr.f	r10,r13,7
	lsr	r15,r3,7
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r10
	mov.ne	r12,r15
	lsr.f	r11,r13,8
	lsr	r15,r3,8
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r11
	mov.ne	r12,r15
	lsr.f	r30,r13,9
	lsr	r15,r3,9
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r30
	mov.ne	r12,r15
	lsr.f	r58,r13,10
	lsr	r15,r3,10
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r58
	mov.ne	r12,r15
	lsr.f	r59,r13,11
	lsr	r15,r3,11
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r59
	mov.ne	r12,r15
	lsr.f	r4,r13,12
	lsr	r15,r3,12
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r4
	mov.ne	r12,r15
	lsr.f	r5,r13,13
	lsr	r15,r3,13
	or_s	r0,r0,r1
	beq_s	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r15,r1
	mov_s	r1,r14	;4
	mov.ne	r1,r5
	mov.ne	r12,r15
	lsr.f	r6,r13,14
	lsr	r15,r3,14
	or_s	r0,r0,r1
	beq	.L1315
	sub_s	r1,r12,r15
	seths	r15,r12,r15
	tst_s	r15,r15
	exth_s	r1,r1
	mov.ne	r14,r6
	mov.ne	r12,r1
	bxor.f	0,r13,14
	lsr_s	r3,r3,15
	or_s	r0,r0,r14
	beq	.L1315
	seths	r13,r12,r3
	sub_s	r3,r12,r3
	exth_s	r3,r3
	tst_s	r13,r13
	mov.ne	r12,r3
	or_s	r0,r0,r13
	b	.L1315
	.align 4
.L1321:
	mov_s	r13,4	;3
	b	.L1314
	.align 4
.L1323:
	mov_s	r13,8	;3
	b	.L1314
	.align 4
.L1325:
	mov_s	r13,16	;3
	b	.L1314
	.align 4
.L1335:
	mov	r13,512	;6
	b	.L1314
	.align 4
.L1327:
	mov_s	r13,32	;3
	b	.L1314
	.align 4
.L1329:
	mov_s	r13,64	;3
	b	.L1314
	.align 4
.L1331:
	mov_s	r13,128	;3
	b	.L1314
	.align 4
.L1333:
	mov	r13,256	;6
	b	.L1314
	.align 4
.L1394:
	seteq	r13,r1,r12
	sub_s	r3,r12,r1
	exth_s	r3,r3
	tst_s	r13,r13
	mov.ne	r12,r3
	exth_s	r0,r13
	b	.L1315
	.align 4
.L1337:
	mov	r13,1024	;6
	b	.L1314
	.align 4
.L1339:
	mov_s	r13,2048	;13
	b	.L1314
	.align 4
.L1341:
	mov_s	r13,4096	;13
	b	.L1314
	.align 4
.L1343:
	mov_s	r13,8192	;13
	b	.L1314
	.align 4
.L1345:
	mov_s	r13,16384	;13
	b	.L1314
	.align 4
.L1346:
	mov_s	r3,32768	;13
	mov_s	r13,r3	;4
	b	.L1314
	.align 4
.L1312:
	sub_s	r1,r12,r1
	exth_s	r12,r1
	mov_s	r0,1	;3
	b	.L1315
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	bls	.L1419
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1420	; lp_count:@.L1396->@.L1420
	.align 2
.L1396:
	brlt	r1,0,.L1401
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	brls	r0,r1,.L1398
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1420:
	; ZOL_END, begins @.L1396
	.align 2
.L1399:
	tst_s	r2,r2
	mov.eq	r0,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L1398:
	tst_s	r3,r3
	mov.eq	r12,0
	beq_s	.L1399
	.align 2
.L1401:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L1402:
	seths	r14,r0,r1
	tst_s	r14,r14
	mov_s	r13,r15	;4
	sub_s	r14,r0,r1
	mov.ne	r13,r3
	mov.ne	r0,r14
	lsr.f	r3,r3,1
	lsr_s	r1,r1
	or_s	r12,r12,r13
	bne_s	.L1402
	b_s	.L1399
	.align 4
.L1419:
	seths	r12,r0,r1
	sub_s	r1,r0,r1
	mov.hs	r0,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	j_s	[blink]
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0	r2,5,@.L1422
	mov_s	r12,0	;3
	asl	r1,r0,r2
	mov_s	r0,r12	;4
	j_s	[blink]
	.align 4
.L1422:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r3,r2,32
	asl	r12,r0,r2
	lsr_s	r0,r0,r3
	asl_s	r1,r1,r2
	or_s	r1,r1,r0
	mov_s	r0,r12	;4
	j_s	[blink]
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0	r2,5,@.L1428
	asr	r12,r1,31
	asr	r0,r1,r2
	mov_s	r1,r12	;4
	j_s	[blink]
	.align 4
.L1428:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r3,r2,32
	asr	r12,r1,r2
	asl_s	r1,r1,r3
	lsr_s	r0,r0,r2
	or_s	r0,r0,r1
	mov_s	r1,r12	;4
	j_s	[blink]
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	mov_s	r2,r0	;4
	swape	r0,r1
	swape	r1,r2
	j_s	[blink]
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	swape	r0,r0
	j_s	[blink]
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	push_s	r14
	push_s	r13
	seths	r12,65535,r0
	asl_s	r12,r12,4
	rsub	r2,r12,16
	lsr	r1,r0,r2
	and	r3,r1,65280
	seteq	r3,r3,0
	sub3	r14,8,r3
	add3	r13,r12,r3
	lsr_s	r1,r1,r14
	and	r4,r1,240
	seteq	r4,r4,0
	sub2	r12,4,r4
	add2	r6,r13,r4
	lsr_s	r1,r1,r12
	and	r5,r1,12
	seteq	r5,r5,0
	sub1	r2,2,r5
	mov_s	r0,0	;3
	lsr_s	r1,r1,r2
	rsub	r7,r1,2
	btst_s	r1,1
	mov.eq	r0,r7
	add1	r8,r6,r5
	add_s	r0,r0,r8   ;b,b,h
	pop_s	r13
	pop_s	r14
	j_s	[blink]
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
	mov_s	r0,1	;3
	j_s	[blink]
	.align 4
.L1443:
	mov_s	r0,0	;3
	j_s	[blink]
	.align 4
.L1444:
	mov_s	r0,2	;3
	j_s	[blink]
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1450
	bgt_s	.L1449
	brlo	r0,r2,.L1450
	setlo	r0,r2,r0
	j_s	[blink]
	.align 4
.L1450:
	mov_s	r0,-1	;4
	j_s	[blink]
	.align 4
.L1449:
	mov_s	r0,1	;3
	j_s	[blink]
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
	dmachu	r0,r4,r2
	j_s	[blink]
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	bbit0	r2,5,@.L1455
	mov_s	r12,0	;3
	lsr	r0,r1,r2
	mov_s	r1,r12	;4
	j_s	[blink]
	.align 4
.L1455:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r3,r2,32
	lsr	r12,r1,r2
	asl_s	r1,r1,r3
	lsr_s	r0,r0,r2
	or_s	r0,r0,r1
	mov_s	r1,r12	;4
	j_s	[blink]
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	push_s	r13
	mpyuw	r2,r0,r1
	lsr	r58,r2,16
	lsr	r3,r0,16
	lsr	r13,r1,16
	exth_s	r12,r2
	dmachu	r1,r1,r3
	exth	r58,r1
	dmachu	r2,r0,r13
	asl	r0,r2,16
	lsr_s	r2,r2,16
	lsr	r58,r1,16
	add_s	r0,r0,r12   ;b,b,h
	dmachu	r1,r3,r13
	add_s	r1,r1,r2   ;b,b,h
	pop_s	r13
	j_s	[blink]
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	std.a	r14,[sp,-8]
	push_s	r13
	mpyuw	r14,r0,r2
	lsr	r58,r14,16
	lsr	r12,r0,16
	lsr	r15,r2,16
	dmachu	r4,r2,r12
	exth	r58,r4
	dmachu	r13,r0,r15
	lsr	r5,r13,16
	lsr	r58,r4,16
	dmachu	r12,r12,r15
	add_s	r12,r12,r5   ;b,b,h
	asl_s	r13,r13,16
	exth_s	r14,r14
	mpy_s	r3,r3,r0
	add_s	r3,r3,r12   ;b,b,h
	add_s	r0,r14,r13   ;a,b,c/u3
	mpy_s	r1,r1,r2
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
	sbc	r1,r2,r1
	j_s	[blink]
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
	bmsk_s	r0,r0,0
	j_s	[blink]
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
	bmsk_s	r0,r0,0
	j_s	[blink]
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	push_s	r14
	push_s	r13
	lsr.f	r12,r1
	rrc	r3,r0
	and	r3,r3,1431655765
	sub.f	r0,r0,r3
	mov_s	r2,r1	;4
	and	r1,r12,1431655765
	sbc	r4,r2,r1
	lsr	r5,r0,2
	lsr	r13,r4,2
	and	r5,r5,858993459
	and	r0,r0,858993459
	add.f	r6,r5,r0
	and	r13,r13,858993459
	and	r4,r4,858993459
	adc	r7,r13,r4
	lsr	r2,r6,4
	asl	r14,r7,28
	lsr	r8,r7,4
	or_s	r2,r2,r14
	add.f	r12,r2,r6
	adc	r9,r8,r7
	and	r9,r9,252645135
	and	r12,r12,252645135
	add_s	r12,r12,r9   ;b,b,h
	lsr	r10,r12,16
	add_s	r12,r12,r10   ;b,b,h
	lsr	r0,r12,8
	add_s	r0,r0,r12   ;b,b,h
	bmsk_s	r0,r0,6
	pop_s	r13
	pop_s	r14
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
	lsr	r1,r3,4
	add_s	r1,r1,r3   ;b,b,h
	and	r1,r1,252645135
	lsr	r0,r1,16
	add_s	r1,r1,r0   ;b,b,h
	lsr	r0,r1,8
	add_s	r0,r0,r1   ;b,b,h
	bmsk_s	r0,r0,5
	j_s	[blink]
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	push_s	r13
	vadd2	r12,r0,0
	mov_s	r3,r2	;4
	mov_s	r0,0	;3
	mov_s	r1,1072693248	;13
	bbit0	r2,0,@.L1475
	.align 2
.L1477:
	fdmul r0,r0,r12
	.align 2
.L1475:
	div	r3,r3,2
	breq_s	r3,0,.L1476
	fdmul r12,r12,r12
	bbit1	r3,0,@.L1477
	.align 2
.L1482:
	div	r3,r3,2
	fdmul r12,r12,r12
	bbit1	r3,0,@.L1477
	b_s	.L1482
	.align 4
.L1476:
	brge	r2,0,.L1474
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	fddiv r0,r2,r0
.L1474:
	pop_s	r13
	j_s	[blink]
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	mov_s	r3,r0
	mov_s	r2,r1	;4
	mov_s	r0,0x3f800000 ; 1.0e+0
	bbit0	r1,0,@.L1484
	.align 2
.L1486:
	fsmul	r0,r0,r3
	.align 2
.L1484:
	div	r2,r2,2
	breq_s	r2,0,.L1485
	fsmul	r3,r3,r3
	bbit1	r2,0,@.L1486
	.align 2
.L1491:
	div	r2,r2,2
	fsmul	r3,r3,r3
	bbit1	r2,0,@.L1486
	b_s	.L1491
	.align 4
.L1485:
	tst_s	r1,r1
	jp	[blink]
	fsdiv	r0,0x3f800000,r0
	j_s	[blink]
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp_s	r1,r3
	blo_s	.L1496
	bhi_s	.L1497
	cmp_s	r0,r2
	blo_s	.L1496
	bhi_s	.L1497
	mov_s	r0,1	;3
	j_s	[blink]
	.align 4
.L1496:
	mov_s	r0,0	;3
	j_s	[blink]
	.align 4
.L1497:
	mov_s	r0,2	;3
	j_s	[blink]
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1503
	bhi_s	.L1502
	brlo	r0,r2,.L1503
	setlo	r0,r2,r0
	j_s	[blink]
	.align 4
.L1503:
	mov_s	r0,-1	;4
	j_s	[blink]
	.align 4
.L1502:
	mov_s	r0,1	;3
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
	.global	__moddi3
	.global	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
