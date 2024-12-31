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
	sub_s	sp,sp,24  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp,8]		;15
	cmp_s	r3,r2
	bhs	.L2
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,12]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,20]		;16
	b_s	.L3
	.align 4
.L4:
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,20]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp,20]		;16
	ld_s	r2,[sp,12]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,20]		;15
	stb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	.align 2
.L3:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L4
	b_s	.L5
	.align 4
.L2:
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp,8]		;15
	cmp_s	r3,r2
	beq_s	.L5
	ld_s	r2,[sp,8]		;15
	st_s	r2,[sp,16]		;16
	b_s	.L6
	.align 4
.L7:
	ld_s	r3,[sp,4]		;15
	add_s	r2,r3,1   ;a,b,c/u3
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,16]		;15
	add_s	r12,r2,1   ;a,b,c/u3
	st_s	r12,[sp,16]		;16
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	.align 2
.L6:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L7
	.align 2
.L5:
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,24   ;sp,sp,u7
	j_s	[blink]
	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp,12]		;16
	st_s	r1,[sp,8]		;16
	st_s	r2,[sp,4]		;16
	st_s	r3,[sp]		;16
	ld_s	r2,[sp,4]		;15
	extb_s	r2,r2
	st_s	r2,[sp,16]		;16
	b_s	.L11
	.align 4
.L13:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,12]		;16
	.align 2
.L11:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L12
	ld_s	r2,[sp,8]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,12]		;15
	stb_s	r3,[r2]
	ld_s	r2,[sp,12]		;15
	ldb_s	r2,[r2]
	mov_s	r3,r2	;4
	ld_s	r2,[sp,16]		;15
	cmp_s	r2,r3
	bne_s	.L13
	.align 2
.L12:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L14
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,1   ;b,b,h
	b_s	.L15
	.align 4
.L14:
	mov_s	r2,0	;3
	.align 2
.L15:
	mov_s	r0,r2	;4
	add_s	sp,sp,20   ;sp,sp,u7
	j_s	[blink]
	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,4]		;15
	extb_s	r2,r2
	st_s	r2,[sp,12]		;16
	b_s	.L18
	.align 4
.L20:
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	.align 2
.L18:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L19
	ld_s	r2,[sp,8]		;15
	ldb_s	r2,[r2]
	ld_s	r3,[sp,12]		;15
	cmp_s	r3,r2
	bne_s	.L20
	.align 2
.L19:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L21
	ld_s	r2,[sp,8]		;15
	b_s	.L23
	.align 4
.L21:
	mov_s	r2,0	;3
	.align 2
.L23:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	b_s	.L26
	.align 4
.L28:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L26:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L27
	ld_s	r2,[sp,8]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	beq_s	.L28
	.align 2
.L27:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L29
	ld_s	r2,[sp,8]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	sub_s	r2,r3,r2
	b_s	.L31
	.align 4
.L29:
	mov_s	r2,0	;3
	.align 2
.L31:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	st_s	r2,[sp,12]		;16
	b_s	.L34
	.align 4
.L35:
	ld_s	r3,[sp,4]		;15
	add_s	r2,r3,1   ;a,b,c/u3
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,12]		;15
	add_s	r12,r2,1   ;a,b,c/u3
	st_s	r12,[sp,12]		;16
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	.align 2
.L34:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L35
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,4]		;15
	extb_s	r2,r2
	st_s	r2,[sp,12]		;16
	b_s	.L39
	.align 4
.L41:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	ldb_s	r2,[r2]
	ld_s	r3,[sp,12]		;15
	cmp_s	r3,r2
	bne_s	.L39
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	b_s	.L40
	.align 4
.L39:
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp]		;16
	tst_s	r2,r2
	bne_s	.L41
	mov_s	r2,0	;3
	.align 2
.L40:
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	st_s	r2,[sp,12]		;16
	b_s	.L44
	.align 4
.L45:
	ld_s	r2,[sp,12]		;15
	ld_s	r3,[sp,4]		;15
	stb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,12]		;16
	.align 2
.L44:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L45
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	b_s	.L49
	.align 4
.L50:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L49:
	ld_s	r2,[sp]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	stb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L50
	ld_s	r2,[sp,4]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r2,[sp]		;15
	extb_s	r2,r2
	st_s	r2,[sp,8]		;16
	b_s	.L54
	.align 4
.L56:
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L54:
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	beq_s	.L55
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	ld_s	r3,[sp,8]		;15
	cmp_s	r3,r2
	bne_s	.L56
	.align 2
.L55:
	ld_s	r2,[sp,4]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	sub_s	sp,sp,4  ;sp,sp,u7
	mov_s	r2,r0	;4
	st_s	r1,[sp]		;16
	.align 2
.L62:
	ldb_s	r3,[r2]
	ld_s	r12,[sp]		;15
	cmp_s	r12,r3
	beq_s	.L63
	mov_s	r3,r2	;4
	add_s	r2,r3,1   ;a,b,c/u3
	ldb_s	r3,[r3]
	tst_s	r3,r3
	bne_s	.L62
	mov_s	r2,0	;3
	b_s	.L61
	.align 4
.L63:
	nop_s
	.align 2
.L61:
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	b_s	.L66
	.align 4
.L68:
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp]		;16
	.align 2
.L66:
	ld_s	r2,[sp,4]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	bne_s	.L67
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L68
	.align 2
.L67:
	ld_s	r2,[sp,4]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	sub_s	r2,r3,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	st_s	r2,[sp,4]		;16
	b_s	.L72
	.align 4
.L73:
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L72:
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L73
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	sub_s	r2,r3,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp,12]		;16
	tst_s	r2,r2
	bne_s	.L83
	mov_s	r2,0	;3
	b_s	.L78
	.align 4
.L81:
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp,12]		;16
	b_s	.L79
	.align 4
.L83:
	nop_s
	.align 2
.L79:
	ld_s	r2,[sp,8]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	beq_s	.L80
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	beq_s	.L80
	ld_s	r2,[sp,12]		;15
	tst_s	r2,r2
	beq_s	.L80
	ld_s	r2,[sp,8]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	beq_s	.L81
	.align 2
.L80:
	ld_s	r2,[sp,8]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	sub_s	r2,r3,r2
	.align 2
.L78:
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	b_s	.L85
	.align 4
.L86:
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	ldb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	stb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	ld_s	r3,[sp,8]		;15
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,2   ;b,b,h
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,2   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp]		;15
	sub1	r2,r2,1 ;a,b,u6
	st_s	r2,[sp]		;16
	.align 2
.L85:
	ld_s	r2,[sp]		;15
	cmp_s	r2,1
	bgt_s	.L86
	nop_s
	nop_s
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	bset_s	r2,r2,5
	add	r2,r2,-97 ;b,b,s12
	setlo	r2,r2,26
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	seths	r2,127,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	cmp_s	r2,32
	beq_s	.L95
	ld_s	r2,[sp]		;15
	cmp_s	r2,9
	bne_s	.L96
	.align 2
.L95:
	mov_s	r2,1	;3
	b_s	.L98
	.align 4
.L96:
	mov_s	r2,0	;3
	.align 2
.L98:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	cmp_s	r2,31
	bls_s	.L101
	ld_s	r2,[sp]		;15
	cmp_s	r2,127
	bne_s	.L102
	.align 2
.L101:
	mov_s	r2,1	;3
	b_s	.L104
	.align 4
.L102:
	mov_s	r2,0	;3
	.align 2
.L104:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	sub3	r2,r2,6 ;a,b,u6
	setlo	r2,r2,10
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	sub	r2,r2,33 ;a,b,u6
	seths	r2,93,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	add	r2,r2,-97 ;b,b,s12
	setlo	r2,r2,26
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	sub3	r2,r2,4 ;a,b,u6
	seths	r2,94,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	cmp_s	r2,32
	beq_s	.L119
	ld_s	r2,[sp]		;15
	sub	r2,r2,9 ;a,b,u6
	cmp_s	r2,4
	bhi_s	.L120
	.align 2
.L119:
	mov_s	r2,1	;3
	b_s	.L122
	.align 4
.L120:
	mov_s	r2,0	;3
	.align 2
.L122:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	add	r2,r2,-65 ;b,b,s12
	setlo	r2,r2,26
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	cmp_s	r2,31
	bls_s	.L128
	ld_s	r2,[sp]		;15
	add	r2,r2,-127 ;b,b,s12
	cmp_s	r2,32
	bls_s	.L128
	ld_s	r2,[sp]		;15
	add3	r2,r2,-1029 ;b,b,s12
	cmp_s	r2,1
	bls_s	.L128
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-65529   ;b,b,limm
	cmp_s	r2,2
	bhi_s	.L129
	.align 2
.L128:
	mov_s	r2,1	;3
	b_s	.L131
	.align 4
.L129:
	mov_s	r2,0	;3
	.align 2
.L131:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	sub3	r2,r2,6 ;a,b,u6
	setlo	r2,r2,10
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	cmp	r2,254
	bhi_s	.L137
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	bmsk_s	r2,r2,6
	seths	r2,r2,33
	b_s	.L138
	.align 4
.L137:
	ld_s	r2,[sp]		;15
	cmp_s	r2,8231
	bls_s	.L139
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-8234   ;b,b,limm
	cmp_s	r2,47061
	bls_s	.L139
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-57344   ;b,b,limm
	cmp_s	r2,8184
	bhi_s	.L140
	.align 2
.L139:
	mov_s	r2,1	;3
	b_s	.L138
	.align 4
.L140:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-65532   ;b,b,limm
	cmp_s	r2,1048579
	bhi_s	.L141
	ld_s	r2,[sp]		;15
	and	r2,r2,65534
	cmp_s	r2,65534
	bne_s	.L142
	.align 2
.L141:
	mov_s	r2,0	;3
	b_s	.L138
	.align 4
.L142:
	mov_s	r2,1	;3
	.align 2
.L138:
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bls_s	.L145
	ld_s	r2,[sp]		;15
	bset_s	r2,r2,5
	add	r2,r2,-97 ;b,b,s12
	cmp_s	r2,5
	bhi_s	.L146
	.align 2
.L145:
	mov_s	r2,1	;3
	b_s	.L148
	.align 4
.L146:
	mov_s	r2,0	;3
	.align 2
.L148:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,6
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	toascii, .-toascii
	.align 4
	.global	fdim
	.type	fdim, @function
fdim:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp,8]
	ldd	r0,[sp,8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	beq_s	.L165
	ldd	r0,[sp,8]
	b_s	.L156
	.align 4
.L165:
	ldd	r2,[sp]
	ldd	r0,[sp]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L166
	ldd	r0,[sp]
	b_s	.L156
	.align 4
.L166:
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L167
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__subdf3;1
	b_s	.L156
	.align 4
.L167:
	mov_s	r0,0	;3
	mov_s	r1,0	;3
.L156:
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	fdim, .-fdim
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]
	st_s	r1,[sp]
	ld_s	r1,[sp,4]
	ld_s	r0,[sp,4]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	beq_s	.L181
	ld_s	r2,[sp,4]
	b_s	.L172
	.align 4
.L181:
	ld_s	r1,[sp]
	ld_s	r0,[sp]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L182
	ld_s	r2,[sp]
	b_s	.L172
	.align 4
.L182:
	ld_s	r1,[sp]
	ld_s	r0,[sp,4]
	bl	@__gtsf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L183
	ld_s	r1,[sp]
	ld_s	r0,[sp,4]
	bl	@__subsf3;1
	mov_s	r2,r0
	b_s	.L172
	.align 4
.L183:
	mov_s	r2,0x00000000
	.align 2
.L172:
	mov_s	r0,r2
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp,8]
	ldd	r0,[sp,8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	beq_s	.L200
	ldd	r0,[sp]
	b_s	.L188
	.align 4
.L200:
	ldd	r2,[sp]
	ldd	r0,[sp]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L201
	ldd	r0,[sp,8]
	b_s	.L188
	.align 4
.L201:
	ld_s	r2,[sp,12]		;15
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld_s	r2,[sp,4]		;15
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L191
	ld_s	r2,[sp,12]		;15
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L192
	ldd	r0,[sp]
	b_s	.L188
	.align 4
.L192:
	ldd	r0,[sp,8]
	b_s	.L188
	.align 4
.L191:
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L202
	ldd	r0,[sp]
	b_s	.L188
	.align 4
.L202:
	ldd	r0,[sp,8]
.L188:
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]
	st_s	r1,[sp]
	ld_s	r1,[sp,4]
	ld_s	r0,[sp,4]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	beq_s	.L219
	ld_s	r2,[sp]
	b_s	.L207
	.align 4
.L219:
	ld_s	r1,[sp]
	ld_s	r0,[sp]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L220
	ld_s	r2,[sp,4]
	b_s	.L207
	.align 4
.L220:
	ld_s	r2,[sp,4]		;15
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld_s	r2,[sp]		;15
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L210
	ld_s	r2,[sp,4]		;15
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L211
	ld_s	r2,[sp]
	b_s	.L207
	.align 4
.L211:
	ld_s	r2,[sp,4]
	b_s	.L207
	.align 4
.L210:
	ld_s	r1,[sp]
	ld_s	r0,[sp,4]
	bl	@__ltsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L221
	ld_s	r2,[sp]
	b_s	.L207
	.align 4
.L221:
	ld_s	r2,[sp,4]
	.align 2
.L207:
	mov_s	r0,r2
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp,8]
	ldd	r0,[sp,8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	beq_s	.L238
	ldd	r0,[sp]
	b_s	.L226
	.align 4
.L238:
	ldd	r2,[sp]
	ldd	r0,[sp]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L239
	ldd	r0,[sp,8]
	b_s	.L226
	.align 4
.L239:
	ld_s	r2,[sp,12]		;15
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld_s	r2,[sp,4]		;15
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L229
	ld_s	r2,[sp,12]		;15
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L230
	ldd	r0,[sp]
	b_s	.L226
	.align 4
.L230:
	ldd	r0,[sp,8]
	b_s	.L226
	.align 4
.L229:
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L240
	ldd	r0,[sp]
	b_s	.L226
	.align 4
.L240:
	ldd	r0,[sp,8]
.L226:
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp,8]
	ldd	r0,[sp,8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	beq_s	.L257
	ldd	r0,[sp]
	b_s	.L245
	.align 4
.L257:
	ldd	r2,[sp]
	ldd	r0,[sp]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L258
	ldd	r0,[sp,8]
	b_s	.L245
	.align 4
.L258:
	ld_s	r2,[sp,12]		;15
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld_s	r2,[sp,4]		;15
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L248
	ld_s	r2,[sp,12]		;15
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L249
	ldd	r0,[sp,8]
	b_s	.L245
	.align 4
.L249:
	ldd	r0,[sp]
	b_s	.L245
	.align 4
.L248:
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L259
	ldd	r0,[sp,8]
	b_s	.L245
	.align 4
.L259:
	ldd	r0,[sp]
.L245:
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]
	st_s	r1,[sp]
	ld_s	r1,[sp,4]
	ld_s	r0,[sp,4]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	beq_s	.L276
	ld_s	r2,[sp]
	b_s	.L264
	.align 4
.L276:
	ld_s	r1,[sp]
	ld_s	r0,[sp]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L277
	ld_s	r2,[sp,4]
	b_s	.L264
	.align 4
.L277:
	ld_s	r2,[sp,4]		;15
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld_s	r2,[sp]		;15
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L267
	ld_s	r2,[sp,4]		;15
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L268
	ld_s	r2,[sp,4]
	b_s	.L264
	.align 4
.L268:
	ld_s	r2,[sp]
	b_s	.L264
	.align 4
.L267:
	ld_s	r1,[sp]
	ld_s	r0,[sp,4]
	bl	@__ltsf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L278
	ld_s	r2,[sp,4]
	b_s	.L264
	.align 4
.L278:
	ld_s	r2,[sp]
	.align 2
.L264:
	mov_s	r0,r2
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp,8]
	ldd	r0,[sp,8]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	beq_s	.L295
	ldd	r0,[sp]
	b_s	.L283
	.align 4
.L295:
	ldd	r2,[sp]
	ldd	r0,[sp]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L296
	ldd	r0,[sp,8]
	b_s	.L283
	.align 4
.L296:
	ld_s	r2,[sp,12]		;15
	bmskn	r2,r2,30
	mov_s	r3,r2	;4
	ld_s	r2,[sp,4]		;15
	bmskn	r2,r2,30
	cmp_s	r3,r2
	beq_s	.L286
	ld_s	r2,[sp,12]		;15
	bmskn	r2,r2,30
	tst_s	r2,r2
	beq_s	.L287
	ldd	r0,[sp,8]
	b_s	.L283
	.align 4
.L287:
	ldd	r0,[sp]
	b_s	.L283
	.align 4
.L286:
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L297
	ldd	r0,[sp,8]
	b_s	.L283
	.align 4
.L297:
	ldd	r0,[sp]
.L283:
	add_s	sp,sp,16   ;sp,sp,u7
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
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	st_s	r2,[sp,4]		;16
	mov_s	r2,@s.0	;13
	st_s	r2,[sp,8]		;16
	b_s	.L300
	.align 4
.L301:
	ld_s	r2,[sp,4]		;15
	bmsk_s	r2,r2,5
	ldb	r3,[r2,@digits]
	ld_s	r2,[sp,8]		;15
	stb_s	r3,[r2]
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,4]		;15
	lsr_s	r2,r2,6
	st_s	r2,[sp,4]		;16
	.align 2
.L300:
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bne_s	.L301
	ld_s	r2,[sp,8]		;15
	stb	0,[r2]
	mov_s	r2,@s.0	;13
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
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
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r3,r2	;4
	mov_s	r2,0	;3
	st	r3,[@seed]	;26
	st	r2,[@seed+4]	;26
	nop_s
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	ld	r2,[@seed+4]	;23
	mpy	r3,r2,1284865837
	ld	r2,[@seed]	;23
	mpy	r2,r2,1481765933
	add_s	r12,r3,r2   ;a,b,c/u3
	ld	r2,[@seed]	;23
	mpydu	r2,r2,1284865837
	add_s	r12,r12,r3   ;b,b,h
	mov_s	r3,r12	;4
	add.f	r12,r2,1
	adc	r2,r3,0
	st	r12,[@seed]	;26
	st	r2,[@seed+4]	;26
	ld	r2,[@seed+4]	;23
	lsr_s	r2,r2
	mov_s	r0,r2	;4
	j_s	[blink]
	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L310
	ld_s	r2,[sp,4]		;15
	st	0,[r2,4]	;37
	ld_s	r2,[sp,4]		;15
	ld_s	r3,[r2,4]		;15
	ld_s	r2,[sp,4]		;15
	st_s	r3,[r2]		;16
	b_s	.L309
	.align 4
.L310:
	ld_s	r2,[sp]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp,4]		;15
	st_s	r3,[r2]		;16
	ld_s	r2,[sp,4]		;15
	ld_s	r3,[sp]		;15
	st_s	r3,[r2,4]		;16
	ld_s	r2,[sp]		;15
	ld_s	r3,[sp,4]		;15
	st_s	r3,[r2]		;16
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L309
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	ld_s	r3,[sp,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L309:
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L314
	ld_s	r2,[sp]		;15
	ld_s	r2,[r2]		;15
	ld_s	r3,[sp]		;15
	ld_s	r3,[r3,4]		;15
	st_s	r3,[r2,4]		;16
	.align 2
.L314:
	ld_s	r2,[sp]		;15
	ld_s	r2,[r2,4]		;15
	tst_s	r2,r2
	beq_s	.L316
	ld_s	r2,[sp]		;15
	ld_s	r2,[r2,4]		;15
	ld_s	r3,[sp]		;15
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	.align 2
.L316:
	nop_s
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	push_s	blink
	push_s	r13
	sub_s	sp,sp,32  ;sp,sp,u7
	st_s	r0,[sp,16]		;16
	st_s	r1,[sp,12]		;16
	st_s	r2,[sp,8]		;16
	st_s	r3,[sp,4]		;16
	st	r4,[sp]	;26
	ld_s	r13,[sp,4]		;15
	sub	r2,r13,1 ;a,b,u6
	st_s	r2,[sp,24]		;16
	ld_s	r2,[sp,8]		;15
	ld_s	r2,[r2]		;15
	st_s	r2,[sp,20]		;16
	st	0,[sp,28]	;37
	b_s	.L319
	.align 4
.L322:
	ld_s	r2,[sp,28]		;15
	mpy_s	r2,r2,r13
	ld_s	r3,[sp,12]		;15
	add_s	r3,r3,r2   ;b,b,h
	ld_s	r2,[sp]		;15
	mov_s	r1,r3	;4
	ld_s	r0,[sp,16]		;15
	jl_s	[r2]
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L320
	ld_s	r2,[sp,28]		;15
	mpy_s	r2,r2,r13
	ld_s	r3,[sp,12]		;15
	add_s	r2,r2,r3   ;b,b,h
	b_s	.L321
	.align 4
.L320:
	ld_s	r2,[sp,28]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,28]		;16
	.align 2
.L319:
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp,20]		;15
	cmp_s	r3,r2
	blo_s	.L322
	ld_s	r2,[sp,20]		;15
	add_s	r3,r2,1   ;a,b,c/u3
	ld_s	r2,[sp,8]		;15
	st_s	r3,[r2]		;16
	ld_s	r2,[sp,20]		;15
	mpy_s	r2,r2,r13
	ld_s	r3,[sp,12]		;15
	add_s	r3,r3,r2   ;b,b,h
	ld_s	r2,[sp,4]		;15
	ld_s	r1,[sp,16]		;15
	mov_s	r0,r3	;4
	bl	@memcpy;1
	mov_s	r2,r0	;4
	.align 2
.L321:
	mov_s	r0,r2	;4
	add_s	sp,sp,32   ;sp,sp,u7
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	push_s	blink
	push_s	r13
	sub_s	sp,sp,32  ;sp,sp,u7
	st_s	r0,[sp,16]		;16
	st_s	r1,[sp,12]		;16
	st_s	r2,[sp,8]		;16
	st_s	r3,[sp,4]		;16
	st	r4,[sp]	;26
	ld_s	r13,[sp,4]		;15
	sub	r2,r13,1 ;a,b,u6
	st_s	r2,[sp,24]		;16
	ld_s	r2,[sp,8]		;15
	ld_s	r2,[r2]		;15
	st_s	r2,[sp,20]		;16
	st	0,[sp,28]	;37
	b_s	.L325
	.align 4
.L328:
	ld_s	r2,[sp,28]		;15
	mpy_s	r2,r2,r13
	ld_s	r3,[sp,12]		;15
	add_s	r3,r3,r2   ;b,b,h
	ld_s	r2,[sp]		;15
	mov_s	r1,r3	;4
	ld_s	r0,[sp,16]		;15
	jl_s	[r2]
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L326
	ld_s	r2,[sp,28]		;15
	mpy_s	r2,r2,r13
	ld_s	r3,[sp,12]		;15
	add_s	r2,r2,r3   ;b,b,h
	b_s	.L327
	.align 4
.L326:
	ld_s	r2,[sp,28]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,28]		;16
	.align 2
.L325:
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp,20]		;15
	cmp_s	r3,r2
	blo_s	.L328
	mov_s	r2,0	;3
	.align 2
.L327:
	mov_s	r0,r2	;4
	add_s	sp,sp,32   ;sp,sp,u7
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	abs_s	r2,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	push_s	blink
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp]		;16
	st	0,[sp,8]	;37
	st	0,[sp,4]	;37
	b_s	.L334
	.align 4
.L335:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp]		;16
	.align 2
.L334:
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	mov_s	r0,r2	;4
	bl	@isspace;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L335
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	cmp_s	r2,43
	beq_s	.L336
	cmp_s	r2,45
	bne_s	.L344
	st	1,[sp,4]	;37
	.align 2
.L336:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp]		;16
	b_s	.L344
	.align 4
.L339:
	ld_s	r2,[sp,8]		;15
	mpy	r3,r2,10
	ld_s	r2,[sp]		;15
	add_s	r12,r2,1   ;a,b,c/u3
	st_s	r12,[sp]		;16
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	sub_s	r2,r3,r2
	st_s	r2,[sp,8]		;16
	b_s	.L338
	.align 4
.L344:
	nop_s
	.align 2
.L338:
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bls_s	.L339
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bne_s	.L340
	ld_s	r2,[sp,8]		;15
	neg_s	r2,r2
	b_s	.L342
	.align 4
.L340:
	ld_s	r2,[sp,8]		;15
	.align 2
.L342:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	push_s	blink
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp]		;16
	st	0,[sp,8]	;37
	st	0,[sp,4]	;37
	b_s	.L346
	.align 4
.L347:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp]		;16
	.align 2
.L346:
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	mov_s	r0,r2	;4
	bl	@isspace;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L347
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	cmp_s	r2,43
	beq_s	.L348
	cmp_s	r2,45
	bne_s	.L356
	st	1,[sp,4]	;37
	.align 2
.L348:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp]		;16
	b_s	.L356
	.align 4
.L351:
	ld_s	r2,[sp,8]		;15
	mpy	r3,r2,10
	ld_s	r2,[sp]		;15
	add_s	r12,r2,1   ;a,b,c/u3
	st_s	r12,[sp]		;16
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	sub_s	r2,r3,r2
	st_s	r2,[sp,8]		;16
	b_s	.L350
	.align 4
.L356:
	nop_s
	.align 2
.L350:
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bls_s	.L351
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bne_s	.L352
	ld_s	r2,[sp,8]		;15
	neg_s	r2,r2
	b_s	.L354
	.align 4
.L352:
	ld_s	r2,[sp,8]		;15
	.align 2
.L354:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	push_s	blink
	push_s	r14
	push_s	r13
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp]		;16
	std	0,[sp,8]
	st	0,[sp,4]	;37
	b_s	.L358
	.align 4
.L359:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp]		;16
	.align 2
.L358:
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	mov_s	r0,r2	;4
	bl	@isspace;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L359
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	cmp_s	r2,43
	beq_s	.L360
	cmp_s	r2,45
	bne_s	.L368
	st	1,[sp,4]	;37
	.align 2
.L360:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp]		;16
	b_s	.L368
	.align 4
.L363:
	ld_s	r2,[sp,12]		;15
	mpy	r3,r2,10
	ld_s	r2,[sp,8]		;15
	mpy	r2,r2,0
	add_s	r12,r3,r2   ;a,b,c/u3
	ld_s	r2,[sp,8]		;15
	mpydu	r2,r2,10
	add_s	r12,r12,r3   ;b,b,h
	mov_s	r3,r12	;4
	ld_s	r12,[sp]		;15
	add_s	r13,r12,1   ;a,b,c/u3
	st_s	r13,[sp]		;16
	ldb_s	r12,[r12]
	sub3	r12,r12,6 ;a,b,u6
	mov_s	r14,r12	;4
	asr_s	r12,r12,31
	mov_s	r13,r12	;4
	sub.f	r12,r2,r14
	sbc	r2,r3,r13
	st_s	r12,[sp,8]		;16
	st_s	r2,[sp,12]		;16
	b_s	.L362
	.align 4
.L368:
	nop_s
	.align 2
.L362:
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	sub3	r2,r2,6 ;a,b,u6
	cmp_s	r2,9
	bls	.L363
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bne_s	.L364
	mov_s	r13,0	;3
	mov_s	r12,0	;3
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[sp,12]		;15
	sub.f	r2,r13,r2
	sbc	r3,r12,r3
	b_s	.L366
	.align 4
.L364:
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[sp,12]		;15
	.align 2
.L366:
	nop_s
	mov_s	r0,r2	;4
	mov_s	r1,r3	;4
	add_s	sp,sp,16   ;sp,sp,u7
	ld	blink,[sp,8]	;23
	pop_s	r13
	ld.ab	r14,[sp,8]	;23
	j_s	[blink]
	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	push_s	blink
	sub_s	sp,sp,28  ;sp,sp,u7
	st_s	r0,[sp,16]		;16
	st_s	r1,[sp,12]		;16
	st_s	r2,[sp,8]		;16
	st_s	r3,[sp,4]		;16
	st	r4,[sp]	;26
	b_s	.L370
	.align 4
.L375:
	ld_s	r2,[sp,8]		;15
	lsr_s	r3,r2
	ld_s	r2,[sp,4]		;15
	mpy_s	r2,r2,r3
	ld_s	r3,[sp,12]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,24]		;16
	ld_s	r2,[sp]		;15
	ld_s	r1,[sp,24]		;15
	ld_s	r0,[sp,16]		;15
	jl_s	[r2]
	st_s	r0,[sp,20]		;16
	ld_s	r2,[sp,20]		;15
	tst_s	r2,r2
	bp	.L371
	ld_s	r2,[sp,8]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,8]		;16
	b_s	.L370
	.align 4
.L371:
	ld_s	r2,[sp,20]		;15
	cmp_s	r2,0
	ble_s	.L373
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,8]		;15
	lsr_s	r2,r2
	ld_s	r3,[sp,8]		;15
	sub_s	r2,r3,r2
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp,8]		;16
	b_s	.L370
	.align 4
.L373:
	ld_s	r2,[sp,24]		;15
	b_s	.L374
	.align 4
.L370:
	ld_s	r2,[sp,8]		;15
	tst_s	r2,r2
	bne_s	.L375
	mov_s	r2,0	;3
	.align 2
.L374:
	mov_s	r0,r2	;4
	add_s	sp,sp,28   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	push_s	blink
	sub_s	sp,sp,36  ;sp,sp,u7
	st_s	r0,[sp,20]		;16
	st_s	r1,[sp,16]		;16
	st_s	r2,[sp,12]		;16
	st_s	r3,[sp,8]		;16
	st	r4,[sp,4]	;26
	st	r5,[sp]	;26
	ld_s	r2,[sp,12]		;15
	st_s	r2,[sp,32]		;16
	b_s	.L378
	.align 4
.L382:
	ld_s	r2,[sp,32]		;15
	asr_s	r3,r2,1
	ld_s	r2,[sp,8]		;15
	mpy_s	r2,r2,r3
	ld_s	r3,[sp,16]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,28]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	ld_s	r1,[sp,28]		;15
	ld_s	r0,[sp,20]		;15
	jl_s	[r3]
	st_s	r0,[sp,24]		;16
	ld_s	r2,[sp,24]		;15
	tst_s	r2,r2
	bne_s	.L379
	ld_s	r2,[sp,28]		;15
	b_s	.L380
	.align 4
.L379:
	ld_s	r2,[sp,24]		;15
	cmp_s	r2,0
	ble_s	.L381
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,32]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp,32]		;16
	.align 2
.L381:
	ld_s	r2,[sp,32]		;15
	asr_s	r2,r2,1
	st_s	r2,[sp,32]		;16
	.align 2
.L378:
	ld_s	r2,[sp,32]		;15
	tst_s	r2,r2
	bne_s	.L382
	mov_s	r2,0	;3
	.align 2
.L380:
	mov_s	r0,r2	;4
	add_s	sp,sp,36   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	div	r12,r3,r2
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	rem	r3,r3,r2
	ld_s	r2,[sp,8]		;15
	st_s	r12,[r2]		;16
	ld_s	r2,[sp,8]		;15
	st_s	r3,[r2,4]		;16
	ld_s	r0,[sp,8]		;15
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	push_s	r13
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[sp]
	ld_s	r2,[sp,4]		;15
	asr	r3,r2,31
	ld_s	r2,[sp,4]		;15
	asr	r13,r2,31
	ld_s	r2,[sp]		;15
	xor_s	r2,r2,r3
	ld_s	r12,[sp,4]		;15
	xor_s	r12,r12,r13
	sub.f	r2,r2,r3
	sbc	r3,r12,r13
	mov_s	r12,r3	;4
	mov_s	r0,r2	;4
	mov_s	r1,r12	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	push_s	blink
	std.a	r14,[sp,-8]
	sub_s	sp,sp,36  ;sp,sp,u7
	st_s	r0,[sp,16]		;16
	st_s	r1,[sp,8]		;16
	st_s	r2,[sp,12]		;16
	st_s	r3,[sp]		;16
	st	r4,[sp,4]	;26
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__divdi3;1
	vadd2	r14,r0,0
	ldd	r0,[sp,8]
	ldd	r2,[sp]
	bl	@__moddi3;1
	vadd2	r2,r0,0
	ld_s	r12,[sp,16]		;15
	std	r14,[r12]
	ld_s	r12,[sp,16]		;15
	std	r2,[r12,8]
	ld_s	r0,[sp,16]		;15
	add_s	sp,sp,36   ;sp,sp,u7
	ld	blink,[sp,8]	;23
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	abs_s	r2,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	div	r12,r3,r2
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	rem	r3,r3,r2
	ld_s	r2,[sp,8]		;15
	st_s	r12,[r2]		;16
	ld_s	r2,[sp,8]		;15
	st_s	r3,[r2,4]		;16
	ld_s	r0,[sp,8]		;15
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	push_s	r13
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[sp]
	ld_s	r2,[sp,4]		;15
	asr	r3,r2,31
	ld_s	r2,[sp,4]		;15
	asr	r13,r2,31
	ld_s	r2,[sp]		;15
	xor_s	r2,r2,r3
	ld_s	r12,[sp,4]		;15
	xor_s	r12,r12,r13
	sub.f	r2,r2,r3
	sbc	r3,r12,r13
	mov_s	r12,r3	;4
	mov_s	r0,r2	;4
	mov_s	r1,r12	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	push_s	blink
	std.a	r14,[sp,-8]
	sub_s	sp,sp,36  ;sp,sp,u7
	st_s	r0,[sp,16]		;16
	st_s	r1,[sp,8]		;16
	st_s	r2,[sp,12]		;16
	st_s	r3,[sp]		;16
	st	r4,[sp,4]	;26
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__divdi3;1
	vadd2	r14,r0,0
	ldd	r0,[sp,8]
	ldd	r2,[sp]
	bl	@__moddi3;1
	vadd2	r2,r0,0
	ld_s	r12,[sp,16]		;15
	std	r14,[r12]
	ld_s	r12,[sp,16]		;15
	std	r2,[r12,8]
	ld_s	r0,[sp,16]		;15
	add_s	sp,sp,36   ;sp,sp,u7
	ld	blink,[sp,8]	;23
	ldd.ab	r14,[sp,12]
	j_s	[blink]
	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	b_s	.L406
	.align 4
.L408:
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L406:
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L407
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	ld_s	r3,[sp]		;15
	cmp_s	r3,r2
	bne_s	.L408
	.align 2
.L407:
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L409
	ld_s	r2,[sp,4]		;15
	b_s	.L411
	.align 4
.L409:
	mov_s	r2,0	;3
	.align 2
.L411:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	b_s	.L414
	.align 4
.L416:
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp]		;16
	.align 2
.L414:
	ld_s	r2,[sp,4]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp]		;15
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	bne_s	.L415
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L415
	ld_s	r2,[sp]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	bne_s	.L416
	.align 2
.L415:
	ld_s	r2,[sp,4]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp]		;15
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	blt_s	.L417
	ld_s	r2,[sp,4]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp]		;15
	ld_s	r2,[r2]		;15
	setgt	r2,r3,r2
	extb_s	r2,r2
	b_s	.L419
	.align 4
.L417:
	mov_s	r2,-1	;4
	.align 2
.L419:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r2,[sp,4]		;15
	st_s	r2,[sp,8]		;16
	.align 2
.L422:
	ld_s	r3,[sp]		;15
	add_s	r2,r3,4   ;a,b,c/u3
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	add_s	r12,r2,4   ;a,b,c/u3
	st_s	r12,[sp,8]		;16
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	bne_s	.L422
	ld_s	r2,[sp,4]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	st_s	r2,[sp,4]		;16
	b_s	.L426
	.align 4
.L427:
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L426:
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	bne_s	.L427
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	sub_s	r2,r3,r2
	asr_s	r2,r2,2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	b_s	.L431
	.align 4
.L433:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L431:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L432
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	bne_s	.L432
	ld_s	r2,[sp,8]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	beq_s	.L432
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	tst_s	r2,r2
	bne_s	.L433
	.align 2
.L432:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L434
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	blt_s	.L435
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	setgt	r2,r3,r2
	extb_s	r2,r2
	b_s	.L438
	.align 4
.L435:
	mov_s	r2,-1	;4
	b_s	.L438
	.align 4
.L434:
	mov_s	r2,0	;3
	.align 2
.L438:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	b_s	.L441
	.align 4
.L443:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp,8]		;16
	.align 2
.L441:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L442
	ld_s	r2,[sp,8]		;15
	ld_s	r2,[r2]		;15
	ld_s	r3,[sp,4]		;15
	cmp_s	r3,r2
	bne_s	.L443
	.align 2
.L442:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L444
	ld_s	r2,[sp,8]		;15
	b_s	.L446
	.align 4
.L444:
	mov_s	r2,0	;3
	.align 2
.L446:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	b_s	.L449
	.align 4
.L451:
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,4   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L449:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L450
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	beq_s	.L451
	.align 2
.L450:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L452
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	cmp_s	r3,r2
	blt_s	.L453
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[r2]		;15
	ld_s	r2,[sp,4]		;15
	ld_s	r2,[r2]		;15
	setgt	r2,r3,r2
	extb_s	r2,r2
	b_s	.L456
	.align 4
.L453:
	mov_s	r2,-1	;4
	b_s	.L456
	.align 4
.L452:
	mov_s	r2,0	;3
	.align 2
.L456:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	st_s	r2,[sp,12]		;16
	b_s	.L459
	.align 4
.L460:
	ld_s	r3,[sp,4]		;15
	add_s	r2,r3,4   ;a,b,c/u3
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,12]		;15
	add_s	r12,r2,4   ;a,b,c/u3
	st_s	r12,[sp,12]		;16
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	.align 2
.L459:
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp]		;16
	tst_s	r2,r2
	bne_s	.L460
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	bne_s	.L464
	ld_s	r2,[sp,8]		;15
	b_s	.L465
	.align 4
.L464:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	sub_s	r3,r3,r2
	ld_s	r2,[sp]		;15
	asl_s	r2,r2,2
	cmp_s	r3,r2
	bhs_s	.L466
	b_s	.L467
	.align 4
.L468:
	ld_s	r2,[sp]		;15
	asl_s	r2,r2,2
	ld_s	r3,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r3,[sp]		;15
	asl_s	r3,r3,2
	ld_s	r12,[sp,4]		;15
	add_s	r3,r3,r12   ;b,b,h
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	.align 2
.L467:
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp]		;16
	tst_s	r2,r2
	bne_s	.L468
	b_s	.L469
	.align 4
.L466:
	ld_s	r2,[sp,8]		;15
	st_s	r2,[sp,12]		;16
	b_s	.L470
	.align 4
.L471:
	ld_s	r3,[sp,4]		;15
	add_s	r2,r3,4   ;a,b,c/u3
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,12]		;15
	add_s	r12,r2,4   ;a,b,c/u3
	st_s	r12,[sp,12]		;16
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	.align 2
.L470:
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp]		;16
	tst_s	r2,r2
	bne_s	.L471
	.align 2
.L469:
	ld_s	r2,[sp,8]		;15
	.align 2
.L465:
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	st_s	r2,[sp,12]		;16
	b_s	.L474
	.align 4
.L475:
	ld_s	r2,[sp,12]		;15
	add_s	r3,r2,4   ;a,b,c/u3
	st_s	r3,[sp,12]		;16
	ld_s	r3,[sp,4]		;15
	st_s	r3,[r2]		;16
	.align 2
.L474:
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp]		;16
	tst_s	r2,r2
	bne_s	.L475
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	bhs	.L479
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,16]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,12]		;16
	b_s	.L480
	.align 4
.L481:
	ld_s	r2,[sp,16]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,16]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,12]		;15
	stb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	.align 2
.L480:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L481
	b_s	.L485
	.align 4
.L479:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	beq_s	.L485
	b_s	.L483
	.align 4
.L484:
	ld_s	r3,[sp,8]		;15
	add_s	r2,r3,1   ;a,b,c/u3
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,4]		;15
	add_s	r12,r2,1   ;a,b,c/u3
	st_s	r12,[sp,4]		;16
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	.align 2
.L483:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L484
	.align 2
.L485:
	nop_s
	add_s	sp,sp,20   ;sp,sp,u7
	j_s	[blink]
	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	std.a	r14,[sp,-8]
	push_s	r13
	sub_s	sp,sp,12  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	ld_s	r12,[sp,4]		;15
	ld_s	r14,[sp,8]		;15
	ld_s	r2,[sp]		;15
	and	r2,r2,32
	mov_s	r15,0	;3
	lsr_s	r13,r12
	ld_s	r3,[sp]		;15
	not_s	r3,r3
	lsr_s	r13,r13,r3
	ld_s	r3,[sp]		;15
	asl	r3,r14,r3
	or_s	r3,r3,r13
	ld_s	r13,[sp]		;15
	asl	r13,r12,r13
	tst_s	r2,r2
	mov_s	r1,r13	;4
	mov.eq	r1,r3
	mov_s	r3,r1	;4
	tst_s	r2,r2
	mov.ne	r13,r15
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	bmsk_s	r2,r2,5
	and	r15,r2,32
	mov_s	r0,0	;3
	asl_s	r1,r14,1
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	bmsk_s	r2,r2,5
	not_s	r2,r2
	asl_s	r1,r1,r2
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	bmsk_s	r2,r2,5
	lsr	r2,r12,r2
	or_s	r2,r2,r1
	ld_s	r12,[sp]		;15
	neg_s	r12,r12
	bmsk_s	r12,r12,5
	lsr	r12,r14,r12
	tst_s	r15,r15
	mov_s	r14,r12	;4
	mov.eq	r14,r2
	mov_s	r2,r14	;4
	tst_s	r15,r15
	mov.ne	r12,r0
	or_s	r2,r2,r13
	or_s	r3,r3,r12
	mov_s	r12,r3	;4
	mov_s	r0,r2	;4
	mov_s	r1,r12	;4
	add_s	sp,sp,12   ;sp,sp,u7
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
	sub_s	sp,sp,12  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	ld_s	r14,[sp,4]		;15
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	and	r2,r2,32
	mov_s	r15,0	;3
	asl_s	r13,r3,1
	ld_s	r12,[sp]		;15
	not_s	r12,r12
	asl_s	r13,r13,r12
	ld_s	r12,[sp]		;15
	lsr	r12,r14,r12
	or_s	r12,r12,r13
	ld_s	r13,[sp]		;15
	lsr	r13,r3,r13
	tst_s	r2,r2
	mov_s	r1,r13	;4
	mov.eq	r1,r12
	mov_s	r12,r1	;4
	tst_s	r2,r2
	mov.ne	r13,r15
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	bmsk_s	r2,r2,5
	and	r15,r2,32
	mov_s	r0,0	;3
	lsr_s	r1,r14
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	bmsk_s	r2,r2,5
	not_s	r2,r2
	lsr_s	r1,r1,r2
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	bmsk_s	r2,r2,5
	asl	r2,r3,r2
	or_s	r2,r2,r1
	ld_s	r3,[sp]		;15
	neg_s	r3,r3
	bmsk_s	r3,r3,5
	asl	r3,r14,r3
	tst_s	r15,r15
	mov_s	r14,r3	;4
	mov.eq	r14,r2
	mov_s	r2,r14	;4
	tst_s	r15,r15
	mov.ne	r3,r0
	or_s	r3,r3,r12
	or_s	r2,r2,r13
	mov_s	r0,r3	;4
	mov_s	r1,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	pop_s	r13
	ldd.ab	r14,[sp,8]
	j_s	[blink]
	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	ror	r2,r3,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	ror	r2,r3,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	ror	r2,r3,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	ror	r2,r3,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st_s	r1,[sp]		;16
	sth	r2,[sp,4]
	ldh	r3,[sp,4]
	ld_s	r2,[sp]		;15
	asl	r2,r3,r2
	exth_s	r3,r2
	ldh	r12,[sp,4]
	ld_s	r2,[sp]		;15
	rsub	r2,r2,16
	lsr	r2,r12,r2
	exth_s	r2,r2
	or_s	r2,r2,r3
	exth_s	r2,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st_s	r1,[sp]		;16
	sth	r2,[sp,4]
	ldh	r3,[sp,4]
	ld_s	r2,[sp]		;15
	lsr	r2,r3,r2
	exth_s	r3,r2
	ldh	r12,[sp,4]
	ld_s	r2,[sp]		;15
	rsub	r2,r2,16
	asl	r2,r12,r2
	exth_s	r2,r2
	or_s	r2,r2,r3
	exth_s	r2,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st_s	r1,[sp]		;16
	stb_s	r2,[sp,4]
	ldb_s	r3,[sp,4]
	ld_s	r2,[sp]		;15
	asl	r2,r3,r2
	extb_s	r3,r2
	ldb_s	r12,[sp,4]
	ld_s	r2,[sp]		;15
	rsub	r2,r2,8
	lsr	r2,r12,r2
	extb_s	r2,r2
	or_s	r2,r2,r3
	extb_s	r2,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st_s	r1,[sp]		;16
	stb_s	r2,[sp,4]
	ldb_s	r3,[sp,4]
	ld_s	r2,[sp]		;15
	lsr	r2,r3,r2
	extb_s	r3,r2
	ldb_s	r12,[sp,4]
	ld_s	r2,[sp]		;15
	rsub	r2,r2,8
	asl	r2,r12,r2
	extb_s	r2,r2
	or_s	r2,r2,r3
	extb_s	r2,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r2,[sp]
	mov_s	r2,255	;3
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,4]		;15
	asl_s	r2,r2,8
	ldh	r3,[sp]
	and_s	r2,r2,r3
	lsr	r3,r2,8
	ld_s	r2,[sp,4]		;15
	ldh	r12,[sp]
	and_s	r2,r2,r12
	exth_s	r2,r2
	asl_s	r2,r2,8
	exth_s	r2,r2
	or_s	r2,r2,r3
	exth_s	r2,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp]		;16
	mov_s	r2,255	;3
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,4]		;15
	asl	r3,r2,24
	ld_s	r2,[sp]		;15
	and_s	r2,r2,r3
	lsr	r3,r2,24
	ld_s	r2,[sp,4]		;15
	asl	r12,r2,16
	ld_s	r2,[sp]		;15
	and_s	r2,r2,r12
	lsr_s	r2,r2,8
	or_s	r3,r3,r2
	ld_s	r2,[sp,4]		;15
	asl	r12,r2,8
	ld_s	r2,[sp]		;15
	and_s	r2,r2,r12
	asl_s	r2,r2,8
	or_s	r3,r3,r2
	ld_s	r2,[sp,4]		;15
	ld_s	r12,[sp]		;15
	and_s	r2,r2,r12
	asl_s	r2,r2,24
	or_s	r2,r2,r3
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	push_s	r14
	push_s	r13
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp]
	mov_s	r2,255	;3
	mov_s	r3,0	;3
	std	r2,[sp,8]
	ld_s	r2,[sp,8]		;15
	asl_s	r2,r2,24
	ld_s	r3,[sp,4]		;15
	and_s	r2,r2,r3
	lsr	r3,r2,24
	mov_s	r14,0	;3
	ld_s	r2,[sp,8]		;15
	asl_s	r2,r2,16
	ld_s	r12,[sp,4]		;15
	and_s	r2,r2,r12
	lsr_s	r2,r2,8
	mov_s	r12,0	;3
	or	r13,r3,r2
	or_s	r12,r12,r14
	ld_s	r2,[sp,8]		;15
	asl	r3,r2,8
	mov_s	r14,0	;3
	ld_s	r2,[sp]		;15
	and_s	r2,r2,r14
	ld_s	r14,[sp,4]		;15
	and_s	r3,r3,r14
	asl	r14,r3,8
	lsr_s	r2,r2,24
	or_s	r2,r2,r14
	lsr_s	r3,r3,24
	or_s	r13,r13,r2
	or_s	r12,r12,r3
	ld_s	r2,[sp,8]		;15
	asl_s	r3,r2,0
	mov_s	r14,0	;3
	ld_s	r2,[sp]		;15
	and_s	r2,r2,r14
	ld_s	r14,[sp,4]		;15
	and_s	r3,r3,r14
	asl	r14,r3,24
	lsr_s	r2,r2,8
	or_s	r2,r2,r14
	lsr_s	r3,r3,8
	or_s	r13,r13,r2
	or_s	r12,r12,r3
	ld_s	r2,[sp,8]		;15
	lsr	r3,r2,8
	ld_s	r2,[sp,12]		;15
	asl_s	r2,r2,24
	or_s	r2,r2,r3
	ld_s	r3,[sp,8]		;15
	asl_s	r3,r3,24
	ld_s	r14,[sp]		;15
	and_s	r3,r3,r14
	ld_s	r14,[sp,4]		;15
	and_s	r2,r2,r14
	lsr	r14,r3,24
	asl_s	r2,r2,8
	or_s	r2,r2,r14
	asl_s	r3,r3,8
	or_s	r13,r13,r3
	or_s	r12,r12,r2
	ld_s	r2,[sp,8]		;15
	lsr	r3,r2,16
	ld_s	r2,[sp,12]		;15
	asl_s	r2,r2,16
	or_s	r2,r2,r3
	ld_s	r3,[sp,8]		;15
	asl_s	r3,r3,16
	ld_s	r14,[sp]		;15
	and_s	r3,r3,r14
	ld_s	r14,[sp,4]		;15
	and_s	r2,r2,r14
	lsr	r14,r3,8
	asl_s	r2,r2,24
	or_s	r2,r2,r14
	asl_s	r3,r3,24
	or_s	r13,r13,r3
	or_s	r12,r12,r2
	ld_s	r2,[sp,8]		;15
	asl_s	r2,r2,8
	ld_s	r3,[sp]		;15
	and_s	r2,r2,r3
	asl	r3,r2,8
	mov_s	r2,0	;3
	or_s	r2,r2,r13
	or_s	r12,r12,r3
	ld_s	r3,[sp,8]		;15
	ld_s	r13,[sp]		;15
	and_s	r3,r3,r13
	asl_s	r3,r3,24
	mov_s	r13,0	;3
	or_s	r2,r2,r13
	or_s	r3,r3,r12
	mov_s	r0,r2	;4
	mov_s	r1,r3	;4
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp]		;16
	st	0,[sp,4]	;37
	b_s	.L527
	.align 4
.L530:
	ld_s	r3,[sp]		;15
	ld_s	r2,[sp,4]		;15
	lsr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L528
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	b_s	.L529
	.align 4
.L528:
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L527:
	ld_s	r2,[sp,4]		;15
	cmp_s	r2,31
	bls_s	.L530
	mov_s	r2,0	;3
	.align 2
.L529:
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	push_s	r13
	tst_s	r0,r0
	bne_s	.L533
	mov_s	r13,0	;3
	b_s	.L534
	.align 4
.L533:
	mov_s	r2,r0	;4
	mov_s	r13,1	;3
	b_s	.L535
	.align 4
.L536:
	asr_s	r2,r2,1
	add_s	r13,r13,1   ;b,b,h
	.align 2
.L535:
	and	r3,r2,1
	tst_s	r3,r3
	beq_s	.L536
	nop_s
	.align 2
.L534:
	mov_s	r0,r13	;4
	pop_s	r13
	j_s	[blink]
	.size	libiberty_ffs, .-libiberty_ffs
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	push_s	blink
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]
	mov_s	r1,0xff7fffff ; -3.402823466385288598117e+38
	ld_s	r0,[sp]
	bl	@__ltsf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bn	.L539
	mov_s	r1,0x7f7fffff ; 3.402823466385288598117e+38
	ld_s	r0,[sp]
	bl	@__gtsf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L544
	.align 2
.L539:
	mov_s	r2,1	;3
	b_s	.L543
	.align 4
.L544:
	mov_s	r2,0	;3
	.align 2
.L543:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	pop_s	blink
	j_s	[blink]
	.size	gl_isinff, .-gl_isinff
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[sp]
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	ldd	r0,[sp]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bn	.L547
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	ldd	r0,[sp]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L552
	.align 2
.L547:
	mov_s	r2,1	;3
	b_s	.L551
	.align 4
.L552:
	mov_s	r2,0	;3
	.align 2
.L551:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	gl_isinfd, .-gl_isinfd
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[sp]
	mov_s	r2,-1	;4
	mov_s	r3,-1048577	;13
	ldd	r0,[sp]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bn	.L555
	mov_s	r2,-1	;4
	mov_s	r3,2146435071	;13
	ldd	r0,[sp]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L560
	.align 2
.L555:
	mov_s	r2,1	;3
	b_s	.L559
	.align 4
.L560:
	mov_s	r2,0	;3
	.align 2
.L559:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r0,[sp]		;15
	bl	@__floatsidf;1
	ld_s	r2,[sp,4]		;15
	std	r0,[r2]
	nop_s
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	_Qp_itoq, .-_Qp_itoq
	.align 4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	push_s	blink
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,4]
	st_s	r1,[sp]		;16
	ld_s	r1,[sp,4]
	ld_s	r0,[sp,4]
	bl	@__unordsf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bne_s	.L565
	ld_s	r2,[sp,4]
	mov_s	r1,r2
	mov_s	r0,r2
	bl	@__addsf3;1
	mov_s	r2,r0
	mov_s	r1,r2
	ld_s	r0,[sp,4]
	bl	@__nesf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L565
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bp	.L567
	mov_s	r2,0x3f000000 ; 5.0e-1
	b_s	.L568
	.align 4
.L567:
	mov_s	r2,0x40000000 ; 2.0e+0
	.align 2
.L568:
	st_s	r2,[sp,8]
	.align 2
.L571:
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L569
	ld_s	r1,[sp,8]
	ld_s	r0,[sp,4]
	bl	@__mulsf3;1
	mov_s	r2,r0
	st_s	r2,[sp,4]
	.align 2
.L569:
	ld_s	r2,[sp]		;15
	div	r2,r2,2
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L574
	ld_s	r1,[sp,8]
	ld_s	r0,[sp,8]
	bl	@__mulsf3;1
	mov_s	r2,r0
	st_s	r2,[sp,8]
	b_s	.L571
	.align 4
.L574:
	nop_s
	.align 2
.L565:
	ld_s	r2,[sp,4]
	mov_s	r0,r2
	add_s	sp,sp,12   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	ldexpf, .-ldexpf
	.align 4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	push_s	blink
	sub_s	sp,sp,20  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	ldd	r2,[sp,4]
	ldd	r0,[sp,4]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bne_s	.L577
	ldd	r0,[sp,4]
	vadd2	r2,r0,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	ldd	r0,[sp,4]
	bl	@__nedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L577
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bp	.L579
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	b_s	.L580
	.align 4
.L579:
	mov_s	r2,0	;3
	mov_s	r3,1073741824	;13
	.align 2
.L580:
	std	r2,[sp,12]
	.align 2
.L583:
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L581
	ldd	r2,[sp,12]
	ldd	r0,[sp,4]
	bl	@__muldf3;1
	std	r0,[sp,4]
	.align 2
.L581:
	ld_s	r2,[sp]		;15
	div	r2,r2,2
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L586
	ldd	r2,[sp,12]
	ldd	r0,[sp,12]
	bl	@__muldf3;1
	std	r0,[sp,12]
	b_s	.L583
	.align 4
.L586:
	nop_s
	.align 2
.L577:
	ldd	r0,[sp,4]
	add_s	sp,sp,20   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	ldexp, .-ldexp
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	push_s	blink
	sub_s	sp,sp,20  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	ldd	r2,[sp,4]
	ldd	r0,[sp,4]
	bl	@__unorddf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bne_s	.L589
	ldd	r0,[sp,4]
	vadd2	r2,r0,0
	bl	@__adddf3;1
	vadd2	r2,r0,0
	ldd	r0,[sp,4]
	bl	@__nedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L589
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bp	.L591
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	b_s	.L592
	.align 4
.L591:
	mov_s	r2,0	;3
	mov_s	r3,1073741824	;13
	.align 2
.L592:
	std	r2,[sp,12]
	.align 2
.L595:
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L593
	ldd	r2,[sp,12]
	ldd	r0,[sp,4]
	bl	@__muldf3;1
	std	r0,[sp,4]
	.align 2
.L593:
	ld_s	r2,[sp]		;15
	div	r2,r2,2
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L598
	ldd	r2,[sp,12]
	ldd	r0,[sp,12]
	bl	@__muldf3;1
	std	r0,[sp,12]
	b_s	.L595
	.align 4
.L598:
	nop_s
	.align 2
.L589:
	ldd	r0,[sp,4]
	add_s	sp,sp,20   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,8]		;15
	st_s	r2,[sp,12]		;16
	b_s	.L601
	.align 4
.L602:
	ld_s	r2,[sp,4]		;15
	add_s	r3,r2,1   ;a,b,c/u3
	st_s	r3,[sp,4]		;16
	ldb_s	r12,[r2]
	ld_s	r2,[sp,12]		;15
	add_s	r3,r2,1   ;a,b,c/u3
	st_s	r3,[sp,12]		;16
	ldb_s	r3,[r2]
	xor_s	r3,r3,r12
	stb_s	r3,[r2]
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	.align 2
.L601:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L602
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r0,[sp,8]		;15
	bl	@strlen;1
	mov_s	r2,r0	;4
	ld_s	r3,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,12]		;16
	b_s	.L606
	.align 4
.L608:
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp]		;16
	.align 2
.L606:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L607
	ld_s	r2,[sp,4]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,12]		;15
	stb_s	r3,[r2]
	ld_s	r2,[sp,12]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L608
	.align 2
.L607:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L609
	ld_s	r2,[sp,12]		;15
	stb	0,[r2]
	.align 2
.L609:
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	st	0,[sp,8]	;37
	b_s	.L613
	.align 4
.L618:
	nop_s
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,8]		;16
	.align 2
.L613:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	cmp_s	r3,r2
	bhs_s	.L614
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L618
	.align 2
.L614:
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	b_s	.L621
	.align 4
.L625:
	ld_s	r2,[sp]		;15
	st_s	r2,[sp,8]		;16
	b_s	.L622
	.align 4
.L624:
	ld_s	r2,[sp,8]		;15
	add_s	r3,r2,1   ;a,b,c/u3
	st_s	r3,[sp,8]		;16
	ldb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	bne_s	.L622
	ld_s	r2,[sp,4]		;15
	b_s	.L623
	.align 4
.L622:
	ld_s	r2,[sp,8]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L624
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L621:
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	tst_s	r2,r2
	bne_s	.L625
	mov_s	r2,0	;3
	.align 2
.L623:
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	st_s	r1,[sp]		;16
	st	0,[sp,4]	;37
	.align 2
.L629:
	ldb_s	r3,[r2]
	ld_s	r12,[sp]		;15
	cmp_s	r12,r3
	bne_s	.L628
	st_s	r2,[sp,4]		;16
	.align 2
.L628:
	mov_s	r3,r2	;4
	add_s	r2,r3,1   ;a,b,c/u3
	ldb_s	r3,[r3]
	tst_s	r3,r3
	bne_s	.L629
	ld_s	r2,[sp,4]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r0,[sp]		;15
	bl	@strlen;1
	st_s	r0,[sp,12]		;16
	ld_s	r2,[sp,12]		;15
	tst_s	r2,r2
	bne_s	.L639
	ld_s	r2,[sp,4]		;15
	b_s	.L634
	.align 4
.L637:
	ld_s	r2,[sp,12]		;15
	ld_s	r1,[sp]		;15
	ld_s	r0,[sp,8]		;15
	bl	@strncmp;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L636
	ld_s	r2,[sp,8]		;15
	b_s	.L634
	.align 4
.L636:
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	b_s	.L635
	.align 4
.L639:
	nop_s
	.align 2
.L635:
	ld_s	r2,[sp]		;15
	ldb_s	r2,[r2]
	mov_s	r1,r2	;4
	ld_s	r0,[sp,4]		;15
	bl	@strchr;1
	st_s	r0,[sp,8]		;16
	ld_s	r2,[sp,8]		;15
	tst_s	r2,r2
	bne_s	.L637
	mov_s	r2,0	;3
	.align 2
.L634:
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	strstr, .-strstr
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	push_s	blink
	sub_s	sp,sp,24  ;sp,sp,u7
	std	r0,[sp,16]
	std	r2,[sp,8]
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[sp,16]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bp	.L641
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[sp,8]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	bgt	.L643
	.align 2
.L641:
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[sp,16]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L644
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[sp,8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L644
	.align 2
.L643:
	ld_s	r2,[sp,16]		;15
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,20]		;15
	bxor	r2,r2,31
	st_s	r2,[sp,4]		;16
	b_s	.L647
	.align 4
.L644:
	ldd	r2,[sp,16]
	std	r2,[sp]
	.align 2
.L647:
	ldd	r0,[sp]
	add_s	sp,sp,24   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	push_s	blink
	push_s	r13
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp,12]		;16
	st_s	r1,[sp,8]		;16
	st_s	r2,[sp,4]		;16
	st_s	r3,[sp]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	sub_s	r2,r3,r2
	ld_s	r3,[sp,12]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L652
	ld_s	r2,[sp,12]		;15
	b_s	.L653
	.align 4
.L652:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	setlo	r2,r3,r2
	extb_s	r2,r2
	tst_s	r2,r2
	beq_s	.L659
	mov_s	r2,0	;3
	b_s	.L653
	.align 4
.L657:
	ld_s	r2,[sp,12]		;15
	ldb_s	r3,[r2]
	ld_s	r2,[sp,4]		;15
	ldb_s	r2,[r2]
	cmp_s	r3,r2
	bne_s	.L656
	ld_s	r2,[sp,12]		;15
	add_s	r3,r2,1   ;a,b,c/u3
	ld_s	r2,[sp]		;15
	sub	r13,r2,1 ;a,b,u6
	ld_s	r2,[sp,4]		;15
	add_s	r12,r2,1   ;a,b,c/u3
	mov_s	r2,r13	;4
	mov_s	r1,r12	;4
	mov_s	r0,r3	;4
	bl	@memcmp;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bne_s	.L656
	ld_s	r2,[sp,12]		;15
	b_s	.L653
	.align 4
.L656:
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,12]		;16
	b_s	.L655
	.align 4
.L659:
	nop_s
	.align 2
.L655:
	ld_s	r3,[sp,12]		;15
	ld_s	r2,[sp,16]		;15
	cmp_s	r3,r2
	bls_s	.L657
	mov_s	r2,0	;3
	.align 2
.L653:
	mov_s	r0,r2	;4
	add_s	sp,sp,20   ;sp,sp,u7
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	push_s	blink
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	ld_s	r1,[sp,4]		;15
	ld_s	r0,[sp,8]		;15
	bl	@memcpy;1
	mov_s	r2,r0	;4
	ld_s	r3,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
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
	sub_s	sp,sp,20  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	st	0,[sp,12]	;37
	st	0,[sp,16]	;37
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[sp,4]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bp	.L664
	ld	r16,[sp,4]	;23
	ld_s	r2,[sp,8]		;15
	bxor	r17,r2,31
	std	r16,[sp,4]
	st	1,[sp,16]	;37
	.align 2
.L664:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	ldd	r0,[sp,4]
	bl	@__gedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bn	.L681
	b_s	.L668
	.align 4
.L669:
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,12]		;16
	mov_s	r2,0	;3
	mov_s	r3,1073741824	;13
	ldd	r0,[sp,4]
	bl	@__divdf3;1
	std	r0,[sp,4]
	.align 2
.L668:
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	ldd	r0,[sp,4]
	bl	@__gedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L669
	b_s	.L670
	.align 4
.L681:
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	ldd	r0,[sp,4]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bp	.L670
	mov_s	r2,0	;3
	mov_s	r3,0	;3
	ldd	r0,[sp,4]
	bl	@__nedf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	beq_s	.L670
	b_s	.L673
	.align 4
.L674:
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,-1   ;h,h,s3
	st_s	r2,[sp,12]		;16
	ldd	r0,[sp,4]
	vadd2	r2,r0,0
	bl	@__adddf3;1
	std	r0,[sp,4]
	.align 2
.L673:
	mov_s	r2,0	;3
	mov_s	r3,1071644672	;13
	ldd	r0,[sp,4]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r2,r2
	bn	.L674
	.align 2
.L670:
	ld_s	r2,[sp]		;15
	ld_s	r3,[sp,12]		;15
	st_s	r3,[r2]		;16
	ld_s	r2,[sp,16]		;15
	tst_s	r2,r2
	beq_s	.L675
	ld_s	r14,[sp,4]		;15
	ld_s	r2,[sp,8]		;15
	bxor	r15,r2,31
	std	r14,[sp,4]
	.align 2
.L675:
	ldd	r0,[sp,4]
	add_s	sp,sp,20   ;sp,sp,u7
	ld	blink,[sp,16]	;23
	ldd.ab	r14,[sp,8]
	ldd.ab	r16,[sp,12]
	j_s	[blink]
	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	push_s	r13
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	std	0,[sp,24]
	ldd	r2,[sp,8]
	std	r2,[sp,16]
	b_s	.L684
	.align 4
.L687:
	ld_s	r2,[sp,16]		;15
	and	r12,r2,1
	ld_s	r2,[sp,20]		;15
	and	r3,r2,0
	mov_s	r2,r12	;4
	or_s	r2,r2,r3
	tst_s	r2,r2
	beq_s	.L685
	ld_s	r2,[sp,24]		;15
	ld_s	r13,[sp,28]		;15
	ld_s	r3,[sp]		;15
	ld_s	r12,[sp,4]		;15
	add.f	r3,r2,r3
	adc	r2,r13,r12
	st_s	r3,[sp,24]		;16
	st_s	r2,[sp,28]		;16
	.align 2
.L685:
	ld_s	r2,[sp]		;15
	ld_s	r3,[sp,4]		;15
	add.f	r12,r2,r2
	adc	r2,r3,r3
	st_s	r12,[sp]		;16
	st_s	r2,[sp,4]		;16
	ld_s	r3,[sp,16]		;15
	ld_s	r2,[sp,20]		;15
	lsr.f	r2,r2
	rrc	r3,r3
	st_s	r3,[sp,16]		;16
	st_s	r2,[sp,20]		;16
	.align 2
.L684:
	ld_s	r2,[sp,16]		;15
	ld_s	r3,[sp,20]		;15
	or_s	r2,r2,r3
	tst_s	r2,r2
	bne_s	.L687
	ldd	r0,[sp,24]
	add_s	sp,sp,32   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	st	1,[sp,16]	;37
	st	0,[sp,12]	;37
	b_s	.L691
	.align 4
.L693:
	ld_s	r2,[sp,4]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,16]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp,16]		;16
	.align 2
.L691:
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp,8]		;15
	cmp_s	r3,r2
	bhs	.L700
	ld_s	r2,[sp,16]		;15
	tst_s	r2,r2
	beq_s	.L700
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bp	.L693
	b_s	.L700
	.align 4
.L696:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	blo_s	.L695
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	sub_s	r2,r3,r2
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,12]		;15
	ld_s	r2,[sp,16]		;15
	or_s	r2,r2,r3
	st_s	r2,[sp,12]		;16
	.align 2
.L695:
	ld_s	r2,[sp,16]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,4]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,4]		;16
	b_s	.L694
	.align 4
.L700:
	nop_s
	.align 2
.L694:
	ld_s	r2,[sp,16]		;15
	tst_s	r2,r2
	bne_s	.L696
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L697
	ld_s	r2,[sp,8]		;15
	b_s	.L698
	.align 4
.L697:
	ld_s	r2,[sp,12]		;15
	.align 2
.L698:
	mov_s	r0,r2	;4
	add_s	sp,sp,20   ;sp,sp,u7
	j_s	[blink]
	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	stb_s	r0,[sp]
	ldb_s	r2,[sp]
	tst_s	r2,r2
	bne_s	.L702
	mov_s	r2,7	;3
	b_s	.L703
	.align 4
.L702:
	ldb_s	r2,[sp]
	asl_s	r2,r2,8
	fls	r2,r2
	rsub	r2,r2,31
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L703:
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	sub_s	sp,sp,12  ;sp,sp,u7
	std	r0,[sp]
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bp	.L706
	ldd	r2,[sp]
	not_s	r2,r2
	not_s	r3,r3
	std	r2,[sp]
	.align 2
.L706:
	ld_s	r2,[sp]		;15
	ld_s	r3,[sp,4]		;15
	or_s	r2,r2,r3
	tst_s	r2,r2
	bne_s	.L708
	mov_s	r2,63	;3
	b_s	.L709
	.align 4
.L708:
	ld_s	r3,[sp]		;15
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	beq_s	.L710
	fls	r2,r2
	rsub	r2,r2,31
	b_s	.L711
	.align 4
.L710:
	fls	r2,r3
	rsub	r2,r2,31
	add_s	r2,r2,32   ;b,b,h
	.align 2
.L711:
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,-1   ;h,h,s3
	.align 2
.L709:
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	st	0,[sp,8]	;37
	b_s	.L714
	.align 4
.L716:
	ld_s	r2,[sp,4]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L715
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,8]		;16
	.align 2
.L715:
	ld_s	r2,[sp,4]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp]		;16
	.align 2
.L714:
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bne_s	.L716
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	sub_s	sp,sp,24  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2,3
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp]		;15
	bmskn	r2,r2,2
	st_s	r2,[sp,16]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	blo_s	.L720
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r3,[sp,8]		;15
	cmp_s	r3,r2
	bls	.L730
	.align 2
.L720:
	st	0,[sp,20]	;37
	b_s	.L722
	.align 4
.L723:
	ld_s	r2,[sp,20]		;15
	asl_s	r2,r2,3
	ld_s	r3,[sp,8]		;15
	add_s	r12,r3,r2   ;a,b,c/u3
	ld_s	r2,[sp,20]		;15
	asl_s	r2,r2,3
	ld_s	r3,[sp,4]		;15
	add_s	r2,r2,r3   ;b,b,h
	ldd	r2,[r2]
	std	r2,[r12]
	ld_s	r2,[sp,20]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,20]		;16
	.align 2
.L722:
	ld_s	r3,[sp,20]		;15
	ld_s	r2,[sp,12]		;15
	cmp_s	r3,r2
	blo_s	.L723
	b_s	.L724
	.align 4
.L725:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,16]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r12,[sp,4]		;15
	ld_s	r3,[sp,16]		;15
	add_s	r3,r3,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld_s	r2,[sp,16]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,16]		;16
	.align 2
.L724:
	ld_s	r3,[sp]		;15
	ld_s	r2,[sp,16]		;15
	cmp_s	r3,r2
	bhi_s	.L725
	b_s	.L726
	.align 4
.L728:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r12,[sp,4]		;15
	ld_s	r3,[sp]		;15
	add_s	r3,r3,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	b_s	.L727
	.align 4
.L730:
	nop_s
	.align 2
.L727:
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp]		;16
	tst_s	r2,r2
	bne_s	.L728
	nop_s
	.align 2
.L726:
	nop_s
	add_s	sp,sp,24   ;sp,sp,u7
	j_s	[blink]
	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,12]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	blo_s	.L732
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r3,[sp,8]		;15
	cmp_s	r3,r2
	bls	.L741
	.align 2
.L732:
	st	0,[sp,16]	;37
	b_s	.L734
	.align 4
.L735:
	ld_s	r2,[sp,16]		;15
	asl_s	r2,r2,1
	ld_s	r3,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r3,[sp,16]		;15
	asl_s	r3,r3,1
	ld_s	r12,[sp,4]		;15
	add_s	r3,r3,r12   ;b,b,h
	ldh_s.x	r3,[r3]
	sth_s	r3,[r2]
	ld_s	r2,[sp,16]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,16]		;16
	.align 2
.L734:
	ld_s	r3,[sp,16]		;15
	ld_s	r2,[sp,12]		;15
	cmp_s	r3,r2
	blo_s	.L735
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L737
	ld_s	r2,[sp]		;15
	add_s	r2,r2,-1   ;h,h,s3
	ld_s	r3,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r12,[sp,4]		;15
	ld_s	r3,[sp]		;15
	add_s	r3,r3,r12   ;b,b,h
	add_s	r3,r3,-1   ;h,h,s3
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	b_s	.L737
	.align 4
.L739:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r12,[sp,4]		;15
	ld_s	r3,[sp]		;15
	add_s	r3,r3,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	b_s	.L738
	.align 4
.L741:
	nop_s
	.align 2
.L738:
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp]		;16
	tst_s	r2,r2
	bne_s	.L739
	nop_s
	.align 2
.L737:
	nop_s
	add_s	sp,sp,20   ;sp,sp,u7
	j_s	[blink]
	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	sub_s	sp,sp,24  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2,2
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp]		;15
	bmskn	r2,r2,1
	st_s	r2,[sp,16]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	blo_s	.L743
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r3,[sp,8]		;15
	cmp_s	r3,r2
	bls	.L753
	.align 2
.L743:
	st	0,[sp,20]	;37
	b_s	.L745
	.align 4
.L746:
	ld_s	r2,[sp,20]		;15
	asl_s	r2,r2,2
	ld_s	r3,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r3,[sp,20]		;15
	asl_s	r3,r3,2
	ld_s	r12,[sp,4]		;15
	add_s	r3,r3,r12   ;b,b,h
	ld_s	r3,[r3]		;15
	st_s	r3,[r2]		;16
	ld_s	r2,[sp,20]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,20]		;16
	.align 2
.L745:
	ld_s	r3,[sp,20]		;15
	ld_s	r2,[sp,12]		;15
	cmp_s	r3,r2
	blo_s	.L746
	b_s	.L747
	.align 4
.L748:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,16]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r12,[sp,4]		;15
	ld_s	r3,[sp,16]		;15
	add_s	r3,r3,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	ld_s	r2,[sp,16]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,16]		;16
	.align 2
.L747:
	ld_s	r3,[sp]		;15
	ld_s	r2,[sp,16]		;15
	cmp_s	r3,r2
	bhi_s	.L748
	b_s	.L749
	.align 4
.L751:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	ld_s	r12,[sp,4]		;15
	ld_s	r3,[sp]		;15
	add_s	r3,r3,r12   ;b,b,h
	ldb_s	r3,[r3]
	stb_s	r3,[r2]
	b_s	.L750
	.align 4
.L753:
	nop_s
	.align 2
.L750:
	ld_s	r2,[sp]		;15
	sub	r3,r2,1 ;a,b,u6
	st_s	r3,[sp]		;16
	tst_s	r2,r2
	bne_s	.L751
	nop_s
	.align 2
.L749:
	nop_s
	add_s	sp,sp,24   ;sp,sp,u7
	j_s	[blink]
	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	rem	r2,r3,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	__modi, .-__modi
	.align 4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	push_s	blink
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r0,[sp]		;15
	bl	@__floatunsidf;1
	add_s	sp,sp,4   ;h,h,s3
	pop_s	blink
	j_s	[blink]
	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	push_s	blink
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r0,[sp]		;15
	bl	@__floatunsisf;1
	mov_s	r2,r0
	mov_s	r0,r2
	add_s	sp,sp,4   ;h,h,s3
	pop_s	blink
	j_s	[blink]
	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[sp]
	ldd	r0,[sp]
	bl	@__floatundidf;1
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[sp]
	ldd	r0,[sp]
	bl	@__floatundisf;1
	mov_s	r2,r0
	mov_s	r0,r2
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__ulltof, .-__ulltof
	.align 4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp]		;15
	remu	r2,r3,r2
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r0,[sp]
	st	0,[sp,4]	;37
	b_s	.L773
	.align 4
.L776:
	ld_s	r2,[sp,4]		;15
	rsub	r2,r2,15
	ldh	r3,[sp]
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	bne_s	.L778
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L773:
	ld_s	r2,[sp,4]		;15
	cmp_s	r2,15
	ble_s	.L776
	b_s	.L775
	.align 4
.L778:
	nop_s
	.align 2
.L775:
	ld_s	r2,[sp,4]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	sub_s	sp,sp,8  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r0,[sp]
	st	0,[sp,4]	;37
	b_s	.L781
	.align 4
.L784:
	ldh	r3,[sp]
	ld_s	r2,[sp,4]		;15
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	bne_s	.L786
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L781:
	ld_s	r2,[sp,4]		;15
	cmp_s	r2,15
	ble_s	.L784
	b_s	.L783
	.align 4
.L786:
	nop_s
	.align 2
.L783:
	ld_s	r2,[sp,4]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	j_s	[blink]
	.size	__ctzhi2, .-__ctzhi2
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	push_s	blink
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]
	mov_s	r1,0x47000000 ; 3.2768e+4
	ld_s	r0,[sp]
	bl	@__gesf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bn	.L793
	mov_s	r1,0x47000000 ; 3.2768e+4
	ld_s	r0,[sp]
	bl	@__subsf3;1
	mov_s	r2,r0
	mov_s	r0,r2
	bl	@__fixsfsi;1
	mov_s	r2,r0	;4
	add_s	r2,r2,32768   ;b,b,limm
	b_s	.L791
	.align 4
.L793:
	ld_s	r0,[sp]
	bl	@__fixsfsi;1
	mov_s	r2,r0	;4
	.align 2
.L791:
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	pop_s	blink
	j_s	[blink]
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	sub_s	sp,sp,12  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r0,[sp]
	st	0,[sp,4]	;37
	st	0,[sp,8]	;37
	b_s	.L796
	.align 4
.L798:
	ldh	r3,[sp]
	ld_s	r2,[sp,8]		;15
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L797
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L797:
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,8]		;16
	.align 2
.L796:
	ld_s	r2,[sp,8]		;15
	cmp_s	r2,15
	ble_s	.L798
	ld_s	r2,[sp,4]		;15
	bmsk_s	r2,r2,0
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	sub_s	sp,sp,12  ;sp,sp,u7
	mov_s	r2,r0	;4
	sth	r0,[sp]
	st	0,[sp,4]	;37
	st	0,[sp,8]	;37
	b_s	.L802
	.align 4
.L804:
	ldh	r3,[sp]
	ld_s	r2,[sp,8]		;15
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L803
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,4]		;16
	.align 2
.L803:
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,1   ;b,b,h
	st_s	r2,[sp,8]		;16
	.align 2
.L802:
	ld_s	r2,[sp,8]		;15
	cmp_s	r2,15
	ble_s	.L804
	ld_s	r2,[sp,4]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	st	0,[sp,8]	;37
	b_s	.L808
	.align 4
.L810:
	ld_s	r2,[sp,4]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L809
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,8]		;16
	.align 2
.L809:
	ld_s	r2,[sp,4]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp]		;16
	.align 2
.L808:
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bne_s	.L810
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	sub_s	sp,sp,12  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	st	0,[sp,8]	;37
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bne_s	.L820
	mov_s	r2,0	;3
	b_s	.L815
	.align 4
.L818:
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L817
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,8]		;16
	.align 2
.L817:
	ld_s	r2,[sp,4]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2
	st_s	r2,[sp]		;16
	b_s	.L816
	.align 4
.L820:
	nop_s
	.align 2
.L816:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L818
	ld_s	r2,[sp,8]		;15
	.align 2
.L815:
	mov_s	r0,r2	;4
	add_s	sp,sp,12   ;sp,sp,u7
	j_s	[blink]
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	st	1,[sp,16]	;37
	st	0,[sp,12]	;37
	b_s	.L822
	.align 4
.L824:
	ld_s	r2,[sp,4]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,16]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp,16]		;16
	.align 2
.L822:
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp,8]		;15
	cmp_s	r3,r2
	bhs	.L831
	ld_s	r2,[sp,16]		;15
	tst_s	r2,r2
	beq_s	.L831
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bp	.L824
	b_s	.L831
	.align 4
.L827:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	blo_s	.L826
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	sub_s	r2,r3,r2
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,12]		;15
	ld_s	r2,[sp,16]		;15
	or_s	r2,r2,r3
	st_s	r2,[sp,12]		;16
	.align 2
.L826:
	ld_s	r2,[sp,16]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,4]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,4]		;16
	b_s	.L825
	.align 4
.L831:
	nop_s
	.align 2
.L825:
	ld_s	r2,[sp,16]		;15
	tst_s	r2,r2
	bne_s	.L827
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L828
	ld_s	r2,[sp,8]		;15
	b_s	.L829
	.align 4
.L828:
	ld_s	r2,[sp,12]		;15
	.align 2
.L829:
	mov_s	r0,r2	;4
	add_s	sp,sp,20   ;sp,sp,u7
	j_s	[blink]
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	push_s	blink
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]
	st_s	r1,[sp]
	ld_s	r1,[sp]
	ld_s	r0,[sp,4]
	bl	@__ltsf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bp	.L840
	mov_s	r2,-1	;4
	b_s	.L835
	.align 4
.L840:
	ld_s	r1,[sp]
	ld_s	r0,[sp,4]
	bl	@__gtsf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L841
	mov_s	r2,1	;3
	b_s	.L835
	.align 4
.L841:
	mov_s	r2,0	;3
	.align 2
.L835:
	mov_s	r0,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__ltdf2;1
	mov_s	r2,r0	;4
	tst_s	r0,r0
	bp	.L851
	mov_s	r2,-1	;4
	b_s	.L846
	.align 4
.L851:
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__gtdf2;1
	mov_s	r2,r0	;4
	cmp_s	r2,0
	ble_s	.L852
	mov_s	r2,1	;3
	b_s	.L846
	.align 4
.L852:
	mov_s	r2,0	;3
	.align 2
.L846:
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	push_s	r13
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r2,[sp,4]		;15
	mov_s	r3,r2	;4
	asr_s	r2,r2,31
	mov_s	r13,r2	;4
	ld_s	r12,[sp]		;15
	mov_s	r2,r12	;4
	asr_s	r12,r12,31
	mpy_s	r13,r13,r2
	mpy_s	r12,r12,r3
	add_s	r12,r12,r13   ;b,b,h
	mpydu	r0,r3,r2
	add_s	r2,r12,r1   ;a,b,c/u3
	mov_s	r1,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	push_s	r13
	sub_s	sp,sp,8  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	ld_s	r2,[sp,4]		;15
	mov_s	r3,r2	;4
	mov_s	r13,0	;3
	ld_s	r2,[sp]		;15
	mov_s	r12,0	;3
	mpy_s	r13,r13,r2
	mpy_s	r12,r12,r3
	add_s	r12,r12,r13   ;b,b,h
	mpydu	r0,r3,r2
	add_s	r2,r12,r1   ;a,b,c/u3
	mov_s	r1,r2	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	st	0,[sp,12]	;37
	st	0,[sp,8]	;37
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bp	.L861
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	st_s	r2,[sp]		;16
	st	1,[sp,12]	;37
	.align 2
.L861:
	stb	0,[sp,19]
	b_s	.L862
	.align 4
.L865:
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L863
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,8]		;16
	.align 2
.L863:
	ld_s	r2,[sp,4]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp]		;15
	asr_s	r2,r2,1
	st_s	r2,[sp]		;16
	ldb	r2,[sp,19]
	add_s	r2,r2,1   ;b,b,h
	stb	r2,[sp,19]
	.align 2
.L862:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L864
	ldb	r2,[sp,19]
	cmp_s	r2,31
	bls_s	.L865
	.align 2
.L864:
	ld_s	r2,[sp,12]		;15
	tst_s	r2,r2
	beq_s	.L866
	ld_s	r2,[sp,8]		;15
	neg_s	r2,r2
	b_s	.L868
	.align 4
.L866:
	ld_s	r2,[sp,8]		;15
	.align 2
.L868:
	nop_s
	mov_s	r0,r2	;4
	add_s	sp,sp,20   ;sp,sp,u7
	j_s	[blink]
	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	st	0,[sp,12]	;37
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bp	.L871
	ld_s	r2,[sp,4]		;15
	neg_s	r2,r2
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,12]		;15
	seteq	r2,r2,0
	extb_s	r2,r2
	st_s	r2,[sp,12]		;16
	.align 2
.L871:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bp	.L872
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	st_s	r2,[sp]		;16
	ld_s	r2,[sp,12]		;15
	seteq	r2,r2,0
	extb_s	r2,r2
	st_s	r2,[sp,12]		;16
	.align 2
.L872:
	mov_s	r2,0	;3
	ld_s	r1,[sp]		;15
	ld_s	r0,[sp,4]		;15
	bl	@__udivmodsi4;1
	mov_s	r2,r0	;4
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,12]		;15
	tst_s	r2,r2
	beq_s	.L873
	ld_s	r2,[sp,8]		;15
	neg_s	r2,r2
	st_s	r2,[sp,8]		;16
	.align 2
.L873:
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	st	0,[sp,12]	;37
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bp	.L877
	ld_s	r2,[sp,4]		;15
	neg_s	r2,r2
	st_s	r2,[sp,4]		;16
	st	1,[sp,12]	;37
	.align 2
.L877:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bp	.L878
	ld_s	r2,[sp]		;15
	neg_s	r2,r2
	st_s	r2,[sp]		;16
	.align 2
.L878:
	mov_s	r2,1	;3
	ld_s	r1,[sp]		;15
	ld_s	r0,[sp,4]		;15
	bl	@__udivmodsi4;1
	mov_s	r2,r0	;4
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,12]		;15
	tst_s	r2,r2
	beq_s	.L879
	ld_s	r2,[sp,8]		;15
	neg_s	r2,r2
	st_s	r2,[sp,8]		;16
	.align 2
.L879:
	ld_s	r2,[sp,8]		;15
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	sub_s	sp,sp,16  ;sp,sp,u7
	mov_s	r3,r0	;4
	mov_s	r12,r1	;4
	st_s	r2,[sp]		;16
	mov_s	r2,r0
	sth	r0,[sp,8]
	mov_s	r2,r1
	sth	r1,[sp,4]
	sth	1,[sp,14]
	sth	0,[sp,12]
	b_s	.L883
	.align 4
.L885:
	ldh	r2,[sp,4]
	asl_s	r2,r2,1
	sth	r2,[sp,4]
	ldh	r2,[sp,14]
	asl_s	r2,r2,1
	sth	r2,[sp,14]
	.align 2
.L883:
	ldh	r3,[sp,4]
	ldh	r2,[sp,8]
	cmp_s	r3,r2
	bhs	.L892
	ldh	r2,[sp,14]
	tst_s	r2,r2
	beq_s	.L892
	ldh.x	r2,[sp,4]
	tst_s	r2,r2
	bp	.L885
	b_s	.L892
	.align 4
.L888:
	ldh	r3,[sp,8]
	ldh	r2,[sp,4]
	cmp_s	r3,r2
	blo_s	.L887
	ldh	r3,[sp,8]
	ldh	r2,[sp,4]
	sub_s	r2,r3,r2
	sth	r2,[sp,8]
	ldh	r3,[sp,12]
	ldh	r2,[sp,14]
	or_s	r2,r2,r3
	sth	r2,[sp,12]
	.align 2
.L887:
	ldh	r2,[sp,14]
	lsr_s	r2,r2
	sth	r2,[sp,14]
	ldh	r2,[sp,4]
	lsr_s	r2,r2
	sth	r2,[sp,4]
	b_s	.L886
	.align 4
.L892:
	nop_s
	.align 2
.L886:
	ldh	r2,[sp,14]
	tst_s	r2,r2
	bne_s	.L888
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L889
	ldh	r2,[sp,8]
	b_s	.L890
	.align 4
.L889:
	ldh	r2,[sp,12]
	.align 2
.L890:
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	j_s	[blink]
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp,8]		;16
	st_s	r1,[sp,4]		;16
	st_s	r2,[sp]		;16
	st	1,[sp,16]	;37
	st	0,[sp,12]	;37
	b_s	.L894
	.align 4
.L896:
	ld_s	r2,[sp,4]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,16]		;15
	asl_s	r2,r2,1
	st_s	r2,[sp,16]		;16
	.align 2
.L894:
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp,8]		;15
	cmp_s	r3,r2
	bhs	.L903
	ld_s	r2,[sp,16]		;15
	tst_s	r2,r2
	beq_s	.L903
	ld_s	r2,[sp,4]		;15
	tst_s	r2,r2
	bp	.L896
	b_s	.L903
	.align 4
.L899:
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	cmp_s	r3,r2
	blo_s	.L898
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,4]		;15
	sub_s	r2,r3,r2
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,12]		;15
	ld_s	r2,[sp,16]		;15
	or_s	r2,r2,r3
	st_s	r2,[sp,12]		;16
	.align 2
.L898:
	ld_s	r2,[sp,16]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,4]		;15
	lsr_s	r2,r2
	st_s	r2,[sp,4]		;16
	b_s	.L897
	.align 4
.L903:
	nop_s
	.align 2
.L897:
	ld_s	r2,[sp,16]		;15
	tst_s	r2,r2
	bne_s	.L899
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L900
	ld_s	r2,[sp,8]		;15
	b_s	.L901
	.align 4
.L900:
	ld_s	r2,[sp,12]		;15
	.align 2
.L901:
	mov_s	r0,r2	;4
	add_s	sp,sp,20   ;sp,sp,u7
	j_s	[blink]
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	push_s	r13
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	mov_s	r2,32	;3
	st_s	r2,[sp,28]		;16
	ldd	r2,[sp,4]
	std	r2,[sp,20]
	ld_s	r2,[sp,28]		;15
	ld_s	r3,[sp]		;15
	and_s	r2,r2,r3
	tst_s	r2,r2
	beq_s	.L905
	st	0,[sp,12]	;37
	ld_s	r3,[sp,20]		;15
	ld_s	r12,[sp]		;15
	ld_s	r2,[sp,28]		;15
	sub_s	r2,r12,r2
	asl	r2,r3,r2
	st_s	r2,[sp,16]		;16
	b_s	.L906
	.align 4
.L905:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L907
	ldd	r0,[sp,4]
	b_s	.L909
	.align 4
.L907:
	ld_s	r3,[sp,20]		;15
	ld_s	r2,[sp]		;15
	asl	r2,r3,r2
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,24]		;15
	mov_s	r3,r2	;4
	ld_s	r2,[sp]		;15
	asl_s	r3,r3,r2
	ld_s	r12,[sp,20]		;15
	ld_s	r13,[sp,28]		;15
	ld_s	r2,[sp]		;15
	sub_s	r2,r13,r2
	lsr	r2,r12,r2
	or_s	r2,r2,r3
	st_s	r2,[sp,16]		;16
	.align 2
.L906:
	ldd	r0,[sp,12]
.L909:
	add_s	sp,sp,32   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	mov_s	r2,32	;3
	st_s	r2,[sp,28]		;16
	ldd	r2,[sp,4]
	std	r2,[sp,20]
	ld_s	r2,[sp,28]		;15
	ld_s	r3,[sp]		;15
	and_s	r2,r2,r3
	tst_s	r2,r2
	beq_s	.L912
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp,28]		;15
	add_s	r2,r2,-1   ;h,h,s3
	asr	r2,r3,r2
	st_s	r2,[sp,16]		;16
	ld_s	r3,[sp,24]		;15
	ld_s	r12,[sp]		;15
	ld_s	r2,[sp,28]		;15
	sub_s	r2,r12,r2
	asr	r2,r3,r2
	st_s	r2,[sp,12]		;16
	b_s	.L913
	.align 4
.L912:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L914
	ldd	r0,[sp,4]
	b_s	.L916
	.align 4
.L914:
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp]		;15
	asr	r2,r3,r2
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,24]		;15
	mov_s	r12,r2	;4
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp]		;15
	sub_s	r2,r3,r2
	asl	r3,r12,r2
	ld_s	r12,[sp,20]		;15
	ld_s	r2,[sp]		;15
	lsr	r2,r12,r2
	or_s	r2,r2,r3
	st_s	r2,[sp,12]		;16
	.align 2
.L913:
	ldd	r0,[sp,12]
.L916:
	add_s	sp,sp,32   ;sp,sp,u7
	j_s	[blink]
	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	push_s	r14
	push_s	r13
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[sp]
	ld_s	r2,[sp,4]		;15
	lsr	r12,r2,24
	mov_s	r14,0	;3
	ld_s	r2,[sp,4]		;15
	lsr_s	r2,r2,8
	mov_s	r3,0	;3
	and	r2,r2,65280
	and	r3,r3,0
	or	r13,r12,r2
	or	r12,r14,r3
	ld_s	r2,[sp,4]		;15
	asl	r3,r2,8
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2,24
	or_s	r2,r2,r3
	ld_s	r3,[sp,4]		;15
	lsr_s	r3,r3,24
	and	r2,r2,16711680
	and	r3,r3,0
	or_s	r13,r13,r2
	or_s	r12,r12,r3
	ld_s	r2,[sp,4]		;15
	asl	r3,r2,24
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2,8
	or_s	r2,r2,r3
	ld_s	r3,[sp,4]		;15
	lsr_s	r3,r3,8
	bmskn	r2,r2,23
	and	r3,r3,0
	or_s	r13,r13,r2
	or_s	r12,r12,r3
	ld_s	r2,[sp]		;15
	lsr	r3,r2,24
	ld_s	r2,[sp,4]		;15
	asl_s	r2,r2,8
	or_s	r2,r2,r3
	ld_s	r3,[sp]		;15
	asl_s	r3,r3,8
	and	r3,r3,0
	bmsk_s	r2,r2,7
	or_s	r13,r13,r3
	or_s	r12,r12,r2
	ld_s	r2,[sp]		;15
	lsr	r3,r2,8
	ld_s	r2,[sp,4]		;15
	asl_s	r2,r2,24
	or_s	r2,r2,r3
	ld_s	r3,[sp]		;15
	asl_s	r3,r3,24
	and	r3,r3,0
	and	r2,r2,65280
	or_s	r13,r13,r3
	or_s	r12,r12,r2
	ld_s	r2,[sp]		;15
	asl_s	r2,r2,8
	mov_s	r3,0	;3
	and	r3,r3,0
	and	r2,r2,16711680
	or_s	r13,r13,r3
	or_s	r12,r12,r2
	ld_s	r2,[sp]		;15
	asl	r3,r2,24
	mov_s	r2,0	;3
	or_s	r2,r2,r13
	or_s	r3,r3,r12
	mov_s	r0,r2	;4
	mov_s	r1,r3	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	r13
	pop_s	r14
	j_s	[blink]
	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	sub_s	sp,sp,4  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	lsr	r3,r2,24
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2,8
	and	r2,r2,65280
	or_s	r3,r3,r2
	ld_s	r2,[sp]		;15
	asl_s	r2,r2,8
	and	r2,r2,16711680
	or_s	r3,r3,r2
	ld_s	r2,[sp]		;15
	asl_s	r2,r2,24
	or_s	r2,r2,r3
	mov_s	r0,r2	;4
	add_s	sp,sp,4   ;h,h,s3
	j_s	[blink]
	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	sub_s	sp,sp,56  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	st_s	r2,[sp,52]		;16
	ld_s	r2,[sp,52]		;15
	cmp_s	r2,65535
	bhi_s	.L925
	mov_s	r2,16	;3
	b_s	.L926
	.align 4
.L925:
	mov_s	r2,0	;3
	.align 2
.L926:
	st_s	r2,[sp,48]		;16
	ld_s	r2,[sp,48]		;15
	rsub	r2,r2,16
	ld_s	r3,[sp,52]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,44]		;16
	ld_s	r2,[sp,48]		;15
	st_s	r2,[sp,40]		;16
	ld_s	r2,[sp,44]		;15
	and	r2,r2,65280
	tst_s	r2,r2
	bne_s	.L927
	mov_s	r2,8	;3
	b_s	.L928
	.align 4
.L927:
	mov_s	r2,0	;3
	.align 2
.L928:
	st_s	r2,[sp,36]		;16
	ld_s	r2,[sp,36]		;15
	rsub	r2,r2,8
	ld_s	r3,[sp,44]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,32]		;16
	ld_s	r3,[sp,40]		;15
	ld_s	r2,[sp,36]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,28]		;16
	ld_s	r2,[sp,32]		;15
	and	r2,r2,240
	tst_s	r2,r2
	bne_s	.L929
	mov_s	r2,4	;3
	b_s	.L930
	.align 4
.L929:
	mov_s	r2,0	;3
	.align 2
.L930:
	st_s	r2,[sp,24]		;16
	ld_s	r2,[sp,24]		;15
	rsub	r2,r2,4
	ld_s	r3,[sp,32]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,20]		;16
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp,24]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,20]		;15
	and	r2,r2,12
	tst_s	r2,r2
	bne_s	.L931
	mov_s	r2,2	;3
	b_s	.L932
	.align 4
.L931:
	mov_s	r2,0	;3
	.align 2
.L932:
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,12]		;15
	rsub	r2,r2,2
	ld_s	r3,[sp,20]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,16]		;15
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,8]		;15
	and	r2,r2,2
	seteq	r2,r2,0
	mov_s	r3,r2	;4
	ld_s	r2,[sp,8]		;15
	rsub	r2,r2,2
	mpy_s	r3,r3,r2
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,r3   ;b,b,h
	mov_s	r0,r2	;4
	add_s	sp,sp,56   ;sp,sp,u7
	j_s	[blink]
	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp,8]
	std	r2,[sp,24]
	ldd	r2,[sp]
	std	r2,[sp,16]
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp,20]		;15
	cmp_s	r3,r2
	bge_s	.L936
	mov_s	r2,0	;3
	b_s	.L941
	.align 4
.L936:
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp,20]		;15
	cmp_s	r3,r2
	ble_s	.L938
	mov_s	r2,2	;3
	b_s	.L941
	.align 4
.L938:
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp,16]		;15
	cmp_s	r3,r2
	bhs_s	.L939
	mov_s	r2,0	;3
	b_s	.L941
	.align 4
.L939:
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp,16]		;15
	cmp_s	r3,r2
	bls_s	.L940
	mov_s	r2,2	;3
	b_s	.L941
	.align 4
.L940:
	mov_s	r2,1	;3
	.align 2
.L941:
	mov_s	r0,r2	;4
	add_s	sp,sp,32   ;sp,sp,u7
	j_s	[blink]
	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__cmpdi2;1
	mov_s	r2,r0	;4
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	sub_s	sp,sp,60  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	st_s	r2,[sp,56]		;16
	ldh	r2,[sp,56]
	tst_s	r2,r2
	bne_s	.L947
	mov_s	r2,16	;3
	b_s	.L948
	.align 4
.L947:
	mov_s	r2,0	;3
	.align 2
.L948:
	st_s	r2,[sp,52]		;16
	ld_s	r3,[sp,56]		;15
	ld_s	r2,[sp,52]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,48]		;16
	ld_s	r2,[sp,52]		;15
	st_s	r2,[sp,44]		;16
	ldb	r2,[sp,48]
	tst_s	r2,r2
	bne_s	.L949
	mov_s	r2,8	;3
	b_s	.L950
	.align 4
.L949:
	mov_s	r2,0	;3
	.align 2
.L950:
	st_s	r2,[sp,40]		;16
	ld_s	r3,[sp,48]		;15
	ld_s	r2,[sp,40]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,36]		;16
	ld_s	r3,[sp,44]		;15
	ld_s	r2,[sp,40]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,32]		;16
	ld_s	r2,[sp,36]		;15
	bmsk_s	r2,r2,3
	tst_s	r2,r2
	bne_s	.L951
	mov_s	r2,4	;3
	b_s	.L952
	.align 4
.L951:
	mov_s	r2,0	;3
	.align 2
.L952:
	st_s	r2,[sp,28]		;16
	ld_s	r3,[sp,36]		;15
	ld_s	r2,[sp,28]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,24]		;16
	ld_s	r3,[sp,32]		;15
	ld_s	r2,[sp,28]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,20]		;16
	ld_s	r2,[sp,24]		;15
	bmsk_s	r2,r2,1
	tst_s	r2,r2
	bne_s	.L953
	mov_s	r2,2	;3
	b_s	.L954
	.align 4
.L953:
	mov_s	r2,0	;3
	.align 2
.L954:
	st_s	r2,[sp,16]		;16
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp,16]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,12]		;15
	bmsk_s	r2,r2,1
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,20]		;15
	ld_s	r2,[sp,16]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,8]		;15
	lsr_s	r2,r2
	rsub	r2,r2,2
	ld_s	r3,[sp,8]		;15
	not_s	r3,r3
	bmsk_s	r3,r3,0
	mpy_s	r3,r3,r2
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,r3   ;b,b,h
	mov_s	r0,r2	;4
	add_s	sp,sp,60   ;sp,sp,u7
	j_s	[blink]
	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	mov_s	r2,32	;3
	st_s	r2,[sp,28]		;16
	ldd	r2,[sp,4]
	std	r2,[sp,20]
	ld_s	r2,[sp,28]		;15
	ld_s	r3,[sp]		;15
	and_s	r2,r2,r3
	tst_s	r2,r2
	beq_s	.L958
	st	0,[sp,16]	;37
	ld_s	r3,[sp,24]		;15
	ld_s	r12,[sp]		;15
	ld_s	r2,[sp,28]		;15
	sub_s	r2,r12,r2
	lsr	r2,r3,r2
	st_s	r2,[sp,12]		;16
	b_s	.L959
	.align 4
.L958:
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	bne_s	.L960
	ldd	r0,[sp,4]
	b_s	.L962
	.align 4
.L960:
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,16]		;16
	ld_s	r3,[sp,24]		;15
	ld_s	r12,[sp,28]		;15
	ld_s	r2,[sp]		;15
	sub_s	r2,r12,r2
	asl_s	r3,r3,r2
	ld_s	r12,[sp,20]		;15
	ld_s	r2,[sp]		;15
	lsr	r2,r12,r2
	or_s	r2,r2,r3
	st_s	r2,[sp,12]		;16
	.align 2
.L959:
	ldd	r0,[sp,12]
.L962:
	add_s	sp,sp,32   ;sp,sp,u7
	j_s	[blink]
	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	push_s	r13
	sub_s	sp,sp,40  ;sp,sp,u7
	st_s	r0,[sp,4]		;16
	st_s	r1,[sp]		;16
	st	16,[sp,36]	;37
	mov_s	r3,-1	;4
	ld_s	r2,[sp,36]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,32]		;16
	ld_s	r2,[sp,32]		;15
	ld_s	r3,[sp,4]		;15
	and_s	r3,r3,r2
	ld_s	r2,[sp,32]		;15
	ld_s	r12,[sp]		;15
	and_s	r2,r2,r12
	mpy_s	r2,r2,r3
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,36]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,28]		;16
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[sp,32]		;15
	and_s	r2,r2,r3
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,4]		;15
	ld_s	r2,[sp,36]		;15
	lsr_s	r3,r3,r2
	ld_s	r2,[sp,32]		;15
	ld_s	r12,[sp]		;15
	and_s	r2,r2,r12
	mpy_s	r2,r2,r3
	ld_s	r3,[sp,28]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,24]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,32]		;15
	ld_s	r12,[sp,24]		;15
	and_s	r12,r12,r2
	ld_s	r2,[sp,36]		;15
	asl	r2,r12,r2
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp,36]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,12]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,36]		;15
	lsr	r2,r3,r2
	st_s	r2,[sp,20]		;16
	ld_s	r2,[sp,8]		;15
	ld_s	r3,[sp,32]		;15
	and_s	r2,r2,r3
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp]		;15
	ld_s	r2,[sp,36]		;15
	lsr_s	r3,r3,r2
	ld_s	r2,[sp,32]		;15
	ld_s	r12,[sp,4]		;15
	and_s	r2,r2,r12
	mpy_s	r2,r2,r3
	ld_s	r3,[sp,20]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,16]		;16
	ld_s	r3,[sp,8]		;15
	ld_s	r2,[sp,32]		;15
	ld_s	r12,[sp,16]		;15
	and_s	r12,r12,r2
	ld_s	r2,[sp,36]		;15
	asl	r2,r12,r2
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r3,[sp,12]		;15
	ld_s	r12,[sp,16]		;15
	ld_s	r2,[sp,36]		;15
	lsr	r2,r12,r2
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,12]		;16
	ld_s	r3,[sp,12]		;15
	ld_s	r12,[sp,4]		;15
	ld_s	r2,[sp,36]		;15
	lsr_s	r12,r12,r2
	ld_s	r13,[sp]		;15
	ld_s	r2,[sp,36]		;15
	lsr	r2,r13,r2
	mpy_s	r2,r2,r12
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,12]		;16
	ldd	r0,[sp,8]
	add_s	sp,sp,40   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	push_s	blink
	push_s	r13
	sub_s	sp,sp,40  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp,8]
	std	r2,[sp,32]
	ldd	r2,[sp]
	std	r2,[sp,24]
	ld_s	r1,[sp,24]		;15
	ld_s	r0,[sp,32]		;15
	bl	@__muldsi3;1
	std	r0,[sp,16]
	ld_s	r3,[sp,20]		;15
	ld_s	r12,[sp,36]		;15
	ld_s	r2,[sp,24]		;15
	mpy_s	r12,r12,r2
	ld_s	r13,[sp,32]		;15
	ld_s	r2,[sp,28]		;15
	mpy_s	r2,r2,r13
	add_s	r2,r2,r12   ;b,b,h
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,20]		;16
	ldd	r0,[sp,16]
	add_s	sp,sp,40   ;sp,sp,u7
	ld	blink,[sp,4]	;23
	ld.ab	r13,[sp,8]	;23
	j_s	[blink]
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	push_s	r13
	sub_s	sp,sp,8  ;sp,sp,u7
	std	r0,[sp]
	ld_s	r2,[sp]		;15
	ld_s	r3,[sp,4]		;15
	mov_s	r13,0	;3
	mov_s	r12,0	;3
	sub.f	r2,r13,r2
	sbc	r3,r12,r3
	mov_s	r0,r2	;4
	mov_s	r1,r3	;4
	add_s	sp,sp,8   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[sp]
	ldd	r2,[sp]
	std	r2,[sp,8]
	ld_s	r3,[sp,12]		;15
	ld_s	r2,[sp,8]		;15
	xor_s	r2,r2,r3
	st_s	r2,[sp,28]		;16
	ld_s	r2,[sp,28]		;15
	lsr_s	r2,r2,16
	ld_s	r3,[sp,28]		;15
	xor_s	r2,r2,r3
	st_s	r2,[sp,24]		;16
	ld_s	r2,[sp,24]		;15
	lsr_s	r2,r2,8
	ld_s	r3,[sp,24]		;15
	xor_s	r2,r2,r3
	st_s	r2,[sp,20]		;16
	ld_s	r2,[sp,20]		;15
	lsr_s	r2,r2,4
	ld_s	r3,[sp,20]		;15
	xor_s	r2,r2,r3
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,16]		;15
	bmsk_s	r2,r2,3
	mov_s	r3,27030	;13
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	mov_s	r0,r2	;4
	add_s	sp,sp,32   ;sp,sp,u7
	j_s	[blink]
	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	sub_s	sp,sp,20  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,16]		;15
	lsr_s	r2,r2,16
	ld_s	r3,[sp,16]		;15
	xor_s	r2,r2,r3
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,12]		;15
	lsr_s	r2,r2,8
	ld_s	r3,[sp,12]		;15
	xor_s	r2,r2,r3
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,8]		;15
	lsr_s	r2,r2,4
	ld_s	r3,[sp,8]		;15
	xor_s	r2,r2,r3
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,4]		;15
	bmsk_s	r2,r2,3
	mov_s	r3,27030	;13
	asr	r2,r3,r2
	bmsk_s	r2,r2,0
	mov_s	r0,r2	;4
	add_s	sp,sp,20   ;sp,sp,u7
	j_s	[blink]
	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	push_s	r13
	sub_s	sp,sp,48  ;sp,sp,u7
	std	r0,[sp]
	ldd	r2,[sp]
	std	r2,[sp,40]
	ld_s	r2,[sp,40]		;15
	ld_s	r3,[sp,44]		;15
	lsr.f	r12,r3
	rrc	r2,r2
	and	r3,r2,1431655765
	mov_s	r2,r12	;4
	and	r2,r2,1431655765
	ld_s	r13,[sp,40]		;15
	ld_s	r12,[sp,44]		;15
	sub.f	r3,r13,r3
	sbc	r2,r12,r2
	st_s	r3,[sp,32]		;16
	st_s	r2,[sp,36]		;16
	ld_s	r2,[sp,36]		;15
	asl	r3,r2,30
	ld_s	r2,[sp,32]		;15
	lsr_s	r2,r2,2
	or_s	r2,r2,r3
	ld_s	r3,[sp,36]		;15
	lsr_s	r3,r3,2
	and	r2,r2,858993459
	and	r13,r3,858993459
	ld_s	r3,[sp,32]		;15
	and	r3,r3,858993459
	ld_s	r12,[sp,36]		;15
	and	r12,r12,858993459
	add.f	r3,r2,r3
	adc	r2,r13,r12
	st_s	r3,[sp,24]		;16
	st_s	r2,[sp,28]		;16
	ld_s	r2,[sp,28]		;15
	asl	r3,r2,28
	ld_s	r2,[sp,24]		;15
	lsr_s	r2,r2,4
	or_s	r2,r2,r3
	ld_s	r3,[sp,28]		;15
	lsr	r12,r3,4
	ld_s	r13,[sp,24]		;15
	ld_s	r3,[sp,28]		;15
	add.f	r2,r2,r13
	adc	r3,r12,r3
	and	r2,r2,252645135
	st_s	r2,[sp,16]		;16
	mov_s	r2,r3	;4
	and	r2,r2,252645135
	st_s	r2,[sp,20]		;16
	ld_s	r2,[sp,16]		;15
	ld_s	r3,[sp,20]		;15
	lsr_s	r3,r3,0
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,12]		;15
	lsr_s	r2,r2,16
	ld_s	r3,[sp,12]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,8]		;15
	lsr	r3,r2,8
	ld_s	r2,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	bmsk_s	r2,r2,6
	mov_s	r0,r2	;4
	add_s	sp,sp,48   ;sp,sp,u7
	pop_s	r13
	j_s	[blink]
	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	sub_s	sp,sp,24  ;sp,sp,u7
	st_s	r0,[sp]		;16
	ld_s	r2,[sp]		;15
	st_s	r2,[sp,20]		;16
	ld_s	r2,[sp,20]		;15
	lsr_s	r2,r2
	and	r2,r2,1431655765
	ld_s	r3,[sp,20]		;15
	sub_s	r2,r3,r2
	st_s	r2,[sp,16]		;16
	ld_s	r2,[sp,16]		;15
	lsr_s	r2,r2,2
	and	r3,r2,858993459
	ld_s	r2,[sp,16]		;15
	and	r2,r2,858993459
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,12]		;16
	ld_s	r2,[sp,12]		;15
	lsr	r3,r2,4
	ld_s	r2,[sp,12]		;15
	add_s	r2,r2,r3   ;b,b,h
	and	r2,r2,252645135
	st_s	r2,[sp,8]		;16
	ld_s	r2,[sp,8]		;15
	lsr_s	r2,r2,16
	ld_s	r3,[sp,8]		;15
	add_s	r2,r2,r3   ;b,b,h
	st_s	r2,[sp,4]		;16
	ld_s	r2,[sp,4]		;15
	lsr	r3,r2,8
	ld_s	r2,[sp,4]		;15
	add_s	r2,r2,r3   ;b,b,h
	bmsk_s	r2,r2,5
	mov_s	r0,r2	;4
	add_s	sp,sp,24   ;sp,sp,u7
	j_s	[blink]
	.size	__popcountsi2, .-__popcountsi2
	.align 4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	push_s	blink
	sub_s	sp,sp,24  ;sp,sp,u7
	std	r0,[sp,4]
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2,31
	extb_s	r2,r2
	st_s	r2,[sp,12]		;16
	mov_s	r2,0	;3
	mov_s	r3,1072693248	;13
	std	r2,[sp,16]
	.align 2
.L989:
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L986
	ldd	r2,[sp,4]
	ldd	r0,[sp,16]
	bl	@__muldf3;1
	std	r0,[sp,16]
	.align 2
.L986:
	ld_s	r2,[sp]		;15
	div	r2,r2,2
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L994
	ldd	r2,[sp,4]
	ldd	r0,[sp,4]
	bl	@__muldf3;1
	std	r0,[sp,4]
	b_s	.L989
	.align 4
.L994:
	nop_s
	ld_s	r2,[sp,12]		;15
	tst_s	r2,r2
	beq_s	.L990
	ldd	r2,[sp,16]
	mov_s	r0,0	;3
	mov_s	r1,1072693248	;13
	bl	@__divdf3;1
	b_s	.L992
	.align 4
.L990:
	ldd	r0,[sp,16]
	.align 2
.L992:
	nop_s
	add_s	sp,sp,24   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__powidf2, .-__powidf2
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	st_s	r0,[sp,4]
	st_s	r1,[sp]		;16
	ld_s	r2,[sp]		;15
	lsr_s	r2,r2,31
	extb_s	r2,r2
	st_s	r2,[sp,8]		;16
	mov_s	r2,0x3f800000 ; 1.0e+0
	st_s	r2,[sp,12]
	.align 2
.L1000:
	ld_s	r2,[sp]		;15
	bmsk_s	r2,r2,0
	tst_s	r2,r2
	beq_s	.L997
	ld_s	r1,[sp,4]
	ld_s	r0,[sp,12]
	bl	@__mulsf3;1
	mov_s	r2,r0
	st_s	r2,[sp,12]
	.align 2
.L997:
	ld_s	r2,[sp]		;15
	div	r2,r2,2
	st_s	r2,[sp]		;16
	ld_s	r2,[sp]		;15
	tst_s	r2,r2
	beq_s	.L1005
	ld_s	r1,[sp,4]
	ld_s	r0,[sp,4]
	bl	@__mulsf3;1
	mov_s	r2,r0
	st_s	r2,[sp,4]
	b_s	.L1000
	.align 4
.L1005:
	nop_s
	ld_s	r2,[sp,8]		;15
	tst_s	r2,r2
	beq_s	.L1001
	ld_s	r1,[sp,12]
	mov_s	r0,0x3f800000 ; 1.0e+0
	bl	@__divsf3;1
	mov_s	r2,r0
	b_s	.L1003
	.align 4
.L1001:
	ld_s	r2,[sp,12]
	.align 2
.L1003:
	nop_s
	mov_s	r0,r2
	add_s	sp,sp,16   ;sp,sp,u7
	pop_s	blink
	j_s	[blink]
	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	sub_s	sp,sp,32  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp,8]
	std	r2,[sp,24]
	ldd	r2,[sp]
	std	r2,[sp,16]
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp,20]		;15
	cmp_s	r3,r2
	bhs_s	.L1008
	mov_s	r2,0	;3
	b_s	.L1013
	.align 4
.L1008:
	ld_s	r3,[sp,28]		;15
	ld_s	r2,[sp,20]		;15
	cmp_s	r3,r2
	bls_s	.L1010
	mov_s	r2,2	;3
	b_s	.L1013
	.align 4
.L1010:
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp,16]		;15
	cmp_s	r3,r2
	bhs_s	.L1011
	mov_s	r2,0	;3
	b_s	.L1013
	.align 4
.L1011:
	ld_s	r3,[sp,24]		;15
	ld_s	r2,[sp,16]		;15
	cmp_s	r3,r2
	bls_s	.L1012
	mov_s	r2,2	;3
	b_s	.L1013
	.align 4
.L1012:
	mov_s	r2,1	;3
	.align 2
.L1013:
	mov_s	r0,r2	;4
	add_s	sp,sp,32   ;sp,sp,u7
	j_s	[blink]
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	push_s	blink
	sub_s	sp,sp,16  ;sp,sp,u7
	std	r0,[sp,8]
	std	r2,[sp]
	ldd	r2,[sp]
	ldd	r0,[sp,8]
	bl	@__ucmpdi2;1
	mov_s	r2,r0	;4
	add_s	r2,r2,-1   ;h,h,s3
	mov_s	r0,r2	;4
	add_s	sp,sp,16   ;sp,sp,u7
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
