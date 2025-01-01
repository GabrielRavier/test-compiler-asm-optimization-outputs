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
	brls	r0,r1,.L2
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L3
	add_s	r2,r2,r0   ;b,b,h
	.align 4
.L17:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L3:
	brne	r3,r1,.L17
	j_s	[blink]
	.align 4
.L2:
	cmp_s	r0,r1
	jeq_s	[blink]
	sub	r12,r0,1 ;a,b,u6
	add_s	r2,r2,r1   ;b,b,h
	cmp_s	r1,r2
	jeq.d	[blink]
	mov_s	r3,r1	;4
	push_s	r13
	.align 2
.L7:
	ldb.ab	r13,[r3,1]
	brne.d	r3,r2,.L7
	stb.a	r13,[r12,1]
	j_s.d	[blink]
	pop_s	r13
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	push_s	r13
	extb_s	r2,r2
	b.d	.L19
	add_s	r1,r1,-1   ;h,h,s3
	.align 4
.L21:
	add_s	r3,r3,-1   ;h,h,s3
	.align 2
.L19:
	breq.d	r3,0,.L20
	mov_s	r13,r0	;4
	ldb.a	r12,[r1,1]
	stb_s	r12,[r0]
	ldb.ab	r12,[r0,1]
	brne	r2,r12,.L21
	.align 2
.L20:
	add_s	r0,r13,1   ;R0/R1,b,u6
	tst_s	r3,r3
	mov.eq	r0,0
	j_s.d	[blink]
	pop_s	r13
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	b.d	.L26
	extb_s	r1,r1
	.align 4
.L28:
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L26:
	breq.d	r2,0,.L27
	mov_s	r12,r0	;4
	ldb.ab	r3,[r0,1]
	brne	r1,r3,.L28
	.align 2
.L27:
	tst_s	r2,r2
	mov_s	r0,0	;3
	j_s.d	[blink]
	mov.ne	r0,r12
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	push_s	r14
	push_s	r13
	b.d	.L39
	mov_s	r13,r1	;4
	.align 4
.L35:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r13,r1	;4
	.align 2
.L39:
	breq.d	r2,0,.L34
	mov_s	r14,r0	;4
	ldb.ab	r12,[r0,1]
	ldb.ab	r3,[r1,1]
	breq	r12,r3,.L35
	.align 2
.L34:
	tst_s	r2,r2
	beq.d	.L36
	mov.eq	r0,0
	ldb_s	r0,[r14]
	ldb_s	r2,[r13]
	sub_s	r0,r0,r2
.L36:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	sub	r3,r0,1 ;a,b,u6
	b.d	.L41
	add_s	r2,r2,r1   ;b,b,h
	.align 4
.L47:
	ldb.ab	r12,[r1,1]
	stb.a	r12,[r3,1]
	.align 2
.L41:
	brne	r1,r2,.L47
	j_s	[blink]
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	push_s	r13
	extb_s	r1,r1
	add_s	r2,r2,r0   ;b,b,h
	not_s	r12,r0
	.align 2
.L49:
	breq.d	r2,r0,.L54
	add_s	r13,r12,r2   ;a,b,c/u3
	ldb.a	r3,[r2,-1]
	brne	r1,r3,.L49
	b.d	.L50
	add_s	r0,r0,r13   ;b,b,h
	.align 4
.L54:
	mov_s	r0,0	;3
.L50:
	j_s.d	[blink]
	pop_s	r13
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	add_s	r2,r2,r0   ;b,b,h
	mov_s	r3,r0	;4
	b.d	.L56
	extb_s	r1,r1
	.align 4
.L62:
	stb.ab	r1,[r3,1]
	.align 2
.L56:
	brne	r3,r2,.L62
	j_s	[blink]
	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	add_s	r1,r1,-1   ;h,h,s3
	mov_s	r2,r0	;4
	.align 2
.L64:
	mov_s	r0,r2	;4
	ldb.a	r3,[r1,1]
	brne.d	r3,0,.L64
	stb.ab	r3,[r2,1]
	j_s	[blink]
	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	extb_s	r1,r1
	mov_s	r2,r0	;4
	.align 2
.L71:
	mov_s	r0,r2	;4
	ldb.ab	r3,[r2,1]
	tst_s	r3,r3
	jeq_s	[blink]
	ldb	r3,[r2,-1]
	brne	r1,r3,.L71
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	.align 2
.L77:
	mov_s	r3,r0	;4
	ldb.ab	r2,[r0,1]
	breq	r1,r2,.L78
	ldb	r2,[r0,-1]
	brne_s	r2,0,.L77
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L78:
	j_s.d	[blink]
	mov_s	r0,r3	;4
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	push_s	r13
	.align 2
.L83:
	mov_s	r12,r1	;4
	mov_s	r13,r0	;4
	ldb.ab	r3,[r0,1]
	ldb.ab	r2,[r1,1]
	brne	r3,r2,.L82
	ldb	r2,[r0,-1]
	brne_s	r2,0,.L83
	.align 2
.L82:
	ldb_s	r0,[r13]
	ldb_s	r2,[r12]
	sub_s	r0,r0,r2
	j_s.d	[blink]
	pop_s	r13
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	mov_s	r2,r0	;4
	.align 2
.L87:
	mov_s	r12,r2	;4
	ldb.ab	r3,[r2,1]
	brne_s	r3,0,.L87
	j_s.d	[blink]
	sub_s	r0,r12,r0
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	breq_s	r2,0,.L94
	push_s	r14
	push_s	r13
	mov_s	r3,r0	;4
	add_s	r0,r0,r2   ;b,b,h
	.align 2
.L93:
	mov_s	r14,r3	;4
	ldb.ab	r2,[r3,1]
	breq.d	r2,0,.L92
	mov_s	r13,r1	;4
	ldb_s	r2,[r1]
	breq_s	r2,0,.L92
	breq	r3,r0,.L92
	ldb	r12,[r3,-1]
	ldb.ab	r2,[r1,1]
	breq	r12,r2,.L93
	.align 2
.L92:
	ldb_s	r0,[r14]
	ldb_s	r2,[r13]
	sub_s	r0,r0,r2
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L94:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	mov_s	r3,r0	;4
	b.d	.L101
	add_s	r2,r2,r0   ;b,b,h
	.align 4
.L107:
	ldb_s	r12,[r3,1]
	stb_s	r12,[r1]
	ldb.ab	r12,[r3,2]
	stb_s	r12,[r1,1]
	add_s	r1,r1,2   ;b,b,h
	.align 2
.L101:
	sub_s	r12,r2,r3
	brgt	r12,1,.L107
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
	brls	r0,31,.L136
	add	r2,r0,-127     ;a,b,limm
	brls	r2,32,.L137
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L138
	add_s	r0,r0,-65529   ;b,b,limm
	j_s.d	[blink]
	setlo	r0,r0,3
	.align 4
.L136:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L137:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L138:
	j_s.d	[blink]
	mov_s	r0,1	;3
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
	brls	r0,254,.L150
	brls	r0,8231,.L145
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L146
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L147
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L148
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L150:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L145:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L146:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L147:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L148:
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
	brne_s	r0,0,.L160
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L161
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L158
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L158:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L160:
	vadd2	r0,r14,0
	b_s	.L158
	.align 4
.L161:
	vadd2	r0,r16,0
	b_s	.L158
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
	bne.d	.L167
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L167
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L167:
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
	brne	r0,0,.L179
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L180
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L177
	mov_s	r2,r17	;4
	tst_s	r2,r2
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L176:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L177:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L176
	.align 4
.L179:
	vadd2	r0,r14,0
	b_s	.L176
	.align 4
.L180:
	vadd2	r0,r16,0
	b_s	.L176
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r0
	mov_s	r13,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L184
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L184
	mov.ne	r0,r14
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L185
	tst_s	r14,r14
	mov.p	r13,r14
	mov_s	r0,r13
.L184:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L185:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r14,r13
	b.d	.L184
	mov_s	r0,r14
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
	brne	r0,0,.L195
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L196
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L193
	mov_s	r2,r17	;4
	tst_s	r2,r2
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L192:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L193:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L192
	.align 4
.L195:
	vadd2	r0,r14,0
	b_s	.L192
	.align 4
.L196:
	vadd2	r0,r16,0
	b_s	.L192
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
	brne	r0,0,.L203
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L204
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L201
	mov_s	r2,r17	;4
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L200:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L201:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L200
	.align 4
.L203:
	vadd2	r0,r14,0
	b_s	.L200
	.align 4
.L204:
	vadd2	r0,r16,0
	b_s	.L200
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r0
	mov_s	r13,r1
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	tst_s	r0,r0
	bne.d	.L208
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L208
	mov.ne	r0,r14
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L209
	tst_s	r14,r14
	mov.p	r14,r13
	mov_s	r0,r14
.L208:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L209:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r13,r14
	b.d	.L208
	mov_s	r0,r13
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
	brne	r0,0,.L219
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L220
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L217
	mov_s	r2,r17	;4
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L216:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L217:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L216
	.align 4
.L219:
	vadd2	r0,r14,0
	b_s	.L216
	.align 4
.L220:
	vadd2	r0,r16,0
	b_s	.L216
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
	mov_s	r2,@s.0	;13
	b_s	.L224
	.align 4
.L225:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	stb.ab	r3,[r2,1]
	lsr_s	r0,r0,6
	.align 2
.L224:
	brne_s	r0,0,.L225
	stb	0,[r2]
	mov_s	r0,@s.0	;13
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
	mpy	r12,r12,1284865837
	mpy	r3,r2,1481765933
	add_s	r12,r12,r3   ;b,b,h
	mpydu	r2,r2,1284865837
	add_s	r3,r3,r12   ;b,b,h
	add.f	r12,r2,1
	adc	r2,r3,0
	st	r12,[@seed]	;26
	st	r2,[@seed+4]	;26
	j_s.d	[blink]
	lsr_s	r0,r2
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	breq_s	r1,0,.L235
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
.L235:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L237
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L237:
	ld_s	r2,[r0,4]		;15
	tst_s	r2,r2
	jeq_s	[blink]
	ld_s	r3,[r0]		;15
	j_s.d	[blink]
	st_s	r3,[r2]		;16
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
	mov_s	r17,r0	;4
	mov_s	r19,r1	;4
	mov_s	r20,r2	;4
	mov_s	r15,r3	;4
	mov_s	r18,r4	;4
	ld	r16,[r2]	;23
	mov_s	r14,r1	;4
	b.d	.L241
	mov_s	r13,0	;3
	.align 4
.L242:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L241:
	breq	r13,r16,.L246
	mov_s	r1,r14	;4
	jl.d	[r18]
	mov_s	r0,r17	;4
	brne.d	r0,0,.L242
	add_s	r14,r14,r15   ;b,b,h
	mpy_s	r13,r13,r15
	b.d	.L243
	add	r0,r19,r13 ;a,b,c/u6
	.align 4
.L246:
	add	r2,r16,1 ;a,b,c/u6
	st	r2,[r20]	;26
	mpy	r16,r16,r15
	mov_s	r2,r15	;4
	mov_s	r1,r17	;4
	bl.d	@memcpy;1
	add	r0,r19,r16 ;a,b,c/u6
.L243:
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
	mov_s	r17,r0	;4
	mov_s	r19,r1	;4
	mov_s	r15,r3	;4
	mov_s	r16,r4	;4
	ld	r18,[r2]	;23
	mov_s	r14,r1	;4
	b.d	.L248
	mov_s	r13,0	;3
	.align 4
.L249:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L248:
	breq	r13,r18,.L253
	mov_s	r1,r14	;4
	jl.d	[r16]
	mov_s	r0,r17	;4
	brne.d	r0,0,.L249
	add_s	r14,r14,r15   ;b,b,h
	mpy_s	r13,r13,r15
	b.d	.L250
	add	r0,r19,r13 ;a,b,c/u6
	.align 4
.L253:
	mov_s	r0,0	;3
.L250:
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
	j_s.d	[blink]
	abs_s	r0,r0
	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	push_s	blink
	push_s	r14
	push_s	r13
	mov_s	r14,r0	;4
	.align 2
.L257:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L257
	ldb_s	r2,[r13]
	breq	r2,43,.L263
	cmp_s	r2,45
	beq.d	.L258
	mov.eq	r12,1
	b.d	.L259
	mov_s	r12,0	;3
	.align 4
.L263:
	mov_s	r12,0	;3
	.align 2
.L258:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L259:
	sub	r2,r13,1 ;a,b,u6
	b.d	.L260
	mov_s	r0,0	;3
	.align 4
.L261:
	mpy	r0,r0,10
	ldb_s	r3,[r2]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L260:
	ldb.a	r3,[r2,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L261
	tst_s	r12,r12
	neg.eq	r0,r0
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
	mov_s	r14,r0	;4
	.align 2
.L269:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L269
	ldb_s	r2,[r13]
	breq	r2,43,.L275
	cmp_s	r2,45
	beq.d	.L270
	mov.eq	r12,1
	b.d	.L271
	mov_s	r12,0	;3
	.align 4
.L275:
	mov_s	r12,0	;3
	.align 2
.L270:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L271:
	sub	r2,r13,1 ;a,b,u6
	b.d	.L272
	mov_s	r0,0	;3
	.align 4
.L273:
	mpy	r0,r0,10
	ldb_s	r3,[r2]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L272:
	ldb.a	r3,[r2,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L273
	tst_s	r12,r12
	neg.eq	r0,r0
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
	push_s	r14
	push_s	r13
	mov_s	r14,r0	;4
	.align 2
.L281:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L281
	ldb_s	r2,[r13]
	breq	r2,43,.L287
	cmp_s	r2,45
	beq.d	.L282
	mov.eq	r14,1
	b.d	.L283
	mov_s	r14,0	;3
	.align 4
.L287:
	mov_s	r14,0	;3
	.align 2
.L282:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L283:
	sub	r12,r13,1 ;a,b,u6
	mov_s	r0,0	;3
	b.d	.L284
	mov_s	r1,0	;3
	.align 4
.L285:
	mpy	r1,r1,10
	mpydu	r2,r0,10
	add_s	r3,r3,r1   ;b,b,h
	ldb_s	r0,[r12]
	sub3	r0,r0,6 ;a,b,u6
	asr	r1,r0,31
	sub.f	r0,r2,r0
	sbc	r1,r3,r1
	.align 2
.L284:
	ldb.a	r2,[r12,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L285
	brne_s	r14,0,.L286
	mov_s	r2,0	;3
	sub.f	r0,r2,r0
	sbc	r1,r2,r1
.L286:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
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
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r14,r2	;4
	mov_s	r15,r3	;4
	mov_s	r17,r4	;4
	.align 2
.L293:
	breq_s	r14,0,.L300
	lsr_s	r13,r14
	mpy_s	r13,r13,r15
	add_s	r13,r13,r16   ;b,b,h
	mov_s	r1,r13	;4
	jl.d	[r17]
	mov_s	r0,r18	;4
	tst_s	r0,r0
	bn.d	.L293
	lsr.n	r14,r14,1
	brle	r0,0,.L298
	add	r16,r13,r15 ;a,b,c/u6
	lsr_s	r2,r14
	add_s	r14,r14,-1   ;h,h,s3
	b.d	.L293
	sub_s	r14,r14,r2
	.align 4
.L300:
	mov_s	r0,0	;3
.L296:
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L298:
	b.d	.L296
	mov_s	r0,r13	;4
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
	mov_s	r19,r0	;4
	mov_s	r16,r3	;4
	mov_s	r18,r4	;4
	mov_s	r17,r5	;4
	mov_s	r14,r2	;4
	b.d	.L302
	mov_s	r15,r1	;4
	.align 4
.L304:
	asr_s	r14,r14,1
	.align 2
.L302:
	breq_s	r14,0,.L308
	asr_s	r13,r14,1
	mpy	r13,r13,r16
	add_s	r13,r13,r15   ;b,b,h
	mov_s	r2,r17	;4
	mov_s	r1,r13	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L306
	brle	r0,0,.L304
	add	r15,r13,r16 ;a,b,c/u6
	b.d	.L304
	add_s	r14,r14,-1   ;h,h,s3
	.align 4
.L308:
	mov_s	r0,0	;3
.L303:
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L306:
	b.d	.L303
	mov_s	r0,r13	;4
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
	push_s	blink
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
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
	push_s	blink
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
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
	.align 2
.L325:
	mov_s	r3,r0	;4
	ld.ab	r2,[r0,4]	;23
	breq_s	r2,0,.L324
	ld	r2,[r0,-4]	;23
	brne	r1,r2,.L325
	.align 2
.L324:
	ld_s	r2,[r3]		;15
	tst_s	r2,r2
	mov_s	r0,0	;3
	j_s.d	[blink]
	mov.ne	r0,r3
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	push_s	r13
	.align 2
.L332:
	mov_s	r12,r1	;4
	mov_s	r13,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld.ab	r2,[r1,4]	;23
	brne	r3,r2,.L331
	ld	r2,[r0,-4]	;23
	breq_s	r2,0,.L331
	ld	r2,[r1,-4]	;23
	brne_s	r2,0,.L332
	.align 2
.L331:
	ld_s	r3,[r13]		;15
	ld_s	r2,[r12]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
	j_s.d	[blink]
	pop_s	r13
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub2	r3,r0,1 ;a,b,u6
	.align 2
.L338:
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L338
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	mov_s	r2,r0	;4
	.align 2
.L344:
	mov_s	r12,r2	;4
	ld.ab	r3,[r2,4]	;23
	brne_s	r3,0,.L344
	sub_s	r0,r12,r0
	j_s.d	[blink]
	asr_s	r0,r0,2
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	push_s	r14
	push_s	r13
	.align 2
.L348:
	mov_s	r13,r1	;4
	breq.d	r2,0,.L349
	mov_s	r14,r0	;4
	ld_s	r12,[r0]		;15
	ld_s	r3,[r1]		;15
	brne	r12,r3,.L349
	ld.ab	r3,[r0,4]	;23
	breq_s	r3,0,.L349
	ld.ab	r3,[r1,4]	;23
	breq_s	r3,0,.L349
	b.d	.L348
	add_s	r2,r2,-1   ;h,h,s3
	.align 4
.L349:
	tst_s	r2,r2
	beq.d	.L351
	mov.eq	r0,0
	ld_s	r3,[r14]		;15
	ld_s	r2,[r13]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L351:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	b.d	.L362
	mov_s	r12,r0	;4
	.align 4
.L358:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r12,r0	;4
	.align 2
.L362:
	breq_s	r2,0,.L357
	ld.ab	r3,[r0,4]	;23
	brne	r1,r3,.L358
	.align 2
.L357:
	tst_s	r2,r2
	mov_s	r0,0	;3
	j_s.d	[blink]
	mov.ne	r0,r12
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	push_s	r14
	push_s	r13
	b.d	.L371
	mov_s	r13,r1	;4
	.align 4
.L366:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r13,r1	;4
	.align 2
.L371:
	breq.d	r2,0,.L365
	mov_s	r14,r0	;4
	ld.ab	r12,[r0,4]	;23
	ld.ab	r3,[r1,4]	;23
	breq	r12,r3,.L366
	.align 2
.L365:
	tst_s	r2,r2
	beq.d	.L367
	mov.eq	r0,0
	ld_s	r3,[r14]		;15
	ld_s	r2,[r13]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L367:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	b.d	.L373
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L379:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L373:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L379
	j_s	[blink]
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp_s	r0,r1
	jeq_s	[blink]
	sub_s	r3,r0,r1
	asl_s	r12,r2,2
	brlo	r3,r12,.L382
	b.d	.L383
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L382:
	add2_s	r1,r1,r2
	add2	r2,-4,r2
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L384
	sub2	r12,r0,1 ;a,b,u6
	.align 4
.L393:
	ld.a	r3,[r1,-4]	;23
	st.ab	r3,[r2,-4]	;26
	.align 2
.L384:
	brne	r2,r12,.L393
	j_s	[blink]
	.align 4
.L394:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L383:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L394
	j_s	[blink]
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	b.d	.L396
	mov_s	r3,r0	;4
	.align 4
.L402:
	st.ab	r1,[r3,4]	;26
	.align 2
.L396:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L402
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	brhs	r0,r1,.L404
	add_s	r3,r0,r2   ;a,b,c/u3
	b.d	.L405
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L416:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L405:
	brne	r3,r0,.L416
	j_s	[blink]
	.align 4
.L404:
	cmp_s	r0,r1
	jeq_s	[blink]
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L408
	mov_s	r3,r0	;4
	.align 4
.L417:
	ldb.ab	r12,[r3,1]
	stb.a	r12,[r1,1]
	.align 2
.L408:
	brne	r3,r2,.L417
	j_s	[blink]
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr_s	r12,r0
	not_s	r3,r2
	lsr_s	r12,r12,r3
	asl	r3,r1,r2
	or_s	r3,r3,r12
	asl	r12,r0,r2
	btst_s	r2,5
	mov_s	r13,r12	;4
	mov.eq	r13,r3
	mov_s	r3,r13	;4
	sub.ne	r12,r12,r12
	neg_s	r2,r2
	and	r13,r2,63
	asl_s	r14,r1,1
	not_s	r15,r13
	asl_s	r14,r14,r15
	lsr_s	r0,r0,r13
	or_s	r0,r0,r14
	lsr_s	r1,r1,r13
	btst_s	r2,5
	mov_s	r2,r1	;4
	mov.eq	r2,r0
	mov_s	r0,r2	;4
	sub.ne	r1,r1,r1
	or_s	r0,r0,r12
	or_s	r1,r1,r3
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
	asl_s	r12,r1,1
	not_s	r3,r2
	asl_s	r12,r12,r3
	lsr	r3,r0,r2
	or_s	r3,r3,r12
	lsr	r12,r1,r2
	btst_s	r2,5
	mov_s	r13,r12	;4
	mov.eq	r13,r3
	mov_s	r3,r13	;4
	sub.ne	r12,r12,r12
	neg_s	r2,r2
	and	r13,r2,63
	lsr_s	r14,r0
	not_s	r15,r13
	lsr_s	r14,r14,r15
	asl_s	r1,r1,r13
	or_s	r1,r1,r14
	asl_s	r0,r0,r13
	btst_s	r2,5
	mov_s	r2,r0	;4
	mov.eq	r2,r1
	mov_s	r1,r2	;4
	sub.ne	r0,r0,r0
	or_s	r0,r0,r3
	or_s	r1,r1,r12
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
	exth_s	r0,r0
	asl	r2,r0,r1
	rsub	r1,r1,16
	lsr_s	r0,r0,r1
	or_s	r0,r0,r2
	j_s.d	[blink]
	exth_s	r0,r0
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	exth_s	r0,r0
	lsr	r2,r0,r1
	rsub	r1,r1,16
	asl_s	r0,r0,r1
	or_s	r0,r0,r2
	j_s.d	[blink]
	exth_s	r0,r0
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	extb_s	r0,r0
	asl	r2,r0,r1
	rsub	r1,r1,8
	lsr_s	r0,r0,r1
	or_s	r0,r0,r2
	j_s.d	[blink]
	extb_s	r0,r0
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	extb_s	r0,r0
	lsr	r2,r0,r1
	rsub	r1,r1,8
	asl_s	r0,r0,r1
	or_s	r0,r0,r2
	j_s.d	[blink]
	extb_s	r0,r0
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	xbfu	r2,r0,232
	extb_s	r0,r0
	asl_s	r0,r0,8
	j_s.d	[blink]
	or_s	r0,r0,r2
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	lsr	r3,r0,24
	and	r2,r0,16711680
	lsr_s	r2,r2,8
	or_s	r2,r2,r3
	and	r3,r0,65280
	asl_s	r3,r3,8
	or_s	r2,r2,r3
	asl_s	r0,r0,24
	j_s.d	[blink]
	or_s	r0,r0,r2
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	lsr	r2,r1,24
	and	r12,r1,16711680
	lsr_s	r12,r12,8
	or_s	r12,r12,r2
	and	r2,r1,65280
	asl_s	r2,r2,8
	or_s	r12,r12,r2
	asl	r3,r1,24
	lsr	r1,r0,24
	and	r2,r0,16711680
	lsr_s	r2,r2,8
	or_s	r1,r1,r2
	and	r2,r0,65280
	asl_s	r2,r2,8
	or_s	r1,r1,r2
	asl	r2,r0,24
	or	r0,r12,r3
	j_s.d	[blink]
	or_s	r1,r1,r2
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	mov_s	r2,0	;3
	.align 2
.L445:
	breq	r2,32,.L450
	bbit1	r0,r2,@.L451
	b.d	.L445
	add_s	r2,r2,1   ;b,b,h
	.align 4
.L451:
	j_s.d	[blink]
	add_s	r0,r2,1   ;R0/R1,b,u6
	.align 4
.L450:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	bne.d	.L454
	mov.ne	r0,1
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L455:
	asr_s	r2,r2,1
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L454:
	bbit0	r2,0,@.L455
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
	bn.d	.L459
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L459:
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
	bn.d	.L464
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L464:
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
	bn.d	.L469
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L469:
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
	mov_s	r14,r1	;4
	bl.d	@__unordsf2;1
	mov_s	r1,r0
	brne_s	r0,0,.L476
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	mov_s	r1,r0
	bl.d	@__nesf2;1
	mov_s	r0,r15
	breq_s	r0,0,.L476
	tst_s	r14,r14
	mov_s	r13,0x3f000000 ; 5.0e-1
	mov.p	r13,0x40000000 ; 2.0e+0
	b_s	.L480
	.align 4
.L479:
	div	r14,r14,2
	breq_s	r14,0,.L476
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L480:
	bbit0	r14,0,@.L479
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L479
	mov_s	r15,r0
	.align 4
.L476:
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
	brne	r0,0,.L485
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L485
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L489
	.align 4
.L488:
	div	r13,r13,2
	.align 4
.L493:
	breq_s	r13,0,.L485
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L489:
	bbit0	r13,0,@.L488
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L493
	.align 4
.L485:
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
	brne	r0,0,.L495
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L495
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L499
	.align 4
.L498:
	div	r13,r13,2
	.align 4
.L503:
	breq_s	r13,0,.L495
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L499:
	bbit0	r13,0,@.L498
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L503
	.align 4
.L495:
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
	add_s	r2,r2,r1   ;b,b,h
	cmp_s	r1,r2
	jeq.d	[blink]
	mov_s	r12,r0	;4
	push_s	r13
	.align 2
.L506:
	ldb.ab	r3,[r1,1]
	ldb.ab	r13,[r12,1]
	xor_s	r3,r3,r13
	brne.d	r1,r2,.L506
	stb	r3,[r12,-1]
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
	mov_s	r15,r0	;4
	mov_s	r14,r1	;4
	bl.d	@strlen;1
	mov_s	r13,r2	;4
	sub	r1,r14,1 ;a,b,u6
	b.d	.L513
	add_s	r3,r15,r0   ;a,b,c/u3
	.align 4
.L515:
	add_s	r13,r13,-1   ;h,h,s3
	.align 2
.L513:
	breq.d	r13,0,.L514
	mov_s	r12,r3	;4
	ldb.a	r2,[r1,1]
	stb_s	r2,[r3]
	ldb.ab	r2,[r3,1]
	brne_s	r2,0,.L515
	.align 2
.L514:
	brne_s	r13,0,.L516
	stb	0,[r12]
	.align 2
.L516:
	mov_s	r0,r15	;4
	ld	blink,[sp,12]	;23
	pop_s	r13
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	sub	r3,r0,1 ;a,b,u6
	add_s	r1,r1,r0   ;b,b,h
	add_s	r1,r1,-1   ;h,h,s3
	rsub	r2,r0,1
	cmp_s	r3,r1
	.align 2
.L523:
	jeq.d	[blink]
	add_s	r0,r2,r3   ;a,b,c/u3
	ldb.a	r12,[r3,1]
	tst_s	r12,r12
	jeq_s	[blink]
	b.d	.L523
	cmp_s	r3,r1
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	push_s	r13
	.align 2
.L525:
	mov_s	r13,r0	;4
	ldb.ab	r2,[r0,1]
	breq_s	r2,0,.L530
	sub	r2,r1,1 ;a,b,u6
	.align 2
.L528:
	ldb.a	r3,[r2,1]
	breq_s	r3,0,.L525
	ldb_s	r12,[r2]
	ldb	r3,[r0,-1]
	brne	r12,r3,.L528
	mov_s	r0,r13	;4
.L526:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L530:
	b.d	.L526
	mov_s	r0,0	;3
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	.align 2
.L534:
	ldb_s	r3,[r2]
	cmp_s	r1,r3
	mov_s	r3,r2	;4
	mov.ne	r3,r0
	mov_s	r0,r3	;4
	ldb.ab	r3,[r2,1]
	brne_s	r3,0,.L534
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
	mov_s	r13,r0	;4
	mov_s	r14,r1	;4
	bl.d	@strlen;1
	mov_s	r0,r1	;4
	mov.f	r15,r0
	beq.d	.L541
	mov.eq	r0,r13
	ldb	r16,[r14]
	.align 2
.L542:
	mov_s	r1,r16	;4
	bl.d	@strchr;1
	mov_s	r0,r13	;4
	mov.f	r13,r0
	beq_s	.L541
	mov_s	r2,r15	;4
	mov_s	r1,r14	;4
	bl.d	@strncmp;1
	mov_s	r0,r13	;4
	breq_s	r0,0,.L545
	b.d	.L542
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L545:
	mov_s	r0,r13	;4
.L541:
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
	vadd2	r14,r0,0
	vadd2	r16,r2,0
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L561
	.align 2
.L548:
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L558
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L550
	vadd2	r0,r14,0
.L551:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L561:
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L548
	.align 2
.L550:
	mov_s	r0,r14	;4
	b.d	.L551
	bxor	r1,r15,31
	.align 4
.L558:
	vadd2	r0,r14,0
	b_s	.L551
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
	sub_s	r15,r1,r3
	breq.d	r3,0,.L563
	add_s	r15,r15,r0   ;b,b,h
	mov_s	r14,r2	;4
	cmp_s	r1,r3
	blo.d	.L563
	mov.lo	r0,0
	mov_s	r13,r0	;4
	add	r18,r2,1 ;a,b,c/u6
	sub	r16,r3,1 ;a,b,u6
	.align 2
.L564:
	brhi.d	r13,r15,.L571
	mov_s	r17,r13	;4
	ldb.ab	r12,[r13,1]
	ldb_s	r3,[r14]
	brne	r12,r3,.L564
	mov_s	r2,r16	;4
	mov_s	r1,r18	;4
	bl.d	@memcmp;1
	mov_s	r0,r13	;4
	brne_s	r0,0,.L564
	b.d	.L563
	mov_s	r0,r17	;4
	.align 4
.L571:
	mov_s	r0,0	;3
.L563:
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
	bl.d	@memcpy;1
	mov_s	r13,r2	;4
	add_s	r0,r0,r13   ;b,b,h
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
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
	mov_s	r2,0	;3
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	bn.d	.L595
	mov.p	r21,0
	.align 2
.L575:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L596
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	mov_s	r19,1071644672	;13
	b.d	.L577
	mov_s	r18,0	;4
	.align 4
.L595:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b.d	.L575
	mov_s	r21,1	;4
	.align 4
.L579:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r14,r0,0
	.align 2
.L577:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gedf2;1
	brge	r0,0,.L579
	.align 2
.L580:
	breq.d	r21,0,.L584
	st	r13,[r20]	;26
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L584:
	vadd2	r0,r14,0
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L596:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L580
	mov.p	r13,0
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	beq.d	.L580
	mov.eq	r13,0
	mov_s	r13,0	;3
	mov_s	r17,1071644672	;13
	b.d	.L582
	mov_s	r16,0	;4
	.align 4
.L583:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	.align 2
.L582:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	brlt	r0,0,.L583
	b_s	.L580
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r12,r2	;4
	mov_s	r15,r3	;4
	mov_s	r14,r0	;4
	mov_s	r13,r1	;4
	mov_s	r0,0	;3
	b.d	.L598
	mov_s	r1,0	;3
	.align 4
.L599:
	mov_s	r2,r14	;4
	bmsk_s	r2,r2,0
	mpy	r4,r15,r2
	mpydu	r2,r12,r2
	add_s	r3,r3,r4   ;b,b,h
	add.f	r12,r12,r12
	adc	r15,r15,r15
	lsr.f	r13,r13
	rrc	r14,r14
	add.f	r0,r0,r2
	adc	r1,r1,r3
	.align 2
.L598:
	or.f	0,r14,r13
	bne_s	.L599
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov_s	r12,r0	;4
	b.d	.L602
	mov_s	r3,1	;3
	.align 4
.L606:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L602:
	brhs	r1,r12,.L613
	breq_s	r3,0,.L610
	brge	r1,0,.L606
	b.d	.L604
	mov_s	r0,0	;3
	.align 4
.L613:
	b.d	.L604
	mov_s	r0,0	;3
	.align 4
.L610:
	b.d	.L604
	mov_s	r0,0	;3
	.align 4
.L608:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	lsr_s	r1,r1
	.align 2
.L604:
	brne_s	r3,0,.L608
	tst_s	r2,r2
	j_s.d	[blink]
	mov.ne	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L616
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L616:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	asr	r2,r1,31
	xor_s	r0,r0,r2
	xor_s	r1,r1,r2
	or.f	0,r0,r1
	beq_s	.L623
	fls	r0,r0
	breq.d	r1,0,.L622
	rsub	r0,r0,63
	fls	r1,r1
	rsub	r0,r1,31
	.align 2
.L622:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L623:
	j_s.d	[blink]
	mov_s	r0,63	;3
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_s	r2,r0	;4
	b.d	.L626
	mov_s	r0,0	;3
	.align 4
.L632:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	lsr_s	r2,r2
	add_s	r0,r0,r3   ;b,b,h
	asl_s	r1,r1,1
	.align 2
.L626:
	brne_s	r2,0,.L632
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r15,r2,3
	brlo.d	r0,r1,.L634
	bmskn	r12,r2,2
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L635
	.align 2
.L634:
	sub3	r14,r1,1 ;a,b,u6
	sub3	r13,r0,1 ;a,b,u6
	b.d	.L636
	mov_s	r3,0	;3
	.align 4
.L635:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L637
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L638:
	ldd.a	r4,[r14,8]
	std.a	r4,[r13,8]
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L636:
	brne	r3,r15,.L638
	add_s	r12,r12,-1   ;h,h,s3
	add_s	r3,r1,r12   ;a,b,c/u3
	add_s	r0,r0,r12   ;b,b,h
	b.d	.L639
	rsub	r1,r1,1
	.align 4
.L640:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L639:
	add_s	r12,r1,r3   ;a,b,c/u3
	brhi	r2,r12,.L640
	.align 2
.L633:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L642:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L637:
	brne	r3,r1,.L642
	b_s	.L633
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brlo.d	r0,r1,.L645
	lsr_s	r14,r2
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L646
	.align 2
.L645:
	sub1	r3,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	b.d	.L647
	add1	r14,r3,r14
	.align 4
.L646:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L648
	add_s	r2,r2,r0   ;b,b,h
	.align 4
.L649:
	ldh.x.a	r13,[r3,2]
	sth.a	r13,[r12,2]
	.align 2
.L647:
	brne	r3,r14,.L649
	bbit0	r2,0,@.L644
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r1,r1,r2   ;b,b,h
	add_s	r2,r2,r0   ;b,b,h
	ldb_s	r3,[r1]
	stb_s	r3,[r2]
	.align 2
.L644:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L651:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L648:
	brne	r3,r1,.L651
	b_s	.L644
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r15,r2,2
	brlo.d	r0,r1,.L654
	bmskn	r12,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L655
	.align 2
.L654:
	sub2	r3,r1,1 ;a,b,u6
	sub2	r13,r0,1 ;a,b,u6
	b.d	.L656
	add2	r15,r3,r15
	.align 4
.L655:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L657
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L658:
	ld.a	r14,[r3,4]	;23
	st.a	r14,[r13,4]	;26
	.align 2
.L656:
	brne	r3,r15,.L658
	add_s	r12,r12,-1   ;h,h,s3
	add_s	r3,r1,r12   ;a,b,c/u3
	add_s	r0,r0,r12   ;b,b,h
	b.d	.L659
	rsub	r1,r1,1
	.align 4
.L660:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L659:
	add_s	r12,r1,r3   ;a,b,c/u3
	brhi	r2,r12,.L660
	.align 2
.L653:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L662:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L657:
	brne	r3,r1,.L662
	b_s	.L653
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
	exth_s	r3,r0
	mov_s	r0,0	;3
	.align 2
.L677:
	cmp_s	r0,16
	jeq_s	[blink]
	rsub	r2,r0,15
	bbit1	r3,r2,@.L681
	b.d	.L677
	add_s	r0,r0,1   ;b,b,h
	.align 4
.L681:
	j_s	[blink]
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	exth_s	r2,r0
	mov_s	r0,0	;3
	.align 2
.L683:
	cmp_s	r0,16
	jeq_s	[blink]
	bbit1	r2,r0,@.L687
	b.d	.L683
	add_s	r0,r0,1   ;b,b,h
	.align 4
.L687:
	j_s	[blink]
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
	brge	r0,0,.L695
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L691:
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L695:
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L691
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	exth_s	r12,r0
	mov_s	r0,0	;3
	b.d	.L697
	mov_s	r2,0	;3
	.align 4
.L698:
	asr	r3,r12,r2
	bmsk_s	r3,r3,0
	add_s	r2,r2,1   ;b,b,h
	add_s	r0,r0,r3   ;b,b,h
	.align 2
.L697:
	brne	r2,16,.L698
	j_s.d	[blink]
	bmsk_s	r0,r0,0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	exth_s	r12,r0
	mov_s	r0,0	;3
	b.d	.L701
	mov_s	r2,0	;3
	.align 4
.L707:
	asr	r3,r12,r2
	bmsk_s	r3,r3,0
	add_s	r2,r2,1   ;b,b,h
	add_s	r0,r0,r3   ;b,b,h
	.align 2
.L701:
	brne	r2,16,.L707
	j_s	[blink]
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_s	r2,r0	;4
	b.d	.L709
	mov_s	r0,0	;3
	.align 4
.L715:
	and	r3,r2,1
	mpy_s	r3,r3,r1
	lsr_s	r2,r2
	add_s	r0,r0,r3   ;b,b,h
	asl_s	r1,r1,1
	.align 2
.L709:
	brne_s	r2,0,.L715
	j_s	[blink]
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov.f	r3,r0
	bne.d	.L718
	sub_s.ne	r0,r0,r0
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L725:
	and	r2,r1,1
	mpy_s	r2,r2,r3
	lsr_s	r1,r1
	add_s	r0,r0,r2   ;b,b,h
	asl_s	r3,r3,1
	.align 2
.L718:
	brne_s	r1,0,.L725
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov_s	r12,r0	;4
	b.d	.L727
	mov_s	r3,1	;3
	.align 4
.L731:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L727:
	brhs	r1,r12,.L738
	breq_s	r3,0,.L735
	brge	r1,0,.L731
	b.d	.L729
	mov_s	r0,0	;3
	.align 4
.L738:
	b.d	.L729
	mov_s	r0,0	;3
	.align 4
.L735:
	b.d	.L729
	mov_s	r0,0	;3
	.align 4
.L733:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	lsr_s	r1,r1
	.align 2
.L729:
	brne_s	r3,0,.L733
	tst_s	r2,r2
	j_s.d	[blink]
	mov.ne	r0,r12
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
	bn	.L740
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L740:
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
	bn	.L745
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L745:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	asr	r2,r0,31
	asr	r3,r1,31
	mpy_s	r2,r2,r1
	mpy_s	r3,r3,r0
	add_s	r2,r2,r3   ;b,b,h
	mpydu	r0,r0,r1
	j_s.d	[blink]
	add_s	r1,r1,r2   ;b,b,h
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
	neg.n	r1,r1
	mov.n	r13,1
	mov.p	r13,0
	mov_s	r2,33	;3
	b.d	.L755
	mov_s	r12,0	;3
	.align 4
.L757:
	and	r3,r1,1
	mpy_s	r3,r3,r0
	asr_s	r1,r1,1
	add_s	r12,r12,r3   ;b,b,h
	asl_s	r0,r0,1
	.align 2
.L755:
	breq_s	r1,0,.L756
	add_s	r2,r2,-1   ;h,h,s3
	extb.f	r2,r2
	bne_s	.L757
	.align 2
.L756:
	neg_s	r0,r12
	tst_s	r13,r13
	mov.eq	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push_s	blink
	push_s	r13
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
	tst_s	r0,r0
	neg.n	r0,r0
	mov.n	r13,1
	mov.p	r13,0
	mov_s	r2,1	;3
	bl.d	@__udivmodsi4;1
	abs_s	r1,r1
	tst_s	r13,r13
	neg.ne	r0,r0
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	push_s	r13
	exth_s	r12,r0
	exth_s	r1,r1
	mov_s	r13,17	;3
	mov_s	r3,1	;3
	.align 2
.L774:
	brhs	r1,r12,.L785
	add.f	r13,r13,-1
	beq_s	.L782
	btst_s	r1,15
	bne_s	.L786
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	b.d	.L774
	exth_s	r3,r3
	.align 4
.L785:
	b.d	.L776
	mov_s	r0,0	;3
	.align 4
.L782:
	b.d	.L776
	mov_s	r0,0	;3
	.align 4
.L786:
	b.d	.L776
	mov_s	r0,0	;3
	.align 4
.L780:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	bmsk.hs	r12,r12,15
	or.hs r0,r0,r3
	lsr_s	r3,r3
	lsr_s	r1,r1
	.align 2
.L776:
	brne_s	r3,0,.L780
	tst_s	r2,r2
	mov.ne	r0,r12
	j_s.d	[blink]
	pop_s	r13
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov_s	r12,r0	;4
	b.d	.L788
	mov_s	r3,1	;3
	.align 4
.L792:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L788:
	brhs	r1,r12,.L799
	breq_s	r3,0,.L796
	brge	r1,0,.L792
	b.d	.L790
	mov_s	r0,0	;3
	.align 4
.L799:
	b.d	.L790
	mov_s	r0,0	;3
	.align 4
.L796:
	b.d	.L790
	mov_s	r0,0	;3
	.align 4
.L794:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	lsr_s	r1,r1
	.align 2
.L790:
	brne_s	r3,0,.L794
	tst_s	r2,r2
	j_s.d	[blink]
	mov.ne	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	bbit0.d	r2,5,@.L801
	mov_s	r12,r0	;4
	asl	r1,r12,r2
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L801:
	push_s	r13
	breq.d	r2,0,.L803
	mov_s	r13,r1	;4
	asl	r0,r12,r2
	asl_s	r13,r13,r2
	rsub	r2,r2,32
	lsr_s	r12,r12,r2
	or	r1,r12,r13
.L803:
	j_s.d	[blink]
	pop_s	r13
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	bbit0.d	r2,5,@.L809
	mov_s	r12,r1	;4
	asr	r0,r12,r2
	j_s.d	[blink]
	asr_s	r1,r1,31
	.align 4
.L809:
	push_s	r13
	breq.d	r2,0,.L811
	mov_s	r13,r0	;4
	asr_s	r1,r1,r2
	rsub	r3,r2,32
	asl_s	r12,r12,r3
	lsr_s	r13,r13,r2
	or	r0,r12,r13
.L811:
	j_s.d	[blink]
	pop_s	r13
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r3,r1,24
	lsr	r15,r1,8
	and	r15,r15,65280
	asl	r14,r1,8
	and	r14,r14,16711680
	asl_s	r1,r1,24
	asl	r12,r0,8
	lsr	r4,r0,24
	lsr	r13,r0,8
	asl	r2,r0,24
	and	r13,r13,65280
	and	r12,r12,16711680
	or	r0,r3,r15
	or_s	r0,r0,r14
	or	r2,r2,r4
	or_s	r2,r2,r13
	or_s	r0,r0,r1
	or	r1,r2,r12
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	lsr	r12,r0,24
	lsr	r3,r0,8
	and	r3,r3,65280
	asl	r2,r0,8
	and	r2,r2,16711680
	asl_s	r0,r0,24
	or_s	r0,r0,r12
	or_s	r0,r0,r3
	j_s.d	[blink]
	or_s	r0,r0,r2
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	push_s	r13
	seths	r12,65535,r0
	asl_s	r12,r12,4
	rsub	r2,r12,16
	lsr	r2,r0,r2
	and	r3,r2,65280
	seteq	r3,r3,0
	sub3	r13,8,r3
	lsr_s	r2,r2,r13
	add3	r3,r12,r3
	and	r12,r2,240
	seteq	r12,r12,0
	sub2	r13,4,r12
	lsr_s	r2,r2,r13
	add2_s	r3,r3,r12
	and	r12,r2,12
	seteq	r12,r12,0
	sub1	r13,2,r12
	lsr_s	r2,r2,r13
	add1_s	r3,r3,r12
	and	r0,r2,2
	seteq	r0,r0,0
	rsub	r2,r2,2
	mpy_s	r0,r0,r2
	add_s	r0,r0,r3   ;b,b,h
	j_s.d	[blink]
	pop_s	r13
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	push_s	r14
	push_s	r13
	mov_s	r13,r2	;4
	cmp_s	r1,r3
	blt.d	.L823
	mov.lt	r0,0
	mov_s	r14,r0	;4
	cmp_s	r1,r3
	bgt.d	.L823
	mov.gt	r0,2
	cmp_s	r14,r13
	blo.d	.L823
	mov.lo	r0,0
	cmp_s	r14,r13
	mov_s	r0,1	;3
	mov.hi	r0,2
.L823:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	push_s	blink
	bl	@__cmpdi2;1
	add_s	r0,r0,-1   ;h,h,s3
	pop_s	blink
	j_s	[blink]
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	exth_s	r2,r0
	seteq	r2,r2,0
	asl_s	r2,r2,4
	lsr_s	r0,r0,r2
	extb_s	r3,r0
	seteq	r3,r3,0
	asl_s	r3,r3,3
	lsr_s	r0,r0,r3
	add_s	r2,r2,r3   ;b,b,h
	and	r3,r0,15
	seteq	r3,r3,0
	asl_s	r3,r3,2
	lsr_s	r0,r0,r3
	add_s	r2,r2,r3   ;b,b,h
	and	r3,r0,3
	seteq	r3,r3,0
	asl_s	r3,r3,1
	lsr_s	r0,r0,r3
	bmsk_s	r0,r0,1
	add_s	r2,r2,r3   ;b,b,h
	bic	r3,1,r0    ;;constraint 6
	lsr_s	r0,r0
	rsub	r0,r0,2
	mpy_s	r0,r0,r3
	j_s.d	[blink]
	add_s	r0,r0,r2   ;b,b,h
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	bbit0.d	r2,5,@.L834
	mov_s	r12,r1	;4
	lsr	r0,r12,r2
	j_s.d	[blink]
	mov_s	r1,0	;3
	.align 4
.L834:
	push_s	r13
	breq.d	r2,0,.L836
	mov_s	r13,r0	;4
	lsr_s	r1,r1,r2
	rsub	r3,r2,32
	asl_s	r12,r12,r3
	lsr_s	r13,r13,r2
	or	r0,r12,r13
.L836:
	j_s.d	[blink]
	pop_s	r13
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	push_s	r14
	push_s	r13
	exth_s	r13,r0
	exth_s	r14,r1
	mpy	r12,r13,r14
	lsr	r2,r12,16
	lsr	r3,r0,16
	mpy_s	r14,r14,r3
	add_s	r2,r2,r14   ;b,b,h
	lsr	r14,r2,16
	exth_s	r2,r2
	exth_s	r12,r12
	lsr_s	r1,r1,16
	mpy_s	r13,r13,r1
	add_s	r2,r2,r13   ;b,b,h
	asl	r0,r2,16
	lsr_s	r2,r2,16
	add_s	r2,r2,r14   ;b,b,h
	mpy_s	r1,r1,r3
	add_s	r0,r0,r12   ;b,b,h
	add_s	r1,r1,r2   ;b,b,h
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r13,r1	;4
	mov_s	r1,r2	;4
	mov_s	r14,r3	;4
	mov_s	r15,r0	;4
	bl.d	@__muldsi3;1
	mov_s	r16,r2	;4
	vadd2	r2,r0,0
	mov_s	r1,r3	;4
	mpy	r13,r13,r16
	mpy_s	r14,r14,r15
	add_s	r13,r13,r14   ;b,b,h
	add_s	r1,r1,r13   ;b,b,h
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s.d	[blink]
	ld.ab	r16,[sp,8]	;23
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	mov_s	r3,r1	;4
	mov_s	r1,0	;3
	sub.f	r0,r1,r0
	j_s.d	[blink]
	sbc	r1,r1,r3
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	mov_s	r2,r0	;4
	mov_s	r0,r1	;4
	xor_s	r0,r0,r2
	lsr	r2,r0,16
	xor_s	r0,r0,r2
	lsr	r2,r0,8
	xor_s	r0,r0,r2
	lsr	r2,r0,4
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
	xor_s	r0,r0,r2
	lsr	r2,r0,4
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
	std.a	r14,[sp,-8]
	push_s	r13
	lsr.f	r3,r1
	rrc	r2,r0
	and	r2,r2,1431655765
	and	r3,r3,1431655765
	sub.f	r2,r0,r2
	sbc	r12,r1,r3
	mov_s	r3,r12	;4
	lsr	r14,r2,2
	lsr_s	r3,r3,2
	and	r13,r14,858993459
	and	r15,r3,858993459
	and	r14,r2,858993459
	and	r3,r12,858993459
	add.f	r2,r13,r14
	adc	r3,r15,r3
	asl	r14,r3,28
	lsr	r12,r2,4
	or_s	r12,r12,r14
	lsr	r13,r3,4
	add.f	r12,r12,r2
	adc	r13,r13,r3
	and	r2,r12,252645135
	and	r3,r13,252645135
	add_s	r3,r3,r2   ;b,b,h
	lsr	r2,r3,16
	add_s	r3,r3,r2   ;b,b,h
	lsr	r0,r3,8
	add_s	r0,r0,r3   ;b,b,h
	bmsk_s	r0,r0,6
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
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
	mov_s	r13,r2	;4
	lsr	r18,r2,31
	mov_s	r17,1072693248	;13
	b.d	.L858
	mov_s	r16,0	;4
	.align 4
.L856:
	div	r13,r13,2
	.align 4
.L862:
	breq_s	r13,0,.L857
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L858:
	bbit0	r13,0,@.L856
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L862
	.align 4
.L857:
	vadd2	r0,r16,0
	breq	r18,0,.L859
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
.L859:
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
	mov_s	r13,r0
	mov_s	r14,r1	;4
	mov_s	r15,0x3f800000 ; 1.0e+0
	b.d	.L866
	lsr	r16,r1,31
	.align 4
.L864:
	div	r14,r14,2
	breq_s	r14,0,.L865
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L866:
	bbit0	r14,0,@.L864
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L864
	mov_s	r15,r0
	.align 4
.L865:
	tst	r16,r16
	mov.eq	r0,r15
	mov.ne	r1,r15
	mov.ne	r0,0x3f800000 ; 1.0e+0
	jlne	@__divsf3
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
	push_s	r14
	push_s	r13
	mov_s	r13,r2	;4
	cmp_s	r1,r3
	blo.d	.L871
	mov.lo	r0,0
	mov_s	r14,r0	;4
	cmp_s	r1,r3
	bhi.d	.L871
	mov.hi	r0,2
	cmp_s	r14,r13
	blo.d	.L871
	mov.lo	r0,0
	cmp_s	r14,r13
	mov_s	r0,1	;3
	mov.hi	r0,2
.L871:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	push_s	blink
	bl	@__ucmpdi2;1
	add_s	r0,r0,-1   ;h,h,s3
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
