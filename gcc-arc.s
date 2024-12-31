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
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-8]	;26
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	cmp_s	r3,r2
	bhs	.L2
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	b_s	.L3
	.align 4
.L4:
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	stb_s	r3,[r2]
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	.align 2
.L3:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bne_s	.L4
	b_s	.L5
	.align 4
.L2:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	cmp_s	r3,r2
	beq_s	.L5
	b_s	.L6
	.align 4
.L7:
	ld	r3,[fp,-8]	;23
	add_s	r2,r3,1   ;a,b,c/u3
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	add_s	r12,r2,1   ;a,b,c/u3
	st	r12,[fp,-4]	;26
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	.align 2
.L6:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bne_s	.L7
	.align 2
.L5:
	ld	r2,[fp,-12]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,24  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	st	r3,[fp,-24]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-20]	;23
	extb_s	r2,r2
	st	r2,[fp,-20]	;26
	b_s	.L10
	.align 4
.L12:
	ld	r2,[fp,-24]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-24]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L10:
	ld	r2,[fp,-24]	;23
	tst_s	r2,r2
	beq_s	.L11
	ld	r2,[fp,-8]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	stb_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	mov_s	r3,r2	;4
	ld	r2,[fp,-20]	;23
	cmp_s	r2,r3
	bne_s	.L12
	.align 2
.L11:
	ld	r2,[fp,-24]	;23
	tst_s	r2,r2
	beq_s	.L13
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	b_s	.L14
	.align 4
.L13:
	mov_s	r2,0	;3
	.align 2
.L14:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-12]	;23
	extb_s	r2,r2
	st	r2,[fp,-12]	;26
	b_s	.L16
	.align 4
.L18:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-16]	;26
	.align 2
.L16:
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	beq_s	.L17
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	mov_s	r3,r2	;4
	ld	r2,[fp,-12]	;23
	cmp_s	r2,r3
	bne_s	.L18
	.align 2
.L17:
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	beq_s	.L19
	ld	r2,[fp,-4]	;23
	b_s	.L21
	.align 4
.L19:
	mov_s	r2,0	;3
	.align 2
.L21:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-8]	;26
	b_s	.L23
	.align 4
.L25:
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L23:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L24
	ld	r2,[fp,-4]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	beq_s	.L25
	.align 2
.L24:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L26
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	mov_s	r3,r2	;4
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	sub_s	r2,r3,r2
	b_s	.L28
	.align 4
.L26:
	mov_s	r2,0	;3
	.align 2
.L28:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-8]	;26
	b_s	.L30
	.align 4
.L31:
	ld	r3,[fp,-8]	;23
	add_s	r2,r3,1   ;a,b,c/u3
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	add_s	r12,r2,1   ;a,b,c/u3
	st	r12,[fp,-4]	;26
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	.align 2
.L30:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bne_s	.L31
	ld	r2,[fp,-12]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-12]	;23
	extb_s	r2,r2
	st	r2,[fp,-12]	;26
	b_s	.L34
	.align 4
.L36:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-16]	;23
	add_s	r2,r2,r3   ;b,b,h
	ldb_s	r2,[r2]
	mov_s	r3,r2	;4
	ld	r2,[fp,-12]	;23
	cmp_s	r2,r3
	bne_s	.L34
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-16]	;23
	add_s	r2,r2,r3   ;b,b,h
	b_s	.L35
	.align 4
.L34:
	ld	r2,[fp,-16]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-16]	;26
	tst_s	r2,r2
	bne_s	.L36
	mov_s	r2,0	;3
	.align 2
.L35:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	b_s	.L38
	.align 4
.L39:
	ld	r2,[fp,-12]	;23
	extb_s	r3,r2
	ld	r2,[fp,-4]	;23
	stb_s	r3,[r2]
	ld	r2,[fp,-16]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L38:
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	bne_s	.L39
	ld	r2,[fp,-8]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	b_s	.L42
	.align 4
.L43:
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L42:
	ld	r2,[fp,-8]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	stb_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L43
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	extb_s	r2,r2
	st	r2,[fp,-8]	;26
	b_s	.L46
	.align 4
.L48:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L46:
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	beq_s	.L47
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	mov_s	r3,r2	;4
	ld	r2,[fp,-8]	;23
	cmp_s	r2,r3
	bne_s	.L48
	.align 2
.L47:
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	mov_s	r2,r0	;4
	st	r1,[fp,-4]	;26
	.align 2
.L53:
	ldb_s	r3,[r2]
	mov_s	r12,r3	;4
	ld	r3,[fp,-4]	;23
	cmp_s	r3,r12
	beq_s	.L54
	mov_s	r3,r2	;4
	add_s	r2,r3,1   ;a,b,c/u3
	ldb_s	r3,[r3]
	tst_s	r3,r3
	bne_s	.L53
	mov_s	r2,0	;3
	b_s	.L52
	.align 4
.L54:
	nop_s
	.align 2
.L52:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	b_s	.L56
	.align 4
.L58:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L56:
	ld	r2,[fp,-4]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	bne_s	.L57
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L58
	.align 2
.L57:
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	mov_s	r3,r2	;4
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	sub_s	r2,r3,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	b_s	.L61
	.align 4
.L62:
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L61:
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L62
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	sub_s	r2,r3,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-20]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-20]	;26
	tst_s	r2,r2
	bne_s	.L70
	mov_s	r2,0	;3
	b_s	.L66
	.align 4
.L69:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	b_s	.L67
	.align 4
.L70:
	nop_s
	.align 2
.L67:
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	beq_s	.L68
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	beq_s	.L68
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L68
	ld	r2,[fp,-4]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	beq_s	.L69
	.align 2
.L68:
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	mov_s	r3,r2	;4
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	sub_s	r2,r3,r2
	.align 2
.L66:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-8]	;26
	b_s	.L72
	.align 4
.L73:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	ldb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	stb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	ld	r3,[fp,-4]	;23
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,2   ;b,b,h
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,2   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-20]	;23
	sub1	r2,r2,1 ;a,b,u6
	st	r2,[fp,-20]	;26
	.align 2
.L72:
	ld	r2,[fp,-20]	;23
	cmp_s	r2,1
	bgt	.L73
	nop_s
	nop_s
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	bset_s	r2,r2,5
	add	r2,r2,-97 ;b,b,s12
	setlo	r2,r2,26
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	seths	r2,127,r2
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	cmp_s	r2,32
	beq_s	.L79
	ld	r2,[fp,-4]	;23
	cmp_s	r2,9
	bne_s	.L80
	.align 2
.L79:
	mov_s	r2,1	;3
	b_s	.L82
	.align 4
.L80:
	mov_s	r2,0	;3
	.align 2
.L82:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	cmp_s	r2,31
	bls_s	.L84
	ld	r2,[fp,-4]	;23
	cmp_s	r2,127
	bne_s	.L85
	.align 2
.L84:
	mov_s	r2,1	;3
	b_s	.L87
	.align 4
.L85:
	mov_s	r2,0	;3
	.align 2
.L87:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	sub3	r2,r2,6 ;a,b,u6
	setlo	r2,r2,10
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	sub	r2,r2,33 ;a,b,u6
	seths	r2,93,r2
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	add	r2,r2,-97 ;b,b,s12
	setlo	r2,r2,26
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	sub3	r2,r2,4 ;a,b,u6
	seths	r2,94,r2
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	cmp_s	r2,32
	beq_s	.L97
	ld	r2,[fp,-4]	;23
	sub	r2,r2,9 ;a,b,u6
	cmp_s	r2,4
	bhi_s	.L98
	.align 2
.L97:
	mov_s	r2,1	;3
	b_s	.L100
	.align 4
.L98:
	mov_s	r2,0	;3
	.align 2
.L100:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	add	r2,r2,-65 ;b,b,s12
	setlo	r2,r2,26
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	cmp_s	r2,31
	bls_s	.L104
	ld	r2,[fp,-4]	;23
	add	r2,r2,-127 ;b,b,s12
	cmp_s	r2,32
	bls_s	.L104
	ld	r2,[fp,-4]	;23
	add3	r2,r2,-1029 ;b,b,s12
	cmp_s	r2,1
	bls_s	.L104
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-65529   ;b,b,limm
	cmp_s	r2,2
	bhi_s	.L105
	.align 2
.L104:
	mov_s	r2,1	;3
	b_s	.L107
	.align 4
.L105:
	mov_s	r2,0	;3
	.align 2
.L107:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	sub3	r2,r2,6 ;a,b,u6
	setlo	r2,r2,10
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	cmp	r2,254
	bhi_s	.L111
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	bmsk_s	r2,r2,6
	seths	r2,r2,33
	extb_s	r2,r2
	b_s	.L112
	.align 4
.L111:
	ld	r2,[fp,-4]	;23
	cmp_s	r2,8231
	bls_s	.L113
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-8234   ;b,b,limm
	cmp_s	r2,47061
	bls_s	.L113
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-57344   ;b,b,limm
	cmp_s	r2,8184
	bhi_s	.L114
	.align 2
.L113:
	mov_s	r2,1	;3
	b_s	.L112
	.align 4
.L114:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-65532   ;b,b,limm
	cmp_s	r2,1048579
	bhi_s	.L115
	ld	r2,[fp,-4]	;23
	and	r2,r2,65534
	cmp_s	r2,65534
	bne_s	.L116
	.align 2
.L115:
	mov_s	r2,0	;3
	b_s	.L112
	.align 4
.L116:
	mov_s	r2,1	;3
	.align 2
.L112:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bls_s	.L118
	ld	r2,[fp,-4]	;23
	bset_s	r2,r2,5
	add	r2,r2,-97 ;b,b,s12
	cmp_s	r2,5
	bhi_s	.L119
	.align 2
.L118:
	mov_s	r2,1	;3
	b_s	.L121
	.align 4
.L119:
	mov_s	r2,0	;3
	.align 2
.L121:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	bmsk_s	r2,r2,6
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	toascii, .-toascii
	.align 4
	.global	fdim
	.type	fdim, @function
fdim:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L136
	ldd	r2,[fp,-8]
	b_s	.L127
	.align 4
.L136:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-16]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L137
	ldd	r2,[fp,-16]
	b_s	.L127
	.align 4
.L137:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L138
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__subdf3;1
	vadd2	r2,r0,0
	b_s	.L127
	.align 4
.L138:
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	.align 2
.L127:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]
	st	r1,[fp,-8]
	ld	r1,[fp,-4]
	ld	r0,[fp,-4]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L151
	ld	r2,[fp,-4]
	b_s	.L142
	.align 4
.L151:
	ld	r1,[fp,-8]
	ld	r0,[fp,-8]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L152
	ld	r2,[fp,-8]
	b_s	.L142
	.align 4
.L152:
	ld	r1,[fp,-8]
	ld	r0,[fp,-4]
	bl	@__gtsf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L153
	ld	r1,[fp,-8]
	ld	r0,[fp,-4]
	bl	@__subsf3;1
	mov_s	r2,r0
	b_s	.L142
	.align 4
.L153:
	mov_s	r2,0x00000000
	.align 2
.L142:
	mov_s	r0,r2
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L169
	ldd	r2,[fp,-16]
	b_s	.L157
	.align 4
.L169:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-16]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L170
	ldd	r2,[fp,-8]
	b_s	.L157
	.align 4
.L170:
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld	r2,[fp,-12]	;23
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L160
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L161
	ldd	r2,[fp,-16]
	b_s	.L157
	.align 4
.L161:
	ldd	r2,[fp,-8]
	b_s	.L157
	.align 4
.L160:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L171
	ldd	r2,[fp,-16]
	b_s	.L157
	.align 4
.L171:
	ldd	r2,[fp,-8]
	.align 2
.L157:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]
	st	r1,[fp,-8]
	ld	r1,[fp,-4]
	ld	r0,[fp,-4]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L187
	ld	r2,[fp,-8]
	b_s	.L175
	.align 4
.L187:
	ld	r1,[fp,-8]
	ld	r0,[fp,-8]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L188
	ld	r2,[fp,-4]
	b_s	.L175
	.align 4
.L188:
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld	r2,[fp,-8]	;23
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L178
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L179
	ld	r2,[fp,-8]
	b_s	.L175
	.align 4
.L179:
	ld	r2,[fp,-4]
	b_s	.L175
	.align 4
.L178:
	ld	r1,[fp,-8]
	ld	r0,[fp,-4]
	bl	@__ltsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L189
	ld	r2,[fp,-8]
	b_s	.L175
	.align 4
.L189:
	ld	r2,[fp,-4]
	.align 2
.L175:
	mov_s	r0,r2
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L205
	ldd	r2,[fp,-16]
	b_s	.L193
	.align 4
.L205:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-16]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L206
	ldd	r2,[fp,-8]
	b_s	.L193
	.align 4
.L206:
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld	r2,[fp,-12]	;23
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L196
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L197
	ldd	r2,[fp,-16]
	b_s	.L193
	.align 4
.L197:
	ldd	r2,[fp,-8]
	b_s	.L193
	.align 4
.L196:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L207
	ldd	r2,[fp,-16]
	b_s	.L193
	.align 4
.L207:
	ldd	r2,[fp,-8]
	.align 2
.L193:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L223
	ldd	r2,[fp,-16]
	b_s	.L211
	.align 4
.L223:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-16]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L224
	ldd	r2,[fp,-8]
	b_s	.L211
	.align 4
.L224:
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld	r2,[fp,-12]	;23
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L214
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L215
	ldd	r2,[fp,-8]
	b_s	.L211
	.align 4
.L215:
	ldd	r2,[fp,-16]
	b_s	.L211
	.align 4
.L214:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L225
	ldd	r2,[fp,-8]
	b_s	.L211
	.align 4
.L225:
	ldd	r2,[fp,-16]
	.align 2
.L211:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]
	st	r1,[fp,-8]
	ld	r1,[fp,-4]
	ld	r0,[fp,-4]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L241
	ld	r2,[fp,-8]
	b_s	.L229
	.align 4
.L241:
	ld	r1,[fp,-8]
	ld	r0,[fp,-8]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L242
	ld	r2,[fp,-4]
	b_s	.L229
	.align 4
.L242:
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld	r2,[fp,-8]	;23
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L232
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L233
	ld	r2,[fp,-4]
	b_s	.L229
	.align 4
.L233:
	ld	r2,[fp,-8]
	b_s	.L229
	.align 4
.L232:
	ld	r1,[fp,-8]
	ld	r0,[fp,-4]
	bl	@__ltsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L243
	ld	r2,[fp,-4]
	b_s	.L229
	.align 4
.L243:
	ld	r2,[fp,-8]
	.align 2
.L229:
	mov_s	r0,r2
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L259
	ldd	r2,[fp,-16]
	b_s	.L247
	.align 4
.L259:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-16]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L260
	ldd	r2,[fp,-8]
	b_s	.L247
	.align 4
.L260:
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld	r2,[fp,-12]	;23
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L250
	ld	r2,[fp,-4]	;23
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L251
	ldd	r2,[fp,-8]
	b_s	.L247
	.align 4
.L251:
	ldd	r2,[fp,-16]
	b_s	.L247
	.align 4
.L250:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L261
	ldd	r2,[fp,-8]
	b_s	.L247
	.align 4
.L261:
	ldd	r2,[fp,-16]
	.align 2
.L247:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
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
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-8]	;26
	mov_s	r2,@s.0	;13
	st	r2,[fp,-4]	;26
	b_s	.L263
	.align 4
.L264:
	ld	r2,[fp,-8]	;23
	bmsk_s	r2,r2,5
	ldb	r3,[r2,@digits]
	ld	r2,[fp,-4]	;23
	stb_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	lsr_s	r2,r2,6
	st	r2,[fp,-8]	;26
	.align 2
.L263:
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L264
	ld	r2,[fp,-4]	;23
	stb	0,[r2]
	mov_s	r2,@s.0	;13
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r12,[fp,-4]	;23
	add_s	r12,r12,-1   ;h,h,s3
	mov_s	r2,r12	;4
	mov_s	r3,0	;3
	std	r2,[@seed]
	nop_s
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	ldd	r2,[@seed]
	mpy	r0,r3,1284865837
	mpy	r1,r2,1481765933
	add_s	r1,r1,r0   ;b,b,h
	mpydu	r2,r2,1284865837
	add_s	r1,r1,r3   ;b,b,h
	mov_s	r3,r1	;4
	add.f	r12,r2,1
	adc	r13,r3,0
	std	r12,[@seed]
	ldd	r2,[@seed]
	lsr_s	r14,r3
	mov_s	r15,0	;3
	mov_s	r2,r14	;4
	mov_s	r0,r2	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L270
	ld	r2,[fp,-4]	;23
	st	0,[r2,4]	;37
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2,4]		;15
	ld	r2,[fp,-4]	;23
	st_s	r3,[r2]		;16
	b_s	.L269
	.align 4
.L270:
	ld	r2,[fp,-8]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-4]	;23
	st_s	r3,[r2]		;16
	ld	r2,[fp,-4]	;23
	ld	r3,[fp,-8]	;23
	st_s	r3,[r2,4]		;16
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-4]	;23
	st_s	r3,[r2]		;16
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L269
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	ld	r3,[fp,-4]	;23
	st_s	r3,[r2,4]		;16
	.align 2
.L269:
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L273
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	ld	r3,[fp,-4]	;23
	ld_s	r3,[r3,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L273:
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2,4]		;15
	tst_s	r2,r2
	beq_s	.L275
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2,4]		;15
	ld	r3,[fp,-4]	;23
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	.align 2
.L275:
	nop_s
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,36  ;sp,sp,u7
	st	r0,[fp,-20]	;26
	st	r1,[fp,-24]	;26
	st	r2,[fp,-28]	;26
	st	r3,[fp,-32]	;26
	st	r4,[fp,-36]	;26
	ld	r16,[fp,-32]	;23
	mov_s	r2,r16	;4
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-8]	;26
	mov_s	r14,r16	;4
	mov_s	r15,0	;3
	lsr	r2,r14,29
	asl_s	r13,r15,3
	or_s	r13,r13,r2
	asl_s	r12,r14,3
	ld	r2,[fp,-24]	;23
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-28]	;23
	ld_s	r2,[r2]		;15
	st	r2,[fp,-16]	;26
	st	0,[fp,-4]	;37
	b_s	.L277
	.align 4
.L280:
	ld	r2,[fp,-4]	;23
	mpy	r2,r2,r16
	ld	r3,[fp,-12]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r2,[fp,-36]	;23
	mov_s	r1,r3	;4
	ld	r0,[fp,-20]	;23
	jl_s	[r2]
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L278
	ld	r2,[fp,-4]	;23
	mpy	r2,r2,r16
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	b_s	.L279
	.align 4
.L278:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L277:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	blo	.L280
	ld	r2,[fp,-16]	;23
	add_s	r3,r2,1   ;a,b,c/u3
	ld	r2,[fp,-28]	;23
	st_s	r3,[r2]		;16
	ld	r2,[fp,-16]	;23
	mpy	r2,r2,r16
	ld	r3,[fp,-12]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r2,[fp,-32]	;23
	ld	r1,[fp,-20]	;23
	mov_s	r0,r3	;4
	bl	@memcpy;1
	mov_s	r2,r0	;4
	.align 2
.L279:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ld.ab	r16,[sp,8]	;23
	j_s	[blink]
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	push_s	blink
	st.a	r16,[sp,-4]	;26
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,36  ;sp,sp,u7
	st	r0,[fp,-20]	;26
	st	r1,[fp,-24]	;26
	st	r2,[fp,-28]	;26
	st	r3,[fp,-32]	;26
	st	r4,[fp,-36]	;26
	ld	r16,[fp,-32]	;23
	mov_s	r2,r16	;4
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-8]	;26
	mov_s	r14,r16	;4
	mov_s	r15,0	;3
	lsr	r2,r14,29
	asl_s	r13,r15,3
	or_s	r13,r13,r2
	asl_s	r12,r14,3
	ld	r2,[fp,-24]	;23
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-28]	;23
	ld_s	r2,[r2]		;15
	st	r2,[fp,-16]	;26
	st	0,[fp,-4]	;37
	b_s	.L282
	.align 4
.L285:
	ld	r2,[fp,-4]	;23
	mpy	r2,r2,r16
	ld	r3,[fp,-12]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r2,[fp,-36]	;23
	mov_s	r1,r3	;4
	ld	r0,[fp,-20]	;23
	jl_s	[r2]
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L283
	ld	r2,[fp,-4]	;23
	mpy	r2,r2,r16
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	b_s	.L284
	.align 4
.L283:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L282:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	blo	.L285
	mov_s	r2,0	;3
	.align 2
.L284:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ld.ab	r16,[sp,8]	;23
	j_s	[blink]
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	abs_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	0,[fp,-4]	;37
	st	0,[fp,-8]	;37
	b_s	.L289
	.align 4
.L290:
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-12]	;26
	.align 2
.L289:
	ld	r2,[fp,-12]	;23
	ldb_s	r2,[r2]
	mov_s	r0,r2	;4
	bl	@isspace;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L290
	ld	r2,[fp,-12]	;23
	ldb_s	r2,[r2]
	cmp_s	r2,43
	beq_s	.L291
	cmp_s	r2,45
	bne_s	.L298
	st	1,[fp,-8]	;37
	.align 2
.L291:
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-12]	;26
	b_s	.L298
	.align 4
.L294:
	ld	r2,[fp,-4]	;23
	mpy	r3,r2,10
	ld	r2,[fp,-12]	;23
	add_s	r12,r2,1   ;a,b,c/u3
	st	r12,[fp,-12]	;26
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	sub_s	r2,r3,r2
	st	r2,[fp,-4]	;26
	b_s	.L293
	.align 4
.L298:
	nop_s
	.align 2
.L293:
	ld	r2,[fp,-12]	;23
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bls_s	.L294
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L295
	ld	r2,[fp,-4]	;23
	neg_s	r2,r2
	b_s	.L297
	.align 4
.L295:
	ld	r2,[fp,-4]	;23
	.align 2
.L297:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	0,[fp,-4]	;37
	st	0,[fp,-8]	;37
	b_s	.L300
	.align 4
.L301:
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-12]	;26
	.align 2
.L300:
	ld	r2,[fp,-12]	;23
	ldb_s	r2,[r2]
	mov_s	r0,r2	;4
	bl	@isspace;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L301
	ld	r2,[fp,-12]	;23
	ldb_s	r2,[r2]
	cmp_s	r2,43
	beq_s	.L302
	cmp_s	r2,45
	bne_s	.L309
	st	1,[fp,-8]	;37
	.align 2
.L302:
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-12]	;26
	b_s	.L309
	.align 4
.L305:
	ld	r2,[fp,-4]	;23
	mpy	r3,r2,10
	ld	r2,[fp,-12]	;23
	add_s	r12,r2,1   ;a,b,c/u3
	st	r12,[fp,-12]	;26
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	sub_s	r2,r3,r2
	st	r2,[fp,-4]	;26
	b_s	.L304
	.align 4
.L309:
	nop_s
	.align 2
.L304:
	ld	r2,[fp,-12]	;23
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bls_s	.L305
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L306
	ld	r2,[fp,-4]	;23
	neg_s	r2,r2
	b_s	.L308
	.align 4
.L306:
	ld	r2,[fp,-4]	;23
	.align 2
.L308:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	push_s	blink
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-16]	;26
	std	0,[fp,-8]
	st	0,[fp,-12]	;37
	b_s	.L311
	.align 4
.L312:
	ld	r2,[fp,-16]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-16]	;26
	.align 2
.L311:
	ld	r2,[fp,-16]	;23
	ldb_s	r2,[r2]
	mov_s	r0,r2	;4
	bl	@isspace;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L312
	ld	r2,[fp,-16]	;23
	ldb_s	r2,[r2]
	cmp_s	r2,43
	beq_s	.L313
	cmp_s	r2,45
	bne_s	.L320
	st	1,[fp,-12]	;37
	.align 2
.L313:
	ld	r2,[fp,-16]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-16]	;26
	b_s	.L320
	.align 4
.L316:
	ld	r2,[fp,-4]	;23
	mpy	r3,r2,10
	ld	r2,[fp,-8]	;23
	mpy	r2,r2,0
	add_s	r12,r3,r2   ;a,b,c/u3
	ld	r2,[fp,-8]	;23
	mpydu	r2,r2,10
	add_s	r12,r12,r3   ;b,b,h
	mov_s	r3,r12	;4
	ld	r12,[fp,-16]	;23
	add_s	r13,r12,1   ;a,b,c/u3
	st	r13,[fp,-16]	;26
	ldb_s	r12,[r12]
	sub3	r12,r12,6 ;a,b,u6
	mov_s	r16,r12	;4
	asr_s	r12,r12,31
	mov_s	r17,r12	;4
	sub.f	r18,r2,r16
	sbc	r19,r3,r17
	std	r18,[fp,-8]
	b_s	.L315
	.align 4
.L320:
	nop_s
	.align 2
.L315:
	ld	r2,[fp,-16]	;23
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bls	.L316
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	bne_s	.L317
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	ldd	r2,[fp,-8]
	sub.f	r14,r12,r2
	sbc	r15,r13,r3
	b_s	.L319
	.align 4
.L317:
	ldd	r14,[fp,-8]
	.align 2
.L319:
	vadd2	r0,r14,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,28]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,12]
	j_s	[blink]
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,28  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	st	r3,[fp,-24]	;26
	st	r4,[fp,-28]	;26
	b_s	.L322
	.align 4
.L326:
	ld	r2,[fp,-20]	;23
	lsr_s	r3,r2
	ld	r2,[fp,-24]	;23
	mpy_s	r2,r2,r3
	ld	r3,[fp,-16]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-28]	;23
	ld	r1,[fp,-4]	;23
	ld	r0,[fp,-12]	;23
	jl_s	[r2]
	st	r0,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bp	.L323
	ld	r2,[fp,-20]	;23
	lsr_s	r2,r2
	st	r2,[fp,-20]	;26
	b_s	.L322
	.align 4
.L323:
	ld	r2,[fp,-8]	;23
	cmp_s	r2,0
	ble_s	.L324
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-24]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-20]	;23
	lsr_s	r2,r2
	ld	r3,[fp,-20]	;23
	sub_s	r2,r3,r2
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	b_s	.L322
	.align 4
.L324:
	ld	r2,[fp,-4]	;23
	b_s	.L325
	.align 4
.L322:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bne_s	.L326
	mov_s	r2,0	;3
	.align 2
.L325:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,40  ;sp,sp,u7
	st	r0,[fp,-20]	;26
	st	r1,[fp,-24]	;26
	st	r2,[fp,-28]	;26
	st	r3,[fp,-32]	;26
	st	r4,[fp,-36]	;26
	st	r5,[fp,-40]	;26
	ld	r2,[fp,-24]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-28]	;23
	st	r2,[fp,-8]	;26
	b_s	.L328
	.align 4
.L332:
	ld	r2,[fp,-8]	;23
	asr_s	r2,r2,1
	mov_s	r3,r2	;4
	ld	r2,[fp,-32]	;23
	mpy_s	r2,r2,r3
	ld	r3,[fp,-4]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-36]	;23
	ld	r2,[fp,-40]	;23
	ld	r1,[fp,-12]	;23
	ld	r0,[fp,-20]	;23
	jl_s	[r3]
	st	r0,[fp,-16]	;26
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	bne_s	.L329
	ld	r2,[fp,-12]	;23
	b_s	.L330
	.align 4
.L329:
	ld	r2,[fp,-16]	;23
	cmp_s	r2,0
	ble_s	.L331
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-32]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-8]	;26
	.align 2
.L331:
	ld	r2,[fp,-8]	;23
	asr_s	r2,r2,1
	st	r2,[fp,-8]	;26
	.align 2
.L328:
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L332
	mov_s	r2,0	;3
	.align 2
.L330:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-12]	;23
	div	r12,r3,r2
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-12]	;23
	rem	r3,r3,r2
	ld	r2,[fp,-4]	;23
	st_s	r12,[r2]		;16
	ld	r2,[fp,-4]	;23
	st_s	r3,[r2,4]		;16
	ld	r0,[fp,-4]	;23
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[fp,-8]
	ld	r1,[fp,-4]	;23
	asr	r2,r1,31
	ld	r1,[fp,-4]	;23
	asr	r3,r1,31
	ld	r1,[fp,-8]	;23
	xor	r12,r1,r2
	ld	r1,[fp,-4]	;23
	xor	r13,r1,r3
	sub.f	r14,r12,r2
	sbc	r15,r13,r3
	vadd2	r12,r14,0
	vadd2	r0,r12,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	push_s	blink
	std.a	r14,[sp,-8]
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,36  ;sp,sp,u7
	st	r0,[fp,-20]	;26
	st	r1,[fp,-28]	;26
	st	r2,[fp,-24]	;26
	st	r3,[fp,-36]	;26
	st	r4,[fp,-32]	;26
	ldd	r2,[fp,-36]
	ldd	r0,[fp,-28]
	bl	@__divdi3;1
	vadd2	r14,r0,0
	ldd	r0,[fp,-28]
	ldd	r2,[fp,-36]
	bl	@__moddi3;1
	vadd2	r2,r0,0
	ld	r12,[fp,-20]	;23
	std	r14,[r12]
	ld	r12,[fp,-20]	;23
	std	r2,[r12,8]
	ld	r0,[fp,-20]	;23
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	abs_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-12]	;23
	div	r12,r3,r2
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-12]	;23
	rem	r3,r3,r2
	ld	r2,[fp,-4]	;23
	st_s	r12,[r2]		;16
	ld	r2,[fp,-4]	;23
	st_s	r3,[r2,4]		;16
	ld	r0,[fp,-4]	;23
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[fp,-8]
	ld	r1,[fp,-4]	;23
	asr	r2,r1,31
	ld	r1,[fp,-4]	;23
	asr	r3,r1,31
	ld	r1,[fp,-8]	;23
	xor	r12,r1,r2
	ld	r1,[fp,-4]	;23
	xor	r13,r1,r3
	sub.f	r14,r12,r2
	sbc	r15,r13,r3
	vadd2	r12,r14,0
	vadd2	r0,r12,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	push_s	blink
	std.a	r14,[sp,-8]
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,36  ;sp,sp,u7
	st	r0,[fp,-20]	;26
	st	r1,[fp,-28]	;26
	st	r2,[fp,-24]	;26
	st	r3,[fp,-36]	;26
	st	r4,[fp,-32]	;26
	ldd	r2,[fp,-36]
	ldd	r0,[fp,-28]
	bl	@__divdi3;1
	vadd2	r14,r0,0
	ldd	r0,[fp,-28]
	ldd	r2,[fp,-36]
	bl	@__moddi3;1
	vadd2	r2,r0,0
	ld	r12,[fp,-20]	;23
	std	r14,[r12]
	ld	r12,[fp,-20]	;23
	std	r2,[r12,8]
	ld	r0,[fp,-20]	;23
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	b_s	.L348
	.align 4
.L350:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L348:
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L349
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	ld	r3,[fp,-8]	;23
	cmp_s	r3,r2
	bne_s	.L350
	.align 2
.L349:
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L351
	ld	r2,[fp,-4]	;23
	b_s	.L353
	.align 4
.L351:
	mov_s	r2,0	;3
	.align 2
.L353:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	b_s	.L355
	.align 4
.L357:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L355:
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	bne_s	.L356
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L356
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	bne_s	.L357
	.align 2
.L356:
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	blt_s	.L358
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	setgt	r2,r3,r2
	extb_s	r2,r2
	b_s	.L360
	.align 4
.L358:
	mov_s	r2,-1	;4
	.align 2
.L360:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	nop_s
	.align 2
.L362:
	ld	r3,[fp,-12]	;23
	add_s	r2,r3,4   ;a,b,c/u3
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-8]	;23
	add_s	r12,r2,4   ;a,b,c/u3
	st	r12,[fp,-8]	;26
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	bne_s	.L362
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	b_s	.L365
	.align 4
.L366:
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L365:
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	bne_s	.L366
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	sub_s	r2,r3,r2
	asr_s	r2,r2,2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	st	r2,[fp,-12]	;26
	b_s	.L369
	.align 4
.L371:
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L369:
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	beq_s	.L370
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	bne_s	.L370
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L370
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	bne_s	.L371
	.align 2
.L370:
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	beq_s	.L372
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	blt_s	.L373
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	setgt	r2,r3,r2
	extb_s	r2,r2
	b_s	.L376
	.align 4
.L373:
	mov_s	r2,-1	;4
	b_s	.L376
	.align 4
.L372:
	mov_s	r2,0	;3
	.align 2
.L376:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	st	r2,[fp,-12]	;26
	b_s	.L378
	.align 4
.L380:
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L378:
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	beq_s	.L379
	ld	r2,[fp,-4]	;23
	ld_s	r2,[r2]		;15
	ld	r3,[fp,-8]	;23
	cmp_s	r3,r2
	bne_s	.L380
	.align 2
.L379:
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	beq_s	.L381
	ld	r2,[fp,-4]	;23
	b_s	.L383
	.align 4
.L381:
	mov_s	r2,0	;3
	.align 2
.L383:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	st	r2,[fp,-12]	;26
	b_s	.L385
	.align 4
.L387:
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,4   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L385:
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	beq_s	.L386
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	beq_s	.L387
	.align 2
.L386:
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	beq_s	.L388
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	blt_s	.L389
	ld	r2,[fp,-4]	;23
	ld_s	r3,[r2]		;15
	ld	r2,[fp,-8]	;23
	ld_s	r2,[r2]		;15
	setgt	r2,r3,r2
	extb_s	r2,r2
	b_s	.L392
	.align 4
.L389:
	mov_s	r2,-1	;4
	b_s	.L392
	.align 4
.L388:
	mov_s	r2,0	;3
	.align 2
.L392:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	b_s	.L394
	.align 4
.L395:
	ld	r3,[fp,-12]	;23
	add_s	r2,r3,4   ;a,b,c/u3
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-8]	;23
	add_s	r12,r2,4   ;a,b,c/u3
	st	r12,[fp,-8]	;26
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	.align 2
.L394:
	ld	r2,[fp,-16]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-16]	;26
	tst_s	r2,r2
	bne_s	.L395
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	bne_s	.L398
	ld	r2,[fp,-8]	;23
	b_s	.L399
	.align 4
.L398:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-12]	;23
	sub_s	r3,r3,r2
	ld	r2,[fp,-16]	;23
	asl_s	r2,r2,2
	cmp_s	r3,r2
	bhs	.L406
	b_s	.L401
	.align 4
.L402:
	ld	r2,[fp,-16]	;23
	asl_s	r2,r2,2
	ld	r3,[fp,-12]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r2,[fp,-16]	;23
	asl_s	r2,r2,2
	ld	r12,[fp,-8]	;23
	add_s	r2,r2,r12   ;b,b,h
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	.align 2
.L401:
	ld	r2,[fp,-16]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-16]	;26
	tst_s	r2,r2
	bne_s	.L402
	b_s	.L403
	.align 4
.L405:
	ld	r3,[fp,-12]	;23
	add_s	r2,r3,4   ;a,b,c/u3
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-8]	;23
	add_s	r12,r2,4   ;a,b,c/u3
	st	r12,[fp,-8]	;26
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	b_s	.L404
	.align 4
.L406:
	nop_s
	.align 2
.L404:
	ld	r2,[fp,-16]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-16]	;26
	tst_s	r2,r2
	bne_s	.L405
	.align 2
.L403:
	ld	r2,[fp,-4]	;23
	.align 2
.L399:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	b_s	.L408
	.align 4
.L409:
	ld	r2,[fp,-8]	;23
	add_s	r3,r2,4   ;a,b,c/u3
	st	r3,[fp,-8]	;26
	ld	r3,[fp,-12]	;23
	st_s	r3,[r2]		;16
	.align 2
.L408:
	ld	r2,[fp,-16]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-16]	;26
	tst_s	r2,r2
	bne_s	.L409
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	cmp_s	r3,r2
	bhs	.L412
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-8]	;26
	b_s	.L413
	.align 4
.L414:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	stb_s	r3,[r2]
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	.align 2
.L413:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bne_s	.L414
	b_s	.L418
	.align 4
.L412:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	cmp_s	r3,r2
	beq_s	.L418
	b_s	.L416
	.align 4
.L417:
	ld	r3,[fp,-4]	;23
	add_s	r2,r3,1   ;a,b,c/u3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	add_s	r12,r2,1   ;a,b,c/u3
	st	r12,[fp,-8]	;26
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	.align 2
.L416:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bne_s	.L417
	.align 2
.L418:
	nop_s
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,12  ;sp,sp,u7
	std	r0,[fp,-8]
	st	r2,[fp,-12]	;26
	ldd	r2,[fp,-8]
	ld	r1,[fp,-12]	;23
	and	r1,r1,32
	mov_s	r7,0	;4
	lsr	r6,r2,1
	ld	r0,[fp,-12]	;23
	not_s	r0,r0
	lsr	r0,r6,r0
	ld	r6,[fp,-12]	;23
	asl	r15,r3,r6
	or_s	r15,r15,r0
	ld	r0,[fp,-12]	;23
	asl	r14,r2,r0
	tst_s	r1,r1
	mov_s	r0,r14	;4
	mov.eq	r0,r15
	mov_s	r15,r0	;4
	tst_s	r1,r1
	mov.ne	r14,r7
	ld	r1,[fp,-12]	;23
	neg_s	r1,r1
	bmsk_s	r1,r1,5
	and	r0,r1,32
	mov_s	r7,0	;4
	asl	r6,r3,1
	ld	r1,[fp,-12]	;23
	neg_s	r1,r1
	bmsk_s	r1,r1,5
	not_s	r1,r1
	asl	r6,r6,r1
	ld	r1,[fp,-12]	;23
	neg_s	r1,r1
	bmsk_s	r1,r1,5
	lsr	r12,r2,r1
	or	r12,r12,r6
	ld	r1,[fp,-12]	;23
	neg_s	r1,r1
	bmsk_s	r1,r1,5
	lsr	r13,r3,r1
	tst_s	r0,r0
	mov_s	r2,r13	;4
	mov.eq	r2,r12
	mov_s	r12,r2	;4
	tst_s	r0,r0
	mov.ne	r13,r7
	or	r4,r12,r14
	or	r5,r13,r15
	vadd2	r12,r4,0
	vadd2	r0,r12,0
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,12  ;sp,sp,u7
	std	r0,[fp,-8]
	st	r2,[fp,-12]	;26
	ldd	r2,[fp,-8]
	ld	r1,[fp,-12]	;23
	and	r1,r1,32
	mov_s	r7,0	;4
	asl	r6,r3,1
	ld	r0,[fp,-12]	;23
	not_s	r0,r0
	asl	r0,r6,r0
	ld	r6,[fp,-12]	;23
	lsr	r14,r2,r6
	or_s	r14,r14,r0
	ld	r0,[fp,-12]	;23
	lsr	r15,r3,r0
	tst_s	r1,r1
	mov_s	r0,r15	;4
	mov.eq	r0,r14
	mov_s	r14,r0	;4
	tst_s	r1,r1
	mov.ne	r15,r7
	ld	r1,[fp,-12]	;23
	neg_s	r1,r1
	bmsk_s	r1,r1,5
	and	r0,r1,32
	mov_s	r7,0	;4
	lsr	r6,r2,1
	ld	r1,[fp,-12]	;23
	neg_s	r1,r1
	bmsk_s	r1,r1,5
	not_s	r1,r1
	lsr	r6,r6,r1
	ld	r1,[fp,-12]	;23
	neg_s	r1,r1
	bmsk_s	r1,r1,5
	asl	r13,r3,r1
	or	r13,r13,r6
	ld	r1,[fp,-12]	;23
	neg_s	r1,r1
	bmsk_s	r1,r1,5
	asl	r12,r2,r1
	tst_s	r0,r0
	mov_s	r2,r12	;4
	mov.eq	r2,r13
	mov_s	r13,r2	;4
	tst_s	r0,r0
	mov.ne	r12,r7
	or	r4,r12,r14
	or	r5,r13,r15
	vadd2	r12,r4,0
	vadd2	r0,r12,0
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	neg_s	r2,r2
	ror	r2,r3,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	ror	r2,r3,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	neg_s	r2,r2
	ror	r2,r3,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	ror	r2,r3,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st	r1,[fp,-8]	;26
	sth	r2,[fp,-4]
	ldh	r3,[fp,-4]
	ld	r2,[fp,-8]	;23
	asl	r2,r3,r2
	exth_s	r3,r2
	ldh	r12,[fp,-4]
	ld	r2,[fp,-8]	;23
	rsub	r2,r2,16
	lsr	r2,r12,r2
	exth_s	r2,r2
	or_s	r2,r2,r3
	exth_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st	r1,[fp,-8]	;26
	sth	r2,[fp,-4]
	ldh	r3,[fp,-4]
	ld	r2,[fp,-8]	;23
	lsr	r2,r3,r2
	exth_s	r3,r2
	ldh	r12,[fp,-4]
	ld	r2,[fp,-8]	;23
	rsub	r2,r2,16
	asl	r2,r12,r2
	exth_s	r2,r2
	or_s	r2,r2,r3
	exth_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st	r1,[fp,-8]	;26
	stb	r2,[fp,-4]
	ldb	r3,[fp,-4]
	ld	r2,[fp,-8]	;23
	asl	r2,r3,r2
	extb_s	r3,r2
	ldb	r12,[fp,-4]
	ld	r2,[fp,-8]	;23
	rsub	r2,r2,8
	lsr	r2,r12,r2
	extb_s	r2,r2
	or_s	r2,r2,r3
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st	r1,[fp,-8]	;26
	stb	r2,[fp,-4]
	ldb	r3,[fp,-4]
	ld	r2,[fp,-8]	;23
	lsr	r2,r3,r2
	extb_s	r3,r2
	ldb	r12,[fp,-4]
	ld	r2,[fp,-8]	;23
	rsub	r2,r2,8
	asl	r2,r12,r2
	extb_s	r2,r2
	or_s	r2,r2,r3
	extb_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r2,[fp,-8]
	mov_s	r2,255	;3
	st	r2,[fp,-4]	;26
	ldh	r3,[fp,-8]
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,8
	and_s	r2,r2,r3
	lsr_s	r2,r2,8
	exth_s	r3,r2
	ld	r2,[fp,-4]	;23
	exth_s	r12,r2
	ldh	r2,[fp,-8]
	and_s	r2,r2,r12
	exth_s	r2,r2
	asl_s	r2,r2,8
	exth_s	r2,r2
	or_s	r2,r2,r3
	exth_s	r2,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	mov_s	r2,255	;3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	asl	r3,r2,24
	ld	r2,[fp,-8]	;23
	and_s	r2,r2,r3
	lsr	r3,r2,24
	ld	r2,[fp,-4]	;23
	asl	r12,r2,16
	ld	r2,[fp,-8]	;23
	and_s	r2,r2,r12
	lsr_s	r2,r2,8
	or_s	r3,r3,r2
	ld	r2,[fp,-4]	;23
	asl	r12,r2,8
	ld	r2,[fp,-8]	;23
	and_s	r2,r2,r12
	asl_s	r2,r2,8
	or_s	r3,r3,r2
	ld	r2,[fp,-4]	;23
	ld	r12,[fp,-8]	;23
	and_s	r2,r2,r12
	asl_s	r2,r2,24
	or_s	r2,r2,r3
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	std.a	r22,[sp,-8]
	std.a	r20,[sp,-8]
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub3	sp,sp,21 ;a,b,u6
	std	r0,[fp,-16]
	mov_s	r2,255	;3
	mov_s	r3,0	;3
	std	r2,[fp,-8]
	ld	r2,[fp,-8]	;23
	asl	r13,r2,24
	mov_s	r12,0	;3
	ld	r2,[fp,-16]	;23
	and	r14,r2,r12
	ld	r2,[fp,-12]	;23
	and	r15,r2,r13
	lsr	r58,r15,24
	mov	r59,0	;5
	ld	r2,[fp,-8]	;23
	asl	r7,r2,16
	mov_s	r6,0	;4
	ld	r2,[fp,-16]	;23
	and	r22,r2,r6
	ld	r2,[fp,-12]	;23
	and	r23,r2,r7
	lsr	r10,r23,8
	mov_s	r11,0	;4
	or	r2,r58,r10
	st	r2,[fp,-64]	;26
	or	r2,r59,r11
	st	r2,[fp,-60]	;26
	ld	r2,[fp,-8]	;23
	asl	r21,r2,8
	mov_s	r20,0	;4
	ld	r2,[fp,-16]	;23
	and	r8,r2,r20
	ld	r2,[fp,-12]	;23
	and	r9,r2,r21
	asl	r2,r9,8
	lsr	r4,r8,24
	or	r4,r4,r2
	lsr	r5,r9,24
	ldd	r2,[fp,-64]
	mov_s	r12,r2	;4
	or	r12,r12,r4
	st	r12,[fp,-72]	;26
	mov_s	r2,r3	;4
	or	r2,r2,r5
	st	r2,[fp,-68]	;26
	ld	r2,[fp,-8]	;23
	asl_s	r2,r2,0
	st	r2,[fp,-76]	;26
	st	0,[fp,-80]	;37
	ld	r2,[fp,-16]	;23
	ldd	r12,[fp,-80]
	mov_s	r3,r12	;4
	and	r18,r2,r3
	ld	r2,[fp,-12]	;23
	mov_s	r3,r13	;4
	and_s	r3,r3,r2
	mov_s	r19,r3	;4
	asl	r2,r19,24
	lsr	r16,r18,8
	or	r16,r16,r2
	lsr	r17,r19,8
	ldd	r2,[fp,-72]
	mov_s	r12,r2	;4
	or	r12,r12,r16
	st	r12,[fp,-88]	;26
	mov_s	r2,r3	;4
	or	r2,r2,r17
	st	r2,[fp,-84]	;26
	ld	r2,[fp,-8]	;23
	lsr	r3,r2,8
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,24
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-20]	;23
	or_s	r2,r2,r3
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-8]	;23
	asl_s	r2,r2,24
	st	r2,[fp,-24]	;26
	ld	r2,[fp,-16]	;23
	ldd	r12,[fp,-24]
	mov_s	r3,r12	;4
	and_s	r2,r2,r3
	st	r2,[fp,-96]	;26
	ld	r2,[fp,-12]	;23
	mov_s	r3,r13	;4
	and_s	r3,r3,r2
	st	r3,[fp,-92]	;26
	ldd	r12,[fp,-96]
	mov_s	r2,r12	;4
	lsr_s	r2,r2,24
	mov_s	r3,r13	;4
	asl_s	r3,r3,8
	st	r3,[fp,-28]	;26
	ld	r3,[fp,-28]	;23
	or_s	r3,r3,r2
	st	r3,[fp,-28]	;26
	mov_s	r2,r12	;4
	asl_s	r2,r2,8
	st	r2,[fp,-32]	;26
	ldd	r2,[fp,-88]
	mov_s	r14,r2	;4
	ldd	r12,[fp,-32]
	mov_s	r15,r12	;4
	or_s	r14,r14,r15
	st	r14,[fp,-104]	;26
	mov_s	r2,r3	;4
	mov_s	r3,r13	;4
	or_s	r2,r2,r3
	st	r2,[fp,-100]	;26
	ld	r2,[fp,-8]	;23
	lsr_s	r2,r2,16
	ld	r3,[fp,-4]	;23
	asl_s	r3,r3,16
	st	r3,[fp,-36]	;26
	ld	r3,[fp,-36]	;23
	or_s	r3,r3,r2
	st	r3,[fp,-36]	;26
	ld	r2,[fp,-8]	;23
	asl_s	r2,r2,16
	st	r2,[fp,-40]	;26
	ld	r2,[fp,-16]	;23
	ldd	r12,[fp,-40]
	mov_s	r3,r12	;4
	and_s	r2,r2,r3
	st	r2,[fp,-112]	;26
	ld	r2,[fp,-12]	;23
	mov_s	r3,r13	;4
	and_s	r3,r3,r2
	st	r3,[fp,-108]	;26
	ldd	r12,[fp,-112]
	mov_s	r2,r12	;4
	lsr_s	r2,r2,8
	mov_s	r3,r13	;4
	asl_s	r3,r3,24
	st	r3,[fp,-44]	;26
	ld	r3,[fp,-44]	;23
	or_s	r3,r3,r2
	st	r3,[fp,-44]	;26
	mov_s	r2,r12	;4
	asl_s	r2,r2,24
	st	r2,[fp,-48]	;26
	ldd	r2,[fp,-104]
	mov_s	r14,r2	;4
	ldd	r12,[fp,-48]
	mov_s	r15,r12	;4
	or_s	r14,r14,r15
	st	r14,[fp,-120]	;26
	mov_s	r2,r3	;4
	mov_s	r3,r13	;4
	or_s	r2,r2,r3
	st	r2,[fp,-116]	;26
	ld	r2,[fp,-8]	;23
	lsr_s	r2,r2,24
	ld	r3,[fp,-4]	;23
	asl_s	r3,r3,8
	st	r3,[fp,-52]	;26
	ld	r3,[fp,-52]	;23
	or_s	r3,r3,r2
	st	r3,[fp,-52]	;26
	ld	r2,[fp,-8]	;23
	asl_s	r2,r2,8
	st	r2,[fp,-56]	;26
	ld	r2,[fp,-16]	;23
	ldd	r12,[fp,-56]
	mov_s	r3,r12	;4
	and_s	r2,r2,r3
	st	r2,[fp,-128]	;26
	ld	r2,[fp,-12]	;23
	mov_s	r3,r13	;4
	and_s	r3,r3,r2
	st	r3,[fp,-124]	;26
	ld	r2,[fp,-128]	;23
	asl_s	r2,r2,8
	st	r2,[fp,-132]	;26
	st	0,[fp,-136]	;37
	ldd	r2,[fp,-120]
	mov_s	r14,r2	;4
	ldd	r12,[fp,-136]
	mov_s	r15,r12	;4
	or_s	r14,r14,r15
	st	r14,[fp,-144]	;26
	mov_s	r2,r3	;4
	mov_s	r3,r13	;4
	or_s	r2,r2,r3
	st	r2,[fp,-140]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-16]	;23
	and_s	r2,r2,r3
	st	r2,[fp,-152]	;26
	ld	r2,[fp,-4]	;23
	ld	r3,[fp,-12]	;23
	and_s	r2,r2,r3
	st	r2,[fp,-148]	;26
	ld	r2,[fp,-152]	;23
	asl_s	r2,r2,24
	st	r2,[fp,-156]	;26
	st	0,[fp,-160]	;37
	ldd	r2,[fp,-144]
	mov_s	r14,r2	;4
	ldd	r12,[fp,-160]
	mov_s	r15,r12	;4
	or_s	r14,r14,r15
	st	r14,[fp,-168]	;26
	mov_s	r2,r3	;4
	mov_s	r3,r13	;4
	or_s	r2,r2,r3
	st	r2,[fp,-164]	;26
	ldd	r0,[fp,-168]
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,8]
	ldd.ab	r22,[sp,8]
	j_s	[blink]
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	0,[fp,-4]	;37
	b_s	.L446
	.align 4
.L449:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	lsr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L447
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	b_s	.L448
	.align 4
.L447:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L446:
	ld	r2,[fp,-4]	;23
	cmp_s	r2,31
	bls_s	.L449
	mov_s	r2,0	;3
	.align 2
.L448:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L451
	mov_s	r2,0	;3
	b_s	.L452
	.align 4
.L451:
	mov_s	r13,1	;3
	b_s	.L453
	.align 4
.L454:
	asr_s	r2,r2,1
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L453:
	and	r3,r2,1
	tst_s	r3,r3
	beq_s	.L454
	mov_s	r2,r13	;4
	.align 2
.L452:
	mov_s	r0,r2	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]
	mov_s	r1,0xff7fffff ; -3.402823466385288598117e+38
	ld	r0,[fp,-4]
	bl	@__ltsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bn	.L456
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	ld	r0,[fp,-4]
	bl	@__gtsf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L461
	.align 2
.L456:
	mov_s	r2,1	;3
	b_s	.L460
	.align 4
.L461:
	mov_s	r2,0	;3
	.align 2
.L460:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	gl_isinff, .-gl_isinff
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[fp,-8]
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	ldd	r0,[fp,-8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bn	.L463
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	ldd	r0,[fp,-8]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L468
	.align 2
.L463:
	mov_s	r2,1	;3
	b_s	.L467
	.align 4
.L468:
	mov_s	r2,0	;3
	.align 2
.L467:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[fp,-8]
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	ldd	r0,[fp,-8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bn	.L470
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	ldd	r0,[fp,-8]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L475
	.align 2
.L470:
	mov_s	r2,1	;3
	b_s	.L474
	.align 4
.L475:
	mov_s	r2,0	;3
	.align 2
.L474:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r0,[fp,-8]	;23
	bl	@__floatsidf;1
	ld	r2,[fp,-4]	;23
	std	r0,[r2]
	nop_s
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	_Qp_itoq, .-_Qp_itoq
	.align 4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-8]
	st	r1,[fp,-12]	;26
	ld	r1,[fp,-8]
	ld	r0,[fp,-8]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L478
	ld	r2,[fp,-8]
	mov_s	r1,r2
	mov_s	r0,r2
	bl	@__addsf3;1
	mov_s	r2,r0
	mov_s	r1,r2
	ld	r0,[fp,-8]
	bl	@__nesf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L478
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	bp	.L480
	mov_s	r2,0x3f000000 ; 5.0e-1
	b_s	.L481
	.align 4
.L480:
	mov_s	r2,0x40000000 ; 2.0e+0
	.align 2
.L481:
	st	r2,[fp,-4]
	.align 2
.L484:
	ld	r2,[fp,-12]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L482
	ld	r1,[fp,-4]
	ld	r0,[fp,-8]
	bl	@__mulsf3;1
	mov_s	r2,r0
	st	r2,[fp,-8]
	.align 2
.L482:
	ld	r2,[fp,-12]	;23
	div	r2,r2,2
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	beq_s	.L487
	ld	r1,[fp,-4]
	ld	r0,[fp,-4]
	bl	@__mulsf3;1
	mov_s	r2,r0
	st	r2,[fp,-4]
	b_s	.L484
	.align 4
.L487:
	nop_s
	.align 2
.L478:
	ld	r2,[fp,-8]
	mov_s	r0,r2
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	ldexpf, .-ldexpf
	.align 4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	std	r0,[fp,-16]
	st	r2,[fp,-20]	;26
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-16]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L489
	ldd	r0,[fp,-16]
	vadd2	r2,r0,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	ldd	r0,[fp,-16]
	bl	@__nedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L489
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bp	.L491
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	b_s	.L492
	.align 4
.L491:
	mov_s	r2,0	;3
	mov_s	r3,1073741824	;13
	.align 2
.L492:
	std	r2,[fp,-8]
	.align 2
.L495:
	ld	r2,[fp,-20]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L493
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-16]
	bl	@__muldf3;1
	std	r0,[fp,-16]
	.align 2
.L493:
	ld	r2,[fp,-20]	;23
	div	r2,r2,2
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L498
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__muldf3;1
	std	r0,[fp,-8]
	b_s	.L495
	.align 4
.L498:
	nop_s
	.align 2
.L489:
	ldd	r2,[fp,-16]
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	ldexp, .-ldexp
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	std	r0,[fp,-16]
	st	r2,[fp,-20]	;26
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-16]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L500
	ldd	r0,[fp,-16]
	vadd2	r2,r0,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	ldd	r0,[fp,-16]
	bl	@__nedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L500
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bp	.L502
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	b_s	.L503
	.align 4
.L502:
	mov_s	r2,0	;3
	mov_s	r3,1073741824	;13
	.align 2
.L503:
	std	r2,[fp,-8]
	.align 2
.L506:
	ld	r2,[fp,-20]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L504
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-16]
	bl	@__muldf3;1
	std	r0,[fp,-16]
	.align 2
.L504:
	ld	r2,[fp,-20]	;23
	div	r2,r2,2
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L509
	ldd	r2,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__muldf3;1
	std	r0,[fp,-8]
	b_s	.L506
	.align 4
.L509:
	nop_s
	.align 2
.L500:
	ldd	r2,[fp,-16]
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-8]	;26
	b_s	.L511
	.align 4
.L512:
	ld	r2,[fp,-4]	;23
	add_s	r3,r2,1   ;a,b,c/u3
	st	r3,[fp,-4]	;26
	ldb_s	r12,[r2]
	ld	r2,[fp,-8]	;23
	add_s	r3,r2,1   ;a,b,c/u3
	st	r3,[fp,-8]	;26
	ldb_s	r3,[r2]
	xor_s	r3,r3,r12
	extb_s	r3,r3
	stb_s	r3,[r2]
	ld	r2,[fp,-20]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-20]	;26
	.align 2
.L511:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bne_s	.L512
	ld	r2,[fp,-12]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	r2,[fp,-16]	;26
	ld	r0,[fp,-8]	;23
	bl	@strlen;1
	mov_s	r2,r0	;4
	ld	r3,[fp,-8]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	b_s	.L515
	.align 4
.L517:
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-16]	;26
	.align 2
.L515:
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	beq_s	.L516
	ld	r2,[fp,-12]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	stb_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L517
	.align 2
.L516:
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	bne_s	.L518
	ld	r2,[fp,-4]	;23
	stb	0,[r2]
	.align 2
.L518:
	ld	r2,[fp,-8]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	0,[fp,-4]	;37
	b_s	.L521
	.align 4
.L526:
	nop_s
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L521:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	bhs_s	.L522
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,r3   ;b,b,h
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L526
	.align 2
.L522:
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	b_s	.L528
	.align 4
.L532:
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	b_s	.L529
	.align 4
.L531:
	ld	r2,[fp,-4]	;23
	add_s	r3,r2,1   ;a,b,c/u3
	st	r3,[fp,-4]	;26
	ldb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	bne_s	.L529
	ld	r2,[fp,-8]	;23
	b_s	.L530
	.align 4
.L529:
	ld	r2,[fp,-4]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L531
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L528:
	ld	r2,[fp,-8]	;23
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L532
	mov_s	r2,0	;3
	.align 2
.L530:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st	r1,[fp,-8]	;26
	st	0,[fp,-4]	;37
	.align 2
.L535:
	ldb_s	r3,[r2]
	mov_s	r12,r3	;4
	ld	r3,[fp,-8]	;23
	cmp_s	r3,r12
	bne_s	.L534
	st	r2,[fp,-4]	;26
	.align 2
.L534:
	mov_s	r3,r2	;4
	add_s	r2,r3,1   ;a,b,c/u3
	ldb_s	r3,[r3]
	tst_s	r3,r3
	bne_s	.L535
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	ld	r0,[fp,-16]	;23
	bl	@strlen;1
	st	r0,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L543
	ld	r2,[fp,-12]	;23
	b_s	.L539
	.align 4
.L542:
	ld	r2,[fp,-8]	;23
	ld	r1,[fp,-16]	;23
	ld	r0,[fp,-4]	;23
	bl	@strncmp;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L541
	ld	r2,[fp,-4]	;23
	b_s	.L539
	.align 4
.L541:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	b_s	.L540
	.align 4
.L543:
	nop_s
	.align 2
.L540:
	ld	r2,[fp,-16]	;23
	ldb_s	r2,[r2]
	mov_s	r1,r2	;4
	ld	r0,[fp,-4]	;23
	bl	@strchr;1
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	bne_s	.L542
	mov_s	r2,0	;3
	.align 2
.L539:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	strstr, .-strstr
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	push_s	blink
	std.a	r14,[sp,-8]
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[fp,-8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L545
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[fp,-16]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	bgt	.L547
	.align 2
.L545:
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[fp,-8]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L548
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[fp,-16]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L548
	.align 2
.L547:
	ld	r14,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	bxor	r15,r2,31
	b_s	.L551
	.align 4
.L548:
	ldd	r14,[fp,-8]
	.align 2
.L551:
	vadd2	r0,r14,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,8]	;23
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,24  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	st	r3,[fp,-24]	;26
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-24]	;23
	sub_s	r2,r3,r2
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-24]	;23
	tst_s	r2,r2
	bne_s	.L555
	ld	r2,[fp,-12]	;23
	b_s	.L556
	.align 4
.L555:
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-24]	;23
	setlo	r2,r3,r2
	extb_s	r2,r2
	tst_s	r2,r2
	beq_s	.L557
	mov_s	r2,0	;3
	b_s	.L556
	.align 4
.L557:
	ld	r2,[fp,-12]	;23
	st	r2,[fp,-4]	;26
	b_s	.L558
	.align 4
.L560:
	ld	r2,[fp,-4]	;23
	ldb_s	r3,[r2]
	ld	r2,[fp,-20]	;23
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	bne_s	.L559
	ld	r2,[fp,-4]	;23
	add_s	r3,r2,1   ;a,b,c/u3
	ld	r2,[fp,-20]	;23
	add_s	r12,r2,1   ;a,b,c/u3
	ld	r2,[fp,-24]	;23
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r1,r12	;4
	mov_s	r0,r3	;4
	bl	@memcmp;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L559
	ld	r2,[fp,-4]	;23
	b_s	.L556
	.align 4
.L559:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L558:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	cmp_s	r3,r2
	bls	.L560
	mov_s	r2,0	;3
	.align 2
.L556:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-12]	;23
	ld	r1,[fp,-8]	;23
	ld	r0,[fp,-4]	;23
	bl	@memcpy;1
	mov_s	r2,r0	;4
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	mempcpy, .-mempcpy
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	push_s	blink
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	std	r0,[fp,-16]
	st	r2,[fp,-20]	;26
	st	0,[fp,-8]	;37
	st	0,[fp,-4]	;37
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[fp,-16]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L564
	ld	r16,[fp,-16]	;23
	ld	r2,[fp,-12]	;23
	bxor	r17,r2,31
	std	r16,[fp,-16]
	st	1,[fp,-4]	;37
	.align 2
.L564:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	ldd	r0,[fp,-16]
	bl	@__gedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bn	.L581
	b_s	.L568
	.align 4
.L569:
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	mov_s	r2,0	;3
	mov_s	r3,1073741824	;13
	ldd	r0,[fp,-16]
	bl	@__divdf3;1
	std	r0,[fp,-16]
	.align 2
.L568:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	ldd	r0,[fp,-16]
	bl	@__gedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L569
	b_s	.L570
	.align 4
.L581:
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	ldd	r0,[fp,-16]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L570
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[fp,-16]
	bl	@__nedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L570
	b_s	.L573
	.align 4
.L574:
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,-1   ;h,h,s3
	st	r2,[fp,-8]	;26
	ldd	r0,[fp,-16]
	vadd2	r2,r0,0
	bl	@__adddf3;1
	std	r0,[fp,-16]
	.align 2
.L573:
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	ldd	r0,[fp,-16]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bn	.L574
	.align 2
.L570:
	ld	r2,[fp,-20]	;23
	ld	r3,[fp,-8]	;23
	st_s	r3,[r2]		;16
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	beq_s	.L575
	ld	r14,[fp,-16]	;23
	ld	r2,[fp,-12]	;23
	bxor	r15,r2,31
	std	r14,[fp,-16]
	.align 2
.L575:
	ldd	r2,[fp,-16]
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,16]	;23
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
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[fp,-24]
	std	r2,[fp,-32]
	std	0,[fp,-8]
	ldd	r2,[fp,-24]
	std	r2,[fp,-16]
	b_s	.L583
	.align 4
.L586:
	ld	r2,[fp,-16]	;23
	and	r12,r2,1
	ld	r2,[fp,-12]	;23
	and	r13,r2,0
	mov_s	r2,r12	;4
	or_s	r2,r2,r13
	tst_s	r2,r2
	beq_s	.L584
	ldd	r14,[fp,-8]
	ldd	r2,[fp,-32]
	add.f	r4,r14,r2
	adc	r5,r15,r3
	std	r4,[fp,-8]
	.align 2
.L584:
	ldd	r2,[fp,-32]
	add.f	r6,r2,r2
	adc	r7,r3,r3
	std	r6,[fp,-32]
	ldd	r2,[fp,-16]
	lsr.f	r9,r3
	rrc	r8,r2
	std	r8,[fp,-16]
	.align 2
.L583:
	ld	r2,[fp,-16]	;23
	ld	r3,[fp,-12]	;23
	or_s	r2,r2,r3
	tst_s	r2,r2
	bne_s	.L586
	ldd	r2,[fp,-8]
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	st	1,[fp,-4]	;37
	st	0,[fp,-8]	;37
	b_s	.L589
	.align 4
.L591:
	ld	r2,[fp,-16]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-4]	;26
	.align 2
.L589:
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	bhs	.L597
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	beq_s	.L597
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	bp	.L591
	b_s	.L597
	.align 4
.L594:
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	blo_s	.L593
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-16]	;23
	sub_s	r2,r3,r2
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	or_s	r2,r2,r3
	st	r2,[fp,-8]	;26
	.align 2
.L593:
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	lsr_s	r2,r2
	st	r2,[fp,-16]	;26
	b_s	.L592
	.align 4
.L597:
	nop_s
	.align 2
.L592:
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	bne_s	.L594
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L595
	ld	r2,[fp,-12]	;23
	b_s	.L596
	.align 4
.L595:
	ld	r2,[fp,-8]	;23
	.align 2
.L596:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	stb	r2,[fp,-8]
	ldb	r2,[fp,-8]
	tst_s	r2,r2
	bne_s	.L599
	mov_s	r2,7	;3
	b_s	.L600
	.align 4
.L599:
	ldb	r2,[fp,-8]
	asl_s	r2,r2,8
	fls	r2,r2
	rsub	r2,r2,31
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L600:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	std	r0,[fp,-12]
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bp	.L602
	ldd	r2,[fp,-12]
	not_s	r2,r2
	not_s	r3,r3
	std	r2,[fp,-12]
	.align 2
.L602:
	ld	r2,[fp,-12]	;23
	ld	r3,[fp,-8]	;23
	or_s	r2,r2,r3
	tst_s	r2,r2
	bne_s	.L604
	mov_s	r2,63	;3
	b_s	.L605
	.align 4
.L604:
	ldd	r2,[fp,-12]
	tst_s	r3,r3
	beq_s	.L606
	fls	r2,r3
	rsub	r2,r2,31
	b_s	.L607
	.align 4
.L606:
	fls	r2,r2
	rsub	r2,r2,31
	add_s	r2,r2,32   ;b,b,h
	.align 2
.L607:
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L605:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	0,[fp,-4]	;37
	b_s	.L609
	.align 4
.L611:
	ld	r2,[fp,-8]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L610
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L610:
	ld	r2,[fp,-8]	;23
	lsr_s	r2,r2
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-12]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-12]	;26
	.align 2
.L609:
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L611
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,32  ;sp,sp,u7
	st	r0,[fp,-24]	;26
	st	r1,[fp,-28]	;26
	st	r2,[fp,-32]	;26
	ld	r2,[fp,-32]	;23
	lsr_s	r2,r2,3
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-32]	;23
	bmskn	r2,r2,2
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-24]	;23
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-28]	;23
	st	r2,[fp,-20]	;26
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-20]	;23
	cmp_s	r3,r2
	blo_s	.L614
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-32]	;23
	add_s	r2,r2,r3   ;b,b,h
	ld	r3,[fp,-16]	;23
	cmp_s	r3,r2
	bls	.L623
	.align 2
.L614:
	st	0,[fp,-4]	;37
	b_s	.L616
	.align 4
.L617:
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,3
	ld	r3,[fp,-28]	;23
	add_s	r2,r2,r3   ;b,b,h
	ld	r3,[fp,-4]	;23
	asl_s	r3,r3,3
	ld	r12,[fp,-24]	;23
	add_s	r12,r12,r3   ;b,b,h
	ldd	r2,[r2]
	std	r2,[r12]
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L616:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	blo	.L617
	b_s	.L618
	.align 4
.L619:
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-8]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r12,[fp,-16]	;23
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L618:
	ld	r3,[fp,-32]	;23
	ld	r2,[fp,-8]	;23
	cmp_s	r3,r2
	bhi_s	.L619
	b_s	.L620
	.align 4
.L622:
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-32]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r12,[fp,-16]	;23
	ld	r2,[fp,-32]	;23
	add_s	r2,r2,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	b_s	.L621
	.align 4
.L623:
	nop_s
	.align 2
.L621:
	ld	r2,[fp,-32]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-32]	;26
	tst_s	r2,r2
	bne_s	.L622
	nop_s
	.align 2
.L620:
	nop_s
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,28  ;sp,sp,u7
	st	r0,[fp,-20]	;26
	st	r1,[fp,-24]	;26
	st	r2,[fp,-28]	;26
	ld	r2,[fp,-28]	;23
	lsr_s	r2,r2
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-20]	;23
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-24]	;23
	st	r2,[fp,-16]	;26
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	blo_s	.L625
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-28]	;23
	add_s	r2,r2,r3   ;b,b,h
	ld	r3,[fp,-12]	;23
	cmp_s	r3,r2
	bls	.L633
	.align 2
.L625:
	st	0,[fp,-4]	;37
	b_s	.L627
	.align 4
.L628:
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,1
	ld	r3,[fp,-24]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,1
	ld	r12,[fp,-20]	;23
	add_s	r2,r2,r12   ;b,b,h
	ldh_s.x	r3,[r3]
	sth_s	r3,[r2]
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L627:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	cmp_s	r3,r2
	blo_s	.L628
	ld	r2,[fp,-28]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L630
	ld	r2,[fp,-28]	;23
	add_s	r2,r2,-1   ;h,h,s3
	ld	r3,[fp,-16]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r2,[fp,-28]	;23
	add_s	r2,r2,-1   ;h,h,s3
	ld	r12,[fp,-12]	;23
	add_s	r2,r2,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	b_s	.L630
	.align 4
.L632:
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-28]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r12,[fp,-12]	;23
	ld	r2,[fp,-28]	;23
	add_s	r2,r2,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	b_s	.L631
	.align 4
.L633:
	nop_s
	.align 2
.L631:
	ld	r2,[fp,-28]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-28]	;26
	tst_s	r2,r2
	bne_s	.L632
	nop_s
	.align 2
.L630:
	nop_s
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,32  ;sp,sp,u7
	st	r0,[fp,-24]	;26
	st	r1,[fp,-28]	;26
	st	r2,[fp,-32]	;26
	ld	r2,[fp,-32]	;23
	lsr_s	r2,r2,2
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-32]	;23
	bmskn	r2,r2,1
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-24]	;23
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-28]	;23
	st	r2,[fp,-20]	;26
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-20]	;23
	cmp_s	r3,r2
	blo_s	.L635
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-32]	;23
	add_s	r2,r2,r3   ;b,b,h
	ld	r3,[fp,-16]	;23
	cmp_s	r3,r2
	bls	.L644
	.align 2
.L635:
	st	0,[fp,-4]	;37
	b_s	.L637
	.align 4
.L638:
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,2
	ld	r3,[fp,-28]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,2
	ld	r12,[fp,-24]	;23
	add_s	r2,r2,r12   ;b,b,h
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L637:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	blo_s	.L638
	b_s	.L639
	.align 4
.L640:
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-8]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r12,[fp,-16]	;23
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L639:
	ld	r3,[fp,-32]	;23
	ld	r2,[fp,-8]	;23
	cmp_s	r3,r2
	bhi_s	.L640
	b_s	.L641
	.align 4
.L643:
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-32]	;23
	add_s	r3,r3,r2   ;b,b,h
	ld	r12,[fp,-16]	;23
	ld	r2,[fp,-32]	;23
	add_s	r2,r2,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	b_s	.L642
	.align 4
.L644:
	nop_s
	.align 2
.L642:
	ld	r2,[fp,-32]	;23
	sub	r3,r2,1 ;a,b,u6
	st	r3,[fp,-32]	;26
	tst_s	r2,r2
	bne_s	.L643
	nop_s
	.align 2
.L641:
	nop_s
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	rem	r2,r3,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r0,[fp,-4]	;23
	bl	@__floatunsidf;1
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r0,[fp,-4]	;23
	bl	@__floatunsisf;1
	mov_s	r2,r0
	mov_s	r0,r2
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__floatundidf;1
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[fp,-8]
	ldd	r0,[fp,-8]
	bl	@__floatundisf;1
	mov_s	r2,r0
	mov_s	r0,r2
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	remu	r2,r3,r2
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r2,[fp,-8]
	st	0,[fp,-4]	;37
	b_s	.L658
	.align 4
.L661:
	ldh	r3,[fp,-8]
	ld	r2,[fp,-4]	;23
	rsub	r2,r2,15
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	bne_s	.L663
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L658:
	ld	r2,[fp,-4]	;23
	cmp_s	r2,15
	ble_s	.L661
	b_s	.L660
	.align 4
.L663:
	nop_s
	.align 2
.L660:
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r2,[fp,-8]
	st	0,[fp,-4]	;37
	b_s	.L665
	.align 4
.L668:
	ldh	r3,[fp,-8]
	ld	r2,[fp,-4]	;23
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	bne_s	.L670
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L665:
	ld	r2,[fp,-4]	;23
	cmp_s	r2,15
	ble_s	.L668
	b_s	.L667
	.align 4
.L670:
	nop_s
	.align 2
.L667:
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]
	mov_s	r1,0x47000000 ; 3.2768e+4
	ld	r0,[fp,-4]
	bl	@__gesf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bn	.L676
	mov_s	r1,0x47000000 ; 3.2768e+4
	ld	r0,[fp,-4]
	bl	@__subsf3;1
	mov_s	r2,r0
	mov_s	r0,r2
	bl	@__fixsfsi;1
	mov_s	r2,r0	;4
	add_s	r2,r2,32768   ;b,b,limm
	b_s	.L674
	.align 4
.L676:
	ld	r0,[fp,-4]
	bl	@__fixsfsi;1
	mov_s	r2,r0	;4
	.align 2
.L674:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r2,[fp,-12]
	st	0,[fp,-8]	;37
	st	0,[fp,-4]	;37
	b_s	.L678
	.align 4
.L680:
	ldh	r3,[fp,-12]
	ld	r2,[fp,-4]	;23
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L679
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L679:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L678:
	ld	r2,[fp,-4]	;23
	cmp_s	r2,15
	ble_s	.L680
	ld	r2,[fp,-8]	;23
	bmsk_s	r2,r2,0
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r2,[fp,-12]
	st	0,[fp,-8]	;37
	st	0,[fp,-4]	;37
	b_s	.L683
	.align 4
.L685:
	ldh	r3,[fp,-12]
	ld	r2,[fp,-4]	;23
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L684
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-8]	;26
	.align 2
.L684:
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,1   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L683:
	ld	r2,[fp,-4]	;23
	cmp_s	r2,15
	ble_s	.L685
	ld	r2,[fp,-8]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	0,[fp,-4]	;37
	b_s	.L688
	.align 4
.L690:
	ld	r2,[fp,-8]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L689
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L689:
	ld	r2,[fp,-8]	;23
	lsr_s	r2,r2
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-12]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-12]	;26
	.align 2
.L688:
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L690
	ld	r2,[fp,-4]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,12  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	st	r1,[fp,-12]	;26
	st	0,[fp,-4]	;37
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	bne_s	.L698
	mov_s	r2,0	;3
	b_s	.L694
	.align 4
.L697:
	ld	r2,[fp,-12]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L696
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	.align 2
.L696:
	ld	r2,[fp,-8]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-12]	;23
	lsr_s	r2,r2
	st	r2,[fp,-12]	;26
	b_s	.L695
	.align 4
.L698:
	nop_s
	.align 2
.L695:
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	bne_s	.L697
	ld	r2,[fp,-4]	;23
	.align 2
.L694:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	st	1,[fp,-4]	;37
	st	0,[fp,-8]	;37
	b_s	.L700
	.align 4
.L702:
	ld	r2,[fp,-16]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-4]	;26
	.align 2
.L700:
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	bhs	.L708
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	beq_s	.L708
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	bp	.L702
	b_s	.L708
	.align 4
.L705:
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	blo_s	.L704
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-16]	;23
	sub_s	r2,r3,r2
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	or_s	r2,r2,r3
	st	r2,[fp,-8]	;26
	.align 2
.L704:
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	lsr_s	r2,r2
	st	r2,[fp,-16]	;26
	b_s	.L703
	.align 4
.L708:
	nop_s
	.align 2
.L703:
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	bne_s	.L705
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L706
	ld	r2,[fp,-12]	;23
	b_s	.L707
	.align 4
.L706:
	ld	r2,[fp,-8]	;23
	.align 2
.L707:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]
	st	r1,[fp,-8]
	ld	r1,[fp,-8]
	ld	r0,[fp,-4]
	bl	@__ltsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L717
	mov_s	r2,-1	;4
	b_s	.L712
	.align 4
.L717:
	ld	r1,[fp,-8]
	ld	r0,[fp,-4]
	bl	@__gtsf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L718
	mov_s	r2,1	;3
	b_s	.L712
	.align 4
.L718:
	mov_s	r2,0	;3
	.align 2
.L712:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L727
	mov_s	r2,-1	;4
	b_s	.L722
	.align 4
.L727:
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L728
	mov_s	r2,1	;3
	b_s	.L722
	.align 4
.L728:
	mov_s	r2,0	;3
	.align 2
.L722:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r14,[fp,-4]	;23
	mov_s	r12,r14	;4
	asr_s	r14,r14,31
	mov_s	r13,r14	;4
	ld	r14,[fp,-8]	;23
	mov_s	r2,r14	;4
	asr_s	r14,r14,31
	mov_s	r3,r14	;4
	mpy	r15,r13,r2
	mpy	r14,r3,r12
	add_s	r14,r14,r15   ;b,b,h
	mpydu	r2,r12,r2
	add_s	r12,r14,r3   ;a,b,c/u3
	mov_s	r3,r12	;4
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	st	r1,[fp,-8]	;26
	ld	r14,[fp,-4]	;23
	mov_s	r12,r14	;4
	mov_s	r13,0	;3
	ld	r14,[fp,-8]	;23
	mov_s	r2,r14	;4
	mov_s	r3,0	;3
	mpy	r15,r13,r2
	mpy	r14,r3,r12
	add_s	r14,r14,r15   ;b,b,h
	mpydu	r2,r12,r2
	add_s	r12,r14,r3   ;a,b,c/u3
	mov_s	r3,r12	;4
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-16]	;26
	st	r1,[fp,-20]	;26
	st	0,[fp,-8]	;37
	st	0,[fp,-12]	;37
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	bp	.L734
	ld	r2,[fp,-20]	;23
	neg_s	r2,r2
	st	r2,[fp,-20]	;26
	st	1,[fp,-8]	;37
	.align 2
.L734:
	stb	0,[fp,-1]
	b_s	.L735
	.align 4
.L738:
	ld	r2,[fp,-20]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L736
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-16]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	.align 2
.L736:
	ld	r2,[fp,-16]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-20]	;23
	asr_s	r2,r2,1
	st	r2,[fp,-20]	;26
	ldb	r2,[fp,-1]
	add_s	r2,r2,1   ;b,b,h
	stb	r2,[fp,-1]
	.align 2
.L735:
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L737
	ldb	r2,[fp,-1]
	cmp_s	r2,31
	bls	.L738
	.align 2
.L737:
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	beq_s	.L739
	ld	r2,[fp,-12]	;23
	neg_s	r2,r2
	b_s	.L741
	.align 4
.L739:
	ld	r2,[fp,-12]	;23
	.align 2
.L741:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	0,[fp,-4]	;37
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	bp	.L743
	ld	r2,[fp,-12]	;23
	neg_s	r2,r2
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	seteq	r2,r2,0
	extb_s	r2,r2
	st	r2,[fp,-4]	;26
	.align 2
.L743:
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	bp	.L744
	ld	r2,[fp,-16]	;23
	neg_s	r2,r2
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-4]	;23
	seteq	r2,r2,0
	extb_s	r2,r2
	st	r2,[fp,-4]	;26
	.align 2
.L744:
	ld	r3,[fp,-12]	;23
	ld	r12,[fp,-16]	;23
	mov_s	r2,0	;3
	mov_s	r1,r12	;4
	mov_s	r0,r3	;4
	bl	@__udivmodsi4;1
	mov_s	r2,r0	;4
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	beq_s	.L745
	ld	r2,[fp,-8]	;23
	neg_s	r2,r2
	st	r2,[fp,-8]	;26
	.align 2
.L745:
	ld	r2,[fp,-8]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	0,[fp,-4]	;37
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	bp	.L748
	ld	r2,[fp,-12]	;23
	neg_s	r2,r2
	st	r2,[fp,-12]	;26
	st	1,[fp,-4]	;37
	.align 2
.L748:
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	bp	.L749
	ld	r2,[fp,-16]	;23
	neg_s	r2,r2
	st	r2,[fp,-16]	;26
	.align 2
.L749:
	ld	r3,[fp,-12]	;23
	ld	r12,[fp,-16]	;23
	mov_s	r2,1	;3
	mov_s	r1,r12	;4
	mov_s	r0,r3	;4
	bl	@__udivmodsi4;1
	mov_s	r2,r0	;4
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	beq_s	.L750
	ld	r2,[fp,-8]	;23
	neg_s	r2,r2
	st	r2,[fp,-8]	;26
	.align 2
.L750:
	ld	r2,[fp,-8]	;23
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	mov_s	r3,r0	;4
	mov_s	r12,r1	;4
	st	r2,[fp,-16]	;26
	mov_s	r2,r3
	sth	r2,[fp,-8]
	mov_s	r2,r12
	sth	r2,[fp,-12]
	sth	1,[fp,-2]
	sth	0,[fp,-4]
	b_s	.L753
	.align 4
.L755:
	ldh	r2,[fp,-12]
	asl_s	r2,r2,1
	sth	r2,[fp,-12]
	ldh	r2,[fp,-2]
	asl_s	r2,r2,1
	sth	r2,[fp,-2]
	.align 2
.L753:
	ldh	r3,[fp,-12]
	ldh	r2,[fp,-8]
	cmp_s	r3,r2
	bhs	.L761
	ldh	r2,[fp,-2]
	tst_s	r2,r2
	beq_s	.L761
	ldh.x	r2,[fp,-12]
	tst_s	r2,r2
	bp	.L755
	b_s	.L761
	.align 4
.L758:
	ldh	r3,[fp,-8]
	ldh	r2,[fp,-12]
	cmp_s	r3,r2
	blo_s	.L757
	ldh	r3,[fp,-8]
	ldh	r2,[fp,-12]
	sub_s	r2,r3,r2
	sth	r2,[fp,-8]
	ldh	r3,[fp,-4]
	ldh	r2,[fp,-2]
	or_s	r2,r2,r3
	sth	r2,[fp,-4]
	.align 2
.L757:
	ldh	r2,[fp,-2]
	lsr_s	r2,r2
	sth	r2,[fp,-2]
	ldh	r2,[fp,-12]
	lsr_s	r2,r2
	sth	r2,[fp,-12]
	b_s	.L756
	.align 4
.L761:
	nop_s
	.align 2
.L756:
	ldh	r2,[fp,-2]
	tst_s	r2,r2
	bne_s	.L758
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	beq_s	.L759
	ldh	r2,[fp,-8]
	b_s	.L760
	.align 4
.L759:
	ldh	r2,[fp,-4]
	.align 2
.L760:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	st	r0,[fp,-12]	;26
	st	r1,[fp,-16]	;26
	st	r2,[fp,-20]	;26
	st	1,[fp,-4]	;37
	st	0,[fp,-8]	;37
	b_s	.L763
	.align 4
.L765:
	ld	r2,[fp,-16]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,1
	st	r2,[fp,-4]	;26
	.align 2
.L763:
	ld	r3,[fp,-16]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	bhs	.L771
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	beq_s	.L771
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	bp	.L765
	b_s	.L771
	.align 4
.L768:
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	blo_s	.L767
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-16]	;23
	sub_s	r2,r3,r2
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	or_s	r2,r2,r3
	st	r2,[fp,-8]	;26
	.align 2
.L767:
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-16]	;23
	lsr_s	r2,r2
	st	r2,[fp,-16]	;26
	b_s	.L766
	.align 4
.L771:
	nop_s
	.align 2
.L766:
	ld	r2,[fp,-4]	;23
	tst_s	r2,r2
	bne_s	.L768
	ld	r2,[fp,-20]	;23
	tst_s	r2,r2
	beq_s	.L769
	ld	r2,[fp,-12]	;23
	b_s	.L770
	.align 4
.L769:
	ld	r2,[fp,-8]	;23
	.align 2
.L770:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[fp,-28]
	st	r2,[fp,-32]	;26
	mov_s	r2,32	;3
	st	r2,[fp,-4]	;26
	ldd	r2,[fp,-28]
	std	r2,[fp,-12]
	ld	r2,[fp,-4]	;23
	ld	r3,[fp,-32]	;23
	and_s	r2,r2,r3
	tst_s	r2,r2
	beq_s	.L773
	st	0,[fp,-20]	;37
	ld	r3,[fp,-12]	;23
	ld	r12,[fp,-32]	;23
	ld	r2,[fp,-4]	;23
	sub_s	r2,r12,r2
	asl	r2,r3,r2
	st	r2,[fp,-16]	;26
	b_s	.L774
	.align 4
.L773:
	ld	r2,[fp,-32]	;23
	tst_s	r2,r2
	bne_s	.L775
	ldd	r2,[fp,-28]
	b_s	.L777
	.align 4
.L775:
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-32]	;23
	asl	r2,r3,r2
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-8]	;23
	mov_s	r3,r2	;4
	ld	r2,[fp,-32]	;23
	asl_s	r3,r3,r2
	ld	r12,[fp,-12]	;23
	ld	r13,[fp,-4]	;23
	ld	r2,[fp,-32]	;23
	sub_s	r2,r13,r2
	lsr	r2,r12,r2
	or_s	r2,r2,r3
	st	r2,[fp,-16]	;26
	.align 2
.L774:
	ldd	r2,[fp,-20]
	.align 2
.L777:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[fp,-28]
	st	r2,[fp,-32]	;26
	mov_s	r2,32	;3
	st	r2,[fp,-4]	;26
	ldd	r2,[fp,-28]
	std	r2,[fp,-12]
	ld	r2,[fp,-4]	;23
	ld	r3,[fp,-32]	;23
	and_s	r2,r2,r3
	tst_s	r2,r2
	beq_s	.L779
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,-1   ;h,h,s3
	asr	r2,r3,r2
	st	r2,[fp,-16]	;26
	ld	r3,[fp,-8]	;23
	ld	r12,[fp,-32]	;23
	ld	r2,[fp,-4]	;23
	sub_s	r2,r12,r2
	asr	r2,r3,r2
	st	r2,[fp,-20]	;26
	b_s	.L780
	.align 4
.L779:
	ld	r2,[fp,-32]	;23
	tst_s	r2,r2
	bne_s	.L781
	ldd	r2,[fp,-28]
	b_s	.L783
	.align 4
.L781:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-32]	;23
	asr	r2,r3,r2
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-8]	;23
	mov_s	r12,r2	;4
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-32]	;23
	sub_s	r2,r3,r2
	asl	r3,r12,r2
	ld	r12,[fp,-12]	;23
	ld	r2,[fp,-32]	;23
	lsr	r2,r12,r2
	or_s	r2,r2,r3
	st	r2,[fp,-20]	;26
	.align 2
.L780:
	ldd	r2,[fp,-20]
	.align 2
.L783:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	std.a	r22,[sp,-8]
	std.a	r20,[sp,-8]
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,88  ;sp,sp,u7
	std	r0,[fp,-8]
	ld	r2,[fp,-4]	;23
	lsr	r4,r2,24
	mov_s	r5,0	;4
	ld	r2,[fp,-4]	;23
	lsr	r8,r2,8
	mov_s	r9,0	;4
	mov_s	r2,r8	;4
	and	r12,r2,65280
	mov_s	r2,r9	;4
	and	r13,r2,0
	or	r2,r4,r12
	st	r2,[fp,-16]	;26
	or	r2,r5,r13
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	asl	r3,r2,8
	ld	r2,[fp,-8]	;23
	lsr	r14,r2,24
	or_s	r14,r14,r3
	ld	r2,[fp,-4]	;23
	lsr	r15,r2,24
	mov_s	r2,r14	;4
	and	r6,r2,16711680
	mov_s	r2,r15	;4
	and	r7,r2,0
	ldd	r2,[fp,-16]
	mov_s	r12,r2	;4
	or	r12,r12,r6
	st	r12,[fp,-24]	;26
	mov_s	r2,r3	;4
	or	r2,r2,r7
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-4]	;23
	asl	r3,r2,24
	ld	r2,[fp,-8]	;23
	lsr	r18,r2,8
	or	r18,r18,r3
	ld	r2,[fp,-4]	;23
	lsr	r19,r2,8
	mov_s	r2,r18	;4
	bmskn	r2,r2,23
	st	r2,[fp,-32]	;26
	mov_s	r2,r19	;4
	and	r2,r2,0
	st	r2,[fp,-28]	;26
	ldd	r2,[fp,-24]
	mov_s	r14,r2	;4
	ldd	r12,[fp,-32]
	mov_s	r15,r12	;4
	or_s	r14,r14,r15
	st	r14,[fp,-40]	;26
	mov_s	r2,r3	;4
	mov_s	r3,r13	;4
	or_s	r2,r2,r3
	st	r2,[fp,-36]	;26
	ld	r2,[fp,-8]	;23
	lsr_s	r2,r2,24
	ld	r3,[fp,-4]	;23
	asl	r17,r3,8
	or	r17,r17,r2
	ld	r2,[fp,-8]	;23
	asl	r16,r2,8
	mov_s	r2,r16	;4
	and	r2,r2,0
	st	r2,[fp,-48]	;26
	bmsk	r2,r17,7
	st	r2,[fp,-44]	;26
	ldd	r2,[fp,-40]
	mov_s	r14,r2	;4
	ldd	r12,[fp,-48]
	mov_s	r15,r12	;4
	or_s	r14,r14,r15
	st	r14,[fp,-56]	;26
	mov_s	r2,r3	;4
	mov_s	r3,r13	;4
	or_s	r2,r2,r3
	st	r2,[fp,-52]	;26
	ld	r2,[fp,-8]	;23
	lsr_s	r2,r2,8
	ld	r3,[fp,-4]	;23
	asl	r11,r3,24
	or	r11,r11,r2
	ld	r2,[fp,-8]	;23
	asl	r10,r2,24
	mov_s	r2,r10	;4
	and	r2,r2,0
	st	r2,[fp,-64]	;26
	mov_s	r2,r11	;4
	and	r2,r2,65280
	st	r2,[fp,-60]	;26
	ldd	r12,[fp,-56]
	mov_s	r14,r12	;4
	ldd	r2,[fp,-64]
	mov_s	r15,r2	;4
	or	r58,r14,r15
	mov_s	r12,r13	;4
	mov_s	r2,r3	;4
	or_s	r12,r12,r2
	mov	r59,r12	;5
	ld	r2,[fp,-8]	;23
	asl_s	r2,r2,8
	st	r2,[fp,-68]	;26
	st	0,[fp,-72]	;37
	ldd	r12,[fp,-72]
	mov_s	r2,r12	;4
	and	r22,r2,0
	mov_s	r2,r13	;4
	and	r23,r2,16711680
	or	r20,r58,r22
	or	r21,r59,r23
	ld	r2,[fp,-8]	;23
	asl_s	r2,r2,24
	st	r2,[fp,-76]	;26
	st	0,[fp,-80]	;37
	ldd	r2,[fp,-80]
	mov_s	r12,r2	;4
	or	r12,r12,r20
	st	r12,[fp,-88]	;26
	mov_s	r2,r3	;4
	or	r2,r2,r21
	st	r2,[fp,-84]	;26
	ldd	r0,[fp,-88]
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,8]
	ldd.ab	r22,[sp,8]
	j_s	[blink]
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,4  ;sp,sp,u7
	st	r0,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr	r3,r2,24
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,8
	and	r2,r2,65280
	or_s	r3,r3,r2
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,8
	and	r2,r2,16711680
	or_s	r3,r3,r2
	ld	r2,[fp,-4]	;23
	asl_s	r2,r2,24
	or_s	r2,r2,r3
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-16]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	cmp_s	r2,65535
	bhi_s	.L789
	mov_s	r2,16	;3
	b_s	.L790
	.align 4
.L789:
	mov_s	r2,0	;3
	.align 2
.L790:
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	rsub	r2,r2,16
	ld	r3,[fp,-4]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	and	r2,r2,65280
	tst_s	r2,r2
	bne_s	.L791
	mov_s	r2,8	;3
	b_s	.L792
	.align 4
.L791:
	mov_s	r2,0	;3
	.align 2
.L792:
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	rsub	r2,r2,8
	ld	r3,[fp,-4]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	and	r2,r2,240
	tst_s	r2,r2
	bne_s	.L793
	mov_s	r2,4	;3
	b_s	.L794
	.align 4
.L793:
	mov_s	r2,0	;3
	.align 2
.L794:
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	rsub	r2,r2,4
	ld	r3,[fp,-4]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	and	r2,r2,12
	tst_s	r2,r2
	bne_s	.L795
	mov_s	r2,2	;3
	b_s	.L796
	.align 4
.L795:
	mov_s	r2,0	;3
	.align 2
.L796:
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	rsub	r2,r2,2
	ld	r3,[fp,-4]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	and	r2,r2,2
	seteq	r2,r2,0
	extb_s	r2,r2
	mov_s	r3,r2	;4
	ld	r2,[fp,-4]	;23
	rsub	r2,r2,2
	mpy_s	r3,r3,r2
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[fp,-24]
	std	r2,[fp,-32]
	ldd	r2,[fp,-24]
	std	r2,[fp,-8]
	ldd	r2,[fp,-32]
	std	r2,[fp,-16]
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	bge_s	.L799
	mov_s	r2,0	;3
	b_s	.L804
	.align 4
.L799:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	ble_s	.L801
	mov_s	r2,2	;3
	b_s	.L804
	.align 4
.L801:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	bhs_s	.L802
	mov_s	r2,0	;3
	b_s	.L804
	.align 4
.L802:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	bls_s	.L803
	mov_s	r2,2	;3
	b_s	.L804
	.align 4
.L803:
	mov_s	r2,1	;3
	.align 2
.L804:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	ldd	r2,[fp,-16]
	ldd	r0,[fp,-8]
	bl	@__cmpdi2;1
	mov_s	r2,r0	;4
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
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
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-16]	;26
	ld	r2,[fp,-16]	;23
	st	r2,[fp,-4]	;26
	ldh	r2,[fp,-4]
	tst_s	r2,r2
	bne_s	.L808
	mov_s	r2,16	;3
	b_s	.L809
	.align 4
.L808:
	mov_s	r2,0	;3
	.align 2
.L809:
	st	r2,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-12]	;26
	ldb	r2,[fp,-4]
	tst_s	r2,r2
	bne_s	.L810
	mov_s	r2,8	;3
	b_s	.L811
	.align 4
.L810:
	mov_s	r2,0	;3
	.align 2
.L811:
	st	r2,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	bmsk_s	r2,r2,3
	tst_s	r2,r2
	bne_s	.L812
	mov_s	r2,4	;3
	b_s	.L813
	.align 4
.L812:
	mov_s	r2,0	;3
	.align 2
.L813:
	st	r2,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	bmsk_s	r2,r2,1
	tst_s	r2,r2
	bne_s	.L814
	mov_s	r2,2	;3
	b_s	.L815
	.align 4
.L814:
	mov_s	r2,0	;3
	.align 2
.L815:
	st	r2,[fp,-8]	;26
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-8]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	bmsk_s	r2,r2,1
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-4]	;23
	not_s	r2,r2
	and	r3,r2,1
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2
	rsub	r2,r2,2
	mpy_s	r3,r3,r2
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[fp,-28]
	st	r2,[fp,-32]	;26
	mov_s	r2,32	;3
	st	r2,[fp,-4]	;26
	ldd	r2,[fp,-28]
	std	r2,[fp,-12]
	ld	r2,[fp,-4]	;23
	ld	r3,[fp,-32]	;23
	and_s	r2,r2,r3
	tst_s	r2,r2
	beq_s	.L818
	st	0,[fp,-16]	;37
	ld	r3,[fp,-8]	;23
	ld	r12,[fp,-32]	;23
	ld	r2,[fp,-4]	;23
	sub_s	r2,r12,r2
	lsr	r2,r3,r2
	st	r2,[fp,-20]	;26
	b_s	.L819
	.align 4
.L818:
	ld	r2,[fp,-32]	;23
	tst_s	r2,r2
	bne_s	.L820
	ldd	r2,[fp,-28]
	b_s	.L822
	.align 4
.L820:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-32]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-16]	;26
	ld	r3,[fp,-8]	;23
	ld	r12,[fp,-4]	;23
	ld	r2,[fp,-32]	;23
	sub_s	r2,r12,r2
	asl_s	r3,r3,r2
	ld	r12,[fp,-12]	;23
	ld	r2,[fp,-32]	;23
	lsr	r2,r12,r2
	or_s	r2,r2,r3
	st	r2,[fp,-20]	;26
	.align 2
.L819:
	ldd	r2,[fp,-20]
	.align 2
.L822:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,28  ;sp,sp,u7
	st	r0,[fp,-24]	;26
	st	r1,[fp,-28]	;26
	st	16,[fp,-4]	;37
	mov_s	r3,-1	;4
	ld	r2,[fp,-4]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-24]	;23
	and_s	r3,r3,r2
	ld	r2,[fp,-8]	;23
	ld	r12,[fp,-28]	;23
	and_s	r2,r2,r12
	mpy_s	r2,r2,r3
	st	r2,[fp,-20]	;26
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-4]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-8]	;23
	and_s	r2,r2,r3
	st	r2,[fp,-20]	;26
	ld	r3,[fp,-24]	;23
	ld	r2,[fp,-4]	;23
	lsr_s	r3,r3,r2
	ld	r2,[fp,-8]	;23
	ld	r12,[fp,-28]	;23
	and_s	r2,r2,r12
	mpy_s	r2,r2,r3
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-8]	;23
	ld	r12,[fp,-12]	;23
	and_s	r12,r12,r2
	ld	r2,[fp,-4]	;23
	asl	r2,r12,r2
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-20]	;26
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-4]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-16]	;26
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-4]	;23
	lsr	r2,r3,r2
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-8]	;23
	and_s	r2,r2,r3
	st	r2,[fp,-20]	;26
	ld	r3,[fp,-28]	;23
	ld	r2,[fp,-4]	;23
	lsr_s	r3,r3,r2
	ld	r2,[fp,-8]	;23
	ld	r12,[fp,-24]	;23
	and_s	r2,r2,r12
	mpy_s	r2,r2,r3
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r3,[fp,-20]	;23
	ld	r2,[fp,-8]	;23
	ld	r12,[fp,-12]	;23
	and_s	r12,r12,r2
	ld	r2,[fp,-4]	;23
	asl	r2,r12,r2
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-20]	;26
	ld	r2,[fp,-16]	;23
	mov_s	r12,r2	;4
	ld	r3,[fp,-12]	;23
	ld	r2,[fp,-4]	;23
	lsr	r2,r3,r2
	add_s	r2,r2,r12   ;b,b,h
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-16]	;23
	mov_s	r13,r2	;4
	ld	r3,[fp,-24]	;23
	ld	r2,[fp,-4]	;23
	lsr_s	r3,r3,r2
	ld	r12,[fp,-28]	;23
	ld	r2,[fp,-4]	;23
	lsr	r2,r12,r2
	mpy_s	r2,r2,r3
	add_s	r2,r2,r13   ;b,b,h
	st	r2,[fp,-16]	;26
	ldd	r2,[fp,-20]
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	j_s	[blink]
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	push_s	blink
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,40  ;sp,sp,u7
	std	r0,[fp,-32]
	std	r2,[fp,-40]
	ldd	r2,[fp,-32]
	std	r2,[fp,-8]
	ldd	r2,[fp,-40]
	std	r2,[fp,-16]
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-16]	;23
	mov_s	r1,r3	;4
	mov_s	r0,r2	;4
	bl	@__muldsi3;1
	std	r0,[fp,-24]
	ld	r2,[fp,-20]	;23
	mov_s	r12,r2	;4
	ld	r2,[fp,-4]	;23
	mov_s	r3,r2	;4
	ld	r2,[fp,-16]	;23
	mpy_s	r3,r3,r2
	ld	r2,[fp,-8]	;23
	ld	r13,[fp,-12]	;23
	mpy_s	r2,r2,r13
	add_s	r2,r2,r3   ;b,b,h
	add_s	r2,r2,r12   ;b,b,h
	st	r2,[fp,-20]	;26
	ldd	r2,[fp,-24]
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[fp,-8]
	ldd	r2,[fp,-8]
	mov_s	r12,0	;3
	mov_s	r13,0	;3
	sub.f	r14,r12,r2
	sbc	r15,r13,r3
	vadd2	r2,r14,0
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	std	r0,[fp,-20]
	ldd	r2,[fp,-20]
	std	r2,[fp,-12]
	ld	r2,[fp,-8]	;23
	mov_s	r3,r2	;4
	ld	r2,[fp,-12]	;23
	xor_s	r2,r2,r3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,16
	ld	r3,[fp,-4]	;23
	xor_s	r2,r2,r3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,8
	ld	r3,[fp,-4]	;23
	xor_s	r2,r2,r3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,4
	ld	r3,[fp,-4]	;23
	xor_s	r2,r2,r3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	bmsk_s	r2,r2,3
	mov_s	r3,27030	;13
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,16
	ld	r3,[fp,-4]	;23
	xor_s	r2,r2,r3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,8
	ld	r3,[fp,-4]	;23
	xor_s	r2,r2,r3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,4
	ld	r3,[fp,-4]	;23
	xor_s	r2,r2,r3
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	bmsk_s	r2,r2,3
	mov_s	r3,27030	;13
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	std.a	r20,[sp,-8]
	std.a	r18,[sp,-8]
	std.a	r16,[sp,-8]
	std.a	r14,[sp,-8]
	push_s	r13
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,20  ;sp,sp,u7
	std	r0,[fp,-20]
	ldd	r0,[fp,-20]
	std	r0,[fp,-8]
	ldd	r0,[fp,-8]
	lsr.f	r11,r1
	rrc	r10,r0
	mov_s	r1,r10	;4
	and	r6,r1,1431655765
	mov_s	r1,r11	;4
	and	r7,r1,1431655765
	ldd	r0,[fp,-8]
	sub.f	r18,r0,r6
	sbc	r19,r1,r7
	std	r18,[fp,-8]
	ld	r1,[fp,-4]	;23
	asl_s	r1,r1,30
	ld	r0,[fp,-8]	;23
	lsr	r12,r0,2
	or_s	r12,r12,r1
	ld	r1,[fp,-4]	;23
	lsr	r13,r1,2
	mov_s	r1,r12	;4
	and	r4,r1,858993459
	mov_s	r12,r13	;4
	and	r5,r12,858993459
	ld	r12,[fp,-8]	;23
	and	r14,r12,858993459
	ld	r12,[fp,-4]	;23
	and	r15,r12,858993459
	add.f	r16,r4,r14
	adc	r17,r5,r15
	std	r16,[fp,-8]
	ld	r12,[fp,-4]	;23
	asl_s	r12,r12,28
	ld	r13,[fp,-8]	;23
	lsr	r2,r13,4
	or_s	r2,r2,r12
	ld	r12,[fp,-4]	;23
	lsr	r3,r12,4
	ldd	r12,[fp,-8]
	add.f	r8,r2,r12
	adc	r9,r3,r13
	mov_s	r2,r8	;4
	and	r2,r2,252645135
	st	r2,[fp,-8]	;26
	mov_s	r2,r9	;4
	and	r2,r2,252645135
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-8]	;23
	ld	r3,[fp,-4]	;23
	lsr	r20,r3,0
	mov_s	r21,0	;4
	mov_s	r3,r20	;4
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-12]	;23
	lsr_s	r2,r2,16
	ld	r3,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-12]	;26
	ld	r2,[fp,-12]	;23
	lsr	r3,r2,8
	ld	r2,[fp,-12]	;23
	add_s	r2,r2,r3   ;b,b,h
	bmsk_s	r2,r2,6
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	r13
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,8]
	ldd.ab	r18,[sp,8]
	ldd.ab	r20,[sp,8]
	j_s	[blink]
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,8  ;sp,sp,u7
	st	r0,[fp,-8]	;26
	ld	r2,[fp,-8]	;23
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2
	and	r2,r2,1431655765
	ld	r3,[fp,-4]	;23
	sub_s	r2,r3,r2
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,2
	and	r3,r2,858993459
	ld	r2,[fp,-4]	;23
	and	r2,r2,858993459
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr	r3,r2,4
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,r3   ;b,b,h
	and	r2,r2,252645135
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr_s	r2,r2,16
	ld	r3,[fp,-4]	;23
	add_s	r2,r2,r3   ;b,b,h
	st	r2,[fp,-4]	;26
	ld	r2,[fp,-4]	;23
	lsr	r3,r2,8
	ld	r2,[fp,-4]	;23
	add_s	r2,r2,r3   ;b,b,h
	bmsk_s	r2,r2,5
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,24  ;sp,sp,u7
	std	r0,[fp,-20]
	st	r2,[fp,-24]	;26
	ld	r2,[fp,-24]	;23
	lsr_s	r2,r2,31
	extb_s	r2,r2
	st	r2,[fp,-12]	;26
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	std	r2,[fp,-8]
	.align 2
.L841:
	ld	r2,[fp,-24]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L838
	ldd	r2,[fp,-20]
	ldd	r0,[fp,-8]
	bl	@__muldf3;1
	std	r0,[fp,-8]
	.align 2
.L838:
	ld	r2,[fp,-24]	;23
	div	r2,r2,2
	st	r2,[fp,-24]	;26
	ld	r2,[fp,-24]	;23
	tst_s	r2,r2
	beq_s	.L846
	ldd	r2,[fp,-20]
	ldd	r0,[fp,-20]
	bl	@__muldf3;1
	std	r0,[fp,-20]
	b_s	.L841
	.align 4
.L846:
	nop_s
	ld	r2,[fp,-12]	;23
	tst_s	r2,r2
	beq_s	.L842
	ldd	r2,[fp,-8]
	mov_s	r0,0	;3
	mov_s	r1,1072693248	;13
	bl	@__divdf3;1
	vadd2	r2,r0,0
	b_s	.L844
	.align 4
.L842:
	ldd	r2,[fp,-8]
	.align 2
.L844:
	vadd2	r0,r2,0
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	st	r0,[fp,-12]
	st	r1,[fp,-16]	;26
	ld	r2,[fp,-16]	;23
	lsr_s	r2,r2,31
	extb_s	r2,r2
	st	r2,[fp,-8]	;26
	mov_s	r2,0x3f800000 ; 1.0e+0
	st	r2,[fp,-4]
	.align 2
.L851:
	ld	r2,[fp,-16]	;23
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L848
	ld	r1,[fp,-12]
	ld	r0,[fp,-4]
	bl	@__mulsf3;1
	mov_s	r2,r0
	st	r2,[fp,-4]
	.align 2
.L848:
	ld	r2,[fp,-16]	;23
	div	r2,r2,2
	st	r2,[fp,-16]	;26
	ld	r2,[fp,-16]	;23
	tst_s	r2,r2
	beq_s	.L856
	ld	r1,[fp,-12]
	ld	r0,[fp,-12]
	bl	@__mulsf3;1
	mov_s	r2,r0
	st	r2,[fp,-12]
	b_s	.L851
	.align 4
.L856:
	nop_s
	ld	r2,[fp,-8]	;23
	tst_s	r2,r2
	beq_s	.L852
	ld	r1,[fp,-4]
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl	@__divsf3;1
	mov_s	r2,r0
	b_s	.L854
	.align 4
.L852:
	ld	r2,[fp,-4]
	.align 2
.L854:
	mov_s	r0,r2
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	pop_s	blink
	j_s	[blink]
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[fp,-24]
	std	r2,[fp,-32]
	ldd	r2,[fp,-24]
	std	r2,[fp,-8]
	ldd	r2,[fp,-32]
	std	r2,[fp,-16]
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	bhs_s	.L858
	mov_s	r2,0	;3
	b_s	.L863
	.align 4
.L858:
	ld	r3,[fp,-4]	;23
	ld	r2,[fp,-12]	;23
	cmp_s	r3,r2
	bls_s	.L860
	mov_s	r2,2	;3
	b_s	.L863
	.align 4
.L860:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	bhs_s	.L861
	mov_s	r2,0	;3
	b_s	.L863
	.align 4
.L861:
	ld	r3,[fp,-8]	;23
	ld	r2,[fp,-16]	;23
	cmp_s	r3,r2
	bls_s	.L862
	mov_s	r2,2	;3
	b_s	.L863
	.align 4
.L862:
	mov_s	r2,1	;3
	.align 2
.L863:
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
	ld.ab	fp,[sp,4]	;23
	j_s	[blink]
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	push_s	blink
	st.a	fp,[sp,-4]	;26
	mov_s	fp,sp	;4
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[fp,-8]
	std	r2,[fp,-16]
	ldd	r0,[fp,-8]
	ldd	r2,[fp,-16]
	bl	@__ucmpdi2;1
	mov_s	r2,r0	;4
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r0,r2	;4
	mov_s	sp,fp	;4
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
	.global	__fixsfsi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__divdf3
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
