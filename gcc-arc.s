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
	jeq.d	[blink]
	add_s	r2,r2,r0   ;b,b,h
	sub_s	r1,r3,r1
	brle	r1,2,.L37
	add_s	r1,r1,-1   ;h,h,s3
	ldb.a	r12,[r3,-1]
	mov	lp_count,r1	;5
	lp	@.L51	; lp_count:@.L4->@.L51
	.align 2
.L4:
	stb.a	r12,[r2,-1]
	ldb.a	r12,[r3,-1]
	.align 2
.L51:
	; ZOL_END, begins @.L4
	j_s.d	[blink]
	stb.a	r12,[r2,-1]
	.align 4
.L2:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L48
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
	lsr_s	r3,r3,2
	sub2	r13,r1,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L38
	mov_s	r12,r0	;4
	add_s	r3,r3,-1   ;h,h,s3
	ld.a	r14,[r13,4]	;23
	mov	lp_count,r3	;5
	lp	@.L50	; lp_count:@.L6->@.L50
	.align 2
.L6:
	st.ab	r14,[r12,4]	;26
	ld.a	r14,[r13,4]	;23
	.align 2
.L50:
	; ZOL_END, begins @.L6
	st.ab	r14,[r12,4]	;26
	sub.f	r2,r2,r15
	.align 2
.L52:
	beq.d	.L3
	add_s	r1,r1,r15   ;b,b,h
	ldb_s	r3,[r1]
	breq.d	r2,1,.L3
	stb_s	r3,[r12]
	ldb_s	r14,[r1,1]
	breq.d	r2,2,.L3
	stb_s	r14,[r12,1]
	ldb_s	r1,[r1,2]
	stb_s	r1,[r12,2]
.L3:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L37:
	ldb.a	r7,[r3,-1]
	stb.a	r7,[r2,-1]
	dbnz	r1,.L37
	j_s	[blink]
	.align 4
.L38:
	ld.a	r4,[r13,4]	;23
	st.ab	r4,[r12,4]	;26
	dbnz	r3,.L38
	b.d	.L52
	sub.f	r2,r2,r15
	.align 4
.L5:
	sub	r5,r0,1 ;a,b,u6
	b.d	.L9
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L49:
	add_s	r15,r15,1   ;b,b,h
	.align 2
.L9:
	ldb	r6,[r15,-1]
	brne.d	r15,r1,.L49
	stb.a	r6,[r5,1]
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L48:
	add_s	r3,r1,1   ;a,b,c/u3
	sub	r12,r0,1 ;a,b,u6
	add_s	r1,r1,r2   ;b,b,h
	.align 2
.L43:
	ldb	r2,[r3,-1]
	cmp_s	r3,r1
	jeq.d	[blink]
	stb.a	r2,[r12,1]
	b.d	.L43
	add_s	r3,r3,1   ;b,b,h
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	breq_s	r3,0,.L67
	enter_s	{r13-r13} ; sp=sp+(-4)
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r3	;5
	lp	@.L70	; lp_count:@.L55->@.L70
	.align 2
.L55:
	ldb.a	r12,[r1,1]
	breq.d	r12,r2,.L53
	stb.ab	r12,[r0,1]
	nop_s
	.align 2
.L70:
	; ZOL_END, begins @.L55
	mov_s	r0,0	;3
.L53:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L67:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	breq_s	r2,0,.L79
	extb_s	r1,r1
	mov_s	r3,r0	;4
	mov	lp_count,r2	;5
	lp	@.L83	; lp_count:@.L73->@.L83
	.align 2
.L73:
	mov_s	r0,r3	;4
	ldb.ab	r12,[r3,1]
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L83:
	; ZOL_END, begins @.L73
	.align 2
.L79:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	breq_s	r2,0,.L94
	.align 2
.L100:
	mov	lp_count,r2	;5
	lp	@.L99	; lp_count:@.L86->@.L99
	.align 2
.L86:
	ldb_s	r12,[r0]
	add_s	r1,r1,1   ;b,b,h
	ldb	r3,[r1,-1]
	brne.d	r12,r3,.L98
	add_s	r0,r0,1   ;b,b,h
	nop_s
	.align 2
.L99:
	; ZOL_END, begins @.L86
	.align 2
.L94:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L98:
	j_s.d	[blink]
	sub_s	r0,r12,r3
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	enter_s	{r13-r13, blink} ; sp=sp+(-8)
	tst_s	r2,r2
	mov_s	r13,r0	;4
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
	b.d	.L108
	sub	r12,r0,1 ;a,b,u6
	.align 4
.L110:
	ldb_s	r3,[r0]
	cmp_s	r3,r1
	jeq_s	[blink]
	.align 2
.L108:
	cmp_s	r2,r12
	mov_s	r0,r2	;4
	bne.d	.L110
	add_s	r2,r2,-1   ;h,h,s3
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	enter_s	{r13-r13, blink} ; sp=sp+(-8)
	tst_s	r2,r2
	bmsk.ne	r1,r1,7
	mov_s	r13,r0	;4
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
.L119:
	ldb.a	r3,[r1,1]
	mov_s	r0,r12	;4
	tst_s	r3,r3
	jeq.d	[blink]
	stb.ab	r3,[r12,1]
	ldb.a	r3,[r1,1]
	mov_s	r0,r12	;4
	brne.d	r3,0,.L119
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
.L133:
	ldb.a	r2,[r0,1]
	tst_s	r2,r2
	jeq_s	[blink]
	brne	r2,r1,.L133
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	mov_s	r2,r0	;4
	.align 2
.L137:
	ldb_s	r3,[r2]
	mov_s	r0,r2	;4
	cmp_s	r3,r1
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	brne_s	r3,0,.L137
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb_s	r2,[r0]
	ldb_s	r3,[r1]
	breq	r2,r3,.L143
	j_s.d	[blink]
	sub_s	r0,r2,r3
	.align 4
.L144:
	ldb.a	r2,[r0,1]
	ldb.a	r3,[r1,1]
	brne	r2,r3,.L142
	.align 2
.L143:
	brne_s	r2,0,.L144
	.align 2
.L142:
	sub_s	r0,r2,r3
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	ldb_s	r2,[r0]
	breq_s	r2,0,.L151
	mov_s	r1,r0	;4
	.align 2
.L150:
	ldb.a	r3,[r1,1]
	brne_s	r3,0,.L150
	j_s.d	[blink]
	sub_s	r0,r1,r0
	.align 4
.L151:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L162
	ldb_s	r3,[r0]
	breq_s	r3,0,.L169
	enter_s	{r13-r13} ; sp=sp+(-4)
	add_s	r2,r2,-1   ;h,h,s3
	b.d	.L158
	add_s	r12,r0,r2   ;a,b,c/u3
	.align 4
.L171:
	breq	r0,r12,.L157
	brne	r2,r3,.L157
	ldb.a	r3,[r0,1]
	breq_s	r3,0,.L170
	.align 2
.L158:
	mov_s	r13,r1	;4
	ldb.ab	r2,[r1,1]
	brne_s	r2,0,.L171
	.align 2
.L157:
	sub_s	r0,r3,r2
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L162:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L170:
	ldb_s	r2,[r13,1]
	sub_s	r0,r3,r2
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L169:
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
	brle	r2,3,.L179
	sub1	r2,r2,1 ;a,b,u6
	ldb_s	r12,[r0,1]
	ldb.ab	r3,[r0,2]
	stb_s	r12,[r1]
	stb_s	r3,[r1,1]
	ldb_s	r12,[r0,1]
	mov	lp_count,r2	;5
	lp	@.L181	; lp_count:@.L174->@.L181
	.align 2
.L174:
	add_s	r1,r1,2   ;b,b,h
	ldb.ab	r3,[r0,2]
	stb_s	r12,[r1]
	stb_s	r3,[r1,1]
	ldb_s	r12,[r0,1]
	.align 2
.L181:
	; ZOL_END, begins @.L174
	ldb.ab	r3,[r0,2]
	stb_s	r12,[r1,2]
	j_s.d	[blink]
	stb_s	r3,[r1,3]
	.align 4
.L179:
	ldb_s	r12,[r0,1]
	add_s	r1,r1,2   ;b,b,h
	ldb.ab	r3,[r0,2]
	stb	r12,[r1,-2]
	stb	r3,[r1,-1]
	dbnz	r2,.L179
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
	brls	r0,31,.L212
	add	r2,r0,-127     ;a,b,limm
	brhi	r2,32,.L214
	.align 2
.L212:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L214:
	add	r1,r0,-8232     ;a,b,limm
	brls	r1,1,.L212
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
	brls	r0,254,.L225
	brls	r0,8231,.L222
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L222
	add	r1,r0,-57344     ;a,b,limm
	brls	r1,8184,.L222
	add	r3,r0,-65532     ;a,b,limm
	brhi	r3,1048579,.L223
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L222:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L225:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L223:
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
	bv	.L236
	fdcmpf r0, r2
	ble_s	.L239
	j_s.d	[blink]
	fdsub r0,r0,r2
	.align 4
.L239:
	mov_s	r0,0	;3
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L236:
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
	bv	.L245
	fscmpf	r0,r1
	ble_s	.L248
	j_s.d	[blink]
	fssub	r0,r0,r1
	.align 4
.L248:
	j_s.d	[blink]
	mov_s	r0,0x00000000
	.align 4
.L245:
	j_s.d	[blink]
	mov_s	r0,r1
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	fdcmp r0, r0
	bv	.L253
	fdcmp r2, r2
	jv	[blink]
	enter_s	{r13-r13} ; sp=sp+(-4)
	mov_s	r12,r1	;4
	mov_s	r13,r3	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	breq	r12,r13,.L252
	tst_s	r12,r12
	mov.ne	r0,r2
	mov.ne	r1,r3
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L252:
	fdcmpf r0, r2
	mov.lo	r0,r2
	mov.lo	r1,r3
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L253:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	fscmp	r0,r0
	bv	.L263
	fscmp	r1,r1
	jv	[blink]
	mov_s	r2,r0	;4
	mov_s	r3,r1	;4
	bmskn	r2,r2,30
	bmskn	r3,r3,30
	breq	r2,r3,.L262
	tst_s	r2,r2
	j_s.d	[blink]
	mov.ne	r0,r1
	.align 4
.L262:
	fscmpf	r0,r1
	j_s.d	[blink]
	mov.lo	r0,r1
	.align 4
.L263:
	j_s.d	[blink]
	mov_s	r0,r1
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	fdcmp r0, r0
	bv	.L270
	fdcmp r2, r2
	jv	[blink]
	enter_s	{r13-r13} ; sp=sp+(-4)
	mov_s	r12,r1	;4
	mov_s	r13,r3	;4
	bmskn	r12,r12,30
	bmskn	r13,r13,30
	breq	r12,r13,.L269
	tst_s	r12,r12
	mov.ne	r0,r2
	mov.ne	r1,r3
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L269:
	fdcmpf r0, r2
	mov.lo	r0,r2
	mov.lo	r1,r3
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L270:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	fdcmp r0, r0
	bv	.L280
	enter_s	{r13-r15} ; sp=sp+(-12)
	vadd2	r12,r0,0
	fdcmp r2, r2
	bv	.L277
	mov_s	r14,r13	;4
	mov_s	r15,r3	;4
	bmskn	r14,r14,30
	bmskn	r15,r15,30
	breq	r14,r15,.L279
	tst_s	r14,r14
	mov.ne	r2,r0
	mov.ne	r3,r1
	vadd2	r0,r2,0
.L277:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L279:
	fdcmpf r0, r2
	mov.lo	r2,r0
	mov.lo	r3,r1
	vadd2	r0,r2,0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L280:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	fscmp	r0,r0
	bv	.L290
	fscmp	r1,r1
	jv	[blink]
	mov_s	r3,r0	;4
	mov_s	r12,r1	;4
	bmskn	r3,r3,30
	bmskn	r12,r12,30
	breq	r3,r12,.L289
	tst_s	r3,r3
	mov.ne	r1,r0
	j_s.d	[blink]
	mov_s	r0,r1
	.align 4
.L289:
	fscmpf	r0,r1
	mov.lo	r1,r0
	j_s.d	[blink]
	mov_s	r0,r1
	.align 4
.L290:
	j_s.d	[blink]
	mov_s	r0,r1
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	fdcmp r0, r0
	bv	.L297
	enter_s	{r13-r15} ; sp=sp+(-12)
	vadd2	r12,r0,0
	fdcmp r2, r2
	bv	.L294
	mov_s	r14,r13	;4
	mov_s	r15,r3	;4
	bmskn	r14,r14,30
	bmskn	r15,r15,30
	breq	r14,r15,.L296
	tst_s	r14,r14
	mov.ne	r2,r0
	mov.ne	r3,r1
	vadd2	r0,r2,0
.L294:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L296:
	fdcmpf r0, r2
	mov.lo	r2,r0
	mov.lo	r3,r1
	vadd2	r0,r2,0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L297:
	vadd2	r0,r2,0
	j_s	[blink]
	.size	fminl, .-fminl
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	mov_s	r2,@s.0	;13
	breq_s	r0,0,.L305
	mov_s	r12,@digits	;13
	.align 2
.L306:
	and	r3,r0,63
	ldb_s	r1,[r12,r3]
	lsr.f	r0,r0,6
	bne.d	.L306
	stb.ab	r1,[r2,1]
	.align 2
.L305:
	stb	0,[r2]
	mov_s	r0,@s.0	;13
	j_s	[blink]
	.size	l64a, .-l64a
	.align 4
	.global	srand
	.type	srand, @function
srand:
	st	0,[@seed+4]	;37
	add_s	r0,r0,-1   ;h,h,s3
	st	r0,[@seed]	;26
	j_s	[blink]
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	enter_s	{r13-r13} ; sp=sp+(-4)
	ld	r2,[@seed]	;23
	ld	r12,[@seed+4]	;23
	mpy	r13,r2,1481765933
	mpydu	r0,r2,1284865837
	mpy	r12,r12,1284865837
	add.f	r0,r0,1
	st	r0,[@seed]	;26
	add_s	r12,r12,r13   ;b,b,h
	add_s	r1,r1,r12   ;b,b,h
	add.cs	r1,r1,1
	st	r1,[@seed+4]	;26
	lsr_s	r0,r1
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	breq_s	r1,0,.L321
	ld_s	r2,[r1]		;15
	st_s	r1,[r0,4]		;16
	st_s	r2,[r0]		;16
	st_s	r0,[r1]		;16
	ld_s	r1,[r0]		;15
	tst_s	r1,r1
	jeq_s	[blink]
	j_s.d	[blink]
	st_s	r0,[r1,4]		;16
	.align 4
.L321:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L323
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L323:
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
	breq.d	r16,0,.L333
	mov_s	r15,r3	;4
	mov_s	r19,r4	;4
	mov_s	r13,r1	;4
	b.d	.L335
	mov_s	r14,0	;3
	.align 4
.L348:
	breq	r16,r14,.L333
	.align 2
.L335:
	mov_s	r1,r13	;4
	jl.d	[r19]
	mov_s	r0,r17	;4
	mov_s	r18,r13	;4
	add_s	r14,r14,1   ;b,b,h
	brne.d	r0,0,.L348
	add_s	r13,r13,r15   ;b,b,h
	mov_s	r0,r18	;4
	leave_s	{r13-r21, blink, pcl} ; sp=sp+40
	.align 4
.L333:
	mpy	r18,r15,r16
	tst_s	r15,r15
	add_s	r16,r16,1   ;h,h,s3
	st	r16,[r20]	;26
	mov_s.ne	r2,r15
	mov_s.ne	r1,r17
	add	r18,r18,r21   ;(p)b,b,c/u6
	mov_s.ne	r0,r18
	jlne	@memmove
	mov_s	r0,r18	;4
	leave_s	{r13-r21, blink, pcl} ; sp=sp+40
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	enter_s	{r13-r19, blink} ; sp=sp+(-32)
	ld	r19,[r2]	;23
	breq	r19,0,.L350
	mov_s	r15,r0	;4
	mov_s	r16,r3	;4
	mov_s	r17,r4	;4
	mov_s	r13,r1	;4
	b.d	.L352
	mov_s	r14,0	;3
	.align 4
.L361:
	breq	r19,r14,.L350
	.align 2
.L352:
	mov_s	r1,r13	;4
	jl.d	[r17]
	mov_s	r0,r15	;4
	mov_s	r18,r13	;4
	add_s	r14,r14,1   ;b,b,h
	brne.d	r0,0,.L361
	add_s	r13,r13,r16   ;b,b,h
	mov_s	r0,r18	;4
	leave_s	{r13-r19, blink, pcl} ; sp=sp+32
	.align 4
.L350:
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
.L384:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L384
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L384
	breq	r2,43,.L367
	breq	r2,45,.L368
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L376
	mov_s	r15,0	;3
	.align 2
.L370:
	mov_s	r0,0	;3
	.align 2
.L373:
	mpy	r12,r0,10
	ldb.a	r14,[r3,1]
	mov_s	r13,r2	;4
	sub_s	r0,r12,r2
	sub3	r2,r14,6 ;a,b,u6
	brls	r2,9,.L373
	brne_s	r15,0,.L364
	sub_s	r0,r13,r12
.L364:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L368:
	ldb_s	r1,[r3,1]
	add_s	r3,r3,1   ;b,b,h
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	bls.d	.L370
	mov.ls	r15,1
	.align 2
.L376:
	mov_s	r0,0	;3
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L367:
	ldb_s	r0,[r3,1]
	sub3	r2,r0,6 ;a,b,u6
	brhi.d	r2,9,.L376
	add_s	r3,r3,1   ;b,b,h
	b.d	.L370
	mov_s	r15,0	;3
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	enter_s	{r13-r15} ; sp=sp+(-12)
	.align 2
.L407:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r2,32,.L407
	sub	r12,r2,9 ;a,b,u6
	brls	r12,4,.L407
	breq	r2,43,.L392
	breq	r2,45,.L410
	sub3	r2,r2,6 ;a,b,u6
	brhi	r2,9,.L400
	mov_s	r15,0	;3
	.align 2
.L394:
	mov_s	r0,0	;3
	.align 2
.L397:
	mpy	r12,r0,10
	ldb.a	r14,[r3,1]
	mov_s	r13,r2	;4
	sub_s	r0,r12,r2
	sub3	r2,r14,6 ;a,b,u6
	brls	r2,9,.L397
	brne_s	r15,0,.L389
	sub_s	r0,r13,r12
.L389:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L410:
	ldb_s	r1,[r3,1]
	mov_s	r3,r0	;4
	sub3	r2,r1,6 ;a,b,u6
	cmp_s	r2,9
	bls.d	.L394
	mov.ls	r15,1
	.align 2
.L400:
	mov_s	r0,0	;3
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L392:
	ldb_s	r0,[r3,1]
	sub3	r2,r0,6 ;a,b,u6
	brhi.d	r2,9,.L400
	add_s	r3,r3,1   ;b,b,h
	b.d	.L394
	mov_s	r15,0	;3
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	enter_s	{r13-r15} ; sp=sp+(-12)
	.align 2
.L431:
	mov_s	r14,r0	;4
	ldb.ab	r12,[r0,1]
	breq	r12,32,.L431
	sub	r2,r12,9 ;a,b,u6
	brls	r2,4,.L431
	breq	r12,43,.L414
	brne	r12,45,.L435
	ldb_s	r1,[r14,1]
	add_s	r14,r14,1   ;b,b,h
	sub3	r12,r1,6 ;a,b,u6
	cmp_s	r12,9
	bhi.d	.L423
	mov.ls	r5,1
	.align 2
.L417:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L420:
	mpy	r1,r1,10
	ldb.a	r4,[r14,1]
	mpydu	r2,r0,10
	asr	r15,r12,31
	mov_s	r13,r12	;4
	sub.f	r0,r2,r12
	add_s	r3,r3,r1   ;b,b,h
	sub3	r12,r4,6 ;a,b,u6
	sbc	r1,r3,r15
	brls	r12,9,.L420
	brne	r5,0,.L411
	sub.f	r0,r13,r2
	sbc	r1,r15,r3
.L411:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L435:
	sub3	r12,r12,6 ;a,b,u6
	brhi	r12,9,.L423
	.align 2
.L424:
	b.d	.L417
	mov_s	r5,0	;4
	.align 4
.L414:
	ldb_s	r0,[r14,1]
	sub3	r12,r0,6 ;a,b,u6
	brls.d	r12,9,.L424
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L423:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	enter_s	{r13-r19, blink} ; sp=sp+(-32)
	mov.f	r13,r2
	beq_s	.L437
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	b.d	.L440
	mov_s	r19,r4	;4
	.align 4
.L447:
	beq_s	.L436
	sub_s	r13,r13,r15
	breq.d	r13,0,.L437
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L440:
	lsr_s	r15,r13
	mov_s	r0,r18	;4
	mpy	r14,r15,r17
	add_s	r13,r13,-1   ;h,h,s3
	add_s	r14,r14,r16   ;b,b,h
	jl.d	[r19]
	mov_s	r1,r14	;4
	tst_s	r0,r0
	bp	.L447
	mov_s	r13,r15	;4
	brne_s	r13,0,.L440
	.align 2
.L437:
	mov_s	r14,0	;3
	.align 2
.L436:
	mov_s	r0,r14	;4
	leave_s	{r13-r19, blink, pcl} ; sp=sp+32
	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	enter_s	{r13-r20, blink} ; sp=sp+(-36)
	mov.f	r13,r2
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r17,r3	;4
	mov_s	r19,r4	;4
	beq.d	.L453
	mov_s	r20,r5	;4
	.align 2
.L461:
	asr_s	r15,r13,1
	mov_s	r2,r20	;4
	mpy	r14,r15,r17
	mov_s	r0,r18	;4
	add_s	r13,r13,-1   ;h,h,s3
	add_s	r14,r14,r16   ;b,b,h
	jl.d	[r19]
	mov_s	r1,r14	;4
	breq_s	r0,0,.L448
	brle	r0,0,.L451
	asr.f	r13,r13,1
	bne.d	.L461
	add	r16,r14,r17 ;a,b,c/u6
	.align 2
.L453:
	mov_s	r14,0	;3
	.align 2
.L448:
	mov_s	r0,r14	;4
	leave_s	{r13-r20, blink, pcl} ; sp=sp+36
	.align 4
.L451:
	brne.d	r15,0,.L461
	mov_s	r13,r15	;4
	b.d	.L448
	mov_s	r14,0	;3
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
	enter_s	{r13-r17, blink} ; sp=sp+(-24)
	mov_s	r17,r4	;4
	mov_s	r15,r2	;4
	mov_s	r14,r1	;4
	mov_s	r16,r3	;4
	mov_s	r13,r0	;4
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__divdi3;1
	vadd2	r2,r16,0
	std	r0,[r13]
	vadd2	r0,r14,0
	bl	@__moddi3;1
	vadd2	r2,r0,0
	std	r2,[r13,8]
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
	xor_s	r1,r1,r2
	sub.f	r0,r0,r2
	j_s.d	[blink]
	sbc	r1,r1,r2
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	enter_s	{r13-r17, blink} ; sp=sp+(-24)
	mov_s	r17,r4	;4
	mov_s	r15,r2	;4
	mov_s	r14,r1	;4
	mov_s	r16,r3	;4
	mov_s	r13,r0	;4
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__divdi3;1
	vadd2	r2,r16,0
	std	r0,[r13]
	vadd2	r0,r14,0
	bl	@__moddi3;1
	vadd2	r2,r0,0
	std	r2,[r13,8]
	mov_s	r0,r13	;4
	leave_s	{r13-r17, blink, pcl} ; sp=sp+24
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L482
	.align 2
.L479:
	cmp_s	r1,r2
	jeq_s	[blink]
	ld.a	r2,[r0,4]	;23
	brne_s	r2,0,.L479
	.align 2
.L482:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ld_s	r2,[r0]		;15
	ld_s	r3,[r1]		;15
	breq	r2,r3,.L490
	b_s	.L489
	.align 4
.L491:
	ld.a	r2,[r0,4]	;23
	ld.a	r3,[r1,4]	;23
	brne	r2,r3,.L489
	.align 2
.L490:
	brne_s	r2,0,.L491
	.align 2
.L489:
	brlt	r2,r3,.L493
	j_s.d	[blink]
	setgt	r0,r2,r3
	.align 4
.L493:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L496:
	ld.ab	r2,[r1,4]	;23
	tst_s	r2,r2
	jeq.d	[blink]
	st.a	r2,[r3,4]	;26
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L496
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L504
	mov_s	r1,r0	;4
	.align 2
.L503:
	ld.a	r3,[r1,4]	;23
	brne_s	r3,0,.L503
	sub_s	r0,r1,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.align 4
.L504:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	breq_s	r2,0,.L513
	enter_s	{r13-r14} ; sp=sp+(-8)
	mov	lp_count,r2	;5
	lp	@.L523	; lp_count:@.L509->@.L523
	.align 2
.L509:
	ld_s	r13,[r1]		;15
	mov_s	r14,r0	;4
	mov_s	r12,r1	;4
	ld.ab	r3,[r0,4]	;23
	brne.d	r3,r13,.L510
	add_s	r1,r1,4   ;b,b,h
	breq_s	r3,0,.L510
	nop_s
	.align 2
.L523:
	; ZOL_END, begins @.L509
	mov_s	r0,0	;3
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.align 4
.L510:
	ld_s	r0,[r14]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r0,r2
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.align 4
.L513:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	tst_s	r2,r2
	beq.d	.L532
	mov_s.ne	r3,r0
	.align 2
.L537:
	mov	lp_count,r2	;5
	lp	@.L536	; lp_count:@.L526->@.L536
	.align 2
.L526:
	mov_s	r0,r3	;4
	ld.ab	r12,[r3,4]	;23
	cmp_s	r12,r1
	jeq_s	[blink]
	nop_s
	.align 2
.L536:
	; ZOL_END, begins @.L526
	.align 2
.L532:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	breq_s	r2,0,.L549
	.align 2
.L556:
	mov	lp_count,r2	;5
	lp	@.L555	; lp_count:@.L540->@.L555
	.align 2
.L540:
	ld_s	r12,[r0]		;15
	add_s	r1,r1,4   ;b,b,h
	ld	r3,[r1,-4]	;23
	cmp_s	r12,r3
	bne.d	.L553
	add_s	r0,r0,4   ;b,b,h
	nop_s
	.align 2
.L555:
	; ZOL_END, begins @.L540
	.align 2
.L549:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L553:
	blt_s	.L554
	j_s.d	[blink]
	setgt	r0,r12,r3
	.align 4
.L554:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	enter_s	{r13-r13, blink} ; sp=sp+(-8)
	tst_s	r2,r2
	asl.ne	r2,r2,2
	mov_s	r13,r0	;4
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
	brhs	r12,r3,.L599
	tst_s	r2,r2
	jeq_s	[blink]
	sub2	r2,r3,1 ;a,b,u6
	lsr_s	r2,r2,2
	add_s	r1,r1,r3   ;b,b,h
	add_s	r2,r2,1   ;b,b,h
	brle.d	r2,2,.L592
	add_s	r3,r3,r0   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	ld.a	r12,[r1,-4]	;23
	mov	lp_count,r2	;5
	lp	@.L601	; lp_count:@.L568->@.L601
	.align 2
.L568:
	st.a	r12,[r3,-4]	;26
	ld.a	r12,[r1,-4]	;23
	.align 2
.L601:
	; ZOL_END, begins @.L568
	j_s.d	[blink]
	st.a	r12,[r3,-4]	;26
	.align 4
.L599:
	tst_s	r2,r2
	jeq_s	[blink]
	enter_s	{r13-r15} ; sp=sp+(-12)
	sub	r3,r2,1 ;a,b,u6
	brls.d	r3,23,.L569
	add_s	r14,r1,4   ;a,b,c/u3
	add_s	r13,r1,4   ;a,b,c/u3
	breq.d	r13,r0,.L569
	mov_s	r14,r13	;4
	bbit0.d	r0,2,@.L576
	xbfu	r15,r0,2
	mov_s	r4,r0	;4
	ld_s	r12,[r1]		;15
	st.ab	r12,[r4,4]	;26
	.align 2
.L570:
	sub_s	r2,r2,r15
	lsr_s	r3,r2
	add2	r5,-8,r15
	add2	r12,r0,r15
	brle.d	r3,2,.L593
	add_s	r1,r1,r5   ;b,b,h
	add_s	r3,r3,-1   ;h,h,s3
	ldd.a	r14,[r1,8]
	mov	lp_count,r3	;5
	lp	@.L600	; lp_count:@.L571->@.L600
	.align 2
.L571:
	std.ab	r14,[r12,8]
	ldd.a	r14,[r1,8]
	.align 2
.L600:
	; ZOL_END, begins @.L571
	std.ab	r14,[r12,8]
	.align 2
.L594:
	bbit0	r2,0,@.L578
	bclr_s	r2,r2,0
	asl_s	r2,r2,2
	add	r4,r4,r2   ;(p)b,b,c/u6
	ld_s	r2,[r13,r2]		;15
	st	r2,[r4]	;26
.L578:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L592:
	ld.a	r4,[r1,-4]	;23
	st.a	r4,[r3,-4]	;26
	dbnz	r2,.L592
	j_s	[blink]
	.align 4
.L593:
	ldd.a	r6,[r1,8]
	std.ab	r6,[r12,8]
	dbnz	r3,.L593
	b_s	.L594
	.align 4
.L576:
	mov_s	r13,r1	;4
	b.d	.L570
	mov_s	r4,r0	;4
	.align 4
.L569:
	sub2	r1,r0,1 ;a,b,u6
	.align 2
.L574:
	add_s	r3,r3,-1   ;h,h,s3
	ld	r13,[r14,-4]	;23
	cmp_s	r3,-1
	st.a	r13,[r1,4]	;26
	bne.d	.L574
	add_s	r14,r14,4   ;b,b,h
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
	brls.d	r13,5,.L608
	xbfu	r12,r0,2
	bbit0.d	r3,0,@.L605
	mov_s	r4,r0	;4
	sub1	r13,r2,1 ;a,b,u6
	st.ab	r1,[r4,4]	;26
	.align 2
.L605:
	sub_s	r2,r2,r12
	lsr_s	r3,r2
	mov_s	r15,r1	;4
	mov_s	r14,r1	;4
	brle.d	r3,2,.L632
	add2	r12,r0,r12
	add_s	r3,r3,-1   ;h,h,s3
	std.ab	r14,[r12,8]
	mov	lp_count,r3	;5
	lp	@.L638	; lp_count:@.L606->@.L638
	.align 2
.L606:
	std.ab	r14,[r12,8]
	.align 2
.L638:
	; ZOL_END, begins @.L606
	.align 2
.L633:
	bbit0	r2,0,@.L603
	bclr_s	r2,r2,0
	sub_s	r13,r13,r2
	add2	r2,r4,r2
	.align 2
.L604:
	breq.d	r13,0,.L603
	st_s	r1,[r2]		;16
	breq.d	r13,1,.L603
	st_s	r1,[r2,4]		;16
	breq.d	r13,2,.L603
	st_s	r1,[r2,8]		;16
	breq.d	r13,3,.L603
	st_s	r1,[r2,12]		;16
	breq.d	r13,4,.L603
	st_s	r1,[r2,16]		;16
	st_s	r1,[r2,20]		;16
.L603:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L632:
	std.ab	r14,[r12,8]
	dbnz	r3,.L632
	b_s	.L633
	.align 4
.L608:
	b.d	.L604
	mov_s	r2,r0	;4
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	cmp_s	r0,r1
	bhs_s	.L640
	tst_s	r2,r2
	add_s	r3,r0,r2   ;a,b,c/u3
	jeq.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
	sub_s	r0,r3,r0
	brle	r0,2,.L675
	add_s	r0,r0,-1   ;h,h,s3
	ldb.a	r2,[r3,-1]
	mov	lp_count,r0	;5
	lp	@.L688	; lp_count:@.L642->@.L688
	.align 2
.L642:
	stb.a	r2,[r1,-1]
	ldb.a	r2,[r3,-1]
	.align 2
.L688:
	; ZOL_END, begins @.L642
	j_s.d	[blink]
	stb.a	r2,[r1,-1]
	.align 4
.L640:
	jeq_s	[blink]
	tst_s	r2,r2
	jeq_s	[blink]
	sub	r3,r2,1 ;a,b,u6
	brls	r3,6,.L685
	enter_s	{r13-r14} ; sp=sp+(-8)
	or	r14,r1,r0
	add_s	r12,r0,1   ;a,b,c/u3
	bmsk_s	r14,r14,1
	sub_s	r13,r1,r12
	seteq	r14,r14,0
	seths	r13,r13,3
	tst_s	r14,r13
	beq_s	.L643
	bmskn	r14,r2,1
	sub2	r3,r14,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L676
	sub2	r12,r0,1 ;a,b,u6
	add_s	r3,r3,-1   ;h,h,s3
	ld.a	r13,[r12,4]	;23
	mov	lp_count,r3	;5
	lp	@.L687	; lp_count:@.L644->@.L687
	.align 2
.L644:
	st.ab	r13,[r1,4]	;26
	ld.a	r13,[r12,4]	;23
	.align 2
.L687:
	; ZOL_END, begins @.L644
	st.ab	r13,[r1,4]	;26
	sub.f	r2,r2,r14
	.align 2
.L689:
	beq.d	.L639
	add_s	r0,r0,r14   ;b,b,h
	ldb_s	r3,[r0]
	breq.d	r2,1,.L639
	stb_s	r3,[r1]
	ldb_s	r14,[r0,1]
	breq.d	r2,2,.L639
	stb_s	r14,[r1,1]
	ldb_s	r0,[r0,2]
	stb_s	r0,[r1,2]
	.align 2
.L639:
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.align 4
.L675:
	ldb.a	r7,[r3,-1]
	stb.a	r7,[r1,-1]
	dbnz	r0,.L675
	j_s	[blink]
	.align 4
.L676:
	ld.a	r4,[r12,4]	;23
	st.ab	r4,[r1,4]	;26
	dbnz	r3,.L676
	b.d	.L689
	sub.f	r2,r2,r14
	.align 4
.L643:
	sub	r5,r1,1 ;a,b,u6
	b.d	.L647
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L686:
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L647:
	ldb	r6,[r12,-1]
	brne.d	r12,r0,.L686
	stb.a	r6,[r5,1]
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.align 4
.L685:
	add_s	r12,r0,1   ;a,b,c/u3
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L681:
	ldb	r2,[r12,-1]
	cmp_s	r12,r0
	jeq.d	[blink]
	stb.a	r2,[r1,1]
	b.d	.L681
	add_s	r12,r12,1   ;b,b,h
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	enter_s	{r13-r15} ; sp=sp+(-12)
	neg_s	r14,r2
	lsr_s	r12,r0
	and	r13,r14,63
	asl	r15,r1,r2
	btst_s	r2,5
	asl_s	r3,r1,1
	not	r4,r2
	asl	r2,r0,r2
	lsr_s	r0,r0,r13
	not	r5,r13
	lsr	r12,r12,r4
	lsr_s	r1,r1,r13
	or_s	r12,r12,r15
	asl	r3,r3,r5
	mov_s	r13,r2	;4
	sub.ne	r13,r13,r13
	mov.eq	r2,r12
	or_s	r3,r3,r0
	btst_s	r14,5
	mov_s	r0,r1	;4
	mov.eq	r0,r3
	sub.ne	r1,r1,r1
	or_s	r0,r0,r13
	or_s	r1,r1,r2
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	enter_s	{r13-r15} ; sp=sp+(-12)
	neg_s	r14,r2
	asl_s	r12,r1,1
	and	r13,r14,63
	lsr	r15,r0,r2
	btst_s	r2,5
	lsr_s	r3,r0
	not	r4,r2
	lsr	r2,r1,r2
	asl_s	r1,r1,r13
	not	r5,r13
	asl	r12,r12,r4
	asl_s	r0,r0,r13
	or_s	r12,r12,r15
	lsr	r3,r3,r5
	mov_s	r13,r2	;4
	sub.ne	r13,r13,r13
	mov.eq	r2,r12
	or_s	r3,r3,r1
	btst_s	r14,5
	mov_s	r1,r0	;4
	mov.eq	r1,r3
	sub.ne	r0,r0,r0
	or_s	r0,r0,r2
	or_s	r1,r1,r13
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
	lp	@.L724	; lp_count:@.L719->@.L724
	.align 2
.L719:
	lsr	r12,r0,r2
	bbit1.d	r12,0,@.L723
	add_s	r2,r2,1   ;b,b,h
	nop_s
	.align 2
.L724:
	; ZOL_END, begins @.L719
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L723:
	j_s.d	[blink]
	mov_s	r0,r2	;4
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	beq_s	.L728
	bbit1.d	r2,0,@.L732
	and	r0,r2,1
	mov_s	r0,1	;3
	.align 2
.L727:
	asr_s	r2,r2,1
	bbit0.d	r2,0,@.L727
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L732:
	j_s	[blink]
	.align 4
.L728:
	mov_s	r0,0	;3
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	fscmpf	r0,0xff7fffff
	blo_s	.L735
	fscmpf	r0,0x7f7fffff
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L735:
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
	blo_s	.L739
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	fdcmpf r0, r2
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L739:
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
	blo_s	.L743
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	fdcmpf r0, r2
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L743:
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
	mov_s	r3,0x3f000000 ; 5.0e-1
	tst_s	r1,r1
	mov.p	r3,0x40000000 ; 2.0e+0
	bbit0	r1,0,@.L750
	.align 2
.L751:
	fsmul	r0,r0,r3
	.align 2
.L750:
	div	r1,r1,2
	tst_s	r1,r1
	jeq_s	[blink]
	bbit1.d	r1,0,@.L751
	fsmul	r3,r3,r3
	div	r1,r1,2
	.align 2
.L759:
	bbit1.d	r1,0,@.L751
	fsmul	r3,r3,r3
	b.d	.L759
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
	beq_s	.L761
	mov_s	r12,0	;3
	mov_s	r13,1071644672	;13
	tst_s	r2,r2
	mov.p	r12,0x00000000
	mov.p	r13,0x40000000; 2.0e+0
	bbit0	r2,0,@.L763
	.align 2
.L764:
	fdmul r0,r0,r12
	.align 2
.L763:
	div	r2,r2,2
	breq_s	r2,0,.L761
	bbit1.d	r2,0,@.L764
	fdmul r12,r12,r12
	div	r2,r2,2
	.align 2
.L775:
	bbit1.d	r2,0,@.L764
	fdmul r12,r12,r12
	b.d	.L775
	div	r2,r2,2
	.align 4
.L761:
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
	beq_s	.L777
	mov_s	r12,0	;3
	mov_s	r13,1071644672	;13
	tst_s	r2,r2
	mov.p	r12,0x00000000
	mov.p	r13,0x40000000; 2.0e+0
	bbit0	r2,0,@.L779
	.align 2
.L780:
	fdmul r0,r0,r12
	.align 2
.L779:
	div	r2,r2,2
	breq_s	r2,0,.L777
	bbit1.d	r2,0,@.L780
	fdmul r12,r12,r12
	div	r2,r2,2
	.align 2
.L791:
	bbit1.d	r2,0,@.L780
	fdmul r12,r12,r12
	b.d	.L791
	div	r2,r2,2
	.align 4
.L777:
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
	brls	r3,3,.L794
	or	r4,r0,r1
	tst	r4,3
	bne_s	.L794
	bmskn	r5,r2,1
	sub2	r12,r5,1 ;a,b,u6
	lsr_s	r12,r12,2
	sub2	r14,r1,1 ;a,b,u6
	add_s	r12,r12,1   ;b,b,h
	mov_s	r13,r0	;4
	brle.d	r12,2,.L816
	add	r6,r0,r5 ;a,b,c/u6
	add_s	r12,r12,-1   ;h,h,s3
	ld.a	r15,[r14,4]	;23
	ld_s	r3,[r0]		;15
	mov	lp_count,r12	;5
	lp	@.L824	; lp_count:@.L795->@.L824
	.align 2
.L795:
	mov_s	r4,r15	;4
	ld.a	r15,[r14,4]	;23
	xor	r3,r3,r4
	st.ab	r3,[r13,4]	;26
	ld_s	r3,[r13]		;15
	.align 2
.L824:
	; ZOL_END, begins @.L795
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	cmp	r5,r2
	.align 2
.L825:
	add_s	r1,r1,r5   ;b,b,h
	beq.d	.L793
	sub	r2,r2,r5
	ldb	r13,[r6]
	ldb_s	r12,[r1]
	xor_s	r13,r13,r12
	breq.d	r2,1,.L793
	stb	r13,[r6]
	ldb	r5,[r6,1]
	cmp_s	r2,2
	ldb_s	r14,[r1,1]
	xor	r2,r14,r5
	beq.d	.L793
	stb	r2,[r6,1]
	ldb	r3,[r6,2]
	ldb_s	r1,[r1,2]
	xor_s	r1,r1,r3
	stb	r1,[r6,2]
.L793:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L816:
	ld_s	r3,[r13]		;15
	ld.a	r15,[r14,4]	;23
	xor_s	r3,r3,r15
	st.ab	r3,[r13,4]	;26
	dbnz	r12,.L816
	b.d	.L825
	cmp	r5,r2
	.align 4
.L794:
	brle.d	r2,2,.L818
	mov_s	r12,r0	;4
	add_s	r2,r2,-1   ;h,h,s3
	ldb.ab	r13,[r1,1]
	ldb.ab	r3,[r12,1]
	mov	lp_count,r2	;5
	lp	@.L823	; lp_count:@.L797->@.L823
	.align 2
.L797:
	mov_s	r14,r13
	ldb.ab	r13,[r1,1]
	xor_s	r3,r3,r14
	stb	r3,[r12,-1]
	ldb.ab	r3,[r12,1]
	.align 2
.L823:
	; ZOL_END, begins @.L797
	mov_s	r14,r13
	xor_s	r3,r3,r14
	stb	r3,[r12,-1]
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L818:
	ldb.ab	r15,[r12,1]
	ldb.ab	r13,[r1,1]
	xor_s	r15,r15,r13
	stb	r15,[r12,-1]
	dbnz	r2,.L818
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	ldb_s	r3,[r0]
	breq.d	r3,0,.L827
	mov_s	r4,r0	;4
	.align 2
.L828:
	ldb.a	r12,[r4,1]
	brne_s	r12,0,.L828
	.align 2
.L827:
	breq_s	r2,0,.L829
	add_s	r1,r1,-1   ;h,h,s3
	mov	lp_count,r2	;5
	lp	@.L842	; lp_count:@.L830->@.L842
	.align 2
.L830:
	ldb.a	r12,[r1,1]
	tst_s	r12,r12
	jeq.d	[blink]
	stb.ab	r12,[r4,1]
	nop_s
	.align 2
.L842:
	; ZOL_END, begins @.L830
	.align 2
.L829:
	stb	0,[r4]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	tst_s	r1,r1
	mov_s.ne	r2,r0
	beq.d	.L852
	sub_s.ne	r0,r0,r0
	.align 2
.L854:
	mov	lp_count,r1	;5
	lp	@.L853	; lp_count:@.L844->@.L853
	.align 2
.L844:
	ldb_s	r3,[r2,r0]
	tst_s	r3,r3
	jeq_s	[blink]
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L853:
	; ZOL_END, begins @.L844
	j_s	[blink]
	.align 4
.L852:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb_s	r12,[r0]
	breq_s	r12,0,.L862
	enter_s	{r13-r13} ; sp=sp+(-4)
	sub	r13,r1,1 ;a,b,u6
	.align 2
.L856:
	b.d	.L859
	mov_s	r3,r13	;4
	.align 4
.L858:
	breq	r2,r12,.L857
	.align 2
.L859:
	ldb.a	r2,[r3,1]
	brne_s	r2,0,.L858
	ldb.a	r12,[r0,1]
	brne_s	r12,0,.L856
	mov_s	r0,0	;3
.L857:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L862:
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
.L868:
	ldb_s	r3,[r2]
	cmp_s	r3,r1
	mov.eq	r0,r2
	tst_s	r3,r3
	jeq.d	[blink]
	add_s	r2,r2,1   ;b,b,h
	ldb_s	r3,[r2]
	cmp_s	r3,r1
	mov.eq	r0,r2
	brne.d	r3,0,.L868
	add_s	r2,r2,1   ;b,b,h
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	enter_s	{r13-r15} ; sp=sp+(-12)
	ldb_s	r14,[r1]
	breq.d	r14,0,.L885
	mov_s	r3,r0	;4
	mov_s	r2,r1	;4
	.align 2
.L875:
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L875
	sub.f	r2,r2,r1
	beq_s	.L885
	b.d	.L883
	sub	r4,r2,1 ;a,b,u6
	.align 4
.L893:
	breq_s	r2,0,.L892
	.align 2
.L883:
	ldb_s	r2,[r3]
	mov_s	r0,r3	;4
	brne.d	r2,r14,.L893
	add_s	r3,r3,1   ;b,b,h
	mov_s	r13,r1	;4
	add	r15,r0,r4 ;a,b,c/u6
	mov_s	r3,r14	;4
	b.d	.L877
	mov_s	r12,r0	;4
	.align 4
.L895:
	breq	r12,r15,.L879
	brne	r3,r2,.L880
	ldb.a	r2,[r12,1]
	breq_s	r2,0,.L894
	ldb.a	r3,[r13,1]
	.align 2
.L877:
	brne_s	r3,0,.L895
	.align 2
.L880:
	b.d	.L883
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L892:
	mov_s	r0,0	;3
.L873:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L894:
	ldb_s	r3,[r13,1]
	.align 2
.L879:
	breq	r2,r3,.L873
	b.d	.L883
	add_s	r3,r0,1   ;a,b,c/u3
	.align 4
.L885:
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
	blo_s	.L907
	ble_s	.L900
	fdcmpf r2, r12
	blo_s	.L899
.L900:
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L907:
	fdcmpf r2, r12
	ble_s	.L900
	.align 2
.L899:
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
	brlo	r1,r3,.L917
	sub_s	r1,r1,r3
	add.f	r5,r0,r1
	blo	.L917
	enter_s	{r13-r15} ; sp=sp+(-12)
	b.d	.L914
	ldb	r6,[r2]
	.align 4
.L910:
	brlo	r5,r0,.L919
	.align 2
.L914:
	mov_s	r13,r0	;4
	ldb.ab	r12,[r13,1]
	cmp_s	r12,r6
	bne.d	.L910
	mov_s.ne	r0,r13
	breq	r3,1,.L908
	.align 2
.L913:
	sub	r15,r13,1 ;a,b,u6
	mov_s	r14,r2	;4
	sub	r9,r3,1 ;a,b,u6
	mov	lp_count,r9	;5
	lp	@.L936	; lp_count:@.L911->@.L936
	.align 2
.L911:
	ldb.a	r4,[r15,1]
	ldb.a	r1,[r14,1]
	brne	r4,r1,.L935
	nop_s
	.align 2
.L936:
	; ZOL_END, begins @.L911
.L908:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L935:
	brlo	r5,r13,.L919
	mov_s	r0,r13	;4
	ldb.ab	r7,[r0,1]
	brne	r6,r7,.L910
	mov_s	r8,r13	;4
	mov_s	r13,r0	;4
	b.d	.L913
	mov_s	r0,r8	;4
	.align 4
.L919:
	mov_s	r0,0	;3
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L917:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	enter_s	{r13-r14, blink} ; sp=sp+(-12)
	mov.f	r13,r2
	mov_s	r14,r0	;4
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
	blo.d	.L966
	mov_s	r0,0	;3
	mov_s	r1,1072693248	;13
	fdcmpf r12, r0
	blt.d	.L970
	mov.ge	r4,0
	.align 2
.L946:
	mov_s	r3,0	;3
	mov_s	r0,0	;3
	mov_s	r1,1071644672	;13
	mov_s	r14,0	;3
	mov_s	r15,1072693248	;13
	.align 2
.L952:
	fdmul r12,r12,r0
	fdcmpf r12, r14
	bge.d	.L952
	add_s	r3,r3,1   ;b,b,h
	st_s	r3,[r2]		;16
	mov_s	r0,r12	;4
	breq.d	r4,0,.L968
	bxor	r1,r13,31
.L943:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L968:
	vadd2	r0,r12,0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L970:
	mov_s	r1,1071644672	;13
	fdcmpf r12, r0
	bhs_s	.L949
	fdcmp r12, r14
	bne_s	.L958
	.align 2
.L949:
	vadd2	r0,r12,0
	st	0,[r2]	;37
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L966:
	mov_s	r1,-1074790400	;13
	fdcmpf r12, r0
	mov_s	r14,r12	;4
	bhi.d	.L969
	bxor	r15,r13,31
	vadd2	r12,r14,0
	b.d	.L946
	mov_s	r4,1	;4
	.align 4
.L969:
	mov_s	r0,0	;3
	mov_s	r1,-1075838976	;13
	fdcmpf r12, r0
	ble	.L949
	mov_s	r4,1	;4
	.align 2
.L947:
	vadd2	r12,r14,0
	mov_s	r3,0	;3
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	.align 2
.L954:
	fdadd r12,r12,r12
	fdcmpf r12, r14
	blo.d	.L954
	add_s	r3,r3,-1   ;h,h,s3
	st_s	r3,[r2]		;16
	mov_s	r0,r12	;4
	brne.d	r4,0,.L943
	bxor	r1,r13,31
	b_s	.L968
	.align 4
.L958:
	vadd2	r14,r12,0
	b.d	.L947
	mov_s	r4,0	;4
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or.f	0,r0,r1
	vadd2	r4,r2,0
	beq.d	.L975
	mov_s	r12,r2	;4
	enter_s	{r13-r15} ; sp=sp+(-12)
	mov_s	r13,r0	;4
	mov_s	r14,r1	;4
	mov_s	r15,r5	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	.align 2
.L974:
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
	bne_s	.L974
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L975:
	mov_s	r0,0	;3
	j_s.d	[blink]
	mov_s	r1,0	;3
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	brhs	r1,r0,.L1005
	enter_s	{r13-r15} ; sp=sp+(-12)
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1006	; lp_count:@.L982->@.L1006
	.align 2
.L982:
	brlt.d	r1,0,.L987
	add_s	r12,r12,-1   ;h,h,s3
	asl_s	r1,r1,1
	brls.d	r0,r1,.L984
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1006:
	; ZOL_END, begins @.L982
	.align 2
.L985:
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L984:
	tst_s	r3,r3
	beq.d	.L985
	mov.eq	r12,0
	.align 2
.L987:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L988:
	seths	r13,r0,r1
	tst_s	r13,r13
	sub_s	r14,r0,r1
	lsr_s	r1,r1
	mov_s	r13,r15	;4
	mov.ne	r13,r3
	mov.ne	r0,r14
	lsr.f	r3,r3,1
	bne.d	.L988
	or_s	r12,r12,r13
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1005:
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
	beq_s	.L1009
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L1009:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r2,r1,31
	cmp_s	r0,r2
	xor	r3,r0,r2
	beq.d	.L1020
	xor_s	r2,r2,r1
	.align 2
.L1017:
	fls	r0,r3
	brne.d	r2,0,.L1021
	rsub	r0,r0,63
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L1021:
	fls	r0,r2
	rsub	r0,r0,31
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L1020:
	brne	r1,r0,.L1017
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
.L1024:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	lsr.f	r2,r2,1
	asl_s	r1,r1,1
	jeq.d	[blink]
	add_s	r0,r0,r3   ;b,b,h
	and	r3,r2,1
	mpy_s	r3,r3,r1
	lsr.f	r2,r2,1
	asl_s	r1,r1,1
	bne.d	.L1024
	add_s	r0,r0,r3   ;b,b,h
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	lsr	r3,r2,3
	brlo.d	r0,r1,.L1034
	bmskn	r4,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1077
	.align 2
.L1034:
	enter_s	{r13-r15} ; sp=sp+(-12)
	tst_s	r3,r3
	beq_s	.L1078
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	sub3	r13,r1,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L1067
	sub3	r12,r0,1 ;a,b,u6
	add_s	r3,r3,-1   ;h,h,s3
	ldd.a	r14,[r13,8]
	mov	lp_count,r3	;5
	lp	@.L1083	; lp_count:@.L1037->@.L1083
	.align 2
.L1037:
	std.a	r14,[r12,8]
	ldd.a	r14,[r13,8]
	.align 2
.L1083:
	; ZOL_END, begins @.L1037
	std.a	r14,[r12,8]
	.align 2
.L1068:
	brls	r2,r4,.L1030
	sub	r5,r2,r4
	sub	r13,r5,1 ;a,b,u6
	cmp	r13,6
	bls	.L1039 ;brls out of range
	add	r13,r0,r4 ;a,b,c/u6
	add	r6,r1,r4 ;a,b,c/u6
	add	r15,r4,1 ;a,b,c/u6
	add_s	r15,r15,r1   ;b,b,h
	or	r12,r6,r13
	sub_s	r3,r13,r15
	bmsk_s	r12,r12,1
	seths	r3,r3,3
	seteq	r12,r12,0
	tst_s	r3,r12
	beq_s	.L1039
	bmskn	r15,r5,1
	sub2	r3,r15,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L1069
	sub2	r12,r6,1 ;a,b,u6
	add_s	r3,r3,-1   ;h,h,s3
	ld.a	r14,[r12,4]	;23
	mov	lp_count,r3	;5
	lp	@.L1082	; lp_count:@.L1040->@.L1082
	.align 2
.L1040:
	st.ab	r14,[r13,4]	;26
	ld.a	r14,[r12,4]	;23
	.align 2
.L1082:
	; ZOL_END, begins @.L1040
	st.ab	r14,[r13,4]	;26
	cmp	r5,r15
	beq.d	.L1030
	add_s	r15,r15,r4   ;b,b,h
	.align 2
.L1079:
	add_s	r14,r0,r15   ;a,b,c/u3
	ldb_s	r13,[r1,r15]
	add_s	r12,r15,1   ;a,b,c/u3
	brls.d	r2,r12,.L1030
	stb_s	r13,[r14]
	add_s	r3,r0,r12   ;a,b,c/u3
	ldb_s	r14,[r1,r12]
	add_s	r15,r15,2   ;b,b,h
	brls.d	r2,r15,.L1030
	stb_s	r14,[r3]
	add_s	r0,r0,r15   ;b,b,h
	ldb_s	r1,[r1,r15]
	stb_s	r1,[r0]
	.align 2
.L1030:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1067:
	ldd.a	r14,[r13,8]
	std.a	r14,[r12,8]
	dbnz	r3,.L1067
	b_s	.L1068
	.align 4
.L1069:
	ld.a	r7,[r12,4]	;23
	st.ab	r7,[r13,4]	;26
	dbnz	r3,.L1069
	cmp	r5,r15
	bne.d	.L1079
	add_s	r15,r15,r4   ;b,b,h
	b_s	.L1030
	.align 4
.L1077:
	tst_s	r2,r2
	jeq_s	[blink]
	sub_s	r1,r12,r1
	mov_s	r3,r12	;4
	brle.d	r1,2,.L1072
	add_s	r0,r0,r2   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	ldb.a	r2,[r3,-1]
	mov	lp_count,r1	;5
	lp	@.L1081	; lp_count:@.L1044->@.L1081
	.align 2
.L1044:
	stb.a	r2,[r0,-1]
	ldb.a	r2,[r3,-1]
	.align 2
.L1081:
	; ZOL_END, begins @.L1044
	j_s.d	[blink]
	stb.a	r2,[r0,-1]
	.align 4
.L1072:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	dbnz	r1,.L1072
	j_s	[blink]
	.align 4
.L1078:
	breq_s	r2,0,.L1030
	.align 2
.L1039:
	add_s	r4,r4,-1   ;h,h,s3
	sub	r5,r1,1 ;a,b,u6
	add_s	r2,r2,r5   ;b,b,h
	add_s	r1,r1,r4   ;b,b,h
	sub_s	r2,r2,r1
	brle.d	r2,2,.L1071
	add	r4,r4,r0   ;(p)b,b,c/u6
	add_s	r2,r2,-1   ;h,h,s3
	ldb.a	r3,[r1,1]
	mov	lp_count,r2	;5
	lp	@.L1080	; lp_count:@.L1042->@.L1080
	.align 2
.L1042:
	stb.a	r3,[r4,1]
	ldb.a	r3,[r1,1]
	.align 2
.L1080:
	; ZOL_END, begins @.L1042
	stb.a	r3,[r4,1]
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1071:
	ldb.a	r0,[r1,1]
	stb.a	r0,[r4,1]
	dbnz	r2,.L1071
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	brlo.d	r0,r1,.L1088
	lsr	r4,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	cmp_s	r3,r0
	bhs	.L1125
	.align 2
.L1088:
	tst	r4,r4
	beq_s	.L1126
	enter_s	{r13-r15} ; sp=sp+(-12)
	sub	r3,r4,1 ;a,b,u6
	cmp_s	r3,11
	bls	.L1091
	add_s	r13,r1,2   ;a,b,c/u3
	sub_s	r14,r0,r13
	cmp_s	r14,4
	bls	.L1091
	lsr_s	r15,r0
	neg_s	r15,r15
	tst	r15,3
	and	r12,r15,3
	beq.d	.L1092
	mov.eq	r6,0
	ldh_s.x	r3,[r1]
	btst_s	r15,1
	beq.d	@.L1101; bbit out of range
	sth_s	r3,[r0]
	ldh_s.x	r13,[r1,2]
	cmp_s	r12,3
	mov.ne	r6,2
	bne.d	.L1092
	sth_s	r13,[r0,2]
	ldh_s.x	r14,[r1,4]
	mov_s	r6,3	;4
	sth_s	r14,[r0,4]
	.align 2
.L1092:
	sub	r5,r4,r12
	lsr	r7,r5,2
	add1	r13,-8,r12
	add3	r3,-8,r7
	lsr_s	r3,r3,3
	add1	r12,r0,r12
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L1115
	add_s	r13,r13,r1   ;b,b,h
	add_s	r3,r3,-1   ;h,h,s3
	ldd.a	r14,[r13,8]
	mov	lp_count,r3	;5
	lp	@.L1131	; lp_count:@.L1094->@.L1131
	.align 2
.L1094:
	std.ab	r14,[r12,8]
	ldd.a	r14,[r13,8]
	.align 2
.L1131:
	; ZOL_END, begins @.L1094
	std.ab	r14,[r12,8]
	bmskn	r15,r5,1
	tst	r5,3
	beq.d	.L1087
	add_s	r15,r15,r6   ;b,b,h
	.align 2
.L1127:
	add_s	r12,r15,1   ;a,b,c/u3
	ldh.x.as	r3,[r1,r15]
	add1	r5,r0,r15
	cmp	r4,r12
	sth	r3,[r5]
	bls.d	.L1087
	asl_s	r12,r15,1
	add_s	r13,r12,2   ;a,b,c/u3
	add_s	r15,r15,2   ;b,b,h
	ldh.x	r3,[r1,r13]
	add_s	r14,r0,r13   ;a,b,c/u3
	brls.d	r4,r15,.L1087
	sth_s	r3,[r14]
	add_s	r12,r12,4   ;b,b,h
	add_s	r15,r0,r12   ;a,b,c/u3
	ldh.x	r12,[r1,r12]
	sth_s	r12,[r15]
	.align 2
.L1087:
	bbit0	r2,0,@.L1084
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L1132:
	add_s	r0,r0,r2   ;b,b,h
	ldb_s	r1,[r1,r2]
	stb_s	r1,[r0]
	.align 2
.L1084:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1115:
	ldd.a	r8,[r13,8]
	std.ab	r8,[r12,8]
	dbnz	r3,.L1115
	bmskn	r15,r5,1
	tst	r5,3
	bne.d	.L1127
	add_s	r15,r15,r6   ;b,b,h
	b_s	.L1087
	.align 4
.L1125:
	tst_s	r2,r2
	jeq_s	[blink]
	sub_s	r1,r3,r1
	brle.d	r1,2,.L1118
	add_s	r2,r2,r0   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	ldb.a	r12,[r3,-1]
	mov	lp_count,r1	;5
	lp	@.L1130	; lp_count:@.L1099->@.L1130
	.align 2
.L1099:
	stb.a	r12,[r2,-1]
	ldb.a	r12,[r3,-1]
	.align 2
.L1130:
	; ZOL_END, begins @.L1099
	j_s.d	[blink]
	stb.a	r12,[r2,-1]
	.align 4
.L1118:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	dbnz	r1,.L1118
	j_s	[blink]
	.align 4
.L1091:
	add1	r14,-2,r4
	lsr_s	r3,r14
	sub1	r13,r1,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L1117
	sub1	r12,r0,1 ;a,b,u6
	add_s	r3,r3,-1   ;h,h,s3
	ldh.x.a	r14,[r13,2]
	mov	lp_count,r3	;5
	lp	@.L1129	; lp_count:@.L1096->@.L1129
	.align 2
.L1096:
	sth.a	r14,[r12,2]
	ldh.x.a	r14,[r13,2]
	.align 2
.L1129:
	; ZOL_END, begins @.L1096
	bbit0.d	r2,0,@.L1084
	sth.a	r14,[r12,2]
	b.d	.L1132
	add_s	r2,r2,-1   ;h,h,s3
	.align 4
.L1117:
	ldh.x.a	r4,[r13,2]
	sth.a	r4,[r12,2]
	dbnz	r3,.L1117
	b_s	.L1087
	.align 4
.L1101:
	b.d	.L1092
	mov_s	r6,1	;4
	.align 4
.L1126:
	bbit0	r2,0,@.L1133
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r0,r0,r2   ;b,b,h
	ldb_s	r2,[r1,r2]
	stb_s	r2,[r0]
	.align 2
.L1133:
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	enter_s	{r13-r15} ; sp=sp+(-12)
	lsr	r3,r2,2
	brlo.d	r0,r1,.L1140
	bmskn	r15,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs	.L1185
	.align 2
.L1140:
	tst_s	r3,r3
	beq_s	.L1186
	sub	r13,r3,1 ;a,b,u6
	cmp_s	r13,23
	bls	.L1142
	add_s	r14,r1,4   ;a,b,c/u3
	cmp_s	r0,r14
	beq_s	.L1142
	xbfu	r12,r0,2
	bbit0.d	r0,2,@.L1143
	mov_s	r6,0	;4
	ld_s	r13,[r1]		;15
	mov_s	r6,r12	;4
	st_s	r13,[r0]		;16
	.align 2
.L1143:
	sub_s	r14,r3,r12
	lsr_s	r3,r14
	add2	r13,-8,r12
	add3	r3,-8,r3
	lsr_s	r3,r3,3
	add2	r12,r0,r12
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L1177
	add_s	r13,r13,r1   ;b,b,h
	add_s	r3,r3,-1   ;h,h,s3
	ldd.a	r4,[r13,8]
	mov	lp_count,r3	;5
	lp	@.L1193	; lp_count:@.L1144->@.L1193
	.align 2
.L1144:
	std.ab	r4,[r12,8]
	ldd.a	r4,[r13,8]
	.align 2
.L1193:
	; ZOL_END, begins @.L1144
	std.ab	r4,[r12,8]
	bbit0	r14,0,@.L1147
	.align 2
.L1187:
	bclr_s	r14,r14,0
	add_s	r14,r14,r6   ;b,b,h
	asl_s	r14,r14,2
	add_s	r12,r0,r14   ;a,b,c/u3
	ld_s	r13,[r1,r14]		;15
	st_s	r13,[r12]		;16
	.align 2
.L1147:
	brls	r2,r15,.L1135
	sub	r5,r2,r15
	sub	r3,r5,1 ;a,b,u6
	cmp_s	r3,6
	bls	.L1138
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
	beq_s	.L1138
	bmskn	r4,r5,1
	sub2	r3,r4,1 ;a,b,u6
	lsr_s	r3,r3,2
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L1180
	sub2	r12,r12,1 ;a,b,u6
	add_s	r3,r3,-1   ;h,h,s3
	ld.a	r14,[r12,4]	;23
	mov	lp_count,r3	;5
	lp	@.L1192	; lp_count:@.L1148->@.L1192
	.align 2
.L1148:
	st.ab	r14,[r13,4]	;26
	ld.a	r14,[r12,4]	;23
	.align 2
.L1192:
	; ZOL_END, begins @.L1148
	st.ab	r14,[r13,4]	;26
	cmp	r4,r5
	beq.d	.L1135
	add	r4,r4,r15   ;(p)b,b,c/u6
	.align 2
.L1188:
	add	r7,r0,r4 ;a,b,c/u6
	ldb	r13,[r1,r4]
	add	r15,r4,1 ;a,b,c/u6
	brls.d	r2,r15,.L1135
	stb	r13,[r7]
	add_s	r14,r0,r15   ;a,b,c/u3
	ldb_s	r12,[r1,r15]
	add_s	r4,r4,2   ;h,h,s3
	brls.d	r2,r4,.L1135
	stb_s	r12,[r14]
	add_s	r0,r0,r4   ;b,b,h
	ldb	r1,[r1,r4]
	stb_s	r1,[r0]
	.align 2
.L1135:
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1177:
	ldd.a	r4,[r13,8]
	std.ab	r4,[r12,8]
	dbnz	r3,.L1177
	bbit1	r14,0,@.L1187
	b_s	.L1147
	.align 4
.L1180:
	ld.a	r6,[r12,4]	;23
	st.ab	r6,[r13,4]	;26
	dbnz	r3,.L1180
	cmp	r4,r5
	bne.d	.L1188
	add	r4,r4,r15   ;(p)b,b,c/u6
	b_s	.L1135
	.align 4
.L1185:
	breq_s	r2,0,.L1135
	sub_s	r1,r12,r1
	mov_s	r3,r12	;4
	brle.d	r1,2,.L1183
	add_s	r0,r0,r2   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	ldb.a	r2,[r3,-1]
	mov	lp_count,r1	;5
	lp	@.L1191	; lp_count:@.L1152->@.L1191
	.align 2
.L1152:
	stb.a	r2,[r0,-1]
	ldb.a	r2,[r3,-1]
	.align 2
.L1191:
	; ZOL_END, begins @.L1152
	stb.a	r2,[r0,-1]
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1183:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	dbnz	r1,.L1183
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1142:
	add2	r3,-4,r3
	lsr_s	r3,r3,2
	sub2	r13,r1,1 ;a,b,u6
	add_s	r3,r3,1   ;b,b,h
	brle.d	r3,2,.L1179
	sub2	r12,r0,1 ;a,b,u6
	add_s	r3,r3,-1   ;h,h,s3
	ld.a	r14,[r13,4]	;23
	mov	lp_count,r3	;5
	lp	@.L1190	; lp_count:@.L1146->@.L1190
	.align 2
.L1146:
	st.a	r14,[r12,4]	;26
	ld.a	r14,[r13,4]	;23
	.align 2
.L1190:
	; ZOL_END, begins @.L1146
	b.d	.L1147
	st.a	r14,[r12,4]	;26
	.align 4
.L1179:
	ld.a	r5,[r13,4]	;23
	st.a	r5,[r12,4]	;26
	dbnz	r3,.L1179
	b_s	.L1147
	.align 4
.L1186:
	breq	r2,0,.L1135
	.align 2
.L1138:
	add_s	r15,r15,-1   ;h,h,s3
	sub	r8,r1,1 ;a,b,u6
	add_s	r2,r2,r8   ;b,b,h
	add_s	r1,r1,r15   ;b,b,h
	sub_s	r2,r2,r1
	brle.d	r2,2,.L1182
	add_s	r15,r15,r0   ;b,b,h
	add_s	r2,r2,-1   ;h,h,s3
	ldb.a	r3,[r1,1]
	mov	lp_count,r2	;5
	lp	@.L1189	; lp_count:@.L1150->@.L1189
	.align 2
.L1150:
	stb.a	r3,[r15,1]
	ldb.a	r3,[r1,1]
	.align 2
.L1189:
	; ZOL_END, begins @.L1150
	stb.a	r3,[r15,1]
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1182:
	ldb.a	r0,[r1,1]
	stb.a	r0,[r15,1]
	dbnz	r2,.L1182
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
	bbit1	r0,15,@.L1209
	exth_s	r2,r0
	asr.f	r0,r2,14
	jne_s	[blink]
	lsr.f	0,r2,13
	bne_s	.L1210
	lsr.f	0,r2,12
	bne_s	.L1211
	lsr.f	0,r2,11
	bne_s	.L1212
	lsr.f	0,r2,10
	bne_s	.L1213
	lsr.f	0,r2,9
	bne_s	.L1214
	lsr.f	0,r2,8
	bne_s	.L1215
	lsr.f	0,r2,7
	bne_s	.L1216
	lsr.f	0,r2,6
	bne_s	.L1217
	lsr.f	0,r2,5
	bne_s	.L1218
	lsr.f	0,r2,4
	bne_s	.L1219
	lsr.f	0,r2,3
	bne_s	.L1220
	lsr.f	0,r2,2
	bne_s	.L1221
	lsr.f	0,r2,1
	bne_s	.L1222
	tst_s	r2,r2
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1209:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1220:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1210:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1211:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1212:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1213:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1214:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1215:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1216:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1217:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1218:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1219:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1221:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1222:
	j_s.d	[blink]
	mov_s	r0,14	;3
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	bbit1	r0,0,@.L1228
	exth_s	r2,r0
	bbit1	r2,1,@.L1229
	bbit1	r2,2,@.L1230
	bbit1	r2,3,@.L1231
	bbit1	r2,4,@.L1232
	bbit1	r2,5,@.L1233
	bbit1	r2,6,@.L1234
	bbit1	r2,7,@.L1235
	bbit1	r2,8,@.L1236
	bbit1	r2,9,@.L1237
	bbit1	r2,10,@.L1238
	bbit1	r2,11,@.L1239
	bbit1	r2,12,@.L1240
	bbit1	r2,13,@.L1241
	bbit1	r2,14,@.L1242
	lsr.f	0,r2,15
	mov_s	r0,15	;3
	j_s.d	[blink]
	mov.eq	r0,16
	.align 4
.L1228:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1229:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1240:
	j_s.d	[blink]
	mov_s	r0,12	;3
	.align 4
.L1230:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.align 4
.L1231:
	j_s.d	[blink]
	mov_s	r0,3	;3
	.align 4
.L1232:
	j_s.d	[blink]
	mov_s	r0,4	;3
	.align 4
.L1233:
	j_s.d	[blink]
	mov_s	r0,5	;3
	.align 4
.L1234:
	j_s.d	[blink]
	mov_s	r0,6	;3
	.align 4
.L1235:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.align 4
.L1236:
	j_s.d	[blink]
	mov_s	r0,8	;3
	.align 4
.L1237:
	j_s.d	[blink]
	mov_s	r0,9	;3
	.align 4
.L1238:
	j_s.d	[blink]
	mov_s	r0,10	;3
	.align 4
.L1239:
	j_s.d	[blink]
	mov_s	r0,11	;3
	.align 4
.L1241:
	j_s.d	[blink]
	mov_s	r0,13	;3
	.align 4
.L1242:
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
	enter_s	{r13-r15} ; sp=sp+(-12)
	and	r3,r0,1
	xbfu	r2,r0,1
	xbfu	r12,r0,2
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r1,r0,3
	add_s	r2,r2,r12   ;b,b,h
	xbfu	r14,r0,4
	add_s	r2,r2,r1   ;b,b,h
	xbfu	r13,r0,5
	add_s	r2,r2,r14   ;b,b,h
	xbfu	r6,r0,6
	add_s	r2,r2,r13   ;b,b,h
	xbfu	r7,r0,7
	add_s	r2,r2,r6   ;b,b,h
	xbfu	r5,r0,8
	add_s	r2,r2,r7   ;b,b,h
	xbfu	r4,r0,9
	xbfu	r8,r0,10
	xbfu	r15,r0,11
	xbfu	r9,r0,12
	xbfu	r10,r0,13
	xbfu	r11,r0,14
	xbfu	r3,r0,15
	add	r0,r2,r5 ;a,b,c/u6
	add_s	r0,r0,r4   ;b,b,h
	add_s	r0,r0,r8   ;b,b,h
	add_s	r0,r0,r15   ;b,b,h
	add_s	r0,r0,r9   ;b,b,h
	add_s	r0,r0,r10   ;b,b,h
	add_s	r0,r0,r11   ;b,b,h
	add_s	r0,r0,r3   ;b,b,h
	bmsk_s	r0,r0,0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	enter_s	{r13-r15} ; sp=sp+(-12)
	and	r12,r0,1
	xbfu	r2,r0,1
	xbfu	r3,r0,2
	add_s	r2,r2,r12   ;b,b,h
	xbfu	r14,r0,3
	add_s	r2,r2,r3   ;b,b,h
	xbfu	r13,r0,4
	add_s	r2,r2,r14   ;b,b,h
	xbfu	r6,r0,5
	add_s	r2,r2,r13   ;b,b,h
	xbfu	r7,r0,6
	add_s	r2,r2,r6   ;b,b,h
	xbfu	r5,r0,7
	add_s	r2,r2,r7   ;b,b,h
	xbfu	r4,r0,8
	add_s	r2,r2,r5   ;b,b,h
	xbfu	r1,r0,9
	add_s	r2,r2,r4   ;b,b,h
	xbfu	r15,r0,10
	add_s	r2,r2,r1   ;b,b,h
	xbfu	r8,r0,11
	add_s	r2,r2,r15   ;b,b,h
	xbfu	r9,r0,12
	add_s	r2,r2,r8   ;b,b,h
	xbfu	r10,r0,13
	add_s	r2,r2,r9   ;b,b,h
	xbfu	r11,r0,14
	add_s	r2,r2,r10   ;b,b,h
	add_s	r2,r2,r11   ;b,b,h
	xbfu	r0,r0,15
	add_s	r0,r0,r2   ;b,b,h
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov.f	r2,r0
	jeq.d	[blink]
	mov_s	r0,0	;3
	.align 2
.L1258:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	lsr.f	r2,r2,1
	asl_s	r1,r1,1
	jeq.d	[blink]
	add_s	r0,r0,r3   ;b,b,h
	and	r3,r2,1
	mpy_s	r3,r3,r1
	lsr.f	r2,r2,1
	asl_s	r1,r1,1
	bne.d	.L1258
	add_s	r0,r0,r3   ;b,b,h
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
.L1266:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	lsr.f	r1,r1,1
	asl_s	r3,r3,1
	jeq.d	[blink]
	add_s	r0,r0,r2   ;b,b,h
	and	r2,r1,1
	mpy_s	r2,r2,r3
	lsr.f	r1,r1,1
	asl_s	r3,r3,1
	bne.d	.L1266
	add_s	r0,r0,r2   ;b,b,h
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp_s	r0,r1
	bls	.L1297
	enter_s	{r13-r15} ; sp=sp+(-12)
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1298	; lp_count:@.L1274->@.L1298
	.align 2
.L1274:
	brlt.d	r1,0,.L1279
	add_s	r12,r12,-1   ;h,h,s3
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1276
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1298:
	; ZOL_END, begins @.L1274
	.align 2
.L1277:
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1276:
	tst_s	r3,r3
	beq.d	.L1277
	mov.eq	r12,0
	.align 2
.L1279:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L1280:
	seths	r13,r0,r1
	tst_s	r13,r13
	sub_s	r14,r0,r1
	lsr_s	r1,r1
	mov_s	r13,r15	;4
	mov.ne	r13,r3
	mov.ne	r0,r14
	lsr.f	r3,r3,1
	bne.d	.L1280
	or_s	r12,r12,r13
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1297:
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
	blo_s	.L1301
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L1301:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	fdcmpf r0, r2
	blo_s	.L1305
	mov_s	r0,1	;3
	j_s.d	[blink]
	mov.le	r0,0
	.align 4
.L1305:
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
	bn.d	.L1313
	mov.n	r13,1
	beq.d	.L1311
	mov.eq	r0,0
	mov_s	r13,0	;3
	.align 2
.L1313:
	mov_s	r0,0	;3
	mov_s	r12,32	;3
	mov	lp_count,r12	;5
	lp	@.L1327	; lp_count:@.L1316->@.L1327
	.align 2
.L1316:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	asr.f	r1,r1,1
	asl_s	r3,r3,1
	beq.d	.L1315
	add_s	r0,r0,r2   ;b,b,h
	nop_s
	.align 2
.L1327:
	; ZOL_END, begins @.L1316
	.align 2
.L1315:
	tst_s	r13,r13
	neg.ne	r0,r0
.L1311:
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
	bls.d	.L1351
	mov.hi	r12,32
	.align 2
.L1353:
	mov	lp_count,r12	;5
	lp	@.L1352	; lp_count:@.L1331->@.L1352
	.align 2
.L1331:
	asl_s	r2,r2,1
	brls.d	r0,r2,.L1336
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1352:
	; ZOL_END, begins @.L1331
	.align 2
.L1336:
	tst_s	r3,r3
	mov_s	r0,0	;3
	beq.d	.L1334
	sub_s.ne	r15,r15,r15
	.align 2
.L1333:
	seths	r1,r13,r2
	tst_s	r1,r1
	sub_s	r14,r13,r2
	lsr_s	r2,r2
	mov_s	r12,r15	;4
	mov.ne	r12,r3
	mov.ne	r13,r14
	lsr.f	r3,r3,1
	bne.d	.L1333
	or_s	r0,r0,r12
	.align 2
.L1334:
	tst	r4,r4
	neg.ne	r0,r0
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1351:
	b.d	.L1334
	seths	r0,r0,r1
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	enter_s	{r13-r13} ; sp=sp+(-4)
	mov.f	r12,r0
	abs_s	r1,r1
	neg.n	r12,r12
	mov.n	r13,1
	mov.p	r13,0
	cmp_s	r12,r1
	mov_s	r0,r12	;4
	mov.hi	r2,1
	bls.d	.L1378
	mov.hi	r3,32
	.align 2
.L1380:
	mov	lp_count,r3	;5
	lp	@.L1379	; lp_count:@.L1356->@.L1379
	.align 2
.L1356:
	asl_s	r1,r1,1
	brls.d	r12,r1,.L1361
	asl_s	r2,r2,1
	nop_s
	.align 2
.L1379:
	; ZOL_END, begins @.L1356
	.align 2
.L1361:
	tst_s	r2,r2
	beq.d	.L1359
	mov.eq	r0,r12
	.align 2
.L1358:
	sub.f	r3,r0,r1
	mov.hs	r0,r3
	lsr.f	r2,r2,1
	bne.d	.L1358
	lsr_s	r1,r1
	.align 2
.L1359:
	tst_s	r13,r13
	neg.ne	r0,r0
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L1378:
	sub_s	r1,r12,r1
	b.d	.L1359
	mov.hs	r0,r1
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	exth_s	r12,r0
	exth_s	r1,r1
	cmp_s	r1,r12
	bhs	.L1469
	btst_s	r1,15
	bne	.L1384
	enter_s	{r13-r15} ; sp=sp+(-12)
	asl_s	r3,r1,1
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1391
	btst_s	r3,15
	bne_s	.L1391
	asl_s	r3,r1,2
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1393
	btst_s	r3,15
	bne	.L1393
	asl_s	r3,r1,3
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1395
	btst_s	r3,15
	bne	.L1395
	asl_s	r3,r1,4
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1397
	btst_s	r3,15
	bne	.L1397
	asl_s	r3,r1,5
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1399
	btst_s	r3,15
	bne	.L1399
	asl_s	r3,r1,6
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1401
	btst_s	r3,15
	bne	.L1401
	asl_s	r3,r1,7
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1403
	btst_s	r3,15
	bne	.L1403
	asl	r3,r1,8
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1405
	btst_s	r3,15
	bne	.L1405
	asl	r3,r1,9
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1407
	btst_s	r3,15
	bne	.L1407
	asl	r3,r1,10
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1409
	btst_s	r3,15
	bne	.L1409
	asl	r3,r1,11
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1411
	btst_s	r3,15
	bne	.L1411
	asl	r3,r1,12
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1413
	btst_s	r3,15
	bne	.L1413
	asl	r3,r1,13
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1415
	btst_s	r3,15
	bne	.L1415
	asl	r3,r1,14
	exth_s	r3,r3
	cmp_s	r12,r3
	bls	.L1417
	btst_s	r3,15
	bne	.L1417
	asl_s	r1,r1,15
	exth_s	r0,r1
	cmp_s	r12,r0
	bls	.L1418
	tst_s	r0,r0
	mov_s.ne	r13,32768
	bne.d	.L1386
	mov_s.ne	r3,r13
	.align 2
.L1387:
	tst_s	r2,r2
	mov.ne	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1391:
	mov_s	r13,2	;3
	.align 2
.L1386:
	sub_s	r14,r12,r3
	.align 2
.L1470:
	lsr	r5,r3,1
	cmp_s	r12,r3
	lsr	r6,r13,1
	exth_s	r14,r14
	lsr	r7,r3,2
	mov_s	r15,r12	;4
	mov.hs	r15,r14
	mov_s	r0,0	;3
	cmp_s	r12,r3
	sub	r4,r15,r5
	mov.hs	r0,r13
	mov_s	r14,0	;3
	cmp_s	r15,r5
	bmsk	r4,r4,15
	mov_s	r12,r15	;4
	mov.hs	r12,r4
	mov_s	r1,r14	;4
	cmp_s	r15,r5
	mov.hs	r1,r6
	exth_s	r0,r0
	lsr.f	r8,r13,2
	beq.d	.L1387
	or_s	r0,r0,r1
	sub	r9,r12,r7
	lsr	r10,r3,3
	seths	r1,r12,r7
	tst_s	r1,r1
	exth	r11,r9
	mov_s	r6,r14	;4
	mov.ne	r6,r8
	mov.ne	r12,r11
	lsr.f	r30,r13,3
	beq.d	.L1387
	or	r0,r0,r6
	sub	r58,r12,r10
	lsr	r59,r3,4
	seths	r15,r12,r10
	tst_s	r15,r15
	exth	r5,r58
	mov_s	r4,r14	;4
	mov.ne	r4,r30
	mov.ne	r12,r5
	lsr.f	r7,r13,4
	beq.d	.L1387
	or	r0,r0,r4
	sub	r8,r12,r59
	lsr	r9,r3,5
	seths	r1,r12,r59
	tst_s	r1,r1
	exth	r10,r8
	mov_s	r11,r14	;4
	mov.ne	r11,r7
	mov.ne	r12,r10
	lsr.f	r6,r13,5
	beq.d	.L1387
	or	r0,r0,r11
	sub	r30,r12,r9
	lsr	r58,r3,6
	seths	r15,r12,r9
	tst_s	r15,r15
	exth	r59,r30
	mov_s	r4,r14	;4
	mov.ne	r4,r6
	mov.ne	r12,r59
	lsr.f	r5,r13,6
	beq.d	.L1387
	or	r0,r0,r4
	sub	r7,r12,r58
	lsr	r8,r3,7
	seths	r1,r12,r58
	tst_s	r1,r1
	exth	r9,r7
	mov_s	r10,r14	;4
	mov.ne	r10,r5
	mov.ne	r12,r9
	lsr.f	r11,r13,7
	beq.d	.L1387
	or	r0,r0,r10
	sub	r6,r12,r8
	lsr	r30,r3,8
	seths	r15,r12,r8
	tst_s	r15,r15
	exth	r58,r6
	mov_s	r4,r14	;4
	mov.ne	r4,r11
	mov.ne	r12,r58
	lsr.f	r59,r13,8
	beq.d	.L1387
	or	r0,r0,r4
	sub	r5,r12,r30
	lsr	r7,r3,9
	seths	r1,r12,r30
	tst_s	r1,r1
	exth	r8,r5
	mov_s	r9,r14	;4
	mov.ne	r9,r59
	mov.ne	r12,r8
	lsr.f	r10,r13,9
	beq.d	.L1387
	or	r0,r0,r9
	sub	r11,r12,r7
	lsr	r6,r3,10
	seths	r15,r12,r7
	tst_s	r15,r15
	exth	r30,r11
	mov_s	r4,r14	;4
	mov.ne	r4,r10
	mov.ne	r12,r30
	lsr.f	r58,r13,10
	beq.d	.L1387
	or	r0,r0,r4
	sub	r59,r12,r6
	lsr	r7,r3,11
	seths	r1,r12,r6
	tst_s	r1,r1
	exth	r5,r59
	mov_s	r8,r14	;4
	mov.ne	r8,r58
	mov.ne	r12,r5
	lsr.f	r9,r13,11
	beq.d	.L1387
	or	r0,r0,r8
	sub	r10,r12,r7
	lsr	r11,r3,12
	seths	r15,r12,r7
	tst_s	r15,r15
	exth	r6,r10
	mov_s	r4,r14	;4
	mov.ne	r4,r9
	mov.ne	r12,r6
	lsr.f	r30,r13,12
	beq.d	.L1387
	or	r0,r0,r4
	sub	r58,r12,r11
	lsr	r59,r3,13
	seths	r1,r12,r11
	tst_s	r1,r1
	exth	r7,r58
	mov_s	r8,r14	;4
	mov.ne	r8,r30
	mov.ne	r12,r7
	lsr.f	r5,r13,13
	beq.d	.L1387
	or	r0,r0,r8
	sub	r9,r12,r59
	lsr	r1,r3,14
	seths	r15,r12,r59
	tst_s	r15,r15
	exth	r10,r9
	mov_s	r11,r14	;4
	mov.ne	r11,r5
	mov.ne	r12,r10
	lsr.f	r6,r13,14
	beq.d	.L1387
	or	r0,r0,r11
	sub_s	r15,r12,r1
	lsr_s	r3,r3,15
	seths	r1,r12,r1
	tst_s	r1,r1
	exth_s	r15,r15
	mov.ne	r14,r6
	mov.ne	r12,r15
	bxor.f	0,r13,14
	beq.d	.L1387
	or_s	r0,r0,r14
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
.L1393:
	b.d	.L1386
	mov_s	r13,4	;3
	.align 4
.L1395:
	b.d	.L1386
	mov_s	r13,8	;3
	.align 4
.L1397:
	b.d	.L1386
	mov_s	r13,16	;3
	.align 4
.L1407:
	b.d	.L1386
	mov	r13,512	;6
	.align 4
.L1399:
	b.d	.L1386
	mov_s	r13,32	;3
	.align 4
.L1401:
	b.d	.L1386
	mov_s	r13,64	;3
	.align 4
.L1403:
	b.d	.L1386
	mov_s	r13,128	;3
	.align 4
.L1405:
	b.d	.L1386
	mov	r13,256	;6
	.align 4
.L1469:
	seteq	r0,r1,r12
	sub_s	r3,r12,r1
	tst_s	r0,r0
	exth_s	r3,r3
	exth_s	r0,r0
	mov.ne	r12,r3
	.align 2
.L1466:
	tst_s	r2,r2
	j_s.d	[blink]
	mov.ne	r0,r12
	.align 4
.L1409:
	b.d	.L1386
	mov	r13,1024	;6
	.align 4
.L1411:
	mov_s	r13,2048	;13
	b.d	.L1470
	sub_s	r14,r12,r3
	.align 4
.L1413:
	mov_s	r13,4096	;13
	b.d	.L1470
	sub_s	r14,r12,r3
	.align 4
.L1415:
	mov_s	r13,8192	;13
	b.d	.L1470
	sub_s	r14,r12,r3
	.align 4
.L1417:
	mov_s	r13,16384	;13
	b.d	.L1470
	sub_s	r14,r12,r3
	.align 4
.L1418:
	mov_s	r3,32768	;13
	b.d	.L1386
	mov_s	r13,r3	;4
	.align 4
.L1384:
	sub_s	r1,r12,r1
	mov_s	r0,1	;3
	b.d	.L1466
	exth_s	r12,r1
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp_s	r0,r1
	bls	.L1495
	enter_s	{r13-r15} ; sp=sp+(-12)
	mov_s	r12,32	;3
	mov_s	r3,1	;3
	mov_s	r13,32	;3
	mov	lp_count,r13	;5
	lp	@.L1496	; lp_count:@.L1472->@.L1496
	.align 2
.L1472:
	brlt.d	r1,0,.L1477
	add_s	r12,r12,-1   ;h,h,s3
	asl_s	r1,r1,1
	brls.d	r0,r1,.L1474
	asl_s	r3,r3,1
	nop_s
	.align 2
.L1496:
	; ZOL_END, begins @.L1472
	.align 2
.L1475:
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1474:
	tst_s	r3,r3
	beq.d	.L1475
	mov.eq	r12,0
	.align 2
.L1477:
	mov_s	r12,0	;3
	mov_s	r15,0	;3
	.align 2
.L1478:
	seths	r13,r0,r1
	tst_s	r13,r13
	sub_s	r14,r0,r1
	lsr_s	r1,r1
	mov_s	r13,r15	;4
	mov.ne	r13,r3
	mov.ne	r0,r14
	lsr.f	r3,r3,1
	bne.d	.L1478
	or_s	r12,r12,r13
	tst_s	r2,r2
	mov.eq	r0,r12
	leave_s	{r13-r15, pcl} ; sp=sp+12
	.align 4
.L1495:
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
	bbit0	r2,5,@.L1498
	mov_s	r3,0	;3
	asl	r1,r0,r2
	j_s.d	[blink]
	mov_s	r0,r3	;4
	.align 4
.L1498:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r12,r2,32
	asl	r3,r0,r2
	asl_s	r1,r1,r2
	lsr	r2,r0,r12
	mov_s	r0,r3	;4
	j_s.d	[blink]
	or_s	r1,r1,r2
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0	r2,5,@.L1504
	asr	r3,r1,31
	asr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1504:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r12,r2,32
	asr	r3,r1,r2
	lsr_s	r0,r0,r2
	asl	r2,r1,r12
	mov_s	r1,r3	;4
	j_s.d	[blink]
	or_s	r0,r0,r2
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
	enter_s	{r13-r14} ; sp=sp+(-8)
	seths	r12,65535,r0
	asl_s	r12,r12,4
	mov_s	r13,0	;3
	rsub	r2,r12,16
	lsr_s	r0,r0,r2
	and	r3,r0,65280
	seteq	r3,r3,0
	sub3	r14,8,r3
	add3_s	r12,r12,r3
	lsr_s	r0,r0,r14
	and	r1,r0,240
	seteq	r1,r1,0
	sub2	r2,4,r1
	add2_s	r12,r12,r1
	lsr_s	r0,r0,r2
	and	r4,r0,12
	seteq	r4,r4,0
	sub1	r14,2,r4
	add1	r3,r12,r4
	lsr_s	r0,r0,r14
	rsub	r5,r0,2
	btst_s	r0,1
	mov.eq	r13,r5
	add_s	r0,r13,r3   ;a,b,c/u3
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp_s	r1,r3
	blt_s	.L1519
	bgt_s	.L1520
	cmp_s	r0,r2
	blo_s	.L1519
	bhi_s	.L1520
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1519:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1520:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp_s	r1,r3
	blt_s	.L1526
	bgt_s	.L1525
	brlo	r0,r2,.L1526
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1526:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1525:
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
	bbit0	r2,5,@.L1531
	mov_s	r3,0	;3
	lsr	r0,r1,r2
	j_s.d	[blink]
	mov_s	r1,r3	;4
	.align 4
.L1531:
	tst_s	r2,r2
	jeq_s	[blink]
	rsub	r12,r2,32
	lsr	r3,r1,r2
	lsr_s	r0,r0,r2
	asl	r2,r1,r12
	mov_s	r1,r3	;4
	j_s.d	[blink]
	or_s	r0,r0,r2
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	enter_s	{r13-r13} ; sp=sp+(-4)
	mpyuw	r2,r0,r1
	lsr	r3,r0,16
	lsr	r13,r1,16
	lsr	r58,r2,16
	exth_s	r12,r2
	dmachu	r1,r1,r3
	exth	r58,r1
	dmachu	r2,r0,r13
	lsr	r58,r1,16
	dmachu	r1,r3,r13
	asl	r0,r2,16
	lsr_s	r2,r2,16
	add_s	r0,r0,r12   ;b,b,h
	add_s	r1,r1,r2   ;b,b,h
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	enter_s	{r13-r14} ; sp=sp+(-8)
	mpyuw	r13,r0,r2
	lsr	r12,r0,16
	lsr	r14,r2,16
	mpy_s	r1,r1,r2
	mpy_s	r3,r3,r0
	lsr	r58,r13,16
	exth_s	r13,r13
	dmachu	r2,r2,r12
	exth	r58,r2
	dmachu	r0,r0,r14
	lsr	r58,r2,16
	dmachu	r12,r12,r14
	lsr	r4,r0,16
	asl_s	r0,r0,16
	add_s	r0,r0,r13   ;b,b,h
	add_s	r12,r12,r4   ;b,b,h
	add_s	r3,r3,r12   ;b,b,h
	add_s	r1,r1,r3   ;b,b,h
	leave_s	{r13-r14, pcl} ; sp=sp+8
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
	enter_s	{r13-r14} ; sp=sp+(-8)
	lsr.f	r12,r1
	rrc	r3,r0
	and	r12,r12,1431655765
	and	r3,r3,1431655765
	sub.f	r0,r0,r3
	sbc	r1,r1,r12
	lsr	r13,r0,2
	and	r4,r1,858993459
	and	r0,r0,858993459
	lsr_s	r1,r1,2
	and	r13,r13,858993459
	add.f	r5,r13,r0
	and	r1,r1,858993459
	lsr	r3,r5,4
	adc	r6,r1,r4
	asl	r14,r6,28
	lsr	r7,r6,4
	or_s	r3,r3,r14
	add.f	r8,r3,r5
	adc	r2,r7,r6
	and	r8,r8,252645135
	and	r2,r2,252645135
	add_s	r2,r2,r8   ;b,b,h
	lsr	r9,r2,16
	add_s	r2,r2,r9   ;b,b,h
	lsr	r0,r2,8
	add_s	r0,r0,r2   ;b,b,h
	bmsk_s	r0,r0,6
	leave_s	{r13-r14, pcl} ; sp=sp+8
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	lsr_s	r2,r0
	and	r2,r2,1431655765
	sub_s	r0,r0,r2
	lsr	r3,r0,2
	and	r0,r0,858993459
	and	r3,r3,858993459
	add_s	r3,r3,r0   ;b,b,h
	lsr	r1,r3,4
	add_s	r1,r1,r3   ;b,b,h
	and	r1,r1,252645135
	lsr	r0,r1,16
	add_s	r1,r1,r0   ;b,b,h
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
	bbit0.d	r2,0,@.L1551
	mov_s	r0,0	;3
	.align 2
.L1553:
	fdmul r0,r0,r12
	.align 2
.L1551:
	div	r3,r3,2
	breq_s	r3,0,.L1552
	bbit1.d	r3,0,@.L1553
	fdmul r12,r12,r12
	div	r3,r3,2
	.align 2
.L1560:
	bbit1.d	r3,0,@.L1553
	fdmul r12,r12,r12
	b.d	.L1560
	div	r3,r3,2
	.align 4
.L1552:
	brlt	r2,0,.L1559
	leave_s	{r13-r13, pcl} ; sp=sp+4
	.align 4
.L1559:
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
	bbit0.d	r1,0,@.L1562
	mov_s	r2,r1	;4
	.align 2
.L1564:
	fsmul	r0,r0,r3
	.align 2
.L1562:
	div	r2,r2,2
	breq_s	r2,0,.L1563
	bbit1.d	r2,0,@.L1564
	fsmul	r3,r3,r3
	div	r2,r2,2
	.align 2
.L1570:
	bbit1.d	r2,0,@.L1564
	fsmul	r3,r3,r3
	b.d	.L1570
	div	r2,r2,2
	.align 4
.L1563:
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
	blo_s	.L1575
	bhi_s	.L1576
	cmp_s	r0,r2
	blo_s	.L1575
	bhi_s	.L1576
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L1575:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L1576:
	j_s.d	[blink]
	mov_s	r0,2	;3
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp_s	r1,r3
	blo_s	.L1582
	bhi_s	.L1581
	brlo	r0,r2,.L1582
	j_s.d	[blink]
	setlo	r0,r2,r0
	.align 4
.L1582:
	j_s.d	[blink]
	mov_s	r0,-1	;4
	.align 4
.L1581:
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
