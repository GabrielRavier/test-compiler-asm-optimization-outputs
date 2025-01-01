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
	bra .L20
.L18:
	addicc gr11, #-1, gr11, icc0
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	beq icc0,0,.L20
.L16:
	ldub @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmp gr4,gr5,icc0
	bne icc0,2,.L18
	cmpi gr11, #0, icc0
	beq icc0,0,.L20
	addi gr8,#1,gr8
	ret
.L20:
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
	bra .L32
.L29:
	addicc gr10, #-1, gr10, icc0
	addi gr8,#1,gr8
	beq icc0,0,.L32
.L27:
	ldub @(gr8,gr0),gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L29
	cmpi gr10, #0, icc0
	beq icc0,0,.L32
	ret
.L32:
	setlos #0, gr8
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L36
	bra .L40
.L38:
	addicc gr10, #-1, gr10, icc0
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	beq icc0,0,.L40
.L36:
	ldub @(gr8,gr0),gr4
	ldub @(gr9,gr0),gr5
	cmp gr4,gr5,icc0
	beq icc0,2,.L38
	cmpi gr10, #0, icc0
	beq icc0,2,.L40
	sub gr4,gr5,gr8
	ret
.L40:
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
	beq icc0,0,.L47
	call memcpy
	mov gr8, gr4
.L47:
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
	bra .L52
.L54:
	ldub @(gr4,gr0),gr5
	mov gr4, gr8
	cmp gr5,gr7,icc0
	addi gr4,#-1,gr4
	beq icc0,0,.L51
.L52:
	cmp gr4,gr6,icc0
	bne icc0,2,.L54
	setlos #0, gr8
.L51:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	cmpi gr10, #0, icc0
	beq icc0,0,.L56
	add gr8,gr10,gr5
	mov gr8, gr4
.L57:
	stb gr9, @(gr4,gr0)
	addi gr4,#1,gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L57
.L56:
	ret
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L63
.L64:
	ldsbi @(gr9,1),gr4
	addi gr8,#1,gr8
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	addi gr9,#1,gr9
	bne icc0,2,.L64
.L63:
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	ldsb @(gr8,gr0),gr4
	andi gr9, #255, gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L70
	bra .L69
.L72:
	ldsbi @(gr8,1),gr4
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L69
.L70:
	andi gr4,#0xff,gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L72
.L69:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L78:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc0
	beq icc0,0,.L77
	cmpi gr4, #0, icc0
	addi gr8,#1,gr8
	bne icc0,2,.L78
	setlos #0, gr8
.L77:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L82
	setlos #1, gr4
	addi gr9,#-1,gr7
	bra .L81
.L83:
	ldsb @(gr8,gr4),gr5
	addi gr4,#1,gr4
	ldsb @(gr7,gr4),gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L82
.L81:
	cmpi gr5, #0, icc0
	bne icc0,2,.L83
.L82:
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
	beq icc0,0,.L86
.L87:
	ldsbi @(gr5,1),gr4
	addi gr5,#1,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L87
.L86:
	sub gr5,gr8,gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L95
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L92
	addi gr10,#-1,gr6
	add gr8,gr6,gr6
	bra .L93
.L105:
	cmp gr8,gr6,icc0
	beq icc0,0,.L92
	cmp gr5,gr4,icc0
	bne icc0,0,.L92
	ldubi @(gr8,1),gr4
	addi gr9,#1,gr9
	cmpi gr4, #0, icc0
	addi gr8,#1,gr8
	beq icc0,0,.L92
.L93:
	ldub @(gr9,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L105
.L92:
	ldub @(gr9,gr0),gr5
	sub gr4,gr5,gr8
	ret
.L95:
	setlos #0, gr8
	ret
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L106
	andi gr10, #-2, gr6
	add gr8,gr6,gr6
.L108:
	ldsbi @(gr8,1),gr5
	ldsb @(gr8,gr0),gr4
	addi gr8,#2,gr8
	stb gr5, @(gr9,gr0)
	stbi gr4, @(gr9,1)
	cmp gr8,gr6,icc0
	addi gr9,#2,gr9
	bne icc0,2,.L108
.L106:
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
	beq icc0,0,.L114
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L114:
	setlos #1, gr8
	ret
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L117
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L117:
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
	beq icc0,0,.L124
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L124:
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
	bls icc0,2,.L130
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bhi icc0,2,.L131
.L130:
	setlos #1, gr8
	ret
.L131:
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L130
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
	bls icc0,0,.L140
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L138
	setlos #-8234, gr4
	sethi #hi(#47061), gr5
	add gr8,gr4,gr4
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L138
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L138
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	sethi #hi(#1048579), gr5
	add gr8,gr4,gr4
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L139
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L138:
	setlos #1, gr8
	ret
.L140:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L139:
	setlos #0, gr8
	ret
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L143
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L143:
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
	bne icc0,0,.L148
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L149
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	bgt icc0,2,.L153
	setlos #0, gr8
	setlos #0, gr9
.L145:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L153:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
	bra .L145
.L148:
	mov gr18, gr8
	mov gr19, gr9
	bra .L145
.L149:
	mov gr22, gr8
	mov gr23, gr9
	bra .L145
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
	bne icc0,0,.L157
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L158
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	bgt icc0,2,.L162
	setlos #0, gr8
.L154:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L162:
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
.L157:
	mov gr18, gr8
	bra .L154
.L158:
	mov gr20, gr8
	bra .L154
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
	bne icc0,0,.L171
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L170
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L172
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L171
.L170:
	mov gr20, gr8
	mov gr21, gr9
	bra .L163
.L172:
	cmpi gr5, #0, icc0
	beq icc0,2,.L170
.L171:
	mov gr18, gr8
	mov gr19, gr9
.L163:
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
	bne icc0,0,.L181
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L180
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L182
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L181
	mov gr19, gr18
.L181:
	mov gr18, gr8
	ldi @(sp,4), gr19
	ldi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L182:
	cmpi gr5, #0, icc0
	bne icc0,2,.L181
.L180:
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
	bne icc0,0,.L191
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L190
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L192
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L191
.L190:
	mov gr20, gr8
	mov gr21, gr9
	bra .L183
.L192:
	cmpi gr5, #0, icc0
	beq icc0,2,.L190
.L191:
	mov gr18, gr8
	mov gr19, gr9
.L183:
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
	bne icc0,0,.L199
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L201
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L202
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L199
.L201:
	mov gr18, gr8
	mov gr19, gr9
	bra .L193
.L202:
	cmpi gr5, #0, icc0
	bne icc0,2,.L201
.L199:
	mov gr20, gr8
	mov gr21, gr9
.L193:
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
	bne icc0,0,.L209
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L211
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L212
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L211
	mov gr19, gr18
.L211:
	mov gr18, gr8
	ldi @(sp,4), gr19
	ldi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L212:
	cmpi gr5, #0, icc0
	bne icc0,2,.L211
.L209:
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
	bne icc0,0,.L219
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L221
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L222
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L219
.L221:
	mov gr18, gr8
	mov gr19, gr9
	bra .L213
.L222:
	cmpi gr5, #0, icc0
	bne icc0,2,.L221
.L219:
	mov gr20, gr8
	mov gr21, gr9
.L213:
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
	beq icc0,0,.L226
	sethi #gotoffhi(s.0), gr7
	ldi @(gr15,#got12(_gp)), gr5
	mov gr7, gr4
	sethi #gprelhi(digits), gr6
	setlo #gotofflo(s.0), gr4
	setlo #gprello(digits), gr6
	add gr4,gr15,gr4
	add gr6,gr5,gr6
.L225:
	andi gr8, #63, gr5
	ldsb @(gr6,gr5),gr5
	srlicc gr8, #6, gr8, icc0
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	bne icc0,2,.L225
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr4,gr0)
	ret
.L226:
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
	beq icc0,0,.L246
	mov gr9, gr18
	setlos #0, gr19
	bra .L248
.L260:
	addi gr19,#1,gr19
	cmp gr25,gr19,icc0
	add gr18,gr20,gr18
	beq icc0,0,.L246
.L248:
	ldd @(gr27,gr0), gr14
	mov gr18, gr9
	mov gr21, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	mov gr18, gr26
	bne icc0,2,.L260
.L245:
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
.L246:
	addi gr25,#1,gr6
	umul gr20,gr25,gr4
	st gr6, @(gr22,gr0)
	cmpi gr20, #0, icc0
	add gr23,gr5,gr26
	beq icc0,0,.L245
	mov gr20, gr10
	mov gr21, gr9
	mov gr26, gr8
	mov gr24, gr15
	call memmove
	bra .L245
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
	beq icc0,0,.L262
	mov gr9, gr18
	setlos #0, gr19
	bra .L264
.L272:
	addi gr19,#1,gr19
	cmp gr23,gr19,icc0
	add gr18,gr22,gr18
	beq icc0,0,.L262
.L264:
	ldd @(gr21,gr0), gr14
	mov gr18, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	mov gr18, gr24
	bne icc0,2,.L272
.L261:
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
.L262:
	setlos #0, gr24
	bra .L261
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
	mov gr8, gr6
.L275:
	ldsb @(gr6,gr0),gr4
	cmpi gr4,#32,icc0
	beq icc0,0,.L277
	addi gr4,#-9,gr5
	cmpi gr5,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	cmpi gr8, #0, icc0
	beq icc0,0,.L289
.L277:
	addi gr6,#1,gr6
	bra .L275
.L289:
	cmpi gr4,#43,icc0
	beq icc0,0,.L284
	cmpi gr4,#45,icc0
	beq icc0,2,.L290
	ldsb @(gr6,gr0),gr9
	setlos #0, gr10
	addi gr9,#-48,gr7
	cmpi gr7,#9,icc0
	bls icc0,2,.L280
.L281:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
.L290:
	setlos #1, gr10
.L278:
	ldsbi @(gr6,1),gr9
	addi gr6,#1,gr6
	addi gr9,#-48,gr7
	cmpi gr7,#9,icc0
	bhi icc0,0,.L281
.L280:
	ldsbi @(gr6,1),gr9
	smuli gr8,#10,gr4
	slli gr7,#24,gr8
	addi gr9,#-48,gr7
	srai gr8, #24, gr8
	cmpi gr7,#9,icc0
	addi gr6,#1,gr6
	sub gr5,gr8,gr8
	bls icc0,2,.L280
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
.L284:
	setlos #0, gr10
	bra .L278
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
	mov gr8, gr4
.L293:
	ldsb @(gr4,gr0),gr5
	cmpi gr5,#32,icc0
	beq icc0,0,.L295
	addi gr5,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr18
	cmov gr0, gr18, cc4, 0
	cmpi gr18, #0, icc0
	beq icc0,0,.L308
.L295:
	addi gr4,#1,gr4
	bra .L293
.L308:
	cmpi gr5,#43,icc0
	beq icc0,0,.L296
	cmpi gr5,#45,icc0
	beq icc0,2,.L309
.L297:
	ldsb @(gr4,gr0),gr13
	setlos #0, gr8
	addi gr13,#-48,gr5
	cmpi gr5,#9,icc0
	setlos #0, gr9
	bhi icc0,0,.L299
.L298:
	srli gr9, #30, gr12
	slli gr8,#2,gr6
	slli gr9,#2,gr7
	addcc gr9,gr7,gr9,icc0
	or gr12, gr6, gr6
	addx gr8,gr6,gr8,icc0
	ldsbi @(gr4,1),gr13
	slli gr5,#24,gr12
	srli gr9, #31, gr15
	slli gr8,#1,gr5
	srai gr12, #24, gr12
	or gr15, gr5, gr8
	slli gr9,#1,gr14
	addi gr13,#-48,gr5
	srai gr12, #31, gr10
	subcc gr14,gr12,gr9,icc1
	cmpi gr5,#9,icc0
	addi gr4,#1,gr4
	subx gr8,gr10,gr8,icc1
	bls icc0,2,.L298
.L299:
	cmpi gr18, #0, icc0
	bne icc0,2,.L292
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L292:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L309:
	setlos #1, gr18
.L296:
	addi gr4,#1,gr4
	bra .L297
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
	bne icc0,2,.L314
	bra .L311
.L320:
	cmpi gr8,#0,icc0
	ble icc0,0,.L310
	addi gr18,#-1,gr18
	sub gr18,gr19,gr18
	cmpi gr18, #0, icc0
	add gr20,gr21,gr22
	beq icc0,0,.L311
.L314:
	srli gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	ldd @(gr24,gr0), gr14
	mov gr20, gr9
	mov gr23, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bp icc0,2,.L320
	mov gr19, gr18
	cmpi gr18, #0, icc0
	bne icc0,2,.L314
.L311:
	setlos #0, gr20
.L310:
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
	bne icc0,2,.L325
	bra .L322
.L333:
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	cadd gr18, gr4, gr18, cc4, 1
	setlos #1, gr5
	csra gr18, gr5, gr19, cc4, 1
	cmpi gr19, #0, icc0
	cadd gr20, gr21, gr22, cc4, 1
	mov gr19, gr18
	beq icc0,0,.L322
.L325:
	srai gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	ldd @(gr25,gr0), gr14
	mov gr23, gr10
	mov gr20, gr9
	mov gr24, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,2,.L333
.L321:
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
.L322:
	setlos #0, gr20
	bra .L321
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
	bn icc0,0,.L338
	ret
.L338:
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
	bn icc0,0,.L345
	ret
.L345:
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
	bne icc0,2,.L348
	bra .L353
.L350:
	ldi @(gr8,4), gr4
	addi gr8,#4,gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L353
.L348:
	cmp gr9,gr4,icc0
	bne icc0,2,.L350
	cmpi gr9, #0, icc0
	beq icc0,0,.L353
	ret
.L353:
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
	bne icc0,0,.L358
	setlos #4, gr4
	addi gr9,#-4,gr7
	bra .L357
.L366:
	cmpi gr6, #0, icc0
	beq icc0,0,.L358
	ld @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L358
.L357:
	cmpi gr5, #0, icc0
	bne icc0,2,.L366
.L358:
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
	bra .L380
.L387:
	cmpi gr4, #0, icc0
	beq icc0,0,.L377
	addicc gr10, #-1, gr10, icc0
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc0,0,.L380
.L376:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmp gr4,gr5,icc0
	beq icc0,2,.L387
.L377:
	cmpi gr10, #0, icc0
	beq icc0,2,.L380
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L381
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L380:
	setlos #0, gr8
	ret
.L381:
	setlos #-1, gr8
	ret
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	bne icc0,2,.L389
	bra .L394
.L391:
	addicc gr10, #-1, gr10, icc0
	addi gr8,#4,gr8
	beq icc0,0,.L394
.L389:
	ld @(gr8,gr0), gr4
	cmp gr4,gr9,icc0
	bne icc0,2,.L391
	cmpi gr10, #0, icc0
	beq icc0,0,.L394
	ret
.L394:
	setlos #0, gr8
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L398
	bra .L402
.L400:
	addicc gr10, #-1, gr10, icc0
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc0,0,.L402
.L398:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc1
	beq icc1,2,.L400
	cmpi gr10, #0, icc0
	beq icc0,2,.L402
	blt icc1,2,.L403
	ckgt icc1, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L402:
	setlos #0, gr8
	ret
.L403:
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
	beq icc0,0,.L410
	slli gr10,#2,gr10
	call memcpy
	mov gr8, gr4
.L410:
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
	beq icc0,0,.L415
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	addi gr10,#-1,gr4
	bnc icc0,2,.L425
	cmpi gr10, #0, icc0
	beq icc0,0,.L415
	slli gr4,#2,gr4
.L418:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
	cmpi gr4,#-4,icc0
	bne icc0,2,.L418
.L415:
	ret
.L425:
	cmpi gr10, #0, icc0
	setlos #0, gr5
	beq icc0,0,.L415
.L417:
	ld @(gr9,gr5), gr6
	addi gr4,#-1,gr4
	st gr6, @(gr8,gr5)
	cmpi gr4,#-1,icc0
	addi gr5,#4,gr5
	bne icc0,2,.L417
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L427
	mov gr8, gr5
.L428:
	addi gr4,#-1,gr4
	st gr9, @(gr5,gr0)
	cmpi gr4,#-1,icc0
	addi gr5,#4,gr5
	bne icc0,2,.L428
.L427:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L434
	cmpi gr10, #0, icc0
	beq icc0,0,.L433
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
.L436:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L436
.L433:
	ret
.L434:
	cmp gr8,gr9,icc0
	beq icc0,0,.L433
	cmpi gr10, #0, icc0
	beq icc0,0,.L433
	setlos #0, gr4
.L437:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L437
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
	bra .L462
.L460:
	cmpi gr4,#32,icc0
	beq icc0,0,.L464
.L462:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	addi gr4,#1,gr4
	beq icc0,2,.L460
	mov gr4, gr8
	ret
.L464:
	setlos #0, gr8
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L468
	andicc gr8, #1, gr4, icc0
	bne icc0,0,.L465
	setlos #1, gr4
.L467:
	srai gr8, #1, gr8
	andicc gr8, #1, gr0, icc0
	addi gr4,#1,gr4
	beq icc0,2,.L467
.L465:
	mov gr4, gr8
	ret
.L468:
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
	bn icc0,2,.L474
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
.L474:
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
	bn icc0,2,.L478
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
.L478:
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
	bn icc0,2,.L482
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
.L482:
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
	bne icc0,0,.L485
	mov gr20, gr9
	mov gr21, gr15
	mov gr20, gr8
	call __addf
	mov gr20, gr9
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L485
	cmpi gr18, #0, icc0
	bn icc0,0,.L498
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
	bra .L489
.L499:
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L489:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L488
	mov gr20, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
.L488:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	bne icc0,2,.L499
.L485:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L498:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L489
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
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr5, @(fp,8)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr8, gr22
	mov gr9, gr23
	mov gr15, gr19
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L501
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	mov gr22, gr8
	mov gr23, gr9
	call __addd
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L501
	cmpi gr18, #0, icc0
	bn icc0,0,.L514
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
	bra .L505
.L515:
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L505:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L504
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
.L504:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	bne icc0,2,.L515
.L501:
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
.L514:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L505
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
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr5, @(fp,8)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr8, gr22
	mov gr9, gr23
	mov gr15, gr19
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L517
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	mov gr22, gr8
	mov gr23, gr9
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L517
	cmpi gr18, #0, icc0
	bn icc0,0,.L530
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
	bra .L521
.L531:
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L521:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L520
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
.L520:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	bne icc0,2,.L531
.L517:
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
.L530:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L521
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	cmpi gr10, #0, icc0
	beq icc0,0,.L533
	setlos #0, gr4
.L534:
	ldsb @(gr8,gr4),gr5
	ldsb @(gr9,gr4),gr6
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L534
.L533:
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	mov gr8, gr4
	beq icc0,0,.L540
.L541:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	bne icc0,2,.L541
.L540:
	cmpi gr10, #0, icc0
	bne icc0,2,.L542
	bra .L548
.L544:
	addicc gr10, #-1, gr10, icc0
	addi gr9,#1,gr9
	addi gr4,#1,gr4
	beq icc0,0,.L548
.L542:
	ldsb @(gr9,gr0),gr5
	stb gr5, @(gr4,gr0)
	cmpi gr5, #0, icc0
	bne icc0,2,.L544
	cmpi gr10, #0, icc0
	bne icc0,2,.L545
.L548:
	stb gr0, @(gr4,gr0)
.L545:
	ret
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	cmpi gr9, #0, icc0
	mov gr8, gr5
	setlos #0, gr8
	beq icc0,0,.L552
.L553:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L555
.L552:
	ret
.L555:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc0
	bne icc0,2,.L553
	ret
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr6
	movgs gr9, lcr
	cmpi gr6, #0, icc0
	beq icc0,0,.L563
.L559:
	movsg lcr, gr4
	bra .L562
.L561:
	cmp gr5,gr6,icc0
	addi gr4,#1,gr4
	beq icc0,0,.L560
.L562:
	ldsb @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L561
	ldsbi @(gr8,1),gr6
	addi gr8,#1,gr8
	cmpi gr6, #0, icc0
	bne icc0,2,.L559
.L563:
	setlos #0, gr8
.L560:
	ret
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L567:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc0
	ckeq icc0, cc4
	cmpi gr4, #0, icc0
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	bne icc0,2,.L567
	mov gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	ldsb @(gr9,gr0),gr10
	mov gr9, gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L571
.L572:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	bne icc0,2,.L572
.L571:
	subcc gr4, gr9, gr4, icc0
	beq icc0,0,.L573
	addi gr4,#-1,gr12
	bra .L579
.L595:
	cmpi gr4, #0, icc0
	addi gr8,#1,gr8
	beq icc0,0,.L594
.L579:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L595
	cmpi gr8, #0, icc0
	beq icc0,0,.L573
	ldub @(gr8,gr0),gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L582
	add gr8,gr12,gr11
	mov gr9, gr6
	mov gr8, gr4
	bra .L576
.L596:
	cmp gr4,gr11,icc0
	beq icc0,0,.L575
	cmp gr7,gr5,icc0
	bne icc0,0,.L575
	ldubi @(gr4,1),gr5
	addi gr6,#1,gr6
	cmpi gr5, #0, icc0
	addi gr4,#1,gr4
	beq icc0,0,.L575
.L576:
	ldub @(gr6,gr0),gr7
	cmpi gr7, #0, icc0
	bne icc0,2,.L596
.L575:
	ldub @(gr6,gr0),gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L573
	addi gr8,#1,gr8
	bra .L579
.L594:
	setlos #0, gr8
.L573:
	ret
.L582:
	mov gr9, gr6
	bra .L575
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
	bn icc0,0,.L606
.L598:
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L601
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L600
.L601:
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
.L606:
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L598
.L600:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	bra .L601
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	cmpi gr11, #0, icc0
	beq icc0,0,.L615
	cmp gr9,gr11,icc0
	bc icc0,0,.L617
	sub gr9,gr11,gr9
	add gr8,gr9,gr12
	cmp gr8,gr12,icc0
	bhi icc0,0,.L617
	ldsb @(gr10,gr0),gr14
	bra .L614
.L609:
	cmp gr8,gr12,icc0
	bhi icc0,0,.L617
.L614:
	ldsb @(gr8,gr0),gr4
	mov gr8, gr13
	cmp gr4,gr14,icc0
	addi gr8,#1,gr8
	bne icc0,2,.L609
	addicc gr11, #-1, gr4, icc0
	addi gr10,#1,gr5
	beq icc0,0,.L607
	mov gr8, gr6
	bra .L610
.L612:
	addicc gr4, #-1, gr4, icc0
	addi gr6,#1,gr6
	addi gr5,#1,gr5
	beq icc0,0,.L607
.L610:
	ldub @(gr6,gr0),gr9
	ldub @(gr5,gr0),gr7
	cmp gr9,gr7,icc0
	beq icc0,2,.L612
	cmpi gr4, #0, icc0
	bne icc0,2,.L628
.L607:
	mov gr13, gr8
	ret
.L628:
	cmp gr9,gr7,icc0
	beq icc0,0,.L607
	cmp gr8,gr12,icc0
	bls icc0,2,.L614
.L617:
	setlos #0, gr13
	mov gr13, gr8
	ret
.L615:
	mov gr8, gr13
	mov gr13, gr8
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
	beq icc0,0,.L630
	call memmove
	mov gr8, gr4
.L630:
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
	sti gr27, @(sp,36)
	setlos #0, gr11
	mov gr10, gr27
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
	sti gr26, @(sp,32)
	mov gr8, gr18
	mov gr9, gr19
	mov gr15, gr20
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L661
	setlos #0, gr26
.L635:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L658
	sethi #hi(#1071644672), gr24
	sethi #hi(#1072693248), gr22
	setlos #0, gr21
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
.L639:
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
	bp icc0,2,.L639
.L640:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L644
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L644:
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
.L661:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L635
.L658:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L659
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	setlos #0, gr21
	beq icc0,2,.L640
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
.L643:
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
	bn icc0,2,.L643
	bra .L640
.L659:
	setlos #0, gr21
	bra .L640
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
	beq icc0,0,.L662
.L665:
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
	bne icc0,2,.L665
.L662:
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
	setlos #1, gr4
	bnc icc0,0,.L684
	setlos #32, gr5
	setlos #1, gr4
	bra .L669
.L671:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L670
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L678
.L669:
	cmpi gr9, #0, icc0
	bp icc0,2,.L671
.L670:
	cmpi gr4, #0, icc0
	beq icc0,0,.L678
.L684:
	setlos #0, gr5
.L674:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	cor gr5, gr4, gr5, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr8, gr9, gr8, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L674
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
	ret
.L678:
	cmpi gr10, #0, icc0
	setlos #0, gr5
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
	ret
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
	beq icc0,0,.L687
	slli gr8,#8,gr8
	call __clzsi2
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L687:
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
	beq icc0,0,.L694
.L692:
	mov gr6, gr8
	call __clzdi2
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L694:
	cmp gr5,gr8,icc0
	bne icc0,2,.L692
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
	beq icc0,0,.L695
.L697:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc0
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc0,2,.L697
.L695:
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
	bc icc0,2,.L701
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bls icc0,2,.L714
.L701:
	cmpi gr7, #0, icc0
	beq icc0,0,.L704
	slli gr7,#3,gr7
	mov gr9, gr5
	mov gr8, gr6
	add gr7,gr9,gr7
.L705:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	addi gr5,#8,gr5
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	cmp gr5,gr7,icc0
	addi gr6,#8,gr6
	bne icc0,2,.L705
.L704:
	cmp gr10,gr4,icc0
	bls icc0,0,.L700
.L706:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L706
.L700:
	ret
.L714:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr10
	beq icc0,0,.L700
.L702:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L702
	ret
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	cmp gr8,gr9,icc0
	srli gr10, #1, gr6
	bc icc0,2,.L716
	add gr9,gr10,gr4
	cmp gr8,gr4,icc0
	bls icc0,2,.L730
.L716:
	cmpi gr6, #0, icc0
	beq icc0,0,.L719
	slli gr6,#1,gr6
	setlos #0, gr4
.L720:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L720
.L719:
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L715
	addi gr10,#-1,gr4
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
.L715:
	ret
.L730:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L715
.L717:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L717
	ret
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	cmp gr8,gr9,icc0
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	bc icc0,2,.L732
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bls icc0,2,.L745
.L732:
	cmpi gr7, #0, icc0
	beq icc0,0,.L735
	slli gr7,#2,gr7
	setlos #0, gr5
.L736:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
	cmp gr7,gr5,icc0
	bne icc0,2,.L736
.L735:
	cmp gr10,gr4,icc0
	bls icc0,0,.L731
.L737:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L737
.L731:
	ret
.L745:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr10
	beq icc0,0,.L731
.L733:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L733
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
.L754:
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L752
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L754
.L752:
	ret
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
.L758:
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L756
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L758
.L756:
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
	bp icc0,0,.L766
	mov gr18, gr15
	mov gr19, gr8
	call __ftoi
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L766:
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
.L768:
	sra gr8, gr4, gr5
	addi gr4,#1,gr4
	andi gr5, #1, gr5
	cmpi gr4,#16,icc0
	add gr6,gr5,gr6
	bne icc0,2,.L768
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
.L771:
	sra gr6, gr4, gr5
	addi gr4,#1,gr4
	andi gr5, #1, gr5
	cmpi gr4,#16,icc0
	add gr8,gr5,gr8
	bne icc0,2,.L771
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L773
.L775:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc0
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc0,2,.L775
.L773:
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L778
	cmpi gr9, #0, icc0
	beq icc0,0,.L778
.L780:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	srlicc gr9, #1, gr9, icc0
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	bne icc0,2,.L780
.L778:
	mov gr6, gr8
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp gr8,gr9,icc0
	setlos #1, gr4
	bls icc0,0,.L800
	setlos #32, gr5
	setlos #1, gr4
	bra .L785
.L787:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L786
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L794
.L785:
	cmpi gr9, #0, icc0
	bp icc0,2,.L787
.L786:
	cmpi gr4, #0, icc0
	beq icc0,0,.L794
.L800:
	setlos #0, gr5
.L790:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	cor gr5, gr4, gr5, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr8, gr9, gr8, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L790
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
	ret
.L794:
	cmpi gr10, #0, icc0
	setlos #0, gr5
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
	ret
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
	bn icc0,0,.L804
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
.L804:
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
	bn icc0,0,.L808
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
.L805:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L808:
	setlos #-1, gr8
	bra .L805
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
	ckn icc0, cc4
	csub gr0, gr9, gr9, cc4, 1
	setlos #1, gr4
	cmpi gr9, #0, icc0
	cmov gr4, gr10, cc4, 1
	cmov gr0, gr10, cc4, 0
	beq icc0,0,.L817
	setlos #0, gr6
	setlos #0, gr7
	bra .L814
.L825:
	addi gr6,#1,gr6
	cmpi gr6,#32,icc0
	beq icc0,0,.L813
.L814:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	sraicc gr9, #1, gr9, icc0
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	bne icc0,2,.L825
.L813:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	csub gr0, gr7, gr7, cc4, 1
	mov gr7, gr8
	ret
.L817:
	setlos #0, gr7
	bra .L813
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
	bls icc0,0,.L836
	setlos #32, gr5
	setlos #1, gr4
	bra .L830
.L846:
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L837
.L830:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	slli gr4,#1,gr4
	bhi icc0,2,.L846
	cmpi gr4, #0, icc0
	beq icc0,0,.L837
.L845:
	setlos #0, gr8
.L833:
	cmp gr6,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr6, gr9, gr6, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L833
	cmpi gr7, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
.L837:
	cmpi gr7, #0, icc0
	setlos #0, gr8
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
.L836:
	setlos #1, gr4
	bra .L845
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
	bls icc0,0,.L856
	setlos #32, gr6
	setlos #1, gr5
	bra .L850
.L866:
	addicc gr6, #-1, gr6, icc0
	beq icc0,0,.L851
.L850:
	slli gr4,#1,gr4
	cmp gr8,gr4,icc0
	slli gr5,#1,gr5
	bhi icc0,2,.L866
	cmpi gr5, #0, icc0
	beq icc0,0,.L851
.L861:
	cmp gr7,gr4,icc0
	cknc icc0, cc4
	srlicc gr5, #1, gr5, icc0
	csub gr7, gr4, gr7, cc4, 1
	srli gr4, #1, gr4
	bne icc0,2,.L861
.L851:
	cmpi gr10, #0, icc0
	mov gr7, gr8
	ckne icc0, cc4
	csub gr0, gr7, gr8, cc4, 1
	ret
.L856:
	setlos #1, gr5
	bra .L861
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	sethi #hi(#0),gr8
	sethi #hi(#0),gr9
	cmp gr9,gr8,icc0
	setlos #1, gr4
	bnc icc0,0,.L882
	setlos #16, gr6
	setlos #1, gr4
.L868:
	slli gr9,#16,gr5
	srai gr5, #16, gr5
	cmpi gr5, #0, icc0
	bn icc0,0,.L869
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	sethi #hi(#0),gr4
	bls icc0,0,.L869
	addicc gr6, #-1, gr6, icc0
	bne icc0,2,.L868
.L877:
	cmpi gr10, #0, icc0
	setlos #0, gr5
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L869:
	cmpi gr4, #0, icc0
	beq icc0,0,.L877
.L882:
	setlos #0, gr5
.L873:
	cmp gr8,gr9,icc0
	bc icc0,2,.L872
	sub gr8,gr9,gr8
	sethi #hi(#0),gr8
	or gr4, gr5, gr5
.L872:
	srlicc gr4, #1, gr4, icc0
	srli gr9, #1, gr9
	bne icc0,2,.L873
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp gr8,gr9,icc0
	setlos #1, gr4
	bls icc0,0,.L899
	setlos #32, gr5
	setlos #1, gr4
	bra .L884
.L886:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L885
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L893
.L884:
	cmpi gr9, #0, icc0
	bp icc0,2,.L886
.L885:
	cmpi gr4, #0, icc0
	beq icc0,0,.L893
.L899:
	setlos #0, gr5
.L889:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	cor gr5, gr4, gr5, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr8, gr9, gr8, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L889
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
	ret
.L893:
	cmpi gr10, #0, icc0
	setlos #0, gr5
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
	ret
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
	beq icc0,2,.L906
	addi gr10,#-32,gr10
	srai gr8, #31, gr4
	sra gr8, gr10, gr9
	mov gr4, gr8
.L908:
	ret
.L906:
	cmpi gr10, #0, icc0
	beq icc0,0,.L908
	setlos #32, gr5
	sub gr5,gr10,gr5
	sll gr8,gr5,gr5
	srl gr9, gr10, gr9
	sra gr8, gr10, gr4
	or gr5, gr9, gr9
	mov gr4, gr8
	bra .L908
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
	blt icc0,0,.L917
	bgt icc0,0,.L918
	cmp gr9,gr11,icc0
	bc icc0,0,.L917
	bhi icc0,0,.L918
	setlos #1, gr8
	ret
.L917:
	setlos #0, gr8
	ret
.L918:
	setlos #2, gr8
	ret
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp gr8,gr10,icc0
	blt icc0,0,.L923
	bgt icc0,0,.L924
	cmp gr9,gr11,icc0
	bc icc0,0,.L923
	bhi icc0,0,.L924
	setlos #1, gr8
	addi gr8,#-1,gr8
	ret
.L923:
	setlos #0, gr8
	addi gr8,#-1,gr8
	ret
.L924:
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
	sti gr22, @(sp,16)
	sethi #hi(#1072693248), gr22
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr5, @(fp,8)
	mov gr10, gr24
	mov gr15, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	bra .L941
.L946:
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L941:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L939
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
.L939:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	bne icc0,2,.L946
	cmpi gr24, #0, icc0
	bp icc0,2,.L938
	sethi #hi(#1072693248), gr8
	mov gr22, gr10
	mov gr23, gr11
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
	mov gr8, gr22
	mov gr9, gr23
.L938:
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
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sti gr20, @(sp,8)
	sethi #hi(#1065353216), gr20
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr5, @(fp,8)
	mov gr9, gr22
	mov gr15, gr21
	mov gr8, gr19
	mov gr9, gr18
	setlo #lo(#1065353216), gr20
	bra .L950
.L955:
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L950:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L948
	mov gr20, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
.L948:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	bne icc0,2,.L955
	cmpi gr22, #0, icc0
	bp icc0,2,.L947
	sethi #hi(#1065353216), gr8
	mov gr20, gr9
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
	mov gr8, gr20
.L947:
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
	bc icc0,0,.L960
	bhi icc0,0,.L961
	cmp gr9,gr11,icc0
	bc icc0,0,.L960
	bhi icc0,0,.L961
	setlos #1, gr8
	ret
.L960:
	setlos #0, gr8
	ret
.L961:
	setlos #2, gr8
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp gr8,gr10,icc0
	bc icc0,0,.L966
	bhi icc0,0,.L967
	cmp gr9,gr11,icc0
	bc icc0,0,.L966
	bhi icc0,0,.L967
	setlos #1, gr8
	addi gr8,#-1,gr8
	ret
.L966:
	setlos #0, gr8
	addi gr8,#-1,gr8
	ret
.L967:
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
