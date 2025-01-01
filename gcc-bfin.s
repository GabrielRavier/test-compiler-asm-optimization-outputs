.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	[--sp] = ( p5:5 );

	R3 = R0;
	P5 = R1;
	P2 = R2;
	cc =R0<=R1 (iu);
	if cc jump .L2 (bp);
	P1 = P5 + P2;
	cc =P2==0;
	if cc jump .L3;
	P2 += -1;
	P0 = R3;
	P2 = P0 + P2;
	P0 = P1;
	P0 += -1;
	P1 -= P5;
	LSETUP (.L4, .L9) LC1 = P1;
.L4:
	R0 = B [P0] (X);
	P0 += -1;
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
	R0 = B [P5++] (X);
.L8:
	B [P1++] = R0;
	jump.s .L3;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	R3 = R0;
	P0 = R1;
	R1 = [SP+12];
	R2 = R2.B (Z);
	cc =R1==0;
	if cc jump .L11;
	P2 = R0;
	P1 = R1;
	LSETUP (.L12, .L17) LC1 = P1;
.L12:
	R3 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (Z);
	cc =R0==R2;
	if cc jump .L11;
.L17:
	R1 += -1;
	R3 = P2;
.L11:
	cc =R1==0;
	if cc jump .L15;
	R3 += 1;
.L10:
	R0 = R3;
	rts;
.L15:
	R3 = 0 (X);
	jump.s .L10;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	R3 = R1;
	R1 = R2;
	R3 = R3.B (Z);
	cc =R2==0;
	if cc jump .L23;
	P2 = R2;
	LSETUP (.L20, .L26) LC1 = P2;
.L20:
	P1 = R0;
	R0 += 1;
	R2 = B [P1] (Z);
	cc =R2==R3;
	if cc jump .L19;
.L26:
	R1 += -1;
	P1 = R0;
.L19:
	cc =R1==0;
	if cc jump .L25;
.L18:
	R0 = P1;
	rts;
.L23:
	P1 = R0;
	jump.s .L19;
.L25:
	P1 = 0 (X);
	jump.s .L18;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	[--sp] = ( r7:7 );

	P0 = R0;
	P1 = R1;
	cc =R2==0;
	if cc jump .L28;
	R1 = R0;
	R0 = P1;
	P2 = R2;
	LSETUP (.L29, .L34) LC1 = P2;
.L29:
	P1 = R0;
	P0 = R1;
	R1 += 1;
	R0 += 1;
	R7 = B [P0] (Z);
	R3 = B [P1] (Z);
	cc =R7==R3;
	if !cc jump .L28;
.L34:
	R2 += -1;
	P0 = R1;
	P1 = R0;
.L28:
	cc =R2==0;
	if cc jump .L32 (bp);
	R0 = B [P0] (Z);
	R1 = B [P1] (Z);
	R0 = R0 - R1;
.L27:
	( r7:7 ) = [sp++];

	rts;
.L32:
	R0 = 0 (X);
	jump.s .L27;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	cc =R2==0;
	if cc jump .L36;
	call _memcpy;
.L36:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

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
.L38:
	cc =R0==R3;
	if cc jump .L41;
	nop;
	P2 = R0;
	R0 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if !cc jump .L38 (bp);
	jump.s .L37;
.L41:
	P2 = 0 (X);
.L37:
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
	if cc jump .L43;
	P1 = R3;
	LSETUP (.L44, .L46) LC1 = P2;
.L44:
.L46:
	B [P1++] = R0;
.L43:
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
	if cc jump .L50;
	P1 += 1;
	P2 += 1;
.L49:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L49 (bp);
.L47:
	R0 = R1;
	rts;
.L50:
	R1 = P2;
	jump.s .L47;
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
	if cc jump .L52;
.L53:
	R0 = R0.B (Z);
	cc =R0==R2;
	if cc jump .L52;
	nop;
	nop;
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if !cc jump .L53 (bp);
.L52:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
	R2 = R1;
.L60:
	R3 = P2;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==R2;
	if cc jump .L58;
	cc =R1==0;
	if !cc jump .L60 (bp);
	R3 = 0 (X);
.L58:
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
	if !cc jump .L63;
	P1 += 1;
	P2 += 1;
.L64:
	R2 = R0.B (X);
	cc =R2==0;
	if cc jump .L63;
	nop;
	nop;
	nop;
	R0 = B [P1++] (X);
	R1 = B [P2++] (X);
	R3 = R0.B (X);
	R2 = R1.B (X);
	cc =R3==R2;
	if cc jump .L64 (bp);
.L63:
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
	if cc jump .L69;
	R0 = P1;
	R0 += 1;
.L68:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L68 (bp);
.L67:
	P2 -= P1;
	R0 = P2;
	rts;
.L69:
	P2 = P1;
	jump.s .L67;
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
	if cc jump .L76;
	nop;
	nop;
	nop;
	R1 = B [P0] (X);
	R0 = R1.B (Z);
	cc =R0==0;
	if cc jump .L73;
	P0 += 1;
	P1 = P5;
.L74:
	P5 = P1;
	R0 = B [P1++] (X);
	R2 = R0.B (Z);
	cc =R2==0;
	if cc jump .L73;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L78;
	jump.s .L73;
.L78:
	R0 = R0.B (Z);
	R2 = R1.B (Z);
	cc =R0==R2;
	if !cc jump .L73;
	nop;
	nop;
	nop;
	R1 = B [P0++] (X);
	R0 = R1.B (Z);
	cc =R0==0;
	if !cc jump .L74 (bp);
	P5 = P1;
.L73:
	R1 = R1.B (Z);
	R0 = B [P5] (Z);
	R1 = R1 - R0;
.L71:
	R0 = R1;
	( p5:5 ) = [sp++];

	rts;
.L76:
	R1 = 0 (X);
	jump.s .L71;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =R2<=1;
	if cc jump .L79;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L81, .L83) LC1 = P0;
.L81:
	R0 = B [P2+1] (X);
	B [P1] = R0;
	R0 = B [P2] (X);
	B [P1+1] = R0;
	P1 += 2;
.L83:
	P2 += 2;
.L79:
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
	if cc jump .L88;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
.L86:
	rts;
.L88:
	R0 = 1 (X);
	jump.s .L86;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L91 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
.L89:
	rts;
.L91:
	R0 = 1 (X);
	jump.s .L89;
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
	if cc jump .L98;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
.L96:
	rts;
.L98:
	R0 = 1 (X);
	jump.s .L96;
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
	if cc jump .L102 (bp);
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L103 (bp);
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L104;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	R0 = CC;
	jump.s .L100;
.L102:
	R0 = 1 (X);
.L100:
	rts;
.L103:
	R0 = 1 (X);
	jump.s .L100;
.L104:
	R0 = 1 (X);
	jump.s .L100;
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
	if cc jump .L113;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L109;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L110;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L111;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L112;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L106;
.L113:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
.L106:
	rts;
.L109:
	R0 = 1 (X);
	jump.s .L106;
.L110:
	R0 = 1 (X);
	jump.s .L106;
.L111:
	R0 = 1 (X);
	jump.s .L106;
.L112:
	R0 = 0 (X);
	jump.s .L106;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L116 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
.L114:
	rts;
.L116:
	R0 = 1 (X);
	jump.s .L114;
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
	if !cc jump .L121;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L122;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L125 (bp);
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L118:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L121:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L118;
.L122:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L118;
.L125:
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L118;
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
	if !cc jump .L126;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L130;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L133 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L126:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L130:
	R7 = R6;
	jump.s .L126;
.L133:
	R7 = 0 (X);
	jump.s .L126;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
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
	if !cc jump .L140;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L141;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+48];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L136 (bp);
	cc =R0==0;
	if !cc jump .L142 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L134;
.L136:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L137 (bp);
	R0 = [SP+44];
	R1 = [SP+48];
.L138:
	[SP+16] = R0;
	[SP+20] = R1;
.L134:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	rts;
.L137:
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L138;
.L140:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L134;
.L141:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L134;
.L142:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L134;
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
	if !cc jump .L143;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L150;
	R0 = R6 >>> 31;
	R0 <<= 31;
	R1 = R7 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L145 (bp);
	cc =R0==0;
	if !cc jump .L143 (bp);
	R7 = R6;
.L143:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L145:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L143 (bp);
	R7 = R6;
	jump.s .L143;
.L150:
	R7 = R6;
	jump.s .L143;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
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
	if !cc jump .L158;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L159;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+48];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L154 (bp);
	cc =R0==0;
	if !cc jump .L160 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L152;
.L154:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L155 (bp);
	R0 = [SP+44];
	R1 = [SP+48];
.L156:
	[SP+16] = R0;
	[SP+20] = R1;
.L152:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	rts;
.L155:
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L156;
.L158:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L152;
.L159:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L152;
.L160:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L152;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
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
	if !cc jump .L169 (bp);
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
	if cc jump .L164 (bp);
	R0 = [SP+28];
	R1 = [SP+32];
.L165:
	[SP+16] = R0;
	[SP+20] = R1;
.L161:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L164:
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L165;
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
	if !cc jump .L176;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L170;
	R0 = R7 >>> 31;
	R0 <<= 31;
	R1 = R6 >>> 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L172 (bp);
	cc =R0==0;
	if !cc jump .L170 (bp);
	R7 = R6;
.L170:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L172:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L170 (bp);
	R7 = R6;
	jump.s .L170;
.L176:
	R7 = R6;
	jump.s .L170;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
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
	if !cc jump .L185;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L186;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L181 (bp);
	cc =R0==0;
	if !cc jump .L187 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L179;
.L181:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L182 (bp);
	R0 = [SP+28];
	R1 = [SP+32];
.L183:
	[SP+16] = R0;
	[SP+20] = R1;
.L179:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L182:
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L183;
.L185:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L179;
.L186:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L179;
.L187:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L179;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	cc =R0==0;
	if cc jump .L191;
	P1.H = _s.0;
	P1.L = _s.0;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L190:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
	cc =R0==0;
	if !cc jump .L190 (bp);
.L189:
	R0 = 0 (X);
	B [P1] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	rts;
.L191:
	P1.H = _s.0;
	P1.L = _s.0;
	jump.s .L189;
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
	if cc jump .L198;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L195;
	[P1+4] = P2;
.L195:
	rts;
.L198:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L195;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L200;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L200:
	P1 = [P2+4];
	cc =P1==0;
	if cc jump .L199;
	nop;
	nop;
	nop;
	R0 = [P2];
	[P1] = R0;
.L199:
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
	if cc jump .L203;
	R7 = R1;
	R6 = 0 (X);
.L205:
	P5 = R7;
	R1 = R7;
	R0 = R4;
	call (P3);
	cc =R0==0;
	if cc jump .L202;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R5==R6;
	if !cc jump .L205 (bp);
.L203:
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
.L202:
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
	if cc jump .L208;
	R6 = 0 (X);
.L210:
	P3 = R7;
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	if cc jump .L207;
	R6 += 1;
	R0 = P4;
	R7 = R7 + R0;
	cc =R4==R6;
	if !cc jump .L210 (bp);
.L208:
	P3 = 0 (X);
.L207:
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
.L214:
	R7 = P5;
	R6 = B [P5++] (X);
	R0 = R6.B (X);
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L214 (bp);
	R0 = R6.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L221;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L222 (bp);
	R2 = 1 (X);
.L215:
	R7 += 1;
.L216:
	P1 = R7;
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if !cc jump .L218;
.L217:
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
	if cc jump .L217 (bp);
.L218:
	cc =R2==0;
	if !cc jump .L213 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L213:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:6, p5:5 ) = [sp++];

	rts;
.L221:
	R2 = P2;
	jump.s .L215;
.L222:
	R2 = P2;
	jump.s .L216;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
.L227:
	R7 = P5;
	R6 = B [P5++] (X);
	R0 = R6.B (X);
	call _isspace;
	P2 = R0;
	cc =P2==0;
	if !cc jump .L227 (bp);
	R0 = R6.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L234;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L235 (bp);
	R2 = 1 (X);
.L228:
	R7 += 1;
.L229:
	P1 = R7;
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R1 += -48;
	R3 = 9 (X);
	cc =R1<=R3 (iu);
	if !cc jump .L231;
.L230:
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
	if cc jump .L230 (bp);
.L231:
	cc =R2==0;
	if !cc jump .L226 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L226:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( r7:6, p5:5 ) = [sp++];

	rts;
.L234:
	R2 = P2;
	jump.s .L228;
.L235:
	R2 = P2;
	jump.s .L229;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P4 = R0;
.L240:
	P5 = P4;
	R7 = B [P4++] (X);
	R0 = R7.B (X);
	call _isspace;
	R6 = R0;
	cc =R0==0;
	if !cc jump .L240 (bp);
	R0 = R7.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L241;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L242 (bp);
	R6 = 1 (X);
.L241:
	P5 += 1;
.L242:
	nop;
	R7 = B [P5] (X);
	R0 = R7.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L249;
	P5 += 1;
	R4 = 0 (X);
	R1 = 0 (X);
	R5 = 0 (X);
.L243:
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
	if cc jump .L243 (bp);
.L244:
	cc =R6==0;
	if !cc jump .L239 (bp);
	CC = R4;
	R0 = CC;
	R1 = -R1;
	R4 = -R4;
	R1 = R1 - R0;
.L239:
	R0 = R4;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L249:
	R4 = 0 (X);
	R1 = 0 (X);
	jump.s .L244;
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
	if !cc jump .L254 (bp);
.L251:
	R6 = 0 (X);
.L250:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L255:
	R7 = R5;
.L252:
	cc =R7==0;
	if cc jump .L251;
.L254:
	R5 = R7 >> 1;
	R6 = P5;
	R6 *= R5;
	R6 = R4 + R6;
	R1 = R6;
	R0 = P4;
	call (P3);
	cc =R0<0;
	if cc jump .L255;
	cc =R0<=0;
	if cc jump .L250;
	R0 = P5;
	R4 = R6 + R0;
	R7 += -1;
	R7 = R7 - R5;
	jump.s .L252;
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
	if !cc jump .L261 (bp);
.L258:
	R7 = 0 (X);
.L257:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L260:
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L258;
.L261:
	R7 = R6 >>> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R2 = P4;
	R1 = R7;
	R0 = P5;
	call (P3);
	cc =R0==0;
	if cc jump .L257;
	cc =R0<=0;
	if cc jump .L260;
	R5 = R7 + R4;
	R6 += -1;
	jump.s .L260;
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
	if cc jump .L267;
.L265:
	SP += 8;
	rts;
.L267:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L265;
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
	if cc jump .L274;
.L272:
	SP += 8;
	rts;
.L274:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L272;
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
	if cc jump .L278;
.L277:
	cc =R1==R0;
	if cc jump .L278;
	nop;
	nop;
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L277 (bp);
.L278:
	cc =R0==0;
	if cc jump .L283;
.L276:
	R0 = P2;
	rts;
.L283:
	P2 = 0 (X);
	jump.s .L276;
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
	if !cc jump .L285;
	P1 += 4;
	P2 += 4;
.L286:
	cc =R0==0;
	if cc jump .L285;
	cc =R1==0;
	if cc jump .L285;
	nop;
	nop;
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if cc jump .L286 (bp);
.L285:
	cc =R0<R1;
	if cc jump .L289 (bp);
	cc =R1<R0;
	R0 = CC;
.L284:
	rts;
.L289:
	R0 = -1 (X);
	jump.s .L284;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P2 = R1;
	P1 = R0;
.L291:
	nop;
	R0 = [P2++];
	[P1++] = R0;
	cc =R0==0;
	if !cc jump .L291 (bp);
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
	if cc jump .L296;
	R0 = P1;
	R0 += 4;
.L295:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L295 (bp);
.L294:
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L296:
	P2 = P1;
	jump.s .L294;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:5 );

	P5 = R0;
	P0 = R1;
	cc =R2==0;
	if cc jump .L299;
	P2 = R0;
	R0 = R1;
	P1 = R2;
	LSETUP (.L300, .L306) LC1 = P1;
.L300:
	P0 = R0;
	P5 = P2;
	R1 = [P2++];
	R0 += 4;
	R3 = [P0];
	cc =R1==R3;
	if !cc jump .L299;
	cc =R1==0;
	if cc jump .L299;
.L306:
	R2 += -1;
	P5 = P2;
	P0 = R0;
.L299:
	cc =R2==0;
	if cc jump .L303 (bp);
	R0 = [P5];
	R1 = [P0];
	cc =R0<R1;
	if cc jump .L304 (bp);
	cc =R1<R0;
	R0 = CC;
	jump.s .L298;
.L303:
	R0 = 0 (X);
.L298:
	( p5:5 ) = [sp++];

	rts;
.L304:
	R0 = -1 (X);
	jump.s .L298;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	R3 = R1;
	R1 = R2;
	cc =R2==0;
	if cc jump .L312;
	P2 = R2;
	LSETUP (.L309, .L315) LC1 = P2;
.L309:
	P1 = R0;
	R0 += 4;
	R2 = [P1];
	cc =R2==R3;
	if cc jump .L308;
.L315:
	R1 += -1;
	P1 = R0;
.L308:
	cc =R1==0;
	if cc jump .L314;
.L307:
	R0 = P1;
	rts;
.L312:
	P1 = R0;
	jump.s .L308;
.L314:
	P1 = 0 (X);
	jump.s .L307;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[--sp] = ( r7:7 );

	P0 = R0;
	P1 = R1;
	cc =R2==0;
	if cc jump .L317;
	R1 = R0;
	R0 = P1;
	P2 = R2;
	LSETUP (.L318, .L324) LC1 = P2;
.L318:
	P1 = R0;
	P0 = R1;
	R1 += 4;
	R0 += 4;
	R3 = [P1];
	R7 = [P0];
	cc =R7==R3;
	if !cc jump .L317;
.L324:
	R2 += -1;
	P0 = R1;
	P1 = R0;
.L317:
	cc =R2==0;
	if cc jump .L321 (bp);
	R0 = [P0];
	R1 = [P1];
	cc =R0<R1;
	if cc jump .L322 (bp);
	cc =R1<R0;
	R0 = CC;
	jump.s .L316;
.L321:
	R0 = 0 (X);
.L316:
	( r7:7 ) = [sp++];

	rts;
.L322:
	R0 = -1 (X);
	jump.s .L316;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R0 = R2;
	cc =R2==0;
	if cc jump .L326;
	R0 <<= 2;
	R2 = R0;
	R0 = R7;
	call _memcpy;
.L326:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	[--sp] = ( r7:7, p5:5 );

	R3 = R0;
	P2 = R1;
	R0 = R2;
	cc =R3==R1;
	if cc jump .L328;
	P0 = R3;
	R7 = R1;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	if cc jump .L329 (bp);
	P1 = R0;
	cc =R0==0;
	if cc jump .L328;
	nop;
	nop;
	LSETUP (.L330, .L336) LC1 = P1;
.L330:
	R0 = [P2++];
.L336:
	[P0++] = R0;
	jump.s .L328;
.L329:
	P0 = R0;
	P0 += -1;
	cc =R0==0;
	if cc jump .L328;
	P0 = P0 << 2;
	P2 = P2 + P0;
	P1 = R3;
	P0 = P1 + P0;
	R1 = P2;
	R0 = R1 - R7;
	P5 = R0;
	P1 = P5 >> 2;
	P1 += 1;
	LSETUP (.L331, .L335) LC1 = P1;
.L331:
	R0 = [P2];
	P2 += -4;
.L335:
	[P0--] = R0;
.L328:
	R0 = R3;
	( r7:7, p5:5 ) = [sp++];

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
	if cc jump .L338;
	P1 = R3;
	P2 += 1;
	LSETUP (.L339, .L341) LC1 = P2;
.L339:
.L341:
	[P1++] = R0;
.L338:
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	[--sp] = ( p5:5 );

	P5 = R0;
	P2 = R1;
	P1 = R2;
	cc =P5<P2 (iu);
	if !cc jump .L343 (bp);
	P0 = P5 + P1;
	R0 = P0;
	cc =P1==0;
	if cc jump .L342;
	P1 += -1;
	P2 = P2 + P1;
	P0 += -1;
	P1 = R0;
	P1 -= P5;
	LSETUP (.L345, .L350) LC1 = P1;
.L345:
	R0 = B [P0] (X);
	P0 += -1;
.L350:
	B [P2--] = R0;
.L342:
	( p5:5 ) = [sp++];

	rts;
.L343:
	cc =P5==P2;
	if cc jump .L342;
	cc =P1==0;
	if cc jump .L342;
	nop;
	nop;
	LSETUP (.L346, .L349) LC1 = P1;
.L346:
	R0 = B [P5++] (X);
.L349:
	B [P2++] = R0;
	jump.s .L342;
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
	R7 = R0 >> 8;
	R7 = R1 | R7;
	R7 >>>= 24;
	R7 <<= 24;
	R3 = R3 | R7;
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
	LSETUP (.L367, .L370) LC1 = P2;
.L367:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L369;
.L370:
	R0 += 1;
	R0 = 0 (X);
	jump.s .L364;
.L369:
	R0 += 1;
.L364:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L374;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L371;
	R1 = 1 (X);
.L373:
	R0 >>>= 1;
	R1 += 1;
	cc = !BITTST (R0,0);
	if cc jump .L373 (bp);
.L371:
	R0 = R1;
	rts;
.L374:
	R1 = R0;
	jump.s .L371;
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
	if cc jump .L379 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L380;
.L378:
	R0 = R6;
.L376:
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L380:
	R6 = 0 (X);
	jump.s .L378;
.L379:
	R0 = 1 (X);
	jump.s .L376;
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
	if cc jump .L384 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L385;
.L383:
	R0 = R7;
.L381:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L385:
	R7 = 0 (X);
	jump.s .L383;
.L384:
	R0 = 1 (X);
	jump.s .L381;
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
	if cc jump .L389 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L390;
.L388:
	R0 = R7;
.L386:
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L390:
	R7 = 0 (X);
	jump.s .L388;
.L389:
	R0 = 1 (X);
	jump.s .L386;
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
	if !cc jump .L393;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L393 (bp);
	cc =R7<0;
	if cc jump .L400;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L397;
.L400:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L397;
.L396:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L393;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L397:
	cc = !BITTST (R7,0);
	if cc jump .L396 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L396;
.L393:
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
	if !cc jump .L402;
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
	if cc jump .L402 (bp);
	cc =R5<0;
	if cc jump .L409;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L406;
.L409:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L406;
.L405:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L402;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L406:
	cc = !BITTST (R5,0);
	if cc jump .L405 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L405;
.L402:
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
	if !cc jump .L411;
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
	if cc jump .L411 (bp);
	cc =R5<0;
	if cc jump .L418;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L415;
.L418:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L415;
.L414:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L411;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L415:
	cc = !BITTST (R5,0);
	if cc jump .L414 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L414;
.L411:
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
	if cc jump .L420;
	nop;
	P1 = R0;
	LSETUP (.L421, .L423) LC1 = P2;
.L421:
	R0 = B [P1++] (X);
	R1 = B [P0++] (X);
	R0 = R0 ^ R1;
.L423:
	B [P1+-1] = R0;
.L420:
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
	R5 = R1;
	R7 = R2;
	call _strlen;
	P5 = R0;
	P2 = R6;
	P5 = P2 + P5;
	cc =R7==0;
	if cc jump .L425;
	P0 = R5;
	P2 = P5;
	P1 = R7;
	LSETUP (.L426, .L430) LC1 = P1;
.L426:
	P5 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L425;
.L430:
	R7 += -1;
	P5 = P2;
.L425:
	cc =R7==0;
	if !cc jump .L428 (bp);
	R0 = 0 (X);
	B [P5] = R0;
.L428:
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
	if cc jump .L431;
	R1 = 0 (X);
	R3 = R0 - R1;
	P0 = R3;
	LSETUP (.L433, .L440) LC1 = P0;
.L433:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L439;
.L431:
	R0 = R1;
	rts;
.L439:
.L440:
	R1 += 1;
	R1 = R0;
	jump.s .L431;
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
	if cc jump .L448;
	nop;
.L442:
	P2 = R3;
	R2 = R2.B (X);
.L445:
	nop;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L449;
	R0 = R0.B (X);
	cc =R0==R2;
	if !cc jump .L445 (bp);
.L443:
	R0 = P1;
	rts;
.L448:
	P1 = 0 (X);
	jump.s .L443;
.L449:
	P1 += 1;
	R2 = B [P1] (X);
	R0 = R2.B (X);
	cc =R0==0;
	if !cc jump .L442 (bp);
	P1 = 0 (X);
	jump.s .L443;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R3 = R1;
	P1 = 0 (X);
	jump.s .L452;
.L451:
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L455;
	nop;
	nop;
.L452:
	R2 = P2;
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==R3;
	if !cc jump .L451 (bp);
	P1 = R2;
	jump.s .L451;
.L455:
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
	if cc jump .L456;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
.L458:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if cc jump .L456;
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L456;
	R7 += 1;
	jump.s .L458;
.L456:
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
	if cc jump .L470;
.L462:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L465;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L464;
.L465:
	R0 = [SP+28];
	R1 = [SP+32];
	SP += 24;
	RETS = [SP++];
	rts;
.L470:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L462 (bp);
.L464:
	R0 = [SP+28];
	R1 = [SP+32];
	BITTGL (R1, 31);
	[SP+28] = R0;
	[SP+32] = R1;
	jump.s .L465;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	P4 = R2;
	R4 = [SP+52];
	cc =R4==0;
	if cc jump .L475;
	cc =R1<R4 (iu);
	if cc jump .L476;
	R6 = R1 - R4;
	R6 = R0 + R6;
	cc =R0<=R6 (iu);
	if !cc jump .L477;
	nop;
	nop;
	nop;
	R5 = B [P4++] (X);
	R4 += -1;
	jump.s .L474;
.L473:
	cc =R6<R7 (iu);
	if cc jump .L479;
	nop;
.L474:
	P5 = R7;
	R7 += 1;
	R0 = B [P5] (X);
	cc =R0==R5;
	if !cc jump .L473 (bp);
	R2 = R4;
	R1 = P4;
	R0 = R7;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L473 (bp);
	jump.s .L471;
.L479:
	P5 = 0 (X);
.L471:
	R0 = P5;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L475:
	P5 = R0;
	jump.s .L471;
.L476:
	P5 = 0 (X);
	jump.s .L471;
.L477:
	P5 = 0 (X);
	jump.s .L471;
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
	if cc jump .L505;
	R4 = 0 (X);
.L482:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L502;
	R7 = 0 (X);
	R5 = 511 (X);
	R5 <<= 21;
	R6 = 1023 (X);
	R6 <<= 20;
.L486:
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
	if !cc jump .L486 (bp);
.L487:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L491 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L491:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L505:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L482;
.L502:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L503 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L504 (bp);
	R7 = 0 (X);
	R6 = 511 (X);
	R6 <<= 21;
.L490:
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
	if cc jump .L490 (bp);
	jump.s .L487;
.L503:
	R7 = 0 (X);
	jump.s .L487;
.L504:
	R7 = 0 (X);
	jump.s .L487;
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
	R1 = R0;
	R0 = [SP+20];
	R7 = R2;
	R6 = [SP+68];
	R5 = R1;
	P5 = R0;
	R0 = R0 | R1;
	cc =R0==0;
	if cc jump .L510;
	R4 = 0 (X);
	P4 = 0 (X);
	P3 = 1 (X);
.L509:
	R1 = P3;
	R0 = R5 & R1;
	[SP+12] = R6;
	R2 = R7;
	R1 = 0 (X);
	call ___muldi3;
	R4 = R0 + R4; cc = ac0;
	R2 = CC;
	P2 = R1;
	P4 = P2 + P4;
	P2 = R2;
	P4 = P4 + P2;
	CC = R0 < R0;
	R7 = ROT R7 BY 1;
	R6 = ROT R6 BY 1;
	CC = R0 < R0;
	R0 = P5;
	R1 = ROT R0 BY -1;
	R0 = ROT R5 BY -1;
	R5 = R0;
	P5 = R1;
	R0 = R0 | R1;
	cc =R0==0;
	if !cc jump .L509 (bp);
.L506:
	R0 = R4;
	R1 = P4;
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L510:
	R4 = 0 (X);
	P4 = 0 (X);
	jump.s .L506;
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
	if !cc jump .L514;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L513, .L528) LC1 = P2;
.L513:
	cc =R0<0;
	if cc jump .L514;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L514;
.L528:
	R2 += -1;
	R1 = R2;
.L514:
	cc =R1==0;
	if cc jump .L522;
	R2 = 0 (X);
	jump.s .L518;
.L517:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L516;
.L518:
	cc =R3<R0 (iu);
	if cc jump .L517 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L517;
.L522:
	R2 = R1;
.L516:
	cc =P1==0;
	if !cc jump .L527;
.L512:
	R0 = R2;
	rts;
.L527:
	R2 = R3;
	jump.s .L512;
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
	if cc jump .L531;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L529:
	SP += 12;
	RETS = [SP++];
	rts;
.L531:
	R0 = 7 (X);
	jump.s .L529;
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
	if cc jump .L538;
.L536:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	R0 += -1;
.L532:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L538:
	cc =R0==R1;
	if !cc jump .L536 (bp);
	R0 = 63 (X);
	jump.s .L532;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L542;
	R3 = 0 (X);
	R7 = 1 (X);
.L541:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L541 (bp);
.L539:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L542:
	R3 = R0;
	jump.s .L539;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:7, p5:4 );

	P0 = R0;
	P1 = R1;
	P2 = R2;
	R0 = R2;
	R1 = R2 >> 3;
	R7 = -8 (X);
	R7 = R2 & R7;
	cc =P0<P1 (iu);
	if cc jump .L545 (bp);
	R3 = P1;
	R2 = R3 + R2;
	R3 = P0;
	cc =R3<=R2 (iu);
	if !cc jump .L545 (bp);
	P2 += -1;
	cc =R0==0;
	if cc jump .L544;
	P1 = P1 + P2;
	P0 = P0 + P2;
	P2 += 1;
	LSETUP (.L551, .L557) LC1 = P2;
.L551:
	R0 = B [P1] (X);
	P1 += -1;
.L557:
	B [P0--] = R0;
	jump.s .L544;
.L545:
	cc =R1==0;
	if cc jump .L548;
	P4 = P0;
	P5 = P1;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P2 += 1;
	LSETUP (.L549, .L556) LC1 = P2;
.L549:
	R2 = [P5];
	R3 = [P5+4];
	[P4] = R2;
	[P4+4] = R3;
	P5 += 8;
.L556:
	P4 += 8;
.L548:
	cc =R0<=R7 (iu);
	if cc jump .L544;
	P2 = R7;
	P0 = P0 + P2;
	P1 = P1 + P2;
	R0 = R0 - R7;
	P2 = R0;
	LSETUP (.L550, .L555) LC1 = P2;
.L550:
	R0 = B [P1++] (X);
.L555:
	B [P0++] = R0;
.L544:
	( r7:7, p5:4 ) = [sp++];

	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	[--sp] = ( r7:7, p5:5 );

	R3 = R0;
	P2 = R1;
	R0 = R2 >> 1;
	cc =R3<R1 (iu);
	if cc jump .L559 (bp);
	R7 = R1 + R2;
	cc =R3<=R7 (iu);
	if !cc jump .L559 (bp);
	P0 = R2;
	P0 += -1;
	cc =R2==0;
	if cc jump .L558;
	P2 = P2 + P0;
	P5 = R3;
	P1 = P5 + P0;
	P0 += 1;
	LSETUP (.L564, .L568) LC1 = P0;
.L564:
	R0 = B [P2] (X);
	P2 += -1;
.L568:
	B [P1--] = R0;
	jump.s .L558;
.L559:
	cc =R0==0;
	if cc jump .L562;
	P0 = R3;
	P1 = R1;
	P5 = R0;
	P2 = P5 + P5;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L563, .L567) LC1 = P2;
.L563:
	R0 = W [P1++] (X);
.L567:
	W [P0++] = R0;
.L562:
	cc = !BITTST (R2,0);
	if cc jump .L558 (bp);
	R2 += -1;
	R1 = R1 + R2;
	P2 = R1;
	R0 = B [P2] (X);
	R3 = R3 + R2;
	P1 = R3;
	B [P1] = R0;
.L558:
	( r7:7, p5:5 ) = [sp++];

	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( p5:4 );

	P0 = R0;
	P1 = R1;
	P2 = R2;
	R0 = R2;
	P2 = P2 >> 2;
	R2 = -4 (X);
	R2 = R0 & R2;
	cc =P0<P1 (iu);
	if cc jump .L570 (bp);
	R3 = R1 + R0;
	R1 = P0;
	cc =R1<=R3 (iu);
	if !cc jump .L570 (bp);
	P2 = R0;
	P2 += -1;
	cc =R0==0;
	if cc jump .L569;
	P1 = P1 + P2;
	P0 = P0 + P2;
	P2 += 1;
	LSETUP (.L576, .L582) LC1 = P2;
.L576:
	R0 = B [P1] (X);
	P1 += -1;
.L582:
	B [P0--] = R0;
	jump.s .L569;
.L570:
	cc =P2==0;
	if cc jump .L573;
	P4 = P0;
	P5 = P1;
	P2 = P2 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L574, .L581) LC1 = P2;
.L574:
	R1 = [P5++];
.L581:
	[P4++] = R1;
.L573:
	cc =R0<=R2 (iu);
	if cc jump .L569;
	P2 = R2;
	P0 = P0 + P2;
	P1 = P1 + P2;
	R0 = R0 - R2;
	P2 = R0;
	LSETUP (.L575, .L580) LC1 = P2;
.L575:
	R0 = B [P1++] (X);
.L580:
	B [P0++] = R0;
.L569:
	( p5:4 ) = [sp++];

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
	LSETUP (.L591, .L593) LC1 = P2;
.L591:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L589;
.L593:
	R0 += 1;
.L589:
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
	LSETUP (.L596, .L598) LC1 = P2;
.L596:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L594;
.L598:
	R0 += 1;
.L594:
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
	if !cc jump .L605;
	R0 = R7;
	call ___fixsfsi;
.L599:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L605:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L599;
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
	LSETUP (.L607, .L609) LC1 = P2;
.L607:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L609:
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
	LSETUP (.L611, .L613) LC1 = P2;
.L611:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L613:
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
	if cc jump .L617;
	R3 = 0 (X);
	R7 = 1 (X);
.L616:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R1;
	R3 = R3 + R0;
	R2 >>= 1;
	R1 <<= 1;
	cc =R2==0;
	if !cc jump .L616 (bp);
.L614:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L617:
	R3 = R0;
	jump.s .L614;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	[--sp] = ( r7:7 );

	R2 = R0;
	cc =R0==0;
	if cc jump .L622;
	cc =R1==0;
	if cc jump .L623;
	R3 = 0 (X);
	R7 = 1 (X);
.L621:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>= 1;
	cc =R1==0;
	if !cc jump .L621 (bp);
.L619:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L622:
	R3 = R0;
	jump.s .L619;
.L623:
	R3 = R1;
	jump.s .L619;
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
	if !cc jump .L627;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L626, .L641) LC1 = P2;
.L626:
	cc =R0<0;
	if cc jump .L627;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L627;
.L641:
	R2 += -1;
	R1 = R2;
.L627:
	cc =R1==0;
	if cc jump .L635;
	R2 = 0 (X);
	jump.s .L631;
.L630:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L629;
.L631:
	cc =R3<R0 (iu);
	if cc jump .L630 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L630;
.L635:
	R2 = R1;
.L629:
	cc =P1==0;
	if !cc jump .L640;
.L625:
	R0 = R2;
	rts;
.L640:
	R2 = R3;
	jump.s .L625;
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
	if cc jump .L645;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L646;
.L644:
	R0 = R5;
.L642:
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L646:
	R5 = 0 (X);
	jump.s .L644;
.L645:
	R0 = -1 (X);
	jump.s .L642;
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
	if cc jump .L650;
	R5 = 1 (X);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L651;
.L649:
	R0 = R5;
.L647:
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L651:
	R5 = 0 (X);
	jump.s .L649;
.L650:
	R0 = -1 (X);
	jump.s .L647;
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
	if cc jump .L662;
	P1 = 0 (X);
.L655:
	cc =R1==0;
	if cc jump .L660;
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
.L657:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R2;
	R3 = R3 + R0;
	R2 <<= 1;
	R1 >>>= 1;
	cc =R1==0;
	if cc jump .L656;
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L657 (bp);
.L656:
	cc =P1==0;
	if cc jump .L654 (bp);
	R3 = -R3;
.L654:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L662:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L655;
.L660:
	R3 = R1;
	jump.s .L656;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L668;
	R7 = 0 (X);
.L664:
	cc =R1<0;
	if cc jump .L669;
.L665:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L663 (bp);
	R0 = -R0;
.L663:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L668:
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L664;
.L669:
	R1 = -R1;
	BITTGL (R7, 0);
	jump.s .L665;
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
	if cc jump .L674;
	R7 = 0 (X);
.L671:
	R0 = abs R0;
	R2 = 1 (X);
	R1 = R0;
	R0 = R3;
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L670 (bp);
	R0 = -R0;
.L670:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L674:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L671;
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
	if !cc jump .L690;
	R1 = 1 (X);
	R7 = R3.L (Z);
	P2 = 16 (X);
	LSETUP (.L676, .L692) LC1 = P2;
.L676:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L677;
	R2 = R0 << 1;
	R0 = R2;
	R1 <<= 1;
	R2 = R2.L (Z);
	cc =R7<=R2 (iu);
	if cc jump .L677;
.L692:
	nop;
	R1 = 0 (X);
.L677:
	R2 = R1.L (Z);
	cc =R2==0;
	if cc jump .L685;
	R6 = 0 (X);
	jump.s .L681;
.L690:
	R1 = 1 (X);
	jump.s .L677;
.L680:
	R1 = R1.L (Z);
	R2 = R1 >> 1;
	R1 = R2;
	R0 <<= 16;
	R0 >>= 17;
	cc =R2==0;
	if cc jump .L679;
.L681:
	R2 = R3.L (Z);
	R7 = R0.L (Z);
	cc =R2<R7 (iu);
	if cc jump .L680 (bp);
	R3 = R3 - R0;
	R6 = R1 | R6;
	jump.s .L680;
.L685:
	R6 = R1;
.L679:
	cc =P1==0;
	if !cc jump .L691;
.L675:
	R0 = R6;
	( r7:6 ) = [sp++];

	rts;
.L691:
	R6 = R3;
	jump.s .L675;
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
	if !cc jump .L695;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L694, .L709) LC1 = P2;
.L694:
	cc =R0<0;
	if cc jump .L695;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L695;
.L709:
	R2 += -1;
	R1 = R2;
.L695:
	cc =R1==0;
	if cc jump .L703;
	R2 = 0 (X);
	jump.s .L699;
.L698:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L697;
.L699:
	cc =R3<R0 (iu);
	if cc jump .L698 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L698;
.L703:
	R2 = R1;
.L697:
	cc =P1==0;
	if !cc jump .L708;
.L693:
	R0 = R2;
	rts;
.L708:
	R2 = R3;
	jump.s .L693;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L711 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L712:
	R0 = R2;
.L713:
	( r7:7 ) = [sp++];

	rts;
.L711:
	cc =R2==0;
	if cc jump .L714;
	R2 = R0;
	R2 <<= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R0 >>= R7;
	R3 <<= R1;
	R1 = R0 | R3;
	jump.s .L712;
.L714:
	R1 = R3;
	jump.s .L713;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:7 );

	R3 = R1;
	R1 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L716 (bp);
	R2 = R3 >>> 31;
	R1 += -32;
	R0 = R3;
	R0 >>>= R1;
.L717:
	R1 = R2;
.L718:
	( r7:7 ) = [sp++];

	rts;
.L716:
	cc =R2==0;
	if cc jump .L719;
	R2 = R3;
	R2 >>>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L717;
.L719:
	R1 = R3;
	jump.s .L718;
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
	R7 = R0 >> 8;
	R7 = R1 | R7;
	R7 >>>= 24;
	R7 <<= 24;
	R3 = R3 | R7;
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
	if cc jump .L725;
	cc =R0<=R2;
	if !cc jump .L726;
	cc =R3<R1 (iu);
	if cc jump .L727;
	cc =R3<=R1 (iu);
	if !cc jump .L728;
	R0 = 1 (X);
	jump.s .L723;
.L725:
	R0 = 0 (X);
.L723:
	rts;
.L726:
	R0 = 2 (X);
	jump.s .L723;
.L727:
	R0 = 0 (X);
	jump.s .L723;
.L728:
	R0 = 2 (X);
	jump.s .L723;
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
	R1 <<= 31;
	R0 >>= 1;
	R7 = 2 (X);
	R7 = R7 - R0;
	R0 = R1 >>> 31;
	R0 = R0 & R7;
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
	if cc jump .L732 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L733:
	R1 = R2;
.L734:
	( r7:7 ) = [sp++];

	rts;
.L732:
	cc =R2==0;
	if cc jump .L735;
	R2 = R3;
	R2 >>= R1;
	R7 = 32 (X);
	R7 = R7 - R1;
	R3 <<= R7;
	R0 >>= R1;
	R0 = R3 | R0;
	jump.s .L733;
.L735:
	R1 = R3;
	jump.s .L734;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	[--sp] = ( r7:6 );

	R3 = R0;
	R7 = R1;
	R2 = R0.L (Z);
	R0 = R1.L (Z);
	R1 = R2;
	R1 *= R0;
	R6 = R1 >> 16;
	R3 >>= 16;
	R0 *= R3;
	R0 = R0 + R6;
	R6 = R0.L (Z);
	R7 >>= 16;
	R2 *= R7;
	R2 = R2 + R6;
	R1 = R1.L (Z);
	R6 = R2 << 16;
	R6 = R1 + R6;
	R1 = R0 >> 16;
	R3 *= R7;
	R1 = R1 + R3;
	R2 >>= 16;
	R1 = R1 + R2;
	R0 = R6;
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
	R6 = R0;
	R7 = R1;
	R4 = R2;
	R5 = R2;
	R2 = 0 (X);
	R3 = 1023 (X);
	R3 <<= 20;
	[SP+16] = R2;
	[SP+20] = R3;
	jump.s .L746;
.L744:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L745;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L746:
	cc = !BITTST (R5,0);
	if cc jump .L744 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L744;
.L745:
	cc =R4<0;
	if cc jump .L748;
.L743:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 32;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L748:
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L743;
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
	jump.s .L752;
.L750:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L751;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L752:
	cc = !BITTST (R7,0);
	if cc jump .L750 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L750;
.L751:
	cc =R4<0;
	if cc jump .L754;
.L749:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
.L754:
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
	jump.s .L749;
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
	if cc jump .L757;
	cc =R0<=R2 (iu);
	if !cc jump .L758;
	cc =R3<R1 (iu);
	if cc jump .L759;
	cc =R3<=R1 (iu);
	if !cc jump .L760;
	R0 = 1 (X);
	jump.s .L755;
.L757:
	R0 = 0 (X);
.L755:
	rts;
.L758:
	R0 = 2 (X);
	jump.s .L755;
.L759:
	R0 = 0 (X);
	jump.s .L755;
.L760:
	R0 = 2 (X);
	jump.s .L755;
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
