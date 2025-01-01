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
	if cc jump .L78 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
.L77:
	rts;
.L78:
	R0 = 1 (X);
	jump.s .L77;
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
	if cc jump .L86;
	R0 += -9;
	cc =R0<5 (iu);
	R0 = CC;
.L85:
	rts;
.L86:
	R0 = 1 (X);
	jump.s .L85;
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
	if cc jump .L91 (bp);
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L92 (bp);
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L93;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<3 (iu);
	R0 = CC;
	jump.s .L90;
.L91:
	R0 = 1 (X);
.L90:
	rts;
.L92:
	R0 = 1 (X);
	jump.s .L90;
.L93:
	R0 = 1 (X);
	jump.s .L90;
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
	if cc jump .L104;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L99;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L100;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L101;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L102;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	if cc jump .L103;
	R0 = 1 (X);
	jump.s .L98;
.L104:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
.L98:
	rts;
.L99:
	R0 = 1 (X);
	jump.s .L98;
.L100:
	R0 = 1 (X);
	jump.s .L98;
.L101:
	R0 = 1 (X);
	jump.s .L98;
.L102:
	R0 = 0 (X);
	jump.s .L98;
.L103:
	R0 = 0 (X);
	jump.s .L98;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L107 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<6 (iu);
	R0 = CC;
.L106:
	rts;
.L107:
	R0 = 1 (X);
	jump.s .L106;
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
	if !cc jump .L113;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L114;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L117 (bp);
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L111:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L113:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L111;
.L114:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L111;
.L117:
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L111;
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
	if !cc jump .L119;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L122;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L125 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L119:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L122:
	R7 = R6;
	jump.s .L119;
.L125:
	R7 = 0 (X);
	jump.s .L119;
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
	if !cc jump .L130;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L131;
	R1 = [SP+32];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L128 (bp);
	R0 = [SP+32];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L132 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
.L127:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L128:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L135 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L127;
.L130:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L127;
.L131:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L127;
.L132:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L127;
.L135:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L127;
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
	if !cc jump .L140;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L137;
	R1 = R7 >>> 31;
	R1 <<= 31;
	R0 = R6 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L138 (bp);
	R0 = R7 >>> 31;
	cc = !BITTST (R0,0);
	if cc jump .L137 (bp);
	R7 = R6;
.L137:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L138:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L137 (bp);
	R7 = R6;
	jump.s .L137;
.L140:
	R7 = R6;
	jump.s .L137;
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
	if !cc jump .L150;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L151;
	R1 = [SP+32];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L148 (bp);
	R0 = [SP+32];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L152 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
.L147:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L148:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L155 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L147;
.L150:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L147;
.L151:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L147;
.L152:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L147;
.L155:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L147;
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
	if !cc jump .L160;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L161;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+48];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L158 (bp);
	R0 = [SP+40];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L162 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
.L157:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L158:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L165 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L157;
.L160:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L157;
.L161:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L157;
.L162:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L157;
.L165:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L157;
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
	if !cc jump .L167;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L171;
	R1 = R6 >>> 31;
	R1 <<= 31;
	R0 = R7 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L168 (bp);
	R0 = R6 >>> 31;
	cc = !BITTST (R0,0);
	if cc jump .L167 (bp);
	R7 = R6;
.L167:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L168:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L167 (bp);
	R7 = R6;
	jump.s .L167;
.L171:
	R7 = R6;
	jump.s .L167;
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
	if !cc jump .L180;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L181;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+48];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L178 (bp);
	R0 = [SP+40];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L182 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
.L177:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L178:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L185 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L177;
.L180:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L177;
.L181:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L177;
.L182:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L177;
.L185:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L177;
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
	jump.s .L187;
.L188:
	R1 = R0 & R3;
	R1 = R2 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
.L187:
	cc =R0==0;
	if !cc jump .L188 (bp);
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
	R1 = 0 (X);
	P2.H = _seed;
	P2.L = _seed;
	[P2] = R0;
	[P2+4] = R1;
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
	R2 = R0;
	R2 += 1; cc = ac0;
	R0 = CC;
	R3 = R1 + R0;
	[P5] = R2;
	[P5+4] = R3;
	R0 = R3 >> 1;
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
	if cc jump .L194;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L191;
	P1 = R0;
	[P1+4] = P2;
.L191:
	rts;
.L194:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L191;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L196;
	nop;
	nop;
	P1 = R0;
	R0 = [P2+4];
	[P1+4] = R0;
.L196:
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L195;
	nop;
	nop;
	P1 = R0;
	R0 = [P2];
	[P1] = R0;
.L195:
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
	jump.s .L199;
.L200:
	R7 += 1;
.L199:
	cc =R7==R5;
	if cc jump .L203;
	R1 = R6;
	R0 = R4;
	call (P4);
	R1 = P5;
	R6 = R6 + R1;
	cc =R0==0;
	if !cc jump .L200 (bp);
	R7 *= R1;
	P2 = R7;
	P3 = P3 + P2;
	jump.s .L201;
.L203:
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
.L201:
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
	jump.s .L205;
.L206:
	R7 += 1;
.L205:
	cc =R7==R4;
	if cc jump .L209;
	R1 = R6;
	R0 = R5;
	call (P3);
	R1 = P5;
	R6 = R6 + R1;
	cc =R0==0;
	if !cc jump .L206 (bp);
	R7 *= R1;
	P2 = R7;
	P4 = P4 + P2;
	jump.s .L207;
.L209:
	P4 = 0 (X);
.L207:
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
.L212:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L212 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L218;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L219 (bp);
	R1 = 1 (X);
.L213:
	P5 += 1;
.L214:
	P2 = 0 (X);
	jump.s .L215;
.L218:
	R1 = 0 (X);
	jump.s .L213;
.L219:
	R1 = 0 (X);
	jump.s .L214;
.L216:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5+-1] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
.L215:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L216 (bp);
	cc =R1==0;
	if !cc jump .L217 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L217:
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
.L223:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L223 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L229;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L230 (bp);
	R1 = 1 (X);
.L224:
	P5 += 1;
.L225:
	P2 = 0 (X);
	jump.s .L226;
.L229:
	R1 = 0 (X);
	jump.s .L224;
.L230:
	R1 = 0 (X);
	jump.s .L225;
.L227:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5+-1] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
.L226:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L227 (bp);
	cc =R1==0;
	if !cc jump .L228 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L228:
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
.L234:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L234 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L240;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L241 (bp);
	R6 = 1 (X);
.L235:
	P5 += 1;
.L236:
	R0 = 0 (X);
	R1 = 0 (X);
	R7 = 0 (X);
	jump.s .L237;
.L240:
	R6 = 0 (X);
	jump.s .L235;
.L241:
	R6 = 0 (X);
	jump.s .L236;
.L238:
	[SP+12] = R7;
	R2 = 10 (X);
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R2 = B [P5+-1] (X);
	R2 += -48;
	R3 = R2;
	R3 >>>= 31;
	R0 = R0 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R1 - R3;
	R1 = R1 - R2;
.L237:
	R2 = B [P5++] (X);
	R2 += -48;
	R3 = 9 (X);
	cc =R2<=R3 (iu);
	if cc jump .L238 (bp);
	cc =R6==0;
	if !cc jump .L242 (bp);
	R2 = 0 (X);
	R3 = 0 (X);
	R7 = R2 - R0; cc = ac0;
	[SP+16] = R7;
	CC = ! CC;
	R0 = CC;
	R7 = R3 - R1;
	R0 = R7 - R0;
	[SP+20] = R0;
.L239:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L242:
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L239;
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
	jump.s .L245;
.L252:
	R6 >>= 1;
.L245:
	cc =R6==0;
	if cc jump .L251;
	R7 = R6 >> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R1 = R7;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L252;
	cc =R0<=0;
	if cc jump .L248;
	R5 = R7 + R4;
	R0 = R6 >> 1;
	R6 += -1;
	R6 = R6 - R0;
	jump.s .L245;
.L251:
	R7 = 0 (X);
.L248:
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
	jump.s .L254;
.L256:
	R6 >>>= 1;
.L254:
	cc =R6==0;
	if cc jump .L259;
	R7 = R6 >>> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R2 = P4;
	R1 = R7;
	R0 = P5;
	call (P3);
	cc =R0==0;
	if cc jump .L255;
	cc =R0<=0;
	if cc jump .L256;
	R5 = R7 + R4;
	R6 += -1;
	jump.s .L256;
.L259:
	R7 = 0 (X);
.L255:
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
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -20;
	R7 = R0;
	R6 = R1;
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
	[SP+12] = R5;
	[SP+16] = R0;
	R0 = [SP+12];
	R1 = [SP+16];
	SP += 20;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
	.size	_div, .-_div
	.align 4
.global _imaxabs;
.type _imaxabs, STT_FUNC;
_imaxabs:
	[--sp] = ( r7:5 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	cc =R1<0;
	if cc jump .L264;
.L262:
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
	( r7:5 ) = [sp++];

	rts;
.L264:
	R6 = 0 (X);
	R7 = 0 (X);
	R5 = [SP];
	R2 = R6 - R5; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R1;
	R3 = R3 - R0;
	[SP] = R2;
	[SP+4] = R3;
	jump.s .L262;
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
	[SP+64] = R2;
	R4 = [SP+64];
	R5 = [SP+68];
	[SP+12] = R5;
	R2 = R4;
	call ___divdi3;
	R6 = R0;
	R7 = R1;
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+56];
	R1 = [SP+60];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	[P5] = R6;
	[P5+4] = R7;
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
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -20;
	R7 = R0;
	R6 = R1;
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
	[SP+12] = R5;
	[SP+16] = R0;
	R0 = [SP+12];
	R1 = [SP+16];
	SP += 20;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
	.size	_ldiv, .-_ldiv
	.align 4
.global _llabs;
.type _llabs, STT_FUNC;
_llabs:
	[--sp] = ( r7:5 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	cc =R1<0;
	if cc jump .L271;
.L269:
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
	( r7:5 ) = [sp++];

	rts;
.L271:
	R6 = 0 (X);
	R7 = 0 (X);
	R5 = [SP];
	R2 = R6 - R5; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R1;
	R3 = R3 - R0;
	[SP] = R2;
	[SP+4] = R3;
	jump.s .L269;
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
	[SP+64] = R2;
	R4 = [SP+64];
	R5 = [SP+68];
	[SP+12] = R5;
	R2 = R4;
	call ___divdi3;
	R6 = R0;
	R7 = R1;
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+56];
	R1 = [SP+60];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	[P5] = R6;
	[P5+4] = R7;
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
.L275:
	P1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if cc jump .L274;
	nop;
	nop;
	nop;
	R0 = [P2+-4];
	cc =R1==R0;
	if !cc jump .L275 (bp);
.L274:
	R0 = [P1];
	cc =R0==0;
	if cc jump .L279;
.L276:
	R0 = P1;
	rts;
.L279:
	P1 = 0 (X);
	jump.s .L276;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	[--sp] = ( p5:5 );

	P2 = R0;
	P1 = R1;
.L282:
	P0 = P1;
	P5 = P2;
	R1 = [P2++];
	R0 = [P1++];
	cc =R1==R0;
	if !cc jump .L281;
	nop;
	nop;
	nop;
	R0 = [P2+-4];
	cc =R0==0;
	if cc jump .L281;
	nop;
	nop;
	nop;
	R0 = [P1+-4];
	cc =R0==0;
	if !cc jump .L282 (bp);
.L281:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L284 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
.L283:
	( p5:5 ) = [sp++];

	rts;
.L284:
	R0 = -1 (X);
	jump.s .L283;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P1 = R1;
	P2 = R0;
.L287:
	nop;
	R0 = [P1++];
	[P2] = R0;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L287 (bp);
	R0 = R2;
	rts;
	.size	_wcscpy, .-_wcscpy
	.align 4
.global _wcslen;
.type _wcslen, STT_FUNC;
_wcslen:
	R2 = R0;
	P2 = R0;
.L290:
	R1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L290 (bp);
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
.L293:
	P0 = P1;
	P5 = P2;
	cc =R0==0;
	if cc jump .L294;
	nop;
	nop;
	nop;
	R2 = [P2];
	R1 = [P1];
	cc =R2==R1;
	if !cc jump .L294;
	nop;
	nop;
	nop;
	R1 = [P2++];
	cc =R1==0;
	if cc jump .L294;
	nop;
	nop;
	nop;
	R1 = [P1++];
	cc =R1==0;
	if cc jump .L294;
	R0 += -1;
	jump.s .L293;
.L294:
	cc =R0==0;
	if cc jump .L297 (bp);
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L298 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L296;
.L297:
	R0 = 0 (X);
.L296:
	( p5:5 ) = [sp++];

	rts;
.L298:
	R0 = -1 (X);
	jump.s .L296;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	P2 = R0;
	R3 = R1;
	R0 = R2;
	jump.s .L300;
.L302:
	R0 += -1;
.L300:
	R2 = P2;
	cc =R0==0;
	if cc jump .L301;
	nop;
	nop;
	nop;
	R1 = [P2++];
	cc =R3==R1;
	if !cc jump .L302 (bp);
.L301:
	cc =R0==0;
	if cc jump .L305;
.L303:
	R0 = R2;
	rts;
.L305:
	R2 = 0 (X);
	jump.s .L303;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[--sp] = ( p5:5 );

	P1 = R0;
	P2 = R1;
	R0 = R2;
	jump.s .L307;
.L309:
	R0 += -1;
.L307:
	P0 = P2;
	P5 = P1;
	cc =R0==0;
	if cc jump .L308;
	nop;
	nop;
	nop;
	R2 = [P1++];
	R1 = [P2++];
	cc =R2==R1;
	if cc jump .L309 (bp);
.L308:
	cc =R0==0;
	if cc jump .L311 (bp);
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L312 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L310;
.L311:
	R0 = 0 (X);
.L310:
	( p5:5 ) = [sp++];

	rts;
.L312:
	R0 = -1 (X);
	jump.s .L310;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	R3 = R0;
	P2 = R1;
	R0 = R2;
	P1 = R3;
	jump.s .L314;
.L315:
	nop;
	R1 = [P2++];
	[P1++] = R1;
.L314:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L315 (bp);
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
	if cc jump .L317;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	if cc jump .L318 (bp);
	P2 = R3;
	jump.s .L319;
.L318:
	R0 += -1;
	P0 = R0;
	P2 = P0 << 2;
	P1 = P1 + P2;
	P5 = R3;
	P0 = P5 + P2;
	P2 += 4;
	P2 = P2 >> 2;
	P2 += 1;
	jump.s .L320;
.L321:
	R0 = [P1--];
	[P0--] = R0;
.L320:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L321;
.L317:
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
.L322:
	nop;
	R1 = [P1++];
	[P2++] = R1;
.L319:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L322 (bp);
	jump.s .L317;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	R3 = R0;
	R0 = R2;
	P2 = R3;
	jump.s .L324;
.L325:
	[P2++] = R1;
.L324:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L325 (bp);
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
	if !cc jump .L327 (bp);
	P0 = R2;
	P2 = P2 + P0;
	R1 = R1 + R0;
	P2 += -1;
	P1 = R1;
	P1 += -1;
	R0 = ~R0;
	R0 = R0 + R1;
	jump.s .L328;
.L329:
	nop;
	R1 = B [P2--] (X);
	B [P1--] = R1;
.L328:
	R1 = P1;
	cc =R1==R0;
	if !cc jump .L329 (bp);
.L326:
	rts;
.L327:
	cc =P2==P1;
	if cc jump .L326;
	R2 = P2;
	R0 = R2 + R0;
	jump.s .L331;
.L332:
	nop;
	R1 = B [P2++] (X);
	B [P1++] = R1;
.L331:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L332 (bp);
	jump.s .L326;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4, p5:5 );

	SP += -8;
	R4 = R0;
	R5 = R1;
	R0 = R2;
	R2 += -32;
	R1 = R4;
	R1 <<= R2;
	P2 = R1;
	P0 = 0 (X);
	R3 = R4 >> 1;
	R1 = 31 (X);
	R7 = R1 - R0;
	R3 >>= R7;
	R7 = R5;
	R7 <<= R0;
	R7 = R3 | R7;
	R6 = R4;
	R6 <<= R0;
	cc =R2<0;
	if !cc R7 = P2;
	cc =R2<0;
	if !cc R6 = P0;
	R0 = -R0;
	R2 = 63 (X);
	R0 = R0 & R2;
	P2 = R0;
	P2 += -32;
	R2 = R5;
	R3 = P2;
	R2 >>= R3;
	P5 = R2;
	R2 = R5 << 1;
	R1 = R1 - R0;
	R2 <<= R1;
	P1 = R2;
	R2 = R4;
	R2 >>= R0;
	R1 = P1;
	R2 = R1 | R2;
	R3 = R5;
	R3 >>= R0;
	cc =P2<0;
	if !cc R2 = P5;
	cc =P2<0;
	if !cc R3 = P0;
	R0 = R6 | R2;
	[SP] = R0;
	R1 = R7 | R3;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_rotl64, .-_rotl64
	.align 4
.global _rotr64;
.type _rotr64, STT_FUNC;
_rotr64:
	[--sp] = ( r7:4, p5:5 );

	SP += -8;
	R4 = R0;
	R5 = R1;
	R0 = R2;
	R2 += -32;
	R1 >>= R2;
	P2 = R1;
	P0 = 0 (X);
	R3 = R5 << 1;
	R1 = 31 (X);
	R7 = R1 - R0;
	R3 <<= R7;
	R6 = R4;
	R6 >>= R0;
	R6 = R3 | R6;
	R7 = R5;
	R7 >>= R0;
	cc =R2<0;
	if !cc R6 = P2;
	cc =R2<0;
	if !cc R7 = P0;
	R0 = -R0;
	R2 = 63 (X);
	R0 = R0 & R2;
	P2 = R0;
	P2 += -32;
	R2 = R4;
	R3 = P2;
	R2 <<= R3;
	P5 = R2;
	R2 = R4 >> 1;
	R1 = R1 - R0;
	R2 >>= R1;
	R3 = R5;
	R3 <<= R0;
	R3 = R2 | R3;
	R2 = R4;
	R2 <<= R0;
	cc =P2<0;
	if !cc R3 = P5;
	cc =P2<0;
	if !cc R2 = P0;
	R0 = R6 | R2;
	[SP] = R0;
	R1 = R7 | R3;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
	( r7:4, p5:5 ) = [sp++];

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
	[--sp] = ( r7:4 );

	SP += -8;
	R3 = R1 >>> 24;
	R3 <<= 24;
	R6 = R3 >> 24;
	I0.H = 255;
	I0.L = 0;
	R2 = I0;
	R5 = R1 & R2;
	R2 = R5 >> 8;
	R5 = R2 | R6;
	P0 = R5;
	P1 = 0 (X);
	R6 = 0 (X);
	P2.H = 0;
	P2.L = 65280;
	R2 = P2;
	R7 = R1 & R2;
	R5 = R7 << 8;
	R2 = R6 >> 24;
	R2 = R5 | R2;
	R3 = R7 >> 24;
	R7 = P0;
	R4 = R7 | R2;
	R7 = P1;
	R5 = R7 | R3;
	R7 = R1.B (Z);
	R1 = R7 << 24;
	R2 = R6 >> 8;
	R2 = R1 | R2;
	R3 = R7 >> 8;
	R7 = R4 | R2;
	P0 = R7;
	R7 = R5 | R3;
	P1 = R7;
	R2 = R0 >>> 24;
	R2 <<= 24;
	R7 = R2 >> 24;
	R6 = R2 << 8;
	R2 = P0;
	R4 = R2 | R6;
	R2 = P1;
	R5 = R2 | R7;
	R2 = I0;
	R6 = R0 & R2;
	R3 = R6 >> 8;
	R2 = R6 << 24;
	R6 = R4 | R2;
	R7 = R5 | R3;
	R5 = P2;
	R2 = R0 & R5;
	R5 = R2 << 8;
	R2 = R6;
	R3 = R7 | R5;
	R6 = R0.B (Z);
	R1 = R6 << 24;
	[SP] = R2;
	R7 = R3 | R1;
	[SP+4] = R7;
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
	( r7:4 ) = [sp++];

	rts;
	.size	_bswap_64, .-_bswap_64
	.align 4
.global _ffs;
.type _ffs, STT_FUNC;
_ffs:
	R2 = R0;
	R0 = 0 (X);
	P2 = 33 (X);
.L347:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L350;
	jump.s .L353;
.L350:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L352;
	R0 += 1;
	jump.s .L347;
.L352:
	R0 += 1;
.L349:
	rts;
.L353:
	R0 = 0 (X);
	jump.s .L349;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L358;
	R1 = 1 (X);
	jump.s .L356;
.L357:
	R0 >>>= 1;
	R1 += 1;
.L356:
	cc = !BITTST (R0,0);
	if cc jump .L357 (bp);
.L355:
	R0 = R1;
	rts;
.L358:
	R1 = 0 (X);
	jump.s .L355;
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 4
.global _gl_isinff;
.type _gl_isinff, STT_FUNC;
_gl_isinff:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R1 = -1 (X);
	R1.H = 65407;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L362 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L365 (bp);
	R0 = 1 (X);
	jump.s .L360;
.L362:
	R0 = 1 (X);
.L360:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L365:
	R0 = 0 (X);
	jump.s .L360;
	.size	_gl_isinff, .-_gl_isinff
	.align 4
.global _gl_isinfd;
.type _gl_isinfd, STT_FUNC;
_gl_isinfd:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	R0 = -1 (X);
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L369 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L372 (bp);
	R0 = 1 (X);
	jump.s .L367;
.L369:
	R0 = 1 (X);
.L367:
	SP += 24;
	RETS = [SP++];
	rts;
.L372:
	R0 = 0 (X);
	jump.s .L367;
	.size	_gl_isinfd, .-_gl_isinfd
	.align 4
.global _gl_isinfl;
.type _gl_isinfl, STT_FUNC;
_gl_isinfl:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	R0 = -1 (X);
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L376 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L379 (bp);
	R0 = 1 (X);
	jump.s .L374;
.L376:
	R0 = 1 (X);
.L374:
	SP += 24;
	RETS = [SP++];
	rts;
.L379:
	R0 = 0 (X);
	jump.s .L374;
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
	if !cc jump .L382;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R0;
	R0 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L382 (bp);
	cc =R7<0;
	if cc jump .L389;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L386;
.L389:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L386;
.L385:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L382;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L386:
	cc = !BITTST (R7,0);
	if cc jump .L385 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L385;
.L382:
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
	if !cc jump .L391;
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
	if cc jump .L391 (bp);
	cc =R5<0;
	if cc jump .L398;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L395;
.L398:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L395;
.L394:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L391;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L395:
	cc = !BITTST (R5,0);
	if cc jump .L394 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L394;
.L391:
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
	if !cc jump .L400;
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
	if cc jump .L400 (bp);
	cc =R5<0;
	if cc jump .L407;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L404;
.L407:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L404;
.L403:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L400;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L404:
	cc = !BITTST (R5,0);
	if cc jump .L403 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L403;
.L400:
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
	jump.s .L409;
.L410:
	nop;
	R0 = B [P2++] (X);
	R1 = B [P1++] (X);
	R0 = R0 ^ R1;
	B [P1+-1] = R0;
.L409:
	R0 = P2;
	cc =R0==R2;
	if !cc jump .L410 (bp);
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
	jump.s .L412;
.L414:
	R7 += -1;
.L412:
	P0 = P2;
	cc =R7==0;
	if cc jump .L413;
	nop;
	nop;
	nop;
	R0 = B [P1++] (X);
	B [P2] = R0;
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L414 (bp);
.L413:
	cc =R7==0;
	if !cc jump .L415 (bp);
	R0 = 0 (X);
	B [P0] = R0;
.L415:
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
.L417:
	cc =R1==R0;
	if cc jump .L418;
	nop;
	nop;
	nop;
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L419;
.L418:
	R0 = R1;
	rts;
.L419:
	R1 += 1;
	jump.s .L417;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R3 = R1;
.L421:
	R2 = P1;
	R0 = B [P1++] (X);
	cc =R0==0;
	if cc jump .L426;
	nop;
	nop;
	P2 = R3;
.L424:
	nop;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L421;
	nop;
	nop;
	nop;
	R1 = B [P2+-1] (X);
	R0 = B [P1+-1] (X);
	cc =R1==R0;
	if !cc jump .L424 (bp);
.L422:
	R0 = R2;
	rts;
.L426:
	R2 = 0 (X);
	jump.s .L422;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R2 = R1;
	R3 = 0 (X);
	jump.s .L429;
.L428:
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if cc jump .L432;
	nop;
	nop;
.L429:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L428 (bp);
	R3 = R1;
	jump.s .L428;
.L432:
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
	if cc jump .L434;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
.L435:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if cc jump .L434;
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L434;
	R7 += 1;
	jump.s .L435;
.L434:
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
	if cc jump .L452;
.L440:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L450;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+44];
	R1 = [SP+48];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L442;
	R2 = [SP+36];
	R3 = [SP+40];
	[SP+24] = R2;
	[SP+28] = R3;
.L443:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L452:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+44];
	R1 = [SP+48];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L440 (bp);
.L442:
	R3 = [SP+36];
	[SP+24] = R3;
	R0 = [SP+40];
	BITTGL (R0, 31);
	[SP+28] = R0;
	jump.s .L443;
.L450:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+24] = R1;
	[SP+28] = R2;
	jump.s .L443;
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
	if cc jump .L454;
	cc =R0<R5 (iu);
	if cc jump .L459;
	R4 = R2;
	R4 += 1;
	R5 += -1;
.L455:
	R6 = P5;
	cc =R6<=R7 (iu);
	if !cc jump .L461;
	nop;
	nop;
	nop;
	R1 = B [P5++] (X);
	R0 = B [P4] (X);
	cc =R1==R0;
	if !cc jump .L455 (bp);
	R2 = R5;
	R1 = R4;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L455 (bp);
	P5 = R6;
	jump.s .L454;
.L461:
	P5 = 0 (X);
.L454:
	R0 = P5;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L459:
	P5 = 0 (X);
	jump.s .L454;
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
	if cc jump .L483;
	R4 = 0 (X);
.L464:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L484;
	R7 = 0 (X);
	R6 = 1023 (X);
	R6 <<= 20;
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L466;
.L483:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L464;
.L468:
	R7 += 1;
	[SP+12] = R5;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L466:
	[SP+12] = R6;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L468 (bp);
.L469:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L473 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L473:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L484:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L482 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L477 (bp);
	R7 = 0 (X);
	jump.s .L469;
.L472:
	R7 += -1;
	R0 = [SP+52];
	[SP+12] = R0;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L471:
	[SP+12] = R6;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L472 (bp);
	jump.s .L469;
.L477:
	R7 = 0 (X);
	R6 = 511 (X);
	R6 <<= 21;
	jump.s .L471;
.L482:
	R7 = 0 (X);
	jump.s .L469;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:4 );

	[--SP] = P3;
	SP += -8;
	[SP+36] = R2;
	R4 = [SP+36];
	R5 = [SP+40];
	R2 = R0;
	R3 = R1;
	P2 = 0 (X);
	P3 = 0 (X);
	P0 = 1 (X);
	jump.s .L486;
.L487:
	CC = R0 < R0;
	R6 = ROT R4 BY 1;
	R7 = ROT R5 BY 1;
	R4 = R6;
	R5 = R7;
	CC = R0 < R0;
	R7 = ROT R3 BY -1;
	R6 = ROT R2 BY -1;
	R2 = R6;
	R3 = R7;
.L486:
	R7 = R2 | R3;
	cc =R7==0;
	if cc jump .L490;
	R0 = P0;
	R6 = R2 & R0;
	cc =R6==0;
	if cc jump .L487 (bp);
	R1 = P2;
	R6 = R1 + R4; cc = ac0;
	R0 = CC;
	R1 = P3;
	R7 = R1 + R5;
	R7 = R7 + R0;
	P2 = R6;
	P3 = R7;
	jump.s .L487;
.L490:
	R0 = P2;
	R1 = P3;
	SP += 8;
	P3 = [SP++];
	( r7:4 ) = [sp++];

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
	LSETUP (.L502, .L510) LC1 = P2;
	jump.s .L492;
.L502:
	cc =R0<0;
	if cc jump .L508;
	R0 <<= 1;
	R1 <<= 1;
.L492:
	cc =R0<R3 (iu);
	if !cc jump .L504;
.L510:
	nop;
	jump.s .L509;
.L508:
	R2 = 0 (X);
	jump.s .L494;
.L504:
	R2 = 0 (X);
	jump.s .L494;
.L509:
	R2 = 0 (X);
	jump.s .L494;
.L497:
	R1 >>= 1;
	R0 >>= 1;
.L494:
	cc =R1==0;
	if cc jump .L506;
	cc =R3<R0 (iu);
	if cc jump .L497 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L497;
.L506:
	cc =P1==0;
	if !cc jump .L507;
.L499:
	R0 = R2;
	rts;
.L507:
	R2 = R3;
	jump.s .L499;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	[--SP] = RETS;
	SP += -12;
	R1 = R0.B (X);
	cc =R1<0;
	if cc jump .L515;
.L512:
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L514;
	R0 = R1;
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L513:
	SP += 12;
	RETS = [SP++];
	rts;
.L515:
	R0 = ~R0;
	jump.s .L512;
.L514:
	R0 = 7 (X);
	jump.s .L513;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	[--SP] = RETS;
	SP += -20;
	[SP+12] = R0;
	[SP+16] = R1;
	cc =R1<0;
	if cc jump .L522;
.L517:
	R2 = R0 | R1;
	cc =R2==0;
	if cc jump .L521;
	call ___clzdi2;
	R0 += -1;
.L519:
	SP += 20;
	RETS = [SP++];
	rts;
.L522:
	R2 = ~R0;
	R3 = ~R1;
	R0 = R2;
	R1 = R3;
	jump.s .L517;
.L521:
	R0 = 63 (X);
	jump.s .L519;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	R2 = 0 (X);
	jump.s .L524;
.L525:
	R0 >>= 1;
	R1 <<= 1;
.L524:
	cc =R0==0;
	if cc jump .L527;
	cc = !BITTST (R0,0);
	if cc jump .L525 (bp);
	R2 = R2 + R1;
	jump.s .L525;
.L527:
	R0 = R2;
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
	if cc jump .L529 (bp);
	R3 = R1 + R7;
	R6 = P2;
	cc =R3<R6 (iu);
	if !cc jump .L530 (bp);
.L529:
	P5 = R1;
	P0 = P2;
	P1 = R2;
	P1 += 1;
	jump.s .L531;
.L530:
	R7 += -1;
	R0 = R1 + R7;
	P0 = R0;
	P1 = R7;
	P2 = P2 + P1;
	R1 += -1;
	jump.s .L532;
.L533:
	R2 = [P5];
	R3 = [P5+4];
	[P0] = R2;
	[P0+4] = R3;
	P5 += 8;
	P0 += 8;
.L531:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L533;
	R1 = R1 + R0;
	P1 = R1;
	P0 = R0;
	P2 = P2 + P0;
	jump.s .L534;
.L535:
	nop;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R0 += 1;
.L534:
	cc =R7<=R0 (iu);
	if !cc jump .L535 (bp);
.L528:
	( r7:6, p5:5 ) = [sp++];

	rts;
.L537:
	nop;
	R0 = B [P0--] (X);
	B [P2--] = R0;
.L532:
	R0 = P0;
	cc =R0==R1;
	if !cc jump .L537 (bp);
	jump.s .L528;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	R3 = R0;
	P1 = R2;
	P2 = P1 >> 1;
	cc =R0<R1 (iu);
	if cc jump .L539 (bp);
	R0 = R1 + R2;
	cc =R0<R3 (iu);
	if !cc jump .L540 (bp);
.L539:
	P0 = R3;
	P1 = R1;
	P2 += 1;
	jump.s .L541;
.L540:
	R2 += -1;
	R0 = R1 + R2;
	P1 = R0;
	R3 = R3 + R2;
	P2 = R3;
	R1 += -1;
	jump.s .L542;
.L543:
	R0 = W [P1++] (X);
	W [P0++] = R0;
.L541:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L543;
	cc = !BITTST (R2,0);
	if cc jump .L538 (bp);
	R2 += -1;
	R1 = R1 + R2;
	P1 = R1;
	R3 = R3 + R2;
	P2 = R3;
	R0 = B [P1] (X);
	B [P2] = R0;
.L538:
	rts;
.L545:
	nop;
	R0 = B [P1--] (X);
	B [P2--] = R0;
.L542:
	R0 = P1;
	cc =R0==R1;
	if !cc jump .L545 (bp);
	jump.s .L538;
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
	if cc jump .L547 (bp);
	R3 = R1 + R2;
	R7 = P2;
	cc =R3<R7 (iu);
	if !cc jump .L548 (bp);
.L547:
	P5 = P2;
	P0 = R1;
	P1 += 1;
	jump.s .L549;
.L548:
	R2 += -1;
	R0 = R1 + R2;
	P0 = R0;
	P1 = R2;
	P2 = P2 + P1;
	R1 += -1;
	jump.s .L550;
.L551:
	R3 = [P0++];
	[P5++] = R3;
.L549:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L551;
	R1 = R1 + R0;
	P1 = R1;
	P0 = R0;
	P2 = P2 + P0;
	jump.s .L552;
.L553:
	nop;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R0 += 1;
.L552:
	cc =R2<=R0 (iu);
	if !cc jump .L553 (bp);
.L546:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L555:
	nop;
	R0 = B [P0--] (X);
	B [P2--] = R0;
.L550:
	R0 = P0;
	cc =R0==R1;
	if !cc jump .L555 (bp);
	jump.s .L546;
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
.L563:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L565;
	jump.s .L564;
.L565:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L564;
	R0 += 1;
	jump.s .L563;
.L564:
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
.L567:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L569;
	jump.s .L568;
.L569:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L568;
	R0 += 1;
	jump.s .L567;
.L568:
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
	if !cc jump .L576;
	R0 = R7;
	call ___fixsfsi;
.L573:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L576:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L573;
	.size	___fixunssfsi, .-___fixunssfsi
	.align 4
.global ___parityhi2;
.type ___parityhi2, STT_FUNC;
___parityhi2:
	R3 = R0;
	R2 = 0 (X);
	R0 = 0 (X);
	R3 = R3.L (Z);
	P2 = 17 (X);
	jump.s .L578;
.L580:
	R1 = R3;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L582 (bp);
.L579:
	R0 += 1;
.L578:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L580;
	jump.s .L583;
.L582:
	R2 += 1;
	jump.s .L579;
.L583:
	R0 = 1 (X);
	R2 = R2 & R0;
	R0 = R2;
	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	R2 = R0;
	R3 = 0 (X);
	R0 = 0 (X);
	R2 = R2.L (Z);
	P2 = 17 (X);
	jump.s .L585;
.L587:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L589 (bp);
.L586:
	R0 += 1;
.L585:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L587;
	jump.s .L590;
.L589:
	R3 += 1;
	jump.s .L586;
.L590:
	R0 = R3;
	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	R2 = 0 (X);
	jump.s .L592;
.L593:
	R0 >>= 1;
	R1 <<= 1;
.L592:
	cc =R0==0;
	if cc jump .L595;
	cc = !BITTST (R0,0);
	if cc jump .L593 (bp);
	R2 = R2 + R1;
	jump.s .L593;
.L595:
	R0 = R2;
	rts;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	R2 = R0;
	R0 = R1;
	cc =R2==0;
	if cc jump .L601;
	R1 = 0 (X);
	jump.s .L598;
.L599:
	R2 <<= 1;
	R0 >>= 1;
.L598:
	cc =R0==0;
	if cc jump .L597;
	cc = !BITTST (R0,0);
	if cc jump .L599 (bp);
	R1 = R1 + R2;
	jump.s .L599;
.L601:
	R1 = 0 (X);
.L597:
	R0 = R1;
	rts;
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
	LSETUP (.L613, .L621) LC1 = P2;
	jump.s .L603;
.L613:
	cc =R0<0;
	if cc jump .L619;
	R0 <<= 1;
	R1 <<= 1;
.L603:
	cc =R0<R3 (iu);
	if !cc jump .L615;
.L621:
	nop;
	jump.s .L620;
.L619:
	R2 = 0 (X);
	jump.s .L605;
.L615:
	R2 = 0 (X);
	jump.s .L605;
.L620:
	R2 = 0 (X);
	jump.s .L605;
.L608:
	R1 >>= 1;
	R0 >>= 1;
.L605:
	cc =R1==0;
	if cc jump .L617;
	cc =R3<R0 (iu);
	if cc jump .L608 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L608;
.L617:
	cc =P1==0;
	if !cc jump .L618;
.L610:
	R0 = R2;
	rts;
.L618:
	R2 = R3;
	jump.s .L610;
	.size	___udivmodsi4, .-___udivmodsi4
	.align 4
.global ___mspabi_cmpf;
.type ___mspabi_cmpf, STT_FUNC;
___mspabi_cmpf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = R1;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L624;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if !cc jump .L625;
	R0 = 0 (X);
.L623:
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L624:
	R0 = -1 (X);
	jump.s .L623;
.L625:
	R0 = 1 (X);
	jump.s .L623;
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 4
.global ___mspabi_cmpd;
.type ___mspabi_cmpd, STT_FUNC;
___mspabi_cmpd:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -24;
	[SP+36] = R0;
	[SP+40] = R1;
	[SP+44] = R2;
	R6 = [SP+44];
	R7 = [SP+48];
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L628;
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L629;
	R0 = 0 (X);
.L627:
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L628:
	R0 = -1 (X);
	jump.s .L627;
.L629:
	R0 = 1 (X);
	jump.s .L627;
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
	[--sp] = ( r7:7 );

	[--SP] = R4;
	[--SP] = RETS;
	SP += -24;
	[SP+16] = R0;
	P0 = 0 (X);
	[SP+20] = P0;
	R2 = R1;
	R0 = 0 (X);
	[SP+12] = R0;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 4
.global ___mulhi3;
.type ___mulhi3, STT_FUNC;
___mulhi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R1<0;
	if cc jump .L641;
	P2 = 0 (X);
.L633:
	R3 = 33 (X);
	R7 = 0 (X);
	jump.s .L634;
.L641:
	R1 = -R1;
	P2 = 1 (X);
	jump.s .L633;
.L635:
	R2 <<= 1;
	R1 >>>= 1;
.L634:
	cc =R1==0;
	if cc jump .L636;
	R0 = R3;
	R0 += -1;
	R3 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L636;
	cc = !BITTST (R1,0);
	if cc jump .L635 (bp);
	R7 = R7 + R2;
	jump.s .L635;
.L636:
	cc =P2==0;
	if cc jump .L638 (bp);
	R7 = -R7;
.L638:
	R0 = R7;
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
	if cc jump .L647;
	R7 = 0 (X);
.L643:
	cc =R1<0;
	if cc jump .L648;
.L644:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L645 (bp);
	R0 = -R0;
.L645:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L647:
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L643;
.L648:
	R1 = -R1;
	BITTGL (R7, 0);
	jump.s .L644;
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
	if cc jump .L654;
	R7 = 0 (X);
.L650:
	R0 = abs R0;
	R2 = 1 (X);
	R1 = R0;
	R0 = R3;
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L652 (bp);
	R0 = -R0;
.L652:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L654:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L650;
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
.L656:
	R2 = R0.L (Z);
	cc =R2<R7 (iu);
	if !cc jump .L668;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L666;
	jump.s .L673;
.L666:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L670;
	R0 <<= 1;
	R1 <<= 1;
	jump.s .L656;
.L668:
	R6 = 0 (X);
	jump.s .L658;
.L673:
	R6 = 0 (X);
	jump.s .L658;
.L670:
	R6 = 0 (X);
	jump.s .L658;
.L661:
	R1 <<= 16;
	R1 >>= 17;
	R0 <<= 16;
	R0 >>= 17;
.L658:
	R2 = R1.L (Z);
	cc =R2==0;
	if cc jump .L671;
	R2 = R3.L (Z);
	R7 = R0.L (Z);
	cc =R2<R7 (iu);
	if cc jump .L661 (bp);
	R3 = R3 - R0;
	R6 = R6 | R1;
	jump.s .L661;
.L671:
	cc =P1==0;
	if !cc jump .L672;
.L663:
	R0 = R6;
	( r7:6 ) = [sp++];

	rts;
.L672:
	R6 = R3;
	jump.s .L663;
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
	LSETUP (.L685, .L693) LC1 = P2;
	jump.s .L675;
.L685:
	cc =R0<0;
	if cc jump .L691;
	R0 <<= 1;
	R1 <<= 1;
.L675:
	cc =R0<R3 (iu);
	if !cc jump .L687;
.L693:
	nop;
	jump.s .L692;
.L691:
	R2 = 0 (X);
	jump.s .L677;
.L687:
	R2 = 0 (X);
	jump.s .L677;
.L692:
	R2 = 0 (X);
	jump.s .L677;
.L680:
	R1 >>= 1;
	R0 >>= 1;
.L677:
	cc =R1==0;
	if cc jump .L689;
	cc =R3<R0 (iu);
	if cc jump .L680 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L680;
.L689:
	cc =P1==0;
	if !cc jump .L690;
.L682:
	R0 = R2;
	rts;
.L690:
	R2 = R3;
	jump.s .L682;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:6 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R6 = R0;
	R7 = R1;
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L695 (bp);
	R2 = 0 (X);
	R0 += -32;
	R3 = R6;
	R3 <<= R0;
.L696:
	[SP] = R2;
	[SP+4] = R3;
.L697:
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
	( r7:6 ) = [sp++];

	rts;
.L695:
	cc =R2==0;
	if cc jump .L698;
	R2 = R6;
	R2 <<= R0;
	R7 <<= R0;
	R1 = 32 (X);
	R0 = R1 - R0;
	R6 >>= R0;
	R3 = R6 | R7;
	jump.s .L696;
.L698:
	[SP] = R6;
	[SP+4] = R1;
	jump.s .L697;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:6 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R6 = R0;
	R7 = R1;
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L700 (bp);
	R3 = R1 >>> 31;
	R0 += -32;
	R2 = R1;
	R2 >>>= R0;
.L701:
	[SP] = R2;
	[SP+4] = R3;
.L702:
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
	( r7:6 ) = [sp++];

	rts;
.L700:
	cc =R2==0;
	if cc jump .L703;
	R3 = R1;
	R3 >>>= R2;
	R1 = 32 (X);
	R1 = R1 - R2;
	R7 <<= R1;
	R6 >>= R2;
	R2 = R7 | R6;
	jump.s .L701;
.L703:
	[SP] = R6;
	[SP+4] = R1;
	jump.s .L702;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	SP += -8;
	R2 = R1 >> 24;
	I2 = R2;
	I3 = 0 (X);
	R2 = R1 >> 8;
	M0 = 65280 (Z);
	R4 = M0;
	R4 = R2 & R4;
	I0 = R4;
	I1 = 0 (X);
	R5 = R1 << 8;
	R2 = R0 >> 24;
	R2 = R5 | R2;
	P2.H = 255;
	P2.L = 0;
	R7 = P2;
	R7 = R2 & R7;
	P0 = R7;
	P1 = 0 (X);
	R2 = R1 << 24;
	B2 = R2;
	R6 = R0 >> 8;
	R6 = R2 | R6;
	R2 = R6 >>> 24;
	R2 <<= 24;
	R3 = 0 (X);
	R1 = R0 >> 24;
	R5 = R1 | R5;
	R4 = R0 << 8;
	B0 = 0 (X);
	R7 = R5.B (Z);
	B1 = R7;
	R1 = R0 >> 8;
	R7 = B2;
	R7 = R1 | R7;
	R6 = R0 << 24;
	R0 = M0;
	R0 = R7 & R0;
	B3 = R0;
	M1 = R4;
	M2 = 0 (X);
	R4 = P2;
	R1 = M1;
	R4 = R1 & R4;
	M3 = R4;
	R0 = I2;
	R7 = I3;
	R1 = R6 | R7;
	R7 = I0;
	R4 = R0 | R7;
	R7 = I1;
	R5 = R1 | R7;
	R0 = P0;
	R6 = R4 | R0;
	R1 = P1;
	R7 = R5 | R1;
	R4 = R6 | R2;
	R5 = R7 | R3;
	R2 = B0;
	R6 = R4 | R2;
	R0 = B1;
	R7 = R5 | R0;
	R2 = R6 | R1;
	R4 = B3;
	R3 = R7 | R4;
	R5 = M2;
	R5 = R2 | R5;
	[SP] = R5;
	R7 = M3;
	R7 = R3 | R7;
	[SP+4] = R7;
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
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
	if !cc jump .L711 (bp);
	R1 = 16 (X);
.L707:
	R2 = 16 (X);
	R2 = R2 - R1;
	R0 >>= R2;
	R2 = 65280 (Z);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L712 (bp);
	R3 = 8 (X);
.L708:
	R2 = 8 (X);
	R2 = R2 - R3;
	R0 >>= R2;
	R1 = R1 + R3;
	R2 = 240 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L713 (bp);
	R3 = 4 (X);
.L709:
	R2 = 4 (X);
	R2 = R2 - R3;
	R0 >>= R2;
	R1 = R1 + R3;
	R2 = 12 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L714 (bp);
	R3 = 2 (X);
.L710:
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
.L711:
	R1 = 0 (X);
	jump.s .L707;
.L712:
	R3 = 0 (X);
	jump.s .L708;
.L713:
	R3 = 0 (X);
	jump.s .L709;
.L714:
	R3 = 0 (X);
	jump.s .L710;
	.size	___clzsi2, .-___clzsi2
	.align 4
.global ___cmpdi2;
.type ___cmpdi2, STT_FUNC;
___cmpdi2:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	[SP+16] = R2;
	R2 = [SP+16];
	R3 = [SP+20];
	P1 = R1;
	P2 = R3;
	cc =P1<P2;
	if cc jump .L717;
	cc =P1<=P2;
	if !cc jump .L718;
	P1 = R0;
	P2 = R2;
	cc =P1<P2 (iu);
	if cc jump .L719;
	cc =R0<=R2 (iu);
	if !cc jump .L720;
	R0 = 1 (X);
	jump.s .L716;
.L717:
	R0 = 0 (X);
.L716:
	SP += 8;
	rts;
.L718:
	R0 = 2 (X);
	jump.s .L716;
.L719:
	R0 = 0 (X);
	jump.s .L716;
.L720:
	R0 = 2 (X);
	jump.s .L716;
	.size	___cmpdi2, .-___cmpdi2
	.align 4
.global ___aeabi_lcmp;
.type ___aeabi_lcmp, STT_FUNC;
___aeabi_lcmp:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R2 = [SP+36];
	R3 = [SP+40];
	[SP+12] = R3;
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
	if !cc jump .L727 (bp);
	R1 = 16 (X);
.L723:
	R0 >>= R1;
	R2 = R0.B (Z);
	cc =R2==0;
	if !cc jump .L728 (bp);
	R2 = 8 (X);
.L724:
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 15 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L729 (bp);
	R2 = 4 (X);
.L725:
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 3 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L730 (bp);
	R2 = 2 (X);
.L726:
	R0 >>= R2;
	R3 = 3 (X);
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
.L727:
	R1 = 0 (X);
	jump.s .L723;
.L728:
	R2 = 0 (X);
	jump.s .L724;
.L729:
	R2 = 0 (X);
	jump.s .L725;
.L730:
	R2 = 0 (X);
	jump.s .L726;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	[--sp] = ( r7:6 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R6 = R0;
	R7 = R1;
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L732 (bp);
	R3 = 0 (X);
	R0 += -32;
	R2 = R1;
	R2 >>= R0;
.L733:
	[SP] = R2;
	[SP+4] = R3;
.L734:
	R0 = [SP];
	R1 = [SP+4];
	SP += 8;
	( r7:6 ) = [sp++];

	rts;
.L732:
	cc =R2==0;
	if cc jump .L735;
	R3 = R1;
	R3 >>= R2;
	R1 = 32 (X);
	R1 = R1 - R2;
	R7 <<= R1;
	R6 >>= R2;
	R2 = R7 | R6;
	jump.s .L733;
.L735:
	[SP] = R6;
	[SP+4] = R1;
	jump.s .L734;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	[--sp] = ( r7:4 );

	R7 = R1;
	R5 = R0.L (Z);
	R4 = R1.L (Z);
	R6 = R5;
	R6 *= R4;
	R1 = R6 >> 16;
	R6 = R6.L (Z);
	R0 >>= 16;
	R4 *= R0;
	R1 = R1 + R4;
	R4 = R1 << 16;
	R2 = R4 + R6;
	R3 = R1 >> 16;
	R1 = R2 >> 16;
	R6 = R2.L (Z);
	R7 >>= 16;
	R5 *= R7;
	R1 = R1 + R5;
	R5 = R1 << 16;
	R2 = R5 + R6;
	R1 >>= 16;
	R1 = R1 + R3;
	R0 *= R7;
	R3 = R0 + R1;
	R0 = R2;
	R1 = R3;
	( r7:4 ) = [sp++];

	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -20;
	[SP+12] = R0;
	[SP+16] = R1;
	R6 = R0;
	R7 = R1;
	[SP+48] = R2;
	R4 = [SP+48];
	R5 = [SP+52];
	R1 = R4;
	call ___muldsi3;
	[SP+12] = R0;
	R0 = R7;
	R0 *= R4;
	R6 *= R5;
	R0 = R0 + R6;
	R0 = R0 + R1;
	[SP+16] = R0;
	R0 = [SP+12];
	R1 = [SP+16];
	SP += 20;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	[--sp] = ( r7:6 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R6 = 0 (X);
	R7 = 0 (X);
	R0 = R6 - R0; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R7 - R1;
	R1 = R1 - R2;
	SP += 8;
	( r7:6 ) = [sp++];

	rts;
	.size	___negdi2, .-___negdi2
	.align 4
.global ___paritydi2;
.type ___paritydi2, STT_FUNC;
___paritydi2:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R2 = [SP];
	R0 = R2 ^ R1;
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
	SP += 8;
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
	[--sp] = ( r7:5 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R2 = R0;
	R3 = R1;
	CC = R0 < R0;
	R1 = ROT R1 BY -1;
	R0 = ROT R0 BY -1;
	R5.H = 21845;
	R5.L = 21845;
	R6 = R0 & R5;
	R7 = R1 & R5;
	R0 = R2 - R6; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R3 - R7;
	R1 = R1 - R2;
	R7 = R1 << 30;
	R2 = R0 >> 2;
	R2 = R7 | R2;
	R3 = R1 >> 2;
	R5.H = 13107;
	R5.L = 13107;
	R6 = R2 & R5;
	R7 = R3 & R5;
	R2 = R0 & R5;
	R3 = R1 & R5;
	R0 = R6 + R2; cc = ac0;
	R2 = CC;
	R1 = R7 + R3;
	R1 = R1 + R2;
	R7 = R1 << 28;
	R2 = R0 >> 4;
	R2 = R7 | R2;
	R3 = R1 >> 4;
	R6 = R2 + R0; cc = ac0;
	R0 = CC;
	R7 = R3 + R1;
	R7 = R7 + R0;
	R2.H = 3855;
	R2.L = 3855;
	R0 = R6 & R2;
	R1 = R7 & R2;
	R2 = R1 >> 0;
	R2 = R2 + R0;
	R0 = R2 >> 16;
	R2 = R2 + R0;
	R0 = R2 >> 8;
	R0 = R0 + R2;
	R1 = 127 (X);
	R0 = R0 & R1;
	SP += 8;
	( r7:5 ) = [sp++];

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
	jump.s .L746;
.L744:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L745;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L746:
	cc = !BITTST (R5,0);
	if cc jump .L744 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L744;
.L745:
	cc =R4==0;
	if cc jump .L747 (bp);
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L747:
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
	jump.s .L752;
.L750:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L751;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L752:
	cc = !BITTST (R7,0);
	if cc jump .L750 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L750;
.L751:
	cc =R4==0;
	if cc jump .L753 (bp);
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L753:
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
	[SP+16] = R2;
	R2 = [SP+16];
	R3 = [SP+20];
	P1 = R1;
	P2 = R3;
	cc =P1<P2 (iu);
	if cc jump .L757;
	cc =P1<=P2 (iu);
	if !cc jump .L758;
	P1 = R0;
	P2 = R2;
	cc =P1<P2 (iu);
	if cc jump .L759;
	cc =R0<=R2 (iu);
	if !cc jump .L760;
	R0 = 1 (X);
	jump.s .L756;
.L757:
	R0 = 0 (X);
.L756:
	SP += 8;
	rts;
.L758:
	R0 = 2 (X);
	jump.s .L756;
.L759:
	R0 = 0 (X);
	jump.s .L756;
.L760:
	R0 = 2 (X);
	jump.s .L756;
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
	R2 = [SP+36];
	R3 = [SP+40];
	[SP+12] = R3;
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
