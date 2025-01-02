.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	[--sp] = ( r7:7, p5:5 );

	R7 = R0;
	cc =R7<=R1 (iu);
	R3 = R1;
	R0 = R2;
	if cc jump .L2 (bp);
	cc =R2==0;
	R1 = R1 + R2;
	if cc jump .L3;
	P2 = R2;
	P1 = R7;
	P0 = R1;
	R3 = R1 - R3;
	P2 += -1;
	P2 = P1 + P2;
	P0 += -1;
	P1 = R3;
	LSETUP (.L4, .L37) LC1 = P1;
.L4:
	R0 = B [P0--] (X);
.L37:
	B [P2--] = R0;
.L3:
	R0 = R7;
	( r7:7, p5:5 ) = [sp++];

	rts;
.L2:
	cc =R7==R1;
	if cc jump .L3;
	cc =R2==0;
	if cc jump .L3;
	R1 = R2;
	R1 += -1;
	cc =R1<=6 (iu);
	if cc jump .L35;
	P1 = R3;
	R1 = R3 | R7;
	R2 = 3 (X);
	R1 = R1 & R2;
	CC = R1;
	P1 += 1;
	if cc jump .L5;
	R2 = P1;
	R1 = R7 - R2;
	cc =R1<=2 (iu);
	if cc jump .L5;
	R2 = R0 >> 2;
	R2 <<= 2;
	P2 = R2;
	R1 = R7 + R2;
	P0 = R3;
	P5 = R1;
	P1 = R7;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L6, .L36) LC1 = P2;
.L6:
	R1 = [P0++];
.L36:
	[P1++] = R1;
	R3 = R3 + R2;
	cc =R0==R2;
	P2 = R3;
	R1 = R0 - R2;
	if cc jump .L3;
	nop;
	nop;
	cc =R1==1;
	R0 = B [P2] (X);
	B [P5] = R0;
	if cc jump .L3;
	nop;
	nop;
	cc =R1==2;
	R0 = B [P2+1] (X);
	B [P5+1] = R0;
	if cc jump .L3;
	nop;
	nop;
	nop;
	R0 = B [P2+2] (X);
	B [P5+2] = R0;
	jump.s .L3;
.L35:
	P1 = R3;
	P1 += 1;
.L5:
	R0 = R3 + R0;
	P2 = R0;
	P0 = R7;
	P2 -= P1;
	P2 += 1;
.L9:
	R0 = B [P1+-1] (X);
	B [P0++] = R0;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L19;
	jump.s .L3;
.L19:
	P1 += 1;
	jump.s .L9;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	P1 = [SP+12];
	P0 = R1;
	P2 = R0;
	R1 = R2.B (Z);
	cc =P1==0;
	if cc jump .L39;
	nop;
	nop;
	LSETUP (.L40, .L51) LC1 = P1;
.L40:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (Z);
	cc =R0==R1;
	if cc jump .L50;
.L51:
	nop;
.L39:
	R2 = 0 (X);
	R0 = R2;
	rts;
.L50:
	R2 = P2;
	R0 = R2;
	rts;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	P1 = R2;
	P2 = R0;
	R2 = R1.B (Z);
	cc =P1==0;
	if cc jump .L60;
	nop;
	LSETUP (.L54, .L61) LC1 = P1;
.L54:
	R0 = P2;
	R1 = B [P2++] (Z);
	cc =R1==R2;
	if cc jump .L52;
.L61:
	nop;
.L60:
	R0 = 0 (X);
.L52:
	rts;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	P0 = R2;
	R3 = R0;
	R0 = R1;
	cc =P0==0;
	if cc jump .L72;
	R1 = R3;
	LSETUP (.L64, .L75) LC1 = P0;
.L64:
	P2 = R0;
	P1 = R1;
	R0 += 1;
	R1 += 1;
	R3 = B [P2] (Z);
	R2 = B [P1] (Z);
	cc =R2==R3;
	if !cc jump .L74;
.L75:
	nop;
.L72:
	R2 = 0 (X);
	R0 = R2;
	rts;
.L74:
	R2 = R2 - R3;
	R0 = R2;
	rts;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	[--SP] = RETS;
	cc =R2==0;
	SP += -12;
	R3 = R0;
	if cc jump .L77;
	call _memcpy;
	R3 = R0;
.L77:
	SP += 12;
	RETS = [SP++];
	R0 = R3;
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	R3 = R0;
	R0 = R2;
	R0 += -1;
	[--sp] = ( r7:7 );

	R0 = R3 + R0;
	R7 = R1.B (Z);
	R3 += -1;
	jump.s .L82;
.L84:
	P2 = R0;
	R0 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if cc jump .L81;
.L82:
	cc =R0==R3;
	if !cc jump .L84 (bp);
	P2 = 0 (X);
.L81:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	[--SP] = RETS;
	cc =R2==0;
	SP += -12;
	R3 = R0;
	if cc jump .L88;
	R0 = R1.B (Z);
	R1 = R0;
	R0 = R3;
	call _memset;
	R3 = R0;
.L88:
	SP += 12;
	RETS = [SP++];
	R0 = R3;
	rts;
	.size	_memset, .-_memset
	.align 4
.global _stpcpy;
.type _stpcpy, STT_FUNC;
_stpcpy:
	P1 = R1;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L92;
	P1 += 1;
	P2 += 1;
.L91:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L91 (bp);
	R0 = R1;
	rts;
.L92:
	R1 = P2;
	R0 = R1;
	rts;
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
	if !cc jump .L95 (bp);
	jump.s .L94;
.L97:
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L94;
.L95:
	R0 = R0.B (Z);
	cc =R0==R2;
	if !cc jump .L97 (bp);
.L94:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	R2 = R1;
	R1 = R0;
	jump.s .L104;
.L107:
	cc =R0==0;
	if cc jump .L106;
.L104:
	P2 = R1;
	R1 += 1;
	R0 = B [P2] (X);
	cc =R0==R2;
	if !cc jump .L107 (bp);
	R0 = P2;
	rts;
.L106:
	P2 = 0 (X);
	R0 = P2;
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
	if !cc jump .L114;
	P1 += 1;
	P2 += 1;
	jump.s .L111;
.L112:
	nop;
	R1 = B [P1++] (X);
	R2 = B [P2++] (X);
	R0 = R1.B (X);
	R3 = R2.B (X);
	cc =R0==R3;
	if !cc jump .L114;
.L111:
	cc =R0==0;
	if !cc jump .L112 (bp);
	R2 = R2.B (Z);
	R1 = 0 (X);
	R1 = R1 - R2;
	R0 = R1;
	rts;
.L114:
	R2 = R2.B (Z);
	R1 = R1.B (Z);
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
	if cc jump .L118;
	R0 = P1;
	R0 += 1;
.L117:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L117 (bp);
	P2 -= P1;
	R0 = P2;
	rts;
.L118:
	P2 = 0 (X);
	R0 = P2;
	rts;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	P2 = R2;
	[--sp] = ( p5:5 );

	P0 = R0;
	P1 = R1;
	cc =P2==0;
	if cc jump .L128;
	nop;
	nop;
	P0 += 1;
	R0 = B [P0+-1] (Z);
	cc =R0==0;
	if cc jump .L130;
	nop;
	nop;
.L124:
	P5 = P1;
	R1 = B [P1++] (Z);
	cc =R1==0;
	if cc jump .L123;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L126;
.L123:
	R0 = R0 - R1;
	( p5:5 ) = [sp++];

	rts;
.L126:
	cc =R1==R0;
	if !cc jump .L123;
	nop;
	nop;
	nop;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if !cc jump .L124 (bp);
	R1 = B [P5+1] (Z);
	jump.s .L123;
.L128:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L130:
	R1 = B [P1] (Z);
	jump.s .L123;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	cc =R2<=1;
	P2 = R0;
	P1 = R1;
	R0 = R2;
	if cc jump .L131;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L133, .L135) LC1 = P0;
.L133:
	P1 += 2;
	R0 = B [P2+1] (X);
	B [P1+-2] = R0;
	R0 = B [P2] (X);
	B [P1+-1] = R0;
.L135:
	P2 += 2;
.L131:
	rts;
	.size	_swab, .-_swab
	.align 4
.global _isalpha;
.type _isalpha, STT_FUNC;
_isalpha:
	R1 = -97 (X);
	BITSET (R0, 5);
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
	if cc jump .L140;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L140:
	R0 = 1 (X);
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L143 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L143:
	R0 = 1 (X);
	rts;
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
	if cc jump .L150;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
	rts;
.L150:
	R0 = 1 (X);
	rts;
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
	if cc jump .L156 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if !cc jump .L157 (bp);
.L156:
	R0 = 1 (X);
	rts;
.L157:
	P1 = -8232 (X);
	P1 = P2 + P1;
	cc =P1<=1 (iu);
	if cc jump .L156;
	R0 = 7 (X);
	R0.H = 65535;
	P1 = R0;
	P2 = P2 + P1;
	cc =P2<=2 (iu);
	R0 = CC;
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
	if cc jump .L166;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L164;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L164;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L164;
	R1 = -16383 (X);
	R1 <<= 2;
	R2 = 3 (X);
	R1 = R0 + R1;
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L165;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L164:
	R0 = 1 (X);
	rts;
.L166:
	R1 = 127 (X);
	R0 += 1;
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L165:
	R0 = 0 (X);
	rts;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L169 (bp);
	R1 = -97 (X);
	BITSET (R0, 5);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
	rts;
.L169:
	R0 = 1 (X);
	rts;
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
	if !cc jump .L174;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L175;
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L179 (bp);
	R0 = 0 (X);
	R1 = R1 -|- R1 ||
	[SP+16] = R0 ||
	nop;
	[SP+20] = R1;
.L171:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L179:
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L174:
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L171;
.L175:
	R1 = [SP+40];
	R2 = [SP+44];
	[SP+16] = R1;
	R0 = ROT R1 BY 0 ||
	[SP+20] = R2 ||
	nop;
	R1 = R2;
	jump.s .L171;
	.size	_fdim, .-_fdim
	.align 4
.global _fdimf;
.type _fdimf, STT_FUNC;
_fdimf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R6 = R1;
	R1 = R0;
	R7 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L180;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L184;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L187 (bp);
	R0 = R7;
	R1 = R6;
	call ___subsf3;
	R7 = R0;
.L180:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L187:
	SP += 12;
	R7 = 0 (X);
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L184:
	R7 = R6;
	jump.s .L180;
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
	if !cc jump .L196;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L195;
	R0 = [SP+44];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L190 (bp);
	cc =R0==0;
	if !cc jump .L196 (bp);
.L195:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L196:
	R0 = [SP+48];
	R1 = [SP+52];
.L197:
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L190:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L196 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L197;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R7 = R1;
	R1 = R0;
	R6 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L198;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L205;
	R0 = R6 >>> 31;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L200 (bp);
	cc =R0==0;
	if !cc jump .L198 (bp);
.L205:
	R7 = R6;
.L198:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L200:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L198 (bp);
	jump.s .L205;
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
	if !cc jump .L216;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L215;
	R0 = [SP+44];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L210 (bp);
	cc =R0==0;
	if !cc jump .L216 (bp);
.L215:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L216:
	R0 = [SP+48];
	R1 = [SP+52];
.L217:
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L210:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L216 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L217;
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
	if !cc jump .L224;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L226;
	R0 = [SP+36];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L228 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L226 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L227:
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L228:
	cc =R0==0;
	if !cc jump .L226 (bp);
.L224:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L226:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L227;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R6 = R1;
	R1 = R0;
	R7 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L235;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L229;
	R0 = R7 >>> 31;
	R1 = R6 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L231 (bp);
	cc =R0==0;
	if !cc jump .L229 (bp);
.L235:
	R7 = R6;
.L229:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L231:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L229 (bp);
	jump.s .L235;
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
	if !cc jump .L245;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L247;
	R0 = [SP+36];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L249 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L247 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L248:
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L249:
	cc =R0==0;
	if !cc jump .L247 (bp);
.L245:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L247:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L248;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	cc =R0==0;
	P1.L = _s.0;
	if cc jump .L251;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L252:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R0 >>= 6;
	cc =R0==0;
	R1 = B [P2] (X);
	B [P1++] = R1;
	if !cc jump .L252 (bp);
.L251:
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
	R0.H = 22609;
	SP += -16;
	R0.L = 62509;
	P5.H = _seed;
	P5.L = _seed;
	[SP+12] = R0;
	R2.H = 19605;
	R0 = [P5];
	R1 = [P5+4];
	R2.L = 32557;
	call ___muldi3;
	R2 = R0;
	R2 += 1; cc = ac0;
	R0 = ROT R1 BY 0 ||
	[P5] = R2 ||
	nop;
	R1 = CC;
	R0 = R0 + R1;
	[P5+4] = R0;
	SP += 16;
	RETS = [SP++];
	R0 >>= 1;
	( p5:5 ) = [sp++];

	rts;
	.size	_rand, .-_rand
	.align 4
.global _insque;
.type _insque, STT_FUNC;
_insque:
	P1 = R1;
	P2 = R0;
	cc =P1==0;
	if cc jump .L263;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L257;
	[P1+4] = P2;
.L257:
	rts;
.L263:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	rts;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L265;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L265:
	P2 = [P2+4];
	cc =P2==0;
	if cc jump .L264;
	[P2] = P1;
.L264:
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4, p5:3 );

	P3 = R2;
	LINK 12;
	R5 = ROT R0 BY 0 ||
	[SP+52] = R1 ||
	nop;
	P5 = [SP+60];
	P4 = [SP+64];
	R6 = [P3];
	cc =R6==0;
	if cc jump .L274;
	R7 = R1;
	FP = 0 (X);
	jump.s .L276;
.L288:
	R0 = P5;
	FP += 1;
	R7 = R7 + R0;
	R0 = FP;
	cc =R6==R0;
	if cc jump .L274;
.L276:
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	R4 = R7;
	if !cc jump .L288 (bp);
.L273:
	SP += 12;
	FP = [SP++];
	R0 = R4;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L274:
	R0 = R6;
	R0 += 1;
	[P3] = R0;
	R0 = P5;
	R6 *= R0;
	cc =P5==0;
	R0 = [SP+52];
	R4 = R0 + R6;
	if cc jump .L273;
	R2 = P5;
	R1 = R5;
	R0 = R4;
	call _memmove;
	SP += 12;
	FP = [SP++];
	R0 = R4;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	_lsearch, .-_lsearch
	.align 4
.global _lfind;
.type _lfind, STT_FUNC;
_lfind:
	P2 = R2;
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -12;
	R5 = ROT R0 BY 0 ||
	P4 = [SP+56] ||
	nop;
	R4 = [P2];
	cc =R4==0;
	R7 = ROT R1 BY 0 ||
	P5 = [SP+60] ||
	nop;
	if cc jump .L290;
	R6 = 0 (X);
	jump.s .L292;
.L300:
	R6 += 1;
	R0 = P4;
	cc =R4==R6;
	R7 = R7 + R0;
	if cc jump .L290;
.L292:
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	P3 = R7;
	if !cc jump .L300 (bp);
	SP += 12;
	RETS = [SP++];
	R0 = P3;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L290:
	SP += 12;
	P3 = 0 (X);
	RETS = [SP++];
	R0 = P3;
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
	[--sp] = ( r7:7 );

	P2 = R0;
.L322:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L322;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L322 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L305;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L325 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if !cc jump .L314;
	P0 = 1 (X);
.L308:
	P1 += 1;
	P2 = 0 (X);
.L311:
	P2 = P2 + (P2 << 2);
	R1 = P2;
	R2 = R0;
	R1 <<= 1;
	R2 += -48;
	R0 = R1 - R2;
	P2 = R0;
	R0 = B [P1++] (X);
	R3 = R0;
	R3 += -48;
	R7 = 9 (X);
	cc =R3<=R7 (iu);
	if cc jump .L311 (bp);
	cc =P0==0;
	if !cc jump .L302 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L302:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L325:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L314;
	P1 = P0;
	P0 = 0 (X);
	jump.s .L308;
.L305:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	P1 = P0;
	cc =R1<=R2 (iu);
	P1 += 1;
	P0 = 0 (X);
	if cc jump .L308 (bp);
.L314:
	P2 = 0 (X);
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( r7:7 );

	P2 = R0;
.L344:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L344;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L344 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L329;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L330 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P2;
	P0 = 1 (X);
	if !cc jump .L337;
.L331:
	P1 += 1;
	P2 = 0 (X);
.L334:
	P2 = P2 + (P2 << 2);
	R1 = P2;
	R2 = R0;
	R1 <<= 1;
	R2 += -48;
	R0 = R1 - R2;
	P2 = R0;
	R0 = B [P1++] (X);
	R3 = R0;
	R3 += -48;
	R7 = 9 (X);
	cc =R3<=R7 (iu);
	if cc jump .L334 (bp);
	cc =P0==0;
	if !cc jump .L326 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L326:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L330:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P0;
	if !cc jump .L337;
.L346:
	P0 = 0 (X);
	jump.s .L331;
.L329:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if cc jump .L346 (bp);
.L337:
	P2 = 0 (X);
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P2 = R0;
.L367:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L367;
	R0 = R7;
	R0 += -9;
	cc =R0<=4 (iu);
	if cc jump .L367 (bp);
	R1 = 43 (X);
	cc =R7==R1;
	if cc jump .L350;
	R0 = 45 (X);
	cc =R7==R0;
	if !cc jump .L370 (bp);
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	if !cc jump .L359;
	P4 = 1 (X);
.L353:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L356:
	R0 = ROT R3 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R2 = 10 (X);
	call ___muldi3;
	R7 += -48;
	[SP+16] = R0;
	R0 = [SP+16];
	R5 = ROT R7 BY 0 ||
	[SP+20] = R1 ||
	nop;
	cc =R0<R7 (iu);
	R5 >>>= 31;
	R2 = R1;
	R4 = R7;
	R3 = R0 - R7;
	R1 = R1 - R5;
	R7 = CC;
	R1 = R1 - R7;
	R7 = B [P5++] (X);
	P2 = R7;
	P1 = 9 (X);
	P2 += -48;
	cc =P2<=P1 (iu);
	if cc jump .L356 (bp);
	cc =P4==0;
	if !cc jump .L347 (bp);
	R3 = R4 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R1 = R5 - R2;
	R1 = R1 - R0;
.L347:
	SP += 24;
	RETS = [SP++];
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L370:
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L359;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L353;
.L350:
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L353 (bp);
.L359:
	SP += 24;
	RETS = [SP++];
	R3 = 0 (X);
	R1 = 0 (X);
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	R5 = ROT R1 BY 0 ||
	R4 = [SP+56] ||
	nop;
	R7 = ROT R2 BY 0 ||
	P4 = [SP+60] ||
	nop;
.L384:
	cc =R7==0;
	if cc jump .L372;
.L385:
	P2 = R7;
	R0 = P5;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	call (P4);
	cc =R0<0;
	if cc jump .L376;
	cc =R0==0;
	if cc jump .L371;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L385 (bp);
.L372:
	R6 = 0 (X);
.L371:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L376:
	R7 = P3;
	jump.s .L384;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	FP = R2;
	R4 = ROT R0 BY 0 ||
	R5 = [SP+60] ||
	nop;
	R6 = R1;
	P5 = [SP+64];
	P4 = [SP+68];
	cc =FP==0;
	if cc jump .L391;
.L399:
	R0 = FP;
	R0 >>>= 1;
	R7 = R0;
	R7 *= R5;
	R7 = R6 + R7;
	P3 = R0;
	R2 = P4;
	R1 = R7;
	R0 = R4;
	call (P5);
	cc =R0==0;
	if cc jump .L386;
	cc =R0<=0;
	if cc jump .L389;
	R0 = FP;
	R0 += -1;
	R0 >>>= 1;
	FP = R0;
	R6 = R7 + R5;
	cc =FP==0;
	if !cc jump .L399 (bp);
.L391:
	R7 = 0 (X);
.L386:
	SP += 12;
	FP = [SP++];
	R0 = R7;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L389:
	cc =P3==0;
	if cc jump .L391;
	FP = P3;
	jump.s .L399;
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
	SP += 12;
	RETS = [SP++];
	R1 = R0;
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
	.size	_div, .-_div
	.align 4
.global _imaxabs;
.type _imaxabs, STT_FUNC;
_imaxabs:
	SP += -8;
	[SP+4] = R1;
	R1 = [SP+4];
	[SP] = R0;
	cc =R1<0;
	R0 = [SP];
	if !cc jump .L403 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L403:
	SP += 8;
	rts;
	.size	_imaxabs, .-_imaxabs
	.align 4
.global _imaxdiv;
.type _imaxdiv, STT_FUNC;
_imaxdiv:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -24;
	R6 = [SP+52];
	[SP+12] = R6;
	P5 = P0;
	R7 = ROT R2 BY 0 ||
	[SP+40] = R0 ||
	nop;
	[SP+44] = R1;
	call ___divdi3;
	[P5] = R0;
	[P5+4] = R1;
	R2 = ROT R7 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	SP += 24;
	RETS = [SP++];
	R0 = P5;
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
	SP += 12;
	RETS = [SP++];
	R1 = R0;
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
	.size	_ldiv, .-_ldiv
	.align 4
.global _llabs;
.type _llabs, STT_FUNC;
_llabs:
	SP += -8;
	[SP+4] = R1;
	R1 = [SP+4];
	[SP] = R0;
	cc =R1<0;
	R0 = [SP];
	if !cc jump .L409 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L409:
	SP += 8;
	rts;
	.size	_llabs, .-_llabs
	.align 4
.global _lldiv;
.type _lldiv, STT_FUNC;
_lldiv:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -24;
	R6 = [SP+52];
	[SP+12] = R6;
	P5 = P0;
	R7 = ROT R2 BY 0 ||
	[SP+40] = R0 ||
	nop;
	[SP+44] = R1;
	call ___divdi3;
	[P5] = R0;
	[P5+4] = R1;
	R2 = ROT R7 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	SP += 24;
	RETS = [SP++];
	R0 = P5;
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
	if !cc jump .L413 (bp);
	jump.s .L416;
.L415:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L416;
.L413:
	cc =R1==R0;
	if !cc jump .L415 (bp);
	R0 = P2;
	rts;
.L416:
	P2 = 0 (X);
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
	if !cc jump .L421;
	P1 += 4;
	P2 += 4;
	jump.s .L422;
.L423:
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L421;
.L422:
	cc =R0==0;
	if !cc jump .L423 (bp);
.L421:
	cc =R0<R1;
	if cc jump .L425 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L425:
	R0 = -1 (X);
	rts;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P2 = R1;
	P1 = R0;
.L427:
	nop;
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L427 (bp);
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
	if cc jump .L432;
	R0 = P1;
	R0 += 4;
.L431:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L431 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L432:
	R0 = 0 (X);
	rts;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	P1 = R2;
	P2 = R0;
	[--sp] = ( p5:5 );

	R0 = R1;
	cc =P1==0;
	if cc jump .L444;
	LSETUP (.L436, .L446) LC1 = P1;
.L436:
	P0 = R0;
	P5 = P2;
	R0 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L437;
	cc =R1==0;
	if cc jump .L437;
.L446:
	nop;
.L444:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L437:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L445 (bp);
	cc =R0<R1;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L445:
	( p5:5 ) = [sp++];

	R0 = -1 (X);
	rts;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	P1 = R2;
	P2 = R0;
	R3 = R1;
	cc =P1==0;
	if cc jump .L455;
	nop;
	LSETUP (.L449, .L456) LC1 = P1;
.L449:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L447;
.L456:
	nop;
.L455:
	R0 = 0 (X);
.L447:
	rts;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	P0 = R2;
	R3 = R0;
	R0 = R1;
	cc =P0==0;
	if cc jump .L468;
	R1 = R3;
	LSETUP (.L459, .L472) LC1 = P0;
.L459:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L470;
.L472:
	nop;
.L468:
	R0 = 0 (X);
	rts;
.L470:
	cc =R3<R2;
	if cc jump .L471 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L471:
	R0 = -1 (X);
	rts;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	[--SP] = RETS;
	cc =R2==0;
	R3 = R0;
	SP += -12;
	R0 = R2;
	if cc jump .L474;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L474:
	SP += 12;
	RETS = [SP++];
	R0 = R3;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	cc =R0==R1;
	[--sp] = ( p5:5 );

	R3 = R0;
	P2 = R1;
	P1 = R2;
	if cc jump .L485;
	P0 = R0;
	R0 = R2;
	R2 = R3 - R1;
	R1 = P1;
	R1 <<= 2;
	cc =R2<R1 (iu);
	R0 += -1;
	if !cc jump .L492 (bp);
	cc =P1==0;
	if cc jump .L485;
	P0 = R0;
	P5 = R3;
	P1 = P0 << 2;
	P2 = P2 + P1;
	P0 = P5 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L483, .L494) LC1 = P1;
.L483:
	R0 = [P2--];
.L494:
	[P0--] = R0;
.L485:
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
.L492:
	cc =P1==0;
	if cc jump .L485;
	nop;
	nop;
	LSETUP (.L481, .L493) LC1 = P1;
.L481:
	R0 = [P2++];
.L493:
	[P0++] = R0;
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	P2 = R2;
	R3 = R0;
	R0 = R1;
	cc =P2==0;
	if cc jump .L496;
	P1 = R3;
	LSETUP (.L497, .L502) LC1 = P2;
.L497:
.L502:
	[P1++] = R0;
.L496:
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	P2 = R1;
	R3 = R0;
	[--sp] = ( r7:7, p5:5 );

	R1 = R2;
	R0 = P2;
	cc =R3<R0 (iu);
	if !cc jump .L504 (bp);
	cc =R2==0;
	R0 = R3 + R2;
	if cc jump .L503;
	P1 = R2;
	P0 = R0;
	R3 = R0 - R3;
	P1 += -1;
	P2 = P2 + P1;
	P0 += -1;
	P1 = R3;
	LSETUP (.L506, .L538) LC1 = P1;
.L506:
	R0 = B [P0--] (X);
.L538:
	B [P2--] = R0;
.L503:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L504:
	cc =R3==R0;
	R2 = P2;
	if cc jump .L503;
	cc =R1==0;
	if cc jump .L503;
	R0 = R1;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L536;
	P0 = R3;
	R0 = R2 | R3;
	R2 = 3 (X);
	R0 = R0 & R2;
	CC = R0;
	P0 += 1;
	if cc jump .L507;
	R2 = P2;
	R7 = P0;
	R0 = R2 - R7;
	cc =R0<=2 (iu);
	if cc jump .L507;
	R2 = R1 >> 2;
	R2 <<= 2;
	P1 = R2;
	P0 = R3;
	P5 = P2 + P1;
	P1 += -4;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L508, .L537) LC1 = P1;
.L508:
	R0 = [P0++];
.L537:
	[P2++] = R0;
	R3 = R3 + R2;
	cc =R1==R2;
	P2 = R3;
	R0 = R1 - R2;
	if cc jump .L503;
	nop;
	nop;
	cc =R0==1;
	R1 = B [P2] (X);
	B [P5] = R1;
	if cc jump .L503;
	nop;
	nop;
	cc =R0==2;
	R1 = B [P2+1] (X);
	B [P5+1] = R1;
	if cc jump .L503;
	nop;
	nop;
	nop;
	R0 = B [P2+2] (X);
	B [P5+2] = R0;
	jump.s .L503;
.L536:
	P0 = R3;
	P0 += 1;
.L507:
	R1 = R3 + R1;
	P1 = R1;
	P1 -= P0;
	P1 += 1;
.L511:
	R0 = B [P0+-1] (X);
	B [P2++] = R0;
	P1 += -1;
	cc =P1==0;
	if !cc jump .L521;
	jump.s .L503;
.L521:
	P0 += 1;
	jump.s .L511;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4 );

	R3 = R0;
	R7 = R1;
	R1 = 31 (X);
	R0 = R2;
	R5 = R2;
	R6 = R3 >> 1;
	R2 = R1 - R2;
	R6 >>= R2;
	R2 = R7;
	R5 += -32;
	R4 = R3;
	R2 <<= R0;
	R4 <<= R5;
	cc =R5<0;
	R2 = R6 | R2;
	R6 = R3;
	if !cc R2 = R4;
	R6 <<= R0;
	cc =R5<0;
	R0 = -R0;
	R5 = 63 (X);
	R0 = R0 & R5;
	R5 = R0;
	R5 += -32;
	R4 = R7;
	R4 >>= R5;
	P1 = R4;
	R1 = R1 - R0;
	R4 = R7 << 1;
	R4 <<= R1;
	P2 = 0 (X);
	R3 >>= R0;
	if !cc R6 = P2;
	R3 = R4 | R3;
	cc =R5<0;
	R7 >>= R0;
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

	R6 = 31 (X);
	R3 = R0;
	R5 = R2;
	R0 = R2;
	R7 = R1 << 1;
	R2 = R6 - R2;
	R7 <<= R2;
	R2 = R3;
	R5 += -32;
	R4 = R1;
	R2 >>= R0;
	R4 >>= R5;
	cc =R5<0;
	R2 = R7 | R2;
	R7 = R1;
	if !cc R2 = R4;
	R7 >>= R0;
	cc =R5<0;
	R0 = -R0;
	R5 = 63 (X);
	R0 = R0 & R5;
	R5 = R0;
	R5 += -32;
	R4 = R3;
	R4 <<= R5;
	P1 = R4;
	R6 = R6 - R0;
	R4 = R3 >> 1;
	P2 = 0 (X);
	R4 >>= R6;
	R1 <<= R0;
	if !cc R7 = P2;
	R1 = R4 | R1;
	cc =R5<0;
	if !cc R1 = P1;
	R3 <<= R0;
	cc =R5<0;
	if !cc R3 = P2;
	R7 = R7 | R1;
	R2 = R2 | R3;
	R1 = R7;
	R0 = R2;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotr64, .-_rotr64
	.align 4
.global _rotl32;
.type _rotl32, STT_FUNC;
_rotl32:
	R2 = R0;
	R2 <<= R1;
	R3 = 31 (X);
	R1 = -R1;
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
	R3 = 31 (X);
	R1 = -R1;
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
	R3 = 31 (X);
	R1 = -R1;
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
	R3 = 31 (X);
	R1 = -R1;
	R1 = R1 & R3;
	R0 <<= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotr_sz, .-_rotr_sz
	.align 4
.global _rotl16;
.type _rotl16, STT_FUNC;
_rotl16:
	R3 = 15 (X);
	R2 = R0;
	R1 = R1 & R3;
	R0 = R2;
	R0 <<= R1;
	R1 = -R1;
	R1 = R1 & R3;
	R2 = R2.L (Z);
	R2 >>= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	R3 = 15 (X);
	R1 = R1 & R3;
	R2 = R0;
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
	R3 = 7 (X);
	R2 = R0;
	R1 = R1 & R3;
	R0 = R2;
	R0 <<= R1;
	R1 = -R1;
	R1 = R1 & R3;
	R2 = R2.B (Z);
	R2 >>= R1;
	R0 = R0 | R2;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	R3 = 7 (X);
	R1 = R1 & R3;
	R2 = R0;
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
	R1 <<= 8;
	R0 >>= 8;
	R0 = R0 | R1;
	rts;
	.size	_bswap_16, .-_bswap_16
	.align 4
.global _bswap_32;
.type _bswap_32, STT_FUNC;
_bswap_32:
	R2 = R0 >> 24;
	R1 = R0 << 24;
	R1 = R1 | R2;
	R3 = 65280 (Z);
	R2 = R0 >> 8;
	R2 = R2 & R3;
	R1 = R1 | R2;
	R2 = 255 (X);
	R2 <<= 16;
	R0 <<= 8;
	R0 = R0 & R2;
	R0 = R1 | R0;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:4 );

	R5 = 65280 (Z);
	R7 = R1 >> 8;
	R7 = R7 & R5;
	R3 = R1 >> 24;
	R6 = R1 << 8;
	R3 = R3 | R7;
	R7 = R0 >> 24;
	R7 = R6 | R7;
	R6 = 255 (X);
	R6 <<= 16;
	R7 = R7 & R6;
	R1 <<= 24;
	R4 = R0 >> 24;
	R2 = R0 << 24;
	R3 = R3 | R7;
	R7 = R0 << 8;
	R0 >>= 8;
	R0 = R0 | R1;
	R0 = R0 & R5;
	R2 = R2 | R4;
	R3 = R3 | R1;
	R7 = R7 & R6;
	R1 = R2 | R0;
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
	P2 = 32 (X);
	R0 = 0 (X);
	LSETUP (.L555, .L557) LC1 = P2;
.L555:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L552;
.L557:
	nop;
	R0 = 0 (X);
.L552:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L561;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L558;
	R1 = 1 (X);
.L560:
	R0 >>>= 1;
	cc = !BITTST (R0,0);
	R1 += 1;
	if cc jump .L560 (bp);
.L558:
	R0 = R1;
	rts;
.L561:
	R1 = 0 (X);
	R0 = R1;
	rts;
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 4
.global _gl_isinff;
.type _gl_isinff, STT_FUNC;
_gl_isinff:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	R1 = -1 (X);
	SP += -12;
	R1.H = 65407;
	R7 = R0;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L567 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R6 = 1 (X);
	if cc jump .L568;
.L566:
	SP += 12;
	R0 = R6;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L567:
	SP += 12;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:6 ) = [sp++];

	rts;
.L568:
	R6 = 0 (X);
	jump.s .L566;
	.size	_gl_isinff, .-_gl_isinff
	.align 4
.global _gl_isinfd;
.type _gl_isinfd, STT_FUNC;
_gl_isinfd:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	R0 = -1 (X);
	[SP+36] = R1;
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L572 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L573;
.L571:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L572:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L573:
	R7 = 0 (X);
	jump.s .L571;
	.size	_gl_isinfd, .-_gl_isinfd
	.align 4
.global _gl_isinfl;
.type _gl_isinfl, STT_FUNC;
_gl_isinfl:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	R0 = -1 (X);
	[SP+36] = R1;
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L577 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L578;
.L576:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L577:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L578:
	R7 = 0 (X);
	jump.s .L576;
	.size	_gl_isinfl, .-_gl_isinfl
	.align 4
.global __Qp_itoq;
.type __Qp_itoq, STT_FUNC;
__Qp_itoq:
	[--sp] = ( p5:5 );

	P5 = R0;
	[--SP] = RETS;
	SP += -20;
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
	R7 = R1;
	R1 = R0;
	R5 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L581;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L581 (bp);
	cc =R7<0;
	if cc jump .L595;
	R6 = 1 (X);
	R6 <<= 30;
.L583:
	cc = !BITTST (R7,0);
	if cc jump .L584 (bp);
.L585:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L584:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L581;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L585 (bp);
.L596:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L585 (bp);
	jump.s .L596;
.L581:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L595:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L583;
	.size	_ldexpf, .-_ldexpf
	.align 4
.global _ldexp;
.type _ldexp, STT_FUNC;
_ldexp:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -32;
	R5 = ROT R2 BY 0 ||
	[SP+12] = R1 ||
	nop;
	R2 = ROT R0 BY 0 ||
	[SP+48] = R0 ||
	nop;
	[SP+52] = R1;
	R7 = R1;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L598;
	R2 = [SP+48];
	[SP+12] = R7;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	[SP+12] = R7;
	R2 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	call ___nedf2;
	cc =R0==0;
	if cc jump .L598 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L612;
	R7 = 1 (X);
	R7 <<= 30;
.L600:
	cc = !BITTST (R5,0);
	if cc jump .L601 (bp);
.L602:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L601:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L598;
.L603:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L602 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L603;
.L598:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L612:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L600;
	.size	_ldexp, .-_ldexp
	.align 4
.global _ldexpl;
.type _ldexpl, STT_FUNC;
_ldexpl:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -32;
	R5 = ROT R2 BY 0 ||
	[SP+12] = R1 ||
	nop;
	R2 = ROT R0 BY 0 ||
	[SP+48] = R0 ||
	nop;
	[SP+52] = R1;
	R7 = R1;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L614;
	R2 = [SP+48];
	[SP+12] = R7;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	R2 = ROT R0 BY 0 ||
	[SP+12] = R1 ||
	nop;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L614 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L628;
	R7 = 1 (X);
	R7 <<= 30;
.L616:
	cc = !BITTST (R5,0);
	if cc jump .L617 (bp);
.L618:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L617:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L614;
.L619:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L618 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L619;
.L614:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L628:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L616;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	cc =R2==0;
	[--sp] = ( r7:7, p5:4 );

	R3 = R0;
	P5 = R1;
	if cc jump .L630;
	R0 = R2;
	R0 += -1;
	cc =R0<=3 (iu);
	if cc jump .L631;
	R0 = R3 | R1;
	R1 = 3 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if !cc jump .L631;
	R7 = R2 >> 2;
	R7 <<= 2;
	P2 = R7;
	R0 = R3 + R7;
	P0 = P5;
	P4 = R0;
	P1 = R3;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L632, .L648) LC1 = P2;
.L632:
	R1 = [P1];
	R0 = [P0++];
	R0 = R0 ^ R1;
.L648:
	[P1++] = R0;
	P2 = R7;
	cc =R7==R2;
	R1 = R2 - R7;
	P5 = P5 + P2;
	if cc jump .L630;
	nop;
	nop;
	cc =R1==1;
	R0 = B [P4] (X);
	R2 = B [P5] (X);
	R0 = R0 ^ R2;
	B [P4] = R0;
	if cc jump .L630;
	nop;
	nop;
	cc =R1==2;
	R2 = B [P4+1] (X);
	R0 = B [P5+1] (X);
	R0 = R0 ^ R2;
	B [P4+1] = R0;
	if cc jump .L630;
	nop;
	nop;
	nop;
	R1 = B [P4+2] (X);
	R0 = B [P5+2] (X);
	R0 = R0 ^ R1;
	B [P4+2] = R0;
.L630:
	R0 = R3;
	( r7:7, p5:4 ) = [sp++];

	rts;
.L631:
	P1 = R3;
	P2 = R2;
	LSETUP (.L634, .L647) LC1 = P2;
.L634:
	R1 = B [P1++] (X);
	R0 = B [P5++] (X);
	R0 = R0 ^ R1;
.L647:
	B [P1+-1] = R0;
	R0 = R3;
	( r7:7, p5:4 ) = [sp++];

	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	[--sp] = ( p5:5 );

	P5 = R0;
	P0 = R1;
	P1 = R2;
	R0 = B [P5] (X);
	cc =R0==0;
	if cc jump .L656;
	R0 = P5;
	R0 += 1;
.L651:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L651 (bp);
.L650:
	cc =P1==0;
	if cc jump .L652;
	nop;
	nop;
	LSETUP (.L653, .L662) LC1 = P1;
.L653:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L655;
.L662:
	nop;
.L652:
	R0 = 0 (X);
	B [P2] = R0;
.L655:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L656:
	P2 = P5;
	jump.s .L650;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
	if cc jump .L663;
	nop;
	P1 = R0;
	LSETUP (.L665, .L674) LC1 = P1;
.L665:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L673;
.L663:
	R0 = R1;
	rts;
.L673:
.L674:
	R1 += 1;
	R1 = R0;
	jump.s .L663;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L680;
.L676:
	P2 = R2;
	jump.s .L679;
.L678:
	cc =R0==R1;
	if cc jump .L677;
	nop;
	nop;
	nop;
.L679:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L678 (bp);
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
	if !cc jump .L676 (bp);
.L680:
	P1 = 0 (X);
.L677:
	R0 = P1;
	rts;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R2 = R1;
	R3 = 0 (X);
.L686:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L685 (bp);
	R3 = R1;
.L685:
	cc =R0==0;
	if !cc jump .L686 (bp);
	R0 = R3;
	rts;
	.size	_strrchr, .-_strrchr
	.align 4
.global _strstr;
.type _strstr, STT_FUNC;
_strstr:
	P2 = R1;
	[--sp] = ( r7:6, p5:5 );

	R7 = R1;
	R3 = B [P2] (X);
	cc =R3==0;
	if cc jump .L698;
	R1 += 1;
.L690:
	P2 = R1;
	R1 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	if !cc jump .L690 (bp);
	R2 = P2;
	cc =R2==R7;
	R1 = R2 - R7;
	if cc jump .L698;
	R1 += -1;
	R6 = R7 + R1;
.L691:
	P2 = R0;
	jump.s .L696;
.L712:
	cc =R2==0;
	if cc jump .L711;
	nop;
.L696:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (X);
	R2 = R0.B (X);
	cc =R2==R3;
	if !cc jump .L712 (bp);
	R1 = R6 - R7;
	P0 = R1;
	P5 = R7;
	R0 = R0.B (Z);
	P0 += 1;
.L692:
	nop;
	R1 = B [P5] (Z);
	cc =R1==0;
	if cc jump .L693;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L706;
	nop;
	nop;
	P5 = R6;
.L693:
	R1 = B [P5] (Z);
	cc =R0==R1;
	if cc jump .L688;
	R0 = P1;
	R0 += 1;
	jump.s .L691;
.L706:
	cc =R1==R0;
	if !cc jump .L693;
	nop;
	nop;
	P5 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if !cc jump .L692 (bp);
	jump.s .L693;
.L711:
	P1 = 0 (X);
.L688:
	R0 = P1;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L698:
	P1 = R0;
	( r7:6, p5:5 ) = [sp++];

	R0 = P1;
	rts;
	.size	_strstr, .-_strstr
	.align 4
.global _copysign;
.type _copysign, STT_FUNC;
_copysign:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	R7 = R7 -|- R7 ||
	[SP+40] = R2 ||
	nop;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	[SP+32] = R0 ||
	nop;
	[SP+36] = R1;
	call ___ltdf2;
	cc =R0<0;
	[SP+12] = R7;
	R2 = 0 (X);
	if cc jump .L723;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L717;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L716;
.L717:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L723:
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L717 (bp);
.L716:
	R1 = [SP+36];
	R0 = [SP+32];
	BITTGL (R1, 31);
	[SP+32] = R0;
	[SP+36] = R1;
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:7, p5:3 );

	[--SP] = FP;
	P2 = R0;
	R0 = [SP+32];
	cc =R0==0;
	P3 = R1;
	FP = R2;
	if cc jump .L724;
	cc =R1<R0 (iu);
	if cc jump .L735;
	P1 = R0;
	P3 -= P1;
	P3 = P2 + P3;
	cc =P2<=P3 (iu);
	if !cc jump .L735;
	R3 = R0;
	cc =R0==1;
	R3 += -1;
	R2 = B [FP++] (X);
	R7 = CC;
	jump.s .L730;
.L734:
	P2 = P0;
.L726:
	cc =P3<P2 (iu);
	if cc jump .L735;
	nop;
	nop;
.L730:
	P0 = P2;
	R0 = B [P0++] (X);
	cc =R0==R2;
	if !cc jump .L734 (bp);
	CC = R7;
	if cc jump .L724;
.L729:
	P4 = FP;
	P5 = P0;
	P1 = R3;
	LSETUP (.L727, .L741) LC1 = P1;
.L727:
	R1 = B [P5++] (Z);
	R0 = B [P4++] (Z);
	cc =R1==R0;
	if !cc jump .L740;
.L741:
	nop;
.L724:
	FP = [SP++];
	R0 = P2;
	( r7:7, p5:3 ) = [sp++];

	rts;
.L740:
	cc =P3<P0 (iu);
	if cc jump .L735;
	nop;
	nop;
	P2 = P0;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L726 (bp);
	R0 = P0;
	P0 = P2;
	P2 = R0;
	jump.s .L729;
.L735:
	FP = [SP++];
	P2 = 0 (X);
	R0 = P2;
	( r7:7, p5:3 ) = [sp++];

	rts;
	.size	_memmem, .-_memmem
	.align 4
.global _mempcpy;
.type _mempcpy, STT_FUNC;
_mempcpy:
	[--sp] = ( p5:5 );

	P5 = R2;
	[--SP] = RETS;
	SP += -12;
	R3 = R0;
	cc =P5==0;
	if cc jump .L743;
	R0 = R3;
	call _memmove;
	R3 = R0;
.L743:
	R0 = P5;
	SP += 12;
	RETS = [SP++];
	R3 = R3 + R0;
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
	.size	_mempcpy, .-_mempcpy
	.align 4
.global _frexp;
.type _frexp, STT_FUNC;
_frexp:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -32;
	[SP+56] = R0;
	[SP+60] = R1;
	R7 = R7 -|- R7 ||
	R0 = [SP+56] ||
	nop;
	P5 = R2;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R1 = [SP+60] ||
	nop;
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L769;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L770;
	R4 = 0 (X);
.L750:
	R5 = 511 (X);
	R6 = 1023 (X);
	R7 = 0 (X);
	R5 <<= 21;
	R6 <<= 20;
.L756:
	R0 = [SP+56];
	R2 = R2 -|- R2 ||
	R1 = [SP+60] ||
	nop;
	[SP+12] = R5;
	call ___muldf3;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[SP+56] = R0 ||
	nop;
	[SP+60] = R1;
	call ___gedf2;
	cc =R0<0;
	R7 += 1;
	if !cc jump .L756 (bp);
.L757:
	cc =R4==0;
	[P5] = R7;
	if cc jump .L763;
	R2 = [SP+60];
	R1 = [SP+56];
	BITTGL (R2, 31);
	[SP+24] = R1;
	[SP+28] = R2;
.L747:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L770:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L753 (bp);
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L762;
.L753:
	R1 = [SP+56];
	R2 = [SP+60];
	[SP+24] = R1;
	R0 = R0 -|- R0 ||
	[SP+28] = R2 ||
	nop;
	[P5] = R0;
	R1 = [SP+28];
	R0 = [SP+24];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L769:
	R0 = -1025 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___ledf2;
	R6 = [SP+60];
	cc =R0<=0;
	R5 = [SP+56];
	BITTGL (R6, 31);
	if !cc jump .L771;
	[SP+56] = R5;
	[SP+60] = R6;
	R4 = 1 (X);
	jump.s .L750;
.L763:
	R0 = [SP+56];
	R1 = [SP+60];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L771:
	R0 = -513 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L760 (bp);
	R0 = [SP+56];
	R1 = [SP+60];
	[P5] = R7;
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L747;
.L760:
	R4 = 1 (X);
.L751:
	[SP+60] = R6;
	R6 = 511 (X);
	[SP+56] = R5;
	R7 = 0 (X);
	R6 <<= 21;
.L758:
	R0 = [SP+60];
	R2 = [SP+56];
	[SP+12] = R0;
	R1 = [SP+60];
	R0 = [SP+56];
	call ___adddf3;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[SP+56] = R0 ||
	nop;
	[SP+60] = R1;
	call ___ltdf2;
	cc =R0<0;
	R7 += -1;
	if cc jump .L758 (bp);
	jump.s .L757;
.L762:
	R5 = [SP+56];
	R6 = [SP+60];
	R4 = 0 (X);
	jump.s .L751;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -24;
	[SP+16] = R0;
	R4 = [SP+16];
	R0 = R1 | R4;
	cc =R0==0;
	[SP+20] = R1;
	R7 = R1;
	R6 = R2;
	R5 = [SP+68];
	P3 = 0 (X);
	P5 = 0 (X);
	if cc jump .L772;
	P4 = 1 (X);
.L775:
	R1 = P4;
	R0 = R4 & R1;
	R2 = ROT R6 BY 0 ||
	[SP+12] = R5 ||
	nop;
	R1 = 0 (X);
	call ___muldi3;
	R2 = P3;
	R0 = R0 + R2; cc = ac0;
	R2 = CC;
	CC = R0 < R0;
	R6 = ROT R6 BY 1;
	R5 = ROT R5 BY 1;
	CC = R0 < R0;
	R7 = ROT R7 BY -1;
	R3 = P5;
	R4 = ROT R4 BY -1;
	R1 = R1 + R3;
	P3 = R0;
	R0 = R4 | R7;
	R1 = R1 + R2;
	cc =R0==0;
	P5 = R1;
	if !cc jump .L775 (bp);
.L772:
	SP += 24;
	RETS = [SP++];
	R0 = P3;
	R1 = P5;
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	___muldi3, .-___muldi3
	.align 4
.global _udivmodsi4;
.type _udivmodsi4, STT_FUNC;
_udivmodsi4:
	R3 = R0;
	R0 = R1;
	cc =R0<R3 (iu);
	P1 = R2;
	R1 = 1 (X);
	if !cc jump .L780;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L779, .L794) LC1 = P2;
.L779:
	cc =R0<0;
	if cc jump .L780;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L781;
.L794:
	R2 += -1;
.L782:
	cc =P1==0;
	if cc jump .L778 (bp);
	R2 = R3;
.L778:
	R0 = R2;
	rts;
.L781:
	cc =R1==0;
	if cc jump .L788;
.L780:
	R2 = 0 (X);
.L785:
	cc =R3<R0 (iu);
	if cc jump .L784 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L784:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L785 (bp);
	jump.s .L782;
.L788:
	R2 = 0 (X);
	jump.s .L782;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	R2 = R0.B (X);
	R1 = R2 >>> 7;
	[--SP] = RETS;
	cc =R2==R1;
	SP += -12;
	R0 = R1 ^ R0;
	if cc jump .L797;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	rts;
.L797:
	SP += 12;
	RETS = [SP++];
	R0 = 7 (X);
	rts;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	[--sp] = ( r7:7 );

	R2 = R0;
	R0 = R1;
	R1 >>>= 31;
	[--SP] = RETS;
	cc =R2==R1;
	SP += -12;
	R7 = R2 ^ R1;
	R3 = R0 ^ R1;
	if cc jump .L804;
.L802:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L804:
	cc =R0==R1;
	if !cc jump .L802 (bp);
	SP += 12;
	RETS = [SP++];
	R0 = 63 (X);
	( r7:7 ) = [sp++];

	rts;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	cc =R0==0;
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = 0 (X);
	if cc jump .L805;
	R7 = 1 (X);
.L807:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L807 (bp);
.L805:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:4, p5:4 );

	P5 = R0;
	R3 = R1;
	R7 = -8 (X);
	R0 = R2 >> 3;
	R7 = R2 & R7;
	R1 = P5;
	cc =R1<R3 (iu);
	if cc jump .L814 (bp);
	R1 = R3 + R2;
	R4 = P5;
	cc =R4<=R1 (iu);
	if cc jump .L842 (bp);
.L814:
	cc =R0==0;
	if cc jump .L843;
	R0 <<= 3;
	R0 += -8;
	R0 >>= 3;
	P2 = R0;
	P0 = R3;
	P1 = P5;
	P2 += 1;
	LSETUP (.L817, .L848) LC1 = P2;
.L817:
	P0 += 8;
	R0 = [P0+-8];
	R1 = [P0+-4];
	[P1+4] = R1;
	[P1] = R0;
.L848:
	P1 += 8;
	cc =R2<=R7 (iu);
	if cc jump .L810;
	R5 = R2 - R7;
	R0 = R5;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L844;
	P2 = R7;
	R6 = R7;
	R6 += 1;
	R6 = R3 + R6;
	R0 = R3 + R7;
	P0 = P5 + P2;
	R1 = P0;
	R6 = R1 - R6;
	cc =R6<=2 (iu);
	if cc jump .L819;
	R6 = R0 | R1;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L819;
	R1 = R5 >> 2;
	R1 <<= 2;
	P2 = R1;
	P1 = R0;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L820, .L847) LC1 = P2;
.L820:
	R0 = [P1++];
.L847:
	[P0++] = R0;
	R7 = R7 + R1;
	cc =R5==R1;
	P2 = R7;
	if cc jump .L810;
	nop;
	P4 = R3;
	P1 = P4 + P2;
	R0 = B [P1] (X);
	P1 = P5 + P2;
	B [P1] = R0;
	P1 = R7;
	P1 += 1;
	R0 = P1;
	cc =R2<=R0 (iu);
	if cc jump .L810;
	P2 += 2;
	P0 = P4 + P1;
	R1 = P2;
	R0 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R1 (iu);
	B [P1] = R0;
	if cc jump .L810;
	nop;
	P1 = P4 + P2;
	P2 = P5 + P2;
	R0 = B [P1] (X);
	B [P2] = R0;
.L810:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L842:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L810;
	P0 = R3;
	P5 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L824, .L846) LC1 = P1;
.L824:
	R0 = B [P2--] (X);
.L846:
	B [P5--] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L843:
	cc =R2==0;
	if cc jump .L810;
	R6 = P5;
	R1 = R6 + R7;
	R0 = R3 + R7;
.L819:
	R2 = R3 + R2;
	P1 = R0;
	P2 = R2;
	P0 = R1;
	P2 -= P1;
	LSETUP (.L822, .L845) LC1 = P2;
.L822:
	R0 = B [P1++] (X);
.L845:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L844:
	R0 = P5;
	R1 = R0 + R7;
	R0 = R3 + R7;
	jump.s .L819;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	R3 = R0;
	cc =R3<R1 (iu);
	[--sp] = ( r7:5, p5:5 );

	R0 = R1;
	R7 = R2 >> 1;
	if cc jump .L853 (bp);
	R1 = R1 + R2;
	cc =R3<=R1 (iu);
	if cc jump .L875 (bp);
.L853:
	cc =R7==0;
	if cc jump .L852;
	R1 = R7;
	R1 += -1;
	R6 = 8 (X);
	cc =R1<=R6 (iu);
	if cc jump .L856;
	R1 = R0 | R3;
	R6 = 3 (X);
	R1 = R1 & R6;
	CC = R1;
	if cc jump .L856;
	R1 = R0;
	R1 += 2;
	cc =R3==R1;
	if cc jump .L856;
	R6 = R2 >> 2;
	R5 = R6 << 2;
	P2 = R5;
	P0 = R0;
	P1 = R3;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L857, .L879) LC1 = P2;
.L857:
	R1 = [P0++];
.L879:
	[P1++] = R1;
	R6 <<= 1;
	cc =R7==R6;
	if cc jump .L852;
	R1 = R0 + R5;
	P2 = R1;
	R5 = R3 + R5;
	R1 = W [P2] (X);
	P2 = R5;
	W [P2] = R1;
.L852:
	cc = !BITTST (R2,0);
	if cc jump .L849 (bp);
.L876:
	R2 += -1;
	R0 = R0 + R2;
	P2 = R0;
	R3 = R3 + R2;
	R0 = B [P2] (X);
	P2 = R3;
	B [P2] = R0;
.L849:
	( r7:5, p5:5 ) = [sp++];

	rts;
.L875:
	P0 = R2;
	cc =R2==0;
	P0 += -1;
	if cc jump .L849;
	P2 = R0;
	P5 = R3;
	P1 = P2 + P0;
	P2 = P5 + P0;
	P0 += 1;
	LSETUP (.L862, .L878) LC1 = P0;
.L862:
	R0 = B [P1--] (X);
.L878:
	B [P2--] = R0;
	( r7:5, p5:5 ) = [sp++];

	rts;
.L856:
	P5 = R7;
	P0 = R0;
	P1 = R3;
	P2 = P5 + P5;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L859, .L877) LC1 = P2;
.L859:
	R1 = W [P0++] (X);
.L877:
	W [P1++] = R1;
	cc = !BITTST (R2,0);
	if cc jump .L849 (bp);
	jump.s .L876;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( r7:4, p5:4 );

	P5 = R0;
	R3 = -4 (X);
	R0 = R2 >> 2;
	R3 = R2 & R3;
	R4 = P5;
	cc =R4<R1 (iu);
	if cc jump .L884 (bp);
	R7 = R1 + R2;
	cc =R4<=R7 (iu);
	if cc jump .L912 (bp);
.L884:
	cc =R0==0;
	if cc jump .L913;
	P4 = R0;
	P0 = R1;
	P1 = P5;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L887, .L918) LC1 = P2;
.L887:
	R0 = [P0++];
.L918:
	[P1++] = R0;
	cc =R2<=R3 (iu);
	if cc jump .L880;
	R5 = R2 - R3;
	R0 = R5;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L914;
	P2 = R3;
	R6 = R3;
	R6 += 1;
	R6 = R1 + R6;
	R0 = R1 + R3;
	P0 = P5 + P2;
	R7 = P0;
	R6 = R7 - R6;
	cc =R6<=2 (iu);
	if cc jump .L889;
	R6 = R0 | R7;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L889;
	R7 = R5 >> 2;
	R7 <<= 2;
	P2 = R7;
	P1 = R0;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L890, .L917) LC1 = P2;
.L890:
	R0 = [P1++];
.L917:
	[P0++] = R0;
	R3 = R3 + R7;
	cc =R5==R7;
	P2 = R3;
	if cc jump .L880;
	nop;
	P4 = R1;
	P1 = P4 + P2;
	R0 = B [P1] (X);
	P1 = P5 + P2;
	B [P1] = R0;
	P1 = R3;
	P1 += 1;
	R0 = P1;
	cc =R2<=R0 (iu);
	if cc jump .L880;
	P2 += 2;
	P0 = P4 + P1;
	R4 = P2;
	R0 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R4 (iu);
	B [P1] = R0;
	if cc jump .L880;
	nop;
	P1 = P4 + P2;
	P2 = P5 + P2;
	R0 = B [P1] (X);
	B [P2] = R0;
.L880:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L912:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L880;
	P0 = R1;
	P5 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L894, .L916) LC1 = P1;
.L894:
	R0 = B [P2--] (X);
.L916:
	B [P5--] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L913:
	cc =R2==0;
	if cc jump .L880;
	R0 = P5;
	R7 = R0 + R3;
	R0 = R1 + R3;
.L889:
	R2 = R1 + R2;
	P1 = R0;
	P2 = R2;
	P0 = R7;
	P2 -= P1;
	LSETUP (.L892, .L915) LC1 = P2;
.L892:
	R0 = B [P1++] (X);
.L915:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L914:
	R4 = P5;
	R7 = R4 + R3;
	R0 = R1 + R3;
	jump.s .L889;
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
	[SP+28] = R1;
	[SP+24] = R0;
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
	R1 = R0;
	cc = !BITTST (R1,15);
	R0 = R0.L (Z);
	if !cc jump .L928;
	R1 = R0 >>> 14;
	cc =R1==0;
	if !cc jump .L925;
	R1 = R0 >>> 13;
	cc =R1==0;
	if !cc jump .L929;
	R1 = R0 >>> 12;
	cc =R1==0;
	if !cc jump .L930;
	R1 = R0 >>> 11;
	cc =R1==0;
	if !cc jump .L931;
	R1 = R0 >>> 10;
	cc =R1==0;
	if !cc jump .L932;
	R1 = R0 >>> 9;
	cc =R1==0;
	if !cc jump .L933;
	R1 = R0 >>> 8;
	cc =R1==0;
	if !cc jump .L934;
	R1 = R0 >>> 7;
	cc =R1==0;
	if !cc jump .L935;
	R1 = R0 >>> 6;
	cc =R1==0;
	if !cc jump .L936;
	R1 = R0 >>> 5;
	cc =R1==0;
	if !cc jump .L937;
	R1 = R0 >>> 4;
	cc =R1==0;
	if !cc jump .L938;
	R1 = R0 >>> 3;
	cc =R1==0;
	if !cc jump .L939;
	R1 = R0 >>> 2;
	cc =R1==0;
	if !cc jump .L940;
	R1 = R0 >>> 1;
	cc =R1==0;
	if !cc jump .L941;
	cc =R0==0;
	R1 = 16 (X);
	if !cc jump .L944;
.L925:
	R0 = R1;
	rts;
.L928:
	R1 = 0 (X);
	jump.s .L925;
.L939:
	R1 = 12 (X);
	jump.s .L925;
.L944:
	R1 = 15 (X);
	jump.s .L925;
.L929:
	R1 = 2 (X);
	jump.s .L925;
.L930:
	R1 = 3 (X);
	jump.s .L925;
.L931:
	R1 = 4 (X);
	jump.s .L925;
.L932:
	R1 = 5 (X);
	jump.s .L925;
.L933:
	R1 = 6 (X);
	jump.s .L925;
.L934:
	R1 = 7 (X);
	jump.s .L925;
.L935:
	R1 = 8 (X);
	jump.s .L925;
.L936:
	R1 = 9 (X);
	jump.s .L925;
.L937:
	R1 = 10 (X);
	jump.s .L925;
.L938:
	R1 = 11 (X);
	jump.s .L925;
.L940:
	R1 = 13 (X);
	jump.s .L925;
.L941:
	R1 = 14 (X);
	jump.s .L925;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	cc = !BITTST (R0,0);
	if !cc jump .L948;
	cc = !BITTST (R0,1);
	if !cc jump .L949;
	cc = !BITTST (R0,2);
	if !cc jump .L950;
	cc = !BITTST (R0,3);
	if !cc jump .L951;
	cc = !BITTST (R0,4);
	if !cc jump .L952;
	cc = !BITTST (R0,5);
	if !cc jump .L953;
	cc = !BITTST (R0,6);
	if !cc jump .L954;
	cc = !BITTST (R0,7);
	if !cc jump .L955;
	cc = !BITTST (R0,8);
	if !cc jump .L956;
	cc = !BITTST (R0,9);
	if !cc jump .L957;
	cc = !BITTST (R0,10);
	if !cc jump .L958;
	cc = !BITTST (R0,11);
	if !cc jump .L959;
	cc = !BITTST (R0,12);
	if !cc jump .L960;
	cc = !BITTST (R0,13);
	if !cc jump .L961;
	cc = !BITTST (R0,14);
	if !cc jump .L962;
	cc = !BITTST (R0,15);
	R1 = 16 (X);
	if !cc jump .L965;
.L945:
	R0 = R1;
	rts;
.L948:
	R1 = 0 (X);
	jump.s .L945;
.L949:
	R1 = 1 (X);
	jump.s .L945;
.L960:
	R1 = 12 (X);
	jump.s .L945;
.L950:
	R1 = 2 (X);
	jump.s .L945;
.L951:
	R1 = 3 (X);
	jump.s .L945;
.L952:
	R1 = 4 (X);
	jump.s .L945;
.L953:
	R1 = 5 (X);
	jump.s .L945;
.L954:
	R1 = 6 (X);
	jump.s .L945;
.L955:
	R1 = 7 (X);
	jump.s .L945;
.L956:
	R1 = 8 (X);
	jump.s .L945;
.L957:
	R1 = 9 (X);
	jump.s .L945;
.L958:
	R1 = 10 (X);
	jump.s .L945;
.L959:
	R1 = 11 (X);
	jump.s .L945;
.L961:
	R1 = 13 (X);
	jump.s .L945;
.L962:
	R1 = 14 (X);
	jump.s .L945;
.L965:
	R1 = 15 (X);
	jump.s .L945;
	.size	___ctzhi2, .-___ctzhi2
	.align 4
.global ___fixunssfsi;
.type ___fixunssfsi, STT_FUNC;
___fixunssfsi:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	R1 = 71 (X);
	SP += -12;
	R1 <<= 24;
	R7 = R0;
	call ___gesf2;
	cc =R0<0;
	if !cc jump .L972;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L972:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	R1 = 32768 (Z);
	R0 = R0 + R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___fixunssfsi, .-___fixunssfsi
	.align 4
.global ___parityhi2;
.type ___parityhi2, STT_FUNC;
___parityhi2:
	R1 = R0;
	cc = BITTST (R1,1);
	R2 = 1 (X);
	R2 = R1 & R2;
	R0 = CC;
	cc = BITTST (R1,2);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,3);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,4);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,5);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,6);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,7);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,8);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,9);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,10);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,11);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,12);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,13);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,14);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,15);
	R1 = CC;
	R0 = R0 + R2;
	R0 = R0 + R1;
	R1 = 1 (X);
	R0 = R0 & R1;
	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	R1 = R0;
	cc = BITTST (R1,1);
	R2 = 1 (X);
	R2 = R1 & R2;
	R0 = CC;
	cc = BITTST (R1,2);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,3);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,4);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,5);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,6);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,7);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,8);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,9);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,10);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,11);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,12);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,13);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,14);
	R0 = R0 + R2;
	R2 = CC;
	cc = BITTST (R1,15);
	R0 = R0 + R2;
	R1 = CC;
	R0 = R0 + R1;
	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	cc =R0==0;
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = 0 (X);
	if cc jump .L975;
	R7 = 1 (X);
.L977:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L977 (bp);
.L975:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	cc =R0==0;
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = 0 (X);
	if cc jump .L980;
	cc =R1==0;
	if cc jump .L980;
	R7 = 1 (X);
.L982:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L982 (bp);
.L980:
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
	cc =R3<=R0 (iu);
	P1 = R2;
	R1 = 1 (X);
	if cc jump .L988;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L987, .L1002) LC1 = P2;
.L987:
	cc =R0<0;
	if cc jump .L988;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L989;
.L1002:
	R2 += -1;
.L990:
	cc =P1==0;
	if cc jump .L986 (bp);
	R2 = R3;
.L986:
	R0 = R2;
	rts;
.L989:
	cc =R1==0;
	if cc jump .L996;
.L988:
	R2 = 0 (X);
.L993:
	cc =R3<R0 (iu);
	if cc jump .L992 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L992:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L993 (bp);
	jump.s .L990;
.L996:
	R2 = 0 (X);
	jump.s .L990;
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
	if cc jump .L1006;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L1007;
.L1005:
	SP += 12;
	R0 = R5;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L1007:
	R5 = 0 (X);
	jump.s .L1005;
.L1006:
	SP += 12;
	RETS = [SP++];
	R0 = -1 (X);
	( r7:5 ) = [sp++];

	rts;
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 4
.global ___mspabi_cmpd;
.type ___mspabi_cmpd, STT_FUNC;
___mspabi_cmpd:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -24;
	[SP+48] = R2;
	R7 = [SP+52];
	R6 = [SP+48];
	[SP+12] = R7;
	R2 = ROT R6 BY 0 ||
	[SP+40] = R0 ||
	nop;
	[SP+44] = R1;
	call ___ltdf2;
	cc =R0<0;
	R5 = R7;
	if cc jump .L1011;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L1012;
.L1010:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L1012:
	R7 = 0 (X);
	jump.s .L1010;
.L1011:
	SP += 24;
	RETS = [SP++];
	R0 = -1 (X);
	( r7:5 ) = [sp++];

	rts;
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 4
.global ___mspabi_mpysll;
.type ___mspabi_mpysll, STT_FUNC;
___mspabi_mpysll:
	[--SP] = R4;
	[--SP] = RETS;
	R4 = R0;
	SP += -24;
	R4 >>>= 31;
	R3 = ROT R1 BY 0 ||
	[SP+20] = R4 ||
	nop;
	[SP+16] = R0;
	R3 >>>= 31;
	R0 = [SP+16];
	[SP+12] = R3;
	R2 = ROT R1 BY 0 ||
	R1 = [SP+20] ||
	nop;
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
	cc =R1<0;
	[--sp] = ( r7:7 );

	R2 = R0;
	if cc jump .L1029;
	cc =R1==0;
	if cc jump .L1021;
	P1 = 0 (X);
.L1017:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L1020;
.L1030:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L1019;
.L1020:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L1030 (bp);
.L1019:
	cc =P1==0;
	if cc jump .L1015;
	R3 = -R3;
.L1015:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L1029:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L1017;
.L1021:
	R3 = 0 (X);
	jump.s .L1015;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	R2 = R0;
	cc =R2<0;
	R0 = R1;
	if cc jump .L1049;
	R1 = 1 (X);
	P1 = 0 (X);
.L1032:
	cc =R0<0;
	if !cc jump .L1033 (bp);
	R0 = -R0;
	P1 = R1;
.L1033:
	cc =R2<=R0 (iu);
	R3 = R2;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L1035;
	LSETUP (.L1034, .L1050) LC1 = P2;
.L1034:
	R0 <<= 1;
	cc =R2<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1038;
.L1050:
	nop;
.L1038:
	cc =R1==0;
	R2 = 0 (X);
	if cc jump .L1036;
.L1035:
	R2 = 0 (X);
.L1040:
	cc =R3<R0 (iu);
	if cc jump .L1039 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1039:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1040 (bp);
.L1036:
	cc =P1==0;
	if cc jump .L1031 (bp);
	R2 = -R2;
.L1031:
	R0 = R2;
	rts;
.L1049:
	R2 = -R2;
	R1 = 0 (X);
	P1 = 1 (X);
	jump.s .L1032;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	R0 = R1;
	if cc jump .L1069;
	P1 = 0 (X);
.L1052:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L1068;
	LSETUP (.L1053, .L1071) LC1 = P2;
.L1053:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1057;
.L1071:
	nop;
.L1057:
	cc =R1==0;
	if cc jump .L1070;
.L1068:
	cc =R2<R0 (iu);
	if cc jump .L1058 (bp);
	R2 = R2 - R0;
.L1058:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1068 (bp);
.L1055:
	cc =P1==0;
	if cc jump .L1051 (bp);
	R2 = -R2;
.L1051:
	R0 = R2;
	rts;
.L1069:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L1052;
.L1070:
	R2 = R3;
	jump.s .L1055;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	[--sp] = ( r7:4 );

	R7 = R1;
	R6 = R0.L (Z);
	R1 = R1.L (Z);
	cc =R1<R6 (iu);
	if !cc jump .L1186;
	R1 = R7.L (X);
	cc =R1<0;
	if cc jump .L1075;
	R1 = R7 << 1;
	R5 = R1.L (Z);
	cc =R6<=R5 (iu);
	R3 = R1;
	if cc jump .L1076;
	R5 = R1.L (X);
	cc =R5<0;
	if cc jump .L1077;
	R5 = R7 << 2;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1078;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1079;
	R5 = R7 << 3;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1080;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1081;
	R5 = R7 << 4;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1082;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1083;
	R5 = R7 << 5;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1084;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1085;
	R5 = R7 << 6;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1086;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1087;
	R5 = R7 << 7;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1088;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1089;
	R5 = R7 << 8;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1090;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1091;
	R5 = R7 << 9;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1092;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1093;
	R5 = R7 << 10;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1094;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1095;
	R5 = R7 << 11;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1096;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1097;
	R5 = R7 << 12;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1098;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1099;
	R5 = R7 << 13;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1100;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1101;
	R5 = R7 << 14;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1102;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1103;
	R7 <<= 15;
	R5 = R7;
	R7 = R7.L (Z);
	cc =R6<=R7 (iu);
	if cc jump .L1104;
	cc =R7==0;
	if !cc jump .L1187;
.L1105:
	cc =R2==0;
	if !cc jump .L1072;
	R0 = R5;
.L1072:
	( r7:4 ) = [sp++];

	rts;
.L1092:
	cc =R6<R1 (iu);
	if cc jump .L1138 (bp);
	R0 = R0 - R5;
	R7 = 512 (X);
	R5 = 512 (X);
	R3 = R3.L (Z);
.L1107:
	R4 = R7 >> 2;
	cc =R4==0;
	R1 = R3 >> 2;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1108 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1108:
	R4 = R7 >> 3;
	cc =R4==0;
	R1 = R3 >> 3;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1109 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1109:
	R4 = R7 >> 4;
	cc =R4==0;
	R1 = R3 >> 4;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1110 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1110:
	R4 = R7 >> 5;
	cc =R4==0;
	R1 = R3 >> 5;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1111 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1111:
	R4 = R7 >> 6;
	cc =R4==0;
	R1 = R3 >> 6;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1112 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1112:
	R4 = R7 >> 7;
	cc =R4==0;
	R1 = R3 >> 7;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1113 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1113:
	R4 = R7 >> 8;
	cc =R4==0;
	R1 = R3 >> 8;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1114 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1114:
	R4 = R7 >> 9;
	cc =R4==0;
	R1 = R3 >> 9;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1115 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1115:
	R4 = R7 >> 10;
	cc =R4==0;
	R1 = R3 >> 10;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1116 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1116:
	R4 = R7 >> 11;
	cc =R4==0;
	R1 = R3 >> 11;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1117 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1117:
	R4 = R7 >> 12;
	cc =R4==0;
	R1 = R3 >> 12;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1118 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1118:
	R4 = R7 >> 13;
	cc =R4==0;
	R1 = R3 >> 13;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1119 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1119:
	R4 = R7 >> 14;
	cc =R4==0;
	R1 = R3 >> 14;
	if cc jump .L1105;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1120 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1120:
	R1 = 16384 (X);
	cc =R7==R1;
	R3 >>= 15;
	if cc jump .L1105;
	R1 = R0.L (Z);
	cc =R1<R3 (iu);
	if cc jump .L1128 (bp);
	R0 = R0 - R3;
	BITSET (R5, 0);
	jump.s .L1105;
.L1128:
	R0 = 0 (X);
	jump.s .L1105;
.L1186:
	cc =R1==R6;
	if cc jump .L1126 (bp);
	R5 = 0 (X);
	jump.s .L1105;
.L1075:
	R0 = R0 - R7;
	R5 = 1 (X);
	jump.s .L1105;
.L1076:
	cc =R6<R5 (iu);
	if cc jump .L1130 (bp);
	R0 = R0 - R1;
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R1.L (Z);
	jump.s .L1107;
.L1077:
	R0 = R0 - R1;
	R1 = 32767 (X);
	R1 = R1 & R7;
	P2 = 1 (X);
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R3.L (Z);
.L1125:
	R6 = R0.L (Z);
	R4 = R1.L (Z);
	cc =R6<R4 (iu);
	if cc jump .L1107;
	R0 = R0 - R1;
	R1 = P2;
	R5 = R5 | R1;
	jump.s .L1107;
.L1078:
	cc =R6<R1 (iu);
	if cc jump .L1131 (bp);
	R0 = R0 - R5;
	R7 = 4 (X);
	R5 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1079:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2 (X);
	R5 = 4 (X);
	R7 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1080:
	cc =R6<R1 (iu);
	if cc jump .L1132 (bp);
	R0 = R0 - R5;
	R7 = 8 (X);
	R5 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1081:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4 (X);
	R5 = 8 (X);
	R7 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1082:
	cc =R6<R1 (iu);
	if cc jump .L1133 (bp);
	R0 = R0 - R5;
	R7 = 16 (X);
	R5 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1083:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8 (X);
	R5 = 16 (X);
	R7 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1084:
	cc =R6<R1 (iu);
	if cc jump .L1134 (bp);
	R0 = R0 - R5;
	R7 = 32 (X);
	R5 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1085:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 16 (X);
	R5 = 32 (X);
	R7 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1086:
	cc =R6<R1 (iu);
	if cc jump .L1135 (bp);
	R0 = R0 - R5;
	R7 = 64 (X);
	R5 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1087:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 32 (X);
	R5 = 64 (X);
	R7 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1088:
	cc =R6<R1 (iu);
	if cc jump .L1136 (bp);
	R0 = R0 - R5;
	R7 = 128 (X);
	R5 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1089:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 64 (X);
	R5 = 128 (X);
	R7 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1091:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 128 (X);
	R5 = 256 (X);
	R7 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1093:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 256 (X);
	R5 = 512 (X);
	R7 = 512 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1126:
	R5 = 1 (X);
	R0 = 0 (X);
	jump.s .L1105;
.L1130:
	R7 = 2 (X);
.L1124:
	R7 = R7.L (Z);
	R1 = R7 >> 1;
	R3 = R3.L (Z);
	P2 = R1;
	R5 = 0 (X);
	R1 = R3 >> 1;
	jump.s .L1125;
.L1095:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 512 (X);
	R5 = 1024 (X);
	R7 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1097:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 1024 (X);
	R5 = 2048 (X);
	R7 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1131:
	R7 = 4 (X);
	jump.s .L1124;
.L1132:
	R7 = 8 (X);
	jump.s .L1124;
.L1099:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2048 (X);
	R5 = 4096 (X);
	R7 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1101:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4096 (X);
	R5 = 8192 (X);
	R7 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1133:
	R7 = 16 (X);
	jump.s .L1124;
.L1134:
	R7 = 32 (X);
	jump.s .L1124;
.L1103:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8192 (X);
	R5 = 16384 (X);
	R7 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L1125;
.L1104:
	R1 = R0.L (X);
	cc =R1<0;
	if cc jump .L1129 (bp);
	R3 = -32768 (X);
	R7 = R3;
	jump.s .L1124;
.L1135:
	R7 = 64 (X);
	jump.s .L1124;
.L1187:
	R5 = -32768 (X);
	R1 = 16384 (X);
	R7 = 32768 (Z);
	R0 = R0 + R5;
	P2 = R1;
	R3 = R7;
	jump.s .L1125;
.L1136:
	R7 = 128 (X);
	jump.s .L1124;
.L1090:
	cc =R6<R1 (iu);
	if cc jump .L1137 (bp);
	R0 = R0 - R5;
	R7 = 256 (X);
	R5 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1129:
	R7 = 32768 (Z);
	R5 = -32768 (X);
	R0 = 0 (X);
	R3 = R7;
	jump.s .L1107;
.L1137:
	R7 = 256 (X);
	jump.s .L1124;
.L1094:
	cc =R6<R1 (iu);
	if cc jump .L1139 (bp);
	R0 = R0 - R5;
	R7 = 1024 (X);
	R5 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1102:
	cc =R6<R1 (iu);
	if cc jump .L1143 (bp);
	R0 = R0 - R5;
	R7 = 16384 (X);
	R5 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1139:
	R7 = 1024 (X);
	jump.s .L1124;
.L1143:
	R7 = 16384 (X);
	jump.s .L1124;
.L1138:
	R7 = 512 (X);
	jump.s .L1124;
.L1100:
	cc =R6<R1 (iu);
	if cc jump .L1142 (bp);
	R0 = R0 - R5;
	R7 = 8192 (X);
	R5 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1098:
	cc =R6<R1 (iu);
	if cc jump .L1141 (bp);
	R0 = R0 - R5;
	R7 = 4096 (X);
	R5 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1096:
	cc =R6<R1 (iu);
	if cc jump .L1140 (bp);
	R0 = R0 - R5;
	R7 = 2048 (X);
	R5 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L1107;
.L1142:
	R7 = 8192 (X);
	jump.s .L1124;
.L1141:
	R7 = 4096 (X);
	jump.s .L1124;
.L1140:
	R7 = 2048 (X);
	jump.s .L1124;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	R3 = R0;
	R0 = R1;
	cc =R3<=R0 (iu);
	P1 = R2;
	R1 = 1 (X);
	if cc jump .L1190;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1189, .L1204) LC1 = P2;
.L1189:
	cc =R0<0;
	if cc jump .L1190;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1191;
.L1204:
	R2 += -1;
.L1192:
	cc =P1==0;
	if cc jump .L1188 (bp);
	R2 = R3;
.L1188:
	R0 = R2;
	rts;
.L1191:
	cc =R1==0;
	if cc jump .L1198;
.L1190:
	R2 = 0 (X);
.L1195:
	cc =R3<R0 (iu);
	if cc jump .L1194 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1194:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1195 (bp);
	jump.s .L1192;
.L1198:
	R2 = 0 (X);
	jump.s .L1192;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L1206 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L1207:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1206:
	cc =R2==0;
	if cc jump .L1209;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L1207;
.L1209:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L1211 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L1212:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1211:
	cc =R2==0;
	if cc jump .L1214;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L1212;
.L1214:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	R5 = 65280 (Z);
	R7 = R1 >> 8;
	R7 = R7 & R5;
	R3 = R1 >> 24;
	R6 = R1 << 8;
	R3 = R3 | R7;
	R7 = R0 >> 24;
	R7 = R6 | R7;
	R6 = 255 (X);
	R6 <<= 16;
	R7 = R7 & R6;
	R1 <<= 24;
	R4 = R0 >> 24;
	R2 = R0 << 24;
	R3 = R3 | R7;
	R7 = R0 << 8;
	R0 >>= 8;
	R0 = R0 | R1;
	R0 = R0 & R5;
	R2 = R2 | R4;
	R3 = R3 | R1;
	R7 = R7 & R6;
	R1 = R2 | R0;
	R1 = R1 | R7;
	R0 = R3;
	( r7:4 ) = [sp++];

	rts;
	.size	___bswapdi2, .-___bswapdi2
	.align 4
.global ___bswapsi2;
.type ___bswapsi2, STT_FUNC;
___bswapsi2:
	R2 = R0 << 24;
	R1 = R0 >> 24;
	R1 = R1 | R2;
	R3 = 65280 (Z);
	R2 = R0 >> 8;
	R2 = R2 & R3;
	R1 = R1 | R2;
	R2 = 255 (X);
	R2 <<= 16;
	R0 <<= 8;
	R0 = R0 & R2;
	R0 = R1 | R0;
	rts;
	.size	___bswapsi2, .-___bswapsi2
	.align 4
.global ___clzsi2;
.type ___clzsi2, STT_FUNC;
___clzsi2:
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
	[--sp] = ( r7:7 );

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
	R1 = ROT R2 BY 0 ||
	R2 = [SP+12] ||
	nop;
	cc =R0<R2;
	if cc jump .L1222;
	cc =R0<=R2;
	if !cc jump .L1223;
	cc =R3<R1 (iu);
	if cc jump .L1222;
	cc =R3<=R1 (iu);
	if !cc jump .L1223;
	R0 = 1 (X);
	rts;
.L1222:
	R0 = 0 (X);
	rts;
.L1223:
	R0 = 2 (X);
	rts;
	.size	___cmpdi2, .-___cmpdi2
	.align 4
.global ___aeabi_lcmp;
.type ___aeabi_lcmp, STT_FUNC;
___aeabi_lcmp:
	R3 = R0;
	R0 = R1;
	R1 = ROT R2 BY 0 ||
	R2 = [SP+12] ||
	nop;
	cc =R0<R2;
	if cc jump .L1228;
	cc =R0<=R2;
	if !cc jump .L1227;
	cc =R3<R1 (iu);
	if cc jump .L1228;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1228:
	R0 = -1 (X);
	rts;
.L1227:
	R0 = 1 (X);
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
	R3 = R1 + R2;
	R1 = 3 (X);
	R2 = R0 & R1;
	cc =R2==0;
	R2 = CC;
	R2 <<= 1;
	R0 >>= R2;
	R0 = R0 & R1;
	[--sp] = ( r7:7 );

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
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L1231 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L1232:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1231:
	cc =R2==0;
	if cc jump .L1234;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L1232;
.L1234:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	R3 = R0.L * R1.L (FU);
	[--sp] = ( r7:6 );

	R7 = R0 >> 16;
	R6 = R3 >> 16;
	R2 = R1;
	R1 = R1.L * R7.L (FU);
	R1 = R1 + R6;
	R2 >>= 16;
	R6 = R1.L (Z);
	R0 = R0.L * R2.L (FU);
	R0 = R0 + R6;
	R6 = R0 << 16;
	R7 = R7.L * R2.L (FU);
	R3 = R3.L (Z);
	R1 >>= 16;
	R3 = R3 + R6;
	R1 = R1 + R7;
	R0 >>= 16;
	R1 = R1 + R0;
	( r7:6 ) = [sp++];

	R0 = R3;
	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--sp] = ( r7:4 );

	R3 = R0.L * R2.L (FU);
	R6 = R0 >> 16;
	R7 = R3 >> 16;
	P1 = R1;
	R1 = R2.L * R6.L (FU);
	R5 = R2 >> 16;
	R1 = R1 + R7;
	R4 = R1.L (Z);
	R7 = R0.L * R5.L (FU);
	R7 = R7 + R4;
	R6 = R6.L * R5.L (FU);
	R1 >>= 16;
	R4 = R7 << 16;
	R1 = R1 + R6;
	R7 >>= 16;
	R1 = R1 + R7;
	R7 = [SP+28];
	R0 *= R7;
	R7 = P1;
	R2 *= R7;
	R3 = R3.L (Z);
	R3 = R3 + R4;
	R1 = R0 + R1;
	R1 = R1 + R2;
	R0 = R3;
	( r7:4 ) = [sp++];

	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	CC = R0;
	R2 = -R0;
	R1 = -R1;
	R0 = CC;
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
	[SP+4] = R1;
	[SP] = R0;
	R2 = [SP+4];
	CC = R0 < R0;
	R0 = [SP];
	R1 = ROT R2 BY -1;
	R7.H = 21845;
	R7.L = 21845;
	R3 = ROT R0 BY -1;
	R3 = R3 & R7;
	R0 = R0 - R3; cc = ac0;
	R1 = R1 & R7;
	CC = ! CC;
	R3 = CC;
	R2 = R2 - R1;
	R2 = R2 - R3;
	R3 = R2 << 30;
	R1 = R0 >> 2;
	R7.H = 13107;
	R7.L = 13107;
	R1 = R3 | R1;
	R0 = R0 & R7;
	R3 = R2 >> 2;
	R1 = R1 & R7;
	R1 = R1 + R0; cc = ac0;
	R3 = R3 & R7;
	R2 = R2 & R7;
	R0 = CC;
	R2 = R3 + R2;
	R2 = R2 + R0;
	R0 = R2 << 28;
	R3 = R1 >> 4;
	R3 = R0 | R3;
	R3 = R3 + R1; cc = ac0;
	R0 = R2 >> 4;
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
	SP += 8;
	R1 = 127 (X);
	R0 = R0 & R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___popcountdi2, .-___popcountdi2
	.align 4
.global ___popcountsi2;
.type ___popcountsi2, STT_FUNC;
___popcountsi2:
	R2.H = 21845;
	R1 = R0 >> 1;
	R2.L = 21845;
	R1 = R1 & R2;
	R0 = R0 - R1;
	R2.H = 13107;
	R2.L = 13107;
	R1 = R0 >> 2;
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
	R4 = R2;
	R3 = 1023 (X);
	SP += -32;
	R5 = R2;
	R3 <<= 20;
	R2 = R2 -|- R2 ||
	[SP+20] = R3 ||
	nop;
	cc = !BITTST (R4,0);
	R6 = ROT R0 BY 0 ||
	[SP+16] = R2 ||
	nop;
	R7 = R1;
	if cc jump .L1243 (bp);
.L1245:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1243:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L1244;
.L1246:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L1245 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L1246;
.L1244:
	cc =R4<0;
	if !cc jump .L1242 (bp);
	R0 = [SP+20];
	R1 = 1023 (X);
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1242:
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
	R5 = 127 (X);
	cc = !BITTST (R1,0);
	SP += -12;
	R6 = R0;
	R4 = R1;
	R7 = R1;
	R5 <<= 23;
	if cc jump .L1250 (bp);
.L1252:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L1250:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L1251;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1252 (bp);
.L1256:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1252 (bp);
	jump.s .L1256;
.L1251:
	cc =R4<0;
	if !cc jump .L1249 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L1249:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:4 ) = [sp++];

	rts;
	.size	___powisf2, .-___powisf2
	.align 4
.global ___ucmpdi2;
.type ___ucmpdi2, STT_FUNC;
___ucmpdi2:
	R3 = R0;
	R0 = R1;
	R1 = ROT R2 BY 0 ||
	R2 = [SP+12] ||
	nop;
	cc =R0<R2 (iu);
	if cc jump .L1261;
	cc =R0<=R2 (iu);
	if !cc jump .L1262;
	cc =R3<R1 (iu);
	if cc jump .L1261;
	cc =R3<=R1 (iu);
	if !cc jump .L1262;
	R0 = 1 (X);
	rts;
.L1261:
	R0 = 0 (X);
	rts;
.L1262:
	R0 = 2 (X);
	rts;
	.size	___ucmpdi2, .-___ucmpdi2
	.align 4
.global ___aeabi_ulcmp;
.type ___aeabi_ulcmp, STT_FUNC;
___aeabi_ulcmp:
	R3 = R0;
	R0 = R1;
	R1 = ROT R2 BY 0 ||
	R2 = [SP+12] ||
	nop;
	cc =R0<R2 (iu);
	if cc jump .L1267;
	cc =R0<=R2 (iu);
	if !cc jump .L1266;
	cc =R3<R1 (iu);
	if cc jump .L1267;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1267:
	R0 = -1 (X);
	rts;
.L1266:
	R0 = 1 (X);
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
.global ___ledf2;
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
