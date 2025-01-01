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
	setlos #0, gr4
.L5:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L5
	bra .L3
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	andi gr10,#0xff,gr10
	cmpi gr11, #0, icc0
	beq icc0,0,.L10
.L9:
	ldub @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmp gr10,gr4,icc0
	beq icc0,0,.L10
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	addicc gr11, #-1, gr11, icc0
	bne icc0,2,.L9
.L10:
	cmpi gr11, #0, icc0
	ckne icc0, cc4
	setlos #1, gr4
	cadd gr8, gr4, gr8, cc4, 1
	cmov gr0, gr8, cc4, 0
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	andi gr9,#0xff,gr9
	cmpi gr10, #0, icc0
	beq icc0,0,.L17
.L16:
	ldub @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	beq icc0,0,.L17
	addi gr8,#1,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L16
.L17:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L24
.L23:
	ldub @(gr8,gr0),gr5
	ldub @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L24
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L23
.L24:
	cmpi gr10, #0, icc0
	beq icc0,2,.L28
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
.L26:
	ret
.L28:
	setlos #0, gr8
	bra .L26
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	cmpi gr10, #0, icc0
	beq icc0,0,.L30
	setlos #0, gr4
.L31:
	ldub @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L31
.L30:
	ret
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	andi gr9,#0xff,gr9
	addi gr10,#-1,gr10
.L34:
	cmpi gr10,#-1,icc0
	beq icc0,0,.L38
	ldub @(gr8,gr10),gr4
	addi gr10,#-1,gr5
	cmp gr9,gr4,icc0
	beq icc0,0,.L39
	mov gr5, gr10
	bra .L34
.L39:
	add gr8,gr10,gr8
	bra .L35
.L38:
	setlos #0, gr8
.L35:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	cmpi gr10, #0, icc0
	beq icc0,0,.L41
	add gr8,gr10,gr5
	mov gr8, gr4
	andi gr9,#0xff,gr6
.L42:
	stb gr6, @(gr4,gr0)
	addi gr4,#1,gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L42
.L41:
	ret
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L45
.L46:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L46
.L45:
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	andi gr9,#0xff,gr9
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L50
.L49:
	ldub @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	beq icc0,0,.L50
	addi gr8,#1,gr8
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L49
.L50:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L55:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	beq icc0,0,.L54
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L55
	setlos #0, gr8
.L54:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L60
.L59:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L60
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L59
.L60:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
	ret
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L66
	mov gr8, gr5
.L65:
	addi gr5,#1,gr5
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L65
.L64:
	sub gr5,gr8,gr8
	ret
.L66:
	mov gr8, gr5
	bra .L64
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L73
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L70
	addi gr10,#-1,gr5
	add gr8,gr5,gr5
.L71:
	ldub @(gr9,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L70
	cmp gr8,gr5,icc0
	beq icc0,0,.L70
	ldub @(gr8,gr0),gr6
	cmp gr6,gr4,icc0
	bne icc0,0,.L70
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L71
.L70:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
.L69:
	ret
.L73:
	setlos #0, gr8
	bra .L69
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L75
	addi gr10,#-2,gr4
	andi gr4, #-2, gr4
	addi gr4,#2,gr4
	add gr8,gr4,gr4
.L77:
	ldsbi @(gr8,1),gr5
	stb gr5, @(gr9,gr0)
	ldsb @(gr8,gr0),gr5
	stbi gr5, @(gr9,1)
	addi gr9,#2,gr9
	addi gr8,#2,gr8
	cmp gr8,gr4,icc0
	bne icc0,2,.L77
.L75:
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
	andi gr8,#0xff,gr8
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
	andi gr8,#0xff,gr8
	ret
	.size	isascii, .-isascii
	.p2align 4
	.globl isblank
	.type	isblank, @function
isblank:
	cmpi gr8,#32,icc0
	beq icc0,0,.L83
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L82:
	ret
.L83:
	setlos #1, gr8
	bra .L82
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L86
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L85:
	ret
.L86:
	setlos #1, gr8
	bra .L85
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
	andi gr8,#0xff,gr8
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
	andi gr8,#0xff,gr8
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
	andi gr8,#0xff,gr8
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
	andi gr8,#0xff,gr8
	ret
	.size	isprint, .-isprint
	.p2align 4
	.globl isspace
	.type	isspace, @function
isspace:
	cmpi gr8,#32,icc0
	beq icc0,0,.L93
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L92:
	ret
.L93:
	setlos #1, gr8
	bra .L92
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
	andi gr8,#0xff,gr8
	ret
	.size	isupper, .-isupper
	.p2align 4
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L97
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,2,.L98
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L99
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#2,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L96
.L97:
	setlos #1, gr8
.L96:
	ret
.L98:
	setlos #1, gr8
	bra .L96
.L99:
	setlos #1, gr8
	bra .L96
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
	andi gr8,#0xff,gr8
	ret
	.size	iswdigit, .-iswdigit
	.p2align 4
	.globl iswprint
	.type	iswprint, @function
iswprint:
	cmpi gr8,#254,icc0
	bls icc0,0,.L108
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L104
	setlos #-8234, gr4
	add gr8,gr4,gr4
	sethi #hi(#47061), gr5
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L105
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L106
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr8,gr4,gr4
	sethi #hi(#1048579), gr5
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L107
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L103
.L108:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L103:
	ret
.L104:
	setlos #1, gr8
	bra .L103
.L105:
	setlos #1, gr8
	bra .L103
.L106:
	setlos #1, gr8
	bra .L103
.L107:
	setlos #0, gr8
	bra .L103
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L111
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L110:
	ret
.L111:
	setlos #1, gr8
	bra .L110
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
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L116
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L117
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L120
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
.L114:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L116:
	mov gr18, gr8
	mov gr19, gr9
	bra .L114
.L117:
	mov gr22, gr8
	mov gr23, gr9
	bra .L114
.L120:
	setlos #0, gr8
	setlos #0, gr9
	bra .L114
	.size	fdim, .-fdim
	.p2align 4
	.globl fdimf
	.type	fdimf, @function
fdimf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr19
	mov gr8, gr18
	mov gr9, gr20
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L124
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L125
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L128
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __subf
.L122:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L124:
	mov gr18, gr8
	bra .L122
.L125:
	mov gr20, gr8
	bra .L122
.L128:
	setlos #0, gr8
	bra .L122
	.size	fdimf, .-fdimf
	.p2align 4
	.globl fmax
	.type	fmax, @function
fmax:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L135
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L136
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L131
	cmpi gr18, #0, icc0
	bp icc0,2,.L137
	mov gr20, gr8
	mov gr21, gr9
	bra .L130
.L131:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr20, gr8, cc4, 1
	cmov gr21, gr9, cc4, 1
	cmov gr18, gr8, cc4, 0
	cmov gr19, gr9, cc4, 0
.L130:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L135:
	mov gr20, gr8
	mov gr21, gr9
	bra .L130
.L136:
	mov gr18, gr8
	mov gr19, gr9
	bra .L130
.L137:
	mov gr18, gr8
	mov gr19, gr9
	bra .L130
	.size	fmax, .-fmax
	.p2align 4
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L142
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L143
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L140
	cmpi gr18, #0, icc0
	bp icc0,2,.L144
	mov gr19, gr8
	bra .L139
.L140:
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr19, gr8, cc4, 1
	cmov gr18, gr8, cc4, 0
.L139:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L142:
	mov gr19, gr8
	bra .L139
.L143:
	mov gr18, gr8
	bra .L139
.L144:
	mov gr18, gr8
	bra .L139
	.size	fmaxf, .-fmaxf
	.p2align 4
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L151
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L152
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L147
	cmpi gr18, #0, icc0
	bp icc0,2,.L153
	mov gr20, gr8
	mov gr21, gr9
	bra .L146
.L147:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr20, gr8, cc4, 1
	cmov gr21, gr9, cc4, 1
	cmov gr18, gr8, cc4, 0
	cmov gr19, gr9, cc4, 0
.L146:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L151:
	mov gr20, gr8
	mov gr21, gr9
	bra .L146
.L152:
	mov gr18, gr8
	mov gr19, gr9
	bra .L146
.L153:
	mov gr18, gr8
	mov gr19, gr9
	bra .L146
	.size	fmaxl, .-fmaxl
	.p2align 4
	.globl fmin
	.type	fmin, @function
fmin:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L160
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L161
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L156
	cmpi gr20, #0, icc0
	bp icc0,2,.L162
	mov gr20, gr8
	mov gr21, gr9
	bra .L155
.L156:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr20, gr8, cc4, 1
	cmov gr21, gr9, cc4, 1
	cmov gr18, gr8, cc4, 0
	cmov gr19, gr9, cc4, 0
.L155:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L160:
	mov gr18, gr8
	mov gr19, gr9
	bra .L155
.L161:
	mov gr20, gr8
	mov gr21, gr9
	bra .L155
.L162:
	mov gr18, gr8
	mov gr19, gr9
	bra .L155
	.size	fmin, .-fmin
	.p2align 4
	.globl fminf
	.type	fminf, @function
fminf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr20
	mov gr8, gr19
	mov gr9, gr18
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L167
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L168
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L165
	cmpi gr19, #0, icc0
	bp icc0,2,.L169
	mov gr19, gr8
	bra .L164
.L165:
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr19, gr8, cc4, 1
	cmov gr18, gr8, cc4, 0
.L164:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L167:
	mov gr18, gr8
	bra .L164
.L168:
	mov gr19, gr8
	bra .L164
.L169:
	mov gr18, gr8
	bra .L164
	.size	fminf, .-fminf
	.p2align 4
	.globl fminl
	.type	fminl, @function
fminl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L176
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L177
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L172
	cmpi gr20, #0, icc0
	bp icc0,2,.L178
	mov gr20, gr8
	mov gr21, gr9
	bra .L171
.L172:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr20, gr8, cc4, 1
	cmov gr21, gr9, cc4, 1
	cmov gr18, gr8, cc4, 0
	cmov gr19, gr9, cc4, 0
.L171:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L176:
	mov gr18, gr8
	mov gr19, gr9
	bra .L171
.L177:
	mov gr20, gr8
	mov gr21, gr9
	bra .L171
.L178:
	mov gr18, gr8
	mov gr19, gr9
	bra .L171
	.size	fminl, .-fminl
	.section	.rodata
	.p2align 2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.p2align 4
	.globl l64a
	.type	l64a, @function
l64a:
	cmpi gr8, #0, icc0
	beq icc0,0,.L182
	sethi #gotoffhi(s.0), gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	ldi @(gr15,#got12(_gp)), gr5
	sethi #gprelhi(digits), gr6
	setlo #gprello(digits), gr6
	add gr6,gr5,gr6
.L181:
	andi gr8, #63, gr5
	ldsb @(gr6,gr5),gr5
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	srlicc gr8, #6, gr8, icc0
	bne icc0,2,.L181
.L180:
	stb gr0, @(gr4,gr0)
	sethi #gotoffhi(s.0), gr8
	setlo #gotofflo(s.0), gr8
	add gr8,gr15,gr8
	ret
.L182:
	sethi #gotoffhi(s.0), gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	bra .L180
	.size	l64a, .-l64a
	.section	.sbss,"aw",@nobits
	.p2align 3
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.text
	.p2align 4
	.globl srand
	.type	srand, @function
srand:
	addi gr8,#-1,gr8
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr15,gr5
	st gr0, @(gr4,gr15)
	sti gr8, @(gr5,4)
	ret
	.size	srand, .-srand
	.p2align 4
	.globl rand
	.type	rand, @function
rand:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr18
	sethi #gotoffhi(seed), gr19
	setlo #gotofflo(seed), gr19
	add gr19,gr15,gr20
	ld @(gr20,gr0), gr8
	ldi @(gr20,4), gr9
	sethi #hi(#1481765933), gr10
	setlo #lo(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	call __mulll
	addicc gr9,#1,gr9,icc0
	addxi gr8,#0,gr8,icc0
	st gr8, @(gr20,gr0)
	sti gr9, @(gr20,4)
	ld @(gr19,gr18), gr8
	srli gr8, #1, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	rand, .-rand
	.p2align 4
	.globl insque
	.type	insque, @function
insque:
	cmpi gr9, #0, icc0
	ckeq icc0, cc5
	setlos #4, gr6
	cst gr0, @(gr8,gr6), cc5, 1
	cst gr0, @(gr8,gr0), cc5, 1
	cld @(gr9,gr0), gr4, cc5, 0
	cst gr4, @(gr8,gr0), cc5, 0
	cst gr9, @(gr8,gr6), cc5, 0
	cst gr8, @(gr9,gr0), cc5, 0
	cld @(gr8,gr0), gr4, cc5, 0
	ccmp gr4, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
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
	cmpi gr4, #0, icc0
	ckne icc0, cc4
	setlos #4, gr6
	cld @(gr8,gr6), gr5, cc4, 1
	cst gr5, @(gr4,gr6), cc4, 1
	ldi @(gr8,4), gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc4
	cld @(gr8,gr0), gr5, cc4, 1
	cst gr5, @(gr4,gr0), cc4, 1
	ret
	.size	remque, .-remque
	.p2align 4
	.globl lsearch
	.type	lsearch, @function
lsearch:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	sti gr26, @(sp,32)
	mov gr15, gr24
	mov gr8, gr23
	mov gr9, gr22
	mov gr10, gr26
	mov gr11, gr20
	mov gr12, gr25
	ld @(gr10,gr0), gr21
	cmpi gr21, #0, icc0
	beq icc0,0,.L193
	mov gr9, gr19
	setlos #0, gr18
.L196:
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr25,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L198
	addi gr18,#1,gr18
	add gr19,gr20,gr19
	cmp gr18,gr21,icc0
	bne icc0,2,.L196
.L193:
	addi gr21,#1,gr4
	st gr4, @(gr26,gr0)
	umul gr20,gr21,gr4
	add gr22,gr5,gr8
	mov gr20, gr10
	mov gr23, gr9
	mov gr24, gr15
	call memcpy
.L195:
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
.L198:
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L195
	.size	lsearch, .-lsearch
	.p2align 4
	.globl lfind
	.type	lfind, @function
lfind:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	mov gr8, gr21
	mov gr9, gr23
	mov gr11, gr20
	mov gr12, gr22
	ld @(gr10,gr0), gr24
	cmpi gr24, #0, icc0
	beq icc0,0,.L203
	mov gr9, gr19
	setlos #0, gr18
.L202:
	mov gr19, gr9
	mov gr21, gr8
	ldd @(gr22,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L205
	addi gr18,#1,gr18
	add gr19,gr20,gr19
	cmp gr18,gr24,icc0
	bne icc0,2,.L202
	setlos #0, gr8
	bra .L200
.L205:
	umul gr18,gr20,gr18
	add gr23,gr19,gr8
.L200:
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
.L203:
	setlos #0, gr8
	bra .L200
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
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr19
	mov gr8, gr18
	bra .L208
.L209:
	addi gr18,#1,gr18
.L208:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L209
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L215
	cmpi gr4,#45,icc0
	bne icc0,2,.L216
	setlos #1, gr5
.L210:
	addi gr18,#1,gr18
.L211:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bhi icc0,0,.L217
	setlos #0, gr8
.L213:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L213
.L212:
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L215:
	setlos #0, gr5
	bra .L210
.L216:
	setlos #0, gr5
	bra .L211
.L217:
	setlos #0, gr8
	bra .L212
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr19
	mov gr8, gr18
	bra .L221
.L222:
	addi gr18,#1,gr18
.L221:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L222
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L228
	cmpi gr4,#45,icc0
	bne icc0,2,.L229
	setlos #1, gr5
.L223:
	addi gr18,#1,gr18
.L224:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bhi icc0,0,.L230
	setlos #0, gr8
.L226:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L226
.L225:
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L228:
	setlos #0, gr5
	bra .L223
.L229:
	setlos #0, gr5
	bra .L224
.L230:
	setlos #0, gr8
	bra .L225
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr23
	mov gr8, gr22
	bra .L234
.L235:
	addi gr22,#1,gr22
.L234:
	ldsb @(gr22,gr0),gr8
	mov gr23, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L235
	ldsb @(gr22,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L241
	cmpi gr4,#45,icc0
	bne icc0,2,.L242
	setlos #1, gr7
.L236:
	addi gr22,#1,gr22
.L237:
	ldsb @(gr22,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bhi icc0,0,.L243
	setlos #0, gr8
	setlos #0, gr9
.L239:
	srli gr9, #30, gr4
	slli gr8,#2,gr18
	or gr4, gr18, gr18
	slli gr9,#2,gr19
	addcc gr9,gr19,gr9,icc0
	addx gr8,gr18,gr8,icc0
	srli gr9, #31, gr6
	slli gr8,#1,gr5
	slli gr9,#1,gr4
	or gr6, gr5, gr8
	mov gr4, gr9
	addi gr22,#1,gr22
	ldsbi @(gr22,-1),gr4
	addi gr4,#-48,gr4
	srai gr4, #31, gr20
	subcc gr9,gr4,gr9,icc0
	subx gr8,gr20,gr8,icc0
	ldsb @(gr22,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L239
.L238:
	cmpi gr7, #0, icc0
	bne icc0,2,.L240
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L240:
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
.L241:
	setlos #0, gr7
	bra .L236
.L242:
	setlos #0, gr7
	bra .L237
.L243:
	setlos #0, gr8
	setlos #0, gr9
	bra .L238
	.size	atoll, .-atoll
	.p2align 4
	.globl bsearch
	.type	bsearch, @function
bsearch:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr8, gr23
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr20
	mov gr12, gr22
	cmpi gr10, #0, icc0
	bne icc0,2,.L250
	setlos #0, gr8
	bra .L247
.L255:
	srli gr18, #1, gr18
.L249:
	cmpi gr18, #0, icc0
	beq icc0,0,.L254
.L250:
	srli gr18, #1, gr4
	umul gr4,gr20,gr4
	add gr21,gr5,gr19
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr22,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L255
	cmpi gr8,#0,icc0
	ble icc0,0,.L252
	add gr19,gr20,gr21
	srli gr18, #1, gr4
	addi gr18,#-1,gr18
	sub gr18,gr4,gr18
	bra .L249
.L254:
	setlos #0, gr8
.L247:
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
.L252:
	mov gr19, gr8
	bra .L247
	.size	bsearch, .-bsearch
	.p2align 4
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	mov gr8, gr22
	mov gr9, gr20
	mov gr11, gr21
	mov gr12, gr23
	mov gr13, gr24
	mov gr10, gr18
	cmpi gr10, #0, icc0
	beq icc0,0,.L260
.L259:
	srai gr18, #1, gr4
	umul gr4,gr21,gr4
	add gr20,gr5,gr19
	mov gr24, gr10
	mov gr19, gr9
	mov gr22, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L261
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	cadd gr19, gr21, gr20, cc4, 1
	cadd gr18, gr4, gr18, cc4, 1
	sraicc gr18, #1, gr18, icc0
	bne icc0,2,.L259
	setlos #0, gr8
	bra .L257
.L260:
	setlos #0, gr8
	bra .L257
.L261:
	mov gr19, gr8
.L257:
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
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl div
	.type	div, @function
div:
	addi sp,#-16,sp
	sti gr3, @(sp,4)
	movsg lr, gr5
	sti gr5, @(sp,8)
	sdiv gr8,gr9,gr6
	smul gr6,gr9,gr4
	sub gr8,gr5,gr8
	st gr6, @(gr3,gr0)
	sti gr8, @(gr3,4)
	mov gr3, gr8
	ldi @(sp,8), gr5
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	div, .-div
	.p2align 4
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L267
.L265:
	ret
.L267:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L265
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	mov gr15, gr18
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr24
	mov gr11, gr25
	call __divll
	mov gr8, gr22
	mov gr9, gr23
	mov gr24, gr10
	mov gr25, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __modll
	st gr22, @(gr19,gr0)
	sti gr23, @(gr19,4)
	sti gr8, @(gr19,8)
	sti gr9, @(gr19,12)
	mov gr19, gr8
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
	sti gr3, @(sp,4)
	movsg lr, gr5
	sti gr5, @(sp,8)
	sdiv gr8,gr9,gr6
	smul gr6,gr9,gr4
	sub gr8,gr5,gr8
	st gr6, @(gr3,gr0)
	sti gr8, @(gr3,4)
	mov gr3, gr8
	ldi @(sp,8), gr5
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	ldiv, .-ldiv
	.p2align 4
	.globl llabs
	.type	llabs, @function
llabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L274
.L272:
	ret
.L274:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L272
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	mov gr15, gr18
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr24
	mov gr11, gr25
	call __divll
	mov gr8, gr22
	mov gr9, gr23
	mov gr24, gr10
	mov gr25, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __modll
	st gr22, @(gr19,gr0)
	sti gr23, @(gr19,4)
	sti gr8, @(gr19,8)
	sti gr9, @(gr19,12)
	mov gr19, gr8
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
	.size	lldiv, .-lldiv
	.p2align 4
	.globl wcschr
	.type	wcschr, @function
wcschr:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L278
.L277:
	ld @(gr8,gr0), gr4
	cmp gr9,gr4,icc0
	beq icc0,0,.L278
	addi gr8,#4,gr8
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L277
.L278:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L285
.L284:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L285
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L285
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L284
.L285:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L288
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L287:
	ret
.L288:
	setlos #-1, gr8
	bra .L287
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr4
	addi gr8,#-4,gr6
.L291:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	ld @(gr6,gr4), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L291
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L296
	mov gr8, gr5
.L295:
	addi gr5,#4,gr5
	ld @(gr5,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L295
.L294:
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
.L296:
	mov gr8, gr5
	bra .L294
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L300
.L299:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L300
	cmpi gr5, #0, icc0
	beq icc0,0,.L300
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L300
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L299
.L300:
	cmpi gr10, #0, icc0
	beq icc0,2,.L303
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L304
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L302
.L303:
	setlos #0, gr8
.L302:
	ret
.L304:
	setlos #-1, gr8
	bra .L302
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	beq icc0,0,.L308
.L307:
	ld @(gr8,gr0), gr4
	cmp gr9,gr4,icc0
	beq icc0,0,.L308
	addi gr8,#4,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L307
.L308:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L315
.L314:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L315
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L314
.L315:
	cmpi gr10, #0, icc0
	beq icc0,2,.L318
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L319
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L317
.L318:
	setlos #0, gr8
.L317:
	ret
.L319:
	setlos #-1, gr8
	bra .L317
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L322
	mov gr4, gr10
	setlos #0, gr4
.L323:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr10,#-1,gr10
	addi gr4,#4,gr4
	cmpi gr10,#-1,icc0
	bne icc0,2,.L323
.L322:
	ret
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L326
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	bc icc0,2,.L327
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L326
	mov gr4, gr10
	setlos #0, gr4
.L328:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr10,#-1,gr10
	addi gr4,#4,gr4
	cmpi gr10,#-1,icc0
	bne icc0,2,.L328
	bra .L326
.L327:
	cmpi gr10, #0, icc0
	beq icc0,0,.L326
	addi gr10,#-1,gr4
	slli gr4,#2,gr4
.L329:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
	cmpi gr4,#-4,icc0
	bne icc0,2,.L329
.L326:
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L334
	mov gr4, gr10
	mov gr8, gr4
.L335:
	addi gr4,#4,gr4
	sti gr9, @(gr4,-4)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L335
.L334:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L338
	cmpi gr10, #0, icc0
	beq icc0,0,.L337
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
.L340:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L340
.L337:
	ret
.L338:
	cmp gr8,gr9,icc0
	beq icc0,0,.L337
	cmpi gr10, #0, icc0
	beq icc0,0,.L337
	setlos #0, gr4
.L341:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L341
	bra .L337
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	addi gr10,#-32,gr5
	sll gr9,gr5,gr11
	srli gr9, #1, gr7
	setlos #31, gr6
	sub gr6,gr10,gr4
	srl gr7, gr4, gr7
	sll gr8,gr10,gr4
	or gr7, gr4, gr4
	sll gr9,gr10,gr7
	cmpi gr5, #0, icc0
	ckp icc0, cc4
	cmov gr11, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr7, cc4, 1
	sub gr0,gr10,gr10
	andi gr10, #63, gr10
	addi gr10,#-32,gr5
	srl gr8, gr5, gr12
	slli gr8,#1,gr11
	sub gr6,gr10,gr6
	sll gr11,gr6,gr6
	srl gr9, gr10, gr9
	or gr6, gr9, gr9
	srl gr8, gr10, gr8
	cmpi gr5, #0, icc0
	ckp icc0, cc4
	cmov gr12, gr9, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr8, cc4, 1
	or gr8, gr4, gr8
	or gr9, gr7, gr9
	ret
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	addi gr10,#-32,gr5
	srl gr8, gr5, gr11
	slli gr8,#1,gr7
	setlos #31, gr6
	sub gr6,gr10,gr4
	sll gr7,gr4,gr7
	srl gr9, gr10, gr4
	or gr7, gr4, gr4
	srl gr8, gr10, gr7
	cmpi gr5, #0, icc0
	ckp icc0, cc4
	cmov gr11, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr7, cc4, 1
	sub gr0,gr10,gr10
	andi gr10, #63, gr10
	addi gr10,#-32,gr5
	sll gr9,gr5,gr12
	srli gr9, #1, gr11
	sub gr6,gr10,gr6
	srl gr11, gr6, gr6
	sll gr8,gr10,gr8
	or gr6, gr8, gr8
	sll gr9,gr10,gr9
	cmpi gr5, #0, icc0
	ckp icc0, cc4
	cmov gr12, gr8, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr9, cc4, 1
	or gr8, gr7, gr8
	or gr9, gr4, gr9
	ret
	.size	rotr64, .-rotr64
	.p2align 4
	.globl rotl32
	.type	rotl32, @function
rotl32:
	sll gr8,gr9,gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	srl gr8, gr9, gr8
	or gr8, gr4, gr8
	ret
	.size	rotl32, .-rotl32
	.p2align 4
	.globl rotr32
	.type	rotr32, @function
rotr32:
	srl gr8, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	sll gr8,gr9,gr8
	or gr8, gr4, gr8
	ret
	.size	rotr32, .-rotr32
	.p2align 4
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	sll gr8,gr9,gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	srl gr8, gr9, gr8
	or gr8, gr4, gr8
	ret
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	srl gr8, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	sll gr8,gr9,gr8
	or gr8, gr4, gr8
	ret
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl rotl16
	.type	rotl16, @function
rotl16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	sll gr4,gr9,gr6
	setlos #16, gr5
	sub gr5,gr9,gr5
	srl gr4, gr5, gr8
	or gr8, gr6, gr8
	sethi #hi(#0),gr8
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srl gr4, gr9, gr6
	setlos #16, gr5
	sub gr5,gr9,gr5
	sll gr4,gr5,gr8
	or gr8, gr6, gr8
	sethi #hi(#0),gr8
	ret
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	andi gr8,#0xff,gr8
	sll gr8,gr9,gr5
	setlos #8, gr4
	sub gr4,gr9,gr4
	srl gr8, gr4, gr8
	or gr8, gr5, gr8
	andi gr8,#0xff,gr8
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	andi gr8,#0xff,gr8
	srl gr8, gr9, gr5
	setlos #8, gr4
	sub gr4,gr9,gr4
	sll gr8,gr4,gr8
	or gr8, gr5, gr8
	andi gr8,#0xff,gr8
	ret
	.size	rotr8, .-rotr8
	.p2align 4
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srli gr4, #8, gr8
	andi gr4, #255, gr4
	slli gr4,#8,gr4
	or gr8, gr4, gr8
	ret
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	srli gr8, #24, gr5
	sethi #hi(#16711680), gr4
	setlo #lo(#16711680), gr4
	and gr8, gr4, gr4
	srli gr4, #8, gr4
	or gr4, gr5, gr4
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	and gr8, gr5, gr5
	slli gr5,#8,gr5
	or gr4, gr5, gr4
	slli gr8,#24,gr8
	or gr4, gr8, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	mov gr9, gr5
	srli gr8, #24, gr6
	sethi #hi(#16711680), gr9
	setlo #lo(#16711680), gr9
	and gr8, gr9, gr4
	srli gr4, #8, gr4
	or gr4, gr6, gr4
	sethi #hi(#65280), gr7
	setlo #lo(#65280), gr7
	and gr8, gr7, gr6
	slli gr6,#8,gr6
	or gr4, gr6, gr4
	slli gr8,#24,gr8
	srli gr5, #24, gr6
	and gr5, gr9, gr9
	srli gr9, #8, gr9
	or gr6, gr9, gr6
	or gr4, gr8, gr9
	and gr5, gr7, gr7
	slli gr7,#8,gr7
	or gr6, gr7, gr8
	slli gr5,#24,gr5
	or gr8, gr5, gr8
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
.L360:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	bne icc0,0,.L362
	addi gr4,#1,gr4
	cmpi gr4,#32,icc0
	bne icc0,2,.L360
	setlos #0, gr8
	bra .L359
.L362:
	addi gr4,#1,gr8
.L359:
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L366
	andicc gr8, #1, gr0, icc0
	bne icc0,0,.L367
	setlos #1, gr4
.L365:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L365
	mov gr4, gr8
.L364:
	ret
.L366:
	setlos #0, gr8
	bra .L364
.L367:
	setlos #1, gr8
	bra .L364
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr18
	mov gr8, gr19
	sethi #hi(#4286578687), gr9
	setlo #lo(#4286578687), gr9
	call __ltsf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L372
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L370:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L372:
	setlos #1, gr8
	bra .L370
	.size	gl_isinff, .-gl_isinff
	.p2align 4
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	mov gr15, gr18
	mov gr8, gr20
	mov gr9, gr21
	sethi #hi(#4293918719), gr10
	setlo #lo(#4293918719), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L376
	sethi #hi(#2146435071), gr10
	setlo #lo(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L374:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L376:
	setlos #1, gr8
	bra .L374
	.size	gl_isinfd, .-gl_isinfd
	.p2align 4
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	mov gr15, gr18
	mov gr8, gr20
	mov gr9, gr21
	sethi #hi(#4293918719), gr10
	setlo #lo(#4293918719), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L380
	sethi #hi(#2146435071), gr10
	setlo #lo(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L378:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L380:
	setlos #1, gr8
	bra .L378
	.size	gl_isinfl, .-gl_isinfl
	.p2align 4
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr8, gr18
	mov gr9, gr8
	call __itod
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
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr15, gr21
	mov gr8, gr20
	mov gr9, gr18
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L383
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __addf
	mov gr8, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L383
	cmpi gr18, #0, icc0
	bn icc0,0,.L390
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
	bra .L387
.L390:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L387
.L386:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L383
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L387:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L386
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L386
.L383:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl ldexp
	.type	ldexp, @function
ldexp:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr21
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr20
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L392
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L392
	cmpi gr20, #0, icc0
	bn icc0,0,.L399
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L396
.L399:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L396
.L395:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L392
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L396:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L395
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L395
.L392:
	mov gr22, gr8
	mov gr23, gr9
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
	.size	ldexp, .-ldexp
	.p2align 4
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr21
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr20
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L401
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L401
	cmpi gr20, #0, icc0
	bn icc0,0,.L408
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L405
.L408:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L405
.L404:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L401
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L405:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L404
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L404
.L401:
	mov gr22, gr8
	mov gr23, gr9
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
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	cmpi gr10, #0, icc0
	beq icc0,0,.L410
	setlos #0, gr4
.L411:
	ldsb @(gr9,gr4),gr6
	ldsb @(gr8,gr4),gr5
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L411
.L410:
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr8, gr20
	mov gr9, gr19
	mov gr10, gr18
	call strlen
	add gr20,gr8,gr8
	cmpi gr18, #0, icc0
	beq icc0,0,.L415
.L414:
	ldsb @(gr19,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L415
	addi gr19,#1,gr19
	addi gr8,#1,gr8
	addicc gr18, #-1, gr18, icc0
	bne icc0,2,.L414
.L415:
	cmpi gr18, #0, icc0
	ckeq icc0, cc4
	cstb gr0, @(gr8,gr0), cc4, 1
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	mov gr8, gr5
	setlos #0, gr8
	cmpi gr9, #0, icc0
	beq icc0,0,.L421
	setlos #0, gr8
.L420:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L422
.L421:
	ret
.L422:
	addi gr8,#1,gr8
	cmp gr8,gr9,icc0
	bne icc0,2,.L420
	bra .L421
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L432
.L425:
	mov gr9, gr5
.L428:
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L433
	addi gr5,#1,gr5
	ldsbi @(gr5,-1),gr6
	ldsb @(gr8,gr0),gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L428
.L426:
	ret
.L432:
	setlos #0, gr8
	bra .L426
.L433:
	addi gr8,#1,gr8
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L425
	setlos #0, gr8
	bra .L426
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L436:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	ckeq icc0, cc4
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L436
	mov gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr19
	mov gr8, gr18
	mov gr9, gr20
	mov gr9, gr8
	call strlen
	mov gr8, gr21
	cmpi gr8, #0, icc0
	beq icc0,0,.L443
	ldsb @(gr20,gr0),gr22
.L441:
	mov gr22, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strchr
	mov gr8, gr18
	cmpi gr8, #0, icc0
	beq icc0,0,.L445
	mov gr21, gr10
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strncmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L444
	addi gr18,#1,gr18
	bra .L441
.L445:
	setlos #0, gr8
	bra .L440
.L443:
	mov gr18, gr8
.L440:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L444:
	mov gr18, gr8
	bra .L440
	.size	strstr, .-strstr
	.p2align 4
	.globl copysign
	.type	copysign, @function
copysign:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	setlos #0, gr10
	setlos #0, gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L459
.L447:
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L457
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L449
	mov gr18, gr8
	mov gr19, gr9
.L450:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L459:
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L447
.L449:
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr18, gr4, gr8
	mov gr19, gr9
	bra .L450
.L457:
	mov gr18, gr8
	mov gr19, gr9
	bra .L450
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr21
	mov gr8, gr18
	sub gr9,gr11,gr19
	add gr8,gr19,gr19
	cmpi gr11, #0, icc0
	beq icc0,0,.L461
	cmp gr9,gr11,icc0
	ckc icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L465
	cmp gr8,gr19,icc0
	bhi icc0,0,.L466
	ldsb @(gr10,gr0),gr22
	addi gr10,#1,gr23
	addi gr11,#-1,gr20
	bra .L463
.L462:
	addi gr18,#1,gr18
	cmp gr19,gr18,icc0
	bc icc0,0,.L469
.L463:
	ldsb @(gr18,gr0),gr4
	cmp gr4,gr22,icc0
	bne icc0,2,.L462
	addi gr18,#1,gr8
	mov gr20, gr10
	mov gr23, gr9
	mov gr21, gr15
	call memcmp
	cmpi gr8, #0, icc0
	bne icc0,2,.L462
	mov gr18, gr8
	bra .L461
.L469:
	setlos #0, gr8
.L461:
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
.L465:
	setlos #0, gr8
	bra .L461
.L466:
	setlos #0, gr8
	bra .L461
	.size	memmem, .-memmem
	.p2align 4
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr10, gr18
	call memcpy
	add gr8,gr18,gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl frexp
	.type	frexp, @function
frexp:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	sti gr26, @(sp,32)
	sti gr27, @(sp,36)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr27
	setlos #0, gr10
	setlos #0, gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L495
	setlos #0, gr26
.L472:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L492
	setlos #0, gr21
	sethi #hi(#1071644672), gr24
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
.L476:
	addi gr21,#1,gr21
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L476
.L477:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L481
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L481:
	mov gr18, gr8
	mov gr19, gr9
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
.L495:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L472
.L492:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L493
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L494
	setlos #0, gr21
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
.L480:
	addi gr21,#-1,gr21
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __addd
	mov gr8, gr18
	mov gr9, gr19
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L480
	bra .L477
.L493:
	setlos #0, gr21
	bra .L477
.L494:
	setlos #0, gr21
	bra .L477
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr8, gr5
	mov gr9, gr14
	orcc gr9, gr8, gr0, icc0
	beq icc0,0,.L500
	setlos #0, gr8
	setlos #0, gr9
.L499:
	setlos #0, gr6
	andi gr14, #1, gr7
	subcc gr0,gr7,gr19,icc0
	subx gr0,gr6,gr18,icc0
	and gr10, gr18, gr12
	and gr11, gr19, gr13
	addcc gr9,gr13,gr9,icc0
	addx gr8,gr12,gr8,icc0
	srli gr11, #31, gr4
	slli gr10,#1,gr10
	or gr4, gr10, gr10
	slli gr11,#1,gr11
	slli gr5,#31,gr15
	srli gr14, #1, gr4
	or gr15, gr4, gr4
	srli gr5, #1, gr5
	mov gr4, gr14
	orcc gr5, gr4, gr0, icc0
	bne icc0,2,.L499
.L497:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L500:
	setlos #0, gr8
	setlos #0, gr9
	bra .L497
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L504
	setlos #32, gr5
	setlos #1, gr4
.L503:
	cmpi gr9, #0, icc0
	bn icc0,0,.L504
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L504
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L503
.L504:
	setlos #0, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L506
	setlos #0, gr5
.L505:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L505
.L506:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	srai gr8, #7, gr4
	xorcc gr4, gr8, gr4, icc0
	beq icc0,0,.L517
	slli gr4,#8,gr8
	call __clzsi2
	addi gr8,#-1,gr8
.L516:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L517:
	setlos #7, gr8
	bra .L516
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr9, gr4
	srai gr8, #31, gr9
	xor gr9, gr8, gr8
	xor gr9, gr4, gr9
	orcc gr8, gr9, gr0, icc0
	beq icc0,0,.L521
	call __clzdi2
	addi gr8,#-1,gr8
.L519:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L521:
	setlos #63, gr8
	bra .L519
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov gr8, gr4
	cmpi gr8, #0, icc0
	beq icc0,0,.L525
	setlos #0, gr8
.L524:
	andi gr4, #1, gr6
	umul gr6,gr9,gr6
	add gr8,gr7,gr8
	slli gr9,#1,gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L524
.L523:
	ret
.L525:
	setlos #0, gr8
	bra .L523
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	srli gr10, #3, gr7
	andi gr10, #-8, gr4
	cmp gr8,gr9,icc0
	bnc icc0,2,.L528
.L531:
	cmpi gr7, #0, icc0
	beq icc0,0,.L530
	mov gr9, gr5
	mov gr8, gr6
	slli gr7,#3,gr7
	add gr7,gr9,gr7
.L534:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	addi gr5,#8,gr5
	addi gr6,#8,gr6
	cmp gr5,gr7,icc0
	bne icc0,2,.L534
.L530:
	cmp gr10,gr4,icc0
	bls icc0,0,.L527
.L535:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L535
.L527:
	ret
.L528:
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bc icc0,2,.L531
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L527
	mov gr4, gr10
.L532:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L532
	bra .L527
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	srli gr10, #1, gr6
	cmp gr8,gr9,icc0
	bnc icc0,2,.L541
.L544:
	cmpi gr6, #0, icc0
	beq icc0,0,.L543
	slli gr6,#1,gr6
	setlos #0, gr4
.L547:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
	cmp gr4,gr6,icc0
	bne icc0,2,.L547
.L543:
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L540
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L540:
	ret
.L541:
	add gr9,gr10,gr4
	cmp gr4,gr8,icc0
	bc icc0,2,.L544
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L540
	mov gr4, gr10
.L545:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L545
	bra .L540
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bnc icc0,2,.L552
.L555:
	cmpi gr7, #0, icc0
	beq icc0,0,.L554
	slli gr7,#2,gr7
	setlos #0, gr5
.L558:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
	cmp gr5,gr7,icc0
	bne icc0,2,.L558
.L554:
	cmp gr10,gr4,icc0
	bls icc0,0,.L551
.L559:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L559
.L551:
	ret
.L552:
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bc icc0,2,.L555
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L551
	mov gr4, gr10
.L556:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L556
	bra .L551
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
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __floatunsidf
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
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __floatunsisf
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
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __floatundidf
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
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __floatundisf
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
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
	setlos #15, gr6
.L572:
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L571
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L572
.L571:
	ret
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
.L576:
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L575
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L576
.L575:
	ret
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr18
	mov gr8, gr19
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	call __gesf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L584
	mov gr19, gr8
	mov gr18, gr15
	call __ftoi
.L581:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L584:
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	mov gr19, gr8
	mov gr18, gr15
	call __subf
	mov gr18, gr15
	call __ftoi
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	add gr8,gr4,gr8
	bra .L581
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov gr8, gr6
	sethi #hi(#0),gr6
	setlos #0, gr8
	setlos #0, gr4
.L586:
	sra gr6, gr4, gr5
	andi gr5, #1, gr5
	add gr5,gr8,gr8
	addi gr4,#1,gr4
	cmpi gr4,#16,icc0
	bne icc0,2,.L586
	andi gr8, #1, gr8
	ret
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov gr8, gr6
	sethi #hi(#0),gr6
	setlos #0, gr8
	setlos #0, gr4
.L589:
	sra gr6, gr4, gr5
	andi gr5, #1, gr5
	add gr5,gr8,gr8
	addi gr4,#1,gr4
	cmpi gr4,#16,icc0
	bne icc0,2,.L589
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov gr8, gr4
	cmpi gr8, #0, icc0
	beq icc0,0,.L594
	setlos #0, gr8
.L593:
	andi gr4, #1, gr6
	umul gr6,gr9,gr6
	add gr8,gr7,gr8
	slli gr9,#1,gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L593
.L592:
	ret
.L594:
	setlos #0, gr8
	bra .L592
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov gr8, gr6
	cmpi gr8, #0, icc0
	beq icc0,0,.L599
	cmpi gr9, #0, icc0
	beq icc0,0,.L600
	setlos #0, gr8
.L598:
	andi gr9, #1, gr4
	umul gr4,gr6,gr4
	add gr8,gr5,gr8
	slli gr6,#1,gr6
	srlicc gr9, #1, gr9, icc0
	bne icc0,2,.L598
.L597:
	ret
.L599:
	setlos #0, gr8
	bra .L597
.L600:
	setlos #0, gr8
	bra .L597
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L604
	setlos #32, gr5
	setlos #1, gr4
.L603:
	cmpi gr9, #0, icc0
	bn icc0,0,.L604
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L604
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L603
.L604:
	setlos #0, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L606
	setlos #0, gr5
.L605:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L605
.L606:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr18
	mov gr8, gr19
	mov gr9, gr20
	call __ltsf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L618
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L616:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L618:
	setlos #-1, gr8
	bra .L616
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.p2align 4
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr15, gr18
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L622
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L620:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L622:
	setlos #-1, gr8
	bra .L620
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	mov gr9, gr11
	srai gr8, #31, gr8
	srai gr9, #31, gr10
	mov gr4, gr9
	call __mulll
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	setlos #0, gr10
	mov gr9, gr11
	setlos #0, gr8
	mov gr4, gr9
	call __mulll
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.p2align 4
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	cmpi gr9, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr9, gr9, cc4, 1
	cmov gr4, gr10, cc4, 1
	cmov gr0, gr10, cc4, 0
	cmpi gr9, #0, icc0
	beq icc0,0,.L631
	setlos #0, gr5
	setlos #0, gr4
.L628:
	andi gr9, #1, gr6
	smul gr6,gr8,gr6
	add gr4,gr7,gr4
	slli gr8,#1,gr8
	sraicc gr9, #1, gr9, icc0
	beq icc0,0,.L627
	addi gr5,#1,gr5
	cmpi gr5,#32,icc0
	bne icc0,2,.L628
.L627:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	csub gr0, gr4, gr8, cc4, 1
	cmov gr4, gr8, cc4, 0
	ret
.L631:
	setlos #0, gr4
	bra .L627
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr18, cc4, 1
	cmov gr0, gr18, cc4, 0
	cmpi gr9, #0, icc0
	ckn icc0, cc4
	setlos #1, gr5
	csub gr0, gr9, gr9, cc4, 1
	cxor gr18, gr5, gr18, cc4, 1
	setlos #0, gr10
	call __udivmodsi4
	cmpi gr18, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr18, cc4, 1
	cmov gr0, gr18, cc4, 0
	cmpi gr9,#0,icc0
	cklt icc0, cc4
	csub gr0, gr9, gr9, cc4, 1
	setlos #1, gr10
	call __udivmodsi4
	cmpi gr18, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov gr8, gr5
	sethi #hi(#0),gr5
	sethi #hi(#0),gr9
	setlos #1, gr4
	cmp gr9,gr5,icc0
	bnc icc0,0,.L646
	setlos #16, gr7
	setlos #1, gr4
.L645:
	slli gr9,#16,gr6
	srai gr6, #16, gr6
	cmpi gr6, #0, icc0
	bn icc0,0,.L646
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
	cmp gr5,gr9,icc0
	bls icc0,0,.L646
	addicc gr7, #-1, gr7, icc0
	bne icc0,2,.L645
.L646:
	setlos #0, gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L648
	setlos #0, gr8
	bra .L647
.L650:
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	beq icc0,0,.L648
.L647:
	cmp gr5,gr9,icc0
	bc icc0,2,.L650
	sub gr5,gr9,gr5
	sethi #hi(#0),gr5
	or gr8, gr4, gr8
	bra .L650
.L648:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L659
	setlos #32, gr5
	setlos #1, gr4
.L658:
	cmpi gr9, #0, icc0
	bn icc0,0,.L659
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L659
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L658
.L659:
	setlos #0, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L661
	setlos #0, gr5
.L660:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L660
.L661:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov gr8, gr4
	mov gr9, gr6
	andi gr10, #32, gr5
	cmpi gr5, #0, icc0
	ckne icc0, cc5
	setlos #-32, gr7
	cmov gr0, gr9, cc5, 1
	cadd gr10, gr7, gr10, cc5, 1
	csll gr6, gr10, gr8, cc5, 1
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	setlos #32, gr5
	andncr cc5, cc4, cc4
	csll gr6, gr10, gr9, cc4, 1
	csll gr4, gr10, gr8, cc4, 1
	cmov gr5, gr4, cc4, 1
	csub gr4, gr10, gr4, cc4, 1
	csrl gr6, gr4, gr6, cc4, 1
	cor gr6, gr8, gr8, cc4, 1
	cmov gr4, gr8, cc4, 0
	cmov gr6, gr9, cc4, 0
	ret
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov gr8, gr5
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc5
	setlos #31, gr7
	setlos #-32, gr11
	csra gr8, gr7, gr8, cc5, 1
	cadd gr10, gr11, gr10, cc5, 1
	csra gr5, gr10, gr9, cc5, 1
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	setlos #32, gr6
	andncr cc5, cc4, cc4
	csra gr5, gr10, gr8, cc4, 1
	cmov gr6, gr4, cc4, 1
	csub gr4, gr10, gr4, cc4, 1
	csll gr5, gr4, gr5, cc4, 1
	csrl gr9, gr10, gr9, cc4, 1
	cor gr5, gr9, gr9, cc4, 1
	cmov gr5, gr8, cc4, 0
	ret
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli gr8, #24, gr4
	srli gr8, #8, gr11
	sethi #hi(#65280), gr13
	setlo #lo(#65280), gr13
	and gr11, gr13, gr11
	slli gr8,#8,gr6
	srli gr9, #24, gr5
	or gr6, gr5, gr5
	sethi #hi(#16711680), gr12
	setlo #lo(#16711680), gr12
	and gr5, gr12, gr7
	slli gr8,#24,gr8
	srli gr9, #8, gr5
	or gr8, gr5, gr5
	sethi #hi(#-16777216), gr6
	setlo #lo(#-16777216), gr6
	and gr5, gr6, gr6
	slli gr9,#8,gr10
	srli gr9, #24, gr14
	srli gr9, #8, gr5
	or gr5, gr8, gr5
	slli gr9,#24,gr8
	and gr5, gr13, gr5
	and gr10, gr12, gr10
	or gr4, gr11, gr9
	or gr9, gr7, gr9
	or gr9, gr6, gr9
	or gr8, gr14, gr8
	or gr8, gr5, gr8
	or gr8, gr10, gr8
	ret
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli gr8, #24, gr6
	srli gr8, #8, gr5
	sethi #hi(#65280), gr4
	setlo #lo(#65280), gr4
	and gr5, gr4, gr5
	slli gr8,#8,gr4
	sethi #hi(#16711680), gr7
	setlo #lo(#16711680), gr7
	and gr4, gr7, gr4
	slli gr8,#24,gr8
	or gr8, gr6, gr8
	or gr8, gr5, gr8
	or gr8, gr4, gr8
	ret
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	sethi #hi(#65535), gr4
	setlo #lo(#65535), gr4
	cmp gr8,gr4,icc0
	ckls icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#4,gr5
	setlos #16, gr4
	sub gr4,gr5,gr4
	srl gr8, gr4, gr4
	sethi #hi(#65280), gr6
	setlo #lo(#65280), gr6
	andcc gr4, gr6, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#3,gr6
	setlos #8, gr7
	sub gr7,gr6,gr7
	srl gr4, gr7, gr4
	add gr5,gr6,gr8
	andicc gr4, #240, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	setlos #4, gr6
	sub gr6,gr5,gr6
	srl gr4, gr6, gr4
	add gr8,gr5,gr8
	andicc gr4, #12, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr5
	setlos #2, gr6
	sub gr6,gr5,gr7
	srl gr4, gr7, gr4
	add gr8,gr5,gr8
	andi gr4, #2, gr5
	srli gr5, #1, gr5
	xori gr5, #1, gr5
	sub gr6,gr4,gr6
	umul gr5,gr6,gr6
	add gr8,gr7,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr8,gr10,icc0
	blt icc0,0,.L685
	bgt icc0,0,.L686
	cmp gr9,gr11,icc0
	bc icc0,0,.L687
	bhi icc0,0,.L688
	setlos #1, gr8
	bra .L684
.L685:
	setlos #0, gr8
.L684:
	ret
.L686:
	setlos #2, gr8
	bra .L684
.L687:
	setlos #0, gr8
	bra .L684
.L688:
	setlos #2, gr8
	bra .L684
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __cmpdi2
	addi gr8,#-1,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	sethi #hi(#65535), gr4
	setlo #lo(#65535), gr4
	andcc gr8, gr4, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#4,gr5
	srl gr8, gr5, gr4
	andi gr4, #255, gr6
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#3,gr6
	srl gr4, gr6, gr4
	add gr5,gr6,gr8
	andicc gr4, #15, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	srl gr4, gr5, gr4
	add gr8,gr5,gr8
	andicc gr4, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr5
	srl gr4, gr5, gr4
	andi gr4, #3, gr4
	add gr8,gr5,gr8
	not gr4,gr6
	andi gr6, #1, gr6
	srli gr4, #1, gr4
	setlos #2, gr5
	sub gr5,gr4,gr4
	umul gr4,gr6,gr4
	add gr8,gr5,gr8
	ret
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	mov gr8, gr5
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc5
	setlos #-32, gr7
	cmov gr0, gr8, cc5, 1
	cadd gr10, gr7, gr10, cc5, 1
	csrl gr5, gr10, gr9, cc5, 1
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	setlos #32, gr6
	andncr cc5, cc4, cc4
	csrl gr5, gr10, gr8, cc4, 1
	cmov gr6, gr4, cc4, 1
	csub gr4, gr10, gr4, cc4, 1
	csll gr5, gr4, gr5, cc4, 1
	csrl gr9, gr10, gr9, cc4, 1
	cor gr5, gr9, gr9, cc4, 1
	cmov gr5, gr8, cc4, 0
	ret
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	sethi #hi(#65535), gr6
	setlo #lo(#65535), gr6
	and gr8, gr6, gr10
	and gr9, gr6, gr12
	umul gr10,gr12,gr4
	srli gr5, #16, gr4
	and gr6, gr5, gr7
	srli gr8, #16, gr5
	umul gr5,gr12,gr12
	add gr4,gr13,gr4
	slli gr4,#16,gr8
	add gr8,gr7,gr7
	srli gr4, #16, gr11
	srli gr8, #16, gr4
	and gr7, gr6, gr7
	srli gr9, #16, gr6
	umul gr10,gr6,gr8
	add gr4,gr9,gr4
	slli gr4,#16,gr9
	add gr9,gr7,gr9
	srli gr4, #16, gr8
	add gr8,gr11,gr8
	umul gr5,gr6,gr6
	add gr8,gr7,gr8
	ret
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr8, gr18
	mov gr9, gr20
	mov gr10, gr19
	mov gr11, gr21
	mov gr11, gr9
	mov gr20, gr8
	call __muldsi3
	mov gr8, gr10
	umul gr18,gr21,gr4
	umul gr19,gr20,gr20
	add gr21,gr5,gr8
	add gr8,gr10,gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
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
	xor gr9, gr8, gr9
	srli gr9, #16, gr4
	xor gr9, gr4, gr9
	srli gr9, #8, gr4
	xor gr9, gr4, gr9
	srli gr9, #4, gr4
	xor gr9, gr4, gr9
	andi gr9, #15, gr9
	setlos #27030, gr8
	sra gr8, gr9, gr8
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
	xor gr4, gr5, gr4
	srli gr4, #4, gr5
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
	slli gr8,#31,gr4
	srli gr9, #1, gr6
	or gr4, gr6, gr6
	srli gr8, #1, gr10
	sethi #hi(#1431655765), gr7
	setlo #lo(#1431655765), gr7
	and gr10, gr7, gr4
	and gr6, gr7, gr5
	subcc gr9,gr5,gr9,icc0
	subx gr8,gr4,gr8,icc0
	slli gr8,#30,gr4
	srli gr9, #2, gr5
	or gr4, gr5, gr5
	srli gr8, #2, gr6
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr6, gr4, gr10
	and gr5, gr4, gr11
	and gr8, gr4, gr6
	and gr9, gr4, gr7
	addcc gr11,gr7,gr9,icc0
	addx gr10,gr6,gr8,icc0
	slli gr8,#28,gr6
	srli gr9, #4, gr5
	or gr6, gr5, gr5
	srli gr8, #4, gr4
	addcc gr5,gr9,gr5,icc0
	addx gr4,gr8,gr4,icc0
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr4, gr6, gr8
	and gr5, gr6, gr9
	srli gr8, #0, gr4
	add gr4,gr9,gr4
	srli gr4, #16, gr5
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
	srli gr8, #1, gr4
	sethi #hi(#1431655765), gr5
	setlo #lo(#1431655765), gr5
	and gr4, gr5, gr4
	sub gr8,gr4,gr8
	srli gr8, #2, gr4
	sethi #hi(#858993459), gr5
	setlo #lo(#858993459), gr5
	and gr4, gr5, gr4
	and gr8, gr5, gr8
	add gr4,gr8,gr8
	srli gr8, #4, gr4
	add gr4,gr8,gr8
	sethi #hi(#252645135), gr4
	setlo #lo(#252645135), gr4
	and gr8, gr4, gr8
	srli gr8, #16, gr4
	add gr8,gr4,gr8
	srli gr8, #8, gr4
	add gr4,gr8,gr8
	andi gr8, #63, gr8
	ret
	.size	__popcountsi2, .-__popcountsi2
	.p2align 4
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	mov gr15, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	srli gr10, #31, gr24
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	bra .L706
.L704:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L705
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L706:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L704
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L704
.L705:
	cmpi gr24, #0, icc0
	beq icc0,2,.L708
	mov gr22, gr10
	mov gr23, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
.L707:
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
.L708:
	mov gr22, gr8
	mov gr23, gr9
	bra .L707
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr21
	mov gr8, gr19
	mov gr9, gr18
	srli gr9, #31, gr22
	sethi #hi(#1065353216), gr20
	setlo #lo(#1065353216), gr20
	bra .L712
.L710:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L711
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L712:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L710
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L710
.L711:
	cmpi gr22, #0, icc0
	beq icc0,2,.L714
	mov gr20, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
.L713:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L714:
	mov gr20, gr8
	bra .L713
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L717
	bhi icc0,0,.L718
	cmp gr9,gr11,icc0
	bc icc0,0,.L719
	bhi icc0,0,.L720
	setlos #1, gr8
	bra .L716
.L717:
	setlos #0, gr8
.L716:
	ret
.L718:
	setlos #2, gr8
	bra .L716
.L719:
	setlos #0, gr8
	bra .L716
.L720:
	setlos #2, gr8
	bra .L716
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __ucmpdi2
	addi gr8,#-1,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.sbss
	.p2align 2
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
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
