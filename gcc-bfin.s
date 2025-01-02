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
	if cc jump .L59;
	nop;
	LSETUP (.L54, .L60) LC1 = P1;
.L54:
	R0 = P2;
	R1 = B [P2++] (Z);
	cc =R1==R2;
	if cc jump .L52;
.L60:
	nop;
.L59:
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
	if cc jump .L69;
	R1 = R3;
	LSETUP (.L63, .L72) LC1 = P0;
.L63:
	P2 = R0;
	P1 = R1;
	R0 += 1;
	R1 += 1;
	R3 = B [P2] (Z);
	R2 = B [P1] (Z);
	cc =R2==R3;
	if !cc jump .L71;
.L72:
	nop;
.L69:
	R2 = 0 (X);
	R0 = R2;
	rts;
.L71:
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
	if cc jump .L74;
	call _memcpy;
	R3 = R0;
.L74:
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
	jump.s .L79;
.L81:
	P2 = R0;
	R0 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if cc jump .L78;
.L79:
	cc =R0==R3;
	if !cc jump .L81 (bp);
	P2 = 0 (X);
.L78:
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
	if cc jump .L85;
	R0 = R1.B (Z);
	R1 = R0;
	R0 = R3;
	call _memset;
	R3 = R0;
.L85:
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
	if cc jump .L89;
	P1 += 1;
	P2 += 1;
.L88:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L88 (bp);
	R0 = R1;
	rts;
.L89:
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
	if !cc jump .L92 (bp);
	jump.s .L91;
.L94:
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L91;
.L92:
	R0 = R0.B (Z);
	cc =R0==R2;
	if !cc jump .L94 (bp);
.L91:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	R2 = R1;
	R1 = R0;
	jump.s .L100;
.L103:
	cc =R0==0;
	if cc jump .L102;
.L100:
	P2 = R1;
	R1 += 1;
	R0 = B [P2] (X);
	cc =R0==R2;
	if !cc jump .L103 (bp);
	R0 = P2;
	rts;
.L102:
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
	if !cc jump .L110;
	P1 += 1;
	P2 += 1;
	jump.s .L107;
.L108:
	nop;
	R1 = B [P1++] (X);
	R2 = B [P2++] (X);
	R0 = R1.B (X);
	R3 = R2.B (X);
	cc =R0==R3;
	if !cc jump .L110;
.L107:
	cc =R0==0;
	if !cc jump .L108 (bp);
	R2 = R2.B (Z);
	R1 = 0 (X);
	R1 = R1 - R2;
	R0 = R1;
	rts;
.L110:
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
	if cc jump .L114;
	R0 = P1;
	R0 += 1;
.L113:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L113 (bp);
	P2 -= P1;
	R0 = P2;
	rts;
.L114:
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
	if cc jump .L124;
	nop;
	nop;
	P0 += 1;
	R0 = B [P0+-1] (Z);
	cc =R0==0;
	if cc jump .L126;
	nop;
	nop;
.L120:
	P5 = P1;
	R1 = B [P1++] (Z);
	cc =R1==0;
	if cc jump .L119;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L122;
.L119:
	R0 = R0 - R1;
	( p5:5 ) = [sp++];

	rts;
.L122:
	cc =R1==R0;
	if !cc jump .L119;
	nop;
	nop;
	nop;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if !cc jump .L120 (bp);
	R1 = B [P5+1] (Z);
	jump.s .L119;
.L124:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L126:
	R1 = B [P1] (Z);
	jump.s .L119;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	cc =R2<=1;
	P2 = R0;
	P1 = R1;
	R0 = R2;
	if cc jump .L127;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L129, .L131) LC1 = P0;
.L129:
	P1 += 2;
	R0 = B [P2+1] (X);
	B [P1+-2] = R0;
	R0 = B [P2] (X);
	B [P1+-1] = R0;
.L131:
	P2 += 2;
.L127:
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
	if cc jump .L136;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L136:
	R0 = 1 (X);
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L139 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L139:
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
	if cc jump .L146;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
	rts;
.L146:
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
	if cc jump .L152 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if !cc jump .L153 (bp);
.L152:
	R0 = 1 (X);
	rts;
.L153:
	P1 = -8232 (X);
	P1 = P2 + P1;
	cc =P1<=1 (iu);
	if cc jump .L152;
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
	if cc jump .L162;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L160;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L160;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L160;
	R1 = -16383 (X);
	R1 <<= 2;
	R2 = 3 (X);
	R1 = R0 + R1;
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L161;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L160:
	R0 = 1 (X);
	rts;
.L162:
	R1 = 127 (X);
	R0 += 1;
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L161:
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
	if cc jump .L165 (bp);
	R1 = -97 (X);
	BITSET (R0, 5);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
	rts;
.L165:
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
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -24;
	[SP+48] = R2;
	R6 = [SP+48];
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = ROT R6 BY 0 ||
	[SP+40] = R0 ||
	nop;
	[SP+44] = R1;
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L172 (bp);
	[SP+12] = R7;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L172:
	R2 = 0 (X);
	R3 = R3 -|- R3 ||
	[SP+16] = R2 ||
	nop;
	[SP+20] = R3;
	SP += 24;
	RETS = [SP++];
	R0 = R2;
	R1 = R3;
	( r7:5 ) = [sp++];

	rts;
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
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L178 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L178:
	SP += 12;
	RETS = [SP++];
	R0 = 0 (X);
	( r7:6 ) = [sp++];

	rts;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -24;
	R7 = [SP+56];
	[SP+16] = R0;
	[SP+20] = R1;
	R4 = ROT R0 BY 0 ||
	[SP+52] = R2 ||
	nop;
	R0 = R1 >>> 31 ||
	R6 = [SP+52] ||
	nop;
	R5 = R1;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L180 (bp);
	cc =R0==0;
	if cc jump .L185 (bp);
.L183:
	[SP+16] = R6;
	[SP+20] = R7;
	SP += 24;
	RETS = [SP++];
	R0 = R6;
	R1 = R7;
	( r7:4 ) = [sp++];

	rts;
.L180:
	[SP+12] = R7;
	R2 = R6;
	R0 = R4;
	R1 = R5;
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L183 (bp);
	R6 = R4;
	R7 = R5;
	jump.s .L183;
.L185:
	[SP+16] = R4;
	[SP+20] = R5;
	SP += 24;
	RETS = [SP++];
	R0 = R4;
	R1 = R5;
	( r7:4 ) = [sp++];

	rts;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--sp] = ( r7:6 );

	R7 = R0;
	R6 = R1;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	[--SP] = RETS;
	cc =R0==R1;
	SP += -12;
	if !cc jump .L195 (bp);
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
.L195:
	cc =R0==0;
	if cc jump .L186 (bp);
	R7 = R6;
.L186:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -24;
	R7 = [SP+56];
	[SP+16] = R0;
	[SP+20] = R1;
	R4 = ROT R0 BY 0 ||
	[SP+52] = R2 ||
	nop;
	R0 = R1 >>> 31 ||
	R6 = [SP+52] ||
	nop;
	R5 = R1;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L197 (bp);
	cc =R0==0;
	if cc jump .L202 (bp);
.L200:
	[SP+16] = R6;
	[SP+20] = R7;
	SP += 24;
	RETS = [SP++];
	R0 = R6;
	R1 = R7;
	( r7:4 ) = [sp++];

	rts;
.L197:
	[SP+12] = R7;
	R2 = R6;
	R0 = R4;
	R1 = R5;
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L200 (bp);
	R6 = R4;
	R7 = R5;
	jump.s .L200;
.L202:
	[SP+16] = R4;
	[SP+20] = R5;
	SP += 24;
	RETS = [SP++];
	R0 = R4;
	R1 = R5;
	( r7:4 ) = [sp++];

	rts;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -24;
	R7 = [SP+56];
	[SP+16] = R0;
	[SP+20] = R1;
	R4 = ROT R0 BY 0 ||
	[SP+52] = R2 ||
	nop;
	R0 = R1 >>> 31 ||
	R6 = [SP+52] ||
	nop;
	R5 = R1;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L204 (bp);
	cc =R0==0;
	if cc jump .L209 (bp);
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L204:
	[SP+12] = R7;
	R2 = R6;
	R0 = R4;
	R1 = R5;
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L210 (bp);
.L207:
	[SP+16] = R4;
	[SP+20] = R5;
	SP += 24;
	RETS = [SP++];
	R0 = R4;
	R1 = R5;
	( r7:4 ) = [sp++];

	rts;
.L210:
	R4 = R6;
	R5 = R7;
	jump.s .L207;
.L209:
	[SP+16] = R6;
	[SP+20] = R7;
	SP += 24;
	RETS = [SP++];
	R0 = R6;
	R1 = R7;
	( r7:4 ) = [sp++];

	rts;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--sp] = ( r7:6 );

	R6 = R0;
	R7 = R1;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	[--SP] = RETS;
	cc =R0==R1;
	SP += -12;
	if !cc jump .L220 (bp);
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
.L220:
	cc =R0==0;
	if cc jump .L211 (bp);
	R7 = R6;
.L211:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -24;
	R7 = [SP+56];
	[SP+16] = R0;
	[SP+20] = R1;
	R4 = ROT R0 BY 0 ||
	[SP+52] = R2 ||
	nop;
	R0 = R1 >>> 31 ||
	R6 = [SP+52] ||
	nop;
	R5 = R1;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L222 (bp);
	cc =R0==0;
	if cc jump .L227 (bp);
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L222:
	[SP+12] = R7;
	R2 = R6;
	R0 = R4;
	R1 = R5;
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L228 (bp);
.L225:
	[SP+16] = R4;
	[SP+20] = R5;
	SP += 24;
	RETS = [SP++];
	R0 = R4;
	R1 = R5;
	( r7:4 ) = [sp++];

	rts;
.L228:
	R4 = R6;
	R5 = R7;
	jump.s .L225;
.L227:
	[SP+16] = R6;
	[SP+20] = R7;
	SP += 24;
	RETS = [SP++];
	R0 = R6;
	R1 = R7;
	( r7:4 ) = [sp++];

	rts;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	cc =R0==0;
	P1.L = _s.0;
	if cc jump .L230;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L231:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R0 >>= 6;
	cc =R0==0;
	R1 = B [P2] (X);
	B [P1++] = R1;
	if !cc jump .L231 (bp);
.L230:
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
	if cc jump .L242;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L236;
	[P1+4] = P2;
.L236:
	rts;
.L242:
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
	if cc jump .L244;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L244:
	P2 = [P2+4];
	cc =P2==0;
	if cc jump .L243;
	[P2] = P1;
.L243:
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
	if cc jump .L253;
	R7 = R1;
	FP = 0 (X);
	jump.s .L255;
.L267:
	R0 = P5;
	FP += 1;
	R7 = R7 + R0;
	R0 = FP;
	cc =R6==R0;
	if cc jump .L253;
.L255:
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	R4 = R7;
	if !cc jump .L267 (bp);
.L252:
	SP += 12;
	FP = [SP++];
	R0 = R4;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L253:
	R0 = R6;
	R0 += 1;
	[P3] = R0;
	R0 = P5;
	R6 *= R0;
	cc =P5==0;
	R0 = [SP+52];
	R4 = R0 + R6;
	if cc jump .L252;
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
	if cc jump .L269;
	R6 = 0 (X);
	jump.s .L271;
.L279:
	R6 += 1;
	R0 = P4;
	cc =R4==R6;
	R7 = R7 + R0;
	if cc jump .L269;
.L271:
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	P3 = R7;
	if !cc jump .L279 (bp);
	SP += 12;
	RETS = [SP++];
	R0 = P3;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L269:
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
.L282:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L282;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L282 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L284;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L301 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if !cc jump .L293;
	P0 = 1 (X);
.L287:
	P1 += 1;
	P2 = 0 (X);
.L290:
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
	if cc jump .L290 (bp);
	cc =P0==0;
	if !cc jump .L281 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L281:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L301:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L293;
	P1 = P0;
	P0 = 0 (X);
	jump.s .L287;
.L284:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	P1 = P0;
	cc =R1<=R2 (iu);
	P1 += 1;
	P0 = 0 (X);
	if cc jump .L287 (bp);
.L293:
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
.L303:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L303;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L303 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L305;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L306 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P2;
	P0 = 1 (X);
	if !cc jump .L313;
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
	if !cc jump .L302 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L302:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L306:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P0;
	if !cc jump .L313;
.L320:
	P0 = 0 (X);
	jump.s .L307;
.L305:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if cc jump .L320 (bp);
.L313:
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
.L322:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L322;
	R0 = R7;
	R0 += -9;
	cc =R0<=4 (iu);
	if cc jump .L322 (bp);
	R1 = 43 (X);
	cc =R7==R1;
	if cc jump .L324;
	R0 = 45 (X);
	cc =R7==R0;
	if !cc jump .L341 (bp);
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	if !cc jump .L333;
	P4 = 1 (X);
.L327:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L330:
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
	if cc jump .L330 (bp);
	cc =P4==0;
	if !cc jump .L321 (bp);
	R3 = R4 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R1 = R5 - R2;
	R1 = R1 - R0;
.L321:
	SP += 24;
	RETS = [SP++];
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L341:
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L333;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L327;
.L324:
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L327 (bp);
.L333:
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
.L355:
	cc =R7==0;
	if cc jump .L343;
.L356:
	P2 = R7;
	R0 = P5;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	call (P4);
	cc =R0<0;
	if cc jump .L347;
	cc =R0==0;
	if cc jump .L342;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L356 (bp);
.L343:
	R6 = 0 (X);
.L342:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L347:
	R7 = P3;
	jump.s .L355;
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
	P4 = [SP+64];
	P5 = [SP+68];
	cc =FP==0;
	if cc jump .L362;
.L358:
	R0 = FP;
	R0 >>>= 1;
	R7 = R0;
	R7 *= R5;
	R7 = R6 + R7;
	P3 = R0;
	R2 = P5;
	R1 = R7;
	R0 = R4;
	call (P4);
	cc =R0==0;
	if cc jump .L357;
	cc =R0<=0;
	if cc jump .L360;
	R0 = FP;
	R0 += -1;
	R0 >>>= 1;
	FP = R0;
	R6 = R7 + R5;
	cc =FP==0;
	if !cc jump .L358 (bp);
.L362:
	R7 = 0 (X);
.L357:
	SP += 12;
	FP = [SP++];
	R0 = R7;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L360:
	cc =P3==0;
	if cc jump .L362;
	FP = P3;
	jump.s .L358;
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
	if !cc jump .L372 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L372:
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
	if !cc jump .L378 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L378:
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
	if !cc jump .L382 (bp);
	jump.s .L385;
.L384:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L385;
.L382:
	cc =R1==R0;
	if !cc jump .L384 (bp);
	R0 = P2;
	rts;
.L385:
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
	if !cc jump .L388;
	P1 += 4;
	P2 += 4;
	jump.s .L389;
.L390:
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L388;
.L389:
	cc =R0==0;
	if !cc jump .L390 (bp);
.L388:
	cc =R0<R1;
	if cc jump .L392 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L392:
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
.L394:
	nop;
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L394 (bp);
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
	if cc jump .L399;
	R0 = P1;
	R0 += 4;
.L398:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L398 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L399:
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
	if cc jump .L410;
	LSETUP (.L403, .L412) LC1 = P1;
.L403:
	P0 = R0;
	P5 = P2;
	R0 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L404;
	cc =R1==0;
	if cc jump .L404;
.L412:
	nop;
.L410:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L404:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L411 (bp);
	cc =R0<R1;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L411:
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
	if cc jump .L420;
	nop;
	LSETUP (.L415, .L421) LC1 = P1;
.L415:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L413;
.L421:
	nop;
.L420:
	R0 = 0 (X);
.L413:
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
	if cc jump .L431;
	R1 = R3;
	LSETUP (.L424, .L435) LC1 = P0;
.L424:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L433;
.L435:
	nop;
.L431:
	R0 = 0 (X);
	rts;
.L433:
	cc =R3<R2;
	if cc jump .L434 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L434:
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
	if cc jump .L437;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L437:
	SP += 12;
	RETS = [SP++];
	R0 = R3;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	P2 = R1;
	R1 = R2;
	[--sp] = ( p5:5 );

	R2 = P2;
	cc =R0==R2;
	if cc jump .L448;
	P1 = R1;
	R3 = R0 - R2;
	R2 = R1 << 2;
	cc =R3<R2 (iu);
	P0 = R0;
	P1 += -1;
	if !cc jump .L454 (bp);
	cc =R1==0;
	if cc jump .L448;
	P1 = P1 << 2;
	P2 = P2 + P1;
	P0 = P0 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L446, .L456) LC1 = P1;
.L446:
	R1 = [P2--];
.L456:
	[P0--] = R1;
.L448:
	( p5:5 ) = [sp++];

	rts;
.L454:
	cc =R1==0;
	P1 = R1;
	if cc jump .L448;
	nop;
	nop;
	LSETUP (.L444, .L455) LC1 = P1;
.L444:
	R1 = [P2++];
.L455:
	[P0++] = R1;
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
	if cc jump .L458;
	P1 = R3;
	LSETUP (.L459, .L464) LC1 = P2;
.L459:
.L464:
	[P1++] = R0;
.L458:
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
	if !cc jump .L466 (bp);
	cc =R2==0;
	R0 = R3 + R2;
	if cc jump .L465;
	P1 = R2;
	P0 = R0;
	R3 = R0 - R3;
	P1 += -1;
	P2 = P2 + P1;
	P0 += -1;
	P1 = R3;
	LSETUP (.L468, .L500) LC1 = P1;
.L468:
	R0 = B [P0--] (X);
.L500:
	B [P2--] = R0;
.L465:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L466:
	cc =R3==R0;
	R2 = P2;
	if cc jump .L465;
	cc =R1==0;
	if cc jump .L465;
	R0 = R1;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L498;
	P0 = R3;
	R0 = R2 | R3;
	R2 = 3 (X);
	R0 = R0 & R2;
	CC = R0;
	P0 += 1;
	if cc jump .L469;
	R2 = P2;
	R7 = P0;
	R0 = R2 - R7;
	cc =R0<=2 (iu);
	if cc jump .L469;
	R2 = R1 >> 2;
	R2 <<= 2;
	P1 = R2;
	P0 = R3;
	P5 = P2 + P1;
	P1 += -4;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L470, .L499) LC1 = P1;
.L470:
	R0 = [P0++];
.L499:
	[P2++] = R0;
	R3 = R3 + R2;
	cc =R1==R2;
	P2 = R3;
	R0 = R1 - R2;
	if cc jump .L465;
	nop;
	nop;
	cc =R0==1;
	R1 = B [P2] (X);
	B [P5] = R1;
	if cc jump .L465;
	nop;
	nop;
	cc =R0==2;
	R1 = B [P2+1] (X);
	B [P5+1] = R1;
	if cc jump .L465;
	nop;
	nop;
	nop;
	R0 = B [P2+2] (X);
	B [P5+2] = R0;
	jump.s .L465;
.L498:
	P0 = R3;
	P0 += 1;
.L469:
	R1 = R3 + R1;
	P1 = R1;
	P1 -= P0;
	P1 += 1;
.L473:
	R0 = B [P0+-1] (X);
	B [P2++] = R0;
	P1 += -1;
	cc =P1==0;
	if !cc jump .L483;
	jump.s .L465;
.L483:
	P0 += 1;
	jump.s .L473;
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
	LSETUP (.L517, .L519) LC1 = P2;
.L517:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L514;
.L519:
	nop;
	R0 = 0 (X);
.L514:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L523;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L520;
	R1 = 1 (X);
.L522:
	R0 >>>= 1;
	cc = !BITTST (R0,0);
	R1 += 1;
	if cc jump .L522 (bp);
.L520:
	R0 = R1;
	rts;
.L523:
	R1 = 0 (X);
	R0 = R1;
	rts;
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 4
.global _gl_isinff;
.type _gl_isinff, STT_FUNC;
_gl_isinff:
	nop;
	nop;
	nop;
	R0 = 0 (X);
	rts;
	.size	_gl_isinff, .-_gl_isinff
	.align 4
.global _gl_isinfd;
.type _gl_isinfd, STT_FUNC;
_gl_isinfd:
	nop;
	nop;
	nop;
	R0 = 0 (X);
	rts;
	.size	_gl_isinfd, .-_gl_isinfd
	.align 4
.global _gl_isinfl;
.type _gl_isinfl, STT_FUNC;
_gl_isinfl:
	nop;
	nop;
	nop;
	R0 = 0 (X);
	rts;
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
	R5 = R0;
	R7 = R1;
	R1 = R0;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L531 (bp);
	cc =R7<0;
	if cc jump .L545;
	R6 = 1 (X);
	R6 <<= 30;
.L533:
	cc = !BITTST (R7,0);
	if cc jump .L534 (bp);
.L535:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L534:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L531;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L535 (bp);
.L546:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L535 (bp);
	jump.s .L546;
.L531:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L545:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L533;
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
	R5 = ROT R1 BY 0 ||
	[SP+12] = R1 ||
	nop;
	R7 = ROT R2 BY 0 ||
	[SP+48] = R0 ||
	nop;
	R2 = ROT R0 BY 0 ||
	[SP+52] = R1 ||
	nop;
	call ___adddf3;
	[SP+12] = R5;
	R2 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	call ___nedf2;
	cc =R0==0;
	if cc jump .L548 (bp);
	cc =R7<0;
	R4 = 0 (X);
	if cc jump .L562;
	R5 = 1 (X);
	R5 <<= 30;
.L550:
	cc = !BITTST (R7,0);
	if cc jump .L551 (bp);
.L552:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R5;
	R2 = R4;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L551:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L548;
.L553:
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	cc = !BITTST (R7,0);
	R4 = R0;
	R5 = R1;
	if !cc jump .L552 (bp);
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	jump.s .L553;
.L548:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L562:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L550;
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
	[SP+12] = R1;
	R5 = ROT R2 BY 0 ||
	R0 = [SP+48] ||
	nop;
	R2 = [SP+48];
	R1 = [SP+52];
	call ___adddf3;
	R2 = ROT R0 BY 0 ||
	[SP+12] = R1 ||
	nop;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L564 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L578;
	R7 = 1 (X);
	R7 <<= 30;
.L566:
	cc = !BITTST (R5,0);
	if cc jump .L567 (bp);
.L568:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L567:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L564;
.L569:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L568 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L569;
.L564:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L578:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L566;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	cc =R2==0;
	[--sp] = ( r7:7, p5:4 );

	R3 = R0;
	P5 = R1;
	if cc jump .L580;
	R0 = R2;
	R0 += -1;
	cc =R0<=3 (iu);
	if cc jump .L581;
	R0 = R3 | R1;
	R1 = 3 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if !cc jump .L581;
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
	LSETUP (.L582, .L598) LC1 = P2;
.L582:
	R1 = [P1];
	R0 = [P0++];
	R0 = R0 ^ R1;
.L598:
	[P1++] = R0;
	P2 = R7;
	cc =R7==R2;
	R1 = R2 - R7;
	P5 = P5 + P2;
	if cc jump .L580;
	nop;
	nop;
	cc =R1==1;
	R0 = B [P4] (X);
	R2 = B [P5] (X);
	R0 = R0 ^ R2;
	B [P4] = R0;
	if cc jump .L580;
	nop;
	nop;
	cc =R1==2;
	R2 = B [P4+1] (X);
	R0 = B [P5+1] (X);
	R0 = R0 ^ R2;
	B [P4+1] = R0;
	if cc jump .L580;
	nop;
	nop;
	nop;
	R1 = B [P4+2] (X);
	R0 = B [P5+2] (X);
	R0 = R0 ^ R1;
	B [P4+2] = R0;
.L580:
	R0 = R3;
	( r7:7, p5:4 ) = [sp++];

	rts;
.L581:
	P1 = R3;
	P2 = R2;
	LSETUP (.L584, .L597) LC1 = P2;
.L584:
	R1 = B [P1++] (X);
	R0 = B [P5++] (X);
	R0 = R0 ^ R1;
.L597:
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
	if cc jump .L606;
	R0 = P5;
	R0 += 1;
.L601:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L601 (bp);
.L600:
	cc =P1==0;
	if cc jump .L602;
	nop;
	nop;
	LSETUP (.L603, .L612) LC1 = P1;
.L603:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L605;
.L612:
	nop;
.L602:
	R0 = 0 (X);
	B [P2] = R0;
.L605:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L606:
	P2 = P5;
	jump.s .L600;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
	if cc jump .L613;
	nop;
	P1 = R0;
	LSETUP (.L615, .L622) LC1 = P1;
.L615:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L621;
.L613:
	R0 = R1;
	rts;
.L621:
.L622:
	R1 += 1;
	R1 = R0;
	jump.s .L613;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L628;
.L624:
	P2 = R2;
	jump.s .L627;
.L626:
	cc =R0==R1;
	if cc jump .L625;
	nop;
	nop;
	nop;
.L627:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L626 (bp);
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
	if !cc jump .L624 (bp);
.L628:
	P1 = 0 (X);
.L625:
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
.L632:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L631 (bp);
	R3 = R1;
.L631:
	cc =R0==0;
	if !cc jump .L632 (bp);
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
	if cc jump .L644;
	R1 += 1;
.L636:
	P2 = R1;
	R1 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	if !cc jump .L636 (bp);
	R2 = P2;
	cc =R2==R7;
	R1 = R2 - R7;
	if cc jump .L644;
	R1 += -1;
	R6 = R7 + R1;
.L637:
	P2 = R0;
	jump.s .L642;
.L657:
	cc =R2==0;
	if cc jump .L656;
	nop;
.L642:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (X);
	R2 = R0.B (X);
	cc =R2==R3;
	if !cc jump .L657 (bp);
	R1 = R6 - R7;
	P0 = R1;
	P5 = R7;
	R0 = R0.B (Z);
	P0 += 1;
.L638:
	nop;
	R1 = B [P5] (Z);
	cc =R1==0;
	if cc jump .L639;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L652;
	nop;
	nop;
	P5 = R6;
.L639:
	R1 = B [P5] (Z);
	cc =R0==R1;
	if cc jump .L634;
	R0 = P1;
	R0 += 1;
	jump.s .L637;
.L652:
	cc =R1==R0;
	if !cc jump .L639;
	nop;
	nop;
	P5 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if !cc jump .L638 (bp);
	jump.s .L639;
.L656:
	P1 = 0 (X);
.L634:
	R0 = P1;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L644:
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
	if cc jump .L668;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L662;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L661;
.L662:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L668:
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L662 (bp);
.L661:
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
	if cc jump .L669;
	cc =R1<R0 (iu);
	if cc jump .L680;
	P1 = R0;
	P3 -= P1;
	P3 = P2 + P3;
	cc =P2<=P3 (iu);
	if !cc jump .L680;
	R3 = R0;
	cc =R0==1;
	R3 += -1;
	R2 = B [FP++] (X);
	R7 = CC;
	jump.s .L675;
.L679:
	P2 = P0;
.L671:
	cc =P3<P2 (iu);
	if cc jump .L680;
	nop;
	nop;
.L675:
	P0 = P2;
	R0 = B [P0++] (X);
	cc =R0==R2;
	if !cc jump .L679 (bp);
	CC = R7;
	if cc jump .L669;
.L674:
	P4 = FP;
	P5 = P0;
	P1 = R3;
	LSETUP (.L672, .L686) LC1 = P1;
.L672:
	R1 = B [P5++] (Z);
	R0 = B [P4++] (Z);
	cc =R1==R0;
	if !cc jump .L685;
.L686:
	nop;
.L669:
	FP = [SP++];
	R0 = P2;
	( r7:7, p5:3 ) = [sp++];

	rts;
.L685:
	cc =P3<P0 (iu);
	if cc jump .L680;
	nop;
	nop;
	P2 = P0;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L671 (bp);
	R0 = P0;
	P0 = P2;
	P2 = R0;
	jump.s .L674;
.L680:
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
	if cc jump .L688;
	R0 = R3;
	call _memmove;
	R3 = R0;
.L688:
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
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -40;
	R5 = 0 (X);
	P4 = R2;
	[SP+12] = R5;
	R2 = 0 (X);
	R6 = R0;
	R7 = R1;
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L714;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = R6;
	R1 = R7;
	call ___gedf2;
	cc =R0<0;
	if cc jump .L715;
	P3 = 0 (X);
.L695:
	P5.H = 16352;
	R4 = 1 (X);
	R5 = 0 (X);
	P5.L = 0;
	R4 <<= 30;
.L701:
	R0 = ROT R6 BY 0 ||
	[SP+24] = R6 ||
	nop;
	R2 = R2 -|- R2 ||
	[SP+12] = P5 ||
	nop;
	R1 = ROT R7 BY 0 ||
	[SP+28] = R7 ||
	nop;
	call ___muldf3;
	R6 = ROT R0 BY 0 ||
	[SP+12] = R4 ||
	nop;
	R7 = ROT R1 BY 0 ||
	R0 = [SP+24] ||
	nop;
	R2 = R2 -|- R2 ||
	R1 = [SP+28] ||
	nop;
	call ___gedf2;
	cc =R0<0;
	R5 += 1;
	if !cc jump .L701 (bp);
.L702:
	cc =P3==0;
	[P4] = R5;
	if cc jump .L708;
	R1 = ROT R7 BY 0 ||
	[SP+24] = R6 ||
	nop;
	BITTGL (R1, 31);
	[SP+28] = R1;
.L692:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 40;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L715:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L698 (bp);
	[SP+12] = R5;
	R2 = 0 (X);
	R0 = R6;
	R1 = R7;
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L707;
.L698:
	[SP+24] = R6;
	[SP+28] = R7;
	R0 = R0 -|- R0 ||
	R1 = [SP+28] ||
	nop;
	[P4] = R0;
	R0 = [SP+24];
	SP += 40;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L714:
	R0 = ROT R7 BY 0 ||
	[SP+20] = R6 ||
	nop;
	BITTGL (R0, 31);
	P1 = R0;
	R0 = -1025 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = R6;
	R1 = R7;
	[SP+16] = P1;
	call ___ledf2;
	cc =R0<=0;
	P1 = [SP+16];
	if !cc jump .L716;
	R7 = P1;
	P3 = 1 (X);
	jump.s .L695;
.L708:
	[SP+24] = R6;
	[SP+28] = R7;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 40;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L716:
	R0 = -513 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = R6;
	R1 = R7;
	call ___gtdf2;
	cc =R0<=0;
	P0 = R6;
	P1 = [SP+16];
	if !cc jump .L705 (bp);
	[P4] = R5;
	[SP+24] = R6;
	[SP+28] = R7;
	jump.s .L692;
.L705:
	P3 = 1 (X);
.L696:
	R4 = 1021 (X);
	R6 = P0;
	R7 = P1;
	R5 = 0 (X);
	R4 <<= 20;
.L703:
	[SP+28] = R7;
	[SP+24] = R6;
	R0 = [SP+28];
	[SP+12] = R0;
	R2 = [SP+24];
	R0 = R6;
	R1 = R7;
	call ___adddf3;
	R6 = ROT R0 BY 0 ||
	[SP+12] = R4 ||
	nop;
	R7 = ROT R1 BY 0 ||
	R0 = [SP+24] ||
	nop;
	R2 = R2 -|- R2 ||
	R1 = [SP+28] ||
	nop;
	call ___ltdf2;
	cc =R0<0;
	R5 += -1;
	if cc jump .L703 (bp);
	jump.s .L702;
.L707:
	P0 = R6;
	P1 = R7;
	P3 = 0 (X);
	jump.s .L696;
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
	R0 = [SP+20];
	R1 = [SP+16];
	R6 = R0;
	R0 = R0 | R1;
	cc =R0==0;
	R7 = R2;
	R5 = [SP+68];
	R4 = R1;
	P3 = 0 (X);
	P5 = 0 (X);
	if cc jump .L717;
	P4 = 1 (X);
.L720:
	R1 = P4;
	R0 = R4 & R1;
	R2 = ROT R7 BY 0 ||
	[SP+12] = R5 ||
	nop;
	R1 = 0 (X);
	call ___muldi3;
	R2 = P3;
	R0 = R0 + R2; cc = ac0;
	R2 = CC;
	CC = R0 < R0;
	R7 = ROT R7 BY 1;
	R5 = ROT R5 BY 1;
	CC = R0 < R0;
	R6 = ROT R6 BY -1;
	R3 = P5;
	R4 = ROT R4 BY -1;
	R1 = R1 + R3;
	P3 = R0;
	R0 = R4 | R6;
	R1 = R1 + R2;
	cc =R0==0;
	P5 = R1;
	if !cc jump .L720 (bp);
.L717:
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
	if !cc jump .L725;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L724, .L739) LC1 = P2;
.L724:
	cc =R0<0;
	if cc jump .L725;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L726;
.L739:
	R2 += -1;
.L727:
	cc =P1==0;
	if cc jump .L723 (bp);
	R2 = R3;
.L723:
	R0 = R2;
	rts;
.L726:
	cc =R1==0;
	if cc jump .L733;
.L725:
	R2 = 0 (X);
.L730:
	cc =R3<R0 (iu);
	if cc jump .L729 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L729:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L730 (bp);
	jump.s .L727;
.L733:
	R2 = 0 (X);
	jump.s .L727;
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
	if cc jump .L742;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	rts;
.L742:
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
	if cc jump .L749;
.L747:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L749:
	cc =R0==R1;
	if !cc jump .L747 (bp);
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
	if cc jump .L750;
	R7 = 1 (X);
.L752:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L752 (bp);
.L750:
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
	if cc jump .L759 (bp);
	R1 = R3 + R2;
	R4 = P5;
	cc =R4<=R1 (iu);
	if cc jump .L785 (bp);
.L759:
	cc =R0==0;
	if cc jump .L786;
	R0 <<= 3;
	R0 += -8;
	R0 >>= 3;
	P2 = R0;
	P0 = R3;
	P1 = P5;
	P2 += 1;
	LSETUP (.L762, .L791) LC1 = P2;
.L762:
	P0 += 8;
	R0 = [P0+-8];
	R1 = [P0+-4];
	[P1+4] = R1;
	[P1] = R0;
.L791:
	P1 += 8;
	cc =R2<=R7 (iu);
	if cc jump .L755;
	R5 = R2 - R7;
	R0 = R5;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L787;
	P2 = R7;
	R6 = R7;
	R6 += 1;
	R6 = R3 + R6;
	R0 = R3 + R7;
	P0 = P5 + P2;
	R1 = P0;
	R6 = R1 - R6;
	cc =R6<=2 (iu);
	if cc jump .L764;
	R6 = R0 | R1;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L764;
	R1 = R5 >> 2;
	R1 <<= 2;
	P2 = R1;
	P1 = R0;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L765, .L790) LC1 = P2;
.L765:
	R0 = [P1++];
.L790:
	[P0++] = R0;
	R7 = R7 + R1;
	cc =R5==R1;
	P2 = R7;
	if cc jump .L755;
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
	if cc jump .L755;
	P2 += 2;
	P0 = P4 + P1;
	R1 = P2;
	R0 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R1 (iu);
	B [P1] = R0;
	if cc jump .L755;
	nop;
	P1 = P4 + P2;
	P2 = P5 + P2;
	R0 = B [P1] (X);
	B [P2] = R0;
.L755:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L785:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L755;
	P0 = R3;
	P5 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L769, .L789) LC1 = P1;
.L769:
	R0 = B [P2--] (X);
.L789:
	B [P5--] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L786:
	cc =R2==0;
	if cc jump .L755;
	R6 = P5;
	R1 = R6 + R7;
	R0 = R3 + R7;
.L764:
	R2 = R3 + R2;
	P1 = R0;
	P2 = R2;
	P0 = R1;
	P2 -= P1;
	LSETUP (.L767, .L788) LC1 = P2;
.L767:
	R0 = B [P1++] (X);
.L788:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L787:
	R0 = P5;
	R1 = R0 + R7;
	R0 = R3 + R7;
	jump.s .L764;
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
	if cc jump .L796 (bp);
	R1 = R1 + R2;
	cc =R3<=R1 (iu);
	if cc jump .L818 (bp);
.L796:
	cc =R7==0;
	if cc jump .L795;
	R1 = R7;
	R1 += -1;
	R6 = 8 (X);
	cc =R1<=R6 (iu);
	if cc jump .L799;
	R1 = R0 | R3;
	R6 = 3 (X);
	R1 = R1 & R6;
	CC = R1;
	if cc jump .L799;
	R1 = R0;
	R1 += 2;
	cc =R3==R1;
	if cc jump .L799;
	R6 = R2 >> 2;
	R5 = R6 << 2;
	P2 = R5;
	P0 = R0;
	P1 = R3;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L800, .L822) LC1 = P2;
.L800:
	R1 = [P0++];
.L822:
	[P1++] = R1;
	R6 <<= 1;
	cc =R7==R6;
	if cc jump .L795;
	R1 = R0 + R5;
	P2 = R1;
	R5 = R3 + R5;
	R1 = W [P2] (X);
	P2 = R5;
	W [P2] = R1;
.L795:
	cc = !BITTST (R2,0);
	if cc jump .L792 (bp);
.L819:
	R2 += -1;
	R0 = R0 + R2;
	P2 = R0;
	R3 = R3 + R2;
	R0 = B [P2] (X);
	P2 = R3;
	B [P2] = R0;
.L792:
	( r7:5, p5:5 ) = [sp++];

	rts;
.L818:
	P0 = R2;
	cc =R2==0;
	P0 += -1;
	if cc jump .L792;
	P2 = R0;
	P5 = R3;
	P1 = P2 + P0;
	P2 = P5 + P0;
	P0 += 1;
	LSETUP (.L805, .L821) LC1 = P0;
.L805:
	R0 = B [P1--] (X);
.L821:
	B [P2--] = R0;
	( r7:5, p5:5 ) = [sp++];

	rts;
.L799:
	P5 = R7;
	P0 = R0;
	P1 = R3;
	P2 = P5 + P5;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L802, .L820) LC1 = P2;
.L802:
	R1 = W [P0++] (X);
.L820:
	W [P1++] = R1;
	cc = !BITTST (R2,0);
	if cc jump .L792 (bp);
	jump.s .L819;
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
	if cc jump .L827 (bp);
	R7 = R1 + R2;
	cc =R4<=R7 (iu);
	if cc jump .L853 (bp);
.L827:
	cc =R0==0;
	if cc jump .L854;
	P4 = R0;
	P0 = R1;
	P1 = P5;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L830, .L859) LC1 = P2;
.L830:
	R0 = [P0++];
.L859:
	[P1++] = R0;
	cc =R2<=R3 (iu);
	if cc jump .L823;
	R5 = R2 - R3;
	R0 = R5;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L855;
	P2 = R3;
	R6 = R3;
	R6 += 1;
	R6 = R1 + R6;
	R0 = R1 + R3;
	P0 = P5 + P2;
	R7 = P0;
	R6 = R7 - R6;
	cc =R6<=2 (iu);
	if cc jump .L832;
	R6 = R0 | R7;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L832;
	R7 = R5 >> 2;
	R7 <<= 2;
	P2 = R7;
	P1 = R0;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L833, .L858) LC1 = P2;
.L833:
	R0 = [P1++];
.L858:
	[P0++] = R0;
	R3 = R3 + R7;
	cc =R5==R7;
	P2 = R3;
	if cc jump .L823;
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
	if cc jump .L823;
	P2 += 2;
	P0 = P4 + P1;
	R4 = P2;
	R0 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R4 (iu);
	B [P1] = R0;
	if cc jump .L823;
	nop;
	P1 = P4 + P2;
	P2 = P5 + P2;
	R0 = B [P1] (X);
	B [P2] = R0;
.L823:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L853:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L823;
	P0 = R1;
	P5 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L837, .L857) LC1 = P1;
.L837:
	R0 = B [P2--] (X);
.L857:
	B [P5--] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L854:
	cc =R2==0;
	if cc jump .L823;
	R0 = P5;
	R7 = R0 + R3;
	R0 = R1 + R3;
.L832:
	R2 = R1 + R2;
	P1 = R0;
	P2 = R2;
	P0 = R7;
	P2 -= P1;
	LSETUP (.L835, .L856) LC1 = P2;
.L835:
	R0 = B [P1++] (X);
.L856:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L855:
	R4 = P5;
	R7 = R4 + R3;
	R0 = R1 + R3;
	jump.s .L832;
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
	if !cc jump .L869;
	R1 = R0 >>> 14;
	cc =R1==0;
	if !cc jump .L866;
	R1 = R0 >>> 13;
	cc =R1==0;
	if !cc jump .L870;
	R1 = R0 >>> 12;
	cc =R1==0;
	if !cc jump .L871;
	R1 = R0 >>> 11;
	cc =R1==0;
	if !cc jump .L872;
	R1 = R0 >>> 10;
	cc =R1==0;
	if !cc jump .L873;
	R1 = R0 >>> 9;
	cc =R1==0;
	if !cc jump .L874;
	R1 = R0 >>> 8;
	cc =R1==0;
	if !cc jump .L875;
	R1 = R0 >>> 7;
	cc =R1==0;
	if !cc jump .L876;
	R1 = R0 >>> 6;
	cc =R1==0;
	if !cc jump .L877;
	R1 = R0 >>> 5;
	cc =R1==0;
	if !cc jump .L878;
	R1 = R0 >>> 4;
	cc =R1==0;
	if !cc jump .L879;
	R1 = R0 >>> 3;
	cc =R1==0;
	if !cc jump .L880;
	R1 = R0 >>> 2;
	cc =R1==0;
	if !cc jump .L881;
	R1 = R0 >>> 1;
	cc =R1==0;
	if !cc jump .L882;
	cc =R0==0;
	R1 = 16 (X);
	if !cc jump .L885;
.L866:
	R0 = R1;
	rts;
.L869:
	R1 = 0 (X);
	jump.s .L866;
.L880:
	R1 = 12 (X);
	jump.s .L866;
.L885:
	R1 = 15 (X);
	jump.s .L866;
.L870:
	R1 = 2 (X);
	jump.s .L866;
.L871:
	R1 = 3 (X);
	jump.s .L866;
.L872:
	R1 = 4 (X);
	jump.s .L866;
.L873:
	R1 = 5 (X);
	jump.s .L866;
.L874:
	R1 = 6 (X);
	jump.s .L866;
.L875:
	R1 = 7 (X);
	jump.s .L866;
.L876:
	R1 = 8 (X);
	jump.s .L866;
.L877:
	R1 = 9 (X);
	jump.s .L866;
.L878:
	R1 = 10 (X);
	jump.s .L866;
.L879:
	R1 = 11 (X);
	jump.s .L866;
.L881:
	R1 = 13 (X);
	jump.s .L866;
.L882:
	R1 = 14 (X);
	jump.s .L866;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	cc = !BITTST (R0,0);
	if !cc jump .L889;
	cc = !BITTST (R0,1);
	if !cc jump .L890;
	cc = !BITTST (R0,2);
	if !cc jump .L891;
	cc = !BITTST (R0,3);
	if !cc jump .L892;
	cc = !BITTST (R0,4);
	if !cc jump .L893;
	cc = !BITTST (R0,5);
	if !cc jump .L894;
	cc = !BITTST (R0,6);
	if !cc jump .L895;
	cc = !BITTST (R0,7);
	if !cc jump .L896;
	cc = !BITTST (R0,8);
	if !cc jump .L897;
	cc = !BITTST (R0,9);
	if !cc jump .L898;
	cc = !BITTST (R0,10);
	if !cc jump .L899;
	cc = !BITTST (R0,11);
	if !cc jump .L900;
	cc = !BITTST (R0,12);
	if !cc jump .L901;
	cc = !BITTST (R0,13);
	if !cc jump .L902;
	cc = !BITTST (R0,14);
	if !cc jump .L903;
	cc = !BITTST (R0,15);
	R1 = 16 (X);
	if !cc jump .L906;
.L886:
	R0 = R1;
	rts;
.L889:
	R1 = 0 (X);
	jump.s .L886;
.L890:
	R1 = 1 (X);
	jump.s .L886;
.L901:
	R1 = 12 (X);
	jump.s .L886;
.L891:
	R1 = 2 (X);
	jump.s .L886;
.L892:
	R1 = 3 (X);
	jump.s .L886;
.L893:
	R1 = 4 (X);
	jump.s .L886;
.L894:
	R1 = 5 (X);
	jump.s .L886;
.L895:
	R1 = 6 (X);
	jump.s .L886;
.L896:
	R1 = 7 (X);
	jump.s .L886;
.L897:
	R1 = 8 (X);
	jump.s .L886;
.L898:
	R1 = 9 (X);
	jump.s .L886;
.L899:
	R1 = 10 (X);
	jump.s .L886;
.L900:
	R1 = 11 (X);
	jump.s .L886;
.L902:
	R1 = 13 (X);
	jump.s .L886;
.L903:
	R1 = 14 (X);
	jump.s .L886;
.L906:
	R1 = 15 (X);
	jump.s .L886;
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
	if !cc jump .L913;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L913:
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
	if cc jump .L916;
	R7 = 1 (X);
.L918:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L918 (bp);
.L916:
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
	if cc jump .L921;
	cc =R1==0;
	if cc jump .L921;
	R7 = 1 (X);
.L923:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L923 (bp);
.L921:
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
	if cc jump .L929;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L928, .L943) LC1 = P2;
.L928:
	cc =R0<0;
	if cc jump .L929;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L930;
.L943:
	R2 += -1;
.L931:
	cc =P1==0;
	if cc jump .L927 (bp);
	R2 = R3;
.L927:
	R0 = R2;
	rts;
.L930:
	cc =R1==0;
	if cc jump .L937;
.L929:
	R2 = 0 (X);
.L934:
	cc =R3<R0 (iu);
	if cc jump .L933 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L933:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L934 (bp);
	jump.s .L931;
.L937:
	R2 = 0 (X);
	jump.s .L931;
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
	if cc jump .L947;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L948;
.L946:
	SP += 12;
	R0 = R5;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L948:
	R5 = 0 (X);
	jump.s .L946;
.L947:
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
	if cc jump .L952;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L953;
.L951:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L953:
	R7 = 0 (X);
	jump.s .L951;
.L952:
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
	if cc jump .L970;
	cc =R1==0;
	if cc jump .L962;
	P1 = 0 (X);
.L958:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L961;
.L971:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L960;
.L961:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L971 (bp);
.L960:
	cc =P1==0;
	if cc jump .L956;
	R3 = -R3;
.L956:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L970:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L958;
.L962:
	R3 = 0 (X);
	jump.s .L956;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	R2 = R0;
	cc =R2<0;
	R0 = R1;
	if cc jump .L990;
	R1 = 1 (X);
	P1 = 0 (X);
.L973:
	cc =R0<0;
	if !cc jump .L974 (bp);
	R0 = -R0;
	P1 = R1;
.L974:
	cc =R2<=R0 (iu);
	R3 = R2;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L976;
	LSETUP (.L975, .L991) LC1 = P2;
.L975:
	R0 <<= 1;
	cc =R2<=R0 (iu);
	R1 <<= 1;
	if cc jump .L979;
.L991:
	nop;
.L979:
	cc =R1==0;
	R2 = 0 (X);
	if cc jump .L977;
.L976:
	R2 = 0 (X);
.L981:
	cc =R3<R0 (iu);
	if cc jump .L980 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L980:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L981 (bp);
.L977:
	cc =P1==0;
	if cc jump .L972 (bp);
	R2 = -R2;
.L972:
	R0 = R2;
	rts;
.L990:
	R2 = -R2;
	R1 = 0 (X);
	P1 = 1 (X);
	jump.s .L973;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	R0 = R1;
	if cc jump .L1009;
	P1 = 0 (X);
.L993:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L1000;
	LSETUP (.L994, .L1011) LC1 = P2;
.L994:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L998;
.L1011:
	nop;
.L998:
	cc =R1==0;
	if cc jump .L1010;
.L1000:
	cc =R2<R0 (iu);
	if cc jump .L999 (bp);
	R2 = R2 - R0;
.L999:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1000 (bp);
.L996:
	cc =P1==0;
	if cc jump .L992 (bp);
	R2 = -R2;
.L992:
	R0 = R2;
	rts;
.L1009:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L993;
.L1010:
	R2 = R3;
	jump.s .L996;
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
	if !cc jump .L1125;
	R1 = R7.L (X);
	cc =R1<0;
	if cc jump .L1015;
	R1 = R7 << 1;
	R5 = R1.L (Z);
	cc =R6<=R5 (iu);
	R3 = R1;
	if cc jump .L1016;
	R5 = R1.L (X);
	cc =R5<0;
	if cc jump .L1017;
	R5 = R7 << 2;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1018;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1019;
	R5 = R7 << 3;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1020;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1021;
	R5 = R7 << 4;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1022;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1023;
	R5 = R7 << 5;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1024;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1025;
	R5 = R7 << 6;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1026;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1027;
	R5 = R7 << 7;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1028;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1029;
	R5 = R7 << 8;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1030;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1031;
	R5 = R7 << 9;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1032;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1033;
	R5 = R7 << 10;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1034;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1035;
	R5 = R7 << 11;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1036;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1037;
	R5 = R7 << 12;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1038;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1039;
	R5 = R7 << 13;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1040;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1041;
	R5 = R7 << 14;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1042;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1043;
	R7 <<= 15;
	R5 = R7;
	R7 = R7.L (Z);
	cc =R6<=R7 (iu);
	if cc jump .L1044;
	cc =R7==0;
	if !cc jump .L1126;
.L1045:
	cc =R2==0;
	if !cc jump .L1012;
	R0 = R5;
.L1012:
	( r7:4 ) = [sp++];

	rts;
.L1032:
	cc =R6<R1 (iu);
	if cc jump .L1078 (bp);
	R0 = R0 - R5;
	R7 = 512 (X);
	R5 = 512 (X);
	R3 = R3.L (Z);
.L1047:
	R4 = R7 >> 2;
	cc =R4==0;
	R1 = R3 >> 2;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1048 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1048:
	R4 = R7 >> 3;
	cc =R4==0;
	R1 = R3 >> 3;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1049 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1049:
	R4 = R7 >> 4;
	cc =R4==0;
	R1 = R3 >> 4;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1050 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1050:
	R4 = R7 >> 5;
	cc =R4==0;
	R1 = R3 >> 5;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1051 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1051:
	R4 = R7 >> 6;
	cc =R4==0;
	R1 = R3 >> 6;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1052 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1052:
	R4 = R7 >> 7;
	cc =R4==0;
	R1 = R3 >> 7;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1053 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1053:
	R4 = R7 >> 8;
	cc =R4==0;
	R1 = R3 >> 8;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1054 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1054:
	R4 = R7 >> 9;
	cc =R4==0;
	R1 = R3 >> 9;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1055 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1055:
	R4 = R7 >> 10;
	cc =R4==0;
	R1 = R3 >> 10;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1056 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1056:
	R4 = R7 >> 11;
	cc =R4==0;
	R1 = R3 >> 11;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1057 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1057:
	R4 = R7 >> 12;
	cc =R4==0;
	R1 = R3 >> 12;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1058 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1058:
	R4 = R7 >> 13;
	cc =R4==0;
	R1 = R3 >> 13;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1059 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1059:
	R4 = R7 >> 14;
	cc =R4==0;
	R1 = R3 >> 14;
	if cc jump .L1045;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1060 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1060:
	R1 = 16384 (X);
	cc =R7==R1;
	R3 >>= 15;
	if cc jump .L1045;
	R1 = R0.L (Z);
	cc =R1<R3 (iu);
	if cc jump .L1068 (bp);
	R0 = R0 - R3;
	BITSET (R5, 0);
	jump.s .L1045;
.L1068:
	R0 = 0 (X);
	jump.s .L1045;
.L1125:
	cc =R1==R6;
	if cc jump .L1066 (bp);
	R5 = 0 (X);
	jump.s .L1045;
.L1015:
	R0 = R0 - R7;
	R5 = 1 (X);
	jump.s .L1045;
.L1016:
	cc =R6<R5 (iu);
	if cc jump .L1070 (bp);
	R0 = R0 - R1;
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R1.L (Z);
	jump.s .L1047;
.L1017:
	R0 = R0 - R1;
	R1 = 32767 (X);
	R1 = R1 & R7;
	P2 = 1 (X);
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R3.L (Z);
.L1065:
	R6 = R0.L (Z);
	R4 = R1.L (Z);
	cc =R6<R4 (iu);
	if cc jump .L1047;
	R0 = R0 - R1;
	R1 = P2;
	R5 = R5 | R1;
	jump.s .L1047;
.L1018:
	cc =R6<R1 (iu);
	if cc jump .L1071 (bp);
	R0 = R0 - R5;
	R7 = 4 (X);
	R5 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1019:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2 (X);
	R5 = 4 (X);
	R7 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1020:
	cc =R6<R1 (iu);
	if cc jump .L1072 (bp);
	R0 = R0 - R5;
	R7 = 8 (X);
	R5 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1021:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4 (X);
	R5 = 8 (X);
	R7 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1022:
	cc =R6<R1 (iu);
	if cc jump .L1073 (bp);
	R0 = R0 - R5;
	R7 = 16 (X);
	R5 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1023:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8 (X);
	R5 = 16 (X);
	R7 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1024:
	cc =R6<R1 (iu);
	if cc jump .L1074 (bp);
	R0 = R0 - R5;
	R7 = 32 (X);
	R5 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1025:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 16 (X);
	R5 = 32 (X);
	R7 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1026:
	cc =R6<R1 (iu);
	if cc jump .L1075 (bp);
	R0 = R0 - R5;
	R7 = 64 (X);
	R5 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1027:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 32 (X);
	R5 = 64 (X);
	R7 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1028:
	cc =R6<R1 (iu);
	if cc jump .L1076 (bp);
	R0 = R0 - R5;
	R7 = 128 (X);
	R5 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1029:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 64 (X);
	R5 = 128 (X);
	R7 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1031:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 128 (X);
	R5 = 256 (X);
	R7 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1033:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 256 (X);
	R5 = 512 (X);
	R7 = 512 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1066:
	R5 = 1 (X);
	R0 = 0 (X);
	jump.s .L1045;
.L1070:
	R7 = 2 (X);
.L1064:
	R7 = R7.L (Z);
	R1 = R7 >> 1;
	R3 = R3.L (Z);
	P2 = R1;
	R5 = 0 (X);
	R1 = R3 >> 1;
	jump.s .L1065;
.L1035:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 512 (X);
	R5 = 1024 (X);
	R7 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1037:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 1024 (X);
	R5 = 2048 (X);
	R7 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1071:
	R7 = 4 (X);
	jump.s .L1064;
.L1072:
	R7 = 8 (X);
	jump.s .L1064;
.L1039:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2048 (X);
	R5 = 4096 (X);
	R7 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1041:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4096 (X);
	R5 = 8192 (X);
	R7 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1073:
	R7 = 16 (X);
	jump.s .L1064;
.L1074:
	R7 = 32 (X);
	jump.s .L1064;
.L1043:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8192 (X);
	R5 = 16384 (X);
	R7 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L1065;
.L1044:
	R1 = R0.L (X);
	cc =R1<0;
	if cc jump .L1069 (bp);
	R3 = -32768 (X);
	R7 = R3;
	jump.s .L1064;
.L1075:
	R7 = 64 (X);
	jump.s .L1064;
.L1126:
	R5 = -32768 (X);
	R1 = 16384 (X);
	R7 = 32768 (Z);
	R0 = R0 + R5;
	P2 = R1;
	R3 = R7;
	jump.s .L1065;
.L1076:
	R7 = 128 (X);
	jump.s .L1064;
.L1030:
	cc =R6<R1 (iu);
	if cc jump .L1077 (bp);
	R0 = R0 - R5;
	R7 = 256 (X);
	R5 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1069:
	R7 = 32768 (Z);
	R5 = -32768 (X);
	R0 = 0 (X);
	R3 = R7;
	jump.s .L1047;
.L1077:
	R7 = 256 (X);
	jump.s .L1064;
.L1034:
	cc =R6<R1 (iu);
	if cc jump .L1079 (bp);
	R0 = R0 - R5;
	R7 = 1024 (X);
	R5 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1042:
	cc =R6<R1 (iu);
	if cc jump .L1083 (bp);
	R0 = R0 - R5;
	R7 = 16384 (X);
	R5 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1079:
	R7 = 1024 (X);
	jump.s .L1064;
.L1083:
	R7 = 16384 (X);
	jump.s .L1064;
.L1078:
	R7 = 512 (X);
	jump.s .L1064;
.L1040:
	cc =R6<R1 (iu);
	if cc jump .L1082 (bp);
	R0 = R0 - R5;
	R7 = 8192 (X);
	R5 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1038:
	cc =R6<R1 (iu);
	if cc jump .L1081 (bp);
	R0 = R0 - R5;
	R7 = 4096 (X);
	R5 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1036:
	cc =R6<R1 (iu);
	if cc jump .L1080 (bp);
	R0 = R0 - R5;
	R7 = 2048 (X);
	R5 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L1047;
.L1082:
	R7 = 8192 (X);
	jump.s .L1064;
.L1081:
	R7 = 4096 (X);
	jump.s .L1064;
.L1080:
	R7 = 2048 (X);
	jump.s .L1064;
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
	if cc jump .L1129;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1128, .L1143) LC1 = P2;
.L1128:
	cc =R0<0;
	if cc jump .L1129;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1130;
.L1143:
	R2 += -1;
.L1131:
	cc =P1==0;
	if cc jump .L1127 (bp);
	R2 = R3;
.L1127:
	R0 = R2;
	rts;
.L1130:
	cc =R1==0;
	if cc jump .L1137;
.L1129:
	R2 = 0 (X);
.L1134:
	cc =R3<R0 (iu);
	if cc jump .L1133 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1133:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1134 (bp);
	jump.s .L1131;
.L1137:
	R2 = 0 (X);
	jump.s .L1131;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L1145 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L1146:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1145:
	cc =R2==0;
	if cc jump .L1148;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L1146;
.L1148:
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
	if cc jump .L1150 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L1151:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1150:
	cc =R2==0;
	if cc jump .L1153;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L1151;
.L1153:
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
	if cc jump .L1161;
	cc =R0<=R2;
	if !cc jump .L1162;
	cc =R3<R1 (iu);
	if cc jump .L1161;
	cc =R3<=R1 (iu);
	if !cc jump .L1162;
	R0 = 1 (X);
	rts;
.L1161:
	R0 = 0 (X);
	rts;
.L1162:
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
	if cc jump .L1167;
	cc =R0<=R2;
	if !cc jump .L1166;
	cc =R3<R1 (iu);
	if cc jump .L1167;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1167:
	R0 = -1 (X);
	rts;
.L1166:
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
	if cc jump .L1170 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L1171:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1170:
	cc =R2==0;
	if cc jump .L1173;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L1171;
.L1173:
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
	if cc jump .L1182 (bp);
.L1184:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1182:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L1183;
.L1185:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L1184 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L1185;
.L1183:
	cc =R4<0;
	if !cc jump .L1181 (bp);
	R0 = [SP+20];
	R1 = 1023 (X);
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1181:
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
	if cc jump .L1189 (bp);
.L1191:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L1189:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L1190;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1191 (bp);
.L1195:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1191 (bp);
	jump.s .L1195;
.L1190:
	cc =R4<0;
	if !cc jump .L1188 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L1188:
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
	if cc jump .L1200;
	cc =R0<=R2 (iu);
	if !cc jump .L1201;
	cc =R3<R1 (iu);
	if cc jump .L1200;
	cc =R3<=R1 (iu);
	if !cc jump .L1201;
	R0 = 1 (X);
	rts;
.L1200:
	R0 = 0 (X);
	rts;
.L1201:
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
	if cc jump .L1206;
	cc =R0<=R2 (iu);
	if !cc jump .L1205;
	cc =R3<R1 (iu);
	if cc jump .L1206;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1206:
	R0 = -1 (X);
	rts;
.L1205:
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
.global ___subdf3;
.global ___gtdf2;
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
