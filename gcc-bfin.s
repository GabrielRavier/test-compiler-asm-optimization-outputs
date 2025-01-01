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
	R0 = P4;
	( p5:4 ) = [sp++];

	rts;
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
	R0 = R3;
	rts;
.L28:
	cc =R1==0;
	if cc jump .L22;
	R3 = P2;
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
	R0 = P1;
	rts;
.L39:
	cc =R1==0;
	if cc jump .L36;
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
	( r7:7 ) = [sp++];

	rts;
.L52:
	cc =R2==0;
	if cc jump .L46 (bp);
	R0 = R7 - R3;
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
	jump.s .L60;
.L62:
	P2 = R0;
	R0 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if cc jump .L59;
.L60:
	cc =R0==R3;
	if !cc jump .L62 (bp);
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
	if cc jump .L64;
	P1 = R3;
	LSETUP (.L65, .L70) LC1 = P2;
.L65:
.L70:
	B [P1++] = R0;
.L64:
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
	if cc jump .L74;
	P1 += 1;
	P2 += 1;
.L73:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L73 (bp);
	R0 = R1;
	rts;
.L74:
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
	if !cc jump .L77 (bp);
	jump.s .L76;
.L79:
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L76;
.L77:
	R0 = R0.B (Z);
	cc =R0==R2;
	if !cc jump .L79 (bp);
.L76:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
	jump.s .L85;
.L88:
	cc =R0==0;
	if cc jump .L87;
	nop;
	nop;
.L85:
	R2 = P2;
	R0 = B [P2++] (X);
	cc =R0==R1;
	if !cc jump .L88 (bp);
	R0 = R2;
	rts;
.L87:
	R2 = 0 (X);
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
	if !cc jump .L90;
	P1 += 1;
	P2 += 1;
	jump.s .L91;
.L92:
	nop;
	R1 = B [P1++] (X);
	R2 = B [P2++] (X);
	R0 = R1.B (X);
	R3 = R2.B (X);
	cc =R0==R3;
	if !cc jump .L90;
.L91:
	cc =R0==0;
	if !cc jump .L92 (bp);
.L90:
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
	if cc jump .L96;
	R0 = P1;
	R0 += 1;
.L95:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L95 (bp);
	P2 -= P1;
	R0 = P2;
	rts;
.L96:
	P2 = P1;
	P2 -= P1;
	R0 = P2;
	rts;
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
	if cc jump .L103;
	nop;
	nop;
	nop;
	R0 = B [P0] (Z);
	cc =R0==0;
	if cc jump .L100;
	P1 = R1;
	P0 += 1;
.L101:
	P5 = P1;
	R1 = B [P1++] (Z);
	cc =R1==0;
	if cc jump .L100;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L109;
	nop;
	nop;
	nop;
.L100:
	R1 = B [P5] (Z);
	R0 = R0 - R1;
	( p5:5 ) = [sp++];

	rts;
.L109:
	cc =R1==R0;
	if !cc jump .L100;
	nop;
	nop;
	nop;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if !cc jump .L101 (bp);
	P5 = P1;
	jump.s .L100;
.L103:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =R2<=1;
	if cc jump .L112;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L114, .L116) LC1 = P0;
.L114:
	R0 = B [P2+1] (X);
	B [P1] = R0;
	R0 = B [P2] (X);
	B [P1+1] = R0;
	P1 += 2;
.L116:
	P2 += 2;
.L112:
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
	if cc jump .L121;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L121:
	R0 = 1 (X);
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L124 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L124:
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
	if cc jump .L131;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
	rts;
.L131:
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
	if cc jump .L137 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if !cc jump .L138 (bp);
.L137:
	R0 = 1 (X);
	rts;
.L138:
	P1 = -8232 (X);
	P1 = P2 + P1;
	cc =P1<=1 (iu);
	if cc jump .L137;
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
	if cc jump .L147;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L145;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L145;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L145;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L146;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L145:
	R0 = 1 (X);
	rts;
.L147:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L146:
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
	if cc jump .L150 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
	rts;
.L150:
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
	if !cc jump .L155;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L156;
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L160 (bp);
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
.L152:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L160:
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L155:
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L152;
.L156:
	R1 = [SP+40];
	R2 = [SP+44];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L152;
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
	if !cc jump .L161;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L165;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L168 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L161:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L168:
	R7 = 0 (X);
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L165:
	R7 = R6;
	jump.s .L161;
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
	if !cc jump .L177;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L176;
	R0 = [SP+44];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L171 (bp);
	cc =R0==0;
	if !cc jump .L177 (bp);
.L176:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L177:
	R0 = [SP+48];
	R1 = [SP+52];
.L178:
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L171:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L177 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L178;
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
	if !cc jump .L179 (bp);
.L186:
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
	if !cc jump .L179 (bp);
	jump.s .L186;
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
	if !cc jump .L197;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L196;
	R0 = [SP+44];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L191 (bp);
	cc =R0==0;
	if !cc jump .L197 (bp);
.L196:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L197:
	R0 = [SP+48];
	R1 = [SP+52];
.L198:
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L191:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L197 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L198;
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
	if !cc jump .L205;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L207;
	R0 = [SP+36];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L209 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L207 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L208:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L209:
	cc =R0==0;
	if !cc jump .L207 (bp);
.L205:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L207:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L208;
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
	if !cc jump .L216;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L210;
	R0 = R7 >>> 31;
	R0 <<= 31;
	R1 = R6 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L212 (bp);
	cc =R0==0;
	if !cc jump .L210 (bp);
.L216:
	R7 = R6;
.L210:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L212:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L210 (bp);
	jump.s .L216;
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
	if !cc jump .L226;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L228;
	R0 = [SP+36];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L230 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L228 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L229:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L230:
	cc =R0==0;
	if !cc jump .L228 (bp);
.L226:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L228:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L229;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	P1.L = _s.0;
	cc =R0==0;
	if cc jump .L232;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L233:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
	cc =R0==0;
	if !cc jump .L233 (bp);
.L232:
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
	if cc jump .L244;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L238;
	[P1+4] = P2;
.L238:
	rts;
.L244:
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
	if cc jump .L246;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L246:
	P1 = [P2+4];
	cc =P1==0;
	if cc jump .L245;
	nop;
	nop;
	nop;
	R0 = [P2];
	[P1] = R0;
.L245:
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
	if cc jump .L255;
	R7 = R1;
	FP = 0 (X);
	jump.s .L257;
.L269:
	FP += 1;
	R0 = P5;
	R7 = R7 + R0;
	R0 = FP;
	cc =R6==R0;
	if cc jump .L255;
.L257:
	R4 = R7;
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	if !cc jump .L269 (bp);
.L254:
	R0 = R4;
	SP += 12;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L255:
	R0 = R6;
	R0 += 1;
	[P3] = R0;
	R0 = P5;
	R6 *= R0;
	R0 = [SP+52];
	R4 = R0 + R6;
	cc =P5==0;
	if cc jump .L254;
	R2 = P5;
	R1 = R5;
	R0 = R4;
	call _memmove;
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
	if cc jump .L271;
	R6 = 0 (X);
	jump.s .L273;
.L281:
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R4==R6;
	if cc jump .L271;
.L273:
	P3 = R7;
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	if !cc jump .L281 (bp);
.L270:
	R0 = P3;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L271:
	P3 = 0 (X);
	jump.s .L270;
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
.L297:
	P1 = P0;
	R0 = B [P0++] (X);
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L297;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	R3 = CC;
	P2 = R3;
	if cc jump .L297 (bp);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L293;
	R3 = 45 (X);
	cc =R0==R3;
	if cc jump .L299 (bp);
	R2 = 0 (X);
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L288 (bp);
.L300:
	cc =R2==0;
	if !cc jump .L283 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L283:
	R0 = P2;
	rts;
.L299:
	R2 = 1 (X);
.L286:
	P1 += 1;
	jump.s .L287;
.L288:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 += -48;
	R0 = R0.B (X);
	P0 = R0;
	P2 -= P0;
.L287:
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if cc jump .L288 (bp);
	jump.s .L300;
.L293:
	R2 = 0 (X);
	jump.s .L286;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	jump.l _atoi;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -24;
	P2 = R0;
.L315:
	P5 = P2;
	R0 = B [P2++] (X);
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L315;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	R5 = CC;
	if cc jump .L315 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L305;
	R1 = 45 (X);
	cc =R0==R1;
	if cc jump .L318 (bp);
	R7 = B [P5] (X);
	R0 = R7.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L319;
.L309:
	P5 += 1;
	R4 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L307:
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
	if cc jump .L307 (bp);
.L308:
	cc =R5==0;
	if !cc jump .L302 (bp);
	CC = R4;
	R0 = CC;
	R1 = -R1;
	R4 = -R4;
	R1 = R1 - R0;
.L302:
	R0 = R4;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L318:
	R5 = 1 (X);
.L305:
	P5 += 1;
	R7 = B [P5] (X);
	R0 = R7.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L309 (bp);
.L319:
	R4 = 0 (X);
	R1 = 0 (X);
	jump.s .L308;
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
.L330:
	cc =R7==0;
	if cc jump .L321;
.L331:
	P2 = R7;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L325;
	cc =R0<=0;
	if cc jump .L320;
	R5 = R6 + R4;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	cc =R7==0;
	if !cc jump .L331 (bp);
.L321:
	R6 = 0 (X);
.L320:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L325:
	R7 = P3;
	jump.s .L330;
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
	if !cc jump .L336 (bp);
	jump.s .L333;
.L344:
	cc =R0<=0;
	if cc jump .L335;
	R0 = P3;
	R6 = R0 + R5;
	R7 += -1;
	R7 >>>= 1;
	FP = R7;
.L335:
	R7 = FP;
	cc =R7==0;
	if cc jump .L333;
.L336:
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
	if !cc jump .L344 (bp);
.L332:
	R0 = P3;
	SP += 12;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L333:
	P3 = 0 (X);
	jump.s .L332;
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
	if !cc jump .L347 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L347:
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
	if !cc jump .L353 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L353:
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
	if !cc jump .L357 (bp);
	jump.s .L362;
.L359:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L362;
.L357:
	cc =R1==R0;
	if !cc jump .L359 (bp);
	cc =R0==0;
	if cc jump .L362;
	R0 = P2;
	rts;
.L362:
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
	if !cc jump .L366;
	P1 += 4;
	P2 += 4;
	jump.s .L367;
.L374:
	cc =R1==0;
	if cc jump .L366;
	nop;
	nop;
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L366;
.L367:
	cc =R0==0;
	if !cc jump .L374 (bp);
.L366:
	cc =R0<R1;
	if cc jump .L370 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L370:
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
.L376:
	nop;
	R0 = [P2++];
	[P1++] = R0;
	cc =R0==0;
	if !cc jump .L376 (bp);
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
	if cc jump .L381;
	R0 = P1;
	R0 += 4;
.L380:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L380 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L381:
	P2 = P1;
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:5 );

	cc =R2==0;
	if cc jump .L388;
	P2 = R0;
	R0 = R1;
	P1 = R2;
	LSETUP (.L385, .L395) LC1 = P1;
.L385:
	P0 = R0;
	P5 = P2;
	R1 = [P2++];
	R0 += 4;
	R3 = [P0];
	cc =R1==R3;
	if !cc jump .L384;
	cc =R1==0;
	if cc jump .L384;
.L395:
	R2 += -1;
.L388:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L384:
	cc =R2==0;
	if cc jump .L388 (bp);
	R0 = [P5];
	R1 = [P0];
	cc =R0<R1;
	if cc jump .L389 (bp);
	cc =R1<R0;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L389:
	R0 = -1 (X);
	( p5:5 ) = [sp++];

	rts;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	R3 = R1;
	R1 = R2;
	cc =R2==0;
	if cc jump .L402;
	P2 = R2;
	LSETUP (.L398, .L406) LC1 = P2;
.L398:
	P1 = R0;
	R0 += 4;
	R2 = [P1];
	cc =R2==R3;
	if cc jump .L405;
.L406:
	R1 += -1;
.L402:
	P1 = 0 (X);
	R0 = P1;
	rts;
.L405:
	cc =R1==0;
	if cc jump .L402;
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
	if cc jump .L412;
	R1 = R0;
	R0 = P1;
	P2 = R2;
	LSETUP (.L409, .L420) LC1 = P2;
.L409:
	P1 = R0;
	P0 = R1;
	R1 += 4;
	R0 += 4;
	R3 = [P1];
	R7 = [P0];
	cc =R7==R3;
	if !cc jump .L419;
.L420:
	R2 += -1;
.L412:
	R0 = 0 (X);
	( r7:7 ) = [sp++];

	rts;
.L419:
	cc =R2==0;
	if cc jump .L412 (bp);
	cc =R7<R3;
	if cc jump .L413 (bp);
	cc =R3<R7;
	R0 = CC;
	( r7:7 ) = [sp++];

	rts;
.L413:
	R0 = -1 (X);
	( r7:7 ) = [sp++];

	rts;
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
	if cc jump .L422;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L422:
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
	if cc jump .L427;
	P0 = R0;
	P2 = R1;
	P2 += -1;
	R3 = R0 - R2;
	R2 = R1 << 2;
	cc =R3<R2 (iu);
	if !cc jump .L437 (bp);
	cc =R1==0;
	if cc jump .L427;
	P2 = P2 << 2;
	P1 = P1 + P2;
	P0 = P0 + P2;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L430, .L439) LC1 = P2;
.L430:
	R1 = [P1--];
.L439:
	[P0--] = R1;
.L427:
	( p5:5 ) = [sp++];

	rts;
.L437:
	P2 += 1;
	cc =R1==0;
	if cc jump .L427;
	nop;
	nop;
	LSETUP (.L429, .L438) LC1 = P2;
.L429:
	R1 = [P1++];
.L438:
	[P0++] = R1;
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
	if cc jump .L441;
	P1 = R3;
	P2 += 1;
	LSETUP (.L442, .L447) LC1 = P2;
.L442:
.L447:
	[P1++] = R0;
.L441:
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
	if !cc jump .L449 (bp);
	P0 = P5 + P1;
	cc =P1==0;
	if cc jump .L448;
	P1 += -1;
	P2 = P2 + P1;
	P4 = P0;
	P4 += -1;
	P0 -= P5;
	LSETUP (.L451, .L462) LC1 = P0;
.L451:
	R0 = B [P4--] (X);
.L462:
	B [P2--] = R0;
.L448:
	( p5:4 ) = [sp++];

	rts;
.L449:
	cc =P5==P2;
	if cc jump .L448;
	cc =P1==0;
	if cc jump .L448;
	nop;
	nop;
	LSETUP (.L452, .L461) LC1 = P1;
.L452:
	R0 = B [P5++] (X);
.L461:
	B [P2++] = R0;
	( p5:4 ) = [sp++];

	rts;
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
	LSETUP (.L479, .L481) LC1 = P2;
.L479:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L476;
.L481:
	nop;
	R0 = 0 (X);
.L476:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L485;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L482;
	R1 = 1 (X);
.L484:
	R0 >>>= 1;
	R1 += 1;
	cc = !BITTST (R0,0);
	if cc jump .L484 (bp);
.L482:
	R0 = R1;
	rts;
.L485:
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
	SP += -12;
	R7 = R0;
	R1 = -1 (X);
	R1.H = 65407;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L491 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L492;
.L490:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L491:
	R0 = 1 (X);
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L492:
	R6 = 0 (X);
	jump.s .L490;
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
	if cc jump .L496 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L497;
.L495:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L496:
	R0 = 1 (X);
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L497:
	R7 = 0 (X);
	jump.s .L495;
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
	if cc jump .L501 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L502;
.L500:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L501:
	R0 = 1 (X);
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L502:
	R7 = 0 (X);
	jump.s .L500;
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
	if !cc jump .L505;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L505 (bp);
	cc =R7<0;
	if cc jump .L518;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L509;
.L519:
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L509:
	cc = !BITTST (R7,0);
	if cc jump .L508 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
.L508:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if !cc jump .L519 (bp);
.L505:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L518:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L509;
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
	if !cc jump .L521;
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
	if cc jump .L521 (bp);
	R4 = 0 (X);
	cc =R7<0;
	if cc jump .L534;
	R5 = 1 (X);
	R5 <<= 30;
	jump.s .L525;
.L535:
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L525:
	cc = !BITTST (R7,0);
	if cc jump .L524 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L524:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if !cc jump .L535 (bp);
.L521:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L534:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L525;
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
	R7 = R1;
	[SP+12] = R1;
	R2 = R0;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L537;
	[SP+12] = R7;
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
	if cc jump .L537 (bp);
	R6 = 0 (X);
	cc =R5<0;
	if cc jump .L550;
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L541;
.L551:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L541:
	cc = !BITTST (R5,0);
	if cc jump .L540 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L540:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if !cc jump .L551 (bp);
.L537:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L550:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L541;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	R3 = R0;
	P0 = R1;
	P2 = R2;
	cc =P2==0;
	if cc jump .L553;
	nop;
	P1 = R0;
	LSETUP (.L554, .L559) LC1 = P2;
.L554:
	R0 = B [P1++] (X);
	R1 = B [P0++] (X);
	R0 = R0 ^ R1;
.L559:
	B [P1+-1] = R0;
.L553:
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
	if cc jump .L567;
	R0 = P4;
	R0 += 1;
.L562:
	P1 = R0;
	R0 += 1;
	R2 = B [P1] (X);
	cc =R2==0;
	if !cc jump .L562 (bp);
.L561:
	cc =R1==0;
	if cc jump .L569;
	P2 = P1;
	P0 = R1;
	LSETUP (.L564, .L574) LC1 = P0;
.L564:
	P1 = P2;
	R0 = B [P5++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L573;
.L574:
	R1 += -1;
	P1 = P2;
	jump.s .L569;
.L573:
	cc =R1==0;
	if !cc jump .L566 (bp);
.L569:
	R0 = 0 (X);
	B [P1] = R0;
.L566:
	R0 = P4;
	( p5:4 ) = [sp++];

	rts;
.L567:
	P1 = P4;
	jump.s .L561;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	R1 = 0 (X);
	cc =R0==0;
	if cc jump .L575;
	nop;
	P1 = R0;
	LSETUP (.L577, .L584) LC1 = P1;
.L577:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L583;
.L575:
	R0 = R1;
	rts;
.L583:
.L584:
	R1 += 1;
	R1 = R0;
	jump.s .L575;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L590;
.L586:
	P2 = R2;
	jump.s .L589;
.L588:
	cc =R0==R1;
	if cc jump .L587;
	nop;
	nop;
	nop;
.L589:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L588 (bp);
	P1 += 1;
	R1 = B [P1] (X);
	cc =R1==0;
	if !cc jump .L586 (bp);
.L590:
	P1 = 0 (X);
.L587:
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
.L594:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R0==R2;
	if !cc jump .L593 (bp);
	R3 = R1;
.L593:
	cc =R0==0;
	if !cc jump .L594 (bp);
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
	if cc jump .L608;
	R0 = R1;
	R0 += 1;
.L599:
	P1 = R0;
	R0 += 1;
	R1 = B [P1] (X);
	cc =R1==0;
	if !cc jump .L599 (bp);
.L598:
	R1 = P1;
	R3 = P4;
	R0 = R1 - R3;
	cc =P1==P4;
	if cc jump .L609;
	R0 += -1;
	P1 = R0;
	P5 = P4 + P1;
	jump.s .L606;
.L621:
	cc =R0==0;
	if cc jump .L620;
	nop;
	nop;
.L606:
	P1 = P2;
	R0 = B [P2++] (X);
	cc =R0==R2;
	if !cc jump .L621 (bp);
	cc =P1==0;
	if cc jump .L597;
	nop;
	nop;
	nop;
	R0 = B [P1] (Z);
	cc =R0==0;
	if cc jump .L610;
	P0 = P1;
	P0 += 1;
	P2 = P4;
	jump.s .L603;
.L622:
	cc =P2==P5;
	if cc jump .L611;
	cc =R1==R0;
	if !cc jump .L602;
	nop;
	nop;
	P2 += 1;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if cc jump .L602;
	nop;
	nop;
	nop;
.L603:
	R1 = B [P2] (Z);
	cc =R1==0;
	if !cc jump .L622 (bp);
.L602:
	R1 = B [P2] (Z);
	cc =R1==R0;
	if cc jump .L597;
	P2 = P1;
	P2 += 1;
	jump.s .L606;
.L620:
	P1 = 0 (X);
.L597:
	R0 = P1;
	( p5:4 ) = [sp++];

	rts;
.L611:
	P2 = P5;
	jump.s .L602;
.L609:
	P1 = P2;
	R0 = P1;
	( p5:4 ) = [sp++];

	rts;
.L610:
	P2 = P4;
	jump.s .L602;
.L608:
	P1 = R1;
	jump.s .L598;
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
.L635:
	cc =P5<=P4 (iu);
	if !cc jump .L643;
	nop;
	nop;
.L640:
	nop;
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
.L654:
	cc =R2==0;
	if cc jump .L633 (bp);
	cc =R7==R3;
	if cc jump .L633;
	cc =P5<=P4 (iu);
	if cc jump .L640 (bp);
.L643:
	I0 = 0 (X);
	R0 = I0;
	( r7:5, p5:3 ) = [sp++];

	rts;
.L641:
	I0 = R0;
	R0 = I0;
	( r7:5, p5:3 ) = [sp++];

	rts;
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
	LSETUP (.L696, .L712) LC1 = P2;
.L696:
	cc =R0<0;
	if cc jump .L697;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L697;
.L712:
	nop;
.L705:
	R2 = 0 (X);
.L699:
	cc =P1==0;
	if cc jump .L695 (bp);
	R2 = R3;
.L695:
	R0 = R2;
	rts;
.L697:
	cc =R1==0;
	if cc jump .L705;
.L711:
	R2 = 0 (X);
.L701:
	cc =R3<R0 (iu);
	if cc jump .L700 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L700:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if !cc jump .L701 (bp);
	jump.s .L699;
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
	if cc jump .L715;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
	SP += 12;
	RETS = [SP++];
	rts;
.L715:
	R0 = 7 (X);
	SP += 12;
	RETS = [SP++];
	rts;
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
	if cc jump .L722;
.L720:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	R0 += -1;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L722:
	cc =R0==R1;
	if !cc jump .L720 (bp);
	R0 = 63 (X);
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = 0 (X);
	cc =R0==0;
	if cc jump .L723;
	R7 = 1 (X);
.L725:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L725 (bp);
.L723:
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
	if cc jump .L729 (bp);
	R2 = R7 + R0;
	R3 = P1;
	cc =R3<=R2 (iu);
	if cc jump .L742 (bp);
.L729:
	cc =R1==0;
	if cc jump .L732;
	P5 = R7;
	P0 = P1;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P2 += 1;
	LSETUP (.L733, .L745) LC1 = P2;
.L733:
	R2 = [P5];
	R3 = [P5+4];
	[P0] = R2;
	[P0+4] = R3;
	P5 += 8;
.L745:
	P0 += 8;
.L732:
	cc =R0<=R6 (iu);
	if cc jump .L728;
	P2 = R6;
	P1 = P1 + P2;
	R7 = R7 + R6;
	P0 = R7;
	R0 = R0 - R6;
	P2 = R0;
	LSETUP (.L734, .L744) LC1 = P2;
.L734:
	R0 = B [P0++] (X);
.L744:
	B [P1++] = R0;
.L728:
	( r7:6, p5:5 ) = [sp++];

	rts;
.L742:
	P2 += -1;
	cc =R0==0;
	if cc jump .L728;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L735, .L743) LC1 = P2;
.L735:
	R0 = B [P0--] (X);
.L743:
	B [P1--] = R0;
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
	if cc jump .L761 (bp);
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
	LSETUP (.L751, .L763) LC1 = P2;
.L751:
	R0 = W [P0++] (X);
.L763:
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
.L761:
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
	if cc jump .L765 (bp);
	R7 = R3 + R0;
	cc =R6<=R7 (iu);
	if cc jump .L778 (bp);
.L765:
	cc =R1==0;
	if cc jump .L768;
	P5 = R3;
	P0 = P1;
	P4 = R1;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L769, .L781) LC1 = P2;
.L769:
	R1 = [P5++];
.L781:
	[P0++] = R1;
.L768:
	cc =R0<=R2 (iu);
	if cc jump .L764;
	P5 = R2;
	P1 = P1 + P5;
	R3 = R3 + R2;
	P0 = R3;
	R0 = R0 - R2;
	P2 = R0;
	LSETUP (.L770, .L780) LC1 = P2;
.L770:
	R0 = B [P0++] (X);
.L780:
	B [P1++] = R0;
.L764:
	( r7:6, p5:4 ) = [sp++];

	rts;
.L778:
	P2 += -1;
	cc =R0==0;
	if cc jump .L764;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L771, .L779) LC1 = P2;
.L771:
	R0 = B [P0--] (X);
.L779:
	B [P1--] = R0;
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
	LSETUP (.L790, .L792) LC1 = P2;
.L790:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L788;
.L792:
	R0 += 1;
.L788:
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
	LSETUP (.L795, .L797) LC1 = P2;
.L795:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L793;
.L797:
	R0 += 1;
.L793:
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
	if !cc jump .L804;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L804:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
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
	LSETUP (.L806, .L808) LC1 = P2;
.L806:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L808:
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
	LSETUP (.L810, .L812) LC1 = P2;
.L810:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L812:
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
	if cc jump .L813;
	R7 = 1 (X);
.L815:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L815 (bp);
.L813:
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
	if cc jump .L818;
	cc =R1==0;
	if cc jump .L818;
	R7 = 1 (X);
.L820:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>= 1;
	cc =R1==0;
	if !cc jump .L820 (bp);
.L818:
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
	cc =R3<=R0 (iu);
	if cc jump .L840;
	LSETUP (.L825, .L841) LC1 = P2;
.L825:
	cc =R0<0;
	if cc jump .L826;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L826;
.L841:
	nop;
.L834:
	R2 = 0 (X);
.L828:
	cc =P1==0;
	if cc jump .L824 (bp);
	R2 = R3;
.L824:
	R0 = R2;
	rts;
.L826:
	cc =R1==0;
	if cc jump .L834;
.L840:
	R2 = 0 (X);
.L830:
	cc =R3<R0 (iu);
	if cc jump .L829 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L829:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if !cc jump .L830 (bp);
	jump.s .L828;
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
	if cc jump .L845;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L846;
.L844:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L846:
	R5 = 0 (X);
	jump.s .L844;
.L845:
	R0 = -1 (X);
	SP += 12;
	RETS = [SP++];
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
	if cc jump .L850;
	R7 = 1 (X);
	[SP+12] = R5;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L851;
.L849:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L851:
	R7 = 0 (X);
	jump.s .L849;
.L850:
	R0 = -1 (X);
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
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
	if cc jump .L868;
	P1 = 0 (X);
.L855:
	cc =R1==0;
	if cc jump .L860;
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L857;
.L869:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L856;
.L857:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>>= 1;
	cc =R1==0;
	if !cc jump .L869 (bp);
.L856:
	cc =P1==0;
	if cc jump .L854 (bp);
	R3 = -R3;
.L854:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L868:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L855;
.L860:
	R3 = 0 (X);
	jump.s .L856;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--sp] = ( r7:7 );

	R3 = R0;
	R0 = R1;
	cc =R3<0;
	if cc jump .L890;
	R7 = 0 (X);
.L871:
	cc =R0<0;
	if !cc jump .L872 (bp);
	R0 = -R0;
	BITTGL (R7, 0);
.L872:
	R2 = R3;
	R1 = 1 (X);
	cc =R3<=R0 (iu);
	if cc jump .L889;
	P2 = 32 (X);
	LSETUP (.L874, .L891) LC1 = P2;
.L874:
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L873;
.L891:
	nop;
.L881:
	R3 = 0 (X);
.L875:
	R0 = R3;
	cc =R7==0;
	if cc jump .L870 (bp);
	R0 = -R3;
.L870:
	( r7:7 ) = [sp++];

	rts;
.L873:
	cc =R1==0;
	if cc jump .L881;
.L889:
	R3 = 0 (X);
.L877:
	cc =R2<R0 (iu);
	if cc jump .L876 (bp);
	R2 = R2 - R0;
	R3 = R3 | R1;
.L876:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if !cc jump .L877 (bp);
	jump.s .L875;
.L890:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L871;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	R0 = R1;
	cc =R3<0;
	if cc jump .L912;
	P1 = 0 (X);
.L893:
	R2 = R3;
	R0 = abs R0;
	R1 = 1 (X);
	cc =R3<=R0 (iu);
	if cc jump .L906;
	P2 = 32 (X);
	LSETUP (.L895, .L913) LC1 = P2;
.L895:
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L911;
.L913:
	nop;
.L896:
	R0 = R2;
	cc =P1==0;
	if cc jump .L892 (bp);
	R0 = -R2;
.L892:
	rts;
.L906:
	cc =R2<R0 (iu);
	if cc jump .L897 (bp);
	R2 = R2 - R0;
.L897:
	R1 >>= 1;
	R0 >>= 1;
.L911:
	cc =R1==0;
	if !cc jump .L906 (bp);
	jump.s .L896;
.L912:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L893;
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
	if !cc jump .L916;
	LSETUP (.L915, .L930) LC1 = P2;
.L915:
	R1 = R0.L (X);
	cc =R1<0;
	if cc jump .L916;
	R1 = R0 << 1;
	R0 = R1;
	R2 <<= 1;
	R1 = R1.L (Z);
	cc =R6<=R1 (iu);
	if cc jump .L916;
.L930:
	nop;
	R2 = 0 (X);
.L916:
	R1 = R2.L (Z);
	cc =R1==0;
	if cc jump .L924;
	R5 = 0 (X);
	jump.s .L920;
.L929:
	R6 = R3.L (Z);
	R1 = R1.L (Z);
.L920:
	R7 = R0.L (Z);
	cc =R6<R7 (iu);
	if cc jump .L919 (bp);
	R3 = R3 - R0;
	R5 = R2 | R5;
.L919:
	R1 >>= 1;
	R2 = R1;
	R0 = R7 >> 1;
	cc =R1==0;
	if !cc jump .L929 (bp);
.L918:
	cc =P1==0;
	if cc jump .L914 (bp);
	R5 = R3;
.L914:
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L924:
	R5 = R2;
	jump.s .L918;
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
	cc =R3<=R0 (iu);
	if cc jump .L947;
	LSETUP (.L932, .L948) LC1 = P2;
.L932:
	cc =R0<0;
	if cc jump .L933;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L933;
.L948:
	nop;
.L941:
	R2 = 0 (X);
.L935:
	cc =P1==0;
	if cc jump .L931 (bp);
	R2 = R3;
.L931:
	R0 = R2;
	rts;
.L933:
	cc =R1==0;
	if cc jump .L941;
.L947:
	R2 = 0 (X);
.L937:
	cc =R3<R0 (iu);
	if cc jump .L936 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L936:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if !cc jump .L937 (bp);
	jump.s .L935;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L950 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L951:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L950:
	cc =R2==0;
	if cc jump .L953;
	R2 = R0;
	R2 <<= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R0 >>= R7;
	R3 <<= R1;
	R1 = R0 | R3;
	jump.s .L951;
.L953:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L955 (bp);
	R2 = R3 >>> 31;
	R1 += -32;
	R0 = R3;
	R0 >>>= R1;
.L956:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L955:
	cc =R2==0;
	if cc jump .L958;
	R2 = R3;
	R2 >>>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L956;
.L958:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
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
	if cc jump .L966;
	cc =R0<=R2;
	if !cc jump .L967;
	cc =R3<R1 (iu);
	if cc jump .L966;
	cc =R3<=R1 (iu);
	if !cc jump .L967;
	R0 = 1 (X);
	rts;
.L966:
	R0 = 0 (X);
	rts;
.L967:
	R0 = 2 (X);
	rts;
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
	if cc jump .L972;
	cc =R0<=R2;
	if !cc jump .L973;
	cc =R3<R1 (iu);
	if cc jump .L972;
	cc =R3<=R1 (iu);
	if !cc jump .L973;
	R0 = 1 (X);
	R0 += -1;
	rts;
.L972:
	R0 = 0 (X);
	R0 += -1;
	rts;
.L973:
	R0 = 2 (X);
	R0 += -1;
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
	if cc jump .L976 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L977:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L976:
	cc =R2==0;
	if cc jump .L979;
	R2 = R3;
	R2 >>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L977;
.L979:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
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
	jump.s .L990;
.L995:
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
.L990:
	cc = !BITTST (R7,0);
	if cc jump .L988 (bp);
	[SP+12] = R5;
	R2 = R4;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L988:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if !cc jump .L995 (bp);
	cc =R6<0;
	if !cc jump .L987 (bp);
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L987:
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
	R4 = R1;
	R7 = R1;
	R5 = 127 (X);
	R5 <<= 23;
	jump.s .L999;
.L1004:
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L999:
	cc = !BITTST (R7,0);
	if cc jump .L997 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
.L997:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if !cc jump .L1004 (bp);
	cc =R4<0;
	if !cc jump .L996 (bp);
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L996:
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
	R3 = R0;
	R0 = R1;
	R1 = R2;
	R2 = [SP+12];
	cc =R0<R2 (iu);
	if cc jump .L1009;
	cc =R0<=R2 (iu);
	if !cc jump .L1010;
	cc =R3<R1 (iu);
	if cc jump .L1009;
	cc =R3<=R1 (iu);
	if !cc jump .L1010;
	R0 = 1 (X);
	rts;
.L1009:
	R0 = 0 (X);
	rts;
.L1010:
	R0 = 2 (X);
	rts;
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
	if cc jump .L1015;
	cc =R0<=R2 (iu);
	if !cc jump .L1016;
	cc =R3<R1 (iu);
	if cc jump .L1015;
	cc =R3<=R1 (iu);
	if !cc jump .L1016;
	R0 = 1 (X);
	R0 += -1;
	rts;
.L1015:
	R0 = 0 (X);
	R0 += -1;
	rts;
.L1016:
	R0 = 2 (X);
	R0 += -1;
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
