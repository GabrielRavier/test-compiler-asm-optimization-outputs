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
	cc =R0==0;
	if cc jump .L67;
	nop;
	nop;
.L65:
	R0 = P2;
	R1 = B [P2++] (Z);
	cc =R1==R2;
	if cc jump .L63;
	nop;
	nop;
	R0 = P2;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L65 (bp);
.L63:
	rts;
.L67:
	R0 = P2;
	jump.s .L63;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
	R2 = R1;
.L70:
	R3 = P2;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==R2;
	if cc jump .L68;
	cc =R1==0;
	if !cc jump .L70 (bp);
	R3 = 0 (X);
.L68:
	R0 = R3;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	P0 = R0;
	P1 = R1;
	R1 = B [P0] (X);
	R0 = B [P1] (X);
	cc =R1==R0;
	if !cc jump .L73;
	nop;
	P2 = P0;
.L74:
	P0 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L73;
	nop;
	P0 = P2;
	P1 += 1;
	R1 = B [P2] (X);
	R0 = B [P1] (X);
	cc =R1==R0;
	if cc jump .L74 (bp);
.L73:
	R0 = B [P0] (Z);
	R1 = B [P1] (Z);
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
	if cc jump .L79;
	P2 = P1;
	P2 += 1;
.L78:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L78 (bp);
.L77:
	R0 = P1;
	R1 = R1 - R0;
	R0 = R1;
	rts;
.L79:
	R1 = P1;
	jump.s .L77;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	[--sp] = ( p5:4 );

	P5 = R0;
	P4 = R1;
	P0 = R2;
	P0 += -1;
	cc =R2==0;
	if cc jump .L86;
	nop;
	nop;
	nop;
	R0 = B [P5] (Z);
	cc =R0==0;
	if cc jump .L83;
	P1 = R1;
	P2 = P5;
	P0 += 1;
.L84:
	P4 = P1;
	P5 = P2;
	R0 = B [P1++] (X);
	R1 = R0.B (Z);
	cc =R1==0;
	if cc jump .L83;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L87;
	jump.s .L83;
.L87:
	R0 = R0.B (Z);
	R1 = B [P2++] (Z);
	cc =R0==R1;
	if !cc jump .L83;
	nop;
	P5 = P2;
	P4 = P1;
	R0 = B [P2] (Z);
	cc =R0==0;
	if !cc jump .L84 (bp);
.L83:
	R0 = B [P5] (Z);
	R1 = B [P4] (Z);
	R0 = R0 - R1;
.L81:
	( p5:4 ) = [sp++];

	rts;
.L86:
	R0 = 0 (X);
	jump.s .L81;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =R2<=1;
	if cc jump .L88;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L90, .L92) LC1 = P0;
.L90:
	R0 = B [P2+1] (X);
	B [P1] = R0;
	R0 = B [P2] (X);
	B [P1+1] = R0;
	P1 += 2;
.L92:
	P2 += 2;
.L88:
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
	if cc jump .L97;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
.L95:
	rts;
.L97:
	R0 = 1 (X);
	jump.s .L95;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L100 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
.L98:
	rts;
.L100:
	R0 = 1 (X);
	jump.s .L98;
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
	if cc jump .L107;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
.L105:
	rts;
.L107:
	R0 = 1 (X);
	jump.s .L105;
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
	if cc jump .L111 (bp);
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L112 (bp);
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L113;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	R0 = CC;
	jump.s .L109;
.L111:
	R0 = 1 (X);
.L109:
	rts;
.L112:
	R0 = 1 (X);
	jump.s .L109;
.L113:
	R0 = 1 (X);
	jump.s .L109;
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
	if cc jump .L122;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L118;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L119;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L120;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L121;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L115;
.L122:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
.L115:
	rts;
.L118:
	R0 = 1 (X);
	jump.s .L115;
.L119:
	R0 = 1 (X);
	jump.s .L115;
.L120:
	R0 = 1 (X);
	jump.s .L115;
.L121:
	R0 = 0 (X);
	jump.s .L115;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L125 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
.L123:
	rts;
.L125:
	R0 = 1 (X);
	jump.s .L123;
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
	if !cc jump .L130;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L131;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L134 (bp);
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L127:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L130:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L127;
.L131:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L127;
.L134:
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L127;
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
	if !cc jump .L135;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L139;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L142 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L135:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L139:
	R7 = R6;
	jump.s .L135;
.L142:
	R7 = 0 (X);
	jump.s .L135;
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
	if !cc jump .L149;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L150;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L145 (bp);
	cc =R0==0;
	if cc jump .L151 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L143;
.L145:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L147 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L148:
	[SP+16] = R0;
	[SP+20] = R1;
.L143:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L147:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L148;
.L149:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L143;
.L150:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L143;
.L151:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L143;
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
	if !cc jump .L158;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L152;
	R0 = R7 >>> 31;
	R0 <<= 31;
	R1 = R6 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L154 (bp);
	cc =R0==0;
	if cc jump .L152 (bp);
	R7 = R6;
.L152:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L154:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L152 (bp);
	R7 = R6;
	jump.s .L152;
.L158:
	R7 = R6;
	jump.s .L152;
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
	if !cc jump .L167;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L168;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L163 (bp);
	cc =R0==0;
	if cc jump .L169 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L161;
.L163:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L165 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L166:
	[SP+16] = R0;
	[SP+20] = R1;
.L161:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L165:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L166;
.L167:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L161;
.L168:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L161;
.L169:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L161;
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
	if !cc jump .L176;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L177;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+48];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L172 (bp);
	cc =R0==0;
	if cc jump .L178 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L170;
.L172:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L174 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L175:
	[SP+16] = R0;
	[SP+20] = R1;
.L170:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	rts;
.L174:
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L175;
.L176:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L170;
.L177:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L170;
.L178:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L170;
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
	if !cc jump .L179;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L186;
	R0 = R6 >>> 31;
	R0 <<= 31;
	R1 = R7 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L181 (bp);
	cc =R0==0;
	if cc jump .L179 (bp);
	R7 = R6;
.L179:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L181:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L179 (bp);
	R7 = R6;
	jump.s .L179;
.L186:
	R7 = R6;
	jump.s .L179;
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
	if !cc jump .L194;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L195;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+48];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L190 (bp);
	cc =R0==0;
	if cc jump .L196 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L188;
.L190:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L192 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L193:
	[SP+16] = R0;
	[SP+20] = R1;
.L188:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	rts;
.L192:
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L193;
.L194:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L188;
.L195:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L188;
.L196:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L188;
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
	if cc jump .L200;
	P1.H = _s.0;
	P1.L = _s.0;
	R3 = 63 (X);
	R2.H = _digits;
	R2.L = _digits;
.L199:
	R1 = R0 & R3;
	R1 = R2 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
	cc =R0==0;
	if !cc jump .L199 (bp);
.L198:
	R0 = 0 (X);
	B [P1] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	rts;
.L200:
	P1.H = _s.0;
	P1.L = _s.0;
	jump.s .L198;
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
	if cc jump .L207;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L204;
	[P1+4] = P2;
.L204:
	rts;
.L207:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L204;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L209;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L209:
	P1 = [P2+4];
	cc =P1==0;
	if cc jump .L208;
	nop;
	nop;
	nop;
	R0 = [P2];
	[P1] = R0;
.L208:
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
	if cc jump .L212;
	R7 = R1;
	R6 = 0 (X);
.L214:
	P5 = R7;
	R1 = R7;
	R0 = R4;
	call (P3);
	cc =R0==0;
	if cc jump .L211;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R5==R6;
	if !cc jump .L214 (bp);
.L212:
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
.L211:
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
	if cc jump .L219;
	R6 = 0 (X);
.L218:
	P3 = R7;
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	if cc jump .L216;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R4==R6;
	if !cc jump .L218 (bp);
	P3 = 0 (X);
.L216:
	R0 = P3;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L219:
	P3 = 0 (X);
	jump.s .L216;
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
	P4 = R0;
.L223:
	P5 = P4;
	R7 = B [P4++] (X);
	R0 = R7.B (X);
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L223 (bp);
	R0 = R7.B (X);
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
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if !cc jump .L226;
	nop;
.L227:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5++] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L227 (bp);
.L226:
	cc =R1==0;
	if !cc jump .L222 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L222:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:7, p5:4 ) = [sp++];

	rts;
.L229:
	R1 = P2;
	jump.s .L224;
.L230:
	R1 = P2;
	jump.s .L225;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( r7:7, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P4 = R0;
.L234:
	P5 = P4;
	R7 = B [P4++] (X);
	R0 = R7.B (X);
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L234 (bp);
	R0 = R7.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L240;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L241 (bp);
	R1 = 1 (X);
.L235:
	P5 += 1;
.L236:
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if !cc jump .L237;
	nop;
.L238:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5++] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L238 (bp);
.L237:
	cc =R1==0;
	if !cc jump .L233 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L233:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:7, p5:4 ) = [sp++];

	rts;
.L240:
	R1 = P2;
	jump.s .L235;
.L241:
	R1 = P2;
	jump.s .L236;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P4 = R0;
.L245:
	P5 = P4;
	R6 = B [P4++] (X);
	R0 = R6.B (X);
	call _isspace;
	R7 = R0;
	cc =R0==0;
	if !cc jump .L245 (bp);
	R0 = R6.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L246;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L247 (bp);
	R7 = 1 (X);
.L246:
	P5 += 1;
.L247:
	nop;
	R0 = B [P5] (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L251;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L249:
	[SP+12] = R6;
	R2 = 10 (X);
	R0 = R3;
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R2 = R0;
	R1 = [SP+20];
	R0 = B [P5++] (X);
	R0 += -48;
	R5 = R0;
	R5 >>>= 31;
	R3 = R2 - R0;
	cc =R2<R0 (iu);
	R0 = CC;
	R1 = R1 - R5;
	R1 = R1 - R0;
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L249 (bp);
.L248:
	cc =R7==0;
	if !cc jump .L244 (bp);
	CC = R3;
	R0 = CC;
	R1 = -R1;
	R3 = -R3;
	R1 = R1 - R0;
.L244:
	R0 = R3;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L251:
	R3 = 0 (X);
	R1 = 0 (X);
	jump.s .L248;
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
	if !cc jump .L257 (bp);
	R6 = 0 (X);
	jump.s .L254;
.L259:
	R7 = R5;
.L256:
	cc =R7==0;
	if cc jump .L261;
.L257:
	R5 = R7 >> 1;
	R6 = P5;
	R6 *= R5;
	R6 = R4 + R6;
	R1 = R6;
	R0 = P4;
	call (P3);
	cc =R0<0;
	if cc jump .L259;
	cc =R0<=0;
	if cc jump .L254;
	R0 = P5;
	R4 = R6 + R0;
	R7 += -1;
	R7 = R7 - R5;
	jump.s .L256;
.L261:
	R6 = 0 (X);
.L254:
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
	if !cc jump .L265 (bp);
	R7 = 0 (X);
	jump.s .L262;
.L264:
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L268;
.L265:
	R7 = R6 >>> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R2 = P4;
	R1 = R7;
	R0 = P5;
	call (P3);
	cc =R0==0;
	if cc jump .L262;
	cc =R0<=0;
	if cc jump .L264;
	R5 = R7 + R4;
	R6 += -1;
	jump.s .L264;
.L268:
	R7 = 0 (X);
.L262:
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
	if cc jump .L273;
.L271:
	SP += 8;
	rts;
.L273:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L271;
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
	if cc jump .L280;
.L278:
	SP += 8;
	rts;
.L280:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L278;
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
	if cc jump .L287;
	nop;
	nop;
.L284:
	P1 = P2;
	R0 = [P2++];
	cc =R0==R1;
	if cc jump .L285;
	nop;
	nop;
	P1 = P2;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L284 (bp);
.L285:
	R0 = [P1];
	cc =R0==0;
	if cc jump .L288;
.L282:
	R0 = P1;
	rts;
.L288:
	P1 = 0 (X);
	jump.s .L282;
.L287:
	P1 = 0 (X);
	jump.s .L282;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	[--sp] = ( p5:5 );

	P5 = R0;
	P0 = R1;
	R1 = [P5];
	R0 = [P0];
	cc =R1==R0;
	if !cc jump .L290;
	P2 = P5;
	P1 = P0;
.L291:
	P0 = P1;
	P5 = P2;
	R0 = [P2++];
	cc =R0==0;
	if cc jump .L290;
	nop;
	nop;
	nop;
	R0 = [P1++];
	cc =R0==0;
	if cc jump .L290;
	nop;
	P5 = P2;
	P0 = P1;
	R1 = [P2];
	R0 = [P1];
	cc =R1==R0;
	if cc jump .L291 (bp);
.L290:
	R0 = [P5];
	R1 = [P0];
	cc =R0<R1;
	if cc jump .L294 (bp);
	cc =R1<R0;
	R0 = CC;
.L289:
	( p5:5 ) = [sp++];

	rts;
.L294:
	R0 = -1 (X);
	jump.s .L289;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P2 = R1;
	P1 = R0;
.L296:
	nop;
	R0 = [P2++];
	[P1++] = R0;
	cc =R0==0;
	if !cc jump .L296 (bp);
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
	if cc jump .L301;
	P2 = P1;
	P2 += 4;
.L300:
	R1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L300 (bp);
.L299:
	R0 = P1;
	R1 = R1 - R0;
	R1 >>>= 2;
	R0 = R1;
	rts;
.L301:
	R1 = P1;
	jump.s .L299;
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
	if cc jump .L309;
	P0 = R2;
	LSETUP (.L305, .L313) LC1 = P0;
.L305:
	P5 = P2;
	P4 = P1;
	R0 = [P1++];
	R2 = [P2++];
	cc =R0==R2;
	if !cc jump .L306;
	cc =R0==0;
	if cc jump .L306;
.L313:
	R1 += -1;
	R0 = 0 (X);
	jump.s .L303;
.L308:
	cc =R0<R1;
	R0 = CC;
.L303:
	( p5:4 ) = [sp++];

	rts;
.L309:
	R0 = 0 (X);
	jump.s .L303;
.L306:
	R1 = [P4];
	R0 = [P5];
	cc =R1<R0;
	if !cc jump .L308 (bp);
	R0 = -1 (X);
	jump.s .L303;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	P2 = R0;
	R3 = R1;
	R0 = R2;
	cc =R2==0;
	if cc jump .L318;
	P1 = R2;
	LSETUP (.L316, .L322) LC1 = P1;
.L316:
	R2 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L314;
.L322:
	R0 += -1;
	R2 = 0 (X);
.L314:
	R0 = R2;
	rts;
.L318:
	R2 = 0 (X);
	jump.s .L314;
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
	if cc jump .L329;
	P0 = R2;
	LSETUP (.L325, .L335) LC1 = P0;
.L325:
	P5 = P2;
	P4 = P1;
	R2 = [P1++];
	R1 = [P2++];
	cc =R2==R1;
	if !cc jump .L334;
.L335:
	R0 += -1;
	R0 = 0 (X);
.L323:
	( p5:4 ) = [sp++];

	rts;
.L328:
	cc =R0<R1;
	R0 = CC;
	jump.s .L323;
.L329:
	R0 = 0 (X);
	jump.s .L323;
.L334:
	R1 = [P4];
	R0 = [P5];
	cc =R1<R0;
	if !cc jump .L328 (bp);
	R0 = -1 (X);
	jump.s .L323;
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
	if cc jump .L337;
	P0 = R3;
	P2 = R0;
	P2 += 1;
	LSETUP (.L338, .L340) LC1 = P2;
.L338:
	R1 = [P1++];
	[P0++] = R1;
.L340:
	R0 += -1;
.L337:
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
	if cc jump .L342;
	P0 = R3;
	R7 = P2;
	R2 = R3 - R0;
	R0 = R1 << 2;
	cc =R2<R0 (iu);
	if cc jump .L343 (bp);
	R0 = R1;
	R0 += -1;
	P1 = R0;
	P1 += 1;
	cc =R1==0;
	if cc jump .L342;
	nop;
	nop;
	LSETUP (.L344, .L350) LC1 = P1;
.L344:
	R1 = [P2++];
	[P0++] = R1;
.L350:
	R0 += -1;
	jump.s .L342;
.L343:
	P0 = R1;
	P0 += -1;
	cc =R1==0;
	if cc jump .L342;
	P0 = P0 << 2;
	P2 = P2 + P0;
	P1 = R3;
	P0 = P1 + P0;
	R1 = P2;
	R0 = R1 - R7;
	P5 = R0;
	P1 = P5 >> 2;
	P1 += 1;
	LSETUP (.L345, .L349) LC1 = P1;
.L345:
	R0 = [P2--];
.L349:
	[P0--] = R0;
.L342:
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
	if cc jump .L352;
	P1 = R3;
	P2 = R0;
	P2 += 1;
	LSETUP (.L353, .L355) LC1 = P2;
.L353:
	[P1++] = R1;
.L355:
	R0 += -1;
.L352:
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
	if !cc jump .L357 (bp);
	P5 = P0 + P1;
	R0 = P5;
	cc =P1==0;
	if cc jump .L356;
	P1 += -1;
	P2 = P2 + P1;
	P5 += -1;
	P1 = R0;
	P1 -= P0;
	LSETUP (.L359, .L364) LC1 = P1;
.L359:
	R0 = B [P5--] (X);
.L364:
	B [P2--] = R0;
.L356:
	( p5:5 ) = [sp++];

	rts;
.L357:
	cc =P0==P2;
	if cc jump .L356;
	cc =P1==0;
	if cc jump .L356;
	nop;
	nop;
	LSETUP (.L360, .L363) LC1 = P1;
.L360:
	R0 = B [P0++] (X);
.L363:
	B [P2++] = R0;
	jump.s .L356;
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
	LSETUP (.L381, .L384) LC1 = P2;
.L381:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L383;
.L384:
	R0 += 1;
	R0 = 0 (X);
	jump.s .L378;
.L383:
	R0 += 1;
.L378:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L388;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L385;
	R1 = 1 (X);
.L387:
	R0 >>>= 1;
	R1 += 1;
	cc = !BITTST (R0,0);
	if cc jump .L387 (bp);
.L385:
	R0 = R1;
	rts;
.L388:
	R1 = R0;
	jump.s .L385;
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
	if cc jump .L393 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L394;
.L392:
	R6 = R6.B (Z);
.L390:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L394:
	R6 = 0 (X);
	jump.s .L392;
.L393:
	R6 = 1 (X);
	jump.s .L390;
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
	R7 = R7.B (Z);
.L395:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L399:
	R7 = 0 (X);
	jump.s .L397;
.L398:
	R7 = 1 (X);
	jump.s .L395;
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
	if cc jump .L403 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L404;
.L402:
	R7 = R7.B (Z);
.L400:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L404:
	R7 = 0 (X);
	jump.s .L402;
.L403:
	R7 = 1 (X);
	jump.s .L400;
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
	if !cc jump .L407;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L407 (bp);
	cc =R7<0;
	if cc jump .L414;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L411;
.L414:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L411;
.L410:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L407;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L411:
	cc = !BITTST (R7,0);
	if cc jump .L410 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L410;
.L407:
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
	if !cc jump .L416;
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
	if cc jump .L416 (bp);
	cc =R5<0;
	if cc jump .L423;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L420;
.L423:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L420;
.L419:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L416;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L420:
	cc = !BITTST (R5,0);
	if cc jump .L419 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L419;
.L416:
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
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	R3 = R0;
	P0 = R1;
	P2 = R2;
	cc =P2==0;
	if cc jump .L434;
	nop;
	P1 = R0;
	LSETUP (.L435, .L437) LC1 = P2;
.L435:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	R0 = R0 ^ R1;
.L437:
	B [P1+-1] = R0;
.L434:
	R0 = R3;
	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	[--sp] = ( r7:5, p5:5 );

	[--SP] = RETS;
	SP += -12;
	R6 = R0;
	R7 = R1;
	R5 = R2;
	call _strlen;
	P5 = R0;
	P2 = R6;
	P5 = P2 + P5;
	cc =R5==0;
	if cc jump .L439;
	P0 = R7;
	P2 = P5;
	P1 = R5;
	LSETUP (.L440, .L444) LC1 = P1;
.L440:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L442;
	P5 = P2;
.L444:
	R5 += -1;
.L439:
	R0 = 0 (X);
	B [P5] = R0;
.L442:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:5, p5:5 ) = [sp++];

	rts;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R1==0;
	if cc jump .L445;
	R1 = 0 (X);
	R3 = R0 - R1;
	P0 = R3;
	LSETUP (.L447, .L454) LC1 = P0;
.L447:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L453;
.L445:
	R0 = R1;
	rts;
.L453:
.L454:
	R1 += 1;
	R1 = R0;
	jump.s .L445;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R0 = B [P1] (X);
	cc =R0==0;
	if cc jump .L462;
	nop;
	nop;
.L456:
	P2 = R2;
.L459:
	nop;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L463;
	nop;
	nop;
	nop;
	R1 = B [P1] (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L459 (bp);
.L457:
	R0 = P1;
	rts;
.L462:
	P1 = 0 (X);
	jump.s .L457;
.L463:
	P1 += 1;
	R0 = B [P1] (X);
	cc =R0==0;
	if !cc jump .L456 (bp);
	P1 = 0 (X);
	jump.s .L457;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R3 = R1;
	P1 = 0 (X);
	jump.s .L466;
.L465:
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L469;
	nop;
	nop;
.L466:
	R2 = P2;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==R3;
	if !cc jump .L465 (bp);
	P1 = R2;
	jump.s .L465;
.L469:
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
	if cc jump .L470;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
.L472:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if cc jump .L470;
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L470;
	R7 += 1;
	jump.s .L472;
.L470:
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
	if cc jump .L485;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L479;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L478;
.L479:
	R0 = [SP+28];
	R1 = [SP+32];
	SP += 24;
	RETS = [SP++];
	rts;
.L485:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L479 (bp);
.L478:
	R0 = [SP+28];
	R1 = [SP+32];
	BITTGL (R1, 31);
	[SP+28] = R0;
	[SP+32] = R1;
	jump.s .L479;
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
	R7 = R1 - R4;
	R7 = R0 + R7;
	cc =R4==0;
	if cc jump .L490;
	cc =R1<R4 (iu);
	if cc jump .L491;
	cc =R0<=R7 (iu);
	if !cc jump .L492;
	nop;
	nop;
	nop;
	R5 = B [P4++] (X);
	R4 += -1;
	jump.s .L489;
.L488:
	R0 = P5;
	cc =R7<R0 (iu);
	if cc jump .L494;
	nop;
	nop;
.L489:
	R6 = P5;
	R0 = B [P5++] (X);
	cc =R0==R5;
	if !cc jump .L488 (bp);
	R2 = R4;
	R1 = P4;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L488 (bp);
	jump.s .L486;
.L494:
	R6 = 0 (X);
.L486:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L490:
	R6 = R0;
	jump.s .L486;
.L491:
	R6 = 0 (X);
	jump.s .L486;
.L492:
	R6 = 0 (X);
	jump.s .L486;
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
	if cc jump .L520;
	R4 = 0 (X);
.L497:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L517;
	R7 = 0 (X);
	R5 = 511 (X);
	R5 <<= 21;
	R6 = 1023 (X);
	R6 <<= 20;
.L501:
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
	if !cc jump .L501 (bp);
.L502:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L506 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L506:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L520:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L497;
.L517:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L518 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L519 (bp);
	R7 = 0 (X);
	R6 = 511 (X);
	R6 <<= 21;
.L505:
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
	if cc jump .L505 (bp);
	jump.s .L502;
.L518:
	R7 = 0 (X);
	jump.s .L502;
.L519:
	R7 = 0 (X);
	jump.s .L502;
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
	if cc jump .L525;
	P3 = 0 (X);
	P5 = 0 (X);
	P4 = 1 (X);
.L524:
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
	if !cc jump .L524 (bp);
.L521:
	R0 = P3;
	R1 = P5;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L525:
	P3 = 0 (X);
	P5 = 0 (X);
	jump.s .L521;
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
	if !cc jump .L535;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L528, .L543) LC1 = P2;
.L528:
	cc =R0<0;
	if cc jump .L535;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L530;
.L543:
	R2 += -1;
.L531:
	cc =P1==0;
	if !cc jump .L541;
.L527:
	R0 = R2;
	rts;
.L533:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L531;
.L534:
	cc =R3<R0 (iu);
	if cc jump .L533 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L533;
.L530:
	cc =R1==0;
	if cc jump .L542;
.L535:
	R2 = 0 (X);
	jump.s .L534;
.L542:
	R2 = R1;
	jump.s .L531;
.L541:
	R2 = R3;
	jump.s .L527;
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
	if cc jump .L546;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L544:
	SP += 12;
	RETS = [SP++];
	rts;
.L546:
	R0 = 7 (X);
	jump.s .L544;
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
	if cc jump .L553;
.L551:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	R0 += -1;
.L547:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L553:
	cc =R0==R1;
	if !cc jump .L551 (bp);
	R0 = 63 (X);
	jump.s .L547;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L557;
	R3 = 0 (X);
	R7 = 1 (X);
.L556:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L556 (bp);
.L554:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L557:
	R3 = R0;
	jump.s .L554;
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
	if !cc jump .L560 (bp);
.L563:
	cc =R1==0;
	if cc jump .L562;
	P4 = P1;
	P5 = P0;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P2 += 1;
	LSETUP (.L566, .L574) LC1 = P2;
.L566:
	R2 = [P5];
	R3 = [P5+4];
	[P4] = R2;
	[P4+4] = R3;
	P5 += 8;
.L574:
	P4 += 8;
.L562:
	cc =R0<=R7 (iu);
	if cc jump .L559;
	P2 = R7;
	P1 = P1 + P2;
	P0 = P0 + P2;
	R0 = R0 - R7;
	P2 = R0;
	LSETUP (.L567, .L573) LC1 = P2;
.L567:
	R0 = B [P0++] (X);
.L573:
	B [P1++] = R0;
.L559:
	( r7:7, p5:4 ) = [sp++];

	rts;
.L560:
	R3 = P0;
	R2 = R3 + R2;
	R3 = P1;
	cc =R2<R3 (iu);
	if cc jump .L563 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L559;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L568, .L572) LC1 = P2;
.L568:
	R0 = B [P0--] (X);
.L572:
	B [P1--] = R0;
	jump.s .L559;
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
	if !cc jump .L576 (bp);
.L579:
	cc =R0==0;
	if cc jump .L578;
	P0 = R3;
	P1 = R1;
	P5 = R0;
	P2 = P5 + P5;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L582, .L587) LC1 = P2;
.L582:
	R0 = W [P1++] (X);
.L587:
	W [P0++] = R0;
.L578:
	cc = !BITTST (R2,0);
	if cc jump .L575 (bp);
	R2 += -1;
	R1 = R1 + R2;
	P1 = R1;
	R3 = R3 + R2;
	P2 = R3;
	R0 = B [P1] (X);
	B [P2] = R0;
.L575:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L576:
	R7 = R1 + R2;
	cc =R7<R3 (iu);
	if cc jump .L579 (bp);
	P0 = R2;
	P0 += -1;
	cc =R2==0;
	if cc jump .L575;
	P1 = P1 + P0;
	P5 = R3;
	P2 = P5 + P0;
	P0 += 1;
	LSETUP (.L583, .L586) LC1 = P0;
.L583:
	R0 = B [P1--] (X);
.L586:
	B [P2--] = R0;
	jump.s .L575;
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
	if !cc jump .L589 (bp);
.L592:
	cc =P2==0;
	if cc jump .L591;
	P4 = P1;
	P5 = P0;
	P2 = P2 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L595, .L603) LC1 = P2;
.L595:
	R1 = [P5++];
.L603:
	[P4++] = R1;
.L591:
	cc =R0<=R2 (iu);
	if cc jump .L588;
	P2 = R2;
	P1 = P1 + P2;
	P0 = P0 + P2;
	R0 = R0 - R2;
	P2 = R0;
	LSETUP (.L596, .L602) LC1 = P2;
.L596:
	R0 = B [P0++] (X);
.L602:
	B [P1++] = R0;
.L588:
	( p5:4 ) = [sp++];

	rts;
.L589:
	R3 = R1 + R0;
	R1 = P1;
	cc =R3<R1 (iu);
	if cc jump .L592 (bp);
	P2 = R0;
	P2 += -1;
	cc =R0==0;
	if cc jump .L588;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L597, .L601) LC1 = P2;
.L597:
	R0 = B [P0--] (X);
.L601:
	B [P1--] = R0;
	jump.s .L588;
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
	LSETUP (.L612, .L614) LC1 = P2;
.L612:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L610;
.L614:
	R0 += 1;
.L610:
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
	LSETUP (.L617, .L619) LC1 = P2;
.L617:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L615;
.L619:
	R0 += 1;
.L615:
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
	if !cc jump .L626;
	R0 = R7;
	call ___fixsfsi;
.L620:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L626:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L620;
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
	LSETUP (.L628, .L630) LC1 = P2;
.L628:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L630:
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
	LSETUP (.L632, .L634) LC1 = P2;
.L632:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L634:
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
	if cc jump .L638;
	R3 = 0 (X);
	R7 = 1 (X);
.L637:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L637 (bp);
.L635:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L638:
	R3 = R0;
	jump.s .L635;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L643;
	cc =R1==0;
	if cc jump .L644;
	R3 = 0 (X);
	R7 = 1 (X);
.L642:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>= 1;
	cc =R1==0;
	if !cc jump .L642 (bp);
.L640:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L643:
	R3 = R0;
	jump.s .L640;
.L644:
	R3 = R1;
	jump.s .L640;
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
	if !cc jump .L654;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L647, .L662) LC1 = P2;
.L647:
	cc =R0<0;
	if cc jump .L654;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L649;
.L662:
	R2 += -1;
.L650:
	cc =P1==0;
	if !cc jump .L660;
.L646:
	R0 = R2;
	rts;
.L652:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L650;
.L653:
	cc =R3<R0 (iu);
	if cc jump .L652 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L652;
.L649:
	cc =R1==0;
	if cc jump .L661;
.L654:
	R2 = 0 (X);
	jump.s .L653;
.L661:
	R2 = R1;
	jump.s .L650;
.L660:
	R2 = R3;
	jump.s .L646;
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
	if cc jump .L666;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L667;
.L665:
	R5 = R5.B (Z);
.L663:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L667:
	R5 = 0 (X);
	jump.s .L665;
.L666:
	R5 = -1 (X);
	jump.s .L663;
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
	if cc jump .L671;
	R5 = 1 (X);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L672;
.L670:
	R5 = R5.B (Z);
.L668:
	R0 = R5;
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L672:
	R5 = 0 (X);
	jump.s .L670;
.L671:
	R5 = -1 (X);
	jump.s .L668;
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
	if cc jump .L683;
	P1 = 0 (X);
	cc =R1==0;
	if cc jump .L684;
.L680:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
.L678:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>>= 1;
	cc =R1==0;
	if cc jump .L677;
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L678 (bp);
.L677:
	cc =P1==0;
	if cc jump .L675;
	R3 = -R3;
.L675:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L683:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L680;
.L684:
	R3 = R1;
	jump.s .L675;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L693;
	cc =R1<0;
	if cc jump .L694;
	R2 = 0 (X);
	call ___udivmodsi4;
	jump.s .L685;
.L693:
	R0 = -R0;
	cc =R1<0;
	if cc jump .L695;
	R2 = 0 (X);
	call ___udivmodsi4;
.L689:
	R0 = -R0;
.L685:
	SP += 12;
	RETS = [SP++];
	rts;
.L694:
	R1 = -R1;
	R2 = 0 (X);
	call ___udivmodsi4;
	jump.s .L689;
.L695:
	R1 = -R1;
	R2 = 0 (X);
	call ___udivmodsi4;
	jump.s .L685;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L699;
	R1 = abs R1;
	R2 = 1 (X);
	call ___udivmodsi4;
	jump.s .L696;
.L699:
	R0 = -R0;
	R1 = abs R1;
	R2 = 1 (X);
	call ___udivmodsi4;
	R0 = -R0;
.L696:
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
	if !cc jump .L716;
	R1 = 1 (X);
	R6 = R3.L (Z);
	P2 = 16 (X);
	LSETUP (.L701, .L718) LC1 = P2;
.L701:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L708;
	R2 = R0 << 1;
	R0 = R2;
	R7 = R1 << 1;
	R1 = R7;
	R2 = R2.L (Z);
	cc =R6<=R2 (iu);
	if cc jump .L703;
.L718:
	nop;
	R7 = 0 (X);
.L704:
	cc =P1==0;
	if !cc jump .L717;
.L700:
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L716:
	R1 = 1 (X);
	jump.s .L708;
.L706:
	R1 = R1.L (Z);
	R2 = R1 >> 1;
	R1 = R2;
	R0 <<= 16;
	R0 >>= 17;
	cc =R2==0;
	if cc jump .L704;
.L707:
	R2 = R3.L (Z);
	R6 = R0.L (Z);
	cc =R2<R6 (iu);
	if cc jump .L706 (bp);
	R3 = R3 - R0;
	R7 = R1 | R7;
	jump.s .L706;
.L703:
	R2 = R7.L (Z);
	cc =R2==0;
	if cc jump .L704;
.L708:
	R7 = 0 (X);
	jump.s .L707;
.L717:
	R7 = R3;
	jump.s .L700;
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
	if !cc jump .L727;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L720, .L735) LC1 = P2;
.L720:
	cc =R0<0;
	if cc jump .L727;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L722;
.L735:
	R2 += -1;
.L723:
	cc =P1==0;
	if !cc jump .L733;
.L719:
	R0 = R2;
	rts;
.L725:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L723;
.L726:
	cc =R3<R0 (iu);
	if cc jump .L725 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L725;
.L722:
	cc =R1==0;
	if cc jump .L734;
.L727:
	R2 = 0 (X);
	jump.s .L726;
.L734:
	R2 = R1;
	jump.s .L723;
.L733:
	R2 = R3;
	jump.s .L719;
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
	if cc jump .L737 (bp);
	R2 = 0 (X);
	R0 += -32;
	R1 <<= R0;
.L738:
	R0 = R2;
.L739:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L737:
	cc =R2==0;
	if cc jump .L740;
	R2 = R1;
	R2 <<= R0;
	R3 <<= R0;
	P2 = 32 (X);
	R7 = P2;
	R0 = R7 - R0;
	R1 >>= R0;
	R1 = R3 | R1;
	jump.s .L738;
.L740:
	R0 = R1;
	R1 = R3;
	jump.s .L739;
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
	if cc jump .L742 (bp);
	R2 = R3 >>> 31;
	R0 += -32;
	R3 >>>= R0;
.L743:
	R0 = R3;
	R1 = R2;
.L744:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L742:
	cc =R2==0;
	if cc jump .L745;
	R2 = R3;
	R2 >>>= R0;
	R7 = 32 (X);
	R7 = R7 - R0;
	R3 <<= R7;
	R1 >>= R0;
	R3 = R3 | R1;
	jump.s .L743;
.L745:
	R0 = R1;
	R1 = R3;
	jump.s .L744;
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
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R0 = [SP+4];
	[SP+16] = R2;
	R3 = R2;
	R2 = [SP+20];
	cc =R0<R2;
	if cc jump .L751;
	cc =R0<=R2;
	if !cc jump .L752;
	cc =R1<R3 (iu);
	if cc jump .L753;
	cc =R1<=R3 (iu);
	if !cc jump .L754;
	R0 = 1 (X);
	jump.s .L750;
.L751:
	R0 = 0 (X);
.L750:
	SP += 8;
	rts;
.L752:
	R0 = 2 (X);
	jump.s .L750;
.L753:
	R0 = 0 (X);
	jump.s .L750;
.L754:
	R0 = 2 (X);
	jump.s .L750;
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

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R3 = [SP+4];
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L758 (bp);
	R2 = 0 (X);
	R0 += -32;
	R3 >>= R0;
.L759:
	R0 = R3;
	R1 = R2;
.L760:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L758:
	cc =R2==0;
	if cc jump .L761;
	R2 = R3;
	R2 >>= R0;
	R7 = 32 (X);
	R7 = R7 - R0;
	R3 <<= R7;
	R1 >>= R0;
	R3 = R3 | R1;
	jump.s .L759;
.L761:
	R0 = R1;
	R1 = R3;
	jump.s .L760;
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
	jump.s .L772;
.L770:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L771;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L772:
	cc = !BITTST (R5,0);
	if cc jump .L770 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L770;
.L771:
	cc =R4<0;
	if cc jump .L774;
.L769:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L774:
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L769;
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
	jump.s .L778;
.L776:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L777;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L778:
	cc = !BITTST (R7,0);
	if cc jump .L776 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L776;
.L777:
	cc =R4<0;
	if cc jump .L780;
.L775:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L780:
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
	jump.s .L775;
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
	if cc jump .L783;
	cc =R0<=R2 (iu);
	if !cc jump .L784;
	cc =R1<R3 (iu);
	if cc jump .L785;
	cc =R1<=R3 (iu);
	if !cc jump .L786;
	R0 = 1 (X);
	jump.s .L782;
.L783:
	R0 = 0 (X);
.L782:
	SP += 8;
	rts;
.L784:
	R0 = 2 (X);
	jump.s .L782;
.L785:
	R0 = 0 (X);
	jump.s .L782;
.L786:
	R0 = 2 (X);
	jump.s .L782;
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
