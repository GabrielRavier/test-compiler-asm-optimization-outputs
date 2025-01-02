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
	if !cc jump .L170;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L171;
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L175 (bp);
	R0 = 0 (X);
	R1 = R1 -|- R1 ||
	[SP+16] = R0 ||
	nop;
	[SP+20] = R1;
.L167:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L175:
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
.L170:
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L167;
.L171:
	R1 = [SP+40];
	R2 = [SP+44];
	[SP+16] = R1;
	R0 = ROT R1 BY 0 ||
	[SP+20] = R2 ||
	nop;
	R1 = R2;
	jump.s .L167;
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
	if !cc jump .L176;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L180;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L183 (bp);
	R0 = R7;
	R1 = R6;
	call ___subsf3;
	R7 = R0;
.L176:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L183:
	SP += 12;
	R7 = 0 (X);
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L180:
	R7 = R6;
	jump.s .L176;
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
	if !cc jump .L192;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L191;
	R0 = [SP+44];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L186 (bp);
	cc =R0==0;
	if !cc jump .L192 (bp);
.L191:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L192:
	R0 = [SP+48];
	R1 = [SP+52];
.L193:
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L186:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L192 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L193;
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
	if !cc jump .L194;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L201;
	R0 = R6 >>> 31;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L196 (bp);
	cc =R0==0;
	if !cc jump .L194 (bp);
.L201:
	R7 = R6;
.L194:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L196:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L194 (bp);
	jump.s .L201;
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
	if !cc jump .L212;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L211;
	R0 = [SP+44];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L206 (bp);
	cc =R0==0;
	if !cc jump .L212 (bp);
.L211:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L212:
	R0 = [SP+48];
	R1 = [SP+52];
.L213:
	[SP+24] = R0;
	[SP+28] = R1;
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L206:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L212 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L213;
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
	if !cc jump .L220;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L222;
	R0 = [SP+36];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L224 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L222 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L223:
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L224:
	cc =R0==0;
	if !cc jump .L222 (bp);
.L220:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L222:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L223;
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
	if !cc jump .L231;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L225;
	R0 = R7 >>> 31;
	R1 = R6 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L227 (bp);
	cc =R0==0;
	if !cc jump .L225 (bp);
.L231:
	R7 = R6;
.L225:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L227:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L225 (bp);
	jump.s .L231;
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
	if !cc jump .L241;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L243;
	R0 = [SP+36];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L245 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L243 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L244:
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L245:
	cc =R0==0;
	if !cc jump .L243 (bp);
.L241:
	R0 = [SP+40];
	R1 = [SP+44];
	[SP+16] = R0;
	[SP+20] = R1;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L243:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L244;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	cc =R0==0;
	P1.L = _s.0;
	if cc jump .L247;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L248:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R0 >>= 6;
	cc =R0==0;
	R1 = B [P2] (X);
	B [P1++] = R1;
	if !cc jump .L248 (bp);
.L247:
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
	if cc jump .L259;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L253;
	[P1+4] = P2;
.L253:
	rts;
.L259:
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
	if cc jump .L261;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L261:
	P2 = [P2+4];
	cc =P2==0;
	if cc jump .L260;
	[P2] = P1;
.L260:
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
	if cc jump .L270;
	R7 = R1;
	FP = 0 (X);
	jump.s .L272;
.L284:
	R0 = P5;
	FP += 1;
	R7 = R7 + R0;
	R0 = FP;
	cc =R6==R0;
	if cc jump .L270;
.L272:
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	R4 = R7;
	if !cc jump .L284 (bp);
.L269:
	SP += 12;
	FP = [SP++];
	R0 = R4;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L270:
	R0 = R6;
	R0 += 1;
	[P3] = R0;
	R0 = P5;
	R6 *= R0;
	cc =P5==0;
	R0 = [SP+52];
	R4 = R0 + R6;
	if cc jump .L269;
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
	if cc jump .L286;
	R6 = 0 (X);
	jump.s .L288;
.L296:
	R6 += 1;
	R0 = P4;
	cc =R4==R6;
	R7 = R7 + R0;
	if cc jump .L286;
.L288:
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	P3 = R7;
	if !cc jump .L296 (bp);
	SP += 12;
	RETS = [SP++];
	R0 = P3;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L286:
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
.L299:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L299;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L299 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L301;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L318 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if !cc jump .L310;
	P0 = 1 (X);
.L304:
	P1 += 1;
	P2 = 0 (X);
.L307:
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
	if cc jump .L307 (bp);
	cc =P0==0;
	if !cc jump .L298 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L298:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L318:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L310;
	P1 = P0;
	P0 = 0 (X);
	jump.s .L304;
.L301:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	P1 = P0;
	cc =R1<=R2 (iu);
	P1 += 1;
	P0 = 0 (X);
	if cc jump .L304 (bp);
.L310:
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
.L320:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L320;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L320 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L322;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L323 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P2;
	P0 = 1 (X);
	if !cc jump .L330;
.L324:
	P1 += 1;
	P2 = 0 (X);
.L327:
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
	if cc jump .L327 (bp);
	cc =P0==0;
	if !cc jump .L319 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L319:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L323:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P0;
	if !cc jump .L330;
.L337:
	P0 = 0 (X);
	jump.s .L324;
.L322:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if cc jump .L337 (bp);
.L330:
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
.L339:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L339;
	R0 = R7;
	R0 += -9;
	cc =R0<=4 (iu);
	if cc jump .L339 (bp);
	R1 = 43 (X);
	cc =R7==R1;
	if cc jump .L341;
	R0 = 45 (X);
	cc =R7==R0;
	if !cc jump .L358 (bp);
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	if !cc jump .L350;
	P4 = 1 (X);
.L344:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L347:
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
	if cc jump .L347 (bp);
	cc =P4==0;
	if !cc jump .L338 (bp);
	R3 = R4 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R1 = R5 - R2;
	R1 = R1 - R0;
.L338:
	SP += 24;
	RETS = [SP++];
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L358:
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L350;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L344;
.L341:
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L344 (bp);
.L350:
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
.L372:
	cc =R7==0;
	if cc jump .L360;
.L373:
	P2 = R7;
	R0 = P5;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	call (P4);
	cc =R0<0;
	if cc jump .L364;
	cc =R0==0;
	if cc jump .L359;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L373 (bp);
.L360:
	R6 = 0 (X);
.L359:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L364:
	R7 = P3;
	jump.s .L372;
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
	if cc jump .L379;
.L375:
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
	if cc jump .L374;
	cc =R0<=0;
	if cc jump .L377;
	R0 = FP;
	R0 += -1;
	R0 >>>= 1;
	FP = R0;
	R6 = R7 + R5;
	cc =FP==0;
	if !cc jump .L375 (bp);
.L379:
	R7 = 0 (X);
.L374:
	SP += 12;
	FP = [SP++];
	R0 = R7;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L377:
	cc =P3==0;
	if cc jump .L379;
	FP = P3;
	jump.s .L375;
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
	if !cc jump .L389 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L389:
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
	if !cc jump .L395 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L395:
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
	if !cc jump .L399 (bp);
	jump.s .L402;
.L401:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L402;
.L399:
	cc =R1==R0;
	if !cc jump .L401 (bp);
	R0 = P2;
	rts;
.L402:
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
	if !cc jump .L405;
	P1 += 4;
	P2 += 4;
	jump.s .L406;
.L407:
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L405;
.L406:
	cc =R0==0;
	if !cc jump .L407 (bp);
.L405:
	cc =R0<R1;
	if cc jump .L409 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L409:
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
.L411:
	nop;
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L411 (bp);
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
	if cc jump .L416;
	R0 = P1;
	R0 += 4;
.L415:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L415 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L416:
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
	if cc jump .L427;
	LSETUP (.L420, .L429) LC1 = P1;
.L420:
	P0 = R0;
	P5 = P2;
	R0 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L421;
	cc =R1==0;
	if cc jump .L421;
.L429:
	nop;
.L427:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L421:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L428 (bp);
	cc =R0<R1;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L428:
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
	if cc jump .L437;
	nop;
	LSETUP (.L432, .L438) LC1 = P1;
.L432:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L430;
.L438:
	nop;
.L437:
	R0 = 0 (X);
.L430:
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
	if cc jump .L448;
	R1 = R3;
	LSETUP (.L441, .L452) LC1 = P0;
.L441:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L450;
.L452:
	nop;
.L448:
	R0 = 0 (X);
	rts;
.L450:
	cc =R3<R2;
	if cc jump .L451 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L451:
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
	if cc jump .L454;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L454:
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
	if cc jump .L465;
	P1 = R1;
	R3 = R0 - R2;
	R2 = R1 << 2;
	cc =R3<R2 (iu);
	P0 = R0;
	P1 += -1;
	if !cc jump .L471 (bp);
	cc =R1==0;
	if cc jump .L465;
	P1 = P1 << 2;
	P2 = P2 + P1;
	P0 = P0 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L463, .L473) LC1 = P1;
.L463:
	R1 = [P2--];
.L473:
	[P0--] = R1;
.L465:
	( p5:5 ) = [sp++];

	rts;
.L471:
	cc =R1==0;
	P1 = R1;
	if cc jump .L465;
	nop;
	nop;
	LSETUP (.L461, .L472) LC1 = P1;
.L461:
	R1 = [P2++];
.L472:
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
	if cc jump .L475;
	P1 = R3;
	LSETUP (.L476, .L481) LC1 = P2;
.L476:
.L481:
	[P1++] = R0;
.L475:
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
	if !cc jump .L483 (bp);
	cc =R2==0;
	R0 = R3 + R2;
	if cc jump .L482;
	P1 = R2;
	P0 = R0;
	R3 = R0 - R3;
	P1 += -1;
	P2 = P2 + P1;
	P0 += -1;
	P1 = R3;
	LSETUP (.L485, .L517) LC1 = P1;
.L485:
	R0 = B [P0--] (X);
.L517:
	B [P2--] = R0;
.L482:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L483:
	cc =R3==R0;
	R2 = P2;
	if cc jump .L482;
	cc =R1==0;
	if cc jump .L482;
	R0 = R1;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L515;
	P0 = R3;
	R0 = R2 | R3;
	R2 = 3 (X);
	R0 = R0 & R2;
	CC = R0;
	P0 += 1;
	if cc jump .L486;
	R2 = P2;
	R7 = P0;
	R0 = R2 - R7;
	cc =R0<=2 (iu);
	if cc jump .L486;
	R2 = R1 >> 2;
	R2 <<= 2;
	P1 = R2;
	P0 = R3;
	P5 = P2 + P1;
	P1 += -4;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L487, .L516) LC1 = P1;
.L487:
	R0 = [P0++];
.L516:
	[P2++] = R0;
	R3 = R3 + R2;
	cc =R1==R2;
	P2 = R3;
	R0 = R1 - R2;
	if cc jump .L482;
	nop;
	nop;
	cc =R0==1;
	R1 = B [P2] (X);
	B [P5] = R1;
	if cc jump .L482;
	nop;
	nop;
	cc =R0==2;
	R1 = B [P2+1] (X);
	B [P5+1] = R1;
	if cc jump .L482;
	nop;
	nop;
	nop;
	R0 = B [P2+2] (X);
	B [P5+2] = R0;
	jump.s .L482;
.L515:
	P0 = R3;
	P0 += 1;
.L486:
	R1 = R3 + R1;
	P1 = R1;
	P1 -= P0;
	P1 += 1;
.L490:
	R0 = B [P0+-1] (X);
	B [P2++] = R0;
	P1 += -1;
	cc =P1==0;
	if !cc jump .L500;
	jump.s .L482;
.L500:
	P0 += 1;
	jump.s .L490;
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
	LSETUP (.L534, .L536) LC1 = P2;
.L534:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L531;
.L536:
	nop;
	R0 = 0 (X);
.L531:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L540;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L537;
	R1 = 1 (X);
.L539:
	R0 >>>= 1;
	cc = !BITTST (R0,0);
	R1 += 1;
	if cc jump .L539 (bp);
.L537:
	R0 = R1;
	rts;
.L540:
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
	if cc jump .L546 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R6 = 1 (X);
	if cc jump .L547;
.L545:
	SP += 12;
	R0 = R6;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L546:
	SP += 12;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:6 ) = [sp++];

	rts;
.L547:
	R6 = 0 (X);
	jump.s .L545;
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
	if cc jump .L551 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L552;
.L550:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L551:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L552:
	R7 = 0 (X);
	jump.s .L550;
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
	if cc jump .L556 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L557;
.L555:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L556:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L557:
	R7 = 0 (X);
	jump.s .L555;
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
	if !cc jump .L560;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L560 (bp);
	cc =R7<0;
	if cc jump .L574;
	R6 = 1 (X);
	R6 <<= 30;
.L562:
	cc = !BITTST (R7,0);
	if cc jump .L563 (bp);
.L564:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L563:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L560;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L564 (bp);
.L575:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L564 (bp);
	jump.s .L575;
.L560:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L574:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L562;
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
	if !cc jump .L577;
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
	if cc jump .L577 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L591;
	R7 = 1 (X);
	R7 <<= 30;
.L579:
	cc = !BITTST (R5,0);
	if cc jump .L580 (bp);
.L581:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L580:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L577;
.L582:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L581 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L582;
.L577:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L591:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L579;
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
	if !cc jump .L593;
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
	if cc jump .L593 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L607;
	R7 = 1 (X);
	R7 <<= 30;
.L595:
	cc = !BITTST (R5,0);
	if cc jump .L596 (bp);
.L597:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L596:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L593;
.L598:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L597 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L598;
.L593:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L607:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L595;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	cc =R2==0;
	[--sp] = ( r7:7, p5:4 );

	R3 = R0;
	P5 = R1;
	if cc jump .L609;
	R0 = R2;
	R0 += -1;
	cc =R0<=3 (iu);
	if cc jump .L610;
	R0 = R3 | R1;
	R1 = 3 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if !cc jump .L610;
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
	LSETUP (.L611, .L627) LC1 = P2;
.L611:
	R1 = [P1];
	R0 = [P0++];
	R0 = R0 ^ R1;
.L627:
	[P1++] = R0;
	P2 = R7;
	cc =R7==R2;
	R1 = R2 - R7;
	P5 = P5 + P2;
	if cc jump .L609;
	nop;
	nop;
	cc =R1==1;
	R0 = B [P4] (X);
	R2 = B [P5] (X);
	R0 = R0 ^ R2;
	B [P4] = R0;
	if cc jump .L609;
	nop;
	nop;
	cc =R1==2;
	R2 = B [P4+1] (X);
	R0 = B [P5+1] (X);
	R0 = R0 ^ R2;
	B [P4+1] = R0;
	if cc jump .L609;
	nop;
	nop;
	nop;
	R1 = B [P4+2] (X);
	R0 = B [P5+2] (X);
	R0 = R0 ^ R1;
	B [P4+2] = R0;
.L609:
	R0 = R3;
	( r7:7, p5:4 ) = [sp++];

	rts;
.L610:
	P1 = R3;
	P2 = R2;
	LSETUP (.L613, .L626) LC1 = P2;
.L613:
	R1 = B [P1++] (X);
	R0 = B [P5++] (X);
	R0 = R0 ^ R1;
.L626:
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
	if cc jump .L635;
	R0 = P5;
	R0 += 1;
.L630:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L630 (bp);
.L629:
	cc =P1==0;
	if cc jump .L631;
	nop;
	nop;
	LSETUP (.L632, .L641) LC1 = P1;
.L632:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L634;
.L641:
	nop;
.L631:
	R0 = 0 (X);
	B [P2] = R0;
.L634:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L635:
	P2 = P5;
	jump.s .L629;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
	if cc jump .L642;
	nop;
	P1 = R0;
	LSETUP (.L644, .L651) LC1 = P1;
.L644:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L650;
.L642:
	R0 = R1;
	rts;
.L650:
.L651:
	R1 += 1;
	R1 = R0;
	jump.s .L642;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L657;
.L653:
	P2 = R2;
	jump.s .L656;
.L655:
	cc =R0==R1;
	if cc jump .L654;
	nop;
	nop;
	nop;
.L656:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L655 (bp);
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
	if !cc jump .L653 (bp);
.L657:
	P1 = 0 (X);
.L654:
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
.L661:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L660 (bp);
	R3 = R1;
.L660:
	cc =R0==0;
	if !cc jump .L661 (bp);
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
	if cc jump .L673;
	R1 += 1;
.L665:
	P2 = R1;
	R1 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	if !cc jump .L665 (bp);
	R2 = P2;
	cc =R2==R7;
	R1 = R2 - R7;
	if cc jump .L673;
	R1 += -1;
	R6 = R7 + R1;
.L666:
	P2 = R0;
	jump.s .L671;
.L686:
	cc =R2==0;
	if cc jump .L685;
	nop;
.L671:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (X);
	R2 = R0.B (X);
	cc =R2==R3;
	if !cc jump .L686 (bp);
	R1 = R6 - R7;
	P0 = R1;
	P5 = R7;
	R0 = R0.B (Z);
	P0 += 1;
.L667:
	nop;
	R1 = B [P5] (Z);
	cc =R1==0;
	if cc jump .L668;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L681;
	nop;
	nop;
	P5 = R6;
.L668:
	R1 = B [P5] (Z);
	cc =R0==R1;
	if cc jump .L663;
	R0 = P1;
	R0 += 1;
	jump.s .L666;
.L681:
	cc =R1==R0;
	if !cc jump .L668;
	nop;
	nop;
	P5 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if !cc jump .L667 (bp);
	jump.s .L668;
.L685:
	P1 = 0 (X);
.L663:
	R0 = P1;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L673:
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
	if cc jump .L697;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L691;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L690;
.L691:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L697:
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L691 (bp);
.L690:
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
	if cc jump .L698;
	cc =R1<R0 (iu);
	if cc jump .L709;
	P1 = R0;
	P3 -= P1;
	P3 = P2 + P3;
	cc =P2<=P3 (iu);
	if !cc jump .L709;
	R3 = R0;
	cc =R0==1;
	R3 += -1;
	R2 = B [FP++] (X);
	R7 = CC;
	jump.s .L704;
.L708:
	P2 = P0;
.L700:
	cc =P3<P2 (iu);
	if cc jump .L709;
	nop;
	nop;
.L704:
	P0 = P2;
	R0 = B [P0++] (X);
	cc =R0==R2;
	if !cc jump .L708 (bp);
	CC = R7;
	if cc jump .L698;
.L703:
	P4 = FP;
	P5 = P0;
	P1 = R3;
	LSETUP (.L701, .L715) LC1 = P1;
.L701:
	R1 = B [P5++] (Z);
	R0 = B [P4++] (Z);
	cc =R1==R0;
	if !cc jump .L714;
.L715:
	nop;
.L698:
	FP = [SP++];
	R0 = P2;
	( r7:7, p5:3 ) = [sp++];

	rts;
.L714:
	cc =P3<P0 (iu);
	if cc jump .L709;
	nop;
	nop;
	P2 = P0;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L700 (bp);
	R0 = P0;
	P0 = P2;
	P2 = R0;
	jump.s .L703;
.L709:
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
	if cc jump .L717;
	R0 = R3;
	call _memmove;
	R3 = R0;
.L717:
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
	if cc jump .L743;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L744;
	R4 = 0 (X);
.L724:
	R5 = 511 (X);
	R6 = 1023 (X);
	R7 = 0 (X);
	R5 <<= 21;
	R6 <<= 20;
.L730:
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
	if !cc jump .L730 (bp);
.L731:
	cc =R4==0;
	[P5] = R7;
	if cc jump .L737;
	R2 = [SP+60];
	R1 = [SP+56];
	BITTGL (R2, 31);
	[SP+24] = R1;
	[SP+28] = R2;
.L721:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L744:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L727 (bp);
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L736;
.L727:
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
.L743:
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
	if !cc jump .L745;
	[SP+56] = R5;
	[SP+60] = R6;
	R4 = 1 (X);
	jump.s .L724;
.L737:
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
.L745:
	R0 = -513 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L734 (bp);
	R0 = [SP+56];
	R1 = [SP+60];
	[P5] = R7;
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L721;
.L734:
	R4 = 1 (X);
.L725:
	[SP+60] = R6;
	R6 = 511 (X);
	[SP+56] = R5;
	R7 = 0 (X);
	R6 <<= 21;
.L732:
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
	if cc jump .L732 (bp);
	jump.s .L731;
.L736:
	R5 = [SP+56];
	R6 = [SP+60];
	R4 = 0 (X);
	jump.s .L725;
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
	if cc jump .L746;
	P4 = 1 (X);
.L749:
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
	if !cc jump .L749 (bp);
.L746:
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
	if !cc jump .L754;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L753, .L768) LC1 = P2;
.L753:
	cc =R0<0;
	if cc jump .L754;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L755;
.L768:
	R2 += -1;
.L756:
	cc =P1==0;
	if cc jump .L752 (bp);
	R2 = R3;
.L752:
	R0 = R2;
	rts;
.L755:
	cc =R1==0;
	if cc jump .L762;
.L754:
	R2 = 0 (X);
.L759:
	cc =R3<R0 (iu);
	if cc jump .L758 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L758:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L759 (bp);
	jump.s .L756;
.L762:
	R2 = 0 (X);
	jump.s .L756;
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
	if cc jump .L771;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	rts;
.L771:
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
	if cc jump .L778;
.L776:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L778:
	cc =R0==R1;
	if !cc jump .L776 (bp);
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
	if cc jump .L779;
	R7 = 1 (X);
.L781:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L781 (bp);
.L779:
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
	if cc jump .L788 (bp);
	R1 = R3 + R2;
	R4 = P5;
	cc =R4<=R1 (iu);
	if cc jump .L814 (bp);
.L788:
	cc =R0==0;
	if cc jump .L815;
	R0 <<= 3;
	R0 += -8;
	R0 >>= 3;
	P2 = R0;
	P0 = R3;
	P1 = P5;
	P2 += 1;
	LSETUP (.L791, .L820) LC1 = P2;
.L791:
	P0 += 8;
	R0 = [P0+-8];
	R1 = [P0+-4];
	[P1+4] = R1;
	[P1] = R0;
.L820:
	P1 += 8;
	cc =R2<=R7 (iu);
	if cc jump .L784;
	R5 = R2 - R7;
	R0 = R5;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L816;
	P2 = R7;
	R6 = R7;
	R6 += 1;
	R6 = R3 + R6;
	R0 = R3 + R7;
	P0 = P5 + P2;
	R1 = P0;
	R6 = R1 - R6;
	cc =R6<=2 (iu);
	if cc jump .L793;
	R6 = R0 | R1;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L793;
	R1 = R5 >> 2;
	R1 <<= 2;
	P2 = R1;
	P1 = R0;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L794, .L819) LC1 = P2;
.L794:
	R0 = [P1++];
.L819:
	[P0++] = R0;
	R7 = R7 + R1;
	cc =R5==R1;
	P2 = R7;
	if cc jump .L784;
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
	if cc jump .L784;
	P2 += 2;
	P0 = P4 + P1;
	R1 = P2;
	R0 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R1 (iu);
	B [P1] = R0;
	if cc jump .L784;
	nop;
	P1 = P4 + P2;
	P2 = P5 + P2;
	R0 = B [P1] (X);
	B [P2] = R0;
.L784:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L814:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L784;
	P0 = R3;
	P5 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L798, .L818) LC1 = P1;
.L798:
	R0 = B [P2--] (X);
.L818:
	B [P5--] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L815:
	cc =R2==0;
	if cc jump .L784;
	R6 = P5;
	R1 = R6 + R7;
	R0 = R3 + R7;
.L793:
	R2 = R3 + R2;
	P1 = R0;
	P2 = R2;
	P0 = R1;
	P2 -= P1;
	LSETUP (.L796, .L817) LC1 = P2;
.L796:
	R0 = B [P1++] (X);
.L817:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L816:
	R0 = P5;
	R1 = R0 + R7;
	R0 = R3 + R7;
	jump.s .L793;
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
	if cc jump .L825 (bp);
	R1 = R1 + R2;
	cc =R3<=R1 (iu);
	if cc jump .L847 (bp);
.L825:
	cc =R7==0;
	if cc jump .L824;
	R1 = R7;
	R1 += -1;
	R6 = 8 (X);
	cc =R1<=R6 (iu);
	if cc jump .L828;
	R1 = R0 | R3;
	R6 = 3 (X);
	R1 = R1 & R6;
	CC = R1;
	if cc jump .L828;
	R1 = R0;
	R1 += 2;
	cc =R3==R1;
	if cc jump .L828;
	R6 = R2 >> 2;
	R5 = R6 << 2;
	P2 = R5;
	P0 = R0;
	P1 = R3;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L829, .L851) LC1 = P2;
.L829:
	R1 = [P0++];
.L851:
	[P1++] = R1;
	R6 <<= 1;
	cc =R7==R6;
	if cc jump .L824;
	R1 = R0 + R5;
	P2 = R1;
	R5 = R3 + R5;
	R1 = W [P2] (X);
	P2 = R5;
	W [P2] = R1;
.L824:
	cc = !BITTST (R2,0);
	if cc jump .L821 (bp);
.L848:
	R2 += -1;
	R0 = R0 + R2;
	P2 = R0;
	R3 = R3 + R2;
	R0 = B [P2] (X);
	P2 = R3;
	B [P2] = R0;
.L821:
	( r7:5, p5:5 ) = [sp++];

	rts;
.L847:
	P0 = R2;
	cc =R2==0;
	P0 += -1;
	if cc jump .L821;
	P2 = R0;
	P5 = R3;
	P1 = P2 + P0;
	P2 = P5 + P0;
	P0 += 1;
	LSETUP (.L834, .L850) LC1 = P0;
.L834:
	R0 = B [P1--] (X);
.L850:
	B [P2--] = R0;
	( r7:5, p5:5 ) = [sp++];

	rts;
.L828:
	P5 = R7;
	P0 = R0;
	P1 = R3;
	P2 = P5 + P5;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L831, .L849) LC1 = P2;
.L831:
	R1 = W [P0++] (X);
.L849:
	W [P1++] = R1;
	cc = !BITTST (R2,0);
	if cc jump .L821 (bp);
	jump.s .L848;
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
	if cc jump .L856 (bp);
	R7 = R1 + R2;
	cc =R4<=R7 (iu);
	if cc jump .L882 (bp);
.L856:
	cc =R0==0;
	if cc jump .L883;
	P4 = R0;
	P0 = R1;
	P1 = P5;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L859, .L888) LC1 = P2;
.L859:
	R0 = [P0++];
.L888:
	[P1++] = R0;
	cc =R2<=R3 (iu);
	if cc jump .L852;
	R5 = R2 - R3;
	R0 = R5;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L884;
	P2 = R3;
	R6 = R3;
	R6 += 1;
	R6 = R1 + R6;
	R0 = R1 + R3;
	P0 = P5 + P2;
	R7 = P0;
	R6 = R7 - R6;
	cc =R6<=2 (iu);
	if cc jump .L861;
	R6 = R0 | R7;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L861;
	R7 = R5 >> 2;
	R7 <<= 2;
	P2 = R7;
	P1 = R0;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L862, .L887) LC1 = P2;
.L862:
	R0 = [P1++];
.L887:
	[P0++] = R0;
	R3 = R3 + R7;
	cc =R5==R7;
	P2 = R3;
	if cc jump .L852;
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
	if cc jump .L852;
	P2 += 2;
	P0 = P4 + P1;
	R4 = P2;
	R0 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R4 (iu);
	B [P1] = R0;
	if cc jump .L852;
	nop;
	P1 = P4 + P2;
	P2 = P5 + P2;
	R0 = B [P1] (X);
	B [P2] = R0;
.L852:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L882:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L852;
	P0 = R1;
	P5 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L866, .L886) LC1 = P1;
.L866:
	R0 = B [P2--] (X);
.L886:
	B [P5--] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L883:
	cc =R2==0;
	if cc jump .L852;
	R0 = P5;
	R7 = R0 + R3;
	R0 = R1 + R3;
.L861:
	R2 = R1 + R2;
	P1 = R0;
	P2 = R2;
	P0 = R7;
	P2 -= P1;
	LSETUP (.L864, .L885) LC1 = P2;
.L864:
	R0 = B [P1++] (X);
.L885:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L884:
	R4 = P5;
	R7 = R4 + R3;
	R0 = R1 + R3;
	jump.s .L861;
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
	if !cc jump .L898;
	R1 = R0 >>> 14;
	cc =R1==0;
	if !cc jump .L895;
	R1 = R0 >>> 13;
	cc =R1==0;
	if !cc jump .L899;
	R1 = R0 >>> 12;
	cc =R1==0;
	if !cc jump .L900;
	R1 = R0 >>> 11;
	cc =R1==0;
	if !cc jump .L901;
	R1 = R0 >>> 10;
	cc =R1==0;
	if !cc jump .L902;
	R1 = R0 >>> 9;
	cc =R1==0;
	if !cc jump .L903;
	R1 = R0 >>> 8;
	cc =R1==0;
	if !cc jump .L904;
	R1 = R0 >>> 7;
	cc =R1==0;
	if !cc jump .L905;
	R1 = R0 >>> 6;
	cc =R1==0;
	if !cc jump .L906;
	R1 = R0 >>> 5;
	cc =R1==0;
	if !cc jump .L907;
	R1 = R0 >>> 4;
	cc =R1==0;
	if !cc jump .L908;
	R1 = R0 >>> 3;
	cc =R1==0;
	if !cc jump .L909;
	R1 = R0 >>> 2;
	cc =R1==0;
	if !cc jump .L910;
	R1 = R0 >>> 1;
	cc =R1==0;
	if !cc jump .L911;
	cc =R0==0;
	R1 = 16 (X);
	if !cc jump .L914;
.L895:
	R0 = R1;
	rts;
.L898:
	R1 = 0 (X);
	jump.s .L895;
.L909:
	R1 = 12 (X);
	jump.s .L895;
.L914:
	R1 = 15 (X);
	jump.s .L895;
.L899:
	R1 = 2 (X);
	jump.s .L895;
.L900:
	R1 = 3 (X);
	jump.s .L895;
.L901:
	R1 = 4 (X);
	jump.s .L895;
.L902:
	R1 = 5 (X);
	jump.s .L895;
.L903:
	R1 = 6 (X);
	jump.s .L895;
.L904:
	R1 = 7 (X);
	jump.s .L895;
.L905:
	R1 = 8 (X);
	jump.s .L895;
.L906:
	R1 = 9 (X);
	jump.s .L895;
.L907:
	R1 = 10 (X);
	jump.s .L895;
.L908:
	R1 = 11 (X);
	jump.s .L895;
.L910:
	R1 = 13 (X);
	jump.s .L895;
.L911:
	R1 = 14 (X);
	jump.s .L895;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	cc = !BITTST (R0,0);
	if !cc jump .L918;
	cc = !BITTST (R0,1);
	if !cc jump .L919;
	cc = !BITTST (R0,2);
	if !cc jump .L920;
	cc = !BITTST (R0,3);
	if !cc jump .L921;
	cc = !BITTST (R0,4);
	if !cc jump .L922;
	cc = !BITTST (R0,5);
	if !cc jump .L923;
	cc = !BITTST (R0,6);
	if !cc jump .L924;
	cc = !BITTST (R0,7);
	if !cc jump .L925;
	cc = !BITTST (R0,8);
	if !cc jump .L926;
	cc = !BITTST (R0,9);
	if !cc jump .L927;
	cc = !BITTST (R0,10);
	if !cc jump .L928;
	cc = !BITTST (R0,11);
	if !cc jump .L929;
	cc = !BITTST (R0,12);
	if !cc jump .L930;
	cc = !BITTST (R0,13);
	if !cc jump .L931;
	cc = !BITTST (R0,14);
	if !cc jump .L932;
	cc = !BITTST (R0,15);
	R1 = 16 (X);
	if !cc jump .L935;
.L915:
	R0 = R1;
	rts;
.L918:
	R1 = 0 (X);
	jump.s .L915;
.L919:
	R1 = 1 (X);
	jump.s .L915;
.L930:
	R1 = 12 (X);
	jump.s .L915;
.L920:
	R1 = 2 (X);
	jump.s .L915;
.L921:
	R1 = 3 (X);
	jump.s .L915;
.L922:
	R1 = 4 (X);
	jump.s .L915;
.L923:
	R1 = 5 (X);
	jump.s .L915;
.L924:
	R1 = 6 (X);
	jump.s .L915;
.L925:
	R1 = 7 (X);
	jump.s .L915;
.L926:
	R1 = 8 (X);
	jump.s .L915;
.L927:
	R1 = 9 (X);
	jump.s .L915;
.L928:
	R1 = 10 (X);
	jump.s .L915;
.L929:
	R1 = 11 (X);
	jump.s .L915;
.L931:
	R1 = 13 (X);
	jump.s .L915;
.L932:
	R1 = 14 (X);
	jump.s .L915;
.L935:
	R1 = 15 (X);
	jump.s .L915;
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
	if !cc jump .L942;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L942:
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
	if cc jump .L945;
	R7 = 1 (X);
.L947:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L947 (bp);
.L945:
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
	if cc jump .L950;
	cc =R1==0;
	if cc jump .L950;
	R7 = 1 (X);
.L952:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L952 (bp);
.L950:
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
	if cc jump .L958;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L957, .L972) LC1 = P2;
.L957:
	cc =R0<0;
	if cc jump .L958;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L959;
.L972:
	R2 += -1;
.L960:
	cc =P1==0;
	if cc jump .L956 (bp);
	R2 = R3;
.L956:
	R0 = R2;
	rts;
.L959:
	cc =R1==0;
	if cc jump .L966;
.L958:
	R2 = 0 (X);
.L963:
	cc =R3<R0 (iu);
	if cc jump .L962 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L962:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L963 (bp);
	jump.s .L960;
.L966:
	R2 = 0 (X);
	jump.s .L960;
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
	if cc jump .L976;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L977;
.L975:
	SP += 12;
	R0 = R5;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L977:
	R5 = 0 (X);
	jump.s .L975;
.L976:
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
	if cc jump .L981;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L982;
.L980:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L982:
	R7 = 0 (X);
	jump.s .L980;
.L981:
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
	if cc jump .L999;
	cc =R1==0;
	if cc jump .L991;
	P1 = 0 (X);
.L987:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L990;
.L1000:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L989;
.L990:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L1000 (bp);
.L989:
	cc =P1==0;
	if cc jump .L985;
	R3 = -R3;
.L985:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L999:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L987;
.L991:
	R3 = 0 (X);
	jump.s .L985;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	R2 = R0;
	cc =R2<0;
	R0 = R1;
	if cc jump .L1019;
	R1 = 1 (X);
	P1 = 0 (X);
.L1002:
	cc =R0<0;
	if !cc jump .L1003 (bp);
	R0 = -R0;
	P1 = R1;
.L1003:
	cc =R2<=R0 (iu);
	R3 = R2;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L1005;
	LSETUP (.L1004, .L1020) LC1 = P2;
.L1004:
	R0 <<= 1;
	cc =R2<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1008;
.L1020:
	nop;
.L1008:
	cc =R1==0;
	R2 = 0 (X);
	if cc jump .L1006;
.L1005:
	R2 = 0 (X);
.L1010:
	cc =R3<R0 (iu);
	if cc jump .L1009 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1009:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1010 (bp);
.L1006:
	cc =P1==0;
	if cc jump .L1001 (bp);
	R2 = -R2;
.L1001:
	R0 = R2;
	rts;
.L1019:
	R2 = -R2;
	R1 = 0 (X);
	P1 = 1 (X);
	jump.s .L1002;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	R0 = R1;
	if cc jump .L1038;
	P1 = 0 (X);
.L1022:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L1029;
	LSETUP (.L1023, .L1040) LC1 = P2;
.L1023:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1027;
.L1040:
	nop;
.L1027:
	cc =R1==0;
	if cc jump .L1039;
.L1029:
	cc =R2<R0 (iu);
	if cc jump .L1028 (bp);
	R2 = R2 - R0;
.L1028:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1029 (bp);
.L1025:
	cc =P1==0;
	if cc jump .L1021 (bp);
	R2 = -R2;
.L1021:
	R0 = R2;
	rts;
.L1038:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L1022;
.L1039:
	R2 = R3;
	jump.s .L1025;
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
	if !cc jump .L1154;
	R1 = R7.L (X);
	cc =R1<0;
	if cc jump .L1044;
	R1 = R7 << 1;
	R5 = R1.L (Z);
	cc =R6<=R5 (iu);
	R3 = R1;
	if cc jump .L1045;
	R5 = R1.L (X);
	cc =R5<0;
	if cc jump .L1046;
	R5 = R7 << 2;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1047;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1048;
	R5 = R7 << 3;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1049;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1050;
	R5 = R7 << 4;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1051;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1052;
	R5 = R7 << 5;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1053;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1054;
	R5 = R7 << 6;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1055;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1056;
	R5 = R7 << 7;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1057;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1058;
	R5 = R7 << 8;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1059;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1060;
	R5 = R7 << 9;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1061;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1062;
	R5 = R7 << 10;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1063;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1064;
	R5 = R7 << 11;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1065;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1066;
	R5 = R7 << 12;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1067;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1068;
	R5 = R7 << 13;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1069;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1070;
	R5 = R7 << 14;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1071;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1072;
	R7 <<= 15;
	R5 = R7;
	R7 = R7.L (Z);
	cc =R6<=R7 (iu);
	if cc jump .L1073;
	cc =R7==0;
	if !cc jump .L1155;
.L1074:
	cc =R2==0;
	if !cc jump .L1041;
	R0 = R5;
.L1041:
	( r7:4 ) = [sp++];

	rts;
.L1061:
	cc =R6<R1 (iu);
	if cc jump .L1107 (bp);
	R0 = R0 - R5;
	R7 = 512 (X);
	R5 = 512 (X);
	R3 = R3.L (Z);
.L1076:
	R4 = R7 >> 2;
	cc =R4==0;
	R1 = R3 >> 2;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1077 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1077:
	R4 = R7 >> 3;
	cc =R4==0;
	R1 = R3 >> 3;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1078 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1078:
	R4 = R7 >> 4;
	cc =R4==0;
	R1 = R3 >> 4;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1079 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1079:
	R4 = R7 >> 5;
	cc =R4==0;
	R1 = R3 >> 5;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1080 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1080:
	R4 = R7 >> 6;
	cc =R4==0;
	R1 = R3 >> 6;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1081 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1081:
	R4 = R7 >> 7;
	cc =R4==0;
	R1 = R3 >> 7;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1082 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1082:
	R4 = R7 >> 8;
	cc =R4==0;
	R1 = R3 >> 8;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1083 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1083:
	R4 = R7 >> 9;
	cc =R4==0;
	R1 = R3 >> 9;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1084 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1084:
	R4 = R7 >> 10;
	cc =R4==0;
	R1 = R3 >> 10;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1085 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1085:
	R4 = R7 >> 11;
	cc =R4==0;
	R1 = R3 >> 11;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1086 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1086:
	R4 = R7 >> 12;
	cc =R4==0;
	R1 = R3 >> 12;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1087 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1087:
	R4 = R7 >> 13;
	cc =R4==0;
	R1 = R3 >> 13;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1088 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1088:
	R4 = R7 >> 14;
	cc =R4==0;
	R1 = R3 >> 14;
	if cc jump .L1074;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1089 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1089:
	R1 = 16384 (X);
	cc =R7==R1;
	R3 >>= 15;
	if cc jump .L1074;
	R1 = R0.L (Z);
	cc =R1<R3 (iu);
	if cc jump .L1097 (bp);
	R0 = R0 - R3;
	BITSET (R5, 0);
	jump.s .L1074;
.L1097:
	R0 = 0 (X);
	jump.s .L1074;
.L1154:
	cc =R1==R6;
	if cc jump .L1095 (bp);
	R5 = 0 (X);
	jump.s .L1074;
.L1044:
	R0 = R0 - R7;
	R5 = 1 (X);
	jump.s .L1074;
.L1045:
	cc =R6<R5 (iu);
	if cc jump .L1099 (bp);
	R0 = R0 - R1;
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R1.L (Z);
	jump.s .L1076;
.L1046:
	R0 = R0 - R1;
	R1 = 32767 (X);
	R1 = R1 & R7;
	P2 = 1 (X);
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R3.L (Z);
.L1094:
	R6 = R0.L (Z);
	R4 = R1.L (Z);
	cc =R6<R4 (iu);
	if cc jump .L1076;
	R0 = R0 - R1;
	R1 = P2;
	R5 = R5 | R1;
	jump.s .L1076;
.L1047:
	cc =R6<R1 (iu);
	if cc jump .L1100 (bp);
	R0 = R0 - R5;
	R7 = 4 (X);
	R5 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1048:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2 (X);
	R5 = 4 (X);
	R7 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1049:
	cc =R6<R1 (iu);
	if cc jump .L1101 (bp);
	R0 = R0 - R5;
	R7 = 8 (X);
	R5 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1050:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4 (X);
	R5 = 8 (X);
	R7 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1051:
	cc =R6<R1 (iu);
	if cc jump .L1102 (bp);
	R0 = R0 - R5;
	R7 = 16 (X);
	R5 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1052:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8 (X);
	R5 = 16 (X);
	R7 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1053:
	cc =R6<R1 (iu);
	if cc jump .L1103 (bp);
	R0 = R0 - R5;
	R7 = 32 (X);
	R5 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1054:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 16 (X);
	R5 = 32 (X);
	R7 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1055:
	cc =R6<R1 (iu);
	if cc jump .L1104 (bp);
	R0 = R0 - R5;
	R7 = 64 (X);
	R5 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1056:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 32 (X);
	R5 = 64 (X);
	R7 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1057:
	cc =R6<R1 (iu);
	if cc jump .L1105 (bp);
	R0 = R0 - R5;
	R7 = 128 (X);
	R5 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1058:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 64 (X);
	R5 = 128 (X);
	R7 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1060:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 128 (X);
	R5 = 256 (X);
	R7 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1062:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 256 (X);
	R5 = 512 (X);
	R7 = 512 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1095:
	R5 = 1 (X);
	R0 = 0 (X);
	jump.s .L1074;
.L1099:
	R7 = 2 (X);
.L1093:
	R7 = R7.L (Z);
	R1 = R7 >> 1;
	R3 = R3.L (Z);
	P2 = R1;
	R5 = 0 (X);
	R1 = R3 >> 1;
	jump.s .L1094;
.L1064:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 512 (X);
	R5 = 1024 (X);
	R7 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1066:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 1024 (X);
	R5 = 2048 (X);
	R7 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1100:
	R7 = 4 (X);
	jump.s .L1093;
.L1101:
	R7 = 8 (X);
	jump.s .L1093;
.L1068:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2048 (X);
	R5 = 4096 (X);
	R7 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1070:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4096 (X);
	R5 = 8192 (X);
	R7 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1102:
	R7 = 16 (X);
	jump.s .L1093;
.L1103:
	R7 = 32 (X);
	jump.s .L1093;
.L1072:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8192 (X);
	R5 = 16384 (X);
	R7 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L1094;
.L1073:
	R1 = R0.L (X);
	cc =R1<0;
	if cc jump .L1098 (bp);
	R3 = -32768 (X);
	R7 = R3;
	jump.s .L1093;
.L1104:
	R7 = 64 (X);
	jump.s .L1093;
.L1155:
	R5 = -32768 (X);
	R1 = 16384 (X);
	R7 = 32768 (Z);
	R0 = R0 + R5;
	P2 = R1;
	R3 = R7;
	jump.s .L1094;
.L1105:
	R7 = 128 (X);
	jump.s .L1093;
.L1059:
	cc =R6<R1 (iu);
	if cc jump .L1106 (bp);
	R0 = R0 - R5;
	R7 = 256 (X);
	R5 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1098:
	R7 = 32768 (Z);
	R5 = -32768 (X);
	R0 = 0 (X);
	R3 = R7;
	jump.s .L1076;
.L1106:
	R7 = 256 (X);
	jump.s .L1093;
.L1063:
	cc =R6<R1 (iu);
	if cc jump .L1108 (bp);
	R0 = R0 - R5;
	R7 = 1024 (X);
	R5 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1071:
	cc =R6<R1 (iu);
	if cc jump .L1112 (bp);
	R0 = R0 - R5;
	R7 = 16384 (X);
	R5 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1108:
	R7 = 1024 (X);
	jump.s .L1093;
.L1112:
	R7 = 16384 (X);
	jump.s .L1093;
.L1107:
	R7 = 512 (X);
	jump.s .L1093;
.L1069:
	cc =R6<R1 (iu);
	if cc jump .L1111 (bp);
	R0 = R0 - R5;
	R7 = 8192 (X);
	R5 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1067:
	cc =R6<R1 (iu);
	if cc jump .L1110 (bp);
	R0 = R0 - R5;
	R7 = 4096 (X);
	R5 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1065:
	cc =R6<R1 (iu);
	if cc jump .L1109 (bp);
	R0 = R0 - R5;
	R7 = 2048 (X);
	R5 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L1076;
.L1111:
	R7 = 8192 (X);
	jump.s .L1093;
.L1110:
	R7 = 4096 (X);
	jump.s .L1093;
.L1109:
	R7 = 2048 (X);
	jump.s .L1093;
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
	if cc jump .L1158;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1157, .L1172) LC1 = P2;
.L1157:
	cc =R0<0;
	if cc jump .L1158;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1159;
.L1172:
	R2 += -1;
.L1160:
	cc =P1==0;
	if cc jump .L1156 (bp);
	R2 = R3;
.L1156:
	R0 = R2;
	rts;
.L1159:
	cc =R1==0;
	if cc jump .L1166;
.L1158:
	R2 = 0 (X);
.L1163:
	cc =R3<R0 (iu);
	if cc jump .L1162 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1162:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1163 (bp);
	jump.s .L1160;
.L1166:
	R2 = 0 (X);
	jump.s .L1160;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L1174 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L1175:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1174:
	cc =R2==0;
	if cc jump .L1177;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L1175;
.L1177:
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
	if cc jump .L1179 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L1180:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1179:
	cc =R2==0;
	if cc jump .L1182;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L1180;
.L1182:
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
	if cc jump .L1190;
	cc =R0<=R2;
	if !cc jump .L1191;
	cc =R3<R1 (iu);
	if cc jump .L1190;
	cc =R3<=R1 (iu);
	if !cc jump .L1191;
	R0 = 1 (X);
	rts;
.L1190:
	R0 = 0 (X);
	rts;
.L1191:
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
	if cc jump .L1196;
	cc =R0<=R2;
	if !cc jump .L1195;
	cc =R3<R1 (iu);
	if cc jump .L1196;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1196:
	R0 = -1 (X);
	rts;
.L1195:
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
	if cc jump .L1199 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L1200:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1199:
	cc =R2==0;
	if cc jump .L1202;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L1200;
.L1202:
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
	if cc jump .L1211 (bp);
.L1213:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1211:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L1212;
.L1214:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L1213 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L1214;
.L1212:
	cc =R4<0;
	if !cc jump .L1210 (bp);
	R0 = [SP+20];
	R1 = 1023 (X);
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1210:
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
	if cc jump .L1218 (bp);
.L1220:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L1218:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L1219;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1220 (bp);
.L1224:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1220 (bp);
	jump.s .L1224;
.L1219:
	cc =R4<0;
	if !cc jump .L1217 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L1217:
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
	if cc jump .L1229;
	cc =R0<=R2 (iu);
	if !cc jump .L1230;
	cc =R3<R1 (iu);
	if cc jump .L1229;
	cc =R3<=R1 (iu);
	if !cc jump .L1230;
	R0 = 1 (X);
	rts;
.L1229:
	R0 = 0 (X);
	rts;
.L1230:
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
	if cc jump .L1235;
	cc =R0<=R2 (iu);
	if !cc jump .L1234;
	cc =R3<R1 (iu);
	if cc jump .L1235;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1235:
	R0 = -1 (X);
	rts;
.L1234:
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
