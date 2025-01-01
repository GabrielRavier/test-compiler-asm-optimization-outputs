	.set noreorder
	.set volatile
	.set noat
	.set nomacro
	.arch ev4
	.text
	.align 2
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
	bne $1,$L4
	addq $17,$18,$2
	addq $16,$18,$18
	br $31,$L5
$L6:
	lda $2,-1($2)
	lda $18,-1($18)
	lda $3,1($2)
	ldq_u $1,0($2)
	extqh $1,$3,$1
	sra $1,56,$1
	ldq_u $3,0($18)
	mskbl $3,$18,$3
	insbl $1,$18,$1
	bis $1,$3,$1
	stq_u $1,0($18)
$L5:
	cmpeq $2,$17,$1
	beq $1,$L6
	ret $31,($26),1
$L4:
	cmpeq $16,$17,$1
	bne $1,$L7
	addq $16,$18,$5
	mov $17,$2
	mov $16,$18
	br $31,$L8
$L9:
	lda $2,1($2)
	lda $18,1($18)
	ldq_u $1,-1($2)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq_u $3,-1($18)
	lda $4,-1($18)
	mskbl $3,$4,$3
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,-1($18)
$L8:
	cmpeq $18,$5,$1
	beq $1,$L9
$L7:
	ret $31,($26),1
	.cfi_endproc
$LFE2:
	.end memmove
	.align 2
	.globl memccpy
	.ent memccpy
$memccpy..ng:
memccpy:
	.frame $30,0,$26,0
$LFB3:
	.cfi_startproc
	.prologue 0
	and $18,0xff,$18
	br $31,$L11
$L13:
	lda $19,-1($19)
	lda $17,1($17)
	lda $16,1($16)
$L11:
	beq $19,$L12
	ldq_u $1,0($17)
	extbl $1,$17,$1
	ldq_u $2,0($16)
	mskbl $2,$16,$2
	insbl $1,$16,$1
	bis $1,$2,$1
	stq_u $1,0($16)
	extbl $1,$16,$1
	cmpeq $18,$1,$1
	beq $1,$L13
$L12:
	lda $0,1($16)
	cmoveq $19,0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE3:
	.end memccpy
	.align 2
	.globl memchr
	.ent memchr
$memchr..ng:
memchr:
	.frame $30,0,$26,0
$LFB4:
	.cfi_startproc
	.prologue 0
	and $17,0xff,$17
	br $31,$L17
$L19:
	lda $16,1($16)
	lda $18,-1($18)
$L17:
	beq $18,$L18
	ldq_u $1,0($16)
	extbl $1,$16,$1
	cmpeq $17,$1,$1
	beq $1,$L19
$L18:
	mov $16,$0
	cmoveq $18,0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE4:
	.end memchr
	.align 2
	.globl memcmp
	.ent memcmp
$memcmp..ng:
memcmp:
	.frame $30,0,$26,0
$LFB5:
	.cfi_startproc
	.prologue 0
	br $31,$L23
$L25:
	lda $18,-1($18)
	lda $16,1($16)
	lda $17,1($17)
$L23:
	beq $18,$L24
	ldq_u $1,0($16)
	extbl $1,$16,$1
	ldq_u $2,0($17)
	extbl $2,$17,$2
	cmpeq $1,$2,$1
	bne $1,$L25
$L24:
	mov $31,$0
	beq $18,$L26
	ldq_u $0,0($16)
	extbl $0,$16,$0
	ldq_u $1,0($17)
	extbl $1,$17,$1
	subl $0,$1,$0
$L26:
	ret $31,($26),1
	.cfi_endproc
$LFE5:
	.end memcmp
	.align 2
	.globl memcpy
	.ent memcpy
$memcpy..ng:
memcpy:
	.frame $30,0,$26,0
$LFB6:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	addq $16,$18,$18
	mov $16,$2
	br $31,$L29
$L30:
	lda $17,1($17)
	lda $2,1($2)
	ldq_u $1,-1($17)
	lda $3,-1($17)
	extbl $1,$3,$1
	ldq_u $3,-1($2)
	lda $4,-1($2)
	mskbl $3,$4,$3
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,-1($2)
$L29:
	cmpeq $2,$18,$1
	beq $1,$L30
	ret $31,($26),1
	.cfi_endproc
$LFE6:
	.end memcpy
	.align 2
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
$L32:
	lda $1,1($18)
	beq $1,$L36
	addq $16,$18,$2
	ldq_u $1,0($2)
	extbl $1,$2,$1
	lda $2,-1($18)
	cmpeq $17,$1,$1
	bne $1,$L37
	mov $2,$18
	br $31,$L32
$L37:
	addq $16,$18,$0
	ret $31,($26),1
$L36:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE7:
	.end memrchr
	.align 2
	.globl memset
	.ent memset
$memset..ng:
memset:
	.frame $30,0,$26,0
$LFB8:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	addq $16,$18,$18
	mov $16,$1
	and $17,0xff,$17
	br $31,$L39
$L40:
	ldq_u $3,0($1)
	mskbl $3,$1,$3
	insql $17,$1,$2
	bis $2,$3,$2
	stq_u $2,0($1)
	lda $1,1($1)
$L39:
	cmpeq $1,$18,$2
	beq $2,$L40
	ret $31,($26),1
	.cfi_endproc
$LFE8:
	.end memset
	.align 2
	.globl stpcpy
	.ent stpcpy
$stpcpy..ng:
stpcpy:
	.frame $30,0,$26,0
$LFB9:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	br $31,$L42
$L43:
	lda $17,1($17)
	lda $0,1($0)
$L42:
	lda $2,1($17)
	ldq_u $1,0($17)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq_u $2,0($0)
	mskbl $2,$0,$2
	insbl $1,$0,$1
	bis $1,$2,$1
	stq_u $1,0($0)
	lda $2,1($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L43
	ret $31,($26),1
	.cfi_endproc
$LFE9:
	.end stpcpy
	.align 2
	.globl strchrnul
	.ent strchrnul
$strchrnul..ng:
strchrnul:
	.frame $30,0,$26,0
$LFB10:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	and $17,0xff,$17
	br $31,$L45
$L47:
	lda $0,1($0)
$L45:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L46
	ldq_u $1,0($0)
	extbl $1,$0,$1
	cmpeq $17,$1,$1
	beq $1,$L47
$L46:
	ret $31,($26),1
	.cfi_endproc
$LFE10:
	.end strchrnul
	.align 2
	.globl strchr
	.ent strchr
$strchr..ng:
strchr:
	.frame $30,0,$26,0
$LFB11:
	.cfi_startproc
	.prologue 0
$L50:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $17,$1,$1
	bne $1,$L51
	mov $2,$16
	ldq_u $1,-1($2)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L50
	mov $31,$0
	ret $31,($26),1
$L51:
	mov $16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE11:
	.end strchr
	.align 2
	.globl strcmp
	.ent strcmp
$strcmp..ng:
strcmp:
	.frame $30,0,$26,0
$LFB12:
	.cfi_startproc
	.prologue 0
	br $31,$L54
$L56:
	lda $16,1($16)
	lda $17,1($17)
$L54:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	lda $3,1($17)
	ldq_u $2,0($17)
	extqh $2,$3,$2
	sra $2,56,$2
	cmpeq $1,$2,$1
	beq $1,$L55
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L56
$L55:
	ldq_u $0,0($16)
	extbl $0,$16,$0
	ldq_u $1,0($17)
	extbl $1,$17,$1
	subl $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE12:
	.end strcmp
	.align 2
	.globl strlen
	.ent strlen
$strlen..ng:
strlen:
	.frame $30,0,$26,0
$LFB13:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	br $31,$L58
$L59:
	lda $0,1($0)
$L58:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L59
	subq $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE13:
	.end strlen
	.align 2
	.globl strncmp
	.ent strncmp
$strncmp..ng:
strncmp:
	.frame $30,0,$26,0
$LFB14:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $18,$L61
	mov $16,$1
	lda $18,-1($18)
	addq $18,$16,$4
$L62:
	ldq_u $2,0($1)
	extbl $2,$1,$2
	beq $2,$L63
	ldq_u $3,0($17)
	extbl $3,$17,$3
	subq $4,$1,$2
	cmpult $31,$2,$2
	cmpult $31,$3,$3
	and $2,$3,$2
	beq $2,$L63
	ldq_u $2,0($1)
	extbl $2,$1,$2
	ldq_u $3,0($17)
	extbl $3,$17,$3
	cmpeq $2,$3,$2
	beq $2,$L63
	lda $1,1($1)
	lda $17,1($17)
	br $31,$L62
$L63:
	ldq_u $0,0($1)
	extbl $0,$1,$0
	ldq_u $1,0($17)
	extbl $1,$17,$1
	subl $0,$1,$0
$L61:
	ret $31,($26),1
	.cfi_endproc
$LFE14:
	.end strncmp
	.align 2
	.globl swab
	.ent swab
$swab..ng:
swab:
	.frame $30,0,$26,0
$LFB15:
	.cfi_startproc
	.prologue 0
	mov $16,$2
	addq $16,$18,$18
	br $31,$L67
$L68:
	lda $4,2($2)
	ldq_u $1,1($2)
	extqh $1,$4,$1
	sra $1,56,$1
	ldq_u $3,0($17)
	mskbl $3,$17,$3
	insbl $1,$17,$1
	bis $1,$3,$1
	stq_u $1,0($17)
	lda $3,1($2)
	ldq_u $1,0($2)
	extqh $1,$3,$1
	sra $1,56,$1
	ldq_u $2,1($17)
	lda $3,1($17)
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,1($17)
	lda $17,2($17)
	mov $4,$2
$L67:
	subq $18,$2,$1
	cmple $1,1,$1
	beq $1,$L68
	ret $31,($26),1
	.cfi_endproc
$LFE15:
	.end swab
	.align 2
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
	.globl isblank
	.ent isblank
$isblank..ng:
isblank:
	.frame $30,0,$26,0
$LFB18:
	.cfi_startproc
	.prologue 0
	cmpeq $16,32,$1
	cmpeq $16,9,$16
	bis $16,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE18:
	.end isblank
	.align 2
	.globl iscntrl
	.ent iscntrl
$iscntrl..ng:
iscntrl:
	.frame $30,0,$26,0
$LFB19:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$0
	cmpule $0,31,$0
	cmpeq $16,127,$16
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE19:
	.end iscntrl
	.align 2
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
	.globl isspace
	.ent isspace
$isspace..ng:
isspace:
	.frame $30,0,$26,0
$LFB24:
	.cfi_startproc
	.prologue 0
	cmpeq $16,32,$1
	subl $16,9,$0
	zapnot $0,15,$0
	cmpule $0,4,$0
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE24:
	.end isspace
	.align 2
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
	.globl iswcntrl
	.ent iswcntrl
$iswcntrl..ng:
iswcntrl:
	.frame $30,0,$26,0
$LFB26:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$1
	cmpule $1,31,$1
	subl $16,127,$2
	zapnot $2,15,$2
	cmpule $2,32,$2
	bis $1,$2,$1
	lda $0,1($31)
	bne $1,$L80
	lda $1,-8232($16)
	zapnot $1,15,$1
	cmpule $1,1,$1
	ldah $16,-1($16)
	addl $16,7,$16
	zapnot $16,15,$16
	cmpule $16,2,$0
	cmovne $1,1,$0
$L80:
	ret $31,($26),1
	.cfi_endproc
$LFE26:
	.end iswcntrl
	.align 2
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
	.globl iswprint
	.ent iswprint
$iswprint..ng:
iswprint:
	.frame $30,0,$26,0
$LFB28:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$1
	cmpule $1,254,$1
	bne $1,$L90
	zapnot $16,15,$1
	lda $2,8231($31)
	cmpule $1,$2,$1
	lda $2,-8234($16)
	zapnot $2,15,$2
	ldah $3,1($31)
	lda $3,-18475($3)
	cmpule $2,$3,$2
	bis $1,$2,$1
	lda $0,1($31)
	bne $1,$L86
	ldah $1,-1($16)
	lda $1,8192($1)
	zapnot $1,15,$1
	lda $2,8184($31)
	cmpule $1,$2,$1
	bne $1,$L86
	ldah $1,-1($16)
	addl $1,4,$1
	ldah $2,16($31)
	zapnot $1,15,$1
	lda $2,3($2)
	cmpule $1,$2,$1
	mov $31,$0
	beq $1,$L86
	ldah $1,1($31)
	lda $1,-2($1)
	and $16,$1,$16
	zapnot $16,15,$16
	cmpeq $16,$1,$16
	xor $16,1,$0
$L86:
	ret $31,($26),1
$L90:
	addl $16,1,$16
	and $16,127,$16
	lda $0,32($31)
	cmpult $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE28:
	.end iswprint
	.align 2
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
	bis $16,32,$16
	subl $16,97,$16
	zapnot $16,15,$16
	cmpule $16,5,$0
	cmovne $1,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE29:
	.end iswxdigit
	.align 2
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
	.globl fdim
	.ent fdim
$fdim..ng:
fdim:
	.frame $30,0,$26,0
$LFB31:
	.cfi_startproc
	.prologue 0
	cmptun $f16,$f16,$f10
	fbne $f10,$L98
	cmptun $f17,$f17,$f10
	fbne $f10,$L99
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L102
	subt $f16,$f17,$f0
	ret $31,($26),1
$L98:
	cpys $f16,$f16,$f0
	ret $31,($26),1
$L99:
	cpys $f17,$f17,$f0
	ret $31,($26),1
$L102:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.cfi_endproc
$LFE31:
	.end fdim
	.align 2
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
	fbne $f11,$L106
	cpys $f17,$f17,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L107
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L110
	subs $f16,$f17,$f0
	ret $31,($26),1
$L106:
	cpys $f16,$f16,$f0
	ret $31,($26),1
$L107:
	cpys $f17,$f17,$f0
	ret $31,($26),1
$L110:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.cfi_endproc
$LFE32:
	.end fdimf
	.align 2
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
	fbne $f10,$L117
	cmptun $f17,$f17,$f10
	fbne $f10,$L118
	stt $f16,0($30)
	ldq $2,0($30)
	srl $2,63,$1
	stt $f17,0($30)
	ldq $3,0($30)
	srl $3,63,$2
	cmpeq $1,$2,$1
	bne $1,$L113
	stt $f16,0($30)
	ldq $2,0($30)
	srl $2,63,$1
	cpys $f16,$f16,$f0
	beq $1,$L112
	cpys $f17,$f17,$f0
	br $31,$L112
$L113:
	lda $1,1($31)
	cmptlt $f16,$f17,$f10
	fbne $f10,$L114
	bis $31,$31,$1
$L114:
	and $1,0xff,$1
	beq $1,$L116
	cpys $f17,$f17,$f16
$L116:
	cpys $f16,$f16,$f0
$L112:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L117:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L112
$L118:
	cpys $f16,$f16,$f0
	br $31,$L112
	.cfi_endproc
$LFE33:
	.end fmax
	.align 2
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
	sts $f16,0($30)
	sts $f17,16($30)
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L126
	cpys $f17,$f17,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L127
	ldah $1,-32768($31)
	ldl $3,0($30)
	and $1,$3,$2
	addl $31,$2,$2
	ldl $3,16($30)
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L122
	ldah $1,-32768($31)
	ldl $2,0($30)
	and $1,$2,$1
	addl $31,$1,$1
	cpys $f16,$f16,$f0
	beq $1,$L121
	cpys $f17,$f17,$f0
$L121:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L122:
	.cfi_restore_state
	lda $1,1($31)
	lds $f11,0($30)
	lds $f12,16($30)
	cmptlt $f11,$f12,$f10
	fbne $f10,$L123
	bis $31,$31,$1
$L123:
	and $1,0xff,$1
	lds $f0,0($30)
	beq $1,$L121
	lds $f0,16($30)
	br $31,$L121
$L126:
	lds $f0,16($30)
	br $31,$L121
$L127:
	lds $f0,0($30)
	br $31,$L121
	.cfi_endproc
$LFE34:
	.end fmaxf
	.align 2
	.globl fmaxl
	.ent fmaxl
fmaxl:
	.frame $30,176,$26,0
	.mask 0x400fe00,-176
$LFB35:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!1
	lda $29,0($29)		!gpdisp!1
$fmaxl..ng:
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
	mov $16,$11
	ldq $14,0($17)
	ldq $9,8($17)
	ldq $15,0($18)
	ldq $10,8($18)
	mov $14,$16
	mov $9,$17
	mov $14,$18
	mov $9,$19
	ldq $27,_OtsEqlX($29)		!literal!2
	jsr $26,($27),0		!lituse_jsr!2
	ldah $29,0($26)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
	blt $0,$L138
	mov $15,$16
	mov $10,$17
	stq $15,64($30)
	stq $10,72($30)
	ldq $18,64($30)
	ldq $19,72($30)
	ldq $27,_OtsEqlX($29)		!literal!4
	jsr $26,($27),0		!lituse_jsr!4
	ldah $29,0($26)		!gpdisp!5
	lda $29,0($29)		!gpdisp!5
	blt $0,$L139
	srl $9,63,$1
	srl $10,63,$2
	cmpeq $1,$2,$1
	bne $1,$L133
	mov $15,$2
	cmovge $9,$14,$2
	mov $10,$1
	cmovge $9,$9,$1
	stq $2,80($30)
	stq $1,88($30)
	ldq $1,80($30)
	ldq $2,88($30)
	stq $1,0($11)
	stq $2,8($11)
$L129:
	mov $11,$0
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
$L138:
	.cfi_restore_state
	stq $15,144($30)
	stq $10,152($30)
	ldq $1,144($30)
	ldq $2,152($30)
	stq $1,0($11)
	stq $2,8($11)
	br $31,$L129
$L139:
	stq $14,160($30)
	stq $9,168($30)
	ldq $1,160($30)
	ldq $2,168($30)
	stq $1,0($11)
	stq $2,8($11)
	br $31,$L129
$L133:
	stq $14,96($30)
	stq $9,104($30)
	ldq $16,96($30)
	ldq $17,104($30)
	stq $15,112($30)
	stq $10,120($30)
	ldq $18,112($30)
	ldq $19,120($30)
	ldq $27,_OtsLssX($29)		!literal!6
	jsr $26,($27),0		!lituse_jsr!6
	ldah $29,0($26)		!gpdisp!7
	lda $29,0($29)		!gpdisp!7
	cmplt $31,$0,$0
	mov $15,$2
	cmoveq $0,$14,$2
	mov $10,$1
	cmoveq $0,$9,$1
	stq $2,128($30)
	stq $1,136($30)
	ldq $1,128($30)
	ldq $2,136($30)
	stq $1,0($11)
	stq $2,8($11)
	br $31,$L129
	.cfi_endproc
$LFE35:
	.end fmaxl
	.align 2
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
	ldq $2,0($30)
	srl $2,63,$1
	stt $f17,0($30)
	ldq $3,0($30)
	srl $3,63,$2
	cmpeq $1,$2,$1
	bne $1,$L142
	stt $f16,0($30)
	ldq $2,0($30)
	srl $2,63,$1
	cpys $f17,$f17,$f0
	beq $1,$L141
	cpys $f16,$f16,$f0
	br $31,$L141
$L142:
	lda $1,1($31)
	cmptlt $f16,$f17,$f10
	fbne $f10,$L143
	bis $31,$31,$1
$L143:
	and $1,0xff,$1
	beq $1,$L145
	cpys $f16,$f16,$f17
$L145:
	cpys $f17,$f17,$f0
$L141:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L146:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L141
$L147:
	cpys $f16,$f16,$f0
	br $31,$L141
	.cfi_endproc
$LFE36:
	.end fmin
	.align 2
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
	fbne $f11,$L155
	cpys $f17,$f17,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L156
	ldah $1,-32768($31)
	ldl $3,0($30)
	and $1,$3,$2
	addl $31,$2,$2
	ldl $3,16($30)
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L151
	ldah $1,-32768($31)
	ldl $2,0($30)
	and $1,$2,$1
	addl $31,$1,$1
	cpys $f17,$f17,$f0
	beq $1,$L150
	cpys $f16,$f16,$f0
$L150:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L151:
	.cfi_restore_state
	lda $1,1($31)
	lds $f11,0($30)
	lds $f12,16($30)
	cmptlt $f11,$f12,$f10
	fbne $f10,$L152
	bis $31,$31,$1
$L152:
	and $1,0xff,$1
	lds $f0,16($30)
	beq $1,$L150
	lds $f0,0($30)
	br $31,$L150
$L155:
	lds $f0,16($30)
	br $31,$L150
$L156:
	lds $f0,0($30)
	br $31,$L150
	.cfi_endproc
$LFE37:
	.end fminf
	.align 2
	.globl fminl
	.ent fminl
fminl:
	.frame $30,176,$26,0
	.mask 0x400fe00,-176
$LFB38:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!8
	lda $29,0($29)		!gpdisp!8
$fminl..ng:
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
	mov $16,$11
	ldq $14,0($17)
	ldq $9,8($17)
	ldq $15,0($18)
	ldq $10,8($18)
	mov $14,$16
	mov $9,$17
	mov $14,$18
	mov $9,$19
	ldq $27,_OtsEqlX($29)		!literal!9
	jsr $26,($27),0		!lituse_jsr!9
	ldah $29,0($26)		!gpdisp!10
	lda $29,0($29)		!gpdisp!10
	blt $0,$L167
	mov $15,$16
	mov $10,$17
	stq $15,64($30)
	stq $10,72($30)
	ldq $18,64($30)
	ldq $19,72($30)
	ldq $27,_OtsEqlX($29)		!literal!11
	jsr $26,($27),0		!lituse_jsr!11
	ldah $29,0($26)		!gpdisp!12
	lda $29,0($29)		!gpdisp!12
	blt $0,$L168
	srl $9,63,$1
	srl $10,63,$2
	cmpeq $1,$2,$1
	bne $1,$L162
	mov $14,$2
	cmovge $9,$15,$2
	mov $9,$1
	cmovge $9,$10,$1
	stq $2,80($30)
	stq $1,88($30)
	ldq $1,80($30)
	ldq $2,88($30)
	stq $1,0($11)
	stq $2,8($11)
$L158:
	mov $11,$0
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
$L167:
	.cfi_restore_state
	stq $15,144($30)
	stq $10,152($30)
	ldq $1,144($30)
	ldq $2,152($30)
	stq $1,0($11)
	stq $2,8($11)
	br $31,$L158
$L168:
	stq $14,160($30)
	stq $9,168($30)
	ldq $1,160($30)
	ldq $2,168($30)
	stq $1,0($11)
	stq $2,8($11)
	br $31,$L158
$L162:
	stq $14,96($30)
	stq $9,104($30)
	ldq $16,96($30)
	ldq $17,104($30)
	stq $15,112($30)
	stq $10,120($30)
	ldq $18,112($30)
	ldq $19,120($30)
	ldq $27,_OtsLssX($29)		!literal!13
	jsr $26,($27),0		!lituse_jsr!13
	ldah $29,0($26)		!gpdisp!14
	lda $29,0($29)		!gpdisp!14
	cmplt $31,$0,$0
	mov $14,$2
	cmoveq $0,$15,$2
	mov $9,$1
	cmoveq $0,$10,$1
	stq $2,128($30)
	stq $1,136($30)
	ldq $1,128($30)
	ldq $2,136($30)
	stq $1,0($11)
	stq $2,8($11)
	br $31,$L158
	.cfi_endproc
$LFE38:
	.end fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align 2
	.globl l64a
	.ent l64a
l64a:
	.frame $30,0,$26,0
$LFB39:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!15
	lda $29,0($29)		!gpdisp!15
$l64a..ng:
	.prologue 1
	addl $31,$16,$16
	ldah $2,s.0($29)		!gprelhigh
	lda $2,s.0($2)		!gprellow
	ldah $4,digits($29)		!gprelhigh
	lda $4,digits($4)		!gprellow
	br $31,$L170
$L171:
	and $16,63,$1
	addq $1,$4,$1
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	ldq_u $3,0($2)
	mskbl $3,$2,$3
	insbl $1,$2,$1
	bis $1,$3,$1
	stq_u $1,0($2)
	lda $2,1($2)
	zapnot $16,15,$16
	srl $16,6,$16
$L170:
	bne $16,$L171
	ldq_u $1,0($2)
	mskbl $1,$2,$1
	stq_u $1,0($2)
	ldah $0,s.0($29)		!gprelhigh
	lda $0,s.0($0)		!gprellow
	ret $31,($26),1
	.cfi_endproc
$LFE39:
	.end l64a
	.section	.sbss,"aw"
	.type	seed, @object
	.size	seed, 8
	.align 3
seed:
	.zero	8
	.text
	.align 2
	.globl srand
	.ent srand
srand:
	.frame $30,0,$26,0
$LFB40:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!16
	lda $29,0($29)		!gpdisp!16
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
	.globl rand
	.ent rand
rand:
	.frame $30,0,$26,0
$LFB41:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!17
	lda $29,0($29)		!gpdisp!17
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
	.globl insque
	.ent insque
$insque..ng:
insque:
	.frame $30,0,$26,0
$LFB42:
	.cfi_startproc
	.prologue 0
	beq $17,$L177
	ldq $1,0($17)
	stq $1,0($16)
	stq $17,8($16)
	stq $16,0($17)
	ldq $1,0($16)
	beq $1,$L174
	stq $16,8($1)
$L174:
	ret $31,($26),1
$L177:
	stq $31,8($16)
	stq $31,0($16)
	ret $31,($26),1
	.cfi_endproc
$LFE42:
	.end insque
	.align 2
	.globl remque
	.ent remque
$remque..ng:
remque:
	.frame $30,0,$26,0
$LFB43:
	.cfi_startproc
	.prologue 0
	ldq $1,0($16)
	beq $1,$L179
	ldq $2,8($16)
	stq $2,8($1)
$L179:
	ldq $1,8($16)
	beq $1,$L178
	ldq $2,0($16)
	stq $2,0($1)
$L178:
	ret $31,($26),1
	.cfi_endproc
$LFE43:
	.end remque
	.align 2
	.globl lsearch
	.ent lsearch
lsearch:
	.frame $30,80,$26,0
	.mask 0x400fe00,-80
$LFB44:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!18
	lda $29,0($29)		!gpdisp!18
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
	mov $16,$13
	stq $17,64($30)
	mov $18,$15
	mov $19,$11
	mov $20,$14
	ldq $12,0($18)
	mov $17,$10
	mov $31,$9
	br $31,$L182
$L183:
	lda $9,1($9)
$L182:
	cmpeq $9,$12,$1
	bne $1,$L186
	mov $10,$17
	mov $13,$16
	mov $14,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!19
	lda $29,0($29)		!gpdisp!19
	addq $10,$11,$10
	bne $0,$L183
	mulq $9,$11,$9
	ldq $1,64($30)
	addq $1,$9,$0
	br $31,$L184
$L186:
	lda $1,1($12)
	stq $1,0($15)
	mulq $11,$12,$16
	mov $11,$18
	mov $13,$17
	ldq $27,64($30)
	addq $27,$16,$16
	ldq $27,memcpy($29)		!literal!20
	jsr $26,($27),0		!lituse_jsr!20
	ldah $29,0($26)		!gpdisp!21
	lda $29,0($29)		!gpdisp!21
$L184:
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
	.globl lfind
	.ent lfind
lfind:
	.frame $30,64,$26,0
	.mask 0x400fe00,-64
$LFB45:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!22
	lda $29,0($29)		!gpdisp!22
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
	mov $16,$13
	mov $17,$14
	mov $19,$11
	mov $20,$12
	ldq $15,0($18)
	mov $17,$10
	mov $31,$9
	br $31,$L188
$L189:
	lda $9,1($9)
$L188:
	cmpeq $9,$15,$1
	bne $1,$L192
	mov $10,$17
	mov $13,$16
	mov $12,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!23
	lda $29,0($29)		!gpdisp!23
	addq $10,$11,$10
	bne $0,$L189
	mulq $9,$11,$19
	addq $14,$19,$0
	br $31,$L190
$L192:
	mov $31,$0
$L190:
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
	.globl atoi
	.ent atoi
atoi:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB47:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!24
	lda $29,0($29)		!gpdisp!24
$atoi..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $16,$9
	br $31,$L195
$L196:
	lda $9,1($9)
$L195:
	lda $1,1($9)
	ldq_u $16,0($9)
	extqh $16,$1,$16
	sra $16,56,$16
	ldq $27,isspace($29)		!literal!25
	jsr $26,($27),0		!lituse_jsr!25
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
	bne $0,$L196
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L202
	cmpeq $1,45,$1
	mov $31,$4
	beq $1,$L198
	lda $4,1($31)
$L197:
	lda $9,1($9)
$L198:
	mov $31,$2
	br $31,$L199
$L202:
	mov $31,$4
	br $31,$L197
$L200:
	s4addl $2,$2,$2
	addl $2,$2,$2
	lda $9,1($9)
	ldq_u $1,-1($9)
	extqh $1,$9,$1
	sra $1,56,$1
	subl $1,48,$1
	subl $2,$1,$2
$L199:
	lda $3,1($9)
	ldq_u $1,0($9)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L200
	subl $31,$2,$0
	cmovne $4,$2,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE47:
	.end atoi
	.align 2
	.globl atol
	.ent atol
atol:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB48:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!27
	lda $29,0($29)		!gpdisp!27
$atol..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $16,$9
	br $31,$L206
$L207:
	lda $9,1($9)
$L206:
	lda $1,1($9)
	ldq_u $16,0($9)
	extqh $16,$1,$16
	sra $16,56,$16
	ldq $27,isspace($29)		!literal!28
	jsr $26,($27),0		!lituse_jsr!28
	ldah $29,0($26)		!gpdisp!29
	lda $29,0($29)		!gpdisp!29
	bne $0,$L207
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L213
	cmpeq $1,45,$1
	mov $31,$4
	beq $1,$L209
	lda $4,1($31)
$L208:
	lda $9,1($9)
$L209:
	mov $31,$2
	br $31,$L210
$L213:
	mov $31,$4
	br $31,$L208
$L211:
	s4addq $2,$2,$2
	addq $2,$2,$2
	lda $9,1($9)
	ldq_u $1,-1($9)
	extqh $1,$9,$1
	sra $1,56,$1
	subl $1,48,$1
	subq $2,$1,$2
$L210:
	lda $3,1($9)
	ldq_u $1,0($9)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L211
	subq $31,$2,$0
	cmovne $4,$2,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE48:
	.end atol
	.align 2
	.globl atoll
	.ent atoll
atoll:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB49:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!30
	lda $29,0($29)		!gpdisp!30
$atoll..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $16,$9
	br $31,$L217
$L218:
	lda $9,1($9)
$L217:
	lda $1,1($9)
	ldq_u $16,0($9)
	extqh $16,$1,$16
	sra $16,56,$16
	ldq $27,isspace($29)		!literal!31
	jsr $26,($27),0		!lituse_jsr!31
	ldah $29,0($26)		!gpdisp!32
	lda $29,0($29)		!gpdisp!32
	bne $0,$L218
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L224
	cmpeq $1,45,$1
	mov $31,$4
	beq $1,$L220
	lda $4,1($31)
$L219:
	lda $9,1($9)
$L220:
	mov $31,$2
	br $31,$L221
$L224:
	mov $31,$4
	br $31,$L219
$L222:
	s4addq $2,$2,$2
	addq $2,$2,$2
	lda $9,1($9)
	ldq_u $1,-1($9)
	extqh $1,$9,$1
	sra $1,56,$1
	subl $1,48,$1
	subq $2,$1,$2
$L221:
	lda $3,1($9)
	ldq_u $1,0($9)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L222
	subq $31,$2,$0
	cmovne $4,$2,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE49:
	.end atoll
	.align 2
	.globl bsearch
	.ent bsearch
bsearch:
	.frame $30,64,$26,0
	.mask 0x4007e00,-64
$LFB50:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!33
	lda $29,0($29)		!gpdisp!33
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
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.prologue 1
	mov $16,$14
	mov $17,$12
	mov $18,$10
	mov $19,$11
	mov $20,$13
	br $31,$L228
$L235:
	srl $10,1,$10
$L228:
	beq $10,$L234
	srl $10,1,$9
	mulq $9,$11,$9
	addq $12,$9,$9
	mov $9,$17
	mov $14,$16
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!34
	lda $29,0($29)		!gpdisp!34
	mov $0,$1
	cmplt $0,0,$0
	bne $0,$L235
	ble $1,$L233
	addq $9,$11,$12
	srl $10,1,$1
	lda $10,-1($10)
	subq $10,$1,$10
	br $31,$L228
$L234:
	mov $31,$0
$L231:
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $14,48($30)
	lda $30,64($30)
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L233:
	.cfi_restore_state
	mov $9,$0
	br $31,$L231
	.cfi_endproc
$LFE50:
	.end bsearch
	.align 2
	.globl bsearch_r
	.ent bsearch_r
bsearch_r:
	.frame $30,64,$26,0
	.mask 0x400fe00,-64
$LFB51:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!35
	lda $29,0($29)		!gpdisp!35
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
	mov $16,$15
	mov $19,$12
	mov $20,$14
	mov $21,$13
	addl $31,$18,$10
	mov $17,$11
	br $31,$L237
$L239:
	sra $10,1,$10
$L237:
	beq $10,$L242
	sra $10,1,$9
	mulq $9,$12,$9
	addq $11,$9,$9
	mov $13,$18
	mov $9,$17
	mov $15,$16
	mov $14,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!36
	lda $29,0($29)		!gpdisp!36
	beq $0,$L241
	ble $0,$L239
	addq $9,$12,$11
	subl $10,1,$10
	br $31,$L239
$L242:
	mov $31,$0
$L238:
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
$L241:
	.cfi_restore_state
	mov $9,$0
	br $31,$L238
	.cfi_endproc
$LFE51:
	.end bsearch_r
	.align 2
	.globl div
	.ent div
div:
	.frame $30,0,$26,0
$LFB52:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!39
	lda $29,0($29)		!gpdisp!39
$div..ng:
	.prologue 1
	mov $16,$0
	mov $17,$24
	mov $18,$25
	ldq $27,__divl($29)		!literal!37
	jsr $23,($27),__divl		!lituse_jsrdirect!37
	mov $27,$1
	ldq $27,__reml($29)		!literal!38
	jsr $23,($27),__reml		!lituse_jsrdirect!38
	stl $1,0($16)
	stl $27,4($16)
	ret $31,($26),1
	.cfi_endproc
$LFE52:
	.end div
	.align 2
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
	.globl imaxdiv
	.ent imaxdiv
imaxdiv:
	.frame $30,0,$26,0
$LFB54:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!42
	lda $29,0($29)		!gpdisp!42
$imaxdiv..ng:
	.prologue 1
	mov $16,$0
	mov $17,$24
	mov $18,$25
	ldq $27,__divq($29)		!literal!40
	jsr $23,($27),__divq		!lituse_jsrdirect!40
	mov $27,$1
	ldq $27,__remq($29)		!literal!41
	jsr $23,($27),__remq		!lituse_jsrdirect!41
	stq $1,0($16)
	stq $27,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE54:
	.end imaxdiv
	.align 2
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
	.globl ldiv
	.ent ldiv
ldiv:
	.frame $30,0,$26,0
$LFB56:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!45
	lda $29,0($29)		!gpdisp!45
$ldiv..ng:
	.prologue 1
	mov $16,$0
	mov $17,$24
	mov $18,$25
	ldq $27,__divq($29)		!literal!43
	jsr $23,($27),__divq		!lituse_jsrdirect!43
	mov $27,$1
	ldq $27,__remq($29)		!literal!44
	jsr $23,($27),__remq		!lituse_jsrdirect!44
	stq $1,0($16)
	stq $27,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE56:
	.end ldiv
	.align 2
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
	.globl lldiv
	.ent lldiv
lldiv:
	.frame $30,0,$26,0
$LFB58:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!48
	lda $29,0($29)		!gpdisp!48
$lldiv..ng:
	.prologue 1
	mov $16,$0
	mov $17,$24
	mov $18,$25
	ldq $27,__divq($29)		!literal!46
	jsr $23,($27),__divq		!lituse_jsrdirect!46
	mov $27,$1
	ldq $27,__remq($29)		!literal!47
	jsr $23,($27),__remq		!lituse_jsrdirect!47
	stq $1,0($16)
	stq $27,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE58:
	.end lldiv
	.align 2
	.globl wcschr
	.ent wcschr
$wcschr..ng:
wcschr:
	.frame $30,0,$26,0
$LFB59:
	.cfi_startproc
	.prologue 0
	br $31,$L251
$L253:
	lda $16,4($16)
$L251:
	ldl $1,0($16)
	beq $1,$L252
	cmpeq $17,$1,$1
	beq $1,$L253
$L252:
	ldl $1,0($16)
	mov $16,$0
	cmoveq $1,0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE59:
	.end wcschr
	.align 2
	.globl wcscmp
	.ent wcscmp
$wcscmp..ng:
wcscmp:
	.frame $30,0,$26,0
$LFB60:
	.cfi_startproc
	.prologue 0
	br $31,$L257
$L259:
	lda $16,4($16)
	lda $17,4($17)
$L257:
	ldl $1,0($16)
	ldl $2,0($17)
	cmpeq $1,$2,$1
	beq $1,$L258
	ldl $1,0($16)
	beq $1,$L258
	bne $2,$L259
$L258:
	ldl $1,0($16)
	ldl $2,0($17)
	cmplt $1,$2,$1
	lda $0,-1($31)
	bne $1,$L260
	ldl $1,0($16)
	cmplt $2,$1,$0
$L260:
	ret $31,($26),1
	.cfi_endproc
$LFE60:
	.end wcscmp
	.align 2
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
$L263:
	lda $17,4($17)
	lda $1,4($1)
	ldl $2,-4($17)
	stl $2,-4($1)
	bne $2,$L263
	ret $31,($26),1
	.cfi_endproc
$LFE61:
	.end wcscpy
	.align 2
	.globl wcslen
	.ent wcslen
$wcslen..ng:
wcslen:
	.frame $30,0,$26,0
$LFB62:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	br $31,$L266
$L267:
	lda $0,4($0)
$L266:
	ldl $1,0($0)
	bne $1,$L267
	subq $0,$16,$0
	sra $0,2,$0
	ret $31,($26),1
	.cfi_endproc
$LFE62:
	.end wcslen
	.align 2
	.globl wcsncmp
	.ent wcsncmp
$wcsncmp..ng:
wcsncmp:
	.frame $30,0,$26,0
$LFB63:
	.cfi_startproc
	.prologue 0
$L269:
	beq $18,$L270
	ldl $1,0($16)
	ldl $2,0($17)
	cmpeq $1,$2,$1
	beq $1,$L270
	ldl $1,0($16)
	beq $1,$L270
	beq $2,$L270
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
	br $31,$L269
$L270:
	mov $31,$0
	beq $18,$L272
	ldl $1,0($16)
	ldl $2,0($17)
	cmplt $1,$2,$1
	lda $0,-1($31)
	bne $1,$L272
	ldl $1,0($16)
	cmplt $2,$1,$0
$L272:
	ret $31,($26),1
	.cfi_endproc
$LFE63:
	.end wcsncmp
	.align 2
	.globl wmemchr
	.ent wmemchr
$wmemchr..ng:
wmemchr:
	.frame $30,0,$26,0
$LFB64:
	.cfi_startproc
	.prologue 0
	br $31,$L276
$L278:
	lda $18,-1($18)
	lda $16,4($16)
$L276:
	beq $18,$L277
	ldl $1,0($16)
	cmpeq $17,$1,$1
	beq $1,$L278
$L277:
	mov $16,$0
	cmoveq $18,0,$0
	ret $31,($26),1
	.cfi_endproc
$LFE64:
	.end wmemchr
	.align 2
	.globl wmemcmp
	.ent wmemcmp
$wmemcmp..ng:
wmemcmp:
	.frame $30,0,$26,0
$LFB65:
	.cfi_startproc
	.prologue 0
	br $31,$L282
$L284:
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
$L282:
	beq $18,$L283
	ldl $1,0($16)
	ldl $2,0($17)
	cmpeq $1,$2,$1
	bne $1,$L284
$L283:
	mov $31,$0
	beq $18,$L285
	ldl $1,0($16)
	ldl $2,0($17)
	cmplt $1,$2,$1
	lda $0,-1($31)
	bne $1,$L285
	ldl $1,0($16)
	cmplt $2,$1,$0
$L285:
	ret $31,($26),1
	.cfi_endproc
$LFE65:
	.end wmemcmp
	.align 2
	.globl wmemcpy
	.ent wmemcpy
$wmemcpy..ng:
wmemcpy:
	.frame $30,0,$26,0
$LFB66:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	mov $16,$1
	br $31,$L289
$L290:
	lda $17,4($17)
	lda $1,4($1)
	ldl $2,-4($17)
	stl $2,-4($1)
$L289:
	lda $18,-1($18)
	lda $2,1($18)
	bne $2,$L290
	ret $31,($26),1
	.cfi_endproc
$LFE66:
	.end wmemcpy
	.align 2
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
	bne $1,$L292
	subq $16,$17,$1
	s4addq $18,0,$2
	cmpult $1,$2,$1
	beq $1,$L297
	s4addq $18,$17,$17
	s4addq $18,$16,$18
	lda $2,-4($16)
	br $31,$L294
$L295:
	ldl $1,0($17)
	stl $1,0($18)
$L294:
	lda $17,-4($17)
	lda $18,-4($18)
	cmpeq $18,$2,$1
	beq $1,$L295
	ret $31,($26),1
$L296:
	lda $17,4($17)
	lda $1,4($1)
	ldl $2,-4($17)
	stl $2,-4($1)
$L293:
	lda $18,-1($18)
	lda $2,1($18)
	bne $2,$L296
$L292:
	ret $31,($26),1
$L297:
	mov $16,$1
	br $31,$L293
	.cfi_endproc
$LFE67:
	.end wmemmove
	.align 2
	.globl wmemset
	.ent wmemset
$wmemset..ng:
wmemset:
	.frame $30,0,$26,0
$LFB68:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	mov $16,$1
	br $31,$L299
$L300:
	lda $1,4($1)
	stl $17,-4($1)
$L299:
	lda $18,-1($18)
	lda $2,1($18)
	bne $2,$L300
	ret $31,($26),1
	.cfi_endproc
$LFE68:
	.end wmemset
	.align 2
	.globl bcopy
	.ent bcopy
$bcopy..ng:
bcopy:
	.frame $30,0,$26,0
$LFB69:
	.cfi_startproc
	.prologue 0
	cmpult $16,$17,$1
	beq $1,$L302
	addq $16,$18,$2
	addq $17,$18,$17
	br $31,$L303
$L304:
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
$L303:
	cmpeq $2,$16,$1
	beq $1,$L304
	ret $31,($26),1
$L302:
	cmpeq $16,$17,$1
	addq $17,$18,$18
	mov $16,$2
	beq $1,$L306
	ret $31,($26),1
$L307:
	lda $2,1($2)
	lda $17,1($17)
	ldq_u $1,-1($2)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq_u $3,-1($17)
	lda $4,-1($17)
	mskbl $3,$4,$3
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,-1($17)
$L306:
	cmpeq $17,$18,$1
	beq $1,$L307
$L301:
	ret $31,($26),1
	.cfi_endproc
$LFE69:
	.end bcopy
	.align 2
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
	srl $16,$17,$16
	bis $16,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE74:
	.end rotl_sz
	.align 2
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
	sll $16,$17,$16
	bis $16,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE75:
	.end rotr_sz
	.align 2
	.globl rotl16
	.ent rotl16
$rotl16..ng:
rotl16:
	.frame $30,0,$26,0
$LFB76:
	.cfi_startproc
	.prologue 0
	sll $16,$17,$2
	lda $1,16($31)
	subl $1,$17,$1
	srl $16,$1,$0
	bis $0,$2,$0
	zapnot $0,3,$0
	ret $31,($26),1
	.cfi_endproc
$LFE76:
	.end rotl16
	.align 2
	.globl rotr16
	.ent rotr16
$rotr16..ng:
rotr16:
	.frame $30,0,$26,0
$LFB77:
	.cfi_startproc
	.prologue 0
	addl $31,$16,$0
	srl $16,$17,$16
	lda $1,16($31)
	subl $1,$17,$1
	sll $0,$1,$0
	bis $0,$16,$0
	zapnot $0,3,$0
	ret $31,($26),1
	.cfi_endproc
$LFE77:
	.end rotr16
	.align 2
	.globl rotl8
	.ent rotl8
$rotl8..ng:
rotl8:
	.frame $30,0,$26,0
$LFB78:
	.cfi_startproc
	.prologue 0
	sll $16,$17,$2
	lda $1,8($31)
	subl $1,$17,$1
	srl $16,$1,$0
	bis $0,$2,$0
	and $0,0xff,$0
	ret $31,($26),1
	.cfi_endproc
$LFE78:
	.end rotl8
	.align 2
	.globl rotr8
	.ent rotr8
$rotr8..ng:
rotr8:
	.frame $30,0,$26,0
$LFB79:
	.cfi_startproc
	.prologue 0
	addl $31,$16,$0
	srl $16,$17,$16
	lda $1,8($31)
	subl $1,$17,$1
	sll $0,$1,$0
	bis $0,$16,$0
	and $0,0xff,$0
	ret $31,($26),1
	.cfi_endproc
$LFE79:
	.end rotr8
	.align 2
	.globl bswap_16
	.ent bswap_16
$bswap_16..ng:
bswap_16:
	.frame $30,0,$26,0
$LFB80:
	.cfi_startproc
	.prologue 0
	srl $16,8,$0
	insbl $16,1,$16
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE80:
	.end bswap_16
	.align 2
	.globl bswap_32
	.ent bswap_32
$bswap_32..ng:
bswap_32:
	.frame $30,0,$26,0
$LFB81:
	.cfi_startproc
	.prologue 0
	extbl $16,3,$3
	zapnot $16,4,$1
	srl $1,8,$1
	zapnot $16,2,$2
	sll $2,8,$2
	insbl $16,3,$0
	addl $31,$0,$0
	bis $0,$2,$0
	bis $0,$3,$0
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE81:
	.end bswap_32
	.align 2
	.globl bswap_64
	.ent bswap_64
$bswap_64..ng:
bswap_64:
	.frame $30,0,$26,0
$LFB82:
	.cfi_startproc
	.prologue 0
	srl $16,56,$1
	zapnot $16,64,$0
	srl $0,40,$0
	bis $0,$1,$0
	zapnot $16,32,$1
	srl $1,24,$1
	bis $0,$1,$0
	zapnot $16,16,$1
	srl $1,8,$1
	bis $0,$1,$0
	zapnot $16,8,$1
	sll $1,8,$1
	bis $0,$1,$0
	zapnot $16,4,$1
	sll $1,24,$1
	bis $0,$1,$0
	zapnot $16,2,$1
	sll $1,40,$1
	bis $0,$1,$0
	sll $16,56,$16
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE82:
	.end bswap_64
	.align 2
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
$L322:
	zapnot $0,15,$1
	cmpeq $1,32,$1
	bne $1,$L326
	srl $16,$0,$1
	blbs $1,$L327
	addl $0,1,$0
	br $31,$L322
$L327:
	addl $0,1,$0
	ret $31,($26),1
$L326:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE83:
	.end ffs
	.align 2
	.globl libiberty_ffs
	.ent libiberty_ffs
$libiberty_ffs..ng:
libiberty_ffs:
	.frame $30,0,$26,0
$LFB84:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	beq $16,$L329
	lda $0,1($31)
	br $31,$L330
$L331:
	sra $16,1,$16
	addl $0,1,$0
$L330:
	blbc $16,$L331
$L329:
	ret $31,($26),1
	.cfi_endproc
$LFE84:
	.end libiberty_ffs
	.align 2
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
	lds $f10,$LC1($1)		!gprellow
	cmptlt $f16,$f10,$f10
	lda $0,1($31)
	fbne $f10,$L334
	ldah $1,$LC2($29)		!gprelhigh
	lds $f10,$LC2($1)		!gprellow
	cmptlt $f10,$f16,$f10
	fbne $f10,$L335
	bis $31,$31,$0
$L335:
	and $0,0xff,$0
	addl $31,$0,$0
$L334:
	ret $31,($26),1
	.cfi_endproc
$LFE85:
	.end gl_isinff
	.align 2
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
	ldt $f11,$LC5($1)		!gprellow
	cmptlt $f16,$f11,$f10
	lda $0,1($31)
	fbne $f10,$L338
	ldah $1,$LC6($29)		!gprelhigh
	ldt $f11,$LC6($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbne $f10,$L339
	bis $31,$31,$0
$L339:
	and $0,0xff,$0
	addl $31,$0,$0
$L338:
	ret $31,($26),1
	.cfi_endproc
$LFE86:
	.end gl_isinfd
	.align 2
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
	ldq $27,_OtsLssX($29)		!literal!52
	jsr $26,($27),0		!lituse_jsr!52
	ldah $29,0($26)		!gpdisp!53
	lda $29,0($29)		!gpdisp!53
	lda $1,1($31)
	bgt $0,$L342
	mov $10,$16
	mov $11,$17
	ldah $1,$LC8($29)		!gprelhigh
	lda $1,$LC8($1)		!gprellow
	ldq $18,0($1)
	ldq $19,8($1)
	ldq $27,_OtsGtrX($29)		!literal!54
	jsr $26,($27),0		!lituse_jsr!54
	ldah $29,0($26)		!gpdisp!55
	lda $29,0($29)		!gpdisp!55
	cmplt $31,$0,$1
$L342:
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
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.prologue 1
	mov $16,$9
	stq $17,16($30)
	ldt $f10,16($30)
	cvtqt $f10,$f16
	ldq $27,_OtsConvertFloatTX($29)		!literal!57
	jsr $26,($27),0		!lituse_jsr!57
	ldah $29,0($26)		!gpdisp!58
	lda $29,0($29)		!gpdisp!58
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
	cpys $f16,$f16,$f0
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L346
	adds $f16,$f16,$f10
	cmpteq $f16,$f10,$f10
	fbne $f10,$L346
	cmplt $17,0,$1
	ldah $2,$LC10($29)		!gprelhigh
	lds $f10,$LC10($2)		!gprellow
	beq $1,$L349
	ldah $1,$LC9($29)		!gprelhigh
	lds $f10,$LC9($1)		!gprellow
	br $31,$L349
$L348:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L346
	muls $f10,$f10,$f10
$L349:
	blbc $17,$L348
	muls $f0,$f10,$f0
	br $31,$L348
$L346:
	ret $31,($26),1
	.cfi_endproc
$LFE89:
	.end ldexpf
	.align 2
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
	cpys $f16,$f16,$f0
	cmptun $f16,$f16,$f10
	fbne $f10,$L352
	addt $f16,$f16,$f11
	cmpteq $f16,$f11,$f10
	fbne $f10,$L352
	cmplt $17,0,$1
	bne $1,$L357
	ldah $1,$LC10($29)		!gprelhigh
	lds $f10,$LC10($1)		!gprellow
	br $31,$L355
$L357:
	ldah $1,$LC9($29)		!gprelhigh
	lds $f10,$LC9($1)		!gprellow
	br $31,$L355
$L354:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L352
	mult $f10,$f10,$f10
$L355:
	blbc $17,$L354
	mult $f0,$f10,$f0
	br $31,$L354
$L352:
	ret $31,($26),1
	.cfi_endproc
$LFE90:
	.end ldexp
	.align 2
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
	stq $16,128($30)
	ldq $15,0($17)
	ldq $14,8($17)
	mov $18,$9
	mov $15,$16
	mov $14,$17
	mov $15,$18
	mov $14,$19
	ldq $27,_OtsEqlX($29)		!literal!62
	jsr $26,($27),0		!lituse_jsr!62
	ldah $29,0($26)		!gpdisp!63
	lda $29,0($29)		!gpdisp!63
	blt $0,$L359
	stq $15,64($30)
	stq $14,72($30)
	ldq $16,64($30)
	ldq $17,72($30)
	stq $15,80($30)
	stq $14,88($30)
	ldq $18,80($30)
	ldq $19,88($30)
	lda $20,2($31)
	ldq $27,_OtsAddX($29)		!literal!64
	jsr $26,($27),0		!lituse_jsr!64
	ldah $29,0($26)		!gpdisp!65
	lda $29,0($29)		!gpdisp!65
	mov $16,$18
	mov $17,$19
	stq $15,160($30)
	stq $14,168($30)
	ldq $16,160($30)
	ldq $17,168($30)
	ldq $27,_OtsEqlX($29)		!literal!66
	jsr $26,($27),0		!lituse_jsr!66
	ldah $29,0($26)		!gpdisp!67
	lda $29,0($29)		!gpdisp!67
	bgt $0,$L359
	cmplt $9,0,$1
	bne $1,$L364
	ldah $1,$LC14($29)		!gprelhigh
	lda $1,$LC14($1)		!gprellow
	ldq $3,0($1)
	stq $3,64($30)
	ldq $1,8($1)
	stq $1,80($30)
	br $31,$L362
$L364:
	ldah $1,$LC13($29)		!gprelhigh
	lda $1,$LC13($1)		!gprellow
	ldq $2,0($1)
	stq $2,64($30)
	ldq $1,8($1)
	stq $1,80($30)
	br $31,$L362
$L361:
	srl $9,63,$1
	addq $1,$9,$1
	sra $1,1,$9
	beq $9,$L359
	ldq $10,64($30)
	ldq $11,80($30)
	mov $10,$16
	mov $11,$17
	mov $10,$18
	mov $11,$19
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!68
	jsr $26,($27),0		!lituse_jsr!68
	ldah $29,0($26)		!gpdisp!69
	lda $29,0($29)		!gpdisp!69
	stq $16,64($30)
	stq $17,80($30)
$L362:
	blbc $9,$L361
	stq $15,96($30)
	stq $14,104($30)
	ldq $16,96($30)
	ldq $17,104($30)
	ldq $1,64($30)
	stq $1,112($30)
	ldq $2,80($30)
	stq $2,120($30)
	ldq $18,112($30)
	ldq $19,120($30)
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!70
	jsr $26,($27),0		!lituse_jsr!70
	ldah $29,0($26)		!gpdisp!71
	lda $29,0($29)		!gpdisp!71
	mov $16,$15
	mov $17,$14
	br $31,$L361
$L359:
	stq $15,144($30)
	stq $14,152($30)
	ldq $1,144($30)
	ldq $2,152($30)
	ldq $3,128($30)
	stq $1,0($3)
	stq $2,8($3)
	mov $3,$0
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
	.globl memxor
	.ent memxor
$memxor..ng:
memxor:
	.frame $30,0,$26,0
$LFB92:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	addq $16,$18,$18
	mov $16,$2
	br $31,$L366
$L367:
	lda $17,1($17)
	ldq_u $4,-1($17)
	extqh $4,$17,$4
	lda $2,1($2)
	ldq_u $3,-1($2)
	extqh $3,$2,$1
	xor $1,$4,$1
	sra $1,56,$1
	lda $4,-1($2)
	mskbl $3,$4,$3
	insbl $1,$4,$1
	bis $1,$3,$1
	stq_u $1,-1($2)
$L366:
	cmpeq $2,$18,$1
	beq $1,$L367
	ret $31,($26),1
	.cfi_endproc
$LFE92:
	.end memxor
	.align 2
	.globl strncat
	.ent strncat
strncat:
	.frame $30,32,$26,0
	.mask 0x4000e00,-32
$LFB93:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!72
	lda $29,0($29)		!gpdisp!72
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
	mov $17,$9
	mov $18,$10
	ldq $27,strlen($29)		!literal!73
	jsr $26,($27),0		!lituse_jsr!73
	ldah $29,0($26)		!gpdisp!74
	lda $29,0($29)		!gpdisp!74
	addq $11,$0,$0
	br $31,$L369
$L371:
	lda $9,1($9)
	lda $0,1($0)
	lda $10,-1($10)
$L369:
	beq $10,$L370
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq_u $2,0($0)
	mskbl $2,$0,$2
	insbl $1,$0,$1
	bis $1,$2,$1
	stq_u $1,0($0)
	lda $2,1($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L371
$L370:
	bne $10,$L372
	ldq_u $1,0($0)
	mskbl $1,$0,$1
	stq_u $1,0($0)
$L372:
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
	.globl strnlen
	.ent strnlen
$strnlen..ng:
strnlen:
	.frame $30,0,$26,0
$LFB94:
	.cfi_startproc
	.prologue 0
	mov $31,$0
$L374:
	cmpeq $0,$17,$1
	bne $1,$L375
	addq $16,$0,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L376
$L375:
	ret $31,($26),1
$L376:
	lda $0,1($0)
	br $31,$L374
	.cfi_endproc
$LFE94:
	.end strnlen
	.align 2
	.globl strpbrk
	.ent strpbrk
$strpbrk..ng:
strpbrk:
	.frame $30,0,$26,0
$LFB95:
	.cfi_startproc
	.prologue 0
$L378:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L384
	mov $17,$2
	lda $4,1($16)
$L381:
	lda $3,1($2)
	ldq_u $1,0($2)
	extqh $1,$3,$1
	sra $1,56,$1
	beq $1,$L385
	lda $2,1($2)
	ldq_u $1,-1($2)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq_u $3,0($16)
	extqh $3,$4,$3
	sra $3,56,$3
	cmpeq $1,$3,$1
	beq $1,$L381
	mov $16,$0
	ret $31,($26),1
$L385:
	lda $16,1($16)
	br $31,$L378
$L384:
	mov $31,$0
	ret $31,($26),1
	.cfi_endproc
$LFE95:
	.end strpbrk
	.align 2
	.globl strrchr
	.ent strrchr
$strrchr..ng:
strrchr:
	.frame $30,0,$26,0
$LFB96:
	.cfi_startproc
	.prologue 0
	mov $31,$0
$L388:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $17,$1,$1
	cmovne $1,$16,$0
	mov $2,$16
	ldq_u $1,-1($2)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L388
	ret $31,($26),1
	.cfi_endproc
$LFE96:
	.end strrchr
	.align 2
	.globl strstr
	.ent strstr
strstr:
	.frame $30,48,$26,0
	.mask 0x4001e00,-48
$LFB97:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!75
	lda $29,0($29)		!gpdisp!75
$strstr..ng:
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
	mov $17,$16
	ldq $27,strlen($29)		!literal!76
	jsr $26,($27),0		!lituse_jsr!76
	ldah $29,0($26)		!gpdisp!77
	lda $29,0($29)		!gpdisp!77
	mov $0,$11
	mov $9,$0
	beq $11,$L392
	lda $1,1($10)
	ldq_u $12,0($10)
	extqh $12,$1,$12
	sra $12,56,$12
$L393:
	mov $12,$17
	mov $9,$16
	ldq $27,strchr($29)		!literal!78
	jsr $26,($27),0		!lituse_jsr!78
	ldah $29,0($26)		!gpdisp!79
	lda $29,0($29)		!gpdisp!79
	mov $0,$9
	beq $0,$L397
	mov $11,$18
	mov $10,$17
	mov $9,$16
	ldq $27,strncmp($29)		!literal!80
	jsr $26,($27),0		!lituse_jsr!80
	ldah $29,0($26)		!gpdisp!81
	lda $29,0($29)		!gpdisp!81
	beq $0,$L396
	lda $9,1($9)
	br $31,$L393
$L397:
	mov $31,$0
$L392:
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	lda $30,48($30)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L396:
	.cfi_restore_state
	mov $9,$0
	br $31,$L392
	.cfi_endproc
$LFE97:
	.end strstr
	.align 2
	.globl copysign
	.ent copysign
$copysign..ng:
copysign:
	.frame $30,0,$26,0
$LFB98:
	.cfi_startproc
	.prologue 0
	cmptlt $f16,$f31,$f10
	fbne $f10,$L411
$L399:
	cmptlt $f31,$f16,$f10
	fbeq $f10,$L409
	cmptlt $f17,$f31,$f10
	fbne $f10,$L401
	cpys $f16,$f16,$f0
	ret $31,($26),1
$L411:
	cmptlt $f31,$f17,$f10
	fbeq $f10,$L399
$L401:
	cpysn $f16,$f16,$f0
	ret $31,($26),1
$L409:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.cfi_endproc
$LFE98:
	.end copysign
	.align 2
	.globl memmem
	.ent memmem
memmem:
	.frame $30,48,$26,0
	.mask 0x4003e00,-48
$LFB99:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!82
	lda $29,0($29)		!gpdisp!82
$memmem..ng:
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
	mov $18,$10
	subq $17,$19,$11
	addq $16,$11,$11
	mov $16,$0
	beq $19,$L413
	cmpult $17,$19,$17
	mov $31,$0
	bne $17,$L413
	mov $16,$9
	lda $12,1($18)
	lda $13,-1($19)
	br $31,$L414
$L415:
	lda $9,1($9)
$L414:
	cmpule $9,$11,$1
	beq $1,$L420
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq_u $2,0($10)
	extqh $2,$12,$2
	sra $2,56,$2
	cmpeq $1,$2,$1
	beq $1,$L415
	mov $13,$18
	mov $12,$17
	lda $16,1($9)
	ldq $27,memcmp($29)		!literal!83
	jsr $26,($27),0		!lituse_jsr!83
	ldah $29,0($26)		!gpdisp!84
	lda $29,0($29)		!gpdisp!84
	bne $0,$L415
	mov $9,$0
	br $31,$L413
$L420:
	mov $31,$0
$L413:
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
$LFE99:
	.end memmem
	.align 2
	.globl mempcpy
	.ent mempcpy
mempcpy:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB100:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!85
	lda $29,0($29)		!gpdisp!85
$mempcpy..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $18,$9
	ldq $27,memcpy($29)		!literal!86
	jsr $26,($27),0		!lituse_jsr!86
	ldah $29,0($26)		!gpdisp!87
	lda $29,0($29)		!gpdisp!87
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
	.globl frexp
	.ent frexp
frexp:
	.frame $30,0,$26,0
$LFB101:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!88
	lda $29,0($29)		!gpdisp!88
$frexp..ng:
	.prologue 1
	cpys $f16,$f16,$f0
	cmptlt $f16,$f31,$f10
	mov $31,$2
	fbne $f10,$L441
$L423:
	ldah $1,$LC16($29)		!gprelhigh
	lds $f11,$LC16($1)		!gprellow
	cmptle $f11,$f0,$f10
	mov $31,$1
	fbeq $f10,$L440
	ldah $3,$LC9($29)		!gprelhigh
	lds $f12,$LC9($3)		!gprellow
	br $31,$L425
$L441:
	cpysn $f16,$f16,$f0
	lda $2,1($31)
	br $31,$L423
$L427:
	addl $1,1,$1
	mult $f12,$f0,$f0
$L425:
	cmptle $f11,$f0,$f10
	fbne $f10,$L427
$L428:
	stl $1,0($17)
	beq $2,$L433
	cpysn $f0,$f0,$f0
$L433:
	ret $31,($26),1
$L440:
	lda $1,1($31)
	cmpteq $f0,$f31,$f10
	fbeq $f10,$L429
	bis $31,$31,$1
$L429:
	and $1,0xff,$3
	lda $1,1($31)
	ldah $4,$LC9($29)		!gprelhigh
	lds $f11,$LC9($4)		!gprellow
	cmptlt $f0,$f11,$f10
	fbne $f10,$L430
	bis $31,$31,$1
$L430:
	and $1,0xff,$1
	and $1,$3,$1
	beq $1,$L428
	mov $31,$1
	ldah $3,$LC9($29)		!gprelhigh
	lds $f11,$LC9($3)		!gprellow
	br $31,$L431
$L432:
	subl $1,1,$1
	addt $f0,$f0,$f0
$L431:
	cmptlt $f0,$f11,$f10
	fbne $f10,$L432
	br $31,$L428
	.cfi_endproc
$LFE101:
	.end frexp
	.align 2
	.globl __muldi3
	.ent __muldi3
$__muldi3..ng:
__muldi3:
	.frame $30,0,$26,0
$LFB102:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	br $31,$L443
$L444:
	and $16,1,$1
	mulq $17,$1,$1
	srl $16,1,$16
	addq $0,$1,$0
	addq $17,$17,$17
$L443:
	bne $16,$L444
	ret $31,($26),1
	.cfi_endproc
$LFE102:
	.end __muldi3
	.align 2
	.globl udivmodsi4
	.ent udivmodsi4
$udivmodsi4..ng:
udivmodsi4:
	.frame $30,0,$26,0
$LFB103:
	.cfi_startproc
	.prologue 0
	lda $1,1($31)
	zapnot $16,15,$4
	br $31,$L446
$L449:
	addl $17,$17,$17
	addl $1,$1,$1
$L446:
	zapnot $17,15,$2
	cmpult $2,$4,$2
	zapnot $1,15,$3
	cmpult $31,$3,$3
	and $2,$3,$2
	beq $2,$L455
	cmplt $17,0,$2
	beq $2,$L449
	mov $31,$4
	br $31,$L448
$L455:
	mov $31,$4
	br $31,$L448
$L451:
	zapnot $1,15,$1
	srl $1,1,$1
	zapnot $17,15,$17
	srl $17,1,$17
$L448:
	beq $1,$L456
	zapnot $16,15,$2
	zapnot $17,15,$3
	cmpult $2,$3,$2
	bne $2,$L451
	subl $16,$17,$16
	bis $4,$1,$4
	br $31,$L451
$L456:
	mov $4,$0
	cmovne $18,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE103:
	.end udivmodsi4
	.align 2
	.globl __clrsbqi2
	.ent __clrsbqi2
__clrsbqi2:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB104:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!89
	lda $29,0($29)		!gpdisp!89
$__clrsbqi2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	sra $16,7,$1
	sll $1,56,$1
	sra $1,56,$1
	xor $1,$16,$16
	lda $0,7($31)
	beq $16,$L458
	sll $16,8,$16
	zapnot $16,14,$16
	ldq $27,__clzdi2($29)		!literal!90
	jsr $26,($27),0		!lituse_jsr!90
	ldah $29,0($26)		!gpdisp!91
	lda $29,0($29)		!gpdisp!91
	subl $0,33,$0
$L458:
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE104:
	.end __clrsbqi2
	.align 2
	.globl __clrsbdi2
	.ent __clrsbdi2
__clrsbdi2:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB105:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!92
	lda $29,0($29)		!gpdisp!92
$__clrsbdi2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	sra $16,63,$1
	xor $1,$16,$16
	lda $0,63($31)
	beq $16,$L461
	ldq $27,__clzdi2($29)		!literal!93
	jsr $26,($27),0		!lituse_jsr!93
	ldah $29,0($26)		!gpdisp!94
	lda $29,0($29)		!gpdisp!94
	subl $0,1,$0
$L461:
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE105:
	.end __clrsbdi2
	.align 2
	.globl __mulsi3
	.ent __mulsi3
$__mulsi3..ng:
__mulsi3:
	.frame $30,0,$26,0
$LFB106:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	br $31,$L464
$L465:
	and $16,1,$1
	subl $31,$1,$1
	and $17,$1,$1
	zapnot $16,15,$16
	srl $16,1,$16
	addl $1,$0,$0
	addl $17,$17,$17
$L464:
	bne $16,$L465
	ret $31,($26),1
	.cfi_endproc
$LFE106:
	.end __mulsi3
	.align 2
	.globl __cmovd
	.ent __cmovd
$__cmovd..ng:
__cmovd:
	.frame $30,0,$26,0
$LFB107:
	.cfi_startproc
	.prologue 0
	zapnot $18,15,$5
	srl $5,3,$5
	bic $18,7,$2
	cmpult $16,$17,$1
	bne $1,$L467
	zapnot $18,15,$1
	addq $17,$1,$1
	cmpult $1,$16,$1
	beq $1,$L468
$L467:
	mov $17,$1
	mov $16,$3
	s8addq $5,$17,$5
	br $31,$L469
$L470:
	ldq $4,0($1)
	stq $4,0($3)
	lda $1,8($1)
	lda $3,8($3)
$L469:
	cmpeq $1,$5,$4
	beq $4,$L470
	zapnot $2,15,$2
	zapnot $18,15,$18
	br $31,$L471
$L472:
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
	lda $2,1($2)
$L471:
	zapnot $2,15,$1
	cmpule $18,$1,$1
	beq $1,$L472
	ret $31,($26),1
$L474:
	zapnot $1,15,$1
	addq $17,$1,$2
	addq $16,$1,$1
	lda $3,1($2)
	ldq_u $2,0($2)
	extqh $2,$3,$2
	sra $2,56,$2
	ldq_u $3,0($1)
	mskbl $3,$1,$3
	insbl $2,$1,$2
	bis $2,$3,$2
	stq_u $2,0($1)
$L468:
	subl $18,1,$1
	addl $31,$1,$18
	zapnot $1,15,$2
	lda $3,-1($31)
	srl $3,32,$3
	cmpeq $2,$3,$2
	beq $2,$L474
	ret $31,($26),1
	.cfi_endproc
$LFE107:
	.end __cmovd
	.align 2
	.globl __cmovh
	.ent __cmovh
$__cmovh..ng:
__cmovh:
	.frame $30,0,$26,0
$LFB108:
	.cfi_startproc
	.prologue 0
	zapnot $18,15,$5
	srl $5,1,$5
	cmpult $16,$17,$1
	bne $1,$L477
	zapnot $18,15,$1
	addq $17,$1,$1
	cmpult $1,$16,$1
	beq $1,$L478
$L477:
	mov $17,$1
	mov $16,$2
	addq $5,$5,$5
	addq $5,$17,$5
	br $31,$L479
$L480:
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
$L479:
	cmpeq $1,$5,$3
	beq $3,$L480
	blbc $18,$L476
	subl $18,1,$18
	zapnot $18,15,$18
	addq $17,$18,$17
	addq $16,$18,$16
	lda $2,1($17)
	ldq_u $1,0($17)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq_u $2,0($16)
	mskbl $2,$16,$2
	insbl $1,$16,$1
	bis $1,$2,$1
	stq_u $1,0($16)
	ret $31,($26),1
$L482:
	zapnot $1,15,$1
	addq $17,$1,$2
	addq $16,$1,$1
	lda $3,1($2)
	ldq_u $2,0($2)
	extqh $2,$3,$2
	sra $2,56,$2
	ldq_u $3,0($1)
	mskbl $3,$1,$3
	insbl $2,$1,$2
	bis $2,$3,$2
	stq_u $2,0($1)
$L478:
	subl $18,1,$1
	addl $31,$1,$18
	zapnot $1,15,$2
	lda $3,-1($31)
	srl $3,32,$3
	cmpeq $2,$3,$2
	beq $2,$L482
$L476:
	ret $31,($26),1
	.cfi_endproc
$LFE108:
	.end __cmovh
	.align 2
	.globl __cmovw
	.ent __cmovw
$__cmovw..ng:
__cmovw:
	.frame $30,0,$26,0
$LFB109:
	.cfi_startproc
	.prologue 0
	zapnot $18,15,$5
	srl $5,2,$5
	bic $18,3,$2
	cmpult $16,$17,$1
	bne $1,$L485
	zapnot $18,15,$1
	addq $17,$1,$1
	cmpult $1,$16,$1
	beq $1,$L486
$L485:
	mov $17,$1
	mov $16,$3
	s4addq $5,$17,$5
	br $31,$L487
$L488:
	ldl $4,0($1)
	stl $4,0($3)
	lda $1,4($1)
	lda $3,4($3)
$L487:
	cmpeq $1,$5,$4
	beq $4,$L488
	zapnot $2,15,$2
	zapnot $18,15,$18
	br $31,$L489
$L490:
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
	lda $2,1($2)
$L489:
	zapnot $2,15,$1
	cmpule $18,$1,$1
	beq $1,$L490
	ret $31,($26),1
$L492:
	zapnot $1,15,$1
	addq $17,$1,$2
	addq $16,$1,$1
	lda $3,1($2)
	ldq_u $2,0($2)
	extqh $2,$3,$2
	sra $2,56,$2
	ldq_u $3,0($1)
	mskbl $3,$1,$3
	insbl $2,$1,$2
	bis $2,$3,$2
	stq_u $2,0($1)
$L486:
	subl $18,1,$1
	addl $31,$1,$18
	zapnot $1,15,$2
	lda $3,-1($31)
	srl $3,32,$3
	cmpeq $2,$3,$2
	beq $2,$L492
	ret $31,($26),1
	.cfi_endproc
$LFE109:
	.end __cmovw
	.align 2
	.globl __modi
	.ent __modi
__modi:
	.frame $30,0,$26,0
$LFB110:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!96
	lda $29,0($29)		!gpdisp!96
$__modi..ng:
	.prologue 1
	mov $17,$25
	mov $16,$24
	ldq $27,__reml($29)		!literal!95
	jsr $23,($27),__reml		!lituse_jsrdirect!95
	mov $27,$0
	ret $31,($26),1
	.cfi_endproc
$LFE110:
	.end __modi
	.align 2
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
	blt $16,$L502
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqt $f10,$f0
$L503:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L502:
	.cfi_restore_state
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,0($30)
	ldt $f11,0($30)
	cvtqt $f11,$f10
	addt $f10,$f10,$f0
	br $31,$L503
	.cfi_endproc
$LFE113:
	.end __ulltod
	.align 2
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
	blt $16,$L505
	stq $16,0($30)
	ldt $f10,0($30)
	cvtqs $f10,$f0
$L506:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L505:
	.cfi_restore_state
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,0($30)
	ldt $f11,0($30)
	cvtqs $f11,$f10
	adds $f10,$f10,$f0
	br $31,$L506
	.cfi_endproc
$LFE114:
	.end __ulltof
	.align 2
	.globl __umodi
	.ent __umodi
__umodi:
	.frame $30,0,$26,0
$LFB115:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!98
	lda $29,0($29)		!gpdisp!98
$__umodi..ng:
	.prologue 1
	mov $17,$25
	mov $16,$24
	ldq $27,__remlu($29)		!literal!97
	jsr $23,($27),__remlu		!lituse_jsrdirect!97
	mov $27,$0
	ret $31,($26),1
	.cfi_endproc
$LFE115:
	.end __umodi
	.align 2
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
$L509:
	cmpeq $0,16,$1
	bne $1,$L510
	subl $2,$0,$1
	sra $16,$1,$1
	blbs $1,$L510
	addl $0,1,$0
	br $31,$L509
$L510:
	ret $31,($26),1
	.cfi_endproc
$LFE116:
	.end __clzhi2
	.align 2
	.globl __ctzhi2
	.ent __ctzhi2
$__ctzhi2..ng:
__ctzhi2:
	.frame $30,0,$26,0
$LFB117:
	.cfi_startproc
	.prologue 0
	mov $31,$0
$L513:
	cmpeq $0,16,$1
	bne $1,$L514
	sra $16,$0,$1
	blbs $1,$L514
	addl $0,1,$0
	br $31,$L513
$L514:
	ret $31,($26),1
	.cfi_endproc
$LFE117:
	.end __ctzhi2
	.align 2
	.globl __fixunssfsi
	.ent __fixunssfsi
__fixunssfsi:
	.frame $30,16,$26,0
$LFB118:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!99
	lda $29,0($29)		!gpdisp!99
$__fixunssfsi..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	ldah $1,$LC17($29)		!gprelhigh
	lds $f10,$LC17($1)		!gprellow
	cmptle $f10,$f16,$f10
	fbne $f10,$L522
	cvttq/c $f16,$f16
	stt $f16,0($30)
	ldq $0,0($30)
$L519:
	lda $30,16($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
$L522:
	.cfi_restore_state
	lds $f11,$LC17($1)		!gprellow
	subs $f16,$f11,$f10
	cvttq/c $f10,$f10
	stt $f10,0($30)
	ldq $0,0($30)
	ldah $0,1($0)
	lda $0,-32768($0)
	br $31,$L519
	.cfi_endproc
$LFE118:
	.end __fixunssfsi
	.align 2
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
	br $31,$L524
$L525:
	sra $16,$1,$2
	and $2,1,$2
	addl $1,1,$1
	addl $2,$0,$0
$L524:
	cmpeq $1,16,$2
	beq $2,$L525
	and $0,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE119:
	.end __parityhi2
	.align 2
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
	br $31,$L527
$L528:
	sra $16,$1,$2
	and $2,1,$2
	addl $1,1,$1
	addl $2,$0,$0
$L527:
	cmpeq $1,16,$2
	beq $2,$L528
	ret $31,($26),1
	.cfi_endproc
$LFE120:
	.end __popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.ent __mulsi3_iq2000
$__mulsi3_iq2000..ng:
__mulsi3_iq2000:
	.frame $30,0,$26,0
$LFB121:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	br $31,$L530
$L531:
	and $16,1,$1
	subl $31,$1,$1
	and $17,$1,$1
	zapnot $16,15,$16
	srl $16,1,$16
	addl $1,$0,$0
	addl $17,$17,$17
$L530:
	bne $16,$L531
	ret $31,($26),1
	.cfi_endproc
$LFE121:
	.end __mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.ent __mulsi3_lm32
$__mulsi3_lm32..ng:
__mulsi3_lm32:
	.frame $30,0,$26,0
$LFB122:
	.cfi_startproc
	.prologue 0
	mov $31,$0
	bne $16,$L534
	ret $31,($26),1
$L535:
	and $17,1,$1
	subl $31,$1,$1
	and $16,$1,$1
	zapnot $17,15,$17
	srl $17,1,$17
	addl $1,$0,$0
	addl $16,$16,$16
$L534:
	bne $17,$L535
$L533:
	ret $31,($26),1
	.cfi_endproc
$LFE122:
	.end __mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.ent __udivmodsi4
$__udivmodsi4..ng:
__udivmodsi4:
	.frame $30,0,$26,0
$LFB123:
	.cfi_startproc
	.prologue 0
	lda $1,1($31)
	zapnot $16,15,$4
	br $31,$L538
$L541:
	addl $17,$17,$17
	addl $1,$1,$1
$L538:
	zapnot $17,15,$2
	cmpult $2,$4,$2
	zapnot $1,15,$3
	cmpult $31,$3,$3
	and $2,$3,$2
	beq $2,$L547
	cmplt $17,0,$2
	beq $2,$L541
	mov $31,$4
	br $31,$L540
$L547:
	mov $31,$4
	br $31,$L540
$L543:
	zapnot $1,15,$1
	srl $1,1,$1
	zapnot $17,15,$17
	srl $17,1,$17
$L540:
	beq $1,$L548
	zapnot $16,15,$2
	zapnot $17,15,$3
	cmpult $2,$3,$2
	bne $2,$L543
	subl $16,$17,$16
	bis $4,$1,$4
	br $31,$L543
$L548:
	mov $4,$0
	cmovne $18,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE123:
	.end __udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.ent __mspabi_cmpf
$__mspabi_cmpf..ng:
__mspabi_cmpf:
	.frame $30,0,$26,0
$LFB124:
	.cfi_startproc
	.prologue 0
	cmptlt $f16,$f17,$f10
	lda $0,-1($31)
	fbne $f10,$L550
	lda $0,1($31)
	cmptlt $f17,$f16,$f17
	fbne $f17,$L551
	bis $31,$31,$0
$L551:
	and $0,0xff,$0
	addl $31,$0,$0
$L550:
	ret $31,($26),1
	.cfi_endproc
$LFE124:
	.end __mspabi_cmpf
	.align 2
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
	fbne $f10,$L554
	lda $0,1($31)
	cmptlt $f17,$f16,$f10
	fbne $f10,$L555
	bis $31,$31,$0
$L555:
	and $0,0xff,$0
	addl $31,$0,$0
$L554:
	ret $31,($26),1
	.cfi_endproc
$LFE125:
	.end __mspabi_cmpd
	.align 2
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
	bne $1,$L566
$L560:
	mov $31,$4
	mov $31,$1
	br $31,$L561
$L566:
	subl $31,$17,$17
	lda $5,1($31)
	br $31,$L560
$L562:
	and $17,1,$2
	subl $31,$2,$2
	and $16,$2,$2
	sra $17,1,$17
	lda $1,1($1)
	sll $1,56,$1
	sra $1,56,$1
	addl $4,$2,$4
	addl $16,$16,$16
$L561:
	cmpult $31,$17,$3
	and $1,0xff,$2
	cmpule $2,31,$2
	and $2,$3,$2
	bne $2,$L562
	subl $31,$4,$0
	cmoveq $5,$4,$0
	ret $31,($26),1
	.cfi_endproc
$LFE128:
	.end __mulhi3
	.align 2
	.globl __divsi3
	.ent __divsi3
__divsi3:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB129:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!100
	lda $29,0($29)		!gpdisp!100
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
	bne $1,$L572
$L568:
	cmplt $17,0,$1
	bne $1,$L573
$L569:
	mov $31,$18
	addl $31,$17,$17
	addl $31,$16,$16
	ldq $27,__udivmodsi4($29)		!literal!101
	jsr $26,($27),0		!lituse_jsr!101
	ldah $29,0($26)		!gpdisp!102
	lda $29,0($29)		!gpdisp!102
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
$L572:
	.cfi_restore_state
	subq $31,$16,$16
	lda $9,1($31)
	br $31,$L568
$L573:
	subq $31,$17,$17
	xor $9,1,$9
	br $31,$L569
	.cfi_endproc
$LFE129:
	.end __divsi3
	.align 2
	.globl __modsi3
	.ent __modsi3
__modsi3:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB130:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!103
	lda $29,0($29)		!gpdisp!103
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
	bne $1,$L578
$L575:
	subq $31,$17,$1
	cmovge $17,$17,$1
	lda $18,1($31)
	addl $31,$1,$17
	addl $31,$16,$16
	ldq $27,__udivmodsi4($29)		!literal!104
	jsr $26,($27),0		!lituse_jsr!104
	ldah $29,0($26)		!gpdisp!105
	lda $29,0($29)		!gpdisp!105
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
$L578:
	.cfi_restore_state
	subq $31,$16,$16
	lda $9,1($31)
	br $31,$L575
	.cfi_endproc
$LFE130:
	.end __modsi3
	.align 2
	.globl __udivmodhi4
	.ent __udivmodhi4
$__udivmodhi4..ng:
__udivmodhi4:
	.frame $30,0,$26,0
$LFB131:
	.cfi_startproc
	.prologue 0
	lda $1,1($31)
	br $31,$L580
$L583:
	addl $17,$17,$17
	zapnot $17,3,$17
	addl $1,$1,$1
	zapnot $1,3,$1
$L580:
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L589
	srl $17,15,$2
	beq $2,$L583
	mov $31,$3
	br $31,$L582
$L589:
	mov $31,$3
	br $31,$L582
$L585:
	srl $1,1,$1
	srl $17,1,$17
$L582:
	beq $1,$L590
	cmpult $16,$17,$2
	bne $2,$L585
	subl $16,$17,$16
	zapnot $16,3,$16
	bis $3,$1,$3
	br $31,$L585
$L590:
	mov $3,$0
	cmovne $18,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE131:
	.end __udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.ent __udivmodsi4_libgcc
$__udivmodsi4_libgcc..ng:
__udivmodsi4_libgcc:
	.frame $30,0,$26,0
$LFB132:
	.cfi_startproc
	.prologue 0
	lda $1,1($31)
	br $31,$L592
$L595:
	addq $17,$17,$17
	addq $1,$1,$1
$L592:
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L601
	srl $17,31,$2
	blbc $2,$L595
	mov $31,$3
	br $31,$L594
$L601:
	mov $31,$3
	br $31,$L594
$L597:
	srl $1,1,$1
	srl $17,1,$17
$L594:
	beq $1,$L602
	cmpult $16,$17,$2
	bne $2,$L597
	subq $16,$17,$16
	bis $3,$1,$3
	br $31,$L597
$L602:
	mov $3,$0
	cmovne $18,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE132:
	.end __udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.ent __ashldi3
$__ashldi3..ng:
__ashldi3:
	.frame $30,0,$26,0
$LFB133:
	.cfi_startproc
	.prologue 0
	and $17,32,$1
	beq $1,$L604
	addl $31,$16,$16
	subl $17,32,$17
	sll $16,$17,$16
	sll $16,32,$0
	ret $31,($26),1
$L604:
	mov $16,$0
	beq $17,$L606
	addl $31,$16,$1
	sll $1,$17,$0
	sra $16,32,$16
	sll $16,$17,$16
	lda $2,32($31)
	subl $2,$17,$2
	zapnot $1,15,$1
	srl $1,$2,$1
	bis $1,$16,$1
	sll $1,32,$1
	zapnot $0,15,$0
	bis $0,$1,$0
$L606:
	ret $31,($26),1
	.cfi_endproc
$LFE133:
	.end __ashldi3
	.align 2
	.globl __ashlti3
	.ent __ashlti3
$__ashlti3..ng:
__ashlti3:
	.frame $30,0,$26,0
$LFB134:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	and $19,64,$2
	beq $2,$L609
	mov $31,$2
	sll $17,$19,$1
$L610:
	stq $2,0($0)
	stq $1,8($0)
	ret $31,($26),1
$L609:
	beq $19,$L613
	sll $17,$19,$2
	sll $18,$19,$3
	subq $31,$19,$19
	srl $17,$19,$1
	bis $1,$3,$1
	br $31,$L610
$L613:
	stq $17,0($16)
	stq $18,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE134:
	.end __ashlti3
	.align 2
	.globl __ashrdi3
	.ent __ashrdi3
$__ashrdi3..ng:
__ashrdi3:
	.frame $30,0,$26,0
$LFB135:
	.cfi_startproc
	.prologue 0
	and $17,32,$1
	beq $1,$L615
	sra $16,32,$0
	sra $16,63,$16
	subl $17,32,$17
	sra $0,$17,$0
	zapnot $0,15,$0
	sll $16,32,$16
	bis $16,$0,$0
	ret $31,($26),1
$L615:
	mov $16,$0
	beq $17,$L617
	sra $16,32,$1
	sra $1,$17,$0
	lda $2,32($31)
	subl $2,$17,$2
	sll $1,$2,$1
	zapnot $16,15,$16
	srl $16,$17,$16
	bis $16,$1,$16
	zapnot $16,15,$16
	sll $0,32,$0
	bis $0,$16,$0
$L617:
	ret $31,($26),1
	.cfi_endproc
$LFE135:
	.end __ashrdi3
	.align 2
	.globl __ashrti3
	.ent __ashrti3
$__ashrti3..ng:
__ashrti3:
	.frame $30,0,$26,0
$LFB136:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	and $19,64,$2
	beq $2,$L620
	sra $18,63,$2
	sra $18,$19,$1
$L621:
	stq $1,0($0)
	stq $2,8($0)
	ret $31,($26),1
$L620:
	beq $19,$L624
	sra $18,$19,$2
	subq $31,$19,$4
	sll $18,$4,$1
	srl $17,$19,$3
	bis $1,$3,$1
	br $31,$L621
$L624:
	stq $17,0($16)
	stq $18,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE136:
	.end __ashrti3
	.align 2
	.globl __bswapdi2
	.ent __bswapdi2
$__bswapdi2..ng:
__bswapdi2:
	.frame $30,0,$26,0
$LFB137:
	.cfi_startproc
	.prologue 0
	srl $16,56,$7
	srl $16,40,$6
	zapnot $6,2,$6
	srl $16,24,$5
	zapnot $5,4,$5
	srl $16,8,$4
	zapnot $4,8,$4
	sll $16,8,$3
	zapnot $3,16,$3
	sll $16,24,$2
	zapnot $2,32,$2
	sll $16,40,$1
	zapnot $1,64,$1
	sll $16,56,$0
	bis $0,$7,$0
	bis $0,$6,$0
	bis $0,$5,$0
	bis $0,$4,$0
	bis $0,$3,$0
	bis $0,$2,$0
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE137:
	.end __bswapdi2
	.align 2
	.globl __bswapsi2
	.ent __bswapsi2
$__bswapsi2..ng:
__bswapsi2:
	.frame $30,0,$26,0
$LFB138:
	.cfi_startproc
	.prologue 0
	extbl $16,3,$3
	srl $16,8,$2
	zapnot $2,2,$2
	sll $16,8,$1
	zapnot $1,4,$1
	sll $16,24,$0
	addl $31,$0,$0
	bis $0,$3,$0
	bis $0,$2,$0
	bis $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE138:
	.end __bswapsi2
	.align 2
	.globl __clzsi2
	.ent __clzsi2
$__clzsi2..ng:
__clzsi2:
	.frame $30,0,$26,0
$LFB139:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$1
	ldah $2,1($31)
	lda $2,-1($2)
	cmpule $1,$2,$2
	sll $2,4,$3
	lda $2,16($31)
	subl $2,$3,$2
	srl $1,$2,$1
	zapnot $1,2,$2
	cmpeq $2,0,$2
	s8addl $2,0,$2
	lda $4,8($31)
	subl $4,$2,$4
	zapnot $1,15,$1
	srl $1,$4,$1
	addl $2,$3,$0
	and $1,240,$2
	cmpeq $2,0,$2
	s4addl $2,0,$2
	lda $3,4($31)
	subl $3,$2,$3
	zapnot $1,15,$1
	srl $1,$3,$1
	addl $0,$2,$0
	and $1,12,$2
	cmpeq $2,0,$2
	addl $2,$2,$2
	lda $3,2($31)
	subl $3,$2,$4
	zapnot $1,15,$1
	srl $1,$4,$1
	addl $0,$2,$0
	and $1,2,$2
	cmpeq $2,0,$2
	subl $3,$1,$3
	mull $2,$3,$1
	addl $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE139:
	.end __clzsi2
	.align 2
	.globl __clzti2
	.ent __clzti2
__clzti2:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB140:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!106
	lda $29,0($29)		!gpdisp!106
$__clzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	cmpeq $17,0,$1
	subl $31,$1,$9
	subq $31,$1,$2
	lda $1,-1($1)
	and $1,$17,$1
	and $2,$16,$16
	bis $1,$16,$16
	ldq $27,__clzdi2($29)		!literal!107
	jsr $26,($27),0		!lituse_jsr!107
	ldah $29,0($26)		!gpdisp!108
	lda $29,0($29)		!gpdisp!108
	addl $31,$9,$9
	and $9,64,$9
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
	cmplt $1,$2,$1
	mov $31,$0
	bne $1,$L630
	sra $16,32,$1
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L630
	zapnot $16,15,$1
	zapnot $17,15,$2
	cmpult $1,$2,$1
	mov $31,$0
	bne $1,$L630
	zapnot $16,15,$16
	cmpult $2,$16,$0
	lda $0,1($0)
$L630:
	ret $31,($26),1
	.cfi_endproc
$LFE141:
	.end __cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.ent __aeabi_lcmp
__aeabi_lcmp:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB142:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!109
	lda $29,0($29)		!gpdisp!109
$__aeabi_lcmp..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	ldq $27,__cmpdi2($29)		!literal!110
	jsr $26,($27),0		!lituse_jsr!110
	ldah $29,0($26)		!gpdisp!111
	lda $29,0($29)		!gpdisp!111
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
	bne $1,$L637
	cmple $17,$19,$17
	lda $0,2($31)
	beq $17,$L637
	cmpult $16,$18,$1
	mov $31,$0
	bne $1,$L637
	cmpult $18,$16,$0
	lda $0,1($0)
$L637:
	ret $31,($26),1
	.cfi_endproc
$LFE143:
	.end __cmpti2
	.align 2
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
	s8addl $2,$3,$2
	and $1,15,$0
	cmpeq $0,0,$0
	s4addq $0,0,$3
	zapnot $1,15,$1
	srl $1,$3,$1
	s4addl $0,$2,$0
	and $1,3,$2
	cmpeq $2,0,$2
	addl $2,$2,$3
	addq $2,$2,$2
	zapnot $1,15,$1
	srl $1,$2,$1
	and $1,3,$1
	addl $0,$3,$0
	ornot $31,$1,$2
	and $2,1,$3
	srl $1,1,$1
	lda $2,2($31)
	subl $2,$1,$1
	subl $31,$3,$2
	and $1,$2,$1
	addl $0,$1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE144:
	.end __ctzsi2
	.align 2
	.globl __ctzti2
	.ent __ctzti2
__ctzti2:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB145:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!112
	lda $29,0($29)		!gpdisp!112
$__ctzti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	cmpeq $16,0,$1
	subl $31,$1,$9
	subq $31,$1,$1
	and $1,$17,$17
	bic $16,$1,$16
	bis $16,$17,$16
	ldq $27,__ctzdi2($29)		!literal!113
	jsr $26,($27),0		!lituse_jsr!113
	ldah $29,0($26)		!gpdisp!114
	lda $29,0($29)		!gpdisp!114
	addl $31,$9,$9
	and $9,64,$9
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
	.globl __ffsti2
	.ent __ffsti2
__ffsti2:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB146:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!115
	lda $29,0($29)		!gpdisp!115
$__ffsti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	bne $16,$L645
	mov $31,$0
	beq $17,$L646
	mov $17,$16
	ldq $27,__ctzdi2($29)		!literal!116
	jsr $26,($27),0		!lituse_jsr!116
	ldah $29,0($26)		!gpdisp!117
	lda $29,0($29)		!gpdisp!117
	addl $0,65,$0
	br $31,$L646
$L645:
	ldq $27,__ctzdi2($29)		!literal!118
	jsr $26,($27),0		!lituse_jsr!118
	ldah $29,0($26)		!gpdisp!119
	lda $29,0($29)		!gpdisp!119
	addl $0,1,$0
$L646:
	ldq $26,0($30)
	lda $30,16($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE146:
	.end __ffsti2
	.align 2
	.globl __lshrdi3
	.ent __lshrdi3
$__lshrdi3..ng:
__lshrdi3:
	.frame $30,0,$26,0
$LFB147:
	.cfi_startproc
	.prologue 0
	and $17,32,$1
	beq $1,$L649
	subl $17,32,$17
	srl $16,32,$16
	srl $16,$17,$16
	zapnot $16,15,$0
	ret $31,($26),1
$L649:
	mov $16,$0
	beq $17,$L651
	srl $16,32,$0
	srl $0,$17,$0
	extll $16,4,$1
	lda $2,32($31)
	subl $2,$17,$2
	sll $1,$2,$1
	zapnot $16,15,$16
	srl $16,$17,$16
	bis $16,$1,$16
	zapnot $16,15,$16
	sll $0,32,$0
	bis $0,$16,$0
$L651:
	ret $31,($26),1
	.cfi_endproc
$LFE147:
	.end __lshrdi3
	.align 2
	.globl __lshrti3
	.ent __lshrti3
$__lshrti3..ng:
__lshrti3:
	.frame $30,0,$26,0
$LFB148:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	and $19,64,$2
	beq $2,$L654
	mov $31,$2
	srl $18,$19,$1
$L655:
	stq $1,0($0)
	stq $2,8($0)
	ret $31,($26),1
$L654:
	beq $19,$L658
	srl $18,$19,$2
	subq $31,$19,$4
	sll $18,$4,$1
	srl $17,$19,$3
	bis $1,$3,$1
	br $31,$L655
$L658:
	stq $17,0($16)
	stq $18,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE148:
	.end __lshrti3
	.align 2
	.globl __muldsi3
	.ent __muldsi3
$__muldsi3..ng:
__muldsi3:
	.frame $30,0,$26,0
$LFB149:
	.cfi_startproc
	.prologue 0
	zapnot $16,3,$1
	zapnot $17,3,$2
	mull $1,$2,$3
	zapnot $3,15,$4
	srl $4,16,$4
	extwl $16,2,$16
	mull $16,$2,$2
	addl $2,$4,$2
	zapnot $3,3,$4
	sll $2,16,$3
	addl $3,$4,$3
	zapnot $2,15,$2
	zapnot $3,15,$3
	srl $3,16,$4
	zapnot $3,3,$3
	extwl $17,2,$17
	mull $1,$17,$1
	addl $1,$4,$1
	sll $1,16,$0
	addl $0,$3,$0
	srl $2,16,$2
	zapnot $1,15,$1
	srl $1,16,$1
	addq $1,$2,$1
	sll $1,32,$1
	zapnot $0,15,$0
	bis $0,$1,$0
	sra $0,32,$1
	mull $16,$17,$16
	addl $16,$1,$16
	zapnot $16,15,$16
	sll $16,32,$16
	zapnot $0,15,$0
	bis $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE149:
	.end __muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.ent __muldi3_compiler_rt
__muldi3_compiler_rt:
	.frame $30,48,$26,0
	.mask 0x4001e00,-48
$LFB150:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!120
	lda $29,0($29)		!gpdisp!120
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
	ldq $27,__muldsi3($29)		!literal!121
	jsr $26,($27),0		!lituse_jsr!121
	ldah $29,0($26)		!gpdisp!122
	lda $29,0($29)		!gpdisp!122
	sra $0,32,$2
	sra $9,32,$1
	mull $1,$12,$1
	sra $10,32,$10
	mull $10,$11,$10
	addl $1,$10,$1
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
	.globl __mulddi3
	.ent __mulddi3
$__mulddi3..ng:
__mulddi3:
	.frame $30,0,$26,0
$LFB151:
	.cfi_startproc
	.prologue 0
	mov $16,$0
	zapnot $17,15,$3
	zapnot $18,15,$4
	mulq $3,$4,$2
	srl $2,32,$1
	srl $17,32,$17
	mulq $17,$4,$4
	addq $1,$4,$1
	srl $1,32,$4
	zapnot $1,15,$1
	zapnot $2,15,$2
	srl $18,32,$18
	mulq $3,$18,$3
	addq $1,$3,$1
	sll $1,32,$3
	addq $3,$2,$2
	srl $1,32,$1
	addq $1,$4,$1
	mulq $17,$18,$17
	addq $17,$1,$17
	stq $2,0($16)
	stq $17,8($16)
	ret $31,($26),1
	.cfi_endproc
$LFE151:
	.end __mulddi3
	.align 2
	.globl __multi3
	.ent __multi3
__multi3:
	.frame $30,64,$26,0
	.mask 0x4003e00,-64
$LFB152:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!123
	lda $29,0($29)		!gpdisp!123
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
	mov $16,$11
	mov $18,$9
	mov $19,$18
	mov $17,$12
	mov $19,$13
	mov $20,$10
	lda $16,48($30)
	ldq $27,__mulddi3($29)		!literal!124
	jsr $26,($27),__mulddi3		!lituse_jsr!124
	ldah $29,0($26)		!gpdisp!125
	lda $29,0($29)		!gpdisp!125
	ldq $1,56($30)
	mulq $9,$13,$9
	mulq $10,$12,$10
	addq $9,$10,$9
	addq $9,$1,$9
	ldq $1,48($30)
	stq $1,0($11)
	stq $9,8($11)
	mov $11,$0
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
	.globl __paritydi2
	.ent __paritydi2
$__paritydi2..ng:
__paritydi2:
	.frame $30,0,$26,0
$LFB155:
	.cfi_startproc
	.prologue 0
	sra $16,32,$1
	addl $31,$16,$16
	xor $1,$16,$1
	extwl $1,2,$2
	xor $2,$1,$1
	zapnot $1,15,$2
	srl $2,8,$2
	xor $2,$1,$1
	zapnot $1,15,$2
	srl $2,4,$2
	xor $2,$1,$1
	and $1,15,$1
	lda $0,27030($31)
	sra $0,$1,$0
	and $0,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE155:
	.end __paritydi2
	.align 2
	.globl __parityti2
	.ent __parityti2
$__parityti2..ng:
__parityti2:
	.frame $30,0,$26,0
$LFB156:
	.cfi_startproc
	.prologue 0
	xor $17,$16,$17
	sra $17,32,$1
	addl $31,$17,$17
	xor $1,$17,$1
	extwl $1,2,$2
	xor $2,$1,$1
	zapnot $1,15,$2
	srl $2,8,$2
	xor $2,$1,$1
	zapnot $1,15,$2
	srl $2,4,$2
	xor $2,$1,$1
	and $1,15,$1
	lda $0,27030($31)
	sra $0,$1,$0
	and $0,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE156:
	.end __parityti2
	.align 2
	.globl __paritysi2
	.ent __paritysi2
$__paritysi2..ng:
__paritysi2:
	.frame $30,0,$26,0
$LFB157:
	.cfi_startproc
	.prologue 0
	extwl $16,2,$1
	xor $1,$16,$16
	zapnot $16,15,$1
	srl $1,8,$1
	xor $1,$16,$16
	zapnot $16,15,$1
	srl $1,4,$1
	xor $1,$16,$16
	and $16,15,$16
	lda $0,27030($31)
	sra $0,$16,$0
	and $0,1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE157:
	.end __paritysi2
	.align 2
	.globl __popcountdi2
	.ent __popcountdi2
__popcountdi2:
	.frame $30,0,$26,0
$LFB158:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!126
	lda $29,0($29)		!gpdisp!126
$__popcountdi2..ng:
	.prologue 1
	srl $16,1,$1
	ldah $2,$LC19($29)		!gprelhigh
	ldq $2,$LC19($2)		!gprellow
	and $1,$2,$1
	subq $16,$1,$16
	srl $16,2,$1
	ldah $2,$LC20($29)		!gprelhigh
	ldq $2,$LC20($2)		!gprellow
	and $1,$2,$1
	and $16,$2,$16
	addq $1,$16,$16
	srl $16,4,$1
	addq $1,$16,$16
	ldah $1,$LC21($29)		!gprelhigh
	ldq $1,$LC21($1)		!gprellow
	and $16,$1,$16
	sra $16,32,$1
	addl $1,$16,$1
	zapnot $1,15,$0
	srl $0,16,$0
	addl $0,$1,$0
	zapnot $0,15,$1
	srl $1,8,$1
	addl $0,$1,$0
	and $0,127,$0
	ret $31,($26),1
	.cfi_endproc
$LFE158:
	.end __popcountdi2
	.align 2
	.globl __popcountsi2
	.ent __popcountsi2
$__popcountsi2..ng:
__popcountsi2:
	.frame $30,0,$26,0
$LFB159:
	.cfi_startproc
	.prologue 0
	ldah $2,21845($31)
	lda $2,21845($2)
	srl $16,1,$1
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
	srl $1,16,$0
	addq $0,$1,$2
	srl $2,8,$2
	addq $0,$2,$0
	addq $0,$1,$0
	and $0,63,$0
	ret $31,($26),1
	.cfi_endproc
$LFE159:
	.end __popcountsi2
	.align 2
	.globl __popcountti2
	.ent __popcountti2
__popcountti2:
	.frame $30,0,$26,0
$LFB160:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!127
	lda $29,0($29)		!gpdisp!127
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
	subq $17,$2,$17
	subq $17,$16,$17
	sll $17,62,$3
	srl $1,2,$2
	bis $3,$2,$2
	srl $17,2,$3
	ldah $4,$LC20($29)		!gprelhigh
	ldq $4,$LC20($4)		!gprellow
	and $2,$4,$2
	and $3,$4,$3
	and $1,$4,$1
	and $17,$4,$17
	addq $2,$1,$1
	cmpult $1,$2,$2
	addq $3,$17,$3
	addq $2,$3,$2
	sll $2,60,$3
	srl $1,4,$17
	bis $3,$17,$17
	srl $2,4,$3
	addq $17,$1,$1
	cmpult $1,$17,$17
	addq $3,$2,$2
	addq $17,$2,$17
	ldah $2,$LC21($29)		!gprelhigh
	ldq $2,$LC21($2)		!gprellow
	and $1,$2,$16
	and $17,$2,$17
	addq $17,$16,$17
	sra $17,32,$1
	addl $1,$17,$1
	zapnot $1,15,$0
	srl $0,16,$0
	addl $0,$1,$0
	zapnot $0,15,$1
	srl $1,8,$1
	addl $0,$1,$0
	and $0,0xff,$0
	ret $31,($26),1
	.cfi_endproc
$LFE160:
	.end __popcountti2
	.align 2
	.globl __powidf2
	.ent __powidf2
__powidf2:
	.frame $30,0,$26,0
$LFB161:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!128
	lda $29,0($29)		!gpdisp!128
$__powidf2..ng:
	.prologue 1
	srl $17,63,$2
	ldah $1,$LC16($29)		!gprelhigh
	lds $f10,$LC16($1)		!gprellow
	br $31,$L674
$L672:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L673
	mult $f16,$f16,$f16
$L674:
	blbc $17,$L672
	mult $f10,$f16,$f10
	br $31,$L672
$L673:
	cpys $f10,$f10,$f0
	beq $2,$L675
	ldah $1,$LC16($29)		!gprelhigh
	lds $f11,$LC16($1)		!gprellow
	divt $f11,$f10,$f0
$L675:
	ret $31,($26),1
	.cfi_endproc
$LFE161:
	.end __powidf2
	.align 2
	.globl __powisf2
	.ent __powisf2
__powisf2:
	.frame $30,0,$26,0
$LFB162:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!129
	lda $29,0($29)		!gpdisp!129
$__powisf2..ng:
	.prologue 1
	srl $17,63,$2
	ldah $1,$LC16($29)		!gprelhigh
	lds $f10,$LC16($1)		!gprellow
	br $31,$L680
$L678:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L679
	muls $f16,$f16,$f16
$L680:
	blbc $17,$L678
	muls $f10,$f16,$f10
	br $31,$L678
$L679:
	cpys $f10,$f10,$f0
	beq $2,$L681
	ldah $1,$LC16($29)		!gprelhigh
	lds $f11,$LC16($1)		!gprellow
	divs $f11,$f10,$f0
$L681:
	ret $31,($26),1
	.cfi_endproc
$LFE162:
	.end __powisf2
	.align 2
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
	cmpult $1,$2,$1
	mov $31,$0
	bne $1,$L684
	srl $16,32,$1
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L684
	zapnot $16,15,$1
	zapnot $17,15,$2
	cmpult $1,$2,$1
	mov $31,$0
	bne $1,$L684
	zapnot $16,15,$16
	cmpult $2,$16,$0
	lda $0,1($0)
$L684:
	ret $31,($26),1
	.cfi_endproc
$LFE163:
	.end __ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.ent __aeabi_ulcmp
__aeabi_ulcmp:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB164:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!130
	lda $29,0($29)		!gpdisp!130
$__aeabi_ulcmp..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	.cfi_offset 26, -16
	.prologue 1
	ldq $27,__ucmpdi2($29)		!literal!131
	jsr $26,($27),0		!lituse_jsr!131
	ldah $29,0($26)		!gpdisp!132
	lda $29,0($29)		!gpdisp!132
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
	bne $1,$L691
	cmpule $17,$19,$17
	lda $0,2($31)
	beq $17,$L691
	cmpult $16,$18,$1
	mov $31,$0
	bne $1,$L691
	cmpult $18,$16,$0
	lda $0,1($0)
$L691:
	ret $31,($26),1
	.cfi_endproc
$LFE165:
	.end __ucmpti2
	.section	.sbss,"aw"
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
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
	.section	.rodata.cst4
	.align 2
$LC9:
	.long	1056964608
$LC10 = $LC14+12
	.section	.rodata.cst16
	.align 4
$LC13:
	.long	0
	.long	0
	.long	0
	.long	1073610752
	.align 4
$LC14:
	.long	0
	.long	0
	.long	0
	.long	1073741824
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
