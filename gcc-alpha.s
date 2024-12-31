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
	.frame $30,48,$26,0
$LFB0:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldq $1,32($30)
	stq $1,0($30)
	ldq $2,0($30)
	ldq $3,8($30)
	ldq $1,16($30)
	stq $2,0($1)
	stq $3,8($1)
	ldq $0,16($30)
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE0:
	.end make_ti
	.align 2
	.globl make_tu
	.ent make_tu
$make_tu..ng:
make_tu:
	.frame $30,48,$26,0
$LFB1:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldq $1,32($30)
	stq $1,0($30)
	ldq $2,0($30)
	ldq $3,8($30)
	ldq $1,16($30)
	stq $2,0($1)
	stq $3,8($1)
	ldq $0,16($30)
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE1:
	.end make_tu
	.align 2
	.globl memmove
	.ent memmove
$memmove..ng:
memmove:
	.frame $30,48,$26,0
$LFB2:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldq $2,8($30)
	ldq $1,0($30)
	cmpult $2,$1,$1
	beq $1,$L6
	ldq $2,8($30)
	ldq $1,32($30)
	addq $2,$1,$1
	stq $1,8($30)
	ldq $2,0($30)
	ldq $1,32($30)
	addq $2,$1,$1
	stq $1,0($30)
	br $31,$L7
$L8:
	ldq $1,8($30)
	lda $1,-1($1)
	stq $1,8($30)
	ldq $1,0($30)
	lda $1,-1($1)
	stq $1,0($30)
	ldq $1,8($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq $3,0($30)
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
$L7:
	ldq $1,32($30)
	bne $1,$L8
	br $31,$L9
$L6:
	ldq $2,8($30)
	ldq $1,0($30)
	cmpeq $2,$1,$1
	bne $1,$L9
	br $31,$L10
$L11:
	ldq $2,8($30)
	lda $1,1($2)
	stq $1,8($30)
	ldq $1,0($30)
	lda $3,1($1)
	stq $3,0($30)
	lda $3,1($2)
	ldq_u $2,0($2)
	extqh $2,$3,$2
	sra $2,56,$2
	bis $31,$2,$4
	ldq_u $3,0($1)
	mov $1,$2
	mskbl $3,$2,$3
	insbl $4,$2,$2
	bis $2,$3,$2
	stq_u $2,0($1)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
$L10:
	ldq $1,32($30)
	bne $1,$L11
$L9:
	ldq $1,16($30)
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE2:
	.end memmove
	.align 2
	.globl memccpy
	.ent memccpy
$memccpy..ng:
memccpy:
	.frame $30,48,$26,0
$LFB3:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	mov $18,$1
	stq $19,40($30)
	stl $1,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldl $1,32($30)
	and $1,0xff,$1
	stl $1,32($30)
	br $31,$L14
$L16:
	ldq $1,40($30)
	lda $1,-1($1)
	stq $1,40($30)
	ldq $1,8($30)
	lda $1,1($1)
	stq $1,8($30)
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
$L14:
	ldq $1,40($30)
	beq $1,$L15
	ldq $1,8($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	ldq $3,0($30)
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	ldl $2,32($30)
	cmpeq $2,$1,$1
	beq $1,$L16
$L15:
	ldq $1,40($30)
	beq $1,$L17
	ldq $1,0($30)
	lda $1,1($1)
	br $31,$L18
$L17:
	mov $31,$1
$L18:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE3:
	.end memccpy
	.align 2
	.globl memchr
	.ent memchr
$memchr..ng:
memchr:
	.frame $30,48,$26,0
$LFB4:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	mov $17,$1
	stq $18,32($30)
	stl $1,24($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldl $1,24($30)
	and $1,0xff,$1
	stl $1,24($30)
	br $31,$L20
$L22:
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
$L20:
	ldq $1,32($30)
	beq $1,$L21
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	ldl $2,24($30)
	cmpeq $2,$1,$1
	beq $1,$L22
$L21:
	ldq $1,32($30)
	beq $1,$L23
	ldq $1,0($30)
	br $31,$L25
$L23:
	mov $31,$1
$L25:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE4:
	.end memchr
	.align 2
	.globl memcmp
	.ent memcmp
$memcmp..ng:
memcmp:
	.frame $30,48,$26,0
$LFB5:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	br $31,$L27
$L29:
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
	ldq $1,8($30)
	lda $1,1($1)
	stq $1,8($30)
$L27:
	ldq $1,32($30)
	beq $1,$L28
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$2
	ldq $1,8($30)
	ldq_u $3,0($1)
	extbl $3,$1,$1
	and $1,0xff,$1
	cmpeq $2,$1,$1
	bne $1,$L29
$L28:
	ldq $1,32($30)
	beq $1,$L30
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$2
	ldq $1,8($30)
	ldq_u $3,0($1)
	extbl $3,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	subl $2,$1,$1
	addl $31,$1,$1
	br $31,$L31
$L30:
	mov $31,$1
$L31:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE5:
	.end memcmp
	.align 2
	.globl memcpy
	.ent memcpy
$memcpy..ng:
memcpy:
	.frame $30,48,$26,0
$LFB6:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	br $31,$L34
$L35:
	ldq $2,8($30)
	lda $1,1($2)
	stq $1,8($30)
	ldq $1,0($30)
	lda $3,1($1)
	stq $3,0($30)
	ldq_u $3,0($2)
	extbl $3,$2,$2
	and $2,0xff,$2
	bis $31,$2,$4
	ldq_u $3,0($1)
	mov $1,$2
	mskbl $3,$2,$3
	insbl $4,$2,$2
	bis $2,$3,$2
	stq_u $2,0($1)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
$L34:
	ldq $1,32($30)
	bne $1,$L35
	ldq $1,16($30)
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE6:
	.end memcpy
	.align 2
	.globl memrchr
	.ent memrchr
$memrchr..ng:
memrchr:
	.frame $30,48,$26,0
$LFB7:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	mov $17,$1
	stq $18,32($30)
	stl $1,24($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldl $1,24($30)
	and $1,0xff,$1
	stl $1,24($30)
	br $31,$L38
$L40:
	ldq $2,0($30)
	ldq $1,32($30)
	addq $2,$1,$1
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	ldl $2,24($30)
	cmpeq $2,$1,$1
	beq $1,$L38
	ldq $2,0($30)
	ldq $1,32($30)
	addq $2,$1,$1
	br $31,$L39
$L38:
	ldq $1,32($30)
	lda $2,-1($1)
	stq $2,32($30)
	bne $1,$L40
	mov $31,$1
$L39:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE7:
	.end memrchr
	.align 2
	.globl memset
	.ent memset
$memset..ng:
memset:
	.frame $30,48,$26,0
$LFB8:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	mov $17,$1
	stq $18,32($30)
	stl $1,24($30)
	ldq $1,16($30)
	stq $1,0($30)
	br $31,$L42
$L43:
	ldl $1,24($30)
	and $1,0xff,$1
	ldq $3,0($30)
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
$L42:
	ldq $1,32($30)
	bne $1,$L43
	ldq $1,16($30)
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE8:
	.end memset
	.align 2
	.globl stpcpy
	.ent stpcpy
$stpcpy..ng:
stpcpy:
	.frame $30,16,$26,0
$LFB9:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	stq $17,8($30)
	br $31,$L46
$L47:
	ldq $1,8($30)
	lda $1,1($1)
	stq $1,8($30)
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
$L46:
	ldq $1,8($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq $3,0($30)
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L47
	ldq $1,0($30)
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE9:
	.end stpcpy
	.align 2
	.globl strchrnul
	.ent strchrnul
$strchrnul..ng:
strchrnul:
	.frame $30,16,$26,0
$LFB10:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	mov $17,$1
	stl $1,8($30)
	ldl $1,8($30)
	and $1,0xff,$1
	stl $1,8($30)
	br $31,$L50
$L52:
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
$L50:
	ldq $1,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	beq $1,$L51
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	ldl $2,8($30)
	cmpeq $2,$1,$1
	beq $1,$L52
$L51:
	ldq $1,0($30)
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE10:
	.end strchrnul
	.align 2
	.globl strchr
	.ent strchr
$strchr..ng:
strchr:
	.frame $30,16,$26,0
$LFB11:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $2,0($30)
$L57:
	lda $2,1($1)
	ldq_u $3,0($1)
	extqh $3,$2,$2
	sra $2,56,$2
	mov $2,$3
	ldl $2,0($30)
	cmpeq $2,$3,$2
	beq $2,$L55
	br $31,$L56
$L55:
	mov $1,$2
	lda $1,1($2)
	lda $3,1($2)
	ldq_u $2,0($2)
	extqh $2,$3,$2
	sra $2,56,$2
	bne $2,$L57
	mov $31,$1
$L56:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE11:
	.end strchr
	.align 2
	.globl strcmp
	.ent strcmp
$strcmp..ng:
strcmp:
	.frame $30,16,$26,0
$LFB12:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	stq $17,8($30)
	br $31,$L59
$L61:
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
	ldq $1,8($30)
	lda $1,1($1)
	stq $1,8($30)
$L59:
	ldq $1,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$2
	ldq $1,8($30)
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	cmpeq $2,$1,$1
	beq $1,$L60
	ldq $1,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L61
$L60:
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$2
	ldq $1,8($30)
	ldq_u $3,0($1)
	extbl $3,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	subl $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE12:
	.end strcmp
	.align 2
	.globl strlen
	.ent strlen
$strlen..ng:
strlen:
	.frame $30,32,$26,0
$LFB13:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	ldq $1,16($30)
	stq $1,0($30)
	br $31,$L64
$L65:
	ldq $1,16($30)
	lda $1,1($1)
	stq $1,16($30)
$L64:
	ldq $1,16($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L65
	ldq $2,16($30)
	ldq $1,0($30)
	subq $2,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE13:
	.end strlen
	.align 2
	.globl strncmp
	.ent strncmp
$strncmp..ng:
strncmp:
	.frame $30,48,$26,0
$LFB14:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldq $1,32($30)
	lda $2,-1($1)
	stq $2,32($30)
	bne $1,$L70
	mov $31,$1
	br $31,$L69
$L72:
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
	ldq $1,8($30)
	lda $1,1($1)
	stq $1,8($30)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
$L70:
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	beq $1,$L71
	ldq $1,8($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	beq $1,$L71
	ldq $1,32($30)
	beq $1,$L71
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$2
	ldq $1,8($30)
	ldq_u $3,0($1)
	extbl $3,$1,$1
	and $1,0xff,$1
	cmpeq $2,$1,$1
	bne $1,$L72
$L71:
	ldq $1,0($30)
	ldq_u $2,0($1)
	extbl $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$2
	ldq $1,8($30)
	ldq_u $3,0($1)
	extbl $3,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	subl $2,$1,$1
	addl $31,$1,$1
$L69:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE14:
	.end strncmp
	.align 2
	.globl swab
	.ent swab
$swab..ng:
swab:
	.frame $30,48,$26,0
$LFB15:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	br $31,$L74
$L75:
	ldq $1,0($30)
	lda $1,1($1)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq $3,8($30)
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,8($30)
	lda $3,1($1)
	ldq $1,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,8($30)
	lda $1,2($1)
	stq $1,8($30)
	ldq $1,0($30)
	lda $1,2($1)
	stq $1,0($30)
	ldq $1,32($30)
	lda $1,-2($1)
	stq $1,32($30)
$L74:
	ldq $1,32($30)
	cmple $1,1,$1
	beq $1,$L75
	bis $31,$31,$31
	bis $31,$31,$31
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE15:
	.end swab
	.align 2
	.globl isalpha
	.ent isalpha
$isalpha..ng:
isalpha:
	.frame $30,16,$26,0
$LFB16:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	bis $1,32,$1
	addl $31,$1,$1
	subl $1,97,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,25,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE16:
	.end isalpha
	.align 2
	.globl isascii
	.ent isascii
$isascii..ng:
isascii:
	.frame $30,16,$26,0
$LFB17:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	cmpule $1,127,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE17:
	.end isascii
	.align 2
	.globl isblank
	.ent isblank
$isblank..ng:
isblank:
	.frame $30,16,$26,0
$LFB18:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	cmpeq $1,32,$1
	bne $1,$L81
	ldl $1,0($30)
	cmpeq $1,9,$1
	beq $1,$L82
$L81:
	lda $1,1($31)
	br $31,$L83
$L82:
	mov $31,$1
$L83:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE18:
	.end isblank
	.align 2
	.globl iscntrl
	.ent iscntrl
$iscntrl..ng:
iscntrl:
	.frame $30,16,$26,0
$LFB19:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	cmpule $1,31,$1
	bne $1,$L86
	ldl $1,0($30)
	cmpeq $1,127,$1
	beq $1,$L87
$L86:
	lda $1,1($31)
	br $31,$L88
$L87:
	mov $31,$1
$L88:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE19:
	.end iscntrl
	.align 2
	.globl isdigit
	.ent isdigit
$isdigit..ng:
isdigit:
	.frame $30,16,$26,0
$LFB20:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subl $1,48,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE20:
	.end isdigit
	.align 2
	.globl isgraph
	.ent isgraph
$isgraph..ng:
isgraph:
	.frame $30,16,$26,0
$LFB21:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subl $1,33,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,93,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE21:
	.end isgraph
	.align 2
	.globl islower
	.ent islower
$islower..ng:
islower:
	.frame $30,16,$26,0
$LFB22:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subl $1,97,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,25,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE22:
	.end islower
	.align 2
	.globl isprint
	.ent isprint
$isprint..ng:
isprint:
	.frame $30,16,$26,0
$LFB23:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subl $1,32,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,94,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE23:
	.end isprint
	.align 2
	.globl isspace
	.ent isspace
$isspace..ng:
isspace:
	.frame $30,16,$26,0
$LFB24:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	cmpeq $1,32,$1
	bne $1,$L99
	ldl $1,0($30)
	subl $1,9,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,4,$1
	beq $1,$L100
$L99:
	lda $1,1($31)
	br $31,$L101
$L100:
	mov $31,$1
$L101:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE24:
	.end isspace
	.align 2
	.globl isupper
	.ent isupper
$isupper..ng:
isupper:
	.frame $30,16,$26,0
$LFB25:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subl $1,65,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,25,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE25:
	.end isupper
	.align 2
	.globl iswcntrl
	.ent iswcntrl
$iswcntrl..ng:
iswcntrl:
	.frame $30,16,$26,0
$LFB26:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	cmpule $1,31,$1
	bne $1,$L106
	ldl $1,0($30)
	subl $1,127,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,32,$1
	bne $1,$L106
	ldl $1,0($30)
	lda $1,-8232($1)
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,1,$1
	bne $1,$L106
	ldl $2,0($30)
	ldah $1,-1($31)
	addl $1,7,$1
	addl $2,$1,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,2,$1
	beq $1,$L107
$L106:
	lda $1,1($31)
	br $31,$L108
$L107:
	mov $31,$1
$L108:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE26:
	.end iswcntrl
	.align 2
	.globl iswdigit
	.ent iswdigit
$iswdigit..ng:
iswdigit:
	.frame $30,16,$26,0
$LFB27:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subl $1,48,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE27:
	.end iswdigit
	.align 2
	.globl iswprint
	.ent iswprint
$iswprint..ng:
iswprint:
	.frame $30,16,$26,0
$LFB28:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	cmpule $1,254,$1
	beq $1,$L113
	ldl $1,0($30)
	addl $1,1,$1
	addl $31,$1,$1
	and $1,127,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	lda $2,32($31)
	cmpult $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	br $31,$L114
$L113:
	ldl $1,0($30)
	zapnot $1,15,$1
	lda $2,8231($31)
	cmpule $1,$2,$1
	bne $1,$L115
	ldl $1,0($30)
	lda $1,-8234($1)
	addl $31,$1,$1
	zapnot $1,15,$2
	ldah $1,1($31)
	lda $1,-18475($1)
	cmpule $2,$1,$1
	bne $1,$L115
	ldl $2,0($30)
	ldah $1,-1($31)
	lda $1,8192($1)
	addl $2,$1,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	lda $2,8184($31)
	cmpule $1,$2,$1
	beq $1,$L116
$L115:
	lda $1,1($31)
	br $31,$L114
$L116:
	ldl $2,0($30)
	ldah $1,-1($31)
	addl $1,4,$1
	addl $2,$1,$1
	addl $31,$1,$1
	zapnot $1,15,$2
	ldah $1,16($31)
	lda $1,3($1)
	cmpule $2,$1,$1
	beq $1,$L117
	ldl $2,0($30)
	ldah $1,1($31)
	lda $1,-2($1)
	and $2,$1,$1
	addl $31,$1,$1
	zapnot $1,15,$2
	ldah $1,1($31)
	lda $1,-2($1)
	cmpeq $2,$1,$1
	beq $1,$L118
$L117:
	mov $31,$1
	br $31,$L114
$L118:
	lda $1,1($31)
$L114:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE28:
	.end iswprint
	.align 2
	.globl iswxdigit
	.ent iswxdigit
$iswxdigit..ng:
iswxdigit:
	.frame $30,16,$26,0
$LFB29:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subl $1,48,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L120
	ldl $1,0($30)
	bis $1,32,$1
	addl $31,$1,$1
	subl $1,97,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,5,$1
	beq $1,$L121
$L120:
	lda $1,1($31)
	br $31,$L122
$L121:
	mov $31,$1
$L122:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE29:
	.end iswxdigit
	.align 2
	.globl toascii
	.ent toascii
$toascii..ng:
toascii:
	.frame $30,16,$26,0
$LFB30:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	and $1,127,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE30:
	.end toascii
	.align 2
	.globl fdim
	.ent fdim
$fdim..ng:
fdim:
	.frame $30,16,$26,0
$LFB31:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stt $f16,0($30)
	stt $f17,8($30)
	ldt $f12,0($30)
	ldt $f11,0($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L127
	ldt $f10,0($30)
	br $31,$L128
$L127:
	ldt $f12,8($30)
	ldt $f11,8($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L129
	ldt $f10,8($30)
	br $31,$L128
$L129:
	ldt $f11,0($30)
	ldt $f12,8($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L134
	ldt $f12,0($30)
	ldt $f11,8($30)
	subt $f12,$f11,$f10
	br $31,$L128
$L134:
	cpys $f31,$f31,$f10
$L128:
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE31:
	.end fdim
	.align 2
	.globl fdimf
	.ent fdimf
$fdimf..ng:
fdimf:
	.frame $30,16,$26,0
$LFB32:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	sts $f16,0($30)
	sts $f17,4($30)
	lds $f12,0($30)
	lds $f11,0($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L136
	lds $f10,0($30)
	br $31,$L137
$L136:
	lds $f12,4($30)
	lds $f11,4($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L138
	lds $f10,4($30)
	br $31,$L137
$L138:
	lds $f11,0($30)
	lds $f12,4($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L143
	lds $f12,0($30)
	lds $f11,4($30)
	subs $f12,$f11,$f10
	br $31,$L137
$L143:
	cpys $f31,$f31,$f10
$L137:
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
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
	stt $f16,0($30)
	stt $f17,8($30)
	ldt $f12,0($30)
	ldt $f11,0($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L145
	ldt $f10,8($30)
	br $31,$L146
$L145:
	ldt $f12,8($30)
	ldt $f11,8($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L147
	ldt $f10,0($30)
	br $31,$L146
$L147:
	ldq $1,0($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$2
	ldq $1,8($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L148
	ldq $1,0($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L149
	ldt $f10,8($30)
	br $31,$L146
$L149:
	ldt $f10,0($30)
	br $31,$L146
$L148:
	ldt $f12,0($30)
	ldt $f11,8($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L155
	ldt $f10,8($30)
	br $31,$L146
$L155:
	ldt $f10,0($30)
$L146:
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE33:
	.end fmax
	.align 2
	.globl fmaxf
	.ent fmaxf
$fmaxf..ng:
fmaxf:
	.frame $30,16,$26,0
$LFB34:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	sts $f16,0($30)
	sts $f17,4($30)
	lds $f12,0($30)
	lds $f11,0($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L157
	lds $f10,4($30)
	br $31,$L158
$L157:
	lds $f12,4($30)
	lds $f11,4($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L159
	lds $f10,0($30)
	br $31,$L158
$L159:
	ldl $1,0($30)
	ldah $2,-32768($31)
	and $1,$2,$1
	addl $31,$1,$2
	ldl $1,4($30)
	ldah $3,-32768($31)
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L160
	ldl $1,0($30)
	ldah $2,-32768($31)
	and $1,$2,$1
	addl $31,$1,$1
	beq $1,$L161
	lds $f10,4($30)
	br $31,$L158
$L161:
	lds $f10,0($30)
	br $31,$L158
$L160:
	lds $f12,0($30)
	lds $f11,4($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L167
	lds $f10,4($30)
	br $31,$L158
$L167:
	lds $f10,0($30)
$L158:
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE34:
	.end fmaxf
	.align 2
	.globl fmaxl
	.ent fmaxl
fmaxl:
	.frame $30,64,$26,0
	.mask 0x4000200,-64
$LFB35:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!1
	lda $29,0($29)		!gpdisp!1
$fmaxl..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.prologue 1
	stq $16,16($30)
	mov $17,$9
	ldq $2,0($9)
	ldq $3,8($9)
	stq $2,32($30)
	stq $3,40($30)
	mov $18,$9
	ldq $2,0($9)
	ldq $3,8($9)
	stq $2,48($30)
	stq $3,56($30)
	ldq $16,32($30)
	ldq $17,40($30)
	ldq $18,32($30)
	ldq $19,40($30)
	ldq $27,_OtsEqlX($29)		!literal!2
	jsr $26,($27),0		!lituse_jsr!2
	ldah $29,0($26)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
	mov $0,$1
	bge $1,$L169
	ldq $1,16($30)
	ldq $2,48($30)
	ldq $3,56($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L170
$L169:
	ldq $16,48($30)
	ldq $17,56($30)
	ldq $18,48($30)
	ldq $19,56($30)
	ldq $27,_OtsEqlX($29)		!literal!4
	jsr $26,($27),0		!lituse_jsr!4
	ldah $29,0($26)		!gpdisp!5
	lda $29,0($29)		!gpdisp!5
	mov $0,$1
	bge $1,$L171
	ldq $1,16($30)
	ldq $2,32($30)
	ldq $3,40($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L170
$L171:
	ldq $1,40($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$2
	ldq $1,56($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L172
	ldq $1,40($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L173
	ldq $2,48($30)
	ldq $3,56($30)
	br $31,$L174
$L173:
	ldq $2,32($30)
	ldq $3,40($30)
$L174:
	ldq $1,16($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L170
$L172:
	ldq $16,32($30)
	ldq $17,40($30)
	ldq $18,48($30)
	ldq $19,56($30)
	ldq $27,_OtsLssX($29)		!literal!6
	jsr $26,($27),0		!lituse_jsr!6
	ldah $29,0($26)		!gpdisp!7
	lda $29,0($29)		!gpdisp!7
	mov $0,$1
	ble $1,$L179
	ldq $2,48($30)
	ldq $3,56($30)
	br $31,$L177
$L179:
	ldq $2,32($30)
	ldq $3,40($30)
$L177:
	ldq $1,16($30)
	stq $2,0($1)
	stq $3,8($1)
$L170:
	ldq $0,16($30)
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,64($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
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
	stt $f16,0($30)
	stt $f17,8($30)
	ldt $f12,0($30)
	ldt $f11,0($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L181
	ldt $f10,8($30)
	br $31,$L182
$L181:
	ldt $f12,8($30)
	ldt $f11,8($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L183
	ldt $f10,0($30)
	br $31,$L182
$L183:
	ldq $1,0($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$2
	ldq $1,8($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L184
	ldq $1,0($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L185
	ldt $f10,0($30)
	br $31,$L182
$L185:
	ldt $f10,8($30)
	br $31,$L182
$L184:
	ldt $f12,0($30)
	ldt $f11,8($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L191
	ldt $f10,0($30)
	br $31,$L182
$L191:
	ldt $f10,8($30)
$L182:
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE36:
	.end fmin
	.align 2
	.globl fminf
	.ent fminf
$fminf..ng:
fminf:
	.frame $30,16,$26,0
$LFB37:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	sts $f16,0($30)
	sts $f17,4($30)
	lds $f12,0($30)
	lds $f11,0($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L193
	lds $f10,4($30)
	br $31,$L194
$L193:
	lds $f12,4($30)
	lds $f11,4($30)
	cmptun $f12,$f11,$f10
	fbeq $f10,$L195
	lds $f10,0($30)
	br $31,$L194
$L195:
	ldl $1,0($30)
	ldah $2,-32768($31)
	and $1,$2,$1
	addl $31,$1,$2
	ldl $1,4($30)
	ldah $3,-32768($31)
	and $1,$3,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L196
	ldl $1,0($30)
	ldah $2,-32768($31)
	and $1,$2,$1
	addl $31,$1,$1
	beq $1,$L197
	lds $f10,0($30)
	br $31,$L194
$L197:
	lds $f10,4($30)
	br $31,$L194
$L196:
	lds $f12,0($30)
	lds $f11,4($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L203
	lds $f10,0($30)
	br $31,$L194
$L203:
	lds $f10,4($30)
$L194:
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE37:
	.end fminf
	.align 2
	.globl fminl
	.ent fminl
fminl:
	.frame $30,64,$26,0
	.mask 0x4000200,-64
$LFB38:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!8
	lda $29,0($29)		!gpdisp!8
$fminl..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.prologue 1
	stq $16,16($30)
	mov $17,$9
	ldq $2,0($9)
	ldq $3,8($9)
	stq $2,32($30)
	stq $3,40($30)
	mov $18,$9
	ldq $2,0($9)
	ldq $3,8($9)
	stq $2,48($30)
	stq $3,56($30)
	ldq $16,32($30)
	ldq $17,40($30)
	ldq $18,32($30)
	ldq $19,40($30)
	ldq $27,_OtsEqlX($29)		!literal!9
	jsr $26,($27),0		!lituse_jsr!9
	ldah $29,0($26)		!gpdisp!10
	lda $29,0($29)		!gpdisp!10
	mov $0,$1
	bge $1,$L205
	ldq $1,16($30)
	ldq $2,48($30)
	ldq $3,56($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L206
$L205:
	ldq $16,48($30)
	ldq $17,56($30)
	ldq $18,48($30)
	ldq $19,56($30)
	ldq $27,_OtsEqlX($29)		!literal!11
	jsr $26,($27),0		!lituse_jsr!11
	ldah $29,0($26)		!gpdisp!12
	lda $29,0($29)		!gpdisp!12
	mov $0,$1
	bge $1,$L207
	ldq $1,16($30)
	ldq $2,32($30)
	ldq $3,40($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L206
$L207:
	ldq $1,40($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$2
	ldq $1,56($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$1
	cmpeq $2,$1,$1
	bne $1,$L208
	ldq $1,40($30)
	srl $1,63,$1
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L209
	ldq $2,32($30)
	ldq $3,40($30)
	br $31,$L210
$L209:
	ldq $2,48($30)
	ldq $3,56($30)
$L210:
	ldq $1,16($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L206
$L208:
	ldq $16,32($30)
	ldq $17,40($30)
	ldq $18,48($30)
	ldq $19,56($30)
	ldq $27,_OtsLssX($29)		!literal!13
	jsr $26,($27),0		!lituse_jsr!13
	ldah $29,0($26)		!gpdisp!14
	lda $29,0($29)		!gpdisp!14
	mov $0,$1
	ble $1,$L215
	ldq $2,32($30)
	ldq $3,40($30)
	br $31,$L213
$L215:
	ldq $2,48($30)
	ldq $3,56($30)
$L213:
	ldq $1,16($30)
	stq $2,0($1)
	stq $3,8($1)
$L206:
	ldq $0,16($30)
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,64($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
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
	.frame $30,32,$26,0
$LFB39:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!15
	lda $29,0($29)		!gpdisp!15
$l64a..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 1
	stq $16,16($30)
	ldq $1,16($30)
	stl $1,8($30)
	ldah $1,s.0($29)		!gprelhigh
	lda $1,s.0($1)		!gprellow
	stq $1,0($30)
	br $31,$L217
$L218:
	ldl $1,8($30)
	and $1,63,$1
	addl $31,$1,$1
	ldah $3,digits($29)		!gprelhigh
	zapnot $1,15,$2
	lda $1,digits($3)		!gprellow
	addq $2,$1,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq $3,0($30)
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
	ldl $1,8($30)
	zapnot $1,15,$1
	srl $1,6,$1
	stl $1,8($30)
$L217:
	ldl $1,8($30)
	zapnot $1,15,$1
	bne $1,$L218
	ldq $3,0($30)
	bis $31,$31,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldah $1,s.0($29)		!gprelhigh
	lda $1,s.0($1)		!gprellow
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
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
	.frame $30,16,$26,0
$LFB40:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!16
	lda $29,0($29)		!gpdisp!16
$srand..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subl $1,1,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	ldah $2,seed($29)		!gprelhigh
	stq $1,seed($2)		!gprellow
	bis $31,$31,$31
	lda $30,16($30)
	.cfi_def_cfa_offset 0
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
	ldq $2,seed($1)		!gprellow
	ldah $1,$LC0($29)		!gprelhigh
	ldq $1,$LC0($1)		!gprellow
	mulq $2,$1,$1
	lda $1,1($1)
	ldah $2,seed($29)		!gprelhigh
	stq $1,seed($2)		!gprellow
	ldah $1,seed($29)		!gprelhigh
	ldq $1,seed($1)		!gprellow
	srl $1,33,$1
	addl $31,$1,$1
	mov $1,$0
	ret $31,($26),1
	.cfi_endproc
$LFE41:
	.end rand
	.align 2
	.globl insque
	.ent insque
$insque..ng:
insque:
	.frame $30,32,$26,0
$LFB42:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldq $1,8($30)
	bne $1,$L224
	ldq $1,0($30)
	stq $31,8($1)
	ldq $1,0($30)
	ldq $2,8($1)
	ldq $1,0($30)
	stq $2,0($1)
	br $31,$L223
$L224:
	ldq $1,8($30)
	ldq $2,0($1)
	ldq $1,0($30)
	stq $2,0($1)
	ldq $1,0($30)
	ldq $2,8($30)
	stq $2,8($1)
	ldq $1,8($30)
	ldq $2,0($30)
	stq $2,0($1)
	ldq $1,0($30)
	ldq $1,0($1)
	beq $1,$L223
	ldq $1,0($30)
	ldq $1,0($1)
	ldq $2,0($30)
	stq $2,8($1)
$L223:
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE42:
	.end insque
	.align 2
	.globl remque
	.ent remque
$remque..ng:
remque:
	.frame $30,32,$26,0
$LFB43:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,0($30)
	ldq $1,0($1)
	beq $1,$L227
	ldq $1,0($30)
	ldq $1,0($1)
	ldq $2,0($30)
	ldq $2,8($2)
	stq $2,8($1)
$L227:
	ldq $1,0($30)
	ldq $1,8($1)
	beq $1,$L229
	ldq $1,0($30)
	ldq $1,8($1)
	ldq $2,0($30)
	ldq $2,0($2)
	stq $2,0($1)
$L229:
	bis $31,$31,$31
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE43:
	.end remque
	.align 2
	.globl lsearch
	.ent lsearch
lsearch:
	.frame $30,96,$26,0
	.mask 0x4000200,-96
$LFB44:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!18
	lda $29,0($29)		!gpdisp!18
$lsearch..ng:
	lda $30,-96($30)
	.cfi_def_cfa_offset 96
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -96
	.cfi_offset 9, -88
	.prologue 1
	stq $16,48($30)
	stq $17,56($30)
	stq $18,64($30)
	stq $19,72($30)
	stq $20,80($30)
	ldq $9,72($30)
	mov $9,$1
	lda $1,-1($1)
	stq $1,24($30)
	ldq $1,56($30)
	stq $1,32($30)
	ldq $1,64($30)
	ldq $1,0($1)
	stq $1,40($30)
	stq $31,16($30)
	br $31,$L231
$L234:
	ldq $1,16($30)
	mulq $9,$1,$1
	ldq $2,32($30)
	addq $2,$1,$2
	ldq $1,80($30)
	mov $2,$17
	ldq $16,48($30)
	mov $1,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!19
	lda $29,0($29)		!gpdisp!19
	mov $0,$1
	bne $1,$L232
	ldq $1,16($30)
	mulq $9,$1,$1
	ldq $2,32($30)
	addq $2,$1,$1
	br $31,$L233
$L232:
	ldq $1,16($30)
	lda $1,1($1)
	stq $1,16($30)
$L231:
	ldq $2,16($30)
	ldq $1,40($30)
	cmpult $2,$1,$1
	bne $1,$L234
	ldq $1,40($30)
	lda $2,1($1)
	ldq $1,64($30)
	stq $2,0($1)
	ldq $1,40($30)
	mulq $9,$1,$1
	ldq $2,32($30)
	addq $2,$1,$1
	ldq $18,72($30)
	ldq $17,48($30)
	mov $1,$16
	ldq $27,memcpy($29)		!literal!20
	jsr $26,($27),0		!lituse_jsr!20
	ldah $29,0($26)		!gpdisp!21
	lda $29,0($29)		!gpdisp!21
	mov $0,$1
$L233:
	mov $1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,96($30)
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
	.frame $30,96,$26,0
	.mask 0x4000200,-96
$LFB45:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!22
	lda $29,0($29)		!gpdisp!22
$lfind..ng:
	lda $30,-96($30)
	.cfi_def_cfa_offset 96
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -96
	.cfi_offset 9, -88
	.prologue 1
	stq $16,48($30)
	stq $17,56($30)
	stq $18,64($30)
	stq $19,72($30)
	stq $20,80($30)
	ldq $9,72($30)
	mov $9,$1
	lda $1,-1($1)
	stq $1,24($30)
	ldq $1,56($30)
	stq $1,32($30)
	ldq $1,64($30)
	ldq $1,0($1)
	stq $1,40($30)
	stq $31,16($30)
	br $31,$L236
$L239:
	ldq $1,16($30)
	mulq $9,$1,$1
	ldq $2,32($30)
	addq $2,$1,$2
	ldq $1,80($30)
	mov $2,$17
	ldq $16,48($30)
	mov $1,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!23
	lda $29,0($29)		!gpdisp!23
	mov $0,$1
	bne $1,$L237
	ldq $1,16($30)
	mulq $9,$1,$1
	ldq $2,32($30)
	addq $2,$1,$1
	br $31,$L238
$L237:
	ldq $1,16($30)
	lda $1,1($1)
	stq $1,16($30)
$L236:
	ldq $2,16($30)
	ldq $1,40($30)
	cmpult $2,$1,$1
	bne $1,$L239
	mov $31,$1
$L238:
	mov $1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,96($30)
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
	.frame $30,16,$26,0
$LFB46:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	subq $31,$1,$2
	cmovge $1,$1,$2
	addl $31,$2,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE46:
	.end abs
	.align 2
	.globl atoi
	.ent atoi
atoi:
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB47:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!24
	lda $29,0($29)		!gpdisp!24
$atoi..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,32($30)
	stl $31,16($30)
	stl $31,20($30)
	br $31,$L243
$L244:
	ldq $1,32($30)
	lda $1,1($1)
	stq $1,32($30)
$L243:
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	mov $1,$16
	ldq $27,isspace($29)		!literal!25
	jsr $26,($27),0		!lituse_jsr!25
	ldah $29,0($26)		!gpdisp!26
	lda $29,0($29)		!gpdisp!26
	mov $0,$1
	bne $1,$L244
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L245
	cmpeq $1,45,$1
	beq $1,$L247
	lda $1,1($31)
	stl $1,20($30)
$L245:
	ldq $1,32($30)
	lda $1,1($1)
	stq $1,32($30)
	br $31,$L247
$L248:
	ldl $2,16($30)
	bis $31,$2,$1
	s4addl $1,0,$1
	addl $1,$2,$1
	addl $1,$1,$1
	addl $31,$1,$2
	ldq $1,32($30)
	lda $3,1($1)
	stq $3,32($30)
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	subl $1,48,$1
	addl $31,$1,$1
	subl $2,$1,$1
	stl $1,16($30)
$L247:
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L248
	ldl $1,20($30)
	bne $1,$L249
	ldl $1,16($30)
	subl $31,$1,$1
	addl $31,$1,$1
	br $31,$L250
$L249:
	ldl $1,16($30)
$L250:
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
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
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB48:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!27
	lda $29,0($29)		!gpdisp!27
$atol..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,32($30)
	stq $31,16($30)
	stl $31,24($30)
	br $31,$L253
$L254:
	ldq $1,32($30)
	lda $1,1($1)
	stq $1,32($30)
$L253:
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	mov $1,$16
	ldq $27,isspace($29)		!literal!28
	jsr $26,($27),0		!lituse_jsr!28
	ldah $29,0($26)		!gpdisp!29
	lda $29,0($29)		!gpdisp!29
	mov $0,$1
	bne $1,$L254
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L255
	cmpeq $1,45,$1
	beq $1,$L257
	lda $1,1($31)
	stl $1,24($30)
$L255:
	ldq $1,32($30)
	lda $1,1($1)
	stq $1,32($30)
	br $31,$L257
$L258:
	ldq $2,16($30)
	mov $2,$1
	s4addq $1,0,$1
	addq $1,$2,$1
	addq $1,$1,$1
	mov $1,$3
	ldq $1,32($30)
	lda $2,1($1)
	stq $2,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	addl $31,$1,$1
	subq $3,$1,$1
	stq $1,16($30)
$L257:
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L258
	ldl $1,24($30)
	bne $1,$L259
	ldq $1,16($30)
	subq $31,$1,$1
	br $31,$L261
$L259:
	ldq $1,16($30)
$L261:
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
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
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB49:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!30
	lda $29,0($29)		!gpdisp!30
$atoll..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,32($30)
	stq $31,16($30)
	stl $31,24($30)
	br $31,$L263
$L264:
	ldq $1,32($30)
	lda $1,1($1)
	stq $1,32($30)
$L263:
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	mov $1,$16
	ldq $27,isspace($29)		!literal!31
	jsr $26,($27),0		!lituse_jsr!31
	ldah $29,0($26)		!gpdisp!32
	lda $29,0($29)		!gpdisp!32
	mov $0,$1
	bne $1,$L264
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	cmpeq $1,43,$2
	bne $2,$L265
	cmpeq $1,45,$1
	beq $1,$L267
	lda $1,1($31)
	stl $1,24($30)
$L265:
	ldq $1,32($30)
	lda $1,1($1)
	stq $1,32($30)
	br $31,$L267
$L268:
	ldq $2,16($30)
	mov $2,$1
	s4addq $1,0,$1
	addq $1,$2,$1
	addq $1,$1,$1
	mov $1,$3
	ldq $1,32($30)
	lda $2,1($1)
	stq $2,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	addl $31,$1,$1
	subq $3,$1,$1
	stq $1,16($30)
$L267:
	ldq $1,32($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	subl $1,48,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpule $1,9,$1
	bne $1,$L268
	ldl $1,24($30)
	bne $1,$L269
	ldq $1,16($30)
	subq $31,$1,$1
	br $31,$L271
$L269:
	ldq $1,16($30)
$L271:
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
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
	.frame $30,80,$26,0
	.mask 0x4000000,-80
$LFB50:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!33
	lda $29,0($29)		!gpdisp!33
$bsearch..ng:
	lda $30,-80($30)
	.cfi_def_cfa_offset 80
	stq $26,0($30)
	.cfi_offset 26, -80
	.prologue 1
	stq $16,32($30)
	stq $17,40($30)
	stq $18,48($30)
	stq $19,56($30)
	stq $20,64($30)
	br $31,$L273
$L278:
	ldq $1,48($30)
	srl $1,1,$2
	ldq $1,56($30)
	mulq $2,$1,$1
	ldq $2,40($30)
	addq $2,$1,$1
	stq $1,16($30)
	ldq $1,64($30)
	ldq $17,16($30)
	ldq $16,32($30)
	mov $1,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!34
	lda $29,0($29)		!gpdisp!34
	mov $0,$1
	stl $1,24($30)
	ldl $1,24($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L274
	ldq $1,48($30)
	srl $1,1,$1
	stq $1,48($30)
	br $31,$L273
$L274:
	ldl $1,24($30)
	ble $1,$L276
	ldq $2,16($30)
	ldq $1,56($30)
	addq $2,$1,$1
	stq $1,40($30)
	ldq $1,48($30)
	srl $1,1,$1
	ldq $2,48($30)
	subq $2,$1,$1
	lda $1,-1($1)
	stq $1,48($30)
	br $31,$L273
$L276:
	ldq $1,16($30)
	br $31,$L277
$L273:
	ldq $1,48($30)
	bne $1,$L278
	mov $31,$1
$L277:
	mov $1,$0
	ldq $26,0($30)
	lda $30,80($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE50:
	.end bsearch
	.align 2
	.globl bsearch_r
	.ent bsearch_r
bsearch_r:
	.frame $30,96,$26,0
	.mask 0x4000000,-96
$LFB51:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!35
	lda $29,0($29)		!gpdisp!35
$bsearch_r..ng:
	lda $30,-96($30)
	.cfi_def_cfa_offset 96
	stq $26,0($30)
	.cfi_offset 26, -96
	.prologue 1
	stq $16,48($30)
	stq $17,56($30)
	stq $18,64($30)
	stq $19,72($30)
	stq $20,80($30)
	stq $21,88($30)
	ldq $1,56($30)
	stq $1,16($30)
	ldq $1,64($30)
	stl $1,24($30)
	br $31,$L280
$L284:
	ldl $1,24($30)
	sra $1,1,$1
	addl $31,$1,$1
	mov $1,$2
	ldq $1,72($30)
	mulq $2,$1,$1
	ldq $2,16($30)
	addq $2,$1,$1
	stq $1,32($30)
	ldq $1,80($30)
	ldq $18,88($30)
	ldq $17,32($30)
	ldq $16,48($30)
	mov $1,$27
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!36
	lda $29,0($29)		!gpdisp!36
	mov $0,$1
	stl $1,40($30)
	ldl $1,40($30)
	bne $1,$L281
	ldq $1,32($30)
	br $31,$L282
$L281:
	ldl $1,40($30)
	ble $1,$L283
	ldq $2,32($30)
	ldq $1,72($30)
	addq $2,$1,$1
	stq $1,16($30)
	ldl $1,24($30)
	subl $1,1,$1
	stl $1,24($30)
$L283:
	ldl $1,24($30)
	sra $1,1,$1
	stl $1,24($30)
$L280:
	ldl $1,24($30)
	bne $1,$L284
	mov $31,$1
$L282:
	mov $1,$0
	ldq $26,0($30)
	lda $30,96($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE51:
	.end bsearch_r
	.align 2
	.globl div
	.ent div
div:
	.frame $30,32,$26,0
$LFB52:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!37
	lda $29,0($29)		!gpdisp!37
$div..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 1
	stq $16,16($30)
	mov $17,$1
	mov $18,$2
	stl $1,24($30)
	bis $31,$2,$1
	stl $1,28($30)
	ldl $2,24($30)
	ldl $1,28($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__divl($29)		!literal!38
	jsr $23,($27),__divl		!lituse_jsrdirect!38
	mov $27,$1
	addl $31,$1,$3
	ldl $1,24($30)
	addl $31,$1,$2
	ldl $1,28($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__reml($29)		!literal!39
	jsr $23,($27),__reml		!lituse_jsrdirect!39
	mov $27,$1
	addl $31,$1,$2
	ldq $1,16($30)
	stl $3,0($1)
	ldq $1,16($30)
	stl $2,4($1)
	ldq $0,16($30)
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE52:
	.end div
	.align 2
	.globl imaxabs
	.ent imaxabs
$imaxabs..ng:
imaxabs:
	.frame $30,16,$26,0
$LFB53:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	ldq $1,0($30)
	subq $31,$1,$2
	cmovge $1,$1,$2
	mov $2,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE53:
	.end imaxabs
	.align 2
	.globl imaxdiv
	.ent imaxdiv
imaxdiv:
	.frame $30,48,$26,0
$LFB54:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!40
	lda $29,0($29)		!gpdisp!40
$imaxdiv..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 1
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $2,24($30)
	ldq $1,32($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__divq($29)		!literal!41
	jsr $23,($27),__divq		!lituse_jsrdirect!41
	mov $27,$3
	ldq $2,24($30)
	ldq $1,32($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__remq($29)		!literal!42
	jsr $23,($27),__remq		!lituse_jsrdirect!42
	mov $27,$2
	ldq $1,16($30)
	stq $3,0($1)
	ldq $1,16($30)
	stq $2,8($1)
	ldq $0,16($30)
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE54:
	.end imaxdiv
	.align 2
	.globl labs
	.ent labs
$labs..ng:
labs:
	.frame $30,16,$26,0
$LFB55:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	ldq $1,0($30)
	subq $31,$1,$2
	cmovge $1,$1,$2
	mov $2,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE55:
	.end labs
	.align 2
	.globl ldiv
	.ent ldiv
ldiv:
	.frame $30,48,$26,0
$LFB56:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!43
	lda $29,0($29)		!gpdisp!43
$ldiv..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 1
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $2,24($30)
	ldq $1,32($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__divq($29)		!literal!44
	jsr $23,($27),__divq		!lituse_jsrdirect!44
	mov $27,$3
	ldq $2,24($30)
	ldq $1,32($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__remq($29)		!literal!45
	jsr $23,($27),__remq		!lituse_jsrdirect!45
	mov $27,$2
	ldq $1,16($30)
	stq $3,0($1)
	ldq $1,16($30)
	stq $2,8($1)
	ldq $0,16($30)
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE56:
	.end ldiv
	.align 2
	.globl llabs
	.ent llabs
$llabs..ng:
llabs:
	.frame $30,16,$26,0
$LFB57:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	ldq $1,0($30)
	subq $31,$1,$2
	cmovge $1,$1,$2
	mov $2,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE57:
	.end llabs
	.align 2
	.globl lldiv
	.ent lldiv
lldiv:
	.frame $30,48,$26,0
$LFB58:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!46
	lda $29,0($29)		!gpdisp!46
$lldiv..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 1
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $2,24($30)
	ldq $1,32($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__divq($29)		!literal!47
	jsr $23,($27),__divq		!lituse_jsrdirect!47
	mov $27,$3
	ldq $2,24($30)
	ldq $1,32($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__remq($29)		!literal!48
	jsr $23,($27),__remq		!lituse_jsrdirect!48
	mov $27,$2
	ldq $1,16($30)
	stq $3,0($1)
	ldq $1,16($30)
	stq $2,8($1)
	ldq $0,16($30)
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE58:
	.end lldiv
	.align 2
	.globl wcschr
	.ent wcschr
$wcschr..ng:
wcschr:
	.frame $30,16,$26,0
$LFB59:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	mov $17,$1
	stl $1,8($30)
	br $31,$L300
$L302:
	ldq $1,0($30)
	lda $1,4($1)
	stq $1,0($30)
$L300:
	ldq $1,0($30)
	ldl $1,0($1)
	beq $1,$L301
	ldq $1,0($30)
	ldl $1,0($1)
	ldl $2,8($30)
	cmpeq $2,$1,$1
	beq $1,$L302
$L301:
	ldq $1,0($30)
	ldl $1,0($1)
	beq $1,$L303
	ldq $1,0($30)
	br $31,$L305
$L303:
	mov $31,$1
$L305:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE59:
	.end wcschr
	.align 2
	.globl wcscmp
	.ent wcscmp
$wcscmp..ng:
wcscmp:
	.frame $30,16,$26,0
$LFB60:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	stq $17,8($30)
	br $31,$L307
$L309:
	ldq $1,0($30)
	lda $1,4($1)
	stq $1,0($30)
	ldq $1,8($30)
	lda $1,4($1)
	stq $1,8($30)
$L307:
	ldq $1,0($30)
	ldl $2,0($1)
	ldq $1,8($30)
	ldl $1,0($1)
	cmpeq $2,$1,$1
	beq $1,$L308
	ldq $1,0($30)
	ldl $1,0($1)
	beq $1,$L308
	ldq $1,8($30)
	ldl $1,0($1)
	bne $1,$L309
$L308:
	ldq $1,0($30)
	ldl $2,0($1)
	ldq $1,8($30)
	ldl $1,0($1)
	cmplt $2,$1,$1
	bne $1,$L310
	ldq $1,0($30)
	ldl $1,0($1)
	ldq $2,8($30)
	ldl $2,0($2)
	cmplt $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	br $31,$L311
$L310:
	lda $1,-1($31)
$L311:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE60:
	.end wcscmp
	.align 2
	.globl wcscpy
	.ent wcscpy
$wcscpy..ng:
wcscpy:
	.frame $30,32,$26,0
$LFB61:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	ldq $1,16($30)
	stq $1,0($30)
	bis $31,$31,$31
$L314:
	ldq $2,24($30)
	lda $1,4($2)
	stq $1,24($30)
	ldq $1,16($30)
	lda $3,4($1)
	stq $3,16($30)
	ldl $2,0($2)
	stl $2,0($1)
	ldl $1,0($1)
	bne $1,$L314
	ldq $1,0($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE61:
	.end wcscpy
	.align 2
	.globl wcslen
	.ent wcslen
$wcslen..ng:
wcslen:
	.frame $30,32,$26,0
$LFB62:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	ldq $1,16($30)
	stq $1,0($30)
	br $31,$L317
$L318:
	ldq $1,16($30)
	lda $1,4($1)
	stq $1,16($30)
$L317:
	ldq $1,16($30)
	ldl $1,0($1)
	bne $1,$L318
	ldq $2,16($30)
	ldq $1,0($30)
	subq $2,$1,$1
	sra $1,2,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE62:
	.end wcslen
	.align 2
	.globl wcsncmp
	.ent wcsncmp
$wcsncmp..ng:
wcsncmp:
	.frame $30,32,$26,0
$LFB63:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,0($30)
	stq $17,8($30)
	stq $18,16($30)
	br $31,$L321
$L323:
	ldq $1,16($30)
	lda $1,-1($1)
	stq $1,16($30)
	ldq $1,0($30)
	lda $1,4($1)
	stq $1,0($30)
	ldq $1,8($30)
	lda $1,4($1)
	stq $1,8($30)
$L321:
	ldq $1,16($30)
	beq $1,$L322
	ldq $1,0($30)
	ldl $2,0($1)
	ldq $1,8($30)
	ldl $1,0($1)
	cmpeq $2,$1,$1
	beq $1,$L322
	ldq $1,0($30)
	ldl $1,0($1)
	beq $1,$L322
	ldq $1,8($30)
	ldl $1,0($1)
	bne $1,$L323
$L322:
	ldq $1,16($30)
	beq $1,$L324
	ldq $1,0($30)
	ldl $2,0($1)
	ldq $1,8($30)
	ldl $1,0($1)
	cmplt $2,$1,$1
	bne $1,$L325
	ldq $1,0($30)
	ldl $1,0($1)
	ldq $2,8($30)
	ldl $2,0($2)
	cmplt $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	br $31,$L327
$L325:
	lda $1,-1($31)
	br $31,$L327
$L324:
	mov $31,$1
$L327:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE63:
	.end wcsncmp
	.align 2
	.globl wmemchr
	.ent wmemchr
$wmemchr..ng:
wmemchr:
	.frame $30,32,$26,0
$LFB64:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,0($30)
	mov $17,$1
	stq $18,16($30)
	stl $1,8($30)
	br $31,$L330
$L332:
	ldq $1,16($30)
	lda $1,-1($1)
	stq $1,16($30)
	ldq $1,0($30)
	lda $1,4($1)
	stq $1,0($30)
$L330:
	ldq $1,16($30)
	beq $1,$L331
	ldq $1,0($30)
	ldl $1,0($1)
	ldl $2,8($30)
	cmpeq $2,$1,$1
	beq $1,$L332
$L331:
	ldq $1,16($30)
	beq $1,$L333
	ldq $1,0($30)
	br $31,$L335
$L333:
	mov $31,$1
$L335:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE64:
	.end wmemchr
	.align 2
	.globl wmemcmp
	.ent wmemcmp
$wmemcmp..ng:
wmemcmp:
	.frame $30,32,$26,0
$LFB65:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,0($30)
	stq $17,8($30)
	stq $18,16($30)
	br $31,$L337
$L339:
	ldq $1,16($30)
	lda $1,-1($1)
	stq $1,16($30)
	ldq $1,0($30)
	lda $1,4($1)
	stq $1,0($30)
	ldq $1,8($30)
	lda $1,4($1)
	stq $1,8($30)
$L337:
	ldq $1,16($30)
	beq $1,$L338
	ldq $1,0($30)
	ldl $2,0($1)
	ldq $1,8($30)
	ldl $1,0($1)
	cmpeq $2,$1,$1
	bne $1,$L339
$L338:
	ldq $1,16($30)
	beq $1,$L340
	ldq $1,0($30)
	ldl $2,0($1)
	ldq $1,8($30)
	ldl $1,0($1)
	cmplt $2,$1,$1
	bne $1,$L341
	ldq $1,0($30)
	ldl $1,0($1)
	ldq $2,8($30)
	ldl $2,0($2)
	cmplt $2,$1,$1
	and $1,0xff,$1
	addl $31,$1,$1
	br $31,$L343
$L341:
	lda $1,-1($31)
	br $31,$L343
$L340:
	mov $31,$1
$L343:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE65:
	.end wmemcmp
	.align 2
	.globl wmemcpy
	.ent wmemcpy
$wmemcpy..ng:
wmemcpy:
	.frame $30,48,$26,0
$LFB66:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	br $31,$L346
$L347:
	ldq $2,24($30)
	lda $1,4($2)
	stq $1,24($30)
	ldq $1,16($30)
	lda $3,4($1)
	stq $3,16($30)
	ldl $2,0($2)
	stl $2,0($1)
$L346:
	ldq $1,32($30)
	lda $2,-1($1)
	stq $2,32($30)
	bne $1,$L347
	ldq $1,0($30)
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE66:
	.end wmemcpy
	.align 2
	.globl wmemmove
	.ent wmemmove
$wmemmove..ng:
wmemmove:
	.frame $30,48,$26,0
$LFB67:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $2,16($30)
	ldq $1,24($30)
	cmpeq $2,$1,$1
	beq $1,$L350
	ldq $1,16($30)
	br $31,$L351
$L350:
	ldq $2,16($30)
	ldq $1,24($30)
	subq $2,$1,$2
	ldq $1,32($30)
	s4addq $1,0,$1
	cmpult $2,$1,$1
	beq $1,$L356
	br $31,$L353
$L354:
	ldq $1,32($30)
	s4addq $1,0,$1
	ldq $2,24($30)
	addq $2,$1,$2
	ldq $1,32($30)
	s4addq $1,0,$1
	ldq $3,16($30)
	addq $3,$1,$1
	ldl $2,0($2)
	stl $2,0($1)
$L353:
	ldq $1,32($30)
	lda $2,-1($1)
	stq $2,32($30)
	bne $1,$L354
	br $31,$L355
$L357:
	ldq $2,24($30)
	lda $1,4($2)
	stq $1,24($30)
	ldq $1,16($30)
	lda $3,4($1)
	stq $3,16($30)
	ldl $2,0($2)
	stl $2,0($1)
$L356:
	ldq $1,32($30)
	lda $2,-1($1)
	stq $2,32($30)
	bne $1,$L357
$L355:
	ldq $1,0($30)
$L351:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE67:
	.end wmemmove
	.align 2
	.globl wmemset
	.ent wmemset
$wmemset..ng:
wmemset:
	.frame $30,48,$26,0
$LFB68:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	mov $17,$1
	stq $18,32($30)
	stl $1,24($30)
	ldq $1,16($30)
	stq $1,0($30)
	br $31,$L359
$L360:
	ldq $1,16($30)
	lda $2,4($1)
	stq $2,16($30)
	ldl $2,24($30)
	stl $2,0($1)
$L359:
	ldq $1,32($30)
	lda $2,-1($1)
	stq $2,32($30)
	bne $1,$L360
	ldq $1,0($30)
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE68:
	.end wmemset
	.align 2
	.globl bcopy
	.ent bcopy
$bcopy..ng:
bcopy:
	.frame $30,48,$26,0
$LFB69:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldq $2,0($30)
	ldq $1,8($30)
	cmpult $2,$1,$1
	beq $1,$L363
	ldq $2,0($30)
	ldq $1,32($30)
	addq $2,$1,$1
	stq $1,0($30)
	ldq $2,8($30)
	ldq $1,32($30)
	addq $2,$1,$1
	stq $1,8($30)
	br $31,$L364
$L365:
	ldq $1,0($30)
	lda $1,-1($1)
	stq $1,0($30)
	ldq $1,8($30)
	lda $1,-1($1)
	stq $1,8($30)
	ldq $1,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq $3,8($30)
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
$L364:
	ldq $1,32($30)
	bne $1,$L365
	br $31,$L369
$L363:
	ldq $2,0($30)
	ldq $1,8($30)
	cmpeq $2,$1,$1
	bne $1,$L369
	br $31,$L367
$L368:
	ldq $2,0($30)
	lda $1,1($2)
	stq $1,0($30)
	ldq $1,8($30)
	lda $3,1($1)
	stq $3,8($30)
	lda $3,1($2)
	ldq_u $2,0($2)
	extqh $2,$3,$2
	sra $2,56,$2
	bis $31,$2,$4
	ldq_u $3,0($1)
	mov $1,$2
	mskbl $3,$2,$3
	insbl $4,$2,$2
	bis $2,$3,$2
	stq_u $2,0($1)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
$L367:
	ldq $1,32($30)
	bne $1,$L368
$L369:
	bis $31,$31,$31
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE69:
	.end bcopy
	.align 2
	.globl rotl64
	.ent rotl64
$rotl64..ng:
rotl64:
	.frame $30,16,$26,0
$LFB70:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	mov $17,$1
	stl $1,8($30)
	ldq $2,0($30)
	ldl $1,8($30)
	zapnot $1,15,$1
	sll $2,$1,$3
	ldl $1,8($30)
	subl $31,$1,$1
	and $1,63,$1
	zapnot $1,15,$1
	srl $2,$1,$1
	bis $1,$3,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE70:
	.end rotl64
	.align 2
	.globl rotr64
	.ent rotr64
$rotr64..ng:
rotr64:
	.frame $30,16,$26,0
$LFB71:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	mov $17,$1
	stl $1,8($30)
	ldq $2,0($30)
	ldl $1,8($30)
	zapnot $1,15,$1
	srl $2,$1,$3
	ldl $1,8($30)
	subl $31,$1,$1
	and $1,63,$1
	zapnot $1,15,$1
	sll $2,$1,$1
	bis $1,$3,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE71:
	.end rotr64
	.align 2
	.globl rotl32
	.ent rotl32
$rotl32..ng:
rotl32:
	.frame $30,16,$26,0
$LFB72:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $1,0($30)
	bis $31,$2,$1
	stl $1,4($30)
	ldl $1,0($30)
	ldl $2,4($30)
	zapnot $2,15,$2
	sll $1,$2,$3
	zapnot $1,15,$2
	ldl $1,4($30)
	subl $31,$1,$1
	and $1,31,$1
	zapnot $1,15,$1
	srl $2,$1,$1
	bis $31,$3,$2
	bis $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE72:
	.end rotl32
	.align 2
	.globl rotr32
	.ent rotr32
$rotr32..ng:
rotr32:
	.frame $30,16,$26,0
$LFB73:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $1,0($30)
	bis $31,$2,$1
	stl $1,4($30)
	ldl $2,0($30)
	zapnot $2,15,$3
	ldl $1,4($30)
	zapnot $1,15,$1
	srl $3,$1,$3
	ldl $1,4($30)
	subl $31,$1,$1
	and $1,31,$1
	zapnot $1,15,$1
	sll $2,$1,$1
	bis $31,$3,$2
	bis $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE73:
	.end rotr32
	.align 2
	.globl rotl_sz
	.ent rotl_sz
$rotl_sz..ng:
rotl_sz:
	.frame $30,16,$26,0
$LFB74:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	mov $17,$1
	stl $1,8($30)
	ldl $1,8($30)
	zapnot $1,15,$1
	ldq $2,0($30)
	sll $2,$1,$2
	ldl $1,8($30)
	lda $3,64($31)
	subl $3,$1,$1
	addl $31,$1,$1
	ldq $3,0($30)
	srl $3,$1,$1
	bis $2,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE74:
	.end rotl_sz
	.align 2
	.globl rotr_sz
	.ent rotr_sz
$rotr_sz..ng:
rotr_sz:
	.frame $30,16,$26,0
$LFB75:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	mov $17,$1
	stl $1,8($30)
	ldl $1,8($30)
	zapnot $1,15,$1
	ldq $2,0($30)
	srl $2,$1,$2
	ldl $1,8($30)
	lda $3,64($31)
	subl $3,$1,$1
	addl $31,$1,$1
	ldq $3,0($30)
	sll $3,$1,$1
	bis $2,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE75:
	.end rotr_sz
	.align 2
	.globl rotl16
	.ent rotl16
$rotl16..ng:
rotl16:
	.frame $30,16,$26,0
$LFB76:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	mov $17,$3
	ldl $2,0($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
	bis $31,$3,$1
	stl $1,4($30)
	ldq_u $1,0($30)
	mov $30,$2
	extwl $1,$2,$1
	zapnot $1,3,$1
	addl $31,$1,$1
	bis $31,$1,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	sll $2,$1,$1
	addl $31,$1,$1
	zapnot $1,3,$2
	ldq_u $1,0($30)
	mov $30,$3
	extwl $1,$3,$1
	zapnot $1,3,$1
	addl $31,$1,$3
	lda $4,16($31)
	ldl $1,4($30)
	subl $4,$1,$1
	addl $31,$1,$1
	zapnot $3,15,$3
	srl $3,$1,$1
	addl $31,$1,$1
	zapnot $1,3,$1
	bis $2,$1,$1
	zapnot $1,3,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE76:
	.end rotl16
	.align 2
	.globl rotr16
	.ent rotr16
$rotr16..ng:
rotr16:
	.frame $30,16,$26,0
$LFB77:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	mov $17,$3
	ldl $2,0($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
	bis $31,$3,$1
	stl $1,4($30)
	ldq_u $1,0($30)
	mov $30,$2
	extwl $1,$2,$1
	zapnot $1,3,$1
	addl $31,$1,$1
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$1
	zapnot $1,3,$2
	ldq_u $1,0($30)
	mov $30,$3
	extwl $1,$3,$1
	zapnot $1,3,$1
	addl $31,$1,$4
	lda $3,16($31)
	ldl $1,4($30)
	subl $3,$1,$1
	addl $31,$1,$1
	bis $31,$4,$3
	sll $3,$1,$1
	addl $31,$1,$1
	zapnot $1,3,$1
	bis $2,$1,$1
	zapnot $1,3,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE77:
	.end rotr16
	.align 2
	.globl rotl8
	.ent rotl8
$rotl8..ng:
rotl8:
	.frame $30,16,$26,0
$LFB78:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	mov $17,$3
	ldl $2,0($30)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
	bis $31,$3,$1
	stl $1,4($30)
	ldq_u $1,0($30)
	mov $30,$2
	extbl $1,$2,$1
	and $1,0xff,$1
	addl $31,$1,$1
	bis $31,$1,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	sll $2,$1,$1
	addl $31,$1,$1
	and $1,0xff,$2
	ldq_u $1,0($30)
	mov $30,$3
	extbl $1,$3,$1
	and $1,0xff,$1
	addl $31,$1,$3
	lda $4,8($31)
	ldl $1,4($30)
	subl $4,$1,$1
	addl $31,$1,$1
	zapnot $3,15,$3
	srl $3,$1,$1
	addl $31,$1,$1
	and $1,0xff,$1
	bis $2,$1,$1
	and $1,0xff,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE78:
	.end rotl8
	.align 2
	.globl rotr8
	.ent rotr8
$rotr8..ng:
rotr8:
	.frame $30,16,$26,0
$LFB79:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	mov $17,$3
	ldl $2,0($30)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
	bis $31,$3,$1
	stl $1,4($30)
	ldq_u $1,0($30)
	mov $30,$2
	extbl $1,$2,$1
	and $1,0xff,$1
	addl $31,$1,$1
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$1
	and $1,0xff,$2
	ldq_u $1,0($30)
	mov $30,$3
	extbl $1,$3,$1
	and $1,0xff,$1
	addl $31,$1,$4
	lda $3,8($31)
	ldl $1,4($30)
	subl $3,$1,$1
	addl $31,$1,$1
	bis $31,$4,$3
	sll $3,$1,$1
	addl $31,$1,$1
	and $1,0xff,$1
	bis $2,$1,$1
	and $1,0xff,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE79:
	.end rotr8
	.align 2
	.globl bswap_16
	.ent bswap_16
$bswap_16..ng:
bswap_16:
	.frame $30,32,$26,0
$LFB80:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	ldl $2,16($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,16($30)
	lda $1,255($31)
	stq $1,0($30)
	ldl $1,16($30)
	extwl $1,0,$1
	zapnot $1,3,$2
	ldq $1,0($30)
	sll $1,8,$1
	and $2,$1,$1
	srl $1,8,$1
	zapnot $1,3,$2
	ldq $1,0($30)
	zapnot $1,3,$3
	ldl $1,16($30)
	extwl $1,0,$1
	and $3,$1,$1
	zapnot $1,3,$1
	sll $1,8,$1
	zapnot $1,3,$1
	bis $2,$1,$1
	zapnot $1,3,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE80:
	.end bswap_16
	.align 2
	.globl bswap_32
	.ent bswap_32
$bswap_32..ng:
bswap_32:
	.frame $30,32,$26,0
$LFB81:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	stl $1,16($30)
	lda $1,255($31)
	stq $1,0($30)
	ldl $1,16($30)
	zapnot $1,15,$2
	ldq $1,0($30)
	sll $1,24,$1
	and $2,$1,$1
	srl $1,24,$1
	addl $31,$1,$3
	ldl $1,16($30)
	zapnot $1,15,$2
	ldq $1,0($30)
	sll $1,16,$1
	and $2,$1,$1
	srl $1,8,$1
	addl $31,$1,$1
	bis $31,$3,$2
	bis $2,$1,$1
	addl $31,$1,$2
	ldq $1,0($30)
	addl $31,$1,$1
	sll $1,8,$1
	addl $31,$1,$3
	ldl $1,16($30)
	and $1,$3,$1
	addl $31,$1,$1
	sll $1,8,$1
	addl $31,$1,$1
	bis $2,$1,$1
	addl $31,$1,$2
	ldq $1,0($30)
	addl $31,$1,$3
	ldl $1,16($30)
	and $1,$3,$1
	addl $31,$1,$1
	sll $1,24,$1
	addl $31,$1,$1
	bis $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE81:
	.end bswap_32
	.align 2
	.globl bswap_64
	.ent bswap_64
$bswap_64..ng:
bswap_64:
	.frame $30,32,$26,0
$LFB82:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	lda $1,255($31)
	stq $1,0($30)
	ldq $1,0($30)
	sll $1,56,$2
	ldq $1,16($30)
	and $2,$1,$1
	srl $1,56,$2
	ldq $1,0($30)
	sll $1,48,$3
	ldq $1,16($30)
	and $3,$1,$1
	srl $1,40,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,40,$3
	ldq $1,16($30)
	and $3,$1,$1
	srl $1,24,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,32,$3
	ldq $1,16($30)
	and $3,$1,$1
	srl $1,8,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,24,$3
	ldq $1,16($30)
	and $3,$1,$1
	sll $1,8,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,16,$3
	ldq $1,16($30)
	and $3,$1,$1
	sll $1,24,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,8,$3
	ldq $1,16($30)
	and $3,$1,$1
	sll $1,40,$1
	bis $2,$1,$2
	ldq $3,16($30)
	ldq $1,0($30)
	and $3,$1,$1
	sll $1,56,$1
	bis $2,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE82:
	.end bswap_64
	.align 2
	.globl ffs
	.ent ffs
$ffs..ng:
ffs:
	.frame $30,32,$26,0
$LFB83:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	stl $1,16($30)
	stl $31,0($30)
	br $31,$L397
$L400:
	ldl $1,16($30)
	zapnot $1,15,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L398
	ldl $1,0($30)
	addl $1,1,$1
	addl $31,$1,$1
	br $31,$L399
$L398:
	ldl $1,0($30)
	addl $1,1,$1
	stl $1,0($30)
$L397:
	ldl $1,0($30)
	zapnot $1,15,$1
	cmpule $1,31,$1
	bne $1,$L400
	mov $31,$1
$L399:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE83:
	.end ffs
	.align 2
	.globl libiberty_ffs
	.ent libiberty_ffs
$libiberty_ffs..ng:
libiberty_ffs:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB84:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 0
	mov $16,$1
	bne $1,$L402
	mov $31,$1
	br $31,$L403
$L402:
	lda $9,1($31)
	br $31,$L404
$L405:
	sra $1,1,$1
	addl $31,$1,$1
	addl $9,1,$2
	addl $31,$2,$9
$L404:
	and $1,1,$2
	addl $31,$2,$2
	beq $2,$L405
	mov $9,$1
$L403:
	mov $1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,16($30)
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE84:
	.end libiberty_ffs
	.align 2
	.globl gl_isinff
	.ent gl_isinff
gl_isinff:
	.frame $30,16,$26,0
$LFB85:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!49
	lda $29,0($29)		!gpdisp!49
$gl_isinff..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	sts $f16,0($30)
	lds $f11,0($30)
	ldah $1,$LC1($29)		!gprelhigh
	lds $f10,$LC1($1)		!gprellow
	cpys $f10,$f10,$f12
	cmptlt $f11,$f12,$f10
	fbne $f10,$L407
	lds $f11,0($30)
	ldah $1,$LC2($29)		!gprelhigh
	lds $f10,$LC2($1)		!gprellow
	cpys $f10,$f10,$f12
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L412
$L407:
	lda $1,1($31)
	br $31,$L410
$L412:
	mov $31,$1
$L410:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE85:
	.end gl_isinff
	.align 2
	.globl gl_isinfd
	.ent gl_isinfd
gl_isinfd:
	.frame $30,16,$26,0
$LFB86:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!50
	lda $29,0($29)		!gpdisp!50
$gl_isinfd..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	stt $f16,0($30)
	ldt $f12,0($30)
	ldah $1,$LC3($29)		!gprelhigh
	ldt $f11,$LC3($1)		!gprellow
	cmptlt $f12,$f11,$f10
	fbne $f10,$L414
	ldt $f11,0($30)
	ldah $1,$LC4($29)		!gprelhigh
	ldt $f12,$LC4($1)		!gprellow
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L419
$L414:
	lda $1,1($31)
	br $31,$L417
$L419:
	mov $31,$1
$L417:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE86:
	.end gl_isinfd
	.align 2
	.globl gl_isinfl
	.ent gl_isinfl
gl_isinfl:
	.frame $30,32,$26,0
	.mask 0x4000200,-32
$LFB87:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!51
	lda $29,0($29)		!gpdisp!51
$gl_isinfl..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -32
	.cfi_offset 9, -24
	.prologue 1
	mov $16,$9
	ldq $2,0($9)
	ldq $3,8($9)
	stq $2,16($30)
	stq $3,24($30)
	ldah $1,$LC5($29)		!gprelhigh
	lda $1,$LC5($1)		!gprellow
	ldq $2,0($1)
	ldq $3,8($1)
	ldq $16,16($30)
	ldq $17,24($30)
	mov $2,$18
	mov $3,$19
	ldq $27,_OtsLssX($29)		!literal!52
	jsr $26,($27),0		!lituse_jsr!52
	ldah $29,0($26)		!gpdisp!53
	lda $29,0($29)		!gpdisp!53
	mov $0,$1
	bgt $1,$L421
	ldah $1,$LC6($29)		!gprelhigh
	lda $1,$LC6($1)		!gprellow
	ldq $2,0($1)
	ldq $3,8($1)
	ldq $16,16($30)
	ldq $17,24($30)
	mov $2,$18
	mov $3,$19
	ldq $27,_OtsGtrX($29)		!literal!54
	jsr $26,($27),0		!lituse_jsr!54
	ldah $29,0($26)		!gpdisp!55
	lda $29,0($29)		!gpdisp!55
	mov $0,$1
	ble $1,$L426
$L421:
	lda $1,1($31)
	br $31,$L424
$L426:
	mov $31,$1
$L424:
	mov $1,$0
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,32($30)
	.cfi_restore 9
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
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB88:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!56
	lda $29,0($29)		!gpdisp!56
$_Qp_itoq..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,16($30)
	mov $17,$1
	stl $1,24($30)
	ldl $1,24($30)
	stq $1,32($30)
	ldt $f11,32($30)
	cvtqt $f11,$f10
	cpys $f10,$f10,$f16
	ldq $27,_OtsConvertFloatTX($29)		!literal!57
	jsr $26,($27),0		!lituse_jsr!57
	ldah $29,0($26)		!gpdisp!58
	lda $29,0($29)		!gpdisp!58
	mov $16,$2
	mov $17,$3
	ldq $1,16($30)
	stq $2,0($1)
	stq $3,8($1)
	bis $31,$31,$31
	ldq $26,0($30)
	lda $30,48($30)
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
	.frame $30,32,$26,0
$LFB89:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!59
	lda $29,0($29)		!gpdisp!59
$ldexpf..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 1
	sts $f16,16($30)
	mov $17,$1
	stl $1,20($30)
	lds $f12,16($30)
	lds $f11,16($30)
	cmptun $f12,$f11,$f10
	fbne $f10,$L429
	lds $f10,16($30)
	adds $f10,$f10,$f12
	lds $f11,16($30)
	cpys $f12,$f12,$f12
	cmpteq $f11,$f12,$f10
	fbne $f10,$L429
	ldl $1,20($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L430
	ldah $1,$LC7($29)		!gprelhigh
	lds $f10,$LC7($1)		!gprellow
	br $31,$L431
$L430:
	ldah $1,$LC8($29)		!gprelhigh
	lds $f10,$LC8($1)		!gprellow
$L431:
	sts $f10,0($30)
$L434:
	ldl $1,20($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L432
	lds $f12,16($30)
	lds $f11,0($30)
	muls $f12,$f11,$f10
	sts $f10,16($30)
$L432:
	ldl $1,20($30)
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	stl $1,20($30)
	ldl $1,20($30)
	beq $1,$L436
	lds $f10,0($30)
	muls $f10,$f10,$f11
	sts $f11,0($30)
	br $31,$L434
$L436:
	bis $31,$31,$31
$L429:
	lds $f10,16($30)
	cpys $f10,$f10,$f0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE89:
	.end ldexpf
	.align 2
	.globl ldexp
	.ent ldexp
ldexp:
	.frame $30,32,$26,0
$LFB90:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!60
	lda $29,0($29)		!gpdisp!60
$ldexp..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 1
	stt $f16,16($30)
	mov $17,$1
	stl $1,24($30)
	ldt $f12,16($30)
	ldt $f11,16($30)
	cmptun $f12,$f11,$f10
	fbne $f10,$L438
	ldt $f10,16($30)
	addt $f10,$f10,$f11
	ldt $f12,16($30)
	cmpteq $f12,$f11,$f10
	fbne $f10,$L438
	ldl $1,24($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L439
	ldah $1,$LC9($29)		!gprelhigh
	ldt $f10,$LC9($1)		!gprellow
	br $31,$L440
$L439:
	ldah $1,$LC10($29)		!gprelhigh
	ldt $f10,$LC10($1)		!gprellow
$L440:
	stt $f10,0($30)
$L443:
	ldl $1,24($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L441
	ldt $f12,16($30)
	ldt $f11,0($30)
	mult $f12,$f11,$f10
	stt $f10,16($30)
$L441:
	ldl $1,24($30)
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	stl $1,24($30)
	ldl $1,24($30)
	beq $1,$L445
	ldt $f10,0($30)
	mult $f10,$f10,$f11
	stt $f11,0($30)
	br $31,$L443
$L445:
	bis $31,$31,$31
$L438:
	ldt $f10,16($30)
	cpys $f10,$f10,$f0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE90:
	.end ldexp
	.align 2
	.globl ldexpl
	.ent ldexpl
ldexpl:
	.frame $30,64,$26,0
	.mask 0x4000200,-64
$LFB91:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!61
	lda $29,0($29)		!gpdisp!61
$ldexpl..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	stq $9,8($30)
	.cfi_offset 26, -64
	.cfi_offset 9, -56
	.prologue 1
	stq $16,32($30)
	mov $17,$9
	ldq $2,0($9)
	ldq $3,8($9)
	stq $2,48($30)
	stq $3,56($30)
	mov $18,$1
	stl $1,40($30)
	ldq $16,48($30)
	ldq $17,56($30)
	ldq $18,48($30)
	ldq $19,56($30)
	ldq $27,_OtsEqlX($29)		!literal!62
	jsr $26,($27),0		!lituse_jsr!62
	ldah $29,0($26)		!gpdisp!63
	lda $29,0($29)		!gpdisp!63
	mov $0,$1
	blt $1,$L447
	ldq $2,48($30)
	ldq $3,56($30)
	mov $2,$16
	mov $3,$17
	mov $2,$18
	mov $3,$19
	lda $20,2($31)
	ldq $27,_OtsAddX($29)		!literal!64
	jsr $26,($27),0		!lituse_jsr!64
	ldah $29,0($26)		!gpdisp!65
	lda $29,0($29)		!gpdisp!65
	mov $16,$2
	mov $17,$3
	ldq $16,48($30)
	ldq $17,56($30)
	mov $2,$18
	mov $3,$19
	ldq $27,_OtsEqlX($29)		!literal!66
	jsr $26,($27),0		!lituse_jsr!66
	ldah $29,0($26)		!gpdisp!67
	lda $29,0($29)		!gpdisp!67
	mov $0,$1
	bgt $1,$L447
	ldl $1,40($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L448
	ldah $1,$LC11($29)		!gprelhigh
	lda $1,$LC11($1)		!gprellow
	ldq $2,0($1)
	ldq $3,8($1)
	br $31,$L449
$L448:
	ldah $1,$LC12($29)		!gprelhigh
	lda $1,$LC12($1)		!gprellow
	ldq $2,0($1)
	ldq $3,8($1)
$L449:
	stq $2,16($30)
	stq $3,24($30)
$L452:
	ldl $1,40($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L450
	ldq $16,48($30)
	ldq $17,56($30)
	ldq $18,16($30)
	ldq $19,24($30)
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!68
	jsr $26,($27),0		!lituse_jsr!68
	ldah $29,0($26)		!gpdisp!69
	lda $29,0($29)		!gpdisp!69
	mov $16,$2
	mov $17,$3
	stq $2,48($30)
	stq $3,56($30)
$L450:
	ldl $1,40($30)
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	stl $1,40($30)
	ldl $1,40($30)
	beq $1,$L454
	ldq $16,16($30)
	ldq $17,24($30)
	ldq $18,16($30)
	ldq $19,24($30)
	lda $20,2($31)
	ldq $27,_OtsMulX($29)		!literal!70
	jsr $26,($27),0		!lituse_jsr!70
	ldah $29,0($26)		!gpdisp!71
	lda $29,0($29)		!gpdisp!71
	mov $16,$2
	mov $17,$3
	stq $2,16($30)
	stq $3,24($30)
	br $31,$L452
$L454:
	bis $31,$31,$31
$L447:
	ldq $1,32($30)
	ldq $2,48($30)
	ldq $3,56($30)
	stq $2,0($1)
	stq $3,8($1)
	ldq $0,32($30)
	ldq $26,0($30)
	ldq $9,8($30)
	lda $30,64($30)
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
	.frame $30,48,$26,0
$LFB92:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $1,24($30)
	stq $1,0($30)
	ldq $1,16($30)
	stq $1,8($30)
	br $31,$L456
$L457:
	ldq $1,0($30)
	lda $2,1($1)
	stq $2,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$3
	ldq $1,8($30)
	lda $2,1($1)
	stq $2,8($30)
	lda $2,1($1)
	ldq_u $4,0($1)
	extqh $4,$2,$2
	sra $2,56,$2
	xor $3,$2,$2
	sll $2,56,$2
	sra $2,56,$2
	bis $31,$2,$4
	ldq_u $3,0($1)
	mov $1,$2
	mskbl $3,$2,$3
	insbl $4,$2,$2
	bis $2,$3,$2
	stq_u $2,0($1)
	ldq $1,32($30)
	lda $1,-1($1)
	stq $1,32($30)
$L456:
	ldq $1,32($30)
	bne $1,$L457
	ldq $1,16($30)
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE92:
	.end memxor
	.align 2
	.globl strncat
	.ent strncat
strncat:
	.frame $30,64,$26,0
	.mask 0x4000000,-64
$LFB93:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!72
	lda $29,0($29)		!gpdisp!72
$strncat..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	.cfi_offset 26, -64
	.prologue 1
	stq $16,32($30)
	stq $17,40($30)
	stq $18,48($30)
	ldq $16,32($30)
	ldq $27,strlen($29)		!literal!73
	jsr $26,($27),0		!lituse_jsr!73
	ldah $29,0($26)		!gpdisp!74
	lda $29,0($29)		!gpdisp!74
	mov $0,$1
	ldq $2,32($30)
	addq $2,$1,$1
	stq $1,16($30)
	br $31,$L460
$L462:
	ldq $1,40($30)
	lda $1,1($1)
	stq $1,40($30)
	ldq $1,16($30)
	lda $1,1($1)
	stq $1,16($30)
	ldq $1,48($30)
	lda $1,-1($1)
	stq $1,48($30)
$L460:
	ldq $1,48($30)
	beq $1,$L461
	ldq $1,40($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	ldq $3,16($30)
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldq $1,16($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L462
$L461:
	ldq $1,48($30)
	bne $1,$L463
	ldq $3,16($30)
	bis $31,$31,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
$L463:
	ldq $1,32($30)
	mov $1,$0
	ldq $26,0($30)
	lda $30,64($30)
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
	.frame $30,32,$26,0
$LFB94:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $31,0($30)
	br $31,$L466
$L471:
	bis $31,$31,$31
	ldq $1,0($30)
	lda $1,1($1)
	stq $1,0($30)
$L466:
	ldq $2,0($30)
	ldq $1,24($30)
	cmpult $2,$1,$1
	beq $1,$L467
	ldq $2,16($30)
	ldq $1,0($30)
	addq $2,$1,$1
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L471
$L467:
	ldq $1,0($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE94:
	.end strnlen
	.align 2
	.globl strpbrk
	.ent strpbrk
$strpbrk..ng:
strpbrk:
	.frame $30,32,$26,0
$LFB95:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	br $31,$L473
$L477:
	ldq $1,24($30)
	stq $1,0($30)
	br $31,$L474
$L476:
	ldq $1,0($30)
	lda $2,1($1)
	stq $2,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$2
	ldq $1,16($30)
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	cmpeq $2,$1,$1
	beq $1,$L474
	ldq $1,16($30)
	br $31,$L475
$L474:
	ldq $1,0($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L476
	ldq $1,16($30)
	lda $1,1($1)
	stq $1,16($30)
$L473:
	ldq $1,16($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bne $1,$L477
	mov $31,$1
$L475:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE95:
	.end strpbrk
	.align 2
	.globl strrchr
	.ent strrchr
$strrchr..ng:
strrchr:
	.frame $30,32,$26,0
$LFB96:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $2,16($30)
	stq $31,0($30)
$L480:
	lda $2,1($1)
	ldq_u $3,0($1)
	extqh $3,$2,$2
	sra $2,56,$2
	mov $2,$3
	ldl $2,16($30)
	cmpeq $2,$3,$2
	beq $2,$L479
	stq $1,0($30)
$L479:
	mov $1,$2
	lda $1,1($2)
	lda $3,1($2)
	ldq_u $2,0($2)
	extqh $2,$3,$2
	sra $2,56,$2
	bne $2,$L480
	ldq $1,0($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE96:
	.end strrchr
	.align 2
	.globl strstr
	.ent strstr
strstr:
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB97:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!75
	lda $29,0($29)		!gpdisp!75
$strstr..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,32($30)
	stq $17,40($30)
	ldq $1,32($30)
	stq $1,16($30)
	ldq $16,40($30)
	ldq $27,strlen($29)		!literal!76
	jsr $26,($27),0		!lituse_jsr!76
	ldah $29,0($26)		!gpdisp!77
	lda $29,0($29)		!gpdisp!77
	mov $0,$1
	stq $1,24($30)
	ldq $1,24($30)
	bne $1,$L485
	ldq $1,32($30)
	br $31,$L484
$L487:
	ldq $18,24($30)
	ldq $17,40($30)
	ldq $16,16($30)
	ldq $27,strncmp($29)		!literal!78
	jsr $26,($27),0		!lituse_jsr!78
	ldah $29,0($26)		!gpdisp!79
	lda $29,0($29)		!gpdisp!79
	mov $0,$1
	bne $1,$L486
	ldq $1,16($30)
	br $31,$L484
$L486:
	ldq $1,16($30)
	lda $1,1($1)
	stq $1,16($30)
$L485:
	ldq $1,40($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	mov $1,$17
	ldq $16,16($30)
	ldq $27,strchr($29)		!literal!80
	jsr $26,($27),0		!lituse_jsr!80
	ldah $29,0($26)		!gpdisp!81
	lda $29,0($29)		!gpdisp!81
	mov $0,$1
	stq $1,16($30)
	ldq $1,16($30)
	bne $1,$L487
	mov $31,$1
$L484:
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE97:
	.end strstr
	.align 2
	.globl copysign
	.ent copysign
$copysign..ng:
copysign:
	.frame $30,16,$26,0
$LFB98:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stt $f16,0($30)
	stt $f17,8($30)
	ldt $f11,0($30)
	cmptlt $f11,$f31,$f10
	fbeq $f10,$L489
	ldt $f11,8($30)
	cmptlt $f31,$f11,$f10
	fbne $f10,$L491
$L489:
	ldt $f11,0($30)
	cmptlt $f31,$f11,$f10
	fbeq $f10,$L492
	ldt $f11,8($30)
	cmptlt $f11,$f31,$f10
	fbeq $f10,$L492
$L491:
	ldt $f10,0($30)
	cpysn $f10,$f10,$f10
	br $31,$L495
$L492:
	ldt $f10,0($30)
$L495:
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE98:
	.end copysign
	.align 2
	.globl memmem
	.ent memmem
memmem:
	.frame $30,64,$26,0
	.mask 0x4000000,-64
$LFB99:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!82
	lda $29,0($29)		!gpdisp!82
$memmem..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	.cfi_offset 26, -64
	.prologue 1
	stq $16,32($30)
	stq $17,40($30)
	stq $18,48($30)
	stq $19,56($30)
	ldq $2,40($30)
	ldq $1,56($30)
	subq $2,$1,$1
	ldq $2,32($30)
	addq $2,$1,$1
	stq $1,24($30)
	ldq $1,56($30)
	bne $1,$L499
	ldq $1,32($30)
	br $31,$L500
$L499:
	ldq $2,40($30)
	ldq $1,56($30)
	cmpult $2,$1,$1
	and $1,0xff,$1
	beq $1,$L501
	mov $31,$1
	br $31,$L500
$L501:
	ldq $1,32($30)
	stq $1,16($30)
	br $31,$L502
$L504:
	ldq $1,16($30)
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$2
	ldq $1,48($30)
	lda $3,1($1)
	ldq_u $1,0($1)
	extqh $1,$3,$1
	sra $1,56,$1
	cmpeq $2,$1,$1
	beq $1,$L503
	ldq $1,16($30)
	lda $2,1($1)
	ldq $1,48($30)
	lda $3,1($1)
	ldq $1,56($30)
	lda $1,-1($1)
	mov $1,$18
	mov $3,$17
	mov $2,$16
	ldq $27,memcmp($29)		!literal!83
	jsr $26,($27),0		!lituse_jsr!83
	ldah $29,0($26)		!gpdisp!84
	lda $29,0($29)		!gpdisp!84
	mov $0,$1
	bne $1,$L503
	ldq $1,16($30)
	br $31,$L500
$L503:
	ldq $1,16($30)
	lda $1,1($1)
	stq $1,16($30)
$L502:
	ldq $2,16($30)
	ldq $1,24($30)
	cmpule $2,$1,$1
	bne $1,$L504
	mov $31,$1
$L500:
	mov $1,$0
	ldq $26,0($30)
	lda $30,64($30)
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
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB100:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!85
	lda $29,0($29)		!gpdisp!85
$mempcpy..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,16($30)
	stq $17,24($30)
	stq $18,32($30)
	ldq $18,32($30)
	ldq $17,24($30)
	ldq $16,16($30)
	ldq $27,memcpy($29)		!literal!86
	jsr $26,($27),0		!lituse_jsr!86
	ldah $29,0($26)		!gpdisp!87
	lda $29,0($29)		!gpdisp!87
	mov $0,$1
	ldq $2,32($30)
	addq $1,$2,$1
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
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
	.frame $30,32,$26,0
$LFB101:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!88
	lda $29,0($29)		!gpdisp!88
$frexp..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 1
	stt $f16,16($30)
	stq $17,24($30)
	stl $31,4($30)
	stl $31,0($30)
	ldt $f11,16($30)
	cmptlt $f11,$f31,$f10
	fbeq $f10,$L508
	ldt $f10,16($30)
	cpysn $f10,$f10,$f10
	stt $f10,16($30)
	lda $1,1($31)
	stl $1,0($30)
$L508:
	ldt $f11,16($30)
	ldah $1,$LC13($29)		!gprelhigh
	ldt $f12,$LC13($1)		!gprellow
	cmptle $f12,$f11,$f10
	fbeq $f10,$L523
	br $31,$L512
$L513:
	ldl $1,4($30)
	addl $1,1,$1
	stl $1,4($30)
	ldt $f12,16($30)
	ldah $1,$LC10($29)		!gprelhigh
	ldt $f11,$LC10($1)		!gprellow
	divt $f12,$f11,$f10
	stt $f10,16($30)
$L512:
	ldt $f11,16($30)
	ldah $1,$LC13($29)		!gprelhigh
	ldt $f12,$LC13($1)		!gprellow
	cmptle $f12,$f11,$f10
	fbne $f10,$L513
	br $31,$L514
$L523:
	ldt $f12,16($30)
	ldah $1,$LC9($29)		!gprelhigh
	ldt $f11,$LC9($1)		!gprellow
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L514
	ldt $f11,16($30)
	cmpteq $f11,$f31,$f10
	fbne $f10,$L514
	br $31,$L516
$L517:
	ldl $1,4($30)
	subl $1,1,$1
	stl $1,4($30)
	ldt $f10,16($30)
	addt $f10,$f10,$f11
	stt $f11,16($30)
$L516:
	ldt $f12,16($30)
	ldah $1,$LC9($29)		!gprelhigh
	ldt $f11,$LC9($1)		!gprellow
	cmptlt $f12,$f11,$f10
	fbne $f10,$L517
$L514:
	ldq $1,24($30)
	ldl $2,4($30)
	stl $2,0($1)
	ldl $1,0($30)
	beq $1,$L518
	ldt $f10,16($30)
	cpysn $f10,$f10,$f10
	stt $f10,16($30)
$L518:
	ldt $f10,16($30)
	cpys $f10,$f10,$f0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE101:
	.end frexp
	.align 2
	.globl __muldi3
	.ent __muldi3
$__muldi3..ng:
__muldi3:
	.frame $30,32,$26,0
$LFB102:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	stq $31,0($30)
	ldq $1,16($30)
	stq $1,8($30)
	br $31,$L525
$L527:
	ldq $1,8($30)
	and $1,1,$1
	beq $1,$L526
	ldq $2,0($30)
	ldq $1,24($30)
	addq $2,$1,$1
	stq $1,0($30)
$L526:
	ldq $1,24($30)
	addq $1,$1,$1
	stq $1,24($30)
	ldq $1,8($30)
	srl $1,1,$1
	stq $1,8($30)
$L525:
	ldq $1,8($30)
	bne $1,$L527
	ldq $1,0($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE102:
	.end __muldi3
	.align 2
	.globl udivmodsi4
	.ent udivmodsi4
$udivmodsi4..ng:
udivmodsi4:
	.frame $30,32,$26,0
$LFB103:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	mov $17,$2
	stq $18,24($30)
	stl $1,16($30)
	bis $31,$2,$1
	stl $1,20($30)
	lda $1,1($31)
	stl $1,0($30)
	stl $31,4($30)
	br $31,$L530
$L532:
	ldl $1,20($30)
	addl $1,$1,$1
	stl $1,20($30)
	ldl $1,0($30)
	addl $1,$1,$1
	stl $1,0($30)
$L530:
	ldl $1,20($30)
	zapnot $1,15,$2
	ldl $1,16($30)
	zapnot $1,15,$1
	cmpult $2,$1,$1
	beq $1,$L533
	ldl $1,0($30)
	zapnot $1,15,$1
	beq $1,$L533
	ldl $1,20($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L532
	br $31,$L533
$L535:
	ldl $1,16($30)
	zapnot $1,15,$2
	ldl $1,20($30)
	zapnot $1,15,$1
	cmpult $2,$1,$1
	bne $1,$L534
	ldl $2,16($30)
	ldl $1,20($30)
	subl $2,$1,$1
	stl $1,16($30)
	ldl $2,4($30)
	ldl $1,0($30)
	bis $2,$1,$1
	stl $1,4($30)
$L534:
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,1,$1
	stl $1,0($30)
	ldl $1,20($30)
	zapnot $1,15,$1
	srl $1,1,$1
	stl $1,20($30)
$L533:
	ldl $1,0($30)
	zapnot $1,15,$1
	bne $1,$L535
	ldq $1,24($30)
	beq $1,$L536
	ldl $1,16($30)
	br $31,$L537
$L536:
	ldl $1,4($30)
$L537:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE103:
	.end udivmodsi4
	.align 2
	.globl __clrsbqi2
	.ent __clrsbqi2
__clrsbqi2:
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB104:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!89
	lda $29,0($29)		!gpdisp!89
$__clrsbqi2..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	mov $16,$1
	ldl $2,32($30)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,32($30)
	ldl $1,32($30)
	extbl $1,0,$1
	sll $1,56,$1
	sra $1,56,$1
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L539
	ldl $1,32($30)
	extbl $1,0,$1
	ornot $31,$1,$1
	ldl $2,32($30)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,32($30)
$L539:
	ldl $1,32($30)
	extbl $1,0,$1
	sll $1,56,$1
	sra $1,56,$1
	bne $1,$L540
	lda $1,7($31)
	br $31,$L541
$L540:
	ldl $1,32($30)
	extbl $1,0,$1
	sll $1,56,$1
	sra $1,56,$1
	addl $31,$1,$1
	sll $1,8,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	mov $1,$16
	ldq $27,__clzdi2($29)		!literal!90
	jsr $26,($27),0		!lituse_jsr!90
	ldah $29,0($26)		!gpdisp!91
	lda $29,0($29)		!gpdisp!91
	mov $0,$1
	lda $1,-32($1)
	stl $1,16($30)
	ldl $1,16($30)
	subl $1,1,$1
	addl $31,$1,$1
$L541:
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
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
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB105:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!92
	lda $29,0($29)		!gpdisp!92
$__clrsbdi2..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,32($30)
	ldq $1,32($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L543
	ldq $1,32($30)
	ornot $31,$1,$1
	stq $1,32($30)
$L543:
	ldq $1,32($30)
	bne $1,$L544
	lda $1,63($31)
	br $31,$L545
$L544:
	ldq $1,32($30)
	mov $1,$16
	ldq $27,__clzdi2($29)		!literal!93
	jsr $26,($27),0		!lituse_jsr!93
	ldah $29,0($26)		!gpdisp!94
	lda $29,0($29)		!gpdisp!94
	mov $0,$1
	stl $1,16($30)
	ldl $1,16($30)
	subl $1,1,$1
	addl $31,$1,$1
$L545:
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
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
	.frame $30,32,$26,0
$LFB106:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $1,16($30)
	bis $31,$2,$1
	stl $1,20($30)
	stl $31,0($30)
	br $31,$L547
$L549:
	ldl $1,16($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L548
	ldl $2,0($30)
	ldl $1,20($30)
	addl $2,$1,$1
	stl $1,0($30)
$L548:
	ldl $1,16($30)
	zapnot $1,15,$1
	srl $1,1,$1
	stl $1,16($30)
	ldl $1,20($30)
	addl $1,$1,$1
	stl $1,20($30)
$L547:
	ldl $1,16($30)
	zapnot $1,15,$1
	bne $1,$L549
	ldl $1,0($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE106:
	.end __mulsi3
	.align 2
	.globl __cmovd
	.ent __cmovd
$__cmovd..ng:
__cmovd:
	.frame $30,64,$26,0
$LFB107:
	.cfi_startproc
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	.prologue 0
	stq $16,32($30)
	stq $17,40($30)
	mov $18,$1
	stl $1,48($30)
	ldl $1,48($30)
	zapnot $1,15,$1
	srl $1,3,$1
	stl $1,8($30)
	ldl $1,48($30)
	bic $1,7,$1
	stl $1,4($30)
	ldq $1,32($30)
	stq $1,16($30)
	ldq $1,40($30)
	stq $1,24($30)
	ldq $2,16($30)
	ldq $1,24($30)
	cmpult $2,$1,$1
	bne $1,$L552
	ldl $1,48($30)
	zapnot $1,15,$1
	ldq $2,24($30)
	addq $2,$1,$1
	ldq $2,16($30)
	cmpule $2,$1,$1
	bne $1,$L559
$L552:
	stl $31,0($30)
	br $31,$L554
$L555:
	ldl $1,0($30)
	zapnot $1,15,$1
	s8addq $1,0,$1
	ldq $2,40($30)
	addq $2,$1,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	s8addq $1,0,$1
	ldq $3,32($30)
	addq $3,$1,$1
	ldq $2,0($2)
	stq $2,0($1)
	ldl $1,0($30)
	addl $1,1,$1
	stl $1,0($30)
$L554:
	ldl $1,0($30)
	zapnot $1,15,$2
	ldl $1,8($30)
	zapnot $1,15,$1
	cmpult $2,$1,$1
	bne $1,$L555
	br $31,$L556
$L557:
	ldl $1,4($30)
	zapnot $1,15,$1
	ldq $2,24($30)
	addq $2,$1,$1
	ldl $2,4($30)
	zapnot $2,15,$2
	ldq $3,16($30)
	addq $3,$2,$3
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldl $1,4($30)
	addl $1,1,$1
	stl $1,4($30)
$L556:
	ldl $1,48($30)
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	cmpule $2,$1,$1
	beq $1,$L557
	br $31,$L558
$L560:
	ldl $1,48($30)
	zapnot $1,15,$1
	ldq $2,24($30)
	addq $2,$1,$1
	ldl $2,48($30)
	zapnot $2,15,$2
	ldq $3,16($30)
	addq $3,$2,$3
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
$L559:
	ldl $1,48($30)
	subl $1,1,$2
	stl $2,48($30)
	bne $1,$L560
	bis $31,$31,$31
$L558:
	bis $31,$31,$31
	lda $30,64($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE107:
	.end __cmovd
	.align 2
	.globl __cmovh
	.ent __cmovh
$__cmovh..ng:
__cmovh:
	.frame $30,64,$26,0
$LFB108:
	.cfi_startproc
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	.prologue 0
	stq $16,32($30)
	stq $17,40($30)
	mov $18,$1
	stl $1,48($30)
	ldl $1,48($30)
	zapnot $1,15,$1
	srl $1,1,$1
	stl $1,4($30)
	ldq $1,32($30)
	stq $1,8($30)
	ldq $1,40($30)
	stq $1,16($30)
	ldq $2,8($30)
	ldq $1,16($30)
	cmpult $2,$1,$1
	bne $1,$L562
	ldl $1,48($30)
	zapnot $1,15,$1
	ldq $2,16($30)
	addq $2,$1,$1
	ldq $2,8($30)
	cmpule $2,$1,$1
	bne $1,$L568
$L562:
	stl $31,0($30)
	br $31,$L564
$L565:
	ldl $1,0($30)
	zapnot $1,15,$1
	addq $1,$1,$1
	ldq $2,40($30)
	addq $2,$1,$1
	ldl $2,0($30)
	zapnot $2,15,$2
	addq $2,$2,$2
	ldq $3,32($30)
	addq $3,$2,$3
	lda $2,2($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,48,$1
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskwl $2,$1,$2
	inswl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldl $1,0($30)
	addl $1,1,$1
	stl $1,0($30)
$L564:
	ldl $1,0($30)
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	cmpult $2,$1,$1
	bne $1,$L565
	ldl $1,48($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L567
	ldl $1,48($30)
	subl $1,1,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	ldq $2,16($30)
	addq $2,$1,$1
	ldl $2,48($30)
	subl $2,1,$2
	addl $31,$2,$2
	zapnot $2,15,$2
	ldq $3,8($30)
	addq $3,$2,$3
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	br $31,$L567
$L569:
	ldl $1,48($30)
	zapnot $1,15,$1
	ldq $2,16($30)
	addq $2,$1,$1
	ldl $2,48($30)
	zapnot $2,15,$2
	ldq $3,8($30)
	addq $3,$2,$3
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
$L568:
	ldl $1,48($30)
	subl $1,1,$2
	stl $2,48($30)
	bne $1,$L569
	bis $31,$31,$31
$L567:
	bis $31,$31,$31
	lda $30,64($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE108:
	.end __cmovh
	.align 2
	.globl __cmovw
	.ent __cmovw
$__cmovw..ng:
__cmovw:
	.frame $30,64,$26,0
$LFB109:
	.cfi_startproc
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	.prologue 0
	stq $16,32($30)
	stq $17,40($30)
	mov $18,$1
	stl $1,48($30)
	ldl $1,48($30)
	zapnot $1,15,$1
	srl $1,2,$1
	stl $1,8($30)
	ldl $1,48($30)
	bic $1,3,$1
	stl $1,4($30)
	ldq $1,32($30)
	stq $1,16($30)
	ldq $1,40($30)
	stq $1,24($30)
	ldq $2,16($30)
	ldq $1,24($30)
	cmpult $2,$1,$1
	bne $1,$L571
	ldl $1,48($30)
	zapnot $1,15,$1
	ldq $2,24($30)
	addq $2,$1,$1
	ldq $2,16($30)
	cmpule $2,$1,$1
	bne $1,$L578
$L571:
	stl $31,0($30)
	br $31,$L573
$L574:
	ldl $1,0($30)
	zapnot $1,15,$1
	s4addq $1,0,$1
	ldq $2,40($30)
	addq $2,$1,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	s4addq $1,0,$1
	ldq $3,32($30)
	addq $3,$1,$1
	ldl $2,0($2)
	stl $2,0($1)
	ldl $1,0($30)
	addl $1,1,$1
	stl $1,0($30)
$L573:
	ldl $1,0($30)
	zapnot $1,15,$2
	ldl $1,8($30)
	zapnot $1,15,$1
	cmpult $2,$1,$1
	bne $1,$L574
	br $31,$L575
$L576:
	ldl $1,4($30)
	zapnot $1,15,$1
	ldq $2,24($30)
	addq $2,$1,$1
	ldl $2,4($30)
	zapnot $2,15,$2
	ldq $3,16($30)
	addq $3,$2,$3
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
	ldl $1,4($30)
	addl $1,1,$1
	stl $1,4($30)
$L575:
	ldl $1,48($30)
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	cmpule $2,$1,$1
	beq $1,$L576
	br $31,$L577
$L579:
	ldl $1,48($30)
	zapnot $1,15,$1
	ldq $2,24($30)
	addq $2,$1,$1
	ldl $2,48($30)
	zapnot $2,15,$2
	ldq $3,16($30)
	addq $3,$2,$3
	lda $2,1($1)
	ldq_u $1,0($1)
	extqh $1,$2,$1
	sra $1,56,$1
	bis $31,$1,$4
	ldq_u $2,0($3)
	mov $3,$1
	mskbl $2,$1,$2
	insbl $4,$1,$1
	bis $1,$2,$1
	stq_u $1,0($3)
$L578:
	ldl $1,48($30)
	subl $1,1,$2
	stl $2,48($30)
	bne $1,$L579
	bis $31,$31,$31
$L577:
	bis $31,$31,$31
	lda $30,64($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE109:
	.end __cmovw
	.align 2
	.globl __modi
	.ent __modi
__modi:
	.frame $30,16,$26,0
$LFB110:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!95
	lda $29,0($29)		!gpdisp!95
$__modi..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	mov $16,$1
	mov $17,$2
	stl $1,0($30)
	bis $31,$2,$1
	stl $1,4($30)
	ldl $1,0($30)
	addl $31,$1,$2
	ldl $1,4($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__reml($29)		!literal!96
	jsr $23,($27),__reml		!lituse_jsrdirect!96
	mov $27,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
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
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	lda $2,-1($31)
	cmple $1,$2,$2
	bne $2,$L583
	stq $1,8($30)
	ldt $f10,8($30)
	cvtqt $f10,$f11
	br $31,$L585
$L583:
	srl $1,1,$2
	and $1,1,$1
	bis $2,$1,$2
	stq $2,8($30)
	ldt $f11,8($30)
	cvtqt $f11,$f10
	addt $f10,$f10,$f11
$L585:
	cpys $f11,$f11,$f10
	cpys $f10,$f10,$f0
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
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	lda $2,-1($31)
	cmple $1,$2,$2
	bne $2,$L587
	stq $1,8($30)
	ldt $f10,8($30)
	cvtqs $f10,$f11
	br $31,$L589
$L587:
	srl $1,1,$2
	and $1,1,$1
	bis $2,$1,$2
	stq $2,8($30)
	ldt $f11,8($30)
	cvtqs $f11,$f10
	adds $f10,$f10,$f11
$L589:
	cpys $f11,$f11,$f10
	cpys $f10,$f10,$f0
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
	stq $16,0($30)
	ldq $1,0($30)
	lda $2,-1($31)
	cmple $1,$2,$2
	bne $2,$L591
	stq $1,8($30)
	ldt $f10,8($30)
	cvtqt $f10,$f11
	br $31,$L593
$L591:
	srl $1,1,$2
	and $1,1,$1
	bis $2,$1,$2
	stq $2,8($30)
	ldt $f11,8($30)
	cvtqt $f11,$f10
	addt $f10,$f10,$f11
$L593:
	cpys $f11,$f11,$f10
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
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
	stq $16,0($30)
	ldq $1,0($30)
	lda $2,-1($31)
	cmple $1,$2,$2
	bne $2,$L595
	stq $1,8($30)
	ldt $f10,8($30)
	cvtqs $f10,$f11
	br $31,$L597
$L595:
	srl $1,1,$2
	and $1,1,$1
	bis $2,$1,$2
	stq $2,8($30)
	ldt $f11,8($30)
	cvtqs $f11,$f10
	adds $f10,$f10,$f11
$L597:
	cpys $f11,$f11,$f10
	cpys $f10,$f10,$f0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE114:
	.end __ulltof
	.align 2
	.globl __umodi
	.ent __umodi
__umodi:
	.frame $30,16,$26,0
$LFB115:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!97
	lda $29,0($29)		!gpdisp!97
$__umodi..ng:
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 1
	mov $16,$1
	mov $17,$2
	stl $1,0($30)
	bis $31,$2,$1
	stl $1,4($30)
	ldl $1,0($30)
	addl $31,$1,$2
	ldl $1,4($30)
	mov $2,$24
	mov $1,$25
	ldq $27,__remlu($29)		!literal!98
	jsr $23,($27),__remlu		!lituse_jsrdirect!98
	mov $27,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE115:
	.end __umodi
	.align 2
	.globl __clzhi2
	.ent __clzhi2
$__clzhi2..ng:
__clzhi2:
	.frame $30,32,$26,0
$LFB116:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	ldl $2,16($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,16($30)
	stl $31,0($30)
	br $31,$L601
$L604:
	ldl $1,16($30)
	extwl $1,0,$1
	zapnot $1,3,$1
	addl $31,$1,$2
	lda $3,15($31)
	ldl $1,0($30)
	subl $3,$1,$1
	addl $31,$1,$1
	sra $2,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	bne $1,$L606
	ldl $1,0($30)
	addl $1,1,$1
	stl $1,0($30)
$L601:
	ldl $1,0($30)
	cmple $1,15,$1
	bne $1,$L604
	br $31,$L603
$L606:
	bis $31,$31,$31
$L603:
	ldl $1,0($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE116:
	.end __clzhi2
	.align 2
	.globl __ctzhi2
	.ent __ctzhi2
$__ctzhi2..ng:
__ctzhi2:
	.frame $30,32,$26,0
$LFB117:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	ldl $2,16($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,16($30)
	stl $31,0($30)
	br $31,$L608
$L611:
	ldl $1,16($30)
	extwl $1,0,$1
	zapnot $1,3,$1
	addl $31,$1,$2
	ldl $1,0($30)
	sra $2,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	bne $1,$L613
	ldl $1,0($30)
	addl $1,1,$1
	stl $1,0($30)
$L608:
	ldl $1,0($30)
	cmple $1,15,$1
	bne $1,$L611
	br $31,$L610
$L613:
	bis $31,$31,$31
$L610:
	ldl $1,0($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
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
	sts $f16,0($30)
	lds $f11,0($30)
	ldah $1,$LC14($29)		!gprelhigh
	lds $f10,$LC14($1)		!gprellow
	cpys $f10,$f10,$f12
	cmptle $f12,$f11,$f10
	fbeq $f10,$L619
	lds $f12,0($30)
	ldah $1,$LC14($29)		!gprelhigh
	lds $f11,$LC14($1)		!gprellow
	subs $f12,$f11,$f10
	cvttq/c $f10,$f10
	stt $f10,8($30)
	ldq $2,8($30)
	ldah $1,1($31)
	lda $1,-32768($1)
	addq $2,$1,$1
	br $31,$L617
$L619:
	lds $f10,0($30)
	cvttq/c $f10,$f10
	stt $f10,8($30)
	ldq $1,8($30)
$L617:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE118:
	.end __fixunssfsi
	.align 2
	.globl __parityhi2
	.ent __parityhi2
$__parityhi2..ng:
__parityhi2:
	.frame $30,32,$26,0
$LFB119:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	ldl $2,16($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,16($30)
	stl $31,4($30)
	stl $31,0($30)
	br $31,$L621
$L623:
	ldl $1,16($30)
	extwl $1,0,$1
	zapnot $1,3,$1
	addl $31,$1,$2
	ldl $1,0($30)
	sra $2,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L622
	ldl $1,4($30)
	addl $1,1,$1
	stl $1,4($30)
$L622:
	ldl $1,0($30)
	addl $1,1,$1
	stl $1,0($30)
$L621:
	ldl $1,0($30)
	cmple $1,15,$1
	bne $1,$L623
	ldl $1,4($30)
	and $1,1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE119:
	.end __parityhi2
	.align 2
	.globl __popcounthi2
	.ent __popcounthi2
$__popcounthi2..ng:
__popcounthi2:
	.frame $30,32,$26,0
$LFB120:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	ldl $2,16($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,16($30)
	stl $31,4($30)
	stl $31,0($30)
	br $31,$L626
$L628:
	ldl $1,16($30)
	extwl $1,0,$1
	zapnot $1,3,$1
	addl $31,$1,$2
	ldl $1,0($30)
	sra $2,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L627
	ldl $1,4($30)
	addl $1,1,$1
	stl $1,4($30)
$L627:
	ldl $1,0($30)
	addl $1,1,$1
	stl $1,0($30)
$L626:
	ldl $1,0($30)
	cmple $1,15,$1
	bne $1,$L628
	ldl $1,4($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE120:
	.end __popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.ent __mulsi3_iq2000
$__mulsi3_iq2000..ng:
__mulsi3_iq2000:
	.frame $30,32,$26,0
$LFB121:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $1,16($30)
	bis $31,$2,$1
	stl $1,20($30)
	stl $31,0($30)
	br $31,$L631
$L633:
	ldl $1,16($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L632
	ldl $2,0($30)
	ldl $1,20($30)
	addl $2,$1,$1
	stl $1,0($30)
$L632:
	ldl $1,16($30)
	zapnot $1,15,$1
	srl $1,1,$1
	stl $1,16($30)
	ldl $1,20($30)
	addl $1,$1,$1
	stl $1,20($30)
$L631:
	ldl $1,16($30)
	zapnot $1,15,$1
	bne $1,$L633
	ldl $1,0($30)
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE121:
	.end __mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.ent __mulsi3_lm32
$__mulsi3_lm32..ng:
__mulsi3_lm32:
	.frame $30,32,$26,0
$LFB122:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $1,16($30)
	bis $31,$2,$1
	stl $1,20($30)
	stl $31,0($30)
	ldl $1,16($30)
	zapnot $1,15,$1
	bne $1,$L638
	mov $31,$1
	br $31,$L637
$L640:
	ldl $1,20($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L639
	ldl $2,0($30)
	ldl $1,16($30)
	addl $2,$1,$1
	stl $1,0($30)
$L639:
	ldl $1,16($30)
	addl $1,$1,$1
	stl $1,16($30)
	ldl $1,20($30)
	zapnot $1,15,$1
	srl $1,1,$1
	stl $1,20($30)
$L638:
	ldl $1,20($30)
	zapnot $1,15,$1
	bne $1,$L640
	ldl $1,0($30)
$L637:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE122:
	.end __mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.ent __udivmodsi4
$__udivmodsi4..ng:
__udivmodsi4:
	.frame $30,32,$26,0
$LFB123:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	mov $17,$3
	mov $18,$2
	stl $1,16($30)
	bis $31,$3,$1
	stl $1,20($30)
	bis $31,$2,$1
	stl $1,24($30)
	lda $1,1($31)
	stl $1,0($30)
	stl $31,4($30)
	br $31,$L642
$L644:
	ldl $1,20($30)
	addl $1,$1,$1
	stl $1,20($30)
	ldl $1,0($30)
	addl $1,$1,$1
	stl $1,0($30)
$L642:
	ldl $1,20($30)
	zapnot $1,15,$2
	ldl $1,16($30)
	zapnot $1,15,$1
	cmpult $2,$1,$1
	beq $1,$L645
	ldl $1,0($30)
	zapnot $1,15,$1
	beq $1,$L645
	ldl $1,20($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L644
	br $31,$L645
$L647:
	ldl $1,16($30)
	zapnot $1,15,$2
	ldl $1,20($30)
	zapnot $1,15,$1
	cmpult $2,$1,$1
	bne $1,$L646
	ldl $2,16($30)
	ldl $1,20($30)
	subl $2,$1,$1
	stl $1,16($30)
	ldl $2,4($30)
	ldl $1,0($30)
	bis $2,$1,$1
	stl $1,4($30)
$L646:
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,1,$1
	stl $1,0($30)
	ldl $1,20($30)
	zapnot $1,15,$1
	srl $1,1,$1
	stl $1,20($30)
$L645:
	ldl $1,0($30)
	zapnot $1,15,$1
	bne $1,$L647
	ldl $1,24($30)
	beq $1,$L648
	ldl $1,16($30)
	br $31,$L649
$L648:
	ldl $1,4($30)
$L649:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE123:
	.end __udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.ent __mspabi_cmpf
$__mspabi_cmpf..ng:
__mspabi_cmpf:
	.frame $30,16,$26,0
$LFB124:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	sts $f16,0($30)
	sts $f17,4($30)
	lds $f12,0($30)
	lds $f11,4($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L658
	lda $1,-1($31)
	br $31,$L653
$L658:
	lds $f11,0($30)
	lds $f12,4($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L659
	lda $1,1($31)
	br $31,$L653
$L659:
	mov $31,$1
$L653:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE124:
	.end __mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.ent __mspabi_cmpd
$__mspabi_cmpd..ng:
__mspabi_cmpd:
	.frame $30,16,$26,0
$LFB125:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stt $f16,0($30)
	stt $f17,8($30)
	ldt $f12,0($30)
	ldt $f11,8($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L668
	lda $1,-1($31)
	br $31,$L663
$L668:
	ldt $f11,0($30)
	ldt $f12,8($30)
	cmptlt $f12,$f11,$f10
	fbeq $f10,$L669
	lda $1,1($31)
	br $31,$L663
$L669:
	mov $31,$1
$L663:
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE125:
	.end __mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.ent __mspabi_mpysll
$__mspabi_mpysll..ng:
__mspabi_mpysll:
	.frame $30,16,$26,0
$LFB126:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	stq $17,8($30)
	ldq $2,0($30)
	ldq $1,8($30)
	mulq $2,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE126:
	.end __mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.ent __mspabi_mpyull
$__mspabi_mpyull..ng:
__mspabi_mpyull:
	.frame $30,16,$26,0
$LFB127:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	stq $17,8($30)
	ldq $2,0($30)
	ldq $1,8($30)
	mulq $2,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE127:
	.end __mspabi_mpyull
	.align 2
	.globl __mulhi3
	.ent __mulhi3
$__mulhi3..ng:
__mulhi3:
	.frame $30,32,$26,0
$LFB128:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $1,16($30)
	bis $31,$2,$1
	stl $1,20($30)
	stl $31,4($30)
	stl $31,8($30)
	ldl $1,20($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L675
	ldl $1,20($30)
	subl $31,$1,$1
	stl $1,20($30)
	lda $1,1($31)
	stl $1,4($30)
$L675:
	bis $31,$31,$1
	ldl $2,0($30)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
	br $31,$L676
$L679:
	ldl $1,20($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L677
	ldl $2,8($30)
	ldl $1,16($30)
	addl $2,$1,$1
	stl $1,8($30)
$L677:
	ldl $1,16($30)
	addl $1,$1,$1
	stl $1,16($30)
	ldl $1,20($30)
	sra $1,1,$1
	stl $1,20($30)
	ldl $1,0($30)
	extbl $1,0,$1
	sll $1,56,$1
	sra $1,56,$1
	and $1,0xff,$1
	addl $1,1,$1
	and $1,0xff,$1
	ldl $2,0($30)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
$L676:
	ldl $1,20($30)
	beq $1,$L678
	ldl $1,0($30)
	extbl $1,0,$1
	and $1,0xff,$1
	cmpule $1,31,$1
	bne $1,$L679
$L678:
	ldl $1,4($30)
	beq $1,$L680
	ldl $1,8($30)
	subl $31,$1,$1
	addl $31,$1,$1
	br $31,$L681
$L680:
	ldl $1,8($30)
$L681:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE128:
	.end __mulhi3
	.align 2
	.globl __divsi3
	.ent __divsi3
__divsi3:
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB129:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!100
	lda $29,0($29)		!gpdisp!100
$__divsi3..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,32($30)
	stq $17,40($30)
	stl $31,16($30)
	ldq $1,32($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L684
	ldq $1,32($30)
	subq $31,$1,$1
	stq $1,32($30)
	ldl $1,16($30)
	cmpeq $1,0,$1
	and $1,0xff,$1
	stl $1,16($30)
$L684:
	ldq $1,40($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L685
	ldq $1,40($30)
	subq $31,$1,$1
	stq $1,40($30)
	ldl $1,16($30)
	cmpeq $1,0,$1
	and $1,0xff,$1
	stl $1,16($30)
$L685:
	ldq $1,32($30)
	addl $31,$1,$1
	ldq $2,40($30)
	addl $31,$2,$2
	mov $31,$18
	mov $2,$17
	mov $1,$16
	ldq $27,__udivmodsi4($29)		!literal!101
	jsr $26,($27),0		!lituse_jsr!101
	ldah $29,0($26)		!gpdisp!102
	lda $29,0($29)		!gpdisp!102
	mov $0,$1
	zapnot $1,15,$1
	stq $1,24($30)
	ldl $1,16($30)
	beq $1,$L686
	ldq $1,24($30)
	subq $31,$1,$1
	stq $1,24($30)
$L686:
	ldq $1,24($30)
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE129:
	.end __divsi3
	.align 2
	.globl __modsi3
	.ent __modsi3
__modsi3:
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB130:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!103
	lda $29,0($29)		!gpdisp!103
$__modsi3..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,32($30)
	stq $17,40($30)
	stl $31,16($30)
	ldq $1,32($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L689
	ldq $1,32($30)
	subq $31,$1,$1
	stq $1,32($30)
	lda $1,1($31)
	stl $1,16($30)
$L689:
	ldq $1,40($30)
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L690
	ldq $1,40($30)
	subq $31,$1,$1
	stq $1,40($30)
$L690:
	ldq $1,32($30)
	addl $31,$1,$1
	ldq $2,40($30)
	addl $31,$2,$2
	lda $18,1($31)
	mov $2,$17
	mov $1,$16
	ldq $27,__udivmodsi4($29)		!literal!104
	jsr $26,($27),0		!lituse_jsr!104
	ldah $29,0($26)		!gpdisp!105
	lda $29,0($29)		!gpdisp!105
	mov $0,$1
	zapnot $1,15,$1
	stq $1,24($30)
	ldl $1,16($30)
	beq $1,$L691
	ldq $1,24($30)
	subq $31,$1,$1
	stq $1,24($30)
$L691:
	ldq $1,24($30)
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE130:
	.end __modsi3
	.align 2
	.globl __udivmodhi4
	.ent __udivmodhi4
$__udivmodhi4..ng:
__udivmodhi4:
	.frame $30,32,$26,0
$LFB131:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	mov $17,$3
	mov $18,$4
	ldl $2,16($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,16($30)
	bis $31,$3,$1
	ldl $2,16($30)
	zapnot $2,243,$2
	inswl $1,2,$1
	bis $1,$2,$1
	stl $1,16($30)
	bis $31,$4,$1
	stl $1,20($30)
	lda $1,1($31)
	ldl $2,0($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
	bis $31,$31,$3
	ldq_u $2,2($30)
	lda $1,2($30)
	mskwl $2,$1,$2
	inswl $3,$1,$1
	bis $1,$2,$1
	stq_u $1,2($30)
	br $31,$L694
$L696:
	ldq_u $2,18($30)
	lda $1,18($30)
	extwl $2,$1,$1
	addl $1,$1,$1
	bis $31,$1,$3
	ldq_u $2,18($30)
	lda $1,18($30)
	mskwl $2,$1,$2
	inswl $3,$1,$1
	bis $1,$2,$1
	stq_u $1,18($30)
	ldl $1,0($30)
	extwl $1,0,$1
	addl $1,$1,$1
	ldl $2,0($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
$L694:
	ldq_u $2,18($30)
	lda $1,18($30)
	extwl $2,$1,$1
	zapnot $1,3,$2
	ldq_u $3,16($30)
	lda $1,16($30)
	extwl $3,$1,$1
	zapnot $1,3,$1
	cmpult $2,$1,$1
	beq $1,$L697
	ldl $1,0($30)
	extwl $1,0,$1
	zapnot $1,3,$1
	beq $1,$L697
	lda $1,4($30)
	ldq_u $2,18($30)
	extqh $2,$1,$1
	sra $1,48,$1
	lda $2,-1($31)
	cmple $1,$2,$1
	beq $1,$L696
	br $31,$L697
$L699:
	ldq_u $2,16($30)
	lda $1,16($30)
	extwl $2,$1,$1
	zapnot $1,3,$2
	ldq_u $3,18($30)
	lda $1,18($30)
	extwl $3,$1,$1
	zapnot $1,3,$1
	cmpult $2,$1,$1
	bne $1,$L698
	ldq_u $2,16($30)
	lda $1,16($30)
	extwl $2,$1,$2
	ldq_u $3,18($30)
	lda $1,18($30)
	extwl $3,$1,$1
	subl $2,$1,$1
	bis $31,$1,$3
	ldq_u $2,16($30)
	lda $1,16($30)
	mskwl $2,$1,$2
	inswl $3,$1,$1
	bis $1,$2,$1
	stq_u $1,16($30)
	ldq_u $2,2($30)
	lda $1,2($30)
	extwl $2,$1,$2
	ldl $1,0($30)
	extwl $1,0,$1
	bis $2,$1,$1
	bis $31,$1,$3
	ldq_u $2,2($30)
	lda $1,2($30)
	mskwl $2,$1,$2
	inswl $3,$1,$1
	bis $1,$2,$1
	stq_u $1,2($30)
$L698:
	ldl $1,0($30)
	extwl $1,0,$1
	zapnot $1,3,$1
	srl $1,1,$1
	ldl $2,0($30)
	zapnot $2,252,$2
	inswl $1,0,$1
	bis $1,$2,$1
	stl $1,0($30)
	ldq_u $2,18($30)
	lda $1,18($30)
	extwl $2,$1,$1
	zapnot $1,3,$1
	srl $1,1,$1
	bis $31,$1,$3
	ldq_u $2,18($30)
	lda $1,18($30)
	mskwl $2,$1,$2
	inswl $3,$1,$1
	bis $1,$2,$1
	stq_u $1,18($30)
$L697:
	ldl $1,0($30)
	extwl $1,0,$1
	zapnot $1,3,$1
	bne $1,$L699
	ldl $1,20($30)
	beq $1,$L700
	ldq_u $2,16($30)
	lda $1,16($30)
	extwl $2,$1,$1
	zapnot $1,3,$1
	br $31,$L701
$L700:
	ldq_u $2,2($30)
	lda $1,2($30)
	extwl $2,$1,$1
	zapnot $1,3,$1
$L701:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE131:
	.end __udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.ent __udivmodsi4_libgcc
$__udivmodsi4_libgcc..ng:
__udivmodsi4_libgcc:
	.frame $30,48,$26,0
$LFB132:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	mov $18,$1
	stl $1,32($30)
	lda $1,1($31)
	stq $1,0($30)
	stq $31,8($30)
	br $31,$L703
$L705:
	ldq $1,24($30)
	addq $1,$1,$1
	stq $1,24($30)
	ldq $1,0($30)
	addq $1,$1,$1
	stq $1,0($30)
$L703:
	ldq $2,24($30)
	ldq $1,16($30)
	cmpult $2,$1,$1
	beq $1,$L706
	ldq $1,0($30)
	beq $1,$L706
	ldq $2,24($30)
	lda $1,1($31)
	sll $1,31,$1
	and $2,$1,$1
	beq $1,$L705
	br $31,$L706
$L708:
	ldq $2,16($30)
	ldq $1,24($30)
	cmpult $2,$1,$1
	bne $1,$L707
	ldq $2,16($30)
	ldq $1,24($30)
	subq $2,$1,$1
	stq $1,16($30)
	ldq $2,8($30)
	ldq $1,0($30)
	bis $2,$1,$1
	stq $1,8($30)
$L707:
	ldq $1,0($30)
	srl $1,1,$1
	stq $1,0($30)
	ldq $1,24($30)
	srl $1,1,$1
	stq $1,24($30)
$L706:
	ldq $1,0($30)
	bne $1,$L708
	ldl $1,32($30)
	beq $1,$L709
	ldq $1,16($30)
	br $31,$L710
$L709:
	ldq $1,8($30)
$L710:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE132:
	.end __udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.ent __ashldi3
$__ashldi3..ng:
__ashldi3:
	.frame $30,48,$26,0
$LFB133:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,32($30)
	mov $17,$1
	stl $1,40($30)
	lda $1,32($31)
	stl $1,0($30)
	ldq $1,32($30)
	stq $1,8($30)
	ldl $2,40($30)
	ldl $1,0($30)
	and $2,$1,$1
	addl $31,$1,$1
	beq $1,$L712
	stl $31,16($30)
	ldl $3,8($30)
	ldl $2,40($30)
	ldl $1,0($30)
	subl $2,$1,$1
	addl $31,$1,$1
	bis $31,$3,$2
	sll $2,$1,$1
	addl $31,$1,$1
	stl $1,20($30)
	br $31,$L713
$L712:
	ldl $1,40($30)
	bne $1,$L714
	ldq $1,32($30)
	br $31,$L716
$L714:
	ldl $1,8($30)
	bis $31,$1,$2
	ldl $1,40($30)
	zapnot $1,15,$1
	sll $2,$1,$1
	addl $31,$1,$1
	stl $1,16($30)
	ldl $1,12($30)
	bis $31,$1,$2
	ldl $1,40($30)
	zapnot $1,15,$1
	sll $2,$1,$1
	addl $31,$1,$4
	ldl $2,8($30)
	ldl $3,0($30)
	ldl $1,40($30)
	subl $3,$1,$1
	addl $31,$1,$1
	zapnot $2,15,$2
	srl $2,$1,$1
	addl $31,$1,$1
	bis $31,$4,$2
	bis $2,$1,$1
	addl $31,$1,$1
	stl $1,20($30)
$L713:
	ldq $1,16($30)
$L716:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE133:
	.end __ashldi3
	.align 2
	.globl __ashlti3
	.ent __ashlti3
$__ashlti3..ng:
__ashlti3:
	.frame $30,80,$26,0
$LFB134:
	.cfi_startproc
	lda $30,-80($30)
	.cfi_def_cfa_offset 80
	.prologue 0
	stq $16,48($30)
	stq $17,64($30)
	stq $18,72($30)
	mov $19,$1
	stl $1,56($30)
	lda $1,64($31)
	stl $1,0($30)
	ldq $2,64($30)
	ldq $3,72($30)
	stq $2,16($30)
	stq $3,24($30)
	ldl $2,56($30)
	ldl $1,0($30)
	and $2,$1,$1
	addl $31,$1,$1
	beq $1,$L718
	stq $31,32($30)
	ldq $2,16($30)
	ldl $3,56($30)
	ldl $1,0($30)
	subl $3,$1,$1
	addl $31,$1,$1
	sll $2,$1,$1
	stq $1,40($30)
	br $31,$L719
$L718:
	ldl $1,56($30)
	bne $1,$L720
	ldq $1,48($30)
	ldq $2,64($30)
	ldq $3,72($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L722
$L720:
	ldq $2,16($30)
	ldl $1,56($30)
	zapnot $1,15,$1
	sll $2,$1,$1
	stq $1,32($30)
	ldq $1,24($30)
	mov $1,$2
	ldl $1,56($30)
	zapnot $1,15,$1
	sll $2,$1,$2
	ldq $3,16($30)
	ldl $4,0($30)
	ldl $1,56($30)
	subl $4,$1,$1
	addl $31,$1,$1
	srl $3,$1,$1
	bis $2,$1,$1
	stq $1,40($30)
$L719:
	ldq $2,32($30)
	ldq $3,40($30)
	ldq $1,48($30)
	stq $2,0($1)
	stq $3,8($1)
$L722:
	ldq $0,48($30)
	lda $30,80($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE134:
	.end __ashlti3
	.align 2
	.globl __ashrdi3
	.ent __ashrdi3
$__ashrdi3..ng:
__ashrdi3:
	.frame $30,48,$26,0
$LFB135:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,32($30)
	mov $17,$1
	stl $1,40($30)
	lda $1,32($31)
	stl $1,0($30)
	ldq $1,32($30)
	stq $1,8($30)
	ldl $2,40($30)
	ldl $1,0($30)
	and $2,$1,$1
	addl $31,$1,$1
	beq $1,$L724
	ldl $2,12($30)
	ldl $1,0($30)
	subl $1,1,$1
	addl $31,$1,$1
	sra $2,$1,$1
	addl $31,$1,$1
	stl $1,20($30)
	ldl $2,12($30)
	ldl $3,40($30)
	ldl $1,0($30)
	subl $3,$1,$1
	addl $31,$1,$1
	sra $2,$1,$1
	addl $31,$1,$1
	stl $1,16($30)
	br $31,$L725
$L724:
	ldl $1,40($30)
	bne $1,$L726
	ldq $1,32($30)
	br $31,$L728
$L726:
	ldl $2,12($30)
	ldl $1,40($30)
	sra $2,$1,$1
	addl $31,$1,$1
	stl $1,20($30)
	ldl $1,12($30)
	mov $1,$3
	ldl $2,0($30)
	ldl $1,40($30)
	subl $2,$1,$1
	addl $31,$1,$1
	bis $31,$3,$2
	sll $2,$1,$1
	addl $31,$1,$3
	ldl $1,8($30)
	zapnot $1,15,$2
	ldl $1,40($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$1
	bis $31,$3,$2
	bis $2,$1,$1
	addl $31,$1,$1
	stl $1,16($30)
$L725:
	ldq $1,16($30)
$L728:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE135:
	.end __ashrdi3
	.align 2
	.globl __ashrti3
	.ent __ashrti3
$__ashrti3..ng:
__ashrti3:
	.frame $30,80,$26,0
$LFB136:
	.cfi_startproc
	lda $30,-80($30)
	.cfi_def_cfa_offset 80
	.prologue 0
	stq $16,48($30)
	stq $17,64($30)
	stq $18,72($30)
	mov $19,$1
	stl $1,56($30)
	lda $1,64($31)
	stl $1,0($30)
	ldq $2,64($30)
	ldq $3,72($30)
	stq $2,16($30)
	stq $3,24($30)
	ldl $2,56($30)
	ldl $1,0($30)
	and $2,$1,$1
	addl $31,$1,$1
	beq $1,$L730
	ldq $2,24($30)
	ldl $1,0($30)
	subl $1,1,$1
	addl $31,$1,$1
	sra $2,$1,$1
	stq $1,40($30)
	ldq $2,24($30)
	ldl $3,56($30)
	ldl $1,0($30)
	subl $3,$1,$1
	addl $31,$1,$1
	sra $2,$1,$1
	stq $1,32($30)
	br $31,$L731
$L730:
	ldl $1,56($30)
	bne $1,$L732
	ldq $1,48($30)
	ldq $2,64($30)
	ldq $3,72($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L734
$L732:
	ldq $2,24($30)
	ldl $1,56($30)
	sra $2,$1,$1
	stq $1,40($30)
	ldq $1,24($30)
	mov $1,$3
	ldl $2,0($30)
	ldl $1,56($30)
	subl $2,$1,$1
	addl $31,$1,$1
	sll $3,$1,$2
	ldq $3,16($30)
	ldl $1,56($30)
	zapnot $1,15,$1
	srl $3,$1,$1
	bis $2,$1,$1
	stq $1,32($30)
$L731:
	ldq $2,32($30)
	ldq $3,40($30)
	ldq $1,48($30)
	stq $2,0($1)
	stq $3,8($1)
$L734:
	ldq $0,48($30)
	lda $30,80($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE136:
	.end __ashrti3
	.align 2
	.globl __bswapdi2
	.ent __bswapdi2
$__bswapdi2..ng:
__bswapdi2:
	.frame $30,16,$26,0
$LFB137:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	ldq $1,0($30)
	srl $1,56,$2
	ldq $1,0($30)
	srl $1,40,$1
	zapnot $1,2,$1
	bis $2,$1,$2
	ldq $1,0($30)
	srl $1,24,$1
	zapnot $1,4,$1
	bis $2,$1,$2
	ldq $1,0($30)
	srl $1,8,$1
	zapnot $1,8,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,8,$1
	zapnot $1,16,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,24,$1
	zapnot $1,32,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,40,$1
	zapnot $1,64,$1
	bis $2,$1,$2
	ldq $1,0($30)
	sll $1,56,$1
	bis $2,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE137:
	.end __bswapdi2
	.align 2
	.globl __bswapsi2
	.ent __bswapsi2
$__bswapsi2..ng:
__bswapsi2:
	.frame $30,16,$26,0
$LFB138:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	mov $16,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,24,$1
	addl $31,$1,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,8,$1
	addl $31,$1,$1
	zapnot $1,2,$1
	addl $31,$1,$1
	bis $2,$1,$1
	addl $31,$1,$2
	ldl $1,0($30)
	sll $1,8,$1
	addl $31,$1,$1
	zapnot $1,4,$1
	addl $31,$1,$1
	bis $2,$1,$1
	addl $31,$1,$2
	ldl $1,0($30)
	sll $1,24,$1
	addl $31,$1,$1
	bis $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE138:
	.end __bswapsi2
	.align 2
	.globl __clzsi2
	.ent __clzsi2
$__clzsi2..ng:
__clzsi2:
	.frame $30,32,$26,0
$LFB139:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	stl $1,16($30)
	ldl $1,16($30)
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$2
	ldah $1,1($31)
	lda $1,-1($1)
	cmpule $2,$1,$1
	beq $1,$L740
	lda $1,16($31)
	br $31,$L741
$L740:
	mov $31,$1
$L741:
	stl $1,4($30)
	lda $2,16($31)
	ldl $1,4($30)
	subl $2,$1,$1
	addl $31,$1,$1
	ldl $2,0($30)
	zapnot $2,15,$2
	srl $2,$1,$1
	stl $1,0($30)
	ldl $1,4($30)
	stl $1,8($30)
	ldl $1,0($30)
	zapnot $1,2,$1
	addl $31,$1,$1
	bne $1,$L742
	lda $1,8($31)
	br $31,$L743
$L742:
	mov $31,$1
$L743:
	stl $1,4($30)
	lda $2,8($31)
	ldl $1,4($30)
	subl $2,$1,$1
	addl $31,$1,$1
	ldl $2,0($30)
	zapnot $2,15,$2
	srl $2,$1,$1
	stl $1,0($30)
	ldl $1,4($30)
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $1,0($30)
	and $1,240,$1
	addl $31,$1,$1
	bne $1,$L744
	lda $1,4($31)
	br $31,$L745
$L744:
	mov $31,$1
$L745:
	stl $1,4($30)
	lda $2,4($31)
	ldl $1,4($30)
	subl $2,$1,$1
	addl $31,$1,$1
	ldl $2,0($30)
	zapnot $2,15,$2
	srl $2,$1,$1
	stl $1,0($30)
	ldl $1,4($30)
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $1,0($30)
	and $1,12,$1
	addl $31,$1,$1
	bne $1,$L746
	lda $1,2($31)
	br $31,$L747
$L746:
	mov $31,$1
$L747:
	stl $1,4($30)
	lda $2,2($31)
	ldl $1,4($30)
	subl $2,$1,$1
	addl $31,$1,$1
	ldl $2,0($30)
	zapnot $2,15,$2
	srl $2,$1,$1
	stl $1,0($30)
	ldl $1,4($30)
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $1,0($30)
	and $1,2,$1
	addl $31,$1,$1
	zapnot $1,15,$1
	cmpeq $1,0,$1
	and $1,0xff,$1
	addl $31,$1,$1
	mov $1,$3
	lda $2,2($31)
	ldl $1,0($30)
	subl $2,$1,$1
	addl $31,$1,$1
	mull $3,$1,$1
	addl $31,$1,$1
	ldl $2,8($30)
	addl $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE139:
	.end __clzsi2
	.align 2
	.globl __clzti2
	.ent __clzti2
__clzti2:
	.frame $30,64,$26,0
	.mask 0x4000000,-64
$LFB140:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!106
	lda $29,0($29)		!gpdisp!106
$__clzti2..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	.cfi_offset 26, -64
	.prologue 1
	stq $16,48($30)
	stq $17,56($30)
	ldq $2,48($30)
	ldq $3,56($30)
	stq $2,32($30)
	stq $3,40($30)
	ldq $1,40($30)
	cmpeq $1,0,$1
	and $1,0xff,$1
	addl $31,$1,$1
	subl $31,$1,$1
	addl $31,$1,$1
	stq $1,16($30)
	ldq $2,40($30)
	ldq $1,16($30)
	ornot $31,$1,$1
	and $2,$1,$1
	mov $1,$3
	ldq $2,32($30)
	ldq $1,16($30)
	and $2,$1,$1
	bis $3,$1,$1
	mov $1,$16
	ldq $27,__clzdi2($29)		!literal!107
	jsr $26,($27),0		!lituse_jsr!107
	ldah $29,0($26)		!gpdisp!108
	lda $29,0($29)		!gpdisp!108
	mov $0,$1
	addl $31,$1,$2
	ldq $1,16($30)
	addl $31,$1,$1
	and $1,64,$1
	addl $31,$1,$1
	addl $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	ldq $26,0($30)
	lda $30,64($30)
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
	.frame $30,32,$26,0
$LFB141:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldl $2,4($30)
	ldl $1,12($30)
	cmplt $2,$1,$1
	beq $1,$L752
	mov $31,$1
	br $31,$L757
$L752:
	ldl $2,4($30)
	ldl $1,12($30)
	cmple $2,$1,$1
	bne $1,$L754
	lda $1,2($31)
	br $31,$L757
$L754:
	ldl $2,0($30)
	ldl $1,8($30)
	zapnot $2,15,$2
	zapnot $1,15,$1
	cmpult $2,$1,$1
	beq $1,$L755
	mov $31,$1
	br $31,$L757
$L755:
	ldl $2,0($30)
	ldl $1,8($30)
	zapnot $2,15,$2
	zapnot $1,15,$1
	cmpule $2,$1,$1
	bne $1,$L756
	lda $1,2($31)
	br $31,$L757
$L756:
	lda $1,1($31)
$L757:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE141:
	.end __cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.ent __aeabi_lcmp
__aeabi_lcmp:
	.frame $30,32,$26,0
	.mask 0x4000000,-32
$LFB142:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!109
	lda $29,0($29)		!gpdisp!109
$__aeabi_lcmp..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	stq $16,16($30)
	stq $17,24($30)
	ldq $17,24($30)
	ldq $16,16($30)
	ldq $27,__cmpdi2($29)		!literal!110
	jsr $26,($27),0		!lituse_jsr!110
	ldah $29,0($26)		!gpdisp!111
	lda $29,0($29)		!gpdisp!111
	mov $0,$1
	subl $1,1,$1
	addl $31,$1,$1
	mov $1,$0
	ldq $26,0($30)
	lda $30,32($30)
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
	.frame $30,64,$26,0
$LFB143:
	.cfi_startproc
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	.prologue 0
	stq $16,32($30)
	stq $17,40($30)
	stq $18,48($30)
	stq $19,56($30)
	ldq $2,32($30)
	ldq $3,40($30)
	stq $2,0($30)
	stq $3,8($30)
	ldq $2,48($30)
	ldq $3,56($30)
	stq $2,16($30)
	stq $3,24($30)
	ldq $2,8($30)
	ldq $1,24($30)
	cmplt $2,$1,$1
	beq $1,$L761
	mov $31,$1
	br $31,$L766
$L761:
	ldq $2,8($30)
	ldq $1,24($30)
	cmple $2,$1,$1
	bne $1,$L763
	lda $1,2($31)
	br $31,$L766
$L763:
	ldq $2,0($30)
	ldq $1,16($30)
	cmpult $2,$1,$1
	beq $1,$L764
	mov $31,$1
	br $31,$L766
$L764:
	ldq $2,0($30)
	ldq $1,16($30)
	cmpule $2,$1,$1
	bne $1,$L765
	lda $1,2($31)
	br $31,$L766
$L765:
	lda $1,1($31)
$L766:
	mov $1,$0
	lda $30,64($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE143:
	.end __cmpti2
	.align 2
	.globl __ctzsi2
	.ent __ctzsi2
$__ctzsi2..ng:
__ctzsi2:
	.frame $30,32,$26,0
$LFB144:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	stl $1,16($30)
	ldl $1,16($30)
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,3,$1
	addl $31,$1,$1
	bne $1,$L768
	lda $1,16($31)
	br $31,$L769
$L768:
	mov $31,$1
$L769:
	stl $1,4($30)
	ldl $1,0($30)
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stl $1,0($30)
	ldl $1,4($30)
	stl $1,8($30)
	ldl $1,0($30)
	and $1,255,$1
	addl $31,$1,$1
	bne $1,$L770
	lda $1,8($31)
	br $31,$L771
$L770:
	mov $31,$1
$L771:
	stl $1,4($30)
	ldl $1,0($30)
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stl $1,0($30)
	ldl $1,4($30)
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $1,0($30)
	and $1,15,$1
	addl $31,$1,$1
	bne $1,$L772
	lda $1,4($31)
	br $31,$L773
$L772:
	mov $31,$1
$L773:
	stl $1,4($30)
	ldl $1,0($30)
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stl $1,0($30)
	ldl $1,4($30)
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $1,0($30)
	and $1,3,$1
	addl $31,$1,$1
	bne $1,$L774
	lda $1,2($31)
	br $31,$L775
$L774:
	mov $31,$1
$L775:
	stl $1,4($30)
	ldl $1,0($30)
	zapnot $1,15,$2
	ldl $1,4($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stl $1,0($30)
	ldl $1,0($30)
	and $1,3,$1
	stl $1,0($30)
	ldl $1,4($30)
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $1,0($30)
	ornot $31,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	ldl $2,0($30)
	zapnot $2,15,$2
	srl $2,1,$2
	addl $31,$2,$2
	lda $3,2($31)
	subl $3,$2,$2
	addl $31,$2,$2
	subl $31,$1,$1
	and $2,$1,$1
	addl $31,$1,$1
	ldl $2,8($30)
	addl $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE144:
	.end __ctzsi2
	.align 2
	.globl __ctzti2
	.ent __ctzti2
__ctzti2:
	.frame $30,64,$26,0
	.mask 0x4000000,-64
$LFB145:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!112
	lda $29,0($29)		!gpdisp!112
$__ctzti2..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	.cfi_offset 26, -64
	.prologue 1
	stq $16,48($30)
	stq $17,56($30)
	ldq $2,48($30)
	ldq $3,56($30)
	stq $2,32($30)
	stq $3,40($30)
	ldq $1,32($30)
	cmpeq $1,0,$1
	and $1,0xff,$1
	addl $31,$1,$1
	subl $31,$1,$1
	addl $31,$1,$1
	stq $1,16($30)
	ldq $2,40($30)
	ldq $1,16($30)
	and $2,$1,$1
	mov $1,$3
	ldq $2,32($30)
	ldq $1,16($30)
	ornot $31,$1,$1
	and $2,$1,$1
	bis $3,$1,$1
	mov $1,$16
	ldq $27,__ctzdi2($29)		!literal!113
	jsr $26,($27),0		!lituse_jsr!113
	ldah $29,0($26)		!gpdisp!114
	lda $29,0($29)		!gpdisp!114
	mov $0,$1
	addl $31,$1,$2
	ldq $1,16($30)
	addl $31,$1,$1
	and $1,64,$1
	addl $31,$1,$1
	addl $2,$1,$1
	addl $31,$1,$1
	mov $1,$0
	ldq $26,0($30)
	lda $30,64($30)
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
	.frame $30,48,$26,0
	.mask 0x4000000,-48
$LFB146:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!115
	lda $29,0($29)		!gpdisp!115
$__ffsti2..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	stq $26,0($30)
	.cfi_offset 26, -48
	.prologue 1
	stq $16,32($30)
	stq $17,40($30)
	ldq $2,32($30)
	ldq $3,40($30)
	stq $2,16($30)
	stq $3,24($30)
	ldq $1,16($30)
	bne $1,$L780
	ldq $1,24($30)
	bne $1,$L781
	mov $31,$1
	br $31,$L783
$L781:
	ldq $1,24($30)
	mov $1,$16
	ldq $27,__ctzdi2($29)		!literal!116
	jsr $26,($27),0		!lituse_jsr!116
	ldah $29,0($26)		!gpdisp!117
	lda $29,0($29)		!gpdisp!117
	mov $0,$1
	addl $31,$1,$1
	addl $1,65,$1
	addl $31,$1,$1
	br $31,$L783
$L780:
	ldq $1,16($30)
	mov $1,$16
	ldq $27,__ctzdi2($29)		!literal!118
	jsr $26,($27),0		!lituse_jsr!118
	ldah $29,0($26)		!gpdisp!119
	lda $29,0($29)		!gpdisp!119
	mov $0,$1
	addl $31,$1,$1
	addl $1,1,$1
	addl $31,$1,$1
$L783:
	mov $1,$0
	ldq $26,0($30)
	lda $30,48($30)
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
	.frame $30,48,$26,0
$LFB147:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	stq $16,32($30)
	mov $17,$1
	stl $1,40($30)
	lda $1,32($31)
	stl $1,0($30)
	ldq $1,32($30)
	stq $1,8($30)
	ldl $2,40($30)
	ldl $1,0($30)
	and $2,$1,$1
	addl $31,$1,$1
	beq $1,$L785
	stl $31,20($30)
	ldl $2,12($30)
	ldl $3,40($30)
	ldl $1,0($30)
	subl $3,$1,$1
	addl $31,$1,$1
	zapnot $2,15,$2
	srl $2,$1,$1
	addl $31,$1,$1
	stl $1,16($30)
	br $31,$L786
$L785:
	ldl $1,40($30)
	bne $1,$L787
	ldq $1,32($30)
	br $31,$L789
$L787:
	ldl $1,12($30)
	zapnot $1,15,$2
	ldl $1,40($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$1
	stl $1,20($30)
	ldl $3,12($30)
	ldl $2,0($30)
	ldl $1,40($30)
	subl $2,$1,$1
	addl $31,$1,$1
	bis $31,$3,$2
	sll $2,$1,$1
	addl $31,$1,$3
	ldl $1,8($30)
	zapnot $1,15,$2
	ldl $1,40($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$1
	bis $31,$3,$2
	bis $2,$1,$1
	addl $31,$1,$1
	stl $1,16($30)
$L786:
	ldq $1,16($30)
$L789:
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE147:
	.end __lshrdi3
	.align 2
	.globl __lshrti3
	.ent __lshrti3
$__lshrti3..ng:
__lshrti3:
	.frame $30,80,$26,0
$LFB148:
	.cfi_startproc
	lda $30,-80($30)
	.cfi_def_cfa_offset 80
	.prologue 0
	stq $16,48($30)
	stq $17,64($30)
	stq $18,72($30)
	mov $19,$1
	stl $1,56($30)
	lda $1,64($31)
	stl $1,0($30)
	ldq $2,64($30)
	ldq $3,72($30)
	stq $2,16($30)
	stq $3,24($30)
	ldl $2,56($30)
	ldl $1,0($30)
	and $2,$1,$1
	addl $31,$1,$1
	beq $1,$L791
	stq $31,40($30)
	ldq $2,24($30)
	ldl $3,56($30)
	ldl $1,0($30)
	subl $3,$1,$1
	addl $31,$1,$1
	srl $2,$1,$1
	stq $1,32($30)
	br $31,$L792
$L791:
	ldl $1,56($30)
	bne $1,$L793
	ldq $1,48($30)
	ldq $2,64($30)
	ldq $3,72($30)
	stq $2,0($1)
	stq $3,8($1)
	br $31,$L795
$L793:
	ldq $2,24($30)
	ldl $1,56($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stq $1,40($30)
	ldq $2,24($30)
	ldl $3,0($30)
	ldl $1,56($30)
	subl $3,$1,$1
	addl $31,$1,$1
	sll $2,$1,$2
	ldq $3,16($30)
	ldl $1,56($30)
	zapnot $1,15,$1
	srl $3,$1,$1
	bis $2,$1,$1
	stq $1,32($30)
$L792:
	ldq $2,32($30)
	ldq $1,40($30)
	mov $2,$3
	mov $1,$2
	ldq $1,48($30)
	stq $3,0($1)
	stq $2,8($1)
$L795:
	ldq $0,48($30)
	lda $30,80($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE148:
	.end __lshrti3
	.align 2
	.globl __muldsi3
	.ent __muldsi3
$__muldsi3..ng:
__muldsi3:
	.frame $30,48,$26,0
$LFB149:
	.cfi_startproc
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 0
	mov $16,$1
	mov $17,$2
	stl $1,32($30)
	bis $31,$2,$1
	stl $1,36($30)
	lda $1,16($31)
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$2
	lda $1,-1($31)
	srl $1,32,$1
	srl $1,$2,$1
	stl $1,4($30)
	ldl $2,32($30)
	ldl $1,4($30)
	and $2,$1,$1
	addl $31,$1,$2
	ldl $3,36($30)
	ldl $1,4($30)
	and $3,$1,$1
	addl $31,$1,$1
	mull $2,$1,$1
	addl $31,$1,$1
	stl $1,16($30)
	ldl $1,16($30)
	zapnot $1,15,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stl $1,8($30)
	ldl $2,16($30)
	ldl $1,4($30)
	and $1,$2,$1
	addl $31,$1,$1
	stl $1,16($30)
	ldl $1,32($30)
	zapnot $1,15,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$2
	ldl $3,36($30)
	ldl $1,4($30)
	and $3,$1,$1
	addl $31,$1,$1
	mull $2,$1,$1
	addl $31,$1,$1
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $2,16($30)
	ldl $3,8($30)
	ldl $1,4($30)
	and $3,$1,$1
	addl $31,$1,$1
	bis $31,$1,$3
	ldl $1,0($30)
	zapnot $1,15,$1
	sll $3,$1,$1
	addl $31,$1,$1
	addl $2,$1,$1
	addl $31,$1,$1
	stl $1,16($30)
	ldl $1,8($30)
	zapnot $1,15,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$1
	stl $1,20($30)
	ldl $1,16($30)
	zapnot $1,15,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stl $1,8($30)
	ldl $2,16($30)
	ldl $1,4($30)
	and $1,$2,$1
	addl $31,$1,$1
	stl $1,16($30)
	ldl $1,36($30)
	zapnot $1,15,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$2
	ldl $3,32($30)
	ldl $1,4($30)
	and $3,$1,$1
	addl $31,$1,$1
	mull $2,$1,$1
	addl $31,$1,$1
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $2,16($30)
	ldl $3,8($30)
	ldl $1,4($30)
	and $3,$1,$1
	addl $31,$1,$1
	bis $31,$1,$3
	ldl $1,0($30)
	zapnot $1,15,$1
	sll $3,$1,$1
	addl $31,$1,$1
	addl $2,$1,$1
	addl $31,$1,$1
	stl $1,16($30)
	ldl $1,20($30)
	mov $1,$3
	ldl $1,8($30)
	zapnot $1,15,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$1
	addl $3,$1,$1
	addl $31,$1,$1
	stl $1,20($30)
	ldl $1,20($30)
	mov $1,$4
	ldl $1,32($30)
	zapnot $1,15,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	addl $31,$1,$2
	ldl $1,36($30)
	zapnot $1,15,$3
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $3,$1,$1
	addl $31,$1,$1
	mull $2,$1,$1
	addl $31,$1,$1
	addl $4,$1,$1
	addl $31,$1,$1
	stl $1,20($30)
	ldq $1,16($30)
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE149:
	.end __muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.ent __muldi3_compiler_rt
__muldi3_compiler_rt:
	.frame $30,64,$26,0
	.mask 0x4000000,-64
$LFB150:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!120
	lda $29,0($29)		!gpdisp!120
$__muldi3_compiler_rt..ng:
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	stq $26,0($30)
	.cfi_offset 26, -64
	.prologue 1
	stq $16,48($30)
	stq $17,56($30)
	ldq $1,48($30)
	stq $1,16($30)
	ldq $1,56($30)
	stq $1,24($30)
	ldl $1,16($30)
	ldl $2,24($30)
	mov $2,$17
	mov $1,$16
	ldq $27,__muldsi3($29)		!literal!121
	jsr $26,($27),0		!lituse_jsr!121
	ldah $29,0($26)		!gpdisp!122
	lda $29,0($29)		!gpdisp!122
	mov $0,$1
	stq $1,32($30)
	ldl $1,36($30)
	mov $1,$3
	ldl $1,20($30)
	mov $1,$2
	ldl $1,24($30)
	mull $2,$1,$1
	addl $31,$1,$2
	ldl $1,16($30)
	ldl $4,28($30)
	mull $1,$4,$1
	addl $31,$1,$1
	addl $2,$1,$1
	addl $31,$1,$1
	addl $3,$1,$1
	addl $31,$1,$1
	stl $1,36($30)
	ldq $1,32($30)
	mov $1,$0
	ldq $26,0($30)
	lda $30,64($30)
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
	.frame $30,80,$26,0
$LFB151:
	.cfi_startproc
	lda $30,-80($30)
	.cfi_def_cfa_offset 80
	.prologue 0
	stq $16,48($30)
	stq $17,56($30)
	stq $18,64($30)
	lda $1,32($31)
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	lda $2,-1($31)
	srl $2,$1,$1
	stq $1,8($30)
	ldq $2,56($30)
	ldq $1,8($30)
	and $2,$1,$2
	ldq $3,64($30)
	ldq $1,8($30)
	and $3,$1,$1
	mulq $2,$1,$1
	stq $1,32($30)
	ldq $2,32($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stq $1,16($30)
	ldq $2,32($30)
	ldq $1,8($30)
	and $2,$1,$1
	stq $1,32($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	ldq $2,56($30)
	srl $2,$1,$2
	ldq $3,64($30)
	ldq $1,8($30)
	and $3,$1,$1
	mulq $2,$1,$1
	ldq $2,16($30)
	addq $2,$1,$1
	stq $1,16($30)
	ldq $2,32($30)
	ldq $3,16($30)
	ldq $1,8($30)
	and $3,$1,$3
	ldl $1,0($30)
	zapnot $1,15,$1
	sll $3,$1,$1
	addq $2,$1,$1
	stq $1,32($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	ldq $2,16($30)
	srl $2,$1,$1
	stq $1,40($30)
	ldq $2,32($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $2,$1,$1
	stq $1,16($30)
	ldq $2,32($30)
	ldq $1,8($30)
	and $2,$1,$1
	stq $1,32($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	ldq $2,64($30)
	srl $2,$1,$2
	ldq $3,56($30)
	ldq $1,8($30)
	and $3,$1,$1
	mulq $2,$1,$1
	ldq $2,16($30)
	addq $2,$1,$1
	stq $1,16($30)
	ldq $2,32($30)
	ldq $3,16($30)
	ldq $1,8($30)
	and $3,$1,$3
	ldl $1,0($30)
	zapnot $1,15,$1
	sll $3,$1,$1
	addq $2,$1,$1
	stq $1,32($30)
	ldq $1,40($30)
	mov $1,$3
	ldl $1,0($30)
	zapnot $1,15,$1
	ldq $2,16($30)
	srl $2,$1,$1
	addq $3,$1,$1
	stq $1,40($30)
	ldq $1,40($30)
	mov $1,$4
	ldl $1,0($30)
	zapnot $1,15,$1
	ldq $2,56($30)
	srl $2,$1,$2
	ldl $1,0($30)
	zapnot $1,15,$1
	ldq $3,64($30)
	srl $3,$1,$1
	mulq $2,$1,$1
	addq $4,$1,$1
	stq $1,40($30)
	ldq $2,32($30)
	ldq $3,40($30)
	ldq $1,48($30)
	stq $2,0($1)
	stq $3,8($1)
	ldq $0,48($30)
	lda $30,80($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE151:
	.end __mulddi3
	.align 2
	.globl __multi3
	.ent __multi3
__multi3:
	.frame $30,128,$26,0
	.mask 0x4000000,-128
$LFB152:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!123
	lda $29,0($29)		!gpdisp!123
$__multi3..ng:
	lda $30,-128($30)
	.cfi_def_cfa_offset 128
	stq $26,0($30)
	.cfi_offset 26, -128
	.prologue 1
	stq $16,64($30)
	stq $17,80($30)
	stq $18,88($30)
	stq $19,96($30)
	stq $20,104($30)
	ldq $2,80($30)
	ldq $3,88($30)
	stq $2,16($30)
	stq $3,24($30)
	ldq $2,96($30)
	ldq $3,104($30)
	stq $2,32($30)
	stq $3,40($30)
	ldq $2,16($30)
	ldq $3,32($30)
	lda $1,112($30)
	mov $3,$18
	mov $2,$17
	mov $1,$16
	ldq $27,__mulddi3($29)		!literal!124
	jsr $26,($27),__mulddi3		!lituse_jsr!124
	ldah $29,0($26)		!gpdisp!125
	lda $29,0($29)		!gpdisp!125
	ldq $2,112($30)
	ldq $3,120($30)
	stq $2,48($30)
	stq $3,56($30)
	ldq $1,56($30)
	mov $1,$3
	ldq $1,24($30)
	mov $1,$2
	ldq $1,32($30)
	mulq $2,$1,$2
	ldq $1,16($30)
	ldq $4,40($30)
	mulq $1,$4,$1
	addq $2,$1,$1
	addq $3,$1,$1
	stq $1,56($30)
	ldq $2,48($30)
	ldq $3,56($30)
	ldq $1,64($30)
	stq $2,0($1)
	stq $3,8($1)
	ldq $0,64($30)
	ldq $26,0($30)
	lda $30,128($30)
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
	.frame $30,16,$26,0
$LFB153:
	.cfi_startproc
	lda $30,-16($30)
	.cfi_def_cfa_offset 16
	.prologue 0
	stq $16,0($30)
	ldq $1,0($30)
	subq $31,$1,$1
	mov $1,$0
	lda $30,16($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE153:
	.end __negdi2
	.align 2
	.globl __negti2
	.ent __negti2
$__negti2..ng:
__negti2:
	.frame $30,32,$26,0
$LFB154:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,0($30)
	stq $17,16($30)
	stq $18,24($30)
	ldq $5,16($30)
	ldq $4,24($30)
	mov $31,$3
	mov $31,$6
	subq $3,$5,$2
	cmpult $3,$2,$3
	subq $6,$4,$1
	subq $1,$3,$1
	mov $2,$3
	mov $1,$2
	ldq $1,0($30)
	stq $3,0($1)
	stq $2,8($1)
	ldq $0,0($30)
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE154:
	.end __negti2
	.align 2
	.globl __paritydi2
	.ent __paritydi2
$__paritydi2..ng:
__paritydi2:
	.frame $30,32,$26,0
$LFB155:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	ldq $1,16($30)
	stq $1,8($30)
	ldl $1,12($30)
	mov $1,$2
	ldl $1,8($30)
	xor $2,$1,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,16,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,8,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,4,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	and $1,15,$1
	addl $31,$1,$1
	lda $2,27030($31)
	sra $2,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE155:
	.end __paritydi2
	.align 2
	.globl __parityti2
	.ent __parityti2
$__parityti2..ng:
__parityti2:
	.frame $30,64,$26,0
$LFB156:
	.cfi_startproc
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	.prologue 0
	stq $16,48($30)
	stq $17,56($30)
	ldq $2,48($30)
	ldq $3,56($30)
	stq $2,16($30)
	stq $3,24($30)
	ldq $1,24($30)
	mov $1,$2
	ldq $1,16($30)
	xor $2,$1,$1
	stq $1,32($30)
	ldl $1,36($30)
	mov $1,$2
	ldl $1,32($30)
	xor $2,$1,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,16,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,8,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,4,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	and $1,15,$1
	addl $31,$1,$1
	lda $2,27030($31)
	sra $2,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,64($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE156:
	.end __parityti2
	.align 2
	.globl __paritysi2
	.ent __paritysi2
$__paritysi2..ng:
__paritysi2:
	.frame $30,32,$26,0
$LFB157:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	stl $1,16($30)
	ldl $1,16($30)
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,16,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,8,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,4,$1
	addl $31,$1,$2
	ldl $1,0($30)
	xor $1,$2,$1
	stl $1,0($30)
	ldl $1,0($30)
	and $1,15,$1
	addl $31,$1,$1
	lda $2,27030($31)
	sra $2,$1,$1
	addl $31,$1,$1
	and $1,1,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE157:
	.end __paritysi2
	.align 2
	.globl __popcountdi2
	.ent __popcountdi2
__popcountdi2:
	.frame $30,32,$26,0
$LFB158:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!126
	lda $29,0($29)		!gpdisp!126
$__popcountdi2..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 1
	stq $16,16($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,0($30)
	srl $1,1,$2
	ldah $1,$LC15($29)		!gprelhigh
	ldq $1,$LC15($1)		!gprellow
	and $2,$1,$1
	ldq $2,0($30)
	subq $2,$1,$1
	stq $1,0($30)
	ldq $1,0($30)
	srl $1,2,$2
	ldah $1,$LC16($29)		!gprelhigh
	ldq $1,$LC16($1)		!gprellow
	and $2,$1,$2
	ldq $3,0($30)
	ldah $1,$LC16($29)		!gprelhigh
	ldq $1,$LC16($1)		!gprellow
	and $3,$1,$1
	addq $2,$1,$1
	stq $1,0($30)
	ldq $1,0($30)
	srl $1,4,$2
	ldq $1,0($30)
	addq $2,$1,$2
	ldah $1,$LC17($29)		!gprelhigh
	ldq $1,$LC17($1)		!gprellow
	and $2,$1,$1
	stq $1,0($30)
	ldq $1,0($30)
	addl $31,$1,$2
	ldq $1,0($30)
	srl $1,32,$1
	addl $31,$1,$1
	addl $2,$1,$1
	stl $1,8($30)
	ldl $1,8($30)
	zapnot $1,15,$1
	srl $1,16,$1
	addl $31,$1,$1
	ldl $2,8($30)
	addl $2,$1,$1
	stl $1,8($30)
	ldl $1,8($30)
	zapnot $1,15,$1
	srl $1,8,$1
	addl $31,$1,$1
	ldl $2,8($30)
	addl $2,$1,$1
	addl $31,$1,$1
	and $1,127,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE158:
	.end __popcountdi2
	.align 2
	.globl __popcountsi2
	.ent __popcountsi2
$__popcountsi2..ng:
__popcountsi2:
	.frame $30,32,$26,0
$LFB159:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	mov $16,$1
	stl $1,16($30)
	ldl $1,16($30)
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,1,$1
	addl $31,$1,$1
	bis $31,$1,$2
	ldah $1,21845($31)
	lda $1,21845($1)
	and $2,$1,$1
	addl $31,$1,$1
	ldl $2,0($30)
	subl $2,$1,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,2,$1
	addl $31,$1,$1
	bis $31,$1,$2
	ldah $1,13107($31)
	lda $1,13107($1)
	and $2,$1,$1
	addl $31,$1,$2
	ldl $3,0($30)
	ldah $1,13107($31)
	lda $1,13107($1)
	and $3,$1,$1
	addl $31,$1,$1
	addl $2,$1,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,4,$1
	addl $31,$1,$1
	ldl $2,0($30)
	addl $2,$1,$1
	addl $31,$1,$1
	bis $31,$1,$2
	ldah $1,3855($31)
	lda $1,3855($1)
	and $2,$1,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,16,$1
	addl $31,$1,$1
	ldl $2,0($30)
	addl $2,$1,$1
	stl $1,0($30)
	ldl $1,0($30)
	zapnot $1,15,$1
	srl $1,8,$1
	addl $31,$1,$1
	ldl $2,0($30)
	addl $2,$1,$1
	addl $31,$1,$1
	and $1,63,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE159:
	.end __popcountsi2
	.align 2
	.globl __popcountti2
	.ent __popcountti2
__popcountti2:
	.frame $30,48,$26,0
$LFB160:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!127
	lda $29,0($29)		!gpdisp!127
$__popcountti2..ng:
	lda $30,-48($30)
	.cfi_def_cfa_offset 48
	.prologue 1
	stq $16,32($30)
	stq $17,40($30)
	ldq $2,32($30)
	ldq $3,40($30)
	stq $2,0($30)
	stq $3,8($30)
	ldq $1,8($30)
	sll $1,63,$2
	ldq $1,0($30)
	srl $1,1,$1
	bis $2,$1,$1
	ldq $2,8($30)
	srl $2,1,$2
	ldah $3,$LC15($29)		!gprelhigh
	ldq $3,$LC15($3)		!gprellow
	and $1,$3,$6
	ldah $1,$LC15($29)		!gprelhigh
	ldq $1,$LC15($1)		!gprellow
	and $2,$1,$4
	ldq $3,0($30)
	ldq $5,8($30)
	subq $3,$6,$2
	cmpult $3,$2,$3
	subq $5,$4,$1
	subq $1,$3,$1
	stq $2,0($30)
	stq $1,8($30)
	ldq $1,8($30)
	sll $1,62,$2
	ldq $1,0($30)
	srl $1,2,$1
	bis $2,$1,$1
	ldq $2,8($30)
	srl $2,2,$2
	ldah $3,$LC16($29)		!gprelhigh
	ldq $3,$LC16($3)		!gprellow
	and $1,$3,$3
	ldah $1,$LC16($29)		!gprelhigh
	ldq $1,$LC16($1)		!gprellow
	and $2,$1,$5
	ldq $2,0($30)
	ldah $1,$LC16($29)		!gprelhigh
	ldq $1,$LC16($1)		!gprellow
	and $2,$1,$6
	ldq $2,8($30)
	ldah $1,$LC16($29)		!gprelhigh
	ldq $1,$LC16($1)		!gprellow
	and $2,$1,$4
	addq $3,$6,$2
	cmpult $2,$3,$3
	addq $5,$4,$1
	addq $3,$1,$1
	stq $2,0($30)
	stq $1,8($30)
	ldq $1,8($30)
	sll $1,60,$2
	ldq $1,0($30)
	srl $1,4,$1
	bis $2,$1,$1
	ldq $2,8($30)
	srl $2,4,$5
	ldq $6,0($30)
	ldq $4,8($30)
	addq $1,$6,$3
	cmpult $3,$1,$1
	addq $5,$4,$2
	addq $1,$2,$1
	mov $1,$2
	ldah $1,$LC17($29)		!gprelhigh
	ldq $1,$LC17($1)		!gprellow
	and $3,$1,$1
	stq $1,0($30)
	ldah $1,$LC17($29)		!gprelhigh
	ldq $1,$LC17($1)		!gprellow
	and $2,$1,$1
	stq $1,8($30)
	ldq $1,0($30)
	ldq $2,8($30)
	srl $2,0,$2
	addq $1,$2,$1
	stq $1,16($30)
	ldq $1,16($30)
	addl $31,$1,$2
	ldq $1,16($30)
	srl $1,32,$1
	addl $31,$1,$1
	addl $2,$1,$1
	stl $1,24($30)
	ldl $1,24($30)
	zapnot $1,15,$1
	srl $1,16,$1
	addl $31,$1,$1
	ldl $2,24($30)
	addl $2,$1,$1
	stl $1,24($30)
	ldl $1,24($30)
	zapnot $1,15,$1
	srl $1,8,$1
	addl $31,$1,$1
	ldl $2,24($30)
	addl $2,$1,$1
	addl $31,$1,$1
	and $1,255,$1
	addl $31,$1,$1
	mov $1,$0
	lda $30,48($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE160:
	.end __popcountti2
	.align 2
	.globl __powidf2
	.ent __powidf2
__powidf2:
	.frame $30,32,$26,0
$LFB161:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!128
	lda $29,0($29)		!gpdisp!128
$__powidf2..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 1
	stt $f16,16($30)
	mov $17,$1
	stl $1,24($30)
	ldl $1,24($30)
	zapnot $1,15,$1
	srl $1,31,$1
	and $1,0xff,$1
	stl $1,8($30)
	ldah $1,$LC13($29)		!gprelhigh
	ldt $f10,$LC13($1)		!gprellow
	stt $f10,0($30)
$L824:
	ldl $1,24($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L821
	ldt $f12,0($30)
	ldt $f11,16($30)
	mult $f12,$f11,$f10
	stt $f10,0($30)
$L821:
	ldl $1,24($30)
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	stl $1,24($30)
	ldl $1,24($30)
	beq $1,$L829
	ldt $f10,16($30)
	mult $f10,$f10,$f11
	stt $f11,16($30)
	br $31,$L824
$L829:
	bis $31,$31,$31
	ldl $1,8($30)
	beq $1,$L825
	ldah $1,$LC13($29)		!gprelhigh
	ldt $f12,$LC13($1)		!gprellow
	ldt $f11,0($30)
	divt $f12,$f11,$f10
	br $31,$L827
$L825:
	ldt $f10,0($30)
$L827:
	cpys $f10,$f10,$f0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE161:
	.end __powidf2
	.align 2
	.globl __powisf2
	.ent __powisf2
__powisf2:
	.frame $30,32,$26,0
$LFB162:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!129
	lda $29,0($29)		!gpdisp!129
$__powisf2..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 1
	sts $f16,16($30)
	mov $17,$1
	stl $1,20($30)
	ldl $1,20($30)
	zapnot $1,15,$1
	srl $1,31,$1
	and $1,0xff,$1
	stl $1,4($30)
	ldah $1,$LC18($29)		!gprelhigh
	lds $f10,$LC18($1)		!gprellow
	sts $f10,0($30)
$L834:
	ldl $1,20($30)
	and $1,1,$1
	addl $31,$1,$1
	beq $1,$L831
	lds $f12,0($30)
	lds $f11,16($30)
	muls $f12,$f11,$f10
	sts $f10,0($30)
$L831:
	ldl $1,20($30)
	srl $1,63,$2
	addq $2,$1,$1
	sra $1,1,$1
	stl $1,20($30)
	ldl $1,20($30)
	beq $1,$L839
	lds $f10,16($30)
	muls $f10,$f10,$f11
	sts $f11,16($30)
	br $31,$L834
$L839:
	bis $31,$31,$31
	ldl $1,4($30)
	beq $1,$L835
	ldah $1,$LC18($29)		!gprelhigh
	lds $f12,$LC18($1)		!gprellow
	lds $f11,0($30)
	divs $f12,$f11,$f10
	br $31,$L837
$L835:
	lds $f10,0($30)
$L837:
	cpys $f10,$f10,$f0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE162:
	.end __powisf2
	.align 2
	.globl __ucmpdi2
	.ent __ucmpdi2
$__ucmpdi2..ng:
__ucmpdi2:
	.frame $30,32,$26,0
$LFB163:
	.cfi_startproc
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	.prologue 0
	stq $16,16($30)
	stq $17,24($30)
	ldq $1,16($30)
	stq $1,0($30)
	ldq $1,24($30)
	stq $1,8($30)
	ldl $2,4($30)
	ldl $1,12($30)
	zapnot $2,15,$2
	zapnot $1,15,$1
	cmpult $2,$1,$1
	beq $1,$L841
	mov $31,$1
	br $31,$L846
$L841:
	ldl $2,4($30)
	ldl $1,12($30)
	zapnot $2,15,$2
	zapnot $1,15,$1
	cmpule $2,$1,$1
	bne $1,$L843
	lda $1,2($31)
	br $31,$L846
$L843:
	ldl $2,0($30)
	ldl $1,8($30)
	zapnot $2,15,$2
	zapnot $1,15,$1
	cmpult $2,$1,$1
	beq $1,$L844
	mov $31,$1
	br $31,$L846
$L844:
	ldl $2,0($30)
	ldl $1,8($30)
	zapnot $2,15,$2
	zapnot $1,15,$1
	cmpule $2,$1,$1
	bne $1,$L845
	lda $1,2($31)
	br $31,$L846
$L845:
	lda $1,1($31)
$L846:
	mov $1,$0
	lda $30,32($30)
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE163:
	.end __ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.ent __aeabi_ulcmp
__aeabi_ulcmp:
	.frame $30,32,$26,0
	.mask 0x4000000,-32
$LFB164:
	.cfi_startproc
	ldah $29,0($27)		!gpdisp!130
	lda $29,0($29)		!gpdisp!130
$__aeabi_ulcmp..ng:
	lda $30,-32($30)
	.cfi_def_cfa_offset 32
	stq $26,0($30)
	.cfi_offset 26, -32
	.prologue 1
	stq $16,16($30)
	stq $17,24($30)
	ldq $1,16($30)
	ldq $2,24($30)
	mov $2,$17
	mov $1,$16
	ldq $27,__ucmpdi2($29)		!literal!131
	jsr $26,($27),0		!lituse_jsr!131
	ldah $29,0($26)		!gpdisp!132
	lda $29,0($29)		!gpdisp!132
	mov $0,$1
	subl $1,1,$1
	addl $31,$1,$1
	mov $1,$0
	ldq $26,0($30)
	lda $30,32($30)
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
	.frame $30,64,$26,0
$LFB165:
	.cfi_startproc
	lda $30,-64($30)
	.cfi_def_cfa_offset 64
	.prologue 0
	stq $16,32($30)
	stq $17,40($30)
	stq $18,48($30)
	stq $19,56($30)
	ldq $2,32($30)
	ldq $3,40($30)
	stq $2,0($30)
	stq $3,8($30)
	ldq $2,48($30)
	ldq $3,56($30)
	stq $2,16($30)
	stq $3,24($30)
	ldq $2,8($30)
	ldq $1,24($30)
	cmpult $2,$1,$1
	beq $1,$L850
	mov $31,$1
	br $31,$L855
$L850:
	ldq $2,8($30)
	ldq $1,24($30)
	cmpule $2,$1,$1
	bne $1,$L852
	lda $1,2($31)
	br $31,$L855
$L852:
	ldq $2,0($30)
	ldq $1,16($30)
	cmpult $2,$1,$1
	beq $1,$L853
	mov $31,$1
	br $31,$L855
$L853:
	ldq $2,0($30)
	ldq $1,16($30)
	cmpule $2,$1,$1
	bne $1,$L854
	lda $1,2($31)
	br $31,$L855
$L854:
	lda $1,1($31)
$L855:
	mov $1,$0
	lda $30,64($30)
	.cfi_def_cfa_offset 0
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
$LC3:
	.long	-1
	.long	-1048577
	.align 3
$LC4:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
$LC5:
	.long	-1
	.long	-1
	.long	-1
	.long	-65537
	.align 4
$LC6:
	.long	-1
	.long	-1
	.long	-1
	.long	2147418111
	.section	.rodata.cst4
	.align 2
$LC7:
	.long	1056964608
	.align 2
$LC8:
	.long	1073741824
	.section	.rodata.cst8
	.align 3
$LC9:
	.long	0
	.long	1071644672
	.align 3
$LC10:
	.long	0
	.long	1073741824
	.section	.rodata.cst16
	.align 4
$LC11:
	.long	0
	.long	0
	.long	0
	.long	1073610752
	.align 4
$LC12:
	.long	0
	.long	0
	.long	0
	.long	1073741824
	.section	.rodata.cst8
	.align 3
$LC13:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 2
$LC14:
	.long	1191182336
	.section	.rodata.cst8
	.align 3
$LC15:
	.quad	6148914691236517205
	.align 3
$LC16:
	.quad	3689348814741910323
	.align 3
$LC17:
	.quad	1085102592571150095
	.section	.rodata.cst4
	.align 2
$LC18:
	.long	1065353216
	.globl __ctzdi2
	.globl __clzdi2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
