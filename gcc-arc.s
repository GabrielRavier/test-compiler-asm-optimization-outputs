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
	stb.a r12,[r2,-1]
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
	stb.a r13,[r12,1]
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
	mov_s	r12,r0	;4
	ldb.a r13,[r1,1]
	brne.d	r2,r13,.L11
	stb.ab	r13,[r0,1]
	.align 2
.L10:
	breq_s	r3,0,.L13
	b.d	.L12
	add_s	r0,r12,1   ;R0/R1,b,u6
	.align 4
.L13:
	mov_s	r0,0	;3
.L12:
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
	mov_s	r3,r0	;4
	ldb.ab	r12,[r0,1]
	brne	r1,r12,.L17
	.align 2
.L16:
	breq_s	r2,0,.L19
	b.d	.L18
	mov_s	r0,r3	;4
	.align 4
.L19:
	mov_s	r0,0	;3
.L18:
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
	mov_s	r3,r1	;4
	.align 4
.L23:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r3,r1	;4
	.align 2
.L26:
	breq.d	r2,0,.L22
	mov_s	r12,r0	;4
	ldb.ab	r14,[r0,1]
	ldb.ab	r13,[r1,1]
	breq	r14,r13,.L23
	.align 2
.L22:
	breq_s	r2,0,.L25
	ldb_s	r0,[r12]
	ldb_s	r2,[r3]
	b.d	.L24
	sub_s	r0,r0,r2
	.align 4
.L25:
	mov_s	r0,0	;3
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
	stb.a r12,[r3,1]
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
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	extb_s	r1,r1
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L31
	mov_s	r12,r0	;4
	.align 4
.L33:
	ldb.a r13,[r2,-1]
	brne	r1,r13,.L31
	b.d	.L32
	add_s	r0,r0,r3   ;b,b,h
	.align 4
.L31:
	not_s	r3,r0
	brne.d	r2,r12,.L33
	add_s	r3,r3,r2   ;b,b,h
	mov_s	r0,0	;3
.L32:
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
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
	ldb.a r3,[r1,1]
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
	mov_s	r2,r0	;4
	ldb.ab	r3,[r0,1]
	breq	r1,r3,.L48
	ldb	r2,[r0,-1]
	brne_s	r2,0,.L47
	b.d	.L46
	mov_s	r0,0	;3
	.align 4
.L48:
	mov_s	r0,r2	;4
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
	mov_s	r2,r1	;4
	mov_s	r3,r0	;4
	ldb.ab	r13,[r0,1]
	ldb.ab	r12,[r1,1]
	brne	r13,r12,.L51
	ldb	r12,[r0,-1]
	brne_s	r12,0,.L52
	.align 2
.L51:
	ldb_s	r0,[r3]
	ldb_s	r2,[r2]
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
	mov_s	r3,r2	;4
	ldb.ab	r12,[r2,1]
	brne_s	r12,0,.L55
	sub_s	r0,r3,r0
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
	breq_s	r2,0,.L61
	add_s	r2,r2,r0   ;b,b,h
	.align 2
.L60:
	mov_s	r12,r0	;4
	ldb.ab	r13,[r0,1]
	breq.d	r13,0,.L59
	mov_s	r3,r1	;4
	ldb_s	r13,[r1]
	breq_s	r13,0,.L59
	breq	r0,r2,.L59
	ldb	r14,[r0,-1]
	ldb.ab	r13,[r1,1]
	breq	r14,r13,.L60
	.align 2
.L59:
	ldb_s	r0,[r12]
	ldb_s	r2,[r3]
	b.d	.L58
	sub_s	r0,r0,r2
	.align 4
.L61:
	mov_s	r0,0	;3
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
	mov_s	r3,r0	;4
	.align 4
.L65:
	ldb_s	r12,[r3,1]
	stb_s	r12,[r1]
	ldb.ab	r12,[r3,2]
	stb_s	r12,[r1,1]
	add_s	r1,r1,2   ;b,b,h
	.align 2
.L64:
	add_s	r12,r0,r2   ;a,b,c/u3
	sub_s	r12,r12,r3
	brgt	r12,1,.L65
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
	breq	r0,32,.L70
	brne	r0,9,.L71
	b.d	.L69
	mov_s	r0,1	;3
	.align 4
.L70:
	b.d	.L69
	mov_s	r0,1	;3
	.align 4
.L71:
	mov_s	r0,0	;3
.L69:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brls	r0,31,.L74
	brne	r0,127,.L75
	b.d	.L73
	mov_s	r0,1	;3
	.align 4
.L74:
	b.d	.L73
	mov_s	r0,1	;3
	.align 4
.L75:
	mov_s	r0,0	;3
.L73:
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
	breq	r0,32,.L82
	sub	r0,r0,9 ;a,b,u6
	brhi	r0,4,.L83
	b.d	.L81
	mov_s	r0,1	;3
	.align 4
.L82:
	b.d	.L81
	mov_s	r0,1	;3
	.align 4
.L83:
	mov_s	r0,0	;3
.L81:
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
	brls	r0,31,.L87
	add	r2,r0,-127     ;a,b,limm
	brls	r2,32,.L88
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L89
	add_s	r0,r0,-65529   ;b,b,limm
	brhi	r0,2,.L90
	b.d	.L86
	mov_s	r0,1	;3
	.align 4
.L87:
	b.d	.L86
	mov_s	r0,1	;3
	.align 4
.L88:
	b.d	.L86
	mov_s	r0,1	;3
	.align 4
.L89:
	b.d	.L86
	mov_s	r0,1	;3
	.align 4
.L90:
	mov_s	r0,0	;3
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
	brls	r0,8231,.L95
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L96
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L97
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L98
	bic.f	0,65534,r0
	beq_s	.L99
	b.d	.L94
	mov_s	r0,1	;3
	.align 4
.L95:
	b.d	.L94
	mov_s	r0,1	;3
	.align 4
.L96:
	b.d	.L94
	mov_s	r0,1	;3
	.align 4
.L97:
	b.d	.L94
	mov_s	r0,1	;3
	.align 4
.L98:
	b.d	.L94
	mov_s	r0,0	;3
	.align 4
.L99:
	mov_s	r0,0	;3
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
	brls	r2,9,.L102
	bset_s	r0,r0,5
	add	r0,r0,-97 ;b,b,s12
	brhi	r0,5,.L103
	b.d	.L101
	mov_s	r0,1	;3
	.align 4
.L102:
	b.d	.L101
	mov_s	r0,1	;3
	.align 4
.L103:
	mov_s	r0,0	;3
.L101:
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
	vadd2	r16,r0,0
	vadd2	r14,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L108
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L109
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__gtdf2;1
	brle	r0,0,.L112
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__subdf3;1
	b_s	.L106
	.align 4
.L108:
	vadd2	r0,r16,0
	b_s	.L106
	.align 4
.L109:
	vadd2	r0,r14,0
	b_s	.L106
	.align 4
.L112:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
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
	mov_s	r14,r0
	mov_s	r13,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	brne_s	r0,0,.L116
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	brne_s	r0,0,.L117
	mov_s	r1,r13
	bl.d	@__gtsf2;1
	mov_s	r0,r14
	brle	r0,0,.L120
	mov_s	r1,r13
	bl.d	@__subsf3;1
	mov_s	r0,r14
	b_s	.L114
	.align 4
.L116:
	b.d	.L114
	mov_s	r0,r14
	.align 4
.L117:
	b.d	.L114
	mov_s	r0,r13
	.align 4
.L120:
	mov_s	r0,0x00000000
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
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L125
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L126
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L123
	brge	r15,0,.L127
	vadd2	r0,r16,0
	b_s	.L122
	.align 4
.L123:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	brge	r0,0,.L130
	vadd2	r0,r16,0
	b_s	.L122
	.align 4
.L125:
	vadd2	r0,r16,0
	b_s	.L122
	.align 4
.L126:
	vadd2	r0,r14,0
	b_s	.L122
	.align 4
.L127:
	vadd2	r0,r14,0
	b_s	.L122
	.align 4
.L130:
	vadd2	r0,r14,0
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
	mov_s	r13,r0
	mov_s	r14,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	brne_s	r0,0,.L135
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	brne_s	r0,0,.L136
	mov_s	r3,r13	;4
	bmskn	r3,r3,30
	mov_s	r2,r14	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L133
	brge	r13,0,.L137
	b.d	.L132
	mov_s	r0,r14
	.align 4
.L133:
	mov_s	r1,r14
	bl.d	@__ltsf2;1
	mov_s	r0,r13
	brge	r0,0,.L140
	b.d	.L132
	mov_s	r0,r14
	.align 4
.L135:
	b.d	.L132
	mov_s	r0,r14
	.align 4
.L136:
	b.d	.L132
	mov_s	r0,r13
	.align 4
.L137:
	b.d	.L132
	mov_s	r0,r13
	.align 4
.L140:
	mov_s	r0,r13
.L132:
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
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L145
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L146
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L143
	brge	r15,0,.L147
	vadd2	r0,r16,0
	b_s	.L142
	.align 4
.L143:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	brge	r0,0,.L150
	vadd2	r0,r16,0
	b_s	.L142
	.align 4
.L145:
	vadd2	r0,r16,0
	b_s	.L142
	.align 4
.L146:
	vadd2	r0,r14,0
	b_s	.L142
	.align 4
.L147:
	vadd2	r0,r14,0
	b_s	.L142
	.align 4
.L150:
	vadd2	r0,r14,0
.L142:
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
	brne_s	r0,0,.L155
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L156
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L153
	mov_s	r2,r17	;4
	brge	r2,0,.L157
	vadd2	r0,r16,0
	b_s	.L152
	.align 4
.L153:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	brge	r0,0,.L160
	vadd2	r0,r16,0
	b_s	.L152
	.align 4
.L155:
	vadd2	r0,r14,0
	b_s	.L152
	.align 4
.L156:
	vadd2	r0,r16,0
	b_s	.L152
	.align 4
.L157:
	vadd2	r0,r14,0
	b_s	.L152
	.align 4
.L160:
	vadd2	r0,r14,0
.L152:
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
	brne_s	r0,0,.L165
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	brne_s	r0,0,.L166
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L163
	brge	r14,0,.L167
	b.d	.L162
	mov_s	r0,r14
	.align 4
.L163:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	brge	r0,0,.L170
	b.d	.L162
	mov_s	r0,r14
	.align 4
.L165:
	b.d	.L162
	mov_s	r0,r13
	.align 4
.L166:
	b.d	.L162
	mov_s	r0,r14
	.align 4
.L167:
	b.d	.L162
	mov_s	r0,r13
	.align 4
.L170:
	mov_s	r0,r13
.L162:
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
	brne_s	r0,0,.L175
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L176
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L173
	mov_s	r2,r17	;4
	brge	r2,0,.L177
	vadd2	r0,r16,0
	b_s	.L172
	.align 4
.L173:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	brge	r0,0,.L180
	vadd2	r0,r16,0
	b_s	.L172
	.align 4
.L175:
	vadd2	r0,r14,0
	b_s	.L172
	.align 4
.L176:
	vadd2	r0,r16,0
	b_s	.L172
	.align 4
.L177:
	vadd2	r0,r14,0
	b_s	.L172
	.align 4
.L180:
	vadd2	r0,r14,0
.L172:
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
	b_s	.L182
	.align 4
.L183:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	stb.ab	r3,[r2,1]
	lsr_s	r0,r0,6
	.align 2
.L182:
	brne_s	r0,0,.L183
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
	brne_s	r1,0,.L187
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	b_s	.L186
	.align 4
.L187:
	ld_s	r2,[r1]		;15
	st_s	r2,[r0]		;16
	st_s	r1,[r0,4]		;16
	st_s	r0,[r1]		;16
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L186
	st_s	r0,[r2,4]		;16
	.align 2
.L186:
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
	breq_s	r2,0,.L190
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L190:
	ld_s	r2,[r0,4]		;15
	breq_s	r2,0,.L189
	ld_s	r3,[r0]		;15
	st_s	r3,[r2]		;16
	.align 2
.L189:
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
	mov_s	r13,r1	;4
	mov_s	r18,r2	;4
	mov_s	r14,r3	;4
	mov_s	r20,r4	;4
	ld	r16,[r2]	;23
	mov_s	r19,r1	;4
	b.d	.L193
	mov_s	r15,0	;3
	.align 4
.L196:
	mov_s	r1,r19	;4
	jl.d	[r20]
	mov_s	r0,r17	;4
	brne.d	r0,0,.L194
	add	r19,r19,r14   ;(p)b,b,c/u6
	mpy_s	r15,r15,r14
	b.d	.L195
	add_s	r0,r13,r15   ;a,b,c/u3
	.align 4
.L194:
	add_s	r15,r15,1   ;b,b,h
	.align 2
.L193:
	brne	r15,r16,.L196
	add	r2,r16,1 ;a,b,c/u6
	st	r2,[r18]	;26
	mpy	r16,r16,r14
	mov_s	r2,r14	;4
	mov_s	r1,r17	;4
	bl.d	@memcpy;1
	add	r0,r13,r16 ;a,b,c/u6
.L195:
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
	mov_s	r18,r0	;4
	mov_s	r13,r1	;4
	mov_s	r15,r3	;4
	mov_s	r17,r4	;4
	ld	r19,[r2]	;23
	mov_s	r16,r1	;4
	b.d	.L198
	mov_s	r14,0	;3
	.align 4
.L201:
	mov_s	r1,r16	;4
	jl.d	[r17]
	mov_s	r0,r18	;4
	brne.d	r0,0,.L199
	add	r16,r16,r15   ;(p)b,b,c/u6
	mpy_s	r14,r14,r15
	b.d	.L200
	add_s	r0,r13,r14   ;a,b,c/u3
	.align 4
.L199:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L198:
	brne	r14,r19,.L201
	mov_s	r0,0	;3
.L200:
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
.L204:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L204
	ldb_s	r2,[r13]
	breq	r2,43,.L210
	brne	r2,45,.L211
	b.d	.L205
	mov_s	r2,1	;3
	.align 4
.L210:
	mov_s	r2,0	;3
	.align 2
.L205:
	b.d	.L206
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L211:
	mov_s	r2,0	;3
	.align 2
.L206:
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L207
	mov_s	r0,0	;3
	.align 4
.L208:
	mpy	r0,r0,10
	ldb_s	r3,[r13]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L207:
	ldb.a r3,[r13,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L208
	brne_s	r2,0,.L209
	neg_s	r0,r0
.L209:
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
.L215:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L215
	ldb_s	r2,[r13]
	breq	r2,43,.L221
	brne	r2,45,.L222
	b.d	.L216
	mov_s	r2,1	;3
	.align 4
.L221:
	mov_s	r2,0	;3
	.align 2
.L216:
	b.d	.L217
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L222:
	mov_s	r2,0	;3
	.align 2
.L217:
	add_s	r13,r13,-1   ;h,h,s3
	b.d	.L218
	mov_s	r0,0	;3
	.align 4
.L219:
	mpy	r0,r0,10
	ldb_s	r3,[r13]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L218:
	ldb.a r3,[r13,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L219
	brne_s	r2,0,.L220
	neg_s	r0,r0
.L220:
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
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r14,r0	;4
	.align 2
.L226:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L226
	ldb_s	r2,[r13]
	breq	r2,43,.L232
	brne	r2,45,.L233
	b.d	.L227
	mov_s	r1,1	;3
	.align 4
.L232:
	mov_s	r1,0	;3
	.align 2
.L227:
	b.d	.L228
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L233:
	mov_s	r1,0	;3
	.align 2
.L228:
	add_s	r13,r13,-1   ;h,h,s3
	mov_s	r2,0	;3
	b.d	.L229
	mov_s	r3,0	;3
	.align 4
.L230:
	mpy	r12,r3,10
	mpydu	r14,r2,10
	add_s	r15,r15,r12   ;b,b,h
	ldb_s	r12,[r13]
	sub3	r12,r12,6 ;a,b,u6
	asr	r17,r12,31
	sub.f	r2,r14,r12
	sbc	r3,r15,r17
	.align 2
.L229:
	ldb.a r12,[r13,1]
	sub3	r12,r12,6 ;a,b,u6
	brls	r12,9,.L230
	brne_s	r1,0,.L234
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	sub.f	r0,r12,r2
	b.d	.L231
	sbc	r1,r13,r3
	.align 4
.L234:
	vadd2	r0,r2,0
.L231:
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
	b.d	.L237
	mov_s	r16,r4	;4
	.align 4
.L241:
	lsr_s	r14,r13
	mpy_s	r14,r14,r15
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	jl.d	[r16]
	mov_s	r0,r18	;4
	mov.f	r2,r0
	bp	.L238
	b.d	.L237
	lsr_s	r13,r13
	.align 4
.L238:
	brle	r2,0,.L242
	add	r17,r14,r15 ;a,b,c/u6
	lsr_s	r2,r13
	add_s	r13,r13,-1   ;h,h,s3
	sub_s	r13,r13,r2
	.align 2
.L237:
	brne_s	r13,0,.L241
	b.d	.L240
	mov_s	r0,0	;3
	.align 4
.L242:
	mov_s	r0,r14	;4
.L240:
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
	b.d	.L244
	mov_s	r15,r1	;4
	.align 4
.L247:
	asr_s	r13,r14,1
	mpy	r13,r13,r16
	add_s	r13,r13,r15   ;b,b,h
	mov_s	r2,r17	;4
	mov_s	r1,r13	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L248
	brle	r0,0,.L246
	add	r15,r13,r16 ;a,b,c/u6
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L246:
	asr_s	r14,r14,1
	.align 2
.L244:
	brne_s	r14,0,.L247
	b.d	.L245
	mov_s	r0,0	;3
	.align 4
.L248:
	mov_s	r0,r13	;4
.L245:
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
.L258:
	mov_s	r2,r0	;4
	ld.ab	r3,[r0,4]	;23
	breq_s	r3,0,.L257
	ld	r3,[r0,-4]	;23
	brne	r1,r3,.L258
	.align 2
.L257:
	ld_s	r3,[r2]		;15
	breq_s	r3,0,.L260
	b.d	.L259
	mov_s	r0,r2	;4
	.align 4
.L260:
	mov_s	r0,0	;3
.L259:
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
.L264:
	mov_s	r2,r1	;4
	mov_s	r3,r0	;4
	ld.ab	r13,[r0,4]	;23
	ld.ab	r12,[r1,4]	;23
	brne	r13,r12,.L263
	ld	r12,[r0,-4]	;23
	breq_s	r12,0,.L263
	ld	r12,[r1,-4]	;23
	brne_s	r12,0,.L264
	.align 2
.L263:
	ld_s	r13,[r3]		;15
	ld_s	r12,[r2]		;15
	brlt	r13,r12,.L266
	mov_s	r0,r13	;4
	b.d	.L265
	setgt	r0,r0,r12
	.align 4
.L266:
	mov_s	r0,-1	;4
.L265:
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
	sub2	r2,r0,1 ;a,b,u6
	.align 2
.L269:
	ld.ab	r3,[r1,4]	;23
	brne.d	r3,0,.L269
	st.a r3,[r2,4]
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r3,r0	;4
	.align 2
.L272:
	mov_s	r2,r3	;4
	ld.ab	r12,[r3,4]	;23
	brne_s	r12,0,.L272
	sub_s	r0,r2,r0
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
	b.d	.L281
	mov_s	r3,r1	;4
	.align 4
.L277:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r3,r1	;4
	.align 2
.L281:
	breq.d	r2,0,.L276
	mov_s	r12,r0	;4
	ld_s	r14,[r0]		;15
	ld_s	r13,[r1]		;15
	brne	r14,r13,.L276
	ld.ab	r13,[r0,4]	;23
	breq_s	r13,0,.L276
	ld.ab	r13,[r1,4]	;23
	brne_s	r13,0,.L277
	.align 2
.L276:
	breq_s	r2,0,.L279
	ld_s	r13,[r12]		;15
	ld_s	r2,[r3]		;15
	brlt	r13,r2,.L280
	mov_s	r0,r13	;4
	b.d	.L278
	setgt	r0,r0,r2
	.align 4
.L279:
	b.d	.L278
	mov_s	r0,0	;3
	.align 4
.L280:
	mov_s	r0,-1	;4
.L278:
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
	b.d	.L288
	mov_s	r3,r0	;4
	.align 4
.L285:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r3,r0	;4
	.align 2
.L288:
	breq_s	r2,0,.L284
	ld.ab	r12,[r0,4]	;23
	brne	r1,r12,.L285
	.align 2
.L284:
	breq_s	r2,0,.L287
	b.d	.L286
	mov_s	r0,r3	;4
	.align 4
.L287:
	mov_s	r0,0	;3
.L286:
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
	b.d	.L296
	mov_s	r3,r1	;4
	.align 4
.L292:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r3,r1	;4
	.align 2
.L296:
	breq.d	r2,0,.L291
	mov_s	r12,r0	;4
	ld.ab	r14,[r0,4]	;23
	ld.ab	r13,[r1,4]	;23
	breq	r14,r13,.L292
	.align 2
.L291:
	breq_s	r2,0,.L294
	ld_s	r13,[r12]		;15
	ld_s	r2,[r3]		;15
	brlt	r13,r2,.L295
	mov_s	r0,r13	;4
	b.d	.L293
	setgt	r0,r0,r2
	.align 4
.L294:
	b.d	.L293
	mov_s	r0,0	;3
	.align 4
.L295:
	mov_s	r0,-1	;4
.L293:
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
	b.d	.L298
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L299:
	ld.ab	r12,[r1,4]	;23
	st.a r12,[r3,4]
	.align 2
.L298:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L299
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	breq	r0,r1,.L301
	sub_s	r3,r0,r1
	asl_s	r12,r2,2
	brlo	r3,r12,.L302
	b.d	.L303
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L302:
	add2_s	r1,r1,r2
	add2	r2,-4,r2
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L304
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L305:
	ld.a r12,[r1,-4]
	st.ab	r12,[r2,-4]	;26
	.align 2
.L304:
	brne	r2,r3,.L305
	b_s	.L301
	.align 4
.L306:
	ld.ab	r12,[r1,4]	;23
	st.a r12,[r3,4]
	.align 2
.L303:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L306
.L301:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L308
	mov_s	r3,r0	;4
	.align 4
.L309:
	st.ab	r1,[r3,4]	;26
	.align 2
.L308:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L309
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brhs	r0,r1,.L311
	add_s	r3,r0,r2   ;a,b,c/u3
	b.d	.L312
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L313:
	ldb.a	r2,[r3,-1]
	stb.a r2,[r1,-1]
	.align 2
.L312:
	brne	r3,r0,.L313
	b_s	.L310
	.align 4
.L311:
	breq	r0,r1,.L310
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L315
	mov_s	r3,r0	;4
	.align 4
.L316:
	ldb.ab	r12,[r3,1]
	stb.a r12,[r1,1]
	.align 2
.L315:
	brne	r3,r2,.L316
	.align 2
.L310:
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
	b.d	.L331
	mov_s	r2,0	;3
	.align 4
.L334:
	bbit0	r0,r2,@.L332
	b.d	.L333
	add_s	r0,r2,1   ;R0/R1,b,u6
	.align 4
.L332:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L331:
	brne	r2,32,.L334
	mov_s	r0,0	;3
.L333:
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
	beq_s	.L339
	b.d	.L337
	mov_s	r0,1	;3
	.align 4
.L338:
	asr_s	r2,r2,1
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L337:
	bbit0	r2,0,@.L338
	b_s	.L336
	.align 4
.L339:
	mov_s	r0,0	;3
.L336:
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
	brlt	r0,0,.L343
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	brle	r0,0,.L346
	b.d	.L341
	mov_s	r0,1	;3
	.align 4
.L343:
	b.d	.L341
	mov_s	r0,1	;3
	.align 4
.L346:
	mov_s	r0,0	;3
.L341:
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
	brlt	r0,0,.L350
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	brle	r0,0,.L353
	b.d	.L348
	mov_s	r0,1	;3
	.align 4
.L350:
	b.d	.L348
	mov_s	r0,1	;3
	.align 4
.L353:
	mov_s	r0,0	;3
.L348:
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
	brlt	r0,0,.L357
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	brle	r0,0,.L360
	b.d	.L355
	mov_s	r0,1	;3
	.align 4
.L357:
	b.d	.L355
	mov_s	r0,1	;3
	.align 4
.L360:
	mov_s	r0,0	;3
.L355:
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
	mov_s	r13,r0
	mov_s	r15,r1	;4
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	brne_s	r0,0,.L363
	mov_s	r1,r13
	bl.d	@__addsf3;1
	mov_s	r0,r13
	mov_s	r1,r0
	bl.d	@__nesf2;1
	mov_s	r0,r13
	breq_s	r0,0,.L363
	brge	r15,0,.L368
	mov_s	r14,0x3f000000 ; 5.0e-1
	b_s	.L367
	.align 4
.L368:
	mov_s	r14,0x40000000 ; 2.0e+0
	.align 2
.L367:
	bbit0	r15,0,@.L366
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L366:
	div	r15,r15,2
	breq_s	r15,0,.L363
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	b.d	.L367
	mov_s	r14,r0
	.align 4
.L363:
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
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L371
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r14,0
	bl	@__nedf2;1
	breq_s	r0,0,.L371
	brge	r13,0,.L376
	mov_s	r17,1071644672	;13
	b.d	.L375
	mov_s	r16,0	;4
	.align 4
.L376:
	mov_s	r16,0	;4
	mov_s	r17,1073741824	;13
	.align 2
.L375:
	bbit0	r13,0,@.L374
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L374:
	div	r13,r13,2
	breq_s	r13,0,.L371
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L375
	.align 4
.L371:
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
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne	r0,0,.L379
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r14,0
	bl	@__nedf2;1
	breq_s	r0,0,.L379
	brge	r13,0,.L384
	mov_s	r17,1071644672	;13
	b.d	.L383
	mov_s	r16,0	;4
	.align 4
.L384:
	mov_s	r16,0	;4
	mov_s	r17,1073741824	;13
	.align 2
.L383:
	bbit0	r13,0,@.L382
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L382:
	div	r13,r13,2
	breq_s	r13,0,.L379
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L383
	.align 4
.L379:
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
	b.d	.L387
	mov_s	r3,r0	;4
	.align 4
.L388:
	ldb.ab	r12,[r1,1]
	ldb.ab	r13,[r3,1]
	xor_s	r12,r12,r13
	stb	r12,[r3,-1]
	.align 2
.L387:
	brne	r1,r2,.L388
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
	mov_s	r13,r1	;4
	bl.d	@strlen;1
	mov_s	r14,r2	;4
	sub	r1,r13,1 ;a,b,u6
	b.d	.L390
	add_s	r2,r15,r0   ;a,b,c/u3
	.align 4
.L392:
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L390:
	breq.d	r14,0,.L391
	mov_s	r12,r2	;4
	ldb.a r3,[r1,1]
	brne.d	r3,0,.L392
	stb.ab	r3,[r2,1]
	.align 2
.L391:
	brne_s	r14,0,.L393
	stb	0,[r12]
	.align 2
.L393:
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
	sub	r3,r0,1 ;a,b,u6
	add_s	r1,r1,r0   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	.align 2
.L396:
	rsub	r0,r2,1
	breq.d	r3,r1,.L395
	add_s	r0,r0,r3   ;b,b,h
	ldb.a r12,[r3,1]
	brne_s	r12,0,.L396
.L395:
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
	b.d	.L405
	mov_s	r2,r0	;4
	.align 4
.L401:
	ldb_s	r13,[r3]
	ldb	r12,[r0,-1]
	breq	r13,r12,.L403
	.align 2
.L402:
	ldb.a r12,[r3,1]
	brne_s	r12,0,.L401
	mov_s	r2,r0	;4
	.align 2
.L405:
	ldb.ab	r3,[r0,1]
	breq_s	r3,0,.L404
	b.d	.L402
	sub	r3,r1,1 ;a,b,u6
	.align 4
.L403:
	b.d	.L400
	mov_s	r0,r2	;4
	.align 4
.L404:
	mov_s	r0,0	;3
.L400:
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
.L408:
	mov_s	r3,r2	;4
	ldb.ab	r12,[r2,1]
	brne	r1,r12,.L407
	mov_s	r0,r3	;4
	.align 2
.L407:
	ldb	r3,[r2,-1]
	brne_s	r3,0,.L408
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
	beq_s	.L415
	b.d	.L413
	ldb	r16,[r14]
	.align 4
.L414:
	mov_s	r2,r15	;4
	mov_s	r1,r14	;4
	bl.d	@strncmp;1
	mov_s	r0,r13	;4
	breq_s	r0,0,.L416
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L413:
	mov_s	r1,r16	;4
	bl.d	@strchr;1
	mov_s	r0,r13	;4
	mov.f	r13,r0
	bne_s	.L414
	b_s	.L412
	.align 4
.L415:
	b.d	.L412
	mov_s	r0,r13	;4
	.align 4
.L416:
	mov_s	r0,r13	;4
.L412:
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
	brge	r0,0,.L418
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brgt	r0,0,.L420
	.align 2
.L418:
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L428
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brge	r0,0,.L429
	.align 2
.L420:
	mov_s	r0,r14	;4
	b.d	.L421
	bxor	r1,r15,31
	.align 4
.L428:
	vadd2	r0,r14,0
	b_s	.L421
	.align 4
.L429:
	vadd2	r0,r14,0
.L421:
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
	mov_s	r16,r2	;4
	mov_s	r14,r3	;4
	sub	r17,r1,r3
	breq.d	r3,0,.L431
	add	r17,r17,r0   ;(p)b,b,c/u6
	brlo	r1,r3,.L435
	b.d	.L437
	mov_s	r15,r0	;4
	.align 4
.L433:
	ldb.ab	r3,[r15,1]
	ldb	r2,[r16]
	brne	r3,r2,.L437
	sub	r2,r14,1 ;a,b,u6
	add	r1,r16,1 ;a,b,c/u6
	bl.d	@memcmp;1
	mov_s	r0,r15	;4
	breq_s	r0,0,.L436
	.align 2
.L437:
	brls.d	r15,r17,.L433
	mov_s	r13,r15	;4
	b.d	.L431
	mov_s	r0,0	;3
	.align 4
.L435:
	b.d	.L431
	mov_s	r0,0	;3
	.align 4
.L436:
	mov_s	r0,r13	;4
.L431:
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
	brge	r0,0,.L456
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b.d	.L440
	mov_s	r17,1	;4
	.align 4
.L456:
	mov_s	r17,0	;4
	.align 2
.L440:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L451
	b_s	.L459
	.align 4
.L444:
	add_s	r13,r13,1   ;b,b,h
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	mov_s	r2,0	;3
	vadd2	r14,r0,0
	b_s	.L442
	.align 4
.L451:
	mov_s	r13,0	;3
	.align 2
.L442:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L444
	b.d	.L460
	st	r13,[r16]	;26
	.align 4
.L459:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brge	r0,0,.L458
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	brne_s	r0,0,.L453
	b.d	.L445
	mov_s	r13,0	;3
	.align 4
.L448:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	b_s	.L447
	.align 4
.L453:
	mov_s	r13,0	;3
	.align 2
.L447:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L448
	b.d	.L460
	st	r13,[r16]	;26
	.align 4
.L458:
	mov_s	r13,0	;3
	.align 2
.L445:
	st	r13,[r16]	;26
	.align 2
.L460:
	breq	r17,0,.L449
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L449:
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
	b.d	.L462
	mov_s	r1,0	;3
	.align 4
.L465:
	and	r14,r12,1
	breq_s	r14,0,.L463
	add.f	r0,r0,r2
	adc	r1,r1,r3
	.align 2
.L463:
	add.f	r2,r2,r2
	adc	r3,r3,r3
	lsr.f	r13,r13
	rrc	r12,r12
	.align 2
.L462:
	or.f	0,r12,r13
	bne_s	.L465
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
	b.d	.L467
	mov_s	r3,1	;3
	.align 4
.L469:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L467:
	brhs	r1,r0,.L474
	breq_s	r3,0,.L475
	brge	r1,0,.L469
	b.d	.L471
	mov_s	r12,0	;3
	.align 4
.L472:
	brlo	r0,r1,.L470
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L470:
	lsr_s	r3,r3
	b.d	.L471
	lsr_s	r1,r1
	.align 4
.L474:
	b.d	.L471
	mov_s	r12,0	;3
	.align 4
.L475:
	mov_s	r12,0	;3
	.align 2
.L471:
	brne_s	r3,0,.L472
	brne_s	r2,0,.L473
	mov_s	r0,r12	;4
.L473:
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
	beq_s	.L479
	asl_s	r0,r0,8
	fls	r0,r0
	b.d	.L478
	rsub	r0,r0,30
	.align 4
.L479:
	mov_s	r0,7	;3
.L478:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brge	r1,0,.L481
	not_s	r0,r0
	not_s	r1,r1
	.align 2
.L481:
	or.f	0,r0,r1
	beq_s	.L487
	breq_s	r1,0,.L485
	fls	r0,r1
	b.d	.L486
	rsub	r0,r0,31
	.align 4
.L485:
	fls	r0,r0
	rsub	r0,r0,63
	.align 2
.L486:
	b.d	.L483
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L487:
	mov_s	r0,63	;3
.L483:
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
	b.d	.L489
	mov_s	r0,0	;3
	.align 4
.L491:
	bbit0	r2,0,@.L490
	add_s	r0,r0,r1   ;b,b,h
	.align 2
.L490:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L489:
	brne_s	r2,0,.L491
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
	lsr	r13,r2,3
	brlo.d	r0,r1,.L493
	bmskn	r3,r2,2
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L494
	.align 2
.L493:
	sub3	r5,r1,1 ;a,b,u6
	sub3	r4,r0,1 ;a,b,u6
	b.d	.L495
	mov_s	r12,0	;3
	.align 4
.L494:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L496
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L497:
	add	r5,r5,8   ;(p)b,b,c/u6
	ldd	r14,[r5]
	add	r4,r4,8   ;(p)b,b,c/u6
	std	r14,[r4]
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L495:
	brne	r12,r13,.L497
	add_s	r3,r3,-1   ;h,h,s3
	add_s	r12,r1,r3   ;a,b,c/u3
	b.d	.L498
	add_s	r0,r0,r3   ;b,b,h
	.align 4
.L499:
	ldb.a r3,[r12,1]
	stb.a r3,[r0,1]
	.align 2
.L498:
	rsub	r3,r1,1
	add_s	r3,r3,r12   ;b,b,h
	brhi	r2,r3,.L499
	b_s	.L492
	.align 4
.L501:
	ldb.a r2,[r3,-1]
	stb.a r2,[r0,-1]
	.align 2
.L496:
	brne	r3,r1,.L501
	.align 2
.L492:
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
	brlo.d	r0,r1,.L503
	lsr_s	r12,r2
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L504
	.align 2
.L503:
	sub1	r3,r1,1 ;a,b,u6
	sub1	r13,r0,1 ;a,b,u6
	b.d	.L505
	add1	r12,r3,r12
	.align 4
.L504:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L506
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L507:
	ldh.x.a r14,[r3,2]
	sth.a r14,[r13,2]
	.align 2
.L505:
	brne	r3,r12,.L507
	bbit0	r2,0,@.L502
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r1,r1,r2   ;b,b,h
	add_s	r0,r0,r2   ;b,b,h
	ldb_s	r2,[r1]
	b.d	.L502
	stb_s	r2,[r0]
	.align 4
.L509:
	ldb.a r2,[r3,-1]
	stb.a r2,[r0,-1]
	.align 2
.L506:
	brne	r3,r1,.L509
	.align 2
.L502:
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
	lsr	r13,r2,2
	brlo.d	r0,r1,.L511
	bmskn	r3,r2,1
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L512
	.align 2
.L511:
	sub2	r12,r1,1 ;a,b,u6
	sub2	r14,r0,1 ;a,b,u6
	b.d	.L513
	add2	r13,r12,r13
	.align 4
.L512:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L514
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L515:
	ld.a r15,[r12,4]
	st.a r15,[r14,4]
	.align 2
.L513:
	brne	r12,r13,.L515
	add_s	r3,r3,-1   ;h,h,s3
	add_s	r12,r1,r3   ;a,b,c/u3
	b.d	.L516
	add_s	r0,r0,r3   ;b,b,h
	.align 4
.L517:
	ldb.a r3,[r12,1]
	stb.a r3,[r0,1]
	.align 2
.L516:
	rsub	r3,r1,1
	add_s	r3,r3,r12   ;b,b,h
	brhi	r2,r3,.L517
	b_s	.L510
	.align 4
.L519:
	ldb.a r2,[r3,-1]
	stb.a r2,[r0,-1]
	.align 2
.L514:
	brne	r3,r1,.L519
	.align 2
.L510:
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
	exth_s	r2,r0
	b.d	.L527
	mov_s	r0,0	;3
	.align 4
.L529:
	rsub	r3,r0,15
	bbit1	r2,r3,@.L528
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L527:
	brne	r0,16,.L529
.L528:
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
	b.d	.L531
	mov_s	r0,0	;3
	.align 4
.L533:
	bbit1	r2,r0,@.L532
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L531:
	brne	r0,16,.L533
.L532:
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
	brlt	r0,0,.L539
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L537
	.align 4
.L539:
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L537:
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
	b.d	.L541
	mov_s	r2,0	;3
	.align 4
.L543:
	bbit0	r3,r2,@.L542
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L542:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L541:
	brne	r2,16,.L543
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
	b.d	.L545
	mov_s	r2,0	;3
	.align 4
.L547:
	bbit0	r3,r2,@.L546
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L546:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L545:
	brne	r2,16,.L547
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
	b.d	.L549
	mov_s	r0,0	;3
	.align 4
.L551:
	bbit0	r2,0,@.L550
	add_s	r0,r0,r1   ;b,b,h
	.align 2
.L550:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L549:
	brne_s	r2,0,.L551
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
	beq_s	.L557
	b.d	.L554
	mov_s	r0,0	;3
	.align 4
.L556:
	bbit0	r1,0,@.L555
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L555:
	asl_s	r2,r2,1
	lsr_s	r1,r1
	.align 2
.L554:
	brne_s	r1,0,.L556
	b_s	.L553
	.align 4
.L557:
	mov_s	r0,0	;3
.L553:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L559
	mov_s	r3,1	;3
	.align 4
.L561:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L559:
	brhs	r1,r0,.L566
	breq_s	r3,0,.L567
	brge	r1,0,.L561
	b.d	.L563
	mov_s	r12,0	;3
	.align 4
.L564:
	brlo	r0,r1,.L562
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L562:
	lsr_s	r3,r3
	b.d	.L563
	lsr_s	r1,r1
	.align 4
.L566:
	b.d	.L563
	mov_s	r12,0	;3
	.align 4
.L567:
	mov_s	r12,0	;3
	.align 2
.L563:
	brne_s	r3,0,.L564
	brne_s	r2,0,.L565
	mov_s	r0,r12	;4
.L565:
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
	brlt	r0,0,.L571
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	brgt	r0,0,.L572
	b.d	.L570
	mov_s	r0,0	;3
	.align 4
.L571:
	b.d	.L570
	mov_s	r0,-1	;4
	.align 4
.L572:
	mov_s	r0,1	;3
.L570:
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
	brlt	r0,0,.L575
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	brgt	r0,0,.L576
	b.d	.L574
	mov_s	r0,0	;3
	.align 4
.L575:
	b.d	.L574
	mov_s	r0,-1	;4
	.align 4
.L576:
	mov_s	r0,1	;3
.L574:
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
	brge	r1,0,.L586
	neg_s	r1,r1
	b.d	.L580
	mov_s	r12,1	;3
	.align 4
.L586:
	mov_s	r12,0	;3
	.align 2
.L580:
	mov_s	r3,33	;3
	b.d	.L581
	mov_s	r2,0	;3
	.align 4
.L584:
	bbit0	r1,0,@.L582
	add_s	r2,r2,r0   ;b,b,h
	.align 2
.L582:
	asl_s	r0,r0,1
	asr_s	r1,r1,1
	.align 2
.L581:
	breq_s	r1,0,.L583
	add_s	r3,r3,-1   ;h,h,s3
	extb.f	r3,r3
	bne_s	.L584
	.align 2
.L583:
	breq_s	r12,0,.L587
	b.d	.L585
	neg_s	r0,r2
	.align 4
.L587:
	mov_s	r0,r2	;4
.L585:
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
	brge	r0,0,.L592
	neg_s	r0,r0
	b.d	.L589
	mov_s	r13,1	;3
	.align 4
.L592:
	mov_s	r13,0	;3
	.align 2
.L589:
	brge	r1,0,.L590
	neg_s	r1,r1
	seteq	r13,r13,0
	.align 2
.L590:
	bl.d	@__udivmodsi4;1
	mov_s	r2,0	;3
	breq_s	r13,0,.L591
	neg_s	r0,r0
.L591:
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
	brge	r0,0,.L597
	neg_s	r0,r0
	b.d	.L594
	mov_s	r13,1	;3
	.align 4
.L597:
	mov_s	r13,0	;3
	.align 2
.L594:
	brge	r1,0,.L595
	neg_s	r1,r1
	.align 2
.L595:
	bl.d	@__udivmodsi4;1
	mov_s	r2,1	;3
	breq_s	r13,0,.L596
	neg_s	r0,r0
.L596:
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
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
	b.d	.L599
	mov_s	r3,1	;3
	.align 4
.L601:
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	exth_s	r3,r3
	.align 2
.L599:
	brhs	r1,r0,.L606
	add.f	r12,r12,-1
	beq_s	.L607
	btst_s	r1,15
	beq_s	.L601
	b.d	.L603
	mov_s	r12,0	;3
	.align 4
.L604:
	brlo	r0,r1,.L602
	sub_s	r0,r0,r1
	exth_s	r0,r0
	or_s	r12,r12,r3
	.align 2
.L602:
	lsr_s	r3,r3
	b.d	.L603
	lsr_s	r1,r1
	.align 4
.L606:
	b.d	.L603
	mov_s	r12,0	;3
	.align 4
.L607:
	mov_s	r12,0	;3
	.align 2
.L603:
	brne_s	r3,0,.L604
	brne_s	r2,0,.L605
	mov_s	r0,r12	;4
.L605:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	b.d	.L610
	mov_s	r3,1	;3
	.align 4
.L612:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L610:
	brhs	r1,r0,.L617
	breq_s	r3,0,.L618
	brge	r1,0,.L612
	b.d	.L614
	mov_s	r12,0	;3
	.align 4
.L615:
	brlo	r0,r1,.L613
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L613:
	lsr_s	r3,r3
	b.d	.L614
	lsr_s	r1,r1
	.align 4
.L617:
	b.d	.L614
	mov_s	r12,0	;3
	.align 4
.L618:
	mov_s	r12,0	;3
	.align 2
.L614:
	brne_s	r3,0,.L615
	brne_s	r2,0,.L616
	mov_s	r0,r12	;4
.L616:
	j_s.d	[blink]
	ld.ab	fp,[sp,4]	;23
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r12,r0,0
	bbit0	r2,5,@.L621
	asl	r1,r12,r2
	b.d	.L623
	mov_s	r0,0	;3
	.align 4
.L621:
	breq_s	r2,0,.L623
	mov_s	r3,r0	;4
	asl_s	r0,r0,r2
	mov_s	r12,r13	;4
	asl_s	r12,r12,r2
	rsub	r2,r2,32
	lsr_s	r3,r3,r2
	or	r1,r3,r12
.L623:
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r4,r0,0
	bbit0	r2,5,@.L626
	asr	r0,r5,r2
	b.d	.L628
	asr	r1,r5,31
	.align 4
.L626:
	breq_s	r2,0,.L628
	mov_s	r3,r5	;4
	asr	r1,r5,r2
	rsub	r13,r2,32
	asl_s	r3,r3,r13
	mov_s	r12,r4	;4
	lsr_s	r12,r12,r2
	or	r0,r3,r12
.L628:
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
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
	brhi	r0,65535,.L637
	b.d	.L633
	mov_s	r3,16	;3
	.align 4
.L637:
	mov_s	r3,0	;3
	.align 2
.L633:
	rsub	r2,r3,16
	lsr_s	r0,r0,r2
	tst	r0,65280
	bne_s	.L638
	b.d	.L634
	mov_s	r2,8	;3
	.align 4
.L638:
	mov_s	r2,0	;3
	.align 2
.L634:
	rsub	r12,r2,8
	lsr_s	r0,r0,r12
	tst	r0,240
	bne.d	.L639
	add_s	r3,r3,r2   ;b,b,h
	b.d	.L635
	mov_s	r2,4	;3
	.align 4
.L639:
	mov_s	r2,0	;3
	.align 2
.L635:
	rsub	r12,r2,4
	lsr_s	r0,r0,r12
	tst	r0,12
	bne.d	.L640
	add_s	r3,r3,r2   ;b,b,h
	b.d	.L636
	mov_s	r2,2	;3
	.align 4
.L640:
	mov_s	r2,0	;3
	.align 2
.L636:
	rsub	r12,r2,2
	lsr_s	r0,r0,r12
	add_s	r3,r3,r2   ;b,b,h
	and	r12,r0,2
	seteq	r12,r12,0
	rsub	r2,r0,2
	mpy	r0,r12,r2
	add_s	r0,r0,r3   ;b,b,h
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
	brlt	r1,r3,.L643
	brgt	r1,r3,.L644
	brlo	r0,r2,.L645
	brhi	r0,r2,.L646
	b.d	.L642
	mov_s	r0,1	;3
	.align 4
.L643:
	b.d	.L642
	mov_s	r0,0	;3
	.align 4
.L644:
	b.d	.L642
	mov_s	r0,2	;3
	.align 4
.L645:
	b.d	.L642
	mov_s	r0,0	;3
	.align 4
.L646:
	mov_s	r0,2	;3
.L642:
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
	exth_s	r2,r0
	brne_s	r2,0,.L653
	b.d	.L649
	mov_s	r3,16	;3
	.align 4
.L653:
	mov_s	r3,0	;3
	.align 2
.L649:
	lsr_s	r0,r0,r3
	extb_s	r2,r0
	brne_s	r2,0,.L654
	b.d	.L650
	mov_s	r2,8	;3
	.align 4
.L654:
	mov_s	r2,0	;3
	.align 2
.L650:
	lsr_s	r0,r0,r2
	tst	r0,((1<<4)-1)<<0
	bne.d	.L655
	add_s	r3,r3,r2   ;b,b,h
	b.d	.L651
	mov_s	r2,4	;3
	.align 4
.L655:
	mov_s	r2,0	;3
	.align 2
.L651:
	lsr_s	r0,r0,r2
	tst	r0,((1<<2)-1)<<0
	bne.d	.L656
	add_s	r3,r3,r2   ;b,b,h
	b.d	.L652
	mov_s	r2,2	;3
	.align 4
.L656:
	mov_s	r2,0	;3
	.align 2
.L652:
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
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r4,r0,0
	bbit0	r2,5,@.L658
	lsr	r0,r5,r2
	b.d	.L660
	mov_s	r1,0	;3
	.align 4
.L658:
	breq_s	r2,0,.L660
	mov_s	r3,r5	;4
	lsr	r1,r5,r2
	rsub	r13,r2,32
	asl_s	r3,r3,r13
	mov_s	r12,r4	;4
	lsr_s	r12,r12,r2
	or	r0,r3,r12
.L660:
	ld.ab	fp,[sp,4]	;23
	j_s.d	[blink]
	pop_s	r13
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
	vadd2	r16,r0,0
	mov_s	r13,r2	;4
	lsr	r18,r2,31
	mov_s	r14,0	;3
	mov_s	r15,1072693248	;13
	.align 2
.L672:
	bbit0	r13,0,@.L670
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L670:
	div	r13,r13,2
	breq_s	r13,0,.L671
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L672
	.align 4
.L671:
	breq	r18,0,.L674
	vadd2	r2,r14,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
	b_s	.L673
	.align 4
.L674:
	vadd2	r0,r14,0
.L673:
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
	mov_s	r14,r0
	mov_s	r15,r1	;4
	lsr	r16,r1,31
	mov_s	r13,0x3f800000 ; 1.0e+0
	.align 2
.L678:
	bbit0	r15,0,@.L676
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L676:
	div	r15,r15,2
	breq_s	r15,0,.L677
	mov_s	r1,r14
	bl.d	@__mulsf3;1
	mov_s	r0,r14
	b.d	.L678
	mov_s	r14,r0
	.align 4
.L677:
	breq	r16,0,.L680
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl.d	@__divsf3;1
	mov_s	r1,r13
	b_s	.L679
	.align 4
.L680:
	mov_s	r0,r13
.L679:
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
	brlo	r1,r3,.L683
	brhi	r1,r3,.L684
	brlo	r0,r2,.L685
	brhi	r0,r2,.L686
	b.d	.L682
	mov_s	r0,1	;3
	.align 4
.L683:
	b.d	.L682
	mov_s	r0,0	;3
	.align 4
.L684:
	b.d	.L682
	mov_s	r0,2	;3
	.align 4
.L685:
	b.d	.L682
	mov_s	r0,0	;3
	.align 4
.L686:
	mov_s	r0,2	;3
.L682:
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
