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
	add_s	r2,r2,r0   ;b,b,h
	b_s	.L3
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
	mov_s	r3,r1	;4
	b_s	.L6
	.align 4
.L7:
	ldb.ab	r13,[r3,1]
	stb.a r13,[r12,1]
	.align 2
.L6:
	brne	r3,r2,.L7
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
	breq_s	r3,0,.L10
	ldb.a r13,[r1,1]
	stb.ab	r13,[r0,1]
	ldb	r13,[r0,-1]
	brne	r2,r13,.L11
	.align 2
.L10:
	breq_s	r3,0,.L13
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
	breq_s	r2,0,.L16
	ldb.ab	r12,[r0,1]
	brne	r1,r12,.L17
	.align 2
.L16:
	breq_s	r2,0,.L19
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
	breq_s	r2,0,.L22
	ldb.ab	r14,[r0,1]
	ldb.ab	r13,[r1,1]
	breq	r14,r13,.L23
	.align 2
.L22:
	breq_s	r2,0,.L25
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
	stb.a r12,[r3,1]
	.align 2
.L27:
	brne	r1,r2,.L28
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
	ldb.a r13,[r2,-1]
	brne	r1,r13,.L30
	add_s	r0,r0,r3   ;b,b,h
	b_s	.L31
	.align 4
.L30:
	not_s	r3,r0
	add_s	r3,r3,r2   ;b,b,h
	brne	r2,r12,.L32
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
	b_s	.L35
	.align 4
.L36:
	stb.ab	r1,[r3,1]
	.align 2
.L35:
	brne	r3,r2,.L36
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
.L38:
	mov_s	r0,r2	;4
	ldb.a r3,[r1,1]
	stb.ab	r3,[r2,1]
	ldb	r3,[r2,-1]
	brne_s	r3,0,.L38
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
.L42:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	breq_s	r3,0,.L41
	ldb	r3,[r2,-1]
	brne	r1,r3,.L42
.L41:
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
.L46:
	mov_s	r2,r0	;4
	ldb.ab	r3,[r0,1]
	breq	r1,r3,.L47
	ldb	r2,[r0,-1]
	brne_s	r2,0,.L46
	mov_s	r0,0	;3
	b_s	.L45
	.align 4
.L47:
	mov_s	r0,r2	;4
.L45:
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
.L51:
	mov_s	r2,r1	;4
	mov_s	r3,r0	;4
	ldb.ab	r13,[r0,1]
	ldb.ab	r12,[r1,1]
	brne	r13,r12,.L50
	ldb	r12,[r0,-1]
	brne_s	r12,0,.L51
	.align 2
.L50:
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
	mov_s	r2,r0	;4
	.align 2
.L54:
	mov_s	r3,r2	;4
	ldb.ab	r12,[r2,1]
	brne_s	r12,0,.L54
	sub_s	r0,r3,r0
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
	breq_s	r2,0,.L60
	add_s	r2,r2,r0   ;b,b,h
	.align 2
.L59:
	mov_s	r3,r1	;4
	mov_s	r12,r0	;4
	ldb.ab	r13,[r0,1]
	breq_s	r13,0,.L58
	ldb_s	r13,[r1]
	breq_s	r13,0,.L58
	breq	r0,r2,.L58
	ldb	r14,[r0,-1]
	ldb.ab	r13,[r1,1]
	breq	r14,r13,.L59
	.align 2
.L58:
	ldb_s	r0,[r12]
	ldb_s	r2,[r3]
	sub_s	r0,r0,r2
	b_s	.L57
	.align 4
.L60:
	mov_s	r0,0	;3
.L57:
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
	b_s	.L63
	.align 4
.L64:
	ldb_s	r12,[r3,1]
	stb_s	r12,[r1]
	ldb.ab	r12,[r3,2]
	stb_s	r12,[r1,1]
	add_s	r1,r1,2   ;b,b,h
	.align 2
.L63:
	add_s	r12,r0,r2   ;a,b,c/u3
	sub_s	r12,r12,r3
	brgt	r12,1,.L64
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
	breq	r0,32,.L69
	brne	r0,9,.L70
	mov_s	r0,1	;3
	b_s	.L68
	.align 4
.L69:
	mov_s	r0,1	;3
	b_s	.L68
	.align 4
.L70:
	mov_s	r0,0	;3
.L68:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brls	r0,31,.L73
	brne	r0,127,.L74
	mov_s	r0,1	;3
	b_s	.L72
	.align 4
.L73:
	mov_s	r0,1	;3
	b_s	.L72
	.align 4
.L74:
	mov_s	r0,0	;3
.L72:
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
	breq	r0,32,.L81
	sub	r0,r0,9 ;a,b,u6
	brhi	r0,4,.L82
	mov_s	r0,1	;3
	b_s	.L80
	.align 4
.L81:
	mov_s	r0,1	;3
	b_s	.L80
	.align 4
.L82:
	mov_s	r0,0	;3
.L80:
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
	brls	r0,31,.L86
	add	r2,r0,-127     ;a,b,limm
	brls	r2,32,.L87
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L88
	add_s	r0,r0,-65529   ;b,b,limm
	brhi	r0,2,.L89
	mov_s	r0,1	;3
	b_s	.L85
	.align 4
.L86:
	mov_s	r0,1	;3
	b_s	.L85
	.align 4
.L87:
	mov_s	r0,1	;3
	b_s	.L85
	.align 4
.L88:
	mov_s	r0,1	;3
	b_s	.L85
	.align 4
.L89:
	mov_s	r0,0	;3
.L85:
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
	brhi	r0,254,.L92
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	seths	r0,r0,33
	b_s	.L93
	.align 4
.L92:
	brls	r0,8231,.L94
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L95
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L96
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L97
	bic.f	0,65534,r0
	beq_s	.L98
	mov_s	r0,1	;3
	b_s	.L93
	.align 4
.L94:
	mov_s	r0,1	;3
	b_s	.L93
	.align 4
.L95:
	mov_s	r0,1	;3
	b_s	.L93
	.align 4
.L96:
	mov_s	r0,1	;3
	b_s	.L93
	.align 4
.L97:
	mov_s	r0,0	;3
	b_s	.L93
	.align 4
.L98:
	mov_s	r0,0	;3
.L93:
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
	brls	r2,9,.L101
	bset_s	r0,r0,5
	add	r0,r0,-97 ;b,b,s12
	brhi	r0,5,.L102
	mov_s	r0,1	;3
	b_s	.L100
	.align 4
.L101:
	mov_s	r0,1	;3
	b_s	.L100
	.align 4
.L102:
	mov_s	r0,0	;3
.L100:
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
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L107
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L108
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__gtdf2;1
	brle	r0,0,.L111
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__subdf3;1
	b_s	.L105
	.align 4
.L107:
	vadd2	r0,r16,0
	b_s	.L105
	.align 4
.L108:
	vadd2	r0,r14,0
	b_s	.L105
	.align 4
.L111:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
.L105:
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
	mov_s	r1,r0
	bl	@__unordsf2;1
	brne_s	r0,0,.L115
	mov_s	r1,r13
	mov_s	r0,r13
	bl	@__unordsf2;1
	brne_s	r0,0,.L116
	mov_s	r1,r13
	mov_s	r0,r14
	bl	@__gtsf2;1
	brle	r0,0,.L119
	mov_s	r1,r13
	mov_s	r0,r14
	bl	@__subsf3;1
	b_s	.L113
	.align 4
.L115:
	mov_s	r0,r14
	b_s	.L113
	.align 4
.L116:
	mov_s	r0,r13
	b_s	.L113
	.align 4
.L119:
	mov_s	r0,0x00000000
.L113:
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
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L124
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L125
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L122
	brge	r15,0,.L126
	vadd2	r0,r16,0
	b_s	.L121
	.align 4
.L122:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	brge	r0,0,.L129
	vadd2	r0,r16,0
	b_s	.L121
	.align 4
.L124:
	vadd2	r0,r16,0
	b_s	.L121
	.align 4
.L125:
	vadd2	r0,r14,0
	b_s	.L121
	.align 4
.L126:
	vadd2	r0,r14,0
	b_s	.L121
	.align 4
.L129:
	vadd2	r0,r14,0
.L121:
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
	mov_s	r1,r0
	bl	@__unordsf2;1
	brne_s	r0,0,.L134
	mov_s	r1,r14
	mov_s	r0,r14
	bl	@__unordsf2;1
	brne_s	r0,0,.L135
	mov_s	r3,r13	;4
	bmskn	r3,r3,30
	mov_s	r2,r14	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L132
	brge	r13,0,.L136
	mov_s	r0,r14
	b_s	.L131
	.align 4
.L132:
	mov_s	r1,r14
	mov_s	r0,r13
	bl	@__ltsf2;1
	brge	r0,0,.L139
	mov_s	r0,r14
	b_s	.L131
	.align 4
.L134:
	mov_s	r0,r14
	b_s	.L131
	.align 4
.L135:
	mov_s	r0,r13
	b_s	.L131
	.align 4
.L136:
	mov_s	r0,r13
	b_s	.L131
	.align 4
.L139:
	mov_s	r0,r13
.L131:
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
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L144
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L145
	mov_s	r3,r15	;4
	bmskn	r3,r3,30
	mov_s	r2,r17	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L142
	brge	r15,0,.L146
	vadd2	r0,r16,0
	b_s	.L141
	.align 4
.L142:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	brge	r0,0,.L149
	vadd2	r0,r16,0
	b_s	.L141
	.align 4
.L144:
	vadd2	r0,r16,0
	b_s	.L141
	.align 4
.L145:
	vadd2	r0,r14,0
	b_s	.L141
	.align 4
.L146:
	vadd2	r0,r14,0
	b_s	.L141
	.align 4
.L149:
	vadd2	r0,r14,0
.L141:
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
	brne_s	r0,0,.L154
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L155
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L152
	mov_s	r2,r17	;4
	brge	r2,0,.L156
	vadd2	r0,r16,0
	b_s	.L151
	.align 4
.L152:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	brge	r0,0,.L159
	vadd2	r0,r16,0
	b_s	.L151
	.align 4
.L154:
	vadd2	r0,r14,0
	b_s	.L151
	.align 4
.L155:
	vadd2	r0,r16,0
	b_s	.L151
	.align 4
.L156:
	vadd2	r0,r14,0
	b_s	.L151
	.align 4
.L159:
	vadd2	r0,r14,0
.L151:
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
	mov_s	r1,r0
	bl	@__unordsf2;1
	brne_s	r0,0,.L164
	mov_s	r1,r13
	mov_s	r0,r13
	bl	@__unordsf2;1
	brne_s	r0,0,.L165
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L162
	brge	r14,0,.L166
	mov_s	r0,r14
	b_s	.L161
	.align 4
.L162:
	mov_s	r1,r13
	mov_s	r0,r14
	bl	@__ltsf2;1
	brge	r0,0,.L169
	mov_s	r0,r14
	b_s	.L161
	.align 4
.L164:
	mov_s	r0,r13
	b_s	.L161
	.align 4
.L165:
	mov_s	r0,r14
	b_s	.L161
	.align 4
.L166:
	mov_s	r0,r13
	b_s	.L161
	.align 4
.L169:
	mov_s	r0,r13
.L161:
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
	vadd2	r2,r0,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L174
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L175
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L172
	mov_s	r2,r17	;4
	brge	r2,0,.L176
	vadd2	r0,r16,0
	b_s	.L171
	.align 4
.L172:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	brge	r0,0,.L179
	vadd2	r0,r16,0
	b_s	.L171
	.align 4
.L174:
	vadd2	r0,r14,0
	b_s	.L171
	.align 4
.L175:
	vadd2	r0,r16,0
	b_s	.L171
	.align 4
.L176:
	vadd2	r0,r14,0
	b_s	.L171
	.align 4
.L179:
	vadd2	r0,r14,0
.L171:
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
	b_s	.L181
	.align 4
.L182:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	stb.ab	r3,[r2,1]
	lsr_s	r0,r0,6
	.align 2
.L181:
	brne_s	r0,0,.L182
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
	lsr_s	r0,r13
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
	brne_s	r1,0,.L186
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	b_s	.L185
	.align 4
.L186:
	ld_s	r2,[r1]		;15
	st_s	r2,[r0]		;16
	st_s	r1,[r0,4]		;16
	st_s	r0,[r1]		;16
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L185
	st_s	r0,[r2,4]		;16
	.align 2
.L185:
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
	breq_s	r2,0,.L189
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L189:
	ld_s	r2,[r0,4]		;15
	breq_s	r2,0,.L188
	ld_s	r3,[r0]		;15
	st_s	r3,[r2]		;16
	.align 2
.L188:
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
	ld	r16,[r2]	;23
	mov_s	r19,r1	;4
	mov_s	r15,0	;3
	b_s	.L192
	.align 4
.L195:
	mov_s	r1,r19	;4
	mov_s	r0,r17	;4
	jl	[r20]
	add	r19,r19,r14   ;(p)b,b,c/u6
	brne_s	r0,0,.L193
	mpy_s	r15,r15,r14
	add_s	r0,r13,r15   ;a,b,c/u3
	b_s	.L194
	.align 4
.L193:
	add_s	r15,r15,1   ;b,b,h
	.align 2
.L192:
	brne	r15,r16,.L195
	add	r2,r16,1 ;a,b,c/u6
	st	r2,[r18]	;26
	mpy	r16,r16,r14
	mov_s	r2,r14	;4
	mov_s	r1,r17	;4
	add	r0,r13,r16 ;a,b,c/u6
	bl	@memcpy;1
.L194:
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
	mov_s	r16,r1	;4
	mov_s	r14,0	;3
	b_s	.L197
	.align 4
.L200:
	mov_s	r1,r16	;4
	mov_s	r0,r18	;4
	jl	[r17]
	add	r16,r16,r15   ;(p)b,b,c/u6
	brne_s	r0,0,.L198
	mpy_s	r14,r14,r15
	add_s	r0,r13,r14   ;a,b,c/u3
	b_s	.L199
	.align 4
.L198:
	add_s	r14,r14,1   ;b,b,h
	.align 2
.L197:
	brne	r14,r19,.L200
	mov_s	r0,0	;3
.L199:
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
.L203:
	mov_s	r13,r14	;4
	ldb.ab	r0,[r14,1]
	bl	@isspace;1
	brne_s	r0,0,.L203
	ldb_s	r2,[r13]
	breq	r2,43,.L209
	brne	r2,45,.L210
	mov_s	r2,1	;3
	b_s	.L204
	.align 4
.L209:
	mov_s	r2,0	;3
	.align 2
.L204:
	add_s	r13,r13,1   ;b,b,h
	b_s	.L205
	.align 4
.L210:
	mov_s	r2,0	;3
	.align 2
.L205:
	add_s	r13,r13,-1   ;h,h,s3
	mov_s	r0,0	;3
	b_s	.L206
	.align 4
.L207:
	mpy	r0,r0,10
	ldb_s	r3,[r13]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L206:
	ldb.a r3,[r13,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L207
	brne_s	r2,0,.L208
	neg_s	r0,r0
.L208:
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
.L214:
	mov_s	r13,r14	;4
	ldb.ab	r0,[r14,1]
	bl	@isspace;1
	brne_s	r0,0,.L214
	ldb_s	r2,[r13]
	breq	r2,43,.L220
	brne	r2,45,.L221
	mov_s	r2,1	;3
	b_s	.L215
	.align 4
.L220:
	mov_s	r2,0	;3
	.align 2
.L215:
	add_s	r13,r13,1   ;b,b,h
	b_s	.L216
	.align 4
.L221:
	mov_s	r2,0	;3
	.align 2
.L216:
	add_s	r13,r13,-1   ;h,h,s3
	mov_s	r0,0	;3
	b_s	.L217
	.align 4
.L218:
	mpy	r0,r0,10
	ldb_s	r3,[r13]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L217:
	ldb.a r3,[r13,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L218
	brne_s	r2,0,.L219
	neg_s	r0,r0
.L219:
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
.L225:
	mov_s	r13,r14	;4
	ldb.ab	r0,[r14,1]
	bl	@isspace;1
	brne_s	r0,0,.L225
	ldb_s	r2,[r13]
	breq	r2,43,.L231
	brne	r2,45,.L232
	mov_s	r1,1	;3
	b_s	.L226
	.align 4
.L231:
	mov_s	r1,0	;3
	.align 2
.L226:
	add_s	r13,r13,1   ;b,b,h
	b_s	.L227
	.align 4
.L232:
	mov_s	r1,0	;3
	.align 2
.L227:
	add_s	r13,r13,-1   ;h,h,s3
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	b_s	.L228
	.align 4
.L229:
	mpy	r12,r3,10
	mpydu	r14,r2,10
	add_s	r15,r15,r12   ;b,b,h
	ldb_s	r12,[r13]
	sub3	r12,r12,6 ;a,b,u6
	asr	r17,r12,31
	sub.f	r2,r14,r12
	sbc	r3,r15,r17
	.align 2
.L228:
	ldb.a r12,[r13,1]
	sub3	r12,r12,6 ;a,b,u6
	brls	r12,9,.L229
	brne_s	r1,0,.L233
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	sub.f	r0,r12,r2
	sbc	r1,r13,r3
	b_s	.L230
	.align 4
.L233:
	vadd2	r0,r2,0
.L230:
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
	b_s	.L236
	.align 4
.L240:
	lsr_s	r14,r13
	mpy_s	r14,r14,r15
	add_s	r14,r14,r17   ;b,b,h
	mov_s	r1,r14	;4
	mov_s	r0,r18	;4
	jl	[r16]
	mov.f	r2,r0
	bp	.L237
	lsr_s	r13,r13
	b_s	.L236
	.align 4
.L237:
	brle	r2,0,.L241
	add	r17,r14,r15 ;a,b,c/u6
	lsr_s	r2,r13
	add_s	r13,r13,-1   ;h,h,s3
	sub_s	r13,r13,r2
	.align 2
.L236:
	brne_s	r13,0,.L240
	mov_s	r0,0	;3
	b_s	.L239
	.align 4
.L241:
	mov_s	r0,r14	;4
.L239:
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
	b_s	.L243
	.align 4
.L246:
	asr_s	r13,r14,1
	mpy	r13,r13,r16
	add_s	r13,r13,r15   ;b,b,h
	mov_s	r2,r17	;4
	mov_s	r1,r13	;4
	mov_s	r0,r19	;4
	jl	[r18]
	breq_s	r0,0,.L247
	brle	r0,0,.L245
	add	r15,r13,r16 ;a,b,c/u6
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L245:
	asr_s	r14,r14,1
	.align 2
.L243:
	brne_s	r14,0,.L246
	mov_s	r0,0	;3
	b_s	.L244
	.align 4
.L247:
	mov_s	r0,r13	;4
.L244:
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
	asr	r2,r1,31
	xor	r12,r2,r0
	xor	r13,r2,r1
	sub.f	r0,r12,r2
	sbc	r1,r13,r2
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
	div	r12,r1,r2
	rem	r1,r1,r2
	st_s	r12,[r0]		;16
	st_s	r1,[r0,4]		;16
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
	asr	r2,r1,31
	xor	r12,r2,r0
	xor	r13,r2,r1
	sub.f	r0,r12,r2
	sbc	r1,r13,r2
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
.L257:
	mov_s	r2,r0	;4
	ld.ab	r3,[r0,4]	;23
	breq_s	r3,0,.L256
	ld	r3,[r0,-4]	;23
	brne	r1,r3,.L257
	.align 2
.L256:
	ld_s	r3,[r2]		;15
	breq_s	r3,0,.L259
	mov_s	r0,r2	;4
	b_s	.L258
	.align 4
.L259:
	mov_s	r0,0	;3
.L258:
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
.L263:
	mov_s	r2,r1	;4
	mov_s	r3,r0	;4
	ld.ab	r13,[r0,4]	;23
	ld.ab	r12,[r1,4]	;23
	brne	r13,r12,.L262
	ld	r12,[r0,-4]	;23
	breq_s	r12,0,.L262
	ld	r12,[r1,-4]	;23
	brne_s	r12,0,.L263
	.align 2
.L262:
	ld_s	r13,[r3]		;15
	ld_s	r12,[r2]		;15
	brlt	r13,r12,.L265
	mov_s	r0,r13	;4
	setgt	r0,r0,r12
	b_s	.L264
	.align 4
.L265:
	mov_s	r0,-1	;4
.L264:
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
.L268:
	ld.ab	r3,[r1,4]	;23
	st.a r3,[r2,4]
	brne_s	r3,0,.L268
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
.L271:
	mov_s	r2,r3	;4
	ld.ab	r12,[r3,4]	;23
	brne_s	r12,0,.L271
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
	b_s	.L274
	.align 4
.L276:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L274:
	mov_s	r3,r1	;4
	mov_s	r12,r0	;4
	breq_s	r2,0,.L275
	ld_s	r14,[r0]		;15
	ld_s	r13,[r1]		;15
	brne	r14,r13,.L275
	ld.ab	r13,[r0,4]	;23
	breq_s	r13,0,.L275
	ld.ab	r13,[r1,4]	;23
	brne_s	r13,0,.L276
	.align 2
.L275:
	breq_s	r2,0,.L278
	ld_s	r13,[r12]		;15
	ld_s	r2,[r3]		;15
	brlt	r13,r2,.L279
	mov_s	r0,r13	;4
	setgt	r0,r0,r2
	b_s	.L277
	.align 4
.L278:
	mov_s	r0,0	;3
	b_s	.L277
	.align 4
.L279:
	mov_s	r0,-1	;4
.L277:
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
	b_s	.L281
	.align 4
.L283:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L281:
	mov_s	r3,r0	;4
	breq_s	r2,0,.L282
	ld.ab	r12,[r0,4]	;23
	brne	r1,r12,.L283
	.align 2
.L282:
	breq_s	r2,0,.L285
	mov_s	r0,r3	;4
	b_s	.L284
	.align 4
.L285:
	mov_s	r0,0	;3
.L284:
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
	b_s	.L287
	.align 4
.L289:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L287:
	mov_s	r3,r1	;4
	mov_s	r12,r0	;4
	breq_s	r2,0,.L288
	ld.ab	r14,[r0,4]	;23
	ld.ab	r13,[r1,4]	;23
	breq	r14,r13,.L289
	.align 2
.L288:
	breq_s	r2,0,.L291
	ld_s	r13,[r12]		;15
	ld_s	r2,[r3]		;15
	brlt	r13,r2,.L292
	mov_s	r0,r13	;4
	setgt	r0,r0,r2
	b_s	.L290
	.align 4
.L291:
	mov_s	r0,0	;3
	b_s	.L290
	.align 4
.L292:
	mov_s	r0,-1	;4
.L290:
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
	b_s	.L294
	.align 4
.L295:
	ld.ab	r12,[r1,4]	;23
	st.a r12,[r3,4]
	.align 2
.L294:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L295
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	breq	r0,r1,.L297
	sub_s	r3,r0,r1
	asl_s	r12,r2,2
	brlo	r3,r12,.L298
	sub2	r3,r0,1 ;a,b,u6
	b_s	.L299
	.align 4
.L298:
	add2_s	r1,r1,r2
	add2	r2,-4,r2
	add_s	r2,r2,r0   ;b,b,h
	sub2	r3,r0,1 ;a,b,u6
	b_s	.L300
	.align 4
.L301:
	ld.a r12,[r1,-4]
	st.ab	r12,[r2,-4]	;26
	.align 2
.L300:
	brne	r2,r3,.L301
	b_s	.L297
	.align 4
.L302:
	ld.ab	r12,[r1,4]	;23
	st.a r12,[r3,4]
	.align 2
.L299:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L302
.L297:
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
	b_s	.L304
	.align 4
.L305:
	st.ab	r1,[r3,4]	;26
	.align 2
.L304:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L305
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brhs	r0,r1,.L307
	add_s	r3,r0,r2   ;a,b,c/u3
	add_s	r1,r1,r2   ;b,b,h
	b_s	.L308
	.align 4
.L309:
	ldb.a	r2,[r3,-1]
	stb.a r2,[r1,-1]
	.align 2
.L308:
	brne	r3,r0,.L309
	b_s	.L306
	.align 4
.L307:
	breq	r0,r1,.L306
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	mov_s	r3,r0	;4
	b_s	.L311
	.align 4
.L312:
	ldb.ab	r12,[r3,1]
	stb.a r12,[r1,1]
	.align 2
.L311:
	brne	r3,r2,.L312
	.align 2
.L306:
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
	xbfu	r2,r0,232
	extb_s	r0,r0
	asl_s	r0,r0,8
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
	mov_s	r2,0	;3
	b_s	.L327
	.align 4
.L330:
	bbit0	r0,r2,@.L328
	add_s	r0,r2,1   ;R0/R1,b,u6
	b_s	.L329
	.align 4
.L328:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L327:
	brne	r2,32,.L330
	mov_s	r0,0	;3
.L329:
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
	beq_s	.L335
	mov_s	r0,1	;3
	b_s	.L333
	.align 4
.L334:
	asr_s	r2,r2,1
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L333:
	bbit0	r2,0,@.L334
	b_s	.L332
	.align 4
.L335:
	mov_s	r0,0	;3
.L332:
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
	brlt	r0,0,.L339
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	mov_s	r0,r13
	bl	@__gtsf2;1
	brle	r0,0,.L342
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
	brlt	r0,0,.L346
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	brle	r0,0,.L349
	mov_s	r0,1	;3
	b_s	.L344
	.align 4
.L346:
	mov_s	r0,1	;3
	b_s	.L344
	.align 4
.L349:
	mov_s	r0,0	;3
.L344:
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
	brlt	r0,0,.L353
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	brle	r0,0,.L356
	mov_s	r0,1	;3
	b_s	.L351
	.align 4
.L353:
	mov_s	r0,1	;3
	b_s	.L351
	.align 4
.L356:
	mov_s	r0,0	;3
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
	mov_s	r1,r0
	bl	@__unordsf2;1
	brne_s	r0,0,.L359
	mov_s	r1,r13
	mov_s	r0,r13
	bl	@__addsf3;1
	mov_s	r1,r0
	mov_s	r0,r13
	bl	@__nesf2;1
	breq_s	r0,0,.L359
	brge	r15,0,.L364
	mov_s	r14,0x3f000000 ; 5.0e-1
	b_s	.L363
	.align 4
.L364:
	mov_s	r14,0x40000000 ; 2.0e+0
	.align 2
.L363:
	bbit0	r15,0,@.L362
	mov_s	r1,r14
	mov_s	r0,r13
	bl	@__mulsf3;1
	mov_s	r13,r0
	.align 2
.L362:
	div	r15,r15,2
	breq_s	r15,0,.L359
	mov_s	r1,r14
	mov_s	r0,r14
	bl	@__mulsf3;1
	mov_s	r14,r0
	b_s	.L363
	.align 4
.L359:
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
	brne	r0,0,.L367
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r14,0
	bl	@__nedf2;1
	breq_s	r0,0,.L367
	brge	r13,0,.L372
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	b_s	.L371
	.align 4
.L372:
	mov_s	r16,0	;4
	mov_s	r17,1073741824	;13
	.align 2
.L371:
	bbit0	r13,0,@.L370
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L370:
	div	r13,r13,2
	breq_s	r13,0,.L367
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L371
	.align 4
.L367:
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
	brne	r0,0,.L375
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r14,0
	bl	@__nedf2;1
	breq_s	r0,0,.L375
	brge	r13,0,.L380
	mov_s	r16,0	;4
	mov_s	r17,1071644672	;13
	b_s	.L379
	.align 4
.L380:
	mov_s	r16,0	;4
	mov_s	r17,1073741824	;13
	.align 2
.L379:
	bbit0	r13,0,@.L378
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L378:
	div	r13,r13,2
	breq_s	r13,0,.L375
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L379
	.align 4
.L375:
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
	b_s	.L383
	.align 4
.L384:
	ldb.ab	r12,[r1,1]
	ldb.ab	r13,[r3,1]
	xor_s	r12,r12,r13
	stb	r12,[r3,-1]
	.align 2
.L383:
	brne	r1,r2,.L384
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
	add_s	r2,r15,r0   ;a,b,c/u3
	b_s	.L386
	.align 4
.L388:
	add_s	r14,r14,-1   ;h,h,s3
	.align 2
.L386:
	mov_s	r3,r2	;4
	breq_s	r14,0,.L387
	ldb.a r12,[r1,1]
	stb.ab	r12,[r2,1]
	ldb	r12,[r2,-1]
	brne_s	r12,0,.L388
	.align 2
.L387:
	brne_s	r14,0,.L389
	stb	0,[r3]
	.align 2
.L389:
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
.L392:
	rsub	r0,r2,1
	add_s	r0,r0,r3   ;b,b,h
	breq	r3,r1,.L391
	ldb.a r12,[r3,1]
	brne_s	r12,0,.L392
.L391:
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
	b_s	.L395
	.align 4
.L397:
	ldb_s	r13,[r3]
	ldb	r12,[r0,-1]
	breq	r13,r12,.L399
	.align 2
.L398:
	ldb.a r12,[r3,1]
	brne_s	r12,0,.L397
	.align 2
.L395:
	mov_s	r2,r0	;4
	ldb.ab	r3,[r0,1]
	breq_s	r3,0,.L400
	sub	r3,r1,1 ;a,b,u6
	b_s	.L398
	.align 4
.L399:
	mov_s	r0,r2	;4
	b_s	.L396
	.align 4
.L400:
	mov_s	r0,0	;3
.L396:
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
.L403:
	mov_s	r3,r2	;4
	ldb.ab	r12,[r2,1]
	brne	r1,r12,.L402
	mov_s	r0,r3	;4
	.align 2
.L402:
	ldb	r3,[r2,-1]
	brne_s	r3,0,.L403
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
	mov_s	r0,r1	;4
	bl	@strlen;1
	mov.f	r15,r0
	beq_s	.L410
	ldb	r16,[r14]
	b_s	.L408
	.align 4
.L409:
	mov_s	r2,r15	;4
	mov_s	r1,r14	;4
	mov_s	r0,r13	;4
	bl	@strncmp;1
	breq_s	r0,0,.L411
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L408:
	mov_s	r1,r16	;4
	mov_s	r0,r13	;4
	bl	@strchr;1
	mov.f	r13,r0
	bne_s	.L409
	b_s	.L407
	.align 4
.L410:
	mov_s	r0,r13	;4
	b_s	.L407
	.align 4
.L411:
	mov_s	r0,r13	;4
.L407:
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
	brge	r0,0,.L413
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	vadd2	r0,r16,0
	bl	@__gtdf2;1
	brgt	r0,0,.L415
	.align 2
.L413:
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	brle	r0,0,.L423
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	brge	r0,0,.L424
	.align 2
.L415:
	mov_s	r0,r14	;4
	bxor	r1,r15,31
	b_s	.L416
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
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r16,r2	;4
	mov_s	r14,r3	;4
	sub	r17,r1,r3
	add	r17,r17,r0   ;(p)b,b,c/u6
	breq_s	r3,0,.L426
	brlo	r1,r3,.L430
	mov_s	r15,r0	;4
	b_s	.L432
	.align 4
.L428:
	ldb.ab	r3,[r15,1]
	ldb	r2,[r16]
	brne	r3,r2,.L432
	sub	r2,r14,1 ;a,b,u6
	add	r1,r16,1 ;a,b,c/u6
	mov_s	r0,r15	;4
	bl	@memcmp;1
	breq_s	r0,0,.L431
	.align 2
.L432:
	mov_s	r13,r15	;4
	brls	r15,r17,.L428
	mov_s	r0,0	;3
	b_s	.L426
	.align 4
.L430:
	mov_s	r0,0	;3
	b_s	.L426
	.align 4
.L431:
	mov_s	r0,r13	;4
.L426:
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
	brge	r0,0,.L451
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	mov_s	r17,1	;4
	b_s	.L435
	.align 4
.L451:
	mov_s	r17,0	;4
	.align 2
.L435:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl	@__gedf2;1
	brge	r0,0,.L446
	b_s	.L454
	.align 4
.L439:
	add_s	r13,r13,1   ;b,b,h
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	b_s	.L437
	.align 4
.L446:
	mov_s	r13,0	;3
	.align 2
.L437:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl	@__gedf2;1
	brge	r0,0,.L439
	b_s	.L440
	.align 4
.L454:
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	brge	r0,0,.L453
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	vadd2	r0,r14,0
	bl	@__nedf2;1
	brne_s	r0,0,.L448
	mov_s	r13,0	;3
	b_s	.L440
	.align 4
.L443:
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__adddf3;1
	vadd2	r14,r0,0
	b_s	.L442
	.align 4
.L448:
	mov_s	r13,0	;3
	.align 2
.L442:
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	brlt	r0,0,.L443
	b_s	.L440
	.align 4
.L453:
	mov_s	r13,0	;3
	.align 2
.L440:
	st	r13,[r16]	;26
	breq	r17,0,.L444
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L444:
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
	b_s	.L456
	.align 4
.L459:
	and	r14,r12,1
	breq_s	r14,0,.L457
	add.f	r0,r0,r2
	adc	r1,r1,r3
	.align 2
.L457:
	add.f	r2,r2,r2
	adc	r3,r3,r3
	lsr.f	r13,r13
	rrc	r12,r12
	.align 2
.L456:
	or.f	0,r12,r13
	bne_s	.L459
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
	b_s	.L461
	.align 4
.L463:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L461:
	brhs	r1,r0,.L468
	breq_s	r3,0,.L469
	brge	r1,0,.L463
	mov_s	r12,0	;3
	b_s	.L465
	.align 4
.L466:
	brlo	r0,r1,.L464
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L464:
	lsr_s	r3,r3
	lsr_s	r1,r1
	b_s	.L465
	.align 4
.L468:
	mov_s	r12,0	;3
	b_s	.L465
	.align 4
.L469:
	mov_s	r12,0	;3
	.align 2
.L465:
	brne_s	r3,0,.L466
	brne_s	r2,0,.L467
	mov_s	r0,r12	;4
.L467:
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
	beq_s	.L473
	asl_s	r0,r0,8
	fls	r0,r0
	rsub	r0,r0,30
	b_s	.L472
	.align 4
.L473:
	mov_s	r0,7	;3
.L472:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brge	r1,0,.L475
	not_s	r0,r0
	not_s	r1,r1
	.align 2
.L475:
	or.f	0,r0,r1
	beq_s	.L481
	breq_s	r1,0,.L479
	fls	r0,r1
	rsub	r0,r0,31
	b_s	.L480
	.align 4
.L479:
	fls	r0,r0
	rsub	r0,r0,63
	.align 2
.L480:
	add_s	r0,r0,-1   ;h,h,s3
	b_s	.L477
	.align 4
.L481:
	mov_s	r0,63	;3
.L477:
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
	b_s	.L483
	.align 4
.L485:
	bbit0	r2,0,@.L484
	add_s	r0,r0,r1   ;b,b,h
	.align 2
.L484:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L483:
	brne_s	r2,0,.L485
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
	brlo	r0,r1,.L487
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L488
	.align 2
.L487:
	sub3	r5,r1,1 ;a,b,u6
	sub3	r4,r0,1 ;a,b,u6
	mov_s	r12,0	;3
	b_s	.L489
	.align 4
.L488:
	add_s	r3,r1,r2   ;a,b,c/u3
	add_s	r0,r0,r2   ;b,b,h
	b_s	.L490
	.align 4
.L491:
	add	r5,r5,8   ;(p)b,b,c/u6
	ldd	r14,[r5]
	add	r4,r4,8   ;(p)b,b,c/u6
	std	r14,[r4]
	add_s	r12,r12,1   ;b,b,h
	.align 2
.L489:
	brne	r12,r13,.L491
	add_s	r3,r3,-1   ;h,h,s3
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r0,r0,r3   ;b,b,h
	b_s	.L492
	.align 4
.L493:
	ldb.a r3,[r12,1]
	stb.a r3,[r0,1]
	.align 2
.L492:
	rsub	r3,r1,1
	add_s	r3,r3,r12   ;b,b,h
	brhi	r2,r3,.L493
	b_s	.L486
	.align 4
.L495:
	ldb.a r2,[r3,-1]
	stb.a r2,[r0,-1]
	.align 2
.L490:
	brne	r3,r1,.L495
	.align 2
.L486:
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
	brlo	r0,r1,.L497
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L498
	.align 2
.L497:
	sub1	r3,r1,1 ;a,b,u6
	sub1	r13,r0,1 ;a,b,u6
	add1	r12,r3,r12
	b_s	.L499
	.align 4
.L498:
	add_s	r3,r1,r2   ;a,b,c/u3
	add_s	r0,r0,r2   ;b,b,h
	b_s	.L500
	.align 4
.L501:
	ldh.x.a r14,[r3,2]
	sth.a r14,[r13,2]
	.align 2
.L499:
	brne	r3,r12,.L501
	bbit0	r2,0,@.L496
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r1,r1,r2   ;b,b,h
	add_s	r0,r0,r2   ;b,b,h
	ldb_s	r2,[r1]
	stb_s	r2,[r0]
	b_s	.L496
	.align 4
.L503:
	ldb.a r2,[r3,-1]
	stb.a r2,[r0,-1]
	.align 2
.L500:
	brne	r3,r1,.L503
	.align 2
.L496:
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
	brlo	r0,r1,.L505
	add_s	r12,r1,r2   ;a,b,c/u3
	brhs	r12,r0,.L506
	.align 2
.L505:
	sub2	r12,r1,1 ;a,b,u6
	sub2	r14,r0,1 ;a,b,u6
	add2	r13,r12,r13
	b_s	.L507
	.align 4
.L506:
	add_s	r3,r1,r2   ;a,b,c/u3
	add_s	r0,r0,r2   ;b,b,h
	b_s	.L508
	.align 4
.L509:
	ld.a r15,[r12,4]
	st.a r15,[r14,4]
	.align 2
.L507:
	brne	r12,r13,.L509
	add_s	r3,r3,-1   ;h,h,s3
	add_s	r12,r1,r3   ;a,b,c/u3
	add_s	r0,r0,r3   ;b,b,h
	b_s	.L510
	.align 4
.L511:
	ldb.a r3,[r12,1]
	stb.a r3,[r0,1]
	.align 2
.L510:
	rsub	r3,r1,1
	add_s	r3,r3,r12   ;b,b,h
	brhi	r2,r3,.L511
	b_s	.L504
	.align 4
.L513:
	ldb.a r2,[r3,-1]
	stb.a r2,[r0,-1]
	.align 2
.L508:
	brne	r3,r1,.L513
	.align 2
.L504:
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
	b_s	.L521
	.align 4
.L523:
	rsub	r3,r0,15
	bbit1	r2,r3,@.L522
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L521:
	brne	r0,16,.L523
.L522:
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
	b_s	.L525
	.align 4
.L527:
	bbit1	r2,r0,@.L526
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L525:
	brne	r0,16,.L527
.L526:
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
	brlt	r0,0,.L533
	mov_s	r1,0x47000000 ; 3.2768e+4
	mov_s	r0,r13
	bl	@__subsf3;1
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L531
	.align 4
.L533:
	mov_s	r0,r13
	bl	@__fixsfsi;1
.L531:
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
	exth_s	r3,r0
	mov_s	r0,0	;3
	mov_s	r2,0	;3
	b_s	.L535
	.align 4
.L537:
	bbit0	r3,r2,@.L536
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L536:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L535:
	brne	r2,16,.L537
	bmsk_s	r0,r0,0
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
	b_s	.L539
	.align 4
.L541:
	bbit0	r3,r2,@.L540
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L540:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L539:
	brne	r2,16,.L541
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
	b_s	.L543
	.align 4
.L545:
	bbit0	r2,0,@.L544
	add_s	r0,r0,r1   ;b,b,h
	.align 2
.L544:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L543:
	brne_s	r2,0,.L545
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
	beq_s	.L551
	mov_s	r0,0	;3
	b_s	.L548
	.align 4
.L550:
	bbit0	r1,0,@.L549
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L549:
	asl_s	r2,r2,1
	lsr_s	r1,r1
	.align 2
.L548:
	brne_s	r1,0,.L550
	b_s	.L547
	.align 4
.L551:
	mov_s	r0,0	;3
.L547:
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
	b_s	.L553
	.align 4
.L555:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L553:
	brhs	r1,r0,.L560
	breq_s	r3,0,.L561
	brge	r1,0,.L555
	mov_s	r12,0	;3
	b_s	.L557
	.align 4
.L558:
	brlo	r0,r1,.L556
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L556:
	lsr_s	r3,r3
	lsr_s	r1,r1
	b_s	.L557
	.align 4
.L560:
	mov_s	r12,0	;3
	b_s	.L557
	.align 4
.L561:
	mov_s	r12,0	;3
	.align 2
.L557:
	brne_s	r3,0,.L558
	brne_s	r2,0,.L559
	mov_s	r0,r12	;4
.L559:
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
	brlt	r0,0,.L565
	mov_s	r1,r14
	mov_s	r0,r13
	bl	@__gtsf2;1
	brgt	r0,0,.L566
	mov_s	r0,0	;3
	b_s	.L564
	.align 4
.L565:
	mov_s	r0,-1	;4
	b_s	.L564
	.align 4
.L566:
	mov_s	r0,1	;3
.L564:
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
	brlt	r0,0,.L569
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	brgt	r0,0,.L570
	mov_s	r0,0	;3
	b_s	.L568
	.align 4
.L569:
	mov_s	r0,-1	;4
	b_s	.L568
	.align 4
.L570:
	mov_s	r0,1	;3
.L568:
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
	mpydu	r0,r0,r1
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
	brge	r1,0,.L580
	neg_s	r1,r1
	mov_s	r12,1	;3
	b_s	.L574
	.align 4
.L580:
	mov_s	r12,0	;3
	.align 2
.L574:
	mov_s	r3,33	;3
	mov_s	r2,0	;3
	b_s	.L575
	.align 4
.L578:
	bbit0	r1,0,@.L576
	add_s	r2,r2,r0   ;b,b,h
	.align 2
.L576:
	asl_s	r0,r0,1
	asr_s	r1,r1,1
	.align 2
.L575:
	breq_s	r1,0,.L577
	add_s	r3,r3,-1   ;h,h,s3
	extb.f	r3,r3
	bne_s	.L578
	.align 2
.L577:
	breq_s	r12,0,.L581
	neg_s	r0,r2
	b_s	.L579
	.align 4
.L581:
	mov_s	r0,r2	;4
.L579:
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
	brge	r0,0,.L586
	neg_s	r0,r0
	mov_s	r13,1	;3
	b_s	.L583
	.align 4
.L586:
	mov_s	r13,0	;3
	.align 2
.L583:
	brge	r1,0,.L584
	neg_s	r1,r1
	seteq	r13,r13,0
	.align 2
.L584:
	mov_s	r2,0	;3
	bl	@__udivmodsi4;1
	breq_s	r13,0,.L585
	neg_s	r0,r0
.L585:
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
	brge	r0,0,.L591
	neg_s	r0,r0
	mov_s	r13,1	;3
	b_s	.L588
	.align 4
.L591:
	mov_s	r13,0	;3
	.align 2
.L588:
	brge	r1,0,.L589
	neg_s	r1,r1
	.align 2
.L589:
	mov_s	r2,1	;3
	bl	@__udivmodsi4;1
	breq_s	r13,0,.L590
	neg_s	r0,r0
.L590:
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
	b_s	.L593
	.align 4
.L595:
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	exth_s	r3,r3
	.align 2
.L593:
	brhs	r1,r0,.L600
	add.f	r12,r12,-1
	beq_s	.L601
	btst_s	r1,15
	beq_s	.L595
	mov_s	r12,0	;3
	b_s	.L597
	.align 4
.L598:
	brlo	r0,r1,.L596
	sub_s	r0,r0,r1
	exth_s	r0,r0
	or_s	r12,r12,r3
	.align 2
.L596:
	lsr_s	r3,r3
	lsr_s	r1,r1
	b_s	.L597
	.align 4
.L600:
	mov_s	r12,0	;3
	b_s	.L597
	.align 4
.L601:
	mov_s	r12,0	;3
	.align 2
.L597:
	brne_s	r3,0,.L598
	brne_s	r2,0,.L599
	mov_s	r0,r12	;4
.L599:
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
	b_s	.L604
	.align 4
.L606:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L604:
	brhs	r1,r0,.L611
	breq_s	r3,0,.L612
	brge	r1,0,.L606
	mov_s	r12,0	;3
	b_s	.L608
	.align 4
.L609:
	brlo	r0,r1,.L607
	sub_s	r0,r0,r1
	or_s	r12,r12,r3
	.align 2
.L607:
	lsr_s	r3,r3
	lsr_s	r1,r1
	b_s	.L608
	.align 4
.L611:
	mov_s	r12,0	;3
	b_s	.L608
	.align 4
.L612:
	mov_s	r12,0	;3
	.align 2
.L608:
	brne_s	r3,0,.L609
	brne_s	r2,0,.L610
	mov_s	r0,r12	;4
.L610:
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r12,r0,0
	bbit0	r2,5,@.L615
	mov_s	r0,0	;3
	asl	r1,r12,r2
	b_s	.L617
	.align 4
.L615:
	breq_s	r2,0,.L617
	mov_s	r3,r0	;4
	asl_s	r0,r0,r2
	mov_s	r12,r13	;4
	asl_s	r12,r12,r2
	rsub	r2,r2,32
	lsr_s	r3,r3,r2
	or	r1,r3,r12
.L617:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r4,r0,0
	bbit0	r2,5,@.L620
	asr	r1,r5,31
	asr	r0,r5,r2
	b_s	.L622
	.align 4
.L620:
	breq_s	r2,0,.L622
	mov_s	r3,r5	;4
	asr	r1,r5,r2
	rsub	r13,r2,32
	asl_s	r3,r3,r13
	mov_s	r12,r4	;4
	lsr_s	r12,r12,r2
	or	r0,r3,r12
.L622:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
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
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brhi	r0,65535,.L631
	mov_s	r3,16	;3
	b_s	.L627
	.align 4
.L631:
	mov_s	r3,0	;3
	.align 2
.L627:
	rsub	r2,r3,16
	lsr_s	r0,r0,r2
	tst	r0,65280
	bne_s	.L632
	mov_s	r2,8	;3
	b_s	.L628
	.align 4
.L632:
	mov_s	r2,0	;3
	.align 2
.L628:
	rsub	r12,r2,8
	lsr_s	r0,r0,r12
	add_s	r3,r3,r2   ;b,b,h
	tst	r0,240
	bne_s	.L633
	mov_s	r2,4	;3
	b_s	.L629
	.align 4
.L633:
	mov_s	r2,0	;3
	.align 2
.L629:
	rsub	r12,r2,4
	lsr_s	r0,r0,r12
	add_s	r3,r3,r2   ;b,b,h
	tst	r0,12
	bne_s	.L634
	mov_s	r2,2	;3
	b_s	.L630
	.align 4
.L634:
	mov_s	r2,0	;3
	.align 2
.L630:
	rsub	r12,r2,2
	lsr_s	r0,r0,r12
	add_s	r3,r3,r2   ;b,b,h
	and	r12,r0,2
	seteq	r12,r12,0
	rsub	r2,r0,2
	mpy	r0,r12,r2
	add_s	r0,r0,r3   ;b,b,h
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brlt	r1,r3,.L637
	brgt	r1,r3,.L638
	brlo	r0,r2,.L639
	brhi	r0,r2,.L640
	mov_s	r0,1	;3
	b_s	.L636
	.align 4
.L637:
	mov_s	r0,0	;3
	b_s	.L636
	.align 4
.L638:
	mov_s	r0,2	;3
	b_s	.L636
	.align 4
.L639:
	mov_s	r0,0	;3
	b_s	.L636
	.align 4
.L640:
	mov_s	r0,2	;3
.L636:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
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
	brne_s	r2,0,.L647
	mov_s	r3,16	;3
	b_s	.L643
	.align 4
.L647:
	mov_s	r3,0	;3
	.align 2
.L643:
	lsr_s	r0,r0,r3
	extb_s	r2,r0
	brne_s	r2,0,.L648
	mov_s	r2,8	;3
	b_s	.L644
	.align 4
.L648:
	mov_s	r2,0	;3
	.align 2
.L644:
	lsr_s	r0,r0,r2
	add_s	r3,r3,r2   ;b,b,h
	tst	r0,((1<<4)-1)<<0
	bne_s	.L649
	mov_s	r2,4	;3
	b_s	.L645
	.align 4
.L649:
	mov_s	r2,0	;3
	.align 2
.L645:
	lsr_s	r0,r0,r2
	add_s	r3,r3,r2   ;b,b,h
	tst	r0,((1<<2)-1)<<0
	bne_s	.L650
	mov_s	r2,2	;3
	b_s	.L646
	.align 4
.L650:
	mov_s	r2,0	;3
	.align 2
.L646:
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
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	vadd2	r4,r0,0
	bbit0	r2,5,@.L652
	mov_s	r1,0	;3
	lsr	r0,r5,r2
	b_s	.L654
	.align 4
.L652:
	breq_s	r2,0,.L654
	mov_s	r3,r5	;4
	lsr	r1,r5,r2
	rsub	r13,r2,32
	asl_s	r3,r3,r13
	mov_s	r12,r4	;4
	lsr_s	r12,r12,r2
	or	r0,r3,r12
.L654:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
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
	mov_s	r0,r16	;4
	bl	@__muldsi3;1
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
	ld.ab	r18,[sp,8]	;23
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
	sub.f	r0,r12,r0
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
	lsr	r18,r2,31
	mov_s	r14,0	;3
	mov_s	r15,1072693248	;13
	.align 2
.L666:
	bbit0	r13,0,@.L664
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L664:
	div	r13,r13,2
	breq_s	r13,0,.L665
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__muldf3;1
	vadd2	r16,r0,0
	b_s	.L666
	.align 4
.L665:
	breq	r18,0,.L668
	vadd2	r2,r14,0
	mov_s	r0,0	;3
	mov_s	r1,1072693248	;13
	bl	@__divdf3;1
	b_s	.L667
	.align 4
.L668:
	vadd2	r0,r14,0
.L667:
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
	lsr	r16,r1,31
	mov_s	r13,0x3f800000 ; 1.0e+0
	.align 2
.L672:
	bbit0	r15,0,@.L670
	mov_s	r1,r14
	mov_s	r0,r13
	bl	@__mulsf3;1
	mov_s	r13,r0
	.align 2
.L670:
	div	r15,r15,2
	breq_s	r15,0,.L671
	mov_s	r1,r14
	mov_s	r0,r14
	bl	@__mulsf3;1
	mov_s	r14,r0
	b_s	.L672
	.align 4
.L671:
	breq	r16,0,.L674
	mov_s	r1,r13
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl	@__divsf3;1
	b_s	.L673
	.align 4
.L674:
	mov_s	r0,r13
.L673:
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
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	brlo	r1,r3,.L677
	brhi	r1,r3,.L678
	brlo	r0,r2,.L679
	brhi	r0,r2,.L680
	mov_s	r0,1	;3
	b_s	.L676
	.align 4
.L677:
	mov_s	r0,0	;3
	b_s	.L676
	.align 4
.L678:
	mov_s	r0,2	;3
	b_s	.L676
	.align 4
.L679:
	mov_s	r0,0	;3
	b_s	.L676
	.align 4
.L680:
	mov_s	r0,2	;3
.L676:
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
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
