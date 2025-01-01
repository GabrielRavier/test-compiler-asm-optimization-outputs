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
	mov $16,$0
	cmpule $16,$17,$1
	bne $1,$L5
	addq $17,$18,$17
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
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $16,$9
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
	and $17,0xff,$17
	addq $16,$18,$18
	lda $16,-1($16)
	br $31,$L59
	.align 4
$L61:
	mov $18,$0
	lda $18,-1($18)
	ldq_u $1,0($0)
	extbl $1,$0,$1
	cmpeq $1,$17,$1
	bne $1,$L58
$L59:
	cmpeq $18,$16,$1
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
	mov $16,$0
	ldq_u $1,0($17)
	lda $2,1($17)
	ldq_u $4,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	mskbl $4,$16,$4
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
	mov $16,$0
	lda $2,1($16)
	ldq_u $1,0($16)
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
$L96:
	ldq_u $1,0($17)
	extqh $0,$3,$0
	extqh $1,$2,$1
	sra $0,56,$0
	sra $1,56,$1
	cmpult $31,$0,$4
	cmpeq $0,$1,$5
	and $4,$5,$4
	bne $4,$L97
	and $0,0xff,$0
	and $1,0xff,$1
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
	mov $16,$0
	ldq_u $1,0($16)
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
	addq $17,$18,$5
	br $31,$L107
	.align 4
$L108:
	lda $16,1($16)
	lda $17,1($17)
	ldq_u $0,0($16)
	extbl $0,$16,$0
	beq $0,$L110
$L107:
	cmpeq $17,$5,$1
	ldq_u $4,0($17)
	cmpeq $1,0,$1
	extbl $4,$17,$2
	cmpult $31,$2,$3
	cmpeq $2,$0,$2
	and $3,$2,$2
	and $1,$2,$1
	bne $1,$L108
	extbl $4,$17,$4
	subl $0,$4,$0
$L105:
	ret $31,($26),1
	.align 4
$L110:
	ldq_u $4,0($17)
	extbl $4,$17,$4
	subl $0,$4,$0
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
	lda $16,-8232($16)
	addl $1,7,$1
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
	addl $2,4,$2
	and $16,$3,$0
	addl $16,$2,$16
	zapnot $0,15,$0
	zapnot $16,15,$16
	cmpeq $0,$3,$0
	ldah $1,16($31)
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
	subl $16,48,$16
	subl $0,97,$0
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
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	cmptun $f16,$f16,$f10
	fbne $f10,$L163
	cmptun $f17,$f17,$f10
	fbne $f10,$L164
	stt $f16,0($30)
	ldq $1,0($30)
	srl $1,63,$2
	stt $f17,0($30)
	ldq $3,0($30)
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
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	sts $f16,16($30)
	sts $f17,0($30)
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L170
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	fbne $f12,$L171
	ldah $1,-32768($31)
	ldl $3,16($30)
	and $1,$3,$2
	ldl $3,0($30)
	and $1,$3,$1
	addl $31,$2,$2
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -128
	.cfi_offset 9, -120
	.cfi_offset 10, -112
	.cfi_offset 11, -104
	.cfi_offset 12, -96
	.cfi_offset 13, -88
	.cfi_offset 14, -80
	.cfi_offset 15, -72
	.prologue 1
	ldq $14,0($17)
	ldq $11,8($17)
	mov $16,$10
	ldq $9,0($18)
	ldq $15,8($18)
	mov $14,$16
	mov $11,$17
	mov $14,$18
	mov $11,$19
	stq $6,112($30)
	stq $7,120($30)
	stq $22,96($30)
	stq $23,104($30)
	ldq $27,_OtsEqlX($29)		!literal!9
	jsr $26,($27),_OtsEqlX		!lituse_jsr!9
	ldah $29,0($26)		!gpdisp!10
	lda $29,0($29)		!gpdisp!10
	blt $0,$L179
	mov $9,$16
	mov $15,$17
	mov $9,$18
	mov $15,$19
	ldq $27,_OtsEqlX($29)		!literal!7
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
	stq $14,0($10)
	stq $11,8($10)
	mov $10,$0
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
	stq $9,80($30)
	stq $11,72($30)
	stq $15,88($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsLssX($29)		!literal!5
	jsr $26,($27),_OtsLssX		!lituse_jsr!5
	ldah $29,0($26)		!gpdisp!6
	lda $29,0($29)		!gpdisp!6
	cmplt $31,$0,$0
	cmovne $0,$9,$14
	cmovne $0,$15,$11
	br $31,$L174
	.align 4
$L179:
	mov $9,$14
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
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	cmptun $f16,$f16,$f10
	fbne $f10,$L185
	cmptun $f17,$f17,$f10
	fbne $f10,$L186
	stt $f16,0($30)
	ldq $1,0($30)
	srl $1,63,$2
	stt $f17,0($30)
	ldq $3,0($30)
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
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	sts $f16,0($30)
	sts $f17,16($30)
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L192
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	fbne $f12,$L193
	ldah $1,-32768($31)
	ldl $3,0($30)
	and $1,$3,$2
	ldl $3,16($30)
	and $1,$3,$1
	addl $31,$2,$2
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -128
	.cfi_offset 9, -120
	.cfi_offset 10, -112
	.cfi_offset 11, -104
	.cfi_offset 12, -96
	.cfi_offset 13, -88
	.cfi_offset 14, -80
	.cfi_offset 15, -72
	.prologue 1
	ldq $15,0($17)
	ldq $14,8($17)
	mov $16,$25
	ldq $13,0($18)
	ldq $12,8($18)
	mov $15,$16
	mov $14,$17
	mov $15,$18
	mov $14,$19
	mov $25,$9
	stq $6,112($30)
	stq $7,120($30)
	stq $22,96($30)
	stq $23,104($30)
	ldq $27,_OtsEqlX($29)		!literal!16
	jsr $26,($27),_OtsEqlX		!lituse_jsr!16
	ldah $29,0($26)		!gpdisp!17
	lda $29,0($29)		!gpdisp!17
	blt $0,$L196
	mov $13,$16
	mov $12,$17
	mov $13,$18
	mov $12,$19
	ldq $27,_OtsEqlX($29)		!literal!14
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
	stq $13,0($9)
	stq $12,8($9)
	mov $9,$0
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
	stq $15,64($30)
	stq $13,80($30)
	stq $14,72($30)
	stq $12,88($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsLssX($29)		!literal!12
	jsr $26,($27),_OtsLssX		!lituse_jsr!12
	ldah $29,0($26)		!gpdisp!13
	lda $29,0($29)		!gpdisp!13
	cmplt $31,$0,$0
	cmovne $0,$15,$13
	cmovne $0,$14,$12
	br $31,$L196
	.align 4
$L201:
	mov $15,$13
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
	addl $31,$16,$16
	ldah $0,s.0($29)		!gprelhigh
	lda $0,s.0($0)		!gprellow
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
	bis $1,$4,$1
	stq_u $1,0($2)
	lda $2,1($2)
	bne $16,$L206
$L205:
	ldq_u $1,0($2)
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
	subl $16,1,$16
	zapnot $16,15,$16
	ldah $1,seed($29)		!gprelhigh
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
	ldq $0,seed($1)		!gprellow
	ldah $2,$LC0($29)		!gprelhigh
	ldq $2,$LC0($2)		!gprellow
	mulq $0,$2,$0
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
	ldq $1,8($16)
	beq $1,$L218
	ldq $2,0($16)
	stq $2,0($1)
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -80
	.cfi_offset 9, -72
	.cfi_offset 10, -64
	.cfi_offset 11, -56
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	.prologue 1
	stq $18,64($30)
	ldq $10,0($18)
	mov $16,$11
	stq $17,72($30)
	mov $19,$9
	mov $20,$13
	beq $10,$L228
	mov $17,$14
	mov $31,$15
	br $31,$L230
	.align 4
$L242:
	lda $15,1($15)
	cmpeq $10,$15,$3
	addq $14,$9,$14
	bne $3,$L228
$L230:
	mov $14,$17
	mov $11,$16
	mov $14,$12
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!24
	lda $29,0($29)		!gpdisp!24
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
	lda $10,1($10)
	ldq $1,64($30)
	stq $10,0($1)
	ldq $1,72($30)
	addq $1,$12,$12
	beq $9,$L227
	mov $9,$18
	mov $11,$17
	mov $12,$16
	ldq $27,memmove($29)		!literal!22
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	.prologue 1
	ldq $13,0($18)
	mov $16,$11
	mov $19,$14
	mov $20,$12
	beq $13,$L244
	mov $17,$9
	mov $31,$10
	br $31,$L246
	.align 4
$L254:
	lda $10,1($10)
	cmpeq $13,$10,$1
	addq $9,$14,$9
	bne $1,$L244
$L246:
	mov $9,$17
	mov $11,$16
	mov $9,$15
	mov $12,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	.prologue 1
	mov $18,$9
	mov $16,$14
	mov $17,$12
	mov $19,$11
	mov $20,$13
	.align 4
$L307:
	beq $9,$L298
$L308:
	srl $9,1,$15
	mov $14,$16
	mulq $15,$11,$10
	addq $12,$10,$10
	mov $10,$17
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!30
	lda $29,0($29)		!gpdisp!30
	blt $0,$L302
	ble $0,$L297
	lda $9,-1($9)
	addq $10,$11,$12
	subq $9,$15,$9
	bne $9,$L308
$L298:
	mov $31,$10
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -80
	.cfi_offset 9, -72
	.cfi_offset 10, -64
	.cfi_offset 11, -56
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	.prologue 1
	addl $31,$18,$9
	mov $16,$14
	mov $17,$11
	mov $19,$10
	mov $20,$13
	stq $21,64($30)
	bne $9,$L313
	br $31,$L310
	.align 4
$L321:
	ble $0,$L312
	subl $9,1,$9
	addq $15,$10,$11
	sra $9,1,$12
$L312:
	addl $31,$12,$9
	beq $9,$L310
$L313:
	sra $9,1,$12
	ldq $18,64($30)
	mulq $12,$10,$15
	mov $14,$16
	addq $11,$15,$15
	mov $15,$17
	mov $13,$27
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
	mov $18,$25
	ldq $27,__divl($29)		!literal!33
	jsr $23,($27),__divl		!lituse_jsrdirect!33
	mov $27,$1
	mov $16,$0
	ldq $27,__reml($29)		!literal!34
	jsr $23,($27),__reml		!lituse_jsrdirect!34
	stl $1,0($16)
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
	mov $18,$25
	ldq $27,__divq($29)		!literal!36
	jsr $23,($27),__divq		!lituse_jsrdirect!36
	mov $27,$1
	mov $16,$0
	ldq $27,__remq($29)		!literal!37
	jsr $23,($27),__remq		!lituse_jsrdirect!37
	stq $1,0($16)
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
	mov $18,$25
	ldq $27,__divq($29)		!literal!39
	jsr $23,($27),__divq		!lituse_jsrdirect!39
	mov $27,$1
	mov $16,$0
	ldq $27,__remq($29)		!literal!40
	jsr $23,($27),__remq		!lituse_jsrdirect!40
	stq $1,0($16)
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
	mov $18,$25
	ldq $27,__divq($29)		!literal!42
	jsr $23,($27),__divq		!lituse_jsrdirect!42
	mov $27,$1
	mov $16,$0
	ldq $27,__remq($29)		!literal!43
	jsr $23,($27),__remq		!lituse_jsrdirect!43
	stq $1,0($16)
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
	ldl $0,0($17)
	br $31,$L348
	.align 4
$L349:
	ldl $3,4($16)
	lda $16,4($16)
	ldl $0,4($17)
	lda $17,4($17)
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
	ldl $3,0($17)
	cmpult $31,$4,$2
	cmpeq $4,$3,$5
	cmpult $31,$3,$1
	and $2,$5,$2
	and $1,$2,$1
	beq $1,$L373
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
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
	ldl $1,0($17)
	cmpeq $2,$1,$3
	beq $3,$L402
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
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
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $16,$9
	beq $18,$L405
	s4addq $18,0,$18
	ldq $27,memcpy($29)		!literal!46
	jsr $26,($27),memcpy		!lituse_jsr!46
	ldah $29,0($26)		!gpdisp!47
	lda $29,0($29)		!gpdisp!47
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
	mov $16,$0
	cmpeq $16,$17,$1
	bne $1,$L410
	subq $16,$17,$2
	s4addq $18,0,$1
	cmpult $2,$1,$2
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
	lda $1,-1($18)
	beq $18,$L424
	mov $16,$2
	.align 4
$L425:
	lda $1,-1($1)
	stl $17,0($2)
	lda $3,1($1)
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
	sll $16,$17,$17
	srl $16,$1,$0
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
	srl $16,$17,$17
	sll $16,$1,$0
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
	sll $16,$17,$17
	srl $16,$1,$0
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
	srl $16,$17,$17
	sll $16,$1,$0
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
	zapnot $16,15,$16
	br $31,$L459
	.align 4
$L462:
	zapnot $0,15,$1
	cmpeq $1,32,$1
	bne $1,$L461
$L459:
	srl $16,$0,$2
	addl $0,1,$0
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
	lda $0,1($31)
	ldah $1,$LC1($29)		!gprelhigh
	cpys $f16,$f16,$f16
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
	lda $0,1($31)
	ldah $1,$LC5($29)		!gprelhigh
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
	stq $26,0($30)
	stq $10,8($30)
	stq $11,16($30)
	.cfi_offset 26, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.prologue 1
	ldq $10,0($16)
	ldq $11,8($16)
	mov $10,$16
	mov $11,$17
	ldah $1,$LC7($29)		!gprelhigh
	lda $1,$LC7($1)		!gprellow
	ldq $18,0($1)
	ldq $19,8($1)
	ldq $27,_OtsLssX($29)		!literal!53
	jsr $26,($27),_OtsLssX		!lituse_jsr!53
	ldah $29,0($26)		!gpdisp!54
	lda $29,0($29)		!gpdisp!54
	lda $1,1($31)
	bgt $0,$L481
	mov $10,$16
	mov $11,$17
	ldah $1,$LC8($29)		!gprelhigh
	lda $1,$LC8($1)		!gprellow
	ldq $18,0($1)
	ldq $19,8($1)
	ldq $27,_OtsGtrX($29)		!literal!51
	jsr $26,($27),_OtsGtrX		!lituse_jsr!51
	ldah $29,0($26)		!gpdisp!52
	lda $29,0($29)		!gpdisp!52
	cmplt $31,$0,$1
$L481:
	mov $1,$0
	ldq $26,0($30)
	ldq $10,8($30)
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
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.prologue 1
	stq $17,16($30)
	ldt $f10,16($30)
	cvtqt $f10,$f16
	mov $16,$9
	ldq $27,_OtsConvertFloatTX($29)		!literal!56
	jsr $26,($27),_OtsConvertFloatTX		!lituse_jsr!56
	ldah $29,0($26)		!gpdisp!57
	lda $29,0($29)		!gpdisp!57
	stq $16,0($9)
	stq $17,8($9)
	ldq $26,0($30)
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
	cpys $f16,$f16,$f0
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L485
	adds $f16,$f16,$f11
	cmpteq $f11,$f10,$f10
	fbne $f10,$L485
	cmplt $17,0,$1
	ldah $2,$LC9($29)		!gprelhigh
	lds $f10,$LC9($2)		!gprellow
	bne $1,$L496
	.align 4
$L488:
	blbc $17,$L487
	muls $f0,$f10,$f0
$L487:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L485
	muls $f10,$f10,$f10
	br $31,$L488
	.align 4
$L485:
	ret $31,($26),1
	.align 4
$L496:
	ldah $1,$LC10($29)		!gprelhigh
	lds $f10,$LC10($1)		!gprellow
	br $31,$L488
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
	cpys $f16,$f16,$f0
	cmptun $f16,$f16,$f10
	fbne $f10,$L498
	addt $f16,$f16,$f11
	cmpteq $f11,$f16,$f10
	fbne $f10,$L498
	cmplt $17,0,$1
	bne $1,$L509
	ldah $1,$LC9($29)		!gprelhigh
	lds $f10,$LC9($1)		!gprellow
	.align 4
$L501:
	blbc $17,$L500
	mult $f0,$f10,$f0
$L500:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L498
	mult $f10,$f10,$f10
	br $31,$L501
	.align 4
$L498:
	ret $31,($26),1
	.align 4
$L509:
	ldah $1,$LC10($29)		!gprelhigh
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -176
	.cfi_offset 9, -168
	.cfi_offset 10, -160
	.cfi_offset 11, -152
	.cfi_offset 12, -144
	.cfi_offset 13, -136
	.cfi_offset 14, -128
	.cfi_offset 15, -120
	.prologue 1
	ldq $10,0($17)
	mov $18,$12
	ldq $9,8($17)
	mov $16,$13
	mov $10,$16
	mov $9,$17
	mov $10,$18
	mov $9,$19
	stq $2,160($30)
	stq $3,168($30)
	stq $4,144($30)
	stq $5,152($30)
	ldq $27,_OtsEqlX($29)		!literal!69
	jsr $26,($27),_OtsEqlX		!lituse_jsr!69
	ldah $29,0($26)		!gpdisp!70
	lda $29,0($29)		!gpdisp!70
	blt $0,$L511
	mov $10,$16
	mov $9,$17
	mov $10,$18
	mov $9,$19
	lda $20,2($31)
	ldq $27,_OtsAddX($29)		!literal!65
	jsr $26,($27),_OtsAddX		!lituse_jsr!65
	ldah $29,0($26)		!gpdisp!66
	lda $29,0($29)		!gpdisp!66
	stq $10,128($30)
	stq $9,136($30)
	ldq $18,128($30)
	ldq $19,136($30)
	ldq $27,_OtsEqlX($29)		!literal!67
	jsr $26,($27),_OtsEqlX		!lituse_jsr!67
	ldah $29,0($26)		!gpdisp!68
	lda $29,0($29)		!gpdisp!68
	bgt $0,$L511
	cmplt $12,0,$2
	bne $2,$L522
	ldah $2,$LC13($29)		!gprelhigh
	lda $2,$LC13($2)		!gprellow
	ldq $3,0($2)
	ldq $11,8($2)
	.align 4
$L514:
	blbc $12,$L513
	stq $10,80($30)
	stq $3,96($30)
	stq $9,88($30)
	stq $11,104($30)
	ldq $16,80($30)
	ldq $17,88($30)
	ldq $18,96($30)
	ldq $19,104($30)
	lda $20,2($31)
	stq $3,168($30)
	ldq $27,_OtsMulX($29)		!literal!63
	jsr $26,($27),_OtsMulX		!lituse_jsr!63
	ldah $29,0($26)		!gpdisp!64
	lda $29,0($29)		!gpdisp!64
	mov $16,$10
	mov $17,$9
	ldq $3,168($30)
$L513:
	srl $12,63,$4
	addq $4,$12,$1
	sra $1,1,$12
	beq $12,$L511
	stq $3,64($30)
	stq $11,72($30)
	ldq $16,64($30)
	ldq $17,72($30)
	mov $3,$18
	mov $11,$19
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!61
	jsr $26,($27),_OtsMulX		!lituse_jsr!61
	ldah $29,0($26)		!gpdisp!62
	lda $29,0($29)		!gpdisp!62
	mov $16,$3
	mov $17,$11
	br $31,$L514
	.align 4
$L511:
	stq $10,112($30)
	stq $9,120($30)
	ldq $1,112($30)
	ldq $2,120($30)
	stq $1,0($13)
	stq $2,8($13)
	mov $13,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
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
$L522:
	.cfi_restore_state
	ldah $2,$LC14($29)		!gprelhigh
	lda $2,$LC14($2)		!gprellow
	ldq $3,0($2)
	ldq $11,8($2)
	br $31,$L514
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
	beq $18,$L524
	addq $17,$18,$18
	mov $16,$2
	.align 4
$L525:
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
	beq $6,$L525
$L524:
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
	mov $16,$0
	lda $3,1($16)
	ldq_u $1,0($16)
	extqh $1,$3,$2
	sra $2,56,$2
	beq $2,$L537
	.align 4
$L532:
	mov $3,$2
	lda $3,1($3)
	ldq_u $1,0($2)
	extqh $1,$3,$4
	sra $4,56,$4
	bne $4,$L532
	.align 4
$L544:
	beq $18,$L539
	lda $4,1($17)
	ldq_u $3,0($17)
	mskbl $1,$2,$1
	extqh $3,$4,$3
	sra $3,56,$3
	insbl $3,$2,$5
	bis $5,$1,$1
	stq_u $1,0($2)
	beq $3,$L545
	lda $18,-1($18)
	mov $4,$17
	lda $2,1($2)
	ldq_u $1,0($2)
	br $31,$L544
	.align 4
$L545:
	bne $18,$L536
$L539:
	mskbl $1,$2,$1
	stq_u $1,0($2)
$L536:
	ret $31,($26),1
	.align 4
$L537:
	mov $16,$2
	br $31,$L544
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
	beq $17,$L554
$L547:
	addq $16,$0,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L549
	ret $31,($26),1
	.align 4
$L549:
	lda $0,1($0)
	cmpeq $17,$0,$1
	beq $1,$L547
	ret $31,($26),1
	.align 4
$L554:
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
	beq $4,$L560
$L564:
	mov $17,$2
	br $31,$L559
	.align 4
$L558:
	cmpeq $1,$4,$1
	mov $3,$2
	bne $1,$L557
$L559:
	lda $3,1($2)
	ldq_u $1,0($2)
	extqh $1,$3,$1
	sra $1,56,$1
	bne $1,$L558
	mov $5,$0
	lda $5,1($0)
	ldq_u $4,0($0)
	extqh $4,$5,$4
	sra $4,56,$4
	bne $4,$L564
$L560:
	mov $31,$0
$L557:
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
$L567:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,$17,$3
	cmovne $3,$16,$0
	mov $2,$16
	bne $1,$L567
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
	beq $22,$L571
	.align 4
$L572:
	mov $2,$3
	lda $2,1($2)
	ldq_u $1,0($3)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L572
$L571:
	subq $3,$17,$3
	lda $23,-1($17)
	addq $23,$3,$23
	bne $3,$L579
	ret $31,($26),1
	.align 4
$L593:
	mov $5,$0
	beq $2,$L592
$L579:
	lda $5,1($0)
	ldq_u $1,0($0)
	extqh $1,$5,$2
	sra $2,56,$2
	cmpeq $2,$22,$3
	beq $3,$L593
	beq $0,$L573
	extbl $1,$0,$1
	mov $17,$3
	mov $0,$7
	bne $1,$L575
	br $31,$L594
	.align 4
$L577:
	lda $7,1($7)
	lda $3,1($3)
	ldq_u $1,0($7)
	extbl $1,$7,$1
	beq $1,$L595
$L575:
	cmpeq $3,$23,$2
	ldq_u $8,0($3)
	cmpeq $2,0,$2
	extbl $8,$3,$4
	cmpult $31,$4,$6
	cmpeq $4,$1,$4
	and $6,$4,$4
	and $2,$4,$2
	bne $2,$L577
$L576:
	extbl $8,$3,$8
	cmpeq $8,$1,$8
	bne $8,$L573
	mov $5,$0
	br $31,$L579
	.align 4
$L592:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L573:
	ret $31,($26),1
	.align 4
$L595:
	ldq_u $8,0($3)
	br $31,$L576
$L594:
	ldq_u $8,0($17)
	br $31,$L576
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
	cpys $f16,$f16,$f0
	cmptlt $f16,$f31,$f10
	fbne $f10,$L605
$L597:
	cmptlt $f31,$f0,$f10
	fbeq $f10,$L600
	cmptlt $f17,$f31,$f10
	fbne $f10,$L599
$L600:
	ret $31,($26),1
	.align 4
$L605:
	cmptlt $f31,$f17,$f10
	fbeq $f10,$L597
$L599:
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
	beq $19,$L606
	cmpult $17,$19,$1
	mov $31,$0
	bne $1,$L606
	subq $17,$19,$22
	addq $16,$22,$22
	cmpule $16,$22,$1
	beq $1,$L606
	lda $24,1($18)
	ldq_u $23,0($18)
	extqh $23,$24,$23
	sra $23,56,$23
	br $31,$L613
	.align 4
$L608:
	cmpule $8,$22,$8
	beq $8,$L629
$L613:
	lda $8,1($16)
	ldq_u $1,0($16)
	mov $16,$0
	mov $8,$16
	extqh $1,$8,$1
	sra $1,56,$1
	cmpeq $1,$23,$1
	beq $1,$L608
	lda $4,-1($19)
	mov $24,$1
	beq $4,$L630
	mov $8,$2
	br $31,$L609
	.align 4
$L611:
	lda $4,-1($4)
	lda $2,1($2)
	lda $1,1($1)
	beq $4,$L631
$L609:
	ldq_u $5,0($2)
	ldq_u $6,0($1)
	extbl $5,$2,$3
	extbl $6,$1,$7
	cmpeq $3,$7,$3
	bne $3,$L611
	beq $4,$L606
	extbl $5,$2,$5
	subl $5,$7,$5
	bne $5,$L608
$L606:
	ret $31,($26),1
	.align 4
$L631:
	ret $31,($26),1
	.align 4
$L629:
	mov $31,$0
	ret $31,($26),1
$L630:
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 10, -16
	.prologue 1
	mov $18,$10
	mov $16,$9
	beq $18,$L633
	ldq $27,memmove($29)		!literal!72
	jsr $26,($27),memmove		!lituse_jsr!72
	ldah $29,0($26)		!gpdisp!73
	lda $29,0($29)		!gpdisp!73
$L633:
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
	cpys $f16,$f16,$f0
	cmptlt $f16,$f31,$f10
	mov $31,$3
	fbeq $f10,$L638
	cpysn $f16,$f16,$f0
	lda $3,1($31)
$L638:
	mov $31,$1
	ldah $2,$LC10($29)		!gprelhigh
	ldah $4,$LC16($29)		!gprelhigh
	lds $f11,$LC16($4)		!gprellow
	cmptle $f11,$f0,$f10
	fbeq $f10,$L660
	lds $f12,$LC10($2)		!gprellow
	.align 4
$L642:
	mult $f0,$f12,$f0
	addl $1,1,$1
	cmptle $f11,$f0,$f10
	fbne $f10,$L642
$L643:
	stl $1,0($17)
	beq $3,$L647
	cpysn $f0,$f0,$f0
$L647:
	ret $31,($26),1
	.align 4
$L660:
	cmpteq $f0,$f31,$f10
	lda $1,1($31)
	fbeq $f10,$L644
	bis $31,$31,$1
$L644:
	ldah $2,$LC10($29)		!gprelhigh
	lda $4,1($31)
	lds $f11,$LC10($2)		!gprellow
	cmptlt $f0,$f11,$f10
	fbne $f10,$L645
	bis $31,$31,$4
$L645:
	and $1,$4,$4
	mov $31,$1
	blbc $4,$L643
	lds $f11,$LC10($2)		!gprellow
	.align 4
$L646:
	addt $f0,$f0,$f0
	subl $1,1,$1
	cmptlt $f0,$f11,$f10
	fbne $f10,$L646
	br $31,$L643
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
	beq $16,$L661
	.align 4
$L663:
	and $16,1,$1
	subq $31,$1,$1
	srl $16,1,$16
	and $1,$17,$1
	addq $0,$1,$0
	addq $17,$17,$17
	bne $16,$L663
$L661:
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
	cmpult $2,$3,$4
	lda $1,1($31)
	bne $4,$L668
	br $31,$L676
	.align 4
$L672:
	addl $17,$17,$17
	addl $1,$1,$1
	zapnot $17,15,$2
	zapnot $1,15,$4
	cmpult $2,$3,$2
	cmpult $31,$4,$4
	addl $31,$17,$17
	and $2,$4,$2
	addl $31,$1,$1
	beq $2,$L669
$L668:
	cmplt $17,0,$2
	beq $2,$L672
$L669:
	zapnot $17,15,$2
	mov $31,$0
	beq $1,$L671
$L676:
	mov $31,$0
	br $31,$L670
	.align 4
$L682:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L670:
	cmpult $3,$2,$3
	bne $3,$L673
	bis $1,$0,$0
	subl $16,$17,$16
	addl $31,$0,$0
$L673:
	zapnot $1,15,$1
	srl $2,1,$17
	srl $1,1,$1
	bne $1,$L682
$L671:
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
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	sra $16,63,$1
	lda $0,7($31)
	cmpeq $16,$1,$2
	xor $16,$1,$16
	bne $2,$L684
	sll $16,8,$16
	zapnot $16,14,$16
	ldq $27,__clzdi2($29)		!literal!76
	jsr $26,($27),__clzdi2		!lituse_jsr!76
	ldah $29,0($26)		!gpdisp!77
	lda $29,0($29)		!gpdisp!77
	subl $0,33,$0
$L684:
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
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	sra $16,63,$1
	lda $0,63($31)
	cmpeq $16,$1,$2
	xor $16,$1,$16
	bne $2,$L687
	ldq $27,__clzdi2($29)		!literal!79
	jsr $26,($27),__clzdi2		!lituse_jsr!79
	ldah $29,0($26)		!gpdisp!80
	lda $29,0($29)		!gpdisp!80
	subl $0,1,$0
$L687:
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
	beq $16,$L690
	.align 4
$L691:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $17,$17,$17
	addl $1,$0,$0
	bne $16,$L691
$L690:
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
	bic $18,7,$7
	bne $1,$L696
	addq $17,$6,$1
	cmpule $16,$1,$1
	bne $1,$L710
$L696:
	beq $5,$L699
	mov $17,$1
	mov $16,$2
	s8addq $5,$17,$5
	.align 4
$L700:
	lda $1,8($1)
	ldq $4,-8($1)
	cmpeq $1,$5,$3
	lda $2,8($2)
	stq $4,-8($2)
	beq $3,$L700
$L699:
	zapnot $7,15,$1
	cmpule $6,$1,$6
	bne $6,$L695
	subl $18,1,$18
	subl $18,$7,$18
	lda $5,1($17)
	zapnot $18,15,$18
	addq $5,$1,$5
	addq $17,$1,$17
	addq $16,$1,$16
	addq $5,$18,$5
	.align 4
$L701:
	lda $3,1($17)
	ldq_u $1,0($17)
	mov $3,$17
	ldq_u $2,0($16)
	cmpeq $3,$5,$4
	extqh $1,$3,$1
	mskbl $2,$16,$2
	sra $1,56,$1
	insbl $1,$16,$1
	bis $1,$2,$1
	stq_u $1,0($16)
	lda $16,1($16)
	beq $4,$L701
	ret $31,($26),1
	.align 4
$L710:
	subl $18,1,$2
	zapnot $2,15,$2
	beq $18,$L711
	.align 4
$L702:
	addq $17,$2,$1
	addq $16,$2,$3
	lda $6,1($1)
	ldq_u $1,0($1)
	lda $2,-1($2)
	ldq_u $4,0($3)
	lda $5,1($2)
	extqh $1,$6,$1
	mskbl $4,$3,$4
	sra $1,56,$1
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	bne $5,$L702
$L695:
	ret $31,($26),1
$L711:
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
	bne $2,$L713
	addq $17,$1,$1
	cmpule $16,$1,$1
	bne $1,$L728
$L713:
	beq $7,$L716
	addq $7,$7,$7
	mov $17,$3
	mov $16,$2
	addq $7,$17,$7
	.align 4
$L717:
	lda $5,2($3)
	ldq_u $1,0($3)
	mov $5,$3
	ldq_u $4,0($2)
	cmpeq $5,$7,$6
	extqh $1,$5,$1
	mskwl $4,$2,$4
	sra $1,48,$1
	inswl $1,$2,$1
	bis $1,$4,$1
	stq_u $1,0($2)
	lda $2,2($2)
	beq $6,$L717
$L716:
	blbc $18,$L712
	subl $18,1,$18
	zapnot $18,15,$18
	addq $17,$18,$17
	addq $16,$18,$16
	lda $3,1($17)
	ldq_u $1,0($17)
	ldq_u $2,0($16)
	extqh $1,$3,$1
	mskbl $2,$16,$2
	sra $1,56,$1
	insbl $1,$16,$1
	bis $1,$2,$1
	stq_u $1,0($16)
	ret $31,($26),1
	.align 4
$L728:
	subl $18,1,$2
	zapnot $2,15,$2
	beq $18,$L729
	.align 4
$L718:
	addq $17,$2,$1
	addq $16,$2,$3
	lda $6,1($1)
	ldq_u $1,0($1)
	lda $2,-1($2)
	ldq_u $4,0($3)
	lda $5,1($2)
	extqh $1,$6,$1
	mskbl $4,$3,$4
	sra $1,56,$1
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	bne $5,$L718
$L712:
	ret $31,($26),1
$L729:
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
	bic $18,3,$7
	bne $1,$L731
	addq $17,$6,$1
	cmpule $16,$1,$1
	bne $1,$L745
$L731:
	beq $5,$L734
	mov $17,$1
	mov $16,$2
	s4addq $5,$17,$5
	.align 4
$L735:
	lda $1,4($1)
	ldl $4,-4($1)
	cmpeq $1,$5,$3
	lda $2,4($2)
	stl $4,-4($2)
	beq $3,$L735
$L734:
	zapnot $7,15,$1
	cmpule $6,$1,$6
	bne $6,$L730
	subl $18,1,$18
	subl $18,$7,$18
	lda $5,1($17)
	zapnot $18,15,$18
	addq $5,$1,$5
	addq $17,$1,$17
	addq $16,$1,$16
	addq $5,$18,$5
	.align 4
$L736:
	lda $3,1($17)
	ldq_u $1,0($17)
	mov $3,$17
	ldq_u $2,0($16)
	cmpeq $3,$5,$4
	extqh $1,$3,$1
	mskbl $2,$16,$2
	sra $1,56,$1
	insbl $1,$16,$1
	bis $1,$2,$1
	stq_u $1,0($16)
	lda $16,1($16)
	beq $4,$L736
	ret $31,($26),1
	.align 4
$L745:
	subl $18,1,$2
	zapnot $2,15,$2
	beq $18,$L746
	.align 4
$L737:
	addq $17,$2,$1
	addq $16,$2,$3
	lda $6,1($1)
	ldq_u $1,0($1)
	lda $2,-1($2)
	ldq_u $4,0($3)
	lda $5,1($2)
	extqh $1,$6,$1
	mskbl $4,$3,$4
	sra $1,56,$1
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	bne $5,$L737
$L730:
	ret $31,($26),1
$L746:
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
	blt $16,$L755
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqt $f10,$f0
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L755:
	.cfi_restore_state
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,0($30)
	ldt $f11,0($30)
	cvtqt $f11,$f10
	addt $f10,$f10,$f0
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
	blt $16,$L758
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqs $f10,$f0
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L758:
	.cfi_restore_state
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,0($30)
	ldt $f11,0($30)
	cvtqs $f11,$f10
	adds $f10,$f10,$f0
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
$L763:
	subl $2,$0,$1
	sra $16,$1,$1
	blbs $1,$L762
	addl $0,1,$0
	cmpeq $0,16,$1
	beq $1,$L763
$L762:
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
$L767:
	sra $16,$0,$1
	blbs $1,$L766
	addl $0,1,$0
	cmpeq $0,16,$1
	beq $1,$L767
$L766:
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
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	ldah $1,$LC17($29)		!gprelhigh
	lds $f10,$LC17($1)		!gprellow
	cmptle $f10,$f16,$f11
	fbne $f11,$L775
	cvttq/c $f16,$f16
	stt $f16,0($30)
	ldq $0,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L775:
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
$L777:
	sra $16,$1,$2
	addl $1,1,$1
	and $2,1,$2
	cmpeq $1,16,$3
	addl $2,$0,$0
	beq $3,$L777
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
$L780:
	sra $16,$1,$2
	addl $1,1,$1
	and $2,1,$2
	cmpeq $1,16,$3
	addl $2,$0,$0
	beq $3,$L780
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
	beq $16,$L783
	.align 4
$L784:
	zapnot $16,15,$2
	and $16,1,$16
	subl $31,$16,$1
	srl $2,1,$16
	and $17,$1,$1
	addl $17,$17,$17
	addl $1,$0,$0
	bne $16,$L784
$L783:
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
	beq $16,$L789
	beq $17,$L789
	.align 4
$L790:
	zapnot $17,15,$2
	and $17,1,$17
	subl $31,$17,$1
	srl $2,1,$17
	and $16,$1,$1
	addl $16,$16,$16
	addl $1,$0,$0
	bne $17,$L790
$L789:
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
	cmpult $2,$3,$4
	lda $1,1($31)
	bne $4,$L798
	br $31,$L806
	.align 4
$L802:
	addl $17,$17,$17
	addl $1,$1,$1
	zapnot $17,15,$2
	zapnot $1,15,$4
	cmpult $2,$3,$2
	cmpult $31,$4,$4
	addl $31,$17,$17
	and $2,$4,$2
	addl $31,$1,$1
	beq $2,$L799
$L798:
	cmplt $17,0,$2
	beq $2,$L802
$L799:
	zapnot $17,15,$2
	mov $31,$0
	beq $1,$L801
$L806:
	mov $31,$0
	br $31,$L800
	.align 4
$L812:
	zapnot $17,15,$2
	zapnot $16,15,$3
$L800:
	cmpult $3,$2,$3
	bne $3,$L803
	bis $1,$0,$0
	subl $16,$17,$16
	addl $31,$0,$0
$L803:
	zapnot $1,15,$1
	srl $2,1,$17
	srl $1,1,$1
	bne $1,$L812
$L801:
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
	lda $0,-1($31)
	cpys $f16,$f16,$f16
	cpys $f17,$f17,$f17
	cmptlt $f16,$f17,$f10
	fbne $f10,$L814
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L817
$L814:
	ret $31,($26),1
	.align 4
$L817:
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
	lda $0,-1($31)
	cmptlt $f16,$f17,$f10
	fbne $f10,$L819
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbeq $f10,$L822
$L819:
	ret $31,($26),1
	.align 4
$L822:
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
	mov $31,$5
	beq $1,$L826
	subl $31,$17,$17
	lda $5,1($31)
$L826:
	mov $31,$0
	beq $17,$L827
	lda $2,1($31)
	.align 4
$L828:
	and $17,1,$1
	sra $17,1,$17
	cmpule $2,31,$4
	cmpult $31,$17,$3
	subl $31,$1,$1
	and $16,$1,$1
	addl $16,$16,$16
	addl $2,1,$2
	and $3,$4,$3
	addl $1,$0,$0
	and $2,0xff,$2
	bne $3,$L828
$L827:
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
	mov $31,$5
	beq $1,$L837
	subq $31,$16,$16
	lda $5,1($31)
$L837:
	cmplt $17,0,$1
	beq $1,$L838
	subq $31,$17,$17
	xor $5,1,$5
$L838:
	zapnot $16,15,$3
	zapnot $17,15,$2
	addl $31,$16,$16
	cmpule $3,$2,$4
	addl $31,$17,$17
	lda $1,1($31)
	beq $4,$L839
	br $31,$L848
	.align 4
$L843:
	addl $17,$17,$17
	addl $1,$1,$1
	zapnot $17,15,$2
	zapnot $1,15,$4
	cmpult $2,$3,$2
	cmpult $31,$4,$4
	addl $31,$17,$17
	and $2,$4,$2
	addl $31,$1,$1
	beq $2,$L840
$L839:
	cmplt $17,0,$2
	beq $2,$L843
$L840:
	zapnot $17,15,$2
	mov $31,$0
	beq $1,$L842
$L848:
	mov $31,$0
	br $31,$L841
	.align 4
$L855:
	zapnot $16,15,$3
	zapnot $17,15,$2
$L841:
	cmpult $3,$2,$3
	bne $3,$L844
	subl $16,$17,$16
	bis $1,$0,$0
$L844:
	zapnot $1,15,$1
	srl $2,1,$17
	srl $1,1,$1
	bne $1,$L855
$L842:
	zapnot $0,15,$0
	subq $31,$0,$1
	cmovne $5,$1,$0
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
	mov $31,$6
	beq $1,$L857
	subq $31,$16,$16
	lda $6,1($31)
$L857:
	subq $31,$17,$2
	cmovge $17,$17,$2
	zapnot $16,15,$5
	zapnot $2,15,$3
	addl $31,$16,$16
	cmpule $5,$3,$4
	addl $31,$2,$2
	lda $1,1($31)
	beq $4,$L858
	br $31,$L873
	.align 4
$L862:
	addl $2,$2,$2
	addl $1,$1,$1
	zapnot $2,15,$3
	zapnot $1,15,$4
	cmpult $3,$5,$3
	cmpult $31,$4,$4
	addl $31,$2,$2
	and $3,$4,$3
	addl $31,$1,$1
	beq $3,$L859
$L858:
	cmplt $2,0,$3
	beq $3,$L862
$L859:
	zapnot $2,15,$3
	bne $1,$L873
	subq $31,$5,$0
	cmoveq $6,$5,$0
	ret $31,($26),1
	.align 4
$L875:
	zapnot $2,15,$3
$L873:
	cmpult $5,$3,$4
	bne $4,$L863
	subl $16,$2,$16
	zapnot $16,15,$5
$L863:
	zapnot $1,15,$1
	srl $3,1,$2
	srl $1,1,$1
	bne $1,$L875
	subq $31,$5,$0
	cmoveq $6,$5,$0
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
	lda $1,1($31)
	bne $2,$L877
	br $31,$L885
	.align 4
$L881:
	addl $17,$17,$17
	addl $1,$1,$1
	zapnot $17,3,$17
	zapnot $1,3,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L878
$L877:
	srl $17,15,$2
	beq $2,$L881
$L878:
	mov $31,$0
	beq $1,$L880
$L885:
	mov $31,$0
	.align 4
$L879:
	cmpult $16,$17,$2
	bne $2,$L882
	subl $16,$17,$16
	bis $1,$0,$0
	zapnot $16,3,$16
	zapnot $0,3,$0
$L882:
	srl $1,1,$1
	srl $17,1,$17
	bne $1,$L879
$L880:
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
	bne $2,$L891
	br $31,$L899
	.align 4
$L895:
	addq $17,$17,$17
	addq $1,$1,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L892
$L891:
	and $17,$4,$2
	beq $2,$L895
$L892:
	mov $31,$0
	beq $1,$L894
$L899:
	mov $31,$0
	.align 4
$L893:
	cmpult $16,$17,$2
	bne $2,$L896
	subq $16,$17,$16
	bis $0,$1,$0
$L896:
	srl $1,1,$1
	srl $17,1,$17
	bne $1,$L893
$L894:
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
	beq $1,$L905
	lda $17,32($17)
	sll $16,$17,$16
	mov $31,$0
	addl $31,$16,$16
$L906:
	sll $16,32,$16
	zapnot $0,15,$0
	bis $0,$16,$0
$L904:
	ret $31,($26),1
	.align 4
$L905:
	mov $16,$0
	beq $17,$L904
	addl $31,$16,$0
	lda $2,32($31)
	subl $2,$17,$2
	zapnot $0,15,$1
	zapnot $2,15,$2
	sra $16,32,$16
	srl $1,$2,$1
	sll $16,$17,$16
	sll $0,$17,$0
	bis $1,$16,$1
	addl $31,$0,$0
	addl $31,$1,$16
	br $31,$L906
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
	mov $16,$0
	beq $1,$L911
	sll $17,$19,$18
	mov $31,$17
$L913:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L911:
	beq $19,$L913
	subq $31,$19,$1
	srl $17,$1,$1
	sll $18,$19,$18
	sll $17,$19,$17
	bis $1,$18,$18
	stq $17,0($0)
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
	beq $1,$L918
	sra $16,32,$1
	sra $16,63,$16
	subl $17,32,$17
	addl $31,$16,$0
	sra $1,$17,$1
$L919:
	zapnot $1,15,$1
	sll $0,32,$0
	bis $0,$1,$0
$L917:
	ret $31,($26),1
	.align 4
$L918:
	mov $16,$0
	beq $17,$L917
	lda $1,32($31)
	subl $1,$17,$1
	sra $16,32,$0
	zapnot $1,15,$1
	zapnot $16,15,$16
	sll $0,$1,$1
	srl $16,$17,$16
	sra $0,$17,$0
	bis $1,$16,$1
	addl $31,$1,$1
	br $31,$L919
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
	mov $16,$0
	beq $1,$L924
	sra $18,63,$1
	sra $18,$19,$17
$L925:
	mov $1,$18
$L926:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L924:
	beq $19,$L926
	subq $31,$19,$2
	sll $18,$2,$2
	srl $17,$19,$17
	sra $18,$19,$1
	bis $2,$17,$17
	br $31,$L925
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
	sll $3,4,$3
	lda $2,16($31)
	subl $2,$3,$2
	zapnot $2,15,$2
	srl $1,$2,$1
	lda $0,2($31)
	zapnot $1,2,$2
	zapnot $1,15,$1
	cmpeq $2,0,$2
	s8addl $2,0,$2
	lda $4,8($31)
	subl $4,$2,$4
	zapnot $4,15,$4
	addl $2,$3,$3
	srl $1,$4,$1
	and $1,240,$2
	cmpeq $2,0,$2
	zapnot $1,15,$1
	s4addl $2,0,$2
	lda $4,4($31)
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
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	cmpeq $17,0,$9
	lda $1,-1($9)
	cmovne $17,0,$16
	and $1,$17,$1
	bis $1,$16,$16
	ldq $27,__clzdi2($29)		!literal!87
	jsr $26,($27),__clzdi2		!lituse_jsr!87
	ldah $29,0($26)		!gpdisp!88
	lda $29,0($29)		!gpdisp!88
	sll $9,6,$9
	addl $0,$9,$0
	ldq $26,0($30)
	ldq $9,8($30)
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
	bne $3,$L935
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L935
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L935
	cmpult $17,$16,$0
	lda $0,1($0)
$L935:
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
	bne $3,$L941
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L941
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L941
	cmpult $17,$16,$0
	lda $0,1($0)
$L941:
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
	mov $31,$0
	bne $1,$L947
	cmple $17,$19,$17
	lda $0,2($31)
	beq $17,$L947
	cmpult $16,$18,$1
	mov $31,$0
	bne $1,$L947
	cmpult $18,$16,$0
	lda $0,1($0)
$L947:
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
	addl $0,$0,$0
	and $1,3,$1
	ornot $31,$1,$2
	srl $1,1,$1
	and $2,1,$2
	lda $4,2($31)
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
	ldah $29,0($27)		!gpdisp!89
	lda $29,0($29)		!gpdisp!89
$__ctzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	cmpeq $16,0,$9
	cmovne $16,0,$17
	lda $1,-1($9)
	and $1,$16,$16
	bis $17,$16,$16
	ldq $27,__ctzdi2($29)		!literal!90
	jsr $26,($27),__ctzdi2		!lituse_jsr!90
	ldah $29,0($26)		!gpdisp!91
	lda $29,0($29)		!gpdisp!91
	sll $9,6,$9
	addl $0,$9,$0
	ldq $26,0($30)
	ldq $9,8($30)
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
	bne $16,$L955
	mov $31,$0
	bne $17,$L959
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L955:
	.cfi_restore_state
	ldq $27,__ctzdi2($29)		!literal!93
	jsr $26,($27),__ctzdi2		!lituse_jsr!93
	ldah $29,0($26)		!gpdisp!94
	lda $29,0($29)		!gpdisp!94
	addl $0,1,$0
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L959:
	.cfi_restore_state
	mov $17,$16
	ldq $27,__ctzdi2($29)		!literal!95
	jsr $26,($27),__ctzdi2		!lituse_jsr!95
	ldah $29,0($26)		!gpdisp!96
	lda $29,0($29)		!gpdisp!96
	addl $0,65,$0
	ldq $26,0($30)
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
	beq $1,$L961
	srl $16,32,$16
	lda $17,32($17)
	srl $16,$17,$16
	mov $31,$0
	addl $31,$16,$16
$L962:
	zapnot $16,15,$16
	sll $0,32,$0
	bis $0,$16,$0
$L960:
	ret $31,($26),1
	.align 4
$L961:
	mov $16,$0
	beq $17,$L960
	extll $16,4,$1
	lda $2,32($31)
	subl $2,$17,$2
	zapnot $2,15,$2
	zapnot $16,15,$16
	zapnot $1,15,$0
	sll $1,$2,$1
	srl $16,$17,$16
	srl $0,$17,$0
	bis $1,$16,$1
	addl $31,$0,$0
	addl $31,$1,$16
	br $31,$L962
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
	mov $16,$0
	beq $1,$L967
	srl $18,$19,$17
	mov $31,$18
$L969:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L967:
	beq $19,$L969
	subq $31,$19,$1
	sll $18,$1,$1
	srl $17,$19,$17
	srl $18,$19,$18
	bis $1,$17,$17
	stq $17,0($0)
	stq $18,8($0)
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
	srl $2,16,$2
	srl $4,16,$4
	zapnot $1,3,$0
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
	zapnot $0,15,$6
	srl $2,16,$3
	srl $6,16,$6
	zapnot $0,3,$0
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
	addq $3,$4,$3
	stq $3,0($16)
	addq $1,$17,$1
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
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.prologue 1
	mov $19,$9
	mov $16,$10
	mov $18,$13
	mov $17,$11
	mov $19,$18
	lda $16,48($30)
	mov $20,$12
	ldq $27,__mulddi3($29)		!literal!98
	jsr $26,($27),__mulddi3		!lituse_jsr!98
	ldah $29,0($26)		!gpdisp!99
	lda $29,0($29)		!gpdisp!99
	mulq $9,$13,$9
	ldq $1,56($30)
	ldq $2,48($30)
	stq $2,0($10)
	mulq $11,$12,$11
	addq $9,$11,$9
	addq $9,$1,$9
	stq $9,8($10)
	mov $10,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
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
	mov $16,$0
	cmpult $31,$17,$1
	subq $31,$18,$18
	subq $31,$17,$17
	stq $17,0($16)
	subq $18,$1,$18
	stq $18,8($16)
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
	lda $0,27030($31)
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
	lda $0,27030($31)
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
	xor $1,$16,$1
	zapnot $1,15,$16
	srl $16,8,$16
	xor $16,$1,$16
	zapnot $16,15,$1
	srl $1,4,$1
	xor $1,$16,$1
	and $1,15,$1
	lda $0,27030($31)
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
	srl $16,1,$1
	ldah $2,$LC19($29)		!gprelhigh
	ldq $2,$LC19($2)		!gprellow
	and $1,$2,$1
	subq $16,$1,$16
	ldah $1,$LC20($29)		!gprelhigh
	ldq $1,$LC20($1)		!gprellow
	srl $16,2,$2
	and $2,$1,$2
	and $16,$1,$16
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
	srl $1,1,$1
	ldah $2,21845($31)
	lda $2,21845($2)
	and $1,$2,$1
	subl $16,$1,$16
	zapnot $16,15,$1
	srl $1,2,$1
	ldah $2,13107($31)
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
	ldq $3,$LC19($1)		!gprellow
	sll $17,63,$4
	srl $16,1,$1
	srl $17,1,$2
	bis $4,$1,$1
	and $1,$3,$1
	subq $16,$1,$1
	and $2,$3,$2
	cmpult $16,$1,$16
	subq $17,$2,$2
	subq $2,$16,$2
	sll $2,62,$6
	ldah $3,$LC20($29)		!gprelhigh
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
	addq $2,$1,$1
	ldah $4,$LC21($29)		!gprelhigh
	ldq $5,$LC21($4)		!gprellow
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
	ldah $29,0($27)		!gpdisp!102
	lda $29,0($29)		!gpdisp!102
$__powidf2..ng:
	.prologue 1
	ldah $3,$LC16($29)		!gprelhigh
	mov $17,$1
	lds $f0,$LC16($3)		!gprellow
	.align 4
$L988:
	blbc $1,$L986
	mult $f0,$f16,$f0
$L986:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	beq $1,$L987
	mult $f16,$f16,$f16
	br $31,$L988
	.align 4
$L987:
	cmplt $17,0,$17
	bne $17,$L993
	ret $31,($26),1
	.align 4
$L993:
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
	.align 4
$L997:
	blbc $1,$L995
	muls $f0,$f16,$f0
$L995:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	beq $1,$L996
	muls $f16,$f16,$f16
	br $31,$L997
	.align 4
$L996:
	cmplt $17,0,$17
	bne $17,$L1002
	ret $31,($26),1
	.align 4
$L1002:
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
	bne $3,$L1004
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L1004
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1004
	cmpult $17,$16,$0
	lda $0,1($0)
$L1004:
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
	bne $3,$L1010
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L1010
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$0
	cmpult $16,$17,$1
	bne $1,$L1010
	cmpult $17,$16,$0
	lda $0,1($0)
$L1010:
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
	mov $31,$0
	bne $1,$L1016
	cmpule $17,$19,$17
	lda $0,2($31)
	beq $17,$L1016
	cmpult $16,$18,$1
	mov $31,$0
	bne $1,$L1016
	cmpult $18,$16,$0
	lda $0,1($0)
$L1016:
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
