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
	jump.l _atoi;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P2 = R0;
.L300:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L300;
	R0 = R7;
	R0 += -9;
	cc =R0<=4 (iu);
	if cc jump .L300 (bp);
	R1 = 43 (X);
	cc =R7==R1;
	if cc jump .L302;
	R0 = 45 (X);
	cc =R7==R0;
	if !cc jump .L319 (bp);
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	if !cc jump .L311;
	P4 = 1 (X);
.L305:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L308:
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
	if cc jump .L308 (bp);
	cc =P4==0;
	if !cc jump .L299 (bp);
	R3 = R4 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R1 = R5 - R2;
	R1 = R1 - R0;
.L299:
	SP += 24;
	RETS = [SP++];
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L319:
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L311;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L305;
.L302:
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L305 (bp);
.L311:
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
.L333:
	cc =R7==0;
	if cc jump .L321;
.L334:
	P2 = R7;
	R0 = P5;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	call (P4);
	cc =R0<0;
	if cc jump .L325;
	cc =R0==0;
	if cc jump .L320;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L334 (bp);
.L321:
	R6 = 0 (X);
.L320:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L325:
	R7 = P3;
	jump.s .L333;
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
.L347:
	cc =R7==0;
	if cc jump .L348;
.L336:
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
	if cc jump .L335;
	cc =R0<=0;
	if cc jump .L340;
	R7 += -1;
	R7 >>>= 1;
	R0 = P3;
	cc =R7==0;
	R6 = R0 + R5;
	if !cc jump .L336 (bp);
.L348:
	P3 = 0 (X);
.L335:
	SP += 12;
	FP = [SP++];
	R0 = P3;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L340:
	R7 = FP;
	jump.s .L347;
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
	if !cc jump .L351 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L351:
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
	if !cc jump .L357 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L357:
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
	if !cc jump .L361 (bp);
	jump.s .L364;
.L363:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L364;
.L361:
	cc =R1==R0;
	if !cc jump .L363 (bp);
	R0 = P2;
	rts;
.L364:
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
	if !cc jump .L367;
	P1 += 4;
	P2 += 4;
	jump.s .L368;
.L369:
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L367;
.L368:
	cc =R0==0;
	if !cc jump .L369 (bp);
.L367:
	cc =R0<R1;
	if cc jump .L371 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L371:
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
.L373:
	nop;
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L373 (bp);
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
	if cc jump .L378;
	R0 = P1;
	R0 += 4;
.L377:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L377 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L378:
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
	if cc jump .L389;
	LSETUP (.L382, .L391) LC1 = P1;
.L382:
	P0 = R0;
	P5 = P2;
	R0 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L383;
	cc =R1==0;
	if cc jump .L383;
.L391:
	nop;
.L389:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L383:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L390 (bp);
	cc =R0<R1;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L390:
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
	if cc jump .L399;
	nop;
	LSETUP (.L394, .L400) LC1 = P1;
.L394:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L392;
.L400:
	nop;
.L399:
	R0 = 0 (X);
.L392:
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
	if cc jump .L410;
	R1 = R3;
	LSETUP (.L403, .L414) LC1 = P0;
.L403:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L412;
.L414:
	nop;
.L410:
	R0 = 0 (X);
	rts;
.L412:
	cc =R3<R2;
	if cc jump .L413 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L413:
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
	if cc jump .L416;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L416:
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
	if cc jump .L427;
	P1 = R1;
	R3 = R0 - R2;
	R2 = R1 << 2;
	cc =R3<R2 (iu);
	P0 = R0;
	P1 += -1;
	if !cc jump .L433 (bp);
	cc =R1==0;
	if cc jump .L427;
	P1 = P1 << 2;
	P2 = P2 + P1;
	P0 = P0 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L425, .L435) LC1 = P1;
.L425:
	R1 = [P2--];
.L435:
	[P0--] = R1;
.L427:
	( p5:5 ) = [sp++];

	rts;
.L433:
	cc =R1==0;
	P1 = R1;
	if cc jump .L427;
	nop;
	nop;
	LSETUP (.L423, .L434) LC1 = P1;
.L423:
	R1 = [P2++];
.L434:
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
	if cc jump .L437;
	P1 = R3;
	LSETUP (.L438, .L443) LC1 = P2;
.L438:
.L443:
	[P1++] = R0;
.L437:
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
	if !cc jump .L445 (bp);
	cc =P1==0;
	P0 = P5 + P1;
	if cc jump .L444;
	P4 = P0;
	P1 += -1;
	P2 = P2 + P1;
	P4 += -1;
	P0 -= P5;
	LSETUP (.L447, .L458) LC1 = P0;
.L447:
	R0 = B [P4--] (X);
.L458:
	B [P2--] = R0;
.L444:
	( p5:4 ) = [sp++];

	rts;
.L445:
	cc =P5==P2;
	if cc jump .L444;
	cc =P1==0;
	if cc jump .L444;
	nop;
	nop;
	LSETUP (.L448, .L457) LC1 = P1;
.L448:
	R0 = B [P5++] (X);
.L457:
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
	LSETUP (.L475, .L477) LC1 = P2;
.L475:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L472;
.L477:
	nop;
	R0 = 0 (X);
.L472:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L481;
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if !cc jump .L478;
	R1 = 1 (X);
.L480:
	R0 >>>= 1;
	cc = !BITTST (R0,0);
	R1 += 1;
	if cc jump .L480 (bp);
.L478:
	R0 = R1;
	rts;
.L481:
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
	if cc jump .L487 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R6 = 1 (X);
	if cc jump .L488;
.L486:
	SP += 12;
	R0 = R6;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L487:
	SP += 12;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:6 ) = [sp++];

	rts;
.L488:
	R6 = 0 (X);
	jump.s .L486;
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
	if cc jump .L492 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L493;
.L491:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L492:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L493:
	R7 = 0 (X);
	jump.s .L491;
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
	if cc jump .L497 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L498;
.L496:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L497:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L498:
	R7 = 0 (X);
	jump.s .L496;
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
	if !cc jump .L501;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L501 (bp);
	cc =R7<0;
	if cc jump .L515;
	R6 = 1 (X);
	R6 <<= 30;
.L503:
	cc = !BITTST (R7,0);
	if cc jump .L504 (bp);
.L505:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L504:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L501;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L505 (bp);
.L516:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L505 (bp);
	jump.s .L516;
.L501:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L515:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L503;
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
	if !cc jump .L518;
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
	if cc jump .L518 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L532;
	R7 = 1 (X);
	R7 <<= 30;
.L520:
	cc = !BITTST (R5,0);
	if cc jump .L521 (bp);
.L522:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L521:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L518;
.L523:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L522 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L523;
.L518:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L532:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L520;
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
	if !cc jump .L534;
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
	if cc jump .L534 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L548;
	R7 = 1 (X);
	R7 <<= 30;
.L536:
	cc = !BITTST (R5,0);
	if cc jump .L537 (bp);
.L538:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L537:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L534;
.L539:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L538 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L539;
.L534:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L548:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L536;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	P2 = R2;
	R3 = R0;
	P0 = R1;
	cc =P2==0;
	if cc jump .L550;
	nop;
	P1 = R0;
	LSETUP (.L551, .L556) LC1 = P2;
.L551:
	R0 = B [P1++] (X);
	R1 = B [P0++] (X);
	R0 = R0 ^ R1;
.L556:
	B [P1+-1] = R0;
.L550:
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
	if cc jump .L564;
	R0 = P5;
	R0 += 1;
.L559:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L559 (bp);
.L558:
	cc =P1==0;
	if cc jump .L560;
	nop;
	nop;
	LSETUP (.L561, .L570) LC1 = P1;
.L561:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L563;
.L570:
	nop;
.L560:
	R0 = 0 (X);
	B [P2] = R0;
.L563:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L564:
	P2 = P5;
	jump.s .L558;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
	if cc jump .L571;
	nop;
	P1 = R0;
	LSETUP (.L573, .L580) LC1 = P1;
.L573:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L579;
.L571:
	R0 = R1;
	rts;
.L579:
.L580:
	R1 += 1;
	R1 = R0;
	jump.s .L571;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L586;
.L582:
	P2 = R2;
	jump.s .L585;
.L584:
	cc =R0==R1;
	if cc jump .L583;
	nop;
	nop;
	nop;
.L585:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L584 (bp);
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
	if !cc jump .L582 (bp);
.L586:
	P1 = 0 (X);
.L583:
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
.L590:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L589 (bp);
	R3 = R1;
.L589:
	cc =R0==0;
	if !cc jump .L590 (bp);
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
	if cc jump .L602;
	R1 += 1;
.L594:
	P2 = R1;
	R1 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	if !cc jump .L594 (bp);
	R2 = P2;
	cc =R2==R7;
	R1 = R2 - R7;
	if cc jump .L602;
	R1 += -1;
	R6 = R7 + R1;
.L595:
	P2 = R0;
	jump.s .L600;
.L615:
	cc =R2==0;
	if cc jump .L614;
	nop;
.L600:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (X);
	R2 = R0.B (X);
	cc =R3==R2;
	if !cc jump .L615 (bp);
	R1 = R6 - R7;
	P0 = R1;
	P5 = R7;
	R0 = R0.B (Z);
	P0 += 1;
.L596:
	nop;
	R1 = B [P5] (Z);
	cc =R1==0;
	if cc jump .L597;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L610;
	nop;
	nop;
	P5 = R6;
.L597:
	R1 = B [P5] (Z);
	cc =R0==R1;
	if cc jump .L592;
	R0 = P1;
	R0 += 1;
	jump.s .L595;
.L610:
	cc =R1==R0;
	if !cc jump .L597;
	nop;
	nop;
	P5 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if !cc jump .L596 (bp);
	jump.s .L597;
.L614:
	P1 = 0 (X);
.L592:
	R0 = P1;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L602:
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
	if cc jump .L626;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L620;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L619;
.L620:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L626:
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L620 (bp);
.L619:
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
	if cc jump .L633;
	cc =R1<R0 (iu);
	if cc jump .L635;
	P2 = R0;
	P4 -= P2;
	P4 = P5 + P4;
	cc =P5<=P4 (iu);
	if !cc jump .L635;
	R1 = P5;
	cc =R0==1;
	R2 = R1 + R0;
	R7 = B [P3++] (X);
	R6 = CC;
	jump.s .L632;
.L629:
	cc =P4<P5 (iu);
	R2 += 1;
	if cc jump .L635;
	nop;
.L632:
	R3 = P5;
	P5 += 1;
	R0 = B [P5+-1] (X);
	R0 = R0.B (X);
	cc =R0==R7;
	if !cc jump .L629 (bp);
	CC = R6;
	if cc jump .L627;
	P2 = R2;
	P0 = P5;
	P1 = P3;
	P2 -= P5;
	LSETUP (.L630, .L640) LC1 = P2;
.L630:
	R1 = B [P0++] (Z);
	R0 = B [P1++] (Z);
	cc =R1==R0;
	if !cc jump .L629;
.L640:
	nop;
.L627:
	R0 = R3;
	( r7:6, p5:3 ) = [sp++];

	rts;
.L635:
	R3 = 0 (X);
	R0 = R3;
	( r7:6, p5:3 ) = [sp++];

	rts;
.L633:
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
	if cc jump .L642;
	R0 = R3;
	call _memmove;
	R3 = R0;
.L642:
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
	if cc jump .L668;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L669;
	R4 = 0 (X);
.L649:
	R5 = 511 (X);
	R6 = 1023 (X);
	R7 = 0 (X);
	R5 <<= 21;
	R6 <<= 20;
.L655:
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
	if !cc jump .L655 (bp);
.L656:
	cc =R4==0;
	[P5] = R7;
	if cc jump .L662;
	R2 = [SP+60];
	R1 = [SP+56];
	BITTGL (R2, 31);
	[SP+24] = R1;
	[SP+28] = R2;
.L646:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L669:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L652 (bp);
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L661;
.L652:
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
.L668:
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
	if !cc jump .L670;
	[SP+56] = R5;
	[SP+60] = R6;
	R4 = 1 (X);
	jump.s .L649;
.L662:
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
.L670:
	R0 = -513 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+56] ||
	nop;
	R1 = [SP+60];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L659 (bp);
	R0 = [SP+56];
	R1 = [SP+60];
	[P5] = R7;
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L646;
.L659:
	R4 = 1 (X);
.L650:
	[SP+60] = R6;
	R6 = 511 (X);
	[SP+56] = R5;
	R7 = 0 (X);
	R6 <<= 21;
.L657:
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
	if cc jump .L657 (bp);
	jump.s .L656;
.L661:
	R5 = [SP+56];
	R6 = [SP+60];
	R4 = 0 (X);
	jump.s .L650;
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
	if cc jump .L671;
	P4 = 1 (X);
.L674:
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
	if !cc jump .L674 (bp);
.L671:
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
	if !cc jump .L679;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L678, .L693) LC1 = P2;
.L678:
	cc =R0<0;
	if cc jump .L679;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L680;
.L693:
	R2 += -1;
.L681:
	cc =P1==0;
	if cc jump .L677 (bp);
	R2 = R3;
.L677:
	R0 = R2;
	rts;
.L680:
	cc =R1==0;
	if cc jump .L687;
.L679:
	R2 = 0 (X);
.L684:
	cc =R3<R0 (iu);
	if cc jump .L683 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L683:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L684 (bp);
	jump.s .L681;
.L687:
	R2 = 0 (X);
	jump.s .L681;
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
	if cc jump .L696;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	rts;
.L696:
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
	if cc jump .L703;
.L701:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L703:
	cc =R0==R1;
	if !cc jump .L701 (bp);
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
	if cc jump .L704;
	R7 = 1 (X);
.L706:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L706 (bp);
.L704:
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
	if cc jump .L713 (bp);
	R2 = R7 + R0;
	R3 = P1;
	cc =R3<=R2 (iu);
	if cc jump .L722 (bp);
.L713:
	cc =R1==0;
	if cc jump .L712;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P5 = R7;
	P0 = P1;
	P2 += 1;
	LSETUP (.L716, .L725) LC1 = P2;
.L716:
	P5 += 8;
	R2 = [P5+-8];
	R3 = [P5+-4];
	[P0+4] = R3;
	[P0] = R2;
.L725:
	P0 += 8;
.L712:
	cc =R0<=R6 (iu);
	if cc jump .L709;
	P2 = R6;
	R7 = R7 + R6;
	R0 = R0 - R6;
	P0 = R7;
	P1 = P1 + P2;
	P2 = R0;
	LSETUP (.L717, .L724) LC1 = P2;
.L717:
	R0 = B [P0++] (X);
.L724:
	B [P1++] = R0;
.L709:
	( r7:6, p5:5 ) = [sp++];

	rts;
.L722:
	cc =R0==0;
	P2 += -1;
	if cc jump .L709;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L718, .L723) LC1 = P2;
.L718:
	R0 = B [P0--] (X);
.L723:
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
	if cc jump .L730 (bp);
	R3 = P1;
	R2 = R3 + R2;
	R3 = P2;
	cc =R3<=R2 (iu);
	if cc jump .L741 (bp);
.L730:
	cc =R0==0;
	if cc jump .L729;
	P3 = R0;
	P0 = P4;
	P1 = P5;
	P2 = P3 + P3;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L733, .L743) LC1 = P2;
.L733:
	R0 = W [P0++] (X);
.L743:
	W [P1++] = R0;
.L729:
	cc = !BITTST (R1,0);
	if cc jump .L726 (bp);
	P2 = R1;
	P2 += -1;
	P4 = P4 + P2;
	R0 = B [P4] (X);
	P2 = P5 + P2;
	B [P2] = R0;
.L726:
	( p5:3 ) = [sp++];

	rts;
.L741:
	P0 = R1;
	cc =R1==0;
	P0 += -1;
	if cc jump .L726;
	P4 = P1 + P0;
	P5 = P2 + P0;
	P0 += 1;
	LSETUP (.L735, .L742) LC1 = P0;
.L735:
	R0 = B [P4--] (X);
.L742:
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
	if cc jump .L748 (bp);
	R7 = R3 + R0;
	cc =R6<=R7 (iu);
	if cc jump .L757 (bp);
.L748:
	cc =R1==0;
	if cc jump .L747;
	P4 = R1;
	P5 = R3;
	P0 = P1;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L751, .L760) LC1 = P2;
.L751:
	R1 = [P5++];
.L760:
	[P0++] = R1;
.L747:
	cc =R0<=R2 (iu);
	if cc jump .L744;
	P5 = R2;
	R3 = R3 + R2;
	R0 = R0 - R2;
	P0 = R3;
	P2 = R0;
	P1 = P1 + P5;
	LSETUP (.L752, .L759) LC1 = P2;
.L752:
	R0 = B [P0++] (X);
.L759:
	B [P1++] = R0;
.L744:
	( r7:6, p5:4 ) = [sp++];

	rts;
.L757:
	cc =R0==0;
	P2 += -1;
	if cc jump .L744;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L753, .L758) LC1 = P2;
.L753:
	R0 = B [P0--] (X);
.L758:
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
	[--sp] = ( r7:7 );

	R3 = R0.L (Z);
	R7 = 15 (X);
	R0 = 0 (X);
	P2 = 16 (X);
	LSETUP (.L769, .L771) LC1 = P2;
.L769:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L767;
.L771:
	R0 += 1;
.L767:
	( r7:7 ) = [sp++];

	rts;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	R2 = R0.L (Z);
	P2 = 16 (X);
	R0 = 0 (X);
	LSETUP (.L774, .L776) LC1 = P2;
.L774:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L772;
.L776:
	R0 += 1;
.L772:
	rts;
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
	if !cc jump .L783;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L783:
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
	[--sp] = ( r7:7 );

	R3 = R0.L (Z);
	R2 = 0 (X);
	R1 = 0 (X);
	R7 = 1 (X);
	P2 = 16 (X);
	LSETUP (.L785, .L787) LC1 = P2;
.L785:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L787:
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

	R3 = R0.L (Z);
	R2 = 0 (X);
	R1 = 0 (X);
	R7 = 1 (X);
	P2 = 16 (X);
	LSETUP (.L789, .L791) LC1 = P2;
.L789:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L791:
	R1 += 1;
	R0 = R2;
	( r7:7 ) = [sp++];

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
	if cc jump .L792;
	R7 = 1 (X);
.L794:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L794 (bp);
.L792:
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
	if cc jump .L797;
	cc =R1==0;
	if cc jump .L797;
	R7 = 1 (X);
.L799:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L799 (bp);
.L797:
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
	if cc jump .L805;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L804, .L819) LC1 = P2;
.L804:
	cc =R0<0;
	if cc jump .L805;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L806;
.L819:
	R2 += -1;
.L807:
	cc =P1==0;
	if cc jump .L803 (bp);
	R2 = R3;
.L803:
	R0 = R2;
	rts;
.L806:
	cc =R1==0;
	if cc jump .L813;
.L805:
	R2 = 0 (X);
.L810:
	cc =R3<R0 (iu);
	if cc jump .L809 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L809:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L810 (bp);
	jump.s .L807;
.L813:
	R2 = 0 (X);
	jump.s .L807;
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
	if cc jump .L823;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L824;
.L822:
	SP += 12;
	R0 = R5;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L824:
	R5 = 0 (X);
	jump.s .L822;
.L823:
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
	if cc jump .L828;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L829;
.L827:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L829:
	R7 = 0 (X);
	jump.s .L827;
.L828:
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
	if cc jump .L846;
	cc =R1==0;
	if cc jump .L838;
	P1 = 0 (X);
.L834:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L837;
.L847:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L836;
.L837:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L847 (bp);
.L836:
	cc =P1==0;
	if cc jump .L832;
	R3 = -R3;
.L832:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L846:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L834;
.L838:
	R3 = 0 (X);
	jump.s .L832;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	R3 = R0;
	cc =R3<0;
	[--sp] = ( r7:7 );

	R0 = R1;
	if cc jump .L868;
	R7 = 0 (X);
.L849:
	cc =R0<0;
	if !cc jump .L850 (bp);
	R0 = -R0;
	BITTGL (R7, 0);
.L850:
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L852;
	LSETUP (.L851, .L869) LC1 = P2;
.L851:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L854;
.L869:
	nop;
.L854:
	cc =R1==0;
	R3 = 0 (X);
	if cc jump .L853;
.L852:
	R3 = 0 (X);
.L857:
	cc =R2<R0 (iu);
	if cc jump .L856 (bp);
	R2 = R2 - R0;
	R3 = R3 | R1;
.L856:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L857 (bp);
.L853:
	cc =R7==0;
	if cc jump .L848 (bp);
	R3 = -R3;
.L848:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L868:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L849;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	R0 = R1;
	if cc jump .L889;
	P1 = 0 (X);
.L871:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L878;
	LSETUP (.L872, .L891) LC1 = P2;
.L872:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L875;
.L891:
	nop;
.L875:
	cc =R1==0;
	if cc jump .L890;
.L878:
	cc =R2<R0 (iu);
	if cc jump .L877 (bp);
	R2 = R2 - R0;
.L877:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L878 (bp);
.L874:
	cc =P1==0;
	if cc jump .L870 (bp);
	R2 = -R2;
.L870:
	R0 = R2;
	rts;
.L889:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L871;
.L890:
	R2 = R3;
	jump.s .L874;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	R3 = R0;
	[--sp] = ( r7:6 );

	P1 = R2;
	R6 = R3.L (Z);
	R2 = R1.L (Z);
	cc =R2<R6 (iu);
	R0 = R1;
	P2 = 16 (X);
	R1 = 1 (X);
	if !cc jump .L894;
	LSETUP (.L893, .L910) LC1 = P2;
.L893:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L908;
	R2 = R0 << 1;
	R0 = R2;
	R2 = R2.L (Z);
	R7 = R1 << 1;
	cc =R6<=R2 (iu);
	R1 = R7;
	if cc jump .L895;
.L910:
	nop;
	R7 = 0 (X);
.L896:
	cc =P1==0;
	if cc jump .L892 (bp);
	R7 = R3;
.L892:
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L895:
	R2 = R7.L (Z);
	cc =R2==0;
	if cc jump .L896;
.L908:
	R2 = R0.L (Z);
.L894:
	R7 = 0 (X);
	jump.s .L899;
.L909:
	R2 = R0.L (Z);
	R6 = R3.L (Z);
.L899:
	cc =R6<R2 (iu);
	if cc jump .L898 (bp);
	R3 = R3 - R0;
	R7 = R1 | R7;
.L898:
	R1 = R1.L (Z);
	R6 = R1 >> 1;
	cc =R6==0;
	R1 = R6;
	R0 = R2 >> 1;
	if !cc jump .L909 (bp);
	jump.s .L896;
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
	if cc jump .L913;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L912, .L927) LC1 = P2;
.L912:
	cc =R0<0;
	if cc jump .L913;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L914;
.L927:
	R2 += -1;
.L915:
	cc =P1==0;
	if cc jump .L911 (bp);
	R2 = R3;
.L911:
	R0 = R2;
	rts;
.L914:
	cc =R1==0;
	if cc jump .L921;
.L913:
	R2 = 0 (X);
.L918:
	cc =R3<R0 (iu);
	if cc jump .L917 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L917:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L918 (bp);
	jump.s .L915;
.L921:
	R2 = 0 (X);
	jump.s .L915;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L929 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L930:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L929:
	cc =R2==0;
	if cc jump .L932;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L930;
.L932:
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
	if cc jump .L934 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L935:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L934:
	cc =R2==0;
	if cc jump .L937;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L935;
.L937:
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
	if cc jump .L945;
	cc =R0<=R2;
	if !cc jump .L946;
	cc =R3<R1 (iu);
	if cc jump .L945;
	cc =R3<=R1 (iu);
	if !cc jump .L946;
	R0 = 1 (X);
	rts;
.L945:
	R0 = 0 (X);
	rts;
.L946:
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
	if cc jump .L951;
	cc =R0<=R2;
	if !cc jump .L950;
	cc =R3<R1 (iu);
	if cc jump .L951;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L951:
	R0 = -1 (X);
	rts;
.L950:
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
	if cc jump .L954 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L955:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L954:
	cc =R2==0;
	if cc jump .L957;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L955;
.L957:
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
	if cc jump .L966 (bp);
.L968:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L966:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L967;
.L969:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L968 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L969;
.L967:
	cc =R4<0;
	if !cc jump .L965 (bp);
	R0 = [SP+20];
	R1 = 1023 (X);
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L965:
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
	if cc jump .L973 (bp);
.L975:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L973:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L974;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L975 (bp);
.L979:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L975 (bp);
	jump.s .L979;
.L974:
	cc =R4<0;
	if !cc jump .L972 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L972:
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
	if cc jump .L984;
	cc =R0<=R2 (iu);
	if !cc jump .L985;
	cc =R3<R1 (iu);
	if cc jump .L984;
	cc =R3<=R1 (iu);
	if !cc jump .L985;
	R0 = 1 (X);
	rts;
.L984:
	R0 = 0 (X);
	rts;
.L985:
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
	if cc jump .L990;
	cc =R0<=R2 (iu);
	if !cc jump .L989;
	cc =R3<R1 (iu);
	if cc jump .L990;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L990:
	R0 = -1 (X);
	rts;
.L989:
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
