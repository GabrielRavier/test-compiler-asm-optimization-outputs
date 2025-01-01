.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	[--sp] = ( p5:5 );

	R3 = R0;
	P1 = R1;
	P2 = R2;
	cc =R0<=R1 (iu);
	if cc jump .L2 (bp);
	P1 = P1 + P2;
	P5 = R3;
	P0 = P5 + P2;
	cc =P2==0;
	if cc jump .L3;
	P0 += -1;
	P1 += -1;
	LSETUP (.L4, .L9) LC1 = P2;
.L4:
	R0 = B [P1--] (X);
.L9:
	B [P0--] = R0;
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
	P0 = R3;
	LSETUP (.L5, .L8) LC1 = P2;
.L5:
	R0 = B [P1++] (X);
.L8:
	B [P0++] = R0;
	jump.s .L3;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	P2 = R0;
	P0 = R1;
	R1 = [SP+12];
	R3 = R2.B (Z);
	cc =R1==0;
	if cc jump .L15;
	P1 = R1;
	LSETUP (.L12, .L18) LC1 = P1;
.L12:
	R2 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (Z);
	cc =R3==R0;
	if cc jump .L11;
	R1 += -1;
.L18:
	R2 = P2;
.L11:
	cc =R1==0;
	if cc jump .L16;
	R2 += 1;
.L14:
	R0 = R2;
	rts;
.L15:
	R2 = R0;
	jump.s .L11;
.L16:
	R2 = 0 (X);
	jump.s .L14;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	P2 = R0;
	R0 = R2;
	R3 = R1.B (Z);
	cc =R2==0;
	if cc jump .L24;
	P1 = R2;
	LSETUP (.L21, .L28) LC1 = P1;
.L21:
	R1 = P2;
	R2 = B [P2++] (Z);
	cc =R3==R2;
	if cc jump .L20;
	R1 = P2;
.L28:
	R0 += -1;
.L20:
	cc =R0==0;
	if cc jump .L27;
.L23:
	R0 = R1;
	rts;
.L24:
	R1 = P2;
	jump.s .L20;
.L27:
	R1 = 0 (X);
	jump.s .L23;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	[--sp] = ( p5:4 );

	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =R2==0;
	if cc jump .L34;
	P0 = R2;
	LSETUP (.L31, .L37) LC1 = P0;
.L31:
	P5 = P1;
	P4 = P2;
	R2 = B [P2++] (Z);
	R1 = B [P1++] (Z);
	cc =R2==R1;
	if !cc jump .L30;
	R0 += -1;
	P4 = P2;
.L37:
	P5 = P1;
.L30:
	cc =R0==0;
	if cc jump .L35 (bp);
	R0 = B [P4] (Z);
	R1 = B [P5] (Z);
	R0 = R0 - R1;
.L33:
	( p5:4 ) = [sp++];

	rts;
.L34:
	P5 = R1;
	P4 = P2;
	jump.s .L30;
.L35:
	R0 = 0 (X);
	jump.s .L33;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	R3 = R0;
	P1 = R1;
	P2 = R2;
	cc =P2==0;
	if cc jump .L39;
	nop;
	P0 = R0;
	LSETUP (.L40, .L42) LC1 = P2;
.L40:
	R0 = B [P1++] (X);
.L42:
	B [P0++] = R0;
.L39:
	R0 = R3;
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	P1 = R0;
	R0 = R2;
	R2 = R1.B (Z);
	P2 = R0;
	P2 += -1;
	P2 = P1 + P2;
	R3 = P1;
	R3 += -1;
.L44:
	R0 += -1;
	R1 = P2;
	cc =R1==R3;
	if cc jump .L48;
	nop;
	nop;
	nop;
	R1 = B [P2--] (Z);
	cc =R2==R1;
	if !cc jump .L44 (bp);
	P2 = R0;
	P1 = P1 + P2;
	jump.s .L45;
.L48:
	P1 = 0 (X);
.L45:
	R0 = P1;
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
	if cc jump .L50;
	P1 = R3;
	LSETUP (.L51, .L53) LC1 = P2;
.L51:
.L53:
	B [P1++] = R0;
.L50:
	R0 = R3;
	rts;
	.size	_memset, .-_memset
	.align 4
.global _stpcpy;
.type _stpcpy, STT_FUNC;
_stpcpy:
	P0 = R0;
	P1 = R1;
	R0 = B [P1] (X);
	B [P0] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L55;
	P1 += 1;
	P2 = P0;
	P2 += 1;
.L56:
	P0 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L56 (bp);
.L55:
	R0 = P0;
	rts;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	P1 = R0;
	R1 = R1.B (Z);
	R0 = B [P1] (X);
	cc =R0==0;
	if cc jump .L59;
	nop;
	P2 = P1;
.L60:
	P1 = P2;
	R0 = B [P2++] (Z);
	cc =R1==R0;
	if cc jump .L59;
	nop;
	nop;
	P1 = P2;
	R0 = B [P2] (X);
	cc =R0==0;
	if !cc jump .L60 (bp);
.L59:
	R0 = P1;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
.L64:
	R2 = P2;
	R0 = B [P2++] (X);
	cc =R1==R0;
	if cc jump .L63;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L64 (bp);
	R2 = 0 (X);
.L63:
	R0 = R2;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	P0 = R0;
	P1 = R1;
	R1 = B [P0] (X);
	R0 = B [P1] (X);
	cc =R1==R0;
	if !cc jump .L68;
	nop;
	P2 = P0;
.L69:
	P0 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L68;
	nop;
	P0 = P2;
	P1 += 1;
	R1 = B [P2] (X);
	R0 = B [P1] (X);
	cc =R1==R0;
	if cc jump .L69 (bp);
.L68:
	R0 = B [P0] (Z);
	R1 = B [P1] (Z);
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
	if cc jump .L74;
	P2 = P1;
	P2 += 1;
.L73:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L73 (bp);
.L72:
	R0 = P1;
	R1 = R1 - R0;
	R0 = R1;
	rts;
.L74:
	R1 = P1;
	jump.s .L72;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	[--sp] = ( p5:4 );

	P1 = R0;
	P2 = R1;
	P0 = R2;
	cc =P0==0;
	if cc jump .L81;
	nop;
	nop;
	nop;
	R0 = B [P1] (Z);
	cc =R0==0;
	if cc jump .L82;
	nop;
.L79:
	P5 = P2;
	P4 = P1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if cc jump .L78;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L83;
	jump.s .L78;
.L83:
	R1 = B [P1++] (Z);
	R0 = B [P2+-1] (Z);
	cc =R1==R0;
	if !cc jump .L78;
	nop;
	P4 = P1;
	P5 = P2;
	R0 = B [P1] (Z);
	cc =R0==0;
	if !cc jump .L79 (bp);
.L78:
	R0 = B [P4] (Z);
	R1 = B [P5] (Z);
	R0 = R0 - R1;
.L77:
	( p5:4 ) = [sp++];

	rts;
.L82:
	P5 = R1;
	P4 = P1;
	jump.s .L78;
.L81:
	R0 = 0 (X);
	jump.s .L77;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	P2 = R0;
	P1 = R1;
	P0 = R2;
	cc =P0<=1;
	if cc jump .L84;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L86, .L88) LC1 = P0;
.L86:
	R0 = B [P2+1] (X);
	B [P1] = R0;
	R0 = B [P2] (X);
	B [P1+1] = R0;
	P1 += 2;
.L88:
	P2 += 2;
.L84:
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
	if cc jump .L93;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
.L92:
	rts;
.L93:
	R0 = 1 (X);
	jump.s .L92;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L96 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
.L95:
	rts;
.L96:
	R0 = 1 (X);
	jump.s .L95;
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
	if cc jump .L103;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
.L102:
	rts;
.L103:
	R0 = 1 (X);
	jump.s .L102;
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
	if cc jump .L107 (bp);
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L108 (bp);
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L109;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	R0 = CC;
	jump.s .L106;
.L107:
	R0 = 1 (X);
.L106:
	rts;
.L108:
	R0 = 1 (X);
	jump.s .L106;
.L109:
	R0 = 1 (X);
	jump.s .L106;
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
	if cc jump .L118;
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L114;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L115;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L116;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L117;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L113;
.L118:
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
.L113:
	rts;
.L114:
	R0 = 1 (X);
	jump.s .L113;
.L115:
	R0 = 1 (X);
	jump.s .L113;
.L116:
	R0 = 1 (X);
	jump.s .L113;
.L117:
	R0 = 0 (X);
	jump.s .L113;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L121 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	R0 = CC;
.L120:
	rts;
.L121:
	R0 = 1 (X);
	jump.s .L120;
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
	if !cc jump .L126;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L127;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L130 (bp);
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L124:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L126:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L124;
.L127:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+16] = R1;
	[SP+20] = R2;
	jump.s .L124;
.L130:
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L124;
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
	if !cc jump .L132;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L135;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L138 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
.L132:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L135:
	R7 = R6;
	jump.s .L132;
.L138:
	R7 = 0 (X);
	jump.s .L132;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
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
	if !cc jump .L145;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L146;
	R1 = [SP+32];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L141 (bp);
	R0 = [SP+32];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L147 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L140;
.L141:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L143 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L144:
	[SP+16] = R0;
	[SP+20] = R1;
.L140:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L143:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L144;
.L145:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L140;
.L146:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L140;
.L147:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L140;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	R6 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L154;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L149;
	R1 = R7 >>> 31;
	R1 <<= 31;
	R0 = R6 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L150 (bp);
	R0 = R7 >>> 31;
	cc = !BITTST (R0,0);
	if cc jump .L149 (bp);
	R7 = R6;
.L149:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L150:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L149 (bp);
	R7 = R6;
	jump.s .L149;
.L154:
	R7 = R6;
	jump.s .L149;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
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
	if !cc jump .L163;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L164;
	R1 = [SP+32];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L159 (bp);
	R0 = [SP+32];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L165 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L158;
.L159:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L161 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L162:
	[SP+16] = R0;
	[SP+20] = R1;
.L158:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
.L161:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L162;
.L163:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L158;
.L164:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L158;
.L165:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L158;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
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
	if !cc jump .L172;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L173;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+48];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L168 (bp);
	R0 = [SP+40];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L174 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L167;
.L168:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L170 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L171:
	[SP+24] = R0;
	[SP+28] = R1;
.L167:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L170:
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L171;
.L172:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L167;
.L173:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L167;
.L174:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L167;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -12;
	R6 = R0;
	R7 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L176;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L182;
	R1 = R6 >>> 31;
	R1 <<= 31;
	R0 = R7 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L177 (bp);
	R0 = R6 >>> 31;
	cc = !BITTST (R0,0);
	if cc jump .L176 (bp);
	R7 = R6;
.L176:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L177:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L176 (bp);
	R7 = R6;
	jump.s .L176;
.L182:
	R7 = R6;
	jump.s .L176;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
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
	if !cc jump .L190;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L191;
	R1 = [SP+40];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [SP+48];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L186 (bp);
	R0 = [SP+40];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L192 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L185;
.L186:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L188 (bp);
	R0 = [SP+36];
	R1 = [SP+40];
.L189:
	[SP+24] = R0;
	[SP+28] = R1;
.L185:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L188:
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L189;
.L190:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L185;
.L191:
	R0 = [SP+36];
	R1 = [SP+40];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L185;
.L192:
	R0 = [SP+44];
	R1 = [SP+48];
	[SP+24] = R0;
	[SP+28] = R1;
	jump.s .L185;
	.size	_fminl, .-_fminl
	.section	.rodata
	.align 4
	.type	_digits, @object
	.size	_digits, 65
_digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.text;
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	cc =R0==0;
	if cc jump .L196;
	P1.H = _s.0;
	P1.L = _s.0;
	R3 = 63 (X);
	R2.H = _digits;
	R2.L = _digits;
.L195:
	R1 = R0 & R3;
	R1 = R2 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
	cc =R0==0;
	if !cc jump .L195 (bp);
.L194:
	R0 = 0 (X);
	B [P1] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	rts;
.L196:
	P1.H = _s.0;
	P1.L = _s.0;
	jump.s .L194;
	.size	_l64a, .-_l64a
	.local	_seed
	.comm	_seed,8,4
	.align 4
.global _srand;
.type _srand, STT_FUNC;
_srand:
	R0 += -1;
	P2.H = _seed;
	P2.L = _seed;
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
	SP += -24;
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
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R2 = [SP+20];
	R1 = R0;
	R1 += 1; cc = ac0;
	R0 = CC;
	R0 = R0 + R2;
	[P5] = R1;
	[P5+4] = R0;
	R0 >>= 1;
	SP += 24;
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
	if cc jump .L203;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L200;
	P1 = R0;
	[P1+4] = P2;
.L200:
	rts;
.L203:
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L200;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L205;
	nop;
	nop;
	P1 = R0;
	R0 = [P2+4];
	[P1+4] = R0;
.L205:
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L204;
	nop;
	nop;
	P1 = R0;
	R0 = [P2];
	[P1] = R0;
.L204:
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	R4 = R0;
	P3 = R1;
	FP = R2;
	P5 = [SP+60];
	P4 = [SP+64];
	R5 = [FP];
	cc =R5==0;
	if cc jump .L208;
	R6 = R1;
	R7 = 0 (X);
.L211:
	R1 = R6;
	R0 = R4;
	call (P4);
	cc =R0==0;
	if cc jump .L213;
	R7 += 1;
	R0 = P5;
	R6 = R6 + R0;
	cc =R7==R5;
	if !cc jump .L211 (bp);
.L208:
	R0 = R5;
	R0 += 1;
	[FP] = R0;
	R0 = P5;
	R5 *= R0;
	P2 = R5;
	P3 = P3 + P2;
	R2 = P5;
	R1 = R4;
	R0 = P3;
	call _memcpy;
	P3 = R0;
.L210:
	R0 = P3;
	SP += 12;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L213:
	R0 = P5;
	R7 *= R0;
	P2 = R7;
	P3 = P3 + P2;
	jump.s .L210;
	.size	_lsearch, .-_lsearch
	.align 4
.global _lfind;
.type _lfind, STT_FUNC;
_lfind:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	SP += -12;
	R5 = R0;
	P4 = R1;
	P2 = R2;
	P5 = [SP+56];
	P3 = [SP+60];
	R4 = [P2];
	cc =R4==0;
	if cc jump .L218;
	R6 = R1;
	R7 = 0 (X);
.L217:
	R1 = R6;
	R0 = R5;
	call (P3);
	cc =R0==0;
	if cc jump .L220;
	R7 += 1;
	R0 = P5;
	R6 = R6 + R0;
	cc =R7==R4;
	if !cc jump .L217 (bp);
	P4 = 0 (X);
	jump.s .L215;
.L220:
	R0 = P5;
	R7 *= R0;
	P2 = R7;
	P4 = P4 + P2;
.L215:
	R0 = P4;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L218:
	P4 = 0 (X);
	jump.s .L215;
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
	[--sp] = ( p5:4 );

	[--SP] = RETS;
	SP += -12;
	P4 = R0;
.L223:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L223 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L229;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L230 (bp);
	R1 = 1 (X);
.L224:
	P5 += 1;
.L225:
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if !cc jump .L231;
	P2 = 0 (X);
.L227:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5++] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L227 (bp);
.L226:
	cc =R1==0;
	if !cc jump .L228 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L228:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( p5:4 ) = [sp++];

	rts;
.L229:
	R1 = 0 (X);
	jump.s .L224;
.L230:
	R1 = 0 (X);
	jump.s .L225;
.L231:
	P2 = 0 (X);
	jump.s .L226;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( p5:4 );

	[--SP] = RETS;
	SP += -12;
	P4 = R0;
.L236:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L236 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L242;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L243 (bp);
	R1 = 1 (X);
.L237:
	P5 += 1;
.L238:
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if !cc jump .L244;
	P2 = 0 (X);
.L240:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5++] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L240 (bp);
.L239:
	cc =R1==0;
	if !cc jump .L241 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L241:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	( p5:4 ) = [sp++];

	rts;
.L242:
	R1 = 0 (X);
	jump.s .L237;
.L243:
	R1 = 0 (X);
	jump.s .L238;
.L244:
	P2 = 0 (X);
	jump.s .L239;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -24;
	P4 = R0;
.L249:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L249 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L255;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L256 (bp);
	R6 = 1 (X);
.L250:
	P5 += 1;
.L251:
	R0 = B [P5] (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L257;
	R3 = 0 (X);
	R1 = 0 (X);
	R7 = 0 (X);
.L253:
	[SP+12] = R7;
	R2 = 10 (X);
	R0 = R3;
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R2 = [SP+16];
	R1 = [SP+20];
	R0 = B [P5++] (X);
	R0 += -48;
	R5 = R0;
	R5 >>>= 31;
	R3 = R2 - R0;
	cc =R2<R0 (iu);
	R0 = CC;
	R1 = R1 - R5;
	R1 = R1 - R0;
	R0 = B [P5] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L253 (bp);
.L252:
	cc =R6==0;
	if !cc jump .L258 (bp);
	R0 = -R3;
	CC = R3;
	R2 = CC;
	R1 = -R1;
	R1 = R1 - R2;
.L254:
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L255:
	R6 = 0 (X);
	jump.s .L250;
.L256:
	R6 = 0 (X);
	jump.s .L251;
.L257:
	R3 = 0 (X);
	R1 = 0 (X);
	jump.s .L252;
.L258:
	R0 = R3;
	jump.s .L254;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	R5 = R1;
	R6 = R2;
	R4 = [SP+52];
	P4 = [SP+56];
	cc =R2==0;
	if !cc jump .L265 (bp);
	R7 = 0 (X);
	jump.s .L262;
.L270:
	R6 >>= 1;
.L264:
	cc =R6==0;
	if cc jump .L269;
.L265:
	R7 = R6 >> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R1 = R7;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L270;
	cc =R0<=0;
	if cc jump .L262;
	R5 = R7 + R4;
	R0 = R6 >> 1;
	R6 += -1;
	R6 = R6 - R0;
	jump.s .L264;
.L269:
	R7 = 0 (X);
.L262:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
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
	P4 = [SP+60];
	P3 = [SP+64];
	R6 = R2;
	cc =R2==0;
	if !cc jump .L274 (bp);
	R7 = 0 (X);
	jump.s .L272;
.L273:
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L278;
.L274:
	R7 = R6 >>> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R2 = P3;
	R1 = R7;
	R0 = P5;
	call (P4);
	cc =R0==0;
	if cc jump .L272;
	cc =R0<=0;
	if cc jump .L273;
	R5 = R7 + R4;
	R6 += -1;
	jump.s .L273;
.L278:
	R7 = 0 (X);
.L272:
	R0 = R7;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
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
	if cc jump .L283;
.L281:
	SP += 8;
	rts;
.L283:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L281;
	.size	_imaxabs, .-_imaxabs
	.align 4
.global _imaxdiv;
.type _imaxdiv, STT_FUNC;
_imaxdiv:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -32;
	P5 = P0;
	[SP+56] = R0;
	[SP+60] = R1;
	R7 = R2;
	R6 = [SP+68];
	[SP+12] = R6;
	call ___divdi3;
	R4 = R0;
	R5 = R1;
	[SP+12] = R6;
	R2 = R7;
	R0 = [SP+56];
	R1 = [SP+60];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	[P5] = R4;
	[P5+4] = R5;
	R0 = P5;
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

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
	if cc jump .L290;
.L288:
	SP += 8;
	rts;
.L290:
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
	jump.s .L288;
	.size	_llabs, .-_llabs
	.align 4
.global _lldiv;
.type _lldiv, STT_FUNC;
_lldiv:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -32;
	P5 = P0;
	[SP+56] = R0;
	[SP+60] = R1;
	R7 = R2;
	R6 = [SP+68];
	[SP+12] = R6;
	call ___divdi3;
	R4 = R0;
	R5 = R1;
	[SP+12] = R6;
	R2 = R7;
	R0 = [SP+56];
	R1 = [SP+60];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	[P5] = R4;
	[P5+4] = R5;
	R0 = P5;
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_lldiv, .-_lldiv
	.align 4
.global _wcschr;
.type _wcschr, STT_FUNC;
_wcschr:
	P1 = R0;
	R0 = [P1];
	cc =R0==0;
	if cc jump .L293;
	nop;
	P2 = P1;
.L294:
	P1 = P2;
	R0 = [P2++];
	cc =R1==R0;
	if cc jump .L293;
	nop;
	nop;
	P1 = P2;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L294 (bp);
.L293:
	R0 = [P1];
	cc =R0==0;
	if cc jump .L298;
.L296:
	R0 = P1;
	rts;
.L298:
	P1 = 0 (X);
	jump.s .L296;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	[--sp] = ( p5:5 );

	P5 = R0;
	P0 = R1;
	R1 = [P5];
	R0 = [P0];
	cc =R1==R0;
	if !cc jump .L300;
	P2 = P5;
	P1 = P0;
.L301:
	P0 = P1;
	P5 = P2;
	R0 = [P2++];
	cc =R0==0;
	if cc jump .L300;
	nop;
	nop;
	nop;
	R0 = [P1++];
	cc =R0==0;
	if cc jump .L300;
	nop;
	P5 = P2;
	P0 = P1;
	R1 = [P2];
	R0 = [P1];
	cc =R1==R0;
	if cc jump .L301 (bp);
.L300:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L304 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
.L303:
	( p5:5 ) = [sp++];

	rts;
.L304:
	R0 = -1 (X);
	jump.s .L303;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	R2 = R0;
	P1 = R1;
	P2 = R0;
.L306:
	nop;
	R0 = [P1++];
	[P2] = R0;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L306 (bp);
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
	if cc jump .L311;
	P2 = P1;
	P2 += 4;
.L310:
	R1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L310 (bp);
.L309:
	R0 = P1;
	R1 = R1 - R0;
	R1 >>>= 2;
	R0 = R1;
	rts;
.L311:
	R1 = P1;
	jump.s .L309;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:4 );

	P4 = R0;
	P5 = R1;
	R0 = R2;
	cc =R2==0;
	if cc jump .L314;
	P2 = P4;
	P1 = R1;
	P0 = R2;
	LSETUP (.L315, .L321) LC1 = P0;
.L315:
	P5 = P1;
	P4 = P2;
	R2 = [P2++];
	R1 = [P1++];
	cc =R2==R1;
	if !cc jump .L314;
	nop;
	nop;
	nop;
	R1 = [P2+-4];
	cc =R1==0;
	if cc jump .L314;
	nop;
	nop;
	nop;
	R1 = [P1+-4];
	cc =R1==0;
	if cc jump .L314;
	R0 += -1;
	P4 = P2;
.L321:
	P5 = P1;
.L314:
	cc =R0==0;
	if cc jump .L318 (bp);
	R1 = [P4];
	R0 = [P5];
	cc =R1<R0;
	if cc jump .L319 (bp);
	R0 = R1;
	R1 = [P5];
	cc =R1<R0;
	R0 = CC;
	jump.s .L317;
.L318:
	R0 = 0 (X);
.L317:
	( p5:4 ) = [sp++];

	rts;
.L319:
	R0 = -1 (X);
	jump.s .L317;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	R3 = R1;
	R1 = R2;
	cc =R2==0;
	if cc jump .L323;
	P2 = R0;
	P1 = R2;
	LSETUP (.L324, .L330) LC1 = P1;
.L324:
	R0 = P2;
	R2 = [P2++];
	cc =R3==R2;
	if cc jump .L323;
	R1 += -1;
.L330:
	R0 = P2;
.L323:
	cc =R1==0;
	if cc jump .L329;
.L326:
	rts;
.L329:
	R0 = 0 (X);
	jump.s .L326;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[--sp] = ( p5:4 );

	P4 = R0;
	P5 = R1;
	R0 = R2;
	cc =R2==0;
	if cc jump .L332;
	P1 = P4;
	P2 = R1;
	P0 = R2;
	LSETUP (.L333, .L339) LC1 = P0;
.L333:
	P5 = P2;
	P4 = P1;
	R2 = [P1++];
	R1 = [P2++];
	cc =R2==R1;
	if !cc jump .L332;
	R0 += -1;
	P4 = P1;
.L339:
	P5 = P2;
.L332:
	cc =R0==0;
	if cc jump .L336 (bp);
	R1 = [P4];
	R0 = [P5];
	cc =R1<R0;
	if cc jump .L337 (bp);
	R0 = R1;
	R1 = [P5];
	cc =R1<R0;
	R0 = CC;
	jump.s .L335;
.L336:
	R0 = 0 (X);
.L335:
	( p5:4 ) = [sp++];

	rts;
.L337:
	R0 = -1 (X);
	jump.s .L335;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	R3 = R0;
	P1 = R1;
	R1 = R2;
	R1 += -1;
	cc =R2==0;
	if cc jump .L341;
	P0 = R0;
	R0 = R1;
	P2 = R1;
	P2 += 1;
	LSETUP (.L342, .L344) LC1 = P2;
.L342:
	R1 = [P1++];
	[P0++] = R1;
.L344:
	R0 += -1;
.L341:
	R0 = R3;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	[--sp] = ( p5:5 );

	R3 = R0;
	P2 = R1;
	R0 = R2;
	cc =R3==R1;
	if cc jump .L346;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	if cc jump .L347 (bp);
	R1 = R0;
	R1 += -1;
	cc =R0==0;
	if cc jump .L346;
	P0 = R3;
	R0 = R1;
	P1 = R1;
	P1 += 1;
	LSETUP (.L350, .L354) LC1 = P1;
.L350:
	R1 = [P2++];
	[P0++] = R1;
.L354:
	R0 += -1;
	jump.s .L346;
.L347:
	cc =R0==0;
	if cc jump .L346;
	R0 += -1;
	R0 <<= 2;
	R1 = R3 + R0;
	P0 = R1;
	P5 = R0;
	P1 = P2 + P5;
	P2 = P5 >> 2;
	P2 += 1;
	LSETUP (.L349, .L353) LC1 = P2;
.L349:
	R0 = [P1--];
.L353:
	[P0--] = R0;
.L346:
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	R3 = R0;
	R0 = R2;
	R2 += -1;
	cc =R0==0;
	if cc jump .L356;
	R0 = R2;
	P1 = R3;
	P2 = R2;
	P2 += 1;
	LSETUP (.L357, .L359) LC1 = P2;
.L357:
	[P1++] = R1;
.L359:
	R0 += -1;
.L356:
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	P1 = R0;
	P0 = R1;
	P2 = R2;
	cc =P1<P0 (iu);
	if !cc jump .L361 (bp);
	P1 = P1 + P2;
	P0 = P0 + P2;
	cc =P2==0;
	if cc jump .L360;
	P0 += -1;
	P1 += -1;
	LSETUP (.L363, .L368) LC1 = P2;
.L363:
	R0 = B [P1--] (X);
.L368:
	B [P0--] = R0;
.L360:
	rts;
.L361:
	cc =P1==P0;
	if cc jump .L360;
	cc =P2==0;
	if cc jump .L360;
	nop;
	nop;
	LSETUP (.L364, .L367) LC1 = P2;
.L364:
	R0 = B [P1++] (X);
.L367:
	B [P0++] = R0;
	jump.s .L360;
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
	R2 = R1;
	R1 = R0.L (Z);
	R0 = R1;
	R0 <<= R2;
	R3 = 16 (X);
	R2 = R3 - R2;
	R1 >>= R2;
	R0 = R0 | R1;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	R2 = R1;
	R1 = R0.L (Z);
	R0 = R1;
	R0 >>= R2;
	R3 = 16 (X);
	R2 = R3 - R2;
	R1 <<= R2;
	R0 = R0 | R1;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	R2 = R1;
	R1 = R0.B (Z);
	R0 = R1;
	R0 <<= R2;
	R3 = 8 (X);
	R2 = R3 - R2;
	R1 >>= R2;
	R0 = R0 | R1;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	R2 = R1;
	R1 = R0.B (Z);
	R0 = R1;
	R0 >>= R2;
	R3 = 8 (X);
	R2 = R3 - R2;
	R1 <<= R2;
	R0 = R0 | R1;
	rts;
	.size	_rotr8, .-_rotr8
	.align 4
.global _bswap_16;
.type _bswap_16, STT_FUNC;
_bswap_16:
	R1 = R0;
	R0 = R1 >> 8;
	R0 = R0.B (Z);
	R1 = R1.B (Z);
	R1 <<= 8;
	R0 = R0 | R1;
	rts;
	.size	_bswap_16, .-_bswap_16
	.align 4
.global _bswap_32;
.type _bswap_32, STT_FUNC;
_bswap_32:
	R1 = R0;
	R2 = R0 >> 24;
	R0 = 255 (X);
	R0 <<= 16;
	R0 = R1 & R0;
	R0 >>= 8;
	R0 = R0 | R2;
	R2 = 65280 (Z);
	R2 = R1 & R2;
	R2 <<= 8;
	R0 = R0 | R2;
	R1 <<= 24;
	R0 = R0 | R1;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:6 );

	R2 = R0;
	R3 = R1 >> 24;
	R6 = 255 (X);
	R6 <<= 16;
	R0 = R1 & R6;
	R0 >>= 8;
	R0 = R0 | R3;
	R7 = 65280 (Z);
	R3 = R1 & R7;
	R3 <<= 8;
	R0 = R0 | R3;
	R1 <<= 24;
	R3 = R2 >> 24;
	R6 = R2 & R6;
	R6 >>= 8;
	R0 = R0 | R1;
	R1 = R3 | R6;
	R7 = R2 & R7;
	R7 <<= 8;
	R1 = R1 | R7;
	R2 <<= 24;
	R1 = R1 | R2;
	( r7:6 ) = [sp++];

	rts;
	.size	_bswap_64, .-_bswap_64
	.align 4
.global _ffs;
.type _ffs, STT_FUNC;
_ffs:
	R2 = R0;
	R0 = 0 (X);
	P2 = 32 (X);
	LSETUP (.L385, .L388) LC1 = P2;
.L385:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L387;
.L388:
	R0 += 1;
	R0 = 0 (X);
	jump.s .L384;
.L387:
	R0 += 1;
.L384:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L392;
	cc = !BITTST (R0,0);
	if !cc jump .L393;
	R1 = 1 (X);
.L391:
	R0 >>>= 1;
	R1 += 1;
	cc = !BITTST (R0,0);
	if cc jump .L391 (bp);
.L390:
	R0 = R1;
	rts;
.L392:
	R1 = 0 (X);
	jump.s .L390;
.L393:
	R1 = 1 (X);
	jump.s .L390;
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
	if cc jump .L398 (bp);
	R6 = 1 (X);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L399;
.L397:
	R6 = R6.B (Z);
.L396:
	R0 = R6;
	SP += 12;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L399:
	R6 = 0 (X);
	jump.s .L397;
.L398:
	R6 = 1 (X);
	jump.s .L396;
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
	if cc jump .L403 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L404;
.L402:
	R7 = R7.B (Z);
.L401:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L404:
	R7 = 0 (X);
	jump.s .L402;
.L403:
	R7 = 1 (X);
	jump.s .L401;
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
	if cc jump .L408 (bp);
	R7 = 1 (X);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+32];
	R1 = [SP+36];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L409;
.L407:
	R7 = R7.B (Z);
.L406:
	R0 = R7;
	SP += 24;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L409:
	R7 = 0 (X);
	jump.s .L407;
.L408:
	R7 = 1 (X);
	jump.s .L406;
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
	if !cc jump .L412;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R0;
	R0 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L412 (bp);
	cc =R7<0;
	if cc jump .L419;
	R6 = 1 (X);
	R6 <<= 30;
	jump.s .L416;
.L419:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L416;
.L415:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L412;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L416:
	cc = !BITTST (R7,0);
	if cc jump .L415 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L415;
.L412:
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
	if !cc jump .L421;
	R0 = [SP+52];
	[SP+12] = R0;
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
	if cc jump .L421 (bp);
	cc =R5<0;
	if cc jump .L428;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L425;
.L428:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L425;
.L424:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L421;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L425:
	cc = !BITTST (R5,0);
	if cc jump .L424 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L424;
.L421:
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
	if !cc jump .L430;
	R0 = [SP+52];
	[SP+12] = R0;
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
	if cc jump .L430 (bp);
	cc =R5<0;
	if cc jump .L437;
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
	jump.s .L434;
.L437:
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L434;
.L433:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L430;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L434:
	cc = !BITTST (R5,0);
	if cc jump .L433 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+48];
	R1 = [SP+52];
	call ___muldf3;
	[SP+48] = R0;
	[SP+52] = R1;
	jump.s .L433;
.L430:
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
	if cc jump .L439;
	nop;
	P1 = R0;
	LSETUP (.L440, .L442) LC1 = P2;
.L440:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	R0 = R0 ^ R1;
.L442:
	B [P1+-1] = R0;
.L439:
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
	if cc jump .L444;
	P0 = R5;
	P2 = P5;
	P1 = R7;
	LSETUP (.L445, .L449) LC1 = P1;
.L445:
	P5 = P2;
	R0 = B [P0++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L444;
	P5 = P2;
.L449:
	R7 += -1;
.L444:
	cc =R7==0;
	if !cc jump .L447 (bp);
	R0 = 0 (X);
	B [P5] = R0;
.L447:
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
	if cc jump .L454;
	R1 = 0 (X);
	R0 = R0 - R1;
	P1 = R0;
	LSETUP (.L452, .L457) LC1 = P1;
.L452:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L456;
.L451:
	R0 = R1;
	rts;
.L456:
.L457:
	R1 += 1;
	jump.s .L451;
.L454:
	R1 = 0 (X);
	jump.s .L451;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R0 = B [P1] (X);
	cc =R0==0;
	if cc jump .L466;
	nop;
	nop;
.L459:
	P2 = R2;
.L462:
	nop;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L467;
	nop;
	nop;
	nop;
	R1 = B [P2+-1] (X);
	R0 = B [P1] (X);
	cc =R1==R0;
	if !cc jump .L462 (bp);
.L460:
	R0 = P1;
	rts;
.L466:
	P1 = 0 (X);
	jump.s .L460;
.L467:
	P1 += 1;
	R0 = B [P1] (X);
	cc =R0==0;
	if !cc jump .L459 (bp);
	P1 = 0 (X);
	jump.s .L460;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	P2 = R0;
	R2 = R1;
	R3 = 0 (X);
	jump.s .L470;
.L469:
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if cc jump .L473;
	nop;
	nop;
.L470:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L469 (bp);
	R3 = R1;
	jump.s .L469;
.L473:
	R0 = R3;
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
	if cc jump .L475;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
.L476:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if cc jump .L475;
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L475;
	R7 += 1;
	jump.s .L476;
.L475:
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
	SP += -32;
	[SP+36] = R0;
	[SP+40] = R1;
	[SP+44] = R2;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L493;
.L481:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L491;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+44];
	R1 = [SP+48];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L483;
	R2 = [SP+36];
	R3 = [SP+40];
	[SP+24] = R2;
	[SP+28] = R3;
.L484:
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
.L493:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+44];
	R1 = [SP+48];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L481 (bp);
.L483:
	R3 = [SP+36];
	[SP+24] = R3;
	R0 = [SP+40];
	BITTGL (R0, 31);
	[SP+28] = R0;
	jump.s .L484;
.L491:
	R1 = [SP+36];
	R2 = [SP+40];
	[SP+24] = R1;
	[SP+28] = R2;
	jump.s .L484;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:4, p5:4 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	P4 = R2;
	R4 = [SP+52];
	R7 = R1 - R4;
	R7 = R0 + R7;
	cc =R4==0;
	if cc jump .L495;
	cc =R1<R4 (iu);
	if cc jump .L499;
	cc =R0<=R7 (iu);
	if !cc jump .L500;
	nop;
	nop;
	nop;
	R6 = B [P4++] (X);
	R4 += -1;
	jump.s .L497;
.L496:
	R0 = P5;
	cc =R7<R0 (iu);
	if cc jump .L503;
	nop;
	nop;
.L497:
	R5 = P5;
	R0 = B [P5++] (X);
	cc =R0==R6;
	if !cc jump .L496 (bp);
	R2 = R4;
	R1 = P4;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L496 (bp);
	P5 = R5;
	jump.s .L495;
.L503:
	P5 = 0 (X);
.L495:
	R0 = P5;
	SP += 12;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L499:
	P5 = 0 (X);
	jump.s .L495;
.L500:
	P5 = 0 (X);
	jump.s .L495;
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
	if cc jump .L529;
	R4 = 0 (X);
.L506:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L526;
	R7 = 0 (X);
	R5 = 511 (X);
	R5 <<= 21;
	R6 = 1023 (X);
	R6 <<= 20;
.L510:
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
	if !cc jump .L510 (bp);
.L511:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L515 (bp);
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
.L515:
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 24;
	RETS = [SP++];
	( r7:4, p5:5 ) = [sp++];

	rts;
.L529:
	R0 = [SP+48];
	R1 = [SP+52];
	BITTGL (R1, 31);
	[SP+48] = R0;
	[SP+52] = R1;
	R4 = 1 (X);
	jump.s .L506;
.L526:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L527 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+48];
	R1 = [SP+52];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L528 (bp);
	R7 = 0 (X);
	R6 = 511 (X);
	R6 <<= 21;
.L514:
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
	if cc jump .L514 (bp);
	jump.s .L511;
.L527:
	R7 = 0 (X);
	jump.s .L511;
.L528:
	R7 = 0 (X);
	jump.s .L511;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:4, p5:3 );

	LINK 24;
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = R0;
	R0 = [SP+20];
	R7 = R2;
	R6 = [SP+72];
	R5 = R1;
	P5 = R0;
	R0 = R0 | R1;
	cc =R0==0;
	if cc jump .L534;
	R4 = 0 (X);
	P4 = 0 (X);
	FP = 1 (X);
	P3 = 0 (X);
.L533:
	R1 = FP;
	R0 = R5 & R1;
	[SP+12] = P3;
	R2 = R0;
	R0 = R7;
	R1 = R6;
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	R4 = R4 + R0; cc = ac0;
	R2 = CC;
	P2 = R1;
	P4 = P4 + P2;
	P2 = R2;
	P4 = P4 + P2;
	CC = R0 < R0;
	R7 = ROT R7 BY 1;
	R6 = ROT R6 BY 1;
	CC = R0 < R0;
	R0 = P5;
	R3 = ROT R0 BY -1;
	R2 = ROT R5 BY -1;
	R5 = R2;
	P5 = R3;
	R2 = R2 | R3;
	cc =R2==0;
	if !cc jump .L533 (bp);
.L531:
	R0 = R4;
	R1 = P4;
	SP += 24;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L534:
	R4 = 0 (X);
	P4 = 0 (X);
	jump.s .L531;
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
	if !cc jump .L538;
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L537, .L551) LC1 = P2;
.L537:
	cc =R0<0;
	if cc jump .L538;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L538;
.L551:
	nop;
.L538:
	R2 = 0 (X);
	cc =R1==0;
	if !cc jump .L539 (bp);
.L540:
	cc =P1==0;
	if !cc jump .L550;
.L543:
	R0 = R2;
	rts;
.L542:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L540;
.L539:
	cc =R3<R0 (iu);
	if cc jump .L542 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L542;
.L550:
	R2 = R3;
	jump.s .L543;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	[--SP] = RETS;
	SP += -12;
	R1 = R0;
	R0 = R0.B (X);
	R0 >>>= 7;
	R0 = R0 ^ R1;
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L554;
	R0 = R1;
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
.L553:
	SP += 12;
	RETS = [SP++];
	rts;
.L554:
	R0 = 7 (X);
	jump.s .L553;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	[--SP] = RETS;
	SP += -12;
	R2 = R0;
	R0 = R1 >>> 31;
	R2 = R0 ^ R2;
	R1 = R0 ^ R1;
	R0 = R2 | R1;
	cc =R0==0;
	if cc jump .L558;
	R0 = R2;
	call ___clzdi2;
	R0 += -1;
.L556:
	SP += 12;
	RETS = [SP++];
	rts;
.L558:
	R0 = 63 (X);
	jump.s .L556;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = R1;
	cc =R0==0;
	if cc jump .L562;
	R1 = 0 (X);
	R7 = 1 (X);
.L561:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R3;
	R1 = R1 + R0;
	R2 >>= 1;
	R3 <<= 1;
	cc =R2==0;
	if !cc jump .L561 (bp);
.L560:
	R0 = R1;
	( r7:7 ) = [sp++];

	rts;
.L562:
	R1 = 0 (X);
	jump.s .L560;
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
	if !cc jump .L565 (bp);
.L568:
	cc =R1==0;
	if cc jump .L567;
	P4 = P0;
	P5 = P1;
	R1 <<= 3;
	R1 += -8;
	R1 >>= 3;
	P2 = R1;
	P2 += 1;
	LSETUP (.L571, .L579) LC1 = P2;
.L571:
	R2 = [P5];
	R3 = [P5+4];
	[P4] = R2;
	[P4+4] = R3;
	P5 += 8;
.L579:
	P4 += 8;
.L567:
	cc =R0<=R7 (iu);
	if cc jump .L564;
	P2 = R7;
	P0 = P0 + P2;
	P1 = P1 + P2;
	R0 = R0 - R7;
	P2 = R0;
	LSETUP (.L572, .L578) LC1 = P2;
.L572:
	R0 = B [P1++] (X);
.L578:
	B [P0++] = R0;
.L564:
	( r7:7, p5:4 ) = [sp++];

	rts;
.L565:
	R3 = P1;
	R2 = R3 + R2;
	R3 = P0;
	cc =R2<R3 (iu);
	if cc jump .L568 (bp);
	cc =R0==0;
	if cc jump .L564;
	P2 += -1;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L573, .L577) LC1 = P2;
.L573:
	R0 = B [P1--] (X);
.L577:
	B [P0--] = R0;
	jump.s .L564;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	[--sp] = ( r7:7, p5:5 );

	P0 = R0;
	R7 = R0;
	R3 = R1;
	R1 = R2;
	P1 = R2;
	P2 = P1 >> 1;
	cc =R0<R3 (iu);
	if !cc jump .L581 (bp);
.L584:
	cc =P2==0;
	if cc jump .L583;
	P0 = R7;
	P1 = R3;
	P2 = P2 + P2;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L587, .L592) LC1 = P2;
.L587:
	R0 = W [P1++] (X);
.L592:
	W [P0++] = R0;
.L583:
	cc = !BITTST (R1,0);
	if cc jump .L580 (bp);
	R1 += -1;
	R3 = R3 + R1;
	P1 = R3;
	R7 = R7 + R1;
	P0 = R7;
	R0 = B [P1] (X);
	B [P0] = R0;
.L580:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L581:
	R2 = R3 + R2;
	cc =R2<R0 (iu);
	if cc jump .L584 (bp);
	cc =R1==0;
	if cc jump .L580;
	P2 = R1;
	P2 += -1;
	P0 = P0 + P2;
	P5 = R3;
	P1 = P5 + P2;
	P2 += 1;
	LSETUP (.L588, .L591) LC1 = P2;
.L588:
	R0 = B [P1--] (X);
.L591:
	B [P0--] = R0;
	jump.s .L580;
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
	if !cc jump .L594 (bp);
.L597:
	cc =P2==0;
	if cc jump .L596;
	P4 = P0;
	P5 = P1;
	P2 = P2 << 2;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L600, .L608) LC1 = P2;
.L600:
	R1 = [P5++];
.L608:
	[P4++] = R1;
.L596:
	cc =R0<=R2 (iu);
	if cc jump .L593;
	P2 = R2;
	P0 = P0 + P2;
	P1 = P1 + P2;
	R0 = R0 - R2;
	P2 = R0;
	LSETUP (.L601, .L607) LC1 = P2;
.L601:
	R0 = B [P1++] (X);
.L607:
	B [P0++] = R0;
.L593:
	( p5:4 ) = [sp++];

	rts;
.L594:
	R3 = R1 + R0;
	R1 = P0;
	cc =R3<R1 (iu);
	if cc jump .L597 (bp);
	cc =R0==0;
	if cc jump .L593;
	P2 = R0;
	P2 += -1;
	P0 = P0 + P2;
	P1 = P1 + P2;
	P2 += 1;
	LSETUP (.L602, .L606) LC1 = P2;
.L602:
	R0 = B [P1--] (X);
.L606:
	B [P0--] = R0;
	jump.s .L593;
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
	LSETUP (.L617, .L619) LC1 = P2;
.L617:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L616;
.L619:
	R0 += 1;
.L616:
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
	LSETUP (.L622, .L624) LC1 = P2;
.L622:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L621;
.L624:
	R0 += 1;
.L621:
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
	if !cc jump .L631;
	R0 = R7;
	call ___fixsfsi;
.L628:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L631:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L628;
	.size	___fixunssfsi, .-___fixunssfsi
	.align 4
.global ___parityhi2;
.type ___parityhi2, STT_FUNC;
___parityhi2:
	[--sp] = ( r7:7 );

	R3 = R0;
	R0 = 0 (X);
	R2 = 0 (X);
	R3 = R3.L (Z);
	R7 = 1 (X);
	P2 = 16 (X);
	LSETUP (.L633, .L635) LC1 = P2;
.L633:
	R1 = R3;
	R1 >>>= R2;
	R1 = R1 & R7;
	R0 = R1 + R0;
.L635:
	R2 += 1;
	R1 = 1 (X);
	R0 = R0 & R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	[--sp] = ( r7:7 );

	R1 = 0 (X);
	R2 = 0 (X);
	R3 = R0.L (Z);
	R7 = 1 (X);
	P2 = 16 (X);
	LSETUP (.L637, .L639) LC1 = P2;
.L637:
	R0 = R3;
	R0 >>>= R2;
	R0 = R0 & R7;
	R1 = R0 + R1;
.L639:
	R2 += 1;
	R0 = R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	[--sp] = ( r7:7 );

	R2 = R0;
	R3 = R1;
	cc =R0==0;
	if cc jump .L643;
	R1 = 0 (X);
	R7 = 1 (X);
.L642:
	R0 = R2 & R7;
	R0 = -R0;
	R0 = R0 & R3;
	R1 = R1 + R0;
	R2 >>= 1;
	R3 <<= 1;
	cc =R2==0;
	if !cc jump .L642 (bp);
.L641:
	R0 = R1;
	( r7:7 ) = [sp++];

	rts;
.L643:
	R1 = 0 (X);
	jump.s .L641;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	[--sp] = ( r7:7 );

	R3 = R0;
	cc =R0==0;
	if cc jump .L648;
	cc =R1==0;
	if cc jump .L649;
	R2 = 0 (X);
	R7 = 1 (X);
.L647:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R3;
	R2 = R2 + R0;
	R3 <<= 1;
	R1 >>= 1;
	cc =R1==0;
	if !cc jump .L647 (bp);
.L646:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L648:
	R2 = 0 (X);
	jump.s .L646;
.L649:
	R2 = 0 (X);
	jump.s .L646;
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
	if !cc jump .L653;
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L652, .L666) LC1 = P2;
.L652:
	cc =R0<0;
	if cc jump .L653;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L653;
.L666:
	nop;
.L653:
	R2 = 0 (X);
	cc =R1==0;
	if !cc jump .L654 (bp);
.L655:
	cc =P1==0;
	if !cc jump .L665;
.L658:
	R0 = R2;
	rts;
.L657:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L655;
.L654:
	cc =R3<R0 (iu);
	if cc jump .L657 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L657;
.L665:
	R2 = R3;
	jump.s .L658;
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
	if cc jump .L670;
	R5 = 1 (X);
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L671;
.L669:
	R5 = R5.B (Z);
.L668:
	R0 = R5;
	SP += 12;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L671:
	R5 = 0 (X);
	jump.s .L669;
.L670:
	R5 = -1 (X);
	jump.s .L668;
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
	if cc jump .L675;
	R5 = 1 (X);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+40];
	R1 = [SP+44];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L676;
.L674:
	R5 = R5.B (Z);
.L673:
	R0 = R5;
	SP += 24;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L676:
	R5 = 0 (X);
	jump.s .L674;
.L675:
	R5 = -1 (X);
	jump.s .L673;
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 4
.global ___mspabi_mpysll;
.type ___mspabi_mpysll, STT_FUNC;
___mspabi_mpysll:
	[--SP] = R4;
	[--SP] = RETS;
	SP += -24;
	R2 = R0;
	R4 = R2;
	R4 >>>= 31;
	[SP+16] = R2;
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

	R3 = R0;
	cc =R1<0;
	if cc jump .L689;
	P1 = 0 (X);
.L680:
	cc =R1==0;
	if cc jump .L685;
	P2 = 32 (X);
	R2 = 0 (X);
	R7 = 1 (X);
.L682:
	R0 = R1 & R7;
	R0 = -R0;
	R0 = R0 & R3;
	R2 = R2 + R0;
	R3 <<= 1;
	R1 >>>= 1;
	cc =R1==0;
	if cc jump .L681;
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L682 (bp);
.L681:
	cc =P1==0;
	if cc jump .L683 (bp);
	R2 = -R2;
.L683:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L689:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L680;
.L685:
	R2 = 0 (X);
	jump.s .L681;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	cc =R0<0;
	if cc jump .L695;
	R7 = 0 (X);
.L691:
	cc =R1<0;
	if cc jump .L696;
.L692:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L693 (bp);
	R0 = -R0;
.L693:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L695:
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L691;
.L696:
	R1 = -R1;
	BITTGL (R7, 0);
	jump.s .L692;
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
	if cc jump .L701;
	R7 = 0 (X);
.L698:
	R0 = abs R0;
	R2 = 1 (X);
	R1 = R0;
	R0 = R3;
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L699 (bp);
	R0 = -R0;
.L699:
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L701:
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L698;
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
	if !cc jump .L716;
	R1 = 1 (X);
	R7 = R3.L (Z);
	P2 = 16 (X);
	LSETUP (.L703, .L718) LC1 = P2;
.L703:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L704;
	R2 = R0 << 1;
	R0 = R2;
	R1 <<= 1;
	R2 = R2.L (Z);
	cc =R7<=R2 (iu);
	if cc jump .L704;
.L718:
	nop;
.L704:
	R2 = R1.L (Z);
	R6 = 0 (X);
	cc =R2==0;
	if !cc jump .L705 (bp);
.L706:
	cc =P1==0;
	if !cc jump .L717;
.L709:
	R0 = R6;
	( r7:6 ) = [sp++];

	rts;
.L716:
	R1 = 1 (X);
	jump.s .L704;
.L708:
	R1 = R1.L (Z);
	R2 = R1 >> 1;
	R1 = R2;
	R0 <<= 16;
	R0 >>= 17;
	cc =R2==0;
	if cc jump .L706;
.L705:
	R2 = R3.L (Z);
	R7 = R0.L (Z);
	cc =R2<R7 (iu);
	if cc jump .L708 (bp);
	R3 = R3 - R0;
	R6 = R6 | R1;
	jump.s .L708;
.L717:
	R6 = R3;
	jump.s .L709;
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
	if !cc jump .L721;
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L720, .L734) LC1 = P2;
.L720:
	cc =R0<0;
	if cc jump .L721;
	R0 <<= 1;
	R1 <<= 1;
	cc =R3<=R0 (iu);
	if cc jump .L721;
.L734:
	nop;
.L721:
	R2 = 0 (X);
	cc =R1==0;
	if !cc jump .L722 (bp);
.L723:
	cc =P1==0;
	if !cc jump .L733;
.L726:
	R0 = R2;
	rts;
.L725:
	R1 >>= 1;
	R0 >>= 1;
	cc =R1==0;
	if cc jump .L723;
.L722:
	cc =R3<R0 (iu);
	if cc jump .L725 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
	jump.s .L725;
.L733:
	R2 = R3;
	jump.s .L726;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:7 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R3 = [SP+4];
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L736 (bp);
	R2 = 0 (X);
	R0 += -32;
	R1 <<= R0;
.L737:
	R0 = R2;
.L738:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L736:
	cc =R2==0;
	if cc jump .L739;
	R2 = R1;
	R2 <<= R0;
	R3 <<= R0;
	P2 = 32 (X);
	R7 = P2;
	R0 = R7 - R0;
	R1 >>= R0;
	R1 = R1 | R3;
	jump.s .L737;
.L739:
	R0 = R1;
	R1 = R3;
	jump.s .L738;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:7 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R3 = [SP+4];
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L741 (bp);
	R2 = R3 >>> 31;
	R0 += -32;
	R3 >>>= R0;
.L742:
	R0 = R3;
	R1 = R2;
.L743:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L741:
	cc =R2==0;
	if cc jump .L744;
	R2 = R3;
	R2 >>>= R0;
	R7 = 32 (X);
	R7 = R7 - R0;
	R3 <<= R7;
	R1 >>= R0;
	R3 = R3 | R1;
	jump.s .L742;
.L744:
	R0 = R1;
	R1 = R3;
	jump.s .L743;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	R2 = R1 >> 24;
	R4 = R1 >> 8;
	P1.H = 0;
	P1.L = 65280;
	R3 = P1;
	R4 = R4 & R3;
	R7 = R1 << 8;
	R6 = R0 >> 24;
	R6 = R7 | R6;
	P2.H = 255;
	P2.L = 0;
	R7 = P2;
	R6 = R6 & R7;
	R1 <<= 24;
	R3 = R0 >> 8;
	R3 = R1 | R3;
	R3 >>>= 24;
	R3 <<= 24;
	R5 = R0 << 8;
	R7 = R0 >> 24;
	P0 = R7;
	R7 = R0 >> 8;
	R7 = R7 | R1;
	R1 = R0 << 24;
	R0 = P1;
	R7 = R7 & R0;
	R0 = P2;
	R5 = R5 & R0;
	R0 = R2 | R4;
	R0 = R0 | R6;
	R0 = R0 | R3;
	R2 = P0;
	R1 = R1 | R2;
	R1 = R1 | R7;
	R1 = R1 | R5;
	( r7:4 ) = [sp++];

	rts;
	.size	___bswapdi2, .-___bswapdi2
	.align 4
.global ___bswapsi2;
.type ___bswapsi2, STT_FUNC;
___bswapsi2:
	[--sp] = ( r7:7 );

	R3 = R0 >> 24;
	R2 = R0 >> 8;
	R1 = 65280 (Z);
	R2 = R2 & R1;
	R1 = R0 << 8;
	R7 = 255 (X);
	R7 <<= 16;
	R1 = R1 & R7;
	R0 <<= 24;
	R0 = R0 | R3;
	R0 = R0 | R2;
	R0 = R0 | R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___bswapsi2, .-___bswapsi2
	.align 4
.global ___clzsi2;
.type ___clzsi2, STT_FUNC;
___clzsi2:
	[--sp] = ( r7:7 );

	R1 = 65535 (Z);
	cc =R0<=R1 (iu);
	R1 = CC;
	R1 <<= 4;
	R2 = 16 (X);
	R2 = R2 - R1;
	R0 >>= R2;
	R2 = 65280 (Z);
	R2 = R0 & R2;
	cc =R2==0;
	R2 = CC;
	R2 <<= 3;
	R3 = 8 (X);
	R3 = R3 - R2;
	R0 >>= R3;
	R1 = R1 + R2;
	R2 = 240 (X);
	R2 = R0 & R2;
	cc =R2==0;
	R2 = CC;
	R2 <<= 2;
	R3 = 4 (X);
	R3 = R3 - R2;
	R0 >>= R3;
	R1 = R1 + R2;
	R2 = 12 (X);
	R2 = R0 & R2;
	cc =R2==0;
	R2 = CC;
	R2 <<= 1;
	R3 = 2 (X);
	R7 = R3 - R2;
	R0 >>= R7;
	R1 = R1 + R2;
	R2 = R0 & R3;
	R2 >>= 1;
	R3 = R3 - R0;
	R2 += -1;
	R0 = R2 & R3;
	R1 = R1 + R0;
	R0 = R1;
	( r7:7 ) = [sp++];

	rts;
	.size	___clzsi2, .-___clzsi2
	.align 4
.global ___cmpdi2;
.type ___cmpdi2, STT_FUNC;
___cmpdi2:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R0 = [SP+4];
	[SP+16] = R2;
	R3 = R2;
	R2 = [SP+20];
	cc =R0<R2;
	if cc jump .L750;
	cc =R0<=R2;
	if !cc jump .L751;
	cc =R1<R3 (iu);
	if cc jump .L752;
	cc =R1<=R3 (iu);
	if !cc jump .L753;
	R0 = 1 (X);
	jump.s .L749;
.L750:
	R0 = 0 (X);
.L749:
	SP += 8;
	rts;
.L751:
	R0 = 2 (X);
	jump.s .L749;
.L752:
	R0 = 0 (X);
	jump.s .L749;
.L753:
	R0 = 2 (X);
	jump.s .L749;
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
	R1 = R0.L (Z);
	cc =R1==0;
	R1 = CC;
	R1 <<= 4;
	R0 >>= R1;
	R2 = R0.B (Z);
	cc =R2==0;
	R2 = CC;
	R2 <<= 3;
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 15 (X);
	R2 = R0 & R2;
	cc =R2==0;
	R2 = CC;
	R2 <<= 2;
	R0 >>= R2;
	R1 = R1 + R2;
	R3 = 3 (X);
	R2 = R0 & R3;
	cc =R2==0;
	R2 = CC;
	R2 <<= 1;
	R0 >>= R2;
	R0 = R0 & R3;
	R1 = R1 + R2;
	R3 = ~R0;
	R3 <<= 31;
	R0 >>= 1;
	R2 = 2 (X);
	R0 = R2 - R0;
	R3 >>>= 31;
	R0 = R0 & R3;
	R1 = R1 + R0;
	R0 = R1;
	rts;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	[--sp] = ( r7:7 );

	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R3 = [SP+4];
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L757 (bp);
	R2 = 0 (X);
	R0 += -32;
	R3 >>= R0;
.L758:
	R0 = R3;
	R1 = R2;
.L759:
	SP += 8;
	( r7:7 ) = [sp++];

	rts;
.L757:
	cc =R2==0;
	if cc jump .L760;
	R2 = R3;
	R2 >>= R0;
	R7 = 32 (X);
	R7 = R7 - R0;
	R3 <<= R7;
	R1 >>= R0;
	R3 = R3 | R1;
	jump.s .L758;
.L760:
	R0 = R1;
	R1 = R3;
	jump.s .L759;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	[--sp] = ( r7:6 );

	R2 = R0;
	R7 = R0.L (Z);
	R6 = R1.L (Z);
	R3 = R7;
	R3 *= R6;
	R0 = R3 >> 16;
	R2 >>= 16;
	R6 *= R2;
	R0 = R0 + R6;
	R6 = R0 >> 16;
	R0 = R0.L (Z);
	R3 = R3.L (Z);
	R1 >>= 16;
	R7 *= R1;
	R0 = R0 + R7;
	R7 = R0 << 16;
	R3 = R7 + R3;
	R0 >>= 16;
	R0 = R0 + R6;
	R2 *= R1;
	R2 = R2 + R0;
	R0 = R3;
	R1 = R2;
	( r7:6 ) = [sp++];

	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -20;
	[SP+12] = R0;
	[SP+16] = R1;
	R6 = [SP+12];
	R5 = [SP+16];
	[SP+44] = R2;
	R7 = R2;
	R1 = R2;
	R0 = R6;
	call ___muldsi3;
	[SP+12] = R0;
	[SP+16] = R1;
	R1 = [SP+12];
	R2 = [SP+16];
	R7 *= R5;
	R0 = [SP+48];
	R0 *= R6;
	R7 = R7 + R0;
	R7 = R7 + R2;
	R0 = R1;
	R1 = R7;
	SP += 20;
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	R2 = -R0;
	CC = R0;
	R0 = CC;
	R1 = -R1;
	R1 = R1 - R0;
	R0 = R2;
	SP += 8;
	rts;
	.size	___negdi2, .-___negdi2
	.align 4
.global ___paritydi2;
.type ___paritydi2, STT_FUNC;
___paritydi2:
	R0 = R1 ^ R0;
	R1 = R0 >> 16;
	R0 = R0 ^ R1;
	R1 = R0 >> 8;
	R0 = R0 ^ R1;
	R1 = R0 >> 4;
	R0 = R0 ^ R1;
	R1 = 15 (X);
	R0 = R0 & R1;
	R1 = 27030 (X);
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	R1 = R0;
	R0 >>= 16;
	R0 = R0 ^ R1;
	R1 = R0 >> 8;
	R0 = R0 ^ R1;
	R1 = R0 >> 4;
	R0 = R0 ^ R1;
	R1 = 15 (X);
	R0 = R0 & R1;
	R1 = 27030 (X);
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
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
	R1 = [SP];
	R2 = [SP+4];
	CC = R0 < R0;
	R0 = ROT R2 BY -1;
	R3 = ROT R1 BY -1;
	R7.H = 21845;
	R7.L = 21845;
	R3 = R3 & R7;
	R0 = R0 & R7;
	R1 = R1 - R3; cc = ac0;
	CC = ! CC;
	R3 = CC;
	R2 = R2 - R0;
	R2 = R2 - R3;
	R0 = R2 << 30;
	R3 = R1 >> 2;
	R3 = R0 | R3;
	R0 = R2 >> 2;
	R7.H = 13107;
	R7.L = 13107;
	R3 = R3 & R7;
	R0 = R0 & R7;
	R1 = R1 & R7;
	R2 = R2 & R7;
	R1 = R3 + R1; cc = ac0;
	R3 = CC;
	R0 = R0 + R2;
	R0 = R0 + R3;
	R3 = R0 << 28;
	R2 = R1 >> 4;
	R2 = R3 | R2;
	R3 = R0 >> 4;
	R1 = R2 + R1; cc = ac0;
	R2 = CC;
	R0 = R3 + R0;
	R0 = R0 + R2;
	R2.H = 3855;
	R2.L = 3855;
	R1 = R1 & R2;
	R0 = R0 & R2;
	R0 = R0 + R1;
	R1 = R0 >> 16;
	R0 = R0 + R1;
	R1 = R0 >> 8;
	R0 = R1 + R0;
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
	R0 = R1 + R0;
	R1 = R0 >> 4;
	R0 = R1 + R0;
	R1.H = 3855;
	R1.L = 3855;
	R0 = R0 & R1;
	R1 = R0 >> 16;
	R0 = R0 + R1;
	R1 = R0 >> 8;
	R0 = R1 + R0;
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
	R5 = R2;
	R4 = R2 >> 31;
	R2 = 0 (X);
	R3 = 1023 (X);
	R3 <<= 20;
	[SP+16] = R2;
	[SP+20] = R3;
	jump.s .L771;
.L769:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L770;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L771:
	cc = !BITTST (R5,0);
	if cc jump .L769 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	jump.s .L769;
.L770:
	cc =R4==0;
	if cc jump .L772 (bp);
	R0 = [SP+20];
	[SP+12] = R0;
	R2 = [SP+16];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
.L772:
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
	R7 = R1;
	R4 = R1 >> 31;
	R5 = 127 (X);
	R5 <<= 23;
	jump.s .L777;
.L775:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L776;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
.L777:
	cc = !BITTST (R7,0);
	if cc jump .L775 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L775;
.L776:
	cc =R4==0;
	if cc jump .L778 (bp);
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L778:
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
	SP += -8;
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R0 = [SP+4];
	[SP+16] = R2;
	R3 = R2;
	R2 = [SP+20];
	cc =R0<R2 (iu);
	if cc jump .L782;
	cc =R0<=R2 (iu);
	if !cc jump .L783;
	cc =R1<R3 (iu);
	if cc jump .L784;
	cc =R1<=R3 (iu);
	if !cc jump .L785;
	R0 = 1 (X);
	jump.s .L781;
.L782:
	R0 = 0 (X);
.L781:
	SP += 8;
	rts;
.L783:
	R0 = 2 (X);
	jump.s .L781;
.L784:
	R0 = 0 (X);
	jump.s .L781;
.L785:
	R0 = 2 (X);
	jump.s .L781;
	.size	___ucmpdi2, .-___ucmpdi2
	.align 4
.global ___aeabi_ulcmp;
.type ___aeabi_ulcmp, STT_FUNC;
___aeabi_ulcmp:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R0 = [SP+40];
	[SP+12] = R0;
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
