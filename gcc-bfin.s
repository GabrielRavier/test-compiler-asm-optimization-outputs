.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+8];
	[SP+4] = R0;
	R0 = [SP+12];
	[SP] = R0;
	R1 = [SP];
	R0 = [SP+4];
	cc =R1<R0 (iu);
	if !cc jump .L2;
	R1 = [SP];
	R0 = [SP+16];
	R0 = R1 + R0;
	[SP] = R0;
	R1 = [SP+4];
	R0 = [SP+16];
	R0 = R1 + R0;
	[SP+4] = R0;
	jump.s .L3;
.L4:
	R0 = [SP];
	R0 += -1;
	[SP] = R0;
	R0 = [SP+4];
	R0 += -1;
	[SP+4] = R0;
	P2 = [SP];
	R0 = B [P2] (X);
	P2 = [SP+4];
	B [P2] = R0;
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
.L3:
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L4;
	jump.s .L5;
.L2:
	R1 = [SP];
	R0 = [SP+4];
	cc =R1==R0;
	if cc jump .L5;
	jump.s .L6;
.L7:
	P1 = [SP];
	R0 = P1;
	R0 += 1;
	[SP] = R0;
	P2 = [SP+4];
	R0 = P2;
	R0 += 1;
	[SP+4] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
.L6:
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L7;
.L5:
	R0 = [SP+8];
	SP += 8;
	rts;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+8];
	[SP+4] = R0;
	R0 = [SP+12];
	[SP] = R0;
	R0 = [SP+16];
	R0 = R0.B (Z);
	[SP+16] = R0;
	jump.s .L10;
.L12:
	R0 = [SP+20];
	R0 += -1;
	[SP+20] = R0;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L10:
	R0 = [SP+20];
	cc =R0==0;
	if cc jump .L11;
	nop;
	nop;
	P2 = [SP];
	R0 = B [P2] (X);
	P2 = [SP+4];
	B [P2] = R0;
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [SP+16];
	cc =R1==R0;
	if !cc jump .L12;
.L11:
	R0 = [SP+20];
	cc =R0==0;
	if cc jump .L13;
	R0 = [SP+4];
	R0 += 1;
	jump.s .L14;
.L13:
	R0 = 0 (X);
.L14:
	SP += 8;
	rts;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+4];
	[SP] = R0;
	R0 = [SP+8];
	R0 = R0.B (Z);
	[SP+8] = R0;
	jump.s .L16;
.L18:
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
	R0 = [SP+12];
	R0 += -1;
	[SP+12] = R0;
.L16:
	R0 = [SP+12];
	cc =R0==0;
	if cc jump .L17;
	nop;
	nop;
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [SP+8];
	cc =R1==R0;
	if !cc jump .L18;
.L17:
	R0 = [SP+12];
	cc =R0==0;
	if cc jump .L19;
	R0 = [SP];
	jump.s .L21;
.L19:
	R0 = 0 (X);
.L21:
	SP += 4;
	rts;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+8];
	[SP+4] = R0;
	R0 = [SP+12];
	[SP] = R0;
	jump.s .L23;
.L25:
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L23:
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L24;
	nop;
	nop;
	P2 = [SP+4];
	R1 = B [P2] (X);
	P2 = [SP];
	R0 = B [P2] (X);
	R1 = R1.B (Z);
	R0 = R0.B (Z);
	cc =R1==R0;
	if cc jump .L25;
.L24:
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L26;
	nop;
	nop;
	P2 = [SP+4];
	R0 = B [P2] (X);
	R1 = R0.B (Z);
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R0 = R1 - R0;
	jump.s .L28;
.L26:
	R0 = 0 (X);
.L28:
	SP += 8;
	rts;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+8];
	[SP+4] = R0;
	R0 = [SP+12];
	[SP] = R0;
	jump.s .L30;
.L31:
	P1 = [SP];
	R0 = P1;
	R0 += 1;
	[SP] = R0;
	P2 = [SP+4];
	R0 = P2;
	R0 += 1;
	[SP+4] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
.L30:
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L31;
	R0 = [SP+8];
	SP += 8;
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+4];
	[SP] = R0;
	R0 = [SP+8];
	R0 = R0.B (Z);
	[SP+8] = R0;
	jump.s .L34;
.L36:
	R1 = [SP];
	R0 = [SP+12];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [SP+8];
	cc =R1==R0;
	if !cc jump .L34;
	R1 = [SP];
	R0 = [SP+12];
	R0 = R1 + R0;
	P2 = R0;
	jump.s .L35;
.L34:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L36;
	P2 = 0 (X);
.L35:
	R0 = P2;
	SP += 4;
	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+4];
	[SP] = R0;
	jump.s .L38;
.L39:
	R0 = [SP+8];
	P2 = [SP];
	B [P2] = R0;
	R0 = [SP+12];
	R0 += -1;
	[SP+12] = R0;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L38:
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L39;
	R0 = [SP+4];
	SP += 4;
	rts;
	.size	_memset, .-_memset
	.align 4
.global _stpcpy;
.type _stpcpy, STT_FUNC;
_stpcpy:
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L42;
.L43:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L42:
	P2 = [SP+4];
	R0 = B [P2] (X);
	P2 = [SP];
	B [P2] = R0;
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L43;
	R0 = [SP];
	rts;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP+4];
	R0 = R0.B (Z);
	[SP+4] = R0;
	jump.s .L46;
.L48:
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L46:
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L47;
	nop;
	nop;
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [SP+4];
	cc =R1==R0;
	if !cc jump .L48;
.L47:
	R0 = [SP];
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	P2 = R0;
	[SP+4] = R1;
.L53:
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = [SP+4];
	cc =R1==R0;
	if !cc jump .L51;
	R0 = P2;
	jump.s .L52;
.L51:
	P1 = P2;
	P2 = P1;
	P2 += 1;
	R0 = B [P1] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L53;
	R0 = 0 (X);
.L52:
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L55;
.L57:
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L55:
	P2 = [SP];
	R1 = B [P2] (X);
	P2 = [SP+4];
	R0 = B [P2] (X);
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L56;
	nop;
	nop;
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L57;
	nop;
	nop;
.L56:
	P2 = [SP];
	R0 = B [P2] (X);
	R1 = R0.B (Z);
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R0 = R1 - R0;
	rts;
	.size	_strcmp, .-_strcmp
	.align 4
.global _strlen;
.type _strlen, STT_FUNC;
_strlen:
	SP += -4;
	[SP+4] = R0;
	R0 = [SP+4];
	[SP] = R0;
	jump.s .L60;
.L61:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L60:
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L61;
	R1 = [SP+4];
	R0 = [SP];
	R0 = R1 - R0;
	SP += 4;
	rts;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+8];
	[SP+4] = R0;
	R0 = [SP+12];
	[SP] = R0;
	R0 = [SP+16];
	R1 = R0;
	R1 += -1;
	[SP+16] = R1;
	cc =R0==0;
	if !cc jump .L66;
	R0 = 0 (X);
	jump.s .L65;
.L68:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
.L66:
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L67;
	nop;
	nop;
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L67;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L67;
	nop;
	nop;
	P2 = [SP+4];
	R1 = B [P2] (X);
	P2 = [SP];
	R0 = B [P2] (X);
	R1 = R1.B (Z);
	R0 = R0.B (Z);
	cc =R1==R0;
	if cc jump .L68;
	nop;
	nop;
.L67:
	P2 = [SP+4];
	R0 = B [P2] (X);
	R1 = R0.B (Z);
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R0 = R1 - R0;
.L65:
	SP += 8;
	rts;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+8];
	[SP+4] = R0;
	R0 = [SP+12];
	[SP] = R0;
	jump.s .L70;
.L71:
	R0 = [SP+4];
	P2 = R0;
	P2 += 1;
	R0 = B [P2] (X);
	P2 = [SP];
	B [P2] = R0;
	R0 = [SP];
	P2 = R0;
	P2 += 1;
	P1 = [SP+4];
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP];
	R0 += 2;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 2;
	[SP+4] = R0;
	R0 = [SP+16];
	R0 += -2;
	[SP+16] = R0;
.L70:
	R0 = [SP+16];
	cc =R0<=1;
	if !cc jump .L71;
	nop;
	nop;
	SP += 8;
	rts;
	.size	_swab, .-_swab
	.align 4
.global _isalpha;
.type _isalpha, STT_FUNC;
_isalpha:
	[SP] = R0;
	R0 = [SP];
	BITSET (R0, 5);
	P2 = -97 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	rts;
	.size	_isalpha, .-_isalpha
	.align 4
.global _isascii;
.type _isascii, STT_FUNC;
_isascii:
	[SP] = R0;
	R0 = [SP];
	R1 = 127 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	rts;
	.size	_isascii, .-_isascii
	.align 4
.global _isblank;
.type _isblank, STT_FUNC;
_isblank:
	[SP] = R0;
	R0 = [SP];
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L77;
	R0 = [SP];
	R1 = 9 (X);
	cc =R0==R1;
	if !cc jump .L78;
.L77:
	R0 = 1 (X);
	jump.s .L80;
.L78:
	R0 = 0 (X);
.L80:
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	[SP] = R0;
	R0 = [SP];
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L82;
	R0 = [SP];
	R1 = 127 (X);
	cc =R0==R1;
	if !cc jump .L83;
.L82:
	R0 = 1 (X);
	jump.s .L85;
.L83:
	R0 = 0 (X);
.L85:
	rts;
	.size	_iscntrl, .-_iscntrl
	.align 4
.global _isdigit;
.type _isdigit, STT_FUNC;
_isdigit:
	[SP] = R0;
	R0 = [SP];
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	rts;
	.size	_isdigit, .-_isdigit
	.align 4
.global _isgraph;
.type _isgraph, STT_FUNC;
_isgraph:
	[SP] = R0;
	R0 = [SP];
	R0 += -33;
	R1 = 93 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	rts;
	.size	_isgraph, .-_isgraph
	.align 4
.global _islower;
.type _islower, STT_FUNC;
_islower:
	[SP] = R0;
	R0 = [SP];
	P2 = -97 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	rts;
	.size	_islower, .-_islower
	.align 4
.global _isprint;
.type _isprint, STT_FUNC;
_isprint:
	[SP] = R0;
	R0 = [SP];
	R0 += -32;
	R1 = 94 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	rts;
	.size	_isprint, .-_isprint
	.align 4
.global _isspace;
.type _isspace, STT_FUNC;
_isspace:
	[SP] = R0;
	R0 = [SP];
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L95;
	R0 = [SP];
	R0 += -9;
	cc =R0<=4 (iu);
	if !cc jump .L96;
.L95:
	R0 = 1 (X);
	jump.s .L98;
.L96:
	R0 = 0 (X);
.L98:
	rts;
	.size	_isspace, .-_isspace
	.align 4
.global _isupper;
.type _isupper, STT_FUNC;
_isupper:
	[SP] = R0;
	R0 = [SP];
	P2 = -65 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	rts;
	.size	_isupper, .-_isupper
	.align 4
.global _iswcntrl;
.type _iswcntrl, STT_FUNC;
_iswcntrl:
	[SP] = R0;
	R0 = [SP];
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L102;
	R0 = [SP];
	P2 = -127 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 32 (X);
	cc =R0<=R1 (iu);
	if cc jump .L102;
	R0 = [SP];
	P2 = -8232 (X);
	R1 = P2;
	R0 = R0 + R1;
	cc =R0<=1 (iu);
	if cc jump .L102;
	R0 = [SP];
	P2.H = 65535;
	P2.L = 7;
	R1 = P2;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	if !cc jump .L103;
.L102:
	R0 = 1 (X);
	jump.s .L105;
.L103:
	R0 = 0 (X);
.L105:
	rts;
	.size	_iswcntrl, .-_iswcntrl
	.align 4
.global _iswdigit;
.type _iswdigit, STT_FUNC;
_iswdigit:
	[SP] = R0;
	R0 = [SP];
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	rts;
	.size	_iswdigit, .-_iswdigit
	.align 4
.global _iswprint;
.type _iswprint, STT_FUNC;
_iswprint:
	[SP] = R0;
	R0 = [SP];
	R1 = 254 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L109;
	R0 = [SP];
	R1 = R0;
	R1 += 1;
	R0 = 127 (X);
	R0 = R1 & R0;
	R1 = 32 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	R0 = R0.B (Z);
	jump.s .L110;
.L109:
	R0 = [SP];
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L111;
	R0 = [SP];
	P2 = -8234 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 47061 (Z);
	cc =R0<=R1 (iu);
	if cc jump .L111;
	R0 = [SP];
	P2.H = 65535;
	P2.L = 8192;
	R1 = P2;
	R0 = R0 + R1;
	R1 = 8184 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L112;
.L111:
	R0 = 1 (X);
	jump.s .L110;
.L112:
	R0 = [SP];
	P2 = -16383 (X);
	P2 = P2 << 2;
	R1 = P2;
	R0 = R0 + R1;
	R1 = 3 (X);
	BITSET (R1, 20);
	cc =R0<=R1 (iu);
	if !cc jump .L113;
	R1 = [SP];
	R0 = 65534 (Z);
	R0 = R1 & R0;
	R1 = 65534 (Z);
	cc =R0==R1;
	if !cc jump .L114;
.L113:
	R0 = 0 (X);
	jump.s .L110;
.L114:
	R0 = 1 (X);
.L110:
	rts;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	[SP] = R0;
	R0 = [SP];
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L116;
	R0 = [SP];
	BITSET (R0, 5);
	P2 = -97 (X);
	R1 = P2;
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	if !cc jump .L117;
.L116:
	R0 = 1 (X);
	jump.s .L119;
.L117:
	R0 = 0 (X);
.L119:
	rts;
	.size	_iswxdigit, .-_iswxdigit
	.align 4
.global _toascii;
.type _toascii, STT_FUNC;
_toascii:
	[SP] = R0;
	R1 = [SP];
	R0 = 127 (X);
	R0 = R1 & R0;
	rts;
	.size	_toascii, .-_toascii
	.align 4
.global _fdim;
.type _fdim, STT_FUNC;
_fdim:
	[--SP] = RETS;
	SP += -32;
	[SP+36] = R0;
	[SP+40] = R1;
	[SP+44] = R2;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L134;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L125;
.L134:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+44];
	R1 = [SP+48];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L135;
	R0 = [SP+44];
	R1 = [SP+48];
	jump.s .L125;
.L135:
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L136;
	R0 = [SP+48];
	[SP+12] = R0;
	R2 = [SP+44];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	jump.s .L125;
.L136:
	R0 = 0 (X);
	R1 = 0 (X);
.L125:
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
	.size	_fdim, .-_fdim
	.align 4
.global _fdimf;
.type _fdimf, STT_FUNC;
_fdimf:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+16];
	R0 = [SP+16];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L149;
	R0 = [SP+16];
	jump.s .L140;
.L149:
	R1 = [SP+20];
	R0 = [SP+20];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L150;
	R0 = [SP+20];
	jump.s .L140;
.L150:
	R1 = [SP+20];
	R0 = [SP+16];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L151;
	R1 = [SP+20];
	R0 = [SP+16];
	call ___subsf3;
	jump.s .L140;
.L151:
	R0 = 0 (X);
.L140:
	SP += 12;
	RETS = [SP++];
	rts;
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
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L167;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L155;
.L167:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L168;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L155;
.L168:
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L158;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L159;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L155;
.L159:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L155;
.L158:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L169;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L155;
.L169:
	R0 = [SP+28];
	R1 = [SP+32];
.L155:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+16];
	R0 = [SP+16];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L185;
	R0 = [SP+20];
	jump.s .L173;
.L185:
	R1 = [SP+20];
	R0 = [SP+20];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L186;
	R0 = [SP+16];
	jump.s .L173;
.L186:
	R0 = [SP+16];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L176;
	R0 = [SP+16];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L177;
	R0 = [SP+20];
	jump.s .L173;
.L177:
	R0 = [SP+16];
	jump.s .L173;
.L176:
	R1 = [SP+20];
	R0 = [SP+16];
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L187;
	R0 = [SP+20];
	jump.s .L173;
.L187:
	R0 = [SP+16];
.L173:
	SP += 12;
	RETS = [SP++];
	rts;
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
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L203;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L191;
.L203:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L204;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L191;
.L204:
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L194;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L195;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L191;
.L195:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L191;
.L194:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L205;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L191;
.L205:
	R0 = [SP+28];
	R1 = [SP+32];
.L191:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
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
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L221;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L209;
.L221:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L222;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L209;
.L222:
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L212;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L213;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L209;
.L213:
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L209;
.L212:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L223;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L209;
.L223:
	R0 = [SP+36];
	R1 = [SP+40];
.L209:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+16];
	R0 = [SP+16];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L239;
	R0 = [SP+20];
	jump.s .L227;
.L239:
	R1 = [SP+20];
	R0 = [SP+20];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L240;
	R0 = [SP+16];
	jump.s .L227;
.L240:
	R0 = [SP+16];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L230;
	R0 = [SP+16];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L231;
	R0 = [SP+16];
	jump.s .L227;
.L231:
	R0 = [SP+20];
	jump.s .L227;
.L230:
	R1 = [SP+20];
	R0 = [SP+16];
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L241;
	R0 = [SP+16];
	jump.s .L227;
.L241:
	R0 = [SP+20];
.L227:
	SP += 12;
	RETS = [SP++];
	rts;
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
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L257;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L245;
.L257:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L258;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L245;
.L258:
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+40];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L248;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L249;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L245;
.L249:
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L245;
.L248:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L259;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L245;
.L259:
	R0 = [SP+36];
	R1 = [SP+40];
.L245:
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
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
	SP += -8;
	[SP+8] = R0;
	R0 = [SP+8];
	[SP] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	[SP+4] = R0;
	jump.s .L261;
.L262:
	R1 = [SP];
	R0 = 63 (X);
	R0 = R1 & R0;
	P2.H = _digits;
	P2.L = _digits;
	P1 = R0;
	P2 = P2 + P1;
	R0 = B [P2] (X);
	P2 = [SP+4];
	B [P2] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
	R0 = [SP];
	R0 >>= 6;
	[SP] = R0;
.L261:
	R0 = [SP];
	cc =R0==0;
	if !cc jump .L262;
	P2 = [SP+4];
	R0 = 0 (X);
	B [P2] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	SP += 8;
	rts;
	.size	_l64a, .-_l64a
	.local	_seed
	.comm	_seed,8,4
	.align 4
.global _srand;
.type _srand, STT_FUNC;
_srand:
	[SP] = R0;
	R0 = [SP];
	R0 += -1;
	R1 = R0;
	R0 = 0 (X);
	P2.H = _seed;
	P2.L = _seed;
	[P2] = R1;
	[P2+4] = R0;
	nop;
	rts;
	.size	_srand, .-_srand
	.align 4
.global _rand;
.type _rand, STT_FUNC;
_rand:
	[--SP] = RETS;
	SP += -24;
	P2.H = _seed;
	P2.L = _seed;
	R0 = [P2];
	R1 = [P2+4];
	[SP+16] = R0;
	[SP+20] = R1;
	R0.H = 22609;
	R0.L = 62509;
	[SP+12] = R0;
	R2.H = 19605;
	R2.L = 32557;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___muldi3;
	R2 = R0;
	R0 = R1;
	R3 = R0;
	R1 = R2;
	R1 += 1; cc = ac0;
	R2 = CC;
	R0 = R3;
	R0 = R0 + R2;
	P2.H = _seed;
	P2.L = _seed;
	[P2] = R1;
	[P2+4] = R0;
	P2.H = _seed;
	P2.L = _seed;
	R0 = [P2+4];
	R0 >>= 1;
	SP += 24;
	RETS = [SP++];
	rts;
	.size	_rand, .-_rand
	.align 4
.global _insque;
.type _insque, STT_FUNC;
_insque:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	R0 = [SP+8];
	[SP+4] = R0;
	R0 = [SP+12];
	[SP] = R0;
	R0 = [SP];
	cc =R0==0;
	if !cc jump .L268;
	P2 = [SP+4];
	R0 = 0 (X);
	[P2+4] = R0;
	P2 = [SP+4];
	R0 = [P2+4];
	P2 = [SP+4];
	[P2] = R0;
	jump.s .L267;
.L268:
	P2 = [SP];
	R0 = [P2];
	P2 = [SP+4];
	[P2] = R0;
	P2 = [SP+4];
	R0 = [SP];
	[P2+4] = R0;
	P2 = [SP];
	R0 = [SP+4];
	[P2] = R0;
	P2 = [SP+4];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L267;
	nop;
	nop;
	P2 = [SP+4];
	P2 = [P2];
	R0 = [SP+4];
	[P2+4] = R0;
.L267:
	SP += 8;
	rts;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	SP += -4;
	[SP+4] = R0;
	R0 = [SP+4];
	[SP] = R0;
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L271;
	nop;
	nop;
	P2 = [SP];
	P2 = [P2];
	P1 = [SP];
	R0 = [P1+4];
	[P2+4] = R0;
.L271:
	P2 = [SP];
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L273;
	nop;
	nop;
	P2 = [SP];
	P2 = [P2+4];
	P1 = [SP];
	R0 = [P1];
	[P2] = R0;
.L273:
	nop;
	SP += 4;
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -28;
	[SP+36] = R0;
	[SP+40] = R1;
	[SP+44] = R2;
	R7 = [SP+48];
	R0 = R7;
	R0 += -1;
	[SP+20] = R0;
	R0 = [SP+40];
	[SP+16] = R0;
	P2 = [SP+44];
	R0 = [P2];
	[SP+12] = R0;
	R0 = 0 (X);
	[SP+24] = R0;
	jump.s .L275;
.L278:
	R0 = [SP+24];
	R0 *= R7;
	R1 = [SP+16];
	R1 = R1 + R0;
	P1 = R1;
	P2 = [SP+52];
	R1 = P1;
	R0 = [SP+36];
	call (P2);
	cc =R0==0;
	if !cc jump .L276;
	R0 = [SP+24];
	R0 *= R7;
	R1 = [SP+16];
	R1 = R1 + R0;
	P2 = R1;
	jump.s .L277;
.L276:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
.L275:
	R1 = [SP+24];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L278;
	R0 = [SP+12];
	R0 += 1;
	P2 = [SP+44];
	[P2] = R0;
	R0 = [SP+12];
	R0 *= R7;
	R1 = [SP+16];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [SP+48];
	R2 = R0;
	R1 = [SP+36];
	R0 = P2;
	call _memcpy;
	P2 = R0;
.L277:
	R0 = P2;
	SP += 28;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_lsearch, .-_lsearch
	.align 4
.global _lfind;
.type _lfind, STT_FUNC;
_lfind:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -28;
	[SP+36] = R0;
	[SP+40] = R1;
	[SP+44] = R2;
	R7 = [SP+48];
	R0 = R7;
	R0 += -1;
	[SP+20] = R0;
	R0 = [SP+40];
	[SP+16] = R0;
	P2 = [SP+44];
	R0 = [P2];
	[SP+12] = R0;
	R0 = 0 (X);
	[SP+24] = R0;
	jump.s .L280;
.L283:
	R0 = [SP+24];
	R0 *= R7;
	R1 = [SP+16];
	R1 = R1 + R0;
	P1 = R1;
	P2 = [SP+52];
	R1 = P1;
	R0 = [SP+36];
	call (P2);
	cc =R0==0;
	if !cc jump .L281;
	R0 = [SP+24];
	R0 *= R7;
	R1 = [SP+16];
	R1 = R1 + R0;
	P2 = R1;
	jump.s .L282;
.L281:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
.L280:
	R1 = [SP+24];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L283;
	P2 = 0 (X);
.L282:
	R0 = P2;
	SP += 28;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_lfind, .-_lfind
	.align 4
.global _abs;
.type _abs, STT_FUNC;
_abs:
	nop;
	[SP] = R0;
	R0 = [SP];
	R0 = abs R0;
	rts;
	.size	_abs, .-_abs
	.align 4
.global _atoi;
.type _atoi, STT_FUNC;
_atoi:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	R0 = 0 (X);
	[SP+16] = R0;
	R0 = 0 (X);
	[SP+12] = R0;
	jump.s .L287;
.L288:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
.L287:
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L288;
	nop;
	nop;
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L289;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L291;
	R0 = 1 (X);
	[SP+12] = R0;
.L289:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
	jump.s .L291;
.L292:
	R1 = [SP+16];
	R0 = R1;
	R0 <<= 2;
	R0 = R0 + R1;
	R0 <<= 1;
	R1 = R0;
	P2 = [SP+24];
	R0 = P2;
	R0 += 1;
	[SP+24] = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R0 = R1 - R0;
	[SP+16] = R0;
.L291:
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L292;
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L293;
	R0 = [SP+16];
	R0 = -R0;
	jump.s .L295;
.L293:
	R0 = [SP+16];
.L295:
	SP += 20;
	RETS = [SP++];
	rts;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	R0 = 0 (X);
	[SP+16] = R0;
	R0 = 0 (X);
	[SP+12] = R0;
	jump.s .L297;
.L298:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
.L297:
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L298;
	nop;
	nop;
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L299;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L301;
	R0 = 1 (X);
	[SP+12] = R0;
.L299:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
	jump.s .L301;
.L302:
	R1 = [SP+16];
	R0 = R1;
	R0 <<= 2;
	R0 = R0 + R1;
	R0 <<= 1;
	R1 = R0;
	P2 = [SP+24];
	R0 = P2;
	R0 += 1;
	[SP+24] = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R0 = R1 - R0;
	[SP+16] = R0;
.L301:
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L302;
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L303;
	R0 = [SP+16];
	R0 = -R0;
	jump.s .L305;
.L303:
	R0 = [SP+16];
.L305:
	SP += 20;
	RETS = [SP++];
	rts;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -28;
	[SP+40] = R0;
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+20] = R0;
	[SP+24] = R1;
	R0 = 0 (X);
	[SP+16] = R0;
	jump.s .L307;
.L308:
	R0 = [SP+40];
	R0 += 1;
	[SP+40] = R0;
.L307:
	P2 = [SP+40];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L308;
	nop;
	nop;
	P2 = [SP+40];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L309;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L311;
	R0 = 1 (X);
	[SP+16] = R0;
.L309:
	R0 = [SP+40];
	R0 += 1;
	[SP+40] = R0;
	jump.s .L311;
.L312:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 10 (X);
	R0 = [SP+20];
	R1 = [SP+24];
	call ___muldi3;
	R2 = R0;
	R0 = R1;
	R7 = R2;
	R6 = R0;
	P2 = [SP+40];
	R0 = P2;
	R0 += 1;
	[SP+40] = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = R0;
	R1 >>>= 31;
	R3 = R7 - R0; cc = ac0;
	CC = ! CC;
	R7 = CC;
	R2 = R6 - R1;
	R2 = R2 - R7;
	[SP+20] = R3;
	[SP+24] = R2;
.L311:
	P2 = [SP+40];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L312;
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L313;
	R6 = 0 (X);
	R7 = 0 (X);
	R2 = [SP+20];
	R3 = [SP+24];
	R1 = R6 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R0 = R7 - R3;
	R0 = R0 - R2;
	jump.s .L315;
.L313:
	R1 = [SP+20];
	R0 = [SP+24];
.L315:
	R2 = R1;
	R1 = R0;
	R0 = R2;
	SP += 28;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	[SP+32] = R2;
	jump.s .L317;
.L322:
	R0 = [SP+32];
	R1 = R0 >> 1;
	R0 = [SP+36];
	R0 *= R1;
	R1 = [SP+28];
	R0 = R1 + R0;
	[SP+16] = R0;
	R0 = [SP+16];
	P2 = [SP+40];
	R1 = R0;
	R0 = [SP+24];
	call (P2);
	[SP+12] = R0;
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L318;
	R0 = [SP+32];
	R0 >>= 1;
	[SP+32] = R0;
	jump.s .L317;
.L318:
	R0 = [SP+12];
	cc =R0<=0;
	if cc jump .L320;
	R1 = [SP+16];
	R0 = [SP+36];
	R0 = R1 + R0;
	[SP+28] = R0;
	R0 = [SP+32];
	R0 >>= 1;
	R1 = [SP+32];
	R0 = R1 - R0;
	R0 += -1;
	[SP+32] = R0;
	jump.s .L317;
.L320:
	R0 = [SP+16];
	jump.s .L321;
.L317:
	R0 = [SP+32];
	cc =R0==0;
	if !cc jump .L322;
	R0 = 0 (X);
.L321:
	SP += 20;
	RETS = [SP++];
	rts;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--SP] = RETS;
	SP += -28;
	[SP+32] = R0;
	[SP+36] = R1;
	[SP+40] = R2;
	R0 = [SP+36];
	[SP+24] = R0;
	R0 = [SP+40];
	[SP+20] = R0;
	jump.s .L324;
.L328:
	R0 = [SP+20];
	R0 >>>= 1;
	R1 = R0;
	R0 = [SP+44];
	R0 *= R1;
	R1 = [SP+24];
	R0 = R1 + R0;
	[SP+16] = R0;
	R1 = [SP+52];
	R0 = [SP+16];
	P2 = [SP+48];
	R2 = R1;
	R1 = R0;
	R0 = [SP+32];
	call (P2);
	[SP+12] = R0;
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L325;
	R0 = [SP+16];
	jump.s .L326;
.L325:
	R0 = [SP+12];
	cc =R0<=0;
	if cc jump .L327;
	R1 = [SP+16];
	R0 = [SP+44];
	R0 = R1 + R0;
	[SP+24] = R0;
	R0 = [SP+20];
	R0 += -1;
	[SP+20] = R0;
.L327:
	R0 = [SP+20];
	R0 >>>= 1;
	[SP+20] = R0;
.L324:
	R0 = [SP+20];
	cc =R0==0;
	if !cc jump .L328;
	R0 = 0 (X);
.L326:
	SP += 28;
	RETS = [SP++];
	rts;
	.size	_bsearch_r, .-_bsearch_r
	.align 4
.global _div;
.type _div, STT_FUNC;
_div:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	[SP+20] = R0;
	[SP+24] = R1;
	R1 = [SP+24];
	R0 = [SP+20];
	call ___divsi3;
	R7 = R0;
	R0 = [SP+20];
	R1 = [SP+24];
	call ___modsi3;
	R1 = R7;
	R2 = R1;
	R1 = R0;
	R0 = R2;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_div, .-_div
	.align 4
.global _imaxabs;
.type _imaxabs, STT_FUNC;
_imaxabs:
	[--sp] = ( r7:6 );

	[SP+8] = R0;
	[SP+12] = R1;
	R2 = [SP+8];
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L332;
	R7 = 0 (X);
	R3 = 0 (X);
	R6 = R7 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R3 - R0;
	R1 = R1 - R2;
	R2 = R6;
	R0 = R1;
.L332:
	R1 = R2;
	R2 = R1;
	R1 = R0;
	R0 = R2;
	( r7:6 ) = [sp++];

	rts;
	.size	_imaxabs, .-_imaxabs
	.align 4
.global _imaxdiv;
.type _imaxdiv, STT_FUNC;
_imaxdiv:
	[--sp] = ( r7:7 );

	[--SP] = R4;
	[--SP] = R5;
	[--SP] = RETS;
	SP += -56;
	R7 = P0;
	[SP+72] = R0;
	[SP+76] = R1;
	[SP+80] = R2;
	R0 = [SP+84];
	[SP+12] = R0;
	R2 = [SP+80];
	R0 = [SP+72];
	R1 = [SP+76];
	call ___divdi3;
	[SP+32] = R0;
	[SP+36] = R1;
	R4 = [SP+32];
	R5 = [SP+36];
	R0 = [SP+72];
	R1 = [SP+76];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+84];
	[SP+12] = R0;
	R2 = [SP+80];
	R0 = [SP+24];
	R1 = [SP+28];
	call ___moddi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	P2 = R7;
	[P2] = R4;
	[P2+4] = R5;
	P2 = R7;
	[P2+8] = R0;
	[P2+12] = R1;
	R0 = R7;
	SP += 56;
	RETS = [SP++];
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_imaxdiv, .-_imaxdiv
	.align 4
.global _labs;
.type _labs, STT_FUNC;
_labs:
	nop;
	[SP] = R0;
	R0 = [SP];
	R0 = abs R0;
	rts;
	.size	_labs, .-_labs
	.align 4
.global _ldiv;
.type _ldiv, STT_FUNC;
_ldiv:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	[SP+20] = R0;
	[SP+24] = R1;
	R1 = [SP+24];
	R0 = [SP+20];
	call ___divsi3;
	R7 = R0;
	R0 = [SP+20];
	R1 = [SP+24];
	call ___modsi3;
	R1 = R7;
	R2 = R1;
	R1 = R0;
	R0 = R2;
	SP += 12;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_ldiv, .-_ldiv
	.align 4
.global _llabs;
.type _llabs, STT_FUNC;
_llabs:
	[--sp] = ( r7:6 );

	[SP+8] = R0;
	[SP+12] = R1;
	R2 = [SP+8];
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L342;
	R7 = 0 (X);
	R3 = 0 (X);
	R6 = R7 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R3 - R0;
	R1 = R1 - R2;
	R2 = R6;
	R0 = R1;
.L342:
	R1 = R2;
	R2 = R1;
	R1 = R0;
	R0 = R2;
	( r7:6 ) = [sp++];

	rts;
	.size	_llabs, .-_llabs
	.align 4
.global _lldiv;
.type _lldiv, STT_FUNC;
_lldiv:
	[--sp] = ( r7:7 );

	[--SP] = R4;
	[--SP] = R5;
	[--SP] = RETS;
	SP += -56;
	R7 = P0;
	[SP+72] = R0;
	[SP+76] = R1;
	[SP+80] = R2;
	R0 = [SP+84];
	[SP+12] = R0;
	R2 = [SP+80];
	R0 = [SP+72];
	R1 = [SP+76];
	call ___divdi3;
	[SP+32] = R0;
	[SP+36] = R1;
	R4 = [SP+32];
	R5 = [SP+36];
	R0 = [SP+72];
	R1 = [SP+76];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+84];
	[SP+12] = R0;
	R2 = [SP+80];
	R0 = [SP+24];
	R1 = [SP+28];
	call ___moddi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	P2 = R7;
	[P2] = R4;
	[P2+4] = R5;
	P2 = R7;
	[P2+8] = R0;
	[P2+12] = R1;
	R0 = R7;
	SP += 56;
	RETS = [SP++];
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_lldiv, .-_lldiv
	.align 4
.global _wcschr;
.type _wcschr, STT_FUNC;
_wcschr:
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L348;
.L350:
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
.L348:
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L349;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	R1 = [SP+4];
	cc =R1==R0;
	if !cc jump .L350;
	nop;
	nop;
.L349:
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L351;
	R0 = [SP];
	jump.s .L353;
.L351:
	R0 = 0 (X);
.L353:
	rts;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L355;
.L357:
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 4;
	[SP+4] = R0;
.L355:
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1==R0;
	if !cc jump .L356;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L356;
	nop;
	nop;
	P2 = [SP+4];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L357;
	nop;
	nop;
.L356:
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L358;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	P2 = [SP+4];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L360;
.L358:
	R0 = -1 (X);
.L360:
	rts;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	R0 = [SP+4];
	[SP] = R0;
	nop;
.L362:
	P1 = [SP+8];
	R0 = P1;
	R0 += 4;
	[SP+8] = R0;
	P2 = [SP+4];
	R0 = P2;
	R0 += 4;
	[SP+4] = R0;
	R0 = [P1];
	[P2] = R0;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L362;
	R0 = [SP];
	SP += 4;
	rts;
	.size	_wcscpy, .-_wcscpy
	.align 4
.global _wcslen;
.type _wcslen, STT_FUNC;
_wcslen:
	SP += -4;
	[SP+4] = R0;
	R0 = [SP+4];
	[SP] = R0;
	jump.s .L365;
.L366:
	R0 = [SP+4];
	R0 += 4;
	[SP+4] = R0;
.L365:
	P2 = [SP+4];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L366;
	R1 = [SP+4];
	R0 = [SP];
	R0 = R1 - R0;
	R0 >>>= 2;
	SP += 4;
	rts;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[SP] = R0;
	[SP+4] = R1;
	[SP+8] = R2;
	jump.s .L369;
.L371:
	R0 = [SP+8];
	R0 += -1;
	[SP+8] = R0;
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 4;
	[SP+4] = R0;
.L369:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L370;
	nop;
	nop;
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1==R0;
	if !cc jump .L370;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L370;
	nop;
	nop;
	P2 = [SP+4];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L371;
.L370:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L372;
	nop;
	nop;
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L373;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	P2 = [SP+4];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L376;
.L373:
	R0 = -1 (X);
	jump.s .L376;
.L372:
	R0 = 0 (X);
.L376:
	rts;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	[SP] = R0;
	[SP+4] = R1;
	[SP+8] = R2;
	jump.s .L378;
.L380:
	R0 = [SP+8];
	R0 += -1;
	[SP+8] = R0;
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
.L378:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L379;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	R1 = [SP+4];
	cc =R1==R0;
	if !cc jump .L380;
.L379:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L381;
	R0 = [SP];
	jump.s .L383;
.L381:
	R0 = 0 (X);
.L383:
	rts;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[SP] = R0;
	[SP+4] = R1;
	[SP+8] = R2;
	jump.s .L385;
.L387:
	R0 = [SP+8];
	R0 += -1;
	[SP+8] = R0;
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 4;
	[SP+4] = R0;
.L385:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L386;
	nop;
	nop;
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1==R0;
	if cc jump .L387;
.L386:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L388;
	nop;
	nop;
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L389;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	P2 = [SP+4];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L392;
.L389:
	R0 = -1 (X);
	jump.s .L392;
.L388:
	R0 = 0 (X);
.L392:
	rts;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+4];
	[SP] = R0;
	jump.s .L394;
.L395:
	P1 = [SP+8];
	R0 = P1;
	R0 += 4;
	[SP+8] = R0;
	P2 = [SP+4];
	R0 = P2;
	R0 += 4;
	[SP+4] = R0;
	R0 = [P1];
	[P2] = R0;
.L394:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L395;
	R0 = [SP];
	SP += 4;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+4];
	[SP] = R0;
	R1 = [SP+4];
	R0 = [SP+8];
	cc =R1==R0;
	if !cc jump .L398;
	R0 = [SP+4];
	jump.s .L399;
.L398:
	R1 = [SP+4];
	R0 = [SP+8];
	R1 = R1 - R0;
	R0 = [SP+12];
	R0 <<= 2;
	cc =R1<R0 (iu);
	if !cc jump .L404;
	jump.s .L401;
.L402:
	R0 = [SP+12];
	R0 <<= 2;
	R1 = [SP+8];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [SP+12];
	R0 <<= 2;
	R1 = [SP+4];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [P1];
	[P2] = R0;
.L401:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L402;
	jump.s .L403;
.L405:
	P1 = [SP+8];
	R0 = P1;
	R0 += 4;
	[SP+8] = R0;
	P2 = [SP+4];
	R0 = P2;
	R0 += 4;
	[SP+4] = R0;
	R0 = [P1];
	[P2] = R0;
.L404:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L405;
.L403:
	R0 = [SP];
.L399:
	SP += 4;
	rts;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+4];
	[SP] = R0;
	jump.s .L407;
.L408:
	P2 = [SP+4];
	R0 = P2;
	R0 += 4;
	[SP+4] = R0;
	R0 = [SP+8];
	[P2] = R0;
.L407:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L408;
	R0 = [SP];
	SP += 4;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+8];
	[SP+4] = R0;
	R0 = [SP+12];
	[SP] = R0;
	R1 = [SP+4];
	R0 = [SP];
	cc =R1<R0 (iu);
	if !cc jump .L411;
	R1 = [SP+4];
	R0 = [SP+16];
	R0 = R1 + R0;
	[SP+4] = R0;
	R1 = [SP];
	R0 = [SP+16];
	R0 = R1 + R0;
	[SP] = R0;
	jump.s .L412;
.L413:
	R0 = [SP+4];
	R0 += -1;
	[SP+4] = R0;
	R0 = [SP];
	R0 += -1;
	[SP] = R0;
	P2 = [SP+4];
	R0 = B [P2] (X);
	P2 = [SP];
	B [P2] = R0;
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
.L412:
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L413;
	jump.s .L417;
.L411:
	R1 = [SP+4];
	R0 = [SP];
	cc =R1==R0;
	if cc jump .L417;
	jump.s .L415;
.L416:
	P1 = [SP+4];
	R0 = P1;
	R0 += 1;
	[SP+4] = R0;
	P2 = [SP];
	R0 = P2;
	R0 += 1;
	[SP] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
.L415:
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L416;
.L417:
	nop;
	SP += 8;
	rts;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4 );

	SP += -24;
	[SP+40] = R0;
	[SP+44] = R1;
	[SP+48] = R2;
	R0 = [SP+40];
	[SP] = R0;
	R2 = [SP+44];
	R1 = [SP+48];
	R7 = R1;
	R7 += -32;
	R5 = [SP];
	R5 <<= R7;
	R6 = 0 (X);
	R3 = [SP];
	R3 >>= 1;
	R4 = 31 (X);
	R1 = [SP+48];
	R1 = R4 - R1;
	R3 >>= R1;
	R4 = [SP+48];
	R1 = R2;
	R1 <<= R4;
	R1 = R3 | R1;
	R4 = [SP+48];
	R3 = [SP];
	R3 <<= R4;
	cc =R7<0;
	if !cc R1 = R5;
	cc =R7<0;
	if !cc R3 = R6;
	R7 = [SP+48];
	R7 = -R7;
	R6 = 63 (X);
	R7 = R7 & R6;
	R7 += -32;
	R4 = R2;
	R4 >>= R7;
	R5 = 0 (X);
	R6 = R2 << 1;
	[SP+20] = R6;
	P2 = 31 (X);
	R6 = [SP+48];
	R6 = -R6;
	R0 = 63 (X);
	[SP+16] = R0;
	R0 = [SP+16];
	R6 = R6 & R0;
	R0 = P2;
	R6 = R0 - R6;
	R0 = [SP+20];
	R0 <<= R6;
	[SP+12] = R0;
	R6 = [SP+48];
	R6 = -R6;
	R0 = 63 (X);
	[SP+8] = R0;
	R0 = [SP+8];
	R6 = R6 & R0;
	R0 = [SP];
	R0 >>= R6;
	[SP] = R0;
	R0 = [SP];
	R6 = [SP+12];
	R0 = R6 | R0;
	[SP] = R0;
	R6 = [SP+48];
	R6 = -R6;
	R0 = 63 (X);
	[SP+4] = R0;
	R0 = [SP+4];
	R6 = R6 & R0;
	R2 >>= R6;
	cc =R7<0;
	R6 = [SP];
	if !cc R6 = R4;
	[SP] = R6;
	cc =R7<0;
	if !cc R2 = R5;
	R0 = [SP];
	R6 = R3 | R0;
	R7 = R1 | R2;
	[SP] = R6;
	R2 = R7;
	R0 = [SP];
	R1 = R2;
	SP += 24;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotl64, .-_rotl64
	.align 4
.global _rotr64;
.type _rotr64, STT_FUNC;
_rotr64:
	[--sp] = ( r7:4 );

	SP += -24;
	[SP+40] = R0;
	[SP+44] = R1;
	[SP+48] = R2;
	R2 = [SP+40];
	R0 = [SP+44];
	[SP] = R0;
	R1 = [SP+48];
	R7 = R1;
	R7 += -32;
	R5 = [SP];
	R5 >>= R7;
	R6 = 0 (X);
	R3 = [SP];
	R3 <<= 1;
	R4 = 31 (X);
	R1 = [SP+48];
	R1 = R4 - R1;
	R3 <<= R1;
	R4 = [SP+48];
	R1 = R2;
	R1 >>= R4;
	R1 = R3 | R1;
	R4 = [SP+48];
	R3 = [SP];
	R3 >>= R4;
	cc =R7<0;
	if !cc R1 = R5;
	cc =R7<0;
	if !cc R3 = R6;
	R7 = [SP+48];
	R7 = -R7;
	R6 = 63 (X);
	R7 = R7 & R6;
	R7 += -32;
	R4 = R2;
	R4 <<= R7;
	R5 = 0 (X);
	R6 = R2 >> 1;
	[SP+20] = R6;
	P2 = 31 (X);
	R6 = [SP+48];
	R6 = -R6;
	R0 = 63 (X);
	[SP+16] = R0;
	R0 = [SP+16];
	R6 = R6 & R0;
	R0 = P2;
	R6 = R0 - R6;
	R0 = [SP+20];
	R0 >>= R6;
	[SP+12] = R0;
	R6 = [SP+48];
	R6 = -R6;
	R0 = 63 (X);
	[SP+8] = R0;
	R0 = [SP+8];
	R6 = R6 & R0;
	R0 = [SP];
	R0 <<= R6;
	[SP] = R0;
	R0 = [SP];
	R6 = [SP+12];
	R0 = R6 | R0;
	[SP] = R0;
	R6 = [SP+48];
	R6 = -R6;
	R0 = 63 (X);
	[SP+4] = R0;
	R0 = [SP+4];
	R6 = R6 & R0;
	R2 <<= R6;
	cc =R7<0;
	R6 = [SP];
	if !cc R6 = R4;
	[SP] = R6;
	cc =R7<0;
	if !cc R2 = R5;
	R6 = R1 | R2;
	R0 = [SP];
	R7 = R3 | R0;
	R2 = R6;
	[SP] = R7;
	R1 = [SP];
	R0 = R2;
	SP += 24;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotr64, .-_rotr64
	.align 4
.global _rotl32;
.type _rotl32, STT_FUNC;
_rotl32:
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	R2 = R0;
	R2 <<= R1;
	R1 = [SP+4];
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
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	R2 = R0;
	R2 >>= R1;
	R1 = [SP+4];
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
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	R2 = R0;
	R2 <<= R1;
	R1 = [SP+4];
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
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	R2 = R0;
	R2 >>= R1;
	R1 = [SP+4];
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
	W [SP] = R0;
	[SP+4] = R1;
	R1 = W [SP] (Z);
	R0 = [SP+4];
	R1 <<= R0;
	R3 = R1;
	R1 = W [SP] (Z);
	R2 = 16 (X);
	R0 = [SP+4];
	R0 = R2 - R0;
	R1 >>= R0;
	R0 = R1;
	R0 = R3 | R0;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	W [SP] = R0;
	[SP+4] = R1;
	R1 = W [SP] (Z);
	R0 = [SP+4];
	R1 >>= R0;
	R3 = R1;
	R1 = W [SP] (Z);
	R2 = 16 (X);
	R0 = [SP+4];
	R0 = R2 - R0;
	R1 <<= R0;
	R0 = R1;
	R0 = R3 | R0;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	B [SP] = R0;
	[SP+4] = R1;
	R1 = B [SP] (Z);
	R0 = [SP+4];
	R1 <<= R0;
	R3 = R1;
	R1 = B [SP] (Z);
	R2 = 8 (X);
	R0 = [SP+4];
	R0 = R2 - R0;
	R1 >>= R0;
	R0 = R1;
	R0 = R3 | R0;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	B [SP] = R0;
	[SP+4] = R1;
	R1 = B [SP] (Z);
	R0 = [SP+4];
	R1 >>= R0;
	R3 = R1;
	R1 = B [SP] (Z);
	R2 = 8 (X);
	R0 = [SP+4];
	R0 = R2 - R0;
	R1 <<= R0;
	R0 = R1;
	R0 = R3 | R0;
	rts;
	.size	_rotr8, .-_rotr8
	.align 4
.global _bswap_16;
.type _bswap_16, STT_FUNC;
_bswap_16:
	SP += -4;
	W [SP+4] = R0;
	R0 = 255 (X);
	[SP] = R0;
	R1 = W [SP+4] (Z);
	R0 = [SP];
	R0 <<= 8;
	R0 = R1 & R0;
	R0 >>= 8;
	R1 = R0;
	R0 = [SP];
	R2 = R0;
	R0 = W [SP+4] (X);
	R0 = R0 & R2;
	R0 <<= 8;
	R0 = R1 | R0;
	SP += 4;
	rts;
	.size	_bswap_16, .-_bswap_16
	.align 4
.global _bswap_32;
.type _bswap_32, STT_FUNC;
_bswap_32:
	SP += -4;
	[SP+4] = R0;
	R0 = 255 (X);
	[SP] = R0;
	R0 = [SP];
	R1 = R0 << 24;
	R0 = [SP+4];
	R0 = R1 & R0;
	R1 = R0 >> 24;
	R0 = [SP];
	R2 = R0 << 16;
	R0 = [SP+4];
	R0 = R2 & R0;
	R0 >>= 8;
	R1 = R1 | R0;
	R0 = [SP];
	R2 = R0 << 8;
	R0 = [SP+4];
	R0 = R2 & R0;
	R0 <<= 8;
	R1 = R1 | R0;
	R2 = [SP+4];
	R0 = [SP];
	R0 = R2 & R0;
	R0 <<= 24;
	R0 = R1 | R0;
	SP += 4;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:6 );

	SP += -8;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = 255 (X);
	R1 = 0 (X);
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = R0 << 24;
	R0 = [SP+20];
	R0 = R1 & R0;
	R7 = R0 >> 24;
	R1 = 0 (X);
	R0 = [SP];
	R2 = R0 << 16;
	R0 = [SP+20];
	R0 = R2 & R0;
	R3 = R0 >> 8;
	R0 = 0 (X);
	R6 = R7 | R3;
	R2 = R1 | R0;
	R0 = [SP];
	R3 = R0 << 8;
	R7 = 0 (X);
	R0 = [SP+16];
	R0 = R7 & R0;
	R1 = [SP+20];
	R1 = R3 & R1;
	R3 = R1 << 8;
	R0 >>= 24;
	R0 = R3 | R0;
	R1 >>= 24;
	R7 = R6 | R0;
	R3 = R2 | R1;
	R0 = [SP];
	R2 = R0 << 0;
	R6 = 0 (X);
	R0 = [SP+16];
	R0 = R6 & R0;
	R1 = [SP+20];
	R1 = R2 & R1;
	R2 = R1 << 24;
	R0 >>= 8;
	R0 = R2 | R0;
	R1 >>= 8;
	R6 = R7 | R0;
	R2 = R3 | R1;
	R0 = [SP];
	R1 = R0 >> 8;
	R0 = [SP+4];
	R0 <<= 24;
	R0 = R1 | R0;
	R1 = [SP];
	R3 = R1 << 24;
	R1 = [SP+16];
	R1 = R3 & R1;
	R3 = [SP+20];
	R7 = R0 & R3;
	R3 = R1 >> 24;
	R0 = R7 << 8;
	R0 = R3 | R0;
	R1 <<= 8;
	R7 = R6 | R1;
	R3 = R2 | R0;
	R0 = [SP];
	R1 = R0 >> 16;
	R0 = [SP+4];
	R0 <<= 16;
	R0 = R1 | R0;
	R1 = [SP];
	R2 = R1 << 16;
	R1 = [SP+16];
	R1 = R2 & R1;
	R2 = [SP+20];
	R6 = R0 & R2;
	R2 = R1 >> 8;
	R0 = R6 << 24;
	R0 = R2 | R0;
	R1 <<= 24;
	R6 = R7 | R1;
	R2 = R3 | R0;
	R0 = [SP];
	R1 = R0 << 8;
	R0 = [SP+16];
	R0 = R1 & R0;
	R0 <<= 8;
	R7 = 0 (X);
	R3 = R6 | R7;
	R1 = R2 | R0;
	R2 = [SP+16];
	R0 = [SP];
	R0 = R2 & R0;
	R0 <<= 24;
	R2 = 0 (X);
	R6 = R3 | R2;
	R7 = R1 | R0;
	R0 = R6;
	R1 = R7;
	SP += 8;
	( r7:6 ) = [sp++];

	rts;
	.size	_bswap_64, .-_bswap_64
	.align 4
.global _ffs;
.type _ffs, STT_FUNC;
_ffs:
	SP += -4;
	[SP+4] = R0;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L445;
.L448:
	R1 = [SP+4];
	R0 = [SP];
	R1 >>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L446;
	R0 = [SP];
	R0 += 1;
	jump.s .L447;
.L446:
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L445:
	R0 = [SP];
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L448;
	R0 = 0 (X);
.L447:
	SP += 4;
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	[--sp] = ( r7:7 );

	cc =R0==0;
	if !cc jump .L450;
	R0 = 0 (X);
	jump.s .L451;
.L450:
	R7 = 1 (X);
	jump.s .L452;
.L453:
	R0 >>>= 1;
	R7 += 1;
.L452:
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if cc jump .L453;
	R0 = R7;
.L451:
	( r7:7 ) = [sp++];

	rts;
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 4
.global _gl_isinff;
.type _gl_isinff, STT_FUNC;
_gl_isinff:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	R1 = -1 (X);
	R1.H = 65407;
	R0 = [SP+16];
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L455;
	R1 = -1 (X);
	R1.H = 32639;
	R0 = [SP+16];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L460;
.L455:
	R0 = 1 (X);
	jump.s .L459;
.L460:
	R0 = 0 (X);
.L459:
	SP += 12;
	RETS = [SP++];
	rts;
	.size	_gl_isinff, .-_gl_isinff
	.align 4
.global _gl_isinfd;
.type _gl_isinfd, STT_FUNC;
_gl_isinfd:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	R0 = -1 (X);
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+20];
	R1 = [SP+24];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L462;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+20];
	R1 = [SP+24];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L467;
.L462:
	R0 = 1 (X);
	jump.s .L466;
.L467:
	R0 = 0 (X);
.L466:
	SP += 16;
	RETS = [SP++];
	rts;
	.size	_gl_isinfd, .-_gl_isinfd
	.align 4
.global _gl_isinfl;
.type _gl_isinfl, STT_FUNC;
_gl_isinfl:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	R0 = -1 (X);
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+20];
	R1 = [SP+24];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L469;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+20];
	R1 = [SP+24];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L474;
.L469:
	R0 = 1 (X);
	jump.s .L473;
.L474:
	R0 = 0 (X);
.L473:
	SP += 16;
	RETS = [SP++];
	rts;
	.size	_gl_isinfl, .-_gl_isinfl
	.align 4
.global __Qp_itoq;
.type __Qp_itoq, STT_FUNC;
__Qp_itoq:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+28];
	call ___floatsidf;
	[SP+12] = R0;
	[SP+16] = R1;
	P2 = [SP+24];
	R0 = [SP+12];
	R1 = [SP+16];
	[P2] = R0;
	[P2+4] = R1;
	nop;
	SP += 20;
	RETS = [SP++];
	rts;
	.size	__Qp_itoq, .-__Qp_itoq
	.align 4
.global _ldexpf;
.type _ldexpf, STT_FUNC;
_ldexpf:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	R1 = [SP+20];
	R0 = [SP+20];
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L477;
	R0 = [SP+20];
	R1 = R0;
	call ___addsf3;
	R1 = R0;
	R0 = [SP+20];
	call ___nesf2;
	cc =R0==0;
	if cc jump .L477;
	R0 = [SP+24];
	cc =R0<0;
	if !cc jump .L479;
	R0 = 63 (X);
	R0 <<= 24;
	jump.s .L480;
.L479:
	R0 = 1 (X);
	R0 <<= 30;
.L480:
	[SP+12] = R0;
.L483:
	R1 = [SP+24];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L481;
	R1 = [SP+12];
	R0 = [SP+20];
	call ___mulsf3;
	[SP+20] = R0;
.L481:
	R0 = [SP+24];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+24] = R0;
	R0 = [SP+24];
	cc =R0==0;
	if cc jump .L486;
	R1 = [SP+12];
	R0 = [SP+12];
	call ___mulsf3;
	[SP+12] = R0;
	jump.s .L483;
.L486:
	nop;
.L477:
	R0 = [SP+20];
	SP += 16;
	RETS = [SP++];
	rts;
	.size	_ldexpf, .-_ldexpf
	.align 4
.global _ldexp;
.type _ldexp, STT_FUNC;
_ldexp:
	[--SP] = RETS;
	SP += -60;
	SP += -4;
	[SP+68] = R0;
	[SP+72] = R1;
	[SP+76] = R2;
	R0 = [SP+72];
	[SP+12] = R0;
	R2 = [SP+68];
	R0 = [SP+68];
	R1 = [SP+72];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L488;
	R0 = [SP+68];
	R1 = [SP+72];
	[SP+40] = R0;
	[SP+44] = R1;
	R0 = [SP+44];
	[SP+12] = R0;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___adddf3;
	[SP+32] = R0;
	[SP+36] = R1;
	R0 = [SP+32];
	R1 = [SP+36];
	R2 = R1;
	[SP+12] = R2;
	R2 = R0;
	R0 = [SP+68];
	R1 = [SP+72];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L488;
	R0 = [SP+76];
	cc =R0<0;
	if !cc jump .L490;
	R0 = 0 (X);
	R1 = 511 (X);
	R1 <<= 21;
	jump.s .L491;
.L490:
	R0 = 0 (X);
	R1 = 1 (X);
	R1 <<= 30;
.L491:
	[SP+56] = R0;
	[SP+60] = R1;
.L494:
	R1 = [SP+76];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L492;
	R0 = [SP+60];
	[SP+12] = R0;
	R2 = [SP+56];
	R0 = [SP+68];
	R1 = [SP+72];
	call ___muldf3;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	[SP+68] = R0;
	[SP+72] = R1;
.L492:
	R0 = [SP+76];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+76] = R0;
	R0 = [SP+76];
	cc =R0==0;
	if cc jump .L497;
	R0 = [SP+60];
	[SP+12] = R0;
	R2 = [SP+56];
	R0 = [SP+56];
	R1 = [SP+60];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+56] = R0;
	[SP+60] = R1;
	jump.s .L494;
.L497:
	nop;
.L488:
	R0 = [SP+68];
	R1 = [SP+72];
	[SP+48] = R0;
	[SP+52] = R1;
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 60;
	SP += 4;
	RETS = [SP++];
	rts;
	.size	_ldexp, .-_ldexp
	.align 4
.global _ldexpl;
.type _ldexpl, STT_FUNC;
_ldexpl:
	[--SP] = RETS;
	SP += -60;
	SP += -4;
	[SP+68] = R0;
	[SP+72] = R1;
	[SP+76] = R2;
	R0 = [SP+72];
	[SP+12] = R0;
	R2 = [SP+68];
	R0 = [SP+68];
	R1 = [SP+72];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L499;
	R0 = [SP+68];
	R1 = [SP+72];
	[SP+40] = R0;
	[SP+44] = R1;
	R0 = [SP+44];
	[SP+12] = R0;
	R2 = [SP+40];
	R0 = [SP+40];
	R1 = [SP+44];
	call ___adddf3;
	[SP+32] = R0;
	[SP+36] = R1;
	R0 = [SP+32];
	R1 = [SP+36];
	R2 = R1;
	[SP+12] = R2;
	R2 = R0;
	R0 = [SP+68];
	R1 = [SP+72];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L499;
	R0 = [SP+76];
	cc =R0<0;
	if !cc jump .L501;
	R0 = 0 (X);
	R1 = 511 (X);
	R1 <<= 21;
	jump.s .L502;
.L501:
	R0 = 0 (X);
	R1 = 1 (X);
	R1 <<= 30;
.L502:
	[SP+56] = R0;
	[SP+60] = R1;
.L505:
	R1 = [SP+76];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L503;
	R0 = [SP+60];
	[SP+12] = R0;
	R2 = [SP+56];
	R0 = [SP+68];
	R1 = [SP+72];
	call ___muldf3;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	[SP+68] = R0;
	[SP+72] = R1;
.L503:
	R0 = [SP+76];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+76] = R0;
	R0 = [SP+76];
	cc =R0==0;
	if cc jump .L508;
	R0 = [SP+60];
	[SP+12] = R0;
	R2 = [SP+56];
	R0 = [SP+56];
	R1 = [SP+60];
	call ___muldf3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+56] = R0;
	[SP+60] = R1;
	jump.s .L505;
.L508:
	nop;
.L499:
	R0 = [SP+68];
	R1 = [SP+72];
	[SP+48] = R0;
	[SP+52] = R1;
	R0 = [SP+48];
	R1 = [SP+52];
	SP += 60;
	SP += 4;
	RETS = [SP++];
	rts;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+12];
	[SP+4] = R0;
	R0 = [SP+8];
	[SP] = R0;
	jump.s .L510;
.L511:
	P2 = [SP+4];
	R0 = P2;
	R0 += 1;
	[SP+4] = R0;
	R1 = B [P2] (X);
	P2 = [SP];
	R0 = P2;
	R0 += 1;
	[SP] = R0;
	R0 = B [P2] (X);
	R0 = R1 ^ R0;
	B [P2] = R0;
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
.L510:
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L511;
	R0 = [SP+8];
	SP += 8;
	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R0 = [SP+20];
	call _strlen;
	P2 = R0;
	R0 = [SP+20];
	R1 = P2;
	R0 = R0 + R1;
	[SP+12] = R0;
	jump.s .L514;
.L516:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
	R0 = [SP+12];
	R0 += 1;
	[SP+12] = R0;
	R0 = [SP+28];
	R0 += -1;
	[SP+28] = R0;
.L514:
	R0 = [SP+28];
	cc =R0==0;
	if cc jump .L515;
	nop;
	nop;
	P2 = [SP+24];
	R0 = B [P2] (X);
	P2 = [SP+12];
	B [P2] = R0;
	P2 = [SP+12];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L516;
.L515:
	R0 = [SP+28];
	cc =R0==0;
	if !cc jump .L517;
	P2 = [SP+12];
	R0 = 0 (X);
	B [P2] = R0;
.L517:
	R0 = [SP+20];
	SP += 16;
	RETS = [SP++];
	rts;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L520;
.L525:
	nop;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L520:
	R1 = [SP];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if !cc jump .L521;
	R1 = [SP+4];
	R0 = [SP];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L525;
.L521:
	R0 = [SP];
	SP += 4;
	rts;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	jump.s .L527;
.L531:
	R0 = [SP+8];
	[SP] = R0;
	jump.s .L528;
.L530:
	P2 = [SP];
	R0 = P2;
	R0 += 1;
	[SP] = R0;
	R1 = B [P2] (X);
	P2 = [SP+4];
	R0 = B [P2] (X);
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L528;
	R0 = [SP+4];
	jump.s .L529;
.L528:
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L530;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L527:
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L531;
	R0 = 0 (X);
.L529:
	SP += 4;
	rts;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	SP += -4;
	P2 = R0;
	[SP+8] = R1;
	R0 = 0 (X);
	[SP] = R0;
.L534:
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = [SP+8];
	cc =R1==R0;
	if !cc jump .L533;
	[SP] = P2;
.L533:
	P1 = P2;
	P2 = P1;
	P2 += 1;
	R0 = B [P1] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L534;
	R0 = [SP];
	SP += 4;
	rts;
	.size	_strrchr, .-_strrchr
	.align 4
.global _strstr;
.type _strstr, STT_FUNC;
_strstr:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	[SP+16] = R0;
	R0 = [SP+28];
	call _strlen;
	[SP+12] = R0;
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L539;
	R0 = [SP+24];
	jump.s .L538;
.L541:
	R2 = [SP+12];
	R1 = [SP+28];
	R0 = [SP+16];
	call _strncmp;
	cc =R0==0;
	if !cc jump .L540;
	R0 = [SP+16];
	jump.s .L538;
.L540:
	R0 = [SP+16];
	R0 += 1;
	[SP+16] = R0;
.L539:
	P2 = [SP+28];
	R0 = B [P2] (X);
	R1 = R0.B (X);
	R0 = [SP+16];
	call _strchr;
	[SP+16] = R0;
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L541;
	R0 = 0 (X);
.L538:
	SP += 20;
	RETS = [SP++];
	rts;
	.size	_strstr, .-_strstr
	.align 4
.global _copysign;
.type _copysign, STT_FUNC;
_copysign:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -24;
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
	if !cc jump .L543;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+44];
	R1 = [SP+48];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L545;
.L543:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L546;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+44];
	R1 = [SP+48];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L546;
.L545:
	R6 = [SP+36];
	R0 = [SP+40];
	R7 = R0;
	BITTGL (R7, 31);
	jump.s .L549;
.L546:
	R6 = [SP+36];
	R7 = [SP+40];
.L549:
	[SP+16] = R6;
	[SP+20] = R7;
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	[SP+32] = R2;
	R1 = [SP+28];
	R0 = [SP+36];
	R0 = R1 - R0;
	R1 = [SP+24];
	R0 = R1 + R0;
	[SP+12] = R0;
	R0 = [SP+36];
	cc =R0==0;
	if !cc jump .L553;
	R0 = [SP+24];
	jump.s .L554;
.L553:
	R1 = [SP+28];
	R0 = [SP+36];
	cc =R1<R0 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L555;
	R0 = 0 (X);
	jump.s .L554;
.L555:
	R0 = [SP+24];
	[SP+16] = R0;
	jump.s .L556;
.L558:
	P2 = [SP+16];
	R1 = B [P2] (X);
	P2 = [SP+32];
	R0 = B [P2] (X);
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L557;
	R0 = [SP+16];
	R3 = R0;
	R3 += 1;
	R0 = [SP+32];
	R1 = R0;
	R1 += 1;
	R0 = [SP+36];
	R0 += -1;
	R2 = R0;
	R0 = R3;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L557;
	R0 = [SP+16];
	jump.s .L554;
.L557:
	R0 = [SP+16];
	R0 += 1;
	[SP+16] = R0;
.L556:
	R1 = [SP+16];
	R0 = [SP+12];
	cc =R1<=R0 (iu);
	if cc jump .L558;
	R0 = 0 (X);
.L554:
	SP += 20;
	RETS = [SP++];
	rts;
	.size	_memmem, .-_memmem
	.align 4
.global _mempcpy;
.type _mempcpy, STT_FUNC;
_mempcpy:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	[SP+20] = R1;
	[SP+24] = R2;
	R1 = [SP+24];
	R0 = [SP+20];
	R2 = R1;
	R1 = R0;
	R0 = [SP+16];
	call _memcpy;
	P2 = R0;
	R0 = [SP+24];
	P1 = R0;
	P2 = P2 + P1;
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	_mempcpy, .-_mempcpy
	.align 4
.global _frexp;
.type _frexp, STT_FUNC;
_frexp:
	[--sp] = ( r7:4 );

	[--SP] = RETS;
	SP += -56;
	[SP+76] = R0;
	[SP+80] = R1;
	[SP+84] = R2;
	R0 = 0 (X);
	[SP+48] = R0;
	R0 = 0 (X);
	[SP+52] = R0;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L562;
	R4 = [SP+76];
	R0 = [SP+80];
	R5 = R0;
	BITTGL (R5, 31);
	[SP+76] = R4;
	[SP+80] = R5;
	R0 = 1 (X);
	[SP+52] = R0;
.L562:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L579;
	jump.s .L566;
.L567:
	R0 = [SP+48];
	R0 += 1;
	[SP+48] = R0;
	R0 = 1 (X);
	R0 <<= 30;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___divdf3;
	[SP+32] = R0;
	[SP+36] = R1;
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+76] = R0;
	[SP+80] = R1;
.L566:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L567;
	jump.s .L568;
.L579:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L568;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L568;
	jump.s .L571;
.L572:
	R0 = [SP+48];
	R0 += -1;
	[SP+48] = R0;
	R0 = [SP+76];
	R1 = [SP+80];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+28];
	[SP+12] = R0;
	R2 = [SP+24];
	R0 = [SP+24];
	R1 = [SP+28];
	call ___adddf3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+76] = R0;
	[SP+80] = R1;
.L571:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L572;
.L568:
	P2 = [SP+84];
	R0 = [SP+48];
	[P2] = R0;
	R0 = [SP+52];
	cc =R0==0;
	if cc jump .L573;
	R6 = [SP+76];
	R0 = [SP+80];
	R7 = R0;
	BITTGL (R7, 31);
	[SP+76] = R6;
	[SP+80] = R7;
.L573:
	R0 = [SP+76];
	R1 = [SP+80];
	[SP+40] = R0;
	[SP+44] = R1;
	R0 = [SP+40];
	R1 = [SP+44];
	SP += 56;
	RETS = [SP++];
	( r7:4 ) = [sp++];

	rts;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:6 );

	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	[SP+40] = R2;
	R0 = 0 (X);
	R1 = 0 (X);
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+8] = R0;
	[SP+12] = R1;
	jump.s .L581;
.L584:
	R3 = [SP+8];
	R2 = [SP+12];
	R0 = 1 (X);
	R7 = R3 & R0;
	R0 = 0 (X);
	R1 = R2 & R0;
	R0 = R7;
	R0 = R0 | R1;
	cc =R0==0;
	if cc jump .L582;
	R6 = [SP+16];
	R7 = [SP+20];
	R2 = [SP+40];
	R3 = [SP+44];
	R1 = R6 + R2; cc = ac0;
	R2 = CC;
	R0 = R7 + R3;
	R0 = R0 + R2;
	[SP+16] = R1;
	[SP+20] = R0;
.L582:
	R1 = [SP+40];
	R0 = [SP+44];
	CC = R0 < R0;
	R1 = ROT R1 BY 1;
	R0 = ROT R0 BY 1;
	[SP+40] = R1;
	[SP+44] = R0;
	R1 = [SP+8];
	R0 = [SP+12];
	CC = R0 < R0;
	R0 = ROT R0 BY -1;
	R1 = ROT R1 BY -1;
	[SP+8] = R1;
	[SP+12] = R0;
.L581:
	R0 = [SP+8];
	R1 = [SP+12];
	R0 = R0 | R1;
	cc =R0==0;
	if !cc jump .L584;
	R0 = [SP+16];
	R1 = [SP+20];
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	SP += 24;
	( r7:6 ) = [sp++];

	rts;
	.size	___muldi3, .-___muldi3
	.align 4
.global _udivmodsi4;
.type _udivmodsi4, STT_FUNC;
_udivmodsi4:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = 1 (X);
	[SP+4] = R0;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L587;
.L589:
	R0 = [SP+12];
	R0 <<= 1;
	[SP+12] = R0;
	R0 = [SP+4];
	R0 <<= 1;
	[SP+4] = R0;
.L587:
	R1 = [SP+12];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if !cc jump .L590;
	R0 = [SP+4];
	cc =R0==0;
	if cc jump .L590;
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L589;
	jump.s .L590;
.L592:
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L591;
	R1 = [SP+8];
	R0 = [SP+12];
	R0 = R1 - R0;
	[SP+8] = R0;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 | R0;
	[SP] = R0;
.L591:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+12];
	R0 >>= 1;
	[SP+12] = R0;
.L590:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L592;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L593;
	R0 = [SP+8];
	jump.s .L594;
.L593:
	R0 = [SP];
.L594:
	SP += 8;
	rts;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	[--SP] = RETS;
	SP += -16;
	B [SP+20] = R0;
	R0 = B [SP+20] (X);
	cc =R0<0;
	if !cc jump .L596;
	R0 = B [SP+20] (X);
	R0 = ~R0;
	B [SP+20] = R0;
.L596:
	R0 = B [SP+20] (X);
	cc =R0==0;
	if !cc jump .L597;
	R0 = 7 (X);
	jump.s .L598;
.L597:
	R0 = B [SP+20] (X);
	R0 <<= 8;
	call ___clzsi2;
	[SP+12] = R0;
	R0 = [SP+12];
	R0 += -1;
.L598:
	SP += 16;
	RETS = [SP++];
	rts;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	R0 = [SP+32];
	cc =R0<0;
	if !cc jump .L600;
	R0 = [SP+28];
	R1 = ~R0;
	R0 = [SP+32];
	R0 = ~R0;
	[SP+28] = R1;
	[SP+32] = R0;
.L600:
	R0 = [SP+28];
	R1 = [SP+32];
	R0 = R0 | R1;
	cc =R0==0;
	if !cc jump .L602;
	R0 = 63 (X);
	jump.s .L603;
.L602:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+12] = R0;
	[SP+16] = R1;
	R0 = [SP+12];
	R1 = [SP+16];
	call ___clzdi2;
	[SP+20] = R0;
	R0 = [SP+20];
	R0 += -1;
.L603:
	SP += 24;
	RETS = [SP++];
	rts;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L605;
.L607:
	R1 = [SP+4];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L606;
	R1 = [SP];
	R0 = [SP+8];
	R0 = R1 + R0;
	[SP] = R0;
.L606:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+8];
	R0 <<= 1;
	[SP+8] = R0;
.L605:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L607;
	R0 = [SP];
	SP += 4;
	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	SP += -20;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R0 = [SP+28];
	R0 >>= 3;
	[SP+8] = R0;
	R1 = [SP+28];
	R0 = -8 (X);
	R0 = R1 & R0;
	[SP+12] = R0;
	R0 = [SP+20];
	[SP+4] = R0;
	R0 = [SP+24];
	[SP] = R0;
	R1 = [SP+4];
	R0 = [SP];
	cc =R1<R0 (iu);
	if cc jump .L610;
	R1 = [SP];
	R0 = [SP+28];
	R0 = R1 + R0;
	R1 = [SP+4];
	cc =R1<=R0 (iu);
	if cc jump .L617;
.L610:
	R0 = 0 (X);
	[SP+16] = R0;
	jump.s .L612;
.L613:
	R0 = [SP+16];
	R0 <<= 3;
	R1 = [SP+24];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [SP+16];
	R0 <<= 3;
	R1 = [SP+20];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [P1];
	R1 = [P1+4];
	[P2] = R0;
	[P2+4] = R1;
	R0 = [SP+16];
	R0 += 1;
	[SP+16] = R0;
.L612:
	R1 = [SP+16];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if cc jump .L613;
	jump.s .L614;
.L615:
	R1 = [SP];
	R0 = [SP+12];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [SP+4];
	R0 = [SP+12];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+12];
	R0 += 1;
	[SP+12] = R0;
.L614:
	R1 = [SP+28];
	R0 = [SP+12];
	cc =R1<=R0 (iu);
	if !cc jump .L615;
	jump.s .L616;
.L618:
	R1 = [SP];
	R0 = [SP+28];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [SP+4];
	R0 = [SP+28];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L617:
	R0 = [SP+28];
	R1 = R0;
	R1 += -1;
	[SP+28] = R1;
	cc =R0==0;
	if !cc jump .L618;
	nop;
.L616:
	nop;
	SP += 20;
	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	SP += -16;
	[SP+16] = R0;
	[SP+20] = R1;
	[SP+24] = R2;
	R0 = [SP+24];
	R0 >>= 1;
	[SP+8] = R0;
	R0 = [SP+16];
	[SP+4] = R0;
	R0 = [SP+20];
	[SP] = R0;
	R1 = [SP+4];
	R0 = [SP];
	cc =R1<R0 (iu);
	if cc jump .L620;
	R1 = [SP];
	R0 = [SP+24];
	R0 = R1 + R0;
	R1 = [SP+4];
	cc =R1<=R0 (iu);
	if cc jump .L626;
.L620:
	R0 = 0 (X);
	[SP+12] = R0;
	jump.s .L622;
.L623:
	R0 = [SP+12];
	R0 <<= 1;
	R1 = [SP+20];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [SP+12];
	R0 <<= 1;
	R1 = [SP+16];
	R1 = R1 + R0;
	P2 = R1;
	R0 = W [P1] (X);
	W [P2] = R0;
	R0 = [SP+12];
	R0 += 1;
	[SP+12] = R0;
.L622:
	R1 = [SP+12];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if cc jump .L623;
	R1 = [SP+24];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L625;
	R0 = [SP+24];
	R0 += -1;
	R1 = [SP];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [SP+24];
	R0 += -1;
	R1 = [SP+4];
	R1 = R1 + R0;
	P2 = R1;
	R0 = B [P1] (X);
	B [P2] = R0;
	jump.s .L625;
.L627:
	R1 = [SP];
	R0 = [SP+24];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [SP+4];
	R0 = [SP+24];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L626:
	R0 = [SP+24];
	R1 = R0;
	R1 += -1;
	[SP+24] = R1;
	cc =R0==0;
	if !cc jump .L627;
	nop;
.L625:
	nop;
	SP += 16;
	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	SP += -20;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R0 = [SP+28];
	R0 >>= 2;
	[SP+8] = R0;
	R1 = [SP+28];
	R0 = -4 (X);
	R0 = R1 & R0;
	[SP+12] = R0;
	R0 = [SP+20];
	[SP+4] = R0;
	R0 = [SP+24];
	[SP] = R0;
	R1 = [SP+4];
	R0 = [SP];
	cc =R1<R0 (iu);
	if cc jump .L629;
	R1 = [SP];
	R0 = [SP+28];
	R0 = R1 + R0;
	R1 = [SP+4];
	cc =R1<=R0 (iu);
	if cc jump .L636;
.L629:
	R0 = 0 (X);
	[SP+16] = R0;
	jump.s .L631;
.L632:
	R0 = [SP+16];
	R0 <<= 2;
	R1 = [SP+24];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [SP+16];
	R0 <<= 2;
	R1 = [SP+20];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [P1];
	[P2] = R0;
	R0 = [SP+16];
	R0 += 1;
	[SP+16] = R0;
.L631:
	R1 = [SP+16];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if cc jump .L632;
	jump.s .L633;
.L634:
	R1 = [SP];
	R0 = [SP+12];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [SP+4];
	R0 = [SP+12];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+12];
	R0 += 1;
	[SP+12] = R0;
.L633:
	R1 = [SP+28];
	R0 = [SP+12];
	cc =R1<=R0 (iu);
	if !cc jump .L634;
	jump.s .L635;
.L637:
	R1 = [SP];
	R0 = [SP+28];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [SP+4];
	R0 = [SP+28];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L636:
	R0 = [SP+28];
	R1 = R0;
	R1 += -1;
	[SP+28] = R1;
	cc =R0==0;
	if !cc jump .L637;
	nop;
.L635:
	nop;
	SP += 20;
	rts;
	.size	___cmovw, .-___cmovw
	.align 4
.global ___modi;
.type ___modi, STT_FUNC;
___modi:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
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
	SP += -28;
	[SP+32] = R0;
	R0 = [SP+32];
	call ___floatunsidf;
	[SP+20] = R0;
	[SP+24] = R1;
	R0 = [SP+20];
	R1 = [SP+24];
	[SP+12] = R0;
	[SP+16] = R1;
	R0 = [SP+12];
	R1 = [SP+16];
	SP += 28;
	RETS = [SP++];
	rts;
	.size	___uitod, .-___uitod
	.align 4
.global ___uitof;
.type ___uitof, STT_FUNC;
___uitof:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	R0 = [SP+16];
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
	SP += -28;
	[SP+32] = R0;
	[SP+36] = R1;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___floatundidf;
	[SP+20] = R0;
	[SP+24] = R1;
	R0 = [SP+20];
	R1 = [SP+24];
	[SP+12] = R0;
	[SP+16] = R1;
	R0 = [SP+12];
	R1 = [SP+16];
	SP += 28;
	RETS = [SP++];
	rts;
	.size	___ulltod, .-___ulltod
	.align 4
.global ___ulltof;
.type ___ulltof, STT_FUNC;
___ulltof:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___floatundisf;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	___ulltof, .-___ulltof
	.align 4
.global ___umodi;
.type ___umodi, STT_FUNC;
___umodi:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___umodsi3;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	___umodi, .-___umodi
	.align 4
.global ___clzhi2;
.type ___clzhi2, STT_FUNC;
___clzhi2:
	SP += -4;
	W [SP+4] = R0;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L651;
.L654:
	R1 = W [SP+4] (Z);
	R2 = 15 (X);
	R0 = [SP];
	R0 = R2 - R0;
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L656;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L651:
	R0 = [SP];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L654;
	jump.s .L653;
.L656:
	nop;
.L653:
	R0 = [SP];
	SP += 4;
	rts;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	SP += -4;
	W [SP+4] = R0;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L658;
.L661:
	R1 = W [SP+4] (Z);
	R0 = [SP];
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L663;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L658:
	R0 = [SP];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L661;
	jump.s .L660;
.L663:
	nop;
.L660:
	R0 = [SP];
	SP += 4;
	rts;
	.size	___ctzhi2, .-___ctzhi2
	.align 4
.global ___fixunssfsi;
.type ___fixunssfsi, STT_FUNC;
___fixunssfsi:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	R1 = 71 (X);
	R1 <<= 24;
	R0 = [SP+16];
	call ___gesf2;
	cc =R0<0;
	if cc jump .L669;
	R1 = 71 (X);
	R1 <<= 24;
	R0 = [SP+16];
	call ___subsf3;
	call ___fixsfsi;
	P1 = R0;
	P2.H = 0;
	P2.L = 32768;
	P2 = P1 + P2;
	jump.s .L667;
.L669:
	R0 = [SP+16];
	call ___fixsfsi;
	P2 = R0;
.L667:
	R0 = P2;
	SP += 12;
	RETS = [SP++];
	rts;
	.size	___fixunssfsi, .-___fixunssfsi
	.align 4
.global ___parityhi2;
.type ___parityhi2, STT_FUNC;
___parityhi2:
	SP += -8;
	W [SP+8] = R0;
	R0 = 0 (X);
	[SP] = R0;
	R0 = 0 (X);
	[SP+4] = R0;
	jump.s .L671;
.L673:
	R1 = W [SP+8] (Z);
	R0 = [SP+4];
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L672;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L672:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L671:
	R0 = [SP+4];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L673;
	R1 = [SP];
	R0 = 1 (X);
	R0 = R1 & R0;
	SP += 8;
	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	SP += -8;
	W [SP+8] = R0;
	R0 = 0 (X);
	[SP] = R0;
	R0 = 0 (X);
	[SP+4] = R0;
	jump.s .L676;
.L678:
	R1 = W [SP+8] (Z);
	R0 = [SP+4];
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L677;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L677:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L676:
	R0 = [SP+4];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L678;
	R0 = [SP];
	SP += 8;
	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L681;
.L683:
	R1 = [SP+4];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L682;
	R1 = [SP];
	R0 = [SP+8];
	R0 = R1 + R0;
	[SP] = R0;
.L682:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+8];
	R0 <<= 1;
	[SP+8] = R0;
.L681:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L683;
	R0 = [SP];
	SP += 4;
	rts;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	R0 = 0 (X);
	[SP] = R0;
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L688;
	R0 = 0 (X);
	jump.s .L687;
.L690:
	R1 = [SP+8];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L689;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 + R0;
	[SP] = R0;
.L689:
	R0 = [SP+4];
	R0 <<= 1;
	[SP+4] = R0;
	R0 = [SP+8];
	R0 >>= 1;
	[SP+8] = R0;
.L688:
	R0 = [SP+8];
	cc =R0==0;
	if !cc jump .L690;
	R0 = [SP];
.L687:
	SP += 4;
	rts;
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 4
.global ___udivmodsi4;
.type ___udivmodsi4, STT_FUNC;
___udivmodsi4:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = 1 (X);
	[SP+4] = R0;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L692;
.L694:
	R0 = [SP+12];
	R0 <<= 1;
	[SP+12] = R0;
	R0 = [SP+4];
	R0 <<= 1;
	[SP+4] = R0;
.L692:
	R1 = [SP+12];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if !cc jump .L695;
	R0 = [SP+4];
	cc =R0==0;
	if cc jump .L695;
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L694;
	jump.s .L695;
.L697:
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L696;
	R1 = [SP+8];
	R0 = [SP+12];
	R0 = R1 - R0;
	[SP+8] = R0;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 | R0;
	[SP] = R0;
.L696:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+12];
	R0 >>= 1;
	[SP+12] = R0;
.L695:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L697;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L698;
	R0 = [SP+8];
	jump.s .L699;
.L698:
	R0 = [SP];
.L699:
	SP += 8;
	rts;
	.size	___udivmodsi4, .-___udivmodsi4
	.align 4
.global ___mspabi_cmpf;
.type ___mspabi_cmpf, STT_FUNC;
___mspabi_cmpf:
	[--SP] = RETS;
	SP += -12;
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+20];
	R0 = [SP+16];
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L708;
	R0 = -1 (X);
	jump.s .L703;
.L708:
	R1 = [SP+20];
	R0 = [SP+16];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L709;
	R0 = 1 (X);
	jump.s .L703;
.L709:
	R0 = 0 (X);
.L703:
	SP += 12;
	RETS = [SP++];
	rts;
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 4
.global ___mspabi_cmpd;
.type ___mspabi_cmpd, STT_FUNC;
___mspabi_cmpd:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L718;
	R0 = -1 (X);
	jump.s .L713;
.L718:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L719;
	R0 = 1 (X);
	jump.s .L713;
.L719:
	R0 = 0 (X);
.L713:
	SP += 16;
	RETS = [SP++];
	rts;
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 4
.global ___mspabi_mpysll;
.type ___mspabi_mpysll, STT_FUNC;
___mspabi_mpysll:
	[--SP] = RETS;
	SP += -40;
	[SP+44] = R0;
	[SP+48] = R1;
	R0 = [SP+44];
	R1 = R0;
	R2 = R0;
	R2 >>>= 31;
	[SP+32] = R1;
	[SP+36] = R2;
	R0 = [SP+48];
	R1 = R0;
	R1 >>>= 31;
	R2 = R1;
	[SP+12] = R2;
	R2 = R0;
	R0 = [SP+32];
	R1 = [SP+36];
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 40;
	RETS = [SP++];
	rts;
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 4
.global ___mspabi_mpyull;
.type ___mspabi_mpyull, STT_FUNC;
___mspabi_mpyull:
	[--SP] = RETS;
	SP += -32;
	[SP+36] = R0;
	[SP+40] = R1;
	R0 = [SP+36];
	R3 = R0;
	R1 = 0 (X);
	R0 = [SP+40];
	R2 = R0;
	R0 = 0 (X);
	[SP+12] = R0;
	R0 = R3;
	call ___muldi3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	SP += 32;
	RETS = [SP++];
	rts;
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 4
.global ___mulhi3;
.type ___mulhi3, STT_FUNC;
___mulhi3:
	SP += -12;
	[SP+12] = R0;
	[SP+16] = R1;
	R0 = 0 (X);
	[SP+4] = R0;
	R0 = 0 (X);
	[SP] = R0;
	R0 = [SP+16];
	cc =R0<0;
	if !cc jump .L725;
	R0 = [SP+16];
	R0 = -R0;
	[SP+16] = R0;
	R0 = 1 (X);
	[SP+4] = R0;
.L725:
	R0 = 0 (X);
	B [SP+11] = R0;
	jump.s .L726;
.L729:
	R1 = [SP+16];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L727;
	R1 = [SP];
	R0 = [SP+12];
	R0 = R1 + R0;
	[SP] = R0;
.L727:
	R0 = [SP+12];
	R0 <<= 1;
	[SP+12] = R0;
	R0 = [SP+16];
	R0 >>>= 1;
	[SP+16] = R0;
	R0 = B [SP+11] (X);
	R0 += 1;
	B [SP+11] = R0;
.L726:
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L728;
	R0 = B [SP+11] (X);
	R0 = R0.B (Z);
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L729;
.L728:
	R0 = [SP+4];
	cc =R0==0;
	if cc jump .L730;
	R0 = [SP];
	R0 = -R0;
	jump.s .L732;
.L730:
	R0 = [SP];
.L732:
	SP += 12;
	rts;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = 0 (X);
	[SP+16] = R0;
	R0 = [SP+24];
	cc =R0<0;
	if !cc jump .L734;
	R0 = [SP+24];
	R0 = -R0;
	[SP+24] = R0;
	R0 = [SP+16];
	cc =R0==0;
	R0 = CC;
	R0 = R0.B (Z);
	[SP+16] = R0;
.L734:
	R0 = [SP+28];
	cc =R0<0;
	if !cc jump .L735;
	R0 = [SP+28];
	R0 = -R0;
	[SP+28] = R0;
	R0 = [SP+16];
	cc =R0==0;
	R0 = CC;
	R0 = R0.B (Z);
	[SP+16] = R0;
.L735:
	R0 = [SP+24];
	R1 = [SP+28];
	R2 = 0 (X);
	call ___udivmodsi4;
	[SP+12] = R0;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L736;
	R0 = [SP+12];
	R0 = -R0;
	[SP+12] = R0;
.L736:
	R0 = [SP+12];
	SP += 20;
	RETS = [SP++];
	rts;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = 0 (X);
	[SP+16] = R0;
	R0 = [SP+24];
	cc =R0<0;
	if !cc jump .L739;
	R0 = [SP+24];
	R0 = -R0;
	[SP+24] = R0;
	R0 = 1 (X);
	[SP+16] = R0;
.L739:
	R0 = [SP+28];
	cc =R0<0;
	if !cc jump .L740;
	R0 = [SP+28];
	R0 = -R0;
	[SP+28] = R0;
.L740:
	R0 = [SP+24];
	R1 = [SP+28];
	R2 = 1 (X);
	call ___udivmodsi4;
	[SP+12] = R0;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L741;
	R0 = [SP+12];
	R0 = -R0;
	[SP+12] = R0;
.L741:
	R0 = [SP+12];
	SP += 20;
	RETS = [SP++];
	rts;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	SP += -4;
	W [SP+4] = R0;
	W [SP+8] = R1;
	[SP+12] = R2;
	R0 = 1 (X);
	W [SP+2] = R0;
	R0 = 0 (X);
	W [SP] = R0;
	jump.s .L744;
.L746:
	R0 = W [SP+8] (X);
	R0 <<= 1;
	W [SP+8] = R0;
	R0 = W [SP+2] (X);
	R0 <<= 1;
	W [SP+2] = R0;
.L744:
	R1 = W [SP+8] (Z);
	R0 = W [SP+4] (Z);
	cc =R1<R0 (iu);
	if !cc jump .L747;
	R0 = W [SP+2] (Z);
	cc =R0==0;
	if cc jump .L747;
	R0 = W [SP+8] (X);
	R0 = R0.L (X);
	cc =R0<0;
	if !cc jump .L746;
	jump.s .L747;
.L749:
	R1 = W [SP+4] (Z);
	R0 = W [SP+8] (Z);
	cc =R1<R0 (iu);
	if cc jump .L748;
	R1 = W [SP+4] (X);
	R0 = W [SP+8] (X);
	R0 = R1 - R0;
	W [SP+4] = R0;
	R1 = W [SP] (X);
	R0 = W [SP+2] (X);
	R0 = R1 | R0;
	W [SP] = R0;
.L748:
	R0 = W [SP+2] (Z);
	R0 >>= 1;
	W [SP+2] = R0;
	R0 = W [SP+8] (Z);
	R0 >>= 1;
	W [SP+8] = R0;
.L747:
	R0 = W [SP+2] (Z);
	cc =R0==0;
	if !cc jump .L749;
	R0 = [SP+12];
	cc =R0==0;
	if cc jump .L750;
	R0 = W [SP+4] (X);
	jump.s .L751;
.L750:
	R0 = W [SP] (X);
.L751:
	SP += 4;
	rts;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = 1 (X);
	[SP+4] = R0;
	R0 = 0 (X);
	[SP] = R0;
	jump.s .L753;
.L755:
	R0 = [SP+12];
	R0 <<= 1;
	[SP+12] = R0;
	R0 = [SP+4];
	R0 <<= 1;
	[SP+4] = R0;
.L753:
	R1 = [SP+12];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if !cc jump .L756;
	R0 = [SP+4];
	cc =R0==0;
	if cc jump .L756;
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L755;
	jump.s .L756;
.L758:
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L757;
	R1 = [SP+8];
	R0 = [SP+12];
	R0 = R1 - R0;
	[SP+8] = R0;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 | R0;
	[SP] = R0;
.L757:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+12];
	R0 >>= 1;
	[SP+12] = R0;
.L756:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L758;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L759;
	R0 = [SP+8];
	jump.s .L760;
.L759:
	R0 = [SP];
.L760:
	SP += 8;
	rts;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	SP += -28;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R0 = 32 (X);
	[SP+24] = R0;
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+36];
	R0 = [SP+24];
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L762;
	R0 = 0 (X);
	[SP+8] = R0;
	R1 = [SP+16];
	R2 = [SP+36];
	R0 = [SP+24];
	R0 = R2 - R0;
	R1 <<= R0;
	R0 = R1;
	[SP+12] = R0;
	jump.s .L763;
.L762:
	R0 = [SP+36];
	cc =R0==0;
	if !cc jump .L764;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L766;
.L764:
	R0 = [SP+16];
	R1 = [SP+36];
	R0 <<= R1;
	[SP+8] = R0;
	R0 = [SP+20];
	R1 = R0;
	R0 = [SP+36];
	R1 <<= R0;
	R0 = [SP+16];
	R3 = [SP+24];
	R2 = [SP+36];
	R2 = R3 - R2;
	R0 >>= R2;
	R0 = R1 | R0;
	[SP+12] = R0;
.L763:
	R0 = [SP+8];
	R1 = [SP+12];
.L766:
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	SP += 28;
	rts;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	SP += -28;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R0 = 32 (X);
	[SP+24] = R0;
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+36];
	R0 = [SP+24];
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L768;
	R0 = [SP+20];
	R1 = [SP+24];
	R1 += -1;
	R0 >>>= R1;
	[SP+12] = R0;
	R1 = [SP+20];
	R2 = [SP+36];
	R0 = [SP+24];
	R0 = R2 - R0;
	R1 >>>= R0;
	R0 = R1;
	[SP+8] = R0;
	jump.s .L769;
.L768:
	R0 = [SP+36];
	cc =R0==0;
	if !cc jump .L770;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L772;
.L770:
	R0 = [SP+20];
	R1 = [SP+36];
	R0 >>>= R1;
	[SP+12] = R0;
	R0 = [SP+20];
	R2 = R0;
	R1 = [SP+24];
	R0 = [SP+36];
	R0 = R1 - R0;
	R1 = R2;
	R1 <<= R0;
	R0 = [SP+16];
	R2 = [SP+36];
	R0 >>= R2;
	R0 = R1 | R0;
	[SP+8] = R0;
.L769:
	R0 = [SP+8];
	R1 = [SP+12];
.L772:
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	SP += 28;
	rts;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:5 );

	[SP+12] = R0;
	[SP+16] = R1;
	R0 = [SP+16];
	R7 = R0 >> 24;
	R1 = 0 (X);
	R0 = [SP+16];
	R6 = R0 >> 8;
	R2 = 0 (X);
	R0 = 65280 (Z);
	R3 = R6 & R0;
	R0 = 0 (X);
	R0 = R2 & R0;
	R6 = R7 | R3;
	R2 = R1 | R0;
	R0 = [SP+16];
	R1 = R0 << 8;
	R0 = [SP+12];
	R0 >>= 24;
	R0 = R1 | R0;
	R1 = [SP+16];
	R7 = R1 >> 24;
	R1 = 255 (X);
	R1 <<= 16;
	R3 = R0 & R1;
	R0 = 0 (X);
	R1 = R7 & R0;
	R5 = R6 | R3;
	R7 = R2 | R1;
	R0 = [SP+16];
	R0 <<= 24;
	R1 = [SP+12];
	R1 >>= 8;
	R1 = R0 | R1;
	R0 = [SP+16];
	R2 = R0 >> 8;
	R0 = R1 >>> 24;
	R0 <<= 24;
	R1 = 0 (X);
	R3 = R2 & R1;
	R6 = R5 | R0;
	R2 = R7 | R3;
	R0 = [SP+12];
	R1 = R0 >> 24;
	R0 = [SP+16];
	R0 <<= 8;
	R0 = R1 | R0;
	R1 = [SP+12];
	R3 = R1 << 8;
	R1 = 0 (X);
	R7 = R3 & R1;
	R1 = R0.B (Z);
	R5 = R6 | R7;
	R3 = R2 | R1;
	R0 = [SP+12];
	R1 = R0 >> 8;
	R0 = [SP+16];
	R0 <<= 24;
	R0 = R1 | R0;
	R1 = [SP+12];
	R2 = R1 << 24;
	R1 = 0 (X);
	R7 = R2 & R1;
	R1 = 65280 (Z);
	R1 = R0 & R1;
	R6 = R5 | R7;
	R2 = R3 | R1;
	R0 = [SP+12];
	R1 = R0 << 8;
	R3 = 0 (X);
	R0 = 0 (X);
	R7 = R3 & R0;
	R0 = 255 (X);
	R0 <<= 16;
	R0 = R1 & R0;
	R3 = R6 | R7;
	R1 = R2 | R0;
	R0 = [SP+12];
	R0 <<= 24;
	R2 = 0 (X);
	R6 = R3 | R2;
	R7 = R1 | R0;
	R0 = R6;
	R1 = R7;
	( r7:5 ) = [sp++];

	rts;
	.size	___bswapdi2, .-___bswapdi2
	.align 4
.global ___bswapsi2;
.type ___bswapsi2, STT_FUNC;
___bswapsi2:
	[SP] = R0;
	R0 = [SP];
	R1 = R0 >> 24;
	R0 = [SP];
	R2 = R0 >> 8;
	R0 = 65280 (Z);
	R0 = R2 & R0;
	R1 = R1 | R0;
	R0 = [SP];
	R2 = R0 << 8;
	R0 = 255 (X);
	R0 <<= 16;
	R0 = R2 & R0;
	R1 = R1 | R0;
	R0 = [SP];
	R0 <<= 24;
	R0 = R1 | R0;
	rts;
	.size	___bswapsi2, .-___bswapsi2
	.align 4
.global ___clzsi2;
.type ___clzsi2, STT_FUNC;
___clzsi2:
	SP += -12;
	[SP+12] = R0;
	R0 = [SP+12];
	[SP+8] = R0;
	R0 = [SP+8];
	R1 = 65535 (Z);
	cc =R0<=R1 (iu);
	if !cc jump .L778;
	R0 = 16 (X);
	jump.s .L779;
.L778:
	R0 = 0 (X);
.L779:
	[SP+4] = R0;
	R1 = 16 (X);
	R0 = [SP+4];
	R1 = R1 - R0;
	R0 = [SP+8];
	R0 >>= R1;
	[SP+8] = R0;
	R0 = [SP+4];
	[SP] = R0;
	R1 = [SP+8];
	R0 = 65280 (Z);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L780;
	R0 = 8 (X);
	jump.s .L781;
.L780:
	R0 = 0 (X);
.L781:
	[SP+4] = R0;
	R1 = 8 (X);
	R0 = [SP+4];
	R1 = R1 - R0;
	R0 = [SP+8];
	R0 >>= R1;
	[SP+8] = R0;
	R0 = [SP+4];
	R1 = [SP];
	R0 = R1 + R0;
	[SP] = R0;
	R1 = [SP+8];
	R0 = 240 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L782;
	R0 = 4 (X);
	jump.s .L783;
.L782:
	R0 = 0 (X);
.L783:
	[SP+4] = R0;
	R1 = 4 (X);
	R0 = [SP+4];
	R1 = R1 - R0;
	R0 = [SP+8];
	R0 >>= R1;
	[SP+8] = R0;
	R0 = [SP+4];
	R1 = [SP];
	R0 = R1 + R0;
	[SP] = R0;
	R1 = [SP+8];
	R0 = 12 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L784;
	R0 = 2 (X);
	jump.s .L785;
.L784:
	R0 = 0 (X);
.L785:
	[SP+4] = R0;
	R1 = 2 (X);
	R0 = [SP+4];
	R1 = R1 - R0;
	R0 = [SP+8];
	R0 >>= R1;
	[SP+8] = R0;
	R0 = [SP+4];
	R1 = [SP];
	R0 = R1 + R0;
	[SP] = R0;
	R1 = [SP+8];
	R0 = 2 (X);
	R0 = R1 & R0;
	cc =R0==0;
	R0 = CC;
	R0 = R0.B (Z);
	R2 = R0;
	R1 = 2 (X);
	R0 = [SP+8];
	R0 = R1 - R0;
	R1 = R2;
	R1 *= R0;
	R0 = [SP];
	R0 = R1 + R0;
	P2 = R0;
	R0 = P2;
	SP += 12;
	rts;
	.size	___clzsi2, .-___clzsi2
	.align 4
.global ___cmpdi2;
.type ___cmpdi2, STT_FUNC;
___cmpdi2:
	SP += -16;
	[SP+16] = R0;
	[SP+20] = R1;
	[SP+24] = R2;
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+8] = R0;
	[SP+12] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP+12];
	R0 = [SP+4];
	cc =R1<R0;
	if !cc jump .L788;
	R0 = 0 (X);
	jump.s .L793;
.L788:
	R1 = [SP+12];
	R0 = [SP+4];
	cc =R1<=R0;
	if cc jump .L790;
	R0 = 2 (X);
	jump.s .L793;
.L790:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<R0 (iu);
	if !cc jump .L791;
	R0 = 0 (X);
	jump.s .L793;
.L791:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<=R0 (iu);
	if cc jump .L792;
	R0 = 2 (X);
	jump.s .L793;
.L792:
	R0 = 1 (X);
.L793:
	SP += 16;
	rts;
	.size	___cmpdi2, .-___cmpdi2
	.align 4
.global ___aeabi_lcmp;
.type ___aeabi_lcmp, STT_FUNC;
___aeabi_lcmp:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R1 = [SP+36];
	R0 = [SP+40];
	R2 = [SP+28];
	R3 = [SP+32];
	[SP+16] = R2;
	[SP+20] = R3;
	[SP+12] = R0;
	R2 = R1;
	R0 = [SP+16];
	R1 = [SP+20];
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
	SP += -12;
	[SP+12] = R0;
	R0 = [SP+12];
	[SP+8] = R0;
	R0 = [SP+8];
	R0 = R0.L (Z);
	cc =R0==0;
	if !cc jump .L797;
	R0 = 16 (X);
	jump.s .L798;
.L797:
	R0 = 0 (X);
.L798:
	[SP+4] = R0;
	R0 = [SP+8];
	R1 = [SP+4];
	R0 >>= R1;
	[SP+8] = R0;
	R0 = [SP+4];
	[SP] = R0;
	R0 = [SP+8];
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L799;
	R0 = 8 (X);
	jump.s .L800;
.L799:
	R0 = 0 (X);
.L800:
	[SP+4] = R0;
	R0 = [SP+8];
	R1 = [SP+4];
	R0 >>= R1;
	[SP+8] = R0;
	R0 = [SP+4];
	R1 = [SP];
	R0 = R1 + R0;
	[SP] = R0;
	R1 = [SP+8];
	R0 = 15 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L801;
	R0 = 4 (X);
	jump.s .L802;
.L801:
	R0 = 0 (X);
.L802:
	[SP+4] = R0;
	R0 = [SP+8];
	R1 = [SP+4];
	R0 >>= R1;
	[SP+8] = R0;
	R0 = [SP+4];
	R1 = [SP];
	R0 = R1 + R0;
	[SP] = R0;
	R1 = [SP+8];
	R0 = 3 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L803;
	R0 = 2 (X);
	jump.s .L804;
.L803:
	R0 = 0 (X);
.L804:
	[SP+4] = R0;
	R0 = [SP+8];
	R1 = [SP+4];
	R0 >>= R1;
	[SP+8] = R0;
	R1 = [SP+8];
	R0 = 3 (X);
	R0 = R1 & R0;
	[SP+8] = R0;
	R0 = [SP+4];
	R1 = [SP];
	R0 = R1 + R0;
	[SP] = R0;
	R0 = [SP+8];
	R1 = ~R0;
	R0 = 1 (X);
	R1 = R1 & R0;
	R0 = [SP+8];
	R0 >>= 1;
	R2 = 2 (X);
	R0 = R2 - R0;
	R1 = -R1;
	R1 = R1 & R0;
	R0 = [SP];
	R0 = R1 + R0;
	P2 = R0;
	R0 = P2;
	SP += 12;
	rts;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	SP += -28;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R0 = 32 (X);
	[SP+24] = R0;
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+36];
	R0 = [SP+24];
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L807;
	R0 = 0 (X);
	[SP+12] = R0;
	R0 = [SP+20];
	R2 = [SP+36];
	R1 = [SP+24];
	R1 = R2 - R1;
	R0 >>= R1;
	[SP+8] = R0;
	jump.s .L808;
.L807:
	R0 = [SP+36];
	cc =R0==0;
	if !cc jump .L809;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L811;
.L809:
	R0 = [SP+20];
	R1 = [SP+36];
	R0 >>= R1;
	[SP+12] = R0;
	R1 = [SP+20];
	R2 = [SP+24];
	R0 = [SP+36];
	R0 = R2 - R0;
	R1 <<= R0;
	R0 = [SP+16];
	R2 = [SP+36];
	R0 >>= R2;
	R0 = R1 | R0;
	[SP+8] = R0;
.L808:
	R0 = [SP+8];
	R1 = [SP+12];
.L811:
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	SP += 28;
	rts;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	SP += -28;
	[SP+28] = R0;
	[SP+32] = R1;
	R0 = 16 (X);
	[SP+24] = R0;
	R0 = -1 (X);
	R1 = [SP+24];
	R0 >>= R1;
	[SP+20] = R0;
	R1 = [SP+28];
	R0 = [SP+20];
	R1 = R1 & R0;
	R2 = [SP+32];
	R0 = [SP+20];
	R0 = R2 & R0;
	R0 *= R1;
	[SP+8] = R0;
	R0 = [SP+8];
	R1 = [SP+24];
	R0 >>= R1;
	[SP+16] = R0;
	R1 = [SP+8];
	R0 = [SP+20];
	R0 = R1 & R0;
	[SP+8] = R0;
	R1 = [SP+28];
	R0 = [SP+24];
	R1 >>= R0;
	R2 = [SP+32];
	R0 = [SP+20];
	R0 = R2 & R0;
	R0 *= R1;
	R1 = [SP+16];
	R0 = R1 + R0;
	[SP+16] = R0;
	R1 = [SP+8];
	R2 = [SP+16];
	R0 = [SP+20];
	R0 = R2 & R0;
	R2 = [SP+24];
	R0 <<= R2;
	R0 = R1 + R0;
	[SP+8] = R0;
	R1 = [SP+16];
	R0 = [SP+24];
	R1 >>= R0;
	R0 = R1;
	[SP+12] = R0;
	R0 = [SP+8];
	R1 = [SP+24];
	R0 >>= R1;
	[SP+16] = R0;
	R1 = [SP+8];
	R0 = [SP+20];
	R0 = R1 & R0;
	[SP+8] = R0;
	R1 = [SP+32];
	R0 = [SP+24];
	R1 >>= R0;
	R2 = [SP+28];
	R0 = [SP+20];
	R0 = R2 & R0;
	R0 *= R1;
	R1 = [SP+16];
	R0 = R1 + R0;
	[SP+16] = R0;
	R1 = [SP+8];
	R2 = [SP+16];
	R0 = [SP+20];
	R0 = R2 & R0;
	R2 = [SP+24];
	R0 <<= R2;
	R0 = R1 + R0;
	[SP+8] = R0;
	R0 = [SP+12];
	P2 = R0;
	R0 = [SP+16];
	R1 = [SP+24];
	R0 >>= R1;
	P1 = R0;
	P2 = P2 + P1;
	R0 = P2;
	[SP+12] = R0;
	R0 = [SP+12];
	P2 = R0;
	R1 = [SP+28];
	R0 = [SP+24];
	R1 >>= R0;
	R0 = [SP+32];
	R2 = [SP+24];
	R0 >>= R2;
	R0 *= R1;
	P1 = R0;
	P2 = P2 + P1;
	R0 = P2;
	[SP+12] = R0;
	R0 = [SP+8];
	R1 = [SP+12];
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	SP += 28;
	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--SP] = RETS;
	SP += -52;
	[SP+56] = R0;
	[SP+60] = R1;
	[SP+64] = R2;
	R0 = [SP+56];
	R1 = [SP+60];
	[SP+44] = R0;
	[SP+48] = R1;
	R0 = [SP+64];
	R1 = [SP+68];
	[SP+36] = R0;
	[SP+40] = R1;
	R0 = [SP+44];
	R1 = [SP+36];
	call ___muldsi3;
	[SP+20] = R0;
	[SP+24] = R1;
	R0 = [SP+20];
	R1 = [SP+24];
	[SP+28] = R0;
	[SP+32] = R1;
	R0 = [SP+32];
	P1 = R0;
	R0 = [SP+48];
	R1 = R0;
	R0 = [SP+36];
	R1 *= R0;
	R0 = [SP+44];
	R2 = [SP+40];
	R0 *= R2;
	R0 = R1 + R0;
	P2 = R0;
	P2 = P1 + P2;
	R0 = P2;
	[SP+32] = R0;
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+12] = R0;
	[SP+16] = R1;
	R0 = [SP+12];
	R1 = [SP+16];
	SP += 52;
	RETS = [SP++];
	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	[--sp] = ( r7:6 );

	[SP+8] = R0;
	[SP+12] = R1;
	R1 = [SP+8];
	R2 = [SP+12];
	R7 = 0 (X);
	R3 = 0 (X);
	R6 = R7 - R1; cc = ac0;
	CC = ! CC;
	R1 = CC;
	R0 = R3 - R2;
	R0 = R0 - R1;
	R1 = R6;
	R2 = R1;
	R1 = R0;
	R0 = R2;
	( r7:6 ) = [sp++];

	rts;
	.size	___negdi2, .-___negdi2
	.align 4
.global ___paritydi2;
.type ___paritydi2, STT_FUNC;
___paritydi2:
	SP += -12;
	[SP+12] = R0;
	[SP+16] = R1;
	R0 = [SP+12];
	R1 = [SP+16];
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP+4];
	R1 = R0;
	R0 = [SP];
	R0 = R1 ^ R0;
	[SP+8] = R0;
	R0 = [SP+8];
	R0 >>= 16;
	R1 = [SP+8];
	R0 = R1 ^ R0;
	[SP+8] = R0;
	R0 = [SP+8];
	R0 >>= 8;
	R1 = [SP+8];
	R0 = R1 ^ R0;
	[SP+8] = R0;
	R0 = [SP+8];
	R0 >>= 4;
	R1 = [SP+8];
	R0 = R1 ^ R0;
	[SP+8] = R0;
	R1 = [SP+8];
	R0 = 15 (X);
	R2 = R1 & R0;
	R0 = 27030 (X);
	R1 = R0;
	R1 >>>= R2;
	R0 = 1 (X);
	R0 = R1 & R0;
	SP += 12;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	SP += -4;
	[SP+4] = R0;
	R0 = [SP+4];
	[SP] = R0;
	R0 = [SP];
	R0 >>= 16;
	R1 = [SP];
	R0 = R1 ^ R0;
	[SP] = R0;
	R0 = [SP];
	R0 >>= 8;
	R1 = [SP];
	R0 = R1 ^ R0;
	[SP] = R0;
	R0 = [SP];
	R0 >>= 4;
	R1 = [SP];
	R0 = R1 ^ R0;
	[SP] = R0;
	R1 = [SP];
	R0 = 15 (X);
	R2 = R1 & R0;
	R0 = 27030 (X);
	R1 = R0;
	R1 >>>= R2;
	R0 = 1 (X);
	R0 = R1 & R0;
	SP += 4;
	rts;
	.size	___paritysi2, .-___paritysi2
	.align 4
.global ___popcountdi2;
.type ___popcountdi2, STT_FUNC;
___popcountdi2:
	[--sp] = ( r7:5 );

	SP += -12;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	[SP+4] = R0;
	[SP+8] = R1;
	R1 = [SP+4];
	R0 = [SP+8];
	CC = R0 < R0;
	R0 = ROT R0 BY -1;
	R1 = ROT R1 BY -1;
	R2.H = 21845;
	R2.L = 21845;
	R2 = R1 & R2;
	R1.H = 21845;
	R1.L = 21845;
	R3 = R0 & R1;
	R6 = [SP+4];
	R7 = [SP+8];
	R1 = R6 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R0 = R7 - R3;
	R0 = R0 - R2;
	[SP+4] = R1;
	[SP+8] = R0;
	R0 = [SP+8];
	R1 = R0 << 30;
	R0 = [SP+4];
	R0 >>= 2;
	R0 = R1 | R0;
	R1 = [SP+8];
	R3 = R1 >> 2;
	R1.H = 13107;
	R1.L = 13107;
	R2 = R0 & R1;
	R0.H = 13107;
	R0.L = 13107;
	R6 = R3 & R0;
	R5 = [SP+4];
	R3 = [SP+8];
	R0.H = 13107;
	R0.L = 13107;
	R1 = R5 & R0;
	R0.H = 13107;
	R0.L = 13107;
	R7 = R3 & R0;
	R3 = R2 + R1; cc = ac0;
	R1 = CC;
	R0 = R6 + R7;
	R0 = R0 + R1;
	[SP+4] = R3;
	[SP+8] = R0;
	R0 = [SP+8];
	R0 <<= 28;
	R1 = [SP+4];
	R1 >>= 4;
	R1 = R0 | R1;
	R0 = [SP+8];
	R7 = R0 >> 4;
	R6 = [SP+4];
	R2 = [SP+8];
	R3 = R1 + R6; cc = ac0;
	R1 = CC;
	R0 = R7 + R2;
	R0 = R0 + R1;
	R1.H = 3855;
	R1.L = 3855;
	R2 = R3 & R1;
	R1.H = 3855;
	R1.L = 3855;
	R1 = R0 & R1;
	[SP+4] = R2;
	[SP+8] = R1;
	R0 = [SP+4];
	R1 = [SP+8];
	R1 >>= 0;
	P2 = R1;
	R1 = P2;
	R0 = R0 + R1;
	[SP] = R0;
	R0 = [SP];
	R0 >>= 16;
	R1 = [SP];
	R0 = R1 + R0;
	[SP] = R0;
	R0 = [SP];
	R1 = R0 >> 8;
	R0 = [SP];
	R0 = R1 + R0;
	P2 = R0;
	R1 = P2;
	R0 = 127 (X);
	R0 = R1 & R0;
	SP += 12;
	( r7:5 ) = [sp++];

	rts;
	.size	___popcountdi2, .-___popcountdi2
	.align 4
.global ___popcountsi2;
.type ___popcountsi2, STT_FUNC;
___popcountsi2:
	SP += -4;
	[SP+4] = R0;
	R0 = [SP+4];
	[SP] = R0;
	R0 = [SP];
	R1 = R0 >> 1;
	R0.H = 21845;
	R0.L = 21845;
	R0 = R1 & R0;
	R1 = [SP];
	R0 = R1 - R0;
	[SP] = R0;
	R0 = [SP];
	R1 = R0 >> 2;
	R0.H = 13107;
	R0.L = 13107;
	R1 = R1 & R0;
	R2 = [SP];
	R0.H = 13107;
	R0.L = 13107;
	R0 = R2 & R0;
	R0 = R1 + R0;
	[SP] = R0;
	R0 = [SP];
	R1 = R0 >> 4;
	R0 = [SP];
	R1 = R1 + R0;
	R0.H = 3855;
	R0.L = 3855;
	R0 = R1 & R0;
	[SP] = R0;
	R0 = [SP];
	R0 >>= 16;
	R1 = [SP];
	R0 = R1 + R0;
	[SP] = R0;
	R0 = [SP];
	R1 = R0 >> 8;
	R0 = [SP];
	R0 = R1 + R0;
	P2 = R0;
	R1 = P2;
	R0 = 63 (X);
	R0 = R1 & R0;
	SP += 4;
	rts;
	.size	___popcountsi2, .-___popcountsi2
	.align 4
.global ___powidf2;
.type ___powidf2, STT_FUNC;
___powidf2:
	[--SP] = RETS;
	SP += -60;
	[SP+64] = R0;
	[SP+68] = R1;
	[SP+72] = R2;
	R0 = [SP+72];
	R0 >>= 31;
	R0 = R0.B (Z);
	[SP+48] = R0;
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	[SP+52] = R0;
	[SP+56] = R1;
.L830:
	R1 = [SP+72];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L827;
	R0 = [SP+68];
	[SP+12] = R0;
	R2 = [SP+64];
	R0 = [SP+52];
	R1 = [SP+56];
	call ___muldf3;
	[SP+32] = R0;
	[SP+36] = R1;
	R0 = [SP+32];
	R1 = [SP+36];
	[SP+52] = R0;
	[SP+56] = R1;
.L827:
	R0 = [SP+72];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+72] = R0;
	R0 = [SP+72];
	cc =R0==0;
	if cc jump .L835;
	R0 = [SP+68];
	[SP+12] = R0;
	R2 = [SP+64];
	R0 = [SP+64];
	R1 = [SP+68];
	call ___muldf3;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	[SP+64] = R0;
	[SP+68] = R1;
	jump.s .L830;
.L835:
	nop;
	R0 = [SP+48];
	cc =R0==0;
	if cc jump .L831;
	R0 = [SP+56];
	[SP+12] = R0;
	R2 = [SP+52];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	jump.s .L833;
.L831:
	R0 = [SP+52];
	R1 = [SP+56];
.L833:
	[SP+40] = R0;
	[SP+44] = R1;
	R0 = [SP+40];
	R1 = [SP+44];
	SP += 60;
	RETS = [SP++];
	rts;
	.size	___powidf2, .-___powidf2
	.align 4
.global ___powisf2;
.type ___powisf2, STT_FUNC;
___powisf2:
	[--SP] = RETS;
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+28];
	R0 >>= 31;
	R0 = R0.B (Z);
	[SP+12] = R0;
	R0 = 127 (X);
	R0 <<= 23;
	[SP+16] = R0;
.L840:
	R1 = [SP+28];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L837;
	R1 = [SP+24];
	R0 = [SP+16];
	call ___mulsf3;
	[SP+16] = R0;
.L837:
	R0 = [SP+28];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+28] = R0;
	R0 = [SP+28];
	cc =R0==0;
	if cc jump .L845;
	R1 = [SP+24];
	R0 = [SP+24];
	call ___mulsf3;
	[SP+24] = R0;
	jump.s .L840;
.L845:
	nop;
	R0 = [SP+12];
	cc =R0==0;
	if cc jump .L841;
	R1 = [SP+16];
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	jump.s .L843;
.L841:
	R0 = [SP+16];
.L843:
	SP += 20;
	RETS = [SP++];
	rts;
	.size	___powisf2, .-___powisf2
	.align 4
.global ___ucmpdi2;
.type ___ucmpdi2, STT_FUNC;
___ucmpdi2:
	SP += -16;
	[SP+16] = R0;
	[SP+20] = R1;
	[SP+24] = R2;
	R0 = [SP+16];
	R1 = [SP+20];
	[SP+8] = R0;
	[SP+12] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP+12];
	R0 = [SP+4];
	cc =R1<R0 (iu);
	if !cc jump .L847;
	R0 = 0 (X);
	jump.s .L852;
.L847:
	R1 = [SP+12];
	R0 = [SP+4];
	cc =R1<=R0 (iu);
	if cc jump .L849;
	R0 = 2 (X);
	jump.s .L852;
.L849:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<R0 (iu);
	if !cc jump .L850;
	R0 = 0 (X);
	jump.s .L852;
.L850:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<=R0 (iu);
	if cc jump .L851;
	R0 = 2 (X);
	jump.s .L852;
.L851:
	R0 = 1 (X);
.L852:
	SP += 16;
	rts;
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
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
	R1 = [SP+36];
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	call ___ucmpdi2;
	R0 += -1;
	SP += 24;
	RETS = [SP++];
	rts;
	.size	___aeabi_ulcmp, .-___aeabi_ulcmp
	.local	_s.0
	.comm	_s.0,7,1
.global ___divsf3;
.global ___fixsfsi;
.global ___gesf2;
.global ___umodsi3;
.global ___floatundisf;
.global ___floatundidf;
.global ___floatunsisf;
.global ___floatunsidf;
.global ___clzdi2;
.global ___clzsi2;
.global ___divdf3;
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
