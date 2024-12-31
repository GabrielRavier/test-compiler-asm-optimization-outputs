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
	cmp_s	r0,r1
	bls_s	.L2
	add_s	r3,r1,r2   ;a,b,c/u3
	add_s	r2,r2,r0   ;b,b,h
	b_s	.L3
	.align 4
.L4:
	ldb.a	r12,[r3,-1]
	add_s	r2,r2,-1   ;h,h,s3
	stb_s	r12,[r2]
	.align 2
.L3:
	cmp_s	r3,r1
	bne_s	.L4
	b_s	.L5
	.align 4
.L2:
	cmp_s	r0,r1
	beq_s	.L5
	sub	r12,r0,1 ;a,b,u6
	add_s	r2,r2,r1   ;b,b,h
	mov_s	r3,r1	;4
	b_s	.L6
	.align 4
.L7:
	ldb.ab	r13,[r3,1]
	add_s	r12,r12,1   ;b,b,h
	stb_s	r13,[r12]
	.align 2
.L6:
	cmp_s	r3,r2
	bne_s	.L7
.L5:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r2,r2
	add_s	r1,r1,-1   ;h,h,s3
	b_s	.L9
	.align 4
.L11:
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L9:
	mov_s	r12,r0	;4
	tst_s	r3,r3
	beq_s	.L10
	add_s	r1,r1,1   ;b,b,h
	ldb_s	r13,[r1]
	stb.ab	r13,[r0,1]
	ldb	r13,[r0,-1]
	cmp_s	r2,r13
	bne_s	.L11
	.align 2
.L10:
	tst_s	r3,r3
	beq_s	.L13
	add_s	r0,r12,1   ;R0/R1,b,u6
	b_s	.L12
	.align 4
.L13:
	mov_s	r0,0	;3
.L12:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r1,r1
	b_s	.L15
	.align 4
.L17:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L15:
	mov_s	r3,r0	;4
	tst_s	r2,r2
	beq_s	.L16
	ldb.ab	r12,[r0,1]
	cmp_s	r1,r12
	bne_s	.L17
	.align 2
.L16:
	tst_s	r2,r2
	beq_s	.L19
	mov_s	r0,r3	;4
	b_s	.L18
	.align 4
.L19:
	mov_s	r0,0	;3
.L18:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b_s	.L21
	.align 4
.L23:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L21:
	mov_s	r3,r1	;4
	mov_s	r12,r0	;4
	tst_s	r2,r2
	beq_s	.L22
	ldb.ab	r14,[r0,1]
	ldb.ab	r13,[r1,1]
	cmp_s	r14,r13
	beq_s	.L23
	.align 2
.L22:
	tst_s	r2,r2
	beq_s	.L25
	ldb_s	r0,[r12]
	ldb_s	r2,[r3]
	sub_s	r0,r0,r2
	b_s	.L24
	.align 4
.L25:
	mov_s	r0,0	;3
.L24:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub	r3,r0,1 ;a,b,u6
	add_s	r2,r2,r1   ;b,b,h
	b_s	.L27
	.align 4
.L28:
	ldb.ab	r12,[r1,1]
	add_s	r3,r3,1   ;b,b,h
	stb_s	r12,[r3]
	.align 2
.L27:
	cmp_s	r1,r2
	bne_s	.L28
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r1,r1
	add_s	r2,r2,r0   ;b,b,h
	mov_s	r12,r0	;4
	b_s	.L30
	.align 4
.L32:
	add_s	r2,r2,-1   ;h,h,s3
	ldb_s	r13,[r2]
	cmp_s	r1,r13
	bne_s	.L30
	add_s	r0,r0,r3   ;b,b,h
	b_s	.L31
	.align 4
.L30:
	not_s	r3,r0
	add_s	r3,r3,r2   ;b,b,h
	cmp_s	r2,r12
	bne_s	.L32
	mov_s	r0,0	;3
.L31:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	add_s	r2,r2,r0   ;b,b,h
	mov_s	r3,r0	;4
	b_s	.L34
	.align 4
.L35:
	stb.ab	r1,[r3,1]
	.align 2
.L34:
	cmp_s	r3,r2
	bne_s	.L35
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
.L37:
	mov_s	r0,r2	;4
	add_s	r1,r1,1   ;b,b,h
	ldb_s	r3,[r1]
	stb.ab	r3,[r2,1]
	ldb	r3,[r2,-1]
	tst_s	r3,r3
	bne_s	.L37
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
.L40:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	tst_s	r3,r3
	beq_s	.L39
	ldb	r3,[r2,-1]
	cmp_s	r1,r3
	bne_s	.L40
.L39:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	.align 2
.L43:
	mov_s	r2,r0	;4
	ldb.ab	r3,[r0,1]
	cmp_s	r1,r3
	beq_s	.L44
	ldb	r2,[r0,-1]
	tst_s	r2,r2
	bne_s	.L43
	mov_s	r0,0	;3
	b_s	.L42
	.align 4
.L44:
	mov_s	r0,r2	;4
.L42:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	.align 2
.L47:
	mov_s	r2,r1	;4
	mov_s	r3,r0	;4
	ldb.ab	r13,[r0,1]
	ldb.ab	r12,[r1,1]
	cmp_s	r13,r12
	bne_s	.L46
	ldb	r12,[r0,-1]
	tst_s	r12,r12
	bne_s	.L47
	.align 2
.L46:
	ldb_s	r0,[r3]
	ldb_s	r2,[r2]
	sub_s	r0,r0,r2
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,r0	;4
	.align 2
.L49:
	mov_s	r2,r3	;4
	ldb.ab	r12,[r3,1]
	tst_s	r12,r12
	bne_s	.L49
	sub_s	r0,r2,r0
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	beq_s	.L54
	add_s	r2,r2,r0   ;b,b,h
	.align 2
.L53:
	mov_s	r3,r1	;4
	mov_s	r12,r0	;4
	ldb.ab	r13,[r0,1]
	tst_s	r13,r13
	beq_s	.L52
	ldb_s	r13,[r1]
	tst_s	r13,r13
	beq_s	.L52
	cmp_s	r0,r2
	beq_s	.L52
	ldb	r14,[r0,-1]
	ldb.ab	r13,[r1,1]
	cmp_s	r14,r13
	beq_s	.L53
	.align 2
.L52:
	ldb_s	r0,[r12]
	ldb_s	r2,[r3]
	sub_s	r0,r0,r2
	b_s	.L51
	.align 4
.L54:
	mov_s	r0,0	;3
.L51:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,r0	;4
	b_s	.L56
	.align 4
.L57:
	ldb_s	r12,[r3,1]
	stb_s	r12,[r1]
	ldb.ab	r12,[r3,2]
	stb_s	r12,[r1,1]
	add_s	r1,r1,2   ;b,b,h
	.align 2
.L56:
	add_s	r12,r0,r2   ;a,b,c/u3
	sub_s	r12,r12,r3
	cmp_s	r12,1
	bgt_s	.L57
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	seths	r0,127,r0
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,32
	beq_s	.L62
	cmp_s	r0,9
	bne_s	.L63
	mov_s	r0,1	;3
	b_s	.L61
	.align 4
.L62:
	mov_s	r0,1	;3
	b_s	.L61
	.align 4
.L63:
	mov_s	r0,0	;3
.L61:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,31
	bls_s	.L66
	cmp_s	r0,127
	bne_s	.L67
	mov_s	r0,1	;3
	b_s	.L65
	.align 4
.L66:
	mov_s	r0,1	;3
	b_s	.L65
	.align 4
.L67:
	mov_s	r0,0	;3
.L65:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	r0,r0,6 ;a,b,u6
	setlo	r0,r0,10
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub	r0,r0,33 ;a,b,u6
	seths	r0,93,r0
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	add	r0,r0,-97 ;b,b,s12
	setlo	r0,r0,26
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	r0,r0,4 ;a,b,u6
	seths	r0,94,r0
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,32
	beq_s	.L74
	sub	r0,r0,9 ;a,b,u6
	cmp_s	r0,4
	bhi_s	.L75
	mov_s	r0,1	;3
	b_s	.L73
	.align 4
.L74:
	mov_s	r0,1	;3
	b_s	.L73
	.align 4
.L75:
	mov_s	r0,0	;3
.L73:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	add	r0,r0,-65 ;b,b,s12
	setlo	r0,r0,26
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,31
	bls_s	.L79
	add	r2,r0,-127     ;a,b,limm
	cmp_s	r2,32
	bls_s	.L80
	add	r2,r0,-8232     ;a,b,limm
	cmp_s	r2,1
	bls_s	.L81
	add_s	r0,r0,-65529   ;b,b,limm
	cmp_s	r0,2
	bhi_s	.L82
	mov_s	r0,1	;3
	b_s	.L78
	.align 4
.L79:
	mov_s	r0,1	;3
	b_s	.L78
	.align 4
.L80:
	mov_s	r0,1	;3
	b_s	.L78
	.align 4
.L81:
	mov_s	r0,1	;3
	b_s	.L78
	.align 4
.L82:
	mov_s	r0,0	;3
.L78:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	r0,r0,6 ;a,b,u6
	setlo	r0,r0,10
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp	r0,254
	bhi_s	.L85
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	seths	r0,r0,33
	b_s	.L86
	.align 4
.L85:
	cmp_s	r0,8231
	bls	.L87
	add	r2,r0,-8234     ;a,b,limm
	cmp_s	r2,47061
	bls_s	.L88
	add	r2,r0,-57344     ;a,b,limm
	cmp_s	r2,8184
	bls_s	.L89
	add	r2,r0,-65532     ;a,b,limm
	cmp_s	r2,1048579
	bhi_s	.L90
	bic.f	0,65534,r0
	beq_s	.L91
	mov_s	r0,1	;3
	b_s	.L86
	.align 4
.L87:
	mov_s	r0,1	;3
	b_s	.L86
	.align 4
.L88:
	mov_s	r0,1	;3
	b_s	.L86
	.align 4
.L89:
	mov_s	r0,1	;3
	b_s	.L86
	.align 4
.L90:
	mov_s	r0,0	;3
	b_s	.L86
	.align 4
.L91:
	mov_s	r0,0	;3
.L86:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	r2,r0,6 ;a,b,u6
	cmp_s	r2,9
	bls_s	.L94
	bset_s	r0,r0,5
	add	r0,r0,-97 ;b,b,s12
	cmp_s	r0,5
	bhi_s	.L95
	mov_s	r0,1	;3
	b_s	.L93
	.align 4
.L94:
	mov_s	r0,1	;3
	b_s	.L93
	.align 4
.L95:
	mov_s	r0,0	;3
.L93:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	bmsk_s	r0,r0,6
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r16,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L100
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L101
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	ble_s	.L104
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__subdf3;1
	b_s	.L98
	.align 4
.L100:
	vadd2	r0,r16,0
	b_s	.L98
	.align 4
.L101:
	vadd2	r0,r14,0
	b_s	.L98
	.align 4
.L104:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
.L98:
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
	mov_s	r14,r0
	mov_s	r13,r1
	mov_s	r1,r14
	bl	@__unordsf2;1
	tst_s	r0,r0
	bne_s	.L108
	mov_s	r1,r13
	mov_s	r0,r13
	bl	@__unordsf2;1
	tst_s	r0,r0
	bne_s	.L109
	mov_s	r1,r13
	mov_s	r0,r14
	bl	@__gtsf2;1
	cmp_s	r0,0
	ble_s	.L112
	mov_s	r1,r13
	mov_s	r0,r14
	bl	@__subsf3;1
	b_s	.L106
	.align 4
.L108:
	mov_s	r0,r14
	b_s	.L106
	.align 4
.L109:
	mov_s	r0,r13
	b_s	.L106
	.align 4
.L112:
	mov_s	r0,0x00000000
.L106:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	pop_s	r13
	ld.ab	r14,[sp,8]	;23
	j_s	[blink]
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
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	vadd2	r2,r14,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L117
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L118
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L115
	mov_s	r2,r15	;4
	mov_s	r2,r3	;4
	tst_s	r2,r2
	beq_s	.L119
	vadd2	r0,r16,0
	b_s	.L114
	.align 4
.L115:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	bp	.L122
	vadd2	r0,r16,0
	b_s	.L114
	.align 4
.L117:
	vadd2	r0,r16,0
	b_s	.L114
	.align 4
.L118:
	vadd2	r0,r14,0
	b_s	.L114
	.align 4
.L119:
	vadd2	r0,r14,0
	b_s	.L114
	.align 4
.L122:
	vadd2	r0,r14,0
.L114:
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
	mov_s	r13,r0
	mov_s	r14,r1
	mov_s	r1,r13
	bl	@__unordsf2;1
	tst_s	r0,r0
	bne_s	.L127
	mov_s	r1,r14
	mov_s	r0,r14
	bl	@__unordsf2;1
	tst_s	r0,r0
	bne_s	.L128
	mov_s	r3,r13	;4
	bmskn	r3,r3,30
	mov_s	r2,r14	;4
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L125
	mov_s	r2,r13	;4
	mov_s	r2,r3	;4
	tst_s	r2,r2
	beq_s	.L129
	mov_s	r0,r14
	b_s	.L124
	.align 4
.L125:
	mov_s	r1,r14
	mov_s	r0,r13
	bl	@__ltsf2;1
	tst_s	r0,r0
	bp	.L132
	mov_s	r0,r14
	b_s	.L124
	.align 4
.L127:
	mov_s	r0,r14
	b_s	.L124
	.align 4
.L128:
	mov_s	r0,r13
	b_s	.L124
	.align 4
.L129:
	mov_s	r0,r13
	b_s	.L124
	.align 4
.L132:
	mov_s	r0,r13
.L124:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	pop_s	r13
	ld.ab	r14,[sp,8]	;23
	j_s	[blink]
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
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	vadd2	r2,r14,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L137
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L138
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L135
	mov_s	r2,r15	;4
	mov_s	r2,r3	;4
	tst_s	r2,r2
	beq_s	.L139
	vadd2	r0,r16,0
	b_s	.L134
	.align 4
.L135:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	bp	.L142
	vadd2	r0,r16,0
	b_s	.L134
	.align 4
.L137:
	vadd2	r0,r16,0
	b_s	.L134
	.align 4
.L138:
	vadd2	r0,r14,0
	b_s	.L134
	.align 4
.L139:
	vadd2	r0,r14,0
	b_s	.L134
	.align 4
.L142:
	vadd2	r0,r14,0
.L134:
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
	vadd2	r2,r16,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L147
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L148
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L145
	mov_s	r2,r17	;4
	mov_s	r2,r3	;4
	tst_s	r2,r2
	beq_s	.L149
	vadd2	r0,r16,0
	b_s	.L144
	.align 4
.L145:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	bp	.L152
	vadd2	r0,r16,0
	b_s	.L144
	.align 4
.L147:
	vadd2	r0,r14,0
	b_s	.L144
	.align 4
.L148:
	vadd2	r0,r16,0
	b_s	.L144
	.align 4
.L149:
	vadd2	r0,r14,0
	b_s	.L144
	.align 4
.L152:
	vadd2	r0,r14,0
.L144:
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
	mov_s	r1,r14
	bl	@__unordsf2;1
	tst_s	r0,r0
	bne_s	.L157
	mov_s	r1,r13
	mov_s	r0,r13
	bl	@__unordsf2;1
	tst_s	r0,r0
	bne_s	.L158
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L155
	mov_s	r2,r14	;4
	mov_s	r2,r3	;4
	tst_s	r2,r2
	beq_s	.L159
	mov_s	r0,r14
	b_s	.L154
	.align 4
.L155:
	mov_s	r1,r13
	mov_s	r0,r14
	bl	@__ltsf2;1
	tst_s	r0,r0
	bp	.L162
	mov_s	r0,r14
	b_s	.L154
	.align 4
.L157:
	mov_s	r0,r13
	b_s	.L154
	.align 4
.L158:
	mov_s	r0,r14
	b_s	.L154
	.align 4
.L159:
	mov_s	r0,r13
	b_s	.L154
	.align 4
.L162:
	mov_s	r0,r13
.L154:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	pop_s	r13
	ld.ab	r14,[sp,8]	;23
	j_s	[blink]
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
	vadd2	r2,r16,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L167
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L168
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L165
	mov_s	r2,r17	;4
	mov_s	r2,r3	;4
	tst_s	r2,r2
	beq_s	.L169
	vadd2	r0,r16,0
	b_s	.L164
	.align 4
.L165:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	bp	.L172
	vadd2	r0,r16,0
	b_s	.L164
	.align 4
.L167:
	vadd2	r0,r14,0
	b_s	.L164
	.align 4
.L168:
	vadd2	r0,r16,0
	b_s	.L164
	.align 4
.L169:
	vadd2	r0,r14,0
	b_s	.L164
	.align 4
.L172:
	vadd2	r0,r14,0
.L164:
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
	b_s	.L174
	.align 4
.L175:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	stb.ab	r3,[r2,1]
	lsr_s	r0,r0,6
	.align 2
.L174:
	tst_s	r0,r0
	bne_s	.L175
	stb	0,[r2]
	mov_s	r0,@s.0	;13
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	sub	r2,r0,1 ;a,b,u6
	mov_s	r3,0	;3
	std	r2,[@seed]
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	lsr_s	r0,r13
	mov_s	r1,0	;3
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	tst_s	r1,r1
	bne_s	.L179
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	b_s	.L178
	.align 4
.L179:
	ld_s	r2,[r1]		;15
	st_s	r2,[r0]		;16
	st_s	r1,[r0,4]		;16
	st_s	r0,[r1]		;16
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	beq_s	.L178
	st_s	r0,[r2,4]		;16
	.align 2
.L178:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	ld_s	r2,[r0]		;15
	tst_s	r2,r2
	beq_s	.L182
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L182:
	ld_s	r2,[r0,4]		;15
	tst_s	r2,r2
	beq_s	.L181
	ld_s	r3,[r0]		;15
	st_s	r3,[r2]		;16
	.align 2
.L181:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	mov_s	r13,r1	;4
	mov_s	r18,r2	;4
	mov_s	r14,r3	;4
	mov_s	r20,r4	;4
	ld	r16,[r18]	;23
	mov_s	r19,r13	;4
	mov_s	r15,0	;3
	b_s	.L185
	.align 4
.L188:
	mov_s	r1,r19	;4
	mov_s	r0,r17	;4
	jl	[r20]
	add	r19,r19,r14   ;(p)b,b,c/u6
	tst_s	r0,r0
	bne_s	.L186
	mpy_s	r15,r15,r14
	add_s	r0,r13,r15   ;a,b,c/u3
	b_s	.L187
	.align 4
.L186:
	add_s	r15,r15,1   ;b,b,h
	.align 2
.L185:
	cmp_s	r15,r16
	bne_s	.L188
	add	r2,r16,1 ;a,b,c/u6
	st	r2,[r18]	;26
	mpy	r16,r16,r14
	add	r0,r13,r16 ;a,b,c/u6
	mov_s	r2,r14	;4
	mov_s	r1,r17	;4
	bl	@memcpy;1
.L187:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,32]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ld.ab	r20,[sp,8]	;23
	j_s	[blink]
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
	mov_s	r18,r0	;4
	mov_s	r13,r1	;4
	mov_s	r15,r3	;4
	mov_s	r17,r4	;4
	ld	r19,[r2]	;23
	mov_s	r16,r13	;4
	mov_s	r14,0	;3
	b_s	.L190
	.align 4
.L193:
	mov_s	r1,r16	;4
	mov_s	r0,r18	;4
	jl	[r17]
	add	r16,r16,r15   ;(p)b,b,c/u6
	tst_s	r0,r0
	bne_s	.L191
	mpy_s	r14,r14,r15
	add_s	r0,r13,r14   ;a,b,c/u3
	b_s	.L192
	.align 4
.L191:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L190:
	cmp_s	r14,r19
	bne_s	.L193
	mov_s	r0,0	;3
.L192:
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
.L196:
	mov_s	r13,r14	;4
	ldb.ab	r0,[r14,1]
	bl	@isspace;1
	tst_s	r0,r0
	bne_s	.L196
	ldb_s	r2,[r13]
	cmp_s	r2,43
	beq_s	.L202
	cmp_s	r2,45
	bne_s	.L203
	mov_s	r2,1	;3
	b_s	.L197
	.align 4
.L202:
	mov_s	r2,0	;3
	.align 2
.L197:
	add_s	r13,r13,1   ;b,b,h
	b_s	.L198
	.align 4
.L203:
	mov_s	r2,0	;3
	.align 2
.L198:
	add_s	r13,r13,-1   ;h,h,s3
	mov_s	r0,0	;3
	b_s	.L199
	.align 4
.L200:
	mpy	r0,r0,10
	ldb_s	r3,[r13]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L199:
	add_s	r13,r13,1   ;b,b,h
	ldb_s	r3,[r13]
	sub3	r3,r3,6 ;a,b,u6
	cmp_s	r3,9
	bls_s	.L200
	tst_s	r2,r2
	bne_s	.L201
	neg_s	r0,r0
.L201:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	pop_s	r13
	ld.ab	r14,[sp,8]	;23
	j_s	[blink]
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
.L206:
	mov_s	r13,r14	;4
	ldb.ab	r0,[r14,1]
	bl	@isspace;1
	tst_s	r0,r0
	bne_s	.L206
	ldb_s	r2,[r13]
	cmp_s	r2,43
	beq_s	.L212
	cmp_s	r2,45
	bne_s	.L213
	mov_s	r2,1	;3
	b_s	.L207
	.align 4
.L212:
	mov_s	r2,0	;3
	.align 2
.L207:
	add_s	r13,r13,1   ;b,b,h
	b_s	.L208
	.align 4
.L213:
	mov_s	r2,0	;3
	.align 2
.L208:
	add_s	r13,r13,-1   ;h,h,s3
	mov_s	r0,0	;3
	b_s	.L209
	.align 4
.L210:
	mpy	r0,r0,10
	ldb_s	r3,[r13]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L209:
	add_s	r13,r13,1   ;b,b,h
	ldb_s	r3,[r13]
	sub3	r3,r3,6 ;a,b,u6
	cmp_s	r3,9
	bls_s	.L210
	tst_s	r2,r2
	bne_s	.L211
	neg_s	r0,r0
.L211:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	pop_s	r13
	ld.ab	r14,[sp,8]	;23
	j_s	[blink]
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r14,r0	;4
	.align 2
.L216:
	mov_s	r13,r14	;4
	ldb.ab	r0,[r14,1]
	bl	@isspace;1
	tst_s	r0,r0
	bne_s	.L216
	ldb_s	r2,[r13]
	cmp_s	r2,43
	beq_s	.L222
	cmp_s	r2,45
	bne_s	.L223
	mov_s	r1,1	;3
	b_s	.L217
	.align 4
.L222:
	mov_s	r1,0	;3
	.align 2
.L217:
	add_s	r13,r13,1   ;b,b,h
	b_s	.L218
	.align 4
.L223:
	mov_s	r1,0	;3
	.align 2
.L218:
	add_s	r13,r13,-1   ;h,h,s3
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	b_s	.L219
	.align 4
.L220:
	mpy	r12,r3,10
	mpydu	r14,r2,10
	add_s	r15,r15,r12   ;b,b,h
	ldb_s	r12,[r13]
	sub3	r12,r12,6 ;a,b,u6
	mov_s	r16,r12	;4
	asr	r17,r12,31
	sub.f	r2,r14,r16
	sbc	r3,r15,r17
	.align 2
.L219:
	add_s	r13,r13,1   ;b,b,h
	ldb_s	r12,[r13]
	sub3	r12,r12,6 ;a,b,u6
	cmp_s	r12,9
	bls_s	.L220
	tst_s	r1,r1
	bne_s	.L224
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	sub.f	r0,r12,r2
	sbc	r1,r13,r3
	b_s	.L221
	.align 4
.L224:
	vadd2	r0,r2,0
.L221:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
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
	mov_s	r17,r1	;4
	mov_s	r13,r2	;4
	mov_s	r15,r3	;4
	mov_s	r16,r4	;4
	b_s	.L226
	.align 4
.L230:
	lsr_s	r14,r13
	mpy_s	r14,r14,r15
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl	[r16]
	mov.f	r2,r0
	bp	.L227
	lsr_s	r13,r13
	b_s	.L226
	.align 4
.L227:
	cmp_s	r2,0
	ble_s	.L231
	add	r17,r14,r15 ;a,b,c/u6
	lsr_s	r2,r13
	add_s	r13,r13,-1   ;h,h,s3
	sub_s	r13,r13,r2
	.align 2
.L226:
	tst_s	r13,r13
	bne_s	.L230
	mov_s	r0,0	;3
	b_s	.L229
	.align 4
.L231:
	mov_s	r0,r14	;4
.L229:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ld.ab	r18,[sp,8]	;23
	j_s	[blink]
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
	mov_s	r15,r1	;4
	b_s	.L233
	.align 4
.L236:
	asr_s	r13,r14,1
	mpy	r13,r13,r16
	add_s	r13,r13,r15   ;b,b,h
	mov_s	r2,r17	;4
	mov_s	r1,r13	;4
	mov_s	r0,r19	;4
	jl	[r18]
	tst_s	r0,r0
	beq_s	.L237
	cmp_s	r0,0
	ble_s	.L235
	add	r15,r13,r16 ;a,b,c/u6
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L235:
	asr_s	r14,r14,1
	.align 2
.L233:
	tst_s	r14,r14
	bne_s	.L236
	mov_s	r0,0	;3
	b_s	.L234
	.align 4
.L237:
	mov_s	r0,r13	;4
.L234:
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
	mov_s	r3,r0	;4
	div	r12,r1,r2
	rem	r1,r1,r2
	st_s	r12,[r3]		;16
	st_s	r1,[r3,4]		;16
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	asr	r2,r1,31
	mov_s	r3,r2	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	xor	r12,r2,r0
	xor	r13,r3,r1
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	sub.f	r0,r12,r2
	sbc	r1,r13,r3
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,r0	;4
	div	r12,r1,r2
	rem	r1,r1,r2
	st_s	r12,[r3]		;16
	st_s	r1,[r3,4]		;16
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	asr	r2,r1,31
	mov_s	r3,r2	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	xor	r12,r2,r0
	xor	r13,r3,r1
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	sub.f	r0,r12,r2
	sbc	r1,r13,r3
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
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
.L247:
	mov_s	r2,r0	;4
	ld.ab	r3,[r0,4]	;23
	tst_s	r3,r3
	beq_s	.L246
	ld	r3,[r0,-4]	;23
	cmp_s	r1,r3
	bne_s	.L247
	.align 2
.L246:
	ld_s	r3,[r2]		;15
	tst_s	r3,r3
	beq_s	.L249
	mov_s	r0,r2	;4
	b_s	.L248
	.align 4
.L249:
	mov_s	r0,0	;3
.L248:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	.align 2
.L252:
	mov_s	r2,r1	;4
	mov_s	r3,r0	;4
	ld.ab	r13,[r0,4]	;23
	ld.ab	r12,[r1,4]	;23
	cmp_s	r13,r12
	bne_s	.L251
	ld	r12,[r0,-4]	;23
	tst_s	r12,r12
	beq_s	.L251
	ld	r12,[r1,-4]	;23
	tst_s	r12,r12
	bne_s	.L252
	.align 2
.L251:
	ld_s	r13,[r3]		;15
	ld_s	r12,[r2]		;15
	cmp_s	r13,r12
	blt_s	.L254
	mov_s	r0,r13	;4
	mov_s	r2,r12	;4
	setgt	r0,r0,r2
	b_s	.L253
	.align 4
.L254:
	mov_s	r0,-1	;4
.L253:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub2	r2,r0,1 ;a,b,u6
	.align 2
.L256:
	ld.ab	r3,[r1,4]	;23
	add_s	r2,r2,4   ;b,b,h
	st_s	r3,[r2]		;16
	tst_s	r3,r3
	bne_s	.L256
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,r0	;4
	.align 2
.L258:
	mov_s	r2,r3	;4
	ld.ab	r12,[r3,4]	;23
	tst_s	r12,r12
	bne_s	.L258
	sub_s	r0,r2,r0
	asr_s	r0,r0,2
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b_s	.L260
	.align 4
.L262:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L260:
	mov_s	r3,r1	;4
	mov_s	r12,r0	;4
	tst_s	r2,r2
	beq_s	.L261
	ld_s	r14,[r0]		;15
	ld_s	r13,[r1]		;15
	cmp_s	r14,r13
	bne_s	.L261
	ld.ab	r13,[r0,4]	;23
	tst_s	r13,r13
	beq_s	.L261
	ld.ab	r13,[r1,4]	;23
	tst_s	r13,r13
	bne_s	.L262
	.align 2
.L261:
	tst_s	r2,r2
	beq_s	.L264
	ld_s	r13,[r12]		;15
	ld_s	r2,[r3]		;15
	cmp_s	r13,r2
	blt_s	.L265
	mov_s	r0,r13	;4
	setgt	r0,r0,r2
	b_s	.L263
	.align 4
.L264:
	mov_s	r0,0	;3
	b_s	.L263
	.align 4
.L265:
	mov_s	r0,-1	;4
.L263:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b_s	.L267
	.align 4
.L269:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L267:
	mov_s	r3,r0	;4
	tst_s	r2,r2
	beq_s	.L268
	ld.ab	r12,[r0,4]	;23
	cmp_s	r1,r12
	bne_s	.L269
	.align 2
.L268:
	tst_s	r2,r2
	beq_s	.L271
	mov_s	r0,r3	;4
	b_s	.L270
	.align 4
.L271:
	mov_s	r0,0	;3
.L270:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	push_s	r14
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b_s	.L273
	.align 4
.L275:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L273:
	mov_s	r3,r1	;4
	mov_s	r12,r0	;4
	tst_s	r2,r2
	beq_s	.L274
	ld.ab	r14,[r0,4]	;23
	ld.ab	r13,[r1,4]	;23
	cmp_s	r14,r13
	beq_s	.L275
	.align 2
.L274:
	tst_s	r2,r2
	beq_s	.L277
	ld_s	r13,[r12]		;15
	ld_s	r2,[r3]		;15
	cmp_s	r13,r2
	blt_s	.L278
	mov_s	r0,r13	;4
	setgt	r0,r0,r2
	b_s	.L276
	.align 4
.L277:
	mov_s	r0,0	;3
	b_s	.L276
	.align 4
.L278:
	mov_s	r0,-1	;4
.L276:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub2	r3,r0,1 ;a,b,u6
	b_s	.L280
	.align 4
.L281:
	ld.ab	r12,[r1,4]	;23
	add_s	r3,r3,4   ;b,b,h
	st_s	r12,[r3]		;16
	.align 2
.L280:
	add_s	r2,r2,-1   ;h,h,s3
	cmp_s	r2,-1
	bne_s	.L281
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,r1
	beq_s	.L283
	sub_s	r3,r0,r1
	asl_s	r12,r2,2
	cmp_s	r3,r12
	blo_s	.L284
	sub2	r3,r0,1 ;a,b,u6
	b_s	.L285
	.align 4
.L284:
	add2_s	r1,r1,r2
	add2	r2,-4,r2
	add_s	r2,r2,r0   ;b,b,h
	sub2	r3,r0,1 ;a,b,u6
	b_s	.L286
	.align 4
.L287:
	sub2	r1,r1,1 ;a,b,u6
	ld_s	r12,[r1]		;15
	st.ab	r12,[r2,-4]	;26
	.align 2
.L286:
	cmp_s	r2,r3
	bne_s	.L287
	b_s	.L283
	.align 4
.L288:
	ld.ab	r12,[r1,4]	;23
	add_s	r3,r3,4   ;b,b,h
	st_s	r12,[r3]		;16
	.align 2
.L285:
	add_s	r2,r2,-1   ;h,h,s3
	cmp_s	r2,-1
	bne_s	.L288
.L283:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,r0	;4
	b_s	.L290
	.align 4
.L291:
	st.ab	r1,[r3,4]	;26
	.align 2
.L290:
	add_s	r2,r2,-1   ;h,h,s3
	cmp_s	r2,-1
	bne_s	.L291
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,r1
	bhs_s	.L293
	add_s	r3,r0,r2   ;a,b,c/u3
	add_s	r1,r1,r2   ;b,b,h
	b_s	.L294
	.align 4
.L295:
	ldb.a	r2,[r3,-1]
	add_s	r1,r1,-1   ;h,h,s3
	stb_s	r2,[r1]
	.align 2
.L294:
	cmp_s	r3,r0
	bne_s	.L295
	b_s	.L292
	.align 4
.L293:
	cmp_s	r0,r1
	beq_s	.L292
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	mov_s	r3,r0	;4
	b_s	.L297
	.align 4
.L298:
	ldb.ab	r12,[r3,1]
	add_s	r1,r1,1   ;b,b,h
	stb_s	r12,[r1]
	.align 2
.L297:
	cmp_s	r3,r2
	bne_s	.L298
	.align 2
.L292:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	asl	r15,r1,r2
	or_s	r15,r15,r3
	asl	r14,r0,r2
	btst_s	r2,5
	mov_s	r3,r14	;4
	mov.eq	r3,r15
	mov_s	r15,r3	;4
	sub.ne	r14,r14,r14
	neg_s	r2,r2
	and	r3,r2,63
	asl	r4,r1,1
	not_s	r12,r3
	asl	r4,r4,r12
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	lsr	r12,r0,r3
	or	r12,r12,r4
	lsr	r13,r1,r3
	btst_s	r2,5
	mov_s	r2,r13	;4
	mov.eq	r2,r12
	mov_s	r12,r2	;4
	sub.ne	r13,r13,r13
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	or	r0,r12,r14
	or	r1,r13,r15
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
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	lsr	r14,r0,r2
	or_s	r14,r14,r3
	lsr	r15,r1,r2
	btst_s	r2,5
	mov_s	r3,r15	;4
	mov.eq	r3,r14
	mov_s	r14,r3	;4
	sub.ne	r15,r15,r15
	neg_s	r2,r2
	and	r3,r2,63
	lsr	r4,r0,1
	not_s	r12,r3
	lsr	r4,r4,r12
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	asl	r13,r1,r3
	or	r13,r13,r4
	asl	r12,r0,r3
	btst_s	r2,5
	mov_s	r2,r12	;4
	mov.eq	r2,r13
	mov_s	r13,r2	;4
	sub.ne	r12,r12,r12
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	or	r0,r12,r14
	or	r1,r13,r15
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	ror	r0,r0,r1
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	neg_s	r1,r1
	ror	r0,r0,r1
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	ror	r0,r0,r1
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r2,r0
	lsr	r0,r2,8
	extb_s	r2,r2
	asl_s	r2,r2,8
	or_s	r0,r0,r2
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	mov_s	r6,r8	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	mov_s	r14,r9	;4
	bmskn	r13,r14,23
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r2,r13,24
	mov_s	r3,0	;3
	mov_s	r4,0	;4
	mov_s	r5,0	;4
	and	r5,r14,16711680
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	lsr	r12,r5,8
	mov_s	r13,0	;3
	mov_s	r4,0	;4
	mov_s	r5,0	;4
	or	r4,r12,r2
	mov_s	r5,0	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	and	r13,r14,65280
	asl	r14,r13,8
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r2,r12,24
	or_s	r2,r2,r14
	lsr	r3,r13,24
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	or	r14,r4,r2
	mov_s	r15,r3	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	bmsk	r13,r9,7
	asl	r1,r13,24
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r2,r12,8
	or_s	r2,r2,r1
	lsr	r3,r13,8
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	or	r12,r14,r2
	or	r13,r15,r3
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	bmskn	r14,r6,23
	mov_s	r15,0	;3
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r3,r14,24
	asl	r2,r14,8
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	or	r14,r12,r2
	or	r15,r13,r3
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	and	r12,r6,16711680
	mov_s	r13,0	;3
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r3,r12,8
	asl	r2,r12,24
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	or	r12,r14,r2
	or	r13,r15,r3
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	and	r2,r6,65280
	mov_s	r3,0	;3
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	asl	r15,r2,8
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	mov_s	r2,r12	;4
	or	r3,r13,r15
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	bmsk	r14,r8,7
	mov_s	r15,0	;3
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	asl	r13,r14,24
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	mov_s	r0,r2	;4
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
	mov_s	r2,0	;3
	b_s	.L313
	.align 4
.L316:
	bbit0	r0,r2,@.L314
	add_s	r0,r2,1   ;R0/R1,b,u6
	b_s	.L315
	.align 4
.L314:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L313:
	cmp_s	r2,32
	bne_s	.L316
	mov_s	r0,0	;3
.L315:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov.f	r2,r0
	beq_s	.L321
	mov_s	r0,1	;3
	b_s	.L319
	.align 4
.L320:
	asr_s	r2,r2,1
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L319:
	bbit0	r2,0,@.L320
	b_s	.L318
	.align 4
.L321:
	mov_s	r0,0	;3
.L318:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	push_s	blink
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r0
	mov_s	r1,0xff7fffff ; -3.402823466385288598117e+38
	bl	@__ltsf2;1
	tst_s	r0,r0
	bn	.L325
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	mov_s	r0,r13
	bl	@__gtsf2;1
	cmp_s	r0,0
	ble_s	.L328
	mov_s	r0,1	;3
	b_s	.L323
	.align 4
.L325:
	mov_s	r0,1	;3
	b_s	.L323
	.align 4
.L328:
	mov_s	r0,0	;3
.L323:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
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
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	bl	@__ltdf2;1
	tst_s	r0,r0
	bn	.L332
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	ble_s	.L335
	mov_s	r0,1	;3
	b_s	.L330
	.align 4
.L332:
	mov_s	r0,1	;3
	b_s	.L330
	.align 4
.L335:
	mov_s	r0,0	;3
.L330:
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
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	bl	@__ltdf2;1
	tst_s	r0,r0
	bn	.L339
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	ble_s	.L342
	mov_s	r0,1	;3
	b_s	.L337
	.align 4
.L339:
	mov_s	r0,1	;3
	b_s	.L337
	.align 4
.L342:
	mov_s	r0,0	;3
.L337:
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
	mov_s	r0,r1	;4
	bl	@__floatsidf;1
	std	r0,[r13]
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
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
	mov_s	r13,r0
	mov_s	r15,r1	;4
	mov_s	r1,r13
	bl	@__unordsf2;1
	tst_s	r0,r0
	bne_s	.L345
	mov_s	r1,r13
	mov_s	r0,r13
	bl	@__addsf3;1
	mov_s	r1,r0
	mov_s	r0,r13
	bl	@__nesf2;1
	tst_s	r0,r0
	beq_s	.L345
	tst_s	r15,r15
	bp	.L350
	mov_s	r14,0x3f000000 ; 5.0e-1
	b_s	.L349
	.align 4
.L350:
	mov_s	r14,0x40000000 ; 2.0e+0
	.align 2
.L349:
	bbit0	r15,0,@.L348
	mov_s	r1,r14
	mov_s	r0,r13
	bl	@__mulsf3;1
	mov_s	r13,r0
	.align 2
.L348:
	div	r15,r15,2
	tst_s	r15,r15
	beq_s	.L345
	mov_s	r1,r14
	mov_s	r0,r14
	bl	@__mulsf3;1
	mov_s	r14,r0
	b_s	.L349
	.align 4
.L345:
	mov_s	r0,r13
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
	vadd2	r14,r0,0
	mov_s	r13,r2	;4
	vadd2	r2,r14,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L353
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r14,0
	bl	@__nedf2;1
	tst_s	r0,r0
	beq_s	.L353
	tst_s	r13,r13
	bp	.L358
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	b_s	.L357
	.align 4
.L358:
	mov_s	r16,0	;4
	mov_s	r17,1073741824	;13
	.align 2
.L357:
	bbit0	r13,0,@.L356
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L356:
	div	r13,r13,2
	tst_s	r13,r13
	beq_s	.L353
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L357
	.align 4
.L353:
	vadd2	r0,r14,0
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
	vadd2	r14,r0,0
	mov_s	r13,r2	;4
	vadd2	r2,r14,0
	bl	@__unorddf2;1
	tst_s	r0,r0
	bne_s	.L361
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r14,0
	bl	@__nedf2;1
	tst_s	r0,r0
	beq_s	.L361
	tst_s	r13,r13
	bp	.L366
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	b_s	.L365
	.align 4
.L366:
	mov_s	r16,0	;4
	mov_s	r17,1073741824	;13
	.align 2
.L365:
	bbit0	r13,0,@.L364
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L364:
	div	r13,r13,2
	tst_s	r13,r13
	beq_s	.L361
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L365
	.align 4
.L361:
	vadd2	r0,r14,0
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
	mov_s	r3,r0	;4
	b_s	.L369
	.align 4
.L370:
	ldb.ab	r12,[r1,1]
	ldb.ab	r13,[r3,1]
	xor_s	r12,r12,r13
	stb	r12,[r3,-1]
	.align 2
.L369:
	cmp_s	r1,r2
	bne_s	.L370
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
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
	mov_s	r13,r1	;4
	mov_s	r14,r2	;4
	bl	@strlen;1
	sub	r1,r13,1 ;a,b,u6
	add_s	r3,r15,r0   ;a,b,c/u3
	b_s	.L372
	.align 4
.L374:
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L372:
	mov_s	r2,r3	;4
	tst_s	r14,r14
	beq_s	.L373
	add_s	r1,r1,1   ;b,b,h
	ldb_s	r12,[r1]
	stb.ab	r12,[r3,1]
	ldb	r12,[r3,-1]
	tst_s	r12,r12
	bne_s	.L374
	.align 2
.L373:
	tst_s	r14,r14
	bne_s	.L375
	stb	0,[r2]
	.align 2
.L375:
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
	mov_s	r2,r0	;4
	sub	r3,r2,1 ;a,b,u6
	add_s	r1,r1,r2   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	.align 2
.L378:
	rsub	r0,r2,1
	add_s	r0,r0,r3   ;b,b,h
	cmp_s	r3,r1
	beq_s	.L377
	add_s	r3,r3,1   ;b,b,h
	ldb_s	r12,[r3]
	tst_s	r12,r12
	bne_s	.L378
.L377:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b_s	.L380
	.align 4
.L382:
	ldb_s	r13,[r3]
	ldb	r12,[r0,-1]
	cmp_s	r13,r12
	beq_s	.L384
	.align 2
.L383:
	add_s	r3,r3,1   ;b,b,h
	ldb_s	r12,[r3]
	tst_s	r12,r12
	bne_s	.L382
	.align 2
.L380:
	mov_s	r2,r0	;4
	ldb.ab	r3,[r0,1]
	tst_s	r3,r3
	beq_s	.L385
	sub	r3,r1,1 ;a,b,u6
	b_s	.L383
	.align 4
.L384:
	mov_s	r0,r2	;4
	b_s	.L381
	.align 4
.L385:
	mov_s	r0,0	;3
.L381:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
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
.L388:
	mov_s	r3,r2	;4
	ldb.ab	r12,[r2,1]
	cmp_s	r1,r12
	bne_s	.L387
	mov_s	r0,r3	;4
	.align 2
.L387:
	ldb	r3,[r2,-1]
	tst_s	r3,r3
	bne_s	.L388
	ld.ab	fp,[sp,4]	;23
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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r0	;4
	mov_s	r14,r1	;4
	mov_s	r0,r14	;4
	bl	@strlen;1
	mov_s	r15,r0	;4
	tst_s	r15,r15
	beq_s	.L394
	ldb	r16,[r14]
	b_s	.L392
	.align 4
.L393:
	mov_s	r2,r15	;4
	mov_s	r1,r14	;4
	mov_s	r0,r13	;4
	bl	@strncmp;1
	tst_s	r0,r0
	beq_s	.L395
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L392:
	mov_s	r1,r16	;4
	mov_s	r0,r13	;4
	bl	@strchr;1
	mov.f	r13,r0
	bne_s	.L393
	b_s	.L391
	.align 4
.L394:
	mov_s	r0,r13	;4
	b_s	.L391
	.align 4
.L395:
	mov_s	r0,r13	;4
.L391:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ld.ab	r16,[sp,8]	;23
	j_s	[blink]
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
	mov_s	r3,0	;3
	bl	@__ltdf2;1
	tst_s	r0,r0
	bp	.L397
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	vadd2	r0,r16,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	bgt_s	.L399
	.align 2
.L397:
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	ble_s	.L407
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	bp	.L408
.L399:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	mov_s	r0,r14	;4
	bxor	r1,r15,31
	b_s	.L400
	.align 4
.L407:
	vadd2	r0,r14,0
	b_s	.L400
	.align 4
.L408:
	vadd2	r0,r14,0
.L400:
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
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r17,r2	;4
	mov_s	r14,r3	;4
	sub	r16,r1,r14
	add	r16,r16,r0   ;(p)b,b,c/u6
	tst_s	r14,r14
	beq_s	.L410
	setlo	r1,r1,r14
	tst_s	r1,r1
	bne_s	.L414
	mov_s	r15,r0	;4
	b_s	.L411
	.align 4
.L412:
	ldb.ab	r3,[r15,1]
	ldb	r2,[r17]
	cmp_s	r3,r2
	bne_s	.L411
	sub	r2,r14,1 ;a,b,u6
	add	r1,r17,1 ;a,b,c/u6
	mov_s	r0,r15	;4
	bl	@memcmp;1
	tst_s	r0,r0
	beq_s	.L415
	.align 2
.L411:
	mov_s	r13,r15	;4
	cmp_s	r15,r16
	bls_s	.L412
	mov_s	r0,0	;3
	b_s	.L410
	.align 4
.L414:
	mov_s	r0,0	;3
	b_s	.L410
	.align 4
.L415:
	mov_s	r0,r13	;4
.L410:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,20]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push_s	blink
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r2	;4
	bl	@memcpy;1
	add_s	r0,r0,r13   ;b,b,h
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
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
	mov_s	r3,0	;3
	bl	@__ltdf2;1
	tst_s	r0,r0
	bp	.L434
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	mov_s	r12,r14	;4
	bxor	r13,r15,31
	vadd2	r14,r12,0
	mov_s	r17,1	;4
	b_s	.L418
	.align 4
.L434:
	mov_s	r17,0	;4
	.align 2
.L418:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl	@__gedf2;1
	tst_s	r0,r0
	bp	.L429
	b_s	.L437
	.align 4
.L422:
	add_s	r13,r13,1   ;b,b,h
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	b_s	.L420
	.align 4
.L429:
	mov_s	r13,0	;3
	.align 2
.L420:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl	@__gedf2;1
	tst_s	r0,r0
	bp	.L422
	b_s	.L423
	.align 4
.L437:
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	bp	.L436
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	vadd2	r0,r14,0
	bl	@__nedf2;1
	tst_s	r0,r0
	bne_s	.L431
	mov_s	r13,0	;3
	b_s	.L423
	.align 4
.L426:
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__adddf3;1
	vadd2	r14,r0,0
	b_s	.L425
	.align 4
.L431:
	mov_s	r13,0	;3
	.align 2
.L425:
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	bn	.L426
	b_s	.L423
	.align 4
.L436:
	mov_s	r13,0	;3
	.align 2
.L423:
	st	r13,[r16]	;26
	tst	r17,r17
	beq_s	.L427
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L427:
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
	mov_s	r1,0	;3
	b_s	.L439
	.align 4
.L442:
	mov_s	r4,r12	;4
	and	r14,r4,1
	mov_s	r15,0	;3
	mov_s	r4,r14	;4
	tst	r4,r4
	beq_s	.L440
	add.f	r0,r0,r2
	adc	r1,r1,r3
	.align 2
.L440:
	add.f	r2,r2,r2
	adc	r3,r3,r3
	lsr.f	r13,r13
	rrc	r12,r12
	.align 2
.L439:
	mov_s	r4,r12	;4
	or.f	0,r4,r13
	bne_s	.L442
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
	mov_s	r3,1	;3
	b_s	.L444
	.align 4
.L446:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L444:
	cmp_s	r1,r0
	bhs_s	.L451
	tst_s	r3,r3
	beq_s	.L452
	tst_s	r1,r1
	bp	.L446
	mov_s	r12,0	;3
	b_s	.L448
	.align 4
.L449:
	cmp_s	r0,r1
	blo_s	.L447
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L447:
	lsr_s	r3,r3
	lsr_s	r1,r1
	b_s	.L448
	.align 4
.L451:
	mov_s	r12,0	;3
	b_s	.L448
	.align 4
.L452:
	mov_s	r12,0	;3
	.align 2
.L448:
	tst_s	r3,r3
	bne_s	.L449
	tst_s	r2,r2
	bne_s	.L450
	mov_s	r0,r12	;4
.L450:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb.f	r0,r0
	beq_s	.L456
	asl_s	r0,r0,8
	fls	r0,r0
	rsub	r0,r0,30
	b_s	.L455
	.align 4
.L456:
	mov_s	r0,7	;3
.L455:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	tst_s	r1,r1
	bp	.L458
	not_s	r0,r0
	not_s	r1,r1
	.align 2
.L458:
	mov_s	r2,r0	;4
	or.f	0,r2,r1
	beq_s	.L464
	tst_s	r1,r1
	beq_s	.L462
	fls	r0,r1
	rsub	r0,r0,31
	b_s	.L463
	.align 4
.L462:
	fls	r0,r0
	rsub	r0,r0,63
	.align 2
.L463:
	add_s	r0,r0,-1   ;h,h,s3
	b_s	.L460
	.align 4
.L464:
	mov_s	r0,63	;3
.L460:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	b_s	.L466
	.align 4
.L468:
	bbit0	r2,0,@.L467
	add_s	r0,r0,r1   ;b,b,h
	.align 2
.L467:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L466:
	tst_s	r2,r2
	bne_s	.L468
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r13,r2,3
	bmskn	r3,r2,2
	cmp_s	r0,r1
	blo_s	.L470
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs_s	.L471
	.align 2
.L470:
	sub3	r5,r1,1 ;a,b,u6
	sub3	r4,r0,1 ;a,b,u6
	mov_s	r12,0	;3
	b_s	.L472
	.align 4
.L471:
	add_s	r3,r1,r2   ;a,b,c/u3
	add_s	r0,r0,r2   ;b,b,h
	b_s	.L473
	.align 4
.L474:
	add	r5,r5,8   ;(p)b,b,c/u6
	ldd	r14,[r5]
	add	r4,r4,8   ;(p)b,b,c/u6
	std	r14,[r4]
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L472:
	cmp_s	r12,r13
	bne_s	.L474
	add_s	r3,r3,-1   ;h,h,s3
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r0,r0,r3   ;b,b,h
	b_s	.L475
	.align 4
.L476:
	add_s	r12,r12,1   ;b,b,h
	ldb_s	r3,[r12]
	add_s	r0,r0,1   ;b,b,h
	stb_s	r3,[r0]
	.align 2
.L475:
	rsub	r3,r1,1
	add_s	r3,r3,r12   ;b,b,h
	cmp_s	r2,r3
	bhi_s	.L476
	b_s	.L469
	.align 4
.L478:
	add_s	r3,r3,-1   ;h,h,s3
	ldb_s	r2,[r3]
	add_s	r0,r0,-1   ;h,h,s3
	stb_s	r2,[r0]
	.align 2
.L473:
	cmp_s	r3,r1
	bne_s	.L478
	.align 2
.L469:
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
	lsr_s	r12,r2
	cmp_s	r0,r1
	blo_s	.L480
	add_s	r3,r1,r2   ;a,b,c/u3
	cmp_s	r3,r0
	bhs_s	.L481
	.align 2
.L480:
	sub1	r3,r1,1 ;a,b,u6
	sub1	r13,r0,1 ;a,b,u6
	add1	r12,r3,r12
	b_s	.L482
	.align 4
.L481:
	add_s	r3,r1,r2   ;a,b,c/u3
	add_s	r0,r0,r2   ;b,b,h
	b_s	.L483
	.align 4
.L484:
	add_s	r3,r3,2   ;b,b,h
	ldh_s.x	r14,[r3]
	add_s	r13,r13,2   ;b,b,h
	sth_s	r14,[r13]
	.align 2
.L482:
	cmp_s	r3,r12
	bne_s	.L484
	bbit0	r2,0,@.L479
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r1,r1,r2   ;b,b,h
	add_s	r0,r0,r2   ;b,b,h
	ldb_s	r2,[r1]
	stb_s	r2,[r0]
	b_s	.L479
	.align 4
.L486:
	add_s	r3,r3,-1   ;h,h,s3
	ldb_s	r2,[r3]
	add_s	r0,r0,-1   ;h,h,s3
	stb_s	r2,[r0]
	.align 2
.L483:
	cmp_s	r3,r1
	bne_s	.L486
	.align 2
.L479:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r13,r2,2
	bmskn	r3,r2,1
	cmp_s	r0,r1
	blo_s	.L488
	add_s	r12,r1,r2   ;a,b,c/u3
	cmp_s	r12,r0
	bhs_s	.L489
	.align 2
.L488:
	sub2	r12,r1,1 ;a,b,u6
	sub2	r14,r0,1 ;a,b,u6
	add2	r13,r12,r13
	b_s	.L490
	.align 4
.L489:
	add_s	r3,r1,r2   ;a,b,c/u3
	add_s	r0,r0,r2   ;b,b,h
	b_s	.L491
	.align 4
.L492:
	add_s	r12,r12,4   ;b,b,h
	ld_s	r15,[r12]		;15
	add_s	r14,r14,4   ;b,b,h
	st_s	r15,[r14]		;16
	.align 2
.L490:
	cmp_s	r12,r13
	bne_s	.L492
	add_s	r3,r3,-1   ;h,h,s3
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r0,r0,r3   ;b,b,h
	b_s	.L493
	.align 4
.L494:
	add_s	r12,r12,1   ;b,b,h
	ldb_s	r3,[r12]
	add_s	r0,r0,1   ;b,b,h
	stb_s	r3,[r0]
	.align 2
.L493:
	rsub	r3,r1,1
	add_s	r3,r3,r12   ;b,b,h
	cmp_s	r2,r3
	bhi_s	.L494
	b_s	.L487
	.align 4
.L496:
	add_s	r3,r3,-1   ;h,h,s3
	ldb_s	r2,[r3]
	add_s	r0,r0,-1   ;h,h,s3
	stb_s	r2,[r0]
	.align 2
.L491:
	cmp_s	r3,r1
	bne_s	.L496
	.align 2
.L487:
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r2,r0
	mov_s	r0,0	;3
	b_s	.L504
	.align 4
.L506:
	rsub	r3,r0,15
	bbit1	r2,r3,@.L505
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L504:
	cmp_s	r0,16
	bne_s	.L506
.L505:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r2,r0
	mov_s	r0,0	;3
	b_s	.L508
	.align 4
.L510:
	bbit1	r2,r0,@.L509
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L508:
	cmp_s	r0,16
	bne_s	.L510
.L509:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	push_s	blink
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r13,r0
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl	@__gesf2;1
	tst_s	r0,r0
	bn	.L516
	mov_s	r1,0x47000000 ; 3.2768e+4
	mov_s	r0,r13
	bl	@__subsf3;1
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L514
	.align 4
.L516:
	mov_s	r0,r13
	bl	@__fixsfsi;1
.L514:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r0,r0
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	b_s	.L518
	.align 4
.L520:
	bbit0	r0,r3,@.L519
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L519:
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L518:
	cmp_s	r3,16
	bne_s	.L520
	and	r0,r2,1
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r3,r0
	mov_s	r0,0	;3
	mov_s	r2,0	;3
	b_s	.L522
	.align 4
.L524:
	bbit0	r3,r2,@.L523
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L523:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L522:
	cmp_s	r2,16
	bne_s	.L524
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	b_s	.L526
	.align 4
.L528:
	bbit0	r2,0,@.L527
	add_s	r0,r0,r1   ;b,b,h
	.align 2
.L527:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L526:
	tst_s	r2,r2
	bne_s	.L528
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov.f	r2,r0
	beq_s	.L534
	mov_s	r0,0	;3
	b_s	.L531
	.align 4
.L533:
	bbit0	r1,0,@.L532
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L532:
	asl_s	r2,r2,1
	lsr_s	r1,r1
	.align 2
.L531:
	tst_s	r1,r1
	bne_s	.L533
	b_s	.L530
	.align 4
.L534:
	mov_s	r0,0	;3
.L530:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,1	;3
	b_s	.L536
	.align 4
.L538:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L536:
	cmp_s	r1,r0
	bhs_s	.L543
	tst_s	r3,r3
	beq_s	.L544
	tst_s	r1,r1
	bp	.L538
	mov_s	r12,0	;3
	b_s	.L540
	.align 4
.L541:
	cmp_s	r0,r1
	blo_s	.L539
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L539:
	lsr_s	r3,r3
	lsr_s	r1,r1
	b_s	.L540
	.align 4
.L543:
	mov_s	r12,0	;3
	b_s	.L540
	.align 4
.L544:
	mov_s	r12,0	;3
	.align 2
.L540:
	tst_s	r3,r3
	bne_s	.L541
	tst_s	r2,r2
	bne_s	.L542
	mov_s	r0,r12	;4
.L542:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	mov_s	r14,r1
	bl	@__ltsf2;1
	tst_s	r0,r0
	bn	.L548
	mov_s	r1,r14
	mov_s	r0,r13
	bl	@__gtsf2;1
	cmp_s	r0,0
	bgt_s	.L549
	mov_s	r0,0	;3
	b_s	.L547
	.align 4
.L548:
	mov_s	r0,-1	;4
	b_s	.L547
	.align 4
.L549:
	mov_s	r0,1	;3
.L547:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	pop_s	r13
	ld.ab	r14,[sp,8]	;23
	j_s	[blink]
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
	bn	.L552
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	bgt_s	.L553
	mov_s	r0,0	;3
	b_s	.L551
	.align 4
.L552:
	mov_s	r0,-1	;4
	b_s	.L551
	.align 4
.L553:
	mov_s	r0,1	;3
.L551:
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
	mov_s	r4,0	;4
	mov_s	r5,0	;4
	mov_s	r4,r0	;4
	asr	r5,r0,31
	mov_s	r6,0	;4
	mov_s	r7,0	;4
	mov_s	r6,r1	;4
	asr	r7,r1,31
	mpy	r3,r5,r6
	mpy	r13,r7,r4
	add_s	r3,r3,r13   ;b,b,h
	mpydu	r0,r4,r6
	add_s	r1,r1,r3   ;b,b,h
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	mov_s	r2,r0	;4
	mov_s	r3,0	;3
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	mov_s	r12,r1	;4
	mov_s	r13,0	;3
	mpydu	r0,r2,r12
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	tst_s	r1,r1
	bp	.L563
	neg_s	r1,r1
	mov_s	r12,1	;3
	b_s	.L557
	.align 4
.L563:
	mov_s	r12,0	;3
	.align 2
.L557:
	mov_s	r3,33	;3
	mov_s	r2,0	;3
	b_s	.L558
	.align 4
.L561:
	bbit0	r1,0,@.L559
	add_s	r2,r2,r0   ;b,b,h
	.align 2
.L559:
	asl_s	r0,r0,1
	asr_s	r1,r1,1
	.align 2
.L558:
	tst_s	r1,r1
	beq_s	.L560
	add_s	r3,r3,-1   ;h,h,s3
	extb.f	r3,r3
	bne_s	.L561
	.align 2
.L560:
	tst_s	r12,r12
	beq_s	.L564
	neg_s	r0,r2
	b_s	.L562
	.align 4
.L564:
	mov_s	r0,r2	;4
.L562:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	bp	.L569
	neg_s	r0,r0
	mov_s	r13,1	;3
	b_s	.L566
	.align 4
.L569:
	mov_s	r13,0	;3
	.align 2
.L566:
	tst_s	r1,r1
	bp	.L567
	neg_s	r1,r1
	seteq	r13,r13,0
	.align 2
.L567:
	mov_s	r2,0	;3
	bl	@__udivmodsi4;1
	tst_s	r13,r13
	beq_s	.L568
	neg_s	r0,r0
.L568:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
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
	bp	.L574
	neg_s	r0,r0
	mov_s	r13,1	;3
	b_s	.L571
	.align 4
.L574:
	mov_s	r13,0	;3
	.align 2
.L571:
	tst_s	r1,r1
	bp	.L572
	neg_s	r1,r1
	.align 2
.L572:
	mov_s	r2,1	;3
	bl	@__udivmodsi4;1
	tst_s	r13,r13
	beq_s	.L573
	neg_s	r0,r0
.L573:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r0,r0
	exth_s	r1,r1
	mov_s	r12,17	;3
	mov_s	r3,1	;3
	b_s	.L576
	.align 4
.L578:
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	exth_s	r3,r3
	.align 2
.L576:
	cmp_s	r1,r0
	bhs_s	.L583
	add.f	r12,r12,-1
	beq_s	.L584
	btst_s	r1,15
	beq_s	.L578
	mov_s	r12,0	;3
	b_s	.L580
	.align 4
.L581:
	cmp_s	r0,r1
	blo_s	.L579
	sub_s	r0,r0,r1
	exth_s	r0,r0
	or_s	r12,r12,r3
	.align 2
.L579:
	lsr_s	r3,r3
	lsr_s	r1,r1
	b_s	.L580
	.align 4
.L583:
	mov_s	r12,0	;3
	b_s	.L580
	.align 4
.L584:
	mov_s	r12,0	;3
	.align 2
.L580:
	tst_s	r3,r3
	bne_s	.L581
	tst_s	r2,r2
	bne_s	.L582
	mov_s	r0,r12	;4
.L582:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,1	;3
	b_s	.L587
	.align 4
.L589:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L587:
	cmp_s	r1,r0
	bhs_s	.L594
	tst_s	r3,r3
	beq_s	.L595
	tst_s	r1,r1
	bp	.L589
	mov_s	r12,0	;3
	b_s	.L591
	.align 4
.L592:
	cmp_s	r0,r1
	blo_s	.L590
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L590:
	lsr_s	r3,r3
	lsr_s	r1,r1
	b_s	.L591
	.align 4
.L594:
	mov_s	r12,0	;3
	b_s	.L591
	.align 4
.L595:
	mov_s	r12,0	;3
	.align 2
.L591:
	tst_s	r3,r3
	bne_s	.L592
	tst_s	r2,r2
	bne_s	.L593
	mov_s	r0,r12	;4
.L593:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r14,r0,0
	bbit0	r2,5,@.L598
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	asl_s	r14,r14,r2
	mov_s	r13,r14	;4
	b_s	.L599
	.align 4
.L598:
	tst_s	r2,r2
	beq_s	.L600
	mov_s	r3,r14	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	asl	r12,r3,r2
	mov_s	r14,r15	;4
	asl_s	r14,r14,r2
	rsub	r2,r2,32
	lsr_s	r3,r3,r2
	or_s	r3,r3,r14
	mov_s	r13,r3	;4
	.align 2
.L599:
	vadd2	r0,r12,0
.L600:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r4,r0,0
	bbit0	r2,5,@.L603
	mov_s	r3,r5	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	asr	r13,r3,31
	asr_s	r3,r3,r2
	mov_s	r12,r3	;4
	b_s	.L604
	.align 4
.L603:
	tst_s	r2,r2
	beq_s	.L605
	mov_s	r3,r5	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	asr	r13,r3,r2
	rsub	r15,r2,32
	asl_s	r3,r3,r15
	mov_s	r14,r4	;4
	lsr_s	r14,r14,r2
	or	r12,r3,r14
	.align 2
.L604:
	vadd2	r0,r12,0
.L605:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r8,0	;4
	mov_s	r9,0	;4
	lsr	r8,r1,24
	mov_s	r9,0	;4
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r2,r1,8
	mov_s	r3,0	;3
	mov_s	r6,0	;4
	mov_s	r7,0	;4
	and	r6,r2,65280
	mov_s	r7,0	;4
	asl	r15,r1,8
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r2,r0,24
	or_s	r2,r2,r15
	mov_s	r3,r8	;4
	mov_s	r10,0	;4
	mov_s	r11,0	;4
	and	r10,r2,16711680
	mov_s	r11,0	;4
	asl	r14,r1,24
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r2,r0,8
	or_s	r2,r2,r14
	lsr	r3,r1,8
	mov_s	r18,0	;4
	mov_s	r19,0	;4
	bmskn	r18,r2,23
	mov_s	r19,0	;4
	lsr	r2,r0,24
	mov_s	r16,0	;4
	mov_s	r17,0	;4
	mov_s	r17,r15	;4
	or	r17,r17,r2
	asl	r16,r0,8
	mov_s	r4,0	;4
	mov_s	r5,0	;4
	bmsk	r5,r17,7
	lsr	r13,r0,8
	mov	r58,0	;5
	mov	r59,0	;5
	mov	r59,r14	;5
	or	r59,r59,r13
	asl	r58,r0,24
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	mov	r3,r59	;5
	and	r15,r3,65280
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	mov_s	r1,r16	;4
	mov_s	r16,0	;4
	mov_s	r17,0	;4
	mov_s	r3,r1	;4
	and	r17,r3,16711680
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	mov	r13,r58	;5
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	mov_s	r0,r8	;4
	mov_s	r1,r13	;4
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	or	r2,r0,r6
	mov_s	r3,r1	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	or	r12,r2,r10
	mov_s	r13,r3	;4
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	or	r2,r12,r18
	mov_s	r3,r13	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	or	r12,r2,r4
	or	r13,r3,r5
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	or	r2,r12,r14
	or	r3,r13,r15
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	or	r0,r2,r16
	or	r1,r3,r17
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	cmp_s	r0,65535
	bhi_s	.L614
	mov_s	r2,16	;3
	b_s	.L610
	.align 4
.L614:
	mov_s	r2,0	;3
	.align 2
.L610:
	rsub	r3,r2,16
	lsr_s	r0,r0,r3
	tst	r0,65280
	bne_s	.L615
	mov_s	r3,8	;3
	b_s	.L611
	.align 4
.L615:
	mov_s	r3,0	;3
	.align 2
.L611:
	rsub	r12,r3,8
	lsr_s	r0,r0,r12
	add_s	r2,r2,r3   ;b,b,h
	tst	r0,240
	bne_s	.L616
	mov_s	r3,4	;3
	b_s	.L612
	.align 4
.L616:
	mov_s	r3,0	;3
	.align 2
.L612:
	rsub	r12,r3,4
	lsr_s	r0,r0,r12
	add_s	r2,r2,r3   ;b,b,h
	tst	r0,12
	bne_s	.L617
	mov_s	r3,2	;3
	b_s	.L613
	.align 4
.L617:
	mov_s	r3,0	;3
	.align 2
.L613:
	rsub	r12,r3,2
	lsr_s	r0,r0,r12
	add_s	r2,r2,r3   ;b,b,h
	and	r3,r0,2
	seteq	r3,r3,0
	rsub	r0,r0,2
	mpy_s	r3,r3,r0
	add_s	r0,r2,r3   ;a,b,c/u3
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r12,r0,0
	mov_s	r15,r13	;4
	mov_s	r14,r3	;4
	cmp_s	r15,r14
	blt_s	.L620
	mov_s	r14,r13	;4
	mov_s	r15,r3	;4
	cmp_s	r14,r15
	bgt_s	.L621
	mov_s	r14,r12	;4
	mov_s	r15,r2	;4
	cmp_s	r14,r15
	blo_s	.L622
	cmp_s	r12,r2
	bhi_s	.L623
	mov_s	r0,1	;3
	b_s	.L619
	.align 4
.L620:
	mov_s	r0,0	;3
	b_s	.L619
	.align 4
.L621:
	mov_s	r0,2	;3
	b_s	.L619
	.align 4
.L622:
	mov_s	r0,0	;3
	b_s	.L619
	.align 4
.L623:
	mov_s	r0,2	;3
.L619:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
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
	exth_s	r2,r0
	tst_s	r2,r2
	bne_s	.L630
	mov_s	r3,16	;3
	b_s	.L626
	.align 4
.L630:
	mov_s	r3,0	;3
	.align 2
.L626:
	lsr_s	r0,r0,r3
	extb_s	r2,r0
	tst_s	r2,r2
	bne_s	.L631
	mov_s	r2,8	;3
	b_s	.L627
	.align 4
.L631:
	mov_s	r2,0	;3
	.align 2
.L627:
	lsr_s	r0,r0,r2
	add_s	r3,r3,r2   ;b,b,h
	tst	r0,((1<<4)-1)<<0
	bne_s	.L632
	mov_s	r2,4	;3
	b_s	.L628
	.align 4
.L632:
	mov_s	r2,0	;3
	.align 2
.L628:
	lsr_s	r0,r0,r2
	add_s	r3,r3,r2   ;b,b,h
	tst	r0,((1<<2)-1)<<0
	bne_s	.L633
	mov_s	r2,2	;3
	b_s	.L629
	.align 4
.L633:
	mov_s	r2,0	;3
	.align 2
.L629:
	lsr_s	r0,r0,r2
	bmsk_s	r0,r0,1
	add_s	r3,r3,r2   ;b,b,h
	bic	r12,1,r0    ;;constraint 6
	lsr_s	r2,r0
	rsub	r2,r2,2
	mpy_s	r2,r2,r12
	add_s	r0,r3,r2   ;a,b,c/u3
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r4,r0,0
	bbit0	r2,5,@.L635
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	mov_s	r3,r5	;4
	lsr	r12,r3,r2
	b_s	.L636
	.align 4
.L635:
	tst_s	r2,r2
	beq_s	.L637
	mov_s	r3,r5	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	lsr	r13,r3,r2
	rsub	r15,r2,32
	asl_s	r3,r3,r15
	mov_s	r14,r4	;4
	lsr_s	r14,r14,r2
	or	r12,r3,r14
	.align 2
.L636:
	vadd2	r0,r12,0
.L637:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	exth_s	r14,r0
	exth_s	r15,r1
	mpy	r3,r14,r15
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	mov_s	r12,r3	;4
	lsr	r2,r3,16
	bmsk_s	r3,r3,15
	mov_s	r12,r3	;4
	lsr_s	r0,r0,16
	mpy_s	r15,r15,r0
	add_s	r2,r2,r15   ;b,b,h
	asl	r15,r2,16
	add_s	r12,r15,r3   ;a,b,c/u3
	lsr_s	r2,r2,16
	mov_s	r13,r2	;4
	mov_s	r3,r12	;4
	lsr	r2,r3,16
	bmsk_s	r3,r3,15
	mov_s	r12,r3	;4
	lsr_s	r1,r1,16
	mpy_s	r14,r14,r1
	add_s	r2,r2,r14   ;b,b,h
	asl	r14,r2,16
	add_s	r12,r14,r3   ;a,b,c/u3
	mov_s	r3,r13	;4
	lsr_s	r2,r2,16
	add_s	r2,r2,r3   ;b,b,h
	mov_s	r13,r2	;4
	mpy_s	r0,r0,r1
	add_s	r0,r0,r2   ;b,b,h
	mov_s	r13,r0	;4
	vadd2	r0,r12,0
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
	std.a	r20,[sp,-8]
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r16,r0,0
	vadd2	r20,r2,0
	mov_s	r18,r16	;4
	mov_s	r19,r20	;4
	mov_s	r1,r20	;4
	mov_s	r0,r16	;4
	bl	@__muldsi3;1
	vadd2	r12,r0,0
	mov_s	r14,r1	;4
	mov_s	r2,r17	;4
	mpy	r2,r2,r19
	mov_s	r3,r21	;4
	mpy	r3,r3,r18
	add_s	r2,r2,r3   ;b,b,h
	add_s	r2,r2,r14   ;b,b,h
	mov_s	r13,r2	;4
	vadd2	r0,r12,0
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
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
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	sub.f	r0,r12,r2
	sbc	r1,r13,r3
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r1	;4
	xor_s	r0,r0,r2
	lsr	r2,r0,16
	xor_s	r0,r0,r2
	lsr	r2,r0,8
	xor_s	r0,r0,r2
	lsr	r2,r0,4
	xor_s	r0,r0,r2
	bmsk_s	r0,r0,3
	asr	r0,27030,r0
	bmsk_s	r0,r0,0
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr	r2,r0,16
	xor_s	r2,r2,r0
	lsr	r3,r2,8
	xor_s	r2,r2,r3
	lsr	r3,r2,4
	xor_s	r2,r2,r3
	and	r0,r2,15
	asr	r0,27030,r0
	bmsk_s	r0,r0,0
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	lsr.f	r15,r1
	rrc	r14,r0
	mov_s	r12,r14	;4
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	and	r2,r12,1431655765
	mov_s	r12,r15	;4
	and	r3,r12,1431655765
	mov_s	r8,0	;4
	mov_s	r9,0	;4
	sub.f	r8,r0,r2
	sbc	r9,r1,r3
	vadd2	r6,r8,0
	asl	r14,r9,30
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	lsr	r2,r8,2
	or_s	r2,r2,r14
	lsr	r3,r9,2
	mov_s	r0,r2	;4
	mov_s	r14,0	;3
	mov_s	r15,0	;3
	and	r14,r0,858993459
	mov_s	r1,r3	;4
	and	r15,r1,858993459
	mov_s	r12,r8	;4
	mov_s	r0,0	;3
	mov_s	r1,0	;3
	and	r0,r12,858993459
	mov_s	r12,r9	;4
	and	r1,r12,858993459
	add.f	r6,r14,r0
	adc	r7,r15,r1
	asl	r14,r7,28
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	lsr	r12,r6,4
	or_s	r12,r12,r14
	lsr	r13,r7,4
	add.f	r4,r12,r6
	adc	r5,r13,r7
	mov_s	r12,r4	;4
	and	r6,r12,252645135
	mov_s	r12,r5	;4
	and	r7,r12,252645135
	mov_s	r2,r6	;4
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	mov_s	r12,r7	;4
	mov_s	r13,0	;3
	add_s	r12,r12,r2   ;b,b,h
	lsr	r2,r12,16
	add_s	r12,r12,r2   ;b,b,h
	lsr	r0,r12,8
	add_s	r0,r0,r12   ;b,b,h
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
	sub_s	r2,r0,r2
	lsr	r3,r2,2
	and	r3,r3,858993459
	and	r2,r2,858993459
	add_s	r2,r2,r3   ;b,b,h
	lsr	r3,r2,4
	add_s	r2,r2,r3   ;b,b,h
	and	r2,r2,252645135
	lsr	r3,r2,16
	add_s	r2,r2,r3   ;b,b,h
	lsr	r0,r2,8
	add_s	r0,r0,r2   ;b,b,h
	bmsk_s	r0,r0,5
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
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
	vadd2	r16,r0,0
	mov_s	r13,r2	;4
	lsr	r18,r13,31
	mov_s	r14,0	;3
	mov_s	r15,1072693248	;13
	.align 2
.L649:
	bbit0	r13,0,@.L647
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L647:
	div	r13,r13,2
	tst_s	r13,r13
	beq_s	.L648
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L649
	.align 4
.L648:
	tst	r18,r18
	beq_s	.L651
	vadd2	r2,r14,0
	mov_s	r0,0	;3
	mov_s	r1,1072693248	;13
	bl	@__divdf3;1
	b_s	.L650
	.align 4
.L651:
	vadd2	r0,r14,0
.L650:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ld.ab	r18,[sp,8]	;23
	j_s	[blink]
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
	mov_s	r14,r0
	mov_s	r15,r1	;4
	lsr	r16,r15,31
	mov_s	r13,0x3f800000 ; 1.0e+0
	.align 2
.L655:
	bbit0	r15,0,@.L653
	mov_s	r1,r14
	mov_s	r0,r13
	bl	@__mulsf3;1
	mov_s	r13,r0
	.align 2
.L653:
	div	r15,r15,2
	tst_s	r15,r15
	beq_s	.L654
	mov_s	r1,r14
	mov_s	r0,r14
	bl	@__mulsf3;1
	mov_s	r14,r0
	b_s	.L655
	.align 4
.L654:
	tst	r16,r16
	beq_s	.L657
	mov_s	r1,r13
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl	@__divsf3;1
	b_s	.L656
	.align 4
.L657:
	mov_s	r0,r13
.L656:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ld.ab	r16,[sp,8]	;23
	j_s	[blink]
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r12,r0,0
	mov_s	r15,r13	;4
	mov_s	r14,r3	;4
	cmp_s	r15,r14
	blo_s	.L660
	mov_s	r14,r13	;4
	mov_s	r15,r3	;4
	cmp_s	r14,r15
	bhi_s	.L661
	mov_s	r14,r12	;4
	mov_s	r15,r2	;4
	cmp_s	r14,r15
	blo_s	.L662
	cmp_s	r12,r2
	bhi_s	.L663
	mov_s	r0,1	;3
	b_s	.L659
	.align 4
.L660:
	mov_s	r0,0	;3
	b_s	.L659
	.align 4
.L661:
	mov_s	r0,2	;3
	b_s	.L659
	.align 4
.L662:
	mov_s	r0,0	;3
	b_s	.L659
	.align 4
.L663:
	mov_s	r0,2	;3
.L659:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
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
