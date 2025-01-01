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
	brls	r0,31,.L139
	add	r2,r0,-127     ;a,b,limm
	brls	r2,32,.L140
	add	r2,r0,-8232     ;a,b,limm
	brls	r2,1,.L141
	add_s	r0,r0,-65529   ;b,b,limm
	j_s.d	[blink]
	setlo	r0,r0,3
	.align 4
.L139:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L140:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L141:
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
	brls	r0,254,.L155
	brls	r0,8231,.L149
	add	r2,r0,-8234     ;a,b,limm
	brls	r2,47061,.L150
	add	r2,r0,-57344     ;a,b,limm
	brls	r2,8184,.L151
	add	r2,r0,-65532     ;a,b,limm
	brhi	r2,1048579,.L152
	and	r0,r0,65534
	setne	r0,r0,65534
	j_s	[blink]
	.align 4
.L155:
	add_s	r0,r0,1   ;b,b,h
	bmsk_s	r0,r0,6
	j_s.d	[blink]
	seths	r0,r0,33
	.align 4
.L149:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L150:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L151:
	j_s.d	[blink]
	mov_s	r0,1	;3
	.align 4
.L152:
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
	brne_s	r0,0,.L166
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__unorddf2;1
	brne_s	r0,0,.L167
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	cmp_s	r0,0
	mov.le	r0,0
	ble.d	.L164
	mov.le	r1,0
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__subdf3;1
.L164:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L166:
	vadd2	r0,r14,0
	b_s	.L164
	.align 4
.L167:
	vadd2	r0,r16,0
	b_s	.L164
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
	bne.d	.L173
	mov.ne	r0,r13
	mov_s	r1,r14
	bl.d	@__unordsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	bne.d	.L173
	mov.ne	r0,r14
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	cmp_s	r0,0
	mov.le	r0,0x00000000
	mov.gt	r1,r14
	mov.gt	r0,r13
	jlgt	@__subsf3
.L173:
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
	brne	r0,0,.L185
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L186
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L183
	mov_s	r2,r17	;4
	tst_s	r2,r2
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L182:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L183:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L182
	.align 4
.L185:
	vadd2	r0,r14,0
	b_s	.L182
	.align 4
.L186:
	vadd2	r0,r16,0
	b_s	.L182
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
	bne.d	.L192
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L192
	mov.ne	r0,r14
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L193
	tst_s	r14,r14
	mov.p	r13,r14
	mov_s	r0,r13
.L192:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L193:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r14,r13
	b.d	.L192
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
	brne	r0,0,.L205
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L206
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L203
	mov_s	r2,r17	;4
	tst_s	r2,r2
	mov.p	r14,r16
	mov.p	r15,r17
	vadd2	r0,r14,0
.L202:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L203:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	vadd2	r0,r16,0
	mov.n	r0,r14
	mov.n	r1,r15
	b_s	.L202
	.align 4
.L205:
	vadd2	r0,r14,0
	b_s	.L202
	.align 4
.L206:
	vadd2	r0,r16,0
	b_s	.L202
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
	brne	r0,0,.L215
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L216
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L213
	mov_s	r2,r17	;4
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L212:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L213:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L212
	.align 4
.L215:
	vadd2	r0,r14,0
	b_s	.L212
	.align 4
.L216:
	vadd2	r0,r16,0
	b_s	.L212
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
	bne.d	.L222
	mov.ne	r0,r13
	mov_s	r1,r13
	bl.d	@__unordsf2;1
	mov_s	r0,r13
	tst_s	r0,r0
	bne.d	.L222
	mov.ne	r0,r14
	mov_s	r3,r14	;4
	bmskn	r3,r3,30
	mov_s	r2,r13	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L223
	tst_s	r14,r14
	mov.p	r14,r13
	mov_s	r0,r14
.L222:
	ld	blink,[sp,8]	;23
	pop_s	r13
	j_s.d	[blink]
	ld.ab	r14,[sp,8]	;23
	.align 4
.L223:
	mov_s	r1,r13
	bl.d	@__ltsf2;1
	mov_s	r0,r14
	tst_s	r0,r0
	mov.n	r13,r14
	b.d	.L222
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
	brne	r0,0,.L235
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__unorddf2;1
	brne	r0,0,.L236
	mov_s	r3,r17	;4
	bmskn	r3,r3,30
	mov_s	r2,r15	;4
	bmskn	r2,r2,30
	breq	r3,r2,.L233
	mov_s	r2,r17	;4
	tst_s	r2,r2
	vadd2	r0,r16,0
	mov.p	r0,r14
	mov.p	r1,r15
.L232:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L233:
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl	@__ltdf2;1
	tst_s	r0,r0
	mov.n	r14,r16
	mov.n	r15,r17
	vadd2	r0,r14,0
	b_s	.L232
	.align 4
.L235:
	vadd2	r0,r14,0
	b_s	.L232
	.align 4
.L236:
	vadd2	r0,r16,0
	b_s	.L232
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
	b_s	.L242
	.align 4
.L243:
	and	r3,r0,63
	ldb	r3,[r3,@digits]
	stb.ab	r3,[r2,1]
	lsr_s	r0,r0,6
	.align 2
.L242:
	brne_s	r0,0,.L243
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
	sub	r2,r0,1 ;a,b,u6
	mov_s	r3,0	;3
	std	r2,[@seed]
	j_s	[blink]
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	push_s	r14
	push_s	r13
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
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	breq_s	r1,0,.L253
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
.L253:
	st	0,[r0,4]	;37
	st	0,[r0]	;37
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	ld_s	r2,[r0]		;15
	breq_s	r2,0,.L255
	ld_s	r3,[r0,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L255:
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
	b.d	.L259
	mov_s	r13,0	;3
	.align 4
.L260:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L259:
	breq	r13,r16,.L264
	mov_s	r1,r14	;4
	jl.d	[r18]
	mov_s	r0,r17	;4
	brne.d	r0,0,.L260
	add_s	r14,r14,r15   ;b,b,h
	mpy_s	r13,r13,r15
	b.d	.L261
	add	r0,r19,r13 ;a,b,c/u6
	.align 4
.L264:
	add	r2,r16,1 ;a,b,c/u6
	st	r2,[r20]	;26
	mpy	r16,r16,r15
	mov_s	r2,r15	;4
	mov_s	r1,r17	;4
	bl.d	@memcpy;1
	add	r0,r19,r16 ;a,b,c/u6
.L261:
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
	b.d	.L266
	mov_s	r13,0	;3
	.align 4
.L267:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L266:
	breq	r13,r18,.L271
	mov_s	r1,r14	;4
	jl.d	[r16]
	mov_s	r0,r17	;4
	brne.d	r0,0,.L267
	add_s	r14,r14,r15   ;b,b,h
	mpy_s	r13,r13,r15
	b.d	.L268
	add	r0,r19,r13 ;a,b,c/u6
	.align 4
.L271:
	mov_s	r0,0	;3
.L268:
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
.L275:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L275
	ldb_s	r2,[r13]
	breq	r2,43,.L281
	cmp_s	r2,45
	beq.d	.L276
	mov.eq	r12,1
	b.d	.L277
	mov_s	r12,0	;3
	.align 4
.L281:
	mov_s	r12,0	;3
	.align 2
.L276:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L277:
	sub	r2,r13,1 ;a,b,u6
	b.d	.L278
	mov_s	r0,0	;3
	.align 4
.L279:
	mpy	r0,r0,10
	ldb_s	r3,[r2]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L278:
	ldb.a	r3,[r2,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L279
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
.L287:
	mov_s	r13,r14	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r14,1]
	brne_s	r0,0,.L287
	ldb_s	r2,[r13]
	breq	r2,43,.L293
	cmp_s	r2,45
	beq.d	.L288
	mov.eq	r12,1
	b.d	.L289
	mov_s	r12,0	;3
	.align 4
.L293:
	mov_s	r12,0	;3
	.align 2
.L288:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L289:
	sub	r2,r13,1 ;a,b,u6
	b.d	.L290
	mov_s	r0,0	;3
	.align 4
.L291:
	mpy	r0,r0,10
	ldb_s	r3,[r2]
	sub3	r3,r3,6 ;a,b,u6
	sub_s	r0,r0,r3
	.align 2
.L290:
	ldb.a	r3,[r2,1]
	sub3	r3,r3,6 ;a,b,u6
	brls	r3,9,.L291
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
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	mov_s	r16,r0	;4
	.align 2
.L299:
	mov_s	r13,r16	;4
	bl.d	@isspace;1
	ldb.ab	r0,[r16,1]
	brne_s	r0,0,.L299
	ldb_s	r2,[r13]
	breq	r2,43,.L305
	cmp_s	r2,45
	beq.d	.L300
	mov.eq	r4,1
	b.d	.L301
	mov_s	r4,0	;4
	.align 4
.L305:
	mov_s	r4,0	;4
	.align 2
.L300:
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L301:
	sub	r0,r13,1 ;a,b,u6
	mov_s	r12,0	;3
	b.d	.L302
	mov_s	r13,0	;3
	.align 4
.L303:
	mpy	r1,r13,10
	mpydu	r2,r12,10
	add_s	r3,r3,r1   ;b,b,h
	ldb_s	r1,[r0]
	sub3	r1,r1,6 ;a,b,u6
	asr	r15,r1,31
	sub.f	r12,r2,r1
	sbc	r13,r3,r15
	.align 2
.L302:
	ldb.a	r2,[r0,1]
	sub3	r2,r2,6 ;a,b,u6
	brls	r2,9,.L303
	vadd2	r0,r12,0
	brne	r4,0,.L304
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	sub.f	r0,r2,r12
	sbc	r1,r3,r13
.L304:
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
	mov_s	r18,r0	;4
	mov_s	r16,r1	;4
	mov_s	r14,r2	;4
	mov_s	r15,r3	;4
	mov_s	r17,r4	;4
	.align 2
.L311:
	breq_s	r14,0,.L318
	lsr_s	r13,r14
	mpy_s	r13,r13,r15
	add_s	r13,r13,r16   ;b,b,h
	mov_s	r1,r13	;4
	jl.d	[r17]
	mov_s	r0,r18	;4
	tst_s	r0,r0
	bn.d	.L311
	lsr.n	r14,r14,1
	brle	r0,0,.L316
	add	r16,r13,r15 ;a,b,c/u6
	lsr_s	r2,r14
	add_s	r14,r14,-1   ;h,h,s3
	b.d	.L311
	sub_s	r14,r14,r2
	.align 4
.L318:
	mov_s	r0,0	;3
.L314:
	ld	blink,[sp,24]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	j_s.d	[blink]
	ld.ab	r18,[sp,8]	;23
	.align 4
.L316:
	b.d	.L314
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
	b.d	.L320
	mov_s	r15,r1	;4
	.align 4
.L322:
	asr_s	r14,r14,1
	.align 2
.L320:
	breq_s	r14,0,.L326
	asr_s	r13,r14,1
	mpy	r13,r13,r16
	add_s	r13,r13,r15   ;b,b,h
	mov_s	r2,r17	;4
	mov_s	r1,r13	;4
	jl.d	[r18]
	mov_s	r0,r19	;4
	breq_s	r0,0,.L324
	brle	r0,0,.L322
	add	r15,r13,r16 ;a,b,c/u6
	b.d	.L322
	add_s	r14,r14,-1   ;h,h,s3
	.align 4
.L326:
	mov_s	r0,0	;3
.L321:
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.align 4
.L324:
	b.d	.L321
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
	push_s	r13
	asr	r2,r1,31
	xor	r12,r2,r0
	xor	r13,r2,r1
	sub.f	r0,r12,r2
	sbc	r1,r13,r2
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
	push_s	r13
	asr	r2,r1,31
	xor	r12,r2,r0
	xor	r13,r2,r1
	sub.f	r0,r12,r2
	sbc	r1,r13,r2
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
.L343:
	mov_s	r3,r0	;4
	ld.ab	r2,[r0,4]	;23
	breq_s	r2,0,.L342
	ld	r2,[r0,-4]	;23
	brne	r1,r2,.L343
	.align 2
.L342:
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
.L350:
	mov_s	r12,r1	;4
	mov_s	r13,r0	;4
	ld.ab	r3,[r0,4]	;23
	ld.ab	r2,[r1,4]	;23
	brne	r3,r2,.L349
	ld	r2,[r0,-4]	;23
	breq_s	r2,0,.L349
	ld	r2,[r1,-4]	;23
	brne_s	r2,0,.L350
	.align 2
.L349:
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
.L356:
	ld.ab	r2,[r1,4]	;23
	brne.d	r2,0,.L356
	st.a	r2,[r3,4]	;26
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	mov_s	r2,r0	;4
	.align 2
.L362:
	mov_s	r12,r2	;4
	ld.ab	r3,[r2,4]	;23
	brne_s	r3,0,.L362
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
.L366:
	mov_s	r13,r1	;4
	breq.d	r2,0,.L367
	mov_s	r14,r0	;4
	ld_s	r12,[r0]		;15
	ld_s	r3,[r1]		;15
	brne	r12,r3,.L367
	ld.ab	r3,[r0,4]	;23
	breq_s	r3,0,.L367
	ld.ab	r3,[r1,4]	;23
	breq_s	r3,0,.L367
	b.d	.L366
	add_s	r2,r2,-1   ;h,h,s3
	.align 4
.L367:
	tst_s	r2,r2
	beq.d	.L369
	mov.eq	r0,0
	ld_s	r3,[r14]		;15
	ld_s	r2,[r13]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L369:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	b.d	.L380
	mov_s	r12,r0	;4
	.align 4
.L376:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r12,r0	;4
	.align 2
.L380:
	breq_s	r2,0,.L375
	ld.ab	r3,[r0,4]	;23
	brne	r1,r3,.L376
	.align 2
.L375:
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
	b.d	.L389
	mov_s	r13,r1	;4
	.align 4
.L384:
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r13,r1	;4
	.align 2
.L389:
	breq.d	r2,0,.L383
	mov_s	r14,r0	;4
	ld.ab	r12,[r0,4]	;23
	ld.ab	r3,[r1,4]	;23
	breq	r12,r3,.L384
	.align 2
.L383:
	tst_s	r2,r2
	beq.d	.L385
	mov.eq	r0,0
	ld_s	r3,[r14]		;15
	ld_s	r2,[r13]		;15
	cmp_s	r3,r2
	mov.ge	r0,r3
	setgt.ge	r0,r0,r2
	mov.lt	r0,-1
.L385:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	b.d	.L391
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L397:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L391:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L397
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
	brlo	r3,r12,.L400
	b.d	.L401
	sub2	r3,r0,1 ;a,b,u6
	.align 4
.L400:
	add2_s	r1,r1,r2
	add2	r2,-4,r2
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L402
	sub2	r12,r0,1 ;a,b,u6
	.align 4
.L411:
	ld.a	r3,[r1,-4]	;23
	st.ab	r3,[r2,-4]	;26
	.align 2
.L402:
	brne	r2,r12,.L411
	j_s	[blink]
	.align 4
.L412:
	ld.ab	r12,[r1,4]	;23
	st.a	r12,[r3,4]	;26
	.align 2
.L401:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L412
	j_s	[blink]
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	b.d	.L414
	mov_s	r3,r0	;4
	.align 4
.L420:
	st.ab	r1,[r3,4]	;26
	.align 2
.L414:
	add_s	r2,r2,-1   ;h,h,s3
	brne	r2,-1,.L420
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	brhs	r0,r1,.L422
	add_s	r3,r0,r2   ;a,b,c/u3
	b.d	.L423
	add_s	r1,r1,r2   ;b,b,h
	.align 4
.L434:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r1,-1]
	.align 2
.L423:
	brne	r3,r0,.L434
	j_s	[blink]
	.align 4
.L422:
	cmp_s	r0,r1
	jeq_s	[blink]
	add_s	r1,r1,-1   ;h,h,s3
	add_s	r2,r2,r0   ;b,b,h
	b.d	.L426
	mov_s	r3,r0	;4
	.align 4
.L435:
	ldb.ab	r12,[r3,1]
	stb.a	r12,[r1,1]
	.align 2
.L426:
	brne	r3,r2,.L435
	j_s	[blink]
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	std.a	r14,[sp,-8]
	push_s	r13
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
	std.a	r14,[sp,-8]
	push_s	r13
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
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	mov_s	r2,0	;3
	.align 2
.L463:
	breq	r2,32,.L468
	bbit1	r0,r2,@.L469
	b.d	.L463
	add_s	r2,r2,1   ;b,b,h
	.align 4
.L469:
	j_s.d	[blink]
	add_s	r0,r2,1   ;R0/R1,b,u6
	.align 4
.L468:
	j_s.d	[blink]
	mov_s	r0,0	;3
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	mov.f	r2,r0
	bne.d	.L472
	mov.ne	r0,1
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L473:
	asr_s	r2,r2,1
	add_s	r0,r0,1   ;b,b,h
	.align 2
.L472:
	bbit0	r2,0,@.L473
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
	bn.d	.L477
	mov.n	r0,1
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L477:
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
	bn.d	.L484
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L484:
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
	bn.d	.L491
	mov.n	r0,1
	mov_s	r3,2146435071	;13
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r2,-1	;4
	setgt	r0,r0,0
.L491:
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
	brne_s	r0,0,.L500
	mov_s	r1,r15
	bl.d	@__addsf3;1
	mov_s	r0,r15
	mov_s	r1,r0
	bl.d	@__nesf2;1
	mov_s	r0,r15
	breq_s	r0,0,.L500
	tst_s	r14,r14
	mov_s	r13,0x3f000000 ; 5.0e-1
	mov.p	r13,0x40000000 ; 2.0e+0
	b_s	.L504
	.align 4
.L503:
	div	r14,r14,2
	breq_s	r14,0,.L500
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L504:
	bbit0	r14,0,@.L503
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L503
	mov_s	r15,r0
	.align 4
.L500:
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
	brne	r0,0,.L509
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L509
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L513
	.align 4
.L512:
	div	r13,r13,2
	.align 4
.L517:
	breq_s	r13,0,.L509
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L513:
	bbit0	r13,0,@.L512
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L517
	.align 4
.L509:
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
	brne	r0,0,.L519
	vadd2	r2,r16,0
	vadd2	r0,r16,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	vadd2	r0,r16,0
	bl	@__nedf2;1
	breq_s	r0,0,.L519
	tst_s	r13,r13
	mov_s	r14,0	;3
	mov_s	r15,1071644672	;13
	mov.p	r14,0x00000000
	mov.p	r15,0x40000000; 2.0e+0
	b_s	.L523
	.align 4
.L522:
	div	r13,r13,2
	.align 4
.L527:
	breq_s	r13,0,.L519
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L523:
	bbit0	r13,0,@.L522
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L527
	.align 4
.L519:
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
.L530:
	ldb.ab	r3,[r1,1]
	ldb.ab	r13,[r12,1]
	xor_s	r3,r3,r13
	brne.d	r1,r2,.L530
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
	b.d	.L537
	add_s	r3,r15,r0   ;a,b,c/u3
	.align 4
.L539:
	add_s	r13,r13,-1   ;h,h,s3
	.align 2
.L537:
	breq.d	r13,0,.L538
	mov_s	r12,r3	;4
	ldb.a	r2,[r1,1]
	stb_s	r2,[r3]
	ldb.ab	r2,[r3,1]
	brne_s	r2,0,.L539
	.align 2
.L538:
	brne_s	r13,0,.L540
	stb	0,[r12]
	.align 2
.L540:
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
.L547:
	jeq.d	[blink]
	add_s	r0,r2,r3   ;a,b,c/u3
	ldb.a	r12,[r3,1]
	tst_s	r12,r12
	jeq_s	[blink]
	b.d	.L547
	cmp_s	r3,r1
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	push_s	r13
	.align 2
.L549:
	mov_s	r13,r0	;4
	ldb.ab	r2,[r0,1]
	breq_s	r2,0,.L554
	sub	r2,r1,1 ;a,b,u6
	.align 2
.L552:
	ldb.a	r3,[r2,1]
	breq_s	r3,0,.L549
	ldb_s	r12,[r2]
	ldb	r3,[r0,-1]
	brne	r12,r3,.L552
	mov_s	r0,r13	;4
.L550:
	j_s.d	[blink]
	pop_s	r13
	.align 4
.L554:
	b.d	.L550
	mov_s	r0,0	;3
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov_s	r2,r0	;4
	mov_s	r0,0	;3
	.align 2
.L558:
	ldb_s	r3,[r2]
	cmp_s	r1,r3
	mov_s	r3,r2	;4
	mov.ne	r3,r0
	mov_s	r0,r3	;4
	ldb.ab	r3,[r2,1]
	brne_s	r3,0,.L558
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
	beq.d	.L565
	mov.eq	r0,r13
	ldb	r16,[r14]
	.align 2
.L566:
	mov_s	r1,r16	;4
	bl.d	@strchr;1
	mov_s	r0,r13	;4
	mov.f	r13,r0
	beq_s	.L565
	mov_s	r2,r15	;4
	mov_s	r1,r14	;4
	bl.d	@strncmp;1
	mov_s	r0,r13	;4
	breq_s	r0,0,.L569
	b.d	.L566
	add_s	r13,r13,1   ;b,b,h
	.align 4
.L569:
	mov_s	r0,r13	;4
.L565:
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
	brlt	r0,0,.L585
	.align 2
.L572:
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L582
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__ltdf2;1
	mov_s	r3,0	;3
	brlt	r0,0,.L574
	vadd2	r0,r14,0
.L575:
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.align 4
.L585:
	mov_s	r2,0	;3
	vadd2	r0,r16,0
	bl.d	@__gtdf2;1
	mov_s	r3,0	;3
	brle	r0,0,.L572
	.align 2
.L574:
	mov_s	r0,r14	;4
	b.d	.L575
	bxor	r1,r15,31
	.align 4
.L582:
	vadd2	r0,r14,0
	b_s	.L575
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
	breq.d	r3,0,.L587
	add_s	r15,r15,r0   ;b,b,h
	mov_s	r14,r2	;4
	cmp_s	r1,r3
	blo.d	.L587
	mov.lo	r0,0
	mov_s	r13,r0	;4
	add	r18,r2,1 ;a,b,c/u6
	sub	r16,r3,1 ;a,b,u6
	.align 2
.L588:
	brhi.d	r13,r15,.L595
	mov_s	r17,r13	;4
	ldb.ab	r12,[r13,1]
	ldb_s	r3,[r14]
	brne	r12,r3,.L588
	mov_s	r2,r16	;4
	mov_s	r1,r18	;4
	bl.d	@memcmp;1
	mov_s	r0,r13	;4
	brne_s	r0,0,.L588
	b.d	.L587
	mov_s	r0,r17	;4
	.align 4
.L595:
	mov_s	r0,0	;3
.L587:
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
	bn.d	.L619
	mov.p	r21,0
	.align 2
.L599:
	mov_s	r3,1072693248	;13
	vadd2	r0,r14,0
	bl.d	@__gedf2;1
	mov_s	r2,0	;3
	brlt	r0,0,.L620
	mov_s	r13,0	;3
	mov_s	r16,0	;4
	mov_s	r17,1072693248	;13
	mov_s	r19,1071644672	;13
	b.d	.L601
	mov_s	r18,0	;4
	.align 4
.L619:
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	b.d	.L599
	mov_s	r21,1	;4
	.align 4
.L603:
	vadd2	r2,r18,0
	vadd2	r0,r14,0
	bl.d	@__muldf3;1
	add_s	r13,r13,1   ;b,b,h
	vadd2	r14,r0,0
	.align 2
.L601:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gedf2;1
	brge	r0,0,.L603
	.align 2
.L604:
	breq.d	r21,0,.L608
	st	r13,[r20]	;26
	mov_s	r2,r14	;4
	bxor	r3,r15,31
	vadd2	r14,r2,0
	.align 2
.L608:
	vadd2	r0,r14,0
	ld	blink,[sp,36]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,12]
	j_s	[blink]
	.align 4
.L620:
	mov_s	r3,1071644672	;13
	vadd2	r0,r14,0
	bl.d	@__ltdf2;1
	mov_s	r2,0	;3
	tst_s	r0,r0
	bp.d	.L604
	mov.p	r13,0
	mov_s	r2,0	;3
	vadd2	r0,r14,0
	bl.d	@__nedf2;1
	mov_s	r3,0	;3
	tst_s	r0,r0
	beq.d	.L604
	mov.eq	r13,0
	mov_s	r13,0	;3
	mov_s	r17,1071644672	;13
	b.d	.L606
	mov_s	r16,0	;4
	.align 4
.L607:
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl.d	@__adddf3;1
	add_s	r13,r13,-1   ;h,h,s3
	vadd2	r14,r0,0
	.align 2
.L606:
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__ltdf2;1
	brlt	r0,0,.L607
	b_s	.L604
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	std.a	r14,[sp,-8]
	push_s	r13
	vadd2	r12,r0,0
	mov_s	r0,0	;3
	b.d	.L622
	mov_s	r1,0	;3
	.align 4
.L623:
	add.f	r2,r2,r2
	adc	r3,r3,r3
	lsr.f	r13,r13
	rrc	r12,r12
	.align 2
.L622:
	or.f	0,r12,r13
	beq_s	.L627
	and	r14,r12,1
	breq_s	r14,0,.L623
	add.f	r0,r0,r2
	b.d	.L623
	adc	r1,r1,r3
	.align 4
.L627:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov_s	r12,r0	;4
	b.d	.L629
	mov_s	r3,1	;3
	.align 4
.L633:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L629:
	brhs	r1,r12,.L640
	breq_s	r3,0,.L637
	brge	r1,0,.L633
	b.d	.L631
	mov_s	r0,0	;3
	.align 4
.L640:
	b.d	.L631
	mov_s	r0,0	;3
	.align 4
.L637:
	b.d	.L631
	mov_s	r0,0	;3
	.align 4
.L635:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	lsr_s	r1,r1
	.align 2
.L631:
	brne_s	r3,0,.L635
	tst_s	r2,r2
	j_s.d	[blink]
	mov.ne	r0,r12
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	extb.f	r0,r0
	beq_s	.L643
	asl_s	r0,r0,8
	fls	r0,r0
	j_s.d	[blink]
	rsub	r0,r0,30
	.align 4
.L643:
	j_s.d	[blink]
	mov_s	r0,7	;3
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	brlt	r1,0,.L654
	.align 2
.L646:
	or.f	0,r0,r1
	beq_s	.L652
	fls	r0,r0
	breq.d	r1,0,.L651
	rsub	r0,r0,63
	fls	r0,r1
	rsub	r0,r0,31
	.align 2
.L651:
	j_s.d	[blink]
	add_s	r0,r0,-1   ;h,h,s3
	.align 4
.L654:
	not_s	r0,r0
	b.d	.L646
	not_s	r1,r1
	.align 4
.L652:
	j_s.d	[blink]
	mov_s	r0,63	;3
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov_s	r2,r0	;4
	b.d	.L656
	mov_s	r0,0	;3
	.align 4
.L657:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L656:
	tst_s	r2,r2
	jeq_s	[blink]
	bbit0	r2,0,@.L657
	b.d	.L657
	add_s	r0,r0,r1   ;b,b,h
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r15,r2,3
	brlo.d	r0,r1,.L662
	bmskn	r12,r2,2
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L663
	.align 2
.L662:
	sub3	r14,r1,1 ;a,b,u6
	sub3	r13,r0,1 ;a,b,u6
	b.d	.L664
	mov_s	r3,0	;3
	.align 4
.L663:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L665
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L666:
	ldd.a	r4,[r14,8]
	std.a	r4,[r13,8]
	add_s	r3,r3,1   ;b,b,h
	.align 2
.L664:
	brne	r3,r15,.L666
	add_s	r12,r12,-1   ;h,h,s3
	add_s	r3,r1,r12   ;a,b,c/u3
	add_s	r0,r0,r12   ;b,b,h
	b.d	.L667
	rsub	r1,r1,1
	.align 4
.L668:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L667:
	add_s	r12,r1,r3   ;a,b,c/u3
	brhi	r2,r12,.L668
	.align 2
.L661:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L670:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L665:
	brne	r3,r1,.L670
	b_s	.L661
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	push_s	r14
	push_s	r13
	brlo.d	r0,r1,.L673
	lsr_s	r14,r2
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L674
	.align 2
.L673:
	sub1	r3,r1,1 ;a,b,u6
	sub1	r12,r0,1 ;a,b,u6
	b.d	.L675
	add1	r14,r3,r14
	.align 4
.L674:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L676
	add_s	r2,r2,r0   ;b,b,h
	.align 4
.L677:
	ldh.x.a	r13,[r3,2]
	sth.a	r13,[r12,2]
	.align 2
.L675:
	brne	r3,r14,.L677
	bbit0	r2,0,@.L672
	add_s	r2,r2,-1   ;h,h,s3
	add_s	r1,r1,r2   ;b,b,h
	add_s	r2,r2,r0   ;b,b,h
	ldb_s	r3,[r1]
	stb_s	r3,[r2]
	.align 2
.L672:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L679:
	ldb.a	r12,[r3,-1]
	stb.a	r12,[r2,-1]
	.align 2
.L676:
	brne	r3,r1,.L679
	b_s	.L672
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	std.a	r14,[sp,-8]
	push_s	r13
	lsr	r15,r2,2
	brlo.d	r0,r1,.L682
	bmskn	r12,r2,1
	add_s	r3,r1,r2   ;a,b,c/u3
	brhs	r3,r0,.L683
	.align 2
.L682:
	sub2	r3,r1,1 ;a,b,u6
	sub2	r13,r0,1 ;a,b,u6
	b.d	.L684
	add2	r15,r3,r15
	.align 4
.L683:
	add_s	r3,r1,r2   ;a,b,c/u3
	b.d	.L685
	add_s	r0,r0,r2   ;b,b,h
	.align 4
.L686:
	ld.a	r14,[r3,4]	;23
	st.a	r14,[r13,4]	;26
	.align 2
.L684:
	brne	r3,r15,.L686
	add_s	r12,r12,-1   ;h,h,s3
	add_s	r3,r1,r12   ;a,b,c/u3
	add_s	r0,r0,r12   ;b,b,h
	b.d	.L687
	rsub	r1,r1,1
	.align 4
.L688:
	ldb.a	r12,[r3,1]
	stb.a	r12,[r0,1]
	.align 2
.L687:
	add_s	r12,r1,r3   ;a,b,c/u3
	brhi	r2,r12,.L688
	.align 2
.L681:
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.align 4
.L690:
	ldb.a	r2,[r3,-1]
	stb.a	r2,[r0,-1]
	.align 2
.L685:
	brne	r3,r1,.L690
	b_s	.L681
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
.L705:
	cmp_s	r0,16
	jeq_s	[blink]
	rsub	r2,r0,15
	bbit1	r3,r2,@.L709
	b.d	.L705
	add_s	r0,r0,1   ;b,b,h
	.align 4
.L709:
	j_s	[blink]
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	exth_s	r2,r0
	mov_s	r0,0	;3
	.align 2
.L711:
	cmp_s	r0,16
	jeq_s	[blink]
	bbit1	r2,r0,@.L715
	b.d	.L711
	add_s	r0,r0,1   ;b,b,h
	.align 4
.L715:
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
	brge	r0,0,.L723
	bl.d	@__fixsfsi;1
	mov_s	r0,r13
.L719:
	ld	blink,[sp,4]	;23
	j_s.d	[blink]
	ld.ab	r13,[sp,8]	;23
	.align 4
.L723:
	mov_s	r1,0x47000000 ; 3.2768e+4
	bl.d	@__subsf3;1
	mov_s	r0,r13
	bl	@__fixsfsi;1
	add_s	r0,r0,32768   ;b,b,limm
	b_s	.L719
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	exth_s	r3,r0
	mov_s	r0,0	;3
	b.d	.L725
	mov_s	r2,0	;3
	.align 4
.L726:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L725:
	breq	r2,16,.L729
	bbit0	r3,r2,@.L726
	b.d	.L726
	add_s	r0,r0,1   ;b,b,h
	.align 4
.L729:
	j_s.d	[blink]
	bmsk_s	r0,r0,0
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	exth_s	r3,r0
	mov_s	r0,0	;3
	b.d	.L731
	mov_s	r2,0	;3
	.align 4
.L732:
	add_s	r2,r2,1   ;b,b,h
	.align 2
.L731:
	cmp_s	r2,16
	jeq_s	[blink]
	bbit0	r3,r2,@.L732
	b.d	.L732
	add_s	r0,r0,1   ;b,b,h
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov_s	r2,r0	;4
	b.d	.L737
	mov_s	r0,0	;3
	.align 4
.L738:
	lsr_s	r2,r2
	asl_s	r1,r1,1
	.align 2
.L737:
	tst_s	r2,r2
	jeq_s	[blink]
	bbit0	r2,0,@.L738
	b.d	.L738
	add_s	r0,r0,r1   ;b,b,h
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov.f	r2,r0
	bne.d	.L744
	sub_s.ne	r0,r0,r0
	j_s.d	[blink]
	mov_s	r0,0	;3
	.align 4
.L745:
	asl_s	r2,r2,1
	lsr_s	r1,r1
	.align 2
.L744:
	tst_s	r1,r1
	jeq_s	[blink]
	bbit0	r1,0,@.L745
	b.d	.L745
	add_s	r0,r0,r2   ;b,b,h
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov_s	r12,r0	;4
	b.d	.L751
	mov_s	r3,1	;3
	.align 4
.L755:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L751:
	brhs	r1,r12,.L762
	breq_s	r3,0,.L759
	brge	r1,0,.L755
	b.d	.L753
	mov_s	r0,0	;3
	.align 4
.L762:
	b.d	.L753
	mov_s	r0,0	;3
	.align 4
.L759:
	b.d	.L753
	mov_s	r0,0	;3
	.align 4
.L757:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	lsr_s	r1,r1
	.align 2
.L753:
	brne_s	r3,0,.L757
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
	bn	.L764
	mov_s	r1,r14
	bl.d	@__gtsf2;1
	mov_s	r0,r13
	setgt	r0,r0,0
.L764:
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
	bn	.L769
	vadd2	r2,r16,0
	vadd2	r0,r14,0
	bl	@__gtdf2;1
	setgt	r0,r0,0
.L769:
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
	asr	r5,r0,31
	asr	r7,r1,31
	mpy	r3,r5,r1
	mpy	r13,r7,r0
	add_s	r3,r3,r13   ;b,b,h
	mpydu	r0,r0,r1
	add_s	r1,r1,r3   ;b,b,h
	j_s.d	[blink]
	pop_s	r13
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	push_s	r13
	mpydu	r0,r0,r1
	j_s.d	[blink]
	pop_s	r13
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	tst_s	r1,r1
	neg.n	r1,r1
	mov.n	r12,1
	mov.p	r12,0
	mov_s	r2,33	;3
	b.d	.L779
	mov_s	r3,0	;3
	.align 4
.L780:
	asl_s	r0,r0,1
	asr_s	r1,r1,1
	.align 2
.L779:
	breq_s	r1,0,.L781
	add_s	r2,r2,-1   ;h,h,s3
	extb.f	r2,r2
	beq_s	.L781
	bbit0	r1,0,@.L780
	b.d	.L780
	add_s	r3,r3,r0   ;b,b,h
	.align 4
.L781:
	breq_s	r12,0,.L785
	j_s.d	[blink]
	neg_s	r0,r3
	.align 4
.L785:
	j_s.d	[blink]
	mov_s	r0,r3	;4
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
.L800:
	brhs	r1,r12,.L811
	add.f	r13,r13,-1
	beq_s	.L808
	btst_s	r1,15
	bne_s	.L812
	asl_s	r1,r1,1
	exth_s	r1,r1
	asl_s	r3,r3,1
	b.d	.L800
	exth_s	r3,r3
	.align 4
.L811:
	b.d	.L802
	mov_s	r0,0	;3
	.align 4
.L808:
	b.d	.L802
	mov_s	r0,0	;3
	.align 4
.L812:
	b.d	.L802
	mov_s	r0,0	;3
	.align 4
.L806:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	bmsk.hs	r12,r12,15
	or.hs r0,r0,r3
	lsr_s	r3,r3
	lsr_s	r1,r1
	.align 2
.L802:
	brne_s	r3,0,.L806
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
	b.d	.L814
	mov_s	r3,1	;3
	.align 4
.L818:
	asl_s	r1,r1,1
	asl_s	r3,r3,1
	.align 2
.L814:
	brhs	r1,r12,.L825
	breq_s	r3,0,.L822
	brge	r1,0,.L818
	b.d	.L816
	mov_s	r0,0	;3
	.align 4
.L825:
	b.d	.L816
	mov_s	r0,0	;3
	.align 4
.L822:
	b.d	.L816
	mov_s	r0,0	;3
	.align 4
.L820:
	cmp_s	r12,r1
	sub.hs	r12,r12,r1
	or.hs r0,r0,r3
	lsr_s	r3,r3
	lsr_s	r1,r1
	.align 2
.L816:
	brne_s	r3,0,.L820
	tst_s	r2,r2
	j_s.d	[blink]
	mov.ne	r0,r12
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	push_s	r14
	push_s	r13
	bbit0	r2,5,@.L827
	mov_s	r12,0	;3
	asl	r13,r0,r2
	.align 2
.L828:
	vadd2	r0,r12,0
.L829:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L827:
	breq_s	r2,0,.L829
	mov_s	r3,r0	;4
	asl	r12,r0,r2
	mov_s	r14,r1	;4
	asl_s	r14,r14,r2
	rsub	r2,r2,32
	lsr_s	r3,r3,r2
	b.d	.L828
	or	r13,r3,r14
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	push_s	r14
	push_s	r13
	bbit0	r2,5,@.L833
	asr	r13,r1,31
	asr	r12,r1,r2
	.align 2
.L834:
	vadd2	r0,r12,0
.L835:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L833:
	breq_s	r2,0,.L835
	asr	r13,r1,r2
	rsub	r14,r2,32
	asl	r14,r1,r14
	lsr	r2,r0,r2
	b.d	.L834
	or	r12,r14,r2
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
	j_s.d	[blink]
	add_s	r0,r0,r2   ;b,b,h
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	push_s	r13
	cmp_s	r1,r3
	blt.d	.L853
	mov.lt	r0,0
	cmp_s	r1,r3
	bgt.d	.L853
	mov.gt	r0,2
	cmp_s	r0,r2
	blo.d	.L853
	mov.lo	r0,0
	cmp_s	r0,r2
	mov_s	r0,1	;3
	mov.hi	r0,2
.L853:
	j_s.d	[blink]
	pop_s	r13
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
	j_s.d	[blink]
	add_s	r0,r3,r2   ;a,b,c/u3
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	push_s	r14
	push_s	r13
	bbit0	r2,5,@.L872
	mov_s	r13,0	;3
	lsr	r12,r1,r2
	.align 2
.L873:
	vadd2	r0,r12,0
.L874:
	pop_s	r13
	j_s.d	[blink]
	pop_s	r14
	.align 4
.L872:
	breq_s	r2,0,.L874
	lsr	r13,r1,r2
	rsub	r14,r2,32
	asl	r14,r1,r14
	lsr	r2,r0,r2
	b.d	.L873
	or	r12,r14,r2
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	std.a	r14,[sp,-8]
	push_s	r13
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
	vadd2	r2,r0,0
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	sub.f	r0,r12,r0
	sbc	r1,r13,r3
	j_s.d	[blink]
	pop_s	r13
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	xor_s	r0,r0,r1
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
	b.d	.L894
	mov_s	r16,0	;4
	.align 4
.L892:
	div	r13,r13,2
	.align 4
.L898:
	breq_s	r13,0,.L893
	vadd2	r2,r14,0
	vadd2	r0,r14,0
	bl	@__muldf3;1
	vadd2	r14,r0,0
	.align 2
.L894:
	bbit0	r13,0,@.L892
	vadd2	r2,r14,0
	vadd2	r0,r16,0
	bl.d	@__muldf3;1
	div	r13,r13,2
	vadd2	r16,r0,0
	b_s	.L898
	.align 4
.L893:
	vadd2	r0,r16,0
	breq	r18,0,.L895
	vadd2	r2,r16,0
	mov_s	r1,1072693248	;13
	bl.d	@__divdf3;1
	mov_s	r0,0	;3
.L895:
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
	b.d	.L902
	lsr	r16,r1,31
	.align 4
.L900:
	div	r14,r14,2
	breq_s	r14,0,.L901
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r13
	mov_s	r13,r0
	.align 2
.L902:
	bbit0	r14,0,@.L900
	mov_s	r1,r13
	bl.d	@__mulsf3;1
	mov_s	r0,r15
	b.d	.L900
	mov_s	r15,r0
	.align 4
.L901:
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
	push_s	r13
	cmp_s	r1,r3
	blo.d	.L907
	mov.lo	r0,0
	cmp_s	r1,r3
	bhi.d	.L907
	mov.hi	r0,2
	cmp_s	r0,r2
	blo.d	.L907
	mov.lo	r0,0
	cmp_s	r0,r2
	mov_s	r0,1	;3
	mov.hi	r0,2
.L907:
	j_s.d	[blink]
	pop_s	r13
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
