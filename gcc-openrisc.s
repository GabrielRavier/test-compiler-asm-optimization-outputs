	.file	"mini-libc.c"
	.section	.text
	.align 4
	.global	memmove
	.type	memmove, @function
memmove:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.sfleu	r3, r4
	l.bf	.L2
	 l.nop

	l.add	r19, r4, r5
	l.add	r17, r3, r5
	l.j	.L3
	 l.nop

.L4:
	l.addi	r19, r19, -1
	l.addi	r17, r17, -1
	l.lbs	r21, 0(r19)
	l.sb	0(r17), r21
.L3:
	l.sfne	r19, r4
	l.bf	.L4
	 l.nop

	l.j	.L5
	 l.nop

.L2:
	l.sfeq	r3, r4
	l.bf	.L5
	 l.nop

	l.add	r5, r3, r5
	l.or	r19, r4, r4
	l.or	r17, r3, r3
	l.j	.L6
	 l.nop

.L7:
	l.addi	r19, r19, 1
	l.addi	r17, r17, 1
	l.lbs	r21, -1(r19)
	l.sb	-1(r17), r21
.L6:
	l.sfne	r17, r5
	l.bf	.L7
	 l.nop

.L5:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	memmove, .-memmove
	.align 4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r5, r5, 0xff
	l.j	.L9
	 l.nop

.L11:
	l.addi	r6, r6, -1
	l.addi	r4, r4, 1
	l.addi	r3, r3, 1
.L9:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L10
	 l.nop

	l.lbz	r17, 0(r4)
	l.sb	0(r3), r17
	l.andi	r17, r17, 0xff
	l.sfne	r5, r17
	l.bf	.L11
	 l.nop

.L10:
	l.movhi	r17, hi(0)
	l.sfeq	r6, r17
	l.bf	.L13
	 l.nop

	l.addi	r11, r3, 1
	l.j	.L12
	 l.nop

.L13:
	l.movhi	r11, hi(0)
.L12:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	memccpy, .-memccpy
	.align 4
	.global	memchr
	.type	memchr, @function
memchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r4, r4, 0xff
	l.j	.L15
	 l.nop

.L17:
	l.addi	r3, r3, 1
	l.addi	r5, r5, -1
.L15:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L16
	 l.nop

	l.lbz	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L17
	 l.nop

.L16:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L19
	 l.nop

	l.or	r11, r3, r3
	l.j	.L18
	 l.nop

.L19:
	l.movhi	r11, hi(0)
.L18:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	memchr, .-memchr
	.align 4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L21
	 l.nop

.L23:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
.L21:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L22
	 l.nop

	l.lbz	r19, 0(r3)
	l.lbz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bf	.L23
	 l.nop

.L22:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L25
	 l.nop

	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
	l.j	.L24
	 l.nop

.L25:
	l.movhi	r11, hi(0)
.L24:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	memcmp, .-memcmp
	.align 4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
	l.j	.L27
	 l.nop

.L28:
	l.addi	r4, r4, 1
	l.addi	r17, r17, 1
	l.lbz	r19, -1(r4)
	l.sb	-1(r17), r19
.L27:
	l.sfne	r17, r5
	l.bf	.L28
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	memcpy, .-memcpy
	.align 4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r4, r4, 0xff
	l.addi	r5, r5, -1
	l.j	.L30
	 l.nop

.L32:
	l.add	r17, r3, r5
	l.lbz	r19, 0(r17)
	l.addi	r17, r5, -1
	l.sfne	r4, r19
	l.bf	.L33
	 l.nop

	l.add	r11, r3, r5
	l.j	.L31
	 l.nop

.L33:
	l.or	r5, r17, r17
.L30:
	l.xori	r17, r0, -1
	l.sfne	r5, r17
	l.bf	.L32
	 l.nop

	l.movhi	r11, hi(0)
.L31:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	memrchr, .-memrchr
	.align 4
	.global	memset
	.type	memset, @function
memset:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
	l.j	.L35
	 l.nop

.L36:
	l.andi	r19, r4, 0xff
	l.sb	0(r17), r19
	l.addi	r17, r17, 1
.L35:
	l.sfne	r17, r5
	l.bf	.L36
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	memset, .-memset
	.align 4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.j	.L38
	 l.nop

.L39:
	l.addi	r4, r4, 1
	l.addi	r11, r11, 1
.L38:
	l.lbs	r17, 0(r4)
	l.sb	0(r11), r17
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L39
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	stpcpy, .-stpcpy
	.align 4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.andi	r4, r4, 0xff
	l.j	.L41
	 l.nop

.L43:
	l.addi	r11, r11, 1
.L41:
	l.lbs	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L42
	 l.nop

	l.lbz	r17, 0(r11)
	l.sfne	r4, r17
	l.bf	.L43
	 l.nop

.L42:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strchrnul, .-strchrnul
	.align 4
	.global	strchr
	.type	strchr, @function
strchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
.L46:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bf	.L47
	 l.nop

	l.addi	r3, r3, 1
	l.lbs	r17, -1(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L46
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L45
	 l.nop

.L47:
	l.or	r11, r3, r3
.L45:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strchr, .-strchr
	.align 4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L49
	 l.nop

.L51:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
.L49:
	l.lbs	r19, 0(r3)
	l.lbs	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L50
	 l.nop

	l.or	r17, r19, r19
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L51
	 l.nop

.L50:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strcmp, .-strcmp
	.align 4
	.global	strlen
	.type	strlen, @function
strlen:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.j	.L53
	 l.nop

.L54:
	l.addi	r11, r11, 1
.L53:
	l.lbs	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L54
	 l.nop

	l.sub	r11, r11, r3
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strlen, .-strlen
	.align 4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L60
	 l.nop

	l.addi	r5, r5, -1
	l.add	r5, r3, r5
	l.j	.L57
	 l.nop

.L59:
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
.L57:
	l.lbz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L58
	 l.nop

	l.lbz	r17, 0(r4)
	l.sfeq	r17, r19
	l.bf	.L58
	 l.nop

	l.sfeq	r3, r5
	l.bf	.L58
	 l.nop

	l.lbz	r19, 0(r3)
	l.sfeq	r19, r17
	l.bf	.L59
	 l.nop

.L58:
	l.lbz	r11, 0(r3)
	l.lbz	r17, 0(r4)
	l.sub	r11, r11, r17
	l.j	.L56
	 l.nop

.L60:
	l.movhi	r11, hi(0)
.L56:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strncmp, .-strncmp
	.align 4
	.global	swab
	.type	swab, @function
swab:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.j	.L62
	 l.nop

.L63:
	l.lbs	r19, 1(r17)
	l.sb	0(r4), r19
	l.lbs	r19, 0(r17)
	l.sb	1(r4), r19
	l.addi	r4, r4, 2
	l.addi	r17, r17, 2
.L62:
	l.add	r19, r3, r5
	l.sub	r19, r19, r17
	l.ori	r21, r0, 1
	l.sfgts	r19, r21
	l.bf	.L63
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	swab, .-swab
	.align 4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L65
	 l.nop

	l.movhi	r11, hi(0)
.L65:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	isalpha, .-isalpha
	.align 4
	.global	isascii
	.type	isascii, @function
isascii:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 127
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L67
	 l.nop

	l.movhi	r11, hi(0)
.L67:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	isascii, .-isascii
	.align 4
	.global	isblank
	.type	isblank, @function
isblank:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L70
	 l.nop

	l.ori	r17, r0, 9
	l.sfne	r3, r17
	l.bf	.L71
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L69
	 l.nop

.L70:
	l.ori	r11, r0, 1
	l.j	.L69
	 l.nop

.L71:
	l.movhi	r11, hi(0)
.L69:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	isblank, .-isblank
	.align 4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L74
	 l.nop

	l.ori	r17, r0, 127
	l.sfne	r3, r17
	l.bf	.L75
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L73
	 l.nop

.L74:
	l.ori	r11, r0, 1
	l.j	.L73
	 l.nop

.L75:
	l.movhi	r11, hi(0)
.L73:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	iscntrl, .-iscntrl
	.align 4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -48
	l.ori	r17, r0, 9
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L77
	 l.nop

	l.movhi	r11, hi(0)
.L77:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	isdigit, .-isdigit
	.align 4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -33
	l.ori	r17, r0, 93
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L79
	 l.nop

	l.movhi	r11, hi(0)
.L79:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	isgraph, .-isgraph
	.align 4
	.global	islower
	.type	islower, @function
islower:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -97
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L81
	 l.nop

	l.movhi	r11, hi(0)
.L81:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	islower, .-islower
	.align 4
	.global	isprint
	.type	isprint, @function
isprint:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -32
	l.ori	r17, r0, 94
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L83
	 l.nop

	l.movhi	r11, hi(0)
.L83:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	isprint, .-isprint
	.align 4
	.global	isspace
	.type	isspace, @function
isspace:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 32
	l.sfeq	r3, r17
	l.bf	.L86
	 l.nop

	l.addi	r3, r3, -9
	l.ori	r17, r0, 4
	l.sfgtu	r3, r17
	l.bf	.L87
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L85
	 l.nop

.L86:
	l.ori	r11, r0, 1
	l.j	.L85
	 l.nop

.L87:
	l.movhi	r11, hi(0)
.L85:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	isspace, .-isspace
	.align 4
	.global	isupper
	.type	isupper, @function
isupper:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -65
	l.ori	r17, r0, 25
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L89
	 l.nop

	l.movhi	r11, hi(0)
.L89:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	isupper, .-isupper
	.align 4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 31
	l.sfleu	r3, r17
	l.bf	.L92
	 l.nop

	l.addi	r17, r3, -127
	l.ori	r19, r0, 32
	l.sfleu	r17, r19
	l.bf	.L93
	 l.nop

	l.addi	r17, r3, -8232
	l.ori	r19, r0, 1
	l.sfleu	r17, r19
	l.bf	.L94
	 l.nop

	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 7
	l.add	r3, r3, r17
	l.ori	r17, r0, 2
	l.sfgtu	r3, r17
	l.bf	.L95
	 l.nop

	l.or	r11, r19, r19
	l.j	.L91
	 l.nop

.L92:
	l.ori	r11, r0, 1
	l.j	.L91
	 l.nop

.L93:
	l.ori	r11, r0, 1
	l.j	.L91
	 l.nop

.L94:
	l.ori	r11, r0, 1
	l.j	.L91
	 l.nop

.L95:
	l.movhi	r11, hi(0)
.L91:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	iswcntrl, .-iswcntrl
	.align 4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r3, r3, -48
	l.ori	r17, r0, 9
	l.sfleu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L97
	 l.nop

	l.movhi	r11, hi(0)
.L97:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	iswdigit, .-iswdigit
	.align 4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 254
	l.sfgtu	r3, r17
	l.bf	.L99
	 l.nop

	l.addi	r3, r3, 1
	l.andi	r3, r3, 127
	l.ori	r17, r0, 32
	l.sfgtu	r3, r17
	l.ori	r11, r0, 1
	l.bf	.L100
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L100
	 l.nop

.L99:
	l.ori	r17, r0, 8231
	l.sfleu	r3, r17
	l.bf	.L101
	 l.nop

	l.addi	r17, r3, -8234
	l.ori	r19, r0, 47061
	l.sfleu	r17, r19
	l.bf	.L102
	 l.nop

	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 8192
	l.add	r17, r3, r17
	l.ori	r19, r0, 8184
	l.sfleu	r17, r19
	l.bf	.L103
	 l.nop

	l.movhi	r17, hi(-65536)
	l.ori	r17, r17, 4
	l.add	r17, r3, r17
	l.movhi	r19, hi(1048576)
	l.ori	r19, r19, 3
	l.sfgtu	r17, r19
	l.bf	.L104
	 l.nop

	l.andi	r3, r3, 65534
	l.ori	r17, r0, 65534
	l.sfeq	r3, r17
	l.bf	.L105
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L100
	 l.nop

.L101:
	l.ori	r11, r0, 1
	l.j	.L100
	 l.nop

.L102:
	l.ori	r11, r0, 1
	l.j	.L100
	 l.nop

.L103:
	l.ori	r11, r0, 1
	l.j	.L100
	 l.nop

.L104:
	l.movhi	r11, hi(0)
	l.j	.L100
	 l.nop

.L105:
	l.movhi	r11, hi(0)
.L100:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	iswprint, .-iswprint
	.align 4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.addi	r17, r3, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L109
	 l.nop

	l.ori	r3, r3, 32
	l.addi	r3, r3, -97
	l.ori	r17, r0, 5
	l.sfgtu	r3, r17
	l.bf	.L110
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L108
	 l.nop

.L109:
	l.ori	r11, r0, 1
	l.j	.L108
	 l.nop

.L110:
	l.movhi	r11, hi(0)
.L108:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	iswxdigit, .-iswxdigit
	.align 4
	.global	toascii
	.type	toascii, @function
toascii:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r11, r3, 127
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	toascii, .-toascii
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.long	0
	.section	.text
	.align 4
	.global	fdim
	.type	fdim, @function
fdim:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.jal	__unorddf2
	 l.nop

	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L115
	 l.nop

	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__unorddf2
	 l.nop

	l.sfne	r11, r24
	l.bf	.L116
	 l.nop

	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__gtdf2
	 l.nop

	l.sfgts	r11, r24
	l.bnf	.L119
	 l.nop

	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__subdf3
	 l.nop

	l.or	r21, r11, r11
	l.or	r17, r21, r21
	l.or	r19, r12, r12
	l.j	.L113
	 l.nop

.L115:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L113
	 l.nop

.L116:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L113
	 l.nop

.L119:
	l.movhi	r21, ha(.LC0)
	l.addi	r21, r21, lo(.LC0)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
.L113:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	fdim, .-fdim
	.section	.rodata
	.align 4
.LC1:
	.long	0
	.section	.text
	.align 4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.or	r4, r3, r3
	l.jal	__unordsf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L123
	 l.nop

	l.or	r4, r16, r16
	l.or	r3, r16, r16
	l.jal	__unordsf2
	 l.nop

	l.sfne	r11, r20
	l.bf	.L124
	 l.nop

	l.or	r4, r16, r16
	l.or	r3, r18, r18
	l.jal	__gtsf2
	 l.nop

	l.sfgts	r11, r20
	l.bnf	.L127
	 l.nop

	l.or	r4, r16, r16
	l.or	r3, r18, r18
	l.jal	__subsf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r11, r17, r17
	l.j	.L121
	 l.nop

.L123:
	l.or	r11, r18, r18
	l.j	.L121
	 l.nop

.L124:
	l.or	r11, r16, r16
	l.j	.L121
	 l.nop

.L127:
	l.movhi	r17, ha(.LC1)
	l.lwz	r11, lo(.LC1)(r17)
.L121:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	fdimf, .-fdimf
	.align 4
	.global	fmax
	.type	fmax, @function
fmax:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.jal	__unorddf2
	 l.nop

	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L132
	 l.nop

	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__unorddf2
	 l.nop

	l.sfne	r11, r24
	l.bf	.L133
	 l.nop

	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r16
	l.and	r17, r17, r20
	l.sfeq	r19, r17
	l.bf	.L130
	 l.nop

	l.sfeq	r19, r24
	l.bf	.L134
	 l.nop

	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L129
	 l.nop

.L130:
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L137
	 l.nop

	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L129
	 l.nop

.L132:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L129
	 l.nop

.L133:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L129
	 l.nop

.L134:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L129
	 l.nop

.L137:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L129:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	fmax, .-fmax
	.align 4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r4, r3, r3
	l.jal	__unordsf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L142
	 l.nop

	l.or	r4, r18, r18
	l.or	r3, r18, r18
	l.jal	__unordsf2
	 l.nop

	l.sfne	r11, r20
	l.bf	.L143
	 l.nop

	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r16
	l.and	r17, r17, r18
	l.sfeq	r19, r17
	l.bf	.L140
	 l.nop

	l.sfeq	r19, r20
	l.bf	.L144
	 l.nop

	l.or	r11, r18, r18
	l.j	.L139
	 l.nop

.L140:
	l.or	r4, r18, r18
	l.or	r3, r16, r16
	l.jal	__ltsf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L147
	 l.nop

	l.or	r11, r18, r18
	l.j	.L139
	 l.nop

.L142:
	l.or	r11, r18, r18
	l.j	.L139
	 l.nop

.L143:
	l.or	r11, r16, r16
	l.j	.L139
	 l.nop

.L144:
	l.or	r11, r16, r16
	l.j	.L139
	 l.nop

.L147:
	l.or	r11, r16, r16
.L139:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	fmaxf, .-fmaxf
	.align 4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r20, r5, r5
	l.or	r22, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.jal	__unorddf2
	 l.nop

	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L152
	 l.nop

	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__unorddf2
	 l.nop

	l.sfne	r11, r24
	l.bf	.L153
	 l.nop

	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r16
	l.and	r17, r17, r20
	l.sfeq	r19, r17
	l.bf	.L150
	 l.nop

	l.sfeq	r19, r24
	l.bf	.L154
	 l.nop

	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L149
	 l.nop

.L150:
	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L157
	 l.nop

	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L149
	 l.nop

.L152:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L149
	 l.nop

.L153:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L149
	 l.nop

.L154:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L149
	 l.nop

.L157:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L149:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	fmaxl, .-fmaxl
	.align 4
	.global	fmin
	.type	fmin, @function
fmin:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.jal	__unorddf2
	 l.nop

	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L162
	 l.nop

	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__unorddf2
	 l.nop

	l.sfne	r11, r24
	l.bf	.L163
	 l.nop

	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L160
	 l.nop

	l.sfeq	r19, r24
	l.bf	.L164
	 l.nop

	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L159
	 l.nop

.L160:
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L167
	 l.nop

	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L159
	 l.nop

.L162:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L159
	 l.nop

.L163:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L159
	 l.nop

.L164:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L159
	 l.nop

.L167:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L159:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	fmin, .-fmin
	.align 4
	.global	fminf
	.type	fminf, @function
fminf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r18, r3, r3
	l.or	r16, r4, r4
	l.or	r4, r3, r3
	l.jal	__unordsf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L172
	 l.nop

	l.or	r4, r16, r16
	l.or	r3, r16, r16
	l.jal	__unordsf2
	 l.nop

	l.sfne	r11, r20
	l.bf	.L173
	 l.nop

	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r18
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L170
	 l.nop

	l.sfeq	r19, r20
	l.bf	.L174
	 l.nop

	l.or	r11, r18, r18
	l.j	.L169
	 l.nop

.L170:
	l.or	r4, r16, r16
	l.or	r3, r18, r18
	l.jal	__ltsf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L177
	 l.nop

	l.or	r11, r18, r18
	l.j	.L169
	 l.nop

.L172:
	l.or	r11, r16, r16
	l.j	.L169
	 l.nop

.L173:
	l.or	r11, r18, r18
	l.j	.L169
	 l.nop

.L174:
	l.or	r11, r16, r16
	l.j	.L169
	 l.nop

.L177:
	l.or	r11, r16, r16
.L169:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	fminf, .-fminf
	.align 4
	.global	fminl
	.type	fminl, @function
fminl:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.jal	__unorddf2
	 l.nop

	l.movhi	r24, hi(0)
	l.sfne	r11, r24
	l.bf	.L182
	 l.nop

	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__unorddf2
	 l.nop

	l.sfne	r11, r24
	l.bf	.L183
	 l.nop

	l.movhi	r17, hi(-2147483648)
	l.and	r19, r17, r20
	l.and	r17, r17, r16
	l.sfeq	r19, r17
	l.bf	.L180
	 l.nop

	l.sfeq	r19, r24
	l.bf	.L184
	 l.nop

	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L179
	 l.nop

.L180:
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L187
	 l.nop

	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L179
	 l.nop

.L182:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L179
	 l.nop

.L183:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L179
	 l.nop

.L184:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
	l.j	.L179
	 l.nop

.L187:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L179:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	fminl, .-fminl
	.section	.rodata
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.text
	.align 4
	.global	l64a
	.type	l64a, @function
l64a:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, ha(s.0)
	l.addi	r17, r17, lo(s.0)
	l.j	.L189
	 l.nop

.L190:
	l.andi	r21, r3, 63
	l.movhi	r19, ha(digits)
	l.addi	r19, r19, lo(digits)
	l.add	r19, r19, r21
	l.lbs	r19, 0(r19)
	l.sb	0(r17), r19
	l.addi	r17, r17, 1
	l.ori	r19, r0, 6
	l.srl	r3, r3, r19
.L189:
	l.movhi	r19, hi(0)
	l.sfne	r3, r19
	l.bf	.L190
	 l.nop

	l.sb	0(r17), r0
	l.movhi	r11, ha(s.0)
	l.addi	r11, r11, lo(s.0)
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,4
	.align 4
	.global	srand
	.type	srand, @function
srand:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r21, hi(0)
	l.addi	r23, r3, -1
	l.movhi	r17, ha(seed)
	l.sw	lo(seed)(r17), r21
	l.addi	r17, r17, lo(seed)
	l.sw	4(r17), r23
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	srand, .-srand
	.align 4
	.global	rand
	.type	rand, @function
rand:
	l.addi	r1, r1, -60
	l.sw	16(r1), r14
	l.sw	20(r1), r16
	l.sw	24(r1), r18
	l.sw	28(r1), r20
	l.sw	32(r1), r22
	l.sw	36(r1), r24
	l.sw	40(r1), r26
	l.sw	44(r1), r28
	l.sw	48(r1), r30
	l.sw	52(r1), r2
	l.addi	r2, r1, 60
	l.sw	56(r1), r9
	l.movhi	r14, ha(seed)
	l.addi	r14, r14, lo(seed)
	l.movhi	r5, hi(1481703424)
	l.ori	r5, r5, 62509
	l.movhi	r6, hi(1284833280)
	l.ori	r6, r6, 32557
	l.lwz	r3, 0(r14)
	l.lwz	r4, 4(r14)
	l.jal	__muldi3
	 l.nop

	l.or	r20, r11, r11
	l.or	r16, r20, r20
	l.ori	r26, r0, 1
	l.add	r19, r12, r26
	l.sfltu	r19, r12
	l.ori	r21, r0, 1
	l.bf	.L193
	 l.nop

	l.movhi	r21, hi(0)
.L193:
	l.add	r17, r21, r16
	l.sw	-52(r2), r17
	l.sw	-48(r2), r19
	l.sw	0(r14), r17
	l.sw	4(r14), r19
	l.sw	-60(r2), r17
	l.sw	-56(r2), r19
	l.srl	r23, r17, r26
	l.or	r11, r23, r23
	l.lwz	r14, 16(r1)
	l.lwz	r16, 20(r1)
	l.lwz	r18, 24(r1)
	l.lwz	r20, 28(r1)
	l.lwz	r22, 32(r1)
	l.lwz	r24, 36(r1)
	l.lwz	r26, 40(r1)
	l.lwz	r28, 44(r1)
	l.lwz	r30, 48(r1)
	l.lwz	r2, 52(r1)
	l.lwz	r9, 56(r1)
	l.addi	r1, r1, 60
	l.jr	r9
	 l.nop

	.size	rand, .-rand
	.align 4
	.global	insque
	.type	insque, @function
insque:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L195
	 l.nop

	l.sw	4(r3), r0
	l.sw	0(r3), r0
	l.j	.L194
	 l.nop

.L195:
	l.lwz	r17, 0(r4)
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.sw	0(r4), r3
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L194
	 l.nop

	l.sw	4(r17), r3
.L194:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	insque, .-insque
	.align 4
	.global	remque
	.type	remque, @function
remque:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L198
	 l.nop

	l.lwz	r19, 4(r3)
	l.sw	4(r17), r19
.L198:
	l.lwz	r17, 4(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L197
	 l.nop

	l.lwz	r19, 0(r3)
	l.sw	0(r17), r19
.L197:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	remque, .-remque
	.align 4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	l.addi	r1, r1, -40
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r30
	l.sw	32(r1), r2
	l.addi	r2, r1, 40
	l.sw	36(r1), r9
	l.or	r24, r3, r3
	l.or	r16, r4, r4
	l.or	r26, r5, r5
	l.or	r18, r6, r6
	l.or	r30, r7, r7
	l.lwz	r22, 0(r5)
	l.or	r28, r4, r4
	l.movhi	r20, hi(0)
	l.j	.L201
	 l.nop

.L204:
	l.or	r4, r28, r28
	l.or	r3, r24, r24
	l.jalr	r30
	 l.nop

	l.add	r28, r28, r18
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L202
	 l.nop

	l.mul	r20, r20, r18
	l.add	r11, r16, r20
	l.j	.L203
	 l.nop

.L202:
	l.addi	r20, r20, 1
.L201:
	l.sfne	r20, r22
	l.bf	.L204
	 l.nop

	l.addi	r17, r22, 1
	l.sw	0(r26), r17
	l.mul	r22, r18, r22
	l.add	r3, r16, r22
	l.or	r5, r18, r18
	l.or	r4, r24, r24
	l.jal	memcpy
	 l.nop

.L203:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r30, 28(r1)
	l.lwz	r2, 32(r1)
	l.lwz	r9, 36(r1)
	l.addi	r1, r1, 40
	l.jr	r9
	 l.nop

	.size	lsearch, .-lsearch
	.align 4
	.global	lfind
	.type	lfind, @function
lfind:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r2
	l.addi	r2, r1, 36
	l.sw	32(r1), r9
	l.or	r26, r3, r3
	l.or	r16, r4, r4
	l.or	r20, r6, r6
	l.or	r24, r7, r7
	l.lwz	r28, 0(r5)
	l.or	r22, r4, r4
	l.movhi	r18, hi(0)
	l.j	.L206
	 l.nop

.L209:
	l.or	r4, r22, r22
	l.or	r3, r26, r26
	l.jalr	r24
	 l.nop

	l.add	r22, r22, r20
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L207
	 l.nop

	l.mul	r18, r18, r20
	l.add	r11, r16, r18
	l.j	.L208
	 l.nop

.L207:
	l.addi	r18, r18, 1
.L206:
	l.sfne	r18, r28
	l.bf	.L209
	 l.nop

	l.movhi	r11, hi(0)
.L208:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r2, 28(r1)
	l.lwz	r9, 32(r1)
	l.addi	r1, r1, 36
	l.jr	r9
	 l.nop

	.size	lfind, .-lfind
	.align 4
	.global	abs
	.type	abs, @function
abs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L211
	 l.nop

	l.sub	r11, r0, r3
.L211:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	abs, .-abs
	.align 4
	.global	atoi
	.type	atoi, @function
atoi:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.j	.L213
	 l.nop

.L214:
	l.addi	r16, r16, 1
.L213:
	l.lbs	r3, 0(r16)
	l.jal	isspace
	 l.nop

	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L214
	 l.nop

	l.lbs	r17, 0(r16)
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L220
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L221
	 l.nop

	l.ori	r19, r0, 1
	l.j	.L215
	 l.nop

.L220:
	l.movhi	r19, hi(0)
.L215:
	l.addi	r16, r16, 1
	l.j	.L216
	 l.nop

.L221:
	l.movhi	r19, hi(0)
.L216:
	l.movhi	r11, hi(0)
	l.j	.L217
	 l.nop

.L218:
	l.ori	r17, r0, 2
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r11, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r17, -1(r16)
	l.addi	r17, r17, -48
	l.sub	r11, r11, r17
.L217:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r17, r21
	l.bf	.L218
	 l.nop

	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L219
	 l.nop

	l.sub	r11, r0, r11
.L219:
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	atoi, .-atoi
	.align 4
	.global	atol
	.type	atol, @function
atol:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.j	.L224
	 l.nop

.L225:
	l.addi	r16, r16, 1
.L224:
	l.lbs	r3, 0(r16)
	l.jal	isspace
	 l.nop

	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L225
	 l.nop

	l.lbs	r17, 0(r16)
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L231
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L232
	 l.nop

	l.ori	r19, r0, 1
	l.j	.L226
	 l.nop

.L231:
	l.movhi	r19, hi(0)
.L226:
	l.addi	r16, r16, 1
	l.j	.L227
	 l.nop

.L232:
	l.movhi	r19, hi(0)
.L227:
	l.movhi	r11, hi(0)
	l.j	.L228
	 l.nop

.L229:
	l.ori	r17, r0, 2
	l.sll	r17, r11, r17
	l.add	r17, r17, r11
	l.add	r11, r17, r17
	l.addi	r16, r16, 1
	l.lbs	r17, -1(r16)
	l.addi	r17, r17, -48
	l.sub	r11, r11, r17
.L228:
	l.lbs	r17, 0(r16)
	l.addi	r17, r17, -48
	l.ori	r21, r0, 9
	l.sfleu	r17, r21
	l.bf	.L229
	 l.nop

	l.movhi	r17, hi(0)
	l.sfne	r19, r17
	l.bf	.L230
	 l.nop

	l.sub	r11, r0, r11
.L230:
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	atol, .-atol
	.align 4
	.global	atoll
	.type	atoll, @function
atoll:
	l.addi	r1, r1, -76
	l.sw	32(r1), r14
	l.sw	36(r1), r16
	l.sw	40(r1), r18
	l.sw	44(r1), r20
	l.sw	48(r1), r22
	l.sw	52(r1), r24
	l.sw	56(r1), r26
	l.sw	60(r1), r28
	l.sw	64(r1), r30
	l.sw	68(r1), r2
	l.addi	r2, r1, 76
	l.sw	72(r1), r9
	l.or	r14, r3, r3
	l.j	.L235
	 l.nop

.L236:
	l.addi	r14, r14, 1
.L235:
	l.lbs	r3, 0(r14)
	l.jal	isspace
	 l.nop

	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L236
	 l.nop

	l.lbs	r17, 0(r14)
	l.ori	r19, r0, 43
	l.sfeq	r17, r19
	l.bf	.L242
	 l.nop

	l.ori	r19, r0, 45
	l.sfne	r17, r19
	l.bf	.L243
	 l.nop

	l.ori	r25, r0, 1
	l.j	.L237
	 l.nop

.L242:
	l.movhi	r25, hi(0)
.L237:
	l.addi	r14, r14, 1
	l.j	.L238
	 l.nop

.L243:
	l.movhi	r25, hi(0)
.L238:
	l.movhi	r16, hi(0)
	l.movhi	r18, hi(0)
	l.j	.L239
	 l.nop

.L240:
	l.sw	-60(r2), r16
	l.sw	-56(r2), r18
	l.ori	r17, r0, 30
	l.srl	r17, r18, r17
	l.ori	r19, r0, 2
	l.sll	r20, r16, r19
	l.or	r20, r17, r20
	l.sll	r22, r18, r19
	l.sw	-60(r2), r20
	l.sw	-56(r2), r22
	l.add	r23, r22, r18
	l.sfltu	r23, r22
	l.ori	r17, r0, 1
	l.bf	.L246
	 l.nop

	l.movhi	r17, hi(0)
.L246:
	l.add	r21, r20, r16
	l.add	r21, r17, r21
	l.add	r31, r23, r23
	l.sfltu	r31, r23
	l.ori	r27, r0, 1
	l.bf	.L247
	 l.nop

	l.movhi	r27, hi(0)
.L247:
	l.add	r29, r21, r21
	l.add	r29, r27, r29
	l.sw	-68(r2), r29
	l.sw	-64(r2), r31
	l.addi	r14, r14, 1
	l.lbs	r21, -1(r14)
	l.addi	r21, r21, -48
	l.or	r26, r21, r21
	l.ori	r17, r0, 31
	l.sra	r24, r21, r17
	l.sub	r23, r31, r26
	l.sfgtu	r23, r31
	l.ori	r19, r0, 1
	l.bf	.L248
	 l.nop

	l.movhi	r19, hi(0)
.L248:
	l.sub	r21, r29, r24
	l.sub	r21, r21, r19
	l.or	r16, r21, r21
	l.or	r18, r23, r23
.L239:
	l.lbs	r17, 0(r14)
	l.addi	r17, r17, -48
	l.ori	r19, r0, 9
	l.sfleu	r17, r19
	l.bf	.L240
	 l.nop

	l.movhi	r21, hi(0)
	l.sfne	r25, r21
	l.bf	.L244
	 l.nop

	l.movhi	r28, hi(0)
	l.movhi	r30, hi(0)
	l.sub	r19, r30, r18
	l.sfne	r19, r21
	l.ori	r21, r0, 1
	l.bf	.L245
	 l.nop

	l.movhi	r21, hi(0)
.L245:
	l.sub	r17, r28, r16
	l.sub	r17, r17, r21
	l.sw	-52(r2), r17
	l.sw	-48(r2), r19
	l.j	.L241
	 l.nop

.L244:
	l.sw	-52(r2), r16
	l.sw	-48(r2), r18
.L241:
	l.lwz	r17, -52(r2)
	l.lwz	r19, -48(r2)
	l.sw	-76(r2), r17
	l.sw	-72(r2), r19
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r14, 32(r1)
	l.lwz	r16, 36(r1)
	l.lwz	r18, 40(r1)
	l.lwz	r20, 44(r1)
	l.lwz	r22, 48(r1)
	l.lwz	r24, 52(r1)
	l.lwz	r26, 56(r1)
	l.lwz	r28, 60(r1)
	l.lwz	r30, 64(r1)
	l.lwz	r2, 68(r1)
	l.lwz	r9, 72(r1)
	l.addi	r1, r1, 76
	l.jr	r9
	 l.nop

	.size	atoll, .-atoll
	.align 4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r2
	l.addi	r2, r1, 36
	l.sw	32(r1), r9
	l.or	r26, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r20, r6, r6
	l.or	r24, r7, r7
	l.j	.L250
	 l.nop

.L254:
	l.ori	r28, r0, 1
	l.srl	r18, r16, r28
	l.mul	r18, r18, r20
	l.add	r18, r22, r18
	l.or	r4, r18, r18
	l.or	r3, r26, r26
	l.jalr	r24
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L251
	 l.nop

	l.srl	r16, r16, r28
	l.j	.L250
	 l.nop

.L251:
	l.movhi	r17, hi(0)
	l.sfles	r11, r17
	l.bf	.L255
	 l.nop

	l.add	r22, r18, r20
	l.ori	r17, r0, 1
	l.srl	r17, r16, r17
	l.addi	r16, r16, -1
	l.sub	r16, r16, r17
.L250:
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bf	.L254
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L253
	 l.nop

.L255:
	l.or	r11, r18, r18
.L253:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r2, 28(r1)
	l.lwz	r9, 32(r1)
	l.addi	r1, r1, 36
	l.jr	r9
	 l.nop

	.size	bsearch, .-bsearch
	.align 4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	l.addi	r1, r1, -36
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r2
	l.addi	r2, r1, 36
	l.sw	32(r1), r9
	l.or	r28, r3, r3
	l.or	r22, r6, r6
	l.or	r26, r7, r7
	l.or	r24, r8, r8
	l.or	r18, r5, r5
	l.or	r20, r4, r4
	l.j	.L257
	 l.nop

.L260:
	l.ori	r17, r0, 1
	l.sra	r16, r18, r17
	l.mul	r16, r16, r22
	l.add	r16, r20, r16
	l.or	r5, r24, r24
	l.or	r4, r16, r16
	l.or	r3, r28, r28
	l.jalr	r26
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L261
	 l.nop

	l.sfles	r11, r17
	l.bf	.L259
	 l.nop

	l.add	r20, r16, r22
	l.addi	r18, r18, -1
.L259:
	l.ori	r17, r0, 1
	l.sra	r18, r18, r17
.L257:
	l.movhi	r17, hi(0)
	l.sfne	r18, r17
	l.bf	.L260
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L258
	 l.nop

.L261:
	l.or	r11, r16, r16
.L258:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r2, 28(r1)
	l.lwz	r9, 32(r1)
	l.addi	r1, r1, 36
	l.jr	r9
	 l.nop

	.size	bsearch_r, .-bsearch_r
	.align 4
	.global	div
	.type	div, @function
div:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	div, .-div
	.align 4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.movhi	r25, hi(0)
	l.sfges	r3, r25
	l.bf	.L264
	 l.nop

	l.movhi	r6, hi(0)
	l.movhi	r7, hi(0)
	l.sub	r23, r7, r4
	l.sfne	r23, r25
	l.ori	r27, r0, 1
	l.bf	.L266
	 l.nop

	l.movhi	r27, hi(0)
.L266:
	l.sub	r21, r6, r17
	l.sub	r21, r21, r27
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L264:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	imaxabs, .-imaxabs
	.align 4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	l.addi	r1, r1, -76
	l.sw	32(r1), r14
	l.sw	36(r1), r16
	l.sw	40(r1), r18
	l.sw	44(r1), r20
	l.sw	48(r1), r22
	l.sw	52(r1), r24
	l.sw	56(r1), r26
	l.sw	60(r1), r28
	l.sw	64(r1), r30
	l.sw	68(r1), r2
	l.addi	r2, r1, 76
	l.sw	72(r1), r9
	l.or	r14, r3, r3
	l.or	r23, r5, r5
	l.or	r20, r4, r4
	l.or	r22, r5, r5
	l.or	r24, r6, r6
	l.or	r26, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.or	r4, r23, r23
	l.jal	__divdi3
	 l.nop

	l.sw	-52(r2), r11
	l.sw	-48(r2), r12
	l.lwz	r17, -52(r2)
	l.lwz	r19, -48(r2)
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.sw	-68(r2), r17
	l.sw	-64(r2), r19
	l.or	r5, r24, r24
	l.or	r6, r26, r26
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__moddi3
	 l.nop

	l.sw	-60(r2), r11
	l.sw	-56(r2), r12
	l.lwz	r17, -60(r2)
	l.lwz	r19, -56(r2)
	l.or	r28, r17, r17
	l.sw	-76(r2), r17
	l.sw	-72(r2), r19
	l.sw	0(r14), r16
	l.sw	4(r14), r18
	l.sw	8(r14), r17
	l.sw	12(r14), r19
	l.or	r11, r14, r14
	l.lwz	r14, 32(r1)
	l.lwz	r16, 36(r1)
	l.lwz	r18, 40(r1)
	l.lwz	r20, 44(r1)
	l.lwz	r22, 48(r1)
	l.lwz	r24, 52(r1)
	l.lwz	r26, 56(r1)
	l.lwz	r28, 60(r1)
	l.lwz	r30, 64(r1)
	l.lwz	r2, 68(r1)
	l.lwz	r9, 72(r1)
	l.addi	r1, r1, 76
	l.jr	r9
	 l.nop

	.size	imaxdiv, .-imaxdiv
	.align 4
	.global	labs
	.type	labs, @function
labs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L269
	 l.nop

	l.sub	r11, r0, r3
.L269:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	labs, .-labs
	.align 4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.div	r17, r4, r5
	l.mul	r5, r17, r5
	l.sub	r4, r4, r5
	l.sw	0(r3), r17
	l.sw	4(r3), r4
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	ldiv, .-ldiv
	.align 4
	.global	llabs
	.type	llabs, @function
llabs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.movhi	r25, hi(0)
	l.sfges	r3, r25
	l.bf	.L272
	 l.nop

	l.movhi	r6, hi(0)
	l.movhi	r7, hi(0)
	l.sub	r23, r7, r4
	l.sfne	r23, r25
	l.ori	r27, r0, 1
	l.bf	.L274
	 l.nop

	l.movhi	r27, hi(0)
.L274:
	l.sub	r21, r6, r17
	l.sub	r21, r21, r27
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L272:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	llabs, .-llabs
	.align 4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	l.addi	r1, r1, -76
	l.sw	32(r1), r14
	l.sw	36(r1), r16
	l.sw	40(r1), r18
	l.sw	44(r1), r20
	l.sw	48(r1), r22
	l.sw	52(r1), r24
	l.sw	56(r1), r26
	l.sw	60(r1), r28
	l.sw	64(r1), r30
	l.sw	68(r1), r2
	l.addi	r2, r1, 76
	l.sw	72(r1), r9
	l.or	r14, r3, r3
	l.or	r23, r5, r5
	l.or	r20, r4, r4
	l.or	r22, r5, r5
	l.or	r24, r6, r6
	l.or	r26, r7, r7
	l.or	r5, r6, r6
	l.or	r6, r7, r7
	l.or	r3, r4, r4
	l.or	r4, r23, r23
	l.jal	__divdi3
	 l.nop

	l.sw	-52(r2), r11
	l.sw	-48(r2), r12
	l.lwz	r17, -52(r2)
	l.lwz	r19, -48(r2)
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.sw	-68(r2), r17
	l.sw	-64(r2), r19
	l.or	r5, r24, r24
	l.or	r6, r26, r26
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__moddi3
	 l.nop

	l.sw	-60(r2), r11
	l.sw	-56(r2), r12
	l.lwz	r17, -60(r2)
	l.lwz	r19, -56(r2)
	l.or	r28, r17, r17
	l.sw	-76(r2), r17
	l.sw	-72(r2), r19
	l.sw	0(r14), r16
	l.sw	4(r14), r18
	l.sw	8(r14), r17
	l.sw	12(r14), r19
	l.or	r11, r14, r14
	l.lwz	r14, 32(r1)
	l.lwz	r16, 36(r1)
	l.lwz	r18, 40(r1)
	l.lwz	r20, 44(r1)
	l.lwz	r22, 48(r1)
	l.lwz	r24, 52(r1)
	l.lwz	r26, 56(r1)
	l.lwz	r28, 60(r1)
	l.lwz	r30, 64(r1)
	l.lwz	r2, 68(r1)
	l.lwz	r9, 72(r1)
	l.addi	r1, r1, 76
	l.jr	r9
	 l.nop

	.size	lldiv, .-lldiv
	.align 4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L277
	 l.nop

.L279:
	l.addi	r3, r3, 4
.L277:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L278
	 l.nop

	l.sfne	r4, r17
	l.bf	.L279
	 l.nop

.L278:
	l.lwz	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L281
	 l.nop

	l.or	r11, r3, r3
	l.j	.L280
	 l.nop

.L281:
	l.movhi	r11, hi(0)
.L280:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wcschr, .-wcschr
	.align 4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L283
	 l.nop

.L285:
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
.L283:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L284
	 l.nop

	l.or	r17, r19, r19
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L284
	 l.nop

	l.lwz	r17, 0(r4)
	l.sfne	r17, r19
	l.bf	.L285
	 l.nop

.L284:
	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L287
	 l.nop

	l.sfgtu	r19, r17
	l.ori	r11, r0, 1
	l.bf	.L286
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L286
	 l.nop

.L287:
	l.xori	r11, r0, -1
.L286:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wcscmp, .-wcscmp
	.align 4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.or	r17, r3, r3
.L290:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L290
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wcscpy, .-wcscpy
	.align 4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.j	.L292
	 l.nop

.L293:
	l.addi	r11, r11, 4
.L292:
	l.lwz	r17, 0(r11)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L293
	 l.nop

	l.sub	r11, r11, r3
	l.ori	r17, r0, 2
	l.sra	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wcslen, .-wcslen
	.align 4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L295
	 l.nop

.L297:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
.L295:
	l.movhi	r21, hi(0)
	l.sfeq	r5, r21
	l.bf	.L296
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfne	r19, r17
	l.bf	.L296
	 l.nop

	l.sfeq	r19, r21
	l.bf	.L296
	 l.nop

	l.lwz	r17, 0(r4)
	l.sfne	r17, r21
	l.bf	.L297
	 l.nop

.L296:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L299
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L300
	 l.nop

	l.sfgtu	r19, r17
	l.ori	r11, r0, 1
	l.bf	.L298
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L298
	 l.nop

.L299:
	l.movhi	r11, hi(0)
	l.j	.L298
	 l.nop

.L300:
	l.xori	r11, r0, -1
.L298:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wcsncmp, .-wcsncmp
	.align 4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L303
	 l.nop

.L305:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
.L303:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L304
	 l.nop

	l.lwz	r17, 0(r3)
	l.sfne	r4, r17
	l.bf	.L305
	 l.nop

.L304:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L307
	 l.nop

	l.or	r11, r3, r3
	l.j	.L306
	 l.nop

.L307:
	l.movhi	r11, hi(0)
.L306:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wmemchr, .-wmemchr
	.align 4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L309
	 l.nop

.L311:
	l.addi	r5, r5, -1
	l.addi	r3, r3, 4
	l.addi	r4, r4, 4
.L309:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L310
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfeq	r19, r17
	l.bf	.L311
	 l.nop

.L310:
	l.movhi	r17, hi(0)
	l.sfeq	r5, r17
	l.bf	.L313
	 l.nop

	l.lwz	r19, 0(r3)
	l.lwz	r17, 0(r4)
	l.sfltu	r19, r17
	l.bf	.L314
	 l.nop

	l.sfgtu	r19, r17
	l.ori	r11, r0, 1
	l.bf	.L312
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L312
	 l.nop

.L313:
	l.movhi	r11, hi(0)
	l.j	.L312
	 l.nop

.L314:
	l.xori	r11, r0, -1
.L312:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wmemcmp, .-wmemcmp
	.align 4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.or	r17, r3, r3
	l.j	.L317
	 l.nop

.L318:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
.L317:
	l.addi	r5, r5, -1
	l.xori	r19, r0, -1
	l.sfne	r5, r19
	l.bf	.L318
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wmemcpy, .-wmemcpy
	.align 4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.sfeq	r3, r4
	l.bf	.L320
	 l.nop

	l.sub	r17, r3, r4
	l.ori	r21, r0, 2
	l.sll	r19, r5, r21
	l.sfgeu	r17, r19
	l.bf	.L325
	 l.nop

	l.or	r5, r19, r19
	l.j	.L322
	 l.nop

.L323:
	l.add	r17, r4, r5
	l.lwz	r19, 0(r17)
	l.add	r17, r11, r5
	l.sw	0(r17), r19
.L322:
	l.addi	r5, r5, -4
	l.xori	r17, r0, -4
	l.sfne	r5, r17
	l.bf	.L323
	 l.nop

	l.j	.L320
	 l.nop

.L324:
	l.addi	r4, r4, 4
	l.addi	r17, r17, 4
	l.lwz	r19, -4(r4)
	l.sw	-4(r17), r19
	l.j	.L321
	 l.nop

.L325:
	l.or	r17, r3, r3
.L321:
	l.addi	r5, r5, -1
	l.xori	r19, r0, -1
	l.sfne	r5, r19
	l.bf	.L324
	 l.nop

.L320:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wmemmove, .-wmemmove
	.align 4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.or	r17, r3, r3
	l.j	.L327
	 l.nop

.L328:
	l.addi	r17, r17, 4
	l.sw	-4(r17), r4
.L327:
	l.addi	r5, r5, -1
	l.xori	r19, r0, -1
	l.sfne	r5, r19
	l.bf	.L328
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	wmemset, .-wmemset
	.align 4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sfgeu	r3, r4
	l.bf	.L330
	 l.nop

	l.add	r17, r3, r5
	l.add	r4, r4, r5
	l.j	.L331
	 l.nop

.L332:
	l.addi	r17, r17, -1
	l.addi	r4, r4, -1
	l.lbs	r19, 0(r17)
	l.sb	0(r4), r19
.L331:
	l.sfne	r17, r3
	l.bf	.L332
	 l.nop

	l.j	.L329
	 l.nop

.L330:
	l.sfeq	r3, r4
	l.bf	.L329
	 l.nop

	l.add	r5, r4, r5
	l.or	r17, r3, r3
	l.j	.L334
	 l.nop

.L335:
	l.addi	r17, r17, 1
	l.addi	r4, r4, 1
	l.lbs	r19, -1(r17)
	l.sb	-1(r4), r19
.L334:
	l.sfne	r4, r5
	l.bf	.L335
	 l.nop

.L329:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	bcopy, .-bcopy
	.align 4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r21, r3, r3
	l.or	r23, r4, r4
	l.addi	r19, r5, -32
	l.sll	r15, r4, r19
	l.ori	r17, r0, 1
	l.srl	r13, r4, r17
	l.ori	r17, r0, 31
	l.sub	r25, r17, r5
	l.srl	r13, r13, r25
	l.sll	r25, r3, r5
	l.or	r25, r13, r25
	l.sll	r27, r4, r5
	l.movhi	r13, hi(0)
	l.sfges	r19, r13
	l.bnf	.L337
	 l.nop

	l.or	r25, r15, r15
.L337:
	l.movhi	r13, hi(0)
	l.sfges	r19, r13
	l.bnf	.L338
	 l.nop

	l.movhi	r27, hi(0)
.L338:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.addi	r13, r5, -32
	l.srl	r12, r21, r13
	l.ori	r19, r0, 1
	l.sll	r15, r21, r19
	l.sub	r17, r17, r5
	l.sll	r15, r15, r17
	l.srl	r19, r23, r5
	l.or	r19, r15, r19
	l.srl	r17, r21, r5
	l.movhi	r21, hi(0)
	l.sfges	r13, r21
	l.bnf	.L339
	 l.nop

	l.or	r19, r12, r12
.L339:
	l.movhi	r21, hi(0)
	l.sfges	r13, r21
	l.bnf	.L340
	 l.nop

	l.movhi	r17, hi(0)
.L340:
	l.or	r21, r17, r25
	l.or	r23, r19, r27
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl64, .-rotl64
	.align 4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r21, r3, r3
	l.or	r23, r4, r4
	l.addi	r19, r5, -32
	l.srl	r15, r3, r19
	l.ori	r17, r0, 1
	l.sll	r13, r3, r17
	l.ori	r17, r0, 31
	l.sub	r25, r17, r5
	l.sll	r13, r13, r25
	l.srl	r27, r4, r5
	l.or	r27, r13, r27
	l.srl	r25, r3, r5
	l.movhi	r13, hi(0)
	l.sfges	r19, r13
	l.bnf	.L342
	 l.nop

	l.or	r27, r15, r15
.L342:
	l.movhi	r13, hi(0)
	l.sfges	r19, r13
	l.bnf	.L343
	 l.nop

	l.movhi	r25, hi(0)
.L343:
	l.sub	r5, r0, r5
	l.andi	r5, r5, 63
	l.addi	r13, r5, -32
	l.sll	r12, r23, r13
	l.ori	r19, r0, 1
	l.srl	r15, r23, r19
	l.sub	r17, r17, r5
	l.srl	r15, r15, r17
	l.sll	r17, r21, r5
	l.or	r17, r15, r17
	l.sll	r19, r23, r5
	l.movhi	r21, hi(0)
	l.sfges	r13, r21
	l.bnf	.L344
	 l.nop

	l.or	r17, r12, r12
.L344:
	l.movhi	r21, hi(0)
	l.sfges	r13, r21
	l.bnf	.L345
	 l.nop

	l.movhi	r19, hi(0)
.L345:
	l.or	r21, r17, r25
	l.or	r23, r19, r27
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr64, .-rotr64
	.align 4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sll	r17, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.srl	r11, r3, r4
	l.or	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl32, .-rotl32
	.align 4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.srl	r17, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.sll	r11, r3, r4
	l.or	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr32, .-rotr32
	.align 4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sll	r17, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.srl	r11, r3, r4
	l.or	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl_sz, .-rotl_sz
	.align 4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.srl	r17, r3, r4
	l.sub	r4, r0, r4
	l.andi	r4, r4, 31
	l.sll	r11, r3, r4
	l.or	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr_sz, .-rotr_sz
	.align 4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.sll	r19, r3, r4
	l.ori	r17, r0, 16
	l.sub	r17, r17, r4
	l.srl	r11, r3, r17
	l.or	r11, r11, r19
	l.andi	r11, r11, 0xffff
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl16, .-rotl16
	.align 4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.srl	r19, r3, r4
	l.ori	r17, r0, 16
	l.sub	r17, r17, r4
	l.sll	r11, r3, r17
	l.or	r11, r11, r19
	l.andi	r11, r11, 0xffff
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr16, .-rotr16
	.align 4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xff
	l.sll	r19, r3, r4
	l.ori	r17, r0, 8
	l.sub	r17, r17, r4
	l.srl	r11, r3, r17
	l.or	r11, r11, r19
	l.andi	r11, r11, 0xff
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotl8, .-rotl8
	.align 4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xff
	l.srl	r19, r3, r4
	l.ori	r17, r0, 8
	l.sub	r17, r17, r4
	l.sll	r11, r3, r17
	l.or	r11, r11, r19
	l.andi	r11, r11, 0xff
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	rotr8, .-rotr8
	.align 4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.ori	r17, r0, 8
	l.srl	r11, r3, r17
	l.andi	r3, r3, 0xff
	l.sll	r3, r3, r17
	l.or	r11, r11, r3
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	bswap_16, .-bswap_16
	.align 4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r19, r0, 24
	l.srl	r17, r3, r19
	l.ori	r21, r0, 8
	l.srl	r11, r3, r21
	l.andi	r11, r11, 65280
	l.or	r11, r11, r17
	l.andi	r17, r3, 65280
	l.sll	r17, r17, r21
	l.or	r11, r11, r17
	l.sll	r3, r3, r19
	l.or	r11, r11, r3
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	bswap_32, .-bswap_32
	.align 4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r11, hi(-16777216)
	l.and	r25, r3, r11
	l.ori	r19, r0, 24
	l.srl	r23, r25, r19
	l.movhi	r15, hi(16711680)
	l.and	r29, r3, r15
	l.ori	r17, r0, 8
	l.srl	r27, r29, r17
	l.movhi	r8, hi(0)
	l.or	r9, r27, r23
	l.andi	r25, r3, 65280
	l.sll	r23, r25, r17
	l.srl	r21, r25, r19
	l.or	r29, r8, r21
	l.or	r31, r9, r23
	l.andi	r25, r3, 255
	l.sll	r23, r25, r19
	l.or	r8, r17, r17
	l.srl	r21, r25, r17
	l.or	r25, r29, r21
	l.or	r27, r31, r23
	l.movhi	r29, hi(0)
	l.and	r31, r4, r11
	l.srl	r17, r31, r19
	l.sll	r21, r29, r8
	l.or	r21, r17, r21
	l.sll	r23, r31, r8
	l.or	r29, r25, r21
	l.or	r31, r27, r23
	l.movhi	r25, hi(0)
	l.and	r27, r4, r15
	l.srl	r17, r27, r8
	l.sll	r21, r25, r19
	l.or	r21, r17, r21
	l.sll	r23, r27, r19
	l.or	r25, r29, r21
	l.or	r27, r31, r23
	l.andi	r23, r4, 65280
	l.sll	r29, r23, r8
	l.or	r21, r25, r29
	l.or	r23, r27, r27
	l.andi	r31, r4, 255
	l.sll	r25, r31, r19
	l.or	r17, r21, r25
	l.or	r11, r17, r17
	l.or	r12, r23, r23
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	bswap_64, .-bswap_64
	.align 4
	.global	ffs
	.type	ffs, @function
ffs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r11, hi(0)
	l.j	.L358
	 l.nop

.L361:
	l.srl	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L359
	 l.nop

	l.addi	r11, r11, 1
	l.j	.L360
	 l.nop

.L359:
	l.addi	r11, r11, 1
.L358:
	l.ori	r17, r0, 32
	l.sfne	r11, r17
	l.bf	.L361
	 l.nop

	l.movhi	r11, hi(0)
.L360:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	ffs, .-ffs
	.align 4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L366
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L364
	 l.nop

.L365:
	l.ori	r17, r0, 1
	l.sra	r3, r3, r17
	l.add	r11, r11, r17
.L364:
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L365
	 l.nop

	l.j	.L363
	 l.nop

.L366:
	l.movhi	r11, hi(0)
.L363:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata
	.align 4
.LC2:
	.long	-8388609
	.align 4
.LC3:
	.long	2139095039
	.section	.text
	.align 4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r2
	l.addi	r2, r1, 16
	l.sw	12(r1), r9
	l.or	r16, r3, r3
	l.movhi	r17, ha(.LC2)
	l.lwz	r4, lo(.LC2)(r17)
	l.jal	__ltsf2
	 l.nop

	l.movhi	r18, hi(0)
	l.sflts	r11, r18
	l.bf	.L370
	 l.nop

	l.movhi	r17, ha(.LC3)
	l.lwz	r4, lo(.LC3)(r17)
	l.or	r3, r16, r16
	l.jal	__gtsf2
	 l.nop

	l.sfgts	r11, r18
	l.bnf	.L373
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L368
	 l.nop

.L370:
	l.ori	r11, r0, 1
	l.j	.L368
	 l.nop

.L373:
	l.movhi	r11, hi(0)
.L368:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r2, 8(r1)
	l.lwz	r9, 12(r1)
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	gl_isinff, .-gl_isinff
	.section	.rodata
	.align 4
.LC4:
	.long	-1048577
	.long	-1
	.align 4
.LC5:
	.long	2146435071
	.long	-1
	.section	.text
	.align 4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.movhi	r21, ha(.LC4)
	l.addi	r21, r21, lo(.LC4)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.jal	__ltdf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L377
	 l.nop

	l.movhi	r21, ha(.LC5)
	l.addi	r21, r21, lo(.LC5)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gtdf2
	 l.nop

	l.sfgts	r11, r20
	l.bnf	.L380
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L375
	 l.nop

.L377:
	l.ori	r11, r0, 1
	l.j	.L375
	 l.nop

.L380:
	l.movhi	r11, hi(0)
.L375:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata
	.align 4
.LC6:
	.long	-1048577
	.long	-1
	.align 4
.LC7:
	.long	2146435071
	.long	-1
	.section	.text
	.align 4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.movhi	r21, ha(.LC6)
	l.addi	r21, r21, lo(.LC6)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.jal	__ltdf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L384
	 l.nop

	l.movhi	r21, ha(.LC7)
	l.addi	r21, r21, lo(.LC7)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gtdf2
	 l.nop

	l.sfgts	r11, r20
	l.bnf	.L387
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L382
	 l.nop

.L384:
	l.ori	r11, r0, 1
	l.j	.L382
	 l.nop

.L387:
	l.movhi	r11, hi(0)
.L382:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	gl_isinfl, .-gl_isinfl
	.align 4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.or	r3, r4, r4
	l.jal	__floatsidf
	 l.nop

	l.or	r17, r11, r11
	l.sw	0(r16), r17
	l.sw	4(r16), r12
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata
	.align 4
.LC8:
	.long	1056964608
	.align 4
.LC9:
	.long	1073741824
	.section	.text
	.align 4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r20, r4, r4
	l.or	r4, r3, r3
	l.jal	__unordsf2
	 l.nop

	l.movhi	r18, hi(0)
	l.sfne	r11, r18
	l.bf	.L390
	 l.nop

	l.or	r4, r16, r16
	l.or	r3, r16, r16
	l.jal	__addsf3
	 l.nop

	l.or	r4, r11, r11
	l.or	r3, r16, r16
	l.jal	__nesf2
	 l.nop

	l.sfne	r11, r18
	l.bnf	.L390
	 l.nop

	l.sfges	r20, r18
	l.bf	.L395
	 l.nop

	l.movhi	r17, ha(.LC8)
	l.lwz	r18, lo(.LC8)(r17)
	l.j	.L394
	 l.nop

.L395:
	l.movhi	r17, ha(.LC9)
	l.lwz	r18, lo(.LC9)(r17)
.L394:
	l.andi	r17, r20, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L393
	 l.nop

	l.or	r4, r18, r18
	l.or	r3, r16, r16
	l.jal	__mulsf3
	 l.nop

	l.or	r16, r11, r11
.L393:
	l.ori	r17, r0, 31
	l.srl	r17, r20, r17
	l.add	r17, r17, r20
	l.ori	r19, r0, 1
	l.sra	r20, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r20, r17
	l.bf	.L390
	 l.nop

	l.or	r4, r18, r18
	l.or	r3, r18, r18
	l.jal	__mulsf3
	 l.nop

	l.or	r18, r11, r11
	l.j	.L394
	 l.nop

.L390:
	l.or	r11, r16, r16
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	ldexpf, .-ldexpf
	.section	.rodata
	.align 4
.LC10:
	.long	1071644672
	.long	0
	.align 4
.LC11:
	.long	1073741824
	.long	0
	.section	.text
	.align 4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r24, r5, r5
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.jal	__unorddf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L398
	 l.nop

	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__adddf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r5, r17, r17
	l.or	r6, r12, r12
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__nedf2
	 l.nop

	l.sfne	r11, r20
	l.bnf	.L398
	 l.nop

	l.sfges	r24, r20
	l.bf	.L403
	 l.nop

	l.movhi	r17, ha(.LC10)
	l.addi	r17, r17, lo(.LC10)
	l.lwz	r20, 0(r17)
	l.lwz	r22, 4(r17)
	l.j	.L402
	 l.nop

.L403:
	l.movhi	r17, ha(.LC11)
	l.addi	r17, r17, lo(.LC11)
	l.lwz	r20, 0(r17)
	l.lwz	r22, 4(r17)
.L402:
	l.andi	r17, r24, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L401
	 l.nop

	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L401:
	l.ori	r17, r0, 31
	l.srl	r17, r24, r17
	l.add	r17, r17, r24
	l.ori	r19, r0, 1
	l.sra	r24, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r24, r17
	l.bf	.L398
	 l.nop

	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r20, r17, r17
	l.or	r22, r12, r12
	l.j	.L402
	 l.nop

.L398:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	ldexp, .-ldexp
	.section	.rodata
	.align 4
.LC12:
	.long	1071644672
	.long	0
	.align 4
.LC13:
	.long	1073741824
	.long	0
	.section	.text
	.align 4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r24, r5, r5
	l.or	r5, r3, r3
	l.or	r6, r4, r4
	l.jal	__unorddf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sfne	r11, r20
	l.bf	.L406
	 l.nop

	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__adddf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r5, r17, r17
	l.or	r6, r12, r12
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__nedf2
	 l.nop

	l.sfne	r11, r20
	l.bnf	.L406
	 l.nop

	l.sfges	r24, r20
	l.bf	.L411
	 l.nop

	l.movhi	r17, ha(.LC12)
	l.addi	r17, r17, lo(.LC12)
	l.lwz	r20, 0(r17)
	l.lwz	r22, 4(r17)
	l.j	.L410
	 l.nop

.L411:
	l.movhi	r17, ha(.LC13)
	l.addi	r17, r17, lo(.LC13)
	l.lwz	r20, 0(r17)
	l.lwz	r22, 4(r17)
.L410:
	l.andi	r17, r24, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L409
	 l.nop

	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L409:
	l.ori	r17, r0, 31
	l.srl	r17, r24, r17
	l.add	r17, r17, r24
	l.ori	r19, r0, 1
	l.sra	r24, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r24, r17
	l.bf	.L406
	 l.nop

	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r20, r17, r17
	l.or	r22, r12, r12
	l.j	.L410
	 l.nop

.L406:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	ldexpl, .-ldexpl
	.align 4
	.global	memxor
	.type	memxor, @function
memxor:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r11, r3, r3
	l.add	r5, r3, r5
	l.or	r17, r3, r3
	l.j	.L414
	 l.nop

.L415:
	l.addi	r4, r4, 1
	l.lbs	r21, -1(r4)
	l.addi	r17, r17, 1
	l.lbs	r19, -1(r17)
	l.xor	r19, r19, r21
	l.sb	-1(r17), r19
.L414:
	l.sfne	r17, r5
	l.bf	.L415
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	memxor, .-memxor
	.align 4
	.global	strncat
	.type	strncat, @function
strncat:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r20, r3, r3
	l.or	r18, r4, r4
	l.or	r16, r5, r5
	l.jal	strlen
	 l.nop

	l.add	r11, r20, r11
	l.j	.L417
	 l.nop

.L419:
	l.addi	r18, r18, 1
	l.addi	r11, r11, 1
	l.addi	r16, r16, -1
.L417:
	l.movhi	r19, hi(0)
	l.sfeq	r16, r19
	l.bf	.L418
	 l.nop

	l.lbs	r17, 0(r18)
	l.sb	0(r11), r17
	l.sfne	r17, r19
	l.bf	.L419
	 l.nop

.L418:
	l.movhi	r17, hi(0)
	l.sfne	r16, r17
	l.bf	.L420
	 l.nop

	l.sb	0(r11), r0
.L420:
	l.or	r11, r20, r20
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	strncat, .-strncat
	.align 4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r11, hi(0)
	l.j	.L422
	 l.nop

.L424:
	l.addi	r11, r11, 1
.L422:
	l.sfeq	r11, r4
	l.bf	.L423
	 l.nop

	l.add	r17, r3, r11
	l.lbs	r17, 0(r17)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L424
	 l.nop

.L423:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strnlen, .-strnlen
	.align 4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.j	.L426
	 l.nop

.L428:
	l.addi	r17, r17, 1
	l.lbs	r21, -1(r17)
	l.lbs	r19, 0(r3)
	l.sfeq	r21, r19
	l.bf	.L430
	 l.nop

	l.j	.L429
	 l.nop

.L431:
	l.or	r17, r4, r4
.L429:
	l.lbs	r19, 0(r17)
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.bf	.L428
	 l.nop

	l.addi	r3, r3, 1
.L426:
	l.lbs	r17, 0(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L431
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L427
	 l.nop

.L430:
	l.or	r11, r3, r3
.L427:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strpbrk, .-strpbrk
	.align 4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r11, hi(0)
.L434:
	l.lbs	r17, 0(r3)
	l.sfeq	r4, r17
	l.bnf	.L433
	 l.nop

	l.or	r11, r3, r3
.L433:
	l.addi	r3, r3, 1
	l.lbs	r17, -1(r3)
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L434
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	strrchr, .-strrchr
	.align 4
	.global	strstr
	.type	strstr, @function
strstr:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r2
	l.addi	r2, r1, 24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r3, r4, r4
	l.jal	strlen
	 l.nop

	l.or	r20, r11, r11
	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L440
	 l.nop

	l.lbs	r22, 0(r18)
	l.j	.L438
	 l.nop

.L439:
	l.or	r5, r20, r20
	l.or	r4, r18, r18
	l.or	r3, r16, r16
	l.jal	strncmp
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L441
	 l.nop

	l.addi	r16, r16, 1
.L438:
	l.or	r4, r22, r22
	l.or	r3, r16, r16
	l.jal	strchr
	 l.nop

	l.or	r16, r11, r11
	l.movhi	r17, hi(0)
	l.sfne	r11, r17
	l.bf	.L439
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L437
	 l.nop

.L440:
	l.or	r11, r16, r16
	l.j	.L437
	 l.nop

.L441:
	l.or	r11, r16, r16
.L437:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r2, 16(r1)
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	strstr, .-strstr
	.section	.rodata
	.align 4
.LC14:
	.long	0
	.long	0
	.section	.text
	.align 4
	.global	copysign
	.type	copysign, @function
copysign:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.jal	__ltdf2
	 l.nop

	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bnf	.L443
	 l.nop

	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gtdf2
	 l.nop

	l.sfgts	r11, r24
	l.bf	.L445
	 l.nop

.L443:
	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__gtdf2
	 l.nop

	l.movhi	r24, hi(0)
	l.sfgts	r11, r24
	l.bnf	.L453
	 l.nop

	l.movhi	r17, ha(.LC14)
	l.lwz	r5, lo(.LC14)(r17)
	l.addi	r17, r17, lo(.LC14)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	 l.nop

	l.sflts	r11, r24
	l.bnf	.L454
	 l.nop

.L445:
	l.movhi	r21, ha(.LC14)
	l.addi	r21, r21, lo(.LC14)
	l.movhi	r21, hi(-2147483648)
	l.xor	r17, r20, r21
	l.or	r19, r22, r22
	l.j	.L446
	 l.nop

.L453:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
	l.j	.L446
	 l.nop

.L454:
	l.or	r17, r20, r20
	l.or	r19, r22, r22
.L446:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	copysign, .-copysign
	.align 4
	.global	memmem
	.type	memmem, @function
memmem:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r2
	l.addi	r2, r1, 24
	l.sw	20(r1), r9
	l.or	r16, r3, r3
	l.or	r20, r5, r5
	l.or	r18, r6, r6
	l.sub	r22, r4, r6
	l.add	r22, r3, r22
	l.movhi	r19, hi(0)
	l.sfeq	r6, r19
	l.bf	.L460
	 l.nop

	l.sfltu	r4, r6
	l.ori	r17, r0, 1
	l.bf	.L463
	 l.nop

	l.movhi	r17, hi(0)
.L463:
	l.sfne	r17, r19
	l.bf	.L461
	 l.nop

	l.j	.L457
	 l.nop

.L459:
	l.lbs	r19, 0(r16)
	l.lbs	r17, 0(r20)
	l.sfne	r19, r17
	l.bf	.L458
	 l.nop

	l.addi	r3, r16, 1
	l.addi	r5, r18, -1
	l.addi	r4, r20, 1
	l.jal	memcmp
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r11, r17
	l.bf	.L462
	 l.nop

.L458:
	l.addi	r16, r16, 1
.L457:
	l.sfleu	r16, r22
	l.bf	.L459
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L456
	 l.nop

.L460:
	l.or	r11, r3, r3
	l.j	.L456
	 l.nop

.L461:
	l.movhi	r11, hi(0)
	l.j	.L456
	 l.nop

.L462:
	l.or	r11, r16, r16
.L456:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r2, 16(r1)
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	memmem, .-memmem
	.align 4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.or	r16, r5, r5
	l.jal	memcpy
	 l.nop

	l.add	r11, r11, r16
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	mempcpy, .-mempcpy
	.section	.rodata
	.align 4
.LC15:
	.long	0
	.long	0
	.align 4
.LC16:
	.long	1072693248
	.long	0
	.align 4
.LC17:
	.long	1071644672
	.long	0
	.section	.text
	.align 4
	.global	frexp
	.type	frexp, @function
frexp:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.or	r22, r5, r5
	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bnf	.L482
	 l.nop

	l.movhi	r21, ha(.LC15)
	l.addi	r21, r21, lo(.LC15)
	l.movhi	r21, hi(-2147483648)
	l.xor	r17, r16, r21
	l.or	r19, r18, r18
	l.or	r16, r17, r17
	l.or	r18, r19, r19
	l.ori	r24, r0, 1
	l.j	.L466
	 l.nop

.L482:
	l.movhi	r24, hi(0)
.L466:
	l.movhi	r21, ha(.LC16)
	l.addi	r21, r21, lo(.LC16)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gedf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L477
	 l.nop

	l.j	.L483
	 l.nop

.L470:
	l.addi	r20, r20, 1
	l.movhi	r17, ha(.LC17)
	l.lwz	r5, lo(.LC17)(r17)
	l.addi	r17, r17, lo(.LC17)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
	l.j	.L468
	 l.nop

.L477:
	l.movhi	r20, hi(0)
.L468:
	l.movhi	r21, ha(.LC16)
	l.addi	r21, r21, lo(.LC16)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__gedf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bf	.L470
	 l.nop

	l.j	.L471
	 l.nop

.L483:
	l.movhi	r21, ha(.LC17)
	l.addi	r21, r21, lo(.LC17)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bnf	.L484
	 l.nop

	l.movhi	r17, ha(.LC15)
	l.lwz	r5, lo(.LC15)(r17)
	l.addi	r17, r17, lo(.LC15)
	l.lwz	r6, 4(r17)
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__nedf2
	 l.nop

	l.sfne	r11, r20
	l.bf	.L479
	 l.nop

	l.j	.L471
	 l.nop

.L474:
	l.addi	r20, r20, -1
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__adddf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
	l.j	.L473
	 l.nop

.L479:
	l.movhi	r20, hi(0)
.L473:
	l.movhi	r21, ha(.LC17)
	l.addi	r21, r21, lo(.LC17)
	l.lwz	r17, 0(r21)
	l.lwz	r19, 4(r21)
	l.or	r5, r17, r17
	l.or	r6, r19, r19
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__ltdf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sflts	r11, r17
	l.bf	.L474
	 l.nop

	l.j	.L471
	 l.nop

.L484:
	l.movhi	r20, hi(0)
.L471:
	l.sw	0(r22), r20
	l.movhi	r17, hi(0)
	l.sfeq	r24, r17
	l.bf	.L475
	 l.nop

	l.movhi	r21, ha(.LC15)
	l.addi	r21, r21, lo(.LC15)
	l.movhi	r21, hi(-2147483648)
	l.xor	r17, r16, r21
	l.or	r19, r18, r18
	l.or	r16, r17, r17
	l.or	r18, r19, r19
.L475:
	l.or	r11, r16, r16
	l.or	r12, r18, r18
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	frexp, .-frexp
	.align 4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	l.addi	r1, r1, -20
	l.sw	0(r1), r14
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r21, r5, r5
	l.or	r23, r6, r6
	l.or	r25, r3, r3
	l.or	r27, r4, r4
	l.movhi	r17, hi(0)
	l.movhi	r19, hi(0)
	l.j	.L486
	 l.nop

.L489:
	l.movhi	r8, hi(0)
	l.andi	r9, r27, 1
	l.or	r29, r8, r9
	l.movhi	r31, hi(0)
	l.sfeq	r29, r31
	l.bf	.L487
	 l.nop

	l.add	r31, r19, r23
	l.sfltu	r31, r19
	l.ori	r11, r0, 1
	l.bf	.L491
	 l.nop

	l.movhi	r11, hi(0)
.L491:
	l.add	r29, r17, r21
	l.add	r29, r11, r29
	l.or	r17, r29, r29
	l.or	r19, r31, r31
.L487:
	l.add	r31, r23, r23
	l.sfltu	r31, r23
	l.ori	r11, r0, 1
	l.bf	.L490
	 l.nop

	l.movhi	r11, hi(0)
.L490:
	l.add	r29, r21, r21
	l.add	r29, r11, r29
	l.or	r21, r29, r29
	l.or	r23, r31, r31
	l.ori	r29, r0, 31
	l.sll	r29, r25, r29
	l.ori	r31, r0, 1
	l.srl	r13, r27, r31
	l.or	r13, r29, r13
	l.srl	r12, r25, r31
	l.or	r25, r12, r12
	l.or	r27, r13, r13
.L486:
	l.or	r29, r25, r27
	l.movhi	r31, hi(0)
	l.sfne	r29, r31
	l.bf	.L489
	 l.nop

	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r14, 0(r1)
	l.lwz	r16, 4(r1)
	l.lwz	r18, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__muldi3, .-__muldi3
	.align 4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r19, r0, 33
	l.ori	r17, r0, 1
	l.j	.L493
	 l.nop

.L495:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L493:
	l.sfgeu	r4, r3
	l.bf	.L500
	 l.nop

	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L501
	 l.nop

	l.sfges	r4, r21
	l.bf	.L495
	 l.nop

	l.movhi	r19, hi(0)
	l.j	.L497
	 l.nop

.L498:
	l.sfltu	r3, r4
	l.bf	.L496
	 l.nop

	l.sub	r3, r3, r4
	l.or	r19, r19, r17
.L496:
	l.ori	r21, r0, 1
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.j	.L497
	 l.nop

.L500:
	l.movhi	r19, hi(0)
	l.j	.L497
	 l.nop

.L501:
	l.movhi	r19, hi(0)
.L497:
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L498
	 l.nop

	l.sfne	r5, r21
	l.bf	.L502
	 l.nop

	l.or	r11, r19, r19
	l.j	.L499
	 l.nop

.L502:
	l.or	r11, r3, r3
.L499:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	udivmodsi4, .-udivmodsi4
	.align 4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 24
	l.sll	r3, r3, r17
	l.sra	r3, r3, r17
	l.movhi	r19, hi(0)
	l.sfges	r3, r19
	l.bf	.L504
	 l.nop

	l.xori	r3, r3, -1
	l.sll	r3, r3, r17
	l.sra	r3, r3, r17
.L504:
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L506
	 l.nop

	l.ori	r17, r0, 8
	l.sll	r3, r3, r17
	l.jal	__clzsi2
	 l.nop

	l.addi	r11, r11, -1
	l.j	.L505
	 l.nop

.L506:
	l.ori	r11, r0, 7
.L505:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.movhi	r21, hi(0)
	l.sfges	r3, r21
	l.bf	.L508
	 l.nop

	l.xori	r21, r3, -1
	l.xori	r23, r4, -1
	l.or	r17, r21, r21
	l.or	r19, r23, r23
.L508:
	l.or	r21, r17, r19
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L512
	 l.nop

	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__clzdi2
	 l.nop

	l.addi	r11, r11, -1
	l.j	.L510
	 l.nop

.L512:
	l.ori	r11, r0, 63
.L510:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r11, hi(0)
	l.j	.L514
	 l.nop

.L516:
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L515
	 l.nop

	l.add	r11, r11, r4
.L515:
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.add	r4, r4, r4
.L514:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L516
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__mulsi3, .-__mulsi3
	.align 4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 3
	l.srl	r29, r5, r17
	l.xori	r17, r0, -8
	l.and	r17, r5, r17
	l.sfltu	r3, r4
	l.bf	.L518
	 l.nop

	l.add	r19, r4, r5
	l.sfgeu	r19, r3
	l.bf	.L519
	 l.nop

.L518:
	l.or	r21, r4, r4
	l.or	r19, r3, r3
	l.movhi	r23, hi(0)
	l.j	.L520
	 l.nop

.L521:
	l.lwz	r25, 0(r21)
	l.lwz	r27, 4(r21)
	l.sw	0(r19), r25
	l.sw	4(r19), r27
	l.addi	r23, r23, 1
	l.addi	r21, r21, 8
	l.addi	r19, r19, 8
.L520:
	l.sfne	r23, r29
	l.bf	.L521
	 l.nop

	l.j	.L522
	 l.nop

.L523:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.sb	0(r19), r21
	l.addi	r17, r17, 1
.L522:
	l.sfgtu	r5, r17
	l.bf	.L523
	 l.nop

	l.j	.L517
	 l.nop

.L525:
	l.add	r17, r4, r5
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L519:
	l.addi	r5, r5, -1
	l.xori	r17, r0, -1
	l.sfne	r5, r17
	l.bf	.L525
	 l.nop

.L517:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__cmovd, .-__cmovd
	.align 4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 1
	l.srl	r17, r5, r17
	l.sfltu	r3, r4
	l.bf	.L527
	 l.nop

	l.add	r19, r4, r5
	l.sfgeu	r19, r3
	l.bf	.L528
	 l.nop

.L527:
	l.or	r19, r4, r4
	l.or	r21, r3, r3
	l.add	r17, r17, r17
	l.add	r17, r17, r4
	l.j	.L529
	 l.nop

.L530:
	l.lhs	r23, 0(r19)
	l.sh	0(r21), r23
	l.addi	r19, r19, 2
	l.addi	r21, r21, 2
.L529:
	l.sfne	r19, r17
	l.bf	.L530
	 l.nop

	l.andi	r17, r5, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L526
	 l.nop

	l.addi	r5, r5, -1
	l.add	r4, r4, r5
	l.add	r3, r3, r5
	l.lbs	r17, 0(r4)
	l.sb	0(r3), r17
	l.j	.L526
	 l.nop

.L532:
	l.add	r17, r4, r5
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L528:
	l.addi	r5, r5, -1
	l.xori	r17, r0, -1
	l.sfne	r5, r17
	l.bf	.L532
	 l.nop

.L526:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__cmovh, .-__cmovh
	.align 4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 2
	l.srl	r19, r5, r17
	l.xori	r17, r0, -4
	l.and	r17, r5, r17
	l.sfltu	r3, r4
	l.bf	.L534
	 l.nop

	l.add	r21, r4, r5
	l.sfgeu	r21, r3
	l.bf	.L535
	 l.nop

.L534:
	l.or	r21, r4, r4
	l.or	r23, r3, r3
	l.ori	r25, r0, 2
	l.sll	r19, r19, r25
	l.add	r19, r19, r4
	l.j	.L536
	 l.nop

.L537:
	l.lwz	r25, 0(r21)
	l.sw	0(r23), r25
	l.addi	r21, r21, 4
	l.addi	r23, r23, 4
.L536:
	l.sfne	r21, r19
	l.bf	.L537
	 l.nop

	l.j	.L538
	 l.nop

.L539:
	l.add	r19, r4, r17
	l.lbs	r21, 0(r19)
	l.add	r19, r3, r17
	l.sb	0(r19), r21
	l.addi	r17, r17, 1
.L538:
	l.sfgtu	r5, r17
	l.bf	.L539
	 l.nop

	l.j	.L533
	 l.nop

.L541:
	l.add	r17, r4, r5
	l.lbs	r19, 0(r17)
	l.add	r17, r3, r5
	l.sb	0(r17), r19
.L535:
	l.addi	r5, r5, -1
	l.xori	r17, r0, -1
	l.sfne	r5, r17
	l.bf	.L541
	 l.nop

.L533:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__cmovw, .-__cmovw
	.align 4
	.global	__modi
	.type	__modi, @function
__modi:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.div	r17, r3, r4
	l.mul	r17, r17, r4
	l.sub	r11, r3, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__modi, .-__modi
	.align 4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.jal	__floatunsidf
	 l.nop

	l.or	r17, r11, r11
	l.or	r11, r17, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__uitod, .-__uitod
	.align 4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.jal	__floatunsisf
	 l.nop

	l.or	r17, r11, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__uitof, .-__uitof
	.align 4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.jal	__floatundidf
	 l.nop

	l.or	r17, r11, r11
	l.or	r11, r17, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__ulltod, .-__ulltod
	.align 4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r17, r3, r3
	l.or	r19, r4, r4
	l.jal	__floatundisf
	 l.nop

	l.or	r17, r11, r11
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__ulltof, .-__ulltof
	.align 4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.divu	r17, r3, r4
	l.mul	r17, r17, r4
	l.sub	r11, r3, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__umodi, .-__umodi
	.align 4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.j	.L549
	 l.nop

.L551:
	l.ori	r17, r0, 15
	l.sub	r17, r17, r11
	l.sra	r17, r3, r17
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L550
	 l.nop

	l.addi	r11, r11, 1
.L549:
	l.ori	r17, r0, 16
	l.sfne	r11, r17
	l.bf	.L551
	 l.nop

.L550:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__clzhi2, .-__clzhi2
	.align 4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.j	.L553
	 l.nop

.L555:
	l.sra	r17, r3, r11
	l.andi	r17, r17, 1
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L554
	 l.nop

	l.addi	r11, r11, 1
.L553:
	l.ori	r17, r0, 16
	l.sfne	r11, r17
	l.bf	.L555
	 l.nop

.L554:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata
	.align 4
.LC18:
	.long	1191182336
	.section	.text
	.align 4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.or	r16, r3, r3
	l.movhi	r17, ha(.LC18)
	l.lwz	r4, lo(.LC18)(r17)
	l.jal	__gesf2
	 l.nop

	l.movhi	r17, hi(0)
	l.sfges	r11, r17
	l.bnf	.L561
	 l.nop

	l.movhi	r17, ha(.LC18)
	l.lwz	r4, lo(.LC18)(r17)
	l.or	r3, r16, r16
	l.jal	__subsf3
	 l.nop

	l.or	r3, r11, r11
	l.jal	__fixsfsi
	 l.nop

	l.ori	r17, r0, 32768
	l.add	r11, r11, r17
	l.j	.L559
	 l.nop

.L561:
	l.or	r3, r16, r16
	l.jal	__fixsfsi
	 l.nop

.L559:
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.movhi	r17, hi(0)
	l.j	.L563
	 l.nop

.L565:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L564
	 l.nop

	l.addi	r11, r11, 1
.L564:
	l.addi	r17, r17, 1
.L563:
	l.ori	r19, r0, 16
	l.sfne	r17, r19
	l.bf	.L565
	 l.nop

	l.andi	r11, r11, 1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__parityhi2, .-__parityhi2
	.align 4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r3, r3, 0xffff
	l.movhi	r11, hi(0)
	l.movhi	r17, hi(0)
	l.j	.L567
	 l.nop

.L569:
	l.sra	r19, r3, r17
	l.andi	r19, r19, 1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L568
	 l.nop

	l.addi	r11, r11, 1
.L568:
	l.addi	r17, r17, 1
.L567:
	l.ori	r19, r0, 16
	l.sfne	r17, r19
	l.bf	.L569
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__popcounthi2, .-__popcounthi2
	.align 4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r11, hi(0)
	l.j	.L571
	 l.nop

.L573:
	l.andi	r17, r3, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L572
	 l.nop

	l.add	r11, r11, r4
.L572:
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.add	r4, r4, r4
.L571:
	l.movhi	r17, hi(0)
	l.sfne	r3, r17
	l.bf	.L573
	 l.nop

	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfeq	r3, r17
	l.bf	.L579
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L576
	 l.nop

.L578:
	l.andi	r17, r4, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L577
	 l.nop

	l.add	r11, r11, r3
.L577:
	l.add	r3, r3, r3
	l.ori	r17, r0, 1
	l.srl	r4, r4, r17
.L576:
	l.movhi	r17, hi(0)
	l.sfne	r4, r17
	l.bf	.L578
	 l.nop

	l.j	.L575
	 l.nop

.L579:
	l.movhi	r11, hi(0)
.L575:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r19, r0, 33
	l.ori	r17, r0, 1
	l.j	.L581
	 l.nop

.L583:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L581:
	l.sfgeu	r4, r3
	l.bf	.L588
	 l.nop

	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L589
	 l.nop

	l.sfges	r4, r21
	l.bf	.L583
	 l.nop

	l.movhi	r19, hi(0)
	l.j	.L585
	 l.nop

.L586:
	l.sfltu	r3, r4
	l.bf	.L584
	 l.nop

	l.sub	r3, r3, r4
	l.or	r19, r19, r17
.L584:
	l.ori	r21, r0, 1
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.j	.L585
	 l.nop

.L588:
	l.movhi	r19, hi(0)
	l.j	.L585
	 l.nop

.L589:
	l.movhi	r19, hi(0)
.L585:
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L586
	 l.nop

	l.sfne	r5, r21
	l.bf	.L590
	 l.nop

	l.or	r11, r19, r19
	l.j	.L587
	 l.nop

.L590:
	l.or	r11, r3, r3
.L587:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	l.addi	r1, r1, -20
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r2
	l.addi	r2, r1, 20
	l.sw	16(r1), r9
	l.or	r16, r3, r3
	l.or	r18, r4, r4
	l.jal	__ltsf2
	 l.nop

	l.movhi	r20, hi(0)
	l.sflts	r11, r20
	l.bf	.L593
	 l.nop

	l.or	r4, r18, r18
	l.or	r3, r16, r16
	l.jal	__gtsf2
	 l.nop

	l.sfgts	r11, r20
	l.bf	.L594
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L592
	 l.nop

.L593:
	l.xori	r11, r0, -1
	l.j	.L592
	 l.nop

.L594:
	l.ori	r11, r0, 1
.L592:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r2, 12(r1)
	l.lwz	r9, 16(r1)
	l.addi	r1, r1, 20
	l.jr	r9
	 l.nop

	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	l.addi	r1, r1, -28
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.jal	__ltdf2
	 l.nop

	l.movhi	r24, hi(0)
	l.sflts	r11, r24
	l.bf	.L597
	 l.nop

	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__gtdf2
	 l.nop

	l.sfgts	r11, r24
	l.bf	.L598
	 l.nop

	l.movhi	r11, hi(0)
	l.j	.L596
	 l.nop

.L597:
	l.xori	r11, r0, -1
	l.j	.L596
	 l.nop

.L598:
	l.ori	r11, r0, 1
.L596:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	l.addi	r1, r1, -40
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r30
	l.sw	32(r1), r2
	l.addi	r2, r1, 40
	l.sw	36(r1), r9
	l.or	r19, r3, r3
	l.ori	r25, r0, 31
	l.sra	r17, r3, r25
	l.sra	r21, r4, r25
	l.or	r5, r21, r21
	l.or	r6, r4, r4
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__muldi3
	 l.nop

	l.or	r20, r11, r11
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r30, 28(r1)
	l.lwz	r2, 32(r1)
	l.lwz	r9, 36(r1)
	l.addi	r1, r1, 40
	l.jr	r9
	 l.nop

	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	l.addi	r1, r1, -40
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r28
	l.sw	28(r1), r30
	l.sw	32(r1), r2
	l.addi	r2, r1, 40
	l.sw	36(r1), r9
	l.movhi	r17, hi(0)
	l.or	r19, r3, r3
	l.movhi	r21, hi(0)
	l.or	r5, r21, r21
	l.or	r6, r4, r4
	l.or	r3, r17, r17
	l.or	r4, r19, r19
	l.jal	__muldi3
	 l.nop

	l.or	r20, r11, r11
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r28, 24(r1)
	l.lwz	r30, 28(r1)
	l.lwz	r2, 32(r1)
	l.lwz	r9, 36(r1)
	l.addi	r1, r1, 40
	l.jr	r9
	 l.nop

	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L608
	 l.nop

	l.sub	r4, r0, r4
	l.ori	r19, r0, 1
	l.j	.L602
	 l.nop

.L608:
	l.movhi	r19, hi(0)
.L602:
	l.ori	r17, r0, 33
	l.movhi	r11, hi(0)
	l.j	.L603
	 l.nop

.L606:
	l.andi	r21, r4, 1
	l.movhi	r23, hi(0)
	l.sfeq	r21, r23
	l.bf	.L604
	 l.nop

	l.add	r11, r11, r3
.L604:
	l.add	r3, r3, r3
	l.ori	r21, r0, 1
	l.sra	r4, r4, r21
.L603:
	l.movhi	r21, hi(0)
	l.sfeq	r4, r21
	l.bf	.L605
	 l.nop

	l.addi	r17, r17, -1
	l.andi	r17, r17, 0xff
	l.sfne	r17, r21
	l.bf	.L606
	 l.nop

.L605:
	l.movhi	r17, hi(0)
	l.sfeq	r19, r17
	l.bf	.L607
	 l.nop

	l.sub	r11, r0, r11
.L607:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__mulhi3, .-__mulhi3
	.align 4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L614
	 l.nop

	l.sub	r3, r0, r3
	l.ori	r16, r0, 1
	l.j	.L611
	 l.nop

.L614:
	l.movhi	r16, hi(0)
.L611:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L612
	 l.nop

	l.sub	r4, r0, r4
	l.xori	r16, r16, 1
.L612:
	l.movhi	r5, hi(0)
	l.jal	__udivmodsi4
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L613
	 l.nop

	l.sub	r11, r0, r11
.L613:
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__divsi3, .-__divsi3
	.align 4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	l.addi	r1, r1, -12
	l.sw	0(r1), r16
	l.sw	4(r1), r2
	l.addi	r2, r1, 12
	l.sw	8(r1), r9
	l.movhi	r17, hi(0)
	l.sfges	r3, r17
	l.bf	.L619
	 l.nop

	l.sub	r3, r0, r3
	l.ori	r16, r0, 1
	l.j	.L616
	 l.nop

.L619:
	l.movhi	r16, hi(0)
.L616:
	l.movhi	r17, hi(0)
	l.sfges	r4, r17
	l.bf	.L617
	 l.nop

	l.sub	r4, r0, r4
.L617:
	l.ori	r5, r0, 1
	l.jal	__udivmodsi4
	 l.nop

	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L618
	 l.nop

	l.sub	r11, r0, r11
.L618:
	l.lwz	r16, 0(r1)
	l.lwz	r2, 4(r1)
	l.lwz	r9, 8(r1)
	l.addi	r1, r1, 12
	l.jr	r9
	 l.nop

	.size	__modsi3, .-__modsi3
	.align 4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r11, r3, 0xffff
	l.andi	r4, r4, 0xffff
	l.ori	r19, r0, 17
	l.ori	r17, r0, 1
	l.j	.L621
	 l.nop

.L623:
	l.ori	r21, r0, 1
	l.sll	r4, r4, r21
	l.andi	r4, r4, 0xffff
	l.sll	r17, r17, r21
	l.andi	r17, r17, 0xffff
.L621:
	l.sfgeu	r4, r11
	l.bf	.L628
	 l.nop

	l.addi	r19, r19, -1
	l.movhi	r23, hi(0)
	l.sfeq	r19, r23
	l.bf	.L629
	 l.nop

	l.ori	r21, r0, 16
	l.sll	r21, r4, r21
	l.sfges	r21, r23
	l.bf	.L623
	 l.nop

	l.movhi	r19, hi(0)
	l.j	.L625
	 l.nop

.L626:
	l.sfltu	r11, r4
	l.bf	.L624
	 l.nop

	l.sub	r11, r11, r4
	l.andi	r11, r11, 0xffff
	l.or	r19, r19, r17
.L624:
	l.ori	r21, r0, 1
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.j	.L625
	 l.nop

.L628:
	l.movhi	r19, hi(0)
	l.j	.L625
	 l.nop

.L629:
	l.movhi	r19, hi(0)
.L625:
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L626
	 l.nop

	l.sfne	r5, r21
	l.bf	.L627
	 l.nop

	l.or	r11, r19, r19
.L627:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r19, r0, 33
	l.ori	r17, r0, 1
	l.j	.L632
	 l.nop

.L634:
	l.add	r4, r4, r4
	l.add	r17, r17, r17
.L632:
	l.sfgeu	r4, r3
	l.bf	.L639
	 l.nop

	l.addi	r19, r19, -1
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.bf	.L640
	 l.nop

	l.sfges	r4, r21
	l.bf	.L634
	 l.nop

	l.movhi	r19, hi(0)
	l.j	.L636
	 l.nop

.L637:
	l.sfltu	r3, r4
	l.bf	.L635
	 l.nop

	l.sub	r3, r3, r4
	l.or	r19, r19, r17
.L635:
	l.ori	r21, r0, 1
	l.srl	r17, r17, r21
	l.srl	r4, r4, r21
	l.j	.L636
	 l.nop

.L639:
	l.movhi	r19, hi(0)
	l.j	.L636
	 l.nop

.L640:
	l.movhi	r19, hi(0)
.L636:
	l.movhi	r21, hi(0)
	l.sfne	r17, r21
	l.bf	.L637
	 l.nop

	l.sfne	r5, r21
	l.bf	.L641
	 l.nop

	l.or	r11, r19, r19
	l.j	.L638
	 l.nop

.L641:
	l.or	r11, r3, r3
.L638:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r13, r5, 32
	l.movhi	r25, hi(0)
	l.sfeq	r13, r25
	l.bf	.L643
	 l.nop

	l.movhi	r19, hi(0)
	l.addi	r5, r5, -32
	l.sll	r5, r4, r5
	l.or	r17, r5, r5
	l.j	.L644
	 l.nop

.L643:
	l.movhi	r25, hi(0)
	l.sfeq	r5, r25
	l.bf	.L646
	 l.nop

	l.sll	r19, r4, r5
	l.sll	r25, r3, r5
	l.ori	r13, r0, 32
	l.sub	r13, r13, r5
	l.srl	r27, r4, r13
	l.or	r27, r27, r25
	l.or	r17, r27, r27
.L644:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.j	.L645
	 l.nop

.L646:
	l.or	r21, r3, r3
	l.or	r23, r4, r4
.L645:
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__ashldi3, .-__ashldi3
	.align 4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r13, r5, 32
	l.movhi	r21, hi(0)
	l.sfeq	r13, r21
	l.bf	.L648
	 l.nop

	l.ori	r23, r0, 31
	l.sra	r17, r3, r23
	l.addi	r5, r5, -32
	l.sra	r21, r3, r5
	l.or	r19, r21, r21
	l.j	.L649
	 l.nop

.L648:
	l.movhi	r21, hi(0)
	l.sfeq	r5, r21
	l.bf	.L651
	 l.nop

	l.sra	r17, r3, r5
	l.ori	r13, r0, 32
	l.sub	r13, r13, r5
	l.sll	r21, r3, r13
	l.srl	r5, r4, r5
	l.or	r19, r21, r5
.L649:
	l.or	r25, r17, r17
	l.or	r27, r19, r19
	l.j	.L650
	 l.nop

.L651:
	l.or	r25, r3, r3
	l.or	r27, r4, r4
.L650:
	l.or	r11, r25, r25
	l.or	r12, r27, r27
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__ashrdi3, .-__ashrdi3
	.align 4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	l.addi	r1, r1, -28
	l.sw	0(r1), r14
	l.sw	4(r1), r16
	l.sw	8(r1), r18
	l.sw	12(r1), r20
	l.sw	16(r1), r22
	l.sw	20(r1), r2
	l.addi	r2, r1, 28
	l.sw	24(r1), r9
	l.or	r18, r4, r4
	l.ori	r19, r0, 24
	l.srl	r15, r3, r19
	l.ori	r17, r0, 8
	l.srl	r23, r3, r17
	l.movhi	r12, hi(0)
	l.andi	r13, r23, 65280
	l.sll	r5, r3, r17
	l.srl	r23, r4, r19
	l.or	r23, r5, r23
	l.movhi	r8, hi(0)
	l.movhi	r11, hi(16711680)
	l.and	r9, r23, r11
	l.sll	r3, r3, r19
	l.srl	r23, r4, r17
	l.or	r23, r3, r23
	l.or	r4, r17, r17
	l.movhi	r6, hi(0)
	l.movhi	r17, hi(-16777216)
	l.and	r7, r23, r17
	l.srl	r17, r18, r19
	l.or	r25, r17, r5
	l.or	r17, r4, r4
	l.sll	r27, r18, r4
	l.andi	r4, r25, 255
	l.srl	r17, r18, r17
	l.or	r21, r17, r3
	l.sll	r23, r18, r19
	l.andi	r17, r21, 65280
	l.and	r16, r27, r11
	l.or	r25, r23, r23
	l.or	r21, r25, r12
	l.or	r23, r15, r13
	l.or	r25, r21, r8
	l.or	r27, r23, r9
	l.or	r21, r25, r6
	l.or	r23, r27, r7
	l.or	r25, r21, r4
	l.or	r27, r23, r23
	l.or	r21, r25, r17
	l.or	r17, r21, r16
	l.or	r11, r17, r17
	l.or	r12, r27, r27
	l.lwz	r14, 0(r1)
	l.lwz	r16, 4(r1)
	l.lwz	r18, 8(r1)
	l.lwz	r20, 12(r1)
	l.lwz	r22, 16(r1)
	l.lwz	r2, 20(r1)
	l.lwz	r9, 24(r1)
	l.addi	r1, r1, 28
	l.jr	r9
	 l.nop

	.size	__bswapdi2, .-__bswapdi2
	.align 4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r25, r0, 24
	l.srl	r21, r3, r25
	l.ori	r17, r0, 8
	l.srl	r19, r3, r17
	l.andi	r19, r19, 65280
	l.sll	r17, r3, r17
	l.movhi	r23, hi(16711680)
	l.and	r17, r17, r23
	l.sll	r11, r3, r25
	l.or	r11, r11, r21
	l.or	r11, r11, r19
	l.or	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__bswapsi2, .-__bswapsi2
	.align 4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 65535
	l.sfgtu	r3, r17
	l.bf	.L659
	 l.nop

	l.ori	r11, r0, 16
	l.j	.L655
	 l.nop

.L659:
	l.movhi	r11, hi(0)
.L655:
	l.ori	r17, r0, 16
	l.sub	r17, r17, r11
	l.srl	r3, r3, r17
	l.andi	r17, r3, 65280
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L660
	 l.nop

	l.ori	r17, r0, 8
	l.j	.L656
	 l.nop

.L660:
	l.movhi	r17, hi(0)
.L656:
	l.ori	r19, r0, 8
	l.sub	r19, r19, r17
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.andi	r17, r3, 240
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L661
	 l.nop

	l.ori	r17, r0, 4
	l.j	.L657
	 l.nop

.L661:
	l.movhi	r17, hi(0)
.L657:
	l.ori	r19, r0, 4
	l.sub	r19, r19, r17
	l.srl	r3, r3, r19
	l.add	r11, r11, r17
	l.andi	r17, r3, 12
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L662
	 l.nop

	l.ori	r19, r0, 2
	l.j	.L658
	 l.nop

.L662:
	l.movhi	r19, hi(0)
.L658:
	l.ori	r17, r0, 2
	l.sub	r21, r17, r19
	l.srl	r3, r3, r21
	l.add	r11, r11, r19
	l.and	r19, r3, r17
	l.movhi	r21, hi(0)
	l.sfeq	r19, r21
	l.ori	r19, r0, 1
	l.bf	.L663
	 l.nop

	l.movhi	r19, hi(0)
.L663:
	l.sub	r17, r17, r3
	l.mul	r17, r19, r17
	l.add	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__clzsi2, .-__clzsi2
	.align 4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sfgts	r5, r3
	l.bf	.L666
	 l.nop

	l.sflts	r5, r3
	l.bf	.L667
	 l.nop

	l.sfgtu	r6, r4
	l.bf	.L668
	 l.nop

	l.sfltu	r6, r4
	l.bf	.L669
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L665
	 l.nop

.L666:
	l.movhi	r11, hi(0)
	l.j	.L665
	 l.nop

.L667:
	l.ori	r11, r0, 2
	l.j	.L665
	 l.nop

.L668:
	l.movhi	r11, hi(0)
	l.j	.L665
	 l.nop

.L669:
	l.ori	r11, r0, 2
.L665:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__cmpdi2, .-__cmpdi2
	.align 4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r21, r3, r3
	l.or	r23, r4, r4
	l.or	r17, r5, r5
	l.or	r19, r6, r6
	l.jal	__cmpdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r17, r3, 65535
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L676
	 l.nop

	l.ori	r11, r0, 16
	l.j	.L672
	 l.nop

.L676:
	l.movhi	r11, hi(0)
.L672:
	l.srl	r3, r3, r11
	l.andi	r17, r3, 255
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L677
	 l.nop

	l.ori	r17, r0, 8
	l.j	.L673
	 l.nop

.L677:
	l.movhi	r17, hi(0)
.L673:
	l.srl	r3, r3, r17
	l.add	r11, r11, r17
	l.andi	r17, r3, 15
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L678
	 l.nop

	l.ori	r17, r0, 4
	l.j	.L674
	 l.nop

.L678:
	l.movhi	r17, hi(0)
.L674:
	l.srl	r3, r3, r17
	l.add	r11, r11, r17
	l.andi	r17, r3, 3
	l.movhi	r19, hi(0)
	l.sfne	r17, r19
	l.bf	.L679
	 l.nop

	l.ori	r17, r0, 2
	l.j	.L675
	 l.nop

.L679:
	l.movhi	r17, hi(0)
.L675:
	l.srl	r3, r3, r17
	l.andi	r3, r3, 3
	l.add	r11, r11, r17
	l.xori	r19, r3, -1
	l.andi	r19, r19, 1
	l.ori	r17, r0, 1
	l.srl	r3, r3, r17
	l.ori	r17, r0, 2
	l.sub	r17, r17, r3
	l.sub	r19, r0, r19
	l.and	r17, r17, r19
	l.add	r11, r11, r17
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__ctzsi2, .-__ctzsi2
	.align 4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r2
	l.addi	r2, r1, 16
	l.sw	12(r1), r9
	l.andi	r15, r5, 32
	l.movhi	r25, hi(0)
	l.sfeq	r15, r25
	l.bf	.L681
	 l.nop

	l.movhi	r17, hi(0)
	l.addi	r5, r5, -32
	l.srl	r19, r3, r5
	l.j	.L682
	 l.nop

.L681:
	l.movhi	r25, hi(0)
	l.sfeq	r5, r25
	l.bf	.L684
	 l.nop

	l.srl	r17, r3, r5
	l.ori	r15, r0, 32
	l.sub	r15, r15, r5
	l.sll	r25, r3, r15
	l.srl	r5, r4, r5
	l.or	r19, r25, r5
.L682:
	l.or	r21, r17, r17
	l.or	r23, r19, r19
	l.j	.L683
	 l.nop

.L684:
	l.or	r21, r3, r3
	l.or	r23, r4, r4
.L683:
	l.or	r11, r21, r21
	l.or	r12, r23, r23
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r2, 8(r1)
	l.lwz	r9, 12(r1)
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	__lshrdi3, .-__lshrdi3
	.align 4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.andi	r13, r3, 65535
	l.andi	r15, r4, 65535
	l.mul	r19, r13, r15
	l.ori	r12, r0, 16
	l.srl	r17, r19, r12
	l.andi	r19, r19, 65535
	l.srl	r3, r3, r12
	l.mul	r15, r3, r15
	l.add	r17, r17, r15
	l.sll	r15, r17, r12
	l.add	r23, r15, r19
	l.srl	r17, r17, r12
	l.or	r21, r17, r17
	l.srl	r17, r23, r12
	l.andi	r19, r23, 65535
	l.srl	r4, r4, r12
	l.mul	r13, r13, r4
	l.add	r17, r17, r13
	l.sll	r13, r17, r12
	l.add	r23, r13, r19
	l.srl	r17, r17, r12
	l.add	r17, r17, r21
	l.mul	r3, r3, r4
	l.add	r3, r3, r17
	l.or	r27, r23, r23
	l.or	r11, r3, r3
	l.or	r12, r27, r27
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__muldsi3, .-__muldsi3
	.align 4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	l.addi	r1, r1, -72
	l.sw	28(r1), r14
	l.sw	32(r1), r16
	l.sw	36(r1), r18
	l.sw	40(r1), r20
	l.sw	44(r1), r22
	l.sw	48(r1), r24
	l.sw	52(r1), r26
	l.sw	56(r1), r28
	l.sw	60(r1), r30
	l.sw	64(r1), r2
	l.addi	r2, r1, 72
	l.sw	68(r1), r9
	l.or	r31, r4, r4
	l.or	r20, r3, r3
	l.or	r16, r5, r5
	l.or	r18, r6, r6
	l.sw	-64(r2), r4
	l.or	r4, r6, r6
	l.or	r3, r31, r31
	l.jal	__muldsi3
	 l.nop

	l.sw	-60(r2), r11
	l.sw	-56(r2), r12
	l.lwz	r17, -60(r2)
	l.lwz	r19, -56(r2)
	l.or	r24, r17, r17
	l.sw	-52(r2), r17
	l.sw	-48(r2), r19
	l.mul	r14, r18, r20
	l.lwz	r17, -64(r2)
	l.mul	r17, r17, r16
	l.add	r14, r14, r17
	l.add	r14, r14, r24
	l.sw	-52(r2), r14
	l.lwz	r17, -52(r2)
	l.lwz	r19, -48(r2)
	l.or	r28, r17, r17
	l.or	r30, r19, r19
	l.sw	-72(r2), r28
	l.sw	-68(r2), r30
	l.or	r11, r28, r28
	l.or	r12, r30, r30
	l.lwz	r14, 28(r1)
	l.lwz	r16, 32(r1)
	l.lwz	r18, 36(r1)
	l.lwz	r20, 40(r1)
	l.lwz	r22, 44(r1)
	l.lwz	r24, 48(r1)
	l.lwz	r26, 52(r1)
	l.lwz	r28, 56(r1)
	l.lwz	r30, 60(r1)
	l.lwz	r2, 64(r1)
	l.lwz	r9, 68(r1)
	l.addi	r1, r1, 72
	l.jr	r9
	 l.nop

	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	l.addi	r1, r1, -16
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r2
	l.addi	r2, r1, 16
	l.sw	12(r1), r9
	l.or	r16, r3, r3
	l.movhi	r25, hi(0)
	l.movhi	r27, hi(0)
	l.sub	r19, r27, r4
	l.movhi	r21, hi(0)
	l.sfne	r19, r21
	l.ori	r23, r0, 1
	l.bf	.L688
	 l.nop

	l.movhi	r23, hi(0)
.L688:
	l.sub	r17, r25, r16
	l.sub	r17, r17, r23
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r2, 8(r1)
	l.lwz	r9, 12(r1)
	l.addi	r1, r1, 16
	l.jr	r9
	 l.nop

	.size	__negdi2, .-__negdi2
	.align 4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.xor	r17, r4, r3
	l.ori	r19, r0, 16
	l.srl	r19, r17, r19
	l.xor	r17, r17, r19
	l.ori	r19, r0, 8
	l.srl	r19, r17, r19
	l.xor	r17, r17, r19
	l.ori	r19, r0, 4
	l.srl	r19, r17, r19
	l.xor	r17, r17, r19
	l.andi	r17, r17, 15
	l.ori	r11, r0, 27030
	l.sra	r11, r11, r17
	l.andi	r11, r11, 1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__paritydi2, .-__paritydi2
	.align 4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 16
	l.srl	r17, r3, r17
	l.xor	r17, r3, r17
	l.ori	r19, r0, 8
	l.srl	r19, r17, r19
	l.xor	r17, r17, r19
	l.ori	r19, r0, 4
	l.srl	r19, r17, r19
	l.xor	r17, r17, r19
	l.andi	r17, r17, 15
	l.ori	r11, r0, 27030
	l.sra	r11, r11, r17
	l.andi	r11, r11, 1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__paritysi2, .-__paritysi2
	.align 4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r8, r3, r3
	l.ori	r17, r0, 31
	l.sll	r29, r3, r17
	l.ori	r25, r0, 1
	l.srl	r19, r4, r25
	l.or	r19, r29, r19
	l.srl	r17, r3, r25
	l.movhi	r15, hi(1431633920)
	l.ori	r15, r15, 21845
	l.and	r29, r17, r15
	l.and	r31, r19, r15
	l.sub	r19, r4, r31
	l.sfgtu	r19, r4
	l.ori	r27, r0, 1
	l.bf	.L692
	 l.nop

	l.movhi	r27, hi(0)
.L692:
	l.sub	r17, r8, r29
	l.sub	r17, r17, r27
	l.ori	r25, r0, 30
	l.sll	r29, r17, r25
	l.ori	r31, r0, 2
	l.srl	r27, r19, r31
	l.or	r27, r29, r27
	l.srl	r25, r17, r31
	l.movhi	r15, hi(858980352)
	l.ori	r15, r15, 13107
	l.and	r29, r25, r15
	l.and	r31, r27, r15
	l.and	r6, r17, r15
	l.and	r7, r19, r15
	l.add	r9, r31, r7
	l.sfltu	r9, r31
	l.ori	r27, r0, 1
	l.bf	.L693
	 l.nop

	l.movhi	r27, hi(0)
.L693:
	l.add	r8, r29, r6
	l.add	r8, r27, r8
	l.ori	r17, r0, 28
	l.sll	r25, r8, r17
	l.ori	r17, r0, 4
	l.srl	r31, r9, r17
	l.or	r31, r25, r31
	l.srl	r29, r8, r17
	l.add	r27, r31, r9
	l.sfltu	r27, r31
	l.ori	r19, r0, 1
	l.bf	.L694
	 l.nop

	l.movhi	r19, hi(0)
.L694:
	l.add	r25, r29, r8
	l.add	r25, r19, r25
	l.movhi	r17, hi(252641280)
	l.ori	r17, r17, 3855
	l.and	r21, r25, r17
	l.and	r23, r27, r17
	l.add	r17, r21, r23
	l.ori	r19, r0, 16
	l.srl	r19, r17, r19
	l.add	r17, r17, r19
	l.ori	r19, r0, 8
	l.srl	r11, r17, r19
	l.add	r11, r11, r17
	l.andi	r11, r11, 127
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__popcountdi2, .-__popcountdi2
	.align 4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.ori	r17, r0, 1
	l.srl	r17, r3, r17
	l.movhi	r19, hi(1431633920)
	l.ori	r19, r19, 21845
	l.and	r17, r17, r19
	l.sub	r17, r3, r17
	l.ori	r19, r0, 2
	l.srl	r21, r17, r19
	l.movhi	r19, hi(858980352)
	l.ori	r19, r19, 13107
	l.and	r21, r21, r19
	l.and	r17, r17, r19
	l.add	r17, r21, r17
	l.ori	r19, r0, 4
	l.srl	r19, r17, r19
	l.add	r17, r19, r17
	l.movhi	r19, hi(252641280)
	l.ori	r19, r19, 3855
	l.and	r17, r17, r19
	l.ori	r19, r0, 16
	l.srl	r19, r17, r19
	l.add	r17, r17, r19
	l.ori	r19, r0, 8
	l.srl	r11, r17, r19
	l.add	r11, r11, r17
	l.andi	r11, r11, 63
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata
	.align 4
.LC19:
	.long	1072693248
	.long	0
	.section	.text
	.align 4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	l.addi	r1, r1, -32
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r24
	l.sw	20(r1), r26
	l.sw	24(r1), r2
	l.addi	r2, r1, 32
	l.sw	28(r1), r9
	l.or	r20, r3, r3
	l.or	r22, r4, r4
	l.or	r24, r5, r5
	l.ori	r17, r0, 31
	l.srl	r26, r5, r17
	l.movhi	r17, ha(.LC19)
	l.addi	r17, r17, lo(.LC19)
	l.lwz	r16, 0(r17)
	l.lwz	r18, 4(r17)
.L699:
	l.andi	r17, r24, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L697
	 l.nop

	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r16, r16
	l.or	r4, r18, r18
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r16, r17, r17
	l.or	r18, r12, r12
.L697:
	l.ori	r17, r0, 31
	l.srl	r17, r24, r17
	l.add	r17, r17, r24
	l.ori	r19, r0, 1
	l.sra	r24, r17, r19
	l.movhi	r17, hi(0)
	l.sfeq	r24, r17
	l.bf	.L698
	 l.nop

	l.or	r5, r20, r20
	l.or	r6, r22, r22
	l.or	r3, r20, r20
	l.or	r4, r22, r22
	l.jal	__muldf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r20, r17, r17
	l.or	r22, r12, r12
	l.j	.L699
	 l.nop

.L698:
	l.movhi	r17, hi(0)
	l.sfeq	r26, r17
	l.bf	.L701
	 l.nop

	l.movhi	r17, ha(.LC19)
	l.or	r5, r16, r16
	l.or	r6, r18, r18
	l.lwz	r3, lo(.LC19)(r17)
	l.addi	r17, r17, lo(.LC19)
	l.lwz	r4, 4(r17)
	l.jal	__divdf3
	 l.nop

	l.or	r21, r11, r11
	l.or	r17, r21, r21
	l.or	r19, r12, r12
	l.j	.L700
	 l.nop

.L701:
	l.or	r17, r16, r16
	l.or	r19, r18, r18
.L700:
	l.or	r11, r17, r17
	l.or	r12, r19, r19
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r24, 16(r1)
	l.lwz	r26, 20(r1)
	l.lwz	r2, 24(r1)
	l.lwz	r9, 28(r1)
	l.addi	r1, r1, 32
	l.jr	r9
	 l.nop

	.size	__powidf2, .-__powidf2
	.section	.rodata
	.align 4
.LC20:
	.long	1065353216
	.section	.text
	.align 4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	l.addi	r1, r1, -24
	l.sw	0(r1), r16
	l.sw	4(r1), r18
	l.sw	8(r1), r20
	l.sw	12(r1), r22
	l.sw	16(r1), r2
	l.addi	r2, r1, 24
	l.sw	20(r1), r9
	l.or	r20, r3, r3
	l.or	r16, r4, r4
	l.ori	r17, r0, 31
	l.srl	r22, r4, r17
	l.movhi	r17, ha(.LC20)
	l.lwz	r18, lo(.LC20)(r17)
.L705:
	l.andi	r17, r16, 1
	l.movhi	r19, hi(0)
	l.sfeq	r17, r19
	l.bf	.L703
	 l.nop

	l.or	r4, r20, r20
	l.or	r3, r18, r18
	l.jal	__mulsf3
	 l.nop

	l.or	r18, r11, r11
.L703:
	l.ori	r17, r0, 31
	l.srl	r17, r16, r17
	l.add	r16, r17, r16
	l.ori	r17, r0, 1
	l.sra	r16, r16, r17
	l.movhi	r17, hi(0)
	l.sfeq	r16, r17
	l.bf	.L704
	 l.nop

	l.or	r4, r20, r20
	l.or	r3, r20, r20
	l.jal	__mulsf3
	 l.nop

	l.or	r20, r11, r11
	l.j	.L705
	 l.nop

.L704:
	l.movhi	r17, hi(0)
	l.sfeq	r22, r17
	l.bf	.L707
	 l.nop

	l.or	r4, r18, r18
	l.movhi	r17, ha(.LC20)
	l.lwz	r3, lo(.LC20)(r17)
	l.jal	__divsf3
	 l.nop

	l.or	r17, r11, r11
	l.or	r11, r17, r17
	l.j	.L706
	 l.nop

.L707:
	l.or	r11, r18, r18
.L706:
	l.lwz	r16, 0(r1)
	l.lwz	r18, 4(r1)
	l.lwz	r20, 8(r1)
	l.lwz	r22, 12(r1)
	l.lwz	r2, 16(r1)
	l.lwz	r9, 20(r1)
	l.addi	r1, r1, 24
	l.jr	r9
	 l.nop

	.size	__powisf2, .-__powisf2
	.align 4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.sfgtu	r5, r3
	l.bf	.L710
	 l.nop

	l.sfltu	r5, r3
	l.bf	.L711
	 l.nop

	l.sfgtu	r6, r4
	l.bf	.L712
	 l.nop

	l.sfltu	r6, r4
	l.bf	.L713
	 l.nop

	l.ori	r11, r0, 1
	l.j	.L709
	 l.nop

.L710:
	l.movhi	r11, hi(0)
	l.j	.L709
	 l.nop

.L711:
	l.ori	r11, r0, 2
	l.j	.L709
	 l.nop

.L712:
	l.movhi	r11, hi(0)
	l.j	.L709
	 l.nop

.L713:
	l.ori	r11, r0, 2
.L709:
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	l.addi	r1, r1, -8
	l.sw	0(r1), r2
	l.addi	r2, r1, 8
	l.sw	4(r1), r9
	l.or	r21, r3, r3
	l.or	r23, r4, r4
	l.or	r17, r5, r5
	l.or	r19, r6, r6
	l.jal	__ucmpdi2
	 l.nop

	l.addi	r11, r11, -1
	l.lwz	r2, 0(r1)
	l.lwz	r9, 4(r1)
	l.addi	r1, r1, 8
	l.jr	r9
	 l.nop

	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,1
	.global	__divsf3
	.global	__divdf3
	.global	__fixsfsi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
	.global	__gedf2
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__mulsf3
	.global	__nesf2
	.global	__addsf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__muldi3
	.global	__ltsf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
