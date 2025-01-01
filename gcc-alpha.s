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
	bne $1,$L6
	beq $18,$L6
	addq $16,$18,$18
	mov $16,$2
	.align 4
$L8:
	lda $17,1($17)
	lda $2,1($2)
	lda $4,-1($2)
	ldq_u $1,-1($17)
	cmpeq $18,$2,$5
	ldq_u $3,-1($2)
	extqh $1,$17,$1
	mskbl $3,$4,$3
	sra $1,56,$1
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,-1($2)
	beq $5,$L8
$L6:
	ret $31,($26),1
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
	bne $19,$L18
	br $31,$L20
	.align 4
$L21:
	lda $17,1($17)
	cpys $f31,$f31,$f31
	lda $16,1($16)
	beq $19,$L20
$L18:
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
	beq $1,$L21
	lda $0,1($16)
	ret $31,($26),1
	.align 4
$L20:
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
	bne $18,$L28
	br $31,$L31
	.align 4
$L30:
	lda $16,1($16)
	beq $18,$L31
$L28:
	lda $18,-1($18)
	ldq_u $1,0($16)
	extbl $1,$16,$1
	cmpeq $1,$17,$1
	beq $1,$L30
	mov $16,$0
	ret $31,($26),1
	.align 4
$L31:
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
	beq $18,$L38
	.align 4
$L45:
	ldq_u $2,0($16)
	bis $31,$31,$31
	lda $18,-1($18)
	ldq_u $3,0($17)
	extbl $2,$16,$1
	extbl $3,$17,$4
	cmpeq $1,$4,$1
	beq $1,$L44
	lda $16,1($16)
	cpys $f31,$f31,$f31
	lda $17,1($17)
	bne $18,$L45
$L38:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L44:
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
	beq $18,$L47
	ldq $27,memcpy($29)		!literal!2
	jsr $26,($27),memcpy		!lituse_jsr!2
	ldah $29,0($26)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
$L47:
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
	br $31,$L52
	.align 4
$L54:
	lda $18,-1($18)
	ldq_u $1,0($0)
	extbl $1,$0,$1
	cmpeq $1,$17,$1
	bne $1,$L51
$L52:
	cmpeq $18,$16,$1
	mov $18,$0
	beq $1,$L54
	mov $31,$0
$L51:
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
	beq $18,$L58
	and $17,0xff,$17
	ldq $27,memset($29)		!literal!5
	jsr $26,($27),memset		!lituse_jsr!5
	ldah $29,0($26)		!gpdisp!6
	lda $29,0($29)		!gpdisp!6
	bis $31,$31,$31
$L58:
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
	beq $1,$L60
	.align 4
$L61:
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
	bne $1,$L61
$L60:
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
	bne $1,$L67
	ret $31,($26),1
	.align 4
$L69:
	mov $2,$0
	lda $2,1($2)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L66
$L67:
	and $1,0xff,$1
	cmpeq $1,$17,$1
	beq $1,$L69
$L66:
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
	br $31,$L75
	.align 4
$L78:
	mov $2,$0
	beq $1,$L77
$L75:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,$17,$3
	beq $3,$L78
	ret $31,($26),1
	.align 4
$L77:
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
	br $31,$L87
	.align 4
$L80:
	mov $3,$16
	beq $1,$L88
	mov $4,$17
	ldq_u $1,0($16)
	lda $3,1($3)
	lda $4,1($4)
$L87:
	extqh $1,$3,$1
	ldq_u $2,0($17)
	sra $1,56,$1
	extqh $2,$4,$2
	sra $2,56,$2
	cmpeq $1,$2,$5
	bne $5,$L80
	and $1,0xff,$0
	and $2,0xff,$2
	subl $0,$2,$0
	ret $31,($26),1
	.align 4
$L88:
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
	beq $1,$L89
	.align 4
$L91:
	mov $2,$0
	lda $2,1($2)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L91
	subq $0,$16,$0
$L89:
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
	beq $18,$L96
	lda $18,-1($18)
	ldq_u $0,0($16)
	mov $17,$3
	addq $17,$18,$5
	extbl $0,$16,$0
	bne $0,$L99
	br $31,$L105
	.align 4
$L100:
	ldq_u $0,0($16)
	extbl $0,$16,$0
	beq $0,$L106
	mov $7,$3
$L99:
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
	bne $1,$L100
	addl $31,$0,$0
	subl $0,$2,$0
$L96:
	ret $31,($26),1
	.align 4
$L106:
	ldq_u $2,1($3)
	extbl $2,$7,$2
	subl $0,$2,$0
	ret $31,($26),1
$L105:
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
	bne $1,$L107
	bic $18,1,$18
	addq $16,$18,$5
	.align 4
$L109:
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
	beq $1,$L109
$L107:
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
	bne $1,$L122
	ldah $1,-1($16)
	addl $1,7,$1
	lda $16,-8232($16)
	zapnot $16,15,$16
	zapnot $1,15,$1
	cmpule $16,1,$16
	cmpule $1,2,$1
	cmoveq $16,$1,$0
$L122:
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
	bne $1,$L132
	lda $1,-8234($16)
	zapnot $1,15,$1
	ldah $3,1($31)
	lda $4,-18475($3)
	cmpule $1,$4,$1
	lda $4,8231($31)
	cmpule $2,$4,$2
	lda $0,1($31)
	bis $1,$2,$1
	bne $1,$L128
	ldah $2,-1($31)
	lda $1,8192($2)
	addl $16,$1,$1
	zapnot $1,15,$1
	lda $4,8184($31)
	cmpule $1,$4,$1
	bne $1,$L128
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
$L128:
	ret $31,($26),1
	.align 4
$L132:
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
	fbne $f10,$L140
	cmptun $f17,$f17,$f10
	fbne $f10,$L141
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L144
	subt $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L144:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.align 4
$L140:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L141:
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
	fbne $f11,$L148
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	fbne $f12,$L149
	cmptlt $f11,$f10,$f12
	fbeq $f12,$L152
	subs $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L152:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.align 4
$L148:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L149:
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
	fbne $f10,$L156
	cmptun $f17,$f17,$f10
	fbne $f10,$L157
	stt $f16,0($30)
	ldq $1,0($30)
	stt $f17,0($30)
	ldq $3,0($30)
	srl $1,63,$2
	srl $3,63,$1
	cmpeq $2,$1,$1
	beq $1,$L159
	cmptlt $f16,$f17,$f10
	cpys $f16,$f16,$f0
	fcmovne $f10,$f17,$f0
$L153:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L159:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	bne $2,$L153
$L157:
	cpys $f16,$f16,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L156:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L153
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
	fbne $f11,$L163
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	cpys $f31,$f31,$f31
	fbne $f12,$L164
	ldah $1,-32768($31)
	ldl $3,16($30)
	and $1,$3,$2
	ldl $3,0($30)
	addl $31,$2,$2
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L162
	cpys $f17,$f17,$f0
	bne $2,$L160
	cpys $f16,$f16,$f0
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L162:
	.cfi_restore_state
	cmptlt $f10,$f11,$f12
	lds $f0,16($30)
	lds $f10,0($30)
	fcmovne $f12,$f10,$f0
$L160:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L163:
	.cfi_restore_state
	lds $f0,0($30)
	br $31,$L160
	.align 4
$L164:
	lds $f0,16($30)
	br $31,$L160
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
	blt $0,$L172
	mov $9,$16
	ldq $27,_OtsEqlX($29)		!literal!10
	mov $15,$17
	mov $9,$18
	mov $15,$19
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!10
	ldah $29,0($26)		!gpdisp!11
	lda $29,0($29)		!gpdisp!11
	blt $0,$L167
	srl $11,63,$4
	srl $15,63,$3
	cmpeq $4,$3,$3
	bne $3,$L168
	cmovne $4,$9,$14
	cmovne $4,$15,$11
$L167:
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
$L168:
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
	cmplt $31,$0,$0
	lda $29,0($29)		!gpdisp!9
	cmovne $0,$9,$14
	cmovne $0,$15,$11
	br $31,$L167
	.align 4
$L172:
	mov $9,$14
	cpys $f31,$f31,$f31
	mov $15,$11
	br $31,$L167
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
	fbne $f10,$L178
	cmptun $f17,$f17,$f10
	fbne $f10,$L179
	stt $f16,0($30)
	ldq $1,0($30)
	stt $f17,0($30)
	ldq $3,0($30)
	srl $1,63,$2
	srl $3,63,$1
	cmpeq $2,$1,$1
	beq $1,$L181
	cmptlt $f16,$f17,$f10
	cpys $f17,$f17,$f0
	fcmovne $f10,$f16,$f0
$L175:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L181:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	bne $2,$L175
$L178:
	cpys $f17,$f17,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L179:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	br $31,$L175
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
	fbne $f11,$L185
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	cpys $f31,$f31,$f31
	fbne $f12,$L186
	ldah $1,-32768($31)
	ldl $3,0($30)
	and $1,$3,$2
	ldl $3,16($30)
	addl $31,$2,$2
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L184
	cpys $f16,$f16,$f0
	bne $2,$L182
	cpys $f17,$f17,$f0
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L184:
	.cfi_restore_state
	cmptlt $f10,$f11,$f12
	lds $f0,16($30)
	lds $f10,0($30)
	fcmovne $f12,$f10,$f0
$L182:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L185:
	.cfi_restore_state
	lds $f0,16($30)
	br $31,$L182
	.align 4
$L186:
	lds $f0,0($30)
	br $31,$L182
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
	blt $0,$L189
	mov $13,$16
	ldq $27,_OtsEqlX($29)		!literal!17
	mov $12,$17
	mov $13,$18
	mov $12,$19
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!17
	ldah $29,0($26)		!gpdisp!18
	lda $29,0($29)		!gpdisp!18
	blt $0,$L194
	srl $14,63,$5
	srl $12,63,$4
	cmpeq $5,$4,$4
	bne $4,$L190
	cmovne $5,$15,$13
	cmovne $5,$14,$12
$L189:
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
$L190:
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
	cmplt $31,$0,$0
	lda $29,0($29)		!gpdisp!16
	cmovne $0,$15,$13
	cmovne $0,$14,$12
	br $31,$L189
	.align 4
$L194:
	mov $15,$13
	cpys $f31,$f31,$f31
	mov $14,$12
	br $31,$L189
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
	beq $16,$L198
	ldah $5,digits($29)		!gprelhigh
	lda $5,digits($5)		!gprellow
	.align 4
$L199:
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
	bne $16,$L199
$L198:
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
	beq $17,$L210
	ldq $1,0($17)
	stq $17,8($16)
	stq $1,0($16)
	stq $16,0($17)
	ldq $1,0($16)
	beq $1,$L204
	stq $16,8($1)
$L204:
	ret $31,($26),1
	.align 4
$L210:
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
	beq $1,$L212
	ldq $2,8($16)
	stq $2,8($1)
$L212:
	ldq $2,8($16)
	beq $2,$L211
	stq $1,0($2)
$L211:
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
	beq $10,$L221
	mov $17,$14
	mov $31,$15
	br $31,$L223
	.align 4
$L235:
	cmpeq $10,$15,$2
	cpys $f31,$f31,$f31
	addq $14,$9,$14
	bne $2,$L221
$L223:
	mov $14,$17
	mov $11,$16
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!27
	lda $29,0($29)		!gpdisp!27
	mov $14,$12
	lda $15,1($15)
	bis $31,$31,$31
	bne $0,$L235
$L220:
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
$L221:
	.cfi_restore_state
	mulq $9,$10,$12
	ldq $1,64($30)
	lda $10,1($10)
	stq $10,0($1)
	ldq $1,72($30)
	bis $31,$31,$31
	addq $1,$12,$12
	beq $9,$L220
	mov $9,$18
	ldq $27,memmove($29)		!literal!25
	mov $11,$17
	mov $12,$16
	jsr $26,($27),memmove		!lituse_jsr!25
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
	br $31,$L220
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
	beq $12,$L237
	mov $17,$9
	mov $31,$14
	br $31,$L239
	.align 4
$L247:
	cmpeq $12,$14,$1
	cpys $f31,$f31,$f31
	addq $9,$13,$9
	bne $1,$L237
$L239:
	mov $9,$17
	mov $10,$16
	mov $11,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!29
	lda $29,0($29)		!gpdisp!29
	mov $9,$15
	lda $14,1($14)
	bis $31,$31,$31
	bne $0,$L247
$L236:
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
$L237:
	.cfi_restore_state
	mov $31,$15
	br $31,$L236
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
	lda $4,1($16)
	br $31,$L270
	.align 4
$L272:
	mov $4,$16
	lda $4,1($4)
$L270:
	ldq_u $1,0($16)
	extqh $1,$4,$3
	sra $3,56,$3
	subl $3,9,$2
	zapnot $2,15,$2
	cmpeq $3,32,$5
	cmpule $2,4,$2
	bis $2,$5,$2
	bne $2,$L272
	cmpeq $3,43,$2
	bne $2,$L252
	cmpeq $3,45,$3
	bis $31,$31,$31
	beq $3,$L273
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $4,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L257
	lda $6,1($31)
$L255:
	mov $31,$0
	lda $2,1($16)
	.align 4
$L258:
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
	bne $3,$L258
	subl $4,$5,$4
	cmoveq $6,$4,$0
$L257:
	ret $31,($26),1
	.align 4
$L273:
	extqh $1,$4,$1
	mov $31,$6
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	bne $2,$L255
$L271:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L252:
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$6
	mov $4,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	bne $2,$L255
	br $31,$L271
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
	lda $4,1($16)
	br $31,$L295
	.align 4
$L297:
	mov $4,$16
	lda $4,1($4)
$L295:
	ldq_u $1,0($16)
	extqh $1,$4,$3
	sra $3,56,$3
	subl $3,9,$2
	zapnot $2,15,$2
	cmpeq $3,32,$5
	cmpule $2,4,$2
	bis $2,$5,$2
	bne $2,$L297
	cmpeq $3,43,$2
	bne $2,$L277
	cmpeq $3,45,$3
	bis $31,$31,$31
	beq $3,$L298
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $4,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L274
	lda $6,1($31)
$L280:
	mov $31,$0
	lda $2,1($16)
	.align 4
$L283:
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
	bne $3,$L283
	subq $4,$5,$4
	cmoveq $6,$4,$0
$L274:
	ret $31,($26),1
	.align 4
$L298:
	extqh $1,$4,$1
	mov $31,$6
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	bne $2,$L280
$L296:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L277:
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$6
	mov $4,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	bne $2,$L280
	br $31,$L296
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
	lda $4,1($16)
	br $31,$L318
	.align 4
$L320:
	mov $4,$16
	lda $4,1($4)
$L318:
	ldq_u $1,0($16)
	extqh $1,$4,$3
	sra $3,56,$3
	subl $3,9,$2
	zapnot $2,15,$2
	cmpeq $3,32,$5
	cmpule $2,4,$2
	bis $2,$5,$2
	bne $2,$L320
	cmpeq $3,43,$2
	bne $2,$L302
	cmpeq $3,45,$3
	bis $31,$31,$31
	beq $3,$L303
	lda $2,2($16)
	ldq_u $1,1($16)
	lda $6,1($31)
	mov $4,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L319
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
$L299:
	ret $31,($26),1
	.align 4
$L303:
	extqh $1,$4,$1
	mov $31,$6
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	bne $2,$L304
$L319:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L302:
	lda $2,2($16)
	ldq_u $1,1($16)
	mov $31,$0
	mov $4,$16
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$2
	cmpule $2,9,$2
	beq $2,$L299
	mov $31,$6
	br $31,$L304
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
$L334:
	beq $9,$L322
$L335:
	srl $9,1,$15
	mov $14,$16
	mulq $15,$11,$10
	mov $13,$27
	lda $9,-1($9)
	addq $12,$10,$10
	mov $10,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!31
	lda $29,0($29)		!gpdisp!31
	blt $0,$L326
	addq $10,$11,$12
	beq $0,$L321
	subq $9,$15,$9
	bne $9,$L335
$L322:
	mov $31,$10
	bis $31,$31,$31
$L321:
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
$L326:
	.cfi_restore_state
	mov $15,$9
	br $31,$L334
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
$L348:
	bis $31,$31,$31
	beq $9,$L349
$L337:
	sra $9,1,$12
	ldq $18,64($30)
	mov $14,$16
	mulq $12,$10,$15
	mov $13,$27
	subl $9,1,$9
	addq $11,$15,$15
	mov $15,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!33
	lda $29,0($29)		!gpdisp!33
	beq $0,$L336
	sra $9,1,$9
	ble $0,$L341
	addq $15,$10,$11
	bne $9,$L337
$L349:
	mov $31,$15
	bis $31,$31,$31
$L336:
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
$L341:
	.cfi_restore_state
	mov $12,$9
	br $31,$L348
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
	br $31,$L364
	.align 4
$L366:
	cmpeq $17,$1,$1
	bne $1,$L365
	lda $16,4($16)
$L364:
	ldl $1,0($16)
	bne $1,$L366
	mov $31,$0
	ret $31,($26),1
	.align 4
$L365:
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
	bne $2,$L368
	br $31,$L369
	.align 4
$L370:
	ldl $1,0($16)
	bis $31,$31,$31
	lda $17,4($17)
	ldl $0,0($17)
	cmpeq $1,$0,$2
	beq $2,$L369
$L368:
	lda $16,4($16)
	bne $1,$L370
$L369:
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
$L375:
	lda $1,4($1)
	ldl $2,0($17)
	lda $17,4($17)
	stl $2,-4($1)
	bne $2,$L375
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
	beq $1,$L377
	mov $16,$0
	.align 4
$L379:
	lda $0,4($0)
	ldl $1,0($0)
	bne $1,$L379
	subq $0,$16,$0
	sra $0,2,$0
$L377:
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
$L386:
	beq $18,$L389
	ldl $2,0($16)
	lda $18,-1($18)
	ldl $3,0($17)
	lda $16,4($16)
	cmpult $31,$2,$4
	cmpeq $3,$2,$1
	lda $17,4($17)
	and $1,$4,$1
	bne $1,$L386
	cmplt $2,$3,$1
	cmplt $3,$2,$0
	lda $2,-1($31)
	cmovne $1,$2,$0
	ret $31,($26),1
	.align 4
$L389:
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
	beq $18,$L398
	.align 4
$L403:
	lda $18,-1($18)
	ldl $1,0($16)
	cmpeq $1,$17,$1
	bne $1,$L402
	lda $16,4($16)
	bne $18,$L403
$L398:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L402:
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
$L407:
	beq $18,$L410
	ldl $2,0($16)
	lda $18,-1($18)
	ldl $1,0($17)
	lda $16,4($16)
	lda $17,4($17)
	cmpeq $2,$1,$3
	bne $3,$L407
	cmplt $2,$1,$3
	cmplt $1,$2,$0
	lda $1,-1($31)
	cmovne $3,$1,$0
	ret $31,($26),1
	.align 4
$L410:
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
	beq $18,$L416
	s4addq $18,0,$18
	ldq $27,memcpy($29)		!literal!47
	jsr $26,($27),memcpy		!lituse_jsr!47
	ldah $29,0($26)		!gpdisp!48
	lda $29,0($29)		!gpdisp!48
	bis $31,$31,$31
$L416:
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
	bne $1,$L428
	s4addq $18,0,$1
	subq $16,$17,$2
	cmpult $2,$1,$2
	cpys $f31,$f31,$f31
	lda $1,-1($18)
	beq $2,$L434
	beq $18,$L428
	s4addq $1,0,$1
	.align 4
$L425:
	addq $17,$1,$2
	addq $0,$1,$3
	lda $1,-4($1)
	ldl $4,0($2)
	lda $2,4($1)
	stl $4,0($3)
	bne $2,$L425
	ret $31,($26),1
	.align 4
$L434:
	mov $16,$2
	beq $18,$L435
	.align 4
$L423:
	lda $2,4($2)
	ldl $4,0($17)
	lda $1,-1($1)
	lda $3,1($1)
	stl $4,-4($2)
	lda $17,4($17)
	bne $3,$L423
$L428:
	ret $31,($26),1
	.align 4
$L435:
	ret $31,($26),1
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
	lda $1,-1($18)
	beq $18,$L437
	mov $16,$2
	.align 4
$L438:
	lda $1,-1($1)
	stl $17,0($2)
	lda $3,1($1)
	cpys $f31,$f31,$f31
	lda $2,4($2)
	bne $3,$L438
$L437:
	ret $31,($26),1
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
	beq $1,$L444
	addq $16,$18,$2
	cpys $f31,$f31,$f31
	addq $17,$18,$17
	beq $18,$L443
	.align 4
$L446:
	lda $2,-1($2)
	lda $17,-1($17)
	lda $5,1($2)
	ldq_u $1,0($2)
	cmpeq $16,$2,$4
	ldq_u $3,0($17)
	extqh $1,$5,$1
	mskbl $3,$17,$3
	sra $1,56,$1
	insbl $1,$17,$1
	bis $1,$3,$1
	stq_u $1,0($17)
	beq $4,$L446
	ret $31,($26),1
	.align 4
$L444:
	cmpeq $16,$17,$1
	bne $1,$L443
	beq $18,$L443
	addq $16,$18,$18
	.align 4
$L447:
	lda $16,1($16)
	lda $17,1($17)
	lda $3,-1($17)
	ldq_u $1,-1($16)
	cmpeq $18,$16,$4
	ldq_u $2,-1($17)
	extqh $1,$16,$1
	mskbl $2,$3,$2
	sra $1,56,$1
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,-1($17)
	beq $4,$L447
$L443:
	ret $31,($26),1
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
	br $31,$L472
	.align 4
$L475:
	cmpeq $1,32,$1
	bne $1,$L474
$L472:
	srl $16,$0,$2
	addl $0,1,$0
	zapnot $0,15,$1
	cpys $f31,$f31,$f31
	addl $31,$0,$0
	blbc $2,$L475
	ret $31,($26),1
	.align 4
$L474:
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
	beq $16,$L477
	and $16,1,$0
	bne $0,$L477
	lda $0,1($31)
	.align 4
$L478:
	sra $16,1,$16
	addl $0,1,$0
	blbc $16,$L478
$L477:
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
	fbne $f10,$L484
	ldah $1,$LC2($29)		!gprelhigh
	lds $f11,$LC2($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L487
	addl $31,$0,$0
$L484:
	ret $31,($26),1
	.align 4
$L487:
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
	fbne $f10,$L489
	ldah $1,$LC6($29)		!gprelhigh
	ldt $f11,$LC6($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L492
	addl $31,$0,$0
$L489:
	ret $31,($26),1
	.align 4
$L492:
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
	bgt $0,$L494
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
	lda $29,0($29)		!gpdisp!53
	cmplt $31,$0,$1
$L494:
	ldq $26,0($30)
	ldq $10,8($30)
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
	fbne $f11,$L498
	adds $f16,$f16,$f11
	cmpteq $f11,$f10,$f10
	fbne $f10,$L498
	ldah $2,$LC9($29)		!gprelhigh
	cmplt $17,0,$1
	cpys $f31,$f31,$f31
	lds $f10,$LC9($2)		!gprellow
	bne $1,$L510
	blbc $17,$L500
	.align 4
$L501:
	muls $f0,$f10,$f0
$L500:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	bis $31,$31,$31
	beq $17,$L498
	muls $f10,$f10,$f10
	srl $17,63,$1
	bis $31,$31,$31
	blbs $17,$L501
$L511:
	addq $1,$17,$17
	muls $f10,$f10,$f10
	sra $17,1,$17
	cpys $f31,$f31,$f31
	srl $17,63,$1
	blbs $17,$L501
	br $31,$L511
	.align 4
$L498:
	ret $31,($26),1
	.align 4
$L510:
	ldah $1,$LC10($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC10($1)		!gprellow
	blbc $17,$L500
	br $31,$L501
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
	fbne $f10,$L513
	addt $f16,$f16,$f11
	cmpteq $f11,$f16,$f10
	fbne $f10,$L513
	cmplt $17,0,$1
	bne $1,$L525
	ldah $1,$LC9($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC9($1)		!gprellow
	blbc $17,$L515
	.align 4
$L516:
	mult $f0,$f10,$f0
$L515:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	bis $31,$31,$31
	beq $17,$L513
	mult $f10,$f10,$f10
	srl $17,63,$1
	bis $31,$31,$31
	blbs $17,$L516
$L526:
	addq $1,$17,$17
	mult $f10,$f10,$f10
	sra $17,1,$17
	cpys $f31,$f31,$f31
	srl $17,63,$1
	blbs $17,$L516
	br $31,$L526
	.align 4
$L513:
	ret $31,($26),1
	.align 4
$L525:
	ldah $1,$LC10($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC10($1)		!gprellow
	blbc $17,$L515
	br $31,$L516
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
	blt $0,$L528
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
	bgt $0,$L528
	cmplt $11,0,$2
	bne $2,$L540
	ldah $3,$LC13($29)		!gprelhigh
	lda $3,$LC13($3)		!gprellow
	ldq $2,0($3)
	ldq $3,8($3)
$L529:
	blbc $11,$L530
	.align 4
$L531:
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
$L530:
	srl $11,63,$4
	addq $4,$11,$1
	sra $1,1,$11
	beq $11,$L528
$L532:
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
	blbs $11,$L531
	sra $4,1,$11
	br $31,$L532
	.align 4
$L528:
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
$L540:
	.cfi_restore_state
	ldah $3,$LC14($29)		!gprelhigh
	lda $3,$LC14($3)		!gprellow
	ldq $2,0($3)
	bis $31,$31,$31
	ldq $3,8($3)
	br $31,$L529
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
	beq $18,$L542
	addq $17,$18,$18
	mov $16,$2
	.align 4
$L543:
	lda $17,1($17)
	lda $2,1($2)
	lda $4,-1($2)
	ldq_u $5,-1($17)
	lda $1,-1($17)
	ldq_u $3,-1($2)
	cmpeq $18,$17,$6
	extbl $5,$1,$5
	extbl $3,$4,$1
	mskbl $3,$4,$3
	xor $1,$5,$1
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,-1($2)
	beq $6,$L543
$L542:
	ret $31,($26),1
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
	beq $1,$L555
	.align 4
$L550:
	mov $2,$1
	lda $2,1($2)
	ldq_u $3,0($1)
	extqh $3,$2,$4
	sra $4,56,$4
	bne $4,$L550
$L561:
	beq $18,$L562
	.align 4
$L551:
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
	beq $2,$L563
	lda $1,1($1)
	ldq_u $3,0($1)
	bne $18,$L551
$L562:
	mskbl $3,$1,$3
	stq_u $3,0($1)
	ret $31,($26),1
	.align 4
$L563:
	ret $31,($26),1
	.align 4
$L555:
	mov $16,$1
	br $31,$L561
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
	beq $17,$L572
$L565:
	addq $16,$0,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L567
	ret $31,($26),1
	.align 4
$L567:
	lda $0,1($0)
	cmpeq $17,$0,$1
	beq $1,$L565
	ret $31,($26),1
	.align 4
$L572:
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
	beq $4,$L578
$L582:
	mov $17,$2
	br $31,$L577
	.align 4
$L576:
	bis $31,$31,$31
	bne $3,$L575
$L577:
	lda $3,1($2)
	ldq_u $1,0($2)
	mov $3,$2
	extqh $1,$3,$1
	sra $1,56,$1
	cpys $f31,$f31,$f31
	cmpeq $1,$4,$3
	bne $1,$L576
	mov $5,$0
	lda $5,1($0)
	ldq_u $4,0($0)
	extqh $4,$5,$4
	sra $4,56,$4
	bne $4,$L582
$L578:
	mov $31,$0
$L575:
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
$L585:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $17,$1,$3
	cmovne $3,$16,$0
	mov $2,$16
	bne $1,$L585
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
	beq $22,$L587
	.align 4
$L589:
	mov $2,$3
	lda $2,1($2)
	ldq_u $1,0($3)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L589
	subq $3,$17,$3
	cpys $f31,$f31,$f31
	mov $16,$0
	beq $3,$L587
	lda $23,-1($17)
	and $22,0xff,$24
	addq $23,$3,$23
	br $31,$L595
	.align 4
$L606:
	mov $5,$16
	beq $1,$L605
$L595:
	lda $5,1($16)
	ldq_u $1,0($16)
	extqh $1,$5,$1
	sra $1,56,$1
	cmpeq $1,$22,$2
	beq $2,$L606
	mov $24,$3
	mov $17,$2
	mov $16,$6
	br $31,$L591
	.align 4
$L593:
	lda $2,1($2)
	ldq_u $3,0($6)
	extbl $3,$6,$3
	beq $3,$L607
$L591:
	cmpeq $2,$23,$1
	ldq_u $8,0($2)
	lda $6,1($6)
	cmpeq $1,0,$1
	extbl $8,$2,$4
	cmpeq $4,$3,$7
	cmpult $31,$4,$4
	and $7,$4,$4
	and $1,$4,$1
	bne $1,$L593
$L592:
	extbl $8,$2,$8
	cmpeq $8,$3,$8
	bne $8,$L598
	mov $5,$16
	br $31,$L595
	.align 4
$L605:
	mov $31,$0
	ret $31,($26),1
$L598:
	mov $16,$0
$L587:
	ret $31,($26),1
	.align 4
$L607:
	ldq_u $8,0($2)
	br $31,$L592
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
	fbne $f10,$L618
	cmptlt $f31,$f16,$f10
	fbeq $f10,$L612
	cmptlt $f17,$f31,$f10
	fbne $f10,$L611
$L612:
	ret $31,($26),1
	.align 4
$L618:
	cmptlt $f31,$f17,$f10
	fbeq $f10,$L612
$L611:
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
	beq $19,$L619
	cmpult $17,$19,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L619
	subq $17,$19,$7
	addq $16,$7,$7
	cmpule $16,$7,$1
	beq $1,$L619
	lda $22,1($18)
	ldq_u $8,0($18)
	cmpeq $19,1,$23
	addq $18,$19,$6
	extqh $8,$22,$8
	cpys $f31,$f31,$f31
	sra $8,56,$8
	br $31,$L624
	.align 4
$L621:
	cmpult $7,$5,$5
	bne $5,$L631
$L624:
	lda $5,1($16)
	ldq_u $1,0($16)
	mov $16,$0
	mov $5,$16
	extqh $1,$5,$1
	sra $1,56,$1
	cmpeq $1,$8,$1
	beq $1,$L621
	mov $22,$2
	bne $23,$L632
	mov $5,$4
	.align 4
$L622:
	ldq_u $3,0($2)
	ldq_u $1,0($4)
	extbl $3,$2,$3
	extbl $1,$4,$1
	lda $2,1($2)
	cmpeq $1,$3,$1
	cmpeq $2,$6,$3
	beq $1,$L621
	lda $4,1($4)
	beq $3,$L622
	ret $31,($26),1
	.align 4
$L631:
	mov $31,$0
$L619:
	ret $31,($26),1
$L632:
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
	beq $18,$L634
	ldq $27,memmove($29)		!literal!73
	jsr $26,($27),memmove		!lituse_jsr!73
	ldah $29,0($26)		!gpdisp!74
	lda $29,0($29)		!gpdisp!74
$L634:
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
	fbne $f10,$L661
	ldah $1,$LC20($29)		!gprelhigh
	mov $31,$3
	lds $f11,$LC20($1)		!gprellow
	cmptle $f11,$f16,$f10
	bis $31,$31,$31
	fbeq $f10,$L662
$L641:
	ldah $2,$LC10($29)		!gprelhigh
	lds $f12,$LC20($1)		!gprellow
	mov $31,$1
	lds $f11,$LC10($2)		!gprellow
	.align 4
$L647:
	mult $f16,$f11,$f16
	addl $1,1,$1
	cmptle $f12,$f16,$f10
	fbne $f10,$L647
	stl $1,0($17)
	cpys $f16,$f16,$f0
	beq $3,$L638
$L664:
	cpysn $f16,$f16,$f0
$L638:
	ret $31,($26),1
	.align 4
$L662:
	ldah $2,$LC10($29)		!gprelhigh
	lds $f11,$LC10($2)		!gprellow
	cmptlt $f16,$f11,$f10
	fbeq $f10,$L644
	cmpteq $f16,$f31,$f10
	fbeq $f10,$L653
$L644:
	cpys $f16,$f16,$f0
	stl $31,0($17)
	ret $31,($26),1
	.align 4
$L661:
	ldah $1,$LC16($29)		!gprelhigh
	cpysn $f16,$f16,$f12
	lds $f11,$LC16($1)		!gprellow
	cmptle $f16,$f11,$f10
	cpys $f31,$f31,$f31
	fbeq $f10,$L663
	cpys $f12,$f12,$f16
	lda $3,1($31)
	ldah $1,$LC20($29)		!gprelhigh
	br $31,$L641
	.align 4
$L663:
	ldah $1,$LC18($29)		!gprelhigh
	lds $f11,$LC18($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L644
	lda $3,1($31)
	ldah $2,$LC10($29)		!gprelhigh
$L642:
	cpys $f12,$f12,$f16
	mov $31,$1
	lds $f11,$LC10($2)		!gprellow
	.align 4
$L649:
	addt $f16,$f16,$f16
	subl $1,1,$1
	cmptlt $f16,$f11,$f10
	fbne $f10,$L649
	stl $1,0($17)
	cpys $f16,$f16,$f0
	bne $3,$L664
	ret $31,($26),1
$L653:
	cpys $f16,$f16,$f12
	br $31,$L642
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
	beq $16,$L665
	.align 4
$L667:
	and $16,1,$1
	subq $31,$1,$1
	srl $16,1,$16
	and $1,$17,$1
	addq $0,$1,$0
	cpys $f31,$f31,$f31
	addq $17,$17,$17
	bne $16,$L667
$L665:
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
	bne $4,$L672
	br $31,$L673
	.align 4
$L675:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L674
$L672:
	addl $17,$17,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$3,$2
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L675
	zapnot $17,15,$2
	bis $31,$31,$31
$L673:
	mov $31,$0
	br $31,$L678
	.align 4
$L687:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L678:
	cmpult $3,$2,$3
	zapnot $1,15,$4
	bis $1,$0,$1
	bne $3,$L677
	subl $16,$17,$16
	addl $31,$1,$0
$L677:
	srl $4,1,$1
	srl $2,1,$17
	bne $1,$L687
$L676:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L674:
	mov $31,$0
	beq $1,$L676
	zapnot $17,15,$2
	br $31,$L673
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
	bne $2,$L689
	sll $16,8,$16
	ldq $27,__clzdi2($29)		!literal!77
	zapnot $16,14,$16
	jsr $26,($27),__clzdi2		!lituse_jsr!77
	ldah $29,0($26)		!gpdisp!78
	lda $29,0($29)		!gpdisp!78
	subl $0,33,$0
$L689:
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
	bne $2,$L692
	ldq $27,__clzdi2($29)		!literal!80
	jsr $26,($27),__clzdi2		!lituse_jsr!80
	ldah $29,0($26)		!gpdisp!81
	lda $29,0($29)		!gpdisp!81
	subl $0,1,$0
$L692:
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
	beq $16,$L695
	.align 4
$L696:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $1,$0,$0
	addl $17,$17,$17
	bne $16,$L696
$L695:
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
	bne $1,$L704
	addq $17,$6,$1
	cmpule $16,$1,$1
	bne $1,$L715
$L704:
	mov $17,$1
	mov $16,$2
	cpys $f31,$f31,$f31
	s8addq $3,$17,$5
	beq $3,$L703
	.align 4
$L707:
	lda $2,8($2)
	ldq $4,0($1)
	lda $1,8($1)
	cmpeq $1,$5,$3
	stq $4,-8($2)
	beq $3,$L707
$L703:
	zapnot $7,15,$1
	cmpule $6,$1,$6
	bne $6,$L700
	subl $18,1,$18
	subl $18,$7,$18
	lda $5,1($17)
	zapnot $18,15,$18
	addq $5,$1,$5
	addq $17,$1,$17
	addq $16,$1,$16
	addq $5,$18,$5
	.align 4
$L708:
	lda $3,1($17)
	ldq_u $1,0($17)
	cmpeq $3,$5,$4
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
	beq $4,$L708
	ret $31,($26),1
	.align 4
$L715:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L716
	.align 4
$L709:
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
	bne $5,$L709
$L700:
	ret $31,($26),1
$L716:
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
	srl $1,1,$4
	bne $2,$L721
	addq $17,$1,$1
	cmpule $16,$1,$1
	bne $1,$L734
$L721:
	addq $4,$4,$7
	mov $17,$3
	mov $16,$2
	addq $7,$17,$7
	beq $4,$L720
	.align 4
$L724:
	lda $5,2($3)
	ldq_u $1,0($3)
	cmpeq $5,$7,$6
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
	beq $6,$L724
$L720:
	blbc $18,$L717
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
$L734:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L735
	.align 4
$L726:
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
	bne $5,$L726
$L717:
	ret $31,($26),1
$L735:
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
	cmpult $16,$17,$1
	srl $6,2,$3
	cpys $f31,$f31,$f31
	bic $18,3,$7
	bne $1,$L740
	addq $17,$6,$1
	cmpule $16,$1,$1
	bne $1,$L751
$L740:
	mov $17,$1
	mov $16,$2
	cpys $f31,$f31,$f31
	s4addq $3,$17,$5
	beq $3,$L739
	.align 4
$L743:
	lda $2,4($2)
	ldl $4,0($1)
	lda $1,4($1)
	cmpeq $1,$5,$3
	stl $4,-4($2)
	beq $3,$L743
$L739:
	zapnot $7,15,$1
	cmpule $6,$1,$6
	bne $6,$L736
	subl $18,1,$18
	subl $18,$7,$18
	lda $5,1($17)
	zapnot $18,15,$18
	addq $5,$1,$5
	addq $17,$1,$17
	addq $16,$1,$16
	addq $5,$18,$5
	.align 4
$L744:
	lda $3,1($17)
	ldq_u $1,0($17)
	cmpeq $3,$5,$4
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
	beq $4,$L744
	ret $31,($26),1
	.align 4
$L751:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L752
	.align 4
$L745:
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
	bne $5,$L745
$L736:
	ret $31,($26),1
$L752:
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
	blt $16,$L761
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqt $f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L761:
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
	blt $16,$L764
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqs $f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L764:
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
	bne $2,$L770
	srl $1,14,$0
	bne $0,$L769
	srl $1,13,$2
	bne $2,$L771
	srl $1,12,$2
	bne $2,$L772
	srl $1,11,$2
	bne $2,$L773
	srl $1,10,$2
	bne $2,$L774
	srl $1,9,$2
	bne $2,$L775
	srl $1,8,$2
	bne $2,$L776
	srl $1,7,$2
	bne $2,$L777
	srl $1,6,$2
	bne $2,$L778
	srl $1,5,$2
	bne $2,$L779
	srl $1,4,$2
	bne $2,$L780
	srl $1,3,$2
	bne $2,$L781
	srl $1,2,$2
	bne $2,$L782
	srl $1,1,$1
	bne $1,$L783
	cmpeq $16,0,$0
	lda $0,15($0)
	ret $31,($26),1
$L783:
	lda $0,14($31)
$L769:
	ret $31,($26),1
$L770:
	mov $31,$0
	ret $31,($26),1
$L781:
	lda $0,12($31)
	ret $31,($26),1
$L771:
	lda $0,2($31)
	ret $31,($26),1
$L772:
	lda $0,3($31)
	ret $31,($26),1
$L773:
	lda $0,4($31)
	ret $31,($26),1
$L774:
	lda $0,5($31)
	ret $31,($26),1
$L775:
	lda $0,6($31)
	ret $31,($26),1
$L776:
	lda $0,7($31)
	ret $31,($26),1
$L777:
	lda $0,8($31)
	ret $31,($26),1
$L778:
	lda $0,9($31)
	ret $31,($26),1
$L779:
	lda $0,10($31)
	ret $31,($26),1
$L780:
	lda $0,11($31)
	ret $31,($26),1
$L782:
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
	blbs $16,$L788
	and $16,2,$1
	bne $1,$L789
	and $16,4,$1
	bne $1,$L790
	and $16,8,$1
	bne $1,$L791
	and $16,16,$1
	bne $1,$L792
	and $16,32,$1
	bne $1,$L793
	and $16,64,$1
	bne $1,$L794
	and $16,128,$1
	bne $1,$L795
	lda $1,256($31)
	and $16,$1,$1
	bne $1,$L796
	lda $1,512($31)
	and $16,$1,$1
	bne $1,$L797
	lda $1,1024($31)
	and $16,$1,$1
	bne $1,$L798
	lda $1,2048($31)
	and $16,$1,$1
	bne $1,$L799
	lda $1,4096($31)
	and $16,$1,$1
	bne $1,$L800
	lda $1,8192($31)
	and $16,$1,$1
	bne $1,$L801
	lda $1,16384($31)
	and $16,$1,$1
	bne $1,$L802
	srl $16,15,$16
	cmpeq $16,0,$0
	lda $0,15($0)
	ret $31,($26),1
$L788:
	mov $31,$0
	ret $31,($26),1
$L789:
	lda $0,1($31)
	ret $31,($26),1
$L800:
	lda $0,12($31)
	ret $31,($26),1
$L790:
	lda $0,2($31)
	ret $31,($26),1
$L791:
	lda $0,3($31)
	ret $31,($26),1
$L792:
	lda $0,4($31)
	ret $31,($26),1
$L793:
	lda $0,5($31)
	ret $31,($26),1
$L794:
	lda $0,6($31)
	ret $31,($26),1
$L795:
	lda $0,7($31)
	ret $31,($26),1
$L796:
	lda $0,8($31)
	ret $31,($26),1
$L797:
	lda $0,9($31)
	ret $31,($26),1
$L798:
	lda $0,10($31)
	ret $31,($26),1
$L799:
	lda $0,11($31)
	ret $31,($26),1
$L801:
	lda $0,13($31)
	ret $31,($26),1
$L802:
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
	fbne $f11,$L810
	cvttq/c $f16,$f16
	stt $f16,0($30)
	ldq $0,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L810:
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
	beq $16,$L814
	.align 4
$L815:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $1,$0,$0
	addl $17,$17,$17
	bne $16,$L815
$L814:
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
	beq $16,$L820
	beq $17,$L820
	.align 4
$L821:
	zapnot $17,15,$2
	and $17,1,$17
	subl $31,$17,$1
	srl $2,1,$17
	and $16,$1,$1
	addl $1,$0,$0
	addl $16,$16,$16
	bne $17,$L821
$L820:
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
	bne $4,$L829
	br $31,$L830
	.align 4
$L832:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L831
$L829:
	addl $17,$17,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$3,$2
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L832
	zapnot $17,15,$2
	bis $31,$31,$31
$L830:
	mov $31,$0
	br $31,$L835
	.align 4
$L844:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L835:
	cmpult $3,$2,$3
	zapnot $1,15,$4
	bis $1,$0,$1
	bne $3,$L834
	subl $16,$17,$16
	addl $31,$1,$0
$L834:
	srl $4,1,$1
	srl $2,1,$17
	bne $1,$L844
$L833:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L831:
	mov $31,$0
	beq $1,$L833
	zapnot $17,15,$2
	br $31,$L830
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
	fbne $f10,$L846
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L849
$L846:
	ret $31,($26),1
	.align 4
$L849:
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
	fbne $f10,$L851
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L854
$L851:
	ret $31,($26),1
	.align 4
$L854:
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
	bne $1,$L867
	mov $31,$0
	beq $17,$L860
	mov $31,$5
$L859:
	lda $2,1($31)
	mov $31,$0
	.align 4
$L861:
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
	bne $3,$L861
	subl $31,$0,$1
	cmovne $5,$1,$0
$L860:
	ret $31,($26),1
	.align 4
$L867:
	subl $31,$17,$17
	cpys $f31,$f31,$f31
	lda $5,1($31)
	br $31,$L859
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
	cpys $f31,$f31,$f31
	mov $31,$8
	beq $1,$L869
	subq $31,$16,$16
	lda $8,1($31)
$L869:
	cmplt $17,0,$1
	beq $1,$L870
	subq $31,$17,$17
	xor $8,1,$8
$L870:
	zapnot $16,15,$3
	zapnot $17,15,$1
	addl $31,$16,$16
	cmpule $3,$1,$4
	addl $31,$17,$17
	cpys $f31,$f31,$f31
	lda $2,1($31)
	beq $4,$L871
	br $31,$L872
	.align 4
$L874:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$2
	beq $1,$L873
$L871:
	addl $17,$17,$7
	addl $2,$2,$6
	zapnot $7,15,$1
	zapnot $6,15,$5
	cmpult $1,$3,$1
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $1,$5,$1
	beq $4,$L874
	zapnot $17,15,$1
	bis $31,$31,$31
$L872:
	mov $31,$0
	br $31,$L877
	.align 4
$L889:
	zapnot $16,15,$3
	zapnot $17,15,$1
$L877:
	cmpult $3,$1,$3
	cpys $f31,$f31,$f31
	zapnot $2,15,$4
	bne $3,$L876
	subl $16,$17,$16
	bis $0,$2,$0
$L876:
	srl $4,1,$2
	srl $1,1,$17
	bne $2,$L889
	zapnot $0,15,$0
$L875:
	subq $31,$0,$1
	cmovne $8,$1,$0
	ret $31,($26),1
	.align 4
$L873:
	mov $31,$0
	beq $2,$L875
	zapnot $17,15,$1
	br $31,$L872
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
	beq $1,$L891
	subq $31,$16,$16
	lda $22,1($31)
$L891:
	subq $31,$17,$3
	cmovge $17,$17,$3
	zapnot $16,15,$8
	zapnot $3,15,$4
	addl $31,$16,$16
	cmpule $8,$4,$2
	addl $31,$3,$3
	cpys $f31,$f31,$f31
	lda $1,1($31)
	beq $2,$L892
	br $31,$L898
	.align 4
$L895:
	addl $31,$7,$3
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L894
$L892:
	addl $3,$3,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$8,$2
	cmpult $31,$5,$5
	cmplt $3,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L895
	.align 4
$L909:
	zapnot $3,15,$4
$L898:
	zapnot $1,15,$1
	cmpule $4,$8,$2
	cpys $f31,$f31,$f31
	srl $1,1,$1
	beq $2,$L897
	subl $16,$3,$16
	zapnot $16,15,$8
$L897:
	srl $4,1,$3
	bne $1,$L909
	subq $31,$8,$0
	cmoveq $22,$8,$0
	ret $31,($26),1
	.align 4
$L894:
	bne $1,$L909
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
	bne $1,$L912
	br $31,$L976
	.align 4
$L915:
	beq $4,$L914
	mov $1,$5
	mov $2,$17
$L912:
	addl $17,$17,$2
	addl $5,$5,$1
	zapnot $2,3,$2
	zapnot $1,3,$1
	cmpult $2,$16,$4
	cmpult $31,$1,$6
	srl $17,15,$3
	and $4,$6,$4
	beq $3,$L915
	cmpult $16,$17,$1
	beq $1,$L937
	mov $31,$1
$L938:
	srl $5,1,$3
	srl $17,1,$4
	zapnot $3,3,$3
	mov $16,$0
	beq $3,$L917
$L919:
	cmpult $16,$4,$2
	bne $2,$L920
	subl $16,$4,$4
	bis $1,$3,$3
	zapnot $4,3,$16
	zapnot $3,3,$1
$L920:
	srl $5,2,$2
	srl $17,2,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	bne $4,$L921
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L921:
	srl $5,3,$2
	srl $17,3,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	bne $4,$L922
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L922:
	srl $5,4,$2
	srl $17,4,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	bne $4,$L923
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L923:
	srl $5,5,$2
	srl $17,5,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	bne $4,$L924
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L924:
	srl $5,6,$2
	srl $17,6,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	bne $4,$L925
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L925:
	srl $5,7,$2
	srl $17,7,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	beq $4,$L977
$L926:
	extwl $5,1,$2
	srl $17,8,$3
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	beq $4,$L978
$L927:
	srl $5,9,$2
	srl $17,9,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	beq $4,$L979
$L928:
	srl $5,10,$2
	srl $17,10,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	beq $4,$L980
$L929:
	srl $5,11,$2
	srl $17,11,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	beq $4,$L981
$L930:
	srl $5,12,$2
	srl $17,12,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	bne $4,$L931
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L931:
	srl $5,13,$2
	srl $17,13,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	bne $4,$L932
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L932:
	srl $5,14,$2
	srl $17,14,$3
	zapnot $2,3,$2
	mov $16,$0
	beq $2,$L917
	cmpult $16,$3,$4
	bne $4,$L933
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	zapnot $2,3,$1
$L933:
	srl $5,15,$5
	srl $17,15,$17
	zapnot $5,3,$5
	mov $16,$0
	beq $5,$L917
	cmpult $16,$17,$2
	mov $31,$0
	bne $2,$L917
	subl $16,$17,$17
	bis $1,1,$1
	zapnot $17,3,$0
	zapnot $1,3,$1
$L917:
	cmoveq $18,$1,$0
	ret $31,($26),1
	.align 4
$L914:
	mov $16,$0
	beq $1,$L917
	cmpult $16,$2,$3
	cpys $f31,$f31,$f31
	lda $4,32767($31)
	bne $3,$L918
	subl $16,$2,$16
	and $5,$4,$3
	zapnot $16,3,$16
	and $17,$4,$4
	mov $1,$5
	cpys $f31,$f31,$f31
	mov $2,$17
	br $31,$L919
	.align 4
$L937:
	subl $16,$17,$16
	zapnot $16,3,$16
	mov $5,$1
	br $31,$L938
	.align 4
$L977:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L926
	.align 4
$L918:
	and $5,$4,$3
	and $17,$4,$4
	mov $1,$5
	mov $2,$17
	mov $31,$1
	br $31,$L919
	.align 4
$L978:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L927
	.align 4
$L979:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L928
	.align 4
$L980:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L929
	.align 4
$L981:
	subl $16,$3,$3
	bis $1,$2,$2
	zapnot $3,3,$16
	cpys $f31,$f31,$f31
	zapnot $2,3,$1
	br $31,$L930
$L976:
	cmpeq $17,$16,$2
	mov $31,$0
	mov $2,$1
	cpys $f31,$f31,$f31
	cmoveq $2,$16,$0
	br $31,$L917
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
	bne $2,$L983
	br $31,$L984
	.align 4
$L986:
	addq $17,$17,$17
	addq $1,$1,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L985
$L983:
	and $17,$4,$2
	beq $2,$L986
$L984:
	mov $31,$0
	.align 4
$L989:
	cmpult $16,$17,$2
	bne $2,$L988
	subq $16,$17,$16
	bis $0,$1,$0
$L988:
	srl $1,1,$1
	srl $17,1,$17
	bne $1,$L989
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L985:
	mov $31,$0
	bne $1,$L984
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
	beq $1,$L999
	lda $17,32($17)
	sll $16,$17,$16
	mov $31,$0
	addl $31,$16,$16
$L1000:
	sll $16,32,$16
	zapnot $0,15,$0
	bis $0,$16,$0
$L998:
	ret $31,($26),1
	.align 4
$L999:
	mov $16,$0
	beq $17,$L998
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
	br $31,$L1000
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
	beq $1,$L1005
	sll $17,$19,$18
	mov $31,$17
$L1007:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1005:
	beq $19,$L1007
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
	beq $1,$L1012
	sra $16,32,$1
	sra $16,63,$16
	subl $17,32,$17
	addl $31,$16,$0
	sra $1,$17,$1
$L1013:
	zapnot $1,15,$1
	sll $0,32,$0
	bis $0,$1,$0
$L1011:
	ret $31,($26),1
	.align 4
$L1012:
	mov $16,$0
	beq $17,$L1011
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
	br $31,$L1013
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
	beq $1,$L1018
	sra $18,63,$1
	sra $18,$19,$17
$L1019:
	mov $1,$18
$L1020:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1018:
	beq $19,$L1020
	subq $31,$19,$2
	sll $18,$2,$2
	srl $17,$19,$17
	sra $18,$19,$1
	cpys $f31,$f31,$f31
	bis $2,$17,$17
	br $31,$L1019
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
	bne $3,$L1029
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L1029
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1029
	cmpult $17,$16,$0
	lda $0,1($0)
$L1029:
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
	bne $3,$L1035
	cmple $1,$2,$1
	lda $0,1($31)
	beq $1,$L1035
	zapnot $16,15,$16
	zapnot $17,15,$17
	lda $2,-1($31)
	cmpult $16,$17,$1
	cmpult $17,$16,$0
	cmovne $1,$2,$0
$L1035:
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
	bne $1,$L1040
	cmple $17,$19,$17
	cpys $f31,$f31,$f31
	lda $0,2($31)
	beq $17,$L1040
	cmpult $16,$18,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1040
	cmpult $18,$16,$0
	lda $0,1($0)
$L1040:
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
	bne $16,$L1048
	mov $31,$0
	bne $17,$L1052
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L1048:
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
$L1052:
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
	beq $1,$L1054
	srl $16,32,$16
	lda $17,32($17)
	srl $16,$17,$16
	mov $31,$1
	addl $31,$16,$0
$L1055:
	sll $1,32,$1
	zapnot $0,15,$0
	bis $0,$1,$0
$L1053:
	ret $31,($26),1
	.align 4
$L1054:
	mov $16,$0
	beq $17,$L1053
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
	br $31,$L1055
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
	beq $1,$L1060
	srl $18,$19,$17
	mov $31,$18
$L1062:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1060:
	beq $19,$L1062
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
	ldah $2,$LC23($29)		!gprelhigh
	srl $16,1,$1
	ldq $2,$LC23($2)		!gprellow
	and $1,$2,$1
	subq $16,$1,$16
	ldah $1,$LC24($29)		!gprelhigh
	srl $16,2,$2
	ldq $1,$LC24($1)		!gprellow
	and $16,$1,$16
	and $2,$1,$2
	addq $2,$16,$2
	srl $2,4,$1
	addq $1,$2,$1
	ldah $2,$LC25($29)		!gprelhigh
	ldq $2,$LC25($2)		!gprellow
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
	sll $3,60,$4
	srl $1,4,$2
	bis $4,$2,$2
	ldah $4,$LC25($29)		!gprelhigh
	addq $2,$1,$1
	cmpult $1,$2,$2
	ldq $5,$LC25($4)		!gprellow
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
	ldah $29,0($27)		!gpdisp!100
	lda $29,0($29)		!gpdisp!100
$__powidf2..ng:
	.prologue 1
	ldah $3,$LC20($29)		!gprelhigh
	mov $17,$1
	lds $f0,$LC20($3)		!gprellow
	blbc $17,$L1079
	.align 4
$L1081:
	mult $f0,$f16,$f0
$L1079:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	bis $31,$31,$31
	beq $1,$L1080
	mult $f16,$f16,$f16
	srl $1,63,$2
	bis $31,$31,$31
	blbs $1,$L1081
$L1085:
	addq $2,$1,$1
	mult $f16,$f16,$f16
	sra $1,1,$1
	cpys $f31,$f31,$f31
	srl $1,63,$2
	blbs $1,$L1081
	br $31,$L1085
	.align 4
$L1080:
	cmplt $17,0,$17
	bne $17,$L1086
	ret $31,($26),1
	.align 4
$L1086:
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
	blbc $17,$L1088
	.align 4
$L1090:
	muls $f0,$f16,$f0
$L1088:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	bis $31,$31,$31
	beq $1,$L1089
	muls $f16,$f16,$f16
	srl $1,63,$2
	bis $31,$31,$31
	blbs $1,$L1090
$L1094:
	addq $2,$1,$1
	muls $f16,$f16,$f16
	sra $1,1,$1
	cpys $f31,$f31,$f31
	srl $1,63,$2
	blbs $1,$L1090
	br $31,$L1094
	.align 4
$L1089:
	cmplt $17,0,$17
	bne $17,$L1095
	ret $31,($26),1
	.align 4
$L1095:
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
	bne $3,$L1097
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L1097
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1097
	cmpult $17,$16,$0
	lda $0,1($0)
$L1097:
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
	bne $3,$L1103
	cmpule $1,$2,$1
	lda $0,1($31)
	beq $1,$L1103
	zapnot $16,15,$16
	zapnot $17,15,$17
	lda $2,-1($31)
	cmpult $16,$17,$1
	cmpult $17,$16,$0
	cmovne $1,$2,$0
$L1103:
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
	bne $1,$L1108
	cmpule $17,$19,$17
	cpys $f31,$f31,$f31
	lda $0,2($31)
	beq $17,$L1108
	cmpult $16,$18,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1108
	cmpult $18,$16,$0
	lda $0,1($0)
$L1108:
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
