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
	FP = R2;
	P5 = [SP+60];
	P4 = [SP+64];
	R6 = [FP];
	cc =R6==0;
	if cc jump .L250;
	R7 = R1;
	P3 = 0 (X);
.L252:
	R4 = R7;
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	if cc jump .L249;
	P3 += 1;
	R0 = P5;
	R7 = R7 + R0;
	R0 = P3;
	cc =R6==R0;
	if !cc jump .L252 (bp);
.L250:
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
	if cc jump .L261;
	R6 = 0 (X);
.L263:
	P3 = R7;
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	if cc jump .L260;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R4==R6;
	if !cc jump .L263 (bp);
.L261:
	P3 = 0 (X);
.L260:
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
.L273:
	R7 = P5;
	R6 = B [P5++] (X);
	R0 = R6;
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L273 (bp);
	R0 = 43 (X);
	cc =R6==R0;
	if cc jump .L280;
	R3 = 45 (X);
	cc =R6==R3;
	if !cc jump .L281 (bp);
	R2 = 1 (X);
.L274:
	R7 += 1;
.L275:
	P1 = R7;
	jump.s .L285;
.L280:
	R2 = 0 (X);
	jump.s .L274;
.L276:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
.L285:
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L276 (bp);
	cc =R2==0;
	if !cc jump .L272 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L272:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:6, p5:5 ) = [sp++];

	rts;
.L281:
	R2 = 0 (X);
	jump.s .L275;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
.L287:
	R7 = P5;
	R6 = B [P5++] (X);
	R0 = R6;
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L287 (bp);
	R0 = 43 (X);
	cc =R6==R0;
	if cc jump .L294;
	R3 = 45 (X);
	cc =R6==R3;
	if !cc jump .L295 (bp);
	R2 = 1 (X);
.L288:
	R7 += 1;
.L289:
	P1 = R7;
	jump.s .L299;
.L294:
	R2 = 0 (X);
	jump.s .L288;
.L290:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
.L299:
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L290 (bp);
	cc =R2==0;
	if !cc jump .L286 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L286:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:6, p5:5 ) = [sp++];

	rts;
.L295:
	R2 = 0 (X);
	jump.s .L289;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P4 = R0;
.L301:
	P5 = P4;
	R7 = B [P4++] (X);
	R0 = R7;
	call _isspace;
	R6 = R0;
	cc =R0==0;
	if !cc jump .L301 (bp);
	R0 = 43 (X);
	cc =R7==R0;
	if cc jump .L302;
	R1 = 45 (X);
	cc =R7==R1;
	if !cc jump .L303 (bp);
	R6 = 1 (X);
.L302:
	P5 += 1;
.L303:
	nop;
	R7 = B [P5] (X);
	R0 = R7.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L313;
	P5 += 1;
	R4 = 0 (X);
	R1 = 0 (X);
	R5 = 0 (X);
.L304:
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
	if cc jump .L304 (bp);
.L305:
	cc =R6==0;
	if !cc jump .L300 (bp);
	CC = R4;
	R0 = CC;
	R1 = -R1;
	R4 = -R4;
	R1 = R1 - R0;
.L300:
	R0 = R4;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L313:
	R4 = 0 (X);
	R1 = 0 (X);
	jump.s .L305;
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
	jump.s .L324;
.L319:
	R7 = P3;
.L324:
	cc =R7==0;
	if cc jump .L315;
	P2 = R7;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L319;
	cc =R0<=0;
	if cc jump .L314;
	R5 = R6 + R4;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	jump.s .L324;
.L315:
	R6 = 0 (X);
.L314:
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
	if !cc jump .L329 (bp);
.L326:
	P3 = 0 (X);
.L325:
	R0 = P3;
	SP += 12;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L328:
	R7 = FP;
	cc =R7==0;
	if cc jump .L326;
.L329:
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
	if cc jump .L325;
	cc =R0<=0;
	if cc jump .L328;
	R0 = P3;
	R6 = R0 + R5;
	R7 += -1;
	R7 >>>= 1;
	FP = R7;
	jump.s .L328;
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
	if cc jump .L341;
.L339:
	SP += 8;
	rts;
.L341:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L339;
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
	if cc jump .L348;
.L346:
	SP += 8;
	rts;
.L348:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L346;
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
	if cc jump .L356;
.L351:
	cc =R1==R0;
	if cc jump .L359;
	nop;
	nop;
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L351 (bp);
.L356:
	P2 = 0 (X);
	jump.s .L350;
.L359:
	cc =R0==0;
	if cc jump .L356;
.L350:
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
	if !cc jump .L361;
	P1 += 4;
	P2 += 4;
.L362:
	cc =R0==0;
	if cc jump .L361;
	cc =R1==0;
	if cc jump .L361;
	nop;
	nop;
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if cc jump .L362 (bp);
.L361:
	cc =R0<R1;
	if cc jump .L365 (bp);
	cc =R1<R0;
	R0 = CC;
.L360:
	rts;
.L365:
	R0 = -1 (X);
	jump.s .L360;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P2 = R1;
	P1 = R0;
.L370:
	nop;
	R0 = [P2++];
	[P1++] = R0;
	cc =R0==0;
	if !cc jump .L370 (bp);
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
	if cc jump .L375;
	R0 = P1;
	R0 += 4;
.L374:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L374 (bp);
.L373:
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L375:
	P2 = P1;
	jump.s .L373;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:5 );

	cc =R2==0;
	if cc jump .L382;
	P2 = R0;
	R0 = R1;
	P1 = R2;
	LSETUP (.L379, .L389) LC1 = P1;
.L379:
	P0 = R0;
	P5 = P2;
	R1 = [P2++];
	R0 += 4;
	R3 = [P0];
	cc =R1==R3;
	if !cc jump .L378;
	cc =R1==0;
	if cc jump .L378;
.L389:
	R2 += -1;
.L382:
	R0 = 0 (X);
.L377:
	( p5:5 ) = [sp++];

	rts;
.L378:
	cc =R2==0;
	if cc jump .L382 (bp);
	R0 = [P5];
	R1 = [P0];
	cc =R0<R1;
	if cc jump .L383 (bp);
	cc =R1<R0;
	R0 = CC;
	jump.s .L377;
.L383:
	R0 = -1 (X);
	jump.s .L377;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	R3 = R1;
	R1 = R2;
	cc =R2==0;
	if cc jump .L396;
	P2 = R2;
	LSETUP (.L392, .L400) LC1 = P2;
.L392:
	P1 = R0;
	R0 += 4;
	R2 = [P1];
	cc =R2==R3;
	if cc jump .L399;
.L400:
	R1 += -1;
.L396:
	P1 = 0 (X);
	jump.s .L390;
.L399:
	cc =R1==0;
	if cc jump .L396;
.L390:
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
	if cc jump .L406;
	R1 = R0;
	R0 = P1;
	P2 = R2;
	LSETUP (.L403, .L414) LC1 = P2;
.L403:
	P1 = R0;
	P0 = R1;
	R1 += 4;
	R0 += 4;
	R3 = [P1];
	R7 = [P0];
	cc =R7==R3;
	if !cc jump .L413;
.L414:
	R2 += -1;
.L406:
	R0 = 0 (X);
.L401:
	( r7:7 ) = [sp++];

	rts;
.L413:
	cc =R2==0;
	if cc jump .L406 (bp);
	cc =R7<R3;
	if cc jump .L407 (bp);
	cc =R3<R7;
	R0 = CC;
	jump.s .L401;
.L407:
	R0 = -1 (X);
	jump.s .L401;
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
	if cc jump .L416;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L416:
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
	if cc jump .L421;
	P0 = R0;
	P2 = R1;
	P2 += -1;
	R3 = R0 - R2;
	R2 = R1 << 2;
	cc =R3<R2 (iu);
	if cc jump .L422 (bp);
	P2 += 1;
	cc =R1==0;
	if cc jump .L421;
	nop;
	nop;
	LSETUP (.L423, .L432) LC1 = P2;
.L423:
	R1 = [P1++];
.L432:
	[P0++] = R1;
	jump.s .L421;
.L422:
	cc =R1==0;
	if cc jump .L421;
	P2 = P2 << 2;
	P1 = P1 + P2;
	P0 = P0 + P2;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L424, .L431) LC1 = P2;
.L424:
	R1 = [P1--];
.L431:
	[P0--] = R1;
.L421:
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
	if cc jump .L434;
	P1 = R3;
	P2 += 1;
	LSETUP (.L435, .L440) LC1 = P2;
.L435:
.L440:
	[P1++] = R0;
.L434:
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
	if !cc jump .L442 (bp);
	P0 = P5 + P1;
	cc =P1==0;
	if cc jump .L441;
	P1 += -1;
	P2 = P2 + P1;
	P4 = P0;
	P4 += -1;
	P0 -= P5;
	LSETUP (.L444, .L455) LC1 = P0;
.L444:
	R0 = B [P4--] (X);
.L455:
	B [P2--] = R0;
.L441:
	( p5:4 ) = [sp++];

	rts;
.L442:
	cc =P5==P2;
	if cc jump .L441;
	cc =P1==0;
	if cc jump .L441;
	nop;
	nop;
	LSETUP (.L445, .L454) LC1 = P1;
.L445:
	R0 = B [P5++] (X);
.L454:
	B [P2++] = R0;
	jump.s .L441;
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
	LSETUP (.L472, .L474) LC1 = P2;
.L472:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L469;
.L474:
	nop;
	R0 = 0 (X);
.L469:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L478;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L475;
	R1 = 1 (X);
.L477:
	R0 >>>= 1;
	R1 += 1;
	cc = !BITTST (R0,0);
	if cc jump .L477 (bp);
.L475:
	R0 = R1;
	rts;
.L478:
	R1 = 0 (X);
	jump.s .L475;
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
	if cc jump .L484 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L485;
.L483:
	R0 = R6;
.L481:
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L485:
	R6 = 0 (X);
	jump.s .L483;
.L484:
	R0 = 1 (X);
	jump.s .L481;
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
	if cc jump .L489 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L490;
.L488:
	R0 = R7;
.L486:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L490:
	R7 = 0 (X);
	jump.s .L488;
.L489:
	R0 = 1 (X);
	jump.s .L486;
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
	if cc jump .L494 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L495;
.L493:
	R0 = R7;
.L491:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L495:
	R7 = 0 (X);
	jump.s .L493;
.L494:
	R0 = 1 (X);
	jump.s .L491;
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
	if !cc jump .L498;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L498 (bp);
	cc =R7<0;
	if cc jump .L511;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L502;
.L511:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L502;
.L501:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L498;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L502:
	cc = !BITTST (R7,0);
	if cc jump .L501 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L501;
.L498:
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
	if !cc jump .L513;
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
	if cc jump .L513 (bp);
	R4 = 0 (X);
	cc =R7<0;
	if cc jump .L526;
	R5 = 1 (X);
	R5 <<= 30;
	jump.s .L517;
.L526:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L517;
.L516:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L513;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L517:
	cc = !BITTST (R7,0);
	if cc jump .L516 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L516;
.L513:
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
	if !cc jump .L528;
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
	if cc jump .L528 (bp);
	R4 = 0 (X);
	cc =R7<0;
	if cc jump .L541;
	R5 = 1 (X);
	R5 <<= 30;
	jump.s .L532;
.L541:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L532;
.L531:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L528;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L532:
	cc = !BITTST (R7,0);
	if cc jump .L531 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L531;
.L528:
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
	if cc jump .L543;
	nop;
	P1 = R0;
	LSETUP (.L544, .L549) LC1 = P2;
.L544:
	R0 = B [P1++] (X);
	R1 = B [P0++] (X);
	R0 = R0 ^ R1;
.L549:
	B [P1+-1] = R0;
.L543:
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
	if cc jump .L556;
	P0 = R6;
	P2 = P5;
	P1 = R7;
	LSETUP (.L552, .L560) LC1 = P1;
.L552:
	P5 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L559;
.L560:
	R7 += -1;
	P5 = P2;
	jump.s .L556;
.L559:
	cc =R7==0;
	if !cc jump .L554 (bp);
.L556:
	R0 = 0 (X);
	B [P5] = R0;
.L554:
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
	R1 = 0 (X);
	cc =R0==0;
	if cc jump .L561;
	nop;
	P1 = R0;
	LSETUP (.L563, .L570) LC1 = P1;
.L563:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L569;
.L561:
	R0 = R1;
	rts;
.L569:
.L570:
	R1 += 1;
	R1 = R0;
	jump.s .L561;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L576;
	nop;
	nop;
.L572:
	P2 = R2;
.L575:
	nop;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L578;
	cc =R0==R1;
	if !cc jump .L575 (bp);
.L573:
	R0 = P1;
	rts;
.L578:
	P1 += 1;
	R1 = B [P1] (X);
	cc =R1==0;
	if !cc jump .L572 (bp);
.L576:
	P1 = 0 (X);
	jump.s .L573;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R2 = R1;
	R3 = 0 (X);
	jump.s .L581;
.L580:
	cc =R0==0;
	if cc jump .L584;
	nop;
	nop;
.L581:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R0==R2;
	if !cc jump .L580 (bp);
	R3 = R1;
	jump.s .L580;
.L584:
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
	if cc jump .L585;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
.L587:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if cc jump .L585;
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L585;
	R7 += 1;
	jump.s .L587;
.L585:
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
	if cc jump .L602;
.L594:
	R7 = 0 (X);
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L597;
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L596;
.L597:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L602:
	[SP+12] = R7;
	R2 = 0 (X);
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L594 (bp);
.L596:
	R0 = [SP+32];
	R1 = [SP+36];
	BITTGL (R1, 31);
	[SP+32] = R0;
	[SP+36] = R1;
	jump.s .L597;
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
	if cc jump .L607;
	cc =R1<R5 (iu);
	if cc jump .L609;
	P2 = R5;
	P4 -= P2;
	P4 = P5 + P4;
	cc =P5<=P4 (iu);
	if !cc jump .L609;
	nop;
	nop;
	nop;
	R6 = B [P3++] (X);
	R5 += -1;
	jump.s .L606;
.L605:
	cc =P5<=P4 (iu);
	if !cc jump .L609;
	nop;
	nop;
	nop;
.L606:
	R0 = B [P5] (X);
	R7 = P5;
	P5 += 1;
	R0 = R0.B (X);
	cc =R0==R6;
	if !cc jump .L605 (bp);
	R2 = R5;
	R1 = P3;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L605 (bp);
	jump.s .L603;
.L607:
	R7 = R0;
	jump.s .L603;
.L609:
	R7 = 0 (X);
.L603:
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
	if cc jump .L642;
	R4 = 0 (X);
.L616:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L639;
	R7 = 0 (X);
	R5 = 511 (X);
	R5 <<= 21;
	R6 = 1023 (X);
	R6 <<= 20;
.L620:
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
	if !cc jump .L620 (bp);
.L621:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L625 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L625:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L642:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L616;
.L639:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L640 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	R7 = 0 (X);
	cc =R0==0;
	if cc jump .L621 (bp);
	R6 = 511 (X);
	R6 <<= 21;
.L624:
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
	if cc jump .L624 (bp);
	jump.s .L621;
.L640:
	R7 = 0 (X);
	jump.s .L621;
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
	if cc jump .L643;
	P4 = 1 (X);
.L646:
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
	if !cc jump .L646 (bp);
.L643:
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
	if !cc jump .L665;
	LSETUP (.L650, .L667) LC1 = P2;
.L650:
	cc =R0<0;
	if cc jump .L651;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L651;
.L667:
	nop;
.L659:
	R2 = 0 (X);
.L653:
	cc =P1==0;
	if !cc jump .L666;
.L649:
	R0 = R2;
	rts;
.L651:
	cc =R1==0;
	if cc jump .L659;
.L665:
	R2 = 0 (X);
	jump.s .L655;
.L654:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L653;
.L655:
	cc =R3<R0 (iu);
	if cc jump .L654 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L654;
.L666:
	R2 = R3;
	jump.s .L649;
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
	if cc jump .L670;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L668:
	SP += 12;
	RETS = [SP++];
	rts;
.L670:
	R0 = 7 (X);
	jump.s .L668;
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
	if cc jump .L677;
.L675:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	R0 += -1;
.L671:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L677:
	cc =R0==R1;
	if !cc jump .L675 (bp);
	R0 = 63 (X);
	jump.s .L671;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = 0 (X);
	cc =R0==0;
	if cc jump .L678;
	R7 = 1 (X);
.L680:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L680 (bp);
.L678:
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
	if cc jump .L684 (bp);
	R2 = R7 + R0;
	R3 = P1;
	cc =R3<=R2 (iu);
	if !cc jump .L684 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L683;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L690, .L699) LC1 = P2;
.L690:
	R0 = B [P0--] (X);
.L699:
	B [P1--] = R0;
	jump.s .L683;
.L684:
	cc =R1==0;
	if cc jump .L687;
	P5 = R7;
	P0 = P1;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P2 += 1;
	LSETUP (.L688, .L698) LC1 = P2;
.L688:
	R2 = [P5];
	R3 = [P5+4];
	[P0] = R2;
	[P0+4] = R3;
	P5 += 8;
.L698:
	P0 += 8;
.L687:
	cc =R0<=R6 (iu);
	if cc jump .L683;
	P2 = R6;
	P1 = P1 + P2;
	R7 = R7 + R6;
	P0 = R7;
	R0 = R0 - R6;
	P2 = R0;
	LSETUP (.L689, .L697) LC1 = P2;
.L689:
	R0 = B [P0++] (X);
.L697:
	B [P1++] = R0;
.L683:
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
	if cc jump .L701 (bp);
	R3 = P1;
	R2 = R3 + R2;
	R3 = P2;
	cc =R3<=R2 (iu);
	if !cc jump .L701 (bp);
	P0 = R1;
	P0 += -1;
	cc =R1==0;
	if cc jump .L700;
	P4 = P1 + P0;
	P5 = P2 + P0;
	P0 += 1;
	LSETUP (.L706, .L716) LC1 = P0;
.L706:
	R0 = B [P4--] (X);
.L716:
	B [P5--] = R0;
	jump.s .L700;
.L701:
	cc =R0==0;
	if cc jump .L704;
	P0 = P4;
	P1 = P5;
	P3 = R0;
	P2 = P3 + P3;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L705, .L715) LC1 = P2;
.L705:
	R0 = W [P0++] (X);
.L715:
	W [P1++] = R0;
.L704:
	cc = !BITTST (R1,0);
	if cc jump .L700 (bp);
	P2 = R1;
	P2 += -1;
	P4 = P4 + P2;
	R0 = B [P4] (X);
	P2 = P5 + P2;
	B [P2] = R0;
.L700:
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
	if cc jump .L718 (bp);
	R7 = R3 + R0;
	cc =R6<=R7 (iu);
	if !cc jump .L718 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L717;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L724, .L733) LC1 = P2;
.L724:
	R0 = B [P0--] (X);
.L733:
	B [P1--] = R0;
	jump.s .L717;
.L718:
	cc =R1==0;
	if cc jump .L721;
	P5 = R3;
	P0 = P1;
	P4 = R1;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L722, .L732) LC1 = P2;
.L722:
	R1 = [P5++];
.L732:
	[P0++] = R1;
.L721:
	cc =R0<=R2 (iu);
	if cc jump .L717;
	P5 = R2;
	P1 = P1 + P5;
	R3 = R3 + R2;
	P0 = R3;
	R0 = R0 - R2;
	P2 = R0;
	LSETUP (.L723, .L731) LC1 = P2;
.L723:
	R0 = B [P0++] (X);
.L731:
	B [P1++] = R0;
.L717:
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
	LSETUP (.L742, .L744) LC1 = P2;
.L742:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L740;
.L744:
	R0 += 1;
.L740:
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
	LSETUP (.L747, .L749) LC1 = P2;
.L747:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L745;
.L749:
	R0 += 1;
.L745:
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
	if !cc jump .L756;
	R0 = R7;
	call ___fixsfsi;
.L750:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L756:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L750;
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
	LSETUP (.L758, .L760) LC1 = P2;
.L758:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L760:
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
	LSETUP (.L762, .L764) LC1 = P2;
.L762:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L764:
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
	if cc jump .L765;
	R7 = 1 (X);
.L767:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L767 (bp);
.L765:
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
	if cc jump .L770;
	cc =R1==0;
	if cc jump .L770;
	R7 = 1 (X);
.L772:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>= 1;
	cc =R1==0;
	if !cc jump .L772 (bp);
.L770:
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
	if !cc jump .L792;
	LSETUP (.L777, .L794) LC1 = P2;
.L777:
	cc =R0<0;
	if cc jump .L778;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L778;
.L794:
	nop;
.L786:
	R2 = 0 (X);
.L780:
	cc =P1==0;
	if !cc jump .L793;
.L776:
	R0 = R2;
	rts;
.L778:
	cc =R1==0;
	if cc jump .L786;
.L792:
	R2 = 0 (X);
	jump.s .L782;
.L781:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L780;
.L782:
	cc =R3<R0 (iu);
	if cc jump .L781 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L781;
.L793:
	R2 = R3;
	jump.s .L776;
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
	if cc jump .L798;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L799;
.L797:
	R0 = R5;
.L795:
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L799:
	R5 = 0 (X);
	jump.s .L797;
.L798:
	R0 = -1 (X);
	jump.s .L795;
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
	if cc jump .L803;
	R7 = 1 (X);
	[SP+12] = R5;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L804;
.L802:
	R0 = R7;
.L800:
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L804:
	R7 = 0 (X);
	jump.s .L802;
.L803:
	R0 = -1 (X);
	jump.s .L800;
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
	if cc jump .L821;
	P1 = 0 (X);
.L808:
	cc =R1==0;
	if cc jump .L813;
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
.L810:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>>= 1;
	cc =R1==0;
	if cc jump .L809;
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L810 (bp);
.L809:
	cc =P1==0;
	if cc jump .L807 (bp);
	R3 = -R3;
.L807:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L821:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L808;
.L813:
	R3 = 0 (X);
	jump.s .L809;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L830;
	R7 = 0 (X);
.L823:
	cc =R1<0;
	if cc jump .L831;
.L824:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L822 (bp);
	R0 = -R0;
.L822:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L830:
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L823;
.L831:
	R1 = -R1;
	BITTGL (R7, 0);
	jump.s .L824;
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
	if cc jump .L839;
	R7 = 0 (X);
.L833:
	R0 = abs R0;
	R2 = 1 (X);
	R1 = R0;
	R0 = R3;
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L832 (bp);
	R0 = -R0;
.L832:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L839:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L833;
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
	if !cc jump .L842;
	LSETUP (.L841, .L856) LC1 = P2;
.L841:
	R1 = R0.L (X);
	cc =R1<0;
	if cc jump .L842;
	R1 = R0 << 1;
	R0 = R1;
	R2 <<= 1;
	R1 = R1.L (Z);
	cc =R6<=R1 (iu);
	if cc jump .L842;
.L856:
	nop;
	R2 = 0 (X);
.L842:
	R1 = R2.L (Z);
	cc =R1==0;
	if cc jump .L850;
	R5 = 0 (X);
	jump.s .L846;
.L845:
	R1 >>= 1;
	R2 = R1;
	R0 = R7 >> 1;
	cc =R1==0;
	if cc jump .L844;
	R6 = R3.L (Z);
	R1 = R1.L (Z);
.L846:
	R7 = R0.L (Z);
	cc =R6<R7 (iu);
	if cc jump .L845 (bp);
	R3 = R3 - R0;
	R5 = R2 | R5;
	jump.s .L845;
.L850:
	R5 = R2;
.L844:
	cc =P1==0;
	if !cc jump .L855;
.L840:
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L855:
	R5 = R3;
	jump.s .L840;
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
	if !cc jump .L873;
	LSETUP (.L858, .L875) LC1 = P2;
.L858:
	cc =R0<0;
	if cc jump .L859;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L859;
.L875:
	nop;
.L867:
	R2 = 0 (X);
.L861:
	cc =P1==0;
	if !cc jump .L874;
.L857:
	R0 = R2;
	rts;
.L859:
	cc =R1==0;
	if cc jump .L867;
.L873:
	R2 = 0 (X);
	jump.s .L863;
.L862:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L861;
.L863:
	cc =R3<R0 (iu);
	if cc jump .L862 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L862;
.L874:
	R2 = R3;
	jump.s .L857;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L877 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L878:
	R0 = R2;
.L879:
	( r7:7 ) = [sp++];

	rts;
.L877:
	cc =R2==0;
	if cc jump .L880;
	R2 = R0;
	R2 <<= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R0 >>= R7;
	R3 <<= R1;
	R1 = R0 | R3;
	jump.s .L878;
.L880:
	R1 = R3;
	jump.s .L879;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L882 (bp);
	R2 = R3 >>> 31;
	R1 += -32;
	R0 = R3;
	R0 >>>= R1;
.L883:
	R1 = R2;
.L884:
	( r7:7 ) = [sp++];

	rts;
.L882:
	cc =R2==0;
	if cc jump .L885;
	R2 = R3;
	R2 >>>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L883;
.L885:
	R1 = R3;
	jump.s .L884;
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
	if cc jump .L893;
	cc =R0<=R2;
	if !cc jump .L894;
	cc =R3<R1 (iu);
	if cc jump .L893;
	cc =R3<=R1 (iu);
	if !cc jump .L894;
	R0 = 1 (X);
	jump.s .L889;
.L893:
	R0 = 0 (X);
.L889:
	rts;
.L894:
	R0 = 2 (X);
	jump.s .L889;
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
	if cc jump .L898 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L899:
	R1 = R2;
.L900:
	( r7:7 ) = [sp++];

	rts;
.L898:
	cc =R2==0;
	if cc jump .L901;
	R2 = R3;
	R2 >>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L899;
.L901:
	R1 = R3;
	jump.s .L900;
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
	jump.s .L912;
.L910:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L911;
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L912:
	cc = !BITTST (R7,0);
	if cc jump .L910 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L910;
.L911:
	cc =R6<0;
	if cc jump .L917;
.L909:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L917:
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L909;
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
	jump.s .L921;
.L919:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L920;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L921:
	cc = !BITTST (R7,0);
	if cc jump .L919 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L919;
.L920:
	cc =R4<0;
	if cc jump .L926;
.L918:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L926:
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
	jump.s .L918;
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
	if cc jump .L931;
	cc =R0<=R2 (iu);
	if !cc jump .L932;
	cc =R3<R1 (iu);
	if cc jump .L931;
	cc =R3<=R1 (iu);
	if !cc jump .L932;
	R0 = 1 (X);
	jump.s .L927;
.L931:
	R0 = 0 (X);
.L927:
	rts;
.L932:
	R0 = 2 (X);
	jump.s .L927;
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
