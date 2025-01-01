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
	stq $18,0($16)
	stq $17,8($16)
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
	stq $18,0($16)
	stq $17,8($16)
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
	lda $3,1($17)
	ldq_u $1,0($17)
	extqh $1,$3,$1
	sra $1,56,$1
	ldq_u $3,0($2)
	mskbl $3,$2,$3
	insbl $1,$2,$1
	bis $1,$3,$1
	stq_u $1,0($2)
	cmpeq $0,$2,$1
	beq $1,$L7
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
	ldq_u $1,-1($17)
	extqh $1,$17,$1
	sra $1,56,$1
	ldq_u $3,-1($2)
	lda $4,-1($2)
	mskbl $3,$4,$3
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,-1($2)
	cmpeq $18,$2,$1
	beq $1,$L8
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
	beq $19,$L13
	.align 4
$L12:
	ldq_u $1,0($17)
	extbl $1,$17,$1
	ldq_u $3,0($16)
	mskbl $3,$16,$3
	insbl $1,$16,$2
	bis $2,$3,$2
	stq_u $2,0($16)
	and $1,0xff,$1
	cmpeq $1,$18,$1
	bne $1,$L13
	lda $19,-1($19)
	lda $17,1($17)
	lda $16,1($16)
	bne $19,$L12
$L13:
	lda $0,1($16)
	cmoveq $19,0,$0
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
	beq $18,$L23
	.align 4
$L19:
	ldq_u $1,0($16)
	extbl $1,$16,$1
	cmpeq $1,$17,$1
	bne $1,$L23
	lda $16,1($16)
	lda $18,-1($18)
	bne $18,$L19
$L23:
	mov $16,$0
	cmoveq $18,0,$0
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
	br $31,$L32
	.align 4
$L28:
	lda $18,-1($18)
	lda $16,1($16)
	lda $17,1($17)
$L32:
	beq $18,$L27
	ldq_u $1,0($16)
	extbl $1,$16,$1
	ldq_u $2,0($17)
	extbl $2,$17,$2
	cmpeq $1,$2,$1
	bne $1,$L28
$L27:
	mov $31,$0
	beq $18,$L29
	ldq_u $0,0($16)
	extbl $0,$16,$0
	ldq_u $1,0($17)
	extbl $1,$17,$1
	subl $0,$1,$0
$L29:
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
	beq $18,$L34
	ldq $27,memcpy($29)		!literal!2
	jsr $26,($27),0		!lituse_jsr!2
	ldah $29,0($26)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
$L34:
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
	and $17,0xff,$17
	lda $18,-1($18)
	addq $16,$18,$18
	lda $16,-1($16)
	.align 4
$L36:
	cmpeq $18,$16,$1
	bne $1,$L39
	mov $18,$0
	lda $18,-1($18)
	ldq_u $1,0($0)
	extbl $1,$0,$1
	cmpeq $1,$17,$1
	beq $1,$L36
	ret $31,($26),1
	.align 4
$L39:
	mov $31,$0
$L35:
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
	beq $18,$L41
	addq $16,$18,$18
	mov $16,$1
	.align 4
$L42:
	ldq_u $3,0($1)
	mskbl $3,$1,$3
	insbl $17,$1,$2
	bis $2,$3,$2
	stq_u $2,0($1)
	lda $1,1($1)
	cmpeq $18,$1,$2
	beq $2,$L42
$L41:
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
	.align 4
$L48:
	lda $2,1($17)
	ldq_u $1,0($17)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq_u $3,0($0)
	mskbl $3,$0,$3
	insbl $1,$0,$2
	bis $2,$3,$2
	stq_u $2,0($0)
	beq $1,$L45
	lda $17,1($17)
	lda $0,1($0)
	br $31,$L48
	.align 4
$L45:
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
	and $17,0xff,$17
	br $31,$L56
	.align 4
$L52:
	lda $16,1($16)
$L56:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L53
	and $1,0xff,$1
	cmpeq $1,$17,$1
	beq $1,$L52
$L53:
	mov $16,$0
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
	.align 4
$L59:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,$17,$3
	bne $3,$L58
	mov $2,$0
	bne $1,$L59
	mov $31,$0
$L58:
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
	.align 4
$L65:
	.prologue 0
	lda $1,1($16)
	ldq_u $0,0($16)
	extqh $0,$1,$0
	sra $0,56,$0
	lda $2,1($17)
	ldq_u $1,0($17)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpult $31,$0,$2
	cmpeq $0,$1,$3
	and $2,$3,$2
	beq $2,$L62
	lda $16,1($16)
	lda $17,1($17)
	br $31,$L65
	.align 4
$L62:
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
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	mov $16,$0
	beq $1,$L67
	.align 4
$L68:
	lda $0,1($0)
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L68
$L67:
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
	beq $18,$L72
	ldq_u $0,0($16)
	extbl $0,$16,$0
	beq $0,$L73
	lda $18,-1($18)
	addq $17,$18,$3
	.align 4
$L74:
	ldq_u $1,0($17)
	extbl $1,$17,$1
	cmpult $31,$1,$2
	cmpeq $1,$0,$1
	and $2,$1,$2
	cmpeq $17,$3,$1
	cmpeq $1,0,$1
	and $1,$2,$1
	beq $1,$L73
	lda $16,1($16)
	lda $17,1($17)
	ldq_u $0,0($16)
	extbl $0,$16,$0
	bne $0,$L74
$L73:
	ldq_u $1,0($17)
	extbl $1,$17,$1
	subl $0,$1,$0
$L72:
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
	bne $1,$L78
	bic $18,1,$18
	addq $16,$18,$4
	.align 4
$L80:
	ldq_u $1,1($16)
	lda $2,1($16)
	extbl $1,$2,$1
	ldq_u $2,0($17)
	mskbl $2,$17,$2
	insbl $1,$17,$1
	bis $1,$2,$1
	stq_u $1,0($17)
	ldq_u $1,0($16)
	extbl $1,$16,$1
	ldq_u $2,1($17)
	lda $3,1($17)
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,1($17)
	lda $17,2($17)
	lda $16,2($16)
	cmpeq $16,$4,$1
	beq $1,$L80
$L78:
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
	cmpule $0,4,$0
	cmpeq $16,32,$16
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
	cmpule $1,32,$1
	zapnot $16,15,$2
	cmpule $2,31,$2
	bis $1,$2,$1
	lda $0,1($31)
	bne $1,$L93
	lda $1,-8232($16)
	zapnot $1,15,$1
	cmpule $1,1,$1
	ldah $16,-1($16)
	addl $16,7,$16
	zapnot $16,15,$16
	cmpule $16,2,$0
	cmovne $1,1,$0
$L93:
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
	bne $1,$L103
	lda $1,-8234($16)
	zapnot $1,15,$1
	ldah $3,1($31)
	lda $4,-18475($3)
	cmpule $1,$4,$1
	lda $4,8231($31)
	cmpule $2,$4,$2
	bis $1,$2,$1
	lda $0,1($31)
	bne $1,$L99
	ldah $2,-1($31)
	lda $1,8192($2)
	addl $16,$1,$1
	zapnot $1,15,$1
	lda $4,8184($31)
	cmpule $1,$4,$1
	bne $1,$L99
	addl $2,4,$2
	addl $16,$2,$2
	zapnot $2,15,$2
	ldah $1,16($31)
	lda $1,3($1)
	cmpule $2,$1,$2
	lda $3,-2($3)
	and $16,$3,$16
	zapnot $16,15,$16
	cmpeq $16,$3,$16
	xor $16,1,$0
	cmoveq $2,0,$0
$L99:
	ret $31,($26),1
	.align 4
$L103:
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
	subl $16,48,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bis $16,32,$0
	subl $0,97,$0
	zapnot $0,15,$0
	cmpule $0,5,$0
	cmovne $1,1,$0
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
	fbne $f10,$L111
	cmptun $f17,$f17,$f10
	fbne $f10,$L112
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L115
	subt $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L111:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L112:
	cpys $f17,$f17,$f0
	ret $31,($26),1
	.align 4
$L115:
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
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L119
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	fbne $f12,$L120
	cmptlt $f11,$f10,$f12
	fbeq $f12,$L123
	subs $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L119:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L120:
	cpys $f17,$f17,$f0
	ret $31,($26),1
	.align 4
$L123:
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
	cmptun $f16,$f16,$f10
	fbne $f10,$L127
	cmptun $f17,$f17,$f10
	fbne $f10,$L128
	stt $f16,0($30)
	ldq $1,0($30)
	srl $1,63,$2
	stt $f17,0($30)
	ldq $3,0($30)
	srl $3,63,$1
	cmpeq $2,$1,$1
	bne $1,$L126
	cpys $f17,$f17,$f0
	bne $2,$L124
$L128:
	cpys $f16,$f16,$f0
	br $31,$L124
	.align 4
$L126:
	cmptlt $f16,$f17,$f10
	cpys $f16,$f16,$f0
	fcmovne $f10,$f17,$f0
$L124:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L127:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L124
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
	fbne $f11,$L133
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	fbne $f12,$L134
	ldah $1,-32768($31)
	ldl $3,16($30)
	and $1,$3,$2
	addl $31,$2,$2
	ldl $3,0($30)
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L132
	cpys $f17,$f17,$f0
	bne $2,$L130
	cpys $f16,$f16,$f0
	br $31,$L130
	.align 4
$L132:
	cmptlt $f10,$f11,$f12
	lds $f0,16($30)
	lds $f10,0($30)
	fcmovne $f12,$f10,$f0
$L130:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L133:
	.cfi_restore_state
	lds $f0,0($30)
	br $31,$L130
	.align 4
$L134:
	lds $f0,16($30)
	br $31,$L130
	.cfi_endproc
$LFE34:
	.end fmaxf
	.align 2
	.align 4
	.globl fmaxl
	.ent fmaxl
fmaxl:
	.frame $30,144,$26,0
	.mask 0x400fe00,-144
$LFB35:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!4
	lda $29,0($29)		!gpdisp!4
$fmaxl..ng:
	lda $30,-144($30)
	.cfi_def_cfa_offset 144
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 26, -144
	.cfi_offset 9, -136
	.cfi_offset 10, -128
	.cfi_offset 11, -120
	.cfi_offset 12, -112
	.cfi_offset 13, -104
	.cfi_offset 14, -96
	.cfi_offset 15, -88
	.prologue 1
	stq $16,64($30)
	ldq $9,0($17)
	ldq $11,8($17)
	ldq $10,0($18)
	ldq $14,8($18)
	mov $9,$16
	mov $11,$17
	mov $9,$18
	mov $11,$19
	stq $4,128($30)
	stq $5,136($30)
	stq $6,112($30)
	stq $7,120($30)
	ldq $27,_OtsEqlX($29)		!literal!5
	jsr $26,($27),0		!lituse_jsr!5
	ldah $29,0($26)		!gpdisp!6
	lda $29,0($29)		!gpdisp!6
	blt $0,$L142
	mov $10,$16
	mov $14,$17
	mov $10,$18
	mov $14,$19
	ldq $27,_OtsEqlX($29)		!literal!7
	jsr $26,($27),0		!lituse_jsr!7
	ldah $29,0($26)		!gpdisp!8
	lda $29,0($29)		!gpdisp!8
	blt $0,$L137
	srl $11,63,$3
	srl $14,63,$2
	cmpeq $3,$2,$2
	bne $2,$L138
	cmovne $3,$10,$9
	cmovne $3,$14,$11
$L137:
	ldq $1,64($30)
	stq $9,0($1)
	stq $11,8($1)
	mov $1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
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
$L138:
	.cfi_restore_state
	stq $9,80($30)
	stq $11,88($30)
	ldq $16,80($30)
	ldq $17,88($30)
	stq $10,96($30)
	stq $14,104($30)
	ldq $18,96($30)
	ldq $19,104($30)
	stq $14,112($30)
	ldq $27,_OtsLssX($29)		!literal!9
	jsr $26,($27),0		!lituse_jsr!9
	ldah $29,0($26)		!gpdisp!10
	lda $29,0($29)		!gpdisp!10
	cmplt $31,$0,$0
	cmovne $0,$10,$9
	cmovne $0,$14,$11
	br $31,$L137
	.align 4
$L142:
	mov $10,$9
	mov $14,$11
	br $31,$L137
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
	fbne $f10,$L146
	cmptun $f17,$f17,$f10
	fbne $f10,$L147
	stt $f16,0($30)
	ldq $1,0($30)
	srl $1,63,$2
	stt $f17,0($30)
	ldq $3,0($30)
	srl $3,63,$1
	cmpeq $2,$1,$1
	bne $1,$L145
	cpys $f16,$f16,$f0
	bne $2,$L143
$L146:
	cpys $f17,$f17,$f0
	br $31,$L143
	.align 4
$L145:
	cmptlt $f16,$f17,$f10
	cpys $f17,$f17,$f0
	fcmovne $f10,$f16,$f0
$L143:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L147:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	br $31,$L143
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
	fbne $f11,$L152
	cpys $f17,$f17,$f11
	cmptun $f11,$f11,$f12
	fbne $f12,$L153
	ldah $1,-32768($31)
	ldl $3,0($30)
	and $1,$3,$2
	addl $31,$2,$2
	ldl $3,16($30)
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L151
	cpys $f16,$f16,$f0
	bne $2,$L149
	cpys $f17,$f17,$f0
	br $31,$L149
	.align 4
$L151:
	cmptlt $f10,$f11,$f12
	lds $f0,16($30)
	lds $f10,0($30)
	fcmovne $f12,$f10,$f0
$L149:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L152:
	.cfi_restore_state
	lds $f0,16($30)
	br $31,$L149
	.align 4
$L153:
	lds $f0,0($30)
	br $31,$L149
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
	mov $16,$9
	ldq $15,0($17)
	ldq $14,8($17)
	ldq $13,0($18)
	ldq $12,8($18)
	mov $15,$16
	mov $14,$17
	mov $15,$18
	mov $14,$19
	stq $6,112($30)
	stq $7,120($30)
	stq $22,96($30)
	stq $23,104($30)
	ldq $27,_OtsEqlX($29)		!literal!12
	jsr $26,($27),0		!lituse_jsr!12
	ldah $29,0($26)		!gpdisp!13
	lda $29,0($29)		!gpdisp!13
	blt $0,$L156
	mov $13,$16
	mov $12,$17
	mov $13,$18
	mov $12,$19
	ldq $27,_OtsEqlX($29)		!literal!14
	jsr $26,($27),0		!lituse_jsr!14
	ldah $29,0($26)		!gpdisp!15
	lda $29,0($29)		!gpdisp!15
	blt $0,$L161
	srl $14,63,$5
	srl $12,63,$4
	cmpeq $5,$4,$4
	bne $4,$L157
	cmovne $5,$15,$13
	cmovne $5,$14,$12
$L156:
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
$L157:
	.cfi_restore_state
	stq $15,64($30)
	stq $14,72($30)
	ldq $16,64($30)
	ldq $17,72($30)
	stq $13,80($30)
	stq $12,88($30)
	ldq $18,80($30)
	ldq $19,88($30)
	stq $14,104($30)
	stq $15,96($30)
	ldq $27,_OtsLssX($29)		!literal!16
	jsr $26,($27),0		!lituse_jsr!16
	ldah $29,0($26)		!gpdisp!17
	lda $29,0($29)		!gpdisp!17
	cmplt $31,$0,$0
	cmovne $0,$15,$13
	cmovne $0,$14,$12
	br $31,$L156
	.align 4
$L161:
	mov $15,$13
	mov $14,$12
	br $31,$L156
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
	ldah $2,s.0($29)		!gprelhigh
	lda $2,s.0($2)		!gprellow
	beq $16,$L163
	ldah $4,digits($29)		!gprelhigh
	lda $4,digits($4)		!gprellow
	.align 4
$L164:
	and $16,63,$3
	addq $3,$4,$3
	ldq_u $1,0($3)
	extbl $1,$3,$1
	ldq_u $3,0($2)
	mskbl $3,$2,$3
	insbl $1,$2,$1
	bis $1,$3,$1
	stq_u $1,0($2)
	lda $2,1($2)
	zapnot $16,15,$16
	srl $16,6,$16
	bne $16,$L164
$L163:
	ldq_u $1,0($2)
	mskbl $1,$2,$1
	stq_u $1,0($2)
	ldah $0,s.0($29)		!gprelhigh
	lda $0,s.0($0)		!gprellow
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
	beq $17,$L172
	ldq $1,0($17)
	stq $1,0($16)
	stq $17,8($16)
	stq $16,0($17)
	ldq $1,0($16)
	beq $1,$L169
	stq $16,8($1)
$L169:
	ret $31,($26),1
	.align 4
$L172:
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
	beq $1,$L174
	ldq $2,8($16)
	stq $2,8($1)
$L174:
	ldq $1,8($16)
	beq $1,$L173
	ldq $2,0($16)
	stq $2,0($1)
$L173:
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
	mov $16,$11
	stq $17,72($30)
	stq $18,64($30)
	mov $19,$10
	mov $20,$12
	ldq $9,0($18)
	beq $9,$L177
	mov $17,$14
	mov $31,$15
	.align 4
$L179:
	mov $14,$13
	mov $14,$17
	mov $11,$16
	mov $12,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!22
	lda $29,0($29)		!gpdisp!22
	beq $0,$L176
	lda $15,1($15)
	addq $14,$10,$14
	cmpeq $9,$15,$3
	beq $3,$L179
$L177:
	lda $1,1($9)
	ldq $2,64($30)
	stq $1,0($2)
	mulq $10,$9,$16
	mov $10,$18
	mov $11,$17
	ldq $1,72($30)
	addq $1,$16,$16
	ldq $27,memcpy($29)		!literal!23
	jsr $26,($27),0		!lituse_jsr!23
	ldah $29,0($26)		!gpdisp!24
	lda $29,0($29)		!gpdisp!24
	mov $0,$13
$L176:
	mov $13,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,80($30)
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
	mov $16,$11
	mov $19,$13
	mov $20,$12
	ldq $14,0($18)
	beq $14,$L182
	mov $17,$9
	mov $31,$10
	.align 4
$L184:
	mov $9,$15
	mov $9,$17
	mov $11,$16
	mov $12,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
	beq $0,$L181
	lda $10,1($10)
	addq $9,$13,$9
	cmpeq $14,$10,$1
	beq $1,$L184
$L182:
	mov $31,$15
$L181:
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
atoi:
	.frame $30,32,$26,0
	.mask 0x4000e00,-32
$LFB47:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!27
	lda $29,0($29)		!gpdisp!27
$atoi..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 10, -16
	.cfi_offset 11, -8
	.prologue 1
	mov $16,$9
	br $31,$L188
	.align 4
$L189:
	mov $11,$9
$L188:
	lda $11,1($9)
	ldq_u $10,0($9)
	extqh $10,$11,$10
	sra $10,56,$10
	mov $10,$16
	ldq $27,isspace($29)		!literal!28
	jsr $26,($27),0		!lituse_jsr!28
	ldah $29,0($26)		!gpdisp!29
	lda $29,0($29)		!gpdisp!29
	bne $0,$L189
	cmpeq $10,43,$1
	bne $1,$L195
	cmpeq $10,45,$10
	mov $31,$3
	beq $10,$L191
	lda $3,1($31)
$L190:
	lda $9,1($9)
	br $31,$L191
	.align 4
$L195:
	mov $31,$3
	br $31,$L190
	.align 4
$L192:
	s4addl $0,$0,$0
	addl $0,$0,$0
	lda $9,1($9)
	subl $1,48,$1
	sll $1,56,$1
	sra $1,56,$1
	subl $0,$1,$0
$L191:
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$2
	zapnot $2,15,$2
	cmpule $2,9,$2
	bne $2,$L192
	subl $31,$0,$1
	cmoveq $3,$1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	lda $30,32($30)
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE47:
	.end atoi
	.align 2
	.align 4
	.globl atol
	.ent atol
atol:
	.frame $30,32,$26,0
	.mask 0x4000e00,-32
$LFB48:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!30
	lda $29,0($29)		!gpdisp!30
$atol..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 10, -16
	.cfi_offset 11, -8
	.prologue 1
	mov $16,$9
	br $31,$L200
	.align 4
$L201:
	mov $11,$9
$L200:
	lda $11,1($9)
	ldq_u $10,0($9)
	extqh $10,$11,$10
	sra $10,56,$10
	mov $10,$16
	ldq $27,isspace($29)		!literal!31
	jsr $26,($27),0		!lituse_jsr!31
	ldah $29,0($26)		!gpdisp!32
	lda $29,0($29)		!gpdisp!32
	bne $0,$L201
	cmpeq $10,43,$1
	bne $1,$L202
	cmpeq $10,45,$10
	beq $10,$L203
	lda $0,1($31)
$L202:
	lda $9,1($9)
$L203:
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$3
	zapnot $3,15,$3
	cmpule $3,9,$3
	mov $31,$2
	beq $3,$L205
	.align 4
$L204:
	s4addq $2,$2,$2
	addq $2,$2,$2
	lda $9,1($9)
	subl $1,48,$1
	sll $1,56,$1
	sra $1,56,$1
	subq $2,$1,$2
	lda $3,1($9)
	ldq_u $1,0($9)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$3
	zapnot $3,15,$3
	cmpule $3,9,$3
	bne $3,$L204
$L205:
	subq $31,$2,$1
	cmoveq $0,$1,$2
	mov $2,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	lda $30,32($30)
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE48:
	.end atol
	.align 2
	.align 4
	.globl atoll
	.ent atoll
atoll:
	.frame $30,32,$26,0
	.mask 0x4000e00,-32
$LFB49:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!33
	lda $29,0($29)		!gpdisp!33
$atoll..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 10, -16
	.cfi_offset 11, -8
	.prologue 1
	mov $16,$9
	br $31,$L211
	.align 4
$L212:
	mov $11,$9
$L211:
	lda $11,1($9)
	ldq_u $10,0($9)
	extqh $10,$11,$10
	sra $10,56,$10
	mov $10,$16
	ldq $27,isspace($29)		!literal!34
	jsr $26,($27),0		!lituse_jsr!34
	ldah $29,0($26)		!gpdisp!35
	lda $29,0($29)		!gpdisp!35
	bne $0,$L212
	cmpeq $10,43,$1
	bne $1,$L213
	cmpeq $10,45,$10
	beq $10,$L214
	lda $0,1($31)
$L213:
	lda $9,1($9)
$L214:
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$3
	zapnot $3,15,$3
	cmpule $3,9,$3
	mov $31,$2
	beq $3,$L216
	.align 4
$L215:
	s4addq $2,$2,$2
	addq $2,$2,$2
	lda $9,1($9)
	subl $1,48,$1
	sll $1,56,$1
	sra $1,56,$1
	subq $2,$1,$2
	lda $3,1($9)
	ldq_u $1,0($9)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$3
	zapnot $3,15,$3
	cmpule $3,9,$3
	bne $3,$L215
$L216:
	subq $31,$2,$1
	cmoveq $0,$1,$2
	mov $2,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	lda $30,32($30)
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE49:
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
	ldah $29,0($27)		!gpdisp!36
	lda $29,0($29)		!gpdisp!36
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
	mov $16,$13
	mov $17,$12
	mov $18,$9
	mov $19,$11
	mov $20,$14
	br $31,$L228
	.align 4
$L226:
	mov $15,$9
$L228:
	beq $9,$L222
	srl $9,1,$15
	mulq $15,$11,$10
	addq $12,$10,$10
	mov $10,$17
	mov $13,$16
	mov $14,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!37
	lda $29,0($29)		!gpdisp!37
	blt $0,$L226
	ble $0,$L221
	addq $10,$11,$12
	lda $9,-1($9)
	subq $9,$15,$9
	br $31,$L228
	.align 4
$L222:
	mov $31,$10
$L221:
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
	.cfi_endproc
$LFE50:
	.end bsearch
	.align 2
	.align 4
	.globl bsearch_r
	.ent bsearch_r
bsearch_r:
	.frame $30,64,$26,0
	.mask 0x400fe00,-64
$LFB51:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!38
	lda $29,0($29)		!gpdisp!38
$bsearch_r..ng:
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
	mov $16,$14
	mov $17,$11
	mov $19,$10
	mov $20,$13
	mov $21,$12
	addl $31,$18,$15
	bne $15,$L233
	.align 4
$L230:
	mov $31,$9
$L229:
	mov $9,$0
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
$L232:
	.cfi_restore_state
	sra $15,1,$15
	beq $15,$L230
$L233:
	sra $15,1,$9
	mulq $9,$10,$9
	addq $11,$9,$9
	mov $12,$18
	mov $9,$17
	mov $14,$16
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!39
	lda $29,0($29)		!gpdisp!39
	beq $0,$L229
	ble $0,$L232
	addq $9,$10,$11
	subl $15,1,$15
	br $31,$L232
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
	ldah $29,0($27)		!gpdisp!42
	lda $29,0($29)		!gpdisp!42
$div..ng:
	.prologue 1
	mov $16,$0
	mov $17,$24
	mov $18,$25
	ldq $27,__divl($29)		!literal!40
	jsr $23,($27),__divl		!lituse_jsrdirect!40
	stl $27,0($16)
	ldq $27,__reml($29)		!literal!41
	jsr $23,($27),__reml		!lituse_jsrdirect!41
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
	ldah $29,0($27)		!gpdisp!45
	lda $29,0($29)		!gpdisp!45
$imaxdiv..ng:
	.prologue 1
	mov $16,$0
	mov $17,$24
	mov $18,$25
	ldq $27,__divq($29)		!literal!43
	jsr $23,($27),__divq		!lituse_jsrdirect!43
	stq $27,0($16)
	ldq $27,__remq($29)		!literal!44
	jsr $23,($27),__remq		!lituse_jsrdirect!44
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
$LFB55:
	.cfi_startproc
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE55:
	.end labs
	.align 2
	.align 4
	.globl ldiv
	.ent ldiv
ldiv:
	.frame $30,0,$26,0
$LFB56:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!48
	lda $29,0($29)		!gpdisp!48
$ldiv..ng:
	.prologue 1
	mov $16,$0
	mov $17,$24
	mov $18,$25
	ldq $27,__divq($29)		!literal!46
	jsr $23,($27),__divq		!lituse_jsrdirect!46
	stq $27,0($16)
	ldq $27,__remq($29)		!literal!47
	jsr $23,($27),__remq		!lituse_jsrdirect!47
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
$LFB57:
	.cfi_startproc
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE57:
	.end llabs
	.align 2
	.align 4
	.globl lldiv
	.ent lldiv
lldiv:
	.frame $30,0,$26,0
$LFB58:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!51
	lda $29,0($29)		!gpdisp!51
$lldiv..ng:
	.prologue 1
	mov $16,$0
	mov $17,$24
	mov $18,$25
	ldq $27,__divq($29)		!literal!49
	jsr $23,($27),__divq		!lituse_jsrdirect!49
	stq $27,0($16)
	ldq $27,__remq($29)		!literal!50
	jsr $23,($27),__remq		!lituse_jsrdirect!50
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
	.align 4
$L247:
	ldl $2,0($0)
	cmpeq $17,$2,$1
	cmpeq $1,0,$1
	cmpult $31,$2,$3
	and $1,$3,$1
	beq $1,$L243
	lda $0,4($0)
	br $31,$L247
	.align 4
$L243:
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
	.align 4
$L254:
	.prologue 0
	ldl $3,0($16)
	ldl $0,0($17)
	cmpult $31,$3,$2
	cmpeq $3,$0,$1
	and $2,$1,$2
	cmpult $31,$0,$1
	and $1,$2,$1
	beq $1,$L249
	lda $16,4($16)
	lda $17,4($17)
	br $31,$L254
	.align 4
$L249:
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
$L256:
	lda $17,4($17)
	lda $1,4($1)
	ldl $2,-4($17)
	stl $2,-4($1)
	bne $2,$L256
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
	ldl $1,0($16)
	mov $16,$0
	beq $1,$L259
	.align 4
$L260:
	lda $0,4($0)
	ldl $1,0($0)
	bne $1,$L260
$L259:
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
	br $31,$L271
	.align 4
$L266:
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
$L271:
	beq $18,$L265
	ldl $2,0($16)
	ldl $1,0($17)
	cmpult $31,$2,$3
	cmpeq $2,$1,$2
	and $3,$2,$2
	cmpult $31,$1,$1
	and $1,$2,$1
	bne $1,$L266
$L265:
	mov $31,$0
	beq $18,$L267
	ldl $1,0($16)
	ldl $0,0($17)
	cmplt $1,$0,$2
	cmplt $0,$1,$0
	lda $1,-1($31)
	cmovne $2,$1,$0
$L267:
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
	br $31,$L280
	.align 4
$L275:
	lda $18,-1($18)
	lda $16,4($16)
$L280:
	beq $18,$L277
	ldl $1,0($16)
	cmpeq $1,$17,$1
	beq $1,$L275
$L277:
	mov $16,$0
	cmoveq $18,0,$0
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
	br $31,$L289
	.align 4
$L284:
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
$L289:
	beq $18,$L283
	ldl $1,0($16)
	ldl $2,0($17)
	cmpeq $1,$2,$1
	bne $1,$L284
$L283:
	mov $31,$0
	beq $18,$L285
	ldl $1,0($16)
	ldl $0,0($17)
	cmplt $1,$0,$2
	cmplt $0,$1,$0
	lda $1,-1($31)
	cmovne $2,$1,$0
$L285:
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
	ldah $29,0($27)		!gpdisp!52
	lda $29,0($29)		!gpdisp!52
$wmemcpy..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $16,$9
	beq $18,$L291
	s4addq $18,0,$18
	ldq $27,memcpy($29)		!literal!53
	jsr $26,($27),0		!lituse_jsr!53
	ldah $29,0($26)		!gpdisp!54
	lda $29,0($29)		!gpdisp!54
$L291:
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
	bne $1,$L293
	lda $1,-1($18)
	subq $16,$17,$2
	s4addq $18,0,$3
	cmpult $2,$3,$2
	bne $2,$L294
	mov $16,$2
	beq $18,$L301
	.align 4
$L295:
	lda $17,4($17)
	lda $2,4($2)
	ldl $3,-4($17)
	stl $3,-4($2)
	lda $1,-1($1)
	lda $3,1($1)
	bne $3,$L295
$L293:
	ret $31,($26),1
	.align 4
$L301:
	ret $31,($26),1
	.align 4
$L294:
	beq $18,$L293
	s4addq $1,0,$1
	.align 4
$L296:
	addq $17,$1,$2
	ldl $3,0($2)
	addq $0,$1,$2
	stl $3,0($2)
	lda $1,-4($1)
	lda $2,4($1)
	bne $2,$L296
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
	beq $18,$L303
	mov $16,$2
	.align 4
$L304:
	lda $2,4($2)
	stl $17,-4($2)
	lda $1,-1($1)
	lda $3,1($1)
	bne $3,$L304
$L303:
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
	beq $1,$L307
	addq $16,$18,$2
	addq $17,$18,$17
	beq $18,$L306
	.align 4
$L309:
	lda $2,-1($2)
	lda $17,-1($17)
	lda $3,1($2)
	ldq_u $1,0($2)
	extqh $1,$3,$1
	sra $1,56,$1
	ldq_u $3,0($17)
	mskbl $3,$17,$3
	insbl $1,$17,$1
	bis $1,$3,$1
	stq_u $1,0($17)
	cmpeq $16,$2,$1
	beq $1,$L309
	ret $31,($26),1
	.align 4
$L307:
	cmpeq $16,$17,$1
	bne $1,$L306
	beq $18,$L306
	addq $16,$18,$18
	.align 4
$L310:
	lda $16,1($16)
	lda $17,1($17)
	ldq_u $1,-1($16)
	extqh $1,$16,$1
	sra $1,56,$1
	ldq_u $2,-1($17)
	lda $3,-1($17)
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,-1($17)
	cmpeq $18,$16,$1
	beq $1,$L310
$L306:
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
	sll $16,$17,$1
	subq $31,$17,$17
	srl $16,$17,$0
	bis $0,$1,$0
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
	srl $16,$17,$1
	subq $31,$17,$17
	sll $16,$17,$0
	bis $0,$1,$0
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
	sll $16,$17,$0
	zapnot $16,15,$16
	subq $31,$17,$17
	and $17,31,$17
	srl $16,$17,$16
	bis $0,$16,$0
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
	srl $0,$17,$0
	subq $31,$17,$17
	and $17,31,$17
	sll $16,$17,$16
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
$LFB74:
	.cfi_startproc
	.prologue 0
	sll $16,$17,$1
	subq $31,$17,$17
	srl $16,$17,$0
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE74:
	.end rotl_sz
	.align 2
	.align 4
	.globl rotr_sz
	.ent rotr_sz
$rotr_sz..ng:
rotr_sz:
	.frame $30,0,$26,0
$LFB75:
	.cfi_startproc
	.prologue 0
	srl $16,$17,$1
	subq $31,$17,$17
	sll $16,$17,$0
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE75:
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
	sll $16,$17,$0
	subq $31,$17,$17
	and $17,15,$17
	srl $16,$17,$16
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
	srl $16,$17,$0
	subq $31,$17,$17
	and $17,15,$17
	sll $16,$17,$16
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
	sll $16,$17,$0
	subq $31,$17,$17
	and $17,7,$17
	srl $16,$17,$16
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
	srl $16,$17,$0
	subq $31,$17,$17
	and $17,7,$17
	sll $16,$17,$16
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
	.align 4
$L329:
	srl $16,$0,$2
	addl $0,1,$0
	blbs $2,$L328
	zapnot $0,15,$1
	cmpeq $1,32,$1
	beq $1,$L329
	mov $31,$0
$L328:
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
	beq $16,$L332
	and $16,1,$0
	bne $0,$L332
	lda $0,1($31)
	.align 4
$L333:
	sra $16,1,$16
	addl $0,1,$0
	blbc $16,$L333
$L332:
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
	ldah $29,0($27)		!gpdisp!55
	lda $29,0($29)		!gpdisp!55
$gl_isinff..ng:
	.prologue 1
	cpys $f16,$f16,$f16
	ldah $1,$LC1($29)		!gprelhigh
	lds $f11,$LC1($1)		!gprellow
	cmptlt $f16,$f11,$f10
	lda $0,1($31)
	fbne $f10,$L337
	ldah $1,$LC2($29)		!gprelhigh
	lds $f11,$LC2($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbne $f10,$L338
	bis $31,$31,$0
$L338:
	addl $31,$0,$0
$L337:
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
	ldah $29,0($27)		!gpdisp!56
	lda $29,0($29)		!gpdisp!56
$gl_isinfd..ng:
	.prologue 1
	ldah $1,$LC5($29)		!gprelhigh
	ldt $f11,$LC5($1)		!gprellow
	cmptlt $f16,$f11,$f10
	lda $0,1($31)
	fbne $f10,$L341
	ldah $1,$LC6($29)		!gprelhigh
	ldt $f11,$LC6($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbne $f10,$L342
	bis $31,$31,$0
$L342:
	addl $31,$0,$0
$L341:
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
	ldah $29,0($27)		!gpdisp!57
	lda $29,0($29)		!gpdisp!57
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
	ldq $27,_OtsLssX($29)		!literal!58
	jsr $26,($27),0		!lituse_jsr!58
	ldah $29,0($26)		!gpdisp!59
	lda $29,0($29)		!gpdisp!59
	lda $1,1($31)
	bgt $0,$L345
	mov $10,$16
	mov $11,$17
	ldah $1,$LC8($29)		!gprelhigh
	lda $1,$LC8($1)		!gprellow
	ldq $18,0($1)
	ldq $19,8($1)
	ldq $27,_OtsGtrX($29)		!literal!60
	jsr $26,($27),0		!lituse_jsr!60
	ldah $29,0($26)		!gpdisp!61
	lda $29,0($29)		!gpdisp!61
	cmplt $31,$0,$1
$L345:
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
	ldah $29,0($27)		!gpdisp!62
	lda $29,0($29)		!gpdisp!62
$_Qp_itoq..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.prologue 1
	mov $16,$9
	stq $17,16($30)
	ldt $f10,16($30)
	cvtqt $f10,$f16
	ldq $27,_OtsConvertFloatTX($29)		!literal!63
	jsr $26,($27),0		!lituse_jsr!63
	ldah $29,0($26)		!gpdisp!64
	lda $29,0($29)		!gpdisp!64
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
	ldah $29,0($27)		!gpdisp!65
	lda $29,0($29)		!gpdisp!65
$ldexpf..ng:
	.prologue 1
	cpys $f16,$f16,$f0
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L349
	adds $f16,$f16,$f11
	cmpteq $f11,$f10,$f10
	fbne $f10,$L349
	cmplt $17,0,$1
	ldah $2,$LC9($29)		!gprelhigh
	lds $f10,$LC9($2)		!gprellow
	beq $1,$L352
	ldah $1,$LC10($29)		!gprelhigh
	lds $f10,$LC10($1)		!gprellow
	br $31,$L352
	.align 4
$L351:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L349
	muls $f10,$f10,$f10
$L352:
	blbc $17,$L351
	muls $f0,$f10,$f0
	br $31,$L351
	.align 4
$L349:
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
	ldah $29,0($27)		!gpdisp!66
	lda $29,0($29)		!gpdisp!66
$ldexp..ng:
	.prologue 1
	cpys $f16,$f16,$f0
	cmptun $f16,$f16,$f10
	fbne $f10,$L355
	addt $f16,$f16,$f11
	cmpteq $f11,$f16,$f10
	fbne $f10,$L355
	cmplt $17,0,$1
	bne $1,$L360
	ldah $1,$LC9($29)		!gprelhigh
	lds $f10,$LC9($1)		!gprellow
	br $31,$L358
	.align 4
$L360:
	ldah $1,$LC10($29)		!gprelhigh
	lds $f10,$LC10($1)		!gprellow
	br $31,$L358
	.align 4
$L357:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L355
	mult $f10,$f10,$f10
$L358:
	blbc $17,$L357
	mult $f0,$f10,$f0
	br $31,$L357
	.align 4
$L355:
	ret $31,($26),1
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
	ldah $29,0($27)		!gpdisp!67
	lda $29,0($29)		!gpdisp!67
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
	mov $16,$13
	ldq $10,0($17)
	ldq $9,8($17)
	mov $18,$12
	mov $10,$16
	mov $9,$17
	mov $10,$18
	mov $9,$19
	stq $2,160($30)
	stq $3,168($30)
	stq $4,144($30)
	stq $5,152($30)
	ldq $27,_OtsEqlX($29)		!literal!68
	jsr $26,($27),0		!lituse_jsr!68
	ldah $29,0($26)		!gpdisp!69
	lda $29,0($29)		!gpdisp!69
	blt $0,$L362
	mov $10,$16
	mov $9,$17
	mov $10,$18
	mov $9,$19
	lda $20,2($31)
	ldq $27,_OtsAddX($29)		!literal!70
	jsr $26,($27),0		!lituse_jsr!70
	ldah $29,0($26)		!gpdisp!71
	lda $29,0($29)		!gpdisp!71
	stq $10,128($30)
	stq $9,136($30)
	ldq $18,128($30)
	ldq $19,136($30)
	ldq $27,_OtsEqlX($29)		!literal!72
	jsr $26,($27),0		!lituse_jsr!72
	ldah $29,0($26)		!gpdisp!73
	lda $29,0($29)		!gpdisp!73
	bgt $0,$L362
	cmplt $12,0,$2
	bne $2,$L367
	ldah $2,$LC13($29)		!gprelhigh
	lda $2,$LC13($2)		!gprellow
	ldq $3,0($2)
	ldq $11,8($2)
	br $31,$L365
	.align 4
$L367:
	ldah $2,$LC14($29)		!gprelhigh
	lda $2,$LC14($2)		!gprellow
	ldq $3,0($2)
	ldq $11,8($2)
	br $31,$L365
	.align 4
$L364:
	srl $12,63,$4
	addq $4,$12,$1
	sra $1,1,$12
	beq $12,$L362
	stq $3,64($30)
	stq $11,72($30)
	ldq $16,64($30)
	ldq $17,72($30)
	mov $3,$18
	mov $11,$19
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!74
	jsr $26,($27),0		!lituse_jsr!74
	ldah $29,0($26)		!gpdisp!75
	lda $29,0($29)		!gpdisp!75
	mov $16,$3
	mov $17,$11
$L365:
	blbc $12,$L364
	stq $10,80($30)
	stq $9,88($30)
	ldq $16,80($30)
	ldq $17,88($30)
	stq $3,96($30)
	stq $11,104($30)
	ldq $18,96($30)
	ldq $19,104($30)
	lda $20,2($31)
	stq $3,168($30)
	ldq $27,_OtsMulX($29)		!literal!76
	jsr $26,($27),0		!lituse_jsr!76
	ldah $29,0($26)		!gpdisp!77
	lda $29,0($29)		!gpdisp!77
	mov $16,$10
	mov $17,$9
	ldq $3,168($30)
	br $31,$L364
	.align 4
$L362:
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
	beq $18,$L369
	addq $17,$18,$18
	mov $16,$2
	.align 4
$L370:
	lda $17,1($17)
	lda $2,1($2)
	ldq_u $3,-1($2)
	lda $4,-1($2)
	extbl $3,$4,$1
	ldq_u $5,-1($17)
	lda $6,-1($17)
	extbl $5,$6,$5
	xor $1,$5,$1
	mskbl $3,$4,$3
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,-1($2)
	cmpeq $18,$17,$1
	beq $1,$L370
$L369:
	ret $31,($26),1
	.cfi_endproc
$LFE92:
	.end memxor
	.align 2
	.align 4
	.globl strncat
	.ent strncat
strncat:
	.frame $30,32,$26,0
	.mask 0x4000e00,-32
$LFB93:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!78
	lda $29,0($29)		!gpdisp!78
$strncat..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 10, -16
	.cfi_offset 11, -8
	.prologue 1
	mov $16,$11
	mov $17,$10
	mov $18,$9
	ldq $27,strlen($29)		!literal!79
	jsr $26,($27),0		!lituse_jsr!79
	ldah $29,0($26)		!gpdisp!80
	lda $29,0($29)		!gpdisp!80
	addq $11,$0,$0
	beq $9,$L374
	.align 4
$L373:
	lda $4,1($10)
	ldq_u $1,0($10)
	extqh $1,$4,$1
	sra $1,56,$1
	ldq_u $3,0($0)
	mskbl $3,$0,$3
	insbl $1,$0,$2
	bis $2,$3,$2
	stq_u $2,0($0)
	beq $1,$L374
	mov $4,$10
	lda $0,1($0)
	lda $9,-1($9)
	bne $9,$L373
$L374:
	bne $9,$L376
	ldq_u $1,0($0)
	mskbl $1,$0,$1
	stq_u $1,0($0)
$L376:
	mov $11,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	lda $30,32($30)
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
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
	beq $17,$L385
$L379:
	addq $16,$0,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L381
$L378:
	ret $31,($26),1
	.align 4
$L385:
	ret $31,($26),1
	.align 4
$L381:
	lda $0,1($0)
	cmpeq $17,$0,$1
	beq $1,$L379
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
$L394:
	lda $1,1($0)
	ldq_u $4,0($0)
	extqh $4,$1,$4
	sra $4,56,$4
	beq $4,$L391
	mov $17,$2
	.align 4
$L390:
	lda $3,1($2)
	ldq_u $1,0($2)
	extqh $1,$3,$1
	sra $1,56,$1
	beq $1,$L395
	mov $3,$2
	cmpeq $1,$4,$1
	beq $1,$L390
$L388:
	ret $31,($26),1
	.align 4
$L395:
	lda $0,1($0)
	br $31,$L394
$L391:
	mov $31,$0
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
$L398:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,$17,$2
	cmovne $2,$16,$0
	lda $16,1($16)
	bne $1,$L398
	ret $31,($26),1
	.cfi_endproc
$LFE96:
	.end strrchr
	.align 2
	.align 4
	.globl strstr
	.ent strstr
strstr:
	.frame $30,48,$26,0
	.mask 0x4003e00,-48
$LFB97:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!81
	lda $29,0($29)		!gpdisp!81
$strstr..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	.cfi_offset 26, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	.prologue 1
	mov $16,$10
	mov $17,$11
	mov $17,$16
	ldq $27,strlen($29)		!literal!82
	jsr $26,($27),0		!lituse_jsr!82
	ldah $29,0($26)		!gpdisp!83
	lda $29,0($29)		!gpdisp!83
	mov $0,$12
	mov $10,$9
	beq $0,$L401
	lda $1,1($11)
	ldq_u $13,0($11)
	extqh $13,$1,$13
	sra $13,56,$13
	.align 4
$L403:
	mov $13,$17
	mov $10,$16
	ldq $27,strchr($29)		!literal!84
	jsr $26,($27),0		!lituse_jsr!84
	ldah $29,0($26)		!gpdisp!85
	lda $29,0($29)		!gpdisp!85
	mov $0,$9
	beq $0,$L401
	mov $12,$18
	mov $11,$17
	mov $9,$16
	ldq $27,strncmp($29)		!literal!86
	jsr $26,($27),0		!lituse_jsr!86
	ldah $29,0($26)		!gpdisp!87
	lda $29,0($29)		!gpdisp!87
	beq $0,$L401
	lda $10,1($9)
	br $31,$L403
	.align 4
$L401:
	mov $9,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	lda $30,48($30)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
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
	cpys $f16,$f16,$f0
	cmptlt $f16,$f31,$f10
	fbne $f10,$L415
$L407:
	cmptlt $f31,$f0,$f10
	fbeq $f10,$L410
	cmptlt $f17,$f31,$f10
	fbne $f10,$L409
$L410:
	ret $31,($26),1
	.align 4
$L415:
	cmptlt $f31,$f17,$f10
	fbeq $f10,$L407
$L409:
	cpysn $f0,$f0,$f0
	ret $31,($26),1
	.cfi_endproc
$LFE98:
	.end copysign
	.align 2
	.align 4
	.globl memmem
	.ent memmem
memmem:
	.frame $30,64,$26,0
	.mask 0x400fe00,-64
$LFB99:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!88
	lda $29,0($29)		!gpdisp!88
$memmem..ng:
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
	mov $16,$12
	mov $16,$14
	beq $19,$L416
	cmpult $17,$19,$1
	mov $31,$14
	bne $1,$L416
	subq $17,$19,$17
	addq $16,$17,$13
	cmpule $16,$13,$1
	beq $1,$L422
	lda $1,1($18)
	ldq_u $15,0($18)
	extqh $15,$1,$15
	sra $15,56,$15
	lda $10,-1($19)
	mov $1,$11
	br $31,$L419
	.align 4
$L418:
	cmpule $9,$13,$9
	beq $9,$L422
$L419:
	lda $9,1($12)
	ldq_u $1,0($12)
	extqh $1,$9,$1
	sra $1,56,$1
	mov $12,$14
	mov $9,$12
	cmpeq $1,$15,$1
	beq $1,$L418
	mov $10,$18
	mov $11,$17
	mov $9,$16
	ldq $27,memcmp($29)		!literal!89
	jsr $26,($27),0		!lituse_jsr!89
	ldah $29,0($26)		!gpdisp!90
	lda $29,0($29)		!gpdisp!90
	bne $0,$L418
	br $31,$L416
	.align 4
$L422:
	mov $31,$14
$L416:
	mov $14,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	ldq $15,56($30)
	lda $30,64($30)
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
	.cfi_endproc
$LFE99:
	.end memmem
	.align 2
	.align 4
	.globl mempcpy
	.ent mempcpy
mempcpy:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB100:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!91
	lda $29,0($29)		!gpdisp!91
$mempcpy..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $18,$9
	ldq $27,memcpy($29)		!literal!92
	jsr $26,($27),0		!lituse_jsr!92
	ldah $29,0($26)		!gpdisp!93
	lda $29,0($29)		!gpdisp!93
	addq $0,$9,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
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
	ldah $29,0($27)		!gpdisp!94
	lda $29,0($29)		!gpdisp!94
$frexp..ng:
	.prologue 1
	cpys $f16,$f16,$f0
	cmptlt $f16,$f31,$f10
	mov $31,$2
	fbne $f10,$L445
$L426:
	ldah $1,$LC16($29)		!gprelhigh
	lds $f11,$LC16($1)		!gprellow
	cmptle $f11,$f0,$f10
	mov $31,$1
	fbeq $f10,$L444
	ldah $3,$LC10($29)		!gprelhigh
	lds $f12,$LC10($3)		!gprellow
	.align 4
$L430:
	addl $1,1,$1
	mult $f0,$f12,$f0
	cmptle $f11,$f0,$f10
	fbne $f10,$L430
$L431:
	stl $1,0($17)
	beq $2,$L435
	cpysn $f0,$f0,$f0
$L435:
	ret $31,($26),1
	.align 4
$L445:
	cpysn $f16,$f16,$f0
	lda $2,1($31)
	br $31,$L426
	.align 4
$L444:
	lda $1,1($31)
	cmpteq $f0,$f31,$f10
	fbeq $f10,$L432
	bis $31,$31,$1
$L432:
	lda $3,1($31)
	ldah $4,$LC10($29)		!gprelhigh
	lds $f11,$LC10($4)		!gprellow
	cmptlt $f0,$f11,$f10
	fbne $f10,$L433
	bis $31,$31,$3
$L433:
	and $1,$3,$3
	mov $31,$1
	blbc $3,$L431
	ldah $3,$LC10($29)		!gprelhigh
	lds $f11,$LC10($3)		!gprellow
	.align 4
$L434:
	subl $1,1,$1
	addt $f0,$f0,$f0
	cmptlt $f0,$f11,$f10
	fbne $f10,$L434
	br $31,$L431
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
	beq $16,$L446
	.align 4
$L448:
	and $16,1,$1
	subq $31,$1,$1
	and $1,$17,$1
	addq $0,$1,$0
	addq $17,$17,$17
	srl $16,1,$16
	bne $16,$L448
$L446:
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
	zapnot $17,15,$1
	zapnot $16,15,$2
	cmpult $1,$2,$1
	lda $2,1($31)
	zapnot $16,15,$4
	beq $1,$L453
	.align 4
$L452:
	cmplt $17,0,$1
	bne $1,$L453
	addl $17,$17,$17
	addl $2,$2,$2
	zapnot $17,15,$1
	cmpult $1,$4,$1
	zapnot $2,15,$3
	cmpult $31,$3,$3
	and $1,$3,$1
	bne $1,$L452
$L453:
	mov $31,$0
	bne $2,$L454
$L455:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L457:
	zapnot $2,15,$2
	srl $2,1,$2
	zapnot $17,15,$17
	srl $17,1,$17
	beq $2,$L455
$L454:
	zapnot $16,15,$1
	zapnot $17,15,$3
	cmpult $1,$3,$1
	bne $1,$L457
	subl $16,$17,$16
	bis $2,$0,$0
	addl $31,$0,$0
	br $31,$L457
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
	ldah $29,0($27)		!gpdisp!95
	lda $29,0($29)		!gpdisp!95
$__clrsbqi2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	sra $16,63,$2
	xor $16,$2,$1
	cmpeq $16,$2,$16
	lda $0,7($31)
	bne $16,$L467
	sll $1,8,$16
	zapnot $16,14,$16
	ldq $27,__clzdi2($29)		!literal!96
	jsr $26,($27),0		!lituse_jsr!96
	ldah $29,0($26)		!gpdisp!97
	lda $29,0($29)		!gpdisp!97
	subl $0,33,$0
$L467:
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
	ldah $29,0($27)		!gpdisp!98
	lda $29,0($29)		!gpdisp!98
$__clrsbdi2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	mov $16,$1
	sra $16,63,$2
	xor $16,$2,$16
	cmpeq $1,$2,$1
	lda $0,63($31)
	bne $1,$L470
	ldq $27,__clzdi2($29)		!literal!99
	jsr $26,($27),0		!lituse_jsr!99
	ldah $29,0($26)		!gpdisp!100
	lda $29,0($29)		!gpdisp!100
	subl $0,1,$0
$L470:
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
	beq $16,$L473
	.align 4
$L474:
	and $16,1,$1
	subl $31,$1,$1
	and $17,$1,$1
	addl $1,$0,$0
	zapnot $16,15,$16
	srl $16,1,$16
	addl $17,$17,$17
	bne $16,$L474
$L473:
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
	zapnot $18,15,$1
	srl $1,3,$4
	bic $18,7,$5
	cmpult $16,$17,$2
	bne $2,$L478
	addq $17,$1,$1
	cmpule $16,$1,$1
	beq $1,$L478
	subl $18,1,$2
	zapnot $2,15,$2
	beq $18,$L489
	.align 4
$L484:
	addq $17,$2,$1
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	addq $16,$2,$3
	ldq_u $4,0($3)
	mskbl $4,$3,$4
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	lda $2,-1($2)
	lda $1,1($2)
	bne $1,$L484
$L477:
	ret $31,($26),1
$L489:
	ret $31,($26),1
	.align 4
$L478:
	beq $4,$L481
	mov $17,$1
	mov $16,$2
	s8addq $4,$17,$4
	.align 4
$L482:
	ldq $3,0($1)
	stq $3,0($2)
	lda $1,8($1)
	lda $2,8($2)
	cmpeq $1,$4,$3
	beq $3,$L482
$L481:
	zapnot $18,15,$1
	zapnot $5,15,$2
	cmpule $1,$2,$1
	bne $1,$L477
	addq $17,$2,$1
	addq $16,$2,$16
	lda $17,1($17)
	addq $17,$2,$17
	subl $18,1,$18
	subl $18,$5,$18
	zapnot $18,15,$18
	addq $17,$18,$17
	.align 4
$L483:
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	ldq_u $2,0($16)
	mskbl $2,$16,$2
	insbl $1,$16,$1
	bis $1,$2,$1
	stq_u $1,0($16)
	mov $3,$1
	lda $16,1($16)
	cmpeq $3,$17,$2
	beq $2,$L483
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
	srl $1,1,$5
	cmpult $16,$17,$2
	bne $2,$L491
	addq $17,$1,$1
	cmpule $16,$1,$1
	beq $1,$L491
	subl $18,1,$2
	zapnot $2,15,$2
	beq $18,$L500
	.align 4
$L496:
	addq $17,$2,$1
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	addq $16,$2,$3
	ldq_u $4,0($3)
	mskbl $4,$3,$4
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	lda $2,-1($2)
	lda $1,1($2)
	bne $1,$L496
$L490:
	ret $31,($26),1
$L500:
	ret $31,($26),1
	.align 4
$L491:
	beq $5,$L494
	mov $17,$1
	mov $16,$2
	addq $5,$5,$5
	addq $5,$17,$5
	.align 4
$L495:
	lda $4,2($1)
	ldq_u $1,0($1)
	extqh $1,$4,$1
	sra $1,48,$1
	ldq_u $3,0($2)
	mskwl $3,$2,$3
	inswl $1,$2,$1
	bis $1,$3,$1
	stq_u $1,0($2)
	mov $4,$1
	lda $2,2($2)
	cmpeq $4,$5,$3
	beq $3,$L495
$L494:
	blbc $18,$L490
	subl $18,1,$18
	zapnot $18,15,$18
	addq $17,$18,$17
	lda $2,1($17)
	ldq_u $1,0($17)
	extqh $1,$2,$1
	sra $1,56,$1
	addq $16,$18,$16
	ldq_u $2,0($16)
	mskbl $2,$16,$2
	insbl $1,$16,$1
	bis $1,$2,$1
	stq_u $1,0($16)
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
	zapnot $18,15,$1
	srl $1,2,$4
	bic $18,3,$5
	cmpult $16,$17,$2
	bne $2,$L502
	addq $17,$1,$1
	cmpule $16,$1,$1
	beq $1,$L502
	subl $18,1,$2
	zapnot $2,15,$2
	beq $18,$L513
	.align 4
$L508:
	addq $17,$2,$1
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	addq $16,$2,$3
	ldq_u $4,0($3)
	mskbl $4,$3,$4
	insbl $1,$3,$1
	bis $1,$4,$1
	stq_u $1,0($3)
	lda $2,-1($2)
	lda $1,1($2)
	bne $1,$L508
$L501:
	ret $31,($26),1
$L513:
	ret $31,($26),1
	.align 4
$L502:
	beq $4,$L505
	mov $17,$1
	mov $16,$2
	s4addq $4,$17,$4
	.align 4
$L506:
	ldl $3,0($1)
	stl $3,0($2)
	lda $1,4($1)
	lda $2,4($2)
	cmpeq $1,$4,$3
	beq $3,$L506
$L505:
	zapnot $18,15,$1
	zapnot $5,15,$2
	cmpule $1,$2,$1
	bne $1,$L501
	addq $17,$2,$1
	addq $16,$2,$16
	lda $17,1($17)
	addq $17,$2,$17
	subl $18,1,$18
	subl $18,$5,$18
	zapnot $18,15,$18
	addq $17,$18,$17
	.align 4
$L507:
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	ldq_u $2,0($16)
	mskbl $2,$16,$2
	insbl $1,$16,$1
	bis $1,$2,$1
	stq_u $1,0($16)
	mov $3,$1
	lda $16,1($16)
	cmpeq $3,$17,$2
	beq $2,$L507
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
	ldah $29,0($27)		!gpdisp!102
	lda $29,0($29)		!gpdisp!102
$__modi..ng:
	.prologue 1
	mov $17,$25
	mov $16,$24
	ldq $27,__reml($29)		!literal!101
	jsr $23,($27),__reml		!lituse_jsrdirect!101
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
	blt $16,$L522
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqt $f10,$f0
$L523:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L522:
	.cfi_restore_state
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,0($30)
	ldt $f11,0($30)
	cvtqt $f11,$f10
	addt $f10,$f10,$f0
	br $31,$L523
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
	blt $16,$L525
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqs $f10,$f0
$L526:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L525:
	.cfi_restore_state
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,0($30)
	ldt $f11,0($30)
	cvtqs $f11,$f10
	adds $f10,$f10,$f0
	br $31,$L526
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
	ldah $29,0($27)		!gpdisp!104
	lda $29,0($29)		!gpdisp!104
$__umodi..ng:
	.prologue 1
	mov $17,$25
	mov $16,$24
	ldq $27,__remlu($29)		!literal!103
	jsr $23,($27),__remlu		!lituse_jsrdirect!103
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
$L530:
	subl $2,$0,$1
	sra $16,$1,$1
	blbs $1,$L529
	addl $0,1,$0
	cmpeq $0,16,$1
	beq $1,$L530
$L529:
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
$L534:
	sra $16,$0,$1
	blbs $1,$L533
	addl $0,1,$0
	cmpeq $0,16,$1
	beq $1,$L534
$L533:
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
	ldah $29,0($27)		!gpdisp!105
	lda $29,0($29)		!gpdisp!105
$__fixunssfsi..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	ldah $1,$LC17($29)		!gprelhigh
	lds $f10,$LC17($1)		!gprellow
	cmptle $f10,$f16,$f11
	fbne $f11,$L542
	cvttq/c $f16,$f16
	stt $f16,0($30)
	ldq $0,0($30)
$L536:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L542:
	.cfi_restore_state
	subs $f16,$f10,$f11
	cvttq/c $f11,$f11
	stt $f11,0($30)
	ldq $0,0($30)
	ldah $0,1($0)
	lda $0,-32768($0)
	br $31,$L536
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
$L544:
	sra $16,$1,$2
	and $2,1,$2
	addl $2,$0,$0
	addl $1,1,$1
	cmpeq $1,16,$2
	beq $2,$L544
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
$L547:
	sra $16,$1,$2
	and $2,1,$2
	addl $2,$0,$0
	addl $1,1,$1
	cmpeq $1,16,$2
	beq $2,$L547
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
$LFB121:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $16,$L550
	.align 4
$L551:
	and $16,1,$1
	subl $31,$1,$1
	and $17,$1,$1
	addl $1,$0,$0
	zapnot $16,15,$16
	srl $16,1,$16
	addl $17,$17,$17
	bne $16,$L551
$L550:
	ret $31,($26),1
	.cfi_endproc
$LFE121:
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
	bne $16,$L560
	ret $31,($26),1
	.align 4
$L556:
	and $17,1,$1
	subl $31,$1,$1
	and $16,$1,$1
	addl $1,$0,$0
	addl $16,$16,$16
	zapnot $17,15,$17
	srl $17,1,$17
$L560:
	bne $17,$L556
$L555:
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
	zapnot $17,15,$1
	zapnot $16,15,$2
	cmpult $1,$2,$1
	lda $2,1($31)
	zapnot $16,15,$4
	beq $1,$L563
	.align 4
$L562:
	cmplt $17,0,$1
	bne $1,$L563
	addl $17,$17,$17
	addl $2,$2,$2
	zapnot $17,15,$1
	cmpult $1,$4,$1
	zapnot $2,15,$3
	cmpult $31,$3,$3
	and $1,$3,$1
	bne $1,$L562
$L563:
	mov $31,$0
	bne $2,$L564
$L565:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L567:
	zapnot $2,15,$2
	srl $2,1,$2
	zapnot $17,15,$17
	srl $17,1,$17
	beq $2,$L565
$L564:
	zapnot $16,15,$1
	zapnot $17,15,$3
	cmpult $1,$3,$1
	bne $1,$L567
	subl $16,$17,$16
	bis $2,$0,$0
	addl $31,$0,$0
	br $31,$L567
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
	cpys $f17,$f17,$f17
	cmptlt $f16,$f17,$f10
	lda $0,-1($31)
	fbne $f10,$L577
	lda $0,1($31)
	cmptlt $f17,$f16,$f10
	fbne $f10,$L577
	mov $31,$0
$L577:
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
	fbne $f10,$L581
	lda $0,1($31)
	cmptlt $f17,$f16,$f10
	fbne $f10,$L581
	mov $31,$0
$L581:
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
	mov $31,$4
	bne $1,$L594
$L587:
	mov $31,$0
	beq $17,$L588
	lda $2,1($31)
	.align 4
$L589:
	and $17,1,$1
	subl $31,$1,$1
	and $16,$1,$1
	addl $1,$0,$0
	addl $16,$16,$16
	sra $17,1,$17
	cmpult $31,$17,$1
	cmpule $2,31,$3
	and $1,$3,$1
	addl $2,1,$2
	and $2,0xff,$2
	bne $1,$L589
$L588:
	subl $31,$0,$1
	cmovne $4,$1,$0
	ret $31,($26),1
	.align 4
$L594:
	subl $31,$17,$17
	lda $4,1($31)
	br $31,$L587
	.cfi_endproc
$LFE128:
	.end __mulhi3
	.align 2
	.align 4
	.globl __divsi3
	.ent __divsi3
__divsi3:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB129:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!106
	lda $29,0($29)		!gpdisp!106
$__divsi3..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	cmplt $16,0,$1
	mov $31,$9
	bne $1,$L600
$L596:
	cmplt $17,0,$1
	bne $1,$L601
$L597:
	mov $31,$18
	addl $31,$17,$17
	addl $31,$16,$16
	ldq $27,__udivmodsi4($29)		!literal!107
	jsr $26,($27),0		!lituse_jsr!107
	ldah $29,0($26)		!gpdisp!108
	lda $29,0($29)		!gpdisp!108
	zapnot $0,15,$0
	subq $31,$0,$1
	cmovne $9,$1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L600:
	.cfi_restore_state
	subq $31,$16,$16
	lda $9,1($31)
	br $31,$L596
	.align 4
$L601:
	subq $31,$17,$17
	xor $9,1,$9
	br $31,$L597
	.cfi_endproc
$LFE129:
	.end __divsi3
	.align 2
	.align 4
	.globl __modsi3
	.ent __modsi3
__modsi3:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB130:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!109
	lda $29,0($29)		!gpdisp!109
$__modsi3..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	cmplt $16,0,$1
	mov $31,$9
	bne $1,$L606
$L603:
	subq $31,$17,$1
	cmovge $17,$17,$1
	lda $18,1($31)
	addl $31,$1,$17
	addl $31,$16,$16
	ldq $27,__udivmodsi4($29)		!literal!110
	jsr $26,($27),0		!lituse_jsr!110
	ldah $29,0($26)		!gpdisp!111
	lda $29,0($29)		!gpdisp!111
	zapnot $0,15,$0
	subq $31,$0,$1
	cmovne $9,$1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_remember_state
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L606:
	.cfi_restore_state
	subq $31,$16,$16
	lda $9,1($31)
	br $31,$L603
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
	beq $2,$L609
	.align 4
$L608:
	srl $17,15,$2
	bne $2,$L609
	addl $17,$17,$17
	zapnot $17,3,$17
	addl $1,$1,$1
	zapnot $1,3,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	bne $2,$L608
$L609:
	mov $31,$0
	bne $1,$L610
$L611:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L613:
	srl $1,1,$1
	srl $17,1,$17
	beq $1,$L611
$L610:
	cmpult $16,$17,$2
	bne $2,$L613
	subl $16,$17,$16
	zapnot $16,3,$16
	bis $1,$0,$0
	zapnot $0,3,$0
	br $31,$L613
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
	cmpult $17,$16,$2
	lda $1,1($31)
	lda $4,1($31)
	sll $4,31,$4
	beq $2,$L624
	.align 4
$L623:
	and $17,$4,$2
	bne $2,$L624
	addq $17,$17,$17
	addq $1,$1,$1
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	bne $2,$L623
$L624:
	mov $31,$0
	bne $1,$L625
$L626:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L628:
	srl $1,1,$1
	srl $17,1,$17
	beq $1,$L626
$L625:
	cmpult $16,$17,$2
	bne $2,$L628
	subq $16,$17,$16
	bis $0,$1,$0
	br $31,$L628
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
	beq $1,$L638
	lda $17,32($17)
	sll $16,$17,$16
	addl $31,$16,$16
	mov $31,$0
$L639:
	sll $16,32,$16
	zapnot $0,15,$0
	bis $0,$16,$0
$L637:
	ret $31,($26),1
	.align 4
$L638:
	mov $16,$0
	beq $17,$L637
	addl $31,$16,$1
	sll $1,$17,$0
	addl $31,$0,$0
	lda $2,32($31)
	subl $2,$17,$2
	zapnot $1,15,$1
	zapnot $2,15,$2
	srl $1,$2,$1
	sra $16,32,$16
	sll $16,$17,$17
	bis $1,$17,$1
	addl $31,$1,$16
	br $31,$L639
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
	mov $16,$0
	and $19,64,$1
	beq $1,$L643
	sll $17,$19,$18
	mov $31,$1
$L644:
	mov $1,$17
$L645:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L643:
	beq $19,$L645
	sll $17,$19,$1
	subq $31,$19,$2
	srl $17,$2,$17
	sll $18,$19,$18
	bis $17,$18,$18
	br $31,$L644
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
	beq $1,$L647
	sra $16,32,$1
	sra $16,63,$16
	addl $31,$16,$0
	subl $17,32,$17
	sra $1,$17,$1
$L648:
	zapnot $1,15,$1
	sll $0,32,$0
	bis $0,$1,$0
$L646:
	ret $31,($26),1
	.align 4
$L647:
	mov $16,$0
	beq $17,$L646
	sra $16,32,$1
	sra $1,$17,$0
	lda $2,32($31)
	subl $2,$17,$2
	zapnot $2,15,$2
	sll $1,$2,$1
	zapnot $16,15,$16
	srl $16,$17,$17
	bis $1,$17,$1
	addl $31,$1,$1
	br $31,$L648
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
	mov $16,$0
	and $19,64,$1
	beq $1,$L652
	sra $18,63,$1
	sra $18,$19,$17
$L653:
	mov $1,$18
$L654:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L652:
	beq $19,$L654
	sra $18,$19,$1
	subq $31,$19,$2
	sll $18,$2,$18
	srl $17,$19,$17
	bis $18,$17,$17
	br $31,$L653
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
	zapnot $1,2,$2
	cmpeq $2,0,$2
	s8addl $2,0,$2
	lda $4,8($31)
	subl $4,$2,$4
	zapnot $1,15,$1
	zapnot $4,15,$4
	srl $1,$4,$1
	addl $2,$3,$3
	and $1,240,$2
	cmpeq $2,0,$2
	s4addl $2,0,$2
	lda $4,4($31)
	subl $4,$2,$4
	zapnot $1,15,$1
	zapnot $4,15,$4
	srl $1,$4,$1
	addl $2,$3,$3
	and $1,12,$2
	cmpeq $2,0,$2
	addl $2,$2,$2
	lda $0,2($31)
	subl $0,$2,$4
	zapnot $1,15,$1
	zapnot $4,15,$4
	srl $1,$4,$1
	subl $0,$1,$0
	and $1,2,$1
	cmovne $1,0,$0
	addl $2,$3,$2
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
	ldah $29,0($27)		!gpdisp!112
	lda $29,0($29)		!gpdisp!112
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
	and $1,$17,$1
	cmovne $17,0,$16
	bis $1,$16,$16
	ldq $27,__clzdi2($29)		!literal!113
	jsr $26,($27),0		!lituse_jsr!113
	ldah $29,0($26)		!gpdisp!114
	lda $29,0($29)		!gpdisp!114
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
	cmplt $1,$2,$3
	mov $31,$0
	bne $3,$L660
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L660
	zapnot $16,15,$16
	zapnot $17,15,$17
	cmpult $16,$17,$1
	mov $31,$0
	bne $1,$L660
	cmpult $17,$16,$0
	lda $0,1($0)
$L660:
	ret $31,($26),1
	.cfi_endproc
$LFE141:
	.end __cmpdi2
	.align 2
	.align 4
	.globl __aeabi_lcmp
	.ent __aeabi_lcmp
__aeabi_lcmp:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB142:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!115
	lda $29,0($29)		!gpdisp!115
$__aeabi_lcmp..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	ldq $27,__cmpdi2($29)		!literal!116
	jsr $26,($27),0		!lituse_jsr!116
	ldah $29,0($26)		!gpdisp!117
	lda $29,0($29)		!gpdisp!117
	subl $0,1,$0
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
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
	bne $1,$L667
	cmple $17,$19,$17
	lda $0,2($31)
	beq $17,$L667
	cmpult $16,$18,$1
	mov $31,$0
	bne $1,$L667
	cmpult $18,$16,$0
	lda $0,1($0)
$L667:
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
	zapnot $16,3,$3
	cmpeq $3,0,$3
	sll $3,4,$3
	zapnot $16,15,$1
	srl $1,$3,$1
	and $1,0xff,$2
	cmpeq $2,0,$2
	zapnot $1,15,$1
	extql $1,$2,$1
	s8addl $2,$3,$3
	and $1,15,$2
	cmpeq $2,0,$2
	s4addq $2,0,$4
	zapnot $1,15,$1
	srl $1,$4,$1
	s4addl $2,$3,$3
	and $1,3,$2
	cmpeq $2,0,$2
	addl $2,$2,$0
	addq $2,$2,$2
	zapnot $1,15,$1
	srl $1,$2,$1
	and $1,3,$1
	ornot $31,$1,$2
	and $2,1,$2
	srl $1,1,$1
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
	ldah $29,0($27)		!gpdisp!118
	lda $29,0($29)		!gpdisp!118
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
	ldq $27,__ctzdi2($29)		!literal!119
	jsr $26,($27),0		!lituse_jsr!119
	ldah $29,0($26)		!gpdisp!120
	lda $29,0($29)		!gpdisp!120
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
	ldah $29,0($27)		!gpdisp!121
	lda $29,0($29)		!gpdisp!121
$__ffsti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	bne $16,$L675
	mov $31,$0
	beq $17,$L676
	mov $17,$16
	ldq $27,__ctzdi2($29)		!literal!122
	jsr $26,($27),0		!lituse_jsr!122
	ldah $29,0($26)		!gpdisp!123
	lda $29,0($29)		!gpdisp!123
	addl $0,65,$0
	br $31,$L676
	.align 4
$L675:
	ldq $27,__ctzdi2($29)		!literal!124
	jsr $26,($27),0		!lituse_jsr!124
	ldah $29,0($26)		!gpdisp!125
	lda $29,0($29)		!gpdisp!125
	addl $0,1,$0
$L676:
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
	beq $1,$L679
	srl $16,32,$16
	lda $17,32($17)
	srl $16,$17,$16
	addl $31,$16,$16
	mov $31,$0
$L680:
	zapnot $16,15,$16
	sll $0,32,$0
	bis $0,$16,$0
$L678:
	ret $31,($26),1
	.align 4
$L679:
	mov $16,$0
	beq $17,$L678
	extll $16,4,$1
	zapnot $1,15,$0
	srl $0,$17,$0
	addl $31,$0,$0
	lda $2,32($31)
	subl $2,$17,$2
	zapnot $2,15,$2
	sll $1,$2,$1
	zapnot $16,15,$16
	srl $16,$17,$17
	bis $1,$17,$1
	addl $31,$1,$16
	br $31,$L680
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
	mov $16,$0
	and $19,64,$1
	beq $1,$L684
	srl $18,$19,$17
	mov $31,$1
$L685:
	mov $1,$18
$L686:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L684:
	beq $19,$L686
	srl $18,$19,$1
	subq $31,$19,$2
	sll $18,$2,$18
	srl $17,$19,$17
	bis $18,$17,$17
	br $31,$L685
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
	zapnot $16,3,$2
	zapnot $17,3,$3
	mull $2,$3,$1
	zapnot $1,15,$4
	srl $4,16,$4
	extwl $16,2,$16
	mull $3,$16,$3
	addl $3,$4,$3
	zapnot $1,3,$1
	sll $3,16,$4
	addl $1,$4,$1
	zapnot $1,15,$4
	srl $4,16,$4
	extwl $17,2,$17
	mull $2,$17,$2
	addl $2,$4,$2
	zapnot $1,3,$0
	sll $2,16,$1
	addl $0,$1,$0
	zapnot $3,15,$3
	srl $3,16,$3
	mull $16,$17,$1
	addl $1,$3,$1
	zapnot $2,15,$2
	srl $2,16,$2
	addl $1,$2,$1
	zapnot $1,15,$1
	sll $1,32,$1
	zapnot $0,15,$0
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE149:
	.end __muldsi3
	.align 2
	.align 4
	.globl __muldi3_compiler_rt
	.ent __muldi3_compiler_rt
__muldi3_compiler_rt:
	.frame $30,48,$26,0
	.mask 0x4001e00,-48
$LFB150:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!126
	lda $29,0($29)		!gpdisp!126
$__muldi3_compiler_rt..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	.cfi_offset 26, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.prologue 1
	mov $16,$9
	mov $17,$10
	addl $31,$16,$11
	addl $31,$17,$12
	mov $12,$17
	mov $11,$16
	ldq $27,__muldsi3($29)		!literal!127
	jsr $26,($27),0		!lituse_jsr!127
	ldah $29,0($26)		!gpdisp!128
	lda $29,0($29)		!gpdisp!128
	sra $9,32,$1
	mull $1,$12,$1
	sra $10,32,$10
	mull $10,$11,$10
	addl $1,$10,$1
	sra $0,32,$2
	addl $1,$2,$1
	zapnot $1,15,$1
	sll $1,32,$1
	zapnot $0,15,$0
	bis $0,$1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	lda $30,48($30)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
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
	mov $16,$0
	zapnot $17,15,$2
	zapnot $18,15,$1
	mulq $2,$1,$3
	srl $3,32,$4
	srl $17,32,$17
	mulq $1,$17,$1
	addq $1,$4,$1
	zapnot $1,15,$4
	srl $18,32,$18
	mulq $2,$18,$2
	addq $2,$4,$2
	zapnot $3,15,$3
	sll $2,32,$4
	addq $3,$4,$3
	srl $1,32,$1
	mulq $17,$18,$17
	addq $1,$17,$1
	srl $2,32,$2
	addq $1,$2,$1
	stq $3,0($16)
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
	ldah $29,0($27)		!gpdisp!129
	lda $29,0($29)		!gpdisp!129
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
	mov $16,$10
	mov $17,$11
	mov $18,$13
	mov $19,$9
	mov $20,$12
	mov $19,$18
	lda $16,48($30)
	ldq $27,__mulddi3($29)		!literal!130
	jsr $26,($27),__mulddi3		!lituse_jsr!130
	ldah $29,0($26)		!gpdisp!131
	lda $29,0($29)		!gpdisp!131
	mulq $9,$13,$9
	mulq $11,$12,$11
	addq $9,$11,$9
	ldq $1,56($30)
	addq $9,$1,$9
	ldq $1,48($30)
	stq $1,0($10)
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
	subq $31,$17,$1
	cmpult $31,$17,$17
	subq $31,$18,$18
	subq $18,$17,$18
	stq $1,0($16)
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
	addl $31,$16,$1
	extwl $16,2,$16
	xor $16,$1,$16
	zapnot $16,15,$2
	srl $2,8,$2
	xor $2,$16,$2
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
	addl $31,$1,$2
	extwl $1,2,$1
	xor $1,$2,$1
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
	ldah $29,0($27)		!gpdisp!132
	lda $29,0($29)		!gpdisp!132
$__popcountdi2..ng:
	.prologue 1
	srl $16,1,$1
	ldah $2,$LC19($29)		!gprelhigh
	ldq $2,$LC19($2)		!gprellow
	and $1,$2,$1
	subq $16,$1,$16
	srl $16,2,$2
	ldah $1,$LC20($29)		!gprelhigh
	ldq $1,$LC20($1)		!gprellow
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
	addl $2,$1,$1
	ldah $2,3855($31)
	lda $2,3855($2)
	and $2,$1,$2
	srl $2,16,$1
	addl $1,$2,$3
	addq $1,$2,$0
	srl $0,8,$0
	addl $0,$3,$0
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
	ldah $29,0($27)		!gpdisp!133
	lda $29,0($29)		!gpdisp!133
$__popcountti2..ng:
	.prologue 1
	sll $17,63,$2
	srl $16,1,$1
	bis $2,$1,$1
	srl $17,1,$2
	ldah $3,$LC19($29)		!gprelhigh
	ldq $3,$LC19($3)		!gprellow
	and $1,$3,$1
	and $2,$3,$2
	subq $16,$1,$1
	cmpult $16,$1,$16
	subq $17,$2,$2
	subq $2,$16,$2
	sll $2,62,$4
	srl $1,2,$3
	bis $4,$3,$3
	srl $2,2,$4
	ldah $5,$LC20($29)		!gprelhigh
	ldq $5,$LC20($5)		!gprellow
	and $3,$5,$3
	and $4,$5,$4
	and $1,$5,$1
	and $2,$5,$2
	addq $3,$1,$1
	cmpult $1,$3,$3
	addq $4,$2,$2
	addq $3,$2,$3
	sll $3,60,$4
	srl $1,4,$2
	bis $4,$2,$2
	srl $3,4,$4
	addq $2,$1,$1
	cmpult $1,$2,$2
	addq $4,$3,$3
	addq $2,$3,$2
	ldah $3,$LC21($29)		!gprelhigh
	ldq $3,$LC21($3)		!gprellow
	and $1,$3,$1
	and $2,$3,$2
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
	ldah $29,0($27)		!gpdisp!134
	lda $29,0($29)		!gpdisp!134
$__powidf2..ng:
	.prologue 1
	mov $17,$1
	ldah $2,$LC16($29)		!gprelhigh
	lds $f0,$LC16($2)		!gprellow
	br $31,$L702
	.align 4
$L700:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	beq $1,$L701
	mult $f16,$f16,$f16
$L702:
	blbc $1,$L700
	mult $f0,$f16,$f0
	br $31,$L700
	.align 4
$L701:
	cmplt $17,0,$17
	bne $17,$L704
$L699:
	ret $31,($26),1
	.align 4
$L704:
	ldah $1,$LC16($29)		!gprelhigh
	lds $f10,$LC16($1)		!gprellow
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
	ldah $29,0($27)		!gpdisp!135
	lda $29,0($29)		!gpdisp!135
$__powisf2..ng:
	.prologue 1
	mov $17,$1
	ldah $2,$LC16($29)		!gprelhigh
	lds $f0,$LC16($2)		!gprellow
	br $31,$L708
	.align 4
$L706:
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	beq $1,$L707
	muls $f16,$f16,$f16
$L708:
	blbc $1,$L706
	muls $f0,$f16,$f0
	br $31,$L706
	.align 4
$L707:
	cmplt $17,0,$17
	bne $17,$L710
$L705:
	ret $31,($26),1
	.align 4
$L710:
	ldah $1,$LC16($29)		!gprelhigh
	lds $f10,$LC16($1)		!gprellow
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
	cmpult $1,$2,$3
	mov $31,$0
	bne $3,$L712
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L712
	zapnot $16,15,$16
	zapnot $17,15,$17
	cmpult $16,$17,$1
	mov $31,$0
	bne $1,$L712
	cmpult $17,$16,$0
	lda $0,1($0)
$L712:
	ret $31,($26),1
	.cfi_endproc
$LFE163:
	.end __ucmpdi2
	.align 2
	.align 4
	.globl __aeabi_ulcmp
	.ent __aeabi_ulcmp
__aeabi_ulcmp:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB164:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!136
	lda $29,0($29)		!gpdisp!136
$__aeabi_ulcmp..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	ldq $27,__ucmpdi2($29)		!literal!137
	jsr $26,($27),0		!lituse_jsr!137
	ldah $29,0($26)		!gpdisp!138
	lda $29,0($29)		!gpdisp!138
	subl $0,1,$0
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
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
	bne $1,$L719
	cmpule $17,$19,$17
	lda $0,2($31)
	beq $17,$L719
	cmpult $16,$18,$1
	mov $31,$0
	bne $1,$L719
	cmpult $18,$16,$0
	lda $0,1($0)
$L719:
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
