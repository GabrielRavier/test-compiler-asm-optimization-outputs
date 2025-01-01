.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	[--sp] = ( p5:5 );

	R3 = R0;
	P0 = R1;
	P2 = R2;
	cc =R0<=R1 (iu);
	if cc jump .L2 (bp);
	P1 = P0 + P2;
	cc =P2==0;
	if cc jump .L3;
	P2 += -1;
	P5 = R3;
	P2 = P5 + P2;
	P5 = P1;
	P5 += -1;
	P1 -= P0;
	LSETUP (.L4, .L9) LC1 = P1;
.L4:
	R0 = B [P5--] (X);
.L9:
	B [P2--] = R0;
.L3:
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
.L2:
	cc =R0==R1;
	if cc jump .L3;
	cc =P2==0;
	if cc jump .L3;
	nop;
	P1 = R3;
	LSETUP (.L5, .L8) LC1 = P2;
.L5:
	R0 = B [P0++] (X);
.L8:
	B [P1++] = R0;
	jump.s .L3;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	P2 = R0;
	P0 = R1;
	R1 = [SP+12];
	R2 = R2.B (Z);
	cc =R1==0;
	if cc jump .L15;
	P1 = R1;
	LSETUP (.L12, .L21) LC1 = P1;
.L12:
	R3 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (Z);
	cc =R0==R2;
	if cc jump .L20;
.L21:
	R1 += -1;
	R3 = 0 (X);
	jump.s .L10;
.L15:
	R3 = 0 (X);
	jump.s .L10;
.L20:
	R3 += 1;
.L10:
	R0 = R3;
	rts;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	P2 = R0;
	R0 = R2;
	R2 = R1.B (Z);
	cc =R0==0;
	if cc jump .L26;
	P1 = R0;
	LSETUP (.L24, .L30) LC1 = P1;
.L24:
	R3 = P2;
	R1 = B [P2++] (Z);
	cc =R1==R2;
	if cc jump .L22;
.L30:
	R0 += -1;
	R3 = 0 (X);
.L22:
	R0 = R3;
	rts;
.L26:
	R3 = 0 (X);
	jump.s .L22;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	[--sp] = ( p5:4 );

	P1 = R0;
	P2 = R1;
	R0 = R2;
	cc =R2==0;
	if cc jump .L36;
	P0 = R2;
	LSETUP (.L33, .L42) LC1 = P0;
.L33:
	P5 = P2;
	P4 = P1;
	R2 = B [P1++] (Z);
	R1 = B [P2++] (Z);
	cc =R2==R1;
	if !cc jump .L41;
.L42:
	R0 += -1;
	R0 = 0 (X);
	jump.s .L31;
.L36:
	R0 = 0 (X);
	jump.s .L31;
.L41:
	R0 = B [P4] (Z);
	R1 = B [P5] (Z);
	R0 = R0 - R1;
.L31:
	( p5:4 ) = [sp++];

	rts;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	R3 = R0;
	P1 = R1;
	P2 = R2;
	cc =P2==0;
	if cc jump .L44;
	nop;
	P0 = R0;
	LSETUP (.L45, .L47) LC1 = P2;
.L45:
	R0 = B [P1++] (X);
.L47:
	B [P0++] = R0;
.L44:
	R0 = R3;
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	P2 = R2;
	R2 = R1.B (Z);
	P2 += -1;
	P1 = R0;
	P2 = P1 + P2;
	R1 = R0;
	R1 += -1;
.L49:
	R0 = P2;
	cc =R0==R1;
	if cc jump .L52;
	nop;
	nop;
	R3 = P2;
	R0 = B [P2--] (Z);
	cc =R0==R2;
	if !cc jump .L49 (bp);
	jump.s .L48;
.L52:
	R3 = 0 (X);
.L48:
	R0 = R3;
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
	if cc jump .L54;
	P1 = R3;
	LSETUP (.L55, .L57) LC1 = P2;
.L55:
.L57:
	B [P1++] = R0;
.L54:
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
	if cc jump .L61;
	P1 += 1;
	P2 += 1;
.L60:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L60 (bp);
.L58:
	R0 = R1;
	rts;
.L61:
	R1 = P2;
	jump.s .L58;
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
	if cc jump .L63;
.L64:
	R0 = R0.B (Z);
	cc =R0==R2;
	if cc jump .L63;
	nop;
	nop;
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if !cc jump .L64 (bp);
.L63:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
	R2 = R1;
.L71:
	R3 = P2;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==R2;
	if cc jump .L69;
	cc =R1==0;
	if !cc jump .L71 (bp);
	R3 = 0 (X);
.L69:
	R0 = R3;
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
	if !cc jump .L74;
	P1 += 1;
	P2 += 1;
.L75:
	R2 = R0.B (X);
	cc =R2==0;
	if cc jump .L74;
	nop;
	nop;
	nop;
	R0 = B [P1++] (X);
	R1 = B [P2++] (X);
	R3 = R0.B (X);
	R2 = R1.B (X);
	cc =R3==R2;
	if cc jump .L75 (bp);
.L74:
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
	if cc jump .L80;
	P2 = P1;
	P2 += 1;
.L79:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L79 (bp);
.L78:
	R0 = P1;
	R1 = R1 - R0;
	R0 = R1;
	rts;
.L80:
	R1 = P1;
	jump.s .L78;
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
	if cc jump .L87;
	nop;
	nop;
	nop;
	R1 = B [P0] (X);
	R0 = R1.B (Z);
	cc =R0==0;
	if cc jump .L84;
	P0 += 1;
	P1 = P5;
.L85:
	P5 = P1;
	R0 = B [P1++] (X);
	R2 = R0.B (Z);
	cc =R2==0;
	if cc jump .L84;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L89;
	jump.s .L84;
.L89:
	R0 = R0.B (Z);
	R2 = R1.B (Z);
	cc =R0==R2;
	if !cc jump .L84;
	nop;
	nop;
	nop;
	R1 = B [P0++] (X);
	R0 = R1.B (Z);
	cc =R0==0;
	if !cc jump .L85 (bp);
	P5 = P1;
.L84:
	R1 = R1.B (Z);
	R0 = B [P5] (Z);
	R1 = R1 - R0;
.L82:
	R0 = R1;
	( p5:5 ) = [sp++];

	rts;
.L87:
	R1 = 0 (X);
	jump.s .L82;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =R2<=1;
	if cc jump .L90;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L92, .L94) LC1 = P0;
.L92:
	R0 = B [P2+1] (X);
	B [P1] = R0;
	R0 = B [P2] (X);
	B [P1+1] = R0;
	P1 += 2;
.L94:
	P2 += 2;
.L90:
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
	if cc jump .L99;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
.L97:
	rts;
.L99:
	R0 = 1 (X);
	jump.s .L97;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L102 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
.L100:
	rts;
.L102:
	R0 = 1 (X);
	jump.s .L100;
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
	if cc jump .L109;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
.L107:
	rts;
.L109:
	R0 = 1 (X);
	jump.s .L107;
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
	if cc jump .L113 (bp);
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L114 (bp);
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L115;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	R0 = CC;
	jump.s .L111;
.L113:
	R0 = 1 (X);
.L111:
	rts;
.L114:
	R0 = 1 (X);
	jump.s .L111;
.L115:
	R0 = 1 (X);
	jump.s .L111;
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
	if cc jump .L124;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L120;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L121;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L122;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L123;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L117;
.L124:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
.L117:
	rts;
.L120:
	R0 = 1 (X);
	jump.s .L117;
.L121:
	R0 = 1 (X);
	jump.s .L117;
.L122:
	R0 = 1 (X);
	jump.s .L117;
.L123:
	R0 = 0 (X);
	jump.s .L117;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L127 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
.L125:
	rts;
.L127:
	R0 = 1 (X);
	jump.s .L125;
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
	if !cc jump .L132;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L133;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L136 (bp);
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L129:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L132:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L129;
.L133:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L129;
.L136:
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L129;
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
	if !cc jump .L137;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L141;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L144 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L137:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L141:
	R7 = R6;
	jump.s .L137;
.L144:
	R7 = 0 (X);
	jump.s .L137;
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
	if !cc jump .L151;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L152;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L147 (bp);
	cc =R0==0;
	if cc jump .L153 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L145;
.L147:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L149 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L150:
	[SP+16] = R0;
	[SP+20] = R1;
.L145:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L149:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L150;
.L151:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L145;
.L152:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L145;
.L153:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L145;
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
	if !cc jump .L160;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L154;
	R0 = R7 >>> 31;
	R0 <<= 31;
	R1 = R6 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L156 (bp);
	cc =R0==0;
	if cc jump .L154 (bp);
	R7 = R6;
.L154:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L156:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L154 (bp);
	R7 = R6;
	jump.s .L154;
.L160:
	R7 = R6;
	jump.s .L154;
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
	if !cc jump .L169;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L170;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L165 (bp);
	cc =R0==0;
	if cc jump .L171 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L163;
.L165:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L167 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L168:
	[SP+16] = R0;
	[SP+20] = R1;
.L163:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L167:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L168;
.L169:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L163;
.L170:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L163;
.L171:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L163;
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
	if !cc jump .L178;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L179;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+48];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L174 (bp);
	cc =R0==0;
	if cc jump .L180 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L172;
.L174:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L176 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L177:
	[SP+16] = R0;
	[SP+20] = R1;
.L172:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	rts;
.L176:
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L177;
.L178:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L172;
.L179:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L172;
.L180:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L172;
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
	if !cc jump .L181;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L188;
	R0 = R6 >>> 31;
	R0 <<= 31;
	R1 = R7 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L183 (bp);
	cc =R0==0;
	if cc jump .L181 (bp);
	R7 = R6;
.L181:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L183:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L181 (bp);
	R7 = R6;
	jump.s .L181;
.L188:
	R7 = R6;
	jump.s .L181;
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
	if !cc jump .L196;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L197;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+48];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L192 (bp);
	cc =R0==0;
	if cc jump .L198 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L190;
.L192:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L194 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L195:
	[SP+16] = R0;
	[SP+20] = R1;
.L190:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	rts;
.L194:
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L195;
.L196:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L190;
.L197:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L190;
.L198:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L190;
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
	cc =R0==0;
	if cc jump .L202;
	P1.H = _s.0;
	P1.L = _s.0;
	R3 = 63 (X);
	R2.H = _digits;
	R2.L = _digits;
.L201:
	R1 = R0 & R3;
	R1 = R2 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
	cc =R0==0;
	if !cc jump .L201 (bp);
.L200:
	R0 = 0 (X);
	B [P1] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	rts;
.L202:
	P1.H = _s.0;
	P1.L = _s.0;
	jump.s .L200;
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
	if cc jump .L209;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L206;
	[P1+4] = P2;
.L206:
	rts;
.L209:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L206;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L211;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L211:
	P1 = [P2+4];
	cc =P1==0;
	if cc jump .L210;
	nop;
	nop;
	nop;
	R0 = [P2];
	[P1] = R0;
.L210:
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	R4 = R0;
	[SP+52] = R1;
	FP = R2;
	P4 = [SP+60];
	P3 = [SP+64];
	R5 = [FP];
	cc =R5==0;
	if cc jump .L214;
	R7 = R1;
	R6 = 0 (X);
.L216:
	P5 = R7;
	R1 = R7;
	R0 = R4;
	call (P3);
	cc =R0==0;
	if cc jump .L213;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R5==R6;
	if !cc jump .L216 (bp);
.L214:
	R0 = R5;
	R0 += 1;
	[FP] = R0;
	R0 = P4;
	R5 *= R0;
	R0 = [SP+52];
	R5 = R0 + R5;
	R2 = P4;
	R1 = R4;
	R0 = R5;
	call _memcpy;
	P5 = R0;
.L213:
	R0 = P5;
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
	if cc jump .L221;
	R6 = 0 (X);
.L220:
	P3 = R7;
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	if cc jump .L218;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R4==R6;
	if !cc jump .L220 (bp);
	P3 = 0 (X);
.L218:
	R0 = P3;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L221:
	P3 = 0 (X);
	jump.s .L218;
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
	[--sp] = ( r7:7, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
.L225:
	P4 = P5;
	R7 = B [P5++] (X);
	R0 = R7.B (X);
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L225 (bp);
	R0 = R7.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L233;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L227 (bp);
	R2 = 1 (X);
.L226:
	P1 = P4;
	P1 += 1;
	R0 = B [P4+1] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if !cc jump .L228;
.L231:
	P1 += 1;
.L229:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L229 (bp);
.L228:
	cc =R2==0;
	if cc jump .L232;
.L224:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:7, p5:4 ) = [sp++];

	rts;
.L233:
	R2 = P2;
	jump.s .L226;
.L232:
	R0 = P2;
	R0 = -R0;
	P2 = R0;
	jump.s .L224;
.L227:
	nop;
	R0 = B [P4] (X);
	R1 = R0.B (X);
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L232;
	R2 = P2;
	P1 = P4;
	jump.s .L231;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( r7:7, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
.L238:
	P4 = P5;
	R7 = B [P5++] (X);
	R0 = R7.B (X);
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L238 (bp);
	R0 = R7.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L246;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L240 (bp);
	R2 = 1 (X);
.L239:
	P1 = P4;
	P1 += 1;
	R0 = B [P4+1] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if !cc jump .L241;
.L244:
	P1 += 1;
.L242:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L242 (bp);
.L241:
	cc =R2==0;
	if cc jump .L245;
.L237:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:7, p5:4 ) = [sp++];

	rts;
.L246:
	R2 = P2;
	jump.s .L239;
.L245:
	R0 = P2;
	R0 = -R0;
	P2 = R0;
	jump.s .L237;
.L240:
	nop;
	R0 = B [P4] (X);
	R1 = R0.B (X);
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L245;
	R2 = P2;
	P1 = P4;
	jump.s .L244;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P5 = R0;
.L251:
	P4 = P5;
	R7 = B [P5++] (X);
	R0 = R7.B (X);
	call _isspace;
	R6 = R0;
	cc =R0==0;
	if !cc jump .L251 (bp);
	R0 = R7.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L252;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L253 (bp);
	R6 = 1 (X);
.L252:
	P5 = P4;
	P5 += 1;
	R7 = B [P4+1] (X);
	R0 = R7.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L259;
.L257:
	P5 += 1;
	R4 = 0 (X);
	R1 = 0 (X);
	R5 = 0 (X);
.L255:
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
	if cc jump .L255 (bp);
.L254:
	cc =R6==0;
	if cc jump .L258;
.L250:
	R0 = R4;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L259:
	R4 = 0 (X);
	R1 = 0 (X);
	jump.s .L254;
.L253:
	nop;
	R7 = B [P4] (X);
	R0 = R7.B (X);
	R0 += -48;
	P5 = P4;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L257 (bp);
	R4 = 0 (X);
	R1 = 0 (X);
.L258:
	CC = R4;
	R0 = CC;
	R1 = -R1;
	R4 = -R4;
	R1 = R1 - R0;
	jump.s .L250;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -12;
	P4 = R0;
	R4 = R1;
	R7 = R2;
	P5 = [SP+56];
	P3 = [SP+60];
	cc =R2==0;
	if !cc jump .L266 (bp);
	R6 = 0 (X);
	jump.s .L263;
.L268:
	R7 = R5;
.L265:
	cc =R7==0;
	if cc jump .L270;
.L266:
	R5 = R7 >> 1;
	R6 = P5;
	R6 *= R5;
	R6 = R4 + R6;
	R1 = R6;
	R0 = P4;
	call (P3);
	cc =R0<0;
	if cc jump .L268;
	cc =R0<=0;
	if cc jump .L263;
	R0 = P5;
	R4 = R6 + R0;
	R7 += -1;
	R7 = R7 - R5;
	jump.s .L265;
.L270:
	R6 = 0 (X);
.L263:
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
	R4 = [SP+56];
	P3 = [SP+60];
	P4 = [SP+64];
	R6 = R2;
	cc =R2==0;
	if !cc jump .L274 (bp);
	R7 = 0 (X);
	jump.s .L271;
.L273:
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L277;
.L274:
	R7 = R6 >>> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R2 = P4;
	R1 = R7;
	R0 = P5;
	call (P3);
	cc =R0==0;
	if cc jump .L271;
	cc =R0<=0;
	if cc jump .L273;
	R5 = R7 + R4;
	R6 += -1;
	jump.s .L273;
.L277:
	R7 = 0 (X);
.L271:
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
	if cc jump .L282;
.L280:
	SP += 8;
	rts;
.L282:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L280;
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
	if cc jump .L289;
.L287:
	SP += 8;
	rts;
.L289:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L287;
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
	R0 = [P2];
	cc =R0==0;
	if cc jump .L297;
.L292:
	cc =R1==R0;
	if cc jump .L291;
	nop;
	nop;
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L292 (bp);
	P2 = 0 (X);
.L291:
	R0 = P2;
	rts;
.L297:
	P2 = 0 (X);
	jump.s .L291;
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
	if !cc jump .L299;
	P1 += 4;
	P2 += 4;
.L300:
	cc =R0==0;
	if cc jump .L299;
	cc =R1==0;
	if cc jump .L299;
	nop;
	nop;
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if cc jump .L300 (bp);
.L299:
	cc =R0<R1;
	if cc jump .L303 (bp);
	cc =R1<R0;
	R0 = CC;
.L298:
	rts;
.L303:
	R0 = -1 (X);
	jump.s .L298;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P2 = R1;
	P1 = R0;
.L305:
	nop;
	R0 = [P2++];
	[P1++] = R0;
	cc =R0==0;
	if !cc jump .L305 (bp);
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
	if cc jump .L310;
	P2 = P1;
	P2 += 4;
.L309:
	R1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L309 (bp);
.L308:
	R0 = P1;
	R1 = R1 - R0;
	R1 >>>= 2;
	R0 = R1;
	rts;
.L310:
	R1 = P1;
	jump.s .L308;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:4 );

	P1 = R0;
	P2 = R1;
	R1 = R2;
	cc =R2==0;
	if cc jump .L318;
	P0 = R2;
	LSETUP (.L314, .L322) LC1 = P0;
.L314:
	P5 = P2;
	P4 = P1;
	R0 = [P1++];
	R2 = [P2++];
	cc =R0==R2;
	if !cc jump .L315;
	cc =R0==0;
	if cc jump .L315;
.L322:
	R1 += -1;
	R0 = 0 (X);
	jump.s .L312;
.L317:
	cc =R0<R1;
	R0 = CC;
.L312:
	( p5:4 ) = [sp++];

	rts;
.L318:
	R0 = 0 (X);
	jump.s .L312;
.L315:
	R1 = [P4];
	R0 = [P5];
	cc =R1<R0;
	if !cc jump .L317 (bp);
	R0 = -1 (X);
	jump.s .L312;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	P2 = R0;
	R3 = R1;
	R0 = R2;
	cc =R2==0;
	if cc jump .L327;
	P1 = R2;
	LSETUP (.L325, .L331) LC1 = P1;
.L325:
	R2 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L323;
.L331:
	R0 += -1;
	R2 = 0 (X);
.L323:
	R0 = R2;
	rts;
.L327:
	R2 = 0 (X);
	jump.s .L323;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[--sp] = ( p5:4 );

	P1 = R0;
	P2 = R1;
	R0 = R2;
	cc =R2==0;
	if cc jump .L338;
	P0 = R2;
	LSETUP (.L334, .L344) LC1 = P0;
.L334:
	P5 = P2;
	P4 = P1;
	R2 = [P1++];
	R1 = [P2++];
	cc =R2==R1;
	if !cc jump .L343;
.L344:
	R0 += -1;
	R0 = 0 (X);
.L332:
	( p5:4 ) = [sp++];

	rts;
.L337:
	cc =R0<R1;
	R0 = CC;
	jump.s .L332;
.L338:
	R0 = 0 (X);
	jump.s .L332;
.L343:
	R1 = [P4];
	R0 = [P5];
	cc =R1<R0;
	if !cc jump .L337 (bp);
	R0 = -1 (X);
	jump.s .L332;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	R3 = R0;
	P1 = R1;
	R0 = R2;
	R0 += -1;
	cc =R2==0;
	if cc jump .L346;
	P0 = R3;
	P2 = R0;
	P2 += 1;
	LSETUP (.L347, .L349) LC1 = P2;
.L347:
	R1 = [P1++];
	[P0++] = R1;
.L349:
	R0 += -1;
.L346:
	R0 = R3;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	[--sp] = ( r7:7, p5:5 );

	R3 = R0;
	P2 = R1;
	R1 = R2;
	R0 = P2;
	cc =R3==R0;
	if cc jump .L351;
	P0 = R3;
	R7 = P2;
	R2 = R3 - R0;
	R0 = R1 << 2;
	cc =R2<R0 (iu);
	if cc jump .L352 (bp);
	R0 = R1;
	R0 += -1;
	P1 = R0;
	P1 += 1;
	cc =R1==0;
	if cc jump .L351;
	nop;
	nop;
	LSETUP (.L353, .L359) LC1 = P1;
.L353:
	R1 = [P2++];
	[P0++] = R1;
.L359:
	R0 += -1;
	jump.s .L351;
.L352:
	P0 = R1;
	P0 += -1;
	cc =R1==0;
	if cc jump .L351;
	P0 = P0 << 2;
	P2 = P2 + P0;
	P1 = R3;
	P0 = P1 + P0;
	R1 = P2;
	R0 = R1 - R7;
	P5 = R0;
	P1 = P5 >> 2;
	P1 += 1;
	LSETUP (.L354, .L358) LC1 = P1;
.L354:
	R0 = [P2--];
.L358:
	[P0--] = R0;
.L351:
	R0 = R3;
	( r7:7, p5:5 ) = [sp++];

	rts;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	R3 = R0;
	R0 = R2;
	R0 += -1;
	cc =R2==0;
	if cc jump .L361;
	P1 = R3;
	P2 = R0;
	P2 += 1;
	LSETUP (.L362, .L364) LC1 = P2;
.L362:
	[P1++] = R1;
.L364:
	R0 += -1;
.L361:
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	[--sp] = ( p5:5 );

	P0 = R0;
	P2 = R1;
	P1 = R2;
	cc =P0<P2 (iu);
	if !cc jump .L366 (bp);
	P5 = P0 + P1;
	R0 = P5;
	cc =P1==0;
	if cc jump .L365;
	P1 += -1;
	P2 = P2 + P1;
	P5 += -1;
	P1 = R0;
	P1 -= P0;
	LSETUP (.L368, .L373) LC1 = P1;
.L368:
	R0 = B [P5--] (X);
.L373:
	B [P2--] = R0;
.L365:
	( p5:5 ) = [sp++];

	rts;
.L366:
	cc =P0==P2;
	if cc jump .L365;
	cc =P1==0;
	if cc jump .L365;
	nop;
	nop;
	LSETUP (.L369, .L372) LC1 = P1;
.L369:
	R0 = B [P0++] (X);
.L372:
	B [P2++] = R0;
	jump.s .L365;
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
	R0 = R1 >> 8;
	R0 = R0.B (Z);
	R1 <<= 8;
	R0 = R0 | R1;
	rts;
	.size	_bswap_16, .-_bswap_16
	.align 4
.global _bswap_32;
.type _bswap_32, STT_FUNC;
_bswap_32:
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
	R0 = R2 | R0;
	R0 = R1 | R0;
	( r7:7 ) = [sp++];

	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:4 );

	R2 = R1 >> 24;
	P0 = R2;
	R5 = R1 >> 8;
	P1.H = 0;
	P1.L = 65280;
	R3 = P1;
	R5 = R5 & R3;
	R3 = R1 << 8;
	R7 = R0 >> 24;
	R7 = R3 | R7;
	P2.H = 255;
	P2.L = 0;
	R2 = P2;
	R7 = R7 & R2;
	R2 = R1 << 24;
	R1 = R0 >> 8;
	R1 = R2 | R1;
	R1 >>>= 24;
	R1 <<= 24;
	R6 = R0 << 8;
	R4 = R0 >> 24;
	R3 = R0 >> 8;
	R2 = R3 | R2;
	R0 <<= 24;
	I0 = R0;
	R3 = P1;
	R2 = R2 & R3;
	R0 = P2;
	R6 = R6 & R0;
	R0 = P0;
	R3 = R5 | R0;
	R3 = R7 | R3;
	R1 = R1 | R3;
	R3 = I0;
	R0 = R4 | R3;
	R0 = R2 | R0;
	R6 = R6 | R0;
	R0 = R1;
	R1 = R6;
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
	LSETUP (.L390, .L393) LC1 = P2;
.L390:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L392;
.L393:
	R0 += 1;
	R0 = 0 (X);
	jump.s .L387;
.L392:
	R0 += 1;
.L387:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L397;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L394;
	R1 = 1 (X);
.L396:
	R0 >>>= 1;
	R1 += 1;
	cc = !BITTST (R0,0);
	if cc jump .L396 (bp);
.L394:
	R0 = R1;
	rts;
.L397:
	R1 = R0;
	jump.s .L394;
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
	if cc jump .L402 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L403;
.L401:
	R6 = R6.B (Z);
.L399:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L403:
	R6 = 0 (X);
	jump.s .L401;
.L402:
	R6 = 1 (X);
	jump.s .L399;
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
	if cc jump .L407 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L408;
.L406:
	R7 = R7.B (Z);
.L404:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L408:
	R7 = 0 (X);
	jump.s .L406;
.L407:
	R7 = 1 (X);
	jump.s .L404;
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
	if cc jump .L412 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L413;
.L411:
	R7 = R7.B (Z);
.L409:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L413:
	R7 = 0 (X);
	jump.s .L411;
.L412:
	R7 = 1 (X);
	jump.s .L409;
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
	if !cc jump .L416;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L416 (bp);
	cc =R7<0;
	if cc jump .L423;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L420;
.L423:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L420;
.L419:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L416;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L420:
	cc = !BITTST (R7,0);
	if cc jump .L419 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L419;
.L416:
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
	if !cc jump .L425;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	[SP+24] = R0;
	[SP+28] = R1;
	[SP+12] = R7;
	R2 = [SP+48];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L425 (bp);
	cc =R5<0;
	if cc jump .L432;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L429;
.L432:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L429;
.L428:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L425;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L429:
	cc = !BITTST (R5,0);
	if cc jump .L428 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L428;
.L425:
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
	if !cc jump .L434;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	[SP+24] = R0;
	[SP+28] = R1;
	[SP+12] = R7;
	R2 = [SP+48];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L434 (bp);
	cc =R5<0;
	if cc jump .L441;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L438;
.L441:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L438;
.L437:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L434;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L438:
	cc = !BITTST (R5,0);
	if cc jump .L437 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L437;
.L434:
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
	P0 = R1;
	P2 = R2;
	cc =P2==0;
	if cc jump .L443;
	nop;
	P1 = R0;
	LSETUP (.L444, .L446) LC1 = P2;
.L444:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	R0 = R0 ^ R1;
.L446:
	B [P1+-1] = R0;
.L443:
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
	R6 = R0;
	R5 = R1;
	R7 = R2;
	call _strlen;
	P1 = R0;
	P2 = R6;
	P1 = P2 + P1;
	cc =R7==0;
	if cc jump .L448;
	P0 = R5;
	P2 = R7;
	LSETUP (.L449, .L453) LC1 = P2;
.L449:
	R0 = B [P0++] (X);
	B [P1++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L451;
.L453:
	R7 += -1;
.L448:
	R0 = 0 (X);
	B [P1] = R0;
.L451:
	R0 = R6;
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
	cc =R1==0;
	if cc jump .L454;
	R1 = 0 (X);
	R3 = R0 - R1;
	P0 = R3;
	LSETUP (.L456, .L463) LC1 = P0;
.L456:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L462;
.L454:
	R0 = R1;
	rts;
.L462:
.L463:
	R1 += 1;
	R1 = R0;
	jump.s .L454;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R3 = R1;
	R2 = B [P1] (X);
	R0 = R2.B (X);
	cc =R0==0;
	if cc jump .L471;
	nop;
.L465:
	P2 = R3;
	R2 = R2.B (X);
.L468:
	nop;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L472;
	R0 = R0.B (X);
	cc =R0==R2;
	if !cc jump .L468 (bp);
.L466:
	R0 = P1;
	rts;
.L471:
	P1 = 0 (X);
	jump.s .L466;
.L472:
	P1 += 1;
	R2 = B [P1] (X);
	R0 = R2.B (X);
	cc =R0==0;
	if !cc jump .L465 (bp);
	P1 = 0 (X);
	jump.s .L466;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R3 = R1;
	P1 = 0 (X);
	jump.s .L475;
.L474:
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L478;
	nop;
	nop;
.L475:
	R2 = P2;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==R3;
	if !cc jump .L474 (bp);
	P1 = R2;
	jump.s .L474;
.L478:
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
	if cc jump .L479;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
.L481:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if cc jump .L479;
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L479;
	R7 += 1;
	jump.s .L481;
.L479:
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
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L494;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L488;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L487;
.L488:
	R0 = [SP+28];
	R1 = [SP+32];
	SP += 24;
	RETS = [SP++];
	rts;
.L494:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L488 (bp);
.L487:
	R0 = [SP+28];
	R1 = [SP+32];
	BITTGL (R1, 31);
	[SP+28] = R0;
	[SP+32] = R1;
	jump.s .L488;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	P4 = R2;
	R4 = [SP+52];
	cc =R4==0;
	if cc jump .L499;
	cc =R1<R4 (iu);
	if cc jump .L500;
	R7 = R1 - R4;
	R7 = R0 + R7;
	cc =R0<=R7 (iu);
	if !cc jump .L501;
	nop;
	nop;
	nop;
	R5 = B [P4++] (X);
	R4 += -1;
	jump.s .L498;
.L497:
	R0 = P5;
	cc =R7<R0 (iu);
	if cc jump .L503;
	nop;
	nop;
.L498:
	R6 = P5;
	R0 = B [P5++] (X);
	cc =R0==R5;
	if !cc jump .L497 (bp);
	R2 = R4;
	R1 = P4;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L497 (bp);
	jump.s .L495;
.L503:
	R6 = 0 (X);
.L495:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L499:
	R6 = R0;
	jump.s .L495;
.L500:
	R6 = 0 (X);
	jump.s .L495;
.L501:
	R6 = 0 (X);
	jump.s .L495;
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
	if cc jump .L529;
	R4 = 0 (X);
.L506:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L526;
	R7 = 0 (X);
	R5 = 511 (X);
	R5 <<= 21;
	R6 = 1023 (X);
	R6 <<= 20;
.L510:
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
	if !cc jump .L510 (bp);
.L511:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L515 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L515:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L529:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L506;
.L526:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L527 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L528 (bp);
	R7 = 0 (X);
	R6 = 511 (X);
	R6 <<= 21;
.L514:
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
	if cc jump .L514 (bp);
	jump.s .L511;
.L527:
	R7 = 0 (X);
	jump.s .L511;
.L528:
	R7 = 0 (X);
	jump.s .L511;
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
	R7 = R2;
	R6 = [SP+68];
	R5 = R1;
	R4 = R0;
	R0 = R0 | R1;
	cc =R0==0;
	if cc jump .L534;
	P3 = 0 (X);
	P5 = 0 (X);
	P4 = 1 (X);
.L533:
	R1 = P4;
	R0 = R5 & R1;
	[SP+12] = R6;
	R2 = R7;
	R1 = 0 (X);
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	R2 = P3;
	R0 = R0 + R2; cc = ac0;
	R2 = CC;
	P2 = R1;
	P5 = P5 + P2;
	P3 = R0;
	P2 = R2;
	P5 = P5 + P2;
	CC = R0 < R0;
	R7 = ROT R7 BY 1;
	R6 = ROT R6 BY 1;
	CC = R0 < R0;
	R1 = ROT R4 BY -1;
	R0 = ROT R5 BY -1;
	R5 = R0;
	R4 = R1;
	R0 = R0 | R1;
	cc =R0==0;
	if !cc jump .L533 (bp);
.L530:
	R0 = P3;
	R1 = P5;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L534:
	P3 = 0 (X);
	P5 = 0 (X);
	jump.s .L530;
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
	if !cc jump .L544;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L537, .L552) LC1 = P2;
.L537:
	cc =R0<0;
	if cc jump .L544;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L539;
.L552:
	R2 += -1;
.L540:
	cc =P1==0;
	if !cc jump .L550;
.L536:
	R0 = R2;
	rts;
.L542:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L540;
.L543:
	cc =R3<R0 (iu);
	if cc jump .L542 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L542;
.L539:
	cc =R1==0;
	if cc jump .L551;
.L544:
	R2 = 0 (X);
	jump.s .L543;
.L551:
	R2 = R1;
	jump.s .L540;
.L550:
	R2 = R3;
	jump.s .L536;
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
	R1 = R1.B (X);
	cc =R2==R1;
	if cc jump .L555;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L553:
	SP += 12;
	RETS = [SP++];
	rts;
.L555:
	R0 = 7 (X);
	jump.s .L553;
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
	if cc jump .L562;
.L560:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	R0 += -1;
.L556:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L562:
	cc =R0==R1;
	if !cc jump .L560 (bp);
	R0 = 63 (X);
	jump.s .L556;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L566;
	R3 = 0 (X);
	R7 = 1 (X);
.L565:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L565 (bp);
.L563:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L566:
	R3 = R0;
	jump.s .L563;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:7, p5:4 );

	P1 = R0;
	P0 = R1;
	P2 = R2;
	R0 = R2;
	R1 = R2 >> 3;
	R7 = -8 (X);
	R7 = R2 & R7;
	cc =P1<P0 (iu);
	if !cc jump .L569 (bp);
.L572:
	cc =R1==0;
	if cc jump .L571;
	P4 = P1;
	P5 = P0;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P2 += 1;
	LSETUP (.L575, .L583) LC1 = P2;
.L575:
	R2 = [P5];
	R3 = [P5+4];
	[P4] = R2;
	[P4+4] = R3;
	P5 += 8;
.L583:
	P4 += 8;
.L571:
	cc =R0<=R7 (iu);
	if cc jump .L568;
	P2 = R7;
	P1 = P1 + P2;
	P0 = P0 + P2;
	R0 = R0 - R7;
	P2 = R0;
	LSETUP (.L576, .L582) LC1 = P2;
.L576:
	R0 = B [P0++] (X);
.L582:
	B [P1++] = R0;
.L568:
	( r7:7, p5:4 ) = [sp++];

	rts;
.L569:
	R3 = P0;
	R2 = R3 + R2;
	R3 = P1;
	cc =R2<R3 (iu);
	if cc jump .L572 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L568;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L577, .L581) LC1 = P2;
.L577:
	R0 = B [P0--] (X);
.L581:
	B [P1--] = R0;
	jump.s .L568;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	[--sp] = ( r7:7, p5:5 );

	R3 = R0;
	P1 = R1;
	R0 = R2 >> 1;
	cc =R3<R1 (iu);
	if !cc jump .L585 (bp);
.L588:
	cc =R0==0;
	if cc jump .L587;
	P0 = R3;
	P1 = R1;
	P5 = R0;
	P2 = P5 + P5;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L591, .L596) LC1 = P2;
.L591:
	R0 = W [P1++] (X);
.L596:
	W [P0++] = R0;
.L587:
	cc = !BITTST (R2,0);
	if cc jump .L584 (bp);
	R2 += -1;
	R1 = R1 + R2;
	P1 = R1;
	R3 = R3 + R2;
	P2 = R3;
	R0 = B [P1] (X);
	B [P2] = R0;
.L584:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L585:
	R7 = R1 + R2;
	cc =R7<R3 (iu);
	if cc jump .L588 (bp);
	P0 = R2;
	P0 += -1;
	cc =R2==0;
	if cc jump .L584;
	P1 = P1 + P0;
	P5 = R3;
	P2 = P5 + P0;
	P0 += 1;
	LSETUP (.L592, .L595) LC1 = P0;
.L592:
	R0 = B [P1--] (X);
.L595:
	B [P2--] = R0;
	jump.s .L584;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( p5:4 );

	P1 = R0;
	P0 = R1;
	P2 = R2;
	R0 = R2;
	P2 = P2 >> 2;
	R2 = -4 (X);
	R2 = R0 & R2;
	cc =P1<P0 (iu);
	if !cc jump .L598 (bp);
.L601:
	cc =P2==0;
	if cc jump .L600;
	P4 = P1;
	P5 = P0;
	P2 = P2 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L604, .L612) LC1 = P2;
.L604:
	R1 = [P5++];
.L612:
	[P4++] = R1;
.L600:
	cc =R0<=R2 (iu);
	if cc jump .L597;
	P2 = R2;
	P1 = P1 + P2;
	P0 = P0 + P2;
	R0 = R0 - R2;
	P2 = R0;
	LSETUP (.L605, .L611) LC1 = P2;
.L605:
	R0 = B [P0++] (X);
.L611:
	B [P1++] = R0;
.L597:
	( p5:4 ) = [sp++];

	rts;
.L598:
	R3 = R1 + R0;
	R1 = P1;
	cc =R3<R1 (iu);
	if cc jump .L601 (bp);
	P2 = R0;
	P2 += -1;
	cc =R0==0;
	if cc jump .L597;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L606, .L610) LC1 = P2;
.L606:
	R0 = B [P0--] (X);
.L610:
	B [P1--] = R0;
	jump.s .L597;
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
	LSETUP (.L621, .L623) LC1 = P2;
.L621:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L619;
.L623:
	R0 += 1;
.L619:
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
	LSETUP (.L626, .L628) LC1 = P2;
.L626:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L624;
.L628:
	R0 += 1;
.L624:
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
	if !cc jump .L635;
	R0 = R7;
	call ___fixsfsi;
.L629:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L635:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L629;
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
	LSETUP (.L637, .L639) LC1 = P2;
.L637:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L639:
	R1 += 1;
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
	P2 = 16 (X);
	LSETUP (.L641, .L643) LC1 = P2;
.L641:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L643:
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
	if cc jump .L647;
	R3 = 0 (X);
	R7 = 1 (X);
.L646:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L646 (bp);
.L644:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L647:
	R3 = R0;
	jump.s .L644;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L652;
	cc =R1==0;
	if cc jump .L653;
	R3 = 0 (X);
	R7 = 1 (X);
.L651:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>= 1;
	cc =R1==0;
	if !cc jump .L651 (bp);
.L649:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L652:
	R3 = R0;
	jump.s .L649;
.L653:
	R3 = R1;
	jump.s .L649;
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
	if !cc jump .L663;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L656, .L671) LC1 = P2;
.L656:
	cc =R0<0;
	if cc jump .L663;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L658;
.L671:
	R2 += -1;
.L659:
	cc =P1==0;
	if !cc jump .L669;
.L655:
	R0 = R2;
	rts;
.L661:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L659;
.L662:
	cc =R3<R0 (iu);
	if cc jump .L661 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L661;
.L658:
	cc =R1==0;
	if cc jump .L670;
.L663:
	R2 = 0 (X);
	jump.s .L662;
.L670:
	R2 = R1;
	jump.s .L659;
.L669:
	R2 = R3;
	jump.s .L655;
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
	if cc jump .L675;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L676;
.L674:
	R5 = R5.B (Z);
.L672:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L676:
	R5 = 0 (X);
	jump.s .L674;
.L675:
	R5 = -1 (X);
	jump.s .L672;
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
	if cc jump .L680;
	R5 = 1 (X);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L681;
.L679:
	R5 = R5.B (Z);
.L677:
	R0 = R5;
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L681:
	R5 = 0 (X);
	jump.s .L679;
.L680:
	R5 = -1 (X);
	jump.s .L677;
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
	if cc jump .L692;
	P1 = 0 (X);
	cc =R1==0;
	if cc jump .L693;
.L689:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
.L687:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>>= 1;
	cc =R1==0;
	if cc jump .L686;
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L687 (bp);
.L686:
	cc =P1==0;
	if cc jump .L684;
	R3 = -R3;
.L684:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L692:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L689;
.L693:
	R3 = R1;
	jump.s .L684;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L702;
	cc =R1<0;
	if cc jump .L703;
	R2 = 0 (X);
	call ___udivmodsi4;
	jump.s .L694;
.L702:
	R0 = -R0;
	cc =R1<0;
	if cc jump .L704;
	R2 = 0 (X);
	call ___udivmodsi4;
.L698:
	R0 = -R0;
.L694:
	SP += 12;
	RETS = [SP++];
	rts;
.L703:
	R1 = -R1;
	R2 = 0 (X);
	call ___udivmodsi4;
	jump.s .L698;
.L704:
	R1 = -R1;
	R2 = 0 (X);
	call ___udivmodsi4;
	jump.s .L694;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L708;
	R1 = abs R1;
	R2 = 1 (X);
	call ___udivmodsi4;
	jump.s .L705;
.L708:
	R0 = -R0;
	R1 = abs R1;
	R2 = 1 (X);
	call ___udivmodsi4;
	R0 = -R0;
.L705:
	SP += 12;
	RETS = [SP++];
	rts;
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
	if !cc jump .L725;
	R1 = 1 (X);
	R6 = R3.L (Z);
	P2 = 16 (X);
	LSETUP (.L710, .L727) LC1 = P2;
.L710:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L717;
	R2 = R0 << 1;
	R0 = R2;
	R7 = R1 << 1;
	R1 = R7;
	R2 = R2.L (Z);
	cc =R6<=R2 (iu);
	if cc jump .L712;
.L727:
	nop;
	R7 = 0 (X);
.L713:
	cc =P1==0;
	if !cc jump .L726;
.L709:
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L725:
	R1 = 1 (X);
	jump.s .L717;
.L715:
	R1 = R1.L (Z);
	R2 = R1 >> 1;
	R1 = R2;
	R0 <<= 16;
	R0 >>= 17;
	cc =R2==0;
	if cc jump .L713;
.L716:
	R2 = R3.L (Z);
	R6 = R0.L (Z);
	cc =R2<R6 (iu);
	if cc jump .L715 (bp);
	R3 = R3 - R0;
	R7 = R1 | R7;
	jump.s .L715;
.L712:
	R2 = R7.L (Z);
	cc =R2==0;
	if cc jump .L713;
.L717:
	R7 = 0 (X);
	jump.s .L716;
.L726:
	R7 = R3;
	jump.s .L709;
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
	if !cc jump .L736;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L729, .L744) LC1 = P2;
.L729:
	cc =R0<0;
	if cc jump .L736;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L731;
.L744:
	R2 += -1;
.L732:
	cc =P1==0;
	if !cc jump .L742;
.L728:
	R0 = R2;
	rts;
.L734:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L732;
.L735:
	cc =R3<R0 (iu);
	if cc jump .L734 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L734;
.L731:
	cc =R1==0;
	if cc jump .L743;
.L736:
	R2 = 0 (X);
	jump.s .L735;
.L743:
	R2 = R1;
	jump.s .L732;
.L742:
	R2 = R3;
	jump.s .L728;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L746 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L747:
	R0 = R2;
.L748:
	( r7:7 ) = [sp++];

	rts;
.L746:
	cc =R2==0;
	if cc jump .L749;
	R2 = R0;
	R2 <<= R1;
	R3 <<= R1;
	P2 = 32 (X);
	R7 = P2;
	R1 = R7 - R1;
	R0 >>= R1;
	R1 = R3 | R0;
	jump.s .L747;
.L749:
	R1 = R3;
	jump.s .L748;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L751 (bp);
	R2 = R3 >>> 31;
	R1 += -32;
	R0 = R3;
	R0 >>>= R1;
.L752:
	R1 = R2;
.L753:
	( r7:7 ) = [sp++];

	rts;
.L751:
	cc =R2==0;
	if cc jump .L754;
	R2 = R3;
	R2 >>>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L752;
.L754:
	R1 = R3;
	jump.s .L753;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	R2 = R1 >> 24;
	P0 = R2;
	R5 = R1 >> 8;
	P1.H = 0;
	P1.L = 65280;
	R3 = P1;
	R5 = R5 & R3;
	R3 = R1 << 8;
	R7 = R0 >> 24;
	R7 = R3 | R7;
	P2.H = 255;
	P2.L = 0;
	R2 = P2;
	R7 = R7 & R2;
	R2 = R1 << 24;
	R1 = R0 >> 8;
	R1 = R2 | R1;
	R1 >>>= 24;
	R1 <<= 24;
	R6 = R0 << 8;
	R4 = R0 >> 24;
	R3 = R0 >> 8;
	R2 = R3 | R2;
	R0 <<= 24;
	I0 = R0;
	R3 = P1;
	R2 = R2 & R3;
	R0 = P2;
	R6 = R6 & R0;
	R0 = P0;
	R3 = R5 | R0;
	R3 = R7 | R3;
	R1 = R1 | R3;
	R3 = I0;
	R0 = R4 | R3;
	R0 = R2 | R0;
	R6 = R6 | R0;
	R0 = R1;
	R1 = R6;
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
	R0 = R3 | R0;
	R0 = R2 | R0;
	R0 = R1 | R0;
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
	R2 = R2 + R3;
	R1 = R1 - R0;
	cc = BITTST (R0,1);
	R0 = 0 (X);
	if cc R1 = R0;
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
	cc =R2<=R0;
	if !cc jump .L760;
	cc =R2<R0;
	if cc jump .L761;
	cc =R3<R1 (iu);
	if cc jump .L762;
	cc =R3<=R1 (iu);
	if !cc jump .L763;
	R0 = 1 (X);
	jump.s .L758;
.L760:
	R0 = 0 (X);
.L758:
	rts;
.L761:
	R0 = 2 (X);
	jump.s .L758;
.L762:
	R0 = 0 (X);
	jump.s .L758;
.L763:
	R0 = 2 (X);
	jump.s .L758;
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
	R2 = R1 + R2;
	R3 = 3 (X);
	R1 = R0 & R3;
	cc =R1==0;
	R1 = CC;
	R1 <<= 1;
	R0 >>= R1;
	R0 = R0 & R3;
	R2 = R1 + R2;
	R1 = ~R0;
	R1 <<= 31;
	R0 >>= 1;
	R3 = 2 (X);
	R3 = R3 - R0;
	R0 = R1 >>> 31;
	R0 = R0 & R3;
	R0 = R0 + R2;
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
	if cc jump .L767 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L768:
	R1 = R2;
.L769:
	( r7:7 ) = [sp++];

	rts;
.L767:
	cc =R2==0;
	if cc jump .L770;
	R2 = R3;
	R2 >>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L768;
.L770:
	R1 = R3;
	jump.s .L769;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	[--sp] = ( r7:6 );

	R2 = R0;
	R3 = R1;
	R0 = R0.L (Z);
	R1 = R1.L (Z);
	R7 = R0;
	R7 *= R1;
	R6 = R7 >> 16;
	R2 >>= 16;
	R1 *= R2;
	R1 = R1 + R6;
	R6 = R1 >> 16;
	R1 = R1.L (Z);
	R7 = R7.L (Z);
	R3 >>= 16;
	R0 *= R3;
	R0 = R0 + R1;
	R1 = R0 << 16;
	R7 = R7 + R1;
	R0 >>= 16;
	R2 *= R3;
	R1 = R6 + R2;
	R1 = R0 + R1;
	R0 = R7;
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
	R7 = R1;
	R5 = R2;
	R1 = R2;
	call ___muldsi3;
	R7 *= R5;
	R2 = [SP+40];
	R2 *= R6;
	R7 = R7 + R2;
	R1 = R1 + R7;
	SP += 12;
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
	R3 = R2 << 28;
	R0 = R1 >> 4;
	R0 = R3 | R0;
	R3 = R2 >> 4;
	R0 = R0 + R1; cc = ac0;
	R7 = CC;
	R1 = R3 + R2;
	R1 = R1 + R7;
	R2.H = 3855;
	R2.L = 3855;
	R0 = R0 & R2;
	R1 = R1 & R2;
	R0 = R0 + R1;
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
	R6 = R0;
	R7 = R1;
	R4 = R2;
	R5 = R2;
	R2 = 0 (X);
	R3 = 1023 (X);
	R3 <<= 20;
	[SP+16] = R2;
	[SP+20] = R3;
	jump.s .L781;
.L779:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L780;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L781:
	cc = !BITTST (R5,0);
	if cc jump .L779 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L779;
.L780:
	cc =R4<0;
	if cc jump .L783;
.L778:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L783:
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L778;
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
	jump.s .L787;
.L785:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L786;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L787:
	cc = !BITTST (R7,0);
	if cc jump .L785 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L785;
.L786:
	cc =R4<0;
	if cc jump .L789;
.L784:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L789:
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
	jump.s .L784;
	.size	___powisf2, .-___powisf2
	.align 4
.global ___ucmpdi2;
.type ___ucmpdi2, STT_FUNC;
___ucmpdi2:
	R3 = R0;
	R0 = R1;
	R1 = R2;
	R2 = [SP+12];
	cc =R2<=R0 (iu);
	if !cc jump .L792;
	cc =R2<R0 (iu);
	if cc jump .L793;
	cc =R3<R1 (iu);
	if cc jump .L794;
	cc =R3<=R1 (iu);
	if !cc jump .L795;
	R0 = 1 (X);
	jump.s .L790;
.L792:
	R0 = 0 (X);
.L790:
	rts;
.L793:
	R0 = 2 (X);
	jump.s .L790;
.L794:
	R0 = 0 (X);
	jump.s .L790;
.L795:
	R0 = 2 (X);
	jump.s .L790;
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
