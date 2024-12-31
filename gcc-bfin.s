.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	[FP+-8] = R0;
	R1 = [FP+-8];
	R0 = [FP+-4];
	cc =R1<R0 (iu);
	if !cc jump .L2;
	R1 = [FP+-8];
	R0 = [FP+16];
	R0 = R1 + R0;
	[FP+-8] = R0;
	R1 = [FP+-4];
	R0 = [FP+16];
	R0 = R1 + R0;
	[FP+-4] = R0;
	jump.s .L3;
.L4:
	R0 = [FP+-8];
	R0 += -1;
	[FP+-8] = R0;
	R0 = [FP+-4];
	R0 += -1;
	[FP+-4] = R0;
	P2 = [FP+-8];
	R0 = B [P2] (X);
	P2 = [FP+-4];
	B [P2] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L3:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L4;
	jump.s .L5;
.L2:
	R1 = [FP+-8];
	R0 = [FP+-4];
	cc =R1==R0;
	if cc jump .L5;
	jump.s .L6;
.L7:
	P1 = [FP+-8];
	R0 = P1;
	R0 += 1;
	[FP+-8] = R0;
	P2 = [FP+-4];
	R0 = P2;
	R0 += 1;
	[FP+-4] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L6:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L7;
.L5:
	R0 = [FP+8];
	UNLINK;
	rts;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	[FP+-8] = R0;
	R0 = [FP+16];
	R0 = R0.B (Z);
	[FP+16] = R0;
	jump.s .L10;
.L12:
	R0 = [FP+20];
	R0 += -1;
	[FP+20] = R0;
	R0 = [FP+-8];
	R0 += 1;
	[FP+-8] = R0;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L10:
	R0 = [FP+20];
	cc =R0==0;
	if cc jump .L11;
	nop;
	nop;
	P2 = [FP+-8];
	R0 = B [P2] (X);
	P2 = [FP+-4];
	B [P2] = R0;
	P2 = [FP+-4];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [FP+16];
	cc =R1==R0;
	if !cc jump .L12;
.L11:
	R0 = [FP+20];
	cc =R0==0;
	if cc jump .L13;
	R0 = [FP+-4];
	R0 += 1;
	jump.s .L14;
.L13:
	R0 = 0 (X);
.L14:
	UNLINK;
	rts;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	R0 = R0.B (Z);
	[FP+12] = R0;
	jump.s .L16;
.L18:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L16:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L17;
	nop;
	nop;
	P2 = [FP+-4];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [FP+12];
	cc =R1==R0;
	if !cc jump .L18;
.L17:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L19;
	R0 = [FP+-4];
	jump.s .L21;
.L19:
	R0 = 0 (X);
.L21:
	UNLINK;
	rts;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	[FP+-8] = R0;
	jump.s .L23;
.L25:
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R0 += 1;
	[FP+-8] = R0;
.L23:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L24;
	nop;
	nop;
	P2 = [FP+-4];
	R1 = B [P2] (X);
	P2 = [FP+-8];
	R0 = B [P2] (X);
	R1 = R1.B (Z);
	R0 = R0.B (Z);
	cc =R1==R0;
	if cc jump .L25;
.L24:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L26;
	nop;
	nop;
	P2 = [FP+-4];
	R0 = B [P2] (X);
	R1 = R0.B (Z);
	P2 = [FP+-8];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R0 = R1 - R0;
	jump.s .L28;
.L26:
	R0 = 0 (X);
.L28:
	UNLINK;
	rts;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	[FP+-8] = R0;
	jump.s .L30;
.L31:
	P1 = [FP+-8];
	R0 = P1;
	R0 += 1;
	[FP+-8] = R0;
	P2 = [FP+-4];
	R0 = P2;
	R0 += 1;
	[FP+-4] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L30:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L31;
	R0 = [FP+8];
	UNLINK;
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	R0 = R0.B (Z);
	[FP+12] = R0;
	jump.s .L34;
.L36:
	R1 = [FP+-4];
	R0 = [FP+16];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [FP+12];
	cc =R1==R0;
	if !cc jump .L34;
	R1 = [FP+-4];
	R0 = [FP+16];
	R0 = R1 + R0;
	P2 = R0;
	jump.s .L35;
.L34:
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L36;
	P2 = 0 (X);
.L35:
	R0 = P2;
	UNLINK;
	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	jump.s .L38;
.L39:
	R0 = [FP+12];
	P2 = [FP+-4];
	B [P2] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L38:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L39;
	R0 = [FP+8];
	UNLINK;
	rts;
	.size	_memset, .-_memset
	.align 4
.global _stpcpy;
.type _stpcpy, STT_FUNC;
_stpcpy:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	jump.s .L42;
.L43:
	R0 = [FP+12];
	R0 += 1;
	[FP+12] = R0;
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
.L42:
	P2 = [FP+12];
	R0 = B [P2] (X);
	P2 = [FP+8];
	B [P2] = R0;
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L43;
	R0 = [FP+8];
	UNLINK;
	rts;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+12];
	R0 = R0.B (Z);
	[FP+12] = R0;
	jump.s .L46;
.L48:
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
.L46:
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L47;
	nop;
	nop;
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R1 = [FP+12];
	cc =R1==R0;
	if !cc jump .L48;
.L47:
	R0 = [FP+8];
	UNLINK;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	LINK 0;
	P2 = R0;
	[FP+12] = R1;
.L53:
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = [FP+12];
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
	UNLINK;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	jump.s .L55;
.L57:
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
	R0 = [FP+12];
	R0 += 1;
	[FP+12] = R0;
.L55:
	P2 = [FP+8];
	R1 = B [P2] (X);
	P2 = [FP+12];
	R0 = B [P2] (X);
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L56;
	nop;
	nop;
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L57;
	nop;
	nop;
.L56:
	P2 = [FP+8];
	R0 = B [P2] (X);
	R1 = R0.B (Z);
	P2 = [FP+12];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R0 = R1 - R0;
	UNLINK;
	rts;
	.size	_strcmp, .-_strcmp
	.align 4
.global _strlen;
.type _strlen, STT_FUNC;
_strlen:
	LINK 4;
	[FP+8] = R0;
	R0 = [FP+8];
	[FP+-4] = R0;
	jump.s .L60;
.L61:
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
.L60:
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L61;
	R1 = [FP+8];
	R0 = [FP+-4];
	R0 = R1 - R0;
	UNLINK;
	rts;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	[FP+-8] = R0;
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L66;
	R0 = 0 (X);
	jump.s .L65;
.L68:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R0 += 1;
	[FP+-8] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L66:
	P2 = [FP+-4];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L67;
	nop;
	nop;
	P2 = [FP+-8];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L67;
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L67;
	nop;
	nop;
	P2 = [FP+-4];
	R1 = B [P2] (X);
	P2 = [FP+-8];
	R0 = B [P2] (X);
	R1 = R1.B (Z);
	R0 = R0.B (Z);
	cc =R1==R0;
	if cc jump .L68;
	nop;
	nop;
.L67:
	P2 = [FP+-4];
	R0 = B [P2] (X);
	R1 = R0.B (Z);
	P2 = [FP+-8];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	R0 = R1 - R0;
.L65:
	UNLINK;
	rts;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	[FP+-8] = R0;
	jump.s .L70;
.L71:
	R0 = [FP+-4];
	P2 = R0;
	P2 += 1;
	R0 = B [P2] (X);
	P2 = [FP+-8];
	B [P2] = R0;
	R0 = [FP+-8];
	P2 = R0;
	P2 += 1;
	P1 = [FP+-4];
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [FP+-8];
	R0 += 2;
	[FP+-8] = R0;
	R0 = [FP+-4];
	R0 += 2;
	[FP+-4] = R0;
	R0 = [FP+16];
	R0 += -2;
	[FP+16] = R0;
.L70:
	R0 = [FP+16];
	cc =R0<=1;
	if !cc jump .L71;
	nop;
	nop;
	UNLINK;
	rts;
	.size	_swab, .-_swab
	.align 4
.global _isalpha;
.type _isalpha, STT_FUNC;
_isalpha:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	BITSET (R0, 5);
	P2 = -97 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	UNLINK;
	rts;
	.size	_isalpha, .-_isalpha
	.align 4
.global _isascii;
.type _isascii, STT_FUNC;
_isascii:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R1 = 127 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	UNLINK;
	rts;
	.size	_isascii, .-_isascii
	.align 4
.global _isblank;
.type _isblank, STT_FUNC;
_isblank:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L77;
	R0 = [FP+8];
	R1 = 9 (X);
	cc =R0==R1;
	if !cc jump .L78;
.L77:
	R0 = 1 (X);
	jump.s .L80;
.L78:
	R0 = 0 (X);
.L80:
	UNLINK;
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L82;
	R0 = [FP+8];
	R1 = 127 (X);
	cc =R0==R1;
	if !cc jump .L83;
.L82:
	R0 = 1 (X);
	jump.s .L85;
.L83:
	R0 = 0 (X);
.L85:
	UNLINK;
	rts;
	.size	_iscntrl, .-_iscntrl
	.align 4
.global _isdigit;
.type _isdigit, STT_FUNC;
_isdigit:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	UNLINK;
	rts;
	.size	_isdigit, .-_isdigit
	.align 4
.global _isgraph;
.type _isgraph, STT_FUNC;
_isgraph:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R0 += -33;
	R1 = 93 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	UNLINK;
	rts;
	.size	_isgraph, .-_isgraph
	.align 4
.global _islower;
.type _islower, STT_FUNC;
_islower:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	P2 = -97 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	UNLINK;
	rts;
	.size	_islower, .-_islower
	.align 4
.global _isprint;
.type _isprint, STT_FUNC;
_isprint:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R0 += -32;
	R1 = 94 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	UNLINK;
	rts;
	.size	_isprint, .-_isprint
	.align 4
.global _isspace;
.type _isspace, STT_FUNC;
_isspace:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L95;
	R0 = [FP+8];
	R0 += -9;
	cc =R0<=4 (iu);
	if !cc jump .L96;
.L95:
	R0 = 1 (X);
	jump.s .L98;
.L96:
	R0 = 0 (X);
.L98:
	UNLINK;
	rts;
	.size	_isspace, .-_isspace
	.align 4
.global _isupper;
.type _isupper, STT_FUNC;
_isupper:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	P2 = -65 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	UNLINK;
	rts;
	.size	_isupper, .-_isupper
	.align 4
.global _iswcntrl;
.type _iswcntrl, STT_FUNC;
_iswcntrl:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L102;
	R0 = [FP+8];
	P2 = -127 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 32 (X);
	cc =R0<=R1 (iu);
	if cc jump .L102;
	R0 = [FP+8];
	P2 = -8232 (X);
	R1 = P2;
	R0 = R0 + R1;
	cc =R0<=1 (iu);
	if cc jump .L102;
	R0 = [FP+8];
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
	UNLINK;
	rts;
	.size	_iswcntrl, .-_iswcntrl
	.align 4
.global _iswdigit;
.type _iswdigit, STT_FUNC;
_iswdigit:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	UNLINK;
	rts;
	.size	_iswdigit, .-_iswdigit
	.align 4
.global _iswprint;
.type _iswprint, STT_FUNC;
_iswprint:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R1 = 254 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L109;
	R0 = [FP+8];
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
	R0 = [FP+8];
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L111;
	R0 = [FP+8];
	P2 = -8234 (X);
	R1 = P2;
	R0 = R0 + R1;
	R1 = 47061 (Z);
	cc =R0<=R1 (iu);
	if cc jump .L111;
	R0 = [FP+8];
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
	R0 = [FP+8];
	P2 = -16383 (X);
	P2 = P2 << 2;
	R1 = P2;
	R0 = R0 + R1;
	R1 = 3 (X);
	BITSET (R1, 20);
	cc =R0<=R1 (iu);
	if !cc jump .L113;
	R1 = [FP+8];
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
	UNLINK;
	rts;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L116;
	R0 = [FP+8];
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
	UNLINK;
	rts;
	.size	_iswxdigit, .-_iswxdigit
	.align 4
.global _toascii;
.type _toascii, STT_FUNC;
_toascii:
	LINK 0;
	[FP+8] = R0;
	R1 = [FP+8];
	R0 = 127 (X);
	R0 = R1 & R0;
	UNLINK;
	rts;
	.size	_toascii, .-_toascii
	.align 4
.global _fdim;
.type _fdim, STT_FUNC;
_fdim:
	LINK 32;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L134;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L125;
.L134:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L135;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L125;
.L135:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L136;
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___subdf3;
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	jump.s .L125;
.L136:
	R0 = 0 (X);
	R1 = 0 (X);
.L125:
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	rts;
	.size	_fdim, .-_fdim
	.align 4
.global _fdimf;
.type _fdimf, STT_FUNC;
_fdimf:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R1 = [FP+8];
	R0 = [FP+8];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L149;
	R0 = [FP+8];
	jump.s .L140;
.L149:
	R1 = [FP+12];
	R0 = [FP+12];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L150;
	R0 = [FP+12];
	jump.s .L140;
.L150:
	R1 = [FP+12];
	R0 = [FP+8];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L151;
	R1 = [FP+12];
	R0 = [FP+8];
	call ___subsf3;
	jump.s .L140;
.L151:
	R0 = 0 (X);
.L140:
	UNLINK;
	rts;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L167;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L155;
.L167:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L168;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L155;
.L168:
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [FP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L158;
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L159;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L155;
.L159:
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L155;
.L158:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L169;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L155;
.L169:
	R0 = [FP+8];
	R1 = [FP+12];
.L155:
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	rts;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R1 = [FP+8];
	R0 = [FP+8];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L185;
	R0 = [FP+12];
	jump.s .L173;
.L185:
	R1 = [FP+12];
	R0 = [FP+12];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L186;
	R0 = [FP+8];
	jump.s .L173;
.L186:
	R0 = [FP+8];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L176;
	R0 = [FP+8];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L177;
	R0 = [FP+12];
	jump.s .L173;
.L177:
	R0 = [FP+8];
	jump.s .L173;
.L176:
	R1 = [FP+12];
	R0 = [FP+8];
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L187;
	R0 = [FP+12];
	jump.s .L173;
.L187:
	R0 = [FP+8];
.L173:
	UNLINK;
	rts;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L203;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L191;
.L203:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L204;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L191;
.L204:
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [FP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L194;
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L195;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L191;
.L195:
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L191;
.L194:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L205;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L191;
.L205:
	R0 = [FP+8];
	R1 = [FP+12];
.L191:
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	rts;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L221;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L209;
.L221:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L222;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L209;
.L222:
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [FP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L212;
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L213;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L209;
.L213:
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L209;
.L212:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L223;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L209;
.L223:
	R0 = [FP+16];
	R1 = [FP+20];
.L209:
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	rts;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R1 = [FP+8];
	R0 = [FP+8];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L239;
	R0 = [FP+12];
	jump.s .L227;
.L239:
	R1 = [FP+12];
	R0 = [FP+12];
	call ___unordsf2;
	cc =R0==0;
	if cc jump .L240;
	R0 = [FP+8];
	jump.s .L227;
.L240:
	R0 = [FP+8];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L230;
	R0 = [FP+8];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L231;
	R0 = [FP+8];
	jump.s .L227;
.L231:
	R0 = [FP+12];
	jump.s .L227;
.L230:
	R1 = [FP+12];
	R0 = [FP+8];
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L241;
	R0 = [FP+8];
	jump.s .L227;
.L241:
	R0 = [FP+12];
.L227:
	UNLINK;
	rts;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L257;
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L245;
.L257:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if cc jump .L258;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L245;
.L258:
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	R1 = R0;
	R0 = [FP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L248;
	R0 = [FP+12];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R0==0;
	if cc jump .L249;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L245;
.L249:
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L245;
.L248:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L259;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L245;
.L259:
	R0 = [FP+16];
	R1 = [FP+20];
.L245:
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
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
	LINK 8;
	[FP+8] = R0;
	R0 = [FP+8];
	[FP+-8] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	[FP+-4] = R0;
	jump.s .L261;
.L262:
	R1 = [FP+-8];
	R0 = 63 (X);
	R0 = R1 & R0;
	P2.H = _digits;
	P2.L = _digits;
	P1 = R0;
	P2 = P2 + P1;
	R0 = B [P2] (X);
	P2 = [FP+-4];
	B [P2] = R0;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R0 >>= 6;
	[FP+-8] = R0;
.L261:
	R0 = [FP+-8];
	cc =R0==0;
	if !cc jump .L262;
	P2 = [FP+-4];
	R0 = 0 (X);
	B [P2] = R0;
	R0.H = _s.0;
	R0.L = _s.0;
	UNLINK;
	rts;
	.size	_l64a, .-_l64a
	.local	_seed
	.comm	_seed,8,4
	.align 4
.global _srand;
.type _srand, STT_FUNC;
_srand:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R0 += -1;
	R2 = R0;
	R3 = 0 (X);
	P2.H = _seed;
	P2.L = _seed;
	[P2] = R2;
	[P2+4] = R3;
	nop;
	UNLINK;
	rts;
	.size	_srand, .-_srand
	.align 4
.global _rand;
.type _rand, STT_FUNC;
_rand:
	[--sp] = ( r7:5 );

	LINK 32;
	P2.H = _seed;
	P2.L = _seed;
	R0 = [P2];
	R1 = [P2+4];
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0.H = 22609;
	R0.L = 62509;
	[SP+12] = R0;
	R2.H = 19605;
	R2.L = 32557;
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldi3;
	[FP+-16] = R0;
	[FP+-12] = R1;
	R2 = [FP+-16];
	R3 = [FP+-12];
	R0 = R2;
	R0 += 1; cc = ac0;
	R5 = CC;
	R1 = R3;
	R1 = R1 + R5;
	P2.H = _seed;
	P2.L = _seed;
	[P2] = R0;
	[P2+4] = R1;
	P2.H = _seed;
	P2.L = _seed;
	R0 = [P2];
	R1 = [P2+4];
	R6 = R1 >> 1;
	R7 = 0 (X);
	R0 = R6;
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_rand, .-_rand
	.align 4
.global _insque;
.type _insque, STT_FUNC;
_insque:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	[FP+-8] = R0;
	R0 = [FP+-8];
	cc =R0==0;
	if !cc jump .L268;
	P2 = [FP+-4];
	R0 = 0 (X);
	[P2+4] = R0;
	P2 = [FP+-4];
	R0 = [P2+4];
	P2 = [FP+-4];
	[P2] = R0;
	jump.s .L267;
.L268:
	P2 = [FP+-8];
	R0 = [P2];
	P2 = [FP+-4];
	[P2] = R0;
	P2 = [FP+-4];
	R0 = [FP+-8];
	[P2+4] = R0;
	P2 = [FP+-8];
	R0 = [FP+-4];
	[P2] = R0;
	P2 = [FP+-4];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L267;
	nop;
	nop;
	P2 = [FP+-4];
	P2 = [P2];
	R0 = [FP+-4];
	[P2+4] = R0;
.L267:
	UNLINK;
	rts;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	LINK 4;
	[FP+8] = R0;
	R0 = [FP+8];
	[FP+-4] = R0;
	P2 = [FP+-4];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L271;
	nop;
	nop;
	P2 = [FP+-4];
	P2 = [P2];
	P1 = [FP+-4];
	R0 = [P1+4];
	[P2+4] = R0;
.L271:
	P2 = [FP+-4];
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L273;
	nop;
	nop;
	P2 = [FP+-4];
	P2 = [P2+4];
	P1 = [FP+-4];
	R0 = [P1];
	[P2] = R0;
.L273:
	nop;
	UNLINK;
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4 );

	LINK 32;
	[FP+24] = R0;
	[FP+28] = R1;
	[FP+32] = R2;
	R0 = [FP+36];
	[FP+-20] = R0;
	R0 = [FP+-20];
	R0 += -1;
	[FP+-8] = R0;
	R6 = [FP+-20];
	R7 = 0 (X);
	R0 = R6 >> 29;
	R5 = R7 << 3;
	R5 = R0 | R5;
	R4 = R6 << 3;
	R0 = [FP+28];
	[FP+-12] = R0;
	P2 = [FP+32];
	R0 = [P2];
	[FP+-16] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L275;
.L278:
	R0 = [FP+-4];
	R1 = [FP+-20];
	R0 *= R1;
	R1 = [FP+-12];
	R1 = R1 + R0;
	P1 = R1;
	P2 = [FP+40];
	R1 = P1;
	R0 = [FP+24];
	call (P2);
	cc =R0==0;
	if !cc jump .L276;
	R0 = [FP+-4];
	R1 = [FP+-20];
	R0 *= R1;
	R1 = [FP+-12];
	R1 = R1 + R0;
	P2 = R1;
	jump.s .L277;
.L276:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L275:
	R1 = [FP+-4];
	R0 = [FP+-16];
	cc =R1<R0 (iu);
	if cc jump .L278;
	R0 = [FP+-16];
	R0 += 1;
	P2 = [FP+32];
	[P2] = R0;
	R0 = [FP+-16];
	R1 = [FP+-20];
	R0 *= R1;
	R1 = [FP+-12];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [FP+36];
	R2 = R0;
	R1 = [FP+24];
	R0 = P2;
	call _memcpy;
	P2 = R0;
.L277:
	R0 = P2;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_lsearch, .-_lsearch
	.align 4
.global _lfind;
.type _lfind, STT_FUNC;
_lfind:
	[--sp] = ( r7:4 );

	LINK 32;
	[FP+24] = R0;
	[FP+28] = R1;
	[FP+32] = R2;
	R0 = [FP+36];
	[FP+-20] = R0;
	R0 = [FP+-20];
	R0 += -1;
	[FP+-8] = R0;
	R6 = [FP+-20];
	R7 = 0 (X);
	R0 = R6 >> 29;
	R5 = R7 << 3;
	R5 = R0 | R5;
	R4 = R6 << 3;
	R0 = [FP+28];
	[FP+-12] = R0;
	P2 = [FP+32];
	R0 = [P2];
	[FP+-16] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L280;
.L283:
	R0 = [FP+-4];
	R1 = [FP+-20];
	R0 *= R1;
	R1 = [FP+-12];
	R1 = R1 + R0;
	P1 = R1;
	P2 = [FP+40];
	R1 = P1;
	R0 = [FP+24];
	call (P2);
	cc =R0==0;
	if !cc jump .L281;
	R0 = [FP+-4];
	R1 = [FP+-20];
	R0 *= R1;
	R1 = [FP+-12];
	R1 = R1 + R0;
	P2 = R1;
	jump.s .L282;
.L281:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L280:
	R1 = [FP+-4];
	R0 = [FP+-16];
	cc =R1<R0 (iu);
	if cc jump .L283;
	P2 = 0 (X);
.L282:
	R0 = P2;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_lfind, .-_lfind
	.align 4
.global _abs;
.type _abs, STT_FUNC;
_abs:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R0 = abs R0;
	UNLINK;
	rts;
	.size	_abs, .-_abs
	.align 4
.global _atoi;
.type _atoi, STT_FUNC;
_atoi:
	LINK 20;
	[FP+8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	R0 = 0 (X);
	[FP+-8] = R0;
	jump.s .L287;
.L288:
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
.L287:
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L288;
	nop;
	nop;
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L289;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L291;
	R0 = 1 (X);
	[FP+-8] = R0;
.L289:
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
	jump.s .L291;
.L292:
	R1 = [FP+-4];
	R0 = R1;
	R0 <<= 2;
	R0 = R0 + R1;
	R0 <<= 1;
	R1 = R0;
	P2 = [FP+8];
	R0 = P2;
	R0 += 1;
	[FP+8] = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R0 = R1 - R0;
	[FP+-4] = R0;
.L291:
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L292;
	R0 = [FP+-8];
	cc =R0==0;
	if !cc jump .L293;
	R0 = [FP+-4];
	R0 = -R0;
	jump.s .L295;
.L293:
	R0 = [FP+-4];
.L295:
	UNLINK;
	rts;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	LINK 20;
	[FP+8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	R0 = 0 (X);
	[FP+-8] = R0;
	jump.s .L297;
.L298:
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
.L297:
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L298;
	nop;
	nop;
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L299;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L301;
	R0 = 1 (X);
	[FP+-8] = R0;
.L299:
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
	jump.s .L301;
.L302:
	R1 = [FP+-4];
	R0 = R1;
	R0 <<= 2;
	R0 = R0 + R1;
	R0 <<= 1;
	R1 = R0;
	P2 = [FP+8];
	R0 = P2;
	R0 += 1;
	[FP+8] = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R0 = R1 - R0;
	[FP+-4] = R0;
.L301:
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L302;
	R0 = [FP+-8];
	cc =R0==0;
	if !cc jump .L303;
	R0 = [FP+-4];
	R0 = -R0;
	jump.s .L305;
.L303:
	R0 = [FP+-4];
.L305:
	UNLINK;
	rts;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:5 );

	LINK 44;
	[FP+20] = R0;
	R0 = 0 (X);
	R1 = 0 (X);
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = 0 (X);
	[FP+-12] = R0;
	jump.s .L307;
.L308:
	R0 = [FP+20];
	R0 += 1;
	[FP+20] = R0;
.L307:
	P2 = [FP+20];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L308;
	nop;
	nop;
	P2 = [FP+20];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L309;
	R1 = 45 (X);
	cc =R0==R1;
	if !cc jump .L311;
	R0 = 1 (X);
	[FP+-12] = R0;
.L309:
	R0 = [FP+20];
	R0 += 1;
	[FP+20] = R0;
	jump.s .L311;
.L312:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 10 (X);
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldi3;
	[FP+-28] = R0;
	[FP+-24] = R1;
	R6 = [FP+-28];
	R7 = [FP+-24];
	P2 = [FP+20];
	R0 = P2;
	R0 += 1;
	[FP+20] = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R2 = R0;
	R3 = R0;
	R3 >>>= 31;
	R0 = R6 - R2; cc = ac0;
	CC = ! CC;
	R5 = CC;
	R1 = R7 - R3;
	R1 = R1 - R5;
	[FP+-8] = R0;
	[FP+-4] = R1;
.L311:
	P2 = [FP+20];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	if cc jump .L312;
	R0 = [FP+-12];
	cc =R0==0;
	if !cc jump .L313;
	R2 = 0 (X);
	R3 = 0 (X);
	R6 = [FP+-8];
	R7 = [FP+-4];
	R0 = R2 - R6; cc = ac0;
	CC = ! CC;
	R5 = CC;
	R1 = R3 - R7;
	R1 = R1 - R5;
	jump.s .L315;
.L313:
	R0 = [FP+-8];
	R1 = [FP+-4];
.L315:
	[FP+-20] = R0;
	[FP+-16] = R1;
	R0 = [FP+-20];
	R1 = [FP+-16];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	jump.s .L317;
.L321:
	R0 = [FP+16];
	R1 = R0 >> 1;
	R0 = [FP+20];
	R0 *= R1;
	R1 = [FP+12];
	R0 = R1 + R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	P2 = [FP+24];
	R1 = R0;
	R0 = [FP+8];
	call (P2);
	[FP+-8] = R0;
	R0 = [FP+-8];
	cc =R0<0;
	if !cc jump .L318;
	R0 = [FP+16];
	R0 >>= 1;
	[FP+16] = R0;
	jump.s .L317;
.L318:
	R0 = [FP+-8];
	cc =R0<=0;
	if cc jump .L319;
	R1 = [FP+-4];
	R0 = [FP+20];
	R0 = R1 + R0;
	[FP+12] = R0;
	R0 = [FP+16];
	R0 >>= 1;
	R1 = [FP+16];
	R0 = R1 - R0;
	R0 += -1;
	[FP+16] = R0;
	jump.s .L317;
.L319:
	R0 = [FP+-4];
	jump.s .L320;
.L317:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L321;
	R0 = 0 (X);
.L320:
	UNLINK;
	rts;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	LINK 28;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[FP+-4] = R0;
	R0 = [FP+16];
	[FP+-8] = R0;
	jump.s .L323;
.L327:
	R0 = [FP+-8];
	R0 >>>= 1;
	R1 = R0;
	R0 = [FP+20];
	R0 *= R1;
	R1 = [FP+-4];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R1 = [FP+28];
	R0 = [FP+-12];
	P2 = [FP+24];
	R2 = R1;
	R1 = R0;
	R0 = [FP+8];
	call (P2);
	[FP+-16] = R0;
	R0 = [FP+-16];
	cc =R0==0;
	if !cc jump .L324;
	R0 = [FP+-12];
	jump.s .L325;
.L324:
	R0 = [FP+-16];
	cc =R0<=0;
	if cc jump .L326;
	R1 = [FP+-12];
	R0 = [FP+20];
	R0 = R1 + R0;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R0 += -1;
	[FP+-8] = R0;
.L326:
	R0 = [FP+-8];
	R0 >>>= 1;
	[FP+-8] = R0;
.L323:
	R0 = [FP+-8];
	cc =R0==0;
	if !cc jump .L327;
	R0 = 0 (X);
.L325:
	UNLINK;
	rts;
	.size	_bsearch_r, .-_bsearch_r
	.align 4
.global _div;
.type _div, STT_FUNC;
_div:
	[--sp] = ( r7:5 );

	LINK 20;
	[FP+20] = R0;
	[FP+24] = R1;
	R1 = [FP+24];
	R0 = [FP+20];
	call ___divsi3;
	R5 = R0;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___modsi3;
	R6 = R5;
	R7 = R0;
	[FP+-8] = R6;
	[FP+-4] = R7;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_div, .-_div
	.align 4
.global _imaxabs;
.type _imaxabs, STT_FUNC;
_imaxabs:
	[--sp] = ( r7:5 );

	LINK 8;
	[FP+20] = R0;
	[FP+24] = R1;
	R0 = [FP+20];
	R1 = [FP+24];
	cc =R1<0;
	if !cc jump .L331;
	R6 = 0 (X);
	R7 = 0 (X);
	R2 = R6 - R0; cc = ac0;
	CC = ! CC;
	R5 = CC;
	R3 = R7 - R1;
	R3 = R3 - R5;
	R0 = R2;
	R1 = R3;
.L331:
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_imaxabs, .-_imaxabs
	.align 4
.global _imaxdiv;
.type _imaxdiv, STT_FUNC;
_imaxdiv:
	[--sp] = ( r7:7 );

	[--SP] = R4;
	[--SP] = R5;
	LINK 56;
	R7 = P0;
	[FP+20] = R0;
	[FP+24] = R1;
	[FP+28] = R2;
	R0 = [FP+32];
	[SP+12] = R0;
	R2 = [FP+28];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___divdi3;
	[FP+-24] = R0;
	[FP+-20] = R1;
	R4 = [FP+-24];
	R5 = [FP+-20];
	R0 = [FP+20];
	R1 = [FP+24];
	[FP+-32] = R0;
	[FP+-28] = R1;
	R0 = [FP+32];
	[SP+12] = R0;
	R2 = [FP+28];
	R0 = [FP+-32];
	R1 = [FP+-28];
	call ___moddi3;
	[FP+-40] = R0;
	[FP+-36] = R1;
	R0 = [FP+-40];
	R1 = [FP+-36];
	P2 = R7;
	[P2] = R4;
	[P2+4] = R5;
	P2 = R7;
	[P2+8] = R0;
	[P2+12] = R1;
	R0 = R7;
	UNLINK;
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_imaxdiv, .-_imaxdiv
	.align 4
.global _labs;
.type _labs, STT_FUNC;
_labs:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R0 = abs R0;
	UNLINK;
	rts;
	.size	_labs, .-_labs
	.align 4
.global _ldiv;
.type _ldiv, STT_FUNC;
_ldiv:
	[--sp] = ( r7:5 );

	LINK 20;
	[FP+20] = R0;
	[FP+24] = R1;
	R1 = [FP+24];
	R0 = [FP+20];
	call ___divsi3;
	R5 = R0;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___modsi3;
	R6 = R5;
	R7 = R0;
	[FP+-8] = R6;
	[FP+-4] = R7;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_ldiv, .-_ldiv
	.align 4
.global _llabs;
.type _llabs, STT_FUNC;
_llabs:
	[--sp] = ( r7:5 );

	LINK 8;
	[FP+20] = R0;
	[FP+24] = R1;
	R0 = [FP+20];
	R1 = [FP+24];
	cc =R1<0;
	if !cc jump .L341;
	R6 = 0 (X);
	R7 = 0 (X);
	R2 = R6 - R0; cc = ac0;
	CC = ! CC;
	R5 = CC;
	R3 = R7 - R1;
	R3 = R3 - R5;
	R0 = R2;
	R1 = R3;
.L341:
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_llabs, .-_llabs
	.align 4
.global _lldiv;
.type _lldiv, STT_FUNC;
_lldiv:
	[--sp] = ( r7:7 );

	[--SP] = R4;
	[--SP] = R5;
	LINK 56;
	R7 = P0;
	[FP+20] = R0;
	[FP+24] = R1;
	[FP+28] = R2;
	R0 = [FP+32];
	[SP+12] = R0;
	R2 = [FP+28];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___divdi3;
	[FP+-24] = R0;
	[FP+-20] = R1;
	R4 = [FP+-24];
	R5 = [FP+-20];
	R0 = [FP+20];
	R1 = [FP+24];
	[FP+-32] = R0;
	[FP+-28] = R1;
	R0 = [FP+32];
	[SP+12] = R0;
	R2 = [FP+28];
	R0 = [FP+-32];
	R1 = [FP+-28];
	call ___moddi3;
	[FP+-40] = R0;
	[FP+-36] = R1;
	R0 = [FP+-40];
	R1 = [FP+-36];
	P2 = R7;
	[P2] = R4;
	[P2+4] = R5;
	P2 = R7;
	[P2+8] = R0;
	[P2+12] = R1;
	R0 = R7;
	UNLINK;
	R5 = [SP++];
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	_lldiv, .-_lldiv
	.align 4
.global _wcschr;
.type _wcschr, STT_FUNC;
_wcschr:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	jump.s .L347;
.L349:
	R0 = [FP+8];
	R0 += 4;
	[FP+8] = R0;
.L347:
	P2 = [FP+8];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L348;
	nop;
	nop;
	P2 = [FP+8];
	R0 = [P2];
	R1 = [FP+12];
	cc =R1==R0;
	if !cc jump .L349;
	nop;
	nop;
.L348:
	P2 = [FP+8];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L350;
	R0 = [FP+8];
	jump.s .L352;
.L350:
	R0 = 0 (X);
.L352:
	UNLINK;
	rts;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	jump.s .L354;
.L356:
	R0 = [FP+8];
	R0 += 4;
	[FP+8] = R0;
	R0 = [FP+12];
	R0 += 4;
	[FP+12] = R0;
.L354:
	P2 = [FP+8];
	R1 = [P2];
	P2 = [FP+12];
	R0 = [P2];
	cc =R1==R0;
	if !cc jump .L355;
	nop;
	nop;
	P2 = [FP+8];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L355;
	nop;
	nop;
	P2 = [FP+12];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L356;
	nop;
	nop;
.L355:
	P2 = [FP+8];
	R1 = [P2];
	P2 = [FP+12];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L357;
	nop;
	nop;
	P2 = [FP+8];
	R0 = [P2];
	P2 = [FP+12];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L359;
.L357:
	R0 = -1 (X);
.L359:
	UNLINK;
	rts;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	[FP+-4] = R0;
	nop;
.L361:
	P1 = [FP+12];
	R0 = P1;
	R0 += 4;
	[FP+12] = R0;
	P2 = [FP+8];
	R0 = P2;
	R0 += 4;
	[FP+8] = R0;
	R0 = [P1];
	[P2] = R0;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L361;
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	_wcscpy, .-_wcscpy
	.align 4
.global _wcslen;
.type _wcslen, STT_FUNC;
_wcslen:
	LINK 4;
	[FP+8] = R0;
	R0 = [FP+8];
	[FP+-4] = R0;
	jump.s .L364;
.L365:
	R0 = [FP+8];
	R0 += 4;
	[FP+8] = R0;
.L364:
	P2 = [FP+8];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L365;
	R1 = [FP+8];
	R0 = [FP+-4];
	R0 = R1 - R0;
	R0 >>>= 2;
	UNLINK;
	rts;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	jump.s .L368;
.L370:
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
	R0 = [FP+8];
	R0 += 4;
	[FP+8] = R0;
	R0 = [FP+12];
	R0 += 4;
	[FP+12] = R0;
.L368:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L369;
	nop;
	nop;
	P2 = [FP+8];
	R1 = [P2];
	P2 = [FP+12];
	R0 = [P2];
	cc =R1==R0;
	if !cc jump .L369;
	nop;
	nop;
	P2 = [FP+8];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L369;
	nop;
	nop;
	P2 = [FP+12];
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L370;
.L369:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L371;
	nop;
	nop;
	P2 = [FP+8];
	R1 = [P2];
	P2 = [FP+12];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L372;
	nop;
	nop;
	P2 = [FP+8];
	R0 = [P2];
	P2 = [FP+12];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L375;
.L372:
	R0 = -1 (X);
	jump.s .L375;
.L371:
	R0 = 0 (X);
.L375:
	UNLINK;
	rts;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	jump.s .L377;
.L379:
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
	R0 = [FP+8];
	R0 += 4;
	[FP+8] = R0;
.L377:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L378;
	nop;
	nop;
	P2 = [FP+8];
	R0 = [P2];
	R1 = [FP+12];
	cc =R1==R0;
	if !cc jump .L379;
.L378:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L380;
	R0 = [FP+8];
	jump.s .L382;
.L380:
	R0 = 0 (X);
.L382:
	UNLINK;
	rts;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	jump.s .L384;
.L386:
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
	R0 = [FP+8];
	R0 += 4;
	[FP+8] = R0;
	R0 = [FP+12];
	R0 += 4;
	[FP+12] = R0;
.L384:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L385;
	nop;
	nop;
	P2 = [FP+8];
	R1 = [P2];
	P2 = [FP+12];
	R0 = [P2];
	cc =R1==R0;
	if cc jump .L386;
.L385:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L387;
	nop;
	nop;
	P2 = [FP+8];
	R1 = [P2];
	P2 = [FP+12];
	R0 = [P2];
	cc =R1<R0;
	if cc jump .L388;
	nop;
	nop;
	P2 = [FP+8];
	R0 = [P2];
	P2 = [FP+12];
	R1 = [P2];
	cc =R1<R0;
	R0 = CC;
	R0 = R0.B (Z);
	jump.s .L391;
.L388:
	R0 = -1 (X);
	jump.s .L391;
.L387:
	R0 = 0 (X);
.L391:
	UNLINK;
	rts;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	jump.s .L393;
.L394:
	P1 = [FP+12];
	R0 = P1;
	R0 += 4;
	[FP+12] = R0;
	P2 = [FP+8];
	R0 = P2;
	R0 += 4;
	[FP+8] = R0;
	R0 = [P1];
	[P2] = R0;
.L393:
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L394;
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R1 = [FP+8];
	R0 = [FP+12];
	cc =R1==R0;
	if !cc jump .L397;
	R0 = [FP+8];
	jump.s .L398;
.L397:
	R1 = [FP+8];
	R0 = [FP+12];
	R1 = R1 - R0;
	R0 = [FP+16];
	R0 <<= 2;
	cc =R1<R0 (iu);
	if !cc jump .L403;
	jump.s .L400;
.L401:
	R0 = [FP+16];
	R0 <<= 2;
	R1 = [FP+12];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [FP+16];
	R0 <<= 2;
	R1 = [FP+8];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [P1];
	[P2] = R0;
.L400:
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L401;
	jump.s .L402;
.L404:
	P1 = [FP+12];
	R0 = P1;
	R0 += 4;
	[FP+12] = R0;
	P2 = [FP+8];
	R0 = P2;
	R0 += 4;
	[FP+8] = R0;
	R0 = [P1];
	[P2] = R0;
.L403:
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L404;
.L402:
	R0 = [FP+-4];
.L398:
	UNLINK;
	rts;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	jump.s .L406;
.L407:
	P2 = [FP+8];
	R0 = P2;
	R0 += 4;
	[FP+8] = R0;
	R0 = [FP+12];
	[P2] = R0;
.L406:
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L407;
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	[FP+-8] = R0;
	R1 = [FP+-4];
	R0 = [FP+-8];
	cc =R1<R0 (iu);
	if !cc jump .L410;
	R1 = [FP+-4];
	R0 = [FP+16];
	R0 = R1 + R0;
	[FP+-4] = R0;
	R1 = [FP+-8];
	R0 = [FP+16];
	R0 = R1 + R0;
	[FP+-8] = R0;
	jump.s .L411;
.L412:
	R0 = [FP+-4];
	R0 += -1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R0 += -1;
	[FP+-8] = R0;
	P2 = [FP+-4];
	R0 = B [P2] (X);
	P2 = [FP+-8];
	B [P2] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L411:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L412;
	jump.s .L416;
.L410:
	R1 = [FP+-4];
	R0 = [FP+-8];
	cc =R1==R0;
	if cc jump .L416;
	jump.s .L414;
.L415:
	P1 = [FP+-4];
	R0 = P1;
	R0 += 1;
	[FP+-4] = R0;
	P2 = [FP+-8];
	R0 = P2;
	R0 += 1;
	[FP+-8] = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L414:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L415;
.L416:
	nop;
	UNLINK;
	rts;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4 );

	LINK 64;
	[FP+24] = R0;
	[FP+28] = R1;
	[FP+32] = R2;
	R0 = [FP+24];
	R1 = [FP+28];
	[FP+-64] = R0;
	[FP+-60] = R1;
	R2 = [FP+32];
	R2 += -32;
	R1 = [FP+-64];
	R1 <<= R2;
	[FP+-12] = R1;
	R3 = 0 (X);
	R6 = [FP+-64];
	R6 >>= 1;
	[FP+-16] = R6;
	P1 = 31 (X);
	P2 = [FP+32];
	P0 = P1;
	P0 -= P2;
	[FP+-20] = P0;
	R0 = [FP+-16];
	R1 = [FP+-20];
	R0 >>= R1;
	[FP+-24] = R0;
	R6 = [FP+32];
	[FP+-28] = R6;
	R5 = [FP+-60];
	R7 = [FP+-28];
	R5 <<= R7;
	R0 = [FP+-24];
	R5 = R0 | R5;
	R1 = [FP+32];
	[FP+-32] = R1;
	R4 = [FP+-64];
	R6 = [FP+-32];
	R4 <<= R6;
	cc =R2<0;
	R7 = [FP+-12];
	if !cc R5 = R7;
	cc =R2<0;
	if !cc R4 = R3;
	R2 = [FP+32];
	R2 = -R2;
	R3 = 63 (X);
	R2 = R2 & R3;
	R2 += -32;
	R0 = [FP+-60];
	R0 >>= R2;
	[FP+-36] = R0;
	P2 = 0 (X);
	R1 = [FP+-60];
	R1 <<= 1;
	[FP+-40] = R1;
	P1 = 31 (X);
	R3 = [FP+32];
	R3 = -R3;
	R6 = 63 (X);
	[FP+-44] = R6;
	R7 = [FP+-44];
	R3 = R3 & R7;
	R0 = P1;
	R3 = R0 - R3;
	R1 = [FP+-40];
	R1 <<= R3;
	[FP+-48] = R1;
	R3 = [FP+32];
	R3 = -R3;
	R6 = 63 (X);
	[FP+-52] = R6;
	R7 = [FP+-52];
	R3 = R3 & R7;
	R6 = [FP+-64];
	R6 >>= R3;
	R0 = [FP+-48];
	R6 = R0 | R6;
	R3 = [FP+32];
	R3 = -R3;
	R1 = 63 (X);
	[FP+-56] = R1;
	R0 = [FP+-56];
	R3 = R3 & R0;
	R7 = [FP+-60];
	R7 >>= R3;
	cc =R2<0;
	R1 = [FP+-36];
	if !cc R6 = R1;
	cc =R2<0;
	if !cc R7 = P2;
	R0 = R4 | R6;
	R1 = R5 | R7;
	R6 = R0;
	R7 = R1;
	[FP+-8] = R6;
	[FP+-4] = R7;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotl64, .-_rotl64
	.align 4
.global _rotr64;
.type _rotr64, STT_FUNC;
_rotr64:
	[--sp] = ( r7:4 );

	LINK 64;
	[FP+24] = R0;
	[FP+28] = R1;
	[FP+32] = R2;
	R0 = [FP+24];
	R1 = [FP+28];
	[FP+-64] = R0;
	[FP+-60] = R1;
	R2 = [FP+32];
	R2 += -32;
	R1 = [FP+-60];
	R1 >>= R2;
	[FP+-12] = R1;
	R3 = 0 (X);
	R6 = [FP+-60];
	R6 <<= 1;
	[FP+-16] = R6;
	P1 = 31 (X);
	P2 = [FP+32];
	P0 = P1;
	P0 -= P2;
	[FP+-20] = P0;
	R0 = [FP+-16];
	R1 = [FP+-20];
	R0 <<= R1;
	[FP+-24] = R0;
	R6 = [FP+32];
	[FP+-28] = R6;
	R4 = [FP+-64];
	R7 = [FP+-28];
	R4 >>= R7;
	R0 = [FP+-24];
	R4 = R0 | R4;
	R1 = [FP+32];
	[FP+-32] = R1;
	R5 = [FP+-60];
	R6 = [FP+-32];
	R5 >>= R6;
	cc =R2<0;
	R7 = [FP+-12];
	if !cc R4 = R7;
	cc =R2<0;
	if !cc R5 = R3;
	R2 = [FP+32];
	R2 = -R2;
	R3 = 63 (X);
	R2 = R2 & R3;
	R2 += -32;
	R0 = [FP+-64];
	R0 <<= R2;
	[FP+-36] = R0;
	P2 = 0 (X);
	R1 = [FP+-64];
	R1 >>= 1;
	[FP+-40] = R1;
	P1 = 31 (X);
	R3 = [FP+32];
	R3 = -R3;
	R6 = 63 (X);
	[FP+-44] = R6;
	R7 = [FP+-44];
	R3 = R3 & R7;
	R0 = P1;
	R3 = R0 - R3;
	R1 = [FP+-40];
	R1 >>= R3;
	[FP+-48] = R1;
	R3 = [FP+32];
	R3 = -R3;
	R6 = 63 (X);
	[FP+-52] = R6;
	R7 = [FP+-52];
	R3 = R3 & R7;
	R7 = [FP+-60];
	R7 <<= R3;
	R0 = [FP+-48];
	R7 = R0 | R7;
	R3 = [FP+32];
	R3 = -R3;
	R1 = 63 (X);
	[FP+-56] = R1;
	R0 = [FP+-56];
	R3 = R3 & R0;
	R6 = [FP+-64];
	R6 <<= R3;
	cc =R2<0;
	R1 = [FP+-36];
	if !cc R7 = R1;
	cc =R2<0;
	if !cc R6 = P2;
	R0 = R4 | R6;
	R1 = R5 | R7;
	R6 = R0;
	R7 = R1;
	[FP+-8] = R6;
	[FP+-4] = R7;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotr64, .-_rotr64
	.align 4
.global _rotl32;
.type _rotl32, STT_FUNC;
_rotl32:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	R2 = R0;
	R2 <<= R1;
	R1 = [FP+12];
	R1 = -R1;
	R3 = 31 (X);
	R1 = R1 & R3;
	R0 >>= R1;
	R0 = R0 | R2;
	UNLINK;
	rts;
	.size	_rotl32, .-_rotl32
	.align 4
.global _rotr32;
.type _rotr32, STT_FUNC;
_rotr32:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	R2 = R0;
	R2 >>= R1;
	R1 = [FP+12];
	R1 = -R1;
	R3 = 31 (X);
	R1 = R1 & R3;
	R0 <<= R1;
	R0 = R0 | R2;
	UNLINK;
	rts;
	.size	_rotr32, .-_rotr32
	.align 4
.global _rotl_sz;
.type _rotl_sz, STT_FUNC;
_rotl_sz:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	R2 = R0;
	R2 <<= R1;
	R1 = [FP+12];
	R1 = -R1;
	R3 = 31 (X);
	R1 = R1 & R3;
	R0 >>= R1;
	R0 = R0 | R2;
	UNLINK;
	rts;
	.size	_rotl_sz, .-_rotl_sz
	.align 4
.global _rotr_sz;
.type _rotr_sz, STT_FUNC;
_rotr_sz:
	LINK 0;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	R2 = R0;
	R2 >>= R1;
	R1 = [FP+12];
	R1 = -R1;
	R3 = 31 (X);
	R1 = R1 & R3;
	R0 <<= R1;
	R0 = R0 | R2;
	UNLINK;
	rts;
	.size	_rotr_sz, .-_rotr_sz
	.align 4
.global _rotl16;
.type _rotl16, STT_FUNC;
_rotl16:
	LINK 0;
	W [FP+8] = R0;
	[FP+12] = R1;
	R1 = W [FP+8] (Z);
	R0 = [FP+12];
	R1 <<= R0;
	R3 = R1;
	R1 = W [FP+8] (Z);
	R2 = 16 (X);
	R0 = [FP+12];
	R0 = R2 - R0;
	R1 >>= R0;
	R0 = R1;
	R0 = R3 | R0;
	UNLINK;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	LINK 0;
	W [FP+8] = R0;
	[FP+12] = R1;
	R1 = W [FP+8] (Z);
	R0 = [FP+12];
	R1 >>= R0;
	R3 = R1;
	R1 = W [FP+8] (Z);
	R2 = 16 (X);
	R0 = [FP+12];
	R0 = R2 - R0;
	R1 <<= R0;
	R0 = R1;
	R0 = R3 | R0;
	UNLINK;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	LINK 0;
	B [FP+8] = R0;
	[FP+12] = R1;
	R1 = B [FP+8] (Z);
	R0 = [FP+12];
	R1 <<= R0;
	R3 = R1;
	R1 = B [FP+8] (Z);
	R2 = 8 (X);
	R0 = [FP+12];
	R0 = R2 - R0;
	R1 >>= R0;
	R0 = R1;
	R0 = R3 | R0;
	UNLINK;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	LINK 0;
	B [FP+8] = R0;
	[FP+12] = R1;
	R1 = B [FP+8] (Z);
	R0 = [FP+12];
	R1 >>= R0;
	R3 = R1;
	R1 = B [FP+8] (Z);
	R2 = 8 (X);
	R0 = [FP+12];
	R0 = R2 - R0;
	R1 <<= R0;
	R0 = R1;
	R0 = R3 | R0;
	UNLINK;
	rts;
	.size	_rotr8, .-_rotr8
	.align 4
.global _bswap_16;
.type _bswap_16, STT_FUNC;
_bswap_16:
	LINK 4;
	W [FP+8] = R0;
	R0 = 255 (X);
	[FP+-4] = R0;
	R1 = W [FP+8] (Z);
	R0 = [FP+-4];
	R0 <<= 8;
	R0 = R1 & R0;
	R0 >>= 8;
	R1 = R0;
	R0 = [FP+-4];
	R2 = R0;
	R0 = W [FP+8] (X);
	R0 = R0 & R2;
	R0 <<= 8;
	R0 = R1 | R0;
	UNLINK;
	rts;
	.size	_bswap_16, .-_bswap_16
	.align 4
.global _bswap_32;
.type _bswap_32, STT_FUNC;
_bswap_32:
	LINK 4;
	[FP+8] = R0;
	R0 = 255 (X);
	[FP+-4] = R0;
	R0 = [FP+-4];
	R1 = R0 << 24;
	R0 = [FP+8];
	R0 = R1 & R0;
	R1 = R0 >> 24;
	R0 = [FP+-4];
	R2 = R0 << 16;
	R0 = [FP+8];
	R0 = R2 & R0;
	R0 >>= 8;
	R1 = R1 | R0;
	R0 = [FP+-4];
	R2 = R0 << 8;
	R0 = [FP+8];
	R0 = R2 & R0;
	R0 <<= 8;
	R1 = R1 | R0;
	R2 = [FP+8];
	R0 = [FP+-4];
	R0 = R2 & R0;
	R0 <<= 24;
	R0 = R1 | R0;
	UNLINK;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:4 );

	LINK 120;
	[FP+24] = R0;
	[FP+28] = R1;
	R0 = 255 (X);
	R1 = 0 (X);
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R7 = R0 << 24;
	R6 = 0 (X);
	R0 = [FP+24];
	R2 = R6 & R0;
	R0 = [FP+28];
	R3 = R7 & R0;
	R0 = R3 >> 24;
	[FP+-16] = R0;
	R1 = 0 (X);
	[FP+-12] = R1;
	R0 = [FP+-8];
	R0 <<= 16;
	[FP+-20] = R0;
	R2 = 0 (X);
	[FP+-24] = R2;
	R2 = [FP+24];
	R3 = [FP+-24];
	R0 = R3 & R2;
	R2 = [FP+28];
	R6 = [FP+-20];
	R1 = R6 & R2;
	R7 = R1 >> 8;
	[FP+-32] = R7;
	R0 = 0 (X);
	[FP+-28] = R0;
	R1 = [FP+-16];
	R6 = [FP+-32];
	R2 = R1 | R6;
	R7 = [FP+-12];
	R0 = [FP+-28];
	R3 = R7 | R0;
	R0 = [FP+-8];
	R0 <<= 8;
	[FP+-36] = R0;
	R1 = 0 (X);
	[FP+-40] = R1;
	R7 = [FP+24];
	R6 = [FP+-40];
	R0 = R6 & R7;
	R7 = [FP+28];
	R6 = [FP+-36];
	R1 = R6 & R7;
	R7 = R1 << 8;
	R6 = R0 >> 24;
	[FP+-48] = R6;
	R6 = [FP+-48];
	R7 = R7 | R6;
	[FP+-48] = R7;
	R7 = R1 >> 24;
	[FP+-44] = R7;
	R0 = [FP+-48];
	R6 = R2 | R0;
	R1 = [FP+-44];
	R7 = R3 | R1;
	R0 = [FP+-8];
	R0 <<= 0;
	[FP+-52] = R0;
	R2 = 0 (X);
	[FP+-56] = R2;
	R2 = [FP+24];
	R3 = [FP+-56];
	R0 = R3 & R2;
	R2 = [FP+28];
	R3 = [FP+-52];
	R1 = R3 & R2;
	R2 = R1 << 24;
	R3 = R0 >> 8;
	[FP+-64] = R3;
	R3 = [FP+-64];
	R2 = R2 | R3;
	[FP+-64] = R2;
	R2 = R1 >> 8;
	[FP+-60] = R2;
	R0 = [FP+-64];
	R2 = R6 | R0;
	R1 = [FP+-60];
	R3 = R7 | R1;
	R0 = [FP+-8];
	R0 >>= 8;
	R1 = [FP+-4];
	R1 <<= 24;
	[FP+-68] = R1;
	R6 = [FP+-68];
	R0 = R0 | R6;
	[FP+-68] = R0;
	R0 = [FP+-8];
	R0 <<= 24;
	[FP+-72] = R0;
	R7 = [FP+24];
	R6 = [FP+-72];
	R0 = R6 & R7;
	R7 = [FP+28];
	R6 = [FP+-68];
	R1 = R6 & R7;
	R7 = R0 >> 24;
	R6 = R1 << 8;
	[FP+-76] = R6;
	R6 = [FP+-76];
	R7 = R7 | R6;
	[FP+-76] = R7;
	R7 = R0 << 8;
	[FP+-80] = R7;
	R0 = [FP+-80];
	R6 = R2 | R0;
	R1 = [FP+-76];
	R7 = R3 | R1;
	R0 = [FP+-8];
	R0 >>= 16;
	R1 = [FP+-4];
	R1 <<= 16;
	[FP+-84] = R1;
	R2 = [FP+-84];
	R0 = R0 | R2;
	[FP+-84] = R0;
	R0 = [FP+-8];
	R0 <<= 16;
	[FP+-88] = R0;
	R2 = [FP+24];
	R3 = [FP+-88];
	R0 = R3 & R2;
	R2 = [FP+28];
	R3 = [FP+-84];
	R1 = R3 & R2;
	R2 = R0 >> 8;
	R3 = R1 << 24;
	[FP+-92] = R3;
	R3 = [FP+-92];
	R2 = R2 | R3;
	[FP+-92] = R2;
	R2 = R0 << 24;
	[FP+-96] = R2;
	R0 = [FP+-96];
	R2 = R6 | R0;
	R1 = [FP+-92];
	R3 = R7 | R1;
	R0 = [FP+-8];
	R0 >>= 24;
	R1 = [FP+-4];
	R5 = R1 << 8;
	R5 = R0 | R5;
	R0 = [FP+-8];
	R4 = R0 << 8;
	R7 = [FP+24];
	R0 = R4 & R7;
	R7 = [FP+28];
	R1 = R5 & R7;
	R6 = R0 << 8;
	[FP+-100] = R6;
	R7 = 0 (X);
	[FP+-104] = R7;
	R6 = [FP+-104];
	R0 = R2 | R6;
	R7 = [FP+-100];
	R1 = R3 | R7;
	R6 = [FP+24];
	R7 = [FP+28];
	R5 = [FP+-8];
	R2 = R6 & R5;
	R5 = [FP+-4];
	R3 = R7 & R5;
	R6 = R2 << 24;
	[FP+-108] = R6;
	R7 = 0 (X);
	[FP+-112] = R7;
	R6 = [FP+-112];
	R2 = R0 | R6;
	R7 = [FP+-108];
	R3 = R1 | R7;
	[FP+-120] = R2;
	[FP+-116] = R3;
	R0 = [FP+-120];
	R1 = [FP+-116];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_bswap_64, .-_bswap_64
	.align 4
.global _ffs;
.type _ffs, STT_FUNC;
_ffs:
	LINK 4;
	[FP+8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L444;
.L447:
	R1 = [FP+8];
	R0 = [FP+-4];
	R1 >>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L445;
	R0 = [FP+-4];
	R0 += 1;
	jump.s .L446;
.L445:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L444:
	R0 = [FP+-4];
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L447;
	R0 = 0 (X);
.L446:
	UNLINK;
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	[--sp] = ( r7:7 );

	LINK 0;
	cc =R0==0;
	if !cc jump .L449;
	R0 = 0 (X);
	jump.s .L450;
.L449:
	R7 = 1 (X);
	jump.s .L451;
.L452:
	R0 >>>= 1;
	R7 += 1;
.L451:
	R1 = 1 (X);
	R1 = R0 & R1;
	cc =R1==0;
	if cc jump .L452;
	R0 = R7;
.L450:
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 4
.global _gl_isinff;
.type _gl_isinff, STT_FUNC;
_gl_isinff:
	LINK 12;
	[FP+8] = R0;
	R1 = -1 (X);
	R1.H = 65407;
	R0 = [FP+8];
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L454;
	R1 = -1 (X);
	R1.H = 32639;
	R0 = [FP+8];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L459;
.L454:
	R0 = 1 (X);
	jump.s .L458;
.L459:
	R0 = 0 (X);
.L458:
	UNLINK;
	rts;
	.size	_gl_isinff, .-_gl_isinff
	.align 4
.global _gl_isinfd;
.type _gl_isinfd, STT_FUNC;
_gl_isinfd:
	LINK 16;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = -1 (X);
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L461;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L466;
.L461:
	R0 = 1 (X);
	jump.s .L465;
.L466:
	R0 = 0 (X);
.L465:
	UNLINK;
	rts;
	.size	_gl_isinfd, .-_gl_isinfd
	.align 4
.global _gl_isinfl;
.type _gl_isinfl, STT_FUNC;
_gl_isinfl:
	LINK 16;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = -1 (X);
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L468;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L473;
.L468:
	R0 = 1 (X);
	jump.s .L472;
.L473:
	R0 = 0 (X);
.L472:
	UNLINK;
	rts;
	.size	_gl_isinfl, .-_gl_isinfl
	.align 4
.global __Qp_itoq;
.type __Qp_itoq, STT_FUNC;
__Qp_itoq:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+12];
	call ___floatsidf;
	[FP+-8] = R0;
	[FP+-4] = R1;
	P2 = [FP+8];
	R0 = [FP+-8];
	R1 = [FP+-4];
	[P2] = R0;
	[P2+4] = R1;
	nop;
	UNLINK;
	rts;
	.size	__Qp_itoq, .-__Qp_itoq
	.align 4
.global _ldexpf;
.type _ldexpf, STT_FUNC;
_ldexpf:
	LINK 16;
	[FP+8] = R0;
	[FP+12] = R1;
	R1 = [FP+8];
	R0 = [FP+8];
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L476;
	R0 = [FP+8];
	R1 = R0;
	call ___addsf3;
	R1 = R0;
	R0 = [FP+8];
	call ___nesf2;
	cc =R0==0;
	if cc jump .L476;
	R0 = [FP+12];
	cc =R0<0;
	if !cc jump .L478;
	R0 = 63 (X);
	R0 <<= 24;
	jump.s .L479;
.L478:
	R0 = 1 (X);
	R0 <<= 30;
.L479:
	[FP+-4] = R0;
.L482:
	R1 = [FP+12];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L480;
	R1 = [FP+-4];
	R0 = [FP+8];
	call ___mulsf3;
	[FP+8] = R0;
.L480:
	R0 = [FP+12];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[FP+12] = R0;
	R0 = [FP+12];
	cc =R0==0;
	if cc jump .L485;
	R1 = [FP+-4];
	R0 = [FP+-4];
	call ___mulsf3;
	[FP+-4] = R0;
	jump.s .L482;
.L485:
	nop;
.L476:
	R0 = [FP+8];
	UNLINK;
	rts;
	.size	_ldexpf, .-_ldexpf
	.align 4
.global _ldexp;
.type _ldexp, STT_FUNC;
_ldexp:
	LINK 64;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L487;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-24] = R0;
	[FP+-20] = R1;
	R0 = [FP+-20];
	[SP+12] = R0;
	R2 = [FP+-24];
	R0 = [FP+-24];
	R1 = [FP+-20];
	call ___adddf3;
	[FP+-32] = R0;
	[FP+-28] = R1;
	R0 = [FP+-32];
	R1 = [FP+-28];
	R2 = R1;
	[SP+12] = R2;
	R2 = R0;
	R0 = [FP+8];
	R1 = [FP+12];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L487;
	R0 = [FP+16];
	cc =R0<0;
	if !cc jump .L489;
	R0 = 0 (X);
	R1 = 511 (X);
	R1 <<= 21;
	jump.s .L490;
.L489:
	R0 = 0 (X);
	R1 = 1 (X);
	R1 <<= 30;
.L490:
	[FP+-8] = R0;
	[FP+-4] = R1;
.L493:
	R1 = [FP+16];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L491;
	R0 = [FP+-4];
	[SP+12] = R0;
	R2 = [FP+-8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___muldf3;
	[FP+-40] = R0;
	[FP+-36] = R1;
	R0 = [FP+-40];
	R1 = [FP+-36];
	[FP+8] = R0;
	[FP+12] = R1;
.L491:
	R0 = [FP+16];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[FP+16] = R0;
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L496;
	R0 = [FP+-4];
	[SP+12] = R0;
	R2 = [FP+-8];
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldf3;
	[FP+-48] = R0;
	[FP+-44] = R1;
	R0 = [FP+-48];
	R1 = [FP+-44];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L493;
.L496:
	nop;
.L487:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	rts;
	.size	_ldexp, .-_ldexp
	.align 4
.global _ldexpl;
.type _ldexpl, STT_FUNC;
_ldexpl:
	LINK 64;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L498;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-24] = R0;
	[FP+-20] = R1;
	R0 = [FP+-20];
	[SP+12] = R0;
	R2 = [FP+-24];
	R0 = [FP+-24];
	R1 = [FP+-20];
	call ___adddf3;
	[FP+-32] = R0;
	[FP+-28] = R1;
	R0 = [FP+-32];
	R1 = [FP+-28];
	R2 = R1;
	[SP+12] = R2;
	R2 = R0;
	R0 = [FP+8];
	R1 = [FP+12];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L498;
	R0 = [FP+16];
	cc =R0<0;
	if !cc jump .L500;
	R0 = 0 (X);
	R1 = 511 (X);
	R1 <<= 21;
	jump.s .L501;
.L500:
	R0 = 0 (X);
	R1 = 1 (X);
	R1 <<= 30;
.L501:
	[FP+-8] = R0;
	[FP+-4] = R1;
.L504:
	R1 = [FP+16];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L502;
	R0 = [FP+-4];
	[SP+12] = R0;
	R2 = [FP+-8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___muldf3;
	[FP+-40] = R0;
	[FP+-36] = R1;
	R0 = [FP+-40];
	R1 = [FP+-36];
	[FP+8] = R0;
	[FP+12] = R1;
.L502:
	R0 = [FP+16];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[FP+16] = R0;
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L507;
	R0 = [FP+-4];
	[SP+12] = R0;
	R2 = [FP+-8];
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldf3;
	[FP+-48] = R0;
	[FP+-44] = R1;
	R0 = [FP+-48];
	R1 = [FP+-44];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L504;
.L507:
	nop;
.L498:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	rts;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+12];
	[FP+-4] = R0;
	R0 = [FP+8];
	[FP+-8] = R0;
	jump.s .L509;
.L510:
	P2 = [FP+-4];
	R0 = P2;
	R0 += 1;
	[FP+-4] = R0;
	R1 = B [P2] (X);
	P2 = [FP+-8];
	R0 = P2;
	R0 += 1;
	[FP+-8] = R0;
	R0 = B [P2] (X);
	R0 = R1 ^ R0;
	B [P2] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L509:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L510;
	R0 = [FP+8];
	UNLINK;
	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	LINK 16;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	call _strlen;
	P2 = R0;
	R0 = [FP+8];
	R1 = P2;
	R0 = R0 + R1;
	[FP+-4] = R0;
	jump.s .L513;
.L515:
	R0 = [FP+12];
	R0 += 1;
	[FP+12] = R0;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
	R0 = [FP+16];
	R0 += -1;
	[FP+16] = R0;
.L513:
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L514;
	nop;
	nop;
	P2 = [FP+12];
	R0 = B [P2] (X);
	P2 = [FP+-4];
	B [P2] = R0;
	P2 = [FP+-4];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L515;
.L514:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L516;
	P2 = [FP+-4];
	R0 = 0 (X);
	B [P2] = R0;
.L516:
	R0 = [FP+8];
	UNLINK;
	rts;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L519;
.L524:
	nop;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L519:
	R1 = [FP+-4];
	R0 = [FP+12];
	cc =R1<R0 (iu);
	if !cc jump .L520;
	R1 = [FP+8];
	R0 = [FP+-4];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L524;
.L520:
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	jump.s .L526;
.L530:
	R0 = [FP+12];
	[FP+-4] = R0;
	jump.s .L527;
.L529:
	P2 = [FP+-4];
	R0 = P2;
	R0 += 1;
	[FP+-4] = R0;
	R1 = B [P2] (X);
	P2 = [FP+8];
	R0 = B [P2] (X);
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L527;
	R0 = [FP+8];
	jump.s .L528;
.L527:
	P2 = [FP+-4];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L529;
	R0 = [FP+8];
	R0 += 1;
	[FP+8] = R0;
.L526:
	P2 = [FP+8];
	R0 = B [P2] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L530;
	R0 = 0 (X);
.L528:
	UNLINK;
	rts;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	LINK 4;
	P2 = R0;
	[FP+12] = R1;
	R0 = 0 (X);
	[FP+-4] = R0;
.L533:
	R0 = B [P2] (X);
	R0 = R0.B (X);
	R1 = [FP+12];
	cc =R1==R0;
	if !cc jump .L532;
	[FP+-4] = P2;
.L532:
	P1 = P2;
	P2 = P1;
	P2 += 1;
	R0 = B [P1] (X);
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L533;
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	_strrchr, .-_strrchr
	.align 4
.global _strstr;
.type _strstr, STT_FUNC;
_strstr:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+12];
	call _strlen;
	[FP+-8] = R0;
	R0 = [FP+-8];
	cc =R0==0;
	if !cc jump .L538;
	R0 = [FP+8];
	jump.s .L537;
.L540:
	R2 = [FP+-8];
	R1 = [FP+12];
	R0 = [FP+-4];
	call _strncmp;
	cc =R0==0;
	if !cc jump .L539;
	R0 = [FP+-4];
	jump.s .L537;
.L539:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L538:
	P2 = [FP+12];
	R0 = B [P2] (X);
	R1 = R0.B (X);
	R0 = [FP+-4];
	call _strchr;
	[FP+-4] = R0;
	R0 = [FP+-4];
	cc =R0==0;
	if !cc jump .L540;
	R0 = 0 (X);
.L537:
	UNLINK;
	rts;
	.size	_strstr, .-_strstr
	.align 4
.global _copysign;
.type _copysign, STT_FUNC;
_copysign:
	[--sp] = ( r7:6 );

	LINK 24;
	[FP+16] = R0;
	[FP+20] = R1;
	[FP+24] = R2;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+16];
	R1 = [FP+20];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L542;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L544;
.L542:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L545;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L545;
.L544:
	R6 = [FP+16];
	R0 = [FP+20];
	R7 = R0;
	BITTGL (R7, 31);
	jump.s .L548;
.L545:
	R6 = [FP+16];
	R7 = [FP+20];
.L548:
	[FP+-8] = R6;
	[FP+-4] = R7;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R1 = [FP+12];
	R0 = [FP+20];
	R0 = R1 - R0;
	R1 = [FP+8];
	R0 = R1 + R0;
	[FP+-8] = R0;
	R0 = [FP+20];
	cc =R0==0;
	if !cc jump .L552;
	R0 = [FP+8];
	jump.s .L553;
.L552:
	R1 = [FP+12];
	R0 = [FP+20];
	cc =R1<R0 (iu);
	R0 = CC;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L554;
	R0 = 0 (X);
	jump.s .L553;
.L554:
	R0 = [FP+8];
	[FP+-4] = R0;
	jump.s .L555;
.L557:
	P2 = [FP+-4];
	R1 = B [P2] (X);
	P2 = [FP+16];
	R0 = B [P2] (X);
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L556;
	R0 = [FP+-4];
	R3 = R0;
	R3 += 1;
	R0 = [FP+16];
	R1 = R0;
	R1 += 1;
	R0 = [FP+20];
	R0 += -1;
	R2 = R0;
	R0 = R3;
	call _memcmp;
	cc =R0==0;
	if !cc jump .L556;
	R0 = [FP+-4];
	jump.s .L553;
.L556:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L555:
	R1 = [FP+-4];
	R0 = [FP+-8];
	cc =R1<=R0 (iu);
	if cc jump .L557;
	R0 = 0 (X);
.L553:
	UNLINK;
	rts;
	.size	_memmem, .-_memmem
	.align 4
.global _mempcpy;
.type _mempcpy, STT_FUNC;
_mempcpy:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R1 = [FP+16];
	R0 = [FP+12];
	R2 = R1;
	R1 = R0;
	R0 = [FP+8];
	call _memcpy;
	P2 = R0;
	R0 = [FP+16];
	P1 = R0;
	P2 = P2 + P1;
	R0 = P2;
	UNLINK;
	rts;
	.size	_mempcpy, .-_mempcpy
	.align 4
.global _frexp;
.type _frexp, STT_FUNC;
_frexp:
	[--sp] = ( r7:4 );

	LINK 56;
	[FP+24] = R0;
	[FP+28] = R1;
	[FP+32] = R2;
	R0 = 0 (X);
	[FP+-8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L561;
	R4 = [FP+24];
	R0 = [FP+28];
	R5 = R0;
	BITTGL (R5, 31);
	[FP+24] = R4;
	[FP+28] = R5;
	R0 = 1 (X);
	[FP+-4] = R0;
.L561:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L578;
	jump.s .L565;
.L566:
	R0 = [FP+-8];
	R0 += 1;
	[FP+-8] = R0;
	R0 = 1 (X);
	R0 <<= 30;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___divdf3;
	[FP+-24] = R0;
	[FP+-20] = R1;
	R0 = [FP+-24];
	R1 = [FP+-20];
	[FP+24] = R0;
	[FP+28] = R1;
.L565:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L566;
	jump.s .L567;
.L578:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L567;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L567;
	jump.s .L570;
.L571:
	R0 = [FP+-8];
	R0 += -1;
	[FP+-8] = R0;
	R0 = [FP+24];
	R1 = [FP+28];
	[FP+-32] = R0;
	[FP+-28] = R1;
	R0 = [FP+-28];
	[SP+12] = R0;
	R2 = [FP+-32];
	R0 = [FP+-32];
	R1 = [FP+-28];
	call ___adddf3;
	[FP+-40] = R0;
	[FP+-36] = R1;
	R0 = [FP+-40];
	R1 = [FP+-36];
	[FP+24] = R0;
	[FP+28] = R1;
.L570:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+24];
	R1 = [FP+28];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L571;
.L567:
	P2 = [FP+32];
	R0 = [FP+-8];
	[P2] = R0;
	R0 = [FP+-4];
	cc =R0==0;
	if cc jump .L572;
	R6 = [FP+24];
	R0 = [FP+28];
	R7 = R0;
	BITTGL (R7, 31);
	[FP+24] = R6;
	[FP+28] = R7;
.L572:
	R0 = [FP+24];
	R1 = [FP+28];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:5 );

	LINK 24;
	[FP+20] = R0;
	[FP+24] = R1;
	[FP+28] = R2;
	R0 = 0 (X);
	R1 = 0 (X);
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+20];
	R1 = [FP+24];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L580;
.L583:
	R2 = [FP+-16];
	R3 = [FP+-12];
	R7 = 1 (X);
	R0 = R2 & R7;
	R7 = 0 (X);
	R1 = R3 & R7;
	R2 = R0;
	R2 = R2 | R1;
	cc =R2==0;
	if cc jump .L581;
	R6 = [FP+-8];
	R7 = [FP+-4];
	R2 = [FP+28];
	R3 = [FP+32];
	R0 = R6 + R2; cc = ac0;
	R5 = CC;
	R1 = R7 + R3;
	R1 = R1 + R5;
	[FP+-8] = R0;
	[FP+-4] = R1;
.L581:
	R0 = [FP+28];
	R1 = [FP+32];
	CC = R0 < R0;
	R0 = ROT R0 BY 1;
	R1 = ROT R1 BY 1;
	[FP+28] = R0;
	[FP+32] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	CC = R0 < R0;
	R1 = ROT R1 BY -1;
	R0 = ROT R0 BY -1;
	[FP+-16] = R0;
	[FP+-12] = R1;
.L580:
	R0 = [FP+-16];
	R1 = [FP+-12];
	R0 = R0 | R1;
	cc =R0==0;
	if !cc jump .L583;
	R0 = [FP+-8];
	R1 = [FP+-4];
	[FP+-24] = R0;
	[FP+-20] = R1;
	R0 = [FP+-24];
	R1 = [FP+-20];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	___muldi3, .-___muldi3
	.align 4
.global _udivmodsi4;
.type _udivmodsi4, STT_FUNC;
_udivmodsi4:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = 1 (X);
	[FP+-4] = R0;
	R0 = 0 (X);
	[FP+-8] = R0;
	jump.s .L586;
.L588:
	R0 = [FP+12];
	R0 <<= 1;
	[FP+12] = R0;
	R0 = [FP+-4];
	R0 <<= 1;
	[FP+-4] = R0;
.L586:
	R1 = [FP+12];
	R0 = [FP+8];
	cc =R1<R0 (iu);
	if !cc jump .L589;
	R0 = [FP+-4];
	cc =R0==0;
	if cc jump .L589;
	R0 = [FP+12];
	cc =R0<0;
	if !cc jump .L588;
	jump.s .L589;
.L591:
	R1 = [FP+8];
	R0 = [FP+12];
	cc =R1<R0 (iu);
	if cc jump .L590;
	R1 = [FP+8];
	R0 = [FP+12];
	R0 = R1 - R0;
	[FP+8] = R0;
	R1 = [FP+-8];
	R0 = [FP+-4];
	R0 = R1 | R0;
	[FP+-8] = R0;
.L590:
	R0 = [FP+-4];
	R0 >>= 1;
	[FP+-4] = R0;
	R0 = [FP+12];
	R0 >>= 1;
	[FP+12] = R0;
.L589:
	R0 = [FP+-4];
	cc =R0==0;
	if !cc jump .L591;
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L592;
	R0 = [FP+8];
	jump.s .L593;
.L592:
	R0 = [FP+-8];
.L593:
	UNLINK;
	rts;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	LINK 16;
	B [FP+8] = R0;
	R0 = B [FP+8] (X);
	cc =R0<0;
	if !cc jump .L595;
	R0 = B [FP+8] (X);
	R0 = ~R0;
	B [FP+8] = R0;
.L595:
	R0 = B [FP+8] (X);
	cc =R0==0;
	if !cc jump .L596;
	R0 = 7 (X);
	jump.s .L597;
.L596:
	R0 = B [FP+8] (X);
	R0 <<= 8;
	call ___clzsi2;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 += -1;
.L597:
	UNLINK;
	rts;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+12];
	cc =R0<0;
	if !cc jump .L599;
	R0 = [FP+8];
	R2 = ~R0;
	R0 = [FP+12];
	R3 = ~R0;
	[FP+8] = R2;
	[FP+12] = R3;
.L599:
	R0 = [FP+8];
	R1 = [FP+12];
	R0 = R0 | R1;
	cc =R0==0;
	if !cc jump .L601;
	R0 = 63 (X);
	jump.s .L602;
.L601:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-12] = R0;
	[FP+-8] = R1;
	R0 = [FP+-12];
	R1 = [FP+-8];
	call ___clzdi2;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 += -1;
.L602:
	UNLINK;
	rts;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L604;
.L606:
	R1 = [FP+8];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L605;
	R1 = [FP+-4];
	R0 = [FP+12];
	R0 = R1 + R0;
	[FP+-4] = R0;
.L605:
	R0 = [FP+8];
	R0 >>= 1;
	[FP+8] = R0;
	R0 = [FP+12];
	R0 <<= 1;
	[FP+12] = R0;
.L604:
	R0 = [FP+8];
	cc =R0==0;
	if !cc jump .L606;
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+16];
	R0 >>= 3;
	[FP+-12] = R0;
	R1 = [FP+16];
	R0 = -8 (X);
	R0 = R1 & R0;
	[FP+-8] = R0;
	R0 = [FP+8];
	[FP+-16] = R0;
	R0 = [FP+12];
	[FP+-20] = R0;
	R1 = [FP+-16];
	R0 = [FP+-20];
	cc =R1<R0 (iu);
	if cc jump .L609;
	R1 = [FP+-20];
	R0 = [FP+16];
	R0 = R1 + R0;
	R1 = [FP+-16];
	cc =R1<=R0 (iu);
	if cc jump .L616;
.L609:
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L611;
.L612:
	R0 = [FP+-4];
	R0 <<= 3;
	R1 = [FP+12];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [FP+-4];
	R0 <<= 3;
	R1 = [FP+8];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [P1];
	R1 = [P1+4];
	[P2] = R0;
	[P2+4] = R1;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L611:
	R1 = [FP+-4];
	R0 = [FP+-12];
	cc =R1<R0 (iu);
	if cc jump .L612;
	jump.s .L613;
.L614:
	R1 = [FP+-20];
	R0 = [FP+-8];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [FP+-16];
	R0 = [FP+-8];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [FP+-8];
	R0 += 1;
	[FP+-8] = R0;
.L613:
	R1 = [FP+16];
	R0 = [FP+-8];
	cc =R1<=R0 (iu);
	if !cc jump .L614;
	jump.s .L615;
.L617:
	R1 = [FP+-20];
	R0 = [FP+16];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [FP+-16];
	R0 = [FP+16];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L616:
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L617;
	nop;
.L615:
	nop;
	UNLINK;
	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	LINK 16;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+16];
	R0 >>= 1;
	[FP+-8] = R0;
	R0 = [FP+8];
	[FP+-12] = R0;
	R0 = [FP+12];
	[FP+-16] = R0;
	R1 = [FP+-12];
	R0 = [FP+-16];
	cc =R1<R0 (iu);
	if cc jump .L619;
	R1 = [FP+-16];
	R0 = [FP+16];
	R0 = R1 + R0;
	R1 = [FP+-12];
	cc =R1<=R0 (iu);
	if cc jump .L625;
.L619:
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L621;
.L622:
	R0 = [FP+-4];
	R0 <<= 1;
	R1 = [FP+12];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [FP+-4];
	R0 <<= 1;
	R1 = [FP+8];
	R1 = R1 + R0;
	P2 = R1;
	R0 = W [P1] (X);
	W [P2] = R0;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L621:
	R1 = [FP+-4];
	R0 = [FP+-8];
	cc =R1<R0 (iu);
	if cc jump .L622;
	R1 = [FP+16];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L624;
	R0 = [FP+16];
	R0 += -1;
	R1 = [FP+-16];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [FP+16];
	R0 += -1;
	R1 = [FP+-12];
	R1 = R1 + R0;
	P2 = R1;
	R0 = B [P1] (X);
	B [P2] = R0;
	jump.s .L624;
.L626:
	R1 = [FP+-16];
	R0 = [FP+16];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [FP+-12];
	R0 = [FP+16];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L625:
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L626;
	nop;
.L624:
	nop;
	UNLINK;
	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+16];
	R0 >>= 2;
	[FP+-12] = R0;
	R1 = [FP+16];
	R0 = -4 (X);
	R0 = R1 & R0;
	[FP+-8] = R0;
	R0 = [FP+8];
	[FP+-16] = R0;
	R0 = [FP+12];
	[FP+-20] = R0;
	R1 = [FP+-16];
	R0 = [FP+-20];
	cc =R1<R0 (iu);
	if cc jump .L628;
	R1 = [FP+-20];
	R0 = [FP+16];
	R0 = R1 + R0;
	R1 = [FP+-16];
	cc =R1<=R0 (iu);
	if cc jump .L635;
.L628:
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L630;
.L631:
	R0 = [FP+-4];
	R0 <<= 2;
	R1 = [FP+12];
	R1 = R1 + R0;
	P1 = R1;
	R0 = [FP+-4];
	R0 <<= 2;
	R1 = [FP+8];
	R1 = R1 + R0;
	P2 = R1;
	R0 = [P1];
	[P2] = R0;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L630:
	R1 = [FP+-4];
	R0 = [FP+-12];
	cc =R1<R0 (iu);
	if cc jump .L631;
	jump.s .L632;
.L633:
	R1 = [FP+-20];
	R0 = [FP+-8];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [FP+-16];
	R0 = [FP+-8];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = [FP+-8];
	R0 += 1;
	[FP+-8] = R0;
.L632:
	R1 = [FP+16];
	R0 = [FP+-8];
	cc =R1<=R0 (iu);
	if !cc jump .L633;
	jump.s .L634;
.L636:
	R1 = [FP+-20];
	R0 = [FP+16];
	R0 = R1 + R0;
	P1 = R0;
	R1 = [FP+-16];
	R0 = [FP+16];
	R0 = R1 + R0;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
.L635:
	R0 = [FP+16];
	R1 = R0;
	R1 += -1;
	[FP+16] = R1;
	cc =R0==0;
	if !cc jump .L636;
	nop;
.L634:
	nop;
	UNLINK;
	rts;
	.size	___cmovw, .-___cmovw
	.align 4
.global ___modi;
.type ___modi, STT_FUNC;
___modi:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	call ___modsi3;
	UNLINK;
	rts;
	.size	___modi, .-___modi
	.align 4
.global ___uitod;
.type ___uitod, STT_FUNC;
___uitod:
	LINK 28;
	[FP+8] = R0;
	R0 = [FP+8];
	call ___floatunsidf;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	rts;
	.size	___uitod, .-___uitod
	.align 4
.global ___uitof;
.type ___uitof, STT_FUNC;
___uitof:
	LINK 12;
	[FP+8] = R0;
	R0 = [FP+8];
	call ___floatunsisf;
	UNLINK;
	rts;
	.size	___uitof, .-___uitof
	.align 4
.global ___ulltod;
.type ___ulltod, STT_FUNC;
___ulltod:
	LINK 28;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	call ___floatundidf;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	rts;
	.size	___ulltod, .-___ulltod
	.align 4
.global ___ulltof;
.type ___ulltof, STT_FUNC;
___ulltof:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	call ___floatundisf;
	UNLINK;
	rts;
	.size	___ulltof, .-___ulltof
	.align 4
.global ___umodi;
.type ___umodi, STT_FUNC;
___umodi:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	call ___umodsi3;
	UNLINK;
	rts;
	.size	___umodi, .-___umodi
	.align 4
.global ___clzhi2;
.type ___clzhi2, STT_FUNC;
___clzhi2:
	LINK 4;
	W [FP+8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L650;
.L653:
	R1 = W [FP+8] (Z);
	R2 = 15 (X);
	R0 = [FP+-4];
	R0 = R2 - R0;
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L655;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L650:
	R0 = [FP+-4];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L653;
	jump.s .L652;
.L655:
	nop;
.L652:
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	LINK 4;
	W [FP+8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L657;
.L660:
	R1 = W [FP+8] (Z);
	R0 = [FP+-4];
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L662;
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L657:
	R0 = [FP+-4];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L660;
	jump.s .L659;
.L662:
	nop;
.L659:
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	___ctzhi2, .-___ctzhi2
	.align 4
.global ___fixunssfsi;
.type ___fixunssfsi, STT_FUNC;
___fixunssfsi:
	LINK 12;
	[FP+8] = R0;
	R1 = 71 (X);
	R1 <<= 24;
	R0 = [FP+8];
	call ___gesf2;
	cc =R0<0;
	if cc jump .L668;
	R1 = 71 (X);
	R1 <<= 24;
	R0 = [FP+8];
	call ___subsf3;
	call ___fixsfsi;
	P1 = R0;
	P2.H = 0;
	P2.L = 32768;
	P2 = P1 + P2;
	jump.s .L666;
.L668:
	R0 = [FP+8];
	call ___fixsfsi;
	P2 = R0;
.L666:
	R0 = P2;
	UNLINK;
	rts;
	.size	___fixunssfsi, .-___fixunssfsi
	.align 4
.global ___parityhi2;
.type ___parityhi2, STT_FUNC;
___parityhi2:
	LINK 8;
	W [FP+8] = R0;
	R0 = 0 (X);
	[FP+-8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L670;
.L672:
	R1 = W [FP+8] (Z);
	R0 = [FP+-4];
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L671;
	R0 = [FP+-8];
	R0 += 1;
	[FP+-8] = R0;
.L671:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L670:
	R0 = [FP+-4];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L672;
	R1 = [FP+-8];
	R0 = 1 (X);
	R0 = R1 & R0;
	UNLINK;
	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	LINK 8;
	W [FP+8] = R0;
	R0 = 0 (X);
	[FP+-8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L675;
.L677:
	R1 = W [FP+8] (Z);
	R0 = [FP+-4];
	R1 >>>= R0;
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L676;
	R0 = [FP+-8];
	R0 += 1;
	[FP+-8] = R0;
.L676:
	R0 = [FP+-4];
	R0 += 1;
	[FP+-4] = R0;
.L675:
	R0 = [FP+-4];
	R1 = 15 (X);
	cc =R0<=R1;
	if cc jump .L677;
	R0 = [FP+-8];
	UNLINK;
	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = 0 (X);
	[FP+-4] = R0;
	jump.s .L680;
.L682:
	R1 = [FP+8];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L681;
	R1 = [FP+-4];
	R0 = [FP+12];
	R0 = R1 + R0;
	[FP+-4] = R0;
.L681:
	R0 = [FP+8];
	R0 >>= 1;
	[FP+8] = R0;
	R0 = [FP+12];
	R0 <<= 1;
	[FP+12] = R0;
.L680:
	R0 = [FP+8];
	cc =R0==0;
	if !cc jump .L682;
	R0 = [FP+-4];
	UNLINK;
	rts;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	LINK 4;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = 0 (X);
	[FP+-4] = R0;
	R0 = [FP+8];
	cc =R0==0;
	if !cc jump .L687;
	R0 = 0 (X);
	jump.s .L686;
.L689:
	R1 = [FP+12];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L688;
	R1 = [FP+-4];
	R0 = [FP+8];
	R0 = R1 + R0;
	[FP+-4] = R0;
.L688:
	R0 = [FP+8];
	R0 <<= 1;
	[FP+8] = R0;
	R0 = [FP+12];
	R0 >>= 1;
	[FP+12] = R0;
.L687:
	R0 = [FP+12];
	cc =R0==0;
	if !cc jump .L689;
	R0 = [FP+-4];
.L686:
	UNLINK;
	rts;
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 4
.global ___udivmodsi4;
.type ___udivmodsi4, STT_FUNC;
___udivmodsi4:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = 1 (X);
	[FP+-4] = R0;
	R0 = 0 (X);
	[FP+-8] = R0;
	jump.s .L691;
.L693:
	R0 = [FP+12];
	R0 <<= 1;
	[FP+12] = R0;
	R0 = [FP+-4];
	R0 <<= 1;
	[FP+-4] = R0;
.L691:
	R1 = [FP+12];
	R0 = [FP+8];
	cc =R1<R0 (iu);
	if !cc jump .L694;
	R0 = [FP+-4];
	cc =R0==0;
	if cc jump .L694;
	R0 = [FP+12];
	cc =R0<0;
	if !cc jump .L693;
	jump.s .L694;
.L696:
	R1 = [FP+8];
	R0 = [FP+12];
	cc =R1<R0 (iu);
	if cc jump .L695;
	R1 = [FP+8];
	R0 = [FP+12];
	R0 = R1 - R0;
	[FP+8] = R0;
	R1 = [FP+-8];
	R0 = [FP+-4];
	R0 = R1 | R0;
	[FP+-8] = R0;
.L695:
	R0 = [FP+-4];
	R0 >>= 1;
	[FP+-4] = R0;
	R0 = [FP+12];
	R0 >>= 1;
	[FP+12] = R0;
.L694:
	R0 = [FP+-4];
	cc =R0==0;
	if !cc jump .L696;
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L697;
	R0 = [FP+8];
	jump.s .L698;
.L697:
	R0 = [FP+-8];
.L698:
	UNLINK;
	rts;
	.size	___udivmodsi4, .-___udivmodsi4
	.align 4
.global ___mspabi_cmpf;
.type ___mspabi_cmpf, STT_FUNC;
___mspabi_cmpf:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R1 = [FP+12];
	R0 = [FP+8];
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L707;
	R0 = -1 (X);
	jump.s .L702;
.L707:
	R1 = [FP+12];
	R0 = [FP+8];
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L708;
	R0 = 1 (X);
	jump.s .L702;
.L708:
	R0 = 0 (X);
.L702:
	UNLINK;
	rts;
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 4
.global ___mspabi_cmpd;
.type ___mspabi_cmpd, STT_FUNC;
___mspabi_cmpd:
	LINK 16;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L717;
	R0 = -1 (X);
	jump.s .L712;
.L717:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L718;
	R0 = 1 (X);
	jump.s .L712;
.L718:
	R0 = 0 (X);
.L712:
	UNLINK;
	rts;
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 4
.global ___mspabi_mpysll;
.type ___mspabi_mpysll, STT_FUNC;
___mspabi_mpysll:
	LINK 40;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = R0;
	R2 = R0;
	R2 >>>= 31;
	[FP+-8] = R1;
	[FP+-4] = R2;
	R0 = [FP+12];
	R1 = R0;
	R1 >>>= 31;
	R2 = R1;
	[SP+12] = R2;
	R2 = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldi3;
	[FP+-24] = R0;
	[FP+-20] = R1;
	R0 = [FP+-24];
	R1 = [FP+-20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	rts;
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 4
.global ___mspabi_mpyull;
.type ___mspabi_mpyull, STT_FUNC;
___mspabi_mpyull:
	LINK 40;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	[FP+-8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	R0 = [FP+12];
	R2 = R0;
	R3 = 0 (X);
	R0 = R3;
	[SP+12] = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldi3;
	[FP+-24] = R0;
	[FP+-20] = R1;
	R0 = [FP+-24];
	R1 = [FP+-20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	rts;
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 4
.global ___mulhi3;
.type ___mulhi3, STT_FUNC;
___mulhi3:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = 0 (X);
	[FP+-8] = R0;
	R0 = 0 (X);
	[FP+-12] = R0;
	R0 = [FP+12];
	cc =R0<0;
	if !cc jump .L724;
	R0 = [FP+12];
	R0 = -R0;
	[FP+12] = R0;
	R0 = 1 (X);
	[FP+-8] = R0;
.L724:
	R0 = 0 (X);
	B [FP+-1] = R0;
	jump.s .L725;
.L728:
	R1 = [FP+12];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L726;
	R1 = [FP+-12];
	R0 = [FP+8];
	R0 = R1 + R0;
	[FP+-12] = R0;
.L726:
	R0 = [FP+8];
	R0 <<= 1;
	[FP+8] = R0;
	R0 = [FP+12];
	R0 >>>= 1;
	[FP+12] = R0;
	R0 = B [FP+-1] (X);
	R0 += 1;
	B [FP+-1] = R0;
.L725:
	R0 = [FP+12];
	cc =R0==0;
	if cc jump .L727;
	R0 = B [FP+-1] (X);
	R0 = R0.B (Z);
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L728;
.L727:
	R0 = [FP+-8];
	cc =R0==0;
	if cc jump .L729;
	R0 = [FP+-12];
	R0 = -R0;
	jump.s .L731;
.L729:
	R0 = [FP+-12];
.L731:
	UNLINK;
	rts;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = 0 (X);
	[FP+-4] = R0;
	R0 = [FP+8];
	cc =R0<0;
	if !cc jump .L733;
	R0 = [FP+8];
	R0 = -R0;
	[FP+8] = R0;
	R0 = [FP+-4];
	cc =R0==0;
	R0 = CC;
	R0 = R0.B (Z);
	[FP+-4] = R0;
.L733:
	R0 = [FP+12];
	cc =R0<0;
	if !cc jump .L734;
	R0 = [FP+12];
	R0 = -R0;
	[FP+12] = R0;
	R0 = [FP+-4];
	cc =R0==0;
	R0 = CC;
	R0 = R0.B (Z);
	[FP+-4] = R0;
.L734:
	R0 = [FP+8];
	R1 = [FP+12];
	R2 = 0 (X);
	call ___udivmodsi4;
	[FP+-8] = R0;
	R0 = [FP+-4];
	cc =R0==0;
	if cc jump .L735;
	R0 = [FP+-8];
	R0 = -R0;
	[FP+-8] = R0;
.L735:
	R0 = [FP+-8];
	UNLINK;
	rts;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = 0 (X);
	[FP+-4] = R0;
	R0 = [FP+8];
	cc =R0<0;
	if !cc jump .L738;
	R0 = [FP+8];
	R0 = -R0;
	[FP+8] = R0;
	R0 = 1 (X);
	[FP+-4] = R0;
.L738:
	R0 = [FP+12];
	cc =R0<0;
	if !cc jump .L739;
	R0 = [FP+12];
	R0 = -R0;
	[FP+12] = R0;
.L739:
	R0 = [FP+8];
	R1 = [FP+12];
	R2 = 1 (X);
	call ___udivmodsi4;
	[FP+-8] = R0;
	R0 = [FP+-4];
	cc =R0==0;
	if cc jump .L740;
	R0 = [FP+-8];
	R0 = -R0;
	[FP+-8] = R0;
.L740:
	R0 = [FP+-8];
	UNLINK;
	rts;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	LINK 4;
	W [FP+8] = R0;
	W [FP+12] = R1;
	[FP+16] = R2;
	R0 = 1 (X);
	W [FP+-2] = R0;
	R0 = 0 (X);
	W [FP+-4] = R0;
	jump.s .L743;
.L745:
	R0 = W [FP+12] (X);
	R0 <<= 1;
	W [FP+12] = R0;
	R0 = W [FP+-2] (X);
	R0 <<= 1;
	W [FP+-2] = R0;
.L743:
	R1 = W [FP+12] (Z);
	R0 = W [FP+8] (Z);
	cc =R1<R0 (iu);
	if !cc jump .L746;
	R0 = W [FP+-2] (Z);
	cc =R0==0;
	if cc jump .L746;
	R0 = W [FP+12] (X);
	R0 = R0.L (X);
	cc =R0<0;
	if !cc jump .L745;
	jump.s .L746;
.L748:
	R1 = W [FP+8] (Z);
	R0 = W [FP+12] (Z);
	cc =R1<R0 (iu);
	if cc jump .L747;
	R1 = W [FP+8] (X);
	R0 = W [FP+12] (X);
	R0 = R1 - R0;
	W [FP+8] = R0;
	R1 = W [FP+-4] (X);
	R0 = W [FP+-2] (X);
	R0 = R1 | R0;
	W [FP+-4] = R0;
.L747:
	R0 = W [FP+-2] (Z);
	R0 >>= 1;
	W [FP+-2] = R0;
	R0 = W [FP+12] (Z);
	R0 >>= 1;
	W [FP+12] = R0;
.L746:
	R0 = W [FP+-2] (Z);
	cc =R0==0;
	if !cc jump .L748;
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L749;
	R0 = W [FP+8] (X);
	jump.s .L750;
.L749:
	R0 = W [FP+-4] (X);
.L750:
	UNLINK;
	rts;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	LINK 8;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = 1 (X);
	[FP+-4] = R0;
	R0 = 0 (X);
	[FP+-8] = R0;
	jump.s .L752;
.L754:
	R0 = [FP+12];
	R0 <<= 1;
	[FP+12] = R0;
	R0 = [FP+-4];
	R0 <<= 1;
	[FP+-4] = R0;
.L752:
	R1 = [FP+12];
	R0 = [FP+8];
	cc =R1<R0 (iu);
	if !cc jump .L755;
	R0 = [FP+-4];
	cc =R0==0;
	if cc jump .L755;
	R0 = [FP+12];
	cc =R0<0;
	if !cc jump .L754;
	jump.s .L755;
.L757:
	R1 = [FP+8];
	R0 = [FP+12];
	cc =R1<R0 (iu);
	if cc jump .L756;
	R1 = [FP+8];
	R0 = [FP+12];
	R0 = R1 - R0;
	[FP+8] = R0;
	R1 = [FP+-8];
	R0 = [FP+-4];
	R0 = R1 | R0;
	[FP+-8] = R0;
.L756:
	R0 = [FP+-4];
	R0 >>= 1;
	[FP+-4] = R0;
	R0 = [FP+12];
	R0 >>= 1;
	[FP+12] = R0;
.L755:
	R0 = [FP+-4];
	cc =R0==0;
	if !cc jump .L757;
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L758;
	R0 = [FP+8];
	jump.s .L759;
.L758:
	R0 = [FP+-8];
.L759:
	UNLINK;
	rts;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	LINK 28;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = 32 (X);
	[FP+-4] = R0;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-12] = R0;
	[FP+-8] = R1;
	R1 = [FP+16];
	R0 = [FP+-4];
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L761;
	R0 = 0 (X);
	[FP+-20] = R0;
	R1 = [FP+-12];
	R2 = [FP+16];
	R0 = [FP+-4];
	R0 = R2 - R0;
	R1 <<= R0;
	R0 = R1;
	[FP+-16] = R0;
	jump.s .L762;
.L761:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L763;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L765;
.L763:
	R0 = [FP+-12];
	R1 = [FP+16];
	R0 <<= R1;
	[FP+-20] = R0;
	R0 = [FP+-8];
	R1 = R0;
	R0 = [FP+16];
	R1 <<= R0;
	R0 = [FP+-12];
	R3 = [FP+-4];
	R2 = [FP+16];
	R2 = R3 - R2;
	R0 >>= R2;
	R0 = R1 | R0;
	[FP+-16] = R0;
.L762:
	R0 = [FP+-20];
	R1 = [FP+-16];
.L765:
	[FP+-28] = R0;
	[FP+-24] = R1;
	R0 = [FP+-28];
	R1 = [FP+-24];
	UNLINK;
	rts;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	LINK 28;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = 32 (X);
	[FP+-4] = R0;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-12] = R0;
	[FP+-8] = R1;
	R1 = [FP+16];
	R0 = [FP+-4];
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L767;
	R0 = [FP+-8];
	R1 = [FP+-4];
	R1 += -1;
	R0 >>>= R1;
	[FP+-16] = R0;
	R1 = [FP+-8];
	R2 = [FP+16];
	R0 = [FP+-4];
	R0 = R2 - R0;
	R1 >>>= R0;
	R0 = R1;
	[FP+-20] = R0;
	jump.s .L768;
.L767:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L769;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L771;
.L769:
	R0 = [FP+-8];
	R1 = [FP+16];
	R0 >>>= R1;
	[FP+-16] = R0;
	R0 = [FP+-8];
	R2 = R0;
	R1 = [FP+-4];
	R0 = [FP+16];
	R0 = R1 - R0;
	R1 = R2;
	R1 <<= R0;
	R0 = [FP+-12];
	R2 = [FP+16];
	R0 >>= R2;
	R0 = R1 | R0;
	[FP+-20] = R0;
.L768:
	R0 = [FP+-20];
	R1 = [FP+-16];
.L771:
	[FP+-28] = R0;
	[FP+-24] = R1;
	R0 = [FP+-28];
	R1 = [FP+-24];
	UNLINK;
	rts;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	LINK 92;
	[FP+24] = R0;
	[FP+28] = R1;
	R0 = [FP+28];
	R0 >>= 24;
	[FP+-8] = R0;
	R0 = 0 (X);
	[FP+-4] = R0;
	R0 = [FP+28];
	R0 >>= 8;
	[FP+-16] = R0;
	R1 = 0 (X);
	[FP+-12] = R1;
	R2 = 65280 (Z);
	[FP+-76] = R2;
	R3 = [FP+-16];
	R7 = [FP+-76];
	R0 = R3 & R7;
	R2 = 0 (X);
	[FP+-80] = R2;
	R3 = [FP+-12];
	R7 = [FP+-80];
	R1 = R3 & R7;
	R2 = [FP+-8];
	R2 = R2 | R0;
	[FP+-24] = R2;
	R3 = [FP+-4];
	R3 = R3 | R1;
	[FP+-20] = R3;
	R0 = [FP+28];
	R0 <<= 8;
	R1 = [FP+24];
	R1 >>= 24;
	[FP+-32] = R1;
	R7 = [FP+-32];
	R0 = R0 | R7;
	[FP+-32] = R0;
	R0 = [FP+28];
	R0 >>= 24;
	[FP+-28] = R0;
	R0 = 255 (X);
	R0 <<= 16;
	[FP+-84] = R0;
	R2 = [FP+-32];
	R3 = [FP+-84];
	R0 = R2 & R3;
	R7 = 0 (X);
	[FP+-88] = R7;
	R2 = [FP+-28];
	R3 = [FP+-88];
	R1 = R2 & R3;
	R7 = [FP+-24];
	R7 = R7 | R0;
	[FP+-40] = R7;
	R2 = [FP+-20];
	R2 = R2 | R1;
	[FP+-36] = R2;
	R0 = [FP+28];
	R0 <<= 24;
	R1 = [FP+24];
	R4 = R1 >> 8;
	R4 = R0 | R4;
	R0 = [FP+28];
	R5 = R0 >> 8;
	R0 = R4 >>> 24;
	R0 <<= 24;
	R3 = 0 (X);
	[FP+-92] = R3;
	R7 = [FP+-92];
	R1 = R5 & R7;
	R2 = [FP+-40];
	R2 = R2 | R0;
	[FP+-48] = R2;
	R3 = [FP+-36];
	R3 = R3 | R1;
	[FP+-44] = R3;
	R0 = [FP+24];
	R0 >>= 24;
	R1 = [FP+28];
	R7 = R1 << 8;
	R7 = R0 | R7;
	R0 = [FP+24];
	R6 = R0 << 8;
	R5 = 0 (X);
	R0 = R6 & R5;
	R1 = R7.B (Z);
	R7 = [FP+-48];
	R4 = R7 | R0;
	R2 = [FP+-44];
	R5 = R2 | R1;
	R0 = [FP+24];
	R0 >>= 8;
	R1 = [FP+28];
	R3 = R1 << 24;
	R3 = R0 | R3;
	R0 = [FP+24];
	R2 = R0 << 24;
	R7 = 0 (X);
	R0 = R2 & R7;
	R7 = 65280 (Z);
	R1 = R3 & R7;
	R6 = R4 | R0;
	R7 = R5 | R1;
	R0 = [FP+24];
	R0 <<= 8;
	[FP+-52] = R0;
	R3 = 0 (X);
	[FP+-56] = R3;
	R0 = 0 (X);
	R1 = [FP+-56];
	R2 = R1 & R0;
	R0 = 255 (X);
	R0 <<= 16;
	R1 = [FP+-52];
	R3 = R1 & R0;
	R0 = R6 | R2;
	R1 = R7 | R3;
	R2 = [FP+24];
	R2 <<= 24;
	[FP+-60] = R2;
	R2 = 0 (X);
	[FP+-64] = R2;
	R7 = [FP+-64];
	R2 = R0 | R7;
	R7 = [FP+-60];
	R3 = R1 | R7;
	[FP+-72] = R2;
	[FP+-68] = R3;
	R0 = [FP+-72];
	R1 = [FP+-68];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___bswapdi2, .-___bswapdi2
	.align 4
.global ___bswapsi2;
.type ___bswapsi2, STT_FUNC;
___bswapsi2:
	LINK 0;
	[FP+8] = R0;
	R0 = [FP+8];
	R1 = R0 >> 24;
	R0 = [FP+8];
	R2 = R0 >> 8;
	R0 = 65280 (Z);
	R0 = R2 & R0;
	R1 = R1 | R0;
	R0 = [FP+8];
	R2 = R0 << 8;
	R0 = 255 (X);
	R0 <<= 16;
	R0 = R2 & R0;
	R1 = R1 | R0;
	R0 = [FP+8];
	R0 <<= 24;
	R0 = R1 | R0;
	UNLINK;
	rts;
	.size	___bswapsi2, .-___bswapsi2
	.align 4
.global ___clzsi2;
.type ___clzsi2, STT_FUNC;
___clzsi2:
	LINK 12;
	[FP+8] = R0;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+-4];
	R1 = 65535 (Z);
	cc =R0<=R1 (iu);
	if !cc jump .L777;
	R0 = 16 (X);
	jump.s .L778;
.L777:
	R0 = 0 (X);
.L778:
	[FP+-8] = R0;
	R1 = 16 (X);
	R0 = [FP+-8];
	R1 = R1 - R0;
	R0 = [FP+-4];
	R0 >>= R1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	[FP+-12] = R0;
	R1 = [FP+-4];
	R0 = 65280 (Z);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L779;
	R0 = 8 (X);
	jump.s .L780;
.L779:
	R0 = 0 (X);
.L780:
	[FP+-8] = R0;
	R1 = 8 (X);
	R0 = [FP+-8];
	R1 = R1 - R0;
	R0 = [FP+-4];
	R0 >>= R1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R1 = [FP+-4];
	R0 = 240 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L781;
	R0 = 4 (X);
	jump.s .L782;
.L781:
	R0 = 0 (X);
.L782:
	[FP+-8] = R0;
	R1 = 4 (X);
	R0 = [FP+-8];
	R1 = R1 - R0;
	R0 = [FP+-4];
	R0 >>= R1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R1 = [FP+-4];
	R0 = 12 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L783;
	R0 = 2 (X);
	jump.s .L784;
.L783:
	R0 = 0 (X);
.L784:
	[FP+-8] = R0;
	R1 = 2 (X);
	R0 = [FP+-8];
	R1 = R1 - R0;
	R0 = [FP+-4];
	R0 >>= R1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R1 = [FP+-4];
	R0 = 2 (X);
	R0 = R1 & R0;
	cc =R0==0;
	R0 = CC;
	R0 = R0.B (Z);
	R2 = R0;
	R1 = 2 (X);
	R0 = [FP+-4];
	R0 = R1 - R0;
	R1 = R2;
	R1 *= R0;
	R0 = [FP+-12];
	R0 = R1 + R0;
	P2 = R0;
	R0 = P2;
	UNLINK;
	rts;
	.size	___clzsi2, .-___clzsi2
	.align 4
.global ___cmpdi2;
.type ___cmpdi2, STT_FUNC;
___cmpdi2:
	LINK 16;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R1 = [FP+-4];
	R0 = [FP+-12];
	cc =R1<R0;
	if !cc jump .L787;
	R0 = 0 (X);
	jump.s .L792;
.L787:
	R1 = [FP+-4];
	R0 = [FP+-12];
	cc =R1<=R0;
	if cc jump .L789;
	R0 = 2 (X);
	jump.s .L792;
.L789:
	R1 = [FP+-8];
	R0 = [FP+-16];
	cc =R1<R0 (iu);
	if !cc jump .L790;
	R0 = 0 (X);
	jump.s .L792;
.L790:
	R1 = [FP+-8];
	R0 = [FP+-16];
	cc =R1<=R0 (iu);
	if cc jump .L791;
	R0 = 2 (X);
	jump.s .L792;
.L791:
	R0 = 1 (X);
.L792:
	UNLINK;
	rts;
	.size	___cmpdi2, .-___cmpdi2
	.align 4
.global ___aeabi_lcmp;
.type ___aeabi_lcmp, STT_FUNC;
___aeabi_lcmp:
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+16];
	R1 = [FP+20];
	R2 = [FP+8];
	R3 = [FP+12];
	[FP+-8] = R2;
	[FP+-4] = R3;
	R2 = R1;
	[SP+12] = R2;
	R2 = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___cmpdi2;
	R0 += -1;
	UNLINK;
	rts;
	.size	___aeabi_lcmp, .-___aeabi_lcmp
	.align 4
.global ___ctzsi2;
.type ___ctzsi2, STT_FUNC;
___ctzsi2:
	LINK 12;
	[FP+8] = R0;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 = R0.L (Z);
	cc =R0==0;
	if !cc jump .L796;
	R0 = 16 (X);
	jump.s .L797;
.L796:
	R0 = 0 (X);
.L797:
	[FP+-8] = R0;
	R0 = [FP+-4];
	R1 = [FP+-8];
	R0 >>= R1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	[FP+-12] = R0;
	R0 = [FP+-4];
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L798;
	R0 = 8 (X);
	jump.s .L799;
.L798:
	R0 = 0 (X);
.L799:
	[FP+-8] = R0;
	R0 = [FP+-4];
	R1 = [FP+-8];
	R0 >>= R1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R1 = [FP+-4];
	R0 = 15 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L800;
	R0 = 4 (X);
	jump.s .L801;
.L800:
	R0 = 0 (X);
.L801:
	[FP+-8] = R0;
	R0 = [FP+-4];
	R1 = [FP+-8];
	R0 >>= R1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R1 = [FP+-4];
	R0 = 3 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump .L802;
	R0 = 2 (X);
	jump.s .L803;
.L802:
	R0 = 0 (X);
.L803:
	[FP+-8] = R0;
	R0 = [FP+-4];
	R1 = [FP+-8];
	R0 >>= R1;
	[FP+-4] = R0;
	R1 = [FP+-4];
	R0 = 3 (X);
	R0 = R1 & R0;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R0 = [FP+-4];
	R1 = ~R0;
	R0 = 1 (X);
	R1 = R1 & R0;
	R0 = [FP+-4];
	R0 >>= 1;
	R2 = 2 (X);
	R0 = R2 - R0;
	R1 = -R1;
	R1 = R1 & R0;
	R0 = [FP+-12];
	R0 = R1 + R0;
	P2 = R0;
	R0 = P2;
	UNLINK;
	rts;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	LINK 28;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = 32 (X);
	[FP+-4] = R0;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-12] = R0;
	[FP+-8] = R1;
	R1 = [FP+16];
	R0 = [FP+-4];
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L806;
	R0 = 0 (X);
	[FP+-16] = R0;
	R0 = [FP+-8];
	R2 = [FP+16];
	R1 = [FP+-4];
	R1 = R2 - R1;
	R0 >>= R1;
	[FP+-20] = R0;
	jump.s .L807;
.L806:
	R0 = [FP+16];
	cc =R0==0;
	if !cc jump .L808;
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L810;
.L808:
	R0 = [FP+-8];
	R1 = [FP+16];
	R0 >>= R1;
	[FP+-16] = R0;
	R1 = [FP+-8];
	R2 = [FP+-4];
	R0 = [FP+16];
	R0 = R2 - R0;
	R1 <<= R0;
	R0 = [FP+-12];
	R2 = [FP+16];
	R0 >>= R2;
	R0 = R1 | R0;
	[FP+-20] = R0;
.L807:
	R0 = [FP+-20];
	R1 = [FP+-16];
.L810:
	[FP+-28] = R0;
	[FP+-24] = R1;
	R0 = [FP+-28];
	R1 = [FP+-24];
	UNLINK;
	rts;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	LINK 28;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = 16 (X);
	[FP+-4] = R0;
	R0 = -1 (X);
	R1 = [FP+-4];
	R0 >>= R1;
	[FP+-8] = R0;
	R1 = [FP+8];
	R0 = [FP+-8];
	R1 = R1 & R0;
	R2 = [FP+12];
	R0 = [FP+-8];
	R0 = R2 & R0;
	R0 *= R1;
	[FP+-20] = R0;
	R0 = [FP+-20];
	R1 = [FP+-4];
	R0 >>= R1;
	[FP+-12] = R0;
	R1 = [FP+-20];
	R0 = [FP+-8];
	R0 = R1 & R0;
	[FP+-20] = R0;
	R1 = [FP+8];
	R0 = [FP+-4];
	R1 >>= R0;
	R2 = [FP+12];
	R0 = [FP+-8];
	R0 = R2 & R0;
	R0 *= R1;
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R1 = [FP+-20];
	R2 = [FP+-12];
	R0 = [FP+-8];
	R0 = R2 & R0;
	R2 = [FP+-4];
	R0 <<= R2;
	R0 = R1 + R0;
	[FP+-20] = R0;
	R1 = [FP+-12];
	R0 = [FP+-4];
	R1 >>= R0;
	R0 = R1;
	[FP+-16] = R0;
	R0 = [FP+-20];
	R1 = [FP+-4];
	R0 >>= R1;
	[FP+-12] = R0;
	R1 = [FP+-20];
	R0 = [FP+-8];
	R0 = R1 & R0;
	[FP+-20] = R0;
	R1 = [FP+12];
	R0 = [FP+-4];
	R1 >>= R0;
	R2 = [FP+8];
	R0 = [FP+-8];
	R0 = R2 & R0;
	R0 *= R1;
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R1 = [FP+-20];
	R2 = [FP+-12];
	R0 = [FP+-8];
	R0 = R2 & R0;
	R2 = [FP+-4];
	R0 <<= R2;
	R0 = R1 + R0;
	[FP+-20] = R0;
	R0 = [FP+-16];
	P2 = R0;
	R0 = [FP+-12];
	R1 = [FP+-4];
	R0 >>= R1;
	P1 = R0;
	P2 = P2 + P1;
	R0 = P2;
	[FP+-16] = R0;
	R0 = [FP+-16];
	P2 = R0;
	R1 = [FP+8];
	R0 = [FP+-4];
	R1 >>= R0;
	R0 = [FP+12];
	R2 = [FP+-4];
	R0 >>= R2;
	R0 *= R1;
	P1 = R0;
	P2 = P2 + P1;
	R0 = P2;
	[FP+-16] = R0;
	R0 = [FP+-20];
	R1 = [FP+-16];
	[FP+-28] = R0;
	[FP+-24] = R1;
	R0 = [FP+-28];
	R1 = [FP+-24];
	UNLINK;
	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	LINK 52;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R0 = [FP+-8];
	R1 = [FP+-16];
	call ___muldsi3;
	[FP+-32] = R0;
	[FP+-28] = R1;
	R0 = [FP+-32];
	R1 = [FP+-28];
	[FP+-24] = R0;
	[FP+-20] = R1;
	R0 = [FP+-20];
	P1 = R0;
	R0 = [FP+-4];
	R1 = R0;
	R0 = [FP+-16];
	R1 *= R0;
	R0 = [FP+-8];
	R2 = [FP+-12];
	R0 *= R2;
	R0 = R1 + R0;
	P2 = R0;
	P2 = P1 + P2;
	R0 = P2;
	[FP+-20] = R0;
	R0 = [FP+-24];
	R1 = [FP+-20];
	[FP+-40] = R0;
	[FP+-36] = R1;
	R0 = [FP+-40];
	R1 = [FP+-36];
	UNLINK;
	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	[--sp] = ( r7:5 );

	LINK 8;
	[FP+20] = R0;
	[FP+24] = R1;
	R6 = [FP+20];
	R7 = [FP+24];
	R2 = 0 (X);
	R3 = 0 (X);
	R0 = R2 - R6; cc = ac0;
	CC = ! CC;
	R5 = CC;
	R1 = R3 - R7;
	R1 = R1 - R5;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	___negdi2, .-___negdi2
	.align 4
.global ___paritydi2;
.type ___paritydi2, STT_FUNC;
___paritydi2:
	LINK 12;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-12] = R0;
	[FP+-8] = R1;
	R0 = [FP+-8];
	R1 = R0;
	R0 = [FP+-12];
	R0 = R1 ^ R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 >>= 16;
	R1 = [FP+-4];
	R0 = R1 ^ R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 >>= 8;
	R1 = [FP+-4];
	R0 = R1 ^ R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 >>= 4;
	R1 = [FP+-4];
	R0 = R1 ^ R0;
	[FP+-4] = R0;
	R1 = [FP+-4];
	R0 = 15 (X);
	R2 = R1 & R0;
	R0 = 27030 (X);
	R1 = R0;
	R1 >>>= R2;
	R0 = 1 (X);
	R0 = R1 & R0;
	UNLINK;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	LINK 4;
	[FP+8] = R0;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 >>= 16;
	R1 = [FP+-4];
	R0 = R1 ^ R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 >>= 8;
	R1 = [FP+-4];
	R0 = R1 ^ R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 >>= 4;
	R1 = [FP+-4];
	R0 = R1 ^ R0;
	[FP+-4] = R0;
	R1 = [FP+-4];
	R0 = 15 (X);
	R2 = R1 & R0;
	R0 = 27030 (X);
	R1 = R0;
	R1 >>>= R2;
	R0 = 1 (X);
	R0 = R1 & R0;
	UNLINK;
	rts;
	.size	___paritysi2, .-___paritysi2
	.align 4
.global ___popcountdi2;
.type ___popcountdi2, STT_FUNC;
___popcountdi2:
	[--sp] = ( r7:4 );

	LINK 52;
	[FP+24] = R0;
	[FP+28] = R1;
	R0 = [FP+24];
	R1 = [FP+28];
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
	CC = R0 < R0;
	R1 = ROT R1 BY -1;
	R0 = ROT R0 BY -1;
	R2.H = 21845;
	R2.L = 21845;
	[FP+-24] = R2;
	R2 = [FP+-24];
	R4 = R0 & R2;
	R2.H = 21845;
	R2.L = 21845;
	[FP+-28] = R2;
	R2 = [FP+-28];
	R5 = R1 & R2;
	R0 = [FP+-8];
	R1 = [FP+-4];
	[FP+-36] = R0;
	[FP+-32] = R1;
	R2 = [FP+-36];
	R0 = R2 - R4; cc = ac0;
	CC = ! CC;
	R2 = CC;
	[FP+-40] = R2;
	R2 = [FP+-32];
	R1 = R2 - R5;
	R2 = [FP+-40];
	R1 = R1 - R2;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-4];
	R0 <<= 30;
	R1 = [FP+-8];
	R6 = R1 >> 2;
	R6 = R0 | R6;
	R0 = [FP+-4];
	R7 = R0 >> 2;
	R0.H = 13107;
	R0.L = 13107;
	R4 = R6 & R0;
	R0.H = 13107;
	R0.L = 13107;
	R5 = R7 & R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	R2.H = 13107;
	R2.L = 13107;
	[FP+-44] = R2;
	R2 = [FP+-44];
	R6 = R0 & R2;
	R2.H = 13107;
	R2.L = 13107;
	[FP+-48] = R2;
	R2 = [FP+-48];
	R7 = R1 & R2;
	R0 = R4 + R6; cc = ac0;
	R2 = CC;
	[FP+-52] = R2;
	R1 = R5 + R7;
	R2 = [FP+-52];
	R1 = R1 + R2;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+-4];
	R0 <<= 28;
	R1 = [FP+-8];
	R2 = R1 >> 4;
	R2 = R0 | R2;
	R0 = [FP+-4];
	R3 = R0 >> 4;
	R6 = [FP+-8];
	R7 = [FP+-4];
	R0 = R2 + R6; cc = ac0;
	R5 = CC;
	R1 = R3 + R7;
	R1 = R1 + R5;
	R7.H = 3855;
	R7.L = 3855;
	R2 = R0 & R7;
	R7.H = 3855;
	R7.L = 3855;
	R3 = R1 & R7;
	[FP+-8] = R2;
	[FP+-4] = R3;
	R0 = [FP+-8];
	R1 = [FP+-4];
	R1 >>= 0;
	[FP+-20] = R1;
	R1 = 0 (X);
	[FP+-16] = R1;
	P2 = [FP+-20];
	R2 = P2;
	R0 = R0 + R2;
	[FP+-12] = R0;
	R0 = [FP+-12];
	R0 >>= 16;
	R1 = [FP+-12];
	R0 = R1 + R0;
	[FP+-12] = R0;
	R0 = [FP+-12];
	R1 = R0 >> 8;
	R0 = [FP+-12];
	R0 = R1 + R0;
	P2 = R0;
	R1 = P2;
	R0 = 127 (X);
	R0 = R1 & R0;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___popcountdi2, .-___popcountdi2
	.align 4
.global ___popcountsi2;
.type ___popcountsi2, STT_FUNC;
___popcountsi2:
	LINK 4;
	[FP+8] = R0;
	R0 = [FP+8];
	[FP+-4] = R0;
	R0 = [FP+-4];
	R1 = R0 >> 1;
	R0.H = 21845;
	R0.L = 21845;
	R0 = R1 & R0;
	R1 = [FP+-4];
	R0 = R1 - R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R1 = R0 >> 2;
	R0.H = 13107;
	R0.L = 13107;
	R1 = R1 & R0;
	R2 = [FP+-4];
	R0.H = 13107;
	R0.L = 13107;
	R0 = R2 & R0;
	R0 = R1 + R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R1 = R0 >> 4;
	R0 = [FP+-4];
	R1 = R1 + R0;
	R0.H = 3855;
	R0.L = 3855;
	R0 = R1 & R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R0 >>= 16;
	R1 = [FP+-4];
	R0 = R1 + R0;
	[FP+-4] = R0;
	R0 = [FP+-4];
	R1 = R0 >> 8;
	R0 = [FP+-4];
	R0 = R1 + R0;
	P2 = R0;
	R1 = P2;
	R0 = 63 (X);
	R0 = R1 & R0;
	UNLINK;
	rts;
	.size	___popcountsi2, .-___popcountsi2
	.align 4
.global ___powidf2;
.type ___powidf2, STT_FUNC;
___powidf2:
	LINK 60;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+16];
	R0 >>= 31;
	R0 = R0.B (Z);
	[FP+-12] = R0;
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	[FP+-8] = R0;
	[FP+-4] = R1;
.L829:
	R1 = [FP+16];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L826;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldf3;
	[FP+-28] = R0;
	[FP+-24] = R1;
	R0 = [FP+-28];
	R1 = [FP+-24];
	[FP+-8] = R0;
	[FP+-4] = R1;
.L826:
	R0 = [FP+16];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[FP+16] = R0;
	R0 = [FP+16];
	cc =R0==0;
	if cc jump .L834;
	R0 = [FP+12];
	[SP+12] = R0;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___muldf3;
	[FP+-36] = R0;
	[FP+-32] = R1;
	R0 = [FP+-36];
	R1 = [FP+-32];
	[FP+8] = R0;
	[FP+12] = R1;
	jump.s .L829;
.L834:
	nop;
	R0 = [FP+-12];
	cc =R0==0;
	if cc jump .L830;
	R0 = [FP+-4];
	[SP+12] = R0;
	R2 = [FP+-8];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[FP+-44] = R0;
	[FP+-40] = R1;
	R0 = [FP+-44];
	R1 = [FP+-40];
	jump.s .L832;
.L830:
	R0 = [FP+-8];
	R1 = [FP+-4];
.L832:
	[FP+-20] = R0;
	[FP+-16] = R1;
	R0 = [FP+-20];
	R1 = [FP+-16];
	UNLINK;
	rts;
	.size	___powidf2, .-___powidf2
	.align 4
.global ___powisf2;
.type ___powisf2, STT_FUNC;
___powisf2:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	R0 = [FP+12];
	R0 >>= 31;
	R0 = R0.B (Z);
	[FP+-8] = R0;
	R0 = 127 (X);
	R0 <<= 23;
	[FP+-4] = R0;
.L839:
	R1 = [FP+12];
	R0 = 1 (X);
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L836;
	R1 = [FP+8];
	R0 = [FP+-4];
	call ___mulsf3;
	[FP+-4] = R0;
.L836:
	R0 = [FP+12];
	R1 = R0 >> 31;
	R0 = R1 + R0;
	R0 >>>= 1;
	[FP+12] = R0;
	R0 = [FP+12];
	cc =R0==0;
	if cc jump .L844;
	R1 = [FP+8];
	R0 = [FP+8];
	call ___mulsf3;
	[FP+8] = R0;
	jump.s .L839;
.L844:
	nop;
	R0 = [FP+-8];
	cc =R0==0;
	if cc jump .L840;
	R1 = [FP+-4];
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	jump.s .L842;
.L840:
	R0 = [FP+-4];
.L842:
	UNLINK;
	rts;
	.size	___powisf2, .-___powisf2
	.align 4
.global ___ucmpdi2;
.type ___ucmpdi2, STT_FUNC;
___ucmpdi2:
	LINK 16;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	R1 = [FP+-4];
	R0 = [FP+-12];
	cc =R1<R0 (iu);
	if !cc jump .L846;
	R0 = 0 (X);
	jump.s .L851;
.L846:
	R1 = [FP+-4];
	R0 = [FP+-12];
	cc =R1<=R0 (iu);
	if cc jump .L848;
	R0 = 2 (X);
	jump.s .L851;
.L848:
	R1 = [FP+-8];
	R0 = [FP+-16];
	cc =R1<R0 (iu);
	if !cc jump .L849;
	R0 = 0 (X);
	jump.s .L851;
.L849:
	R1 = [FP+-8];
	R0 = [FP+-16];
	cc =R1<=R0 (iu);
	if cc jump .L850;
	R0 = 2 (X);
	jump.s .L851;
.L850:
	R0 = 1 (X);
.L851:
	UNLINK;
	rts;
	.size	___ucmpdi2, .-___ucmpdi2
	.align 4
.global ___aeabi_ulcmp;
.type ___aeabi_ulcmp, STT_FUNC;
___aeabi_ulcmp:
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	R0 = [FP+16];
	R1 = [FP+20];
	R2 = R1;
	[SP+12] = R2;
	R2 = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___ucmpdi2;
	R0 += -1;
	UNLINK;
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
