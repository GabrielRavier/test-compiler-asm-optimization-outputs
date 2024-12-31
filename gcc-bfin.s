.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	LINK 0;
	R3 = R0;
	P2 = R1;
	R0 = R2;
	R1 = P2;
	cc =R3<=R1 (iu);
	if cc jump .L2;
	P1 = R0;
	P2 = P2 + P1;
	R1 = R3 + R0;
	P2 += -1;
	P1 = R1;
	P1 += -1;
	R0 = ~R0;
	R0 = R0 + R1;
	jump.s .L3;
.L4:
	R1 = B [P2] (X);
	P2 += -1;
	B [P1] = R1;
	P1 += -1;
.L3:
	R1 = P1;
	cc =R1==R0;
	if !cc jump .L4;
	jump.s .L5;
.L2:
	R1 = P2;
	cc =R3==R1;
	if cc jump .L5;
	P1 = R3;
	R0 = R1 + R0;
	jump.s .L6;
.L7:
	P2 += 1;
	R1 = B [P2+-1] (X);
	B [P1] = R1;
	P1 += 1;
.L6:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L7;
.L5:
	R0 = R3;
	UNLINK;
	rts;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	LINK 0;
	P2 = R0;
	P1 = R1;
	R1 = [FP+20];
	R2 = R2.B (Z);
	jump.s .L9;
.L11:
	R1 += -1;
.L9:
	R0 = P2;
	cc =R1==0;
	if cc jump .L10;
	nop;
	nop;
	nop;
	R3 = B [P1] (X);
	P1 += 1;
	B [P2] = R3;
	P2 += 1;
	R3 = B [P2+-1] (Z);
	cc =R2==R3;
	if !cc jump .L11;
.L10:
	cc =R1==0;
	if cc jump .L13;
	R0 += 1;
	jump.s .L12;
.L13:
	R0 = 0 (X);
.L12:
	UNLINK;
	rts;
	.size	_memccpy, .-_memccpy
	.align 4
.global _memchr;
.type _memchr, STT_FUNC;
_memchr:
	LINK 0;
	P2 = R0;
	R0 = R2;
	R2 = R1.B (Z);
	jump.s .L15;
.L17:
	R0 += -1;
.L15:
	R1 = P2;
	cc =R0==0;
	if cc jump .L16;
	nop;
	nop;
	nop;
	R3 = B [P2] (X);
	P2 += 1;
	R3 = R3.B (Z);
	cc =R2==R3;
	if !cc jump .L17;
.L16:
	cc =R0==0;
	if cc jump .L19;
	R0 = R1;
	jump.s .L18;
.L19:
	R0 = 0 (X);
.L18:
	UNLINK;
	rts;
	.size	_memchr, .-_memchr
	.align 4
.global _memcmp;
.type _memcmp, STT_FUNC;
_memcmp:
	[--sp] = ( p5:5 );

	LINK 0;
	P1 = R0;
	P2 = R1;
	R0 = R2;
	jump.s .L21;
.L23:
	R0 += -1;
.L21:
	P0 = P2;
	P5 = P1;
	cc =R0==0;
	if cc jump .L22;
	nop;
	nop;
	nop;
	R2 = B [P1] (X);
	P1 += 1;
	R1 = B [P2] (X);
	P2 += 1;
	R2 = R2.B (Z);
	R1 = R1.B (Z);
	cc =R2==R1;
	if cc jump .L23;
.L22:
	cc =R0==0;
	if cc jump .L25;
	nop;
	nop;
	nop;
	R0 = B [P5] (Z);
	R1 = B [P0] (Z);
	R0 = R0 - R1;
	jump.s .L24;
.L25:
	R0 = 0 (X);
.L24:
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	LINK 0;
	P2 = R1;
	R1 = R2;
	P1 = R0;
	R2 = P2;
	R1 = R2 + R1;
	jump.s .L27;
.L28:
	P2 += 1;
	R2 = B [P2+-1] (X);
	B [P1] = R2;
	P1 += 1;
.L27:
	R2 = P2;
	cc =R2==R1;
	if !cc jump .L28;
	UNLINK;
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	LINK 0;
	R3 = R1;
	R1 = R2;
	R3 = R3.B (Z);
	P2 = R1;
	P2 += -1;
	P1 = R0;
	P2 = P1 + P2;
	P1 += -1;
	jump.s .L30;
.L32:
	R2 = B [P2] (X);
	P2 += -1;
	R2 = R2.B (Z);
	cc =R3==R2;
	if !cc jump .L30;
	R0 = R0 + R1;
	jump.s .L31;
.L30:
	R1 += -1;
	cc =P2==P1;
	if !cc jump .L32;
	R0 = 0 (X);
.L31:
	UNLINK;
	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	LINK 0;
	R3 = R1;
	R1 = R2;
	R1 = R0 + R1;
	P2 = R0;
	jump.s .L34;
.L35:
	R2 = R3;
	B [P2] = R2;
	P2 += 1;
.L34:
	R2 = P2;
	cc =R2==R1;
	if !cc jump .L35;
	UNLINK;
	rts;
	.size	_memset, .-_memset
	.align 4
.global _stpcpy;
.type _stpcpy, STT_FUNC;
_stpcpy:
	LINK 0;
	P2 = R0;
	P1 = R1;
.L37:
	R0 = P2;
	R1 = B [P1] (X);
	P1 += 1;
	B [P2] = R1;
	P2 += 1;
	R1 = B [P2+-1] (X);
	cc =R1==0;
	if !cc jump .L37;
	UNLINK;
	rts;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	LINK 0;
	P2 = R0;
	R0 = R1;
	R0 = R0.B (Z);
.L40:
	R2 = P2;
	R1 = B [P2] (X);
	P2 += 1;
	R1 = R1.B (X);
	cc =R1==0;
	if cc jump .L39;
	nop;
	nop;
	nop;
	R1 = B [P2+-1] (Z);
	cc =R0==R1;
	if !cc jump .L40;
.L39:
	R0 = R2;
	UNLINK;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	LINK 0;
	P2 = R0;
.L43:
	R0 = P2;
	R2 = B [P2] (X);
	P2 += 1;
	R2 = R2.B (X);
	cc =R1==R2;
	if cc jump .L42;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L43;
.L42:
	UNLINK;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	[--sp] = ( p5:5 );

	LINK 0;
	P2 = R0;
	P1 = R1;
.L47:
	P0 = P1;
	P5 = P2;
	R1 = B [P2] (X);
	P2 += 1;
	R0 = B [P1] (X);
	P1 += 1;
	R1 = R1.B (X);
	R0 = R0.B (X);
	cc =R1==R0;
	if !cc jump .L46;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L47;
	nop;
	nop;
	nop;
.L46:
	R0 = B [P5] (Z);
	R1 = B [P0] (Z);
	R0 = R0 - R1;
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	_strcmp, .-_strcmp
	.align 4
.global _strlen;
.type _strlen, STT_FUNC;
_strlen:
	LINK 0;
	P2 = R0;
.L49:
	R1 = P2;
	R2 = B [P2] (X);
	P2 += 1;
	R2 = R2.B (X);
	cc =R2==0;
	if !cc jump .L49;
	R0 = R1 - R0;
	UNLINK;
	rts;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	[--sp] = ( p5:5 );

	LINK 0;
	P2 = R0;
	P1 = R1;
	R0 = R2;
	cc =R0==0;
	if cc jump .L54;
	R1 = P2;
	R0 = R1 + R0;
.L53:
	P0 = P1;
	P5 = P2;
	R1 = B [P2] (X);
	P2 += 1;
	R1 = R1.B (Z);
	cc =R1==0;
	if cc jump .L52;
	nop;
	nop;
	nop;
	R1 = B [P1] (Z);
	cc =R1==0;
	if cc jump .L52;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L52;
	nop;
	nop;
	nop;
	R1 = B [P1] (X);
	P1 += 1;
	R2 = B [P2+-1] (Z);
	R1 = R1.B (Z);
	cc =R2==R1;
	if cc jump .L53;
	nop;
	nop;
	nop;
.L52:
	R0 = B [P5] (Z);
	R1 = B [P0] (Z);
	R0 = R0 - R1;
	jump.s .L51;
.L54:
	R0 = 0 (X);
.L51:
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	LINK 0;
	P2 = R1;
	R1 = R2;
	P1 = R0;
	jump.s .L56;
.L57:
	R2 = B [P1+1] (X);
	B [P2] = R2;
	R2 = B [P1] (X);
	B [P2+1] = R2;
	P2 += 2;
	P1 += 2;
.L56:
	R2 = R0 + R1;
	R3 = P1;
	R2 = R2 - R3;
	cc =R2<=1;
	if !cc jump .L57;
	UNLINK;
	rts;
	.size	_swab, .-_swab
	.align 4
.global _isalpha;
.type _isalpha, STT_FUNC;
_isalpha:
	LINK 0;
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	UNLINK;
	rts;
	.size	_isalpha, .-_isalpha
	.align 4
.global _isascii;
.type _isascii, STT_FUNC;
_isascii:
	LINK 0;
	R1 = 127 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	UNLINK;
	rts;
	.size	_isascii, .-_isascii
	.align 4
.global _isblank;
.type _isblank, STT_FUNC;
_isblank:
	LINK 0;
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L62;
	R1 = 9 (X);
	cc =R0==R1;
	if !cc jump .L63;
	R0 = 1 (X);
	jump.s .L61;
.L62:
	R0 = 1 (X);
	jump.s .L61;
.L63:
	R0 = 0 (X);
.L61:
	UNLINK;
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	LINK 0;
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L66;
	R1 = 127 (X);
	cc =R0==R1;
	if !cc jump .L67;
	R0 = 1 (X);
	jump.s .L65;
.L66:
	R0 = 1 (X);
	jump.s .L65;
.L67:
	R0 = 0 (X);
.L65:
	UNLINK;
	rts;
	.size	_iscntrl, .-_iscntrl
	.align 4
.global _isdigit;
.type _isdigit, STT_FUNC;
_isdigit:
	LINK 0;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	UNLINK;
	rts;
	.size	_isdigit, .-_isdigit
	.align 4
.global _isgraph;
.type _isgraph, STT_FUNC;
_isgraph:
	LINK 0;
	R0 += -33;
	R1 = 93 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	UNLINK;
	rts;
	.size	_isgraph, .-_isgraph
	.align 4
.global _islower;
.type _islower, STT_FUNC;
_islower:
	LINK 0;
	R1 = -97 (X);
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	UNLINK;
	rts;
	.size	_islower, .-_islower
	.align 4
.global _isprint;
.type _isprint, STT_FUNC;
_isprint:
	LINK 0;
	R0 += -32;
	R1 = 94 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	UNLINK;
	rts;
	.size	_isprint, .-_isprint
	.align 4
.global _isspace;
.type _isspace, STT_FUNC;
_isspace:
	LINK 0;
	R1 = 32 (X);
	cc =R0==R1;
	if cc jump .L74;
	R0 += -9;
	cc =R0<=4 (iu);
	if !cc jump .L75;
	R0 = 1 (X);
	jump.s .L73;
.L74:
	R0 = 1 (X);
	jump.s .L73;
.L75:
	R0 = 0 (X);
.L73:
	UNLINK;
	rts;
	.size	_isspace, .-_isspace
	.align 4
.global _isupper;
.type _isupper, STT_FUNC;
_isupper:
	LINK 0;
	R1 = -65 (X);
	R0 = R0 + R1;
	R1 = 25 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	UNLINK;
	rts;
	.size	_isupper, .-_isupper
	.align 4
.global _iswcntrl;
.type _iswcntrl, STT_FUNC;
_iswcntrl:
	LINK 0;
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L79;
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L80;
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L81;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	if !cc jump .L82;
	R0 = 1 (X);
	jump.s .L78;
.L79:
	R0 = 1 (X);
	jump.s .L78;
.L80:
	R0 = 1 (X);
	jump.s .L78;
.L81:
	R0 = 1 (X);
	jump.s .L78;
.L82:
	R0 = 0 (X);
.L78:
	UNLINK;
	rts;
	.size	_iswcntrl, .-_iswcntrl
	.align 4
.global _iswdigit;
.type _iswdigit, STT_FUNC;
_iswdigit:
	LINK 0;
	R0 += -48;
	R1 = 9 (X);
	cc =R0<=R1 (iu);
	R0 = CC;
	UNLINK;
	rts;
	.size	_iswdigit, .-_iswdigit
	.align 4
.global _iswprint;
.type _iswprint, STT_FUNC;
_iswprint:
	LINK 0;
	R1 = 254 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L85;
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L86;
.L85:
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L87;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L88;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L89;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L90;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	if cc jump .L91;
	R0 = 1 (X);
	jump.s .L86;
.L87:
	R0 = 1 (X);
	jump.s .L86;
.L88:
	R0 = 1 (X);
	jump.s .L86;
.L89:
	R0 = 1 (X);
	jump.s .L86;
.L90:
	R0 = 0 (X);
	jump.s .L86;
.L91:
	R0 = 0 (X);
.L86:
	UNLINK;
	rts;
	.size	_iswprint, .-_iswprint
	.align 4
.global _iswxdigit;
.type _iswxdigit, STT_FUNC;
_iswxdigit:
	LINK 0;
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L94;
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	if !cc jump .L95;
	R0 = 1 (X);
	jump.s .L93;
.L94:
	R0 = 1 (X);
	jump.s .L93;
.L95:
	R0 = 0 (X);
.L93:
	UNLINK;
	rts;
	.size	_iswxdigit, .-_iswxdigit
	.align 4
.global _toascii;
.type _toascii, STT_FUNC;
_toascii:
	LINK 0;
	R1 = 127 (X);
	R0 = R0 & R1;
	UNLINK;
	rts;
	.size	_toascii, .-_toascii
	.align 4
.global _fdim;
.type _fdim, STT_FUNC;
_fdim:
	[--sp] = ( r7:6 );

	LINK 24;
	[FP+16] = R0;
	[FP+20] = R1;
	[FP+24] = R2;
	R6 = [FP+24];
	R7 = [FP+28];
	R0 = R1;
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L100;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L101;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L104;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___subdf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L98;
.L100:
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L98;
.L101:
	R0 = R6;
	R1 = R7;
	jump.s .L98;
.L104:
	R0 = 0 (X);
	R1 = 0 (X);
.L98:
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	_fdim, .-_fdim
	.align 4
.global _fdimf;
.type _fdimf, STT_FUNC;
_fdimf:
	[--sp] = ( r7:6 );

	LINK 12;
	R6 = R0;
	R7 = R1;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L108;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L106;
	R1 = R7;
	R0 = R6;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L112;
	R1 = R7;
	R0 = R6;
	call ___subsf3;
	R7 = R0;
	jump.s .L106;
.L108:
	R7 = R6;
	jump.s .L106;
.L112:
	R7 = 0 (X);
.L106:
	R0 = R7;
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
	[--sp] = ( r7:4 );

	LINK 24;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R6 = R0;
	R7 = R1;
	[FP+32] = R2;
	R4 = [FP+32];
	R5 = [FP+36];
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L117;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L114;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	R0 = R5;
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L115;
	R0 = R7;
	R0 >>>= 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L114;
	R6 = R4;
	R7 = R5;
	jump.s .L114;
.L115:
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L114;
	R6 = R4;
	R7 = R5;
	jump.s .L114;
.L117:
	R6 = R4;
	R7 = R5;
.L114:
	R0 = R6;
	R1 = R7;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--sp] = ( r7:6 );

	LINK 12;
	R7 = R0;
	R6 = R1;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L127;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L124;
	R1 = R7 >>> 31;
	R1 <<= 31;
	R0 = R6 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L125;
	R0 = R7 >>> 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L124;
	R7 = R6;
	jump.s .L124;
.L125:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L124;
	R7 = R6;
	jump.s .L124;
.L127:
	R7 = R6;
.L124:
	R0 = R7;
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
	[--sp] = ( r7:4 );

	LINK 24;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R6 = R0;
	R7 = R1;
	[FP+32] = R2;
	R4 = [FP+32];
	R5 = [FP+36];
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L137;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L134;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	R0 = R5;
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L135;
	R0 = R7;
	R0 >>>= 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L134;
	R6 = R4;
	R7 = R5;
	jump.s .L134;
.L135:
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L134;
	R6 = R4;
	R7 = R5;
	jump.s .L134;
.L137:
	R6 = R4;
	R7 = R5;
.L134:
	R0 = R6;
	R1 = R7;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	[--sp] = ( r7:4 );

	LINK 24;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R6 = R0;
	R7 = R1;
	[FP+32] = R2;
	R4 = [FP+32];
	R5 = [FP+36];
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L147;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L144;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	R0 = R5;
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L145;
	R0 = R7;
	R0 >>>= 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L149;
	jump.s .L144;
.L145:
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L152;
	jump.s .L144;
.L147:
	R6 = R4;
	R7 = R5;
	jump.s .L144;
.L149:
	R6 = R4;
	R7 = R5;
	jump.s .L144;
.L152:
	R6 = R4;
	R7 = R5;
.L144:
	R0 = R6;
	R1 = R7;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--sp] = ( r7:6 );

	LINK 12;
	R6 = R0;
	R7 = R1;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L154;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L158;
	R1 = R6 >>> 31;
	R1 <<= 31;
	R0 = R7 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L155;
	R0 = R6 >>> 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L154;
	R7 = R6;
	jump.s .L154;
.L155:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L154;
	R7 = R6;
	jump.s .L154;
.L158:
	R7 = R6;
.L154:
	R0 = R7;
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	[--sp] = ( r7:4 );

	LINK 24;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R6 = R0;
	R7 = R1;
	[FP+32] = R2;
	R4 = [FP+32];
	R5 = [FP+36];
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L167;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L164;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	R0 = R5;
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L165;
	R0 = R7;
	R0 >>>= 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L169;
	jump.s .L164;
.L165:
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L172;
	jump.s .L164;
.L167:
	R6 = R4;
	R7 = R5;
	jump.s .L164;
.L169:
	R6 = R4;
	R7 = R5;
	jump.s .L164;
.L172:
	R6 = R4;
	R7 = R5;
.L164:
	R0 = R6;
	R1 = R7;
	UNLINK;
	( r7:4 ) = [sp++];

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
	LINK 0;
	P2.H = _s.0;
	P2.L = _s.0;
	jump.s .L174;
.L175:
	R1 = 63 (X);
	R1 = R0 & R1;
	P1.H = _digits;
	P1.L = _digits;
	P0 = R1;
	P1 = P1 + P0;
	R1 = B [P1] (X);
	B [P2] = R1;
	P2 += 1;
	R0 >>= 6;
.L174:
	cc =R0==0;
	if !cc jump .L175;
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
	R2 = R0;
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = R2;
	R0 += -1;
	R1 = 0 (X);
	P2.H = _seed;
	P2.L = _seed;
	[P2] = R0;
	[P2+4] = R1;
	UNLINK;
	rts;
	.size	_srand, .-_srand
	.align 4
.global _rand;
.type _rand, STT_FUNC;
_rand:
	[--sp] = ( p5:5 );

	LINK 24;
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
	[FP+-8] = R0;
	[FP+-4] = R1;
	R2 = R0;
	R2 += 1; cc = ac0;
	R0 = CC;
	R3 = R1;
	R3 = R3 + R0;
	[P5] = R2;
	[P5+4] = R3;
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = R3 >> 1;
	R1 = 0 (X);
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	_rand, .-_rand
	.align 4
.global _insque;
.type _insque, STT_FUNC;
_insque:
	LINK 0;
	P2 = R0;
	P1 = R1;
	cc =P1==0;
	if !cc jump .L179;
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L178;
.L179:
	R0 = [P1];
	[P2] = R0;
	[P2+4] = P1;
	[P1] = P2;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L178;
	P1 = R0;
	[P1+4] = P2;
.L178:
	UNLINK;
	rts;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	LINK 0;
	P2 = R0;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L182;
	nop;
	nop;
	P1 = R0;
	R0 = [P2+4];
	[P1+4] = R0;
.L182:
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L181;
	nop;
	nop;
	P1 = R0;
	R0 = [P2];
	[P1] = R0;
.L181:
	UNLINK;
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	R4 = R0;
	R7 = R1;
	P4 = R2;
	P5 = [FP+48];
	R5 = [P4];
	P3 = R7;
	R6 = 0 (X);
	jump.s .L185;
.L188:
	R1 = P3;
	R0 = R4;
	P2 = [FP+52];
	call (P2);
	P3 = P3 + P5;
	cc =R0==0;
	if !cc jump .L186;
	R0 = P5;
	R6 *= R0;
	R7 = R7 + R6;
	jump.s .L187;
.L186:
	R6 += 1;
.L185:
	cc =R6==R5;
	if !cc jump .L188;
	R0 = R5;
	R0 += 1;
	[P4] = R0;
	R0 = P5;
	R5 *= R0;
	R7 = R7 + R5;
	R2 = P5;
	R1 = R4;
	R0 = R7;
	call _memcpy;
	R7 = R0;
.L187:
	R0 = R7;
	UNLINK;
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	_lsearch, .-_lsearch
	.align 4
.global _lfind;
.type _lfind, STT_FUNC;
_lfind:
	[--sp] = ( r7:4, p5:4 );

	LINK 12;
	R4 = R0;
	R7 = R1;
	P2 = R2;
	P5 = [FP+44];
	P4 = [P2];
	R5 = R7;
	R6 = 0 (X);
	jump.s .L190;
.L193:
	R1 = R5;
	R0 = R4;
	P2 = [FP+48];
	call (P2);
	R1 = P5;
	R5 = R5 + R1;
	cc =R0==0;
	if !cc jump .L191;
	R6 *= R1;
	R7 = R7 + R6;
	jump.s .L192;
.L191:
	R6 += 1;
.L190:
	R0 = P4;
	cc =R6==R0;
	if !cc jump .L193;
	R7 = 0 (X);
.L192:
	R0 = R7;
	UNLINK;
	( r7:4, p5:4 ) = [sp++];

	rts;
	.size	_lfind, .-_lfind
	.align 4
.global _abs;
.type _abs, STT_FUNC;
_abs:
	nop;
	LINK 0;
	R0 = abs R0;
	UNLINK;
	rts;
	.size	_abs, .-_abs
	.align 4
.global _atoi;
.type _atoi, STT_FUNC;
_atoi:
	[--sp] = ( p5:4 );

	LINK 12;
	P4 = R0;
.L196:
	P5 = P4;
	R0 = B [P4] (X);
	P4 += 1;
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L196;
	nop;
	nop;
	nop;
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L202;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L203;
	R1 = 1 (X);
	jump.s .L197;
.L202:
	R1 = 0 (X);
.L197:
	P5 += 1;
	jump.s .L198;
.L203:
	R1 = 0 (X);
.L198:
	P2 = 0 (X);
	jump.s .L199;
.L200:
	P2 = P2 + (P2 << 2);
	R2 = P2;
	R2 <<= 1;
	P2 = R2;
	R0 = B [P5+-1] (X);
	P2 = R0;
	P2 += -48;
	P1 = R2;
	P1 -= P2;
	P2 = P1;
.L199:
	R0 = B [P5] (X);
	P5 += 1;
	R0 = R0.B (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L200;
	cc =R1==0;
	if !cc jump .L201;
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L201:
	R0 = P2;
	UNLINK;
	( p5:4 ) = [sp++];

	rts;
	.size	_atoi, .-_atoi
	.align 4
.global _atol;
.type _atol, STT_FUNC;
_atol:
	[--sp] = ( p5:4 );

	LINK 12;
	P4 = R0;
.L206:
	P5 = P4;
	R0 = B [P4] (X);
	P4 += 1;
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L206;
	nop;
	nop;
	nop;
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L212;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L213;
	R1 = 1 (X);
	jump.s .L207;
.L212:
	R1 = 0 (X);
.L207:
	P5 += 1;
	jump.s .L208;
.L213:
	R1 = 0 (X);
.L208:
	P2 = 0 (X);
	jump.s .L209;
.L210:
	P2 = P2 + (P2 << 2);
	R2 = P2;
	R2 <<= 1;
	P2 = R2;
	R0 = B [P5+-1] (X);
	P2 = R0;
	P2 += -48;
	P1 = R2;
	P1 -= P2;
	P2 = P1;
.L209:
	R0 = B [P5] (X);
	P5 += 1;
	R0 = R0.B (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L210;
	cc =R1==0;
	if !cc jump .L211;
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L211:
	R0 = P2;
	UNLINK;
	( p5:4 ) = [sp++];

	rts;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:7, p5:4 );

	[--SP] = R4;
	[--SP] = R5;
	LINK 24;
	P4 = R0;
.L216:
	P5 = P4;
	R0 = B [P4] (X);
	P4 += 1;
	R0 = R0.B (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L216;
	nop;
	nop;
	nop;
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L222;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L223;
	R7 = 1 (X);
	jump.s .L217;
.L222:
	R7 = 0 (X);
.L217:
	P5 += 1;
	jump.s .L218;
.L223:
	R7 = 0 (X);
.L218:
	R0 = 0 (X);
	R1 = 0 (X);
	jump.s .L219;
.L220:
	R2 = 0 (X);
	[SP+12] = R2;
	R2 = 10 (X);
	call ___muldi3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R4 = R0;
	R5 = R1;
	R2 = B [P5+-1] (X);
	R2 += -48;
	R3 = R2;
	R3 >>>= 31;
	R0 = R4 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R5 - R3;
	R1 = R1 - R2;
.L219:
	R2 = B [P5] (X);
	P5 += 1;
	R2 = R2.B (X);
	R2 += -48;
	R3 = 9 (X);
	cc =R2<=R3 (iu);
	if cc jump .L220;
	cc =R7==0;
	if !cc jump .L224;
	R4 = 0 (X);
	R5 = 0 (X);
	R2 = R4 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R5 - R1;
	R3 = R3 - R0;
	jump.s .L221;
.L224:
	R2 = R0;
	R3 = R1;
.L221:
	R0 = R2;
	R1 = R3;
	UNLINK;
	R5 = [SP++];
	R4 = [SP++];
	( r7:7, p5:4 ) = [sp++];

	rts;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	[--sp] = ( r7:4, p5:5 );

	LINK 12;
	R4 = R0;
	R5 = R1;
	R7 = R2;
	P5 = [FP+40];
	jump.s .L226;
.L230:
	R6 = R7 >> 1;
	R0 = P5;
	R6 *= R0;
	R6 = R5 + R6;
	R1 = R6;
	R0 = R4;
	P2 = [FP+44];
	call (P2);
	cc =R0<0;
	if !cc jump .L227;
	R7 >>= 1;
	jump.s .L226;
.L227:
	cc =R0<=0;
	if cc jump .L229;
	R0 = P5;
	R5 = R6 + R0;
	R0 = R7 >> 1;
	R7 += -1;
	R7 = R7 - R0;
.L226:
	cc =R7==0;
	if !cc jump .L230;
	R6 = 0 (X);
.L229:
	R0 = R6;
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--sp] = ( r7:4, p5:5 );

	LINK 12;
	R4 = R0;
	R5 = R1;
	R6 = R2;
	P5 = [FP+40];
	jump.s .L233;
.L236:
	R7 = R6 >>> 1;
	R0 = P5;
	R7 *= R0;
	R7 = R5 + R7;
	R2 = [FP+48];
	R1 = R7;
	R0 = R4;
	P2 = [FP+44];
	call (P2);
	cc =R0==0;
	if cc jump .L234;
	cc =R0<=0;
	if cc jump .L235;
	R0 = P5;
	R5 = R7 + R0;
	R6 += -1;
.L235:
	R6 >>>= 1;
.L233:
	cc =R6==0;
	if !cc jump .L236;
	R7 = 0 (X);
.L234:
	R0 = R7;
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_bsearch_r, .-_bsearch_r
	.align 4
.global _div;
.type _div, STT_FUNC;
_div:
	[--sp] = ( r7:4 );

	LINK 20;
	R7 = R0;
	R6 = R1;
	R1 = R6;
	R0 = R7;
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
	R3 = 0 (X);
	R4 = 0 (X);
	R1 = R3;
	R2 = R4;
	[FP+-8] = R1;
	[FP+-4] = R2;
	[FP+-8] = R5;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_div, .-_div
	.align 4
.global _imaxabs;
.type _imaxabs, STT_FUNC;
_imaxabs:
	[--sp] = ( r7:6 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	cc =R1<0;
	if !cc jump .L240;
	R6 = 0 (X);
	R7 = 0 (X);
	R2 = R6 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R1;
	R3 = R3 - R0;
	R0 = R2;
	R1 = R3;
.L240:
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	_imaxabs, .-_imaxabs
	.align 4
.global _imaxdiv;
.type _imaxdiv, STT_FUNC;
_imaxdiv:
	[--sp] = ( r7:4, p5:5 );

	LINK 32;
	P5 = P0;
	[FP+28] = R0;
	[FP+32] = R1;
	[FP+36] = R2;
	R4 = [FP+36];
	R5 = [FP+40];
	[SP+12] = R5;
	R2 = R4;
	call ___divdi3;
	R6 = R0;
	R7 = R1;
	[SP+12] = R5;
	R2 = R4;
	R0 = [FP+28];
	R1 = [FP+32];
	call ___moddi3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	[P5] = R6;
	[P5+4] = R7;
	[P5+8] = R0;
	[P5+12] = R1;
	R0 = P5;
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_imaxdiv, .-_imaxdiv
	.align 4
.global _labs;
.type _labs, STT_FUNC;
_labs:
	nop;
	LINK 0;
	R0 = abs R0;
	UNLINK;
	rts;
	.size	_labs, .-_labs
	.align 4
.global _ldiv;
.type _ldiv, STT_FUNC;
_ldiv:
	[--sp] = ( r7:4 );

	LINK 20;
	R7 = R0;
	R6 = R1;
	R1 = R6;
	R0 = R7;
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
	R3 = 0 (X);
	R4 = 0 (X);
	R1 = R3;
	R2 = R4;
	[FP+-8] = R1;
	[FP+-4] = R2;
	[FP+-8] = R5;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_ldiv, .-_ldiv
	.align 4
.global _llabs;
.type _llabs, STT_FUNC;
_llabs:
	[--sp] = ( r7:6 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	cc =R1<0;
	if !cc jump .L246;
	R6 = 0 (X);
	R7 = 0 (X);
	R2 = R6 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R1;
	R3 = R3 - R0;
	R0 = R2;
	R1 = R3;
.L246:
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	_llabs, .-_llabs
	.align 4
.global _lldiv;
.type _lldiv, STT_FUNC;
_lldiv:
	[--sp] = ( r7:4, p5:5 );

	LINK 32;
	P5 = P0;
	[FP+28] = R0;
	[FP+32] = R1;
	[FP+36] = R2;
	R4 = [FP+36];
	R5 = [FP+40];
	[SP+12] = R5;
	R2 = R4;
	call ___divdi3;
	R6 = R0;
	R7 = R1;
	[SP+12] = R5;
	R2 = R4;
	R0 = [FP+28];
	R1 = [FP+32];
	call ___moddi3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	[P5] = R6;
	[P5+4] = R7;
	[P5+8] = R0;
	[P5+12] = R1;
	R0 = P5;
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_lldiv, .-_lldiv
	.align 4
.global _wcschr;
.type _wcschr, STT_FUNC;
_wcschr:
	LINK 0;
	P2 = R0;
	R0 = R1;
.L251:
	P1 = P2;
	R1 = [P2];
	P2 += 4;
	cc =R1==0;
	if cc jump .L250;
	nop;
	nop;
	nop;
	R1 = [P2+-4];
	cc =R0==R1;
	if !cc jump .L251;
	nop;
	nop;
	nop;
.L250:
	R0 = [P1];
	cc =R0==0;
	if cc jump .L253;
	R0 = P1;
	jump.s .L252;
.L253:
	R0 = 0 (X);
.L252:
	UNLINK;
	rts;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	[--sp] = ( p5:5 );

	LINK 0;
	P1 = R0;
	P2 = R1;
.L256:
	P0 = P2;
	P5 = P1;
	R1 = [P1];
	P1 += 4;
	R0 = [P2];
	P2 += 4;
	cc =R1==R0;
	if !cc jump .L255;
	nop;
	nop;
	nop;
	R0 = [P1+-4];
	cc =R0==0;
	if cc jump .L255;
	nop;
	nop;
	nop;
	R0 = [P2+-4];
	cc =R0==0;
	if !cc jump .L256;
	nop;
	nop;
	nop;
.L255:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L258;
	nop;
	nop;
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L257;
.L258:
	R0 = -1 (X);
.L257:
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	LINK 0;
	P2 = R1;
	P1 = R0;
.L260:
	P2 += 4;
	R1 = [P2+-4];
	[P1] = R1;
	P1 += 4;
	R1 = [P1+-4];
	cc =R1==0;
	if !cc jump .L260;
	UNLINK;
	rts;
	.size	_wcscpy, .-_wcscpy
	.align 4
.global _wcslen;
.type _wcslen, STT_FUNC;
_wcslen:
	LINK 0;
	R1 = R0;
	P2 = R1;
.L262:
	R0 = P2;
	R2 = [P2];
	P2 += 4;
	cc =R2==0;
	if !cc jump .L262;
	R0 = R0 - R1;
	R0 >>>= 2;
	UNLINK;
	rts;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	[--sp] = ( p5:5 );

	LINK 0;
	P2 = R0;
	P1 = R1;
	R0 = R2;
	jump.s .L264;
.L266:
	R0 += -1;
.L264:
	P0 = P1;
	P5 = P2;
	cc =R0==0;
	if cc jump .L265;
	nop;
	nop;
	nop;
	R2 = [P2];
	R1 = [P1];
	cc =R2==R1;
	if !cc jump .L265;
	R1 = R2;
	P2 += 4;
	cc =R1==0;
	if cc jump .L265;
	nop;
	nop;
	nop;
	R1 = [P1];
	P1 += 4;
	cc =R1==0;
	if !cc jump .L266;
.L265:
	cc =R0==0;
	if cc jump .L268;
	nop;
	nop;
	nop;
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L269;
	nop;
	nop;
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L267;
.L268:
	R0 = 0 (X);
	jump.s .L267;
.L269:
	R0 = -1 (X);
.L267:
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	_wcsncmp, .-_wcsncmp
	.align 4
.global _wmemchr;
.type _wmemchr, STT_FUNC;
_wmemchr:
	LINK 0;
	P2 = R0;
	R3 = R1;
	R0 = R2;
	jump.s .L271;
.L273:
	R0 += -1;
.L271:
	R1 = P2;
	cc =R0==0;
	if cc jump .L272;
	nop;
	nop;
	nop;
	R2 = [P2];
	P2 += 4;
	cc =R3==R2;
	if !cc jump .L273;
.L272:
	cc =R0==0;
	if cc jump .L275;
	R0 = R1;
	jump.s .L274;
.L275:
	R0 = 0 (X);
.L274:
	UNLINK;
	rts;
	.size	_wmemchr, .-_wmemchr
	.align 4
.global _wmemcmp;
.type _wmemcmp, STT_FUNC;
_wmemcmp:
	[--sp] = ( p5:5 );

	LINK 0;
	P1 = R0;
	P2 = R1;
	R0 = R2;
	jump.s .L277;
.L279:
	R0 += -1;
.L277:
	P0 = P2;
	P5 = P1;
	cc =R0==0;
	if cc jump .L278;
	nop;
	nop;
	nop;
	R2 = [P1];
	P1 += 4;
	R1 = [P2];
	P2 += 4;
	cc =R2==R1;
	if cc jump .L279;
.L278:
	cc =R0==0;
	if cc jump .L281;
	nop;
	nop;
	nop;
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L282;
	nop;
	nop;
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L280;
.L281:
	R0 = 0 (X);
	jump.s .L280;
.L282:
	R0 = -1 (X);
.L280:
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	LINK 0;
	R3 = R0;
	P2 = R1;
	R0 = R2;
	P1 = R3;
	jump.s .L284;
.L285:
	P2 += 4;
	R1 = [P2+-4];
	[P1] = R1;
	P1 += 4;
.L284:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L285;
	R0 = R3;
	UNLINK;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	LINK 0;
	R3 = R0;
	P1 = R1;
	R0 = R2;
	R1 = P1;
	cc =R3==R1;
	if cc jump .L287;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	if cc jump .L288;
	P2 = R3;
	jump.s .L289;
.L288:
	R0 += -1;
	P0 = R0;
	P2 = P0 << 2;
	P1 = P1 + P2;
	P0 = R3;
	P2 = P0 + P2;
	R0 = R3;
	R0 += -4;
	jump.s .L290;
.L291:
	R1 = [P1];
	P1 += -4;
	[P2] = R1;
	P2 += -4;
.L290:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L291;
	jump.s .L287;
.L292:
	P1 += 4;
	R1 = [P1+-4];
	[P2] = R1;
	P2 += 4;
.L289:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L292;
.L287:
	R0 = R3;
	UNLINK;
	rts;
	.size	_wmemmove, .-_wmemmove
	.align 4
.global _wmemset;
.type _wmemset, STT_FUNC;
_wmemset:
	LINK 0;
	R3 = R0;
	R0 = R2;
	P2 = R3;
	jump.s .L294;
.L295:
	P2 += 4;
	[P2+-4] = R1;
.L294:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L295;
	R0 = R3;
	UNLINK;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	LINK 0;
	P2 = R0;
	R0 = R1;
	R1 = R2;
	R2 = P2;
	cc =R2<R0 (iu);
	if !cc jump .L297;
	P1 = R1;
	P2 = P2 + P1;
	R0 = R0 + R1;
	P2 += -1;
	P1 = R0;
	P1 += -1;
	R1 = ~R1;
	R1 = R1 + R0;
	jump.s .L298;
.L299:
	R0 = B [P2] (X);
	P2 += -1;
	B [P1] = R0;
	P1 += -1;
.L298:
	R0 = P1;
	cc =R0==R1;
	if !cc jump .L299;
	jump.s .L296;
.L297:
	R2 = P2;
	cc =R2==R0;
	if cc jump .L296;
	R1 = R2 + R1;
	jump.s .L301;
.L302:
	P2 += 1;
	R2 = B [P2+-1] (X);
	P1 = R0;
	B [P1] = R2;
	R0 += 1;
.L301:
	R2 = P2;
	cc =R2==R1;
	if !cc jump .L302;
.L296:
	UNLINK;
	rts;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4, p5:5 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R4 = R0;
	R5 = R1;
	R0 = R2;
	R1 = R0;
	R1 += -32;
	R2 = R4;
	R2 <<= R1;
	P2 = R2;
	P1 = 0 (X);
	R3 = R4 >> 1;
	R2 = 31 (X);
	R7 = R2 - R0;
	R3 >>= R7;
	R6 = 0 (X);
	R7 = 0 (X);
	R7 = R5;
	R7 <<= R0;
	R7 = R3 | R7;
	R6 = R4;
	R6 <<= R0;
	cc =R1<0;
	if !cc R7 = P2;
	cc =R1<0;
	if !cc R6 = P1;
	R0 = -R0;
	R1 = 63 (X);
	R1 = R0 & R1;
	P5 = R1;
	P5 += -32;
	R3 = R5;
	R0 = P5;
	R3 >>= R0;
	P0 = R3;
	R3 = R5 << 1;
	R2 = R2 - R1;
	R3 <<= R2;
	P2 = R3;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R4;
	R2 >>= R1;
	R0 = P2;
	R2 = R0 | R2;
	R3 = R5;
	R3 >>= R1;
	cc =P5<0;
	if !cc R2 = P0;
	cc =P5<0;
	if !cc R3 = P1;
	R0 = R6 | R2;
	R1 = R7 | R3;
	R2 = R0;
	R3 = R1;
	R0 = R2;
	R1 = R3;
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_rotl64, .-_rotl64
	.align 4
.global _rotr64;
.type _rotr64, STT_FUNC;
_rotr64:
	[--sp] = ( r7:4, p5:5 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R4 = R0;
	R5 = R1;
	R0 = R2;
	R1 = R0;
	R1 += -32;
	R2 = R5;
	R2 >>= R1;
	P2 = R2;
	P1 = 0 (X);
	R3 = R5 << 1;
	R2 = 31 (X);
	R7 = R2 - R0;
	R3 <<= R7;
	R6 = 0 (X);
	R7 = 0 (X);
	R6 = R4;
	R6 >>= R0;
	R6 = R3 | R6;
	R7 = R5;
	R7 >>= R0;
	cc =R1<0;
	if !cc R6 = P2;
	cc =R1<0;
	if !cc R7 = P1;
	R0 = -R0;
	R1 = 63 (X);
	R1 = R0 & R1;
	P5 = R1;
	P5 += -32;
	R3 = R4;
	R0 = P5;
	R3 <<= R0;
	P0 = R3;
	R3 = R4 >> 1;
	R2 = R2 - R1;
	R3 >>= R2;
	P2 = R3;
	R2 = 0 (X);
	R3 = 0 (X);
	R3 = R5;
	R3 <<= R1;
	R0 = P2;
	R3 = R0 | R3;
	R2 = R4;
	R2 <<= R1;
	cc =P5<0;
	if !cc R3 = P0;
	cc =P5<0;
	if !cc R2 = P1;
	R0 = R6 | R2;
	R1 = R7 | R3;
	R2 = R0;
	R3 = R1;
	R0 = R2;
	R1 = R3;
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
	.size	_rotr64, .-_rotr64
	.align 4
.global _rotl32;
.type _rotl32, STT_FUNC;
_rotl32:
	LINK 0;
	R2 = R0;
	R2 <<= R1;
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
	R2 = R0;
	R2 >>= R1;
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
	R2 = R0;
	R2 <<= R1;
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
	R2 = R0;
	R2 >>= R1;
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
	R0 = R0.L (Z);
	R3 = R0;
	R3 <<= R1;
	R2 = 16 (X);
	R1 = R2 - R1;
	R0 >>= R1;
	R0 = R0 | R3;
	UNLINK;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	LINK 0;
	R0 = R0.L (Z);
	R3 = R0;
	R3 >>= R1;
	R2 = 16 (X);
	R1 = R2 - R1;
	R0 <<= R1;
	R0 = R0 | R3;
	UNLINK;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	LINK 0;
	R0 = R0.B (Z);
	R3 = R0;
	R3 <<= R1;
	R2 = 8 (X);
	R1 = R2 - R1;
	R0 >>= R1;
	R0 = R0 | R3;
	UNLINK;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	LINK 0;
	R0 = R0.B (Z);
	R3 = R0;
	R3 >>= R1;
	R2 = 8 (X);
	R1 = R2 - R1;
	R0 <<= R1;
	R0 = R0 | R3;
	UNLINK;
	rts;
	.size	_rotr8, .-_rotr8
	.align 4
.global _bswap_16;
.type _bswap_16, STT_FUNC;
_bswap_16:
	LINK 0;
	R1 = R0;
	R0 = R1 >> 8;
	R0 = R0.B (Z);
	R1 = R1.B (Z);
	R1 <<= 8;
	R0 = R0 | R1;
	UNLINK;
	rts;
	.size	_bswap_16, .-_bswap_16
	.align 4
.global _bswap_32;
.type _bswap_32, STT_FUNC;
_bswap_32:
	LINK 0;
	R1 = R0;
	R2 = R1 >> 24;
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
	UNLINK;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:4 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R2 = 0 (X);
	R3 = R1 >>> 24;
	R3 <<= 24;
	R6 = 0 (X);
	R7 = 0 (X);
	R6 = R3 >> 24;
	R7 = 0 (X);
	R4 = 0 (X);
	I0.H = 255;
	I0.L = 0;
	R2 = I0;
	R5 = R1 & R2;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R5 >> 8;
	R3 = 0 (X);
	R5 = R2 | R6;
	I2 = R5;
	I3 = 0 (X);
	R6 = 0 (X);
	P2.H = 0;
	P2.L = 65280;
	R2 = P2;
	R7 = R1 & R2;
	R5 = R7 << 8;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R6 >> 24;
	R2 = R5 | R2;
	R3 = R7 >> 24;
	R7 = I2;
	R7 = R7 | R2;
	P0 = R7;
	R5 = I3;
	R5 = R5 | R3;
	P1 = R5;
	R7 = R1.B (Z);
	R1 = R7 << 24;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R6 >> 8;
	R2 = R1 | R2;
	R3 = R7 >> 8;
	R7 = P0;
	R4 = R7 | R2;
	R7 = P1;
	R5 = R7 | R3;
	R2 = R0 >>> 24;
	R2 <<= 24;
	R3 = 0 (X);
	R6 = 0 (X);
	R7 = 0 (X);
	R7 = R2 >> 24;
	R6 = R2 << 8;
	R2 = R4 | R6;
	P0 = R2;
	R2 = R5 | R7;
	P1 = R2;
	R5 = I0;
	R6 = R0 & R5;
	R7 = 0 (X);
	R2 = 0 (X);
	R3 = 0 (X);
	R3 = R6 >> 8;
	R2 = R6 << 24;
	R7 = P0;
	R4 = R7 | R2;
	R7 = P1;
	R5 = R7 | R3;
	R7 = P2;
	R2 = R0 & R7;
	R3 = 0 (X);
	R6 = 0 (X);
	R7 = 0 (X);
	R7 = R2 << 8;
	R2 = R4;
	R3 = R5 | R7;
	R6 = R0.B (Z);
	R7 = 0 (X);
	R0 = 0 (X);
	R1 = 0 (X);
	R1 = R6 << 24;
	[FP+-8] = R2;
	R5 = R3 | R1;
	[FP+-4] = R5;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	_bswap_64, .-_bswap_64
	.align 4
.global _ffs;
.type _ffs, STT_FUNC;
_ffs:
	LINK 0;
	R1 = R0;
	R0 = 0 (X);
	jump.s .L317;
.L320:
	R2 = R1;
	R2 >>= R0;
	cc = !BITTST (R2,0);
	if cc jump .L318;
	R0 += 1;
	jump.s .L319;
.L318:
	R0 += 1;
.L317:
	R2 = 32 (X);
	cc =R0==R2;
	if !cc jump .L320;
	R0 = 0 (X);
.L319:
	UNLINK;
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	LINK 0;
	R1 = R0;
	cc =R1==0;
	if cc jump .L325;
	R0 = 1 (X);
	jump.s .L323;
.L324:
	R1 >>>= 1;
	R0 += 1;
.L323:
	cc = !BITTST (R1,0);
	if cc jump .L324;
	jump.s .L322;
.L325:
	R0 = 0 (X);
.L322:
	UNLINK;
	rts;
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 4
.global _gl_isinff;
.type _gl_isinff, STT_FUNC;
_gl_isinff:
	[--sp] = ( r7:7 );

	LINK 12;
	R7 = R0;
	R1 = -1 (X);
	R1.H = 65407;
	R0 = R7;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L329;
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L332;
	R0 = 1 (X);
	jump.s .L327;
.L329:
	R0 = 1 (X);
	jump.s .L327;
.L332:
	R0 = 0 (X);
.L327:
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	_gl_isinff, .-_gl_isinff
	.align 4
.global _gl_isinfd;
.type _gl_isinfd, STT_FUNC;
_gl_isinfd:
	LINK 24;
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
	if cc jump .L336;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L339;
	R0 = 1 (X);
	jump.s .L334;
.L336:
	R0 = 1 (X);
	jump.s .L334;
.L339:
	R0 = 0 (X);
.L334:
	UNLINK;
	rts;
	.size	_gl_isinfd, .-_gl_isinfd
	.align 4
.global _gl_isinfl;
.type _gl_isinfl, STT_FUNC;
_gl_isinfl:
	LINK 24;
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
	if cc jump .L343;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L346;
	R0 = 1 (X);
	jump.s .L341;
.L343:
	R0 = 1 (X);
	jump.s .L341;
.L346:
	R0 = 0 (X);
.L341:
	UNLINK;
	rts;
	.size	_gl_isinfl, .-_gl_isinfl
	.align 4
.global __Qp_itoq;
.type __Qp_itoq, STT_FUNC;
__Qp_itoq:
	[--sp] = ( p5:5 );

	LINK 20;
	P5 = R0;
	R0 = R1;
	call ___floatsidf;
	[P5] = R0;
	[P5+4] = R1;
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	__Qp_itoq, .-__Qp_itoq
	.align 4
.global _ldexpf;
.type _ldexpf, STT_FUNC;
_ldexpf:
	[--sp] = ( r7:5 );

	LINK 12;
	R7 = R0;
	R6 = R1;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L349;
	R1 = R7;
	R0 = R7;
	call ___addsf3;
	R1 = R0;
	R0 = R7;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L349;
	cc =R6<0;
	if !cc jump .L354;
	R5 = 63 (X);
	R5 <<= 24;
	jump.s .L353;
.L354:
	R5 = 1 (X);
	R5 <<= 30;
.L353:
	cc = !BITTST (R6,0);
	if cc jump .L352;
	R1 = R5;
	R0 = R7;
	call ___mulsf3;
	R7 = R0;
.L352:
	R0 = R6 >> 31;
	R6 = R0 + R6;
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L349;
	R1 = R5;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L353;
.L349:
	R0 = R7;
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_ldexpf, .-_ldexpf
	.align 4
.global _ldexp;
.type _ldexp, STT_FUNC;
_ldexp:
	[--sp] = ( r7:5 );

	LINK 32;
	[FP+20] = R0;
	[FP+24] = R1;
	R5 = R2;
	R0 = R1;
	[SP+12] = R0;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L357;
	R0 = [FP+24];
	[SP+12] = R0;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___adddf3;
	R2 = R0;
	R3 = R1;
	R0 = R3;
	[SP+12] = R0;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L357;
	cc =R5<0;
	if !cc jump .L362;
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L361;
.L362:
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
.L361:
	cc = !BITTST (R5,0);
	if cc jump .L360;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
.L360:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L357;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
	jump.s .L361;
.L357:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_ldexp, .-_ldexp
	.align 4
.global _ldexpl;
.type _ldexpl, STT_FUNC;
_ldexpl:
	[--sp] = ( r7:5 );

	LINK 32;
	[FP+20] = R0;
	[FP+24] = R1;
	R5 = R2;
	R0 = R1;
	[SP+12] = R0;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L365;
	R0 = [FP+24];
	[SP+12] = R0;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___adddf3;
	R2 = R0;
	R3 = R1;
	R0 = R3;
	[SP+12] = R0;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L365;
	cc =R5<0;
	if !cc jump .L370;
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L369;
.L370:
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
.L369:
	cc = !BITTST (R5,0);
	if cc jump .L368;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
.L368:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L365;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
	jump.s .L369;
.L365:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	LINK 0;
	P2 = R1;
	R1 = R2;
	R2 = P2;
	R1 = R2 + R1;
	P1 = R0;
	jump.s .L373;
.L374:
	P2 += 1;
	R2 = B [P2+-1] (X);
	P1 += 1;
	R3 = B [P1+-1] (X);
	R2 = R2 ^ R3;
	B [P1+-1] = R2;
.L373:
	R2 = P2;
	cc =R2==R1;
	if !cc jump .L374;
	UNLINK;
	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	[--sp] = ( r7:5 );

	LINK 12;
	R6 = R0;
	P1 = R1;
	R7 = P1;
	R5 = R2;
	R0 = R6;
	call _strlen;
	P2 = R0;
	P1 = R7;
	P0 = R6;
	P2 = P0 + P2;
	jump.s .L376;
.L378:
	R5 += -1;
.L376:
	P0 = P2;
	cc =R5==0;
	if cc jump .L377;
	nop;
	nop;
	nop;
	R0 = B [P1] (X);
	P1 += 1;
	B [P2] = R0;
	P2 += 1;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L378;
.L377:
	cc =R5==0;
	if !cc jump .L379;
	R0 = 0 (X);
	B [P0] = R0;
.L379:
	R0 = R6;
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	LINK 0;
	P2 = R0;
	R0 = 0 (X);
	jump.s .L381;
.L383:
	R0 += 1;
.L381:
	cc =R0==R1;
	if cc jump .L382;
	nop;
	nop;
	nop;
	R2 = B [P2] (X);
	P2 += 1;
	R2 = R2.B (X);
	cc =R2==0;
	if !cc jump .L383;
.L382:
	UNLINK;
	rts;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	LINK 0;
	P2 = R0;
	jump.s .L385;
.L387:
	R3 = B [P1+-1] (X);
	R2 = B [P2+-1] (X);
	cc =R3==R2;
	if cc jump .L386;
	nop;
	nop;
	nop;
.L388:
	R2 = B [P1] (X);
	P1 += 1;
	R2 = R2.B (X);
	cc =R2==0;
	if !cc jump .L387;
	nop;
	nop;
.L385:
	R0 = P2;
	R2 = B [P2] (X);
	P2 += 1;
	R2 = R2.B (X);
	cc =R2==0;
	if cc jump .L390;
	P1 = R1;
	jump.s .L388;
.L390:
	R0 = 0 (X);
.L386:
	UNLINK;
	rts;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	LINK 0;
	P2 = R0;
	R0 = R1;
	R2 = 0 (X);
.L393:
	R3 = P2;
	R1 = B [P2] (X);
	P2 += 1;
	R1 = R1.B (X);
	cc =R0==R1;
	if !cc jump .L392;
	nop;
	nop;
	R2 = R3;
.L392:
	R1 = B [P2+-1] (X);
	cc =R1==0;
	if !cc jump .L393;
	R0 = R2;
	UNLINK;
	rts;
	.size	_strrchr, .-_strrchr
	.align 4
.global _strstr;
.type _strstr, STT_FUNC;
_strstr:
	[--sp] = ( r7:5, p5:5 );

	LINK 12;
	R7 = R0;
	P5 = R1;
	R0 = P5;
	call _strlen;
	R6 = R0;
	cc =R6==0;
	if cc jump .L396;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
	jump.s .L397;
.L398:
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L396;
	R7 += 1;
.L397:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R7==0;
	if !cc jump .L398;
.L396:
	R0 = R7;
	UNLINK;
	( r7:5, p5:5 ) = [sp++];

	rts;
	.size	_strstr, .-_strstr
	.align 4
.global _copysign;
.type _copysign, STT_FUNC;
_copysign:
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L402;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L404;
.L402:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L412;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+16];
	R1 = [FP+20];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L413;
.L404:
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	BITTGL (R1, 31);
	jump.s .L405;
.L412:
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L405;
.L413:
	R0 = [FP+8];
	R1 = [FP+12];
.L405:
	UNLINK;
	rts;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:5, p5:4 );

	LINK 12;
	P4 = R2;
	R6 = [FP+40];
	R5 = R1 - R6;
	R5 = R0 + R5;
	cc =R6==0;
	if cc jump .L415;
	cc =R1<R6 (iu);
	if cc jump .L419;
	P5 = R0;
	jump.s .L416;
.L417:
	R0 = B [P5] (X);
	P5 += 1;
	R0 = R0.B (X);
	R1 = B [P4] (X);
	cc =R0==R1;
	if !cc jump .L416;
	R0 = P4;
	R0 += 1;
	R1 = R6;
	R1 += -1;
	R2 = R1;
	R1 = R0;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if cc jump .L420;
.L416:
	R7 = P5;
	cc =R7<=R5 (iu);
	if cc jump .L417;
	R0 = 0 (X);
	jump.s .L415;
.L419:
	R0 = 0 (X);
	jump.s .L415;
.L420:
	R0 = R7;
.L415:
	UNLINK;
	( r7:5, p5:4 ) = [sp++];

	rts;
	.size	_memmem, .-_memmem
	.align 4
.global _mempcpy;
.type _mempcpy, STT_FUNC;
_mempcpy:
	[--sp] = ( r7:7 );

	LINK 12;
	R7 = R2;
	R2 = R7;
	call _memcpy;
	R0 = R0 + R7;
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	_mempcpy, .-_mempcpy
	.align 4
.global _frexp;
.type _frexp, STT_FUNC;
_frexp:
	[--sp] = ( r7:6, p5:5 );

	LINK 24;
	[FP+20] = R0;
	[FP+24] = R1;
	P5 = R2;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L439;
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	BITTGL (R1, 31);
	[FP+20] = R0;
	[FP+24] = R1;
	R6 = 1 (X);
	jump.s .L423;
.L439:
	R6 = 0 (X);
.L423:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L434;
	jump.s .L440;
.L427:
	R7 += 1;
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
	jump.s .L425;
.L434:
	R7 = 0 (X);
.L425:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L427;
	jump.s .L428;
.L440:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L441;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L436;
	R7 = 0 (X);
	jump.s .L428;
.L431:
	R7 += -1;
	R0 = [FP+24];
	[SP+12] = R0;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___adddf3;
	[FP+20] = R0;
	[FP+24] = R1;
	jump.s .L430;
.L436:
	R7 = 0 (X);
.L430:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L431;
	jump.s .L428;
.L441:
	R7 = 0 (X);
.L428:
	[P5] = R7;
	cc =R6==0;
	if cc jump .L432;
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	BITTGL (R1, 31);
	[FP+20] = R0;
	[FP+24] = R1;
.L432:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:6, p5:5 ) = [sp++];

	rts;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:4 );

	[--SP] = P3;
	LINK 8;
	[FP+36] = R2;
	R6 = [FP+36];
	R7 = [FP+40];
	R2 = R0;
	R3 = R1;
	P2 = 0 (X);
	P3 = 0 (X);
	jump.s .L443;
.L446:
	P0 = 1 (X);
	P1 = 0 (X);
	R0 = P0;
	R4 = R2 & R0;
	R5 = 0 (X);
	cc =R4==0;
	if cc jump .L444;
	R1 = P2;
	R4 = R1 + R6; cc = ac0;
	R0 = CC;
	R1 = P3;
	R5 = R1 + R7;
	R5 = R5 + R0;
	P2 = R4;
	P3 = R5;
.L444:
	R4 = R6;
	R5 = R7;
	CC = R0 < R0;
	R4 = ROT R6 BY 1;
	R5 = ROT R5 BY 1;
	R6 = R4;
	R7 = R5;
	R4 = R2;
	R5 = R3;
	CC = R0 < R0;
	R5 = ROT R3 BY -1;
	R4 = ROT R4 BY -1;
	R2 = R4;
	R3 = R5;
.L443:
	R5 = R2;
	R5 = R5 | R3;
	cc =R5==0;
	if !cc jump .L446;
	R0 = P2;
	R1 = P3;
	UNLINK;
	P3 = [SP++];
	( r7:4 ) = [sp++];

	rts;
	.size	___muldi3, .-___muldi3
	.align 4
.global _udivmodsi4;
.type _udivmodsi4, STT_FUNC;
_udivmodsi4:
	LINK 0;
	P2 = R2;
	R3 = 33 (X);
	R2 = 1 (X);
	jump.s .L448;
.L450:
	R1 <<= 1;
	R2 <<= 1;
.L448:
	cc =R1<R0 (iu);
	if !cc jump .L455;
	R3 += -1;
	cc =R3==0;
	if cc jump .L456;
	cc =R1<0;
	if !cc jump .L450;
	R3 = 0 (X);
	jump.s .L452;
.L453:
	cc =R0<R1 (iu);
	if cc jump .L451;
	R0 = R0 - R1;
	R3 = R3 | R2;
.L451:
	R2 >>= 1;
	R1 >>= 1;
	jump.s .L452;
.L455:
	R3 = 0 (X);
	jump.s .L452;
.L456:
	R3 = 0 (X);
.L452:
	cc =R2==0;
	if !cc jump .L453;
	cc =P2==0;
	if !cc jump .L454;
	R0 = R3;
.L454:
	UNLINK;
	rts;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	LINK 12;
	R1 = R0.B (X);
	cc =R1<0;
	if !cc jump .L459;
	R0 = ~R0;
.L459:
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L461;
	R0 = R1;
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
	jump.s .L460;
.L461:
	R0 = 7 (X);
.L460:
	UNLINK;
	rts;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	LINK 20;
	[FP+-8] = R0;
	[FP+-4] = R1;
	cc =R1<0;
	if !cc jump .L463;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = ~R0;
	R3 = ~R1;
	R0 = R2;
	R1 = R3;
.L463:
	R2 = R0;
	R2 = R2 | R1;
	cc =R2==0;
	if cc jump .L467;
	call ___clzdi2;
	R0 += -1;
	jump.s .L465;
.L467:
	R0 = 63 (X);
.L465:
	UNLINK;
	rts;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	LINK 0;
	R2 = 0 (X);
	jump.s .L469;
.L471:
	cc = !BITTST (R0,0);
	if cc jump .L470;
	R2 = R2 + R1;
.L470:
	R0 >>= 1;
	R1 <<= 1;
.L469:
	cc =R0==0;
	if !cc jump .L471;
	R0 = R2;
	UNLINK;
	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = R4;
	LINK 0;
	R7 = R2;
	R2 = R7 >> 3;
	R6 = -8 (X);
	R6 = R7 & R6;
	cc =R0<R1 (iu);
	if cc jump .L473;
	R3 = R1 + R7;
	cc =R3<R0 (iu);
	if !cc jump .L474;
.L473:
	P5 = R1;
	P0 = R0;
	P2 = 0 (X);
	jump.s .L475;
.L474:
	R7 += -1;
	R2 = R1 + R7;
	P1 = R2;
	R0 = R0 + R7;
	P2 = R0;
	R1 += -1;
	jump.s .L476;
.L477:
	R3 = [P5];
	R4 = [P5+4];
	[P0] = R3;
	[P0+4] = R4;
	P2 += 1;
	P5 += 8;
	P0 += 8;
.L475:
	R4 = P2;
	cc =R4==R2;
	if !cc jump .L477;
	R1 = R1 + R6;
	P1 = R1;
	R0 = R0 + R6;
	P2 = R0;
	jump.s .L478;
.L479:
	R0 = B [P1] (X);
	P1 += 1;
	B [P2] = R0;
	P2 += 1;
	R6 += 1;
.L478:
	cc =R7<=R6 (iu);
	if !cc jump .L479;
	jump.s .L472;
.L481:
	R0 = B [P1] (X);
	P1 += -1;
	B [P2] = R0;
	P2 += -1;
.L476:
	R0 = P1;
	cc =R0==R1;
	if !cc jump .L481;
.L472:
	UNLINK;
	R4 = [SP++];
	( r7:6, p5:5 ) = [sp++];

	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	LINK 0;
	P1 = R1;
	R1 = R2;
	P2 = R1;
	P0 = P2 >> 1;
	R2 = P1;
	cc =R0<R2 (iu);
	if cc jump .L483;
	R2 = R2 + R1;
	cc =R2<R0 (iu);
	if !cc jump .L484;
.L483:
	P2 = P1;
	I0 = R0;
	P0 = P1 + (P0 << 1);
	jump.s .L485;
.L484:
	R1 += -1;
	P2 = R1;
	P0 = P1 + P2;
	R0 = R0 + R1;
	P2 = R0;
	P1 += -1;
	jump.s .L486;
.L487:
	R2 = W [P2] (X);
	P2 += 2;
	W [I0] = R2.L;
	I0 += 2;
.L485:
	cc =P2==P0;
	if !cc jump .L487;
	cc = !BITTST (R1,0);
	if cc jump .L482;
	R1 += -1;
	P2 = R1;
	P1 = P1 + P2;
	R0 = R0 + R1;
	P2 = R0;
	R0 = B [P1] (X);
	B [P2] = R0;
	jump.s .L482;
.L489:
	R0 = B [P0] (X);
	P0 += -1;
	B [P2] = R0;
	P2 += -1;
.L486:
	cc =P0==P1;
	if !cc jump .L489;
.L482:
	UNLINK;
	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( r7:7, p5:5 );

	LINK 0;
	P1 = R1;
	R1 = R2;
	P2 = R1;
	P0 = P2 >> 2;
	R2 = -4 (X);
	R2 = R1 & R2;
	R3 = P1;
	cc =R0<R3 (iu);
	if cc jump .L491;
	R3 = R3 + R1;
	cc =R3<R0 (iu);
	if !cc jump .L492;
.L491:
	P2 = P1;
	P5 = R0;
	P0 = P1 + (P0 << 2);
	jump.s .L493;
.L492:
	R1 += -1;
	P2 = R1;
	P0 = P1 + P2;
	R0 = R0 + R1;
	P2 = R0;
	P1 += -1;
	jump.s .L494;
.L495:
	R3 = [P2];
	P2 += 4;
	[P5] = R3;
	P5 += 4;
.L493:
	cc =P2==P0;
	if !cc jump .L495;
	P2 = R2;
	P1 = P1 + P2;
	R0 = R0 + R2;
	P2 = R0;
	jump.s .L496;
.L497:
	R0 = B [P1] (X);
	P1 += 1;
	B [P2] = R0;
	P2 += 1;
	R2 += 1;
.L496:
	cc =R1<=R2 (iu);
	if !cc jump .L497;
	jump.s .L490;
.L499:
	R0 = B [P0] (X);
	P0 += -1;
	B [P2] = R0;
	P2 += -1;
.L494:
	cc =P0==P1;
	if !cc jump .L499;
.L490:
	UNLINK;
	( r7:7, p5:5 ) = [sp++];

	rts;
	.size	___cmovw, .-___cmovw
	.align 4
.global ___modi;
.type ___modi, STT_FUNC;
___modi:
	LINK 12;
	call ___modsi3;
	UNLINK;
	rts;
	.size	___modi, .-___modi
	.align 4
.global ___uitod;
.type ___uitod, STT_FUNC;
___uitod:
	LINK 20;
	call ___floatunsidf;
	[FP+-8] = R0;
	[FP+-4] = R1;
	UNLINK;
	rts;
	.size	___uitod, .-___uitod
	.align 4
.global ___uitof;
.type ___uitof, STT_FUNC;
___uitof:
	LINK 12;
	call ___floatunsisf;
	UNLINK;
	rts;
	.size	___uitof, .-___uitof
	.align 4
.global ___ulltod;
.type ___ulltod, STT_FUNC;
___ulltod:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	call ___floatundidf;
	[FP+-8] = R0;
	[FP+-4] = R1;
	UNLINK;
	rts;
	.size	___ulltod, .-___ulltod
	.align 4
.global ___ulltof;
.type ___ulltof, STT_FUNC;
___ulltof:
	LINK 20;
	[FP+8] = R0;
	[FP+12] = R1;
	call ___floatundisf;
	UNLINK;
	rts;
	.size	___ulltof, .-___ulltof
	.align 4
.global ___umodi;
.type ___umodi, STT_FUNC;
___umodi:
	LINK 12;
	call ___umodsi3;
	UNLINK;
	rts;
	.size	___umodi, .-___umodi
	.align 4
.global ___clzhi2;
.type ___clzhi2, STT_FUNC;
___clzhi2:
	LINK 0;
	R1 = R0;
	R0 = 0 (X);
	jump.s .L507;
.L509:
	R2 = R1.L (Z);
	R3 = 15 (X);
	R3 = R3 - R0;
	R2 >>>= R3;
	cc = !BITTST (R2,0);
	if !cc jump .L508;
	R0 += 1;
.L507:
	R2 = 16 (X);
	cc =R0==R2;
	if !cc jump .L509;
.L508:
	UNLINK;
	rts;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	LINK 0;
	R1 = R0;
	R0 = 0 (X);
	jump.s .L511;
.L513:
	R2 = R1.L (Z);
	R2 >>>= R0;
	cc = !BITTST (R2,0);
	if !cc jump .L512;
	R0 += 1;
.L511:
	R2 = 16 (X);
	cc =R0==R2;
	if !cc jump .L513;
.L512:
	UNLINK;
	rts;
	.size	___ctzhi2, .-___ctzhi2
	.align 4
.global ___fixunssfsi;
.type ___fixunssfsi, STT_FUNC;
___fixunssfsi:
	[--sp] = ( r7:7 );

	LINK 12;
	R7 = R0;
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___gesf2;
	cc =R0<0;
	if cc jump .L519;
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L517;
.L519:
	R0 = R7;
	call ___fixsfsi;
.L517:
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	___fixunssfsi, .-___fixunssfsi
	.align 4
.global ___parityhi2;
.type ___parityhi2, STT_FUNC;
___parityhi2:
	LINK 0;
	R2 = R0;
	R0 = 0 (X);
	R1 = 0 (X);
	jump.s .L521;
.L523:
	R3 = R2.L (Z);
	R3 >>>= R1;
	cc = !BITTST (R3,0);
	if cc jump .L522;
	R0 += 1;
.L522:
	R1 += 1;
.L521:
	R3 = 16 (X);
	cc =R1==R3;
	if !cc jump .L523;
	R1 = 1 (X);
	R0 = R0 & R1;
	UNLINK;
	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	LINK 0;
	R2 = R0;
	R1 = 0 (X);
	R0 = 0 (X);
	jump.s .L525;
.L527:
	R3 = R2.L (Z);
	R3 >>>= R0;
	cc = !BITTST (R3,0);
	if cc jump .L526;
	R1 += 1;
.L526:
	R0 += 1;
.L525:
	R3 = 16 (X);
	cc =R0==R3;
	if !cc jump .L527;
	R0 = R1;
	UNLINK;
	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	LINK 0;
	R2 = 0 (X);
	jump.s .L529;
.L531:
	cc = !BITTST (R0,0);
	if cc jump .L530;
	R2 = R2 + R1;
.L530:
	R0 >>= 1;
	R1 <<= 1;
.L529:
	cc =R0==0;
	if !cc jump .L531;
	R0 = R2;
	UNLINK;
	rts;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	LINK 0;
	R2 = R0;
	cc =R2==0;
	if cc jump .L537;
	R0 = 0 (X);
	jump.s .L534;
.L536:
	cc = !BITTST (R1,0);
	if cc jump .L535;
	R0 = R0 + R2;
.L535:
	R2 <<= 1;
	R1 >>= 1;
.L534:
	cc =R1==0;
	if !cc jump .L536;
	jump.s .L533;
.L537:
	R0 = 0 (X);
.L533:
	UNLINK;
	rts;
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 4
.global ___udivmodsi4;
.type ___udivmodsi4, STT_FUNC;
___udivmodsi4:
	LINK 0;
	P2 = R2;
	R3 = 33 (X);
	R2 = 1 (X);
	jump.s .L539;
.L541:
	R1 <<= 1;
	R2 <<= 1;
.L539:
	cc =R1<R0 (iu);
	if !cc jump .L546;
	R3 += -1;
	cc =R3==0;
	if cc jump .L547;
	cc =R1<0;
	if !cc jump .L541;
	R3 = 0 (X);
	jump.s .L543;
.L544:
	cc =R0<R1 (iu);
	if cc jump .L542;
	R0 = R0 - R1;
	R3 = R3 | R2;
.L542:
	R2 >>= 1;
	R1 >>= 1;
	jump.s .L543;
.L546:
	R3 = 0 (X);
	jump.s .L543;
.L547:
	R3 = 0 (X);
.L543:
	cc =R2==0;
	if !cc jump .L544;
	cc =P2==0;
	if !cc jump .L545;
	R0 = R3;
.L545:
	UNLINK;
	rts;
	.size	___udivmodsi4, .-___udivmodsi4
	.align 4
.global ___mspabi_cmpf;
.type ___mspabi_cmpf, STT_FUNC;
___mspabi_cmpf:
	[--sp] = ( r7:6 );

	LINK 12;
	R7 = R0;
	R6 = R1;
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L551;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if !cc jump .L552;
	R0 = 0 (X);
	jump.s .L550;
.L551:
	R0 = -1 (X);
	jump.s .L550;
.L552:
	R0 = 1 (X);
.L550:
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 4
.global ___mspabi_cmpd;
.type ___mspabi_cmpd, STT_FUNC;
___mspabi_cmpd:
	[--sp] = ( r7:6 );

	LINK 24;
	[FP+16] = R0;
	[FP+20] = R1;
	[FP+24] = R2;
	R6 = [FP+24];
	R7 = [FP+28];
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L555;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L556;
	R0 = 0 (X);
	jump.s .L554;
.L555:
	R0 = -1 (X);
	jump.s .L554;
.L556:
	R0 = 1 (X);
.L554:
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 4
.global ___mspabi_mpysll;
.type ___mspabi_mpysll, STT_FUNC;
___mspabi_mpysll:
	[--SP] = R4;
	LINK 24;
	R2 = R1;
	R3 = R0;
	R4 = R0;
	R4 >>>= 31;
	[FP+-8] = R3;
	[FP+-4] = R4;
	R3 = R2;
	R3 >>>= 31;
	R0 = R3;
	[SP+12] = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldi3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	UNLINK;
	R4 = [SP++];
	rts;
	.size	___mspabi_mpysll, .-___mspabi_mpysll
	.align 4
.global ___mspabi_mpyull;
.type ___mspabi_mpyull, STT_FUNC;
___mspabi_mpyull:
	[--sp] = ( r7:7 );

	[--SP] = R4;
	LINK 24;
	R2 = R0;
	R0 = R1;
	R7 = 0 (X);
	P0 = 0 (X);
	R3 = R7;
	R4 = P0;
	[FP+-8] = R3;
	[FP+-4] = R4;
	[FP+-8] = R2;
	P0 = 0 (X);
	[FP+-4] = P0;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R0;
	R3 = 0 (X);
	R0 = 0 (X);
	[SP+12] = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldi3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	UNLINK;
	R4 = [SP++];
	( r7:7 ) = [sp++];

	rts;
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 4
.global ___mulhi3;
.type ___mulhi3, STT_FUNC;
___mulhi3:
	[--sp] = ( r7:7 );

	LINK 0;
	R3 = R0;
	R0 = R1;
	cc =R0<0;
	if !cc jump .L566;
	R0 = -R0;
	P2 = 1 (X);
	jump.s .L560;
.L566:
	P2 = 0 (X);
.L560:
	R2 = 33 (X);
	R1 = 0 (X);
	jump.s .L561;
.L564:
	cc = !BITTST (R0,0);
	if cc jump .L562;
	R1 = R1 + R3;
.L562:
	R3 <<= 1;
	R0 >>>= 1;
.L561:
	cc =R0==0;
	if cc jump .L563;
	R2 += -1;
	R7 = R2.B (Z);
	cc =R7==0;
	if !cc jump .L564;
.L563:
	cc =P2==0;
	if cc jump .L565;
	R1 = -R1;
.L565:
	R0 = R1;
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	[--sp] = ( r7:7 );

	LINK 12;
	cc =R0<0;
	if !cc jump .L572;
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L569;
.L572:
	R7 = 0 (X);
.L569:
	cc =R1<0;
	if !cc jump .L570;
	R1 = -R1;
	BITTGL (R7, 0);
.L570:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L571;
	R0 = -R0;
.L571:
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	[--sp] = ( r7:7 );

	LINK 12;
	cc =R0<0;
	if !cc jump .L577;
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L574;
.L577:
	R7 = 0 (X);
.L574:
	cc =R1<0;
	if !cc jump .L575;
	R1 = -R1;
.L575:
	R2 = 1 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L576;
	R0 = -R0;
.L576:
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	[--sp] = ( r7:6 );

	LINK 0;
	P2 = R2;
	R3 = 17 (X);
	R2 = 1 (X);
	jump.s .L579;
.L581:
	R1 <<= 1;
	R2 <<= 1;
.L579:
	R7 = R1.L (Z);
	R6 = R0.L (Z);
	cc =R7<R6 (iu);
	if !cc jump .L586;
	R3 += -1;
	cc =R3==0;
	if cc jump .L587;
	R7 = R1.L (X);
	cc =R7<0;
	if !cc jump .L581;
	R3 = 0 (X);
	jump.s .L583;
.L584:
	R7 = R0.L (Z);
	R6 = R1.L (Z);
	cc =R7<R6 (iu);
	if cc jump .L582;
	R0 = R0 - R1;
	R3 = R3 | R2;
.L582:
	R2 <<= 16;
	R2 >>= 17;
	R1 <<= 16;
	R1 >>= 17;
	jump.s .L583;
.L586:
	R3 = 0 (X);
	jump.s .L583;
.L587:
	R3 = 0 (X);
.L583:
	R7 = R2.L (Z);
	cc =R7==0;
	if !cc jump .L584;
	cc =P2==0;
	if !cc jump .L585;
	R0 = R3;
.L585:
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	LINK 0;
	P2 = R2;
	R3 = 33 (X);
	R2 = 1 (X);
	jump.s .L590;
.L592:
	R1 <<= 1;
	R2 <<= 1;
.L590:
	cc =R1<R0 (iu);
	if !cc jump .L597;
	R3 += -1;
	cc =R3==0;
	if cc jump .L598;
	cc =R1<0;
	if !cc jump .L592;
	R3 = 0 (X);
	jump.s .L594;
.L595:
	cc =R0<R1 (iu);
	if cc jump .L593;
	R0 = R0 - R1;
	R3 = R3 | R2;
.L593:
	R2 >>= 1;
	R1 >>= 1;
	jump.s .L594;
.L597:
	R3 = 0 (X);
	jump.s .L594;
.L598:
	R3 = 0 (X);
.L594:
	cc =R2==0;
	if !cc jump .L595;
	cc =P2==0;
	if !cc jump .L596;
	R0 = R3;
.L596:
	UNLINK;
	rts;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:6 );

	LINK 8;
	I0 = R0;
	I1 = R1;
	R0 = R2;
	P0 = I0;
	P1 = I1;
	cc = !BITTST (R0,5);
	if cc jump .L601;
	R2 = 0 (X);
	R3 = 0 (X);
	R1 = P0;
	R0 += -32;
	R1 <<= R0;
	R3 = R1;
	jump.s .L602;
.L601:
	cc =R0==0;
	if cc jump .L604;
	R1 = P0;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R1;
	R2 <<= R0;
	R7 = P1;
	R7 <<= R0;
	P2 = 32 (X);
	R6 = P2;
	R0 = R6 - R0;
	R1 >>= R0;
	R1 = R1 | R7;
	R3 = R1;
.L602:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L603;
.L604:
	R2 = I0;
	R3 = I1;
	R0 = R2;
	R1 = R3;
	[FP+-8] = R0;
	[FP+-4] = R1;
.L603:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	[--sp] = ( r7:6 );

	LINK 8;
	I0 = R0;
	I1 = R1;
	R0 = R2;
	P0 = I0;
	P1 = I1;
	cc = !BITTST (R0,5);
	if cc jump .L606;
	R1 = P1;
	R2 = 0 (X);
	R3 = 0 (X);
	R3 = R1 >>> 31;
	R0 += -32;
	R1 >>>= R0;
	R2 = R1;
	jump.s .L607;
.L606:
	cc =R0==0;
	if cc jump .L609;
	R7 = P1;
	R2 = 0 (X);
	R3 = 0 (X);
	R3 = R7;
	R3 >>>= R0;
	R6 = 32 (X);
	R6 = R6 - R0;
	R7 <<= R6;
	R1 = P0;
	R1 >>= R0;
	R2 = R7 | R1;
.L607:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L608;
.L609:
	R0 = I0;
	R1 = I1;
	R2 = R0;
	R3 = R1;
	[FP+-8] = R2;
	[FP+-4] = R3;
.L608:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	P0 = 0 (X);
	P1 = 0 (X);
	R2 = R1 >> 24;
	P0 = R2;
	P1 = 0 (X);
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R1 >> 8;
	R3 = 0 (X);
	M0 = 65280 (Z);
	R5 = M0;
	R5 = R2 & R5;
	I2 = R5;
	I3 = 0 (X);
	R6 = R1 << 8;
	B0 = R6;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R0 >> 24;
	R2 = R6 | R2;
	R3 = P0;
	P2.H = 255;
	P2.L = 0;
	R7 = P2;
	R7 = R2 & R7;
	I0 = R7;
	I1 = 0 (X);
	R2 = R1 << 24;
	B2 = R2;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R0 >> 8;
	R5 = B2;
	R2 = R5 | R2;
	R3 = R1 >> 8;
	R4 = R2 >>> 24;
	R4 <<= 24;
	R5 = 0 (X);
	R1 = R0 >> 24;
	R6 = 0 (X);
	R7 = 0 (X);
	R7 = B0;
	R7 = R1 | R7;
	R6 = R0 << 8;
	B0 = 0 (X);
	R2 = R7.B (Z);
	B1 = R2;
	R1 = R0 >> 8;
	R2 = 0 (X);
	R3 = 0 (X);
	R3 = B2;
	R3 = R1 | R3;
	R2 = R0 << 24;
	B2 = 0 (X);
	R0 = M0;
	R0 = R3 & R0;
	B3 = R0;
	M0 = 0 (X);
	M1 = 0 (X);
	M1 = R6;
	R0 = 0 (X);
	R7 = P2;
	R1 = R6 & R7;
	R6 = 0 (X);
	R7 = 0 (X);
	R7 = R2;
	M0 = P0;
	R2 = P1;
	R2 = R7 | R2;
	R3 = M0;
	R6 = I2;
	R3 = R3 | R6;
	P0 = R3;
	R7 = I3;
	R7 = R2 | R7;
	P1 = R7;
	R2 = I0;
	R6 = R3 | R2;
	R3 = P1;
	R2 = I1;
	R7 = R3 | R2;
	R2 = R6 | R4;
	R3 = R7 | R5;
	R6 = R2 | R5;
	R5 = B1;
	R7 = R3 | R5;
	R5 = B2;
	R2 = R6 | R5;
	R5 = B3;
	R3 = R7 | R5;
	R6 = R2 | R0;
	[FP+-8] = R6;
	R7 = R3 | R1;
	[FP+-4] = R7;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___bswapdi2, .-___bswapdi2
	.align 4
.global ___bswapsi2;
.type ___bswapsi2, STT_FUNC;
___bswapsi2:
	[--sp] = ( r7:7 );

	LINK 0;
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
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	___bswapsi2, .-___bswapsi2
	.align 4
.global ___clzsi2;
.type ___clzsi2, STT_FUNC;
___clzsi2:
	[--sp] = ( r7:7 );

	LINK 0;
	R1 = 65535 (Z);
	cc =R0<=R1 (iu);
	if !cc jump .L617;
	R1 = 16 (X);
	jump.s .L613;
.L617:
	R1 = 0 (X);
.L613:
	R2 = 16 (X);
	R2 = R2 - R1;
	R0 >>= R2;
	R2 = 65280 (Z);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L618;
	R2 = 8 (X);
	jump.s .L614;
.L618:
	R2 = 0 (X);
.L614:
	R3 = 8 (X);
	R3 = R3 - R2;
	R0 >>= R3;
	R1 = R1 + R2;
	R2 = 240 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L619;
	R2 = 4 (X);
	jump.s .L615;
.L619:
	R2 = 0 (X);
.L615:
	R3 = 4 (X);
	R3 = R3 - R2;
	R0 >>= R3;
	R1 = R1 + R2;
	R2 = 12 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L620;
	R3 = 2 (X);
	jump.s .L616;
.L620:
	R3 = 0 (X);
.L616:
	R2 = 2 (X);
	R7 = R2 - R3;
	R0 >>= R7;
	R1 = R1 + R3;
	R3 = R0 & R2;
	cc =R3==0;
	R3 = CC;
	R2 = R2 - R0;
	R2 *= R3;
	R1 = R1 + R2;
	R0 = R1;
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	___clzsi2, .-___clzsi2
	.align 4
.global ___cmpdi2;
.type ___cmpdi2, STT_FUNC;
___cmpdi2:
	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	[FP+16] = R2;
	R2 = [FP+16];
	R3 = [FP+20];
	P1 = R1;
	P2 = R3;
	cc =P1<P2;
	if cc jump .L623;
	P2 = R1;
	P1 = R3;
	cc =P2<=P1;
	if !cc jump .L624;
	P2 = R0;
	P1 = R2;
	cc =P2<P1 (iu);
	if cc jump .L625;
	cc =R0<=R2 (iu);
	if !cc jump .L626;
	P2 = 1 (X);
	jump.s .L622;
.L623:
	P2 = 0 (X);
	jump.s .L622;
.L624:
	P2 = 2 (X);
	jump.s .L622;
.L625:
	P2 = 0 (X);
	jump.s .L622;
.L626:
	P2 = 2 (X);
.L622:
	R0 = P2;
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
	R2 = [FP+16];
	R3 = [FP+20];
	R0 = R3;
	[SP+12] = R0;
	R0 = [FP+8];
	R1 = [FP+12];
	call ___cmpdi2;
	R0 += -1;
	UNLINK;
	rts;
	.size	___aeabi_lcmp, .-___aeabi_lcmp
	.align 4
.global ___ctzsi2;
.type ___ctzsi2, STT_FUNC;
___ctzsi2:
	LINK 0;
	R1 = R0.L (Z);
	cc =R1==0;
	if !cc jump .L633;
	R1 = 16 (X);
	jump.s .L629;
.L633:
	R1 = 0 (X);
.L629:
	R0 >>= R1;
	R2 = R0.B (Z);
	cc =R2==0;
	if !cc jump .L634;
	R2 = 8 (X);
	jump.s .L630;
.L634:
	R2 = 0 (X);
.L630:
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 15 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L635;
	R2 = 4 (X);
	jump.s .L631;
.L635:
	R2 = 0 (X);
.L631:
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 3 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L636;
	R2 = 2 (X);
	jump.s .L632;
.L636:
	R2 = 0 (X);
.L632:
	R0 >>= R2;
	R3 = 3 (X);
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
	UNLINK;
	rts;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	[--sp] = ( r7:6 );

	LINK 8;
	I0 = R0;
	I1 = R1;
	R0 = R2;
	P0 = I0;
	P1 = I1;
	cc = !BITTST (R0,5);
	if cc jump .L638;
	R2 = 0 (X);
	R3 = 0 (X);
	R1 = P1;
	R0 += -32;
	R2 = R1;
	R2 >>= R0;
	jump.s .L639;
.L638:
	cc =R0==0;
	if cc jump .L641;
	R7 = P1;
	R2 = 0 (X);
	R3 = 0 (X);
	R3 = R7;
	R3 >>= R0;
	R6 = 32 (X);
	R6 = R6 - R0;
	R7 <<= R6;
	R1 = P0;
	R1 >>= R0;
	R2 = R7 | R1;
.L639:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L640;
.L641:
	R0 = I0;
	R1 = I1;
	R2 = R0;
	R3 = R1;
	[FP+-8] = R2;
	[FP+-4] = R3;
.L640:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	___lshrdi3, .-___lshrdi3
	.align 4
.global ___muldsi3;
.type ___muldsi3, STT_FUNC;
___muldsi3:
	[--sp] = ( r7:4 );

	LINK 8;
	R7 = R0;
	R5 = R7.L (Z);
	R4 = R1.L (Z);
	R6 = R5;
	R6 *= R4;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R6;
	R0 = R6 >> 16;
	R6 = R6.L (Z);
	R2 = R6;
	R7 >>= 16;
	R4 *= R7;
	R0 = R0 + R4;
	R4 = R0 << 16;
	R2 = R4 + R6;
	R0 >>= 16;
	R3 = R0;
	R6 = R2;
	R0 = R6 >> 16;
	R6 = R6.L (Z);
	R2 = R6;
	R1 >>= 16;
	R5 *= R1;
	R0 = R0 + R5;
	R5 = R0 << 16;
	R2 = R5 + R6;
	R6 = R3;
	R0 >>= 16;
	R0 = R0 + R6;
	R3 = R0;
	R7 *= R1;
	R7 = R7 + R0;
	R3 = R7;
	[FP+-8] = R2;
	[FP+-4] = R3;
	R0 = R2;
	R1 = R3;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--sp] = ( r7:4, p5:4 );

	LINK 20;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R4 = R0;
	R5 = R1;
	[FP+40] = R2;
	R6 = [FP+40];
	R7 = [FP+44];
	P5 = R4;
	P4 = R6;
	R1 = R6;
	R0 = R4;
	call ___muldsi3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R2 = R0;
	R3 = R1;
	R6 = R1;
	R0 = R5;
	R1 = P4;
	R0 *= R1;
	R1 = R7;
	R7 = P5;
	R1 *= R7;
	R0 = R0 + R1;
	R0 = R0 + R6;
	R3 = R0;
	[FP+-8] = R2;
	[FP+-4] = R3;
	R0 = R2;
	R1 = R3;
	UNLINK;
	( r7:4, p5:4 ) = [sp++];

	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	[--sp] = ( r7:6 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R2 = R0;
	R3 = R1;
	R6 = 0 (X);
	R7 = 0 (X);
	R0 = R6 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R7 - R3;
	R1 = R1 - R2;
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	___negdi2, .-___negdi2
	.align 4
.global ___paritydi2;
.type ___paritydi2, STT_FUNC;
___paritydi2:
	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R2 = R0;
	R3 = R1;
	R0 = R3;
	R0 = R0 ^ R2;
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
	UNLINK;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	LINK 0;
	R1 = R0;
	R0 = R1;
	R0 = R1 >> 16;
	R0 = R1 ^ R0;
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
	UNLINK;
	rts;
	.size	___paritysi2, .-___paritysi2
	.align 4
.global ___popcountdi2;
.type ___popcountdi2, STT_FUNC;
___popcountdi2:
	[--sp] = ( r7:4 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R6 = R0;
	R7 = R1;
	R0 = R6;
	R1 = R7;
	CC = R0 < R0;
	R1 = ROT R7 BY -1;
	R0 = ROT R0 BY -1;
	R2.H = 21845;
	R2.L = 21845;
	R4 = R0 & R2;
	R5 = R1 & R2;
	R2 = R6 - R4; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R5;
	R3 = R3 - R0;
	R0 = R2;
	R1 = R3;
	R7 = R3 << 30;
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = R2 >> 2;
	R0 = R7 | R0;
	R1 = R3 >> 2;
	P2.H = 13107;
	P2.L = 13107;
	R7 = P2;
	R4 = R0 & R7;
	R5 = R1 & R7;
	R0 = P2;
	R6 = R2 & R0;
	R7 = R3 & R0;
	R0 = R4 + R6; cc = ac0;
	R2 = CC;
	R1 = R5 + R7;
	R1 = R1 + R2;
	R7 = R1 << 28;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R0 >> 4;
	R2 = R7 | R2;
	R3 = R1 >> 4;
	R6 = R2 + R0; cc = ac0;
	R0 = CC;
	R7 = R3 + R1;
	R7 = R7 + R0;
	R2.H = 3855;
	R2.L = 3855;
	R0 = R6 & R2;
	R1 = R7 & R2;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = R1 >> 0;
	R3 = 0 (X);
	R2 = R2 + R0;
	R0 = R2 >> 16;
	R2 = R2 + R0;
	R0 = R2 >> 8;
	R0 = R0 + R2;
	R1 = 127 (X);
	R0 = R0 & R1;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___popcountdi2, .-___popcountdi2
	.align 4
.global ___popcountsi2;
.type ___popcountsi2, STT_FUNC;
___popcountsi2:
	LINK 0;
	R1 = R0;
	R0 = R1;
	R0 = R1 >> 1;
	R2.H = 21845;
	R2.L = 21845;
	R0 = R0 & R2;
	R0 = R1 - R0;
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
	UNLINK;
	rts;
	.size	___popcountsi2, .-___popcountsi2
	.align 4
.global ___powidf2;
.type ___powidf2, STT_FUNC;
___powidf2:
	[--sp] = ( r7:4, p5:4 );

	LINK 24;
	R4 = R0;
	R5 = R1;
	P5 = R2;
	R0 = P5;
	R0 >>= 31;
	P4 = R0;
	R6 = 0 (X);
	R7 = 1023 (X);
	R7 <<= 20;
.L652:
	R1 = P5;
	cc = !BITTST (R1,0);
	if cc jump .L650;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L650:
	R0 = P5;
	R0 >>= 31;
	R1 = P5;
	R0 = R0 + R1;
	R0 >>>= 1;
	P5 = R0;
	cc =P5==0;
	if cc jump .L651;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
	jump.s .L652;
.L651:
	cc =P4==0;
	if cc jump .L654;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L653;
.L654:
	[FP+-8] = R6;
	[FP+-4] = R7;
.L653:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4, p5:4 ) = [sp++];

	rts;
	.size	___powidf2, .-___powidf2
	.align 4
.global ___powisf2;
.type ___powisf2, STT_FUNC;
___powisf2:
	[--sp] = ( r7:4 );

	LINK 12;
	R5 = R0;
	R6 = R1;
	R4 = R6 >> 31;
	R7 = 127 (X);
	R7 <<= 23;
.L658:
	cc = !BITTST (R6,0);
	if cc jump .L656;
	R1 = R5;
	R0 = R7;
	call ___mulsf3;
	R7 = R0;
.L656:
	R0 = R6 >> 31;
	R6 = R0 + R6;
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L657;
	R1 = R5;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L658;
.L657:
	cc =R4==0;
	if cc jump .L659;
	R1 = R7;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R7 = R0;
.L659:
	R0 = R7;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___powisf2, .-___powisf2
	.align 4
.global ___ucmpdi2;
.type ___ucmpdi2, STT_FUNC;
___ucmpdi2:
	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	[FP+16] = R2;
	R2 = [FP+16];
	R3 = [FP+20];
	P1 = R1;
	P2 = R3;
	cc =P1<P2 (iu);
	if cc jump .L663;
	P2 = R1;
	P1 = R3;
	cc =P2<=P1 (iu);
	if !cc jump .L664;
	P2 = R0;
	P1 = R2;
	cc =P2<P1 (iu);
	if cc jump .L665;
	cc =R0<=R2 (iu);
	if !cc jump .L666;
	P2 = 1 (X);
	jump.s .L662;
.L663:
	P2 = 0 (X);
	jump.s .L662;
.L664:
	P2 = 2 (X);
	jump.s .L662;
.L665:
	P2 = 0 (X);
	jump.s .L662;
.L666:
	P2 = 2 (X);
.L662:
	R0 = P2;
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
	R2 = [FP+16];
	R3 = [FP+20];
	R0 = R3;
	[SP+12] = R0;
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ucmpdi2;
	R0 += -1;
	UNLINK;
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
