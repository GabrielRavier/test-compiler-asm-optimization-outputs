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
	addi.p gr9,#-1,gr41
	addi gr8,#-1,gr42
.L4:
	ldsb @(gr41,gr10),gr43
	stb.p gr43, @(gr42,gr10)
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
	or.p gr9, gr8, gr5
	setlos #1, gr6
	andicc gr5, #3, gr0, icc1
	ckeq icc1, cc4
	cmov gr0, gr6, cc4, 0
	andi gr6,#0xff,gr7
	cmpi gr7, #0, icc2
	beq icc2,0,.L12
	addi.p gr9,#1,gr11
	setlos #1, gr13
	sub gr8,gr11,gr12
	cmpi gr12,#2,icc0
	ckhi icc0, cc5
	cmov gr0, gr13, cc5, 0
	andi gr13,#0xff,gr14
	cmpi gr14, #0, icc1
	beq icc1,0,.L12
	andi.p gr10, #-4, gr32
	setlos #0, gr34
.L6:
	ld @(gr9,gr34), gr33
	st.p gr33, @(gr8,gr34)
	addi gr34,#4,gr34
	cmp gr34,gr32,icc2
	bne icc2,2,.L6
	cmp.p gr10,gr34,icc0
	add gr9,gr34,gr35
	add.p gr8,gr34,gr36
	sub.p gr10,gr34,gr10
	beq icc0,0,.L3
	ldsb.p @(gr9,gr34),gr9
	cmpi gr10,#1,icc1
	stb.p gr9, @(gr8,gr34)
	beq icc1,0,.L3
	ldsbi.p @(gr35,1),gr37
	cmpi gr10,#2,icc2
	stbi.p gr37, @(gr36,1)
	beq icc2,0,.L3
	ldsbi @(gr35,2),gr38
	stbi.p gr38, @(gr36,2)
	ret
.L12:
	setlos #0, gr40
.L34:
	ldsb @(gr9,gr40),gr39
	stb.p gr39, @(gr8,gr40)
	addi gr40,#1,gr40
	cmp gr10,gr40,icc0
	bne icc0,2,.L34
	ret
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	cmpi.p gr11, #0, icc0
	andi gr10, #255, gr5
	bne icc0,2,.L37
	bra .L39
.L40:
	beq icc1,0,.L39
.L37:
	ldub.p @(gr9,gr0),gr4
	addicc gr11, #-1, gr11, icc1
	addi.p gr9,#1,gr9
	addi gr8,#1,gr8
	stbi.p gr4, @(gr8,-1)
	cmp gr4,gr5,icc2
	bne icc2,2,.L40
	ret
.L39:
	setlos.p #0, gr8
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	cmpi.p gr10, #0, icc0
	andi gr9, #255, gr5
	bne icc0,2,.L48
	bra .L51
.L50:
	addi.p gr8,#1,gr8
	beq icc1,0,.L51
.L48:
	ldub.p @(gr8,gr0),gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc2
	bne icc2,2,.L50
	ret
.L51:
	setlos.p #0, gr8
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
	beq icc1,0,.L60
.L56:
	ldub.p @(gr8,gr0),gr4
	ldub @(gr9,gr0),gr5
	addicc.p gr10, #-1, gr10, icc1
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	cmp gr4,gr5,icc2
	beq icc2,2,.L58
	sub.p gr4,gr5,gr8
	ret
.L60:
	setlos.p #0, gr8
	ret
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	addi sp,#-16,sp
	movsg lr, gr5
	sti.p fp, @(sp,0)
	mov sp, fp
	sti.p gr5, @(fp,8)
	cmpi gr10, #0, icc0
	beq icc0,0,.L67
	sethi.p #gotofffuncdeschi(memcpy), gr6
	setlo #gotofffuncdesclo(memcpy), gr6
	ldd @(gr6,gr15), gr14
	calll @(gr14,gr0)
.L67:
	ldi.p @(fp,8), gr7
	ld @(fp,gr0), fp
	jmpl.p @(gr7,gr0)
	addi sp,#16,sp
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	addi.p gr10,#-1,gr4
	andi gr9, #255, gr7
	addi.p gr8,#-1,gr6
	add.p gr8,gr4,gr9
	bra .L72
.L74:
	ldub @(gr8,gr0),gr5
	cmp gr5,gr7,icc1
	beq icc1,0,.L71
.L72:
	cmp.p gr9,gr6,icc0
	mov gr9, gr8
	addi.p gr9,#-1,gr9
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
	movsg lr, gr5
	sti.p fp, @(sp,0)
	mov sp, fp
	sti.p gr5, @(fp,8)
	cmpi gr10, #0, icc0
	beq icc0,0,.L78
	sethi.p #gotofffuncdeschi(memset), gr6
	setlo #gotofffuncdesclo(memset), gr6
	ldd.p @(gr6,gr15), gr14
	andi gr9, #255, gr9
	calll @(gr14,gr0)
.L78:
	ldi.p @(fp,8), gr7
	ld @(fp,gr0), fp
	jmpl.p @(gr7,gr0)
	addi sp,#16,sp
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	ldsb @(gr9,gr0),gr4
	stb.p gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L80
.L81:
	ldsbi.p @(gr9,1),gr5
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	stb.p gr5, @(gr8,gr0)
	cmpi gr5, #0, icc1
	bne icc1,2,.L81
.L80:
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	ldsb.p @(gr8,gr0),gr6
	andi gr9, #255, gr5
	cmpi gr6, #0, icc0
	bne icc0,2,.L87
	bra .L86
.L89:
	ldsbi.p @(gr8,1),gr6
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
	cmp.p gr4,gr9,icc1
	cmpi gr4, #0, icc0
	beq icc1,0,.L95
	addi.p gr8,#1,gr8
	bne icc0,2,.L96
	setlos #0, gr8
.L95:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb.p @(gr8,gr0),gr4
	ldsb @(gr9,gr0),gr6
	cmp gr4,gr6,icc0
	bne icc0,0,.L104
	setlos.p #1, gr5
	addi.p gr9,#-1,gr7
	bra .L99
.L101:
	ldsb.p @(gr8,gr5),gr4
	addi gr5,#1,gr5
	ldsb @(gr7,gr5),gr6
	cmp gr4,gr6,icc2
	bne icc2,0,.L104
.L99:
	cmpi gr4, #0, icc1
	bne icc1,2,.L101
	andi.p gr6,#0xff,gr9
	setlos #0, gr8
	sub.p gr8,gr9,gr8
	ret
.L104:
	andi.p gr4,#0xff,gr8
	andi gr6,#0xff,gr9
	sub.p gr8,gr9,gr8
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
	ldsbi.p @(gr5,1),gr6
	addi gr5,#1,gr5
	cmpi gr6, #0, icc1
	bne icc1,2,.L107
	sub.p gr5,gr8,gr8
	ret
.L108:
	setlos.p #0, gr8
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
	add.p gr8,gr6,gr10
	bra .L114
.L122:
	beq icc1,0,.L113
	bne icc2,0,.L113
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc1
	beq icc1,0,.L121
	mov gr7, gr9
.L114:
	ldub.p @(gr9,gr0),gr5
	cmp gr8,gr10,icc1
	addi.p gr9,#1,gr7
	addi gr8,#1,gr8
	cmpi.p gr5, #0, icc0
	cmp gr5,gr4,icc2
	bne icc0,2,.L122
.L113:
	sub gr4,gr5,gr8
.L110:
	ret
.L118:
	setlos.p #0, gr8
	ret
.L121:
	ldubi @(gr9,1),gr5
	sub.p gr4,gr5,gr8
	bra .L110
.L120:
	ldub @(gr9,gr0),gr5
	sub.p gr4,gr5,gr8
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
	ldsbi.p @(gr8,1),gr5
	ldsb @(gr8,gr0),gr4
	addi.p gr8,#2,gr8
	addi gr9,#2,gr9
	cmp gr8,gr7,icc1
	stbi gr5, @(gr9,-2)
	stbi.p gr4, @(gr9,-1)
	bne icc1,2,.L125
.L123:
	ret
	.size	swab, .-swab
	.p2align 4
	.globl isalpha
	.type	isalpha, @function
isalpha:
	ori gr8, #32, gr8
	addi.p gr8,#-97,gr4
	setlos #1, gr8
	cmpi gr4,#25,icc0
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
	.size	isalpha, .-isalpha
	.p2align 4
	.globl isascii
	.type	isascii, @function
isascii:
	cmpi.p gr8,#127,icc0
	setlos #1, gr8
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
	.size	isascii, .-isascii
	.p2align 4
	.globl isblank
	.type	isblank, @function
isblank:
	cmpi gr8,#32,icc0
	beq icc0,0,.L131
	cmpi.p gr8,#9,icc1
	setlos #1, gr8
	ckeq icc1, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L131:
	setlos.p #1, gr8
	ret
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L134
	cmpi.p gr8,#127,icc1
	setlos #1, gr8
	ckeq icc1, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L134:
	setlos.p #1, gr8
	ret
	.size	iscntrl, .-iscntrl
	.p2align 4
	.globl isdigit
	.type	isdigit, @function
isdigit:
	addi gr8,#-48,gr8
	cmpi.p gr8,#9,icc0
	setlos #1, gr8
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
	.size	isdigit, .-isdigit
	.p2align 4
	.globl isgraph
	.type	isgraph, @function
isgraph:
	addi gr8,#-33,gr8
	cmpi.p gr8,#93,icc0
	setlos #1, gr8
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
	.size	isgraph, .-isgraph
	.p2align 4
	.globl islower
	.type	islower, @function
islower:
	addi gr8,#-97,gr8
	cmpi.p gr8,#25,icc0
	setlos #1, gr8
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
	.size	islower, .-islower
	.p2align 4
	.globl isprint
	.type	isprint, @function
isprint:
	addi gr8,#-32,gr8
	cmpi.p gr8,#94,icc0
	setlos #1, gr8
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
	.size	isprint, .-isprint
	.p2align 4
	.globl isspace
	.type	isspace, @function
isspace:
	cmpi gr8,#32,icc0
	beq icc0,0,.L141
	addi gr8,#-9,gr8
	cmpi.p gr8,#4,icc1
	setlos #1, gr8
	ckls icc1, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L141:
	setlos.p #1, gr8
	ret
	.size	isspace, .-isspace
	.p2align 4
	.globl isupper
	.type	isupper, @function
isupper:
	addi gr8,#-65,gr8
	cmpi.p gr8,#25,icc0
	setlos #1, gr8
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
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
	setlos.p #1, gr8
	ret
.L148:
	setlos #-8232, gr5
	add gr8,gr5,gr6
	cmpi gr6,#1,icc2
	bls icc2,0,.L147
	sethi.p #hi(#-65529), gr7
	setlo #lo(#-65529), gr7
	add gr8,gr7,gr8
	cmpi.p gr8,#2,icc0
	setlos #1, gr8
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
	.size	iswcntrl, .-iswcntrl
	.p2align 4
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	addi gr8,#-48,gr8
	cmpi.p gr8,#9,icc0
	setlos #1, gr8
	ckls icc0, cc4
	cmov.p gr0, gr8, cc4, 0
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
	setlos.p #-8234, gr6
	sethi #hi(#47061), gr5
	add.p gr8,gr6,gr7
	setlo #lo(#47061), gr5
	cmp gr7,gr5,icc2
	bls icc2,0,.L155
	sethi.p #hi(#-57344), gr9
	setlo #lo(#-57344), gr9
	setlos.p #8184, gr10
	add gr8,gr9,gr11
	cmp gr11,gr10,icc0
	bls icc0,0,.L155
	sethi.p #hi(#-65532), gr12
	setlo #lo(#-65532), gr12
	sethi.p #hi(#1048579), gr13
	add gr8,gr12,gr14
	setlo #lo(#1048579), gr13
	cmp gr14,gr13,icc1
	bhi icc1,0,.L156
	sethi.p #hi(#65534), gr32
	setlo #lo(#65534), gr32
	and gr8, gr32, gr8
	cmp.p gr8,gr32,icc2
	setlos #1, gr8
	ckne icc2, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L155:
	setlos.p #1, gr8
	ret
.L157:
	addi.p gr8,#1,gr33
	setlos #1, gr8
	andi gr33, #127, gr34
	cmpi gr34,#32,icc0
	ckhi icc0, cc5
	cmov.p gr0, gr8, cc5, 0
	ret
.L156:
	setlos.p #0, gr8
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
	addi.p gr8,#-97,gr5
	setlos #1, gr8
	cmpi gr5,#5,icc1
	ckls icc1, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L160:
	setlos.p #1, gr8
	ret
	.size	iswxdigit, .-iswxdigit
	.p2align 4
	.globl toascii
	.type	toascii, @function
toascii:
	andi.p gr8, #127, gr8
	ret
	.size	toascii, .-toascii
	.p2align 4
	.globl fdim
	.type	fdim, @function
fdim:
	addi sp,#-40,sp
	sti.p fp, @(sp,24)
	sethi #gotofffuncdeschi(__unorddf2), gr4
	addi.p sp,#24,fp
	setlo #gotofffuncdesclo(__unorddf2), gr4
	movsg lr, gr5
	stdi.p gr20, @(sp,0)
	mov gr8, gr20
	stdi.p gr22, @(sp,8)
	mov gr10, gr22
	sti.p gr18, @(sp,16)
	mov gr11, gr23
	sti.p gr5, @(fp,8)
	add gr4,gr15,gr18
	ldd.p @(gr4,gr15), gr6
	mov gr8, gr10
	mov.p gr9, gr11
	mov gr9, gr21
	mov.p gr6, gr14
	mov gr7, gr15
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L165
	ldd.p @(gr18,gr0), gr14
	mov gr22, gr10
	mov.p gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L166
	movgfd gr20, fr0
	movgfd gr22, fr2
	fcmpd fr0,fr2,fcc0
	fbgt fcc0,2,.L170
	setlos.p #0, gr8
	setlos #0, gr9
.L162:
	ldi.p @(sp,16), gr18
	lddi @(sp,0), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	jmpl.p @(gr6,gr0)
	addi sp,#40,sp
.L170:
	ldi.p @(sp,16), gr18
	fsubd.p fr0,fr2,fr4
	lddi @(sp,0), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr6
	ld @(fp,gr0), fp
	movfgd fr4, gr8
	jmpl.p @(gr6,gr0)
	addi sp,#40,sp
.L165:
	mov.p gr20, gr8
	mov.p gr21, gr9
	bra .L162
.L166:
	mov.p gr22, gr8
	mov.p gr23, gr9
	bra .L162
	.size	fdim, .-fdim
	.p2align 4
	.globl fdimf
	.type	fdimf, @function
fdimf:
	addi sp,#-32,sp
	sti.p fp, @(sp,16)
	sethi #gotofffuncdeschi(__unordsf2), gr4
	addi.p sp,#16,fp
	setlo #gotofffuncdesclo(__unordsf2), gr4
	movsg lr, gr5
	stdi.p gr18, @(sp,0)
	add gr4,gr15,gr18
	sti.p gr20, @(sp,8)
	mov gr9, gr20
	sti.p gr5, @(fp,8)
	mov gr8, gr9
	ldd.p @(gr4,gr15), gr6
	mov gr8, gr19
	mov.p gr6, gr14
	mov gr7, gr15
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L174
	ldd.p @(gr18,gr0), gr14
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
	lddi.p @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi.p @(fp,8), gr6
	ld @(fp,gr0), fp
	jmpl.p @(gr6,gr0)
	addi sp,#32,sp
.L179:
	lddi.p @(sp,0), gr18
	fsubs.p fr0,fr1,fr2
	ldi @(sp,8), gr20
	ldi.p @(fp,8), gr6
	ld @(fp,gr0), fp
	movfg fr2, gr8
	jmpl.p @(gr6,gr0)
	addi sp,#32,sp
.L174:
	mov.p gr19, gr8
	bra .L171
.L175:
	mov.p gr20, gr8
	bra .L171
	.size	fdimf, .-fdimf
	.p2align 4
	.globl fmax
	.type	fmax, @function
fmax:
	addi sp,#-40,sp
	sti.p fp, @(sp,24)
	sethi #gotofffuncdeschi(__unorddf2), gr4
	addi.p sp,#24,fp
	setlo #gotofffuncdesclo(__unorddf2), gr4
	movsg lr, gr5
	stdi.p gr18, @(sp,0)
	mov gr10, gr18
	stdi.p gr22, @(sp,8)
	mov gr11, gr19
	sti.p gr20, @(sp,16)
	mov gr8, gr10
	sti.p gr5, @(fp,8)
	add gr4,gr15,gr20
	ldd.p @(gr4,gr15), gr6
	mov gr9, gr11
	mov.p gr8, gr22
	mov gr9, gr23
	mov.p gr6, gr14
	mov gr7, gr15
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L187
	ldd.p @(gr20,gr0), gr14
	mov gr18, gr10
	mov.p gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L186
	sethi.p #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and.p gr6, gr22, gr7
	and gr6, gr18, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L188
	movgfd.p gr22, fr0
	setlos #1, gr9
	movgfd gr18, fr2
	fcmpd fr0,fr2,fcc0
	fcklt fcc0, cc0
	cmov gr0, gr9, cc0, 0
	andi gr9,#0xff,gr10
	cmpi gr10, #0, icc0
	bne icc0,2,.L187
.L186:
	mov.p gr22, gr8
	mov gr23, gr9
	lddi.p @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#40,sp
.L188:
	cmpi gr7, #0, icc1
	beq icc1,2,.L186
.L187:
	mov.p gr18, gr8
	mov gr19, gr9
	lddi.p @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#40,sp
	.size	fmax, .-fmax
	.p2align 4
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	addi sp,#-32,sp
	sti.p fp, @(sp,16)
	sethi #gotofffuncdeschi(__unordsf2), gr4
	addi.p sp,#16,fp
	setlo #gotofffuncdesclo(__unordsf2), gr4
	movsg lr, gr5
	stdi.p gr18, @(sp,0)
	add gr4,gr15,gr19
	sti.p gr20, @(sp,8)
	mov gr9, gr18
	sti.p gr5, @(fp,8)
	mov gr8, gr9
	ldd.p @(gr4,gr15), gr6
	mov gr8, gr20
	mov.p gr6, gr14
	mov gr7, gr15
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L194
	ldd.p @(gr19,gr0), gr14
	mov gr18, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L193
	sethi.p #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and.p gr6, gr20, gr7
	and gr6, gr18, gr9
	cmp gr7,gr9,icc2
	bne icc2,2,.L195
	movgf.p gr20, fr0
	ldi @(fp,8), gr10
	movgf.p gr18, fr1
	ld @(fp,gr0), fp
	fcmps fr0,fr1,fcc0
	fcklt fcc0, cc0
	cmov.p gr18, gr8, cc0, 1
	cmov gr20, gr8, cc0, 0
	lddi.p @(sp,0), gr18
	ldi @(sp,8), gr20
	jmpl.p @(gr10,gr0)
	addi sp,#32,sp
.L195:
	cmpi gr7, #0, icc0
	beq icc0,2,.L193
.L194:
	mov.p gr18, gr8
	ldi @(sp,8), gr20
	lddi.p @(sp,0), gr18
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	jmpl.p @(gr10,gr0)
	addi sp,#32,sp
.L193:
	mov.p gr20, gr8
	lddi @(sp,0), gr18
	ldi.p @(sp,8), gr20
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	jmpl.p @(gr10,gr0)
	addi sp,#32,sp
	.size	fmaxf, .-fmaxf
	.p2align 4
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	addi sp,#-40,sp
	sti.p fp, @(sp,24)
	sethi #gotofffuncdeschi(__unorddf2), gr4
	addi.p sp,#24,fp
	setlo #gotofffuncdesclo(__unorddf2), gr4
	movsg lr, gr5
	stdi.p gr18, @(sp,0)
	mov gr10, gr18
	stdi.p gr22, @(sp,8)
	mov gr11, gr19
	sti.p gr20, @(sp,16)
	mov gr8, gr10
	sti.p gr5, @(fp,8)
	add gr4,gr15,gr20
	ldd.p @(gr4,gr15), gr6
	mov gr9, gr11
	mov.p gr8, gr22
	mov gr9, gr23
	mov.p gr6, gr14
	mov gr7, gr15
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L203
	ldd.p @(gr20,gr0), gr14
	mov gr18, gr10
	mov.p gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L202
	sethi.p #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and.p gr6, gr22, gr7
	and gr6, gr18, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L204
	movgfd.p gr22, fr0
	setlos #1, gr9
	movgfd gr18, fr2
	fcmpd fr0,fr2,fcc0
	fcklt fcc0, cc0
	cmov gr0, gr9, cc0, 0
	andi gr9,#0xff,gr10
	cmpi gr10, #0, icc0
	bne icc0,2,.L203
.L202:
	mov.p gr22, gr8
	mov gr23, gr9
	lddi.p @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#40,sp
.L204:
	cmpi gr7, #0, icc1
	beq icc1,2,.L202
.L203:
	mov.p gr18, gr8
	mov gr19, gr9
	lddi.p @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#40,sp
	.size	fmaxl, .-fmaxl
	.p2align 4
	.globl fmin
	.type	fmin, @function
fmin:
	addi sp,#-40,sp
	sti.p fp, @(sp,24)
	sethi #gotofffuncdeschi(__unorddf2), gr4
	addi.p sp,#24,fp
	setlo #gotofffuncdesclo(__unorddf2), gr4
	movsg lr, gr5
	stdi.p gr18, @(sp,0)
	mov gr8, gr18
	stdi.p gr22, @(sp,8)
	mov gr10, gr22
	sti.p gr20, @(sp,16)
	mov gr11, gr23
	sti.p gr5, @(fp,8)
	add gr4,gr15,gr20
	ldd.p @(gr4,gr15), gr6
	mov gr8, gr10
	mov.p gr9, gr11
	mov gr9, gr19
	mov.p gr6, gr14
	mov gr7, gr15
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L210
	ldd.p @(gr20,gr0), gr14
	mov gr22, gr10
	mov.p gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L212
	sethi.p #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and.p gr6, gr18, gr7
	and gr6, gr22, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L213
	movgfd.p gr18, fr0
	setlos #1, gr9
	movgfd gr22, fr2
	fcmpd fr0,fr2,fcc0
	fcklt fcc0, cc0
	cmov gr0, gr9, cc0, 0
	andi gr9,#0xff,gr10
	cmpi gr10, #0, icc0
	beq icc0,2,.L210
.L212:
	mov.p gr18, gr8
	mov gr19, gr9
	lddi.p @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#40,sp
.L213:
	cmpi gr7, #0, icc1
	bne icc1,2,.L212
.L210:
	mov.p gr22, gr8
	mov gr23, gr9
	lddi.p @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#40,sp
	.size	fmin, .-fmin
	.p2align 4
	.globl fminf
	.type	fminf, @function
fminf:
	addi sp,#-32,sp
	sti.p fp, @(sp,16)
	sethi #gotofffuncdeschi(__unordsf2), gr4
	addi.p sp,#16,fp
	setlo #gotofffuncdesclo(__unordsf2), gr4
	movsg lr, gr5
	stdi.p gr18, @(sp,0)
	add gr4,gr15,gr19
	sti.p gr20, @(sp,8)
	mov gr9, gr20
	sti.p gr5, @(fp,8)
	mov gr8, gr9
	ldd.p @(gr4,gr15), gr6
	mov gr8, gr18
	mov.p gr6, gr14
	mov gr7, gr15
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L217
	ldd.p @(gr19,gr0), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L219
	sethi.p #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and.p gr6, gr18, gr7
	and gr6, gr20, gr9
	cmp gr7,gr9,icc2
	bne icc2,2,.L220
	movgf.p gr18, fr0
	ldi @(fp,8), gr10
	movgf.p gr20, fr1
	ld @(fp,gr0), fp
	fcmps fr0,fr1,fcc0
	fcklt fcc0, cc0
	cmov.p gr18, gr8, cc0, 1
	cmov gr20, gr8, cc0, 0
	lddi.p @(sp,0), gr18
	ldi @(sp,8), gr20
	jmpl.p @(gr10,gr0)
	addi sp,#32,sp
.L220:
	cmpi gr7, #0, icc0
	beq icc0,2,.L217
.L219:
	mov.p gr18, gr8
	ldi @(sp,8), gr20
	lddi.p @(sp,0), gr18
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	jmpl.p @(gr10,gr0)
	addi sp,#32,sp
.L217:
	mov.p gr20, gr8
	lddi @(sp,0), gr18
	ldi.p @(sp,8), gr20
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	jmpl.p @(gr10,gr0)
	addi sp,#32,sp
	.size	fminf, .-fminf
	.p2align 4
	.globl fminl
	.type	fminl, @function
fminl:
	addi sp,#-40,sp
	sti.p fp, @(sp,24)
	sethi #gotofffuncdeschi(__unorddf2), gr4
	addi.p sp,#24,fp
	setlo #gotofffuncdesclo(__unorddf2), gr4
	movsg lr, gr5
	stdi.p gr18, @(sp,0)
	mov gr8, gr18
	stdi.p gr22, @(sp,8)
	mov gr10, gr22
	sti.p gr20, @(sp,16)
	mov gr11, gr23
	sti.p gr5, @(fp,8)
	add gr4,gr15,gr20
	ldd.p @(gr4,gr15), gr6
	mov gr8, gr10
	mov.p gr9, gr11
	mov gr9, gr19
	mov.p gr6, gr14
	mov gr7, gr15
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L226
	ldd.p @(gr20,gr0), gr14
	mov gr22, gr10
	mov.p gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc1
	bne icc1,0,.L228
	sethi.p #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and.p gr6, gr18, gr7
	and gr6, gr22, gr8
	cmp gr7,gr8,icc2
	bne icc2,2,.L229
	movgfd.p gr18, fr0
	setlos #1, gr9
	movgfd gr22, fr2
	fcmpd fr0,fr2,fcc0
	fcklt fcc0, cc0
	cmov gr0, gr9, cc0, 0
	andi gr9,#0xff,gr10
	cmpi gr10, #0, icc0
	beq icc0,2,.L226
.L228:
	mov.p gr18, gr8
	mov gr19, gr9
	lddi.p @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#40,sp
.L229:
	cmpi gr7, #0, icc1
	bne icc1,2,.L228
.L226:
	mov.p gr22, gr8
	mov gr23, gr9
	lddi.p @(sp,0), gr18
	ldi @(sp,16), gr20
	lddi.p @(sp,8), gr22
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#40,sp
	.size	fminl, .-fminl
	.p2align 4
	.globl l64a
	.type	l64a, @function
l64a:
	cmpi gr8, #0, icc0
	beq icc0,0,.L233
	ldi.p @(gr15,#got12(_gp)), gr5
	sethi #gotoffhi(s.0), gr7
	mov.p gr7, gr10
	sethi #gprelhi(digits), gr6
	setlo.p #gotofflo(s.0), gr10
	setlo #gprello(digits), gr6
	add gr10,gr15,gr9
	add gr6,gr5,gr11
.L232:
	andi.p gr8, #63, gr12
	addi gr9,#1,gr9
	ldsb.p @(gr11,gr12),gr13
	srlicc gr8, #6, gr8, icc1
	stbi.p gr13, @(gr9,-1)
	bne icc1,2,.L232
	stb.p gr0, @(gr9,gr0)
	setlo #gotofflo(s.0), gr7
	add.p gr7,gr15,gr8
	ret
.L233:
	sethi #gotoffhi(s.0), gr7
	mov.p gr7, gr4
	setlo #gotofflo(s.0), gr7
	setlo.p #gotofflo(s.0), gr4
	add gr7,gr15,gr8
	add gr4,gr15,gr9
	stb.p gr0, @(gr9,gr0)
	ret
	.size	l64a, .-l64a
	.p2align 4
	.globl srand
	.type	srand, @function
srand:
	sethi.p #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	addi.p gr8,#-1,gr8
	add gr4,gr15,gr5
	st gr0, @(gr4,gr15)
	sti.p gr8, @(gr5,4)
	ret
	.size	srand, .-srand
	.p2align 4
	.globl rand
	.type	rand, @function
rand:
	addi sp,#-24,sp
	sti.p gr18, @(sp,0)
	sethi #gotoffhi(seed), gr18
	sti.p fp, @(sp,8)
	setlo #gotofflo(seed), gr18
	movsg lr, gr5
	addi.p sp,#8,fp
	add gr18,gr15,gr18
	sethi.p #gotofffuncdeschi(__mulll), gr4
	setlo #gotofffuncdesclo(__mulll), gr4
	sti.p gr5, @(fp,8)
	sethi #hi(#1481765933), gr10
	ldd.p @(gr4,gr15), gr14
	ld @(gr18,gr0), gr8
	ldi.p @(gr18,4), gr9
	setlo #lo(#1481765933), gr10
	sethi.p #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	calll @(gr14,gr0)
	addicc gr9,#1,gr9,icc0
	sti.p gr9, @(gr18,4)
	addxi gr8,#0,gr8,icc0
	st.p gr8, @(gr18,gr0)
	srli gr8, #1, gr6
	ldi.p @(sp,0), gr18
	ldi @(fp,8), gr7
	ld.p @(fp,gr0), fp
	mov gr6, gr8
	jmpl.p @(gr7,gr0)
	addi sp,#24,sp
	.size	rand, .-rand
	.p2align 4
	.globl insque
	.type	insque, @function
insque:
	cmpi.p gr9, #0, icc0
	setlos #4, gr6
	ckeq icc0, cc5
	cld.p @(gr9,gr0), gr4, cc5, 0
	setlos #4, gr5
	cst gr9, @(gr8,gr6), cc5, 0
	cst gr0, @(gr8,gr6), cc5, 1
	cst gr0, @(gr8,gr0), cc5, 1
	cst gr4, @(gr8,gr0), cc5, 0
	cst gr8, @(gr9,gr0), cc5, 0
	cld @(gr8,gr0), gr4, cc5, 0
	ccmp gr4, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	andncr cc5, cc4, cc0
	cst.p gr8, @(gr4,gr5), cc0, 1
	ret
	.size	insque, .-insque
	.p2align 4
	.globl remque
	.type	remque, @function
remque:
	ld.p @(gr8,gr0), gr4
	setlos #4, gr6
	cmpi gr4, #0, icc0
	ckne icc0, cc4
	cld @(gr8,gr6), gr5, cc4, 1
	cst gr5, @(gr4,gr6), cc4, 1
	ldi @(gr8,4), gr7
	cmpi gr7, #0, icc1
	ckne icc1, cc5
	cst.p gr4, @(gr7,gr0), cc5, 1
	ret
	.size	remque, .-remque
	.p2align 4
	.globl lsearch
	.type	lsearch, @function
lsearch:
	addi sp,#-56,sp
	sti.p fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	stdi.p gr22, @(sp,16)
	mov gr8, gr22
	stdi.p gr26, @(sp,32)
	mov gr12, gr23
	stdi.p gr20, @(sp,8)
	mov gr15, gr27
	stdi.p gr24, @(sp,24)
	mov gr9, gr26
	sti.p gr5, @(fp,8)
	mov gr10, gr25
	stdi.p gr18, @(sp,0)
	mov gr11, gr20
	ld @(gr10,gr0), gr21
	cmpi gr21, #0, icc0
	beq icc0,0,.L253
	mov.p gr9, gr18
	setlos.p #0, gr19
	bra .L255
.L267:
	beq icc1,0,.L253
.L255:
	ldd.p @(gr23,gr0), gr14
	mov gr18, gr9
	mov.p gr22, gr8
	addi gr19,#1,gr19
	mov.p gr18, gr24
	add gr18,gr20,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc2
	cmp.p gr21,gr19,icc1
	bne icc2,2,.L267
.L252:
	mov.p gr24, gr8
	lddi @(sp,0), gr18
	lddi.p @(sp,8), gr20
	lddi @(sp,16), gr22
	lddi.p @(sp,24), gr24
	lddi @(sp,32), gr26
	ldi.p @(fp,8), gr7
	ld @(fp,gr0), fp
	jmpl.p @(gr7,gr0)
	addi sp,#56,sp
.L253:
	umul.p gr20,gr21,gr4
	cmpi gr20, #0, icc0
	addi gr21,#1,gr4
	st.p gr4, @(gr25,gr0)
	add.p gr26,gr5,gr24
	beq icc0,0,.L252
	sethi.p #gotofffuncdeschi(memmove), gr6
	setlo #gotofffuncdesclo(memmove), gr6
	ldd.p @(gr6,gr27), gr14
	mov gr20, gr10
	mov.p gr22, gr9
	mov gr24, gr8
	calll @(gr14,gr0)
	bra .L252
	.size	lsearch, .-lsearch
	.p2align 4
	.globl lfind
	.type	lfind, @function
lfind:
	addi sp,#-48,sp
	stdi.p gr22, @(sp,16)
	mov gr12, gr22
	ld @(gr10,gr0), gr23
	movsg lr, gr5
	sti.p fp, @(sp,32)
	addi sp,#32,fp
	stdi.p gr20, @(sp,8)
	mov gr8, gr20
	sti.p gr5, @(fp,8)
	cmpi gr23, #0, icc0
	stdi.p gr18, @(sp,0)
	mov gr11, gr21
	sti.p gr24, @(sp,24)
	beq icc0,0,.L269
	mov.p gr9, gr18
	setlos.p #0, gr19
	bra .L271
.L279:
	beq icc1,0,.L269
.L271:
	ldd.p @(gr22,gr0), gr14
	mov gr18, gr9
	mov.p gr20, gr8
	addi gr19,#1,gr19
	mov.p gr18, gr24
	add gr18,gr21,gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc2
	cmp.p gr23,gr19,icc1
	bne icc2,2,.L279
.L268:
	mov.p gr24, gr8
	lddi @(sp,0), gr18
	lddi.p @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi.p @(sp,24), gr24
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	jmpl.p @(gr4,gr0)
	addi sp,#48,sp
.L269:
	setlos.p #0, gr24
	bra .L268
	.size	lfind, .-lfind
	.p2align 4
	.globl abs
	.type	abs, @function
abs:
	cmpi gr8,#0,icc0
	cklt icc0, cc4
	csub.p gr0, gr8, gr8, cc4, 1
	ret
	.size	abs, .-abs
	.p2align 4
	.globl atoi
	.type	atoi, @function
atoi:
	mov gr8, gr5
.L288:
	ldsb @(gr5,gr0),gr4
	addi.p gr4,#-9,gr6
	cmpi gr4,#32,icc0
	cmpi.p gr6,#4,icc1
	beq icc0,0,.L282
	bls icc1,2,.L282
	cmpi gr4,#43,icc2
	beq icc2,0,.L283
	cmpi gr4,#45,icc1
	bne icc1,2,.L303
	ldsbi.p @(gr5,1),gr8
	addi gr5,#1,gr5
	addi gr8,#-48,gr12
	cmpi gr12,#9,icc2
	bhi icc2,0,.L293
	setlos #1, gr11
.L286:
	setlos #0, gr8
.L290:
	ldsbi.p @(gr5,1),gr10
	smuli gr8,#10,gr8
	mov.p gr12, gr4
	addi gr5,#1,gr5
	sub gr9,gr12,gr8
	addi gr10,#-48,gr12
	cmpi gr12,#9,icc1
	bls icc1,2,.L290
	cmpi gr11, #0, icc2
	bne icc2,2,.L281
	sub gr4,gr9,gr8
.L281:
	ret
.L282:
	addi.p gr5,#1,gr5
	bra .L288
.L303:
	addi gr4,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L293
.L294:
	setlos.p #0, gr11
	bra .L286
.L283:
	ldsbi.p @(gr5,1),gr7
	addi gr5,#1,gr5
	addi gr7,#-48,gr12
	cmpi gr12,#9,icc0
	bls icc0,2,.L294
.L293:
	setlos.p #0, gr8
	ret
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	mov gr8, gr5
.L309:
	ldsb @(gr5,gr0),gr4
	addi.p gr4,#-9,gr6
	cmpi gr4,#32,icc0
	cmpi.p gr6,#4,icc1
	beq icc0,0,.L305
	bls icc1,2,.L305
	cmpi gr4,#43,icc2
	beq icc2,0,.L306
	cmpi gr4,#45,icc1
	beq icc1,2,.L307
	addi gr4,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L316
	setlos #0, gr11
.L310:
	setlos #0, gr8
.L313:
	ldsbi.p @(gr5,1),gr10
	smuli gr8,#10,gr8
	mov.p gr12, gr4
	addi gr5,#1,gr5
	sub gr9,gr12,gr8
	addi gr10,#-48,gr12
	cmpi gr12,#9,icc1
	bls icc1,2,.L313
	cmpi gr11, #0, icc2
	bne icc2,2,.L304
	sub gr4,gr9,gr8
.L304:
	ret
.L305:
	addi.p gr5,#1,gr5
	bra .L309
.L307:
	ldsbi.p @(gr5,1),gr8
	setlos #1, gr11
	addi gr5,#1,gr5
	addi gr8,#-48,gr12
	cmpi gr12,#9,icc2
	bls icc2,2,.L310
.L316:
	setlos.p #0, gr8
	ret
.L306:
	ldsbi.p @(gr5,1),gr7
	addi gr5,#1,gr5
	addi gr7,#-48,gr12
	cmpi gr12,#9,icc0
	bhi icc0,0,.L316
	setlos.p #0, gr11
	bra .L310
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	mov gr8, gr7
.L333:
	ldsb @(gr7,gr0),gr6
	addi.p gr6,#-9,gr4
	cmpi gr6,#32,icc0
	cmpi.p gr4,#4,icc1
	beq icc0,0,.L327
	bls icc1,2,.L327
	cmpi gr6,#43,icc2
	beq icc2,0,.L328
	cmpi gr6,#45,icc1
	bne icc1,2,.L348
	ldsbi.p @(gr7,1),gr8
	addi gr7,#1,gr7
	addi gr8,#-48,gr11
	cmpi gr11,#9,icc2
	bhi icc2,0,.L338
	setlos #1, gr32
.L331:
	setlos.p #0, gr8
	setlos #0, gr9
.L335:
	ldsbi.p @(gr7,1),gr15
	srli gr9, #30, gr12
	slli.p gr8,#2,gr10
	slli gr9,#2,gr34
	addcc.p gr34,gr9,gr35,icc1
	or gr12, gr10, gr14
	addx.p gr14,gr8,gr9,icc1
	mov gr11, gr13
	srai.p gr11, #31, gr33
	slli gr9,#1,gr37
	srli.p gr35, #31, gr36
	slli gr35,#1,gr5
	addi.p gr15,#-48,gr11
	or gr36, gr37, gr38
	subcc.p gr5,gr13,gr9,icc0
	cmpi gr11,#9,icc2
	addi.p gr7,#1,gr7
	subx.p gr38,gr33,gr8,icc0
	bls icc2,2,.L335
	cmpi gr32, #0, icc1
	bne icc1,2,.L326
	subcc gr13,gr5,gr9,icc2
	subx gr33,gr38,gr8,icc2
.L326:
	ret
.L327:
	addi.p gr7,#1,gr7
	bra .L333
.L348:
	addi gr6,#-48,gr11
	cmpi gr11,#9,icc0
	bhi icc0,0,.L338
.L339:
	setlos.p #0, gr32
	bra .L331
.L328:
	ldsbi.p @(gr7,1),gr5
	addi gr7,#1,gr7
	addi gr5,#-48,gr11
	cmpi gr11,#9,icc0
	bls icc0,2,.L339
.L338:
	setlos.p #0, gr8
	setlos.p #0, gr9
	ret
	.size	atoll, .-atoll
	.p2align 4
	.globl bsearch
	.type	bsearch, @function
bsearch:
	addi sp,#-48,sp
	movsg lr, gr5
	sti.p fp, @(sp,32)
	addi sp,#32,fp
	stdi.p gr22, @(sp,16)
	cmpi gr10, #0, icc0
	stdi.p gr18, @(sp,0)
	mov gr8, gr23
	stdi.p gr20, @(sp,8)
	mov gr10, gr18
	sti.p gr24, @(sp,24)
	mov gr9, gr21
	sti.p gr5, @(fp,8)
	mov gr11, gr22
	mov.p gr12, gr24
	bne icc0,2,.L353
	bra .L350
.L359:
	beq icc1,0,.L349
	cmpi.p gr18, #0, icc2
	add gr20,gr22,gr21
	beq icc2,0,.L350
.L353:
	srli.p gr18, #1, gr19
	ldd @(gr24,gr0), gr14
	umul.p gr19,gr22,gr4
	mov gr23, gr8
	addi gr18,#-1,gr18
	sub gr18,gr19,gr18
	add gr21,gr5,gr20
	calll.p @(gr14,gr0)
	mov gr20, gr9
	cmpi gr8, #0, icc1
	bp icc1,2,.L359
	mov gr19, gr18
	cmpi gr18, #0, icc2
	bne icc2,2,.L353
.L350:
	setlos #0, gr20
.L349:
	mov.p gr20, gr8
	lddi @(sp,0), gr18
	lddi.p @(sp,8), gr20
	lddi @(sp,16), gr22
	ldi.p @(sp,24), gr24
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	jmpl.p @(gr4,gr0)
	addi sp,#48,sp
	.size	bsearch, .-bsearch
	.p2align 4
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi sp,#-48,sp
	movsg lr, gr5
	sti.p fp, @(sp,32)
	addi sp,#32,fp
	stdi.p gr22, @(sp,16)
	cmpi gr10, #0, icc0
	stdi.p gr24, @(sp,24)
	mov gr8, gr23
	stdi.p gr18, @(sp,0)
	mov gr11, gr22
	stdi.p gr20, @(sp,8)
	mov gr10, gr18
	sti.p gr5, @(fp,8)
	mov gr9, gr21
	mov.p gr12, gr24
	mov.p gr13, gr25
	beq icc0,0,.L365
.L373:
	srai.p gr18, #1, gr19
	ldd @(gr24,gr0), gr14
	umul.p gr19,gr22,gr4
	mov gr25, gr10
	mov.p gr23, gr8
	addi gr18,#-1,gr18
	add gr21,gr5,gr20
	calll.p @(gr14,gr0)
	mov gr20, gr9
	cmpi gr8, #0, icc0
	sraicc.p gr18, #1, gr18, icc2
	cmpi.p gr8,#0,icc1
	beq icc0,0,.L360
	cmpi.p gr19, #0, icc0
	ble icc1,0,.L363
	add.p gr20,gr22,gr21
	bne icc2,2,.L373
.L365:
	setlos #0, gr20
.L360:
	mov.p gr20, gr8
	lddi @(sp,0), gr18
	lddi.p @(sp,8), gr20
	lddi @(sp,16), gr22
	lddi.p @(sp,24), gr24
	ldi @(fp,8), gr4
	ld @(fp,gr0), fp
	jmpl.p @(gr4,gr0)
	addi sp,#48,sp
.L363:
	beq icc0,0,.L365
	mov.p gr19, gr18
	bra .L373
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl div
	.type	div, @function
div:
	addi sp,#-16,sp
	sti.p gr3, @(sp,4)
	sdiv gr8,gr9,gr6
	movsg lr, gr5
	sti gr5, @(sp,8)
	st.p gr6, @(gr3,gr0)
	smul gr6,gr9,gr4
	sub gr8,gr5,gr8
	sti.p gr8, @(gr3,4)
	mov gr3, gr8
	ldi @(sp,8), gr7
	jmpl.p @(gr7,gr0)
	addi sp,#16,sp
	.size	div, .-div
	.p2align 4
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L379
	ret
.L379:
	subcc gr0,gr9,gr9,icc1
	subx.p gr0,gr8,gr8,icc1
	ret
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-40,sp
	movsg lr, gr5
	sti.p fp, @(sp,24)
	sethi #gotofffuncdeschi(__divll), gr4
	addi.p sp,#24,fp
	setlo #gotofffuncdesclo(__divll), gr4
	stdi.p gr18, @(sp,0)
	mov gr15, gr18
	stdi.p gr20, @(sp,8)
	mov gr3, gr19
	stdi.p gr22, @(sp,16)
	mov gr8, gr20
	sti.p gr3, @(fp,4)
	mov gr9, gr21
	sti.p gr5, @(fp,8)
	mov gr10, gr22
	ldd.p @(gr4,gr15), gr14
	mov gr11, gr23
	calll @(gr14,gr0)
	mov gr8, gr6
	mov.p gr9, gr7
	sethi #gotofffuncdeschi(__modll), gr12
	st.p gr6, @(gr19,gr0)
	setlo #gotofffuncdesclo(__modll), gr12
	sti.p gr7, @(gr19,4)
	mov gr22, gr10
	ldd.p @(gr12,gr18), gr14
	mov gr23, gr11
	mov.p gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	sti.p gr8, @(gr19,8)
	mov gr19, gr8
	sti gr9, @(gr19,12)
	lddi.p @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi.p @(sp,16), gr22
	ldi @(fp,8), gr9
	ld @(fp,gr0), fp
	jmpl.p @(gr9,gr0)
	addi sp,#40,sp
	.size	imaxdiv, .-imaxdiv
	.p2align 4
	.globl labs
	.type	labs, @function
labs:
	cmpi gr8,#0,icc0
	cklt icc0, cc4
	csub.p gr0, gr8, gr8, cc4, 1
	ret
	.size	labs, .-labs
	.p2align 4
	.globl ldiv
	.type	ldiv, @function
ldiv:
	addi sp,#-16,sp
	sti.p gr3, @(sp,4)
	sdiv gr8,gr9,gr6
	movsg lr, gr5
	sti gr5, @(sp,8)
	st.p gr6, @(gr3,gr0)
	smul gr6,gr9,gr4
	sub gr8,gr5,gr8
	sti.p gr8, @(gr3,4)
	mov gr3, gr8
	ldi @(sp,8), gr7
	jmpl.p @(gr7,gr0)
	addi sp,#16,sp
	.size	ldiv, .-ldiv
	.p2align 4
	.globl llabs
	.type	llabs, @function
llabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L386
	ret
.L386:
	subcc gr0,gr9,gr9,icc1
	subx.p gr0,gr8,gr8,icc1
	ret
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-40,sp
	movsg lr, gr5
	sti.p fp, @(sp,24)
	sethi #gotofffuncdeschi(__divll), gr4
	addi.p sp,#24,fp
	setlo #gotofffuncdesclo(__divll), gr4
	stdi.p gr18, @(sp,0)
	mov gr15, gr18
	stdi.p gr20, @(sp,8)
	mov gr3, gr19
	stdi.p gr22, @(sp,16)
	mov gr8, gr20
	sti.p gr3, @(fp,4)
	mov gr9, gr21
	sti.p gr5, @(fp,8)
	mov gr10, gr22
	ldd.p @(gr4,gr15), gr14
	mov gr11, gr23
	calll @(gr14,gr0)
	mov gr8, gr6
	mov.p gr9, gr7
	sethi #gotofffuncdeschi(__modll), gr12
	st.p gr6, @(gr19,gr0)
	setlo #gotofffuncdesclo(__modll), gr12
	sti.p gr7, @(gr19,4)
	mov gr22, gr10
	ldd.p @(gr12,gr18), gr14
	mov gr23, gr11
	mov.p gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	sti.p gr8, @(gr19,8)
	mov gr19, gr8
	sti gr9, @(gr19,12)
	lddi.p @(sp,0), gr18
	lddi @(sp,8), gr20
	lddi.p @(sp,16), gr22
	ldi @(fp,8), gr9
	ld @(fp,gr0), fp
	jmpl.p @(gr9,gr0)
	addi sp,#40,sp
	.size	lldiv, .-lldiv
	.p2align 4
	.globl wcschr
	.type	wcschr, @function
wcschr:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L389
	bra .L392
.L391:
	ldi.p @(gr8,4), gr4
	addi gr8,#4,gr8
	cmpi gr4, #0, icc2
	beq icc2,0,.L392
.L389:
	cmp gr9,gr4,icc1
	bne icc1,2,.L391
	ret
.L392:
	setlos.p #0, gr8
	ret
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	ld.p @(gr8,gr0), gr5
	ld @(gr9,gr0), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L398
	setlos.p #4, gr4
	addi.p gr9,#-4,gr7
	bra .L397
.L399:
	ld.p @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc2
	bne icc2,0,.L398
.L397:
	cmpi gr5, #0, icc1
	bne icc1,2,.L399
.L398:
	cmp.p gr5,gr6,icc0
	setlos #1, gr9
	ckge icc0, cc5
	cmov.p gr9, gr8, cc5, 1
	setlos.p #-1, gr10
	cckgt icc0, cc4, cc5, 1
	andcr cc5, cc4, cc0
	cmov gr0, gr8, cc0, 0
	cmov.p gr10, gr8, cc5, 0
	ret
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr5
.L404:
	ld @(gr9,gr5), gr4
	st.p gr4, @(gr8,gr5)
	cmpi gr4, #0, icc0
	addi.p gr5,#4,gr5
	bne icc0,2,.L404
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L409
	mov gr8, gr5
.L408:
	ldi.p @(gr5,4), gr6
	addi gr5,#4,gr5
	cmpi gr6, #0, icc1
	bne icc1,2,.L408
	sub gr5,gr8,gr7
	srai.p gr7, #2, gr8
	ret
.L409:
	setlos.p #0, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L412
	bra .L417
.L421:
	beq icc0,0,.L414
	addi.p gr8,#4,gr8
	addi.p gr9,#4,gr9
	beq icc2,0,.L417
.L412:
	ld.p @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	addicc gr10, #-1, gr10, icc2
	cmp.p gr4,gr5,icc1
	cmpi gr4, #0, icc0
	beq icc1,2,.L421
.L414:
	ld.p @(gr8,gr0), gr6
	ld @(gr9,gr0), gr7
	cmp gr6,gr7,icc2
	blt icc2,2,.L422
	setlos.p #1, gr8
	ckgt icc2, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L422:
	setlos.p #-1, gr8
	ret
.L417:
	setlos.p #0, gr8
	ret
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	bne icc0,2,.L424
	bra .L427
.L426:
	addi.p gr8,#4,gr8
	beq icc1,0,.L427
.L424:
	ld.p @(gr8,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr9,icc2
	bne icc2,2,.L426
	ret
.L427:
	setlos.p #0, gr8
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L432
	bra .L437
.L434:
	beq icc1,0,.L437
.L432:
	ld.p @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	addicc.p gr10, #-1, gr10, icc1
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	cmp gr5,gr4,icc2
	beq icc2,2,.L434
	blt icc2,2,.L443
	setlos.p #1, gr8
	ckgt icc2, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L437:
	setlos.p #0, gr8
	ret
.L443:
	setlos.p #-1, gr8
	ret
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi sp,#-16,sp
	movsg lr, gr5
	sti.p fp, @(sp,0)
	mov sp, fp
	sti.p gr5, @(fp,8)
	cmpi gr10, #0, icc0
	beq icc0,0,.L445
	sethi.p #gotofffuncdeschi(memcpy), gr6
	setlo #gotofffuncdesclo(memcpy), gr6
	ldd.p @(gr6,gr15), gr14
	slli gr10,#2,gr10
	calll @(gr14,gr0)
.L445:
	ldi.p @(fp,8), gr4
	ld @(fp,gr0), fp
	jmpl.p @(gr4,gr0)
	addi sp,#16,sp
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L457
	sub.p gr8,gr9,gr6
	slli gr10,#2,gr5
	cmp.p gr6,gr5,icc1
	addi gr10,#-1,gr4
	bnc icc1,2,.L462
	cmpi gr10, #0, icc1
	beq icc1,0,.L457
	slli gr4,#2,gr12
.L454:
	ld @(gr9,gr12), gr10
	st.p gr10, @(gr8,gr12)
	addi gr12,#-4,gr12
	cmpi gr12,#-4,icc2
	bne icc2,2,.L454
.L457:
	ret
.L462:
	cmpi.p gr10, #0, icc2
	setlos #0, gr11
	beq icc2,0,.L457
.L452:
	ld.p @(gr9,gr11), gr7
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	st.p gr7, @(gr8,gr11)
	addi.p gr11,#4,gr11
	bne icc0,2,.L452
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	cmpi.p gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L464
	mov gr8, gr5
.L465:
	st.p gr9, @(gr5,gr0)
	addi gr4,#-1,gr4
	cmpi.p gr4,#-1,icc1
	addi gr5,#4,gr5
	bne icc1,2,.L465
.L464:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L471
	cmpi gr10, #0, icc1
	beq icc1,0,.L470
	addi.p gr8,#-1,gr40
	addi gr9,#-1,gr41
.L473:
	ldsb @(gr40,gr10),gr42
	stb.p gr42, @(gr41,gr10)
	addicc gr10, #-1, gr10, icc2
	bne icc2,2,.L473
.L470:
	ret
.L471:
	cmp gr8,gr9,icc1
	beq icc1,0,.L470
	cmpi gr10, #0, icc2
	beq icc2,0,.L470
	addi gr10,#-1,gr4
	cmpi gr4,#6,icc0
	bls icc0,0,.L481
	or.p gr9, gr8, gr5
	setlos #1, gr6
	andicc gr5, #3, gr0, icc1
	ckeq icc1, cc4
	cmov gr0, gr6, cc4, 0
	andi gr6,#0xff,gr7
	cmpi gr7, #0, icc2
	beq icc2,0,.L481
	addi.p gr8,#1,gr11
	setlos #1, gr13
	sub gr9,gr11,gr12
	cmpi gr12,#2,icc0
	ckhi icc0, cc5
	cmov gr0, gr13, cc5, 0
	andi gr13,#0xff,gr14
	cmpi gr14, #0, icc1
	beq icc1,0,.L481
	andi.p gr10, #-4, gr32
	setlos #0, gr34
.L475:
	ld @(gr8,gr34), gr33
	st.p gr33, @(gr9,gr34)
	addi gr34,#4,gr34
	cmp gr34,gr32,icc2
	bne icc2,2,.L475
	cmp.p gr10,gr34,icc0
	add gr9,gr34,gr35
	add.p gr8,gr34,gr36
	sub.p gr10,gr34,gr10
	beq icc0,0,.L470
	ldsb.p @(gr8,gr34),gr8
	cmpi gr10,#1,icc1
	stb.p gr8, @(gr9,gr34)
	beq icc1,0,.L470
	ldsbi.p @(gr36,1),gr9
	cmpi gr10,#2,icc2
	stbi.p gr9, @(gr35,1)
	beq icc2,0,.L470
	ldsbi @(gr36,2),gr37
	stbi.p gr37, @(gr35,2)
	ret
.L481:
	setlos #0, gr39
.L503:
	ldsb @(gr8,gr39),gr38
	stb.p gr38, @(gr9,gr39)
	addi gr39,#1,gr39
	cmp gr10,gr39,icc0
	bne icc0,2,.L503
	ret
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	sub.p gr0,gr10,gr6
	setlos #31, gr4
	andi.p gr6, #63, gr32
	srli gr9, #1, gr11
	addi.p gr10,#-32,gr5
	sub gr4,gr10,gr12
	slli.p gr8,#1,gr7
	sub gr4,gr32,gr34
	srl.p gr9, gr32, gr13
	sll gr8,gr10,gr14
	addi.p gr32,#-32,gr35
	cmpi gr5, #0, icc1
	srl.p gr11, gr12, gr33
	sll.p gr7,gr34,gr36
	ckp.p icc1, cc4
	ckp icc1, cc5
	sll.p gr9,gr5,gr37
	sll gr9,gr10,gr10
	srl.p gr8, gr35, gr39
	cmpi gr35, #0, icc0
	srl.p gr8, gr32, gr8
	or.p gr33, gr14, gr38
	ckp icc0, cc6
	or.p gr36, gr13, gr40
	cmov.p gr38, gr37, cc4, 0
	ckp icc0, cc4
	cmov.p gr0, gr9, cc5, 1
	cmov gr10, gr9, cc5, 0
	cmov.p gr40, gr39, cc6, 0
	cmov gr0, gr8, cc4, 1
	or.p gr39, gr9, gr9
	or.p gr8, gr37, gr8
	ret
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	sub.p gr0,gr10,gr6
	setlos #31, gr4
	andi.p gr6, #63, gr32
	slli gr8,#1,gr11
	addi.p gr10,#-32,gr5
	sub gr4,gr10,gr12
	srli.p gr9, #1, gr7
	sub gr4,gr32,gr34
	sll.p gr8,gr32,gr13
	srl gr9, gr10, gr14
	addi.p gr32,#-32,gr35
	cmpi gr5, #0, icc1
	sll.p gr11,gr12,gr33
	srl.p gr7, gr34, gr36
	ckp.p icc1, cc4
	ckp icc1, cc5
	srl.p gr8, gr5, gr37
	srl gr8, gr10, gr10
	sll.p gr9,gr35,gr39
	cmpi gr35, #0, icc0
	sll.p gr9,gr32,gr9
	or.p gr33, gr14, gr38
	ckp icc0, cc6
	or.p gr36, gr13, gr40
	cmov.p gr38, gr37, cc4, 0
	ckp icc0, cc4
	cmov.p gr0, gr8, cc5, 1
	cmov gr10, gr8, cc5, 0
	cmov.p gr40, gr39, cc6, 0
	cmov gr0, gr9, cc4, 1
	or.p gr9, gr37, gr9
	or.p gr39, gr8, gr8
	ret
	.size	rotr64, .-rotr64
	.p2align 4
	.globl rotl32
	.type	rotl32, @function
rotl32:
	sub.p gr0,gr9,gr4
	sll gr8,gr9,gr9
	andi gr4, #31, gr5
	srl gr8, gr5, gr8
	or.p gr8, gr9, gr8
	ret
	.size	rotl32, .-rotl32
	.p2align 4
	.globl rotr32
	.type	rotr32, @function
rotr32:
	sub.p gr0,gr9,gr4
	srl gr8, gr9, gr9
	andi gr4, #31, gr5
	sll gr8,gr5,gr8
	or.p gr8, gr9, gr8
	ret
	.size	rotr32, .-rotr32
	.p2align 4
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	sub.p gr0,gr9,gr4
	sll gr8,gr9,gr9
	andi gr4, #31, gr5
	srl gr8, gr5, gr8
	or.p gr8, gr9, gr8
	ret
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	sub.p gr0,gr9,gr4
	srl gr8, gr9, gr9
	andi gr4, #31, gr5
	sll gr8,gr5,gr8
	or.p gr8, gr9, gr8
	ret
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl rotl16
	.type	rotl16, @function
rotl16:
	andi.p gr9, #15, gr9
	mov gr8, gr4
	sub.p gr0,gr9,gr5
	sethi #hi(#0),gr4
	andi.p gr5, #15, gr6
	sll gr8,gr9,gr8
	srl gr4, gr6, gr7
	or.p gr8, gr7, gr8
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	andi.p gr9, #15, gr9
	mov gr8, gr4
	sub.p gr0,gr9,gr5
	sethi #hi(#0),gr4
	andi.p gr5, #15, gr6
	srl gr4, gr9, gr7
	sll gr8,gr6,gr8
	or.p gr7, gr8, gr8
	ret
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	andi.p gr9, #7, gr9
	andi gr8,#0xff,gr4
	sub.p gr0,gr9,gr5
	sll gr8,gr9,gr8
	andi gr5, #7, gr6
	srl gr4, gr6, gr7
	or.p gr8, gr7, gr8
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	andi.p gr9, #7, gr9
	andi gr8,#0xff,gr4
	sub.p gr0,gr9,gr5
	srl gr4, gr9, gr7
	andi gr5, #7, gr6
	sll gr8,gr6,gr8
	or.p gr7, gr8, gr8
	ret
	.size	rotr8, .-rotr8
	.p2align 4
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	mov.p gr8, gr4
	slli gr8,#8,gr8
	sethi #hi(#0),gr4
	srli gr4, #8, gr5
	or.p gr5, gr8, gr8
	ret
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	slli.p gr8,#24,gr4
	srli gr8, #24, gr9
	srli.p gr8, #8, gr5
	sethi #hi(#65280), gr7
	setlo.p #lo(#65280), gr7
	slli gr8,#8,gr8
	or.p gr4, gr9, gr10
	and gr5, gr7, gr11
	sethi.p #hi(#16711680), gr6
	setlo #lo(#16711680), gr6
	and.p gr8, gr6, gr12
	or gr10, gr11, gr13
	or.p gr13, gr12, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	mov.p gr9, gr4
	slli gr8,#8,gr6
	srli.p gr9, #24, gr5
	slli gr8,#24,gr10
	srli.p gr8, #8, gr9
	or gr6, gr5, gr14
	srli.p gr4, #8, gr7
	sethi #hi(#65280), gr12
	setlo.p #lo(#65280), gr12
	slli gr4,#24,gr32
	and.p gr9, gr12, gr33
	srli gr8, #24, gr8
	or.p gr10, gr7, gr34
	andi gr14, #255, gr13
	sethi.p #hi(#16711680), gr11
	setlo #lo(#16711680), gr11
	or.p gr8, gr33, gr36
	and gr14, gr11, gr35
	slli.p gr4,#8,gr37
	or gr32, gr13, gr38
	and.p gr34, gr12, gr39
	or gr36, gr35, gr40
	or.p gr38, gr39, gr41
	and gr37, gr11, gr42
	or.p gr40, gr10, gr9
	or.p gr41, gr42, gr8
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos.p #0, gr4
	bra .L520
.L518:
	beq icc1,0,.L522
.L520:
	srl.p gr8, gr4, gr5
	addi gr4,#1,gr4
	andicc.p gr5, #1, gr0, icc0
	cmpi gr4,#32,icc1
	beq icc0,2,.L518
	mov.p gr4, gr8
	ret
.L522:
	setlos.p #0, gr8
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L526
	andicc gr8, #1, gr4, icc1
	bne icc1,0,.L523
	setlos #1, gr4
.L525:
	srai.p gr8, #1, gr8
	addi gr4,#1,gr4
	andicc gr8, #1, gr0, icc2
	beq icc2,2,.L525
.L523:
	mov.p gr4, gr8
	ret
.L526:
	setlos #0, gr4
	mov.p gr4, gr8
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	sethi.p #hi(#4286578687), gr4
	setlo #lo(#4286578687), gr4
	movgf gr8, fr0
	movgf gr4, fr1
	fcmps fr0,fr1,fcc0
	fblt fcc0,2,.L531
	sethi.p #hi(#2139095039), gr5
	setlo #lo(#2139095039), gr5
	movgf.p gr5, fr2
	setlos #1, gr8
	fcmps fr0,fr2,fcc1
	fckgt fcc1, cc0
	cmov.p gr0, gr8, cc0, 0
	ret
.L531:
	setlos.p #1, gr8
	ret
	.size	gl_isinff, .-gl_isinff
	.p2align 4
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	sethi.p #hi(#4293918719), gr4
	sethi #hi(#4294967295), gr5
	setlo.p #lo(#4293918719), gr4
	setlo #lo(#4294967295), gr5
	movgfd gr8, fr0
	movgfd gr4, fr2
	fcmpd fr0,fr2,fcc0
	fblt fcc0,2,.L534
	sethi.p #hi(#2146435071), gr4
	sethi #hi(#4294967295), gr5
	setlo.p #lo(#2146435071), gr4
	setlo #lo(#4294967295), gr5
	movgfd.p gr4, fr4
	setlos #1, gr8
	fcmpd fr0,fr4,fcc1
	fckgt fcc1, cc0
	cmov.p gr0, gr8, cc0, 0
	ret
.L534:
	setlos.p #1, gr8
	ret
	.size	gl_isinfd, .-gl_isinfd
	.p2align 4
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	sethi.p #hi(#4293918719), gr4
	sethi #hi(#4294967295), gr5
	setlo.p #lo(#4293918719), gr4
	setlo #lo(#4294967295), gr5
	movgfd gr8, fr0
	movgfd gr4, fr2
	fcmpd fr0,fr2,fcc0
	fblt fcc0,2,.L537
	sethi.p #hi(#2146435071), gr4
	sethi #hi(#4294967295), gr5
	setlo.p #lo(#2146435071), gr4
	setlo #lo(#4294967295), gr5
	movgfd.p gr4, fr4
	setlos #1, gr8
	fcmpd fr0,fr4,fcc1
	fckgt fcc1, cc0
	cmov.p gr0, gr8, cc0, 0
	ret
.L537:
	setlos.p #1, gr8
	ret
	.size	gl_isinfl, .-gl_isinfl
	.p2align 4
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	movgf gr9, fr2
	fitod fr2,fr0
	stf fr0, @(gr8,gr0)
	stfi.p fr1, @(gr8,4)
	ret
	.size	_Qp_itoq, .-_Qp_itoq
	.p2align 4
	.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	addi sp,#-24,sp
	sti.p fp, @(sp,8)
	sethi #gotofffuncdeschi(__unordsf2), gr4
	addi.p sp,#8,fp
	setlo #gotofffuncdesclo(__unordsf2), gr4
	movsg lr, gr5
	sti.p gr18, @(sp,0)
	mov gr9, gr18
	stfi.p fr16, @(sp,4)
	mov gr8, gr9
	sti gr5, @(fp,8)
	movgf.p gr8, fr16
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L540
	fadds fr16,fr16,fr0
	fcmps fr0,fr16,fcc0
	fbeq fcc0,2,.L540
	cmpi gr18, #0, icc1
	bn icc1,0,.L552
	sethi.p #hi(#1073741824), gr6
	setlo #lo(#1073741824), gr6
	movgf gr6, fr1
.L541:
	andicc gr18, #1, gr0, icc2
	beq icc2,2,.L542
.L543:
	fmuls fr16,fr1,fr16
.L542:
	srli gr18, #31, gr8
	add gr8,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L540
	andicc.p gr18, #1, gr0, icc1
	fmuls.p fr1,fr1,fr1
	srli gr18, #31, gr9
	bne icc1,2,.L543
.L553:
	add.p gr9,gr18,gr10
	fmuls fr1,fr1,fr1
	srai gr10, #1, gr18
	andicc.p gr18, #1, gr0, icc1
	srli gr18, #31, gr9
	bne icc1,2,.L543
	bra .L553
.L540:
	movfg.p fr16, gr8
	ldi @(sp,0), gr18
	ldfi.p @(sp,4), fr16
	ldi @(fp,8), gr11
	ld @(fp,gr0), fp
	jmpl.p @(gr11,gr0)
	addi sp,#24,sp
.L552:
	sethi.p #hi(#1056964608), gr7
	setlo #lo(#1056964608), gr7
	movgf.p gr7, fr1
	bra .L541
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl ldexp
	.type	ldexp, @function
ldexp:
	addi sp,#-32,sp
	sti.p fp, @(sp,16)
	sethi #gotofffuncdeschi(__unorddf2), gr4
	addi.p sp,#16,fp
	setlo #gotofffuncdesclo(__unorddf2), gr4
	movsg lr, gr5
	sti.p gr18, @(sp,8)
	mov gr9, gr11
	stdfi.p fr16, @(sp,0)
	mov gr10, gr18
	sti.p gr5, @(fp,8)
	mov gr8, gr10
	movgfd.p gr8, fr16
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L555
	faddd fr16,fr16,fr0
	fcmpd fr0,fr16,fcc0
	fbeq fcc0,2,.L555
	cmpi gr18, #0, icc1
	bn icc1,0,.L568
	sethi.p #hi(#1073741824), gr4
	setlos #0, gr5
	setlo #lo(#1073741824), gr4
	movgfd gr4, fr2
.L556:
	andicc gr18, #1, gr0, icc2
	beq icc2,2,.L557
.L558:
	fmuld fr16,fr2,fr16
.L557:
	srli gr18, #31, gr6
	add gr6,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L555
	andicc.p gr18, #1, gr0, icc1
	fmuld.p fr2,fr2,fr2
	srli gr18, #31, gr7
	bne icc1,2,.L558
.L569:
	add.p gr7,gr18,gr8
	fmuld fr2,fr2,fr2
	srai gr8, #1, gr18
	andicc.p gr18, #1, gr0, icc1
	srli gr18, #31, gr7
	bne icc1,2,.L558
	bra .L569
.L555:
	movfgd.p fr16, gr8
	ldi @(sp,8), gr18
	lddfi.p @(sp,0), fr16
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	jmpl.p @(gr10,gr0)
	addi sp,#32,sp
.L568:
	sethi.p #hi(#1071644672), gr4
	setlos #0, gr5
	setlo #lo(#1071644672), gr4
	movgfd.p gr4, fr2
	bra .L556
	.size	ldexp, .-ldexp
	.p2align 4
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	addi sp,#-32,sp
	sti.p fp, @(sp,16)
	sethi #gotofffuncdeschi(__unorddf2), gr4
	addi.p sp,#16,fp
	setlo #gotofffuncdesclo(__unorddf2), gr4
	movsg lr, gr5
	sti.p gr18, @(sp,8)
	mov gr9, gr11
	stdfi.p fr16, @(sp,0)
	mov gr10, gr18
	sti.p gr5, @(fp,8)
	mov gr8, gr10
	movgfd.p gr8, fr16
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L571
	faddd fr16,fr16,fr0
	fcmpd fr16,fr0,fcc0
	fbeq fcc0,2,.L571
	cmpi gr18, #0, icc1
	bn icc1,0,.L584
	sethi.p #hi(#1073741824), gr4
	setlos #0, gr5
	setlo #lo(#1073741824), gr4
	movgfd gr4, fr2
.L572:
	andicc gr18, #1, gr0, icc2
	beq icc2,2,.L573
.L574:
	fmuld fr16,fr2,fr16
.L573:
	srli gr18, #31, gr6
	add gr6,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L571
	andicc.p gr18, #1, gr0, icc1
	fmuld.p fr2,fr2,fr2
	srli gr18, #31, gr7
	bne icc1,2,.L574
.L585:
	add.p gr7,gr18,gr8
	fmuld fr2,fr2,fr2
	srai gr8, #1, gr18
	andicc.p gr18, #1, gr0, icc1
	srli gr18, #31, gr7
	bne icc1,2,.L574
	bra .L585
.L571:
	movfgd.p fr16, gr8
	ldi @(sp,8), gr18
	lddfi.p @(sp,0), fr16
	ldi @(fp,8), gr10
	ld @(fp,gr0), fp
	jmpl.p @(gr10,gr0)
	addi sp,#32,sp
.L584:
	sethi.p #hi(#1071644672), gr4
	setlos #0, gr5
	setlo #lo(#1071644672), gr4
	movgfd.p gr4, fr2
	bra .L572
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	cmpi gr10, #0, icc0
	beq icc0,0,.L587
	addi gr10,#-1,gr4
	cmpi gr4,#3,icc1
	bls icc1,0,.L594
	or gr8, gr9, gr5
	andicc gr5, #3, gr0, icc2
	bne icc2,0,.L594
	andi.p gr10, #-4, gr7
	setlos #0, gr13
.L589:
	ld.p @(gr8,gr13), gr6
	ld @(gr9,gr13), gr11
	xor gr11, gr6, gr12
	st.p gr12, @(gr8,gr13)
	addi gr13,#4,gr13
	cmp gr13,gr7,icc0
	bne icc0,2,.L589
	cmp.p gr10,gr13,icc1
	add gr8,gr13,gr14
	add.p gr9,gr13,gr32
	sub.p gr10,gr13,gr10
	beq icc1,0,.L587
	ldsb.p @(gr8,gr13),gr33
	ldsb @(gr9,gr13),gr9
	cmpi gr10,#1,icc2
	xor gr33, gr9, gr34
	stb.p gr34, @(gr8,gr13)
	beq icc2,0,.L587
	ldsbi.p @(gr14,1),gr35
	ldsbi @(gr32,1),gr36
	cmpi gr10,#2,icc0
	xor gr36, gr35, gr37
	stbi.p gr37, @(gr14,1)
	beq icc0,0,.L587
	ldsbi.p @(gr14,2),gr38
	ldsbi @(gr32,2),gr39
	xor gr39, gr38, gr40
	stbi gr40, @(gr14,2)
.L587:
	ret
.L594:
	setlos #0, gr44
.L606:
	ldsb.p @(gr8,gr44),gr41
	ldsb @(gr9,gr44),gr42
	xor gr42, gr41, gr43
	stb.p gr43, @(gr8,gr44)
	addi gr44,#1,gr44
	cmp gr10,gr44,icc1
	bne icc1,2,.L606
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	ldsb.p @(gr8,gr0),gr4
	mov gr8, gr7
	cmpi gr4, #0, icc0
	beq icc0,0,.L608
.L609:
	ldsbi.p @(gr7,1),gr5
	addi gr7,#1,gr7
	cmpi gr5, #0, icc1
	bne icc1,2,.L609
.L608:
	cmpi gr10, #0, icc2
	bne icc2,2,.L610
	bra .L611
.L612:
	beq icc1,0,.L611
.L610:
	ldsb.p @(gr9,gr0),gr6
	addi gr7,#1,gr7
	addicc.p gr10, #-1, gr10, icc1
	addi gr9,#1,gr9
	stbi.p gr6, @(gr7,-1)
	cmpi gr6, #0, icc0
	bne icc0,2,.L612
	ret
.L611:
	stb.p gr0, @(gr7,gr0)
	ret
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	cmpi.p gr9, #0, icc0
	mov gr8, gr5
	setlos.p #0, gr8
	beq icc0,0,.L621
.L622:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc1
	bne icc1,0,.L624
.L621:
	ret
.L624:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc2
	bne icc2,2,.L622
	ret
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr6
	movgs gr9, lcr
	cmpi gr6, #0, icc0
	beq icc0,0,.L632
.L628:
	movsg lcr, gr4
	bra .L631
.L630:
	beq icc1,0,.L629
.L631:
	ldsb.p @(gr4,gr0),gr5
	addi gr4,#1,gr4
	cmpi.p gr5, #0, icc2
	cmp gr5,gr6,icc1
	bne icc2,2,.L630
	ldsbi.p @(gr8,1),gr6
	addi gr8,#1,gr8
	cmpi gr6, #0, icc0
	bne icc0,2,.L628
.L632:
	setlos #0, gr8
.L629:
	ret
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L637:
	ldsb @(gr8,gr0),gr4
	cmp.p gr4,gr9,icc1
	cmpi gr4, #0, icc0
	ckeq icc1, cc4
	cmov.p gr8, gr5, cc4, 1
	addi.p gr8,#1,gr8
	bne icc0,2,.L637
	mov.p gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	ldsb @(gr9,gr0),gr10
	cmpi gr10, #0, icc0
	beq icc0,0,.L639
	mov gr9, gr4
.L641:
	ldsbi.p @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc1
	bne icc1,2,.L641
	subcc gr4, gr9, gr6, icc2
	beq icc2,0,.L639
	andi.p gr10,#0xff,gr13
	addi.p gr6,#-1,gr12
	bra .L659
.L661:
	cmpi.p gr7, #0, icc1
	addi gr8,#1,gr8
	beq icc1,0,.L660
.L659:
	ldsb @(gr8,gr0),gr7
	cmp gr7,gr10,icc0
	bne icc0,2,.L661
	mov.p gr13, gr33
	add gr8,gr12,gr11
	mov.p gr9, gr34
	mov.p gr8, gr32
	bra .L643
.L662:
	beq icc1,0,.L644
	bne icc2,0,.L644
	ldub.p @(gr32,gr0),gr33
	addi gr34,#1,gr34
	cmpi gr33, #0, icc1
	beq icc1,0,.L644
.L643:
	ldub.p @(gr34,gr0),gr14
	cmp gr32,gr11,icc1
	addi gr32,#1,gr32
	cmpi.p gr14, #0, icc0
	cmp gr14,gr33,icc2
	bne icc0,2,.L662
.L644:
	ldub @(gr34,gr0),gr35
	cmp gr35,gr33,icc0
	beq icc0,0,.L639
	addi.p gr8,#1,gr8
	bra .L659
.L660:
	setlos #0, gr8
.L639:
	ret
	.size	strstr, .-strstr
	.p2align 4
	.globl copysign
	.type	copysign, @function
copysign:
	movgf gr0, fr0
	movgf gr0, fr1
	movgfd gr8, fr4
	movgfd gr10, fr2
	fcmpd fr4,fr0,fcc0
	fblt fcc0,0,.L673
	fbule fcc0,0,.L667
	fcmpd fr2,fr0,fcc1
	fblt fcc1,0,.L666
.L667:
	ret
.L673:
	fcmpd fr2,fr0,fcc2
	fbule fcc2,2,.L667
.L666:
	movgfd gr8, fr0
	fnegd fr0,fr6
	movfgd.p fr6, gr8
	ret
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	cmpi gr11, #0, icc0
	beq icc0,0,.L674
	cmp gr9,gr11,icc1
	bc icc1,0,.L685
	sub gr9,gr11,gr7
	add gr8,gr7,gr32
	cmp gr8,gr32,icc2
	bhi icc2,0,.L685
	ldsb.p @(gr10,gr0),gr12
	bra .L680
.L684:
	mov gr9, gr8
.L676:
	cmp gr32,gr8,icc0
	bc icc0,0,.L685
.L680:
	ldsb.p @(gr8,gr0),gr4
	addi gr8,#1,gr9
	cmp gr4,gr12,icc0
	bne icc0,2,.L684
	cmpi gr11,#1,icc1
	beq icc1,0,.L674
.L679:
	setlos.p #1, gr13
	bra .L677
.L678:
	beq icc2,0,.L674
.L677:
	ldub.p @(gr8,gr13),gr6
	ldub @(gr10,gr13),gr5
	addi gr13,#1,gr13
	cmp gr13,gr11,icc2
	cmp gr6,gr5,icc0
	beq icc0,2,.L678
	cmp gr32,gr9,icc1
	bc icc1,0,.L685
	ldsb.p @(gr9,gr0),gr14
	addi gr9,#1,gr8
	cmp gr12,gr14,icc2
	bne icc2,2,.L676
	movgs gr9, lcr
	mov gr8, gr9
	movsg lcr, gr8
	bra .L679
.L685:
	setlos #0, gr8
.L674:
	ret
	.size	memmem, .-memmem
	.p2align 4
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	addi sp,#-24,sp
	movsg lr, gr5
	sti.p fp, @(sp,8)
	addi sp,#8,fp
	sti.p gr18, @(sp,0)
	cmpi gr10, #0, icc0
	sti.p gr5, @(fp,8)
	mov.p gr10, gr18
	beq icc0,0,.L694
	sethi.p #gotofffuncdeschi(memmove), gr6
	setlo #gotofffuncdesclo(memmove), gr6
	ldd @(gr6,gr15), gr14
	calll @(gr14,gr0)
.L694:
	add.p gr8,gr18,gr8
	ldi @(fp,8), gr4
	ldi.p @(sp,0), gr18
	ld @(fp,gr0), fp
	jmpl.p @(gr4,gr0)
	addi sp,#24,sp
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl frexp
	.type	frexp, @function
frexp:
	movgf gr0, fr0
	movgf gr0, fr1
	movgfd gr8, fr2
	fcmpd fr2,fr0,fcc0
	fblt fcc0,0,.L720
	sethi.p #hi(#1072693248), gr4
	setlos #0, gr5
	setlo #lo(#1072693248), gr4
	movgfd gr4, fr4
	fcmpd fr2,fr4,fcc1
	fbul fcc1,0,.L721
	setlos #0, gr5
.L701:
	setlos.p #0, gr7
	sethi #hi(#1071644672), gr6
	setlo.p #lo(#1071644672), gr6
	setlos #0, gr4
	movgfd.p gr6, fr38
	sethi #hi(#1072693248), gr6
	setlos.p #0, gr7
	setlo #lo(#1072693248), gr6
	movgfd gr6, fr40
.L707:
	movgfd.p gr8, fr42
	addi gr4,#1,gr4
	fmuld fr42,fr38,fr44
	movfgd.p fr44, gr8
	fcmpd fr44,fr40,fcc2
	fbge fcc2,2,.L707
.L708:
	st.p gr4, @(gr10,gr0)
	cmpi gr5, #0, icc0
	beq icc0,0,.L698
	movgfd gr8, fr46
	fnegd fr46,fr2
	movfgd fr2, gr8
.L698:
	ret
.L721:
	sethi.p #hi(#1071644672), gr4
	setlos #0, gr5
	setlo #lo(#1071644672), gr4
	movgfd gr4, fr6
	fcmpd fr2,fr6,fcc2
	fbuge fcc2,2,.L704
	fbne fcc0,0,.L713
.L704:
	st.p gr0, @(gr10,gr0)
	ret
.L720:
	sethi.p #hi(#3220176896), gr4
	fnegd.p fr2,fr8
	setlos #0, gr5
	setlo #lo(#3220176896), gr4
	movgfd gr4, fr10
	fcmpd fr2,fr10,fcc3
	fbug fcc3,0,.L722
	movfgd.p fr8, gr8
	setlos.p #1, gr5
	bra .L701
.L722:
	sethi.p #hi(#3219128320), gr4
	setlos #0, gr5
	setlo #lo(#3219128320), gr4
	movgfd gr4, fr12
	fcmpd fr2,fr12,fcc0
	fbule fcc0,2,.L704
	setlos #1, gr5
.L702:
	sethi.p #hi(#1071644672), gr6
	setlos #0, gr7
	movfgd.p fr8, gr8
	setlo #lo(#1071644672), gr6
	movgfd.p gr6, fr14
	setlos #0, gr4
.L709:
	movgfd.p gr8, fr32
	addi gr4,#-1,gr4
	faddd fr32,fr32,fr36
	movfgd.p fr36, gr8
	fcmpd fr36,fr14,fcc1
	fblt fcc1,2,.L709
	bra .L708
.L713:
	movgfd.p gr8, fr8
	setlos.p #0, gr5
	bra .L702
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	mov.p gr8, gr4
	mov gr9, gr5
	orcc.p gr5, gr4, gr0, icc0
	setlos #0, gr8
	setlos.p #0, gr9
	beq icc0,0,.L723
.L726:
	andi.p gr5, #1, gr7
	slli gr4,#31,gr15
	subcc.p gr0,gr7,gr13,icc1
	setlos #0, gr6
	srli.p gr5, #1, gr14
	and gr13, gr11, gr35
	srli.p gr4, #1, gr4
	or gr15, gr14, gr5
	subx.p gr0,gr6,gr12,icc1
	srli gr11, #31, gr33
	and.p gr12, gr10, gr34
	slli gr10,#1,gr32
	addcc.p gr9,gr35,gr9,icc0
	orcc gr4, gr5, gr0, icc2
	or.p gr33, gr32, gr10
	slli gr11,#1,gr11
	addx.p gr8,gr34,gr8,icc0
	bne icc2,2,.L726
.L723:
	ret
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp.p gr9,gr8,icc0
	mov gr8, gr5
	bnc icc0,0,.L747
	setlos.p #32, gr8
	setlos.p #1, gr11
	bra .L730
.L734:
	slli.p gr9,#1,gr9
	slli gr11,#1,gr11
	cmp gr5,gr9,icc0
	bls icc0,0,.L732
	beq icc1,0,.L733
.L730:
	cmpi.p gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L734
.L735:
	setlos #0, gr8
.L736:
	setlos.p #1, gr6
	cmp gr5,gr9,icc1
	cknc icc1, cc6
	cmov.p gr0, gr6, cc6, 0
	sub gr5,gr9,gr7
	cmpi.p gr6, #0, icc0
	srli gr9, #1, gr9
	ckne icc0, cc4
	cmov.p gr11, gr6, cc4, 1
	cmov.p gr0, gr6, cc4, 0
	ckne icc0, cc5
	srlicc.p gr11, #1, gr11, icc2
	cmov gr7, gr5, cc5, 1
	or.p gr8, gr6, gr8
	bne icc2,2,.L736
.L733:
	cmpi gr10, #0, icc1
	bne icc1,0,.L748
	ret
.L732:
	cmpi gr11, #0, icc2
	bne icc2,2,.L735
	setlos.p #0, gr8
	bra .L733
.L748:
	mov.p gr5, gr8
	ret
.L747:
	setlos.p #1, gr4
	sub.p gr8,gr9,gr9
	ckls icc0, cc4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr8
	cmpi gr8, #0, icc1
	ckne icc1, cc5
	cmov.p gr9, gr5, cc5, 1
	bra .L733
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi sp,#-16,sp
	sti.p fp, @(sp,0)
	slli gr8,#24,gr8
	srai.p gr8, #24, gr6
	mov sp, fp
	srai gr6, #7, gr4
	movsg lr, gr5
	sti.p gr5, @(fp,8)
	cmp gr6,gr4,icc0
	xor.p gr6, gr4, gr7
	beq icc0,0,.L751
	sethi.p #gotofffuncdeschi(__clzsi2), gr9
	setlo #gotofffuncdesclo(__clzsi2), gr9
	ldd.p @(gr9,gr15), gr14
	slli gr7,#8,gr8
	calll @(gr14,gr0)
	addi gr8,#-1,gr8
	ldi.p @(fp,8), gr10
	ld @(fp,gr0), fp
	jmpl.p @(gr10,gr0)
	addi sp,#16,sp
.L751:
	ldi.p @(fp,8), gr10
	ld @(fp,gr0), fp
	setlos #7, gr8
	jmpl.p @(gr10,gr0)
	addi sp,#16,sp
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi sp,#-16,sp
	sti.p fp, @(sp,0)
	srai gr8, #31, gr4
	movsg lr, gr5
	mov.p sp, fp
	cmp gr8,gr4,icc0
	sti.p gr5, @(fp,8)
	mov gr9, gr7
	xor.p gr8, gr4, gr6
	xor.p gr9, gr4, gr9
	beq icc0,0,.L758
.L756:
	sethi.p #gotofffuncdeschi(__clzdi2), gr10
	setlo #gotofffuncdesclo(__clzdi2), gr10
	ldd.p @(gr10,gr15), gr14
	mov gr6, gr8
	calll @(gr14,gr0)
	addi gr8,#-1,gr8
	ldi.p @(fp,8), gr9
	ld @(fp,gr0), fp
	jmpl.p @(gr9,gr0)
	addi sp,#16,sp
.L758:
	cmp gr7,gr8,icc1
	bne icc1,2,.L756
	ldi.p @(fp,8), gr9
	ld @(fp,gr0), fp
	setlos #63, gr8
	jmpl.p @(gr9,gr0)
	addi sp,#16,sp
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmpi.p gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L759
.L761:
	andi.p gr8, #1, gr4
	srlicc gr8, #1, gr8, icc1
	umul.p gr4,gr9,gr4
	slli gr9,#1,gr9
	add.p gr6,gr5,gr6
	bne icc1,2,.L761
.L759:
	mov.p gr6, gr8
	ret
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	cmp.p gr8,gr9,icc0
	srli gr10, #3, gr11
	andi.p gr10, #-8, gr12
	bc icc0,2,.L768
	add gr9,gr10,gr4
	cmp gr8,gr4,icc1
	bls icc1,2,.L798
.L768:
	cmpi gr11, #0, icc1
	beq icc1,0,.L799
	slli.p gr11,#3,gr7
	mov gr9, gr33
	mov.p gr8, gr34
	add gr7,gr9,gr13
.L771:
	ld.p @(gr33,gr0), gr14
	ldi @(gr33,4), gr32
	addi.p gr33,#8,gr33
	addi gr34,#8,gr34
	cmp gr33,gr13,icc0
	sti gr14, @(gr34,-8)
	sti.p gr32, @(gr34,-4)
	bne icc0,2,.L771
	cmp gr10,gr12,icc1
	bls icc1,0,.L764
	sub.p gr10,gr12,gr35
	addi gr12,#1,gr14
	addi gr35,#-1,gr36
	cmpi gr36,#6,icc2
	bls icc2,0,.L797
	add.p gr8,gr12,gr37
	add gr9,gr14,gr39
	sub.p gr37,gr39,gr40
	setlos #1, gr41
	cmpi.p gr40,#2,icc0
	add gr9,gr12,gr38
	ckhi icc0, cc4
	cmov gr0, gr41, cc4, 0
	andi gr41,#0xff,gr42
	cmpi gr42, #0, icc1
	beq icc1,0,.L797
	or.p gr38, gr37, gr43
	setlos #1, gr44
	andicc gr43, #3, gr0, icc2
	ckeq icc2, cc5
	cmov gr0, gr44, cc5, 0
	andi gr44,#0xff,gr45
	cmpi gr45, #0, icc0
	beq icc0,0,.L797
	andi.p gr35, #-4, gr46
	setlos #0, gr11
.L774:
	ld @(gr38,gr11), gr47
	st.p gr47, @(gr37,gr11)
	addi gr11,#4,gr11
	cmp gr46,gr11,icc1
	bne icc1,2,.L774
	cmp.p gr46,gr35,icc2
	add gr46,gr12,gr12
	beq icc2,0,.L764
	ldsb.p @(gr9,gr12),gr5
	addi gr12,#1,gr4
	cmp gr10,gr4,icc0
	stb.p gr5, @(gr8,gr12)
	bls icc0,0,.L764
	ldsb.p @(gr9,gr4),gr7
	addi gr12,#2,gr6
	cmp gr10,gr6,icc1
	stb.p gr7, @(gr8,gr4)
	bls icc1,0,.L764
	ldsb @(gr9,gr6),gr9
	stb gr9, @(gr8,gr6)
.L764:
	ret
.L799:
	cmpi gr10, #0, icc2
	beq icc2,0,.L764
	addi gr12,#1,gr14
.L797:
	ldsb.p @(gr9,gr12),gr13
	cmp gr10,gr14,icc2
	stb.p gr13, @(gr8,gr12)
	mov gr14, gr12
	addi.p gr14,#1,gr14
	beq icc2,0,.L764
	ldsb.p @(gr9,gr12),gr13
	cmp gr10,gr14,icc2
	stb.p gr13, @(gr8,gr12)
	mov gr14, gr12
	addi.p gr14,#1,gr14
	bne icc2,2,.L797
	bra .L764
.L798:
	cmpi.p gr10, #0, icc2
	addi gr10,#-1,gr6
	beq icc2,0,.L764
.L769:
	ldsb @(gr9,gr6),gr5
	stb.p gr5, @(gr8,gr6)
	addi gr6,#-1,gr6
	cmpi gr6,#-1,icc0
	bne icc0,2,.L769
	ret
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	cmp.p gr8,gr9,icc0
	srli gr10, #1, gr7
	bc icc0,2,.L804
	add gr9,gr10,gr4
	cmp gr8,gr4,icc1
	bls icc1,2,.L827
.L804:
	cmpi gr7, #0, icc1
	beq icc1,0,.L803
	addi gr7,#-1,gr11
	cmpi gr11,#8,icc2
	bls icc2,0,.L807
	or.p gr9, gr8, gr12
	setlos #1, gr13
	andicc gr12, #3, gr0, icc0
	ckeq icc0, cc4
	cmov gr0, gr13, cc4, 0
	andi gr13,#0xff,gr14
	cmpi gr14, #0, icc1
	beq icc1,0,.L807
	addi.p gr9,#2,gr32
	setlos #1, gr33
	cmp gr8,gr32,icc2
	ckne icc2, cc5
	cmov gr0, gr33, cc5, 0
	andi gr33,#0xff,gr34
	cmpi gr34, #0, icc0
	beq icc0,0,.L807
	srli.p gr10, #2, gr35
	andi gr10, #-4, gr36
	setlos #0, gr38
.L808:
	ld @(gr9,gr38), gr37
	st.p gr37, @(gr8,gr38)
	addi gr38,#4,gr38
	cmp gr38,gr36,icc1
	bne icc1,2,.L808
	slli gr35,#1,gr39
	cmp gr7,gr39,icc2
	beq icc2,0,.L803
	ldsh @(gr9,gr38),gr40
	sth gr40, @(gr8,gr38)
.L803:
	andicc gr10, #1, gr0, icc1
	beq icc1,2,.L800
.L828:
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr9
	stb gr9, @(gr8,gr10)
.L800:
	ret
.L827:
	cmpi.p gr10, #0, icc2
	addi gr10,#-1,gr6
	beq icc2,0,.L800
.L805:
	ldsb @(gr9,gr6),gr5
	stb.p gr5, @(gr8,gr6)
	addi gr6,#-1,gr6
	cmpi gr6,#-1,icc0
	bne icc0,2,.L805
	ret
.L807:
	slli.p gr7,#1,gr41
	setlos #0, gr43
.L810:
	ldsh @(gr9,gr43),gr42
	sth.p gr42, @(gr8,gr43)
	addi gr43,#2,gr43
	cmp gr41,gr43,icc0
	bne icc0,2,.L810
	andicc gr10, #1, gr0, icc1
	beq icc1,2,.L800
	bra .L828
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	cmp.p gr8,gr9,icc0
	srli gr10, #2, gr6
	andi.p gr10, #-4, gr7
	bc icc0,2,.L833
	add gr9,gr10,gr4
	cmp gr8,gr4,icc1
	bls icc1,2,.L863
.L833:
	cmpi gr6, #0, icc1
	beq icc1,0,.L864
	slli.p gr6,#2,gr11
	setlos #0, gr13
.L836:
	ld @(gr9,gr13), gr12
	st.p gr12, @(gr8,gr13)
	addi gr13,#4,gr13
	cmp gr13,gr11,icc0
	bne icc0,2,.L836
	cmp gr10,gr7,icc1
	bls icc1,0,.L829
	sub.p gr10,gr7,gr14
	addi gr7,#1,gr11
	addi gr14,#-1,gr32
	cmpi gr32,#6,icc2
	bls icc2,0,.L862
	add.p gr8,gr7,gr33
	add gr9,gr11,gr35
	sub.p gr33,gr35,gr36
	setlos #1, gr37
	cmpi.p gr36,#2,icc0
	add gr9,gr7,gr34
	ckhi icc0, cc4
	cmov gr0, gr37, cc4, 0
	andi gr37,#0xff,gr38
	cmpi gr38, #0, icc1
	beq icc1,0,.L862
	or.p gr34, gr33, gr39
	setlos #1, gr40
	andicc gr39, #3, gr0, icc2
	ckeq icc2, cc5
	cmov gr0, gr40, cc5, 0
	andi gr40,#0xff,gr41
	cmpi gr41, #0, icc0
	beq icc0,0,.L862
	andi.p gr14, #-4, gr42
	setlos #0, gr44
.L839:
	ld @(gr34,gr44), gr43
	st.p gr43, @(gr33,gr44)
	addi gr44,#4,gr44
	cmp gr42,gr44,icc1
	bne icc1,2,.L839
	cmp.p gr42,gr14,icc2
	add gr42,gr7,gr45
	beq icc2,0,.L829
	ldsb.p @(gr9,gr45),gr46
	addi gr45,#1,gr47
	cmp gr10,gr47,icc0
	stb.p gr46, @(gr8,gr45)
	bls icc0,0,.L829
	ldsb.p @(gr9,gr47),gr4
	addi gr45,#2,gr6
	cmp gr10,gr6,icc1
	stb.p gr4, @(gr8,gr47)
	bls icc1,0,.L829
	ldsb @(gr9,gr6),gr9
	stb gr9, @(gr8,gr6)
.L829:
	ret
.L864:
	cmpi gr10, #0, icc2
	beq icc2,0,.L829
	addi gr7,#1,gr11
.L862:
	ldsb.p @(gr9,gr7),gr5
	cmp gr10,gr11,icc2
	stb.p gr5, @(gr8,gr7)
	mov gr11, gr7
	addi.p gr11,#1,gr11
	beq icc2,0,.L829
	ldsb.p @(gr9,gr7),gr5
	cmp gr10,gr11,icc2
	stb.p gr5, @(gr8,gr7)
	mov gr11, gr7
	addi.p gr11,#1,gr11
	bne icc2,2,.L862
	bra .L829
.L863:
	cmpi.p gr10, #0, icc2
	addi gr10,#-1,gr7
	beq icc2,0,.L829
.L834:
	ldsb @(gr9,gr7),gr5
	stb.p gr5, @(gr8,gr7)
	addi gr7,#-1,gr7
	cmpi gr7,#-1,icc0
	bne icc0,2,.L834
	ret
	.size	__cmovw, .-__cmovw
	.p2align 4
	.globl __modi
	.type	__modi, @function
__modi:
	sdiv gr8,gr9,gr4
	smul gr4,gr9,gr4
	sub.p gr8,gr5,gr8
	ret
	.size	__modi, .-__modi
	.p2align 4
	.globl __uitod
	.type	__uitod, @function
__uitod:
	movgf.p gr8, fr1
	cmpi gr8, #0, icc0
	fitod fr1,fr0
	movfgd.p fr0, gr8
	bn icc0,0,.L868
	ret
.L868:
	setlos.p #0, gr5
	sethi #hi(#1106247680), gr4
	setlo #lo(#1106247680), gr4
	movgfd gr4, fr4
	faddd fr0,fr4,fr6
	movfgd.p fr6, gr8
	ret
	.size	__uitod, .-__uitod
	.p2align 4
	.globl __uitof
	.type	__uitof, @function
__uitof:
	addi sp,#-16,sp
	movgf.p gr8, fr1
	cmpi gr8, #0, icc0
	movsg lr, gr5
	sti.p fp, @(sp,0)
	mov sp, fp
	sti.p gr5, @(fp,8)
	fitod fr1,fr0
	movfgd.p fr0, gr8
	bp icc0,2,.L870
	sethi.p #hi(#1106247680), gr4
	setlos #0, gr5
	setlo #lo(#1106247680), gr4
	movgfd gr4, fr4
	faddd fr0,fr4,fr6
	movfgd fr6, gr8
.L870:
	sethi.p #gotofffuncdeschi(__dtof), gr4
	setlo #gotofffuncdesclo(__dtof), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	ldi.p @(fp,8), gr6
	ld @(fp,gr0), fp
	jmpl.p @(gr6,gr0)
	addi sp,#16,sp
	.size	__uitof, .-__uitof
	.p2align 4
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	addi sp,#-16,sp
	sti.p fp, @(sp,0)
	sethi #gotofffuncdeschi(__floatundidf), gr4
	mov.p sp, fp
	setlo #gotofffuncdesclo(__floatundidf), gr4
	movsg lr, gr5
	sti gr5, @(fp,8)
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	ldi.p @(fp,8), gr6
	ld @(fp,gr0), fp
	jmpl.p @(gr6,gr0)
	addi sp,#16,sp
	.size	__ulltod, .-__ulltod
	.p2align 4
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	addi sp,#-16,sp
	sti.p fp, @(sp,0)
	sethi #gotofffuncdeschi(__floatundisf), gr4
	mov.p sp, fp
	setlo #gotofffuncdesclo(__floatundisf), gr4
	movsg lr, gr5
	sti gr5, @(fp,8)
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
	ldi.p @(fp,8), gr6
	ld @(fp,gr0), fp
	jmpl.p @(gr6,gr0)
	addi sp,#16,sp
	.size	__ulltof, .-__ulltof
	.p2align 4
	.globl __umodi
	.type	__umodi, @function
__umodi:
	udiv gr8,gr9,gr4
	umul gr4,gr9,gr4
	sub.p gr8,gr5,gr8
	ret
	.size	__umodi, .-__umodi
	.p2align 4
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	sethi #hi(#0),gr8
	srlicc gr8, #15, gr0, icc0
	bne icc0,0,.L877
	sraicc gr8, #14, gr4, icc1
	bne icc1,0,.L874
	srlicc gr8, #13, gr0, icc2
	bne icc2,0,.L878
	srlicc gr8, #12, gr0, icc0
	bne icc0,0,.L879
	srlicc gr8, #11, gr0, icc1
	bne icc1,0,.L880
	srlicc gr8, #10, gr0, icc2
	bne icc2,0,.L881
	srlicc gr8, #9, gr0, icc0
	bne icc0,0,.L882
	srlicc gr8, #8, gr0, icc1
	bne icc1,0,.L883
	srlicc gr8, #7, gr0, icc2
	bne icc2,0,.L884
	srlicc gr8, #6, gr0, icc0
	bne icc0,0,.L885
	srlicc gr8, #5, gr0, icc1
	bne icc1,0,.L886
	srlicc gr8, #4, gr0, icc2
	bne icc2,0,.L887
	srlicc gr8, #3, gr0, icc0
	bne icc0,0,.L888
	srlicc gr8, #2, gr0, icc1
	bne icc1,0,.L889
	srlicc gr8, #1, gr0, icc2
	bne icc2,0,.L890
	cmpi.p gr8, #0, icc0
	setlos #15, gr4
	bne icc0,0,.L874
	setlos #16, gr4
.L874:
	mov.p gr4, gr8
	ret
.L877:
	setlos.p #0, gr4
	bra .L874
.L888:
	setlos.p #12, gr4
	bra .L874
.L878:
	setlos.p #2, gr4
	bra .L874
.L879:
	setlos.p #3, gr4
	bra .L874
.L880:
	setlos.p #4, gr4
	bra .L874
.L881:
	setlos.p #5, gr4
	bra .L874
.L882:
	setlos.p #6, gr4
	bra .L874
.L883:
	setlos.p #7, gr4
	bra .L874
.L884:
	setlos.p #8, gr4
	bra .L874
.L885:
	setlos.p #9, gr4
	bra .L874
.L886:
	setlos.p #10, gr4
	bra .L874
.L887:
	setlos.p #11, gr4
	bra .L874
.L889:
	setlos.p #13, gr4
	bra .L874
.L890:
	setlos.p #14, gr4
	bra .L874
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi.p gr8, #1, gr4
	sethi #hi(#0),gr8
	sethi #hi(#0),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L895
	andi gr8, #2, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc1
	bne icc1,0,.L896
	andi gr8, #4, gr6
	sethi #hi(#0),gr6
	cmpi gr6, #0, icc2
	bne icc2,0,.L897
	andi gr8, #8, gr7
	sethi #hi(#0),gr7
	cmpi gr7, #0, icc0
	bne icc0,0,.L898
	andi gr8, #16, gr9
	sethi #hi(#0),gr9
	cmpi gr9, #0, icc1
	bne icc1,0,.L899
	andi gr8, #32, gr10
	sethi #hi(#0),gr10
	cmpi gr10, #0, icc2
	bne icc2,0,.L900
	andi gr8, #64, gr11
	sethi #hi(#0),gr11
	cmpi gr11, #0, icc0
	bne icc0,0,.L901
	andi gr8, #128, gr12
	sethi #hi(#0),gr12
	cmpi gr12, #0, icc1
	bne icc1,0,.L902
	andi gr8, #256, gr13
	sethi #hi(#0),gr13
	cmpi gr13, #0, icc2
	bne icc2,0,.L903
	andi gr8, #512, gr14
	sethi #hi(#0),gr14
	cmpi gr14, #0, icc0
	bne icc0,0,.L904
	andi gr8, #1024, gr32
	sethi #hi(#0),gr32
	cmpi gr32, #0, icc1
	bne icc1,0,.L905
	setlos #2048, gr33
	and gr8, gr33, gr34
	sethi #hi(#0),gr34
	cmpi gr34, #0, icc2
	bne icc2,0,.L906
	setlos #4096, gr35
	and gr8, gr35, gr36
	sethi #hi(#0),gr36
	cmpi gr36, #0, icc0
	bne icc0,0,.L907
	setlos #8192, gr37
	and gr8, gr37, gr38
	sethi #hi(#0),gr38
	cmpi gr38, #0, icc1
	bne icc1,0,.L908
	setlos #16384, gr39
	and gr8, gr39, gr40
	sethi #hi(#0),gr40
	cmpi gr40, #0, icc2
	bne icc2,0,.L909
	srlicc gr8, #15, gr0, icc0
	bne icc0,0,.L911
	setlos.p #16, gr8
	ret
.L895:
	setlos.p #0, gr8
	ret
.L896:
	setlos.p #1, gr8
	ret
.L907:
	setlos.p #12, gr8
	ret
.L897:
	setlos.p #2, gr8
	ret
.L898:
	setlos.p #3, gr8
	ret
.L899:
	setlos.p #4, gr8
	ret
.L900:
	setlos.p #5, gr8
	ret
.L901:
	setlos.p #6, gr8
	ret
.L902:
	setlos.p #7, gr8
	ret
.L903:
	setlos.p #8, gr8
	ret
.L904:
	setlos.p #9, gr8
	ret
.L905:
	setlos.p #10, gr8
	ret
.L906:
	setlos.p #11, gr8
	ret
.L908:
	setlos.p #13, gr8
	ret
.L909:
	setlos.p #14, gr8
	ret
.L911:
	setlos.p #15, gr8
	ret
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	sethi.p #hi(#1191182336), gr4
	setlo #lo(#1191182336), gr4
	movgf gr4, fr0
	movgf gr8, fr1
	fcmps fr1,fr0,fcc0
	fbge fcc0,0,.L918
	fstoi fr1,fr2
	movfg.p fr2, gr8
	ret
.L918:
	sethi.p #hi(#32768), gr5
	fsubs.p fr1,fr0,fr3
	setlo #lo(#32768), gr5
	fstoi fr3,fr4
	movfg fr4, gr8
	add.p gr8,gr5,gr8
	ret
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srai.p gr4, #1, gr8
	andi gr4, #1, gr6
	srai.p gr4, #2, gr5
	andi gr8, #1, gr7
	add.p gr7,gr6,gr13
	srai gr4, #3, gr10
	andi.p gr5, #1, gr11
	andi gr10, #1, gr12
	add.p gr13,gr11,gr34
	srai gr4, #4, gr9
	add.p gr34,gr12,gr38
	andi gr9, #1, gr14
	srai.p gr4, #5, gr32
	add gr38,gr14,gr42
	srai.p gr4, #6, gr33
	andi gr32, #1, gr35
	andi.p gr33, #1, gr36
	srai gr4, #7, gr37
	add.p gr42,gr35,gr46
	andi gr37, #1, gr39
	add.p gr46,gr36,gr8
	srai gr4, #8, gr40
	add.p gr8,gr39,gr12
	srai gr4, #9, gr41
	andi.p gr40, #1, gr43
	srai gr4, #10, gr45
	andi.p gr41, #1, gr44
	add gr12,gr43,gr14
	srai.p gr4, #11, gr6
	andi gr45, #1, gr47
	add.p gr14,gr44,gr33
	srai gr4, #12, gr5
	andi.p gr6, #1, gr10
	add gr33,gr47,gr34
	srai.p gr4, #13, gr11
	andi gr5, #1, gr7
	add.p gr34,gr10,gr35
	srai gr4, #14, gr13
	andi.p gr11, #1, gr9
	add gr35,gr7,gr36
	andi.p gr13, #1, gr32
	add gr36,gr9,gr37
	srai.p gr4, #15, gr4
	add gr37,gr32,gr38
	add gr38,gr4,gr39
	andi.p gr39, #1, gr8
	ret
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srai.p gr4, #1, gr8
	andi gr4, #1, gr6
	srai.p gr4, #2, gr5
	andi gr8, #1, gr7
	add.p gr7,gr6,gr13
	srai gr4, #3, gr10
	andi.p gr5, #1, gr11
	andi gr10, #1, gr12
	add.p gr13,gr11,gr34
	srai gr4, #4, gr9
	add.p gr34,gr12,gr38
	andi gr9, #1, gr14
	srai.p gr4, #5, gr32
	add gr38,gr14,gr42
	srai.p gr4, #6, gr33
	andi gr32, #1, gr35
	andi.p gr33, #1, gr36
	srai gr4, #7, gr37
	add.p gr42,gr35,gr46
	andi gr37, #1, gr39
	add.p gr46,gr36,gr8
	srai gr4, #8, gr40
	srai.p gr4, #9, gr41
	add gr8,gr39,gr12
	andi.p gr40, #1, gr43
	srai gr4, #10, gr45
	andi.p gr41, #1, gr44
	add gr12,gr43,gr14
	srai.p gr4, #11, gr6
	andi gr45, #1, gr47
	add.p gr14,gr44,gr33
	srai gr4, #12, gr5
	andi.p gr6, #1, gr10
	add gr33,gr47,gr34
	srai.p gr4, #13, gr11
	andi gr5, #1, gr7
	add.p gr34,gr10,gr35
	srai gr4, #14, gr13
	andi.p gr11, #1, gr9
	add gr35,gr7,gr36
	andi.p gr13, #1, gr32
	add gr36,gr9,gr37
	srai.p gr4, #15, gr4
	add gr37,gr32,gr38
	add.p gr38,gr4,gr8
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmpi.p gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L921
.L923:
	andi.p gr8, #1, gr4
	srlicc gr8, #1, gr8, icc1
	umul.p gr4,gr9,gr4
	slli gr9,#1,gr9
	add.p gr6,gr5,gr6
	bne icc1,2,.L923
.L921:
	mov.p gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi.p gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L926
	cmpi gr9, #0, icc1
	beq icc1,0,.L926
.L928:
	andi.p gr9, #1, gr4
	srlicc gr9, #1, gr9, icc2
	umul.p gr4,gr8,gr4
	slli gr8,#1,gr8
	add.p gr6,gr5,gr6
	bne icc2,2,.L928
.L926:
	mov.p gr6, gr8
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp.p gr8,gr9,icc0
	mov gr8, gr5
	bls icc0,0,.L950
	setlos.p #32, gr8
	setlos.p #1, gr4
	bra .L933
.L937:
	slli.p gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr5,gr9,icc0
	bls icc0,0,.L935
	beq icc1,0,.L936
.L933:
	cmpi.p gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L937
.L938:
	setlos #0, gr8
.L939:
	setlos.p #1, gr6
	cmp gr5,gr9,icc1
	cknc icc1, cc6
	cmov.p gr0, gr6, cc6, 0
	sub gr5,gr9,gr7
	cmpi.p gr6, #0, icc0
	srli gr9, #1, gr9
	ckne icc0, cc4
	cmov.p gr4, gr6, cc4, 1
	cmov.p gr0, gr6, cc4, 0
	ckne icc0, cc5
	srlicc.p gr4, #1, gr4, icc2
	cmov gr7, gr5, cc5, 1
	or.p gr8, gr6, gr8
	bne icc2,2,.L939
.L936:
	cmpi gr10, #0, icc1
	bne icc1,0,.L951
	ret
.L935:
	cmpi gr4, #0, icc2
	bne icc2,2,.L938
	setlos.p #0, gr8
	bra .L936
.L951:
	mov.p gr5, gr8
	ret
.L950:
	sub.p gr8,gr9,gr9
	setlos.p #1, gr8
	cknc.p icc0, cc4
	cknc icc0, cc5
	cmov.p gr0, gr8, cc4, 0
	cmov.p gr9, gr5, cc5, 1
	bra .L936
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	movgf.p gr8, fr0
	setlos #1, gr4
	movgf.p gr9, fr1
	setlos #-1, gr5
	fcmps fr0,fr1,fcc0
	fcklt fcc0, cc1
	cmov.p gr4, gr8, cc1, 0
	cfckgt fcc0, cc0, cc1, 0
	andncr cc1, cc0, cc2
	cmov gr0, gr8, cc2, 0
	cmov.p gr5, gr8, cc1, 1
	ret
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.p2align 4
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	movgfd.p gr8, fr0
	setlos #1, gr4
	movgfd.p gr10, fr2
	setlos #-1, gr5
	fcmpd fr0,fr2,fcc0
	fcklt fcc0, cc1
	cmov.p gr4, gr8, cc1, 0
	cfckgt fcc0, cc0, cc1, 0
	andncr cc1, cc0, cc2
	cmov gr0, gr8, cc2, 0
	cmov.p gr5, gr8, cc1, 1
	ret
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	smul.p gr8,gr9,gr8
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	umul.p gr8,gr9,gr8
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.p2align 4
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	cmpi gr9, #0, icc0
	bn icc0,0,.L974
	beq icc0,0,.L966
	setlos #0, gr10
.L962:
	setlos.p #0, gr6
	setlos.p #0, gr7
	bra .L965
.L975:
	beq icc1,0,.L964
.L965:
	andi.p gr9, #1, gr4
	addi gr6,#1,gr6
	smul.p gr4,gr8,gr4
	sraicc gr9, #1, gr9, icc2
	cmpi.p gr6,#32,icc1
	slli gr8,#1,gr8
	add.p gr7,gr5,gr7
	bne icc2,2,.L975
.L964:
	cmpi gr10, #0, icc0
	beq icc0,0,.L960
	sub gr0,gr7,gr7
.L960:
	mov.p gr7, gr8
	ret
.L974:
	sub.p gr0,gr9,gr9
	setlos.p #1, gr10
	bra .L962
.L966:
	setlos.p #0, gr7
	bra .L960
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	cmpi.p gr8, #0, icc0
	cmpi gr9, #0, icc1
	setlos.p #1, gr5
	ckn icc0, cc4
	csub.p gr0, gr8, gr8, cc4, 1
	ckn icc1, cc5
	csub.p gr0, gr9, gr9, cc5, 1
	cmov gr0, gr4, cc4, 1
	cmov.p gr5, gr10, cc4, 1
	cmov gr5, gr4, cc4, 0
	cmov.p gr0, gr10, cc4, 0
	cmp gr8,gr9,icc2
	cmov.p gr4, gr10, cc5, 1
	mov.p gr8, gr6
	bls icc2,0,.L997
	setlos.p #32, gr7
	setlos.p #1, gr13
	bra .L979
.L983:
	beq icc1,0,.L984
.L979:
	slli.p gr9,#1,gr9
	addicc gr7, #-1, gr7, icc1
	cmp.p gr8,gr9,icc0
	slli gr13,#1,gr13
	bhi icc0,2,.L983
.L984:
	cmpi.p gr13, #0, icc2
	setlos #0, gr8
	beq icc2,0,.L982
.L981:
	setlos.p #1, gr12
	cmp gr6,gr9,icc1
	cknc icc1, cc4
	cmov.p gr0, gr12, cc4, 0
	sub gr6,gr9,gr11
	cmpi.p gr12, #0, icc0
	srli gr9, #1, gr9
	ckne icc0, cc5
	cmov.p gr13, gr12, cc5, 1
	cmov.p gr0, gr12, cc5, 0
	ckne icc0, cc6
	srlicc.p gr13, #1, gr13, icc2
	cmov gr11, gr6, cc6, 1
	or.p gr8, gr12, gr8
	bne icc2,2,.L981
.L982:
	cmpi gr10, #0, icc1
	beq icc1,2,.L976
	sub gr0,gr8,gr8
.L976:
	ret
.L997:
	setlos.p #1, gr8
	cknc icc2, cc6
	cmov.p gr0, gr8, cc6, 0
	bra .L982
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	setlos.p #1, gr12
	cmpi gr8, #0, icc0
	cmpi.p gr9,#0,icc1
	ckn icc0, cc4
	csub.p gr0, gr8, gr8, cc4, 1
	cmov.p gr12, gr10, cc4, 1
	cklt icc1, cc5
	csub.p gr0, gr9, gr12, cc5, 1
	cmov gr9, gr12, cc5, 0
	cmov gr0, gr10, cc4, 0
	cmp.p gr8,gr12,icc2
	mov gr8, gr7
	bls icc2,0,.L1020
	setlos.p #32, gr5
	setlos.p #1, gr6
	bra .L1000
.L1004:
	beq icc1,0,.L1005
.L1000:
	slli.p gr12,#1,gr12
	addicc gr5, #-1, gr5, icc1
	cmp.p gr8,gr12,icc0
	slli gr6,#1,gr6
	bhi icc0,2,.L1004
.L1005:
	cmpi gr6, #0, icc2
	beq icc2,0,.L1003
.L1002:
	cmp.p gr7,gr12,icc0
	setlos #1, gr9
	cknc icc0, cc4
	cmov.p gr0, gr9, cc4, 0
	sub gr7,gr12,gr8
	andi.p gr9,#0xff,gr11
	srlicc gr6, #1, gr6, icc1
	cmpi.p gr11, #0, icc2
	srli gr12, #1, gr12
	ckne icc2, cc5
	cmov.p gr8, gr7, cc5, 1
	bne icc1,2,.L1002
.L1007:
	mov gr7, gr8
.L1003:
	cmpi gr10, #0, icc0
	beq icc0,2,.L998
	sub gr0,gr8,gr8
.L998:
	ret
.L1020:
	sub.p gr8,gr12,gr4
	cknc icc2, cc6
	cmov.p gr4, gr7, cc6, 1
	bra .L1007
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov.p gr9, gr5
	mov gr8, gr6
	sethi.p #hi(#0),gr5
	sethi #hi(#0),gr8
	cmp gr5,gr8,icc0
	bnc icc0,0,.L1102
	slli gr9,#16,gr4
	srai gr4, #16, gr14
	cmpi gr14, #0, icc0
	bn icc0,0,.L1024
	slli gr5,#1,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1031
	slli gr4,#16,gr7
	srai gr7, #16, gr11
	cmpi gr11, #0, icc2
	bn icc2,0,.L1031
	slli gr5,#2,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1033
	slli gr4,#16,gr12
	srai gr12, #16, gr13
	cmpi gr13, #0, icc1
	bn icc1,0,.L1033
	slli gr5,#3,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1035
	slli gr4,#16,gr32
	srai gr32, #16, gr33
	cmpi gr33, #0, icc0
	bn icc0,0,.L1035
	slli gr5,#4,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1037
	slli gr4,#16,gr34
	srai gr34, #16, gr35
	cmpi gr35, #0, icc2
	bn icc2,0,.L1037
	slli gr5,#5,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1039
	slli gr4,#16,gr36
	srai gr36, #16, gr37
	cmpi gr37, #0, icc1
	bn icc1,0,.L1039
	slli gr5,#6,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1041
	slli gr4,#16,gr38
	srai gr38, #16, gr39
	cmpi gr39, #0, icc0
	bn icc0,0,.L1041
	slli gr5,#7,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1043
	slli gr4,#16,gr40
	srai gr40, #16, gr41
	cmpi gr41, #0, icc2
	bn icc2,0,.L1043
	slli gr5,#8,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1045
	slli gr4,#16,gr42
	srai gr42, #16, gr43
	cmpi gr43, #0, icc1
	bn icc1,0,.L1045
	slli gr5,#9,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1047
	slli gr4,#16,gr44
	srai gr44, #16, gr45
	cmpi gr45, #0, icc0
	bn icc0,0,.L1047
	slli gr5,#10,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1049
	slli gr4,#16,gr46
	srai gr46, #16, gr47
	cmpi gr47, #0, icc2
	bn icc2,0,.L1049
	slli gr5,#11,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1051
	slli gr4,#16,gr9
	srai gr9, #16, gr7
	cmpi gr7, #0, icc1
	bn icc1,0,.L1051
	slli gr5,#12,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc2
	bls icc2,0,.L1053
	slli gr4,#16,gr11
	srai gr11, #16, gr12
	cmpi gr12, #0, icc0
	bn icc0,0,.L1053
	slli gr5,#13,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc1
	bls icc1,0,.L1055
	slli gr4,#16,gr13
	srai gr13, #16, gr32
	cmpi gr32, #0, icc2
	bn icc2,0,.L1055
	slli gr5,#14,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L1057
	slli gr4,#16,gr33
	srai gr33, #16, gr34
	cmpi gr34, #0, icc1
	bn icc1,0,.L1057
	slli gr5,#15,gr9
	mov gr9, gr14
	sethi #hi(#0),gr14
	cmp gr8,gr14,icc2
	bls icc2,0,.L1058
	cmpi gr14, #0, icc0
	bne icc0,0,.L1103
.L1027:
	cmpi gr10, #0, icc2
	bne icc2,0,.L1073
	mov gr14, gr8
.L1073:
	ret
.L1031:
	setlos #2, gr35
.L1026:
	cmp.p gr8,gr4,icc1
	setlos #1, gr37
	cknc icc1, cc6
	cmov.p gr0, gr37, cc6, 0
	sub.p gr8,gr4,gr8
	cknc icc1, cc4
	andi.p gr37,#0xff,gr38
	srli gr4, #1, gr5
	cmpi.p gr38, #0, icc2
	setlos #1, gr41
	ckne icc2, cc5
	cmov.p gr6, gr8, cc5, 0
	srli gr35, #1, gr36
	sethi.p #hi(#0),gr8
	cmov gr35, gr14, cc4, 1
	cmp.p gr8,gr5,icc0
	cmov gr0, gr14, cc4, 0
	cknc icc0, cc6
	cmov.p gr0, gr41, cc6, 0
	sub.p gr8,gr5,gr6
	cknc icc0, cc4
	andi.p gr41,#0xff,gr42
	sethi #hi(#0),gr14
	cmpi.p gr42, #0, icc2
	cmov gr0, gr36, cc4, 0
	ckne icc2, cc5
	cmov.p gr6, gr42, cc5, 1
	cmov gr8, gr42, cc5, 0
	or.p gr14, gr36, gr14
	mov gr42, gr8
	srlicc.p gr35, #2, gr39, icc1
	srli gr4, #2, gr40
	sethi.p #hi(#0),gr14
	sethi.p #hi(#0),gr8
	beq icc1,0,.L1027
	cmp.p gr8,gr40,icc0
	setlos #1, gr46
	cknc icc0, cc6
	cmov.p gr0, gr46, cc6, 0
	sub gr8,gr40,gr43
	cmpi.p gr46, #0, icc2
	srlicc gr35, #3, gr44, icc1
	ckne icc2, cc4
	cmov.p gr0, gr39, cc4, 0
	ckne icc2, cc5
	cmov gr42, gr43, cc5, 0
	or.p gr14, gr39, gr9
	mov gr43, gr8
	mov.p gr9, gr14
	srli gr4, #3, gr45
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr45,icc0
	setlos #1, gr12
	cknc icc0, cc6
	cmov.p gr0, gr12, cc6, 0
	sub gr8,gr45,gr47
	cmpi.p gr12, #0, icc2
	srlicc gr35, #4, gr11, icc1
	ckne icc2, cc4
	cmov.p gr0, gr44, cc4, 0
	ckne icc2, cc5
	cmov gr43, gr47, cc5, 0
	or.p gr14, gr44, gr9
	mov gr47, gr8
	mov.p gr9, gr14
	srli gr4, #4, gr7
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr7,icc0
	setlos #1, gr34
	cknc icc0, cc6
	cmov.p gr0, gr34, cc6, 0
	sub gr8,gr7,gr32
	cmpi.p gr34, #0, icc2
	srlicc gr35, #5, gr13, icc1
	ckne icc2, cc4
	cmov.p gr0, gr11, cc4, 0
	ckne icc2, cc5
	cmov gr47, gr32, cc5, 0
	or.p gr14, gr11, gr9
	mov gr32, gr8
	mov.p gr9, gr14
	srli gr4, #5, gr33
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	sub.p gr8,gr33,gr36
	cmp gr8,gr33,icc0
	setlos.p #1, gr8
	srlicc.p gr35, #6, gr37, icc1
	cknc icc0, cc6
	cmov.p gr0, gr8, cc6, 0
	srli gr4, #6, gr5
	cmpi gr8, #0, icc2
	ckne icc2, cc4
	cmov.p gr0, gr13, cc4, 0
	ckne icc2, cc5
	cmov gr32, gr36, cc5, 0
	or.p gr14, gr13, gr9
	mov gr36, gr8
	mov.p gr9, gr14
	sethi #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr5,icc0
	setlos #1, gr40
	cknc icc0, cc6
	cmov.p gr0, gr40, cc6, 0
	sub gr8,gr5,gr38
	cmpi.p gr40, #0, icc2
	srlicc gr35, #7, gr6, icc1
	ckne icc2, cc4
	cmov.p gr0, gr37, cc4, 0
	ckne icc2, cc5
	cmov gr36, gr38, cc5, 0
	or.p gr14, gr37, gr9
	mov gr38, gr8
	mov.p gr9, gr14
	srli gr4, #7, gr39
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr39,icc0
	setlos #1, gr44
	cknc icc0, cc6
	cmov.p gr0, gr44, cc6, 0
	sub gr8,gr39,gr41
	cmpi.p gr44, #0, icc2
	srlicc gr35, #8, gr42, icc1
	ckne icc2, cc4
	cmov.p gr0, gr6, cc4, 0
	ckne icc2, cc5
	cmov gr38, gr41, cc5, 0
	or.p gr14, gr6, gr9
	mov gr41, gr8
	mov.p gr9, gr14
	srli gr4, #8, gr43
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr43,icc0
	setlos #1, gr11
	cknc icc0, cc6
	cmov.p gr0, gr11, cc6, 0
	sub gr8,gr43,gr45
	cmpi.p gr11, #0, icc2
	srlicc gr35, #9, gr46, icc1
	ckne icc2, cc4
	cmov.p gr0, gr42, cc4, 0
	ckne icc2, cc5
	cmov gr41, gr45, cc5, 0
	or.p gr14, gr42, gr9
	mov gr45, gr8
	mov.p gr9, gr14
	srli gr4, #9, gr47
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr47,icc0
	setlos #1, gr13
	cknc icc0, cc6
	cmov.p gr0, gr13, cc6, 0
	sub gr8,gr47,gr12
	cmpi.p gr13, #0, icc2
	srlicc gr35, #10, gr32, icc1
	ckne icc2, cc4
	cmov.p gr0, gr46, cc4, 0
	ckne icc2, cc5
	cmov gr45, gr12, cc5, 0
	or.p gr14, gr46, gr9
	mov gr12, gr8
	mov.p gr9, gr14
	srli gr4, #10, gr7
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr7,icc0
	setlos #1, gr37
	cknc icc0, cc6
	cmov.p gr0, gr37, cc6, 0
	sub gr8,gr7,gr33
	cmpi.p gr37, #0, icc2
	srlicc gr35, #11, gr34, icc1
	ckne icc2, cc4
	cmov.p gr0, gr32, cc4, 0
	ckne icc2, cc5
	cmov gr12, gr33, cc5, 0
	or.p gr14, gr32, gr9
	mov gr33, gr8
	mov.p gr9, gr14
	srli gr4, #11, gr36
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr36,icc0
	sub gr8,gr36,gr5
	setlos.p #1, gr8
	srlicc.p gr35, #12, gr38, icc1
	cknc icc0, cc6
	cmov.p gr0, gr8, cc6, 0
	srli gr4, #12, gr6
	cmpi gr8, #0, icc2
	ckne icc2, cc4
	cmov.p gr0, gr34, cc4, 0
	ckne icc2, cc5
	cmov gr5, gr33, cc5, 1
	or.p gr14, gr34, gr9
	mov gr33, gr8
	mov.p gr9, gr14
	sethi #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr6,icc0
	setlos #1, gr42
	cknc icc0, cc6
	cmov.p gr0, gr42, cc6, 0
	sub gr8,gr6,gr39
	cmpi.p gr42, #0, icc2
	srlicc gr35, #13, gr40, icc1
	ckne icc2, cc4
	cmov.p gr0, gr38, cc4, 0
	ckne icc2, cc5
	cmov gr39, gr33, cc5, 1
	or.p gr14, gr38, gr9
	mov gr33, gr8
	mov.p gr9, gr14
	srli gr4, #13, gr41
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr41,icc0
	setlos #1, gr46
	cknc icc0, cc6
	cmov.p gr0, gr46, cc6, 0
	sub gr8,gr41,gr43
	cmpi.p gr46, #0, icc2
	srlicc gr35, #14, gr44, icc1
	ckne icc2, cc4
	cmov.p gr0, gr40, cc4, 0
	ckne icc2, cc5
	cmov gr43, gr33, cc5, 1
	or.p gr14, gr40, gr9
	mov gr33, gr8
	mov.p gr9, gr14
	srli gr4, #14, gr45
	sethi.p #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr45,icc0
	setlos #1, gr12
	cknc icc0, cc6
	cmov.p gr0, gr12, cc6, 0
	sub gr8,gr45,gr47
	cmpi.p gr12, #0, icc2
	setlos #16384, gr11
	ckne icc2, cc4
	cmov.p gr0, gr44, cc4, 0
	ckne icc2, cc5
	cmov gr47, gr33, cc5, 1
	or.p gr14, gr44, gr9
	mov gr33, gr8
	mov.p gr9, gr14
	cmp gr35,gr11,icc1
	srli.p gr4, #15, gr4
	sethi #hi(#0),gr8
	sethi.p #hi(#0),gr14
	beq icc1,0,.L1027
	cmp.p gr8,gr4,icc0
	setlos #1, gr35
	cknc icc0, cc6
	cmov.p gr0, gr35, cc6, 0
	sub gr8,gr4,gr8
	andi gr35,#0xff,gr32
	cmpi.p gr32, #0, icc1
	or gr32, gr14, gr14
	ckne icc1, cc4
	cmov gr33, gr8, cc4, 0
	sethi.p #hi(#0),gr8
	bra .L1027
.L1033:
	setlos.p #4, gr35
	bra .L1026
.L1035:
	setlos.p #8, gr35
	bra .L1026
.L1037:
	setlos.p #16, gr35
	bra .L1026
.L1047:
	setlos.p #512, gr35
	bra .L1026
.L1039:
	setlos.p #32, gr35
	bra .L1026
.L1041:
	setlos.p #64, gr35
	bra .L1026
.L1043:
	setlos.p #128, gr35
	bra .L1026
.L1045:
	setlos.p #256, gr35
	bra .L1026
.L1102:
	cmp.p gr5,gr8,icc1
	setlos #1, gr9
	ckeq icc1, cc4
	cmov.p gr0, gr9, cc4, 0
	sub gr8,gr5,gr8
	andi gr9,#0xff,gr14
	cmpi gr14, #0, icc2
	ckne icc2, cc5
	cmov gr6, gr8, cc5, 0
	sethi.p #hi(#0),gr8
	bra .L1027
.L1049:
	setlos.p #1024, gr35
	bra .L1026
.L1051:
	setlos.p #2048, gr35
	bra .L1026
.L1053:
	setlos.p #4096, gr35
	bra .L1026
.L1055:
	setlos.p #8192, gr35
	bra .L1026
.L1057:
	setlos.p #16384, gr35
	bra .L1026
.L1103:
	sethi.p #hi(#32768), gr35
	setlo #lo(#32768), gr35
	mov.p gr35, gr4
	bra .L1026
.L1058:
	sethi.p #hi(#32768), gr4
	setlo #lo(#32768), gr4
	mov.p gr4, gr35
	bra .L1026
.L1024:
	sub.p gr8,gr5,gr8
	setlos #1, gr14
	sethi.p #hi(#0),gr8
	bra .L1027
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp.p gr8,gr9,icc0
	mov gr8, gr5
	bls icc0,0,.L1122
	setlos.p #32, gr8
	setlos.p #1, gr4
	bra .L1105
.L1109:
	slli.p gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr5,gr9,icc0
	bls icc0,0,.L1107
	beq icc1,0,.L1108
.L1105:
	cmpi.p gr9, #0, icc2
	addicc gr8, #-1, gr8, icc1
	bp icc2,2,.L1109
.L1110:
	setlos #0, gr8
.L1111:
	setlos.p #1, gr6
	cmp gr5,gr9,icc1
	cknc icc1, cc6
	cmov.p gr0, gr6, cc6, 0
	sub gr5,gr9,gr7
	cmpi.p gr6, #0, icc0
	srli gr9, #1, gr9
	ckne icc0, cc4
	cmov.p gr4, gr6, cc4, 1
	cmov.p gr0, gr6, cc4, 0
	ckne icc0, cc5
	srlicc.p gr4, #1, gr4, icc2
	cmov gr7, gr5, cc5, 1
	or.p gr8, gr6, gr8
	bne icc2,2,.L1111
.L1108:
	cmpi gr10, #0, icc1
	bne icc1,0,.L1123
	ret
.L1107:
	cmpi gr4, #0, icc2
	bne icc2,2,.L1110
	setlos.p #0, gr8
	bra .L1108
.L1123:
	mov.p gr5, gr8
	ret
.L1122:
	sub.p gr8,gr9,gr9
	setlos.p #1, gr8
	cknc.p icc0, cc4
	cknc icc0, cc5
	cmov.p gr0, gr8, cc4, 0
	cmov.p gr9, gr5, cc5, 1
	bra .L1108
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L1125
	addi.p gr10,#-32,gr10
	setlos #0, gr5
	sll.p gr9,gr10,gr8
	mov gr5, gr9
.L1127:
	ret
.L1125:
	cmpi gr10, #0, icc1
	beq icc1,0,.L1127
	setlos.p #32, gr6
	sll gr9,gr10,gr5
	sub.p gr6,gr10,gr7
	sll gr8,gr10,gr8
	srl gr9, gr7, gr9
	or.p gr9, gr8, gr8
	mov.p gr5, gr9
	bra .L1127
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L1130
	addi.p gr10,#-32,gr10
	srai gr8, #31, gr5
	sra.p gr8, gr10, gr9
	mov gr5, gr8
.L1132:
	ret
.L1130:
	cmpi gr10, #0, icc1
	beq icc1,0,.L1132
	setlos.p #32, gr6
	sra gr8, gr10, gr5
	sub.p gr6,gr10,gr7
	srl gr9, gr10, gr9
	sll gr8,gr7,gr8
	or.p gr8, gr9, gr9
	mov.p gr5, gr8
	bra .L1132
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	mov.p gr9, gr4
	slli gr8,#8,gr6
	srli.p gr9, #24, gr5
	slli gr8,#24,gr10
	srli.p gr8, #8, gr9
	or gr6, gr5, gr14
	srli.p gr4, #8, gr7
	sethi #hi(#65280), gr12
	setlo.p #lo(#65280), gr12
	srli gr8, #24, gr8
	and.p gr9, gr12, gr33
	slli gr4,#24,gr32
	or.p gr10, gr7, gr34
	andi gr14, #255, gr13
	sethi.p #hi(#16711680), gr11
	setlo #lo(#16711680), gr11
	or.p gr8, gr33, gr36
	and gr14, gr11, gr35
	slli.p gr4,#8,gr37
	or gr32, gr13, gr38
	and.p gr34, gr12, gr39
	or gr36, gr35, gr40
	or.p gr38, gr39, gr41
	and gr37, gr11, gr42
	or.p gr40, gr10, gr9
	or.p gr41, gr42, gr8
	ret
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli.p gr8, #24, gr4
	slli gr8,#24,gr9
	srli.p gr8, #8, gr5
	sethi #hi(#65280), gr7
	setlo.p #lo(#65280), gr7
	slli gr8,#8,gr8
	or.p gr4, gr9, gr10
	and gr5, gr7, gr11
	sethi.p #hi(#16711680), gr6
	setlo #lo(#16711680), gr6
	and.p gr8, gr6, gr12
	or gr10, gr11, gr13
	or.p gr13, gr12, gr8
	ret
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	mov.p gr8, gr4
	sethi #hi(#65535), gr6
	setlo.p #lo(#65535), gr6
	setlos #1, gr11
	cmp.p gr4,gr6,icc0
	setlos #16, gr5
	ckls icc0, cc4
	cmov.p gr0, gr11, cc4, 0
	sethi #hi(#65280), gr10
	slli.p gr11,#4,gr12
	setlo #lo(#65280), gr10
	sub.p gr5,gr12,gr13
	setlos #1, gr32
	srl.p gr4, gr13, gr14
	setlos #8, gr9
	andcc.p gr14, gr10, gr0, icc1
	setlos #1, gr37
	ckeq icc1, cc5
	cmov.p gr0, gr32, cc5, 0
	setlos #4, gr7
	slli.p gr32,#3,gr33
	setlos #1, gr42
	sub.p gr9,gr33,gr34
	setlos #2, gr8
	srl.p gr14, gr34, gr36
	add gr33,gr12,gr35
	andicc gr36, #240, gr0, icc2
	ckeq icc2, cc6
	cmov gr0, gr37, cc6, 0
	slli gr37,#2,gr38
	sub.p gr7,gr38,gr39
	add gr38,gr35,gr40
	srl gr36, gr39, gr41
	andicc gr41, #12, gr0, icc0
	ckeq icc0, cc4
	cmov gr0, gr42, cc4, 0
	slli gr42,#1,gr43
	sub.p gr8,gr43,gr44
	add gr43,gr40,gr45
	srl gr41, gr44, gr46
	andi.p gr46, #2, gr47
	sub gr8,gr46,gr6
	cmpi gr47, #0, icc1
	ckeq icc1, cc5
	cmov gr0, gr6, cc5, 0
	add.p gr6,gr45,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1141
	bgt icc0,0,.L1142
	cmp gr9,gr11,icc1
	bc icc1,0,.L1141
	bhi icc1,0,.L1142
	setlos.p #1, gr8
	ret
.L1141:
	setlos.p #0, gr8
	ret
.L1142:
	setlos.p #2, gr8
	ret
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1147
	bgt icc0,0,.L1146
	cmp gr9,gr11,icc1
	bc icc1,0,.L1147
	setlos.p #1, gr8
	ckhi icc1, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L1147:
	setlos.p #-1, gr8
	ret
.L1146:
	setlos.p #1, gr8
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	sethi.p #hi(#65535), gr5
	setlo #lo(#65535), gr5
	andcc.p gr8, gr5, gr0, icc0
	setlos #1, gr6
	ckeq icc0, cc4
	cmov.p gr0, gr6, cc4, 0
	mov gr8, gr4
	slli.p gr6,#4,gr8
	setlos #1, gr11
	srl.p gr4, gr8, gr9
	setlos #1, gr32
	andi.p gr9, #255, gr10
	setlos #1, gr36
	cmpi.p gr10, #0, icc1
	setlos #2, gr7
	ckeq icc1, cc5
	cmov gr0, gr11, cc5, 0
	slli gr11,#3,gr12
	srl.p gr9, gr12, gr13
	add gr12,gr8,gr14
	andicc gr13, #15, gr0, icc2
	ckeq icc2, cc6
	cmov gr0, gr32, cc6, 0
	slli gr32,#2,gr33
	srl.p gr13, gr33, gr34
	add gr33,gr14,gr35
	andicc gr34, #3, gr0, icc0
	ckeq icc0, cc4
	cmov gr0, gr36, cc4, 0
	slli gr36,#1,gr37
	srl.p gr34, gr37, gr38
	add gr37,gr35,gr39
	andi gr38, #3, gr40
	not.p gr40, gr41
	srli gr40, #1, gr42
	andi.p gr41, #1, gr43
	sub gr7,gr42,gr44
	umul gr43,gr44,gr4
	add.p gr39,gr5,gr8
	ret
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L1150
	addi.p gr10,#-32,gr10
	setlos #0, gr5
	srl.p gr8, gr10, gr9
	mov gr5, gr8
.L1152:
	ret
.L1150:
	cmpi gr10, #0, icc1
	beq icc1,0,.L1152
	setlos.p #32, gr6
	srl gr8, gr10, gr5
	sub.p gr6,gr10,gr7
	srl gr9, gr10, gr9
	sll gr8,gr7,gr8
	or.p gr8, gr9, gr9
	mov.p gr5, gr8
	bra .L1152
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	sethi.p #hi(#65535), gr7
	setlo #lo(#65535), gr7
	and.p gr8, gr7, gr10
	and gr9, gr7, gr12
	umul.p gr10,gr12,gr4
	srli gr8, #16, gr8
	umul.p gr12,gr8,gr12
	srli gr9, #16, gr9
	umul.p gr10,gr9,gr10
	umul gr8,gr9,gr8
	srli.p gr5, #16, gr4
	and gr7, gr5, gr5
	add gr4,gr13,gr6
	slli.p gr6,#16,gr13
	srli gr6, #16, gr14
	srli.p gr13, #16, gr32
	add gr5,gr13,gr33
	add.p gr32,gr11,gr11
	add gr14,gr9,gr34
	and.p gr33, gr7, gr35
	slli gr11,#16,gr36
	srli.p gr11, #16, gr37
	add gr35,gr36,gr9
	add.p gr34,gr37,gr8
	ret
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	sethi.p #hi(#65535), gr12
	setlo #lo(#65535), gr12
	and.p gr9, gr12, gr14
	and gr11, gr12, gr34
	umul.p gr14,gr34,gr36
	srli gr9, #16, gr32
	umul.p gr34,gr32,gr34
	umul gr9,gr10,gr6
	srli gr11, #16, gr4
	srli.p gr37, #16, gr6
	umul gr14,gr4,gr14
	umul.p gr32,gr4,gr32
	umul gr11,gr8,gr4
	add.p gr6,gr35,gr8
	and gr12, gr37, gr9
	slli.p gr8,#16,gr10
	srli gr8, #16, gr11
	srli.p gr10, #16, gr13
	add gr11,gr33,gr33
	add.p gr13,gr15,gr36
	add gr9,gr10,gr35
	srli.p gr36, #16, gr38
	and gr35, gr12, gr37
	add.p gr33,gr38,gr40
	slli gr36,#16,gr39
	add.p gr7,gr40,gr7
	add gr37,gr39,gr9
	add.p gr7,gr5,gr8
	ret
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.p2align 4
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	subcc gr0,gr9,gr9,icc0
	subx.p gr0,gr8,gr8,icc0
	ret
	.size	__negdi2, .-__negdi2
	.p2align 4
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	xor.p gr8, gr9, gr8
	setlos #27030, gr4
	srli gr8, #16, gr5
	xor gr5, gr8, gr7
	srli gr7, #8, gr6
	xor gr6, gr7, gr9
	srli gr9, #4, gr10
	xor gr10, gr9, gr11
	andi gr11, #15, gr12
	sra gr4, gr12, gr13
	andi.p gr13, #1, gr8
	ret
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	mov.p gr8, gr5
	setlos #27030, gr8
	srli gr5, #16, gr4
	xor gr4, gr5, gr6
	srli gr6, #8, gr7
	xor gr7, gr6, gr9
	srli gr9, #4, gr10
	xor gr10, gr9, gr11
	andi gr11, #15, gr12
	sra gr8, gr12, gr13
	andi.p gr13, #1, gr8
	ret
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	slli.p gr8,#31,gr32
	srli gr9, #1, gr35
	or.p gr32, gr35, gr4
	sethi #hi(#1431655765), gr33
	setlo.p #lo(#1431655765), gr33
	srli gr8, #1, gr34
	and.p gr4, gr33, gr15
	and gr34, gr33, gr14
	subcc.p gr9,gr15,gr9,icc0
	sethi #hi(#858993459), gr11
	subx.p gr8,gr14,gr8,icc0
	srli gr9, #2, gr6
	slli.p gr8,#30,gr5
	setlo #lo(#858993459), gr11
	or.p gr5, gr6, gr36
	srli gr8, #2, gr7
	and.p gr9, gr11, gr13
	and gr36, gr11, gr38
	and.p gr8, gr11, gr12
	addcc gr38,gr13,gr39,icc1
	and.p gr7, gr11, gr37
	srli gr39, #4, gr42
	addx.p gr37,gr12,gr40,icc1
	sethi #hi(#252645135), gr10
	slli.p gr40,#28,gr41
	srli gr40, #4, gr44
	or.p gr41, gr42, gr43
	setlo #lo(#252645135), gr10
	addcc gr43,gr39,gr45,icc2
	addx.p gr44,gr40,gr46,icc2
	and gr45, gr10, gr33
	and gr46, gr10, gr47
	add gr47,gr33,gr11
	srli gr11, #16, gr32
	add gr32,gr11,gr35
	srli gr35, #8, gr34
	add gr34,gr35,gr10
	andi.p gr10, #127, gr8
	ret
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	srli.p gr8, #1, gr4
	sethi #hi(#1431655765), gr5
	setlo.p #lo(#1431655765), gr5
	sethi #hi(#858993459), gr6
	and.p gr4, gr5, gr9
	setlo #lo(#858993459), gr6
	sub.p gr8,gr9,gr8
	sethi #hi(#252645135), gr7
	srli.p gr8, #2, gr10
	and gr8, gr6, gr11
	and.p gr10, gr6, gr12
	setlo #lo(#252645135), gr7
	add gr12,gr11,gr13
	srli gr13, #4, gr14
	add gr14,gr13,gr32
	and gr32, gr7, gr33
	srli gr33, #16, gr34
	add gr34,gr33,gr35
	srli gr35, #8, gr36
	add gr36,gr35,gr37
	andi.p gr37, #63, gr8
	ret
	.size	__popcountsi2, .-__popcountsi2
	.p2align 4
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	movgfd.p gr8, fr0
	andicc gr10, #1, gr0, icc0
	mov.p gr10, gr11
	sethi #hi(#1072693248), gr8
	setlos.p #0, gr9
	setlo.p #lo(#1072693248), gr8
	beq icc0,2,.L1162
.L1164:
	movgfd gr8, fr2
	fmuld fr2,fr0,fr4
	movfgd fr4, gr8
.L1162:
	srli gr11, #31, gr5
	add gr5,gr11,gr4
	sraicc gr4, #1, gr11, icc1
	beq icc1,0,.L1163
	andicc.p gr11, #1, gr0, icc2
	fmuld.p fr0,fr0,fr0
	srli gr11, #31, gr6
	bne icc2,2,.L1164
.L1169:
	add.p gr6,gr11,gr7
	fmuld fr0,fr0,fr0
	srai gr7, #1, gr11
	andicc.p gr11, #1, gr0, icc2
	srli gr11, #31, gr6
	bne icc2,2,.L1164
	bra .L1169
.L1163:
	cmpi gr10, #0, icc0
	bn icc0,0,.L1170
	ret
.L1170:
	setlos.p #0, gr5
	sethi #hi(#1072693248), gr4
	movgfd.p gr8, fr8
	setlo #lo(#1072693248), gr4
	movgfd gr4, fr6
	fdivd fr6,fr8,fr10
	movfgd.p fr10, gr8
	ret
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	sethi.p #hi(#1065353216), gr5
	andicc gr9, #1, gr0, icc0
	movgf.p gr8, fr0
	setlo #lo(#1065353216), gr5
	movgf.p gr5, fr1
	mov.p gr9, gr10
	beq icc0,2,.L1172
.L1174:
	fmuls fr1,fr0,fr1
.L1172:
	srli gr10, #31, gr6
	add gr6,gr10,gr4
	sraicc gr4, #1, gr10, icc1
	beq icc1,0,.L1173
	andicc.p gr10, #1, gr0, icc2
	fmuls.p fr0,fr0,fr0
	srli gr10, #31, gr7
	bne icc2,2,.L1174
.L1178:
	add.p gr7,gr10,gr8
	fmuls fr0,fr0,fr0
	srai gr8, #1, gr10
	andicc.p gr10, #1, gr0, icc2
	srli gr10, #31, gr7
	bne icc2,2,.L1174
	bra .L1178
.L1173:
	cmpi gr9, #0, icc0
	bp icc0,2,.L1171
	sethi.p #hi(#1065353216), gr9
	setlo #lo(#1065353216), gr9
	movgf gr9, fr2
	fdivs fr2,fr1,fr1
.L1171:
	movfg.p fr1, gr8
	ret
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1183
	bhi icc0,0,.L1184
	cmp gr9,gr11,icc1
	bc icc1,0,.L1183
	bhi icc1,0,.L1184
	setlos.p #1, gr8
	ret
.L1183:
	setlos.p #0, gr8
	ret
.L1184:
	setlos.p #2, gr8
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1189
	bhi icc0,0,.L1188
	cmp gr9,gr11,icc1
	bc icc1,0,.L1189
	setlos.p #1, gr8
	ckhi icc1, cc4
	cmov.p gr0, gr8, cc4, 0
	ret
.L1189:
	setlos.p #-1, gr8
	ret
.L1188:
	setlos.p #1, gr8
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
	.globl __floatundisf
	.globl __floatundidf
	.globl __dtof
	.globl __clzdi2
	.globl __clzsi2
	.globl __modll
	.globl __divll
	.globl __mulll
	.globl __unordsf2
	.globl __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
