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
	LSETUP (.L19, .L31) LC1 = P1;
.L19:
	R2 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (Z);
	cc =R0==R1;
	if cc jump .L30;
.L31:
	nop;
.L18:
	R2 = 0 (X);
	jump.s .L17;
.L30:
	R2 += 1;
.L17:
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
	if cc jump .L39;
	nop;
	LSETUP (.L34, .L40) LC1 = P1;
.L34:
	R0 = P2;
	R1 = B [P2++] (Z);
	cc =R1==R2;
	if cc jump .L32;
.L40:
	nop;
.L39:
	R0 = 0 (X);
.L32:
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
	if cc jump .L49;
	R1 = R3;
	LSETUP (.L43, .L52) LC1 = P0;
.L43:
	P2 = R0;
	P1 = R1;
	R0 += 1;
	R1 += 1;
	R3 = B [P2] (Z);
	R2 = B [P1] (Z);
	cc =R2==R3;
	if !cc jump .L51;
.L52:
	nop;
.L49:
	R2 = 0 (X);
	R0 = R2;
	rts;
.L51:
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
	if cc jump .L54;
	call _memcpy;
	R3 = R0;
.L54:
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
	jump.s .L59;
.L61:
	P2 = R0;
	R0 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if cc jump .L58;
.L59:
	cc =R0==R3;
	if !cc jump .L61 (bp);
	P2 = 0 (X);
.L58:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	P2 = R2;
	R3 = R0;
	R0 = R1;
	cc =P2==0;
	if cc jump .L63;
	P1 = R3;
	LSETUP (.L64, .L69) LC1 = P2;
.L64:
.L69:
	B [P1++] = R0;
.L63:
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
	if cc jump .L73;
	P1 += 1;
	P2 += 1;
.L72:
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L72 (bp);
	R0 = R1;
	rts;
.L73:
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
	if !cc jump .L76 (bp);
	jump.s .L75;
.L78:
	P2 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L75;
.L76:
	R0 = R0.B (Z);
	cc =R0==R2;
	if !cc jump .L78 (bp);
.L75:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	R2 = R1;
	R1 = R0;
	jump.s .L84;
.L87:
	cc =R0==0;
	if cc jump .L86;
.L84:
	P2 = R1;
	R1 += 1;
	R0 = B [P2] (X);
	cc =R0==R2;
	if !cc jump .L87 (bp);
	R0 = P2;
	rts;
.L86:
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
	jump.s .L90;
.L91:
	nop;
	R1 = B [P1++] (X);
	R2 = B [P2++] (X);
	R0 = R1.B (X);
	R3 = R2.B (X);
	cc =R0==R3;
	if !cc jump .L89;
.L90:
	cc =R0==0;
	if !cc jump .L91 (bp);
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
	if cc jump .L95;
	R0 = P1;
	R0 += 1;
.L94:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L94 (bp);
	P2 -= P1;
	R0 = P2;
	rts;
.L95:
	P2 = P1;
	P2 -= P1;
	R0 = P2;
	rts;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	P2 = R2;
	P0 = R0;
	P1 = R1;
	cc =P2==0;
	if cc jump .L102;
	nop;
	nop;
	nop;
	R1 = B [P0] (Z);
	cc =R1==0;
	if cc jump .L99;
	R2 = P1;
	P0 += 1;
.L100:
	P1 = R2;
	R2 += 1;
	R0 = B [P1] (Z);
	cc =R0==0;
	if cc jump .L99;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L108;
	nop;
	nop;
	nop;
.L99:
	R0 = B [P1] (Z);
	R1 = R1 - R0;
	R0 = R1;
	rts;
.L108:
	cc =R0==R1;
	if !cc jump .L99;
	nop;
	nop;
	nop;
	R1 = B [P0++] (Z);
	cc =R1==0;
	if !cc jump .L100 (bp);
	P1 = R2;
	jump.s .L99;
.L102:
	R1 = 0 (X);
	R0 = R1;
	rts;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	cc =R2<=1;
	P2 = R0;
	P1 = R1;
	R0 = R2;
	if cc jump .L111;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L113, .L115) LC1 = P0;
.L113:
	P1 += 2;
	R0 = B [P2+1] (X);
	B [P1+-2] = R0;
	R0 = B [P2] (X);
	B [P1+-1] = R0;
.L115:
	P2 += 2;
.L111:
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
	if cc jump .L120;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
	rts;
.L120:
	R0 = 1 (X);
	rts;
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
	rts;
.L123:
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
	if cc jump .L130;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
	rts;
.L130:
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
	if cc jump .L136 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if !cc jump .L137 (bp);
.L136:
	R0 = 1 (X);
	rts;
.L137:
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
	if cc jump .L146;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L144;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L144;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L144;
	R1 = -16383 (X);
	R1 <<= 2;
	R2 = 3 (X);
	R1 = R0 + R1;
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L145;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L144:
	R0 = 1 (X);
	rts;
.L146:
	R1 = 127 (X);
	R0 += 1;
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L145:
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
	if cc jump .L149 (bp);
	R1 = -97 (X);
	BITSET (R0, 5);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
	rts;
.L149:
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
	if !cc jump .L154;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L155;
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L159 (bp);
	R0 = 0 (X);
	R1 = R1 -|- R1 ||
	[SP+16] = R0 ||
	nop;
	[SP+20] = R1;
.L151:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L159:
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
.L154:
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L151;
.L155:
	R1 = [SP+40];
	R2 = [SP+44];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L151;
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
	if !cc jump .L160;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L164;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L167 (bp);
	R0 = R7;
	R1 = R6;
	call ___subsf3;
	R7 = R0;
.L160:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L167:
	SP += 12;
	R7 = 0 (X);
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L164:
	R7 = R6;
	jump.s .L160;
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
	if !cc jump .L176;
	R7 = [SP+52];
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+48];
	R1 = [SP+52];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L175;
	R0 = [SP+44];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L170 (bp);
	cc =R0==0;
	if !cc jump .L176 (bp);
.L175:
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
.L176:
	R0 = [SP+48];
	R1 = [SP+52];
.L177:
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L170:
	[SP+12] = R7;
	R2 = [SP+48];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L176 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
	jump.s .L177;
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
	if !cc jump .L178;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L185;
	R0 = R6 >>> 31;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L180 (bp);
	cc =R0==0;
	if !cc jump .L178 (bp);
.L185:
	R7 = R6;
.L178:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L180:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L178 (bp);
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
	R0 = [SP+24];
	R1 = [SP+28];
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
	R0 = [SP+24];
	R1 = [SP+28];
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
	if !cc jump .L204;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L206;
	R0 = [SP+36];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L208 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L206 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L207:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L208:
	cc =R0==0;
	if !cc jump .L206 (bp);
.L204:
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
.L206:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L207;
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
	if !cc jump .L215;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L209;
	R0 = R7 >>> 31;
	R1 = R6 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L211 (bp);
	cc =R0==0;
	if !cc jump .L209 (bp);
.L215:
	R7 = R6;
.L209:
	SP += 12;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L211:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L209 (bp);
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
	if !cc jump .L225;
	R7 = [SP+44];
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L227;
	R0 = [SP+36];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if !cc jump .L229 (bp);
	[SP+12] = R7;
	R2 = [SP+40];
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L227 (bp);
	R0 = [SP+40];
	R1 = [SP+44];
.L228:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L229:
	cc =R0==0;
	if !cc jump .L227 (bp);
.L225:
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
.L227:
	R0 = [SP+32];
	R1 = [SP+36];
	jump.s .L228;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	cc =R0==0;
	P1.L = _s.0;
	if cc jump .L231;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L232:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R0 >>= 6;
	cc =R0==0;
	R1 = B [P2] (X);
	B [P1++] = R1;
	if !cc jump .L232 (bp);
.L231:
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
	if cc jump .L243;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L237;
	[P1+4] = P2;
.L237:
	rts;
.L243:
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
	if cc jump .L245;
	nop;
	nop;
	nop;
	R0 = [P2+4];
	[P1+4] = R0;
.L245:
	P2 = [P2+4];
	cc =P2==0;
	if cc jump .L244;
	[P2] = P1;
.L244:
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
	if cc jump .L254;
	R7 = R1;
	FP = 0 (X);
	jump.s .L256;
.L268:
	R0 = P5;
	FP += 1;
	R7 = R7 + R0;
	R0 = FP;
	cc =R6==R0;
	if cc jump .L254;
.L256:
	R1 = R7;
	R0 = R5;
	call (P4);
	cc =R0==0;
	R4 = R7;
	if !cc jump .L268 (bp);
.L253:
	SP += 12;
	FP = [SP++];
	R0 = R4;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L254:
	R0 = R6;
	R0 += 1;
	[P3] = R0;
	R0 = P5;
	R6 *= R0;
	cc =P5==0;
	R0 = [SP+52];
	R4 = R0 + R6;
	if cc jump .L253;
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
	if cc jump .L270;
	R6 = 0 (X);
	jump.s .L272;
.L280:
	R6 += 1;
	R0 = P4;
	cc =R4==R6;
	R7 = R7 + R0;
	if cc jump .L270;
.L272:
	R1 = R7;
	R0 = R5;
	call (P5);
	cc =R0==0;
	P3 = R7;
	if !cc jump .L280 (bp);
.L269:
	SP += 12;
	RETS = [SP++];
	R0 = P3;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L270:
	P3 = 0 (X);
	jump.s .L269;
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
	P2 = R0;
.L283:
	P1 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L283;
	R1 = R0;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L283 (bp);
	R2 = 43 (X);
	cc =R0==R2;
	if cc jump .L285;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L303 (bp);
	R0 = B [P1+1] (X);
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	P0 = P1;
	cc =R1<=R2 (iu);
	P0 += 1;
	if !cc jump .L294;
	R2 = 1 (X);
.L288:
	P0 += 1;
	P2 = 0 (X);
.L291:
	P1 = R0;
	R0 = B [P0++] (X);
	R1 = R0;
	P2 = P2 + (P2 << 2);
	R1 += -48;
	R3 = 9 (X);
	P2 = P2 + P2;
	P1 += -48;
	cc =R1<=R3 (iu);
	P2 -= P1;
	if cc jump .L291 (bp);
	cc =R2==0;
	if !cc jump .L282 (bp);
.L289:
	R3 = P2;
	R3 = -R3;
	P2 = R3;
.L282:
	R0 = P2;
	rts;
.L303:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L302;
	P0 = P1;
	R2 = 0 (X);
	jump.s .L288;
.L285:
	R0 = B [P1+1] (X);
	R1 = R0;
	R1 += -48;
	R3 = 9 (X);
	P0 = P1;
	cc =R1<=R3 (iu);
	P0 += 1;
	R2 = 0 (X);
	if cc jump .L288 (bp);
.L302:
	P2 = 0 (X);
	jump.s .L289;
.L294:
	P2 = 0 (X);
	jump.s .L282;
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
.L306:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L306;
	R0 = R7;
	R0 += -9;
	cc =R0<=4 (iu);
	if cc jump .L306 (bp);
	R1 = 43 (X);
	cc =R7==R1;
	if cc jump .L308;
	R2 = 45 (X);
	cc =R7==R2;
	if !cc jump .L326 (bp);
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R2 = 9 (X);
	P5 = P1;
	cc =R0<=R2 (iu);
	P5 += 1;
	if !cc jump .L317;
	P4 = 1 (X);
.L311:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L314:
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
	R1 = [SP+20];
	R5 >>>= 31;
	R3 = R0 - R7;
	R1 = R1 - R5;
	R0 = CC;
	R7 = B [P5++] (X);
	R1 = R1 - R0;
	R0 = R7;
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L314 (bp);
	cc =P4==0;
	if !cc jump .L305 (bp);
.L312:
	CC = R3;
	R0 = CC;
	R1 = -R1;
	R3 = -R3;
	R1 = R1 - R0;
.L305:
	SP += 24;
	RETS = [SP++];
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L326:
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L325;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L311;
.L308:
	R7 = B [P1+1] (X);
	R0 = R7;
	R0 += -48;
	R1 = 9 (X);
	P5 = P1;
	cc =R0<=R1 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L311 (bp);
.L325:
	R3 = 0 (X);
	R1 = 0 (X);
	jump.s .L312;
.L317:
	R3 = 0 (X);
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
	R5 = ROT R1 BY 0 ||
	R4 = [SP+56] ||
	nop;
	R7 = ROT R2 BY 0 ||
	P4 = [SP+60] ||
	nop;
.L337:
	cc =R7==0;
	if cc jump .L328;
.L338:
	P2 = R7;
	R0 = P5;
	P3 = P2 >> 1;
	R6 = P3;
	R6 *= R4;
	R6 = R5 + R6;
	R1 = R6;
	call (P4);
	cc =R0<0;
	if cc jump .L332;
	cc =R0<=0;
	if cc jump .L327;
	R7 += -1;
	R0 = P3;
	R7 = R7 - R0;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L338 (bp);
.L328:
	R6 = 0 (X);
.L327:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L332:
	R7 = P3;
	jump.s .L337;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	cc =R2==0;
	R4 = ROT R0 BY 0 ||
	R5 = [SP+60] ||
	nop;
	R6 = R1;
	R7 = R2;
	P4 = [SP+64];
	P5 = [SP+68];
	if !cc jump .L343 (bp);
	jump.s .L340;
.L351:
	cc =R0<=0;
	if cc jump .L342;
	R7 += -1;
	R0 = P3;
	R7 >>>= 1;
	R6 = R0 + R5;
	FP = R7;
.L342:
	R7 = FP;
	cc =R7==0;
	if cc jump .L340;
.L343:
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
	if !cc jump .L351 (bp);
.L339:
	SP += 12;
	FP = [SP++];
	R0 = P3;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L340:
	P3 = 0 (X);
	jump.s .L339;
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
	if !cc jump .L354 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L354:
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
	if !cc jump .L360 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L360:
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
	if !cc jump .L364 (bp);
	jump.s .L367;
.L366:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L367;
.L364:
	cc =R1==R0;
	if !cc jump .L366 (bp);
	R0 = P2;
	rts;
.L367:
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
	if !cc jump .L370;
	P1 += 4;
	P2 += 4;
	jump.s .L371;
.L378:
	cc =R1==0;
	if cc jump .L370;
	nop;
	nop;
	nop;
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L370;
.L371:
	cc =R0==0;
	if !cc jump .L378 (bp);
.L370:
	cc =R0<R1;
	if cc jump .L374 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L374:
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
.L380:
	nop;
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L380 (bp);
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
	if cc jump .L385;
	R0 = P1;
	R0 += 4;
.L384:
	P2 = R0;
	R0 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L384 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L385:
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
	P1 = R2;
	P2 = R0;
	[--sp] = ( p5:5 );

	R0 = R1;
	cc =P1==0;
	if cc jump .L396;
	LSETUP (.L389, .L397) LC1 = P1;
.L389:
	P0 = R0;
	P5 = P2;
	R0 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L390;
	cc =R1==0;
	if cc jump .L390;
.L397:
	nop;
.L396:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L390:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if !cc jump .L392 (bp);
	R0 = -1 (X);
	( p5:5 ) = [sp++];

	rts;
.L392:
	cc =R0<R1;
	R0 = CC;
	( p5:5 ) = [sp++];

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
	if cc jump .L405;
	nop;
	LSETUP (.L400, .L406) LC1 = P1;
.L400:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L398;
.L406:
	nop;
.L405:
	R0 = 0 (X);
.L398:
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
	if cc jump .L416;
	R1 = R3;
	LSETUP (.L409, .L420) LC1 = P0;
.L409:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L418;
.L420:
	nop;
.L416:
	R0 = 0 (X);
	rts;
.L418:
	cc =R3<R2;
	if cc jump .L419 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L419:
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
	if cc jump .L422;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L422:
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
	if !cc jump .L437 (bp);
	cc =R1==0;
	if cc jump .L427;
	P1 = P1 << 2;
	P2 = P2 + P1;
	P0 = P0 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L430, .L439) LC1 = P1;
.L430:
	R1 = [P2--];
.L439:
	[P0--] = R1;
.L427:
	( p5:5 ) = [sp++];

	rts;
.L437:
	cc =R1==0;
	P1 = R1;
	if cc jump .L427;
	nop;
	nop;
	LSETUP (.L429, .L438) LC1 = P1;
.L429:
	R1 = [P2++];
.L438:
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
	if cc jump .L441;
	P1 = R3;
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

	P2 = R1;
	P5 = R0;
	P1 = R2;
	cc =P5<P2 (iu);
	if !cc jump .L449 (bp);
	cc =P1==0;
	P0 = P5 + P1;
	if cc jump .L448;
	P4 = P0;
	P1 += -1;
	P2 = P2 + P1;
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
	cc = !BITTST (R0,0);
	R1 += 1;
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
	R1 = -1 (X);
	SP += -12;
	R1.H = 65407;
	R7 = R0;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L491 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R6 = 1 (X);
	if cc jump .L492;
.L490:
	SP += 12;
	R0 = R6;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L491:
	SP += 12;
	RETS = [SP++];
	R0 = 1 (X);
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
	R0 = -1 (X);
	[SP+36] = R1;
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L496 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L497;
.L495:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L496:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
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
	R0 = -1 (X);
	[SP+36] = R1;
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L501 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L502;
.L500:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L501:
	SP += 24;
	RETS = [SP++];
	R0 = 1 (X);
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
	if !cc jump .L505;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L505 (bp);
	cc =R7<0;
	if cc jump .L519;
	R6 = 1 (X);
	R6 <<= 30;
.L507:
	cc = !BITTST (R7,0);
	if cc jump .L508 (bp);
.L509:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L508:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L505;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L509 (bp);
.L520:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L509 (bp);
	jump.s .L520;
.L505:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L519:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L507;
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
	if !cc jump .L522;
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
	if cc jump .L522 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L536;
	R7 = 1 (X);
	R7 <<= 30;
.L524:
	cc = !BITTST (R5,0);
	if cc jump .L525 (bp);
.L526:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L525:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L522;
.L527:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L526 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L527;
.L522:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L536:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L524;
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
	if !cc jump .L538;
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
	if cc jump .L538 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L552;
	R7 = 1 (X);
	R7 <<= 30;
.L540:
	cc = !BITTST (R5,0);
	if cc jump .L541 (bp);
.L542:
	R0 = [SP+48];
	R1 = [SP+52];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
.L541:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L538;
.L543:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L542 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L543;
.L538:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 32;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L552:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L540;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	P2 = R2;
	R3 = R0;
	P0 = R1;
	cc =P2==0;
	if cc jump .L554;
	nop;
	P1 = R0;
	LSETUP (.L555, .L560) LC1 = P2;
.L555:
	R0 = B [P1++] (X);
	R1 = B [P0++] (X);
	R0 = R0 ^ R1;
.L560:
	B [P1+-1] = R0;
.L554:
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
	if cc jump .L568;
	R0 = P5;
	R0 += 1;
.L563:
	P2 = R0;
	R0 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L563 (bp);
.L562:
	cc =P1==0;
	if cc jump .L564;
	nop;
	nop;
	LSETUP (.L565, .L574) LC1 = P1;
.L565:
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L567;
.L574:
	nop;
.L564:
	R0 = 0 (X);
	B [P2] = R0;
.L567:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L568:
	P2 = P5;
	jump.s .L562;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
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
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
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
	cc =R2==R0;
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

	P4 = R1;
	R3 = B [P4] (X);
	cc =R3==0;
	if cc jump .L606;
	R1 += 1;
.L598:
	P2 = R1;
	R1 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	if !cc jump .L598 (bp);
	P5 = P2;
	cc =P2==P4;
	P5 -= P4;
	if cc jump .L606;
	P5 += -1;
	P5 = P4 + P5;
.L599:
	P2 = R0;
	jump.s .L604;
.L617:
	cc =R2==0;
	if cc jump .L616;
	nop;
.L604:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (X);
	R2 = R0.B (X);
	cc =R2==R3;
	if !cc jump .L617 (bp);
	P0 = P4;
	R0 = R0.B (Z);
	jump.s .L600;
.L618:
	cc =P0==P5;
	if cc jump .L607;
	cc =R1==R0;
	if !cc jump .L601;
	nop;
	nop;
	P0 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if cc jump .L601;
	nop;
	nop;
	nop;
.L600:
	R1 = B [P0] (Z);
	cc =R1==0;
	if !cc jump .L618 (bp);
.L601:
	R1 = B [P0] (Z);
	cc =R1==R0;
	if cc jump .L596;
	R0 = P1;
	R0 += 1;
	jump.s .L599;
.L616:
	P1 = 0 (X);
.L596:
	R0 = P1;
	( p5:4 ) = [sp++];

	rts;
.L607:
	P0 = P5;
	jump.s .L601;
.L606:
	P1 = R0;
	( p5:4 ) = [sp++];

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
	if cc jump .L629;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L623;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L622;
.L623:
	R0 = [SP+32];
	R1 = [SP+36];
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L629:
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L623 (bp);
.L622:
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
	if cc jump .L636;
	cc =R1<R0 (iu);
	if cc jump .L638;
	P2 = R0;
	P4 -= P2;
	P4 = P5 + P4;
	cc =P5<=P4 (iu);
	if !cc jump .L638;
	R1 = P5;
	cc =R0==1;
	R2 = R1 + R0;
	R7 = B [P3++] (X);
	R6 = CC;
	jump.s .L635;
.L632:
	cc =P4<P5 (iu);
	R2 += 1;
	if cc jump .L638;
	nop;
.L635:
	R3 = P5;
	P5 += 1;
	R0 = B [P5+-1] (X);
	R0 = R0.B (X);
	cc =R0==R7;
	if !cc jump .L632 (bp);
	CC = R6;
	if cc jump .L630;
	P2 = R2;
	P0 = P5;
	P1 = P3;
	P2 -= P5;
	LSETUP (.L633, .L643) LC1 = P2;
.L633:
	R1 = B [P0++] (Z);
	R0 = B [P1++] (Z);
	cc =R1==R0;
	if !cc jump .L632;
.L643:
	nop;
.L630:
	R0 = R3;
	( r7:6, p5:3 ) = [sp++];

	rts;
.L638:
	R3 = 0 (X);
	R0 = R3;
	( r7:6, p5:3 ) = [sp++];

	rts;
.L636:
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
	if cc jump .L645;
	R0 = R3;
	call _memmove;
	R3 = R0;
.L645:
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
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -32;
	[SP+60] = R0;
	[SP+64] = R1;
	R7 = R7 -|- R7 ||
	R0 = [SP+60] ||
	nop;
	P5 = R2;
	[SP+12] = R7;
	R2 = 0 (X);
	R1 = [SP+64];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L671;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+60] ||
	nop;
	R1 = [SP+64];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L672;
	P4 = 0 (X);
.L652:
	R5 = 511 (X);
	R6 = 1023 (X);
	R7 = 0 (X);
	R5 <<= 21;
	R6 <<= 20;
.L658:
	R0 = [SP+60];
	R2 = R2 -|- R2 ||
	[SP+12] = R5 ||
	nop;
	R1 = [SP+64];
	call ___muldf3;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[SP+60] = R0 ||
	nop;
	[SP+64] = R1;
	call ___gedf2;
	cc =R0<0;
	R7 += 1;
	if !cc jump .L658 (bp);
.L659:
	cc =P4==0;
	[P5] = R7;
	if cc jump .L665;
.L654:
	R1 = [SP+60];
	[SP+24] = R1;
	R0 = [SP+24];
	R2 = [SP+64];
	BITTGL (R2, 31);
	[SP+28] = R2;
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L672:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+60] ||
	nop;
	R1 = [SP+64];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L655 (bp);
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [SP+60] ||
	nop;
	R1 = [SP+64];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L664;
.L655:
	R0 = 0 (X);
	[P5] = R0;
	R0 = [SP+60];
	R1 = [SP+64];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L671:
	R0 = -1025 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+60] ||
	nop;
	R1 = [SP+64];
	call ___ledf2;
	R5 = [SP+64];
	cc =R0<=0;
	R4 = [SP+60];
	BITTGL (R5, 31);
	if !cc jump .L673;
	[SP+60] = R4;
	[SP+64] = R5;
	P4 = 1 (X);
	jump.s .L652;
.L665:
	R0 = [SP+60];
	R1 = [SP+64];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L673:
	R0 = -513 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [SP+60] ||
	nop;
	R1 = [SP+64];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L662 (bp);
	[P5] = R7;
	[SP+60] = R4;
	[SP+64] = R5;
	jump.s .L654;
.L662:
	P4 = 1 (X);
.L653:
	R6 = 511 (X);
	[SP+60] = R4;
	[SP+64] = R5;
	R7 = 0 (X);
	R6 <<= 21;
.L660:
	R2 = [SP+60];
	R0 = [SP+64];
	[SP+12] = R0;
	R1 = [SP+64];
	R0 = [SP+60];
	call ___adddf3;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[SP+60] = R0 ||
	nop;
	[SP+64] = R1;
	call ___ltdf2;
	cc =R0<0;
	R7 += -1;
	if cc jump .L660 (bp);
	jump.s .L659;
.L664:
	R4 = [SP+60];
	R5 = [SP+64];
	P4 = 0 (X);
	jump.s .L653;
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
	if cc jump .L674;
	P4 = 1 (X);
.L677:
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
	if !cc jump .L677 (bp);
.L674:
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
	if !cc jump .L682;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L681, .L696) LC1 = P2;
.L681:
	cc =R0<0;
	if cc jump .L682;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L695;
.L696:
	R2 += -1;
.L684:
	cc =P1==0;
	if cc jump .L680 (bp);
	R2 = R3;
.L680:
	R0 = R2;
	rts;
.L695:
	cc =R1==0;
	R2 = 0 (X);
	if cc jump .L684;
.L682:
	R2 = 0 (X);
.L687:
	cc =R3<R0 (iu);
	if cc jump .L686 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L686:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L687 (bp);
	jump.s .L684;
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
	if cc jump .L699;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	rts;
.L699:
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
	if cc jump .L706;
.L704:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	SP += 12;
	RETS = [SP++];
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L706:
	cc =R0==R1;
	if !cc jump .L704 (bp);
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
	if cc jump .L707;
	R7 = 1 (X);
.L709:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L709 (bp);
.L707:
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
	if cc jump .L726 (bp);
.L713:
	cc =R1==0;
	if cc jump .L716;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P5 = R7;
	P0 = P1;
	P2 += 1;
	LSETUP (.L717, .L729) LC1 = P2;
.L717:
	P5 += 8;
	R2 = [P5+-8];
	R3 = [P5+-4];
	[P0+4] = R3;
	[P0] = R2;
.L729:
	P0 += 8;
.L716:
	cc =R0<=R6 (iu);
	if cc jump .L712;
	P2 = R6;
	R7 = R7 + R6;
	R0 = R0 - R6;
	P0 = R7;
	P1 = P1 + P2;
	P2 = R0;
	LSETUP (.L718, .L728) LC1 = P2;
.L718:
	R0 = B [P0++] (X);
.L728:
	B [P1++] = R0;
.L712:
	( r7:6, p5:5 ) = [sp++];

	rts;
.L726:
	cc =R0==0;
	P2 += -1;
	if cc jump .L712;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L719, .L727) LC1 = P2;
.L719:
	R0 = B [P0--] (X);
.L727:
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
	if cc jump .L731 (bp);
	R3 = P1;
	R2 = R3 + R2;
	R3 = P2;
	cc =R3<=R2 (iu);
	if cc jump .L745 (bp);
.L731:
	cc =R0==0;
	if cc jump .L734;
	P3 = R0;
	P0 = P4;
	P1 = P5;
	P2 = P3 + P3;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L735, .L747) LC1 = P2;
.L735:
	R0 = W [P0++] (X);
.L747:
	W [P1++] = R0;
.L734:
	cc = !BITTST (R1,0);
	if cc jump .L730 (bp);
	P2 = R1;
	P2 += -1;
	P4 = P4 + P2;
	R0 = B [P4] (X);
	P2 = P5 + P2;
	B [P2] = R0;
.L730:
	( p5:3 ) = [sp++];

	rts;
.L745:
	P0 = R1;
	cc =R1==0;
	P0 += -1;
	if cc jump .L730;
	P4 = P1 + P0;
	P5 = P2 + P0;
	P0 += 1;
	LSETUP (.L736, .L746) LC1 = P0;
.L736:
	R0 = B [P4--] (X);
.L746:
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
	if cc jump .L749 (bp);
	R7 = R3 + R0;
	cc =R6<=R7 (iu);
	if cc jump .L762 (bp);
.L749:
	cc =R1==0;
	if cc jump .L752;
	P4 = R1;
	P5 = R3;
	P0 = P1;
	P2 = P4 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L753, .L765) LC1 = P2;
.L753:
	R1 = [P5++];
.L765:
	[P0++] = R1;
.L752:
	cc =R0<=R2 (iu);
	if cc jump .L748;
	P5 = R2;
	R3 = R3 + R2;
	R0 = R0 - R2;
	P0 = R3;
	P2 = R0;
	P1 = P1 + P5;
	LSETUP (.L754, .L764) LC1 = P2;
.L754:
	R0 = B [P0++] (X);
.L764:
	B [P1++] = R0;
.L748:
	( r7:6, p5:4 ) = [sp++];

	rts;
.L762:
	cc =R0==0;
	P2 += -1;
	if cc jump .L748;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L755, .L763) LC1 = P2;
.L755:
	R0 = B [P0--] (X);
.L763:
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
	R3 = R0;
	[--sp] = ( r7:7 );

	R0 = 0 (X);
	R3 = R3.L (Z);
	R7 = 15 (X);
	P2 = 16 (X);
	LSETUP (.L774, .L776) LC1 = P2;
.L774:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L772;
.L776:
	R0 += 1;
.L772:
	( r7:7 ) = [sp++];

	rts;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	R2 = R0;
	R2 = R2.L (Z);
	R0 = 0 (X);
	P2 = 16 (X);
	LSETUP (.L779, .L781) LC1 = P2;
.L779:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L777;
.L781:
	R0 += 1;
.L777:
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
	if !cc jump .L788;
	R0 = R7;
	call ___fixsfsi;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L788:
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

	R2 = 0 (X);
	R1 = 0 (X);
	R3 = R0.L (Z);
	R7 = 1 (X);
	P2 = 16 (X);
	LSETUP (.L790, .L792) LC1 = P2;
.L790:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L792:
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
	LSETUP (.L794, .L796) LC1 = P2;
.L794:
	R0 = R3;
	R0 >>>= R1;
	R0 = R0 & R7;
	R2 = R2 + R0;
.L796:
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
	if cc jump .L797;
	R7 = 1 (X);
.L799:
	R0 = R2 & R7;
	R0 = -R0;
	R2 >>= 1;
	R0 = R0 & R1;
	cc =R2==0;
	R3 = R3 + R0;
	R1 <<= 1;
	if !cc jump .L799 (bp);
.L797:
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
	if cc jump .L802;
	cc =R1==0;
	if cc jump .L802;
	R7 = 1 (X);
.L804:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L804 (bp);
.L802:
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
	if cc jump .L810;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L809, .L824) LC1 = P2;
.L809:
	cc =R0<0;
	if cc jump .L810;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L811;
.L824:
	R2 += -1;
.L812:
	cc =P1==0;
	if cc jump .L808 (bp);
	R2 = R3;
.L808:
	R0 = R2;
	rts;
.L811:
	cc =R1==0;
	if cc jump .L818;
.L810:
	R2 = 0 (X);
.L815:
	cc =R3<R0 (iu);
	if cc jump .L814 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L814:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L815 (bp);
	jump.s .L812;
.L818:
	R2 = 0 (X);
	jump.s .L812;
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
	if cc jump .L828;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L829;
.L827:
	SP += 12;
	R0 = R5;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L829:
	R5 = 0 (X);
	jump.s .L827;
.L828:
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
	if cc jump .L833;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [SP+40] ||
	nop;
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L834;
.L832:
	SP += 24;
	R0 = R7;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L834:
	R7 = 0 (X);
	jump.s .L832;
.L833:
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
	if cc jump .L851;
	cc =R1==0;
	if cc jump .L843;
	P1 = 0 (X);
.L839:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L842;
.L852:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L841;
.L842:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L852 (bp);
.L841:
	cc =P1==0;
	if cc jump .L837;
	R3 = -R3;
.L837:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L851:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L839;
.L843:
	R3 = 0 (X);
	jump.s .L837;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	R3 = R0;
	cc =R3<0;
	[--sp] = ( r7:7 );

	R0 = R1;
	if cc jump .L873;
	R7 = 0 (X);
.L854:
	cc =R0<0;
	if !cc jump .L855 (bp);
	R0 = -R0;
	BITTGL (R7, 0);
.L855:
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L857;
	LSETUP (.L856, .L874) LC1 = P2;
.L856:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L859;
.L874:
	nop;
.L859:
	cc =R1==0;
	R3 = 0 (X);
	if cc jump .L858;
.L857:
	R3 = 0 (X);
.L862:
	cc =R0<=R2 (iu);
	if !cc jump .L861 (bp);
	R2 = R2 - R0;
	R3 = R3 | R1;
.L861:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L862 (bp);
.L858:
	cc =R7==0;
	if cc jump .L853 (bp);
	R3 = -R3;
.L853:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L873:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L854;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	R0 = R1;
	if cc jump .L895;
	P1 = 0 (X);
.L876:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	R1 = 1 (X);
	P2 = 32 (X);
	if cc jump .L883;
	LSETUP (.L877, .L897) LC1 = P2;
.L877:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L894;
.L897:
	nop;
	cc =R1==0;
	if cc jump .L896;
.L883:
	cc =R2<R0 (iu);
	if cc jump .L882 (bp);
	R2 = R2 - R0;
.L882:
	R1 >>= 1;
	R0 >>= 1;
.L894:
	cc =R1==0;
	if !cc jump .L883 (bp);
.L896:
	cc =P1==0;
	if cc jump .L875 (bp);
	R2 = -R2;
.L875:
	R0 = R2;
	rts;
.L895:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L876;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	R3 = R0;
	[--sp] = ( r7:5 );

	P1 = R2;
	R6 = R3.L (Z);
	R2 = R1.L (Z);
	cc =R2<R6 (iu);
	R0 = R1;
	P2 = 16 (X);
	R1 = 1 (X);
	if !cc jump .L900;
	LSETUP (.L899, .L917) LC1 = P2;
.L899:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L914;
	R2 = R0 << 1;
	R0 = R2;
	R2 = R2.L (Z);
	R7 = R1 << 1;
	cc =R6<=R2 (iu);
	R1 = R7;
	if cc jump .L915;
.L917:
	nop;
	R7 = 0 (X);
.L902:
	cc =P1==0;
	if cc jump .L898 (bp);
	R7 = R3;
.L898:
	R0 = R7;
	( r7:5 ) = [sp++];

	rts;
.L915:
	R5 = R7.L (Z);
	cc =R5==0;
	if cc jump .L902;
.L900:
	R7 = 0 (X);
	jump.s .L905;
.L916:
	R2 = R0.L (Z);
	R6 = R3.L (Z);
.L905:
	cc =R6<R2 (iu);
	if cc jump .L904 (bp);
	R3 = R3 - R0;
	R7 = R1 | R7;
.L904:
	R1 = R1.L (Z);
	R6 = R1 >> 1;
	cc =R6==0;
	R1 = R6;
	R0 = R2 >> 1;
	if !cc jump .L916 (bp);
	jump.s .L902;
.L914:
	R2 = R0.L (Z);
	jump.s .L900;
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
	if cc jump .L920;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L919, .L934) LC1 = P2;
.L919:
	cc =R0<0;
	if cc jump .L920;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L921;
.L934:
	R2 += -1;
.L922:
	cc =P1==0;
	if cc jump .L918 (bp);
	R2 = R3;
.L918:
	R0 = R2;
	rts;
.L921:
	cc =R1==0;
	if cc jump .L928;
.L920:
	R2 = 0 (X);
.L925:
	cc =R3<R0 (iu);
	if cc jump .L924 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L924:
	R1 >>= 1;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L925 (bp);
	jump.s .L922;
.L928:
	R2 = 0 (X);
	jump.s .L922;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	R3 = R1;
	[--sp] = ( r7:7 );

	R1 = R2;
	if cc jump .L936 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L937:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L936:
	cc =R2==0;
	if cc jump .L939;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L937;
.L939:
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
	if cc jump .L941 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L942:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L941:
	cc =R2==0;
	if cc jump .L944;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L942;
.L944:
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
	if cc jump .L952;
	cc =R0<=R2;
	if !cc jump .L953;
	cc =R3<R1 (iu);
	if cc jump .L952;
	cc =R3<=R1 (iu);
	if !cc jump .L953;
	R0 = 1 (X);
	rts;
.L952:
	R0 = 0 (X);
	rts;
.L953:
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
	if cc jump .L958;
	cc =R0<=R2;
	if !cc jump .L959;
	cc =R3<R1 (iu);
	if cc jump .L958;
	cc =R3<=R1 (iu);
	if !cc jump .L959;
	R0 = 1 (X);
	R0 += -1;
	rts;
.L958:
	R0 = 0 (X);
	R0 += -1;
	rts;
.L959:
	R0 = 2 (X);
	R0 += -1;
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
	if cc jump .L962 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L963:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L962:
	cc =R2==0;
	if cc jump .L965;
	R7 = 32 (X);
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L963;
.L965:
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
	if cc jump .L974 (bp);
.L976:
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L974:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L975;
.L977:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L976 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L977;
.L975:
	cc =R4<0;
	if !cc jump .L973 (bp);
	R0 = [SP+20];
	R1 = 1023 (X);
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L973:
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
	if cc jump .L981 (bp);
.L983:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L981:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L982;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L983 (bp);
.L987:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R1 = R6;
	R0 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L983 (bp);
	jump.s .L987;
.L982:
	cc =R4<0;
	if !cc jump .L980 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L980:
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
	if cc jump .L992;
	cc =R0<=R2 (iu);
	if !cc jump .L993;
	cc =R3<R1 (iu);
	if cc jump .L992;
	cc =R3<=R1 (iu);
	if !cc jump .L993;
	R0 = 1 (X);
	rts;
.L992:
	R0 = 0 (X);
	rts;
.L993:
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
	if cc jump .L998;
	cc =R0<=R2 (iu);
	if !cc jump .L999;
	cc =R3<R1 (iu);
	if cc jump .L998;
	cc =R3<=R1 (iu);
	if !cc jump .L999;
	R0 = 1 (X);
	R0 += -1;
	rts;
.L998:
	R0 = 0 (X);
	R0 += -1;
	rts;
.L999:
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
