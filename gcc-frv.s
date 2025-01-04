	.file	"mini-libc.c"
	.text
	.p2align 4
	.globl memmove
	.type	memmove, @function
memmove:
	cmp gr8,gr9,icc0
	bls icc0,2,.L2
	cmpi gr10, #0, icc1
	beq icc1,0,.L3
	addi gr9,#-1,gr41
	addi gr8,#-1,gr42
.L4:
	ldsb @(gr41,gr10),gr43
	stb gr43, @(gr42,gr10)
	addicc gr10, #-1, gr10, icc2
	bne icc2,2,.L4
.L3:
	ret
.L2:
	cmp gr8,gr9,icc1
	beq icc1,0,.L3
	cmpi gr10, #0, icc2
	beq icc2,0,.L3
	addi gr10,#-1,gr4
	cmpi gr4,#6,icc0
	bls icc0,0,.L12
	or gr9, gr8, gr5
	andicc gr5, #3, gr0, icc1
	setlos #1, gr6
	ckeq icc1, cc4
	cmov gr0, gr6, cc4, 0
	andi gr6,#0xff,gr7
	cmpi gr7, #0, icc2
	beq icc2,0,.L12
	addi gr9,#1,gr11
	sub gr8,gr11,gr12
	cmpi gr12,#2,icc0
	setlos #1, gr13
	ckhi icc0, cc5
	cmov gr0, gr13, cc5, 0
	andi gr13,#0xff,gr14
	cmpi gr14, #0, icc1
	beq icc1,0,.L12
	andi gr10, #-4, gr32
	setlos #0, gr34
.L6:
	ld @(gr9,gr34), gr33
	st gr33, @(gr8,gr34)
	addi gr34,#4,gr34
	cmp gr34,gr32,icc2
	bne icc2,2,.L6
	cmp gr10,gr34,icc0
	add gr9,gr34,gr35
	add gr8,gr34,gr36
	sub gr10,gr34,gr10
	beq icc0,0,.L3
	ldsb @(gr9,gr34),gr9
	cmpi gr10,#1,icc1
	stb gr9, @(gr8,gr34)
	beq icc1,0,.L3
	ldsbi @(gr35,1),gr37
	cmpi gr10,#2,icc2
	stbi gr37, @(gr36,1)
	beq icc2,0,.L3
	ldsbi @(gr35,2),gr38
	stbi gr38, @(gr36,2)
	ret
.L12:
	setlos #0, gr40
.L34:
	ldsb @(gr9,gr40),gr39
	stb gr39, @(gr8,gr40)
	addi gr40,#1,gr40
	cmp gr10,gr40,icc0
	bne icc0,2,.L34
	ret
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	cmpi gr11, #0, icc0
	andi gr10, #255, gr5
	bne icc0,2,.L37
	bra .L39
.L40:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	beq icc1,0,.L39
.L37:
	ldub @(gr9,gr0),gr4
	addicc gr11, #-1, gr11, icc1
	stb gr4, @(gr8,gr0)
	cmp gr4,gr5,icc2
	bne icc2,2,.L40
	addi gr8,#1,gr8
	ret
.L39:
	setlos #0, gr8
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	cmpi gr10, #0, icc0
	andi gr9, #255, gr5
	bne icc0,2,.L48
	bra .L51
.L50:
	addi gr8,#1,gr8
	beq icc1,0,.L51
.L48:
	ldub @(gr8,gr0),gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc2
	bne icc2,2,.L50
	ret
.L51:
	setlos #0, gr8
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L56
	bra .L60
.L58:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	beq icc1,0,.L60
.L56:
	ldub @(gr8,gr0),gr4
	ldub @(gr9,gr0),gr5
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc2
	beq icc2,2,.L58
	sub gr4,gr5,gr8
	ret
.L60:
	setlos #0, gr8
	ret
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	beq icc0,0,.L67
	sethi #gotofffuncdeschi(memcpy), gr6
	setlo #gotofffuncdesclo(memcpy), gr6
	ldd @(gr6,gr15), gr14
	calll @(gr14,gr0)
.L67:
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr7,gr0)
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	addi gr10,#-1,gr4
	andi gr9, #255, gr7
	addi gr8,#-1,gr6
	add gr8,gr4,gr9
	bra .L72
.L74:
	ldub @(gr8,gr0),gr5
	addi gr9,#-1,gr9
	cmp gr5,gr7,icc1
	beq icc1,0,.L71
.L72:
	cmp gr9,gr6,icc0
	mov gr9, gr8
	bne icc0,2,.L74
	setlos #0, gr8
.L71:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	beq icc0,0,.L78
	sethi #gotofffuncdeschi(memset), gr6
	setlo #gotofffuncdesclo(memset), gr6
	ldd @(gr6,gr15), gr14
	andi gr9, #255, gr9
	calll @(gr14,gr0)
.L78:
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr7,gr0)
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L80
.L81:
	ldsbi @(gr9,1),gr5
	addi gr8,#1,gr8
	stb gr5, @(gr8,gr0)
	cmpi gr5, #0, icc1
	addi gr9,#1,gr9
	bne icc1,2,.L81
.L80:
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	ldsb @(gr8,gr0),gr6
	andi gr9, #255, gr5
	cmpi gr6, #0, icc0
	bne icc0,2,.L87
	bra .L86
.L89:
	ldsbi @(gr8,1),gr6
	addi gr8,#1,gr8
	cmpi gr6, #0, icc2
	beq icc2,0,.L86
.L87:
	andi gr6,#0xff,gr4
	cmp gr4,gr5,icc1
	bne icc1,2,.L89
.L86:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L96:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc1
	cmpi gr4, #0, icc0
	beq icc1,0,.L95
	addi gr8,#1,gr8
	bne icc0,2,.L96
	setlos #0, gr8
.L95:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr4
	ldsb @(gr9,gr0),gr6
	cmp gr4,gr6,icc0
	bne icc0,0,.L104
	setlos #1, gr5
	addi gr9,#-1,gr7
	bra .L99
.L101:
	ldsb @(gr8,gr5),gr4
	addi gr5,#1,gr5
	ldsb @(gr7,gr5),gr6
	cmp gr4,gr6,icc2
	bne icc2,0,.L104
.L99:
	cmpi gr4, #0, icc1
	bne icc1,2,.L101
	andi gr6,#0xff,gr9
	setlos #0, gr8
	sub gr8,gr9,gr8
	ret
.L104:
	andi gr4,#0xff,gr8
	andi gr6,#0xff,gr9
	sub gr8,gr9,gr8
	ret
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L108
	mov gr8, gr5
.L107:
	ldsbi @(gr5,1),gr6
	addi gr5,#1,gr5
	cmpi gr6, #0, icc1
	bne icc1,2,.L107
	sub gr5,gr8,gr8
	ret
.L108:
	setlos #0, gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L118
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc1
	beq icc1,0,.L120
	addi gr10,#-1,gr6
	add gr8,gr6,gr7
	bra .L114
.L122:
	beq icc1,0,.L113
	bne icc2,0,.L113
	ldub @(gr8,gr0),gr4
	addi gr9,#1,gr10
	cmpi gr4, #0, icc1
	beq icc1,0,.L121
	mov gr10, gr9
.L114:
	ldub @(gr9,gr0),gr5
	cmp gr8,gr7,icc1
	cmpi gr5, #0, icc0
	addi gr8,#1,gr8
	cmp gr5,gr4,icc2
	bne icc0,2,.L122
.L113:
	sub gr4,gr5,gr8
.L110:
	ret
.L118:
	setlos #0, gr8
	ret
.L121:
	ldubi @(gr9,1),gr5
	sub gr4,gr5,gr8
	bra .L110
.L120:
	ldub @(gr9,gr0),gr5
	sub gr4,gr5,gr8
	bra .L110
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L123
	andi gr10, #-2, gr6
	add gr8,gr6,gr7
.L125:
	ldsbi @(gr8,1),gr5
	ldsb @(gr8,gr0),gr4
	addi gr8,#2,gr8
	stb gr5, @(gr9,gr0)
	stbi gr4, @(gr9,1)
	cmp gr8,gr7,icc1
	addi gr9,#2,gr9
	bne icc1,2,.L125
.L123:
	ret
	.size	swab, .-swab
	.p2align 4
	.globl isalpha
	.type	isalpha, @function
isalpha:
	ori gr8, #32, gr8
	addi gr8,#-97,gr4
	cmpi gr4,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	isalpha, .-isalpha
	.p2align 4
	.globl isascii
	.type	isascii, @function
isascii:
	cmpi gr8,#127,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	isascii, .-isascii
	.p2align 4
	.globl isblank
	.type	isblank, @function
isblank:
	cmpi gr8,#32,icc0
	beq icc0,0,.L131
	cmpi gr8,#9,icc1
	ckeq icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L131:
	setlos #1, gr8
	ret
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L134
	cmpi gr8,#127,icc1
	ckeq icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L134:
	setlos #1, gr8
	ret
	.size	iscntrl, .-iscntrl
	.p2align 4
	.globl isdigit
	.type	isdigit, @function
isdigit:
	addi gr8,#-48,gr8
	cmpi gr8,#9,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	isdigit, .-isdigit
	.p2align 4
	.globl isgraph
	.type	isgraph, @function
isgraph:
	addi gr8,#-33,gr8
	cmpi gr8,#93,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	isgraph, .-isgraph
	.p2align 4
	.globl islower
	.type	islower, @function
islower:
	addi gr8,#-97,gr8
	cmpi gr8,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	islower, .-islower
	.p2align 4
	.globl isprint
	.type	isprint, @function
isprint:
	addi gr8,#-32,gr8
	cmpi gr8,#94,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	isprint, .-isprint
	.p2align 4
	.globl isspace
	.type	isspace, @function
isspace:
	cmpi gr8,#32,icc0
	beq icc0,0,.L141
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc1
	ckls icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L141:
	setlos #1, gr8
	ret
	.size	isspace, .-isspace
	.p2align 4
	.globl isupper
	.type	isupper, @function
isupper:
	addi gr8,#-65,gr8
	cmpi gr8,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	isupper, .-isupper
	.p2align 4
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L147
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc1
	bhi icc1,2,.L148
.L147:
	setlos #1, gr8
	ret
.L148:
	setlos #-8232, gr5
	add gr8,gr5,gr6
	cmpi gr6,#1,icc2
	bls icc2,0,.L147
	sethi #hi(#-65529), gr7
	setlo #lo(#-65529), gr7
	add gr8,gr7,gr8
	cmpi gr8,#2,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	iswcntrl, .-iswcntrl
	.p2align 4
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	addi gr8,#-48,gr8
	cmpi gr8,#9,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
	.size	iswdigit, .-iswdigit
	.p2align 4
	.globl iswprint
	.type	iswprint, @function
iswprint:
	cmpi gr8,#254,icc0
	bls icc0,0,.L157
	setlos #8231, gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L155
	setlos #-8234, gr5
	sethi #hi(#47061), gr7
	add gr8,gr5,gr6
	setlo #lo(#47061), gr7
	cmp gr6,gr7,icc2
	bls icc2,0,.L155
	sethi #hi(#-57344), gr9
	setlo #lo(#-57344), gr9
	add gr8,gr9,gr10
	setlos #8184, gr11
	cmp gr10,gr11,icc0
	bls icc0,0,.L155
	sethi #hi(#-65532), gr12
	setlo #lo(#-65532), gr12
	sethi #hi(#1048579), gr14
	add gr8,gr12,gr13
	setlo #lo(#1048579), gr14
	cmp gr13,gr14,icc1
	bhi icc1,0,.L156
	sethi #hi(#65534), gr32
	setlo #lo(#65534), gr32
	and gr8, gr32, gr8
	cmp gr8,gr32,icc2
	ckne icc2, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L155:
	setlos #1, gr8
	ret
.L157:
	addi gr8,#1,gr33
	andi gr33, #127, gr34
	cmpi gr34,#32,icc0
	ckhi icc0, cc5
	setlos #1, gr8
	cmov gr0, gr8, cc5, 0
	ret
.L156:
	setlos #0, gr8
	ret
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L160
	ori gr8, #32, gr8
	addi gr8,#-97,gr5
	cmpi gr5,#5,icc1
	ckls icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L160:
	setlos #1, gr8
	ret
	.size	iswxdigit, .-iswxdigit
	.p2align 4
	.globl toascii
	.type	toascii, @function
toascii:
	andi gr8, #127, gr8
	ret
	.size	toascii, .-toascii
	.p2align 4
	.globl fdim
	.type	fdim, @function
fdim:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr20
	mov gr9, gr21
	add gr4,gr19,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L165
	ldd @(gr18,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L166
	sethi #gotofffuncdeschi(__gtdf2), gr6
	setlo #gotofffuncdesclo(__gtdf2), gr6
	ldd @(gr6,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc2
	bgt icc2,2,.L170
	setlos #0, gr8
	setlos #0, gr9
.L162:
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr10,gr0)
.L170:
	sethi #gotofffuncdeschi(__subd), gr7
	setlo #gotofffuncdesclo(__subd), gr7
	ldd @(gr7,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	ldi @(fp,8), gr10
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr10,gr0)
.L165:
	mov gr20, gr8
	mov gr21, gr9
	bra .L162
.L166:
	mov gr22, gr8
	mov gr23, gr9
	bra .L162
	.size	fdim, .-fdim
	.p2align 4
	.globl fdimf
	.type	fdimf, @function
fdimf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	stdi gr18, @(sp,0)
	sti gr20, @(sp,8)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	ldd @(gr4,gr15), gr6
	add gr4,gr15,gr18
	mov gr9, gr20
	mov gr6, gr14
	mov gr8, gr9
	mov gr7, gr15
	mov gr8, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L174
	ldd @(gr18,gr0), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L175
	movgf gr19, fr0
	movgf gr20, fr1
	fcmps fr0,fr1,fcc0
	fbgt fcc0,2,.L179
	setlos #0, gr8
.L171:
	lddi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr6,gr0)
.L179:
	fsubs fr0,fr1,fr2
	movfg fr2, gr8
	lddi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr6,gr0)
.L174:
	mov gr19, gr8
	bra .L171
.L175:
	mov gr20, gr8
	bra .L171
	.size	fdimf, .-fdimf
	.p2align 4
	.globl fmax
	.type	fmax, @function
fmax:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr22
	mov gr9, gr23
	add gr4,gr19,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L188
	ldd @(gr18,gr0), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L187
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr22, gr7
	and gr6, gr20, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L189
	sethi #gotofffuncdeschi(__ltdf2), gr9
	setlo #gotofffuncdesclo(__ltdf2), gr9
	ldd @(gr9,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr10
	andi gr10,#0xff,gr11
	cmpi gr11, #0, icc0
	bne icc0,2,.L188
.L187:
	mov gr22, gr8
	mov gr23, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
.L189:
	cmpi gr7, #0, icc1
	beq icc1,2,.L187
.L188:
	mov gr20, gr8
	mov gr21, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
	.size	fmax, .-fmax
	.p2align 4
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	stdi gr18, @(sp,0)
	sti gr20, @(sp,8)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	ldd @(gr4,gr15), gr6
	add gr4,gr15,gr18
	mov gr9, gr19
	mov gr6, gr14
	mov gr8, gr9
	mov gr7, gr15
	mov gr8, gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L195
	ldd @(gr18,gr0), gr14
	mov gr19, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L194
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr20, gr7
	and gr6, gr19, gr9
	cmp gr7,gr9,icc2
	bne icc2,2,.L196
	movgf gr20, fr0
	movgf gr19, fr1
	ldi @(fp,8), gr10
	fcmps fr0,fr1,fcc0
	fcklt fcc0, cc0
	cmov gr19, gr8, cc0, 1
	cmov gr20, gr8, cc0, 0
	lddi @(sp,0), gr18
	ldi @(sp,8), gr20
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr10,gr0)
.L196:
	cmpi gr7, #0, icc0
	beq icc0,2,.L194
.L195:
	mov gr19, gr8
	ldi @(sp,8), gr20
	lddi @(sp,0), gr18
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr10,gr0)
.L194:
	mov gr20, gr8
	lddi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr10,gr0)
	.size	fmaxf, .-fmaxf
	.p2align 4
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr22
	mov gr9, gr23
	add gr4,gr19,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L205
	ldd @(gr18,gr0), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L204
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr22, gr7
	and gr6, gr20, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L206
	sethi #gotofffuncdeschi(__ltdf2), gr9
	setlo #gotofffuncdesclo(__ltdf2), gr9
	ldd @(gr9,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr10
	andi gr10,#0xff,gr11
	cmpi gr11, #0, icc0
	bne icc0,2,.L205
.L204:
	mov gr22, gr8
	mov gr23, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
.L206:
	cmpi gr7, #0, icc1
	beq icc1,2,.L204
.L205:
	mov gr20, gr8
	mov gr21, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
	.size	fmaxl, .-fmaxl
	.p2align 4
	.globl fmin
	.type	fmin, @function
fmin:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr20
	mov gr9, gr21
	add gr4,gr19,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L213
	ldd @(gr18,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L215
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr20, gr7
	and gr6, gr22, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L216
	sethi #gotofffuncdeschi(__ltdf2), gr9
	setlo #gotofffuncdesclo(__ltdf2), gr9
	ldd @(gr9,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr10
	andi gr10,#0xff,gr11
	cmpi gr11, #0, icc0
	beq icc0,2,.L213
.L215:
	mov gr20, gr8
	mov gr21, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
.L216:
	cmpi gr7, #0, icc1
	bne icc1,2,.L215
.L213:
	mov gr22, gr8
	mov gr23, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
	.size	fmin, .-fmin
	.p2align 4
	.globl fminf
	.type	fminf, @function
fminf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	stdi gr18, @(sp,0)
	sti gr20, @(sp,8)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	ldd @(gr4,gr15), gr6
	add gr4,gr15,gr18
	mov gr9, gr20
	mov gr6, gr14
	mov gr8, gr9
	mov gr7, gr15
	mov gr8, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L220
	ldd @(gr18,gr0), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L222
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr19, gr7
	and gr6, gr20, gr9
	cmp gr7,gr9,icc2
	bne icc2,2,.L223
	movgf gr19, fr0
	movgf gr20, fr1
	ldi @(fp,8), gr10
	fcmps fr0,fr1,fcc0
	fcklt fcc0, cc0
	cmov gr19, gr8, cc0, 1
	cmov gr20, gr8, cc0, 0
	lddi @(sp,0), gr18
	ldi @(sp,8), gr20
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr10,gr0)
.L223:
	cmpi gr7, #0, icc0
	beq icc0,2,.L220
.L222:
	mov gr19, gr8
	ldi @(sp,8), gr20
	lddi @(sp,0), gr18
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr10,gr0)
.L220:
	mov gr20, gr8
	lddi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr10,gr0)
	.size	fminf, .-fminf
	.p2align 4
	.globl fminl
	.type	fminl, @function
fminl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr20
	mov gr9, gr21
	add gr4,gr19,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L230
	ldd @(gr18,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L232
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr20, gr7
	and gr6, gr22, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L233
	sethi #gotofffuncdeschi(__ltdf2), gr9
	setlo #gotofffuncdesclo(__ltdf2), gr9
	ldd @(gr9,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr10
	andi gr10,#0xff,gr11
	cmpi gr11, #0, icc0
	beq icc0,2,.L230
.L232:
	mov gr20, gr8
	mov gr21, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
.L233:
	cmpi gr7, #0, icc1
	bne icc1,2,.L232
.L230:
	mov gr22, gr8
	mov gr23, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
	.size	fminl, .-fminl
	.p2align 4
	.globl l64a
	.type	l64a, @function
l64a:
	cmpi gr8, #0, icc0
	beq icc0,0,.L237
	sethi #gotoffhi(s.0), gr7
	ldi @(gr15,#got12(_gp)), gr5
	sethi #gprelhi(digits), gr6
	mov gr7, gr10
	setlo #gotofflo(s.0), gr10
	setlo #gprello(digits), gr6
	add gr10,gr15,gr9
	add gr6,gr5,gr11
.L236:
	andi gr8, #63, gr12
	ldsb @(gr11,gr12),gr13
	srlicc gr8, #6, gr8, icc1
	stb gr13, @(gr9,gr0)
	addi gr9,#1,gr9
	bne icc1,2,.L236
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr9,gr0)
	ret
.L237:
	sethi #gotoffhi(s.0), gr7
	mov gr7, gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr9
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr9,gr0)
	ret
	.size	l64a, .-l64a
	.p2align 4
	.globl srand
	.type	srand, @function
srand:
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr15,gr5
	addi gr8,#-1,gr8
	sti gr8, @(gr5,4)
	st gr0, @(gr4,gr15)
	ret
	.size	srand, .-srand
	.p2align 4
	.globl rand
	.type	rand, @function
rand:
	addi sp,#-24,sp
	sti gr18, @(sp,0)
	sethi #gotoffhi(seed), gr18
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	setlo #gotofflo(seed), gr18
	sethi #gotofffuncdeschi(__mulll), gr4
	sti gr5, @(fp,8)
	add gr18,gr15,gr18
	setlo #gotofffuncdesclo(__mulll), gr4
	ldd @(gr4,gr15), gr14
	ld @(gr18,gr0), gr8
	ldi @(gr18,4), gr9
	sethi #hi(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1481765933), gr10
	setlo #lo(#1284865837), gr11
	calll @(gr14,gr0)
	addicc gr9,#1,gr9,icc0
	addxi gr8,#0,gr8,icc0
	st gr8, @(gr18,gr0)
	sti gr9, @(gr18,4)
	ldi @(sp,0), gr18
	ldi @(fp,8), gr7
	srli gr8, #1, gr6
	ld @(fp,gr0), fp
	mov gr6, gr8
	addi sp,#24,sp
	jmpl @(gr7,gr0)
	.size	rand, .-rand
	.p2align 4
	.globl insque
	.type	insque, @function
insque:
	cmpi gr9, #0, icc0
	ckeq icc0, cc5
	cld @(gr9,gr0), gr4, cc5, 0
	setlos #4, gr6
	cst gr9, @(gr8,gr6), cc5, 0
	cst gr4, @(gr8,gr0), cc5, 0
	cst gr8, @(gr9,gr0), cc5, 0
	cld @(gr8,gr0), gr4, cc5, 0
	cst gr0, @(gr8,gr6), cc5, 1
	ccmp gr4, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	cst gr0, @(gr8,gr0), cc5, 1
	setlos #4, gr5
	andncr cc5, cc4, cc0
	cst gr8, @(gr4,gr5), cc0, 1
	ret
	.size	insque, .-insque
	.p2align 4
	.globl remque
	.type	remque, @function
remque:
	ld @(gr8,gr0), gr4
	setlos #4, gr6
	cmpi gr4, #0, icc0
	ckne icc0, cc4
	cld @(gr8,gr6), gr5, cc4, 1
	cst gr5, @(gr4,gr6), cc4, 1
	ldi @(gr8,4), gr7
	cmpi gr7, #0, icc1
	ckne icc1, cc5
	cst gr4, @(gr7,gr0), cc5, 1
	ret
	.size	remque, .-remque
	.p2align 4
	.globl lsearch
	.type	lsearch, @function
lsearch:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	movsg lr, gr5
	addi sp,#40,fp
	stdi gr22, @(sp,16)
	stdi gr26, @(sp,32)
	stdi gr20, @(sp,8)
	stdi gr24, @(sp,24)
	sti gr5, @(fp,8)
	stdi gr18, @(sp,0)
	ld @(gr10,gr0), gr20
	mov gr10, gr25
	cmpi gr20, #0, icc0
	mov gr15, gr27
	mov gr8, gr22
	mov gr9, gr26
	mov gr11, gr21
	mov gr12, gr23
	beq icc0,0,.L257
	mov gr9, gr18
	setlos #0, gr19
	bra .L259
.L271:
	add gr18,gr21,gr18
	beq icc1,0,.L257
.L259:
	ldd @(gr23,gr0), gr14
	mov gr18, gr9
	mov gr22, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc2
	mov gr18, gr24
	cmp gr20,gr19,icc1
	bne icc2,2,.L271
.L256:
	mov gr24, gr8
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	lddi @(sp,24), gr24
	lddi @(sp,32), gr26
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr7,gr0)
.L257:
	addi gr20,#1,gr6
	umul gr21,gr20,gr4
	st gr6, @(gr25,gr0)
	cmpi gr21, #0, icc0
	add gr26,gr5,gr24
	beq icc0,0,.L256
	sethi #gotofffuncdeschi(memmove), gr4
	setlo #gotofffuncdesclo(memmove), gr4
	ldd @(gr4,gr27), gr14
	mov gr21, gr10
	mov gr22, gr9
	mov gr24, gr8
	calll @(gr14,gr0)
	bra .L256
	.size	lsearch, .-lsearch
	.p2align 4
	.globl lfind
	.type	lfind, @function
lfind:
	addi sp,#-48,sp
	stdi gr22, @(sp,16)
	ld @(gr10,gr0), gr23
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	stdi gr20, @(sp,8)
	sti gr5, @(fp,8)
	stdi gr18, @(sp,0)
	sti gr24, @(sp,24)
	cmpi gr23, #0, icc0
	mov gr8, gr20
	mov gr11, gr22
	mov gr12, gr21
	beq icc0,0,.L273
	mov gr9, gr18
	setlos #0, gr19
	bra .L275
.L283:
	add gr18,gr22,gr18
	beq icc1,0,.L273
.L275:
	ldd @(gr21,gr0), gr14
	mov gr18, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc2
	mov gr18, gr24
	cmp gr23,gr19,icc1
	bne icc2,2,.L283
.L272:
	mov gr24, gr8
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(sp,24), gr24
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr4,gr0)
.L273:
	setlos #0, gr24
	bra .L272
	.size	lfind, .-lfind
	.p2align 4
	.globl abs
	.type	abs, @function
abs:
	cmpi gr8,#0,icc0
	cklt icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
	.size	abs, .-abs
	.p2align 4
	.globl atoi
	.type	atoi, @function
atoi:
	mov gr8, gr5
.L292:
	ldsb @(gr5,gr0),gr4
	addi gr4,#-9,gr6
	cmpi gr4,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L286
	bls icc1,2,.L286
	cmpi gr4,#43,icc2
	beq icc2,0,.L287
	cmpi gr4,#45,icc1
	bne icc1,2,.L307
	ldsbi @(gr5,1),gr8
	addi gr5,#1,gr5
	addi gr8,#-48,gr12
	cmpi gr12,#9,icc2
	bhi icc2,0,.L297
	setlos #1, gr11
.L290:
	setlos #0, gr8
.L294:
	ldsbi @(gr5,1),gr10
	smuli gr8,#10,gr8
	mov gr12, gr4
	sub gr9,gr12,gr8
	addi gr10,#-48,gr12
	cmpi gr12,#9,icc1
	addi gr5,#1,gr5
	bls icc1,2,.L294
	cmpi gr11, #0, icc2
	bne icc2,2,.L285
	sub gr4,gr9,gr8
.L285:
	ret
.L286:
	addi gr5,#1,gr5
	bra .L292
.L307:
	addi gr4,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L297
.L298:
	setlos #0, gr11
	bra .L290
.L287:
	ldsbi @(gr5,1),gr7
	addi gr5,#1,gr5
	addi gr7,#-48,gr12
	cmpi gr12,#9,icc0
	bls icc0,2,.L298
.L297:
	setlos #0, gr8
	ret
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	mov gr8, gr5
.L313:
	ldsb @(gr5,gr0),gr4
	addi gr4,#-9,gr6
	cmpi gr4,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L309
	bls icc1,2,.L309
	cmpi gr4,#43,icc2
	beq icc2,0,.L310
	cmpi gr4,#45,icc1
	beq icc1,2,.L311
	addi gr4,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L320
	setlos #0, gr11
.L314:
	setlos #0, gr8
.L317:
	ldsbi @(gr5,1),gr10
	smuli gr8,#10,gr8
	mov gr12, gr4
	sub gr9,gr12,gr8
	addi gr10,#-48,gr12
	cmpi gr12,#9,icc1
	addi gr5,#1,gr5
	bls icc1,2,.L317
	cmpi gr11, #0, icc2
	bne icc2,2,.L308
	sub gr4,gr9,gr8
.L308:
	ret
.L309:
	addi gr5,#1,gr5
	bra .L313
.L311:
	ldsbi @(gr5,1),gr8
	setlos #1, gr11
	addi gr8,#-48,gr12
	cmpi gr12,#9,icc2
	addi gr5,#1,gr5
	bls icc2,2,.L314
.L320:
	setlos #0, gr8
	ret
.L310:
	ldsbi @(gr5,1),gr7
	addi gr5,#1,gr5
	addi gr7,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L320
	setlos #0, gr11
	bra .L314
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	mov gr8, gr7
.L337:
	ldsb @(gr7,gr0),gr6
	addi gr6,#-9,gr4
	cmpi gr6,#32,icc0
	cmpi gr4,#4,icc1
	beq icc0,0,.L331
	bls icc1,2,.L331
	cmpi gr6,#43,icc2
	beq icc2,0,.L332
	cmpi gr6,#45,icc1
	bne icc1,2,.L352
	ldsbi @(gr7,1),gr8
	addi gr7,#1,gr7
	addi gr8,#-48,gr33
	cmpi gr33,#9,icc2
	bhi icc2,0,.L342
	setlos #1, gr32
.L335:
	setlos #0, gr8
	setlos #0, gr9
.L339:
	srli gr9, #30, gr11
	slli gr8,#2,gr10
	slli gr9,#2,gr13
	addcc gr13,gr9,gr34,icc1
	or gr11, gr10, gr12
	ldsbi @(gr7,1),gr9
	addx gr12,gr8,gr14,icc1
	mov gr33, gr35
	srai gr33, #31, gr37
	srli gr34, #31, gr15
	addi gr9,#-48,gr33
	slli gr14,#1,gr36
	slli gr34,#1,gr5
	or gr15, gr36, gr38
	subcc gr5,gr35,gr9,icc0
	cmpi gr33,#9,icc2
	addi gr7,#1,gr7
	subx gr38,gr37,gr8,icc0
	bls icc2,2,.L339
	cmpi gr32, #0, icc1
	bne icc1,2,.L330
	subcc gr35,gr5,gr9,icc2
	subx gr37,gr38,gr8,icc2
.L330:
	ret
.L331:
	addi gr7,#1,gr7
	bra .L337
.L352:
	addi gr6,#-48,gr33
	cmpi gr33,#9,icc0
	bhi icc0,0,.L342
.L343:
	setlos #0, gr32
	bra .L335
.L332:
	ldsbi @(gr7,1),gr5
	addi gr7,#1,gr7
	addi gr5,#-48,gr33
	cmpi gr33,#9,icc0
	bls icc0,2,.L343
.L342:
	setlos #0, gr8
	setlos #0, gr9
	ret
	.size	atoll, .-atoll
	.p2align 4
	.globl bsearch
	.type	bsearch, @function
bsearch:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	stdi gr22, @(sp,16)
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	sti gr24, @(sp,24)
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	mov gr10, gr18
	mov gr8, gr23
	mov gr9, gr21
	mov gr11, gr22
	mov gr12, gr24
	bne icc0,2,.L357
	bra .L354
.L363:
	beq icc1,0,.L353
	sub gr18,gr19,gr18
	cmpi gr18, #0, icc2
	add gr20,gr22,gr21
	beq icc2,0,.L354
.L357:
	srli gr18, #1, gr19
	umul gr19,gr22,gr4
	add gr21,gr5,gr20
	ldd @(gr24,gr0), gr14
	mov gr20, gr9
	mov gr23, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	addi gr18,#-1,gr18
	bp icc1,2,.L363
	mov gr19, gr18
	cmpi gr18, #0, icc2
	bne icc2,2,.L357
.L354:
	setlos #0, gr20
.L353:
	mov gr20, gr8
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(sp,24), gr24
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr4,gr0)
	.size	bsearch, .-bsearch
	.p2align 4
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	stdi gr22, @(sp,16)
	stdi gr24, @(sp,24)
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	mov gr10, gr18
	mov gr8, gr23
	mov gr9, gr21
	mov gr11, gr22
	mov gr12, gr24
	mov gr13, gr25
	beq icc0,0,.L369
.L377:
	srai gr18, #1, gr19
	umul gr19,gr22,gr4
	add gr21,gr5,gr20
	ldd @(gr24,gr0), gr14
	mov gr25, gr10
	mov gr20, gr9
	mov gr23, gr8
	calll @(gr14,gr0)
	addi gr18,#-1,gr18
	cmpi gr8, #0, icc0
	cmpi gr8,#0,icc1
	sraicc gr18, #1, gr18, icc2
	beq icc0,0,.L364
	cmpi gr19, #0, icc0
	ble icc1,0,.L367
	add gr20,gr22,gr21
	bne icc2,2,.L377
.L369:
	setlos #0, gr20
.L364:
	mov gr20, gr8
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	lddi @(sp,24), gr24
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr4,gr0)
.L367:
	beq icc0,0,.L369
	mov gr19, gr18
	bra .L377
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl div
	.type	div, @function
div:
	addi sp,#-16,sp
	movsg lr, gr5
	sdiv gr8,gr9,gr6
	sti gr5, @(sp,8)
	smul gr6,gr9,gr4
	sti gr3, @(sp,4)
	sub gr8,gr5,gr8
	sti gr8, @(gr3,4)
	st gr6, @(gr3,gr0)
	ldi @(sp,8), gr7
	mov gr3, gr8
	addi sp,#16,sp
	jmpl @(gr7,gr0)
	.size	div, .-div
	.p2align 4
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L383
	ret
.L383:
	subcc gr0,gr9,gr9,icc1
	subx gr0,gr8,gr8,icc1
	ret
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__divll), gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	sti gr3, @(fp,4)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__divll), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr3, gr21
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__modll), gr6
	st gr8, @(gr21,gr0)
	sti gr9, @(gr21,4)
	setlo #gotofffuncdesclo(__modll), gr6
	ldd @(gr6,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	sti gr8, @(gr21,8)
	sti gr9, @(gr21,12)
	mov gr21, gr8
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr7,gr0)
	.size	imaxdiv, .-imaxdiv
	.p2align 4
	.globl labs
	.type	labs, @function
labs:
	cmpi gr8,#0,icc0
	cklt icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
	.size	labs, .-labs
	.p2align 4
	.globl ldiv
	.type	ldiv, @function
ldiv:
	addi sp,#-16,sp
	movsg lr, gr5
	sdiv gr8,gr9,gr6
	sti gr5, @(sp,8)
	smul gr6,gr9,gr4
	sti gr3, @(sp,4)
	sub gr8,gr5,gr8
	sti gr8, @(gr3,4)
	st gr6, @(gr3,gr0)
	ldi @(sp,8), gr7
	mov gr3, gr8
	addi sp,#16,sp
	jmpl @(gr7,gr0)
	.size	ldiv, .-ldiv
	.p2align 4
	.globl llabs
	.type	llabs, @function
llabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L390
	ret
.L390:
	subcc gr0,gr9,gr9,icc1
	subx gr0,gr8,gr8,icc1
	ret
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__divll), gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	sti gr3, @(fp,4)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__divll), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr3, gr21
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__modll), gr6
	st gr8, @(gr21,gr0)
	sti gr9, @(gr21,4)
	setlo #gotofffuncdesclo(__modll), gr6
	ldd @(gr6,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	sti gr8, @(gr21,8)
	sti gr9, @(gr21,12)
	mov gr21, gr8
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr7,gr0)
	.size	lldiv, .-lldiv
	.p2align 4
	.globl wcschr
	.type	wcschr, @function
wcschr:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L393
	bra .L396
.L395:
	ldi @(gr8,4), gr4
	addi gr8,#4,gr8
	cmpi gr4, #0, icc2
	beq icc2,0,.L396
.L393:
	cmp gr9,gr4,icc1
	bne icc1,2,.L395
	ret
.L396:
	setlos #0, gr8
	ret
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L402
	setlos #4, gr4
	addi gr9,#-4,gr7
	bra .L401
.L403:
	ld @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc2
	bne icc2,0,.L402
.L401:
	cmpi gr5, #0, icc1
	bne icc1,2,.L403
.L402:
	cmp gr5,gr6,icc0
	ckge icc0, cc5
	setlos #1, gr9
	cckgt icc0, cc4, cc5, 1
	cmov gr9, gr8, cc5, 1
	andcr cc5, cc4, cc0
	setlos #-1, gr10
	cmov gr0, gr8, cc0, 0
	cmov gr10, gr8, cc5, 0
	ret
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr5
.L408:
	ld @(gr9,gr5), gr4
	st gr4, @(gr8,gr5)
	cmpi gr4, #0, icc0
	addi gr5,#4,gr5
	bne icc0,2,.L408
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L413
	mov gr8, gr5
.L412:
	ldi @(gr5,4), gr6
	addi gr5,#4,gr5
	cmpi gr6, #0, icc1
	bne icc1,2,.L412
	sub gr5,gr8,gr7
	srai gr7, #2, gr8
	ret
.L413:
	setlos #0, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L416
	bra .L421
.L425:
	beq icc1,0,.L418
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc2,0,.L421
.L416:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmpi gr4, #0, icc1
	cmp gr4,gr5,icc0
	addicc gr10, #-1, gr10, icc2
	beq icc0,2,.L425
.L418:
	ld @(gr8,gr0), gr6
	ld @(gr9,gr0), gr7
	cmp gr6,gr7,icc1
	blt icc1,2,.L426
	ckgt icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L426:
	setlos #-1, gr8
	ret
.L421:
	setlos #0, gr8
	ret
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	bne icc0,2,.L428
	bra .L431
.L430:
	addi gr8,#4,gr8
	beq icc1,0,.L431
.L428:
	ld @(gr8,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr9,icc2
	bne icc2,2,.L430
	ret
.L431:
	setlos #0, gr8
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L436
	bra .L441
.L438:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc1,0,.L441
.L436:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr5,gr4,icc2
	beq icc2,2,.L438
	blt icc2,2,.L447
	ckgt icc2, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L441:
	setlos #0, gr8
	ret
.L447:
	setlos #-1, gr8
	ret
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	beq icc0,0,.L449
	sethi #gotofffuncdeschi(memcpy), gr6
	setlo #gotofffuncdesclo(memcpy), gr6
	ldd @(gr6,gr15), gr14
	slli gr10,#2,gr10
	calll @(gr14,gr0)
.L449:
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr4,gr0)
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L461
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc1
	addi gr10,#-1,gr7
	bnc icc1,2,.L466
	cmpi gr10, #0, icc1
	beq icc1,0,.L461
	slli gr7,#2,gr12
.L458:
	ld @(gr9,gr12), gr10
	st gr10, @(gr8,gr12)
	addi gr12,#-4,gr12
	cmpi gr12,#-4,icc2
	bne icc2,2,.L458
.L461:
	ret
.L466:
	cmpi gr10, #0, icc2
	setlos #0, gr11
	beq icc2,0,.L461
.L456:
	ld @(gr9,gr11), gr6
	addi gr7,#-1,gr7
	st gr6, @(gr8,gr11)
	cmpi gr7,#-1,icc0
	addi gr11,#4,gr11
	bne icc0,2,.L456
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L468
	mov gr8, gr5
.L469:
	addi gr4,#-1,gr4
	st gr9, @(gr5,gr0)
	cmpi gr4,#-1,icc1
	addi gr5,#4,gr5
	bne icc1,2,.L469
.L468:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L475
	cmpi gr10, #0, icc1
	beq icc1,0,.L474
	addi gr8,#-1,gr40
	addi gr9,#-1,gr41
.L477:
	ldsb @(gr40,gr10),gr42
	stb gr42, @(gr41,gr10)
	addicc gr10, #-1, gr10, icc2
	bne icc2,2,.L477
.L474:
	ret
.L475:
	cmp gr8,gr9,icc1
	beq icc1,0,.L474
	cmpi gr10, #0, icc2
	beq icc2,0,.L474
	addi gr10,#-1,gr4
	cmpi gr4,#6,icc0
	bls icc0,0,.L485
	or gr9, gr8, gr5
	andicc gr5, #3, gr0, icc1
	setlos #1, gr6
	ckeq icc1, cc4
	cmov gr0, gr6, cc4, 0
	andi gr6,#0xff,gr7
	cmpi gr7, #0, icc2
	beq icc2,0,.L485
	addi gr8,#1,gr11
	sub gr9,gr11,gr12
	cmpi gr12,#2,icc0
	setlos #1, gr13
	ckhi icc0, cc5
	cmov gr0, gr13, cc5, 0
	andi gr13,#0xff,gr14
	cmpi gr14, #0, icc1
	beq icc1,0,.L485
	andi gr10, #-4, gr32
	setlos #0, gr34
.L479:
	ld @(gr8,gr34), gr33
	st gr33, @(gr9,gr34)
	addi gr34,#4,gr34
	cmp gr34,gr32,icc2
	bne icc2,2,.L479
	cmp gr10,gr34,icc0
	add gr9,gr34,gr35
	add gr8,gr34,gr36
	sub gr10,gr34,gr10
	beq icc0,0,.L474
	ldsb @(gr8,gr34),gr8
	cmpi gr10,#1,icc1
	stb gr8, @(gr9,gr34)
	beq icc1,0,.L474
	ldsbi @(gr36,1),gr9
	cmpi gr10,#2,icc2
	stbi gr9, @(gr35,1)
	beq icc2,0,.L474
	ldsbi @(gr36,2),gr37
	stbi gr37, @(gr35,2)
	ret
.L485:
	setlos #0, gr39
.L507:
	ldsb @(gr8,gr39),gr38
	stb gr38, @(gr9,gr39)
	addi gr39,#1,gr39
	cmp gr10,gr39,icc0
	bne icc0,2,.L507
	ret
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	sub gr0,gr10,gr6
	setlos #31, gr4
	andi gr6, #63, gr14
	srli gr9, #1, gr11
	addi gr10,#-32,gr5
	sub gr4,gr10,gr13
	sll gr8,gr10,gr34
	slli gr8,#1,gr7
	addi gr14,#-32,gr32
	cmpi gr5, #0, icc1
	sub gr4,gr14,gr12
	srl gr11, gr13, gr33
	sll gr9,gr5,gr37
	srl gr9, gr14, gr36
	cmpi gr32, #0, icc0
	ckp icc1, cc4
	sll gr7,gr12,gr35
	or gr33, gr34, gr38
	sll gr9,gr10,gr10
	srl gr8, gr32, gr39
	cmov gr38, gr37, cc4, 0
	srl gr8, gr14, gr8
	ckp icc1, cc5
	or gr35, gr36, gr40
	ckp icc0, cc6
	ckp icc0, cc4
	cmov gr0, gr9, cc5, 1
	cmov gr10, gr9, cc5, 0
	cmov gr40, gr39, cc6, 0
	cmov gr0, gr8, cc4, 1
	or gr39, gr9, gr9
	or gr8, gr37, gr8
	ret
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	sub gr0,gr10,gr6
	setlos #31, gr4
	andi gr6, #63, gr14
	slli gr8,#1,gr11
	addi gr10,#-32,gr5
	sub gr4,gr10,gr13
	srl gr9, gr10, gr34
	srli gr9, #1, gr7
	addi gr14,#-32,gr32
	cmpi gr5, #0, icc1
	sub gr4,gr14,gr12
	sll gr11,gr13,gr33
	srl gr8, gr5, gr37
	sll gr8,gr14,gr36
	cmpi gr32, #0, icc0
	ckp icc1, cc4
	srl gr7, gr12, gr35
	or gr33, gr34, gr38
	srl gr8, gr10, gr10
	sll gr9,gr32,gr39
	cmov gr38, gr37, cc4, 0
	sll gr9,gr14,gr9
	ckp icc1, cc5
	or gr35, gr36, gr40
	ckp icc0, cc6
	ckp icc0, cc4
	cmov gr0, gr8, cc5, 1
	cmov gr10, gr8, cc5, 0
	cmov gr40, gr39, cc6, 0
	cmov gr0, gr9, cc4, 1
	or gr9, gr37, gr9
	or gr39, gr8, gr8
	ret
	.size	rotr64, .-rotr64
	.p2align 4
	.globl rotl32
	.type	rotl32, @function
rotl32:
	sub gr0,gr9,gr4
	andi gr4, #31, gr5
	sll gr8,gr9,gr9
	srl gr8, gr5, gr8
	or gr8, gr9, gr8
	ret
	.size	rotl32, .-rotl32
	.p2align 4
	.globl rotr32
	.type	rotr32, @function
rotr32:
	sub gr0,gr9,gr4
	andi gr4, #31, gr5
	srl gr8, gr9, gr9
	sll gr8,gr5,gr8
	or gr8, gr9, gr8
	ret
	.size	rotr32, .-rotr32
	.p2align 4
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	sub gr0,gr9,gr4
	andi gr4, #31, gr5
	sll gr8,gr9,gr9
	srl gr8, gr5, gr8
	or gr8, gr9, gr8
	ret
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	sub gr0,gr9,gr4
	andi gr4, #31, gr5
	srl gr8, gr9, gr9
	sll gr8,gr5,gr8
	or gr8, gr9, gr8
	ret
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl rotl16
	.type	rotl16, @function
rotl16:
	andi gr9, #15, gr9
	sub gr0,gr9,gr5
	mov gr8, gr4
	sethi #hi(#0),gr4
	andi gr5, #15, gr6
	sll gr8,gr9,gr8
	srl gr4, gr6, gr7
	or gr8, gr7, gr8
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	andi gr9, #15, gr9
	sub gr0,gr9,gr5
	mov gr8, gr4
	sethi #hi(#0),gr4
	andi gr5, #15, gr6
	srl gr4, gr9, gr7
	sll gr8,gr6,gr8
	or gr7, gr8, gr8
	ret
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	andi gr9, #7, gr9
	sub gr0,gr9,gr5
	andi gr8,#0xff,gr4
	andi gr5, #7, gr6
	sll gr8,gr9,gr8
	srl gr4, gr6, gr7
	or gr8, gr7, gr8
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	andi gr9, #7, gr9
	sub gr0,gr9,gr5
	andi gr8,#0xff,gr4
	andi gr5, #7, gr6
	srl gr4, gr9, gr7
	sll gr8,gr6,gr8
	or gr7, gr8, gr8
	ret
	.size	rotr8, .-rotr8
	.p2align 4
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srli gr4, #8, gr5
	slli gr8,#8,gr8
	or gr5, gr8, gr8
	ret
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	sethi #hi(#65280), gr6
	slli gr8,#24,gr4
	srli gr8, #24, gr7
	srli gr8, #8, gr5
	setlo #lo(#65280), gr6
	sethi #hi(#16711680), gr11
	or gr4, gr7, gr9
	and gr5, gr6, gr10
	slli gr8,#8,gr8
	setlo #lo(#16711680), gr11
	or gr9, gr10, gr12
	and gr8, gr11, gr13
	or gr12, gr13, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	mov gr9, gr4
	slli gr8,#8,gr6
	srli gr9, #24, gr5
	sethi #hi(#65280), gr12
	slli gr8,#24,gr10
	setlo #lo(#65280), gr12
	or gr6, gr5, gr14
	srli gr8, #8, gr9
	srli gr4, #8, gr7
	sethi #hi(#16711680), gr11
	setlo #lo(#16711680), gr11
	and gr9, gr12, gr33
	slli gr4,#24,gr32
	srli gr8, #24, gr8
	or gr10, gr7, gr34
	andi gr14, #255, gr13
	or gr8, gr33, gr35
	and gr14, gr11, gr36
	slli gr4,#8,gr37
	or gr32, gr13, gr38
	and gr34, gr12, gr39
	or gr35, gr36, gr40
	or gr38, gr39, gr41
	and gr37, gr11, gr42
	or gr40, gr10, gr9
	or gr41, gr42, gr8
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
	bra .L524
.L522:
	beq icc1,0,.L526
.L524:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	addi gr4,#1,gr4
	cmpi gr4,#32,icc1
	beq icc0,2,.L522
	mov gr4, gr8
	ret
.L526:
	setlos #0, gr8
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L530
	andicc gr8, #1, gr4, icc1
	bne icc1,0,.L527
	setlos #1, gr4
.L529:
	srai gr8, #1, gr8
	andicc gr8, #1, gr0, icc2
	addi gr4,#1,gr4
	beq icc2,2,.L529
.L527:
	mov gr4, gr8
	ret
.L530:
	setlos #0, gr4
	mov gr4, gr8
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	sethi #hi(#4286578687), gr4
	setlo #lo(#4286578687), gr4
	movgf gr8, fr0
	movgf gr4, fr1
	fcmps fr0,fr1,fcc0
	fblt fcc0,2,.L535
	sethi #hi(#2139095039), gr5
	setlo #lo(#2139095039), gr5
	movgf gr5, fr2
	setlos #1, gr8
	fcmps fr0,fr2,fcc1
	fckgt fcc1, cc0
	cmov gr0, gr8, cc0, 0
	ret
.L535:
	setlos #1, gr8
	ret
	.size	gl_isinff, .-gl_isinff
	.p2align 4
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__ltdf2), gr4
	stdi gr18, @(sp,0)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	mov gr15, gr20
	sethi #hi(#4293918719), gr10
	ldd @(gr4,gr15), gr14
	sethi #hi(#4294967295), gr11
	setlo #lo(#4293918719), gr10
	setlo #lo(#4294967295), gr11
	mov gr8, gr18
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,2,.L539
	sethi #gotofffuncdeschi(__gtdf2), gr6
	setlo #gotofffuncdesclo(__gtdf2), gr6
	ldd @(gr6,gr20), gr14
	sethi #hi(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	mov gr19, gr9
	setlo #lo(#2146435071), gr10
	setlo #lo(#4294967295), gr11
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	lddi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,8), gr20
	ldi @(fp,8), gr7
	ckgt icc1, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr7,gr0)
.L539:
	lddi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#32,sp
	jmpl @(gr7,gr0)
	.size	gl_isinfd, .-gl_isinfd
	.p2align 4
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__ltdf2), gr4
	stdi gr18, @(sp,0)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	mov gr15, gr20
	sethi #hi(#4293918719), gr10
	ldd @(gr4,gr15), gr14
	sethi #hi(#4294967295), gr11
	setlo #lo(#4293918719), gr10
	setlo #lo(#4294967295), gr11
	mov gr8, gr18
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,2,.L543
	sethi #gotofffuncdeschi(__gtdf2), gr6
	setlo #gotofffuncdesclo(__gtdf2), gr6
	ldd @(gr6,gr20), gr14
	sethi #hi(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	mov gr19, gr9
	setlo #lo(#2146435071), gr10
	setlo #lo(#4294967295), gr11
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	lddi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,8), gr20
	ldi @(fp,8), gr7
	ckgt icc1, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr7,gr0)
.L543:
	lddi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#32,sp
	jmpl @(gr7,gr0)
	.size	gl_isinfl, .-gl_isinfl
	.p2align 4
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sethi #gotofffuncdeschi(__itod), gr4
	sti gr18, @(sp,0)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__itod), gr4
	ldd @(gr4,gr15), gr14
	mov gr8, gr18
	mov gr9, gr8
	calll @(gr14,gr0)
	st gr8, @(gr18,gr0)
	sti gr9, @(gr18,4)
	ldi @(sp,0), gr18
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr6,gr0)
	.size	_Qp_itoq, .-_Qp_itoq
	.p2align 4
	.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	sti gr18, @(sp,0)
	stfi fr16, @(sp,4)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	ldd @(gr4,gr15), gr14
	mov gr9, gr18
	mov gr8, gr9
	movgf gr8, fr16
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L546
	fadds fr16,fr16,fr0
	fcmps fr0,fr16,fcc0
	fbeq fcc0,2,.L546
	cmpi gr18, #0, icc1
	bn icc1,0,.L558
	sethi #hi(#1073741824), gr6
	setlo #lo(#1073741824), gr6
	movgf gr6, fr1
.L547:
	andicc gr18, #1, gr0, icc2
	beq icc2,2,.L548
.L549:
	fmuls fr16,fr1,fr16
.L548:
	srli gr18, #31, gr8
	add gr8,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L546
	srli gr18, #31, gr9
	andicc gr18, #1, gr0, icc1
	add gr9,gr18,gr10
	fmuls fr1,fr1,fr1
	bne icc1,2,.L549
.L559:
	srai gr10, #1, gr18
	srli gr18, #31, gr9
	andicc gr18, #1, gr0, icc1
	add gr9,gr18,gr10
	fmuls fr1,fr1,fr1
	bne icc1,2,.L549
	bra .L559
.L546:
	movfg fr16, gr8
	ldi @(sp,0), gr18
	ldfi @(sp,4), fr16
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr11,gr0)
.L558:
	sethi #hi(#1056964608), gr7
	setlo #lo(#1056964608), gr7
	movgf gr7, fr1
	bra .L547
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl ldexp
	.type	ldexp, @function
ldexp:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	stdi gr18, @(sp,0)
	stdi gr22, @(sp,16)
	sti gr5, @(fp,8)
	stdi gr20, @(sp,8)
	stdi gr24, @(sp,24)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr18
	mov gr9, gr11
	mov gr8, gr10
	mov gr8, gr22
	mov gr9, gr23
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L561
	sethi #gotofffuncdeschi(__addd), gr6
	setlo #gotofffuncdesclo(__addd), gr6
	ldd @(gr6,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nedf2), gr7
	setlo #gotofffuncdesclo(__nedf2), gr7
	ldd @(gr7,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	beq icc1,2,.L561
	cmpi gr18, #0, icc2
	bn icc2,0,.L575
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L563:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L564
	sethi #gotofffuncdeschi(__muld), gr24
.L565:
	setlo #gotofffuncdesclo(__muld), gr24
	ldd @(gr24,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L564:
	srli gr18, #31, gr8
	add gr8,gr18,gr18
	sraicc gr18, #1, gr18, icc1
	beq icc1,0,.L561
	sethi #gotofffuncdeschi(__muld), gr24
	mov gr24, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L566:
	ldd @(gr25,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr10
	andicc gr18, #1, gr0, icc2
	add gr10,gr18,gr11
	mov gr8, gr20
	mov gr9, gr21
	bne icc2,2,.L565
	srai gr11, #1, gr18
	bra .L566
.L561:
	mov gr22, gr8
	mov gr23, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	lddi @(sp,24), gr24
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr12,gr0)
.L575:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L563
	.size	ldexp, .-ldexp
	.p2align 4
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	stdi gr18, @(sp,0)
	stdi gr22, @(sp,16)
	sti gr5, @(fp,8)
	stdi gr20, @(sp,8)
	stdi gr24, @(sp,24)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr18
	mov gr9, gr11
	mov gr8, gr10
	mov gr8, gr22
	mov gr9, gr23
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L577
	sethi #gotofffuncdeschi(__addd), gr6
	setlo #gotofffuncdesclo(__addd), gr6
	ldd @(gr6,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nedf2), gr7
	setlo #gotofffuncdesclo(__nedf2), gr7
	ldd @(gr7,gr19), gr14
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	beq icc1,2,.L577
	cmpi gr18, #0, icc2
	bn icc2,0,.L591
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L579:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L580
	sethi #gotofffuncdeschi(__muld), gr24
.L581:
	setlo #gotofffuncdesclo(__muld), gr24
	ldd @(gr24,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L580:
	srli gr18, #31, gr8
	add gr8,gr18,gr18
	sraicc gr18, #1, gr18, icc1
	beq icc1,0,.L577
	sethi #gotofffuncdeschi(__muld), gr24
	mov gr24, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L582:
	ldd @(gr25,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr10
	andicc gr18, #1, gr0, icc2
	add gr10,gr18,gr11
	mov gr8, gr20
	mov gr9, gr21
	bne icc2,2,.L581
	srai gr11, #1, gr18
	bra .L582
.L577:
	mov gr22, gr8
	mov gr23, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	lddi @(sp,24), gr24
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr12,gr0)
.L591:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L579
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	cmpi gr10, #0, icc0
	beq icc0,0,.L593
	addi gr10,#-1,gr4
	cmpi gr4,#3,icc1
	bls icc1,0,.L600
	or gr8, gr9, gr5
	andicc gr5, #3, gr0, icc2
	bne icc2,0,.L600
	andi gr10, #-4, gr7
	setlos #0, gr13
.L595:
	ld @(gr8,gr13), gr6
	ld @(gr9,gr13), gr11
	xor gr11, gr6, gr12
	st gr12, @(gr8,gr13)
	addi gr13,#4,gr13
	cmp gr13,gr7,icc0
	bne icc0,2,.L595
	cmp gr10,gr13,icc1
	add gr8,gr13,gr14
	add gr9,gr13,gr32
	sub gr10,gr13,gr10
	beq icc1,0,.L593
	ldsb @(gr8,gr13),gr33
	ldsb @(gr9,gr13),gr9
	cmpi gr10,#1,icc2
	xor gr33, gr9, gr34
	stb gr34, @(gr8,gr13)
	beq icc2,0,.L593
	ldsbi @(gr14,1),gr35
	ldsbi @(gr32,1),gr36
	cmpi gr10,#2,icc0
	xor gr36, gr35, gr37
	stbi gr37, @(gr14,1)
	beq icc0,0,.L593
	ldsbi @(gr14,2),gr38
	ldsbi @(gr32,2),gr39
	xor gr39, gr38, gr40
	stbi gr40, @(gr14,2)
.L593:
	ret
.L600:
	setlos #0, gr44
.L612:
	ldsb @(gr8,gr44),gr41
	ldsb @(gr9,gr44),gr42
	xor gr42, gr41, gr43
	stb gr43, @(gr8,gr44)
	addi gr44,#1,gr44
	cmp gr10,gr44,icc1
	bne icc1,2,.L612
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	ldsb @(gr8,gr0),gr4
	mov gr8, gr7
	cmpi gr4, #0, icc0
	beq icc0,0,.L614
.L615:
	ldsbi @(gr7,1),gr5
	addi gr7,#1,gr7
	cmpi gr5, #0, icc1
	bne icc1,2,.L615
.L614:
	cmpi gr10, #0, icc2
	bne icc2,2,.L616
	bra .L617
.L618:
	addi gr9,#1,gr9
	addi gr7,#1,gr7
	beq icc1,0,.L617
.L616:
	ldsb @(gr9,gr0),gr6
	addicc gr10, #-1, gr10, icc1
	stb gr6, @(gr7,gr0)
	cmpi gr6, #0, icc0
	bne icc0,2,.L618
	ret
.L617:
	stb gr0, @(gr7,gr0)
	ret
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	cmpi gr9, #0, icc0
	mov gr8, gr5
	setlos #0, gr8
	beq icc0,0,.L627
.L628:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc1
	bne icc1,0,.L630
.L627:
	ret
.L630:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc2
	bne icc2,2,.L628
	ret
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr6
	movgs gr9, lcr
	cmpi gr6, #0, icc0
	beq icc0,0,.L638
.L634:
	movsg lcr, gr4
	bra .L637
.L636:
	beq icc1,0,.L635
.L637:
	ldsb @(gr4,gr0),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc2
	cmp gr5,gr6,icc1
	bne icc2,2,.L636
	ldsbi @(gr8,1),gr6
	addi gr8,#1,gr8
	cmpi gr6, #0, icc0
	bne icc0,2,.L634
.L638:
	setlos #0, gr8
.L635:
	ret
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L643:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc1
	ckeq icc1, cc4
	cmpi gr4, #0, icc0
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	bne icc0,2,.L643
	mov gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	ldsb @(gr9,gr0),gr10
	cmpi gr10, #0, icc0
	beq icc0,0,.L645
	mov gr9, gr4
.L647:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc1
	bne icc1,2,.L647
	subcc gr4, gr9, gr6, icc2
	beq icc2,0,.L645
	andi gr10,#0xff,gr13
	addi gr6,#-1,gr12
	bra .L665
.L667:
	cmpi gr7, #0, icc1
	addi gr8,#1,gr8
	beq icc1,0,.L666
.L665:
	ldsb @(gr8,gr0),gr7
	cmp gr7,gr10,icc0
	bne icc0,2,.L667
	mov gr13, gr33
	add gr8,gr12,gr11
	mov gr9, gr34
	mov gr8, gr32
	bra .L649
.L668:
	beq icc1,0,.L650
	bne icc2,0,.L650
	ldub @(gr32,gr0),gr33
	addi gr34,#1,gr34
	cmpi gr33, #0, icc1
	beq icc1,0,.L650
.L649:
	ldub @(gr34,gr0),gr14
	cmp gr32,gr11,icc1
	cmpi gr14, #0, icc0
	addi gr32,#1,gr32
	cmp gr14,gr33,icc2
	bne icc0,2,.L668
.L650:
	ldub @(gr34,gr0),gr35
	cmp gr35,gr33,icc0
	beq icc0,0,.L645
	addi gr8,#1,gr8
	bra .L665
.L666:
	setlos #0, gr8
.L645:
	ret
	.size	strstr, .-strstr
	.p2align 4
	.globl copysign
	.type	copysign, @function
copysign:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__ltdf2), gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	setlos #0, gr10
	setlos #0, gr11
	mov gr8, gr20
	mov gr9, gr21
	add gr4,gr19,gr18
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__gtdf2), gr6
	setlo #gotofffuncdesclo(__gtdf2), gr6
	cmpi gr8, #0, icc0
	ldd @(gr6,gr19), gr14
	setlos #0, gr10
	setlos #0, gr11
	bn icc0,0,.L679
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	ble icc1,0,.L673
	ldd @(gr18,gr0), gr14
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc2
	bn icc2,0,.L672
.L673:
	mov gr20, gr8
	mov gr21, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr10,gr0)
.L679:
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ble icc0,2,.L673
.L672:
	sethi #hi(#-2147483648), gr7
	setlo #lo(#-2147483648), gr7
	xor gr20, gr7, gr20
	bra .L673
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	cmpi gr11, #0, icc0
	beq icc0,0,.L680
	cmp gr9,gr11,icc1
	bc icc1,0,.L691
	sub gr9,gr11,gr7
	add gr8,gr7,gr32
	cmp gr8,gr32,icc2
	bhi icc2,0,.L691
	ldsb @(gr10,gr0),gr12
	bra .L686
.L690:
	mov gr9, gr8
.L682:
	cmp gr32,gr8,icc0
	bc icc0,0,.L691
.L686:
	ldsb @(gr8,gr0),gr4
	addi gr8,#1,gr9
	cmp gr4,gr12,icc0
	bne icc0,2,.L690
	cmpi gr11,#1,icc1
	beq icc1,0,.L680
.L685:
	setlos #1, gr13
	bra .L683
.L684:
	beq icc0,0,.L680
.L683:
	ldub @(gr8,gr13),gr6
	ldub @(gr10,gr13),gr5
	addi gr13,#1,gr13
	cmp gr6,gr5,icc2
	cmp gr13,gr11,icc0
	beq icc2,2,.L684
	cmp gr32,gr9,icc1
	bc icc1,0,.L691
	ldsb @(gr9,gr0),gr14
	addi gr9,#1,gr8
	cmp gr12,gr14,icc2
	bne icc2,2,.L682
	movgs gr9, lcr
	mov gr8, gr9
	movsg lcr, gr8
	bra .L685
.L691:
	setlos #0, gr8
.L680:
	ret
	.size	memmem, .-memmem
	.p2align 4
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sti gr18, @(sp,0)
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	mov gr10, gr18
	beq icc0,0,.L700
	sethi #gotofffuncdeschi(memmove), gr6
	setlo #gotofffuncdesclo(memmove), gr6
	ldd @(gr6,gr15), gr14
	calll @(gr14,gr0)
.L700:
	add gr8,gr18,gr8
	ldi @(fp,8), gr4
	ldi @(sp,0), gr18
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr4,gr0)
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl frexp
	.type	frexp, @function
frexp:
	addi sp,#-64,sp
	stdi gr22, @(sp,16)
	sethi #gotofffuncdeschi(__ltdf2), gr22
	sti fp, @(sp,48)
	movsg lr, gr5
	addi sp,#48,fp
	mov gr22, gr4
	stdi gr18, @(sp,0)
	stdi gr20, @(sp,8)
	stdi gr48, @(sp,40)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	sti gr5, @(fp,8)
	stdi gr24, @(sp,24)
	stdi gr26, @(sp,32)
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr10, gr48
	setlos #0, gr11
	setlos #0, gr10
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr20,gr21
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L726
	sethi #gotofffuncdeschi(__gedf2), gr23
	mov gr23, gr6
	setlo #gotofffuncdesclo(__gedf2), gr6
	ldd @(gr6,gr20), gr14
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bn icc1,0,.L727
	setlos #0, gr49
.L707:
	sethi #gotofffuncdeschi(__muld), gr22
	sethi #hi(#1071644672), gr26
	sethi #hi(#1072693248), gr24
	setlos #0, gr21
	setlo #gotofffuncdesclo(__muld), gr22
	setlo #lo(#1071644672), gr26
	setlos #0, gr27
	setlo #gotofffuncdesclo(__gedf2), gr23
	setlo #lo(#1072693248), gr24
	setlos #0, gr25
.L713:
	ldd @(gr22,gr20), gr14
	mov gr26, gr10
	mov gr27, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	ldd @(gr23,gr20), gr14
	mov gr8, gr18
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	addi gr21,#1,gr21
	bp icc1,2,.L713
.L714:
	st gr21, @(gr48,gr0)
	cmpi gr49, #0, icc2
	beq icc2,0,.L720
	sethi #hi(#-2147483648), gr11
	setlo #lo(#-2147483648), gr11
	xor gr18, gr11, gr8
	mov gr19, gr9
.L704:
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	lddi @(sp,24), gr24
	lddi @(sp,32), gr26
	lddi @(sp,40), gr48
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr12,gr0)
.L727:
	ldd @(gr21,gr0), gr14
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc2
	bp icc2,2,.L710
	sethi #gotofffuncdeschi(__nedf2), gr7
	setlo #gotofffuncdesclo(__nedf2), gr7
	ldd @(gr7,gr20), gr14
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L719
.L710:
	st gr0, @(gr48,gr0)
	mov gr18, gr8
	mov gr19, gr9
	bra .L704
.L726:
	sethi #gotofffuncdeschi(__ledf2), gr8
	setlo #gotofffuncdesclo(__ledf2), gr8
	sethi #hi(#-2147483648), gr9
	ldd @(gr8,gr20), gr14
	setlo #lo(#-2147483648), gr9
	sethi #hi(#3220176896), gr10
	xor gr18, gr9, gr24
	setlo #lo(#3220176896), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	mov gr19, gr25
	bgt icc1,0,.L728
	mov gr24, gr18
	setlos #1, gr49
	sethi #gotofffuncdeschi(__gedf2), gr23
	bra .L707
.L720:
	mov gr18, gr8
	mov gr19, gr9
	bra .L704
.L728:
	sethi #gotofffuncdeschi(__gtdf2), gr10
	setlo #gotofffuncdesclo(__gtdf2), gr10
	ldd @(gr10,gr20), gr14
	sethi #hi(#3219128320), gr10
	setlo #lo(#3219128320), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc2
	ble icc2,2,.L710
	setlos #1, gr49
.L708:
	sethi #gotofffuncdeschi(__addd), gr26
	sethi #hi(#1071644672), gr27
	mov gr24, gr18
	mov gr25, gr19
	setlos #0, gr21
	setlo #gotofffuncdesclo(__addd), gr26
	setlo #gotofffuncdesclo(__ltdf2), gr22
	setlo #lo(#1071644672), gr27
	setlos #0, gr23
.L715:
	ldd @(gr26,gr20), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	ldd @(gr22,gr20), gr14
	mov gr8, gr18
	mov gr27, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	addi gr21,#-1,gr21
	bn icc0,2,.L715
	bra .L714
.L719:
	mov gr18, gr24
	mov gr19, gr25
	setlos #0, gr49
	bra .L708
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	mov gr8, gr5
	mov gr9, gr33
	orcc gr33, gr5, gr0, icc0
	setlos #0, gr8
	setlos #0, gr9
	beq icc0,0,.L729
.L732:
	andi gr33, #1, gr7
	subcc gr0,gr7,gr15,icc1
	slli gr5,#31,gr32
	setlos #0, gr6
	srli gr33, #1, gr4
	and gr15, gr11, gr13
	subx gr0,gr6,gr14,icc1
	srli gr5, #1, gr5
	or gr32, gr4, gr33
	and gr14, gr10, gr12
	srli gr11, #31, gr34
	slli gr10,#1,gr10
	addcc gr9,gr13,gr9,icc0
	orcc gr5, gr33, gr0, icc2
	addx gr8,gr12,gr8,icc0
	or gr34, gr10, gr10
	slli gr11,#1,gr11
	bne icc2,2,.L732
.L729:
	ret
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp gr9,gr8,icc0
	mov gr8, gr5
	bnc icc0,0,.L753
	setlos #32, gr8
	setlos #1, gr11
	bra .L736
.L740:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr11,#1,gr11
	bls icc0,0,.L738
	beq icc1,0,.L739
.L736:
	cmpi gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L740
.L741:
	setlos #0, gr8
.L742:
	cmp gr5,gr9,icc1
	setlos #1, gr6
	cknc icc1, cc6
	cmov gr0, gr6, cc6, 0
	cmpi gr6, #0, icc0
	ckne icc0, cc4
	sub gr5,gr9,gr7
	cmov gr11, gr6, cc4, 1
	cmov gr0, gr6, cc4, 0
	ckne icc0, cc5
	srlicc gr11, #1, gr11, icc2
	cmov gr7, gr5, cc5, 1
	or gr8, gr6, gr8
	srli gr9, #1, gr9
	bne icc2,2,.L742
.L739:
	cmpi gr10, #0, icc1
	bne icc1,0,.L754
	ret
.L738:
	cmpi gr11, #0, icc2
	bne icc2,2,.L741
	setlos #0, gr8
	bra .L739
.L754:
	mov gr5, gr8
	ret
.L753:
	setlos #1, gr4
	ckls icc0, cc4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr8
	cmpi gr8, #0, icc1
	sub gr5,gr9,gr9
	ckne icc1, cc5
	cmov gr9, gr5, cc5, 1
	bra .L739
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi sp,#-16,sp
	slli gr8,#24,gr8
	srai gr8, #24, gr6
	srai gr6, #7, gr4
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sti gr5, @(fp,8)
	cmp gr6,gr4,icc0
	xor gr6, gr4, gr7
	beq icc0,0,.L757
	sethi #gotofffuncdeschi(__clzsi2), gr9
	setlo #gotofffuncdesclo(__clzsi2), gr9
	ldd @(gr9,gr15), gr14
	slli gr7,#8,gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr10,gr0)
.L757:
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	setlos #7, gr8
	addi sp,#16,sp
	jmpl @(gr10,gr0)
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi sp,#-16,sp
	srai gr8, #31, gr4
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sti gr5, @(fp,8)
	cmp gr8,gr4,icc0
	mov gr9, gr7
	xor gr8, gr4, gr6
	xor gr9, gr4, gr9
	beq icc0,0,.L764
.L762:
	sethi #gotofffuncdeschi(__clzdi2), gr8
	setlo #gotofffuncdesclo(__clzdi2), gr8
	ldd @(gr8,gr15), gr14
	mov gr6, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr9
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr9,gr0)
.L764:
	cmp gr7,gr8,icc1
	bne icc1,2,.L762
	ldi @(fp,8), gr9
	ld @(fp,gr0), fp
	setlos #63, gr8
	addi sp,#16,sp
	jmpl @(gr9,gr0)
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L765
.L767:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc1
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc1,2,.L767
.L765:
	mov gr6, gr8
	ret
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	cmp gr8,gr9,icc0
	srli gr10, #3, gr11
	andi gr10, #-8, gr12
	bc icc0,2,.L774
	add gr9,gr10,gr4
	cmp gr8,gr4,icc1
	bls icc1,2,.L805
.L774:
	cmpi gr11, #0, icc1
	beq icc1,0,.L806
	slli gr11,#3,gr7
	mov gr9, gr33
	mov gr8, gr34
	add gr7,gr9,gr13
.L777:
	ld @(gr33,gr0), gr14
	ldi @(gr33,4), gr32
	addi gr33,#8,gr33
	st gr14, @(gr34,gr0)
	sti gr32, @(gr34,4)
	cmp gr33,gr13,icc0
	addi gr34,#8,gr34
	bne icc0,2,.L777
	cmp gr10,gr12,icc1
	bls icc1,0,.L770
	sub gr10,gr12,gr35
	addi gr35,#-1,gr36
	cmpi gr36,#6,icc2
	addi gr12,#1,gr14
	bls icc2,0,.L803
	add gr8,gr12,gr37
	add gr9,gr14,gr38
	sub gr37,gr38,gr39
	cmpi gr39,#2,icc0
	setlos #1, gr40
	ckhi icc0, cc4
	cmov gr0, gr40, cc4, 0
	andi gr40,#0xff,gr41
	cmpi gr41, #0, icc1
	add gr9,gr12,gr42
	beq icc1,0,.L803
	or gr42, gr37, gr43
	andicc gr43, #3, gr0, icc2
	setlos #1, gr44
	ckeq icc2, cc5
	cmov gr0, gr44, cc5, 0
	andi gr44,#0xff,gr45
	cmpi gr45, #0, icc0
	beq icc0,0,.L803
	andi gr35, #-4, gr46
	setlos #0, gr11
.L780:
	ld @(gr42,gr11), gr47
	st gr47, @(gr37,gr11)
	addi gr11,#4,gr11
	cmp gr46,gr11,icc1
	bne icc1,2,.L780
	cmp gr46,gr35,icc2
	add gr46,gr12,gr12
	beq icc2,0,.L770
	ldsb @(gr9,gr12),gr5
	addi gr12,#1,gr4
	stb gr5, @(gr8,gr12)
	cmp gr10,gr4,icc0
	bls icc0,0,.L770
	ldsb @(gr9,gr4),gr7
	addi gr12,#2,gr6
	stb gr7, @(gr8,gr4)
	cmp gr10,gr6,icc1
	bls icc1,0,.L770
	ldsb @(gr9,gr6),gr9
	stb gr9, @(gr8,gr6)
.L770:
	ret
.L807:
	addi gr14,#1,gr14
.L803:
	ldsb @(gr9,gr12),gr13
	cmp gr10,gr14,icc2
	stb gr13, @(gr8,gr12)
	mov gr14, gr12
	bne icc2,2,.L807
	ret
.L805:
	cmpi gr10, #0, icc2
	addi gr10,#-1,gr6
	beq icc2,0,.L770
.L775:
	ldsb @(gr9,gr6),gr5
	stb gr5, @(gr8,gr6)
	addi gr6,#-1,gr6
	cmpi gr6,#-1,icc0
	bne icc0,2,.L775
	ret
.L806:
	cmpi gr10, #0, icc2
	beq icc2,0,.L770
	addi gr12,#1,gr14
	bra .L803
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	cmp gr8,gr9,icc0
	srli gr10, #1, gr7
	bc icc0,2,.L812
	add gr9,gr10,gr4
	cmp gr8,gr4,icc1
	bls icc1,2,.L835
.L812:
	cmpi gr7, #0, icc1
	beq icc1,0,.L811
	addi gr7,#-1,gr11
	cmpi gr11,#8,icc2
	bls icc2,0,.L815
	or gr9, gr8, gr12
	andicc gr12, #3, gr0, icc0
	setlos #1, gr13
	ckeq icc0, cc4
	cmov gr0, gr13, cc4, 0
	andi gr13,#0xff,gr14
	cmpi gr14, #0, icc1
	beq icc1,0,.L815
	addi gr9,#2,gr32
	cmp gr8,gr32,icc2
	setlos #1, gr33
	ckne icc2, cc5
	cmov gr0, gr33, cc5, 0
	andi gr33,#0xff,gr34
	cmpi gr34, #0, icc0
	beq icc0,0,.L815
	srli gr10, #2, gr35
	andi gr10, #-4, gr36
	setlos #0, gr38
.L816:
	ld @(gr9,gr38), gr37
	st gr37, @(gr8,gr38)
	addi gr38,#4,gr38
	cmp gr38,gr36,icc1
	bne icc1,2,.L816
	slli gr35,#1,gr39
	cmp gr7,gr39,icc2
	beq icc2,0,.L811
	ldsh @(gr9,gr38),gr40
	sth gr40, @(gr8,gr38)
.L811:
	andicc gr10, #1, gr0, icc1
	beq icc1,2,.L808
.L836:
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr9
	stb gr9, @(gr8,gr10)
.L808:
	ret
.L835:
	cmpi gr10, #0, icc2
	addi gr10,#-1,gr6
	beq icc2,0,.L808
.L813:
	ldsb @(gr9,gr6),gr5
	stb gr5, @(gr8,gr6)
	addi gr6,#-1,gr6
	cmpi gr6,#-1,icc0
	bne icc0,2,.L813
	ret
.L815:
	slli gr7,#1,gr41
	setlos #0, gr43
.L818:
	ldsh @(gr9,gr43),gr42
	sth gr42, @(gr8,gr43)
	addi gr43,#2,gr43
	cmp gr41,gr43,icc0
	bne icc0,2,.L818
	andicc gr10, #1, gr0, icc1
	beq icc1,2,.L808
	bra .L836
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	cmp gr8,gr9,icc0
	srli gr10, #2, gr6
	andi gr10, #-4, gr7
	bc icc0,2,.L841
	add gr9,gr10,gr4
	cmp gr8,gr4,icc1
	bls icc1,2,.L872
.L841:
	cmpi gr6, #0, icc1
	beq icc1,0,.L873
	slli gr6,#2,gr11
	setlos #0, gr13
.L844:
	ld @(gr9,gr13), gr12
	st gr12, @(gr8,gr13)
	addi gr13,#4,gr13
	cmp gr13,gr11,icc0
	bne icc0,2,.L844
	cmp gr10,gr7,icc1
	bls icc1,0,.L837
	sub gr10,gr7,gr14
	addi gr14,#-1,gr32
	cmpi gr32,#6,icc2
	addi gr7,#1,gr11
	bls icc2,0,.L870
	add gr8,gr7,gr33
	add gr9,gr11,gr34
	sub gr33,gr34,gr35
	cmpi gr35,#2,icc0
	setlos #1, gr36
	ckhi icc0, cc4
	cmov gr0, gr36, cc4, 0
	andi gr36,#0xff,gr37
	cmpi gr37, #0, icc1
	add gr9,gr7,gr38
	beq icc1,0,.L870
	or gr38, gr33, gr39
	andicc gr39, #3, gr0, icc2
	setlos #1, gr40
	ckeq icc2, cc5
	cmov gr0, gr40, cc5, 0
	andi gr40,#0xff,gr41
	cmpi gr41, #0, icc0
	beq icc0,0,.L870
	andi gr14, #-4, gr42
	setlos #0, gr44
.L847:
	ld @(gr38,gr44), gr43
	st gr43, @(gr33,gr44)
	addi gr44,#4,gr44
	cmp gr42,gr44,icc1
	bne icc1,2,.L847
	cmp gr42,gr14,icc2
	add gr42,gr7,gr45
	beq icc2,0,.L837
	ldsb @(gr9,gr45),gr46
	addi gr45,#1,gr47
	stb gr46, @(gr8,gr45)
	cmp gr10,gr47,icc0
	bls icc0,0,.L837
	ldsb @(gr9,gr47),gr4
	addi gr45,#2,gr6
	stb gr4, @(gr8,gr47)
	cmp gr10,gr6,icc1
	bls icc1,0,.L837
	ldsb @(gr9,gr6),gr9
	stb gr9, @(gr8,gr6)
.L837:
	ret
.L874:
	addi gr11,#1,gr11
.L870:
	ldsb @(gr9,gr7),gr5
	cmp gr10,gr11,icc2
	stb gr5, @(gr8,gr7)
	mov gr11, gr7
	bne icc2,2,.L874
	ret
.L872:
	cmpi gr10, #0, icc2
	addi gr10,#-1,gr7
	beq icc2,0,.L837
.L842:
	ldsb @(gr9,gr7),gr5
	stb gr5, @(gr8,gr7)
	addi gr7,#-1,gr7
	cmpi gr7,#-1,icc0
	bne icc0,2,.L842
	ret
.L873:
	cmpi gr10, #0, icc2
	beq icc2,0,.L837
	addi gr7,#1,gr11
	bra .L870
	.size	__cmovw, .-__cmovw
	.p2align 4
	.globl __modi
	.type	__modi, @function
__modi:
	sdiv gr8,gr9,gr4
	smul gr4,gr9,gr4
	sub gr8,gr5,gr8
	ret
	.size	__modi, .-__modi
	.p2align 4
	.globl __uitod
	.type	__uitod, @function
__uitod:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatunsidf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatunsidf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr6,gr0)
	.size	__uitod, .-__uitod
	.p2align 4
	.globl __uitof
	.type	__uitof, @function
__uitof:
	cmpi gr8, #0, icc0
	bn icc0,0,.L879
	movgf gr8, fr0
	fitos fr0,fr1
	movfg fr1, gr8
	ret
.L879:
	andi gr8, #1, gr4
	srli gr8, #1, gr8
	or gr4, gr8, gr5
	movgf gr5, fr2
	fitos fr2,fr3
	fadds fr3,fr3,fr4
	movfg fr4, gr8
	ret
	.size	__uitof, .-__uitof
	.p2align 4
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatundidf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatundidf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr6,gr0)
	.size	__ulltod, .-__ulltod
	.p2align 4
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatundisf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatundisf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr6,gr0)
	.size	__ulltof, .-__ulltof
	.p2align 4
	.globl __umodi
	.type	__umodi, @function
__umodi:
	udiv gr8,gr9,gr4
	umul gr4,gr9,gr4
	sub gr8,gr5,gr8
	ret
	.size	__umodi, .-__umodi
	.p2align 4
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	sethi #hi(#0),gr8
	srlicc gr8, #15, gr0, icc0
	bne icc0,0,.L886
	sraicc gr8, #14, gr4, icc1
	bne icc1,0,.L883
	srlicc gr8, #13, gr0, icc2
	bne icc2,0,.L887
	srlicc gr8, #12, gr0, icc0
	bne icc0,0,.L888
	srlicc gr8, #11, gr0, icc1
	bne icc1,0,.L889
	srlicc gr8, #10, gr0, icc2
	bne icc2,0,.L890
	srlicc gr8, #9, gr0, icc0
	bne icc0,0,.L891
	srlicc gr8, #8, gr0, icc1
	bne icc1,0,.L892
	srlicc gr8, #7, gr0, icc2
	bne icc2,0,.L893
	srlicc gr8, #6, gr0, icc0
	bne icc0,0,.L894
	srlicc gr8, #5, gr0, icc1
	bne icc1,0,.L895
	srlicc gr8, #4, gr0, icc2
	bne icc2,0,.L896
	srlicc gr8, #3, gr0, icc0
	bne icc0,0,.L897
	srlicc gr8, #2, gr0, icc1
	bne icc1,0,.L898
	srlicc gr8, #1, gr0, icc2
	bne icc2,0,.L899
	cmpi gr8, #0, icc0
	setlos #15, gr4
	bne icc0,0,.L883
	setlos #16, gr4
.L883:
	mov gr4, gr8
	ret
.L886:
	setlos #0, gr4
	bra .L883
.L897:
	setlos #12, gr4
	bra .L883
.L887:
	setlos #2, gr4
	bra .L883
.L888:
	setlos #3, gr4
	bra .L883
.L889:
	setlos #4, gr4
	bra .L883
.L890:
	setlos #5, gr4
	bra .L883
.L891:
	setlos #6, gr4
	bra .L883
.L892:
	setlos #7, gr4
	bra .L883
.L893:
	setlos #8, gr4
	bra .L883
.L894:
	setlos #9, gr4
	bra .L883
.L895:
	setlos #10, gr4
	bra .L883
.L896:
	setlos #11, gr4
	bra .L883
.L898:
	setlos #13, gr4
	bra .L883
.L899:
	setlos #14, gr4
	bra .L883
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi gr8, #1, gr4
	sethi #hi(#0),gr4
	cmpi gr4, #0, icc0
	sethi #hi(#0),gr8
	bne icc0,0,.L904
	andi gr8, #2, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc1
	bne icc1,0,.L905
	andi gr8, #4, gr6
	sethi #hi(#0),gr6
	cmpi gr6, #0, icc2
	bne icc2,0,.L906
	andi gr8, #8, gr7
	sethi #hi(#0),gr7
	cmpi gr7, #0, icc0
	bne icc0,0,.L907
	andi gr8, #16, gr9
	sethi #hi(#0),gr9
	cmpi gr9, #0, icc1
	bne icc1,0,.L908
	andi gr8, #32, gr10
	sethi #hi(#0),gr10
	cmpi gr10, #0, icc2
	bne icc2,0,.L909
	andi gr8, #64, gr11
	sethi #hi(#0),gr11
	cmpi gr11, #0, icc0
	bne icc0,0,.L910
	andi gr8, #128, gr12
	sethi #hi(#0),gr12
	cmpi gr12, #0, icc1
	bne icc1,0,.L911
	andi gr8, #256, gr13
	sethi #hi(#0),gr13
	cmpi gr13, #0, icc2
	bne icc2,0,.L912
	andi gr8, #512, gr14
	sethi #hi(#0),gr14
	cmpi gr14, #0, icc0
	bne icc0,0,.L913
	andi gr8, #1024, gr32
	sethi #hi(#0),gr32
	cmpi gr32, #0, icc1
	bne icc1,0,.L914
	setlos #2048, gr33
	and gr8, gr33, gr34
	sethi #hi(#0),gr34
	cmpi gr34, #0, icc2
	bne icc2,0,.L915
	setlos #4096, gr35
	and gr8, gr35, gr36
	sethi #hi(#0),gr36
	cmpi gr36, #0, icc0
	bne icc0,0,.L916
	setlos #8192, gr37
	and gr8, gr37, gr38
	sethi #hi(#0),gr38
	cmpi gr38, #0, icc1
	bne icc1,0,.L917
	setlos #16384, gr39
	and gr8, gr39, gr40
	sethi #hi(#0),gr40
	cmpi gr40, #0, icc2
	bne icc2,0,.L918
	srlicc gr8, #15, gr0, icc0
	bne icc0,0,.L920
	setlos #16, gr8
	ret
.L904:
	setlos #0, gr8
	ret
.L905:
	setlos #1, gr8
	ret
.L916:
	setlos #12, gr8
	ret
.L906:
	setlos #2, gr8
	ret
.L907:
	setlos #3, gr8
	ret
.L908:
	setlos #4, gr8
	ret
.L909:
	setlos #5, gr8
	ret
.L910:
	setlos #6, gr8
	ret
.L911:
	setlos #7, gr8
	ret
.L912:
	setlos #8, gr8
	ret
.L913:
	setlos #9, gr8
	ret
.L914:
	setlos #10, gr8
	ret
.L915:
	setlos #11, gr8
	ret
.L917:
	setlos #13, gr8
	ret
.L918:
	setlos #14, gr8
	ret
.L920:
	setlos #15, gr8
	ret
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	sethi #hi(#1191182336), gr4
	setlo #lo(#1191182336), gr4
	movgf gr4, fr0
	movgf gr8, fr1
	fcmps fr1,fr0,fcc0
	fbge fcc0,0,.L927
	fstoi fr1,fr2
	movfg fr2, gr8
	ret
.L927:
	fsubs fr1,fr0,fr3
	fstoi fr3,fr4
	movfg fr4, gr8
	sethi #hi(#32768), gr5
	setlo #lo(#32768), gr5
	add gr8,gr5,gr8
	ret
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srai gr4, #1, gr8
	andi gr8, #1, gr7
	andi gr4, #1, gr6
	srai gr4, #2, gr5
	add gr7,gr6,gr9
	andi gr5, #1, gr10
	srai gr4, #3, gr11
	add gr9,gr10,gr12
	andi gr11, #1, gr13
	srai gr4, #4, gr14
	add gr12,gr13,gr32
	andi gr14, #1, gr33
	srai gr4, #5, gr34
	add gr32,gr33,gr35
	andi gr34, #1, gr36
	srai gr4, #6, gr37
	add gr35,gr36,gr38
	andi gr37, #1, gr39
	srai gr4, #7, gr40
	add gr38,gr39,gr41
	srai gr4, #8, gr43
	andi gr40, #1, gr42
	srai gr4, #9, gr46
	add gr41,gr42,gr44
	andi gr43, #1, gr45
	andi gr46, #1, gr8
	srai gr4, #10, gr7
	add gr44,gr45,gr47
	add gr47,gr8,gr9
	srai gr4, #11, gr6
	andi gr7, #1, gr5
	srai gr4, #12, gr12
	add gr9,gr5,gr10
	andi gr6, #1, gr11
	srai gr4, #13, gr32
	add gr10,gr11,gr13
	andi gr12, #1, gr14
	srai gr4, #14, gr35
	add gr13,gr14,gr33
	andi gr32, #1, gr34
	add gr33,gr34,gr36
	andi gr35, #1, gr37
	add gr36,gr37,gr38
	srai gr4, #15, gr4
	add gr38,gr4,gr39
	andi gr39, #1, gr8
	ret
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srai gr4, #1, gr8
	andi gr8, #1, gr7
	andi gr4, #1, gr6
	srai gr4, #2, gr5
	add gr7,gr6,gr9
	andi gr5, #1, gr10
	srai gr4, #3, gr11
	add gr9,gr10,gr12
	andi gr11, #1, gr13
	srai gr4, #4, gr14
	add gr12,gr13,gr32
	andi gr14, #1, gr33
	srai gr4, #5, gr34
	add gr32,gr33,gr35
	andi gr34, #1, gr36
	srai gr4, #6, gr37
	add gr35,gr36,gr38
	andi gr37, #1, gr39
	srai gr4, #7, gr40
	add gr38,gr39,gr41
	srai gr4, #8, gr43
	andi gr40, #1, gr42
	srai gr4, #9, gr46
	add gr41,gr42,gr44
	andi gr43, #1, gr45
	andi gr46, #1, gr8
	srai gr4, #10, gr7
	add gr44,gr45,gr47
	add gr47,gr8,gr9
	srai gr4, #11, gr6
	andi gr7, #1, gr5
	srai gr4, #12, gr12
	add gr9,gr5,gr10
	andi gr6, #1, gr11
	srai gr4, #13, gr32
	add gr10,gr11,gr13
	andi gr12, #1, gr14
	srai gr4, #14, gr35
	add gr13,gr14,gr33
	andi gr32, #1, gr34
	add gr33,gr34,gr36
	andi gr35, #1, gr37
	add gr36,gr37,gr38
	srai gr4, #15, gr4
	add gr38,gr4,gr8
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L930
.L932:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc1
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc1,2,.L932
.L930:
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L935
	cmpi gr9, #0, icc1
	beq icc1,0,.L935
.L937:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	srlicc gr9, #1, gr9, icc2
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	bne icc2,2,.L937
.L935:
	mov gr6, gr8
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp gr8,gr9,icc0
	mov gr8, gr5
	bls icc0,0,.L959
	setlos #32, gr8
	setlos #1, gr4
	bra .L942
.L946:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L944
	beq icc1,0,.L945
.L942:
	cmpi gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L946
.L947:
	setlos #0, gr8
.L948:
	cmp gr5,gr9,icc1
	setlos #1, gr6
	cknc icc1, cc6
	cmov gr0, gr6, cc6, 0
	cmpi gr6, #0, icc0
	ckne icc0, cc4
	sub gr5,gr9,gr7
	cmov gr4, gr6, cc4, 1
	cmov gr0, gr6, cc4, 0
	ckne icc0, cc5
	srlicc gr4, #1, gr4, icc2
	cmov gr7, gr5, cc5, 1
	or gr8, gr6, gr8
	srli gr9, #1, gr9
	bne icc2,2,.L948
.L945:
	cmpi gr10, #0, icc1
	bne icc1,0,.L960
	ret
.L944:
	cmpi gr4, #0, icc2
	bne icc2,2,.L947
	setlos #0, gr8
	bra .L945
.L960:
	mov gr5, gr8
	ret
.L959:
	sub gr8,gr9,gr9
	cknc icc0, cc4
	setlos #1, gr8
	cknc icc0, cc5
	cmov gr0, gr8, cc4, 0
	cmov gr9, gr5, cc5, 1
	bra .L945
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movgf gr8, fr0
	movgf gr9, fr1
	setlos #1, gr4
	fcmps fr0,fr1,fcc0
	fcklt fcc0, cc1
	cfckgt fcc0, cc0, cc1, 0
	cmov gr4, gr8, cc1, 0
	andncr cc1, cc0, cc2
	setlos #-1, gr5
	cmov gr0, gr8, cc2, 0
	cmov gr5, gr8, cc1, 1
	ret
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.p2align 4
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__ltdf2), gr4
	stdi gr18, @(sp,0)
	stdi gr22, @(sp,8)
	sti gr20, @(sp,16)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L967
	sethi #gotofffuncdeschi(__gtdf2), gr6
	setlo #gotofffuncdesclo(__gtdf2), gr6
	ldd @(gr6,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	lddi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,16), gr20
	lddi @(sp,8), gr22
	ldi @(fp,8), gr7
	ckgt icc1, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#40,sp
	jmpl @(gr7,gr0)
.L967:
	lddi @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi @(sp,8), gr22
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	setlos #-1, gr8
	addi sp,#40,sp
	jmpl @(gr7,gr0)
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	smul gr8,gr9,gr8
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	umul gr8,gr9,gr8
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.p2align 4
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	cmpi gr9, #0, icc0
	bn icc0,0,.L984
	beq icc0,0,.L976
	setlos #0, gr10
.L972:
	setlos #0, gr6
	setlos #0, gr7
	bra .L975
.L985:
	beq icc1,0,.L974
.L975:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	addi gr6,#1,gr6
	sraicc gr9, #1, gr9, icc2
	cmpi gr6,#32,icc1
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	bne icc2,2,.L985
.L974:
	cmpi gr10, #0, icc0
	beq icc0,0,.L970
	sub gr0,gr7,gr7
.L970:
	mov gr7, gr8
	ret
.L984:
	sub gr0,gr9,gr9
	setlos #1, gr10
	bra .L972
.L976:
	setlos #0, gr7
	bra .L970
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	cmpi gr8, #0, icc0
	cmpi gr9, #0, icc1
	ckn icc0, cc4
	ckn icc1, cc5
	setlos #1, gr5
	csub gr0, gr8, gr8, cc4, 1
	csub gr0, gr9, gr9, cc5, 1
	cmov gr0, gr4, cc4, 1
	cmov gr5, gr10, cc4, 1
	cmov gr5, gr4, cc4, 0
	cmov gr0, gr10, cc4, 0
	cmp gr8,gr9,icc2
	cmov gr4, gr10, cc5, 1
	mov gr8, gr6
	bls icc2,0,.L1007
	setlos #32, gr7
	setlos #1, gr13
	bra .L989
.L993:
	beq icc1,0,.L994
.L989:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	addicc gr7, #-1, gr7, icc1
	slli gr13,#1,gr13
	bhi icc0,2,.L993
.L994:
	cmpi gr13, #0, icc2
	setlos #0, gr8
	beq icc2,0,.L992
.L991:
	cmp gr6,gr9,icc0
	setlos #1, gr11
	cknc icc0, cc4
	cmov gr0, gr11, cc4, 0
	cmpi gr11, #0, icc2
	ckne icc2, cc5
	sub gr6,gr9,gr12
	cmov gr13, gr11, cc5, 1
	cmov gr0, gr11, cc5, 0
	ckne icc2, cc6
	srlicc gr13, #1, gr13, icc1
	cmov gr12, gr6, cc6, 1
	or gr8, gr11, gr8
	srli gr9, #1, gr9
	bne icc1,2,.L991
.L992:
	cmpi gr10, #0, icc0
	beq icc0,2,.L986
	sub gr0,gr8,gr8
.L986:
	ret
.L1007:
	cknc icc2, cc6
	setlos #1, gr8
	cmov gr0, gr8, cc6, 0
	bra .L992
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	cmpi gr8, #0, icc0
	cmpi gr9,#0,icc1
	setlos #1, gr12
	ckn icc0, cc4
	cklt icc1, cc5
	csub gr0, gr8, gr8, cc4, 1
	cmov gr12, gr10, cc4, 1
	csub gr0, gr9, gr12, cc5, 1
	cmov gr9, gr12, cc5, 0
	cmp gr8,gr12,icc2
	cmov gr0, gr10, cc4, 0
	mov gr8, gr7
	bls icc2,0,.L1030
	setlos #32, gr5
	setlos #1, gr6
	bra .L1010
.L1014:
	beq icc1,0,.L1015
.L1010:
	slli gr12,#1,gr12
	cmp gr8,gr12,icc0
	addicc gr5, #-1, gr5, icc1
	slli gr6,#1,gr6
	bhi icc0,2,.L1014
.L1015:
	cmpi gr6, #0, icc2
	beq icc2,0,.L1013
.L1012:
	cmp gr7,gr12,icc0
	setlos #1, gr8
	cknc icc0, cc4
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr9
	cmpi gr9, #0, icc2
	sub gr7,gr12,gr11
	ckne icc2, cc5
	srlicc gr6, #1, gr6, icc1
	cmov gr11, gr7, cc5, 1
	srli gr12, #1, gr12
	bne icc1,2,.L1012
.L1017:
	mov gr7, gr8
.L1013:
	cmpi gr10, #0, icc0
	beq icc0,2,.L1008
	sub gr0,gr8,gr8
.L1008:
	ret
.L1030:
	sub gr8,gr12,gr4
	cknc icc2, cc6
	cmov gr4, gr7, cc6, 1
	bra .L1017
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov gr9, gr5
	mov gr8, gr6
	sethi #hi(#0),gr5
	sethi #hi(#0),gr8
	cmp gr5,gr8,icc0
	bnc icc0,0,.L1112
	slli gr9,#16,gr4
	srai gr4, #16, gr11
	cmpi gr11, #0, icc0
	bn icc0,0,.L1034
	slli gr5,#1,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1041
	slli gr4,#16,gr12
	srai gr12, #16, gr14
	cmpi gr14, #0, icc2
	bn icc2,0,.L1041
	slli gr5,#2,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1043
	slli gr4,#16,gr32
	srai gr32, #16, gr33
	cmpi gr33, #0, icc1
	bn icc1,0,.L1043
	slli gr5,#3,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1045
	slli gr4,#16,gr34
	srai gr34, #16, gr35
	cmpi gr35, #0, icc0
	bn icc0,0,.L1045
	slli gr5,#4,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1047
	slli gr4,#16,gr36
	srai gr36, #16, gr37
	cmpi gr37, #0, icc2
	bn icc2,0,.L1047
	slli gr5,#5,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1049
	slli gr4,#16,gr38
	srai gr38, #16, gr39
	cmpi gr39, #0, icc1
	bn icc1,0,.L1049
	slli gr5,#6,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1051
	slli gr4,#16,gr40
	srai gr40, #16, gr41
	cmpi gr41, #0, icc0
	bn icc0,0,.L1051
	slli gr5,#7,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1053
	slli gr4,#16,gr42
	srai gr42, #16, gr43
	cmpi gr43, #0, icc2
	bn icc2,0,.L1053
	slli gr5,#8,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1055
	slli gr4,#16,gr44
	srai gr44, #16, gr45
	cmpi gr45, #0, icc1
	bn icc1,0,.L1055
	slli gr5,#9,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1057
	slli gr4,#16,gr46
	srai gr46, #16, gr47
	cmpi gr47, #0, icc0
	bn icc0,0,.L1057
	slli gr5,#10,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1059
	slli gr4,#16,gr7
	srai gr7, #16, gr9
	cmpi gr9, #0, icc2
	bn icc2,0,.L1059
	slli gr5,#11,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1061
	slli gr4,#16,gr11
	srai gr11, #16, gr13
	cmpi gr13, #0, icc1
	bn icc1,0,.L1061
	slli gr5,#12,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1063
	slli gr4,#16,gr12
	srai gr12, #16, gr14
	cmpi gr14, #0, icc0
	bn icc0,0,.L1063
	slli gr5,#13,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1065
	slli gr4,#16,gr32
	srai gr32, #16, gr33
	cmpi gr33, #0, icc2
	bn icc2,0,.L1065
	slli gr5,#14,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1067
	slli gr4,#16,gr34
	srai gr34, #16, gr35
	cmpi gr35, #0, icc1
	bn icc1,0,.L1067
	slli gr5,#15,gr13
	sethi #hi(#0),gr13
	cmp gr8,gr13,icc2
	bls icc2,0,.L1068
	cmpi gr13, #0, icc0
	bne icc0,0,.L1113
.L1037:
	cmpi gr10, #0, icc2
	bne icc2,0,.L1083
	mov gr13, gr8
.L1083:
	ret
.L1041:
	setlos #2, gr36
.L1036:
	cmp gr8,gr4,icc1
	cknc icc1, cc6
	setlos #1, gr5
	cmov gr0, gr5, cc6, 0
	andi gr5,#0xff,gr37
	cmpi gr37, #0, icc2
	sub gr8,gr4,gr38
	ckne icc2, cc4
	cmov gr38, gr8, cc4, 1
	cmov gr6, gr8, cc4, 0
	sethi #hi(#0),gr8
	srli gr4, #1, gr40
	cknc icc1, cc5
	cmp gr8,gr40,icc1
	setlos #1, gr6
	cknc icc1, cc6
	cmov gr0, gr6, cc6, 0
	andi gr6,#0xff,gr41
	cmpi gr41, #0, icc0
	cmov gr36, gr38, cc5, 1
	cmov gr0, gr38, cc5, 0
	srli gr36, #1, gr39
	sub gr8,gr40,gr42
	ckne icc0, cc5
	cknc icc1, cc4
	sethi #hi(#0),gr38
	cmov gr0, gr39, cc4, 0
	cmov gr42, gr41, cc5, 1
	cmov gr8, gr41, cc5, 0
	or gr38, gr39, gr13
	mov gr41, gr8
	srlicc gr36, #2, gr43, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #2, gr44
	beq icc2,0,.L1037
	cmp gr8,gr44,icc1
	setlos #1, gr45
	cknc icc1, cc6
	cmov gr0, gr45, cc6, 0
	cmpi gr45, #0, icc0
	ckne icc0, cc4
	sub gr8,gr44,gr46
	cmov gr0, gr43, cc4, 0
	ckne icc0, cc5
	cmov gr41, gr46, cc5, 0
	or gr13, gr43, gr5
	mov gr46, gr8
	mov gr5, gr13
	srlicc gr36, #3, gr47, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #3, gr7
	beq icc2,0,.L1037
	cmp gr8,gr7,icc1
	setlos #1, gr9
	cknc icc1, cc6
	cmov gr0, gr9, cc6, 0
	cmpi gr9, #0, icc0
	ckne icc0, cc4
	sub gr8,gr7,gr11
	cmov gr0, gr47, cc4, 0
	ckne icc0, cc5
	cmov gr46, gr11, cc5, 0
	or gr13, gr47, gr5
	mov gr11, gr8
	mov gr5, gr13
	srlicc gr36, #4, gr14, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #4, gr32
	beq icc2,0,.L1037
	cmp gr8,gr32,icc1
	setlos #1, gr12
	cknc icc1, cc6
	cmov gr0, gr12, cc6, 0
	cmpi gr12, #0, icc0
	ckne icc0, cc4
	sub gr8,gr32,gr33
	cmov gr0, gr14, cc4, 0
	ckne icc0, cc5
	cmov gr11, gr33, cc5, 0
	or gr13, gr14, gr5
	mov gr33, gr8
	mov gr5, gr13
	srlicc gr36, #5, gr34, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #5, gr35
	beq icc2,0,.L1037
	cmp gr8,gr35,icc1
	setlos #1, gr37
	cknc icc1, cc6
	cmov gr0, gr37, cc6, 0
	cmpi gr37, #0, icc0
	ckne icc0, cc4
	sub gr8,gr35,gr38
	cmov gr0, gr34, cc4, 0
	ckne icc0, cc5
	cmov gr33, gr38, cc5, 0
	or gr13, gr34, gr5
	mov gr38, gr8
	mov gr5, gr13
	srlicc gr36, #6, gr39, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #6, gr40
	beq icc2,0,.L1037
	cmp gr8,gr40,icc1
	setlos #1, gr6
	cknc icc1, cc6
	cmov gr0, gr6, cc6, 0
	cmpi gr6, #0, icc0
	ckne icc0, cc4
	sub gr8,gr40,gr41
	cmov gr0, gr39, cc4, 0
	ckne icc0, cc5
	cmov gr38, gr41, cc5, 0
	or gr13, gr39, gr5
	mov gr41, gr8
	mov gr5, gr13
	srlicc gr36, #7, gr42, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #7, gr43
	beq icc2,0,.L1037
	cmp gr8,gr43,icc1
	setlos #1, gr44
	cknc icc1, cc6
	cmov gr0, gr44, cc6, 0
	cmpi gr44, #0, icc0
	ckne icc0, cc4
	sub gr8,gr43,gr45
	cmov gr0, gr42, cc4, 0
	ckne icc0, cc5
	cmov gr41, gr45, cc5, 0
	or gr13, gr42, gr5
	mov gr45, gr8
	mov gr5, gr13
	srlicc gr36, #8, gr46, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #8, gr47
	beq icc2,0,.L1037
	cmp gr8,gr47,icc1
	setlos #1, gr7
	cknc icc1, cc6
	cmov gr0, gr7, cc6, 0
	cmpi gr7, #0, icc0
	ckne icc0, cc4
	sub gr8,gr47,gr11
	cmov gr0, gr46, cc4, 0
	ckne icc0, cc5
	cmov gr45, gr11, cc5, 0
	or gr13, gr46, gr5
	mov gr11, gr8
	mov gr5, gr13
	srlicc gr36, #9, gr14, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #9, gr32
	beq icc2,0,.L1037
	cmp gr8,gr32,icc1
	setlos #1, gr9
	cknc icc1, cc6
	cmov gr0, gr9, cc6, 0
	cmpi gr9, #0, icc0
	ckne icc0, cc4
	sub gr8,gr32,gr33
	cmov gr0, gr14, cc4, 0
	ckne icc0, cc5
	cmov gr11, gr33, cc5, 0
	or gr13, gr14, gr5
	mov gr33, gr8
	mov gr5, gr13
	srlicc gr36, #10, gr34, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #10, gr35
	beq icc2,0,.L1037
	cmp gr8,gr35,icc1
	setlos #1, gr12
	cknc icc1, cc6
	cmov gr0, gr12, cc6, 0
	cmpi gr12, #0, icc0
	sub gr8,gr35,gr8
	ckne icc0, cc4
	ckne icc0, cc5
	cmov gr0, gr34, cc4, 0
	cmov gr8, gr33, cc5, 1
	or gr13, gr34, gr13
	mov gr33, gr8
	srlicc gr36, #11, gr37, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #11, gr38
	beq icc2,0,.L1037
	cmp gr8,gr38,icc1
	setlos #1, gr39
	cknc icc1, cc6
	cmov gr0, gr39, cc6, 0
	cmpi gr39, #0, icc0
	sub gr8,gr38,gr40
	ckne icc0, cc4
	ckne icc0, cc5
	cmov gr0, gr37, cc4, 0
	cmov gr40, gr33, cc5, 1
	or gr13, gr37, gr13
	mov gr33, gr8
	srlicc gr36, #12, gr6, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #12, gr41
	beq icc2,0,.L1037
	cmp gr8,gr41,icc1
	setlos #1, gr42
	cknc icc1, cc6
	cmov gr0, gr42, cc6, 0
	cmpi gr42, #0, icc0
	sub gr8,gr41,gr43
	ckne icc0, cc4
	ckne icc0, cc5
	cmov gr0, gr6, cc4, 0
	cmov gr43, gr33, cc5, 1
	or gr13, gr6, gr13
	mov gr33, gr8
	srlicc gr36, #13, gr44, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #13, gr45
	beq icc2,0,.L1037
	cmp gr8,gr45,icc1
	setlos #1, gr46
	cknc icc1, cc6
	cmov gr0, gr46, cc6, 0
	cmpi gr46, #0, icc0
	sub gr8,gr45,gr47
	ckne icc0, cc4
	ckne icc0, cc5
	cmov gr0, gr44, cc4, 0
	cmov gr47, gr33, cc5, 1
	or gr13, gr44, gr13
	mov gr33, gr8
	srlicc gr36, #14, gr11, icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #14, gr7
	beq icc2,0,.L1037
	cmp gr8,gr7,icc1
	setlos #1, gr14
	cknc icc1, cc6
	cmov gr0, gr14, cc6, 0
	cmpi gr14, #0, icc0
	sub gr8,gr7,gr32
	ckne icc0, cc4
	ckne icc0, cc5
	cmov gr0, gr11, cc4, 0
	setlos #16384, gr9
	cmov gr32, gr33, cc5, 1
	or gr13, gr11, gr13
	mov gr33, gr8
	cmp gr36,gr9,icc2
	sethi #hi(#0),gr8
	sethi #hi(#0),gr13
	srli gr4, #15, gr4
	beq icc2,0,.L1037
	cmp gr8,gr4,icc1
	setlos #1, gr36
	cknc icc1, cc6
	cmov gr0, gr36, cc6, 0
	andi gr36,#0xff,gr5
	cmpi gr5, #0, icc0
	sub gr8,gr4,gr8
	ckne icc0, cc4
	cmov gr33, gr8, cc4, 0
	sethi #hi(#0),gr8
	or gr5, gr13, gr13
	bra .L1037
.L1043:
	setlos #4, gr36
	bra .L1036
.L1045:
	setlos #8, gr36
	bra .L1036
.L1047:
	setlos #16, gr36
	bra .L1036
.L1057:
	setlos #512, gr36
	bra .L1036
.L1049:
	setlos #32, gr36
	bra .L1036
.L1051:
	setlos #64, gr36
	bra .L1036
.L1053:
	setlos #128, gr36
	bra .L1036
.L1055:
	setlos #256, gr36
	bra .L1036
.L1112:
	cmp gr5,gr8,icc1
	setlos #1, gr7
	ckeq icc1, cc4
	cmov gr0, gr7, cc4, 0
	andi gr7,#0xff,gr9
	cmpi gr9, #0, icc2
	sub gr8,gr5,gr8
	ckne icc2, cc5
	cmov gr6, gr8, cc5, 0
	sethi #hi(#0),gr8
	mov gr9, gr13
	bra .L1037
.L1059:
	setlos #1024, gr36
	bra .L1036
.L1061:
	setlos #2048, gr36
	bra .L1036
.L1063:
	setlos #4096, gr36
	bra .L1036
.L1065:
	setlos #8192, gr36
	bra .L1036
.L1067:
	setlos #16384, gr36
	bra .L1036
.L1113:
	sethi #hi(#32768), gr36
	setlo #lo(#32768), gr36
	mov gr36, gr4
	bra .L1036
.L1068:
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	mov gr4, gr36
	bra .L1036
.L1034:
	sub gr8,gr5,gr8
	sethi #hi(#0),gr8
	setlos #1, gr13
	bra .L1037
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp gr8,gr9,icc0
	mov gr8, gr5
	bls icc0,0,.L1132
	setlos #32, gr8
	setlos #1, gr4
	bra .L1115
.L1119:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L1117
	beq icc1,0,.L1118
.L1115:
	cmpi gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L1119
.L1120:
	setlos #0, gr8
.L1121:
	cmp gr5,gr9,icc1
	setlos #1, gr6
	cknc icc1, cc6
	cmov gr0, gr6, cc6, 0
	cmpi gr6, #0, icc0
	ckne icc0, cc4
	sub gr5,gr9,gr7
	cmov gr4, gr6, cc4, 1
	cmov gr0, gr6, cc4, 0
	ckne icc0, cc5
	srlicc gr4, #1, gr4, icc2
	cmov gr7, gr5, cc5, 1
	or gr8, gr6, gr8
	srli gr9, #1, gr9
	bne icc2,2,.L1121
.L1118:
	cmpi gr10, #0, icc1
	bne icc1,0,.L1133
	ret
.L1117:
	cmpi gr4, #0, icc2
	bne icc2,2,.L1120
	setlos #0, gr8
	bra .L1118
.L1133:
	mov gr5, gr8
	ret
.L1132:
	sub gr8,gr9,gr9
	cknc icc0, cc4
	setlos #1, gr8
	cknc icc0, cc5
	cmov gr0, gr8, cc4, 0
	cmov gr9, gr5, cc5, 1
	bra .L1118
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc5
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	andncr cc5, cc4, cc0
	setlos #-32, gr6
	setlos #32, gr5
	cadd gr10, gr6, gr10, cc5, 1
	cmov gr5, gr4, cc0, 1
	csll gr9, gr10, gr8, cc5, 1
	csub gr4, gr10, gr4, cc0, 1
	cmov gr0, gr9, cc5, 1
	csrl gr9, gr4, gr4, cc0, 1
	csll gr8, gr10, gr8, cc0, 1
	csll gr9, gr10, gr9, cc0, 1
	cor gr4, gr8, gr8, cc0, 1
	ret
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L1140
	addi gr10,#-32,gr10
	srai gr8, #31, gr11
	sra gr8, gr10, gr9
	mov gr11, gr8
.L1142:
	ret
.L1140:
	cmpi gr10, #0, icc1
	beq icc1,0,.L1142
	setlos #32, gr5
	sub gr5,gr10,gr6
	sll gr8,gr6,gr7
	srl gr9, gr10, gr9
	sra gr8, gr10, gr11
	or gr7, gr9, gr9
	mov gr11, gr8
	bra .L1142
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	mov gr9, gr4
	slli gr8,#8,gr6
	srli gr9, #24, gr5
	sethi #hi(#65280), gr12
	slli gr8,#24,gr10
	setlo #lo(#65280), gr12
	or gr6, gr5, gr14
	srli gr8, #8, gr9
	srli gr4, #8, gr7
	sethi #hi(#16711680), gr11
	setlo #lo(#16711680), gr11
	and gr9, gr12, gr33
	srli gr8, #24, gr8
	slli gr4,#24,gr32
	or gr10, gr7, gr34
	andi gr14, #255, gr13
	or gr8, gr33, gr35
	and gr14, gr11, gr36
	slli gr4,#8,gr37
	or gr32, gr13, gr38
	and gr34, gr12, gr39
	or gr35, gr36, gr40
	or gr38, gr39, gr41
	and gr37, gr11, gr42
	or gr40, gr10, gr9
	or gr41, gr42, gr8
	ret
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	sethi #hi(#65280), gr6
	srli gr8, #24, gr4
	slli gr8,#24,gr7
	srli gr8, #8, gr5
	setlo #lo(#65280), gr6
	sethi #hi(#16711680), gr11
	or gr4, gr7, gr9
	and gr5, gr6, gr10
	slli gr8,#8,gr8
	setlo #lo(#16711680), gr11
	or gr9, gr10, gr12
	and gr8, gr11, gr13
	or gr12, gr13, gr8
	ret
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	sethi #hi(#65535), gr5
	setlo #lo(#65535), gr5
	cmp gr8,gr5,icc0
	ckls icc0, cc4
	setlos #1, gr9
	cmov gr0, gr9, cc4, 0
	slli gr9,#4,gr11
	setlos #16, gr6
	sub gr6,gr11,gr7
	sethi #hi(#65280), gr10
	srl gr8, gr7, gr8
	setlo #lo(#65280), gr10
	andcc gr8, gr10, gr0, icc1
	ckeq icc1, cc5
	setlos #1, gr12
	cmov gr0, gr12, cc5, 0
	slli gr12,#3,gr13
	setlos #8, gr14
	sub gr14,gr13,gr32
	srl gr8, gr32, gr33
	andicc gr33, #240, gr0, icc2
	setlos #1, gr34
	ckeq icc2, cc6
	cmov gr0, gr34, cc6, 0
	slli gr34,#2,gr35
	setlos #4, gr36
	sub gr36,gr35,gr37
	srl gr33, gr37, gr38
	andicc gr38, #12, gr0, icc0
	setlos #1, gr39
	ckeq icc0, cc4
	cmov gr0, gr39, cc4, 0
	slli gr39,#1,gr40
	setlos #2, gr41
	sub gr41,gr40,gr42
	srl gr38, gr42, gr43
	andi gr43, #2, gr45
	add gr13,gr11,gr44
	cmpi gr45, #0, icc1
	sub gr41,gr43,gr47
	add gr35,gr44,gr46
	ckeq icc1, cc5
	cmov gr0, gr47, cc5, 0
	add gr40,gr46,gr4
	add gr47,gr4,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1151
	bgt icc0,0,.L1152
	cmp gr9,gr11,icc1
	bc icc1,0,.L1151
	bhi icc1,0,.L1152
	setlos #1, gr8
	ret
.L1151:
	setlos #0, gr8
	ret
.L1152:
	setlos #2, gr8
	ret
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1157
	bgt icc0,0,.L1156
	cmp gr9,gr11,icc1
	bc icc1,0,.L1157
	ckhi icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L1157:
	setlos #-1, gr8
	ret
.L1156:
	setlos #1, gr8
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	sethi #hi(#65535), gr5
	setlo #lo(#65535), gr5
	andcc gr8, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr7
	cmov gr0, gr7, cc4, 0
	slli gr7,#4,gr9
	srl gr8, gr9, gr8
	andi gr8, #255, gr6
	cmpi gr6, #0, icc1
	setlos #1, gr10
	ckeq icc1, cc5
	cmov gr0, gr10, cc5, 0
	slli gr10,#3,gr11
	srl gr8, gr11, gr12
	andicc gr12, #15, gr0, icc2
	setlos #1, gr13
	ckeq icc2, cc6
	cmov gr0, gr13, cc6, 0
	slli gr13,#2,gr14
	srl gr12, gr14, gr32
	andicc gr32, #3, gr0, icc0
	setlos #1, gr33
	ckeq icc0, cc4
	cmov gr0, gr33, cc4, 0
	slli gr33,#1,gr34
	srl gr32, gr34, gr35
	andi gr35, #3, gr36
	add gr11,gr9,gr37
	not gr36,gr38
	srli gr36, #1, gr39
	setlos #2, gr40
	add gr14,gr37,gr41
	andi gr38, #1, gr42
	sub gr40,gr39,gr43
	umul gr42,gr43,gr6
	add gr34,gr41,gr44
	add gr44,gr7,gr8
	ret
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc5
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	andncr cc5, cc4, cc0
	setlos #-32, gr6
	setlos #32, gr5
	cadd gr10, gr6, gr10, cc5, 1
	cmov gr5, gr4, cc0, 1
	csrl gr8, gr10, gr9, cc5, 1
	csub gr4, gr10, gr4, cc0, 1
	cmov gr0, gr8, cc5, 1
	csll gr8, gr4, gr4, cc0, 1
	csrl gr9, gr10, gr9, cc0, 1
	csrl gr8, gr10, gr8, cc0, 1
	cor gr4, gr9, gr9, cc0, 1
	ret
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	sethi #hi(#65535), gr10
	setlo #lo(#65535), gr10
	and gr8, gr10, gr12
	and gr9, gr10, gr6
	umul gr12,gr6,gr14
	srli gr8, #16, gr5
	umul gr6,gr5,gr6
	srli gr15, #16, gr4
	add gr4,gr7,gr11
	slli gr11,#16,gr8
	srli gr9, #16, gr14
	srli gr8, #16, gr7
	and gr10, gr15, gr9
	umul gr12,gr14,gr12
	add gr9,gr8,gr32
	add gr7,gr13,gr13
	srli gr11, #16, gr33
	umul gr5,gr14,gr4
	and gr32, gr10, gr34
	slli gr13,#16,gr35
	add gr33,gr5,gr36
	srli gr13, #16, gr37
	add gr34,gr35,gr9
	add gr36,gr37,gr8
	ret
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	sethi #hi(#65535), gr13
	setlo #lo(#65535), gr13
	and gr9, gr13, gr14
	and gr11, gr13, gr32
	umul gr14,gr32,gr4
	srli gr9, #16, gr6
	srli gr5, #16, gr4
	umul gr32,gr6,gr32
	add gr4,gr33,gr33
	slli gr33,#16,gr34
	srli gr11, #16, gr7
	umul gr14,gr7,gr14
	srli gr34, #16, gr12
	add gr12,gr15,gr35
	srli gr33, #16, gr36
	umul gr6,gr7,gr6
	add gr36,gr7,gr37
	and gr13, gr5, gr5
	srli gr35, #16, gr38
	umul gr9,gr10,gr6
	add gr5,gr34,gr39
	add gr37,gr38,gr40
	add gr7,gr40,gr41
	and gr39, gr13, gr9
	slli gr35,#16,gr10
	umul gr11,gr8,gr6
	add gr9,gr10,gr9
	add gr41,gr7,gr8
	ret
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.p2align 4
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	ret
	.size	__negdi2, .-__negdi2
	.p2align 4
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	xor gr8, gr9, gr8
	srli gr8, #16, gr4
	xor gr4, gr8, gr6
	srli gr6, #8, gr5
	xor gr5, gr6, gr7
	srli gr7, #4, gr9
	xor gr9, gr7, gr10
	andi gr10, #15, gr11
	setlos #27030, gr12
	sra gr12, gr11, gr13
	andi gr13, #1, gr8
	ret
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	srli gr8, #16, gr4
	xor gr4, gr8, gr6
	srli gr6, #8, gr5
	xor gr5, gr6, gr7
	srli gr7, #4, gr8
	xor gr8, gr7, gr9
	andi gr9, #15, gr10
	setlos #27030, gr11
	sra gr11, gr10, gr12
	andi gr12, #1, gr8
	ret
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	slli gr8,#31,gr6
	srli gr9, #1, gr11
	sethi #hi(#1431655765), gr7
	or gr6, gr11, gr5
	setlo #lo(#1431655765), gr7
	and gr5, gr7, gr12
	srli gr8, #1, gr10
	subcc gr9,gr12,gr9,icc0
	and gr10, gr7, gr4
	subx gr8,gr4,gr8,icc0
	slli gr8,#30,gr32
	srli gr9, #2, gr13
	sethi #hi(#858993459), gr14
	setlo #lo(#858993459), gr14
	or gr32, gr13, gr34
	srli gr8, #2, gr33
	and gr34, gr14, gr37
	and gr9, gr14, gr38
	addcc gr37,gr38,gr39,icc1
	and gr8, gr14, gr36
	and gr33, gr14, gr35
	addx gr35,gr36,gr40,icc1
	slli gr40,#28,gr41
	srli gr39, #4, gr42
	or gr41, gr42, gr43
	addcc gr43,gr39,gr45,icc2
	srli gr40, #4, gr44
	sethi #hi(#252645135), gr47
	setlo #lo(#252645135), gr47
	addx gr44,gr40,gr46,icc2
	and gr46, gr47, gr7
	and gr45, gr47, gr6
	add gr7,gr6,gr11
	srli gr11, #16, gr10
	add gr10,gr11,gr5
	srli gr5, #8, gr4
	add gr4,gr5,gr12
	andi gr12, #127, gr8
	ret
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	sethi #hi(#1431655765), gr5
	srli gr8, #1, gr4
	setlo #lo(#1431655765), gr5
	and gr4, gr5, gr6
	sub gr8,gr6,gr8
	sethi #hi(#858993459), gr7
	setlo #lo(#858993459), gr7
	srli gr8, #2, gr9
	and gr8, gr7, gr11
	and gr9, gr7, gr10
	add gr10,gr11,gr12
	srli gr12, #4, gr13
	sethi #hi(#252645135), gr32
	add gr13,gr12,gr14
	setlo #lo(#252645135), gr32
	and gr14, gr32, gr33
	srli gr33, #16, gr34
	add gr34,gr33,gr35
	srli gr35, #8, gr36
	add gr36,gr35,gr37
	andi gr37, #63, gr8
	ret
	.size	__popcountsi2, .-__popcountsi2
	.p2align 4
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	movsg lr, gr5
	addi sp,#40,fp
	stdi gr20, @(sp,8)
	stdi gr22, @(sp,16)
	stdi gr18, @(sp,0)
	stdi gr24, @(sp,24)
	sti gr26, @(sp,32)
	sethi #hi(#1072693248), gr22
	sti gr5, @(fp,8)
	andicc gr10, #1, gr0, icc0
	mov gr10, gr26
	mov gr10, gr18
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	mov gr15, gr24
	mov gr8, gr20
	mov gr9, gr21
	beq icc0,2,.L1172
	sethi #gotofffuncdeschi(__muld), gr19
.L1174:
	setlo #gotofffuncdesclo(__muld), gr19
	ldd @(gr19,gr24), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L1172:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc1
	beq icc1,0,.L1173
	sethi #gotofffuncdeschi(__muld), gr19
	mov gr19, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L1175:
	ldd @(gr25,gr24), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr6
	andicc gr18, #1, gr0, icc2
	add gr6,gr18,gr7
	mov gr8, gr20
	mov gr9, gr21
	bne icc2,2,.L1174
	srai gr7, #1, gr18
	bra .L1175
.L1173:
	cmpi gr26, #0, icc0
	bp icc0,2,.L1171
	sethi #gotofffuncdeschi(__divd), gr8
	setlo #gotofffuncdesclo(__divd), gr8
	ldd @(gr8,gr24), gr14
	sethi #hi(#1072693248), gr8
	mov gr22, gr10
	mov gr23, gr11
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L1171:
	mov gr22, gr8
	mov gr23, gr9
	lddi @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi @(sp,16), gr22
	lddi @(sp,24), gr24
	ldi @(sp,32), gr26
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr10,gr0)
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	sethi #hi(#1065353216), gr5
	setlo #lo(#1065353216), gr5
	andicc gr9, #1, gr0, icc0
	movgf gr5, fr1
	movgf gr8, fr0
	mov gr9, gr10
	beq icc0,2,.L1179
.L1181:
	fmuls fr1,fr0,fr1
.L1179:
	srli gr10, #31, gr6
	add gr6,gr10,gr4
	sraicc gr4, #1, gr10, icc1
	beq icc1,0,.L1180
	srli gr10, #31, gr7
	andicc gr10, #1, gr0, icc2
	add gr7,gr10,gr8
	fmuls fr0,fr0,fr0
	bne icc2,2,.L1181
.L1185:
	srai gr8, #1, gr10
	srli gr10, #31, gr7
	andicc gr10, #1, gr0, icc2
	add gr7,gr10,gr8
	fmuls fr0,fr0,fr0
	bne icc2,2,.L1181
	bra .L1185
.L1180:
	cmpi gr9, #0, icc0
	bp icc0,2,.L1178
	sethi #hi(#1065353216), gr9
	setlo #lo(#1065353216), gr9
	movgf gr9, fr2
	fdivs fr2,fr1,fr1
.L1178:
	movfg fr1, gr8
	ret
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1190
	bhi icc0,0,.L1191
	cmp gr9,gr11,icc1
	bc icc1,0,.L1190
	bhi icc1,0,.L1191
	setlos #1, gr8
	ret
.L1190:
	setlos #0, gr8
	ret
.L1191:
	setlos #2, gr8
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1196
	bhi icc0,0,.L1195
	cmp gr9,gr11,icc1
	bc icc1,0,.L1196
	ckhi icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L1196:
	setlos #-1, gr8
	ret
.L1195:
	setlos #1, gr8
	ret
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.sbss,"aw",@nobits
	.p2align 2
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.p2align 3
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.section	.rodata
	.p2align 2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.globl __divd
	.globl __floatundisf
	.globl __floatundidf
	.globl __floatunsidf
	.globl __clzdi2
	.globl __clzsi2
	.globl __gedf2
	.globl __ledf2
	.globl __muld
	.globl __nedf2
	.globl __addd
	.globl __itod
	.globl __modll
	.globl __divll
	.globl __mulll
	.globl __ltdf2
	.globl __unordsf2
	.globl __subd
	.globl __gtdf2
	.globl __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
