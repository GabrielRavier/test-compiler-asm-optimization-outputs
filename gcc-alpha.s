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
	br $31,$L22
	.align 4
$L20:
	lda $19,-1($19)
	lda $17,1($17)
	lda $16,1($16)
	beq $19,$L22
$L18:
	ldq_u $1,0($17)
	ldq_u $3,0($16)
	extbl $1,$17,$1
	mskbl $3,$16,$3
	insbl $1,$16,$2
	and $1,0xff,$1
	bis $2,$3,$2
	stq_u $2,0($16)
	cmpeq $1,$18,$1
	beq $1,$L20
	beq $19,$L22
	lda $0,1($16)
	ret $31,($26),1
	.align 4
$L22:
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
	bne $18,$L30
	br $31,$L35
	.align 4
$L32:
	lda $18,-1($18)
	cpys $f31,$f31,$f31
	lda $16,1($16)
	beq $18,$L35
$L30:
	ldq_u $1,0($16)
	extbl $1,$16,$1
	cmpeq $1,$17,$1
	beq $1,$L32
	mov $16,$0
	beq $18,$L35
	ret $31,($26),1
	.align 4
$L35:
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
	beq $18,$L43
	.align 4
$L52:
	ldq_u $2,0($16)
	ldq_u $3,0($17)
	extbl $2,$16,$1
	extbl $3,$17,$4
	cmpeq $1,$4,$1
	beq $1,$L51
	lda $18,-1($18)
	lda $16,1($16)
	lda $17,1($17)
	bne $18,$L52
$L43:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L51:
	beq $18,$L43
	extbl $2,$16,$2
	subl $2,$4,$0
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
	beq $18,$L54
	ldq $27,memcpy($29)		!literal!2
	jsr $26,($27),memcpy		!lituse_jsr!2
	ldah $29,0($26)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
$L54:
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
	br $31,$L59
	.align 4
$L61:
	lda $18,-1($18)
	ldq_u $1,0($0)
	extbl $1,$0,$1
	cmpeq $1,$17,$1
	bne $1,$L58
$L59:
	cmpeq $18,$16,$1
	mov $18,$0
	beq $1,$L61
	mov $31,$0
$L58:
	ret $31,($26),1
	.cfi_endproc
$LFE7:
	.end memrchr
	.align 2
	.align 4
	.globl memset
	.ent memset
$memset..ng:
memset:
	.frame $30,0,$26,0
$LFB8:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	beq $18,$L63
	addq $16,$18,$18
	mov $16,$1
	.align 4
$L64:
	insbl $17,$1,$2
	ldq_u $3,0($1)
	mskbl $3,$1,$3
	cpys $f31,$f31,$f31
	bis $2,$3,$2
	stq_u $2,0($1)
	lda $1,1($1)
	cmpeq $18,$1,$2
	beq $2,$L64
$L63:
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
	beq $1,$L70
	.align 4
$L71:
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
	bne $1,$L71
$L70:
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
	bne $1,$L77
	ret $31,($26),1
	.align 4
$L79:
	mov $2,$0
	lda $2,1($2)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L76
$L77:
	and $1,0xff,$1
	cmpeq $1,$17,$1
	beq $1,$L79
$L76:
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
	br $31,$L85
	.align 4
$L88:
	mov $2,$0
	beq $1,$L87
$L85:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,$17,$3
	beq $3,$L88
	ret $31,($26),1
	.align 4
$L87:
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
	ldq_u $0,0($16)
	lda $2,1($17)
	br $31,$L96
	.align 4
$L97:
	mov $3,$16
	mov $2,$17
	lda $3,1($3)
	ldq_u $0,0($16)
	lda $2,1($2)
	bis $31,$31,$31
$L96:
	extqh $0,$3,$0
	ldq_u $1,0($17)
	sra $0,56,$0
	extqh $1,$2,$1
	cmpult $31,$0,$4
	sra $1,56,$1
	cmpeq $0,$1,$5
	and $4,$5,$4
	bne $4,$L97
	and $1,0xff,$1
	and $0,0xff,$0
	subl $0,$1,$0
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
	mov $16,$0
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L99
	.align 4
$L100:
	mov $2,$0
	lda $2,1($2)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L100
$L99:
	subq $0,$16,$0
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
	beq $18,$L105
	ldq_u $0,0($16)
	extbl $0,$16,$0
	beq $0,$L110
	lda $18,-1($18)
	addq $17,$18,$4
	br $31,$L107
	.align 4
$L108:
	lda $17,1($17)
	ldq_u $0,0($16)
	extbl $0,$16,$0
	beq $0,$L110
$L107:
	cmpeq $17,$4,$1
	ldq_u $3,0($17)
	lda $16,1($16)
	cmpeq $1,0,$1
	extbl $3,$17,$2
	cmpeq $2,$0,$5
	cmpult $31,$2,$2
	and $2,$5,$2
	and $1,$2,$1
	bne $1,$L108
	extbl $3,$17,$3
	subl $0,$3,$0
$L105:
	ret $31,($26),1
	.align 4
$L110:
	ldq_u $3,0($17)
	extbl $3,$17,$3
	subl $0,$3,$0
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
	bne $1,$L114
	bic $18,1,$18
	addq $16,$18,$5
	.align 4
$L116:
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
	beq $1,$L116
$L114:
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
	bne $1,$L129
	ldah $1,-1($16)
	addl $1,7,$1
	lda $16,-8232($16)
	zapnot $16,15,$16
	zapnot $1,15,$1
	cmpule $16,1,$16
	cmpule $1,2,$1
	cmoveq $16,$1,$0
$L129:
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
	bne $1,$L139
	lda $1,-8234($16)
	zapnot $1,15,$1
	ldah $3,1($31)
	lda $4,-18475($3)
	cmpule $1,$4,$1
	lda $4,8231($31)
	cmpule $2,$4,$2
	lda $0,1($31)
	bis $1,$2,$1
	bne $1,$L135
	ldah $2,-1($31)
	lda $1,8192($2)
	addl $16,$1,$1
	zapnot $1,15,$1
	lda $4,8184($31)
	cmpule $1,$4,$1
	bne $1,$L135
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
$L135:
	ret $31,($26),1
	.align 4
$L139:
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
	fbne $f10,$L147
	cmptun $f17,$f17,$f10
	fbne $f10,$L148
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L151
	subt $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L151:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.align 4
$L147:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L148:
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
	fbne $f11,$L155
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	fbne $f12,$L156
	cmptlt $f11,$f10,$f12
	fbeq $f12,$L159
	subs $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L159:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.align 4
$L155:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L156:
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
	fbne $f10,$L163
	cmptun $f17,$f17,$f10
	fbne $f10,$L164
	stt $f16,0($30)
	ldq $1,0($30)
	stt $f17,0($30)
	ldq $3,0($30)
	srl $1,63,$2
	srl $3,63,$1
	cmpeq $2,$1,$1
	beq $1,$L166
	cmptlt $f16,$f17,$f10
	cpys $f16,$f16,$f0
	fcmovne $f10,$f17,$f0
$L160:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L166:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	bne $2,$L160
$L164:
	cpys $f16,$f16,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L163:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L160
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
	fbne $f11,$L170
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	cpys $f31,$f31,$f31
	fbne $f12,$L171
	ldah $1,-32768($31)
	ldl $3,16($30)
	and $1,$3,$2
	ldl $3,0($30)
	addl $31,$2,$2
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L169
	cpys $f17,$f17,$f0
	bne $2,$L167
	cpys $f16,$f16,$f0
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L169:
	.cfi_restore_state
	cmptlt $f10,$f11,$f12
	lds $f0,16($30)
	lds $f10,0($30)
	fcmovne $f12,$f10,$f0
$L167:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L170:
	.cfi_restore_state
	lds $f0,0($30)
	br $31,$L167
	.align 4
$L171:
	lds $f0,16($30)
	br $31,$L167
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
	ldah $29,0($27)		!gpdisp!4
	lda $29,0($29)		!gpdisp!4
$fmaxl..ng:
	lda $30,-128($30)
	.cfi_def_cfa_offset 128
	ldq $27,_OtsEqlX($29)		!literal!9
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
	jsr $26,($27),_OtsEqlX		!lituse_jsr!9
	ldah $29,0($26)		!gpdisp!10
	lda $29,0($29)		!gpdisp!10
	blt $0,$L179
	mov $9,$16
	ldq $27,_OtsEqlX($29)		!literal!7
	mov $15,$17
	mov $9,$18
	mov $15,$19
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!7
	ldah $29,0($26)		!gpdisp!8
	lda $29,0($29)		!gpdisp!8
	blt $0,$L174
	srl $11,63,$4
	srl $15,63,$3
	cmpeq $4,$3,$3
	bne $3,$L175
	cmovne $4,$9,$14
	cmovne $4,$15,$11
$L174:
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
$L175:
	.cfi_restore_state
	stq $14,64($30)
	stq $11,72($30)
	stq $9,80($30)
	stq $15,88($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsLssX($29)		!literal!5
	jsr $26,($27),_OtsLssX		!lituse_jsr!5
	ldah $29,0($26)		!gpdisp!6
	cmplt $31,$0,$0
	lda $29,0($29)		!gpdisp!6
	cmovne $0,$9,$14
	cmovne $0,$15,$11
	br $31,$L174
	.align 4
$L179:
	mov $9,$14
	cpys $f31,$f31,$f31
	mov $15,$11
	br $31,$L174
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
	fbne $f10,$L185
	cmptun $f17,$f17,$f10
	fbne $f10,$L186
	stt $f16,0($30)
	ldq $1,0($30)
	stt $f17,0($30)
	ldq $3,0($30)
	srl $1,63,$2
	srl $3,63,$1
	cmpeq $2,$1,$1
	beq $1,$L188
	cmptlt $f16,$f17,$f10
	cpys $f17,$f17,$f0
	fcmovne $f10,$f16,$f0
$L182:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L188:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	bne $2,$L182
$L185:
	cpys $f17,$f17,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L186:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	br $31,$L182
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
	fbne $f11,$L192
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	cpys $f31,$f31,$f31
	fbne $f12,$L193
	ldah $1,-32768($31)
	ldl $3,0($30)
	and $1,$3,$2
	ldl $3,16($30)
	addl $31,$2,$2
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L191
	cpys $f16,$f16,$f0
	bne $2,$L189
	cpys $f17,$f17,$f0
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L191:
	.cfi_restore_state
	cmptlt $f10,$f11,$f12
	lds $f0,16($30)
	lds $f10,0($30)
	fcmovne $f12,$f10,$f0
$L189:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L192:
	.cfi_restore_state
	lds $f0,16($30)
	br $31,$L189
	.align 4
$L193:
	lds $f0,0($30)
	br $31,$L189
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
	ldah $29,0($27)		!gpdisp!11
	lda $29,0($29)		!gpdisp!11
$fminl..ng:
	lda $30,-128($30)
	.cfi_def_cfa_offset 128
	cpys $f31,$f31,$f31
	mov $16,$25
	ldq $27,_OtsEqlX($29)		!literal!16
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
	jsr $26,($27),_OtsEqlX		!lituse_jsr!16
	ldah $29,0($26)		!gpdisp!17
	lda $29,0($29)		!gpdisp!17
	blt $0,$L196
	mov $13,$16
	ldq $27,_OtsEqlX($29)		!literal!14
	mov $12,$17
	mov $13,$18
	mov $12,$19
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!14
	ldah $29,0($26)		!gpdisp!15
	lda $29,0($29)		!gpdisp!15
	blt $0,$L201
	srl $14,63,$5
	srl $12,63,$4
	cmpeq $5,$4,$4
	bne $4,$L197
	cmovne $5,$15,$13
	cmovne $5,$14,$12
$L196:
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
$L197:
	.cfi_restore_state
	stq $13,80($30)
	stq $12,88($30)
	stq $15,64($30)
	stq $14,72($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsLssX($29)		!literal!12
	jsr $26,($27),_OtsLssX		!lituse_jsr!12
	ldah $29,0($26)		!gpdisp!13
	cmplt $31,$0,$0
	lda $29,0($29)		!gpdisp!13
	cmovne $0,$15,$13
	cmovne $0,$14,$12
	br $31,$L196
	.align 4
$L201:
	mov $15,$13
	cpys $f31,$f31,$f31
	mov $14,$12
	br $31,$L196
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
	ldah $29,0($27)		!gpdisp!18
	lda $29,0($29)		!gpdisp!18
$l64a..ng:
	.prologue 1
	ldah $0,s.0($29)		!gprelhigh
	lda $0,s.0($0)		!gprellow
	addl $31,$16,$16
	cpys $f31,$f31,$f31
	mov $0,$2
	beq $16,$L205
	ldah $5,digits($29)		!gprelhigh
	lda $5,digits($5)		!gprellow
	.align 4
$L206:
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
	bne $16,$L206
$L205:
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
	ldah $29,0($27)		!gpdisp!19
	lda $29,0($29)		!gpdisp!19
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
	ldah $29,0($27)		!gpdisp!20
	lda $29,0($29)		!gpdisp!20
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
	beq $17,$L217
	ldq $1,0($17)
	stq $17,8($16)
	stq $1,0($16)
	stq $16,0($17)
	ldq $1,0($16)
	beq $1,$L211
	stq $16,8($1)
$L211:
	ret $31,($26),1
	.align 4
$L217:
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
	beq $1,$L219
	ldq $2,8($16)
	stq $2,8($1)
$L219:
	ldq $2,8($16)
	beq $2,$L218
	stq $1,0($2)
$L218:
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
	ldah $29,0($27)		!gpdisp!21
	lda $29,0($29)		!gpdisp!21
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
	beq $10,$L228
	mov $17,$14
	mov $31,$15
	br $31,$L230
	.align 4
$L242:
	cmpeq $10,$15,$2
	cpys $f31,$f31,$f31
	addq $14,$9,$14
	bne $2,$L228
$L230:
	mov $14,$17
	mov $11,$16
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!24
	lda $29,0($29)		!gpdisp!24
	mov $14,$12
	lda $15,1($15)
	bis $31,$31,$31
	bne $0,$L242
$L227:
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
$L228:
	.cfi_restore_state
	mulq $9,$10,$12
	ldq $1,64($30)
	lda $10,1($10)
	stq $10,0($1)
	ldq $1,72($30)
	bis $31,$31,$31
	addq $1,$12,$12
	beq $9,$L227
	mov $9,$18
	ldq $27,memmove($29)		!literal!22
	mov $11,$17
	mov $12,$16
	jsr $26,($27),memmove		!lituse_jsr!22
	ldah $29,0($26)		!gpdisp!23
	lda $29,0($29)		!gpdisp!23
	br $31,$L227
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
	ldah $29,0($27)		!gpdisp!25
	lda $29,0($29)		!gpdisp!25
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
	beq $12,$L244
	mov $17,$9
	mov $31,$14
	br $31,$L246
	.align 4
$L254:
	cmpeq $12,$14,$1
	cpys $f31,$f31,$f31
	addq $9,$13,$9
	bne $1,$L244
$L246:
	mov $9,$17
	mov $10,$16
	mov $11,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
	mov $9,$15
	lda $14,1($14)
	bis $31,$31,$31
	bne $0,$L254
$L243:
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
$L244:
	.cfi_restore_state
	mov $31,$15
	br $31,$L243
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
	lda $2,1($16)
	br $31,$L273
	.align 4
$L274:
	mov $2,$16
	lda $2,1($2)
$L273:
	ldq_u $1,0($16)
	extqh $1,$2,$4
	sra $4,56,$4
	subl $4,9,$3
	zapnot $3,15,$3
	cmpeq $4,32,$5
	cmpule $3,4,$3
	bis $3,$5,$3
	bne $3,$L274
	cmpeq $4,43,$3
	bne $3,$L264
	cmpeq $4,45,$4
	mov $31,$5
	bne $4,$L275
$L260:
	extqh $1,$2,$1
	mov $31,$0
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$3
	cmpule $3,9,$3
	beq $3,$L262
	.align 4
$L261:
	mov $2,$16
	lda $2,1($2)
	sll $1,56,$1
	ldq_u $3,0($16)
	s4addl $0,$0,$0
	sra $1,56,$4
	extqh $3,$2,$3
	addl $0,$0,$0
	sra $3,56,$1
	subl $0,$4,$0
	subl $1,48,$1
	zapnot $1,15,$3
	cmpule $3,9,$3
	bne $3,$L261
$L262:
	subl $31,$0,$1
	cmoveq $5,$1,$0
	ret $31,($26),1
	.align 4
$L275:
	lda $5,1($31)
$L259:
	mov $2,$16
	lda $2,1($2)
	cpys $f31,$f31,$f31
	ldq_u $1,0($16)
	br $31,$L260
	.align 4
$L264:
	mov $31,$5
	br $31,$L259
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
	lda $2,1($16)
	br $31,$L293
	.align 4
$L294:
	mov $2,$16
	lda $2,1($2)
$L293:
	ldq_u $1,0($16)
	extqh $1,$2,$4
	sra $4,56,$4
	subl $4,9,$3
	zapnot $3,15,$3
	cmpeq $4,32,$5
	cmpule $3,4,$3
	bis $3,$5,$3
	bne $3,$L294
	cmpeq $4,43,$3
	bne $3,$L284
	cmpeq $4,45,$4
	mov $31,$5
	bne $4,$L295
$L280:
	extqh $1,$2,$1
	mov $31,$0
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$3
	cmpule $3,9,$3
	beq $3,$L282
	.align 4
$L281:
	mov $2,$16
	lda $2,1($2)
	sll $1,56,$1
	ldq_u $3,0($16)
	s4addq $0,$0,$0
	sra $1,56,$4
	extqh $3,$2,$3
	addq $0,$0,$0
	sra $3,56,$1
	subq $0,$4,$0
	subl $1,48,$1
	zapnot $1,15,$3
	cmpule $3,9,$3
	bne $3,$L281
$L282:
	subq $31,$0,$1
	cmoveq $5,$1,$0
	ret $31,($26),1
	.align 4
$L295:
	lda $5,1($31)
$L279:
	mov $2,$16
	lda $2,1($2)
	cpys $f31,$f31,$f31
	ldq_u $1,0($16)
	br $31,$L280
	.align 4
$L284:
	mov $31,$5
	br $31,$L279
	.cfi_endproc
$LFE48:
	.end atol
	.align 2
	.align 4
	.globl atoll
	.ent atoll
atoll:
	.frame $30,0,$26,0
$LFB171:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!27
	lda $29,0($29)		!gpdisp!27
$atoll..ng:
	.prologue 1
	ldq $27,atol($29)		!literal!28
	jmp $31,($27),atol		!lituse_jsr!28
	.cfi_endproc
$LFE171:
	bis $31,$31,$31
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
	ldah $29,0($27)		!gpdisp!29
	lda $29,0($29)		!gpdisp!29
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
$L307:
	beq $9,$L298
$L308:
	srl $9,1,$15
	mov $14,$16
	mulq $15,$11,$10
	mov $13,$27
	lda $9,-1($9)
	addq $12,$10,$10
	mov $10,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!30
	lda $29,0($29)		!gpdisp!30
	blt $0,$L302
	addq $10,$11,$12
	ble $0,$L297
	subq $9,$15,$9
	bne $9,$L308
$L298:
	mov $31,$10
	bis $31,$31,$31
$L297:
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
$L302:
	.cfi_restore_state
	mov $15,$9
	br $31,$L307
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
	ldah $29,0($27)		!gpdisp!31
	lda $29,0($29)		!gpdisp!31
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
	bne $9,$L313
	br $31,$L310
	.align 4
$L321:
	ble $0,$L312
	sra $9,1,$12
	addq $15,$10,$11
$L312:
	addl $31,$12,$9
	bis $31,$31,$31
	beq $9,$L310
$L313:
	sra $9,1,$12
	ldq $18,64($30)
	mov $14,$16
	mulq $12,$10,$15
	mov $13,$27
	subl $9,1,$9
	addq $11,$15,$15
	mov $15,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!32
	lda $29,0($29)		!gpdisp!32
	bne $0,$L321
$L309:
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
$L310:
	.cfi_restore_state
	mov $31,$15
	br $31,$L309
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
	ldah $29,0($27)		!gpdisp!35
	lda $29,0($29)		!gpdisp!35
$div..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divl($29)		!literal!33
	mov $16,$0
	jsr $23,($27),__divl		!lituse_jsrdirect!33
	mov $27,$1
	ldq $27,__reml($29)		!literal!34
	stl $1,0($16)
	jsr $23,($27),__reml		!lituse_jsrdirect!34
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
	ldah $29,0($27)		!gpdisp!38
	lda $29,0($29)		!gpdisp!38
$imaxdiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!36
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!36
	mov $27,$1
	ldq $27,__remq($29)		!literal!37
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!37
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
	ldah $29,0($27)		!gpdisp!41
	lda $29,0($29)		!gpdisp!41
$ldiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!39
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!39
	mov $27,$1
	ldq $27,__remq($29)		!literal!40
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!40
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
	ldah $29,0($27)		!gpdisp!44
	lda $29,0($29)		!gpdisp!44
$lldiv..ng:
	.prologue 1
	mov $17,$24
	cpys $f31,$f31,$f31
	mov $18,$25
	ldq $27,__divq($29)		!literal!42
	mov $16,$0
	jsr $23,($27),__divq		!lituse_jsrdirect!42
	mov $27,$1
	ldq $27,__remq($29)		!literal!43
	stq $1,0($16)
	jsr $23,($27),__remq		!lituse_jsrdirect!43
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
	mov $16,$0
	br $31,$L337
	.align 4
$L338:
	lda $0,4($0)
$L337:
	ldl $2,0($0)
	cmpeq $17,$2,$1
	cmpult $31,$2,$3
	cmpeq $1,0,$1
	and $1,$3,$1
	bne $1,$L338
	cmoveq $2,0,$0
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
	ldl $3,0($16)
	bis $31,$31,$31
	ldl $0,0($17)
	br $31,$L348
	.align 4
$L349:
	ldl $3,4($16)
	bis $31,$31,$31
	lda $17,4($17)
	ldl $0,0($17)
	lda $16,4($16)
$L348:
	cmpult $31,$3,$2
	cmpeq $3,$0,$4
	cmpult $31,$0,$1
	and $2,$4,$2
	and $1,$2,$1
	bne $1,$L349
	cmplt $3,$0,$1
	cmplt $0,$3,$0
	lda $2,-1($31)
	cmovne $1,$2,$0
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
$L351:
	lda $1,4($1)
	ldl $2,0($17)
	lda $17,4($17)
	stl $2,-4($1)
	bne $2,$L351
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
	mov $16,$0
	ldl $1,0($16)
	beq $1,$L354
	.align 4
$L355:
	lda $0,4($0)
	ldl $1,0($0)
	bne $1,$L355
$L354:
	subq $0,$16,$0
	sra $0,2,$0
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
	beq $18,$L364
	.align 4
$L374:
	ldl $4,0($16)
	bis $31,$31,$31
	lda $17,4($17)
	ldl $3,-4($17)
	lda $16,4($16)
	cmpult $31,$4,$2
	cmpeq $4,$3,$5
	cmpult $31,$3,$1
	and $2,$5,$2
	and $1,$2,$1
	beq $1,$L373
	lda $18,-1($18)
	bne $18,$L374
$L364:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L373:
	beq $18,$L364
	cmplt $4,$3,$1
	cmplt $3,$4,$0
	lda $2,-1($31)
	cmovne $1,$2,$0
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
	beq $18,$L381
	.align 4
$L387:
	ldl $1,0($16)
	cmpeq $1,$17,$1
	bne $1,$L386
	lda $18,-1($18)
	lda $16,4($16)
	bne $18,$L387
$L381:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L386:
	mov $16,$0
	beq $18,$L381
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
	beq $18,$L393
	.align 4
$L403:
	ldl $2,0($16)
	bis $31,$31,$31
	lda $17,4($17)
	ldl $1,-4($17)
	lda $16,4($16)
	cmpeq $2,$1,$3
	beq $3,$L402
	lda $18,-1($18)
	bne $18,$L403
$L393:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L402:
	beq $18,$L393
	cmplt $2,$1,$3
	cmplt $1,$2,$0
	lda $1,-1($31)
	cmovne $3,$1,$0
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
	ldah $29,0($27)		!gpdisp!45
	lda $29,0($29)		!gpdisp!45
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
	beq $18,$L405
	s4addq $18,0,$18
	ldq $27,memcpy($29)		!literal!46
	jsr $26,($27),memcpy		!lituse_jsr!46
	ldah $29,0($26)		!gpdisp!47
	lda $29,0($29)		!gpdisp!47
	bis $31,$31,$31
$L405:
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
	bne $1,$L410
	s4addq $18,0,$1
	subq $16,$17,$2
	cmpult $2,$1,$2
	cpys $f31,$f31,$f31
	lda $1,-1($18)
	beq $2,$L421
	beq $18,$L410
	s4addq $1,0,$1
	.align 4
$L413:
	addq $17,$1,$2
	addq $0,$1,$3
	lda $1,-4($1)
	ldl $4,0($2)
	lda $2,4($1)
	stl $4,0($3)
	bne $2,$L413
	ret $31,($26),1
	.align 4
$L421:
	mov $16,$2
	beq $18,$L422
	.align 4
$L412:
	lda $2,4($2)
	ldl $4,0($17)
	lda $1,-1($1)
	lda $3,1($1)
	stl $4,-4($2)
	lda $17,4($17)
	bne $3,$L412
$L410:
	ret $31,($26),1
	.align 4
$L422:
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
	beq $18,$L424
	mov $16,$2
	.align 4
$L425:
	lda $1,-1($1)
	stl $17,0($2)
	lda $3,1($1)
	cpys $f31,$f31,$f31
	lda $2,4($2)
	bne $3,$L425
$L424:
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
	beq $1,$L431
	addq $16,$18,$2
	cpys $f31,$f31,$f31
	addq $17,$18,$17
	beq $18,$L430
	.align 4
$L433:
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
	beq $4,$L433
	ret $31,($26),1
	.align 4
$L431:
	cmpeq $16,$17,$1
	bne $1,$L430
	beq $18,$L430
	addq $16,$18,$18
	.align 4
$L434:
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
	beq $4,$L434
$L430:
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
	br $31,$L459
	.align 4
$L462:
	cmpeq $1,32,$1
	bne $1,$L461
$L459:
	srl $16,$0,$2
	addl $0,1,$0
	zapnot $0,15,$1
	cpys $f31,$f31,$f31
	addl $31,$0,$0
	blbc $2,$L462
	ret $31,($26),1
	.align 4
$L461:
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
	beq $16,$L464
	and $16,1,$0
	bne $0,$L464
	lda $0,1($31)
	.align 4
$L465:
	sra $16,1,$16
	addl $0,1,$0
	blbc $16,$L465
$L464:
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
	ldah $29,0($27)		!gpdisp!48
	lda $29,0($29)		!gpdisp!48
$gl_isinff..ng:
	.prologue 1
	ldah $1,$LC1($29)		!gprelhigh
	cpys $f31,$f31,$f31
	cpys $f16,$f16,$f16
	lda $0,1($31)
	lds $f11,$LC1($1)		!gprellow
	cmptlt $f16,$f11,$f10
	fbne $f10,$L471
	ldah $1,$LC2($29)		!gprelhigh
	lds $f11,$LC2($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L474
	addl $31,$0,$0
$L471:
	ret $31,($26),1
	.align 4
$L474:
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
	ldah $29,0($27)		!gpdisp!49
	lda $29,0($29)		!gpdisp!49
$gl_isinfd..ng:
	.prologue 1
	ldah $1,$LC5($29)		!gprelhigh
	lda $0,1($31)
	ldt $f11,$LC5($1)		!gprellow
	cmptlt $f16,$f11,$f10
	fbne $f10,$L476
	ldah $1,$LC6($29)		!gprelhigh
	ldt $f11,$LC6($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbeq $f10,$L479
	addl $31,$0,$0
$L476:
	ret $31,($26),1
	.align 4
$L479:
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
	ldah $29,0($27)		!gpdisp!50
	lda $29,0($29)		!gpdisp!50
$gl_isinfl..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	cpys $f31,$f31,$f31
	ldah $1,$LC7($29)		!gprelhigh
	ldq $27,_OtsLssX($29)		!literal!53
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
	jsr $26,($27),_OtsLssX		!lituse_jsr!53
	ldah $29,0($26)		!gpdisp!54
	lda $1,1($31)
	cpys $f31,$f31,$f31
	lda $29,0($29)		!gpdisp!54
	bgt $0,$L481
	ldah $1,$LC8($29)		!gprelhigh
	ldq $27,_OtsGtrX($29)		!literal!51
	lda $1,$LC8($1)		!gprellow
	mov $10,$16
	ldq $18,0($1)
	bis $31,$31,$31
	mov $11,$17
	ldq $19,8($1)
	jsr $26,($27),_OtsGtrX		!lituse_jsr!51
	ldah $29,0($26)		!gpdisp!52
	lda $29,0($29)		!gpdisp!52
	cmplt $31,$0,$1
$L481:
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
	ldah $29,0($27)		!gpdisp!55
	lda $29,0($29)		!gpdisp!55
$_Qp_itoq..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	ldq $27,_OtsConvertFloatTX($29)		!literal!56
	stq $17,16($30)
	ldt $f10,16($30)
	stq $9,8($30)
	.cfi_offset 9, -24
	mov $16,$9
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	cvtqt $f10,$f16
	jsr $26,($27),_OtsConvertFloatTX		!lituse_jsr!56
	ldah $29,0($26)		!gpdisp!57
	ldq $26,0($30)
	bis $31,$31,$31
	stq $16,0($9)
	lda $29,0($29)		!gpdisp!57
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
	ldah $29,0($27)		!gpdisp!58
	lda $29,0($29)		!gpdisp!58
$ldexpf..ng:
	.prologue 1
	cpys $f16,$f16,$f10
	cpys $f16,$f16,$f0
	cmptun $f10,$f10,$f11
	fbne $f11,$L485
	adds $f16,$f16,$f11
	cmpteq $f11,$f10,$f10
	fbne $f10,$L485
	ldah $2,$LC9($29)		!gprelhigh
	cmplt $17,0,$1
	cpys $f31,$f31,$f31
	lds $f10,$LC9($2)		!gprellow
	beq $1,$L488
	ldah $1,$LC10($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC10($1)		!gprellow
	br $31,$L488
	.align 4
$L496:
	muls $f10,$f10,$f10
	bis $31,$31,$31
$L488:
	srl $17,63,$1
	blbc $17,$L487
	muls $f0,$f10,$f0
$L487:
	addq $1,$17,$17
	sra $17,1,$17
	bne $17,$L496
$L485:
	ret $31,($26),1
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
	ldah $29,0($27)		!gpdisp!59
	lda $29,0($29)		!gpdisp!59
$ldexp..ng:
	.prologue 1
	cmptun $f16,$f16,$f10
	cpys $f16,$f16,$f0
	fbne $f10,$L498
	addt $f16,$f16,$f11
	cmpteq $f11,$f16,$f10
	fbne $f10,$L498
	cmplt $17,0,$1
	bne $1,$L509
	ldah $1,$LC9($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC9($1)		!gprellow
	br $31,$L501
	.align 4
$L510:
	mult $f10,$f10,$f10
	bis $31,$31,$31
$L501:
	srl $17,63,$1
	blbc $17,$L500
	mult $f0,$f10,$f0
$L500:
	addq $1,$17,$17
	sra $17,1,$17
	bne $17,$L510
$L498:
	ret $31,($26),1
	.align 4
$L509:
	ldah $1,$LC10($29)		!gprelhigh
	cpys $f31,$f31,$f31
	lds $f10,$LC10($1)		!gprellow
	br $31,$L501
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
	ldah $29,0($27)		!gpdisp!60
	lda $29,0($29)		!gpdisp!60
$ldexpl..ng:
	lda $30,-176($30)
	.cfi_def_cfa_offset 176
	ldq $27,_OtsEqlX($29)		!literal!69
	stq $10,16($30)
	.cfi_offset 10, -160
	ldq $10,0($17)
	ldq $17,8($17)
	bis $31,$31,$31
	stq $9,8($30)
	.cfi_offset 9, -168
	mov $18,$9
	stq $16,72($30)
	mov $10,$18
	mov $10,$16
	stq $26,0($30)
	mov $17,$19
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -176
	.cfi_offset 11, -152
	.cfi_offset 12, -144
	.cfi_offset 13, -136
	.cfi_offset 14, -128
	.cfi_offset 15, -120
	.prologue 1
	stq $17,64($30)
	stq $2,160($30)
	stq $3,168($30)
	stq $4,144($30)
	stq $5,152($30)
	bis $31,$31,$31
	jsr $26,($27),_OtsEqlX		!lituse_jsr!69
	ldah $29,0($26)		!gpdisp!70
	lda $29,0($29)		!gpdisp!70
	blt $0,$L512
	ldq $5,64($30)
	bis $31,$31,$31
	mov $10,$18
	ldq $27,_OtsAddX($29)		!literal!65
	lda $20,2($31)
	mov $5,$19
	mov $5,$17
	mov $10,$16
	jsr $26,($27),_OtsAddX		!lituse_jsr!65
	ldah $29,0($26)		!gpdisp!66
	ldq $1,64($30)
	bis $31,$31,$31
	lda $29,0($29)		!gpdisp!66
	stq $10,128($30)
	ldq $18,128($30)
	stq $1,136($30)
	ldq $19,136($30)
	ldq $27,_OtsEqlX($29)		!literal!67
	jsr $26,($27),_OtsEqlX		!lituse_jsr!67
	ldah $29,0($26)		!gpdisp!68
	lda $29,0($29)		!gpdisp!68
	bgt $0,$L512
	cmplt $9,0,$2
	bne $2,$L523
	ldah $2,$LC13($29)		!gprelhigh
	lda $2,$LC13($2)		!gprellow
	ldq $3,0($2)
	bis $31,$31,$31
	ldq $11,8($2)
	br $31,$L515
	.align 4
$L524:
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!61
	jsr $26,($27),_OtsMulX		!lituse_jsr!61
	ldah $29,0($26)		!gpdisp!62
	lda $29,0($29)		!gpdisp!62
	mov $16,$3
	mov $17,$11
	bis $31,$31,$31
$L515:
	lda $20,2($31)
	blbc $9,$L514
	ldq $2,64($30)
	stq $10,80($30)
	stq $3,96($30)
	stq $2,88($30)
	stq $11,104($30)
	ldq $16,80($30)
	ldq $17,88($30)
	ldq $18,96($30)
	ldq $19,104($30)
	ldq $27,_OtsMulX($29)		!literal!63
	stq $3,168($30)
	jsr $26,($27),_OtsMulX		!lituse_jsr!63
	ldah $29,0($26)		!gpdisp!64
	ldq $3,168($30)
	lda $29,0($29)		!gpdisp!64
	stq $17,64($30)
	mov $16,$10
$L514:
	srl $9,63,$4
	mov $3,$16
	addq $4,$9,$1
	sra $1,1,$9
	mov $11,$17
	mov $3,$18
	cpys $f31,$f31,$f31
	mov $11,$19
	bne $9,$L524
$L512:
	ldq $3,64($30)
	stq $10,112($30)
	ldq $1,112($30)
	stq $3,120($30)
	ldq $2,120($30)
	ldq $3,72($30)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	bis $31,$31,$31
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
$L523:
	.cfi_restore_state
	ldah $2,$LC14($29)		!gprelhigh
	lda $2,$LC14($2)		!gprellow
	ldq $3,0($2)
	bis $31,$31,$31
	ldq $11,8($2)
	br $31,$L515
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
	beq $18,$L526
	addq $17,$18,$18
	mov $16,$2
	.align 4
$L527:
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
	beq $6,$L527
$L526:
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
	lda $3,1($16)
	ldq_u $1,0($16)
	mov $16,$0
	extqh $1,$3,$2
	sra $2,56,$2
	beq $2,$L539
	.align 4
$L534:
	mov $3,$2
	lda $3,1($3)
	ldq_u $1,0($2)
	extqh $1,$3,$4
	sra $4,56,$4
	bne $4,$L534
	.align 4
$L546:
	bis $31,$31,$31
	beq $18,$L541
	lda $4,1($17)
	ldq_u $3,0($17)
	mskbl $1,$2,$1
	mov $4,$17
	extqh $3,$4,$3
	sra $3,56,$3
	insbl $3,$2,$4
	cpys $f31,$f31,$f31
	bis $4,$1,$1
	stq_u $1,0($2)
	beq $3,$L547
	lda $2,1($2)
	lda $18,-1($18)
	cpys $f31,$f31,$f31
	ldq_u $1,0($2)
	br $31,$L546
	.align 4
$L547:
	bis $31,$31,$31
	bne $18,$L538
$L541:
	mskbl $1,$2,$1
	stq_u $1,0($2)
$L538:
	ret $31,($26),1
	.align 4
$L539:
	mov $16,$2
	br $31,$L546
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
	beq $17,$L556
$L549:
	addq $16,$0,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L551
	ret $31,($26),1
	.align 4
$L551:
	lda $0,1($0)
	cmpeq $17,$0,$1
	beq $1,$L549
	ret $31,($26),1
	.align 4
$L556:
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
	beq $4,$L562
$L566:
	mov $17,$2
	br $31,$L561
	.align 4
$L560:
	bis $31,$31,$31
	bne $3,$L559
$L561:
	lda $3,1($2)
	ldq_u $1,0($2)
	mov $3,$2
	extqh $1,$3,$1
	sra $1,56,$1
	cpys $f31,$f31,$f31
	cmpeq $1,$4,$3
	bne $1,$L560
	mov $5,$0
	lda $5,1($0)
	ldq_u $4,0($0)
	extqh $4,$5,$4
	sra $4,56,$4
	bne $4,$L566
$L562:
	mov $31,$0
$L559:
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
$L569:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,$17,$3
	cmovne $3,$16,$0
	mov $2,$16
	bne $1,$L569
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
	mov $17,$3
	extqh $22,$2,$22
	sra $22,56,$22
	beq $22,$L573
	.align 4
$L574:
	mov $2,$3
	lda $2,1($2)
	ldq_u $1,0($3)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L574
$L573:
	subq $3,$17,$3
	lda $23,-1($17)
	addq $23,$3,$23
	bne $3,$L581
	ret $31,($26),1
	.align 4
$L595:
	mov $5,$0
	beq $2,$L594
$L581:
	lda $5,1($0)
	ldq_u $1,0($0)
	extqh $1,$5,$2
	sra $2,56,$2
	cmpeq $2,$22,$3
	beq $3,$L595
	beq $0,$L575
	extbl $1,$0,$1
	mov $17,$4
	cpys $f31,$f31,$f31
	mov $0,$6
	bne $1,$L577
	br $31,$L596
	.align 4
$L579:
	lda $4,1($4)
	ldq_u $1,0($6)
	extbl $1,$6,$1
	beq $1,$L597
$L577:
	cmpeq $4,$23,$2
	ldq_u $7,0($4)
	lda $6,1($6)
	cmpeq $2,0,$2
	extbl $7,$4,$3
	cmpeq $3,$1,$8
	cmpult $31,$3,$3
	and $3,$8,$3
	and $2,$3,$2
	bne $2,$L579
$L578:
	extbl $7,$4,$7
	cmpeq $7,$1,$7
	bne $7,$L575
	mov $5,$0
	br $31,$L581
	.align 4
$L594:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L575:
	ret $31,($26),1
	.align 4
$L597:
	ldq_u $7,0($4)
	br $31,$L578
$L596:
	ldq_u $7,0($17)
	br $31,$L578
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
	fbne $f10,$L607
$L599:
	cmptlt $f31,$f0,$f10
	fbeq $f10,$L602
	cmptlt $f17,$f31,$f10
	fbne $f10,$L601
$L602:
	ret $31,($26),1
	.align 4
$L607:
	cmptlt $f31,$f17,$f10
	fbeq $f10,$L599
$L601:
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
	beq $19,$L608
	cmpult $17,$19,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L608
	subq $17,$19,$22
	addq $16,$22,$22
	cmpule $16,$22,$1
	beq $1,$L608
	lda $24,1($18)
	ldq_u $23,0($18)
	extqh $23,$24,$23
	cpys $f31,$f31,$f31
	sra $23,56,$23
	br $31,$L615
	.align 4
$L610:
	cmpule $8,$22,$8
	beq $8,$L631
$L615:
	lda $8,1($16)
	ldq_u $1,0($16)
	mov $16,$0
	mov $8,$16
	extqh $1,$8,$1
	sra $1,56,$1
	cmpeq $1,$23,$1
	beq $1,$L610
	lda $4,-1($19)
	cpys $f31,$f31,$f31
	mov $24,$1
	beq $4,$L632
	mov $8,$2
	br $31,$L611
	.align 4
$L613:
	lda $4,-1($4)
	lda $2,1($2)
	lda $1,1($1)
	beq $4,$L633
$L611:
	ldq_u $5,0($2)
	ldq_u $6,0($1)
	extbl $5,$2,$3
	extbl $6,$1,$7
	cmpeq $3,$7,$3
	bne $3,$L613
	beq $4,$L608
	extbl $5,$2,$5
	subl $5,$7,$5
	bne $5,$L610
$L608:
	ret $31,($26),1
	.align 4
$L633:
	ret $31,($26),1
	.align 4
$L631:
	mov $31,$0
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
	ldah $29,0($27)		!gpdisp!71
	lda $29,0($29)		!gpdisp!71
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
	beq $18,$L635
	ldq $27,memmove($29)		!literal!72
	jsr $26,($27),memmove		!lituse_jsr!72
	ldah $29,0($26)		!gpdisp!73
	lda $29,0($29)		!gpdisp!73
$L635:
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
	ldah $29,0($27)		!gpdisp!74
	lda $29,0($29)		!gpdisp!74
$frexp..ng:
	.prologue 1
	mov $31,$3
	cmptlt $f16,$f31,$f10
	cpys $f16,$f16,$f0
	fbeq $f10,$L640
	cpysn $f16,$f16,$f0
	lda $3,1($31)
$L640:
	ldah $4,$LC16($29)		!gprelhigh
	mov $31,$1
	ldah $2,$LC10($29)		!gprelhigh
	lds $f11,$LC16($4)		!gprellow
	cmptle $f11,$f0,$f10
	fbeq $f10,$L662
	lds $f12,$LC10($2)		!gprellow
	.align 4
$L644:
	mult $f0,$f12,$f0
	addl $1,1,$1
	cmptle $f11,$f0,$f10
	fbne $f10,$L644
$L645:
	stl $1,0($17)
	beq $3,$L649
	cpysn $f0,$f0,$f0
$L649:
	ret $31,($26),1
	.align 4
$L662:
	cmpteq $f0,$f31,$f10
	lda $1,1($31)
	fbeq $f10,$L646
	bis $31,$31,$1
$L646:
	ldah $2,$LC10($29)		!gprelhigh
	lda $4,1($31)
	lds $f11,$LC10($2)		!gprellow
	cmptlt $f0,$f11,$f10
	fbne $f10,$L647
	bis $31,$31,$4
$L647:
	and $1,$4,$4
	cpys $f31,$f31,$f31
	mov $31,$1
	blbc $4,$L645
	lds $f11,$LC10($2)		!gprellow
	.align 4
$L648:
	addt $f0,$f0,$f0
	subl $1,1,$1
	cmptlt $f0,$f11,$f10
	fbne $f10,$L648
	br $31,$L645
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
	beq $16,$L663
	.align 4
$L665:
	and $16,1,$1
	subq $31,$1,$1
	srl $16,1,$16
	and $1,$17,$1
	addq $0,$1,$0
	cpys $f31,$f31,$f31
	addq $17,$17,$17
	bne $16,$L665
$L663:
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
	bne $4,$L670
	br $31,$L678
	.align 4
$L674:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L671
$L670:
	addl $17,$17,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$3,$2
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L674
$L671:
	zapnot $17,15,$2
	cpys $f31,$f31,$f31
	mov $31,$0
	beq $1,$L673
$L678:
	mov $31,$0
	br $31,$L672
	.align 4
$L684:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L672:
	cmpult $3,$2,$3
	zapnot $1,15,$4
	bis $1,$0,$1
	bne $3,$L675
	subl $16,$17,$16
	addl $31,$1,$0
$L675:
	srl $4,1,$1
	srl $2,1,$17
	bne $1,$L684
$L673:
	cmovne $18,$16,$0
	ret $31,($26),1
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
	ldah $29,0($27)		!gpdisp!75
	lda $29,0($29)		!gpdisp!75
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
	bne $2,$L686
	sll $16,8,$16
	ldq $27,__clzdi2($29)		!literal!76
	zapnot $16,14,$16
	jsr $26,($27),__clzdi2		!lituse_jsr!76
	ldah $29,0($26)		!gpdisp!77
	lda $29,0($29)		!gpdisp!77
	subl $0,33,$0
$L686:
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
	ldah $29,0($27)		!gpdisp!78
	lda $29,0($29)		!gpdisp!78
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
	bne $2,$L689
	ldq $27,__clzdi2($29)		!literal!79
	jsr $26,($27),__clzdi2		!lituse_jsr!79
	ldah $29,0($26)		!gpdisp!80
	lda $29,0($29)		!gpdisp!80
	subl $0,1,$0
$L689:
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
	beq $16,$L692
	.align 4
$L693:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $1,$0,$0
	addl $17,$17,$17
	bne $16,$L693
$L692:
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
	srl $6,3,$5
	cpys $f31,$f31,$f31
	bic $18,7,$7
	bne $1,$L698
	addq $17,$6,$1
	cmpule $16,$1,$1
	bne $1,$L712
$L698:
	beq $5,$L701
	mov $17,$1
	mov $16,$2
	s8addq $5,$17,$5
	.align 4
$L702:
	lda $2,8($2)
	ldq $4,0($1)
	lda $1,8($1)
	cmpeq $1,$5,$3
	stq $4,-8($2)
	beq $3,$L702
$L701:
	zapnot $7,15,$1
	cmpule $6,$1,$6
	bne $6,$L697
	subl $18,1,$18
	subl $18,$7,$18
	lda $5,1($17)
	zapnot $18,15,$18
	addq $5,$1,$5
	addq $17,$1,$17
	addq $16,$1,$16
	addq $5,$18,$5
	.align 4
$L703:
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
	beq $4,$L703
	ret $31,($26),1
	.align 4
$L712:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L713
	.align 4
$L704:
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
	bne $5,$L704
$L697:
	ret $31,($26),1
$L713:
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
	srl $1,1,$7
	bne $2,$L715
	addq $17,$1,$1
	cmpule $16,$1,$1
	bne $1,$L730
$L715:
	beq $7,$L718
	addq $7,$7,$7
	mov $17,$3
	mov $16,$2
	addq $7,$17,$7
	.align 4
$L719:
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
	beq $6,$L719
$L718:
	blbc $18,$L714
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
$L730:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L731
	.align 4
$L720:
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
	bne $5,$L720
$L714:
	ret $31,($26),1
$L731:
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
	srl $6,2,$5
	cpys $f31,$f31,$f31
	bic $18,3,$7
	bne $1,$L733
	addq $17,$6,$1
	cmpule $16,$1,$1
	bne $1,$L747
$L733:
	beq $5,$L736
	mov $17,$1
	mov $16,$2
	s4addq $5,$17,$5
	.align 4
$L737:
	lda $2,4($2)
	ldl $4,0($1)
	lda $1,4($1)
	cmpeq $1,$5,$3
	stl $4,-4($2)
	beq $3,$L737
$L736:
	zapnot $7,15,$1
	cmpule $6,$1,$6
	bne $6,$L732
	subl $18,1,$18
	subl $18,$7,$18
	lda $5,1($17)
	zapnot $18,15,$18
	addq $5,$1,$5
	addq $17,$1,$17
	addq $16,$1,$16
	addq $5,$18,$5
	.align 4
$L738:
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
	beq $4,$L738
	ret $31,($26),1
	.align 4
$L747:
	subl $18,1,$2
	cpys $f31,$f31,$f31
	zapnot $2,15,$2
	beq $18,$L748
	.align 4
$L739:
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
	bne $5,$L739
$L732:
	ret $31,($26),1
$L748:
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
	ldah $29,0($27)		!gpdisp!82
	lda $29,0($29)		!gpdisp!82
$__modi..ng:
	.prologue 1
	mov $16,$24
	cpys $f31,$f31,$f31
	mov $17,$25
	ldq $27,__reml($29)		!literal!81
	jsr $23,($27),__reml		!lituse_jsrdirect!81
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
	blt $16,$L757
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqt $f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L757:
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
	blt $16,$L760
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqs $f10,$f0
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L760:
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
	ldah $29,0($27)		!gpdisp!84
	lda $29,0($29)		!gpdisp!84
$__umodi..ng:
	.prologue 1
	mov $16,$24
	cpys $f31,$f31,$f31
	mov $17,$25
	ldq $27,__remlu($29)		!literal!83
	jsr $23,($27),__remlu		!lituse_jsrdirect!83
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
	mov $31,$0
	lda $2,15($31)
	.align 4
$L765:
	subl $2,$0,$1
	sra $16,$1,$1
	blbs $1,$L764
	addl $0,1,$0
	cmpeq $0,16,$1
	beq $1,$L765
$L764:
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
	mov $31,$0
	.align 4
$L769:
	sra $16,$0,$1
	blbs $1,$L768
	addl $0,1,$0
	cmpeq $0,16,$1
	beq $1,$L769
$L768:
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
	ldah $29,0($27)		!gpdisp!85
	lda $29,0($29)		!gpdisp!85
$__fixunssfsi..ng:
	ldah $1,$LC17($29)		!gprelhigh
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	lds $f10,$LC17($1)		!gprellow
	cmptle $f10,$f16,$f11
	fbne $f11,$L777
	cvttq/c $f16,$f16
	stt $f16,0($30)
	ldq $0,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L777:
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
	mov $31,$0
	mov $31,$1
	.align 4
$L779:
	sra $16,$1,$2
	addl $1,1,$1
	and $2,1,$2
	cmpeq $1,16,$3
	addl $2,$0,$0
	beq $3,$L779
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
	mov $31,$0
	mov $31,$1
	.align 4
$L782:
	sra $16,$1,$2
	addl $1,1,$1
	and $2,1,$2
	cmpeq $1,16,$3
	addl $2,$0,$0
	beq $3,$L782
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
	beq $16,$L785
	.align 4
$L786:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $1,$0,$0
	addl $17,$17,$17
	bne $16,$L786
$L785:
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
	beq $16,$L791
	beq $17,$L791
	.align 4
$L792:
	zapnot $17,15,$2
	and $17,1,$17
	subl $31,$17,$1
	srl $2,1,$17
	and $16,$1,$1
	addl $1,$0,$0
	addl $16,$16,$16
	bne $17,$L792
$L791:
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
	bne $4,$L800
	br $31,$L808
	.align 4
$L804:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L801
$L800:
	addl $17,$17,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$3,$2
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L804
$L801:
	zapnot $17,15,$2
	cpys $f31,$f31,$f31
	mov $31,$0
	beq $1,$L803
$L808:
	mov $31,$0
	br $31,$L802
	.align 4
$L814:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L802:
	cmpult $3,$2,$3
	zapnot $1,15,$4
	bis $1,$0,$1
	bne $3,$L805
	subl $16,$17,$16
	addl $31,$1,$0
$L805:
	srl $4,1,$1
	srl $2,1,$17
	bne $1,$L814
$L803:
	cmovne $18,$16,$0
	ret $31,($26),1
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
	fbne $f10,$L816
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L819
$L816:
	ret $31,($26),1
	.align 4
$L819:
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
	fbne $f10,$L821
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L824
$L821:
	ret $31,($26),1
	.align 4
$L824:
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
	cpys $f31,$f31,$f31
	mov $31,$5
	beq $1,$L828
	subl $31,$17,$17
	lda $5,1($31)
$L828:
	mov $31,$0
	beq $17,$L829
	lda $2,1($31)
	.align 4
$L830:
	and $17,1,$1
	sra $17,1,$17
	cmpule $2,31,$4
	cmpult $31,$17,$3
	subl $31,$1,$1
	and $16,$1,$1
	addl $2,1,$2
	and $3,$4,$3
	addl $16,$16,$16
	addl $1,$0,$0
	and $2,0xff,$2
	bne $3,$L830
$L829:
	subl $31,$0,$1
	cmovne $5,$1,$0
	ret $31,($26),1
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
	beq $1,$L839
	subq $31,$16,$16
	lda $8,1($31)
$L839:
	cmplt $17,0,$1
	beq $1,$L840
	subq $31,$17,$17
	xor $8,1,$8
$L840:
	zapnot $16,15,$3
	zapnot $17,15,$1
	addl $31,$16,$16
	cmpule $3,$1,$4
	addl $31,$17,$17
	cpys $f31,$f31,$f31
	lda $2,1($31)
	beq $4,$L841
	br $31,$L850
	.align 4
$L845:
	addl $31,$7,$17
	cpys $f31,$f31,$f31
	addl $31,$6,$2
	beq $1,$L842
$L841:
	addl $17,$17,$7
	addl $2,$2,$6
	zapnot $7,15,$1
	zapnot $6,15,$5
	cmpult $1,$3,$1
	cmpult $31,$5,$5
	cmplt $17,0,$4
	cpys $f31,$f31,$f31
	and $1,$5,$1
	beq $4,$L845
$L842:
	zapnot $17,15,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	beq $2,$L844
$L850:
	mov $31,$0
	br $31,$L843
	.align 4
$L857:
	zapnot $16,15,$3
	zapnot $17,15,$1
$L843:
	cmpult $3,$1,$3
	cpys $f31,$f31,$f31
	zapnot $2,15,$4
	bne $3,$L846
	subl $16,$17,$16
	bis $2,$0,$0
$L846:
	srl $4,1,$2
	srl $1,1,$17
	bne $2,$L857
$L844:
	zapnot $0,15,$0
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
	beq $1,$L859
	subq $31,$16,$16
	lda $22,1($31)
$L859:
	subq $31,$17,$3
	cmovge $17,$17,$3
	zapnot $16,15,$8
	zapnot $3,15,$4
	addl $31,$16,$16
	cmpule $8,$4,$2
	addl $31,$3,$3
	cpys $f31,$f31,$f31
	lda $1,1($31)
	beq $2,$L860
	br $31,$L875
	.align 4
$L864:
	addl $31,$7,$3
	cpys $f31,$f31,$f31
	addl $31,$6,$1
	beq $2,$L861
$L860:
	addl $3,$3,$7
	addl $1,$1,$6
	zapnot $7,15,$2
	zapnot $6,15,$5
	cmpult $2,$8,$2
	cmpult $31,$5,$5
	cmplt $3,0,$4
	cpys $f31,$f31,$f31
	and $2,$5,$2
	beq $4,$L864
$L861:
	zapnot $3,15,$4
	bne $1,$L875
	subq $31,$8,$0
	cmoveq $22,$8,$0
	ret $31,($26),1
	.align 4
$L877:
	zapnot $3,15,$4
$L875:
	zapnot $1,15,$1
	cmpult $8,$4,$2
	cpys $f31,$f31,$f31
	srl $1,1,$1
	bne $2,$L865
	subl $16,$3,$16
	zapnot $16,15,$8
$L865:
	srl $4,1,$3
	bne $1,$L877
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
	cmpult $17,$16,$2
	cpys $f31,$f31,$f31
	lda $1,1($31)
	bne $2,$L879
	br $31,$L887
	.align 4
$L883:
	zapnot $4,3,$17
	zapnot $3,3,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L880
$L879:
	srl $17,15,$2
	addl $17,$17,$4
	addl $1,$1,$3
	beq $2,$L883
$L880:
	mov $31,$0
	beq $1,$L882
$L887:
	mov $31,$0
	.align 4
$L881:
	cmpult $16,$17,$2
	cpys $f31,$f31,$f31
	subl $16,$17,$3
	bne $2,$L884
	bis $1,$0,$0
	zapnot $3,3,$16
	zapnot $0,3,$0
$L884:
	srl $1,1,$1
	srl $17,1,$17
	bne $1,$L881
$L882:
	cmovne $18,$16,$0
	ret $31,($26),1
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
	bne $2,$L893
	br $31,$L901
	.align 4
$L897:
	addq $17,$17,$17
	addq $1,$1,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L894
$L893:
	and $17,$4,$2
	beq $2,$L897
$L894:
	mov $31,$0
	beq $1,$L896
$L901:
	mov $31,$0
	.align 4
$L895:
	cmpult $16,$17,$2
	bne $2,$L898
	subq $16,$17,$16
	bis $0,$1,$0
$L898:
	srl $1,1,$1
	srl $17,1,$17
	bne $1,$L895
$L896:
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
	beq $1,$L907
	lda $17,32($17)
	sll $16,$17,$16
	mov $31,$0
	addl $31,$16,$16
$L908:
	sll $16,32,$16
	zapnot $0,15,$0
	bis $0,$16,$0
$L906:
	ret $31,($26),1
	.align 4
$L907:
	mov $16,$0
	beq $17,$L906
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
	br $31,$L908
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
	beq $1,$L913
	sll $17,$19,$18
	mov $31,$17
$L915:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L913:
	beq $19,$L915
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
	beq $1,$L920
	sra $16,32,$1
	sra $16,63,$16
	subl $17,32,$17
	addl $31,$16,$0
	sra $1,$17,$1
$L921:
	zapnot $1,15,$1
	sll $0,32,$0
	bis $0,$1,$0
$L919:
	ret $31,($26),1
	.align 4
$L920:
	mov $16,$0
	beq $17,$L919
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
	br $31,$L921
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
	beq $1,$L926
	sra $18,63,$1
	sra $18,$19,$17
$L927:
	mov $1,$18
$L928:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L926:
	beq $19,$L928
	subq $31,$19,$2
	sll $18,$2,$2
	srl $17,$19,$17
	sra $18,$19,$1
	cpys $f31,$f31,$f31
	bis $2,$17,$17
	br $31,$L927
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
	ldah $29,0($27)		!gpdisp!86
	lda $29,0($29)		!gpdisp!86
$__clzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	cmovne $17,0,$16
	ldq $27,__clzdi2($29)		!literal!87
	stq $9,8($30)
	.cfi_offset 9, -8
	cmpeq $17,0,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	lda $1,-1($9)
	and $1,$17,$1
	bis $1,$16,$16
	jsr $26,($27),__clzdi2		!lituse_jsr!87
	ldah $29,0($26)		!gpdisp!88
	sll $9,6,$9
	ldq $26,0($30)
	addl $0,$9,$0
	ldq $9,8($30)
	lda $29,0($29)		!gpdisp!88
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
	bne $3,$L937
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L937
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L937
	cmpult $17,$16,$0
	lda $0,1($0)
$L937:
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
	mov $31,$0
	cmplt $1,$2,$3
	bne $3,$L943
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L943
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L943
	cmpult $17,$16,$0
	lda $0,1($0)
$L943:
	subl $0,1,$0
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
	bne $1,$L949
	cmple $17,$19,$17
	cpys $f31,$f31,$f31
	lda $0,2($31)
	beq $17,$L949
	cmpult $16,$18,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L949
	cmpult $18,$16,$0
	lda $0,1($0)
$L949:
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
	ldah $29,0($27)		!gpdisp!89
	lda $29,0($29)		!gpdisp!89
$__ctzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	cpys $f31,$f31,$f31
	cmovne $16,0,$17
	ldq $27,__ctzdi2($29)		!literal!90
	stq $9,8($30)
	.cfi_offset 9, -8
	cmpeq $16,0,$9
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	lda $1,-1($9)
	and $1,$16,$16
	bis $17,$16,$16
	jsr $26,($27),__ctzdi2		!lituse_jsr!90
	ldah $29,0($26)		!gpdisp!91
	sll $9,6,$9
	ldq $26,0($30)
	addl $0,$9,$0
	ldq $9,8($30)
	lda $29,0($29)		!gpdisp!91
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
	ldah $29,0($27)		!gpdisp!92
	lda $29,0($29)		!gpdisp!92
$__ffsti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	bne $16,$L957
	mov $31,$0
	bne $17,$L961
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L957:
	.cfi_restore_state
	ldq $27,__ctzdi2($29)		!literal!93
	jsr $26,($27),__ctzdi2		!lituse_jsr!93
	ldah $29,0($26)		!gpdisp!94
	ldq $26,0($30)
	addl $0,1,$0
	lda $29,0($29)		!gpdisp!94
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L961:
	.cfi_restore_state
	mov $17,$16
	ldq $27,__ctzdi2($29)		!literal!95
	jsr $26,($27),__ctzdi2		!lituse_jsr!95
	ldah $29,0($26)		!gpdisp!96
	ldq $26,0($30)
	addl $0,65,$0
	lda $29,0($29)		!gpdisp!96
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
	beq $1,$L963
	srl $16,32,$16
	lda $17,32($17)
	srl $16,$17,$16
	mov $31,$0
	addl $31,$16,$16
$L964:
	zapnot $16,15,$16
	sll $0,32,$0
	bis $0,$16,$0
$L962:
	ret $31,($26),1
	.align 4
$L963:
	mov $16,$0
	beq $17,$L962
	lda $2,32($31)
	extll $16,4,$1
	subl $2,$17,$2
	zapnot $2,15,$2
	zapnot $16,15,$16
	zapnot $1,15,$0
	srl $16,$17,$16
	sll $1,$2,$1
	srl $0,$17,$0
	bis $1,$16,$1
	addl $31,$0,$0
	cpys $f31,$f31,$f31
	addl $31,$1,$16
	br $31,$L964
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
	beq $1,$L969
	srl $18,$19,$17
	mov $31,$18
$L971:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L969:
	beq $19,$L971
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
__multi3:
	.frame $30,64,$26,0
	.mask 0x4003e00,-64
$LFB152:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!97
	lda $29,0($29)		!gpdisp!97
$__multi3..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	cpys $f31,$f31,$f31
	stq $9,8($30)
	.cfi_offset 9, -56
	mov $19,$9
	stq $11,24($30)
	.cfi_offset 11, -40
	mov $17,$11
	stq $12,32($30)
	.cfi_offset 12, -32
	mov $20,$12
	stq $13,40($30)
	.cfi_offset 13, -24
	mov $18,$13
	mulq $11,$12,$11
	stq $10,16($30)
	mov $19,$18
	stq $26,0($30)
	.cfi_offset 10, -48
	.cfi_offset 26, -64
	.prologue 1
	mov $16,$10
	lda $16,48($30)
	ldq $27,__mulddi3($29)		!literal!98
	jsr $26,($27),__mulddi3		!lituse_jsr!98
	ldah $29,0($26)		!gpdisp!99
	lda $29,0($29)		!gpdisp!99
	ldq $12,32($30)
	ldq $1,56($30)
	mov $10,$0
	ldq $2,48($30)
	ldq $26,0($30)
	stq $2,0($10)
	mulq $9,$13,$9
	ldq $13,40($30)
	addq $9,$11,$9
	ldq $11,24($30)
	addq $9,$1,$9
	stq $9,8($10)
	ldq $9,8($30)
	ldq $10,16($30)
	lda $30,64($30)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
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
	ldah $29,0($27)		!gpdisp!100
	lda $29,0($29)		!gpdisp!100
$__popcountdi2..ng:
	.prologue 1
	ldah $2,$LC19($29)		!gprelhigh
	srl $16,1,$1
	ldq $2,$LC19($2)		!gprellow
	and $1,$2,$1
	subq $16,$1,$16
	ldah $1,$LC20($29)		!gprelhigh
	srl $16,2,$2
	ldq $1,$LC20($1)		!gprellow
	and $16,$1,$16
	and $2,$1,$2
	addq $2,$16,$2
	srl $2,4,$1
	addq $1,$2,$1
	ldah $2,$LC21($29)		!gprelhigh
	ldq $2,$LC21($2)		!gprellow
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
	ldah $29,0($27)		!gpdisp!101
	lda $29,0($29)		!gpdisp!101
$__popcountti2..ng:
	.prologue 1
	ldah $1,$LC19($29)		!gprelhigh
	sll $17,63,$4
	srl $17,1,$2
	ldq $3,$LC19($1)		!gprellow
	srl $16,1,$1
	bis $4,$1,$1
	and $1,$3,$1
	subq $16,$1,$1
	cmpult $16,$1,$16
	and $2,$3,$2
	subq $17,$2,$2
	ldah $3,$LC20($29)		!gprelhigh
	subq $2,$16,$2
	cpys $f31,$f31,$f31
	sll $2,62,$6
	ldq $5,$LC20($3)		!gprellow
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
	ldah $4,$LC21($29)		!gprelhigh
	addq $2,$1,$1
	cmpult $1,$2,$2
	ldq $5,$LC21($4)		!gprellow
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
	ldah $29,0($27)		!gpdisp!102
	lda $29,0($29)		!gpdisp!102
$__powidf2..ng:
	.prologue 1
	ldah $3,$LC16($29)		!gprelhigh
	mov $17,$1
	lds $f0,$LC16($3)		!gprellow
	br $31,$L990
	.align 4
$L995:
	mult $f16,$f16,$f16
	bis $31,$31,$31
$L990:
	srl $1,63,$2
	blbc $1,$L988
	mult $f0,$f16,$f0
$L988:
	addq $2,$1,$1
	sra $1,1,$1
	bne $1,$L995
	cmplt $17,0,$17
	bne $17,$L996
	ret $31,($26),1
	.align 4
$L996:
	lds $f10,$LC16($3)		!gprellow
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
	ldah $29,0($27)		!gpdisp!103
	lda $29,0($29)		!gpdisp!103
$__powisf2..ng:
	.prologue 1
	ldah $3,$LC16($29)		!gprelhigh
	mov $17,$1
	lds $f0,$LC16($3)		!gprellow
	br $31,$L1000
	.align 4
$L1005:
	muls $f16,$f16,$f16
	bis $31,$31,$31
$L1000:
	srl $1,63,$2
	blbc $1,$L998
	muls $f0,$f16,$f0
$L998:
	addq $2,$1,$1
	sra $1,1,$1
	bne $1,$L1005
	cmplt $17,0,$17
	bne $17,$L1006
	ret $31,($26),1
	.align 4
$L1006:
	lds $f10,$LC16($3)		!gprellow
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
	bne $3,$L1008
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L1008
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1008
	cmpult $17,$16,$0
	lda $0,1($0)
$L1008:
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
	mov $31,$0
	cmpult $1,$2,$3
	bne $3,$L1014
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L1014
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1014
	cmpult $17,$16,$0
	lda $0,1($0)
$L1014:
	subl $0,1,$0
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
	bne $1,$L1020
	cmpule $17,$19,$17
	cpys $f31,$f31,$f31
	lda $0,2($31)
	beq $17,$L1020
	cmpult $16,$18,$1
	cpys $f31,$f31,$f31
	mov $31,$0
	bne $1,$L1020
	cmpult $18,$16,$0
	lda $0,1($0)
$L1020:
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
	.long	1065353216
	.align 2
$LC17:
	.long	1191182336
	.section	.rodata.cst8
	.align 3
$LC19:
	.quad	6148914691236517205
	.align 3
$LC20:
	.quad	3689348814741910323
	.align 3
$LC21:
	.quad	1085102592571150095
	.globl __ctzdi2
	.globl __clzdi2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
