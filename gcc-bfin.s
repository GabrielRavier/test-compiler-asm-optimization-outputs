.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	SP += -12;
	[SP+12] = R0;
	[SP+16] = R1;
	[SP+20] = R2;
	R1 = [SP+16];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if !cc jump .L2;
	R1 = [SP+16];
	R0 = [SP+20];
	R0 = R1 + R0;
	[SP] = R0;
	R1 = [SP+12];
	R0 = [SP+20];
	R0 = R1 + R0;
	[SP+8] = R0;
	jump.s .L3;
.L4:
	R0 = [SP];
	R0 += -1;
	[SP] = R0;
	R0 = [SP+8];
	R0 += -1;
	[SP+8] = R0;
	P2 = [SP];
	R0 = B [P2] (X);
	P2 = [SP+8];
	B [P2] = R0;
	R0 = [SP+20];
	R0 += -1;
	[SP+20] = R0;
.L3:
	R0 = [SP+20];
	cc =R0==0;
	if !cc jump .L4;
	jump.s .L5;
.L2:
	R1 = [SP+16];
	R0 = [SP+12];
	cc =R1==R0;
	if cc jump .L5;
	R0 = [SP+12];
	[SP+4] = R0;
	jump.s .L6;
.L7:
	P1 = [SP+16];
	R0 = P1;
	R0 += 1;
	[SP+16] = R0;
	P2 = [SP+4];
	R0 = P2;
	R0 += 1;
	[SP+4] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+20];
	R0 += -1;
	[SP+20] = R0;
.L6:
	R0 = [SP+20];
	cc =R0==0;
	if !cc jump .L7;
.L5:
	R0 = [SP+12];
	SP += 12;
	rts;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+12];
	R0 = R0.B (Z);
	[SP] = R0;
	jump.s .L10;
.L12:
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
	R0 = [SP+8];
	R0 += 1;
	[SP+8] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L10:
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L11;
	nop;
	nop;
	P2 = [SP+8];
	R0 = B [P2] (X);
	P2 = [SP+4];
	B [P2] = R0;
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [SP];
	cc =R1==R0;
	if !cc jump .L12;
.L11:
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L13;
	R0 = [SP+4];
	R0 += 1;
	jump.s .L14;
.L13:
	R0 = 0 (X);
.L14:
	SP += 4;
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
	R0 = [SP+8];
	R0 = R0.B (Z);
	[SP] = R0;
	jump.s .L16;
.L18:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
	R0 = [SP+12];
	R0 += -1;
	[SP+12] = R0;
.L16:
	R0 = [SP+12];
	cc =R0==0;
	if cc jump .L17;
	nop;
	nop;
	P2 = [SP+4];
	R0 = B [P2] (Z);
	R1 = [SP];
	cc =R1==R0;
	if !cc jump .L18;
.L17:
	R0 = [SP+12];
	cc =R0==0;
	if cc jump .L19;
	R0 = [SP+4];
	jump.s .L21;
.L19:
	R0 = 0 (X);
.L21:
	nop;
	SP += 4;
	rts;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	[SP] = R0;
	[SP+4] = R1;
	[SP+8] = R2;
	jump.s .L23;
.L25:
	R0 = [SP+8];
	R0 += -1;
	[SP+8] = R0;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L23:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L24;
	nop;
	nop;
	P2 = [SP];
	R1 = B [P2] (X);
	P2 = [SP+4];
	R0 = B [P2] (X);
	R1 = R1.B (Z);
	R0 = R0.B (Z);
	cc =R1==R0;
	if cc jump .L25;
.L24:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L26;
	nop;
	nop;
	P2 = [SP];
	R1 = B [P2] (Z);
	P2 = [SP+4];
	R0 = B [P2] (Z);
	R0 = R1 - R0;
	jump.s .L28;
.L26:
	R0 = 0 (X);
.L28:
	nop;
	rts;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+4];
	[SP] = R0;
	jump.s .L30;
.L31:
	P1 = [SP+8];
	R0 = P1;
	R0 += 1;
	[SP+8] = R0;
	P2 = [SP];
	R0 = P2;
	R0 += 1;
	[SP] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+12];
	R0 += -1;
	[SP+12] = R0;
.L30:
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L31;
	R0 = [SP+4];
	SP += 4;
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
	R0 = [SP+8];
	R0 = R0.B (Z);
	[SP] = R0;
	jump.s .L34;
.L36:
	R1 = [SP+4];
	R0 = [SP+12];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P2] (Z);
	R1 = [SP];
	cc =R1==R0;
	if !cc jump .L34;
	R1 = [SP+4];
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
	P2 = [SP];
	R0 = [SP+8];
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
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	R0 = [SP+8];
	R0 = R0.B (Z);
	[SP] = R0;
	jump.s .L46;
.L48:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L46:
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L47;
	nop;
	nop;
	P2 = [SP+4];
	R0 = B [P2] (Z);
	R1 = [SP];
	cc =R1==R0;
	if !cc jump .L48;
.L47:
	R0 = [SP+4];
	SP += 4;
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
	R1 = [SP+4];
	cc =R1==R0;
	if cc jump .L54;
	P1 = P2;
	P2 = P1;
	P2 += 1;
	R0 = B [P1] (X);
	cc =R0==0;
	if !cc jump .L53;
	P2 = 0 (X);
	jump.s .L52;
.L54:
	nop;
.L52:
	R0 = P2;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L56;
.L58:
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L56:
	P2 = [SP];
	R1 = B [P2] (X);
	P2 = [SP+4];
	R0 = B [P2] (X);
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L57;
	nop;
	nop;
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L58;
	nop;
	nop;
.L57:
	P2 = [SP];
	R1 = B [P2] (Z);
	P2 = [SP+4];
	R0 = B [P2] (Z);
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
	jump.s .L61;
.L62:
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L61:
	P2 = [SP];
	R0 = B [P2] (X);
	cc =R0==0;
	if !cc jump .L62;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 - R0;
	SP += 4;
	rts;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP] = R1;
	cc =R0==0;
	if !cc jump .L67;
	R0 = 0 (X);
	jump.s .L66;
.L69:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
	R0 = [SP+8];
	R0 += 1;
	[SP+8] = R0;
	R0 = [SP];
	R0 += -1;
	[SP] = R0;
.L67:
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L68;
	nop;
	nop;
	P2 = [SP+8];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L68;
	R0 = [SP];
	cc =R0==0;
	if cc jump .L68;
	nop;
	nop;
	P2 = [SP+4];
	R1 = B [P2] (X);
	P2 = [SP+8];
	R0 = B [P2] (X);
	R1 = R1.B (Z);
	R0 = R0.B (Z);
	cc =R1==R0;
	if cc jump .L69;
	nop;
	nop;
.L68:
	P2 = [SP+4];
	R1 = B [P2] (Z);
	P2 = [SP+8];
	R0 = B [P2] (Z);
	R0 = R1 - R0;
.L66:
	SP += 4;
	rts;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	[SP] = R0;
	[SP+4] = R1;
	[SP+8] = R2;
	jump.s .L71;
.L72:
	R0 = [SP];
	P2 = R0;
	P2 += 1;
	R0 = B [P2] (X);
	P2 = [SP+4];
	B [P2] = R0;
	R0 = [SP+4];
	P2 = R0;
	P2 += 1;
	P1 = [SP];
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+4];
	R0 += 2;
	[SP+4] = R0;
	R0 = [SP];
	R0 += 2;
	[SP] = R0;
	R0 = [SP+8];
	R0 += -2;
	[SP+8] = R0;
.L71:
	R0 = [SP+8];
	cc =R0<=1;
	if !cc jump .L72;
	nop;
	nop;
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
	if cc jump .L78;
	R0 = [SP];
	R1 = 9 (X);
	cc =R0==R1;
	if !cc jump .L79;
.L78:
	R0 = 1 (X);
	jump.s .L81;
.L79:
	R0 = 0 (X);
.L81:
	nop;
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
	if cc jump .L83;
	R0 = [SP];
	R1 = 127 (X);
	cc =R0==R1;
	if !cc jump .L84;
.L83:
	R0 = 1 (X);
	jump.s .L86;
.L84:
	R0 = 0 (X);
.L86:
	nop;
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
	if cc jump .L96;
	R0 = [SP];
	R0 += -9;
	cc =R0<=4 (iu);
	if !cc jump .L97;
.L96:
	R0 = 1 (X);
	jump.s .L99;
.L97:
	R0 = 0 (X);
.L99:
	nop;
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
	if cc jump .L103;
	R0 = [SP];
	P2 = -127 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 32 (X);
	cc =R0<=R1 (iu);
	if cc jump .L103;
	R0 = [SP];
	P2 = -8232 (X);
	R1 = P2;
	R0 = R0 + R1;
	cc =R0<=1 (iu);
	if cc jump .L103;
	R0 = [SP];
	P2.H = 65535;
	P2.L = 7;
	R1 = P2;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	if !cc jump .L104;
.L103:
	R0 = 1 (X);
	jump.s .L106;
.L104:
	R0 = 0 (X);
.L106:
	nop;
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
	if !cc jump .L110;
	R0 = [SP];
	R1 = R0;
	R1 += 1;
	R0 = 127 (X);
	R0 = R1 & R0;
	R1 = 32 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L111;
.L110:
	R0 = [SP];
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L112;
	R0 = [SP];
	P2 = -8234 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 47061 (Z);
	cc =R0<=R1 (iu);
	if cc jump .L112;
	R0 = [SP];
	P2.H = 65535;
	P2.L = 8192;
	R1 = P2;
	R0 = R0 + R1;
	R1 = 8184 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L113;
.L112:
	R0 = 1 (X);
	jump.s .L111;
.L113:
	R0 = [SP];
	P2 = -16383 (X);
	P2 = P2 << 2;
	R1 = P2;
	R0 = R0 + R1;
	R1 = 3 (X);
	BITSET (R1, 20);
	cc =R0<=R1 (iu);
	if !cc jump .L114;
	R1 = [SP];
	R0 = 65534 (Z);
	R0 = R1 & R0;
	R1 = 65534 (Z);
	cc =R0==R1;
	if !cc jump .L115;
.L114:
	R0 = 0 (X);
	jump.s .L111;
.L115:
	R0 = 1 (X);
.L111:
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
	if cc jump .L117;
	R0 = [SP];
	BITSET (R0, 5);
	P2 = -97 (X);
	R1 = P2;
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	if !cc jump .L118;
.L117:
	R0 = 1 (X);
	jump.s .L120;
.L118:
	R0 = 0 (X);
.L120:
	nop;
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
	if cc jump .L135;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L126;
.L135:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+36];
	R1 = [SP+40];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L136;
	R0 = [SP+36];
	R1 = [SP+40];
	jump.s .L126;
.L136:
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L137;
	R0 = [SP+40];
	[SP+12] = R0;
	R2 = [SP+36];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___subdf3;
	[SP+16] = R0;
	[SP+20] = R1;
	R0 = [SP+16];
	R1 = [SP+20];
	jump.s .L126;
.L137:
	R0 = 0 (X);
	R1 = 0 (X);
.L126:
	SP += 24;
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
	if cc jump .L150;
	R0 = [SP+16];
	jump.s .L141;
.L150:
	R1 = [SP+20];
	R0 = [SP+20];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L151;
	R0 = [SP+20];
	jump.s .L141;
.L151:
	R1 = [SP+20];
	R0 = [SP+16];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L152;
	R1 = [SP+20];
	R0 = [SP+16];
	call ___subsf3;
	jump.s .L141;
.L152:
	R0 = 0 (X);
.L141:
	SP += 12;
	RETS = [SP++];
	rts;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R0 = [SP+24];
	[SP+12] = R0;
	R2 = [SP+20];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L168;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L156;
.L168:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L169;
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L156;
.L169:
	R0 = [SP+24];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L159;
	R0 = [SP+24];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L160;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L156;
.L160:
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L156;
.L159:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L170;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L156;
.L170:
	R0 = [SP+20];
	R1 = [SP+24];
.L156:
	SP += 16;
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
	if cc jump .L186;
	R0 = [SP+20];
	jump.s .L174;
.L186:
	R1 = [SP+20];
	R0 = [SP+20];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L187;
	R0 = [SP+16];
	jump.s .L174;
.L187:
	R0 = [SP+16];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L177;
	R0 = [SP+16];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L178;
	R0 = [SP+20];
	jump.s .L174;
.L178:
	R0 = [SP+16];
	jump.s .L174;
.L177:
	R1 = [SP+20];
	R0 = [SP+16];
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L188;
	R0 = [SP+20];
	jump.s .L174;
.L188:
	R0 = [SP+16];
.L174:
	SP += 12;
	RETS = [SP++];
	rts;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R0 = [SP+24];
	[SP+12] = R0;
	R2 = [SP+20];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L204;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L192;
.L204:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L205;
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L192;
.L205:
	R0 = [SP+24];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L195;
	R0 = [SP+24];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L196;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L192;
.L196:
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L192;
.L195:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L206;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L192;
.L206:
	R0 = [SP+20];
	R1 = [SP+24];
.L192:
	SP += 16;
	RETS = [SP++];
	rts;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R0 = [SP+24];
	[SP+12] = R0;
	R2 = [SP+20];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L222;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L210;
.L222:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L223;
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L210;
.L223:
	R0 = [SP+24];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L213;
	R0 = [SP+24];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L214;
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L210;
.L214:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L210;
.L213:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L224;
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L210;
.L224:
	R0 = [SP+28];
	R1 = [SP+32];
.L210:
	SP += 16;
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
	if cc jump .L240;
	R0 = [SP+20];
	jump.s .L228;
.L240:
	R1 = [SP+20];
	R0 = [SP+20];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L241;
	R0 = [SP+16];
	jump.s .L228;
.L241:
	R0 = [SP+16];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L231;
	R0 = [SP+16];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L232;
	R0 = [SP+16];
	jump.s .L228;
.L232:
	R0 = [SP+20];
	jump.s .L228;
.L231:
	R1 = [SP+20];
	R0 = [SP+16];
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L242;
	R0 = [SP+16];
	jump.s .L228;
.L242:
	R0 = [SP+20];
.L228:
	SP += 12;
	RETS = [SP++];
	rts;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R0 = [SP+24];
	[SP+12] = R0;
	R2 = [SP+20];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L258;
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L246;
.L258:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+28];
	R1 = [SP+32];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L259;
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L246;
.L259:
	R0 = [SP+24];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [SP+32];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L249;
	R0 = [SP+24];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L250;
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L246;
.L250:
	R0 = [SP+28];
	R1 = [SP+32];
	jump.s .L246;
.L249:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L260;
	R0 = [SP+20];
	R1 = [SP+24];
	jump.s .L246;
.L260:
	R0 = [SP+28];
	R1 = [SP+32];
.L246:
	SP += 16;
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
	jump.s .L262;
.L263:
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
.L262:
	R0 = [SP];
	cc =R0==0;
	if !cc jump .L263;
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
	SP += -16;
	P2.H = _seed;
	P2.L = _seed;
	R0.H = 22609;
	R0.L = 62509;
	[SP+12] = R0;
	R2.H = 19605;
	R2.L = 32557;
	R0 = [P2];
	R1 = [P2+4];
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
	SP += 16;
	RETS = [SP++];
	rts;
	.size	_rand, .-_rand
	.align 4
.global _insque;
.type _insque, STT_FUNC;
_insque:
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L269;
	P2 = [SP];
	R0 = 0 (X);
	[P2+4] = R0;
	P2 = [SP];
	R0 = [P2+4];
	P2 = [SP];
	[P2] = R0;
	jump.s .L268;
.L269:
	P2 = [SP+4];
	R0 = [P2];
	P2 = [SP];
	[P2] = R0;
	P2 = [SP];
	R0 = [SP+4];
	[P2+4] = R0;
	P2 = [SP+4];
	R0 = [SP];
	[P2] = R0;
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L268;
	nop;
	nop;
	P2 = [SP];
	P2 = [P2];
	R0 = [SP];
	[P2+4] = R0;
.L268:
	rts;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	[SP] = R0;
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L272;
	nop;
	nop;
	P2 = [SP];
	P2 = [P2];
	P1 = [SP];
	R0 = [P1+4];
	[P2+4] = R0;
.L272:
	P2 = [SP];
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L274;
	nop;
	nop;
	P2 = [SP];
	P2 = [P2+4];
	P1 = [SP];
	R0 = [P1];
	[P2] = R0;
.L274:
	nop;
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	[SP+40] = R2;
	R7 = [SP+44];
	R0 = R7;
	R0 += -1;
	[SP+16] = R0;
	R1 = R7;
	R0 = 0 (X);
	R2 = R1 >> 29;
	R0 <<= 3;
	R0 = R2 | R0;
	R1 <<= 3;
	P2 = [SP+40];
	R0 = [P2];
	[SP+12] = R0;
	R0 = 0 (X);
	[SP+20] = R0;
	jump.s .L276;
.L279:
	R0 = [SP+20];
	R0 *= R7;
	R1 = [SP+36];
	R1 = R1 + R0;
	P1 = R1;
	P2 = [SP+48];
	R1 = P1;
	R0 = [SP+32];
	call (P2);
	cc =R0==0;
	if !cc jump .L277;
	R0 = [SP+20];
	R0 *= R7;
	R1 = [SP+36];
	R1 = R1 + R0;
	P2 = R1;
	jump.s .L278;
.L277:
	R0 = [SP+20];
	R0 += 1;
	[SP+20] = R0;
.L276:
	R1 = [SP+20];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L279;
	R0 = [SP+12];
	R0 += 1;
	P2 = [SP+40];
	[P2] = R0;
	R0 = [SP+12];
	R0 *= R7;
	R1 = [SP+36];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [SP+44];
	R2 = R0;
	R1 = [SP+32];
	R0 = P2;
	call _memcpy;
	P2 = R0;
.L278:
	R0 = P2;
	SP += 24;
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
	SP += -24;
	[SP+32] = R0;
	[SP+36] = R1;
	[SP+40] = R2;
	R7 = [SP+44];
	R0 = R7;
	R0 += -1;
	[SP+16] = R0;
	R1 = R7;
	R0 = 0 (X);
	R2 = R1 >> 29;
	R0 <<= 3;
	R0 = R2 | R0;
	R1 <<= 3;
	P2 = [SP+40];
	R0 = [P2];
	[SP+12] = R0;
	R0 = 0 (X);
	[SP+20] = R0;
	jump.s .L281;
.L284:
	R0 = [SP+20];
	R0 *= R7;
	R1 = [SP+36];
	R1 = R1 + R0;
	P1 = R1;
	P2 = [SP+48];
	R1 = P1;
	R0 = [SP+32];
	call (P2);
	cc =R0==0;
	if !cc jump .L282;
	R0 = [SP+20];
	R0 *= R7;
	R1 = [SP+36];
	R1 = R1 + R0;
	P2 = R1;
	jump.s .L283;
.L282:
	R0 = [SP+20];
	R0 += 1;
	[SP+20] = R0;
.L281:
	R1 = [SP+20];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L284;
	P2 = 0 (X);
.L283:
	R0 = P2;
	SP += 24;
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
	jump.s .L288;
.L289:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
.L288:
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L289;
	nop;
	nop;
	P2 = [SP+24];
	R0 = B [P2] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L290;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L292;
	R0 = 1 (X);
	[SP+12] = R0;
.L290:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
	jump.s .L292;
.L293:
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
	R0 += -48;
	R0 = R1 - R0;
	[SP+16] = R0;
.L292:
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L293;
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L294;
	R0 = [SP+16];
	R0 = -R0;
	jump.s .L296;
.L294:
	R0 = [SP+16];
.L296:
	nop;
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
	jump.s .L298;
.L299:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
.L298:
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L299;
	nop;
	nop;
	P2 = [SP+24];
	R0 = B [P2] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L300;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L302;
	R0 = 1 (X);
	[SP+12] = R0;
.L300:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
	jump.s .L302;
.L303:
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
	R0 += -48;
	R0 = R1 - R0;
	[SP+16] = R0;
.L302:
	P2 = [SP+24];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L303;
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L304;
	R0 = [SP+16];
	R0 = -R0;
	jump.s .L306;
.L304:
	R0 = [SP+16];
.L306:
	nop;
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
	jump.s .L308;
.L309:
	R0 = [SP+40];
	R0 += 1;
	[SP+40] = R0;
.L308:
	P2 = [SP+40];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L309;
	nop;
	nop;
	P2 = [SP+40];
	R0 = B [P2] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L310;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L312;
	R0 = 1 (X);
	[SP+16] = R0;
.L310:
	R0 = [SP+40];
	R0 += 1;
	[SP+40] = R0;
	jump.s .L312;
.L313:
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
.L312:
	P2 = [SP+40];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L313;
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L314;
	R6 = 0 (X);
	R7 = 0 (X);
	R2 = [SP+20];
	R3 = [SP+24];
	R0 = R6 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R7 - R3;
	R1 = R1 - R2;
	jump.s .L316;
.L314:
	R0 = [SP+20];
	R1 = [SP+24];
.L316:
	nop;
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
	jump.s .L318;
.L323:
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
	if !cc jump .L319;
	R0 = [SP+32];
	R0 >>= 1;
	[SP+32] = R0;
	jump.s .L318;
.L319:
	R0 = [SP+12];
	cc =R0<=0;
	if cc jump .L321;
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
	jump.s .L318;
.L321:
	R0 = [SP+16];
	jump.s .L322;
.L318:
	R0 = [SP+32];
	cc =R0==0;
	if !cc jump .L323;
	R0 = 0 (X);
.L322:
	SP += 20;
	RETS = [SP++];
	rts;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--SP] = RETS;
	SP += -24;
	[SP+28] = R0;
	[SP+32] = R1;
	[SP+36] = R2;
	R0 = [SP+36];
	[SP+20] = R0;
	jump.s .L325;
.L329:
	R0 = [SP+20];
	R1 = R0 >>> 1;
	R0 = [SP+40];
	R0 *= R1;
	R1 = [SP+32];
	R0 = R1 + R0;
	[SP+16] = R0;
	R1 = [SP+48];
	R0 = [SP+16];
	P2 = [SP+44];
	R2 = R1;
	R1 = R0;
	R0 = [SP+28];
	call (P2);
	[SP+12] = R0;
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L326;
	R0 = [SP+16];
	jump.s .L327;
.L326:
	R0 = [SP+12];
	cc =R0<=0;
	if cc jump .L328;
	R1 = [SP+16];
	R0 = [SP+40];
	R0 = R1 + R0;
	[SP+32] = R0;
	R0 = [SP+20];
	R0 += -1;
	[SP+20] = R0;
.L328:
	R0 = [SP+20];
	R0 >>>= 1;
	[SP+20] = R0;
.L325:
	R0 = [SP+20];
	cc =R0==0;
	if !cc jump .L329;
	R0 = 0 (X);
.L327:
	SP += 24;
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
	if !cc jump .L333;
	R7 = 0 (X);
	R3 = 0 (X);
	R6 = R7 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R3 - R0;
	R1 = R1 - R2;
	R2 = R6;
	R0 = R1;
.L333:
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
	if !cc jump .L343;
	R7 = 0 (X);
	R3 = 0 (X);
	R6 = R7 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R3 - R0;
	R1 = R1 - R2;
	R2 = R6;
	R0 = R1;
.L343:
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
	jump.s .L349;
.L351:
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
.L349:
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L350;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	R1 = [SP+4];
	cc =R1==R0;
	if !cc jump .L351;
	nop;
	nop;
.L350:
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L352;
	R0 = [SP];
	jump.s .L354;
.L352:
	R0 = 0 (X);
.L354:
	nop;
	rts;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L356;
.L358:
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 4;
	[SP+4] = R0;
.L356:
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1==R0;
	if !cc jump .L357;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L357;
	nop;
	nop;
	P2 = [SP+4];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L358;
	nop;
	nop;
.L357:
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L359;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	P2 = [SP+4];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L361;
.L359:
	R0 = -1 (X);
.L361:
	nop;
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
.L363:
	P1 = [SP+8];
	R0 = P1;
	R0 += 4;
	[SP+8] = R0;
	P2 = [SP];
	R0 = P2;
	R0 += 4;
	[SP] = R0;
	R0 = [P1];
	[P2] = R0;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L363;
	R0 = [SP+4];
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
	jump.s .L366;
.L367:
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
.L366:
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L367;
	R1 = [SP];
	R0 = [SP+4];
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
	jump.s .L370;
.L372:
	R0 = [SP+8];
	R0 += -1;
	[SP+8] = R0;
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 4;
	[SP+4] = R0;
.L370:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L371;
	nop;
	nop;
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1==R0;
	if !cc jump .L371;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L371;
	nop;
	nop;
	P2 = [SP+4];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L372;
.L371:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L373;
	nop;
	nop;
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L374;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	P2 = [SP+4];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L377;
.L374:
	R0 = -1 (X);
	jump.s .L377;
.L373:
	R0 = 0 (X);
.L377:
	nop;
	rts;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	[SP] = R0;
	[SP+4] = R1;
	[SP+8] = R2;
	jump.s .L379;
.L381:
	R0 = [SP+8];
	R0 += -1;
	[SP+8] = R0;
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
.L379:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L380;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	R1 = [SP+4];
	cc =R1==R0;
	if !cc jump .L381;
.L380:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L382;
	R0 = [SP];
	jump.s .L384;
.L382:
	R0 = 0 (X);
.L384:
	nop;
	rts;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[SP] = R0;
	[SP+4] = R1;
	[SP+8] = R2;
	jump.s .L386;
.L388:
	R0 = [SP+8];
	R0 += -1;
	[SP+8] = R0;
	R0 = [SP];
	R0 += 4;
	[SP] = R0;
	R0 = [SP+4];
	R0 += 4;
	[SP+4] = R0;
.L386:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L387;
	nop;
	nop;
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1==R0;
	if cc jump .L388;
.L387:
	R0 = [SP+8];
	cc =R0==0;
	if cc jump .L389;
	nop;
	nop;
	P2 = [SP];
	R1 = [P2];
	P2 = [SP+4];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L390;
	nop;
	nop;
	P2 = [SP];
	R0 = [P2];
	P2 = [SP+4];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L393;
.L390:
	R0 = -1 (X);
	jump.s .L393;
.L389:
	R0 = 0 (X);
.L393:
	nop;
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
	jump.s .L395;
.L396:
	P1 = [SP+8];
	R0 = P1;
	R0 += 4;
	[SP+8] = R0;
	P2 = [SP];
	R0 = P2;
	R0 += 4;
	[SP] = R0;
	R0 = [P1];
	[P2] = R0;
.L395:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L396;
	R0 = [SP+4];
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
	R1 = [SP+4];
	R0 = [SP+8];
	cc =R1==R0;
	if !cc jump .L399;
	R0 = [SP+4];
	jump.s .L400;
.L399:
	R1 = [SP+4];
	R0 = [SP+8];
	R1 = R1 - R0;
	R0 = [SP+12];
	R0 <<= 2;
	cc =R1<R0 (iu);
	if !cc jump .L401;
	jump.s .L402;
.L403:
	R0 = [SP+12];
	R0 <<= 2;
	R1 = [SP+4];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [SP+12];
	R0 <<= 2;
	R1 = [SP+8];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [P1];
	[P2] = R0;
.L402:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L403;
	jump.s .L404;
.L401:
	R0 = [SP+4];
	[SP] = R0;
	jump.s .L405;
.L406:
	P1 = [SP+8];
	R0 = P1;
	R0 += 4;
	[SP+8] = R0;
	P2 = [SP];
	R0 = P2;
	R0 += 4;
	[SP] = R0;
	R0 = [P1];
	[P2] = R0;
.L405:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L406;
.L404:
	R0 = [SP+4];
.L400:
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
	jump.s .L408;
.L409:
	P2 = [SP];
	R0 = P2;
	R0 += 4;
	[SP] = R0;
	R0 = [SP+8];
	[P2] = R0;
.L408:
	R0 = [SP+12];
	R1 = R0;
	R1 += -1;
	[SP+12] = R1;
	cc =R0==0;
	if !cc jump .L409;
	R0 = [SP+4];
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
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if !cc jump .L412;
	R1 = [SP+8];
	R0 = [SP+16];
	R0 = R1 + R0;
	[SP+4] = R0;
	R1 = [SP+12];
	R0 = [SP+16];
	R0 = R1 + R0;
	[SP] = R0;
	jump.s .L413;
.L414:
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
.L413:
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L414;
	jump.s .L418;
.L412:
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1==R0;
	if cc jump .L418;
	jump.s .L416;
.L417:
	P1 = [SP+8];
	R0 = P1;
	R0 += 1;
	[SP+8] = R0;
	P2 = [SP+12];
	R0 = P2;
	R0 += 1;
	[SP+12] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+16];
	R0 += -1;
	[SP+16] = R0;
.L416:
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L417;
.L418:
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
	R1 = [SP+44];
	R0 = [SP+48];
	R7 = R0;
	R7 += -32;
	R5 = R1;
	R5 >>= R7;
	R6 = 0 (X);
	R3 = R1 << 1;
	R4 = 31 (X);
	R0 = [SP+48];
	R0 = R4 - R0;
	R3 <<= R0;
	R4 = [SP+48];
	R0 = R2;
	R0 >>= R4;
	[SP] = R0;
	R0 = [SP];
	R0 = R3 | R0;
	[SP] = R0;
	R4 = [SP+48];
	R3 = R1;
	R3 >>= R4;
	cc =R7<0;
	R0 = [SP];
	if !cc R0 = R5;
	[SP] = R0;
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
	R1 <<= R6;
	R6 = [SP+12];
	R1 = R6 | R1;
	R6 = [SP+48];
	R6 = -R6;
	R0 = 63 (X);
	[SP+4] = R0;
	R0 = [SP+4];
	R6 = R6 & R0;
	R2 <<= R6;
	cc =R7<0;
	if !cc R1 = R4;
	cc =R7<0;
	if !cc R2 = R5;
	R0 = [SP];
	R6 = R0 | R2;
	R7 = R3 | R1;
	R2 = R6;
	R1 = R7;
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
	R1 = [SP];
	R0 = [SP+4];
	R2 = R1;
	R2 <<= R0;
	R0 = [SP+4];
	R0 = -R0;
	R3 = 31 (X);
	R0 = R0 & R3;
	R1 >>= R0;
	R1 = R1 | R2;
	R0 = R1;
	rts;
	.size	_rotl32, .-_rotl32
	.align 4
.global _rotr32;
.type _rotr32, STT_FUNC;
_rotr32:
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R0 = [SP+4];
	R2 = R1;
	R2 >>= R0;
	R0 = [SP+4];
	R0 = -R0;
	R3 = 31 (X);
	R0 = R0 & R3;
	R1 <<= R0;
	R1 = R1 | R2;
	R0 = R1;
	rts;
	.size	_rotr32, .-_rotr32
	.align 4
.global _rotl_sz;
.type _rotl_sz, STT_FUNC;
_rotl_sz:
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R0 = [SP+4];
	R2 = R1;
	R2 <<= R0;
	R0 = [SP+4];
	R0 = -R0;
	R3 = 31 (X);
	R0 = R0 & R3;
	R1 >>= R0;
	R1 = R1 | R2;
	R0 = R1;
	rts;
	.size	_rotl_sz, .-_rotl_sz
	.align 4
.global _rotr_sz;
.type _rotr_sz, STT_FUNC;
_rotr_sz:
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP];
	R0 = [SP+4];
	R2 = R1;
	R2 >>= R0;
	R0 = [SP+4];
	R0 = -R0;
	R3 = 31 (X);
	R0 = R0 & R3;
	R1 <<= R0;
	R1 = R1 | R2;
	R0 = R1;
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
	R0 = [SP];
	R0 <<= 8;
	R1 = W [SP+4] (Z);
	R0 = R1 & R0;
	R1 = R0 >> 8;
	R2 = [SP];
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
	jump.s .L446;
.L449:
	R0 = [SP+4];
	R1 = [SP];
	R0 >>= R1;
	R1 = 1 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if cc jump .L447;
	R0 = [SP];
	R0 += 1;
	jump.s .L448;
.L447:
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L446:
	R0 = [SP];
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L449;
	R0 = 0 (X);
.L448:
	SP += 4;
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	[--sp] = ( r7:7 );

	cc =R0==0;
	if !cc jump .L451;
	R7 = 0 (X);
	jump.s .L452;
.L451:
	R7 = 1 (X);
	jump.s .L453;
.L454:
	R0 >>>= 1;
	R7 += 1;
.L453:
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if cc jump .L454;
	nop;
.L452:
	R0 = R7;
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
	if cc jump .L456;
	R1 = -1 (X);
	R1.H = 32639;
	R0 = [SP+16];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L461;
.L456:
	R0 = 1 (X);
	jump.s .L460;
.L461:
	R0 = 0 (X);
.L460:
	nop;
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
	if cc jump .L463;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+20];
	R1 = [SP+24];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L468;
.L463:
	R0 = 1 (X);
	jump.s .L467;
.L468:
	R0 = 0 (X);
.L467:
	nop;
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
	if cc jump .L470;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [SP+20];
	R1 = [SP+24];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L475;
.L470:
	R0 = 1 (X);
	jump.s .L474;
.L475:
	R0 = 0 (X);
.L474:
	nop;
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
	if !cc jump .L478;
	R0 = [SP+20];
	R1 = R0;
	call ___addsf3;
	R1 = R0;
	R0 = [SP+20];
	call ___nesf2;
	cc =R0==0;
	if cc jump .L478;
	R0 = [SP+24];
	cc =R0<0;
	if !cc jump .L480;
	R0 = 63 (X);
	R0 <<= 24;
	jump.s .L481;
.L480:
	R0 = 1 (X);
	R0 <<= 30;
.L481:
	[SP+12] = R0;
.L484:
	R1 = [SP+24];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L482;
	R1 = [SP+12];
	R0 = [SP+20];
	call ___mulsf3;
	[SP+20] = R0;
.L482:
	R0 = [SP+24];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+24] = R0;
	R0 = [SP+24];
	cc =R0==0;
	if cc jump .L487;
	R1 = [SP+12];
	R0 = [SP+12];
	call ___mulsf3;
	[SP+12] = R0;
	jump.s .L484;
.L487:
	nop;
.L478:
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
	if !cc jump .L489;
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
	if cc jump .L489;
	R0 = [SP+76];
	cc =R0<0;
	if !cc jump .L491;
	R0 = 0 (X);
	R1 = 511 (X);
	R1 <<= 21;
	jump.s .L492;
.L491:
	R0 = 0 (X);
	R1 = 1 (X);
	R1 <<= 30;
.L492:
	[SP+56] = R0;
	[SP+60] = R1;
.L495:
	R1 = [SP+76];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L493;
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
.L493:
	R0 = [SP+76];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+76] = R0;
	R0 = [SP+76];
	cc =R0==0;
	if cc jump .L498;
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
	jump.s .L495;
.L498:
	nop;
.L489:
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
	if !cc jump .L500;
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
	if cc jump .L500;
	R0 = [SP+76];
	cc =R0<0;
	if !cc jump .L502;
	R0 = 0 (X);
	R1 = 511 (X);
	R1 <<= 21;
	jump.s .L503;
.L502:
	R0 = 0 (X);
	R1 = 1 (X);
	R1 <<= 30;
.L503:
	[SP+56] = R0;
	[SP+60] = R1;
.L506:
	R1 = [SP+76];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L504;
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
.L504:
	R0 = [SP+76];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+76] = R0;
	R0 = [SP+76];
	cc =R0==0;
	if cc jump .L509;
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
	jump.s .L506;
.L509:
	nop;
.L500:
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
	SP += -4;
	[SP+4] = R0;
	[SP+8] = R1;
	[SP+12] = R2;
	R0 = [SP+4];
	[SP] = R0;
	jump.s .L511;
.L512:
	P2 = [SP+8];
	R0 = P2;
	R0 += 1;
	[SP+8] = R0;
	R1 = B [P2] (X);
	P2 = [SP];
	R0 = P2;
	R0 += 1;
	[SP] = R0;
	R0 = B [P2] (X);
	R0 = R1 ^ R0;
	B [P2] = R0;
	R0 = [SP+12];
	R0 += -1;
	[SP+12] = R0;
.L511:
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L512;
	R0 = [SP+4];
	SP += 4;
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
	jump.s .L515;
.L517:
	R0 = [SP+24];
	R0 += 1;
	[SP+24] = R0;
	R0 = [SP+12];
	R0 += 1;
	[SP+12] = R0;
	R0 = [SP+28];
	R0 += -1;
	[SP+28] = R0;
.L515:
	R0 = [SP+28];
	cc =R0==0;
	if cc jump .L516;
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
	if !cc jump .L517;
.L516:
	R0 = [SP+28];
	cc =R0==0;
	if !cc jump .L518;
	P2 = [SP+12];
	R0 = 0 (X);
	B [P2] = R0;
.L518:
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
	jump.s .L521;
.L526:
	nop;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L521:
	R1 = [SP];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if !cc jump .L522;
	R1 = [SP+4];
	R0 = [SP];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L526;
.L522:
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
	jump.s .L528;
.L532:
	R0 = [SP+8];
	[SP] = R0;
	jump.s .L529;
.L531:
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
	if !cc jump .L529;
	R0 = [SP+4];
	jump.s .L530;
.L529:
	P2 = [SP];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L531;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L528:
	P2 = [SP+4];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L532;
	R0 = 0 (X);
.L530:
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
.L535:
	R0 = B [P2] (X);
	R1 = [SP+8];
	cc =R1==R0;
	if !cc jump .L534;
	[SP] = P2;
.L534:
	P1 = P2;
	P2 = P1;
	P2 += 1;
	R0 = B [P1] (X);
	cc =R0==0;
	if !cc jump .L535;
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
	R0 = [SP+28];
	call _strlen;
	[SP+16] = R0;
	R0 = [SP+16];
	cc =R0==0;
	if !cc jump .L540;
	R0 = [SP+24];
	jump.s .L539;
.L542:
	R2 = [SP+16];
	R1 = [SP+28];
	R0 = [SP+12];
	call _strncmp;
	cc =R0==0;
	if !cc jump .L541;
	R0 = [SP+12];
	jump.s .L539;
.L541:
	R0 = [SP+12];
	R0 += 1;
	[SP+24] = R0;
.L540:
	P2 = [SP+28];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = R0;
	R0 = [SP+24];
	call _strchr;
	[SP+12] = R0;
	R0 = [SP+12];
	cc =R0==0;
	if !cc jump .L542;
	R0 = 0 (X);
.L539:
	SP += 20;
	RETS = [SP++];
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
	if !cc jump .L544;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L546;
.L544:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+28];
	R1 = [SP+32];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L547;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+36];
	R1 = [SP+40];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L547;
.L546:
	R0 = [SP+28];
	[SP+16] = R0;
	R0 = [SP+32];
	R1 = R0;
	BITTGL (R1, 31);
	[SP+20] = R1;
	jump.s .L550;
.L547:
	R0 = [SP+28];
	R1 = [SP+32];
	[SP+16] = R0;
	[SP+20] = R1;
.L550:
	R0 = [SP+16];
	R1 = [SP+20];
	SP += 24;
	RETS = [SP++];
	rts;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	[SP+28] = R2;
	R1 = [SP+24];
	R0 = [SP+32];
	R0 = R1 - R0;
	R1 = [SP+20];
	R0 = R1 + R0;
	[SP+12] = R0;
	R0 = [SP+32];
	cc =R0==0;
	if !cc jump .L554;
	R0 = [SP+20];
	jump.s .L555;
.L554:
	R1 = [SP+24];
	R0 = [SP+32];
	cc =R1<R0 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L557;
	R0 = 0 (X);
	jump.s .L555;
.L559:
	P2 = [SP+20];
	R1 = B [P2] (X);
	P2 = [SP+28];
	R0 = B [P2] (X);
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L558;
	R0 = [SP+20];
	R3 = R0;
	R3 += 1;
	R0 = [SP+32];
	R1 = R0;
	R1 += -1;
	R0 = [SP+28];
	R0 += 1;
	R2 = R1;
	R1 = R0;
	R0 = R3;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L558;
	R0 = [SP+20];
	jump.s .L555;
.L558:
	R0 = [SP+20];
	R0 += 1;
	[SP+20] = R0;
.L557:
	R1 = [SP+20];
	R0 = [SP+12];
	cc =R1<=R0 (iu);
	if cc jump .L559;
	R0 = 0 (X);
.L555:
	SP += 16;
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
	if !cc jump .L563;
	R4 = [SP+76];
	R0 = [SP+80];
	R5 = R0;
	BITTGL (R5, 31);
	[SP+76] = R4;
	[SP+80] = R5;
	R0 = 1 (X);
	[SP+52] = R0;
.L563:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L580;
	jump.s .L567;
.L568:
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
.L567:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L568;
	jump.s .L569;
.L580:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L569;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L569;
	jump.s .L572;
.L573:
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
.L572:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [SP+76];
	R1 = [SP+80];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L573;
.L569:
	P2 = [SP+84];
	R0 = [SP+48];
	[P2] = R0;
	R0 = [SP+52];
	cc =R0==0;
	if cc jump .L574;
	R6 = [SP+76];
	R0 = [SP+80];
	R7 = R0;
	BITTGL (R7, 31);
	[SP+76] = R6;
	[SP+80] = R7;
.L574:
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
	jump.s .L582;
.L585:
	R3 = [SP+8];
	R2 = [SP+12];
	R0 = 1 (X);
	R7 = R3 & R0;
	R0 = 0 (X);
	R1 = R2 & R0;
	R0 = R7;
	R0 = R0 | R1;
	cc =R0==0;
	if cc jump .L583;
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
.L583:
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
.L582:
	R0 = [SP+8];
	R1 = [SP+12];
	R0 = R0 | R1;
	cc =R0==0;
	if !cc jump .L585;
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
	jump.s .L588;
.L590:
	R0 = [SP+12];
	R0 <<= 1;
	[SP+12] = R0;
	R0 = [SP+4];
	R0 <<= 1;
	[SP+4] = R0;
.L588:
	R1 = [SP+12];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if !cc jump .L591;
	R0 = [SP+4];
	cc =R0==0;
	if cc jump .L591;
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L590;
	jump.s .L591;
.L593:
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L592;
	R1 = [SP+8];
	R0 = [SP+12];
	R0 = R1 - R0;
	[SP+8] = R0;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 | R0;
	[SP] = R0;
.L592:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+12];
	R0 >>= 1;
	[SP+12] = R0;
.L591:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L593;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L594;
	R0 = [SP+8];
	jump.s .L595;
.L594:
	R0 = [SP];
.L595:
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
	if !cc jump .L597;
	R0 = B [SP+20] (X);
	R0 = ~R0;
	B [SP+20] = R0;
.L597:
	R0 = B [SP+20] (X);
	cc =R0==0;
	if !cc jump .L598;
	R0 = 7 (X);
	jump.s .L599;
.L598:
	R0 = B [SP+20] (X);
	R0 <<= 8;
	call ___clzsi2;
	[SP+12] = R0;
	R0 = [SP+12];
	R0 += -1;
.L599:
	SP += 16;
	RETS = [SP++];
	rts;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	[--SP] = RETS;
	SP += -16;
	[SP+20] = R0;
	[SP+24] = R1;
	R0 = [SP+24];
	cc =R0<0;
	if !cc jump .L601;
	R0 = [SP+20];
	R1 = ~R0;
	R0 = [SP+24];
	R0 = ~R0;
	[SP+20] = R1;
	[SP+24] = R0;
.L601:
	R0 = [SP+20];
	R1 = [SP+24];
	R0 = R0 | R1;
	cc =R0==0;
	if !cc jump .L603;
	R0 = 63 (X);
	jump.s .L604;
.L603:
	R0 = [SP+20];
	R1 = [SP+24];
	call ___clzdi2;
	[SP+12] = R0;
	R0 = [SP+12];
	R0 += -1;
.L604:
	SP += 16;
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
	jump.s .L606;
.L608:
	R1 = [SP+4];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L607;
	R1 = [SP];
	R0 = [SP+8];
	R0 = R1 + R0;
	[SP] = R0;
.L607:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+8];
	R0 <<= 1;
	[SP+8] = R0;
.L606:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L608;
	R0 = [SP];
	SP += 4;
	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	SP += -12;
	[SP+12] = R0;
	[SP+16] = R1;
	[SP+20] = R2;
	R0 = [SP+20];
	R0 >>= 3;
	[SP] = R0;
	R1 = [SP+20];
	R0 = -8 (X);
	R0 = R1 & R0;
	[SP+4] = R0;
	R1 = [SP+12];
	R0 = [SP+16];
	cc =R1<R0 (iu);
	if cc jump .L611;
	R1 = [SP+16];
	R0 = [SP+20];
	R0 = R1 + R0;
	R1 = [SP+12];
	cc =R1<=R0 (iu);
	if cc jump .L618;
.L611:
	R0 = 0 (X);
	[SP+8] = R0;
	jump.s .L613;
.L614:
	R0 = [SP+8];
	R0 <<= 3;
	R1 = [SP+12];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [SP+8];
	R0 <<= 3;
	R1 = [SP+16];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [P1];
	R1 = [P1+4];
	[P2] = R0;
	[P2+4] = R1;
	R0 = [SP+8];
	R0 += 1;
	[SP+8] = R0;
.L613:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<R0 (iu);
	if cc jump .L614;
	jump.s .L615;
.L616:
	R1 = [SP+12];
	R0 = [SP+4];
	R0 = R1 + R0;
	P2 = R0;
	R1 = [SP+16];
	R0 = [SP+4];
	R0 = R1 + R0;
	P1 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L615:
	R1 = [SP+20];
	R0 = [SP+4];
	cc =R1<=R0 (iu);
	if !cc jump .L616;
	jump.s .L617;
.L619:
	R1 = [SP+12];
	R0 = [SP+20];
	R0 = R1 + R0;
	P2 = R0;
	R1 = [SP+16];
	R0 = [SP+20];
	R0 = R1 + R0;
	P1 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L618:
	R0 = [SP+20];
	R1 = R0;
	R1 += -1;
	[SP+20] = R1;
	cc =R0==0;
	if !cc jump .L619;
	nop;
.L617:
	nop;
	SP += 12;
	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	SP += -8;
	[SP+8] = R0;
	[SP+12] = R1;
	[SP+16] = R2;
	R0 = [SP+16];
	R0 >>= 1;
	[SP] = R0;
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L621;
	R1 = [SP+12];
	R0 = [SP+16];
	R0 = R1 + R0;
	R1 = [SP+8];
	cc =R1<=R0 (iu);
	if cc jump .L627;
.L621:
	R0 = 0 (X);
	[SP+4] = R0;
	jump.s .L623;
.L624:
	R0 = [SP+4];
	R0 <<= 1;
	R1 = [SP+8];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [SP+4];
	R0 <<= 1;
	R1 = [SP+12];
	R1 = R1 + R0;
	P1 = R1;
	R0 = W [P1] (X);
	W [P2] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L623:
	R1 = [SP+4];
	R0 = [SP];
	cc =R1<R0 (iu);
	if cc jump .L624;
	R1 = [SP+16];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L626;
	R0 = [SP+16];
	R0 += -1;
	R1 = [SP+8];
	R1 = R1 + R0;
	P2 = R1;
	R1 = [SP+12];
	R0 = [SP+16];
	R0 = R1 + R0;
	P1 = R0;
	P1 += -1;
	R0 = B [P1] (X);
	B [P2] = R0;
	jump.s .L626;
.L628:
	R1 = [SP+8];
	R0 = [SP+16];
	R0 = R1 + R0;
	P2 = R0;
	R1 = [SP+12];
	R0 = [SP+16];
	R0 = R1 + R0;
	P1 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L627:
	R0 = [SP+16];
	R1 = R0;
	R1 += -1;
	[SP+16] = R1;
	cc =R0==0;
	if !cc jump .L628;
	nop;
.L626:
	nop;
	SP += 8;
	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	SP += -12;
	[SP+12] = R0;
	[SP+16] = R1;
	[SP+20] = R2;
	R0 = [SP+20];
	R0 >>= 2;
	[SP] = R0;
	R1 = [SP+20];
	R0 = -4 (X);
	R0 = R1 & R0;
	[SP+4] = R0;
	R1 = [SP+12];
	R0 = [SP+16];
	cc =R1<R0 (iu);
	if cc jump .L630;
	R1 = [SP+16];
	R0 = [SP+20];
	R0 = R1 + R0;
	R1 = [SP+12];
	cc =R1<=R0 (iu);
	if cc jump .L637;
.L630:
	R0 = 0 (X);
	[SP+8] = R0;
	jump.s .L632;
.L633:
	R0 = [SP+8];
	R0 <<= 2;
	R1 = [SP+12];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [SP+8];
	R0 <<= 2;
	R1 = [SP+16];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [P1];
	[P2] = R0;
	R0 = [SP+8];
	R0 += 1;
	[SP+8] = R0;
.L632:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<R0 (iu);
	if cc jump .L633;
	jump.s .L634;
.L635:
	R1 = [SP+12];
	R0 = [SP+4];
	R0 = R1 + R0;
	P2 = R0;
	R1 = [SP+16];
	R0 = [SP+4];
	R0 = R1 + R0;
	P1 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L634:
	R1 = [SP+20];
	R0 = [SP+4];
	cc =R1<=R0 (iu);
	if !cc jump .L635;
	jump.s .L636;
.L638:
	R1 = [SP+12];
	R0 = [SP+20];
	R0 = R1 + R0;
	P2 = R0;
	R1 = [SP+16];
	R0 = [SP+20];
	R0 = R1 + R0;
	P1 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L637:
	R0 = [SP+20];
	R1 = R0;
	R1 += -1;
	[SP+20] = R1;
	cc =R0==0;
	if !cc jump .L638;
	nop;
.L636:
	nop;
	SP += 12;
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
	SP += -20;
	[SP+24] = R0;
	R0 = [SP+24];
	call ___floatunsidf;
	[SP+12] = R0;
	[SP+16] = R1;
	R0 = [SP+12];
	R1 = [SP+16];
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
	SP += -20;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	call ___floatundidf;
	[SP+12] = R0;
	[SP+16] = R1;
	R0 = [SP+12];
	R1 = [SP+16];
	SP += 20;
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
	jump.s .L652;
.L655:
	R1 = 15 (X);
	R0 = [SP];
	R1 = R1 - R0;
	R0 = W [SP+4] (Z);
	R0 >>>= R1;
	R1 = 1 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if !cc jump .L657;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L652:
	R0 = [SP];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L655;
	jump.s .L654;
.L657:
	nop;
.L654:
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
	jump.s .L659;
.L662:
	R0 = W [SP+4] (Z);
	R1 = [SP];
	R0 >>>= R1;
	R1 = 1 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if !cc jump .L664;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L659:
	R0 = [SP];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L662;
	jump.s .L661;
.L664:
	nop;
.L661:
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
	if cc jump .L670;
	R1 = 71 (X);
	R1 <<= 24;
	R0 = [SP+16];
	call ___subsf3;
	call ___fixsfsi;
	P1 = R0;
	P2.H = 0;
	P2.L = 32768;
	P2 = P1 + P2;
	jump.s .L668;
.L670:
	R0 = [SP+16];
	call ___fixsfsi;
	P2 = R0;
.L668:
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
	jump.s .L672;
.L674:
	R0 = W [SP+8] (Z);
	R1 = [SP+4];
	R0 >>>= R1;
	R1 = 1 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if cc jump .L673;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L673:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L672:
	R0 = [SP+4];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L674;
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
	jump.s .L677;
.L679:
	R0 = W [SP+8] (Z);
	R1 = [SP+4];
	R0 >>>= R1;
	R1 = 1 (X);
	R0 = R0 & R1;
	cc =R0==0;
	if cc jump .L678;
	R0 = [SP];
	R0 += 1;
	[SP] = R0;
.L678:
	R0 = [SP+4];
	R0 += 1;
	[SP+4] = R0;
.L677:
	R0 = [SP+4];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L679;
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
	jump.s .L682;
.L684:
	R1 = [SP+4];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L683;
	R1 = [SP];
	R0 = [SP+8];
	R0 = R1 + R0;
	[SP] = R0;
.L683:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+8];
	R0 <<= 1;
	[SP+8] = R0;
.L682:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L684;
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
	if !cc jump .L689;
	R0 = 0 (X);
	jump.s .L688;
.L691:
	R1 = [SP+8];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L690;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 + R0;
	[SP] = R0;
.L690:
	R0 = [SP+4];
	R0 <<= 1;
	[SP+4] = R0;
	R0 = [SP+8];
	R0 >>= 1;
	[SP+8] = R0;
.L689:
	R0 = [SP+8];
	cc =R0==0;
	if !cc jump .L691;
	R0 = [SP];
.L688:
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
	jump.s .L693;
.L695:
	R0 = [SP+12];
	R0 <<= 1;
	[SP+12] = R0;
	R0 = [SP+4];
	R0 <<= 1;
	[SP+4] = R0;
.L693:
	R1 = [SP+12];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if !cc jump .L696;
	R0 = [SP+4];
	cc =R0==0;
	if cc jump .L696;
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L695;
	jump.s .L696;
.L698:
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L697;
	R1 = [SP+8];
	R0 = [SP+12];
	R0 = R1 - R0;
	[SP+8] = R0;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 | R0;
	[SP] = R0;
.L697:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+12];
	R0 >>= 1;
	[SP+12] = R0;
.L696:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L698;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L699;
	R0 = [SP+8];
	jump.s .L700;
.L699:
	R0 = [SP];
.L700:
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
	if !cc jump .L709;
	R0 = -1 (X);
	jump.s .L704;
.L709:
	R1 = [SP+20];
	R0 = [SP+16];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L710;
	R0 = 1 (X);
	jump.s .L704;
.L710:
	R0 = 0 (X);
.L704:
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
	if !cc jump .L719;
	R0 = -1 (X);
	jump.s .L714;
.L719:
	R0 = [SP+32];
	[SP+12] = R0;
	R2 = [SP+28];
	R0 = [SP+20];
	R1 = [SP+24];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L720;
	R0 = 1 (X);
	jump.s .L714;
.L720:
	R0 = 0 (X);
.L714:
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
	if !cc jump .L726;
	R0 = [SP+16];
	R0 = -R0;
	[SP+16] = R0;
	R0 = 1 (X);
	[SP+4] = R0;
.L726:
	R0 = 0 (X);
	B [SP+11] = R0;
	jump.s .L727;
.L730:
	R1 = [SP+16];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L728;
	R1 = [SP];
	R0 = [SP+12];
	R0 = R1 + R0;
	[SP] = R0;
.L728:
	R0 = [SP+12];
	R0 <<= 1;
	[SP+12] = R0;
	R0 = [SP+16];
	R0 >>>= 1;
	[SP+16] = R0;
	R0 = B [SP+11] (X);
	R0 += 1;
	B [SP+11] = R0;
.L727:
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L729;
	R0 = B [SP+11] (X);
	R0 = R0.B (Z);
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L730;
.L729:
	R0 = [SP+4];
	cc =R0==0;
	if cc jump .L731;
	R0 = [SP];
	R0 = -R0;
	jump.s .L733;
.L731:
	R0 = [SP];
.L733:
	nop;
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
	if !cc jump .L735;
	R0 = [SP+24];
	R0 = -R0;
	[SP+24] = R0;
	R0 = [SP+16];
	cc =R0==0;
	R0 = CC;
	R0 = R0.B (Z);
	[SP+16] = R0;
.L735:
	R0 = [SP+28];
	cc =R0<0;
	if !cc jump .L736;
	R0 = [SP+28];
	R0 = -R0;
	[SP+28] = R0;
	R0 = [SP+16];
	cc =R0==0;
	R0 = CC;
	R0 = R0.B (Z);
	[SP+16] = R0;
.L736:
	R0 = [SP+28];
	R2 = 0 (X);
	R1 = R0;
	R0 = [SP+24];
	call ___udivmodsi4;
	[SP+12] = R0;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L737;
	R0 = [SP+12];
	R0 = -R0;
	[SP+12] = R0;
.L737:
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
	if !cc jump .L740;
	R0 = [SP+24];
	R0 = -R0;
	[SP+24] = R0;
	R0 = 1 (X);
	[SP+16] = R0;
.L740:
	R0 = [SP+28];
	cc =R0<0;
	if !cc jump .L741;
	R0 = [SP+28];
	R0 = -R0;
	[SP+28] = R0;
.L741:
	R0 = [SP+28];
	R2 = 1 (X);
	R1 = R0;
	R0 = [SP+24];
	call ___udivmodsi4;
	[SP+12] = R0;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L742;
	R0 = [SP+12];
	R0 = -R0;
	[SP+12] = R0;
.L742:
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
	jump.s .L745;
.L747:
	R0 = W [SP+8] (X);
	R0 <<= 1;
	W [SP+8] = R0;
	R0 = W [SP+2] (X);
	R0 <<= 1;
	W [SP+2] = R0;
.L745:
	R1 = W [SP+8] (Z);
	R0 = W [SP+4] (Z);
	cc =R1<R0 (iu);
	if !cc jump .L748;
	R0 = W [SP+2] (Z);
	cc =R0==0;
	if cc jump .L748;
	R0 = W [SP+8] (X);
	R0 = R0.L (X);
	cc =R0<0;
	if !cc jump .L747;
	jump.s .L748;
.L750:
	R1 = W [SP+4] (Z);
	R0 = W [SP+8] (Z);
	cc =R1<R0 (iu);
	if cc jump .L749;
	R1 = W [SP+4] (X);
	R0 = W [SP+8] (X);
	R0 = R1 - R0;
	W [SP+4] = R0;
	R1 = W [SP] (X);
	R0 = W [SP+2] (X);
	R0 = R1 | R0;
	W [SP] = R0;
.L749:
	R0 = W [SP+2] (Z);
	R0 >>= 1;
	W [SP+2] = R0;
	R0 = W [SP+8] (Z);
	R0 >>= 1;
	W [SP+8] = R0;
.L748:
	R0 = W [SP+2] (Z);
	cc =R0==0;
	if !cc jump .L750;
	R0 = [SP+12];
	cc =R0==0;
	if cc jump .L751;
	R0 = W [SP+4] (X);
	jump.s .L752;
.L751:
	R0 = W [SP] (X);
.L752:
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
	jump.s .L754;
.L756:
	R0 = [SP+12];
	R0 <<= 1;
	[SP+12] = R0;
	R0 = [SP+4];
	R0 <<= 1;
	[SP+4] = R0;
.L754:
	R1 = [SP+12];
	R0 = [SP+8];
	cc =R1<R0 (iu);
	if !cc jump .L757;
	R0 = [SP+4];
	cc =R0==0;
	if cc jump .L757;
	R0 = [SP+12];
	cc =R0<0;
	if !cc jump .L756;
	jump.s .L757;
.L759:
	R1 = [SP+8];
	R0 = [SP+12];
	cc =R1<R0 (iu);
	if cc jump .L758;
	R1 = [SP+8];
	R0 = [SP+12];
	R0 = R1 - R0;
	[SP+8] = R0;
	R1 = [SP];
	R0 = [SP+4];
	R0 = R1 | R0;
	[SP] = R0;
.L758:
	R0 = [SP+4];
	R0 >>= 1;
	[SP+4] = R0;
	R0 = [SP+12];
	R0 >>= 1;
	[SP+12] = R0;
.L757:
	R0 = [SP+4];
	cc =R0==0;
	if !cc jump .L759;
	R0 = [SP+16];
	cc =R0==0;
	if cc jump .L760;
	R0 = [SP+8];
	jump.s .L761;
.L760:
	R0 = [SP];
.L761:
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
	if cc jump .L763;
	R0 = 0 (X);
	[SP+8] = R0;
	R0 = [SP+16];
	R2 = [SP+36];
	R1 = [SP+24];
	R1 = R2 - R1;
	R0 <<= R1;
	[SP+12] = R0;
	jump.s .L764;
.L763:
	R0 = [SP+36];
	cc =R0==0;
	if !cc jump .L765;
	R0 = [SP+28];
	R1 = [SP+32];
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L767;
.L765:
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
.L764:
	R0 = [SP+8];
	R1 = [SP+12];
	[SP] = R0;
	[SP+4] = R1;
.L767:
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
	if cc jump .L769;
	R0 = [SP+20];
	R1 = [SP+24];
	R1 += -1;
	R0 >>>= R1;
	[SP+12] = R0;
	R0 = [SP+20];
	R2 = [SP+36];
	R1 = [SP+24];
	R1 = R2 - R1;
	R0 >>>= R1;
	[SP+8] = R0;
	jump.s .L770;
.L769:
	R0 = [SP+36];
	cc =R0==0;
	if !cc jump .L771;
	R0 = [SP+28];
	R1 = [SP+32];
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L773;
.L771:
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
.L770:
	R0 = [SP+8];
	R1 = [SP+12];
	[SP] = R0;
	[SP+4] = R1;
.L773:
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
	R5 = R0 >> 24;
	R3 = 0 (X);
	R0 = [SP+16];
	R1 = R0 >> 8;
	R0 = 0 (X);
	R2 = 65280 (Z);
	R7 = R1 & R2;
	R1 = 0 (X);
	R2 = R0 & R1;
	R1 = R7;
	R0 = R2;
	R6 = R5 | R1;
	R7 = R3 | R0;
	R0 = [SP+16];
	R1 = R0 << 8;
	R0 = [SP+12];
	R0 >>= 24;
	R0 = R1 | R0;
	R1 = [SP+16];
	R1 >>= 24;
	R2 = 255 (X);
	R2 <<= 16;
	R3 = R0 & R2;
	R0 = 0 (X);
	R2 = R1 & R0;
	R0 = R3;
	R1 = R2;
	R5 = R6 | R0;
	R3 = R7 | R1;
	R0 = [SP+16];
	R1 = R0 << 24;
	R0 = [SP+12];
	R0 >>= 8;
	R0 = R1 | R0;
	R1 = [SP+16];
	R1 >>= 8;
	R2 = R0 >>> 24;
	R2 <<= 24;
	R0 = 0 (X);
	R7 = R1 & R0;
	R0 = R2;
	R1 = R7;
	R6 = R5 | R0;
	R7 = R3 | R1;
	R0 = [SP+12];
	R1 = R0 >> 24;
	R0 = [SP+16];
	R0 <<= 8;
	R0 = R1 | R0;
	R1 = [SP+12];
	R1 <<= 8;
	R2 = 0 (X);
	R3 = R1 & R2;
	R2 = R0.B (Z);
	R1 = R3;
	R0 = R2;
	R3 = R6 | R1;
	R2 = R7 | R0;
	R0 = [SP+12];
	R1 = R0 >> 8;
	R0 = [SP+16];
	R0 <<= 24;
	R0 = R1 | R0;
	R1 = [SP+12];
	R1 <<= 24;
	R7 = 0 (X);
	R6 = R1 & R7;
	R1 = 65280 (Z);
	R7 = R0 & R1;
	R1 = R6;
	R0 = R7;
	R6 = R3 | R1;
	R7 = R2 | R0;
	R0 = [SP+12];
	R0 <<= 8;
	R1 = 0 (X);
	R2 = 0 (X);
	R3 = R1 & R2;
	R1 = 255 (X);
	R1 <<= 16;
	R2 = R0 & R1;
	R1 = R3;
	R0 = R2;
	R3 = R6 | R1;
	R2 = R7 | R0;
	R0 = [SP+12];
	R0 <<= 24;
	R1 = 0 (X);
	R6 = R3 | R1;
	R7 = R2 | R0;
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
	R2 = R0 >> 24;
	R0 = [SP];
	R0 >>= 8;
	R1 = 65280 (Z);
	R0 = R0 & R1;
	R2 = R2 | R0;
	R0 = [SP];
	R0 <<= 8;
	R1 = 255 (X);
	R1 <<= 16;
	R0 = R0 & R1;
	R1 = R2 | R0;
	R0 = [SP];
	R0 <<= 24;
	R0 = R1 | R0;
	rts;
	.size	___bswapsi2, .-___bswapsi2
	.align 4
.global ___clzsi2;
.type ___clzsi2, STT_FUNC;
___clzsi2:
	SP += -52;
	[SP+52] = R0;
	R0 = [SP+52];
	[SP+48] = R0;
	R0 = [SP+48];
	R1 = 65535 (Z);
	cc =R0<=R1 (iu);
	if !cc jump .L779;
	R0 = 16 (X);
	jump.s .L780;
.L779:
	R0 = 0 (X);
.L780:
	[SP+44] = R0;
	R1 = 16 (X);
	R0 = [SP+44];
	R1 = R1 - R0;
	R0 = [SP+48];
	R0 >>= R1;
	[SP+40] = R0;
	R0 = [SP+44];
	[SP+36] = R0;
	R1 = [SP+40];
	R0 = 65280 (Z);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L781;
	R0 = 8 (X);
	jump.s .L782;
.L781:
	R0 = 0 (X);
.L782:
	[SP+32] = R0;
	R1 = 8 (X);
	R0 = [SP+32];
	R1 = R1 - R0;
	R0 = [SP+40];
	R0 >>= R1;
	[SP+28] = R0;
	R1 = [SP+36];
	R0 = [SP+32];
	R0 = R1 + R0;
	[SP+24] = R0;
	R1 = [SP+28];
	R0 = 240 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L783;
	R0 = 4 (X);
	jump.s .L784;
.L783:
	R0 = 0 (X);
.L784:
	[SP+20] = R0;
	R1 = 4 (X);
	R0 = [SP+20];
	R1 = R1 - R0;
	R0 = [SP+28];
	R0 >>= R1;
	[SP+16] = R0;
	R1 = [SP+24];
	R0 = [SP+20];
	R0 = R1 + R0;
	[SP+12] = R0;
	R1 = [SP+16];
	R0 = 12 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L785;
	R0 = 2 (X);
	jump.s .L786;
.L785:
	R0 = 0 (X);
.L786:
	[SP+8] = R0;
	R1 = 2 (X);
	R0 = [SP+8];
	R1 = R1 - R0;
	R0 = [SP+16];
	R0 >>= R1;
	[SP+4] = R0;
	R1 = [SP+12];
	R0 = [SP+8];
	R0 = R1 + R0;
	[SP] = R0;
	R1 = [SP+4];
	R0 = 2 (X);
	R0 = R1 & R0;
	cc =R0==0;
	R0 = CC;
	R2 = R0;
	R1 = 2 (X);
	R0 = [SP+4];
	R0 = R1 - R0;
	R1 = R2;
	R1 *= R0;
	R0 = [SP];
	R0 = R1 + R0;
	P2 = R0;
	R0 = P2;
	SP += 52;
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
	if !cc jump .L789;
	R0 = 0 (X);
	jump.s .L794;
.L789:
	R1 = [SP+12];
	R0 = [SP+4];
	cc =R1<=R0;
	if cc jump .L791;
	R0 = 2 (X);
	jump.s .L794;
.L791:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<R0 (iu);
	if !cc jump .L792;
	R0 = 0 (X);
	jump.s .L794;
.L792:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<=R0 (iu);
	if cc jump .L793;
	R0 = 2 (X);
	jump.s .L794;
.L793:
	R0 = 1 (X);
.L794:
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
	SP += -56;
	[SP+56] = R0;
	R0 = [SP+56];
	[SP+52] = R0;
	R0 = [SP+52];
	R0 = R0.L (Z);
	cc =R0==0;
	if !cc jump .L798;
	R0 = 16 (X);
	jump.s .L799;
.L798:
	R0 = 0 (X);
.L799:
	[SP+48] = R0;
	R0 = [SP+52];
	R1 = [SP+48];
	R0 >>= R1;
	[SP+44] = R0;
	R0 = [SP+48];
	[SP+40] = R0;
	R0 = [SP+44];
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L800;
	R0 = 8 (X);
	jump.s .L801;
.L800:
	R0 = 0 (X);
.L801:
	[SP+36] = R0;
	R0 = [SP+44];
	R1 = [SP+36];
	R0 >>= R1;
	[SP+32] = R0;
	R1 = [SP+40];
	R0 = [SP+36];
	R0 = R1 + R0;
	[SP+28] = R0;
	R1 = [SP+32];
	R0 = 15 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L802;
	R0 = 4 (X);
	jump.s .L803;
.L802:
	R0 = 0 (X);
.L803:
	[SP+24] = R0;
	R0 = [SP+32];
	R1 = [SP+24];
	R0 >>= R1;
	[SP+20] = R0;
	R1 = [SP+28];
	R0 = [SP+24];
	R0 = R1 + R0;
	[SP+16] = R0;
	R1 = [SP+20];
	R0 = 3 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L804;
	R0 = 2 (X);
	jump.s .L805;
.L804:
	R0 = 0 (X);
.L805:
	[SP+12] = R0;
	R0 = [SP+20];
	R1 = [SP+12];
	R0 >>= R1;
	[SP+8] = R0;
	R1 = [SP+8];
	R0 = 3 (X);
	R0 = R1 & R0;
	[SP+4] = R0;
	R1 = [SP+16];
	R0 = [SP+12];
	R0 = R1 + R0;
	[SP] = R0;
	R0 = [SP+4];
	R0 >>= 1;
	R1 = 2 (X);
	R0 = R1 - R0;
	R1 = [SP+4];
	R2 = ~R1;
	R1 = 1 (X);
	R1 = R2 & R1;
	R1 = -R1;
	R1 = R1 & R0;
	R0 = [SP];
	R0 = R1 + R0;
	P2 = R0;
	R0 = P2;
	SP += 56;
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
	if cc jump .L808;
	R0 = 0 (X);
	[SP+12] = R0;
	R0 = [SP+20];
	R2 = [SP+36];
	R1 = [SP+24];
	R1 = R2 - R1;
	R0 >>= R1;
	[SP+8] = R0;
	jump.s .L809;
.L808:
	R0 = [SP+36];
	cc =R0==0;
	if !cc jump .L810;
	R0 = [SP+28];
	R1 = [SP+32];
	[SP] = R0;
	[SP+4] = R1;
	jump.s .L812;
.L810:
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
.L809:
	R0 = [SP+8];
	R1 = [SP+12];
	[SP] = R0;
	[SP+4] = R1;
.L812:
	R0 = [SP];
	R1 = [SP+4];
	SP += 28;
	rts;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	SP += -40;
	[SP+40] = R0;
	[SP+44] = R1;
	R0 = 16 (X);
	[SP+36] = R0;
	R0 = -1 (X);
	R1 = [SP+36];
	R0 >>= R1;
	[SP+32] = R0;
	R1 = [SP+40];
	R0 = [SP+32];
	R1 = R1 & R0;
	R2 = [SP+44];
	R0 = [SP+32];
	R0 = R2 & R0;
	R0 *= R1;
	[SP+8] = R0;
	R0 = [SP+8];
	R1 = [SP+36];
	R0 >>= R1;
	[SP+28] = R0;
	R0 = [SP+8];
	R1 = [SP+32];
	R0 = R1 & R0;
	[SP+8] = R0;
	R1 = [SP+40];
	R0 = [SP+36];
	R1 >>= R0;
	R2 = [SP+44];
	R0 = [SP+32];
	R0 = R2 & R0;
	R0 *= R1;
	R1 = [SP+28];
	R0 = R1 + R0;
	[SP+24] = R0;
	R1 = [SP+8];
	R2 = [SP+24];
	R0 = [SP+32];
	R0 = R2 & R0;
	R2 = [SP+36];
	R0 <<= R2;
	R0 = R1 + R0;
	[SP+8] = R0;
	R0 = [SP+24];
	R1 = [SP+36];
	R0 >>= R1;
	[SP+12] = R0;
	R0 = [SP+8];
	R1 = [SP+36];
	R0 >>= R1;
	[SP+20] = R0;
	R0 = [SP+8];
	R1 = [SP+32];
	R0 = R1 & R0;
	[SP+8] = R0;
	R1 = [SP+44];
	R0 = [SP+36];
	R1 >>= R0;
	R2 = [SP+40];
	R0 = [SP+32];
	R0 = R2 & R0;
	R0 *= R1;
	R1 = [SP+20];
	R0 = R1 + R0;
	[SP+16] = R0;
	R1 = [SP+8];
	R2 = [SP+16];
	R0 = [SP+32];
	R0 = R2 & R0;
	R2 = [SP+36];
	R0 <<= R2;
	R0 = R1 + R0;
	[SP+8] = R0;
	R1 = [SP+12];
	R0 = [SP+16];
	R2 = [SP+36];
	R0 >>= R2;
	R0 = R1 + R0;
	[SP+12] = R0;
	R1 = [SP+12];
	R2 = [SP+40];
	R0 = [SP+36];
	R2 >>= R0;
	R0 = [SP+44];
	R3 = [SP+36];
	R0 >>= R3;
	R0 *= R2;
	R0 = R1 + R0;
	[SP+12] = R0;
	R0 = [SP+8];
	R1 = [SP+12];
	[SP] = R0;
	[SP+4] = R1;
	R0 = [SP];
	R1 = [SP+4];
	SP += 40;
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
	R1 = [SP+36];
	R0 = [SP+44];
	call ___muldsi3;
	[SP+20] = R0;
	[SP+24] = R1;
	R0 = [SP+20];
	R1 = [SP+24];
	[SP+28] = R0;
	[SP+32] = R1;
	R0 = [SP+32];
	R2 = [SP+48];
	R1 = [SP+36];
	R2 *= R1;
	R3 = [SP+44];
	R1 = [SP+40];
	R1 *= R3;
	R1 = R2 + R1;
	P2 = R1;
	R1 = P2;
	R0 = R0 + R1;
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
	R0 = [SP+8];
	R2 = [SP+12];
	R7 = 0 (X);
	R3 = 0 (X);
	R6 = R7 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R1 = R3 - R2;
	R1 = R1 - R0;
	R0 = R6;
	( r7:6 ) = [sp++];

	rts;
	.size	___negdi2, .-___negdi2
	.align 4
.global ___paritydi2;
.type ___paritydi2, STT_FUNC;
___paritydi2:
	SP += -24;
	[SP+24] = R0;
	[SP+28] = R1;
	R0 = [SP+24];
	R1 = [SP+28];
	[SP] = R0;
	[SP+4] = R1;
	R1 = [SP+4];
	R0 = [SP];
	R0 = R1 ^ R0;
	[SP+20] = R0;
	R0 = [SP+20];
	R0 >>= 16;
	R1 = [SP+20];
	R0 = R1 ^ R0;
	[SP+16] = R0;
	R0 = [SP+16];
	R0 >>= 8;
	R1 = [SP+16];
	R0 = R1 ^ R0;
	[SP+12] = R0;
	R0 = [SP+12];
	R0 >>= 4;
	R1 = [SP+12];
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
	SP += 24;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	SP += -16;
	[SP+16] = R0;
	R0 = [SP+16];
	[SP+12] = R0;
	R0 = [SP+12];
	R0 >>= 16;
	R1 = [SP+12];
	R0 = R1 ^ R0;
	[SP+8] = R0;
	R0 = [SP+8];
	R0 >>= 8;
	R1 = [SP+8];
	R0 = R1 ^ R0;
	[SP+4] = R0;
	R0 = [SP+4];
	R0 >>= 4;
	R1 = [SP+4];
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
	SP += 16;
	rts;
	.size	___paritysi2, .-___paritysi2
	.align 4
.global ___popcountdi2;
.type ___popcountdi2, STT_FUNC;
___popcountdi2:
	[--sp] = ( r7:5 );

	SP += -40;
	[SP+52] = R0;
	[SP+56] = R1;
	R0 = [SP+52];
	R1 = [SP+56];
	[SP+32] = R0;
	[SP+36] = R1;
	R1 = [SP+32];
	R0 = [SP+36];
	CC = R0 < R0;
	R0 = ROT R0 BY -1;
	R1 = ROT R1 BY -1;
	R2.H = 21845;
	R2.L = 21845;
	R2 = R1 & R2;
	R1.H = 21845;
	R1.L = 21845;
	R3 = R0 & R1;
	R6 = [SP+32];
	R7 = [SP+36];
	R1 = R6 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R0 = R7 - R3;
	R0 = R0 - R2;
	[SP+24] = R1;
	[SP+28] = R0;
	R0 = [SP+28];
	R1 = R0 << 30;
	R0 = [SP+24];
	R0 >>= 2;
	R0 = R1 | R0;
	R1 = [SP+28];
	R3 = R1 >> 2;
	R1.H = 13107;
	R1.L = 13107;
	R2 = R0 & R1;
	R0.H = 13107;
	R0.L = 13107;
	R6 = R3 & R0;
	R5 = [SP+24];
	R3 = [SP+28];
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
	[SP+16] = R3;
	[SP+20] = R0;
	R0 = [SP+20];
	R0 <<= 28;
	R1 = [SP+16];
	R1 >>= 4;
	R1 = R0 | R1;
	R0 = [SP+20];
	R7 = R0 >> 4;
	R6 = [SP+16];
	R2 = [SP+20];
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
	[SP+8] = R2;
	[SP+12] = R1;
	R0 = [SP+8];
	R1 = [SP+12];
	R1 >>= 0;
	P2 = R1;
	R1 = P2;
	R0 = R0 + R1;
	[SP+4] = R0;
	R0 = [SP+4];
	R0 >>= 16;
	R1 = [SP+4];
	R0 = R1 + R0;
	[SP] = R0;
	R0 = [SP];
	R1 = R0 >> 8;
	R0 = [SP];
	R1 = R1 + R0;
	R0 = 127 (X);
	R0 = R1 & R0;
	SP += 40;
	( r7:5 ) = [sp++];

	rts;
	.size	___popcountdi2, .-___popcountdi2
	.align 4
.global ___popcountsi2;
.type ___popcountsi2, STT_FUNC;
___popcountsi2:
	SP += -20;
	[SP+20] = R0;
	R0 = [SP+20];
	[SP+16] = R0;
	R0 = [SP+16];
	R1 = R0 >> 1;
	R0.H = 21845;
	R0.L = 21845;
	R0 = R1 & R0;
	R1 = [SP+16];
	R0 = R1 - R0;
	[SP+12] = R0;
	R0 = [SP+12];
	R1 = R0 >> 2;
	R0.H = 13107;
	R0.L = 13107;
	R1 = R1 & R0;
	R2 = [SP+12];
	R0.H = 13107;
	R0.L = 13107;
	R0 = R2 & R0;
	R0 = R1 + R0;
	[SP+8] = R0;
	R0 = [SP+8];
	R1 = R0 >> 4;
	R0 = [SP+8];
	R1 = R1 + R0;
	R0.H = 3855;
	R0.L = 3855;
	R0 = R1 & R0;
	[SP+4] = R0;
	R0 = [SP+4];
	R0 >>= 16;
	R1 = [SP+4];
	R0 = R1 + R0;
	[SP] = R0;
	R0 = [SP];
	R1 = R0 >> 8;
	R0 = [SP];
	R1 = R1 + R0;
	R0 = 63 (X);
	R0 = R1 & R0;
	SP += 20;
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
.L831:
	R1 = [SP+72];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L828;
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
.L828:
	R0 = [SP+72];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+72] = R0;
	R0 = [SP+72];
	cc =R0==0;
	if cc jump .L836;
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
	jump.s .L831;
.L836:
	nop;
	R0 = [SP+48];
	cc =R0==0;
	if cc jump .L832;
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
	[SP+40] = R0;
	[SP+44] = R1;
	jump.s .L834;
.L832:
	R0 = [SP+52];
	R1 = [SP+56];
	[SP+40] = R0;
	[SP+44] = R1;
.L834:
	nop;
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
.L841:
	R1 = [SP+28];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L838;
	R1 = [SP+24];
	R0 = [SP+16];
	call ___mulsf3;
	[SP+16] = R0;
.L838:
	R0 = [SP+28];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[SP+28] = R0;
	R0 = [SP+28];
	cc =R0==0;
	if cc jump .L846;
	R1 = [SP+24];
	R0 = [SP+24];
	call ___mulsf3;
	[SP+24] = R0;
	jump.s .L841;
.L846:
	nop;
	R0 = [SP+12];
	cc =R0==0;
	if cc jump .L842;
	R1 = [SP+16];
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	jump.s .L844;
.L842:
	R0 = [SP+16];
.L844:
	nop;
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
	if !cc jump .L848;
	R0 = 0 (X);
	jump.s .L853;
.L848:
	R1 = [SP+12];
	R0 = [SP+4];
	cc =R1<=R0 (iu);
	if cc jump .L850;
	R0 = 2 (X);
	jump.s .L853;
.L850:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<R0 (iu);
	if !cc jump .L851;
	R0 = 0 (X);
	jump.s .L853;
.L851:
	R1 = [SP+8];
	R0 = [SP];
	cc =R1<=R0 (iu);
	if cc jump .L852;
	R0 = 2 (X);
	jump.s .L853;
.L852:
	R0 = 1 (X);
.L853:
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
