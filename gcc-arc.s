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
	lp	@.L44	; lp_count:@.L4->@.L44
	.align 2
.L4:
	ldb.a	r10,[r12,-1]
	stb.a	r10,[r9,-1]
	.align 2
.L44:
	; ZOL_END, begins @.L4
	j_s	[blink]
	.align 4
.L2:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L41
	enter_s	{r13-r15} ; sp=sp+(-12)
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
	lp	@.L43	; lp_count:@.L6->@.L43
	.align 2
.L6:
	ld.a	r6,[r4,4]	;23
	st.ab	r6,[r5,4]	;26
	.align 2
.L43:
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
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L5:
	sub	r7,r0,1 ;a,b,u6
	b.d	.L9
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L42:
	add_s	r15,r15,1   ;b,b,h
	.align 2
.L9:
	ldb	r8,[r15,-1]
	brne.d	r15,r1,.L42
	stb.a	r8,[r7,1]
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L41:
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
	breq_s	r3,0,.L59
	enter_s	{r13-r13} ; sp=sp+(-4)
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r3	;5
	lp	@.L62	; lp_count:@.L47->@.L62
	.align 2
.L47:
	ldb.a	r12,[r1,1]
	breq.d	r12,r2,.L45
	stb.ab	r12,[r0,1]
	nop_s
	.align 2
.L62:
	; ZOL_END, begins @.L47
	mov_s	r0,0	;3
.L45:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L59:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	breq_s	r2,0,.L71
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov	lp_count,r2	;5
	lp	@.L75	; lp_count:@.L65->@.L75
	.align 2
.L65:
	mov_s	r0,r3	;4
	ldb.ab	r12,[r3,1]
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L75:
	; ZOL_END, begins @.L65
	.align 2
.L71:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L86
	.align 2
.L92:
	mov	lp_count,r2	;5
	lp	@.L91	; lp_count:@.L78->@.L91
	.align 2
.L78:
	ldb_s	r12,[r1]
	add_s	r0,r0,1   ;b,b,h
	ldb	r3,[r0,-1]
	brne.d	r3,r12,.L90
	add_s	r1,r1,1   ;b,b,h
	nop_s
	.align 2
.L91:
	; ZOL_END, begins @.L78
	.align 2
.L86:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L90:
	j_s.d	[blink]
	sub_s	r0,r3,r12
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	enter_s	{r13-r13, blink} ; sp=sp+(-8)
	mov_s	r13,r0	;4
	tst_s	r2,r2
	jlne	@memcpy
	mov_s	r0,r13	;4
	leave_s	{r13-r13, blink, pcl} ; sp=sp+8
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	add_s	r2,r2,-1   ;h,h,s3
	extb_s	r1,r1
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L100
	sub	r12,r0,1 ;a,b,u6
	.align 4
.L102:
	ldb_s	r3,[r0]
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L100:
	brne.d	r2,r12,.L102
	mov_s	r0,r2	;4
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	enter_s	{r13-r13, blink} ; sp=sp+(-8)
	tst_s	r2,r2
	mov_s	r13,r0	;4
	bmsk.ne	r1,r1,7
	jlne	@memset
	mov_s	r0,r13	;4
	leave_s	{r13-r13, blink, pcl} ; sp=sp+8
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
.L111:
	ldb.a	r3,[r1,1]
	mov_s	r0,r12	;4
	tst_s	r3,r3
	jeq.d	[blink]
	stb.ab	r3,[r12,1]
	ldb.a	r3,[r1,1]
	mov_s	r0,r12	;4
	brne.d	r3,0,.L111
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
.L125:
	ldb.a	r2,[r0,1]
	tst_s	r2,r2
	jeq_s	[blink]
	brne	r2,r1,.L125
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L129:
	ldb_s	r3,[r2]
	mov_s	r0,r2	;4
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	brne_s	r3,0,.L129
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	breq	r2,r3,.L135
	j_s.d	[blink]
	sub_s	r0,r2,r3
	.align 4
.L136:
	ldb.a	r2,[r0,1]
	ldb.a	r3,[r1,1]
	brne	r2,r3,.L134
	.align 2
.L135:
	brne_s	r2,0,.L136
	.align 2
.L134:
	sub_s	r0,r2,r3
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	breq_s	r2,0,.L143
	mov_s	r1,r0	;4
	.align 2
.L142:
	ldb.a	r3,[r1,1]
	brne_s	r3,0,.L142
	j_s.d	[blink]
	sub_s	r0,r1,r0
	.align 4
.L143:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L154
	ldb_s	r3,[r0]
	breq_s	r3,0,.L161
	enter_s	{r13-r13} ; sp=sp+(-4)
	add_s	r2,r2,-1   ;h,h,s3
	b.d	.L150
	add_s	r12,r0,r2   ;a,b,c/u3
	.align 4
.L163:
	breq	r0,r12,.L149
	brne	r2,r3,.L149
	ldb.a	r3,[r0,1]
	breq_s	r3,0,.L162
	.align 2
.L150:
	mov_s	r13,r1	;4
	ldb.ab	r2,[r1,1]
	brne_s	r2,0,.L163
	.align 2
.L149:
	sub_s	r0,r3,r2
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L154:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L162:
	ldb_s	r2,[r13,1]
	sub_s	r0,r3,r2
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L161:
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
	brle	r2,2,.L171
	add_s	r2,r2,-1   ;h,h,s3
	ldb_s	r12,[r0,1]
	stb_s	r12,[r1]
	mov	lp_count,r2	;5
	lp	@.L173	; lp_count:@.L166->@.L173
	.align 2
.L166:
	mov_s	r12,r1	;4
	add_s	r1,r1,2   ;b,b,h
	ldb.ab	r3,[r0,2]
	stb_s	r3,[r12,1]
	ldb_s	r12,[r0,1]
	stb_s	r12,[r1]
	.align 2
.L173:
	; ZOL_END, begins @.L166
	ldb.ab	r3,[r0,2]
	j_s.d	[blink]
	stb_s	r3,[r1,1]
	.align 4
.L171:
	ldb_s	r12,[r0,1]
	add_s	r1,r1,2   ;b,b,h
	ldb.ab	r3,[r0,2]
	stb	r12,[r1,-2]
	stb	r3,[r1,-1]
	add_s	r2,r2,-1   ;h,h,s3
	tst_s	r2,r2
	bne_s	.L171
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
	brls	r0,31,.L204
	add	r2,r0,-127     ;a,b,limm
	brhi	r2,32,.L206
	.align 2
.L204:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L206:
	add	r1,r0,-8232     ;a,b,limm
	brls	r1,1,.L204
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
	brls	r0,254,.L217
	brls	r0,8231,.L214
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L214
	add	r1,r0,-57344     ;a,b,limm
	brls	r1,8184,.L214
	add	r3,r0,-65532     ;a,b,limm
	brhi	r3,1048579,.L215
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L214:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L217:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L215:
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
	fdcmp r0, r0
	jv	[blink]
	fdcmp r2, r2
	bv	.L228
	fdcmpf r0, r2
	ble_s	.L231
	j_s.d	[blink]
	fdsub r0,r0,r2
	.align 4
.L231:
	mov_s	r0,0	;3
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L228:
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
	bv	.L237
	fscmpf	r0,r1
	ble_s	.L240
	j_s.d	[blink]
	fssub	r0,r0,r1
	.align 4
.L240:
	j_s.d	[blink]
	mov_s	r0,0x00000000
	.align 4
.L237:
	j_s.d	[blink]
	mov_s	r0,r1
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	fdcmp r0, r0
	bv	.L245
	fdcmp r2, r2
	jv	[blink]
	enter_s	{r13-r13} ; sp=sp+(-4)
	mov_s	r12,r1	;4
	mov_s	r13,r3	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	breq	r12,r13,.L244
	tst_s	r12,r12
	mov.ne	r0,r2
	mov.ne	r1,r3
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L244:
	fdcmpf r0, r2
	mov.lo	r0,r2
	mov.lo	r1,r3
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L245:
	vadd2	r0,r2,0
	j_s	[blink]
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
	fdcmp r0, r0
	bv	.L262
	fdcmp r2, r2
	jv	[blink]
	enter_s	{r13-r13} ; sp=sp+(-4)
	mov_s	r12,r1	;4
	mov_s	r13,r3	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	breq	r12,r13,.L261
	tst_s	r12,r12
	mov.ne	r0,r2
	mov.ne	r1,r3
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L261:
	fdcmpf r0, r2
	mov.lo	r0,r2
	mov.lo	r1,r3
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L262:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	fdcmp r0, r0
	bv	.L272
	enter_s	{r13-r15} ; sp=sp+(-12)
	vadd2	r12,r0,0
	fdcmp r2, r2
	bv	.L269
	mov_s	r14,r13	;4
	mov_s	r15,r3	;4
	bmskn	r14,r14,30
	bmskn	r15,r15,30
	breq	r14,r15,.L271
	tst_s	r14,r14
	mov.ne	r2,r0
	mov.ne	r3,r1
	vadd2	r0,r2,0
.L269:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L271:
	fdcmpf r0, r2
	mov.lo	r2,r0
	mov.lo	r3,r1
	vadd2	r0,r2,0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L272:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	fscmp	r0,r0
	bv	.L282
	fscmp	r1,r1
	jv	[blink]
	mov_s	r3,r0	;4
	mov_s	r12,r1	;4
	bmskn	r3,r3,30
	bmskn	r12,r12,30
	breq	r3,r12,.L281
	tst_s	r3,r3
	mov.ne	r1,r0
	j_s.d	[blink]
	mov_s	r0,r1
	.align 4
.L281:
	fscmpf	r0,r1
	mov.lo	r1,r0
	j_s.d	[blink]
	mov_s	r0,r1
	.align 4
.L282:
	j_s.d	[blink]
	mov_s	r0,r1
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	fdcmp r0, r0
	bv	.L289
	enter_s	{r13-r15} ; sp=sp+(-12)
	vadd2	r12,r0,0
	fdcmp r2, r2
	bv	.L286
	mov_s	r14,r13	;4
	mov_s	r15,r3	;4
	bmskn	r14,r14,30
	bmskn	r15,r15,30
	breq	r14,r15,.L288
	tst_s	r14,r14
	mov.ne	r2,r0
	mov.ne	r3,r1
	vadd2	r0,r2,0
.L286:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L288:
	fdcmpf r0, r2
	mov.lo	r2,r0
	mov.lo	r3,r1
	vadd2	r0,r2,0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L289:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L297
	mov_s	r12,@digits	;13
	.align 2
.L298:
	and	r3,r0,63
	lsr.f	r0,r0,6
	ldb_s	r1,[r12,r3]
	bne.d	.L298
	stb.ab	r1,[r2,1]
	.align 2
.L297:
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
	breq_s	r1,0,.L313
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
.L313:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L315
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L315:
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
	enter_s	{r13-r21, blink} ; sp=sp+(-40)
	ld	r16,[r2]	;23
	mov_s	r20,r2	;4
	mov_s	r17,r0	;4
	mov_s	r21,r1	;4
	breq.d	r16,0,.L325
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	mov_s	r13,r1	;4
	b.d	.L327
	mov_s	r14,0	;3
	.align 4
.L340:
	breq.d	r16,r14,.L325
	add_s	r13,r13,r15   ;b,b,h
	.align 2
.L327:
	mov_s	r1,r13	;4
	mov_s	r0,r17	;4
	jl.d	[r18]
	mov_s	r19,r13	;4
	brne.d	r0,0,.L340
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r19	;4
	leave_s	{r13-r21, blink, pcl} ; sp=sp+40
	.align 4
.L325:
	add	r2,r16,1 ;a,b,c/u6
	mpy	r16,r16,r15
	tst_s	r15,r15
	add	r19,r21,r16 ;a,b,c/u6
	st	r2,[r20]	;26
	mov_s.ne	r0,r19
	mov_s.ne	r2,r15
	mov_s.ne	r1,r17
	jlne	@memmove
	mov_s	r0,r19	;4
	leave_s	{r13-r21, blink, pcl} ; sp=sp+40
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	enter_s	{r13-r19, blink} ; sp=sp+(-32)
	ld	r19,[r2]	;23
	breq	r19,0,.L342
	mov_s	r15,r0	;4
	mov_s	r17,r3	;4
	mov_s	r16,r4	;4
	mov_s	r13,r1	;4
	b.d	.L344
	mov_s	r14,0	;3
	.align 4
.L353:
	breq.d	r19,r14,.L342
	add_s	r13,r13,r17   ;b,b,h
	.align 2
.L344:
	mov_s	r1,r13	;4
	mov_s	r0,r15	;4
	jl.d	[r16]
	mov_s	r18,r13	;4
	brne.d	r0,0,.L353
	add_s	r14,r14,1   ;b,b,h
	mov_s	r0,r18	;4
	leave_s	{r13-r19, blink, pcl} ; sp=sp+32
	.align 4
.L342:
	mov_s	r18,0	;4
	mov_s	r0,r18	;4
	leave_s	{r13-r19, blink, pcl} ; sp=sp+32
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
	enter_s	{r13-r15} ; sp=sp+(-12)
	.align 2
.L376:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L376
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L376
	breq	r2,43,.L359
	breq	r2,45,.L360
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L368
	mov_s	r15,0	;3
	.align 2
.L362:
	mov_s	r0,0	;3
	.align 2
.L365:
	mpy	r12,r0,10
	ldb.a	r14,[r3,1]
	mov_s	r13,r2	;4
	sub_s	r0,r12,r2
	sub3	r2,r14,6 ;a,b,u6
	brls	r2,9,.L365
	brne_s	r15,0,.L356
	sub_s	r0,r13,r12
.L356:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L360:
	ldb_s	r1,[r3,1]
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r3,r3,1   ;b,b,h
	bls.d	.L362
	mov.ls	r15,1
	.align 2
.L368:
	mov_s	r0,0	;3
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L359:
	ldb_s	r0,[r3,1]
	sub3	r2,r0,6 ;a,b,u6
	brhi.d	r2,9,.L368
	add_s	r3,r3,1   ;b,b,h
	b.d	.L362
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	enter_s	{r13-r15} ; sp=sp+(-12)
	.align 2
.L399:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L399
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L399
	breq	r2,43,.L384
	breq	r2,45,.L402
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L392
	mov_s	r15,0	;3
	.align 2
.L386:
	mov_s	r0,0	;3
	.align 2
.L389:
	mpy	r12,r0,10
	ldb.a	r14,[r3,1]
	mov_s	r13,r2	;4
	sub_s	r0,r12,r2
	sub3	r2,r14,6 ;a,b,u6
	brls	r2,9,.L389
	brne_s	r15,0,.L381
	sub_s	r0,r13,r12
.L381:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L402:
	ldb_s	r1,[r3,1]
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	mov_s	r3,r0	;4
	bls.d	.L386
	mov.ls	r15,1
	.align 2
.L392:
	mov_s	r0,0	;3
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L384:
	ldb_s	r0,[r3,1]
	sub3	r2,r0,6 ;a,b,u6
	brhi.d	r2,9,.L392
	add_s	r3,r3,1   ;b,b,h
	b.d	.L386
	mov_s	r15,0	;3
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	.align 2
.L423:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L423
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L423
	breq	r2,43,.L406
	brne	r2,45,.L429
	ldb_s	r1,[r3,1]
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	add_s	r3,r3,1   ;b,b,h
	bhi.d	.L415
	mov.ls	r5,1
	.align 2
.L409:
	enter_s	{r13-r15} ; sp=sp+(-12)
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L412:
	mpy	r1,r1,10
	mpydu	r12,r0,10
	sub.f	r0,r12,r2
	add_s	r13,r13,r1   ;b,b,h
	asr	r14,r2,31
	ldb.a	r15,[r3,1]
	mov_s	r4,r2	;4
	sub3	r2,r15,6 ;a,b,u6
	sbc	r1,r13,r14
	brls	r2,9,.L412
	brne	r5,0,.L403
	sub.f	r0,r4,r12
	sbc	r1,r14,r13
.L403:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L429:
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L415
	.align 2
.L416:
	b.d	.L409
	mov_s	r5,0	;4
	.align 4
.L406:
	ldb_s	r0,[r3,1]
	sub3	r2,r0,6 ;a,b,u6
	brls.d	r2,9,.L416
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L415:
	mov_s	r0,0	;3
	j_s.d	[blink]
	mov_s	r1,0	;3
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	enter_s	{r13-r19, blink} ; sp=sp+(-32)
	mov.f	r13,r2
	beq_s	.L431
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	b.d	.L434
	mov_s	r19,r4	;4
	.align 4
.L441:
	beq_s	.L430
	sub_s	r13,r13,r15
	breq.d	r13,0,.L431
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L434:
	lsr_s	r15,r13
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	tst_s	r0,r0
	bp	.L441
	mov_s	r13,r15	;4
	brne_s	r13,0,.L434
	.align 2
.L431:
	mov_s	r14,0	;3
	.align 2
.L430:
	mov_s	r0,r14	;4
	leave_s	{r13-r19, blink, pcl} ; sp=sp+32
	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	enter_s	{r13-r20, blink} ; sp=sp+(-36)
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	mov_s	r19,r4	;4
	mov.f	r13,r2
	beq.d	.L447
	mov_s	r20,r5	;4
	.align 2
.L455:
	asr_s	r15,r13,1
	mpy	r14,r15,r17
	add_s	r14,r14,r16   ;b,b,h
	mov_s	r2,r20	;4
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl.d	[r19]
	add_s	r13,r13,-1   ;h,h,s3
	breq_s	r0,0,.L442
	brle	r0,0,.L445
	asr.f	r13,r13,1
	bne.d	.L455
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L447:
	mov_s	r14,0	;3
	.align 2
.L442:
	mov_s	r0,r14	;4
	leave_s	{r13-r20, blink, pcl} ; sp=sp+36
	.align 4
.L445:
	breq_s	r15,0,.L447
	b.d	.L455
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
	enter_s	{r13-r17, blink} ; sp=sp+(-24)
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
	leave_s	{r13-r17, blink, pcl} ; sp=sp+24
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
	enter_s	{r13-r17, blink} ; sp=sp+(-24)
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
	leave_s	{r13-r17, blink, pcl} ; sp=sp+24
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L476
	.align 2
.L473:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L473
	.align 2
.L476:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L484
	b_s	.L483
	.align 4
.L485:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L483
	.align 2
.L484:
	brne_s	r2,0,.L485
	.align 2
.L483:
	brlt	r2,r3,.L487
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L487:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L490:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L490
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L498
	mov_s	r1,r0	;4
	.align 2
.L497:
	ld.a	r3,[r1,4]	;23
	brne_s	r3,0,.L497
	sub_s	r0,r1,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L498:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L507
	enter_s	{r13-r14} ; sp=sp+(-8)
	mov	lp_count,r2	;5
	lp	@.L517	; lp_count:@.L503->@.L517
	.align 2
.L503:
	mov_s	r12,r1	;4
	mov_s	r14,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld_s	r13,[r12]		;15
	brne.d	r3,r13,.L504
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L504
	nop_s
	.align 2
.L517:
	; ZOL_END, begins @.L503
	mov_s	r0,0	;3
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.align 4
.L504:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.align 4
.L507:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L526
	mov_s.ne	r3,r0
	.align 2
.L531:
	mov	lp_count,r2	;5
	lp	@.L530	; lp_count:@.L520->@.L530
	.align 2
.L520:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L530:
	; ZOL_END, begins @.L520
	.align 2
.L526:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L543
	.align 2
.L550:
	mov	lp_count,r2	;5
	lp	@.L549	; lp_count:@.L534->@.L549
	.align 2
.L534:
	ld_s	r12,[r1]		;15
	add_s	r0,r0,4   ;b,b,h
	ld	r3,[r0,-4]	;23
	cmp_s	r3,r12
	bne.d	.L547
	add_s	r1,r1,4   ;b,b,h
	nop_s
	.align 2
.L549:
	; ZOL_END, begins @.L534
	.align 2
.L543:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L547:
	blt_s	.L548
	j_s.d	[blink]
	setgt	r0,r3,r12
	.align 4
.L548:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	enter_s	{r13-r13, blink} ; sp=sp+(-8)
	tst_s	r2,r2
	mov_s	r13,r0	;4
	asl.ne	r2,r2,2
	jlne	@memcpy
	mov_s	r0,r13	;4
	leave_s	{r13-r13, blink, pcl} ; sp=sp+8
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp_s	r0,r1
	jeq_s	[blink]
	asl_s	r3,r2,2
	sub_s	r12,r0,r1
	brlo	r12,r3,.L559
	tst_s	r2,r2
	jeq_s	[blink]
	enter_s	{r13-r15} ; sp=sp+(-12)
	sub	r14,r2,1 ;a,b,u6
	brls.d	r14,23,.L563
	add_s	r15,r1,4   ;a,b,c/u3
	add_s	r13,r1,4   ;a,b,c/u3
	breq.d	r13,r0,.L563
	mov_s	r15,r13	;4
	bbit0.d	r0,2,@.L570
	xbfu	r12,r0,2
	mov_s	r4,r0	;4
	ld_s	r3,[r1]		;15
	st.ab	r3,[r4,4]	;26
	.align 2
.L564:
	sub_s	r2,r2,r12
	add2	r5,-8,r12
	add2	r6,r0,r12
	add_s	r1,r1,r5   ;b,b,h
	lsr_s	r12,r2
	mov	lp_count,r12	;5
	lp	@.L589	; lp_count:@.L565->@.L589
	.align 2
.L565:
	ldd.a	r8,[r1,8]
	std.ab	r8,[r6,8]
	.align 2
.L589:
	; ZOL_END, begins @.L565
	bbit0	r2,0,@.L572
	bclr_s	r2,r2,0
	asl_s	r2,r2,2
	add	r4,r4,r2   ;(p)b,b,c/u6
	ld_s	r2,[r13,r2]		;15
	st	r2,[r4]	;26
.L572:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L559:
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	add_s	r1,r1,r3   ;b,b,h
	add_s	r3,r3,r0   ;b,b,h
	lsr_s	r2,r2,2
	add_s	r2,r2,1   ;b,b,h
	mov	lp_count,r2	;5
	lp	@.L588	; lp_count:@.L562->@.L588
	.align 2
.L562:
	ld.a	r9,[r1,-4]	;23
	st.a	r9,[r3,-4]	;26
	.align 2
.L588:
	; ZOL_END, begins @.L562
	j_s	[blink]
	.align 4
.L570:
	mov_s	r13,r1	;4
	b.d	.L564
	mov_s	r4,r0	;4
	.align 4
.L563:
	b.d	.L568
	sub2	r1,r0,1 ;a,b,u6
	.align 4
.L587:
	add_s	r15,r15,4   ;b,b,h
	.align 2
.L568:
	ld	r7,[r15,-4]	;23
	add_s	r14,r14,-1   ;h,h,s3
	st.a	r7,[r1,4]	;26
	brne	r14,-1,.L587
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	tst_s	r2,r2
	jeq_s	[blink]
	enter_s	{r13-r15} ; sp=sp+(-12)
	sub	r13,r2,1 ;a,b,u6
	lsr	r3,r0,2
	brls.d	r13,5,.L596
	xbfu	r12,r0,2
	bbit0.d	r3,0,@.L593
	mov_s	r4,r0	;4
	sub1	r13,r2,1 ;a,b,u6
	st.ab	r1,[r4,4]	;26
	.align 2
.L593:
	sub_s	r2,r2,r12
	mov_s	r15,r1	;4
	mov_s	r14,r1	;4
	add2	r5,r0,r12
	lsr_s	r3,r2
	mov	lp_count,r3	;5
	lp	@.L622	; lp_count:@.L594->@.L622
	.align 2
.L594:
	std.ab	r14,[r5,8]
	.align 2
.L622:
	; ZOL_END, begins @.L594
	bbit0	r2,0,@.L591
	bclr_s	r2,r2,0
	sub_s	r13,r13,r2
	add2	r2,r4,r2
	.align 2
.L592:
	breq.d	r13,0,.L591
	st_s	r1,[r2]		;16
	breq.d	r13,1,.L591
	st_s	r1,[r2,4]		;16
	breq.d	r13,2,.L591
	st_s	r1,[r2,8]		;16
	breq.d	r13,3,.L591
	st_s	r1,[r2,12]		;16
	breq.d	r13,4,.L591
	st_s	r1,[r2,16]		;16
	st_s	r1,[r2,20]		;16
.L591:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L596:
	b.d	.L592
	mov_s	r2,r0	;4
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L624
	add_s	r3,r0,r2   ;a,b,c/u3
	tst_s	r2,r2
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r12,r3,r0
	mov	lp_count,r12	;5
	lp	@.L665	; lp_count:@.L626->@.L665
	.align 2
.L626:
	ldb.a	r7,[r3,-1]
	stb.a	r7,[r1,-1]
	.align 2
.L665:
	; ZOL_END, begins @.L626
	j_s	[blink]
	.align 4
.L624:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L662
	enter_s	{r13-r14} ; sp=sp+(-8)
	or	r14,r1,r0
	add_s	r3,r0,1   ;a,b,c/u3
	bmsk_s	r14,r14,1
	sub_s	r13,r1,r3
	seteq	r14,r14,0
	seths	r13,r13,3
	tst_s	r14,r13
	beq_s	.L627
	bmskn	r14,r2,1
	sub2	r3,r14,1 ;a,b,u6
	sub2	r4,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L664	; lp_count:@.L628->@.L664
	.align 2
.L628:
	ld.a	r5,[r4,4]	;23
	st.ab	r5,[r1,4]	;26
	.align 2
.L664:
	; ZOL_END, begins @.L628
	add_s	r0,r0,r14   ;b,b,h
	breq.d	r2,r14,.L623
	sub_s	r12,r2,r14
	ldb_s	r2,[r0]
	breq.d	r12,1,.L623
	stb_s	r2,[r1]
	ldb_s	r13,[r0,1]
	breq.d	r12,2,.L623
	stb_s	r13,[r1,1]
	ldb_s	r0,[r0,2]
	stb_s	r0,[r1,2]
	.align 2
.L623:
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.align 4
.L627:
	add_s	r1,r1,-1   ;h,h,s3
	b.d	.L631
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L663:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L631:
	ldb	r6,[r3,-1]
	brne.d	r3,r0,.L663
	stb.a	r6,[r1,1]
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.align 4
.L662:
	add_s	r12,r0,1   ;a,b,c/u3
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L658:
	ldb	r2,[r12,-1]
	cmp_s	r12,r0
	jeq.d	[blink]
	stb.a	r2,[r1,1]
	b.d	.L658
	add_s	r12,r12,1   ;b,b,h
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	enter_s	{r13-r15} ; sp=sp+(-12)
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
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	enter_s	{r13-r15} ; sp=sp+(-12)
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
	leave_s	{r13-r15, pcl} ; sp=sp+12
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
	lp	@.L700	; lp_count:@.L695->@.L700
	.align 2
.L695:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L699
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L700:
	; ZOL_END, begins @.L695
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L699:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L704
	bbit1.d	r2,0,@.L708
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L703:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L703
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L708:
	j_s	[blink]
	.align 4
.L704:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	fscmpf	r0,0xff7fffff
	blo_s	.L711
	fscmpf	r0,0x7f7fffff
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L711:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.size	gl_isinff, .-gl_isinff
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	fdcmpf r0, r2
	blo_s	.L715
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	fdcmpf r0, r2
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L715:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	fdcmpf r0, r2
	blo_s	.L719
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	fdcmpf r0, r2
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L719:
	j_s.d	[blink]
	mov_s	r0,1	;3
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
	tst_s	r1,r1
	mov_s	r3,0x3f000000 ; 5.0e-1
	mov.p	r3,0x40000000 ; 2.0e+0
	bbit0	r1,0,@.L726
	.align 2
.L727:
	fsmul	r0,r0,r3
	.align 2
.L726:
	div	r1,r1,2
	tst_s	r1,r1
	jeq_s	[blink]
	bbit1.d	r1,0,@.L727
	fsmul	r3,r3,r3
	div	r1,r1,2
	.align 2
.L735:
	bbit1.d	r1,0,@.L727
	fsmul	r3,r3,r3
	b.d	.L735
	div	r1,r1,2
	.size	ldexpf, .-ldexpf
	.align 4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	fdcmp r0, r0
	jv	[blink]
	enter_s	{r13-r13} ; sp=sp+(-4)
	fdadd r12,r0,r0
	fdcmp r12, r0
	beq_s	.L737
	tst_s	r2,r2
	mov_s	r12,0	;3
	mov_s	r13,1071644672	;13
	mov.p	r12,0x00000000
	mov.p	r13,0x40000000; 2.0e+0
	bbit0	r2,0,@.L739
	.align 2
.L740:
	fdmul r0,r0,r12
	.align 2
.L739:
	div	r2,r2,2
	breq_s	r2,0,.L737
	bbit1.d	r2,0,@.L740
	fdmul r12,r12,r12
	div	r2,r2,2
	.align 2
.L751:
	bbit1.d	r2,0,@.L740
	fdmul r12,r12,r12
	b.d	.L751
	div	r2,r2,2
	.align 4
.L737:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	ldexp, .-ldexp
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	fdcmp r0, r0
	jv	[blink]
	enter_s	{r13-r13} ; sp=sp+(-4)
	fdadd r12,r0,r0
	fdcmp r0, r12
	beq_s	.L753
	tst_s	r2,r2
	mov_s	r12,0	;3
	mov_s	r13,1071644672	;13
	mov.p	r12,0x00000000
	mov.p	r13,0x40000000; 2.0e+0
	bbit0	r2,0,@.L755
	.align 2
.L756:
	fdmul r0,r0,r12
	.align 2
.L755:
	div	r2,r2,2
	breq_s	r2,0,.L753
	bbit1.d	r2,0,@.L756
	fdmul r12,r12,r12
	div	r2,r2,2
	.align 2
.L767:
	bbit1.d	r2,0,@.L756
	fdmul r12,r12,r12
	b.d	.L767
	div	r2,r2,2
	.align 4
.L753:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	tst_s	r2,r2
	jeq_s	[blink]
	enter_s	{r13-r15} ; sp=sp+(-12)
	sub	r3,r2,1 ;a,b,u6
	brls	r3,3,.L770
	or	r4,r0,r1
	tst	r4,3
	bne_s	.L770
	bmskn	r6,r2,1
	sub2	r12,r6,1 ;a,b,u6
	sub2	r14,r1,1 ;a,b,u6
	add	r5,r0,r6 ;a,b,c/u6
	mov_s	r13,r0	;4
	lsr_s	r12,r12,2
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L793	; lp_count:@.L771->@.L793
	.align 2
.L771:
	ld_s	r15,[r13]		;15
	ld.a	r3,[r14,4]	;23
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	.align 2
.L793:
	; ZOL_END, begins @.L771
	add_s	r1,r1,r6   ;b,b,h
	breq.d	r6,r2,.L769
	sub	r14,r2,r6
	ldb	r2,[r5]
	ldb_s	r12,[r1]
	xor_s	r2,r2,r12
	breq.d	r14,1,.L769
	stb	r2,[r5]
	ldb	r13,[r5,1]
	ldb_s	r15,[r1,1]
	xor_s	r15,r15,r13
	breq.d	r14,2,.L769
	stb	r15,[r5,1]
	ldb	r3,[r5,2]
	ldb_s	r1,[r1,2]
	xor_s	r1,r1,r3
	stb	r1,[r5,2]
.L769:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L770:
	mov_s	r7,r0	;4
	mov	lp_count,r2	;5
	lp	@.L792	; lp_count:@.L773->@.L792
	.align 2
.L773:
	ldb.ab	r14,[r7,1]
	ldb.ab	r12,[r1,1]
	xor_s	r12,r12,r14
	stb	r12,[r7,-1]
	.align 2
.L792:
	; ZOL_END, begins @.L773
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	breq.d	r3,0,.L795
	mov_s	r4,r0	;4
	.align 2
.L796:
	ldb.a	r12,[r4,1]
	brne_s	r12,0,.L796
	.align 2
.L795:
	breq_s	r2,0,.L797
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L810	; lp_count:@.L798->@.L810
	.align 2
.L798:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r4,1]
	nop_s
	.align 2
.L810:
	; ZOL_END, begins @.L798
	.align 2
.L797:
	stb	0,[r4]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	tst_s	r1,r1
	mov_s.ne	r2,r0
	beq.d	.L820
	sub_s.ne	r0,r0,r0
	.align 2
.L822:
	mov	lp_count,r1	;5
	lp	@.L821	; lp_count:@.L812->@.L821
	.align 2
.L812:
	ldb_s	r3,[r2,r0]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L821:
	; ZOL_END, begins @.L812
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
	breq_s	r12,0,.L830
	enter_s	{r13-r13} ; sp=sp+(-4)
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L824:
	b.d	.L827
	mov_s	r3,r13	;4
	.align 4
.L826:
	breq	r2,r12,.L825
	.align 2
.L827:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L826
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L824
	mov_s	r0,0	;3
.L825:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L830:
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
.L836:
	ldb_s	r3,[r2]
	cmp_s	r3,r1
	mov.eq	r0,r2
	tst_s	r3,r3
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	ldb_s	r3,[r2]
	cmp_s	r3,r1
	mov.eq	r0,r2
	brne.d	r3,0,.L836
	add_s	r2,r2,1   ;b,b,h
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	enter_s	{r13-r15} ; sp=sp+(-12)
	ldb_s	r14,[r1]
	breq.d	r14,0,.L853
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L843:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L843
	sub.f	r2,r2,r1
	beq_s	.L853
	b.d	.L851
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L861:
	breq_s	r2,0,.L860
	.align 2
.L851:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r2,r14,.L861
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L845
	mov_s	r12,r0	;4
	.align 4
.L863:
	breq	r12,r15,.L847
	brne	r3,r2,.L848
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L862
	ldb.a	r3,[r13,1]
	.align 2
.L845:
	brne_s	r3,0,.L863
	.align 2
.L848:
	b.d	.L851
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L860:
	mov_s	r0,0	;3
.L841:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L862:
	ldb_s	r3,[r13,1]
	.align 2
.L847:
	breq	r2,r3,.L841
	b.d	.L851
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L853:
	mov_s	r0,r3	;4
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	strstr, .-strstr
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	enter_s	{r13-r13} ; sp=sp+(-4)
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	fdcmpf r0, r12
	blo_s	.L875
	ble_s	.L868
	fdcmpf r2, r12
	blo_s	.L867
.L868:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L875:
	fdcmpf r2, r12
	ble_s	.L868
	.align 2
.L867:
	mov_s	r2,r0	;4
	bxor	r3,r1,31
	vadd2	r0,r2,0
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	tst_s	r3,r3
	jeq_s	[blink]
	brlo	r1,r3,.L885
	sub_s	r1,r1,r3
	add.f	r5,r0,r1
	blo	.L885
	enter_s	{r13-r15} ; sp=sp+(-12)
	b.d	.L882
	ldb	r6,[r2]
	.align 4
.L878:
	brlo	r5,r0,.L887
	.align 2
.L882:
	mov_s	r13,r0	;4
	ldb.ab	r12,[r13,1]
	cmp_s	r12,r6
	bne.d	.L878
	mov_s.ne	r0,r13
	breq	r3,1,.L876
	.align 2
.L881:
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r9,r3,1 ;a,b,u6
	mov	lp_count,r9	;5
	lp	@.L904	; lp_count:@.L879->@.L904
	.align 2
.L879:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L903
	nop_s
	.align 2
.L904:
	; ZOL_END, begins @.L879
.L876:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L903:
	brlo	r5,r13,.L887
	mov_s	r0,r13	;4
	ldb.ab	r7,[r0,1]
	brne	r6,r7,.L878
	mov_s	r8,r13	;4
	mov_s	r13,r0	;4
	b.d	.L881
	mov_s	r0,r8	;4
	.align 4
.L887:
	mov_s	r0,0	;3
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L885:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	enter_s	{r13-r14, blink} ; sp=sp+(-12)
	mov_s	r14,r0	;4
	mov.f	r13,r2
	jlne	@memmove
	add_s	r0,r14,r13   ;a,b,c/u3
	leave_s	{r13-r14, blink, pcl} ; sp=sp+12
	.size	mempcpy, .-mempcpy
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	enter_s	{r13-r15} ; sp=sp+(-12)
	vadd2	r12,r0,0
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	fdcmpf r0, r14
	blo	.L934
	mov_s	r0,0	;3
	mov_s	r1,1072693248	;13
	fdcmpf r12, r0
	blt.d	.L938
	mov.ge	r4,0
	.align 2
.L914:
	mov_s	r3,0	;3
	mov_s	r0,0	;3
	mov_s	r1,1071644672	;13
	mov_s	r14,0	;3
	mov_s	r15,1072693248	;13
	.align 2
.L920:
	fdmul r12,r12,r0
	fdcmpf r12, r14
	bge.d	.L920
	add_s	r3,r3,1   ;b,b,h
	st_s	r3,[r2]		;16
	mov_s	r0,r12	;4
	breq.d	r4,0,.L936
	bxor	r1,r13,31
.L911:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L936:
	vadd2	r0,r12,0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L938:
	mov_s	r1,1071644672	;13
	fdcmpf r12, r0
	bhs_s	.L917
	fdcmp r12, r14
	bne_s	.L926
	.align 2
.L917:
	vadd2	r0,r12,0
	st	0,[r2]	;37
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L934:
	mov_s	r14,r0	;4
	mov_s	r1,-1074790400	;13
	mov_s	r0,0	;3
	fdcmpf r12, r0
	bhi.d	.L939
	bxor	r15,r13,31
	vadd2	r12,r14,0
	b.d	.L914
	mov_s	r4,1	;4
	.align 4
.L939:
	mov_s	r1,-1075838976	;13
	fdcmpf r12, r0
	ble	.L917
	mov_s	r4,1	;4
	.align 2
.L915:
	vadd2	r12,r14,0
	mov_s	r3,0	;3
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	.align 2
.L922:
	fdadd r12,r12,r12
	fdcmpf r12, r14
	blo.d	.L922
	add_s	r3,r3,-1   ;h,h,s3
	st_s	r3,[r2]		;16
	mov_s	r0,r12	;4
	brne.d	r4,0,.L911
	bxor	r1,r13,31
	b_s	.L936
	.align 4
.L926:
	vadd2	r14,r12,0
	b.d	.L915
	mov_s	r4,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	enter_s	{r13-r15} ; sp=sp+(-12)
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
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L944:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	brhs	r1,r0,.L971
	enter_s	{r13-r15} ; sp=sp+(-12)
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L972	; lp_count:@.L948->@.L972
	.align 2
.L948:
	brlt	r1,0,.L953
	asl_s	r1,r1,1
	brls.d	r0,r1,.L950
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L972:
	; ZOL_END, begins @.L948
	.align 2
.L951:
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L950:
	tst_s	r3,r3
	beq.d	.L951
	mov.eq	r12,0
	.align 2
.L953:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L954:
	seths	r14,r0,r1
	tst_s	r14,r14
	mov_s	r13,r15	;4
	sub_s	r14,r0,r1
	mov.ne	r13,r3
	mov.ne	r0,r14
	or_s	r12,r12,r13
	lsr.f	r3,r3,1
	bne.d	.L954
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L971:
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
	beq_s	.L975
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L975:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r3,r1,31
	xor	r2,r0,r3
	breq.d	r0,r3,.L986
	xor	r12,r1,r3
	.align 2
.L983:
	fls	r0,r2
	brne.d	r12,0,.L987
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L987:
	fls	r0,r12
	rsub	r0,r0,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L986:
	brne	r1,r0,.L983
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
.L990:
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
	bne.d	.L990
	asl_s	r1,r1,1
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L1000
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L1034
	.align 2
.L1000:
	tst_s	r3,r3
	beq_s	.L1035
	enter_s	{r13-r15} ; sp=sp+(-12)
	add3	r3,-8,r3
	sub3	r13,r1,1 ;a,b,u6
	sub3	r7,r0,1 ;a,b,u6
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1040	; lp_count:@.L1003->@.L1040
	.align 2
.L1003:
	ldd.a	r14,[r13,8]
	std.a	r14,[r7,8]
	.align 2
.L1040:
	; ZOL_END, begins @.L1003
	brls	r2,r4,.L996
	sub	r15,r2,r4
	sub	r12,r15,1 ;a,b,u6
	brls	r12,6,.L1005
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
	beq_s	.L1005
	bmskn	r9,r15,1
	sub2	r3,r9,1 ;a,b,u6
	sub2	r10,r8,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1039	; lp_count:@.L1006->@.L1039
	.align 2
.L1006:
	ld.a	r11,[r10,4]	;23
	st.ab	r11,[r13,4]	;26
	.align 2
.L1039:
	; ZOL_END, begins @.L1006
	breq.d	r15,r9,.L996
	add	r4,r4,r9   ;(p)b,b,c/u6
	add	r30,r0,r4 ;a,b,c/u6
	ldb	r15,[r1,r4]
	add	r13,r4,1 ;a,b,c/u6
	brls.d	r2,r13,.L996
	stb	r15,[r30]
	add_s	r14,r0,r13   ;a,b,c/u3
	ldb_s	r12,[r1,r13]
	add_s	r4,r4,2   ;h,h,s3
	brls.d	r2,r4,.L996
	stb_s	r12,[r14]
	add_s	r0,r0,r4   ;b,b,h
	ldb	r2,[r1,r4]
	stb_s	r2,[r0]
	.align 2
.L996:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1034:
	tst_s	r2,r2
	jeq_s	[blink]
	mov_s	r3,r12	;4
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r12,r1
	mov	lp_count,r1	;5
	lp	@.L1038	; lp_count:@.L1010->@.L1038
	.align 2
.L1010:
	ldb.a	r0,[r3,-1]
	stb.a	r0,[r2,-1]
	.align 2
.L1038:
	; ZOL_END, begins @.L1010
	j_s	[blink]
	.align 4
.L1005:
	add_s	r4,r4,-1   ;h,h,s3
	sub	r5,r1,1 ;a,b,u6
	add_s	r2,r2,r5   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1037	; lp_count:@.L1008->@.L1037
	.align 2
.L1008:
	ldb.a	r58,[r1,1]
	stb.a	r58,[r4,1]
	.align 2
.L1037:
	; ZOL_END, begins @.L1008
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1035:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r4,r4,-1   ;h,h,s3
	sub	r5,r1,1 ;a,b,u6
	add_s	r2,r2,r5   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	add	r4,r4,r0   ;(p)b,b,c/u6
	mov	lp_count,r2	;5
	lp	@.L1036	; lp_count:@.L1029->@.L1036
	.align 2
.L1029:
	ldb.a	r6,[r1,1]
	stb.a	r6,[r4,1]
	.align 2
.L1036:
	; ZOL_END, begins @.L1029
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	brlo.d	r0,r1,.L1045
	lsr	r4,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L1072
	.align 2
.L1045:
	tst	r4,r4
	beq_s	.L1073
	enter_s	{r13-r15} ; sp=sp+(-12)
	sub	r13,r4,1 ;a,b,u6
	cmp	r13,11
	bls	.L1048 ;brls out of range
	add_s	r14,r1,2   ;a,b,c/u3
	sub_s	r15,r0,r14
	brls	r15,4,.L1048
	lsr_s	r3,r0
	neg_s	r3,r3
	tst	r3,3
	and	r12,r3,3
	beq.d	.L1049
	mov.eq	r6,0
	ldh_s.x	r13,[r1]
	bbit0.d	r3,1,@.L1058
	sth_s	r13,[r0]
	ldh_s.x	r14,[r1,2]
	cmp_s	r12,3
	sth_s	r14,[r0,2]
	bne.d	.L1049
	mov.ne	r6,2
	mov_s	r6,3	;4
	ldh_s.x	r15,[r1,4]
	sth_s	r15,[r0,4]
	.align 2
.L1049:
	sub	r5,r4,r12
	add1	r13,-8,r12
	add1	r7,r0,r12
	add_s	r13,r13,r1   ;b,b,h
	lsr	r8,r5,2
	add3	r3,-8,r8
	lsr_s	r3,r3,3
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1077	; lp_count:@.L1051->@.L1077
	.align 2
.L1051:
	ldd.a	r10,[r13,8]
	std.ab	r10,[r7,8]
	.align 2
.L1077:
	; ZOL_END, begins @.L1051
	bmskn	r3,r5,1
	tst	r5,3
	beq.d	.L1044
	add_s	r3,r3,r6   ;b,b,h
	add1	r6,r0,r3
	ldh.x.as	r15,[r1,r3]
	add_s	r12,r3,1   ;a,b,c/u3
	asl_s	r14,r3,1
	brls.d	r4,r12,.L1044
	sth	r15,[r6]
	add_s	r15,r14,2   ;a,b,c/u3
	add_s	r13,r0,r15   ;a,b,c/u3
	add_s	r3,r3,2   ;b,b,h
	cmp	r4,r3
	ldh.x	r3,[r1,r15]
	bls.d	.L1044
	sth_s	r3,[r13]
	add_s	r14,r14,4   ;b,b,h
	add_s	r15,r0,r14   ;a,b,c/u3
	ldh.x	r12,[r1,r14]
	sth_s	r12,[r15]
	.align 2
.L1044:
	bbit0	r2,0,@.L1041
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L1078:
	add_s	r0,r0,r2   ;b,b,h
	ldb_s	r1,[r1,r2]
	stb_s	r1,[r0]
	.align 2
.L1041:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1072:
	tst_s	r2,r2
	jeq_s	[blink]
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r3,r1
	mov	lp_count,r1	;5
	lp	@.L1076	; lp_count:@.L1056->@.L1076
	.align 2
.L1056:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L1076:
	; ZOL_END, begins @.L1056
	j_s	[blink]
	.align 4
.L1058:
	b.d	.L1049
	mov_s	r6,1	;4
	.align 4
.L1048:
	add1	r14,-2,r4
	sub1	r9,r1,1 ;a,b,u6
	sub1	r11,r0,1 ;a,b,u6
	lsr_s	r13,r14
	add_s	r13,r13,1   ;b,b,h
	mov	lp_count,r13	;5
	lp	@.L1075	; lp_count:@.L1053->@.L1075
	.align 2
.L1053:
	ldh.x.a	r30,[r9,2]
	sth.a	r30,[r11,2]
	.align 2
.L1075:
	; ZOL_END, begins @.L1053
	bbit0	r2,0,@.L1041
	b.d	.L1078
	add_s	r2,r2,-1   ;h,h,s3
	.align 4
.L1073:
	bbit0	r2,0,@.L1079
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	ldb_s	r2,[r1,r2]
	stb_s	r2,[r0]
	.align 2
.L1079:
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	enter_s	{r13-r15} ; sp=sp+(-12)
	lsr	r3,r2,2
	brlo.d	r0,r1,.L1086
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L1114
	.align 2
.L1086:
	tst_s	r3,r3
	beq_s	.L1115
	sub	r13,r3,1 ;a,b,u6
	cmp_s	r13,23
	bls	.L1088
	add_s	r14,r1,4   ;a,b,c/u3
	cmp_s	r0,r14
	beq	.L1088 ;breq out of range
	xbfu	r12,r0,2
	bbit0.d	r0,2,@.L1089
	mov_s	r6,0	;4
	mov_s	r6,r12	;4
	ld_s	r13,[r1]		;15
	st_s	r13,[r0]		;16
	.align 2
.L1089:
	sub_s	r13,r3,r12
	add2	r14,-8,r12
	add2	r7,r0,r12
	add_s	r14,r14,r1   ;b,b,h
	lsr_s	r3,r13
	add3	r12,-8,r3
	lsr_s	r12,r12,3
	add_s	r12,r12,1   ;b,b,h
	mov	lp_count,r12	;5
	lp	@.L1121	; lp_count:@.L1090->@.L1121
	.align 2
.L1090:
	ldd.a	r4,[r14,8]
	std.ab	r4,[r7,8]
	.align 2
.L1121:
	; ZOL_END, begins @.L1090
	bbit0	r13,0,@.L1093
	bclr_s	r13,r13,0
	add_s	r13,r13,r6   ;b,b,h
	asl_s	r13,r13,2
	add_s	r14,r0,r13   ;a,b,c/u3
	ld_s	r3,[r1,r13]		;15
	st_s	r3,[r14]		;16
	.align 2
.L1093:
	brls	r2,r15,.L1081
	sub	r10,r2,r15
	sub	r12,r10,1 ;a,b,u6
	brls	r12,6,.L1084
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
	sub2	r30,r12,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1120	; lp_count:@.L1094->@.L1120
	.align 2
.L1094:
	ld.a	r58,[r30,4]	;23
	st.ab	r58,[r13,4]	;26
	.align 2
.L1120:
	; ZOL_END, begins @.L1094
	breq.d	r11,r10,.L1081
	add_s	r15,r15,r11   ;b,b,h
	add_s	r14,r0,r15   ;a,b,c/u3
	ldb_s	r13,[r1,r15]
	add_s	r12,r15,1   ;a,b,c/u3
	brls.d	r2,r12,.L1081
	stb_s	r13,[r14]
	add_s	r3,r0,r12   ;a,b,c/u3
	ldb_s	r14,[r1,r12]
	add_s	r15,r15,2   ;b,b,h
	brls.d	r2,r15,.L1081
	stb_s	r14,[r3]
	add_s	r0,r0,r15   ;b,b,h
	ldb_s	r2,[r1,r15]
	stb_s	r2,[r0]
	.align 2
.L1081:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1114:
	tst_s	r2,r2
	mov_s.ne	r3,r12
	add.ne r2,r2,r0
	beq.d	.L1081
	rsub.ne	r1,r1,r3
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
	; ZOL_END, begins @.L1098
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1088:
	add2	r3,-4,r3
	sub2	r5,r1,1 ;a,b,u6
	sub2	r8,r0,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	mov	lp_count,r3	;5
	lp	@.L1117	; lp_count:@.L1092->@.L1117
	.align 2
.L1092:
	ld.a	r9,[r5,4]	;23
	st.a	r9,[r8,4]	;26
	.align 2
.L1117:
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
	ldb.a	r59,[r1,1]
	stb.a	r59,[r15,1]
	.align 2
.L1116:
	; ZOL_END, begins @.L1096
	leave_s	{r13-r15, pcl} ; sp=sp+12
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
	j_s.d	[blink]
	fcvt32_64 r0,r0,0x00	;fuint2d r0,r0
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
	j_s.d	[blink]
	fcvt64 r0,r0,0x00	;ful2d r0,r0
	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	j_s.d	[blink]
	fcvt64_32 r0,r0,0x00	;ful2s r0,r0
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
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1137:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1148:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1138:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1139:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1140:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1141:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1142:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1143:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1144:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1145:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1146:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1147:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1149:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1150:
	j_s.d	[blink]
	mov_s	r0,14	;3
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
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1156:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1157:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1168:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1158:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1159:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1160:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1161:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1162:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1163:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1164:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1165:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1166:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1167:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1169:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1170:
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
	bls	.L1225
	enter_s	{r13-r15} ; sp=sp+(-12)
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1226	; lp_count:@.L1202->@.L1226
	.align 2
.L1202:
	brlt	r1,0,.L1207
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1204
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1226:
	; ZOL_END, begins @.L1202
	.align 2
.L1205:
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1204:
	tst_s	r3,r3
	beq.d	.L1205
	mov.eq	r12,0
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
	or_s	r12,r12,r13
	lsr.f	r3,r3,1
	bne.d	.L1208
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1225:
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
	blo_s	.L1229
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L1229:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	fdcmpf r0, r2
	blo_s	.L1233
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L1233:
	j_s.d	[blink]
	mov_s	r0,-1	;4
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
	enter_s	{r13-r13} ; sp=sp+(-4)
	tst_s	r1,r1
	mov_s	r3,r0	;4
	neg.n	r1,r1
	bn.d	.L1241
	mov.n	r13,1
	beq.d	.L1239
	mov.eq	r0,0
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
	add_s	r0,r0,r2   ;b,b,h
	beq.d	.L1243
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1255:
	; ZOL_END, begins @.L1244
	.align 2
.L1243:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1239:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	enter_s	{r13-r15} ; sp=sp+(-12)
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
	bls.d	.L1279
	mov.hi	r12,32
	.align 2
.L1281:
	mov	lp_count,r12	;5
	lp	@.L1280	; lp_count:@.L1259->@.L1280
	.align 2
.L1259:
	asl_s	r2,r2,1
	brls.d	r0,r2,.L1264
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1280:
	; ZOL_END, begins @.L1259
	.align 2
.L1264:
	tst_s	r3,r3
	mov_s	r0,0	;3
	beq.d	.L1262
	sub_s.ne	r15,r15,r15
	.align 2
.L1261:
	seths	r1,r13,r2
	tst_s	r1,r1
	mov_s	r12,r15	;4
	sub_s	r14,r13,r2
	mov.ne	r12,r3
	mov.ne	r13,r14
	or_s	r0,r0,r12
	lsr.f	r3,r3,1
	bne.d	.L1261
	lsr_s	r2,r2
	.align 2
.L1262:
	tst	r4,r4
	neg.ne	r0,r0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1279:
	b.d	.L1262
	seths	r0,r0,r1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	enter_s	{r13-r13} ; sp=sp+(-4)
	mov.f	r12,r0
	neg.n	r12,r12
	abs_s	r1,r1
	mov.n	r13,1
	mov.p	r13,0
	cmp_s	r12,r1
	mov_s	r0,r12	;4
	mov.hi	r2,1
	bls.d	.L1306
	mov.hi	r3,32
	.align 2
.L1308:
	mov	lp_count,r3	;5
	lp	@.L1307	; lp_count:@.L1284->@.L1307
	.align 2
.L1284:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1289
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1307:
	; ZOL_END, begins @.L1284
	.align 2
.L1289:
	tst_s	r2,r2
	beq.d	.L1287
	mov.eq	r0,r12
	.align 2
.L1286:
	sub.f	r3,r0,r1
	mov.hs	r0,r3
	lsr.f	r2,r2,1
	bne.d	.L1286
	lsr_s	r1,r1
	.align 2
.L1287:
	tst_s	r13,r13
	neg.ne	r0,r0
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L1306:
	sub_s	r1,r12,r1
	b.d	.L1287
	mov.hs	r0,r1
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	enter_s	{r13-r15} ; sp=sp+(-12)
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
	bne.d	.L1314
	mov_s.ne	r3,r13
	.align 2
.L1315:
	tst_s	r2,r2
	mov.ne	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1319:
	mov_s	r13,2	;3
	.align 2
.L1314:
	sub_s	r14,r12,r3
	.align 2
.L1395:
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
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
	beq.d	.L1315
	lsr	r15,r3,14
	seths	r9,r12,r15
	tst	r9,r9
	sub_s	r1,r12,r15
	mov.ne	r14,r8
	exth_s	r1,r1
	mov.ne	r12,r1
	or_s	r0,r0,r14
	bxor.f	0,r13,14
	beq.d	.L1315
	lsr_s	r3,r3,15
	seths	r13,r12,r3
	sub_s	r3,r12,r3
	tst_s	r13,r13
	exth_s	r3,r3
	mov.ne	r12,r3
	or_s	r0,r0,r13
	tst_s	r2,r2
	mov.ne	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1321:
	b.d	.L1314
	mov_s	r13,4	;3
	.align 4
.L1323:
	b.d	.L1314
	mov_s	r13,8	;3
	.align 4
.L1325:
	b.d	.L1314
	mov_s	r13,16	;3
	.align 4
.L1335:
	b.d	.L1314
	mov	r13,512	;6
	.align 4
.L1327:
	b.d	.L1314
	mov_s	r13,32	;3
	.align 4
.L1329:
	b.d	.L1314
	mov_s	r13,64	;3
	.align 4
.L1331:
	b.d	.L1314
	mov_s	r13,128	;3
	.align 4
.L1333:
	b.d	.L1314
	mov	r13,256	;6
	.align 4
.L1394:
	seteq	r13,r1,r12
	sub_s	r3,r12,r1
	exth_s	r3,r3
	tst_s	r13,r13
	mov.ne	r12,r3
	b.d	.L1315
	exth_s	r0,r13
	.align 4
.L1337:
	b.d	.L1314
	mov	r13,1024	;6
	.align 4
.L1339:
	mov_s	r13,2048	;13
	b.d	.L1395
	sub_s	r14,r12,r3
	.align 4
.L1341:
	mov_s	r13,4096	;13
	b.d	.L1395
	sub_s	r14,r12,r3
	.align 4
.L1343:
	mov_s	r13,8192	;13
	b.d	.L1395
	sub_s	r14,r12,r3
	.align 4
.L1345:
	mov_s	r13,16384	;13
	b.d	.L1395
	sub_s	r14,r12,r3
	.align 4
.L1346:
	mov_s	r3,32768	;13
	b.d	.L1314
	mov_s	r13,r3	;4
	.align 4
.L1312:
	sub_s	r1,r12,r1
	exth_s	r12,r1
	b.d	.L1315
	mov_s	r0,1	;3
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	bls	.L1420
	enter_s	{r13-r15} ; sp=sp+(-12)
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1421	; lp_count:@.L1397->@.L1421
	.align 2
.L1397:
	brlt	r1,0,.L1402
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1399
	asl_s	r3,r3,1
	add_s	r12,r12,-1   ;h,h,s3
	.align 2
.L1421:
	; ZOL_END, begins @.L1397
	.align 2
.L1400:
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1399:
	tst_s	r3,r3
	beq.d	.L1400
	mov.eq	r12,0
	.align 2
.L1402:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L1403:
	seths	r14,r0,r1
	tst_s	r14,r14
	mov_s	r13,r15	;4
	sub_s	r14,r0,r1
	mov.ne	r13,r3
	mov.ne	r0,r14
	or_s	r12,r12,r13
	lsr.f	r3,r3,1
	bne.d	.L1403
	lsr_s	r1,r1
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1420:
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
	bbit0	r2,5,@.L1423
	asl	r1,r0,r2
	mov_s	r2,0	;3
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.align 4
.L1423:
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
	bbit0	r2,5,@.L1429
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1429:
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
	enter_s	{r13-r13} ; sp=sp+(-4)
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
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp_s	r1,r3
	blt_s	.L1444
	bgt_s	.L1445
	cmp_s	r0,r2
	blo_s	.L1444
	bhi_s	.L1445
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1444:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1445:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1451
	bgt_s	.L1450
	brlo	r0,r2,.L1451
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1451:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1450:
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
	bbit0.d	r2,5,@.L1456
	mov_s	r3,r1	;4
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L1456:
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
	enter_s	{r13-r13} ; sp=sp+(-4)
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
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	enter_s	{r13-r15} ; sp=sp+(-12)
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
	leave_s	{r13-r15, pcl} ; sp=sp+12
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
	enter_s	{r13-r13} ; sp=sp+(-4)
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
	leave_s	{r13-r13, pcl} ; sp=sp+4
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
	enter_s	{r13-r13} ; sp=sp+(-4)
	vadd2	r12,r0,0
	mov_s	r3,r2	;4
	mov_s	r1,1072693248	;13
	bbit0.d	r2,0,@.L1476
	mov_s	r0,0	;3
	.align 2
.L1478:
	fdmul r0,r0,r12
	.align 2
.L1476:
	div	r3,r3,2
	breq_s	r3,0,.L1477
	bbit1.d	r3,0,@.L1478
	fdmul r12,r12,r12
	div	r3,r3,2
	.align 2
.L1485:
	bbit1.d	r3,0,@.L1478
	fdmul r12,r12,r12
	b.d	.L1485
	div	r3,r3,2
	.align 4
.L1477:
	brlt	r2,0,.L1484
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L1484:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	fddiv r0,r2,r0
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	mov_s	r3,r0
	mov_s	r0,0x3f800000 ; 1.0e+0
	bbit0.d	r1,0,@.L1487
	mov_s	r2,r1	;4
	.align 2
.L1489:
	fsmul	r0,r0,r3
	.align 2
.L1487:
	div	r2,r2,2
	breq_s	r2,0,.L1488
	bbit1.d	r2,0,@.L1489
	fsmul	r3,r3,r3
	div	r2,r2,2
	.align 2
.L1495:
	bbit1.d	r2,0,@.L1489
	fsmul	r3,r3,r3
	b.d	.L1495
	div	r2,r2,2
	.align 4
.L1488:
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
	blo_s	.L1500
	bhi_s	.L1501
	cmp_s	r0,r2
	blo_s	.L1500
	bhi_s	.L1501
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1500:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1501:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1507
	bhi_s	.L1506
	brlo	r0,r2,.L1507
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1507:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1506:
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
	.global	__moddi3
	.global	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
