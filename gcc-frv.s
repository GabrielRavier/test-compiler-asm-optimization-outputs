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
	ret
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	cmpi gr11, #0, icc0
	andi gr10, #255, gr5
	bne icc0,2,.L16
	bra .L17
.L18:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	beq icc1,0,.L17
.L16:
	ldub @(gr9,gr0),gr4
	addicc gr11, #-1, gr11, icc1
	stb gr4, @(gr8,gr0)
	cmp gr4,gr5,icc0
	bne icc0,2,.L18
	addi gr8,#1,gr8
	ret
.L17:
	setlos #0, gr8
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	cmpi gr10, #0, icc0
	andi gr9, #255, gr5
	bne icc0,2,.L27
	bra .L30
.L29:
	addi gr8,#1,gr8
	beq icc1,0,.L30
.L27:
	ldub @(gr8,gr0),gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc0
	bne icc0,2,.L29
	ret
.L30:
	setlos #0, gr8
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L33
	bra .L37
.L35:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	beq icc1,0,.L37
.L33:
	ldub @(gr8,gr0),gr4
	ldub @(gr9,gr0),gr5
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc0
	beq icc0,2,.L35
	sub gr4,gr5,gr8
	ret
.L37:
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
	beq icc0,0,.L41
	call memcpy
	mov gr8, gr4
.L41:
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
	bra .L46
.L48:
	ldub @(gr8,gr0),gr5
	addi gr4,#-1,gr4
	cmp gr5,gr7,icc0
	beq icc0,0,.L45
.L46:
	cmp gr4,gr6,icc0
	mov gr4, gr8
	bne icc0,2,.L48
	setlos #0, gr8
.L45:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	cmpi gr10, #0, icc0
	beq icc0,0,.L50
	add gr8,gr10,gr5
	mov gr8, gr4
.L51:
	stb gr9, @(gr4,gr0)
	addi gr4,#1,gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L51
.L50:
	ret
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L57
.L58:
	ldsbi @(gr9,1),gr4
	addi gr8,#1,gr8
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	addi gr9,#1,gr9
	bne icc0,2,.L58
.L57:
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	ldsb @(gr8,gr0),gr4
	andi gr9, #255, gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L64
	bra .L63
.L66:
	ldsbi @(gr8,1),gr4
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L63
.L64:
	andi gr4,#0xff,gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L66
.L63:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L72:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc1
	cmpi gr4, #0, icc0
	beq icc1,0,.L71
	addi gr8,#1,gr8
	bne icc0,2,.L72
	setlos #0, gr8
.L71:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L76
	setlos #1, gr4
	addi gr9,#-1,gr7
	bra .L75
.L77:
	ldsb @(gr8,gr4),gr5
	addi gr4,#1,gr4
	ldsb @(gr7,gr4),gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L76
.L75:
	cmpi gr5, #0, icc0
	bne icc0,2,.L77
.L76:
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
	mov gr8, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L80
.L81:
	ldsbi @(gr5,1),gr4
	addi gr5,#1,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L81
.L80:
	sub gr5,gr8,gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L89
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L86
	addi gr10,#-1,gr6
	add gr8,gr6,gr6
	bra .L87
.L99:
	beq icc1,0,.L86
	bne icc2,0,.L86
	ldub @(gr8,gr0),gr4
	addi gr9,#1,gr9
	cmpi gr4, #0, icc0
	beq icc0,0,.L86
.L87:
	ldub @(gr9,gr0),gr5
	cmp gr8,gr6,icc1
	cmpi gr5, #0, icc0
	addi gr8,#1,gr8
	cmp gr5,gr4,icc2
	bne icc0,2,.L99
.L86:
	ldub @(gr9,gr0),gr5
	sub gr4,gr5,gr8
	ret
.L89:
	setlos #0, gr8
	ret
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L100
	andi gr10, #-2, gr6
	add gr8,gr6,gr6
.L102:
	ldsbi @(gr8,1),gr5
	ldsb @(gr8,gr0),gr4
	addi gr8,#2,gr8
	stb gr5, @(gr9,gr0)
	stbi gr4, @(gr9,1)
	cmp gr8,gr6,icc0
	addi gr9,#2,gr9
	bne icc0,2,.L102
.L100:
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
	beq icc0,0,.L108
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L108:
	setlos #1, gr8
	ret
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L111
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L111:
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
	beq icc0,0,.L118
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L118:
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
	bls icc0,2,.L124
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bhi icc0,2,.L125
.L124:
	setlos #1, gr8
	ret
.L125:
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L124
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
	bls icc0,0,.L134
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L132
	setlos #-8234, gr4
	sethi #hi(#47061), gr5
	add gr8,gr4,gr4
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L132
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L132
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	sethi #hi(#1048579), gr5
	add gr8,gr4,gr4
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L133
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L132:
	setlos #1, gr8
	ret
.L134:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L133:
	setlos #0, gr8
	ret
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L137
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L137:
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
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	mov gr8, gr18
	mov gr9, gr19
	mov gr15, gr20
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L142
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L143
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	bgt icc0,2,.L147
	setlos #0, gr8
	setlos #0, gr9
.L139:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L147:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
	bra .L139
.L142:
	mov gr18, gr8
	mov gr19, gr9
	bra .L139
.L143:
	mov gr22, gr8
	mov gr23, gr9
	bra .L139
	.size	fdim, .-fdim
	.p2align 4
	.globl fdimf
	.type	fdimf, @function
fdimf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sti gr20, @(sp,8)
	mov gr9, gr20
	mov gr8, gr9
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr5, @(fp,8)
	mov gr8, gr18
	mov gr15, gr19
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L151
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L152
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	bgt icc0,2,.L156
	setlos #0, gr8
.L148:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L156:
	mov gr20, gr9
	mov gr19, gr15
	mov gr18, gr8
	call __subf
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L151:
	mov gr18, gr8
	bra .L148
.L152:
	mov gr20, gr8
	bra .L148
	.size	fdimf, .-fdimf
	.p2align 4
	.globl fmax
	.type	fmax, @function
fmax:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr5, @(fp,8)
	mov gr8, gr20
	mov gr9, gr21
	mov gr15, gr22
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L165
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
	bne icc0,2,.L166
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L165
.L164:
	mov gr20, gr8
	mov gr21, gr9
	bra .L157
.L166:
	cmpi gr5, #0, icc0
	beq icc0,2,.L164
.L165:
	mov gr18, gr8
	mov gr19, gr9
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
	.size	fmax, .-fmax
	.p2align 4
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sti gr18, @(sp,0)
	mov gr9, gr18
	mov gr8, gr9
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	mov gr8, gr19
	mov gr15, gr20
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L175
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L174
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L176
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L175
	mov gr19, gr18
.L175:
	mov gr18, gr8
	ldi @(sp,4), gr19
	ldi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L176:
	cmpi gr5, #0, icc0
	bne icc0,2,.L175
.L174:
	mov gr19, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
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
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr5, @(fp,8)
	mov gr8, gr20
	mov gr9, gr21
	mov gr15, gr22
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L185
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L184
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L186
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L185
.L184:
	mov gr20, gr8
	mov gr21, gr9
	bra .L177
.L186:
	cmpi gr5, #0, icc0
	beq icc0,2,.L184
.L185:
	mov gr18, gr8
	mov gr19, gr9
.L177:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
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
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr22, @(sp,16)
	sti gr5, @(fp,8)
	mov gr8, gr18
	mov gr9, gr19
	mov gr15, gr22
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L193
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L195
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L196
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L193
.L195:
	mov gr18, gr8
	mov gr19, gr9
	bra .L187
.L196:
	cmpi gr5, #0, icc0
	bne icc0,2,.L195
.L193:
	mov gr20, gr8
	mov gr21, gr9
.L187:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
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
	sti gr19, @(sp,4)
	mov gr9, gr19
	mov gr8, gr9
	sti gr18, @(sp,0)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	mov gr8, gr18
	mov gr15, gr20
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L203
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L205
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L206
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L205
	mov gr19, gr18
.L205:
	mov gr18, gr8
	ldi @(sp,4), gr19
	ldi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L206:
	cmpi gr5, #0, icc0
	bne icc0,2,.L205
.L203:
	mov gr19, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
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
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr22, @(sp,16)
	sti gr5, @(fp,8)
	mov gr8, gr18
	mov gr9, gr19
	mov gr15, gr22
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L213
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L215
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L216
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L213
.L215:
	mov gr18, gr8
	mov gr19, gr9
	bra .L207
.L216:
	cmpi gr5, #0, icc0
	bne icc0,2,.L215
.L213:
	mov gr20, gr8
	mov gr21, gr9
.L207:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
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
	beq icc0,0,.L220
	sethi #gotoffhi(s.0), gr7
	ldi @(gr15,#got12(_gp)), gr5
	mov gr7, gr4
	sethi #gprelhi(digits), gr6
	setlo #gotofflo(s.0), gr4
	setlo #gprello(digits), gr6
	add gr4,gr15,gr4
	add gr6,gr5,gr6
.L219:
	andi gr8, #63, gr5
	ldsb @(gr6,gr5),gr5
	srlicc gr8, #6, gr8, icc0
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	bne icc0,2,.L219
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr4,gr0)
	ret
.L220:
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
	sti gr5, @(fp,8)
	add gr18,gr15,gr18
	ld @(gr18,gr0), gr8
	ldi @(gr18,4), gr9
	sethi #hi(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1481765933), gr10
	setlo #lo(#1284865837), gr11
	call __mulll
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
	beq icc0,0,.L240
	mov gr9, gr18
	setlos #0, gr19
	bra .L242
.L254:
	add gr18,gr20,gr18
	beq icc1,0,.L240
.L242:
	ldd @(gr27,gr0), gr14
	mov gr18, gr9
	mov gr21, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc0
	mov gr18, gr26
	cmp gr25,gr19,icc1
	bne icc0,2,.L254
.L239:
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
.L240:
	addi gr25,#1,gr6
	umul gr20,gr25,gr4
	st gr6, @(gr22,gr0)
	cmpi gr20, #0, icc0
	add gr23,gr5,gr26
	beq icc0,0,.L239
	mov gr20, gr10
	mov gr21, gr9
	mov gr26, gr8
	mov gr24, gr15
	call memmove
	bra .L239
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
	beq icc0,0,.L256
	mov gr9, gr18
	setlos #0, gr19
	bra .L258
.L266:
	add gr18,gr22,gr18
	beq icc1,0,.L256
.L258:
	ldd @(gr21,gr0), gr14
	mov gr18, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc0
	mov gr18, gr24
	cmp gr23,gr19,icc1
	bne icc0,2,.L266
.L255:
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
.L256:
	setlos #0, gr24
	bra .L255
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
.L275:
	ldsb @(gr4,gr0),gr5
	addi gr5,#-9,gr6
	cmpi gr5,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L269
	bls icc1,2,.L269
	cmpi gr5,#43,icc0
	beq icc0,0,.L270
	cmpi gr5,#45,icc0
	bne icc0,2,.L289
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L280
	setlos #1, gr7
.L273:
	setlos #0, gr8
.L277:
	ldsbi @(gr4,1),gr5
	smuli gr8,#10,gr8
	sub gr9,gr6,gr8
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	addi gr4,#1,gr4
	bls icc0,2,.L277
	cmpi gr7, #0, icc0
	beq icc0,0,.L274
	ret
.L269:
	addi gr4,#1,gr4
	bra .L275
.L289:
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L288
.L281:
	setlos #0, gr7
	bra .L273
.L270:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bls icc0,2,.L281
.L288:
	setlos #0, gr8
.L274:
	sub gr0,gr8,gr8
	ret
.L280:
	setlos #0, gr8
	ret
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	sethi #gotofffuncdeschi(atoi), gr4
	setlo #gotofffuncdesclo(atoi), gr4
	ldd @(gr4,gr15), gr14
	jmpl @(gr14,gr0)
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	mov gr8, gr6
.L298:
	ldsb @(gr6,gr0),gr10
	addi gr10,#-9,gr7
	cmpi gr10,#32,icc0
	cmpi gr7,#4,icc1
	beq icc0,0,.L292
	bls icc1,2,.L292
	cmpi gr10,#43,icc0
	beq icc0,0,.L293
	cmpi gr10,#45,icc0
	bne icc0,2,.L312
	ldsbi @(gr6,1),gr10
	addi gr6,#1,gr6
	addi gr10,#-48,gr7
	cmpi gr7,#9,icc0
	bhi icc0,0,.L303
	setlos #1, gr18
.L296:
	setlos #0, gr8
	setlos #0, gr9
.L300:
	srli gr9, #30, gr10
	slli gr8,#2,gr4
	slli gr9,#2,gr5
	addcc gr9,gr5,gr9,icc0
	or gr10, gr4, gr4
	ldsbi @(gr6,1),gr10
	addx gr8,gr4,gr8,icc0
	mov gr7, gr13
	srli gr9, #31, gr15
	srai gr7, #31, gr12
	slli gr8,#1,gr14
	slli gr9,#1,gr11
	addi gr10,#-48,gr7
	or gr15, gr14, gr8
	subcc gr11,gr13,gr9,icc1
	cmpi gr7,#9,icc0
	addi gr6,#1,gr6
	subx gr8,gr12,gr8,icc1
	bls icc0,2,.L300
	cmpi gr18, #0, icc0
	bne icc0,2,.L291
.L297:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L291:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L292:
	addi gr6,#1,gr6
	bra .L298
.L312:
	addi gr10,#-48,gr7
	cmpi gr7,#9,icc0
	bhi icc0,0,.L311
.L304:
	setlos #0, gr18
	bra .L296
.L293:
	ldsbi @(gr6,1),gr10
	addi gr6,#1,gr6
	addi gr10,#-48,gr7
	cmpi gr7,#9,icc0
	bls icc0,2,.L304
.L311:
	setlos #0, gr8
	setlos #0, gr9
	bra .L297
.L303:
	setlos #0, gr8
	setlos #0, gr9
	bra .L291
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
	bne icc0,2,.L317
	bra .L314
.L323:
	ble icc1,0,.L313
	sub gr18,gr19,gr18
	cmpi gr18, #0, icc0
	add gr20,gr21,gr22
	beq icc0,0,.L314
.L317:
	srli gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	ldd @(gr24,gr0), gr14
	mov gr20, gr9
	mov gr23, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	cmpi gr8,#0,icc1
	addi gr18,#-1,gr18
	bp icc0,2,.L323
	mov gr19, gr18
	cmpi gr18, #0, icc0
	bne icc0,2,.L317
.L314:
	setlos #0, gr20
.L313:
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
	bne icc0,2,.L328
	bra .L325
.L336:
	ckgt icc1, cc4
	setlos #1, gr4
	csra gr18, gr4, gr19, cc4, 1
	cmpi gr19, #0, icc0
	cadd gr20, gr21, gr22, cc4, 1
	mov gr19, gr18
	beq icc0,0,.L325
.L328:
	srai gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	ldd @(gr25,gr0), gr14
	mov gr23, gr10
	mov gr20, gr9
	mov gr24, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	cmpi gr8,#0,icc1
	addi gr18,#-1,gr18
	bne icc0,2,.L336
.L324:
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
.L325:
	setlos #0, gr20
	bra .L324
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
	bn icc0,0,.L341
	ret
.L341:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	ret
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-40,sp
	movsg lr, gr5
	sti fp, @(sp,24)
	addi sp,#24,fp
	sti gr3, @(fp,4)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	mov gr15, gr18
	call __divll
	st gr8, @(gr19,gr0)
	sti gr9, @(gr19,4)
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr15
	mov gr20, gr8
	mov gr21, gr9
	call __modll
	sti gr8, @(gr19,8)
	sti gr9, @(gr19,12)
	mov gr19, gr8
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
	bn icc0,0,.L348
	ret
.L348:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	ret
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-40,sp
	movsg lr, gr5
	sti fp, @(sp,24)
	addi sp,#24,fp
	sti gr3, @(fp,4)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	mov gr15, gr18
	call __divll
	st gr8, @(gr19,gr0)
	sti gr9, @(gr19,4)
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr15
	mov gr20, gr8
	mov gr21, gr9
	call __modll
	sti gr8, @(gr19,8)
	sti gr9, @(gr19,12)
	mov gr19, gr8
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
	bne icc0,2,.L351
	bra .L354
.L353:
	ldi @(gr8,4), gr4
	addi gr8,#4,gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L354
.L351:
	cmp gr9,gr4,icc0
	bne icc0,2,.L353
	ret
.L354:
	setlos #0, gr8
	ret
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	ld @(gr8,gr0), gr6
	ld @(gr9,gr0), gr5
	cmp gr6,gr5,icc0
	bne icc0,0,.L358
	setlos #4, gr4
	addi gr9,#-4,gr7
	bra .L357
.L366:
	beq icc1,0,.L358
	ld @(gr8,gr4), gr6
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr5
	cmp gr6,gr5,icc0
	bne icc0,0,.L358
.L357:
	cmpi gr6, #0, icc0
	cmpi gr5, #0, icc1
	bne icc0,2,.L366
.L358:
	cmp gr6,gr5,icc0
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
.L368:
	ld @(gr9,gr5), gr4
	st gr4, @(gr8,gr5)
	cmpi gr4, #0, icc0
	addi gr5,#4,gr5
	bne icc0,2,.L368
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	mov gr8, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L371
.L372:
	ldi @(gr5,4), gr4
	addi gr5,#4,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L372
.L371:
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L376
	bra .L381
.L383:
	beq icc1,0,.L378
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc2,0,.L381
.L376:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmpi gr4, #0, icc1
	cmp gr4,gr5,icc0
	addicc gr10, #-1, gr10, icc2
	beq icc0,2,.L383
.L378:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L384
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L384:
	setlos #-1, gr8
	ret
.L381:
	setlos #0, gr8
	ret
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	bne icc0,2,.L386
	bra .L389
.L388:
	addi gr8,#4,gr8
	beq icc1,0,.L389
.L386:
	ld @(gr8,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr9,icc0
	bne icc0,2,.L388
	ret
.L389:
	setlos #0, gr8
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L392
	bra .L397
.L394:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc1,0,.L397
.L392:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr5,gr4,icc0
	beq icc0,2,.L394
	blt icc0,2,.L400
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L397:
	setlos #0, gr8
	ret
.L400:
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
	beq icc0,0,.L402
	slli gr10,#2,gr10
	call memcpy
	mov gr8, gr4
.L402:
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
	beq icc0,0,.L407
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	addi gr10,#-1,gr4
	bnc icc0,2,.L417
	cmpi gr10, #0, icc0
	beq icc0,0,.L407
	slli gr4,#2,gr4
.L410:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
	cmpi gr4,#-4,icc0
	bne icc0,2,.L410
.L407:
	ret
.L417:
	cmpi gr10, #0, icc0
	setlos #0, gr5
	beq icc0,0,.L407
.L409:
	ld @(gr9,gr5), gr6
	addi gr4,#-1,gr4
	st gr6, @(gr8,gr5)
	cmpi gr4,#-1,icc0
	addi gr5,#4,gr5
	bne icc0,2,.L409
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L419
	mov gr8, gr5
.L420:
	addi gr4,#-1,gr4
	st gr9, @(gr5,gr0)
	cmpi gr4,#-1,icc0
	addi gr5,#4,gr5
	bne icc0,2,.L420
.L419:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L426
	cmpi gr10, #0, icc0
	beq icc0,0,.L425
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
.L428:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L428
.L425:
	ret
.L426:
	cmp gr8,gr9,icc0
	beq icc0,0,.L425
	cmpi gr10, #0, icc0
	beq icc0,0,.L425
	setlos #0, gr4
.L429:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L429
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
	bra .L454
.L452:
	beq icc1,0,.L456
.L454:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	addi gr4,#1,gr4
	cmpi gr4,#32,icc1
	beq icc0,2,.L452
	mov gr4, gr8
	ret
.L456:
	setlos #0, gr8
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L460
	andicc gr8, #1, gr4, icc0
	bne icc0,0,.L457
	setlos #1, gr4
.L459:
	srai gr8, #1, gr8
	andicc gr8, #1, gr0, icc0
	addi gr4,#1,gr4
	beq icc0,2,.L459
.L457:
	mov gr4, gr8
	ret
.L460:
	setlos #0, gr4
	mov gr4, gr8
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi sp,#-24,sp
	sethi #hi(#4286578687), gr9
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	setlo #lo(#4286578687), gr9
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr5, @(fp,8)
	mov gr8, gr19
	mov gr15, gr18
	call __ltsf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L466
	sethi #hi(#2139095039), gr9
	mov gr18, gr15
	setlo #lo(#2139095039), gr9
	mov gr19, gr8
	call __gtsf2
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
.L466:
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
	sethi #hi(#4293918719), gr10
	sethi #hi(#4294967295), gr11
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	setlo #lo(#4293918719), gr10
	setlo #lo(#4294967295), gr11
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	sti gr5, @(fp,8)
	mov gr8, gr20
	mov gr9, gr21
	mov gr15, gr18
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L470
	sethi #hi(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	mov gr21, gr9
	mov gr18, gr15
	setlo #lo(#2146435071), gr10
	setlo #lo(#4294967295), gr11
	mov gr20, gr8
	call __gtdf2
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L470:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
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
	sethi #hi(#4293918719), gr10
	sethi #hi(#4294967295), gr11
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	setlo #lo(#4293918719), gr10
	setlo #lo(#4294967295), gr11
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	sti gr5, @(fp,8)
	mov gr8, gr20
	mov gr9, gr21
	mov gr15, gr18
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L474
	sethi #hi(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	mov gr21, gr9
	mov gr18, gr15
	setlo #lo(#2146435071), gr10
	setlo #lo(#4294967295), gr11
	mov gr20, gr8
	call __gtdf2
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L474:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
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
	sti gr18, @(sp,0)
	mov gr8, gr18
	mov gr9, gr8
	sti gr5, @(fp,8)
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
	movsg lr, gr5
	addi sp,#16,fp
	sti gr18, @(sp,0)
	mov gr9, gr18
	mov gr8, gr9
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr5, @(fp,8)
	sti gr19, @(sp,4)
	mov gr8, gr20
	mov gr15, gr21
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L477
	mov gr20, gr9
	mov gr21, gr15
	mov gr20, gr8
	call __addf
	mov gr20, gr9
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L477
	cmpi gr18, #0, icc0
	bn icc0,0,.L491
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
.L479:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L480
.L481:
	mov gr20, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
.L480:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L477
.L482:
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr19
	bne icc0,2,.L481
	srai gr4, #1, gr18
	bra .L482
.L477:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L491:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L479
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl ldexp
	.type	ldexp, @function
ldexp:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sti gr18, @(sp,0)
	mov gr9, gr11
	mov gr10, gr18
	mov gr8, gr10
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr5, @(fp,8)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr8, gr20
	mov gr9, gr21
	mov gr15, gr19
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L493
	mov gr20, gr10
	mov gr21, gr11
	mov gr19, gr15
	mov gr20, gr8
	mov gr21, gr9
	call __addd
	mov gr20, gr10
	mov gr21, gr11
	mov gr19, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L493
	cmpi gr18, #0, icc0
	bn icc0,0,.L507
	sethi #hi(#1073741824), gr22
	setlo #lo(#1073741824), gr22
	setlos #0, gr23
.L495:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L496
.L497:
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L496:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L493
.L498:
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr22
	mov gr9, gr23
	bne icc0,2,.L497
	srai gr4, #1, gr18
	bra .L498
.L493:
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
.L507:
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
	bra .L495
	.size	ldexp, .-ldexp
	.p2align 4
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sti gr18, @(sp,0)
	mov gr9, gr11
	mov gr10, gr18
	mov gr8, gr10
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr5, @(fp,8)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr8, gr20
	mov gr9, gr21
	mov gr15, gr19
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L509
	mov gr20, gr10
	mov gr21, gr11
	mov gr19, gr15
	mov gr20, gr8
	mov gr21, gr9
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L509
	cmpi gr18, #0, icc0
	bn icc0,0,.L523
	sethi #hi(#1073741824), gr22
	setlo #lo(#1073741824), gr22
	setlos #0, gr23
.L511:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L512
.L513:
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L512:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L509
.L514:
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr22
	mov gr9, gr23
	bne icc0,2,.L513
	srai gr4, #1, gr18
	bra .L514
.L509:
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
.L523:
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
	bra .L511
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	cmpi gr10, #0, icc0
	beq icc0,0,.L525
	setlos #0, gr4
.L526:
	ldsb @(gr8,gr4),gr5
	ldsb @(gr9,gr4),gr6
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L526
.L525:
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	mov gr8, gr4
	beq icc0,0,.L532
.L533:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	bne icc0,2,.L533
.L532:
	cmpi gr10, #0, icc0
	bne icc0,2,.L534
	bra .L535
.L536:
	addi gr9,#1,gr9
	addi gr4,#1,gr4
	beq icc1,0,.L535
.L534:
	ldsb @(gr9,gr0),gr5
	addicc gr10, #-1, gr10, icc1
	stb gr5, @(gr4,gr0)
	cmpi gr5, #0, icc0
	bne icc0,2,.L536
	ret
.L535:
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
	beq icc0,0,.L544
.L545:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L547
.L544:
	ret
.L547:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc0
	bne icc0,2,.L545
	ret
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr6
	movgs gr9, lcr
	cmpi gr6, #0, icc0
	beq icc0,0,.L555
.L551:
	movsg lcr, gr4
	bra .L554
.L553:
	beq icc1,0,.L552
.L554:
	ldsb @(gr4,gr0),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	cmp gr5,gr6,icc1
	bne icc0,2,.L553
	ldsbi @(gr8,1),gr6
	addi gr8,#1,gr8
	cmpi gr6, #0, icc0
	bne icc0,2,.L551
.L555:
	setlos #0, gr8
.L552:
	ret
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L559:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc1
	ckeq icc1, cc5
	cmpi gr4, #0, icc0
	cmov gr8, gr5, cc5, 1
	addi gr8,#1,gr8
	bne icc0,2,.L559
	mov gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	ldsb @(gr9,gr0),gr10
	cmpi gr10, #0, icc0
	beq icc0,0,.L561
	mov gr9, gr4
.L563:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	bne icc0,2,.L563
	subcc gr4, gr9, gr4, icc0
	beq icc0,0,.L561
	andi gr10,#0xff,gr13
	addi gr4,#-1,gr12
	bra .L569
.L582:
	cmpi gr4, #0, icc0
	addi gr8,#1,gr8
	beq icc0,0,.L581
.L569:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L582
	mov gr13, gr5
	add gr8,gr12,gr11
	mov gr9, gr6
	mov gr8, gr4
	bra .L565
.L583:
	beq icc1,0,.L566
	bne icc2,0,.L566
	ldub @(gr4,gr0),gr5
	addi gr6,#1,gr6
	cmpi gr5, #0, icc0
	beq icc0,0,.L566
.L565:
	ldub @(gr6,gr0),gr7
	cmp gr11,gr4,icc1
	cmpi gr7, #0, icc0
	addi gr4,#1,gr4
	cmp gr7,gr5,icc2
	bne icc0,2,.L583
.L566:
	ldub @(gr6,gr0),gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L561
	addi gr8,#1,gr8
	bra .L569
.L581:
	setlos #0, gr8
.L561:
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
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr10, gr22
	mov gr11, gr23
	setlos #0, gr10
	setlos #0, gr11
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	mov gr8, gr18
	mov gr9, gr19
	mov gr15, gr20
	call __ltdf2
	cmpi gr8, #0, icc0
	setlos #0, gr10
	setlos #0, gr11
	bn icc0,0,.L594
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L588
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L587
.L588:
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
.L594:
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L588
.L587:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	bra .L588
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	cmpi gr11, #0, icc0
	beq icc0,0,.L601
	cmp gr9,gr11,icc0
	bc icc0,0,.L603
	sub gr9,gr11,gr9
	add gr8,gr9,gr9
	cmp gr8,gr9,icc0
	bhi icc0,0,.L603
	ldsb @(gr10,gr0),gr12
	bra .L600
.L597:
	cmp gr9,gr8,icc0
	bc icc0,0,.L603
.L600:
	ldsb @(gr8,gr0),gr4
	mov gr8, gr7
	cmp gr4,gr12,icc0
	addi gr8,#1,gr8
	bne icc0,2,.L597
	cmpi gr11,#1,icc0
	beq icc0,0,.L595
	setlos #1, gr4
.L598:
	ldub @(gr7,gr4),gr6
	ldub @(gr10,gr4),gr5
	addi gr4,#1,gr4
	cmp gr6,gr5,icc0
	cmp gr11,gr4,icc1
	bne icc0,0,.L597
	bne icc1,2,.L598
.L595:
	mov gr7, gr8
	ret
.L603:
	setlos #0, gr7
	mov gr7, gr8
	ret
.L601:
	mov gr8, gr7
	mov gr7, gr8
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
	beq icc0,0,.L607
	call memmove
	mov gr8, gr4
.L607:
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
	addi sp,#-56,sp
	sti fp, @(sp,40)
	movsg lr, gr5
	addi sp,#40,fp
	sti gr26, @(sp,32)
	setlos #0, gr11
	mov gr10, gr26
	setlos #0, gr10
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	sti gr27, @(sp,36)
	mov gr8, gr18
	mov gr9, gr19
	mov gr15, gr20
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L633
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L634
	setlos #0, gr27
.L614:
	sethi #hi(#1071644672), gr24
	sethi #hi(#1072693248), gr22
	setlos #0, gr21
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
.L620:
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __muld
	mov gr8, gr18
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr20, gr15
	mov gr9, gr19
	call __gedf2
	cmpi gr8, #0, icc0
	addi gr21,#1,gr21
	bp icc0,2,.L620
.L621:
	st gr21, @(gr26,gr0)
	cmpi gr27, #0, icc0
	beq icc0,0,.L627
.L616:
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr18, gr4, gr8
	mov gr19, gr9
.L611:
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
.L634:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L617
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L626
.L617:
	st gr0, @(gr26,gr0)
	mov gr18, gr8
	mov gr19, gr9
	bra .L611
.L633:
	sethi #hi(#-2147483648), gr4
	sethi #hi(#3220176896), gr10
	setlo #lo(#-2147483648), gr4
	setlo #lo(#3220176896), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	xor gr18, gr4, gr22
	call __ledf2
	cmpi gr8,#0,icc0
	mov gr19, gr23
	bgt icc0,0,.L635
	mov gr22, gr18
	setlos #1, gr27
	bra .L614
.L627:
	mov gr18, gr8
	mov gr19, gr9
	bra .L611
.L635:
	sethi #hi(#3219128320), gr10
	setlo #lo(#3219128320), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	bgt icc0,2,.L624
	st gr0, @(gr26,gr0)
	mov gr22, gr18
	bra .L616
.L624:
	setlos #1, gr27
.L615:
	mov gr22, gr18
	sethi #hi(#1071644672), gr22
	mov gr23, gr19
	setlos #0, gr21
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
.L622:
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __addd
	mov gr8, gr18
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr20, gr15
	mov gr9, gr19
	call __ltdf2
	cmpi gr8, #0, icc0
	addi gr21,#-1,gr21
	bn icc0,2,.L622
	bra .L621
.L626:
	mov gr18, gr22
	mov gr19, gr23
	setlos #0, gr27
	bra .L615
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
	beq icc0,0,.L636
.L639:
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
	bne icc0,2,.L639
.L636:
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
	bnc icc0,0,.L644
	setlos #32, gr8
	setlos #1, gr4
	bra .L643
.L647:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L657
	beq icc1,0,.L646
.L643:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L647
.L644:
	setlos #0, gr8
.L649:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L649
.L646:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L657:
	cmpi gr4, #0, icc0
	setlos #0, gr8
	bne icc0,2,.L644
	bra .L646
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
	beq icc0,0,.L660
	slli gr8,#8,gr8
	call __clzsi2
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L660:
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
	beq icc0,0,.L667
.L665:
	mov gr6, gr8
	call __clzdi2
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L667:
	cmp gr5,gr8,icc0
	bne icc0,2,.L665
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
	beq icc0,0,.L668
.L670:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc0
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc0,2,.L670
.L668:
	mov gr6, gr8
	ret
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	cmp gr8,gr9,icc0
	srli gr10, #3, gr7
	andi gr10, #-8, gr4
	bc icc0,2,.L674
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bls icc0,2,.L687
.L674:
	cmpi gr7, #0, icc0
	beq icc0,0,.L677
	slli gr7,#3,gr7
	mov gr9, gr5
	mov gr8, gr6
	add gr7,gr9,gr7
.L678:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	addi gr5,#8,gr5
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	cmp gr5,gr7,icc0
	addi gr6,#8,gr6
	bne icc0,2,.L678
.L677:
	cmp gr10,gr4,icc0
	bls icc0,0,.L673
.L679:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L679
.L673:
	ret
.L687:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr10
	beq icc0,0,.L673
.L675:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L675
	ret
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	cmp gr8,gr9,icc0
	srli gr10, #1, gr6
	bc icc0,2,.L689
	add gr9,gr10,gr4
	cmp gr8,gr4,icc0
	bls icc0,2,.L703
.L689:
	cmpi gr6, #0, icc0
	beq icc0,0,.L692
	slli gr6,#1,gr6
	setlos #0, gr4
.L693:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L693
.L692:
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L688
	addi gr10,#-1,gr4
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
.L688:
	ret
.L703:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L688
.L690:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L690
	ret
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	cmp gr8,gr9,icc0
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	bc icc0,2,.L705
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bls icc0,2,.L718
.L705:
	cmpi gr7, #0, icc0
	beq icc0,0,.L708
	slli gr7,#2,gr7
	setlos #0, gr5
.L709:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
	cmp gr7,gr5,icc0
	bne icc0,2,.L709
.L708:
	cmp gr10,gr4,icc0
	bls icc0,0,.L704
.L710:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L710
.L704:
	ret
.L718:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr10
	beq icc0,0,.L704
.L706:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L706
	ret
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
	movsg lr, gr5
	mov sp, fp
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
	movsg lr, gr5
	mov sp, fp
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
	movsg lr, gr5
	mov sp, fp
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
.L727:
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L725
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L727
.L725:
	ret
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
.L731:
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L729
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L731
.L729:
	ret
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi sp,#-24,sp
	sethi #hi(#1191182336), gr9
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	setlo #lo(#1191182336), gr9
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr5, @(fp,8)
	mov gr8, gr19
	mov gr15, gr18
	call __gesf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L739
	mov gr18, gr15
	mov gr19, gr8
	call __ftoi
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L739:
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	mov gr18, gr15
	mov gr19, gr8
	call __subf
	mov gr18, gr15
	call __ftoi
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
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
.L741:
	sra gr8, gr4, gr5
	addi gr4,#1,gr4
	andi gr5, #1, gr5
	cmpi gr4,#16,icc0
	add gr6,gr5,gr6
	bne icc0,2,.L741
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
.L744:
	sra gr6, gr4, gr5
	addi gr4,#1,gr4
	andi gr5, #1, gr5
	cmpi gr4,#16,icc0
	add gr8,gr5,gr8
	bne icc0,2,.L744
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L746
.L748:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc0
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc0,2,.L748
.L746:
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L751
	cmpi gr9, #0, icc0
	beq icc0,0,.L751
.L753:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	srlicc gr9, #1, gr9, icc0
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	bne icc0,2,.L753
.L751:
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
	bls icc0,0,.L759
	setlos #32, gr8
	setlos #1, gr4
	bra .L758
.L762:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L760
	beq icc1,0,.L761
.L758:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L762
.L759:
	setlos #0, gr8
.L764:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L764
.L761:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L760:
	cmpi gr4, #0, icc0
	bne icc0,2,.L759
	setlos #0, gr8
	bra .L761
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	mov gr8, gr19
	mov gr9, gr20
	mov gr15, gr18
	call __ltsf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L776
	mov gr20, gr9
	mov gr18, gr15
	mov gr19, gr8
	call __gtsf2
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
.L776:
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
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	sti gr5, @(fp,8)
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	mov gr15, gr18
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L780
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
.L777:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L780:
	setlos #-1, gr8
	bra .L777
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
	bn icc0,0,.L797
	beq icc0,0,.L789
	setlos #0, gr10
.L785:
	setlos #0, gr6
	setlos #0, gr7
	bra .L788
.L798:
	beq icc1,0,.L787
.L788:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	addi gr6,#1,gr6
	sraicc gr9, #1, gr9, icc0
	cmpi gr6,#32,icc1
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	bne icc0,2,.L798
.L787:
	cmpi gr10, #0, icc0
	beq icc0,0,.L783
	sub gr0,gr7,gr7
.L783:
	mov gr7, gr8
	ret
.L797:
	sub gr0,gr9,gr9
	setlos #1, gr10
	bra .L785
.L789:
	setlos #0, gr7
	bra .L783
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	cmpi gr9, #0, icc0
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr7, cc4, 1
	cmov gr0, gr7, cc4, 0
	ckn icc0, cc4
	csub gr0, gr9, gr9, cc4, 1
	setlos #1, gr5
	cmp gr8,gr9,icc0
	cxor gr7, gr5, gr7, cc4, 1
	mov gr8, gr6
	setlos #1, gr4
	bls icc0,0,.L803
	setlos #32, gr5
	setlos #1, gr4
	bra .L802
.L806:
	beq icc1,0,.L805
.L802:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	addicc gr5, #-1, gr5, icc1
	slli gr4,#1,gr4
	bhi icc0,2,.L806
.L805:
	cmpi gr4, #0, icc0
	setlos #0, gr8
	beq icc0,0,.L804
.L803:
	setlos #0, gr8
.L808:
	cmp gr9,gr6,icc0
	ckls icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr6, gr9, gr6, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L808
.L804:
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
	bls icc0,0,.L827
	setlos #32, gr6
	setlos #1, gr5
	bra .L821
.L825:
	beq icc1,0,.L824
.L821:
	slli gr4,#1,gr4
	cmp gr8,gr4,icc0
	addicc gr6, #-1, gr6, icc1
	slli gr5,#1,gr5
	bhi icc0,2,.L825
.L824:
	cmpi gr5, #0, icc0
	beq icc0,0,.L823
.L827:
	cmp gr7,gr4,icc1
	cknc icc1, cc5
	srlicc gr5, #1, gr5, icc0
	csub gr7, gr4, gr7, cc5, 1
	srli gr4, #1, gr4
	bne icc0,2,.L827
.L823:
	cmpi gr10, #0, icc0
	mov gr7, gr8
	ckne icc0, cc4
	csub gr0, gr7, gr8, cc4, 1
	ret
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	sethi #hi(#0),gr8
	sethi #hi(#0),gr9
	cmp gr9,gr8,icc0
	setlos #1, gr4
	bnc icc0,0,.L840
	setlos #16, gr6
	setlos #1, gr4
.L839:
	slli gr9,#16,gr5
	srai gr5, #16, gr5
	cmpi gr5, #0, icc0
	slli gr9,#1,gr7
	slli gr4,#1,gr5
	addicc gr6, #-1, gr6, icc1
	bn icc0,0,.L840
	mov gr7, gr9
	sethi #hi(#0),gr9
	mov gr5, gr4
	cmp gr8,gr9,icc0
	sethi #hi(#0),gr4
	bls icc0,0,.L850
	bne icc1,2,.L839
.L848:
	cmpi gr10, #0, icc0
	setlos #0, gr6
	ckeq icc0, cc4
	cmov gr6, gr8, cc4, 1
	ret
.L850:
	cmpi gr4, #0, icc0
	beq icc0,0,.L848
.L840:
	setlos #0, gr6
.L845:
	cmp gr8,gr9,icc0
	sub gr8,gr9,gr5
	bc icc0,2,.L844
	mov gr5, gr8
	or gr4, gr6, gr6
	sethi #hi(#0),gr8
.L844:
	srlicc gr4, #1, gr4, icc0
	srli gr9, #1, gr9
	bne icc0,2,.L845
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr6, gr8, cc4, 1
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp gr8,gr9,icc0
	mov gr8, gr5
	setlos #1, gr4
	bls icc0,0,.L853
	setlos #32, gr8
	setlos #1, gr4
	bra .L852
.L856:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L854
	beq icc1,0,.L855
.L852:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L856
.L853:
	setlos #0, gr8
.L858:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L858
.L855:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L854:
	cmpi gr4, #0, icc0
	bne icc0,2,.L853
	setlos #0, gr8
	bra .L855
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
	beq icc0,2,.L873
	addi gr10,#-32,gr10
	srai gr8, #31, gr4
	sra gr8, gr10, gr9
	mov gr4, gr8
.L875:
	ret
.L873:
	cmpi gr10, #0, icc0
	beq icc0,0,.L875
	setlos #32, gr5
	sub gr5,gr10,gr5
	sll gr8,gr5,gr5
	srl gr9, gr10, gr9
	sra gr8, gr10, gr4
	or gr5, gr9, gr9
	mov gr4, gr8
	bra .L875
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
	blt icc0,0,.L884
	bgt icc0,0,.L885
	cmp gr9,gr11,icc0
	bc icc0,0,.L884
	bhi icc0,0,.L885
	setlos #1, gr8
	ret
.L884:
	setlos #0, gr8
	ret
.L885:
	setlos #2, gr8
	ret
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp gr8,gr10,icc0
	blt icc0,0,.L890
	bgt icc0,0,.L891
	cmp gr9,gr11,icc0
	bc icc0,0,.L890
	bhi icc0,0,.L891
	setlos #1, gr8
	addi gr8,#-1,gr8
	ret
.L890:
	setlos #0, gr8
	addi gr8,#-1,gr8
	ret
.L891:
	setlos #2, gr8
	addi gr8,#-1,gr8
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
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sethi #hi(#1072693248), gr20
	sti gr5, @(fp,8)
	andicc gr10, #1, gr0, icc0
	mov gr10, gr24
	mov gr10, gr18
	setlo #lo(#1072693248), gr20
	setlos #0, gr21
	mov gr15, gr19
	mov gr8, gr22
	mov gr9, gr23
	beq icc0,2,.L906
.L908:
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L906:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L907
.L909:
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr22
	mov gr9, gr23
	bne icc0,2,.L908
	srai gr4, #1, gr18
	bra .L909
.L907:
	cmpi gr24, #0, icc0
	bp icc0,2,.L905
	sethi #hi(#1072693248), gr8
	mov gr20, gr10
	mov gr21, gr11
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
	mov gr8, gr20
	mov gr9, gr21
.L905:
	mov gr20, gr8
	mov gr21, gr9
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
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sethi #hi(#1065353216), gr20
	sti gr5, @(fp,8)
	andicc gr9, #1, gr0, icc0
	mov gr9, gr22
	mov gr9, gr18
	setlo #lo(#1065353216), gr20
	mov gr15, gr21
	mov gr8, gr19
	beq icc0,2,.L913
.L915:
	mov gr20, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
.L913:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L914
.L916:
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr19
	bne icc0,2,.L915
	srai gr4, #1, gr18
	bra .L916
.L914:
	cmpi gr22, #0, icc0
	bp icc0,2,.L912
	sethi #hi(#1065353216), gr8
	mov gr20, gr9
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
	mov gr8, gr20
.L912:
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
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L923
	bhi icc0,0,.L924
	cmp gr9,gr11,icc0
	bc icc0,0,.L923
	bhi icc0,0,.L924
	setlos #1, gr8
	ret
.L923:
	setlos #0, gr8
	ret
.L924:
	setlos #2, gr8
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp gr8,gr10,icc0
	bc icc0,0,.L929
	bhi icc0,0,.L930
	cmp gr9,gr11,icc0
	bc icc0,0,.L929
	bhi icc0,0,.L930
	setlos #1, gr8
	addi gr8,#-1,gr8
	ret
.L929:
	setlos #0, gr8
	addi gr8,#-1,gr8
	ret
.L930:
	setlos #2, gr8
	addi gr8,#-1,gr8
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
