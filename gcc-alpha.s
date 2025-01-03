	.set noreorder
	.set volatile
	.set noat
	.set nomacro
	.arch ev6
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
	cmpule $16,$17,$1
	mov $16,$0
	bne $1,$L5
	addq $17,$18,$1
	addq $16,$18,$8
	beq $18,$L6
	.align 4
$L7:
	ldbu $19,-1($1)
	lda $8,-1($8)
	lda $1,-1($1)
	cmpeq $0,$8,$2
	stb $19,0($8)
	beq $2,$L7
	ret $31,($26),1
	.align 4
$L5:
	cmpeq $16,$17,$2
	beq $2,$L52
$L6:
	ret $31,($26),1
	.align 4
$L52:
	beq $18,$L6
	lda $8,-1($18)
	lda $28,1($17)
	cmpule $8,13,$3
	bne $3,$L8
	lda $4,1($17)
	subq $16,$4,$5
	mov $4,$28
	cmpule $5,6,$6
	bne $6,$L8
	subq $31,$16,$7
	and $7,7,$16
	beq $16,$L22
	ldbu $20,0($17)
	and $7,6,$21
	lda $19,1($0)
	stb $20,0($0)
	beq $21,$L9
	ldbu $22,1($17)
	cmpule $16,2,$23
	lda $4,2($17)
	lda $19,2($0)
	lda $8,-2($18)
	stb $22,1($0)
	bne $23,$L9
	ldbu $24,2($17)
	and $7,4,$25
	lda $4,3($17)
	lda $19,3($0)
	lda $8,-3($18)
	stb $24,2($0)
	beq $25,$L9
	ldbu $27,3($17)
	cmpule $16,4,$28
	lda $4,4($17)
	lda $19,4($0)
	lda $8,-4($18)
	stb $27,3($0)
	bne $28,$L9
	ldbu $2,4($17)
	cmpeq $16,5,$1
	lda $4,5($17)
	lda $19,5($0)
	lda $8,-5($18)
	stb $2,4($0)
	bne $1,$L9
	ldbu $3,5($17)
	cmpeq $16,7,$5
	lda $4,6($17)
	lda $19,6($0)
	lda $8,-6($18)
	stb $3,5($0)
	beq $5,$L9
	ldbu $6,6($17)
	lda $4,7($17)
	lda $19,7($0)
	lda $8,-7($18)
	stb $6,6($0)
$L9:
	subq $18,$16,$18
	addq $17,$16,$17
	addq $0,$16,$22
	bic $18,7,$7
	addq $17,$7,$16
	.align 4
$L17:
	ldq_u $20,0($17)
	ldq_u $21,7($17)
	lda $22,8($22)
	extql $20,$17,$23
	extqh $21,$17,$24
	lda $17,8($17)
	bis $23,$24,$25
	cmpeq $16,$17,$27
	stq $25,-8($22)
	beq $27,$L17
	cmpeq $18,$7,$28
	addq $4,$7,$4
	addq $19,$7,$19
	subq $8,$7,$8
	bne $28,$L6
	ldbu $2,0($4)
	cmpeq $8,1,$1
	stb $2,0($19)
	bne $1,$L6
	ldbu $5,1($4)
	cmpeq $8,2,$3
	stb $5,1($19)
	bne $3,$L6
	ldbu $6,2($4)
	cmpeq $8,3,$18
	stb $6,2($19)
	bne $18,$L6
	ldbu $7,3($4)
	cmpeq $8,4,$16
	stb $7,3($19)
	bne $16,$L6
	ldbu $20,4($4)
	cmpeq $8,5,$21
	stb $20,4($19)
	bne $21,$L6
	ldbu $22,5($4)
	cmpeq $8,6,$23
	stb $22,5($19)
	bne $23,$L6
	ldbu $24,6($4)
	stb $24,6($19)
	ret $31,($26),1
	.align 4
$L8:
	addq $0,$18,$17
	mov $0,$27
	.align 4
$L20:
	ldbu $25,-1($28)
	lda $27,1($27)
	lda $28,1($28)
	cmpeq $27,$17,$4
	stb $25,-1($27)
	beq $4,$L20
	ret $31,($26),1
$L22:
	mov $17,$4
	mov $0,$19
	mov $18,$8
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
	lda $16,1($16)
	beq $19,$L56
$L54:
	ldbu $1,0($17)
	lda $19,-1($19)
	lda $17,1($17)
	stb $1,0($16)
	cmpeq $1,$18,$0
	beq $0,$L57
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
	ldbu $1,0($16)
	lda $18,-1($18)
	cmpeq $1,$17,$0
	beq $0,$L67
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
	ldbu $1,0($16)
	ldbu $2,0($17)
	lda $18,-1($18)
	cmpeq $1,$2,$0
	beq $0,$L86
	lda $16,1($16)
	lda $17,1($17)
	bne $18,$L87
$L77:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L86:
	ldbu $3,0($16)
	ldbu $4,0($17)
	subl $3,$4,$0
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
	stq $9,8($30)
	stq $26,0($30)
	.cfi_offset 9, -8
	.cfi_offset 26, -16
	.prologue 1
	mov $16,$9
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
	and $17,0xff,$17
	addq $16,$18,$2
	lda $16,-1($16)
	br $31,$L94
	.align 4
$L96:
	ldbu $3,0($0)
	cmpeq $3,$17,$4
	bne $4,$L93
$L94:
	cmpeq $2,$16,$1
	mov $2,$0
	lda $2,-1($2)
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
	stq $9,8($30)
	stq $26,0($30)
	.cfi_offset 9, -8
	.cfi_offset 26, -16
	.prologue 1
	mov $16,$9
	beq $18,$L100
	ldq $27,memset($29)		!literal!5
	and $17,0xff,$17
	jsr $26,($27),memset		!lituse_jsr!5
	ldah $29,0($26)		!gpdisp!6
	lda $29,0($29)		!gpdisp!6
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
	ldbu $1,0($17)
	mov $16,$0
	sextb $1,$2
	stb $1,0($16)
	beq $2,$L102
	.align 4
$L103:
	ldbu $3,1($17)
	lda $0,1($0)
	lda $17,1($17)
	sextb $3,$4
	stb $3,0($0)
	bne $4,$L103
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
	ldbu $1,0($16)
	mov $16,$0
	and $17,0xff,$17
	sextb $1,$5
	bne $5,$L109
	ret $31,($26),1
	.align 4
$L111:
	ldbu $4,1($0)
	lda $0,1($0)
	sextb $4,$5
	beq $5,$L108
$L109:
	and $5,0xff,$2
	cmpeq $2,$17,$3
	beq $3,$L111
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
	lda $0,1($0)
	beq $3,$L120
$L118:
	ldbu $1,0($0)
	sextb $1,$3
	cmpeq $3,$17,$2
	beq $2,$L121
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
	.align 4
$L125:
	ldbu $3,0($16)
	ldbu $1,0($17)
	sextb $3,$2
	sextb $1,$5
	cmpeq $2,$5,$4
	beq $4,$L132
	lda $16,1($16)
	lda $17,1($17)
	bne $2,$L125
	mov $31,$0
$L124:
	and $5,0xff,$6
	subl $0,$6,$0
	ret $31,($26),1
	.align 4
$L132:
	and $3,0xff,$0
	br $31,$L124
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
	ldbu $1,0($16)
	mov $31,$0
	beq $1,$L133
	mov $16,$0
	.align 4
$L135:
	ldbu $2,1($0)
	lda $0,1($0)
	bne $2,$L135
	subq $0,$16,$0
$L133:
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
	beq $18,$L140
	ldbu $0,0($16)
	lda $18,-1($18)
	mov $17,$2
	addq $17,$18,$5
	bne $0,$L143
	br $31,$L151
	.align 4
$L144:
	ldbu $0,0($16)
	beq $0,$L152
	mov $7,$2
$L143:
	ldbu $4,0($2)
	cmpeq $2,$5,$1
	lda $16,1($16)
	lda $7,1($2)
	cmpeq $1,0,$8
	cmpeq $4,$0,$6
	cmpult $31,$4,$3
	and $3,$6,$17
	and $8,$17,$19
	bne $19,$L144
	addl $31,$0,$0
	subl $0,$4,$0
$L140:
	ret $31,($26),1
	.align 4
$L152:
	ldbu $4,1($2)
	subl $0,$4,$0
	ret $31,($26),1
$L151:
	ldbu $4,0($17)
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
	bne $1,$L153
	bic $18,1,$18
	addq $16,$18,$4
	.align 4
$L155:
	ldbu $3,1($16)
	ldbu $2,0($16)
	lda $16,2($16)
	lda $17,2($17)
	cmpeq $16,$4,$0
	stb $3,-2($17)
	stb $2,-1($17)
	beq $0,$L155
$L153:
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
	subl $0,97,$1
	zapnot $1,15,$2
	cmpule $2,25,$0
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
	zapnot $0,15,$1
	cmpule $1,9,$0
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
	zapnot $0,15,$1
	cmpule $1,93,$0
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
	zapnot $0,15,$1
	cmpule $1,25,$0
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
	zapnot $0,15,$1
	cmpule $1,94,$0
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
	cmpeq $16,32,$16
	zapnot $0,15,$1
	cmpule $1,4,$2
	bis $2,$16,$0
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
	zapnot $0,15,$1
	cmpule $1,25,$0
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
	zapnot $16,15,$2
	lda $0,1($31)
	zapnot $1,15,$3
	cmpule $2,31,$4
	cmpule $3,32,$5
	bis $5,$4,$6
	bne $6,$L168
	ldah $7,-1($16)
	lda $16,-8232($16)
	addl $7,7,$8
	zapnot $16,15,$17
	zapnot $8,15,$18
	cmpule $17,1,$19
	cmpule $18,2,$20
	cmoveq $19,$20,$0
$L168:
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
	zapnot $0,15,$1
	cmpule $1,9,$0
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
	bne $1,$L178
	lda $4,-8234($16)
	ldah $3,1($31)
	lda $5,8231($31)
	lda $0,1($31)
	zapnot $4,15,$6
	lda $7,-18475($3)
	cmpule $2,$5,$8
	cmpule $6,$7,$17
	bis $17,$8,$18
	bne $18,$L174
	ldah $19,-1($31)
	lda $20,8184($31)
	lda $21,8192($19)
	addl $16,$21,$22
	zapnot $22,15,$23
	cmpule $23,$20,$24
	bne $24,$L174
	lda $25,-2($3)
	addl $19,4,$27
	ldah $28,16($31)
	mov $31,$2
	and $16,$25,$0
	addl $16,$27,$16
	lda $1,3($28)
	zapnot $0,15,$4
	zapnot $16,15,$3
	cmpeq $4,$25,$5
	cmpule $3,$1,$6
	xor $5,1,$0
	cmoveq $6,$2,$0
$L174:
	ret $31,($26),1
	.align 4
$L178:
	addl $16,1,$7
	lda $8,32($31)
	and $7,127,$17
	cmpult $8,$17,$0
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
	subl $0,97,$1
	zapnot $16,15,$2
	zapnot $1,15,$3
	cmpule $2,9,$4
	cmpule $3,5,$0
	cmovne $4,1,$0
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
	fbne $f10,$L186
	cmptun $f17,$f17,$f0
	fbne $f0,$L187
	cmptlt $f17,$f16,$f1
	fbeq $f1,$L190
	subt $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L190:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.align 4
$L186:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L187:
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
	fbne $f11,$L194
	cpys $f17,$f17,$f0
	cmptun $f0,$f0,$f12
	fbne $f12,$L195
	cmptlt $f0,$f10,$f1
	fbeq $f1,$L198
	subs $f16,$f17,$f0
	ret $31,($26),1
	.align 4
$L198:
	cpys $f31,$f31,$f0
	ret $31,($26),1
	.align 4
$L194:
	cpys $f16,$f16,$f0
	ret $31,($26),1
	.align 4
$L195:
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
	.frame $30,0,$26,0
$LFB33:
	.cfi_startproc
	.prologue 0
	cmptun $f16,$f16,$f10
	fbne $f10,$L202
	cmptun $f17,$f17,$f0
	fbne $f0,$L203
	ftoit $f16,$1
	ftoit $f17,$3
	srl $1,63,$2
	srl $3,63,$0
	cmpeq $2,$0,$4
	bne $4,$L201
	cpys $f16,$f16,$f0
	cmpeq $2,0,$5
	itoft $5,$f11
	fcmoveq $f11,$f17,$f0
	ret $31,($26),1
	.align 4
$L201:
	cmptlt $f16,$f17,$f1
	cpys $f16,$f16,$f0
	fcmovne $f1,$f17,$f0
	ret $31,($26),1
	.align 4
$L202:
	cpys $f17,$f17,$f0
	ret $31,($26),1
	.align 4
$L203:
	cpys $f16,$f16,$f0
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
	cpys $f16,$f16,$f10
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	sts $f16,0($30)
	sts $f17,16($30)
	cmptun $f10,$f10,$f11
	fbne $f11,$L208
	cpys $f17,$f17,$f1
	cmptun $f1,$f1,$f12
	fbne $f12,$L209
	ftois $f16,$3
	ftois $f17,$0
	ldah $1,-32768($31)
	and $1,$3,$2
	and $1,$0,$4
	addl $31,$2,$5
	addl $31,$4,$6
	cmpeq $5,$6,$7
	beq $7,$L211
	cpys $f16,$f16,$f0
	lds $f14,16($30)
	cmptlt $f10,$f1,$f13
	fcmovne $f13,$f14,$f0
$L205:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L211:
	.cfi_restore_state
	cpys $f16,$f16,$f0
	cmpeq $5,0,$8
	itoft $8,$f15
	fcmoveq $f15,$f17,$f0
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L208:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L205
	.align 4
$L209:
	cpys $f16,$f16,$f0
	br $31,$L205
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
	stq $10,16($30)
	.cfi_offset 9, -120
	.cfi_offset 10, -112
	mov $16,$10
	ldq $9,0($18)
	stq $15,56($30)
	stq $26,0($30)
	.cfi_offset 15, -72
	.cfi_offset 26, -128
	ldq $15,8($18)
	mov $14,$16
	mov $14,$18
	stq $12,32($30)
	stq $13,40($30)
	.cfi_offset 12, -96
	.cfi_offset 13, -88
	.prologue 1
	mov $11,$17
	mov $11,$19
	stq $6,112($30)
	stq $7,120($30)
	stq $22,96($30)
	stq $23,104($30)
	jsr $26,($27),_OtsEqlX		!lituse_jsr!12
	ldah $29,0($26)		!gpdisp!13
	lda $29,0($29)		!gpdisp!13
	blt $0,$L218
	ldq $27,_OtsEqlX($29)		!literal!10
	mov $9,$16
	mov $9,$18
	mov $15,$17
	mov $15,$19
	jsr $26,($27),_OtsEqlX		!lituse_jsr!10
	ldah $29,0($26)		!gpdisp!11
	lda $29,0($29)		!gpdisp!11
	blt $0,$L213
	srl $11,63,$0
	srl $15,63,$3
	cmpeq $0,$3,$1
	bne $1,$L214
	cmovne $0,$9,$14
	cmovne $0,$15,$11
$L213:
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
$L214:
	.cfi_restore_state
	stq $14,64($30)
	stq $11,72($30)
	mov $31,$12
	stq $9,80($30)
	stq $15,88($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsLssX($29)		!literal!8
	jsr $26,($27),_OtsLssX		!lituse_jsr!8
	ldah $29,0($26)		!gpdisp!9
	cmplt $12,$0,$13
	lda $29,0($29)		!gpdisp!9
	cmovne $13,$9,$14
	cmovne $13,$15,$11
	br $31,$L213
	.align 4
$L218:
	mov $9,$14
	mov $15,$11
	br $31,$L213
	.cfi_endproc
$LFE35:
	.end fmaxl
	.align 2
	.align 4
	.globl fmin
	.ent fmin
$fmin..ng:
fmin:
	.frame $30,0,$26,0
$LFB36:
	.cfi_startproc
	.prologue 0
	cmptun $f16,$f16,$f10
	fbne $f10,$L224
	cmptun $f17,$f17,$f0
	fbne $f0,$L225
	ftoit $f16,$1
	ftoit $f17,$3
	srl $1,63,$2
	srl $3,63,$0
	cmpeq $2,$0,$4
	bne $4,$L223
	cpys $f17,$f17,$f0
	cmpeq $2,0,$5
	itoft $5,$f11
	fcmoveq $f11,$f16,$f0
	ret $31,($26),1
	.align 4
$L223:
	cmptlt $f16,$f17,$f1
	cpys $f17,$f17,$f0
	fcmovne $f1,$f16,$f0
	ret $31,($26),1
	.align 4
$L224:
	cpys $f17,$f17,$f0
	ret $31,($26),1
	.align 4
$L225:
	cpys $f16,$f16,$f0
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
	cpys $f16,$f16,$f10
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	sts $f16,0($30)
	sts $f17,16($30)
	cmptun $f10,$f10,$f11
	fbne $f11,$L230
	cpys $f17,$f17,$f1
	cmptun $f1,$f1,$f12
	fbne $f12,$L231
	ftois $f16,$3
	ftois $f17,$0
	ldah $1,-32768($31)
	and $1,$3,$2
	and $1,$0,$4
	addl $31,$2,$5
	addl $31,$4,$6
	cmpeq $5,$6,$7
	beq $7,$L233
	cpys $f17,$f17,$f0
	lds $f14,0($30)
	cmptlt $f10,$f1,$f13
	fcmovne $f13,$f14,$f0
$L227:
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L233:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	cmpeq $5,0,$8
	itoft $8,$f15
	fcmoveq $f15,$f16,$f0
	lda $30,32($30)
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.align 4
$L230:
	.cfi_restore_state
	cpys $f17,$f17,$f0
	br $31,$L227
	.align 4
$L231:
	cpys $f16,$f16,$f0
	br $31,$L227
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
	ldq $27,_OtsEqlX($29)		!literal!19
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 14, -80
	.cfi_offset 15, -72
	ldq $14,8($17)
	ldq $15,0($17)
	stq $9,8($30)
	stq $12,32($30)
	.cfi_offset 9, -120
	.cfi_offset 12, -96
	mov $16,$9
	ldq $12,8($18)
	stq $13,40($30)
	stq $26,0($30)
	.cfi_offset 13, -88
	.cfi_offset 26, -128
	ldq $13,0($18)
	mov $15,$16
	mov $15,$18
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 10, -112
	.cfi_offset 11, -104
	.prologue 1
	mov $14,$17
	mov $14,$19
	stq $6,112($30)
	stq $7,120($30)
	stq $22,96($30)
	stq $23,104($30)
	jsr $26,($27),_OtsEqlX		!lituse_jsr!19
	ldah $29,0($26)		!gpdisp!20
	lda $29,0($29)		!gpdisp!20
	blt $0,$L235
	ldq $27,_OtsEqlX($29)		!literal!17
	mov $13,$16
	mov $13,$18
	mov $12,$17
	mov $12,$19
	jsr $26,($27),_OtsEqlX		!lituse_jsr!17
	ldah $29,0($26)		!gpdisp!18
	lda $29,0($29)		!gpdisp!18
	blt $0,$L240
	srl $14,63,$0
	srl $12,63,$1
	cmpeq $0,$1,$2
	bne $2,$L236
	cmovne $0,$15,$13
	cmovne $0,$14,$12
$L235:
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
$L236:
	.cfi_restore_state
	stq $13,80($30)
	stq $12,88($30)
	mov $31,$10
	stq $15,64($30)
	stq $14,72($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsLssX($29)		!literal!15
	jsr $26,($27),_OtsLssX		!lituse_jsr!15
	ldah $29,0($26)		!gpdisp!16
	cmplt $10,$0,$11
	lda $29,0($29)		!gpdisp!16
	cmovne $11,$15,$13
	cmovne $11,$14,$12
	br $31,$L235
	.align 4
$L240:
	mov $15,$13
	mov $14,$12
	br $31,$L235
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
	addl $31,$16,$6
	ldah $0,s.0($29)		!gprelhigh
	beq $6,$L246
	ldah $3,digits($29)		!gprelhigh
	lda $0,s.0($0)		!gprellow
	lda $4,digits($3)		!gprellow
	mov $0,$2
	.align 4
$L245:
	and $6,63,$1
	zapnot $6,15,$16
	lda $2,1($2)
	addq $4,$1,$5
	srl $16,6,$6
	ldbu $7,0($5)
	stb $7,-1($2)
	bne $6,$L245
	stb $31,0($2)
	ret $31,($26),1
	.align 4
$L246:
	lda $0,s.0($0)		!gprellow
	mov $0,$2
	stb $31,0($2)
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
	subl $16,1,$16
	ldah $1,seed($29)		!gprelhigh
	zapnot $16,15,$0
	stq $0,seed($1)		!gprellow
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
	ldah $2,seed($29)		!gprelhigh
	ldah $3,$LC0($29)		!gprelhigh
	ldq $1,seed($2)		!gprellow
	ldq $0,$LC0($3)		!gprellow
	mulq $1,$0,$4
	lda $5,1($4)
	srl $5,33,$0
	stq $5,seed($2)		!gprellow
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
	beq $17,$L256
	ldq $1,0($17)
	stq $17,8($16)
	stq $1,0($16)
	stq $16,0($17)
	ldq $0,0($16)
	beq $0,$L250
	stq $16,8($0)
$L250:
	ret $31,($26),1
	.align 4
$L256:
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
	beq $1,$L258
	ldq $2,8($16)
	stq $2,8($1)
$L258:
	ldq $0,8($16)
	beq $0,$L257
	stq $1,0($0)
$L257:
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
	stq $9,8($30)
	stq $11,24($30)
	.cfi_offset 9, -72
	.cfi_offset 11, -56
	mov $19,$9
	mov $16,$11
	stq $13,40($30)
	stq $26,0($30)
	.cfi_offset 13, -40
	.cfi_offset 26, -80
	mov $20,$13
	stq $12,32($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 12, -48
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	.prologue 1
	stq $18,64($30)
	stq $17,72($30)
	beq $10,$L267
	mov $17,$14
	mov $31,$15
	br $31,$L269
	.align 4
$L281:
	cmpeq $10,$15,$2
	addq $14,$9,$14
	bne $2,$L267
$L269:
	mov $14,$17
	mov $11,$16
	mov $13,$27
	mov $14,$12
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!27
	lda $29,0($29)		!gpdisp!27
	lda $15,1($15)
	bne $0,$L281
$L266:
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
$L267:
	.cfi_restore_state
	mulq $9,$10,$12
	ldq $1,64($30)
	ldq $3,72($30)
	lda $0,1($10)
	stq $0,0($1)
	addq $3,$12,$12
	beq $9,$L266
	ldq $27,memmove($29)		!literal!25
	mov $9,$18
	mov $11,$17
	mov $12,$16
	jsr $26,($27),memmove		!lituse_jsr!25
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
	br $31,$L266
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
	stq $10,16($30)
	stq $11,24($30)
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	mov $16,$10
	mov $20,$11
	stq $13,40($30)
	stq $26,0($30)
	.cfi_offset 13, -24
	.cfi_offset 26, -64
	mov $19,$13
	stq $9,8($30)
	stq $14,48($30)
	stq $15,56($30)
	.cfi_offset 9, -56
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	.prologue 1
	beq $12,$L283
	mov $17,$9
	mov $31,$14
	br $31,$L285
	.align 4
$L293:
	cmpeq $12,$14,$1
	addq $9,$13,$9
	bne $1,$L283
$L285:
	mov $9,$17
	mov $10,$16
	mov $11,$27
	mov $9,$15
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!29
	lda $29,0($29)		!gpdisp!29
	lda $14,1($14)
	bne $0,$L293
$L282:
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
$L283:
	.cfi_restore_state
	mov $31,$15
	br $31,$L282
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
	ldbu $8,0($16)
	br $31,$L318
	.align 4
$L320:
	ldbu $8,1($16)
	lda $16,1($16)
$L318:
	sextb $8,$1
	subl $1,9,$2
	cmpeq $1,32,$3
	zapnot $2,15,$0
	cmpule $0,4,$4
	bis $4,$3,$5
	bne $5,$L320
	cmpeq $1,43,$6
	bne $6,$L298
	cmpeq $1,45,$19
	beq $19,$L321
	ldbu $20,1($16)
	mov $31,$0
	lda $16,1($16)
	sextb $20,$21
	subl $21,48,$24
	zapnot $24,15,$22
	cmpule $22,9,$23
	beq $23,$L303
	lda $25,1($31)
$L301:
	mov $31,$5
	.align 4
$L304:
	ldbu $1,1($16)
	sextb $24,$0
	s4addl $5,$5,$2
	lda $16,1($16)
	addl $2,$2,$4
	subl $4,$0,$5
	sextb $1,$3
	subl $3,48,$24
	zapnot $24,15,$6
	cmpule $6,9,$7
	bne $7,$L304
	subl $0,$4,$0
	cmovne $25,$5,$0
$L303:
	ret $31,($26),1
	.align 4
$L321:
	subl $1,48,$24
	mov $31,$25
	zapnot $24,15,$27
	cmpule $27,9,$28
	bne $28,$L301
$L319:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L298:
	ldbu $7,1($16)
	mov $31,$25
	lda $16,1($16)
	sextb $7,$8
	subl $8,48,$24
	zapnot $24,15,$17
	cmpule $17,9,$18
	bne $18,$L301
	br $31,$L319
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
	ldbu $8,0($16)
	br $31,$L345
	.align 4
$L347:
	ldbu $8,1($16)
	lda $16,1($16)
$L345:
	sextb $8,$1
	subl $1,9,$2
	cmpeq $1,32,$3
	zapnot $2,15,$0
	cmpule $0,4,$4
	bis $4,$3,$5
	bne $5,$L347
	cmpeq $1,43,$6
	bne $6,$L325
	cmpeq $1,45,$19
	beq $19,$L348
	ldbu $20,1($16)
	mov $31,$0
	lda $16,1($16)
	sextb $20,$21
	subl $21,48,$24
	zapnot $24,15,$22
	cmpule $22,9,$23
	beq $23,$L322
	lda $25,1($31)
$L328:
	mov $31,$5
	.align 4
$L331:
	ldbu $1,1($16)
	sextb $24,$0
	s4addq $5,$5,$2
	lda $16,1($16)
	addq $2,$2,$4
	subq $4,$0,$5
	sextb $1,$3
	subl $3,48,$24
	zapnot $24,15,$6
	cmpule $6,9,$7
	bne $7,$L331
	subq $0,$4,$0
	cmovne $25,$5,$0
$L322:
	ret $31,($26),1
	.align 4
$L348:
	subl $1,48,$24
	mov $31,$25
	zapnot $24,15,$27
	cmpule $27,9,$28
	bne $28,$L328
$L346:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L325:
	ldbu $7,1($16)
	mov $31,$25
	lda $16,1($16)
	sextb $7,$8
	subl $8,48,$24
	zapnot $24,15,$17
	cmpule $17,9,$18
	bne $18,$L328
	br $31,$L346
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
	ldbu $8,0($16)
	br $31,$L369
	.align 4
$L371:
	ldbu $8,1($16)
	lda $16,1($16)
$L369:
	sextb $8,$1
	subl $1,9,$2
	cmpeq $1,32,$3
	zapnot $2,15,$0
	cmpule $0,4,$4
	bis $4,$3,$5
	bne $5,$L371
	cmpeq $1,43,$6
	bne $6,$L352
	cmpeq $1,45,$19
	bne $19,$L372
	subl $1,48,$24
	mov $31,$25
	zapnot $24,15,$27
	cmpule $27,9,$28
	beq $28,$L370
$L354:
	mov $31,$5
	.align 4
$L357:
	ldbu $1,1($16)
	sextb $24,$0
	s4addq $5,$5,$2
	lda $16,1($16)
	addq $2,$2,$4
	subq $4,$0,$5
	sextb $1,$3
	subl $3,48,$24
	zapnot $24,15,$6
	cmpule $6,9,$7
	bne $7,$L357
	subq $0,$4,$0
	cmovne $25,$5,$0
$L349:
	ret $31,($26),1
	.align 4
$L372:
	ldbu $20,1($16)
	lda $25,1($31)
	lda $16,1($16)
	sextb $20,$21
	subl $21,48,$24
	zapnot $24,15,$22
	cmpule $22,9,$23
	bne $23,$L354
$L370:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L352:
	ldbu $7,1($16)
	mov $31,$0
	lda $16,1($16)
	sextb $7,$8
	subl $8,48,$24
	zapnot $24,15,$17
	cmpule $17,9,$18
	beq $18,$L349
	mov $31,$25
	br $31,$L354
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
	stq $9,8($30)
	stq $11,24($30)
	.cfi_offset 9, -56
	.cfi_offset 11, -40
	mov $18,$9
	mov $17,$11
	stq $12,32($30)
	stq $13,40($30)
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	mov $19,$12
	mov $16,$13
	stq $14,48($30)
	stq $26,0($30)
	.cfi_offset 14, -16
	.cfi_offset 26, -64
	mov $20,$14
	stq $10,16($30)
	stq $15,56($30)
	.cfi_offset 10, -48
	.cfi_offset 15, -8
	.prologue 1
	.align 4
$L386:
	beq $9,$L374
$L387:
	srl $9,1,$15
	mov $13,$16
	mov $14,$27
	lda $9,-1($9)
	mulq $15,$12,$0
	addq $11,$0,$10
	mov $10,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!31
	lda $29,0($29)		!gpdisp!31
	blt $0,$L378
	beq $0,$L373
	subq $9,$15,$9
	addq $10,$12,$11
	bne $9,$L387
$L374:
	mov $31,$10
$L373:
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
$L378:
	.cfi_restore_state
	mov $15,$9
	br $31,$L386
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
	stq $9,8($30)
	stq $10,16($30)
	.cfi_offset 9, -72
	.cfi_offset 10, -64
	addl $31,$18,$9
	mov $17,$10
	stq $11,24($30)
	stq $13,40($30)
	.cfi_offset 11, -56
	.cfi_offset 13, -40
	mov $19,$11
	mov $20,$13
	stq $14,48($30)
	stq $26,0($30)
	.cfi_offset 14, -32
	.cfi_offset 26, -80
	mov $21,$14
	stq $12,32($30)
	stq $15,56($30)
	.cfi_offset 12, -48
	.cfi_offset 15, -24
	.prologue 1
	stq $16,64($30)
	beq $9,$L393
	.align 4
$L401:
	sra $9,1,$12
	ldq $16,64($30)
	mov $14,$18
	mov $13,$27
	mulq $12,$11,$15
	subl $9,1,$9
	sra $9,1,$9
	addq $10,$15,$15
	mov $15,$17
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!33
	lda $29,0($29)		!gpdisp!33
	beq $0,$L388
	ble $0,$L391
	addq $15,$11,$10
	bne $9,$L401
$L393:
	mov $31,$15
$L388:
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
$L391:
	.cfi_restore_state
	beq $12,$L393
	mov $12,$9
	br $31,$L401
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
	ldq $27,__divl($29)		!literal!34
	mov $17,$24
	mov $18,$25
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
	ldq $27,__divq($29)		!literal!37
	mov $17,$24
	mov $18,$25
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
	ldq $27,__divq($29)		!literal!40
	mov $17,$24
	mov $18,$25
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
	ldq $27,__divq($29)		!literal!43
	mov $17,$24
	mov $18,$25
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
	ldl $0,0($16)
	bne $0,$L411
	br $31,$L414
	.align 4
$L413:
	ldl $0,4($16)
	lda $16,4($16)
	beq $0,$L414
$L411:
	cmpeq $17,$0,$1
	beq $1,$L413
	mov $16,$0
	ret $31,($26),1
	.align 4
$L414:
	mov $31,$0
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
	.align 4
$L421:
	ldl $1,0($16)
	ldl $0,0($17)
	cmpeq $1,$0,$2
	beq $2,$L420
	lda $16,4($16)
	lda $17,4($17)
	bne $1,$L421
$L420:
	cmplt $1,$0,$3
	lda $4,-1($31)
	cmplt $0,$1,$0
	cmovne $3,$4,$0
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
$L428:
	ldl $2,0($17)
	lda $1,4($1)
	lda $17,4($17)
	stl $2,-4($1)
	bne $2,$L428
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
	mov $31,$0
	beq $1,$L430
	mov $16,$0
	.align 4
$L432:
	ldl $2,4($0)
	lda $0,4($0)
	bne $2,$L432
	subq $0,$16,$3
	sra $3,2,$0
$L430:
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
$L439:
	beq $18,$L442
	ldl $2,0($16)
	ldl $3,0($17)
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
	cmpeq $3,$2,$1
	cmpult $31,$2,$4
	and $1,$4,$0
	bne $0,$L439
	cmplt $2,$3,$5
	cmplt $3,$2,$0
	lda $6,-1($31)
	cmovne $5,$6,$0
	ret $31,($26),1
	.align 4
$L442:
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
	beq $18,$L454
	.align 4
$L461:
	ldl $1,0($16)
	lda $18,-1($18)
	cmpeq $1,$17,$0
	bne $0,$L460
	lda $16,4($16)
	bne $18,$L461
$L454:
	mov $31,$0
	ret $31,($26),1
	.align 4
$L460:
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
$L465:
	beq $18,$L468
	ldl $2,0($16)
	ldl $1,0($17)
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
	cmpeq $2,$1,$3
	bne $3,$L465
	cmplt $2,$1,$4
	cmplt $1,$2,$0
	lda $5,-1($31)
	cmovne $4,$5,$0
	ret $31,($26),1
	.align 4
$L468:
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
	stq $9,8($30)
	stq $26,0($30)
	.cfi_offset 9, -8
	.cfi_offset 26, -16
	.prologue 1
	mov $16,$9
	beq $18,$L477
	ldq $27,memcpy($29)		!literal!47
	s4addq $18,0,$18
	jsr $26,($27),memcpy		!lituse_jsr!47
	ldah $29,0($26)		!gpdisp!48
	lda $29,0($29)		!gpdisp!48
$L477:
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
	mov $16,$0
	bne $1,$L499
	subq $16,$17,$2
	s4addq $18,0,$3
	lda $16,-1($18)
	cmpult $2,$3,$4
	bne $4,$L483
	beq $18,$L508
	cmpule $16,23,$5
	bne $5,$L494
	lda $7,4($17)
	cmpeq $7,$0,$6
	mov $7,$19
	bne $6,$L507
	and $0,4,$8
	cmpult $31,$8,$16
	beq $16,$L496
	ldl $20,0($17)
	lda $19,4($0)
	stl $20,0($0)
$L488:
	subq $18,$16,$18
	s4addq $16,$17,$17
	s4addq $16,$0,$25
	mov $31,$24
	srl $18,1,$21
	.align 4
$L489:
	ldq_u $22,0($17)
	ldq_u $23,7($17)
	lda $24,1($24)
	lda $25,8($25)
	cmpeq $21,$24,$27
	extql $22,$17,$28
	extqh $23,$17,$1
	lda $17,8($17)
	bis $28,$1,$2
	stq $2,-8($25)
	beq $27,$L489
	blbc $18,$L499
	bic $18,1,$3
	s4addq $3,$7,$4
	s4addq $3,$19,$5
	ldl $6,0($4)
	stl $6,0($5)
	ret $31,($26),1
	.align 4
$L494:
	mov $0,$7
	lda $19,4($17)
	.align 4
$L507:
	ldl $8,-4($19)
	lda $16,-1($16)
	lda $7,4($7)
	lda $19,4($19)
	lda $20,1($16)
	stl $8,-4($7)
	bne $20,$L507
$L499:
	ret $31,($26),1
	.align 4
$L483:
	beq $18,$L499
	s4addq $16,0,$22
	.align 4
$L486:
	addq $17,$22,$18
	addq $0,$22,$21
	lda $22,-4($22)
	ldl $23,0($18)
	lda $24,4($22)
	stl $23,0($21)
	bne $24,$L486
	ret $31,($26),1
	.align 4
$L496:
	mov $17,$7
	mov $0,$19
	br $31,$L488
	.align 4
$L508:
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
	lda $6,-1($18)
	beq $18,$L510
	and $16,4,$1
	cmpule $6,5,$2
	cmpult $31,$1,$3
	bne $2,$L515
	mov $16,$7
	beq $3,$L512
	lda $7,4($16)
	stl $17,0($16)
	lda $6,-2($18)
$L512:
	subq $18,$3,$18
	sll $17,32,$8
	s4addq $3,$0,$21
	mov $31,$20
	zapnot $17,15,$16
	srl $18,1,$5
	bis $16,$8,$19
	.align 4
$L513:
	lda $20,1($20)
	stq $19,0($21)
	lda $21,8($21)
	cmpeq $20,$5,$22
	beq $22,$L513
	blbc $18,$L510
	bic $18,1,$23
	subq $6,$23,$6
	s4addq $23,$7,$4
$L511:
	stl $17,0($4)
	beq $6,$L510
	stl $17,4($4)
	cmpeq $6,1,$24
	bne $24,$L510
	stl $17,8($4)
	cmpeq $6,2,$25
	bne $25,$L510
	stl $17,12($4)
	cmpeq $6,3,$27
	bne $27,$L510
	stl $17,16($4)
	cmpeq $6,4,$28
	bne $28,$L510
	stl $17,20($4)
$L510:
	ret $31,($26),1
$L515:
	mov $16,$4
	br $31,$L511
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
	beq $1,$L541
	addq $16,$18,$23
	addq $17,$18,$17
	beq $18,$L540
	.align 4
$L543:
	ldbu $8,-1($23)
	lda $23,-1($23)
	lda $17,-1($17)
	cmpeq $16,$23,$24
	stb $8,0($17)
	beq $24,$L543
	ret $31,($26),1
	.align 4
$L541:
	cmpeq $16,$17,$0
	beq $0,$L588
$L540:
	ret $31,($26),1
	.align 4
$L588:
	beq $18,$L540
	lda $24,-1($18)
	cmpule $24,13,$2
	bne $2,$L589
	lda $23,1($16)
	subq $17,$23,$3
	mov $23,$1
	cmpule $3,6,$4
	bne $4,$L544
	subq $31,$16,$5
	and $5,7,$6
	beq $6,$L558
	ldbu $7,0($16)
	and $5,6,$19
	lda $8,1($17)
	stb $7,0($17)
	beq $19,$L545
	ldbu $20,1($16)
	cmpule $6,2,$21
	lda $23,2($16)
	lda $8,2($17)
	lda $24,-2($18)
	stb $20,1($17)
	bne $21,$L545
	ldbu $22,2($16)
	and $5,4,$25
	lda $23,3($16)
	lda $8,3($17)
	lda $24,-3($18)
	stb $22,2($17)
	beq $25,$L545
	ldbu $27,3($16)
	cmpule $6,4,$28
	lda $23,4($16)
	lda $8,4($17)
	lda $24,-4($18)
	stb $27,3($17)
	bne $28,$L545
	ldbu $1,4($16)
	cmpeq $6,5,$0
	lda $23,5($16)
	lda $8,5($17)
	lda $24,-5($18)
	stb $1,4($17)
	bne $0,$L545
	ldbu $3,5($16)
	cmpeq $6,7,$2
	lda $23,6($16)
	lda $8,6($17)
	lda $24,-6($18)
	stb $3,5($17)
	beq $2,$L545
	ldbu $4,6($16)
	lda $23,7($16)
	lda $8,7($17)
	lda $24,-7($18)
	stb $4,6($17)
$L545:
	subq $18,$6,$18
	addq $16,$6,$22
	addq $17,$6,$17
	bic $18,7,$16
	addq $22,$16,$7
	.align 4
$L553:
	ldq $19,0($22)
	ldq_u $20,7($17)
	lda $22,8($22)
	ldq_u $21,0($17)
	cmpeq $7,$22,$5
	insqh $19,$17,$6
	mskqh $20,$17,$25
	insql $19,$17,$27
	mskql $21,$17,$28
	bis $25,$6,$0
	stq_u $0,7($17)
	bis $28,$27,$1
	stq_u $1,0($17)
	lda $17,8($17)
	beq $5,$L553
	cmpeq $18,$16,$4
	addq $8,$16,$8
	addq $23,$16,$23
	subq $24,$16,$24
	bne $4,$L540
	ldbu $3,0($23)
	cmpeq $24,1,$2
	stb $3,0($8)
	bne $2,$L540
	ldbu $18,1($23)
	cmpeq $24,2,$16
	stb $18,1($8)
	bne $16,$L540
	ldbu $7,2($23)
	cmpeq $24,3,$19
	stb $7,2($8)
	bne $19,$L540
	ldbu $20,3($23)
	cmpeq $24,4,$21
	stb $20,3($8)
	bne $21,$L540
	ldbu $22,4($23)
	cmpeq $24,5,$5
	stb $22,4($8)
	bne $5,$L540
	ldbu $6,5($23)
	cmpeq $24,6,$25
	stb $6,5($8)
	bne $25,$L540
	ldbu $27,6($23)
	stb $27,6($8)
	ret $31,($26),1
$L589:
	lda $1,1($16)
$L544:
	addq $16,$18,$28
	.align 4
$L556:
	ldbu $0,-1($1)
	cmpeq $1,$28,$4
	lda $17,1($17)
	lda $1,1($1)
	stb $0,-1($17)
	beq $4,$L556
	ret $31,($26),1
$L558:
	mov $17,$8
	mov $16,$23
	mov $18,$24
	br $31,$L545
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
	srl $16,$1,$16
	bis $16,$17,$0
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
	sll $16,$1,$16
	bis $16,$17,$0
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
	sll $16,$17,$0
	subq $31,$17,$2
	and $2,31,$3
	srl $1,$3,$4
	bis $0,$4,$5
	addl $31,$5,$0
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
	subq $31,$17,$1
	zapnot $16,15,$0
	and $1,31,$2
	srl $0,$17,$3
	sll $16,$2,$16
	bis $3,$16,$4
	addl $31,$4,$0
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
	srl $16,$1,$16
	bis $16,$17,$0
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
	sll $16,$1,$16
	bis $16,$17,$0
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
	sll $16,$17,$0
	and $1,15,$2
	srl $16,$2,$16
	bis $0,$16,$3
	zapnot $3,3,$0
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
	srl $16,$17,$0
	and $1,15,$2
	sll $16,$2,$16
	bis $0,$16,$3
	zapnot $3,3,$0
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
	sll $16,$17,$0
	and $1,7,$2
	srl $16,$2,$16
	bis $0,$16,$3
	and $3,0xff,$0
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
	srl $16,$17,$0
	and $1,7,$2
	sll $16,$2,$16
	bis $0,$16,$3
	and $3,0xff,$0
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
	inslh $16,7,$1
	inswl $16,3,$16
	bis $1,$16,$2
	srl $2,16,$0
	zapnot $2,250,$3
	zapnot $0,245,$4
	addl $4,$3,$0
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
	srl $16,32,$2
	sll $16,32,$16
	bis $2,$16,$0
	srl $0,16,$1
	sll $0,16,$3
	zapnot $1,51,$4
	zapnot $3,204,$5
	bis $4,$5,$6
	srl $6,8,$7
	sll $6,8,$8
	zapnot $7,85,$17
	zapnot $8,170,$18
	bis $17,$18,$0
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
	br $31,$L606
	.align 4
$L609:
	cmpeq $1,32,$4
	bne $4,$L608
$L606:
	addl $0,1,$2
	srl $16,$0,$3
	zapnot $2,15,$1
	addl $31,$2,$0
	blbc $3,$L609
	ret $31,($26),1
	.align 4
$L608:
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
	beq $16,$L611
	and $16,1,$0
	bne $0,$L611
	lda $0,1($31)
	.align 4
$L612:
	sra $16,1,$16
	addl $0,1,$0
	blbc $16,$L612
$L611:
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
	cpys $f16,$f16,$f16
	lda $0,1($31)
	lds $f11,$LC1($1)		!gprellow
	cmptlt $f16,$f11,$f10
	fbne $f10,$L618
	ldah $0,$LC2($29)		!gprelhigh
	lds $f0,$LC2($0)		!gprellow
	cmptlt $f0,$f16,$f1
	ftoit $f1,$2
	cmpult $31,$2,$0
$L618:
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
	fbne $f10,$L621
	ldah $0,$LC6($29)		!gprelhigh
	ldt $f0,$LC6($0)		!gprellow
	cmptlt $f0,$f16,$f1
	ftoit $f1,$2
	cmpult $31,$2,$0
$L621:
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
	ldah $1,$LC7($29)		!gprelhigh
	ldq $27,_OtsLssX($29)		!literal!54
	lda $0,$LC7($1)		!gprellow
	stq $10,8($30)
	stq $11,16($30)
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	ldq $10,0($16)
	ldq $11,8($16)
	ldq $18,0($0)
	ldq $19,8($0)
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	mov $10,$16
	mov $11,$17
	jsr $26,($27),_OtsLssX		!lituse_jsr!54
	ldah $29,0($26)		!gpdisp!55
	lda $29,0($29)		!gpdisp!55
	lda $5,1($31)
	bgt $0,$L624
	ldah $2,$LC8($29)		!gprelhigh
	ldq $27,_OtsGtrX($29)		!literal!52
	mov $10,$16
	mov $11,$17
	lda $3,$LC8($2)		!gprellow
	ldq $18,0($3)
	ldq $19,8($3)
	jsr $26,($27),_OtsGtrX		!lituse_jsr!52
	ldah $29,0($26)		!gpdisp!53
	mov $31,$4
	lda $29,0($29)		!gpdisp!53
	cmplt $4,$0,$5
$L624:
	ldq $26,0($30)
	ldq $10,8($30)
	mov $5,$0
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
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB88:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!56
	lda $29,0($29)		!gpdisp!56
$_Qp_itoq..ng:
	itoft $17,$f10
	ldq $27,_OtsConvertFloatTX($29)		!literal!57
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $9,8($30)
	stq $26,0($30)
	.cfi_offset 9, -8
	.cfi_offset 26, -16
	.prologue 1
	mov $16,$9
	cvtqt $f10,$f16
	jsr $26,($27),_OtsConvertFloatTX		!lituse_jsr!57
	ldah $29,0($26)		!gpdisp!58
	stq $16,0($9)
	stq $17,8($9)
	lda $29,0($29)		!gpdisp!58
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
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
	fbne $f11,$L628
	adds $f16,$f16,$f1
	cmpteq $f1,$f10,$f12
	fbne $f12,$L628
	ldah $3,$LC9($29)		!gprelhigh
	ldah $2,$LC10($29)		!gprelhigh
	cmplt $17,0,$1
	lds $f15,$LC9($3)		!gprellow
	lds $f13,$LC10($2)		!gprellow
	cmpeq $1,0,$0
	itoft $0,$f14
	fcmoveq $f14,$f13,$f15
	blbc $17,$L630
	.align 4
$L631:
	muls $f0,$f15,$f0
$L630:
	srl $17,63,$4
	addq $4,$17,$17
	sra $17,1,$17
	beq $17,$L628
	muls $f15,$f15,$f15
	srl $17,63,$5
	blbs $17,$L631
$L640:
	addq $5,$17,$6
	muls $f15,$f15,$f15
	sra $6,1,$17
	srl $17,63,$5
	blbs $17,$L631
	br $31,$L640
	.align 4
$L628:
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
	ldah $29,0($27)		!gpdisp!60
	lda $29,0($29)		!gpdisp!60
$ldexp..ng:
	.prologue 1
	cmptun $f16,$f16,$f10
	cpys $f16,$f16,$f0
	fbne $f10,$L642
	addt $f16,$f16,$f11
	cmpteq $f11,$f16,$f1
	fbne $f1,$L642
	cmplt $17,0,$1
	bne $1,$L654
	ldah $0,$LC9($29)		!gprelhigh
	lds $f12,$LC9($0)		!gprellow
	blbc $17,$L644
	.align 4
$L645:
	mult $f0,$f12,$f0
$L644:
	srl $17,63,$3
	addq $3,$17,$17
	sra $17,1,$17
	beq $17,$L642
	mult $f12,$f12,$f12
	srl $17,63,$4
	blbs $17,$L645
$L655:
	addq $4,$17,$5
	mult $f12,$f12,$f12
	sra $5,1,$17
	srl $17,63,$4
	blbs $17,$L645
	br $31,$L655
	.align 4
$L642:
	ret $31,($26),1
	.align 4
$L654:
	ldah $2,$LC10($29)		!gprelhigh
	lds $f12,$LC10($2)		!gprellow
	blbc $17,$L644
	br $31,$L645
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
	stq $13,40($30)
	stq $16,96($30)
	.cfi_offset 13, -136
	mov $18,$13
	stq $26,0($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $14,48($30)
	mov $10,$16
	mov $10,$18
	stq $15,56($30)
	.cfi_offset 26, -176
	.cfi_offset 11, -152
	.cfi_offset 12, -144
	.cfi_offset 14, -128
	.cfi_offset 15, -120
	.prologue 1
	mov $9,$17
	mov $9,$19
	stq $2,160($30)
	stq $3,168($30)
	stq $4,144($30)
	stq $5,152($30)
	jsr $26,($27),_OtsEqlX		!lituse_jsr!70
	ldah $29,0($26)		!gpdisp!71
	lda $29,0($29)		!gpdisp!71
	blt $0,$L657
	ldq $27,_OtsAddX($29)		!literal!66
	mov $10,$18
	lda $20,2($31)
	mov $9,$19
	mov $10,$16
	mov $9,$17
	jsr $26,($27),_OtsAddX		!lituse_jsr!66
	ldah $29,0($26)		!gpdisp!67
	stq $10,128($30)
	lda $29,0($29)		!gpdisp!67
	stq $9,136($30)
	ldq $18,128($30)
	ldq $19,136($30)
	ldq $27,_OtsEqlX($29)		!literal!68
	jsr $26,($27),_OtsEqlX		!lituse_jsr!68
	ldah $29,0($26)		!gpdisp!69
	lda $29,0($29)		!gpdisp!69
	bgt $0,$L657
	cmplt $13,0,$2
	bne $2,$L669
	ldah $3,$LC13($29)		!gprelhigh
	lda $0,$LC13($3)		!gprellow
	ldq $8,0($0)
	ldq $12,8($0)
$L658:
	blbc $13,$L659
	.align 4
$L660:
	stq $10,64($30)
	stq $8,80($30)
	lda $20,2($31)
	stq $9,72($30)
	stq $12,88($30)
	ldq $16,64($30)
	ldq $17,72($30)
	ldq $18,80($30)
	ldq $19,88($30)
	ldq $27,_OtsMulX($29)		!literal!64
	stq $8,160($30)
	stq $12,168($30)
	jsr $26,($27),_OtsMulX		!lituse_jsr!64
	ldah $29,0($26)		!gpdisp!65
	ldq $12,168($30)
	lda $29,0($29)		!gpdisp!65
	mov $16,$10
	mov $17,$9
	ldq $8,160($30)
$L659:
	srl $13,63,$5
	addq $5,$13,$6
	sra $6,1,$13
	beq $13,$L657
$L661:
	ldq $27,_OtsMulX($29)		!literal!62
	mov $8,$16
	mov $8,$18
	mov $12,$17
	mov $12,$19
	lda $20,2($31)
	jsr $26,($27),_OtsMulX		!lituse_jsr!62
	ldah $29,0($26)		!gpdisp!63
	lda $29,0($29)		!gpdisp!63
	srl $13,63,$7
	mov $16,$8
	mov $17,$12
	blbs $13,$L660
	addq $7,$13,$11
	sra $11,1,$13
	br $31,$L661
	.align 4
$L657:
	stq $10,112($30)
	stq $9,120($30)
	ldq $0,96($30)
	ldq $14,112($30)
	ldq $15,120($30)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	stq $14,0($0)
	ldq $11,24($30)
	stq $15,8($0)
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
$L669:
	.cfi_restore_state
	ldah $1,$LC14($29)		!gprelhigh
	lda $4,$LC14($1)		!gprellow
	ldq $8,0($4)
	ldq $12,8($4)
	br $31,$L658
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
	beq $18,$L671
	subq $31,$16,$3
	lda $7,-1($18)
	and $3,7,$2
	lda $1,7($2)
	cmpule $1,11,$4
	cmovne $4,11,$1
	cmpult $7,$1,$5
	bne $5,$L672
	beq $2,$L684
	ldbu $6,0($16)
	ldbu $19,0($17)
	and $3,6,$20
	lda $8,1($17)
	lda $22,1($16)
	xor $19,$6,$21
	stb $21,0($16)
	beq $20,$L673
	ldbu $23,1($16)
	ldbu $24,1($17)
	cmpule $2,2,$25
	lda $8,2($17)
	lda $22,2($16)
	lda $7,-2($18)
	xor $24,$23,$27
	stb $27,1($16)
	bne $25,$L673
	ldbu $28,2($16)
	ldbu $1,2($17)
	and $3,4,$3
	lda $8,3($17)
	lda $22,3($16)
	lda $7,-3($18)
	xor $1,$28,$4
	stb $4,2($16)
	beq $3,$L673
	ldbu $5,3($16)
	ldbu $16,3($17)
	cmpule $2,4,$6
	lda $8,4($17)
	lda $7,-4($18)
	xor $16,$5,$22
	stb $22,3($0)
	lda $22,4($0)
	bne $6,$L673
	ldbu $8,4($0)
	ldbu $7,4($17)
	cmpeq $2,5,$19
	lda $22,5($0)
	xor $7,$8,$20
	lda $8,5($17)
	lda $7,-5($18)
	stb $20,4($0)
	bne $19,$L673
	ldbu $21,5($0)
	ldbu $23,5($17)
	cmpeq $2,7,$24
	lda $8,6($17)
	lda $22,6($0)
	lda $7,-6($18)
	xor $23,$21,$25
	stb $25,5($0)
	beq $24,$L673
	ldbu $27,6($0)
	ldbu $28,6($17)
	lda $8,7($17)
	lda $22,7($0)
	lda $7,-7($18)
	xor $28,$27,$1
	stb $1,6($0)
$L673:
	subq $18,$2,$16
	addq $17,$2,$17
	addq $0,$2,$2
	bic $16,7,$18
	addq $17,$18,$5
	.align 4
$L681:
	ldq_u $6,0($17)
	ldq_u $4,7($17)
	lda $2,8($2)
	ldq $3,-8($2)
	extql $6,$17,$19
	extqh $4,$17,$20
	lda $17,8($17)
	bis $19,$20,$21
	cmpeq $17,$5,$23
	xor $3,$21,$24
	stq $24,-8($2)
	beq $23,$L681
	cmpeq $16,$18,$25
	addq $8,$18,$17
	addq $22,$18,$16
	subq $7,$18,$18
	bne $25,$L728
$L672:
	ldbu $22,0($16)
	ldbu $8,0($17)
	cmpeq $18,1,$7
	xor $22,$8,$27
	stb $27,0($16)
	bne $7,$L671
	ldbu $28,1($16)
	ldbu $1,1($17)
	cmpeq $18,2,$5
	xor $1,$28,$6
	stb $6,1($16)
	bne $5,$L671
	ldbu $4,2($16)
	ldbu $3,2($17)
	cmpeq $18,3,$2
	xor $3,$4,$19
	stb $19,2($16)
	bne $2,$L671
	ldbu $20,3($16)
	ldbu $21,3($17)
	cmpeq $18,4,$23
	xor $21,$20,$24
	stb $24,3($16)
	bne $23,$L671
	ldbu $25,4($16)
	ldbu $22,4($17)
	cmpeq $18,5,$8
	xor $22,$25,$7
	stb $7,4($16)
	bne $8,$L671
	ldbu $27,5($16)
	ldbu $28,5($17)
	cmpeq $18,6,$1
	xor $28,$27,$5
	stb $5,5($16)
	bne $1,$L671
	ldbu $6,6($16)
	ldbu $4,6($17)
	cmpeq $18,7,$2
	xor $4,$6,$3
	stb $3,6($16)
	bne $2,$L671
	ldbu $19,7($16)
	ldbu $20,7($17)
	cmpeq $18,8,$21
	xor $20,$19,$23
	stb $23,7($16)
	bne $21,$L671
	ldbu $24,8($16)
	ldbu $25,8($17)
	cmpeq $18,9,$22
	xor $25,$24,$8
	stb $8,8($16)
	bne $22,$L671
	ldbu $7,9($16)
	ldbu $27,9($17)
	cmpeq $18,10,$28
	xor $27,$7,$1
	stb $1,9($16)
	bne $28,$L671
	ldbu $5,10($16)
	ldbu $6,10($17)
	cmpeq $18,11,$4
	xor $6,$5,$2
	stb $2,10($16)
	bne $4,$L671
	ldbu $19,11($16)
	ldbu $3,11($17)
	cmpeq $18,12,$20
	xor $3,$19,$21
	stb $21,11($16)
	bne $20,$L671
	ldbu $23,12($16)
	ldbu $24,12($17)
	cmpeq $18,13,$18
	xor $24,$23,$25
	stb $25,12($16)
	bne $18,$L671
	ldbu $22,13($16)
	ldbu $17,13($17)
	xor $17,$22,$8
	stb $8,13($16)
$L671:
	ret $31,($26),1
	.align 4
$L684:
	mov $16,$22
	mov $17,$8
	mov $18,$7
	br $31,$L673
	.align 4
$L728:
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
	ldbu $2,0($16)
	mov $16,$0
	mov $16,$1
	beq $2,$L734
	.align 4
$L731:
	ldbu $3,1($1)
	lda $1,1($1)
	bne $3,$L731
	.align 4
$L734:
	beq $18,$L733
	ldbu $4,0($17)
	lda $1,1($1)
	lda $18,-1($18)
	lda $17,1($17)
	sextb $4,$5
	stb $4,-1($1)
	bne $5,$L734
	ret $31,($26),1
	.align 4
$L733:
	stb $31,0($1)
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
	beq $17,$L745
$L746:
	addq $16,$0,$1
	ldbu $2,0($1)
	bne $2,$L748
$L745:
	ret $31,($26),1
	.align 4
$L748:
	lda $0,1($0)
	cmpeq $17,$0,$3
	beq $3,$L746
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
	ldbu $4,0($16)
	mov $16,$0
	sextb $4,$7
	beq $7,$L759
$L755:
	mov $17,$2
	br $31,$L758
	.align 4
$L757:
	bne $3,$L756
$L758:
	ldbu $1,0($2)
	lda $2,1($2)
	sextb $1,$5
	cmpeq $5,$7,$3
	bne $5,$L757
	ldbu $6,1($0)
	lda $0,1($0)
	sextb $6,$7
	bne $7,$L755
$L759:
	mov $31,$0
$L756:
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
$L764:
	ldbu $1,0($16)
	sextb $1,$3
	cmpeq $3,$17,$2
	cmovne $2,$16,$0
	lda $16,1($16)
	bne $3,$L764
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
	ldbu $7,0($17)
	mov $16,$0
	sextb $7,$27
	beq $27,$L766
	mov $17,$1
	.align 4
$L768:
	ldbu $2,1($1)
	lda $1,1($1)
	bne $2,$L768
	subq $1,$17,$3
	mov $16,$0
	beq $3,$L766
	lda $8,-1($17)
	and $27,0xff,$22
	addq $8,$3,$28
	br $31,$L785
	.align 4
$L787:
	lda $16,1($16)
	beq $4,$L786
$L785:
	ldbu $0,0($16)
	sextb $0,$4
	cmpeq $4,$27,$5
	beq $5,$L787
	mov $22,$7
	mov $17,$2
	mov $16,$19
	br $31,$L770
	.align 4
$L772:
	ldbu $7,0($19)
	lda $2,1($2)
	beq $7,$L771
$L770:
	ldbu $18,0($2)
	cmpeq $2,$28,$6
	lda $19,1($19)
	cmpeq $6,0,$20
	cmpeq $18,$7,$21
	cmpult $31,$18,$23
	and $23,$21,$24
	and $20,$24,$25
	bne $25,$L772
$L771:
	ldbu $1,0($2)
	cmpeq $1,$7,$3
	bne $3,$L777
	lda $16,1($16)
	br $31,$L785
	.align 4
$L786:
	mov $31,$0
	ret $31,($26),1
$L777:
	mov $16,$0
$L766:
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
	fbne $f10,$L798
	cmptlt $f31,$f16,$f1
	fbeq $f1,$L792
	cmptlt $f17,$f31,$f11
	fbne $f11,$L791
$L792:
	ret $31,($26),1
	.align 4
$L798:
	cmptlt $f31,$f17,$f12
	fbeq $f12,$L792
$L791:
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
	beq $19,$L799
	cmpult $17,$19,$1
	mov $31,$0
	bne $1,$L799
	subq $17,$19,$17
	addq $16,$17,$6
	cmpule $16,$6,$2
	beq $2,$L799
	ldbu $22,0($18)
	lda $19,-1($19)
	mov $16,$0
	lda $18,1($18)
	sextb $22,$22
	br $31,$L805
	.align 4
$L809:
	mov $17,$0
$L801:
	cmpult $6,$0,$7
	bne $7,$L810
$L805:
	ldbu $3,0($0)
	lda $17,1($0)
	sextb $3,$4
	cmpeq $4,$22,$5
	beq $5,$L809
	mov $18,$1
	beq $19,$L799
$L804:
	mov $17,$21
	addq $17,$19,$2
	br $31,$L802
	.align 4
$L803:
	bne $23,$L799
$L802:
	ldbu $16,0($21)
	ldbu $20,0($1)
	lda $21,1($21)
	lda $1,1($1)
	cmpeq $21,$2,$23
	cmpeq $16,$20,$24
	bne $24,$L803
	cmpule $17,$6,$0
	beq $0,$L810
	ldbu $8,0($17)
	lda $0,1($17)
	sextb $8,$25
	cmpeq $25,$22,$27
	beq $27,$L801
	mov $17,$28
	mov $18,$1
	mov $0,$17
	mov $28,$0
	br $31,$L804
	.align 4
$L810:
	mov $31,$0
$L799:
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
	stq $9,8($30)
	stq $10,16($30)
	.cfi_offset 9, -24
	.cfi_offset 10, -16
	mov $16,$9
	mov $18,$10
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	beq $18,$L817
	ldq $27,memmove($29)		!literal!73
	jsr $26,($27),memmove		!lituse_jsr!73
	ldah $29,0($26)		!gpdisp!74
	lda $29,0($29)		!gpdisp!74
$L817:
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
	fbne $f10,$L843
	ldah $6,$LC20($29)		!gprelhigh
	mov $31,$5
	lds $f11,$LC20($6)		!gprellow
	cmptle $f11,$f16,$f0
	fbeq $f0,$L844
$L824:
	ldah $3,$LC10($29)		!gprelhigh
	lds $f22,$LC20($6)		!gprellow
	mov $31,$4
	lds $f23,$LC10($3)		!gprellow
	.align 4
$L830:
	mult $f16,$f23,$f16
	addl $4,1,$4
	cmptle $f22,$f16,$f24
	fbne $f24,$L830
	cpysn $f16,$f16,$f0
	cmpeq $5,0,$7
	stl $4,0($17)
	itoft $7,$f25
	fcmovne $f25,$f16,$f0
	ret $31,($26),1
	.align 4
$L844:
	ldah $1,$LC10($29)		!gprelhigh
	lds $f1,$LC10($1)		!gprellow
	cmptlt $f16,$f1,$f12
	fbeq $f12,$L827
	cmpteq $f16,$f31,$f13
	fbeq $f13,$L836
$L827:
	cpys $f16,$f16,$f0
	stl $31,0($17)
	ret $31,($26),1
	.align 4
$L843:
	ldah $0,$LC16($29)		!gprelhigh
	cpysn $f16,$f16,$f14
	lds $f15,$LC16($0)		!gprellow
	cmptle $f16,$f15,$f17
	fbeq $f17,$L845
	cpys $f14,$f14,$f16
	lda $5,1($31)
	ldah $6,$LC20($29)		!gprelhigh
	br $31,$L824
	.align 4
$L845:
	ldah $2,$LC18($29)		!gprelhigh
	lds $f18,$LC18($2)		!gprellow
	cmptlt $f18,$f16,$f19
	fbeq $f19,$L827
	lda $5,1($31)
	ldah $1,$LC10($29)		!gprelhigh
$L825:
	cpys $f14,$f14,$f16
	lds $f20,$LC10($1)		!gprellow
	mov $31,$4
	.align 4
$L832:
	addt $f16,$f16,$f16
	subl $4,1,$4
	cmptlt $f16,$f20,$f21
	fbne $f21,$L832
	cpysn $f16,$f16,$f0
	cmpeq $5,0,$7
	stl $4,0($17)
	itoft $7,$f25
	fcmovne $f25,$f16,$f0
	ret $31,($26),1
$L836:
	cpys $f16,$f16,$f14
	br $31,$L825
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
	beq $16,$L846
	.align 4
$L848:
	and $16,1,$1
	srl $16,1,$16
	subq $31,$1,$2
	and $2,$17,$3
	addq $17,$17,$17
	addq $0,$3,$0
	bne $16,$L848
$L846:
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
	bne $4,$L853
	br $31,$L870
	.align 4
$L856:
	cmpult $19,$3,$20
	cmpult $31,$5,$21
	addl $31,$7,$17
	addl $31,$6,$1
	and $20,$21,$22
	beq $22,$L855
$L853:
	addl $17,$17,$7
	addl $1,$1,$6
	cmplt $17,0,$8
	zapnot $7,15,$19
	zapnot $6,15,$5
	beq $8,$L856
$L857:
	mov $31,$0
	br $31,$L859
	.align 4
$L873:
	zapnot $16,15,$3
$L859:
	zapnot $17,15,$23
	zapnot $1,15,$25
	bis $31,$31,$27
	subl $16,$17,$24
	cmpule $23,$3,$3
	srl $23,1,$17
	cmovne $3,$1,$27
	srl $25,1,$1
	cmovne $3,$24,$16
	bis $0,$27,$28
	addl $31,$16,$16
	addl $31,$28,$0
	bne $1,$L873
$L858:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L855:
	mov $31,$0
	bne $1,$L857
	cmovne $18,$16,$0
	ret $31,($26),1
$L870:
	cmpule $2,$3,$0
	subl $16,$17,$17
	cmovne $0,$17,$16
	addl $31,$0,$0
	addl $31,$16,$16
	br $31,$L858
	.cfi_endproc
$LFE103:
	.end udivmodsi4
	.align 2
	.align 4
	.globl __clrsbqi2
	.ent __clrsbqi2
$__clrsbqi2..ng:
__clrsbqi2:
	.frame $30,0,$26,0
$LFB104:
	.cfi_startproc
	.prologue 0
	sra $16,7,$1
	lda $2,7($31)
	xor $16,$1,$0
	cmpeq $16,$1,$16
	sll $0,8,$3
	zapnot $3,15,$4
	ctlz $4,$5
	subl $5,33,$0
	cmovne $16,$2,$0
	ret $31,($26),1
	.cfi_endproc
$LFE104:
	.end __clrsbqi2
	.align 2
	.align 4
	.globl __clrsbdi2
	.ent __clrsbdi2
$__clrsbdi2..ng:
__clrsbdi2:
	.frame $30,0,$26,0
$LFB105:
	.cfi_startproc
	.prologue 0
	sra $16,63,$1
	xor $16,$1,$0
	cmpeq $16,$1,$16
	ctlz $0,$2
	subl $2,1,$0
	cmovne $16,63,$0
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
	beq $16,$L881
	.align 4
$L882:
	and $16,1,$1
	zapnot $16,15,$16
	addl $17,$17,$2
	subl $31,$1,$3
	srl $16,1,$16
	and $17,$3,$4
	addl $31,$2,$17
	addl $4,$0,$0
	bne $16,$L882
$L881:
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
	zapnot $18,15,$7
	cmpult $16,$17,$1
	bic $18,7,$8
	srl $7,3,$3
	bne $1,$L890
	addq $17,$7,$0
	cmpule $16,$0,$2
	bne $2,$L928
$L890:
	mov $17,$22
	mov $16,$23
	s8addq $3,$17,$20
	beq $3,$L926
	.align 4
$L893:
	ldq $21,0($22)
	lda $22,8($22)
	lda $23,8($23)
	cmpeq $22,$20,$24
	stq $21,-8($23)
	beq $24,$L893
	zapnot $8,15,$27
	cmpule $7,$27,$25
	bne $25,$L886
	subl $18,$8,$28
	subl $28,1,$1
	zapnot $1,15,$3
	cmpule $3,13,$0
	bne $0,$L895
	lda $2,1($27)
	addq $16,$27,$5
	addq $17,$2,$6
	subq $5,$6,$4
	cmpule $4,6,$19
	bne $19,$L895
	subl $31,$5,$18
	mov $31,$0
	and $18,7,$20
	beq $20,$L896
	addq $17,$27,$21
	and $18,6,$22
	ldbu $23,0($21)
	stb $23,0($5)
	beq $22,$L929
	ldbu $24,0($6)
	addq $16,$2,$3
	cmpule $20,2,$5
	addl $8,2,$25
	zapnot $20,15,$0
	stb $24,0($3)
	bne $5,$L904
	zapnot $25,15,$2
	and $18,4,$4
	addl $8,3,$24
	addq $17,$2,$19
	addq $16,$2,$18
	ldbu $21,0($19)
	stb $21,0($18)
	beq $4,$L908
	zapnot $24,15,$22
	cmpule $0,4,$3
	addl $8,4,$24
	addq $17,$22,$23
	addq $16,$22,$1
	ldbu $5,0($23)
	stb $5,0($1)
	bne $3,$L908
	zapnot $24,15,$2
	cmpeq $0,5,$4
	addl $8,5,$24
	addq $17,$2,$19
	addq $16,$2,$18
	ldbu $21,0($19)
	stb $21,0($18)
	bne $4,$L908
	zapnot $24,15,$25
	cmpeq $0,7,$5
	addl $8,6,$24
	addq $17,$25,$23
	addq $16,$25,$3
	ldbu $2,0($23)
	stb $2,0($3)
	beq $5,$L908
	zapnot $24,15,$6
	addl $8,7,$8
	addq $17,$6,$4
	addq $16,$6,$19
	ldbu $18,0($4)
	stb $18,0($19)
$L896:
	subl $28,$20,$28
	addq $0,$27,$27
	zapnot $28,15,$20
	addq $17,$27,$1
	addq $16,$27,$24
	srl $20,3,$0
	s8addq $0,$1,$21
	.align 4
$L899:
	ldq_u $22,0($1)
	ldq_u $25,7($1)
	lda $24,8($24)
	extql $22,$1,$23
	extqh $25,$1,$3
	lda $1,8($1)
	bis $23,$3,$2
	cmpeq $21,$1,$5
	stq $2,-8($24)
	beq $5,$L899
	bic $28,7,$4
	and $28,7,$6
	addl $4,$8,$8
	beq $6,$L886
	zapnot $8,15,$19
	addl $8,1,$18
	addq $17,$19,$28
	zapnot $18,15,$20
	addq $16,$19,$27
	ldbu $0,0($28)
	cmpule $7,$20,$21
	stb $0,0($27)
	bne $21,$L886
	addq $17,$20,$22
	addl $8,2,$25
	addq $16,$20,$24
	ldbu $23,0($22)
	zapnot $25,15,$3
	cmpule $7,$3,$1
	stb $23,0($24)
	bne $1,$L886
	addq $17,$3,$5
	addl $8,3,$2
	addq $16,$3,$6
	ldbu $19,0($5)
	zapnot $2,15,$18
	cmpule $7,$18,$4
	stb $19,0($6)
	bne $4,$L886
	addq $17,$18,$28
	addl $8,4,$27
	addq $16,$18,$20
	ldbu $0,0($28)
	zapnot $27,15,$21
	cmpule $7,$21,$22
	stb $0,0($20)
	bne $22,$L886
	addq $17,$21,$25
	addl $8,5,$24
	addq $16,$21,$23
	ldbu $3,0($25)
	zapnot $24,15,$5
	cmpule $7,$5,$1
	stb $3,0($23)
	bne $1,$L886
	addq $17,$5,$2
	addl $8,6,$8
	addq $16,$5,$6
	ldbu $19,0($2)
	zapnot $8,15,$18
	cmpule $7,$18,$7
	stb $19,0($6)
	bne $7,$L886
	addq $17,$18,$17
	addq $16,$18,$16
	ldbu $4,0($17)
	stb $4,0($16)
	ret $31,($26),1
	.align 4
$L928:
	subl $18,1,$4
	zapnot $4,15,$8
	beq $18,$L886
	.align 4
$L903:
	addq $17,$8,$5
	addq $16,$8,$6
	lda $8,-1($8)
	ldbu $18,0($5)
	lda $19,1($8)
	stb $18,0($6)
	bne $19,$L903
$L886:
	ret $31,($26),1
	.align 4
$L908:
	mov $24,$8
	br $31,$L896
	.align 4
$L926:
	zapnot $8,15,$27
	beq $18,$L930
$L895:
	subl $18,1,$28
	lda $20,1($17)
	addq $17,$27,$24
	addq $16,$27,$23
	subl $28,$8,$0
	addq $20,$27,$27
	zapnot $0,15,$21
	addq $27,$21,$22
	.align 4
$L901:
	ldbu $25,0($24)
	lda $24,1($24)
	lda $23,1($23)
	cmpeq $22,$24,$3
	stb $25,-1($23)
	beq $3,$L901
	ret $31,($26),1
$L929:
	addl $8,1,$8
	zapnot $20,15,$0
	br $31,$L896
$L904:
	mov $25,$8
	br $31,$L896
$L930:
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
	bne $2,$L935
	addq $17,$1,$0
	cmpule $16,$0,$3
	bne $3,$L962
$L935:
	beq $6,$L934
	subl $6,1,$20
	zapnot $20,15,$21
	cmpule $21,11,$22
	bne $22,$L938
	lda $23,2($17)
	subq $16,$23,$24
	cmpule $24,4,$25
	bne $25,$L938
	srl $16,1,$27
	subl $31,$27,$28
	and $28,3,$1
	beq $1,$L947
	ldwu $3,0($17)
	and $28,2,$2
	zapnot $1,15,$4
	lda $0,1($31)
	stw $3,0($16)
	beq $2,$L939
	ldwu $5,2($17)
	cmpeq $4,3,$7
	lda $0,2($31)
	stw $5,2($16)
	beq $7,$L939
	ldwu $8,4($17)
	mov $1,$0
	stw $8,4($16)
$L939:
	subl $6,$1,$19
	addq $4,$4,$20
	zapnot $19,15,$21
	addq $17,$20,$1
	addq $16,$20,$27
	srl $21,2,$22
	s8addq $22,$1,$23
	.align 4
$L941:
	ldq_u $24,0($1)
	ldq_u $25,7($1)
	lda $27,8($27)
	extql $24,$1,$28
	extqh $25,$1,$4
	lda $1,8($1)
	bis $28,$4,$2
	cmpeq $23,$1,$3
	stq $2,-8($27)
	beq $3,$L941
	bic $19,3,$5
	and $19,3,$7
	addl $5,$0,$0
	beq $7,$L934
	zapnot $0,15,$8
	zapnot $6,15,$20
	addl $0,1,$19
	addq $8,$8,$21
	zapnot $19,15,$22
	addq $17,$21,$23
	addq $16,$21,$24
	cmpule $6,$22,$6
	ldwu $25,0($23)
	stw $25,0($24)
	bne $6,$L934
	addq $22,$22,$27
	addl $0,2,$28
	addq $17,$27,$4
	zapnot $28,15,$2
	addq $16,$27,$1
	ldwu $3,0($4)
	cmpule $20,$2,$5
	stw $3,0($1)
	bne $5,$L934
	addq $2,$2,$7
	addq $17,$7,$0
	addq $16,$7,$8
	ldwu $19,0($0)
	stw $19,0($8)
$L934:
	blbc $18,$L931
$L963:
	subl $18,1,$18
	zapnot $18,15,$25
	addq $17,$25,$17
	addq $16,$25,$16
	ldbu $27,0($17)
	stb $27,0($16)
	ret $31,($26),1
	.align 4
$L962:
	subl $18,1,$4
	zapnot $4,15,$8
	beq $18,$L931
	.align 4
$L946:
	addq $17,$8,$5
	addq $16,$8,$7
	lda $8,-1($8)
	ldbu $18,0($5)
	lda $19,1($8)
	stb $18,0($7)
	bne $19,$L946
$L931:
	ret $31,($26),1
	.align 4
$L947:
	mov $31,$0
	mov $31,$4
	br $31,$L939
	.align 4
$L938:
	addq $6,$6,$20
	mov $17,$23
	mov $16,$24
	addq $20,$17,$21
	.align 4
$L943:
	ldwu $22,0($23)
	lda $23,2($23)
	lda $24,2($24)
	cmpeq $21,$23,$6
	stw $22,-2($24)
	beq $6,$L943
	blbc $18,$L931
	br $31,$L963
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
	zapnot $18,15,$7
	cmpult $16,$17,$2
	bic $18,3,$6
	srl $7,2,$1
	bne $2,$L969
	addq $17,$7,$0
	cmpule $16,$0,$3
	bne $3,$L1009
$L969:
	beq $1,$L1010
	subl $1,1,$20
	zapnot $20,15,$21
	cmpule $21,23,$22
	bne $22,$L971
	lda $23,4($17)
	cmpeq $16,$23,$24
	bne $24,$L971
	and $16,4,$25
	mov $31,$0
	cmpult $31,$25,$27
	beq $27,$L972
	ldl $28,0($17)
	mov $27,$0
	stl $28,0($16)
$L972:
	subl $1,$27,$5
	s4addq $27,$17,$1
	s4addq $27,$16,$4
	zapnot $5,15,$2
	srl $2,1,$3
	s8addq $3,$1,$8
	.align 4
$L973:
	ldq_u $19,0($1)
	ldq_u $20,7($1)
	lda $4,8($4)
	extql $19,$1,$21
	extqh $20,$1,$22
	lda $1,8($1)
	bis $21,$22,$23
	cmpeq $1,$8,$24
	stq $23,-8($4)
	beq $24,$L973
	blbc $5,$L976
	bic $5,1,$25
	addl $25,$0,$27
	zapnot $27,15,$28
	s4addq $28,$17,$0
	s4addq $28,$16,$5
	ldl $2,0($0)
	stl $2,0($5)
$L976:
	zapnot $6,15,$21
	cmpule $7,$21,$22
	bne $22,$L964
	subl $18,$6,$27
	subl $27,1,$1
	zapnot $1,15,$23
	cmpule $23,13,$24
	bne $24,$L967
	lda $25,1($21)
	addq $16,$21,$28
	addq $17,$25,$0
	subq $28,$0,$5
	cmpule $5,6,$2
	bne $2,$L967
	subl $31,$28,$18
	mov $31,$4
	and $18,7,$8
	beq $8,$L977
	addq $17,$21,$19
	and $18,6,$20
	ldbu $3,0($19)
	stb $3,0($28)
	beq $20,$L1011
	ldbu $24,0($0)
	addq $16,$25,$22
	cmpule $8,2,$23
	addl $6,2,$25
	zapnot $8,15,$4
	stb $24,0($22)
	bne $23,$L986
	zapnot $25,15,$28
	and $18,4,$5
	addl $6,3,$24
	addq $17,$28,$2
	addq $16,$28,$18
	ldbu $19,0($2)
	stb $19,0($18)
	beq $5,$L990
	zapnot $24,15,$20
	cmpule $4,4,$3
	addl $6,4,$24
	addq $17,$20,$1
	addq $16,$20,$22
	ldbu $23,0($1)
	stb $23,0($22)
	bne $3,$L990
	zapnot $24,15,$28
	cmpeq $4,5,$5
	addl $6,5,$24
	addq $17,$28,$2
	addq $16,$28,$18
	ldbu $19,0($2)
	stb $19,0($18)
	bne $5,$L990
	zapnot $24,15,$25
	cmpeq $4,7,$22
	addl $6,6,$24
	addq $17,$25,$23
	addq $16,$25,$3
	ldbu $28,0($23)
	stb $28,0($3)
	beq $22,$L990
	zapnot $24,15,$0
	addl $6,7,$6
	addq $17,$0,$5
	addq $16,$0,$2
	ldbu $18,0($5)
	stb $18,0($2)
$L977:
	subl $27,$8,$27
	addq $4,$21,$21
	zapnot $27,15,$8
	addq $17,$21,$1
	addq $16,$21,$4
	srl $8,3,$19
	s8addq $19,$1,$20
	.align 4
$L980:
	ldq_u $25,0($1)
	ldq_u $24,7($1)
	lda $4,8($4)
	extql $25,$1,$23
	extqh $24,$1,$3
	lda $1,8($1)
	bis $23,$3,$28
	cmpeq $1,$20,$22
	stq $28,-8($4)
	beq $22,$L980
	bic $27,7,$0
	and $27,7,$5
	addl $0,$6,$6
	beq $5,$L964
	zapnot $6,15,$18
	addl $6,1,$2
	addq $17,$18,$27
	zapnot $2,15,$8
	addq $16,$18,$21
	ldbu $19,0($27)
	cmpule $7,$8,$20
	stb $19,0($21)
	bne $20,$L964
	addq $17,$8,$25
	addl $6,2,$24
	addq $16,$8,$23
	ldbu $1,0($25)
	zapnot $24,15,$3
	cmpule $7,$3,$4
	stb $1,0($23)
	bne $4,$L964
	addq $17,$3,$28
	addl $6,3,$22
	addq $16,$3,$0
	ldbu $5,0($28)
	zapnot $22,15,$18
	cmpule $7,$18,$2
	stb $5,0($0)
	bne $2,$L964
	addq $17,$18,$27
	addl $6,4,$21
	addq $16,$18,$8
	ldbu $19,0($27)
	zapnot $21,15,$20
	cmpule $7,$20,$25
	stb $19,0($8)
	bne $25,$L964
	addq $17,$20,$24
	addl $6,5,$23
	addq $16,$20,$1
	ldbu $3,0($24)
	zapnot $23,15,$28
	cmpule $7,$28,$4
	stb $3,0($1)
	bne $4,$L964
	addq $17,$28,$22
	addl $6,6,$6
	addq $16,$28,$0
	ldbu $5,0($22)
	zapnot $6,15,$18
	cmpule $7,$18,$7
	stb $5,0($0)
	bne $7,$L964
	addq $17,$18,$17
	addq $16,$18,$16
	ldbu $2,0($17)
	stb $2,0($16)
	ret $31,($26),1
	.align 4
$L1009:
	subl $18,1,$4
	zapnot $4,15,$8
	beq $18,$L964
	.align 4
$L984:
	addq $17,$8,$5
	addq $16,$8,$6
	lda $8,-1($8)
	ldbu $18,0($5)
	lda $19,1($8)
	stb $18,0($6)
	bne $19,$L984
$L964:
	ret $31,($26),1
	.align 4
$L990:
	mov $24,$6
	br $31,$L977
	.align 4
$L971:
	mov $17,$20
	mov $16,$3
	s4addq $1,$17,$8
	.align 4
$L975:
	ldl $19,0($20)
	lda $20,4($20)
	lda $3,4($3)
	cmpeq $8,$20,$4
	stl $19,-4($3)
	beq $4,$L975
	br $31,$L976
	.align 4
$L1010:
	zapnot $6,15,$21
	beq $18,$L1012
$L967:
	subl $18,1,$27
	lda $8,1($17)
	addq $17,$21,$23
	addq $16,$21,$1
	subl $27,$6,$19
	addq $8,$21,$21
	zapnot $19,15,$20
	addq $20,$21,$25
	.align 4
$L982:
	ldbu $24,0($23)
	lda $23,1($23)
	lda $1,1($1)
	cmpeq $25,$23,$3
	stb $24,-1($1)
	beq $3,$L982
	ret $31,($26),1
$L1011:
	addl $6,1,$6
	zapnot $8,15,$4
	br $31,$L977
$L986:
	mov $25,$6
	br $31,$L977
$L1012:
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
	ldah $29,0($27)		!gpdisp!77
	lda $29,0($29)		!gpdisp!77
$__modi..ng:
	.prologue 1
	ldq $27,__reml($29)		!literal!76
	mov $16,$24
	mov $17,$25
	jsr $23,($27),__reml		!lituse_jsrdirect!76
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
	.frame $30,0,$26,0
$LFB111:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$16
	itoft $16,$f0
	cvtqt $f0,$f0
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
	.frame $30,0,$26,0
$LFB112:
	.cfi_startproc
	.prologue 0
	zapnot $16,15,$16
	itoft $16,$f0
	cvtqs $f0,$f0
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
	.frame $30,0,$26,0
$LFB113:
	.cfi_startproc
	.prologue 0
	blt $16,$L1021
	itoft $16,$f10
	cvtqt $f10,$f0
	ret $31,($26),1
	.align 4
$L1021:
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$0
	itoft $0,$f11
	cvtqt $f11,$f0
	addt $f0,$f0,$f0
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
	.frame $30,0,$26,0
$LFB114:
	.cfi_startproc
	.prologue 0
	blt $16,$L1024
	itoft $16,$f10
	cvtqs $f10,$f0
	ret $31,($26),1
	.align 4
$L1024:
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$0
	itoft $0,$f11
	cvtqs $f11,$f0
	adds $f0,$f0,$f0
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
	ldah $29,0($27)		!gpdisp!79
	lda $29,0($29)		!gpdisp!79
$__umodi..ng:
	.prologue 1
	ldq $27,__remlu($29)		!literal!78
	mov $16,$24
	mov $17,$25
	jsr $23,($27),__remlu		!lituse_jsrdirect!78
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
	bne $2,$L1030
	srl $1,14,$0
	bne $0,$L1029
	srl $1,13,$0
	bne $0,$L1031
	srl $1,12,$3
	bne $3,$L1032
	srl $1,11,$4
	bne $4,$L1033
	srl $1,10,$5
	bne $5,$L1034
	srl $1,9,$6
	bne $6,$L1035
	srl $1,8,$7
	bne $7,$L1036
	srl $1,7,$8
	bne $8,$L1037
	srl $1,6,$17
	bne $17,$L1038
	srl $1,5,$18
	bne $18,$L1039
	srl $1,4,$19
	bne $19,$L1040
	srl $1,3,$20
	bne $20,$L1041
	srl $1,2,$21
	bne $21,$L1042
	cmpeq $16,0,$16
	srl $1,1,$22
	lda $23,14($31)
	lda $0,15($16)
	cmovne $22,$23,$0
	ret $31,($26),1
$L1042:
	lda $0,13($31)
$L1029:
	ret $31,($26),1
$L1030:
	mov $31,$0
	ret $31,($26),1
$L1041:
	lda $0,12($31)
	ret $31,($26),1
$L1031:
	lda $0,2($31)
	ret $31,($26),1
$L1032:
	lda $0,3($31)
	ret $31,($26),1
$L1033:
	lda $0,4($31)
	ret $31,($26),1
$L1034:
	lda $0,5($31)
	ret $31,($26),1
$L1035:
	lda $0,6($31)
	ret $31,($26),1
$L1036:
	lda $0,7($31)
	ret $31,($26),1
$L1037:
	lda $0,8($31)
	ret $31,($26),1
$L1038:
	lda $0,9($31)
	ret $31,($26),1
$L1039:
	lda $0,10($31)
	ret $31,($26),1
$L1040:
	lda $0,11($31)
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
	blbs $16,$L1048
	and $16,2,$1
	bne $1,$L1049
	and $16,4,$0
	bne $0,$L1050
	and $16,8,$2
	bne $2,$L1051
	and $16,16,$3
	bne $3,$L1052
	and $16,32,$4
	bne $4,$L1053
	and $16,64,$5
	bne $5,$L1054
	and $16,128,$6
	bne $6,$L1055
	lda $7,256($31)
	and $16,$7,$8
	bne $8,$L1056
	lda $17,512($31)
	and $16,$17,$18
	bne $18,$L1057
	lda $19,1024($31)
	and $16,$19,$20
	bne $20,$L1058
	lda $21,2048($31)
	and $16,$21,$22
	bne $22,$L1059
	lda $23,4096($31)
	and $16,$23,$24
	bne $24,$L1060
	lda $25,8192($31)
	and $16,$25,$27
	bne $27,$L1061
	srl $16,15,$28
	lda $2,16384($31)
	lda $1,14($31)
	cmpeq $28,0,$0
	and $16,$2,$16
	lda $0,15($0)
	cmovne $16,$1,$0
	ret $31,($26),1
$L1048:
	mov $31,$0
	ret $31,($26),1
$L1049:
	lda $0,1($31)
	ret $31,($26),1
$L1060:
	lda $0,12($31)
	ret $31,($26),1
$L1050:
	lda $0,2($31)
	ret $31,($26),1
$L1051:
	lda $0,3($31)
	ret $31,($26),1
$L1052:
	lda $0,4($31)
	ret $31,($26),1
$L1053:
	lda $0,5($31)
	ret $31,($26),1
$L1054:
	lda $0,6($31)
	ret $31,($26),1
$L1055:
	lda $0,7($31)
	ret $31,($26),1
$L1056:
	lda $0,8($31)
	ret $31,($26),1
$L1057:
	lda $0,9($31)
	ret $31,($26),1
$L1058:
	lda $0,10($31)
	ret $31,($26),1
$L1059:
	lda $0,11($31)
	ret $31,($26),1
$L1061:
	lda $0,13($31)
	ret $31,($26),1
	.cfi_endproc
$LFE117:
	.end __ctzhi2
	.align 2
	.align 4
	.globl __fixunssfsi
	.ent __fixunssfsi
__fixunssfsi:
	.frame $30,0,$26,0
$LFB118:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!80
	lda $29,0($29)		!gpdisp!80
$__fixunssfsi..ng:
	.prologue 1
	ldah $1,$LC21($29)		!gprelhigh
	lds $f10,$LC21($1)		!gprellow
	cmptle $f10,$f16,$f11
	fbne $f11,$L1070
	cvttq/c $f16,$f16
	ftoit $f16,$0
	ret $31,($26),1
	.align 4
$L1070:
	subs $f16,$f10,$f0
	cvttq/c $f0,$f1
	ftoit $f1,$0
	ldah $2,1($0)
	lda $0,-32768($2)
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
	and $16,1,$0
	and $16,4,$1
	and $16,8,$5
	cmpult $31,$2,$3
	cmpult $31,$1,$6
	cmpult $31,$5,$7
	and $16,16,$4
	addl $0,$3,$8
	cmpult $31,$4,$17
	and $16,32,$18
	and $16,64,$19
	addl $8,$6,$20
	cmpult $31,$18,$21
	cmpult $31,$19,$22
	and $16,128,$23
	srl $16,8,$27
	srl $16,9,$28
	addl $20,$7,$24
	cmpult $31,$23,$25
	addl $24,$17,$2
	srl $16,10,$1
	and $27,1,$7
	and $28,1,$6
	srl $16,11,$4
	srl $16,12,$3
	addl $2,$21,$0
	and $1,1,$5
	addl $0,$22,$8
	srl $16,13,$19
	and $4,1,$17
	and $3,1,$18
	addl $8,$25,$20
	srl $16,14,$22
	and $19,1,$21
	addl $20,$7,$23
	srl $16,15,$16
	and $22,1,$24
	addl $23,$6,$25
	addl $25,$5,$27
	addl $27,$17,$28
	addl $28,$18,$2
	addl $2,$21,$7
	addl $7,$24,$6
	addl $6,$16,$1
	and $1,1,$0
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
	and $16,1,$0
	and $16,4,$1
	and $16,8,$5
	cmpult $31,$2,$3
	cmpult $31,$1,$6
	cmpult $31,$5,$7
	and $16,16,$4
	addl $0,$3,$8
	cmpult $31,$4,$17
	and $16,32,$18
	and $16,64,$19
	addl $8,$6,$20
	cmpult $31,$18,$21
	cmpult $31,$19,$22
	and $16,128,$23
	srl $16,8,$27
	srl $16,9,$28
	addl $20,$7,$24
	cmpult $31,$23,$25
	addl $24,$17,$2
	srl $16,10,$1
	and $27,1,$7
	and $28,1,$6
	srl $16,11,$4
	srl $16,12,$3
	addl $2,$21,$0
	and $1,1,$5
	addl $0,$22,$8
	srl $16,13,$19
	and $4,1,$17
	and $3,1,$18
	addl $8,$25,$20
	srl $16,14,$22
	and $19,1,$21
	addl $20,$7,$23
	srl $16,15,$16
	and $22,1,$24
	addl $23,$6,$25
	addl $25,$5,$27
	addl $27,$17,$28
	addl $28,$18,$2
	addl $2,$21,$7
	addl $7,$24,$6
	addl $6,$16,$0
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
	beq $16,$L1074
	.align 4
$L1075:
	and $16,1,$1
	zapnot $16,15,$16
	addl $17,$17,$2
	subl $31,$1,$3
	srl $16,1,$16
	and $17,$3,$4
	addl $31,$2,$17
	addl $4,$0,$0
	bne $16,$L1075
$L1074:
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
	beq $16,$L1080
	beq $17,$L1080
	.align 4
$L1081:
	and $17,1,$1
	zapnot $17,15,$17
	addl $16,$16,$2
	subl $31,$1,$3
	srl $17,1,$17
	and $16,$3,$4
	addl $31,$2,$16
	addl $4,$0,$0
	bne $17,$L1081
$L1080:
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
	bne $4,$L1089
	br $31,$L1106
	.align 4
$L1092:
	cmpult $19,$3,$20
	cmpult $31,$5,$21
	addl $31,$7,$17
	addl $31,$6,$1
	and $20,$21,$22
	beq $22,$L1091
$L1089:
	addl $17,$17,$7
	addl $1,$1,$6
	cmplt $17,0,$8
	zapnot $7,15,$19
	zapnot $6,15,$5
	beq $8,$L1092
$L1093:
	mov $31,$0
	br $31,$L1095
	.align 4
$L1109:
	zapnot $16,15,$3
$L1095:
	zapnot $17,15,$23
	zapnot $1,15,$25
	bis $31,$31,$27
	subl $16,$17,$24
	cmpule $23,$3,$3
	srl $23,1,$17
	cmovne $3,$1,$27
	srl $25,1,$1
	cmovne $3,$24,$16
	bis $0,$27,$28
	addl $31,$16,$16
	addl $31,$28,$0
	bne $1,$L1109
$L1094:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L1091:
	mov $31,$0
	bne $1,$L1093
	cmovne $18,$16,$0
	ret $31,($26),1
$L1106:
	cmpule $2,$3,$0
	subl $16,$17,$17
	cmovne $0,$17,$16
	addl $31,$0,$0
	addl $31,$16,$16
	br $31,$L1094
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
	fbne $f10,$L1111
	cmptlt $f17,$f16,$f0
	ftoit $f0,$0
	cmpult $31,$0,$0
$L1111:
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
	fbne $f10,$L1114
	cmptlt $f17,$f16,$f17
	ftoit $f17,$0
	cmpult $31,$0,$0
$L1114:
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
	bne $1,$L1128
	mov $31,$0
	beq $17,$L1121
	mov $31,$6
$L1120:
	lda $21,1($31)
	mov $31,$4
	.align 4
$L1122:
	and $17,1,$0
	cmpeq $21,32,$3
	addl $16,$16,$5
	addl $21,1,$18
	sra $17,1,$17
	subl $31,$0,$7
	cmpeq $3,0,$8
	and $18,0xff,$21
	cmpult $31,$17,$2
	and $16,$7,$19
	addl $31,$5,$16
	and $2,$8,$20
	addl $19,$4,$4
	bne $20,$L1122
	subl $31,$4,$0
	cmoveq $6,$4,$0
$L1121:
	ret $31,($26),1
	.align 4
$L1128:
	subl $31,$17,$17
	lda $6,1($31)
	br $31,$L1120
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
	beq $1,$L1130
	subq $31,$16,$16
	mov $31,$2
	lda $8,1($31)
$L1130:
	cmplt $17,0,$0
	beq $0,$L1131
	subq $31,$17,$17
	mov $2,$8
$L1131:
	zapnot $16,15,$0
	zapnot $17,15,$5
	addl $31,$16,$16
	addl $31,$17,$17
	cmpule $0,$5,$4
	lda $1,1($31)
	beq $4,$L1132
	br $31,$L1150
	.align 4
$L1136:
	cmpult $20,$0,$22
	cmpult $31,$21,$23
	addl $31,$18,$17
	addl $31,$6,$1
	and $22,$23,$5
	beq $5,$L1152
$L1132:
	addl $17,$17,$18
	addl $1,$1,$6
	cmplt $17,0,$19
	zapnot $18,15,$20
	zapnot $6,15,$21
	beq $19,$L1136
$L1134:
	mov $31,$7
	br $31,$L1137
	.align 4
$L1153:
	zapnot $16,15,$0
$L1137:
	zapnot $17,15,$24
	zapnot $1,15,$27
	bis $31,$31,$28
	subl $16,$17,$25
	cmpule $24,$0,$3
	srl $24,1,$17
	cmovne $3,$1,$28
	srl $27,1,$1
	cmovne $3,$25,$16
	bis $7,$28,$2
	addl $31,$16,$16
	addl $31,$2,$7
	bne $1,$L1153
$L1139:
	zapnot $7,15,$5
	subq $31,$5,$0
	cmoveq $8,$5,$0
	ret $31,($26),1
	.align 4
$L1152:
	bne $1,$L1134
	subq $31,$5,$0
	cmoveq $8,$5,$0
	ret $31,($26),1
$L1150:
	cmpule $5,$0,$7
	br $31,$L1139
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
	mov $31,$22
	beq $1,$L1155
	subq $31,$16,$16
	lda $22,1($31)
$L1155:
	subq $31,$17,$2
	zapnot $16,15,$18
	lda $1,1($31)
	addl $31,$16,$16
	cmovge $17,$17,$2
	zapnot $2,15,$3
	addl $31,$2,$2
	cmpule $18,$3,$5
	beq $5,$L1156
	br $31,$L1173
	.align 4
$L1160:
	cmpult $19,$18,$20
	cmpult $31,$6,$21
	addl $31,$8,$2
	addl $31,$7,$1
	and $20,$21,$23
	beq $23,$L1177
$L1156:
	addl $2,$2,$8
	addl $1,$1,$7
	cmplt $2,0,$17
	zapnot $8,15,$19
	zapnot $7,15,$6
	beq $17,$L1160
	br $31,$L1174
	.align 4
$L1177:
	beq $1,$L1159
	.align 4
$L1174:
	zapnot $2,15,$24
	zapnot $1,15,$27
	subl $16,$2,$25
	srl $27,1,$1
	srl $24,1,$2
	cmpule $24,$18,$28
	cmovne $28,$25,$16
	addl $31,$16,$16
	zapnot $16,15,$18
	bne $1,$L1174
$L1159:
	subq $31,$18,$0
	cmoveq $22,$18,$0
	ret $31,($26),1
$L1173:
	cmpule $3,$18,$0
	subl $16,$2,$4
	cmoveq $0,$16,$4
	zapnot $4,15,$18
	br $31,$L1159
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
	lda $5,1($31)
	mov $16,$0
	bne $1,$L1179
	br $31,$L1240
	.align 4
$L1182:
	cmpult $16,$0,$2
	cmpult $31,$1,$3
	and $2,$3,$4
	beq $4,$L1181
	mov $1,$5
	mov $16,$17
$L1179:
	addl $17,$17,$6
	srl $17,15,$8
	addl $5,$5,$7
	zapnot $6,3,$16
	zapnot $7,3,$1
	beq $8,$L1182
	cmpule $17,$0,$19
	srl $5,1,$21
	mov $31,$23
	subl $0,$17,$20
	zapnot $20,3,$24
	zapnot $21,3,$25
	cmovne $19,$5,$23
	srl $17,1,$27
	cmovne $19,$24,$0
	zapnot $23,3,$28
	beq $25,$L1241
$L1186:
	srl $5,2,$22
	srl $17,2,$23
	cmpule $27,$0,$16
	subl $0,$27,$21
	zapnot $21,3,$24
	zapnot $22,3,$27
	cmoveq $16,0,$25
	cmovne $16,$24,$0
	bis $28,$25,$1
	beq $27,$L1184
	srl $5,3,$2
	srl $17,3,$4
	subl $0,$23,$25
	cmpule $23,$0,$28
	zapnot $25,3,$6
	zapnot $2,3,$3
	cmoveq $28,0,$27
	cmoveq $28,$0,$6
	bis $1,$27,$1
	zapnot $6,3,$0
	beq $3,$L1184
	srl $5,4,$19
	srl $17,4,$20
	cmpule $4,$0,$7
	subl $0,$4,$8
	zapnot $8,3,$16
	zapnot $19,3,$21
	cmoveq $7,0,$3
	cmovne $7,$16,$0
	bis $1,$3,$1
	beq $21,$L1184
	srl $5,5,$24
	srl $17,5,$27
	cmpule $20,$0,$22
	subl $0,$20,$23
	zapnot $23,3,$25
	zapnot $24,3,$28
	cmoveq $22,0,$21
	cmovne $22,$25,$0
	bis $1,$21,$1
	beq $28,$L1184
	srl $5,6,$2
	srl $17,6,$6
	cmpule $27,$0,$3
	subl $0,$27,$4
	zapnot $4,3,$7
	zapnot $2,3,$8
	cmoveq $3,0,$28
	cmovne $3,$7,$0
	bis $1,$28,$1
	beq $8,$L1184
	srl $5,7,$16
	srl $17,7,$21
	cmpule $6,$0,$19
	subl $0,$6,$20
	zapnot $20,3,$22
	zapnot $16,3,$23
	cmoveq $19,0,$8
	cmovne $19,$22,$0
	bis $1,$8,$1
	beq $23,$L1184
	extwl $5,1,$25
	srl $17,8,$28
	cmpule $21,$0,$24
	subl $0,$21,$27
	cmoveq $24,0,$23
	zapnot $27,3,$3
	cmovne $24,$3,$0
	bis $1,$23,$1
	beq $25,$L1184
	srl $5,9,$2
	srl $17,9,$4
	cmpule $28,$0,$6
	subl $0,$28,$7
	zapnot $7,3,$8
	zapnot $2,3,$19
	cmoveq $6,0,$25
	cmovne $6,$8,$0
	bis $1,$25,$1
	beq $19,$L1184
	srl $5,10,$21
	srl $17,10,$22
	cmpule $4,$0,$20
	subl $0,$4,$16
	zapnot $16,3,$23
	zapnot $21,3,$24
	cmoveq $20,0,$19
	cmovne $20,$23,$0
	bis $1,$19,$1
	beq $24,$L1184
	srl $5,11,$28
	srl $17,11,$3
	cmpule $22,$0,$27
	subl $0,$22,$25
	zapnot $25,3,$6
	zapnot $28,3,$2
	cmoveq $27,0,$24
	cmovne $27,$6,$0
	bis $1,$24,$1
	beq $2,$L1184
	srl $5,12,$8
	srl $17,12,$19
	cmpule $3,$0,$7
	subl $0,$3,$4
	zapnot $4,3,$20
	zapnot $8,3,$16
	cmoveq $7,0,$2
	cmovne $7,$20,$0
	bis $1,$2,$1
	beq $16,$L1184
	srl $5,13,$23
	srl $17,13,$24
	cmpule $19,$0,$21
	subl $0,$19,$22
	zapnot $22,3,$27
	zapnot $23,3,$25
	cmoveq $21,0,$16
	cmovne $21,$27,$0
	bis $1,$16,$1
	beq $25,$L1184
	srl $5,14,$3
	srl $17,14,$6
	cmpule $24,$0,$28
	subl $0,$24,$2
	zapnot $2,3,$7
	zapnot $3,3,$4
	cmoveq $28,0,$25
	cmovne $28,$7,$0
	bis $1,$25,$1
	beq $4,$L1184
	srl $5,15,$5
	srl $17,15,$17
	cmpule $6,$0,$8
	subl $0,$6,$19
	zapnot $19,3,$20
	zapnot $5,3,$16
	cmoveq $8,0,$4
	cmovne $8,$20,$0
	bis $1,$4,$1
	beq $16,$L1184
	subl $0,$17,$21
	cmpule $17,$0,$22
	zapnot $21,3,$23
	bis $22,$1,$1
	cmovne $22,$23,$0
$L1184:
	cmoveq $18,$1,$0
	ret $31,($26),1
	.align 4
$L1181:
	beq $1,$L1184
	subl $0,$16,$6
	cmpule $16,$0,$7
	lda $19,32767($31)
	mov $31,$28
	zapnot $6,3,$20
	and $5,$19,$25
	and $17,$19,$27
	cmovne $7,$1,$28
	cmovne $7,$20,$0
	mov $1,$5
	mov $16,$17
	br $31,$L1186
$L1240:
	subl $16,$17,$2
	cmpeq $17,$16,$3
	zapnot $2,3,$4
	mov $3,$1
	cmovne $3,$4,$0
	br $31,$L1184
$L1241:
	mov $28,$1
	br $31,$L1184
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
	bne $2,$L1243
	br $31,$L1260
	.align 4
$L1246:
	addq $17,$17,$17
	addq $1,$1,$1
	cmpult $17,$16,$5
	cmpult $31,$1,$3
	and $5,$3,$6
	beq $6,$L1245
$L1243:
	and $17,$4,$0
	beq $0,$L1246
$L1247:
	mov $31,$0
	.align 4
$L1249:
	cmpule $17,$16,$7
	mov $31,$19
	subq $16,$17,$8
	cmovne $7,$1,$19
	srl $1,1,$1
	cmovne $7,$8,$16
	srl $17,1,$17
	bis $0,$19,$0
	bne $1,$L1249
$L1248:
	cmovne $18,$16,$0
	ret $31,($26),1
	.align 4
$L1245:
	mov $31,$0
	bne $1,$L1247
	cmovne $18,$16,$0
	ret $31,($26),1
$L1260:
	cmpule $17,$16,$0
	subq $16,$17,$17
	cmovne $0,$17,$16
	br $31,$L1248
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
	beq $1,$L1264
	lda $20,32($17)
	mov $31,$8
	sll $16,$20,$21
	addl $31,$21,$19
$L1265:
	sll $19,32,$22
	zapnot $8,15,$23
	bis $23,$22,$0
$L1263:
	ret $31,($26),1
	.align 4
$L1264:
	mov $16,$0
	beq $17,$L1263
	lda $2,32($31)
	addl $31,$16,$0
	zapnot $0,15,$4
	sra $16,32,$16
	subl $2,$17,$3
	zapnot $3,15,$7
	sll $16,$17,$5
	sll $0,$17,$6
	srl $4,$7,$17
	bis $17,$5,$18
	addl $31,$6,$8
	addl $31,$18,$19
	br $31,$L1265
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
	beq $1,$L1270
	sll $17,$19,$18
	mov $31,$19
$L1271:
	mov $19,$17
$L1272:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1270:
	beq $19,$L1272
	subq $31,$19,$2
	sll $18,$19,$18
	sll $17,$19,$19
	srl $17,$2,$17
	bis $17,$18,$18
	br $31,$L1271
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
	beq $1,$L1277
	sra $16,32,$18
	sra $16,63,$19
	subl $17,32,$20
	addl $31,$19,$0
	sra $18,$20,$17
$L1278:
	zapnot $17,15,$21
	sll $0,32,$22
	bis $22,$21,$0
$L1276:
	ret $31,($26),1
	.align 4
$L1277:
	mov $16,$0
	beq $17,$L1276
	lda $2,32($31)
	sra $16,32,$3
	zapnot $16,15,$16
	sra $3,$17,$0
	subl $2,$17,$4
	zapnot $4,15,$6
	srl $16,$17,$5
	sll $3,$6,$7
	bis $7,$5,$8
	addl $31,$8,$17
	br $31,$L1278
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
	beq $1,$L1283
	sra $18,63,$3
	sra $18,$19,$17
$L1284:
	mov $3,$18
$L1285:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1283:
	beq $19,$L1285
	srl $17,$19,$17
	sra $18,$19,$3
	subq $31,$19,$2
	sll $18,$2,$18
	bis $18,$17,$17
	br $31,$L1284
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
	srl $16,32,$2
	sll $16,32,$16
	bis $2,$16,$0
	srl $0,16,$1
	sll $0,16,$3
	zapnot $1,51,$4
	zapnot $3,204,$5
	bis $4,$5,$6
	srl $6,8,$7
	sll $6,8,$8
	zapnot $7,85,$17
	zapnot $8,170,$18
	bis $17,$18,$0
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
	inslh $16,7,$1
	inswl $16,3,$16
	bis $1,$16,$2
	srl $2,16,$0
	zapnot $2,250,$3
	zapnot $0,245,$4
	addl $4,$3,$0
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
	ldah $3,1($31)
	zapnot $16,15,$1
	lda $2,16($31)
	lda $5,8($31)
	lda $6,-1($3)
	lda $4,4($31)
	lda $0,2($31)
	cmpule $1,$6,$7
	sll $7,4,$8
	subl $2,$8,$16
	zapnot $16,15,$17
	srl $1,$17,$18
	zapnot $18,2,$19
	zapnot $18,15,$20
	cmpeq $19,0,$21
	s8addl $21,0,$22
	subl $5,$22,$23
	addl $22,$8,$24
	zapnot $23,15,$25
	srl $20,$25,$27
	and $27,240,$28
	zapnot $27,15,$5
	cmpeq $28,0,$3
	s4addl $3,0,$2
	subl $4,$2,$1
	addl $2,$24,$6
	zapnot $1,15,$4
	srl $5,$4,$7
	and $7,12,$8
	zapnot $7,15,$16
	cmpeq $8,0,$17
	addl $17,$17,$18
	subl $0,$18,$19
	addl $18,$6,$20
	zapnot $19,15,$21
	srl $16,$21,$22
	subl $0,$22,$0
	and $22,2,$23
	cmovne $23,0,$0
	addl $0,$20,$0
	ret $31,($26),1
	.cfi_endproc
$LFE139:
	.end __clzsi2
	.align 2
	.align 4
	.globl __clzti2
	.ent __clzti2
$__clzti2..ng:
__clzti2:
	.frame $30,0,$26,0
$LFB140:
	.cfi_startproc
	.prologue 0
	cmpeq $17,0,$0
	cmovne $17,0,$16
	sll $0,6,$2
	lda $1,-1($0)
	and $1,$17,$17
	bis $17,$16,$16
	ctlz $16,$3
	addq $2,$3,$0
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
	bne $3,$L1294
	cmple $1,$2,$4
	lda $0,2($31)
	beq $4,$L1294
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$5
	cmpult $17,$16,$0
	cmpult $16,$17,$6
	lda $0,1($0)
	cmovne $6,$5,$0
$L1294:
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
	bne $3,$L1300
	cmple $1,$2,$4
	lda $0,1($31)
	beq $4,$L1300
	zapnot $16,15,$16
	zapnot $17,15,$17
	lda $6,-1($31)
	cmpult $16,$17,$5
	cmpult $17,$16,$0
	cmovne $5,$6,$0
$L1300:
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
	bne $1,$L1305
	cmple $17,$19,$17
	lda $0,2($31)
	beq $17,$L1305
	cmpult $18,$16,$2
	mov $31,$3
	cmpult $16,$18,$16
	lda $0,1($2)
	cmovne $16,$3,$0
$L1305:
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
	zapnot $16,15,$1
	lda $4,2($31)
	cmpeq $3,0,$0
	sll $0,4,$5
	srl $1,$5,$6
	and $6,0xff,$2
	zapnot $6,15,$7
	cmpeq $2,0,$8
	extql $7,$8,$16
	s8addl $8,$5,$17
	and $16,15,$18
	zapnot $16,15,$19
	cmpeq $18,0,$20
	s4addq $20,0,$21
	s4addl $20,$17,$22
	srl $19,$21,$23
	and $23,3,$24
	zapnot $23,15,$25
	cmpeq $24,0,$27
	addq $27,$27,$28
	addl $27,$27,$3
	srl $25,$28,$1
	addl $3,$22,$0
	and $1,3,$5
	ornot $31,$5,$6
	srl $5,1,$7
	and $6,1,$2
	subl $4,$7,$4
	subl $31,$2,$8
	and $8,$4,$16
	addl $0,$16,$0
	ret $31,($26),1
	.cfi_endproc
$LFE144:
	.end __ctzsi2
	.align 2
	.align 4
	.globl __ctzti2
	.ent __ctzti2
$__ctzti2..ng:
__ctzti2:
	.frame $30,0,$26,0
$LFB145:
	.cfi_startproc
	.prologue 0
	cmpeq $16,0,$0
	cmovne $16,0,$17
	sll $0,6,$2
	lda $1,-1($0)
	and $1,$16,$3
	bis $17,$3,$17
	cttz $17,$4
	addq $2,$4,$0
	ret $31,($26),1
	.cfi_endproc
$LFE145:
	.end __ctzti2
	.align 2
	.align 4
	.globl __ffsti2
	.ent __ffsti2
$__ffsti2..ng:
__ffsti2:
	.frame $30,0,$26,0
$LFB146:
	.cfi_startproc
	.prologue 0
	cttz $17,$1
	cttz $16,$2
	lda $3,65($1)
	cmoveq $17,0,$3
	lda $0,1($2)
	cmoveq $16,$3,$0
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
	beq $1,$L1317
	srl $16,32,$19
	lda $20,32($17)
	mov $31,$7
	srl $19,$20,$21
	addl $31,$21,$18
$L1318:
	sll $7,32,$22
	zapnot $18,15,$23
	bis $23,$22,$0
$L1316:
	ret $31,($26),1
	.align 4
$L1317:
	mov $16,$0
	beq $17,$L1316
	srl $16,32,$0
	zapnot $16,15,$2
	lda $3,32($31)
	subl $3,$17,$4
	srl $2,$17,$5
	sll $0,$4,$6
	srl $0,$17,$17
	bis $6,$5,$8
	addl $31,$17,$7
	addl $31,$8,$18
	br $31,$L1318
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
	beq $1,$L1323
	srl $18,$19,$17
	mov $31,$19
$L1324:
	mov $19,$18
$L1325:
	stq $17,0($0)
	stq $18,8($0)
	ret $31,($26),1
	.align 4
$L1323:
	beq $19,$L1325
	subq $31,$19,$2
	srl $17,$19,$17
	srl $18,$19,$19
	sll $18,$2,$18
	bis $18,$17,$17
	br $31,$L1324
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
	zapnot $16,3,$1
	zapnot $17,3,$3
	mull $1,$3,$2
	extwl $16,2,$16
	mull $3,$16,$0
	extwl $17,2,$17
	mull $1,$17,$4
	mull $16,$17,$6
	zapnot $2,15,$5
	zapnot $2,3,$7
	srl $5,16,$8
	addl $0,$8,$18
	sll $18,16,$19
	zapnot $18,15,$20
	addl $7,$19,$21
	srl $20,16,$22
	zapnot $21,15,$23
	zapnot $21,3,$25
	addl $6,$22,$24
	srl $23,16,$27
	addl $4,$27,$28
	zapnot $28,15,$1
	sll $28,16,$16
	srl $1,16,$3
	addl $25,$16,$17
	addl $24,$3,$2
	zapnot $17,15,$0
	zapnot $2,15,$4
	sll $4,32,$6
	bis $0,$6,$0
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
	mull $3,$2,$0
	extwl $16,2,$1
	mull $2,$1,$6
	extwl $17,2,$4
	mull $3,$4,$7
	sra $17,32,$5
	mull $1,$4,$8
	sra $16,32,$18
	mull $16,$5,$16
	mull $17,$18,$17
	zapnot $0,15,$19
	zapnot $0,3,$20
	srl $19,16,$21
	addl $6,$21,$22
	sll $22,16,$23
	zapnot $22,15,$24
	addl $20,$23,$25
	srl $24,16,$27
	zapnot $25,15,$28
	zapnot $25,3,$4
	addl $8,$27,$1
	srl $28,16,$3
	addl $7,$3,$2
	zapnot $2,15,$0
	sll $2,16,$6
	srl $0,16,$7
	addl $4,$6,$8
	addl $1,$7,$5
	zapnot $8,15,$18
	zapnot $5,15,$19
	sll $19,32,$20
	bis $18,$20,$21
	sra $21,32,$22
	zapnot $21,15,$23
	addl $16,$22,$16
	addl $16,$17,$17
	zapnot $17,15,$24
	sll $24,32,$25
	bis $23,$25,$0
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
	mov $16,$0
	mulq $2,$1,$3
	srl $17,32,$17
	mulq $1,$17,$5
	srl $18,32,$18
	mulq $2,$18,$6
	mulq $17,$18,$7
	srl $3,32,$4
	zapnot $3,15,$8
	addq $5,$4,$16
	zapnot $16,15,$19
	srl $16,32,$20
	addq $6,$19,$21
	addq $20,$7,$22
	sll $21,32,$23
	srl $21,32,$24
	addq $8,$23,$25
	addq $22,$24,$27
	stq $25,0($0)
	stq $27,8($0)
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
	mov $16,$0
	mulq $2,$1,$3
	srl $17,32,$4
	mulq $1,$4,$6
	srl $19,32,$5
	mulq $2,$5,$7
	mulq $4,$5,$8
	mulq $17,$20,$17
	mulq $19,$18,$19
	srl $3,32,$16
	zapnot $3,15,$18
	addq $6,$16,$20
	zapnot $20,15,$21
	srl $20,32,$22
	addq $7,$21,$23
	addq $22,$8,$24
	srl $23,32,$25
	sll $23,32,$27
	addq $24,$25,$28
	addq $18,$27,$2
	addq $17,$28,$1
	stq $2,0($0)
	addq $1,$19,$4
	stq $4,8($0)
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
	mov $16,$0
	subq $18,$1,$2
	stq $17,0($16)
	stq $2,8($16)
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
	addl $31,$16,$2
	extwl $16,2,$3
	xor $3,$2,$4
	zapnot $4,15,$5
	srl $5,8,$6
	xor $6,$4,$7
	zapnot $7,15,$8
	srl $8,4,$17
	xor $17,$7,$18
	and $18,15,$19
	sra $0,$19,$20
	and $20,1,$0
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
	lda $0,27030($31)
	sra $16,32,$1
	xor $1,$16,$3
	addl $31,$3,$2
	extwl $3,2,$4
	xor $4,$2,$5
	zapnot $5,15,$6
	srl $6,8,$7
	xor $7,$5,$8
	zapnot $8,15,$17
	srl $17,4,$18
	xor $18,$8,$19
	and $19,15,$20
	sra $0,$20,$21
	and $21,1,$0
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
	xor $1,$16,$2
	zapnot $2,15,$16
	srl $16,8,$3
	xor $3,$2,$4
	zapnot $4,15,$5
	srl $5,4,$6
	xor $6,$4,$7
	and $7,15,$8
	sra $0,$8,$17
	and $17,1,$0
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
	ldah $2,$LC23($29)		!gprelhigh
	srl $16,1,$6
	ldah $3,$LC24($29)		!gprelhigh
	ldah $1,$LC25($29)		!gprelhigh
	ldq $0,$LC23($2)		!gprellow
	ldq $5,$LC24($3)		!gprellow
	ldq $4,$LC25($1)		!gprellow
	and $6,$0,$7
	subq $16,$7,$16
	srl $16,2,$8
	and $16,$5,$17
	and $8,$5,$18
	addq $18,$17,$19
	srl $19,4,$20
	addq $20,$19,$21
	and $21,$4,$22
	srl $22,32,$23
	addl $23,$22,$24
	zapnot $24,15,$25
	srl $25,16,$27
	addl $27,$24,$28
	zapnot $28,15,$2
	srl $2,8,$3
	addl $3,$28,$1
	and $1,127,$0
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
	zapnot $16,15,$6
	ldah $2,21845($31)
	ldah $3,13107($31)
	ldah $1,3855($31)
	lda $4,21845($2)
	srl $6,1,$7
	lda $0,13107($3)
	lda $5,3855($1)
	and $7,$4,$8
	subl $16,$8,$16
	zapnot $16,15,$17
	and $0,$16,$18
	srl $17,2,$19
	and $19,$0,$20
	addl $20,$18,$21
	zapnot $21,15,$22
	srl $22,4,$23
	addl $23,$21,$24
	and $5,$24,$25
	srl $25,16,$27
	addq $27,$25,$28
	addl $27,$25,$2
	srl $28,8,$3
	addl $3,$2,$1
	and $1,63,$0
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
	ldah $2,$LC23($29)		!gprelhigh
	sll $17,63,$0
	ldah $1,$LC24($29)		!gprelhigh
	ldah $6,$LC25($29)		!gprelhigh
	ldq $3,$LC23($2)		!gprellow
	srl $16,1,$4
	srl $17,1,$7
	ldq $5,$LC24($1)		!gprellow
	bis $0,$4,$18
	ldq $8,$LC25($6)		!gprellow
	and $18,$3,$20
	and $7,$3,$19
	subq $16,$20,$21
	subq $17,$19,$17
	cmpult $16,$21,$16
	srl $21,2,$22
	and $21,$5,$23
	subq $17,$16,$24
	sll $24,62,$25
	srl $24,2,$27
	and $24,$5,$28
	bis $25,$22,$2
	and $27,$5,$1
	and $2,$5,$3
	addq $1,$28,$6
	addq $3,$23,$0
	cmpult $0,$3,$4
	srl $0,4,$5
	addq $4,$6,$7
	sll $7,60,$18
	srl $7,4,$19
	bis $18,$5,$20
	addq $19,$7,$17
	addq $20,$0,$21
	cmpult $21,$20,$16
	and $21,$8,$22
	addq $16,$17,$23
	and $23,$8,$8
	addq $8,$22,$24
	srl $24,32,$25
	addl $25,$24,$27
	zapnot $27,15,$28
	srl $28,16,$2
	addl $2,$27,$1
	zapnot $1,15,$3
	srl $3,8,$6
	addl $6,$1,$0
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
	ldah $3,$LC20($29)		!gprelhigh
	mov $17,$5
	lds $f0,$LC20($3)		!gprellow
	blbc $17,$L1342
	.align 4
$L1344:
	mult $f0,$f16,$f0
$L1342:
	srl $5,63,$2
	addq $2,$5,$1
	sra $1,1,$5
	beq $5,$L1343
	mult $f16,$f16,$f16
	srl $5,63,$0
	blbs $5,$L1344
$L1348:
	addq $0,$5,$4
	mult $f16,$f16,$f16
	sra $4,1,$5
	srl $5,63,$0
	blbs $5,$L1344
	br $31,$L1348
	.align 4
$L1343:
	cmplt $17,0,$17
	bne $17,$L1349
	ret $31,($26),1
	.align 4
$L1349:
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
	ldah $29,0($27)		!gpdisp!84
	lda $29,0($29)		!gpdisp!84
$__powisf2..ng:
	.prologue 1
	ldah $3,$LC20($29)		!gprelhigh
	mov $17,$5
	lds $f0,$LC20($3)		!gprellow
	blbc $17,$L1351
	.align 4
$L1353:
	muls $f0,$f16,$f0
$L1351:
	srl $5,63,$2
	addq $2,$5,$1
	sra $1,1,$5
	beq $5,$L1352
	muls $f16,$f16,$f16
	srl $5,63,$0
	blbs $5,$L1353
$L1357:
	addq $0,$5,$4
	muls $f16,$f16,$f16
	sra $4,1,$5
	srl $5,63,$0
	blbs $5,$L1353
	br $31,$L1357
	.align 4
$L1352:
	cmplt $17,0,$17
	bne $17,$L1358
	ret $31,($26),1
	.align 4
$L1358:
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
	bne $3,$L1360
	cmpule $1,$2,$4
	lda $0,2($31)
	beq $4,$L1360
	zapnot $16,15,$16
	zapnot $17,15,$17
	mov $31,$5
	cmpult $17,$16,$0
	cmpult $16,$17,$6
	lda $0,1($0)
	cmovne $6,$5,$0
$L1360:
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
	bne $3,$L1366
	cmpule $1,$2,$4
	lda $0,1($31)
	beq $4,$L1366
	zapnot $16,15,$16
	zapnot $17,15,$17
	lda $6,-1($31)
	cmpult $16,$17,$5
	cmpult $17,$16,$0
	cmovne $5,$6,$0
$L1366:
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
	bne $1,$L1371
	cmpule $17,$19,$17
	lda $0,2($31)
	beq $17,$L1371
	cmpult $18,$16,$2
	mov $31,$3
	cmpult $16,$18,$16
	lda $0,1($2)
	cmovne $16,$3,$0
$L1371:
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
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
