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
	beq icc0,0,.L20
.L16:
	ldub @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmp gr4,gr5,icc0
	beq icc0,0,.L26
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	addicc gr11, #-1, gr11, icc0
	bne icc0,2,.L16
.L20:
	setlos #0, gr8
	bra .L15
.L26:
	cmpi gr11, #0, icc0
	beq icc0,0,.L20
	addi gr8,#1,gr8
.L15:
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	andi gr9, #255, gr5
	cmpi gr10, #0, icc0
	beq icc0,0,.L33
.L28:
	ldub @(gr8,gr0),gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L36
	addi gr8,#1,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L28
.L33:
	setlos #0, gr8
	bra .L27
.L36:
	cmpi gr10, #0, icc0
	beq icc0,0,.L33
.L27:
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L42
.L38:
	ldub @(gr8,gr0),gr5
	ldub @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L48
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L38
.L42:
	setlos #0, gr8
	bra .L37
.L48:
	cmpi gr10, #0, icc0
	beq icc0,2,.L42
	sub gr5,gr4,gr8
.L37:
	ret
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L50
	call memcpy
	mov gr8, gr4
.L50:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	andi gr9, #255, gr7
	addi gr10,#-1,gr4
	add gr8,gr4,gr4
	addi gr8,#-1,gr6
.L55:
	cmp gr4,gr6,icc0
	beq icc0,0,.L58
	mov gr4, gr8
	addi gr4,#-1,gr4
	ldub @(gr8,gr0),gr5
	cmp gr5,gr7,icc0
	bne icc0,2,.L55
	bra .L54
.L58:
	setlos #0, gr8
.L54:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	cmpi gr10, #0, icc0
	beq icc0,0,.L60
	add gr8,gr10,gr5
	mov gr8, gr4
.L61:
	stb gr9, @(gr4,gr0)
	addi gr4,#1,gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L61
.L60:
	ret
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	bra .L73
.L68:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
.L73:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L68
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	andi gr9, #255, gr5
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L74
.L75:
	andi gr4,#0xff,gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L74
	addi gr8,#1,gr8
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L75
.L74:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L83:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc0
	beq icc0,0,.L82
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	bne icc0,2,.L83
	setlos #0, gr8
.L82:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L87
	setlos #1, gr4
	addi gr9,#-1,gr7
.L86:
	cmpi gr5, #0, icc0
	beq icc0,0,.L87
	ldsb @(gr8,gr4),gr5
	addi gr4,#1,gr4
	ldsb @(gr7,gr4),gr6
	cmp gr5,gr6,icc0
	beq icc0,2,.L86
.L87:
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
	beq icc0,0,.L91
.L92:
	addi gr5,#1,gr5
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L92
.L91:
	sub gr5,gr8,gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L100
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L97
	addi gr10,#-1,gr6
	add gr8,gr6,gr6
.L98:
	ldub @(gr9,gr0),gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L97
	cmp gr8,gr6,icc0
	beq icc0,0,.L97
	cmp gr5,gr4,icc0
	bne icc0,0,.L97
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L98
.L97:
	ldub @(gr9,gr0),gr5
	sub gr4,gr5,gr8
.L95:
	ret
.L100:
	setlos #0, gr8
	bra .L95
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L110
	andi gr10, #-2, gr5
	add gr8,gr5,gr5
.L112:
	ldsbi @(gr8,1),gr4
	stb gr4, @(gr9,gr0)
	ldsb @(gr8,gr0),gr4
	stbi gr4, @(gr9,1)
	addi gr9,#2,gr9
	addi gr8,#2,gr8
	cmp gr8,gr5,icc0
	bne icc0,2,.L112
.L110:
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
	beq icc0,0,.L118
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L116:
	ret
.L118:
	setlos #1, gr8
	bra .L116
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L121
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L119:
	ret
.L121:
	setlos #1, gr8
	bra .L119
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
	beq icc0,0,.L128
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L126:
	ret
.L128:
	setlos #1, gr8
	bra .L126
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
	bls icc0,2,.L134
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,2,.L134
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L134
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#2,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L130
.L134:
	setlos #1, gr8
.L130:
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
	bls icc0,0,.L143
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L141
	setlos #-8234, gr4
	add gr8,gr4,gr4
	sethi #hi(#47061), gr5
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L141
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L141
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr8,gr4,gr4
	sethi #hi(#1048579), gr5
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L142
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L136
.L143:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L136
.L141:
	setlos #1, gr8
.L136:
	ret
.L142:
	setlos #0, gr8
	bra .L136
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L146
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L144:
	ret
.L146:
	setlos #1, gr8
	bra .L144
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
	bne icc0,0,.L151
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L152
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L155
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
.L148:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L151:
	mov gr18, gr8
	mov gr19, gr9
	bra .L148
.L152:
	mov gr22, gr8
	mov gr23, gr9
	bra .L148
.L155:
	setlos #0, gr8
	setlos #0, gr9
	bra .L148
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
	bne icc0,0,.L159
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L160
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L163
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __subf
.L156:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L159:
	mov gr18, gr8
	bra .L156
.L160:
	mov gr20, gr8
	bra .L156
.L163:
	setlos #0, gr8
	bra .L156
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
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L172
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L171
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L166
	cmpi gr5, #0, icc0
	bne icc0,2,.L172
.L171:
	mov gr20, gr8
	mov gr21, gr9
	bra .L164
.L166:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L171
.L172:
	mov gr18, gr8
	mov gr19, gr9
.L164:
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
	beq icc0,2,.L175
	cmpi gr5, #0, icc0
	bne icc0,2,.L181
.L180:
	mov gr19, gr8
	bra .L173
.L175:
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
.L173:
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
	bne icc0,0,.L190
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L189
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L184
	cmpi gr5, #0, icc0
	bne icc0,2,.L190
.L189:
	mov gr20, gr8
	mov gr21, gr9
	bra .L182
.L184:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L189
.L190:
	mov gr18, gr8
	mov gr19, gr9
.L182:
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
	bne icc0,0,.L197
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L199
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L193
	cmpi gr5, #0, icc0
	bne icc0,2,.L199
.L197:
	mov gr20, gr8
	mov gr21, gr9
.L191:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L193:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L197
.L199:
	mov gr18, gr8
	mov gr19, gr9
	bra .L191
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
	mov gr8, gr18
	mov gr9, gr19
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L206
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L208
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L202
	cmpi gr5, #0, icc0
	bne icc0,2,.L208
.L206:
	mov gr19, gr8
	bra .L200
.L202:
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L208
	mov gr19, gr18
.L208:
	mov gr18, gr8
.L200:
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
	bne icc0,0,.L215
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L217
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L211
	cmpi gr5, #0, icc0
	bne icc0,2,.L217
.L215:
	mov gr20, gr8
	mov gr21, gr9
.L209:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L211:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L215
.L217:
	mov gr18, gr8
	mov gr19, gr9
	bra .L209
	.size	fminl, .-fminl
	.p2align 4
	.globl l64a
	.type	l64a, @function
l64a:
	sethi #gotoffhi(s.0), gr7
	mov gr7, gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	cmpi gr8, #0, icc0
	beq icc0,0,.L219
	ldi @(gr15,#got12(_gp)), gr5
	sethi #gprelhi(digits), gr6
	setlo #gprello(digits), gr6
	add gr6,gr5,gr6
.L220:
	andi gr8, #63, gr5
	ldsb @(gr6,gr5),gr5
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	srlicc gr8, #6, gr8, icc0
	bne icc0,2,.L220
.L219:
	stb gr0, @(gr4,gr0)
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
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
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sethi #gotoffhi(seed), gr18
	setlo #gotofflo(seed), gr18
	add gr18,gr15,gr18
	sethi #hi(#1481765933), gr10
	setlo #lo(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	ld @(gr18,gr0), gr8
	ldi @(gr18,4), gr9
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
	mov gr15, gr24
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr26
	mov gr11, gr20
	mov gr12, gr27
	ld @(gr10,gr0), gr21
	cmpi gr21, #0, icc0
	beq icc0,0,.L241
	mov gr9, gr18
	setlos #0, gr19
.L243:
	mov gr18, gr25
	mov gr18, gr9
	mov gr22, gr8
	ldd @(gr27,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L240
	addi gr19,#1,gr19
	add gr18,gr20,gr18
	cmp gr21,gr19,icc0
	bne icc0,2,.L243
.L241:
	addi gr21,#1,gr4
	st gr4, @(gr26,gr0)
	umul gr20,gr21,gr4
	add gr23,gr5,gr25
	cmpi gr20, #0, icc0
	beq icc0,0,.L240
	mov gr20, gr10
	mov gr22, gr9
	mov gr25, gr8
	mov gr24, gr15
	call memmove
.L240:
	mov gr25, gr8
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
	mov gr11, gr22
	mov gr12, gr21
	ld @(gr10,gr0), gr23
	cmpi gr23, #0, icc0
	beq icc0,0,.L256
	mov gr9, gr18
	setlos #0, gr19
.L258:
	mov gr18, gr24
	mov gr18, gr9
	mov gr20, gr8
	ldd @(gr21,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L255
	addi gr19,#1,gr19
	add gr18,gr22,gr18
	cmp gr23,gr19,icc0
	bne icc0,2,.L258
.L256:
	setlos #0, gr24
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
	bra .L268
.L270:
	addi gr5,#1,gr5
.L268:
	ldsb @(gr5,gr0),gr4
	cmpi gr4,#32,icc0
	beq icc0,0,.L270
	addi gr4,#-9,gr6
	cmpi gr6,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	cmpi gr8, #0, icc0
	bne icc0,2,.L270
	cmpi gr4,#43,icc0
	beq icc0,0,.L277
	cmpi gr4,#45,icc0
	bne icc0,2,.L278
	setlos #1, gr6
.L271:
	addi gr5,#1,gr5
.L272:
	ldsb @(gr5,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bhi icc0,0,.L274
.L273:
	smuli gr8,#10,gr8
	addi gr5,#1,gr5
	slli gr4,#24,gr4
	srai gr4, #24, gr4
	sub gr9,gr4,gr8
	ldsb @(gr5,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L273
.L274:
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
.L277:
	setlos #0, gr6
	bra .L271
.L278:
	setlos #0, gr6
	bra .L272
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
	mov gr8, gr5
	bra .L284
.L286:
	addi gr5,#1,gr5
.L284:
	ldsb @(gr5,gr0),gr4
	cmpi gr4,#32,icc0
	beq icc0,0,.L286
	addi gr4,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr10
	cmov gr0, gr10, cc4, 0
	cmpi gr10, #0, icc0
	bne icc0,2,.L286
	cmpi gr4,#43,icc0
	beq icc0,0,.L287
	cmpi gr4,#45,icc0
	bne icc0,2,.L288
	setlos #1, gr10
.L287:
	addi gr5,#1,gr5
.L288:
	ldsb @(gr5,gr0),gr4
	addi gr4,#-48,gr4
	setlos #0, gr8
	setlos #0, gr9
	cmpi gr4,#9,icc0
	bhi icc0,0,.L290
.L289:
	srli gr9, #30, gr11
	slli gr8,#2,gr6
	or gr11, gr6, gr6
	slli gr9,#2,gr7
	addcc gr9,gr7,gr9,icc0
	addx gr8,gr6,gr8,icc0
	srli gr9, #31, gr15
	slli gr8,#1,gr14
	slli gr9,#1,gr11
	or gr15, gr14, gr8
	addi gr5,#1,gr5
	slli gr4,#24,gr4
	srai gr4, #24, gr4
	srai gr4, #31, gr12
	subcc gr11,gr4,gr9,icc0
	subx gr8,gr12,gr8,icc0
	ldsb @(gr5,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L289
.L290:
	cmpi gr10, #0, icc0
	bne icc0,2,.L283
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L283:
	ret
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
	mov gr8, gr23
	mov gr9, gr22
	mov gr10, gr18
	mov gr11, gr21
	mov gr12, gr24
	bra .L309
.L304:
	mov gr19, gr18
.L309:
	cmpi gr18, #0, icc0
	beq icc0,0,.L300
	srli gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	mov gr20, gr9
	mov gr23, gr8
	ldd @(gr24,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L304
	cmpi gr8,#0,icc0
	ble icc0,0,.L299
	add gr20,gr21,gr22
	addi gr18,#-1,gr18
	sub gr18,gr19,gr18
	bra .L309
.L300:
	setlos #0, gr20
.L299:
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
	sti gr25, @(sp,28)
	mov gr8, gr23
	mov gr9, gr22
	mov gr10, gr18
	mov gr11, gr21
	mov gr12, gr25
	mov gr13, gr24
	cmpi gr10, #0, icc0
	beq icc0,0,.L311
.L314:
	srai gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	mov gr24, gr10
	mov gr20, gr9
	mov gr23, gr8
	ldd @(gr25,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L310
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	setlos #1, gr5
	cadd gr20, gr21, gr22, cc4, 1
	cadd gr18, gr4, gr18, cc4, 1
	csra gr18, gr5, gr19, cc4, 1
	mov gr19, gr18
	cmpi gr19, #0, icc0
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
	ldi @(sp,28), gr25
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
	sdiv gr8,gr9,gr4
	st gr4, @(gr3,gr0)
	smul gr4,gr9,gr4
	sub gr8,gr5,gr8
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
	bn icc0,0,.L326
.L324:
	ret
.L326:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L324
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr18
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	call __divll
	st gr8, @(gr19,gr0)
	sti gr9, @(gr19,4)
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
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
	sti gr3, @(sp,4)
	movsg lr, gr5
	sti gr5, @(sp,8)
	sdiv gr8,gr9,gr4
	st gr4, @(gr3,gr0)
	smul gr4,gr9,gr4
	sub gr8,gr5,gr8
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
	bn icc0,0,.L333
.L331:
	ret
.L333:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L331
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr18
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	call __divll
	st gr8, @(gr19,gr0)
	sti gr9, @(gr19,4)
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
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
	bra .L344
.L338:
	addi gr8,#4,gr8
.L344:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L341
	cmp gr9,gr4,icc0
	bne icc0,2,.L338
	cmpi gr4, #0, icc0
	beq icc0,0,.L341
.L335:
	ret
.L341:
	setlos #0, gr8
	bra .L335
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L347
	setlos #4, gr4
	addi gr9,#-4,gr7
.L346:
	cmpi gr5, #0, icc0
	beq icc0,0,.L347
	cmpi gr6, #0, icc0
	beq icc0,0,.L347
	ld @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc0
	beq icc0,2,.L346
.L347:
	cmp gr5,gr6,icc0
	ckge icc0, cc5
	setlos #1, gr4
	setlos #-1, gr5
	cckgt icc0, cc4, cc5, 1
	cmov gr4, gr8, cc5, 1
	andcr cc5, cc4, cc4
	cmov gr0, gr8, cc4, 0
	cmov gr5, gr8, cc5, 0
	ret
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr5
.L356:
	ld @(gr9,gr5), gr4
	st gr4, @(gr8,gr5)
	addi gr5,#4,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L356
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	mov gr8, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L359
.L360:
	addi gr5,#4,gr5
	ld @(gr5,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L360
.L359:
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L368
.L364:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmp gr4,gr5,icc0
	bne icc0,0,.L365
	cmpi gr4, #0, icc0
	beq icc0,0,.L365
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L364
.L368:
	setlos #0, gr8
.L363:
	ret
.L365:
	cmpi gr10, #0, icc0
	beq icc0,2,.L368
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L369
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L363
.L369:
	setlos #-1, gr8
	bra .L363
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	beq icc0,0,.L381
.L376:
	ld @(gr8,gr0), gr4
	cmp gr4,gr9,icc0
	beq icc0,0,.L384
	addi gr8,#4,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L376
.L381:
	setlos #0, gr8
	bra .L375
.L384:
	cmpi gr10, #0, icc0
	beq icc0,0,.L381
.L375:
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L390
.L386:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L397
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L386
.L390:
	setlos #0, gr8
.L385:
	ret
.L397:
	cmpi gr10, #0, icc0
	beq icc0,2,.L390
	cmp gr5,gr4,icc0
	blt icc0,2,.L391
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L385
.L391:
	setlos #-1, gr8
	bra .L385
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L399
	slli gr10,#2,gr10
	call memcpy
	mov gr8, gr4
.L399:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L404
	addi gr10,#-1,gr4
	sub gr8,gr9,gr5
	slli gr10,#2,gr6
	cmp gr5,gr6,icc0
	bc icc0,2,.L405
	setlos #0, gr5
	cmpi gr10, #0, icc0
	beq icc0,0,.L404
.L406:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr4,#-1,gr4
	addi gr5,#4,gr5
	cmpi gr4,#-1,icc0
	bne icc0,2,.L406
	bra .L404
.L405:
	cmpi gr10, #0, icc0
	beq icc0,0,.L404
	slli gr4,#2,gr4
.L407:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
	cmpi gr4,#-4,icc0
	bne icc0,2,.L407
.L404:
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L415
	mov gr8, gr5
.L416:
	addi gr5,#4,gr5
	sti gr9, @(gr5,-4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L416
.L415:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L422
	cmpi gr10, #0, icc0
	beq icc0,0,.L421
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
.L424:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L424
.L421:
	ret
.L422:
	cmp gr8,gr9,icc0
	beq icc0,0,.L421
	cmpi gr10, #0, icc0
	beq icc0,0,.L421
	setlos #0, gr4
.L425:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L425
	bra .L421
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
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	andi gr9, #15, gr9
	mov gr8, gr4
	sethi #hi(#0),gr4
	srl gr4, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #15, gr9
	sll gr8,gr9,gr8
	or gr4, gr8, gr8
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
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	andi gr9, #7, gr9
	andi gr8,#0xff,gr4
	srl gr4, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #7, gr9
	sll gr8,gr9,gr8
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
	slli gr8,#24,gr4
	srli gr8, #24, gr5
	or gr4, gr5, gr4
	srli gr8, #8, gr5
	sethi #hi(#65280), gr6
	setlo #lo(#65280), gr6
	and gr5, gr6, gr5
	or gr4, gr5, gr4
	slli gr8,#8,gr8
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
	and gr8, gr5, gr8
	or gr4, gr8, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	slli gr9,#24,gr5
	srli gr8, #24, gr4
	srli gr8, #8, gr6
	sethi #hi(#65280), gr10
	setlo #lo(#65280), gr10
	and gr6, gr10, gr6
	or gr4, gr6, gr4
	slli gr8,#8,gr7
	srli gr9, #24, gr6
	or gr7, gr6, gr6
	sethi #hi(#16711680), gr7
	setlo #lo(#16711680), gr7
	and gr6, gr7, gr6
	or gr4, gr6, gr4
	slli gr8,#24,gr8
	or gr4, gr8, gr4
	slli gr9,#8,gr6
	srli gr9, #24, gr11
	or gr5, gr11, gr5
	srli gr9, #8, gr9
	or gr9, gr8, gr9
	and gr9, gr10, gr9
	or gr5, gr9, gr8
	and gr6, gr7, gr5
	or gr8, gr5, gr8
	mov gr4, gr9
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
.L450:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	addi gr4,#1,gr4
	bne icc0,0,.L452
	cmpi gr4,#32,icc0
	bne icc0,2,.L450
	setlos #0, gr8
	bra .L447
.L452:
	mov gr4, gr8
.L447:
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L456
	andicc gr8, #1, gr4, icc0
	bne icc0,0,.L453
	setlos #1, gr4
.L455:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L455
.L453:
	mov gr4, gr8
	ret
.L456:
	setlos #0, gr4
	bra .L453
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
	bn icc0,2,.L462
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L459:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L462:
	setlos #1, gr8
	bra .L459
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
	bn icc0,2,.L466
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
.L463:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L466:
	setlos #1, gr8
	bra .L463
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
	bn icc0,2,.L470
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
.L467:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L470:
	setlos #1, gr8
	bra .L467
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
	bne icc0,0,.L473
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __addf
	mov gr20, gr9
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L473
	cmpi gr18, #0, icc0
	bn icc0,0,.L486
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
	bra .L477
.L486:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L477
.L476:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L473
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L477:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L476
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L476
.L473:
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
	mov gr15, gr19
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr18
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L488
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __addd
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L488
	cmpi gr18, #0, icc0
	bn icc0,0,.L501
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
	bra .L492
.L501:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L492
.L491:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L488
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L492:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L491
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L491
.L488:
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
	mov gr15, gr19
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr18
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L503
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L503
	cmpi gr18, #0, icc0
	bn icc0,0,.L516
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
	bra .L507
.L516:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L507
.L506:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L503
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L507:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L506
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L506
.L503:
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
	beq icc0,0,.L518
	setlos #0, gr4
.L519:
	ldsb @(gr8,gr4),gr5
	ldsb @(gr9,gr4),gr6
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L519
.L518:
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	mov gr8, gr4
	beq icc0,0,.L525
.L526:
	addi gr4,#1,gr4
	ldsb @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L526
.L525:
	cmpi gr10, #0, icc0
	beq icc0,0,.L533
.L527:
	ldsb @(gr9,gr0),gr5
	stb gr5, @(gr4,gr0)
	cmpi gr5, #0, icc0
	beq icc0,0,.L537
	addi gr9,#1,gr9
	addi gr4,#1,gr4
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L527
	bra .L533
.L537:
	cmpi gr10, #0, icc0
	bne icc0,2,.L530
.L533:
	stb gr0, @(gr4,gr0)
.L530:
	ret
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	mov gr8, gr5
	setlos #0, gr8
	cmpi gr9, #0, icc0
	beq icc0,0,.L538
.L539:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L541
.L538:
	ret
.L541:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc0
	bne icc0,2,.L539
	bra .L538
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	movgs gr9, lcr
	ldsb @(gr8,gr0),gr6
	cmpi gr6, #0, icc0
	beq icc0,0,.L549
.L545:
	movsg lcr, gr4
.L548:
	ldsb @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L551
	addi gr4,#1,gr4
	cmp gr5,gr6,icc0
	bne icc0,2,.L548
.L546:
	ret
.L551:
	addi gr8,#1,gr8
	ldsb @(gr8,gr0),gr6
	cmpi gr6, #0, icc0
	bne icc0,2,.L545
.L549:
	setlos #0, gr8
	bra .L546
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L554:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc0
	ckeq icc0, cc4
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	bne icc0,2,.L554
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
	beq icc0,0,.L558
.L559:
	addi gr4,#1,gr4
	ldsb @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L559
.L558:
	subcc gr4, gr9, gr4, icc0
	beq icc0,0,.L560
	addi gr4,#-1,gr12
	bra .L566
.L569:
	mov gr9, gr6
	bra .L562
.L565:
	cmpi gr8, #0, icc0
	beq icc0,0,.L560
	ldub @(gr8,gr0),gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L569
	add gr8,gr12,gr11
	mov gr9, gr6
	mov gr8, gr4
.L563:
	ldub @(gr6,gr0),gr7
	cmpi gr7, #0, icc0
	beq icc0,0,.L562
	cmp gr4,gr11,icc0
	beq icc0,0,.L562
	cmp gr7,gr5,icc0
	bne icc0,0,.L562
	addi gr4,#1,gr4
	addi gr6,#1,gr6
	ldub @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L563
.L562:
	ldub @(gr6,gr0),gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L560
	addi gr8,#1,gr8
.L566:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr10,icc0
	beq icc0,0,.L565
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	bne icc0,2,.L566
	setlos #0, gr8
.L560:
	ret
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
	bn icc0,0,.L590
.L582:
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L585
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L584
.L585:
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
.L590:
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L582
.L584:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	bra .L585
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	cmpi gr11, #0, icc0
	beq icc0,0,.L599
	cmp gr9,gr11,icc0
	bc icc0,0,.L601
	sub gr9,gr11,gr9
	add gr8,gr9,gr12
	cmp gr8,gr12,icc0
	bhi icc0,0,.L601
	ldsb @(gr10,gr0),gr14
	bra .L598
.L612:
	cmpi gr4, #0, icc0
	beq icc0,2,.L591
	cmp gr9,gr7,icc0
	beq icc0,0,.L591
.L593:
	cmp gr8,gr12,icc0
	bhi icc0,0,.L601
.L598:
	ldsb @(gr8,gr0),gr4
	mov gr8, gr13
	addi gr8,#1,gr8
	cmp gr4,gr14,icc0
	bne icc0,2,.L593
	addi gr10,#1,gr5
	addicc gr11, #-1, gr4, icc0
	beq icc0,0,.L591
	mov gr8, gr6
.L594:
	ldub @(gr6,gr0),gr9
	ldub @(gr5,gr0),gr7
	cmp gr9,gr7,icc0
	bne icc0,0,.L612
	addi gr6,#1,gr6
	addi gr5,#1,gr5
	addicc gr4, #-1, gr4, icc0
	bne icc0,2,.L594
.L591:
	mov gr13, gr8
	ret
.L599:
	mov gr8, gr13
	bra .L591
.L601:
	setlos #0, gr13
	bra .L591
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
	mov gr8, gr4
	mov gr10, gr18
	cmpi gr10, #0, icc0
	beq icc0,0,.L614
	call memmove
	mov gr8, gr4
.L614:
	add gr4,gr18,gr8
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
	bn icc0,0,.L645
	setlos #0, gr26
.L619:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L642
	setlos #0, gr21
	sethi #hi(#1071644672), gr24
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
.L623:
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
	bp icc0,2,.L623
.L624:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L628
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L628:
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
.L645:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L619
.L642:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L643
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	setlos #0, gr21
	cmpi gr8, #0, icc0
	beq icc0,2,.L624
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
.L627:
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
	bn icc0,2,.L627
	bra .L624
.L643:
	setlos #0, gr21
	bra .L624
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	mov gr8, gr4
	mov gr9, gr5
	mov gr8, gr9
	mov gr5, gr8
	mov gr4, gr5
	mov gr8, gr4
	orcc gr8, gr9, gr0, icc0
	setlos #0, gr8
	setlos #0, gr9
	beq icc0,0,.L646
.L649:
	setlos #0, gr6
	andi gr4, #1, gr7
	subcc gr0,gr7,gr15,icc0
	subx gr0,gr6,gr14,icc0
	and gr14, gr10, gr12
	and gr15, gr11, gr13
	addcc gr9,gr13,gr9,icc0
	addx gr8,gr12,gr8,icc0
	srli gr11, #31, gr14
	slli gr10,#1,gr10
	or gr14, gr10, gr10
	slli gr11,#1,gr11
	slli gr5,#31,gr14
	srli gr4, #1, gr4
	or gr14, gr4, gr4
	srli gr5, #1, gr5
	orcc gr5, gr4, gr0, icc0
	bne icc0,2,.L649
.L646:
	ret
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L668
	setlos #32, gr5
	setlos #1, gr4
.L653:
	cmpi gr9, #0, icc0
	bn icc0,0,.L654
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L654
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L653
.L662:
	setlos #0, gr5
	bra .L656
.L654:
	cmpi gr4, #0, icc0
	beq icc0,0,.L662
.L668:
	setlos #0, gr5
.L658:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L658
.L656:
	cmpi gr10, #0, icc0
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
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	srai gr8, #7, gr5
	xor gr8, gr5, gr4
	cmp gr8,gr5,icc0
	beq icc0,0,.L671
	slli gr4,#8,gr8
	call __clzsi2
	addi gr8,#-1,gr8
.L669:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L671:
	setlos #7, gr8
	bra .L669
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
	beq icc0,0,.L678
.L676:
	mov gr6, gr8
	mov gr5, gr9
	call __clzdi2
	addi gr8,#-1,gr8
.L672:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L678:
	cmp gr9,gr8,icc0
	bne icc0,2,.L676
	setlos #63, gr8
	bra .L672
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	setlos #0, gr6
	cmpi gr8, #0, icc0
	beq icc0,0,.L679
.L681:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	srlicc gr8, #1, gr8, icc0
	bne icc0,2,.L681
.L679:
	mov gr6, gr8
	ret
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	srli gr10, #3, gr7
	andi gr10, #-8, gr4
	cmp gr8,gr9,icc0
	bc icc0,2,.L685
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bhi icc0,2,.L685
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L684
.L686:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L686
	bra .L684
.L685:
	cmpi gr7, #0, icc0
	beq icc0,0,.L688
	mov gr9, gr5
	mov gr8, gr6
	slli gr7,#3,gr7
	add gr7,gr9,gr7
.L689:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	addi gr5,#8,gr5
	addi gr6,#8,gr6
	cmp gr5,gr7,icc0
	bne icc0,2,.L689
.L688:
	cmp gr10,gr4,icc0
	bls icc0,0,.L684
.L690:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L690
.L684:
	ret
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	srli gr10, #1, gr6
	cmp gr8,gr9,icc0
	bc icc0,2,.L699
	add gr9,gr10,gr4
	cmp gr8,gr4,icc0
	bhi icc0,2,.L699
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L698
.L700:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L700
	bra .L698
.L699:
	cmpi gr6, #0, icc0
	beq icc0,0,.L702
	slli gr6,#1,gr6
	setlos #0, gr4
.L703:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L703
.L702:
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L698
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L698:
	ret
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bc icc0,2,.L714
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bhi icc0,2,.L714
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L713
.L715:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L715
	bra .L713
.L714:
	cmpi gr7, #0, icc0
	beq icc0,0,.L717
	slli gr7,#2,gr7
	setlos #0, gr5
.L718:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
	cmp gr7,gr5,icc0
	bne icc0,2,.L718
.L717:
	cmp gr10,gr4,icc0
	bls icc0,0,.L713
.L719:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L719
.L713:
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
.L735:
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L733
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L735
.L733:
	ret
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
.L739:
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L737
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L739
.L737:
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
	bp icc0,0,.L747
	mov gr19, gr8
	mov gr18, gr15
	call __ftoi
.L741:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L747:
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
	bra .L741
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
.L749:
	sra gr8, gr4, gr5
	andi gr5, #1, gr5
	add gr6,gr5,gr6
	addi gr4,#1,gr4
	cmpi gr4,#16,icc0
	bne icc0,2,.L749
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
.L752:
	sra gr6, gr4, gr5
	andi gr5, #1, gr5
	add gr8,gr5,gr8
	addi gr4,#1,gr4
	cmpi gr4,#16,icc0
	bne icc0,2,.L752
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	setlos #0, gr6
	cmpi gr8, #0, icc0
	beq icc0,0,.L754
.L756:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	srlicc gr8, #1, gr8, icc0
	bne icc0,2,.L756
.L754:
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	setlos #0, gr6
	cmpi gr8, #0, icc0
	beq icc0,0,.L759
	cmpi gr9, #0, icc0
	beq icc0,0,.L759
.L761:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	srlicc gr9, #1, gr9, icc0
	bne icc0,2,.L761
.L759:
	mov gr6, gr8
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	setlos #1, gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L781
	setlos #32, gr5
	setlos #1, gr4
.L766:
	cmpi gr9, #0, icc0
	bn icc0,0,.L767
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L767
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L766
.L775:
	setlos #0, gr5
	bra .L769
.L767:
	cmpi gr4, #0, icc0
	beq icc0,0,.L775
.L781:
	setlos #0, gr5
.L771:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L771
.L769:
	cmpi gr10, #0, icc0
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
	bn icc0,0,.L785
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L782:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L785:
	setlos #-1, gr8
	bra .L782
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
	bn icc0,0,.L789
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
.L786:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L789:
	setlos #-1, gr8
	bra .L786
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
	setlos #1, gr4
	csub gr0, gr9, gr9, cc4, 1
	cmov gr4, gr10, cc4, 1
	cmov gr0, gr10, cc4, 0
	cmpi gr9, #0, icc0
	beq icc0,0,.L798
	setlos #0, gr6
	setlos #0, gr7
.L795:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	sraicc gr9, #1, gr9, icc0
	beq icc0,0,.L794
	addi gr6,#1,gr6
	cmpi gr6,#32,icc0
	bne icc0,2,.L795
.L794:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	csub gr0, gr7, gr7, cc4, 1
	mov gr7, gr8
	ret
.L798:
	setlos #0, gr7
	bra .L794
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr7, cc4, 1
	cmov gr0, gr7, cc4, 0
	cmpi gr9, #0, icc0
	ckn icc0, cc4
	setlos #1, gr5
	csub gr0, gr9, gr9, cc4, 1
	cxor gr7, gr5, gr7, cc4, 1
	mov gr8, gr6
	cmp gr8,gr9,icc0
	bls icc0,0,.L816
	setlos #32, gr5
	setlos #1, gr4
.L810:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L809
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L810
.L817:
	setlos #0, gr5
	bra .L811
.L816:
	setlos #1, gr4
	bra .L825
.L809:
	cmpi gr4, #0, icc0
	beq icc0,0,.L817
.L825:
	setlos #0, gr5
.L813:
	cmp gr6,gr9,icc0
	cknc icc0, cc4
	csub gr6, gr9, gr6, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L813
.L811:
	mov gr5, gr8
	cmpi gr7, #0, icc0
	ckne icc0, cc4
	csub gr0, gr5, gr8, cc4, 1
	ret
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr10, cc4, 1
	cmov gr0, gr10, cc4, 0
	mov gr8, gr7
	cmpi gr9,#0,icc0
	cklt icc0, cc4
	csub gr0, gr9, gr4, cc4, 1
	cmov gr9, gr4, cc4, 0
	cmp gr8,gr4,icc0
	bls icc0,0,.L835
	setlos #32, gr6
	setlos #1, gr5
.L829:
	slli gr4,#1,gr4
	slli gr5,#1,gr5
	cmp gr8,gr4,icc0
	bls icc0,0,.L828
	addicc gr6, #-1, gr6, icc0
	bne icc0,2,.L829
	bra .L830
.L835:
	setlos #1, gr5
	bra .L840
.L828:
	cmpi gr5, #0, icc0
	beq icc0,0,.L830
.L840:
	cmp gr7,gr4,icc0
	cknc icc0, cc4
	csub gr7, gr4, gr7, cc4, 1
	srli gr4, #1, gr4
	srlicc gr5, #1, gr5, icc0
	bne icc0,2,.L840
.L830:
	mov gr7, gr8
	cmpi gr10, #0, icc0
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
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L860
	setlos #16, gr6
	setlos #1, gr4
.L846:
	slli gr9,#16,gr5
	srai gr5, #16, gr5
	cmpi gr5, #0, icc0
	bn icc0,0,.L847
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L847
	addicc gr6, #-1, gr6, icc0
	bne icc0,2,.L846
.L855:
	setlos #0, gr5
.L849:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L847:
	cmpi gr4, #0, icc0
	beq icc0,0,.L855
.L860:
	setlos #0, gr5
	bra .L851
.L850:
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	beq icc0,0,.L849
.L851:
	cmp gr8,gr9,icc0
	bc icc0,2,.L850
	sub gr8,gr9,gr8
	sethi #hi(#0),gr8
	or gr4, gr5, gr5
	bra .L850
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	setlos #1, gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L877
	setlos #32, gr5
	setlos #1, gr4
.L862:
	cmpi gr9, #0, icc0
	bn icc0,0,.L863
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L863
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L862
.L871:
	setlos #0, gr5
	bra .L865
.L863:
	cmpi gr4, #0, icc0
	beq icc0,0,.L871
.L877:
	setlos #0, gr5
.L867:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L867
.L865:
	cmpi gr10, #0, icc0
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
	beq icc0,2,.L879
	addi gr10,#-32,gr10
	sll gr9,gr10,gr8
	setlos #0, gr5
.L880:
	mov gr5, gr9
.L881:
	ret
.L879:
	cmpi gr10, #0, icc0
	beq icc0,0,.L881
	sll gr9,gr10,gr5
	setlos #32, gr4
	sub gr4,gr10,gr4
	srl gr9, gr4, gr4
	sll gr8,gr10,gr8
	or gr4, gr8, gr8
	bra .L880
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L884
	srai gr8, #31, gr5
	addi gr10,#-32,gr10
	sra gr8, gr10, gr9
.L885:
	mov gr5, gr8
.L886:
	ret
.L884:
	cmpi gr10, #0, icc0
	beq icc0,0,.L886
	sra gr8, gr10, gr5
	setlos #32, gr4
	sub gr4,gr10,gr4
	sll gr8,gr4,gr4
	srl gr9, gr10, gr9
	or gr4, gr9, gr9
	bra .L885
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli gr8, #24, gr4
	slli gr9,#24,gr5
	srli gr8, #8, gr6
	sethi #hi(#65280), gr10
	setlo #lo(#65280), gr10
	and gr6, gr10, gr6
	or gr4, gr6, gr4
	slli gr8,#8,gr7
	srli gr9, #24, gr6
	or gr7, gr6, gr6
	sethi #hi(#16711680), gr7
	setlo #lo(#16711680), gr7
	and gr6, gr7, gr6
	or gr4, gr6, gr4
	slli gr8,#24,gr8
	or gr4, gr8, gr4
	slli gr9,#8,gr6
	srli gr9, #24, gr11
	or gr5, gr11, gr5
	srli gr9, #8, gr9
	or gr9, gr8, gr9
	and gr9, gr10, gr9
	or gr5, gr9, gr8
	and gr6, gr7, gr5
	or gr8, gr5, gr8
	mov gr4, gr9
	ret
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli gr8, #24, gr4
	slli gr8,#24,gr5
	or gr4, gr5, gr4
	srli gr8, #8, gr5
	sethi #hi(#65280), gr6
	setlo #lo(#65280), gr6
	and gr5, gr6, gr5
	or gr4, gr5, gr4
	slli gr8,#8,gr8
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
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
	sub gr8,gr4,gr8
	andi gr4, #2, gr4
	cmpi gr4, #0, icc0
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
	blt icc0,0,.L895
	bgt icc0,0,.L896
	cmp gr9,gr11,icc0
	bc icc0,0,.L895
	bhi icc0,0,.L896
	setlos #1, gr8
	bra .L891
.L895:
	setlos #0, gr8
.L891:
	ret
.L896:
	setlos #2, gr8
	bra .L891
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp gr8,gr10,icc0
	blt icc0,0,.L901
	bgt icc0,0,.L902
	cmp gr9,gr11,icc0
	bc icc0,0,.L901
	bhi icc0,0,.L902
	setlos #1, gr8
	bra .L898
.L901:
	setlos #0, gr8
.L898:
	addi gr8,#-1,gr8
	ret
.L902:
	setlos #2, gr8
	bra .L898
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
	not gr4,gr6
	andi gr6, #1, gr6
	srli gr4, #1, gr4
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
	beq icc0,2,.L905
	addi gr10,#-32,gr10
	srl gr8, gr10, gr9
	setlos #0, gr5
.L906:
	mov gr5, gr8
.L907:
	ret
.L905:
	cmpi gr10, #0, icc0
	beq icc0,0,.L907
	srl gr8, gr10, gr5
	setlos #32, gr4
	sub gr4,gr10,gr4
	sll gr8,gr4,gr4
	srl gr9, gr10, gr9
	or gr4, gr9, gr9
	bra .L906
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	mov gr9, gr7
	sethi #hi(#65535), gr10
	setlo #lo(#65535), gr10
	and gr8, gr10, gr12
	and gr9, gr10, gr5
	umul gr12,gr5,gr14
	srli gr15, #16, gr4
	srli gr8, #16, gr6
	umul gr5,gr6,gr8
	add gr4,gr9,gr4
	and gr10, gr15, gr9
	slli gr4,#16,gr5
	add gr9,gr5,gr9
	srli gr5, #16, gr5
	srli gr7, #16, gr7
	umul gr12,gr7,gr12
	add gr5,gr13,gr5
	and gr9, gr10, gr9
	slli gr5,#16,gr8
	add gr9,gr8,gr9
	srli gr4, #16, gr8
	umul gr6,gr7,gr6
	add gr8,gr7,gr8
	srli gr5, #16, gr5
	add gr8,gr5,gr8
	ret
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr9, gr7
	sethi #hi(#65535), gr6
	setlo #lo(#65535), gr6
	and gr9, gr6, gr14
	and gr11, gr6, gr18
	umul gr14,gr18,gr4
	srli gr5, #16, gr4
	srli gr9, #16, gr12
	umul gr18,gr12,gr18
	add gr4,gr19,gr4
	and gr6, gr5, gr9
	slli gr4,#16,gr5
	add gr9,gr5,gr9
	srli gr5, #16, gr5
	srli gr11, #16, gr13
	umul gr14,gr13,gr14
	add gr5,gr15,gr5
	and gr9, gr6, gr9
	slli gr5,#16,gr6
	add gr9,gr6,gr9
	srli gr4, #16, gr4
	umul gr12,gr13,gr12
	add gr4,gr13,gr4
	srli gr5, #16, gr5
	add gr4,gr5,gr4
	umul gr7,gr10,gr6
	add gr7,gr4,gr4
	umul gr11,gr8,gr6
	add gr4,gr7,gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,16), gr5
	addi sp,#24,sp
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
	bra .L919
.L917:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L918
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L919:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L917
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L917
.L918:
	cmpi gr24, #0, icc0
	bn icc0,0,.L924
.L916:
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
.L924:
	mov gr22, gr10
	mov gr23, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
	mov gr8, gr22
	mov gr9, gr23
	bra .L916
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
	bra .L928
.L926:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L927
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L928:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L926
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L926
.L927:
	cmpi gr22, #0, icc0
	bn icc0,0,.L933
.L925:
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
.L933:
	mov gr20, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
	mov gr8, gr20
	bra .L925
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L938
	bhi icc0,0,.L939
	cmp gr9,gr11,icc0
	bc icc0,0,.L938
	bhi icc0,0,.L939
	setlos #1, gr8
	bra .L934
.L938:
	setlos #0, gr8
.L934:
	ret
.L939:
	setlos #2, gr8
	bra .L934
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp gr8,gr10,icc0
	bc icc0,0,.L944
	bhi icc0,0,.L945
	cmp gr9,gr11,icc0
	bc icc0,0,.L944
	bhi icc0,0,.L945
	setlos #1, gr8
	bra .L941
.L944:
	setlos #0, gr8
.L941:
	addi gr8,#-1,gr8
	ret
.L945:
	setlos #2, gr8
	bra .L941
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
