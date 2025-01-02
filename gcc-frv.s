	.file	"mini-libc.c"
	.text
	.p2align 4
	.globl memmove
	.type	memmove, @function
memmove:
	cmp gr8,gr9,icc0
	bls icc0,2,.L2
	cmpi gr10, #0, icc0
	beq icc0,0,.L3
	addi gr9,#-1,gr9
	addi gr8,#-1,gr5
.L4:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr5,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L4
.L3:
	ret
.L2:
	cmp gr8,gr9,icc0
	beq icc0,0,.L3
	cmpi gr10, #0, icc0
	beq icc0,0,.L3
	addi gr10,#-1,gr4
	cmpi gr4,#6,icc0
	bls icc0,0,.L12
	or gr9, gr8, gr4
	andicc gr4, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L12
	addi gr9,#1,gr4
	sub gr8,gr4,gr4
	cmpi gr4,#2,icc0
	ckhi icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L12
	andi gr10, #-4, gr6
	setlos #0, gr4
.L6:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	cmp gr4,gr6,icc0
	bne icc0,2,.L6
	cmp gr10,gr4,icc0
	add gr9,gr4,gr6
	add gr8,gr4,gr5
	sub gr10,gr4,gr10
	beq icc0,0,.L3
	ldsb @(gr9,gr4),gr7
	cmpi gr10,#1,icc0
	stb gr7, @(gr8,gr4)
	beq icc0,0,.L3
	ldsbi @(gr6,1),gr4
	cmpi gr10,#2,icc0
	stbi gr4, @(gr5,1)
	beq icc0,0,.L3
	ldsbi @(gr6,2),gr4
	stbi gr4, @(gr5,2)
	ret
.L12:
	setlos #0, gr4
.L9:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L9
	ret
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	cmpi gr11, #0, icc0
	andi gr10, #255, gr5
	bne icc0,2,.L36
	bra .L38
.L39:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	beq icc1,0,.L38
.L36:
	ldub @(gr9,gr0),gr4
	addicc gr11, #-1, gr11, icc1
	stb gr4, @(gr8,gr0)
	cmp gr4,gr5,icc0
	bne icc0,2,.L39
	addi gr8,#1,gr8
	ret
.L38:
	setlos #0, gr8
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	cmpi gr10, #0, icc0
	andi gr9, #255, gr5
	bne icc0,2,.L46
	bra .L49
.L48:
	addi gr8,#1,gr8
	beq icc1,0,.L49
.L46:
	ldub @(gr8,gr0),gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc0
	bne icc0,2,.L48
	ret
.L49:
	setlos #0, gr8
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L52
	bra .L56
.L54:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	beq icc1,0,.L56
.L52:
	ldub @(gr8,gr0),gr4
	ldub @(gr9,gr0),gr5
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc0
	beq icc0,2,.L54
	sub gr4,gr5,gr8
	ret
.L56:
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
	mov gr8, gr4
	beq icc0,0,.L60
	sethi #gotofffuncdeschi(memcpy), gr5
	setlo #gotofffuncdesclo(memcpy), gr5
	ldd @(gr5,gr15), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
.L60:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	mov gr4, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	addi gr10,#-1,gr4
	andi gr9, #255, gr7
	add gr8,gr4,gr4
	addi gr8,#-1,gr6
	bra .L65
.L67:
	ldub @(gr8,gr0),gr5
	addi gr4,#-1,gr4
	cmp gr5,gr7,icc0
	beq icc0,0,.L64
.L65:
	cmp gr4,gr6,icc0
	mov gr4, gr8
	bne icc0,2,.L67
	setlos #0, gr8
.L64:
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
	mov gr8, gr4
	beq icc0,0,.L71
	sethi #gotofffuncdeschi(memset), gr5
	setlo #gotofffuncdesclo(memset), gr5
	ldd @(gr5,gr15), gr14
	andi gr9, #255, gr9
	calll @(gr14,gr0)
	mov gr8, gr4
.L71:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	mov gr4, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L73
.L74:
	ldsbi @(gr9,1),gr4
	addi gr8,#1,gr8
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	addi gr9,#1,gr9
	bne icc0,2,.L74
.L73:
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	ldsb @(gr8,gr0),gr4
	andi gr9, #255, gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L80
	bra .L79
.L82:
	ldsbi @(gr8,1),gr4
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L79
.L80:
	andi gr4,#0xff,gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L82
.L79:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L88:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc1
	cmpi gr4, #0, icc0
	beq icc1,0,.L87
	addi gr8,#1,gr8
	bne icc0,2,.L88
	setlos #0, gr8
.L87:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr4
	ldsb @(gr9,gr0),gr6
	cmp gr4,gr6,icc0
	bne icc0,0,.L96
	setlos #1, gr5
	addi gr9,#-1,gr7
	bra .L91
.L93:
	ldsb @(gr8,gr5),gr4
	addi gr5,#1,gr5
	ldsb @(gr7,gr5),gr6
	cmp gr4,gr6,icc0
	bne icc0,0,.L96
.L91:
	cmpi gr4, #0, icc0
	bne icc0,2,.L93
	andi gr6,#0xff,gr6
	setlos #0, gr8
	sub gr8,gr6,gr8
	ret
.L96:
	andi gr4,#0xff,gr8
	andi gr6,#0xff,gr6
	sub gr8,gr6,gr8
	ret
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L100
	mov gr8, gr5
.L99:
	ldsbi @(gr5,1),gr4
	addi gr5,#1,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L99
	sub gr5,gr8,gr8
	ret
.L100:
	setlos #0, gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L110
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L112
	addi gr10,#-1,gr6
	add gr8,gr6,gr6
	bra .L106
.L114:
	beq icc1,0,.L105
	bne icc2,0,.L105
	ldub @(gr8,gr0),gr4
	addi gr9,#1,gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L113
	mov gr5, gr9
.L106:
	ldub @(gr9,gr0),gr5
	cmp gr8,gr6,icc1
	cmpi gr5, #0, icc0
	addi gr8,#1,gr8
	cmp gr5,gr4,icc2
	bne icc0,2,.L114
.L105:
	sub gr4,gr5,gr8
.L102:
	ret
.L110:
	setlos #0, gr8
	ret
.L113:
	ldubi @(gr9,1),gr5
	sub gr4,gr5,gr8
	bra .L102
.L112:
	ldub @(gr9,gr0),gr5
	sub gr4,gr5,gr8
	bra .L102
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L115
	andi gr10, #-2, gr6
	add gr8,gr6,gr6
.L117:
	ldsbi @(gr8,1),gr5
	ldsb @(gr8,gr0),gr4
	addi gr8,#2,gr8
	stb gr5, @(gr9,gr0)
	stbi gr4, @(gr9,1)
	cmp gr8,gr6,icc0
	addi gr9,#2,gr9
	bne icc0,2,.L117
.L115:
	ret
	.size	swab, .-swab
	.p2align 4
	.globl isalpha
	.type	isalpha, @function
isalpha:
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#25,icc0
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
	beq icc0,0,.L123
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L123:
	setlos #1, gr8
	ret
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L126
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L126:
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
	beq icc0,0,.L133
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L133:
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
	bls icc0,2,.L139
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bhi icc0,2,.L140
.L139:
	setlos #1, gr8
	ret
.L140:
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L139
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
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
	bls icc0,0,.L149
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L147
	setlos #-8234, gr4
	sethi #hi(#47061), gr5
	add gr8,gr4,gr4
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L147
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L147
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	sethi #hi(#1048579), gr5
	add gr8,gr4,gr4
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L148
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L147:
	setlos #1, gr8
	ret
.L149:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L148:
	setlos #0, gr8
	ret
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L152
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L152:
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L157
	ldd @(gr20,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L158
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	bgt icc0,2,.L162
	setlos #0, gr8
	setlos #0, gr9
.L154:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L162:
	sethi #gotofffuncdeschi(__subd), gr4
	setlo #gotofffuncdesclo(__subd), gr4
	ldd @(gr4,gr21), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	bra .L154
.L157:
	mov gr18, gr8
	mov gr19, gr9
	bra .L154
.L158:
	mov gr22, gr8
	mov gr23, gr9
	bra .L154
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr9, gr21
	mov gr8, gr9
	mov gr8, gr18
	add gr4,gr20,gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L166
	ldd @(gr19,gr0), gr14
	mov gr21, gr9
	mov gr21, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L167
	sethi #gotofffuncdeschi(__gtsf2), gr4
	setlo #gotofffuncdesclo(__gtsf2), gr4
	ldd @(gr4,gr20), gr14
	mov gr21, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	bgt icc0,2,.L171
	setlos #0, gr8
.L163:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L171:
	sethi #gotofffuncdeschi(__subf), gr4
	setlo #gotofffuncdesclo(__subf), gr4
	ldd @(gr4,gr20), gr14
	mov gr21, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L166:
	mov gr18, gr8
	bra .L163
.L167:
	mov gr21, gr8
	bra .L163
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr22
	mov gr9, gr23
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L180
	ldd @(gr20,gr0), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L179
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr22, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L181
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L180
.L179:
	mov gr22, gr8
	mov gr23, gr9
	bra .L172
.L181:
	cmpi gr5, #0, icc0
	beq icc0,2,.L179
.L180:
	mov gr18, gr8
	mov gr19, gr9
.L172:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr9, gr18
	mov gr8, gr9
	mov gr8, gr20
	add gr4,gr21,gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L190
	ldd @(gr19,gr0), gr14
	mov gr18, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L189
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L191
	sethi #gotofffuncdeschi(__ltsf2), gr4
	setlo #gotofffuncdesclo(__ltsf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr18, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L190
	mov gr20, gr18
.L190:
	mov gr18, gr8
	ldi @(sp,4), gr19
	ldi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L191:
	cmpi gr5, #0, icc0
	bne icc0,2,.L190
.L189:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr22
	mov gr9, gr23
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L200
	ldd @(gr20,gr0), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L199
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr22, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L201
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L200
.L199:
	mov gr22, gr8
	mov gr23, gr9
	bra .L192
.L201:
	cmpi gr5, #0, icc0
	beq icc0,2,.L199
.L200:
	mov gr18, gr8
	mov gr19, gr9
.L192:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L208
	ldd @(gr20,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L210
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr22, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L211
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L208
.L210:
	mov gr18, gr8
	mov gr19, gr9
	bra .L202
.L211:
	cmpi gr5, #0, icc0
	bne icc0,2,.L210
.L208:
	mov gr22, gr8
	mov gr23, gr9
.L202:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr9, gr20
	mov gr8, gr9
	mov gr8, gr18
	add gr4,gr21,gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L218
	ldd @(gr19,gr0), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L220
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L221
	sethi #gotofffuncdeschi(__ltsf2), gr4
	setlo #gotofffuncdesclo(__ltsf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr20, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L220
	mov gr20, gr18
.L220:
	mov gr18, gr8
	ldi @(sp,4), gr19
	ldi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L221:
	cmpi gr5, #0, icc0
	bne icc0,2,.L220
.L218:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L228
	ldd @(gr20,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L230
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr22, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L231
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L228
.L230:
	mov gr18, gr8
	mov gr19, gr9
	bra .L222
.L231:
	cmpi gr5, #0, icc0
	bne icc0,2,.L230
.L228:
	mov gr22, gr8
	mov gr23, gr9
.L222:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	fminl, .-fminl
	.p2align 4
	.globl l64a
	.type	l64a, @function
l64a:
	cmpi gr8, #0, icc0
	beq icc0,0,.L235
	sethi #gotoffhi(s.0), gr7
	ldi @(gr15,#got12(_gp)), gr5
	mov gr7, gr4
	sethi #gprelhi(digits), gr6
	setlo #gotofflo(s.0), gr4
	setlo #gprello(digits), gr6
	add gr4,gr15,gr4
	add gr6,gr5,gr6
.L234:
	andi gr8, #63, gr5
	ldsb @(gr6,gr5),gr5
	srlicc gr8, #6, gr8, icc0
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	bne icc0,2,.L234
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr4,gr0)
	ret
.L235:
	sethi #gotoffhi(s.0), gr7
	mov gr7, gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr4,gr0)
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
	ldi @(fp,8), gr5
	srli gr8, #1, gr4
	ld @(fp,gr0), fp
	mov gr4, gr8
	addi sp,#24,sp
	jmpl @(gr5,gr0)
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
	andncr cc5, cc4, cc4
	cst gr8, @(gr4,gr5), cc4, 1
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
	ldi @(gr8,4), gr5
	cmpi gr5, #0, icc0
	ckne icc0, cc4
	cst gr4, @(gr5,gr0), cc4, 1
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
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr27, @(sp,36)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr25, @(sp,28)
	sti gr26, @(sp,32)
	ld @(gr10,gr0), gr25
	mov gr10, gr22
	cmpi gr25, #0, icc0
	mov gr15, gr24
	mov gr8, gr21
	mov gr9, gr23
	mov gr11, gr20
	mov gr12, gr27
	beq icc0,0,.L255
	mov gr9, gr18
	setlos #0, gr19
	bra .L257
.L269:
	add gr18,gr20,gr18
	beq icc1,0,.L255
.L257:
	ldd @(gr27,gr0), gr14
	mov gr18, gr9
	mov gr21, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc0
	mov gr18, gr26
	cmp gr25,gr19,icc1
	bne icc0,2,.L269
.L254:
	mov gr26, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(sp,32), gr26
	ldi @(sp,36), gr27
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
.L255:
	addi gr25,#1,gr6
	umul gr20,gr25,gr4
	st gr6, @(gr22,gr0)
	cmpi gr20, #0, icc0
	add gr23,gr5,gr26
	beq icc0,0,.L254
	sethi #gotofffuncdeschi(memmove), gr4
	setlo #gotofffuncdesclo(memmove), gr4
	ldd @(gr4,gr24), gr14
	mov gr20, gr10
	mov gr21, gr9
	mov gr26, gr8
	calll @(gr14,gr0)
	bra .L254
	.size	lsearch, .-lsearch
	.p2align 4
	.globl lfind
	.type	lfind, @function
lfind:
	addi sp,#-48,sp
	sti gr23, @(sp,20)
	ld @(gr10,gr0), gr23
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr24, @(sp,24)
	cmpi gr23, #0, icc0
	mov gr8, gr20
	mov gr11, gr22
	mov gr12, gr21
	beq icc0,0,.L271
	mov gr9, gr18
	setlos #0, gr19
	bra .L273
.L281:
	add gr18,gr22,gr18
	beq icc1,0,.L271
.L273:
	ldd @(gr21,gr0), gr14
	mov gr18, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc0
	mov gr18, gr24
	cmp gr23,gr19,icc1
	bne icc0,2,.L281
.L270:
	mov gr24, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
.L271:
	setlos #0, gr24
	bra .L270
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
	mov gr8, gr4
.L290:
	ldsb @(gr4,gr0),gr5
	addi gr5,#-9,gr6
	cmpi gr5,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L284
	bls icc1,2,.L284
	cmpi gr5,#43,icc0
	beq icc0,0,.L285
	cmpi gr5,#45,icc0
	bne icc0,2,.L303
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L295
	setlos #1, gr10
.L288:
	setlos #0, gr8
.L292:
	smuli gr8,#10,gr8
	ldsbi @(gr4,1),gr5
	mov gr9, gr7
	sub gr7,gr6,gr8
	mov gr6, gr9
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	addi gr4,#1,gr4
	bls icc0,2,.L292
	cmpi gr10, #0, icc0
	bne icc0,2,.L283
	sub gr9,gr7,gr8
.L283:
	ret
.L284:
	addi gr4,#1,gr4
	bra .L290
.L303:
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L295
.L296:
	setlos #0, gr10
	bra .L288
.L285:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bls icc0,2,.L296
.L295:
	setlos #0, gr8
	ret
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	mov gr8, gr4
.L309:
	ldsb @(gr4,gr0),gr5
	addi gr5,#-9,gr6
	cmpi gr5,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L305
	bls icc1,2,.L305
	cmpi gr5,#43,icc0
	beq icc0,0,.L306
	cmpi gr5,#45,icc0
	beq icc0,2,.L307
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L316
	setlos #0, gr10
.L310:
	setlos #0, gr8
.L313:
	smuli gr8,#10,gr8
	ldsbi @(gr4,1),gr5
	mov gr9, gr7
	sub gr7,gr6,gr8
	mov gr6, gr9
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	addi gr4,#1,gr4
	bls icc0,2,.L313
	cmpi gr10, #0, icc0
	bne icc0,2,.L304
	sub gr9,gr7,gr8
.L304:
	ret
.L305:
	addi gr4,#1,gr4
	bra .L309
.L307:
	ldsbi @(gr4,1),gr5
	setlos #1, gr10
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	addi gr4,#1,gr4
	bls icc0,2,.L310
.L316:
	setlos #0, gr8
	ret
.L306:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L316
	setlos #0, gr10
	bra .L310
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	mov gr8, gr10
.L331:
	ldsb @(gr10,gr0),gr8
	addi gr8,#-9,gr4
	cmpi gr8,#32,icc0
	cmpi gr4,#4,icc1
	beq icc0,0,.L325
	bls icc1,2,.L325
	cmpi gr8,#43,icc0
	beq icc0,0,.L326
	cmpi gr8,#45,icc0
	bne icc0,2,.L344
	ldsbi @(gr10,1),gr8
	addi gr10,#1,gr10
	addi gr8,#-48,gr11
	cmpi gr11,#9,icc0
	bhi icc0,0,.L336
	setlos #1, gr18
.L329:
	setlos #0, gr8
	setlos #0, gr9
.L333:
	srli gr9, #30, gr4
	slli gr8,#2,gr6
	slli gr9,#2,gr7
	addcc gr7,gr9,gr5,icc0
	or gr4, gr6, gr6
	addx gr6,gr8,gr4,icc0
	ldsbi @(gr10,1),gr8
	mov gr11, gr13
	srli gr5, #31, gr15
	slli gr5,#1,gr9
	srai gr11, #31, gr12
	slli gr4,#1,gr14
	addi gr8,#-48,gr11
	or gr15, gr14, gr4
	mov gr9, gr5
	cmpi gr11,#9,icc0
	subcc gr9,gr13,gr9,icc1
	addi gr10,#1,gr10
	subx gr4,gr12,gr8,icc1
	bls icc0,2,.L333
	cmpi gr18, #0, icc0
	bne icc0,2,.L324
	subcc gr13,gr5,gr9,icc0
	subx gr12,gr4,gr8,icc0
.L324:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L325:
	addi gr10,#1,gr10
	bra .L331
.L344:
	addi gr8,#-48,gr11
	cmpi gr11,#9,icc0
	bhi icc0,0,.L336
.L337:
	setlos #0, gr18
	bra .L329
.L326:
	ldsbi @(gr10,1),gr8
	addi gr10,#1,gr10
	addi gr8,#-48,gr11
	cmpi gr11,#9,icc0
	bls icc0,2,.L337
.L336:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	setlos #0, gr8
	setlos #0, gr9
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	atoll, .-atoll
	.p2align 4
	.globl bsearch
	.type	bsearch, @function
bsearch:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sti gr18, @(sp,0)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr5, @(fp,8)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	cmpi gr10, #0, icc0
	mov gr10, gr18
	mov gr8, gr23
	mov gr9, gr22
	mov gr11, gr21
	mov gr12, gr24
	bne icc0,2,.L349
	bra .L346
.L355:
	beq icc0,0,.L345
	sub gr18,gr19,gr18
	cmpi gr18, #0, icc0
	add gr20,gr21,gr22
	beq icc0,0,.L346
.L349:
	srli gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	ldd @(gr24,gr0), gr14
	mov gr20, gr9
	mov gr23, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	addi gr18,#-1,gr18
	bp icc0,2,.L355
	mov gr19, gr18
	cmpi gr18, #0, icc0
	bne icc0,2,.L349
.L346:
	setlos #0, gr20
.L345:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	bsearch, .-bsearch
	.p2align 4
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sti gr18, @(sp,0)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	sti gr5, @(fp,8)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	cmpi gr10, #0, icc0
	mov gr10, gr18
	mov gr8, gr24
	mov gr9, gr22
	mov gr11, gr21
	mov gr12, gr25
	mov gr13, gr23
	beq icc0,0,.L361
.L357:
	srai gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	ldd @(gr25,gr0), gr14
	mov gr23, gr10
	mov gr20, gr9
	mov gr24, gr8
	calll @(gr14,gr0)
	addi gr18,#-1,gr18
	cmpi gr8, #0, icc0
	cmpi gr8,#0,icc1
	sraicc gr18, #1, gr18, icc2
	beq icc0,0,.L356
	cmpi gr19, #0, icc0
	ble icc1,0,.L359
	add gr20,gr21,gr22
	bne icc2,2,.L357
.L361:
	setlos #0, gr20
.L356:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
.L359:
	beq icc0,0,.L361
	mov gr19, gr18
	bra .L357
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
	ldi @(sp,8), gr5
	mov gr3, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	div, .-div
	.p2align 4
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L373
	ret
.L373:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
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
	sti gr3, @(fp,4)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__divll), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr3, gr21
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__modll), gr4
	st gr8, @(gr21,gr0)
	sti gr9, @(gr21,4)
	setlo #gotofffuncdesclo(__modll), gr4
	ldd @(gr4,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	sti gr8, @(gr21,8)
	sti gr9, @(gr21,12)
	mov gr21, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	ldi @(sp,8), gr5
	mov gr3, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	ldiv, .-ldiv
	.p2align 4
	.globl llabs
	.type	llabs, @function
llabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L380
	ret
.L380:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
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
	sti gr3, @(fp,4)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__divll), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr3, gr21
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__modll), gr4
	st gr8, @(gr21,gr0)
	sti gr9, @(gr21,4)
	setlo #gotofffuncdesclo(__modll), gr4
	ldd @(gr4,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	sti gr8, @(gr21,8)
	sti gr9, @(gr21,12)
	mov gr21, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	lldiv, .-lldiv
	.p2align 4
	.globl wcschr
	.type	wcschr, @function
wcschr:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L383
	bra .L386
.L385:
	ldi @(gr8,4), gr4
	addi gr8,#4,gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L386
.L383:
	cmp gr9,gr4,icc0
	bne icc0,2,.L385
	ret
.L386:
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
	bne icc0,0,.L390
	setlos #4, gr4
	addi gr9,#-4,gr7
	bra .L389
.L391:
	ld @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L390
.L389:
	cmpi gr5, #0, icc0
	bne icc0,2,.L391
.L390:
	cmp gr5,gr6,icc0
	ckge icc0, cc5
	setlos #1, gr4
	cckgt icc0, cc4, cc5, 1
	cmov gr4, gr8, cc5, 1
	andcr cc5, cc4, cc4
	setlos #-1, gr5
	cmov gr0, gr8, cc4, 0
	cmov gr5, gr8, cc5, 0
	ret
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr5
.L396:
	ld @(gr9,gr5), gr4
	st gr4, @(gr8,gr5)
	cmpi gr4, #0, icc0
	addi gr5,#4,gr5
	bne icc0,2,.L396
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L401
	mov gr8, gr5
.L400:
	ldi @(gr5,4), gr4
	addi gr5,#4,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L400
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
.L401:
	setlos #0, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L404
	bra .L409
.L411:
	beq icc1,0,.L406
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc2,0,.L409
.L404:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmpi gr4, #0, icc1
	cmp gr4,gr5,icc0
	addicc gr10, #-1, gr10, icc2
	beq icc0,2,.L411
.L406:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L412
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L412:
	setlos #-1, gr8
	ret
.L409:
	setlos #0, gr8
	ret
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	bne icc0,2,.L414
	bra .L417
.L416:
	addi gr8,#4,gr8
	beq icc1,0,.L417
.L414:
	ld @(gr8,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr9,icc0
	bne icc0,2,.L416
	ret
.L417:
	setlos #0, gr8
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L420
	bra .L425
.L422:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc1,0,.L425
.L420:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr5,gr4,icc0
	beq icc0,2,.L422
	blt icc0,2,.L428
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L425:
	setlos #0, gr8
	ret
.L428:
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
	mov gr8, gr4
	beq icc0,0,.L430
	sethi #gotofffuncdeschi(memcpy), gr5
	setlo #gotofffuncdesclo(memcpy), gr5
	ldd @(gr5,gr15), gr14
	slli gr10,#2,gr10
	calll @(gr14,gr0)
	mov gr8, gr4
.L430:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	mov gr4, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L442
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	addi gr10,#-1,gr4
	bnc icc0,2,.L447
	cmpi gr10, #0, icc0
	beq icc0,0,.L442
	slli gr4,#2,gr4
.L439:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
	cmpi gr4,#-4,icc0
	bne icc0,2,.L439
.L442:
	ret
.L447:
	cmpi gr10, #0, icc0
	setlos #0, gr5
	beq icc0,0,.L442
.L437:
	ld @(gr9,gr5), gr6
	addi gr4,#-1,gr4
	st gr6, @(gr8,gr5)
	cmpi gr4,#-1,icc0
	addi gr5,#4,gr5
	bne icc0,2,.L437
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L449
	mov gr8, gr5
.L450:
	addi gr4,#-1,gr4
	st gr9, @(gr5,gr0)
	cmpi gr4,#-1,icc0
	addi gr5,#4,gr5
	bne icc0,2,.L450
.L449:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	mov gr9, gr4
	bnc icc0,2,.L456
	cmpi gr10, #0, icc0
	beq icc0,0,.L455
	addi gr8,#-1,gr8
	addi gr9,#-1,gr4
.L458:
	ldsb @(gr8,gr10),gr5
	stb gr5, @(gr4,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L458
.L455:
	ret
.L456:
	cmp gr8,gr9,icc0
	beq icc0,0,.L455
	cmpi gr10, #0, icc0
	beq icc0,0,.L455
	addi gr10,#-1,gr5
	cmpi gr5,#6,icc0
	bls icc0,0,.L466
	or gr9, gr8, gr5
	andicc gr5, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L466
	addi gr8,#1,gr5
	sub gr9,gr5,gr5
	cmpi gr5,#2,icc0
	ckhi icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L466
	andi gr10, #-4, gr7
	setlos #0, gr5
.L460:
	ld @(gr8,gr5), gr6
	st gr6, @(gr4,gr5)
	addi gr5,#4,gr5
	cmp gr5,gr7,icc0
	bne icc0,2,.L460
	cmp gr10,gr5,icc0
	add gr4,gr5,gr6
	add gr8,gr5,gr7
	sub gr10,gr5,gr10
	beq icc0,0,.L455
	ldsb @(gr8,gr5),gr8
	cmpi gr10,#1,icc0
	stb gr8, @(gr4,gr5)
	beq icc0,0,.L455
	ldsbi @(gr7,1),gr4
	cmpi gr10,#2,icc0
	stbi gr4, @(gr6,1)
	beq icc0,0,.L455
	ldsbi @(gr7,2),gr4
	stbi gr4, @(gr6,2)
	ret
.L466:
	setlos #0, gr5
.L463:
	ldsb @(gr8,gr5),gr6
	stb gr6, @(gr4,gr5)
	addi gr5,#1,gr5
	cmp gr10,gr5,icc0
	bne icc0,2,.L463
	ret
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	setlos #31, gr4
	sub gr4,gr10,gr6
	addi gr10,#-32,gr11
	sub gr0,gr10,gr5
	srli gr9, #1, gr13
	andi gr5, #63, gr5
	cmpi gr11, #0, icc1
	srl gr13, gr6, gr13
	sll gr8,gr10,gr6
	sub gr4,gr5,gr4
	addi gr5,#-32,gr7
	sll gr9,gr11,gr11
	or gr13, gr6, gr6
	ckp icc1, cc4
	slli gr8,#1,gr12
	cmpi gr7, #0, icc0
	sll gr12,gr4,gr12
	sll gr9,gr10,gr10
	srl gr9, gr5, gr4
	cmov gr11, gr6, cc4, 1
	ckp icc1, cc4
	srl gr8, gr7, gr7
	or gr12, gr4, gr4
	cmov gr0, gr10, cc4, 1
	ckp icc0, cc4
	srl gr8, gr5, gr8
	cmov gr7, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr8, cc4, 1
	or gr4, gr10, gr9
	or gr8, gr6, gr8
	ret
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	setlos #31, gr4
	sub gr4,gr10,gr6
	addi gr10,#-32,gr11
	sub gr0,gr10,gr5
	slli gr8,#1,gr13
	andi gr5, #63, gr5
	cmpi gr11, #0, icc1
	sll gr13,gr6,gr13
	srl gr9, gr10, gr6
	sub gr4,gr5,gr4
	addi gr5,#-32,gr7
	srl gr8, gr11, gr11
	or gr13, gr6, gr6
	ckp icc1, cc4
	srli gr9, #1, gr12
	cmpi gr7, #0, icc0
	srl gr12, gr4, gr12
	srl gr8, gr10, gr10
	sll gr8,gr5,gr4
	cmov gr11, gr6, cc4, 1
	ckp icc1, cc4
	sll gr9,gr7,gr7
	or gr12, gr4, gr4
	cmov gr0, gr10, cc4, 1
	ckp icc0, cc4
	sll gr9,gr5,gr9
	cmov gr7, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr9, cc4, 1
	or gr9, gr6, gr9
	or gr4, gr10, gr8
	ret
	.size	rotr64, .-rotr64
	.p2align 4
	.globl rotl32
	.type	rotl32, @function
rotl32:
	sub gr0,gr9,gr4
	andi gr4, #31, gr4
	sll gr8,gr9,gr9
	srl gr8, gr4, gr8
	or gr8, gr9, gr8
	ret
	.size	rotl32, .-rotl32
	.p2align 4
	.globl rotr32
	.type	rotr32, @function
rotr32:
	sub gr0,gr9,gr4
	andi gr4, #31, gr4
	srl gr8, gr9, gr9
	sll gr8,gr4,gr8
	or gr8, gr9, gr8
	ret
	.size	rotr32, .-rotr32
	.p2align 4
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	sub gr0,gr9,gr4
	andi gr4, #31, gr4
	sll gr8,gr9,gr9
	srl gr8, gr4, gr8
	or gr8, gr9, gr8
	ret
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	sub gr0,gr9,gr4
	andi gr4, #31, gr4
	srl gr8, gr9, gr9
	sll gr8,gr4,gr8
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
	andi gr5, #15, gr5
	sethi #hi(#0),gr4
	sll gr8,gr9,gr8
	srl gr4, gr5, gr4
	or gr8, gr4, gr8
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	andi gr9, #15, gr9
	sub gr0,gr9,gr5
	mov gr8, gr4
	andi gr5, #15, gr5
	sethi #hi(#0),gr4
	srl gr4, gr9, gr4
	sll gr8,gr5,gr8
	or gr4, gr8, gr8
	ret
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	andi gr9, #7, gr9
	sub gr0,gr9,gr5
	andi gr8,#0xff,gr4
	andi gr5, #7, gr5
	sll gr8,gr9,gr8
	srl gr4, gr5, gr4
	or gr8, gr4, gr8
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	andi gr9, #7, gr9
	sub gr0,gr9,gr5
	andi gr8,#0xff,gr4
	andi gr5, #7, gr5
	srl gr4, gr9, gr4
	sll gr8,gr5,gr8
	or gr4, gr8, gr8
	ret
	.size	rotr8, .-rotr8
	.p2align 4
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srli gr4, #8, gr4
	slli gr8,#8,gr8
	or gr4, gr8, gr8
	ret
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	srli gr8, #24, gr6
	slli gr8,#24,gr4
	or gr4, gr6, gr4
	sethi #hi(#65280), gr6
	srli gr8, #8, gr5
	setlo #lo(#65280), gr6
	and gr5, gr6, gr5
	or gr4, gr5, gr4
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
	slli gr8,#8,gr8
	and gr8, gr5, gr8
	or gr4, gr8, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	mov gr9, gr4
	sethi #hi(#65280), gr12
	slli gr8,#24,gr10
	setlo #lo(#65280), gr12
	slli gr8,#8,gr13
	srli gr8, #8, gr9
	srli gr4, #24, gr7
	srli gr4, #8, gr6
	sethi #hi(#16711680), gr11
	setlo #lo(#16711680), gr11
	slli gr4,#24,gr5
	srli gr8, #24, gr8
	and gr9, gr12, gr9
	or gr13, gr7, gr7
	or gr6, gr10, gr6
	srli gr4, #24, gr13
	or gr8, gr9, gr9
	and gr7, gr11, gr7
	or gr5, gr13, gr8
	slli gr4,#8,gr4
	and gr6, gr12, gr5
	or gr9, gr7, gr9
	or gr8, gr5, gr8
	and gr4, gr11, gr4
	or gr9, gr10, gr9
	or gr8, gr4, gr8
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
	bra .L504
.L502:
	beq icc1,0,.L506
.L504:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	addi gr4,#1,gr4
	cmpi gr4,#32,icc1
	beq icc0,2,.L502
	mov gr4, gr8
	ret
.L506:
	setlos #0, gr8
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L510
	andicc gr8, #1, gr4, icc0
	bne icc0,0,.L507
	setlos #1, gr4
.L509:
	srai gr8, #1, gr8
	andicc gr8, #1, gr0, icc0
	addi gr4,#1,gr4
	beq icc0,2,.L509
.L507:
	mov gr4, gr8
	ret
.L510:
	setlos #0, gr4
	mov gr4, gr8
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sethi #gotofffuncdeschi(__ltsf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltsf2), gr4
	mov gr15, gr19
	sethi #hi(#4286578687), gr9
	ldd @(gr4,gr15), gr14
	setlo #lo(#4286578687), gr9
	mov gr8, gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,2,.L516
	sethi #gotofffuncdeschi(__gtsf2), gr4
	setlo #gotofffuncdesclo(__gtsf2), gr4
	ldd @(gr4,gr19), gr14
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L516:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#24,sp
	jmpl @(gr5,gr0)
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
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
	bn icc0,2,.L520
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr20), gr14
	sethi #hi(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	mov gr19, gr9
	setlo #lo(#2146435071), gr10
	setlo #lo(#4294967295), gr11
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L520:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
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
	bn icc0,2,.L524
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr20), gr14
	sethi #hi(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	mov gr19, gr9
	setlo #lo(#2146435071), gr10
	setlo #lo(#4294967295), gr11
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L524:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	_Qp_itoq, .-_Qp_itoq
	.p2align 4
	.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	sti gr18, @(sp,0)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr5, @(fp,8)
	sti gr19, @(sp,4)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr9, gr18
	mov gr8, gr9
	mov gr8, gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L527
	sethi #gotofffuncdeschi(__addf), gr4
	setlo #gotofffuncdesclo(__addf), gr4
	ldd @(gr4,gr21), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nesf2), gr4
	setlo #gotofffuncdesclo(__nesf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr20, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,2,.L527
	cmpi gr18, #0, icc0
	bn icc0,0,.L541
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
.L529:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L530
	sethi #gotofffuncdeschi(__mulf), gr22
.L531:
	setlo #gotofffuncdesclo(__mulf), gr22
	ldd @(gr22,gr21), gr14
	mov gr20, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	mov gr8, gr20
.L530:
	srli gr18, #31, gr4
	add gr4,gr18,gr4
	sraicc gr4, #1, gr18, icc0
	beq icc0,0,.L527
	sethi #gotofffuncdeschi(__mulf), gr22
	mov gr22, gr23
	setlo #gotofffuncdesclo(__mulf), gr23
.L532:
	ldd @(gr23,gr21), gr14
	mov gr19, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr19
	bne icc0,2,.L531
	srai gr4, #1, gr18
	bra .L532
.L527:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L541:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L529
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr5, @(fp,8)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
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
	bne icc0,0,.L543
	sethi #gotofffuncdeschi(__addd), gr4
	setlo #gotofffuncdesclo(__addd), gr4
	ldd @(gr4,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nedf2), gr4
	setlo #gotofffuncdesclo(__nedf2), gr4
	ldd @(gr4,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,2,.L543
	cmpi gr18, #0, icc0
	bn icc0,0,.L557
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L545:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L546
	sethi #gotofffuncdeschi(__muld), gr24
.L547:
	setlo #gotofffuncdesclo(__muld), gr24
	ldd @(gr24,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L546:
	srli gr18, #31, gr4
	add gr4,gr18,gr4
	sraicc gr4, #1, gr18, icc0
	beq icc0,0,.L543
	sethi #gotofffuncdeschi(__muld), gr24
	mov gr24, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L548:
	ldd @(gr25,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr20
	mov gr9, gr21
	bne icc0,2,.L547
	srai gr4, #1, gr18
	bra .L548
.L543:
	mov gr22, gr8
	mov gr23, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
.L557:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L545
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr5, @(fp,8)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
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
	bne icc0,0,.L559
	sethi #gotofffuncdeschi(__addd), gr4
	setlo #gotofffuncdesclo(__addd), gr4
	ldd @(gr4,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nedf2), gr4
	setlo #gotofffuncdesclo(__nedf2), gr4
	ldd @(gr4,gr19), gr14
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,2,.L559
	cmpi gr18, #0, icc0
	bn icc0,0,.L573
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L561:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L562
	sethi #gotofffuncdeschi(__muld), gr24
.L563:
	setlo #gotofffuncdesclo(__muld), gr24
	ldd @(gr24,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L562:
	srli gr18, #31, gr4
	add gr4,gr18,gr4
	sraicc gr4, #1, gr18, icc0
	beq icc0,0,.L559
	sethi #gotofffuncdeschi(__muld), gr24
	mov gr24, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L564:
	ldd @(gr25,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr20
	mov gr9, gr21
	bne icc0,2,.L563
	srai gr4, #1, gr18
	bra .L564
.L559:
	mov gr22, gr8
	mov gr23, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
.L573:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L561
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	cmpi gr10, #0, icc0
	beq icc0,0,.L575
	addi gr10,#-1,gr4
	cmpi gr4,#3,icc0
	bls icc0,0,.L582
	or gr8, gr9, gr4
	andicc gr4, #3, gr0, icc0
	bne icc0,0,.L582
	andi gr10, #-4, gr7
	setlos #0, gr4
.L577:
	ld @(gr8,gr4), gr6
	ld @(gr9,gr4), gr5
	xor gr5, gr6, gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	cmp gr4,gr7,icc0
	bne icc0,2,.L577
	cmp gr10,gr4,icc0
	add gr8,gr4,gr6
	add gr9,gr4,gr7
	sub gr10,gr4,gr10
	beq icc0,0,.L575
	ldsb @(gr8,gr4),gr5
	ldsb @(gr9,gr4),gr9
	cmpi gr10,#1,icc0
	xor gr5, gr9, gr5
	stb gr5, @(gr8,gr4)
	beq icc0,0,.L575
	ldsbi @(gr6,1),gr5
	ldsbi @(gr7,1),gr4
	cmpi gr10,#2,icc0
	xor gr4, gr5, gr4
	stbi gr4, @(gr6,1)
	beq icc0,0,.L575
	ldsbi @(gr6,2),gr5
	ldsbi @(gr7,2),gr4
	xor gr4, gr5, gr4
	stbi gr4, @(gr6,2)
.L575:
	ret
.L582:
	setlos #0, gr4
.L579:
	ldsb @(gr8,gr4),gr6
	ldsb @(gr9,gr4),gr5
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L579
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	mov gr8, gr4
	beq icc0,0,.L595
.L596:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	bne icc0,2,.L596
.L595:
	cmpi gr10, #0, icc0
	bne icc0,2,.L597
	bra .L598
.L599:
	addi gr9,#1,gr9
	addi gr4,#1,gr4
	beq icc1,0,.L598
.L597:
	ldsb @(gr9,gr0),gr5
	addicc gr10, #-1, gr10, icc1
	stb gr5, @(gr4,gr0)
	cmpi gr5, #0, icc0
	bne icc0,2,.L599
	ret
.L598:
	stb gr0, @(gr4,gr0)
	ret
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	cmpi gr9, #0, icc0
	mov gr8, gr5
	setlos #0, gr8
	beq icc0,0,.L607
.L608:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L610
.L607:
	ret
.L610:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc0
	bne icc0,2,.L608
	ret
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr6
	movgs gr9, lcr
	cmpi gr6, #0, icc0
	beq icc0,0,.L618
.L614:
	movsg lcr, gr4
	bra .L617
.L616:
	beq icc1,0,.L615
.L617:
	ldsb @(gr4,gr0),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	cmp gr5,gr6,icc1
	bne icc0,2,.L616
	ldsbi @(gr8,1),gr6
	addi gr8,#1,gr8
	cmpi gr6, #0, icc0
	bne icc0,2,.L614
.L618:
	setlos #0, gr8
.L615:
	ret
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L622:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc1
	ckeq icc1, cc5
	cmpi gr4, #0, icc0
	cmov gr8, gr5, cc5, 1
	addi gr8,#1,gr8
	bne icc0,2,.L622
	mov gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	ldsb @(gr9,gr0),gr10
	cmpi gr10, #0, icc0
	beq icc0,0,.L624
	mov gr9, gr4
.L626:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	bne icc0,2,.L626
	subcc gr4, gr9, gr4, icc0
	beq icc0,0,.L624
	andi gr10,#0xff,gr13
	addi gr4,#-1,gr12
	bra .L632
.L645:
	cmpi gr4, #0, icc0
	addi gr8,#1,gr8
	beq icc0,0,.L644
.L632:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L645
	mov gr13, gr5
	add gr8,gr12,gr11
	mov gr9, gr6
	mov gr8, gr4
	bra .L628
.L646:
	beq icc1,0,.L629
	bne icc2,0,.L629
	ldub @(gr4,gr0),gr5
	addi gr6,#1,gr6
	cmpi gr5, #0, icc0
	beq icc0,0,.L629
.L628:
	ldub @(gr6,gr0),gr7
	cmp gr4,gr11,icc1
	cmpi gr7, #0, icc0
	addi gr4,#1,gr4
	cmp gr7,gr5,icc2
	bne icc0,2,.L646
.L629:
	ldub @(gr6,gr0),gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L624
	addi gr8,#1,gr8
	bra .L632
.L644:
	setlos #0, gr8
.L624:
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
	setlo #gotofffuncdesclo(__ltdf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr5, @(fp,8)
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	setlos #0, gr10
	setlos #0, gr11
	add gr4,gr19,gr18
	mov gr8, gr20
	mov gr9, gr21
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	cmpi gr8, #0, icc0
	ldd @(gr4,gr19), gr14
	setlos #0, gr10
	setlos #0, gr11
	bn icc0,0,.L657
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ble icc0,0,.L651
	ldd @(gr18,gr0), gr14
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L650
.L651:
	mov gr20, gr8
	mov gr21, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L657:
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ble icc0,2,.L651
.L650:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr20, gr6, gr4
	mov gr4, gr20
	bra .L651
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	cmpi gr11, #0, icc0
	beq icc0,0,.L658
	cmp gr9,gr11,icc0
	bc icc0,0,.L669
	sub gr9,gr11,gr7
	add gr8,gr7,gr7
	cmp gr8,gr7,icc0
	bhi icc0,0,.L669
	ldsb @(gr10,gr0),gr12
	bra .L664
.L668:
	mov gr9, gr8
.L660:
	cmp gr7,gr8,icc0
	bc icc0,0,.L669
.L664:
	ldsb @(gr8,gr0),gr4
	addi gr8,#1,gr9
	cmp gr4,gr12,icc0
	bne icc0,2,.L668
	cmpi gr11,#1,icc0
	beq icc0,0,.L658
.L663:
	setlos #1, gr4
	bra .L661
.L662:
	beq icc1,0,.L658
.L661:
	ldub @(gr8,gr4),gr6
	ldub @(gr10,gr4),gr5
	addi gr4,#1,gr4
	cmp gr6,gr5,icc0
	cmp gr4,gr11,icc1
	beq icc0,2,.L662
	cmp gr7,gr9,icc0
	bc icc0,0,.L669
	ldsb @(gr9,gr0),gr4
	addi gr9,#1,gr8
	cmp gr12,gr4,icc0
	bne icc0,2,.L660
	movgs gr9, lcr
	mov gr8, gr9
	movsg lcr, gr8
	bra .L663
.L669:
	setlos #0, gr8
.L658:
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
	mov gr8, gr4
	beq icc0,0,.L676
	sethi #gotofffuncdeschi(memmove), gr5
	setlo #gotofffuncdesclo(memmove), gr5
	ldd @(gr5,gr15), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
.L676:
	add gr4,gr18,gr8
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl frexp
	.type	frexp, @function
frexp:
	addi sp,#-64,sp
	sti gr24, @(sp,32)
	sethi #gotofffuncdeschi(__ltdf2), gr24
	sti fp, @(sp,48)
	movsg lr, gr5
	addi sp,#48,fp
	mov gr24, gr4
	sti gr18, @(sp,8)
	sti gr20, @(sp,16)
	sti gr21, @(sp,20)
	sti gr22, @(sp,24)
	sti gr23, @(sp,28)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	sti gr5, @(fp,8)
	sti gr16, @(sp,0)
	sti gr17, @(sp,4)
	sti gr19, @(sp,12)
	sti gr25, @(sp,36)
	sti gr26, @(sp,40)
	sti gr27, @(sp,44)
	mov gr15, gr18
	ldd @(gr4,gr15), gr14
	mov gr10, gr23
	setlos #0, gr11
	setlos #0, gr10
	mov gr8, gr20
	mov gr9, gr21
	add gr4,gr18,gr22
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L702
	sethi #gotofffuncdeschi(__gedf2), gr19
	mov gr19, gr4
	setlo #gotofffuncdesclo(__gedf2), gr4
	ldd @(gr4,gr18), gr14
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L703
	setlos #0, gr16
.L683:
	sethi #gotofffuncdeschi(__muld), gr22
	sethi #hi(#1071644672), gr26
	sethi #hi(#1073741824), gr24
	setlos #0, gr17
	setlo #gotofffuncdesclo(__muld), gr22
	setlo #lo(#1071644672), gr26
	setlos #0, gr27
	setlo #gotofffuncdesclo(__gedf2), gr19
	setlo #lo(#1073741824), gr24
	setlos #0, gr25
.L689:
	ldd @(gr22,gr18), gr14
	mov gr26, gr10
	mov gr27, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	ldd @(gr19,gr18), gr14
	mov gr8, gr4
	mov gr9, gr5
	mov gr20, gr8
	mov gr21, gr9
	mov gr24, gr10
	mov gr25, gr11
	mov gr4, gr20
	mov gr5, gr21
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	addi gr17,#1,gr17
	bp icc0,2,.L689
.L690:
	st gr17, @(gr23,gr0)
	cmpi gr16, #0, icc0
	beq icc0,0,.L696
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr20, gr4, gr8
	mov gr21, gr9
.L680:
	ldi @(sp,0), gr16
	ldi @(sp,4), gr17
	ldi @(sp,8), gr18
	ldi @(sp,12), gr19
	ldi @(sp,16), gr20
	ldi @(sp,20), gr21
	ldi @(sp,24), gr22
	ldi @(sp,28), gr23
	ldi @(sp,32), gr24
	ldi @(sp,36), gr25
	ldi @(sp,40), gr26
	ldi @(sp,44), gr27
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr5,gr0)
.L703:
	ldd @(gr22,gr0), gr14
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bp icc0,2,.L686
	sethi #gotofffuncdeschi(__nedf2), gr4
	setlo #gotofffuncdesclo(__nedf2), gr4
	ldd @(gr4,gr18), gr14
	setlos #0, gr10
	setlos #0, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L695
.L686:
	st gr0, @(gr23,gr0)
	mov gr20, gr8
	mov gr21, gr9
	bra .L680
.L702:
	sethi #gotofffuncdeschi(__ledf2), gr4
	setlo #gotofffuncdesclo(__ledf2), gr4
	ldd @(gr4,gr18), gr14
	sethi #hi(#3220176896), gr10
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	setlo #lo(#3220176896), gr10
	setlos #0, gr11
	mov gr20, gr8
	mov gr21, gr9
	xor gr20, gr4, gr26
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	mov gr21, gr27
	bgt icc0,0,.L704
	mov gr26, gr20
	setlos #1, gr16
	sethi #gotofffuncdeschi(__gedf2), gr19
	bra .L683
.L696:
	mov gr20, gr8
	mov gr21, gr9
	bra .L680
.L704:
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr18), gr14
	sethi #hi(#3219128320), gr10
	setlo #lo(#3219128320), gr10
	setlos #0, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ble icc0,2,.L686
	setlos #1, gr16
.L684:
	mov gr24, gr19
	sethi #gotofffuncdeschi(__addd), gr22
	sethi #hi(#1070596096), gr24
	mov gr26, gr20
	mov gr27, gr21
	setlos #0, gr17
	setlo #gotofffuncdesclo(__addd), gr22
	setlo #gotofffuncdesclo(__ltdf2), gr19
	setlo #lo(#1070596096), gr24
	setlos #0, gr25
.L691:
	ldd @(gr22,gr18), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	ldd @(gr19,gr18), gr14
	mov gr8, gr4
	mov gr9, gr5
	mov gr20, gr8
	mov gr21, gr9
	mov gr24, gr10
	mov gr25, gr11
	mov gr4, gr20
	mov gr5, gr21
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	addi gr17,#-1,gr17
	bn icc0,2,.L691
	bra .L690
.L695:
	mov gr20, gr26
	mov gr21, gr27
	setlos #0, gr16
	bra .L684
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	addi sp,#-24,sp
	movsg lr, gr5
	mov gr9, gr4
	sti gr5, @(sp,16)
	mov gr8, gr5
	sti gr18, @(sp,0)
	orcc gr4, gr5, gr0, icc0
	setlos #0, gr8
	setlos #0, gr9
	beq icc0,0,.L705
.L708:
	andi gr4, #1, gr7
	subcc gr0,gr7,gr15,icc0
	slli gr5,#31,gr18
	setlos #0, gr6
	srli gr4, #1, gr4
	subx gr0,gr6,gr14,icc0
	and gr15, gr11, gr13
	srli gr5, #1, gr5
	or gr18, gr4, gr4
	and gr14, gr10, gr12
	addcc gr9,gr13,gr9,icc1
	srli gr11, #31, gr14
	slli gr10,#1,gr10
	orcc gr5, gr4, gr0, icc0
	addx gr8,gr12,gr8,icc1
	or gr14, gr10, gr10
	slli gr11,#1,gr11
	bne icc0,2,.L708
.L705:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp gr9,gr8,icc0
	mov gr8, gr5
	setlos #1, gr4
	bnc icc0,0,.L713
	setlos #32, gr8
	setlos #1, gr4
	bra .L712
.L716:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L714
	beq icc1,0,.L715
.L712:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L716
.L713:
	setlos #0, gr8
.L718:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L718
.L715:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L714:
	cmpi gr4, #0, icc0
	bne icc0,2,.L713
	setlos #0, gr8
	bra .L715
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi sp,#-16,sp
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	srai gr8, #7, gr4
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	cmp gr8,gr4,icc0
	sti gr5, @(fp,8)
	xor gr8, gr4, gr8
	beq icc0,0,.L729
	sethi #gotofffuncdeschi(__clzsi2), gr4
	setlo #gotofffuncdesclo(__clzsi2), gr4
	ldd @(gr4,gr15), gr14
	slli gr8,#8,gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L729:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #7, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi sp,#-16,sp
	srai gr8, #31, gr4
	movsg lr, gr5
	sti fp, @(sp,0)
	mov sp, fp
	sti gr5, @(fp,8)
	cmp gr8,gr4,icc0
	mov gr9, gr5
	xor gr8, gr4, gr6
	xor gr9, gr4, gr9
	beq icc0,0,.L736
.L734:
	sethi #gotofffuncdeschi(__clzdi2), gr4
	setlo #gotofffuncdesclo(__clzdi2), gr4
	ldd @(gr4,gr15), gr14
	mov gr6, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L736:
	cmp gr5,gr8,icc0
	bne icc0,2,.L734
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #63, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L737
.L739:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc0
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc0,2,.L739
.L737:
	mov gr6, gr8
	ret
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	cmp gr8,gr9,icc0
	mov gr8, gr11
	mov gr9, gr7
	srli gr10, #3, gr6
	andi gr10, #-8, gr12
	bc icc0,2,.L746
	add gr9,gr10,gr4
	cmp gr8,gr4,icc0
	bls icc0,2,.L773
.L746:
	cmpi gr6, #0, icc0
	beq icc0,0,.L774
	slli gr6,#3,gr6
	mov gr7, gr4
	mov gr11, gr5
	add gr6,gr7,gr6
.L749:
	ld @(gr4,gr0), gr8
	ldi @(gr4,4), gr9
	addi gr4,#8,gr4
	st gr8, @(gr5,gr0)
	sti gr9, @(gr5,4)
	cmp gr4,gr6,icc0
	addi gr5,#8,gr5
	bne icc0,2,.L749
	cmp gr10,gr12,icc0
	bls icc0,0,.L742
	sub gr10,gr12,gr13
	addi gr13,#-1,gr4
	cmpi gr4,#6,icc0
	addi gr12,#1,gr4
	bls icc0,0,.L754
	add gr11,gr12,gr8
	add gr7,gr4,gr5
	sub gr8,gr5,gr5
	cmpi gr5,#2,icc0
	ckhi icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
	cmpi gr5, #0, icc0
	add gr7,gr12,gr9
	beq icc0,0,.L754
	or gr9, gr8, gr5
	andicc gr5, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L754
	andi gr13, #-4, gr6
	setlos #0, gr4
.L752:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L752
	cmp gr6,gr13,icc0
	add gr6,gr12,gr6
	beq icc0,0,.L742
	ldsb @(gr7,gr6),gr5
	addi gr6,#1,gr4
	stb gr5, @(gr11,gr6)
	cmp gr10,gr4,icc0
	bls icc0,0,.L742
	ldsb @(gr7,gr4),gr5
	addi gr6,#2,gr6
	stb gr5, @(gr11,gr4)
	cmp gr10,gr6,icc0
	bls icc0,0,.L742
	ldsb @(gr7,gr6),gr4
	stb gr4, @(gr11,gr6)
.L742:
	ret
.L775:
	addi gr4,#1,gr4
.L754:
	ldsb @(gr7,gr12),gr5
	cmp gr10,gr4,icc0
	stb gr5, @(gr11,gr12)
	mov gr4, gr12
	bne icc0,2,.L775
	ret
.L773:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr10
	beq icc0,0,.L742
.L747:
	ldsb @(gr7,gr10),gr4
	stb gr4, @(gr11,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L747
	ret
.L774:
	cmpi gr10, #0, icc0
	beq icc0,0,.L742
	addi gr12,#1,gr4
	bra .L754
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	cmp gr8,gr9,icc0
	mov gr9, gr6
	mov gr8, gr5
	srli gr10, #1, gr9
	bc icc0,2,.L780
	add gr6,gr10,gr4
	cmp gr8,gr4,icc0
	bls icc0,2,.L802
.L780:
	cmpi gr9, #0, icc0
	beq icc0,0,.L779
	addi gr9,#-1,gr4
	cmpi gr4,#8,icc0
	bls icc0,0,.L783
	or gr6, gr5, gr4
	andicc gr4, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L783
	addi gr6,#2,gr4
	cmp gr5,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L783
	srli gr10, #2, gr11
	andi gr10, #-4, gr8
	setlos #0, gr4
.L784:
	ld @(gr6,gr4), gr7
	st gr7, @(gr5,gr4)
	addi gr4,#4,gr4
	cmp gr4,gr8,icc0
	bne icc0,2,.L784
	slli gr11,#1,gr7
	cmp gr9,gr7,icc0
	beq icc0,0,.L779
	ldsh @(gr6,gr4),gr7
	sth gr7, @(gr5,gr4)
.L779:
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L776
.L803:
	addi gr10,#-1,gr4
	ldsb @(gr6,gr4),gr6
	stb gr6, @(gr5,gr4)
.L776:
	ret
.L802:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L776
.L781:
	ldsb @(gr6,gr4),gr7
	stb gr7, @(gr5,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L781
	ret
.L783:
	slli gr9,#1,gr9
	setlos #0, gr4
.L786:
	ldsh @(gr6,gr4),gr7
	sth gr7, @(gr5,gr4)
	addi gr4,#2,gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L786
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L776
	bra .L803
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	cmp gr8,gr9,icc0
	mov gr8, gr7
	mov gr9, gr6
	srli gr10, #2, gr8
	andi gr10, #-4, gr9
	bc icc0,2,.L808
	add gr6,gr10,gr4
	cmp gr7,gr4,icc0
	bls icc0,2,.L835
.L808:
	cmpi gr8, #0, icc0
	beq icc0,0,.L836
	slli gr8,#2,gr8
	setlos #0, gr4
.L811:
	ld @(gr6,gr4), gr5
	st gr5, @(gr7,gr4)
	addi gr4,#4,gr4
	cmp gr4,gr8,icc0
	bne icc0,2,.L811
	cmp gr10,gr9,icc0
	bls icc0,0,.L804
	sub gr10,gr9,gr13
	addi gr13,#-1,gr4
	cmpi gr4,#6,icc0
	addi gr9,#1,gr4
	bls icc0,0,.L816
	add gr7,gr9,gr11
	add gr6,gr4,gr5
	sub gr11,gr5,gr5
	cmpi gr5,#2,icc0
	ckhi icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
	cmpi gr5, #0, icc0
	add gr6,gr9,gr12
	beq icc0,0,.L816
	or gr12, gr11, gr5
	andicc gr5, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L816
	andi gr13, #-4, gr8
	setlos #0, gr4
.L814:
	ld @(gr12,gr4), gr5
	st gr5, @(gr11,gr4)
	addi gr4,#4,gr4
	cmp gr8,gr4,icc0
	bne icc0,2,.L814
	cmp gr8,gr13,icc0
	add gr8,gr9,gr8
	beq icc0,0,.L804
	ldsb @(gr6,gr8),gr5
	addi gr8,#1,gr4
	stb gr5, @(gr7,gr8)
	cmp gr10,gr4,icc0
	bls icc0,0,.L804
	ldsb @(gr6,gr4),gr5
	addi gr8,#2,gr8
	stb gr5, @(gr7,gr4)
	cmp gr10,gr8,icc0
	bls icc0,0,.L804
	ldsb @(gr6,gr8),gr4
	stb gr4, @(gr7,gr8)
.L804:
	ret
.L837:
	addi gr4,#1,gr4
.L816:
	ldsb @(gr6,gr9),gr5
	cmp gr10,gr4,icc0
	stb gr5, @(gr7,gr9)
	mov gr4, gr9
	bne icc0,2,.L837
	ret
.L835:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr10
	beq icc0,0,.L804
.L809:
	ldsb @(gr6,gr10),gr4
	stb gr4, @(gr7,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L809
	ret
.L836:
	cmpi gr10, #0, icc0
	beq icc0,0,.L804
	addi gr9,#1,gr4
	bra .L816
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__uitod, .-__uitod
	.p2align 4
	.globl __uitof
	.type	__uitof, @function
__uitof:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatunsisf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatunsisf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bne icc0,0,.L847
	sraicc gr8, #14, gr4, icc0
	bne icc0,0,.L844
	srlicc gr8, #13, gr0, icc0
	bne icc0,0,.L848
	srlicc gr8, #12, gr0, icc0
	bne icc0,0,.L849
	srlicc gr8, #11, gr0, icc0
	bne icc0,0,.L850
	srlicc gr8, #10, gr0, icc0
	bne icc0,0,.L851
	srlicc gr8, #9, gr0, icc0
	bne icc0,0,.L852
	srlicc gr8, #8, gr0, icc0
	bne icc0,0,.L853
	srlicc gr8, #7, gr0, icc0
	bne icc0,0,.L854
	srlicc gr8, #6, gr0, icc0
	bne icc0,0,.L855
	srlicc gr8, #5, gr0, icc0
	bne icc0,0,.L856
	srlicc gr8, #4, gr0, icc0
	bne icc0,0,.L857
	srlicc gr8, #3, gr0, icc0
	bne icc0,0,.L858
	srlicc gr8, #2, gr0, icc0
	bne icc0,0,.L859
	srlicc gr8, #1, gr0, icc0
	bne icc0,0,.L860
	cmpi gr8, #0, icc0
	setlos #15, gr4
	bne icc0,0,.L844
	setlos #16, gr4
.L844:
	mov gr4, gr8
	ret
.L847:
	setlos #0, gr4
	bra .L844
.L858:
	setlos #12, gr4
	bra .L844
.L848:
	setlos #2, gr4
	bra .L844
.L849:
	setlos #3, gr4
	bra .L844
.L850:
	setlos #4, gr4
	bra .L844
.L851:
	setlos #5, gr4
	bra .L844
.L852:
	setlos #6, gr4
	bra .L844
.L853:
	setlos #7, gr4
	bra .L844
.L854:
	setlos #8, gr4
	bra .L844
.L855:
	setlos #9, gr4
	bra .L844
.L856:
	setlos #10, gr4
	bra .L844
.L857:
	setlos #11, gr4
	bra .L844
.L859:
	setlos #13, gr4
	bra .L844
.L860:
	setlos #14, gr4
	bra .L844
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi gr8, #1, gr5
	sethi #hi(#0),gr5
	mov gr8, gr4
	cmpi gr5, #0, icc0
	sethi #hi(#0),gr4
	bne icc0,0,.L865
	andi gr4, #2, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L866
	andi gr4, #4, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L867
	andi gr4, #8, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L868
	andi gr4, #16, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L869
	andi gr4, #32, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L870
	andi gr4, #64, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L871
	andi gr4, #128, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L872
	andi gr4, #256, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L873
	andi gr4, #512, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L874
	andi gr4, #1024, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L875
	setlos #2048, gr5
	and gr4, gr5, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L876
	setlos #4096, gr5
	and gr4, gr5, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L877
	setlos #8192, gr5
	and gr4, gr5, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L878
	setlos #16384, gr5
	and gr4, gr5, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L879
	srlicc gr4, #15, gr0, icc0
	setlos #15, gr8
	bne icc0,0,.L862
	setlos #16, gr8
.L862:
	ret
.L865:
	setlos #0, gr8
	ret
.L866:
	setlos #1, gr8
	ret
.L877:
	setlos #12, gr8
	ret
.L867:
	setlos #2, gr8
	ret
.L868:
	setlos #3, gr8
	ret
.L869:
	setlos #4, gr8
	ret
.L870:
	setlos #5, gr8
	ret
.L871:
	setlos #6, gr8
	ret
.L872:
	setlos #7, gr8
	ret
.L873:
	setlos #8, gr8
	ret
.L874:
	setlos #9, gr8
	ret
.L875:
	setlos #10, gr8
	ret
.L876:
	setlos #11, gr8
	ret
.L878:
	setlos #13, gr8
	ret
.L879:
	setlos #14, gr8
	ret
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sethi #gotofffuncdeschi(__gesf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__gesf2), gr4
	mov gr15, gr18
	sethi #hi(#1191182336), gr9
	ldd @(gr4,gr15), gr14
	setlo #lo(#1191182336), gr9
	mov gr8, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bp icc0,0,.L887
	sethi #gotofffuncdeschi(__ftoi), gr4
	setlo #gotofffuncdesclo(__ftoi), gr4
	ldd @(gr4,gr18), gr14
	mov gr19, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L887:
	sethi #gotofffuncdeschi(__subf), gr4
	setlo #gotofffuncdesclo(__subf), gr4
	ldd @(gr4,gr18), gr14
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__ftoi), gr4
	setlo #gotofffuncdesclo(__ftoi), gr4
	ldd @(gr4,gr18), gr14
	calll @(gr14,gr0)
	sethi #hi(#32768), gr4
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	setlo #lo(#32768), gr4
	ld @(fp,gr0), fp
	add gr8,gr4,gr8
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srai gr4, #1, gr8
	andi gr4, #1, gr6
	srai gr4, #2, gr5
	andi gr8, #1, gr8
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #3, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #4, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #5, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #6, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #7, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #8, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #9, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #10, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #11, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #12, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #13, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #14, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	add gr8,gr5,gr8
	srai gr4, #15, gr4
	add gr8,gr4,gr8
	andi gr8, #1, gr8
	ret
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srai gr4, #1, gr8
	andi gr4, #1, gr6
	srai gr4, #2, gr5
	andi gr8, #1, gr8
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #3, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #4, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #5, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #6, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #7, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #8, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #9, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #10, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #11, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #12, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #13, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #14, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	add gr8,gr5,gr8
	srai gr4, #15, gr4
	add gr8,gr4,gr8
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L890
.L892:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc0
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc0,2,.L892
.L890:
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L895
	cmpi gr9, #0, icc0
	beq icc0,0,.L895
.L897:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	srlicc gr9, #1, gr9, icc0
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	bne icc0,2,.L897
.L895:
	mov gr6, gr8
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp gr8,gr9,icc0
	mov gr8, gr5
	setlos #1, gr4
	bls icc0,0,.L903
	setlos #32, gr8
	setlos #1, gr4
	bra .L902
.L906:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L904
	beq icc1,0,.L905
.L902:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L906
.L903:
	setlos #0, gr8
.L908:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L908
.L905:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L904:
	cmpi gr4, #0, icc0
	bne icc0,2,.L903
	setlos #0, gr8
	bra .L905
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__ltsf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltsf2), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr8, gr18
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L920
	sethi #gotofffuncdeschi(__gtsf2), gr4
	setlo #gotofffuncdesclo(__gtsf2), gr4
	ldd @(gr4,gr20), gr14
	mov gr19, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L920:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #-1, gr8
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
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
	bn icc0,0,.L924
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L921:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L924:
	setlos #-1, gr8
	bra .L921
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
	bn icc0,0,.L941
	beq icc0,0,.L933
	setlos #0, gr10
.L929:
	setlos #0, gr6
	setlos #0, gr7
	bra .L932
.L942:
	beq icc1,0,.L931
.L932:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	addi gr6,#1,gr6
	sraicc gr9, #1, gr9, icc0
	cmpi gr6,#32,icc1
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	bne icc0,2,.L942
.L931:
	cmpi gr10, #0, icc0
	beq icc0,0,.L927
	sub gr0,gr7,gr7
.L927:
	mov gr7, gr8
	ret
.L941:
	sub gr0,gr9,gr9
	setlos #1, gr10
	bra .L929
.L933:
	setlos #0, gr7
	bra .L927
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr5
	cmpi gr9, #0, icc0
	csub gr0, gr8, gr8, cc4, 1
	cmov gr0, gr4, cc4, 1
	cmov gr5, gr7, cc4, 1
	cmov gr5, gr4, cc4, 0
	cmov gr0, gr7, cc4, 0
	ckn icc0, cc4
	csub gr0, gr9, gr9, cc4, 1
	cmp gr8,gr9,icc0
	cmov gr4, gr7, cc4, 1
	mov gr8, gr6
	setlos #1, gr4
	bls icc0,0,.L947
	setlos #32, gr5
	setlos #1, gr4
	bra .L946
.L949:
	beq icc1,0,.L950
.L946:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	addicc gr5, #-1, gr5, icc1
	slli gr4,#1,gr4
	bhi icc0,2,.L949
.L950:
	cmpi gr4, #0, icc0
	setlos #0, gr8
	beq icc0,0,.L948
.L947:
	setlos #0, gr8
.L952:
	cmp gr6,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr6, gr9, gr6, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L952
.L948:
	cmpi gr7, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	cmpi gr9,#0,icc0
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr10, cc4, 1
	cmov gr0, gr10, cc4, 0
	cklt icc0, cc4
	csub gr0, gr9, gr4, cc4, 1
	cmov gr9, gr4, cc4, 0
	cmp gr8,gr4,icc0
	mov gr8, gr7
	setlos #1, gr5
	bls icc0,0,.L969
	setlos #32, gr6
	setlos #1, gr5
	bra .L963
.L966:
	beq icc1,0,.L967
.L963:
	slli gr4,#1,gr4
	cmp gr8,gr4,icc0
	addicc gr6, #-1, gr6, icc1
	slli gr5,#1,gr5
	bhi icc0,2,.L966
.L967:
	cmpi gr5, #0, icc0
	beq icc0,0,.L965
.L969:
	cmp gr7,gr4,icc1
	cknc icc1, cc5
	srlicc gr5, #1, gr5, icc0
	csub gr7, gr4, gr7, cc5, 1
	srli gr4, #1, gr4
	bne icc0,2,.L969
	mov gr7, gr8
.L965:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
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
	bnc icc0,0,.L1093
	slli gr9,#16,gr9
	srai gr9, #16, gr9
	cmpi gr9, #0, icc0
	bn icc0,0,.L981
	slli gr5,#1,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L982
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L983
	slli gr5,#2,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L984
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L985
	slli gr5,#3,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L986
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L987
	slli gr5,#4,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L988
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L989
	slli gr5,#5,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L990
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L991
	slli gr5,#6,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L992
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L993
	slli gr5,#7,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L994
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L995
	slli gr5,#8,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L996
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L997
	slli gr5,#9,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L998
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L999
	slli gr5,#10,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1000
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L1001
	slli gr5,#11,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1002
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L1003
	slli gr5,#12,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1004
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L1005
	slli gr5,#13,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1006
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L1007
	slli gr5,#14,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1008
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L1009
	slli gr5,#15,gr7
	sethi #hi(#0),gr7
	cmp gr8,gr7,icc0
	bls icc0,0,.L1010
	cmpi gr7, #0, icc0
	bne icc0,0,.L1094
.L1011:
	cmpi gr10, #0, icc0
	bne icc0,0,.L1063
	mov gr7, gr8
.L1063:
	ret
.L998:
	bc icc0,2,.L1043
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #512, gr6
	setlos #512, gr7
.L1013:
	srlicc gr6, #2, gr9, icc0
	srli gr4, #2, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1014
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1014:
	srlicc gr6, #3, gr9, icc0
	srli gr4, #3, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1015
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1015:
	srlicc gr6, #4, gr9, icc0
	srli gr4, #4, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1016
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1016:
	srlicc gr6, #5, gr9, icc0
	srli gr4, #5, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1017
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1017:
	srlicc gr6, #6, gr9, icc0
	srli gr4, #6, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1018
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1018:
	srlicc gr6, #7, gr9, icc0
	srli gr4, #7, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1019
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1019:
	srlicc gr6, #8, gr9, icc0
	srli gr4, #8, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1020
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1020:
	srlicc gr6, #9, gr9, icc0
	srli gr4, #9, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1021
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1021:
	srlicc gr6, #10, gr9, icc0
	srli gr4, #10, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1022
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1022:
	srlicc gr6, #11, gr9, icc0
	srli gr4, #11, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1023
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1023:
	srlicc gr6, #12, gr9, icc0
	srli gr4, #12, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1024
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1024:
	srlicc gr6, #13, gr9, icc0
	srli gr4, #13, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1025
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1025:
	srlicc gr6, #14, gr9, icc0
	srli gr4, #14, gr5
	beq icc0,0,.L1011
	cmp gr8,gr5,icc0
	bc icc0,2,.L1026
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1026:
	setlos #16384, gr5
	cmp gr6,gr5,icc0
	srli gr4, #15, gr4
	beq icc0,0,.L1011
	cmp gr8,gr4,icc0
	bc icc0,2,.L1033
	sub gr8,gr4,gr4
	mov gr4, gr8
	sethi #hi(#0),gr8
	ori gr7, #1, gr7
	bra .L1011
.L1033:
	setlos #0, gr8
	bra .L1011
.L1093:
	cmp gr5,gr8,icc0
	beq icc0,2,.L1032
	setlos #0, gr7
	bra .L1011
.L981:
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	setlos #1, gr7
	bra .L1011
.L982:
	bc icc0,2,.L1035
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #2, gr6
	setlos #2, gr7
	bra .L1013
.L983:
	setlos #32767, gr6
	sub gr8,gr4,gr8
	and gr5, gr6, gr5
	sethi #hi(#0),gr8
	setlos #1, gr9
	setlos #2, gr6
	setlos #2, gr7
.L1031:
	cmp gr8,gr5,icc0
	bc icc0,0,.L1013
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
	bra .L1013
.L984:
	bc icc0,2,.L1036
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #4, gr6
	setlos #4, gr7
	bra .L1013
.L985:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #2, gr9
	setlos #4, gr6
	setlos #4, gr7
	bra .L1031
.L986:
	bc icc0,2,.L1037
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #8, gr6
	setlos #8, gr7
	bra .L1013
.L987:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #4, gr9
	setlos #8, gr6
	setlos #8, gr7
	bra .L1031
.L988:
	bc icc0,2,.L1038
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #16, gr6
	setlos #16, gr7
	bra .L1013
.L989:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #8, gr9
	setlos #16, gr6
	setlos #16, gr7
	bra .L1031
.L990:
	bc icc0,2,.L1039
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #32, gr6
	setlos #32, gr7
	bra .L1013
.L991:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #16, gr9
	setlos #32, gr6
	setlos #32, gr7
	bra .L1031
.L992:
	bc icc0,2,.L1040
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #64, gr6
	setlos #64, gr7
	bra .L1013
.L993:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #32, gr9
	setlos #64, gr6
	setlos #64, gr7
	bra .L1031
.L994:
	bc icc0,2,.L1041
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #128, gr6
	setlos #128, gr7
	bra .L1013
.L995:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #64, gr9
	setlos #128, gr6
	setlos #128, gr7
	bra .L1031
.L997:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #128, gr9
	setlos #256, gr6
	setlos #256, gr7
	bra .L1031
.L999:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #256, gr9
	setlos #512, gr6
	setlos #512, gr7
	bra .L1031
.L1032:
	setlos #1, gr7
	setlos #0, gr8
	bra .L1011
.L1035:
	setlos #2, gr6
.L1030:
	srli gr6, #1, gr9
	srli gr4, #1, gr5
	setlos #0, gr7
	bra .L1031
.L1001:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #512, gr9
	setlos #1024, gr6
	setlos #1024, gr7
	bra .L1031
.L1003:
	sub gr8,gr4,gr8
	setlos #2048, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #1024, gr9
	mov gr6, gr7
	bra .L1031
.L1036:
	setlos #4, gr6
	bra .L1030
.L1037:
	setlos #8, gr6
	bra .L1030
.L1005:
	sub gr8,gr4,gr8
	setlos #4096, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #2048, gr9
	mov gr6, gr7
	bra .L1031
.L1007:
	sub gr8,gr4,gr8
	setlos #8192, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #4096, gr9
	mov gr6, gr7
	bra .L1031
.L1038:
	setlos #16, gr6
	bra .L1030
.L1039:
	setlos #32, gr6
	bra .L1030
.L1009:
	sub gr8,gr4,gr8
	setlos #16384, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #8192, gr9
	mov gr6, gr7
	bra .L1031
.L1010:
	slli gr6,#16,gr6
	srai gr6, #16, gr6
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	cmpi gr6, #0, icc0
	mov gr4, gr6
	bp icc0,2,.L1030
	mov gr4, gr7
	setlos #0, gr8
	bra .L1013
.L1040:
	setlos #64, gr6
	bra .L1030
.L1094:
	setlos #-32768, gr5
	add gr8,gr5,gr6
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	mov gr6, gr8
	setlos #16384, gr5
	sethi #hi(#0),gr8
	mov gr5, gr9
	mov gr4, gr6
	mov gr4, gr7
	bra .L1031
.L1041:
	setlos #128, gr6
	bra .L1030
.L996:
	bc icc0,2,.L1042
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #256, gr6
	setlos #256, gr7
	bra .L1013
.L1042:
	setlos #256, gr6
	bra .L1030
.L1000:
	bc icc0,2,.L1044
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #1024, gr6
	setlos #1024, gr7
	bra .L1013
.L1008:
	bc icc0,2,.L1048
	sub gr8,gr4,gr8
	setlos #16384, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L1013
.L1044:
	setlos #1024, gr6
	bra .L1030
.L1048:
	setlos #16384, gr6
	bra .L1030
.L1043:
	setlos #512, gr6
	bra .L1030
.L1006:
	bc icc0,2,.L1047
	sub gr8,gr4,gr8
	setlos #8192, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L1013
.L1004:
	bc icc0,2,.L1046
	sub gr8,gr4,gr8
	setlos #4096, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L1013
.L1002:
	bc icc0,2,.L1045
	sub gr8,gr4,gr8
	setlos #2048, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L1013
.L1047:
	setlos #8192, gr6
	bra .L1030
.L1046:
	setlos #4096, gr6
	bra .L1030
.L1045:
	setlos #2048, gr6
	bra .L1030
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp gr8,gr9,icc0
	mov gr8, gr5
	setlos #1, gr4
	bls icc0,0,.L1097
	setlos #32, gr8
	setlos #1, gr4
	bra .L1096
.L1100:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L1098
	beq icc1,0,.L1099
.L1096:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L1100
.L1097:
	setlos #0, gr8
.L1102:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L1102
.L1099:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L1098:
	cmpi gr4, #0, icc0
	bne icc0,2,.L1097
	setlos #0, gr8
	bra .L1099
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
	andncr cc5, cc4, cc4
	setlos #-32, gr6
	setlos #32, gr5
	cadd gr10, gr6, gr10, cc5, 1
	cmov gr5, gr4, cc4, 1
	csll gr9, gr10, gr8, cc5, 1
	csub gr4, gr10, gr4, cc4, 1
	cmov gr0, gr9, cc5, 1
	csrl gr9, gr4, gr4, cc4, 1
	csll gr8, gr10, gr8, cc4, 1
	csll gr9, gr10, gr9, cc4, 1
	cor gr4, gr8, gr8, cc4, 1
	ret
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L1117
	addi gr10,#-32,gr10
	srai gr8, #31, gr4
	sra gr8, gr10, gr9
	mov gr4, gr8
.L1119:
	ret
.L1117:
	cmpi gr10, #0, icc0
	beq icc0,0,.L1119
	setlos #32, gr5
	sub gr5,gr10,gr5
	sll gr8,gr5,gr5
	srl gr9, gr10, gr9
	sra gr8, gr10, gr4
	or gr5, gr9, gr9
	mov gr4, gr8
	bra .L1119
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	mov gr9, gr4
	sethi #hi(#65280), gr12
	slli gr8,#24,gr10
	setlo #lo(#65280), gr12
	slli gr8,#8,gr13
	srli gr8, #8, gr9
	srli gr4, #24, gr7
	srli gr4, #8, gr6
	sethi #hi(#16711680), gr11
	setlo #lo(#16711680), gr11
	slli gr4,#24,gr5
	srli gr8, #24, gr8
	and gr9, gr12, gr9
	or gr13, gr7, gr7
	or gr6, gr10, gr6
	srli gr4, #24, gr13
	or gr8, gr9, gr9
	and gr7, gr11, gr7
	or gr5, gr13, gr8
	slli gr4,#8,gr4
	and gr6, gr12, gr5
	or gr9, gr7, gr9
	or gr8, gr5, gr8
	and gr4, gr11, gr4
	or gr9, gr10, gr9
	or gr8, gr4, gr8
	ret
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	slli gr8,#24,gr6
	srli gr8, #24, gr4
	or gr4, gr6, gr4
	sethi #hi(#65280), gr6
	srli gr8, #8, gr5
	setlo #lo(#65280), gr6
	and gr5, gr6, gr5
	or gr4, gr5, gr4
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
	slli gr8,#8,gr8
	and gr8, gr5, gr8
	or gr4, gr8, gr8
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
	slli gr9,#4,gr9
	setlos #16, gr5
	sub gr5,gr9,gr5
	srl gr8, gr5, gr4
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	andcc gr4, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr7
	cmov gr0, gr7, cc4, 0
	slli gr7,#3,gr7
	setlos #8, gr5
	sub gr5,gr7,gr5
	srl gr4, gr5, gr4
	andicc gr4, #240, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#2,gr6
	setlos #4, gr5
	sub gr5,gr6,gr5
	srl gr4, gr5, gr4
	andicc gr4, #12, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr5
	setlos #2, gr8
	sub gr8,gr5,gr10
	srl gr4, gr10, gr4
	add gr7,gr9,gr7
	andi gr4, #2, gr9
	cmpi gr9, #0, icc0
	sub gr8,gr4,gr8
	add gr6,gr7,gr6
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 0
	add gr5,gr6,gr5
	add gr8,gr5,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1128
	bgt icc0,0,.L1129
	cmp gr9,gr11,icc0
	bc icc0,0,.L1128
	bhi icc0,0,.L1129
	setlos #1, gr8
	ret
.L1128:
	setlos #0, gr8
	ret
.L1129:
	setlos #2, gr8
	ret
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1134
	bgt icc0,0,.L1133
	cmp gr9,gr11,icc0
	bc icc0,0,.L1134
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L1134:
	setlos #-1, gr8
	ret
.L1133:
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
	slli gr7,#4,gr7
	srl gr8, gr7, gr4
	andi gr4, #255, gr5
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#3,gr6
	srl gr4, gr6, gr4
	andicc gr4, #15, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	srl gr4, gr5, gr4
	andicc gr4, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	slli gr8,#1,gr8
	srl gr4, gr8, gr4
	andi gr4, #3, gr4
	add gr6,gr7,gr6
	not gr4,gr7
	add gr5,gr6,gr5
	srli gr4, #1, gr4
	andi gr7, #1, gr6
	setlos #2, gr7
	sub gr7,gr4,gr4
	umul gr6,gr4,gr6
	add gr8,gr5,gr8
	add gr8,gr7,gr8
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
	andncr cc5, cc4, cc4
	setlos #-32, gr6
	setlos #32, gr5
	cadd gr10, gr6, gr10, cc5, 1
	cmov gr5, gr4, cc4, 1
	csrl gr8, gr10, gr9, cc5, 1
	csub gr4, gr10, gr4, cc4, 1
	cmov gr0, gr8, cc5, 1
	csll gr8, gr4, gr4, cc4, 1
	csrl gr9, gr10, gr9, cc4, 1
	csrl gr8, gr10, gr8, cc4, 1
	cor gr4, gr9, gr9, cc4, 1
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
	add gr4,gr7,gr4
	slli gr4,#16,gr8
	srli gr9, #16, gr6
	srli gr8, #16, gr7
	and gr10, gr15, gr9
	umul gr12,gr6,gr12
	add gr7,gr13,gr7
	add gr9,gr8,gr9
	srli gr4, #16, gr8
	umul gr5,gr6,gr4
	slli gr7,#16,gr4
	and gr9, gr10, gr9
	add gr8,gr5,gr8
	srli gr7, #16, gr7
	add gr9,gr4,gr9
	add gr8,gr7,gr8
	ret
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi sp,#-40,sp
	sethi #hi(#65535), gr12
	setlo #lo(#65535), gr12
	sti gr18, @(sp,0)
	sti gr20, @(sp,8)
	and gr9, gr12, gr18
	and gr11, gr12, gr20
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	srli gr9, #16, gr14
	umul gr18,gr20,gr22
	sti gr21, @(sp,12)
	srli gr23, #16, gr4
	umul gr20,gr14,gr20
	add gr4,gr21,gr4
	movsg lr, gr5
	slli gr4,#16,gr6
	mov gr9, gr7
	srli gr11, #16, gr9
	sti gr5, @(sp,32)
	sti gr19, @(sp,4)
	srli gr6, #16, gr5
	umul gr18,gr9,gr18
	add gr5,gr19,gr5
	umul gr14,gr9,gr14
	srli gr4, #16, gr4
	and gr12, gr23, gr9
	srli gr5, #16, gr13
	add gr4,gr15,gr4
	add gr9,gr6,gr9
	add gr4,gr13,gr4
	umul gr7,gr10,gr6
	and gr9, gr12, gr9
	slli gr5,#16,gr5
	add gr7,gr4,gr4
	add gr9,gr5,gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	umul gr11,gr8,gr6
	ldi @(sp,32), gr5
	add gr4,gr7,gr8
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	xor gr4, gr8, gr4
	srli gr4, #8, gr5
	xor gr5, gr4, gr5
	srli gr5, #4, gr4
	xor gr4, gr5, gr4
	andi gr4, #15, gr4
	setlos #27030, gr8
	sra gr8, gr4, gr8
	andi gr8, #1, gr8
	ret
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	srli gr8, #16, gr4
	xor gr4, gr8, gr4
	srli gr4, #8, gr5
	xor gr5, gr4, gr5
	srli gr5, #4, gr4
	xor gr4, gr5, gr4
	andi gr4, #15, gr4
	setlos #27030, gr8
	sra gr8, gr4, gr8
	andi gr8, #1, gr8
	ret
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	slli gr8,#31,gr11
	srli gr9, #1, gr6
	sethi #hi(#1431655765), gr7
	setlo #lo(#1431655765), gr7
	or gr11, gr6, gr6
	and gr6, gr7, gr5
	srli gr8, #1, gr10
	subcc gr9,gr5,gr9,icc0
	and gr10, gr7, gr4
	subx gr8,gr4,gr8,icc0
	slli gr8,#30,gr13
	srli gr9, #2, gr5
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	or gr13, gr5, gr5
	srli gr8, #2, gr12
	and gr5, gr4, gr7
	and gr9, gr4, gr11
	and gr8, gr4, gr10
	addcc gr7,gr11,gr7,icc0
	and gr12, gr4, gr6
	addx gr6,gr10,gr6,icc0
	slli gr6,#28,gr8
	srli gr7, #4, gr5
	or gr8, gr5, gr5
	addcc gr5,gr7,gr5,icc0
	srli gr6, #4, gr4
	addx gr4,gr6,gr4,icc0
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr4, gr6, gr4
	and gr5, gr6, gr6
	add gr4,gr6,gr5
	srli gr5, #16, gr4
	add gr4,gr5,gr4
	srli gr4, #8, gr8
	add gr8,gr4,gr8
	andi gr8, #127, gr8
	ret
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	sethi #hi(#1431655765), gr5
	srli gr8, #1, gr4
	setlo #lo(#1431655765), gr5
	and gr4, gr5, gr4
	sub gr8,gr4,gr8
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	srli gr8, #2, gr5
	and gr5, gr4, gr5
	and gr8, gr4, gr8
	add gr5,gr8,gr5
	srli gr5, #4, gr4
	add gr4,gr5,gr4
	sethi #hi(#252645135), gr5
	setlo #lo(#252645135), gr5
	and gr4, gr5, gr4
	srli gr4, #16, gr5
	add gr5,gr4,gr4
	srli gr4, #8, gr8
	add gr8,gr4,gr8
	andi gr8, #63, gr8
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sethi #hi(#1072693248), gr22
	sti gr5, @(fp,8)
	sti gr25, @(sp,28)
	sti gr26, @(sp,32)
	andicc gr10, #1, gr0, icc0
	mov gr10, gr24
	mov gr10, gr18
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	mov gr15, gr19
	mov gr8, gr20
	mov gr9, gr21
	beq icc0,2,.L1149
	sethi #gotofffuncdeschi(__muld), gr25
.L1151:
	setlo #gotofffuncdesclo(__muld), gr25
	ldd @(gr25,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L1149:
	srli gr18, #31, gr4
	add gr4,gr18,gr4
	sraicc gr4, #1, gr18, icc0
	beq icc0,0,.L1150
	sethi #gotofffuncdeschi(__muld), gr25
	mov gr25, gr26
	setlo #gotofffuncdesclo(__muld), gr26
.L1152:
	ldd @(gr26,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr20
	mov gr9, gr21
	bne icc0,2,.L1151
	srai gr4, #1, gr18
	bra .L1152
.L1150:
	cmpi gr24, #0, icc0
	bp icc0,2,.L1148
	sethi #gotofffuncdeschi(__divd), gr4
	setlo #gotofffuncdesclo(__divd), gr4
	ldd @(gr4,gr19), gr14
	sethi #hi(#1072693248), gr8
	mov gr22, gr10
	mov gr23, gr11
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L1148:
	mov gr22, gr8
	mov gr23, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(sp,32), gr26
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sethi #hi(#1065353216), gr21
	sti gr5, @(fp,8)
	sti gr20, @(sp,8)
	sti gr24, @(sp,24)
	andicc gr9, #1, gr0, icc0
	mov gr9, gr23
	mov gr9, gr18
	setlo #lo(#1065353216), gr21
	mov gr15, gr22
	mov gr8, gr19
	beq icc0,2,.L1156
	sethi #gotofffuncdeschi(__mulf), gr20
.L1158:
	setlo #gotofffuncdesclo(__mulf), gr20
	ldd @(gr20,gr22), gr14
	mov gr21, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	mov gr8, gr21
.L1156:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L1157
	sethi #gotofffuncdeschi(__mulf), gr20
	mov gr20, gr24
	setlo #gotofffuncdesclo(__mulf), gr24
.L1159:
	ldd @(gr24,gr22), gr14
	mov gr19, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr19
	bne icc0,2,.L1158
	srai gr4, #1, gr18
	bra .L1159
.L1157:
	cmpi gr23, #0, icc0
	bp icc0,2,.L1155
	sethi #gotofffuncdeschi(__divf), gr4
	setlo #gotofffuncdesclo(__divf), gr4
	ldd @(gr4,gr22), gr14
	sethi #hi(#1065353216), gr8
	mov gr21, gr9
	setlo #lo(#1065353216), gr8
	calll @(gr14,gr0)
	mov gr8, gr21
.L1155:
	mov gr21, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1166
	bhi icc0,0,.L1167
	cmp gr9,gr11,icc0
	bc icc0,0,.L1166
	bhi icc0,0,.L1167
	setlos #1, gr8
	ret
.L1166:
	setlos #0, gr8
	ret
.L1167:
	setlos #2, gr8
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1172
	bhi icc0,0,.L1171
	cmp gr9,gr11,icc0
	bc icc0,0,.L1172
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L1172:
	setlos #-1, gr8
	ret
.L1171:
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
	.globl __divf
	.globl __divd
	.globl __ftoi
	.globl __gesf2
	.globl __floatundisf
	.globl __floatundidf
	.globl __floatunsisf
	.globl __floatunsidf
	.globl __clzdi2
	.globl __clzsi2
	.globl __gedf2
	.globl __ledf2
	.globl __muld
	.globl __nedf2
	.globl __addd
	.globl __mulf
	.globl __nesf2
	.globl __addf
	.globl __itod
	.globl __modll
	.globl __divll
	.globl __mulll
	.globl __ltsf2
	.globl __ltdf2
	.globl __subf
	.globl __gtsf2
	.globl __unordsf2
	.globl __subd
	.globl __gtdf2
	.globl __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
