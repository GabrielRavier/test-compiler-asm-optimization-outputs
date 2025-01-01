.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	[--sp] = ( p5:4 );

	P4 = R0;
	P5 = R1;
	P2 = R2;
	cc =P4<=P5 (iu);
	if cc jump .L2 (bp);
	P1 = P5 + P2;
	cc =P2==0;
	if cc jump .L3;
	P2 += -1;
	P2 = P4 + P2;
	P0 = P1;
	P0 += -1;
	P1 -= P5;
	LSETUP (.L4, .L10) LC1 = P1;
.L4:
	R0 = B [P0] (X);
	P0 += -1;
.L10:
	B [P2--] = R0;
.L3:
	R0 = P4;
	( p5:4 ) = [sp++];

	rts;
.L2:
	cc =P4==P5;
	if cc jump .L3;
	cc =P2==0;
	if cc jump .L3;
	nop;
	P1 = R0;
	LSETUP (.L5, .L9) LC1 = P2;
.L5:
	R0 = B [P5++] (X);
.L9:
	B [P1++] = R0;
	jump.s .L3;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	R3 = R0;
	P0 = R1;
	R1 = [SP+12];
	R2 = R2.B (Z);
	cc =R1==0;
	if cc jump .L12;
	P2 = R0;
	P1 = R1;
	LSETUP (.L13, .L18) LC1 = P1;
.L13:
	R3 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (Z);
	cc =R0==R2;
	if cc jump .L12;
.L18:
	R1 += -1;
	R3 = P2;
.L12:
	cc =R1==0;
	if cc jump .L16;
	R3 += 1;
.L11:
	R0 = R3;
	rts;
.L16:
	R3 = 0 (X);
	jump.s .L11;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	R3 = R1;
	R1 = R2;
	R3 = R3.B (Z);
	cc =R2==0;
	if cc jump .L24;
	P2 = R2;
	LSETUP (.L21, .L27) LC1 = P2;
.L21:
	P1 = R0;
	R0 += 1;
	R2 = B [P1] (Z);
	cc =R2==R3;
	if cc jump .L20;
.L27:
	R1 += -1;
.L24:
	P1 = R0;
.L20:
	cc =R1==0;
	if cc jump .L26;
.L19:
	R0 = P1;
	rts;
.L26:
	P1 = 0 (X);
	jump.s .L19;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	[--sp] = ( r7:7 );

	P0 = R0;
	P1 = R1;
	cc =R2==0;
	if cc jump .L29;
	R1 = R0;
	R0 = P1;
	P2 = R2;
	LSETUP (.L30, .L35) LC1 = P2;
.L30:
	P1 = R0;
	P0 = R1;
	R1 += 1;
	R0 += 1;
	R7 = B [P0] (Z);
	R3 = B [P1] (Z);
	cc =R7==R3;
	if !cc jump .L29;
.L35:
	R2 += -1;
	P0 = R1;
	P1 = R0;
.L29:
	cc =R2==0;
	if cc jump .L33 (bp);
	R0 = B [P0] (Z);
	R1 = B [P1] (Z);
	R0 = R0 - R1;
.L28:
	( r7:7 ) = [sp++];

	rts;
.L33:
	R0 = 0 (X);
	jump.s .L28;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	[--SP] = RETS;
	SP += -12;
	R3 = R0;
	cc =R2==0;
	if cc jump .L37;
	call _memcpy;
	R3 = R0;
.L37:
	R0 = R3;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	[--sp] = ( r7:7 );

	R3 = R0;
	R0 = R2;
	R7 = R1.B (Z);
	R0 += -1;
	R0 = R3 + R0;
	R3 += -1;
.L39:
	cc =R0==R3;
	if cc jump .L42;
	nop;
	P2 = R0;
	R0 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if !cc jump .L39 (bp);
	jump.s .L38;
.L42:
	P2 = 0 (X);
.L38:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	R3 = R0;
	R0 = R1;
	P2 = R2;
	cc =P2==0;
	if cc jump .L44;
	P1 = R3;
	LSETUP (.L45, .L47) LC1 = P2;
.L45:
.L47:
	B [P1++] = R0;
.L44:
	R0 = R3;
	rts;
	.size	_memset, .-_memset
	.align 4
.global _stpcpy;
.type _stpcpy, STT_FUNC;
_stpcpy:
	P2 = R0;
	P1 = R1;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L51;
	P1 += 1;
	P2 += 1;
.L50:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L50 (bp);
.L48:
	R0 = R1;
	rts;
.L51:
	R1 = P2;
	jump.s .L48;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	P2 = R0;
	R2 = R1.B (Z);
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L53;
.L54:
	R0 = R0.B (Z);
	cc =R0==R2;
	if cc jump .L53;
	nop;
	nop;
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if !cc jump .L54 (bp);
.L53:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
.L61:
	R2 = P2;
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L59;
	cc =R0==0;
	if !cc jump .L61 (bp);
	R2 = 0 (X);
.L59:
	R0 = R2;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	P1 = R0;
	P2 = R1;
	R0 = B [P1] (X);
	R1 = B [P2] (X);
	R3 = R0.B (X);
	R2 = R1.B (X);
	cc =R3==R2;
	if !cc jump .L64;
	P1 += 1;
	P2 += 1;
.L65:
	R2 = R0.B (X);
	cc =R2==0;
	if cc jump .L64;
	nop;
	nop;
	nop;
	R0 = B [P1++] (X);
	R1 = B [P2++] (X);
	R3 = R0.B (X);
	R2 = R1.B (X);
	cc =R3==R2;
	if cc jump .L65 (bp);
.L64:
	R0 = R0.B (Z);
	R1 = R1.B (Z);
	R0 = R0 - R1;
	rts;
	.size	_strcmp, .-_strcmp
	.align 4
.global _strlen;
.type _strlen, STT_FUNC;
_strlen:
	P1 = R0;
	R0 = B [P1] (X);
	cc =R0==0;
	if cc jump .L70;
	R0 = P1;
	R0 += 1;
.L69:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L69 (bp);
.L68:
	P2 -= P1;
	R0 = P2;
	rts;
.L70:
	P2 = P1;
	jump.s .L68;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	[--sp] = ( p5:5 );

	P0 = R0;
	P5 = R1;
	P2 = R2;
	cc =P2==0;
	if cc jump .L77;
	nop;
	nop;
	nop;
	R0 = B [P0] (X);
	R1 = R0.B (Z);
	cc =R1==0;
	if cc jump .L74;
	P0 += 1;
	P1 = P5;
.L75:
	P5 = P1;
	R1 = B [P1++] (Z);
	cc =R1==0;
	if cc jump .L74;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L79;
	jump.s .L74;
.L79:
	R2 = R0.B (Z);
	cc =R1==R2;
	if !cc jump .L74;
	nop;
	nop;
	nop;
	R0 = B [P0++] (X);
	R1 = R0.B (Z);
	cc =R1==0;
	if !cc jump .L75 (bp);
	P5 = P1;
.L74:
	R0 = R0.B (Z);
	R1 = B [P5] (Z);
	R0 = R0 - R1;
.L72:
	( p5:5 ) = [sp++];

	rts;
.L77:
	R0 = 0 (X);
	jump.s .L72;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =R2<=1;
	if cc jump .L80;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L82, .L84) LC1 = P0;
.L82:
	R0 = B [P2+1] (X);
	B [P1] = R0;
	R0 = B [P2] (X);
	B [P1+1] = R0;
	P1 += 2;
.L84:
	P2 += 2;
.L80:
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
	if cc jump .L89;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
.L87:
	rts;
.L89:
	R0 = 1 (X);
	jump.s .L87;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L92 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
.L90:
	rts;
.L92:
	R0 = 1 (X);
	jump.s .L90;
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
	P2 = R0;
	R0 = -97 (X);
	P1 = R0;
	P2 = P2 + P1;
	P1 = 25 (X);
	cc =P2<=P1 (iu);
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
	if cc jump .L99;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
.L97:
	rts;
.L99:
	R0 = 1 (X);
	jump.s .L97;
	.size	_isspace, .-_isspace
	.align 4
.global _isupper;
.type _isupper, STT_FUNC;
_isupper:
	P2 = R0;
	R0 = -65 (X);
	P1 = R0;
	P2 = P2 + P1;
	P1 = 25 (X);
	cc =P2<=P1 (iu);
	R0 = CC;
	rts;
	.size	_isupper, .-_isupper
	.align 4
.global _iswcntrl;
.type _iswcntrl, STT_FUNC;
_iswcntrl:
	P2 = R0;
	P0 = 31 (X);
	cc =P2<=P0 (iu);
	if cc jump .L105 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if cc jump .L105 (bp);
	P1 = -8232 (X);
	P1 = P2 + P1;
	cc =P1<=1 (iu);
	if cc jump .L105;
	R0 = 7 (X);
	R0.H = 65535;
	P1 = R0;
	P2 = P2 + P1;
	cc =P2<=2 (iu);
	R0 = CC;
	jump.s .L101;
.L105:
	R0 = 1 (X);
.L101:
	rts;
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
	if cc jump .L114;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L112;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L112;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L112;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L113;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L107;
.L114:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L107;
.L112:
	R0 = 1 (X);
.L107:
	rts;
.L113:
	R0 = 0 (X);
	jump.s .L107;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L117 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
.L115:
	rts;
.L117:
	R0 = 1 (X);
	jump.s .L115;
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
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	[SP+40] = R2;
	[SP+12] = R1;
	R2 = [SP+32];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L122;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L123;
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L126 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L119:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L122:
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L119;
.L123:
	R1 = [SP+40];
	R2 = [SP+44];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L119;
.L126:
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L119;
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
	if !cc jump .L127;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L131;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L134 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L127:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L131:
	R7 = R6;
	jump.s .L127;
.L134:
	R7 = 0 (X);
	jump.s .L127;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -32;
	[SP+40] = R0;
	[SP+44] = R1;
	[SP+48] = R2;
	[SP+12] = R1;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L143;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L142;
	R0 = [SP+44];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L137 (bp);
	cc =R0==0;
	if !cc jump .L143 (bp);
.L142:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L135;
.L137:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L138 (bp);
.L143:
	R0 = [SP+48];
	R1 = [SP+52];
.L144:
	[SP+24] = R0;
	[SP+28] = R1;
.L135:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L138:
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L144;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R6 = R0;
	R7 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L145;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L152;
	R0 = R6 >>> 31;
	R0 <<= 31;
	R1 = R7 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L147 (bp);
.L154:
	cc =R0==0;
	if !cc jump .L145 (bp);
.L152:
	R7 = R6;
.L145:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L147:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	jump.s .L154;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -32;
	[SP+40] = R0;
	[SP+44] = R1;
	[SP+48] = R2;
	[SP+12] = R1;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L163;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L162;
	R0 = [SP+44];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L157 (bp);
	cc =R0==0;
	if !cc jump .L163 (bp);
.L162:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L155;
.L157:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L158 (bp);
.L163:
	R0 = [SP+48];
	R1 = [SP+52];
.L164:
	[SP+24] = R0;
	[SP+28] = R1;
.L155:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L158:
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L164;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	[SP+40] = R2;
	[SP+12] = R1;
	R2 = [SP+32];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L171;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L173;
	R0 = [SP+36];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L167 (bp);
	cc =R0==0;
	if !cc jump .L173 (bp);
.L171:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L165;
.L167:
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L168 (bp);
.L173:
	R0 = [SP+32];
	R1 = [SP+36];
.L174:
	[SP+16] = R0;
	[SP+20] = R1;
.L165:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L168:
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L174;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L181;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L175;
	R0 = R7 >>> 31;
	R0 <<= 31;
	R1 = R6 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L177 (bp);
.L184:
	cc =R0==0;
	if !cc jump .L175 (bp);
.L181:
	R7 = R6;
.L175:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L177:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	jump.s .L184;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	[SP+40] = R2;
	[SP+12] = R1;
	R2 = [SP+32];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L191;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L193;
	R0 = [SP+36];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L187 (bp);
	cc =R0==0;
	if !cc jump .L193 (bp);
.L191:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L185;
.L187:
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L188 (bp);
.L193:
	R0 = [SP+32];
	R1 = [SP+36];
.L194:
	[SP+16] = R0;
	[SP+20] = R1;
.L185:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L188:
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L194;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	P1.L = _s.0;
	cc =R0==0;
	if cc jump .L196;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L197:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
	cc =R0==0;
	if !cc jump .L197 (bp);
.L196:
	R0 = 0 (X);
	B [P1] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	rts;
	.size	_l64a, .-_l64a
	.align 4
.global _srand;
.type _srand, STT_FUNC;
_srand:
	P2.H = _seed;
	P2.L = _seed;
	R0 += -1;
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
	SP += -16;
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
	R2 = R0;
	R0 = R1;
	R2 += 1; cc = ac0;
	R1 = CC;
	R0 = R0 + R1;
	[P5] = R2;
	[P5+4] = R0;
	R0 >>= 1;
	SP += 16;
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
	if cc jump .L205;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L202;
	[P1+4] = P2;
.L202:
	rts;
.L205:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L202;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L207;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L207:
	P1 = [P2+4];
	cc =P1==0;
	if cc jump .L206;
	nop;
	nop;
	nop;
	R0 = [P2];
	[P1] = R0;
.L206:
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	R5 = R0;
	[SP+52] = R1;
	FP = R2;
	P5 = [SP+60];
	P4 = [SP+64];
	R6 = [FP];
	cc =R6==0;
	if cc jump .L210;
	R7 = R1;
	P3 = 0 (X);
.L212:
	R4 = R7;
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	if cc jump .L209;
	P3 += 1;
	R0 = P5;
	R7 = R7 + R0;
	R0 = P3;
	cc =R6==R0;
	if !cc jump .L212 (bp);
.L210:
	R0 = R6;
	R0 += 1;
	[FP] = R0;
	R0 = P5;
	R6 *= R0;
	P1 = [SP+52];
	P2 = R6;
	P3 = P1 + P2;
	R2 = P5;
	R1 = R5;
	R0 = P3;
	call _memcpy;
	R4 = R0;
.L209:
	R0 = R4;
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
	R7 = R1;
	P2 = R2;
	P4 = [SP+56];
	P5 = [SP+60];
	R4 = [P2];
	cc =R4==0;
	if cc jump .L215;
	R6 = 0 (X);
.L217:
	P3 = R7;
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	if cc jump .L214;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R4==R6;
	if !cc jump .L217 (bp);
.L215:
	P3 = 0 (X);
.L214:
	R0 = P3;
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
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
.L221:
	R7 = P5;
	R6 = B [P5++] (X);
	R0 = R6;
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L221 (bp);
	R0 = 43 (X);
	cc =R6==R0;
	if cc jump .L228;
	R3 = 45 (X);
	cc =R6==R3;
	if !cc jump .L229 (bp);
	R2 = 1 (X);
.L222:
	R7 += 1;
.L223:
	P1 = R7;
	jump.s .L233;
.L228:
	R2 = P2;
	jump.s .L222;
.L224:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
.L233:
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L224 (bp);
	cc =R2==0;
	if !cc jump .L220 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L220:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:6, p5:5 ) = [sp++];

	rts;
.L229:
	R2 = P2;
	jump.s .L223;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
.L235:
	R7 = P5;
	R6 = B [P5++] (X);
	R0 = R6;
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L235 (bp);
	R0 = 43 (X);
	cc =R6==R0;
	if cc jump .L242;
	R3 = 45 (X);
	cc =R6==R3;
	if !cc jump .L243 (bp);
	R2 = 1 (X);
.L236:
	R7 += 1;
.L237:
	P1 = R7;
	jump.s .L247;
.L242:
	R2 = P2;
	jump.s .L236;
.L238:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
.L247:
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L238 (bp);
	cc =R2==0;
	if !cc jump .L234 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L234:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:6, p5:5 ) = [sp++];

	rts;
.L243:
	R2 = P2;
	jump.s .L237;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P4 = R0;
.L249:
	P5 = P4;
	R7 = B [P4++] (X);
	R0 = R7;
	call _isspace;
	R6 = R0;
	cc =R0==0;
	if !cc jump .L249 (bp);
	R0 = 43 (X);
	cc =R7==R0;
	if cc jump .L250;
	R1 = 45 (X);
	cc =R7==R1;
	if !cc jump .L251 (bp);
	R6 = 1 (X);
.L250:
	P5 += 1;
.L251:
	nop;
	R7 = B [P5] (X);
	R0 = R7.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L258;
	P5 += 1;
	R4 = 0 (X);
	R1 = 0 (X);
	R5 = 0 (X);
.L252:
	[SP+12] = R5;
	R2 = 10 (X);
	R0 = R4;
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	R2 = R7;
	R2 += -48;
	R2 = R2.B (X);
	R3 = R2.B (X);
	R3 >>>= 31;
	R4 = R0 - R2;
	cc =R0<R2 (iu);
	R0 = CC;
	R1 = R1 - R3;
	R1 = R1 - R0;
	R7 = B [P5++] (X);
	R0 = R7.B (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L252 (bp);
.L253:
	cc =R6==0;
	if !cc jump .L248 (bp);
	CC = R4;
	R0 = CC;
	R1 = -R1;
	R4 = -R4;
	R1 = R1 - R0;
.L248:
	R0 = R4;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L258:
	R4 = 0 (X);
	R1 = 0 (X);
	jump.s .L253;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	R5 = R1;
	R7 = R2;
	R4 = [SP+56];
	P4 = [SP+60];
	jump.s .L266;
.L264:
	R7 = P3;
.L266:
	cc =R7==0;
	if cc jump .L260;
	P2 = R7;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L264;
	cc =R0<=0;
	if cc jump .L259;
	R5 = R6 + R4;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	jump.s .L266;
.L260:
	R6 = 0 (X);
.L259:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

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
	cc =R2==0;
	if !cc jump .L271 (bp);
.L268:
	R7 = 0 (X);
.L267:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L270:
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L268;
.L271:
	R7 = R6 >>> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R2 = P4;
	R1 = R7;
	R0 = P5;
	call (P3);
	cc =R0==0;
	if cc jump .L267;
	cc =R0<=0;
	if cc jump .L270;
	R5 = R7 + R4;
	R6 += -1;
	jump.s .L270;
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
	if cc jump .L277;
.L275:
	SP += 8;
	rts;
.L277:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L275;
	.size	_imaxabs, .-_imaxabs
	.align 4
.global _imaxdiv;
.type _imaxdiv, STT_FUNC;
_imaxdiv:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -24;
	P5 = P0;
	[SP+40] = R0;
	[SP+44] = R1;
	R7 = R2;
	R6 = [SP+52];
	[SP+12] = R6;
	call ___divdi3;
	[P5] = R0;
	[P5+4] = R1;
	[SP+12] = R6;
	R2 = R7;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	R0 = P5;
	SP += 24;
	RETS = [SP++];
	( r7:6, p5:5 ) = [sp++];

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
	if cc jump .L284;
.L282:
	SP += 8;
	rts;
.L284:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L282;
	.size	_llabs, .-_llabs
	.align 4
.global _lldiv;
.type _lldiv, STT_FUNC;
_lldiv:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -24;
	P5 = P0;
	[SP+40] = R0;
	[SP+44] = R1;
	R7 = R2;
	R6 = [SP+52];
	[SP+12] = R6;
	call ___divdi3;
	[P5] = R0;
	[P5+4] = R1;
	[SP+12] = R6;
	R2 = R7;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	R0 = P5;
	SP += 24;
	RETS = [SP++];
	( r7:6, p5:5 ) = [sp++];

	rts;
	.size	_lldiv, .-_lldiv
	.align 4
.global _wcschr;
.type _wcschr, STT_FUNC;
_wcschr:
	P2 = R0;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L288;
.L287:
	cc =R1==R0;
	if cc jump .L288;
	nop;
	nop;
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L287 (bp);
.L288:
	cc =R0==0;
	if cc jump .L293;
.L286:
	R0 = P2;
	rts;
.L293:
	P2 = 0 (X);
	jump.s .L286;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	P1 = R0;
	P2 = R1;
	R0 = [P1];
	R1 = [P2];
	cc =R0==R1;
	if !cc jump .L295;
	P1 += 4;
	P2 += 4;
.L296:
	cc =R0==0;
	if cc jump .L295;
	cc =R1==0;
	if cc jump .L295;
	nop;
	nop;
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if cc jump .L296 (bp);
.L295:
	cc =R0<R1;
	if cc jump .L299 (bp);
	cc =R1<R0;
	R0 = CC;
.L294:
	rts;
.L299:
	R0 = -1 (X);
	jump.s .L294;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P2 = R1;
	P1 = R0;
.L301:
	nop;
	R0 = [P2++];
	[P1++] = R0;
	cc =R0==0;
	if !cc jump .L301 (bp);
	R0 = R2;
	rts;
	.size	_wcscpy, .-_wcscpy
	.align 4
.global _wcslen;
.type _wcslen, STT_FUNC;
_wcslen:
	P1 = R0;
	R0 = [P1];
	cc =R0==0;
	if cc jump .L306;
	R0 = P1;
	R0 += 4;
.L305:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L305 (bp);
.L304:
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L306:
	P2 = P1;
	jump.s .L304;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:5 );

	P5 = R0;
	P0 = R1;
	cc =R2==0;
	if cc jump .L309;
	P2 = R0;
	R0 = R1;
	P1 = R2;
	LSETUP (.L310, .L316) LC1 = P1;
.L310:
	P0 = R0;
	P5 = P2;
	R1 = [P2++];
	R0 += 4;
	R3 = [P0];
	cc =R1==R3;
	if !cc jump .L309;
	cc =R1==0;
	if cc jump .L309;
.L316:
	R2 += -1;
	P5 = P2;
	P0 = R0;
.L309:
	cc =R2==0;
	if cc jump .L313 (bp);
	R0 = [P5];
	R1 = [P0];
	cc =R0<R1;
	if cc jump .L314 (bp);
	cc =R1<R0;
	R0 = CC;
	jump.s .L308;
.L313:
	R0 = 0 (X);
.L308:
	( p5:5 ) = [sp++];

	rts;
.L314:
	R0 = -1 (X);
	jump.s .L308;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	R3 = R1;
	R1 = R2;
	cc =R2==0;
	if cc jump .L322;
	P2 = R2;
	LSETUP (.L319, .L325) LC1 = P2;
.L319:
	P1 = R0;
	R0 += 4;
	R2 = [P1];
	cc =R2==R3;
	if cc jump .L318;
.L325:
	R1 += -1;
.L322:
	P1 = R0;
.L318:
	cc =R1==0;
	if cc jump .L324;
.L317:
	R0 = P1;
	rts;
.L324:
	P1 = 0 (X);
	jump.s .L317;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[--sp] = ( r7:7 );

	P0 = R0;
	P1 = R1;
	cc =R2==0;
	if cc jump .L327;
	R1 = R0;
	R0 = P1;
	P2 = R2;
	LSETUP (.L328, .L334) LC1 = P2;
.L328:
	P1 = R0;
	P0 = R1;
	R1 += 4;
	R0 += 4;
	R3 = [P1];
	R7 = [P0];
	cc =R7==R3;
	if !cc jump .L327;
.L334:
	R2 += -1;
	P0 = R1;
	P1 = R0;
.L327:
	cc =R2==0;
	if cc jump .L331 (bp);
	R0 = [P0];
	R1 = [P1];
	cc =R0<R1;
	if cc jump .L332 (bp);
	cc =R1<R0;
	R0 = CC;
	jump.s .L326;
.L331:
	R0 = 0 (X);
.L326:
	( r7:7 ) = [sp++];

	rts;
.L332:
	R0 = -1 (X);
	jump.s .L326;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	[--SP] = RETS;
	SP += -12;
	R3 = R0;
	R0 = R2;
	cc =R2==0;
	if cc jump .L336;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L336:
	R0 = R3;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	[--sp] = ( r7:7, p5:5 );

	R3 = R0;
	P1 = R1;
	R1 = R2;
	R0 = P1;
	cc =R3==R0;
	if cc jump .L338;
	P0 = R3;
	P2 = R2;
	P2 += -1;
	R7 = R3 - R0;
	R2 <<= 2;
	cc =R7<R2 (iu);
	if cc jump .L339 (bp);
	P2 += 1;
	cc =R1==0;
	if cc jump .L338;
	nop;
	nop;
	LSETUP (.L340, .L346) LC1 = P2;
.L340:
	R0 = [P1++];
.L346:
	[P0++] = R0;
	jump.s .L338;
.L339:
	cc =R1==0;
	if cc jump .L338;
	P2 = P2 << 2;
	P1 = P1 + P2;
	P5 = R3;
	P0 = P5 + P2;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L341, .L345) LC1 = P2;
.L341:
	R0 = [P1];
	P1 += -4;
.L345:
	[P0--] = R0;
.L338:
	R0 = R3;
	( r7:7, p5:5 ) = [sp++];

	rts;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	R3 = R0;
	R0 = R1;
	P2 = R2;
	P2 += -1;
	cc =R2==0;
	if cc jump .L348;
	P1 = R3;
	P2 += 1;
	LSETUP (.L349, .L351) LC1 = P2;
.L349:
.L351:
	[P1++] = R0;
.L348:
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	[--sp] = ( p5:4 );

	P4 = R0;
	P2 = R1;
	P1 = R2;
	cc =P4<P2 (iu);
	if !cc jump .L353 (bp);
	P0 = P4 + P1;
	cc =P1==0;
	if cc jump .L352;
	P1 += -1;
	P2 = P2 + P1;
	P5 = P0;
	P5 += -1;
	P0 -= P4;
	LSETUP (.L355, .L360) LC1 = P0;
.L355:
	R0 = B [P5] (X);
	P5 += -1;
.L360:
	B [P2--] = R0;
.L352:
	( p5:4 ) = [sp++];

	rts;
.L353:
	cc =P4==P2;
	if cc jump .L352;
	cc =P1==0;
	if cc jump .L352;
	nop;
	nop;
	LSETUP (.L356, .L359) LC1 = P1;
.L356:
	R0 = B [P4++] (X);
.L359:
	B [P2++] = R0;
	jump.s .L352;
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
	R2 = R0;
	R3 = 15 (X);
	R1 = R1 & R3;
	R0 = R2;
	R0 <<= R1;
	R2 = R2.L (Z);
	R1 = -R1;
	R1 = R1 & R3;
	R2 >>= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	R2 = R0;
	R3 = 15 (X);
	R1 = R1 & R3;
	R0 = R0.L (Z);
	R0 >>= R1;
	R1 = -R1;
	R1 = R1 & R3;
	R2 <<= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	R2 = R0;
	R3 = 7 (X);
	R1 = R1 & R3;
	R0 = R2;
	R0 <<= R1;
	R2 = R2.B (Z);
	R1 = -R1;
	R1 = R1 & R3;
	R2 >>= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	R2 = R0;
	R3 = 7 (X);
	R1 = R1 & R3;
	R0 = R0.B (Z);
	R0 >>= R1;
	R1 = -R1;
	R1 = R1 & R3;
	R2 <<= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotr8, .-_rotr8
	.align 4
.global _bswap_16;
.type _bswap_16, STT_FUNC;
_bswap_16:
	R1 = R0;
	R0 = R0.L (Z);
	R0 >>= 8;
	R1 <<= 8;
	R0 = R0 | R1;
	rts;
	.size	_bswap_16, .-_bswap_16
	.align 4
.global _bswap_32;
.type _bswap_32, STT_FUNC;
_bswap_32:
	R1 = R0 << 24;
	R2 = R0 >> 24;
	R1 = R1 | R2;
	R2 = R0 >> 8;
	R3 = 65280 (Z);
	R2 = R2 & R3;
	R1 = R1 | R2;
	R0 <<= 8;
	R2 = 255 (X);
	R2 <<= 16;
	R0 = R0 & R2;
	R0 = R1 | R0;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:4 );

	R2 = R0 << 24;
	R3 = R1 >> 24;
	R7 = R1 >> 8;
	R5 = 65280 (Z);
	R7 = R7 & R5;
	R3 = R3 | R7;
	R6 = R1 << 8;
	R7 = R0 >> 24;
	R7 = R6 | R7;
	R6 = 255 (X);
	R6 <<= 16;
	R7 = R7 & R6;
	R3 = R3 | R7;
	R1 <<= 24;
	R3 = R3 | R1;
	R7 = R0 << 8;
	R4 = R0 >> 24;
	R2 = R2 | R4;
	R0 >>= 8;
	R0 = R0 | R1;
	R0 = R0 & R5;
	R1 = R2 | R0;
	R7 = R7 & R6;
	R1 = R1 | R7;
	R0 = R3;
	( r7:4 ) = [sp++];

	rts;
	.size	_bswap_64, .-_bswap_64
	.align 4
.global _ffs;
.type _ffs, STT_FUNC;
_ffs:
	R2 = R0;
	R0 = 0 (X);
	P2 = 32 (X);
	LSETUP (.L377, .L379) LC1 = P2;
.L377:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L374;
.L379:
	nop;
	R0 = 0 (X);
.L374:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L383;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L380;
	R1 = 1 (X);
.L382:
	R0 >>>= 1;
	R1 += 1;
	cc = !BITTST (R0,0);
	if cc jump .L382 (bp);
.L380:
	R0 = R1;
	rts;
.L383:
	R1 = R0;
	jump.s .L380;
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
	if cc jump .L388 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L389;
.L387:
	R0 = R6;
.L385:
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L389:
	R6 = 0 (X);
	jump.s .L387;
.L388:
	R0 = 1 (X);
	jump.s .L385;
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
	if cc jump .L393 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L394;
.L392:
	R0 = R7;
.L390:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L394:
	R7 = 0 (X);
	jump.s .L392;
.L393:
	R0 = 1 (X);
	jump.s .L390;
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
	if cc jump .L398 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L399;
.L397:
	R0 = R7;
.L395:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L399:
	R7 = 0 (X);
	jump.s .L397;
.L398:
	R0 = 1 (X);
	jump.s .L395;
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
	if !cc jump .L402;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L402 (bp);
	cc =R7<0;
	if cc jump .L409;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L406;
.L409:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L406;
.L405:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L402;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L406:
	cc = !BITTST (R7,0);
	if cc jump .L405 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L405;
.L402:
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
	[--sp] = ( r7:7 );

	[--SP] = R4;
	[--SP] = R5;
	[--SP] = RETS;
	SP += -32;
	[SP+48] = R0;
	[SP+52] = R1;
	R7 = R2;
	R5 = R1;
	[SP+12] = R1;
	R2 = R0;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L411;
	[SP+12] = R5;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	[SP+24] = R0;
	[SP+28] = R1;
	[SP+12] = R5;
	R2 = [SP+48];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L411 (bp);
	R4 = 0 (X);
	cc =R7<0;
	if cc jump .L418;
	R5 = 1 (X);
	R5 <<= 30;
	jump.s .L415;
.L418:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L415;
.L414:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L411;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L415:
	cc = !BITTST (R7,0);
	if cc jump .L414 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L414;
.L411:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_ldexp, .-_ldexp
	.align 4
.global _ldexpl;
.type _ldexpl, STT_FUNC;
_ldexpl:
	[--sp] = ( r7:7 );

	[--SP] = R4;
	[--SP] = R5;
	[--SP] = RETS;
	SP += -32;
	[SP+48] = R0;
	[SP+52] = R1;
	R7 = R2;
	R5 = R1;
	[SP+12] = R1;
	R2 = R0;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L420;
	[SP+12] = R5;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	[SP+24] = R0;
	[SP+28] = R1;
	[SP+12] = R5;
	R2 = [SP+48];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L420 (bp);
	R4 = 0 (X);
	cc =R7<0;
	if cc jump .L427;
	R5 = 1 (X);
	R5 <<= 30;
	jump.s .L424;
.L427:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L424;
.L423:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L420;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L424:
	cc = !BITTST (R7,0);
	if cc jump .L423 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L423;
.L420:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	R3 = R0;
	P0 = R1;
	P2 = R2;
	cc =P2==0;
	if cc jump .L429;
	nop;
	P1 = R0;
	LSETUP (.L430, .L432) LC1 = P2;
.L430:
	R0 = B [P1++] (X);
	R1 = B [P0++] (X);
	R0 = R0 ^ R1;
.L432:
	B [P1+-1] = R0;
.L429:
	R0 = R3;
	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	[--sp] = ( r7:6, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P4 = R0;
	R6 = R1;
	R7 = R2;
	call _strlen;
	P5 = R0;
	P5 = P4 + P5;
	cc =R7==0;
	if cc jump .L434;
	P0 = R6;
	P2 = P5;
	P1 = R7;
	LSETUP (.L435, .L439) LC1 = P1;
.L435:
	P5 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L434;
.L439:
	R7 += -1;
	P5 = P2;
.L434:
	cc =R7==0;
	if !cc jump .L437 (bp);
	R0 = 0 (X);
	B [P5] = R0;
.L437:
	R0 = P4;
	SP += 12;
	RETS = [SP++];
	( r7:6, p5:4 ) = [sp++];

	rts;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R1==0;
	if cc jump .L447;
	R1 = 0 (X);
	R3 = R0 - R1;
	P0 = R3;
	LSETUP (.L442, .L449) LC1 = P0;
.L442:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L448;
.L440:
	R0 = R1;
	rts;
.L448:
.L449:
	R1 += 1;
.L447:
	R1 = R0;
	jump.s .L440;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	R0 = R1.B (X);
	cc =R0==0;
	if cc jump .L455;
	nop;
.L451:
	P2 = R2;
	R1 = R1.B (X);
.L454:
	nop;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L457;
	cc =R0==R1;
	if !cc jump .L454 (bp);
.L452:
	R0 = P1;
	rts;
.L457:
	P1 += 1;
	R1 = B [P1] (X);
	R0 = R1.B (X);
	cc =R0==0;
	if !cc jump .L451 (bp);
.L455:
	P1 = 0 (X);
	jump.s .L452;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R3 = R1;
	P1 = 0 (X);
	jump.s .L460;
.L459:
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L463;
	nop;
	nop;
.L460:
	R2 = P2;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==R3;
	if !cc jump .L459 (bp);
	P1 = R2;
	jump.s .L459;
.L463:
	R0 = P1;
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
	if cc jump .L464;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
.L466:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if cc jump .L464;
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L464;
	R7 += 1;
	jump.s .L466;
.L464:
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
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	[SP+40] = R2;
	R7 = 0 (X);
	[SP+12] = R7;
	R2 = 0 (X);
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L478;
.L470:
	R7 = 0 (X);
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L473;
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L472;
.L473:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L478:
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L470 (bp);
.L472:
	R0 = [SP+32];
	R1 = [SP+36];
	BITTGL (R1, 31);
	[SP+32] = R0;
	[SP+36] = R1;
	jump.s .L473;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:5, p5:3 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	P4 = R1;
	P3 = R2;
	R5 = [SP+52];
	cc =R5==0;
	if cc jump .L483;
	cc =R1<R5 (iu);
	if cc jump .L485;
	P2 = R5;
	P4 -= P2;
	P4 = P5 + P4;
	cc =P5<=P4 (iu);
	if !cc jump .L485;
	nop;
	nop;
	nop;
	R6 = B [P3++] (X);
	R5 += -1;
	jump.s .L482;
.L481:
	cc =P5<=P4 (iu);
	if !cc jump .L485;
	nop;
	nop;
	nop;
.L482:
	R0 = B [P5] (X);
	R7 = P5;
	P5 += 1;
	R0 = R0.B (X);
	cc =R0==R6;
	if !cc jump .L481 (bp);
	R2 = R5;
	R1 = P3;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L481 (bp);
	jump.s .L479;
.L483:
	R7 = R0;
	jump.s .L479;
.L485:
	R7 = 0 (X);
.L479:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:5, p5:3 ) = [sp++];

	rts;
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
	if cc jump .L512;
	R4 = 0 (X);
.L489:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L509;
	R7 = 0 (X);
	R5 = 511 (X);
	R5 <<= 21;
	R6 = 1023 (X);
	R6 <<= 20;
.L493:
	R7 += 1;
	[SP+12] = R5;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	[SP+12] = R6;
	R2 = 0 (X);
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L493 (bp);
.L494:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L498 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L498:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L512:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L489;
.L509:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L510 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	R7 = 0 (X);
	cc =R0==0;
	if cc jump .L494 (bp);
	R6 = 511 (X);
	R6 <<= 21;
.L497:
	R7 += -1;
	R0 = [SP+52];
	[SP+12] = R0;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	[SP+48] = R0;
	[SP+52] = R1;
	[SP+12] = R6;
	R2 = 0 (X);
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L497 (bp);
	jump.s .L494;
.L510:
	R7 = 0 (X);
	jump.s .L494;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -24;
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+16];
	R0 = [SP+20];
	R6 = R2;
	R4 = [SP+68];
	R7 = R1;
	R5 = R0;
	R0 = R0 | R1;
	P3 = 0 (X);
	P5 = 0 (X);
	cc =R0==0;
	if cc jump .L513;
	P4 = 1 (X);
.L516:
	R1 = P4;
	R0 = R7 & R1;
	[SP+12] = R4;
	R2 = R6;
	R1 = 0 (X);
	call ___muldi3;
	R2 = P3;
	R0 = R0 + R2; cc = ac0;
	R2 = CC;
	R3 = P5;
	R1 = R1 + R3;
	P3 = R0;
	R1 = R1 + R2;
	P5 = R1;
	CC = R0 < R0;
	R6 = ROT R6 BY 1;
	R4 = ROT R4 BY 1;
	CC = R0 < R0;
	R5 = ROT R5 BY -1;
	R7 = ROT R7 BY -1;
	R0 = R7 | R5;
	cc =R0==0;
	if !cc jump .L516 (bp);
.L513:
	R0 = P3;
	R1 = P5;
	SP += 24;
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
	cc =R0<R3 (iu);
	if !cc jump .L521;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L520, .L535) LC1 = P2;
.L520:
	cc =R0<0;
	if cc jump .L521;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L521;
.L535:
	R2 += -1;
	R1 = R2;
.L521:
	cc =R1==0;
	if cc jump .L529;
	R2 = 0 (X);
	jump.s .L525;
.L524:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L523;
.L525:
	cc =R3<R0 (iu);
	if cc jump .L524 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L524;
.L529:
	R2 = R1;
.L523:
	cc =P1==0;
	if !cc jump .L534;
.L519:
	R0 = R2;
	rts;
.L534:
	R2 = R3;
	jump.s .L519;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	[--SP] = RETS;
	SP += -12;
	R2 = R0.B (X);
	R1 = R2 >>> 7;
	R0 = R1 ^ R0;
	cc =R2==R1;
	if cc jump .L538;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L536:
	SP += 12;
	RETS = [SP++];
	rts;
.L538:
	R0 = 7 (X);
	jump.s .L536;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	R2 = R0;
	R0 = R1;
	R1 >>>= 31;
	R7 = R2 ^ R1;
	R3 = R0 ^ R1;
	cc =R2==R1;
	if cc jump .L545;
.L543:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	R0 += -1;
.L539:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L545:
	cc =R0==R1;
	if !cc jump .L543 (bp);
	R0 = 63 (X);
	jump.s .L539;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L549;
	R3 = 0 (X);
	R7 = 1 (X);
.L548:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L548 (bp);
.L546:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L549:
	R3 = R0;
	jump.s .L546;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:6, p5:5 );

	P0 = R0;
	P1 = R1;
	R7 = R1;
	P2 = R2;
	R0 = R2;
	R1 = R2 >> 3;
	R6 = -8 (X);
	R6 = R2 & R6;
	R2 = P0;
	cc =R2<R7 (iu);
	if cc jump .L552 (bp);
	R2 = R7 + R0;
	R3 = P0;
	cc =R3<=R2 (iu);
	if !cc jump .L552 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L551;
	P1 = P1 + P2;
	P0 = P0 + P2;
	P2 += 1;
	LSETUP (.L558, .L564) LC1 = P2;
.L558:
	R0 = B [P1] (X);
	P1 += -1;
.L564:
	B [P0--] = R0;
	jump.s .L551;
.L552:
	cc =R1==0;
	if cc jump .L555;
	P5 = P0;
	P1 = R7;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P2 += 1;
	LSETUP (.L556, .L563) LC1 = P2;
.L556:
	R2 = [P1];
	R3 = [P1+4];
	[P5] = R2;
	[P5+4] = R3;
	P1 += 8;
.L563:
	P5 += 8;
.L555:
	cc =R0<=R6 (iu);
	if cc jump .L551;
	P2 = R6;
	P0 = P0 + P2;
	R7 = R7 + R6;
	P1 = R7;
	R0 = R0 - R6;
	P2 = R0;
	LSETUP (.L557, .L562) LC1 = P2;
.L557:
	R0 = B [P1++] (X);
.L562:
	B [P0++] = R0;
.L551:
	( r7:6, p5:5 ) = [sp++];

	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	[--sp] = ( p5:3 );

	P1 = R0;
	P4 = R0;
	P2 = R1;
	P5 = R1;
	R1 = R2;
	R0 = R2 >> 1;
	cc =P1<P2 (iu);
	if cc jump .L566 (bp);
	R3 = P2;
	R2 = R3 + R2;
	R3 = P1;
	cc =R3<=R2 (iu);
	if !cc jump .L566 (bp);
	P0 = R1;
	P0 += -1;
	cc =R1==0;
	if cc jump .L565;
	P5 = P2 + P0;
	P4 = P1 + P0;
	P0 += 1;
	LSETUP (.L571, .L575) LC1 = P0;
.L571:
	R0 = B [P5] (X);
	P5 += -1;
.L575:
	B [P4--] = R0;
	jump.s .L565;
.L566:
	cc =R0==0;
	if cc jump .L569;
	P0 = P4;
	P1 = P5;
	P3 = R0;
	P2 = P3 + P3;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L570, .L574) LC1 = P2;
.L570:
	R0 = W [P1++] (X);
.L574:
	W [P0++] = R0;
.L569:
	cc = !BITTST (R1,0);
	if cc jump .L565 (bp);
	P1 = R1;
	P1 += -1;
	P5 = P5 + P1;
	R0 = B [P5] (X);
	P1 = P4 + P1;
	B [P1] = R0;
.L565:
	( p5:3 ) = [sp++];

	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( r7:6, p5:4 );

	P0 = R0;
	P1 = R1;
	R3 = R1;
	P2 = R2;
	R0 = R2;
	R1 = R2 >> 2;
	R2 = -4 (X);
	R2 = R0 & R2;
	R6 = P0;
	cc =R6<R3 (iu);
	if cc jump .L577 (bp);
	R7 = R3 + R0;
	cc =R6<=R7 (iu);
	if !cc jump .L577 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L576;
	P1 = P1 + P2;
	P0 = P0 + P2;
	P2 += 1;
	LSETUP (.L583, .L589) LC1 = P2;
.L583:
	R0 = B [P1] (X);
	P1 += -1;
.L589:
	B [P0--] = R0;
	jump.s .L576;
.L577:
	cc =R1==0;
	if cc jump .L580;
	P5 = P0;
	P1 = R3;
	P4 = R1;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L581, .L588) LC1 = P2;
.L581:
	R1 = [P1++];
.L588:
	[P5++] = R1;
.L580:
	cc =R0<=R2 (iu);
	if cc jump .L576;
	P5 = R2;
	P0 = P0 + P5;
	R3 = R3 + R2;
	P1 = R3;
	R0 = R0 - R2;
	P2 = R0;
	LSETUP (.L582, .L587) LC1 = P2;
.L582:
	R0 = B [P1++] (X);
.L587:
	B [P0++] = R0;
.L576:
	( r7:6, p5:4 ) = [sp++];

	rts;
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
	P2 = 16 (X);
	LSETUP (.L598, .L600) LC1 = P2;
.L598:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L596;
.L600:
	R0 += 1;
.L596:
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
	P2 = 16 (X);
	LSETUP (.L603, .L605) LC1 = P2;
.L603:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L601;
.L605:
	R0 += 1;
.L601:
	rts;
	.size	___ctzhi2, .-___ctzhi2
	.align 4
.global ___fixunssfsi;
.type ___fixunssfsi, STT_FUNC;
___fixunssfsi:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = 71 (X);
	R6 <<= 24;
	R1 = R6;
	call ___gesf2;
	cc =R0<0;
	if !cc jump .L612;
	R0 = R7;
	call ___fixsfsi;
.L606:
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L612:
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L606;
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
	P2 = 16 (X);
	LSETUP (.L614, .L616) LC1 = P2;
.L614:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L616:
	R1 += 1;
	R2 = R2 & R7;
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
	P2 = 16 (X);
	LSETUP (.L618, .L620) LC1 = P2;
.L618:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L620:
	R1 += 1;
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
	cc =R0==0;
	if cc jump .L624;
	R3 = 0 (X);
	R7 = 1 (X);
.L623:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L623 (bp);
.L621:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L624:
	R3 = R0;
	jump.s .L621;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L629;
	cc =R1==0;
	if cc jump .L630;
	R3 = 0 (X);
	R7 = 1 (X);
.L628:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>= 1;
	cc =R1==0;
	if !cc jump .L628 (bp);
.L626:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L629:
	R3 = R0;
	jump.s .L626;
.L630:
	R3 = R1;
	jump.s .L626;
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 4
.global ___udivmodsi4;
.type ___udivmodsi4, STT_FUNC;
___udivmodsi4:
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	cc =R0<R3 (iu);
	if !cc jump .L634;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L633, .L648) LC1 = P2;
.L633:
	cc =R0<0;
	if cc jump .L634;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L634;
.L648:
	R2 += -1;
	R1 = R2;
.L634:
	cc =R1==0;
	if cc jump .L642;
	R2 = 0 (X);
	jump.s .L638;
.L637:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L636;
.L638:
	cc =R3<R0 (iu);
	if cc jump .L637 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L637;
.L642:
	R2 = R1;
.L636:
	cc =P1==0;
	if !cc jump .L647;
.L632:
	R0 = R2;
	rts;
.L647:
	R2 = R3;
	jump.s .L632;
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
	if cc jump .L652;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L653;
.L651:
	R0 = R5;
.L649:
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L653:
	R5 = 0 (X);
	jump.s .L651;
.L652:
	R0 = -1 (X);
	jump.s .L649;
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
	R5 = R7;
	[SP+12] = R7;
	R2 = R6;
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L657;
	R7 = 1 (X);
	[SP+12] = R5;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L658;
.L656:
	R0 = R7;
.L654:
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L658:
	R7 = 0 (X);
	jump.s .L656;
.L657:
	R0 = -1 (X);
	jump.s .L654;
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 4
.global ___mspabi_mpysll;
.type ___mspabi_mpysll, STT_FUNC;
___mspabi_mpysll:
	[--SP] = R4;
	[--SP] = RETS;
	SP += -24;
	R4 = R0;
	R4 >>>= 31;
	[SP+16] = R0;
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
	if cc jump .L669;
	P1 = 0 (X);
.L662:
	cc =R1==0;
	if cc jump .L667;
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
.L664:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>>= 1;
	cc =R1==0;
	if cc jump .L663;
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L664 (bp);
.L663:
	cc =P1==0;
	if cc jump .L661 (bp);
	R3 = -R3;
.L661:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L669:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L662;
.L667:
	R3 = R1;
	jump.s .L663;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L675;
	R7 = 0 (X);
.L671:
	cc =R1<0;
	if cc jump .L676;
.L672:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L670 (bp);
	R0 = -R0;
.L670:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L675:
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L671;
.L676:
	R1 = -R1;
	BITTGL (R7, 0);
	jump.s .L672;
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
	if cc jump .L681;
	R7 = 0 (X);
.L678:
	R0 = abs R0;
	R2 = 1 (X);
	R1 = R0;
	R0 = R3;
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L677 (bp);
	R0 = -R0;
.L677:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L681:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L678;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	[--sp] = ( r7:6 );

	R3 = R0;
	R0 = R1;
	P1 = R2;
	R2 = R1.L (Z);
	R1 = R3.L (Z);
	cc =R2<R1 (iu);
	R1 = 1 (X);
	if !cc jump .L684;
	R7 = R3.L (Z);
	P2 = 16 (X);
	LSETUP (.L683, .L698) LC1 = P2;
.L683:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L684;
	R2 = R0 << 1;
	R0 = R2;
	R1 <<= 1;
	R2 = R2.L (Z);
	cc =R7<=R2 (iu);
	if cc jump .L684;
.L698:
	nop;
	R1 = 0 (X);
.L684:
	R2 = R1.L (Z);
	cc =R2==0;
	if cc jump .L692;
	R6 = 0 (X);
	jump.s .L688;
.L687:
	R1 = R1.L (Z);
	R2 = R1 >> 1;
	R1 = R2;
	R0 <<= 16;
	R0 >>= 17;
	cc =R2==0;
	if cc jump .L686;
.L688:
	R2 = R3.L (Z);
	R7 = R0.L (Z);
	cc =R2<R7 (iu);
	if cc jump .L687 (bp);
	R3 = R3 - R0;
	R6 = R1 | R6;
	jump.s .L687;
.L692:
	R6 = R1;
.L686:
	cc =P1==0;
	if !cc jump .L697;
.L682:
	R0 = R6;
	( r7:6 ) = [sp++];

	rts;
.L697:
	R6 = R3;
	jump.s .L682;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	cc =R0<R3 (iu);
	if !cc jump .L701;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L700, .L715) LC1 = P2;
.L700:
	cc =R0<0;
	if cc jump .L701;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L701;
.L715:
	R2 += -1;
	R1 = R2;
.L701:
	cc =R1==0;
	if cc jump .L709;
	R2 = 0 (X);
	jump.s .L705;
.L704:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L703;
.L705:
	cc =R3<R0 (iu);
	if cc jump .L704 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L704;
.L709:
	R2 = R1;
.L703:
	cc =P1==0;
	if !cc jump .L714;
.L699:
	R0 = R2;
	rts;
.L714:
	R2 = R3;
	jump.s .L699;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L717 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L718:
	R0 = R2;
.L719:
	( r7:7 ) = [sp++];

	rts;
.L717:
	cc =R2==0;
	if cc jump .L720;
	R2 = R0;
	R2 <<= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R0 >>= R7;
	R3 <<= R1;
	R1 = R0 | R3;
	jump.s .L718;
.L720:
	R1 = R3;
	jump.s .L719;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L722 (bp);
	R2 = R3 >>> 31;
	R1 += -32;
	R0 = R3;
	R0 >>>= R1;
.L723:
	R1 = R2;
.L724:
	( r7:7 ) = [sp++];

	rts;
.L722:
	cc =R2==0;
	if cc jump .L725;
	R2 = R3;
	R2 >>>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L723;
.L725:
	R1 = R3;
	jump.s .L724;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	R3 = R1 >> 24;
	R2 = R0 << 24;
	R7 = R1 >> 8;
	R5 = 65280 (Z);
	R7 = R7 & R5;
	R3 = R3 | R7;
	R6 = R1 << 8;
	R7 = R0 >> 24;
	R7 = R6 | R7;
	R6 = 255 (X);
	R6 <<= 16;
	R7 = R7 & R6;
	R3 = R3 | R7;
	R1 <<= 24;
	R3 = R3 | R1;
	R7 = R0 << 8;
	R4 = R0 >> 24;
	R2 = R2 | R4;
	R0 >>= 8;
	R0 = R0 | R1;
	R0 = R0 & R5;
	R1 = R2 | R0;
	R7 = R7 & R6;
	R1 = R1 | R7;
	R0 = R3;
	( r7:4 ) = [sp++];

	rts;
	.size	___bswapdi2, .-___bswapdi2
	.align 4
.global ___bswapsi2;
.type ___bswapsi2, STT_FUNC;
___bswapsi2:
	R1 = R0 >> 24;
	R2 = R0 << 24;
	R1 = R1 | R2;
	R2 = R0 >> 8;
	R3 = 65280 (Z);
	R2 = R2 & R3;
	R1 = R1 | R2;
	R0 <<= 8;
	R2 = 255 (X);
	R2 <<= 16;
	R0 = R0 & R2;
	R0 = R1 | R0;
	rts;
	.size	___bswapsi2, .-___bswapsi2
	.align 4
.global ___clzsi2;
.type ___clzsi2, STT_FUNC;
___clzsi2:
	[--sp] = ( r7:7 );

	R1 = 65535 (Z);
	cc =R0<=R1 (iu);
	R2 = CC;
	R2 <<= 4;
	R1 = 16 (X);
	R1 = R1 - R2;
	R0 >>= R1;
	R1 = 65280 (Z);
	R1 = R0 & R1;
	cc =R1==0;
	R1 = CC;
	R1 <<= 3;
	R3 = 8 (X);
	R3 = R3 - R1;
	R0 >>= R3;
	R2 = R1 + R2;
	R1 = 240 (X);
	R1 = R0 & R1;
	cc =R1==0;
	R1 = CC;
	R1 <<= 2;
	R3 = 4 (X);
	R3 = R3 - R1;
	R0 >>= R3;
	R3 = R1 + R2;
	R1 = 12 (X);
	R1 = R0 & R1;
	cc =R1==0;
	R2 = CC;
	R2 <<= 1;
	R1 = 2 (X);
	R7 = R1 - R2;
	R0 >>= R7;
	R1 = R1 - R0;
	cc = !BITTST (R0,1);
	R0 = 0 (X);
	if !cc R1 = R0;
	R2 = R2 + R3;
	R1 = R1 + R2;
	R0 = R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___clzsi2, .-___clzsi2
	.align 4
.global ___cmpdi2;
.type ___cmpdi2, STT_FUNC;
___cmpdi2:
	R3 = R0;
	R0 = R1;
	R1 = R2;
	R2 = [SP+12];
	cc =R0<R2;
	if cc jump .L733;
	cc =R0<=R2;
	if !cc jump .L734;
	cc =R3<R1 (iu);
	if cc jump .L733;
	cc =R3<=R1 (iu);
	if !cc jump .L734;
	R0 = 1 (X);
	jump.s .L729;
.L733:
	R0 = 0 (X);
.L729:
	rts;
.L734:
	R0 = 2 (X);
	jump.s .L729;
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
	[--sp] = ( r7:7 );

	R1 = R0.L (Z);
	cc =R1==0;
	R2 = CC;
	R2 <<= 4;
	R0 >>= R2;
	R1 = R0.B (Z);
	cc =R1==0;
	R1 = CC;
	R1 <<= 3;
	R0 >>= R1;
	R2 = R1 + R2;
	R1 = 15 (X);
	R1 = R0 & R1;
	cc =R1==0;
	R1 = CC;
	R1 <<= 2;
	R0 >>= R1;
	R3 = R1 + R2;
	R1 = 3 (X);
	R2 = R0 & R1;
	cc =R2==0;
	R2 = CC;
	R2 <<= 1;
	R0 >>= R2;
	R0 = R0 & R1;
	R1 = ~R0;
	R7 = 1 (X);
	R1 = R1 & R7;
	R0 >>= 1;
	R7 = 2 (X);
	R0 = R7 - R0;
	R0 = R1.L * R0.L (FU);
	R2 = R2 + R3;
	R0 = R0 + R2;
	( r7:7 ) = [sp++];

	rts;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L738 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L739:
	R1 = R2;
.L740:
	( r7:7 ) = [sp++];

	rts;
.L738:
	cc =R2==0;
	if cc jump .L741;
	R2 = R3;
	R2 >>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L739;
.L741:
	R1 = R3;
	jump.s .L740;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	[--sp] = ( r7:6 );

	R2 = R1;
	R3 = R0.L * R1.L (FU);
	R6 = R3 >> 16;
	R7 = R0 >> 16;
	R1 = R1.L * R7.L (FU);
	R1 = R1 + R6;
	R6 = R1.L (Z);
	R2 >>= 16;
	R0 = R0.L * R2.L (FU);
	R0 = R0 + R6;
	R3 = R3.L (Z);
	R6 = R0 << 16;
	R3 = R3 + R6;
	R1 >>= 16;
	R7 = R7.L * R2.L (FU);
	R1 = R1 + R7;
	R0 >>= 16;
	R1 = R1 + R0;
	R0 = R3;
	( r7:6 ) = [sp++];

	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R6 = R0;
	R5 = R1;
	R7 = R2;
	R1 = R2;
	call ___muldsi3;
	R7 *= R5;
	R2 = [SP+40];
	R6 *= R2;
	R7 = R7 + R6;
	R7 = R7 + R1;
	R1 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	R2 = -R0;
	CC = R0;
	R0 = CC;
	R1 = -R1;
	R1 = R1 - R0;
	R0 = R2;
	rts;
	.size	___negdi2, .-___negdi2
	.align 4
.global ___paritydi2;
.type ___paritydi2, STT_FUNC;
___paritydi2:
	R0 = R1 ^ R0;
	R1 = R0 >> 16;
	R1 = R1 ^ R0;
	R0 = R1 >> 8;
	R0 = R0 ^ R1;
	R1 = R0 >> 4;
	R1 = R1 ^ R0;
	R0 = 15 (X);
	R1 = R1 & R0;
	R0 = 27030 (X);
	R0 >>>= R1;
	R1 = 1 (X);
	R0 = R0 & R1;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	R1 = R0 >> 16;
	R1 = R1 ^ R0;
	R0 = R1 >> 8;
	R0 = R0 ^ R1;
	R1 = R0 >> 4;
	R1 = R1 ^ R0;
	R0 = 15 (X);
	R1 = R1 & R0;
	R0 = 27030 (X);
	R0 >>>= R1;
	R1 = 1 (X);
	R0 = R0 & R1;
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
	R0 = [SP];
	R2 = [SP+4];
	CC = R0 < R0;
	R1 = ROT R2 BY -1;
	R3 = ROT R0 BY -1;
	R7.H = 21845;
	R7.L = 21845;
	R3 = R3 & R7;
	R1 = R1 & R7;
	R0 = R0 - R3; cc = ac0;
	CC = ! CC;
	R3 = CC;
	R2 = R2 - R1;
	R2 = R2 - R3;
	R3 = R2 << 30;
	R1 = R0 >> 2;
	R1 = R3 | R1;
	R3 = R2 >> 2;
	R7.H = 13107;
	R7.L = 13107;
	R1 = R1 & R7;
	R3 = R3 & R7;
	R0 = R0 & R7;
	R2 = R2 & R7;
	R1 = R1 + R0; cc = ac0;
	R0 = CC;
	R2 = R3 + R2;
	R2 = R2 + R0;
	R0 = R2 << 28;
	R3 = R1 >> 4;
	R3 = R0 | R3;
	R0 = R2 >> 4;
	R3 = R3 + R1; cc = ac0;
	R1 = CC;
	R0 = R0 + R2;
	R0 = R0 + R1;
	R1.H = 3855;
	R1.L = 3855;
	R3 = R3 & R1;
	R0 = R0 & R1;
	R0 = R0 + R3;
	R1 = R0 >> 16;
	R1 = R1 + R0;
	R0 = R1 >> 8;
	R0 = R0 + R1;
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
	R1 = R1 + R0;
	R0 = R1 >> 4;
	R0 = R0 + R1;
	R1.H = 3855;
	R1.L = 3855;
	R0 = R0 & R1;
	R1 = R0 >> 16;
	R1 = R1 + R0;
	R0 = R1 >> 8;
	R0 = R0 + R1;
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
	R4 = R0;
	R5 = R1;
	R6 = R2;
	R7 = R2;
	R2 = 0 (X);
	R3 = 1023 (X);
	R3 <<= 20;
	[SP+16] = R2;
	[SP+20] = R3;
	jump.s .L752;
.L750:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L751;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L752:
	cc = !BITTST (R7,0);
	if cc jump .L750 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L750;
.L751:
	cc =R6<0;
	if cc jump .L754;
.L749:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L754:
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L749;
	.size	___powidf2, .-___powidf2
	.align 4
.global ___powisf2;
.type ___powisf2, STT_FUNC;
___powisf2:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -12;
	R6 = R0;
	R4 = R1;
	R7 = R1;
	R5 = 127 (X);
	R5 <<= 23;
	jump.s .L758;
.L756:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L757;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L758:
	cc = !BITTST (R7,0);
	if cc jump .L756 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L756;
.L757:
	cc =R4<0;
	if cc jump .L760;
.L755:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L760:
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
	jump.s .L755;
	.size	___powisf2, .-___powisf2
	.align 4
.global ___ucmpdi2;
.type ___ucmpdi2, STT_FUNC;
___ucmpdi2:
	R3 = R0;
	R0 = R1;
	R1 = R2;
	R2 = [SP+12];
	cc =R0<R2 (iu);
	if cc jump .L765;
	cc =R0<=R2 (iu);
	if !cc jump .L766;
	cc =R3<R1 (iu);
	if cc jump .L765;
	cc =R3<=R1 (iu);
	if !cc jump .L766;
	R0 = 1 (X);
	jump.s .L761;
.L765:
	R0 = 0 (X);
.L761:
	rts;
.L766:
	R0 = 2 (X);
	jump.s .L761;
	.size	___ucmpdi2, .-___ucmpdi2
	.align 4
.global ___aeabi_ulcmp;
.type ___aeabi_ulcmp, STT_FUNC;
___aeabi_ulcmp:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	R1 = [SP+40];
	[SP+12] = R1;
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
	.local	_seed
	.comm	_seed,8,4
	.section	.rodata
	.align 4
	.type	_digits, @object
	.size	_digits, 65
_digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
