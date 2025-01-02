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
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -24;
	R6 = R6 -|- R6 ||
	[SP+44] = R2 ||
	nop;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[SP+40] = R1 ||
	nop;
	[SP+36] = R0;
	call ___ltdf2;
	cc = BITTST (R0,31);
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	R0 = [SP+44] ||
	nop;
	R1 = [SP+48];
	R7 = CC;
	call ___ltdf2;
	R7 = R7.B (Z);
	R0 >>= 31;
	cc =R7==R0;
	if cc jump .L180 (bp);
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	R0 = [SP+36] ||
	nop;
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L189;
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
.L179:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L180:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+16];
	R1 = [SP+20];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L179 (bp);
.L189:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R5 = R1;
	R1 = 0 (X);
	R7 = R0;
	call ___ltsf2;
	cc = BITTST (R0,31);
	R1 = 0 (X);
	R0 = R5;
	R6 = CC;
	call ___ltsf2;
	R6 = R6.B (Z);
	R0 >>= 31;
	cc =R6==R0;
	if cc jump .L191 (bp);
	R1 = 0 (X);
	R0 = R7;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L200;
.L190:
	SP += 12;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L191:
	R1 = R5;
	R0 = R7;
	call ___gesf2;
	cc =R0<0;
	if !cc jump .L190 (bp);
.L200:
	SP += 12;
	R7 = R5;
	RETS = [SP++];
	R0 = R7;
	( r7:5 ) = [sp++];

	rts;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -24;
	R6 = R6 -|- R6 ||
	[SP+44] = R2 ||
	nop;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[SP+40] = R1 ||
	nop;
	[SP+36] = R0;
	call ___ltdf2;
	cc = BITTST (R0,31);
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	R0 = [SP+44] ||
	nop;
	R1 = [SP+48];
	R7 = CC;
	call ___ltdf2;
	R7 = R7.B (Z);
	R0 >>= 31;
	cc =R7==R0;
	if cc jump .L202 (bp);
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	R0 = [SP+36] ||
	nop;
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L211;
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
.L201:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L202:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+16];
	R1 = [SP+20];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L201 (bp);
.L211:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -24;
	R6 = R6 -|- R6 ||
	[SP+44] = R2 ||
	nop;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[SP+40] = R1 ||
	nop;
	[SP+36] = R0;
	call ___ltdf2;
	cc = BITTST (R0,31);
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	R0 = [SP+44] ||
	nop;
	R1 = [SP+48];
	R7 = CC;
	call ___ltdf2;
	R7 = R7.B (Z);
	R0 >>= 31;
	cc =R7==R0;
	if cc jump .L213 (bp);
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	R0 = [SP+36] ||
	nop;
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L223;
.L221:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L213:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+16];
	R1 = [SP+20];
	call ___ledf2;
	cc =R0<=0;
	if !cc jump .L221 (bp);
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L223:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R5 = R1;
	R1 = 0 (X);
	R7 = R0;
	call ___ltsf2;
	cc = BITTST (R0,31);
	R1 = 0 (X);
	R0 = R5;
	R6 = CC;
	call ___ltsf2;
	R6 = R6.B (Z);
	R0 >>= 31;
	cc =R6==R0;
	if cc jump .L225 (bp);
	R1 = 0 (X);
	R0 = R7;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L224;
.L233:
	R7 = R5;
.L224:
	SP += 12;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L225:
	R1 = R5;
	R0 = R7;
	call ___lesf2;
	cc =R0<=0;
	if !cc jump .L233 (bp);
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:5 ) = [sp++];

	rts;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -24;
	R6 = R6 -|- R6 ||
	[SP+44] = R2 ||
	nop;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[SP+40] = R1 ||
	nop;
	[SP+36] = R0;
	call ___ltdf2;
	cc = BITTST (R0,31);
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	R0 = [SP+44] ||
	nop;
	R1 = [SP+48];
	R7 = CC;
	call ___ltdf2;
	R7 = R7.B (Z);
	R0 >>= 31;
	cc =R7==R0;
	if cc jump .L236 (bp);
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	R0 = [SP+36] ||
	nop;
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L246;
.L244:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L236:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+16];
	R1 = [SP+20];
	call ___ledf2;
	cc =R0<=0;
	if !cc jump .L244 (bp);
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L246:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	cc =R0==0;
	P1.L = _s.0;
	if cc jump .L248;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L249:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R0 >>= 6;
	cc =R0==0;
	R1 = B [P2] (X);
	B [P1++] = R1;
	if !cc jump .L249 (bp);
.L248:
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
	if cc jump .L260;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L254;
	[P1+4] = P2;
.L254:
	rts;
.L260:
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
	if cc jump .L262;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L262:
	P2 = [P2+4];
	cc =P2==0;
	if cc jump .L261;
	[P2] = P1;
.L261:
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
	if cc jump .L271;
	R7 = R1;
	FP = 0 (X);
	jump.s .L273;
.L285:
	R0 = P5;
	FP += 1;
	R7 = R7 + R0;
	R0 = FP;
	cc =R6==R0;
	if cc jump .L271;
.L273:
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	R4 = R7;
	if !cc jump .L285 (bp);
.L270:
	SP += 12;
	FP = [SP++];
	R0 = R4;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L271:
	R0 = R6;
	R0 += 1;
	[P3] = R0;
	R0 = P5;
	R6 *= R0;
	cc =P5==0;
	R0 = [SP+52];
	R4 = R0 + R6;
	if cc jump .L270;
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
	if cc jump .L287;
	R6 = 0 (X);
	jump.s .L289;
.L297:
	R6 += 1;
	R0 = P4;
	cc =R4==R6;
	R7 = R7 + R0;
	if cc jump .L287;
.L289:
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	P3 = R7;
	if !cc jump .L297 (bp);
	SP += 12;
	RETS = [SP++];
	R0 = P3;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L287:
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
.L300:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L300;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L300 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L302;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L319 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if !cc jump .L311;
	P0 = 1 (X);
.L305:
	P1 += 1;
	P2 = 0 (X);
.L308:
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
	if cc jump .L308 (bp);
	cc =P0==0;
	if !cc jump .L299 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L299:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L319:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L311;
	P1 = P0;
	P0 = 0 (X);
	jump.s .L305;
.L302:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	P1 = P0;
	cc =R1<=R2 (iu);
	P1 += 1;
	P0 = 0 (X);
	if cc jump .L305 (bp);
.L311:
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
.L321:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L321;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L321 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L323;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L324 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P2;
	P0 = 1 (X);
	if !cc jump .L331;
.L325:
	P1 += 1;
	P2 = 0 (X);
.L328:
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
	if cc jump .L328 (bp);
	cc =P0==0;
	if !cc jump .L320 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L320:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L324:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P0;
	if !cc jump .L331;
.L338:
	P0 = 0 (X);
	jump.s .L325;
.L323:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if cc jump .L338 (bp);
.L331:
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
.L340:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L340;
	R0 = R7;
	R0 += -9;
	cc =R0<=4 (iu);
	if cc jump .L340 (bp);
	R1 = 43 (X);
	cc =R7==R1;
	if cc jump .L342;
	R0 = 45 (X);
	cc =R7==R0;
	if !cc jump .L359 (bp);
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	if !cc jump .L351;
	P4 = 1 (X);
.L345:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L348:
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
	if cc jump .L348 (bp);
	cc =P4==0;
	if !cc jump .L339 (bp);
	R3 = R4 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R1 = R5 - R2;
	R1 = R1 - R0;
.L339:
	SP += 24;
	RETS = [SP++];
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L359:
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L351;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L345;
.L342:
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L345 (bp);
.L351:
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
.L373:
	cc =R7==0;
	if cc jump .L361;
.L374:
	P2 = R7;
	R0 = P5;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	call (P4);
	cc =R0<0;
	if cc jump .L365;
	cc =R0==0;
	if cc jump .L360;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L374 (bp);
.L361:
	R6 = 0 (X);
.L360:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L365:
	R7 = P3;
	jump.s .L373;
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
	if cc jump .L380;
.L376:
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
	if cc jump .L375;
	cc =R0<=0;
	if cc jump .L378;
	R0 = FP;
	R0 += -1;
	R0 >>>= 1;
	FP = R0;
	R6 = R7 + R5;
	cc =FP==0;
	if !cc jump .L376 (bp);
.L380:
	R7 = 0 (X);
.L375:
	SP += 12;
	FP = [SP++];
	R0 = R7;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L378:
	cc =P3==0;
	if cc jump .L380;
	FP = P3;
	jump.s .L376;
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
	if !cc jump .L390 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L390:
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
	if !cc jump .L396 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L396:
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
	if !cc jump .L400 (bp);
	jump.s .L403;
.L402:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L403;
.L400:
	cc =R1==R0;
	if !cc jump .L402 (bp);
	R0 = P2;
	rts;
.L403:
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
	if !cc jump .L406;
	P1 += 4;
	P2 += 4;
	jump.s .L407;
.L408:
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L406;
.L407:
	cc =R0==0;
	if !cc jump .L408 (bp);
.L406:
	cc =R0<R1;
	if cc jump .L410 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L410:
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
.L412:
	nop;
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L412 (bp);
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
	if cc jump .L417;
	R0 = P1;
	R0 += 4;
.L416:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L416 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L417:
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
	if cc jump .L428;
	LSETUP (.L421, .L430) LC1 = P1;
.L421:
	P0 = R0;
	P5 = P2;
	R0 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L422;
	cc =R1==0;
	if cc jump .L422;
.L430:
	nop;
.L428:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L422:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L429 (bp);
	cc =R0<R1;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L429:
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
	if cc jump .L438;
	nop;
	LSETUP (.L433, .L439) LC1 = P1;
.L433:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L431;
.L439:
	nop;
.L438:
	R0 = 0 (X);
.L431:
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
	if cc jump .L449;
	R1 = R3;
	LSETUP (.L442, .L453) LC1 = P0;
.L442:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L451;
.L453:
	nop;
.L449:
	R0 = 0 (X);
	rts;
.L451:
	cc =R3<R2;
	if cc jump .L452 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L452:
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
	if cc jump .L455;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L455:
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
	if cc jump .L466;
	P1 = R1;
	R3 = R0 - R2;
	R2 = R1 << 2;
	cc =R3<R2 (iu);
	P0 = R0;
	P1 += -1;
	if !cc jump .L472 (bp);
	cc =R1==0;
	if cc jump .L466;
	P1 = P1 << 2;
	P2 = P2 + P1;
	P0 = P0 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L464, .L474) LC1 = P1;
.L464:
	R1 = [P2--];
.L474:
	[P0--] = R1;
.L466:
	( p5:5 ) = [sp++];

	rts;
.L472:
	cc =R1==0;
	P1 = R1;
	if cc jump .L466;
	nop;
	nop;
	LSETUP (.L462, .L473) LC1 = P1;
.L462:
	R1 = [P2++];
.L473:
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
	if cc jump .L476;
	P1 = R3;
	LSETUP (.L477, .L482) LC1 = P2;
.L477:
.L482:
	[P1++] = R0;
.L476:
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
	if !cc jump .L484 (bp);
	cc =R2==0;
	R0 = R3 + R2;
	if cc jump .L483;
	P1 = R2;
	P0 = R0;
	R3 = R0 - R3;
	P1 += -1;
	P2 = P2 + P1;
	P0 += -1;
	P1 = R3;
	LSETUP (.L486, .L518) LC1 = P1;
.L486:
	R0 = B [P0--] (X);
.L518:
	B [P2--] = R0;
.L483:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L484:
	cc =R3==R0;
	R2 = P2;
	if cc jump .L483;
	cc =R1==0;
	if cc jump .L483;
	R0 = R1;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L516;
	P0 = R3;
	R0 = R2 | R3;
	R2 = 3 (X);
	R0 = R0 & R2;
	CC = R0;
	P0 += 1;
	if cc jump .L487;
	R2 = P2;
	R7 = P0;
	R0 = R2 - R7;
	cc =R0<=2 (iu);
	if cc jump .L487;
	R2 = R1 >> 2;
	R2 <<= 2;
	P1 = R2;
	P0 = R3;
	P5 = P2 + P1;
	P1 += -4;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L488, .L517) LC1 = P1;
.L488:
	R0 = [P0++];
.L517:
	[P2++] = R0;
	R3 = R3 + R2;
	cc =R1==R2;
	P2 = R3;
	R0 = R1 - R2;
	if cc jump .L483;
	nop;
	nop;
	cc =R0==1;
	R1 = B [P2] (X);
	B [P5] = R1;
	if cc jump .L483;
	nop;
	nop;
	cc =R0==2;
	R1 = B [P2+1] (X);
	B [P5+1] = R1;
	if cc jump .L483;
	nop;
	nop;
	nop;
	R0 = B [P2+2] (X);
	B [P5+2] = R0;
	jump.s .L483;
.L516:
	P0 = R3;
	P0 += 1;
.L487:
	R1 = R3 + R1;
	P1 = R1;
	P1 -= P0;
	P1 += 1;
.L491:
	R0 = B [P0+-1] (X);
	B [P2++] = R0;
	P1 += -1;
	cc =P1==0;
	if !cc jump .L501;
	jump.s .L483;
.L501:
	P0 += 1;
	jump.s .L491;
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
	LSETUP (.L535, .L537) LC1 = P2;
.L535:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L532;
.L537:
	nop;
	R0 = 0 (X);
.L532:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L541;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L538;
	R1 = 1 (X);
.L540:
	R0 >>>= 1;
	cc = !BITTST (R0,0);
	R1 += 1;
	if cc jump .L540 (bp);
.L538:
	R0 = R1;
	rts;
.L541:
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
	if cc jump .L549 (bp);
	cc =R7<0;
	if cc jump .L563;
	R6 = 1 (X);
	R6 <<= 30;
.L551:
	cc = !BITTST (R7,0);
	if cc jump .L552 (bp);
.L553:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L552:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L549;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L553 (bp);
.L564:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L553 (bp);
	jump.s .L564;
.L549:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L563:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L551;
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
	if cc jump .L566 (bp);
	cc =R7<0;
	R4 = 0 (X);
	if cc jump .L580;
	R5 = 1 (X);
	R5 <<= 30;
.L568:
	cc = !BITTST (R7,0);
	if cc jump .L569 (bp);
.L570:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R5;
	R2 = R4;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L569:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L566;
.L571:
	[SP+12] = R5;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	cc = !BITTST (R7,0);
	R4 = R0;
	R5 = R1;
	if !cc jump .L570 (bp);
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	jump.s .L571;
.L566:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L580:
	R5 = 511 (X);
	R5 <<= 21;
	jump.s .L568;
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
	[SP+20] = R1;
	[SP+16] = R0;
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L581 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L594;
	R7 = 1 (X);
	R7 <<= 30;
.L584:
	R0 = [SP+48];
	R1 = [SP+52];
	cc = !BITTST (R5,0);
	[SP+16] = R0;
	[SP+20] = R1;
	if cc jump .L585 (bp);
.L586:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L585:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L581;
.L587:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L586 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L587;
.L581:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L594:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L584;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	cc =R2==0;
	[--sp] = ( r7:7, p5:4 );

	R3 = R0;
	P5 = R1;
	if cc jump .L596;
	R0 = R2;
	R0 += -1;
	cc =R0<=3 (iu);
	if cc jump .L597;
	R0 = R3 | R1;
	R1 = 3 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if !cc jump .L597;
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
	LSETUP (.L598, .L614) LC1 = P2;
.L598:
	R1 = [P1];
	R0 = [P0++];
	R0 = R0 ^ R1;
.L614:
	[P1++] = R0;
	P2 = R7;
	cc =R7==R2;
	R1 = R2 - R7;
	P5 = P5 + P2;
	if cc jump .L596;
	nop;
	nop;
	cc =R1==1;
	R0 = B [P4] (X);
	R2 = B [P5] (X);
	R0 = R0 ^ R2;
	B [P4] = R0;
	if cc jump .L596;
	nop;
	nop;
	cc =R1==2;
	R2 = B [P4+1] (X);
	R0 = B [P5+1] (X);
	R0 = R0 ^ R2;
	B [P4+1] = R0;
	if cc jump .L596;
	nop;
	nop;
	nop;
	R1 = B [P4+2] (X);
	R0 = B [P5+2] (X);
	R0 = R0 ^ R1;
	B [P4+2] = R0;
.L596:
	R0 = R3;
	( r7:7, p5:4 ) = [sp++];

	rts;
.L597:
	P1 = R3;
	P2 = R2;
	LSETUP (.L600, .L613) LC1 = P2;
.L600:
	R1 = B [P1++] (X);
	R0 = B [P5++] (X);
	R0 = R0 ^ R1;
.L613:
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
	if cc jump .L622;
	R0 = P5;
	R0 += 1;
.L617:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L617 (bp);
.L616:
	cc =P1==0;
	if cc jump .L618;
	nop;
	nop;
	LSETUP (.L619, .L628) LC1 = P1;
.L619:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L621;
.L628:
	nop;
.L618:
	R0 = 0 (X);
	B [P2] = R0;
.L621:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L622:
	P2 = P5;
	jump.s .L616;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
	if cc jump .L629;
	nop;
	P1 = R0;
	LSETUP (.L631, .L638) LC1 = P1;
.L631:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L637;
.L629:
	R0 = R1;
	rts;
.L637:
.L638:
	R1 += 1;
	R1 = R0;
	jump.s .L629;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L644;
.L640:
	P2 = R2;
	jump.s .L643;
.L642:
	cc =R0==R1;
	if cc jump .L641;
	nop;
	nop;
	nop;
.L643:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L642 (bp);
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
	if !cc jump .L640 (bp);
.L644:
	P1 = 0 (X);
.L641:
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
.L648:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L647 (bp);
	R3 = R1;
.L647:
	cc =R0==0;
	if !cc jump .L648 (bp);
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
	if cc jump .L660;
	R1 += 1;
.L652:
	P2 = R1;
	R1 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	if !cc jump .L652 (bp);
	R2 = P2;
	cc =R2==R7;
	R1 = R2 - R7;
	if cc jump .L660;
	R1 += -1;
	R6 = R7 + R1;
.L653:
	P2 = R0;
	jump.s .L658;
.L673:
	cc =R2==0;
	if cc jump .L672;
	nop;
.L658:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (X);
	R2 = R0.B (X);
	cc =R2==R3;
	if !cc jump .L673 (bp);
	R1 = R6 - R7;
	P0 = R1;
	P5 = R7;
	R0 = R0.B (Z);
	P0 += 1;
.L654:
	nop;
	R1 = B [P5] (Z);
	cc =R1==0;
	if cc jump .L655;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L668;
	nop;
	nop;
	P5 = R6;
.L655:
	R1 = B [P5] (Z);
	cc =R0==R1;
	if cc jump .L650;
	R0 = P1;
	R0 += 1;
	jump.s .L653;
.L668:
	cc =R1==R0;
	if !cc jump .L655;
	nop;
	nop;
	P5 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if !cc jump .L654 (bp);
	jump.s .L655;
.L672:
	P1 = 0 (X);
.L650:
	R0 = P1;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L660:
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
	if cc jump .L684;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L678;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L677;
.L678:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L684:
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L678 (bp);
.L677:
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
	if cc jump .L685;
	cc =R1<R0 (iu);
	if cc jump .L696;
	P1 = R0;
	P3 -= P1;
	P3 = P2 + P3;
	cc =P2<=P3 (iu);
	if !cc jump .L696;
	R3 = R0;
	cc =R0==1;
	R3 += -1;
	R2 = B [FP++] (X);
	R7 = CC;
	jump.s .L691;
.L695:
	P2 = P0;
.L687:
	cc =P3<P2 (iu);
	if cc jump .L696;
	nop;
	nop;
.L691:
	P0 = P2;
	R0 = B [P0++] (X);
	cc =R0==R2;
	if !cc jump .L695 (bp);
	CC = R7;
	if cc jump .L685;
.L690:
	P4 = FP;
	P5 = P0;
	P1 = R3;
	LSETUP (.L688, .L702) LC1 = P1;
.L688:
	R1 = B [P5++] (Z);
	R0 = B [P4++] (Z);
	cc =R1==R0;
	if !cc jump .L701;
.L702:
	nop;
.L685:
	FP = [SP++];
	R0 = P2;
	( r7:7, p5:3 ) = [sp++];

	rts;
.L701:
	cc =P3<P0 (iu);
	if cc jump .L696;
	nop;
	nop;
	P2 = P0;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L687 (bp);
	R0 = P0;
	P0 = P2;
	P2 = R0;
	jump.s .L690;
.L696:
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
	if cc jump .L704;
	R0 = R3;
	call _memmove;
	R3 = R0;
.L704:
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
	if cc jump .L731;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = R6;
	R1 = R7;
	call ___gedf2;
	cc =R0<0;
	if cc jump .L732;
	P3 = 0 (X);
.L711:
	P5.H = 16352;
	R4 = 1 (X);
	R5 = 0 (X);
	P5.L = 0;
	R4 <<= 30;
.L717:
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
	if !cc jump .L717 (bp);
.L718:
	cc =P3==0;
	[P4] = R5;
	if cc jump .L724;
	R1 = ROT R7 BY 0 ||
	[SP+24] = R6 ||
	nop;
	BITTGL (R1, 31);
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 40;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L732:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L730 (bp);
	[SP+12] = R5;
	R2 = 0 (X);
	R0 = R6;
	R1 = R7;
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L723;
.L730:
	[SP+24] = R6;
	[SP+28] = R7;
	[P4] = R5;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 40;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L731:
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
	if !cc jump .L733;
	R7 = P1;
	P3 = 1 (X);
	jump.s .L711;
.L724:
	[SP+24] = R6;
	[SP+28] = R7;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 40;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L733:
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
	if cc jump .L730 (bp);
	P3 = 1 (X);
.L712:
	R4 = 1021 (X);
	R6 = P0;
	R7 = P1;
	R5 = 0 (X);
	R4 <<= 20;
.L719:
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
	if cc jump .L719 (bp);
	jump.s .L718;
.L723:
	P0 = R6;
	P1 = R7;
	P3 = 0 (X);
	jump.s .L712;
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
	if cc jump .L734;
	P4 = 1 (X);
.L737:
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
	if !cc jump .L737 (bp);
.L734:
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
	if !cc jump .L742;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L741, .L756) LC1 = P2;
.L741:
	cc =R0<0;
	if cc jump .L742;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L743;
.L756:
	R2 += -1;
.L744:
	cc =P1==0;
	if cc jump .L740 (bp);
	R2 = R3;
.L740:
	R0 = R2;
	rts;
.L743:
	cc =R1==0;
	if cc jump .L750;
.L742:
	R2 = 0 (X);
.L747:
	cc =R3<R0 (iu);
	if cc jump .L746 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L746:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L747 (bp);
	jump.s .L744;
.L750:
	R2 = 0 (X);
	jump.s .L744;
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
	if cc jump .L759;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	rts;
.L759:
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
	if cc jump .L766;
.L764:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L766:
	cc =R0==R1;
	if !cc jump .L764 (bp);
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
	if cc jump .L767;
	R7 = 1 (X);
.L769:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L769 (bp);
.L767:
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
	if cc jump .L776 (bp);
	R1 = R3 + R2;
	R4 = P5;
	cc =R4<=R1 (iu);
	if cc jump .L802 (bp);
.L776:
	cc =R0==0;
	if cc jump .L803;
	R0 <<= 3;
	R0 += -8;
	R0 >>= 3;
	P2 = R0;
	P0 = R3;
	P1 = P5;
	P2 += 1;
	LSETUP (.L779, .L808) LC1 = P2;
.L779:
	P0 += 8;
	R0 = [P0+-8];
	R1 = [P0+-4];
	[P1+4] = R1;
	[P1] = R0;
.L808:
	P1 += 8;
	cc =R2<=R7 (iu);
	if cc jump .L772;
	R5 = R2 - R7;
	R0 = R5;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L804;
	P2 = R7;
	R6 = R7;
	R6 += 1;
	R6 = R3 + R6;
	R0 = R3 + R7;
	P0 = P5 + P2;
	R1 = P0;
	R6 = R1 - R6;
	cc =R6<=2 (iu);
	if cc jump .L781;
	R6 = R0 | R1;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L781;
	R1 = R5 >> 2;
	R1 <<= 2;
	P2 = R1;
	P1 = R0;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L782, .L807) LC1 = P2;
.L782:
	R0 = [P1++];
.L807:
	[P0++] = R0;
	R7 = R7 + R1;
	cc =R5==R1;
	P2 = R7;
	if cc jump .L772;
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
	if cc jump .L772;
	P2 += 2;
	P0 = P4 + P1;
	R1 = P2;
	R0 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R1 (iu);
	B [P1] = R0;
	if cc jump .L772;
	nop;
	P1 = P4 + P2;
	P2 = P5 + P2;
	R0 = B [P1] (X);
	B [P2] = R0;
.L772:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L802:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L772;
	P0 = R3;
	P5 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L786, .L806) LC1 = P1;
.L786:
	R0 = B [P2--] (X);
.L806:
	B [P5--] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L803:
	cc =R2==0;
	if cc jump .L772;
	R6 = P5;
	R1 = R6 + R7;
	R0 = R3 + R7;
.L781:
	R2 = R3 + R2;
	P1 = R0;
	P2 = R2;
	P0 = R1;
	P2 -= P1;
	LSETUP (.L784, .L805) LC1 = P2;
.L784:
	R0 = B [P1++] (X);
.L805:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L804:
	R0 = P5;
	R1 = R0 + R7;
	R0 = R3 + R7;
	jump.s .L781;
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
	if cc jump .L813 (bp);
	R1 = R1 + R2;
	cc =R3<=R1 (iu);
	if cc jump .L835 (bp);
.L813:
	cc =R7==0;
	if cc jump .L812;
	R1 = R7;
	R1 += -1;
	R6 = 8 (X);
	cc =R1<=R6 (iu);
	if cc jump .L816;
	R1 = R0 | R3;
	R6 = 3 (X);
	R1 = R1 & R6;
	CC = R1;
	if cc jump .L816;
	R1 = R0;
	R1 += 2;
	cc =R3==R1;
	if cc jump .L816;
	R6 = R2 >> 2;
	R5 = R6 << 2;
	P2 = R5;
	P0 = R0;
	P1 = R3;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L817, .L839) LC1 = P2;
.L817:
	R1 = [P0++];
.L839:
	[P1++] = R1;
	R6 <<= 1;
	cc =R7==R6;
	if cc jump .L812;
	R1 = R0 + R5;
	P2 = R1;
	R5 = R3 + R5;
	R1 = W [P2] (X);
	P2 = R5;
	W [P2] = R1;
.L812:
	cc = !BITTST (R2,0);
	if cc jump .L809 (bp);
.L836:
	R2 += -1;
	R0 = R0 + R2;
	P2 = R0;
	R3 = R3 + R2;
	R0 = B [P2] (X);
	P2 = R3;
	B [P2] = R0;
.L809:
	( r7:5, p5:5 ) = [sp++];

	rts;
.L835:
	P0 = R2;
	cc =R2==0;
	P0 += -1;
	if cc jump .L809;
	P2 = R0;
	P5 = R3;
	P1 = P2 + P0;
	P2 = P5 + P0;
	P0 += 1;
	LSETUP (.L822, .L838) LC1 = P0;
.L822:
	R0 = B [P1--] (X);
.L838:
	B [P2--] = R0;
	( r7:5, p5:5 ) = [sp++];

	rts;
.L816:
	P5 = R7;
	P0 = R0;
	P1 = R3;
	P2 = P5 + P5;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L819, .L837) LC1 = P2;
.L819:
	R1 = W [P0++] (X);
.L837:
	W [P1++] = R1;
	cc = !BITTST (R2,0);
	if cc jump .L809 (bp);
	jump.s .L836;
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
	if cc jump .L844 (bp);
	R7 = R1 + R2;
	cc =R4<=R7 (iu);
	if cc jump .L870 (bp);
.L844:
	cc =R0==0;
	if cc jump .L871;
	P4 = R0;
	P0 = R1;
	P1 = P5;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L847, .L876) LC1 = P2;
.L847:
	R0 = [P0++];
.L876:
	[P1++] = R0;
	cc =R2<=R3 (iu);
	if cc jump .L840;
	R5 = R2 - R3;
	R0 = R5;
	R0 += -1;
	cc =R0<=6 (iu);
	if cc jump .L872;
	P2 = R3;
	R6 = R3;
	R6 += 1;
	R6 = R1 + R6;
	R0 = R1 + R3;
	P0 = P5 + P2;
	R7 = P0;
	R6 = R7 - R6;
	cc =R6<=2 (iu);
	if cc jump .L849;
	R6 = R0 | R7;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L849;
	R7 = R5 >> 2;
	R7 <<= 2;
	P2 = R7;
	P1 = R0;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L850, .L875) LC1 = P2;
.L850:
	R0 = [P1++];
.L875:
	[P0++] = R0;
	R3 = R3 + R7;
	cc =R5==R7;
	P2 = R3;
	if cc jump .L840;
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
	if cc jump .L840;
	P2 += 2;
	P0 = P4 + P1;
	R4 = P2;
	R0 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R4 (iu);
	B [P1] = R0;
	if cc jump .L840;
	nop;
	P1 = P4 + P2;
	P2 = P5 + P2;
	R0 = B [P1] (X);
	B [P2] = R0;
.L840:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L870:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L840;
	P0 = R1;
	P5 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L854, .L874) LC1 = P1;
.L854:
	R0 = B [P2--] (X);
.L874:
	B [P5--] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L871:
	cc =R2==0;
	if cc jump .L840;
	R0 = P5;
	R7 = R0 + R3;
	R0 = R1 + R3;
.L849:
	R2 = R1 + R2;
	P1 = R0;
	P2 = R2;
	P0 = R7;
	P2 -= P1;
	LSETUP (.L852, .L873) LC1 = P2;
.L852:
	R0 = B [P1++] (X);
.L873:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L872:
	R4 = P5;
	R7 = R4 + R3;
	R0 = R1 + R3;
	jump.s .L849;
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
	if !cc jump .L886;
	R1 = R0 >>> 14;
	cc =R1==0;
	if !cc jump .L883;
	R1 = R0 >>> 13;
	cc =R1==0;
	if !cc jump .L887;
	R1 = R0 >>> 12;
	cc =R1==0;
	if !cc jump .L888;
	R1 = R0 >>> 11;
	cc =R1==0;
	if !cc jump .L889;
	R1 = R0 >>> 10;
	cc =R1==0;
	if !cc jump .L890;
	R1 = R0 >>> 9;
	cc =R1==0;
	if !cc jump .L891;
	R1 = R0 >>> 8;
	cc =R1==0;
	if !cc jump .L892;
	R1 = R0 >>> 7;
	cc =R1==0;
	if !cc jump .L893;
	R1 = R0 >>> 6;
	cc =R1==0;
	if !cc jump .L894;
	R1 = R0 >>> 5;
	cc =R1==0;
	if !cc jump .L895;
	R1 = R0 >>> 4;
	cc =R1==0;
	if !cc jump .L896;
	R1 = R0 >>> 3;
	cc =R1==0;
	if !cc jump .L897;
	R1 = R0 >>> 2;
	cc =R1==0;
	if !cc jump .L898;
	R1 = R0 >>> 1;
	cc =R1==0;
	if !cc jump .L899;
	cc =R0==0;
	R1 = 16 (X);
	if !cc jump .L902;
.L883:
	R0 = R1;
	rts;
.L886:
	R1 = 0 (X);
	jump.s .L883;
.L897:
	R1 = 12 (X);
	jump.s .L883;
.L902:
	R1 = 15 (X);
	jump.s .L883;
.L887:
	R1 = 2 (X);
	jump.s .L883;
.L888:
	R1 = 3 (X);
	jump.s .L883;
.L889:
	R1 = 4 (X);
	jump.s .L883;
.L890:
	R1 = 5 (X);
	jump.s .L883;
.L891:
	R1 = 6 (X);
	jump.s .L883;
.L892:
	R1 = 7 (X);
	jump.s .L883;
.L893:
	R1 = 8 (X);
	jump.s .L883;
.L894:
	R1 = 9 (X);
	jump.s .L883;
.L895:
	R1 = 10 (X);
	jump.s .L883;
.L896:
	R1 = 11 (X);
	jump.s .L883;
.L898:
	R1 = 13 (X);
	jump.s .L883;
.L899:
	R1 = 14 (X);
	jump.s .L883;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	cc = !BITTST (R0,0);
	if !cc jump .L906;
	cc = !BITTST (R0,1);
	if !cc jump .L907;
	cc = !BITTST (R0,2);
	if !cc jump .L908;
	cc = !BITTST (R0,3);
	if !cc jump .L909;
	cc = !BITTST (R0,4);
	if !cc jump .L910;
	cc = !BITTST (R0,5);
	if !cc jump .L911;
	cc = !BITTST (R0,6);
	if !cc jump .L912;
	cc = !BITTST (R0,7);
	if !cc jump .L913;
	cc = !BITTST (R0,8);
	if !cc jump .L914;
	cc = !BITTST (R0,9);
	if !cc jump .L915;
	cc = !BITTST (R0,10);
	if !cc jump .L916;
	cc = !BITTST (R0,11);
	if !cc jump .L917;
	cc = !BITTST (R0,12);
	if !cc jump .L918;
	cc = !BITTST (R0,13);
	if !cc jump .L919;
	cc = !BITTST (R0,14);
	if !cc jump .L920;
	cc = !BITTST (R0,15);
	R1 = 16 (X);
	if !cc jump .L923;
.L903:
	R0 = R1;
	rts;
.L906:
	R1 = 0 (X);
	jump.s .L903;
.L907:
	R1 = 1 (X);
	jump.s .L903;
.L918:
	R1 = 12 (X);
	jump.s .L903;
.L908:
	R1 = 2 (X);
	jump.s .L903;
.L909:
	R1 = 3 (X);
	jump.s .L903;
.L910:
	R1 = 4 (X);
	jump.s .L903;
.L911:
	R1 = 5 (X);
	jump.s .L903;
.L912:
	R1 = 6 (X);
	jump.s .L903;
.L913:
	R1 = 7 (X);
	jump.s .L903;
.L914:
	R1 = 8 (X);
	jump.s .L903;
.L915:
	R1 = 9 (X);
	jump.s .L903;
.L916:
	R1 = 10 (X);
	jump.s .L903;
.L917:
	R1 = 11 (X);
	jump.s .L903;
.L919:
	R1 = 13 (X);
	jump.s .L903;
.L920:
	R1 = 14 (X);
	jump.s .L903;
.L923:
	R1 = 15 (X);
	jump.s .L903;
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
	if !cc jump .L930;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L930:
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
	if cc jump .L933;
	R7 = 1 (X);
.L935:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L935 (bp);
.L933:
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
	if cc jump .L938;
	cc =R1==0;
	if cc jump .L938;
	R7 = 1 (X);
.L940:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L940 (bp);
.L938:
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
	if cc jump .L946;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L945, .L960) LC1 = P2;
.L945:
	cc =R0<0;
	if cc jump .L946;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L947;
.L960:
	R2 += -1;
.L948:
	cc =P1==0;
	if cc jump .L944 (bp);
	R2 = R3;
.L944:
	R0 = R2;
	rts;
.L947:
	cc =R1==0;
	if cc jump .L954;
.L946:
	R2 = 0 (X);
.L951:
	cc =R3<R0 (iu);
	if cc jump .L950 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L950:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L951 (bp);
	jump.s .L948;
.L954:
	R2 = 0 (X);
	jump.s .L948;
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
	if cc jump .L964;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L965;
.L963:
	SP += 12;
	R0 = R5;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L965:
	R5 = 0 (X);
	jump.s .L963;
.L964:
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
	if cc jump .L969;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L970;
.L968:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L970:
	R7 = 0 (X);
	jump.s .L968;
.L969:
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
	if cc jump .L987;
	cc =R1==0;
	if cc jump .L979;
	P1 = 0 (X);
.L975:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L978;
.L988:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L977;
.L978:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L988 (bp);
.L977:
	cc =P1==0;
	if cc jump .L973;
	R3 = -R3;
.L973:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L987:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L975;
.L979:
	R3 = 0 (X);
	jump.s .L973;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	R2 = R0;
	cc =R2<0;
	R0 = R1;
	if cc jump .L1007;
	R1 = 1 (X);
	P1 = 0 (X);
.L990:
	cc =R0<0;
	if !cc jump .L991 (bp);
	R0 = -R0;
	P1 = R1;
.L991:
	cc =R2<=R0 (iu);
	R3 = R2;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L993;
	LSETUP (.L992, .L1008) LC1 = P2;
.L992:
	R0 <<= 1;
	cc =R2<=R0 (iu);
	R1 <<= 1;
	if cc jump .L996;
.L1008:
	nop;
.L996:
	cc =R1==0;
	R2 = 0 (X);
	if cc jump .L994;
.L993:
	R2 = 0 (X);
.L998:
	cc =R3<R0 (iu);
	if cc jump .L997 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L997:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L998 (bp);
.L994:
	cc =P1==0;
	if cc jump .L989 (bp);
	R2 = -R2;
.L989:
	R0 = R2;
	rts;
.L1007:
	R2 = -R2;
	R1 = 0 (X);
	P1 = 1 (X);
	jump.s .L990;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	R0 = R1;
	if cc jump .L1026;
	P1 = 0 (X);
.L1010:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L1017;
	LSETUP (.L1011, .L1028) LC1 = P2;
.L1011:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1015;
.L1028:
	nop;
.L1015:
	cc =R1==0;
	if cc jump .L1027;
.L1017:
	cc =R2<R0 (iu);
	if cc jump .L1016 (bp);
	R2 = R2 - R0;
.L1016:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1017 (bp);
.L1013:
	cc =P1==0;
	if cc jump .L1009 (bp);
	R2 = -R2;
.L1009:
	R0 = R2;
	rts;
.L1026:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L1010;
.L1027:
	R2 = R3;
	jump.s .L1013;
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
	if !cc jump .L1142;
	R1 = R7.L (X);
	cc =R1<0;
	if cc jump .L1032;
	R1 = R7 << 1;
	R5 = R1.L (Z);
	cc =R6<=R5 (iu);
	R3 = R1;
	if cc jump .L1033;
	R5 = R1.L (X);
	cc =R5<0;
	if cc jump .L1034;
	R5 = R7 << 2;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1035;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1036;
	R5 = R7 << 3;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1037;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1038;
	R5 = R7 << 4;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1039;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1040;
	R5 = R7 << 5;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1041;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1042;
	R5 = R7 << 6;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1043;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1044;
	R5 = R7 << 7;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1045;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1046;
	R5 = R7 << 8;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1047;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1048;
	R5 = R7 << 9;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1049;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1050;
	R5 = R7 << 10;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1051;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1052;
	R5 = R7 << 11;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1053;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1054;
	R5 = R7 << 12;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1055;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1056;
	R5 = R7 << 13;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1057;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1058;
	R5 = R7 << 14;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L1059;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1060;
	R7 <<= 15;
	R5 = R7;
	R7 = R7.L (Z);
	cc =R6<=R7 (iu);
	if cc jump .L1061;
	cc =R7==0;
	if !cc jump .L1143;
.L1062:
	cc =R2==0;
	if !cc jump .L1029;
	R0 = R5;
.L1029:
	( r7:4 ) = [sp++];

	rts;
.L1049:
	cc =R6<R1 (iu);
	if cc jump .L1095 (bp);
	R0 = R0 - R5;
	R7 = 512 (X);
	R5 = 512 (X);
	R3 = R3.L (Z);
.L1064:
	R4 = R7 >> 2;
	cc =R4==0;
	R1 = R3 >> 2;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1065 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1065:
	R4 = R7 >> 3;
	cc =R4==0;
	R1 = R3 >> 3;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1066 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1066:
	R4 = R7 >> 4;
	cc =R4==0;
	R1 = R3 >> 4;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1067 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1067:
	R4 = R7 >> 5;
	cc =R4==0;
	R1 = R3 >> 5;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1068 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1068:
	R4 = R7 >> 6;
	cc =R4==0;
	R1 = R3 >> 6;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1069 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1069:
	R4 = R7 >> 7;
	cc =R4==0;
	R1 = R3 >> 7;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1070 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1070:
	R4 = R7 >> 8;
	cc =R4==0;
	R1 = R3 >> 8;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1071 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1071:
	R4 = R7 >> 9;
	cc =R4==0;
	R1 = R3 >> 9;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1072 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1072:
	R4 = R7 >> 10;
	cc =R4==0;
	R1 = R3 >> 10;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1073 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1073:
	R4 = R7 >> 11;
	cc =R4==0;
	R1 = R3 >> 11;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1074 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1074:
	R4 = R7 >> 12;
	cc =R4==0;
	R1 = R3 >> 12;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1075 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1075:
	R4 = R7 >> 13;
	cc =R4==0;
	R1 = R3 >> 13;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1076 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1076:
	R4 = R7 >> 14;
	cc =R4==0;
	R1 = R3 >> 14;
	if cc jump .L1062;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L1077 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L1077:
	R1 = 16384 (X);
	cc =R7==R1;
	R3 >>= 15;
	if cc jump .L1062;
	R1 = R0.L (Z);
	cc =R1<R3 (iu);
	if cc jump .L1085 (bp);
	R0 = R0 - R3;
	BITSET (R5, 0);
	jump.s .L1062;
.L1085:
	R0 = 0 (X);
	jump.s .L1062;
.L1142:
	cc =R1==R6;
	if cc jump .L1083 (bp);
	R5 = 0 (X);
	jump.s .L1062;
.L1032:
	R0 = R0 - R7;
	R5 = 1 (X);
	jump.s .L1062;
.L1033:
	cc =R6<R5 (iu);
	if cc jump .L1087 (bp);
	R0 = R0 - R1;
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R1.L (Z);
	jump.s .L1064;
.L1034:
	R0 = R0 - R1;
	R1 = 32767 (X);
	R1 = R1 & R7;
	P2 = 1 (X);
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R3.L (Z);
.L1082:
	R6 = R0.L (Z);
	R4 = R1.L (Z);
	cc =R6<R4 (iu);
	if cc jump .L1064;
	R0 = R0 - R1;
	R1 = P2;
	R5 = R5 | R1;
	jump.s .L1064;
.L1035:
	cc =R6<R1 (iu);
	if cc jump .L1088 (bp);
	R0 = R0 - R5;
	R7 = 4 (X);
	R5 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1036:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2 (X);
	R5 = 4 (X);
	R7 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1037:
	cc =R6<R1 (iu);
	if cc jump .L1089 (bp);
	R0 = R0 - R5;
	R7 = 8 (X);
	R5 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1038:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4 (X);
	R5 = 8 (X);
	R7 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1039:
	cc =R6<R1 (iu);
	if cc jump .L1090 (bp);
	R0 = R0 - R5;
	R7 = 16 (X);
	R5 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1040:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8 (X);
	R5 = 16 (X);
	R7 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1041:
	cc =R6<R1 (iu);
	if cc jump .L1091 (bp);
	R0 = R0 - R5;
	R7 = 32 (X);
	R5 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1042:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 16 (X);
	R5 = 32 (X);
	R7 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1043:
	cc =R6<R1 (iu);
	if cc jump .L1092 (bp);
	R0 = R0 - R5;
	R7 = 64 (X);
	R5 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1044:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 32 (X);
	R5 = 64 (X);
	R7 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1045:
	cc =R6<R1 (iu);
	if cc jump .L1093 (bp);
	R0 = R0 - R5;
	R7 = 128 (X);
	R5 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1046:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 64 (X);
	R5 = 128 (X);
	R7 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1048:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 128 (X);
	R5 = 256 (X);
	R7 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1050:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 256 (X);
	R5 = 512 (X);
	R7 = 512 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1083:
	R5 = 1 (X);
	R0 = 0 (X);
	jump.s .L1062;
.L1087:
	R7 = 2 (X);
.L1081:
	R7 = R7.L (Z);
	R1 = R7 >> 1;
	R3 = R3.L (Z);
	P2 = R1;
	R5 = 0 (X);
	R1 = R3 >> 1;
	jump.s .L1082;
.L1052:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 512 (X);
	R5 = 1024 (X);
	R7 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1054:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 1024 (X);
	R5 = 2048 (X);
	R7 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1088:
	R7 = 4 (X);
	jump.s .L1081;
.L1089:
	R7 = 8 (X);
	jump.s .L1081;
.L1056:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2048 (X);
	R5 = 4096 (X);
	R7 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1058:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4096 (X);
	R5 = 8192 (X);
	R7 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1090:
	R7 = 16 (X);
	jump.s .L1081;
.L1091:
	R7 = 32 (X);
	jump.s .L1081;
.L1060:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8192 (X);
	R5 = 16384 (X);
	R7 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L1082;
.L1061:
	R1 = R0.L (X);
	cc =R1<0;
	if cc jump .L1086 (bp);
	R3 = -32768 (X);
	R7 = R3;
	jump.s .L1081;
.L1092:
	R7 = 64 (X);
	jump.s .L1081;
.L1143:
	R5 = -32768 (X);
	R1 = 16384 (X);
	R7 = 32768 (Z);
	R0 = R0 + R5;
	P2 = R1;
	R3 = R7;
	jump.s .L1082;
.L1093:
	R7 = 128 (X);
	jump.s .L1081;
.L1047:
	cc =R6<R1 (iu);
	if cc jump .L1094 (bp);
	R0 = R0 - R5;
	R7 = 256 (X);
	R5 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1086:
	R7 = 32768 (Z);
	R5 = -32768 (X);
	R0 = 0 (X);
	R3 = R7;
	jump.s .L1064;
.L1094:
	R7 = 256 (X);
	jump.s .L1081;
.L1051:
	cc =R6<R1 (iu);
	if cc jump .L1096 (bp);
	R0 = R0 - R5;
	R7 = 1024 (X);
	R5 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1059:
	cc =R6<R1 (iu);
	if cc jump .L1100 (bp);
	R0 = R0 - R5;
	R7 = 16384 (X);
	R5 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1096:
	R7 = 1024 (X);
	jump.s .L1081;
.L1100:
	R7 = 16384 (X);
	jump.s .L1081;
.L1095:
	R7 = 512 (X);
	jump.s .L1081;
.L1057:
	cc =R6<R1 (iu);
	if cc jump .L1099 (bp);
	R0 = R0 - R5;
	R7 = 8192 (X);
	R5 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1055:
	cc =R6<R1 (iu);
	if cc jump .L1098 (bp);
	R0 = R0 - R5;
	R7 = 4096 (X);
	R5 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1053:
	cc =R6<R1 (iu);
	if cc jump .L1097 (bp);
	R0 = R0 - R5;
	R7 = 2048 (X);
	R5 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L1064;
.L1099:
	R7 = 8192 (X);
	jump.s .L1081;
.L1098:
	R7 = 4096 (X);
	jump.s .L1081;
.L1097:
	R7 = 2048 (X);
	jump.s .L1081;
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
	if cc jump .L1146;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1145, .L1160) LC1 = P2;
.L1145:
	cc =R0<0;
	if cc jump .L1146;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1147;
.L1160:
	R2 += -1;
.L1148:
	cc =P1==0;
	if cc jump .L1144 (bp);
	R2 = R3;
.L1144:
	R0 = R2;
	rts;
.L1147:
	cc =R1==0;
	if cc jump .L1154;
.L1146:
	R2 = 0 (X);
.L1151:
	cc =R3<R0 (iu);
	if cc jump .L1150 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1150:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1151 (bp);
	jump.s .L1148;
.L1154:
	R2 = 0 (X);
	jump.s .L1148;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L1162 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L1163:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1162:
	cc =R2==0;
	if cc jump .L1165;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L1163;
.L1165:
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
	if cc jump .L1167 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L1168:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1167:
	cc =R2==0;
	if cc jump .L1170;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L1168;
.L1170:
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
	if cc jump .L1178;
	cc =R0<=R2;
	if !cc jump .L1179;
	cc =R3<R1 (iu);
	if cc jump .L1178;
	cc =R3<=R1 (iu);
	if !cc jump .L1179;
	R0 = 1 (X);
	rts;
.L1178:
	R0 = 0 (X);
	rts;
.L1179:
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
	if cc jump .L1184;
	cc =R0<=R2;
	if !cc jump .L1183;
	cc =R3<R1 (iu);
	if cc jump .L1184;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1184:
	R0 = -1 (X);
	rts;
.L1183:
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
	if cc jump .L1187 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L1188:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1187:
	cc =R2==0;
	if cc jump .L1190;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L1188;
.L1190:
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
	if cc jump .L1199 (bp);
.L1201:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1199:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L1200;
.L1202:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L1201 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L1202;
.L1200:
	cc =R4<0;
	if !cc jump .L1198 (bp);
	R0 = [SP+20];
	R1 = 1023 (X);
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1198:
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
	if cc jump .L1206 (bp);
.L1208:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L1206:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L1207;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1208 (bp);
.L1212:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1208 (bp);
	jump.s .L1212;
.L1207:
	cc =R4<0;
	if !cc jump .L1205 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L1205:
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
	if cc jump .L1217;
	cc =R0<=R2 (iu);
	if !cc jump .L1218;
	cc =R3<R1 (iu);
	if cc jump .L1217;
	cc =R3<=R1 (iu);
	if !cc jump .L1218;
	R0 = 1 (X);
	rts;
.L1217:
	R0 = 0 (X);
	rts;
.L1218:
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
	if cc jump .L1223;
	cc =R0<=R2 (iu);
	if !cc jump .L1222;
	cc =R3<R1 (iu);
	if cc jump .L1223;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1223:
	R0 = -1 (X);
	rts;
.L1222:
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
.global ___umodsi3;
.global ___floatundisf;
.global ___floatundidf;
.global ___floatunsisf;
.global ___floatunsidf;
.global ___clzdi2;
.global ___clzsi2;
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
.global ___lesf2;
.global ___ledf2;
.global ___gesf2;
.global ___ltsf2;
.global ___gedf2;
.global ___ltdf2;
.global ___subsf3;
.global ___gtsf2;
.global ___subdf3;
.global ___gtdf2;
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
