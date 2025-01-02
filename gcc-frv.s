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
	addi gr9,#-1,gr11
	addi gr8,#-1,gr5
.L4:
	ldsb @(gr11,gr10),gr4
	stb gr4, @(gr5,gr10)
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
	andi gr10, #-4, gr6
	setlos #0, gr4
.L6:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	cmp gr4,gr6,icc2
	bne icc2,2,.L6
	cmp gr10,gr4,icc0
	add gr9,gr4,gr11
	add gr8,gr4,gr12
	sub gr10,gr4,gr10
	beq icc0,0,.L3
	ldsb @(gr9,gr4),gr9
	cmpi gr10,#1,icc1
	stb gr9, @(gr8,gr4)
	beq icc1,0,.L3
	ldsbi @(gr11,1),gr7
	cmpi gr10,#2,icc2
	stbi gr7, @(gr12,1)
	beq icc2,0,.L3
	ldsbi @(gr11,2),gr13
	stbi gr13, @(gr12,2)
	ret
.L12:
	setlos #0, gr6
.L34:
	ldsb @(gr9,gr6),gr14
	stb gr14, @(gr8,gr6)
	addi gr6,#1,gr6
	cmp gr10,gr6,icc0
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
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc2
	ckne icc2, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L155:
	setlos #1, gr8
	ret
.L157:
	addi gr8,#1,gr5
	andi gr5, #127, gr6
	cmpi gr6,#32,icc0
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
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
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
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
	bra .L162
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
	mov gr8, gr19
	add gr4,gr20,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L174
	ldd @(gr18,gr0), gr14
	mov gr21, gr9
	mov gr21, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L175
	sethi #gotofffuncdeschi(__gtsf2), gr6
	setlo #gotofffuncdesclo(__gtsf2), gr6
	ldd @(gr6,gr20), gr14
	mov gr21, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc2
	bgt icc2,2,.L179
	setlos #0, gr8
.L171:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr9
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr9,gr0)
.L179:
	sethi #gotofffuncdeschi(__subf), gr7
	setlo #gotofffuncdesclo(__subf), gr7
	ldd @(gr7,gr20), gr14
	mov gr21, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr9,gr0)
.L174:
	mov gr19, gr8
	bra .L171
.L175:
	mov gr21, gr8
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
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
	bra .L180
.L189:
	cmpi gr7, #0, icc1
	beq icc1,2,.L187
.L188:
	mov gr20, gr8
	mov gr21, gr9
.L180:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr9, gr19
	mov gr8, gr9
	mov gr8, gr20
	add gr4,gr21,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L198
	ldd @(gr18,gr0), gr14
	mov gr19, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L197
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr20, gr7
	and gr6, gr19, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L199
	sethi #gotofffuncdeschi(__ltsf2), gr9
	setlo #gotofffuncdesclo(__ltsf2), gr9
	ldd @(gr9,gr21), gr14
	mov gr20, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr10
	andi gr10,#0xff,gr11
	cmpi gr11, #0, icc0
	bne icc0,2,.L198
	mov gr20, gr19
.L198:
	mov gr19, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr12,gr0)
.L199:
	cmpi gr7, #0, icc1
	bne icc1,2,.L198
.L197:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr12,gr0)
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
	bne icc0,0,.L208
	ldd @(gr18,gr0), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L207
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr22, gr7
	and gr6, gr20, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L209
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
	bne icc0,2,.L208
.L207:
	mov gr22, gr8
	mov gr23, gr9
	bra .L200
.L209:
	cmpi gr7, #0, icc1
	beq icc1,2,.L207
.L208:
	mov gr20, gr8
	mov gr21, gr9
.L200:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
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
	bne icc0,0,.L216
	ldd @(gr18,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L218
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr20, gr7
	and gr6, gr22, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L219
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
	beq icc0,2,.L216
.L218:
	mov gr20, gr8
	mov gr21, gr9
	bra .L210
.L219:
	cmpi gr7, #0, icc1
	bne icc1,2,.L218
.L216:
	mov gr22, gr8
	mov gr23, gr9
.L210:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
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
	mov gr8, gr19
	add gr4,gr21,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L226
	ldd @(gr18,gr0), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L228
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr19, gr7
	and gr6, gr20, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L229
	sethi #gotofffuncdeschi(__ltsf2), gr9
	setlo #gotofffuncdesclo(__ltsf2), gr9
	ldd @(gr9,gr21), gr14
	mov gr19, gr8
	mov gr20, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr10
	andi gr10,#0xff,gr11
	cmpi gr11, #0, icc0
	bne icc0,2,.L228
	mov gr20, gr19
.L228:
	mov gr19, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr12,gr0)
.L229:
	cmpi gr7, #0, icc1
	bne icc1,2,.L228
.L226:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr12,gr0)
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
	bne icc0,0,.L236
	ldd @(gr18,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L238
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr6, gr20, gr7
	and gr6, gr22, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L239
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
	beq icc0,2,.L236
.L238:
	mov gr20, gr8
	mov gr21, gr9
	bra .L230
.L239:
	cmpi gr7, #0, icc1
	bne icc1,2,.L238
.L236:
	mov gr22, gr8
	mov gr23, gr9
.L230:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
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
	beq icc0,0,.L243
	sethi #gotoffhi(s.0), gr7
	ldi @(gr15,#got12(_gp)), gr5
	sethi #gprelhi(digits), gr6
	mov gr7, gr10
	setlo #gotofflo(s.0), gr10
	setlo #gprello(digits), gr6
	add gr10,gr15,gr9
	add gr6,gr5,gr11
.L242:
	andi gr8, #63, gr12
	ldsb @(gr11,gr12),gr13
	srlicc gr8, #6, gr8, icc1
	stb gr13, @(gr9,gr0)
	addi gr9,#1,gr9
	bne icc1,2,.L242
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr9,gr0)
	ret
.L243:
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
	beq icc0,0,.L263
	mov gr9, gr18
	setlos #0, gr19
	bra .L265
.L277:
	add gr18,gr20,gr18
	beq icc1,0,.L263
.L265:
	ldd @(gr27,gr0), gr14
	mov gr18, gr9
	mov gr21, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc2
	mov gr18, gr26
	cmp gr25,gr19,icc1
	bne icc2,2,.L277
.L262:
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
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr7,gr0)
.L263:
	addi gr25,#1,gr6
	umul gr20,gr25,gr4
	st gr6, @(gr22,gr0)
	cmpi gr20, #0, icc0
	add gr23,gr5,gr26
	beq icc0,0,.L262
	sethi #gotofffuncdeschi(memmove), gr4
	setlo #gotofffuncdesclo(memmove), gr4
	ldd @(gr4,gr24), gr14
	mov gr20, gr10
	mov gr21, gr9
	mov gr26, gr8
	calll @(gr14,gr0)
	bra .L262
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
	beq icc0,0,.L279
	mov gr9, gr18
	setlos #0, gr19
	bra .L281
.L289:
	add gr18,gr22,gr18
	beq icc1,0,.L279
.L281:
	ldd @(gr21,gr0), gr14
	mov gr18, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc2
	mov gr18, gr24
	cmp gr23,gr19,icc1
	bne icc2,2,.L289
.L278:
	mov gr24, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr4,gr0)
.L279:
	setlos #0, gr24
	bra .L278
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
.L298:
	ldsb @(gr5,gr0),gr4
	addi gr4,#-9,gr6
	cmpi gr4,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L292
	bls icc1,2,.L292
	cmpi gr4,#43,icc2
	beq icc2,0,.L293
	cmpi gr4,#45,icc1
	bne icc1,2,.L313
	ldsbi @(gr5,1),gr8
	addi gr5,#1,gr5
	addi gr8,#-48,gr12
	cmpi gr12,#9,icc2
	bhi icc2,0,.L303
	setlos #1, gr11
.L296:
	setlos #0, gr8
.L300:
	ldsbi @(gr5,1),gr10
	smuli gr8,#10,gr8
	mov gr12, gr4
	sub gr9,gr12,gr8
	addi gr10,#-48,gr12
	cmpi gr12,#9,icc1
	addi gr5,#1,gr5
	bls icc1,2,.L300
	cmpi gr11, #0, icc2
	bne icc2,2,.L291
	sub gr4,gr9,gr8
.L291:
	ret
.L292:
	addi gr5,#1,gr5
	bra .L298
.L313:
	addi gr4,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L303
.L304:
	setlos #0, gr11
	bra .L296
.L293:
	ldsbi @(gr5,1),gr7
	addi gr5,#1,gr5
	addi gr7,#-48,gr12
	cmpi gr12,#9,icc0
	bls icc0,2,.L304
.L303:
	setlos #0, gr8
	ret
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	mov gr8, gr5
.L319:
	ldsb @(gr5,gr0),gr4
	addi gr4,#-9,gr6
	cmpi gr4,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L315
	bls icc1,2,.L315
	cmpi gr4,#43,icc2
	beq icc2,0,.L316
	cmpi gr4,#45,icc1
	beq icc1,2,.L317
	addi gr4,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L326
	setlos #0, gr11
.L320:
	setlos #0, gr8
.L323:
	ldsbi @(gr5,1),gr10
	smuli gr8,#10,gr8
	mov gr12, gr4
	sub gr9,gr12,gr8
	addi gr10,#-48,gr12
	cmpi gr12,#9,icc1
	addi gr5,#1,gr5
	bls icc1,2,.L323
	cmpi gr11, #0, icc2
	bne icc2,2,.L314
	sub gr4,gr9,gr8
.L314:
	ret
.L315:
	addi gr5,#1,gr5
	bra .L319
.L317:
	ldsbi @(gr5,1),gr8
	setlos #1, gr11
	addi gr8,#-48,gr12
	cmpi gr12,#9,icc2
	addi gr5,#1,gr5
	bls icc2,2,.L320
.L326:
	setlos #0, gr8
	ret
.L316:
	ldsbi @(gr5,1),gr7
	addi gr5,#1,gr5
	addi gr7,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L326
	setlos #0, gr11
	bra .L320
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	mov gr8, gr7
.L343:
	ldsb @(gr7,gr0),gr6
	addi gr6,#-9,gr4
	cmpi gr6,#32,icc0
	cmpi gr4,#4,icc1
	beq icc0,0,.L337
	bls icc1,2,.L337
	cmpi gr6,#43,icc2
	beq icc2,0,.L338
	cmpi gr6,#45,icc1
	bne icc1,2,.L358
	ldsbi @(gr7,1),gr9
	addi gr7,#1,gr7
	addi gr9,#-48,gr6
	cmpi gr6,#9,icc2
	bhi icc2,0,.L348
	setlos #1, gr18
.L341:
	setlos #0, gr8
	setlos #0, gr9
.L345:
	srli gr9, #30, gr11
	slli gr8,#2,gr10
	slli gr9,#2,gr13
	or gr11, gr10, gr12
	addcc gr13,gr9,gr5,icc1
	ldsbi @(gr7,1),gr9
	addx gr12,gr8,gr14,icc1
	mov gr6, gr11
	srli gr5, #31, gr15
	srai gr6, #31, gr10
	slli gr14,#1,gr4
	addi gr9,#-48,gr6
	slli gr5,#1,gr5
	or gr15, gr4, gr12
	subcc gr5,gr11,gr9,icc0
	cmpi gr6,#9,icc2
	addi gr7,#1,gr7
	subx gr12,gr10,gr8,icc0
	bls icc2,2,.L345
	cmpi gr18, #0, icc1
	bne icc1,2,.L336
	subcc gr11,gr5,gr9,icc2
	subx gr10,gr12,gr8,icc2
.L336:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr7
	addi sp,#24,sp
	jmpl @(gr7,gr0)
.L337:
	addi gr7,#1,gr7
	bra .L343
.L358:
	addi gr6,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L348
.L349:
	setlos #0, gr18
	bra .L341
.L338:
	ldsbi @(gr7,1),gr8
	addi gr7,#1,gr7
	addi gr8,#-48,gr6
	cmpi gr6,#9,icc0
	bls icc0,2,.L349
.L348:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr7
	setlos #0, gr8
	setlos #0, gr9
	addi sp,#24,sp
	jmpl @(gr7,gr0)
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
	mov gr9, gr21
	mov gr11, gr22
	mov gr12, gr24
	bne icc0,2,.L363
	bra .L360
.L369:
	beq icc1,0,.L359
	sub gr18,gr19,gr18
	cmpi gr18, #0, icc2
	add gr20,gr22,gr21
	beq icc2,0,.L360
.L363:
	srli gr18, #1, gr19
	umul gr19,gr22,gr4
	add gr21,gr5,gr20
	ldd @(gr24,gr0), gr14
	mov gr20, gr9
	mov gr23, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	addi gr18,#-1,gr18
	bp icc1,2,.L369
	mov gr19, gr18
	cmpi gr18, #0, icc2
	bne icc2,2,.L363
.L360:
	setlos #0, gr20
.L359:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
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
	mov gr8, gr23
	mov gr9, gr21
	mov gr11, gr22
	mov gr12, gr25
	mov gr13, gr24
	beq icc0,0,.L375
.L383:
	srai gr18, #1, gr19
	umul gr19,gr22,gr4
	add gr21,gr5,gr20
	ldd @(gr25,gr0), gr14
	mov gr24, gr10
	mov gr20, gr9
	mov gr23, gr8
	calll @(gr14,gr0)
	addi gr18,#-1,gr18
	cmpi gr8, #0, icc0
	cmpi gr8,#0,icc1
	sraicc gr18, #1, gr18, icc2
	beq icc0,0,.L370
	cmpi gr19, #0, icc0
	ble icc1,0,.L373
	add gr20,gr22,gr21
	bne icc2,2,.L383
.L375:
	setlos #0, gr20
.L370:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr4,gr0)
.L373:
	beq icc0,0,.L375
	mov gr19, gr18
	bra .L383
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
	bn icc0,0,.L389
	ret
.L389:
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
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
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
	bn icc0,0,.L396
	ret
.L396:
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
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
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
	bne icc0,2,.L399
	bra .L402
.L401:
	ldi @(gr8,4), gr4
	addi gr8,#4,gr8
	cmpi gr4, #0, icc2
	beq icc2,0,.L402
.L399:
	cmp gr9,gr4,icc1
	bne icc1,2,.L401
	ret
.L402:
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
	bne icc0,0,.L408
	setlos #4, gr4
	addi gr9,#-4,gr7
	bra .L407
.L409:
	ld @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc2
	bne icc2,0,.L408
.L407:
	cmpi gr5, #0, icc1
	bne icc1,2,.L409
.L408:
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
.L414:
	ld @(gr9,gr5), gr4
	st gr4, @(gr8,gr5)
	cmpi gr4, #0, icc0
	addi gr5,#4,gr5
	bne icc0,2,.L414
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L419
	mov gr8, gr5
.L418:
	ldi @(gr5,4), gr6
	addi gr5,#4,gr5
	cmpi gr6, #0, icc1
	bne icc1,2,.L418
	sub gr5,gr8,gr7
	srai gr7, #2, gr8
	ret
.L419:
	setlos #0, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L422
	bra .L427
.L431:
	beq icc1,0,.L424
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc2,0,.L427
.L422:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmpi gr4, #0, icc1
	cmp gr4,gr5,icc0
	addicc gr10, #-1, gr10, icc2
	beq icc0,2,.L431
.L424:
	ld @(gr8,gr0), gr6
	ld @(gr9,gr0), gr7
	cmp gr6,gr7,icc1
	blt icc1,2,.L432
	ckgt icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L432:
	setlos #-1, gr8
	ret
.L427:
	setlos #0, gr8
	ret
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	bne icc0,2,.L434
	bra .L437
.L436:
	addi gr8,#4,gr8
	beq icc1,0,.L437
.L434:
	ld @(gr8,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr9,icc2
	bne icc2,2,.L436
	ret
.L437:
	setlos #0, gr8
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L442
	bra .L447
.L444:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc1,0,.L447
.L442:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr5,gr4,icc2
	beq icc2,2,.L444
	blt icc2,2,.L453
	ckgt icc2, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L447:
	setlos #0, gr8
	ret
.L453:
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
	beq icc0,0,.L455
	sethi #gotofffuncdeschi(memcpy), gr6
	setlo #gotofffuncdesclo(memcpy), gr6
	ldd @(gr6,gr15), gr14
	slli gr10,#2,gr10
	calll @(gr14,gr0)
.L455:
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
	beq icc0,0,.L467
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc1
	addi gr10,#-1,gr7
	bnc icc1,2,.L472
	cmpi gr10, #0, icc1
	beq icc1,0,.L467
	slli gr7,#2,gr12
.L464:
	ld @(gr9,gr12), gr10
	st gr10, @(gr8,gr12)
	addi gr12,#-4,gr12
	cmpi gr12,#-4,icc2
	bne icc2,2,.L464
.L467:
	ret
.L472:
	cmpi gr10, #0, icc2
	setlos #0, gr11
	beq icc2,0,.L467
.L462:
	ld @(gr9,gr11), gr6
	addi gr7,#-1,gr7
	st gr6, @(gr8,gr11)
	cmpi gr7,#-1,icc0
	addi gr11,#4,gr11
	bne icc0,2,.L462
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L474
	mov gr8, gr5
.L475:
	addi gr4,#-1,gr4
	st gr9, @(gr5,gr0)
	cmpi gr4,#-1,icc1
	addi gr5,#4,gr5
	bne icc1,2,.L475
.L474:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	mov gr9, gr4
	bnc icc0,2,.L481
	cmpi gr10, #0, icc1
	beq icc1,0,.L480
	addi gr8,#-1,gr7
	addi gr9,#-1,gr6
.L483:
	ldsb @(gr7,gr10),gr5
	stb gr5, @(gr6,gr10)
	addicc gr10, #-1, gr10, icc2
	bne icc2,2,.L483
.L480:
	ret
.L481:
	cmp gr8,gr9,icc1
	beq icc1,0,.L480
	cmpi gr10, #0, icc2
	beq icc2,0,.L480
	addi gr10,#-1,gr5
	cmpi gr5,#6,icc0
	bls icc0,0,.L491
	or gr9, gr8, gr6
	andicc gr6, #3, gr0, icc1
	setlos #1, gr7
	ckeq icc1, cc4
	cmov gr0, gr7, cc4, 0
	andi gr7,#0xff,gr9
	cmpi gr9, #0, icc2
	beq icc2,0,.L491
	addi gr8,#1,gr11
	sub gr4,gr11,gr12
	cmpi gr12,#2,icc0
	setlos #1, gr13
	ckhi icc0, cc5
	cmov gr0, gr13, cc5, 0
	andi gr13,#0xff,gr14
	cmpi gr14, #0, icc1
	beq icc1,0,.L491
	andi gr10, #-4, gr7
	setlos #0, gr5
.L485:
	ld @(gr8,gr5), gr6
	st gr6, @(gr4,gr5)
	addi gr5,#4,gr5
	cmp gr5,gr7,icc2
	bne icc2,2,.L485
	cmp gr10,gr5,icc0
	add gr4,gr5,gr9
	add gr8,gr5,gr11
	sub gr10,gr5,gr10
	beq icc0,0,.L480
	ldsb @(gr8,gr5),gr8
	cmpi gr10,#1,icc1
	stb gr8, @(gr4,gr5)
	beq icc1,0,.L480
	ldsbi @(gr11,1),gr4
	cmpi gr10,#2,icc2
	stbi gr4, @(gr9,1)
	beq icc2,0,.L480
	ldsbi @(gr11,2),gr12
	stbi gr12, @(gr9,2)
	ret
.L491:
	setlos #0, gr14
.L513:
	ldsb @(gr8,gr14),gr13
	stb gr13, @(gr4,gr14)
	addi gr14,#1,gr14
	cmp gr10,gr14,icc0
	bne icc0,2,.L513
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
	sub gr4,gr14,gr12
	cmpi gr5, #0, icc1
	srl gr11, gr13, gr4
	slli gr8,#1,gr7
	sll gr8,gr10,gr11
	addi gr14,#-32,gr6
	sll gr7,gr12,gr13
	cmpi gr6, #0, icc0
	sll gr9,gr5,gr12
	srl gr9, gr14, gr7
	or gr4, gr11, gr5
	ckp icc1, cc4
	sll gr9,gr10,gr10
	srl gr8, gr6, gr6
	cmov gr5, gr12, cc4, 0
	srl gr8, gr14, gr8
	ckp icc1, cc5
	or gr13, gr7, gr4
	ckp icc0, cc6
	ckp icc0, cc4
	cmov gr0, gr9, cc5, 1
	cmov gr10, gr9, cc5, 0
	cmov gr4, gr6, cc6, 0
	cmov gr0, gr8, cc4, 1
	or gr6, gr9, gr9
	or gr8, gr12, gr8
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
	sub gr4,gr14,gr12
	cmpi gr5, #0, icc1
	sll gr11,gr13,gr4
	srli gr9, #1, gr7
	srl gr9, gr10, gr11
	addi gr14,#-32,gr6
	srl gr7, gr12, gr13
	cmpi gr6, #0, icc0
	srl gr8, gr5, gr12
	sll gr8,gr14,gr7
	or gr4, gr11, gr5
	ckp icc1, cc4
	srl gr8, gr10, gr10
	sll gr9,gr6,gr6
	cmov gr5, gr12, cc4, 0
	sll gr9,gr14,gr9
	ckp icc1, cc5
	or gr13, gr7, gr4
	ckp icc0, cc6
	ckp icc0, cc4
	cmov gr0, gr8, cc5, 1
	cmov gr10, gr8, cc5, 0
	cmov gr4, gr6, cc6, 0
	cmov gr0, gr9, cc4, 1
	or gr9, gr12, gr9
	or gr6, gr8, gr8
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
	or gr6, gr5, gr14
	slli gr8,#24,gr10
	srli gr8, #8, gr9
	setlo #lo(#65280), gr12
	srli gr4, #8, gr7
	sethi #hi(#16711680), gr11
	slli gr4,#24,gr5
	and gr9, gr12, gr6
	andi gr14, #255, gr13
	setlo #lo(#16711680), gr11
	srli gr8, #24, gr8
	or gr10, gr7, gr7
	or gr8, gr6, gr9
	and gr14, gr11, gr14
	or gr5, gr13, gr8
	slli gr4,#8,gr4
	and gr7, gr12, gr12
	or gr9, gr14, gr5
	or gr8, gr12, gr6
	and gr4, gr11, gr11
	or gr5, gr10, gr9
	or gr6, gr11, gr8
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
	bra .L530
.L528:
	beq icc1,0,.L532
.L530:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	addi gr4,#1,gr4
	cmpi gr4,#32,icc1
	beq icc0,2,.L528
	mov gr4, gr8
	ret
.L532:
	setlos #0, gr8
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L536
	andicc gr8, #1, gr4, icc1
	bne icc1,0,.L533
	setlos #1, gr4
.L535:
	srai gr8, #1, gr8
	andicc gr8, #1, gr0, icc2
	addi gr4,#1,gr4
	beq icc2,2,.L535
.L533:
	mov gr4, gr8
	ret
.L536:
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
	bn icc0,2,.L542
	sethi #gotofffuncdeschi(__gtsf2), gr6
	setlo #gotofffuncdesclo(__gtsf2), gr6
	ldd @(gr6,gr19), gr14
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(fp,8), gr7
	ckgt icc1, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#24,sp
	jmpl @(gr7,gr0)
.L542:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#24,sp
	jmpl @(gr7,gr0)
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
	bn icc0,2,.L546
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
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr7
	ckgt icc1, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr7,gr0)
.L546:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
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
	bn icc0,2,.L550
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
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr7
	ckgt icc1, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr7,gr0)
.L550:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
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
	bne icc0,0,.L553
	sethi #gotofffuncdeschi(__addf), gr6
	setlo #gotofffuncdesclo(__addf), gr6
	ldd @(gr6,gr21), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nesf2), gr7
	setlo #gotofffuncdesclo(__nesf2), gr7
	ldd @(gr7,gr21), gr14
	mov gr20, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	beq icc1,2,.L553
	cmpi gr18, #0, icc2
	bn icc2,0,.L567
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
.L555:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L556
	sethi #gotofffuncdeschi(__mulf), gr22
.L557:
	setlo #gotofffuncdesclo(__mulf), gr22
	ldd @(gr22,gr21), gr14
	mov gr20, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	mov gr8, gr20
.L556:
	srli gr18, #31, gr8
	add gr8,gr18,gr9
	sraicc gr9, #1, gr18, icc1
	beq icc1,0,.L553
	sethi #gotofffuncdeschi(__mulf), gr22
	mov gr22, gr23
	setlo #gotofffuncdesclo(__mulf), gr23
.L558:
	ldd @(gr23,gr21), gr14
	mov gr19, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	srli gr18, #31, gr10
	andicc gr18, #1, gr0, icc2
	add gr10,gr18,gr11
	mov gr8, gr19
	bne icc2,2,.L557
	srai gr11, #1, gr18
	bra .L558
.L553:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr12,gr0)
.L567:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L555
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
	bne icc0,0,.L569
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
	beq icc1,2,.L569
	cmpi gr18, #0, icc2
	bn icc2,0,.L583
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L571:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L572
	sethi #gotofffuncdeschi(__muld), gr24
.L573:
	setlo #gotofffuncdesclo(__muld), gr24
	ldd @(gr24,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L572:
	srli gr18, #31, gr8
	add gr8,gr18,gr9
	sraicc gr9, #1, gr18, icc1
	beq icc1,0,.L569
	sethi #gotofffuncdeschi(__muld), gr24
	mov gr24, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L574:
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
	bne icc2,2,.L573
	srai gr11, #1, gr18
	bra .L574
.L569:
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
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr12,gr0)
.L583:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L571
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
	bne icc0,0,.L585
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
	beq icc1,2,.L585
	cmpi gr18, #0, icc2
	bn icc2,0,.L599
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L587:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L588
	sethi #gotofffuncdeschi(__muld), gr24
.L589:
	setlo #gotofffuncdesclo(__muld), gr24
	ldd @(gr24,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L588:
	srli gr18, #31, gr8
	add gr8,gr18,gr9
	sraicc gr9, #1, gr18, icc1
	beq icc1,0,.L585
	sethi #gotofffuncdeschi(__muld), gr24
	mov gr24, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L590:
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
	bne icc2,2,.L589
	srai gr11, #1, gr18
	bra .L590
.L585:
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
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr12,gr0)
.L599:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L587
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	cmpi gr10, #0, icc0
	beq icc0,0,.L601
	addi gr10,#-1,gr4
	cmpi gr4,#3,icc1
	bls icc1,0,.L608
	or gr8, gr9, gr5
	andicc gr5, #3, gr0, icc2
	bne icc2,0,.L608
	andi gr10, #-4, gr7
	setlos #0, gr13
.L603:
	ld @(gr8,gr13), gr6
	ld @(gr9,gr13), gr11
	xor gr11, gr6, gr12
	st gr12, @(gr8,gr13)
	addi gr13,#4,gr13
	cmp gr13,gr7,icc0
	bne icc0,2,.L603
	cmp gr10,gr13,icc1
	add gr8,gr13,gr14
	add gr9,gr13,gr7
	sub gr10,gr13,gr10
	beq icc1,0,.L601
	ldsb @(gr8,gr13),gr4
	ldsb @(gr9,gr13),gr9
	cmpi gr10,#1,icc2
	xor gr4, gr9, gr5
	stb gr5, @(gr8,gr13)
	beq icc2,0,.L601
	ldsbi @(gr14,1),gr6
	ldsbi @(gr7,1),gr11
	cmpi gr10,#2,icc0
	xor gr11, gr6, gr12
	stbi gr12, @(gr14,1)
	beq icc0,0,.L601
	ldsbi @(gr14,2),gr13
	ldsbi @(gr7,2),gr7
	xor gr7, gr13, gr10
	stbi gr10, @(gr14,2)
.L601:
	ret
.L608:
	setlos #0, gr4
.L620:
	ldsb @(gr8,gr4),gr14
	ldsb @(gr9,gr4),gr5
	xor gr5, gr14, gr6
	stb gr6, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc1
	bne icc1,2,.L620
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	ldsb @(gr8,gr0),gr4
	mov gr8, gr7
	cmpi gr4, #0, icc0
	beq icc0,0,.L622
.L623:
	ldsbi @(gr7,1),gr5
	addi gr7,#1,gr7
	cmpi gr5, #0, icc1
	bne icc1,2,.L623
.L622:
	cmpi gr10, #0, icc2
	bne icc2,2,.L624
	bra .L625
.L626:
	addi gr9,#1,gr9
	addi gr7,#1,gr7
	beq icc1,0,.L625
.L624:
	ldsb @(gr9,gr0),gr6
	addicc gr10, #-1, gr10, icc1
	stb gr6, @(gr7,gr0)
	cmpi gr6, #0, icc0
	bne icc0,2,.L626
	ret
.L625:
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
	beq icc0,0,.L635
.L636:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc1
	bne icc1,0,.L638
.L635:
	ret
.L638:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc2
	bne icc2,2,.L636
	ret
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr6
	movgs gr9, lcr
	cmpi gr6, #0, icc0
	beq icc0,0,.L646
.L642:
	movsg lcr, gr4
	bra .L645
.L644:
	beq icc1,0,.L643
.L645:
	ldsb @(gr4,gr0),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc2
	cmp gr5,gr6,icc1
	bne icc2,2,.L644
	ldsbi @(gr8,1),gr6
	addi gr8,#1,gr8
	cmpi gr6, #0, icc0
	bne icc0,2,.L642
.L646:
	setlos #0, gr8
.L643:
	ret
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L652:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc1
	ckeq icc1, cc5
	cmpi gr4, #0, icc0
	cmov gr8, gr5, cc5, 1
	addi gr8,#1,gr8
	bne icc0,2,.L652
	mov gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	ldsb @(gr9,gr0),gr10
	cmpi gr10, #0, icc0
	beq icc0,0,.L654
	mov gr9, gr4
.L656:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc1
	bne icc1,2,.L656
	subcc gr4, gr9, gr6, icc2
	beq icc2,0,.L654
	andi gr10,#0xff,gr13
	addi gr6,#-1,gr12
	bra .L674
.L676:
	cmpi gr7, #0, icc1
	addi gr8,#1,gr8
	beq icc1,0,.L675
.L674:
	ldsb @(gr8,gr0),gr7
	cmp gr7,gr10,icc0
	bne icc0,2,.L676
	mov gr13, gr5
	add gr8,gr12,gr11
	mov gr9, gr6
	mov gr8, gr4
	bra .L658
.L677:
	beq icc1,0,.L659
	bne icc2,0,.L659
	ldub @(gr4,gr0),gr5
	addi gr6,#1,gr6
	cmpi gr5, #0, icc1
	beq icc1,0,.L659
.L658:
	ldub @(gr6,gr0),gr14
	cmp gr4,gr11,icc1
	cmpi gr14, #0, icc0
	addi gr4,#1,gr4
	cmp gr14,gr5,icc2
	bne icc0,2,.L677
.L659:
	ldub @(gr6,gr0),gr7
	cmp gr7,gr5,icc0
	beq icc0,0,.L654
	addi gr8,#1,gr8
	bra .L674
.L675:
	setlos #0, gr8
.L654:
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
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
	bn icc0,0,.L688
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	ble icc1,0,.L682
	ldd @(gr18,gr0), gr14
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc2
	bn icc2,0,.L681
.L682:
	mov gr20, gr8
	mov gr21, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr10,gr0)
.L688:
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ble icc0,2,.L682
.L681:
	sethi #hi(#-2147483648), gr7
	setlo #lo(#-2147483648), gr7
	xor gr20, gr7, gr20
	bra .L682
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	cmpi gr11, #0, icc0
	beq icc0,0,.L689
	cmp gr9,gr11,icc1
	bc icc1,0,.L700
	sub gr9,gr11,gr7
	add gr8,gr7,gr7
	cmp gr8,gr7,icc2
	bhi icc2,0,.L700
	ldsb @(gr10,gr0),gr12
	bra .L695
.L699:
	mov gr9, gr8
.L691:
	cmp gr7,gr8,icc0
	bc icc0,0,.L700
.L695:
	ldsb @(gr8,gr0),gr4
	addi gr8,#1,gr9
	cmp gr4,gr12,icc0
	bne icc0,2,.L699
	cmpi gr11,#1,icc1
	beq icc1,0,.L689
.L694:
	setlos #1, gr13
	bra .L692
.L693:
	beq icc0,0,.L689
.L692:
	ldub @(gr8,gr13),gr6
	ldub @(gr10,gr13),gr5
	addi gr13,#1,gr13
	cmp gr6,gr5,icc2
	cmp gr13,gr11,icc0
	beq icc2,2,.L693
	cmp gr7,gr9,icc1
	bc icc1,0,.L700
	ldsb @(gr9,gr0),gr14
	addi gr9,#1,gr8
	cmp gr12,gr14,icc2
	bne icc2,2,.L691
	movgs gr9, lcr
	mov gr8, gr9
	movsg lcr, gr8
	bra .L694
.L700:
	setlos #0, gr8
.L689:
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
	beq icc0,0,.L709
	sethi #gotofffuncdeschi(memmove), gr6
	setlo #gotofffuncdesclo(memmove), gr6
	ldd @(gr6,gr15), gr14
	calll @(gr14,gr0)
.L709:
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
	sti gr21, @(sp,20)
	sethi #gotofffuncdeschi(__ltdf2), gr21
	sti fp, @(sp,48)
	movsg lr, gr5
	addi sp,#48,fp
	mov gr21, gr4
	sti gr18, @(sp,8)
	sti gr19, @(sp,12)
	sti gr20, @(sp,16)
	sti gr22, @(sp,24)
	sti gr27, @(sp,44)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	sti gr5, @(fp,8)
	sti gr16, @(sp,0)
	sti gr17, @(sp,4)
	sti gr23, @(sp,28)
	sti gr24, @(sp,32)
	sti gr25, @(sp,36)
	sti gr26, @(sp,40)
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr10, gr27
	setlos #0, gr11
	setlos #0, gr10
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr20,gr22
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L735
	sethi #gotofffuncdeschi(__gedf2), gr26
	mov gr26, gr6
	setlo #gotofffuncdesclo(__gedf2), gr6
	ldd @(gr6,gr20), gr14
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bn icc1,0,.L736
	setlos #0, gr16
.L716:
	sethi #gotofffuncdeschi(__muld), gr21
	sethi #hi(#1071644672), gr24
	sethi #hi(#1072693248), gr22
	setlos #0, gr17
	setlo #gotofffuncdesclo(__muld), gr21
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	setlo #gotofffuncdesclo(__gedf2), gr26
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
.L722:
	ldd @(gr21,gr20), gr14
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	ldd @(gr26,gr20), gr14
	mov gr8, gr18
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	addi gr17,#1,gr17
	bp icc1,2,.L722
.L723:
	st gr17, @(gr27,gr0)
	cmpi gr16, #0, icc2
	beq icc2,0,.L729
	sethi #hi(#-2147483648), gr11
	setlo #lo(#-2147483648), gr11
	xor gr18, gr11, gr8
	mov gr19, gr9
.L713:
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
	ldi @(fp,8), gr12
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr12,gr0)
.L736:
	ldd @(gr22,gr0), gr14
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc2
	bp icc2,2,.L719
	sethi #gotofffuncdeschi(__nedf2), gr7
	setlo #gotofffuncdesclo(__nedf2), gr7
	ldd @(gr7,gr20), gr14
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L728
.L719:
	st gr0, @(gr27,gr0)
	mov gr18, gr8
	mov gr19, gr9
	bra .L713
.L735:
	sethi #gotofffuncdeschi(__ledf2), gr8
	setlo #gotofffuncdesclo(__ledf2), gr8
	sethi #hi(#-2147483648), gr9
	ldd @(gr8,gr20), gr14
	setlo #lo(#-2147483648), gr9
	sethi #hi(#3220176896), gr10
	xor gr18, gr9, gr17
	setlo #lo(#3220176896), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	mov gr19, gr23
	bgt icc1,0,.L737
	mov gr17, gr18
	setlos #1, gr16
	sethi #gotofffuncdeschi(__gedf2), gr26
	bra .L716
.L729:
	mov gr18, gr8
	mov gr19, gr9
	bra .L713
.L737:
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
	ble icc2,2,.L719
	setlos #1, gr16
.L717:
	sethi #gotofffuncdeschi(__addd), gr24
	sethi #hi(#1071644672), gr25
	mov gr17, gr18
	mov gr23, gr19
	setlos #0, gr17
	setlo #gotofffuncdesclo(__addd), gr24
	setlo #gotofffuncdesclo(__ltdf2), gr21
	setlo #lo(#1071644672), gr25
	setlos #0, gr22
.L724:
	ldd @(gr24,gr20), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	ldd @(gr21,gr20), gr14
	mov gr8, gr18
	mov gr25, gr10
	mov gr22, gr11
	mov gr18, gr8
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	addi gr17,#-1,gr17
	bn icc0,2,.L724
	bra .L723
.L728:
	mov gr18, gr17
	mov gr19, gr23
	setlos #0, gr16
	bra .L717
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
	beq icc0,0,.L738
.L741:
	andi gr4, #1, gr7
	setlos #0, gr6
	subcc gr0,gr7,gr15,icc1
	slli gr5,#31,gr18
	srli gr4, #1, gr4
	subx gr0,gr6,gr14,icc1
	and gr15, gr11, gr13
	srli gr5, #1, gr5
	or gr18, gr4, gr4
	and gr14, gr10, gr12
	srli gr11, #31, gr6
	slli gr10,#1,gr10
	addcc gr9,gr13,gr9,icc0
	orcc gr5, gr4, gr0, icc2
	addx gr8,gr12,gr8,icc0
	or gr6, gr10, gr10
	slli gr11,#1,gr11
	bne icc2,2,.L741
.L738:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr11
	addi sp,#24,sp
	jmpl @(gr11,gr0)
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp gr9,gr8,icc0
	mov gr8, gr5
	setlos #1, gr4
	bnc icc0,0,.L746
	setlos #32, gr8
	setlos #1, gr4
	bra .L745
.L749:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L747
	beq icc1,0,.L748
.L745:
	cmpi gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L749
.L746:
	setlos #0, gr8
.L751:
	cmp gr5,gr9,icc1
	cknc icc1, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L751
.L748:
	cmpi gr10, #0, icc2
	ckne icc2, cc5
	cmov gr5, gr8, cc5, 1
	ret
.L747:
	cmpi gr4, #0, icc2
	bne icc2,2,.L746
	setlos #0, gr8
	bra .L748
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
	beq icc0,0,.L762
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
.L762:
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
	beq icc0,0,.L769
.L767:
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
.L769:
	cmp gr7,gr8,icc1
	bne icc1,2,.L767
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
	beq icc0,0,.L770
.L772:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc1
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc1,2,.L772
.L770:
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
	bc icc0,2,.L779
	add gr9,gr10,gr4
	cmp gr8,gr4,icc1
	bls icc1,2,.L810
.L779:
	cmpi gr6, #0, icc1
	beq icc1,0,.L811
	slli gr6,#3,gr8
	mov gr11, gr4
	mov gr7, gr6
	add gr8,gr7,gr13
.L782:
	ld @(gr6,gr0), gr14
	ldi @(gr6,4), gr9
	addi gr6,#8,gr6
	st gr14, @(gr4,gr0)
	sti gr9, @(gr4,4)
	cmp gr6,gr13,icc0
	addi gr4,#8,gr4
	bne icc0,2,.L782
	cmp gr10,gr12,icc1
	bls icc1,0,.L775
	sub gr10,gr12,gr13
	addi gr13,#-1,gr5
	cmpi gr5,#6,icc2
	addi gr12,#1,gr4
	bls icc2,0,.L808
	add gr7,gr4,gr14
	add gr11,gr12,gr8
	sub gr8,gr14,gr9
	cmpi gr9,#2,icc0
	setlos #1, gr6
	ckhi icc0, cc4
	cmov gr0, gr6, cc4, 0
	andi gr6,#0xff,gr5
	cmpi gr5, #0, icc1
	add gr7,gr12,gr14
	beq icc1,0,.L808
	or gr14, gr8, gr9
	andicc gr9, #3, gr0, icc2
	setlos #1, gr6
	ckeq icc2, cc5
	cmov gr0, gr6, cc5, 0
	andi gr6,#0xff,gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L808
	andi gr13, #-4, gr9
	setlos #0, gr4
.L785:
	ld @(gr14,gr4), gr6
	st gr6, @(gr8,gr4)
	addi gr4,#4,gr4
	cmp gr9,gr4,icc1
	bne icc1,2,.L785
	cmp gr9,gr13,icc2
	add gr9,gr12,gr12
	beq icc2,0,.L775
	ldsb @(gr7,gr12),gr13
	addi gr12,#1,gr8
	stb gr13, @(gr11,gr12)
	cmp gr10,gr8,icc0
	bls icc0,0,.L775
	ldsb @(gr7,gr8),gr14
	addi gr12,#2,gr5
	stb gr14, @(gr11,gr8)
	cmp gr10,gr5,icc1
	bls icc1,0,.L775
	ldsb @(gr7,gr5),gr7
	stb gr7, @(gr11,gr5)
.L775:
	ret
.L812:
	addi gr4,#1,gr4
.L808:
	ldsb @(gr7,gr12),gr9
	cmp gr10,gr4,icc2
	stb gr9, @(gr11,gr12)
	mov gr4, gr12
	bne icc2,2,.L812
	ret
.L810:
	cmpi gr10, #0, icc2
	addi gr10,#-1,gr10
	beq icc2,0,.L775
.L780:
	ldsb @(gr7,gr10),gr5
	stb gr5, @(gr11,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L780
	ret
.L811:
	cmpi gr10, #0, icc2
	beq icc2,0,.L775
	addi gr12,#1,gr4
	bra .L808
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	cmp gr8,gr9,icc0
	mov gr9, gr6
	mov gr8, gr5
	srli gr10, #1, gr9
	bc icc0,2,.L817
	add gr6,gr10,gr4
	cmp gr8,gr4,icc1
	bls icc1,2,.L840
.L817:
	cmpi gr9, #0, icc1
	beq icc1,0,.L816
	addi gr9,#-1,gr11
	cmpi gr11,#8,icc2
	bls icc2,0,.L820
	or gr6, gr5, gr12
	andicc gr12, #3, gr0, icc0
	setlos #1, gr13
	ckeq icc0, cc4
	cmov gr0, gr13, cc4, 0
	andi gr13,#0xff,gr14
	cmpi gr14, #0, icc1
	beq icc1,0,.L820
	addi gr6,#2,gr4
	cmp gr5,gr4,icc2
	setlos #1, gr7
	ckne icc2, cc5
	cmov gr0, gr7, cc5, 0
	andi gr7,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,0,.L820
	srli gr10, #2, gr11
	andi gr10, #-4, gr12
	setlos #0, gr14
.L821:
	ld @(gr6,gr14), gr13
	st gr13, @(gr5,gr14)
	addi gr14,#4,gr14
	cmp gr14,gr12,icc1
	bne icc1,2,.L821
	slli gr11,#1,gr4
	cmp gr9,gr4,icc2
	beq icc2,0,.L816
	ldsh @(gr6,gr14),gr9
	sth gr9, @(gr5,gr14)
.L816:
	andicc gr10, #1, gr0, icc1
	beq icc1,2,.L813
.L841:
	addi gr10,#-1,gr10
	ldsb @(gr6,gr10),gr6
	stb gr6, @(gr5,gr10)
.L813:
	ret
.L840:
	cmpi gr10, #0, icc2
	addi gr10,#-1,gr8
	beq icc2,0,.L813
.L818:
	ldsb @(gr6,gr8),gr7
	stb gr7, @(gr5,gr8)
	addi gr8,#-1,gr8
	cmpi gr8,#-1,icc0
	bne icc0,2,.L818
	ret
.L820:
	slli gr9,#1,gr8
	setlos #0, gr11
.L823:
	ldsh @(gr6,gr11),gr7
	sth gr7, @(gr5,gr11)
	addi gr11,#2,gr11
	cmp gr8,gr11,icc0
	bne icc0,2,.L823
	andicc gr10, #1, gr0, icc1
	beq icc1,2,.L813
	bra .L841
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
	bc icc0,2,.L846
	add gr6,gr10,gr4
	cmp gr7,gr4,icc1
	bls icc1,2,.L877
.L846:
	cmpi gr8, #0, icc1
	beq icc1,0,.L878
	slli gr8,#2,gr11
	setlos #0, gr13
.L849:
	ld @(gr6,gr13), gr12
	st gr12, @(gr7,gr13)
	addi gr13,#4,gr13
	cmp gr13,gr11,icc0
	bne icc0,2,.L849
	cmp gr10,gr9,icc1
	bls icc1,0,.L842
	sub gr10,gr9,gr14
	addi gr14,#-1,gr8
	cmpi gr8,#6,icc2
	addi gr9,#1,gr4
	bls icc2,0,.L875
	add gr7,gr9,gr11
	add gr6,gr4,gr5
	sub gr11,gr5,gr12
	cmpi gr12,#2,icc0
	setlos #1, gr13
	ckhi icc0, cc4
	cmov gr0, gr13, cc4, 0
	andi gr13,#0xff,gr8
	cmpi gr8, #0, icc1
	add gr6,gr9,gr12
	beq icc1,0,.L875
	or gr12, gr11, gr5
	andicc gr5, #3, gr0, icc2
	setlos #1, gr13
	ckeq icc2, cc5
	cmov gr0, gr13, cc5, 0
	andi gr13,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,0,.L875
	andi gr14, #-4, gr13
	setlos #0, gr4
.L852:
	ld @(gr12,gr4), gr5
	st gr5, @(gr11,gr4)
	addi gr4,#4,gr4
	cmp gr13,gr4,icc1
	bne icc1,2,.L852
	cmp gr13,gr14,icc2
	add gr13,gr9,gr9
	beq icc2,0,.L842
	ldsb @(gr6,gr9),gr14
	addi gr9,#1,gr11
	stb gr14, @(gr7,gr9)
	cmp gr10,gr11,icc0
	bls icc0,0,.L842
	ldsb @(gr6,gr11),gr12
	addi gr9,#2,gr8
	stb gr12, @(gr7,gr11)
	cmp gr10,gr8,icc1
	bls icc1,0,.L842
	ldsb @(gr6,gr8),gr6
	stb gr6, @(gr7,gr8)
.L842:
	ret
.L879:
	addi gr4,#1,gr4
.L875:
	ldsb @(gr6,gr9),gr13
	cmp gr10,gr4,icc2
	stb gr13, @(gr7,gr9)
	mov gr4, gr9
	bne icc2,2,.L879
	ret
.L877:
	cmpi gr10, #0, icc2
	addi gr10,#-1,gr10
	beq icc2,0,.L842
.L847:
	ldsb @(gr6,gr10),gr5
	stb gr5, @(gr7,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L847
	ret
.L878:
	cmpi gr10, #0, icc2
	beq icc2,0,.L842
	addi gr9,#1,gr4
	bra .L875
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatunsisf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatunsisf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr6,gr0)
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
	bne icc0,0,.L889
	sraicc gr8, #14, gr4, icc1
	bne icc1,0,.L886
	srlicc gr8, #13, gr0, icc2
	bne icc2,0,.L890
	srlicc gr8, #12, gr0, icc0
	bne icc0,0,.L891
	srlicc gr8, #11, gr0, icc1
	bne icc1,0,.L892
	srlicc gr8, #10, gr0, icc2
	bne icc2,0,.L893
	srlicc gr8, #9, gr0, icc0
	bne icc0,0,.L894
	srlicc gr8, #8, gr0, icc1
	bne icc1,0,.L895
	srlicc gr8, #7, gr0, icc2
	bne icc2,0,.L896
	srlicc gr8, #6, gr0, icc0
	bne icc0,0,.L897
	srlicc gr8, #5, gr0, icc1
	bne icc1,0,.L898
	srlicc gr8, #4, gr0, icc2
	bne icc2,0,.L899
	srlicc gr8, #3, gr0, icc0
	bne icc0,0,.L900
	srlicc gr8, #2, gr0, icc1
	bne icc1,0,.L901
	srlicc gr8, #1, gr0, icc2
	bne icc2,0,.L902
	cmpi gr8, #0, icc0
	setlos #15, gr4
	bne icc0,0,.L886
	setlos #16, gr4
.L886:
	mov gr4, gr8
	ret
.L889:
	setlos #0, gr4
	bra .L886
.L900:
	setlos #12, gr4
	bra .L886
.L890:
	setlos #2, gr4
	bra .L886
.L891:
	setlos #3, gr4
	bra .L886
.L892:
	setlos #4, gr4
	bra .L886
.L893:
	setlos #5, gr4
	bra .L886
.L894:
	setlos #6, gr4
	bra .L886
.L895:
	setlos #7, gr4
	bra .L886
.L896:
	setlos #8, gr4
	bra .L886
.L897:
	setlos #9, gr4
	bra .L886
.L898:
	setlos #10, gr4
	bra .L886
.L899:
	setlos #11, gr4
	bra .L886
.L901:
	setlos #13, gr4
	bra .L886
.L902:
	setlos #14, gr4
	bra .L886
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
	bne icc0,0,.L907
	andi gr4, #2, gr6
	sethi #hi(#0),gr6
	cmpi gr6, #0, icc1
	bne icc1,0,.L908
	andi gr4, #4, gr7
	sethi #hi(#0),gr7
	cmpi gr7, #0, icc2
	bne icc2,0,.L909
	andi gr4, #8, gr8
	sethi #hi(#0),gr8
	cmpi gr8, #0, icc0
	bne icc0,0,.L910
	andi gr4, #16, gr9
	sethi #hi(#0),gr9
	cmpi gr9, #0, icc1
	bne icc1,0,.L911
	andi gr4, #32, gr10
	sethi #hi(#0),gr10
	cmpi gr10, #0, icc2
	bne icc2,0,.L912
	andi gr4, #64, gr11
	sethi #hi(#0),gr11
	cmpi gr11, #0, icc0
	bne icc0,0,.L913
	andi gr4, #128, gr12
	sethi #hi(#0),gr12
	cmpi gr12, #0, icc1
	bne icc1,0,.L914
	andi gr4, #256, gr13
	sethi #hi(#0),gr13
	cmpi gr13, #0, icc2
	bne icc2,0,.L915
	andi gr4, #512, gr14
	sethi #hi(#0),gr14
	cmpi gr14, #0, icc0
	bne icc0,0,.L916
	andi gr4, #1024, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc1
	bne icc1,0,.L917
	setlos #2048, gr6
	and gr4, gr6, gr7
	sethi #hi(#0),gr7
	cmpi gr7, #0, icc2
	bne icc2,0,.L918
	setlos #4096, gr8
	and gr4, gr8, gr9
	sethi #hi(#0),gr9
	cmpi gr9, #0, icc0
	bne icc0,0,.L919
	setlos #8192, gr10
	and gr4, gr10, gr11
	sethi #hi(#0),gr11
	cmpi gr11, #0, icc1
	bne icc1,0,.L920
	setlos #16384, gr12
	and gr4, gr12, gr13
	sethi #hi(#0),gr13
	cmpi gr13, #0, icc2
	bne icc2,0,.L921
	srlicc gr4, #15, gr0, icc0
	setlos #15, gr8
	bne icc0,0,.L904
	setlos #16, gr8
.L904:
	ret
.L907:
	setlos #0, gr8
	ret
.L908:
	setlos #1, gr8
	ret
.L919:
	setlos #12, gr8
	ret
.L909:
	setlos #2, gr8
	ret
.L910:
	setlos #3, gr8
	ret
.L911:
	setlos #4, gr8
	ret
.L912:
	setlos #5, gr8
	ret
.L913:
	setlos #6, gr8
	ret
.L914:
	setlos #7, gr8
	ret
.L915:
	setlos #8, gr8
	ret
.L916:
	setlos #9, gr8
	ret
.L917:
	setlos #10, gr8
	ret
.L918:
	setlos #11, gr8
	ret
.L920:
	setlos #13, gr8
	ret
.L921:
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
	bp icc0,0,.L929
	sethi #gotofffuncdeschi(__ftoi), gr6
	setlo #gotofffuncdesclo(__ftoi), gr6
	ldd @(gr6,gr18), gr14
	mov gr19, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr11
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr11,gr0)
.L929:
	sethi #gotofffuncdeschi(__subf), gr7
	setlo #gotofffuncdesclo(__subf), gr7
	ldd @(gr7,gr18), gr14
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__ftoi), gr9
	setlo #gotofffuncdesclo(__ftoi), gr9
	ldd @(gr9,gr18), gr14
	calll @(gr14,gr0)
	sethi #hi(#32768), gr10
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr11
	setlo #lo(#32768), gr10
	ld @(fp,gr0), fp
	add gr8,gr10,gr8
	addi sp,#24,sp
	jmpl @(gr11,gr0)
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
	add gr12,gr13,gr8
	andi gr14, #1, gr7
	srai gr4, #5, gr6
	add gr8,gr7,gr9
	andi gr6, #1, gr10
	srai gr4, #6, gr5
	add gr9,gr10,gr11
	andi gr5, #1, gr12
	srai gr4, #7, gr13
	add gr11,gr12,gr14
	andi gr13, #1, gr8
	srai gr4, #8, gr7
	add gr14,gr8,gr9
	andi gr7, #1, gr10
	srai gr4, #9, gr6
	add gr9,gr10,gr11
	andi gr6, #1, gr12
	srai gr4, #10, gr5
	add gr11,gr12,gr13
	andi gr5, #1, gr14
	srai gr4, #11, gr7
	add gr13,gr14,gr8
	andi gr7, #1, gr9
	srai gr4, #12, gr10
	add gr8,gr9,gr11
	andi gr10, #1, gr12
	srai gr4, #13, gr6
	srai gr4, #14, gr5
	add gr11,gr12,gr13
	andi gr6, #1, gr14
	andi gr5, #1, gr8
	add gr13,gr14,gr7
	add gr7,gr8,gr9
	srai gr4, #15, gr4
	add gr9,gr4,gr10
	andi gr10, #1, gr8
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
	add gr12,gr13,gr8
	andi gr14, #1, gr7
	srai gr4, #5, gr6
	add gr8,gr7,gr9
	andi gr6, #1, gr10
	srai gr4, #6, gr5
	add gr9,gr10,gr11
	andi gr5, #1, gr12
	srai gr4, #7, gr13
	add gr11,gr12,gr14
	andi gr13, #1, gr8
	srai gr4, #8, gr7
	add gr14,gr8,gr9
	andi gr7, #1, gr10
	srai gr4, #9, gr6
	add gr9,gr10,gr11
	andi gr6, #1, gr12
	srai gr4, #10, gr5
	add gr11,gr12,gr13
	andi gr5, #1, gr14
	srai gr4, #11, gr7
	add gr13,gr14,gr8
	andi gr7, #1, gr9
	srai gr4, #12, gr10
	add gr8,gr9,gr11
	srai gr4, #13, gr6
	andi gr10, #1, gr12
	srai gr4, #14, gr5
	add gr11,gr12,gr13
	andi gr6, #1, gr14
	andi gr5, #1, gr8
	add gr13,gr14,gr7
	add gr7,gr8,gr9
	srai gr4, #15, gr4
	add gr9,gr4,gr8
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L932
.L934:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc1
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc1,2,.L934
.L932:
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L937
	cmpi gr9, #0, icc1
	beq icc1,0,.L937
.L939:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	srlicc gr9, #1, gr9, icc2
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	bne icc2,2,.L939
.L937:
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
	bls icc0,0,.L945
	setlos #32, gr8
	setlos #1, gr4
	bra .L944
.L948:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L946
	beq icc1,0,.L947
.L944:
	cmpi gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L948
.L945:
	setlos #0, gr8
.L950:
	cmp gr5,gr9,icc1
	cknc icc1, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L950
.L947:
	cmpi gr10, #0, icc2
	ckne icc2, cc5
	cmov gr5, gr8, cc5, 1
	ret
.L946:
	cmpi gr4, #0, icc2
	bne icc2,2,.L945
	setlos #0, gr8
	bra .L947
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
	bn icc0,0,.L962
	sethi #gotofffuncdeschi(__gtsf2), gr6
	setlo #gotofffuncdesclo(__gtsf2), gr6
	ldd @(gr6,gr20), gr14
	mov gr19, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr7
	ckgt icc1, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr7,gr0)
.L962:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	setlos #-1, gr8
	addi sp,#32,sp
	jmpl @(gr7,gr0)
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
	bn icc0,0,.L966
	sethi #gotofffuncdeschi(__gtdf2), gr6
	setlo #gotofffuncdesclo(__gtdf2), gr6
	ldd @(gr6,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc1
	ckgt icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L963:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr7
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr7,gr0)
.L966:
	setlos #-1, gr8
	bra .L963
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
	bn icc0,0,.L983
	beq icc0,0,.L975
	setlos #0, gr10
.L971:
	setlos #0, gr6
	setlos #0, gr7
	bra .L974
.L984:
	beq icc1,0,.L973
.L974:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	addi gr6,#1,gr6
	sraicc gr9, #1, gr9, icc2
	cmpi gr6,#32,icc1
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	bne icc2,2,.L984
.L973:
	cmpi gr10, #0, icc0
	beq icc0,0,.L969
	sub gr0,gr7,gr7
.L969:
	mov gr7, gr8
	ret
.L983:
	sub gr0,gr9,gr9
	setlos #1, gr10
	bra .L971
.L975:
	setlos #0, gr7
	bra .L969
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
	cmov gr5, gr7, cc4, 1
	cmov gr5, gr4, cc4, 0
	cmov gr0, gr7, cc4, 0
	cmp gr8,gr9,icc2
	cmov gr4, gr7, cc5, 1
	mov gr8, gr6
	setlos #1, gr11
	bls icc2,0,.L989
	setlos #32, gr10
	setlos #1, gr11
	bra .L988
.L991:
	beq icc1,0,.L992
.L988:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	addicc gr10, #-1, gr10, icc1
	slli gr11,#1,gr11
	bhi icc0,2,.L991
.L992:
	cmpi gr11, #0, icc2
	setlos #0, gr8
	beq icc2,0,.L990
.L989:
	setlos #0, gr8
.L994:
	cmp gr6,gr9,icc0
	cknc icc0, cc6
	cor gr8, gr11, gr8, cc6, 1
	srlicc gr11, #1, gr11, icc1
	csub gr6, gr9, gr6, cc6, 1
	srli gr9, #1, gr9
	bne icc1,2,.L994
.L990:
	cmpi gr7, #0, icc2
	ckne icc2, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	cmpi gr8, #0, icc0
	cmpi gr9,#0,icc1
	setlos #1, gr4
	ckn icc0, cc4
	cklt icc1, cc5
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr10, cc4, 1
	csub gr0, gr9, gr4, cc5, 1
	cmov gr9, gr4, cc5, 0
	cmp gr8,gr4,icc2
	cmov gr0, gr10, cc4, 0
	mov gr8, gr7
	setlos #1, gr5
	bls icc2,0,.L1020
	setlos #32, gr6
	setlos #1, gr5
	bra .L1005
.L1008:
	beq icc1,0,.L1009
.L1005:
	slli gr4,#1,gr4
	cmp gr8,gr4,icc0
	addicc gr6, #-1, gr6, icc1
	slli gr5,#1,gr5
	bhi icc0,2,.L1008
.L1009:
	cmpi gr5, #0, icc2
	beq icc2,0,.L1007
.L1020:
	cmp gr7,gr4,icc1
	cknc icc1, cc6
	srlicc gr5, #1, gr5, icc0
	csub gr7, gr4, gr7, cc6, 1
	srli gr4, #1, gr4
	bne icc0,2,.L1020
	mov gr7, gr8
.L1007:
	cmpi gr10, #0, icc2
	ckne icc2, cc4
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
	bnc icc0,0,.L1137
	slli gr9,#16,gr9
	srai gr9, #16, gr4
	cmpi gr4, #0, icc2
	bn icc2,0,.L1024
	slli gr5,#1,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1025
	slli gr4,#16,gr7
	srai gr7, #16, gr11
	cmpi gr11, #0, icc1
	bn icc1,0,.L1026
	slli gr5,#2,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1027
	slli gr4,#16,gr13
	srai gr13, #16, gr14
	cmpi gr14, #0, icc0
	bn icc0,0,.L1028
	slli gr5,#3,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1029
	slli gr4,#16,gr9
	srai gr9, #16, gr7
	cmpi gr7, #0, icc2
	bn icc2,0,.L1030
	slli gr5,#4,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1031
	slli gr4,#16,gr11
	srai gr11, #16, gr12
	cmpi gr12, #0, icc1
	bn icc1,0,.L1032
	slli gr5,#5,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1033
	slli gr4,#16,gr13
	srai gr13, #16, gr14
	cmpi gr14, #0, icc0
	bn icc0,0,.L1034
	slli gr5,#6,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1035
	slli gr4,#16,gr9
	srai gr9, #16, gr7
	cmpi gr7, #0, icc2
	bn icc2,0,.L1036
	slli gr5,#7,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1037
	slli gr4,#16,gr11
	srai gr11, #16, gr12
	cmpi gr12, #0, icc1
	bn icc1,0,.L1038
	slli gr5,#8,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1039
	slli gr4,#16,gr13
	srai gr13, #16, gr14
	cmpi gr14, #0, icc0
	bn icc0,0,.L1040
	slli gr5,#9,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1041
	slli gr4,#16,gr9
	srai gr9, #16, gr7
	cmpi gr7, #0, icc2
	bn icc2,0,.L1042
	slli gr5,#10,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1043
	slli gr4,#16,gr11
	srai gr11, #16, gr12
	cmpi gr12, #0, icc1
	bn icc1,0,.L1044
	slli gr5,#11,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1045
	slli gr4,#16,gr13
	srai gr13, #16, gr14
	cmpi gr14, #0, icc0
	bn icc0,0,.L1046
	slli gr5,#12,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1047
	slli gr4,#16,gr9
	srai gr9, #16, gr7
	cmpi gr7, #0, icc2
	bn icc2,0,.L1048
	slli gr5,#13,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1049
	slli gr4,#16,gr11
	srai gr11, #16, gr12
	cmpi gr12, #0, icc1
	bn icc1,0,.L1050
	slli gr5,#14,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1051
	slli gr4,#16,gr13
	srai gr13, #16, gr14
	cmpi gr14, #0, icc0
	bn icc0,0,.L1052
	slli gr5,#15,gr7
	sethi #hi(#0),gr7
	cmp gr8,gr7,icc1
	bls icc1,0,.L1053
	cmpi gr7, #0, icc0
	bne icc0,0,.L1138
.L1054:
	cmpi gr10, #0, icc0
	bne icc0,0,.L1106
	mov gr7, gr8
.L1106:
	ret
.L1041:
	bc icc1,2,.L1086
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #512, gr6
	setlos #512, gr7
.L1056:
	srlicc gr6, #2, gr13, icc2
	srli gr4, #2, gr14
	beq icc2,0,.L1054
	cmp gr8,gr14,icc0
	bc icc0,2,.L1057
	sub gr8,gr14,gr8
	sethi #hi(#0),gr8
	or gr7, gr13, gr7
.L1057:
	srlicc gr6, #3, gr9, icc1
	srli gr4, #3, gr5
	beq icc1,0,.L1054
	cmp gr8,gr5,icc2
	bc icc2,2,.L1058
	sub gr8,gr5,gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1058:
	srlicc gr6, #4, gr11, icc0
	srli gr4, #4, gr12
	beq icc0,0,.L1054
	cmp gr8,gr12,icc1
	bc icc1,2,.L1059
	sub gr8,gr12,gr8
	sethi #hi(#0),gr8
	or gr7, gr11, gr7
.L1059:
	srlicc gr6, #5, gr13, icc2
	srli gr4, #5, gr14
	beq icc2,0,.L1054
	cmp gr8,gr14,icc0
	bc icc0,2,.L1060
	sub gr8,gr14,gr8
	sethi #hi(#0),gr8
	or gr7, gr13, gr7
.L1060:
	srlicc gr6, #6, gr9, icc1
	srli gr4, #6, gr5
	beq icc1,0,.L1054
	cmp gr8,gr5,icc2
	bc icc2,2,.L1061
	sub gr8,gr5,gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1061:
	srlicc gr6, #7, gr11, icc0
	srli gr4, #7, gr12
	beq icc0,0,.L1054
	cmp gr8,gr12,icc1
	bc icc1,2,.L1062
	sub gr8,gr12,gr8
	sethi #hi(#0),gr8
	or gr7, gr11, gr7
.L1062:
	srlicc gr6, #8, gr13, icc2
	srli gr4, #8, gr14
	beq icc2,0,.L1054
	cmp gr8,gr14,icc0
	bc icc0,2,.L1063
	sub gr8,gr14,gr8
	sethi #hi(#0),gr8
	or gr7, gr13, gr7
.L1063:
	srlicc gr6, #9, gr9, icc1
	srli gr4, #9, gr5
	beq icc1,0,.L1054
	cmp gr8,gr5,icc2
	bc icc2,2,.L1064
	sub gr8,gr5,gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1064:
	srlicc gr6, #10, gr11, icc0
	srli gr4, #10, gr12
	beq icc0,0,.L1054
	cmp gr8,gr12,icc1
	bc icc1,2,.L1065
	sub gr8,gr12,gr8
	sethi #hi(#0),gr8
	or gr7, gr11, gr7
.L1065:
	srlicc gr6, #11, gr13, icc2
	srli gr4, #11, gr14
	beq icc2,0,.L1054
	cmp gr8,gr14,icc0
	bc icc0,2,.L1066
	sub gr8,gr14,gr8
	sethi #hi(#0),gr8
	or gr7, gr13, gr7
.L1066:
	srlicc gr6, #12, gr9, icc1
	srli gr4, #12, gr5
	beq icc1,0,.L1054
	cmp gr8,gr5,icc2
	bc icc2,2,.L1067
	sub gr8,gr5,gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L1067:
	srlicc gr6, #13, gr11, icc0
	srli gr4, #13, gr12
	beq icc0,0,.L1054
	cmp gr8,gr12,icc1
	bc icc1,2,.L1068
	sub gr8,gr12,gr8
	sethi #hi(#0),gr8
	or gr7, gr11, gr7
.L1068:
	srlicc gr6, #14, gr13, icc2
	srli gr4, #14, gr14
	beq icc2,0,.L1054
	cmp gr8,gr14,icc0
	bc icc0,2,.L1069
	sub gr8,gr14,gr8
	sethi #hi(#0),gr8
	or gr7, gr13, gr7
.L1069:
	setlos #16384, gr9
	cmp gr6,gr9,icc1
	srli gr4, #15, gr6
	beq icc1,0,.L1054
	cmp gr8,gr6,icc2
	bc icc2,2,.L1076
	sub gr8,gr6,gr8
	sethi #hi(#0),gr8
	ori gr7, #1, gr7
	bra .L1054
.L1076:
	setlos #0, gr8
	bra .L1054
.L1137:
	cmp gr5,gr8,icc1
	beq icc1,2,.L1075
	setlos #0, gr7
	bra .L1054
.L1024:
	sub gr8,gr5,gr8
	sethi #hi(#0),gr8
	setlos #1, gr7
	bra .L1054
.L1025:
	bc icc0,2,.L1078
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #2, gr6
	setlos #2, gr7
	bra .L1056
.L1026:
	sub gr8,gr4,gr8
	setlos #32767, gr12
	sethi #hi(#0),gr8
	and gr5, gr12, gr5
	setlos #1, gr9
	setlos #2, gr6
	setlos #2, gr7
.L1074:
	cmp gr8,gr5,icc1
	bc icc1,0,.L1056
	sub gr8,gr5,gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
	bra .L1056
.L1027:
	bc icc2,2,.L1079
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #4, gr6
	setlos #4, gr7
	bra .L1056
.L1028:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #2, gr9
	setlos #4, gr6
	setlos #4, gr7
	bra .L1074
.L1029:
	bc icc1,2,.L1080
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #8, gr6
	setlos #8, gr7
	bra .L1056
.L1030:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #4, gr9
	setlos #8, gr6
	setlos #8, gr7
	bra .L1074
.L1031:
	bc icc0,2,.L1081
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #16, gr6
	setlos #16, gr7
	bra .L1056
.L1032:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #8, gr9
	setlos #16, gr6
	setlos #16, gr7
	bra .L1074
.L1033:
	bc icc2,2,.L1082
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #32, gr6
	setlos #32, gr7
	bra .L1056
.L1034:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #16, gr9
	setlos #32, gr6
	setlos #32, gr7
	bra .L1074
.L1035:
	bc icc1,2,.L1083
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #64, gr6
	setlos #64, gr7
	bra .L1056
.L1036:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #32, gr9
	setlos #64, gr6
	setlos #64, gr7
	bra .L1074
.L1037:
	bc icc0,2,.L1084
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #128, gr6
	setlos #128, gr7
	bra .L1056
.L1038:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #64, gr9
	setlos #128, gr6
	setlos #128, gr7
	bra .L1074
.L1040:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #128, gr9
	setlos #256, gr6
	setlos #256, gr7
	bra .L1074
.L1042:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #256, gr9
	setlos #512, gr6
	setlos #512, gr7
	bra .L1074
.L1075:
	setlos #1, gr7
	setlos #0, gr8
	bra .L1054
.L1078:
	setlos #2, gr6
.L1073:
	srli gr6, #1, gr9
	srli gr4, #1, gr5
	setlos #0, gr7
	bra .L1074
.L1044:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #512, gr9
	setlos #1024, gr6
	setlos #1024, gr7
	bra .L1074
.L1046:
	sub gr8,gr4,gr8
	setlos #2048, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #1024, gr9
	mov gr6, gr7
	bra .L1074
.L1079:
	setlos #4, gr6
	bra .L1073
.L1080:
	setlos #8, gr6
	bra .L1073
.L1048:
	sub gr8,gr4,gr8
	setlos #4096, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #2048, gr9
	mov gr6, gr7
	bra .L1074
.L1050:
	sub gr8,gr4,gr8
	setlos #8192, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #4096, gr9
	mov gr6, gr7
	bra .L1074
.L1081:
	setlos #16, gr6
	bra .L1073
.L1082:
	setlos #32, gr6
	bra .L1073
.L1052:
	sub gr8,gr4,gr8
	setlos #16384, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #8192, gr9
	mov gr6, gr7
	bra .L1074
.L1053:
	slli gr6,#16,gr4
	srai gr4, #16, gr11
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	cmpi gr11, #0, icc2
	mov gr4, gr6
	bp icc2,2,.L1073
	mov gr4, gr7
	setlos #0, gr8
	bra .L1056
.L1083:
	setlos #64, gr6
	bra .L1073
.L1138:
	setlos #-32768, gr12
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	add gr8,gr12,gr8
	setlos #16384, gr5
	sethi #hi(#0),gr8
	mov gr5, gr9
	mov gr4, gr6
	mov gr4, gr7
	bra .L1074
.L1084:
	setlos #128, gr6
	bra .L1073
.L1039:
	bc icc2,2,.L1085
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #256, gr6
	setlos #256, gr7
	bra .L1056
.L1085:
	setlos #256, gr6
	bra .L1073
.L1043:
	bc icc0,2,.L1087
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #1024, gr6
	setlos #1024, gr7
	bra .L1056
.L1051:
	bc icc2,2,.L1091
	sub gr8,gr4,gr8
	setlos #16384, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L1056
.L1087:
	setlos #1024, gr6
	bra .L1073
.L1091:
	setlos #16384, gr6
	bra .L1073
.L1086:
	setlos #512, gr6
	bra .L1073
.L1049:
	bc icc0,2,.L1090
	sub gr8,gr4,gr8
	setlos #8192, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L1056
.L1047:
	bc icc1,2,.L1089
	sub gr8,gr4,gr8
	setlos #4096, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L1056
.L1045:
	bc icc2,2,.L1088
	sub gr8,gr4,gr8
	setlos #2048, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L1056
.L1090:
	setlos #8192, gr6
	bra .L1073
.L1089:
	setlos #4096, gr6
	bra .L1073
.L1088:
	setlos #2048, gr6
	bra .L1073
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp gr8,gr9,icc0
	mov gr8, gr5
	setlos #1, gr4
	bls icc0,0,.L1141
	setlos #32, gr8
	setlos #1, gr4
	bra .L1140
.L1144:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L1142
	beq icc1,0,.L1143
.L1140:
	cmpi gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L1144
.L1141:
	setlos #0, gr8
.L1146:
	cmp gr5,gr9,icc1
	cknc icc1, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L1146
.L1143:
	cmpi gr10, #0, icc2
	ckne icc2, cc5
	cmov gr5, gr8, cc5, 1
	ret
.L1142:
	cmpi gr4, #0, icc2
	bne icc2,2,.L1141
	setlos #0, gr8
	bra .L1143
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
	beq icc0,2,.L1161
	addi gr10,#-32,gr10
	srai gr8, #31, gr11
	sra gr8, gr10, gr9
	mov gr11, gr8
.L1163:
	ret
.L1161:
	cmpi gr10, #0, icc1
	beq icc1,0,.L1163
	setlos #32, gr5
	sub gr5,gr10,gr6
	sll gr8,gr6,gr7
	srl gr9, gr10, gr9
	sra gr8, gr10, gr11
	or gr7, gr9, gr9
	mov gr11, gr8
	bra .L1163
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	mov gr9, gr4
	slli gr8,#8,gr6
	srli gr9, #24, gr5
	sethi #hi(#65280), gr12
	or gr6, gr5, gr14
	slli gr8,#24,gr10
	srli gr8, #8, gr9
	setlo #lo(#65280), gr12
	srli gr4, #8, gr7
	sethi #hi(#16711680), gr11
	slli gr4,#24,gr5
	and gr9, gr12, gr6
	andi gr14, #255, gr13
	setlo #lo(#16711680), gr11
	srli gr8, #24, gr8
	or gr10, gr7, gr7
	or gr8, gr6, gr9
	and gr14, gr11, gr14
	or gr5, gr13, gr8
	slli gr4,#8,gr4
	and gr7, gr12, gr12
	or gr9, gr14, gr5
	or gr8, gr12, gr6
	and gr4, gr11, gr11
	or gr5, gr10, gr9
	or gr6, gr11, gr8
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
	sub gr14,gr13,gr4
	srl gr8, gr4, gr9
	andicc gr9, #240, gr0, icc2
	setlos #1, gr5
	ckeq icc2, cc6
	cmov gr0, gr5, cc6, 0
	slli gr5,#2,gr6
	setlos #4, gr7
	sub gr7,gr6,gr8
	srl gr9, gr8, gr12
	andicc gr12, #12, gr0, icc0
	setlos #1, gr10
	ckeq icc0, cc4
	cmov gr0, gr10, cc4, 0
	slli gr10,#1,gr14
	setlos #2, gr5
	sub gr5,gr14,gr4
	srl gr12, gr4, gr8
	add gr13,gr11,gr11
	andi gr8, #2, gr13
	cmpi gr13, #0, icc1
	add gr6,gr11,gr9
	ckeq icc1, cc5
	sub gr5,gr8,gr6
	cmov gr0, gr6, cc5, 0
	add gr14,gr9,gr7
	add gr6,gr7,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1172
	bgt icc0,0,.L1173
	cmp gr9,gr11,icc1
	bc icc1,0,.L1172
	bhi icc1,0,.L1173
	setlos #1, gr8
	ret
.L1172:
	setlos #0, gr8
	ret
.L1173:
	setlos #2, gr8
	ret
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1178
	bgt icc0,0,.L1177
	cmp gr9,gr11,icc1
	bc icc1,0,.L1178
	ckhi icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L1178:
	setlos #-1, gr8
	ret
.L1177:
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
	srl gr12, gr14, gr4
	andicc gr4, #3, gr0, icc0
	setlos #1, gr5
	ckeq icc0, cc4
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr8
	srl gr4, gr8, gr7
	andi gr7, #3, gr10
	add gr11,gr9,gr6
	srli gr10, #1, gr12
	not gr10,gr11
	setlos #2, gr9
	add gr14,gr6,gr13
	sub gr9,gr12,gr4
	andi gr11, #1, gr14
	umul gr14,gr4,gr6
	add gr8,gr13,gr5
	add gr5,gr7,gr8
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
	add gr9,gr8,gr12
	add gr7,gr13,gr13
	srli gr11, #16, gr6
	umul gr5,gr14,gr4
	and gr12, gr10, gr10
	slli gr13,#16,gr4
	add gr6,gr5,gr5
	srli gr13, #16, gr11
	add gr10,gr4,gr9
	add gr5,gr11,gr8
	ret
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi sp,#-32,sp
	sethi #hi(#65535), gr12
	setlo #lo(#65535), gr12
	movsg lr, gr5
	sti gr18, @(sp,0)
	sti gr20, @(sp,8)
	and gr9, gr12, gr18
	and gr11, gr12, gr20
	sti gr5, @(sp,24)
	srli gr9, #16, gr14
	umul gr18,gr20,gr4
	sti gr21, @(sp,12)
	srli gr5, #16, gr4
	umul gr20,gr14,gr20
	add gr4,gr21,gr13
	slli gr13,#16,gr15
	srli gr11, #16, gr6
	sti gr19, @(sp,4)
	srli gr15, #16, gr21
	umul gr18,gr6,gr18
	mov gr9, gr7
	and gr12, gr5, gr9
	add gr21,gr19,gr19
	srli gr13, #16, gr20
	add gr9,gr15,gr9
	umul gr14,gr6,gr14
	mov gr8, gr13
	srli gr19, #16, gr5
	add gr20,gr15,gr8
	add gr8,gr5,gr18
	umul gr7,gr10,gr6
	add gr7,gr18,gr14
	and gr9, gr12, gr10
	umul gr11,gr13,gr6
	slli gr19,#16,gr12
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,24), gr11
	add gr10,gr12,gr9
	add gr14,gr7,gr8
	addi sp,#32,sp
	jmpl @(gr11,gr0)
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
	slli gr8,#30,gr5
	srli gr9, #2, gr13
	sethi #hi(#858993459), gr14
	setlo #lo(#858993459), gr14
	or gr5, gr13, gr7
	and gr7, gr14, gr12
	srli gr8, #2, gr4
	and gr9, gr14, gr11
	addcc gr12,gr11,gr9,icc1
	and gr4, gr14, gr6
	and gr8, gr14, gr10
	addx gr6,gr10,gr14,icc1
	slli gr14,#28,gr8
	srli gr9, #4, gr5
	or gr8, gr5, gr13
	addcc gr13,gr9,gr7,icc2
	srli gr14, #4, gr4
	sethi #hi(#252645135), gr6
	addx gr4,gr14,gr10,icc2
	setlo #lo(#252645135), gr6
	and gr10, gr6, gr12
	and gr7, gr6, gr11
	add gr12,gr11,gr9
	srli gr9, #16, gr14
	add gr14,gr9,gr5
	srli gr5, #8, gr8
	add gr8,gr5,gr13
	andi gr13, #127, gr8
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
	and gr9, gr7, gr10
	and gr8, gr7, gr11
	add gr10,gr11,gr12
	srli gr12, #4, gr13
	sethi #hi(#252645135), gr4
	add gr13,gr12,gr14
	setlo #lo(#252645135), gr4
	and gr14, gr4, gr6
	srli gr6, #16, gr5
	add gr5,gr6,gr7
	srli gr7, #8, gr8
	add gr8,gr7,gr9
	andi gr9, #63, gr8
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
	beq icc0,2,.L1193
	sethi #gotofffuncdeschi(__muld), gr25
.L1195:
	setlo #gotofffuncdesclo(__muld), gr25
	ldd @(gr25,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L1193:
	srli gr18, #31, gr4
	add gr4,gr18,gr6
	sraicc gr6, #1, gr18, icc1
	beq icc1,0,.L1194
	sethi #gotofffuncdeschi(__muld), gr25
	mov gr25, gr26
	setlo #gotofffuncdesclo(__muld), gr26
.L1196:
	ldd @(gr26,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr7
	andicc gr18, #1, gr0, icc2
	add gr7,gr18,gr10
	mov gr8, gr20
	mov gr9, gr21
	bne icc2,2,.L1195
	srai gr10, #1, gr18
	bra .L1196
.L1194:
	cmpi gr24, #0, icc0
	bp icc0,2,.L1192
	sethi #gotofffuncdeschi(__divd), gr8
	setlo #gotofffuncdesclo(__divd), gr8
	ldd @(gr8,gr19), gr14
	sethi #hi(#1072693248), gr8
	mov gr22, gr10
	mov gr23, gr11
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L1192:
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
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr11,gr0)
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
	beq icc0,2,.L1200
	sethi #gotofffuncdeschi(__mulf), gr20
.L1202:
	setlo #gotofffuncdesclo(__mulf), gr20
	ldd @(gr20,gr22), gr14
	mov gr21, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	mov gr8, gr21
.L1200:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc1
	beq icc1,0,.L1201
	sethi #gotofffuncdeschi(__mulf), gr20
	mov gr20, gr24
	setlo #gotofffuncdesclo(__mulf), gr24
.L1203:
	ldd @(gr24,gr22), gr14
	mov gr19, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	srli gr18, #31, gr6
	andicc gr18, #1, gr0, icc2
	add gr6,gr18,gr7
	mov gr8, gr19
	bne icc2,2,.L1202
	srai gr7, #1, gr18
	bra .L1203
.L1201:
	cmpi gr23, #0, icc0
	bp icc0,2,.L1199
	sethi #gotofffuncdeschi(__divf), gr8
	setlo #gotofffuncdesclo(__divf), gr8
	ldd @(gr8,gr22), gr14
	sethi #hi(#1065353216), gr8
	mov gr21, gr9
	setlo #lo(#1065353216), gr8
	calll @(gr14,gr0)
	mov gr8, gr21
.L1199:
	mov gr21, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(fp,8), gr9
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr9,gr0)
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1210
	bhi icc0,0,.L1211
	cmp gr9,gr11,icc1
	bc icc1,0,.L1210
	bhi icc1,0,.L1211
	setlos #1, gr8
	ret
.L1210:
	setlos #0, gr8
	ret
.L1211:
	setlos #2, gr8
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1216
	bhi icc0,0,.L1215
	cmp gr9,gr11,icc1
	bc icc1,0,.L1216
	ckhi icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L1216:
	setlos #-1, gr8
	ret
.L1215:
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
