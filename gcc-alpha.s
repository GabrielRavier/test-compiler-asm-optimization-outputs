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
	bne $18,$L65
	br $31,$L68
	.align 4
$L67:
	lda $16,1($16)
	beq $18,$L68
$L65:
	lda $18,-1($18)
	ldq_u $1,0($16)
	extbl $1,$16,$1
	cmpeq $1,$17,$1
	beq $1,$L67
	mov $16,$0
	ret $31,($26),1
	.align 4
$L68:
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
	beq $18,$L77
	.align 4
$L87:
	ldq_u $2,0($16)
	bis $31,$31,$31
	lda $18,-1($18)
	ldq_u $3,0($17)
	extbl $2,$16,$1
	extbl $3,$17,$4
	cmpeq $1,$4,$1
	beq $1,$L86
	lda $16,1($16)
	cpys $f31,$f31,$f31
	lda $17,1($17)
	bne $18,$L87
$L77:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L86:
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
	beq $18,$L89
	ldq $27,memcpy($29)		!literal!2
	jsr $26,($27),memcpy		!lituse_jsr!2
	ldah $29,0($26)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
$L89:
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
	br $31,$L94
	.align 4
$L96:
	lda $18,-1($18)
	ldq_u $1,0($0)
	extbl $1,$0,$1
	cmpeq $1,$17,$1
	bne $1,$L93
$L94:
	cmpeq $18,$16,$1
	mov $18,$0
	beq $1,$L96
	mov $31,$0
$L93:
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
	beq $18,$L100
	and $17,0xff,$17
	ldq $27,memset($29)		!literal!5
	jsr $26,($27),memset		!lituse_jsr!5
	ldah $29,0($26)		!gpdisp!6
	lda $29,0($29)		!gpdisp!6
	bis $31,$31,$31
$L100:
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
	beq $1,$L102
	.align 4
$L103:
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
	bne $1,$L103
$L102:
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
	bne $1,$L109
	ret $31,($26),1
	.align 4
$L111:
	mov $2,$0
	lda $2,1($2)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L108
$L109:
	and $1,0xff,$1
	cmpeq $1,$17,$1
	beq $1,$L111
$L108:
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
	br $31,$L118
	.align 4
$L121:
	mov $2,$0
	beq $1,$L120
$L118:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,$17,$3
	beq $3,$L121
	ret $31,($26),1
	.align 4
$L120:
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
	br $31,$L132
	.align 4
$L123:
	mov $3,$16
	beq $1,$L133
	mov $4,$17
	ldq_u $1,0($16)
	lda $3,1($3)
	lda $4,1($4)
$L132:
	extqh $1,$3,$1
	ldq_u $2,0($17)
	sra $1,56,$1
	extqh $2,$4,$2
	sra $2,56,$2
	cmpeq $1,$2,$5
	bne $5,$L123
	and $1,0xff,$0
	and $2,0xff,$2
	subl $0,$2,$0
	ret $31,($26),1
	.align 4
$L133:
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
	beq $1,$L134
	.align 4
$L136:
	mov $2,$0
	lda $2,1($2)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L136
	subq $0,$16,$0
$L134:
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
	beq $18,$L141
	lda $18,-1($18)
	ldq_u $0,0($16)
	mov $17,$3
	addq $17,$18,$5
	extbl $0,$16,$0
	bne $0,$L144
	br $31,$L152
	.align 4
$L145:
	ldq_u $0,0($16)
	extbl $0,$16,$0
	beq $0,$L153
	mov $7,$3
$L144:
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
	bne $1,$L145
	addl $31,$0,$0
	subl $0,$2,$0
$L141:
	ret $31,($26),1
	.align 4
$L153:
	ldq_u $2,1($3)
	extbl $2,$7,$2
	subl $0,$2,$0
	ret $31,($26),1
$L152:
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
	bne $1,$L154
	bic $18,1,$18
	addq $16,$18,$5
	.align 4
$L156:
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
	beq $1,$L156
$L154:
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
	bne $1,$L169
	ldah $1,-1($16)
	addl $1,7,$1
	lda $16,-8232($16)
	zapnot $16,15,$16
	zapnot $1,15,$1
	cmpule $16,1,$16
	cmpule $1,2,$1
	cmoveq $16,$1,$0
$L169:
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
	bne $1,$L179
	lda $1,-8234($16)
	zapnot $1,15,$1
	ldah $3,1($31)
	lda $5,-18475($3)
	lda $4,8231($31)
	cmpule $1,$5,$1
	cmpule $2,$4,$2
	lda $0,1($31)
	bis $1,$2,$1
	bne $1,$L175
	ldah $2,-1($31)
	lda $1,8192($2)
	addl $16,$1,$1
	zapnot $1,15,$1
	lda $4,8184($31)
	cmpule $1,$4,$1
	bne $1,$L175
	lda $3,-2($3)
	and $16,$3,$0
	addl $2,4,$2
	addl $16,$2,$16
	zapnot $0,15,$0
	ldah $1,16($31)
	zapnot $16,15,$16
	lda $1,3($1)
	cmpeq $0,$3,$0
	cmpule $16,$1,$16
	xor $0,1,$0
	mov $31,$1
	cmoveq $16,$1,$0
$L175:
	ret $31,($26),1
	.align 4
$L179:
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
	cmptun $f16,$f16,$f10
	fbne $f10,$L187
	cmptun $f17,$f17,$f10
	fbne $f10,$L188
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L191
	subt $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L191:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.align 4
$L187:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L188:
	cpys $f17,$f17,$f0
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
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L195
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	fbne $f12,$L196
	cmptlt $f11,$f10,$f12
	fbeq $f12,$L199
	subs $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L199:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.align 4
$L195:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L196:
	cpys $f17,$f17,$f0
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
	cmptun $f16,$f16,$f10
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	fbne $f10,$L203
	cmptun $f17,$f17,$f10
	fbne $f10,$L204
	stt $f16,0($30)
	ldq $1,0($30)
	stt $f17,0($30)
	ldq $3,0($30)
	srl $1,63,$2
	srl $3,63,$1
	cmpeq $2,$1,$1
	beq $1,$L206
	cmptlt $f16,$f17,$f10
	cpys $f16,$f16,$f0
	fcmovne $f10,$f17,$f0
$L200:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L206:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	bne $2,$L200
$L204:
	cpys $f16,$f16,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L203:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L200
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
	cpys $f16,$f16,$f10
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	sts $f16,16($30)
	sts $f17,0($30)
	cmptun $f10,$f10,$f11
	fbne $f11,$L210
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	cpys $f31,$f31,$f31
	fbne $f12,$L211
	ldah $1,-32768($31)
	ldl $3,16($30)
	and $1,$3,$2
	ldl $3,0($30)
	addl $31,$2,$2
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bis $31,$31,$31
	beq $1,$L213
	cmptlt $f10,$f11,$f12
	lds $f10,0($30)
	cpys $f16,$f16,$f0
	fcmovne $f12,$f10,$f0
$L207:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L213:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	bne $2,$L207
$L211:
	cpys $f16,$f16,$f0
	bis $31,$31,$31
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L210:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L207
	.cfi_endproc
$LFE34:
	.end fmaxf
	.align 2
	.align 4
	.globl fmaxl
	.ent fmaxl
fmaxl:
	.frame $30,128,$26,0
	.mask 0x400fe00,-128
$LFB35:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!7
	lda $29,0($29)		!gpdisp!7
$fmaxl..ng:
	lda $30,-128($30)
	.cfi_def_cfa_offset 128
	ldq $27,_OtsEqlX($29)		!literal!12
	stq $11,24($30)
	stq $14,48($30)
	.cfi_offset 11, -104
	.cfi_offset 14, -80
	ldq $11,8($17)
	ldq $14,0($17)
	stq $9,8($30)
	bis $31,$31,$31
	stq $10,16($30)
	mov $11,$17
	.cfi_offset 9, -120
	.cfi_offset 10, -112
	ldq $9,0($18)
	bis $31,$31,$31
	stq $15,56($30)
	mov $16,$10
	mov $11,$19
	.cfi_offset 15, -72
	ldq $15,8($18)
	mov $14,$16
	stq $26,0($30)
	mov $14,$18
	stq $12,32($30)
	stq $13,40($30)
	.cfi_offset 26, -128
	.cfi_offset 12, -96
	.cfi_offset 13, -88
	.prologue 1
	stq $6,112($30)
	stq $7,120($30)
	stq $22,96($30)
	stq $23,104($30)
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!12
	ldah $29,0($26)		!gpdisp!13
	lda $29,0($29)		!gpdisp!13
	blt $0,$L220
	mov $9,$16
	ldq $27,_OtsEqlX($29)		!literal!10
	mov $15,$17
	mov $9,$18
	mov $15,$19
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!10
	ldah $29,0($26)		!gpdisp!11
	lda $29,0($29)		!gpdisp!11
	blt $0,$L215
	srl $11,63,$4
	srl $15,63,$3
	cmpeq $4,$3,$3
	bne $3,$L216
	cmovne $4,$9,$14
	cmovne $4,$15,$11
$L215:
	mov $10,$0
	stq $14,0($10)
	stq $11,8($10)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,128($30)
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
$L216:
	.cfi_restore_state
	stq $14,64($30)
	stq $11,72($30)
	stq $9,80($30)
	stq $15,88($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsLssX($29)		!literal!8
	jsr $26,($27),_OtsLssX		!lituse_jsr!8
	ldah $29,0($26)		!gpdisp!9
	mov $31,$3
	cmplt $3,$0,$3
	lda $29,0($29)		!gpdisp!9
	cmovne $3,$9,$14
	cpys $f31,$f31,$f31
	cmovne $3,$15,$11
	br $31,$L215
	.align 4
$L220:
	mov $9,$14
	cpys $f31,$f31,$f31
	mov $15,$11
	br $31,$L215
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
	cmptun $f16,$f16,$f10
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	fbne $f10,$L226
	cmptun $f17,$f17,$f10
	fbne $f10,$L227
	stt $f16,0($30)
	ldq $1,0($30)
	stt $f17,0($30)
	ldq $3,0($30)
	srl $1,63,$2
	srl $3,63,$1
	cmpeq $2,$1,$1
	beq $1,$L229
	cmptlt $f16,$f17,$f10
	cpys $f17,$f17,$f0
	fcmovne $f10,$f16,$f0
$L223:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L229:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	bne $2,$L223
$L226:
	cpys $f17,$f17,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L227:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	br $31,$L223
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
	cpys $f16,$f16,$f10
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	sts $f16,0($30)
	sts $f17,16($30)
	cmptun $f10,$f10,$f11
	fbne $f11,$L233
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	cpys $f31,$f31,$f31
	fbne $f12,$L234
	ldah $1,-32768($31)
	ldl $3,0($30)
	and $1,$3,$2
	ldl $3,16($30)
	addl $31,$2,$2
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bis $31,$31,$31
	beq $1,$L236
	cmptlt $f10,$f11,$f12
	lds $f10,0($30)
	cpys $f17,$f17,$f0
	fcmovne $f12,$f10,$f0
$L230:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L236:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	bne $2,$L230
$L233:
	cpys $f17,$f17,$f0
	bis $31,$31,$31
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L234:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	br $31,$L230
	.cfi_endproc
$LFE37:
	.end fminf
	.align 2
	.align 4
	.globl fminl
	.ent fminl
fminl:
	.frame $30,128,$26,0
	.mask 0x400fe00,-128
$LFB38:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!14
	lda $29,0($29)		!gpdisp!14
$fminl..ng:
	lda $30,-128($30)
	.cfi_def_cfa_offset 128
	cpys $f31,$f31,$f31
	mov $16,$25
	ldq $27,_OtsEqlX($29)		!literal!19
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 14, -80
	.cfi_offset 15, -72
	ldq $14,8($17)
	ldq $15,0($17)
	stq $9,8($30)
	.cfi_offset 9, -120
	mov $25,$9
	stq $12,32($30)
	mov $14,$17
	.cfi_offset 12, -96
	ldq $12,8($18)
	bis $31,$31,$31
	stq $13,40($30)
	mov $15,$16
	mov $14,$19
	.cfi_offset 13, -88
	ldq $13,0($18)
	stq $26,0($30)
	mov $15,$18
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 26, -128
	.cfi_offset 10, -112
	.cfi_offset 11, -104
	.prologue 1
	stq $6,112($30)
	stq $7,120($30)
	stq $22,96($30)
	stq $23,104($30)
	jsr $26,($27),_OtsEqlX		!lituse_jsr!19
	ldah $29,0($26)		!gpdisp!20
	lda $29,0($29)		!gpdisp!20
	blt $0,$L238
	mov $13,$16
	ldq $27,_OtsEqlX($29)		!literal!17
	mov $12,$17
	mov $13,$18
	mov $12,$19
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!17
	ldah $29,0($26)		!gpdisp!18
	lda $29,0($29)		!gpdisp!18
	blt $0,$L243
	srl $14,63,$5
	srl $12,63,$4
	cmpeq $5,$4,$4
	bne $4,$L239
	cmovne $5,$15,$13
	cmovne $5,$14,$12
$L238:
	mov $9,$0
	stq $13,0($9)
	stq $12,8($9)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,128($30)
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
$L239:
	.cfi_restore_state
	stq $13,80($30)
	stq $12,88($30)
	stq $15,64($30)
	stq $14,72($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsLssX($29)		!literal!15
	jsr $26,($27),_OtsLssX		!lituse_jsr!15
	ldah $29,0($26)		!gpdisp!16
	mov $31,$4
	cmplt $4,$0,$4
	lda $29,0($29)		!gpdisp!16
	cmovne $4,$15,$13
	cpys $f31,$f31,$f31
	cmovne $4,$14,$12
	br $31,$L238
	.align 4
$L243:
	mov $15,$13
	cpys $f31,$f31,$f31
	mov $14,$12
	br $31,$L238
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
	ldah $29,0($27)		!gpdisp!21
	lda $29,0($29)		!gpdisp!21
$l64a..ng:
	.prologue 1
	ldah $0,s.0($29)		!gprelhigh
	lda $0,s.0($0)		!gprellow
	addl $31,$16,$16
	cpys $f31,$f31,$f31
	mov $0,$2
	beq $16,$L247
	ldah $5,digits($29)		!gprelhigh
	lda $5,digits($5)		!gprellow
	.align 4
$L248:
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
	bne $16,$L248
$L247:
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
	ldah $29,0($27)		!gpdisp!22
	lda $29,0($29)		!gpdisp!22
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
	ldah $29,0($27)		!gpdisp!23
	lda $29,0($29)		!gpdisp!23
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
	beq $17,$L259
	ldq $1,0($17)
	stq $17,8($16)
	stq $1,0($16)
	stq $16,0($17)
	ldq $1,0($16)
	beq $1,$L253
	stq $16,8($1)
$L253:
	ret $31,($26),1
	.align 4
$L259:
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
	beq $1,$L261
	ldq $2,8($16)
	stq $2,8($1)
$L261:
	ldq $2,8($16)
	beq $2,$L260
	stq $1,0($2)
$L260:
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
	ldah $29,0($27)		!gpdisp!24
	lda $29,0($29)		!gpdisp!24
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
	beq $10,$L270
	mov $17,$14
	mov $31,$15
	br $31,$L272
	.align 4
$L284:
	cmpeq $10,$15,$2
	cpys $f31,$f31,$f31
	addq $14,$9,$14
	bne $2,$L270
$L272:
	mov $14,$17
	mov $11,$16
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!27
	lda $29,0($29)		!gpdisp!27
	mov $14,$12
	lda $15,1($15)
	bis $31,$31,$31
	bne $0,$L284
$L269:
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
$L270:
	.cfi_restore_state
	mulq $9,$10,$12
	ldq $1,64($30)
	lda $10,1($10)
	stq $10,0($1)
	ldq $1,72($30)
	bis $31,$31,$31
	addq $1,$12,$12
	beq $9,$L269
	mov $9,$18
	ldq $27,memmove($29)		!literal!25
	mov $11,$17
	mov $12,$16
	jsr $26,($27),memmove		!lituse_jsr!25
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
	br $31,$L269
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
	ldah $29,0($27)		!gpdisp!28
	lda $29,0($29)		!gpdisp!28
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
	beq $12,$L286
	mov $17,$9
	mov $31,$14
	br $31,$L288
	.align 4
$L296:
	cmpeq $12,$14,$1
	cpys $f31,$f31,$f31
	addq $9,$13,$9
	bne $1,$L286
$L288:
	mov $9,$17
	mov $10,$16
	mov $11,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!29
	lda $29,0($29)		!gpdisp!29
	mov $9,$15
	lda $14,1($14)
	bis $31,$31,$31
	bne $0,$L296
$L285:
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
$L286:
	.cfi_restore_state
	mov $31,$15
	br $31,$L285
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
	br $31,$L321
	.align 4
$L323:
	mov $3,$16
	lda $3,1($3)
$L321:
	ldq_u $1,0($16)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,9,$2
	zapnot $2,15,$2
	cmpeq $1,32,$4
	cmpule $2,4,$2
	bis $2,$4,$2
	bne $2,$L323
	cmpeq $1,43,$2
	bne $2,$L301
	cmpeq $1,45,$2
	bis $31,$31,$31
	beq $2,$L324
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L306
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
	s4addl $0,$0,$0
	sra $1,56,$4
	extqh $3,$2,$3
	addl $0,$0,$5
	sra $3,56,$1
	subl $5,$4,$0
	subl $1,48,$1
	zapnot $1,15,$3
	cmpule $3,9,$3
	bne $3,$L307
	subl $4,$5,$4
	cmoveq $6,$4,$0
$L306:
	ret $31,($26),1
	.align 4
$L324:
	subl $1,48,$1
	zapnot $1,15,$2
	mov $31,$6
	cmpule $2,9,$2
	bne $2,$L304
$L322:
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
	br $31,$L322
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
	br $31,$L348
	.align 4
$L350:
	mov $3,$16
	lda $3,1($3)
$L348:
	ldq_u $1,0($16)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,9,$2
	zapnot $2,15,$2
	cmpeq $1,32,$4
	cmpule $2,4,$2
	bis $2,$4,$2
	bne $2,$L350
	cmpeq $1,43,$2
	bne $2,$L328
	cmpeq $1,45,$2
	bis $31,$31,$31
	beq $2,$L351
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L325
	lda $6,1($31)
$L331:
	mov $31,$0
	lda $2,1($16)
	.align 4
$L334:
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
	bne $3,$L334
	subq $4,$5,$4
	cmoveq $6,$4,$0
$L325:
	ret $31,($26),1
	.align 4
$L351:
	subl $1,48,$1
	zapnot $1,15,$2
	mov $31,$6
	cmpule $2,9,$2
	bne $2,$L331
$L349:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L328:
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$6
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	bne $2,$L331
	br $31,$L349
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
	br $31,$L372
	.align 4
$L374:
	mov $3,$16
	lda $3,1($3)
$L372:
	ldq_u $1,0($16)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,9,$2
	zapnot $2,15,$2
	cmpeq $1,32,$4
	cmpule $2,4,$2
	bis $2,$4,$2
	bne $2,$L374
	cmpeq $1,43,$2
	bne $2,$L355
	cmpeq $1,45,$2
	bis $31,$31,$31
	beq $2,$L356
	lda $2,2($16)
	ldq_u $1,1($16)
	lda $6,1($31)
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L373
$L357:
	mov $31,$0
	lda $2,1($16)
	.align 4
$L360:
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
	bne $3,$L360
	subq $4,$5,$4
	cmoveq $6,$4,$0
$L352:
	ret $31,($26),1
	.align 4
$L356:
	subl $1,48,$1
	zapnot $1,15,$2
	mov $31,$6
	cmpule $2,9,$2
	bne $2,$L357
$L373:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L355:
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $3,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L352
	mov $31,$6
	br $31,$L357
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
	ldah $29,0($27)		!gpdisp!30
	lda $29,0($29)		!gpdisp!30
$bsearch..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -56
	mov $18,$9
	stq $11,24($30)
	.cfi_offset 11, -40
	mov $17,$11
	stq $12,32($30)
	.cfi_offset 12, -32
	mov $19,$12
	stq $13,40($30)
	.cfi_offset 13, -24
	mov $16,$13
	stq $14,48($30)
	.cfi_offset 14, -16
	mov $20,$14
	stq $26,0($30)
	stq $10,16($30)
	stq $15,56($30)
	.cfi_offset 26, -64
	.cfi_offset 10, -48
	.cfi_offset 15, -8
	.prologue 1
	.align 4
$L388:
	beq $9,$L376
$L389:
	srl $9,1,$15
	mov $13,$16
	mulq $15,$12,$10
	mov $14,$27
	lda $9,-1($9)
	addq $11,$10,$10
	mov $10,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!31
	lda $29,0($29)		!gpdisp!31
	blt $0,$L380
	addq $10,$12,$11
	beq $0,$L375
	subq $9,$15,$9
	bne $9,$L389
$L376:
	mov $31,$10
	bis $31,$31,$31
$L375:
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
$L380:
	.cfi_restore_state
	mov $15,$9
	br $31,$L388
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
	ldah $29,0($27)		!gpdisp!32
	lda $29,0($29)		!gpdisp!32
$bsearch_r..ng:
	lda $30,-80($30)
	.cfi_def_cfa_offset 80
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -72
	addl $31,$18,$9
	stq $10,16($30)
	.cfi_offset 10, -64
	mov $17,$10
	stq $11,24($30)
	.cfi_offset 11, -56
	mov $19,$11
	stq $13,40($30)
	.cfi_offset 13, -40
	mov $20,$13
	stq $14,48($30)
	.cfi_offset 14, -32
	mov $21,$14
	stq $26,0($30)
	stq $12,32($30)
	stq $15,56($30)
	.cfi_offset 26, -80
	.cfi_offset 12, -48
	.cfi_offset 15, -24
	.prologue 1
	stq $16,64($30)
	beq $9,$L395
	.align 4
$L403:
	sra $9,1,$12
	ldq $16,64($30)
	mov $14,$18
	mulq $12,$11,$15
	mov $13,$27
	subl $9,1,$9
	addq $10,$15,$15
	mov $15,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!33
	lda $29,0($29)		!gpdisp!33
	beq $0,$L390
	sra $9,1,$9
	ble $0,$L393
	addq $15,$11,$10
	bne $9,$L403
$L395:
	mov $31,$15
	bis $31,$31,$31
$L390:
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
$L393:
	.cfi_restore_state
	beq $12,$L395
	mov $12,$9
	br $31,$L403
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
	ldah $29,0($27)		!gpdisp!36
	lda $29,0($29)		!gpdisp!36
$div..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divl($29)		!literal!34
	mov $16,$0
	jsr $23,($27),__divl		!lituse_jsrdirect!34
	mov $27,$1
	ldq $27,__reml($29)		!literal!35
	stl $1,0($16)
	jsr $23,($27),__reml		!lituse_jsrdirect!35
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
	ldah $29,0($27)		!gpdisp!39
	lda $29,0($29)		!gpdisp!39
$imaxdiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!37
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!37
	mov $27,$1
	ldq $27,__remq($29)		!literal!38
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!38
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
	ldah $29,0($27)		!gpdisp!42
	lda $29,0($29)		!gpdisp!42
$ldiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!40
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!40
	mov $27,$1
	ldq $27,__remq($29)		!literal!41
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!41
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
	ldah $29,0($27)		!gpdisp!45
	lda $29,0($29)		!gpdisp!45
$lldiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!43
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!43
	mov $27,$1
	ldq $27,__remq($29)		!literal!44
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!44
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
	br $31,$L421
	.align 4
$L423:
	cmpeq $17,$1,$1
	bne $1,$L422
	lda $16,4($16)
$L421:
	ldl $1,0($16)
	bne $1,$L423
	mov $31,$0
	ret $31,($26),1
	.align 4
$L422:
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
	bne $2,$L425
	br $31,$L426
	.align 4
$L427:
	ldl $1,0($16)
	bis $31,$31,$31
	lda $17,4($17)
	ldl $0,0($17)
	cmpeq $1,$0,$2
	beq $2,$L426
$L425:
	lda $16,4($16)
	bne $1,$L427
$L426:
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
$L433:
	lda $1,4($1)
	ldl $2,0($17)
	lda $17,4($17)
	stl $2,-4($1)
	bne $2,$L433
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
	beq $1,$L435
	mov $16,$0
	.align 4
$L437:
	lda $0,4($0)
	ldl $1,0($0)
	bne $1,$L437
	subq $0,$16,$0
	sra $0,2,$0
$L435:
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
$L444:
	beq $18,$L447
	ldl $2,0($16)
	lda $18,-1($18)
	ldl $3,0($17)
	lda $16,4($16)
	cmpult $31,$2,$4
	cmpeq $3,$2,$1
	lda $17,4($17)
	and $1,$4,$1
	bne $1,$L444
	cmplt $2,$3,$1
	cmplt $3,$2,$0
	lda $2,-1($31)
	cmovne $1,$2,$0
	ret $31,($26),1
	.align 4
$L447:
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
	beq $18,$L459
	.align 4
$L466:
	lda $18,-1($18)
	ldl $1,0($16)
	cmpeq $1,$17,$1
	bne $1,$L465
	lda $16,4($16)
	bne $18,$L466
$L459:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L465:
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
$L470:
	beq $18,$L473
	ldl $2,0($16)
	lda $18,-1($18)
	ldl $1,0($17)
	lda $16,4($16)
	lda $17,4($17)
	cmpeq $2,$1,$3
	bne $3,$L470
	cmplt $2,$1,$3
	cmplt $1,$2,$0
	lda $1,-1($31)
	cmovne $3,$1,$0
	ret $31,($26),1
	.align 4
$L473:
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
	ldah $29,0($27)		!gpdisp!46
	lda $29,0($29)		!gpdisp!46
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
	beq $18,$L482
	s4addq $18,0,$18
	ldq $27,memcpy($29)		!literal!47
	jsr $26,($27),memcpy		!lituse_jsr!47
	ldah $29,0($26)		!gpdisp!48
	lda $29,0($29)		!gpdisp!48
	bis $31,$31,$31
$L482:
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
	bne $1,$L504
	s4addq $18,0,$1
	subq $16,$17,$2
	cmpult $2,$1,$2
	cpys $f31,$f31,$f31
	lda $1,-1($18)
	bne $2,$L488
	beq $18,$L513
	cmpule $1,23,$2
	bne $2,$L499
	lda $7,4($17)
	cmpeq $7,$16,$3
	cpys $f31,$f31,$f31
	mov $7,$2
	bne $3,$L500
	and $16,4,$3
	cmpult $31,$3,$3
	bis $31,$31,$31
	beq $3,$L501
	lda $8,4($16)
	ldl $1,0($17)
	stl $1,0($16)
$L493:
	subq $18,$3,$18
	s4addq $3,$17,$17
	srl $18,1,$6
	s4addq $3,$0,$3
	mov $31,$4
	.align 4
$L494:
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
	beq $5,$L494
	blbc $18,$L504
	bic $18,1,$18
	s4addq $18,$7,$7
	s4addq $18,$8,$18
	ldl $1,0($7)
	stl $1,0($18)
	ret $31,($26),1
	.align 4
$L499:
	mov $16,$3
	lda $2,4($17)
	.align 4
$L512:
	lda $3,4($3)
	ldl $5,-4($2)
	lda $1,-1($1)
	lda $4,1($1)
	stl $5,-4($3)
	lda $2,4($2)
	bne $4,$L512
$L504:
	ret $31,($26),1
	.align 4
$L488:
	beq $18,$L504
	s4addq $1,0,$1
	.align 4
$L491:
	addq $17,$1,$2
	addq $0,$1,$3
	lda $1,-4($1)
	ldl $4,0($2)
	lda $2,4($1)
	stl $4,0($3)
	bne $2,$L491
	ret $31,($26),1
	.align 4
$L501:
	mov $17,$7
	cpys $f31,$f31,$f31
	mov $16,$8
	br $31,$L493
	.align 4
$L513:
	ret $31,($26),1
	bis $31,$31,$31
$L500:
	mov $7,$3
	br $31,$L512
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
	beq $18,$L515
	and $16,4,$1
	cmpule $6,5,$2
	cmpult $31,$1,$1
	bne $2,$L520
	mov $16,$7
	beq $1,$L517
	lda $7,4($16)
	stl $17,0($16)
	lda $6,-2($18)
$L517:
	sll $17,32,$2
	zapnot $17,15,$4
	subq $18,$1,$18
	bis $4,$2,$4
	srl $18,1,$5
	s4addq $1,$0,$1
	mov $31,$2
	.align 4
$L518:
	lda $2,1($2)
	stq $4,0($1)
	cmpeq $2,$5,$3
	cpys $f31,$f31,$f31
	lda $1,8($1)
	beq $3,$L518
	blbc $18,$L515
	bic $18,1,$18
	subq $6,$18,$6
	s4addq $18,$7,$1
$L516:
	stl $17,0($1)
	beq $6,$L515
	cmpeq $6,1,$2
	stl $17,4($1)
	bis $31,$31,$31
	bne $2,$L515
	cmpeq $6,2,$2
	stl $17,8($1)
	bis $31,$31,$31
	bne $2,$L515
	cmpeq $6,3,$2
	stl $17,12($1)
	bis $31,$31,$31
	bne $2,$L515
	cmpeq $6,4,$6
	stl $17,16($1)
	bne $6,$L515
	stl $17,20($1)
$L515:
	ret $31,($26),1
	bis $31,$31,$31
$L520:
	mov $16,$1
	br $31,$L516
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
	beq $1,$L546
	addq $16,$18,$2
	cpys $f31,$f31,$f31
	addq $17,$18,$17
	beq $18,$L545
	.align 4
$L548:
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
	beq $4,$L548
	ret $31,($26),1
	.align 4
$L546:
	cmpeq $16,$17,$1
	beq $1,$L593
$L545:
	ret $31,($26),1
	.align 4
$L593:
	beq $18,$L545
	lda $23,-1($18)
	cmpule $23,13,$1
	cpys $f31,$f31,$f31
	lda $2,1($16)
	bne $1,$L549
	lda $7,1($16)
	subq $17,$7,$1
	cmpule $1,6,$1
	cpys $f31,$f31,$f31
	mov $7,$2
	bne $1,$L549
	subq $31,$16,$4
	and $4,7,$1
	beq $1,$L563
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
	beq $3,$L550
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
	bne $5,$L550
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
	beq $4,$L550
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
	bne $4,$L550
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
	bne $4,$L550
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
	beq $4,$L550
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
$L550:
	subq $18,$1,$18
	addq $16,$1,$5
	bic $18,7,$22
	addq $17,$1,$1
	addq $5,$22,$8
	.align 4
$L558:
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
	beq $2,$L558
	cmpeq $18,$22,$18
	addq $24,$22,$2
	addq $7,$22,$1
	cpys $f31,$f31,$f31
	subq $23,$22,$3
	bne $18,$L545
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
	bne $5,$L545
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
	bne $6,$L545
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
	bne $6,$L545
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
	bne $6,$L545
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
	bne $6,$L545
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
	bne $3,$L545
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
$L549:
	addq $16,$18,$18
	.align 4
$L561:
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
	beq $5,$L561
	ret $31,($26),1
$L563:
	mov $17,$24
	mov $16,$7
	mov $18,$23
	br $31,$L550
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
	br $31,$L610
	.align 4
$L613:
	cmpeq $1,32,$1
	bne $1,$L612
$L610:
	srl $16,$0,$2
	addl $0,1,$0
	zapnot $0,15,$1
	cpys $f31,$f31,$f31
	addl $31,$0,$0
	blbc $2,$L613
	ret $31,($26),1
	.align 4
$L612:
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
	beq $16,$L615
	and $16,1,$0
	bne $0,$L615
	lda $0,1($31)
	.align 4
$L616:
	sra $16,1,$16
	addl $0,1,$0
	blbc $16,$L616
$L615:
	ret $31,($26),1
	.cfi_endproc
$LFE84:
	.end libiberty_ffs
	.align 2
	.align 4
	.globl gl_isinff
	.ent gl_isinff
gl_isinff:
	.frame $30,0,$26,0
$LFB85:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!49
	lda $29,0($29)		!gpdisp!49
$gl_isinff..ng:
	.prologue 1
	ldah $1,$LC1($29)		!gprelhigh
	cpys $f31,$f31,$f31
	cpys $f16,$f16,$f16
	lda $0,1($31)
	lds $f11,$LC1($1)		!gprellow
	cmptlt $f16,$f11,$f10
	fbne $f10,$L622
	ldah $1,$LC2($29)		!gprelhigh
	lds $f11,$LC2($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L625
	addl $31,$0,$0
$L622:
	ret $31,($26),1
	.align 4
$L625:
	bis $31,$31,$0
	cpys $f31,$f31,$f31
	addl $31,$0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE85:
	.end gl_isinff
	.align 2
	.align 4
	.globl gl_isinfd
	.ent gl_isinfd
gl_isinfd:
	.frame $30,0,$26,0
$LFB86:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!50
	lda $29,0($29)		!gpdisp!50
$gl_isinfd..ng:
	.prologue 1
	ldah $1,$LC5($29)		!gprelhigh
	lda $0,1($31)
	ldt $f11,$LC5($1)		!gprellow
	cmptlt $f16,$f11,$f10
	fbne $f10,$L627
	ldah $1,$LC6($29)		!gprelhigh
	ldt $f11,$LC6($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L630
	addl $31,$0,$0
$L627:
	ret $31,($26),1
	.align 4
$L630:
	bis $31,$31,$0
	cpys $f31,$f31,$f31
	addl $31,$0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE86:
	.end gl_isinfd
	.align 2
	.align 4
	.globl gl_isinfl
	.ent gl_isinfl
gl_isinfl:
	.frame $30,32,$26,0
	.mask 0x4000c00,-32
$LFB87:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!51
	lda $29,0($29)		!gpdisp!51
$gl_isinfl..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	cpys $f31,$f31,$f31
	ldah $1,$LC7($29)		!gprelhigh
	ldq $27,_OtsLssX($29)		!literal!54
	lda $1,$LC7($1)		!gprellow
	stq $10,8($30)
	stq $11,16($30)
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	ldq $10,0($16)
	ldq $11,8($16)
	ldq $18,0($1)
	mov $10,$16
	ldq $19,8($1)
	mov $11,$17
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	jsr $26,($27),_OtsLssX		!lituse_jsr!54
	ldah $29,0($26)		!gpdisp!55
	lda $1,1($31)
	cpys $f31,$f31,$f31
	lda $29,0($29)		!gpdisp!55
	bgt $0,$L632
	ldah $1,$LC8($29)		!gprelhigh
	ldq $27,_OtsGtrX($29)		!literal!52
	lda $1,$LC8($1)		!gprellow
	mov $10,$16
	ldq $18,0($1)
	bis $31,$31,$31
	mov $11,$17
	ldq $19,8($1)
	jsr $26,($27),_OtsGtrX		!lituse_jsr!52
	ldah $29,0($26)		!gpdisp!53
	mov $31,$1
	lda $29,0($29)		!gpdisp!53
	cmplt $1,$0,$1
$L632:
	ldq $26,0($30)
	ldq $10,8($30)
	bis $31,$31,$31
	mov $1,$0
	ldq $11,16($30)
	lda $30,32($30)
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 26
	.cfi_def_cfa_offset 0
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
	ldah $29,0($27)		!gpdisp!56
	lda $29,0($29)		!gpdisp!56
$_Qp_itoq..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	ldq $27,_OtsConvertFloatTX($29)		!literal!57
	stq $17,16($30)
	ldt $f10,16($30)
	stq $9,8($30)
	.cfi_offset 9, -24
	mov $16,$9
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	cvtqt $f10,$f16
	jsr $26,($27),_OtsConvertFloatTX		!lituse_jsr!57
	ldah $29,0($26)		!gpdisp!58
	ldq $26,0($30)
	bis $31,$31,$31
	stq $16,0($9)
	lda $29,0($29)		!gpdisp!58
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
	ldah $29,0($27)		!gpdisp!59
	lda $29,0($29)		!gpdisp!59
$ldexpf..ng:
	.prologue 1
	cpys $f16,$f16,$f10
	cpys $f16,$f16,$f0
	cmptun $f10,$f10,$f11
	fbne $f11,$L636
	adds $f16,$f16,$f11
	cmpteq $f11,$f10,$f10
	fbne $f10,$L636
	ldah $2,$LC9($29)		!gprelhigh
	cmplt $17,0,$1
	cpys $f31,$f31,$f31
	lds $f10,$LC9($2)		!gprellow
	bne $1,$L648
	blbc $17,$L638
	.align 4
$L639:
	muls $f0,$f10,$f0
$L638:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	bis $31,$31,$31
	beq $17,$L636
	muls $f10,$f10,$f10
	srl $17,63,$1
	bis $31,$31,$31
	blbs $17,$L639
$L649:
	addq $1,$17,$17
	muls $f10,$f10,$f10
	sra $17,1,$17
	cpys $f31,$f31,$f31
	srl $17,63,$1
	blbs $17,$L639
	br $31,$L649
	.align 4
$L636:
	ret $31,($26),1
	.align 4
$L648:
	ldah $1,$LC10($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC10($1)		!gprellow
	blbc $17,$L638
	br $31,$L639
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
	ldah $29,0($27)		!gpdisp!60
	lda $29,0($29)		!gpdisp!60
$ldexp..ng:
	.prologue 1
	cmptun $f16,$f16,$f10
	cpys $f16,$f16,$f0
	fbne $f10,$L651
	addt $f16,$f16,$f11
	cmpteq $f11,$f16,$f10
	fbne $f10,$L651
	cmplt $17,0,$1
	bne $1,$L663
	ldah $1,$LC9($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC9($1)		!gprellow
	blbc $17,$L653
	.align 4
$L654:
	mult $f0,$f10,$f0
$L653:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	bis $31,$31,$31
	beq $17,$L651
	mult $f10,$f10,$f10
	srl $17,63,$1
	bis $31,$31,$31
	blbs $17,$L654
$L664:
	addq $1,$17,$17
	mult $f10,$f10,$f10
	sra $17,1,$17
	cpys $f31,$f31,$f31
	srl $17,63,$1
	blbs $17,$L654
	br $31,$L664
	.align 4
$L651:
	ret $31,($26),1
	.align 4
$L663:
	ldah $1,$LC10($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC10($1)		!gprellow
	blbc $17,$L653
	br $31,$L654
	.cfi_endproc
$LFE90:
	.end ldexp
	.align 2
	.align 4
	.globl ldexpl
	.ent ldexpl
ldexpl:
	.frame $30,176,$26,0
	.mask 0x400fe00,-176
$LFB91:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!61
	lda $29,0($29)		!gpdisp!61
$ldexpl..ng:
	lda $30,-176($30)
	.cfi_def_cfa_offset 176
	ldq $27,_OtsEqlX($29)		!literal!70
	stq $9,8($30)
	stq $10,16($30)
	.cfi_offset 9, -168
	.cfi_offset 10, -160
	ldq $9,8($17)
	ldq $10,0($17)
	stq $11,24($30)
	.cfi_offset 11, -152
	mov $18,$11
	stq $16,96($30)
	mov $9,$17
	mov $10,$16
	stq $26,0($30)
	mov $10,$18
	stq $12,32($30)
	mov $9,$19
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -176
	.cfi_offset 12, -144
	.cfi_offset 13, -136
	.cfi_offset 14, -128
	.cfi_offset 15, -120
	.prologue 1
	stq $2,160($30)
	stq $3,168($30)
	stq $4,144($30)
	stq $5,152($30)
	jsr $26,($27),_OtsEqlX		!lituse_jsr!70
	ldah $29,0($26)		!gpdisp!71
	lda $29,0($29)		!gpdisp!71
	blt $0,$L666
	mov $10,$18
	ldq $27,_OtsAddX($29)		!literal!66
	mov $9,$19
	lda $20,2($31)
	mov $10,$16
	mov $9,$17
	jsr $26,($27),_OtsAddX		!lituse_jsr!66
	ldah $29,0($26)		!gpdisp!67
	stq $10,128($30)
	bis $31,$31,$31
	lda $29,0($29)		!gpdisp!67
	stq $9,136($30)
	ldq $18,128($30)
	ldq $19,136($30)
	ldq $27,_OtsEqlX($29)		!literal!68
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!68
	ldah $29,0($26)		!gpdisp!69
	lda $29,0($29)		!gpdisp!69
	bgt $0,$L666
	cmplt $11,0,$2
	bne $2,$L678
	ldah $3,$LC13($29)		!gprelhigh
	lda $3,$LC13($3)		!gprellow
	ldq $2,0($3)
	ldq $3,8($3)
$L667:
	blbc $11,$L668
	.align 4
$L669:
	stq $10,64($30)
	lda $20,2($31)
	stq $2,80($30)
	stq $9,72($30)
	stq $3,88($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsMulX($29)		!literal!64
	stq $2,160($30)
	stq $3,168($30)
	jsr $26,($27),_OtsMulX		!lituse_jsr!64
	ldah $29,0($26)		!gpdisp!65
	ldq $3,168($30)
	bis $31,$31,$31
	lda $29,0($29)		!gpdisp!65
	ldq $2,160($30)
	mov $16,$10
	mov $17,$9
$L668:
	srl $11,63,$4
	addq $4,$11,$1
	sra $1,1,$11
	beq $11,$L666
$L670:
	mov $2,$16
	ldq $27,_OtsMulX($29)		!literal!62
	mov $3,$17
	mov $2,$18
	mov $3,$19
	lda $20,2($31)
	jsr $26,($27),_OtsMulX		!lituse_jsr!62
	ldah $29,0($26)		!gpdisp!63
	srl $11,63,$3
	lda $29,0($29)		!gpdisp!63
	addq $3,$11,$4
	mov $16,$2
	mov $17,$3
	blbs $11,$L669
	sra $4,1,$11
	br $31,$L670
	.align 4
$L666:
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
	lda $30,176($30)
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
$L678:
	.cfi_restore_state
	ldah $3,$LC14($29)		!gprelhigh
	lda $3,$LC14($3)		!gprellow
	ldq $2,0($3)
	bis $31,$31,$31
	ldq $3,8($3)
	br $31,$L667
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
	beq $18,$L680
	subq $31,$16,$3
	and $3,7,$2
	lda $1,7($2)
	cmpule $1,11,$4
	lda $7,-1($18)
	cmovne $4,11,$1
	cmpult $7,$1,$1
	bne $1,$L692
	beq $2,$L693
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
	beq $5,$L682
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
	bne $4,$L682
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
	beq $3,$L682
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
	bne $3,$L682
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
	bne $3,$L682
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
	beq $3,$L682
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
$L682:
	subq $18,$2,$6
	addq $17,$2,$17
	bic $6,7,$18
	addq $0,$2,$2
	addq $17,$18,$5
	.align 4
$L690:
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
	beq $3,$L690
	cmpeq $6,$18,$6
	addq $22,$18,$1
	addq $8,$18,$17
	cpys $f31,$f31,$f31
	subq $7,$18,$18
	bne $6,$L737
$L681:
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
	bne $4,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $3,$L680
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
	bne $18,$L680
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
$L680:
	ret $31,($26),1
	.align 4
$L693:
	mov $16,$22
	mov $17,$8
	mov $18,$7
	br $31,$L682
	.align 4
$L737:
	ret $31,($26),1
	bis $31,$31,$31
$L692:
	mov $16,$1
	br $31,$L681
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
	beq $1,$L745
	.align 4
$L740:
	mov $2,$1
	lda $2,1($2)
	ldq_u $3,0($1)
	extqh $3,$2,$4
	sra $4,56,$4
	bne $4,$L740
$L753:
	beq $18,$L754
	.align 4
$L741:
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
	beq $2,$L755
	lda $1,1($1)
	ldq_u $3,0($1)
	bne $18,$L741
$L754:
	mskbl $3,$1,$3
	stq_u $3,0($1)
	ret $31,($26),1
	.align 4
$L755:
	ret $31,($26),1
	.align 4
$L745:
	mov $16,$1
	br $31,$L753
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
	beq $17,$L756
$L757:
	addq $16,$0,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L759
$L756:
	ret $31,($26),1
	.align 4
$L759:
	lda $0,1($0)
	cmpeq $17,$0,$1
	beq $1,$L757
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
	beq $4,$L770
$L776:
	mov $17,$2
	br $31,$L769
	.align 4
$L768:
	bis $31,$31,$31
	bne $3,$L767
$L769:
	lda $3,1($2)
	ldq_u $1,0($2)
	mov $3,$2
	extqh $1,$3,$1
	sra $1,56,$1
	cpys $f31,$f31,$f31
	cmpeq $1,$4,$3
	bne $1,$L768
	mov $5,$0
	lda $5,1($0)
	ldq_u $4,0($0)
	extqh $4,$5,$4
	sra $4,56,$4
	bne $4,$L776
$L770:
	mov $31,$0
$L767:
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
$L779:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $17,$1,$3
	cmovne $3,$16,$0
	mov $2,$16
	bne $1,$L779
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
	beq $22,$L781
	.align 4
$L783:
	mov $2,$3
	lda $2,1($2)
	ldq_u $1,0($3)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L783
	subq $3,$17,$3
	cpys $f31,$f31,$f31
	mov $16,$0
	beq $3,$L781
	lda $23,-1($17)
	and $22,0xff,$24
	addq $23,$3,$23
	br $31,$L799
	.align 4
$L801:
	mov $6,$16
	beq $1,$L800
$L799:
	lda $6,1($16)
	ldq_u $1,0($16)
	extqh $1,$6,$1
	sra $1,56,$1
	cmpeq $1,$22,$2
	beq $2,$L801
	mov $24,$4
	mov $17,$3
	mov $16,$5
	br $31,$L785
	.align 4
$L787:
	lda $3,1($3)
	ldq_u $4,0($5)
	extbl $4,$5,$4
	beq $4,$L802
$L785:
	cmpeq $3,$23,$1
	ldq_u $7,0($3)
	lda $5,1($5)
	cmpeq $1,0,$1
	extbl $7,$3,$2
	cmpeq $2,$4,$8
	cmpult $31,$2,$2
	and $2,$8,$2
	and $1,$2,$1
	bne $1,$L787
	extbl $7,$3,$7
	cmpeq $7,$4,$7
	bne $7,$L792
$L803:
	mov $6,$16
	br $31,$L799
	.align 4
$L800:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L802:
	ldq_u $7,0($3)
	extbl $7,$3,$7
	cmpeq $7,$4,$7
	beq $7,$L803
$L792:
	mov $16,$0
$L781:
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
	cmptlt $f16,$f31,$f10
	cpys $f16,$f16,$f0
	fbne $f10,$L814
	cmptlt $f31,$f16,$f10
	fbeq $f10,$L808
	cmptlt $f17,$f31,$f10
	fbne $f10,$L807
$L808:
	ret $31,($26),1
	.align 4
$L814:
	cmptlt $f31,$f17,$f10
	fbeq $f10,$L808
$L807:
	cpysn $f0,$f0,$f0
	ret $31,($26),1
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
	beq $19,$L815
	cmpult $17,$19,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L815
	subq $17,$19,$17
	addq $16,$17,$6
	cmpule $16,$6,$1
	beq $1,$L815
	lda $22,1($18)
	ldq_u $7,0($18)
	lda $19,-1($19)
	mov $16,$0
	extqh $7,$22,$7
	cpys $f31,$f31,$f31
	sra $7,56,$7
	br $31,$L821
	.align 4
$L825:
	mov $5,$0
$L817:
	cmpult $6,$0,$1
	bis $31,$31,$31
	bne $1,$L826
$L821:
	lda $5,1($0)
	ldq_u $1,0($0)
	extqh $1,$5,$1
	sra $1,56,$1
	cmpeq $1,$7,$1
	beq $1,$L825
	mov $22,$3
	beq $19,$L815
$L820:
	mov $5,$2
	cpys $f31,$f31,$f31
	addq $5,$19,$8
	br $31,$L818
	.align 4
$L819:
	lda $3,1($3)
	bne $4,$L815
$L818:
	ldq_u $1,0($2)
	ldq_u $4,0($3)
	extbl $1,$2,$1
	extbl $4,$3,$4
	lda $2,1($2)
	cmpeq $1,$4,$1
	cmpeq $2,$8,$4
	bne $1,$L819
	cmpule $5,$6,$1
	beq $1,$L826
	lda $0,1($5)
	ldq_u $1,0($5)
	extqh $1,$0,$1
	sra $1,56,$1
	cmpeq $1,$7,$1
	beq $1,$L817
	mov $5,$1
	mov $22,$3
	mov $0,$5
	cpys $f31,$f31,$f31
	mov $1,$0
	br $31,$L820
	.align 4
$L826:
	mov $31,$0
$L815:
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
	ldah $29,0($27)		!gpdisp!72
	lda $29,0($29)		!gpdisp!72
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
	beq $18,$L833
	ldq $27,memmove($29)		!literal!73
	jsr $26,($27),memmove		!lituse_jsr!73
	ldah $29,0($26)		!gpdisp!74
	lda $29,0($29)		!gpdisp!74
$L833:
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
	ldah $29,0($27)		!gpdisp!75
	lda $29,0($29)		!gpdisp!75
$frexp..ng:
	.prologue 1
	cmptlt $f16,$f31,$f10
	fbne $f10,$L860
	ldah $1,$LC20($29)		!gprelhigh
	mov $31,$3
	lds $f11,$LC20($1)		!gprellow
	cmptle $f11,$f16,$f10
	bis $31,$31,$31
	fbeq $f10,$L861
$L840:
	ldah $2,$LC10($29)		!gprelhigh
	lds $f12,$LC20($1)		!gprellow
	mov $31,$1
	lds $f11,$LC10($2)		!gprellow
	.align 4
$L846:
	mult $f16,$f11,$f16
	addl $1,1,$1
	cmptle $f12,$f16,$f10
	fbne $f10,$L846
	stl $1,0($17)
	cpys $f16,$f16,$f0
	beq $3,$L837
$L863:
	cpysn $f16,$f16,$f0
$L837:
	ret $31,($26),1
	.align 4
$L861:
	ldah $2,$LC10($29)		!gprelhigh
	lds $f11,$LC10($2)		!gprellow
	cmptlt $f16,$f11,$f10
	fbeq $f10,$L843
	cmpteq $f16,$f31,$f10
	fbeq $f10,$L852
$L843:
	cpys $f16,$f16,$f0
	stl $31,0($17)
	ret $31,($26),1
	.align 4
$L860:
	ldah $1,$LC16($29)		!gprelhigh
	cpysn $f16,$f16,$f12
	lds $f11,$LC16($1)		!gprellow
	cmptle $f16,$f11,$f10
	cpys $f31,$f31,$f31
	fbeq $f10,$L862
	cpys $f12,$f12,$f16
	lda $3,1($31)
	ldah $1,$LC20($29)		!gprelhigh
	br $31,$L840
	.align 4
$L862:
	ldah $1,$LC18($29)		!gprelhigh
	lds $f11,$LC18($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L843
	lda $3,1($31)
	ldah $2,$LC10($29)		!gprelhigh
$L841:
	cpys $f12,$f12,$f16
	mov $31,$1
	lds $f11,$LC10($2)		!gprellow
	.align 4
$L848:
	addt $f16,$f16,$f16
	subl $1,1,$1
	cmptlt $f16,$f11,$f10
	fbne $f10,$L848
	stl $1,0($17)
	cpys $f16,$f16,$f0
	bne $3,$L863
	ret $31,($26),1
$L852:
	cpys $f16,$f16,$f12
	br $31,$L841
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
	beq $16,$L864
	.align 4
$L866:
	and $16,1,$1
	subq $31,$1,$1
	srl $16,1,$16
	and $1,$17,$1
	addq $0,$1,$0
	cpys $f31,$f31,$f31
	addq $17,$17,$17
	bne $16,$L866
$L864:
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
	bne $4,$L871
	br $31,$L872
	.align 4
$L874:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L873
$L871:
	addl $17,$17,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$3,$2
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L874
	zapnot $17,15,$2
	bis $31,$31,$31
$L872:
	mov $31,$0
	br $31,$L877
	.align 4
$L887:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L877:
	cmpult $3,$2,$3
	zapnot $1,15,$4
	bis $1,$0,$1
	bne $3,$L876
	subl $16,$17,$16
	addl $31,$1,$0
$L876:
	srl $4,1,$1
	srl $2,1,$17
	bne $1,$L887
$L875:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L873:
	mov $31,$0
	beq $1,$L875
	zapnot $17,15,$2
	br $31,$L872
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
	ldah $29,0($27)		!gpdisp!76
	lda $29,0($29)		!gpdisp!76
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
	bne $2,$L889
	sll $16,8,$16
	ldq $27,__clzdi2($29)		!literal!77
	zapnot $16,14,$16
	jsr $26,($27),__clzdi2		!lituse_jsr!77
	ldah $29,0($26)		!gpdisp!78
	lda $29,0($29)		!gpdisp!78
	subl $0,33,$0
$L889:
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
	ldah $29,0($27)		!gpdisp!79
	lda $29,0($29)		!gpdisp!79
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
	bne $2,$L892
	ldq $27,__clzdi2($29)		!literal!80
	jsr $26,($27),__clzdi2		!lituse_jsr!80
	ldah $29,0($26)		!gpdisp!81
	lda $29,0($29)		!gpdisp!81
	subl $0,1,$0
$L892:
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
	beq $16,$L895
	.align 4
$L896:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $1,$0,$0
	addl $17,$17,$17
	bne $16,$L896
$L895:
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
	bne $1,$L904
	addq $17,$6,$1
	cmpule $16,$1,$1
	bne $1,$L942
$L904:
	mov $17,$1
	mov $16,$2
	cpys $f31,$f31,$f31
	s8addq $3,$17,$5
	beq $3,$L940
	.align 4
$L907:
	lda $2,8($2)
	ldq $4,0($1)
	lda $1,8($1)
	cmpeq $1,$5,$3
	stq $4,-8($2)
	beq $3,$L907
	zapnot $7,15,$2
	cmpule $6,$2,$1
	bne $1,$L900
	subl $18,$7,$8
	subl $8,1,$1
	zapnot $1,15,$1
	cmpule $1,13,$1
	bne $1,$L909
	lda $5,1($2)
	addq $16,$2,$3
	addq $17,$5,$23
	subq $3,$23,$1
	cmpule $1,6,$1
	bne $1,$L909
	subl $31,$3,$24
	and $24,7,$22
	mov $31,$4
	beq $22,$L910
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
	beq $4,$L943
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
	bne $5,$L918
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
	beq $24,$L922
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
	bne $23,$L922
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
	bne $23,$L922
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
	beq $23,$L922
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
$L910:
	subl $8,$22,$8
	zapnot $8,15,$5
	addq $4,$2,$4
	srl $5,3,$5
	addq $17,$4,$1
	s8addq $5,$1,$5
	addq $16,$4,$4
	.align 4
$L913:
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
	beq $2,$L913
	bic $8,7,$2
	and $8,7,$8
	addl $2,$7,$2
	beq $8,$L900
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
	bne $7,$L900
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
	bne $7,$L900
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
	bne $7,$L900
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
	bne $7,$L900
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
	bne $7,$L900
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
	bne $1,$L900
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
$L942:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L900
	.align 4
$L917:
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
	bne $5,$L917
$L900:
	ret $31,($26),1
	.align 4
$L922:
	mov $28,$7
	br $31,$L910
	.align 4
$L940:
	zapnot $7,15,$2
	beq $18,$L944
$L909:
	subl $18,1,$1
	subl $1,$7,$1
	lda $5,1($17)
	zapnot $1,15,$1
	addq $5,$2,$5
	addq $17,$2,$17
	addq $16,$2,$16
	addq $5,$1,$5
	.align 4
$L915:
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
	beq $4,$L915
	ret $31,($26),1
$L943:
	addl $7,1,$7
	zapnot $22,15,$4
	br $31,$L910
$L918:
	mov $23,$7
	br $31,$L910
$L944:
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
	bne $2,$L949
	addq $17,$1,$1
	cmpule $16,$1,$1
	bne $1,$L976
$L949:
	beq $6,$L948
	subl $6,1,$1
	zapnot $1,15,$1
	cmpule $1,11,$1
	bne $1,$L952
	lda $4,2($17)
	subq $16,$4,$1
	cmpule $1,4,$1
	bne $1,$L952
	srl $16,1,$3
	subl $31,$3,$3
	and $3,3,$1
	beq $1,$L961
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
	beq $3,$L953
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
	beq $5,$L953
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
$L953:
	subl $6,$1,$7
	zapnot $7,15,$5
	addq $4,$4,$4
	srl $5,2,$5
	addq $17,$4,$1
	s8addq $5,$1,$5
	addq $16,$4,$4
	.align 4
$L955:
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
	beq $2,$L955
	bic $7,3,$2
	and $7,3,$1
	addl $2,$8,$2
	beq $1,$L948
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
	bne $6,$L948
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
	bne $7,$L948
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
$L948:
	blbc $18,$L945
$L977:
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
$L976:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L945
	.align 4
$L960:
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
	bne $5,$L960
$L945:
	ret $31,($26),1
	.align 4
$L961:
	mov $31,$8
	cpys $f31,$f31,$f31
	mov $31,$4
	br $31,$L953
	.align 4
$L952:
	addq $6,$6,$6
	mov $17,$3
	mov $16,$2
	addq $6,$17,$6
	.align 4
$L957:
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
	beq $7,$L957
	blbc $18,$L945
	br $31,$L977
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
	bne $2,$L983
	addq $17,$6,$2
	cmpule $16,$2,$2
	bne $2,$L1023
$L983:
	beq $1,$L1024
	subl $1,1,$2
	zapnot $2,15,$2
	cmpule $2,23,$2
	bne $2,$L985
	lda $2,4($17)
	cmpeq $16,$2,$2
	bne $2,$L985
	and $16,4,$4
	cmpult $31,$4,$4
	cpys $f31,$f31,$f31
	mov $31,$22
	beq $4,$L986
	mov $4,$22
	ldl $2,0($17)
	stl $2,0($16)
$L986:
	subl $1,$4,$5
	zapnot $5,15,$8
	s4addq $4,$17,$1
	srl $8,1,$8
	s4addq $4,$16,$4
	s8addq $8,$1,$8
	.align 4
$L987:
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
	beq $2,$L987
	blbc $5,$L990
	bic $5,1,$1
	addl $1,$22,$1
	zapnot $1,15,$1
	s4addq $1,$17,$2
	s4addq $1,$16,$1
	ldl $2,0($2)
	stl $2,0($1)
$L990:
	zapnot $7,15,$3
	cmpule $6,$3,$1
	bne $1,$L978
	subl $18,$7,$8
	subl $8,1,$1
	zapnot $1,15,$1
	cmpule $1,13,$1
	bne $1,$L981
	lda $5,1($3)
	addq $16,$3,$2
	addq $17,$5,$23
	subq $2,$23,$1
	cmpule $1,6,$1
	bne $1,$L981
	subl $31,$2,$24
	and $24,7,$22
	mov $31,$4
	beq $22,$L991
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
	beq $4,$L1025
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
	bne $5,$L1000
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
	beq $24,$L1004
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
	bne $23,$L1004
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
	bne $23,$L1004
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
	beq $23,$L1004
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
$L991:
	subl $8,$22,$8
	zapnot $8,15,$5
	addq $4,$3,$4
	srl $5,3,$5
	addq $17,$4,$1
	s8addq $5,$1,$5
	addq $16,$4,$4
	.align 4
$L994:
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
	beq $2,$L994
	bic $8,7,$1
	and $8,7,$8
	addl $1,$7,$1
	beq $8,$L978
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
	bne $7,$L978
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
	bne $7,$L978
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
	bne $7,$L978
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
	bne $7,$L978
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
	bne $7,$L978
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
	bne $6,$L978
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
$L1023:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L978
	.align 4
$L998:
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
	bne $5,$L998
$L978:
	ret $31,($26),1
	.align 4
$L1004:
	mov $28,$7
	br $31,$L991
	.align 4
$L985:
	mov $17,$2
	mov $16,$3
	s4addq $1,$17,$1
	.align 4
$L989:
	lda $3,4($3)
	ldl $5,0($2)
	lda $2,4($2)
	cmpeq $1,$2,$4
	stl $5,-4($3)
	beq $4,$L989
	br $31,$L990
	.align 4
$L1024:
	zapnot $7,15,$3
	beq $18,$L1026
$L981:
	subl $18,1,$2
	subl $2,$7,$2
	lda $1,1($17)
	zapnot $2,15,$2
	addq $1,$3,$1
	addq $17,$3,$17
	addq $16,$3,$16
	addq $2,$1,$2
	.align 4
$L996:
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
	beq $5,$L996
	ret $31,($26),1
$L1025:
	addl $7,1,$7
	zapnot $22,15,$4
	br $31,$L991
$L1000:
	mov $23,$7
	br $31,$L991
$L1026:
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
	ldah $29,0($27)		!gpdisp!83
	lda $29,0($29)		!gpdisp!83
$__modi..ng:
	.prologue 1
	mov $16,$24
	cpys $f31,$f31,$f31
	mov $17,$25
	ldq $27,__reml($29)		!literal!82
	jsr $23,($27),__reml		!lituse_jsrdirect!82
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
	blt $16,$L1035
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqt $f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1035:
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
	blt $16,$L1038
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqs $f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1038:
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
	ldah $29,0($27)		!gpdisp!85
	lda $29,0($29)		!gpdisp!85
$__umodi..ng:
	.prologue 1
	mov $16,$24
	cpys $f31,$f31,$f31
	mov $17,$25
	ldq $27,__remlu($29)		!literal!84
	jsr $23,($27),__remlu		!lituse_jsrdirect!84
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
	bne $2,$L1044
	srl $1,14,$0
	bne $0,$L1043
	srl $1,13,$2
	bne $2,$L1045
	srl $1,12,$2
	bne $2,$L1046
	srl $1,11,$2
	bne $2,$L1047
	srl $1,10,$2
	bne $2,$L1048
	srl $1,9,$2
	bne $2,$L1049
	srl $1,8,$2
	bne $2,$L1050
	srl $1,7,$2
	bne $2,$L1051
	srl $1,6,$2
	bne $2,$L1052
	srl $1,5,$2
	bne $2,$L1053
	srl $1,4,$2
	bne $2,$L1054
	srl $1,3,$2
	bne $2,$L1055
	srl $1,2,$2
	bne $2,$L1056
	srl $1,1,$1
	bne $1,$L1057
	cmpeq $16,0,$0
	lda $0,15($0)
	ret $31,($26),1
$L1057:
	lda $0,14($31)
$L1043:
	ret $31,($26),1
$L1044:
	mov $31,$0
	ret $31,($26),1
$L1055:
	lda $0,12($31)
	ret $31,($26),1
$L1045:
	lda $0,2($31)
	ret $31,($26),1
$L1046:
	lda $0,3($31)
	ret $31,($26),1
$L1047:
	lda $0,4($31)
	ret $31,($26),1
$L1048:
	lda $0,5($31)
	ret $31,($26),1
$L1049:
	lda $0,6($31)
	ret $31,($26),1
$L1050:
	lda $0,7($31)
	ret $31,($26),1
$L1051:
	lda $0,8($31)
	ret $31,($26),1
$L1052:
	lda $0,9($31)
	ret $31,($26),1
$L1053:
	lda $0,10($31)
	ret $31,($26),1
$L1054:
	lda $0,11($31)
	ret $31,($26),1
$L1056:
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
	blbs $16,$L1062
	and $16,2,$1
	bne $1,$L1063
	and $16,4,$1
	bne $1,$L1064
	and $16,8,$1
	bne $1,$L1065
	and $16,16,$1
	bne $1,$L1066
	and $16,32,$1
	bne $1,$L1067
	and $16,64,$1
	bne $1,$L1068
	and $16,128,$1
	bne $1,$L1069
	lda $1,256($31)
	and $16,$1,$1
	bne $1,$L1070
	lda $1,512($31)
	and $16,$1,$1
	bne $1,$L1071
	lda $1,1024($31)
	and $16,$1,$1
	bne $1,$L1072
	lda $1,2048($31)
	and $16,$1,$1
	bne $1,$L1073
	lda $1,4096($31)
	and $16,$1,$1
	bne $1,$L1074
	lda $1,8192($31)
	and $16,$1,$1
	bne $1,$L1075
	lda $1,16384($31)
	and $16,$1,$1
	bne $1,$L1076
	srl $16,15,$16
	cmpeq $16,0,$0
	lda $0,15($0)
	ret $31,($26),1
$L1062:
	mov $31,$0
	ret $31,($26),1
$L1063:
	lda $0,1($31)
	ret $31,($26),1
$L1074:
	lda $0,12($31)
	ret $31,($26),1
$L1064:
	lda $0,2($31)
	ret $31,($26),1
$L1065:
	lda $0,3($31)
	ret $31,($26),1
$L1066:
	lda $0,4($31)
	ret $31,($26),1
$L1067:
	lda $0,5($31)
	ret $31,($26),1
$L1068:
	lda $0,6($31)
	ret $31,($26),1
$L1069:
	lda $0,7($31)
	ret $31,($26),1
$L1070:
	lda $0,8($31)
	ret $31,($26),1
$L1071:
	lda $0,9($31)
	ret $31,($26),1
$L1072:
	lda $0,10($31)
	ret $31,($26),1
$L1073:
	lda $0,11($31)
	ret $31,($26),1
$L1075:
	lda $0,13($31)
	ret $31,($26),1
$L1076:
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
	ldah $29,0($27)		!gpdisp!86
	lda $29,0($29)		!gpdisp!86
$__fixunssfsi..ng:
	ldah $1,$LC21($29)		!gprelhigh
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	lds $f10,$LC21($1)		!gprellow
	cmptle $f10,$f16,$f11
	fbne $f11,$L1084
	cvttq/c $f16,$f16
	stt $f16,0($30)
	ldq $0,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1084:
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
	beq $16,$L1088
	.align 4
$L1089:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $1,$0,$0
	addl $17,$17,$17
	bne $16,$L1089
$L1088:
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
	beq $16,$L1094
	beq $17,$L1094
	.align 4
$L1095:
	zapnot $17,15,$2
	and $17,1,$17
	subl $31,$17,$1
	srl $2,1,$17
	and $16,$1,$1
	addl $1,$0,$0
	addl $16,$16,$16
	bne $17,$L1095
$L1094:
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
	bne $4,$L1103
	br $31,$L1104
	.align 4
$L1106:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L1105
$L1103:
	addl $17,$17,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$3,$2
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L1106
	zapnot $17,15,$2
	bis $31,$31,$31
$L1104:
	mov $31,$0
	br $31,$L1109
	.align 4
$L1119:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L1109:
	cmpult $3,$2,$3
	zapnot $1,15,$4
	bis $1,$0,$1
	bne $3,$L1108
	subl $16,$17,$16
	addl $31,$1,$0
$L1108:
	srl $4,1,$1
	srl $2,1,$17
	bne $1,$L1119
$L1107:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L1105:
	mov $31,$0
	beq $1,$L1107
	zapnot $17,15,$2
	br $31,$L1104
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
	fbne $f10,$L1121
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L1124
$L1121:
	ret $31,($26),1
	.align 4
$L1124:
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
	fbne $f10,$L1126
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L1129
$L1126:
	ret $31,($26),1
	.align 4
$L1129:
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
	bne $1,$L1142
	mov $31,$0
	beq $17,$L1135
	mov $31,$5
$L1134:
	lda $2,1($31)
	mov $31,$0
	.align 4
$L1136:
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
	bne $3,$L1136
	subl $31,$0,$1
	cmovne $5,$1,$0
$L1135:
	ret $31,($26),1
	.align 4
$L1142:
	subl $31,$17,$17
	cpys $f31,$f31,$f31
	lda $5,1($31)
	br $31,$L1134
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
	beq $1,$L1144
	subq $31,$16,$16
	mov $31,$2
	lda $8,1($31)
$L1144:
	cmplt $17,0,$1
	beq $1,$L1145
	subq $31,$17,$17
	mov $2,$8
$L1145:
	zapnot $16,15,$3
	zapnot $17,15,$1
	addl $31,$16,$16
	cmpule $3,$1,$4
	addl $31,$17,$17
	lda $2,1($31)
	beq $4,$L1146
	br $31,$L1147
	.align 4
$L1149:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$2
	beq $1,$L1164
$L1146:
	addl $17,$17,$7
	addl $2,$2,$6
	zapnot $7,15,$1
	zapnot $6,15,$5
	cmpult $1,$3,$1
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $1,$5,$1
	beq $4,$L1149
	zapnot $17,15,$1
	bis $31,$31,$31
$L1147:
	mov $31,$0
	br $31,$L1151
	.align 4
$L1165:
	zapnot $16,15,$3
	zapnot $17,15,$1
$L1151:
	cmpule $1,$3,$3
	cpys $f31,$f31,$f31
	zapnot $2,15,$4
	beq $3,$L1150
	subl $16,$17,$16
	bis $2,$0,$0
$L1150:
	srl $4,1,$2
	srl $1,1,$17
	bne $2,$L1165
	zapnot $0,15,$0
	subq $31,$0,$1
	cmovne $8,$1,$0
	ret $31,($26),1
	.align 4
$L1164:
	zapnot $17,15,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $2,$L1147
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
	beq $1,$L1167
	subq $31,$16,$16
	lda $22,1($31)
$L1167:
	subq $31,$17,$3
	cmovge $17,$17,$3
	zapnot $16,15,$8
	zapnot $3,15,$4
	addl $31,$16,$16
	cmpule $8,$4,$2
	addl $31,$3,$3
	cpys $f31,$f31,$f31
	lda $1,1($31)
	beq $2,$L1168
	br $31,$L1184
	.align 4
$L1171:
	addl $31,$7,$3
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L1186
$L1168:
	addl $3,$3,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$8,$2
	cmpult $31,$5,$5
	cmplt $3,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L1171
	.align 4
$L1185:
	zapnot $3,15,$4
$L1184:
	zapnot $1,15,$1
	cmpult $8,$4,$2
	cpys $f31,$f31,$f31
	srl $1,1,$1
	bne $2,$L1172
	subl $16,$3,$16
	zapnot $16,15,$8
$L1172:
	srl $4,1,$3
	bne $1,$L1185
	subq $31,$8,$0
	cmoveq $22,$8,$0
	ret $31,($26),1
	.align 4
$L1186:
	zapnot $3,15,$4
	bne $1,$L1184
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
	bne $1,$L1188
	br $31,$L1256
	.align 4
$L1191:
	beq $4,$L1190
	mov $1,$5
	mov $2,$17
$L1188:
	addl $17,$17,$2
	addl $5,$5,$1
	zapnot $2,3,$2
	zapnot $1,3,$1
	cmpult $2,$16,$4
	cmpult $31,$1,$6
	srl $17,15,$3
	and $4,$6,$4
	beq $3,$L1191
	cmpult $16,$17,$1
	beq $1,$L1213
	mov $31,$1
$L1214:
	srl $5,1,$3
	srl $17,1,$4
	zapnot $3,3,$3
	mov $16,$0
	beq $3,$L1193
$L1195:
	cmpult $16,$4,$2
	bne $2,$L1196
	subl $16,$4,$4
	bis $1,$3,$3
	zapnot $4,3,$16
	zapnot $3,3,$1
$L1196:
	srl $5,2,$2
	srl $17,2,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	bne $4,$L1197
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1197:
	srl $5,3,$2
	srl $17,3,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	bne $4,$L1198
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1198:
	srl $5,4,$2
	srl $17,4,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	bne $4,$L1199
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1199:
	srl $5,5,$2
	srl $17,5,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	bne $4,$L1200
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1200:
	srl $5,6,$2
	srl $17,6,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	bne $4,$L1201
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1201:
	srl $5,7,$2
	srl $17,7,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	beq $4,$L1257
$L1202:
	extwl $5,1,$2
	srl $17,8,$3
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	beq $4,$L1258
$L1203:
	srl $5,9,$2
	srl $17,9,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	beq $4,$L1259
$L1204:
	srl $5,10,$2
	srl $17,10,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	beq $4,$L1260
$L1205:
	srl $5,11,$2
	srl $17,11,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	beq $4,$L1261
$L1206:
	srl $5,12,$2
	srl $17,12,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	bne $4,$L1207
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1207:
	srl $5,13,$2
	srl $17,13,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	bne $4,$L1208
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1208:
	srl $5,14,$2
	srl $17,14,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L1193
	cmpult $16,$3,$4
	bne $4,$L1209
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L1209:
	srl $5,15,$5
	srl $17,15,$17
	zapnot $5,3,$5
	mov $16,$0
	beq $5,$L1193
	cmpult $16,$17,$2
	mov $31,$0
	bne $2,$L1193
	subl $16,$17,$17
	bis $1,1,$1
	zapnot $17,3,$0
	zapnot $1,3,$1
$L1193:
	cmoveq $18,$1,$0
	ret $31,($26),1
	.align 4
$L1190:
	mov $16,$0
	beq $1,$L1193
	cmpult $16,$2,$3
	cpys $f31,$f31,$f31
	lda $4,32767($31)
	bne $3,$L1194
	subl $16,$2,$16
	and $5,$4,$3
	zapnot $16,3,$16
	and $17,$4,$4
	mov $1,$5
	cpys $f31,$f31,$f31
	mov $2,$17
	br $31,$L1195
	.align 4
$L1213:
	subl $16,$17,$16
	zapnot $16,3,$16
	mov $5,$1
	br $31,$L1214
	.align 4
$L1257:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1202
	.align 4
$L1194:
	and $5,$4,$3
	and $17,$4,$4
	mov $1,$5
	mov $2,$17
	mov $31,$1
	br $31,$L1195
	.align 4
$L1258:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1203
	.align 4
$L1259:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1204
	.align 4
$L1260:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1205
	.align 4
$L1261:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L1206
$L1256:
	cmpeq $17,$16,$2
	mov $31,$0
	mov $2,$1
	cpys $f31,$f31,$f31
	cmoveq $2,$16,$0
	br $31,$L1193
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
	bne $2,$L1263
	br $31,$L1264
	.align 4
$L1266:
	addq $17,$17,$17
	addq $1,$1,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L1265
$L1263:
	and $17,$4,$2
	beq $2,$L1266
$L1264:
	mov $31,$0
	.align 4
$L1269:
	cmpult $16,$17,$2
	bne $2,$L1268
	subq $16,$17,$16
	bis $0,$1,$0
$L1268:
	srl $1,1,$1
	srl $17,1,$17
	bne $1,$L1269
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L1265:
	mov $31,$0
	bne $1,$L1264
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
	beq $1,$L1280
	lda $17,32($17)
	sll $16,$17,$16
	mov $31,$0
	addl $31,$16,$16
$L1281:
	sll $16,32,$16
	zapnot $0,15,$0
	bis $0,$16,$0
$L1279:
	ret $31,($26),1
	.align 4
$L1280:
	mov $16,$0
	beq $17,$L1279
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
	br $31,$L1281
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
	beq $1,$L1286
	sll $17,$19,$18
	mov $31,$17
$L1288:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1286:
	beq $19,$L1288
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
	beq $1,$L1293
	sra $16,32,$1
	sra $16,63,$16
	subl $17,32,$17
	addl $31,$16,$0
	sra $1,$17,$1
$L1294:
	zapnot $1,15,$1
	sll $0,32,$0
	bis $0,$1,$0
$L1292:
	ret $31,($26),1
	.align 4
$L1293:
	mov $16,$0
	beq $17,$L1292
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
	br $31,$L1294
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
	beq $1,$L1299
	sra $18,63,$1
	sra $18,$19,$17
$L1300:
	mov $1,$18
$L1301:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1299:
	beq $19,$L1301
	subq $31,$19,$2
	sll $18,$2,$2
	srl $17,$19,$17
	sra $18,$19,$1
	cpys $f31,$f31,$f31
	bis $2,$17,$17
	br $31,$L1300
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
	lda $5,8($31)
	subl $2,$3,$2
	zapnot $2,15,$2
	lda $4,4($31)
	srl $1,$2,$1
	lda $0,2($31)
	zapnot $1,2,$2
	zapnot $1,15,$1
	cmpeq $2,0,$2
	s8addl $2,0,$2
	subl $5,$2,$5
	zapnot $5,15,$5
	addl $2,$3,$3
	srl $1,$5,$1
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
	ldah $29,0($27)		!gpdisp!87
	lda $29,0($29)		!gpdisp!87
$__clzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	cmovne $17,0,$16
	ldq $27,__clzdi2($29)		!literal!88
	stq $9,8($30)
	.cfi_offset 9, -8
	cmpeq $17,0,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	lda $1,-1($9)
	and $1,$17,$1
	bis $1,$16,$16
	jsr $26,($27),__clzdi2		!lituse_jsr!88
	ldah $29,0($26)		!gpdisp!89
	sll $9,6,$9
	ldq $26,0($30)
	addl $0,$9,$0
	ldq $9,8($30)
	lda $29,0($29)		!gpdisp!89
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
	bne $3,$L1310
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L1310
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1310
	cmpult $17,$16,$0
	lda $0,1($0)
$L1310:
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
	bne $3,$L1316
	cmple $1,$2,$1
	lda $0,1($31)
	beq $1,$L1316
	zapnot $16,15,$16
	zapnot $17,15,$17
	lda $2,-1($31)
	cmpult $16,$17,$1
	cmpult $17,$16,$0
	cmovne $1,$2,$0
$L1316:
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
	bne $1,$L1321
	cmple $17,$19,$17
	cpys $f31,$f31,$f31
	lda $0,2($31)
	beq $17,$L1321
	cmpult $16,$18,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1321
	cmpult $18,$16,$0
	lda $0,1($0)
$L1321:
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
	lda $4,2($31)
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
	s4addq $3,0,$5
	srl $1,$5,$1
	s4addl $3,$2,$3
	and $1,3,$0
	cmpeq $0,0,$0
	zapnot $1,15,$1
	addq $0,$0,$2
	srl $1,$2,$1
	addl $0,$0,$0
	and $1,3,$1
	ornot $31,$1,$2
	srl $1,1,$1
	and $2,1,$2
	subl $4,$1,$4
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
	ldah $29,0($27)		!gpdisp!90
	lda $29,0($29)		!gpdisp!90
$__ctzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	cmovne $16,0,$17
	ldq $27,__ctzdi2($29)		!literal!91
	stq $9,8($30)
	.cfi_offset 9, -8
	cmpeq $16,0,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	lda $1,-1($9)
	and $1,$16,$16
	bis $17,$16,$16
	jsr $26,($27),__ctzdi2		!lituse_jsr!91
	ldah $29,0($26)		!gpdisp!92
	sll $9,6,$9
	ldq $26,0($30)
	addl $0,$9,$0
	ldq $9,8($30)
	lda $29,0($29)		!gpdisp!92
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
	ldah $29,0($27)		!gpdisp!93
	lda $29,0($29)		!gpdisp!93
$__ffsti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	bne $16,$L1329
	mov $31,$0
	bne $17,$L1333
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1329:
	.cfi_restore_state
	ldq $27,__ctzdi2($29)		!literal!94
	jsr $26,($27),__ctzdi2		!lituse_jsr!94
	ldah $29,0($26)		!gpdisp!95
	ldq $26,0($30)
	addl $0,1,$0
	lda $29,0($29)		!gpdisp!95
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1333:
	.cfi_restore_state
	mov $17,$16
	ldq $27,__ctzdi2($29)		!literal!96
	jsr $26,($27),__ctzdi2		!lituse_jsr!96
	ldah $29,0($26)		!gpdisp!97
	ldq $26,0($30)
	addl $0,65,$0
	lda $29,0($29)		!gpdisp!97
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
	beq $1,$L1335
	srl $16,32,$16
	lda $17,32($17)
	srl $16,$17,$16
	mov $31,$1
	addl $31,$16,$0
$L1336:
	sll $1,32,$1
	zapnot $0,15,$0
	bis $0,$1,$0
$L1334:
	ret $31,($26),1
	.align 4
$L1335:
	mov $16,$0
	beq $17,$L1334
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
	br $31,$L1336
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
	beq $1,$L1341
	srl $18,$19,$17
	mov $31,$18
$L1343:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1341:
	beq $19,$L1343
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
	ldah $29,0($27)		!gpdisp!98
	lda $29,0($29)		!gpdisp!98
$__popcountdi2..ng:
	.prologue 1
	ldah $1,$LC23($29)		!gprelhigh
	ldah $2,$LC24($29)		!gprelhigh
	ldq $3,$LC23($1)		!gprellow
	srl $16,1,$1
	and $1,$3,$1
	cpys $f31,$f31,$f31
	subq $16,$1,$16
	ldq $1,$LC24($2)		!gprellow
	srl $16,2,$2
	ldah $3,$LC25($29)		!gprelhigh
	and $16,$1,$16
	cpys $f31,$f31,$f31
	and $2,$1,$2
	ldq $3,$LC25($3)		!gprellow
	addq $2,$16,$2
	srl $2,4,$1
	addq $1,$2,$1
	and $1,$3,$1
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
	zapnot $1,15,$3
	ldah $2,3855($31)
	srl $3,4,$3
	lda $2,3855($2)
	addl $3,$1,$1
	and $2,$1,$1
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
	ldah $29,0($27)		!gpdisp!99
	lda $29,0($29)		!gpdisp!99
$__popcountti2..ng:
	.prologue 1
	ldah $1,$LC23($29)		!gprelhigh
	sll $17,63,$4
	srl $17,1,$2
	ldq $3,$LC23($1)		!gprellow
	srl $16,1,$1
	bis $4,$1,$1
	and $1,$3,$1
	subq $16,$1,$1
	cmpult $16,$1,$16
	and $2,$3,$2
	subq $17,$2,$2
	ldah $3,$LC24($29)		!gprelhigh
	subq $2,$16,$2
	cpys $f31,$f31,$f31
	sll $2,62,$6
	ldq $5,$LC24($3)		!gprellow
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
	sll $3,60,$5
	srl $1,4,$2
	ldah $4,$LC25($29)		!gprelhigh
	bis $5,$2,$2
	cpys $f31,$f31,$f31
	addq $2,$1,$1
	ldq $5,$LC25($4)		!gprellow
	srl $3,4,$4
	cmpult $1,$2,$2
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
	ldah $29,0($27)		!gpdisp!100
	lda $29,0($29)		!gpdisp!100
$__powidf2..ng:
	.prologue 1
	ldah $3,$LC20($29)		!gprelhigh
	mov $17,$1
	lds $f0,$LC20($3)		!gprellow
	blbc $17,$L1360
	.align 4
$L1362:
	mult $f0,$f16,$f0
$L1360:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	bis $31,$31,$31
	beq $1,$L1361
	mult $f16,$f16,$f16
	srl $1,63,$2
	bis $31,$31,$31
	blbs $1,$L1362
$L1366:
	addq $2,$1,$1
	mult $f16,$f16,$f16
	sra $1,1,$1
	cpys $f31,$f31,$f31
	srl $1,63,$2
	blbs $1,$L1362
	br $31,$L1366
	.align 4
$L1361:
	cmplt $17,0,$17
	bne $17,$L1367
	ret $31,($26),1
	.align 4
$L1367:
	lds $f10,$LC20($3)		!gprellow
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
	ldah $29,0($27)		!gpdisp!101
	lda $29,0($29)		!gpdisp!101
$__powisf2..ng:
	.prologue 1
	ldah $3,$LC20($29)		!gprelhigh
	mov $17,$1
	lds $f0,$LC20($3)		!gprellow
	blbc $17,$L1369
	.align 4
$L1371:
	muls $f0,$f16,$f0
$L1369:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	bis $31,$31,$31
	beq $1,$L1370
	muls $f16,$f16,$f16
	srl $1,63,$2
	bis $31,$31,$31
	blbs $1,$L1371
$L1375:
	addq $2,$1,$1
	muls $f16,$f16,$f16
	sra $1,1,$1
	cpys $f31,$f31,$f31
	srl $1,63,$2
	blbs $1,$L1371
	br $31,$L1375
	.align 4
$L1370:
	cmplt $17,0,$17
	bne $17,$L1376
	ret $31,($26),1
	.align 4
$L1376:
	lds $f10,$LC20($3)		!gprellow
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
	bne $3,$L1378
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L1378
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1378
	cmpult $17,$16,$0
	lda $0,1($0)
$L1378:
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
	bne $3,$L1384
	cmpule $1,$2,$1
	lda $0,1($31)
	beq $1,$L1384
	zapnot $16,15,$16
	zapnot $17,15,$17
	lda $2,-1($31)
	cmpult $16,$17,$1
	cmpult $17,$16,$0
	cmovne $1,$2,$0
$L1384:
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
	bne $1,$L1389
	cmpule $17,$19,$17
	cpys $f31,$f31,$f31
	lda $0,2($31)
	beq $17,$L1389
	cmpult $16,$18,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1389
	cmpult $18,$16,$0
	lda $0,1($0)
$L1389:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
$LC1:
	.long	-8388609
	.align 2
$LC2:
	.long	2139095039
	.section	.rodata.cst8
	.align 3
$LC5:
	.long	-1
	.long	-1048577
	.align 3
$LC6:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
$LC7:
	.long	-1
	.long	-1
	.long	-1
	.long	-65537
	.align 4
$LC8:
	.long	-1
	.long	-1
	.long	-1
	.long	2147418111
$LC9 = $LC13+12
	.section	.rodata.cst4
	.align 2
$LC10:
	.long	1056964608
	.section	.rodata.cst16
	.align 4
$LC13:
	.long	0
	.long	0
	.long	0
	.long	1073741824
	.align 4
$LC14:
	.long	0
	.long	0
	.long	0
	.long	1073610752
	.section	.rodata.cst4
	.align 2
$LC16:
	.long	-1082130432
	.align 2
$LC18:
	.long	-1090519040
	.align 2
$LC20:
	.long	1065353216
	.align 2
$LC21:
	.long	1191182336
	.section	.rodata.cst8
	.align 3
$LC23:
	.quad	6148914691236517205
	.align 3
$LC24:
	.quad	3689348814741910323
	.align 3
$LC25:
	.quad	1085102592571150095
	.globl __ctzdi2
	.globl __clzdi2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
