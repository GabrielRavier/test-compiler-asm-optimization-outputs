	.set noreorder
	.set volatile
	.set noat
	.set nomacro
	.arch ev4
	.text
	.align 2
	.align 4
	.globl make_ti
	.ent make_ti
$make_ti..ng:
make_ti:
	.frame $30,0,$26,0
$LFB0:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	stq $17,8($16)
	stq $18,0($16)
	ret $31,($26),1
	.cfi_endproc
$LFE0:
	.end make_ti
	.align 2
	.align 4
	.globl make_tu
	.ent make_tu
$make_tu..ng:
make_tu:
	.frame $30,0,$26,0
$LFB1:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	stq $17,8($16)
	stq $18,0($16)
	ret $31,($26),1
	.cfi_endproc
$LFE1:
	.end make_tu
	.align 2
	.align 4
	.globl memmove
	.ent memmove
$memmove..ng:
memmove:
	.frame $30,0,$26,0
$LFB2:
	.cfi_startproc
	.prologue 0
	cmpule $16,$17,$1
	cpys $f31,$f31,$f31
	mov $16,$0
	bne $1,$L5
	addq $17,$18,$17
	cpys $f31,$f31,$f31
	addq $16,$18,$2
	beq $18,$L6
	.align 4
$L7:
	lda $17,-1($17)
	lda $2,-1($2)
	lda $5,1($17)
	ldq_u $1,0($17)
	cmpeq $0,$2,$4
	ldq_u $3,0($2)
	extqh $1,$5,$1
	mskbl $3,$2,$3
	sra $1,56,$1
	insbl $1,$2,$1
	bis $1,$3,$1
	stq_u $1,0($2)
	beq $4,$L7
	ret $31,($26),1
	.align 4
$L5:
	cmpeq $16,$17,$1
	beq $1,$L52
$L6:
	ret $31,($26),1
	.align 4
$L52:
	beq $18,$L6
	lda $7,-1($18)
	cmpule $7,13,$1
	cpys $f31,$f31,$f31
	lda $3,1($17)
	bne $1,$L8
	lda $4,1($17)
	subq $16,$4,$1
	cmpule $1,6,$1
	cpys $f31,$f31,$f31
	mov $4,$3
	bne $1,$L8
	subq $31,$16,$5
	and $5,7,$3
	beq $3,$L22
	ldq_u $1,0($17)
	and $5,6,$2
	ldq_u $6,0($16)
	lda $8,1($16)
	extqh $1,$4,$1
	mskbl $6,$16,$6
	sra $1,56,$1
	insbl $1,$16,$1
	cpys $f31,$f31,$f31
	bis $1,$6,$1
	stq_u $1,0($16)
	bis $31,$31,$31
	beq $2,$L9
	lda $1,2($17)
	ldq_u $2,1($17)
	lda $6,1($16)
	ldq_u $8,1($16)
	cmpule $3,2,$7
	extqh $2,$1,$2
	mskbl $8,$6,$8
	sra $2,56,$2
	mov $1,$4
	insbl $2,$6,$2
	bis $2,$8,$2
	stq_u $2,1($16)
	mov $7,$2
	lda $8,2($16)
	lda $7,-2($18)
	bne $2,$L9
	lda $1,3($17)
	ldq_u $2,2($17)
	lda $6,2($16)
	ldq_u $7,2($16)
	and $5,4,$5
	extqh $2,$1,$2
	mskbl $7,$6,$7
	sra $2,56,$2
	mov $1,$4
	insbl $2,$6,$2
	lda $8,3($16)
	cpys $f31,$f31,$f31
	bis $2,$7,$2
	stq_u $2,2($16)
	lda $7,-3($18)
	beq $5,$L9
	lda $1,4($17)
	ldq_u $2,3($17)
	lda $5,3($16)
	ldq_u $7,3($16)
	cmpule $3,4,$6
	extqh $2,$1,$2
	mskbl $7,$5,$7
	sra $2,56,$2
	mov $1,$4
	insbl $2,$5,$2
	lda $8,4($16)
	cpys $f31,$f31,$f31
	bis $2,$7,$2
	stq_u $2,3($16)
	lda $7,-4($18)
	bne $6,$L9
	lda $1,5($17)
	ldq_u $2,4($17)
	lda $5,4($16)
	ldq_u $7,4($16)
	cmpeq $3,5,$6
	extqh $2,$1,$2
	mskbl $7,$5,$7
	sra $2,56,$2
	mov $1,$4
	insbl $2,$5,$2
	lda $8,5($16)
	cpys $f31,$f31,$f31
	bis $2,$7,$2
	stq_u $2,4($16)
	lda $7,-5($18)
	bne $6,$L9
	lda $1,6($17)
	ldq_u $2,5($17)
	lda $5,5($16)
	ldq_u $7,5($16)
	cmpeq $3,7,$6
	extqh $2,$1,$2
	mskbl $7,$5,$7
	sra $2,56,$2
	mov $1,$4
	insbl $2,$5,$2
	lda $8,6($16)
	cpys $f31,$f31,$f31
	bis $2,$7,$2
	stq_u $2,5($16)
	lda $7,-6($18)
	beq $6,$L9
	lda $4,7($17)
	ldq_u $1,6($17)
	lda $2,6($16)
	ldq_u $5,6($16)
	lda $8,7($16)
	extqh $1,$4,$1
	mskbl $5,$2,$5
	sra $1,56,$1
	lda $7,-7($18)
	insbl $1,$2,$1
	bis $1,$5,$1
	stq_u $1,6($16)
$L9:
	subq $18,$3,$18
	addq $17,$3,$17
	bic $18,7,$6
	addq $0,$3,$3
	addq $17,$6,$5
	.align 4
$L17:
	ldq_u $1,0($17)
	bis $31,$31,$31
	lda $3,8($3)
	ldq_u $2,7($17)
	extql $1,$17,$1
	extqh $2,$17,$2
	lda $17,8($17)
	cpys $f31,$f31,$f31
	bis $1,$2,$1
	stq $1,-8($3)
	cmpeq $5,$17,$2
	beq $2,$L17
	cmpeq $18,$6,$18
	addq $4,$6,$1
	addq $8,$6,$2
	cpys $f31,$f31,$f31
	subq $7,$6,$3
	bne $18,$L6
	lda $7,1($1)
	ldq_u $4,0($1)
	cmpeq $3,1,$5
	ldq_u $6,0($2)
	extqh $4,$7,$4
	mskbl $6,$2,$6
	sra $4,56,$4
	insbl $4,$2,$4
	bis $4,$6,$4
	stq_u $4,0($2)
	bis $31,$31,$31
	bne $5,$L6
	lda $8,2($1)
	ldq_u $4,1($1)
	lda $5,1($2)
	ldq_u $7,1($2)
	cmpeq $3,2,$6
	extqh $4,$8,$4
	mskbl $7,$5,$7
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$7,$4
	stq_u $4,1($2)
	bis $31,$31,$31
	bne $6,$L6
	lda $8,3($1)
	ldq_u $4,2($1)
	lda $5,2($2)
	ldq_u $7,2($2)
	cmpeq $3,3,$6
	extqh $4,$8,$4
	mskbl $7,$5,$7
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$7,$4
	stq_u $4,2($2)
	bis $31,$31,$31
	bne $6,$L6
	lda $8,4($1)
	ldq_u $4,3($1)
	lda $5,3($2)
	ldq_u $7,3($2)
	cmpeq $3,4,$6
	extqh $4,$8,$4
	mskbl $7,$5,$7
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$7,$4
	stq_u $4,3($2)
	bis $31,$31,$31
	bne $6,$L6
	lda $8,5($1)
	ldq_u $4,4($1)
	lda $5,4($2)
	ldq_u $7,4($2)
	cmpeq $3,5,$6
	extqh $4,$8,$4
	mskbl $7,$5,$7
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$7,$4
	stq_u $4,4($2)
	bis $31,$31,$31
	bne $6,$L6
	lda $7,6($1)
	ldq_u $4,5($1)
	lda $5,5($2)
	ldq_u $6,5($2)
	cmpeq $3,6,$3
	extqh $4,$7,$4
	mskbl $6,$5,$6
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$6,$4
	stq_u $4,5($2)
	bis $31,$31,$31
	bne $3,$L6
	lda $5,7($1)
	ldq_u $1,6($1)
	lda $4,6($2)
	ldq_u $3,6($2)
	extqh $1,$5,$1
	mskbl $3,$4,$3
	sra $1,56,$1
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,6($2)
	ret $31,($26),1
	.align 4
$L8:
	addq $0,$18,$18
	mov $0,$2
	.align 4
$L20:
	lda $2,1($2)
	ldq_u $1,-1($3)
	lda $5,-1($2)
	cpys $f31,$f31,$f31
	cmpeq $2,$18,$6
	ldq_u $4,-1($2)
	extqh $1,$3,$1
	lda $3,1($3)
	sra $1,56,$1
	mskbl $4,$5,$4
	insbl $1,$5,$1
	cpys $f31,$f31,$f31
	bis $1,$4,$1
	stq_u $1,-1($2)
	beq $6,$L20
	ret $31,($26),1
$L22:
	mov $17,$4
	mov $16,$8
	mov $18,$7
	br $31,$L9
	.cfi_endproc
$LFE2:
	.end memmove
	.align 2
	.align 4
	.globl memccpy
	.ent memccpy
$memccpy..ng:
memccpy:
	.frame $30,0,$26,0
$LFB3:
	.cfi_startproc
	.prologue 0
	and $18,0xff,$18
	bne $19,$L54
	br $31,$L56
	.align 4
$L57:
	lda $17,1($17)
	cpys $f31,$f31,$f31
	lda $16,1($16)
	beq $19,$L56
$L54:
	ldq_u $1,0($17)
	bis $31,$31,$31
	lda $19,-1($19)
	ldq_u $3,0($16)
	extbl $1,$17,$1
	mskbl $3,$16,$3
	insbl $1,$16,$2
	and $1,0xff,$1
	bis $2,$3,$2
	stq_u $2,0($16)
	cmpeq $1,$18,$1
	beq $1,$L57
	lda $0,1($16)
	ret $31,($26),1
	.align 4
$L56:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE3:
	.end memccpy
	.align 2
	.align 4
	.globl memchr
	.ent memchr
$memchr..ng:
memchr:
	.frame $30,0,$26,0
$LFB4:
	.cfi_startproc
	.prologue 0
	and $17,0xff,$17
	bne $18,$L64
	br $31,$L67
	.align 4
$L66:
	lda $16,1($16)
	beq $18,$L67
$L64:
	lda $18,-1($18)
	ldq_u $1,0($16)
	extbl $1,$16,$1
	cmpeq $1,$17,$1
	beq $1,$L66
	mov $16,$0
	ret $31,($26),1
	.align 4
$L67:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE4:
	.end memchr
	.align 2
	.align 4
	.globl memcmp
	.ent memcmp
$memcmp..ng:
memcmp:
	.frame $30,0,$26,0
$LFB5:
	.cfi_startproc
	.prologue 0
	beq $18,$L74
	.align 4
$L81:
	ldq_u $2,0($16)
	bis $31,$31,$31
	lda $18,-1($18)
	ldq_u $3,0($17)
	extbl $2,$16,$1
	extbl $3,$17,$4
	cmpeq $1,$4,$1
	beq $1,$L80
	lda $16,1($16)
	cpys $f31,$f31,$f31
	lda $17,1($17)
	bne $18,$L81
$L74:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L80:
	extbl $2,$16,$2
	extbl $3,$17,$3
	subl $2,$3,$0
	ret $31,($26),1
	.cfi_endproc
$LFE5:
	.end memcmp
	.align 2
	.align 4
	.globl memcpy
	.ent memcpy
memcpy:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB6:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!1
	lda $29,0($29)		!gpdisp!1
$memcpy..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -8
	mov $16,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	beq $18,$L83
	ldq $27,memcpy($29)		!literal!2
	jsr $26,($27),memcpy		!lituse_jsr!2
	ldah $29,0($26)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
$L83:
	mov $9,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE6:
	.end memcpy
	.align 2
	.align 4
	.globl memrchr
	.ent memrchr
$memrchr..ng:
memrchr:
	.frame $30,0,$26,0
$LFB7:
	.cfi_startproc
	.prologue 0
	lda $18,-1($18)
	addq $16,$18,$18
	and $17,0xff,$17
	cpys $f31,$f31,$f31
	lda $16,-1($16)
	br $31,$L88
	.align 4
$L90:
	lda $18,-1($18)
	ldq_u $1,0($0)
	extbl $1,$0,$1
	cmpeq $1,$17,$1
	bne $1,$L87
$L88:
	cmpeq $18,$16,$1
	mov $18,$0
	beq $1,$L90
	mov $31,$0
$L87:
	ret $31,($26),1
	.cfi_endproc
$LFE7:
	.end memrchr
	.align 2
	.align 4
	.globl memset
	.ent memset
memset:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB8:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!4
	lda $29,0($29)		!gpdisp!4
$memset..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -8
	mov $16,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	beq $18,$L94
	and $17,0xff,$17
	ldq $27,memset($29)		!literal!5
	jsr $26,($27),memset		!lituse_jsr!5
	ldah $29,0($26)		!gpdisp!6
	lda $29,0($29)		!gpdisp!6
	bis $31,$31,$31
$L94:
	mov $9,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE8:
	.end memset
	.align 2
	.align 4
	.globl stpcpy
	.ent stpcpy
$stpcpy..ng:
stpcpy:
	.frame $30,0,$26,0
$LFB9:
	.cfi_startproc
	.prologue 0
	lda $2,1($17)
	ldq_u $1,0($17)
	mov $16,$0
	ldq_u $4,0($16)
	extqh $1,$2,$1
	mskbl $4,$16,$4
	sra $1,56,$1
	insbl $1,$16,$3
	bis $3,$4,$3
	stq_u $3,0($16)
	beq $1,$L96
	.align 4
$L97:
	mov $2,$17
	lda $0,1($0)
	lda $2,1($2)
	ldq_u $1,0($17)
	ldq_u $4,0($0)
	extqh $1,$2,$1
	mskbl $4,$0,$4
	sra $1,56,$1
	insbl $1,$0,$3
	cpys $f31,$f31,$f31
	bis $3,$4,$3
	stq_u $3,0($0)
	bne $1,$L97
$L96:
	ret $31,($26),1
	.cfi_endproc
$LFE9:
	.end stpcpy
	.align 2
	.align 4
	.globl strchrnul
	.ent strchrnul
$strchrnul..ng:
strchrnul:
	.frame $30,0,$26,0
$LFB10:
	.cfi_startproc
	.prologue 0
	lda $2,1($16)
	ldq_u $1,0($16)
	mov $16,$0
	and $17,0xff,$17
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L103
	ret $31,($26),1
	.align 4
$L105:
	mov $2,$0
	lda $2,1($2)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L102
$L103:
	and $1,0xff,$1
	cmpeq $1,$17,$1
	beq $1,$L105
$L102:
	ret $31,($26),1
	.cfi_endproc
$LFE10:
	.end strchrnul
	.align 2
	.align 4
	.globl strchr
	.ent strchr
$strchr..ng:
strchr:
	.frame $30,0,$26,0
$LFB11:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	br $31,$L111
	.align 4
$L114:
	mov $2,$0
	beq $1,$L113
$L111:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,$17,$3
	beq $3,$L114
	ret $31,($26),1
	.align 4
$L113:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE11:
	.end strchr
	.align 2
	.align 4
	.globl strcmp
	.ent strcmp
$strcmp..ng:
strcmp:
	.frame $30,0,$26,0
$LFB12:
	.cfi_startproc
	.prologue 0
	lda $3,1($16)
	ldq_u $1,0($16)
	lda $4,1($17)
	br $31,$L123
	.align 4
$L116:
	mov $3,$16
	beq $1,$L124
	mov $4,$17
	ldq_u $1,0($16)
	lda $3,1($3)
	lda $4,1($4)
$L123:
	extqh $1,$3,$1
	ldq_u $2,0($17)
	sra $1,56,$1
	extqh $2,$4,$2
	sra $2,56,$2
	cmpeq $1,$2,$5
	bne $5,$L116
	and $1,0xff,$0
	and $2,0xff,$2
	subl $0,$2,$0
	ret $31,($26),1
	.align 4
$L124:
	and $2,0xff,$2
	mov $31,$0
	subl $0,$2,$0
	ret $31,($26),1
	.cfi_endproc
$LFE12:
	.end strcmp
	.align 2
	.align 4
	.globl strlen
	.ent strlen
$strlen..ng:
strlen:
	.frame $30,0,$26,0
$LFB13:
	.cfi_startproc
	.prologue 0
	lda $2,1($16)
	ldq_u $1,0($16)
	mov $31,$0
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L125
	.align 4
$L127:
	mov $2,$0
	lda $2,1($2)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L127
	subq $0,$16,$0
$L125:
	ret $31,($26),1
	.cfi_endproc
$LFE13:
	.end strlen
	.align 2
	.align 4
	.globl strncmp
	.ent strncmp
$strncmp..ng:
strncmp:
	.frame $30,0,$26,0
$LFB14:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $18,$L132
	lda $18,-1($18)
	ldq_u $0,0($16)
	mov $17,$3
	addq $17,$18,$5
	extbl $0,$16,$0
	bne $0,$L135
	br $31,$L141
	.align 4
$L136:
	ldq_u $0,0($16)
	extbl $0,$16,$0
	beq $0,$L142
	mov $7,$3
$L135:
	cmpeq $3,$5,$1
	ldq_u $2,0($3)
	lda $16,1($16)
	cmpeq $1,0,$1
	extbl $2,$3,$2
	lda $7,1($3)
	cmpeq $2,$0,$6
	cmpult $31,$2,$4
	and $4,$6,$4
	and $1,$4,$1
	bne $1,$L136
	addl $31,$0,$0
	subl $0,$2,$0
$L132:
	ret $31,($26),1
	.align 4
$L142:
	ldq_u $2,1($3)
	extbl $2,$7,$2
	subl $0,$2,$0
	ret $31,($26),1
$L141:
	ldq_u $2,0($17)
	extbl $2,$17,$2
	subl $0,$2,$0
	ret $31,($26),1
	.cfi_endproc
$LFE14:
	.end strncmp
	.align 2
	.align 4
	.globl swab
	.ent swab
$swab..ng:
swab:
	.frame $30,0,$26,0
$LFB15:
	.cfi_startproc
	.prologue 0
	cmple $18,1,$1
	bne $1,$L143
	bic $18,1,$18
	addq $16,$18,$5
	.align 4
$L145:
	ldq_u $1,1($16)
	bis $31,$31,$31
	lda $4,1($16)
	ldq_u $2,0($17)
	lda $3,1($17)
	extbl $1,$4,$1
	mskbl $2,$17,$2
	insbl $1,$17,$1
	bis $1,$2,$1
	stq_u $1,0($17)
	ldq_u $1,0($16)
	ldq_u $2,1($17)
	extbl $1,$16,$1
	mskbl $2,$3,$2
	insbl $1,$3,$1
	lda $16,2($16)
	bis $1,$2,$1
	stq_u $1,1($17)
	cmpeq $16,$5,$1
	cpys $f31,$f31,$f31
	lda $17,2($17)
	beq $1,$L145
$L143:
	ret $31,($26),1
	.cfi_endproc
$LFE15:
	.end swab
	.align 2
	.align 4
	.globl isalpha
	.ent isalpha
$isalpha..ng:
isalpha:
	.frame $30,0,$26,0
$LFB16:
	.cfi_startproc
	.prologue 0
	bis $16,32,$0
	subl $0,97,$0
	zapnot $0,15,$0
	cmpule $0,25,$0
	ret $31,($26),1
	.cfi_endproc
$LFE16:
	.end isalpha
	.align 2
	.align 4
	.globl isascii
	.ent isascii
$isascii..ng:
isascii:
	.frame $30,0,$26,0
$LFB17:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$0
	cmpule $0,127,$0
	ret $31,($26),1
	.cfi_endproc
$LFE17:
	.end isascii
	.align 2
	.align 4
	.globl isblank
	.ent isblank
$isblank..ng:
isblank:
	.frame $30,0,$26,0
$LFB18:
	.cfi_startproc
	.prologue 0
	cmpeq $16,32,$0
	cmpeq $16,9,$16
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE18:
	.end isblank
	.align 2
	.align 4
	.globl iscntrl
	.ent iscntrl
$iscntrl..ng:
iscntrl:
	.frame $30,0,$26,0
$LFB19:
	.cfi_startproc
	.prologue 0
	cmpule $16,31,$0
	cmpeq $16,127,$16
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE19:
	.end iscntrl
	.align 2
	.align 4
	.globl isdigit
	.ent isdigit
$isdigit..ng:
isdigit:
	.frame $30,0,$26,0
$LFB20:
	.cfi_startproc
	.prologue 0
	subl $16,48,$0
	zapnot $0,15,$0
	cmpule $0,9,$0
	ret $31,($26),1
	.cfi_endproc
$LFE20:
	.end isdigit
	.align 2
	.align 4
	.globl isgraph
	.ent isgraph
$isgraph..ng:
isgraph:
	.frame $30,0,$26,0
$LFB21:
	.cfi_startproc
	.prologue 0
	subl $16,33,$0
	zapnot $0,15,$0
	cmpule $0,93,$0
	ret $31,($26),1
	.cfi_endproc
$LFE21:
	.end isgraph
	.align 2
	.align 4
	.globl islower
	.ent islower
$islower..ng:
islower:
	.frame $30,0,$26,0
$LFB22:
	.cfi_startproc
	.prologue 0
	subl $16,97,$0
	zapnot $0,15,$0
	cmpule $0,25,$0
	ret $31,($26),1
	.cfi_endproc
$LFE22:
	.end islower
	.align 2
	.align 4
	.globl isprint
	.ent isprint
$isprint..ng:
isprint:
	.frame $30,0,$26,0
$LFB23:
	.cfi_startproc
	.prologue 0
	subl $16,32,$0
	zapnot $0,15,$0
	cmpule $0,94,$0
	ret $31,($26),1
	.cfi_endproc
$LFE23:
	.end isprint
	.align 2
	.align 4
	.globl isspace
	.ent isspace
$isspace..ng:
isspace:
	.frame $30,0,$26,0
$LFB24:
	.cfi_startproc
	.prologue 0
	subl $16,9,$0
	zapnot $0,15,$0
	cmpeq $16,32,$16
	cmpule $0,4,$0
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE24:
	.end isspace
	.align 2
	.align 4
	.globl isupper
	.ent isupper
$isupper..ng:
isupper:
	.frame $30,0,$26,0
$LFB25:
	.cfi_startproc
	.prologue 0
	subl $16,65,$0
	zapnot $0,15,$0
	cmpule $0,25,$0
	ret $31,($26),1
	.cfi_endproc
$LFE25:
	.end isupper
	.align 2
	.align 4
	.globl iswcntrl
	.ent iswcntrl
$iswcntrl..ng:
iswcntrl:
	.frame $30,0,$26,0
$LFB26:
	.cfi_startproc
	.prologue 0
	subl $16,127,$1
	zapnot $1,15,$1
	zapnot $16,15,$2
	cmpule $1,32,$1
	cmpule $2,31,$2
	lda $0,1($31)
	bis $1,$2,$1
	bne $1,$L158
	ldah $1,-1($16)
	addl $1,7,$1
	lda $16,-8232($16)
	zapnot $16,15,$16
	zapnot $1,15,$1
	cmpule $16,1,$16
	cmpule $1,2,$1
	cmoveq $16,$1,$0
$L158:
	ret $31,($26),1
	.cfi_endproc
$LFE26:
	.end iswcntrl
	.align 2
	.align 4
	.globl iswdigit
	.ent iswdigit
$iswdigit..ng:
iswdigit:
	.frame $30,0,$26,0
$LFB27:
	.cfi_startproc
	.prologue 0
	subl $16,48,$0
	zapnot $0,15,$0
	cmpule $0,9,$0
	ret $31,($26),1
	.cfi_endproc
$LFE27:
	.end iswdigit
	.align 2
	.align 4
	.globl iswprint
	.ent iswprint
$iswprint..ng:
iswprint:
	.frame $30,0,$26,0
$LFB28:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$2
	cmpule $2,254,$1
	bne $1,$L168
	lda $1,-8234($16)
	zapnot $1,15,$1
	ldah $3,1($31)
	lda $4,-18475($3)
	cmpule $1,$4,$1
	lda $4,8231($31)
	cmpule $2,$4,$2
	lda $0,1($31)
	bis $1,$2,$1
	bne $1,$L164
	ldah $2,-1($31)
	lda $1,8192($2)
	addl $16,$1,$1
	zapnot $1,15,$1
	lda $4,8184($31)
	cmpule $1,$4,$1
	bne $1,$L164
	lda $3,-2($3)
	and $16,$3,$0
	addl $2,4,$2
	addl $16,$2,$16
	zapnot $0,15,$0
	zapnot $16,15,$16
	ldah $1,16($31)
	cmpeq $0,$3,$0
	lda $1,3($1)
	cmpule $16,$1,$16
	xor $0,1,$0
	cmoveq $16,0,$0
$L164:
	ret $31,($26),1
	.align 4
$L168:
	addl $16,1,$16
	and $16,127,$16
	lda $0,32($31)
	cmpult $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE28:
	.end iswprint
	.align 2
	.align 4
	.globl iswxdigit
	.ent iswxdigit
$iswxdigit..ng:
iswxdigit:
	.frame $30,0,$26,0
$LFB29:
	.cfi_startproc
	.prologue 0
	bis $16,32,$0
	subl $0,97,$0
	subl $16,48,$16
	zapnot $16,15,$16
	zapnot $0,15,$0
	cmpule $16,9,$16
	cmpule $0,5,$0
	cmovne $16,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE29:
	.end iswxdigit
	.align 2
	.align 4
	.globl toascii
	.ent toascii
$toascii..ng:
toascii:
	.frame $30,0,$26,0
$LFB30:
	.cfi_startproc
	.prologue 0
	and $16,127,$0
	ret $31,($26),1
	.cfi_endproc
$LFE30:
	.end toascii
	.align 2
	.align 4
	.globl fdim
	.ent fdim
$fdim..ng:
fdim:
	.frame $30,0,$26,0
$LFB31:
	.cfi_startproc
	.prologue 0
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L178
	subt $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L178:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.cfi_endproc
$LFE31:
	.end fdim
	.align 2
	.align 4
	.globl fdimf
	.ent fdimf
$fdimf..ng:
fdimf:
	.frame $30,0,$26,0
$LFB32:
	.cfi_startproc
	.prologue 0
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L184
	subs $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L184:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.cfi_endproc
$LFE32:
	.end fdimf
	.align 2
	.align 4
	.globl fmax
	.ent fmax
$fmax..ng:
fmax:
	.frame $30,16,$26,0
$LFB33:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stt $f16,0($30)
	ldq $1,0($30)
	stt $f17,0($30)
	ldq $3,0($30)
	srl $1,63,$2
	srl $3,63,$1
	cmpeq $2,$1,$1
	bne $1,$L186
	cpys $f16,$f16,$f0
	beq $2,$L185
	cpys $f17,$f17,$f0
$L185:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L186:
	.cfi_restore_state
	cmptlt $f16,$f17,$f10
	cpys $f16,$f16,$f0
	fcmovne $f10,$f17,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE33:
	.end fmax
	.align 2
	.align 4
	.globl fmaxf
	.ent fmaxf
$fmaxf..ng:
fmaxf:
	.frame $30,32,$26,0
$LFB34:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	ldah $1,-32768($31)
	sts $f16,0($30)
	ldl $3,0($30)
	sts $f17,16($30)
	cpys $f31,$f31,$f31
	and $1,$3,$2
	ldl $3,16($30)
	addl $31,$2,$2
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L191
	cpys $f16,$f16,$f0
	beq $2,$L190
	cpys $f17,$f17,$f0
$L190:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L191:
	.cfi_restore_state
	lds $f11,0($30)
	lds $f12,16($30)
	cpys $f11,$f11,$f0
	cmptlt $f11,$f12,$f10
	fcmovne $f10,$f12,$f0
	bis $31,$31,$31
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE34:
	.end fmaxf
	.align 2
	.align 4
	.globl fmaxl
	.ent fmaxl
fmaxl:
	.frame $30,64,$26,0
	.mask 0x400fe00,-64
$LFB35:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!7
	lda $29,0($29)		!gpdisp!7
$fmaxl..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	ldq $1,8($18)
	stq $9,8($30)
	.cfi_offset 9, -56
	ldq $9,8($17)
	srl $1,63,$6
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	mov $16,$11
	srl $9,63,$8
	stq $26,0($30)
	stq $12,32($30)
	bis $31,$31,$31
	cmpeq $8,$6,$6
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -64
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	.prologue 1
	ldq $10,0($17)
	bis $31,$31,$31
	ldq $7,0($18)
	bne $6,$L196
	cmovne $8,$7,$10
	cmovne $8,$1,$9
$L198:
	mov $11,$0
	stq $10,0($11)
	stq $9,8($11)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,64($30)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L196:
	.cfi_restore_state
	mov $10,$16
	ldq $27,_OtsLssX($29)		!literal!8
	mov $9,$17
	mov $7,$18
	mov $1,$19
	mov $7,$15
	mov $1,$14
	jsr $26,($27),_OtsLssX		!lituse_jsr!8
	ldah $29,0($26)		!gpdisp!9
	cmplt $31,$0,$0
	lda $29,0($29)		!gpdisp!9
	cmovne $0,$15,$10
	cmovne $0,$14,$9
	br $31,$L198
	.cfi_endproc
$LFE35:
	.end fmaxl
	.align 2
	.align 4
	.globl fmin
	.ent fmin
$fmin..ng:
fmin:
	.frame $30,16,$26,0
$LFB36:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stt $f16,0($30)
	ldq $1,0($30)
	stt $f17,0($30)
	ldq $3,0($30)
	srl $1,63,$2
	srl $3,63,$1
	cmpeq $2,$1,$1
	bne $1,$L204
	cpys $f17,$f17,$f0
	beq $2,$L203
	cpys $f16,$f16,$f0
$L203:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L204:
	.cfi_restore_state
	cmptlt $f16,$f17,$f10
	cpys $f17,$f17,$f0
	fcmovne $f10,$f16,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE36:
	.end fmin
	.align 2
	.align 4
	.globl fminf
	.ent fminf
$fminf..ng:
fminf:
	.frame $30,32,$26,0
$LFB37:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	ldah $1,-32768($31)
	sts $f16,16($30)
	ldl $3,16($30)
	sts $f17,0($30)
	cpys $f31,$f31,$f31
	and $1,$3,$2
	ldl $3,0($30)
	addl $31,$2,$2
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L209
	cpys $f17,$f17,$f0
	beq $2,$L208
	cpys $f16,$f16,$f0
$L208:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L209:
	.cfi_restore_state
	lds $f11,16($30)
	lds $f12,0($30)
	cmptlt $f11,$f12,$f10
	cpys $f12,$f12,$f0
	fcmovne $f10,$f11,$f0
	bis $31,$31,$31
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE37:
	.end fminf
	.align 2
	.align 4
	.globl fminl
	.ent fminl
fminl:
	.frame $30,64,$26,0
	.mask 0x400fe00,-64
$LFB38:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!10
	lda $29,0($29)		!gpdisp!10
$fminl..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	ldq $1,8($17)
	stq $9,8($30)
	.cfi_offset 9, -56
	ldq $9,8($18)
	srl $1,63,$8
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	mov $16,$11
	srl $9,63,$6
	stq $26,0($30)
	stq $12,32($30)
	bis $31,$31,$31
	cmpeq $8,$6,$6
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -64
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	.prologue 1
	ldq $7,0($17)
	bis $31,$31,$31
	ldq $10,0($18)
	bne $6,$L214
	cmovne $8,$7,$10
	cmovne $8,$1,$9
$L216:
	mov $11,$0
	stq $10,0($11)
	stq $9,8($11)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,64($30)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L214:
	.cfi_restore_state
	mov $10,$18
	ldq $27,_OtsLssX($29)		!literal!11
	mov $9,$19
	mov $7,$16
	mov $1,$17
	mov $7,$15
	mov $1,$14
	jsr $26,($27),_OtsLssX		!lituse_jsr!11
	ldah $29,0($26)		!gpdisp!12
	cmplt $31,$0,$0
	lda $29,0($29)		!gpdisp!12
	cmovne $0,$15,$10
	cmovne $0,$14,$9
	br $31,$L216
	.cfi_endproc
$LFE38:
	.end fminl
	.align 2
	.align 4
	.globl l64a
	.ent l64a
l64a:
	.frame $30,0,$26,0
$LFB39:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!13
	lda $29,0($29)		!gpdisp!13
$l64a..ng:
	.prologue 1
	ldah $0,s.0($29)		!gprelhigh
	lda $0,s.0($0)		!gprellow
	addl $31,$16,$16
	cpys $f31,$f31,$f31
	mov $0,$2
	beq $16,$L222
	ldah $5,digits($29)		!gprelhigh
	lda $5,digits($5)		!gprellow
	.align 4
$L223:
	and $16,63,$3
	ldq_u $4,0($2)
	addq $5,$3,$3
	zapnot $16,15,$16
	mskbl $4,$2,$4
	ldq_u $1,0($3)
	srl $16,6,$16
	extbl $1,$3,$1
	insbl $1,$2,$1
	cpys $f31,$f31,$f31
	bis $1,$4,$1
	stq_u $1,0($2)
	lda $2,1($2)
	bne $16,$L223
$L222:
	ldq_u $1,0($2)
	bis $31,$31,$31
	mskbl $1,$2,$1
	stq_u $1,0($2)
	ret $31,($26),1
	.cfi_endproc
$LFE39:
	.end l64a
	.align 2
	.align 4
	.globl srand
	.ent srand
srand:
	.frame $30,0,$26,0
$LFB40:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!14
	lda $29,0($29)		!gpdisp!14
$srand..ng:
	.prologue 1
	ldah $1,seed($29)		!gprelhigh
	subl $16,1,$16
	zapnot $16,15,$16
	stq $16,seed($1)		!gprellow
	ret $31,($26),1
	.cfi_endproc
$LFE40:
	.end srand
	.align 2
	.align 4
	.globl rand
	.ent rand
rand:
	.frame $30,0,$26,0
$LFB41:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!15
	lda $29,0($29)		!gpdisp!15
$rand..ng:
	.prologue 1
	ldah $1,seed($29)		!gprelhigh
	ldah $2,$LC0($29)		!gprelhigh
	ldq $0,seed($1)		!gprellow
	ldq $2,$LC0($2)		!gprellow
	mulq $0,$2,$0
	cpys $f31,$f31,$f31
	lda $0,1($0)
	stq $0,seed($1)		!gprellow
	srl $0,33,$0
	ret $31,($26),1
	.cfi_endproc
$LFE41:
	.end rand
	.align 2
	.align 4
	.globl insque
	.ent insque
$insque..ng:
insque:
	.frame $30,0,$26,0
$LFB42:
	.cfi_startproc
	.prologue 0
	beq $17,$L234
	ldq $1,0($17)
	stq $17,8($16)
	stq $1,0($16)
	stq $16,0($17)
	ldq $1,0($16)
	beq $1,$L228
	stq $16,8($1)
$L228:
	ret $31,($26),1
	.align 4
$L234:
	stq $31,8($16)
	stq $31,0($16)
	ret $31,($26),1
	.cfi_endproc
$LFE42:
	.end insque
	.align 2
	.align 4
	.globl remque
	.ent remque
$remque..ng:
remque:
	.frame $30,0,$26,0
$LFB43:
	.cfi_startproc
	.prologue 0
	ldq $1,0($16)
	beq $1,$L236
	ldq $2,8($16)
	stq $2,8($1)
$L236:
	ldq $2,8($16)
	beq $2,$L235
	stq $1,0($2)
$L235:
	ret $31,($26),1
	.cfi_endproc
$LFE43:
	.end remque
	.align 2
	.align 4
	.globl lsearch
	.ent lsearch
lsearch:
	.frame $30,80,$26,0
	.mask 0x400fe00,-80
$LFB44:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!16
	lda $29,0($29)		!gpdisp!16
$lsearch..ng:
	lda $30,-80($30)
	.cfi_def_cfa_offset 80
	stq $10,16($30)
	.cfi_offset 10, -64
	ldq $10,0($18)
	bis $31,$31,$31
	stq $9,8($30)
	.cfi_offset 9, -72
	mov $19,$9
	stq $11,24($30)
	.cfi_offset 11, -56
	mov $16,$11
	stq $13,40($30)
	.cfi_offset 13, -40
	mov $20,$13
	stq $26,0($30)
	stq $12,32($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -80
	.cfi_offset 12, -48
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	.prologue 1
	stq $18,64($30)
	stq $17,72($30)
	beq $10,$L245
	mov $17,$14
	mov $31,$15
	br $31,$L247
	.align 4
$L259:
	cmpeq $10,$15,$2
	cpys $f31,$f31,$f31
	addq $14,$9,$14
	bne $2,$L245
$L247:
	mov $14,$17
	mov $11,$16
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!19
	lda $29,0($29)		!gpdisp!19
	mov $14,$12
	lda $15,1($15)
	bis $31,$31,$31
	bne $0,$L259
$L244:
	mov $12,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,80($30)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L245:
	.cfi_restore_state
	mulq $9,$10,$12
	ldq $1,64($30)
	lda $10,1($10)
	stq $10,0($1)
	ldq $1,72($30)
	bis $31,$31,$31
	addq $1,$12,$12
	beq $9,$L244
	mov $9,$18
	ldq $27,memmove($29)		!literal!17
	mov $11,$17
	mov $12,$16
	jsr $26,($27),memmove		!lituse_jsr!17
	ldah $29,0($26)		!gpdisp!18
	lda $29,0($29)		!gpdisp!18
	br $31,$L244
	.cfi_endproc
$LFE44:
	.end lsearch
	.align 2
	.align 4
	.globl lfind
	.ent lfind
lfind:
	.frame $30,64,$26,0
	.mask 0x400fe00,-64
$LFB45:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!20
	lda $29,0($29)		!gpdisp!20
$lfind..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $12,32($30)
	.cfi_offset 12, -32
	ldq $12,0($18)
	bis $31,$31,$31
	stq $10,16($30)
	.cfi_offset 10, -48
	mov $16,$10
	stq $11,24($30)
	.cfi_offset 11, -40
	mov $20,$11
	stq $13,40($30)
	.cfi_offset 13, -24
	mov $19,$13
	stq $26,0($30)
	stq $9,8($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	.prologue 1
	beq $12,$L261
	mov $17,$9
	mov $31,$14
	br $31,$L263
	.align 4
$L271:
	cmpeq $12,$14,$1
	cpys $f31,$f31,$f31
	addq $9,$13,$9
	bne $1,$L261
$L263:
	mov $9,$17
	mov $10,$16
	mov $11,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!21
	lda $29,0($29)		!gpdisp!21
	mov $9,$15
	lda $14,1($14)
	bis $31,$31,$31
	bne $0,$L271
$L260:
	mov $15,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,64($30)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L261:
	.cfi_restore_state
	mov $31,$15
	br $31,$L260
	.cfi_endproc
$LFE45:
	.end lfind
	.align 2
	.align 4
	.globl abs
	.ent abs
$abs..ng:
abs:
	.frame $30,0,$26,0
$LFB46:
	.cfi_startproc
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	addl $31,$0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE46:
	.end abs
	.align 2
	.align 4
	.globl atoi
	.ent atoi
$atoi..ng:
atoi:
	.frame $30,0,$26,0
$LFB47:
	.cfi_startproc
	.prologue 0
	lda $3,1($16)
	br $31,$L294
	.align 4
$L296:
	mov $3,$16
	lda $3,1($3)
$L294:
	ldq_u $1,0($16)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,9,$2
	zapnot $2,15,$2
	cmpeq $1,32,$4
	cmpule $2,4,$2
	bis $2,$4,$2
	bne $2,$L296
	cmpeq $1,43,$2
	bne $2,$L276
	cmpeq $1,45,$2
	bis $31,$31,$31
	beq $2,$L297
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L281
	lda $6,1($31)
$L279:
	mov $31,$0
	lda $2,1($16)
	.align 4
$L282:
	mov $2,$16
	lda $2,1($2)
	sll $1,56,$1
	ldq_u $3,0($16)
	s4addl $0,$0,$0
	sra $1,56,$4
	extqh $3,$2,$3
	addl $0,$0,$5
	sra $3,56,$1
	subl $5,$4,$0
	subl $1,48,$1
	zapnot $1,15,$3
	cmpule $3,9,$3
	bne $3,$L282
	subl $4,$5,$4
	cmoveq $6,$4,$0
$L281:
	ret $31,($26),1
	.align 4
$L297:
	subl $1,48,$1
	zapnot $1,15,$2
	mov $31,$6
	cmpule $2,9,$2
	bne $2,$L279
$L295:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L276:
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$6
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	bne $2,$L279
	br $31,$L295
	.cfi_endproc
$LFE47:
	.end atoi
	.align 2
	.align 4
	.globl atol
	.ent atol
$atol..ng:
atol:
	.frame $30,0,$26,0
$LFB48:
	.cfi_startproc
	.prologue 0
	lda $3,1($16)
	br $31,$L319
	.align 4
$L321:
	mov $3,$16
	lda $3,1($3)
$L319:
	ldq_u $1,0($16)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,9,$2
	zapnot $2,15,$2
	cmpeq $1,32,$4
	cmpule $2,4,$2
	bis $2,$4,$2
	bne $2,$L321
	cmpeq $1,43,$2
	bne $2,$L301
	cmpeq $1,45,$2
	bis $31,$31,$31
	beq $2,$L322
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L298
	lda $6,1($31)
$L304:
	mov $31,$0
	lda $2,1($16)
	.align 4
$L307:
	mov $2,$16
	lda $2,1($2)
	sll $1,56,$1
	ldq_u $3,0($16)
	s4addq $0,$0,$0
	sra $1,56,$4
	extqh $3,$2,$3
	addq $0,$0,$5
	sra $3,56,$1
	subq $5,$4,$0
	subl $1,48,$1
	zapnot $1,15,$3
	cmpule $3,9,$3
	bne $3,$L307
	subq $4,$5,$4
	cmoveq $6,$4,$0
$L298:
	ret $31,($26),1
	.align 4
$L322:
	subl $1,48,$1
	zapnot $1,15,$2
	mov $31,$6
	cmpule $2,9,$2
	bne $2,$L304
$L320:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L301:
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$6
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	bne $2,$L304
	br $31,$L320
	.cfi_endproc
$LFE48:
	.end atol
	.align 2
	.align 4
	.globl atoll
	.ent atoll
$atoll..ng:
atoll:
	.frame $30,0,$26,0
$LFB171:
	.cfi_startproc
	.prologue 0
	lda $3,1($16)
	br $31,$L342
	.align 4
$L344:
	mov $3,$16
	lda $3,1($3)
$L342:
	ldq_u $1,0($16)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,9,$2
	zapnot $2,15,$2
	cmpeq $1,32,$4
	cmpule $2,4,$2
	bis $2,$4,$2
	bne $2,$L344
	cmpeq $1,43,$2
	bne $2,$L326
	cmpeq $1,45,$2
	bis $31,$31,$31
	beq $2,$L327
	lda $2,2($16)
	ldq_u $1,1($16)
	lda $6,1($31)
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L343
$L328:
	mov $31,$0
	lda $2,1($16)
	.align 4
$L331:
	mov $2,$16
	lda $2,1($2)
	sll $1,56,$1
	ldq_u $3,0($16)
	s4addq $0,$0,$0
	sra $1,56,$4
	extqh $3,$2,$3
	addq $0,$0,$5
	sra $3,56,$1
	subq $5,$4,$0
	subl $1,48,$1
	zapnot $1,15,$3
	cmpule $3,9,$3
	bne $3,$L331
	subq $4,$5,$4
	cmoveq $6,$4,$0
$L323:
	ret $31,($26),1
	.align 4
$L327:
	subl $1,48,$1
	zapnot $1,15,$2
	mov $31,$6
	cmpule $2,9,$2
	bne $2,$L328
$L343:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L326:
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L323
	mov $31,$6
	br $31,$L328
	.cfi_endproc
$LFE171:
	.end atoll
	.align 2
	.align 4
	.globl bsearch
	.ent bsearch
bsearch:
	.frame $30,64,$26,0
	.mask 0x400fe00,-64
$LFB50:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!22
	lda $29,0($29)		!gpdisp!22
$bsearch..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -56
	mov $18,$9
	stq $11,24($30)
	.cfi_offset 11, -40
	mov $19,$11
	stq $12,32($30)
	.cfi_offset 12, -32
	mov $17,$12
	stq $13,40($30)
	.cfi_offset 13, -24
	mov $20,$13
	stq $14,48($30)
	.cfi_offset 14, -16
	mov $16,$14
	stq $26,0($30)
	stq $10,16($30)
	stq $15,56($30)
	.cfi_offset 26, -64
	.cfi_offset 10, -48
	.cfi_offset 15, -8
	.prologue 1
	.align 4
$L358:
	beq $9,$L346
$L359:
	srl $9,1,$15
	mov $14,$16
	mulq $15,$11,$10
	mov $13,$27
	lda $9,-1($9)
	addq $12,$10,$10
	mov $10,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!23
	lda $29,0($29)		!gpdisp!23
	blt $0,$L350
	addq $10,$11,$12
	beq $0,$L345
	subq $9,$15,$9
	bne $9,$L359
$L346:
	mov $31,$10
	bis $31,$31,$31
$L345:
	mov $10,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,64($30)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L350:
	.cfi_restore_state
	mov $15,$9
	br $31,$L358
	.cfi_endproc
$LFE50:
	.end bsearch
	.align 2
	.align 4
	.globl bsearch_r
	.ent bsearch_r
bsearch_r:
	.frame $30,80,$26,0
	.mask 0x400fe00,-80
$LFB51:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!24
	lda $29,0($29)		!gpdisp!24
$bsearch_r..ng:
	lda $30,-80($30)
	.cfi_def_cfa_offset 80
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -72
	addl $31,$18,$9
	stq $10,16($30)
	.cfi_offset 10, -64
	mov $19,$10
	stq $11,24($30)
	.cfi_offset 11, -56
	mov $17,$11
	stq $13,40($30)
	.cfi_offset 13, -40
	mov $20,$13
	stq $14,48($30)
	.cfi_offset 14, -32
	mov $16,$14
	stq $26,0($30)
	stq $12,32($30)
	stq $15,56($30)
	.cfi_offset 26, -80
	.cfi_offset 12, -48
	.cfi_offset 15, -24
	.prologue 1
	stq $21,64($30)
	beq $9,$L365
	.align 4
$L361:
	sra $9,1,$12
	ldq $18,64($30)
	mov $14,$16
	mulq $12,$10,$15
	mov $13,$27
	subl $9,1,$9
	addq $11,$15,$15
	mov $15,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!25
	lda $29,0($29)		!gpdisp!25
	beq $0,$L360
	sra $9,1,$9
	ble $0,$L363
	addq $15,$10,$11
	bne $9,$L361
$L365:
	mov $31,$15
	bis $31,$31,$31
$L360:
	mov $15,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,80($30)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L363:
	.cfi_restore_state
	beq $12,$L365
	mov $12,$9
	br $31,$L361
	.cfi_endproc
$LFE51:
	.end bsearch_r
	.align 2
	.align 4
	.globl div
	.ent div
div:
	.frame $30,0,$26,0
$LFB52:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!28
	lda $29,0($29)		!gpdisp!28
$div..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divl($29)		!literal!26
	mov $16,$0
	jsr $23,($27),__divl		!lituse_jsrdirect!26
	mov $27,$1
	ldq $27,__reml($29)		!literal!27
	stl $1,0($16)
	jsr $23,($27),__reml		!lituse_jsrdirect!27
	stl $27,4($16)
	ret $31,($26),1
	.cfi_endproc
$LFE52:
	.end div
	.align 2
	.align 4
	.globl imaxabs
	.ent imaxabs
$imaxabs..ng:
imaxabs:
	.frame $30,0,$26,0
$LFB53:
	.cfi_startproc
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE53:
	.end imaxabs
	.align 2
	.align 4
	.globl imaxdiv
	.ent imaxdiv
imaxdiv:
	.frame $30,0,$26,0
$LFB54:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!31
	lda $29,0($29)		!gpdisp!31
$imaxdiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!29
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!29
	mov $27,$1
	ldq $27,__remq($29)		!literal!30
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!30
	stq $27,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE54:
	.end imaxdiv
	.align 2
	.align 4
	.globl labs
	.ent labs
$labs..ng:
labs:
	.frame $30,0,$26,0
$LFB167:
	.cfi_startproc
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE167:
	.end labs
	.align 2
	.align 4
	.globl ldiv
	.ent ldiv
ldiv:
	.frame $30,0,$26,0
$LFB56:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!34
	lda $29,0($29)		!gpdisp!34
$ldiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!32
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!32
	mov $27,$1
	ldq $27,__remq($29)		!literal!33
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!33
	stq $27,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE56:
	.end ldiv
	.align 2
	.align 4
	.globl llabs
	.ent llabs
$llabs..ng:
llabs:
	.frame $30,0,$26,0
$LFB169:
	.cfi_startproc
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE169:
	.end llabs
	.align 2
	.align 4
	.globl lldiv
	.ent lldiv
lldiv:
	.frame $30,0,$26,0
$LFB58:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!37
	lda $29,0($29)		!gpdisp!37
$lldiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!35
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!35
	mov $27,$1
	ldq $27,__remq($29)		!literal!36
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!36
	stq $27,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE58:
	.end lldiv
	.align 2
	.align 4
	.globl wcschr
	.ent wcschr
$wcschr..ng:
wcschr:
	.frame $30,0,$26,0
$LFB59:
	.cfi_startproc
	.prologue 0
	br $31,$L387
	.align 4
$L389:
	cmpeq $17,$1,$1
	bne $1,$L388
	lda $16,4($16)
$L387:
	ldl $1,0($16)
	bne $1,$L389
	mov $31,$0
	ret $31,($26),1
	.align 4
$L388:
	mov $16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE59:
	.end wcschr
	.align 2
	.align 4
	.globl wcscmp
	.ent wcscmp
$wcscmp..ng:
wcscmp:
	.frame $30,0,$26,0
$LFB60:
	.cfi_startproc
	.prologue 0
	ldl $1,0($16)
	ldl $0,0($17)
	cmpeq $1,$0,$2
	bne $2,$L391
	br $31,$L392
	.align 4
$L393:
	ldl $1,0($16)
	bis $31,$31,$31
	lda $17,4($17)
	ldl $0,0($17)
	cmpeq $1,$0,$2
	beq $2,$L392
$L391:
	lda $16,4($16)
	bne $1,$L393
$L392:
	cmplt $1,$0,$2
	cmplt $0,$1,$0
	lda $1,-1($31)
	cmovne $2,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE60:
	.end wcscmp
	.align 2
	.align 4
	.globl wcscpy
	.ent wcscpy
$wcscpy..ng:
wcscpy:
	.frame $30,0,$26,0
$LFB61:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	mov $16,$1
	.align 4
$L398:
	lda $1,4($1)
	ldl $2,0($17)
	lda $17,4($17)
	stl $2,-4($1)
	bne $2,$L398
	ret $31,($26),1
	.cfi_endproc
$LFE61:
	.end wcscpy
	.align 2
	.align 4
	.globl wcslen
	.ent wcslen
$wcslen..ng:
wcslen:
	.frame $30,0,$26,0
$LFB62:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	ldl $1,0($16)
	beq $1,$L400
	mov $16,$0
	.align 4
$L402:
	lda $0,4($0)
	ldl $1,0($0)
	bne $1,$L402
	subq $0,$16,$0
	sra $0,2,$0
$L400:
	ret $31,($26),1
	.cfi_endproc
$LFE62:
	.end wcslen
	.align 2
	.align 4
	.globl wcsncmp
	.ent wcsncmp
$wcsncmp..ng:
wcsncmp:
	.frame $30,0,$26,0
$LFB63:
	.cfi_startproc
	.prologue 0
	.align 4
$L409:
	beq $18,$L412
	ldl $2,0($16)
	lda $18,-1($18)
	ldl $3,0($17)
	lda $16,4($16)
	cmpult $31,$2,$4
	cmpeq $3,$2,$1
	lda $17,4($17)
	and $1,$4,$1
	bne $1,$L409
	cmplt $2,$3,$1
	cmplt $3,$2,$0
	lda $2,-1($31)
	cmovne $1,$2,$0
	ret $31,($26),1
	.align 4
$L412:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE63:
	.end wcsncmp
	.align 2
	.align 4
	.globl wmemchr
	.ent wmemchr
$wmemchr..ng:
wmemchr:
	.frame $30,0,$26,0
$LFB64:
	.cfi_startproc
	.prologue 0
	beq $18,$L421
	.align 4
$L426:
	lda $18,-1($18)
	ldl $1,0($16)
	cmpeq $1,$17,$1
	bne $1,$L425
	lda $16,4($16)
	bne $18,$L426
$L421:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L425:
	mov $16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE64:
	.end wmemchr
	.align 2
	.align 4
	.globl wmemcmp
	.ent wmemcmp
$wmemcmp..ng:
wmemcmp:
	.frame $30,0,$26,0
$LFB65:
	.cfi_startproc
	.prologue 0
	.align 4
$L430:
	beq $18,$L433
	ldl $2,0($16)
	lda $18,-1($18)
	ldl $1,0($17)
	lda $16,4($16)
	lda $17,4($17)
	cmpeq $2,$1,$3
	bne $3,$L430
	cmplt $2,$1,$3
	cmplt $1,$2,$0
	lda $1,-1($31)
	cmovne $3,$1,$0
	ret $31,($26),1
	.align 4
$L433:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE65:
	.end wmemcmp
	.align 2
	.align 4
	.globl wmemcpy
	.ent wmemcpy
wmemcpy:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB66:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!38
	lda $29,0($29)		!gpdisp!38
$wmemcpy..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -8
	mov $16,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	beq $18,$L439
	s4addq $18,0,$18
	ldq $27,memcpy($29)		!literal!39
	jsr $26,($27),memcpy		!lituse_jsr!39
	ldah $29,0($26)		!gpdisp!40
	lda $29,0($29)		!gpdisp!40
	bis $31,$31,$31
$L439:
	mov $9,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE66:
	.end wmemcpy
	.align 2
	.align 4
	.globl wmemmove
	.ent wmemmove
$wmemmove..ng:
wmemmove:
	.frame $30,0,$26,0
$LFB67:
	.cfi_startproc
	.prologue 0
	cmpeq $16,$17,$1
	cpys $f31,$f31,$f31
	mov $16,$0
	bne $1,$L461
	s4addq $18,0,$1
	subq $16,$17,$2
	cmpult $2,$1,$2
	cpys $f31,$f31,$f31
	lda $1,-1($18)
	bne $2,$L445
	beq $18,$L469
	cmpule $1,23,$2
	bne $2,$L456
	lda $7,4($17)
	cmpeq $7,$16,$3
	cpys $f31,$f31,$f31
	mov $7,$2
	bne $3,$L457
	and $16,4,$3
	cmpult $31,$3,$3
	bis $31,$31,$31
	beq $3,$L458
	lda $8,4($16)
	ldl $1,0($17)
	stl $1,0($16)
$L450:
	subq $18,$3,$18
	s4addq $3,$17,$17
	srl $18,1,$6
	s4addq $3,$0,$3
	mov $31,$4
	.align 4
$L451:
	ldq_u $1,0($17)
	bis $31,$31,$31
	lda $3,8($3)
	ldq_u $2,7($17)
	lda $4,1($4)
	extql $1,$17,$1
	extqh $2,$17,$2
	cmpeq $6,$4,$5
	bis $1,$2,$1
	stq $1,-8($3)
	lda $17,8($17)
	beq $5,$L451
	blbc $18,$L461
	bic $18,1,$18
	s4addq $18,$7,$7
	s4addq $18,$8,$18
	ldl $1,0($7)
	stl $1,0($18)
	ret $31,($26),1
	.align 4
$L456:
	mov $16,$3
	lda $2,4($17)
	.align 4
$L454:
	lda $3,4($3)
	ldl $5,-4($2)
	lda $1,-1($1)
	lda $4,1($1)
	stl $5,-4($3)
	lda $2,4($2)
	bne $4,$L454
$L461:
	ret $31,($26),1
	.align 4
$L445:
	beq $18,$L461
	s4addq $1,0,$1
	.align 4
$L448:
	addq $17,$1,$2
	addq $0,$1,$3
	lda $1,-4($1)
	ldl $4,0($2)
	lda $2,4($1)
	stl $4,0($3)
	bne $2,$L448
	ret $31,($26),1
	.align 4
$L458:
	mov $17,$7
	cpys $f31,$f31,$f31
	mov $16,$8
	br $31,$L450
	.align 4
$L469:
	ret $31,($26),1
	bis $31,$31,$31
$L457:
	mov $7,$3
	br $31,$L454
	.cfi_endproc
$LFE67:
	.end wmemmove
	.align 2
	.align 4
	.globl wmemset
	.ent wmemset
$wmemset..ng:
wmemset:
	.frame $30,0,$26,0
$LFB68:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	cpys $f31,$f31,$f31
	lda $6,-1($18)
	beq $18,$L471
	and $16,4,$1
	cmpule $6,5,$2
	cmpult $31,$1,$1
	bne $2,$L476
	mov $16,$7
	beq $1,$L473
	lda $7,4($16)
	stl $17,0($16)
	lda $6,-2($18)
$L473:
	sll $17,32,$2
	zapnot $17,15,$4
	subq $18,$1,$18
	bis $4,$2,$4
	srl $18,1,$5
	s4addq $1,$0,$1
	mov $31,$2
	.align 4
$L474:
	lda $2,1($2)
	stq $4,0($1)
	cmpeq $2,$5,$3
	cpys $f31,$f31,$f31
	lda $1,8($1)
	beq $3,$L474
	blbc $18,$L471
	bic $18,1,$18
	subq $6,$18,$6
	s4addq $18,$7,$1
$L472:
	stl $17,0($1)
	beq $6,$L471
	cmpeq $6,1,$2
	stl $17,4($1)
	bis $31,$31,$31
	bne $2,$L471
	cmpeq $6,2,$2
	stl $17,8($1)
	bis $31,$31,$31
	bne $2,$L471
	cmpeq $6,3,$2
	stl $17,12($1)
	bis $31,$31,$31
	bne $2,$L471
	cmpeq $6,4,$6
	stl $17,16($1)
	bne $6,$L471
	stl $17,20($1)
$L471:
	ret $31,($26),1
	bis $31,$31,$31
$L476:
	mov $16,$1
	br $31,$L472
	.cfi_endproc
$LFE68:
	.end wmemset
	.align 2
	.align 4
	.globl bcopy
	.ent bcopy
$bcopy..ng:
bcopy:
	.frame $30,0,$26,0
$LFB69:
	.cfi_startproc
	.prologue 0
	cmpult $16,$17,$1
	beq $1,$L502
	addq $16,$18,$2
	cpys $f31,$f31,$f31
	addq $17,$18,$17
	beq $18,$L501
	.align 4
$L504:
	lda $2,-1($2)
	lda $17,-1($17)
	lda $6,1($2)
	ldq_u $1,0($2)
	cmpeq $16,$2,$4
	ldq_u $3,0($17)
	extqh $1,$6,$1
	mskbl $3,$17,$3
	sra $1,56,$1
	insbl $1,$17,$1
	bis $1,$3,$1
	stq_u $1,0($17)
	beq $4,$L504
	ret $31,($26),1
	.align 4
$L502:
	cmpeq $16,$17,$1
	beq $1,$L549
$L501:
	ret $31,($26),1
	.align 4
$L549:
	beq $18,$L501
	lda $23,-1($18)
	cmpule $23,13,$1
	cpys $f31,$f31,$f31
	lda $2,1($16)
	bne $1,$L505
	lda $7,1($16)
	subq $17,$7,$1
	cmpule $1,6,$1
	cpys $f31,$f31,$f31
	mov $7,$2
	bne $1,$L505
	subq $31,$16,$4
	and $4,7,$1
	beq $1,$L519
	ldq_u $2,0($16)
	and $4,6,$3
	ldq_u $5,0($17)
	lda $24,1($17)
	extqh $2,$7,$2
	mskbl $5,$17,$5
	sra $2,56,$2
	insbl $2,$17,$2
	cpys $f31,$f31,$f31
	bis $2,$5,$2
	stq_u $2,0($17)
	bis $31,$31,$31
	beq $3,$L506
	lda $7,2($16)
	ldq_u $2,1($16)
	lda $3,1($17)
	ldq_u $6,1($17)
	cmpule $1,2,$5
	extqh $2,$7,$2
	mskbl $6,$3,$6
	sra $2,56,$2
	lda $24,2($17)
	insbl $2,$3,$2
	lda $23,-2($18)
	cpys $f31,$f31,$f31
	bis $2,$6,$2
	stq_u $2,1($17)
	bis $31,$31,$31
	bne $5,$L506
	lda $7,3($16)
	ldq_u $2,2($16)
	lda $3,2($17)
	ldq_u $5,2($17)
	and $4,4,$4
	extqh $2,$7,$2
	mskbl $5,$3,$5
	sra $2,56,$2
	lda $24,3($17)
	insbl $2,$3,$2
	lda $23,-3($18)
	cpys $f31,$f31,$f31
	bis $2,$5,$2
	stq_u $2,2($17)
	bis $31,$31,$31
	beq $4,$L506
	lda $7,4($16)
	ldq_u $2,3($16)
	lda $3,3($17)
	ldq_u $5,3($17)
	cmpule $1,4,$4
	extqh $2,$7,$2
	mskbl $5,$3,$5
	sra $2,56,$2
	lda $24,4($17)
	insbl $2,$3,$2
	lda $23,-4($18)
	cpys $f31,$f31,$f31
	bis $2,$5,$2
	stq_u $2,3($17)
	bis $31,$31,$31
	bne $4,$L506
	lda $7,5($16)
	ldq_u $2,4($16)
	lda $3,4($17)
	ldq_u $5,4($17)
	cmpeq $1,5,$4
	extqh $2,$7,$2
	mskbl $5,$3,$5
	sra $2,56,$2
	lda $24,5($17)
	insbl $2,$3,$2
	lda $23,-5($18)
	cpys $f31,$f31,$f31
	bis $2,$5,$2
	stq_u $2,4($17)
	bis $31,$31,$31
	bne $4,$L506
	lda $7,6($16)
	ldq_u $2,5($16)
	lda $3,5($17)
	ldq_u $5,5($17)
	cmpeq $1,7,$4
	extqh $2,$7,$2
	mskbl $5,$3,$5
	sra $2,56,$2
	lda $24,6($17)
	insbl $2,$3,$2
	lda $23,-6($18)
	cpys $f31,$f31,$f31
	bis $2,$5,$2
	stq_u $2,5($17)
	bis $31,$31,$31
	beq $4,$L506
	lda $7,7($16)
	ldq_u $3,6($16)
	lda $2,6($17)
	ldq_u $4,6($17)
	lda $24,7($17)
	extqh $3,$7,$3
	mskbl $4,$2,$4
	sra $3,56,$3
	lda $23,-7($18)
	insbl $3,$2,$3
	bis $3,$4,$3
	stq_u $3,6($17)
$L506:
	subq $18,$1,$18
	addq $16,$1,$5
	bic $18,7,$22
	addq $17,$1,$1
	addq $5,$22,$8
	.align 4
$L514:
	ldq $4,0($5)
	ldq_u $3,7($1)
	lda $5,8($5)
	ldq_u $2,0($1)
	insqh $4,$1,$6
	mskqh $3,$1,$3
	insql $4,$1,$4
	mskql $2,$1,$2
	bis $3,$6,$3
	stq_u $3,7($1)
	bis $2,$4,$2
	stq_u $2,0($1)
	cmpeq $8,$5,$2
	cpys $f31,$f31,$f31
	lda $1,8($1)
	beq $2,$L514
	cmpeq $18,$22,$18
	addq $24,$22,$2
	addq $7,$22,$1
	cpys $f31,$f31,$f31
	subq $23,$22,$3
	bne $18,$L501
	lda $7,1($1)
	ldq_u $4,0($1)
	cmpeq $3,1,$5
	ldq_u $6,0($2)
	extqh $4,$7,$4
	mskbl $6,$2,$6
	sra $4,56,$4
	insbl $4,$2,$4
	bis $4,$6,$4
	stq_u $4,0($2)
	bis $31,$31,$31
	bne $5,$L501
	lda $8,2($1)
	ldq_u $4,1($1)
	lda $5,1($2)
	ldq_u $7,1($2)
	cmpeq $3,2,$6
	extqh $4,$8,$4
	mskbl $7,$5,$7
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$7,$4
	stq_u $4,1($2)
	bis $31,$31,$31
	bne $6,$L501
	lda $8,3($1)
	ldq_u $4,2($1)
	lda $5,2($2)
	ldq_u $7,2($2)
	cmpeq $3,3,$6
	extqh $4,$8,$4
	mskbl $7,$5,$7
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$7,$4
	stq_u $4,2($2)
	bis $31,$31,$31
	bne $6,$L501
	lda $8,4($1)
	ldq_u $4,3($1)
	lda $5,3($2)
	ldq_u $7,3($2)
	cmpeq $3,4,$6
	extqh $4,$8,$4
	mskbl $7,$5,$7
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$7,$4
	stq_u $4,3($2)
	bis $31,$31,$31
	bne $6,$L501
	lda $8,5($1)
	ldq_u $4,4($1)
	lda $5,4($2)
	ldq_u $7,4($2)
	cmpeq $3,5,$6
	extqh $4,$8,$4
	mskbl $7,$5,$7
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$7,$4
	stq_u $4,4($2)
	bis $31,$31,$31
	bne $6,$L501
	lda $7,6($1)
	ldq_u $4,5($1)
	lda $5,5($2)
	ldq_u $6,5($2)
	cmpeq $3,6,$3
	extqh $4,$7,$4
	mskbl $6,$5,$6
	sra $4,56,$4
	insbl $4,$5,$4
	cpys $f31,$f31,$f31
	bis $4,$6,$4
	stq_u $4,5($2)
	bis $31,$31,$31
	bne $3,$L501
	lda $5,7($1)
	ldq_u $1,6($1)
	lda $4,6($2)
	ldq_u $3,6($2)
	extqh $1,$5,$1
	mskbl $3,$4,$3
	sra $1,56,$1
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,6($2)
	ret $31,($26),1
	.align 4
$L505:
	addq $16,$18,$18
	.align 4
$L517:
	lda $17,1($17)
	ldq_u $1,-1($2)
	lda $4,-1($17)
	cpys $f31,$f31,$f31
	cmpeq $2,$18,$5
	ldq_u $3,-1($17)
	extqh $1,$2,$1
	lda $2,1($2)
	sra $1,56,$1
	mskbl $3,$4,$3
	insbl $1,$4,$1
	cpys $f31,$f31,$f31
	bis $1,$3,$1
	stq_u $1,-1($17)
	beq $5,$L517
	ret $31,($26),1
$L519:
	mov $17,$24
	mov $16,$7
	mov $18,$23
	br $31,$L506
	.cfi_endproc
$LFE69:
	.end bcopy
	.align 2
	.align 4
	.globl rotl64
	.ent rotl64
$rotl64..ng:
rotl64:
	.frame $30,0,$26,0
$LFB70:
	.cfi_startproc
	.prologue 0
	subq $31,$17,$1
	srl $16,$1,$0
	sll $16,$17,$17
	bis $0,$17,$0
	ret $31,($26),1
	.cfi_endproc
$LFE70:
	.end rotl64
	.align 2
	.align 4
	.globl rotr64
	.ent rotr64
$rotr64..ng:
rotr64:
	.frame $30,0,$26,0
$LFB71:
	.cfi_startproc
	.prologue 0
	subq $31,$17,$1
	sll $16,$1,$0
	srl $16,$17,$17
	bis $0,$17,$0
	ret $31,($26),1
	.cfi_endproc
$LFE71:
	.end rotr64
	.align 2
	.align 4
	.globl rotl32
	.ent rotl32
$rotl32..ng:
rotl32:
	.frame $30,0,$26,0
$LFB72:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$1
	subq $31,$17,$2
	and $2,31,$2
	sll $16,$17,$0
	srl $1,$2,$1
	bis $0,$1,$0
	addl $31,$0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE72:
	.end rotl32
	.align 2
	.align 4
	.globl rotr32
	.ent rotr32
$rotr32..ng:
rotr32:
	.frame $30,0,$26,0
$LFB73:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$0
	subq $31,$17,$1
	and $1,31,$1
	srl $0,$17,$0
	sll $16,$1,$16
	bis $0,$16,$0
	addl $31,$0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE73:
	.end rotr32
	.align 2
	.align 4
	.globl rotl_sz
	.ent rotl_sz
$rotl_sz..ng:
rotl_sz:
	.frame $30,0,$26,0
$LFB173:
	.cfi_startproc
	.prologue 0
	subq $31,$17,$1
	srl $16,$1,$0
	sll $16,$17,$17
	bis $0,$17,$0
	ret $31,($26),1
	.cfi_endproc
$LFE173:
	.end rotl_sz
	.align 2
	.align 4
	.globl rotr_sz
	.ent rotr_sz
$rotr_sz..ng:
rotr_sz:
	.frame $30,0,$26,0
$LFB175:
	.cfi_startproc
	.prologue 0
	subq $31,$17,$1
	sll $16,$1,$0
	srl $16,$17,$17
	bis $0,$17,$0
	ret $31,($26),1
	.cfi_endproc
$LFE175:
	.end rotr_sz
	.align 2
	.align 4
	.globl rotl16
	.ent rotl16
$rotl16..ng:
rotl16:
	.frame $30,0,$26,0
$LFB76:
	.cfi_startproc
	.prologue 0
	and $17,15,$17
	subq $31,$17,$1
	and $1,15,$1
	sll $16,$17,$0
	srl $16,$1,$16
	bis $0,$16,$0
	zapnot $0,3,$0
	ret $31,($26),1
	.cfi_endproc
$LFE76:
	.end rotl16
	.align 2
	.align 4
	.globl rotr16
	.ent rotr16
$rotr16..ng:
rotr16:
	.frame $30,0,$26,0
$LFB77:
	.cfi_startproc
	.prologue 0
	and $17,15,$17
	subq $31,$17,$1
	and $1,15,$1
	srl $16,$17,$0
	sll $16,$1,$16
	bis $0,$16,$0
	zapnot $0,3,$0
	ret $31,($26),1
	.cfi_endproc
$LFE77:
	.end rotr16
	.align 2
	.align 4
	.globl rotl8
	.ent rotl8
$rotl8..ng:
rotl8:
	.frame $30,0,$26,0
$LFB78:
	.cfi_startproc
	.prologue 0
	and $17,7,$17
	subq $31,$17,$1
	and $1,7,$1
	sll $16,$17,$0
	srl $16,$1,$16
	bis $0,$16,$0
	and $0,0xff,$0
	ret $31,($26),1
	.cfi_endproc
$LFE78:
	.end rotl8
	.align 2
	.align 4
	.globl rotr8
	.ent rotr8
$rotr8..ng:
rotr8:
	.frame $30,0,$26,0
$LFB79:
	.cfi_startproc
	.prologue 0
	and $17,7,$17
	subq $31,$17,$1
	and $1,7,$1
	srl $16,$17,$0
	sll $16,$1,$16
	bis $0,$16,$0
	and $0,0xff,$0
	ret $31,($26),1
	.cfi_endproc
$LFE79:
	.end rotr8
	.align 2
	.align 4
	.globl bswap_16
	.ent bswap_16
$bswap_16..ng:
bswap_16:
	.frame $30,0,$26,0
$LFB80:
	.cfi_startproc
	.prologue 0
	srl $16,8,$1
	insbl $16,1,$16
	bis $16,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE80:
	.end bswap_16
	.align 2
	.align 4
	.globl bswap_32
	.ent bswap_32
$bswap_32..ng:
bswap_32:
	.frame $30,0,$26,0
$LFB81:
	.cfi_startproc
	.prologue 0
	inslh $16,7,$0
	inswl $16,3,$16
	bis $0,$16,$16
	srl $16,16,$0
	zapnot $16,250,$16
	zapnot $0,245,$0
	addl $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE81:
	.end bswap_32
	.align 2
	.align 4
	.globl bswap_64
	.ent bswap_64
$bswap_64..ng:
bswap_64:
	.frame $30,0,$26,0
$LFB82:
	.cfi_startproc
	.prologue 0
	srl $16,32,$0
	sll $16,32,$16
	bis $0,$16,$16
	srl $16,16,$0
	sll $16,16,$16
	zapnot $0,51,$0
	zapnot $16,204,$16
	bis $0,$16,$16
	srl $16,8,$0
	sll $16,8,$16
	zapnot $0,85,$0
	zapnot $16,170,$16
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE82:
	.end bswap_64
	.align 2
	.align 4
	.globl ffs
	.ent ffs
$ffs..ng:
ffs:
	.frame $30,0,$26,0
$LFB83:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	cpys $f31,$f31,$f31
	zapnot $16,15,$16
	br $31,$L566
	.align 4
$L569:
	cmpeq $1,32,$1
	bne $1,$L568
$L566:
	srl $16,$0,$2
	addl $0,1,$0
	zapnot $0,15,$1
	cpys $f31,$f31,$f31
	addl $31,$0,$0
	blbc $2,$L569
	ret $31,($26),1
	.align 4
$L568:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE83:
	.end ffs
	.align 2
	.align 4
	.globl libiberty_ffs
	.ent libiberty_ffs
$libiberty_ffs..ng:
libiberty_ffs:
	.frame $30,0,$26,0
$LFB84:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $16,$L571
	and $16,1,$0
	bne $0,$L571
	lda $0,1($31)
	.align 4
$L572:
	sra $16,1,$16
	addl $0,1,$0
	blbc $16,$L572
$L571:
	ret $31,($26),1
	.cfi_endproc
$LFE84:
	.end libiberty_ffs
	.align 2
	.align 4
	.globl gl_isinff
	.ent gl_isinff
$gl_isinff..ng:
gl_isinff:
	.frame $30,0,$26,0
$LFB85:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE85:
	.end gl_isinff
	.align 2
	.align 4
	.globl gl_isinfd
	.ent gl_isinfd
$gl_isinfd..ng:
gl_isinfd:
	.frame $30,0,$26,0
$LFB86:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE86:
	.end gl_isinfd
	.align 2
	.align 4
	.globl gl_isinfl
	.ent gl_isinfl
$gl_isinfl..ng:
gl_isinfl:
	.frame $30,0,$26,0
$LFB87:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE87:
	.end gl_isinfl
	.align 2
	.align 4
	.globl _Qp_itoq
	.ent _Qp_itoq
_Qp_itoq:
	.frame $30,32,$26,0
	.mask 0x4000200,-32
$LFB88:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!41
	lda $29,0($29)		!gpdisp!41
$_Qp_itoq..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	ldq $27,_OtsConvertFloatTX($29)		!literal!42
	stq $17,16($30)
	ldt $f10,16($30)
	stq $9,8($30)
	.cfi_offset 9, -24
	mov $16,$9
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	cvtqt $f10,$f16
	jsr $26,($27),_OtsConvertFloatTX		!lituse_jsr!42
	ldah $29,0($26)		!gpdisp!43
	ldq $26,0($30)
	bis $31,$31,$31
	stq $16,0($9)
	lda $29,0($29)		!gpdisp!43
	stq $17,8($9)
	ldq $9,8($30)
	lda $30,32($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE88:
	.end _Qp_itoq
	.align 2
	.align 4
	.globl ldexpf
	.ent ldexpf
ldexpf:
	.frame $30,0,$26,0
$LFB89:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!44
	lda $29,0($29)		!gpdisp!44
$ldexpf..ng:
	.prologue 1
	adds $f16,$f16,$f10
	cpys $f16,$f16,$f0
	cmpteq $f10,$f16,$f10
	fbne $f10,$L582
	ldah $2,$LC1($29)		!gprelhigh
	cmplt $17,0,$1
	lds $f10,$LC1($2)		!gprellow
	bne $1,$L594
	blbc $17,$L584
	.align 4
$L585:
	muls $f0,$f10,$f0
$L584:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	bis $31,$31,$31
	beq $17,$L582
	muls $f10,$f10,$f10
	srl $17,63,$1
	bis $31,$31,$31
	blbs $17,$L585
$L595:
	addq $1,$17,$17
	muls $f10,$f10,$f10
	sra $17,1,$17
	cpys $f31,$f31,$f31
	srl $17,63,$1
	blbs $17,$L585
	br $31,$L595
	.align 4
$L582:
	ret $31,($26),1
	.align 4
$L594:
	ldah $1,$LC2($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC2($1)		!gprellow
	blbc $17,$L584
	br $31,$L585
	.cfi_endproc
$LFE89:
	.end ldexpf
	.align 2
	.align 4
	.globl ldexp
	.ent ldexp
ldexp:
	.frame $30,0,$26,0
$LFB90:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!45
	lda $29,0($29)		!gpdisp!45
$ldexp..ng:
	.prologue 1
	addt $f16,$f16,$f11
	cpys $f16,$f16,$f0
	cmpteq $f11,$f16,$f10
	fbne $f10,$L597
	cmplt $17,0,$1
	bne $1,$L609
	ldah $1,$LC1($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC1($1)		!gprellow
	blbc $17,$L599
	.align 4
$L600:
	mult $f0,$f10,$f0
$L599:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	bis $31,$31,$31
	beq $17,$L597
	mult $f10,$f10,$f10
	srl $17,63,$1
	bis $31,$31,$31
	blbs $17,$L600
$L610:
	addq $1,$17,$17
	mult $f10,$f10,$f10
	sra $17,1,$17
	cpys $f31,$f31,$f31
	srl $17,63,$1
	blbs $17,$L600
	br $31,$L610
	.align 4
$L597:
	ret $31,($26),1
	.align 4
$L609:
	ldah $1,$LC2($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC2($1)		!gprellow
	blbc $17,$L599
	br $31,$L600
	.cfi_endproc
$LFE90:
	.end ldexp
	.align 2
	.align 4
	.globl ldexpl
	.ent ldexpl
ldexpl:
	.frame $30,144,$26,0
	.mask 0x400fe00,-144
$LFB91:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!46
	lda $29,0($29)		!gpdisp!46
$ldexpl..ng:
	lda $30,-144($30)
	.cfi_def_cfa_offset 144
	cpys $f31,$f31,$f31
	mov $16,$8
	ldq $27,_OtsAddX($29)		!literal!51
	stq $9,8($30)
	lda $20,2($31)
	.cfi_offset 9, -136
	ldq $9,8($17)
	stq $10,16($30)
	.cfi_offset 10, -128
	ldq $10,0($17)
	bis $31,$31,$31
	mov $9,$19
	stq $26,0($30)
	stq $11,24($30)
	mov $9,$17
	stq $8,96($30)
	.cfi_offset 26, -144
	.cfi_offset 11, -120
	mov $18,$11
	mov $10,$16
	stq $12,32($30)
	mov $10,$18
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 12, -112
	.cfi_offset 13, -104
	.cfi_offset 14, -96
	.cfi_offset 15, -88
	.prologue 1
	jsr $26,($27),_OtsAddX		!lituse_jsr!51
	ldah $29,0($26)		!gpdisp!52
	mov $10,$18
	lda $29,0($29)		!gpdisp!52
	mov $9,$19
	ldq $27,_OtsEqlX($29)		!literal!53
	jsr $26,($27),_OtsEqlX		!lituse_jsr!53
	ldah $29,0($26)		!gpdisp!54
	lda $29,0($29)		!gpdisp!54
	bgt $0,$L612
	cmplt $11,0,$2
	bne $2,$L624
	ldah $3,$LC5($29)		!gprelhigh
	lda $3,$LC5($3)		!gprellow
	ldq $2,0($3)
	ldq $3,8($3)
$L613:
	blbc $11,$L614
	.align 4
$L615:
	stq $10,64($30)
	lda $20,2($31)
	stq $2,80($30)
	stq $9,72($30)
	stq $3,88($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsMulX($29)		!literal!49
	stq $2,128($30)
	stq $3,136($30)
	jsr $26,($27),_OtsMulX		!lituse_jsr!49
	ldah $29,0($26)		!gpdisp!50
	ldq $3,136($30)
	bis $31,$31,$31
	lda $29,0($29)		!gpdisp!50
	ldq $2,128($30)
	mov $16,$10
	mov $17,$9
$L614:
	srl $11,63,$4
	addq $4,$11,$1
	sra $1,1,$11
	beq $11,$L612
$L616:
	mov $2,$16
	ldq $27,_OtsMulX($29)		!literal!47
	mov $3,$17
	mov $2,$18
	mov $3,$19
	lda $20,2($31)
	jsr $26,($27),_OtsMulX		!lituse_jsr!47
	ldah $29,0($26)		!gpdisp!48
	srl $11,63,$3
	lda $29,0($29)		!gpdisp!48
	addq $3,$11,$4
	mov $16,$2
	mov $17,$3
	blbs $11,$L615
	sra $4,1,$11
	br $31,$L616
	.align 4
$L612:
	stq $10,112($30)
	stq $9,120($30)
	ldq $3,96($30)
	ldq $1,112($30)
	ldq $2,120($30)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	mov $3,$0
	ldq $15,56($30)
	stq $1,0($3)
	stq $2,8($3)
	lda $30,144($30)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L624:
	.cfi_restore_state
	ldah $3,$LC6($29)		!gprelhigh
	lda $3,$LC6($3)		!gprellow
	ldq $2,0($3)
	bis $31,$31,$31
	ldq $3,8($3)
	br $31,$L613
	.cfi_endproc
$LFE91:
	.end ldexpl
	.align 2
	.align 4
	.globl memxor
	.ent memxor
$memxor..ng:
memxor:
	.frame $30,0,$26,0
$LFB92:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	beq $18,$L626
	subq $31,$16,$3
	and $3,7,$2
	lda $1,7($2)
	cmpule $1,11,$4
	lda $7,-1($18)
	cmovne $4,11,$1
	cmpult $7,$1,$1
	bne $1,$L638
	beq $2,$L639
	ldq_u $4,0($16)
	and $3,6,$5
	ldq_u $1,0($17)
	lda $8,1($17)
	extbl $4,$16,$6
	extbl $1,$17,$1
	mskbl $4,$16,$4
	xor $1,$6,$1
	insbl $1,$16,$1
	lda $22,1($16)
	cpys $f31,$f31,$f31
	bis $1,$4,$1
	stq_u $1,0($16)
	beq $5,$L628
	ldq_u $5,1($16)
	lda $4,1($16)
	ldq_u $1,1($17)
	lda $6,1($17)
	extbl $5,$4,$7
	extbl $1,$6,$1
	mskbl $5,$4,$5
	xor $1,$7,$1
	insbl $1,$4,$1
	cmpule $2,2,$4
	cpys $f31,$f31,$f31
	bis $1,$5,$1
	stq_u $1,1($16)
	lda $8,2($17)
	lda $22,2($16)
	lda $7,-2($18)
	bne $4,$L628
	ldq_u $5,2($16)
	bis $31,$31,$31
	lda $4,2($16)
	ldq_u $1,2($17)
	lda $6,2($17)
	extbl $5,$4,$7
	extbl $1,$6,$1
	mskbl $5,$4,$5
	xor $1,$7,$1
	insbl $1,$4,$1
	and $3,4,$3
	cpys $f31,$f31,$f31
	bis $1,$5,$1
	stq_u $1,2($16)
	lda $8,3($17)
	lda $22,3($16)
	lda $7,-3($18)
	beq $3,$L628
	ldq_u $4,3($16)
	bis $31,$31,$31
	lda $3,3($16)
	ldq_u $1,3($17)
	lda $5,3($17)
	extbl $4,$3,$6
	extbl $1,$5,$1
	mskbl $4,$3,$4
	xor $1,$6,$1
	insbl $1,$3,$1
	cmpule $2,4,$3
	cpys $f31,$f31,$f31
	bis $1,$4,$1
	stq_u $1,3($16)
	lda $8,4($17)
	lda $22,4($16)
	lda $7,-4($18)
	bne $3,$L628
	ldq_u $4,4($16)
	bis $31,$31,$31
	lda $3,4($16)
	ldq_u $1,4($17)
	lda $5,4($17)
	extbl $4,$3,$6
	extbl $1,$5,$1
	mskbl $4,$3,$4
	xor $1,$6,$1
	insbl $1,$3,$1
	cmpeq $2,5,$3
	cpys $f31,$f31,$f31
	bis $1,$4,$1
	stq_u $1,4($16)
	lda $8,5($17)
	lda $22,5($16)
	lda $7,-5($18)
	bne $3,$L628
	ldq_u $4,5($16)
	bis $31,$31,$31
	lda $3,5($16)
	ldq_u $1,5($17)
	lda $5,5($17)
	extbl $4,$3,$6
	extbl $1,$5,$1
	mskbl $4,$3,$4
	xor $1,$6,$1
	insbl $1,$3,$1
	cmpeq $2,7,$3
	cpys $f31,$f31,$f31
	bis $1,$4,$1
	stq_u $1,5($16)
	lda $8,6($17)
	lda $22,6($16)
	lda $7,-6($18)
	beq $3,$L628
	ldq_u $4,6($16)
	bis $31,$31,$31
	lda $3,6($16)
	ldq_u $1,6($17)
	lda $5,6($17)
	extbl $4,$3,$6
	extbl $1,$5,$1
	mskbl $4,$3,$4
	xor $1,$6,$1
	insbl $1,$3,$1
	lda $8,7($17)
	lda $22,7($16)
	lda $7,-7($18)
	cpys $f31,$f31,$f31
	bis $1,$4,$1
	stq_u $1,6($16)
$L628:
	subq $18,$2,$6
	addq $17,$2,$17
	bic $6,7,$18
	addq $0,$2,$2
	addq $17,$18,$5
	.align 4
$L636:
	ldq_u $1,0($17)
	ldq_u $4,7($17)
	lda $2,8($2)
	ldq $3,-8($2)
	extql $1,$17,$1
	extqh $4,$17,$4
	lda $17,8($17)
	bis $1,$4,$1
	xor $3,$1,$1
	stq $1,-8($2)
	cmpeq $17,$5,$3
	beq $3,$L636
	cmpeq $6,$18,$6
	addq $22,$18,$1
	addq $8,$18,$17
	cpys $f31,$f31,$f31
	subq $7,$18,$18
	bne $6,$L683
$L627:
	ldq_u $3,0($1)
	bis $31,$31,$31
	cmpeq $18,1,$4
	ldq_u $5,0($17)
	extbl $3,$1,$2
	extbl $5,$17,$5
	mskbl $3,$1,$3
	xor $2,$5,$2
	insbl $2,$1,$2
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq_u $2,0($1)
	bne $4,$L626
	ldq_u $4,1($1)
	lda $3,1($1)
	ldq_u $2,1($17)
	lda $5,1($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,2,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,1($1)
	bne $3,$L626
	ldq_u $4,2($1)
	lda $3,2($1)
	ldq_u $2,2($17)
	lda $5,2($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,3,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,2($1)
	bne $3,$L626
	ldq_u $4,3($1)
	lda $3,3($1)
	ldq_u $2,3($17)
	lda $5,3($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,4,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,3($1)
	bne $3,$L626
	ldq_u $4,4($1)
	lda $3,4($1)
	ldq_u $2,4($17)
	lda $5,4($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,5,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,4($1)
	bne $3,$L626
	ldq_u $4,5($1)
	lda $3,5($1)
	ldq_u $2,5($17)
	lda $5,5($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,6,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,5($1)
	bne $3,$L626
	ldq_u $4,6($1)
	lda $3,6($1)
	ldq_u $2,6($17)
	lda $5,6($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,7,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,6($1)
	bne $3,$L626
	ldq_u $4,7($1)
	lda $3,7($1)
	ldq_u $2,7($17)
	lda $5,7($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,8,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,7($1)
	bne $3,$L626
	ldq_u $4,8($1)
	lda $3,8($1)
	ldq_u $2,8($17)
	lda $5,8($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,9,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,8($1)
	bne $3,$L626
	ldq_u $4,9($1)
	lda $3,9($1)
	ldq_u $2,9($17)
	lda $5,9($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,10,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,9($1)
	bne $3,$L626
	ldq_u $4,10($1)
	lda $3,10($1)
	ldq_u $2,10($17)
	lda $5,10($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,11,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,10($1)
	bne $3,$L626
	ldq_u $4,11($1)
	lda $3,11($1)
	ldq_u $2,11($17)
	lda $5,11($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,12,$3
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,11($1)
	bne $3,$L626
	ldq_u $4,12($1)
	lda $3,12($1)
	ldq_u $2,12($17)
	lda $5,12($17)
	extbl $4,$3,$6
	extbl $2,$5,$2
	mskbl $4,$3,$4
	xor $2,$6,$2
	insbl $2,$3,$2
	cmpeq $18,13,$18
	cpys $f31,$f31,$f31
	bis $2,$4,$2
	stq_u $2,12($1)
	bne $18,$L626
	ldq_u $3,13($1)
	lda $4,13($1)
	ldq_u $2,13($17)
	lda $17,13($17)
	extbl $3,$4,$5
	extbl $2,$17,$2
	mskbl $3,$4,$3
	xor $2,$5,$2
	insbl $2,$4,$2
	bis $2,$3,$2
	stq_u $2,13($1)
$L626:
	ret $31,($26),1
	.align 4
$L639:
	mov $16,$22
	mov $17,$8
	mov $18,$7
	br $31,$L628
	.align 4
$L683:
	ret $31,($26),1
	bis $31,$31,$31
$L638:
	mov $16,$1
	br $31,$L627
	.cfi_endproc
$LFE92:
	.end memxor
	.align 2
	.align 4
	.globl strncat
	.ent strncat
$strncat..ng:
strncat:
	.frame $30,0,$26,0
$LFB93:
	.cfi_startproc
	.prologue 0
	lda $2,1($16)
	ldq_u $3,0($16)
	mov $16,$0
	extqh $3,$2,$1
	sra $1,56,$1
	beq $1,$L691
	.align 4
$L686:
	mov $2,$1
	lda $2,1($2)
	ldq_u $3,0($1)
	extqh $3,$2,$4
	sra $4,56,$4
	bne $4,$L686
$L697:
	beq $18,$L698
	.align 4
$L687:
	lda $4,1($17)
	ldq_u $2,0($17)
	mskbl $3,$1,$3
	mov $4,$17
	extqh $2,$4,$2
	lda $18,-1($18)
	sra $2,56,$2
	insbl $2,$1,$4
	bis $4,$3,$4
	stq_u $4,0($1)
	beq $2,$L699
	lda $1,1($1)
	ldq_u $3,0($1)
	bne $18,$L687
$L698:
	mskbl $3,$1,$3
	stq_u $3,0($1)
	ret $31,($26),1
	.align 4
$L699:
	ret $31,($26),1
	.align 4
$L691:
	mov $16,$1
	br $31,$L697
	.cfi_endproc
$LFE93:
	.end strncat
	.align 2
	.align 4
	.globl strnlen
	.ent strnlen
$strnlen..ng:
strnlen:
	.frame $30,0,$26,0
$LFB94:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $17,$L708
$L701:
	addq $16,$0,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L703
	ret $31,($26),1
	.align 4
$L703:
	lda $0,1($0)
	cmpeq $17,$0,$1
	beq $1,$L701
	ret $31,($26),1
	.align 4
$L708:
	ret $31,($26),1
	.cfi_endproc
$LFE94:
	.end strnlen
	.align 2
	.align 4
	.globl strpbrk
	.ent strpbrk
$strpbrk..ng:
strpbrk:
	.frame $30,0,$26,0
$LFB95:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	lda $5,1($0)
	ldq_u $4,0($0)
	extqh $4,$5,$4
	sra $4,56,$4
	beq $4,$L714
$L718:
	mov $17,$2
	br $31,$L713
	.align 4
$L712:
	bis $31,$31,$31
	bne $3,$L711
$L713:
	lda $3,1($2)
	ldq_u $1,0($2)
	mov $3,$2
	extqh $1,$3,$1
	sra $1,56,$1
	cpys $f31,$f31,$f31
	cmpeq $1,$4,$3
	bne $1,$L712
	mov $5,$0
	lda $5,1($0)
	ldq_u $4,0($0)
	extqh $4,$5,$4
	sra $4,56,$4
	bne $4,$L718
$L714:
	mov $31,$0
$L711:
	ret $31,($26),1
	.cfi_endproc
$LFE95:
	.end strpbrk
	.align 2
	.align 4
	.globl strrchr
	.ent strrchr
$strrchr..ng:
strrchr:
	.frame $30,0,$26,0
$LFB96:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	.align 4
$L721:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $17,$1,$3
	cmovne $3,$16,$0
	mov $2,$16
	bne $1,$L721
	ret $31,($26),1
	.cfi_endproc
$LFE96:
	.end strrchr
	.align 2
	.align 4
	.globl strstr
	.ent strstr
$strstr..ng:
strstr:
	.frame $30,0,$26,0
$LFB97:
	.cfi_startproc
	.prologue 0
	lda $2,1($17)
	ldq_u $22,0($17)
	mov $16,$0
	extqh $22,$2,$22
	sra $22,56,$22
	beq $22,$L723
	.align 4
$L725:
	mov $2,$3
	lda $2,1($2)
	ldq_u $1,0($3)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L725
	subq $3,$17,$3
	cpys $f31,$f31,$f31
	mov $16,$0
	beq $3,$L723
	lda $23,-1($17)
	and $22,0xff,$24
	addq $23,$3,$23
	br $31,$L731
	.align 4
$L742:
	mov $6,$16
	beq $1,$L741
$L731:
	lda $6,1($16)
	ldq_u $1,0($16)
	extqh $1,$6,$1
	sra $1,56,$1
	cmpeq $1,$22,$2
	beq $2,$L742
	mov $24,$4
	mov $17,$3
	mov $16,$5
	br $31,$L727
	.align 4
$L729:
	lda $3,1($3)
	ldq_u $4,0($5)
	extbl $4,$5,$4
	beq $4,$L743
$L727:
	cmpeq $3,$23,$1
	ldq_u $7,0($3)
	lda $5,1($5)
	cmpeq $1,0,$1
	extbl $7,$3,$2
	cmpeq $2,$4,$8
	cmpult $31,$2,$2
	and $2,$8,$2
	and $1,$2,$1
	bne $1,$L729
	extbl $7,$3,$7
	cmpeq $7,$4,$7
	bne $7,$L734
$L744:
	mov $6,$16
	br $31,$L731
	.align 4
$L741:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L743:
	ldq_u $7,0($3)
	extbl $7,$3,$7
	cmpeq $7,$4,$7
	beq $7,$L744
$L734:
	mov $16,$0
$L723:
	ret $31,($26),1
	.cfi_endproc
$LFE97:
	.end strstr
	.align 2
	.align 4
	.globl copysign
	.ent copysign
$copysign..ng:
copysign:
	.frame $30,0,$26,0
$LFB98:
	.cfi_startproc
	.prologue 0
	lda $1,1($31)
	fblt $f16,$L747
	bis $31,$31,$1
$L747:
	lda $2,1($31)
	fbgt $f17,$L748
	bis $31,$31,$2
$L748:
	and $1,$2,$1
	blbs $1,$L746
	lda $1,1($31)
	fble $f16,$L754
	lda $2,1($31)
	fbge $f17,$L755
$L751:
	and $1,$2,$1
	cpys $f16,$f16,$f0
	blbs $1,$L746
$L745:
	ret $31,($26),1
	.align 4
$L746:
	cpysn $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L755:
	bis $31,$31,$2
	cpys $f16,$f16,$f0
	and $1,$2,$1
	blbc $1,$L745
	br $31,$L746
	.align 4
$L754:
	bis $31,$31,$1
	lda $2,1($31)
	fblt $f17,$L751
	br $31,$L755
	.cfi_endproc
$LFE98:
	.end copysign
	.align 2
	.align 4
	.globl memmem
	.ent memmem
$memmem..ng:
memmem:
	.frame $30,0,$26,0
$LFB99:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	beq $19,$L756
	cmpult $17,$19,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L756
	subq $17,$19,$17
	addq $16,$17,$6
	cmpule $16,$6,$1
	beq $1,$L756
	lda $22,1($18)
	ldq_u $7,0($18)
	lda $19,-1($19)
	mov $16,$0
	extqh $7,$22,$7
	cpys $f31,$f31,$f31
	sra $7,56,$7
	br $31,$L762
	.align 4
$L766:
	mov $5,$0
$L758:
	cmpult $6,$0,$1
	bis $31,$31,$31
	bne $1,$L767
$L762:
	lda $5,1($0)
	ldq_u $1,0($0)
	extqh $1,$5,$1
	sra $1,56,$1
	cmpeq $1,$7,$1
	beq $1,$L766
	mov $22,$3
	beq $19,$L756
$L761:
	mov $5,$2
	cpys $f31,$f31,$f31
	addq $5,$19,$8
	br $31,$L759
	.align 4
$L760:
	lda $3,1($3)
	bne $4,$L756
$L759:
	ldq_u $1,0($2)
	ldq_u $4,0($3)
	extbl $1,$2,$1
	extbl $4,$3,$4
	lda $2,1($2)
	cmpeq $1,$4,$1
	cmpeq $2,$8,$4
	bne $1,$L760
	cmpule $5,$6,$1
	beq $1,$L767
	lda $0,1($5)
	ldq_u $1,0($5)
	extqh $1,$0,$1
	sra $1,56,$1
	cmpeq $1,$7,$1
	beq $1,$L758
	mov $5,$1
	mov $22,$3
	mov $0,$5
	cpys $f31,$f31,$f31
	mov $1,$0
	br $31,$L761
	.align 4
$L767:
	mov $31,$0
$L756:
	ret $31,($26),1
	.cfi_endproc
$LFE99:
	.end memmem
	.align 2
	.align 4
	.globl mempcpy
	.ent mempcpy
mempcpy:
	.frame $30,32,$26,0
	.mask 0x4000600,-32
$LFB100:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!55
	lda $29,0($29)		!gpdisp!55
$mempcpy..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -24
	mov $16,$9
	stq $10,16($30)
	.cfi_offset 10, -16
	mov $18,$10
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	beq $18,$L774
	ldq $27,memmove($29)		!literal!56
	jsr $26,($27),memmove		!lituse_jsr!56
	ldah $29,0($26)		!gpdisp!57
	lda $29,0($29)		!gpdisp!57
$L774:
	addq $9,$10,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	lda $30,32($30)
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE100:
	.end mempcpy
	.align 2
	.align 4
	.globl frexp
	.ent frexp
frexp:
	.frame $30,0,$26,0
$LFB101:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!58
	lda $29,0($29)		!gpdisp!58
$frexp..ng:
	.prologue 1
	fblt $f16,$L801
	ldah $1,$LC12($29)		!gprelhigh
	mov $31,$2
	lds $f11,$LC12($1)		!gprellow
	cmptle $f11,$f16,$f10
	fbeq $f10,$L802
$L781:
	ldah $3,$LC2($29)		!gprelhigh
	mov $31,$1
	lds $f13,$LC2($3)		!gprellow
	ldah $3,$LC1($29)		!gprelhigh
	lds $f12,$LC1($3)		!gprellow
	.align 4
$L787:
	cpys $f16,$f16,$f11
	addl $1,1,$1
	mult $f16,$f13,$f16
	cmptle $f12,$f11,$f10
	fbne $f10,$L787
	stl $1,0($17)
	cpys $f16,$f16,$f0
	beq $2,$L778
$L804:
	cpysn $f16,$f16,$f0
$L778:
	ret $31,($26),1
	.align 4
$L802:
	ldah $1,$LC2($29)		!gprelhigh
	lds $f11,$LC2($1)		!gprellow
	cmptlt $f16,$f11,$f10
	fbeq $f10,$L784
	fbne $f16,$L793
$L784:
	cpys $f16,$f16,$f0
	stl $31,0($17)
	ret $31,($26),1
	.align 4
$L801:
	ldah $1,$LC8($29)		!gprelhigh
	cpysn $f16,$f16,$f12
	lds $f11,$LC8($1)		!gprellow
	cmptle $f16,$f11,$f10
	cpys $f31,$f31,$f31
	fbeq $f10,$L803
	cpys $f12,$f12,$f16
	lda $2,1($31)
	br $31,$L781
	.align 4
$L803:
	ldah $1,$LC10($29)		!gprelhigh
	lds $f11,$LC10($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L784
	lda $2,1($31)
	bis $31,$31,$31
$L782:
	ldah $3,$LC14($29)		!gprelhigh
	cpys $f12,$f12,$f16
	mov $31,$1
	lds $f12,$LC14($3)		!gprellow
	.align 4
$L789:
	cpys $f16,$f16,$f11
	subl $1,1,$1
	addt $f16,$f16,$f16
	cmptlt $f11,$f12,$f10
	fbne $f10,$L789
	stl $1,0($17)
	cpys $f16,$f16,$f0
	bne $2,$L804
	ret $31,($26),1
$L793:
	cpys $f16,$f16,$f12
	br $31,$L782
	.cfi_endproc
$LFE101:
	.end frexp
	.align 2
	.align 4
	.globl __muldi3
	.ent __muldi3
$__muldi3..ng:
__muldi3:
	.frame $30,0,$26,0
$LFB102:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $16,$L805
	.align 4
$L807:
	and $16,1,$1
	subq $31,$1,$1
	srl $16,1,$16
	and $1,$17,$1
	addq $0,$1,$0
	cpys $f31,$f31,$f31
	addq $17,$17,$17
	bne $16,$L807
$L805:
	ret $31,($26),1
	.cfi_endproc
$LFE102:
	.end __muldi3
	.align 2
	.align 4
	.globl udivmodsi4
	.ent udivmodsi4
$udivmodsi4..ng:
udivmodsi4:
	.frame $30,0,$26,0
$LFB103:
	.cfi_startproc
	.prologue 0
	zapnot $17,15,$2
	zapnot $16,15,$3
	lda $1,1($31)
	cmpult $2,$3,$4
	bne $4,$L812
	br $31,$L813
	.align 4
$L815:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L814
$L812:
	addl $17,$17,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$3,$2
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L815
	zapnot $17,15,$2
	bis $31,$31,$31
$L813:
	mov $31,$0
	br $31,$L818
	.align 4
$L827:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L818:
	cmpult $3,$2,$3
	zapnot $1,15,$4
	bis $1,$0,$1
	bne $3,$L817
	subl $16,$17,$16
	addl $31,$1,$0
$L817:
	srl $4,1,$1
	srl $2,1,$17
	bne $1,$L827
$L816:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L814:
	mov $31,$0
	beq $1,$L816
	zapnot $17,15,$2
	br $31,$L813
	.cfi_endproc
$LFE103:
	.end udivmodsi4
	.align 2
	.align 4
	.globl __clrsbqi2
	.ent __clrsbqi2
__clrsbqi2:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB104:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!59
	lda $29,0($29)		!gpdisp!59
$__clrsbqi2..ng:
	sra $16,63,$1
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cmpeq $16,$1,$2
	cpys $f31,$f31,$f31
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	lda $0,7($31)
	xor $16,$1,$16
	bne $2,$L829
	sll $16,8,$16
	ldq $27,__clzdi2($29)		!literal!60
	zapnot $16,14,$16
	jsr $26,($27),__clzdi2		!lituse_jsr!60
	ldah $29,0($26)		!gpdisp!61
	lda $29,0($29)		!gpdisp!61
	subl $0,33,$0
$L829:
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE104:
	.end __clrsbqi2
	.align 2
	.align 4
	.globl __clrsbdi2
	.ent __clrsbdi2
__clrsbdi2:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB105:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!62
	lda $29,0($29)		!gpdisp!62
$__clrsbdi2..ng:
	sra $16,63,$1
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cmpeq $16,$1,$2
	cpys $f31,$f31,$f31
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	lda $0,63($31)
	xor $16,$1,$16
	bne $2,$L832
	ldq $27,__clzdi2($29)		!literal!63
	jsr $26,($27),__clzdi2		!lituse_jsr!63
	ldah $29,0($26)		!gpdisp!64
	lda $29,0($29)		!gpdisp!64
	subl $0,1,$0
$L832:
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE105:
	.end __clrsbdi2
	.align 2
	.align 4
	.globl __mulsi3
	.ent __mulsi3
$__mulsi3..ng:
__mulsi3:
	.frame $30,0,$26,0
$LFB106:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $16,$L835
	.align 4
$L836:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $1,$0,$0
	addl $17,$17,$17
	bne $16,$L836
$L835:
	ret $31,($26),1
	.cfi_endproc
$LFE106:
	.end __mulsi3
	.align 2
	.align 4
	.globl __cmovd
	.ent __cmovd
$__cmovd..ng:
__cmovd:
	.frame $30,0,$26,0
$LFB107:
	.cfi_startproc
	.prologue 0
	zapnot $18,15,$6
	cmpult $16,$17,$1
	srl $6,3,$3
	cpys $f31,$f31,$f31
	bic $18,7,$7
	bne $1,$L844
	addq $17,$6,$1
	cmpule $16,$1,$1
	bne $1,$L878
$L844:
	mov $17,$1
	mov $16,$2
	cpys $f31,$f31,$f31
	s8addq $3,$17,$5
	beq $3,$L879
	.align 4
$L847:
	lda $2,8($2)
	ldq $4,0($1)
	lda $1,8($1)
	cmpeq $1,$5,$3
	stq $4,-8($2)
	beq $3,$L847
	zapnot $7,15,$2
	cmpule $6,$2,$1
	bne $1,$L840
	subl $18,$7,$8
	subl $8,1,$1
	zapnot $1,15,$1
	cmpule $1,13,$1
	bne $1,$L849
	lda $5,1($2)
	addq $16,$2,$3
	addq $17,$5,$23
	subq $3,$23,$1
	cmpule $1,6,$1
	bne $1,$L849
	subl $31,$3,$24
	and $24,7,$22
	mov $31,$4
	beq $22,$L850
	addq $17,$2,$1
	ldq_u $25,0($3)
	lda $28,1($1)
	cpys $f31,$f31,$f31
	and $24,6,$4
	ldq_u $1,0($1)
	mskbl $25,$3,$25
	extqh $1,$28,$1
	sra $1,56,$1
	insbl $1,$3,$1
	bis $1,$25,$1
	stq_u $1,0($3)
	bis $31,$31,$31
	beq $4,$L880
	addq $16,$5,$4
	ldq_u $1,0($23)
	lda $23,1($23)
	cpys $f31,$f31,$f31
	addl $7,2,$3
	ldq_u $25,0($4)
	extqh $1,$23,$1
	cmpule $22,2,$5
	sra $1,56,$1
	mskbl $25,$4,$25
	insbl $1,$4,$1
	addl $31,$3,$23
	bis $1,$25,$1
	stq_u $1,0($4)
	zapnot $22,15,$4
	bne $5,$L858
	zapnot $3,15,$1
	and $24,4,$24
	addq $17,$1,$3
	lda $25,1($3)
	addq $16,$1,$1
	ldq_u $3,0($3)
	addl $7,3,$28
	ldq_u $23,0($1)
	extqh $3,$25,$3
	sra $3,56,$3
	mskbl $23,$1,$23
	insbl $3,$1,$3
	bis $3,$23,$3
	stq_u $3,0($1)
	beq $24,$L862
	zapnot $28,15,$1
	cmpule $4,4,$23
	addq $17,$1,$3
	lda $25,1($3)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $3,0($3)
	addl $7,4,$28
	ldq_u $24,0($1)
	extqh $3,$25,$3
	sra $3,56,$3
	mskbl $24,$1,$24
	insbl $3,$1,$3
	bis $3,$24,$3
	stq_u $3,0($1)
	bne $23,$L862
	zapnot $28,15,$1
	cmpeq $4,5,$23
	addq $17,$1,$3
	lda $25,1($3)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $3,0($3)
	addl $7,5,$28
	ldq_u $24,0($1)
	extqh $3,$25,$3
	sra $3,56,$3
	mskbl $24,$1,$24
	insbl $3,$1,$3
	bis $3,$24,$3
	stq_u $3,0($1)
	bne $23,$L862
	zapnot $28,15,$1
	cmpeq $4,7,$23
	addq $17,$1,$3
	lda $25,1($3)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $3,0($3)
	addl $7,6,$28
	ldq_u $24,0($1)
	extqh $3,$25,$3
	sra $3,56,$3
	mskbl $24,$1,$24
	insbl $3,$1,$3
	bis $3,$24,$3
	stq_u $3,0($1)
	beq $23,$L862
	zapnot $28,15,$1
	addl $7,7,$7
	addq $17,$1,$3
	lda $23,1($3)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $3,0($3)
	ldq_u $5,0($1)
	extqh $3,$23,$3
	sra $3,56,$3
	mskbl $5,$1,$5
	insbl $3,$1,$3
	cpys $f31,$f31,$f31
	bis $3,$5,$3
	stq_u $3,0($1)
$L850:
	subl $8,$22,$8
	zapnot $8,15,$5
	addq $4,$2,$4
	srl $5,3,$5
	addq $17,$4,$1
	s8addq $5,$1,$5
	addq $16,$4,$4
	.align 4
$L853:
	ldq_u $2,0($1)
	bis $31,$31,$31
	lda $4,8($4)
	ldq_u $3,7($1)
	extql $2,$1,$2
	extqh $3,$1,$3
	lda $1,8($1)
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq $2,-8($4)
	cmpeq $5,$1,$2
	beq $2,$L853
	bic $8,7,$2
	and $8,7,$8
	addl $2,$7,$2
	beq $8,$L840
	zapnot $2,15,$3
	addl $2,1,$1
	addq $17,$3,$4
	lda $7,1($4)
	addq $16,$3,$3
	ldq_u $4,0($4)
	zapnot $1,15,$1
	ldq_u $5,0($3)
	extqh $4,$7,$4
	cmpule $6,$1,$7
	sra $4,56,$4
	mskbl $5,$3,$5
	insbl $4,$3,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($3)
	bne $7,$L840
	addq $17,$1,$3
	lda $7,1($3)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $4,0($3)
	addl $2,2,$3
	cpys $f31,$f31,$f31
	zapnot $3,15,$3
	ldq_u $5,0($1)
	extqh $4,$7,$4
	cmpule $6,$3,$7
	sra $4,56,$4
	mskbl $5,$1,$5
	insbl $4,$1,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($1)
	bne $7,$L840
	addq $17,$3,$4
	lda $7,1($4)
	cpys $f31,$f31,$f31
	addq $16,$3,$1
	ldq_u $4,0($4)
	addl $2,3,$3
	cpys $f31,$f31,$f31
	zapnot $3,15,$3
	ldq_u $5,0($1)
	extqh $4,$7,$4
	cmpule $6,$3,$7
	sra $4,56,$4
	mskbl $5,$1,$5
	insbl $4,$1,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($1)
	bne $7,$L840
	addq $17,$3,$4
	lda $7,1($4)
	cpys $f31,$f31,$f31
	addq $16,$3,$1
	ldq_u $4,0($4)
	addl $2,4,$3
	cpys $f31,$f31,$f31
	zapnot $3,15,$3
	ldq_u $5,0($1)
	extqh $4,$7,$4
	cmpule $6,$3,$7
	sra $4,56,$4
	mskbl $5,$1,$5
	insbl $4,$1,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($1)
	bne $7,$L840
	addq $17,$3,$4
	lda $7,1($4)
	cpys $f31,$f31,$f31
	addq $16,$3,$1
	ldq_u $4,0($4)
	addl $2,5,$3
	cpys $f31,$f31,$f31
	zapnot $3,15,$3
	ldq_u $5,0($1)
	extqh $4,$7,$4
	cmpule $6,$3,$7
	sra $4,56,$4
	mskbl $5,$1,$5
	insbl $4,$1,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($1)
	bne $7,$L840
	addq $17,$3,$1
	lda $7,1($1)
	cpys $f31,$f31,$f31
	addq $16,$3,$3
	ldq_u $4,0($1)
	addl $2,6,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	ldq_u $5,0($3)
	extqh $4,$7,$4
	cmpule $6,$2,$1
	sra $4,56,$4
	mskbl $5,$3,$5
	insbl $4,$3,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($3)
	bne $1,$L840
	addq $17,$2,$17
	addq $16,$2,$1
	cpys $f31,$f31,$f31
	lda $4,1($17)
	ldq_u $2,0($17)
	ldq_u $3,0($1)
	extqh $2,$4,$2
	mskbl $3,$1,$3
	sra $2,56,$2
	insbl $2,$1,$2
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq_u $2,0($1)
	ret $31,($26),1
	.align 4
$L878:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L881
	.align 4
$L857:
	addq $17,$2,$1
	lda $6,1($1)
	addq $16,$2,$3
	ldq_u $1,0($1)
	lda $2,-1($2)
	cpys $f31,$f31,$f31
	lda $5,1($2)
	ldq_u $4,0($3)
	extqh $1,$6,$1
	sra $1,56,$1
	mskbl $4,$3,$4
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	bne $5,$L857
$L840:
	ret $31,($26),1
	.align 4
$L862:
	mov $28,$7
	br $31,$L850
	.align 4
$L879:
	zapnot $7,15,$2
	beq $18,$L882
$L849:
	subl $18,1,$1
	subl $1,$7,$1
	lda $5,1($17)
	zapnot $1,15,$1
	addq $5,$2,$5
	addq $17,$2,$17
	addq $16,$2,$16
	addq $5,$1,$5
	.align 4
$L855:
	lda $3,1($17)
	ldq_u $1,0($17)
	cmpeq $5,$3,$4
	ldq_u $2,0($16)
	mov $3,$17
	extqh $1,$3,$1
	mskbl $2,$16,$2
	sra $1,56,$1
	insbl $1,$16,$1
	cpys $f31,$f31,$f31
	bis $1,$2,$1
	stq_u $1,0($16)
	lda $16,1($16)
	beq $4,$L855
	ret $31,($26),1
$L880:
	addl $7,1,$7
	zapnot $22,15,$4
	br $31,$L850
$L858:
	mov $23,$7
	br $31,$L850
$L882:
	ret $31,($26),1
$L881:
	ret $31,($26),1
	.cfi_endproc
$LFE107:
	.end __cmovd
	.align 2
	.align 4
	.globl __cmovh
	.ent __cmovh
$__cmovh..ng:
__cmovh:
	.frame $30,0,$26,0
$LFB108:
	.cfi_startproc
	.prologue 0
	zapnot $18,15,$1
	cmpult $16,$17,$2
	srl $1,1,$6
	bne $2,$L887
	addq $17,$1,$1
	cmpule $16,$1,$1
	bne $1,$L913
$L887:
	beq $6,$L886
	subl $6,1,$1
	zapnot $1,15,$1
	cmpule $1,11,$1
	bne $1,$L890
	lda $4,2($17)
	subq $16,$4,$1
	cmpule $1,4,$1
	bne $1,$L890
	srl $16,1,$3
	subl $31,$3,$3
	and $3,3,$1
	beq $1,$L899
	ldq_u $2,0($17)
	bis $31,$31,$31
	and $3,2,$3
	ldq_u $5,0($16)
	lda $8,1($31)
	extqh $2,$4,$2
	mskwl $5,$16,$5
	sra $2,48,$2
	zapnot $1,15,$4
	inswl $2,$16,$2
	bis $2,$5,$2
	stq_u $2,0($16)
	bis $31,$31,$31
	beq $3,$L891
	lda $8,4($17)
	ldq_u $2,2($17)
	lda $3,2($16)
	ldq_u $7,2($16)
	cmpeq $4,3,$5
	extqh $2,$8,$2
	mskwl $7,$3,$7
	sra $2,48,$2
	lda $8,2($31)
	inswl $2,$3,$2
	bis $2,$7,$2
	stq_u $2,2($16)
	bis $31,$31,$31
	beq $5,$L891
	lda $7,6($17)
	ldq_u $2,4($17)
	lda $3,4($16)
	ldq_u $5,4($16)
	mov $1,$8
	extqh $2,$7,$2
	mskwl $5,$3,$5
	sra $2,48,$2
	inswl $2,$3,$2
	cpys $f31,$f31,$f31
	bis $2,$5,$2
	stq_u $2,4($16)
$L891:
	subl $6,$1,$7
	zapnot $7,15,$5
	addq $4,$4,$4
	srl $5,2,$5
	addq $17,$4,$1
	s8addq $5,$1,$5
	addq $16,$4,$4
	.align 4
$L893:
	ldq_u $2,0($1)
	bis $31,$31,$31
	lda $4,8($4)
	ldq_u $3,7($1)
	extql $2,$1,$2
	extqh $3,$1,$3
	lda $1,8($1)
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq $2,-8($4)
	cmpeq $5,$1,$2
	beq $2,$L893
	bic $7,3,$2
	and $7,3,$1
	addl $2,$8,$2
	beq $1,$L886
	zapnot $2,15,$3
	addl $2,1,$1
	addq $3,$3,$3
	addq $17,$3,$4
	lda $8,2($4)
	cpys $f31,$f31,$f31
	addq $16,$3,$3
	ldq_u $4,0($4)
	zapnot $1,15,$1
	cpys $f31,$f31,$f31
	zapnot $6,15,$7
	ldq_u $5,0($3)
	extqh $4,$8,$4
	cmpule $6,$1,$6
	sra $4,48,$4
	mskwl $5,$3,$5
	inswl $4,$3,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($3)
	bne $6,$L886
	addq $1,$1,$1
	addq $17,$1,$3
	lda $5,2($3)
	addq $16,$1,$1
	ldq_u $3,0($3)
	addl $2,2,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	ldq_u $4,0($1)
	extqh $3,$5,$3
	cmpule $7,$2,$7
	sra $3,48,$3
	mskwl $4,$1,$4
	inswl $3,$1,$3
	cpys $f31,$f31,$f31
	bis $3,$4,$3
	stq_u $3,0($1)
	bne $7,$L886
	addq $2,$2,$1
	addq $17,$1,$2
	lda $4,2($2)
	addq $16,$1,$1
	ldq_u $2,0($2)
	ldq_u $3,0($1)
	extqh $2,$4,$2
	sra $2,48,$2
	mskwl $3,$1,$3
	inswl $2,$1,$2
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq_u $2,0($1)
$L886:
	blbc $18,$L883
$L915:
	subl $18,1,$18
	zapnot $18,15,$18
	addq $17,$18,$17
	addq $16,$18,$16
	cpys $f31,$f31,$f31
	lda $3,1($17)
	ldq_u $1,0($17)
	ldq_u $2,0($16)
	extqh $1,$3,$1
	mskbl $2,$16,$2
	sra $1,56,$1
	insbl $1,$16,$1
	cpys $f31,$f31,$f31
	bis $1,$2,$1
	stq_u $1,0($16)
	ret $31,($26),1
	.align 4
$L913:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L914
	.align 4
$L898:
	addq $17,$2,$1
	lda $6,1($1)
	addq $16,$2,$3
	ldq_u $1,0($1)
	lda $2,-1($2)
	cpys $f31,$f31,$f31
	lda $5,1($2)
	ldq_u $4,0($3)
	extqh $1,$6,$1
	sra $1,56,$1
	mskbl $4,$3,$4
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	bne $5,$L898
$L883:
	ret $31,($26),1
	.align 4
$L899:
	mov $31,$8
	cpys $f31,$f31,$f31
	mov $31,$4
	br $31,$L891
	.align 4
$L890:
	addq $6,$6,$6
	mov $17,$3
	mov $16,$2
	addq $6,$17,$6
	.align 4
$L895:
	lda $5,2($3)
	ldq_u $1,0($3)
	cmpeq $6,$5,$7
	ldq_u $4,0($2)
	mov $5,$3
	extqh $1,$5,$1
	mskwl $4,$2,$4
	sra $1,48,$1
	inswl $1,$2,$1
	cpys $f31,$f31,$f31
	bis $1,$4,$1
	stq_u $1,0($2)
	lda $2,2($2)
	beq $7,$L895
	blbc $18,$L883
	br $31,$L915
$L914:
	ret $31,($26),1
	.cfi_endproc
$LFE108:
	.end __cmovh
	.align 2
	.align 4
	.globl __cmovw
	.ent __cmovw
$__cmovw..ng:
__cmovw:
	.frame $30,0,$26,0
$LFB109:
	.cfi_startproc
	.prologue 0
	zapnot $18,15,$6
	cmpult $16,$17,$2
	srl $6,2,$1
	cpys $f31,$f31,$f31
	bic $18,3,$7
	bne $2,$L921
	addq $17,$6,$2
	cmpule $16,$2,$2
	bne $2,$L960
$L921:
	beq $1,$L961
	subl $1,1,$2
	zapnot $2,15,$2
	cmpule $2,23,$2
	bne $2,$L923
	lda $2,4($17)
	cmpeq $16,$2,$2
	bne $2,$L923
	and $16,4,$4
	cmpult $31,$4,$4
	cpys $f31,$f31,$f31
	mov $31,$22
	beq $4,$L924
	mov $4,$22
	ldl $2,0($17)
	stl $2,0($16)
$L924:
	subl $1,$4,$5
	zapnot $5,15,$8
	s4addq $4,$17,$1
	srl $8,1,$8
	s4addq $4,$16,$4
	s8addq $8,$1,$8
	.align 4
$L925:
	ldq_u $2,0($1)
	bis $31,$31,$31
	lda $4,8($4)
	ldq_u $3,7($1)
	extql $2,$1,$2
	extqh $3,$1,$3
	lda $1,8($1)
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq $2,-8($4)
	cmpeq $1,$8,$2
	beq $2,$L925
	blbc $5,$L928
	bic $5,1,$1
	addl $1,$22,$1
	zapnot $1,15,$1
	s4addq $1,$17,$2
	s4addq $1,$16,$1
	ldl $2,0($2)
	stl $2,0($1)
$L928:
	zapnot $7,15,$3
	cmpule $6,$3,$1
	bne $1,$L916
	subl $18,$7,$8
	subl $8,1,$1
	zapnot $1,15,$1
	cmpule $1,13,$1
	bne $1,$L919
	lda $5,1($3)
	addq $16,$3,$2
	addq $17,$5,$23
	subq $2,$23,$1
	cmpule $1,6,$1
	bne $1,$L919
	subl $31,$2,$24
	and $24,7,$22
	mov $31,$4
	beq $22,$L929
	addq $17,$3,$1
	ldq_u $25,0($2)
	lda $28,1($1)
	cpys $f31,$f31,$f31
	and $24,6,$4
	ldq_u $1,0($1)
	mskbl $25,$2,$25
	extqh $1,$28,$1
	sra $1,56,$1
	insbl $1,$2,$1
	bis $1,$25,$1
	stq_u $1,0($2)
	bis $31,$31,$31
	beq $4,$L962
	addq $16,$5,$4
	ldq_u $1,0($23)
	lda $23,1($23)
	cpys $f31,$f31,$f31
	addl $7,2,$2
	ldq_u $25,0($4)
	extqh $1,$23,$1
	cmpule $22,2,$5
	sra $1,56,$1
	mskbl $25,$4,$25
	insbl $1,$4,$1
	addl $31,$2,$23
	bis $1,$25,$1
	stq_u $1,0($4)
	zapnot $22,15,$4
	bne $5,$L938
	zapnot $2,15,$1
	and $24,4,$24
	addq $17,$1,$2
	lda $25,1($2)
	addq $16,$1,$1
	ldq_u $2,0($2)
	addl $7,3,$28
	ldq_u $23,0($1)
	extqh $2,$25,$2
	sra $2,56,$2
	mskbl $23,$1,$23
	insbl $2,$1,$2
	bis $2,$23,$2
	stq_u $2,0($1)
	beq $24,$L942
	zapnot $28,15,$1
	cmpule $4,4,$23
	addq $17,$1,$2
	lda $25,1($2)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $2,0($2)
	addl $7,4,$28
	ldq_u $24,0($1)
	extqh $2,$25,$2
	sra $2,56,$2
	mskbl $24,$1,$24
	insbl $2,$1,$2
	bis $2,$24,$2
	stq_u $2,0($1)
	bne $23,$L942
	zapnot $28,15,$1
	cmpeq $4,5,$23
	addq $17,$1,$2
	lda $25,1($2)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $2,0($2)
	addl $7,5,$28
	ldq_u $24,0($1)
	extqh $2,$25,$2
	sra $2,56,$2
	mskbl $24,$1,$24
	insbl $2,$1,$2
	bis $2,$24,$2
	stq_u $2,0($1)
	bne $23,$L942
	zapnot $28,15,$1
	cmpeq $4,7,$23
	addq $17,$1,$2
	lda $25,1($2)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $2,0($2)
	addl $7,6,$28
	ldq_u $24,0($1)
	extqh $2,$25,$2
	sra $2,56,$2
	mskbl $24,$1,$24
	insbl $2,$1,$2
	bis $2,$24,$2
	stq_u $2,0($1)
	beq $23,$L942
	zapnot $28,15,$1
	addl $7,7,$7
	addq $17,$1,$2
	lda $23,1($2)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $2,0($2)
	ldq_u $5,0($1)
	extqh $2,$23,$2
	sra $2,56,$2
	mskbl $5,$1,$5
	insbl $2,$1,$2
	cpys $f31,$f31,$f31
	bis $2,$5,$2
	stq_u $2,0($1)
$L929:
	subl $8,$22,$8
	zapnot $8,15,$5
	addq $4,$3,$4
	srl $5,3,$5
	addq $17,$4,$1
	s8addq $5,$1,$5
	addq $16,$4,$4
	.align 4
$L932:
	ldq_u $2,0($1)
	bis $31,$31,$31
	lda $4,8($4)
	ldq_u $3,7($1)
	extql $2,$1,$2
	extqh $3,$1,$3
	lda $1,8($1)
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq $2,-8($4)
	cmpeq $1,$5,$2
	beq $2,$L932
	bic $8,7,$1
	and $8,7,$8
	addl $1,$7,$1
	beq $8,$L916
	zapnot $1,15,$3
	addl $1,1,$2
	addq $17,$3,$4
	lda $7,1($4)
	addq $16,$3,$3
	ldq_u $4,0($4)
	zapnot $2,15,$2
	ldq_u $5,0($3)
	extqh $4,$7,$4
	cmpule $6,$2,$7
	sra $4,56,$4
	mskbl $5,$3,$5
	insbl $4,$3,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($3)
	bne $7,$L916
	addq $17,$2,$3
	lda $7,1($3)
	cpys $f31,$f31,$f31
	addq $16,$2,$2
	ldq_u $4,0($3)
	addl $1,2,$3
	cpys $f31,$f31,$f31
	zapnot $3,15,$3
	ldq_u $5,0($2)
	extqh $4,$7,$4
	cmpule $6,$3,$7
	sra $4,56,$4
	mskbl $5,$2,$5
	insbl $4,$2,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($2)
	bne $7,$L916
	addq $17,$3,$4
	lda $7,1($4)
	cpys $f31,$f31,$f31
	addq $16,$3,$2
	ldq_u $4,0($4)
	addl $1,3,$3
	cpys $f31,$f31,$f31
	zapnot $3,15,$3
	ldq_u $5,0($2)
	extqh $4,$7,$4
	cmpule $6,$3,$7
	sra $4,56,$4
	mskbl $5,$2,$5
	insbl $4,$2,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($2)
	bne $7,$L916
	addq $17,$3,$4
	lda $7,1($4)
	cpys $f31,$f31,$f31
	addq $16,$3,$2
	ldq_u $4,0($4)
	addl $1,4,$3
	cpys $f31,$f31,$f31
	zapnot $3,15,$3
	ldq_u $5,0($2)
	extqh $4,$7,$4
	cmpule $6,$3,$7
	sra $4,56,$4
	mskbl $5,$2,$5
	insbl $4,$2,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($2)
	bne $7,$L916
	addq $17,$3,$4
	lda $7,1($4)
	cpys $f31,$f31,$f31
	addq $16,$3,$2
	ldq_u $4,0($4)
	addl $1,5,$3
	cpys $f31,$f31,$f31
	zapnot $3,15,$3
	ldq_u $5,0($2)
	extqh $4,$7,$4
	cmpule $6,$3,$7
	sra $4,56,$4
	mskbl $5,$2,$5
	insbl $4,$2,$4
	cpys $f31,$f31,$f31
	bis $4,$5,$4
	stq_u $4,0($2)
	bne $7,$L916
	addq $17,$3,$4
	addq $16,$3,$2
	cpys $f31,$f31,$f31
	lda $5,1($4)
	ldq_u $3,0($4)
	addl $1,6,$1
	ldq_u $4,0($2)
	zapnot $1,15,$1
	extqh $3,$5,$3
	mskbl $4,$2,$4
	sra $3,56,$3
	cmpule $6,$1,$6
	insbl $3,$2,$3
	bis $3,$4,$3
	stq_u $3,0($2)
	bne $6,$L916
	addq $17,$1,$17
	lda $4,1($17)
	cpys $f31,$f31,$f31
	addq $16,$1,$1
	ldq_u $2,0($17)
	ldq_u $3,0($1)
	extqh $2,$4,$2
	sra $2,56,$2
	mskbl $3,$1,$3
	insbl $2,$1,$2
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq_u $2,0($1)
	ret $31,($26),1
	.align 4
$L960:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L963
	.align 4
$L936:
	addq $17,$2,$1
	lda $6,1($1)
	addq $16,$2,$3
	ldq_u $1,0($1)
	lda $2,-1($2)
	cpys $f31,$f31,$f31
	lda $5,1($2)
	ldq_u $4,0($3)
	extqh $1,$6,$1
	sra $1,56,$1
	mskbl $4,$3,$4
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	bne $5,$L936
$L916:
	ret $31,($26),1
	.align 4
$L942:
	mov $28,$7
	br $31,$L929
	.align 4
$L923:
	mov $17,$2
	mov $16,$3
	s4addq $1,$17,$1
	.align 4
$L927:
	lda $3,4($3)
	ldl $5,0($2)
	lda $2,4($2)
	cmpeq $1,$2,$4
	stl $5,-4($3)
	beq $4,$L927
	br $31,$L928
	.align 4
$L961:
	zapnot $7,15,$3
	beq $18,$L964
$L919:
	subl $18,1,$2
	subl $2,$7,$2
	lda $1,1($17)
	zapnot $2,15,$2
	addq $1,$3,$1
	addq $17,$3,$17
	addq $16,$3,$16
	addq $2,$1,$2
	.align 4
$L934:
	lda $4,1($17)
	ldq_u $1,0($17)
	cmpeq $2,$4,$5
	ldq_u $3,0($16)
	mov $4,$17
	extqh $1,$4,$1
	mskbl $3,$16,$3
	sra $1,56,$1
	insbl $1,$16,$1
	cpys $f31,$f31,$f31
	bis $1,$3,$1
	stq_u $1,0($16)
	lda $16,1($16)
	beq $5,$L934
	ret $31,($26),1
$L962:
	addl $7,1,$7
	zapnot $22,15,$4
	br $31,$L929
$L938:
	mov $23,$7
	br $31,$L929
$L964:
	ret $31,($26),1
$L963:
	ret $31,($26),1
	.cfi_endproc
$LFE109:
	.end __cmovw
	.align 2
	.align 4
	.globl __modi
	.ent __modi
__modi:
	.frame $30,0,$26,0
$LFB110:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!66
	lda $29,0($29)		!gpdisp!66
$__modi..ng:
	.prologue 1
	mov $16,$24
	cpys $f31,$f31,$f31
	mov $17,$25
	ldq $27,__reml($29)		!literal!65
	jsr $23,($27),__reml		!lituse_jsrdirect!65
	addl $31,$27,$0
	ret $31,($26),1
	.cfi_endproc
$LFE110:
	.end __modi
	.align 2
	.align 4
	.globl __uitod
	.ent __uitod
$__uitod..ng:
__uitod:
	.frame $30,16,$26,0
$LFB111:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	zapnot $16,15,$16
	stq $16,0($30)
	ldt $f0,0($30)
	cvtqt $f0,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE111:
	.end __uitod
	.align 2
	.align 4
	.globl __uitof
	.ent __uitof
$__uitof..ng:
__uitof:
	.frame $30,16,$26,0
$LFB112:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	zapnot $16,15,$16
	stq $16,0($30)
	ldt $f0,0($30)
	cvtqs $f0,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE112:
	.end __uitof
	.align 2
	.align 4
	.globl __ulltod
	.ent __ulltod
$__ulltod..ng:
__ulltod:
	.frame $30,16,$26,0
$LFB113:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	blt $16,$L973
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqt $f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L973:
	.cfi_restore_state
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,0($30)
	ldt $f11,0($30)
	cvtqt $f11,$f10
	addt $f10,$f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE113:
	.end __ulltod
	.align 2
	.align 4
	.globl __ulltof
	.ent __ulltof
$__ulltof..ng:
__ulltof:
	.frame $30,16,$26,0
$LFB114:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	blt $16,$L976
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqs $f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L976:
	.cfi_restore_state
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,0($30)
	ldt $f11,0($30)
	cvtqs $f11,$f10
	adds $f10,$f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE114:
	.end __ulltof
	.align 2
	.align 4
	.globl __umodi
	.ent __umodi
__umodi:
	.frame $30,0,$26,0
$LFB115:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!68
	lda $29,0($29)		!gpdisp!68
$__umodi..ng:
	.prologue 1
	mov $16,$24
	cpys $f31,$f31,$f31
	mov $17,$25
	ldq $27,__remlu($29)		!literal!67
	jsr $23,($27),__remlu		!lituse_jsrdirect!67
	addl $31,$27,$0
	ret $31,($26),1
	.cfi_endproc
$LFE115:
	.end __umodi
	.align 2
	.align 4
	.globl __clzhi2
	.ent __clzhi2
$__clzhi2..ng:
__clzhi2:
	.frame $30,0,$26,0
$LFB116:
	.cfi_startproc
	.prologue 0
	srl $16,15,$2
	addl $31,$16,$1
	bne $2,$L982
	srl $1,14,$0
	bne $0,$L981
	srl $1,13,$2
	bne $2,$L983
	srl $1,12,$2
	bne $2,$L984
	srl $1,11,$2
	bne $2,$L985
	srl $1,10,$2
	bne $2,$L986
	srl $1,9,$2
	bne $2,$L987
	srl $1,8,$2
	bne $2,$L988
	srl $1,7,$2
	bne $2,$L989
	srl $1,6,$2
	bne $2,$L990
	srl $1,5,$2
	bne $2,$L991
	srl $1,4,$2
	bne $2,$L992
	srl $1,3,$2
	bne $2,$L993
	srl $1,2,$2
	bne $2,$L994
	srl $1,1,$1
	bne $1,$L995
	cmpeq $16,0,$0
	lda $0,15($0)
	ret $31,($26),1
$L995:
	lda $0,14($31)
$L981:
	ret $31,($26),1
$L982:
	mov $31,$0
	ret $31,($26),1
$L993:
	lda $0,12($31)
	ret $31,($26),1
$L983:
	lda $0,2($31)
	ret $31,($26),1
$L984:
	lda $0,3($31)
	ret $31,($26),1
$L985:
	lda $0,4($31)
	ret $31,($26),1
$L986:
	lda $0,5($31)
	ret $31,($26),1
$L987:
	lda $0,6($31)
	ret $31,($26),1
$L988:
	lda $0,7($31)
	ret $31,($26),1
$L989:
	lda $0,8($31)
	ret $31,($26),1
$L990:
	lda $0,9($31)
	ret $31,($26),1
$L991:
	lda $0,10($31)
	ret $31,($26),1
$L992:
	lda $0,11($31)
	ret $31,($26),1
$L994:
	lda $0,13($31)
	ret $31,($26),1
	.cfi_endproc
$LFE116:
	.end __clzhi2
	.align 2
	.align 4
	.globl __ctzhi2
	.ent __ctzhi2
$__ctzhi2..ng:
__ctzhi2:
	.frame $30,0,$26,0
$LFB117:
	.cfi_startproc
	.prologue 0
	blbs $16,$L1000
	and $16,2,$1
	bne $1,$L1001
	and $16,4,$1
	bne $1,$L1002
	and $16,8,$1
	bne $1,$L1003
	and $16,16,$1
	bne $1,$L1004
	and $16,32,$1
	bne $1,$L1005
	and $16,64,$1
	bne $1,$L1006
	and $16,128,$1
	bne $1,$L1007
	lda $1,256($31)
	and $16,$1,$1
	bne $1,$L1008
	lda $1,512($31)
	and $16,$1,$1
	bne $1,$L1009
	lda $1,1024($31)
	and $16,$1,$1
	bne $1,$L1010
	lda $1,2048($31)
	and $16,$1,$1
	bne $1,$L1011
	lda $1,4096($31)
	and $16,$1,$1
	bne $1,$L1012
	lda $1,8192($31)
	and $16,$1,$1
	bne $1,$L1013
	lda $1,16384($31)
	and $16,$1,$1
	bne $1,$L1014
	srl $16,15,$16
	cmpeq $16,0,$0
	lda $0,15($0)
	ret $31,($26),1
$L1000:
	mov $31,$0
	ret $31,($26),1
$L1001:
	lda $0,1($31)
	ret $31,($26),1
$L1012:
	lda $0,12($31)
	ret $31,($26),1
$L1002:
	lda $0,2($31)
	ret $31,($26),1
$L1003:
	lda $0,3($31)
	ret $31,($26),1
$L1004:
	lda $0,4($31)
	ret $31,($26),1
$L1005:
	lda $0,5($31)
	ret $31,($26),1
$L1006:
	lda $0,6($31)
	ret $31,($26),1
$L1007:
	lda $0,7($31)
	ret $31,($26),1
$L1008:
	lda $0,8($31)
	ret $31,($26),1
$L1009:
	lda $0,9($31)
	ret $31,($26),1
$L1010:
	lda $0,10($31)
	ret $31,($26),1
$L1011:
	lda $0,11($31)
	ret $31,($26),1
$L1013:
	lda $0,13($31)
	ret $31,($26),1
$L1014:
	lda $0,14($31)
	ret $31,($26),1
	.cfi_endproc
$LFE117:
	.end __ctzhi2
	.align 2
	.align 4
	.globl __fixunssfsi
	.ent __fixunssfsi
__fixunssfsi:
	.frame $30,16,$26,0
$LFB118:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!69
	lda $29,0($29)		!gpdisp!69
$__fixunssfsi..ng:
	ldah $1,$LC15($29)		!gprelhigh
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	lds $f10,$LC15($1)		!gprellow
	cmptle $f10,$f16,$f11
	fbne $f11,$L1022
	cvttq/c $f16,$f16
	stt $f16,0($30)
	ldq $0,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1022:
	.cfi_restore_state
	subs $f16,$f10,$f11
	cvttq/c $f11,$f11
	stt $f11,0($30)
	ldq $0,0($30)
	ldah $0,1($0)
	lda $0,-32768($0)
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE118:
	.end __fixunssfsi
	.align 2
	.align 4
	.globl __parityhi2
	.ent __parityhi2
$__parityhi2..ng:
__parityhi2:
	.frame $30,0,$26,0
$LFB119:
	.cfi_startproc
	.prologue 0
	and $16,2,$2
	cmpult $31,$2,$2
	and $16,4,$1
	and $16,1,$0
	cmpult $31,$1,$1
	and $16,8,$3
	addl $0,$2,$0
	cmpult $31,$3,$3
	and $16,16,$2
	addl $0,$1,$0
	cmpult $31,$2,$2
	and $16,32,$1
	addl $0,$3,$0
	cmpult $31,$1,$1
	and $16,64,$3
	addl $0,$2,$0
	cmpult $31,$3,$3
	and $16,128,$2
	addl $0,$1,$0
	cmpult $31,$2,$2
	srl $16,8,$1
	addl $0,$3,$0
	srl $16,9,$3
	addl $0,$2,$0
	and $1,1,$1
	srl $16,10,$2
	addl $0,$1,$0
	and $3,1,$3
	srl $16,11,$1
	addl $0,$3,$0
	and $2,1,$2
	srl $16,12,$3
	addl $0,$2,$0
	and $1,1,$1
	srl $16,13,$2
	addl $0,$1,$0
	and $3,1,$3
	srl $16,14,$1
	addl $0,$3,$0
	and $2,1,$2
	addl $0,$2,$0
	and $1,1,$1
	srl $16,15,$16
	addl $0,$1,$0
	addl $0,$16,$0
	and $0,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE119:
	.end __parityhi2
	.align 2
	.align 4
	.globl __popcounthi2
	.ent __popcounthi2
$__popcounthi2..ng:
__popcounthi2:
	.frame $30,0,$26,0
$LFB120:
	.cfi_startproc
	.prologue 0
	and $16,2,$2
	cmpult $31,$2,$2
	and $16,4,$1
	and $16,1,$0
	cmpult $31,$1,$1
	and $16,8,$3
	addl $0,$2,$0
	cmpult $31,$3,$3
	and $16,16,$2
	addl $0,$1,$0
	cmpult $31,$2,$2
	and $16,32,$1
	addl $0,$3,$0
	cmpult $31,$1,$1
	and $16,64,$3
	addl $0,$2,$0
	cmpult $31,$3,$3
	and $16,128,$2
	addl $0,$1,$0
	cmpult $31,$2,$2
	srl $16,8,$1
	addl $0,$3,$0
	srl $16,9,$3
	addl $0,$2,$0
	and $1,1,$1
	srl $16,10,$2
	addl $0,$1,$0
	and $3,1,$3
	srl $16,11,$1
	addl $0,$3,$0
	and $2,1,$2
	srl $16,12,$3
	addl $0,$2,$0
	and $1,1,$1
	srl $16,13,$2
	addl $0,$1,$0
	and $3,1,$3
	srl $16,14,$1
	addl $0,$3,$0
	and $2,1,$2
	addl $0,$2,$0
	and $1,1,$1
	srl $16,15,$16
	addl $0,$1,$0
	addl $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE120:
	.end __popcounthi2
	.align 2
	.align 4
	.globl __mulsi3_iq2000
	.ent __mulsi3_iq2000
$__mulsi3_iq2000..ng:
__mulsi3_iq2000:
	.frame $30,0,$26,0
$LFB177:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $16,$L1026
	.align 4
$L1027:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $1,$0,$0
	addl $17,$17,$17
	bne $16,$L1027
$L1026:
	ret $31,($26),1
	.cfi_endproc
$LFE177:
	.end __mulsi3_iq2000
	.align 2
	.align 4
	.globl __mulsi3_lm32
	.ent __mulsi3_lm32
$__mulsi3_lm32..ng:
__mulsi3_lm32:
	.frame $30,0,$26,0
$LFB122:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $16,$L1032
	beq $17,$L1032
	.align 4
$L1033:
	zapnot $17,15,$2
	and $17,1,$17
	subl $31,$17,$1
	srl $2,1,$17
	and $16,$1,$1
	addl $1,$0,$0
	addl $16,$16,$16
	bne $17,$L1033
$L1032:
	ret $31,($26),1
	.cfi_endproc
$LFE122:
	.end __mulsi3_lm32
	.align 2
	.align 4
	.globl __udivmodsi4
	.ent __udivmodsi4
$__udivmodsi4..ng:
__udivmodsi4:
	.frame $30,0,$26,0
$LFB123:
	.cfi_startproc
	.prologue 0
	zapnot $17,15,$2
	zapnot $16,15,$3
	lda $1,1($31)
	cmpult $2,$3,$4
	bne $4,$L1041
	br $31,$L1042
	.align 4
$L1044:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L1043
$L1041:
	addl $17,$17,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$3,$2
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L1044
	zapnot $17,15,$2
	bis $31,$31,$31
$L1042:
	mov $31,$0
	br $31,$L1047
	.align 4
$L1056:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L1047:
	cmpult $3,$2,$3
	zapnot $1,15,$4
	bis $1,$0,$1
	bne $3,$L1046
	subl $16,$17,$16
	addl $31,$1,$0
$L1046:
	srl $4,1,$1
	srl $2,1,$17
	bne $1,$L1056
$L1045:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L1043:
	mov $31,$0
	beq $1,$L1045
	zapnot $17,15,$2
	br $31,$L1042
	.cfi_endproc
$LFE123:
	.end __udivmodsi4
	.align 2
	.align 4
	.globl __mspabi_cmpf
	.ent __mspabi_cmpf
$__mspabi_cmpf..ng:
__mspabi_cmpf:
	.frame $30,0,$26,0
$LFB124:
	.cfi_startproc
	.prologue 0
	cpys $f16,$f16,$f16
	lda $0,-1($31)
	cpys $f17,$f17,$f17
	cmptlt $f16,$f17,$f10
	cpys $f31,$f31,$f31
	fbne $f10,$L1058
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L1061
$L1058:
	ret $31,($26),1
	.align 4
$L1061:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE124:
	.end __mspabi_cmpf
	.align 2
	.align 4
	.globl __mspabi_cmpd
	.ent __mspabi_cmpd
$__mspabi_cmpd..ng:
__mspabi_cmpd:
	.frame $30,0,$26,0
$LFB125:
	.cfi_startproc
	.prologue 0
	cmptlt $f16,$f17,$f10
	lda $0,-1($31)
	cpys $f31,$f31,$f31
	fbne $f10,$L1063
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L1066
$L1063:
	ret $31,($26),1
	.align 4
$L1066:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE125:
	.end __mspabi_cmpd
	.align 2
	.align 4
	.globl __mspabi_mpysll
	.ent __mspabi_mpysll
$__mspabi_mpysll..ng:
__mspabi_mpysll:
	.frame $30,0,$26,0
$LFB126:
	.cfi_startproc
	.prologue 0
	mulq $16,$17,$0
	ret $31,($26),1
	.cfi_endproc
$LFE126:
	.end __mspabi_mpysll
	.align 2
	.align 4
	.globl __mspabi_mpyull
	.ent __mspabi_mpyull
$__mspabi_mpyull..ng:
__mspabi_mpyull:
	.frame $30,0,$26,0
$LFB127:
	.cfi_startproc
	.prologue 0
	mulq $16,$17,$0
	ret $31,($26),1
	.cfi_endproc
$LFE127:
	.end __mspabi_mpyull
	.align 2
	.align 4
	.globl __mulhi3
	.ent __mulhi3
$__mulhi3..ng:
__mulhi3:
	.frame $30,0,$26,0
$LFB128:
	.cfi_startproc
	.prologue 0
	cmplt $17,0,$1
	bne $1,$L1079
	mov $31,$0
	beq $17,$L1072
	mov $31,$5
$L1071:
	lda $2,1($31)
	mov $31,$0
	.align 4
$L1073:
	and $17,1,$1
	cmpeq $2,32,$4
	sra $17,1,$17
	cmpeq $4,0,$4
	cmpult $31,$17,$3
	subl $31,$1,$1
	and $16,$1,$1
	addl $2,1,$2
	and $3,$4,$3
	addl $1,$0,$0
	addl $16,$16,$16
	cpys $f31,$f31,$f31
	and $2,0xff,$2
	bne $3,$L1073
	subl $31,$0,$1
	cmovne $5,$1,$0
$L1072:
	ret $31,($26),1
	.align 4
$L1079:
	subl $31,$17,$17
	cpys $f31,$f31,$f31
	lda $5,1($31)
	br $31,$L1071
	.cfi_endproc
$LFE128:
	.end __mulhi3
	.align 2
	.align 4
	.globl __divsi3
	.ent __divsi3
$__divsi3..ng:
__divsi3:
	.frame $30,0,$26,0
$LFB129:
	.cfi_startproc
	.prologue 0
	cmplt $16,0,$1
	lda $2,1($31)
	mov $31,$8
	beq $1,$L1081
	subq $31,$16,$16
	mov $31,$2
	lda $8,1($31)
$L1081:
	cmplt $17,0,$1
	beq $1,$L1082
	subq $31,$17,$17
	mov $2,$8
$L1082:
	zapnot $16,15,$3
	zapnot $17,15,$1
	addl $31,$16,$16
	cmpule $3,$1,$4
	addl $31,$17,$17
	lda $2,1($31)
	beq $4,$L1083
	br $31,$L1084
	.align 4
$L1086:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$2
	beq $1,$L1100
$L1083:
	addl $17,$17,$7
	addl $2,$2,$6
	zapnot $7,15,$1
	zapnot $6,15,$5
	cmpult $1,$3,$1
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $1,$5,$1
	beq $4,$L1086
	zapnot $17,15,$1
	bis $31,$31,$31
$L1084:
	mov $31,$0
	br $31,$L1088
	.align 4
$L1101:
	zapnot $16,15,$3
	zapnot $17,15,$1
$L1088:
	cmpule $1,$3,$3
	cpys $f31,$f31,$f31
	zapnot $2,15,$4
	beq $3,$L1087
	subl $16,$17,$16
	bis $2,$0,$0
$L1087:
	srl $4,1,$2
	srl $1,1,$17
	bne $2,$L1101
	zapnot $0,15,$0
	subq $31,$0,$1
	cmovne $8,$1,$0
	ret $31,($26),1
	.align 4
$L1100:
	zapnot $17,15,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $2,$L1084
	subq $31,$0,$1
	cmovne $8,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE129:
	.end __divsi3
	.align 2
	.align 4
	.globl __modsi3
	.ent __modsi3
$__modsi3..ng:
__modsi3:
	.frame $30,0,$26,0
$LFB130:
	.cfi_startproc
	.prologue 0
	cmplt $16,0,$1
	cpys $f31,$f31,$f31
	mov $31,$22
	beq $1,$L1103
	subq $31,$16,$16
	lda $22,1($31)
$L1103:
	subq $31,$17,$3
	cmovge $17,$17,$3
	zapnot $16,15,$8
	zapnot $3,15,$4
	addl $31,$16,$16
	cmpule $8,$4,$2
	addl $31,$3,$3
	cpys $f31,$f31,$f31
	lda $1,1($31)
	beq $2,$L1104
	br $31,$L1109
	.align 4
$L1107:
	addl $31,$7,$3
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L1120
$L1104:
	addl $3,$3,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$8,$2
	cmpult $31,$5,$5
	cmplt $3,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L1107
	.align 4
$L1119:
	zapnot $3,15,$4
$L1109:
	zapnot $1,15,$1
	cmpult $8,$4,$2
	cpys $f31,$f31,$f31
	srl $1,1,$1
	bne $2,$L1108
	subl $16,$3,$16
	zapnot $16,15,$8
$L1108:
	srl $4,1,$3
	bne $1,$L1119
	subq $31,$8,$0
	cmoveq $22,$8,$0
	ret $31,($26),1
	.align 4
$L1120:
	zapnot $3,15,$4
	bne $1,$L1109
	subq $31,$8,$0
	cmoveq $22,$8,$0
	ret $31,($26),1
	.cfi_endproc
$LFE130:
	.end __modsi3
	.align 2
	.align 4
	.globl __udivmodhi4
	.ent __udivmodhi4
$__udivmodhi4..ng:
__udivmodhi4:
	.frame $30,0,$26,0
$LFB131:
	.cfi_startproc
	.prologue 0
	cmpult $17,$16,$1
	cpys $f31,$f31,$f31
	lda $5,1($31)
	bne $1,$L1122
	br $31,$L1186
	.align 4
$L1125:
	beq $4,$L1124
	mov $1,$5
	mov $2,$17
$L1122:
	addl $17,$17,$2
	addl $5,$5,$1
	zapnot $2,3,$2
	zapnot $1,3,$1
	cmpult $2,$16,$4
	cmpult $31,$1,$6
	srl $17,15,$3
	and $4,$6,$4
	beq $3,$L1125
	cmpult $16,$17,$1
	beq $1,$L1147
	mov $31,$1
$L1148:
	srl $5,1,$3
	srl $17,1,$4
	zapnot $3,3,$3
	mov $16,$0
	beq $3,$L1127
$L1129:
	cmpult $16,$4,$2
	bne $2,$L1130
	subl $16,$4,$4
	bis $1,$3,$3
	zapnot $4,3,$16
	zapnot $3,3,$1
$L1130:
	srl $5,2,$2
	srl $17,2,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	bne $4,$L1131
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1131:
	srl $5,3,$2
	srl $17,3,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	bne $4,$L1132
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1132:
	srl $5,4,$2
	srl $17,4,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	bne $4,$L1133
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1133:
	srl $5,5,$2
	srl $17,5,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	bne $4,$L1134
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1134:
	srl $5,6,$2
	srl $17,6,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	bne $4,$L1135
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1135:
	srl $5,7,$2
	srl $17,7,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	beq $4,$L1187
$L1136:
	extwl $5,1,$2
	srl $17,8,$3
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	beq $4,$L1188
$L1137:
	srl $5,9,$2
	srl $17,9,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	beq $4,$L1189
$L1138:
	srl $5,10,$2
	srl $17,10,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	beq $4,$L1190
$L1139:
	srl $5,11,$2
	srl $17,11,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	beq $4,$L1191
$L1140:
	srl $5,12,$2
	srl $17,12,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	bne $4,$L1141
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1141:
	srl $5,13,$2
	srl $17,13,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	bne $4,$L1142
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1142:
	srl $5,14,$2
	srl $17,14,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1127
	cmpult $16,$3,$4
	bne $4,$L1143
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1143:
	srl $5,15,$5
	srl $17,15,$17
	zapnot $5,3,$5
	mov $16,$0
	beq $5,$L1127
	cmpult $16,$17,$2
	mov $31,$0
	bne $2,$L1127
	subl $16,$17,$17
	bis $1,1,$1
	zapnot $17,3,$0
	zapnot $1,3,$1
$L1127:
	cmoveq $18,$1,$0
	ret $31,($26),1
	.align 4
$L1124:
	mov $16,$0
	beq $1,$L1127
	cmpult $16,$2,$3
	cpys $f31,$f31,$f31
	lda $4,32767($31)
	bne $3,$L1128
	subl $16,$2,$16
	and $5,$4,$3
	zapnot $16,3,$16
	and $17,$4,$4
	mov $1,$5
	cpys $f31,$f31,$f31
	mov $2,$17
	br $31,$L1129
	.align 4
$L1147:
	subl $16,$17,$16
	zapnot $16,3,$16
	mov $5,$1
	br $31,$L1148
	.align 4
$L1187:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1136
	.align 4
$L1128:
	and $5,$4,$3
	and $17,$4,$4
	mov $1,$5
	mov $2,$17
	mov $31,$1
	br $31,$L1129
	.align 4
$L1188:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1137
	.align 4
$L1189:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1138
	.align 4
$L1190:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1139
	.align 4
$L1191:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1140
$L1186:
	cmpeq $17,$16,$2
	mov $31,$0
	mov $2,$1
	cpys $f31,$f31,$f31
	cmoveq $2,$16,$0
	br $31,$L1127
	.cfi_endproc
$LFE131:
	.end __udivmodhi4
	.align 2
	.align 4
	.globl __udivmodsi4_libgcc
	.ent __udivmodsi4_libgcc
$__udivmodsi4_libgcc..ng:
__udivmodsi4_libgcc:
	.frame $30,0,$26,0
$LFB132:
	.cfi_startproc
	.prologue 0
	lda $1,1($31)
	cmpult $17,$16,$2
	sll $1,31,$4
	bne $2,$L1193
	br $31,$L1194
	.align 4
$L1196:
	addq $17,$17,$17
	addq $1,$1,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L1195
$L1193:
	and $17,$4,$2
	beq $2,$L1196
$L1194:
	mov $31,$0
	.align 4
$L1199:
	cmpult $16,$17,$2
	bne $2,$L1198
	subq $16,$17,$16
	bis $0,$1,$0
$L1198:
	srl $1,1,$1
	srl $17,1,$17
	bne $1,$L1199
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L1195:
	mov $31,$0
	bne $1,$L1194
	cmovne $18,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE132:
	.end __udivmodsi4_libgcc
	.align 2
	.align 4
	.globl __ashldi3
	.ent __ashldi3
$__ashldi3..ng:
__ashldi3:
	.frame $30,0,$26,0
$LFB133:
	.cfi_startproc
	.prologue 0
	and $17,32,$1
	beq $1,$L1209
	lda $17,32($17)
	sll $16,$17,$16
	mov $31,$0
	addl $31,$16,$16
$L1210:
	sll $16,32,$16
	zapnot $0,15,$0
	bis $0,$16,$0
$L1208:
	ret $31,($26),1
	.align 4
$L1209:
	mov $16,$0
	beq $17,$L1208
	lda $2,32($31)
	addl $31,$16,$0
	subl $2,$17,$2
	zapnot $0,15,$1
	zapnot $2,15,$2
	sra $16,32,$16
	srl $1,$2,$1
	sll $16,$17,$16
	sll $0,$17,$0
	bis $1,$16,$1
	addl $31,$0,$0
	cpys $f31,$f31,$f31
	addl $31,$1,$16
	br $31,$L1210
	.cfi_endproc
$LFE133:
	.end __ashldi3
	.align 2
	.align 4
	.globl __ashlti3
	.ent __ashlti3
$__ashlti3..ng:
__ashlti3:
	.frame $30,0,$26,0
$LFB134:
	.cfi_startproc
	.prologue 0
	and $19,64,$1
	cpys $f31,$f31,$f31
	mov $16,$0
	beq $1,$L1215
	sll $17,$19,$18
	mov $31,$17
$L1217:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1215:
	beq $19,$L1217
	subq $31,$19,$1
	srl $17,$1,$1
	sll $18,$19,$18
	sll $17,$19,$17
	stq $17,0($0)
	bis $1,$18,$18
	stq $18,8($0)
	ret $31,($26),1
	.cfi_endproc
$LFE134:
	.end __ashlti3
	.align 2
	.align 4
	.globl __ashrdi3
	.ent __ashrdi3
$__ashrdi3..ng:
__ashrdi3:
	.frame $30,0,$26,0
$LFB135:
	.cfi_startproc
	.prologue 0
	and $17,32,$1
	beq $1,$L1222
	sra $16,32,$1
	sra $16,63,$16
	subl $17,32,$17
	addl $31,$16,$0
	sra $1,$17,$1
$L1223:
	zapnot $1,15,$1
	sll $0,32,$0
	bis $0,$1,$0
$L1221:
	ret $31,($26),1
	.align 4
$L1222:
	mov $16,$0
	beq $17,$L1221
	lda $1,32($31)
	subl $1,$17,$1
	sra $16,32,$0
	zapnot $1,15,$1
	zapnot $16,15,$16
	sll $0,$1,$1
	srl $16,$17,$16
	sra $0,$17,$0
	bis $1,$16,$1
	cpys $f31,$f31,$f31
	addl $31,$1,$1
	br $31,$L1223
	.cfi_endproc
$LFE135:
	.end __ashrdi3
	.align 2
	.align 4
	.globl __ashrti3
	.ent __ashrti3
$__ashrti3..ng:
__ashrti3:
	.frame $30,0,$26,0
$LFB136:
	.cfi_startproc
	.prologue 0
	and $19,64,$1
	cpys $f31,$f31,$f31
	mov $16,$0
	beq $1,$L1228
	sra $18,63,$1
	sra $18,$19,$17
$L1229:
	mov $1,$18
$L1230:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1228:
	beq $19,$L1230
	subq $31,$19,$2
	sll $18,$2,$2
	srl $17,$19,$17
	sra $18,$19,$1
	cpys $f31,$f31,$f31
	bis $2,$17,$17
	br $31,$L1229
	.cfi_endproc
$LFE136:
	.end __ashrti3
	.align 2
	.align 4
	.globl __bswapdi2
	.ent __bswapdi2
$__bswapdi2..ng:
__bswapdi2:
	.frame $30,0,$26,0
$LFB137:
	.cfi_startproc
	.prologue 0
	srl $16,32,$0
	sll $16,32,$16
	bis $0,$16,$16
	srl $16,16,$0
	sll $16,16,$16
	zapnot $0,51,$0
	zapnot $16,204,$16
	bis $0,$16,$16
	srl $16,8,$0
	sll $16,8,$16
	zapnot $0,85,$0
	zapnot $16,170,$16
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE137:
	.end __bswapdi2
	.align 2
	.align 4
	.globl __bswapsi2
	.ent __bswapsi2
$__bswapsi2..ng:
__bswapsi2:
	.frame $30,0,$26,0
$LFB138:
	.cfi_startproc
	.prologue 0
	inslh $16,7,$0
	inswl $16,3,$16
	bis $0,$16,$16
	srl $16,16,$0
	zapnot $16,250,$16
	zapnot $0,245,$0
	addl $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE138:
	.end __bswapsi2
	.align 2
	.align 4
	.globl __clzsi2
	.ent __clzsi2
$__clzsi2..ng:
__clzsi2:
	.frame $30,0,$26,0
$LFB139:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$1
	ldah $3,1($31)
	lda $3,-1($3)
	cmpule $1,$3,$3
	lda $2,16($31)
	sll $3,4,$3
	lda $4,8($31)
	subl $2,$3,$2
	zapnot $2,15,$2
	lda $0,2($31)
	srl $1,$2,$1
	zapnot $1,2,$2
	zapnot $1,15,$1
	cmpeq $2,0,$2
	s8addl $2,0,$2
	subl $4,$2,$4
	zapnot $4,15,$4
	addl $2,$3,$3
	srl $1,$4,$1
	lda $4,4($31)
	and $1,240,$2
	cmpeq $2,0,$2
	zapnot $1,15,$1
	s4addl $2,0,$2
	subl $4,$2,$4
	zapnot $4,15,$4
	addl $2,$3,$3
	srl $1,$4,$1
	and $1,12,$2
	cmpeq $2,0,$2
	zapnot $1,15,$1
	addl $2,$2,$2
	subl $0,$2,$4
	zapnot $4,15,$4
	addl $2,$3,$2
	srl $1,$4,$1
	subl $0,$1,$0
	and $1,2,$1
	cmovne $1,0,$0
	addl $0,$2,$0
	ret $31,($26),1
	.cfi_endproc
$LFE139:
	.end __clzsi2
	.align 2
	.align 4
	.globl __clzti2
	.ent __clzti2
__clzti2:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB140:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!70
	lda $29,0($29)		!gpdisp!70
$__clzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	cmovne $17,0,$16
	ldq $27,__clzdi2($29)		!literal!71
	stq $9,8($30)
	.cfi_offset 9, -8
	cmpeq $17,0,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	lda $1,-1($9)
	and $1,$17,$1
	bis $1,$16,$16
	jsr $26,($27),__clzdi2		!lituse_jsr!71
	ldah $29,0($26)		!gpdisp!72
	sll $9,6,$9
	ldq $26,0($30)
	addl $0,$9,$0
	ldq $9,8($30)
	lda $29,0($29)		!gpdisp!72
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE140:
	.end __clzti2
	.align 2
	.align 4
	.globl __cmpdi2
	.ent __cmpdi2
$__cmpdi2..ng:
__cmpdi2:
	.frame $30,0,$26,0
$LFB141:
	.cfi_startproc
	.prologue 0
	sra $16,32,$1
	sra $17,32,$2
	mov $31,$0
	cmplt $1,$2,$3
	bne $3,$L1239
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L1239
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1239
	cmpult $17,$16,$0
	lda $0,1($0)
$L1239:
	ret $31,($26),1
	.cfi_endproc
$LFE141:
	.end __cmpdi2
	.align 2
	.align 4
	.globl __aeabi_lcmp
	.ent __aeabi_lcmp
$__aeabi_lcmp..ng:
__aeabi_lcmp:
	.frame $30,0,$26,0
$LFB142:
	.cfi_startproc
	.prologue 0
	sra $16,32,$1
	sra $17,32,$2
	lda $0,-1($31)
	cmplt $1,$2,$3
	bne $3,$L1245
	cmple $1,$2,$1
	lda $0,1($31)
	beq $1,$L1245
	zapnot $16,15,$16
	zapnot $17,15,$17
	lda $2,-1($31)
	cmpult $16,$17,$1
	cmpult $17,$16,$0
	cmovne $1,$2,$0
$L1245:
	ret $31,($26),1
	.cfi_endproc
$LFE142:
	.end __aeabi_lcmp
	.align 2
	.align 4
	.globl __cmpti2
	.ent __cmpti2
$__cmpti2..ng:
__cmpti2:
	.frame $30,0,$26,0
$LFB143:
	.cfi_startproc
	.prologue 0
	cmplt $17,$19,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1250
	cmple $17,$19,$17
	cpys $f31,$f31,$f31
	lda $0,2($31)
	beq $17,$L1250
	cmpult $16,$18,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1250
	cmpult $18,$16,$0
	lda $0,1($0)
$L1250:
	ret $31,($26),1
	.cfi_endproc
$LFE143:
	.end __cmpti2
	.align 2
	.align 4
	.globl __ctzsi2
	.ent __ctzsi2
$__ctzsi2..ng:
__ctzsi2:
	.frame $30,0,$26,0
$LFB144:
	.cfi_startproc
	.prologue 0
	zapnot $16,3,$2
	zapnot $16,15,$1
	cmpeq $2,0,$2
	sll $2,4,$2
	srl $1,$2,$1
	and $1,0xff,$3
	cmpeq $3,0,$3
	zapnot $1,15,$1
	s8addl $3,$2,$2
	extql $1,$3,$1
	and $1,15,$3
	cmpeq $3,0,$3
	zapnot $1,15,$1
	s4addq $3,0,$4
	srl $1,$4,$1
	s4addl $3,$2,$3
	and $1,3,$0
	cmpeq $0,0,$0
	zapnot $1,15,$1
	addq $0,$0,$2
	srl $1,$2,$1
	lda $4,2($31)
	and $1,3,$1
	ornot $31,$1,$2
	srl $1,1,$1
	and $2,1,$2
	subl $4,$1,$4
	addl $0,$0,$0
	subl $31,$2,$1
	and $1,$4,$1
	addl $0,$3,$0
	addl $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE144:
	.end __ctzsi2
	.align 2
	.align 4
	.globl __ctzti2
	.ent __ctzti2
__ctzti2:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB145:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!73
	lda $29,0($29)		!gpdisp!73
$__ctzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	cmovne $16,0,$17
	ldq $27,__ctzdi2($29)		!literal!74
	stq $9,8($30)
	.cfi_offset 9, -8
	cmpeq $16,0,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	lda $1,-1($9)
	and $1,$16,$16
	bis $17,$16,$16
	jsr $26,($27),__ctzdi2		!lituse_jsr!74
	ldah $29,0($26)		!gpdisp!75
	sll $9,6,$9
	ldq $26,0($30)
	addl $0,$9,$0
	ldq $9,8($30)
	lda $29,0($29)		!gpdisp!75
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE145:
	.end __ctzti2
	.align 2
	.align 4
	.globl __ffsti2
	.ent __ffsti2
__ffsti2:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB146:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!76
	lda $29,0($29)		!gpdisp!76
$__ffsti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	bne $16,$L1258
	mov $31,$0
	bne $17,$L1262
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1258:
	.cfi_restore_state
	ldq $27,__ctzdi2($29)		!literal!77
	jsr $26,($27),__ctzdi2		!lituse_jsr!77
	ldah $29,0($26)		!gpdisp!78
	ldq $26,0($30)
	addl $0,1,$0
	lda $29,0($29)		!gpdisp!78
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1262:
	.cfi_restore_state
	mov $17,$16
	ldq $27,__ctzdi2($29)		!literal!79
	jsr $26,($27),__ctzdi2		!lituse_jsr!79
	ldah $29,0($26)		!gpdisp!80
	ldq $26,0($30)
	addl $0,65,$0
	lda $29,0($29)		!gpdisp!80
	lda $30,16($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE146:
	.end __ffsti2
	.align 2
	.align 4
	.globl __lshrdi3
	.ent __lshrdi3
$__lshrdi3..ng:
__lshrdi3:
	.frame $30,0,$26,0
$LFB147:
	.cfi_startproc
	.prologue 0
	and $17,32,$1
	beq $1,$L1264
	srl $16,32,$16
	lda $17,32($17)
	srl $16,$17,$16
	mov $31,$1
	addl $31,$16,$0
$L1265:
	sll $1,32,$1
	zapnot $0,15,$0
	bis $0,$1,$0
$L1263:
	ret $31,($26),1
	.align 4
$L1264:
	mov $16,$0
	beq $17,$L1263
	lda $2,32($31)
	extll $16,4,$0
	subl $2,$17,$2
	zapnot $2,15,$2
	zapnot $16,15,$16
	zapnot $0,15,$1
	srl $16,$17,$16
	sll $0,$2,$0
	srl $1,$17,$1
	bis $0,$16,$0
	addl $31,$1,$1
	cpys $f31,$f31,$f31
	addl $31,$0,$0
	br $31,$L1265
	.cfi_endproc
$LFE147:
	.end __lshrdi3
	.align 2
	.align 4
	.globl __lshrti3
	.ent __lshrti3
$__lshrti3..ng:
__lshrti3:
	.frame $30,0,$26,0
$LFB148:
	.cfi_startproc
	.prologue 0
	and $19,64,$1
	cpys $f31,$f31,$f31
	mov $16,$0
	beq $1,$L1270
	srl $18,$19,$17
	mov $31,$18
$L1272:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1270:
	beq $19,$L1272
	subq $31,$19,$1
	sll $18,$1,$1
	srl $17,$19,$17
	srl $18,$19,$18
	stq $18,8($0)
	bis $1,$17,$17
	stq $17,0($0)
	ret $31,($26),1
	.cfi_endproc
$LFE148:
	.end __lshrti3
	.align 2
	.align 4
	.globl __muldsi3
	.ent __muldsi3
$__muldsi3..ng:
__muldsi3:
	.frame $30,0,$26,0
$LFB149:
	.cfi_startproc
	.prologue 0
	zapnot $16,3,$3
	zapnot $17,3,$2
	extwl $16,2,$16
	mull $3,$2,$1
	extwl $17,2,$17
	mull $2,$16,$2
	zapnot $1,15,$4
	zapnot $1,3,$1
	srl $4,16,$4
	mull $3,$17,$3
	addl $2,$4,$2
	sll $2,16,$4
	zapnot $2,15,$2
	addl $1,$4,$1
	zapnot $1,15,$4
	zapnot $1,3,$0
	srl $4,16,$4
	srl $2,16,$2
	mull $16,$17,$1
	addl $3,$4,$3
	zapnot $3,15,$4
	sll $3,16,$3
	srl $4,16,$4
	addl $0,$3,$0
	zapnot $0,15,$0
	addl $1,$2,$1
	addl $1,$4,$1
	zapnot $1,15,$1
	sll $1,32,$1
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE149:
	.end __muldsi3
	.align 2
	.align 4
	.globl __muldi3_compiler_rt
	.ent __muldi3_compiler_rt
$__muldi3_compiler_rt..ng:
__muldi3_compiler_rt:
	.frame $30,0,$26,0
$LFB150:
	.cfi_startproc
	.prologue 0
	zapnot $16,3,$3
	zapnot $17,3,$2
	extwl $16,2,$1
	mull $3,$2,$0
	extwl $17,2,$7
	sra $17,32,$8
	sra $16,32,$5
	mull $2,$1,$2
	zapnot $0,15,$6
	zapnot $0,3,$0
	srl $6,16,$6
	mull $3,$7,$4
	addl $2,$6,$2
	sll $2,16,$3
	zapnot $2,15,$2
	addl $0,$3,$0
	srl $2,16,$3
	zapnot $0,15,$6
	zapnot $0,3,$0
	srl $6,16,$6
	mull $1,$7,$2
	addl $4,$6,$1
	zapnot $1,15,$4
	sll $1,16,$1
	srl $4,16,$4
	addl $0,$1,$0
	zapnot $0,15,$0
	mull $16,$8,$1
	addl $2,$3,$2
	addl $2,$4,$2
	zapnot $2,15,$2
	sll $2,32,$2
	bis $0,$2,$0
	sra $0,32,$2
	zapnot $0,15,$0
	mull $17,$5,$17
	addl $1,$2,$1
	addl $1,$17,$1
	zapnot $1,15,$1
	sll $1,32,$1
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE150:
	.end __muldi3_compiler_rt
	.align 2
	.align 4
	.globl __mulddi3
	.ent __mulddi3
$__mulddi3..ng:
__mulddi3:
	.frame $30,0,$26,0
$LFB151:
	.cfi_startproc
	.prologue 0
	zapnot $17,15,$2
	zapnot $18,15,$1
	srl $17,32,$17
	mulq $2,$1,$3
	srl $18,32,$18
	mov $16,$0
	mulq $1,$17,$1
	srl $3,32,$4
	zapnot $3,15,$3
	mulq $2,$18,$2
	addq $1,$4,$1
	zapnot $1,15,$4
	srl $1,32,$1
	mulq $17,$18,$17
	addq $2,$4,$2
	sll $2,32,$4
	srl $2,32,$2
	cpys $f31,$f31,$f31
	addq $3,$4,$3
	stq $3,0($16)
	addq $1,$17,$1
	cpys $f31,$f31,$f31
	addq $1,$2,$1
	stq $1,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE151:
	.end __mulddi3
	.align 2
	.align 4
	.globl __multi3
	.ent __multi3
$__multi3..ng:
__multi3:
	.frame $30,0,$26,0
$LFB152:
	.cfi_startproc
	.prologue 0
	zapnot $17,15,$2
	zapnot $19,15,$1
	srl $17,32,$4
	mulq $2,$1,$3
	srl $19,32,$5
	mov $16,$0
	mulq $1,$4,$1
	srl $3,32,$6
	zapnot $3,15,$3
	mulq $2,$5,$2
	addq $1,$6,$1
	zapnot $1,15,$6
	srl $1,32,$1
	mulq $4,$5,$4
	addq $2,$6,$2
	srl $2,32,$5
	sll $2,32,$2
	cpys $f31,$f31,$f31
	addq $3,$2,$3
	stq $3,0($16)
	mulq $17,$20,$17
	addq $1,$4,$1
	addq $1,$5,$1
	mulq $19,$18,$19
	addq $17,$1,$17
	cpys $f31,$f31,$f31
	addq $17,$19,$17
	stq $17,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE152:
	.end __multi3
	.align 2
	.align 4
	.globl __negdi2
	.ent __negdi2
$__negdi2..ng:
__negdi2:
	.frame $30,0,$26,0
$LFB153:
	.cfi_startproc
	.prologue 0
	subq $31,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE153:
	.end __negdi2
	.align 2
	.align 4
	.globl __negti2
	.ent __negti2
$__negti2..ng:
__negti2:
	.frame $30,0,$26,0
$LFB154:
	.cfi_startproc
	.prologue 0
	cmpult $31,$17,$1
	subq $31,$18,$18
	subq $31,$17,$17
	stq $17,0($16)
	subq $18,$1,$18
	stq $18,8($16)
	mov $16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE154:
	.end __negti2
	.align 2
	.align 4
	.globl __paritydi2
	.ent __paritydi2
$__paritydi2..ng:
__paritydi2:
	.frame $30,0,$26,0
$LFB155:
	.cfi_startproc
	.prologue 0
	sra $16,32,$1
	lda $0,27030($31)
	xor $1,$16,$16
	extwl $16,2,$1
	addl $31,$16,$16
	xor $1,$16,$1
	zapnot $1,15,$2
	srl $2,8,$2
	xor $2,$1,$2
	zapnot $2,15,$1
	srl $1,4,$1
	xor $1,$2,$1
	and $1,15,$1
	sra $0,$1,$0
	and $0,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE155:
	.end __paritydi2
	.align 2
	.align 4
	.globl __parityti2
	.ent __parityti2
$__parityti2..ng:
__parityti2:
	.frame $30,0,$26,0
$LFB156:
	.cfi_startproc
	.prologue 0
	xor $16,$17,$16
	sra $16,32,$1
	lda $0,27030($31)
	xor $1,$16,$1
	extwl $1,2,$2
	addl $31,$1,$1
	xor $2,$1,$1
	zapnot $1,15,$2
	srl $2,8,$2
	xor $2,$1,$2
	zapnot $2,15,$1
	srl $1,4,$1
	xor $1,$2,$1
	and $1,15,$1
	sra $0,$1,$0
	and $0,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE156:
	.end __parityti2
	.align 2
	.align 4
	.globl __paritysi2
	.ent __paritysi2
$__paritysi2..ng:
__paritysi2:
	.frame $30,0,$26,0
$LFB157:
	.cfi_startproc
	.prologue 0
	extwl $16,2,$1
	lda $0,27030($31)
	xor $1,$16,$1
	zapnot $1,15,$16
	srl $16,8,$16
	xor $16,$1,$16
	zapnot $16,15,$1
	srl $1,4,$1
	xor $1,$16,$1
	and $1,15,$1
	sra $0,$1,$0
	and $0,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE157:
	.end __paritysi2
	.align 2
	.align 4
	.globl __popcountdi2
	.ent __popcountdi2
__popcountdi2:
	.frame $30,0,$26,0
$LFB158:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!81
	lda $29,0($29)		!gpdisp!81
$__popcountdi2..ng:
	.prologue 1
	ldah $2,$LC17($29)		!gprelhigh
	srl $16,1,$1
	ldq $2,$LC17($2)		!gprellow
	and $1,$2,$1
	subq $16,$1,$16
	ldah $1,$LC18($29)		!gprelhigh
	srl $16,2,$2
	ldq $1,$LC18($1)		!gprellow
	and $16,$1,$16
	and $2,$1,$2
	addq $2,$16,$2
	srl $2,4,$1
	addq $1,$2,$1
	ldah $2,$LC19($29)		!gprelhigh
	ldq $2,$LC19($2)		!gprellow
	and $1,$2,$1
	srl $1,32,$2
	addl $2,$1,$2
	zapnot $2,15,$1
	srl $1,16,$1
	addl $1,$2,$1
	zapnot $1,15,$0
	srl $0,8,$0
	addl $0,$1,$0
	and $0,127,$0
	ret $31,($26),1
	.cfi_endproc
$LFE158:
	.end __popcountdi2
	.align 2
	.align 4
	.globl __popcountsi2
	.ent __popcountsi2
$__popcountsi2..ng:
__popcountsi2:
	.frame $30,0,$26,0
$LFB159:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$1
	ldah $2,21845($31)
	srl $1,1,$1
	lda $2,21845($2)
	and $1,$2,$1
	subl $16,$1,$16
	zapnot $16,15,$1
	ldah $2,13107($31)
	srl $1,2,$1
	lda $2,13107($2)
	and $1,$2,$1
	and $2,$16,$2
	addl $1,$2,$1
	zapnot $1,15,$2
	srl $2,4,$2
	addl $2,$1,$2
	ldah $1,3855($31)
	lda $1,3855($1)
	and $1,$2,$1
	srl $1,16,$2
	addq $2,$1,$0
	srl $0,8,$0
	addl $2,$1,$2
	addl $0,$2,$0
	and $0,63,$0
	ret $31,($26),1
	.cfi_endproc
$LFE159:
	.end __popcountsi2
	.align 2
	.align 4
	.globl __popcountti2
	.ent __popcountti2
__popcountti2:
	.frame $30,0,$26,0
$LFB160:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!82
	lda $29,0($29)		!gpdisp!82
$__popcountti2..ng:
	.prologue 1
	ldah $1,$LC17($29)		!gprelhigh
	sll $17,63,$4
	srl $17,1,$2
	ldq $3,$LC17($1)		!gprellow
	srl $16,1,$1
	bis $4,$1,$1
	and $1,$3,$1
	subq $16,$1,$1
	cmpult $16,$1,$16
	and $2,$3,$2
	subq $17,$2,$2
	ldah $3,$LC18($29)		!gprelhigh
	subq $2,$16,$2
	cpys $f31,$f31,$f31
	sll $2,62,$6
	ldq $5,$LC18($3)		!gprellow
	srl $1,2,$3
	srl $2,2,$4
	bis $6,$3,$3
	and $3,$5,$3
	and $1,$5,$1
	addq $3,$1,$1
	and $4,$5,$4
	and $2,$5,$2
	cmpult $1,$3,$3
	addq $4,$2,$2
	addq $3,$2,$3
	sll $3,60,$4
	srl $1,4,$2
	bis $4,$2,$2
	ldah $4,$LC19($29)		!gprelhigh
	addq $2,$1,$1
	cmpult $1,$2,$2
	ldq $5,$LC19($4)		!gprellow
	srl $3,4,$4
	addq $4,$3,$3
	addq $2,$3,$2
	and $1,$5,$1
	and $2,$5,$2
	addq $2,$1,$2
	srl $2,32,$1
	addl $1,$2,$2
	zapnot $2,15,$1
	srl $1,16,$1
	addl $1,$2,$1
	zapnot $1,15,$0
	srl $0,8,$0
	addl $0,$1,$0
	and $0,0xff,$0
	ret $31,($26),1
	.cfi_endproc
$LFE160:
	.end __popcountti2
	.align 2
	.align 4
	.globl __powidf2
	.ent __powidf2
__powidf2:
	.frame $30,0,$26,0
$LFB161:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!83
	lda $29,0($29)		!gpdisp!83
$__powidf2..ng:
	.prologue 1
	ldah $3,$LC12($29)		!gprelhigh
	mov $17,$1
	lds $f0,$LC12($3)		!gprellow
	blbc $17,$L1289
	.align 4
$L1291:
	mult $f0,$f16,$f0
$L1289:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	bis $31,$31,$31
	beq $1,$L1290
	mult $f16,$f16,$f16
	srl $1,63,$2
	bis $31,$31,$31
	blbs $1,$L1291
$L1295:
	addq $2,$1,$1
	mult $f16,$f16,$f16
	sra $1,1,$1
	cpys $f31,$f31,$f31
	srl $1,63,$2
	blbs $1,$L1291
	br $31,$L1295
	.align 4
$L1290:
	cmplt $17,0,$17
	bne $17,$L1296
	ret $31,($26),1
	.align 4
$L1296:
	lds $f10,$LC12($3)		!gprellow
	divt $f10,$f0,$f0
	ret $31,($26),1
	.cfi_endproc
$LFE161:
	.end __powidf2
	.align 2
	.align 4
	.globl __powisf2
	.ent __powisf2
__powisf2:
	.frame $30,0,$26,0
$LFB162:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!84
	lda $29,0($29)		!gpdisp!84
$__powisf2..ng:
	.prologue 1
	ldah $3,$LC12($29)		!gprelhigh
	mov $17,$1
	lds $f0,$LC12($3)		!gprellow
	blbc $17,$L1298
	.align 4
$L1300:
	muls $f0,$f16,$f0
$L1298:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	bis $31,$31,$31
	beq $1,$L1299
	muls $f16,$f16,$f16
	srl $1,63,$2
	bis $31,$31,$31
	blbs $1,$L1300
$L1304:
	addq $2,$1,$1
	muls $f16,$f16,$f16
	sra $1,1,$1
	cpys $f31,$f31,$f31
	srl $1,63,$2
	blbs $1,$L1300
	br $31,$L1304
	.align 4
$L1299:
	cmplt $17,0,$17
	bne $17,$L1305
	ret $31,($26),1
	.align 4
$L1305:
	lds $f10,$LC12($3)		!gprellow
	divs $f10,$f0,$f0
	ret $31,($26),1
	.cfi_endproc
$LFE162:
	.end __powisf2
	.align 2
	.align 4
	.globl __ucmpdi2
	.ent __ucmpdi2
$__ucmpdi2..ng:
__ucmpdi2:
	.frame $30,0,$26,0
$LFB163:
	.cfi_startproc
	.prologue 0
	srl $16,32,$1
	srl $17,32,$2
	mov $31,$0
	cmpult $1,$2,$3
	bne $3,$L1307
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L1307
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1307
	cmpult $17,$16,$0
	lda $0,1($0)
$L1307:
	ret $31,($26),1
	.cfi_endproc
$LFE163:
	.end __ucmpdi2
	.align 2
	.align 4
	.globl __aeabi_ulcmp
	.ent __aeabi_ulcmp
$__aeabi_ulcmp..ng:
__aeabi_ulcmp:
	.frame $30,0,$26,0
$LFB164:
	.cfi_startproc
	.prologue 0
	srl $16,32,$1
	srl $17,32,$2
	lda $0,-1($31)
	cmpult $1,$2,$3
	bne $3,$L1313
	cmpule $1,$2,$1
	lda $0,1($31)
	beq $1,$L1313
	zapnot $16,15,$16
	zapnot $17,15,$17
	lda $2,-1($31)
	cmpult $16,$17,$1
	cmpult $17,$16,$0
	cmovne $1,$2,$0
$L1313:
	ret $31,($26),1
	.cfi_endproc
$LFE164:
	.end __aeabi_ulcmp
	.align 2
	.align 4
	.globl __ucmpti2
	.ent __ucmpti2
$__ucmpti2..ng:
__ucmpti2:
	.frame $30,0,$26,0
$LFB165:
	.cfi_startproc
	.prologue 0
	cmpult $17,$19,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1318
	cmpule $17,$19,$17
	cpys $f31,$f31,$f31
	lda $0,2($31)
	beq $17,$L1318
	cmpult $16,$18,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1318
	cmpult $18,$16,$0
	lda $0,1($0)
$L1318:
	ret $31,($26),1
	.cfi_endproc
$LFE165:
	.end __ucmpti2
	.section	.sbss,"aw"
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.type	seed, @object
	.size	seed, 8
	.align 3
seed:
	.zero	8
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
$LC0:
	.quad	6364136223846793005
$LC1 = $LC5+12
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
$LC2:
	.long	1056964608
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
$LC5:
	.long	0
	.long	0
	.long	0
	.long	1073741824
	.align 4
$LC6:
	.long	0
	.long	0
	.long	0
	.long	1073610752
	.section	.rodata.cst4
	.align 2
$LC8:
	.long	-1082130432
	.align 2
$LC10:
	.long	-1090519040
	.align 2
$LC12:
	.long	1065353216
	.align 2
$LC14:
	.long	1048576000
	.align 2
$LC15:
	.long	1191182336
	.section	.rodata.cst8
	.align 3
$LC17:
	.quad	6148914691236517205
	.align 3
$LC18:
	.quad	3689348814741910323
	.align 3
$LC19:
	.quad	1085102592571150095
	.globl __ctzdi2
	.globl __clzdi2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
