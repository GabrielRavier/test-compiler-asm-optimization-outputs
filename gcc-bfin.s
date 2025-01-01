.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	R3 = R0;
	P2 = R1;
	cc =R0<=R1 (iu);
	if cc jump .L2 (bp);
	P1 = R2;
	P2 = P2 + P1;
	R1 = R0 + R2;
	P2 += -1;
	P1 = R1;
	P1 += -1;
	R0 = ~R2;
	R0 = R0 + R1;
	jump.s .L3;
.L4:
	nop;
	R1 = B [P2--] (X);
	B [P1--] = R1;
.L3:
	R1 = P1;
	cc =R1==R0;
	if !cc jump .L4 (bp);
.L5:
	R0 = R3;
	rts;
.L2:
	cc =R0==R1;
	if cc jump .L5;
	P1 = R0;
	R0 = R1 + R2;
	jump.s .L6;
.L7:
	nop;
	R1 = B [P2++] (X);
	B [P1++] = R1;
.L6:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L7 (bp);
	jump.s .L5;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	P2 = R0;
	P1 = R1;
	R0 = [SP+12];
	R3 = R2.B (Z);
	jump.s .L9;
.L11:
	R0 += -1;
.L9:
	R2 = P2;
	cc =R0==0;
	if cc jump .L10;
	nop;
	nop;
	nop;
	R1 = B [P1++] (X);
	B [P2] = R1;
	R1 = B [P2++] (Z);
	cc =R3==R1;
	if !cc jump .L11 (bp);
.L10:
	cc =R0==0;
	if cc jump .L13;
	R2 += 1;
.L12:
	R0 = R2;
	rts;
.L13:
	R2 = 0 (X);
	jump.s .L12;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	P2 = R0;
	R0 = R2;
	R3 = R1.B (Z);
	jump.s .L15;
.L17:
	R0 += -1;
.L15:
	R2 = P2;
	cc =R0==0;
	if cc jump .L16;
	nop;
	nop;
	nop;
	R1 = B [P2++] (Z);
	cc =R3==R1;
	if !cc jump .L17 (bp);
.L16:
	cc =R0==0;
	if cc jump .L20;
.L18:
	R0 = R2;
	rts;
.L20:
	R2 = 0 (X);
	jump.s .L18;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	[--sp] = ( p5:5 );

	P1 = R0;
	P2 = R1;
	R0 = R2;
	jump.s .L22;
.L24:
	R0 += -1;
.L22:
	P0 = P2;
	P5 = P1;
	cc =R0==0;
	if cc jump .L23;
	nop;
	nop;
	nop;
	R2 = B [P1++] (Z);
	R1 = B [P2++] (Z);
	cc =R2==R1;
	if cc jump .L24 (bp);
.L23:
	cc =R0==0;
	if cc jump .L26 (bp);
	R0 = B [P5] (Z);
	R1 = B [P0] (Z);
	R0 = R0 - R1;
.L25:
	( p5:5 ) = [sp++];

	rts;
.L26:
	R0 = 0 (X);
	jump.s .L25;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	R3 = R0;
	P2 = R1;
	P1 = R0;
	R1 = R1 + R2;
	jump.s .L28;
.L29:
	nop;
	R0 = B [P2++] (X);
	B [P1++] = R0;
.L28:
	R0 = P2;
	cc =R0==R1;
	if !cc jump .L29 (bp);
	R0 = R3;
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	P1 = R0;
	R0 = R2;
	R2 = R1.B (Z);
	P2 = R0;
	P2 += -1;
	P2 = P1 + P2;
	R3 = P1;
	R3 += -1;
.L31:
	R0 += -1;
	R1 = P2;
	cc =R1==R3;
	if cc jump .L35;
	nop;
	nop;
	nop;
	R1 = B [P2--] (Z);
	cc =R2==R1;
	if !cc jump .L31 (bp);
	P2 = R0;
	P1 = P1 + P2;
	jump.s .L32;
.L35:
	P1 = 0 (X);
.L32:
	R0 = P1;
	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	R3 = R0;
	R0 = R0 + R2;
	P2 = R3;
	jump.s .L37;
.L38:
	B [P2++] = R1;
.L37:
	R2 = P2;
	cc =R2==R0;
	if !cc jump .L38 (bp);
	R0 = R3;
	rts;
	.size	_memset, .-_memset
	.align 4
.global _stpcpy;
.type _stpcpy, STT_FUNC;
_stpcpy:
	P2 = R0;
	P1 = R1;
.L40:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L40 (bp);
	R0 = R1;
	rts;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	P2 = R0;
	R1 = R1.B (Z);
.L44:
	R2 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L43;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (Z);
	cc =R1==R0;
	if !cc jump .L44 (bp);
.L43:
	R0 = R2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
.L48:
	R2 = P2;
	R0 = B [P2++] (X);
	cc =R1==R0;
	if cc jump .L47;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L48 (bp);
	R2 = 0 (X);
.L47:
	R0 = R2;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	[--sp] = ( p5:5 );

	P2 = R0;
	P1 = R1;
.L53:
	P0 = P1;
	P5 = P2;
	R1 = B [P2++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if !cc jump .L52;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L53 (bp);
.L52:
	R0 = B [P5] (Z);
	R1 = B [P0] (Z);
	R0 = R0 - R1;
	( p5:5 ) = [sp++];

	rts;
	.size	_strcmp, .-_strcmp
	.align 4
.global _strlen;
.type _strlen, STT_FUNC;
_strlen:
	R2 = R0;
	P2 = R0;
.L56:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L56 (bp);
	R1 = R1 - R2;
	R0 = R1;
	rts;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	[--sp] = ( p5:4 );

	P2 = R0;
	P1 = R1;
	P0 = R2;
	cc =P0==0;
	LSETUP (.L64, .L65) LC1 = P0;
	if !cc jump .L61 (bp);
	jump.s .L62;
.L64:
	R1 = B [P2+-1] (Z);
	R0 = B [P1++] (Z);
	cc =R1==R0;
	if !cc jump .L60;
	nop;
.L61:
	P5 = P1;
	P4 = P2;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if cc jump .L60;
	nop;
	nop;
	nop;
	R0 = B [P1] (Z);
	cc =R0==0;
	if cc jump .L60;
	nop;
	nop;
.L65:
	nop;
.L60:
	R0 = B [P4] (Z);
	R1 = B [P5] (Z);
	R0 = R0 - R1;
.L59:
	( p5:4 ) = [sp++];

	rts;
.L62:
	R0 = 0 (X);
	jump.s .L59;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	[--sp] = ( p5:5 );

	P1 = R0;
	P0 = R1;
	P5 = R2;
	P2 = P5 >> 1;
	P2 += 1;
	cc =R2<0;
	if !cc jump .L67 (bp);
	P2 = 1 (X);
	jump.s .L67;
.L68:
	R0 = B [P1+1] (X);
	B [P0] = R0;
	R0 = B [P1] (X);
	B [P0+1] = R0;
	P0 += 2;
	P1 += 2;
.L67:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L68;
	( p5:5 ) = [sp++];

	rts;
	.size	_swab, .-_swab
	.align 4
.global _isalpha;
.type _isalpha, STT_FUNC;
_isalpha:
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	rts;
	.size	_isalpha, .-_isalpha
	.align 4
.global _isascii;
.type _isascii, STT_FUNC;
_isascii:
	nop;
	R1 = 127 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	rts;
	.size	_isascii, .-_isascii
	.align 4
.global _isblank;
.type _isblank, STT_FUNC;
_isblank:
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L74;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
.L73:
	rts;
.L74:
	R0 = 1 (X);
	jump.s .L73;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L77 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
.L76:
	rts;
.L77:
	R0 = 1 (X);
	jump.s .L76;
	.size	_iscntrl, .-_iscntrl
	.align 4
.global _isdigit;
.type _isdigit, STT_FUNC;
_isdigit:
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	rts;
	.size	_isdigit, .-_isdigit
	.align 4
.global _isgraph;
.type _isgraph, STT_FUNC;
_isgraph:
	R0 += -33;
	R1 = 93 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	rts;
	.size	_isgraph, .-_isgraph
	.align 4
.global _islower;
.type _islower, STT_FUNC;
_islower:
	R1 = -97 (X);
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	rts;
	.size	_islower, .-_islower
	.align 4
.global _isprint;
.type _isprint, STT_FUNC;
_isprint:
	R0 += -32;
	R1 = 94 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	rts;
	.size	_isprint, .-_isprint
	.align 4
.global _isspace;
.type _isspace, STT_FUNC;
_isspace:
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L84;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
.L83:
	rts;
.L84:
	R0 = 1 (X);
	jump.s .L83;
	.size	_isspace, .-_isspace
	.align 4
.global _isupper;
.type _isupper, STT_FUNC;
_isupper:
	R1 = -65 (X);
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	rts;
	.size	_isupper, .-_isupper
	.align 4
.global _iswcntrl;
.type _iswcntrl, STT_FUNC;
_iswcntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L88 (bp);
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L89 (bp);
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L90;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	R0 = CC;
	jump.s .L87;
.L88:
	R0 = 1 (X);
.L87:
	rts;
.L89:
	R0 = 1 (X);
	jump.s .L87;
.L90:
	R0 = 1 (X);
	jump.s .L87;
	.size	_iswcntrl, .-_iswcntrl
	.align 4
.global _iswdigit;
.type _iswdigit, STT_FUNC;
_iswdigit:
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	rts;
	.size	_iswdigit, .-_iswdigit
	.align 4
.global _iswprint;
.type _iswprint, STT_FUNC;
_iswprint:
	R1 = 254 (X);
	cc =R0<=R1 (iu);
	if cc jump .L99;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L95;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L96;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L97;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L98;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L94;
.L99:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
.L94:
	rts;
.L95:
	R0 = 1 (X);
	jump.s .L94;
.L96:
	R0 = 1 (X);
	jump.s .L94;
.L97:
	R0 = 1 (X);
	jump.s .L94;
.L98:
	R0 = 0 (X);
	jump.s .L94;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L102 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
.L101:
	rts;
.L102:
	R0 = 1 (X);
	jump.s .L101;
	.size	_iswxdigit, .-_iswxdigit
	.align 4
.global _toascii;
.type _toascii, STT_FUNC;
_toascii:
	nop;
	nop;
	R1 = 127 (X);
	R0 = R0 & R1;
	rts;
	.size	_toascii, .-_toascii
	.align 4
.global _fdim;
.type _fdim, STT_FUNC;
_fdim:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	[SP+12] = R1;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L107;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L108;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L111 (bp);
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L105:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L107:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L105;
.L108:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L105;
.L111:
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L105;
	.size	_fdim, .-_fdim
	.align 4
.global _fdimf;
.type _fdimf, STT_FUNC;
_fdimf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L113;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L116;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L119 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L113:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L116:
	R7 = R6;
	jump.s .L113;
.L119:
	R7 = 0 (X);
	jump.s .L113;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	[SP+12] = R1;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L126;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L127;
	R1 = [SP+32];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L122 (bp);
	R0 = [SP+32];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L128 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L121;
.L122:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L124 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L125:
	[SP+16] = R0;
	[SP+20] = R1;
.L121:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L124:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L125;
.L126:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L121;
.L127:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L121;
.L128:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L121;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L135;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L130;
	R1 = R7 >>> 31;
	R1 <<= 31;
	R0 = R6 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L131 (bp);
	R0 = R7 >>> 31;
	cc = !BITTST (R0,0);
	if cc jump .L130 (bp);
	R7 = R6;
.L130:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L131:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L130 (bp);
	R7 = R6;
	jump.s .L130;
.L135:
	R7 = R6;
	jump.s .L130;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	[SP+12] = R1;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L144;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L145;
	R1 = [SP+32];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L140 (bp);
	R0 = [SP+32];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L146 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L139;
.L140:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L142 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L143:
	[SP+16] = R0;
	[SP+20] = R1;
.L139:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L142:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L143;
.L144:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L139;
.L145:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L139;
.L146:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L139;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	[--SP] = RETS;
	SP += -32;
	[SP+36] = R0;
	[SP+40] = R1;
	[SP+44] = R2;
	[SP+12] = R1;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L153;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L154;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+48];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L149 (bp);
	R0 = [SP+40];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L155 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L148;
.L149:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L151 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L152:
	[SP+24] = R0;
	[SP+28] = R1;
.L148:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L151:
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L152;
.L153:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L148;
.L154:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L148;
.L155:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L148;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R6 = R0;
	R7 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L157;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L163;
	R1 = R6 >>> 31;
	R1 <<= 31;
	R0 = R7 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L158 (bp);
	R0 = R6 >>> 31;
	cc = !BITTST (R0,0);
	if cc jump .L157 (bp);
	R7 = R6;
.L157:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L158:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L157 (bp);
	R7 = R6;
	jump.s .L157;
.L163:
	R7 = R6;
	jump.s .L157;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	[--SP] = RETS;
	SP += -32;
	[SP+36] = R0;
	[SP+40] = R1;
	[SP+44] = R2;
	[SP+12] = R1;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L171;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L172;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+48];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L167 (bp);
	R0 = [SP+40];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L173 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L166;
.L167:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L169 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L170:
	[SP+24] = R0;
	[SP+28] = R1;
.L166:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L169:
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L170;
.L171:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L166;
.L172:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L166;
.L173:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L166;
	.size	_fminl, .-_fminl
	.section	.rodata
	.align 4
	.type	_digits, @object
	.size	_digits, 65
_digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.text;
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	P1.L = _s.0;
	R3 = 63 (X);
	R2.H = _digits;
	R2.L = _digits;
	jump.s .L175;
.L176:
	R1 = R0 & R3;
	R1 = R2 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
.L175:
	cc =R0==0;
	if !cc jump .L176 (bp);
	B [P1] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	rts;
	.size	_l64a, .-_l64a
	.local	_seed
	.comm	_seed,8,4
	.align 4
.global _srand;
.type _srand, STT_FUNC;
_srand:
	R0 += -1;
	P2.H = _seed;
	P2.L = _seed;
	[P2] = R0;
	R0 = 0 (X);
	[P2+4] = R0;
	rts;
	.size	_srand, .-_srand
	.align 4
.global _rand;
.type _rand, STT_FUNC;
_rand:
	[--sp] = ( p5:5 );

	[--SP] = RETS;
	SP += -24;
	P5.H = _seed;
	P5.L = _seed;
	R0.H = 22609;
	R0.L = 62509;
	[SP+12] = R0;
	R2.H = 19605;
	R2.L = 32557;
	R0 = [P5];
	R1 = [P5+4];
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R2 = [SP+20];
	R1 = R0;
	R1 += 1; cc = ac0;
	R0 = CC;
	R0 = R0 + R2;
	[P5] = R1;
	[P5+4] = R0;
	R0 >>= 1;
	SP += 24;
	RETS = [SP++];
	( p5:5 ) = [sp++];

	rts;
	.size	_rand, .-_rand
	.align 4
.global _insque;
.type _insque, STT_FUNC;
_insque:
	P2 = R0;
	P1 = R1;
	cc =P1==0;
	if cc jump .L182;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L179;
	P1 = R0;
	[P1+4] = P2;
.L179:
	rts;
.L182:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L179;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L184;
	nop;
	nop;
	P1 = R0;
	R0 = [P2+4];
	[P1+4] = R0;
.L184:
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L183;
	nop;
	nop;
	P1 = R0;
	R0 = [P2];
	[P1] = R0;
.L183:
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	R4 = R0;
	P3 = R1;
	FP = R2;
	P5 = [SP+60];
	P4 = [SP+64];
	R5 = [FP];
	R6 = R1;
	R7 = 0 (X);
	jump.s .L187;
.L188:
	R7 += 1;
.L187:
	cc =R7==R5;
	if cc jump .L191;
	R1 = R6;
	R0 = R4;
	call (P4);
	R1 = P5;
	R6 = R6 + R1;
	cc =R0==0;
	if !cc jump .L188 (bp);
	R7 *= R1;
	P2 = R7;
	P3 = P3 + P2;
	jump.s .L189;
.L191:
	R0 = R5;
	R0 += 1;
	[FP] = R0;
	R0 = P5;
	R5 *= R0;
	P2 = R5;
	P3 = P3 + P2;
	R2 = P5;
	R1 = R4;
	R0 = P3;
	call _memcpy;
	P3 = R0;
.L189:
	R0 = P3;
	SP += 12;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	_lsearch, .-_lsearch
	.align 4
.global _lfind;
.type _lfind, STT_FUNC;
_lfind:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -12;
	R5 = R0;
	P4 = R1;
	P2 = R2;
	P5 = [SP+56];
	P3 = [SP+60];
	R4 = [P2];
	R6 = R1;
	R7 = 0 (X);
	jump.s .L193;
.L194:
	R7 += 1;
.L193:
	cc =R7==R4;
	if cc jump .L197;
	R1 = R6;
	R0 = R5;
	call (P3);
	R1 = P5;
	R6 = R6 + R1;
	cc =R0==0;
	if !cc jump .L194 (bp);
	R7 *= R1;
	P2 = R7;
	P4 = P4 + P2;
	jump.s .L195;
.L197:
	P4 = 0 (X);
.L195:
	R0 = P4;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	_lfind, .-_lfind
	.align 4
.global _abs;
.type _abs, STT_FUNC;
_abs:
	nop;
	nop;
	nop;
	R0 = abs R0;
	rts;
	.size	_abs, .-_abs
	.align 4
.global _atoi;
.type _atoi, STT_FUNC;
_atoi:
	[--sp] = ( p5:4 );

	[--SP] = RETS;
	SP += -12;
	P4 = R0;
.L200:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L200 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L206;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L207 (bp);
	R1 = 1 (X);
.L201:
	P5 += 1;
.L202:
	P2 = 0 (X);
	jump.s .L203;
.L206:
	R1 = 0 (X);
	jump.s .L201;
.L207:
	R1 = 0 (X);
	jump.s .L202;
.L204:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5+-1] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
.L203:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L204 (bp);
	cc =R1==0;
	if !cc jump .L205 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L205:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( p5:4 ) = [sp++];

	rts;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( p5:4 );

	[--SP] = RETS;
	SP += -12;
	P4 = R0;
.L211:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L211 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L217;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L218 (bp);
	R1 = 1 (X);
.L212:
	P5 += 1;
.L213:
	P2 = 0 (X);
	jump.s .L214;
.L217:
	R1 = 0 (X);
	jump.s .L212;
.L218:
	R1 = 0 (X);
	jump.s .L213;
.L215:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5+-1] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
.L214:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L215 (bp);
	cc =R1==0;
	if !cc jump .L216 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L216:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( p5:4 ) = [sp++];

	rts;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P4 = R0;
.L222:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L222 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L228;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L229 (bp);
	R6 = 1 (X);
.L223:
	P5 += 1;
.L224:
	R3 = 0 (X);
	R1 = 0 (X);
	R7 = 0 (X);
	jump.s .L225;
.L228:
	R6 = 0 (X);
	jump.s .L223;
.L229:
	R6 = 0 (X);
	jump.s .L224;
.L226:
	[SP+12] = R7;
	R2 = 10 (X);
	R0 = R3;
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R2 = [SP+16];
	R1 = [SP+20];
	R0 = B [P5+-1] (X);
	R0 += -48;
	R5 = R0;
	R5 >>>= 31;
	R3 = R2 - R0;
	cc =R2<R0 (iu);
	R0 = CC;
	R1 = R1 - R5;
	R1 = R1 - R0;
.L225:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L226 (bp);
	cc =R6==0;
	if !cc jump .L230 (bp);
	R0 = -R3;
	CC = R3;
	R2 = CC;
	R1 = -R1;
	R1 = R1 - R2;
.L227:
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L230:
	R0 = R3;
	jump.s .L227;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	R5 = R1;
	R6 = R2;
	R4 = [SP+52];
	P4 = [SP+56];
	jump.s .L233;
.L240:
	R6 >>= 1;
.L233:
	cc =R6==0;
	if cc jump .L239;
	R7 = R6 >> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R1 = R7;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L240;
	cc =R0<=0;
	if cc jump .L236;
	R5 = R7 + R4;
	R0 = R6 >> 1;
	R6 += -1;
	R6 = R6 - R0;
	jump.s .L233;
.L239:
	R7 = 0 (X);
.L236:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	R5 = R1;
	R6 = R2;
	R4 = [SP+56];
	P3 = [SP+60];
	P4 = [SP+64];
	jump.s .L242;
.L244:
	R6 >>>= 1;
.L242:
	cc =R6==0;
	if cc jump .L247;
	R7 = R6 >>> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R2 = P4;
	R1 = R7;
	R0 = P5;
	call (P3);
	cc =R0==0;
	if cc jump .L243;
	cc =R0<=0;
	if cc jump .L244;
	R5 = R7 + R4;
	R6 += -1;
	jump.s .L244;
.L247:
	R7 = 0 (X);
.L243:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	_bsearch_r, .-_bsearch_r
	.align 4
.global _div;
.type _div, STT_FUNC;
_div:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = R1;
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
	R1 = R0;
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	_div, .-_div
	.align 4
.global _imaxabs;
.type _imaxabs, STT_FUNC;
_imaxabs:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	cc =R1<0;
	if cc jump .L252;
.L250:
	SP += 8;
	rts;
.L252:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L250;
	.size	_imaxabs, .-_imaxabs
	.align 4
.global _imaxdiv;
.type _imaxdiv, STT_FUNC;
_imaxdiv:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -32;
	P5 = P0;
	[SP+56] = R0;
	[SP+60] = R1;
	R7 = R2;
	R6 = [SP+68];
	[SP+12] = R6;
	call ___divdi3;
	R4 = R0;
	R5 = R1;
	[SP+12] = R6;
	R2 = R7;
	R0 = [SP+56];
	R1 = [SP+60];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	[P5] = R4;
	[P5+4] = R5;
	R0 = P5;
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_imaxdiv, .-_imaxdiv
	.align 4
.global _labs;
.type _labs, STT_FUNC;
_labs:
	nop;
	nop;
	nop;
	R0 = abs R0;
	rts;
	.size	_labs, .-_labs
	.align 4
.global _ldiv;
.type _ldiv, STT_FUNC;
_ldiv:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = R1;
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
	R1 = R0;
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	_ldiv, .-_ldiv
	.align 4
.global _llabs;
.type _llabs, STT_FUNC;
_llabs:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	cc =R1<0;
	if cc jump .L259;
.L257:
	SP += 8;
	rts;
.L259:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L257;
	.size	_llabs, .-_llabs
	.align 4
.global _lldiv;
.type _lldiv, STT_FUNC;
_lldiv:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -32;
	P5 = P0;
	[SP+56] = R0;
	[SP+60] = R1;
	R7 = R2;
	R6 = [SP+68];
	[SP+12] = R6;
	call ___divdi3;
	R4 = R0;
	R5 = R1;
	[SP+12] = R6;
	R2 = R7;
	R0 = [SP+56];
	R1 = [SP+60];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	[P5] = R4;
	[P5+4] = R5;
	R0 = P5;
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_lldiv, .-_lldiv
	.align 4
.global _wcschr;
.type _wcschr, STT_FUNC;
_wcschr:
	P2 = R0;
.L263:
	P1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if cc jump .L262;
	nop;
	nop;
	nop;
	R0 = [P2+-4];
	cc =R1==R0;
	if !cc jump .L263 (bp);
.L262:
	R0 = [P1];
	cc =R0==0;
	if cc jump .L267;
.L264:
	R0 = P1;
	rts;
.L267:
	P1 = 0 (X);
	jump.s .L264;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	[--sp] = ( p5:5 );

	P2 = R0;
	P1 = R1;
.L270:
	P0 = P1;
	P5 = P2;
	R1 = [P2++];
	R0 = [P1++];
	cc =R1==R0;
	if !cc jump .L269;
	nop;
	nop;
	nop;
	R0 = [P2+-4];
	cc =R0==0;
	if cc jump .L269;
	nop;
	nop;
	nop;
	R0 = [P1+-4];
	cc =R0==0;
	if !cc jump .L270 (bp);
.L269:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L272 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
.L271:
	( p5:5 ) = [sp++];

	rts;
.L272:
	R0 = -1 (X);
	jump.s .L271;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P1 = R1;
	P2 = R0;
.L275:
	nop;
	R0 = [P1++];
	[P2] = R0;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L275 (bp);
	R0 = R2;
	rts;
	.size	_wcscpy, .-_wcscpy
	.align 4
.global _wcslen;
.type _wcslen, STT_FUNC;
_wcslen:
	R2 = R0;
	P2 = R0;
.L278:
	R1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L278 (bp);
	R1 = R1 - R2;
	R1 >>>= 2;
	R0 = R1;
	rts;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:5 );

	P2 = R0;
	P1 = R1;
	R0 = R2;
.L281:
	P0 = P1;
	P5 = P2;
	cc =R0==0;
	if cc jump .L282;
	nop;
	nop;
	nop;
	R2 = [P2];
	R1 = [P1];
	cc =R2==R1;
	if !cc jump .L282;
	nop;
	nop;
	nop;
	R1 = [P2++];
	cc =R1==0;
	if cc jump .L282;
	nop;
	nop;
	nop;
	R1 = [P1++];
	cc =R1==0;
	if cc jump .L282;
	R0 += -1;
	jump.s .L281;
.L282:
	cc =R0==0;
	if cc jump .L285 (bp);
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L286 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L284;
.L285:
	R0 = 0 (X);
.L284:
	( p5:5 ) = [sp++];

	rts;
.L286:
	R0 = -1 (X);
	jump.s .L284;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	P2 = R0;
	R3 = R1;
	R0 = R2;
	jump.s .L288;
.L290:
	R0 += -1;
.L288:
	R2 = P2;
	cc =R0==0;
	if cc jump .L289;
	nop;
	nop;
	nop;
	R1 = [P2++];
	cc =R3==R1;
	if !cc jump .L290 (bp);
.L289:
	cc =R0==0;
	if cc jump .L293;
.L291:
	R0 = R2;
	rts;
.L293:
	R2 = 0 (X);
	jump.s .L291;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[--sp] = ( p5:5 );

	P1 = R0;
	P2 = R1;
	R0 = R2;
	jump.s .L295;
.L297:
	R0 += -1;
.L295:
	P0 = P2;
	P5 = P1;
	cc =R0==0;
	if cc jump .L296;
	nop;
	nop;
	nop;
	R2 = [P1++];
	R1 = [P2++];
	cc =R2==R1;
	if cc jump .L297 (bp);
.L296:
	cc =R0==0;
	if cc jump .L299 (bp);
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L300 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L298;
.L299:
	R0 = 0 (X);
.L298:
	( p5:5 ) = [sp++];

	rts;
.L300:
	R0 = -1 (X);
	jump.s .L298;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	R3 = R0;
	P2 = R1;
	R0 = R2;
	P1 = R3;
	jump.s .L302;
.L303:
	nop;
	R1 = [P2++];
	[P1++] = R1;
.L302:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L303 (bp);
	R0 = R3;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	[--sp] = ( p5:5 );

	R3 = R0;
	P1 = R1;
	R0 = R2;
	cc =R3==R1;
	if cc jump .L305;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	if cc jump .L306 (bp);
	P2 = R3;
	jump.s .L307;
.L306:
	R0 += -1;
	P0 = R0;
	P2 = P0 << 2;
	P1 = P1 + P2;
	P5 = R3;
	P0 = P5 + P2;
	P2 += 4;
	P2 = P2 >> 2;
	P2 += 1;
	jump.s .L308;
.L309:
	R0 = [P1--];
	[P0--] = R0;
.L308:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L309;
.L305:
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
.L310:
	nop;
	R1 = [P1++];
	[P2++] = R1;
.L307:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L310 (bp);
	jump.s .L305;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	R3 = R0;
	R0 = R2;
	P2 = R3;
	jump.s .L312;
.L313:
	[P2++] = R1;
.L312:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L313 (bp);
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =P2<P1 (iu);
	if !cc jump .L315 (bp);
	P0 = R2;
	P2 = P2 + P0;
	R1 = R1 + R0;
	P2 += -1;
	P1 = R1;
	P1 += -1;
	R0 = ~R0;
	R0 = R0 + R1;
	jump.s .L316;
.L317:
	nop;
	R1 = B [P2--] (X);
	B [P1--] = R1;
.L316:
	R1 = P1;
	cc =R1==R0;
	if !cc jump .L317 (bp);
.L314:
	rts;
.L315:
	cc =P2==P1;
	if cc jump .L314;
	R2 = P2;
	R0 = R2 + R0;
	jump.s .L319;
.L320:
	nop;
	R1 = B [P2++] (X);
	B [P1++] = R1;
.L319:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L320 (bp);
	jump.s .L314;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4 );

	R3 = R0;
	R7 = R1;
	R0 = R2;
	R5 = R2;
	R5 += -32;
	R4 = R3;
	R4 <<= R5;
	P2 = 0 (X);
	R6 = R3 >> 1;
	R1 = 31 (X);
	R2 = R1 - R2;
	R6 >>= R2;
	R2 = R7;
	R2 <<= R0;
	R2 = R6 | R2;
	R6 = R3;
	R6 <<= R0;
	cc =R5<0;
	if !cc R2 = R4;
	cc =R5<0;
	if !cc R6 = P2;
	R0 = -R0;
	R5 = 63 (X);
	R0 = R0 & R5;
	R5 = R0;
	R5 += -32;
	R4 = R7;
	R4 >>= R5;
	P1 = R4;
	R4 = R7 << 1;
	R1 = R1 - R0;
	R4 <<= R1;
	R3 >>= R0;
	R3 = R4 | R3;
	R7 >>= R0;
	cc =R5<0;
	if !cc R3 = P1;
	cc =R5<0;
	if !cc R7 = P2;
	R6 = R6 | R3;
	R2 = R2 | R7;
	R0 = R6;
	R1 = R2;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotl64, .-_rotl64
	.align 4
.global _rotr64;
.type _rotr64, STT_FUNC;
_rotr64:
	[--sp] = ( r7:4 );

	R3 = R0;
	R0 = R2;
	R5 = R2;
	R5 += -32;
	R4 = R1;
	R4 >>= R5;
	P2 = 0 (X);
	R7 = R1 << 1;
	R6 = 31 (X);
	R2 = R6 - R2;
	R7 <<= R2;
	R2 = R3;
	R2 >>= R0;
	R2 = R7 | R2;
	R7 = R1;
	R7 >>= R0;
	cc =R5<0;
	if !cc R2 = R4;
	cc =R5<0;
	if !cc R7 = P2;
	R0 = -R0;
	R5 = 63 (X);
	R0 = R0 & R5;
	R5 = R0;
	R5 += -32;
	R4 = R3;
	R4 <<= R5;
	P1 = R4;
	R4 = R3 >> 1;
	R6 = R6 - R0;
	R4 >>= R6;
	R1 <<= R0;
	R1 = R4 | R1;
	R3 <<= R0;
	cc =R5<0;
	if !cc R1 = P1;
	cc =R5<0;
	if !cc R3 = P2;
	R2 = R2 | R3;
	R7 = R7 | R1;
	R0 = R2;
	R1 = R7;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotr64, .-_rotr64
	.align 4
.global _rotl32;
.type _rotl32, STT_FUNC;
_rotl32:
	R2 = R0;
	R2 <<= R1;
	R1 = -R1;
	R3 = 31 (X);
	R1 = R1 & R3;
	R0 >>= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotl32, .-_rotl32
	.align 4
.global _rotr32;
.type _rotr32, STT_FUNC;
_rotr32:
	R2 = R0;
	R2 >>= R1;
	R1 = -R1;
	R3 = 31 (X);
	R1 = R1 & R3;
	R0 <<= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotr32, .-_rotr32
	.align 4
.global _rotl_sz;
.type _rotl_sz, STT_FUNC;
_rotl_sz:
	R2 = R0;
	R2 <<= R1;
	R1 = -R1;
	R3 = 31 (X);
	R1 = R1 & R3;
	R0 >>= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotl_sz, .-_rotl_sz
	.align 4
.global _rotr_sz;
.type _rotr_sz, STT_FUNC;
_rotr_sz:
	R2 = R0;
	R2 >>= R1;
	R1 = -R1;
	R3 = 31 (X);
	R1 = R1 & R3;
	R0 <<= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotr_sz, .-_rotr_sz
	.align 4
.global _rotl16;
.type _rotl16, STT_FUNC;
_rotl16:
	R2 = R1;
	R1 = R0.L (Z);
	R0 = R1;
	R0 <<= R2;
	R3 = 16 (X);
	R2 = R3 - R2;
	R1 >>= R2;
	R0 = R0 | R1;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	R2 = R1;
	R1 = R0.L (Z);
	R0 = R1;
	R0 >>= R2;
	R3 = 16 (X);
	R2 = R3 - R2;
	R1 <<= R2;
	R0 = R0 | R1;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	R2 = R1;
	R1 = R0.B (Z);
	R0 = R1;
	R0 <<= R2;
	R3 = 8 (X);
	R2 = R3 - R2;
	R1 >>= R2;
	R0 = R0 | R1;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	R2 = R1;
	R1 = R0.B (Z);
	R0 = R1;
	R0 >>= R2;
	R3 = 8 (X);
	R2 = R3 - R2;
	R1 <<= R2;
	R0 = R0 | R1;
	rts;
	.size	_rotr8, .-_rotr8
	.align 4
.global _bswap_16;
.type _bswap_16, STT_FUNC;
_bswap_16:
	R1 = R0;
	R0 = R1 >> 8;
	R0 = R0.B (Z);
	R1 = R1.B (Z);
	R1 <<= 8;
	R0 = R0 | R1;
	rts;
	.size	_bswap_16, .-_bswap_16
	.align 4
.global _bswap_32;
.type _bswap_32, STT_FUNC;
_bswap_32:
	R1 = R0;
	R2 = R0 >> 24;
	R0 = 255 (X);
	R0 <<= 16;
	R0 = R1 & R0;
	R0 >>= 8;
	R0 = R0 | R2;
	R2 = 65280 (Z);
	R2 = R1 & R2;
	R2 <<= 8;
	R0 = R0 | R2;
	R1 <<= 24;
	R0 = R0 | R1;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:6 );

	R2 = R0;
	R3 = R1 >> 24;
	R6 = 255 (X);
	R6 <<= 16;
	R0 = R1 & R6;
	R0 >>= 8;
	R0 = R0 | R3;
	R7 = 65280 (Z);
	R3 = R1 & R7;
	R3 <<= 8;
	R0 = R0 | R3;
	R1 <<= 24;
	R3 = R2 >> 24;
	R6 = R2 & R6;
	R6 >>= 8;
	R0 = R0 | R1;
	R1 = R3 | R6;
	R7 = R2 & R7;
	R7 <<= 8;
	R1 = R1 | R7;
	R2 <<= 24;
	R1 = R1 | R2;
	( r7:6 ) = [sp++];

	rts;
	.size	_bswap_64, .-_bswap_64
	.align 4
.global _ffs;
.type _ffs, STT_FUNC;
_ffs:
	R2 = R0;
	R0 = 0 (X);
	P2 = 33 (X);
.L335:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L338;
	jump.s .L341;
.L338:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L340;
	R0 += 1;
	jump.s .L335;
.L340:
	R0 += 1;
.L337:
	rts;
.L341:
	R0 = 0 (X);
	jump.s .L337;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L346;
	R1 = 1 (X);
	jump.s .L344;
.L345:
	R0 >>>= 1;
	R1 += 1;
.L344:
	cc = !BITTST (R0,0);
	if cc jump .L345 (bp);
.L343:
	R0 = R1;
	rts;
.L346:
	R1 = 0 (X);
	jump.s .L343;
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 4
.global _gl_isinff;
.type _gl_isinff, STT_FUNC;
_gl_isinff:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R1 = -1 (X);
	R1.H = 65407;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L350 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L351;
.L349:
	R6 = R6.B (Z);
.L348:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L351:
	R6 = 0 (X);
	jump.s .L349;
.L350:
	R6 = 1 (X);
	jump.s .L348;
	.size	_gl_isinff, .-_gl_isinff
	.align 4
.global _gl_isinfd;
.type _gl_isinfd, STT_FUNC;
_gl_isinfd:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	R0 = -1 (X);
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L355 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L356;
.L354:
	R7 = R7.B (Z);
.L353:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L356:
	R7 = 0 (X);
	jump.s .L354;
.L355:
	R7 = 1 (X);
	jump.s .L353;
	.size	_gl_isinfd, .-_gl_isinfd
	.align 4
.global _gl_isinfl;
.type _gl_isinfl, STT_FUNC;
_gl_isinfl:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	R0 = -1 (X);
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L360 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L361;
.L359:
	R7 = R7.B (Z);
.L358:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L361:
	R7 = 0 (X);
	jump.s .L359;
.L360:
	R7 = 1 (X);
	jump.s .L358;
	.size	_gl_isinfl, .-_gl_isinfl
	.align 4
.global __Qp_itoq;
.type __Qp_itoq, STT_FUNC;
__Qp_itoq:
	[--sp] = ( p5:5 );

	[--SP] = RETS;
	SP += -20;
	P5 = R0;
	R0 = R1;
	call ___floatsidf;
	[P5] = R0;
	[P5+4] = R1;
	SP += 20;
	RETS = [SP++];
	( p5:5 ) = [sp++];

	rts;
	.size	__Qp_itoq, .-__Qp_itoq
	.align 4
.global _ldexpf;
.type _ldexpf, STT_FUNC;
_ldexpf:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R5 = R0;
	R7 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L364;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R0;
	R0 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L364 (bp);
	cc =R7<0;
	if cc jump .L371;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L368;
.L371:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L368;
.L367:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L364;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L368:
	cc = !BITTST (R7,0);
	if cc jump .L367 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L367;
.L364:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	_ldexpf, .-_ldexpf
	.align 4
.global _ldexp;
.type _ldexp, STT_FUNC;
_ldexp:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -32;
	[SP+48] = R0;
	[SP+52] = R1;
	R5 = R2;
	[SP+12] = R1;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L373;
	R0 = [SP+52];
	[SP+12] = R0;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	R2 = R0;
	[SP+12] = R1;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L373 (bp);
	cc =R5<0;
	if cc jump .L380;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L377;
.L380:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L377;
.L376:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L373;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L377:
	cc = !BITTST (R5,0);
	if cc jump .L376 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L376;
.L373:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	_ldexp, .-_ldexp
	.align 4
.global _ldexpl;
.type _ldexpl, STT_FUNC;
_ldexpl:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -32;
	[SP+48] = R0;
	[SP+52] = R1;
	R5 = R2;
	[SP+12] = R1;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L382;
	R0 = [SP+52];
	[SP+12] = R0;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	R2 = R0;
	[SP+12] = R1;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L382 (bp);
	cc =R5<0;
	if cc jump .L389;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L386;
.L389:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L386;
.L385:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L382;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L386:
	cc = !BITTST (R5,0);
	if cc jump .L385 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L385;
.L382:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	R3 = R0;
	P2 = R1;
	R2 = R1 + R2;
	P1 = R0;
	jump.s .L391;
.L392:
	nop;
	R0 = B [P2++] (X);
	R1 = B [P1++] (X);
	R0 = R0 ^ R1;
	B [P1+-1] = R0;
.L391:
	R0 = P2;
	cc =R0==R2;
	if !cc jump .L392 (bp);
	R0 = R3;
	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R5 = R0;
	R6 = R1;
	R7 = R2;
	call _strlen;
	P2 = R0;
	P1 = R6;
	P0 = R5;
	P2 = P0 + P2;
	jump.s .L394;
.L396:
	R7 += -1;
.L394:
	P0 = P2;
	cc =R7==0;
	if cc jump .L395;
	nop;
	nop;
	nop;
	R0 = B [P1++] (X);
	B [P2] = R0;
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L396 (bp);
.L395:
	cc =R7==0;
	if !cc jump .L397 (bp);
	R0 = 0 (X);
	B [P0] = R0;
.L397:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	R1 = 0 (X);
.L399:
	cc =R1==R0;
	if cc jump .L400;
	nop;
	nop;
	nop;
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L401;
.L400:
	R0 = R1;
	rts;
.L401:
	R1 += 1;
	jump.s .L399;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R3 = R1;
.L403:
	R2 = P1;
	R0 = B [P1++] (X);
	cc =R0==0;
	if cc jump .L408;
	nop;
	nop;
	P2 = R3;
.L406:
	nop;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L403;
	nop;
	nop;
	nop;
	R1 = B [P2+-1] (X);
	R0 = B [P1+-1] (X);
	cc =R1==R0;
	if !cc jump .L406 (bp);
.L404:
	R0 = R2;
	rts;
.L408:
	R2 = 0 (X);
	jump.s .L404;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R2 = R1;
	R3 = 0 (X);
	jump.s .L411;
.L410:
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if cc jump .L414;
	nop;
	nop;
.L411:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L410 (bp);
	R3 = R1;
	jump.s .L410;
.L414:
	R0 = R3;
	rts;
	.size	_strrchr, .-_strrchr
	.align 4
.global _strstr;
.type _strstr, STT_FUNC;
_strstr:
	[--sp] = ( r7:5, p5:5 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	P5 = R1;
	R0 = R1;
	call _strlen;
	R6 = R0;
	cc =R0==0;
	if cc jump .L416;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
.L417:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if cc jump .L416;
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L416;
	R7 += 1;
	jump.s .L417;
.L416:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:5, p5:5 ) = [sp++];

	rts;
	.size	_strstr, .-_strstr
	.align 4
.global _copysign;
.type _copysign, STT_FUNC;
_copysign:
	[--SP] = RETS;
	SP += -32;
	[SP+36] = R0;
	[SP+40] = R1;
	[SP+44] = R2;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L434;
.L422:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L432;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+44];
	R1 = [SP+48];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L424;
	R2 = [SP+36];
	R3 = [SP+40];
	[SP+24] = R2;
	[SP+28] = R3;
.L425:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L434:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+44];
	R1 = [SP+48];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L422 (bp);
.L424:
	R3 = [SP+36];
	[SP+24] = R3;
	R0 = [SP+40];
	BITTGL (R0, 31);
	[SP+28] = R0;
	jump.s .L425;
.L432:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+24] = R1;
	[SP+28] = R2;
	jump.s .L425;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	R0 = R1;
	P4 = R2;
	R5 = [SP+52];
	R7 = R1 - R5;
	R1 = P5;
	R7 = R1 + R7;
	cc =R5==0;
	if cc jump .L436;
	cc =R0<R5 (iu);
	if cc jump .L441;
	R4 = R2;
	R4 += 1;
	R5 += -1;
.L437:
	R6 = P5;
	cc =R6<=R7 (iu);
	if !cc jump .L443;
	nop;
	nop;
	nop;
	R1 = B [P5++] (X);
	R0 = B [P4] (X);
	cc =R1==R0;
	if !cc jump .L437 (bp);
	R2 = R5;
	R1 = R4;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L437 (bp);
	P5 = R6;
	jump.s .L436;
.L443:
	P5 = 0 (X);
.L436:
	R0 = P5;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L441:
	P5 = 0 (X);
	jump.s .L436;
	.size	_memmem, .-_memmem
	.align 4
.global _mempcpy;
.type _mempcpy, STT_FUNC;
_mempcpy:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	R7 = R2;
	call _memcpy;
	R0 = R0 + R7;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_mempcpy, .-_mempcpy
	.align 4
.global _frexp;
.type _frexp, STT_FUNC;
_frexp:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -24;
	[SP+48] = R0;
	[SP+52] = R1;
	P5 = R2;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L465;
	R4 = 0 (X);
.L446:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L466;
	R7 = 0 (X);
	R6 = 1023 (X);
	R6 <<= 20;
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L448;
.L465:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L446;
.L450:
	R7 += 1;
	[SP+12] = R5;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L448:
	[SP+12] = R6;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L450 (bp);
.L451:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L455 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L455:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L466:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L464 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L459 (bp);
	R7 = 0 (X);
	jump.s .L451;
.L454:
	R7 += -1;
	R0 = [SP+52];
	[SP+12] = R0;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L453:
	[SP+12] = R6;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L454 (bp);
	jump.s .L451;
.L459:
	R7 = 0 (X);
	R6 = 511 (X);
	R6 <<= 21;
	jump.s .L453;
.L464:
	R7 = 0 (X);
	jump.s .L451;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:4, p5:3 );

	LINK 24;
	[SP+16] = R0;
	[SP+20] = R1;
	R4 = [SP+16];
	R7 = R1;
	R6 = R2;
	R5 = [SP+72];
	P5 = 0 (X);
	P4 = 0 (X);
	FP = 1 (X);
	P3 = 0 (X);
	jump.s .L468;
.L469:
	R1 = FP;
	R0 = R4 & R1;
	[SP+12] = P3;
	R2 = R0;
	R0 = R6;
	R1 = R5;
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	R2 = P5;
	R0 = R2 + R0; cc = ac0;
	R2 = CC;
	P2 = R1;
	P4 = P4 + P2;
	CC = R0 < R0;
	R6 = ROT R6 BY 1;
	R5 = ROT R5 BY 1;
	CC = R0 < R0;
	R7 = ROT R7 BY -1;
	R4 = ROT R4 BY -1;
	P5 = R0;
	P2 = R2;
	P4 = P4 + P2;
.L468:
	R0 = R4 | R7;
	cc =R0==0;
	if !cc jump .L469 (bp);
	R0 = P5;
	R1 = P4;
	SP += 24;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	___muldi3, .-___muldi3
	.align 4
.global _udivmodsi4;
.type _udivmodsi4, STT_FUNC;
_udivmodsi4:
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	P2 = 33 (X);
	LSETUP (.L481, .L489) LC1 = P2;
	jump.s .L471;
.L481:
	cc =R0<0;
	if cc jump .L487;
	R0 <<= 1;
	R1 <<= 1;
.L471:
	cc =R0<R3 (iu);
	if !cc jump .L483;
.L489:
	nop;
	jump.s .L488;
.L487:
	R2 = 0 (X);
	jump.s .L473;
.L483:
	R2 = 0 (X);
	jump.s .L473;
.L488:
	R2 = 0 (X);
	jump.s .L473;
.L476:
	R1 >>= 1;
	R0 >>= 1;
.L473:
	cc =R1==0;
	if cc jump .L485;
	cc =R3<R0 (iu);
	if cc jump .L476 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L476;
.L485:
	cc =P1==0;
	if !cc jump .L486;
.L478:
	R0 = R2;
	rts;
.L486:
	R2 = R3;
	jump.s .L478;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	[--SP] = RETS;
	SP += -12;
	R1 = R0;
	R0 = R0.B (X);
	R0 >>>= 7;
	R0 = R0 ^ R1;
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L492;
	R0 = R1;
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L491:
	SP += 12;
	RETS = [SP++];
	rts;
.L492:
	R0 = 7 (X);
	jump.s .L491;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	[--SP] = RETS;
	SP += -12;
	R2 = R0;
	R0 = R1 >>> 31;
	R2 = R0 ^ R2;
	R1 = R0 ^ R1;
	R0 = R2 | R1;
	cc =R0==0;
	if cc jump .L496;
	R0 = R2;
	call ___clzdi2;
	R0 += -1;
.L494:
	SP += 12;
	RETS = [SP++];
	rts;
.L496:
	R0 = 63 (X);
	jump.s .L494;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L498;
.L499:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R2 >>= 1;
	R3 = R0 + R3;
	R1 <<= 1;
.L498:
	cc =R2==0;
	if !cc jump .L499 (bp);
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:6, p5:5 );

	P2 = R0;
	R7 = R2;
	R2 >>= 3;
	R0 = -8 (X);
	R0 = R7 & R0;
	R3 = P2;
	cc =R3<R1 (iu);
	if cc jump .L501 (bp);
	R3 = R1 + R7;
	R6 = P2;
	cc =R3<R6 (iu);
	if !cc jump .L502 (bp);
.L501:
	P5 = R1;
	P0 = P2;
	P1 = R2;
	P1 += 1;
	jump.s .L503;
.L502:
	R7 += -1;
	R0 = R1 + R7;
	P0 = R0;
	P1 = R7;
	P2 = P2 + P1;
	R1 += -1;
	jump.s .L504;
.L505:
	R2 = [P5];
	R3 = [P5+4];
	[P0] = R2;
	[P0+4] = R3;
	P5 += 8;
	P0 += 8;
.L503:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L505;
	R1 = R1 + R0;
	P1 = R1;
	P0 = R0;
	P2 = P2 + P0;
	jump.s .L506;
.L507:
	nop;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R0 += 1;
.L506:
	cc =R7<=R0 (iu);
	if !cc jump .L507 (bp);
.L500:
	( r7:6, p5:5 ) = [sp++];

	rts;
.L509:
	nop;
	R0 = B [P0--] (X);
	B [P2--] = R0;
.L504:
	R0 = P0;
	cc =R0==R1;
	if !cc jump .L509 (bp);
	jump.s .L500;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	R3 = R0;
	P1 = R2;
	P2 = P1 >> 1;
	cc =R0<R1 (iu);
	if cc jump .L511 (bp);
	R0 = R1 + R2;
	cc =R0<R3 (iu);
	if !cc jump .L512 (bp);
.L511:
	P0 = R3;
	P1 = R1;
	P2 += 1;
	jump.s .L513;
.L512:
	R2 += -1;
	R0 = R1 + R2;
	P1 = R0;
	R3 = R3 + R2;
	P2 = R3;
	R1 += -1;
	jump.s .L514;
.L515:
	R0 = W [P1++] (X);
	W [P0++] = R0;
.L513:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L515;
	cc = !BITTST (R2,0);
	if cc jump .L510 (bp);
	R2 += -1;
	R1 = R1 + R2;
	P1 = R1;
	R3 = R3 + R2;
	P2 = R3;
	R0 = B [P1] (X);
	B [P2] = R0;
.L510:
	rts;
.L517:
	nop;
	R0 = B [P1--] (X);
	B [P2--] = R0;
.L514:
	R0 = P1;
	cc =R0==R1;
	if !cc jump .L517 (bp);
	jump.s .L510;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( r7:7, p5:5 );

	P2 = R0;
	P0 = R2;
	P1 = P0 >> 2;
	R0 = -4 (X);
	R0 = R2 & R0;
	R3 = P2;
	cc =R3<R1 (iu);
	if cc jump .L519 (bp);
	R3 = R1 + R2;
	R7 = P2;
	cc =R3<R7 (iu);
	if !cc jump .L520 (bp);
.L519:
	P5 = P2;
	P0 = R1;
	P1 += 1;
	jump.s .L521;
.L520:
	R2 += -1;
	R0 = R1 + R2;
	P0 = R0;
	P1 = R2;
	P2 = P2 + P1;
	R1 += -1;
	jump.s .L522;
.L523:
	R3 = [P0++];
	[P5++] = R3;
.L521:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L523;
	R1 = R1 + R0;
	P1 = R1;
	P0 = R0;
	P2 = P2 + P0;
	jump.s .L524;
.L525:
	nop;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R0 += 1;
.L524:
	cc =R2<=R0 (iu);
	if !cc jump .L525 (bp);
.L518:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L527:
	nop;
	R0 = B [P0--] (X);
	B [P2--] = R0;
.L522:
	R0 = P0;
	cc =R0==R1;
	if !cc jump .L527 (bp);
	jump.s .L518;
	.size	___cmovw, .-___cmovw
	.align 4
.global ___modi;
.type ___modi, STT_FUNC;
___modi:
	[--SP] = RETS;
	SP += -12;
	call ___modsi3;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	___modi, .-___modi
	.align 4
.global ___uitod;
.type ___uitod, STT_FUNC;
___uitod:
	[--SP] = RETS;
	SP += -20;
	call ___floatunsidf;
	[SP+12] = R0;
	[SP+16] = R1;
	SP += 20;
	RETS = [SP++];
	rts;
	.size	___uitod, .-___uitod
	.align 4
.global ___uitof;
.type ___uitof, STT_FUNC;
___uitof:
	[--SP] = RETS;
	SP += -12;
	call ___floatunsisf;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	___uitof, .-___uitof
	.align 4
.global ___ulltod;
.type ___ulltod, STT_FUNC;
___ulltod:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	call ___floatundidf;
	[SP+12] = R0;
	[SP+16] = R1;
	SP += 20;
	RETS = [SP++];
	rts;
	.size	___ulltod, .-___ulltod
	.align 4
.global ___ulltof;
.type ___ulltof, STT_FUNC;
___ulltof:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	call ___floatundisf;
	SP += 20;
	RETS = [SP++];
	rts;
	.size	___ulltof, .-___ulltof
	.align 4
.global ___umodi;
.type ___umodi, STT_FUNC;
___umodi:
	[--SP] = RETS;
	SP += -12;
	call ___umodsi3;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	___umodi, .-___umodi
	.align 4
.global ___clzhi2;
.type ___clzhi2, STT_FUNC;
___clzhi2:
	[--sp] = ( r7:7 );

	R3 = R0;
	R0 = 0 (X);
	R3 = R3.L (Z);
	R7 = 15 (X);
	P2 = 17 (X);
.L535:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L537;
	jump.s .L536;
.L537:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L536;
	R0 += 1;
	jump.s .L535;
.L536:
	( r7:7 ) = [sp++];

	rts;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	R2 = R0;
	R0 = 0 (X);
	R2 = R2.L (Z);
	P2 = 17 (X);
.L539:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L541;
	jump.s .L540;
.L541:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L540;
	R0 += 1;
	jump.s .L539;
.L540:
	rts;
	.size	___ctzhi2, .-___ctzhi2
	.align 4
.global ___fixunssfsi;
.type ___fixunssfsi, STT_FUNC;
___fixunssfsi:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R1 = 71 (X);
	R1 <<= 24;
	call ___gesf2;
	cc =R0<0;
	if !cc jump .L548;
	R0 = R7;
	call ___fixsfsi;
.L545:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L548:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L545;
	.size	___fixunssfsi, .-___fixunssfsi
	.align 4
.global ___parityhi2;
.type ___parityhi2, STT_FUNC;
___parityhi2:
	[--sp] = ( r7:7 );

	R2 = 0 (X);
	R1 = 0 (X);
	R3 = R0.L (Z);
	R7 = 1 (X);
	P2 = 17 (X);
	jump.s .L550;
.L551:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R1 += 1;
	R2 = R0 + R2;
.L550:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L551;
	R0 = 1 (X);
	R2 = R2 & R0;
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	[--sp] = ( r7:7 );

	R2 = 0 (X);
	R1 = 0 (X);
	R3 = R0.L (Z);
	R7 = 1 (X);
	P2 = 17 (X);
	jump.s .L553;
.L554:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R1 += 1;
	R2 = R0 + R2;
.L553:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L554;
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L556;
.L557:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R2 >>= 1;
	R3 = R0 + R3;
	R1 <<= 1;
.L556:
	cc =R2==0;
	if !cc jump .L557 (bp);
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L562;
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L560;
.L561:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R1 >>= 1;
	R3 = R0 + R3;
	R2 <<= 1;
.L560:
	cc =R1==0;
	if !cc jump .L561 (bp);
.L559:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L562:
	R3 = 0 (X);
	jump.s .L559;
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 4
.global ___udivmodsi4;
.type ___udivmodsi4, STT_FUNC;
___udivmodsi4:
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	P2 = 33 (X);
	LSETUP (.L574, .L582) LC1 = P2;
	jump.s .L564;
.L574:
	cc =R0<0;
	if cc jump .L580;
	R0 <<= 1;
	R1 <<= 1;
.L564:
	cc =R0<R3 (iu);
	if !cc jump .L576;
.L582:
	nop;
	jump.s .L581;
.L580:
	R2 = 0 (X);
	jump.s .L566;
.L576:
	R2 = 0 (X);
	jump.s .L566;
.L581:
	R2 = 0 (X);
	jump.s .L566;
.L569:
	R1 >>= 1;
	R0 >>= 1;
.L566:
	cc =R1==0;
	if cc jump .L578;
	cc =R3<R0 (iu);
	if cc jump .L569 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L569;
.L578:
	cc =P1==0;
	if !cc jump .L579;
.L571:
	R0 = R2;
	rts;
.L579:
	R2 = R3;
	jump.s .L571;
	.size	___udivmodsi4, .-___udivmodsi4
	.align 4
.global ___mspabi_cmpf;
.type ___mspabi_cmpf, STT_FUNC;
___mspabi_cmpf:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = R1;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L586;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L587;
.L585:
	R5 = R5.B (Z);
.L584:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L587:
	R5 = 0 (X);
	jump.s .L585;
.L586:
	R5 = -1 (X);
	jump.s .L584;
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 4
.global ___mspabi_cmpd;
.type ___mspabi_cmpd, STT_FUNC;
___mspabi_cmpd:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -24;
	[SP+40] = R0;
	[SP+44] = R1;
	[SP+48] = R2;
	R6 = [SP+48];
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L591;
	R5 = 1 (X);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L592;
.L590:
	R5 = R5.B (Z);
.L589:
	R0 = R5;
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L592:
	R5 = 0 (X);
	jump.s .L590;
.L591:
	R5 = -1 (X);
	jump.s .L589;
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 4
.global ___mspabi_mpysll;
.type ___mspabi_mpysll, STT_FUNC;
___mspabi_mpysll:
	[--SP] = R4;
	[--SP] = RETS;
	SP += -24;
	R2 = R0;
	R4 = R2;
	R4 >>>= 31;
	[SP+16] = R2;
	[SP+20] = R4;
	R3 = R1;
	R3 >>>= 31;
	[SP+12] = R3;
	R2 = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	R4 = [SP++];
	rts;
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 4
.global ___mspabi_mpyull;
.type ___mspabi_mpyull, STT_FUNC;
___mspabi_mpyull:
	[--SP] = RETS;
	SP += -24;
	R2 = 0 (X);
	[SP+12] = R2;
	R2 = R1;
	R1 = 0 (X);
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	rts;
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 4
.global ___mulhi3;
.type ___mulhi3, STT_FUNC;
___mulhi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R1<0;
	if cc jump .L603;
	P1 = 0 (X);
.L596:
	P2 = 33 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L597;
.L603:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L596;
.L599:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R1 >>>= 1;
	R3 = R3 + R0;
	R2 <<= 1;
.L597:
	cc =R1==0;
	if cc jump .L598;
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L599 (bp);
.L598:
	cc =P1==0;
	if cc jump .L600 (bp);
	R3 = -R3;
.L600:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L609;
	R7 = 0 (X);
.L605:
	cc =R1<0;
	if cc jump .L610;
.L606:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L607 (bp);
	R0 = -R0;
.L607:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L609:
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L605;
.L610:
	R1 = -R1;
	BITTGL (R7, 0);
	jump.s .L606;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	R3 = R0;
	R0 = R1;
	cc =R3<0;
	if cc jump .L615;
	R7 = 0 (X);
.L612:
	R0 = abs R0;
	R2 = 1 (X);
	R1 = R0;
	R0 = R3;
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L613 (bp);
	R0 = -R0;
.L613:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L615:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L612;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	[--sp] = ( r7:6 );

	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	R7 = R3.L (Z);
	P2 = 17 (X);
.L617:
	R2 = R0.L (Z);
	cc =R2<R7 (iu);
	if !cc jump .L629;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L627;
	jump.s .L634;
.L627:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L631;
	R0 <<= 1;
	R1 <<= 1;
	jump.s .L617;
.L629:
	R6 = 0 (X);
	jump.s .L619;
.L634:
	R6 = 0 (X);
	jump.s .L619;
.L631:
	R6 = 0 (X);
	jump.s .L619;
.L622:
	R1 <<= 16;
	R1 >>= 17;
	R0 <<= 16;
	R0 >>= 17;
.L619:
	R2 = R1.L (Z);
	cc =R2==0;
	if cc jump .L632;
	R2 = R3.L (Z);
	R7 = R0.L (Z);
	cc =R2<R7 (iu);
	if cc jump .L622 (bp);
	R3 = R3 - R0;
	R6 = R6 | R1;
	jump.s .L622;
.L632:
	cc =P1==0;
	if !cc jump .L633;
.L624:
	R0 = R6;
	( r7:6 ) = [sp++];

	rts;
.L633:
	R6 = R3;
	jump.s .L624;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	P2 = 33 (X);
	LSETUP (.L646, .L654) LC1 = P2;
	jump.s .L636;
.L646:
	cc =R0<0;
	if cc jump .L652;
	R0 <<= 1;
	R1 <<= 1;
.L636:
	cc =R0<R3 (iu);
	if !cc jump .L648;
.L654:
	nop;
	jump.s .L653;
.L652:
	R2 = 0 (X);
	jump.s .L638;
.L648:
	R2 = 0 (X);
	jump.s .L638;
.L653:
	R2 = 0 (X);
	jump.s .L638;
.L641:
	R1 >>= 1;
	R0 >>= 1;
.L638:
	cc =R1==0;
	if cc jump .L650;
	cc =R3<R0 (iu);
	if cc jump .L641 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L641;
.L650:
	cc =P1==0;
	if !cc jump .L651;
.L643:
	R0 = R2;
	rts;
.L651:
	R2 = R3;
	jump.s .L643;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:7 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R3 = [SP+4];
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L656 (bp);
	R2 = 0 (X);
	R0 += -32;
	R1 <<= R0;
.L657:
	R0 = R2;
.L658:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L656:
	cc =R2==0;
	if cc jump .L659;
	R2 = R1;
	R2 <<= R0;
	R3 <<= R0;
	P2 = 32 (X);
	R7 = P2;
	R0 = R7 - R0;
	R1 >>= R0;
	R1 = R1 | R3;
	jump.s .L657;
.L659:
	R0 = R1;
	R1 = R3;
	jump.s .L658;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:7 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R3 = [SP+4];
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L661 (bp);
	R2 = R3 >>> 31;
	R0 += -32;
	R3 >>>= R0;
.L662:
	R0 = R3;
	R1 = R2;
.L663:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L661:
	cc =R2==0;
	if cc jump .L664;
	R2 = R3;
	R2 >>>= R0;
	R7 = 32 (X);
	R7 = R7 - R0;
	R3 <<= R7;
	R1 >>= R0;
	R3 = R3 | R1;
	jump.s .L662;
.L664:
	R0 = R1;
	R1 = R3;
	jump.s .L663;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	R2 = R1 >> 24;
	R4 = R1 >> 8;
	P1.H = 0;
	P1.L = 65280;
	R3 = P1;
	R4 = R4 & R3;
	R7 = R1 << 8;
	R6 = R0 >> 24;
	R6 = R7 | R6;
	P2.H = 255;
	P2.L = 0;
	R7 = P2;
	R6 = R6 & R7;
	R1 <<= 24;
	R3 = R0 >> 8;
	R3 = R1 | R3;
	R3 >>>= 24;
	R3 <<= 24;
	R5 = R0 << 8;
	R7 = R0 >> 24;
	P0 = R7;
	R7 = R0 >> 8;
	R7 = R7 | R1;
	R1 = R0 << 24;
	R0 = P1;
	R7 = R7 & R0;
	R0 = P2;
	R5 = R5 & R0;
	R0 = R2 | R4;
	R0 = R0 | R6;
	R0 = R0 | R3;
	R2 = P0;
	R1 = R1 | R2;
	R1 = R1 | R7;
	R1 = R1 | R5;
	( r7:4 ) = [sp++];

	rts;
	.size	___bswapdi2, .-___bswapdi2
	.align 4
.global ___bswapsi2;
.type ___bswapsi2, STT_FUNC;
___bswapsi2:
	[--sp] = ( r7:7 );

	R3 = R0 >> 24;
	R2 = R0 >> 8;
	R1 = 65280 (Z);
	R2 = R2 & R1;
	R1 = R0 << 8;
	R7 = 255 (X);
	R7 <<= 16;
	R1 = R1 & R7;
	R0 <<= 24;
	R0 = R0 | R3;
	R0 = R0 | R2;
	R0 = R0 | R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___bswapsi2, .-___bswapsi2
	.align 4
.global ___clzsi2;
.type ___clzsi2, STT_FUNC;
___clzsi2:
	[--sp] = ( r7:7 );

	R1 = 65535 (Z);
	cc =R0<=R1 (iu);
	R1 = CC;
	R1 <<= 4;
	R2 = 16 (X);
	R2 = R2 - R1;
	R0 >>= R2;
	R2 = 65280 (Z);
	R2 = R0 & R2;
	cc =R2==0;
	R2 = CC;
	R2 <<= 3;
	R3 = 8 (X);
	R3 = R3 - R2;
	R0 >>= R3;
	R1 = R1 + R2;
	R2 = 240 (X);
	R2 = R0 & R2;
	cc =R2==0;
	R2 = CC;
	R2 <<= 2;
	R3 = 4 (X);
	R3 = R3 - R2;
	R0 >>= R3;
	R1 = R1 + R2;
	R2 = 12 (X);
	R2 = R0 & R2;
	cc =R2==0;
	R3 = CC;
	R3 <<= 1;
	R2 = 2 (X);
	R7 = R2 - R3;
	R0 >>= R7;
	R1 = R1 + R3;
	R3 = R0 & R2;
	cc =R3==0;
	R3 = CC;
	R2 = R2 - R0;
	R2 *= R3;
	R1 = R1 + R2;
	R0 = R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___clzsi2, .-___clzsi2
	.align 4
.global ___cmpdi2;
.type ___cmpdi2, STT_FUNC;
___cmpdi2:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R0 = [SP+4];
	[SP+16] = R2;
	R3 = R2;
	R2 = [SP+20];
	cc =R0<R2;
	if cc jump .L670;
	cc =R0<=R2;
	if !cc jump .L671;
	cc =R1<R3 (iu);
	if cc jump .L672;
	cc =R1<=R3 (iu);
	if !cc jump .L673;
	R0 = 1 (X);
	jump.s .L669;
.L670:
	R0 = 0 (X);
.L669:
	SP += 8;
	rts;
.L671:
	R0 = 2 (X);
	jump.s .L669;
.L672:
	R0 = 0 (X);
	jump.s .L669;
.L673:
	R0 = 2 (X);
	jump.s .L669;
	.size	___cmpdi2, .-___cmpdi2
	.align 4
.global ___aeabi_lcmp;
.type ___aeabi_lcmp, STT_FUNC;
___aeabi_lcmp:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	R1 = [SP+40];
	[SP+12] = R1;
	R0 = [SP+28];
	R1 = [SP+32];
	call ___cmpdi2;
	R0 += -1;
	SP += 24;
	RETS = [SP++];
	rts;
	.size	___aeabi_lcmp, .-___aeabi_lcmp
	.align 4
.global ___ctzsi2;
.type ___ctzsi2, STT_FUNC;
___ctzsi2:
	R1 = R0.L (Z);
	cc =R1==0;
	R1 = CC;
	R1 <<= 4;
	R0 >>= R1;
	R2 = R0.B (Z);
	cc =R2==0;
	R2 = CC;
	R2 <<= 3;
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 15 (X);
	R2 = R0 & R2;
	cc =R2==0;
	R2 = CC;
	R2 <<= 2;
	R0 >>= R2;
	R1 = R1 + R2;
	R3 = 3 (X);
	R2 = R0 & R3;
	cc =R2==0;
	R2 = CC;
	R2 <<= 1;
	R0 >>= R2;
	R0 = R0 & R3;
	R1 = R1 + R2;
	R3 = ~R0;
	R3 <<= 31;
	R0 >>= 1;
	R2 = 2 (X);
	R0 = R2 - R0;
	R3 >>>= 31;
	R0 = R0 & R3;
	R1 = R1 + R0;
	R0 = R1;
	rts;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	[--sp] = ( r7:7 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R3 = [SP+4];
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L677 (bp);
	R2 = 0 (X);
	R0 += -32;
	R3 >>= R0;
.L678:
	R0 = R3;
	R1 = R2;
.L679:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L677:
	cc =R2==0;
	if cc jump .L680;
	R2 = R3;
	R2 >>= R0;
	R7 = 32 (X);
	R7 = R7 - R0;
	R3 <<= R7;
	R1 >>= R0;
	R3 = R3 | R1;
	jump.s .L678;
.L680:
	R0 = R1;
	R1 = R3;
	jump.s .L679;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	[--sp] = ( r7:6 );

	R2 = R0;
	R7 = R0.L (Z);
	R6 = R1.L (Z);
	R3 = R7;
	R3 *= R6;
	R0 = R3 >> 16;
	R2 >>= 16;
	R6 *= R2;
	R0 = R0 + R6;
	R6 = R0 >> 16;
	R0 = R0.L (Z);
	R3 = R3.L (Z);
	R1 >>= 16;
	R7 *= R1;
	R0 = R0 + R7;
	R7 = R0 << 16;
	R3 = R7 + R3;
	R0 >>= 16;
	R0 = R0 + R6;
	R2 *= R1;
	R2 = R2 + R0;
	R0 = R3;
	R1 = R2;
	( r7:6 ) = [sp++];

	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -20;
	[SP+12] = R0;
	[SP+16] = R1;
	R6 = [SP+12];
	R5 = [SP+16];
	[SP+44] = R2;
	R7 = R2;
	R1 = R2;
	R0 = R6;
	call ___muldsi3;
	[SP+12] = R0;
	[SP+16] = R1;
	R1 = [SP+12];
	R2 = [SP+16];
	R7 *= R5;
	R0 = [SP+48];
	R0 *= R6;
	R7 = R7 + R0;
	R7 = R7 + R2;
	R0 = R1;
	R1 = R7;
	SP += 20;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	R2 = -R0;
	CC = R0;
	R0 = CC;
	R1 = -R1;
	R1 = R1 - R0;
	R0 = R2;
	SP += 8;
	rts;
	.size	___negdi2, .-___negdi2
	.align 4
.global ___paritydi2;
.type ___paritydi2, STT_FUNC;
___paritydi2:
	R0 = R1 ^ R0;
	R1 = R0 >> 16;
	R0 = R0 ^ R1;
	R1 = R0 >> 8;
	R0 = R0 ^ R1;
	R1 = R0 >> 4;
	R0 = R0 ^ R1;
	R1 = 15 (X);
	R0 = R0 & R1;
	R1 = 27030 (X);
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	R1 = R0;
	R0 >>= 16;
	R0 = R0 ^ R1;
	R1 = R0 >> 8;
	R0 = R0 ^ R1;
	R1 = R0 >> 4;
	R0 = R0 ^ R1;
	R1 = 15 (X);
	R0 = R0 & R1;
	R1 = 27030 (X);
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	rts;
	.size	___paritysi2, .-___paritysi2
	.align 4
.global ___popcountdi2;
.type ___popcountdi2, STT_FUNC;
___popcountdi2:
	[--sp] = ( r7:7 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R2 = [SP+4];
	CC = R0 < R0;
	R0 = ROT R2 BY -1;
	R3 = ROT R1 BY -1;
	R7.H = 21845;
	R7.L = 21845;
	R3 = R3 & R7;
	R0 = R0 & R7;
	R1 = R1 - R3; cc = ac0;
	CC = ! CC;
	R3 = CC;
	R2 = R2 - R0;
	R2 = R2 - R3;
	R0 = R2 << 30;
	R3 = R1 >> 2;
	R3 = R0 | R3;
	R0 = R2 >> 2;
	R7.H = 13107;
	R7.L = 13107;
	R3 = R3 & R7;
	R0 = R0 & R7;
	R1 = R1 & R7;
	R2 = R2 & R7;
	R1 = R3 + R1; cc = ac0;
	R3 = CC;
	R0 = R0 + R2;
	R0 = R0 + R3;
	R3 = R0 << 28;
	R2 = R1 >> 4;
	R2 = R3 | R2;
	R3 = R0 >> 4;
	R1 = R2 + R1; cc = ac0;
	R2 = CC;
	R0 = R3 + R0;
	R0 = R0 + R2;
	R2.H = 3855;
	R2.L = 3855;
	R1 = R1 & R2;
	R0 = R0 & R2;
	R0 = R0 + R1;
	R1 = R0 >> 16;
	R0 = R0 + R1;
	R1 = R0 >> 8;
	R0 = R1 + R0;
	R1 = 127 (X);
	R0 = R0 & R1;
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
	.size	___popcountdi2, .-___popcountdi2
	.align 4
.global ___popcountsi2;
.type ___popcountsi2, STT_FUNC;
___popcountsi2:
	R1 = R0 >> 1;
	R2.H = 21845;
	R2.L = 21845;
	R1 = R1 & R2;
	R0 = R0 - R1;
	R1 = R0 >> 2;
	R2.H = 13107;
	R2.L = 13107;
	R1 = R1 & R2;
	R0 = R0 & R2;
	R0 = R1 + R0;
	R1 = R0 >> 4;
	R0 = R1 + R0;
	R1.H = 3855;
	R1.L = 3855;
	R0 = R0 & R1;
	R1 = R0 >> 16;
	R0 = R0 + R1;
	R1 = R0 >> 8;
	R0 = R1 + R0;
	R1 = 63 (X);
	R0 = R0 & R1;
	rts;
	.size	___popcountsi2, .-___popcountsi2
	.align 4
.global ___powidf2;
.type ___powidf2, STT_FUNC;
___powidf2:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -32;
	R6 = R0;
	R7 = R1;
	R5 = R2;
	R4 = R2 >> 31;
	R2 = 0 (X);
	R3 = 1023 (X);
	R3 <<= 20;
	[SP+16] = R2;
	[SP+20] = R3;
	jump.s .L691;
.L689:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L690;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L691:
	cc = !BITTST (R5,0);
	if cc jump .L689 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L689;
.L690:
	cc =R4==0;
	if cc jump .L692 (bp);
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L692:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
	.size	___powidf2, .-___powidf2
	.align 4
.global ___powisf2;
.type ___powisf2, STT_FUNC;
___powisf2:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -12;
	R6 = R0;
	R7 = R1;
	R4 = R1 >> 31;
	R5 = 127 (X);
	R5 <<= 23;
	jump.s .L697;
.L695:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L696;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L697:
	cc = !BITTST (R7,0);
	if cc jump .L695 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L695;
.L696:
	cc =R4==0;
	if cc jump .L698 (bp);
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L698:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
	.size	___powisf2, .-___powisf2
	.align 4
.global ___ucmpdi2;
.type ___ucmpdi2, STT_FUNC;
___ucmpdi2:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R0 = [SP+4];
	[SP+16] = R2;
	R3 = R2;
	R2 = [SP+20];
	cc =R0<R2 (iu);
	if cc jump .L702;
	cc =R0<=R2 (iu);
	if !cc jump .L703;
	cc =R1<R3 (iu);
	if cc jump .L704;
	cc =R1<=R3 (iu);
	if !cc jump .L705;
	R0 = 1 (X);
	jump.s .L701;
.L702:
	R0 = 0 (X);
.L701:
	SP += 8;
	rts;
.L703:
	R0 = 2 (X);
	jump.s .L701;
.L704:
	R0 = 0 (X);
	jump.s .L701;
.L705:
	R0 = 2 (X);
	jump.s .L701;
	.size	___ucmpdi2, .-___ucmpdi2
	.align 4
.global ___aeabi_ulcmp;
.type ___aeabi_ulcmp, STT_FUNC;
___aeabi_ulcmp:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R0 = [SP+40];
	[SP+12] = R0;
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ucmpdi2;
	R0 += -1;
	SP += 24;
	RETS = [SP++];
	rts;
	.size	___aeabi_ulcmp, .-___aeabi_ulcmp
	.local	_s.0
	.comm	_s.0,7,1
.global ___divsf3;
.global ___divdf3;
.global ___fixsfsi;
.global ___gesf2;
.global ___umodsi3;
.global ___floatundisf;
.global ___floatundidf;
.global ___floatunsisf;
.global ___floatunsidf;
.global ___clzdi2;
.global ___clzsi2;
.global ___gedf2;
.global ___muldf3;
.global ___nedf2;
.global ___adddf3;
.global ___mulsf3;
.global ___nesf2;
.global ___addsf3;
.global ___floatsidf;
.global ___moddi3;
.global ___divdi3;
.global ___modsi3;
.global ___divsi3;
.global ___muldi3;
.global ___ltsf2;
.global ___ltdf2;
.global ___subsf3;
.global ___gtsf2;
.global ___unordsf2;
.global ___subdf3;
.global ___gtdf2;
.global ___unorddf2;
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
