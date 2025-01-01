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
	cmp gr10,gr4,icc0
	bne icc0,2,.L5
	bra .L3
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	andi gr10, #255, gr5
	cmpi gr11, #0, icc0
	beq icc0,0,.L16
.L9:
	ldub @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmp gr4,gr5,icc0
	beq icc0,0,.L17
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	addicc gr11, #-1, gr11, icc0
	bne icc0,2,.L9
	setlos #0, gr8
	bra .L8
.L16:
	setlos #0, gr8
	bra .L8
.L17:
	addi gr8,#1,gr8
.L8:
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	andi gr9, #255, gr5
	cmpi gr10, #0, icc0
	beq icc0,0,.L24
.L19:
	ldub @(gr8,gr0),gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L18
	addi gr8,#1,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L19
	setlos #0, gr8
.L18:
	ret
.L24:
	setlos #0, gr8
	bra .L18
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L33
.L26:
	ldub @(gr8,gr0),gr5
	ldub @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L34
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L26
	setlos #0, gr8
	bra .L25
.L33:
	setlos #0, gr8
	bra .L25
.L34:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
.L25:
	ret
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	cmpi gr10, #0, icc0
	beq icc0,0,.L36
	setlos #0, gr4
.L37:
	ldub @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L37
.L36:
	ret
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	andi gr9, #255, gr7
	addi gr10,#-1,gr4
	add gr8,gr4,gr4
	addi gr8,#-1,gr6
.L40:
	cmp gr4,gr6,icc0
	beq icc0,0,.L43
	mov gr4, gr8
	ldub @(gr4,gr0),gr5
	addi gr4,#-1,gr4
	cmp gr5,gr7,icc0
	bne icc0,2,.L40
	bra .L39
.L43:
	setlos #0, gr8
.L39:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	cmpi gr10, #0, icc0
	beq icc0,0,.L45
	add gr8,gr10,gr5
	mov gr8, gr4
	andi gr9,#0xff,gr6
.L46:
	stb gr6, @(gr4,gr0)
	addi gr4,#1,gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L46
.L45:
	ret
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L49
.L50:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L50
.L49:
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	andi gr9, #255, gr5
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L52
.L53:
	andi gr4,#0xff,gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L52
	addi gr8,#1,gr8
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L53
.L52:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L60:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc0
	beq icc0,0,.L59
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	bne icc0,2,.L60
	setlos #0, gr8
.L59:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L64
	setlos #1, gr4
	addi gr9,#-1,gr7
.L63:
	cmpi gr5, #0, icc0
	beq icc0,0,.L64
	ldsb @(gr8,gr4),gr5
	addi gr4,#1,gr4
	ldsb @(gr7,gr4),gr6
	cmp gr5,gr6,icc0
	beq icc0,2,.L63
.L64:
	andi gr5,#0xff,gr5
	andi gr6,#0xff,gr6
	sub gr5,gr6,gr8
	ret
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L70
	mov gr8, gr5
.L69:
	addi gr5,#1,gr5
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L69
.L68:
	sub gr5,gr8,gr8
	ret
.L70:
	mov gr8, gr5
	bra .L68
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L77
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L74
	addi gr10,#-1,gr6
	add gr8,gr6,gr6
.L75:
	ldub @(gr9,gr0),gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L74
	cmp gr8,gr6,icc0
	beq icc0,0,.L74
	cmp gr5,gr4,icc0
	bne icc0,0,.L74
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L75
.L74:
	ldub @(gr9,gr0),gr5
	sub gr4,gr5,gr8
.L72:
	ret
.L77:
	setlos #0, gr8
	bra .L72
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L78
	andi gr10, #-2, gr5
	add gr8,gr5,gr5
.L80:
	ldsbi @(gr8,1),gr4
	stb gr4, @(gr9,gr0)
	ldsb @(gr8,gr0),gr4
	stbi gr4, @(gr9,1)
	addi gr9,#2,gr9
	addi gr8,#2,gr8
	cmp gr8,gr5,icc0
	bne icc0,2,.L80
.L78:
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
	beq icc0,0,.L86
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L84:
	ret
.L86:
	setlos #1, gr8
	bra .L84
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L89
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L87:
	ret
.L89:
	setlos #1, gr8
	bra .L87
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
	beq icc0,0,.L96
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L94:
	ret
.L96:
	setlos #1, gr8
	bra .L94
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
	bls icc0,2,.L100
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,2,.L101
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L102
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#2,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L98
.L100:
	setlos #1, gr8
.L98:
	ret
.L101:
	setlos #1, gr8
	bra .L98
.L102:
	setlos #1, gr8
	bra .L98
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
	bls icc0,0,.L111
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L107
	setlos #-8234, gr4
	add gr8,gr4,gr4
	sethi #hi(#47061), gr5
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L108
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L109
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr8,gr4,gr4
	sethi #hi(#1048579), gr5
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L110
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L104
.L111:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L104:
	ret
.L107:
	setlos #1, gr8
	bra .L104
.L108:
	setlos #1, gr8
	bra .L104
.L109:
	setlos #1, gr8
	bra .L104
.L110:
	setlos #0, gr8
	bra .L104
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L114
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L112:
	ret
.L114:
	setlos #1, gr8
	bra .L112
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
	bne icc0,0,.L119
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L120
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L123
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
.L116:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L119:
	mov gr18, gr8
	mov gr19, gr9
	bra .L116
.L120:
	mov gr22, gr8
	mov gr23, gr9
	bra .L116
.L123:
	setlos #0, gr8
	setlos #0, gr9
	bra .L116
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
	bne icc0,0,.L127
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L128
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L131
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __subf
.L124:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L127:
	mov gr18, gr8
	bra .L124
.L128:
	mov gr20, gr8
	bra .L124
.L131:
	setlos #0, gr8
	bra .L124
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
	bne icc0,0,.L138
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L139
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L134
	cmpi gr5, #0, icc0
	beq icc0,2,.L140
	mov gr20, gr8
	mov gr21, gr9
	bra .L132
.L134:
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
.L132:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L138:
	mov gr20, gr8
	mov gr21, gr9
	bra .L132
.L139:
	mov gr18, gr8
	mov gr19, gr9
	bra .L132
.L140:
	mov gr18, gr8
	mov gr19, gr9
	bra .L132
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
	bne icc0,0,.L145
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L146
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L143
	cmpi gr5, #0, icc0
	beq icc0,2,.L147
	mov gr19, gr8
	bra .L141
.L143:
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
.L141:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L145:
	mov gr19, gr8
	bra .L141
.L146:
	mov gr18, gr8
	bra .L141
.L147:
	mov gr18, gr8
	bra .L141
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
	bne icc0,0,.L154
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L155
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L150
	cmpi gr5, #0, icc0
	beq icc0,2,.L156
	mov gr20, gr8
	mov gr21, gr9
	bra .L148
.L150:
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
.L148:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L154:
	mov gr20, gr8
	mov gr21, gr9
	bra .L148
.L155:
	mov gr18, gr8
	mov gr19, gr9
	bra .L148
.L156:
	mov gr18, gr8
	mov gr19, gr9
	bra .L148
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
	bne icc0,0,.L163
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L164
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L159
	cmpi gr5, #0, icc0
	beq icc0,2,.L165
	mov gr20, gr8
	mov gr21, gr9
	bra .L157
.L159:
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
.L157:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L163:
	mov gr18, gr8
	mov gr19, gr9
	bra .L157
.L164:
	mov gr20, gr8
	mov gr21, gr9
	bra .L157
.L165:
	mov gr18, gr8
	mov gr19, gr9
	bra .L157
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
	bne icc0,0,.L170
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L171
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L168
	cmpi gr5, #0, icc0
	beq icc0,2,.L172
	mov gr19, gr8
	bra .L166
.L168:
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
.L166:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L170:
	mov gr18, gr8
	bra .L166
.L171:
	mov gr19, gr8
	bra .L166
.L172:
	mov gr18, gr8
	bra .L166
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
	bne icc0,0,.L179
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L180
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L175
	cmpi gr5, #0, icc0
	beq icc0,2,.L181
	mov gr20, gr8
	mov gr21, gr9
	bra .L173
.L175:
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
.L173:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L179:
	mov gr18, gr8
	mov gr19, gr9
	bra .L173
.L180:
	mov gr20, gr8
	mov gr21, gr9
	bra .L173
.L181:
	mov gr18, gr8
	mov gr19, gr9
	bra .L173
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
	beq icc0,0,.L185
	sethi #gotoffhi(s.0), gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	ldi @(gr15,#got12(_gp)), gr5
	sethi #gprelhi(digits), gr6
	setlo #gprello(digits), gr6
	add gr6,gr5,gr6
.L184:
	andi gr8, #63, gr5
	ldsb @(gr6,gr5),gr5
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	srlicc gr8, #6, gr8, icc0
	bne icc0,2,.L184
.L183:
	stb gr0, @(gr4,gr0)
	sethi #gotoffhi(s.0), gr8
	setlo #gotofflo(s.0), gr8
	add gr8,gr15,gr8
	ret
.L185:
	sethi #gotoffhi(s.0), gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	bra .L183
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
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sethi #gotoffhi(seed), gr18
	setlo #gotofflo(seed), gr18
	add gr18,gr15,gr18
	ld @(gr18,gr0), gr8
	ldi @(gr18,4), gr9
	sethi #hi(#1481765933), gr10
	setlo #lo(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	call __mulll
	addicc gr9,#1,gr9,icc0
	addxi gr8,#0,gr8,icc0
	st gr8, @(gr18,gr0)
	sti gr9, @(gr18,4)
	srli gr8, #1, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
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
	sti gr27, @(sp,36)
	mov gr15, gr27
	mov gr8, gr22
	mov gr9, gr25
	mov gr10, gr26
	mov gr11, gr21
	mov gr12, gr23
	ld @(gr10,gr0), gr20
	cmpi gr20, #0, icc0
	beq icc0,0,.L196
	mov gr9, gr18
	setlos #0, gr19
.L198:
	mov gr18, gr24
	mov gr18, gr9
	mov gr22, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L195
	addi gr19,#1,gr19
	add gr18,gr21,gr18
	cmp gr20,gr19,icc0
	bne icc0,2,.L198
.L196:
	addi gr20,#1,gr4
	st gr4, @(gr26,gr0)
	umul gr21,gr20,gr4
	add gr25,gr5,gr8
	mov gr21, gr10
	mov gr22, gr9
	mov gr27, gr15
	call memcpy
	mov gr8, gr24
.L195:
	mov gr24, gr8
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
	mov gr8, gr20
	mov gr9, gr18
	mov gr11, gr22
	mov gr12, gr21
	ld @(gr10,gr0), gr23
	cmpi gr23, #0, icc0
	beq icc0,0,.L203
	setlos #0, gr19
.L202:
	mov gr18, gr24
	mov gr18, gr9
	mov gr20, gr8
	ldd @(gr21,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L200
	addi gr19,#1,gr19
	add gr18,gr22,gr18
	cmp gr23,gr19,icc0
	bne icc0,2,.L202
	setlos #0, gr24
.L200:
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
.L203:
	setlos #0, gr24
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
	bra .L207
.L208:
	addi gr18,#1,gr18
.L207:
	ldsb @(gr18,gr0),gr19
	mov gr19, gr8
	mov gr20, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L208
	cmpi gr19,#43,icc0
	beq icc0,0,.L214
	cmpi gr19,#45,icc0
	bne icc0,2,.L215
	setlos #1, gr6
.L209:
	addi gr18,#1,gr18
.L210:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr5
	cmpi gr5,#9,icc0
	bhi icc0,0,.L212
.L211:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	addi gr4,#-48,gr4
	slli gr4,#24,gr4
	srai gr4, #24, gr4
	sub gr9,gr4,gr8
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr5
	cmpi gr5,#9,icc0
	bls icc0,2,.L211
.L212:
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L214:
	mov gr8, gr6
	bra .L209
.L215:
	mov gr8, gr6
	bra .L210
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
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
	bra .L219
.L220:
	addi gr18,#1,gr18
.L219:
	ldsb @(gr18,gr0),gr19
	mov gr19, gr8
	mov gr20, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L220
	cmpi gr19,#43,icc0
	beq icc0,0,.L226
	cmpi gr19,#45,icc0
	bne icc0,2,.L227
	setlos #1, gr6
.L221:
	addi gr18,#1,gr18
.L222:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr5
	cmpi gr5,#9,icc0
	bhi icc0,0,.L224
.L223:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	addi gr4,#-48,gr4
	slli gr4,#24,gr4
	srai gr4, #24, gr4
	sub gr9,gr4,gr8
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr5
	cmpi gr5,#9,icc0
	bls icc0,2,.L223
.L224:
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L226:
	mov gr8, gr6
	bra .L221
.L227:
	mov gr8, gr6
	bra .L222
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
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
	mov gr15, gr24
	mov gr8, gr22
	bra .L231
.L232:
	addi gr22,#1,gr22
.L231:
	ldsb @(gr22,gr0),gr23
	mov gr23, gr8
	mov gr24, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L232
	cmpi gr23,#43,icc0
	beq icc0,0,.L233
	cmpi gr23,#45,icc0
	bne icc0,2,.L234
	setlos #1, gr8
.L233:
	addi gr22,#1,gr22
.L234:
	ldsb @(gr22,gr0),gr6
	addi gr6,#-48,gr4
	cmpi gr4,#9,icc0
	bhi icc0,0,.L240
	setlos #0, gr4
	setlos #0, gr5
.L235:
	srli gr5, #30, gr7
	slli gr4,#2,gr18
	or gr7, gr18, gr18
	slli gr5,#2,gr19
	addcc gr5,gr19,gr5,icc0
	addx gr4,gr18,gr4,icc0
	srli gr5, #31, gr10
	slli gr4,#1,gr9
	slli gr5,#1,gr7
	or gr10, gr9, gr4
	addi gr22,#1,gr22
	addi gr6,#-48,gr6
	slli gr6,#24,gr6
	srai gr6, #24, gr6
	srai gr6, #31, gr20
	subcc gr7,gr6,gr5,icc0
	subx gr4,gr20,gr4,icc0
	ldsb @(gr22,gr0),gr6
	addi gr6,#-48,gr7
	cmpi gr7,#9,icc0
	bls icc0,2,.L235
.L236:
	cmpi gr8, #0, icc0
	bne icc0,2,.L230
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
.L230:
	mov gr4, gr8
	mov gr5, gr9
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
.L240:
	setlos #0, gr4
	setlos #0, gr5
	bra .L236
	.size	atoll, .-atoll
	.p2align 4
	.globl bsearch
	.type	bsearch, @function
bsearch:
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
	mov gr8, gr24
	mov gr9, gr22
	mov gr10, gr18
	mov gr11, gr21
	mov gr12, gr23
	cmpi gr10, #0, icc0
	bne icc0,2,.L244
	setlos #0, gr20
	bra .L241
.L246:
	mov gr19, gr18
.L243:
	cmpi gr18, #0, icc0
	beq icc0,0,.L248
.L244:
	srli gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	mov gr20, gr9
	mov gr24, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L246
	cmpi gr8,#0,icc0
	ble icc0,0,.L241
	add gr20,gr21,gr22
	addi gr18,#-1,gr18
	sub gr18,gr19,gr18
	bra .L243
.L248:
	setlos #0, gr20
.L241:
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
	mov gr8, gr24
	mov gr9, gr21
	mov gr11, gr20
	mov gr12, gr23
	mov gr13, gr22
	mov gr10, gr18
	cmpi gr10, #0, icc0
	beq icc0,0,.L253
.L252:
	srai gr18, #1, gr4
	umul gr4,gr20,gr4
	add gr21,gr5,gr19
	mov gr22, gr10
	mov gr19, gr9
	mov gr24, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L249
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	cadd gr19, gr20, gr21, cc4, 1
	cadd gr18, gr4, gr18, cc4, 1
	sraicc gr18, #1, gr18, icc0
	bne icc0,2,.L252
	setlos #0, gr19
.L249:
	mov gr19, gr8
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
.L253:
	setlos #0, gr19
	bra .L249
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
	bn icc0,0,.L259
.L257:
	ret
.L259:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L257
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
	bn icc0,0,.L266
.L264:
	ret
.L266:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L264
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
	beq icc0,0,.L274
.L269:
	cmp gr9,gr4,icc0
	beq icc0,0,.L268
	addi gr8,#4,gr8
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L269
	setlos #0, gr8
.L268:
	ret
.L274:
	setlos #0, gr8
	bra .L268
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L277
	setlos #4, gr4
	addi gr9,#-4,gr7
.L276:
	cmpi gr5, #0, icc0
	beq icc0,0,.L277
	cmpi gr6, #0, icc0
	beq icc0,0,.L277
	ld @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc0
	beq icc0,2,.L276
.L277:
	cmp gr5,gr6,icc0
	blt icc0,2,.L281
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L275:
	ret
.L281:
	setlos #-1, gr8
	bra .L275
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr5
.L283:
	ld @(gr9,gr5), gr4
	st gr4, @(gr8,gr5)
	addi gr5,#4,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L283
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L288
	mov gr8, gr5
.L287:
	addi gr5,#4,gr5
	ld @(gr5,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L287
.L286:
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
.L288:
	mov gr8, gr5
	bra .L286
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L298
.L291:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmp gr4,gr5,icc0
	bne icc0,0,.L293
	cmpi gr4, #0, icc0
	beq icc0,0,.L293
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L291
	setlos #0, gr8
	bra .L290
.L298:
	setlos #0, gr8
	bra .L290
.L295:
	cmp gr5,gr4,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L290:
	ret
.L293:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bge icc0,2,.L295
	setlos #-1, gr8
	bra .L290
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	beq icc0,0,.L305
.L300:
	ld @(gr8,gr0), gr4
	cmp gr4,gr9,icc0
	beq icc0,0,.L299
	addi gr8,#4,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L300
	setlos #0, gr8
.L299:
	ret
.L305:
	setlos #0, gr8
	bra .L299
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L315
.L307:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L316
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L307
	setlos #0, gr8
.L306:
	ret
.L315:
	setlos #0, gr8
	bra .L306
.L311:
	cmp gr5,gr4,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L306
.L316:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bge icc0,2,.L311
	setlos #-1, gr8
	bra .L306
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi gr10,#-1,gr5
	cmpi gr10, #0, icc0
	beq icc0,0,.L318
	setlos #0, gr4
.L319:
	ld @(gr9,gr4), gr6
	st gr6, @(gr8,gr4)
	addi gr5,#-1,gr5
	addi gr4,#4,gr4
	cmpi gr5,#-1,icc0
	bne icc0,2,.L319
.L318:
	ret
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L322
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	bc icc0,2,.L323
	addi gr10,#-1,gr5
	setlos #0, gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L322
.L324:
	ld @(gr9,gr4), gr6
	st gr6, @(gr8,gr4)
	addi gr5,#-1,gr5
	addi gr4,#4,gr4
	cmpi gr5,#-1,icc0
	bne icc0,2,.L324
	bra .L322
.L323:
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L322
	slli gr4,#2,gr4
.L325:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
	cmpi gr4,#-4,icc0
	bne icc0,2,.L325
.L322:
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L330
	mov gr8, gr5
.L331:
	addi gr5,#4,gr5
	sti gr9, @(gr5,-4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L331
.L330:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L334
	cmpi gr10, #0, icc0
	beq icc0,0,.L333
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
.L336:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L336
.L333:
	ret
.L334:
	cmp gr8,gr9,icc0
	beq icc0,0,.L333
	cmpi gr10, #0, icc0
	beq icc0,0,.L333
	setlos #0, gr4
.L337:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L337
	bra .L333
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
	andi gr9, #15, gr9
	sll gr8,gr9,gr4
	sethi #hi(#0),gr8
	sub gr0,gr9,gr9
	andi gr9, #15, gr9
	srl gr8, gr9, gr8
	or gr4, gr8, gr8
	sethi #hi(#0),gr8
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	mov gr8, gr4
	andi gr9, #15, gr9
	sethi #hi(#0),gr8
	srl gr8, gr9, gr8
	sub gr0,gr9,gr9
	andi gr9, #15, gr9
	sll gr4,gr9,gr4
	or gr8, gr4, gr8
	sethi #hi(#0),gr8
	ret
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	andi gr9, #7, gr9
	sll gr8,gr9,gr4
	andi gr8,#0xff,gr8
	sub gr0,gr9,gr9
	andi gr9, #7, gr9
	srl gr8, gr9, gr8
	or gr4, gr8, gr8
	andi gr8,#0xff,gr8
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	mov gr8, gr4
	andi gr9, #7, gr9
	andi gr8,#0xff,gr8
	srl gr8, gr9, gr8
	sub gr0,gr9,gr9
	andi gr9, #7, gr9
	sll gr4,gr9,gr4
	or gr8, gr4, gr8
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
	slli gr4,#8,gr4
	sethi #hi(#0),gr4
	or gr8, gr4, gr8
	ret
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
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
	or gr5, gr8, gr5
	or gr4, gr5, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	srli gr8, #24, gr14
	srli gr8, #8, gr7
	sethi #hi(#65280), gr13
	setlo #lo(#65280), gr13
	and gr7, gr13, gr10
	slli gr8,#8,gr5
	srli gr9, #24, gr4
	or gr5, gr4, gr4
	sethi #hi(#16711680), gr12
	setlo #lo(#16711680), gr12
	and gr4, gr12, gr6
	slli gr8,#24,gr8
	srli gr9, #8, gr4
	or gr8, gr4, gr4
	sethi #hi(#-16777216), gr5
	setlo #lo(#-16777216), gr5
	and gr4, gr5, gr4
	slli gr9,#8,gr7
	srli gr9, #24, gr11
	srli gr9, #8, gr5
	or gr5, gr8, gr5
	slli gr9,#24,gr9
	and gr5, gr13, gr5
	and gr7, gr12, gr8
	or gr10, gr14, gr7
	or gr6, gr7, gr6
	or gr4, gr6, gr4
	or gr11, gr9, gr6
	or gr5, gr6, gr5
	or gr8, gr5, gr8
	mov gr4, gr9
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
.L356:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	bne icc0,0,.L358
	addi gr4,#1,gr4
	cmpi gr4,#32,icc0
	bne icc0,2,.L356
	setlos #0, gr8
	bra .L353
.L358:
	addi gr4,#1,gr8
.L353:
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L362
	andicc gr8, #1, gr4, icc0
	bne icc0,0,.L359
	setlos #1, gr4
.L361:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L361
.L359:
	mov gr4, gr8
	ret
.L362:
	mov gr8, gr4
	bra .L359
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
	bn icc0,2,.L367
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
.L364:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L367:
	setlos #1, gr8
	bra .L364
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
	bn icc0,2,.L371
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
.L368:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L371:
	setlos #1, gr8
	bra .L368
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
	bn icc0,2,.L375
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
.L372:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L375:
	setlos #1, gr8
	bra .L372
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
	bne icc0,0,.L378
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __addf
	mov gr20, gr9
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L378
	cmpi gr18, #0, icc0
	bn icc0,0,.L385
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
	bra .L382
.L385:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L382
.L381:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L378
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L382:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L381
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L381
.L378:
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
	bne icc0,0,.L387
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __addd
	mov gr22, gr10
	mov gr23, gr11
	mov gr21, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L387
	cmpi gr20, #0, icc0
	bn icc0,0,.L394
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L391
.L394:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L391
.L390:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L387
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L391:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L390
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L390
.L387:
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
	bne icc0,0,.L396
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __addd
	mov gr22, gr10
	mov gr23, gr11
	mov gr21, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L396
	cmpi gr20, #0, icc0
	bn icc0,0,.L403
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L400
.L403:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L400
.L399:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L396
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L400:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L399
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L399
.L396:
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
	beq icc0,0,.L405
	setlos #0, gr4
.L406:
	ldsb @(gr9,gr4),gr6
	ldsb @(gr8,gr4),gr5
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L406
.L405:
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
	beq icc0,0,.L410
.L409:
	ldsb @(gr19,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L412
	addi gr19,#1,gr19
	addi gr8,#1,gr8
	addicc gr18, #-1, gr18, icc0
	bne icc0,2,.L409
.L410:
	stb gr0, @(gr8,gr0)
.L412:
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
	mov gr9, gr8
	cmpi gr9, #0, icc0
	beq icc0,0,.L414
	setlos #0, gr8
.L415:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L420
.L414:
	ret
.L420:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc0
	bne icc0,2,.L415
	mov gr9, gr8
	bra .L414
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr6
	cmpi gr6, #0, icc0
	beq icc0,0,.L428
.L422:
	mov gr9, gr4
.L425:
	ldsb @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L429
	addi gr4,#1,gr4
	cmp gr5,gr6,icc0
	bne icc0,2,.L425
.L423:
	ret
.L428:
	setlos #0, gr8
	bra .L423
.L429:
	addi gr8,#1,gr8
	ldsb @(gr8,gr0),gr6
	cmpi gr6, #0, icc0
	bne icc0,2,.L422
	setlos #0, gr8
	bra .L423
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L432:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc0
	ckeq icc0, cc4
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	bne icc0,2,.L432
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
	beq icc0,0,.L435
	ldsb @(gr20,gr0),gr22
.L437:
	mov gr22, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strchr
	mov gr8, gr18
	cmpi gr8, #0, icc0
	beq icc0,0,.L435
	mov gr21, gr10
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strncmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L435
	addi gr18,#1,gr18
	bra .L437
.L435:
	mov gr18, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	bn icc0,0,.L450
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L444
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L443
.L444:
	mov gr18, gr8
	mov gr19, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L450:
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L444
.L443:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	bra .L444
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
	cmpi gr11, #0, icc0
	beq icc0,0,.L451
	cmp gr9,gr11,icc0
	bc icc0,0,.L456
	sub gr9,gr11,gr9
	add gr8,gr9,gr19
	cmp gr8,gr19,icc0
	bhi icc0,0,.L457
	ldsb @(gr10,gr0),gr22
	addi gr10,#1,gr23
	addi gr11,#-1,gr20
	bra .L454
.L453:
	addi gr18,#1,gr18
	cmp gr19,gr18,icc0
	bc icc0,0,.L460
.L454:
	ldsb @(gr18,gr0),gr4
	cmp gr4,gr22,icc0
	bne icc0,2,.L453
	addi gr18,#1,gr8
	mov gr20, gr10
	mov gr23, gr9
	mov gr21, gr15
	call memcmp
	cmpi gr8, #0, icc0
	bne icc0,2,.L453
	mov gr18, gr8
	bra .L451
.L460:
	setlos #0, gr8
.L451:
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
.L456:
	setlos #0, gr8
	bra .L451
.L457:
	setlos #0, gr8
	bra .L451
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
	bn icc0,0,.L486
	setlos #0, gr26
.L463:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L483
	setlos #0, gr21
	sethi #hi(#1071644672), gr24
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
.L467:
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
	bp icc0,2,.L467
.L468:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L472
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L472:
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
.L486:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L463
.L483:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L484
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L485
	setlos #0, gr21
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
.L471:
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
	bn icc0,2,.L471
	bra .L468
.L484:
	setlos #0, gr21
	bra .L468
.L485:
	setlos #0, gr21
	bra .L468
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
	orcc gr9, gr8, gr0, icc0
	beq icc0,0,.L491
	setlos #0, gr18
	setlos #0, gr19
.L490:
	setlos #0, gr6
	andi gr9, #1, gr7
	subcc gr0,gr7,gr15,icc0
	subx gr0,gr6,gr14,icc0
	and gr14, gr10, gr12
	and gr15, gr11, gr13
	addcc gr19,gr13,gr19,icc0
	addx gr18,gr12,gr18,icc0
	srli gr11, #31, gr4
	slli gr10,#1,gr10
	or gr4, gr10, gr10
	slli gr11,#1,gr11
	slli gr5,#31,gr8
	srli gr9, #1, gr4
	or gr8, gr4, gr4
	srli gr5, #1, gr5
	mov gr4, gr9
	orcc gr5, gr4, gr0, icc0
	bne icc0,2,.L490
.L487:
	mov gr18, gr8
	mov gr19, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L491:
	setlos #0, gr18
	setlos #0, gr19
	bra .L487
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	mov gr8, gr5
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L501
	setlos #32, gr8
	setlos #1, gr4
.L494:
	cmpi gr9, #0, icc0
	bn icc0,0,.L501
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr5,gr9,icc0
	bls icc0,0,.L496
	addicc gr8, #-1, gr8, icc0
	bne icc0,2,.L494
	bra .L497
.L496:
	cmpi gr4, #0, icc0
	beq icc0,0,.L506
.L501:
	setlos #0, gr8
.L500:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	csub gr5, gr9, gr5, cc4, 1
	cor gr8, gr4, gr8, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L500
.L497:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L506:
	mov gr4, gr8
	bra .L497
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
	slli gr4,#24,gr5
	srai gr5, #24, gr5
	xor gr4, gr8, gr4
	cmp gr8,gr5,icc0
	beq icc0,0,.L509
	slli gr4,#8,gr8
	call __clzsi2
	addi gr8,#-1,gr8
.L507:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L509:
	setlos #7, gr8
	bra .L507
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
	srai gr8, #31, gr4
	xor gr8, gr4, gr6
	xor gr9, gr4, gr5
	cmp gr8,gr4,icc0
	beq icc0,0,.L516
.L514:
	mov gr6, gr8
	mov gr5, gr9
	call __clzdi2
	addi gr8,#-1,gr8
.L510:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L516:
	cmp gr9,gr4,icc0
	bne icc0,2,.L514
	setlos #63, gr8
	bra .L510
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmpi gr8, #0, icc0
	beq icc0,0,.L520
	setlos #0, gr6
.L519:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	srlicc gr8, #1, gr8, icc0
	bne icc0,2,.L519
.L517:
	mov gr6, gr8
	ret
.L520:
	mov gr8, gr6
	bra .L517
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	srli gr10, #3, gr7
	andi gr10, #-8, gr4
	cmp gr8,gr9,icc0
	bnc icc0,2,.L523
.L526:
	cmpi gr7, #0, icc0
	beq icc0,0,.L525
	mov gr9, gr5
	mov gr8, gr6
	slli gr7,#3,gr7
	add gr9,gr7,gr7
.L529:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	addi gr5,#8,gr5
	addi gr6,#8,gr6
	cmp gr5,gr7,icc0
	bne icc0,2,.L529
.L525:
	cmp gr10,gr4,icc0
	bls icc0,0,.L522
.L530:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L530
.L522:
	ret
.L523:
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bc icc0,2,.L526
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L522
.L527:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L527
	bra .L522
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	srli gr10, #1, gr6
	cmp gr8,gr9,icc0
	bnc icc0,2,.L536
.L539:
	cmpi gr6, #0, icc0
	beq icc0,0,.L538
	slli gr6,#1,gr6
	setlos #0, gr4
.L542:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L542
.L538:
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L535
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L535:
	ret
.L536:
	add gr9,gr10,gr4
	cmp gr4,gr8,icc0
	bc icc0,2,.L539
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L535
.L540:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L540
	bra .L535
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bnc icc0,2,.L547
.L550:
	cmpi gr7, #0, icc0
	beq icc0,0,.L549
	slli gr7,#2,gr7
	setlos #0, gr5
.L553:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
	cmp gr7,gr5,icc0
	bne icc0,2,.L553
.L549:
	cmp gr10,gr4,icc0
	bls icc0,0,.L546
.L554:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L554
.L546:
	ret
.L547:
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bc icc0,2,.L550
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L546
.L551:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L551
	bra .L546
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
.L567:
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L565
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L567
.L565:
	ret
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
.L571:
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L569
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L571
.L569:
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
	bp icc0,0,.L579
	mov gr19, gr8
	mov gr18, gr15
	call __ftoi
.L573:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L579:
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
	bra .L573
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
.L581:
	sra gr8, gr4, gr5
	andi gr5, #1, gr5
	add gr6,gr5,gr6
	addi gr4,#1,gr4
	cmpi gr4,#16,icc0
	bne icc0,2,.L581
	andi gr6, #1, gr8
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
.L584:
	sra gr6, gr4, gr5
	andi gr5, #1, gr5
	add gr8,gr5,gr8
	addi gr4,#1,gr4
	cmpi gr4,#16,icc0
	bne icc0,2,.L584
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmpi gr8, #0, icc0
	beq icc0,0,.L589
	setlos #0, gr6
.L588:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	srlicc gr8, #1, gr8, icc0
	bne icc0,2,.L588
.L586:
	mov gr6, gr8
	ret
.L589:
	mov gr8, gr6
	bra .L586
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	beq icc0,0,.L594
	cmpi gr9, #0, icc0
	beq icc0,0,.L595
	setlos #0, gr6
.L593:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	srlicc gr9, #1, gr9, icc0
	bne icc0,2,.L593
.L591:
	mov gr6, gr8
	ret
.L594:
	mov gr8, gr6
	bra .L591
.L595:
	mov gr9, gr6
	bra .L591
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	mov gr8, gr5
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L605
	setlos #32, gr8
	setlos #1, gr4
.L598:
	cmpi gr9, #0, icc0
	bn icc0,0,.L605
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr5,gr9,icc0
	bls icc0,0,.L600
	addicc gr8, #-1, gr8, icc0
	bne icc0,2,.L598
	bra .L601
.L600:
	cmpi gr4, #0, icc0
	beq icc0,0,.L610
.L605:
	setlos #0, gr8
.L604:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	csub gr5, gr9, gr5, cc4, 1
	cor gr8, gr4, gr8, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L604
.L601:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L610:
	mov gr4, gr8
	bra .L601
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
	bn icc0,0,.L614
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L611:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L614:
	setlos #-1, gr8
	bra .L611
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
	bn icc0,0,.L618
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
.L615:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L618:
	setlos #-1, gr8
	bra .L615
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
	bn icc0,0,.L629
	setlos #0, gr10
	cmpi gr9, #0, icc0
	beq icc0,0,.L630
.L626:
	setlos #0, gr6
	setlos #0, gr7
.L624:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	sraicc gr9, #1, gr9, icc0
	beq icc0,0,.L623
	addi gr6,#1,gr6
	cmpi gr6,#32,icc0
	bne icc0,2,.L624
.L623:
	cmpi gr10, #0, icc0
	beq icc0,0,.L621
	sub gr0,gr7,gr7
.L621:
	mov gr7, gr8
	ret
.L629:
	sub gr0,gr9,gr9
	setlos #1, gr10
	bra .L626
.L630:
	mov gr9, gr7
	bra .L621
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8, #0, icc0
	bn icc0,0,.L639
	cmpi gr9, #0, icc0
	bn icc0,0,.L640
	setlos #0, gr10
	call __udivmodsi4
	bra .L631
.L639:
	sub gr0,gr8,gr8
	cmpi gr9, #0, icc0
	bn icc0,0,.L641
	setlos #0, gr10
	call __udivmodsi4
.L635:
	sub gr0,gr8,gr8
.L631:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L640:
	sub gr0,gr9,gr9
	setlos #0, gr10
	call __udivmodsi4
	bra .L635
.L641:
	sub gr0,gr9,gr9
	setlos #0, gr10
	call __udivmodsi4
	bra .L631
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8, #0, icc0
	bn icc0,0,.L645
	cmpi gr9,#0,icc0
	cklt icc0, cc4
	csub gr0, gr9, gr9, cc4, 1
	setlos #1, gr10
	call __udivmodsi4
	bra .L642
.L645:
	sub gr0,gr8,gr8
	cmpi gr9,#0,icc0
	cklt icc0, cc4
	csub gr0, gr9, gr9, cc4, 1
	setlos #1, gr10
	call __udivmodsi4
	sub gr0,gr8,gr8
.L642:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	sethi #hi(#0),gr8
	sethi #hi(#0),gr9
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L654
	setlos #16, gr6
	setlos #1, gr4
.L647:
	slli gr9,#16,gr5
	srai gr5, #16, gr5
	cmpi gr5, #0, icc0
	bn icc0,0,.L654
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L649
	addicc gr6, #-1, gr6, icc0
	bne icc0,2,.L647
	setlos #0, gr5
.L650:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L652:
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	beq icc0,0,.L650
.L653:
	cmp gr8,gr9,icc0
	bc icc0,2,.L652
	sub gr8,gr9,gr8
	sethi #hi(#0),gr8
	or gr4, gr5, gr5
	sethi #hi(#0),gr5
	bra .L652
.L649:
	mov gr4, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L650
.L654:
	setlos #0, gr5
	bra .L653
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	mov gr8, gr5
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L667
	setlos #32, gr8
	setlos #1, gr4
.L660:
	cmpi gr9, #0, icc0
	bn icc0,0,.L667
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr5,gr9,icc0
	bls icc0,0,.L662
	addicc gr8, #-1, gr8, icc0
	bne icc0,2,.L660
	bra .L663
.L662:
	cmpi gr4, #0, icc0
	beq icc0,0,.L672
.L667:
	setlos #0, gr8
.L666:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	csub gr5, gr9, gr5, cc4, 1
	cor gr8, gr4, gr8, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L666
.L663:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L672:
	mov gr4, gr8
	bra .L663
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L674
	addi gr10,#-32,gr10
	sll gr9,gr10,gr8
	setlos #0, gr5
.L675:
	mov gr5, gr9
.L676:
	ret
.L674:
	cmpi gr10, #0, icc0
	beq icc0,0,.L676
	sll gr9,gr10,gr5
	sll gr8,gr10,gr8
	setlos #32, gr4
	sub gr4,gr10,gr4
	srl gr9, gr4, gr4
	or gr8, gr4, gr8
	bra .L675
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L679
	srai gr8, #31, gr5
	addi gr10,#-32,gr10
	sra gr8, gr10, gr9
.L680:
	mov gr5, gr8
.L681:
	ret
.L679:
	cmpi gr10, #0, icc0
	beq icc0,0,.L681
	sra gr8, gr10, gr5
	setlos #32, gr4
	sub gr4,gr10,gr4
	sll gr8,gr4,gr4
	srl gr9, gr10, gr9
	or gr4, gr9, gr9
	bra .L680
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli gr8, #24, gr14
	srli gr8, #8, gr7
	sethi #hi(#65280), gr13
	setlo #lo(#65280), gr13
	and gr7, gr13, gr10
	slli gr8,#8,gr5
	srli gr9, #24, gr4
	or gr5, gr4, gr4
	sethi #hi(#16711680), gr12
	setlo #lo(#16711680), gr12
	and gr4, gr12, gr6
	slli gr8,#24,gr8
	srli gr9, #8, gr4
	or gr8, gr4, gr4
	sethi #hi(#-16777216), gr5
	setlo #lo(#-16777216), gr5
	and gr4, gr5, gr4
	slli gr9,#8,gr7
	srli gr9, #24, gr11
	srli gr9, #8, gr5
	or gr5, gr8, gr5
	slli gr9,#24,gr9
	and gr5, gr13, gr5
	and gr7, gr12, gr8
	or gr10, gr14, gr7
	or gr6, gr7, gr6
	or gr4, gr6, gr4
	or gr11, gr9, gr6
	or gr5, gr6, gr5
	or gr8, gr5, gr8
	mov gr4, gr9
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
	or gr6, gr8, gr6
	or gr5, gr6, gr5
	or gr4, gr5, gr8
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
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#4,gr6
	setlos #16, gr5
	sub gr5,gr6,gr5
	srl gr8, gr5, gr4
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	andcc gr4, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#3,gr5
	setlos #8, gr7
	sub gr7,gr5,gr7
	srl gr4, gr7, gr4
	add gr5,gr6,gr6
	andicc gr4, #240, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	setlos #4, gr7
	sub gr7,gr5,gr7
	srl gr4, gr7, gr4
	add gr5,gr6,gr6
	andicc gr4, #12, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr5
	setlos #2, gr8
	sub gr8,gr5,gr7
	srl gr4, gr7, gr4
	add gr5,gr6,gr5
	andi gr4, #2, gr6
	sub gr8,gr4,gr8
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 0
	add gr8,gr5,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr10,gr8,icc0
	bgt icc0,0,.L688
	blt icc0,0,.L689
	cmp gr9,gr11,icc0
	bc icc0,0,.L690
	bhi icc0,0,.L691
	setlos #1, gr8
	bra .L686
.L688:
	setlos #0, gr8
.L686:
	ret
.L689:
	setlos #2, gr8
	bra .L686
.L690:
	setlos #0, gr8
	bra .L686
.L691:
	setlos #2, gr8
	bra .L686
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
	sethi #hi(#65535), gr5
	setlo #lo(#65535), gr5
	andcc gr8, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#4,gr6
	srl gr8, gr6, gr4
	andi gr4, #255, gr5
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#3,gr5
	srl gr4, gr5, gr4
	add gr5,gr6,gr6
	andicc gr4, #15, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	srl gr4, gr5, gr4
	add gr5,gr6,gr5
	andicc gr4, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	slli gr8,#1,gr8
	srl gr4, gr8, gr4
	andi gr4, #3, gr4
	add gr8,gr5,gr8
	not gr4,gr5
	andi gr5, #1, gr5
	srli gr4, #1, gr4
	setlos #2, gr6
	sub gr6,gr4,gr4
	umul gr5,gr4,gr4
	add gr8,gr5,gr8
	ret
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L695
	addi gr10,#-32,gr10
	srl gr8, gr10, gr9
	setlos #0, gr5
.L696:
	mov gr5, gr8
.L697:
	ret
.L695:
	cmpi gr10, #0, icc0
	beq icc0,0,.L697
	srl gr8, gr10, gr5
	setlos #32, gr4
	sub gr4,gr10,gr4
	sll gr8,gr4,gr4
	srl gr9, gr10, gr9
	or gr4, gr9, gr9
	bra .L696
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	sethi #hi(#65535), gr7
	setlo #lo(#65535), gr7
	and gr8, gr7, gr10
	and gr9, gr7, gr12
	umul gr10,gr12,gr14
	srli gr15, #16, gr5
	and gr7, gr15, gr6
	srli gr8, #16, gr8
	umul gr12,gr8,gr12
	add gr5,gr13,gr5
	slli gr5,#16,gr4
	add gr6,gr4,gr6
	srli gr5, #16, gr5
	srli gr4, #16, gr4
	and gr6, gr7, gr6
	srli gr9, #16, gr9
	umul gr10,gr9,gr10
	add gr4,gr11,gr4
	slli gr4,#16,gr7
	add gr6,gr7,gr6
	srli gr4, #16, gr4
	umul gr8,gr9,gr8
	add gr5,gr9,gr5
	add gr4,gr5,gr8
	mov gr6, gr9
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
	umul gr18,gr21,gr4
	umul gr19,gr20,gr20
	add gr21,gr5,gr4
	add gr8,gr4,gr8
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
	srli gr8, #2, gr10
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr10, gr4, gr6
	and gr5, gr4, gr7
	and gr8, gr4, gr10
	and gr9, gr4, gr11
	addcc gr7,gr11,gr7,icc0
	addx gr6,gr10,gr6,icc0
	slli gr6,#28,gr8
	srli gr7, #4, gr5
	or gr8, gr5, gr5
	srli gr6, #4, gr4
	addcc gr5,gr7,gr5,icc0
	addx gr4,gr6,gr4,icc0
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr4, gr6, gr7
	and gr5, gr6, gr4
	add gr4,gr7,gr4
	srli gr4, #16, gr5
	add gr5,gr4,gr4
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
	srli gr8, #2, gr5
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
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
	mov gr10, gr24
	mov gr10, gr18
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	bra .L709
.L707:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L708
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L709:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L707
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L707
.L708:
	cmpi gr24, #0, icc0
	bn icc0,0,.L711
.L706:
	mov gr22, gr8
	mov gr23, gr9
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
.L711:
	mov gr22, gr10
	mov gr23, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
	mov gr8, gr22
	mov gr9, gr23
	bra .L706
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
	mov gr9, gr22
	mov gr9, gr18
	sethi #hi(#1065353216), gr20
	setlo #lo(#1065353216), gr20
	bra .L715
.L713:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L714
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L715:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L713
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L713
.L714:
	cmpi gr22, #0, icc0
	bn icc0,0,.L717
.L712:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L717:
	mov gr20, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
	mov gr8, gr20
	bra .L712
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr10,gr8,icc0
	bhi icc0,0,.L720
	bc icc0,0,.L721
	cmp gr9,gr11,icc0
	bc icc0,0,.L722
	bhi icc0,0,.L723
	setlos #1, gr8
	bra .L718
.L720:
	setlos #0, gr8
.L718:
	ret
.L721:
	setlos #2, gr8
	bra .L718
.L722:
	setlos #0, gr8
	bra .L718
.L723:
	setlos #2, gr8
	bra .L718
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
