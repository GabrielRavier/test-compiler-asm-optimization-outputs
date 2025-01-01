.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	[--sp] = ( p5:4 );

	P0 = R1;
	P4 = R0;
	P2 = R2;
	cc =P4<=P0 (iu);
	if cc jump .L2 (bp);
	cc =P2==0;
	P1 = P0 + P2;
	if cc jump .L3;
	P5 = P1;
	P2 += -1;
	P2 = P4 + P2;
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
	P1 = [SP+12];
	P0 = R1;
	P2 = R0;
	R1 = R2.B (Z);
	cc =P1==0;
	if cc jump .L18;
	nop;
	nop;
	LSETUP (.L19, .L30) LC1 = P1;
.L19:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (Z);
	cc =R0==R1;
	if cc jump .L29;
.L30:
	nop;
.L18:
	R2 = 0 (X);
	R0 = R2;
	rts;
.L29:
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
	if cc jump .L38;
	nop;
	LSETUP (.L33, .L39) LC1 = P1;
.L33:
	R0 = P2;
	R1 = B [P2++] (Z);
	cc =R1==R2;
	if cc jump .L31;
.L39:
	nop;
.L38:
	R0 = 0 (X);
.L31:
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
	if cc jump .L48;
	R1 = R3;
	LSETUP (.L42, .L51) LC1 = P0;
.L42:
	P2 = R0;
	P1 = R1;
	R0 += 1;
	R1 += 1;
	R3 = B [P2] (Z);
	R2 = B [P1] (Z);
	cc =R2==R3;
	if !cc jump .L50;
.L51:
	nop;
.L48:
	R2 = 0 (X);
	R0 = R2;
	rts;
.L50:
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
	if cc jump .L53;
	call _memcpy;
	R3 = R0;
.L53:
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
	jump.s .L58;
.L60:
	P2 = R0;
	R0 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if cc jump .L57;
.L58:
	cc =R0==R3;
	if !cc jump .L60 (bp);
	P2 = 0 (X);
.L57:
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
	if cc jump .L64;
	R0 = R1.B (Z);
	R1 = R0;
	R0 = R3;
	call _memset;
	R3 = R0;
.L64:
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
	if cc jump .L68;
	P1 += 1;
	P2 += 1;
.L67:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L67 (bp);
	R0 = R1;
	rts;
.L68:
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
	if !cc jump .L71 (bp);
	jump.s .L70;
.L73:
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L70;
.L71:
	R0 = R0.B (Z);
	cc =R0==R2;
	if !cc jump .L73 (bp);
.L70:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	R2 = R1;
	R1 = R0;
	jump.s .L79;
.L82:
	cc =R0==0;
	if cc jump .L81;
.L79:
	P2 = R1;
	R1 += 1;
	R0 = B [P2] (X);
	cc =R0==R2;
	if !cc jump .L82 (bp);
	R0 = P2;
	rts;
.L81:
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
	if !cc jump .L89;
	P1 += 1;
	P2 += 1;
	jump.s .L86;
.L87:
	nop;
	R1 = B [P1++] (X);
	R2 = B [P2++] (X);
	R0 = R1.B (X);
	R3 = R2.B (X);
	cc =R0==R3;
	if !cc jump .L89;
.L86:
	cc =R0==0;
	if !cc jump .L87 (bp);
	R2 = R2.B (Z);
	R1 = 0 (X);
	R1 = R1 - R2;
	R0 = R1;
	rts;
.L89:
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
	if cc jump .L93;
	R0 = P1;
	R0 += 1;
.L92:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L92 (bp);
	P2 -= P1;
	R0 = P2;
	rts;
.L93:
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
	if cc jump .L103;
	nop;
	nop;
	P0 += 1;
	R0 = B [P0+-1] (Z);
	cc =R0==0;
	if cc jump .L105;
	nop;
	nop;
.L99:
	P5 = P1;
	R1 = B [P1++] (Z);
	cc =R1==0;
	if cc jump .L98;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L101;
.L98:
	R0 = R0 - R1;
	( p5:5 ) = [sp++];

	rts;
.L101:
	cc =R1==R0;
	if !cc jump .L98;
	nop;
	nop;
	nop;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if !cc jump .L99 (bp);
	R1 = B [P5+1] (Z);
	jump.s .L98;
.L103:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L105:
	R1 = B [P1] (Z);
	jump.s .L98;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	cc =R2<=1;
	P2 = R0;
	P1 = R1;
	R0 = R2;
	if cc jump .L106;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L108, .L110) LC1 = P0;
.L108:
	P1 += 2;
	R0 = B [P2+1] (X);
	B [P1+-2] = R0;
	R0 = B [P2] (X);
	B [P1+-1] = R0;
.L110:
	P2 += 2;
.L106:
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
	if cc jump .L115;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L115:
	R0 = 1 (X);
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L118 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L118:
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
	if cc jump .L125;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
	rts;
.L125:
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
	if cc jump .L131 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if !cc jump .L132 (bp);
.L131:
	R0 = 1 (X);
	rts;
.L132:
	P1 = -8232 (X);
	P1 = P2 + P1;
	cc =P1<=1 (iu);
	if cc jump .L131;
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
	if cc jump .L141;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L139;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L139;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L139;
	R1 = -16383 (X);
	R1 <<= 2;
	R2 = 3 (X);
	R1 = R0 + R1;
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L140;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L139:
	R0 = 1 (X);
	rts;
.L141:
	R1 = 127 (X);
	R0 += 1;
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L140:
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
	if cc jump .L144 (bp);
	R1 = -97 (X);
	BITSET (R0, 5);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
	rts;
.L144:
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
	if !cc jump .L149;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L150;
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L154 (bp);
	R0 = 0 (X);
	R1 = R1 -|- R1 ||
	[SP+16] = R0 ||
	nop;
	[SP+20] = R1;
.L146:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L154:
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
.L149:
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L146;
.L150:
	R1 = [SP+40];
	R2 = [SP+44];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L146;
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
	if !cc jump .L155;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L159;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L162 (bp);
	R0 = R7;
	R1 = R6;
	call ___subsf3;
	R7 = R0;
.L155:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L162:
	SP += 12;
	R7 = 0 (X);
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L159:
	R7 = R6;
	jump.s .L155;
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
	if !cc jump .L171;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L170;
	R0 = [SP+44];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L165 (bp);
	cc =R0==0;
	if !cc jump .L171 (bp);
.L170:
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
.L171:
	R0 = [SP+48];
	R1 = [SP+52];
.L172:
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L165:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L171 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L172;
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
	if !cc jump .L173;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L180;
	R0 = R6 >>> 31;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L175 (bp);
	cc =R0==0;
	if !cc jump .L173 (bp);
.L180:
	R7 = R6;
.L173:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L175:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L173 (bp);
	jump.s .L180;
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
	if !cc jump .L191;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L190;
	R0 = [SP+44];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L185 (bp);
	cc =R0==0;
	if !cc jump .L191 (bp);
.L190:
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
.L191:
	R0 = [SP+48];
	R1 = [SP+52];
.L192:
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L185:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L191 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L192;
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
	if !cc jump .L199;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L201;
	R0 = [SP+36];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L203 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L201 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L202:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L203:
	cc =R0==0;
	if !cc jump .L201 (bp);
.L199:
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
.L201:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L202;
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
	if !cc jump .L210;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L204;
	R0 = R7 >>> 31;
	R1 = R6 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L206 (bp);
	cc =R0==0;
	if !cc jump .L204 (bp);
.L210:
	R7 = R6;
.L204:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L206:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L204 (bp);
	jump.s .L210;
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
	R0 = [SP+16];
	R1 = [SP+20];
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
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L222:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L223;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	cc =R0==0;
	P1.L = _s.0;
	if cc jump .L226;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L227:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R0 >>= 6;
	cc =R0==0;
	R1 = B [P2] (X);
	B [P1++] = R1;
	if !cc jump .L227 (bp);
.L226:
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
	if cc jump .L238;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L232;
	[P1+4] = P2;
.L232:
	rts;
.L238:
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
	if cc jump .L240;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L240:
	P2 = [P2+4];
	cc =P2==0;
	if cc jump .L239;
	[P2] = P1;
.L239:
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
	if cc jump .L249;
	R7 = R1;
	FP = 0 (X);
	jump.s .L251;
.L263:
	R0 = P5;
	FP += 1;
	R7 = R7 + R0;
	R0 = FP;
	cc =R6==R0;
	if cc jump .L249;
.L251:
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	R4 = R7;
	if !cc jump .L263 (bp);
.L248:
	SP += 12;
	FP = [SP++];
	R0 = R4;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L249:
	R0 = R6;
	R0 += 1;
	[P3] = R0;
	R0 = P5;
	R6 *= R0;
	cc =P5==0;
	R0 = [SP+52];
	R4 = R0 + R6;
	if cc jump .L248;
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
	if cc jump .L265;
	R6 = 0 (X);
	jump.s .L267;
.L275:
	R6 += 1;
	R0 = P4;
	cc =R4==R6;
	R7 = R7 + R0;
	if cc jump .L265;
.L267:
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	P3 = R7;
	if !cc jump .L275 (bp);
	SP += 12;
	RETS = [SP++];
	R0 = P3;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L265:
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
.L278:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L278;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L278 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L280;
	R7 = 45 (X);
	cc =R0==R7;
	if !cc jump .L297 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if !cc jump .L289;
	P0 = 1 (X);
.L283:
	P1 += 1;
	P2 = 0 (X);
.L286:
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
	if cc jump .L286 (bp);
	cc =P0==0;
	if !cc jump .L277 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L277:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L297:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L289;
	P1 = P0;
	P0 = 0 (X);
	jump.s .L283;
.L280:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	P1 = P0;
	cc =R1<=R2 (iu);
	P1 += 1;
	P0 = 0 (X);
	if cc jump .L283 (bp);
.L289:
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
	if !cc jump .L302 (bp);
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P2;
	P0 = 1 (X);
	if !cc jump .L309;
.L303:
	P1 += 1;
	P2 = 0 (X);
.L306:
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
	if cc jump .L306 (bp);
	cc =P0==0;
	if !cc jump .L298 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L298:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L302:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	P1 = P0;
	if !cc jump .L309;
.L316:
	P0 = 0 (X);
	jump.s .L303;
.L301:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if cc jump .L316 (bp);
.L309:
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
.L318:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L318;
	R0 = R7;
	R0 += -9;
	cc =R0<=4 (iu);
	if cc jump .L318 (bp);
	R1 = 43 (X);
	cc =R7==R1;
	if cc jump .L320;
	R0 = 45 (X);
	cc =R7==R0;
	if !cc jump .L337 (bp);
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	if !cc jump .L329;
	P4 = 1 (X);
.L323:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L326:
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
	if cc jump .L326 (bp);
	cc =P4==0;
	if !cc jump .L317 (bp);
	R3 = R4 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R1 = R5 - R2;
	R1 = R1 - R0;
.L317:
	SP += 24;
	RETS = [SP++];
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L337:
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L329;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L323;
.L320:
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L323 (bp);
.L329:
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
.L351:
	cc =R7==0;
	if cc jump .L339;
.L352:
	P2 = R7;
	R0 = P5;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	call (P4);
	cc =R0<0;
	if cc jump .L343;
	cc =R0==0;
	if cc jump .L338;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L352 (bp);
.L339:
	R6 = 0 (X);
.L338:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L343:
	R7 = P3;
	jump.s .L351;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	R4 = ROT R0 BY 0 ||
	R5 = [SP+60] ||
	nop;
	R6 = R1;
	R7 = R2;
	P4 = [SP+64];
	P5 = [SP+68];
.L365:
	cc =R7==0;
	if cc jump .L366;
.L354:
	R0 = R7 >>> 1;
	FP = R0;
	R0 *= R5;
	R0 = R6 + R0;
	R1 = R0;
	P3 = R0;
	R2 = P5;
	R0 = R4;
	call (P4);
	cc =R0==0;
	if cc jump .L353;
	cc =R0<=0;
	if cc jump .L358;
	R7 += -1;
	R7 >>>= 1;
	R0 = P3;
	cc =R7==0;
	R6 = R0 + R5;
	if !cc jump .L354 (bp);
.L366:
	P3 = 0 (X);
.L353:
	SP += 12;
	FP = [SP++];
	R0 = P3;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L358:
	R7 = FP;
	jump.s .L365;
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
	if !cc jump .L369 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L369:
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
	if !cc jump .L375 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L375:
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
	if !cc jump .L379 (bp);
	jump.s .L382;
.L381:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L382;
.L379:
	cc =R1==R0;
	if !cc jump .L381 (bp);
	R0 = P2;
	rts;
.L382:
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
	if !cc jump .L385;
	P1 += 4;
	P2 += 4;
	jump.s .L386;
.L387:
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L385;
.L386:
	cc =R0==0;
	if !cc jump .L387 (bp);
.L385:
	cc =R0<R1;
	if cc jump .L389 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L389:
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
.L391:
	nop;
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L391 (bp);
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
	if cc jump .L396;
	R0 = P1;
	R0 += 4;
.L395:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L395 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L396:
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
	if cc jump .L407;
	LSETUP (.L400, .L409) LC1 = P1;
.L400:
	P0 = R0;
	P5 = P2;
	R0 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L401;
	cc =R1==0;
	if cc jump .L401;
.L409:
	nop;
.L407:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L401:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L408 (bp);
	cc =R0<R1;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L408:
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
	if cc jump .L417;
	nop;
	LSETUP (.L412, .L418) LC1 = P1;
.L412:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L410;
.L418:
	nop;
.L417:
	R0 = 0 (X);
.L410:
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
	if cc jump .L428;
	R1 = R3;
	LSETUP (.L421, .L432) LC1 = P0;
.L421:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L430;
.L432:
	nop;
.L428:
	R0 = 0 (X);
	rts;
.L430:
	cc =R3<R2;
	if cc jump .L431 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L431:
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
	if cc jump .L434;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L434:
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
	if cc jump .L445;
	P1 = R1;
	R3 = R0 - R2;
	R2 = R1 << 2;
	cc =R3<R2 (iu);
	P0 = R0;
	P1 += -1;
	if !cc jump .L451 (bp);
	cc =R1==0;
	if cc jump .L445;
	P1 = P1 << 2;
	P2 = P2 + P1;
	P0 = P0 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L443, .L453) LC1 = P1;
.L443:
	R1 = [P2--];
.L453:
	[P0--] = R1;
.L445:
	( p5:5 ) = [sp++];

	rts;
.L451:
	cc =R1==0;
	P1 = R1;
	if cc jump .L445;
	nop;
	nop;
	LSETUP (.L441, .L452) LC1 = P1;
.L441:
	R1 = [P2++];
.L452:
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
	if cc jump .L455;
	P1 = R3;
	LSETUP (.L456, .L461) LC1 = P2;
.L456:
.L461:
	[P1++] = R0;
.L455:
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	[--sp] = ( p5:4 );

	P2 = R1;
	P5 = R0;
	P1 = R2;
	cc =P5<P2 (iu);
	if !cc jump .L463 (bp);
	cc =P1==0;
	P0 = P5 + P1;
	if cc jump .L462;
	P4 = P0;
	P1 += -1;
	P2 = P2 + P1;
	P4 += -1;
	P0 -= P5;
	LSETUP (.L465, .L476) LC1 = P0;
.L465:
	R0 = B [P4--] (X);
.L476:
	B [P2--] = R0;
.L462:
	( p5:4 ) = [sp++];

	rts;
.L463:
	cc =P5==P2;
	if cc jump .L462;
	cc =P1==0;
	if cc jump .L462;
	nop;
	nop;
	LSETUP (.L466, .L475) LC1 = P1;
.L466:
	R0 = B [P5++] (X);
.L475:
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
	LSETUP (.L493, .L495) LC1 = P2;
.L493:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L490;
.L495:
	nop;
	R0 = 0 (X);
.L490:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L499;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L496;
	R1 = 1 (X);
.L498:
	R0 >>>= 1;
	cc = !BITTST (R0,0);
	R1 += 1;
	if cc jump .L498 (bp);
.L496:
	R0 = R1;
	rts;
.L499:
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
	if cc jump .L505 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R6 = 1 (X);
	if cc jump .L506;
.L504:
	SP += 12;
	R0 = R6;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L505:
	SP += 12;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:6 ) = [sp++];

	rts;
.L506:
	R6 = 0 (X);
	jump.s .L504;
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
	if cc jump .L510 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L511;
.L509:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L510:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L511:
	R7 = 0 (X);
	jump.s .L509;
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
	if cc jump .L515 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L516;
.L514:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L515:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L516:
	R7 = 0 (X);
	jump.s .L514;
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
	if !cc jump .L519;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L519 (bp);
	cc =R7<0;
	if cc jump .L533;
	R6 = 1 (X);
	R6 <<= 30;
.L521:
	cc = !BITTST (R7,0);
	if cc jump .L522 (bp);
.L523:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L522:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L519;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L523 (bp);
.L534:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L523 (bp);
	jump.s .L534;
.L519:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L533:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L521;
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
	if !cc jump .L536;
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
	if cc jump .L536 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L550;
	R7 = 1 (X);
	R7 <<= 30;
.L538:
	cc = !BITTST (R5,0);
	if cc jump .L539 (bp);
.L540:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L539:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L536;
.L541:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L540 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L541;
.L536:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L550:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L538;
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
	if !cc jump .L552;
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
	if cc jump .L552 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L566;
	R7 = 1 (X);
	R7 <<= 30;
.L554:
	cc = !BITTST (R5,0);
	if cc jump .L555 (bp);
.L556:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L555:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L552;
.L557:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L556 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L557;
.L552:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L566:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L554;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	P2 = R2;
	R3 = R0;
	P0 = R1;
	cc =P2==0;
	if cc jump .L568;
	nop;
	P1 = R0;
	LSETUP (.L569, .L574) LC1 = P2;
.L569:
	R0 = B [P1++] (X);
	R1 = B [P0++] (X);
	R0 = R0 ^ R1;
.L574:
	B [P1+-1] = R0;
.L568:
	R0 = R3;
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
	if cc jump .L582;
	R0 = P5;
	R0 += 1;
.L577:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L577 (bp);
.L576:
	cc =P1==0;
	if cc jump .L578;
	nop;
	nop;
	LSETUP (.L579, .L588) LC1 = P1;
.L579:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L581;
.L588:
	nop;
.L578:
	R0 = 0 (X);
	B [P2] = R0;
.L581:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L582:
	P2 = P5;
	jump.s .L576;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
	if cc jump .L589;
	nop;
	P1 = R0;
	LSETUP (.L591, .L598) LC1 = P1;
.L591:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L597;
.L589:
	R0 = R1;
	rts;
.L597:
.L598:
	R1 += 1;
	R1 = R0;
	jump.s .L589;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L604;
.L600:
	P2 = R2;
	jump.s .L603;
.L602:
	cc =R0==R1;
	if cc jump .L601;
	nop;
	nop;
	nop;
.L603:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L602 (bp);
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
	if !cc jump .L600 (bp);
.L604:
	P1 = 0 (X);
.L601:
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
.L608:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L607 (bp);
	R3 = R1;
.L607:
	cc =R0==0;
	if !cc jump .L608 (bp);
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
	if cc jump .L620;
	R1 += 1;
.L612:
	P2 = R1;
	R1 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	if !cc jump .L612 (bp);
	R2 = P2;
	cc =R2==R7;
	R1 = R2 - R7;
	if cc jump .L620;
	R1 += -1;
	R6 = R7 + R1;
.L613:
	P2 = R0;
	jump.s .L618;
.L633:
	cc =R2==0;
	if cc jump .L632;
	nop;
.L618:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (X);
	R2 = R0.B (X);
	cc =R3==R2;
	if !cc jump .L633 (bp);
	R1 = R6 - R7;
	P0 = R1;
	P5 = R7;
	R0 = R0.B (Z);
	P0 += 1;
.L614:
	nop;
	R1 = B [P5] (Z);
	cc =R1==0;
	if cc jump .L615;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L628;
	nop;
	nop;
	P5 = R6;
.L615:
	R1 = B [P5] (Z);
	cc =R0==R1;
	if cc jump .L610;
	R0 = P1;
	R0 += 1;
	jump.s .L613;
.L628:
	cc =R1==R0;
	if !cc jump .L615;
	nop;
	nop;
	P5 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if !cc jump .L614 (bp);
	jump.s .L615;
.L632:
	P1 = 0 (X);
.L610:
	R0 = P1;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L620:
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
	if cc jump .L644;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L638;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L637;
.L638:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L644:
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L638 (bp);
.L637:
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
	[--sp] = ( r7:6, p5:3 );

	P5 = R0;
	R0 = [SP+32];
	cc =R0==0;
	P4 = R1;
	P3 = R2;
	if cc jump .L651;
	cc =R1<R0 (iu);
	if cc jump .L653;
	P2 = R0;
	P4 -= P2;
	P4 = P5 + P4;
	cc =P5<=P4 (iu);
	if !cc jump .L653;
	R1 = P5;
	cc =R0==1;
	R2 = R1 + R0;
	R7 = B [P3++] (X);
	R6 = CC;
	jump.s .L650;
.L647:
	cc =P4<P5 (iu);
	R2 += 1;
	if cc jump .L653;
	nop;
.L650:
	R3 = P5;
	P5 += 1;
	R0 = B [P5+-1] (X);
	R0 = R0.B (X);
	cc =R0==R7;
	if !cc jump .L647 (bp);
	CC = R6;
	if cc jump .L645;
	P2 = R2;
	P0 = P5;
	P1 = P3;
	P2 -= P5;
	LSETUP (.L648, .L658) LC1 = P2;
.L648:
	R1 = B [P0++] (Z);
	R0 = B [P1++] (Z);
	cc =R1==R0;
	if !cc jump .L647;
.L658:
	nop;
.L645:
	R0 = R3;
	( r7:6, p5:3 ) = [sp++];

	rts;
.L653:
	R3 = 0 (X);
	R0 = R3;
	( r7:6, p5:3 ) = [sp++];

	rts;
.L651:
	R3 = P5;
	R0 = R3;
	( r7:6, p5:3 ) = [sp++];

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
	if cc jump .L660;
	R0 = R3;
	call _memmove;
	R3 = R0;
.L660:
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
	if cc jump .L686;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L687;
	R4 = 0 (X);
.L667:
	R5 = 511 (X);
	R6 = 1023 (X);
	R7 = 0 (X);
	R5 <<= 21;
	R6 <<= 20;
.L673:
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
	if !cc jump .L673 (bp);
.L674:
	cc =R4==0;
	[P5] = R7;
	if cc jump .L680;
	R2 = [SP+60];
	R1 = [SP+56];
	BITTGL (R2, 31);
	[SP+24] = R1;
	[SP+28] = R2;
.L664:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L687:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L670 (bp);
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L679;
.L670:
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
.L686:
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
	if !cc jump .L688;
	[SP+56] = R5;
	[SP+60] = R6;
	R4 = 1 (X);
	jump.s .L667;
.L680:
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
.L688:
	R0 = -513 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L677 (bp);
	R0 = [SP+56];
	R1 = [SP+60];
	[P5] = R7;
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L664;
.L677:
	R4 = 1 (X);
.L668:
	[SP+60] = R6;
	R6 = 511 (X);
	[SP+56] = R5;
	R7 = 0 (X);
	R6 <<= 21;
.L675:
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
	if cc jump .L675 (bp);
	jump.s .L674;
.L679:
	R5 = [SP+56];
	R6 = [SP+60];
	R4 = 0 (X);
	jump.s .L668;
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
	if cc jump .L689;
	P4 = 1 (X);
.L692:
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
	if !cc jump .L692 (bp);
.L689:
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
	if !cc jump .L697;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L696, .L711) LC1 = P2;
.L696:
	cc =R0<0;
	if cc jump .L697;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L698;
.L711:
	R2 += -1;
.L699:
	cc =P1==0;
	if cc jump .L695 (bp);
	R2 = R3;
.L695:
	R0 = R2;
	rts;
.L698:
	cc =R1==0;
	if cc jump .L705;
.L697:
	R2 = 0 (X);
.L702:
	cc =R3<R0 (iu);
	if cc jump .L701 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L701:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L702 (bp);
	jump.s .L699;
.L705:
	R2 = 0 (X);
	jump.s .L699;
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
	if cc jump .L714;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	rts;
.L714:
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
	if cc jump .L721;
.L719:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L721:
	cc =R0==R1;
	if !cc jump .L719 (bp);
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
	if cc jump .L722;
	R7 = 1 (X);
.L724:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L724 (bp);
.L722:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	P1 = R0;
	[--sp] = ( r7:6, p5:5 );

	R6 = -8 (X);
	R7 = R1;
	P0 = R1;
	P2 = R2;
	R0 = R2;
	R1 = R2 >> 3;
	R6 = R2 & R6;
	R2 = P1;
	cc =R2<R7 (iu);
	if cc jump .L731 (bp);
	R2 = R7 + R0;
	R3 = P1;
	cc =R3<=R2 (iu);
	if cc jump .L740 (bp);
.L731:
	cc =R1==0;
	if cc jump .L730;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P5 = R7;
	P0 = P1;
	P2 += 1;
	LSETUP (.L734, .L743) LC1 = P2;
.L734:
	P5 += 8;
	R2 = [P5+-8];
	R3 = [P5+-4];
	[P0+4] = R3;
	[P0] = R2;
.L743:
	P0 += 8;
.L730:
	cc =R0<=R6 (iu);
	if cc jump .L727;
	P2 = R6;
	R7 = R7 + R6;
	R0 = R0 - R6;
	P0 = R7;
	P1 = P1 + P2;
	P2 = R0;
	LSETUP (.L735, .L742) LC1 = P2;
.L735:
	R0 = B [P0++] (X);
.L742:
	B [P1++] = R0;
.L727:
	( r7:6, p5:5 ) = [sp++];

	rts;
.L740:
	cc =R0==0;
	P2 += -1;
	if cc jump .L727;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L736, .L741) LC1 = P2;
.L736:
	R0 = B [P0--] (X);
.L741:
	B [P1--] = R0;
	( r7:6, p5:5 ) = [sp++];

	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	P2 = R0;
	P1 = R1;
	[--sp] = ( p5:3 );

	P5 = R0;
	P4 = R1;
	R0 = R2 >> 1;
	cc =P2<P1 (iu);
	R1 = R2;
	if cc jump .L748 (bp);
	R3 = P1;
	R2 = R3 + R2;
	R3 = P2;
	cc =R3<=R2 (iu);
	if cc jump .L759 (bp);
.L748:
	cc =R0==0;
	if cc jump .L747;
	P3 = R0;
	P0 = P4;
	P1 = P5;
	P2 = P3 + P3;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L751, .L761) LC1 = P2;
.L751:
	R0 = W [P0++] (X);
.L761:
	W [P1++] = R0;
.L747:
	cc = !BITTST (R1,0);
	if cc jump .L744 (bp);
	P2 = R1;
	P2 += -1;
	P4 = P4 + P2;
	R0 = B [P4] (X);
	P2 = P5 + P2;
	B [P2] = R0;
.L744:
	( p5:3 ) = [sp++];

	rts;
.L759:
	P0 = R1;
	cc =R1==0;
	P0 += -1;
	if cc jump .L744;
	P4 = P1 + P0;
	P5 = P2 + P0;
	P0 += 1;
	LSETUP (.L753, .L760) LC1 = P0;
.L753:
	R0 = B [P4--] (X);
.L760:
	B [P5--] = R0;
	( p5:3 ) = [sp++];

	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	P1 = R0;
	R3 = R1;
	[--sp] = ( r7:6, p5:4 );

	R0 = R2;
	P0 = R1;
	R6 = P1;
	P2 = R2;
	R1 = R2 >> 2;
	cc =R6<R3 (iu);
	R2 = -4 (X);
	R2 = R0 & R2;
	if cc jump .L766 (bp);
	R7 = R3 + R0;
	cc =R6<=R7 (iu);
	if cc jump .L775 (bp);
.L766:
	cc =R1==0;
	if cc jump .L765;
	P4 = R1;
	P5 = R3;
	P0 = P1;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L769, .L778) LC1 = P2;
.L769:
	R1 = [P5++];
.L778:
	[P0++] = R1;
.L765:
	cc =R0<=R2 (iu);
	if cc jump .L762;
	P5 = R2;
	R3 = R3 + R2;
	R0 = R0 - R2;
	P0 = R3;
	P2 = R0;
	P1 = P1 + P5;
	LSETUP (.L770, .L777) LC1 = P2;
.L770:
	R0 = B [P0++] (X);
.L777:
	B [P1++] = R0;
.L762:
	( r7:6, p5:4 ) = [sp++];

	rts;
.L775:
	cc =R0==0;
	P2 += -1;
	if cc jump .L762;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L771, .L776) LC1 = P2;
.L771:
	R0 = B [P0--] (X);
.L776:
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
	if !cc jump .L788;
	R1 = R0 >>> 14;
	cc =R1==0;
	if !cc jump .L785;
	R1 = R0 >>> 13;
	cc =R1==0;
	if !cc jump .L789;
	R1 = R0 >>> 12;
	cc =R1==0;
	if !cc jump .L790;
	R1 = R0 >>> 11;
	cc =R1==0;
	if !cc jump .L791;
	R1 = R0 >>> 10;
	cc =R1==0;
	if !cc jump .L792;
	R1 = R0 >>> 9;
	cc =R1==0;
	if !cc jump .L793;
	R1 = R0 >>> 8;
	cc =R1==0;
	if !cc jump .L794;
	R1 = R0 >>> 7;
	cc =R1==0;
	if !cc jump .L795;
	R1 = R0 >>> 6;
	cc =R1==0;
	if !cc jump .L796;
	R1 = R0 >>> 5;
	cc =R1==0;
	if !cc jump .L797;
	R1 = R0 >>> 4;
	cc =R1==0;
	if !cc jump .L798;
	R1 = R0 >>> 3;
	cc =R1==0;
	if !cc jump .L799;
	R1 = R0 >>> 2;
	cc =R1==0;
	if !cc jump .L800;
	R1 = R0 >>> 1;
	cc =R1==0;
	if !cc jump .L801;
	cc =R0==0;
	R1 = 16 (X);
	if !cc jump .L804;
.L785:
	R0 = R1;
	rts;
.L788:
	R1 = 0 (X);
	jump.s .L785;
.L799:
	R1 = 12 (X);
	jump.s .L785;
.L804:
	R1 = 15 (X);
	jump.s .L785;
.L789:
	R1 = 2 (X);
	jump.s .L785;
.L790:
	R1 = 3 (X);
	jump.s .L785;
.L791:
	R1 = 4 (X);
	jump.s .L785;
.L792:
	R1 = 5 (X);
	jump.s .L785;
.L793:
	R1 = 6 (X);
	jump.s .L785;
.L794:
	R1 = 7 (X);
	jump.s .L785;
.L795:
	R1 = 8 (X);
	jump.s .L785;
.L796:
	R1 = 9 (X);
	jump.s .L785;
.L797:
	R1 = 10 (X);
	jump.s .L785;
.L798:
	R1 = 11 (X);
	jump.s .L785;
.L800:
	R1 = 13 (X);
	jump.s .L785;
.L801:
	R1 = 14 (X);
	jump.s .L785;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	cc = !BITTST (R0,0);
	if !cc jump .L808;
	cc = !BITTST (R0,1);
	if !cc jump .L809;
	cc = !BITTST (R0,2);
	if !cc jump .L810;
	cc = !BITTST (R0,3);
	if !cc jump .L811;
	cc = !BITTST (R0,4);
	if !cc jump .L812;
	cc = !BITTST (R0,5);
	if !cc jump .L813;
	cc = !BITTST (R0,6);
	if !cc jump .L814;
	cc = !BITTST (R0,7);
	if !cc jump .L815;
	cc = !BITTST (R0,8);
	if !cc jump .L816;
	cc = !BITTST (R0,9);
	if !cc jump .L817;
	cc = !BITTST (R0,10);
	if !cc jump .L818;
	cc = !BITTST (R0,11);
	if !cc jump .L819;
	cc = !BITTST (R0,12);
	if !cc jump .L820;
	cc = !BITTST (R0,13);
	if !cc jump .L821;
	cc = !BITTST (R0,14);
	if !cc jump .L822;
	cc = !BITTST (R0,15);
	R1 = 16 (X);
	if !cc jump .L825;
.L805:
	R0 = R1;
	rts;
.L808:
	R1 = 0 (X);
	jump.s .L805;
.L809:
	R1 = 1 (X);
	jump.s .L805;
.L820:
	R1 = 12 (X);
	jump.s .L805;
.L810:
	R1 = 2 (X);
	jump.s .L805;
.L811:
	R1 = 3 (X);
	jump.s .L805;
.L812:
	R1 = 4 (X);
	jump.s .L805;
.L813:
	R1 = 5 (X);
	jump.s .L805;
.L814:
	R1 = 6 (X);
	jump.s .L805;
.L815:
	R1 = 7 (X);
	jump.s .L805;
.L816:
	R1 = 8 (X);
	jump.s .L805;
.L817:
	R1 = 9 (X);
	jump.s .L805;
.L818:
	R1 = 10 (X);
	jump.s .L805;
.L819:
	R1 = 11 (X);
	jump.s .L805;
.L821:
	R1 = 13 (X);
	jump.s .L805;
.L822:
	R1 = 14 (X);
	jump.s .L805;
.L825:
	R1 = 15 (X);
	jump.s .L805;
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
	if !cc jump .L832;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L832:
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
	if cc jump .L835;
	R7 = 1 (X);
.L837:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L837 (bp);
.L835:
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
	if cc jump .L840;
	cc =R1==0;
	if cc jump .L840;
	R7 = 1 (X);
.L842:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L842 (bp);
.L840:
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
	if cc jump .L848;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L847, .L862) LC1 = P2;
.L847:
	cc =R0<0;
	if cc jump .L848;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L849;
.L862:
	R2 += -1;
.L850:
	cc =P1==0;
	if cc jump .L846 (bp);
	R2 = R3;
.L846:
	R0 = R2;
	rts;
.L849:
	cc =R1==0;
	if cc jump .L856;
.L848:
	R2 = 0 (X);
.L853:
	cc =R3<R0 (iu);
	if cc jump .L852 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L852:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L853 (bp);
	jump.s .L850;
.L856:
	R2 = 0 (X);
	jump.s .L850;
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
	if cc jump .L866;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L867;
.L865:
	SP += 12;
	R0 = R5;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L867:
	R5 = 0 (X);
	jump.s .L865;
.L866:
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
	if cc jump .L871;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L872;
.L870:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L872:
	R7 = 0 (X);
	jump.s .L870;
.L871:
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
	if cc jump .L889;
	cc =R1==0;
	if cc jump .L881;
	P1 = 0 (X);
.L877:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L880;
.L890:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L879;
.L880:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L890 (bp);
.L879:
	cc =P1==0;
	if cc jump .L875;
	R3 = -R3;
.L875:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L889:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L877;
.L881:
	R3 = 0 (X);
	jump.s .L875;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	R3 = R0;
	cc =R3<0;
	[--sp] = ( r7:7 );

	R0 = R1;
	if cc jump .L911;
	R7 = 0 (X);
.L892:
	cc =R0<0;
	if !cc jump .L893 (bp);
	R0 = -R0;
	BITTGL (R7, 0);
.L893:
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L895;
	LSETUP (.L894, .L912) LC1 = P2;
.L894:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L897;
.L912:
	nop;
.L897:
	cc =R1==0;
	R3 = 0 (X);
	if cc jump .L896;
.L895:
	R3 = 0 (X);
.L900:
	cc =R2<R0 (iu);
	if cc jump .L899 (bp);
	R2 = R2 - R0;
	R3 = R3 | R1;
.L899:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L900 (bp);
.L896:
	cc =R7==0;
	if cc jump .L891 (bp);
	R3 = -R3;
.L891:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L911:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L892;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	R0 = R1;
	if cc jump .L932;
	P1 = 0 (X);
.L914:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L921;
	LSETUP (.L915, .L934) LC1 = P2;
.L915:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L918;
.L934:
	nop;
.L918:
	cc =R1==0;
	if cc jump .L933;
.L921:
	cc =R2<R0 (iu);
	if cc jump .L920 (bp);
	R2 = R2 - R0;
.L920:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L921 (bp);
.L917:
	cc =P1==0;
	if cc jump .L913 (bp);
	R2 = -R2;
.L913:
	R0 = R2;
	rts;
.L932:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L914;
.L933:
	R2 = R3;
	jump.s .L917;
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
	if !cc jump .L1048;
	R1 = R7.L (X);
	cc =R1<0;
	if cc jump .L938;
	R1 = R7 << 1;
	R5 = R1.L (Z);
	cc =R6<=R5 (iu);
	R3 = R1;
	if cc jump .L939;
	R5 = R1.L (X);
	cc =R5<0;
	if cc jump .L940;
	R5 = R7 << 2;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L941;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L942;
	R5 = R7 << 3;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L943;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L944;
	R5 = R7 << 4;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L945;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L946;
	R5 = R7 << 5;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L947;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L948;
	R5 = R7 << 6;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L949;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L950;
	R5 = R7 << 7;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L951;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L952;
	R5 = R7 << 8;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L953;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L954;
	R5 = R7 << 9;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L955;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L956;
	R5 = R7 << 10;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L957;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L958;
	R5 = R7 << 11;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L959;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L960;
	R5 = R7 << 12;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L961;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L962;
	R5 = R7 << 13;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L963;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L964;
	R5 = R7 << 14;
	R1 = R5.L (Z);
	cc =R6<=R1 (iu);
	R3 = R5;
	if cc jump .L965;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L966;
	R7 <<= 15;
	R5 = R7;
	R7 = R7.L (Z);
	cc =R6<=R7 (iu);
	if cc jump .L967;
	cc =R7==0;
	if !cc jump .L1049;
.L968:
	cc =R2==0;
	if !cc jump .L935;
	R0 = R5;
.L935:
	( r7:4 ) = [sp++];

	rts;
.L955:
	cc =R6<R1 (iu);
	if cc jump .L1001 (bp);
	R0 = R0 - R5;
	R7 = 512 (X);
	R5 = 512 (X);
	R3 = R3.L (Z);
.L970:
	R4 = R7 >> 2;
	cc =R4==0;
	R1 = R3 >> 2;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L971 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L971:
	R4 = R7 >> 3;
	cc =R4==0;
	R1 = R3 >> 3;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L972 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L972:
	R4 = R7 >> 4;
	cc =R4==0;
	R1 = R3 >> 4;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L973 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L973:
	R4 = R7 >> 5;
	cc =R4==0;
	R1 = R3 >> 5;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L974 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L974:
	R4 = R7 >> 6;
	cc =R4==0;
	R1 = R3 >> 6;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L975 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L975:
	R4 = R7 >> 7;
	cc =R4==0;
	R1 = R3 >> 7;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L976 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L976:
	R4 = R7 >> 8;
	cc =R4==0;
	R1 = R3 >> 8;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L977 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L977:
	R4 = R7 >> 9;
	cc =R4==0;
	R1 = R3 >> 9;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L978 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L978:
	R4 = R7 >> 10;
	cc =R4==0;
	R1 = R3 >> 10;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L979 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L979:
	R4 = R7 >> 11;
	cc =R4==0;
	R1 = R3 >> 11;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L980 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L980:
	R4 = R7 >> 12;
	cc =R4==0;
	R1 = R3 >> 12;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L981 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L981:
	R4 = R7 >> 13;
	cc =R4==0;
	R1 = R3 >> 13;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L982 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L982:
	R4 = R7 >> 14;
	cc =R4==0;
	R1 = R3 >> 14;
	if cc jump .L968;
	R6 = R0.L (Z);
	cc =R6<R1 (iu);
	if cc jump .L983 (bp);
	R0 = R0 - R1;
	R5 = R4 | R5;
.L983:
	R1 = 16384 (X);
	cc =R7==R1;
	R3 >>= 15;
	if cc jump .L968;
	R1 = R0.L (Z);
	cc =R1<R3 (iu);
	if cc jump .L991 (bp);
	R0 = R0 - R3;
	BITSET (R5, 0);
	jump.s .L968;
.L991:
	R0 = 0 (X);
	jump.s .L968;
.L1048:
	cc =R1==R6;
	if cc jump .L989 (bp);
	R5 = 0 (X);
	jump.s .L968;
.L938:
	R0 = R0 - R7;
	R5 = 1 (X);
	jump.s .L968;
.L939:
	cc =R6<R5 (iu);
	if cc jump .L993 (bp);
	R0 = R0 - R1;
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R1.L (Z);
	jump.s .L970;
.L940:
	R0 = R0 - R1;
	R1 = 32767 (X);
	R1 = R1 & R7;
	P2 = 1 (X);
	R5 = 2 (X);
	R7 = 2 (X);
	R3 = R3.L (Z);
.L988:
	R6 = R0.L (Z);
	R4 = R1.L (Z);
	cc =R6<R4 (iu);
	if cc jump .L970;
	R0 = R0 - R1;
	R1 = P2;
	R5 = R5 | R1;
	jump.s .L970;
.L941:
	cc =R6<R1 (iu);
	if cc jump .L994 (bp);
	R0 = R0 - R5;
	R7 = 4 (X);
	R5 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L942:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2 (X);
	R5 = 4 (X);
	R7 = 4 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L943:
	cc =R6<R1 (iu);
	if cc jump .L995 (bp);
	R0 = R0 - R5;
	R7 = 8 (X);
	R5 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L944:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4 (X);
	R5 = 8 (X);
	R7 = 8 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L945:
	cc =R6<R1 (iu);
	if cc jump .L996 (bp);
	R0 = R0 - R5;
	R7 = 16 (X);
	R5 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L946:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8 (X);
	R5 = 16 (X);
	R7 = 16 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L947:
	cc =R6<R1 (iu);
	if cc jump .L997 (bp);
	R0 = R0 - R5;
	R7 = 32 (X);
	R5 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L948:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 16 (X);
	R5 = 32 (X);
	R7 = 32 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L949:
	cc =R6<R1 (iu);
	if cc jump .L998 (bp);
	R0 = R0 - R5;
	R7 = 64 (X);
	R5 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L950:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 32 (X);
	R5 = 64 (X);
	R7 = 64 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L951:
	cc =R6<R1 (iu);
	if cc jump .L999 (bp);
	R0 = R0 - R5;
	R7 = 128 (X);
	R5 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L952:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 64 (X);
	R5 = 128 (X);
	R7 = 128 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L954:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 128 (X);
	R5 = 256 (X);
	R7 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L956:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 256 (X);
	R5 = 512 (X);
	R7 = 512 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L989:
	R5 = 1 (X);
	R0 = 0 (X);
	jump.s .L968;
.L993:
	R7 = 2 (X);
.L987:
	R7 = R7.L (Z);
	R1 = R7 >> 1;
	R3 = R3.L (Z);
	P2 = R1;
	R5 = 0 (X);
	R1 = R3 >> 1;
	jump.s .L988;
.L958:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 512 (X);
	R5 = 1024 (X);
	R7 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L960:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 1024 (X);
	R5 = 2048 (X);
	R7 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L994:
	R7 = 4 (X);
	jump.s .L987;
.L995:
	R7 = 8 (X);
	jump.s .L987;
.L962:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 2048 (X);
	R5 = 4096 (X);
	R7 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L964:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 4096 (X);
	R5 = 8192 (X);
	R7 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L996:
	R7 = 16 (X);
	jump.s .L987;
.L997:
	R7 = 32 (X);
	jump.s .L987;
.L966:
	R0 = R0 - R5;
	R1 >>= 1;
	P2 = 8192 (X);
	R5 = 16384 (X);
	R7 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L988;
.L967:
	R1 = R0.L (X);
	cc =R1<0;
	if cc jump .L992 (bp);
	R3 = -32768 (X);
	R7 = R3;
	jump.s .L987;
.L998:
	R7 = 64 (X);
	jump.s .L987;
.L1049:
	R5 = -32768 (X);
	R1 = 16384 (X);
	R7 = 32768 (Z);
	R0 = R0 + R5;
	P2 = R1;
	R3 = R7;
	jump.s .L988;
.L999:
	R7 = 128 (X);
	jump.s .L987;
.L953:
	cc =R6<R1 (iu);
	if cc jump .L1000 (bp);
	R0 = R0 - R5;
	R7 = 256 (X);
	R5 = 256 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L992:
	R7 = 32768 (Z);
	R5 = -32768 (X);
	R0 = 0 (X);
	R3 = R7;
	jump.s .L970;
.L1000:
	R7 = 256 (X);
	jump.s .L987;
.L957:
	cc =R6<R1 (iu);
	if cc jump .L1002 (bp);
	R0 = R0 - R5;
	R7 = 1024 (X);
	R5 = 1024 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L965:
	cc =R6<R1 (iu);
	if cc jump .L1006 (bp);
	R0 = R0 - R5;
	R7 = 16384 (X);
	R5 = 16384 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L1002:
	R7 = 1024 (X);
	jump.s .L987;
.L1006:
	R7 = 16384 (X);
	jump.s .L987;
.L1001:
	R7 = 512 (X);
	jump.s .L987;
.L963:
	cc =R6<R1 (iu);
	if cc jump .L1005 (bp);
	R0 = R0 - R5;
	R7 = 8192 (X);
	R5 = 8192 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L961:
	cc =R6<R1 (iu);
	if cc jump .L1004 (bp);
	R0 = R0 - R5;
	R7 = 4096 (X);
	R5 = 4096 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L959:
	cc =R6<R1 (iu);
	if cc jump .L1003 (bp);
	R0 = R0 - R5;
	R7 = 2048 (X);
	R5 = 2048 (X);
	R3 = R3.L (Z);
	jump.s .L970;
.L1005:
	R7 = 8192 (X);
	jump.s .L987;
.L1004:
	R7 = 4096 (X);
	jump.s .L987;
.L1003:
	R7 = 2048 (X);
	jump.s .L987;
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
	if cc jump .L1052;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1051, .L1066) LC1 = P2;
.L1051:
	cc =R0<0;
	if cc jump .L1052;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1053;
.L1066:
	R2 += -1;
.L1054:
	cc =P1==0;
	if cc jump .L1050 (bp);
	R2 = R3;
.L1050:
	R0 = R2;
	rts;
.L1053:
	cc =R1==0;
	if cc jump .L1060;
.L1052:
	R2 = 0 (X);
.L1057:
	cc =R3<R0 (iu);
	if cc jump .L1056 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L1056:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1057 (bp);
	jump.s .L1054;
.L1060:
	R2 = 0 (X);
	jump.s .L1054;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L1068 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L1069:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1068:
	cc =R2==0;
	if cc jump .L1071;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L1069;
.L1071:
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
	if cc jump .L1073 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L1074:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1073:
	cc =R2==0;
	if cc jump .L1076;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L1074;
.L1076:
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
	if cc jump .L1084;
	cc =R0<=R2;
	if !cc jump .L1085;
	cc =R3<R1 (iu);
	if cc jump .L1084;
	cc =R3<=R1 (iu);
	if !cc jump .L1085;
	R0 = 1 (X);
	rts;
.L1084:
	R0 = 0 (X);
	rts;
.L1085:
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
	if cc jump .L1090;
	cc =R0<=R2;
	if !cc jump .L1089;
	cc =R3<R1 (iu);
	if cc jump .L1090;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1090:
	R0 = -1 (X);
	rts;
.L1089:
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
	if cc jump .L1093 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L1094:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1093:
	cc =R2==0;
	if cc jump .L1096;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L1094;
.L1096:
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
	if cc jump .L1105 (bp);
.L1107:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1105:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L1106;
.L1108:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L1107 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L1108;
.L1106:
	cc =R4<0;
	if !cc jump .L1104 (bp);
	R0 = [SP+20];
	R1 = 1023 (X);
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L1104:
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
	if cc jump .L1112 (bp);
.L1114:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L1112:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L1113;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1114 (bp);
.L1118:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1114 (bp);
	jump.s .L1118;
.L1113:
	cc =R4<0;
	if !cc jump .L1111 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L1111:
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
	if cc jump .L1123;
	cc =R0<=R2 (iu);
	if !cc jump .L1124;
	cc =R3<R1 (iu);
	if cc jump .L1123;
	cc =R3<=R1 (iu);
	if !cc jump .L1124;
	R0 = 1 (X);
	rts;
.L1123:
	R0 = 0 (X);
	rts;
.L1124:
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
	if cc jump .L1129;
	cc =R0<=R2 (iu);
	if !cc jump .L1128;
	cc =R3<R1 (iu);
	if cc jump .L1129;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1129:
	R0 = -1 (X);
	rts;
.L1128:
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
