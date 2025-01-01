.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	[--sp] = ( p5:4 );

	P4 = R0;
	P0 = R1;
	P2 = R2;
	cc =P4<=P0 (iu);
	if cc jump .L2 (bp);
	P1 = P0 + P2;
	cc =P2==0;
	if cc jump .L3;
	P2 += -1;
	P2 = P4 + P2;
	P5 = P1;
	P5 += -1;
	P1 -= P0;
	LSETUP (.L4, .L16) LC1 = P1;
.L4:
	R0 = B [P5--] (X);
.L16:
	B [P2--] = R0;
.L3:
	R0 = P4;
	( p5:4 ) = [sp++];

	rts;
.L2:
	cc =P4==P0;
	if cc jump .L3;
	cc =P2==0;
	if cc jump .L3;
	nop;
	P1 = R0;
	LSETUP (.L5, .L15) LC1 = P2;
.L5:
	R0 = B [P0++] (X);
.L15:
	B [P1++] = R0;
	jump.s .L3;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	P0 = R1;
	R1 = [SP+12];
	R2 = R2.B (Z);
	cc =R1==0;
	if cc jump .L22;
	P2 = R0;
	P1 = R1;
	LSETUP (.L19, .L29) LC1 = P1;
.L19:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (Z);
	cc =R0==R2;
	if cc jump .L28;
.L29:
	R1 += -1;
.L22:
	R3 = 0 (X);
	jump.s .L17;
.L28:
	cc =R1==0;
	if cc jump .L22;
	R3 = P2;
.L17:
	R0 = R3;
	rts;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	R3 = R1;
	R1 = R2;
	R3 = R3.B (Z);
	cc =R2==0;
	if cc jump .L36;
	P2 = R2;
	LSETUP (.L32, .L40) LC1 = P2;
.L32:
	P1 = R0;
	R0 += 1;
	R2 = B [P1] (Z);
	cc =R2==R3;
	if cc jump .L39;
.L40:
	R1 += -1;
.L36:
	P1 = 0 (X);
	jump.s .L30;
.L39:
	cc =R1==0;
	if cc jump .L36;
.L30:
	R0 = P1;
	rts;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	[--sp] = ( r7:7 );

	P1 = R1;
	cc =R2==0;
	if cc jump .L46;
	R1 = R0;
	R0 = P1;
	P2 = R2;
	LSETUP (.L43, .L53) LC1 = P2;
.L43:
	P1 = R0;
	P0 = R1;
	R1 += 1;
	R0 += 1;
	R7 = B [P0] (Z);
	R3 = B [P1] (Z);
	cc =R7==R3;
	if !cc jump .L52;
.L53:
	R2 += -1;
.L46:
	R0 = 0 (X);
	jump.s .L41;
.L52:
	cc =R2==0;
	if cc jump .L46 (bp);
	R0 = R7 - R3;
.L41:
	( r7:7 ) = [sp++];

	rts;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	[--SP] = RETS;
	SP += -12;
	R3 = R0;
	cc =R2==0;
	if cc jump .L55;
	call _memcpy;
	R3 = R0;
.L55:
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
.L60:
	cc =R0==R3;
	if cc jump .L63;
	nop;
	P2 = R0;
	R0 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if !cc jump .L60 (bp);
	jump.s .L59;
.L63:
	P2 = 0 (X);
.L59:
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
	if cc jump .L65;
	P1 = R3;
	LSETUP (.L66, .L71) LC1 = P2;
.L66:
.L71:
	B [P1++] = R0;
.L65:
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
	if cc jump .L75;
	P1 += 1;
	P2 += 1;
.L74:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L74 (bp);
.L72:
	R0 = R1;
	rts;
.L75:
	R1 = P2;
	jump.s .L72;
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
	if cc jump .L77;
.L78:
	R0 = R0.B (Z);
	cc =R0==R2;
	if cc jump .L77;
	nop;
	nop;
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if !cc jump .L78 (bp);
.L77:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
.L86:
	R2 = P2;
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L84;
	cc =R0==0;
	if !cc jump .L86 (bp);
	R2 = 0 (X);
.L84:
	R0 = R2;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	P1 = R0;
	P2 = R1;
	R1 = B [P1] (X);
	R2 = B [P2] (X);
	R0 = R1.B (X);
	R3 = R2.B (X);
	cc =R0==R3;
	if !cc jump .L89;
	P1 += 1;
	P2 += 1;
.L90:
	cc =R0==0;
	if cc jump .L89;
	nop;
	nop;
	nop;
	R1 = B [P1++] (X);
	R2 = B [P2++] (X);
	R0 = R1.B (X);
	R3 = R2.B (X);
	cc =R0==R3;
	if cc jump .L90 (bp);
.L89:
	R1 = R1.B (Z);
	R2 = R2.B (Z);
	R1 = R1 - R2;
	R0 = R1;
	rts;
	.size	_strcmp, .-_strcmp
	.align 4
.global _strlen;
.type _strlen, STT_FUNC;
_strlen:
	P1 = R0;
	R0 = B [P1] (X);
	cc =R0==0;
	if cc jump .L95;
	R0 = P1;
	R0 += 1;
.L94:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L94 (bp);
.L93:
	P2 -= P1;
	R0 = P2;
	rts;
.L95:
	P2 = P1;
	jump.s .L93;
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
	if cc jump .L102;
	nop;
	nop;
	nop;
	R0 = B [P0] (Z);
	cc =R0==0;
	if cc jump .L99;
	P1 = R1;
	P0 += 1;
.L100:
	P5 = P1;
	R1 = B [P1++] (Z);
	cc =R1==0;
	if cc jump .L99;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L108;
	jump.s .L99;
.L108:
	cc =R1==R0;
	if !cc jump .L99;
	nop;
	nop;
	nop;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if !cc jump .L100 (bp);
	P5 = P1;
.L99:
	R1 = B [P5] (Z);
	R0 = R0 - R1;
.L97:
	( p5:5 ) = [sp++];

	rts;
.L102:
	R0 = 0 (X);
	jump.s .L97;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =R2<=1;
	if cc jump .L111;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L113, .L115) LC1 = P0;
.L113:
	R0 = B [P2+1] (X);
	B [P1] = R0;
	R0 = B [P2] (X);
	B [P1+1] = R0;
	P1 += 2;
.L115:
	P2 += 2;
.L111:
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
	if cc jump .L120;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
.L118:
	rts;
.L120:
	R0 = 1 (X);
	jump.s .L118;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L123 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
.L121:
	rts;
.L123:
	R0 = 1 (X);
	jump.s .L121;
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
	if cc jump .L130;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
.L128:
	rts;
.L130:
	R0 = 1 (X);
	jump.s .L128;
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
	if cc jump .L136 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if cc jump .L136 (bp);
	P1 = -8232 (X);
	P1 = P2 + P1;
	cc =P1<=1 (iu);
	if cc jump .L136;
	R0 = 7 (X);
	R0.H = 65535;
	P1 = R0;
	P2 = P2 + P1;
	cc =P2<=2 (iu);
	R0 = CC;
	jump.s .L132;
.L136:
	R0 = 1 (X);
.L132:
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
	if cc jump .L145;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L143;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L143;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L143;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L144;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L138;
.L145:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L138;
.L143:
	R0 = 1 (X);
.L138:
	rts;
.L144:
	R0 = 0 (X);
	jump.s .L138;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L148 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
.L146:
	rts;
.L148:
	R0 = 1 (X);
	jump.s .L146;
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
	if !cc jump .L153;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L154;
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L157 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L150:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L153:
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L150;
.L154:
	R1 = [SP+40];
	R2 = [SP+44];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L150;
.L157:
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L150;
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
	if !cc jump .L158;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L162;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L165 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L158:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L162:
	R7 = R6;
	jump.s .L158;
.L165:
	R7 = 0 (X);
	jump.s .L158;
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
	if !cc jump .L174;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L173;
	R0 = [SP+44];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L168 (bp);
	cc =R0==0;
	if !cc jump .L174 (bp);
.L173:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L166;
.L168:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L169 (bp);
.L174:
	R0 = [SP+48];
	R1 = [SP+52];
.L175:
	[SP+24] = R0;
	[SP+28] = R1;
.L166:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L169:
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L175;
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
	if !cc jump .L176;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L183;
	R0 = R6 >>> 31;
	R0 <<= 31;
	R1 = R7 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L178 (bp);
.L185:
	cc =R0==0;
	if !cc jump .L176 (bp);
.L183:
	R7 = R6;
.L176:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L178:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	jump.s .L185;
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
	if !cc jump .L194;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L193;
	R0 = [SP+44];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L188 (bp);
	cc =R0==0;
	if !cc jump .L194 (bp);
.L193:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L186;
.L188:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L189 (bp);
.L194:
	R0 = [SP+48];
	R1 = [SP+52];
.L195:
	[SP+24] = R0;
	[SP+28] = R1;
.L186:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L189:
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L195;
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
	if !cc jump .L202;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L204;
	R0 = [SP+36];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L198 (bp);
	cc =R0==0;
	if !cc jump .L204 (bp);
.L202:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L196;
.L198:
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L199 (bp);
.L204:
	R0 = [SP+32];
	R1 = [SP+36];
.L205:
	[SP+16] = R0;
	[SP+20] = R1;
.L196:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L199:
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L205;
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
	if !cc jump .L212;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L206;
	R0 = R7 >>> 31;
	R0 <<= 31;
	R1 = R6 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L208 (bp);
.L215:
	cc =R0==0;
	if !cc jump .L206 (bp);
.L212:
	R7 = R6;
.L206:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L208:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	jump.s .L215;
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
	if !cc jump .L222;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L224;
	R0 = [SP+36];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L218 (bp);
	cc =R0==0;
	if !cc jump .L224 (bp);
.L222:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L216;
.L218:
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L219 (bp);
.L224:
	R0 = [SP+32];
	R1 = [SP+36];
.L225:
	[SP+16] = R0;
	[SP+20] = R1;
.L216:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L219:
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L225;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	P1.L = _s.0;
	cc =R0==0;
	if cc jump .L227;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L228:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
	cc =R0==0;
	if !cc jump .L228 (bp);
.L227:
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
	if cc jump .L239;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L233;
	[P1+4] = P2;
.L233:
	rts;
.L239:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L233;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L241;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L241:
	P1 = [P2+4];
	cc =P1==0;
	if cc jump .L240;
	nop;
	nop;
	nop;
	R0 = [P2];
	[P1] = R0;
.L240:
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
	P3 = R2;
	P5 = [SP+60];
	P4 = [SP+64];
	R6 = [P3];
	cc =R6==0;
	if cc jump .L250;
	R7 = R1;
	FP = 0 (X);
.L252:
	R4 = R7;
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	if cc jump .L249;
	FP += 1;
	R0 = P5;
	R7 = R7 + R0;
	R0 = FP;
	cc =R6==R0;
	if !cc jump .L252 (bp);
.L250:
	R0 = R6;
	R0 += 1;
	[P3] = R0;
	R0 = P5;
	R6 *= R0;
	R0 = [SP+52];
	R4 = R0 + R6;
	cc =P5==0;
	if cc jump .L249;
	R2 = P5;
	R1 = R5;
	R0 = R4;
	call _memmove;
.L249:
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
	if cc jump .L265;
	R6 = 0 (X);
.L267:
	P3 = R7;
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	if cc jump .L264;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R4==R6;
	if !cc jump .L267 (bp);
.L265:
	P3 = 0 (X);
.L264:
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
	P0 = R0;
.L290:
	P1 = P0;
	R0 = B [P0++] (X);
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L290;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	R3 = CC;
	P2 = R3;
	if cc jump .L290 (bp);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L286;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L287 (bp);
	R2 = 1 (X);
.L279:
	P1 += 1;
	jump.s .L280;
.L286:
	R2 = 0 (X);
	jump.s .L279;
.L281:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
.L280:
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L281 (bp);
	cc =R2==0;
	if !cc jump .L276 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L276:
	R0 = P2;
	rts;
.L287:
	R2 = 0 (X);
	jump.s .L280;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	P0 = R0;
.L306:
	P1 = P0;
	R0 = B [P0++] (X);
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L306;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	R3 = CC;
	P2 = R3;
	if cc jump .L306 (bp);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L302;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L303 (bp);
	R2 = 1 (X);
.L295:
	P1 += 1;
	jump.s .L296;
.L302:
	R2 = 0 (X);
	jump.s .L295;
.L297:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
.L296:
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L297 (bp);
	cc =R2==0;
	if !cc jump .L292 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L292:
	R0 = P2;
	rts;
.L303:
	R2 = 0 (X);
	jump.s .L296;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -24;
	P2 = R0;
.L321:
	P5 = P2;
	R0 = B [P2++] (X);
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L321;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	R5 = CC;
	if cc jump .L321 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L311;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L312 (bp);
	R5 = 1 (X);
.L311:
	P5 += 1;
.L312:
	nop;
	R7 = B [P5] (X);
	R0 = R7.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L324;
	P5 += 1;
	R4 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L313:
	[SP+12] = R6;
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
	if cc jump .L313 (bp);
.L314:
	cc =R5==0;
	if !cc jump .L308 (bp);
	CC = R4;
	R0 = CC;
	R1 = -R1;
	R4 = -R4;
	R1 = R1 - R0;
.L308:
	R0 = R4;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L324:
	R4 = 0 (X);
	R1 = 0 (X);
	jump.s .L314;
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
	jump.s .L335;
.L330:
	R7 = P3;
.L335:
	cc =R7==0;
	if cc jump .L326;
	P2 = R7;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L330;
	cc =R0<=0;
	if cc jump .L325;
	R5 = R6 + R4;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	jump.s .L335;
.L326:
	R6 = 0 (X);
.L325:
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

	LINK 12;
	R4 = R0;
	R6 = R1;
	R7 = R2;
	R5 = [SP+60];
	P4 = [SP+64];
	P5 = [SP+68];
	cc =R2==0;
	if !cc jump .L340 (bp);
.L337:
	P3 = 0 (X);
.L336:
	R0 = P3;
	SP += 12;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L339:
	R7 = FP;
	cc =R7==0;
	if cc jump .L337;
.L340:
	R0 = R7 >>> 1;
	FP = R0;
	R0 *= R5;
	R0 = R6 + R0;
	P3 = R0;
	R2 = P5;
	R1 = R0;
	R0 = R4;
	call (P4);
	cc =R0==0;
	if cc jump .L336;
	cc =R0<=0;
	if cc jump .L339;
	R0 = P3;
	R6 = R0 + R5;
	R7 += -1;
	R7 >>>= 1;
	FP = R7;
	jump.s .L339;
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
	if cc jump .L352;
.L350:
	SP += 8;
	rts;
.L352:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L350;
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
	if cc jump .L359;
.L357:
	SP += 8;
	rts;
.L359:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L357;
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
	if cc jump .L367;
.L362:
	cc =R1==R0;
	if cc jump .L370;
	nop;
	nop;
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L362 (bp);
.L367:
	P2 = 0 (X);
	jump.s .L361;
.L370:
	cc =R0==0;
	if cc jump .L367;
.L361:
	R0 = P2;
	rts;
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
	if !cc jump .L372;
	P1 += 4;
	P2 += 4;
.L373:
	cc =R0==0;
	if cc jump .L372;
	cc =R1==0;
	if cc jump .L372;
	nop;
	nop;
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if cc jump .L373 (bp);
.L372:
	cc =R0<R1;
	if cc jump .L376 (bp);
	cc =R1<R0;
	R0 = CC;
.L371:
	rts;
.L376:
	R0 = -1 (X);
	jump.s .L371;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P2 = R1;
	P1 = R0;
.L381:
	nop;
	R0 = [P2++];
	[P1++] = R0;
	cc =R0==0;
	if !cc jump .L381 (bp);
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
	if cc jump .L386;
	R0 = P1;
	R0 += 4;
.L385:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L385 (bp);
.L384:
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L386:
	P2 = P1;
	jump.s .L384;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:5 );

	cc =R2==0;
	if cc jump .L393;
	P2 = R0;
	R0 = R1;
	P1 = R2;
	LSETUP (.L390, .L400) LC1 = P1;
.L390:
	P0 = R0;
	P5 = P2;
	R1 = [P2++];
	R0 += 4;
	R3 = [P0];
	cc =R1==R3;
	if !cc jump .L389;
	cc =R1==0;
	if cc jump .L389;
.L400:
	R2 += -1;
.L393:
	R0 = 0 (X);
.L388:
	( p5:5 ) = [sp++];

	rts;
.L389:
	cc =R2==0;
	if cc jump .L393 (bp);
	R0 = [P5];
	R1 = [P0];
	cc =R0<R1;
	if cc jump .L394 (bp);
	cc =R1<R0;
	R0 = CC;
	jump.s .L388;
.L394:
	R0 = -1 (X);
	jump.s .L388;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	R3 = R1;
	R1 = R2;
	cc =R2==0;
	if cc jump .L407;
	P2 = R2;
	LSETUP (.L403, .L411) LC1 = P2;
.L403:
	P1 = R0;
	R0 += 4;
	R2 = [P1];
	cc =R2==R3;
	if cc jump .L410;
.L411:
	R1 += -1;
.L407:
	P1 = 0 (X);
	jump.s .L401;
.L410:
	cc =R1==0;
	if cc jump .L407;
.L401:
	R0 = P1;
	rts;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[--sp] = ( r7:7 );

	P1 = R1;
	cc =R2==0;
	if cc jump .L417;
	R1 = R0;
	R0 = P1;
	P2 = R2;
	LSETUP (.L414, .L425) LC1 = P2;
.L414:
	P1 = R0;
	P0 = R1;
	R1 += 4;
	R0 += 4;
	R3 = [P1];
	R7 = [P0];
	cc =R7==R3;
	if !cc jump .L424;
.L425:
	R2 += -1;
.L417:
	R0 = 0 (X);
.L412:
	( r7:7 ) = [sp++];

	rts;
.L424:
	cc =R2==0;
	if cc jump .L417 (bp);
	cc =R7<R3;
	if cc jump .L418 (bp);
	cc =R3<R7;
	R0 = CC;
	jump.s .L412;
.L418:
	R0 = -1 (X);
	jump.s .L412;
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
	if cc jump .L427;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L427:
	R0 = R3;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	[--sp] = ( p5:5 );

	P1 = R1;
	R1 = R2;
	R2 = P1;
	cc =R0==R2;
	if cc jump .L432;
	P0 = R0;
	P2 = R1;
	P2 += -1;
	R3 = R0 - R2;
	R2 = R1 << 2;
	cc =R3<R2 (iu);
	if cc jump .L433 (bp);
	P2 += 1;
	cc =R1==0;
	if cc jump .L432;
	nop;
	nop;
	LSETUP (.L434, .L443) LC1 = P2;
.L434:
	R1 = [P1++];
.L443:
	[P0++] = R1;
	jump.s .L432;
.L433:
	cc =R1==0;
	if cc jump .L432;
	P2 = P2 << 2;
	P1 = P1 + P2;
	P0 = P0 + P2;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L435, .L442) LC1 = P2;
.L435:
	R1 = [P1--];
.L442:
	[P0--] = R1;
.L432:
	( p5:5 ) = [sp++];

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
	if cc jump .L445;
	P1 = R3;
	P2 += 1;
	LSETUP (.L446, .L451) LC1 = P2;
.L446:
.L451:
	[P1++] = R0;
.L445:
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	[--sp] = ( p5:4 );

	P5 = R0;
	P2 = R1;
	P1 = R2;
	cc =P5<P2 (iu);
	if !cc jump .L453 (bp);
	P0 = P5 + P1;
	cc =P1==0;
	if cc jump .L452;
	P1 += -1;
	P2 = P2 + P1;
	P4 = P0;
	P4 += -1;
	P0 -= P5;
	LSETUP (.L455, .L466) LC1 = P0;
.L455:
	R0 = B [P4--] (X);
.L466:
	B [P2--] = R0;
.L452:
	( p5:4 ) = [sp++];

	rts;
.L453:
	cc =P5==P2;
	if cc jump .L452;
	cc =P1==0;
	if cc jump .L452;
	nop;
	nop;
	LSETUP (.L456, .L465) LC1 = P1;
.L456:
	R0 = B [P5++] (X);
.L465:
	B [P2++] = R0;
	jump.s .L452;
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
	LSETUP (.L483, .L485) LC1 = P2;
.L483:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L480;
.L485:
	nop;
	R0 = 0 (X);
.L480:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L489;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L486;
	R1 = 1 (X);
.L488:
	R0 >>>= 1;
	R1 += 1;
	cc = !BITTST (R0,0);
	if cc jump .L488 (bp);
.L486:
	R0 = R1;
	rts;
.L489:
	R1 = 0 (X);
	jump.s .L486;
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
	if cc jump .L495 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L496;
.L494:
	R0 = R6;
.L492:
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L496:
	R6 = 0 (X);
	jump.s .L494;
.L495:
	R0 = 1 (X);
	jump.s .L492;
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
	if cc jump .L500 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L501;
.L499:
	R0 = R7;
.L497:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L501:
	R7 = 0 (X);
	jump.s .L499;
.L500:
	R0 = 1 (X);
	jump.s .L497;
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
	if cc jump .L505 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L506;
.L504:
	R0 = R7;
.L502:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L506:
	R7 = 0 (X);
	jump.s .L504;
.L505:
	R0 = 1 (X);
	jump.s .L502;
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
	if !cc jump .L509;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L509 (bp);
	cc =R7<0;
	if cc jump .L522;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L513;
.L522:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L513;
.L512:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L509;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L513:
	cc = !BITTST (R7,0);
	if cc jump .L512 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L512;
.L509:
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
	if !cc jump .L524;
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
	if cc jump .L524 (bp);
	R4 = 0 (X);
	cc =R7<0;
	if cc jump .L537;
	R5 = 1 (X);
	R5 <<= 30;
	jump.s .L528;
.L537:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L528;
.L527:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L524;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L528:
	cc = !BITTST (R7,0);
	if cc jump .L527 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L527;
.L524:
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
	if !cc jump .L539;
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
	if cc jump .L539 (bp);
	R4 = 0 (X);
	cc =R7<0;
	if cc jump .L552;
	R5 = 1 (X);
	R5 <<= 30;
	jump.s .L543;
.L552:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L543;
.L542:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L539;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L543:
	cc = !BITTST (R7,0);
	if cc jump .L542 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L542;
.L539:
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
	if cc jump .L554;
	nop;
	P1 = R0;
	LSETUP (.L555, .L560) LC1 = P2;
.L555:
	R0 = B [P1++] (X);
	R1 = B [P0++] (X);
	R0 = R0 ^ R1;
.L560:
	B [P1+-1] = R0;
.L554:
	R0 = R3;
	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	[--sp] = ( p5:4 );

	P4 = R0;
	P5 = R1;
	R1 = R2;
	R0 = B [P4] (X);
	cc =R0==0;
	if cc jump .L568;
	R0 = P4;
	R0 += 1;
.L563:
	P1 = R0;
	R0 += 1;
	R2 = B [P1] (X);
	cc =R2==0;
	if !cc jump .L563 (bp);
.L562:
	cc =R1==0;
	if cc jump .L570;
	P2 = P1;
	P0 = R1;
	LSETUP (.L565, .L575) LC1 = P0;
.L565:
	P1 = P2;
	R0 = B [P5++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L574;
.L575:
	R1 += -1;
	P1 = P2;
	jump.s .L570;
.L568:
	P1 = P4;
	jump.s .L562;
.L574:
	cc =R1==0;
	if !cc jump .L567 (bp);
.L570:
	R0 = 0 (X);
	B [P1] = R0;
.L567:
	R0 = P4;
	( p5:4 ) = [sp++];

	rts;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	R1 = 0 (X);
	cc =R0==0;
	if cc jump .L576;
	nop;
	P1 = R0;
	LSETUP (.L578, .L585) LC1 = P1;
.L578:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L584;
.L576:
	R0 = R1;
	rts;
.L584:
.L585:
	R1 += 1;
	R1 = R0;
	jump.s .L576;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L591;
	nop;
	nop;
.L587:
	P2 = R2;
.L590:
	nop;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L593;
	cc =R0==R1;
	if !cc jump .L590 (bp);
.L588:
	R0 = P1;
	rts;
.L593:
	P1 += 1;
	R1 = B [P1] (X);
	cc =R1==0;
	if !cc jump .L587 (bp);
.L591:
	P1 = 0 (X);
	jump.s .L588;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R2 = R1;
	R3 = 0 (X);
	jump.s .L596;
.L595:
	cc =R0==0;
	if cc jump .L599;
	nop;
	nop;
.L596:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R0==R2;
	if !cc jump .L595 (bp);
	R3 = R1;
	jump.s .L595;
.L599:
	R0 = R3;
	rts;
	.size	_strrchr, .-_strrchr
	.align 4
.global _strstr;
.type _strstr, STT_FUNC;
_strstr:
	[--sp] = ( p5:4 );

	P2 = R0;
	P4 = R1;
	R2 = B [P4] (X);
	cc =R2==0;
	if cc jump .L611;
	R0 = R1;
	R0 += 1;
.L602:
	P1 = R0;
	R0 += 1;
	R1 = B [P1] (X);
	cc =R1==0;
	if !cc jump .L602 (bp);
.L601:
	R1 = P1;
	R3 = P4;
	R0 = R1 - R3;
	cc =P1==P4;
	if cc jump .L612;
	R0 += -1;
	P1 = R0;
	P5 = P4 + P1;
	jump.s .L609;
.L611:
	P1 = R1;
	jump.s .L601;
.L613:
	P2 = P4;
	jump.s .L605;
.L614:
	P2 = P5;
.L605:
	R1 = B [P2] (Z);
	cc =R1==R0;
	if cc jump .L600;
	P2 = P1;
	P2 += 1;
.L609:
	P1 = P2;
	R0 = B [P2++] (X);
	cc =R0==R2;
	if cc jump .L608;
	cc =R0==0;
	if !cc jump .L609 (bp);
	P1 = 0 (X);
.L600:
	R0 = P1;
	( p5:4 ) = [sp++];

	rts;
.L608:
	cc =P1==0;
	if cc jump .L600;
	nop;
	nop;
	nop;
	R0 = B [P1] (Z);
	cc =R0==0;
	if cc jump .L613;
	P0 = P1;
	P0 += 1;
	P2 = P4;
.L606:
	nop;
	R1 = B [P2] (Z);
	cc =R1==0;
	if cc jump .L605;
	cc =P2==P5;
	if cc jump .L614;
	cc =R1==R0;
	if !cc jump .L605;
	nop;
	nop;
	P2 += 1;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if !cc jump .L606 (bp);
	jump.s .L605;
.L612:
	P1 = P2;
	jump.s .L600;
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
	if cc jump .L632;
.L624:
	R7 = 0 (X);
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L627;
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L626;
.L627:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L632:
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L624 (bp);
.L626:
	R0 = [SP+32];
	R1 = [SP+36];
	BITTGL (R1, 31);
	[SP+32] = R0;
	[SP+36] = R1;
	jump.s .L627;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:5, p5:3 );

	P5 = R0;
	P4 = R1;
	P3 = R2;
	R6 = [SP+36];
	cc =R6==0;
	if cc jump .L641;
	cc =R1<R6 (iu);
	if cc jump .L643;
	P2 = R6;
	P4 -= P2;
	P4 = P5 + P4;
	cc =P5<=P4 (iu);
	if !cc jump .L643;
	nop;
	nop;
	nop;
	R5 = B [P3++] (X);
	jump.s .L640;
.L654:
	cc =R2==0;
	if cc jump .L633 (bp);
	cc =R7==R3;
	if cc jump .L633;
.L635:
	cc =P5<=P4 (iu);
	if !cc jump .L643;
	nop;
	nop;
	nop;
.L640:
	R0 = B [P5] (X);
	I0 = P5;
	P5 += 1;
	R0 = R0.B (X);
	cc =R0==R5;
	if !cc jump .L635 (bp);
	R2 = R6;
	R2 += -1;
	cc =R6==1;
	if cc jump .L633;
	R1 = P5;
	R0 = P3;
	P2 = R2;
	LSETUP (.L637, .L655) LC1 = P2;
.L637:
	P1 = R0;
	P0 = R1;
	R1 += 1;
	R0 += 1;
	R7 = B [P0] (Z);
	R3 = B [P1] (Z);
	cc =R7==R3;
	if !cc jump .L654;
.L655:
	R2 += -1;
.L633:
	R0 = I0;
	( r7:5, p5:3 ) = [sp++];

	rts;
.L641:
	I0 = R0;
	jump.s .L633;
.L643:
	I0 = 0 (X);
	jump.s .L633;
	.size	_memmem, .-_memmem
	.align 4
.global _mempcpy;
.type _mempcpy, STT_FUNC;
_mempcpy:
	[--sp] = ( p5:5 );

	[--SP] = RETS;
	SP += -12;
	R3 = R0;
	P5 = R2;
	cc =P5==0;
	if cc jump .L657;
	R0 = R3;
	call _memmove;
	R3 = R0;
.L657:
	R0 = P5;
	R3 = R3 + R0;
	R0 = R3;
	SP += 12;
	RETS = [SP++];
	( p5:5 ) = [sp++];

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
	if cc jump .L688;
	R4 = 0 (X);
.L662:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L685;
	R7 = 0 (X);
	R5 = 511 (X);
	R5 <<= 21;
	R6 = 1023 (X);
	R6 <<= 20;
.L666:
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
	if !cc jump .L666 (bp);
.L667:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L671 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L671:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L688:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L662;
.L685:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L686 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	R7 = 0 (X);
	cc =R0==0;
	if cc jump .L667 (bp);
	R6 = 511 (X);
	R6 <<= 21;
.L670:
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
	if cc jump .L670 (bp);
	jump.s .L667;
.L686:
	R7 = 0 (X);
	jump.s .L667;
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
	if cc jump .L689;
	P4 = 1 (X);
.L692:
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
	if !cc jump .L692 (bp);
.L689:
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
	P2 = 32 (X);
	cc =R0<R3 (iu);
	if !cc jump .L711;
	LSETUP (.L696, .L713) LC1 = P2;
.L696:
	cc =R0<0;
	if cc jump .L697;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L697;
.L713:
	nop;
.L705:
	R2 = 0 (X);
.L699:
	cc =P1==0;
	if !cc jump .L712;
.L695:
	R0 = R2;
	rts;
.L697:
	cc =R1==0;
	if cc jump .L705;
.L711:
	R2 = 0 (X);
	jump.s .L701;
.L700:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L699;
.L701:
	cc =R3<R0 (iu);
	if cc jump .L700 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L700;
.L712:
	R2 = R3;
	jump.s .L695;
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
	if cc jump .L716;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L714:
	SP += 12;
	RETS = [SP++];
	rts;
.L716:
	R0 = 7 (X);
	jump.s .L714;
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
	if cc jump .L723;
.L721:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	R0 += -1;
.L717:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L723:
	cc =R0==R1;
	if !cc jump .L721 (bp);
	R0 = 63 (X);
	jump.s .L717;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = 0 (X);
	cc =R0==0;
	if cc jump .L724;
	R7 = 1 (X);
.L726:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L726 (bp);
.L724:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:6, p5:5 );

	P1 = R0;
	P0 = R1;
	R7 = R1;
	P2 = R2;
	R0 = R2;
	R1 = R2 >> 3;
	R6 = -8 (X);
	R6 = R2 & R6;
	R2 = P1;
	cc =R2<R7 (iu);
	if cc jump .L730 (bp);
	R2 = R7 + R0;
	R3 = P1;
	cc =R3<=R2 (iu);
	if !cc jump .L730 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L729;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L736, .L745) LC1 = P2;
.L736:
	R0 = B [P0--] (X);
.L745:
	B [P1--] = R0;
	jump.s .L729;
.L730:
	cc =R1==0;
	if cc jump .L733;
	P5 = R7;
	P0 = P1;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P2 += 1;
	LSETUP (.L734, .L744) LC1 = P2;
.L734:
	R2 = [P5];
	R3 = [P5+4];
	[P0] = R2;
	[P0+4] = R3;
	P5 += 8;
.L744:
	P0 += 8;
.L733:
	cc =R0<=R6 (iu);
	if cc jump .L729;
	P2 = R6;
	P1 = P1 + P2;
	R7 = R7 + R6;
	P0 = R7;
	R0 = R0 - R6;
	P2 = R0;
	LSETUP (.L735, .L743) LC1 = P2;
.L735:
	R0 = B [P0++] (X);
.L743:
	B [P1++] = R0;
.L729:
	( r7:6, p5:5 ) = [sp++];

	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	[--sp] = ( p5:3 );

	P2 = R0;
	P5 = R0;
	P1 = R1;
	P4 = R1;
	R1 = R2;
	R0 = R2 >> 1;
	cc =P2<P1 (iu);
	if cc jump .L747 (bp);
	R3 = P1;
	R2 = R3 + R2;
	R3 = P2;
	cc =R3<=R2 (iu);
	if !cc jump .L747 (bp);
	P0 = R1;
	P0 += -1;
	cc =R1==0;
	if cc jump .L746;
	P4 = P1 + P0;
	P5 = P2 + P0;
	P0 += 1;
	LSETUP (.L752, .L762) LC1 = P0;
.L752:
	R0 = B [P4--] (X);
.L762:
	B [P5--] = R0;
	jump.s .L746;
.L747:
	cc =R0==0;
	if cc jump .L750;
	P0 = P4;
	P1 = P5;
	P3 = R0;
	P2 = P3 + P3;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L751, .L761) LC1 = P2;
.L751:
	R0 = W [P0++] (X);
.L761:
	W [P1++] = R0;
.L750:
	cc = !BITTST (R1,0);
	if cc jump .L746 (bp);
	P2 = R1;
	P2 += -1;
	P4 = P4 + P2;
	R0 = B [P4] (X);
	P2 = P5 + P2;
	B [P2] = R0;
.L746:
	( p5:3 ) = [sp++];

	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( r7:6, p5:4 );

	P1 = R0;
	P0 = R1;
	R3 = R1;
	P2 = R2;
	R0 = R2;
	R1 = R2 >> 2;
	R2 = -4 (X);
	R2 = R0 & R2;
	R6 = P1;
	cc =R6<R3 (iu);
	if cc jump .L764 (bp);
	R7 = R3 + R0;
	cc =R6<=R7 (iu);
	if !cc jump .L764 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L763;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L770, .L779) LC1 = P2;
.L770:
	R0 = B [P0--] (X);
.L779:
	B [P1--] = R0;
	jump.s .L763;
.L764:
	cc =R1==0;
	if cc jump .L767;
	P5 = R3;
	P0 = P1;
	P4 = R1;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L768, .L778) LC1 = P2;
.L768:
	R1 = [P5++];
.L778:
	[P0++] = R1;
.L767:
	cc =R0<=R2 (iu);
	if cc jump .L763;
	P5 = R2;
	P1 = P1 + P5;
	R3 = R3 + R2;
	P0 = R3;
	R0 = R0 - R2;
	P2 = R0;
	LSETUP (.L769, .L777) LC1 = P2;
.L769:
	R0 = B [P0++] (X);
.L777:
	B [P1++] = R0;
.L763:
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
	LSETUP (.L788, .L790) LC1 = P2;
.L788:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L786;
.L790:
	R0 += 1;
.L786:
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
	LSETUP (.L793, .L795) LC1 = P2;
.L793:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L791;
.L795:
	R0 += 1;
.L791:
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
	if !cc jump .L802;
	R0 = R7;
	call ___fixsfsi;
.L796:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L802:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L796;
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
	LSETUP (.L804, .L806) LC1 = P2;
.L804:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L806:
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
	LSETUP (.L808, .L810) LC1 = P2;
.L808:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L810:
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
	R3 = 0 (X);
	cc =R0==0;
	if cc jump .L811;
	R7 = 1 (X);
.L813:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L813 (bp);
.L811:
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
	R3 = 0 (X);
	cc =R0==0;
	if cc jump .L816;
	cc =R1==0;
	if cc jump .L816;
	R7 = 1 (X);
.L818:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>= 1;
	cc =R1==0;
	if !cc jump .L818 (bp);
.L816:
	R0 = R3;
	( r7:7 ) = [sp++];

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
	P2 = 32 (X);
	cc =R0<R3 (iu);
	if !cc jump .L838;
	LSETUP (.L823, .L840) LC1 = P2;
.L823:
	cc =R0<0;
	if cc jump .L824;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L824;
.L840:
	nop;
.L832:
	R2 = 0 (X);
.L826:
	cc =P1==0;
	if !cc jump .L839;
.L822:
	R0 = R2;
	rts;
.L824:
	cc =R1==0;
	if cc jump .L832;
.L838:
	R2 = 0 (X);
	jump.s .L828;
.L827:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L826;
.L828:
	cc =R3<R0 (iu);
	if cc jump .L827 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L827;
.L839:
	R2 = R3;
	jump.s .L822;
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
	if cc jump .L844;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L845;
.L843:
	R0 = R5;
.L841:
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L845:
	R5 = 0 (X);
	jump.s .L843;
.L844:
	R0 = -1 (X);
	jump.s .L841;
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
	if cc jump .L849;
	R7 = 1 (X);
	[SP+12] = R5;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L850;
.L848:
	R0 = R7;
.L846:
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L850:
	R7 = 0 (X);
	jump.s .L848;
.L849:
	R0 = -1 (X);
	jump.s .L846;
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
	if cc jump .L867;
	P1 = 0 (X);
.L854:
	cc =R1==0;
	if cc jump .L859;
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
.L856:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>>= 1;
	cc =R1==0;
	if cc jump .L855;
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L856 (bp);
.L855:
	cc =P1==0;
	if cc jump .L853 (bp);
	R3 = -R3;
.L853:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L867:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L854;
.L859:
	R3 = 0 (X);
	jump.s .L855;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--sp] = ( r7:7 );

	R3 = R0;
	R0 = R1;
	cc =R3<0;
	if cc jump .L888;
	R7 = 0 (X);
.L869:
	cc =R0<0;
	if cc jump .L889;
.L870:
	R2 = R3;
	R1 = 1 (X);
	cc =R3<=R0 (iu);
	if cc jump .L887;
	P2 = 32 (X);
	LSETUP (.L872, .L892) LC1 = P2;
.L872:
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L871;
.L892:
	nop;
.L879:
	R3 = 0 (X);
.L873:
	R0 = R3;
	cc =R7==0;
	if cc jump .L868 (bp);
	R0 = -R3;
.L868:
	( r7:7 ) = [sp++];

	rts;
.L888:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L869;
.L889:
	R0 = -R0;
	BITTGL (R7, 0);
	jump.s .L870;
.L871:
	cc =R1==0;
	if cc jump .L879;
.L887:
	R3 = 0 (X);
	jump.s .L875;
.L891:
	R2 = R2 - R0;
	R3 = R3 | R1;
.L874:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L873;
.L875:
	cc =R2<R0 (iu);
	if cc jump .L874 (bp);
	jump.s .L891;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	R0 = R1;
	cc =R3<0;
	if cc jump .L913;
	P1 = 0 (X);
.L894:
	R2 = R3;
	R0 = abs R0;
	R1 = 1 (X);
	cc =R3<=R0 (iu);
	if cc jump .L907;
	P2 = 32 (X);
	LSETUP (.L896, .L916) LC1 = P2;
.L896:
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L912;
.L916:
	nop;
.L897:
	R0 = R2;
	cc =P1==0;
	if cc jump .L893 (bp);
	R0 = -R2;
.L893:
	rts;
.L913:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L894;
.L915:
	R2 = R2 - R0;
.L898:
	R1 >>= 1;
	R0 >>= 1;
.L912:
	cc =R1==0;
	if cc jump .L897;
.L907:
	cc =R2<R0 (iu);
	if cc jump .L898 (bp);
	jump.s .L915;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	[--sp] = ( r7:5 );

	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = R1.L (Z);
	R6 = R3.L (Z);
	R2 = 1 (X);
	P2 = 16 (X);
	cc =R1<R6 (iu);
	if !cc jump .L919;
	LSETUP (.L918, .L933) LC1 = P2;
.L918:
	R1 = R0.L (X);
	cc =R1<0;
	if cc jump .L919;
	R1 = R0 << 1;
	R0 = R1;
	R2 <<= 1;
	R1 = R1.L (Z);
	cc =R6<=R1 (iu);
	if cc jump .L919;
.L933:
	nop;
	R2 = 0 (X);
.L919:
	R1 = R2.L (Z);
	cc =R1==0;
	if cc jump .L927;
	R5 = 0 (X);
	jump.s .L923;
.L922:
	R1 >>= 1;
	R2 = R1;
	R0 = R7 >> 1;
	cc =R1==0;
	if cc jump .L921;
	R6 = R3.L (Z);
	R1 = R1.L (Z);
.L923:
	R7 = R0.L (Z);
	cc =R6<R7 (iu);
	if cc jump .L922 (bp);
	R3 = R3 - R0;
	R5 = R2 | R5;
	jump.s .L922;
.L927:
	R5 = R2;
.L921:
	cc =P1==0;
	if !cc jump .L932;
.L917:
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L932:
	R5 = R3;
	jump.s .L917;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	P2 = 32 (X);
	cc =R0<R3 (iu);
	if !cc jump .L950;
	LSETUP (.L935, .L952) LC1 = P2;
.L935:
	cc =R0<0;
	if cc jump .L936;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L936;
.L952:
	nop;
.L944:
	R2 = 0 (X);
.L938:
	cc =P1==0;
	if !cc jump .L951;
.L934:
	R0 = R2;
	rts;
.L936:
	cc =R1==0;
	if cc jump .L944;
.L950:
	R2 = 0 (X);
	jump.s .L940;
.L939:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L938;
.L940:
	cc =R3<R0 (iu);
	if cc jump .L939 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L939;
.L951:
	R2 = R3;
	jump.s .L934;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L954 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L955:
	R0 = R2;
.L956:
	( r7:7 ) = [sp++];

	rts;
.L954:
	cc =R2==0;
	if cc jump .L957;
	R2 = R0;
	R2 <<= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R0 >>= R7;
	R3 <<= R1;
	R1 = R0 | R3;
	jump.s .L955;
.L957:
	R1 = R3;
	jump.s .L956;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L959 (bp);
	R2 = R3 >>> 31;
	R1 += -32;
	R0 = R3;
	R0 >>>= R1;
.L960:
	R1 = R2;
.L961:
	( r7:7 ) = [sp++];

	rts;
.L959:
	cc =R2==0;
	if cc jump .L962;
	R2 = R3;
	R2 >>>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L960;
.L962:
	R1 = R3;
	jump.s .L961;
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
	if cc jump .L970;
	cc =R0<=R2;
	if !cc jump .L971;
	cc =R3<R1 (iu);
	if cc jump .L970;
	cc =R3<=R1 (iu);
	if !cc jump .L971;
	R0 = 1 (X);
	jump.s .L966;
.L970:
	R0 = 0 (X);
.L966:
	rts;
.L971:
	R0 = 2 (X);
	jump.s .L966;
	.size	___cmpdi2, .-___cmpdi2
	.align 4
.global ___aeabi_lcmp;
.type ___aeabi_lcmp, STT_FUNC;
___aeabi_lcmp:
	R3 = R0;
	R0 = R1;
	R1 = R2;
	R2 = [SP+12];
	cc =R0<R2;
	if cc jump .L976;
	cc =R0<=R2;
	if !cc jump .L977;
	cc =R3<R1 (iu);
	if cc jump .L976;
	cc =R3<=R1 (iu);
	if !cc jump .L977;
	R0 = 1 (X);
	jump.s .L973;
.L976:
	R0 = 0 (X);
.L973:
	R0 += -1;
	rts;
.L977:
	R0 = 2 (X);
	jump.s .L973;
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
	if cc jump .L980 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L981:
	R1 = R2;
.L982:
	( r7:7 ) = [sp++];

	rts;
.L980:
	cc =R2==0;
	if cc jump .L983;
	R2 = R3;
	R2 >>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L981;
.L983:
	R1 = R3;
	jump.s .L982;
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
	[--sp] = ( r7:4 );

	P1 = R1;
	R3 = R0.L * R2.L (FU);
	R7 = R3 >> 16;
	R6 = R0 >> 16;
	R1 = R2.L * R6.L (FU);
	R1 = R1 + R7;
	R4 = R1.L (Z);
	R5 = R2 >> 16;
	R7 = R0.L * R5.L (FU);
	R7 = R7 + R4;
	R3 = R3.L (Z);
	R4 = R7 << 16;
	R3 = R3 + R4;
	R1 >>= 16;
	R6 = R6.L * R5.L (FU);
	R1 = R1 + R6;
	R7 >>= 16;
	R1 = R1 + R7;
	R7 = [SP+28];
	R0 *= R7;
	R1 = R0 + R1;
	R7 = P1;
	R2 *= R7;
	R1 = R1 + R2;
	R0 = R3;
	( r7:4 ) = [sp++];

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
	jump.s .L994;
.L992:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L993;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L994:
	cc = !BITTST (R7,0);
	if cc jump .L992 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L992;
.L993:
	cc =R6<0;
	if cc jump .L999;
.L991:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L999:
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L991;
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
	jump.s .L1003;
.L1001:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L1002;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L1003:
	cc = !BITTST (R7,0);
	if cc jump .L1001 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L1001;
.L1002:
	cc =R4<0;
	if cc jump .L1008;
.L1000:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L1008:
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
	jump.s .L1000;
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
	if cc jump .L1013;
	cc =R0<=R2 (iu);
	if !cc jump .L1014;
	cc =R3<R1 (iu);
	if cc jump .L1013;
	cc =R3<=R1 (iu);
	if !cc jump .L1014;
	R0 = 1 (X);
	jump.s .L1009;
.L1013:
	R0 = 0 (X);
.L1009:
	rts;
.L1014:
	R0 = 2 (X);
	jump.s .L1009;
	.size	___ucmpdi2, .-___ucmpdi2
	.align 4
.global ___aeabi_ulcmp;
.type ___aeabi_ulcmp, STT_FUNC;
___aeabi_ulcmp:
	R3 = R0;
	R0 = R1;
	R1 = R2;
	R2 = [SP+12];
	cc =R0<R2 (iu);
	if cc jump .L1019;
	cc =R0<=R2 (iu);
	if !cc jump .L1020;
	cc =R3<R1 (iu);
	if cc jump .L1019;
	cc =R3<=R1 (iu);
	if !cc jump .L1020;
	R0 = 1 (X);
	jump.s .L1016;
.L1019:
	R0 = 0 (X);
.L1016:
	R0 += -1;
	rts;
.L1020:
	R0 = 2 (X);
	jump.s .L1016;
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
