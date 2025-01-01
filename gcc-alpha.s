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
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB0:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	stq $18,0($16)
	stq $17,8($16)
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE0:
	.end make_ti
	.align 2
	.globl make_tu
	.ent make_tu
$make_tu..ng:
make_tu:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB1:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	stq $18,0($16)
	stq $17,8($16)
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE1:
	.end make_tu
	.align 2
	.globl memmove
	.ent memmove
$memmove..ng:
memmove:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB2:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	br $31,$L7
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE2:
	.end memmove
	.align 2
	.globl memccpy
	.ent memccpy
$memccpy..ng:
memccpy:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB3:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE3:
	.end memccpy
	.align 2
	.globl memchr
	.ent memchr
$memchr..ng:
memchr:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB4:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE4:
	.end memchr
	.align 2
	.globl memcmp
	.ent memcmp
$memcmp..ng:
memcmp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB5:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE5:
	.end memcmp
	.align 2
	.globl memcpy
	.ent memcpy
$memcpy..ng:
memcpy:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB6:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE6:
	.end memcpy
	.align 2
	.globl memrchr
	.ent memrchr
$memrchr..ng:
memrchr:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB7:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	and $17,0xff,$17
	lda $18,-1($18)
	br $31,$L32
$L34:
	addq $16,$18,$2
	ldq_u $1,0($2)
	extbl $1,$2,$1
	lda $2,-1($18)
	cmpeq $17,$1,$1
	beq $1,$L35
	addq $16,$18,$0
	br $31,$L33
$L35:
	mov $2,$18
$L32:
	lda $1,1($18)
	bne $1,$L34
	mov $31,$0
$L33:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE7:
	.end memrchr
	.align 2
	.globl memset
	.ent memset
$memset..ng:
memset:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB8:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	addq $16,$18,$18
	mov $16,$1
	br $31,$L37
$L38:
	ldq_u $3,0($1)
	mskbl $3,$1,$3
	insbl $17,$1,$2
	bis $2,$3,$2
	stq_u $2,0($1)
	lda $1,1($1)
$L37:
	cmpeq $1,$18,$2
	beq $2,$L38
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE8:
	.end memset
	.align 2
	.globl stpcpy
	.ent stpcpy
$stpcpy..ng:
stpcpy:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB9:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	br $31,$L40
$L41:
	lda $17,1($17)
	lda $0,1($0)
$L40:
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
	bne $1,$L41
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE9:
	.end stpcpy
	.align 2
	.globl strchrnul
	.ent strchrnul
$strchrnul..ng:
strchrnul:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB10:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	and $17,0xff,$17
	br $31,$L43
$L45:
	lda $0,1($0)
$L43:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L44
	ldq_u $1,0($0)
	extbl $1,$0,$1
	cmpeq $17,$1,$1
	beq $1,$L45
$L44:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE10:
	.end strchrnul
	.align 2
	.globl strchr
	.ent strchr
$strchr..ng:
strchr:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB11:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
$L48:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $17,$1,$1
	bne $1,$L49
	mov $2,$16
	ldq_u $1,-1($2)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L48
	mov $31,$0
	br $31,$L47
$L49:
	mov $16,$0
$L47:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE11:
	.end strchr
	.align 2
	.globl strcmp
	.ent strcmp
$strcmp..ng:
strcmp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB12:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	br $31,$L51
$L53:
	lda $16,1($16)
	lda $17,1($17)
$L51:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	lda $3,1($17)
	ldq_u $2,0($17)
	extqh $2,$3,$2
	sra $2,56,$2
	cmpeq $1,$2,$1
	beq $1,$L52
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L53
$L52:
	ldq_u $0,0($16)
	extbl $0,$16,$0
	ldq_u $1,0($17)
	extbl $1,$17,$1
	subl $0,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE12:
	.end strcmp
	.align 2
	.globl strlen
	.ent strlen
$strlen..ng:
strlen:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB13:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	br $31,$L55
$L56:
	lda $0,1($0)
$L55:
	lda $2,1($0)
	ldq_u $1,0($0)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L56
	subq $0,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE13:
	.end strlen
	.align 2
	.globl strncmp
	.ent strncmp
$strncmp..ng:
strncmp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB14:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	beq $18,$L58
	mov $16,$2
	br $31,$L59
$L61:
	lda $2,1($2)
	lda $17,1($17)
$L59:
	ldq_u $1,0($2)
	extbl $1,$2,$1
	beq $1,$L60
	ldq_u $3,0($17)
	extbl $3,$17,$3
	lda $1,-1($18)
	addq $1,$16,$1
	subq $1,$2,$1
	cmpult $31,$1,$1
	cmpult $31,$3,$3
	and $1,$3,$1
	beq $1,$L60
	ldq_u $1,0($2)
	extbl $1,$2,$1
	ldq_u $3,0($17)
	extbl $3,$17,$3
	cmpeq $1,$3,$1
	bne $1,$L61
$L60:
	ldq_u $0,0($2)
	extbl $0,$2,$0
	ldq_u $1,0($17)
	extbl $1,$17,$1
	subl $0,$1,$0
$L58:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE14:
	.end strncmp
	.align 2
	.globl swab
	.ent swab
$swab..ng:
swab:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB15:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$2
	br $31,$L64
$L65:
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
$L64:
	addq $16,$18,$1
	subq $1,$2,$1
	cmple $1,1,$1
	beq $1,$L65
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE15:
	.end swab
	.align 2
	.globl isalpha
	.ent isalpha
$isalpha..ng:
isalpha:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB16:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	bis $16,32,$0
	subl $0,97,$0
	zapnot $0,15,$0
	cmpule $0,25,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE16:
	.end isalpha
	.align 2
	.globl isascii
	.ent isascii
$isascii..ng:
isascii:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB17:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,15,$0
	cmpule $0,127,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE17:
	.end isascii
	.align 2
	.globl isblank
	.ent isblank
$isblank..ng:
isblank:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB18:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmpeq $16,32,$1
	cmpeq $16,9,$16
	bis $16,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE18:
	.end isblank
	.align 2
	.globl iscntrl
	.ent iscntrl
$iscntrl..ng:
iscntrl:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB19:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,15,$0
	cmpule $0,31,$0
	cmpeq $16,127,$16
	bis $0,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE19:
	.end iscntrl
	.align 2
	.globl isdigit
	.ent isdigit
$isdigit..ng:
isdigit:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB20:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subl $16,48,$0
	zapnot $0,15,$0
	cmpule $0,9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE20:
	.end isdigit
	.align 2
	.globl isgraph
	.ent isgraph
$isgraph..ng:
isgraph:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB21:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subl $16,33,$0
	zapnot $0,15,$0
	cmpule $0,93,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE21:
	.end isgraph
	.align 2
	.globl islower
	.ent islower
$islower..ng:
islower:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB22:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subl $16,97,$0
	zapnot $0,15,$0
	cmpule $0,25,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE22:
	.end islower
	.align 2
	.globl isprint
	.ent isprint
$isprint..ng:
isprint:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB23:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subl $16,32,$0
	zapnot $0,15,$0
	cmpule $0,94,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE23:
	.end isprint
	.align 2
	.globl isspace
	.ent isspace
$isspace..ng:
isspace:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB24:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmpeq $16,32,$1
	subl $16,9,$0
	zapnot $0,15,$0
	cmpule $0,4,$0
	bis $0,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE24:
	.end isspace
	.align 2
	.globl isupper
	.ent isupper
$isupper..ng:
isupper:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB25:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subl $16,65,$0
	zapnot $0,15,$0
	cmpule $0,25,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE25:
	.end isupper
	.align 2
	.globl iswcntrl
	.ent iswcntrl
$iswcntrl..ng:
iswcntrl:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB26:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,15,$1
	cmpule $1,31,$1
	subl $16,127,$2
	zapnot $2,15,$2
	cmpule $2,32,$2
	bis $1,$2,$1
	lda $0,1($31)
	bne $1,$L77
	lda $1,-8232($16)
	zapnot $1,15,$1
	cmpule $1,1,$1
	ldah $16,-1($16)
	addl $16,7,$16
	zapnot $16,15,$16
	cmpule $16,2,$0
	cmovne $1,1,$0
$L77:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE26:
	.end iswcntrl
	.align 2
	.globl iswdigit
	.ent iswdigit
$iswdigit..ng:
iswdigit:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB27:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subl $16,48,$0
	zapnot $0,15,$0
	cmpule $0,9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE27:
	.end iswdigit
	.align 2
	.globl iswprint
	.ent iswprint
$iswprint..ng:
iswprint:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB28:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,15,$1
	cmpule $1,254,$1
	beq $1,$L83
	addl $16,1,$16
	and $16,127,$16
	lda $0,32($31)
	cmpult $0,$16,$0
	br $31,$L84
$L83:
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
	bne $1,$L84
	ldah $1,-1($16)
	lda $1,8192($1)
	zapnot $1,15,$1
	lda $2,8184($31)
	cmpule $1,$2,$1
	bne $1,$L84
	ldah $1,-1($16)
	addl $1,4,$1
	ldah $2,16($31)
	zapnot $1,15,$1
	lda $2,3($2)
	cmpule $1,$2,$1
	mov $31,$0
	beq $1,$L84
	ldah $1,1($31)
	lda $1,-2($1)
	and $16,$1,$16
	zapnot $16,15,$16
	cmpeq $16,$1,$16
	cmpeq $16,0,$0
$L84:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE28:
	.end iswprint
	.align 2
	.globl iswxdigit
	.ent iswxdigit
$iswxdigit..ng:
iswxdigit:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB29:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subl $16,48,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bis $16,32,$16
	subl $16,97,$16
	zapnot $16,15,$16
	cmpule $16,5,$0
	cmovne $1,1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE29:
	.end iswxdigit
	.align 2
	.globl toascii
	.ent toascii
$toascii..ng:
toascii:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB30:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	and $16,127,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE30:
	.end toascii
	.align 2
	.globl fdim
	.ent fdim
$fdim..ng:
fdim:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB31:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmptun $f16,$f16,$f10
	fbne $f10,$L97
	cmptun $f17,$f17,$f10
	fbne $f10,$L98
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L101
	subt $f16,$f17,$f0
	br $31,$L95
$L97:
	cpys $f16,$f16,$f0
	br $31,$L95
$L98:
	cpys $f17,$f17,$f0
	br $31,$L95
$L101:
	cpys $f31,$f31,$f0
$L95:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE31:
	.end fdim
	.align 2
	.globl fdimf
	.ent fdimf
$fdimf..ng:
fdimf:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB32:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L105
	cpys $f17,$f17,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L106
	cmptlt $f17,$f16,$f10
	fbeq $f10,$L109
	subs $f16,$f17,$f0
	br $31,$L103
$L105:
	cpys $f16,$f16,$f0
	br $31,$L103
$L106:
	cpys $f17,$f17,$f0
	br $31,$L103
$L109:
	cpys $f31,$f31,$f0
$L103:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE32:
	.end fdimf
	.align 2
	.globl fmax
	.ent fmax
$fmax..ng:
fmax:
	.frame $15,32,$26,0
	.mask 0x4008000,-32
$LFB33:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -32
	.cfi_offset 15, -24
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmptun $f16,$f16,$f10
	fbne $f10,$L114
	cmptun $f17,$f17,$f10
	fbne $f10,$L115
	stt $f16,16($15)
	ldq $2,16($15)
	srl $2,63,$1
	stt $f17,16($15)
	ldq $3,16($15)
	srl $3,63,$2
	cmpeq $1,$2,$1
	bne $1,$L112
	stt $f16,16($15)
	ldq $2,16($15)
	srl $2,63,$1
	cpys $f16,$f16,$f0
	beq $1,$L111
	cpys $f17,$f17,$f0
	br $31,$L111
$L112:
	cmptlt $f16,$f17,$f10
	cpys $f16,$f16,$f0
	fcmovne $f10,$f17,$f0
	br $31,$L111
$L114:
	cpys $f17,$f17,$f0
	br $31,$L111
$L115:
	cpys $f16,$f16,$f0
$L111:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE33:
	.end fmax
	.align 2
	.globl fmaxf
	.ent fmaxf
$fmaxf..ng:
fmaxf:
	.frame $15,48,$26,0
	.mask 0x4008000,-48
$LFB34:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -48
	.cfi_offset 15, -40
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	sts $f16,16($15)
	sts $f17,32($15)
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L123
	cpys $f17,$f17,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L124
	ldah $1,-32768($31)
	ldl $3,16($15)
	and $1,$3,$2
	addl $31,$2,$2
	ldl $3,32($15)
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L121
	ldah $1,-32768($31)
	ldl $2,16($15)
	and $1,$2,$1
	addl $31,$1,$1
	cpys $f16,$f16,$f0
	beq $1,$L120
	cpys $f17,$f17,$f0
	br $31,$L120
$L121:
	lds $f11,16($15)
	lds $f12,32($15)
	cmptlt $f11,$f12,$f10
	cpys $f11,$f11,$f0
	fcmovne $f10,$f12,$f0
	br $31,$L120
$L123:
	lds $f0,32($15)
	br $31,$L120
$L124:
	lds $f0,16($15)
$L120:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,48($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE34:
	.end fmaxf
	.align 2
	.globl fmaxl
	.ent fmaxl
fmaxl:
	.frame $15,64,$26,0
	.mask 0x400be00,-64
$LFB35:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!1
	lda $29,0($29)		!gpdisp!1
$fmaxl..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $15,48($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$9
	ldq $10,0($17)
	ldq $11,8($17)
	ldq $12,0($18)
	ldq $13,8($18)
	mov $10,$16
	mov $11,$17
	mov $10,$18
	mov $11,$19
	ldq $27,_OtsEqlX($29)		!literal!2
	jsr $26,($27),0		!lituse_jsr!2
	ldah $29,0($26)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
	bge $0,$L129
	stq $12,0($9)
	stq $13,8($9)
	br $31,$L128
$L129:
	mov $12,$16
	mov $13,$17
	mov $12,$18
	mov $13,$19
	ldq $27,_OtsEqlX($29)		!literal!4
	jsr $26,($27),0		!lituse_jsr!4
	ldah $29,0($26)		!gpdisp!5
	lda $29,0($29)		!gpdisp!5
	bge $0,$L131
	stq $10,0($9)
	stq $11,8($9)
	br $31,$L128
$L131:
	srl $11,63,$1
	srl $13,63,$2
	cmpeq $1,$2,$1
	bne $1,$L132
	srl $11,63,$1
	beq $1,$L133
	mov $12,$10
	mov $13,$11
$L133:
	stq $10,0($9)
	stq $11,8($9)
	br $31,$L128
$L132:
	mov $10,$16
	mov $11,$17
	mov $12,$18
	mov $13,$19
	ldq $27,_OtsLssX($29)		!literal!6
	jsr $26,($27),0		!lituse_jsr!6
	ldah $29,0($26)		!gpdisp!7
	lda $29,0($29)		!gpdisp!7
	bgt $0,$L134
	mov $10,$12
	mov $11,$13
$L134:
	stq $12,0($9)
	stq $13,8($9)
$L128:
	mov $9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $15,48($30)
	lda $30,64($30)
	.cfi_restore 15
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE35:
	.end fmaxl
	.align 2
	.globl fmin
	.ent fmin
$fmin..ng:
fmin:
	.frame $15,32,$26,0
	.mask 0x4008000,-32
$LFB36:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -32
	.cfi_offset 15, -24
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmptun $f16,$f16,$f10
	fbne $f10,$L143
	cmptun $f17,$f17,$f10
	fbne $f10,$L144
	stt $f16,16($15)
	ldq $2,16($15)
	srl $2,63,$1
	stt $f17,16($15)
	ldq $3,16($15)
	srl $3,63,$2
	cmpeq $1,$2,$1
	bne $1,$L141
	stt $f16,16($15)
	ldq $2,16($15)
	srl $2,63,$1
	cpys $f17,$f17,$f0
	beq $1,$L140
	cpys $f16,$f16,$f0
	br $31,$L140
$L141:
	cmptlt $f16,$f17,$f10
	cpys $f17,$f17,$f0
	fcmovne $f10,$f16,$f0
	br $31,$L140
$L143:
	cpys $f17,$f17,$f0
	br $31,$L140
$L144:
	cpys $f16,$f16,$f0
$L140:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE36:
	.end fmin
	.align 2
	.globl fminf
	.ent fminf
$fminf..ng:
fminf:
	.frame $15,48,$26,0
	.mask 0x4008000,-48
$LFB37:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -48
	.cfi_offset 15, -40
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	sts $f16,16($15)
	sts $f17,32($15)
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L152
	cpys $f17,$f17,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L153
	ldah $1,-32768($31)
	ldl $3,16($15)
	and $1,$3,$2
	addl $31,$2,$2
	ldl $3,32($15)
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L150
	ldah $1,-32768($31)
	ldl $2,16($15)
	and $1,$2,$1
	addl $31,$1,$1
	cpys $f17,$f17,$f0
	beq $1,$L149
	cpys $f16,$f16,$f0
	br $31,$L149
$L150:
	lds $f11,16($15)
	lds $f12,32($15)
	cmptlt $f11,$f12,$f10
	cpys $f12,$f12,$f0
	fcmovne $f10,$f11,$f0
	br $31,$L149
$L152:
	lds $f0,32($15)
	br $31,$L149
$L153:
	lds $f0,16($15)
$L149:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,48($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE37:
	.end fminf
	.align 2
	.globl fminl
	.ent fminl
fminl:
	.frame $15,64,$26,0
	.mask 0x400be00,-64
$LFB38:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!8
	lda $29,0($29)		!gpdisp!8
$fminl..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $15,48($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$9
	ldq $10,0($17)
	ldq $11,8($17)
	ldq $12,0($18)
	ldq $13,8($18)
	mov $10,$16
	mov $11,$17
	mov $10,$18
	mov $11,$19
	ldq $27,_OtsEqlX($29)		!literal!9
	jsr $26,($27),0		!lituse_jsr!9
	ldah $29,0($26)		!gpdisp!10
	lda $29,0($29)		!gpdisp!10
	bge $0,$L158
	stq $12,0($9)
	stq $13,8($9)
	br $31,$L157
$L158:
	mov $12,$16
	mov $13,$17
	mov $12,$18
	mov $13,$19
	ldq $27,_OtsEqlX($29)		!literal!11
	jsr $26,($27),0		!lituse_jsr!11
	ldah $29,0($26)		!gpdisp!12
	lda $29,0($29)		!gpdisp!12
	bge $0,$L160
	stq $10,0($9)
	stq $11,8($9)
	br $31,$L157
$L160:
	srl $11,63,$1
	srl $13,63,$2
	cmpeq $1,$2,$1
	bne $1,$L161
	srl $11,63,$1
	beq $1,$L162
	mov $10,$12
	mov $11,$13
$L162:
	stq $12,0($9)
	stq $13,8($9)
	br $31,$L157
$L161:
	mov $10,$16
	mov $11,$17
	mov $12,$18
	mov $13,$19
	ldq $27,_OtsLssX($29)		!literal!13
	jsr $26,($27),0		!lituse_jsr!13
	ldah $29,0($26)		!gpdisp!14
	lda $29,0($29)		!gpdisp!14
	bgt $0,$L163
	mov $12,$10
	mov $13,$11
$L163:
	stq $10,0($9)
	stq $11,8($9)
$L157:
	mov $9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $15,48($30)
	lda $30,64($30)
	.cfi_restore 15
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
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
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB39:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!15
	lda $29,0($29)		!gpdisp!15
$l64a..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	addl $31,$16,$16
	ldah $2,s.0($29)		!gprelhigh
	lda $2,s.0($2)		!gprellow
	br $31,$L169
$L170:
	and $16,63,$1
	ldah $3,digits($29)		!gprelhigh
	lda $3,digits($3)		!gprellow
	addq $1,$3,$1
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
$L169:
	bne $16,$L170
	ldq_u $1,0($2)
	mskbl $1,$2,$1
	stq_u $1,0($2)
	ldah $0,s.0($29)		!gprelhigh
	lda $0,s.0($0)		!gprellow
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
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
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB40:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!16
	lda $29,0($29)		!gpdisp!16
$srand..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	subl $16,1,$16
	zapnot $16,15,$16
	ldah $1,seed($29)		!gprelhigh
	stq $16,seed($1)		!gprellow
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE40:
	.end srand
	.align 2
	.globl rand
	.ent rand
rand:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB41:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!17
	lda $29,0($29)		!gpdisp!17
$rand..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	ldah $1,seed($29)		!gprelhigh
	ldq $0,seed($1)		!gprellow
	ldah $2,$LC0($29)		!gprelhigh
	ldq $2,$LC0($2)		!gprellow
	mulq $0,$2,$0
	lda $0,1($0)
	stq $0,seed($1)		!gprellow
	srl $0,33,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE41:
	.end rand
	.align 2
	.globl insque
	.ent insque
$insque..ng:
insque:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB42:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	bne $17,$L174
	stq $31,8($16)
	stq $31,0($16)
	br $31,$L173
$L174:
	ldq $1,0($17)
	stq $1,0($16)
	stq $17,8($16)
	stq $16,0($17)
	ldq $1,0($16)
	beq $1,$L173
	stq $16,8($1)
$L173:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE42:
	.end insque
	.align 2
	.globl remque
	.ent remque
$remque..ng:
remque:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB43:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	ldq $1,0($16)
	beq $1,$L177
	ldq $2,8($16)
	stq $2,8($1)
$L177:
	ldq $1,8($16)
	beq $1,$L176
	ldq $2,0($16)
	stq $2,0($1)
$L176:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE43:
	.end remque
	.align 2
	.globl lsearch
	.ent lsearch
lsearch:
	.frame $15,80,$26,0
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
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$13
	stq $17,64($15)
	stq $18,72($15)
	mov $19,$11
	mov $20,$14
	ldq $12,0($18)
	mov $17,$10
	mov $31,$9
	br $31,$L180
$L183:
	mov $10,$17
	mov $13,$16
	mov $14,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!19
	lda $29,0($29)		!gpdisp!19
	addq $10,$11,$10
	bne $0,$L181
	mulq $9,$11,$9
	ldq $1,64($15)
	addq $1,$9,$0
	br $31,$L182
$L181:
	lda $9,1($9)
$L180:
	cmpeq $9,$12,$1
	beq $1,$L183
	lda $1,1($12)
	ldq $2,72($15)
	stq $1,0($2)
	mulq $11,$12,$16
	mov $11,$18
	mov $13,$17
	ldq $27,64($15)
	addq $27,$16,$16
	ldq $27,memcpy($29)		!literal!20
	jsr $26,($27),0		!lituse_jsr!20
	ldah $29,0($26)		!gpdisp!21
	lda $29,0($29)		!gpdisp!21
$L182:
	mov $15,$30
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
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE44:
	.end lsearch
	.align 2
	.globl lfind
	.ent lfind
lfind:
	.frame $15,80,$26,0
	.mask 0x400fe00,-80
$LFB45:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!22
	lda $29,0($29)		!gpdisp!22
$lfind..ng:
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
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$13
	stq $17,64($15)
	mov $19,$11
	mov $20,$12
	ldq $14,0($18)
	mov $17,$10
	mov $31,$9
	br $31,$L185
$L188:
	mov $10,$17
	mov $13,$16
	mov $12,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!23
	lda $29,0($29)		!gpdisp!23
	addq $10,$11,$10
	bne $0,$L186
	mulq $9,$11,$9
	ldq $1,64($15)
	addq $1,$9,$0
	br $31,$L187
$L186:
	lda $9,1($9)
$L185:
	cmpeq $9,$14,$1
	beq $1,$L188
	mov $31,$0
$L187:
	mov $15,$30
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
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE45:
	.end lfind
	.align 2
	.globl abs
	.ent abs
$abs..ng:
abs:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB46:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	addl $31,$0,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE46:
	.end abs
	.align 2
	.globl atoi
	.ent atoi
atoi:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
$LFB47:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!24
	lda $29,0($29)		!gpdisp!24
$atoi..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$9
	br $31,$L191
$L192:
	lda $9,1($9)
$L191:
	lda $1,1($9)
	ldq_u $16,0($9)
	extqh $16,$1,$16
	sra $16,56,$16
	ldq $27,isspace($29)		!literal!25
	jsr $26,($27),0		!lituse_jsr!25
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
	bne $0,$L192
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L198
	cmpeq $1,45,$1
	mov $31,$4
	beq $1,$L194
	lda $4,1($31)
	br $31,$L193
$L198:
	mov $31,$4
$L193:
	lda $9,1($9)
$L194:
	mov $31,$2
	br $31,$L195
$L196:
	s4addl $2,$2,$2
	addl $2,$2,$2
	lda $9,1($9)
	ldq_u $1,-1($9)
	extqh $1,$9,$1
	sra $1,56,$1
	subl $1,48,$1
	subl $2,$1,$2
$L195:
	lda $3,1($9)
	ldq_u $1,0($9)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L196
	subl $31,$2,$0
	cmovne $4,$2,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE47:
	.end atoi
	.align 2
	.globl atol
	.ent atol
atol:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
$LFB48:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!27
	lda $29,0($29)		!gpdisp!27
$atol..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$9
	br $31,$L202
$L203:
	lda $9,1($9)
$L202:
	lda $1,1($9)
	ldq_u $16,0($9)
	extqh $16,$1,$16
	sra $16,56,$16
	ldq $27,isspace($29)		!literal!28
	jsr $26,($27),0		!lituse_jsr!28
	ldah $29,0($26)		!gpdisp!29
	lda $29,0($29)		!gpdisp!29
	bne $0,$L203
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L209
	cmpeq $1,45,$1
	mov $31,$4
	beq $1,$L205
	lda $4,1($31)
	br $31,$L204
$L209:
	mov $31,$4
$L204:
	lda $9,1($9)
$L205:
	mov $31,$2
	br $31,$L206
$L207:
	s4addq $2,$2,$2
	addq $2,$2,$2
	lda $9,1($9)
	ldq_u $1,-1($9)
	extqh $1,$9,$1
	sra $1,56,$1
	subl $1,48,$1
	subq $2,$1,$2
$L206:
	lda $3,1($9)
	ldq_u $1,0($9)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L207
	subq $31,$2,$0
	cmovne $4,$2,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE48:
	.end atol
	.align 2
	.globl atoll
	.ent atoll
atoll:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
$LFB49:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!30
	lda $29,0($29)		!gpdisp!30
$atoll..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$9
	br $31,$L213
$L214:
	lda $9,1($9)
$L213:
	lda $1,1($9)
	ldq_u $16,0($9)
	extqh $16,$1,$16
	sra $16,56,$16
	ldq $27,isspace($29)		!literal!31
	jsr $26,($27),0		!lituse_jsr!31
	ldah $29,0($26)		!gpdisp!32
	lda $29,0($29)		!gpdisp!32
	bne $0,$L214
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L220
	cmpeq $1,45,$1
	mov $31,$4
	beq $1,$L216
	lda $4,1($31)
	br $31,$L215
$L220:
	mov $31,$4
$L215:
	lda $9,1($9)
$L216:
	mov $31,$2
	br $31,$L217
$L218:
	s4addq $2,$2,$2
	addq $2,$2,$2
	lda $9,1($9)
	ldq_u $1,-1($9)
	extqh $1,$9,$1
	sra $1,56,$1
	subl $1,48,$1
	subq $2,$1,$2
$L217:
	lda $3,1($9)
	ldq_u $1,0($9)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L218
	subq $31,$2,$0
	cmovne $4,$2,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE49:
	.end atoll
	.align 2
	.globl bsearch
	.ent bsearch
bsearch:
	.frame $15,64,$26,0
	.mask 0x400fe00,-64
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
	stq $15,56($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$14
	mov $17,$12
	mov $18,$10
	mov $19,$11
	mov $20,$13
	br $31,$L224
$L228:
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
	beq $0,$L225
	srl $10,1,$10
	br $31,$L224
$L225:
	ble $1,$L229
	addq $9,$11,$12
	srl $10,1,$1
	lda $10,-1($10)
	subq $10,$1,$10
$L224:
	bne $10,$L228
	mov $31,$0
	br $31,$L227
$L229:
	mov $9,$0
$L227:
	mov $15,$30
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
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE50:
	.end bsearch
	.align 2
	.globl bsearch_r
	.ent bsearch_r
bsearch_r:
	.frame $15,80,$26,0
	.mask 0x400fe00,-80
$LFB51:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!35
	lda $29,0($29)		!gpdisp!35
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
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$14
	mov $19,$12
	mov $20,$13
	stq $21,64($15)
	addl $31,$18,$10
	mov $17,$11
	br $31,$L231
$L234:
	sra $10,1,$9
	mulq $9,$12,$9
	addq $11,$9,$9
	ldq $18,64($15)
	mov $9,$17
	mov $14,$16
	mov $13,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!36
	lda $29,0($29)		!gpdisp!36
	beq $0,$L235
	ble $0,$L233
	addq $9,$12,$11
	subl $10,1,$10
$L233:
	sra $10,1,$10
$L231:
	bne $10,$L234
	mov $31,$0
	br $31,$L232
$L235:
	mov $9,$0
$L232:
	mov $15,$30
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
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE51:
	.end bsearch_r
	.align 2
	.globl div
	.ent div
div:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB52:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!39
	lda $29,0($29)		!gpdisp!39
$div..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE52:
	.end div
	.align 2
	.globl imaxabs
	.ent imaxabs
$imaxabs..ng:
imaxabs:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB53:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE53:
	.end imaxabs
	.align 2
	.globl imaxdiv
	.ent imaxdiv
imaxdiv:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB54:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!42
	lda $29,0($29)		!gpdisp!42
$imaxdiv..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE54:
	.end imaxdiv
	.align 2
	.globl labs
	.ent labs
$labs..ng:
labs:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB55:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE55:
	.end labs
	.align 2
	.globl ldiv
	.ent ldiv
ldiv:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB56:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!45
	lda $29,0($29)		!gpdisp!45
$ldiv..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE56:
	.end ldiv
	.align 2
	.globl llabs
	.ent llabs
$llabs..ng:
llabs:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB57:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subq $31,$16,$0
	cmovge $16,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE57:
	.end llabs
	.align 2
	.globl lldiv
	.ent lldiv
lldiv:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB58:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!48
	lda $29,0($29)		!gpdisp!48
$lldiv..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE58:
	.end lldiv
	.align 2
	.globl wcschr
	.ent wcschr
$wcschr..ng:
wcschr:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB59:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	br $31,$L244
$L246:
	lda $16,4($16)
$L244:
	ldl $1,0($16)
	beq $1,$L245
	cmpeq $17,$1,$1
	beq $1,$L246
$L245:
	ldl $1,0($16)
	mov $16,$0
	cmoveq $1,0,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE59:
	.end wcschr
	.align 2
	.globl wcscmp
	.ent wcscmp
$wcscmp..ng:
wcscmp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB60:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	br $31,$L250
$L252:
	lda $16,4($16)
	lda $17,4($17)
$L250:
	ldl $1,0($16)
	ldl $2,0($17)
	cmpeq $1,$2,$1
	beq $1,$L251
	ldl $1,0($16)
	beq $1,$L251
	bne $2,$L252
$L251:
	ldl $1,0($16)
	ldl $2,0($17)
	cmplt $1,$2,$1
	lda $0,-1($31)
	bne $1,$L253
	ldl $1,0($16)
	cmplt $2,$1,$0
$L253:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE60:
	.end wcscmp
	.align 2
	.globl wcscpy
	.ent wcscpy
$wcscpy..ng:
wcscpy:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB61:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	mov $16,$1
$L256:
	lda $17,4($17)
	lda $1,4($1)
	ldl $2,-4($17)
	stl $2,-4($1)
	bne $2,$L256
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE61:
	.end wcscpy
	.align 2
	.globl wcslen
	.ent wcslen
$wcslen..ng:
wcslen:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB62:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	br $31,$L258
$L259:
	lda $0,4($0)
$L258:
	ldl $1,0($0)
	bne $1,$L259
	subq $0,$16,$0
	sra $0,2,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE62:
	.end wcslen
	.align 2
	.globl wcsncmp
	.ent wcsncmp
$wcsncmp..ng:
wcsncmp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB63:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	br $31,$L261
$L263:
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
$L261:
	beq $18,$L262
	ldl $1,0($16)
	ldl $2,0($17)
	cmpeq $1,$2,$1
	beq $1,$L262
	ldl $1,0($16)
	beq $1,$L262
	bne $2,$L263
$L262:
	mov $31,$0
	beq $18,$L264
	ldl $1,0($16)
	ldl $2,0($17)
	cmplt $1,$2,$1
	lda $0,-1($31)
	bne $1,$L264
	ldl $1,0($16)
	cmplt $2,$1,$0
$L264:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE63:
	.end wcsncmp
	.align 2
	.globl wmemchr
	.ent wmemchr
$wmemchr..ng:
wmemchr:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB64:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	br $31,$L268
$L270:
	lda $18,-1($18)
	lda $16,4($16)
$L268:
	beq $18,$L269
	ldl $1,0($16)
	cmpeq $17,$1,$1
	beq $1,$L270
$L269:
	mov $16,$0
	cmoveq $18,0,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE64:
	.end wmemchr
	.align 2
	.globl wmemcmp
	.ent wmemcmp
$wmemcmp..ng:
wmemcmp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB65:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	br $31,$L274
$L276:
	lda $18,-1($18)
	lda $16,4($16)
	lda $17,4($17)
$L274:
	beq $18,$L275
	ldl $1,0($16)
	ldl $2,0($17)
	cmpeq $1,$2,$1
	bne $1,$L276
$L275:
	mov $31,$0
	beq $18,$L277
	ldl $1,0($16)
	ldl $2,0($17)
	cmplt $1,$2,$1
	lda $0,-1($31)
	bne $1,$L277
	ldl $1,0($16)
	cmplt $2,$1,$0
$L277:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE65:
	.end wmemcmp
	.align 2
	.globl wmemcpy
	.ent wmemcpy
$wmemcpy..ng:
wmemcpy:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB66:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	mov $16,$1
	br $31,$L281
$L282:
	lda $17,4($17)
	lda $1,4($1)
	ldl $2,-4($17)
	stl $2,-4($1)
$L281:
	lda $18,-1($18)
	lda $2,1($18)
	bne $2,$L282
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE66:
	.end wmemcpy
	.align 2
	.globl wmemmove
	.ent wmemmove
$wmemmove..ng:
wmemmove:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB67:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	cmpeq $16,$17,$1
	bne $1,$L284
	subq $16,$17,$1
	s4addq $18,0,$2
	cmpult $1,$2,$1
	beq $1,$L289
	s4addq $18,$17,$17
	s4addq $18,$16,$18
	lda $2,-4($16)
	br $31,$L286
$L287:
	ldl $1,0($17)
	stl $1,0($18)
$L286:
	lda $17,-4($17)
	lda $18,-4($18)
	cmpeq $18,$2,$1
	beq $1,$L287
	br $31,$L284
$L288:
	lda $17,4($17)
	lda $1,4($1)
	ldl $2,-4($17)
	stl $2,-4($1)
	br $31,$L285
$L289:
	mov $16,$1
$L285:
	lda $18,-1($18)
	lda $2,1($18)
	bne $2,$L288
$L284:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE67:
	.end wmemmove
	.align 2
	.globl wmemset
	.ent wmemset
$wmemset..ng:
wmemset:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB68:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	mov $16,$1
	br $31,$L291
$L292:
	lda $1,4($1)
	stl $17,-4($1)
$L291:
	lda $18,-1($18)
	lda $2,1($18)
	bne $2,$L292
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE68:
	.end wmemset
	.align 2
	.globl bcopy
	.ent bcopy
$bcopy..ng:
bcopy:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB69:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmpult $16,$17,$1
	beq $1,$L294
	addq $16,$18,$2
	addq $17,$18,$17
	br $31,$L295
$L296:
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
$L295:
	cmpeq $2,$16,$1
	beq $1,$L296
	br $31,$L293
$L294:
	cmpeq $16,$17,$1
	bne $1,$L293
	addq $17,$18,$18
	mov $16,$2
	br $31,$L298
$L299:
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
$L298:
	cmpeq $17,$18,$1
	beq $1,$L299
$L293:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE69:
	.end bcopy
	.align 2
	.globl rotl64
	.ent rotl64
$rotl64..ng:
rotl64:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB70:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	sll $16,$17,$1
	subq $31,$17,$17
	srl $16,$17,$0
	bis $0,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE70:
	.end rotl64
	.align 2
	.globl rotr64
	.ent rotr64
$rotr64..ng:
rotr64:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB71:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	srl $16,$17,$1
	subq $31,$17,$17
	sll $16,$17,$0
	bis $0,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE71:
	.end rotr64
	.align 2
	.globl rotl32
	.ent rotl32
$rotl32..ng:
rotl32:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB72:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	sll $16,$17,$0
	zapnot $16,15,$16
	subq $31,$17,$17
	and $17,31,$17
	srl $16,$17,$16
	bis $0,$16,$0
	addl $31,$0,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE72:
	.end rotl32
	.align 2
	.globl rotr32
	.ent rotr32
$rotr32..ng:
rotr32:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB73:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,15,$0
	srl $0,$17,$0
	subq $31,$17,$17
	and $17,31,$17
	sll $16,$17,$16
	bis $0,$16,$0
	addl $31,$0,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE73:
	.end rotr32
	.align 2
	.globl rotl_sz
	.ent rotl_sz
$rotl_sz..ng:
rotl_sz:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB74:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	sll $16,$17,$1
	subq $31,$17,$17
	srl $16,$17,$16
	bis $16,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE74:
	.end rotl_sz
	.align 2
	.globl rotr_sz
	.ent rotr_sz
$rotr_sz..ng:
rotr_sz:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB75:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	srl $16,$17,$1
	subq $31,$17,$17
	sll $16,$17,$16
	bis $16,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE75:
	.end rotr_sz
	.align 2
	.globl rotl16
	.ent rotl16
$rotl16..ng:
rotl16:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB76:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	sll $16,$17,$2
	lda $1,16($31)
	subl $1,$17,$1
	srl $16,$1,$0
	bis $0,$2,$0
	zapnot $0,3,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE76:
	.end rotl16
	.align 2
	.globl rotr16
	.ent rotr16
$rotr16..ng:
rotr16:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB77:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	addl $31,$16,$0
	srl $16,$17,$16
	lda $1,16($31)
	subl $1,$17,$1
	sll $0,$1,$0
	bis $0,$16,$0
	zapnot $0,3,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE77:
	.end rotr16
	.align 2
	.globl rotl8
	.ent rotl8
$rotl8..ng:
rotl8:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB78:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	sll $16,$17,$2
	lda $1,8($31)
	subl $1,$17,$1
	srl $16,$1,$0
	bis $0,$2,$0
	and $0,0xff,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE78:
	.end rotl8
	.align 2
	.globl rotr8
	.ent rotr8
$rotr8..ng:
rotr8:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB79:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	addl $31,$16,$0
	srl $16,$17,$16
	lda $1,8($31)
	subl $1,$17,$1
	sll $0,$1,$0
	bis $0,$16,$0
	and $0,0xff,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE79:
	.end rotr8
	.align 2
	.globl bswap_16
	.ent bswap_16
$bswap_16..ng:
bswap_16:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB80:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	srl $16,8,$0
	insbl $16,1,$16
	bis $0,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE80:
	.end bswap_16
	.align 2
	.globl bswap_32
	.ent bswap_32
$bswap_32..ng:
bswap_32:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB81:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE81:
	.end bswap_32
	.align 2
	.globl bswap_64
	.ent bswap_64
$bswap_64..ng:
bswap_64:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB82:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE82:
	.end bswap_64
	.align 2
	.globl ffs
	.ent ffs
$ffs..ng:
ffs:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB83:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	br $31,$L314
$L317:
	zapnot $16,15,$1
	srl $1,$0,$1
	blbc $1,$L315
	addl $0,1,$0
	br $31,$L316
$L315:
	addl $0,1,$0
$L314:
	zapnot $0,15,$1
	cmpeq $1,32,$1
	beq $1,$L317
	mov $31,$0
$L316:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE83:
	.end ffs
	.align 2
	.globl libiberty_ffs
	.ent libiberty_ffs
$libiberty_ffs..ng:
libiberty_ffs:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB84:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	beq $16,$L319
	lda $0,1($31)
	br $31,$L320
$L321:
	sra $16,1,$16
	addl $0,1,$0
$L320:
	blbc $16,$L321
$L319:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE84:
	.end libiberty_ffs
	.align 2
	.globl gl_isinff
	.ent gl_isinff
gl_isinff:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB85:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!49
	lda $29,0($29)		!gpdisp!49
$gl_isinff..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	ldah $1,$LC1($29)		!gprelhigh
	lds $f10,$LC1($1)		!gprellow
	cmptlt $f16,$f10,$f10
	lda $0,1($31)
	fbne $f10,$L324
	ldah $1,$LC2($29)		!gprelhigh
	lds $f10,$LC2($1)		!gprellow
	cmptlt $f10,$f16,$f10
	fbne $f10,$L324
	mov $31,$0
$L324:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE85:
	.end gl_isinff
	.align 2
	.globl gl_isinfd
	.ent gl_isinfd
gl_isinfd:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB86:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!50
	lda $29,0($29)		!gpdisp!50
$gl_isinfd..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	ldah $1,$LC5($29)		!gprelhigh
	ldt $f11,$LC5($1)		!gprellow
	cmptlt $f16,$f11,$f10
	lda $0,1($31)
	fbne $f10,$L330
	ldah $1,$LC6($29)		!gprelhigh
	ldt $f11,$LC6($1)		!gprellow
	cmptlt $f11,$f16,$f10
	fbne $f10,$L330
	mov $31,$0
$L330:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE86:
	.end gl_isinfd
	.align 2
	.globl gl_isinfl
	.ent gl_isinfl
gl_isinfl:
	.frame $15,32,$26,0
	.mask 0x4008c00,-32
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
	stq $15,24($30)
	.cfi_offset 26, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $0,$1
	lda $0,1($31)
	bgt $1,$L336
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
	cmplt $31,$0,$0
$L336:
	mov $15,$30
	ldq $26,0($30)
	ldq $10,8($30)
	ldq $11,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE87:
	.end gl_isinfl
	.align 2
	.globl _Qp_itoq
	.ent _Qp_itoq
_Qp_itoq:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
$LFB88:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!56
	lda $29,0($29)		!gpdisp!56
$_Qp_itoq..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -48
	.cfi_offset 9, -40
	.cfi_offset 15, -32
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$9
	stq $17,32($15)
	ldt $f10,32($15)
	cvtqt $f10,$f16
	ldq $27,_OtsConvertFloatTX($29)		!literal!57
	jsr $26,($27),0		!lituse_jsr!57
	ldah $29,0($26)		!gpdisp!58
	lda $29,0($29)		!gpdisp!58
	stq $16,0($9)
	stq $17,8($9)
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE88:
	.end _Qp_itoq
	.align 2
	.globl ldexpf
	.ent ldexpf
ldexpf:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB89:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!59
	lda $29,0($29)		!gpdisp!59
$ldexpf..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	cpys $f16,$f16,$f0
	cpys $f16,$f16,$f10
	cmptun $f10,$f10,$f11
	fbne $f11,$L343
	adds $f16,$f16,$f10
	cmpteq $f16,$f10,$f10
	fbne $f10,$L343
	cmplt $17,0,$1
	ldah $2,$LC10($29)		!gprelhigh
	lds $f10,$LC10($2)		!gprellow
	beq $1,$L346
	ldah $1,$LC9($29)		!gprelhigh
	lds $f10,$LC9($1)		!gprellow
$L346:
	blbc $17,$L345
	muls $f0,$f10,$f0
$L345:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L343
	muls $f10,$f10,$f10
	br $31,$L346
$L343:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE89:
	.end ldexpf
	.align 2
	.globl ldexp
	.ent ldexp
ldexp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB90:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!60
	lda $29,0($29)		!gpdisp!60
$ldexp..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	cpys $f16,$f16,$f0
	cmptun $f16,$f16,$f10
	fbne $f10,$L349
	addt $f16,$f16,$f11
	cmpteq $f16,$f11,$f10
	fbne $f10,$L349
	cmplt $17,0,$1
	beq $1,$L353
	ldah $1,$LC9($29)		!gprelhigh
	lds $f10,$LC9($1)		!gprellow
	br $31,$L352
$L353:
	ldah $1,$LC10($29)		!gprelhigh
	lds $f10,$LC10($1)		!gprellow
$L352:
	blbc $17,$L351
	mult $f0,$f10,$f0
$L351:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L349
	mult $f10,$f10,$f10
	br $31,$L352
$L349:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE90:
	.end ldexp
	.align 2
	.globl ldexpl
	.ent ldexpl
ldexpl:
	.frame $15,64,$26,0
	.mask 0x400fe00,-64
$LFB91:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!61
	lda $29,0($29)		!gpdisp!61
$ldexpl..ng:
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
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$14
	ldq $12,0($17)
	ldq $13,8($17)
	mov $18,$9
	mov $12,$16
	mov $13,$17
	mov $12,$18
	mov $13,$19
	ldq $27,_OtsEqlX($29)		!literal!62
	jsr $26,($27),0		!lituse_jsr!62
	ldah $29,0($26)		!gpdisp!63
	lda $29,0($29)		!gpdisp!63
	blt $0,$L355
	mov $12,$16
	mov $13,$17
	mov $12,$18
	mov $13,$19
	lda $20,2($31)
	ldq $27,_OtsAddX($29)		!literal!64
	jsr $26,($27),0		!lituse_jsr!64
	ldah $29,0($26)		!gpdisp!65
	lda $29,0($29)		!gpdisp!65
	mov $16,$18
	mov $17,$19
	mov $12,$16
	mov $13,$17
	ldq $27,_OtsEqlX($29)		!literal!66
	jsr $26,($27),0		!lituse_jsr!66
	ldah $29,0($26)		!gpdisp!67
	lda $29,0($29)		!gpdisp!67
	bgt $0,$L355
	cmplt $9,0,$1
	beq $1,$L359
	ldah $1,$LC13($29)		!gprelhigh
	lda $1,$LC13($1)		!gprellow
	ldq $10,0($1)
	ldq $11,8($1)
	br $31,$L358
$L359:
	ldah $1,$LC14($29)		!gprelhigh
	lda $1,$LC14($1)		!gprellow
	ldq $10,0($1)
	ldq $11,8($1)
$L358:
	blbc $9,$L357
	mov $12,$16
	mov $13,$17
	mov $10,$18
	mov $11,$19
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!68
	jsr $26,($27),0		!lituse_jsr!68
	ldah $29,0($26)		!gpdisp!69
	lda $29,0($29)		!gpdisp!69
	mov $16,$12
	mov $17,$13
$L357:
	srl $9,63,$1
	addq $1,$9,$1
	sra $1,1,$9
	beq $9,$L355
	mov $10,$16
	mov $11,$17
	mov $10,$18
	mov $11,$19
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!70
	jsr $26,($27),0		!lituse_jsr!70
	ldah $29,0($26)		!gpdisp!71
	lda $29,0($29)		!gpdisp!71
	mov $16,$10
	mov $17,$11
	br $31,$L358
$L355:
	stq $12,0($14)
	stq $13,8($14)
	mov $14,$0
	mov $15,$30
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
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE91:
	.end ldexpl
	.align 2
	.globl memxor
	.ent memxor
$memxor..ng:
memxor:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB92:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	addq $16,$18,$18
	mov $16,$2
	br $31,$L361
$L362:
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
$L361:
	cmpeq $2,$18,$1
	beq $1,$L362
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE92:
	.end memxor
	.align 2
	.globl strncat
	.ent strncat
strncat:
	.frame $15,48,$26,0
	.mask 0x4008e00,-48
$LFB93:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!72
	lda $29,0($29)		!gpdisp!72
$strncat..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $15,32($30)
	.cfi_offset 26, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$11
	mov $17,$9
	mov $18,$10
	ldq $27,strlen($29)		!literal!73
	jsr $26,($27),0		!lituse_jsr!73
	ldah $29,0($26)		!gpdisp!74
	lda $29,0($29)		!gpdisp!74
	addq $11,$0,$0
	br $31,$L364
$L366:
	lda $9,1($9)
	lda $0,1($0)
	lda $10,-1($10)
$L364:
	beq $10,$L365
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
	bne $1,$L366
$L365:
	bne $10,$L367
	ldq_u $1,0($0)
	mskbl $1,$0,$1
	stq_u $1,0($0)
$L367:
	mov $11,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,48($30)
	.cfi_restore 15
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE93:
	.end strncat
	.align 2
	.globl strnlen
	.ent strnlen
$strnlen..ng:
strnlen:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB94:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	br $31,$L369
$L371:
	lda $0,1($0)
$L369:
	cmpeq $0,$17,$1
	bne $1,$L370
	addq $16,$0,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L371
$L370:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE94:
	.end strnlen
	.align 2
	.globl strpbrk
	.ent strpbrk
$strpbrk..ng:
strpbrk:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB95:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	br $31,$L373
$L375:
	lda $2,1($2)
	ldq_u $1,-1($2)
	extqh $1,$2,$1
	sra $1,56,$1
	lda $4,1($16)
	ldq_u $3,0($16)
	extqh $3,$4,$3
	sra $3,56,$3
	cmpeq $1,$3,$1
	beq $1,$L376
	br $31,$L377
$L378:
	mov $17,$2
$L376:
	lda $3,1($2)
	ldq_u $1,0($2)
	extqh $1,$3,$1
	sra $1,56,$1
	bne $1,$L375
	lda $16,1($16)
$L373:
	lda $2,1($16)
	ldq_u $1,0($16)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L378
	mov $31,$0
	br $31,$L374
$L377:
	mov $16,$0
$L374:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE95:
	.end strpbrk
	.align 2
	.globl strrchr
	.ent strrchr
$strrchr..ng:
strrchr:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB96:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
$L381:
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
	bne $1,$L381
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE96:
	.end strrchr
	.align 2
	.globl strstr
	.ent strstr
strstr:
	.frame $15,48,$26,0
	.mask 0x4009e00,-48
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
	stq $15,40($30)
	.cfi_offset 26, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	beq $11,$L384
	lda $1,1($10)
	ldq_u $12,0($10)
	extqh $12,$1,$12
	sra $12,56,$12
	br $31,$L385
$L386:
	mov $11,$18
	mov $10,$17
	mov $9,$16
	ldq $27,strncmp($29)		!literal!78
	jsr $26,($27),0		!lituse_jsr!78
	ldah $29,0($26)		!gpdisp!79
	lda $29,0($29)		!gpdisp!79
	beq $0,$L388
	lda $9,1($9)
$L385:
	mov $12,$17
	mov $9,$16
	ldq $27,strchr($29)		!literal!80
	jsr $26,($27),0		!lituse_jsr!80
	ldah $29,0($26)		!gpdisp!81
	lda $29,0($29)		!gpdisp!81
	mov $0,$9
	bne $0,$L386
	mov $31,$0
	br $31,$L384
$L388:
	mov $9,$0
$L384:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $15,40($30)
	lda $30,48($30)
	.cfi_restore 15
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE97:
	.end strstr
	.align 2
	.globl copysign
	.ent copysign
$copysign..ng:
copysign:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB98:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmptlt $f16,$f31,$f10
	fbeq $f10,$L390
	cmptlt $f31,$f17,$f10
	fbne $f10,$L392
$L390:
	cmptlt $f31,$f16,$f10
	fbeq $f10,$L400
	cmptlt $f17,$f31,$f10
	fbeq $f10,$L401
$L392:
	cpysn $f16,$f16,$f0
	br $31,$L393
$L400:
	cpys $f16,$f16,$f0
	br $31,$L393
$L401:
	cpys $f16,$f16,$f0
$L393:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE98:
	.end copysign
	.align 2
	.globl memmem
	.ent memmem
memmem:
	.frame $15,48,$26,0
	.mask 0x4009e00,-48
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
	stq $15,40($30)
	.cfi_offset 26, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $18,$10
	mov $19,$12
	subq $17,$19,$11
	addq $16,$11,$11
	mov $16,$0
	beq $19,$L403
	cmpult $17,$19,$17
	mov $31,$0
	bne $17,$L403
	mov $16,$9
	br $31,$L404
$L406:
	lda $2,1($9)
	ldq_u $1,0($9)
	extqh $1,$2,$1
	sra $1,56,$1
	lda $3,1($10)
	ldq_u $2,0($10)
	extqh $2,$3,$2
	sra $2,56,$2
	cmpeq $1,$2,$1
	beq $1,$L405
	lda $18,-1($12)
	mov $3,$17
	lda $16,1($9)
	ldq $27,memcmp($29)		!literal!83
	jsr $26,($27),0		!lituse_jsr!83
	ldah $29,0($26)		!gpdisp!84
	lda $29,0($29)		!gpdisp!84
	beq $0,$L409
$L405:
	lda $9,1($9)
$L404:
	cmpule $9,$11,$1
	bne $1,$L406
	mov $31,$0
	br $31,$L403
$L409:
	mov $9,$0
$L403:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $15,40($30)
	lda $30,48($30)
	.cfi_restore 15
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE99:
	.end memmem
	.align 2
	.globl mempcpy
	.ent mempcpy
mempcpy:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
$LFB100:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!85
	lda $29,0($29)		!gpdisp!85
$mempcpy..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $18,$9
	ldq $27,memcpy($29)		!literal!86
	jsr $26,($27),0		!lituse_jsr!86
	ldah $29,0($26)		!gpdisp!87
	lda $29,0($29)		!gpdisp!87
	addq $0,$9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE100:
	.end mempcpy
	.align 2
	.globl frexp
	.ent frexp
frexp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB101:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!88
	lda $29,0($29)		!gpdisp!88
$frexp..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	cpys $f16,$f16,$f0
	cmptlt $f16,$f31,$f10
	fbeq $f10,$L427
	cpysn $f16,$f16,$f0
	lda $3,1($31)
	br $31,$L412
$L427:
	mov $31,$3
$L412:
	ldah $1,$LC16($29)		!gprelhigh
	lds $f11,$LC16($1)		!gprellow
	cmptle $f11,$f0,$f10
	mov $31,$1
	fbne $f10,$L414
	br $31,$L428
$L416:
	addl $1,1,$1
	ldah $2,$LC9($29)		!gprelhigh
	lds $f10,$LC9($2)		!gprellow
	mult $f0,$f10,$f0
$L414:
	ldah $2,$LC16($29)		!gprelhigh
	lds $f11,$LC16($2)		!gprellow
	cmptle $f11,$f0,$f10
	fbne $f10,$L416
	br $31,$L417
$L428:
	lda $1,1($31)
	cmpteq $f0,$f31,$f10
	fbeq $f10,$L418
	bis $31,$31,$1
$L418:
	and $1,0xff,$2
	lda $1,1($31)
	ldah $4,$LC9($29)		!gprelhigh
	lds $f11,$LC9($4)		!gprellow
	cmptlt $f0,$f11,$f10
	fbne $f10,$L419
	bis $31,$31,$1
$L419:
	and $1,0xff,$1
	and $1,$2,$1
	bne $1,$L425
	br $31,$L417
$L421:
	subl $1,1,$1
	addt $f0,$f0,$f0
	br $31,$L420
$L425:
	mov $31,$1
$L420:
	ldah $2,$LC9($29)		!gprelhigh
	lds $f11,$LC9($2)		!gprellow
	cmptlt $f0,$f11,$f10
	fbne $f10,$L421
$L417:
	stl $1,0($17)
	beq $3,$L422
	cpysn $f0,$f0,$f0
$L422:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE101:
	.end frexp
	.align 2
	.globl __muldi3
	.ent __muldi3
$__muldi3..ng:
__muldi3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB102:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	br $31,$L430
$L432:
	and $16,1,$2
	mov $17,$1
	cmoveq $2,0,$1
	addq $0,$1,$0
	addq $17,$17,$17
	srl $16,1,$16
$L430:
	bne $16,$L432
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE102:
	.end __muldi3
	.align 2
	.globl udivmodsi4
	.ent udivmodsi4
$udivmodsi4..ng:
udivmodsi4:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB103:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	lda $2,1($31)
	br $31,$L434
$L436:
	addl $17,$17,$17
	addl $2,$2,$2
$L434:
	zapnot $17,15,$1
	zapnot $16,15,$3
	cmpult $1,$3,$1
	zapnot $2,15,$3
	cmpult $31,$3,$3
	and $1,$3,$1
	beq $1,$L441
	cmplt $17,0,$1
	beq $1,$L436
	mov $31,$4
	br $31,$L438
$L439:
	zapnot $16,15,$1
	zapnot $17,15,$3
	cmpult $1,$3,$1
	bne $1,$L437
	subl $16,$17,$16
	bis $4,$2,$4
$L437:
	zapnot $2,15,$2
	srl $2,1,$2
	zapnot $17,15,$17
	srl $17,1,$17
	br $31,$L438
$L441:
	mov $31,$4
$L438:
	bne $2,$L439
	mov $4,$0
	cmovne $18,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE103:
	.end udivmodsi4
	.align 2
	.globl __clrsbqi2
	.ent __clrsbqi2
__clrsbqi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB104:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!89
	lda $29,0($29)		!gpdisp!89
$__clrsbqi2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	ornot $31,$16,$1
	cmovlt $16,$1,$16
	lda $0,7($31)
	beq $16,$L445
	sll $16,8,$16
	zapnot $16,14,$16
	ldq $27,__clzdi2($29)		!literal!90
	jsr $26,($27),0		!lituse_jsr!90
	ldah $29,0($26)		!gpdisp!91
	lda $29,0($29)		!gpdisp!91
	subl $0,33,$0
$L445:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE104:
	.end __clrsbqi2
	.align 2
	.globl __clrsbdi2
	.ent __clrsbdi2
__clrsbdi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB105:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!92
	lda $29,0($29)		!gpdisp!92
$__clrsbdi2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	ornot $31,$16,$1
	cmple $16,$1,$2
	cmovne $2,$1,$16
	lda $0,63($31)
	beq $16,$L449
	ldq $27,__clzdi2($29)		!literal!93
	jsr $26,($27),0		!lituse_jsr!93
	ldah $29,0($26)		!gpdisp!94
	lda $29,0($29)		!gpdisp!94
	subl $0,1,$0
$L449:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE105:
	.end __clrsbdi2
	.align 2
	.globl __mulsi3
	.ent __mulsi3
$__mulsi3..ng:
__mulsi3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB106:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	br $31,$L452
$L454:
	addl $0,$17,$1
	cmovlbs $16,$1,$0
	zapnot $16,15,$16
	srl $16,1,$16
	addl $17,$17,$17
$L452:
	bne $16,$L454
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE106:
	.end __mulsi3
	.align 2
	.globl __cmovd
	.ent __cmovd
$__cmovd..ng:
__cmovd:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB107:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $18,15,$5
	srl $5,3,$5
	bic $18,7,$2
	cmpult $16,$17,$1
	bne $1,$L456
	zapnot $18,15,$1
	addq $17,$1,$1
	cmpult $1,$16,$1
	beq $1,$L457
$L456:
	mov $17,$1
	mov $16,$3
	s8addq $5,$17,$5
	br $31,$L458
$L459:
	ldq $4,0($1)
	stq $4,0($3)
	lda $1,8($1)
	lda $3,8($3)
$L458:
	cmpeq $1,$5,$4
	beq $4,$L459
	zapnot $2,15,$2
	br $31,$L460
$L461:
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
$L460:
	zapnot $18,15,$1
	zapnot $2,15,$3
	cmpule $1,$3,$1
	beq $1,$L461
	br $31,$L455
$L463:
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
$L457:
	subl $18,1,$1
	addl $31,$1,$18
	zapnot $1,15,$2
	lda $3,-1($31)
	srl $3,32,$3
	cmpeq $2,$3,$2
	beq $2,$L463
$L455:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE107:
	.end __cmovd
	.align 2
	.globl __cmovh
	.ent __cmovh
$__cmovh..ng:
__cmovh:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB108:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $18,15,$5
	srl $5,1,$5
	cmpult $16,$17,$1
	bne $1,$L465
	zapnot $18,15,$1
	addq $17,$1,$1
	cmpult $1,$16,$1
	beq $1,$L466
$L465:
	mov $17,$1
	mov $16,$2
	addq $5,$5,$5
	addq $5,$17,$5
	br $31,$L467
$L468:
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
$L467:
	cmpeq $1,$5,$3
	beq $3,$L468
	blbc $18,$L464
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
	br $31,$L464
$L470:
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
$L466:
	subl $18,1,$1
	addl $31,$1,$18
	zapnot $1,15,$2
	lda $3,-1($31)
	srl $3,32,$3
	cmpeq $2,$3,$2
	beq $2,$L470
$L464:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE108:
	.end __cmovh
	.align 2
	.globl __cmovw
	.ent __cmovw
$__cmovw..ng:
__cmovw:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB109:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $18,15,$5
	srl $5,2,$5
	bic $18,3,$2
	cmpult $16,$17,$1
	bne $1,$L472
	zapnot $18,15,$1
	addq $17,$1,$1
	cmpult $1,$16,$1
	beq $1,$L473
$L472:
	mov $17,$1
	mov $16,$3
	s4addq $5,$17,$5
	br $31,$L474
$L475:
	ldl $4,0($1)
	stl $4,0($3)
	lda $1,4($1)
	lda $3,4($3)
$L474:
	cmpeq $1,$5,$4
	beq $4,$L475
	zapnot $2,15,$2
	br $31,$L476
$L477:
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
$L476:
	zapnot $18,15,$1
	zapnot $2,15,$3
	cmpule $1,$3,$1
	beq $1,$L477
	br $31,$L471
$L479:
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
$L473:
	subl $18,1,$1
	addl $31,$1,$18
	zapnot $1,15,$2
	lda $3,-1($31)
	srl $3,32,$3
	cmpeq $2,$3,$2
	beq $2,$L479
$L471:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE109:
	.end __cmovw
	.align 2
	.globl __modi
	.ent __modi
__modi:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB110:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!96
	lda $29,0($29)		!gpdisp!96
$__modi..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $17,$25
	mov $16,$24
	ldq $27,__reml($29)		!literal!95
	jsr $23,($27),__reml		!lituse_jsrdirect!95
	mov $27,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE110:
	.end __modi
	.align 2
	.globl __uitod
	.ent __uitod
$__uitod..ng:
__uitod:
	.frame $15,32,$26,0
	.mask 0x4008000,-32
$LFB111:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -32
	.cfi_offset 15, -24
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,15,$16
	stq $16,16($15)
	ldt $f0,16($15)
	cvtqt $f0,$f0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE111:
	.end __uitod
	.align 2
	.globl __uitof
	.ent __uitof
$__uitof..ng:
__uitof:
	.frame $15,32,$26,0
	.mask 0x4008000,-32
$LFB112:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -32
	.cfi_offset 15, -24
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,15,$16
	stq $16,16($15)
	ldt $f0,16($15)
	cvtqs $f0,$f0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE112:
	.end __uitof
	.align 2
	.globl __ulltod
	.ent __ulltod
$__ulltod..ng:
__ulltod:
	.frame $15,32,$26,0
	.mask 0x4008000,-32
$LFB113:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -32
	.cfi_offset 15, -24
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	blt $16,$L488
	stq $16,16($15)
	ldt $f10,16($15)
	cvtqt $f10,$f0
	br $31,$L489
$L488:
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,16($15)
	ldt $f11,16($15)
	cvtqt $f11,$f10
	addt $f10,$f10,$f0
$L489:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE113:
	.end __ulltod
	.align 2
	.globl __ulltof
	.ent __ulltof
$__ulltof..ng:
__ulltof:
	.frame $15,32,$26,0
	.mask 0x4008000,-32
$LFB114:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -32
	.cfi_offset 15, -24
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	blt $16,$L491
	stq $16,16($15)
	ldt $f10,16($15)
	cvtqs $f10,$f0
	br $31,$L492
$L491:
	srl $16,1,$1
	and $16,1,$16
	bis $1,$16,$1
	stq $1,16($15)
	ldt $f11,16($15)
	cvtqs $f11,$f10
	adds $f10,$f10,$f0
$L492:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE114:
	.end __ulltof
	.align 2
	.globl __umodi
	.ent __umodi
__umodi:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB115:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!98
	lda $29,0($29)		!gpdisp!98
$__umodi..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $17,$25
	mov $16,$24
	ldq $27,__remlu($29)		!literal!97
	jsr $23,($27),__remlu		!lituse_jsrdirect!97
	mov $27,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE115:
	.end __umodi
	.align 2
	.globl __clzhi2
	.ent __clzhi2
$__clzhi2..ng:
__clzhi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB116:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	br $31,$L495
$L497:
	addl $31,$16,$1
	lda $2,15($31)
	subl $2,$0,$2
	sra $1,$2,$1
	blbs $1,$L496
	addl $0,1,$0
$L495:
	cmpeq $0,16,$1
	beq $1,$L497
$L496:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE116:
	.end __clzhi2
	.align 2
	.globl __ctzhi2
	.ent __ctzhi2
$__ctzhi2..ng:
__ctzhi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB117:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	br $31,$L499
$L501:
	addl $31,$16,$1
	sra $1,$0,$1
	blbs $1,$L500
	addl $0,1,$0
$L499:
	cmpeq $0,16,$1
	beq $1,$L501
$L500:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE117:
	.end __ctzhi2
	.align 2
	.globl __fixunssfsi
	.ent __fixunssfsi
__fixunssfsi:
	.frame $15,32,$26,0
	.mask 0x4008000,-32
$LFB118:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!99
	lda $29,0($29)		!gpdisp!99
$__fixunssfsi..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -32
	.cfi_offset 15, -24
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	ldah $1,$LC17($29)		!gprelhigh
	lds $f10,$LC17($1)		!gprellow
	cmptle $f10,$f16,$f10
	fbeq $f10,$L507
	lds $f11,$LC17($1)		!gprellow
	subs $f16,$f11,$f10
	cvttq/c $f10,$f10
	stt $f10,16($15)
	ldq $0,16($15)
	ldah $0,1($0)
	lda $0,-32768($0)
	br $31,$L505
$L507:
	cvttq/c $f16,$f16
	stt $f16,16($15)
	ldq $0,16($15)
$L505:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE118:
	.end __fixunssfsi
	.align 2
	.globl __parityhi2
	.ent __parityhi2
$__parityhi2..ng:
__parityhi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB119:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	mov $31,$1
	br $31,$L509
$L511:
	addl $31,$16,$2
	sra $2,$1,$2
	addl $0,1,$3
	cmovlbs $2,$3,$0
	addl $1,1,$1
$L509:
	cmpeq $1,16,$2
	beq $2,$L511
	and $0,1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE119:
	.end __parityhi2
	.align 2
	.globl __popcounthi2
	.ent __popcounthi2
$__popcounthi2..ng:
__popcounthi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB120:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	mov $31,$1
	br $31,$L513
$L515:
	addl $31,$16,$2
	sra $2,$1,$2
	addl $0,1,$3
	cmovlbs $2,$3,$0
	addl $1,1,$1
$L513:
	cmpeq $1,16,$2
	beq $2,$L515
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE120:
	.end __popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.ent __mulsi3_iq2000
$__mulsi3_iq2000..ng:
__mulsi3_iq2000:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB121:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	br $31,$L517
$L519:
	addl $0,$17,$1
	cmovlbs $16,$1,$0
	zapnot $16,15,$16
	srl $16,1,$16
	addl $17,$17,$17
$L517:
	bne $16,$L519
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE121:
	.end __mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.ent __mulsi3_lm32
$__mulsi3_lm32..ng:
__mulsi3_lm32:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB122:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $31,$0
	beq $16,$L521
	br $31,$L522
$L524:
	addl $0,$16,$1
	cmovlbs $17,$1,$0
	addl $16,$16,$16
	zapnot $17,15,$17
	srl $17,1,$17
$L522:
	bne $17,$L524
$L521:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE122:
	.end __mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.ent __udivmodsi4
$__udivmodsi4..ng:
__udivmodsi4:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB123:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	lda $2,1($31)
	br $31,$L527
$L529:
	addl $17,$17,$17
	addl $2,$2,$2
$L527:
	zapnot $17,15,$1
	zapnot $16,15,$3
	cmpult $1,$3,$1
	zapnot $2,15,$3
	cmpult $31,$3,$3
	and $1,$3,$1
	beq $1,$L534
	cmplt $17,0,$1
	beq $1,$L529
	mov $31,$4
	br $31,$L531
$L532:
	zapnot $16,15,$1
	zapnot $17,15,$3
	cmpult $1,$3,$1
	bne $1,$L530
	subl $16,$17,$16
	bis $4,$2,$4
$L530:
	zapnot $2,15,$2
	srl $2,1,$2
	zapnot $17,15,$17
	srl $17,1,$17
	br $31,$L531
$L534:
	mov $31,$4
$L531:
	bne $2,$L532
	mov $4,$0
	cmovne $18,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE123:
	.end __udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.ent __mspabi_cmpf
$__mspabi_cmpf..ng:
__mspabi_cmpf:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB124:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmptlt $f16,$f17,$f10
	lda $0,-1($31)
	fbne $f10,$L537
	cmptlt $f17,$f16,$f17
	lda $0,1($31)
	fbne $f17,$L537
	mov $31,$0
$L537:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE124:
	.end __mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.ent __mspabi_cmpd
$__mspabi_cmpd..ng:
__mspabi_cmpd:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB125:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmptlt $f16,$f17,$f10
	lda $0,-1($31)
	fbne $f10,$L541
	cmptlt $f17,$f16,$f10
	lda $0,1($31)
	fbne $f10,$L541
	mov $31,$0
$L541:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE125:
	.end __mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.ent __mspabi_mpysll
$__mspabi_mpysll..ng:
__mspabi_mpysll:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB126:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mulq $16,$17,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE126:
	.end __mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.ent __mspabi_mpyull
$__mspabi_mpyull..ng:
__mspabi_mpyull:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB127:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mulq $16,$17,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE127:
	.end __mspabi_mpyull
	.align 2
	.globl __mulhi3
	.ent __mulhi3
$__mulhi3..ng:
__mulhi3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB128:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmplt $17,0,$1
	mov $31,$5
	beq $1,$L547
	subl $31,$17,$17
	lda $5,1($31)
$L547:
	mov $31,$4
	mov $31,$1
	br $31,$L548
$L550:
	addl $4,$16,$2
	cmovlbs $17,$2,$4
	addl $16,$16,$16
	sra $17,1,$17
	lda $1,1($1)
	sll $1,56,$1
	sra $1,56,$1
$L548:
	cmpult $31,$17,$3
	and $1,0xff,$2
	cmpule $2,31,$2
	and $2,$3,$2
	bne $2,$L550
	subl $31,$4,$0
	cmoveq $5,$4,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE128:
	.end __mulhi3
	.align 2
	.globl __divsi3
	.ent __divsi3
__divsi3:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
$LFB129:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!100
	lda $29,0($29)		!gpdisp!100
$__divsi3..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	cmplt $16,0,$1
	mov $31,$9
	beq $1,$L555
	subq $31,$16,$16
	lda $9,1($31)
$L555:
	cmplt $17,0,$1
	beq $1,$L556
	subq $31,$17,$17
	xor $9,1,$9
$L556:
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
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE129:
	.end __divsi3
	.align 2
	.globl __modsi3
	.ent __modsi3
__modsi3:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
$LFB130:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!103
	lda $29,0($29)		!gpdisp!103
$__modsi3..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	cmplt $16,0,$1
	mov $31,$9
	beq $1,$L560
	subq $31,$16,$16
	lda $9,1($31)
$L560:
	subq $31,$17,$1
	cmovlt $17,$1,$17
	lda $18,1($31)
	addl $31,$17,$17
	addl $31,$16,$16
	ldq $27,__udivmodsi4($29)		!literal!104
	jsr $26,($27),0		!lituse_jsr!104
	ldah $29,0($26)		!gpdisp!105
	lda $29,0($29)		!gpdisp!105
	zapnot $0,15,$0
	subq $31,$0,$1
	cmovne $9,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE130:
	.end __modsi3
	.align 2
	.globl __udivmodhi4
	.ent __udivmodhi4
$__udivmodhi4..ng:
__udivmodhi4:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB131:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	lda $1,1($31)
	br $31,$L565
$L567:
	addl $17,$17,$17
	zapnot $17,3,$17
	addl $1,$1,$1
	zapnot $1,3,$1
$L565:
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L572
	srl $17,15,$2
	beq $2,$L567
	mov $31,$3
	br $31,$L569
$L570:
	cmpult $16,$17,$2
	bne $2,$L568
	subl $16,$17,$16
	zapnot $16,3,$16
	bis $3,$1,$3
$L568:
	srl $1,1,$1
	srl $17,1,$17
	br $31,$L569
$L572:
	mov $31,$3
$L569:
	bne $1,$L570
	mov $3,$0
	cmovne $18,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE131:
	.end __udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.ent __udivmodsi4_libgcc
$__udivmodsi4_libgcc..ng:
__udivmodsi4_libgcc:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB132:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	lda $1,1($31)
	br $31,$L575
$L577:
	addq $17,$17,$17
	addq $1,$1,$1
$L575:
	cmpult $17,$16,$2
	cmpult $31,$1,$3
	and $2,$3,$2
	beq $2,$L582
	srl $17,31,$2
	blbc $2,$L577
	mov $31,$3
	br $31,$L579
$L580:
	cmpult $16,$17,$2
	bne $2,$L578
	subq $16,$17,$16
	bis $3,$1,$3
$L578:
	srl $1,1,$1
	srl $17,1,$17
	br $31,$L579
$L582:
	mov $31,$3
$L579:
	bne $1,$L580
	mov $3,$0
	cmovne $18,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE132:
	.end __udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.ent __ashldi3
$__ashldi3..ng:
__ashldi3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB133:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	and $17,32,$1
	beq $1,$L585
	addl $31,$16,$16
	subl $17,32,$17
	sll $16,$17,$16
	sll $16,32,$0
	br $31,$L587
$L585:
	mov $16,$0
	beq $17,$L587
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
$L587:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE133:
	.end __ashldi3
	.align 2
	.globl __ashlti3
	.ent __ashlti3
$__ashlti3..ng:
__ashlti3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB134:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	and $19,64,$1
	beq $1,$L590
	mov $31,$4
	sll $17,$19,$5
	br $31,$L591
$L590:
	bne $19,$L592
	stq $17,0($0)
	stq $18,8($0)
	br $31,$L593
$L592:
	sll $17,$19,$4
	sll $18,$19,$2
	subq $31,$19,$19
	srl $17,$19,$1
	bis $1,$2,$5
$L591:
	stq $4,0($0)
	stq $5,8($0)
$L593:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE134:
	.end __ashlti3
	.align 2
	.globl __ashrdi3
	.ent __ashrdi3
$__ashrdi3..ng:
__ashrdi3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB135:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	and $17,32,$1
	beq $1,$L595
	sra $16,32,$0
	sra $16,63,$16
	subl $17,32,$17
	sra $0,$17,$0
	zapnot $0,15,$0
	sll $16,32,$16
	bis $16,$0,$0
	br $31,$L597
$L595:
	mov $16,$0
	beq $17,$L597
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
$L597:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE135:
	.end __ashrdi3
	.align 2
	.globl __ashrti3
	.ent __ashrti3
$__ashrti3..ng:
__ashrti3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB136:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	and $19,64,$1
	beq $1,$L600
	sra $18,63,$5
	sra $18,$19,$4
	br $31,$L601
$L600:
	bne $19,$L602
	stq $17,0($0)
	stq $18,8($0)
	br $31,$L603
$L602:
	sra $18,$19,$5
	subq $31,$19,$3
	sll $18,$3,$1
	srl $17,$19,$2
	bis $1,$2,$4
$L601:
	stq $4,0($0)
	stq $5,8($0)
$L603:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE136:
	.end __ashrti3
	.align 2
	.globl __bswapdi2
	.ent __bswapdi2
$__bswapdi2..ng:
__bswapdi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB137:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE137:
	.end __bswapdi2
	.align 2
	.globl __bswapsi2
	.ent __bswapsi2
$__bswapsi2..ng:
__bswapsi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB138:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE138:
	.end __bswapsi2
	.align 2
	.globl __clzsi2
	.ent __clzsi2
$__clzsi2..ng:
__clzsi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB139:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,15,$3
	ldah $1,1($31)
	lda $1,-1($1)
	cmpule $3,$1,$3
	sll $3,4,$3
	lda $2,16($31)
	subl $2,$3,$2
	zapnot $16,15,$1
	srl $1,$2,$1
	zapnot $1,2,$2
	cmpeq $2,0,$2
	s8addq $2,0,$2
	lda $4,8($31)
	subl $4,$2,$4
	zapnot $1,15,$1
	srl $1,$4,$1
	addl $2,$3,$0
	and $1,240,$2
	cmpeq $2,0,$2
	s4addq $2,0,$2
	lda $3,4($31)
	subl $3,$2,$3
	zapnot $1,15,$1
	srl $1,$3,$1
	addl $0,$2,$0
	and $1,12,$2
	cmpeq $2,0,$2
	addq $2,$2,$2
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE139:
	.end __clzsi2
	.align 2
	.globl __clzti2
	.ent __clzti2
__clzti2:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
$LFB140:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!106
	lda $29,0($29)		!gpdisp!106
$__clzti2..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE140:
	.end __clzti2
	.align 2
	.globl __cmpdi2
	.ent __cmpdi2
$__cmpdi2..ng:
__cmpdi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB141:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	sra $16,32,$1
	sra $17,32,$2
	cmplt $1,$2,$1
	mov $31,$0
	bne $1,$L617
	sra $16,32,$1
	cmple $1,$2,$1
	lda $0,2($31)
	beq $1,$L617
	zapnot $16,15,$1
	zapnot $17,15,$2
	cmpult $1,$2,$1
	mov $31,$0
	bne $1,$L617
	zapnot $16,15,$16
	cmpult $2,$16,$0
	lda $0,1($0)
$L617:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE141:
	.end __cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.ent __aeabi_lcmp
__aeabi_lcmp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB142:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!109
	lda $29,0($29)		!gpdisp!109
$__aeabi_lcmp..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	ldq $27,__cmpdi2($29)		!literal!110
	jsr $26,($27),0		!lituse_jsr!110
	ldah $29,0($26)		!gpdisp!111
	lda $29,0($29)		!gpdisp!111
	subl $0,1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE142:
	.end __aeabi_lcmp
	.align 2
	.globl __cmpti2
	.ent __cmpti2
$__cmpti2..ng:
__cmpti2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB143:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmplt $17,$19,$1
	mov $31,$0
	bne $1,$L624
	cmple $17,$19,$1
	lda $0,2($31)
	beq $1,$L624
	cmpult $16,$18,$1
	mov $31,$0
	bne $1,$L624
	cmpult $18,$16,$0
	lda $0,1($0)
$L624:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE143:
	.end __cmpti2
	.align 2
	.globl __ctzsi2
	.ent __ctzsi2
$__ctzsi2..ng:
__ctzsi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB144:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	zapnot $16,3,$2
	cmpeq $2,0,$2
	sll $2,4,$2
	zapnot $16,15,$16
	srl $16,$2,$16
	and $16,0xff,$1
	cmpeq $1,0,$1
	s8addq $1,0,$1
	zapnot $16,15,$16
	srl $16,$1,$16
	addl $1,$2,$0
	and $16,15,$1
	cmpeq $1,0,$1
	s4addq $1,0,$1
	zapnot $16,15,$16
	srl $16,$1,$16
	addl $0,$1,$0
	and $16,3,$1
	cmpeq $1,0,$1
	addq $1,$1,$1
	zapnot $16,15,$16
	srl $16,$1,$16
	and $16,3,$16
	addl $0,$1,$0
	ornot $31,$16,$2
	and $2,1,$2
	srl $16,1,$16
	lda $1,2($31)
	subl $1,$16,$1
	subl $31,$2,$2
	and $1,$2,$1
	addl $0,$1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE144:
	.end __ctzsi2
	.align 2
	.globl __ctzti2
	.ent __ctzti2
__ctzti2:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
$LFB145:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!112
	lda $29,0($29)		!gpdisp!112
$__ctzti2..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	stq $15,16($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.cfi_offset 15, -16
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$2
	cmpeq $16,0,$1
	subl $31,$1,$9
	subq $31,$1,$1
	and $1,$17,$16
	bic $2,$1,$1
	bis $1,$16,$16
	ldq $27,__ctzdi2($29)		!literal!113
	jsr $26,($27),0		!lituse_jsr!113
	ldah $29,0($26)		!gpdisp!114
	lda $29,0($29)		!gpdisp!114
	addl $31,$9,$9
	and $9,64,$9
	addl $0,$9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	.cfi_restore 15
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE145:
	.end __ctzti2
	.align 2
	.globl __ffsti2
	.ent __ffsti2
__ffsti2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB146:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!115
	lda $29,0($29)		!gpdisp!115
$__ffsti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	bne $16,$L640
	mov $31,$0
	beq $17,$L641
	mov $17,$16
	ldq $27,__ctzdi2($29)		!literal!116
	jsr $26,($27),0		!lituse_jsr!116
	ldah $29,0($26)		!gpdisp!117
	lda $29,0($29)		!gpdisp!117
	addl $0,65,$0
	br $31,$L641
$L640:
	ldq $27,__ctzdi2($29)		!literal!118
	jsr $26,($27),0		!lituse_jsr!118
	ldah $29,0($26)		!gpdisp!119
	lda $29,0($29)		!gpdisp!119
	addl $0,1,$0
$L641:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE146:
	.end __ffsti2
	.align 2
	.globl __lshrdi3
	.ent __lshrdi3
$__lshrdi3..ng:
__lshrdi3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB147:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	and $17,32,$1
	beq $1,$L644
	subl $17,32,$17
	srl $16,32,$16
	srl $16,$17,$16
	zapnot $16,15,$0
	br $31,$L646
$L644:
	mov $16,$0
	beq $17,$L646
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
$L646:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE147:
	.end __lshrdi3
	.align 2
	.globl __lshrti3
	.ent __lshrti3
$__lshrti3..ng:
__lshrti3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB148:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	and $19,64,$1
	beq $1,$L649
	mov $31,$5
	srl $18,$19,$4
	br $31,$L650
$L649:
	bne $19,$L651
	stq $17,0($0)
	stq $18,8($0)
	br $31,$L652
$L651:
	srl $18,$19,$5
	subq $31,$19,$3
	sll $18,$3,$1
	srl $17,$19,$2
	bis $1,$2,$4
$L650:
	stq $4,0($0)
	stq $5,8($0)
$L652:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE148:
	.end __lshrti3
	.align 2
	.globl __muldsi3
	.ent __muldsi3
$__muldsi3..ng:
__muldsi3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB149:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE149:
	.end __muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.ent __muldi3_compiler_rt
__muldi3_compiler_rt:
	.frame $15,48,$26,0
	.mask 0x4009e00,-48
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
	stq $15,40($30)
	.cfi_offset 26, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $15,40($30)
	lda $30,48($30)
	.cfi_restore 15
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE150:
	.end __muldi3_compiler_rt
	.align 2
	.globl __mulddi3
	.ent __mulddi3
$__mulddi3..ng:
__mulddi3:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB151:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	zapnot $17,15,$5
	zapnot $18,15,$6
	mulq $5,$6,$4
	srl $4,32,$1
	zapnot $4,15,$4
	srl $17,32,$17
	mulq $17,$6,$6
	addq $1,$6,$1
	sll $1,32,$6
	addq $6,$4,$2
	srl $1,32,$3
	srl $2,32,$1
	zapnot $2,15,$4
	srl $18,32,$18
	mulq $5,$18,$5
	addq $1,$5,$1
	sll $1,32,$5
	addq $5,$4,$2
	srl $1,32,$1
	addq $1,$3,$1
	mulq $17,$18,$17
	addq $17,$1,$3
	stq $2,0($16)
	stq $3,8($16)
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE151:
	.end __mulddi3
	.align 2
	.globl __multi3
	.ent __multi3
__multi3:
	.frame $15,96,$26,0
	.mask 0x400be00,-96
$LFB152:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!123
	lda $29,0($29)		!gpdisp!123
$__multi3..ng:
	lda $30,-96($30)
	.cfi_def_cfa_offset 96
	stq $26,0($30)
	stq $9,8($30)
	stq $10,16($30)
	stq $11,24($30)
	stq $12,32($30)
	stq $13,40($30)
	stq $15,48($30)
	.cfi_offset 26, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 15, -48
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $18,$11
	stq $19,80($15)
	stq $20,88($15)
	ldq $13,80($15)
	mov $13,$18
	lda $16,64($15)
	ldq $27,__mulddi3($29)		!literal!124
	jsr $26,($27),__mulddi3		!lituse_jsr!124
	ldah $29,0($26)		!gpdisp!125
	lda $29,0($29)		!gpdisp!125
	ldq $2,64($15)
	ldq $3,72($15)
	mov $2,$4
	mulq $11,$13,$1
	ldq $2,88($15)
	mulq $2,$10,$2
	addq $1,$2,$1
	addq $1,$3,$5
	stq $4,0($9)
	stq $5,8($9)
	mov $9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $15,48($30)
	lda $30,96($30)
	.cfi_restore 15
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE152:
	.end __multi3
	.align 2
	.globl __negdi2
	.ent __negdi2
$__negdi2..ng:
__negdi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB153:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	subq $31,$16,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE153:
	.end __negdi2
	.align 2
	.globl __negti2
	.ent __negti2
$__negti2..ng:
__negti2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB154:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	mov $16,$0
	subq $31,$17,$2
	cmpult $31,$2,$1
	subq $31,$18,$3
	subq $3,$1,$3
	stq $2,0($16)
	stq $3,8($16)
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE154:
	.end __negti2
	.align 2
	.globl __paritydi2
	.ent __paritydi2
$__paritydi2..ng:
__paritydi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB155:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE155:
	.end __paritydi2
	.align 2
	.globl __parityti2
	.ent __parityti2
$__parityti2..ng:
__parityti2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB156:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	xor $17,$16,$16
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE156:
	.end __parityti2
	.align 2
	.globl __paritysi2
	.ent __paritysi2
$__paritysi2..ng:
__paritysi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB157:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE157:
	.end __paritysi2
	.align 2
	.globl __popcountdi2
	.ent __popcountdi2
__popcountdi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB158:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!126
	lda $29,0($29)		!gpdisp!126
$__popcountdi2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE158:
	.end __popcountdi2
	.align 2
	.globl __popcountsi2
	.ent __popcountsi2
$__popcountsi2..ng:
__popcountsi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB159:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
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
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE159:
	.end __popcountsi2
	.align 2
	.globl __popcountti2
	.ent __popcountti2
__popcountti2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB160:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!127
	lda $29,0($29)		!gpdisp!127
$__popcountti2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	sll $17,63,$1
	srl $16,1,$2
	bis $1,$2,$2
	srl $17,1,$3
	ldah $1,$LC19($29)		!gprelhigh
	ldq $1,$LC19($1)		!gprellow
	and $2,$1,$4
	and $3,$1,$5
	subq $16,$4,$2
	cmpult $16,$2,$1
	subq $17,$5,$3
	subq $3,$1,$3
	sll $3,62,$1
	srl $2,2,$4
	bis $1,$4,$4
	srl $3,2,$5
	ldah $1,$LC20($29)		!gprelhigh
	ldq $1,$LC20($1)		!gprellow
	and $4,$1,$6
	and $5,$1,$7
	and $2,$1,$4
	and $3,$1,$5
	addq $6,$4,$2
	cmpult $2,$6,$1
	addq $7,$5,$3
	addq $1,$3,$3
	sll $3,60,$1
	srl $2,4,$6
	bis $1,$6,$6
	srl $3,4,$7
	addq $6,$2,$4
	cmpult $4,$6,$1
	addq $7,$3,$5
	addq $1,$5,$5
	ldah $1,$LC21($29)		!gprelhigh
	ldq $1,$LC21($1)		!gprellow
	and $4,$1,$22
	and $5,$1,$23
	addq $23,$22,$2
	sra $2,32,$1
	addl $1,$2,$1
	zapnot $1,15,$0
	srl $0,16,$0
	addl $0,$1,$0
	zapnot $0,15,$1
	srl $1,8,$1
	addl $0,$1,$0
	and $0,0xff,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE160:
	.end __popcountti2
	.align 2
	.globl __powidf2
	.ent __powidf2
__powidf2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB161:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!128
	lda $29,0($29)		!gpdisp!128
$__powidf2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	srl $17,63,$2
	ldah $1,$LC16($29)		!gprelhigh
	lds $f10,$LC16($1)		!gprellow
$L668:
	blbc $17,$L666
	mult $f10,$f16,$f10
$L666:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L667
	mult $f16,$f16,$f16
	br $31,$L668
$L667:
	cpys $f10,$f10,$f0
	beq $2,$L669
	ldah $1,$LC16($29)		!gprelhigh
	lds $f11,$LC16($1)		!gprellow
	divt $f11,$f10,$f0
$L669:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE161:
	.end __powidf2
	.align 2
	.globl __powisf2
	.ent __powisf2
__powisf2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB162:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!129
	lda $29,0($29)		!gpdisp!129
$__powisf2..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	srl $17,63,$2
	ldah $1,$LC16($29)		!gprelhigh
	lds $f10,$LC16($1)		!gprellow
$L674:
	blbc $17,$L672
	muls $f10,$f16,$f10
$L672:
	srl $17,63,$1
	addq $1,$17,$17
	sra $17,1,$17
	beq $17,$L673
	muls $f16,$f16,$f16
	br $31,$L674
$L673:
	cpys $f10,$f10,$f0
	beq $2,$L675
	ldah $1,$LC16($29)		!gprelhigh
	lds $f11,$LC16($1)		!gprellow
	divs $f11,$f10,$f0
$L675:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE162:
	.end __powisf2
	.align 2
	.globl __ucmpdi2
	.ent __ucmpdi2
$__ucmpdi2..ng:
__ucmpdi2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB163:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	srl $16,32,$1
	srl $17,32,$2
	cmpult $1,$2,$1
	mov $31,$0
	bne $1,$L678
	srl $16,32,$1
	cmpule $1,$2,$1
	lda $0,2($31)
	beq $1,$L678
	zapnot $16,15,$1
	zapnot $17,15,$2
	cmpult $1,$2,$1
	mov $31,$0
	bne $1,$L678
	zapnot $16,15,$16
	cmpult $2,$16,$0
	lda $0,1($0)
$L678:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE163:
	.end __ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.ent __aeabi_ulcmp
__aeabi_ulcmp:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB164:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!130
	lda $29,0($29)		!gpdisp!130
$__aeabi_ulcmp..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 1
	ldq $27,__ucmpdi2($29)		!literal!131
	jsr $26,($27),0		!lituse_jsr!131
	ldah $29,0($26)		!gpdisp!132
	lda $29,0($29)		!gpdisp!132
	subl $0,1,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE164:
	.end __aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.ent __ucmpti2
$__ucmpti2..ng:
__ucmpti2:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$LFB165:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $15,8($30)
	.cfi_offset 26, -16
	.cfi_offset 15, -8
	mov $30,$15
	.cfi_def_cfa_register 15
	.prologue 0
	cmpult $17,$19,$1
	mov $31,$0
	bne $1,$L685
	cmpule $17,$19,$1
	lda $0,2($31)
	beq $1,$L685
	cmpult $16,$18,$1
	mov $31,$0
	bne $1,$L685
	cmpult $18,$16,$0
	lda $0,1($0)
$L685:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	.cfi_restore 15
	.cfi_restore 26
	.cfi_def_cfa 30, 0
	ret $31,($26),1
	.cfi_endproc
$LFE165:
	.end __ucmpti2
	.section	.sbss,"aw"
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.section	.rodata
	.align 3
$LC0:
	.quad	6364136223846793005
	.align 2
$LC1:
	.long	-8388609
	.align 2
$LC2:
	.long	2139095039
	.align 3
$LC5:
	.long	-1
	.long	-1048577
	.align 3
$LC6:
	.long	-1
	.long	2146435071
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
	.align 2
$LC9:
	.long	1056964608
$LC10 = $LC14+12
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
	.align 2
$LC16:
	.long	1065353216
	.align 2
$LC17:
	.long	1191182336
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
