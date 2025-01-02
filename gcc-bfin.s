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
	cc =R0==0;
	R2 = R1 + R2;
	if cc jump .L3;
	P0 = R0;
	P1 = R7;
	P2 = R2;
	R3 = R2 - R1;
	P0 += -1;
	P5 = P1 + P0;
	P2 += -1;
	P0 = R3;
	LSETUP (.L4, .L37) LC1 = P0;
.L4:
	R1 = B [P2--] (X);
.L37:
	B [P5--] = R1;
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
	P0 = R3;
	R1 = R0 - R2;
	if cc jump .L3;
	nop;
	nop;
	cc =R1==1;
	R0 = B [P0] (X);
	B [P5] = R0;
	if cc jump .L3;
	nop;
	nop;
	cc =R1==2;
	R2 = B [P0+1] (X);
	B [P5+1] = R2;
	if cc jump .L3;
	nop;
	nop;
	nop;
	R3 = B [P0+2] (X);
	B [P5+2] = R3;
	jump.s .L3;
.L35:
	P1 = R3;
	P1 += 1;
.L5:
	R1 = R3 + R0;
	P2 = R1;
	P5 = R7;
	P2 -= P1;
	P2 += 1;
.L9:
	R0 = B [P1+-1] (X);
	B [P5++] = R0;
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
	P2 = R0;
	P0 = R1;
	R3 = R2.B (Z);
	cc =P1==0;
	if cc jump .L39;
	nop;
	nop;
	LSETUP (.L40, .L50) LC1 = P1;
.L40:
	R0 = B [P0++] (Z);
	cc =R0==R3;
	B [P2++] = R0;
	if cc jump .L38;
.L50:
	nop;
.L39:
	P2 = 0 (X);
.L38:
	R0 = P2;
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
	if cc jump .L59;
	nop;
	LSETUP (.L53, .L60) LC1 = P1;
.L53:
	R0 = P2;
	R1 = B [P2++] (Z);
	cc =R1==R2;
	if cc jump .L51;
.L60:
	nop;
.L59:
	R0 = 0 (X);
.L51:
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
	if cc jump .L71;
	R1 = R3;
	LSETUP (.L63, .L74) LC1 = P0;
.L63:
	P2 = R0;
	P1 = R1;
	R0 += 1;
	R1 += 1;
	R3 = B [P2] (Z);
	R2 = B [P1] (Z);
	cc =R2==R3;
	if !cc jump .L73;
.L74:
	nop;
.L71:
	R0 = 0 (X);
	rts;
.L73:
	R0 = R2 - R3;
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
	if cc jump .L76;
	call _memcpy;
	R3 = R0;
.L76:
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

	R2 = R3 + R0;
	R7 = R1.B (Z);
	R3 += -1;
	jump.s .L81;
.L83:
	P2 = R2;
	R2 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if cc jump .L80;
.L81:
	cc =R2==R3;
	if !cc jump .L83 (bp);
	P2 = 0 (X);
.L80:
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
	if cc jump .L87;
	R0 = R1.B (Z);
	R1 = R0;
	R0 = R3;
	call _memset;
	R3 = R0;
.L87:
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
	cc =R0==0;
	B [P2] = R0;
	if cc jump .L91;
	P1 += 1;
	P2 += 1;
.L90:
	R1 = P2;
	R2 = B [P1++] (X);
	cc =R2==0;
	B [P2++] = R2;
	if !cc jump .L90 (bp);
	R0 = R1;
	rts;
.L91:
	R1 = P2;
	R0 = R1;
	rts;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	P2 = R0;
	R3 = R1.B (Z);
	R1 = B [P2] (X);
	cc =R1==0;
	R0 = R1;
	if !cc jump .L94 (bp);
	jump.s .L93;
.L96:
	P2 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	R0 = R2;
	if cc jump .L93;
.L94:
	R0 = R0.B (Z);
	cc =R0==R3;
	if !cc jump .L96 (bp);
.L93:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	R2 = R1;
	R1 = R0;
	jump.s .L103;
.L106:
	cc =R0==0;
	if cc jump .L105;
	nop;
.L103:
	P2 = R1;
	R1 += 1;
	R0 = B [P2] (X);
	cc =R0==R2;
	if !cc jump .L106 (bp);
	R0 = P2;
	rts;
.L105:
	P2 = 0 (X);
	R0 = P2;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	P2 = R1;
	P1 = R0;
	R3 = B [P2] (X);
	R0 = B [P1] (X);
	cc =R0==R3;
	R1 = R0;
	R2 = R3;
	if !cc jump .L113;
	P1 += 1;
	P2 += 1;
	jump.s .L110;
.L111:
	nop;
	R0 = B [P1++] (X);
	R3 = B [P2++] (X);
	cc =R0==R3;
	R1 = R0;
	R2 = R3;
	if !cc jump .L113;
.L110:
	cc =R0==0;
	if !cc jump .L111 (bp);
	R1 = 0 (X);
	R0 = R2.B (Z);
	R0 = R1 - R0;
	rts;
.L113:
	R1 = R1.B (Z);
	R0 = R2.B (Z);
	R0 = R1 - R0;
	rts;
	.size	_strcmp, .-_strcmp
	.align 4
.global _strlen;
.type _strlen, STT_FUNC;
_strlen:
	P1 = R0;
	R0 = B [P1] (X);
	cc =R0==0;
	if cc jump .L117;
	R2 = P1;
	R2 += 1;
.L116:
	P2 = R2;
	R2 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L116 (bp);
	P2 -= P1;
	R0 = P2;
	rts;
.L117:
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
	if cc jump .L127;
	nop;
	nop;
	P0 += 1;
	R0 = B [P0+-1] (Z);
	cc =R0==0;
	if cc jump .L129;
	nop;
	nop;
.L123:
	P5 = P1;
	R1 = B [P1++] (Z);
	cc =R1==0;
	if cc jump .L122;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L125;
.L122:
	R0 = R0 - R1;
	( p5:5 ) = [sp++];

	rts;
.L125:
	cc =R1==R0;
	if !cc jump .L122;
	nop;
	nop;
	nop;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if !cc jump .L123 (bp);
	R1 = B [P5+1] (Z);
	jump.s .L122;
.L127:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L129:
	R1 = B [P1] (Z);
	jump.s .L122;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	cc =R2<=1;
	P2 = R0;
	P1 = R1;
	R0 = R2;
	if cc jump .L130;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L132, .L134) LC1 = P0;
.L132:
	P1 += 2;
	R1 = B [P2+1] (X);
	R2 = B [P2] (X);
	B [P1+-2] = R1;
	B [P1+-1] = R2;
.L134:
	P2 += 2;
.L130:
	rts;
	.size	_swab, .-_swab
	.align 4
.global _isalpha;
.type _isalpha, STT_FUNC;
_isalpha:
	R1 = -97 (X);
	BITSET (R0, 5);
	R0 = R0 + R1;
	R2 = 25 (X);
	cc =R0<=R2 (iu);
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
	if cc jump .L139;
	R2 = 9 (X);
	cc =R0==R2;
	R0 = CC;
	rts;
.L139:
	R0 = 1 (X);
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L142 (bp);
	R2 = 127 (X);
	cc =R0==R2;
	R0 = CC;
	rts;
.L142:
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
	P1 = -97 (X);
	P0 = P2 + P1;
	P2 = 25 (X);
	cc =P0<=P2 (iu);
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
	if cc jump .L149;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
	rts;
.L149:
	R0 = 1 (X);
	rts;
	.size	_isspace, .-_isspace
	.align 4
.global _isupper;
.type _isupper, STT_FUNC;
_isupper:
	P2 = R0;
	P1 = -65 (X);
	P0 = P2 + P1;
	P2 = 25 (X);
	cc =P0<=P2 (iu);
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
	if cc jump .L155 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if !cc jump .L156 (bp);
.L155:
	R0 = 1 (X);
	rts;
.L156:
	P1 = -8232 (X);
	P0 = P2 + P1;
	cc =P0<=1 (iu);
	if cc jump .L155;
	P1.H = 65535;
	P1.L = 7;
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
	if cc jump .L165;
	R2 = 8231 (X);
	cc =R0<=R2 (iu);
	if cc jump .L163;
	R3 = -8234 (X);
	R1 = R0 + R3;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L163;
	R3 = -7 (X);
	R3 <<= 13;
	R1 = R0 + R3;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L163;
	R3 = -16383 (X);
	R3 <<= 2;
	R2 = 3 (X);
	R1 = R0 + R3;
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L164;
	R3 = 65534 (Z);
	R0 = R0 & R3;
	cc =R0==R3;
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L163:
	R0 = 1 (X);
	rts;
.L165:
	R0 += 1;
	R1 = 127 (X);
	R3 = R0 & R1;
	R2 = 32 (X);
	cc =R3<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L164:
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
	if cc jump .L168 (bp);
	R3 = -97 (X);
	BITSET (R0, 5);
	R0 = R0 + R3;
	cc =R0<=5 (iu);
	R0 = CC;
	rts;
.L168:
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
	if !cc jump .L173;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L174;
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L178 (bp);
	R2 = 0 (X);
	R3 = R3 -|- R3 ||
	[SP+16] = R2 ||
	nop;
	R0 = ROT R2 BY 0 ||
	[SP+20] = R3 ||
	nop;
	R1 = R3;
.L170:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L178:
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
.L173:
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L170;
.L174:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L170;
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
	if !cc jump .L179;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L183;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L186 (bp);
	R0 = R7;
	R1 = R6;
	call ___subsf3;
	R7 = R0;
.L179:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L186:
	SP += 12;
	R7 = 0 (X);
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L183:
	R7 = R6;
	jump.s .L179;
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
	if !cc jump .L195;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L194;
	R2 = [SP+44];
	R1 = R7;
	R2 >>>= 31;
	R1 >>>= 31;
	R2 <<= 31;
	R1 <<= 31;
	cc =R2==R1;
	if cc jump .L189 (bp);
	cc =R2==0;
	if !cc jump .L195 (bp);
.L194:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L195:
	R0 = [SP+48];
	R1 = [SP+52];
.L196:
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L189:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L195 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L196;
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
	if !cc jump .L197;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L204;
	R0 = R6 >>> 31;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L199 (bp);
	cc =R0==0;
	if !cc jump .L197 (bp);
.L204:
	R7 = R6;
.L197:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L199:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L197 (bp);
	jump.s .L204;
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
	if !cc jump .L215;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L214;
	R2 = [SP+44];
	R1 = R7;
	R2 >>>= 31;
	R1 >>>= 31;
	R2 <<= 31;
	R1 <<= 31;
	cc =R2==R1;
	if cc jump .L209 (bp);
	cc =R2==0;
	if !cc jump .L215 (bp);
.L214:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L215:
	R0 = [SP+48];
	R1 = [SP+52];
.L216:
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L209:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L215 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L216;
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
	if !cc jump .L223;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L225;
	R2 = [SP+36];
	R1 = R7;
	R2 >>>= 31;
	R1 >>>= 31;
	R2 <<= 31;
	R1 <<= 31;
	cc =R2==R1;
	if !cc jump .L227 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L225 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L226:
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L227:
	cc =R2==0;
	if !cc jump .L225 (bp);
.L223:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L225:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L226;
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
	if !cc jump .L234;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L228;
	R0 = R7 >>> 31;
	R1 = R6 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L230 (bp);
	cc =R0==0;
	if !cc jump .L228 (bp);
.L234:
	R7 = R6;
.L228:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L230:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L228 (bp);
	jump.s .L234;
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
	if !cc jump .L244;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L246;
	R2 = [SP+36];
	R1 = R7;
	R2 >>>= 31;
	R1 >>>= 31;
	R2 <<= 31;
	R1 <<= 31;
	cc =R2==R1;
	if !cc jump .L248 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L246 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L247:
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L248:
	cc =R2==0;
	if !cc jump .L246 (bp);
.L244:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L246:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L247;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	cc =R0==0;
	P1.L = _s.0;
	if cc jump .L250;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L251:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R0 >>= 6;
	cc =R0==0;
	R1 = B [P2] (X);
	B [P1++] = R1;
	if !cc jump .L251 (bp);
.L250:
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
	R3 = ROT R1 BY 0 ||
	[P5] = R2 ||
	nop;
	R1 = CC;
	R0 = R3 + R1;
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
	if cc jump .L262;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P0 = [P2];
	cc =P0==0;
	if cc jump .L256;
	[P0+4] = P2;
.L256:
	rts;
.L262:
	R1 = 0 (X);
	[P2+4] = R1;
	[P2] = R1;
	rts;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L264;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L264:
	P0 = [P2+4];
	cc =P0==0;
	if cc jump .L263;
	[P0] = P1;
.L263:
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	FP = R2;
	R6 = ROT R0 BY 0 ||
	[SP+52] = R1 ||
	nop;
	P4 = [SP+60];
	P3 = [SP+64];
	R7 = [FP];
	cc =R7==0;
	if cc jump .L273;
	P5 = R1;
	R4 = 0 (X);
	jump.s .L275;
.L287:
	R4 += 1;
	cc =R7==R4;
	P5 = P5 + P4;
	if cc jump .L273;
.L275:
	R1 = P5;
	R0 = R6;
	call (P3);
	cc =R0==0;
	R5 = P5;
	if !cc jump .L287 (bp);
.L272:
	SP += 12;
	FP = [SP++];
	R0 = R5;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L273:
	R1 = P4;
	R0 = ROT R7 BY 0 ||
	R2 = [SP+52] ||
	nop;
	R7 *= R1;
	R0 += 1;
	cc =P4==0;
	[FP] = R0;
	R5 = R2 + R7;
	if cc jump .L272;
	R2 = P4;
	R1 = R6;
	R0 = R5;
	call _memmove;
	SP += 12;
	FP = [SP++];
	R0 = R5;
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
	R6 = ROT R0 BY 0 ||
	P3 = [SP+56] ||
	nop;
	R5 = [P2];
	cc =R5==0;
	P5 = R1;
	P4 = [SP+60];
	if cc jump .L289;
	R7 = 0 (X);
	jump.s .L291;
.L299:
	R7 += 1;
	cc =R5==R7;
	P5 = P5 + P3;
	if cc jump .L289;
.L291:
	R1 = P5;
	R0 = R6;
	call (P4);
	cc =R0==0;
	R4 = P5;
	if !cc jump .L299 (bp);
	SP += 12;
	RETS = [SP++];
	R0 = R4;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L289:
	SP += 12;
	R4 = 0 (X);
	RETS = [SP++];
	R0 = R4;
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
.L321:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L321;
	R2 = R0;
	R2 += -9;
	cc =R2<=4 (iu);
	if cc jump .L321 (bp);
	R3 = 43 (X);
	cc =R0==R3;
	if cc jump .L304;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L324 (bp);
	R0 = B [P0+1] (X);
	R3 = R0;
	R3 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R3<=R7 (iu);
	P1 += 1;
	if !cc jump .L313;
	P0 = 1 (X);
.L307:
	P1 += 1;
	P2 = 0 (X);
.L310:
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
	if cc jump .L310 (bp);
	cc =P0==0;
	if !cc jump .L301 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L301:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L324:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L313;
	P1 = P0;
	P0 = 0 (X);
	jump.s .L307;
.L304:
	R0 = B [P0+1] (X);
	R7 = R0;
	R7 += -48;
	R1 = 9 (X);
	P1 = P0;
	cc =R7<=R1 (iu);
	P1 += 1;
	P0 = 0 (X);
	if cc jump .L307 (bp);
.L313:
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
.L343:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L343;
	R2 = R0;
	R2 += -9;
	cc =R2<=4 (iu);
	if cc jump .L343 (bp);
	R3 = 43 (X);
	cc =R0==R3;
	if cc jump .L328;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L329 (bp);
	R0 = B [P0+1] (X);
	R3 = R0;
	R3 += -48;
	R1 = 9 (X);
	cc =R3<=R1 (iu);
	P1 = P2;
	P0 = 1 (X);
	if !cc jump .L336;
.L330:
	P1 += 1;
	P2 = 0 (X);
.L333:
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
	if cc jump .L333 (bp);
	cc =P0==0;
	if !cc jump .L325 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L325:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L329:
	R7 = R0;
	R7 += -48;
	R2 = 9 (X);
	cc =R7<=R2 (iu);
	P1 = P0;
	if !cc jump .L336;
.L345:
	P0 = 0 (X);
	jump.s .L330;
.L328:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if cc jump .L345 (bp);
.L336:
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
.L366:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L366;
	R1 = R7;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L366 (bp);
	R2 = 43 (X);
	cc =R7==R2;
	if cc jump .L349;
	R5 = 45 (X);
	cc =R7==R5;
	if !cc jump .L369 (bp);
	R7 = B [P1+1] (X);
	R6 = R7;
	R6 += -48;
	R0 = 9 (X);
	P5 = P1;
	cc =R6<=R0 (iu);
	P5 += 1;
	if !cc jump .L358;
	P4 = 1 (X);
.L352:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L355:
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
	P0 = R7;
	P2 = 9 (X);
	P0 += -48;
	cc =P0<=P2 (iu);
	if cc jump .L355 (bp);
	cc =P4==0;
	if !cc jump .L346 (bp);
	R3 = R4 - R0; cc = ac0;
	CC = ! CC;
	R6 = CC;
	R0 = R5 - R2;
	R1 = R0 - R6;
.L346:
	SP += 24;
	RETS = [SP++];
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L369:
	R2 = R7;
	R2 += -48;
	R1 = 9 (X);
	cc =R2<=R1 (iu);
	if !cc jump .L358;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L352;
.L349:
	R7 = B [P1+1] (X);
	R3 = R7;
	R3 += -48;
	R4 = 9 (X);
	P5 = P1;
	cc =R3<=R4 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L352 (bp);
.L358:
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
.L383:
	cc =R7==0;
	if cc jump .L371;
.L384:
	P2 = R7;
	P3 = P2 >> 1;
	R0 = P3;
	R0 *= R4;
	R6 = R5 + R0;
	R1 = R6;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L375;
	cc =R0==0;
	if cc jump .L370;
	R7 += -1;
	R1 = P3;
	R7 = R7 - R1;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L384 (bp);
.L371:
	R6 = 0 (X);
.L370:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L375:
	R7 = P3;
	jump.s .L383;
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
	if cc jump .L390;
.L398:
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
	if cc jump .L385;
	cc =R0<=0;
	if cc jump .L388;
	R1 = FP;
	R1 += -1;
	R1 >>>= 1;
	FP = R1;
	R6 = R7 + R5;
	cc =FP==0;
	if !cc jump .L398 (bp);
.L390:
	R7 = 0 (X);
.L385:
	SP += 12;
	FP = [SP++];
	R0 = R7;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L388:
	cc =P3==0;
	if cc jump .L390;
	FP = P3;
	jump.s .L398;
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
	if !cc jump .L402 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L402:
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
	if !cc jump .L408 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L408:
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
	if !cc jump .L412 (bp);
	jump.s .L415;
.L414:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L415;
.L412:
	cc =R1==R0;
	if !cc jump .L414 (bp);
	R0 = P2;
	rts;
.L415:
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
	if !cc jump .L420;
	P1 += 4;
	P2 += 4;
	jump.s .L421;
.L422:
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L420;
.L421:
	cc =R0==0;
	if !cc jump .L422 (bp);
.L420:
	cc =R0<R1;
	if cc jump .L424 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L424:
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
.L426:
	nop;
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L426 (bp);
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
	if cc jump .L431;
	R2 = P1;
	R2 += 4;
.L430:
	P2 = R2;
	R2 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L430 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L431:
	R0 = 0 (X);
	rts;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	P1 = R2;
	[--sp] = ( p5:5 );

	P2 = R0;
	R3 = R1;
	cc =P1==0;
	if cc jump .L443;
	LSETUP (.L435, .L445) LC1 = P1;
.L435:
	P0 = R3;
	P5 = P2;
	R3 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L436;
	cc =R1==0;
	if cc jump .L436;
.L445:
	nop;
.L443:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L436:
	R3 = [P5];
	R0 = [P0];
	cc =R3<R0;
	if cc jump .L444 (bp);
	cc =R0<R3;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L444:
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
	if cc jump .L454;
	nop;
	LSETUP (.L448, .L455) LC1 = P1;
.L448:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L446;
.L455:
	nop;
.L454:
	R0 = 0 (X);
.L446:
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
	if cc jump .L467;
	R1 = R3;
	LSETUP (.L458, .L471) LC1 = P0;
.L458:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L469;
.L471:
	nop;
.L467:
	R0 = 0 (X);
	rts;
.L469:
	cc =R3<R2;
	if cc jump .L470 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L470:
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
	if cc jump .L473;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L473:
	SP += 12;
	RETS = [SP++];
	R0 = R3;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	R3 = R0;
	cc =R3==R1;
	[--sp] = ( p5:5 );

	P2 = R1;
	P1 = R2;
	R0 = R2;
	if cc jump .L484;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	P0 = R3;
	P1 += -1;
	if !cc jump .L491 (bp);
	cc =R0==0;
	if cc jump .L484;
	P1 = P1 << 2;
	P2 = P2 + P1;
	P5 = P0 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L482, .L493) LC1 = P1;
.L482:
	R0 = [P2--];
.L493:
	[P5--] = R0;
.L484:
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
.L491:
	P5 = R0;
	cc =P5==0;
	if cc jump .L484;
	nop;
	nop;
	LSETUP (.L480, .L492) LC1 = P5;
.L480:
	P1 = [P2++];
.L492:
	[P0++] = P1;
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
	if cc jump .L495;
	P1 = R3;
	LSETUP (.L496, .L501) LC1 = P2;
.L496:
.L501:
	[P1++] = R0;
.L495:
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
	if !cc jump .L503 (bp);
	cc =R1==0;
	R2 = R3 + R2;
	if cc jump .L502;
	P0 = R1;
	P5 = R2;
	R1 = R2 - R3;
	P1 = R1;
	P0 += -1;
	P2 = P2 + P0;
	P5 += -1;
	LSETUP (.L505, .L537) LC1 = P1;
.L505:
	R7 = B [P5--] (X);
.L537:
	B [P2--] = R7;
.L502:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L503:
	cc =R3==R0;
	if cc jump .L502;
	cc =R1==0;
	if cc jump .L502;
	R7 = R1;
	R7 += -1;
	cc =R7<=6 (iu);
	if cc jump .L535;
	P0 = R3;
	R7 = R0 | R3;
	R2 = 3 (X);
	R0 = R7 & R2;
	CC = R0;
	P0 += 1;
	if cc jump .L506;
	R2 = P2;
	R7 = P0;
	R0 = R2 - R7;
	cc =R0<=2 (iu);
	if cc jump .L506;
	R2 = R1 >> 2;
	R2 <<= 2;
	P1 = R2;
	P0 = R3;
	P5 = P2 + P1;
	P1 += -4;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L507, .L536) LC1 = P1;
.L507:
	R7 = [P0++];
.L536:
	[P2++] = R7;
	R3 = R3 + R2;
	cc =R1==R2;
	P2 = R3;
	R0 = R1 - R2;
	if cc jump .L502;
	nop;
	nop;
	cc =R0==1;
	R1 = B [P2] (X);
	B [P5] = R1;
	if cc jump .L502;
	nop;
	nop;
	cc =R0==2;
	R2 = B [P2+1] (X);
	B [P5+1] = R2;
	if cc jump .L502;
	nop;
	nop;
	nop;
	R7 = B [P2+2] (X);
	B [P5+2] = R7;
	jump.s .L502;
.L535:
	P0 = R3;
	P0 += 1;
.L506:
	R3 = R3 + R1;
	P5 = R3;
	P5 -= P0;
	P5 += 1;
.L510:
	R0 = B [P0+-1] (X);
	B [P2++] = R0;
	P5 += -1;
	cc =P5==0;
	if !cc jump .L520;
	jump.s .L502;
.L520:
	P0 += 1;
	jump.s .L510;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4 );

	R3 = R0;
	R6 = 31 (X);
	R0 = R2;
	R4 = R6 - R0;
	R7 = R3 >> 1;
	R5 = R2;
	R7 >>= R4;
	R4 = R1;
	R5 += -32;
	R4 <<= R0;
	R2 = R3;
	R7 = R7 | R4;
	cc =R5<0;
	R2 <<= R5;
	R4 = R3;
	R4 <<= R0;
	if cc R2 = R7;
	R0 = -R0;
	R7 = 63 (X);
	R0 = R0 & R7;
	P1 = R0;
	P2 = 0 (X);
	cc =R5<0;
	if !cc R5 = P2; if cc R5 = R4;
	R4 = R1;
	P1 += -32;
	R7 = P1;
	R4 >>= R7;
	R6 = R6 - R0;
	R7 = R1 << 1;
	R7 <<= R6;
	R3 >>= R0;
	R3 = R7 | R3;
	cc =P1<0;
	if !cc R3 = R4;
	R1 >>= R0;
	cc =P1<0;
	if !cc R1 = P2;
	R0 = R5 | R3;
	R1 = R2 | R1;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotl64, .-_rotl64
	.align 4
.global _rotr64;
.type _rotr64, STT_FUNC;
_rotr64:
	[--sp] = ( r7:4 );

	R3 = R0;
	R6 = 31 (X);
	R0 = R2;
	R4 = R6 - R0;
	R7 = R1 << 1;
	R5 = R2;
	R7 <<= R4;
	R4 = R3;
	R5 += -32;
	R4 >>= R0;
	R2 = R1;
	R7 = R7 | R4;
	cc =R5<0;
	R2 >>= R5;
	R4 = R1;
	R4 >>= R0;
	if cc R2 = R7;
	R0 = -R0;
	R7 = 63 (X);
	R0 = R0 & R7;
	P1 = R0;
	P2 = 0 (X);
	cc =R5<0;
	if !cc R5 = P2; if cc R5 = R4;
	R4 = R3;
	P1 += -32;
	R7 = P1;
	R4 <<= R7;
	R6 = R6 - R0;
	R7 = R3 >> 1;
	R7 >>= R6;
	R1 <<= R0;
	R1 = R7 | R1;
	cc =P1<0;
	if !cc R1 = R4;
	R3 <<= R0;
	cc =P1<0;
	if !cc R3 = P2;
	R1 = R5 | R1;
	R0 = R2 | R3;
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
	R2 = R0.L (Z);
	R3 = 15 (X);
	R1 = R1 & R3;
	R0 = R2;
	R0 <<= R1;
	R1 = -R1;
	R3 = R1 & R3;
	R2 >>= R3;
	R0 = R0 | R2;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	R3 = 15 (X);
	R1 = R1 & R3;
	R0 = R0.L (Z);
	R2 = R0;
	R0 >>= R1;
	R1 = -R1;
	R3 = R1 & R3;
	R2 <<= R3;
	R0 = R0 | R2;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	R2 = R0.B (Z);
	R3 = 7 (X);
	R1 = R1 & R3;
	R0 = R2;
	R0 <<= R1;
	R1 = -R1;
	R3 = R1 & R3;
	R2 >>= R3;
	R0 = R0 | R2;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	R3 = 7 (X);
	R1 = R1 & R3;
	R0 = R0.B (Z);
	R2 = R0;
	R0 >>= R1;
	R1 = -R1;
	R3 = R1 & R3;
	R2 <<= R3;
	R0 = R0 | R2;
	rts;
	.size	_rotr8, .-_rotr8
	.align 4
.global _bswap_16;
.type _bswap_16, STT_FUNC;
_bswap_16:
	R0 = R0.L (Z);
	R1 = R0;
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
	R3 = 255 (X);
	R3 <<= 16;
	R0 <<= 8;
	R1 = R1 | R2;
	R0 = R0 & R3;
	R0 = R1 | R0;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:4 );

	R7 = R1 >> 8;
	R4 = 65280 (Z);
	R5 = R7 & R4;
	R3 = R1 >> 24;
	R6 = R0 >> 24;
	R3 = R3 | R5;
	R7 = R1 << 8;
	R5 = 255 (X);
	R7 = R7 | R6;
	R5 <<= 16;
	R6 = R7 & R5;
	R1 <<= 24;
	R3 = R3 | R6;
	R6 = R0 >> 8;
	R6 = R1 | R6;
	R2 = R0 << 24;
	R3 = R3 | R1;
	R1 = R7.B (Z);
	R2 = R2 | R1;
	R4 = R6 & R4;
	R0 <<= 8;
	R0 = R0 & R5;
	R7 = R2 | R4;
	R1 = R7 | R0;
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
	LSETUP (.L554, .L556) LC1 = P2;
.L554:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L551;
.L556:
	nop;
	R0 = 0 (X);
.L551:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L560;
	R1 = 1 (X);
	R2 = R0 & R1;
	cc =R2==0;
	if !cc jump .L557;
	R2 = 1 (X);
.L559:
	R0 >>>= 1;
	cc = !BITTST (R0,0);
	R2 += 1;
	if cc jump .L559 (bp);
.L557:
	R0 = R2;
	rts;
.L560:
	R2 = 0 (X);
	R0 = R2;
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
	if cc jump .L566 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R6 = 1 (X);
	if cc jump .L567;
.L565:
	SP += 12;
	R0 = R6;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L566:
	SP += 12;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:6 ) = [sp++];

	rts;
.L567:
	R6 = 0 (X);
	jump.s .L565;
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
	if cc jump .L571 (bp);
	R1 = -1 (X);
	R1.H = 32751;
	[SP+12] = R1;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L572;
.L570:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L571:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L572:
	R7 = 0 (X);
	jump.s .L570;
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
	if cc jump .L576 (bp);
	R1 = -1 (X);
	R1.H = 32751;
	[SP+12] = R1;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L577;
.L575:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L576:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L577:
	R7 = 0 (X);
	jump.s .L575;
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
	if !cc jump .L580;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L580 (bp);
	cc =R7<0;
	if cc jump .L594;
	R6 = 1 (X);
	R6 <<= 30;
.L582:
	cc = !BITTST (R7,0);
	if cc jump .L583 (bp);
.L584:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L583:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L580;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L584 (bp);
.L595:
	R1 = R7 >> 31;
	R7 = R1 + R7;
	R0 = R6;
	R1 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L584 (bp);
	jump.s .L595;
.L580:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L594:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L582;
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
	if !cc jump .L597;
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
	if cc jump .L597 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L611;
	R7 = 1 (X);
	R7 <<= 30;
.L599:
	cc = !BITTST (R5,0);
	if cc jump .L600 (bp);
.L601:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L600:
	R1 = R5 >> 31;
	R5 = R1 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L597;
.L602:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L601 (bp);
	R3 = R5 >> 31;
	R5 = R3 + R5;
	R5 >>>= 1;
	jump.s .L602;
.L597:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L611:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L599;
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
	if !cc jump .L613;
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
	if cc jump .L613 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L627;
	R7 = 1 (X);
	R7 <<= 30;
.L615:
	cc = !BITTST (R5,0);
	if cc jump .L616 (bp);
.L617:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L616:
	R2 = R5 >> 31;
	R5 = R2 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L613;
.L618:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L617 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L618;
.L613:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L627:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L615;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	cc =R2==0;
	[--sp] = ( r7:7, p5:4 );

	R3 = R0;
	P5 = R1;
	if cc jump .L629;
	R0 = R2;
	R0 += -1;
	cc =R0<=3 (iu);
	if cc jump .L630;
	R7 = R3 | R1;
	R0 = 3 (X);
	R1 = R7 & R0;
	cc =R1==0;
	if !cc jump .L630;
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
	LSETUP (.L631, .L647) LC1 = P2;
.L631:
	R1 = [P1];
	R0 = [P0++];
	R0 = R0 ^ R1;
.L647:
	[P1++] = R0;
	P0 = R7;
	cc =R7==R2;
	R1 = R2 - R7;
	P5 = P5 + P0;
	if cc jump .L629;
	nop;
	nop;
	cc =R1==1;
	R7 = B [P4] (X);
	R2 = B [P5] (X);
	R0 = R7 ^ R2;
	B [P4] = R0;
	if cc jump .L629;
	nop;
	nop;
	cc =R1==2;
	R2 = B [P4+1] (X);
	R7 = B [P5+1] (X);
	R0 = R7 ^ R2;
	B [P4+1] = R0;
	if cc jump .L629;
	nop;
	nop;
	nop;
	R1 = B [P4+2] (X);
	R7 = B [P5+2] (X);
	R2 = R7 ^ R1;
	B [P4+2] = R2;
.L629:
	R0 = R3;
	( r7:7, p5:4 ) = [sp++];

	rts;
.L630:
	P4 = R3;
	P1 = R2;
	LSETUP (.L633, .L646) LC1 = P1;
.L633:
	R7 = B [P4++] (X);
	R0 = B [P5++] (X);
	R1 = R0 ^ R7;
.L646:
	B [P4+-1] = R1;
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
	if cc jump .L655;
	R2 = P5;
	R2 += 1;
.L650:
	P2 = R2;
	R2 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L650 (bp);
.L649:
	cc =P1==0;
	if cc jump .L651;
	nop;
	nop;
	LSETUP (.L652, .L661) LC1 = P1;
.L652:
	R3 = B [P0++] (X);
	cc =R3==0;
	B [P2++] = R3;
	if cc jump .L654;
.L661:
	nop;
.L651:
	R0 = 0 (X);
	B [P2] = R0;
.L654:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L655:
	P2 = P5;
	jump.s .L649;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
	if cc jump .L662;
	nop;
	P1 = R0;
	LSETUP (.L664, .L673) LC1 = P1;
.L664:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L672;
.L662:
	R0 = R1;
	rts;
.L672:
.L673:
	R1 += 1;
	R1 = R0;
	jump.s .L662;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L679;
.L675:
	P2 = R2;
	jump.s .L678;
.L677:
	cc =R0==R1;
	if cc jump .L676;
	nop;
	nop;
	nop;
.L678:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L677 (bp);
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
	if !cc jump .L675 (bp);
.L679:
	P1 = 0 (X);
.L676:
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
.L685:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L684 (bp);
	R3 = R1;
.L684:
	cc =R0==0;
	if !cc jump .L685 (bp);
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
	if cc jump .L697;
	R1 += 1;
.L689:
	P0 = R1;
	R1 += 1;
	R2 = B [P0] (X);
	cc =R2==0;
	if !cc jump .L689 (bp);
	R6 = P0;
	cc =R6==R7;
	R1 = R6 - R7;
	if cc jump .L697;
	R1 += -1;
	R6 = R7 + R1;
.L690:
	P2 = R0;
	jump.s .L695;
.L711:
	cc =R2==0;
	if cc jump .L710;
	nop;
.L695:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (Z);
	R2 = R0.B (X);
	cc =R2==R3;
	if !cc jump .L711 (bp);
	R1 = R6 - R7;
	P0 = R1;
	P5 = R7;
	P0 += 1;
.L691:
	nop;
	R2 = B [P5] (Z);
	cc =R2==0;
	if cc jump .L692;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L705;
	nop;
	nop;
	P5 = R6;
.L692:
	R1 = B [P5] (Z);
	cc =R0==R1;
	if cc jump .L687;
	R0 = P1;
	R0 += 1;
	jump.s .L690;
.L705:
	cc =R2==R0;
	if !cc jump .L692;
	nop;
	nop;
	P5 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if !cc jump .L691 (bp);
	jump.s .L692;
.L710:
	P1 = 0 (X);
.L687:
	R0 = P1;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L697:
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
	if cc jump .L722;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L716;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L715;
.L716:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L722:
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L716 (bp);
.L715:
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
	if cc jump .L723;
	cc =R1<R0 (iu);
	if cc jump .L734;
	P1 = R0;
	P3 -= P1;
	P3 = P2 + P3;
	cc =P2<=P3 (iu);
	if !cc jump .L734;
	R3 = R0;
	cc =R0==1;
	R3 += -1;
	R2 = B [FP++] (X);
	R7 = CC;
	jump.s .L729;
.L733:
	P2 = P0;
.L725:
	cc =P3<P2 (iu);
	if cc jump .L734;
	nop;
	nop;
.L729:
	P0 = P2;
	R0 = B [P0++] (X);
	cc =R0==R2;
	if !cc jump .L733 (bp);
	CC = R7;
	if cc jump .L723;
.L728:
	P4 = FP;
	P5 = P0;
	P1 = R3;
	LSETUP (.L726, .L740) LC1 = P1;
.L726:
	R1 = B [P5++] (Z);
	R0 = B [P4++] (Z);
	cc =R1==R0;
	if !cc jump .L739;
.L740:
	nop;
.L723:
	FP = [SP++];
	R0 = P2;
	( r7:7, p5:3 ) = [sp++];

	rts;
.L739:
	cc =P3<P0 (iu);
	if cc jump .L734;
	nop;
	nop;
	P2 = P0;
	R1 = B [P2++] (X);
	cc =R2==R1;
	if !cc jump .L725 (bp);
	P4 = P0;
	P0 = P2;
	P2 = P4;
	jump.s .L728;
.L734:
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
	P2 = R0;
	cc =P5==0;
	if cc jump .L742;
	R0 = P2;
	call _memmove;
	P2 = R0;
.L742:
	SP += 12;
	P0 = P2 + P5;
	RETS = [SP++];
	R0 = P0;
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
	if cc jump .L768;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L769;
	R4 = 0 (X);
.L749:
	R5 = 511 (X);
	R6 = 1023 (X);
	R7 = 0 (X);
	R5 <<= 21;
	R6 <<= 20;
.L755:
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
	if !cc jump .L755 (bp);
.L756:
	cc =R4==0;
	[P5] = R7;
	if cc jump .L762;
	R0 = [SP+60];
	R4 = [SP+56];
	BITTGL (R0, 31);
	[SP+24] = R4;
	[SP+28] = R0;
.L746:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L769:
	R1 = 511 (X);
	R1 <<= 21;
	[SP+12] = R1;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L752 (bp);
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L761;
.L752:
	R4 = [SP+60];
	R3 = [SP+56];
	[SP+28] = R4;
	[SP+24] = R3;
	R2 = R2 -|- R2 ||
	R0 = [SP+24] ||
	nop;
	[P5] = R2;
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L768:
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
	if !cc jump .L770;
	[SP+56] = R5;
	[SP+60] = R6;
	R4 = 1 (X);
	jump.s .L749;
.L762:
	P5 = [SP+56];
	R2 = [SP+60];
	[SP+28] = R2;
	R1 = [SP+28];
	[SP+24] = P5;
	R0 = [SP+24];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L770:
	R1 = -513 (X);
	R1 <<= 21;
	[SP+12] = R1;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L759 (bp);
	P0 = [SP+56];
	P1 = [SP+60];
	[P5] = R7;
	[SP+24] = P0;
	[SP+28] = P1;
	jump.s .L746;
.L759:
	R4 = 1 (X);
.L750:
	[SP+56] = R5;
	R5 = 511 (X);
	[SP+60] = R6;
	R7 = 0 (X);
	R5 <<= 21;
.L757:
	P2 = [SP+60];
	R2 = [SP+56];
	R0 = [SP+56];
	R1 = [SP+60];
	[SP+12] = P2;
	call ___adddf3;
	[SP+12] = R5;
	R2 = R2 -|- R2 ||
	[SP+56] = R0 ||
	nop;
	[SP+60] = R1;
	call ___ltdf2;
	cc =R0<0;
	R7 += -1;
	if cc jump .L757 (bp);
	jump.s .L756;
.L761:
	R5 = [SP+56];
	R6 = [SP+60];
	R4 = 0 (X);
	jump.s .L750;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -24;
	[SP+16] = R0;
	P3 = R0;
	R0 = R1 | R0;
	cc =R0==0;
	[SP+20] = R1;
	R7 = R1;
	R6 = R2;
	P4 = [SP+68];
	P5 = 0 (X);
	R5 = 0 (X);
	if cc jump .L771;
	R4 = 1 (X);
.L774:
	R2 = P3;
	R0 = R2 & R4;
	[SP+12] = P4;
	R2 = R6;
	R1 = 0 (X);
	call ___muldi3;
	R3 = R1;
	R1 = P5;
	R0 = R0 + R1; cc = ac0;
	R2 = CC;
	CC = R0 < R0;
	R5 = R3 + R5;
	R6 = ROT R6 BY 1;
	R3 = P4;
	R1 = ROT R3 BY 1;
	CC = R0 < R0;
	R7 = ROT R7 BY -1;
	P5 = R0;
	R0 = P3;
	R5 = R5 + R2;
	R2 = ROT R0 BY -1;
	R3 = R2 | R7;
	cc =R3==0;
	P4 = R1;
	P3 = R2;
	if !cc jump .L774 (bp);
.L771:
	SP += 24;
	RETS = [SP++];
	R0 = P5;
	R1 = R5;
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
	if !cc jump .L779;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L778, .L793) LC1 = P2;
.L778:
	cc =R0<0;
	if cc jump .L779;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L780;
.L793:
	R2 += -1;
.L781:
	cc =P1==0;
	if cc jump .L777 (bp);
	R2 = R3;
.L777:
	R0 = R2;
	rts;
.L780:
	cc =R1==0;
	if cc jump .L787;
.L779:
	R2 = 0 (X);
.L784:
	cc =R3<R0 (iu);
	if cc jump .L783 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L783:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L784 (bp);
	jump.s .L781;
.L787:
	R2 = 0 (X);
	jump.s .L781;
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
	if cc jump .L796;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	rts;
.L796:
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
	if cc jump .L803;
.L801:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L803:
	cc =R0==R1;
	if !cc jump .L801 (bp);
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
	R2 = R0;
	I0 = 0 (X);
	if cc jump .L804;
	R3 = 1 (X);
.L806:
	R0 = R2 & R3;
	R0 = -R0;
	R0 = R0 & R1;
	M0 = R0;
	R2 >>= 1;
	cc =R2==0;
	R1 <<= 1;
	I0 += M0;
	if !cc jump .L806 (bp);
.L804:
	R0 = I0;
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
	if cc jump .L813 (bp);
	R5 = R3 + R2;
	cc =R1<=R5 (iu);
	if cc jump .L841 (bp);
.L813:
	cc =R0==0;
	if cc jump .L842;
	R0 <<= 3;
	R0 += -8;
	R0 >>= 3;
	R5 = R0;
	P0 = R3;
	P1 = P5;
	R5 += 1;
	P2 = R5;
	LSETUP (.L816, .L847) LC1 = P2;
.L816:
	P0 += 8;
	R0 = [P0+-8];
	R1 = [P0+-4];
	[P1+4] = R1;
	[P1] = R0;
.L847:
	P1 += 8;
	cc =R2<=R7 (iu);
	if cc jump .L809;
	R5 = R2 - R7;
	R4 = R5;
	R4 += -1;
	cc =R4<=6 (iu);
	if cc jump .L843;
	P2 = R7;
	R4 = R7;
	R4 += 1;
	R6 = R3 + R4;
	R0 = R3 + R7;
	P4 = P5 + P2;
	R1 = P4;
	R4 = R1 - R6;
	cc =R4<=2 (iu);
	if cc jump .L818;
	R6 = R0 | R1;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L818;
	R1 = R5 >> 2;
	R1 <<= 2;
	P1 = R1;
	P0 = R0;
	P1 += -4;
	P2 = P1 >> 2;
	P2 += 1;
	LSETUP (.L819, .L846) LC1 = P2;
.L819:
	R0 = [P0++];
.L846:
	[P4++] = R0;
	R7 = R7 + R1;
	cc =R5==R1;
	P2 = R7;
	if cc jump .L809;
	P4 = R3;
	P1 = P5 + P2;
	P0 = P4 + P2;
	R3 = B [P0] (X);
	B [P1] = R3;
	P1 = R7;
	P1 += 1;
	R5 = P1;
	cc =R2<=R5 (iu);
	if cc jump .L809;
	P2 += 2;
	P0 = P4 + P1;
	R6 = P2;
	R4 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R6 (iu);
	B [P1] = R4;
	if cc jump .L809;
	nop;
	P4 = P4 + P2;
	P5 = P5 + P2;
	R2 = B [P4] (X);
	B [P5] = R2;
.L809:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L841:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L809;
	P0 = R3;
	P4 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L823, .L845) LC1 = P1;
.L823:
	R2 = B [P2--] (X);
.L845:
	B [P4--] = R2;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L842:
	cc =R2==0;
	if cc jump .L809;
	R6 = P5;
	R1 = R6 + R7;
	R0 = R3 + R7;
.L818:
	P0 = R1;
	R1 = R3 + R2;
	P1 = R0;
	P2 = R1;
	P2 -= P1;
	LSETUP (.L821, .L844) LC1 = P2;
.L821:
	R0 = B [P1++] (X);
.L844:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L843:
	R6 = P5;
	R1 = R6 + R7;
	R0 = R3 + R7;
	jump.s .L818;
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
	if cc jump .L852 (bp);
	R1 = R1 + R2;
	cc =R3<=R1 (iu);
	if cc jump .L874 (bp);
.L852:
	cc =R7==0;
	if cc jump .L851;
	R5 = R7;
	R5 += -1;
	R6 = 8 (X);
	cc =R5<=R6 (iu);
	if cc jump .L855;
	R1 = R0 | R3;
	R5 = 3 (X);
	R6 = R1 & R5;
	CC = R6;
	if cc jump .L855;
	R1 = R0;
	R1 += 2;
	cc =R3==R1;
	if cc jump .L855;
	R6 = R2 >> 2;
	R5 = R6 << 2;
	P2 = R5;
	P0 = R0;
	P1 = R3;
	P2 += -4;
	P5 = P2 >> 2;
	P5 += 1;
	LSETUP (.L856, .L878) LC1 = P5;
.L856:
	R1 = [P0++];
.L878:
	[P1++] = R1;
	R6 <<= 1;
	cc =R7==R6;
	if cc jump .L851;
	R7 = R0 + R5;
	P0 = R7;
	R5 = R3 + R5;
	P1 = R5;
	R6 = W [P0] (X);
	W [P1] = R6;
.L851:
	cc = !BITTST (R2,0);
	if cc jump .L848 (bp);
.L875:
	R2 += -1;
	R0 = R0 + R2;
	P5 = R0;
	R3 = R3 + R2;
	P0 = R3;
	R7 = B [P5] (X);
	B [P0] = R7;
.L848:
	( r7:5, p5:5 ) = [sp++];

	rts;
.L874:
	P0 = R2;
	cc =R2==0;
	P0 += -1;
	if cc jump .L848;
	P5 = R0;
	P2 = R3;
	P1 = P5 + P0;
	P5 = P2 + P0;
	P0 += 1;
	LSETUP (.L861, .L877) LC1 = P0;
.L861:
	R2 = B [P1--] (X);
.L877:
	B [P5--] = R2;
	( r7:5, p5:5 ) = [sp++];

	rts;
.L855:
	R7 <<= 1;
	P2 = R7;
	P5 = R0;
	P0 = R3;
	P2 += -2;
	P1 = P2 >> 1;
	P1 += 1;
	LSETUP (.L858, .L876) LC1 = P1;
.L858:
	R1 = W [P5++] (X);
.L876:
	W [P0++] = R1;
	cc = !BITTST (R2,0);
	if cc jump .L848 (bp);
	jump.s .L875;
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
	if cc jump .L883 (bp);
	R7 = R1 + R2;
	cc =R4<=R7 (iu);
	if cc jump .L911 (bp);
.L883:
	cc =R0==0;
	if cc jump .L912;
	R0 <<= 2;
	P2 = R0;
	P0 = R1;
	P1 = P5;
	P2 += -4;
	P4 = P2 >> 2;
	P4 += 1;
	LSETUP (.L886, .L917) LC1 = P4;
.L886:
	R0 = [P0++];
.L917:
	[P1++] = R0;
	cc =R2<=R3 (iu);
	if cc jump .L879;
	R5 = R2 - R3;
	R4 = R5;
	R4 += -1;
	cc =R4<=6 (iu);
	if cc jump .L913;
	P0 = R3;
	R6 = R3;
	R6 += 1;
	R4 = R1 + R6;
	R0 = R1 + R3;
	P4 = P5 + P0;
	R7 = P4;
	R6 = R7 - R4;
	cc =R6<=2 (iu);
	if cc jump .L888;
	R6 = R0 | R7;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L888;
	R7 = R5 >> 2;
	R7 <<= 2;
	P2 = R7;
	P1 = R0;
	P2 += -4;
	P0 = P2 >> 2;
	P0 += 1;
	LSETUP (.L889, .L916) LC1 = P0;
.L889:
	R0 = [P1++];
.L916:
	[P4++] = R0;
	R3 = R3 + R7;
	cc =R5==R7;
	P2 = R3;
	if cc jump .L879;
	P4 = R1;
	P0 = P5 + P2;
	P1 = P4 + P2;
	R1 = B [P1] (X);
	P1 = R3;
	B [P0] = R1;
	P1 += 1;
	R5 = P1;
	cc =R2<=R5 (iu);
	if cc jump .L879;
	P2 += 2;
	P0 = P4 + P1;
	R6 = P2;
	R4 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R6 (iu);
	B [P1] = R4;
	if cc jump .L879;
	nop;
	P4 = P4 + P2;
	P5 = P5 + P2;
	R2 = B [P4] (X);
	B [P5] = R2;
.L879:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L911:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L879;
	P0 = R1;
	P4 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L893, .L915) LC1 = P1;
.L893:
	R1 = B [P2--] (X);
.L915:
	B [P4--] = R1;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L912:
	cc =R2==0;
	if cc jump .L879;
	R5 = P5;
	R7 = R5 + R3;
	R0 = R1 + R3;
.L888:
	P0 = R7;
	R7 = R1 + R2;
	P1 = R0;
	P2 = R7;
	P2 -= P1;
	LSETUP (.L891, .L914) LC1 = P2;
.L891:
	R0 = B [P1++] (X);
.L914:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L913:
	R7 = P5;
	R7 = R7 + R3;
	R0 = R1 + R3;
	jump.s .L888;
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
	R0 = R0.L (Z);
	cc = !BITTST (R0,15);
	if !cc jump .L927;
	R3 = R0 >>> 14;
	cc =R3==0;
	if !cc jump .L924;
	R2 = R0 >>> 13;
	cc =R2==0;
	if !cc jump .L928;
	R3 = R0 >>> 12;
	cc =R3==0;
	if !cc jump .L929;
	R1 = R0 >>> 11;
	cc =R1==0;
	if !cc jump .L930;
	R2 = R0 >>> 10;
	cc =R2==0;
	if !cc jump .L931;
	R3 = R0 >>> 9;
	cc =R3==0;
	if !cc jump .L932;
	R1 = R0 >>> 8;
	cc =R1==0;
	if !cc jump .L933;
	R2 = R0 >>> 7;
	cc =R2==0;
	if !cc jump .L934;
	R3 = R0 >>> 6;
	cc =R3==0;
	if !cc jump .L935;
	R1 = R0 >>> 5;
	cc =R1==0;
	if !cc jump .L936;
	R2 = R0 >>> 4;
	cc =R2==0;
	if !cc jump .L937;
	R3 = R0 >>> 3;
	cc =R3==0;
	if !cc jump .L938;
	R1 = R0 >>> 2;
	cc =R1==0;
	if !cc jump .L939;
	R2 = R0 >>> 1;
	cc =R2==0;
	if !cc jump .L940;
	cc =R0==0;
	R3 = 16 (X);
	if !cc jump .L943;
.L924:
	R0 = R3;
	rts;
.L927:
	R3 = 0 (X);
	jump.s .L924;
.L938:
	R3 = 12 (X);
	jump.s .L924;
.L943:
	R3 = 15 (X);
	jump.s .L924;
.L928:
	R3 = 2 (X);
	jump.s .L924;
.L929:
	R3 = 3 (X);
	jump.s .L924;
.L930:
	R3 = 4 (X);
	jump.s .L924;
.L931:
	R3 = 5 (X);
	jump.s .L924;
.L932:
	R3 = 6 (X);
	jump.s .L924;
.L933:
	R3 = 7 (X);
	jump.s .L924;
.L934:
	R3 = 8 (X);
	jump.s .L924;
.L935:
	R3 = 9 (X);
	jump.s .L924;
.L936:
	R3 = 10 (X);
	jump.s .L924;
.L937:
	R3 = 11 (X);
	jump.s .L924;
.L939:
	R3 = 13 (X);
	jump.s .L924;
.L940:
	R3 = 14 (X);
	jump.s .L924;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	cc = !BITTST (R0,0);
	if !cc jump .L947;
	cc = !BITTST (R0,1);
	if !cc jump .L948;
	cc = !BITTST (R0,2);
	if !cc jump .L949;
	cc = !BITTST (R0,3);
	if !cc jump .L950;
	cc = !BITTST (R0,4);
	if !cc jump .L951;
	cc = !BITTST (R0,5);
	if !cc jump .L952;
	cc = !BITTST (R0,6);
	if !cc jump .L953;
	cc = !BITTST (R0,7);
	if !cc jump .L954;
	cc = !BITTST (R0,8);
	if !cc jump .L955;
	cc = !BITTST (R0,9);
	if !cc jump .L956;
	cc = !BITTST (R0,10);
	if !cc jump .L957;
	cc = !BITTST (R0,11);
	if !cc jump .L958;
	cc = !BITTST (R0,12);
	if !cc jump .L959;
	cc = !BITTST (R0,13);
	if !cc jump .L960;
	cc = !BITTST (R0,14);
	if !cc jump .L961;
	cc = !BITTST (R0,15);
	R1 = 16 (X);
	if !cc jump .L964;
.L944:
	R0 = R1;
	rts;
.L947:
	R1 = 0 (X);
	jump.s .L944;
.L948:
	R1 = 1 (X);
	jump.s .L944;
.L959:
	R1 = 12 (X);
	jump.s .L944;
.L949:
	R1 = 2 (X);
	jump.s .L944;
.L950:
	R1 = 3 (X);
	jump.s .L944;
.L951:
	R1 = 4 (X);
	jump.s .L944;
.L952:
	R1 = 5 (X);
	jump.s .L944;
.L953:
	R1 = 6 (X);
	jump.s .L944;
.L954:
	R1 = 7 (X);
	jump.s .L944;
.L955:
	R1 = 8 (X);
	jump.s .L944;
.L956:
	R1 = 9 (X);
	jump.s .L944;
.L957:
	R1 = 10 (X);
	jump.s .L944;
.L958:
	R1 = 11 (X);
	jump.s .L944;
.L960:
	R1 = 13 (X);
	jump.s .L944;
.L961:
	R1 = 14 (X);
	jump.s .L944;
.L964:
	R1 = 15 (X);
	jump.s .L944;
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
	if !cc jump .L971;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L971:
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
	R3 = R1 & R2;
	R0 = CC;
	cc = BITTST (R1,2);
	R2 = CC;
	R0 = R0 + R3;
	cc = BITTST (R1,3);
	R3 = R0 + R2;
	R0 = CC;
	cc = BITTST (R1,4);
	R2 = CC;
	R3 = R3 + R0;
	cc = BITTST (R1,5);
	R0 = R3 + R2;
	R3 = CC;
	cc = BITTST (R1,6);
	R2 = CC;
	R0 = R0 + R3;
	cc = BITTST (R1,7);
	R3 = R0 + R2;
	R0 = CC;
	cc = BITTST (R1,8);
	R2 = CC;
	R3 = R3 + R0;
	cc = BITTST (R1,9);
	R0 = R3 + R2;
	R3 = CC;
	cc = BITTST (R1,10);
	R2 = CC;
	R0 = R0 + R3;
	cc = BITTST (R1,11);
	R3 = R0 + R2;
	R0 = CC;
	cc = BITTST (R1,12);
	R2 = CC;
	R3 = R3 + R0;
	cc = BITTST (R1,13);
	R0 = R3 + R2;
	R3 = CC;
	cc = BITTST (R1,14);
	R0 = R0 + R3;
	R3 = CC;
	cc = BITTST (R1,15);
	R0 = R0 + R3;
	R1 = CC;
	R2 = 1 (X);
	R3 = R0 + R1;
	R0 = R3 & R2;
	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	R1 = R0;
	cc = BITTST (R1,1);
	R2 = 1 (X);
	R3 = R1 & R2;
	R0 = CC;
	cc = BITTST (R1,2);
	R2 = CC;
	R0 = R0 + R3;
	cc = BITTST (R1,3);
	R3 = R0 + R2;
	R0 = CC;
	M0 = R0;
	cc = BITTST (R1,4);
	I0 = R3;
	R2 = CC;
	cc = BITTST (R1,5);
	M1 = R2;
	R3 = CC;
	cc = BITTST (R1,6);
	M2 = R3;
	R0 = CC;
	cc = BITTST (R1,7);
	M3 = R0;
	R2 = CC;
	I0 += M0;
	cc = BITTST (R1,8);
	M0 = R2;
	R3 = CC;
	cc = BITTST (R1,9);
	R0 = CC;
	I0 += M1;
	cc = BITTST (R1,10);
	M1 = R3;
	R2 = CC;
	I0 += M2;
	cc = BITTST (R1,11);
	M2 = R0;
	R3 = CC;
	I0 += M3;
	M3 = R2;
	cc = BITTST (R1,12);
	I0 += M0;
	M0 = R3;
	R0 = CC;
	cc = BITTST (R1,13);
	R2 = CC;
	I0 += M1;
	cc = BITTST (R1,14);
	M1 = R0;
	R3 = CC;
	I0 += M2;
	cc = BITTST (R1,15);
	M2 = R2;
	I0 += M3;
	R1 = CC;
	M3 = R3;
	I0 += M0;
	M0 = R1;
	I0 += M1;
	I0 += M2;
	I0 += M3;
	I0 += M0;
	R0 = I0;
	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	cc =R0==0;
	R2 = R0;
	I0 = 0 (X);
	if cc jump .L974;
	R3 = 1 (X);
.L976:
	R0 = R2 & R3;
	R0 = -R0;
	R0 = R0 & R1;
	M0 = R0;
	R2 >>= 1;
	cc =R2==0;
	R1 <<= 1;
	I0 += M0;
	if !cc jump .L976 (bp);
.L974:
	R0 = I0;
	rts;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	cc =R0==0;
	R2 = R0;
	I0 = 0 (X);
	if cc jump .L979;
	cc =R1==0;
	if cc jump .L979;
	R3 = 1 (X);
.L981:
	R0 = R1 & R3;
	R0 = -R0;
	R0 = R0 & R2;
	M0 = R0;
	R1 >>= 1;
	cc =R1==0;
	R2 <<= 1;
	I0 += M0;
	if !cc jump .L981 (bp);
.L979:
	R0 = I0;
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
	if cc jump .L987;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L986, .L1001) LC1 = P2;
.L986:
	cc =R0<0;
	if cc jump .L987;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L988;
.L1001:
	R2 += -1;
.L989:
	cc =P1==0;
	if cc jump .L985 (bp);
	R2 = R3;
.L985:
	R0 = R2;
	rts;
.L988:
	cc =R1==0;
	if cc jump .L995;
.L987:
	R2 = 0 (X);
.L992:
	cc =R3<R0 (iu);
	if cc jump .L991 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L991:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L992 (bp);
	jump.s .L989;
.L995:
	R2 = 0 (X);
	jump.s .L989;
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
	if cc jump .L1005;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L1006;
.L1004:
	SP += 12;
	R0 = R5;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L1006:
	R5 = 0 (X);
	jump.s .L1004;
.L1005:
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
	R6 = [SP+48];
	R5 = [SP+52];
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	[SP+40] = R0 ||
	nop;
	[SP+44] = R1;
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L1010;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L1011;
.L1009:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L1011:
	R7 = 0 (X);
	jump.s .L1009;
.L1010:
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
	R3 = R4;
	R4 >>>= 31;
	[SP+20] = R4;
	R0 = ROT R1 BY 0 ||
	[SP+16] = R3 ||
	nop;
	R1 >>>= 31;
	[SP+12] = R1;
	R2 = ROT R0 BY 0 ||
	R1 = [SP+20] ||
	nop;
	R0 = [SP+16];
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
	if cc jump .L1028;
	cc =R1==0;
	if cc jump .L1020;
	P1 = 0 (X);
.L1016:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L1019;
.L1029:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L1018;
.L1019:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L1029 (bp);
.L1018:
	cc =P1==0;
	if cc jump .L1014;
	R3 = -R3;
.L1014:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L1028:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L1016;
.L1020:
	R3 = 0 (X);
	jump.s .L1014;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	R2 = R0;
	cc =R2<0;
	R0 = R1;
	if cc jump .L1048;
	R1 = 1 (X);
	P1 = 0 (X);
.L1031:
	cc =R0<0;
	if !cc jump .L1032 (bp);
	R0 = -R0;
	P1 = R1;
.L1032:
	cc =R2<=R0 (iu);
	R3 = R2;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L1034;
	LSETUP (.L1033, .L1049) LC1 = P2;
.L1033:
	R0 <<= 1;
	cc =R2<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1037;
.L1049:
	nop;
.L1037:
	cc =R1==0;
	R2 = 0 (X);
	if cc jump .L1035;
.L1034:
	R2 = 0 (X);
.L1039:
	cc =R3<R0 (iu);
	if cc jump .L1038 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1038:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1039 (bp);
.L1035:
	cc =P1==0;
	if cc jump .L1030 (bp);
	R2 = -R2;
.L1030:
	R0 = R2;
	rts;
.L1048:
	R2 = -R2;
	R1 = 0 (X);
	P1 = 1 (X);
	jump.s .L1031;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	R0 = R1;
	if cc jump .L1068;
	P1 = 0 (X);
.L1051:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L1067;
	LSETUP (.L1052, .L1070) LC1 = P2;
.L1052:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1056;
.L1070:
	nop;
.L1056:
	cc =R1==0;
	if cc jump .L1069;
.L1067:
	cc =R2<R0 (iu);
	if cc jump .L1057 (bp);
	R2 = R2 - R0;
.L1057:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1067 (bp);
.L1054:
	cc =P1==0;
	if cc jump .L1050 (bp);
	R2 = -R2;
.L1050:
	R0 = R2;
	rts;
.L1068:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L1051;
.L1069:
	R2 = R3;
	jump.s .L1054;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	[--sp] = ( r7:4 );

	R1 = R1.L (Z);
	R6 = R0.L (Z);
	cc =R1<R6 (iu);
	R7 = R1;
	if !cc jump .L1185;
	R3 = R1.L (X);
	cc =R3<0;
	if cc jump .L1074;
	R4 = R1 << 1;
	R5 = R4.L (Z);
	cc =R6<=R5 (iu);
	R3 = R4.L (Z);
	if cc jump .L1075;
	R1 = R4.L (X);
	cc =R1<0;
	if cc jump .L1076;
	R5 = R7 << 2;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1077;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1078;
	R5 = R7 << 3;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1079;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1080;
	R5 = R7 << 4;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1081;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1082;
	R5 = R7 << 5;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1083;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1084;
	R5 = R7 << 6;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1085;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1086;
	R5 = R7 << 7;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1087;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1088;
	R5 = R7 << 8;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1089;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1090;
	R5 = R7 << 9;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1091;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1092;
	R5 = R7 << 10;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1093;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1094;
	R5 = R7 << 11;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1095;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1096;
	R5 = R7 << 12;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1097;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1098;
	R5 = R7 << 13;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1099;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1100;
	R5 = R7 << 14;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5.L (Z);
	if cc jump .L1101;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1102;
	R7 <<= 15;
	R3 = R7.L (Z);
	cc =R6<=R3 (iu);
	R5 = R7;
	if cc jump .L1103;
	cc =R3==0;
	if !cc jump .L1186;
.L1104:
	cc =R2==0;
	if !cc jump .L1071;
	R0 = R5;
.L1071:
	( r7:4 ) = [sp++];

	rts;
.L1091:
	cc =R6<R1 (iu);
	if cc jump .L1137 (bp);
	R0 = R0 - R5;
	R7 = 512 (X);
	R5 = 512 (X);
.L1106:
	R4 = R7 >> 2;
	cc =R4==0;
	R1 = R3 >> 2;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1107 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1107:
	R4 = R7 >> 3;
	cc =R4==0;
	R1 = R3 >> 3;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1108 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1108:
	R4 = R7 >> 4;
	cc =R4==0;
	R1 = R3 >> 4;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1109 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1109:
	R4 = R7 >> 5;
	cc =R4==0;
	R1 = R3 >> 5;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1110 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1110:
	R4 = R7 >> 6;
	cc =R4==0;
	R1 = R3 >> 6;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1111 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1111:
	R4 = R7 >> 7;
	cc =R4==0;
	R1 = R3 >> 7;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1112 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1112:
	R4 = R7 >> 8;
	cc =R4==0;
	R1 = R3 >> 8;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1113 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1113:
	R4 = R7 >> 9;
	cc =R4==0;
	R1 = R3 >> 9;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1114 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1114:
	R4 = R7 >> 10;
	cc =R4==0;
	R1 = R3 >> 10;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1115 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1115:
	R4 = R7 >> 11;
	cc =R4==0;
	R1 = R3 >> 11;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1116 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1116:
	R4 = R7 >> 12;
	cc =R4==0;
	R1 = R3 >> 12;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1117 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1117:
	R4 = R7 >> 13;
	cc =R4==0;
	R1 = R3 >> 13;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1118 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1118:
	R4 = R7 >> 14;
	cc =R4==0;
	R1 = R3 >> 14;
	if cc jump .L1104;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1119 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1119:
	R4 = 16384 (X);
	cc =R7==R4;
	R3 >>= 15;
	if cc jump .L1104;
	R7 = R0.L (Z);
	cc =R7<R3 (iu);
	if cc jump .L1127 (bp);
	R0 = R0 - R3;
	BITSET (R5, 0);
	jump.s .L1104;
.L1127:
	R0 = 0 (X);
	jump.s .L1104;
.L1185:
	cc =R1==R6;
	if cc jump .L1125 (bp);
	R5 = 0 (X);
	jump.s .L1104;
.L1074:
	R0 = R0 - R1;
	R5 = 1 (X);
	jump.s .L1104;
.L1075:
	cc =R6<R5 (iu);
	if cc jump .L1129 (bp);
	R0 = R0 - R4;
	R5 = 2 (X);
	R7 = 2 (X);
	jump.s .L1106;
.L1076:
	R6 = 32767 (X);
	R1 = R6 & R7;
	R0 = R0 - R4;
	P2 = 1 (X);
	R5 = 2 (X);
	R7 = 2 (X);
.L1124:
	R6 = R0.L (Z);
	R4 = R1.L (Z);
	cc =R6<R4 (iu);
	if cc jump .L1106;
	R0 = R0 - R1;
	R1 = P2;
	R5 = R5 | R1;
	jump.s .L1106;
.L1077:
	cc =R6<R1 (iu);
	if cc jump .L1130 (bp);
	R0 = R0 - R5;
	R7 = 4 (X);
	R5 = 4 (X);
	jump.s .L1106;
.L1078:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2 (X);
	R5 = 4 (X);
	R7 = 4 (X);
	jump.s .L1124;
.L1079:
	cc =R6<R1 (iu);
	if cc jump .L1131 (bp);
	R0 = R0 - R5;
	R7 = 8 (X);
	R5 = 8 (X);
	jump.s .L1106;
.L1080:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4 (X);
	R5 = 8 (X);
	R7 = 8 (X);
	jump.s .L1124;
.L1081:
	cc =R6<R1 (iu);
	if cc jump .L1132 (bp);
	R0 = R0 - R5;
	R7 = 16 (X);
	R5 = 16 (X);
	jump.s .L1106;
.L1082:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8 (X);
	R5 = 16 (X);
	R7 = 16 (X);
	jump.s .L1124;
.L1083:
	cc =R6<R1 (iu);
	if cc jump .L1133 (bp);
	R0 = R0 - R5;
	R7 = 32 (X);
	R5 = 32 (X);
	jump.s .L1106;
.L1084:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 16 (X);
	R5 = 32 (X);
	R7 = 32 (X);
	jump.s .L1124;
.L1085:
	cc =R6<R1 (iu);
	if cc jump .L1134 (bp);
	R0 = R0 - R5;
	R7 = 64 (X);
	R5 = 64 (X);
	jump.s .L1106;
.L1086:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 32 (X);
	R5 = 64 (X);
	R7 = 64 (X);
	jump.s .L1124;
.L1087:
	cc =R6<R1 (iu);
	if cc jump .L1135 (bp);
	R0 = R0 - R5;
	R7 = 128 (X);
	R5 = 128 (X);
	jump.s .L1106;
.L1088:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 64 (X);
	R5 = 128 (X);
	R7 = 128 (X);
	jump.s .L1124;
.L1090:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 128 (X);
	R5 = 256 (X);
	R7 = 256 (X);
	jump.s .L1124;
.L1092:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 256 (X);
	R5 = 512 (X);
	R7 = 512 (X);
	jump.s .L1124;
.L1125:
	R5 = 1 (X);
	R0 = 0 (X);
	jump.s .L1104;
.L1129:
	R7 = 2 (X);
.L1123:
	R1 = R7 >> 1;
	P2 = R1;
	R5 = 0 (X);
	R1 = R3 >> 1;
	jump.s .L1124;
.L1094:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 512 (X);
	R5 = 1024 (X);
	R7 = 1024 (X);
	jump.s .L1124;
.L1096:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 1024 (X);
	R5 = 2048 (X);
	R7 = 2048 (X);
	jump.s .L1124;
.L1130:
	R7 = 4 (X);
	jump.s .L1123;
.L1131:
	R7 = 8 (X);
	jump.s .L1123;
.L1098:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2048 (X);
	R5 = 4096 (X);
	R7 = 4096 (X);
	jump.s .L1124;
.L1100:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4096 (X);
	R5 = 8192 (X);
	R7 = 8192 (X);
	jump.s .L1124;
.L1132:
	R7 = 16 (X);
	jump.s .L1123;
.L1133:
	R7 = 32 (X);
	jump.s .L1123;
.L1102:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8192 (X);
	R5 = 16384 (X);
	R7 = 16384 (X);
	jump.s .L1124;
.L1103:
	R6 = R0.L (X);
	cc =R6<0;
	if cc jump .L1128 (bp);
	R3 = 32768 (Z);
	R7 = R3.L (Z);
	jump.s .L1123;
.L1134:
	R7 = 64 (X);
	jump.s .L1123;
.L1186:
	R5 = -32768 (X);
	R1 = 16384 (X);
	R7 = 32768 (Z);
	R0 = R0 + R5;
	P2 = R1;
	R3 = R7;
	jump.s .L1124;
.L1135:
	R7 = 128 (X);
	jump.s .L1123;
.L1089:
	cc =R6<R1 (iu);
	if cc jump .L1136 (bp);
	R0 = R0 - R5;
	R7 = 256 (X);
	R5 = 256 (X);
	jump.s .L1106;
.L1128:
	R7 = 32768 (Z);
	R5 = -32768 (X);
	R0 = 0 (X);
	R3 = R7;
	jump.s .L1106;
.L1136:
	R7 = 256 (X);
	jump.s .L1123;
.L1093:
	cc =R6<R1 (iu);
	if cc jump .L1138 (bp);
	R0 = R0 - R5;
	R7 = 1024 (X);
	R5 = 1024 (X);
	jump.s .L1106;
.L1101:
	cc =R6<R1 (iu);
	if cc jump .L1142 (bp);
	R0 = R0 - R5;
	R7 = 16384 (X);
	R5 = 16384 (X);
	jump.s .L1106;
.L1138:
	R7 = 1024 (X);
	jump.s .L1123;
.L1142:
	R7 = 16384 (X);
	jump.s .L1123;
.L1137:
	R7 = 512 (X);
	jump.s .L1123;
.L1099:
	cc =R6<R1 (iu);
	if cc jump .L1141 (bp);
	R0 = R0 - R5;
	R7 = 8192 (X);
	R5 = 8192 (X);
	jump.s .L1106;
.L1097:
	cc =R6<R1 (iu);
	if cc jump .L1140 (bp);
	R0 = R0 - R5;
	R7 = 4096 (X);
	R5 = 4096 (X);
	jump.s .L1106;
.L1095:
	cc =R6<R1 (iu);
	if cc jump .L1139 (bp);
	R0 = R0 - R5;
	R7 = 2048 (X);
	R5 = 2048 (X);
	jump.s .L1106;
.L1141:
	R7 = 8192 (X);
	jump.s .L1123;
.L1140:
	R7 = 4096 (X);
	jump.s .L1123;
.L1139:
	R7 = 2048 (X);
	jump.s .L1123;
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
	if cc jump .L1189;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1188, .L1203) LC1 = P2;
.L1188:
	cc =R0<0;
	if cc jump .L1189;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1190;
.L1203:
	R2 += -1;
.L1191:
	cc =P1==0;
	if cc jump .L1187 (bp);
	R2 = R3;
.L1187:
	R0 = R2;
	rts;
.L1190:
	cc =R1==0;
	if cc jump .L1197;
.L1189:
	R2 = 0 (X);
.L1194:
	cc =R3<R0 (iu);
	if cc jump .L1193 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1193:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1194 (bp);
	jump.s .L1191;
.L1197:
	R2 = 0 (X);
	jump.s .L1191;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	[--sp] = ( r7:7 );

	R3 = R1;
	R7 = 32 (X);
	R1 = R2;
	if cc jump .L1205 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L1206:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1205:
	cc =R2==0;
	if cc jump .L1208;
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L1206;
.L1208:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	cc = !BITTST (R2,5);
	[--sp] = ( r7:7 );

	R3 = R1;
	R7 = 32 (X);
	R1 = R2;
	if cc jump .L1210 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L1211:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1210:
	cc =R2==0;
	if cc jump .L1213;
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L1211;
.L1213:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	R7 = R1 >> 8;
	R4 = 65280 (Z);
	R5 = R7 & R4;
	R3 = R1 >> 24;
	R6 = R0 >> 24;
	R3 = R3 | R5;
	R7 = R1 << 8;
	R5 = 255 (X);
	R7 = R7 | R6;
	R5 <<= 16;
	R6 = R7 & R5;
	R1 <<= 24;
	R3 = R3 | R6;
	R6 = R0 >> 8;
	R6 = R1 | R6;
	R2 = R0 << 24;
	R3 = R3 | R1;
	R1 = R7.B (Z);
	R2 = R2 | R1;
	R4 = R6 & R4;
	R0 <<= 8;
	R0 = R0 & R5;
	R7 = R2 | R4;
	R1 = R7 | R0;
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
	R3 = 255 (X);
	R3 <<= 16;
	R0 <<= 8;
	R1 = R1 | R2;
	R0 = R0 & R3;
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
	R3 = 16 (X);
	[--sp] = ( r7:7 );

	R7 = R3 - R2;
	R0 >>= R7;
	R1 = 65280 (Z);
	R3 = R0 & R1;
	cc =R3==0;
	R7 = CC;
	R7 <<= 3;
	R1 = 8 (X);
	R3 = R1 - R7;
	R0 >>= R3;
	R2 = R7 + R2;
	R7 = 240 (X);
	R1 = R0 & R7;
	cc =R1==0;
	R7 = CC;
	R7 <<= 2;
	R3 = 4 (X);
	R1 = R3 - R7;
	R0 >>= R1;
	R2 = R7 + R2;
	R7 = 12 (X);
	R3 = R0 & R7;
	cc =R3==0;
	R1 = CC;
	R1 <<= 1;
	R3 = 2 (X);
	R7 = R3 - R1;
	R0 >>= R7;
	R3 = R3 - R0;
	cc = !BITTST (R0,1);
	R0 = R1 + R2;
	P1 = R0;
	P2 = 0 (X);
	if cc P2 = R3;
	( r7:7 ) = [sp++];

	P0 = P2 + P1;
	R0 = P0;
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
	if cc jump .L1221;
	cc =R0<=R2;
	if !cc jump .L1222;
	cc =R3<R1 (iu);
	if cc jump .L1221;
	cc =R3<=R1 (iu);
	if !cc jump .L1222;
	R0 = 1 (X);
	rts;
.L1221:
	R0 = 0 (X);
	rts;
.L1222:
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
	if cc jump .L1227;
	cc =R0<=R2;
	if !cc jump .L1226;
	cc =R3<R1 (iu);
	if cc jump .L1227;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1227:
	R0 = -1 (X);
	rts;
.L1226:
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
	R3 = R0.B (Z);
	cc =R3==0;
	[--sp] = ( r7:7 );

	R7 = CC;
	R7 <<= 3;
	R0 >>= R7;
	R1 = 15 (X);
	R3 = R0 & R1;
	cc =R3==0;
	R2 = R7 + R2;
	R7 = CC;
	R7 <<= 2;
	R0 >>= R7;
	R3 = 3 (X);
	R1 = R0 & R3;
	cc =R1==0;
	R1 = CC;
	R1 <<= 1;
	R0 >>= R1;
	R0 = R0 & R3;
	R2 = R7 + R2;
	R3 = ~R0;
	R7 = 1 (X);
	R3 = R3 & R7;
	R0 >>= 1;
	R7 = 2 (X);
	R0 = R7 - R0;
	R3 = R3.L * R0.L (FU);
	R2 = R1 + R2;
	I0 = R2;
	M0 = R3;
	( r7:7 ) = [sp++];

	I0 += M0;
	R0 = I0;
	rts;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	cc = !BITTST (R2,5);
	[--sp] = ( r7:7 );

	R3 = R1;
	R7 = 32 (X);
	R1 = R2;
	if cc jump .L1230 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L1231:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1230:
	cc =R2==0;
	if cc jump .L1233;
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L1231;
.L1233:
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
	R1 >>= 16;
	R3 = R3.L (Z);
	R2 = R7.L * R2.L (FU);
	R3 = R3 + R6;
	R7 = R1 + R2;
	R0 >>= 16;
	R1 = R7 + R0;
	R0 = R3;
	( r7:6 ) = [sp++];

	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--sp] = ( r7:4 );

	R7 = R0.L * R2.L (FU);
	R5 = R0 >> 16;
	R3 = R0;
	R6 = R7 >> 16;
	R0 = R2.L * R5.L (FU);
	P2 = R1;
	R1 = R2;
	R4 = R1 >> 16;
	R0 = R0 + R6;
	R2 = R0.L (Z);
	R6 = R3.L * R4.L (FU);
	R5 = R5.L * R4.L (FU);
	R6 = R6 + R2;
	R0 >>= 16;
	R0 = R0 + R5;
	R2 = R6 << 16;
	R6 >>= 16;
	R4 = R0 + R6;
	R6 = [SP+28];
	R3 *= R6;
	M0 = R3;
	R3 = P2;
	R1 *= R3;
	I0 = R4;
	M1 = R1;
	R7 = R7.L (Z);
	R7 = R7 + R2;
	R0 = R7;
	I0 += M0;
	I0 += M1;
	R1 = I0;
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
	R3 = R1 ^ R0;
	R1 = R3 >> 16;
	R2 = R1 ^ R3;
	R0 = R2 >> 8;
	R3 = R0 ^ R2;
	R1 = R3 >> 4;
	R2 = R1 ^ R3;
	R0 = 15 (X);
	R3 = R2 & R0;
	R2 = 27030 (X);
	R2 >>>= R3;
	R1 = 1 (X);
	R0 = R2 & R1;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	R1 = R0 >> 16;
	R2 = R1 ^ R0;
	R0 = R2 >> 8;
	R3 = R0 ^ R2;
	R1 = R3 >> 4;
	R2 = R1 ^ R3;
	R0 = 15 (X);
	R3 = R2 & R0;
	R2 = 27030 (X);
	R2 >>>= R3;
	R1 = 1 (X);
	R0 = R2 & R1;
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
	CC = R0 < R0;
	R0 = [SP+4];
	R1 = [SP];
	R3 = ROT R0 BY -1;
	R7.H = 21845;
	R7.L = 21845;
	R2 = ROT R1 BY -1;
	R2 = R2 & R7;
	R1 = R1 - R2; cc = ac0;
	R3 = R3 & R7;
	CC = ! CC;
	R7 = CC;
	R0 = R0 - R3;
	R0 = R0 - R7;
	R3 = R1 >> 2;
	R2 = R0 << 30;
	R7.H = 13107;
	R7.L = 13107;
	R2 = R2 | R3;
	R2 = R2 & R7;
	R3 = R0 >> 2;
	R1 = R1 & R7;
	R1 = R2 + R1; cc = ac0;
	R3 = R3 & R7;
	R0 = R0 & R7;
	R2 = R3 + R0;
	R7 = CC;
	R7 = R2 + R7;
	R3 = R7 << 28;
	R0 = R1 >> 4;
	R2 = R3 | R0;
	R3 = R2 + R1; cc = ac0;
	R0 = R7 >> 4;
	R7 = R0 + R7;
	R1 = CC;
	R0.H = 3855;
	R2 = R7 + R1;
	R0.L = 3855;
	R1 = R2 & R0;
	R3 = R3 & R0;
	R7 = R1 + R3;
	R2 = R7 >> 16;
	R3 = R2 + R7;
	R0 = R3 >> 8;
	R7 = R0 + R3;
	R1 = 127 (X);
	SP += 8;
	R0 = R7 & R1;
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
	R3 = R1 & R2;
	R0 = R0 - R3;
	R2.H = 13107;
	R1 = R0 >> 2;
	R2.L = 13107;
	R3 = R1 & R2;
	R0 = R0 & R2;
	R1 = R3 + R0;
	R2 = R1 >> 4;
	R0.H = 3855;
	R3 = R2 + R1;
	R0.L = 3855;
	R2 = R3 & R0;
	R1 = R2 >> 16;
	R3 = R1 + R2;
	R0 = R3 >> 8;
	R2 = R0 + R3;
	R1 = 63 (X);
	R0 = R2 & R1;
	rts;
	.size	___popcountsi2, .-___popcountsi2
	.align 4
.global ___powidf2;
.type ___powidf2, STT_FUNC;
___powidf2:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	R7 = R1;
	R1 = 1023 (X);
	SP += -32;
	R6 = R0;
	R1 <<= 20;
	R0 = R0 -|- R0 ||
	[SP+20] = R1 ||
	nop;
	cc = !BITTST (R2,0);
	R4 = ROT R2 BY 0 ||
	[SP+16] = R0 ||
	nop;
	R5 = R2;
	if cc jump .L1242 (bp);
.L1244:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1242:
	R3 = R5 >> 31;
	R5 = R3 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L1243;
.L1245:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L1244 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L1245;
.L1243:
	cc =R4<0;
	if !cc jump .L1241 (bp);
	P1 = [SP+20];
	R1 = 1023 (X);
	R2 = [SP+16];
	R0 = 0 (X);
	[SP+12] = P1;
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1241:
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
	if cc jump .L1249 (bp);
.L1251:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L1249:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L1250;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1251 (bp);
.L1255:
	R1 = R7 >> 31;
	R7 = R1 + R7;
	R0 = R6;
	R1 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1251 (bp);
	jump.s .L1255;
.L1250:
	cc =R4<0;
	if !cc jump .L1248 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L1248:
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
	if cc jump .L1260;
	cc =R0<=R2 (iu);
	if !cc jump .L1261;
	cc =R3<R1 (iu);
	if cc jump .L1260;
	cc =R3<=R1 (iu);
	if !cc jump .L1261;
	R0 = 1 (X);
	rts;
.L1260:
	R0 = 0 (X);
	rts;
.L1261:
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
	if cc jump .L1266;
	cc =R0<=R2 (iu);
	if !cc jump .L1265;
	cc =R3<R1 (iu);
	if cc jump .L1266;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1266:
	R0 = -1 (X);
	rts;
.L1265:
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
