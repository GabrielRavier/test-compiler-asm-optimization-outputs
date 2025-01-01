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
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brls	r0,r1,.L2
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L3
	add_s	r2,r2,r0   ;b,b,h
	.align 4
.L4:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L3:
	brne	r3,r1,.L4
	b_s	.L5
	.align 4
.L2:
	breq	r0,r1,.L5
	sub	r12,r0,1 ;a,b,u6
	add_s	r2,r2,r1   ;b,b,h
	b.d	.L6
	mov_s	r3,r1	;4
	.align 4
.L7:
	ldb.ab	r13,[r3,1]
	stb.a	r13,[r12,1]
	.align 2
.L6:
	brne	r3,r2,.L7
.L5:
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r2,r2
	b.d	.L9
	add_s	r1,r1,-1   ;h,h,s3
	.align 4
.L11:
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L9:
	breq.d	r3,0,.L10
	mov_s	r13,r0	;4
	ldb.a	r12,[r1,1]
	stb_s	r12,[r0]
	ldb.ab	r12,[r0,1]
	brne	r2,r12,.L11
	.align 2
.L10:
	add_s	r0,r13,1   ;R0/R1,b,u6
	tst_s	r3,r3
	mov.eq	r0,0
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L15
	extb_s	r1,r1
	.align 4
.L17:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L15:
	breq.d	r2,0,.L16
	mov_s	r12,r0	;4
	ldb.ab	r3,[r0,1]
	brne	r1,r3,.L17
	.align 2
.L16:
	tst_s	r2,r2
	mov_s	r0,0	;3
	mov.ne	r0,r12
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L26
	mov_s	r13,r1	;4
	.align 4
.L23:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r13,r1	;4
	.align 2
.L26:
	breq.d	r2,0,.L22
	mov_s	r14,r0	;4
	ldb.ab	r12,[r0,1]
	ldb.ab	r3,[r1,1]
	breq	r12,r3,.L23
	.align 2
.L22:
	tst_s	r2,r2
	beq.d	.L24
	mov.eq	r0,0
	ldb_s	r0,[r14]
	ldb_s	r2,[r13]
	sub_s	r0,r0,r2
	.align 4
.L24:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub	r3,r0,1 ;a,b,u6
	b.d	.L28
	add_s	r2,r2,r1   ;b,b,h
	.align 4
.L29:
	ldb.ab	r12,[r1,1]
	stb.a	r12,[r3,1]
	.align 2
.L28:
	brne	r1,r2,.L29
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r1,r1
	b.d	.L31
	add_s	r2,r2,r0   ;b,b,h
	.align 4
.L33:
	ldb.a	r12,[r2,-1]
	brne	r1,r12,.L31
	b.d	.L32
	add_s	r0,r0,r3   ;b,b,h
	.align 4
.L31:
	not_s	r3,r0
	brne.d	r2,r0,.L33
	add_s	r3,r3,r2   ;b,b,h
	mov_s	r0,0	;3
.L32:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L36
	mov_s	r3,r0	;4
	.align 4
.L37:
	stb.ab	r1,[r3,1]
	.align 2
.L36:
	brne	r3,r2,.L37
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	add_s	r1,r1,-1   ;h,h,s3
	mov_s	r2,r0	;4
	.align 2
.L39:
	mov_s	r0,r2	;4
	ldb.a	r3,[r1,1]
	brne.d	r3,0,.L39
	stb.ab	r3,[r2,1]
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r1,r1
	mov_s	r2,r0	;4
	.align 2
.L43:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	breq_s	r3,0,.L42
	ldb	r3,[r2,-1]
	brne	r1,r3,.L43
.L42:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	.align 2
.L47:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r1,r2,.L48
	ldb	r2,[r0,-1]
	brne_s	r2,0,.L47
	b.d	.L46
	mov_s	r0,0	;3
	.align 4
.L48:
	mov_s	r0,r3	;4
.L46:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	.align 2
.L52:
	mov_s	r12,r1	;4
	mov_s	r13,r0	;4
	ldb.ab	r3,[r0,1]
	ldb.ab	r2,[r1,1]
	brne	r3,r2,.L51
	ldb	r2,[r0,-1]
	brne_s	r2,0,.L52
	.align 2
.L51:
	ldb_s	r0,[r13]
	ldb_s	r2,[r12]
	sub_s	r0,r0,r2
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r0	;4
	.align 2
.L55:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	brne_s	r3,0,.L55
	sub_s	r0,r12,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	tst_s	r2,r2
	beq.d	.L58
	mov.eq	r0,0
	mov_s	r3,r0	;4
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L60:
	mov_s	r14,r3	;4
	ldb.ab	r2,[r3,1]
	breq.d	r2,0,.L59
	mov_s	r13,r1	;4
	ldb_s	r2,[r1]
	breq_s	r2,0,.L59
	breq	r3,r0,.L59
	ldb	r12,[r3,-1]
	ldb.ab	r2,[r1,1]
	breq	r12,r2,.L60
	.align 2
.L59:
	ldb_s	r0,[r14]
	ldb_s	r2,[r13]
	sub_s	r0,r0,r2
	.align 4
.L58:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L64
	mov_s	r12,r0	;4
	.align 4
.L65:
	ldb_s	r3,[r12,1]
	stb_s	r3,[r1]
	ldb.ab	r3,[r12,2]
	stb_s	r3,[r1,1]
	add_s	r1,r1,2   ;b,b,h
	.align 2
.L64:
	add_s	r3,r0,r2   ;a,b,c/u3
	sub_s	r3,r3,r12
	brgt	r3,1,.L65
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bset_s	r0,r0,5
	add	r0,r0,-97 ;b,b,s12
	setlo	r0,r0,26
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	seths	r0,127,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,32
	seteq.ne	r0,r0,9
	mov.eq	r0,1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,31
	seteq.hi	r0,r0,127
	mov.ls	r0,1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	r0,r0,6 ;a,b,u6
	setlo	r0,r0,10
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub	r0,r0,33 ;a,b,u6
	seths	r0,93,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	add	r0,r0,-97 ;b,b,s12
	setlo	r0,r0,26
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	r0,r0,4 ;a,b,u6
	seths	r0,94,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,32
	sub.ne r0,r0,9
	setlo.ne	r0,r0,5
	mov.eq	r0,1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	add	r0,r0,-65 ;b,b,s12
	setlo	r0,r0,26
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,31
	bls.d	.L86
	mov.ls	r0,1
	add	r2,r0,-127     ;a,b,limm
	cmp_s	r2,32
	bls.d	.L86
	mov.ls	r0,1
	add	r2,r0,-8232     ;a,b,limm
	cmp_s	r2,1
	mov.ls	r0,1
	sub.hi r0,r0,65529
	setlo.hi	r0,r0,3
.L86:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	r0,r0,6 ;a,b,u6
	setlo	r0,r0,10
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brhi	r0,254,.L93
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	b.d	.L94
	seths	r0,r0,33
	.align 4
.L93:
	cmp_s	r0,8231
	bls.d	.L94
	mov.ls	r0,1
	add	r2,r0,-8234     ;a,b,limm
	cmp_s	r2,47061
	bls.d	.L94
	mov.ls	r0,1
	add	r2,r0,-57344     ;a,b,limm
	cmp_s	r2,8184
	bls.d	.L94
	mov.ls	r0,1
	add	r2,r0,-65532     ;a,b,limm
	cmp_s	r2,1048579
	and.ls r0,r0,65534
	setne.ls	r0,r0,65534
	mov.hi	r0,0
.L94:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	r2,r0,6 ;a,b,u6
	cmp_s	r2,9
	bset.hi r0,r0,5
	sub.hi r0,r0,97
	setlo.hi	r0,r0,6
	mov.ls	r0,1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	toascii, .-toascii
	.align 4
	.global	fdim
	.type	fdim, @function
fdim:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L108
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L109
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L106
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
	b_s	.L106
	.align 4
.L108:
	vadd2	r0,r14,0
	b_s	.L106
	.align 4
.L109:
	vadd2	r0,r16,0
	.align 4
.L106:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r0
	mov_s	r14,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L114
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L114
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L114:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L125
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L126
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L123
	mov_s	r2,r17	;4
	tst_s	r2,r2
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L122
	.align 4
.L123:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L122
	.align 4
.L125:
	vadd2	r0,r14,0
	b_s	.L122
	.align 4
.L126:
	vadd2	r0,r16,0
.L122:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push_s	blink
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r14,r0
	mov_s	r13,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L131
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L131
	mov.ne	r0,r14
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L132
	tst_s	r14,r14
	mov.p	r13,r14
	b.d	.L131
	mov_s	r0,r13
	.align 4
.L132:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r14,r13
	mov_s	r0,r14
	.align 4
.L131:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L143
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L144
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L141
	mov_s	r2,r17	;4
	tst_s	r2,r2
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
	b_s	.L140
	.align 4
.L141:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L140
	.align 4
.L143:
	vadd2	r0,r14,0
	b_s	.L140
	.align 4
.L144:
	vadd2	r0,r16,0
.L140:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L152
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L153
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L150
	mov_s	r2,r17	;4
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
	b_s	.L149
	.align 4
.L150:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L149
	.align 4
.L152:
	vadd2	r0,r14,0
	b_s	.L149
	.align 4
.L153:
	vadd2	r0,r16,0
.L149:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	push_s	blink
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r14,r0
	mov_s	r13,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L158
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L158
	mov.ne	r0,r14
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L159
	tst_s	r14,r14
	mov.p	r14,r13
	b.d	.L158
	mov_s	r0,r14
	.align 4
.L159:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r13,r14
	mov_s	r0,r13
	.align 4
.L158:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L170
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L171
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L168
	mov_s	r2,r17	;4
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
	b_s	.L167
	.align 4
.L168:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L167
	.align 4
.L170:
	vadd2	r0,r14,0
	b_s	.L167
	.align 4
.L171:
	vadd2	r0,r16,0
.L167:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,@s.0	;13
	b_s	.L176
	.align 4
.L177:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	stb.ab	r3,[r2,1]
	lsr_s	r0,r0,6
	.align 2
.L176:
	brne_s	r0,0,.L177
	stb	0,[r2]
	mov_s	r0,@s.0	;13
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub	r2,r0,1 ;a,b,u6
	mov_s	r3,0	;3
	std	r2,[@seed]
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	ldd	r0,[@seed]
	mpy	r14,r1,1284865837
	mpy	r3,r0,1481765933
	add_s	r14,r14,r3   ;b,b,h
	mpydu	r2,r0,1284865837
	add_s	r3,r3,r14   ;b,b,h
	add.f	r12,r2,1
	adc	r13,r3,0
	std	r12,[@seed]
	lsr_s	r0,r13
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brne_s	r1,0,.L181
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	b_s	.L180
	.align 4
.L181:
	ld_s	r2,[r1]		;15
	st_s	r2,[r0]		;16
	st_s	r1,[r0,4]		;16
	st_s	r0,[r1]		;16
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L180
	st_s	r0,[r2,4]		;16
	.align 2
.L180:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L184
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L184:
	ld_s	r2,[r0,4]		;15
	breq_s	r2,0,.L183
	ld_s	r3,[r0]		;15
	st_s	r3,[r2]		;16
	.align 2
.L183:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r17,r0	;4
	mov_s	r19,r1	;4
	mov_s	r20,r2	;4
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	ld	r16,[r2]	;23
	mov_s	r14,r1	;4
	b.d	.L187
	mov_s	r13,0	;3
	.align 4
.L190:
	mov_s	r1,r14	;4
	jl.d	[r18]
	mov_s	r0,r17	;4
	brne.d	r0,0,.L188
	add_s	r14,r14,r15   ;b,b,h
	mpy_s	r13,r13,r15
	b.d	.L189
	add	r0,r19,r13 ;a,b,c/u6
	.align 4
.L188:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L187:
	brne	r13,r16,.L190
	add	r2,r16,1 ;a,b,c/u6
	st	r2,[r20]	;26
	mpy	r16,r16,r15
	mov_s	r2,r15	;4
	mov_s	r1,r17	;4
	bl.d	@memcpy;1
	add	r0,r19,r16 ;a,b,c/u6
.L189:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	j_s.d	[blink]
	ld.ab	r20,[sp,8]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r17,r0	;4
	mov_s	r19,r1	;4
	mov_s	r15,r3	;4
	mov_s	r16,r4	;4
	ld	r18,[r2]	;23
	mov_s	r14,r1	;4
	b.d	.L192
	mov_s	r13,0	;3
	.align 4
.L195:
	mov_s	r1,r14	;4
	jl.d	[r16]
	mov_s	r0,r17	;4
	brne.d	r0,0,.L193
	add_s	r14,r14,r15   ;b,b,h
	mpy_s	r13,r13,r15
	b.d	.L194
	add	r0,r19,r13 ;a,b,c/u6
	.align 4
.L193:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L192:
	brne	r13,r18,.L195
	mov_s	r0,0	;3
.L194:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	abs_s	r0,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	push_s	blink
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r14,r0	;4
	.align 2
.L198:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L198
	ldb_s	r2,[r13]
	breq	r2,43,.L204
	cmp_s	r2,45
	beq.d	.L199
	mov.eq	r12,1
	b.d	.L208
	mov_s	r12,0	;3
	.align 4
.L204:
	mov_s	r12,0	;3
	.align 2
.L199:
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L208:
	sub	r2,r13,1 ;a,b,u6
	b.d	.L201
	mov_s	r0,0	;3
	.align 4
.L202:
	mpy	r0,r0,10
	ldb_s	r3,[r2]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L201:
	ldb.a	r3,[r2,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L202
	tst_s	r12,r12
	neg.eq	r0,r0
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r14,r0	;4
	.align 2
.L210:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L210
	ldb_s	r2,[r13]
	breq	r2,43,.L216
	cmp_s	r2,45
	beq.d	.L211
	mov.eq	r12,1
	b.d	.L220
	mov_s	r12,0	;3
	.align 4
.L216:
	mov_s	r12,0	;3
	.align 2
.L211:
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L220:
	sub	r2,r13,1 ;a,b,u6
	b.d	.L213
	mov_s	r0,0	;3
	.align 4
.L214:
	mpy	r0,r0,10
	ldb_s	r3,[r2]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L213:
	ldb.a	r3,[r2,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L214
	tst_s	r12,r12
	neg.eq	r0,r0
	ld.ab	fp,[sp,4]	;23
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
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r16,r0	;4
	.align 2
.L222:
	mov_s	r13,r16	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r16,1]
	brne_s	r0,0,.L222
	ldb_s	r2,[r13]
	breq	r2,43,.L228
	cmp_s	r2,45
	beq.d	.L223
	mov.eq	r4,1
	b.d	.L232
	mov_s	r4,0	;4
	.align 4
.L228:
	mov_s	r4,0	;4
	.align 2
.L223:
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L232:
	sub	r0,r13,1 ;a,b,u6
	mov_s	r12,0	;3
	b.d	.L225
	mov_s	r13,0	;3
	.align 4
.L226:
	mpy	r1,r13,10
	mpydu	r2,r12,10
	add_s	r3,r3,r1   ;b,b,h
	ldb_s	r1,[r0]
	sub3	r1,r1,6 ;a,b,u6
	asr	r15,r1,31
	sub.f	r12,r2,r1
	sbc	r13,r3,r15
	.align 2
.L225:
	ldb.a	r2,[r0,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L226
	vadd2	r0,r12,0
	brne	r4,0,.L227
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	sub.f	r0,r2,r12
	sbc	r1,r3,r13
	.align 4
.L227:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r14,r2	;4
	mov_s	r15,r3	;4
	b.d	.L234
	mov_s	r17,r4	;4
	.align 4
.L238:
	lsr_s	r13,r14
	mpy_s	r13,r13,r15
	add_s	r13,r13,r16   ;b,b,h
	mov_s	r1,r13	;4
	jl.d	[r17]
	mov_s	r0,r18	;4
	tst_s	r0,r0
	bn.d	.L234
	lsr.n	r14,r14,1
	brle	r0,0,.L239
	add	r16,r13,r15 ;a,b,c/u6
	lsr_s	r2,r14
	add_s	r14,r14,-1   ;h,h,s3
	sub_s	r14,r14,r2
	.align 2
.L234:
	brne_s	r14,0,.L238
	b.d	.L237
	mov_s	r0,0	;3
	.align 4
.L239:
	mov_s	r0,r13	;4
.L237:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r19,r0	;4
	mov_s	r16,r3	;4
	mov_s	r18,r4	;4
	mov_s	r17,r5	;4
	mov_s	r14,r2	;4
	b.d	.L241
	mov_s	r15,r1	;4
	.align 4
.L244:
	asr_s	r13,r14,1
	mpy	r13,r13,r16
	add_s	r13,r13,r15   ;b,b,h
	mov_s	r2,r17	;4
	mov_s	r1,r13	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L245
	brle	r0,0,.L243
	add	r15,r13,r16 ;a,b,c/u6
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L243:
	asr_s	r14,r14,1
	.align 2
.L241:
	brne_s	r14,0,.L244
	b.d	.L242
	mov_s	r0,0	;3
	.align 4
.L245:
	mov_s	r0,r13	;4
.L242:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	div	r12,r1,r2
	rem	r1,r1,r2
	st_s	r12,[r0]		;16
	st_s	r1,[r0,4]		;16
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	asr	r2,r1,31
	xor	r12,r2,r0
	xor	r13,r2,r1
	sub.f	r0,r12,r2
	sbc	r1,r13,r2
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
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
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	abs_s	r0,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	div	r12,r1,r2
	rem	r1,r1,r2
	st_s	r12,[r0]		;16
	st_s	r1,[r0,4]		;16
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	asr	r2,r1,31
	xor	r12,r2,r0
	xor	r13,r2,r1
	sub.f	r0,r12,r2
	sbc	r1,r13,r2
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
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
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	.align 2
.L255:
	mov_s	r3,r0	;4
	ld.ab	r2,[r0,4]	;23
	breq_s	r2,0,.L254
	ld	r2,[r0,-4]	;23
	brne	r1,r2,.L255
	.align 2
.L254:
	ld_s	r2,[r3]		;15
	tst_s	r2,r2
	mov_s	r0,0	;3
	mov.ne	r0,r3
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	.align 2
.L261:
	mov_s	r12,r1	;4
	mov_s	r13,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld.ab	r2,[r1,4]	;23
	brne	r3,r2,.L260
	ld	r2,[r0,-4]	;23
	breq_s	r2,0,.L260
	ld	r2,[r1,-4]	;23
	brne_s	r2,0,.L261
	.align 2
.L260:
	ld_s	r3,[r13]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L266:
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L266
	st.a	r2,[r3,4]	;26
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r0	;4
	.align 2
.L269:
	mov_s	r12,r2	;4
	ld.ab	r3,[r2,4]	;23
	brne_s	r3,0,.L269
	sub_s	r0,r12,r0
	asr_s	r0,r0,2
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L278
	mov_s	r13,r1	;4
	.align 4
.L274:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r13,r1	;4
	.align 2
.L278:
	breq.d	r2,0,.L273
	mov_s	r14,r0	;4
	ld_s	r12,[r0]		;15
	ld_s	r3,[r1]		;15
	brne	r12,r3,.L273
	ld.ab	r3,[r0,4]	;23
	breq_s	r3,0,.L273
	ld.ab	r3,[r1,4]	;23
	brne_s	r3,0,.L274
	.align 2
.L273:
	tst_s	r2,r2
	beq.d	.L275
	mov.eq	r0,0
	ld_s	r3,[r14]		;15
	ld_s	r2,[r13]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L275:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L285
	mov_s	r12,r0	;4
	.align 4
.L282:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r12,r0	;4
	.align 2
.L285:
	breq_s	r2,0,.L281
	ld.ab	r3,[r0,4]	;23
	brne	r1,r3,.L282
	.align 2
.L281:
	tst_s	r2,r2
	mov_s	r0,0	;3
	mov.ne	r0,r12
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L293
	mov_s	r13,r1	;4
	.align 4
.L289:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r13,r1	;4
	.align 2
.L293:
	breq.d	r2,0,.L288
	mov_s	r14,r0	;4
	ld.ab	r12,[r0,4]	;23
	ld.ab	r3,[r1,4]	;23
	breq	r12,r3,.L289
	.align 2
.L288:
	tst_s	r2,r2
	beq.d	.L290
	mov.eq	r0,0
	ld_s	r3,[r14]		;15
	ld_s	r2,[r13]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L290:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L295
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L296:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L295:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L296
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	breq	r0,r1,.L298
	sub_s	r3,r0,r1
	asl_s	r12,r2,2
	brlo	r3,r12,.L299
	b.d	.L300
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L299:
	add2_s	r1,r1,r2
	add2	r2,-4,r2
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L301
	sub2	r12,r0,1 ;a,b,u6
	.align 4
.L302:
	ld.a	r3,[r1,-4]	;23
	st.ab	r3,[r2,-4]	;26
	.align 2
.L301:
	brne	r2,r12,.L302
	b_s	.L298
	.align 4
.L303:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L300:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L303
.L298:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L305
	mov_s	r3,r0	;4
	.align 4
.L306:
	st.ab	r1,[r3,4]	;26
	.align 2
.L305:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L306
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brhs	r0,r1,.L308
	add_s	r3,r0,r2   ;a,b,c/u3
	b.d	.L309
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L310:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L309:
	brne	r3,r0,.L310
	b_s	.L307
	.align 4
.L308:
	breq	r0,r1,.L307
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L312
	mov_s	r3,r0	;4
	.align 4
.L313:
	ldb.ab	r12,[r3,1]
	stb.a	r12,[r1,1]
	.align 2
.L312:
	brne	r3,r2,.L313
	.align 2
.L307:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr_s	r3,r0
	not_s	r12,r2
	lsr_s	r3,r3,r12
	asl	r13,r1,r2
	or_s	r13,r13,r3
	asl	r12,r0,r2
	btst_s	r2,5
	mov_s	r3,r12	;4
	mov.eq	r3,r13
	mov_s	r13,r3	;4
	sub.ne	r12,r12,r12
	neg_s	r2,r2
	and	r3,r2,63
	asl	r4,r1,1
	not_s	r14,r3
	asl	r4,r4,r14
	lsr	r14,r0,r3
	or	r14,r14,r4
	lsr	r15,r1,r3
	btst_s	r2,5
	mov_s	r2,r15	;4
	mov.eq	r2,r14
	sub.ne	r15,r15,r15
	or	r0,r2,r12
	or	r1,r15,r13
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	asl_s	r3,r1,1
	not_s	r12,r2
	asl_s	r3,r3,r12
	lsr	r12,r0,r2
	or_s	r12,r12,r3
	lsr	r13,r1,r2
	btst_s	r2,5
	mov_s	r3,r13	;4
	mov.eq	r3,r12
	mov_s	r12,r3	;4
	sub.ne	r13,r13,r13
	neg_s	r2,r2
	and	r3,r2,63
	lsr	r4,r0,1
	not_s	r14,r3
	lsr	r4,r4,r14
	asl	r15,r1,r3
	or	r15,r15,r4
	asl	r14,r0,r3
	btst_s	r2,5
	mov_s	r2,r14	;4
	mov.eq	r2,r15
	sub.ne	r14,r14,r14
	or	r0,r14,r12
	or	r1,r2,r13
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	neg_s	r1,r1
	ror	r0,r0,r1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	ror	r0,r0,r1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	neg_s	r1,r1
	ror	r0,r0,r1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	ror	r0,r0,r1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r0,r0
	asl	r2,r0,r1
	rsub	r1,r1,16
	lsr_s	r0,r0,r1
	or_s	r0,r0,r2
	exth_s	r0,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r0,r0
	lsr	r2,r0,r1
	rsub	r1,r1,16
	asl_s	r0,r0,r1
	or_s	r0,r0,r2
	exth_s	r0,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r0,r0
	asl	r2,r0,r1
	rsub	r1,r1,8
	lsr_s	r0,r0,r1
	or_s	r0,r0,r2
	extb_s	r0,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r0,r0
	lsr	r2,r0,r1
	rsub	r1,r1,8
	asl_s	r0,r0,r1
	or_s	r0,r0,r2
	extb_s	r0,r0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	xbfu	r2,r0,232
	extb_s	r0,r0
	asl_s	r0,r0,8
	or_s	r0,r0,r2
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r3,r0,24
	and	r2,r0,16711680
	lsr_s	r2,r2,8
	or_s	r2,r2,r3
	and	r3,r0,65280
	asl_s	r3,r3,8
	or_s	r2,r2,r3
	asl_s	r0,r0,24
	or_s	r0,r0,r2
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r8,r0,0
	bmskn	r15,r9,23
	lsr	r12,r15,24
	and	r7,r9,16711680
	lsr	r14,r7,8
	or	r6,r14,r12
	mov_s	r12,0	;3
	and	r13,r9,65280
	asl	r14,r13,8
	lsr	r2,r12,24
	or_s	r2,r2,r14
	lsr	r3,r13,24
	or	r14,r6,r2
	mov_s	r15,r3	;4
	mov_s	r12,0	;3
	bmsk	r13,r9,7
	asl	r1,r13,24
	lsr	r2,r12,8
	or_s	r2,r2,r1
	lsr	r3,r13,8
	or	r12,r14,r2
	or	r13,r15,r3
	bmskn	r14,r8,23
	lsr	r3,r14,24
	asl	r2,r14,8
	or	r14,r12,r2
	or	r15,r13,r3
	and	r12,r8,16711680
	lsr	r3,r12,8
	asl	r2,r12,24
	or	r12,r14,r2
	or	r13,r15,r3
	and	r2,r8,65280
	asl	r15,r2,8
	or	r3,r13,r15
	bmsk	r14,r8,7
	asl	r13,r14,24
	mov_s	r0,r12	;4
	or	r1,r3,r13
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L328
	mov_s	r2,0	;3
	.align 4
.L331:
	bbit0	r0,r2,@.L329
	b.d	.L330
	add_s	r0,r2,1   ;R0/R1,b,u6
	.align 4
.L329:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L328:
	brne	r2,32,.L331
	mov_s	r0,0	;3
.L330:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov.f	r2,r0
	bne.d	.L334
	mov.ne	r0,1
	b.d	.L337
	mov_s	r0,0	;3
	.align 4
.L335:
	asr_s	r2,r2,1
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L334:
	bbit0	r2,0,@.L335
	.align 4
.L337:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	push_s	blink
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r1,0xff7fffff ; -3.402823466385288598117e+38
	bl.d	@__ltsf2;1
	mov_s	r13,r0
	tst_s	r0,r0
	bn.d	.L339
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
	.align 4
.L339:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r14,r0,0
	mov_s	r3,-1048577	;13
	bl.d	@__ltdf2;1
	mov_s	r2,-1	;4
	tst_s	r0,r0
	bn.d	.L345
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
	.align 4
.L345:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r14,r0,0
	mov_s	r3,-1048577	;13
	bl.d	@__ltdf2;1
	mov_s	r2,-1	;4
	tst_s	r0,r0
	bn.d	.L351
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
	.align 4
.L351:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r0	;4
	bl.d	@__floatsidf;1
	mov_s	r0,r1	;4
	std	r0,[r13]
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r15,r0
	mov_s	r14,r1	;4
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	brne_s	r0,0,.L358
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	mov_s	r1,r0
	bl.d	@__nesf2;1
	mov_s	r0,r15
	breq_s	r0,0,.L358
	tst_s	r14,r14
	mov_s	r13,0x3f000000 ; 5.0e-1
	mov.p	r13,0x40000000 ; 2.0e+0
	.align 2
.L362:
	bbit0	r14,0,@.L361
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	mov_s	r15,r0
	.align 2
.L361:
	div	r14,r14,2
	breq_s	r14,0,.L358
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	b.d	.L362
	mov_s	r13,r0
	.align 4
.L358:
	mov_s	r0,r15
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r16,r0,0
	mov_s	r13,r2	;4
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L366
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L366
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	.align 2
.L370:
	bbit0	r13,0,@.L369
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L369:
	div	r13,r13,2
	breq_s	r13,0,.L366
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	b_s	.L370
	.align 4
.L366:
	vadd2	r0,r16,0
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r16,r0,0
	mov_s	r13,r2	;4
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L374
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L374
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	.align 2
.L378:
	bbit0	r13,0,@.L377
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L377:
	div	r13,r13,2
	breq_s	r13,0,.L374
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	b_s	.L378
	.align 4
.L374:
	vadd2	r0,r16,0
	ld.ab	fp,[sp,4]	;23
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
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	add_s	r2,r2,r1   ;b,b,h
	b.d	.L382
	mov_s	r12,r0	;4
	.align 4
.L383:
	ldb.ab	r3,[r1,1]
	ldb.ab	r13,[r12,1]
	xor_s	r3,r3,r13
	stb	r3,[r12,-1]
	.align 2
.L382:
	brne	r1,r2,.L383
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r15,r0	;4
	mov_s	r14,r1	;4
	bl.d	@strlen;1
	mov_s	r13,r2	;4
	sub	r1,r14,1 ;a,b,u6
	b.d	.L385
	add_s	r3,r15,r0   ;a,b,c/u3
	.align 4
.L387:
	add_s	r13,r13,-1   ;h,h,s3
	.align 2
.L385:
	breq.d	r13,0,.L386
	mov_s	r12,r3	;4
	ldb.a	r2,[r1,1]
	stb_s	r2,[r3]
	ldb.ab	r2,[r3,1]
	brne_s	r2,0,.L387
	.align 2
.L386:
	brne_s	r13,0,.L388
	stb	0,[r12]
	.align 2
.L388:
	mov_s	r0,r15	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,12]	;23
	pop_s	r13
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,r0	;4
	sub	r2,r0,1 ;a,b,u6
	add_s	r1,r1,r0   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	.align 2
.L391:
	rsub	r0,r3,1
	breq.d	r2,r1,.L390
	add_s	r0,r0,r2   ;b,b,h
	ldb.a	r12,[r2,1]
	brne_s	r12,0,.L391
.L390:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L400
	mov_s	r13,r0	;4
	.align 4
.L396:
	ldb_s	r12,[r2]
	ldb	r3,[r0,-1]
	breq	r12,r3,.L398
	.align 2
.L397:
	ldb.a	r3,[r2,1]
	brne_s	r3,0,.L396
	mov_s	r13,r0	;4
	.align 2
.L400:
	ldb.ab	r2,[r0,1]
	breq_s	r2,0,.L399
	b.d	.L397
	sub	r2,r1,1 ;a,b,u6
	.align 4
.L398:
	b.d	.L395
	mov_s	r0,r13	;4
	.align 4
.L399:
	mov_s	r0,0	;3
.L395:
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	.align 2
.L403:
	ldb_s	r3,[r2]
	cmp_s	r1,r3
	mov_s	r3,r2	;4
	mov.ne	r3,r0
	mov_s	r0,r3	;4
	ldb.ab	r3,[r2,1]
	brne_s	r3,0,.L403
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r0	;4
	mov_s	r14,r1	;4
	bl.d	@strlen;1
	mov_s	r0,r1	;4
	mov.f	r15,r0
	beq.d	.L407
	mov.eq	r0,r13
	b.d	.L408
	ldb	r16,[r14]
	.align 4
.L409:
	mov_s	r2,r15	;4
	mov_s	r1,r14	;4
	bl.d	@strncmp;1
	mov_s	r0,r13	;4
	breq_s	r0,0,.L411
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L408:
	mov_s	r1,r16	;4
	bl.d	@strchr;1
	mov_s	r0,r13	;4
	mov.f	r13,r0
	bne_s	.L409
	b_s	.L407
	.align 4
.L411:
	mov_s	r0,r13	;4
.L407:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brge	r0,0,.L413
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brgt	r0,0,.L415
	.align 2
.L413:
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L423
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brge	r0,0,.L424
	.align 2
.L415:
	mov_s	r0,r14	;4
	b.d	.L416
	bxor	r1,r15,31
	.align 4
.L423:
	vadd2	r0,r14,0
	b_s	.L416
	.align 4
.L424:
	vadd2	r0,r14,0
.L416:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r15,r2	;4
	mov_s	r18,r3	;4
	sub	r16,r1,r3
	breq.d	r3,0,.L426
	add	r16,r16,r0   ;(p)b,b,c/u6
	cmp_s	r1,r3
	bhs.d	.L432
	mov.hs	r13,r0
	b.d	.L426
	mov_s	r0,0	;3
	.align 4
.L428:
	ldb.ab	r14,[r13,1]
	ldb_s	r12,[r15]
	brne	r14,r12,.L432
	sub	r2,r18,1 ;a,b,u6
	add_s	r1,r15,1   ;R0/R1,b,u6
	bl.d	@memcmp;1
	mov_s	r0,r13	;4
	breq_s	r0,0,.L431
	.align 2
.L432:
	brls.d	r13,r16,.L428
	mov_s	r17,r13	;4
	b.d	.L426
	mov_s	r0,0	;3
	.align 4
.L431:
	mov_s	r0,r17	;4
.L426:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bl.d	@memcpy;1
	mov_s	r13,r2	;4
	add_s	r0,r0,r13   ;b,b,h
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	mempcpy, .-mempcpy
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r14,r0,0
	mov_s	r16,r2	;4
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	bp.d	.L436
	mov.p	r17,0
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	mov_s	r17,1	;4
	.align 4
.L436:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L438
	mov.p	r13,0
	b_s	.L455
	.align 4
.L440:
	add_s	r13,r13,1   ;b,b,h
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	mov_s	r2,0	;3
	vadd2	r14,r0,0
	.align 4
.L438:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L440
	b.d	.L457
	st	r13,[r16]	;26
	.align 4
.L455:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L441
	mov.p	r13,0
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	beq.d	.L441
	mov.eq	r13,0
	b.d	.L456
	mov_s	r13,0	;3
	.align 4
.L444:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	.align 4
.L456:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L444
	.align 4
.L441:
	st	r13,[r16]	;26
	.align 4
.L457:
	breq	r17,0,.L445
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L445:
	vadd2	r0,r14,0
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r12,r0,0
	mov_s	r0,0	;3
	b.d	.L459
	mov_s	r1,0	;3
	.align 4
.L462:
	and	r14,r12,1
	breq_s	r14,0,.L460
	add.f	r0,r0,r2
	adc	r1,r1,r3
	.align 2
.L460:
	add.f	r2,r2,r2
	adc	r3,r3,r3
	lsr.f	r13,r13
	rrc	r12,r12
	.align 2
.L459:
	or.f	0,r12,r13
	bne_s	.L462
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r12,r0	;4
	b.d	.L464
	mov_s	r3,1	;3
	.align 4
.L466:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L464:
	brhs	r1,r12,.L471
	breq_s	r3,0,.L472
	brge	r1,0,.L466
	b.d	.L468
	mov_s	r0,0	;3
	.align 4
.L469:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	b.d	.L468
	lsr_s	r1,r1
	.align 4
.L471:
	b.d	.L468
	mov_s	r0,0	;3
	.align 4
.L472:
	mov_s	r0,0	;3
	.align 2
.L468:
	brne_s	r3,0,.L469
	tst_s	r2,r2
	mov.ne	r0,r12
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb.f	r0,r0
	beq.d	.L475
	mov.eq	r0,7
	asl_s	r0,r0,8
	fls	r0,r0
	rsub	r0,r0,30
	.align 4
.L475:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brge	r1,0,.L478
	not_s	r0,r0
	not_s	r1,r1
	.align 2
.L478:
	or.f	0,r0,r1
	beq.d	.L480
	mov.eq	r0,63
	fls	r0,r0
	breq.d	r1,0,.L483
	rsub	r0,r0,63
	fls	r0,r1
	rsub	r0,r0,31
	.align 4
.L483:
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L480:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r0	;4
	b.d	.L486
	mov_s	r0,0	;3
	.align 4
.L488:
	bbit0	r2,0,@.L487
	add_s	r0,r0,r1   ;b,b,h
	.align 2
.L487:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L486:
	brne_s	r2,0,.L488
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r15,r2,3
	brlo.d	r0,r1,.L490
	bmskn	r3,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L491
	.align 2
.L490:
	sub3	r14,r1,1 ;a,b,u6
	sub3	r13,r0,1 ;a,b,u6
	b.d	.L492
	mov_s	r12,0	;3
	.align 4
.L491:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L493
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L494:
	ldd.a	r4,[r14,8]
	std.a	r4,[r13,8]
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L492:
	brne	r12,r15,.L494
	add_s	r3,r3,-1   ;h,h,s3
	add_s	r12,r1,r3   ;a,b,c/u3
	b.d	.L495
	add_s	r0,r0,r3   ;b,b,h
	.align 4
.L496:
	ldb.a	r3,[r12,1]
	stb.a	r3,[r0,1]
	.align 2
.L495:
	rsub	r3,r1,1
	add_s	r3,r3,r12   ;b,b,h
	brhi	r2,r3,.L496
	b_s	.L489
	.align 4
.L498:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L493:
	brne	r3,r1,.L498
	.align 2
.L489:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brlo.d	r0,r1,.L500
	lsr_s	r14,r2
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L501
	.align 2
.L500:
	sub1	r3,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	b.d	.L502
	add1	r14,r3,r14
	.align 4
.L501:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L503
	add_s	r2,r2,r0   ;b,b,h
	.align 4
.L504:
	ldh.x.a	r13,[r3,2]
	sth.a	r13,[r12,2]
	.align 2
.L502:
	brne	r3,r14,.L504
	bbit0	r2,0,@.L499
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r1,r1,r2   ;b,b,h
	add_s	r2,r2,r0   ;b,b,h
	ldb_s	r3,[r1]
	b.d	.L499
	stb_s	r3,[r2]
	.align 4
.L506:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L503:
	brne	r3,r1,.L506
	.align 2
.L499:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r15,r2,2
	brlo.d	r0,r1,.L508
	bmskn	r3,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L509
	.align 2
.L508:
	sub2	r12,r1,1 ;a,b,u6
	sub2	r13,r0,1 ;a,b,u6
	b.d	.L510
	add2	r15,r12,r15
	.align 4
.L509:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L511
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L512:
	ld.a	r14,[r12,4]	;23
	st.a	r14,[r13,4]	;26
	.align 2
.L510:
	brne	r12,r15,.L512
	add_s	r3,r3,-1   ;h,h,s3
	add_s	r12,r1,r3   ;a,b,c/u3
	b.d	.L513
	add_s	r0,r0,r3   ;b,b,h
	.align 4
.L514:
	ldb.a	r3,[r12,1]
	stb.a	r3,[r0,1]
	.align 2
.L513:
	rsub	r3,r1,1
	add_s	r3,r3,r12   ;b,b,h
	brhi	r2,r3,.L514
	b_s	.L507
	.align 4
.L516:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L511:
	brne	r3,r1,.L516
	.align 2
.L507:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	rem	r0,r0,r1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__modi, .-__modi
	.align 4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bl	@__floatunsidf;1
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bl	@__floatunsisf;1
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bl	@__floatundidf;1
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bl	@__floatundisf;1
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__ulltof, .-__ulltof
	.align 4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	remu	r0,r0,r1
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r3,r0
	b.d	.L524
	mov_s	r0,0	;3
	.align 4
.L526:
	rsub	r2,r0,15
	bbit1	r3,r2,@.L525
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L524:
	brne	r0,16,.L526
.L525:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r2,r0
	b.d	.L528
	mov_s	r0,0	;3
	.align 4
.L530:
	bbit1	r2,r0,@.L529
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L528:
	brne	r0,16,.L530
.L529:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	push_s	blink
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__gesf2;1
	mov_s	r13,r0
	brlt	r0,0,.L536
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L534
	.align 4
.L536:
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L534:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r3,r0
	mov_s	r0,0	;3
	b.d	.L538
	mov_s	r2,0	;3
	.align 4
.L540:
	bbit0	r3,r2,@.L539
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L539:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L538:
	brne	r2,16,.L540
	bmsk_s	r0,r0,0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r3,r0
	mov_s	r0,0	;3
	b.d	.L542
	mov_s	r2,0	;3
	.align 4
.L544:
	bbit0	r3,r2,@.L543
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L543:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L542:
	brne	r2,16,.L544
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r0	;4
	b.d	.L546
	mov_s	r0,0	;3
	.align 4
.L548:
	bbit0	r2,0,@.L547
	add_s	r0,r0,r1   ;b,b,h
	.align 2
.L547:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L546:
	brne_s	r2,0,.L548
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov.f	r2,r0
	bne.d	.L551
	sub_s.ne	r0,r0,r0
	b.d	.L555
	mov_s	r0,0	;3
	.align 4
.L553:
	bbit0	r1,0,@.L552
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L552:
	asl_s	r2,r2,1
	lsr_s	r1,r1
	.align 2
.L551:
	brne_s	r1,0,.L553
	.align 4
.L555:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r12,r0	;4
	b.d	.L557
	mov_s	r3,1	;3
	.align 4
.L559:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L557:
	brhs	r1,r12,.L564
	breq_s	r3,0,.L565
	brge	r1,0,.L559
	b.d	.L561
	mov_s	r0,0	;3
	.align 4
.L562:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	b.d	.L561
	lsr_s	r1,r1
	.align 4
.L564:
	b.d	.L561
	mov_s	r0,0	;3
	.align 4
.L565:
	mov_s	r0,0	;3
	.align 2
.L561:
	brne_s	r3,0,.L562
	tst_s	r2,r2
	mov.ne	r0,r12
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	push_s	blink
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r0
	bl.d	@__ltsf2;1
	mov_s	r14,r1
	tst_s	r0,r0
	mov.n	r0,-1
	bn	.L568
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
	.align 4
.L568:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r0,-1
	bn	.L572
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
	.align 4
.L572:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	asr	r5,r0,31
	asr	r7,r1,31
	mpy	r3,r5,r1
	mpy	r13,r7,r0
	add_s	r3,r3,r13   ;b,b,h
	mpydu	r0,r0,r1
	add_s	r1,r1,r3   ;b,b,h
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mpydu	r0,r0,r1
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	tst_s	r1,r1
	neg.n	r1,r1
	mov.n	r12,1
	mov.p	r12,0
	mov_s	r2,33	;3
	b.d	.L579
	mov_s	r3,0	;3
	.align 4
.L582:
	bbit0	r1,0,@.L580
	add_s	r3,r3,r0   ;b,b,h
	.align 2
.L580:
	asl_s	r0,r0,1
	asr_s	r1,r1,1
	.align 2
.L579:
	breq_s	r1,0,.L581
	add_s	r2,r2,-1   ;h,h,s3
	extb.f	r2,r2
	bne_s	.L582
	.align 2
.L581:
	neg_s	r0,r3
	tst_s	r12,r12
	mov.eq	r0,r3
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push_s	blink
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
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
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	tst_s	r0,r0
	neg.n	r0,r0
	mov.n	r13,1
	mov.p	r13,0
	mov_s	r2,1	;3
	bl.d	@__udivmodsi4;1
	abs_s	r1,r1
	tst_s	r13,r13
	neg.ne	r0,r0
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r12,r0
	exth_s	r1,r1
	mov_s	r13,17	;3
	b.d	.L597
	mov_s	r3,1	;3
	.align 4
.L599:
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	exth_s	r3,r3
	.align 2
.L597:
	brhs	r1,r12,.L604
	add.f	r13,r13,-1
	beq_s	.L605
	btst_s	r1,15
	beq_s	.L599
	b.d	.L601
	mov_s	r0,0	;3
	.align 4
.L602:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	bmsk.hs	r12,r12,15
	or.hs r0,r0,r3
	lsr_s	r3,r3
	b.d	.L601
	lsr_s	r1,r1
	.align 4
.L604:
	b.d	.L601
	mov_s	r0,0	;3
	.align 4
.L605:
	mov_s	r0,0	;3
	.align 2
.L601:
	brne_s	r3,0,.L602
	tst_s	r2,r2
	mov.ne	r0,r12
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r12,r0	;4
	b.d	.L608
	mov_s	r3,1	;3
	.align 4
.L610:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L608:
	brhs	r1,r12,.L615
	breq_s	r3,0,.L616
	brge	r1,0,.L610
	b.d	.L612
	mov_s	r0,0	;3
	.align 4
.L613:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	b.d	.L612
	lsr_s	r1,r1
	.align 4
.L615:
	b.d	.L612
	mov_s	r0,0	;3
	.align 4
.L616:
	mov_s	r0,0	;3
	.align 2
.L612:
	brne_s	r3,0,.L613
	tst_s	r2,r2
	mov.ne	r0,r12
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bbit0	r2,5,@.L619
	asl	r13,r0,r2
	b.d	.L620
	mov_s	r12,0	;3
	.align 4
.L619:
	breq_s	r2,0,.L621
	mov_s	r3,r0	;4
	asl	r12,r0,r2
	mov_s	r14,r1	;4
	asl_s	r14,r14,r2
	rsub	r2,r2,32
	lsr_s	r3,r3,r2
	or	r13,r3,r14
	.align 2
.L620:
	vadd2	r0,r12,0
.L621:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bbit0	r2,5,@.L624
	asr	r12,r1,r2
	b.d	.L625
	asr	r13,r1,31
	.align 4
.L624:
	breq_s	r2,0,.L626
	asr	r13,r1,r2
	rsub	r14,r2,32
	asl	r14,r1,r14
	lsr	r2,r0,r2
	or	r12,r14,r2
	.align 2
.L625:
	vadd2	r0,r12,0
.L626:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	std.a	r20,[sp,-8]
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r8,r1,24
	lsr	r2,r1,8
	and	r10,r2,65280
	asl	r15,r1,8
	lsr	r2,r0,24
	or_s	r2,r2,r15
	and	r6,r2,16711680
	asl	r14,r1,24
	lsr	r2,r0,8
	or_s	r2,r2,r14
	bmskn	r16,r2,23
	lsr	r2,r0,24
	mov	r59,r15	;5
	or	r59,r59,r2
	asl	r58,r0,8
	mov_s	r4,0	;4
	bmsk	r5,r59,7
	lsr	r13,r0,8
	mov_s	r21,r14	;4
	or	r21,r21,r13
	asl	r20,r0,24
	mov_s	r0,0	;3
	and	r1,r21,65280
	mov_s	r14,0	;3
	and	r15,r58,16711680
	or	r2,r8,r10
	or	r12,r2,r6
	or	r2,r12,r16
	or	r12,r2,r4
	or	r13,r20,r5
	or	r2,r12,r0
	or	r3,r13,r1
	or	r0,r2,r14
	or	r1,r3,r15
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,8]
	j_s	[blink]
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r12,r0,24
	lsr	r3,r0,8
	and	r3,r3,65280
	asl	r2,r0,8
	and	r2,r2,16711680
	asl_s	r0,r0,24
	or_s	r0,r0,r12
	or_s	r0,r0,r3
	or_s	r0,r0,r2
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,65535
	mov_s	r2,16	;3
	mov.hi	r2,0
	rsub	r3,r2,16
	lsr_s	r0,r0,r3
	tst	r0,65280
	mov_s	r3,8	;3
	sub.ne	r3,r3,r3
	rsub	r12,r3,8
	lsr_s	r0,r0,r12
	add_s	r2,r2,r3   ;b,b,h
	tst	r0,240
	mov_s	r3,4	;3
	sub.ne	r3,r3,r3
	rsub	r12,r3,4
	lsr_s	r0,r0,r12
	add_s	r2,r2,r3   ;b,b,h
	tst	r0,12
	mov_s	r3,2	;3
	sub.ne	r3,r3,r3
	rsub	r12,r3,2
	lsr_s	r0,r0,r12
	add_s	r2,r2,r3   ;b,b,h
	and	r3,r0,2
	seteq	r3,r3,0
	rsub	r0,r0,2
	mpy_s	r0,r0,r3
	add_s	r0,r0,r2   ;b,b,h
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r1,r3
	blt.d	.L640
	mov.lt	r0,0
	cmp_s	r1,r3
	bgt.d	.L640
	mov.gt	r0,2
	cmp_s	r0,r2
	blo.d	.L640
	mov.lo	r0,0
	cmp_s	r0,r2
	mov_s	r0,1	;3
	mov.hi	r0,2
	.align 4
.L640:
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bl	@__cmpdi2;1
	add_s	r0,r0,-1   ;h,h,s3
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bmsk.f	0,r0,15
	mov.eq	r3,16
	sub_s.ne	r3,r3,r3
	lsr_s	r0,r0,r3
	tst	r0,255
	mov.eq	r2,8
	sub_s.ne	r2,r2,r2
	lsr_s	r0,r0,r2
	add_s	r3,r3,r2   ;b,b,h
	tst	r0,15
	mov.eq	r2,4
	sub_s.ne	r2,r2,r2
	lsr_s	r0,r0,r2
	add_s	r3,r3,r2   ;b,b,h
	tst	r0,3
	mov.eq	r2,2
	sub_s.ne	r2,r2,r2
	lsr_s	r0,r0,r2
	bmsk_s	r0,r0,1
	add_s	r3,r3,r2   ;b,b,h
	bic	r12,1,r0    ;;constraint 6
	lsr_s	r2,r0
	rsub	r2,r2,2
	mpy_s	r2,r2,r12
	add_s	r0,r3,r2   ;a,b,c/u3
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bbit0	r2,5,@.L656
	lsr	r12,r1,r2
	b.d	.L657
	mov_s	r13,0	;3
	.align 4
.L656:
	breq_s	r2,0,.L658
	lsr	r13,r1,r2
	rsub	r14,r2,32
	asl	r14,r1,r14
	lsr	r2,r0,r2
	or	r12,r14,r2
	.align 2
.L657:
	vadd2	r0,r12,0
.L658:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,r0	;4
	mov_s	r12,r1	;4
	exth_s	r14,r0
	exth_s	r15,r1
	mpy	r13,r14,r15
	lsr	r2,r13,16
	bmsk_s	r13,r13,15
	lsr_s	r3,r3,16
	mpy_s	r15,r15,r3
	add_s	r2,r2,r15   ;b,b,h
	asl	r15,r2,16
	add_s	r0,r15,r13   ;a,b,c/u3
	lsr	r1,r2,16
	mov_s	r13,r0	;4
	lsr	r2,r0,16
	bmsk_s	r13,r13,15
	lsr_s	r12,r12,16
	mpy_s	r14,r14,r12
	add_s	r2,r2,r14   ;b,b,h
	asl	r14,r2,16
	add_s	r0,r14,r13   ;a,b,c/u3
	lsr_s	r2,r2,16
	add_s	r2,r2,r1   ;b,b,h
	mpy_s	r3,r3,r12
	add_s	r1,r3,r2   ;a,b,c/u3
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	push_s	blink
	st.a	r18,[sp,-4]	;26
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	mov_s	r13,r0	;4
	mov_s	r1,r2	;4
	bl.d	@__muldsi3;1
	mov_s	r0,r16	;4
	vadd2	r2,r0,0
	mov_s	r12,r3	;4
	mov_s	r3,r17	;4
	mpy_s	r3,r3,r14
	mov_s	r2,r15	;4
	mpy_s	r2,r2,r13
	add_s	r2,r2,r3   ;b,b,h
	add_s	r1,r2,r12   ;a,b,c/u3
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r2,r0,0
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	sub.f	r0,r12,r0
	sbc	r1,r13,r3
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	xor_s	r0,r0,r1
	lsr	r2,r0,16
	xor_s	r0,r0,r2
	lsr	r2,r0,8
	xor_s	r0,r0,r2
	lsr	r2,r0,4
	xor_s	r0,r0,r2
	bmsk_s	r0,r0,3
	asr	r0,27030,r0
	bmsk_s	r0,r0,0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r2,r0,16
	xor_s	r0,r0,r2
	lsr	r2,r0,8
	xor_s	r0,r0,r2
	lsr	r2,r0,4
	xor_s	r0,r0,r2
	bmsk_s	r0,r0,3
	asr	r0,27030,r0
	bmsk_s	r0,r0,0
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr.f	r13,r1
	rrc	r12,r0
	and	r14,r12,1431655765
	and	r15,r13,1431655765
	sub.f	r12,r0,r14
	sbc	r13,r1,r15
	asl	r14,r13,30
	lsr	r2,r12,2
	or_s	r2,r2,r14
	lsr	r3,r13,2
	and	r14,r2,858993459
	and	r15,r3,858993459
	and	r0,r12,858993459
	and	r1,r13,858993459
	add.f	r6,r14,r0
	adc	r7,r15,r1
	asl	r14,r7,28
	lsr	r2,r6,4
	or_s	r2,r2,r14
	lsr	r3,r7,4
	add.f	r4,r2,r6
	adc	r5,r3,r7
	and	r6,r4,252645135
	and	r7,r5,252645135
	mov_s	r2,r7	;4
	add_s	r2,r2,r6   ;b,b,h
	lsr	r3,r2,16
	add_s	r2,r2,r3   ;b,b,h
	lsr	r0,r2,8
	add_s	r0,r0,r2   ;b,b,h
	bmsk_s	r0,r0,6
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr_s	r2,r0
	and	r2,r2,1431655765
	sub_s	r0,r0,r2
	lsr	r2,r0,2
	and	r2,r2,858993459
	and	r0,r0,858993459
	add_s	r0,r0,r2   ;b,b,h
	lsr	r2,r0,4
	add_s	r0,r0,r2   ;b,b,h
	and	r0,r0,252645135
	lsr	r2,r0,16
	add_s	r0,r0,r2   ;b,b,h
	lsr	r2,r0,8
	add_s	r0,r0,r2   ;b,b,h
	bmsk_s	r0,r0,5
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r14,r0,0
	mov_s	r13,r2	;4
	lsr	r18,r2,31
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	.align 2
.L670:
	bbit0	r13,0,@.L668
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	.align 2
.L668:
	div	r13,r13,2
	breq_s	r13,0,.L669
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	b_s	.L670
	.align 4
.L669:
	vadd2	r0,r16,0
	breq	r18,0,.L671
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	.align 4
.L671:
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r0
	mov_s	r14,r1	;4
	lsr	r16,r1,31
	mov_s	r15,0x3f800000 ; 1.0e+0
	.align 2
.L676:
	bbit0	r14,0,@.L674
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	mov_s	r15,r0
	.align 2
.L674:
	div	r14,r14,2
	breq_s	r14,0,.L675
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	b.d	.L676
	mov_s	r13,r0
	.align 4
.L675:
	tst	r16,r16
	mov.eq	r0,r15
	mov.ne	r1,r15
	mov.ne	r0,0x3f800000 ; 1.0e+0
	jlne	@__divsf3
	ld.ab	fp,[sp,4]	;23
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
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r1,r3
	blo.d	.L680
	mov.lo	r0,0
	cmp_s	r1,r3
	bhi.d	.L680
	mov.hi	r0,2
	cmp_s	r0,r2
	blo.d	.L680
	mov.lo	r0,0
	cmp_s	r0,r2
	mov_s	r0,1	;3
	mov.hi	r0,2
	.align 4
.L680:
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bl	@__ucmpdi2;1
	add_s	r0,r0,-1   ;h,h,s3
	ld.ab	fp,[sp,4]	;23
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
