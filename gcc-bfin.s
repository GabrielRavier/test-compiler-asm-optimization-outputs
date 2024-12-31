.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	LINK 0;
	R3 = R0;
	R0 = R1;
	P2 = R0;
	R1 = R2;
	cc =R3<=R0 (iu);
	if cc jump .L2;
	P1 = R1;
	P2 = P2 + P1;
	R0 = R3 + R1;
	P2 += -1;
	P1 = R0;
	P1 += -1;
	R1 = ~R1;
	R1 = R1 + R0;
	jump.s .L3;
.L4:
	R0 = B [P2--] (X);
	B [P1--] = R0;
.L3:
	R0 = P1;
	cc =R0==R1;
	if !cc jump .L4;
	jump.s .L5;
.L2:
	R0 = P2;
	cc =R3==R0;
	if cc jump .L5;
	P1 = R3;
	R1 = R0 + R1;
	jump.s .L6;
.L7:
	R0 = B [P2++] (X);
	B [P1++] = R0;
.L6:
	R0 = P2;
	cc =R0==R1;
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
	R3 = B [P1++] (X);
	B [P2++] = R3;
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
	R3 = B [P2++] (Z);
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
	R2 = B [P1++] (Z);
	R1 = B [P2++] (Z);
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
	R2 = B [P2++] (X);
	B [P1++] = R2;
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
	[--sp] = ( r7:7 );

	LINK 0;
	R3 = R1;
	R1 = R2;
	R3 = R3.B (Z);
	P2 = R1;
	P2 += -1;
	P1 = R0;
	P2 = P1 + P2;
	R2 = R0;
	R2 += -1;
	jump.s .L30;
.L32:
	R7 = B [P2--] (Z);
	cc =R3==R7;
	if !cc jump .L30;
	R0 = R0 + R1;
	jump.s .L31;
.L30:
	R1 += -1;
	R7 = P2;
	cc =R7==R2;
	if !cc jump .L32;
	R0 = 0 (X);
.L31:
	UNLINK;
	( r7:7 ) = [sp++];

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
	jump.s .L35;
.L36:
	R2 = R3;
	B [P2++] = R2;
.L35:
	R2 = P2;
	cc =R2==R1;
	if !cc jump .L36;
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
.L38:
	R0 = P2;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R1 = B [P2+-1] (X);
	cc =R1==0;
	if !cc jump .L38;
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
.L42:
	R1 = P2;
	R2 = B [P2++] (X);
	cc =R2==0;
	if cc jump .L41;
	nop;
	nop;
	nop;
	R2 = B [P2+-1] (Z);
	cc =R0==R2;
	if !cc jump .L42;
.L41:
	R0 = R1;
	UNLINK;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	LINK 0;
	P2 = R0;
.L46:
	R0 = P2;
	R2 = B [P2++] (X);
	cc =R1==R2;
	if cc jump .L45;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L46;
.L45:
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
.L51:
	P0 = P1;
	P5 = P2;
	R1 = B [P2++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if !cc jump .L50;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L51;
	nop;
	nop;
	nop;
.L50:
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
.L54:
	R1 = P2;
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L54;
	R0 = R1 - R0;
	UNLINK;
	rts;
	.size	_strlen, .-_strlen
	.align 4
.global _strncmp;
.type _strncmp, STT_FUNC;
_strncmp:
	[--sp] = ( p5:4 );

	LINK 0;
	P2 = R0;
	P0 = R1;
	P1 = R2;
	cc =P1==0;
	if cc jump .L60;
	P5 = P2 + P1;
	R0 = P5;
	LSETUP (.L62, .L63) LC1 = P1;
	jump.s .L59;
.L62:
	R2 = B [P2+-1] (Z);
	R1 = B [P0++] (Z);
	cc =R2==R1;
	if !cc jump .L58;
	nop;
.L59:
	P5 = P0;
	P4 = P2;
	R1 = B [P2++] (Z);
	cc =R1==0;
	if cc jump .L58;
	nop;
	nop;
	nop;
	R1 = B [P0] (Z);
	cc =R1==0;
	if cc jump .L58;
	nop;
	R1 = P2;
.L63:
	cc =R1==R0;
.L58:
	R0 = B [P4] (Z);
	R1 = B [P5] (Z);
	R0 = R0 - R1;
	jump.s .L57;
.L60:
	R0 = 0 (X);
.L57:
	UNLINK;
	( p5:4 ) = [sp++];

	rts;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	[--sp] = ( p5:5 );

	LINK 0;
	R3 = R0;
	P1 = R1;
	R0 = R2;
	P0 = R3;
	P5 = R0;
	P2 = P5 >> 1;
	P2 += 1;
	cc =R0<0;
	if !cc jump .L69;
	P2 = 1 (X);
.L69:
	LSETUP (.L66, .L68) LC1 = P2;
	jump.s .L65;
.L66:
	R1 = B [P0+1] (X);
	B [P1] = R1;
	R1 = B [P0] (X);
	B [P1+1] = R1;
	P1 += 2;
	P0 += 2;
.L65:
	R1 = R3 + R0;
	R2 = P0;
	R1 = R1 - R2;
.L68:
	cc =R1<=1;
	UNLINK;
	( p5:5 ) = [sp++];

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
	if cc jump .L74;
	R1 = 9 (X);
	cc =R0==R1;
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
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	LINK 0;
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L78;
	R1 = 127 (X);
	cc =R0==R1;
	if !cc jump .L79;
	R0 = 1 (X);
	jump.s .L77;
.L78:
	R0 = 1 (X);
	jump.s .L77;
.L79:
	R0 = 0 (X);
.L77:
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
	if cc jump .L86;
	R0 += -9;
	cc =R0<=4 (iu);
	if !cc jump .L87;
	R0 = 1 (X);
	jump.s .L85;
.L86:
	R0 = 1 (X);
	jump.s .L85;
.L87:
	R0 = 0 (X);
.L85:
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
	if cc jump .L91;
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L92;
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L93;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<=2 (iu);
	if !cc jump .L94;
	R0 = 1 (X);
	jump.s .L90;
.L91:
	R0 = 1 (X);
	jump.s .L90;
.L92:
	R0 = 1 (X);
	jump.s .L90;
.L93:
	R0 = 1 (X);
	jump.s .L90;
.L94:
	R0 = 0 (X);
.L90:
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
	if !cc jump .L97;
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L98;
.L97:
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L99;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L100;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L101;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L102;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	if cc jump .L103;
	R0 = 1 (X);
	jump.s .L98;
.L99:
	R0 = 1 (X);
	jump.s .L98;
.L100:
	R0 = 1 (X);
	jump.s .L98;
.L101:
	R0 = 1 (X);
	jump.s .L98;
.L102:
	R0 = 0 (X);
	jump.s .L98;
.L103:
	R0 = 0 (X);
.L98:
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
	if cc jump .L106;
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<=5 (iu);
	if !cc jump .L107;
	R0 = 1 (X);
	jump.s .L105;
.L106:
	R0 = 1 (X);
	jump.s .L105;
.L107:
	R0 = 0 (X);
.L105:
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
	if !cc jump .L112;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L113;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L116;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___subdf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L110;
.L112:
	R0 = [FP+16];
	R1 = [FP+20];
	jump.s .L110;
.L113:
	R0 = R6;
	R1 = R7;
	jump.s .L110;
.L116:
	R0 = 0 (X);
	R1 = 0 (X);
.L110:
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
	if !cc jump .L120;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L118;
	R1 = R7;
	R0 = R6;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L124;
	R1 = R7;
	R0 = R6;
	call ___subsf3;
	R7 = R0;
	jump.s .L118;
.L120:
	R7 = R6;
	jump.s .L118;
.L124:
	R7 = 0 (X);
.L118:
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
	if !cc jump .L129;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L126;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	R0 = R5;
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L127;
	R0 = R7;
	R0 >>>= 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L126;
	R6 = R4;
	R7 = R5;
	jump.s .L126;
.L127:
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L126;
	R6 = R4;
	R7 = R5;
	jump.s .L126;
.L129:
	R6 = R4;
	R7 = R5;
.L126:
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
	if !cc jump .L139;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L136;
	R1 = R7 >>> 31;
	R1 <<= 31;
	R0 = R6 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L137;
	R0 = R7 >>> 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L136;
	R7 = R6;
	jump.s .L136;
.L137:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L136;
	R7 = R6;
	jump.s .L136;
.L139:
	R7 = R6;
.L136:
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
	if !cc jump .L149;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L146;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	R0 = R5;
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L147;
	R0 = R7;
	R0 >>>= 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L146;
	R6 = R4;
	R7 = R5;
	jump.s .L146;
.L147:
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L146;
	R6 = R4;
	R7 = R5;
	jump.s .L146;
.L149:
	R6 = R4;
	R7 = R5;
.L146:
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
	if !cc jump .L159;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L156;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	R0 = R5;
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L157;
	R0 = R7;
	R0 >>>= 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L161;
	jump.s .L156;
.L157:
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L164;
	jump.s .L156;
.L159:
	R6 = R4;
	R7 = R5;
	jump.s .L156;
.L161:
	R6 = R4;
	R7 = R5;
	jump.s .L156;
.L164:
	R6 = R4;
	R7 = R5;
.L156:
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
	if !cc jump .L166;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L170;
	R1 = R6 >>> 31;
	R1 <<= 31;
	R0 = R7 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L167;
	R0 = R6 >>> 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L166;
	R7 = R6;
	jump.s .L166;
.L167:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L166;
	R7 = R6;
	jump.s .L166;
.L170:
	R7 = R6;
.L166:
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
	if !cc jump .L179;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L176;
	R1 = R7;
	R1 >>>= 31;
	R1 <<= 31;
	R0 = R5;
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L177;
	R0 = R7;
	R0 >>>= 31;
	R0 = R1;
	cc =R0==0;
	if cc jump .L181;
	jump.s .L176;
.L177:
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L184;
	jump.s .L176;
.L179:
	R6 = R4;
	R7 = R5;
	jump.s .L176;
.L181:
	R6 = R4;
	R7 = R5;
	jump.s .L176;
.L184:
	R6 = R4;
	R7 = R5;
.L176:
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
	jump.s .L186;
.L187:
	R1 = 63 (X);
	R1 = R0 & R1;
	P1.H = _digits;
	P1.L = _digits;
	P0 = R1;
	P1 = P1 + P0;
	R1 = B [P1] (X);
	B [P2++] = R1;
	R0 >>= 6;
.L186:
	cc =R0==0;
	if !cc jump .L187;
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
	if !cc jump .L191;
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L190;
.L191:
	R0 = [P1];
	[P2] = R0;
	[P2+4] = P1;
	[P1] = P2;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L190;
	P1 = R0;
	[P1+4] = P2;
.L190:
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
	if cc jump .L194;
	nop;
	nop;
	P1 = R0;
	R0 = [P2+4];
	[P1+4] = R0;
.L194:
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L193;
	nop;
	nop;
	P1 = R0;
	R0 = [P2];
	[P1] = R0;
.L193:
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
	jump.s .L197;
.L200:
	R1 = P3;
	R0 = R4;
	P2 = [FP+52];
	call (P2);
	P3 = P3 + P5;
	cc =R0==0;
	if !cc jump .L198;
	R0 = P5;
	R6 *= R0;
	R7 = R7 + R6;
	jump.s .L199;
.L198:
	R6 += 1;
.L197:
	cc =R6==R5;
	if !cc jump .L200;
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
.L199:
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
	jump.s .L202;
.L205:
	R1 = R5;
	R0 = R4;
	P2 = [FP+48];
	call (P2);
	R1 = P5;
	R5 = R5 + R1;
	cc =R0==0;
	if !cc jump .L203;
	R6 *= R1;
	R7 = R7 + R6;
	jump.s .L204;
.L203:
	R6 += 1;
.L202:
	R0 = P4;
	cc =R6==R0;
	if !cc jump .L205;
	R7 = 0 (X);
.L204:
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
.L208:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L208;
	nop;
	nop;
	nop;
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L214;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L215;
	R1 = 1 (X);
	jump.s .L209;
.L214:
	R1 = 0 (X);
.L209:
	P5 += 1;
	jump.s .L210;
.L215:
	R1 = 0 (X);
.L210:
	P2 = 0 (X);
	jump.s .L211;
.L212:
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
.L211:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L212;
	cc =R1==0;
	if !cc jump .L213;
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L213:
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
.L219:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L219;
	nop;
	nop;
	nop;
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L225;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L226;
	R1 = 1 (X);
	jump.s .L220;
.L225:
	R1 = 0 (X);
.L220:
	P5 += 1;
	jump.s .L221;
.L226:
	R1 = 0 (X);
.L221:
	P2 = 0 (X);
	jump.s .L222;
.L223:
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
.L222:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L223;
	cc =R1==0;
	if !cc jump .L224;
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L224:
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
.L230:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L230;
	nop;
	nop;
	nop;
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L236;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L237;
	R7 = 1 (X);
	jump.s .L231;
.L236:
	R7 = 0 (X);
.L231:
	P5 += 1;
	jump.s .L232;
.L237:
	R7 = 0 (X);
.L232:
	R0 = 0 (X);
	R1 = 0 (X);
	jump.s .L233;
.L234:
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
.L233:
	R2 = B [P5++] (X);
	R2 += -48;
	R3 = 9 (X);
	cc =R2<=R3 (iu);
	if cc jump .L234;
	cc =R7==0;
	if !cc jump .L238;
	R4 = 0 (X);
	R5 = 0 (X);
	R2 = R4 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R5 - R1;
	R3 = R3 - R0;
	jump.s .L235;
.L238:
	R2 = R0;
	R3 = R1;
.L235:
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
	jump.s .L241;
.L245:
	R6 = R7 >> 1;
	R0 = P5;
	R6 *= R0;
	R6 = R5 + R6;
	R1 = R6;
	R0 = R4;
	P2 = [FP+44];
	call (P2);
	cc =R0<0;
	if !cc jump .L242;
	R7 >>= 1;
	jump.s .L241;
.L242:
	cc =R0<=0;
	if cc jump .L244;
	R0 = P5;
	R5 = R6 + R0;
	R0 = R7 >> 1;
	R7 += -1;
	R7 = R7 - R0;
.L241:
	cc =R7==0;
	if !cc jump .L245;
	R6 = 0 (X);
.L244:
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
	jump.s .L248;
.L251:
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
	if cc jump .L249;
	cc =R0<=0;
	if cc jump .L250;
	R0 = P5;
	R5 = R7 + R0;
	R6 += -1;
.L250:
	R6 >>>= 1;
.L248:
	cc =R6==0;
	if !cc jump .L251;
	R7 = 0 (X);
.L249:
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
	if !cc jump .L255;
	R6 = 0 (X);
	R7 = 0 (X);
	R2 = R6 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R1;
	R3 = R3 - R0;
	R0 = R2;
	R1 = R3;
.L255:
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
	if !cc jump .L261;
	R6 = 0 (X);
	R7 = 0 (X);
	R2 = R6 - R0; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R1;
	R3 = R3 - R0;
	R0 = R2;
	R1 = R3;
.L261:
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
.L266:
	P1 = P2;
	R1 = [P2++];
	cc =R1==0;
	if cc jump .L265;
	nop;
	nop;
	nop;
	R1 = [P2+-4];
	cc =R0==R1;
	if !cc jump .L266;
	nop;
	nop;
	nop;
.L265:
	R0 = [P1];
	cc =R0==0;
	if cc jump .L268;
	R0 = P1;
	jump.s .L267;
.L268:
	R0 = 0 (X);
.L267:
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
.L272:
	P0 = P2;
	P5 = P1;
	R1 = [P1++];
	R0 = [P2++];
	cc =R1==R0;
	if !cc jump .L271;
	nop;
	nop;
	nop;
	R0 = [P1+-4];
	cc =R0==0;
	if cc jump .L271;
	nop;
	nop;
	nop;
	R0 = [P2+-4];
	cc =R0==0;
	if !cc jump .L272;
	nop;
	nop;
	nop;
.L271:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L274;
	nop;
	nop;
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L273;
.L274:
	R0 = -1 (X);
.L273:
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
.L277:
	R1 = [P2++];
	[P1++] = R1;
	R1 = [P1+-4];
	cc =R1==0;
	if !cc jump .L277;
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
.L280:
	R0 = P2;
	R2 = [P2++];
	cc =R2==0;
	if !cc jump .L280;
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
	jump.s .L283;
.L285:
	R0 += -1;
.L283:
	P0 = P1;
	P5 = P2;
	cc =R0==0;
	if cc jump .L284;
	nop;
	nop;
	nop;
	R2 = [P2];
	R1 = [P1];
	cc =R2==R1;
	if !cc jump .L284;
	nop;
	nop;
	nop;
	R1 = [P2++];
	cc =R1==0;
	if cc jump .L284;
	nop;
	nop;
	nop;
	R1 = [P1++];
	cc =R1==0;
	if !cc jump .L285;
.L284:
	cc =R0==0;
	if cc jump .L287;
	nop;
	nop;
	nop;
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L288;
	nop;
	nop;
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L286;
.L287:
	R0 = 0 (X);
	jump.s .L286;
.L288:
	R0 = -1 (X);
.L286:
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
	jump.s .L290;
.L292:
	R0 += -1;
.L290:
	R1 = P2;
	cc =R0==0;
	if cc jump .L291;
	nop;
	nop;
	nop;
	R2 = [P2++];
	cc =R3==R2;
	if !cc jump .L292;
.L291:
	cc =R0==0;
	if cc jump .L294;
	R0 = R1;
	jump.s .L293;
.L294:
	R0 = 0 (X);
.L293:
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
	jump.s .L296;
.L298:
	R0 += -1;
.L296:
	P0 = P2;
	P5 = P1;
	cc =R0==0;
	if cc jump .L297;
	nop;
	nop;
	nop;
	R2 = [P1++];
	R1 = [P2++];
	cc =R2==R1;
	if cc jump .L298;
.L297:
	cc =R0==0;
	if cc jump .L300;
	nop;
	nop;
	nop;
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L301;
	nop;
	nop;
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L299;
.L300:
	R0 = 0 (X);
	jump.s .L299;
.L301:
	R0 = -1 (X);
.L299:
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
	jump.s .L303;
.L304:
	R1 = [P2++];
	[P1++] = R1;
.L303:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L304;
	R0 = R3;
	UNLINK;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	[--sp] = ( p5:5 );

	LINK 0;
	R3 = R0;
	P1 = R1;
	R0 = R2;
	R1 = P1;
	cc =R3==R1;
	if cc jump .L306;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	if cc jump .L307;
	P2 = R3;
	jump.s .L308;
.L307:
	R0 += -1;
	P0 = R0;
	P2 = P0 << 2;
	P1 = P1 + P2;
	P5 = R3;
	P2 = P5 + P2;
	R1 = R3;
	R1 += -4;
	R2 = P2;
	R0 = R2 - R1;
	P5 = R0;
	P0 = P5 >> 2;
	P0 += 1;
	LSETUP (.L310, .L312) LC1 = P0;
	jump.s .L309;
.L310:
	R0 = [P1--];
	[P2--] = R0;
.L309:
	R0 = P2;
.L312:
	cc =R0==R1;
	jump.s .L306;
.L311:
	R1 = [P1++];
	[P2++] = R1;
.L308:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L311;
.L306:
	R0 = R3;
	UNLINK;
	( p5:5 ) = [sp++];

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
	jump.s .L314;
.L315:
	[P2++] = R1;
.L314:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L315;
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
	cc =R0<R1 (iu);
	if !cc jump .L317;
	P1 = R2;
	P2 = P2 + P1;
	R1 = R1 + R2;
	P2 += -1;
	P1 = R1;
	P1 += -1;
	R2 = ~R2;
	R2 = R2 + R1;
	jump.s .L318;
.L319:
	R0 = B [P2--] (X);
	B [P1--] = R0;
.L318:
	R0 = P1;
	cc =R0==R2;
	if !cc jump .L319;
	jump.s .L316;
.L317:
	R0 = P2;
	cc =R0==R1;
	if cc jump .L316;
	P1 = R1;
	R2 = R0 + R2;
	jump.s .L321;
.L322:
	R0 = B [P2++] (X);
	B [P1++] = R0;
.L321:
	R0 = P2;
	cc =R0==R2;
	if !cc jump .L322;
.L316:
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
	P2 = 33 (X);
	LSETUP (.L340, .L341) LC1 = P2;
	jump.s .L337;
.L340:
	R2 = R1;
	R2 >>= R0;
	cc = !BITTST (R2,0);
	if cc jump .L338;
	R0 += 1;
	jump.s .L339;
.L338:
	R0 += 1;
.L337:
	R2 = 32 (X);
.L341:
	cc =R0==R2;
	R0 = 0 (X);
.L339:
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
	if cc jump .L346;
	R0 = 1 (X);
	jump.s .L344;
.L345:
	R1 >>>= 1;
	R0 += 1;
.L344:
	cc = !BITTST (R1,0);
	if cc jump .L345;
	jump.s .L343;
.L346:
	R0 = 0 (X);
.L343:
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
	if cc jump .L350;
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L353;
	R0 = 1 (X);
	jump.s .L348;
.L350:
	R0 = 1 (X);
	jump.s .L348;
.L353:
	R0 = 0 (X);
.L348:
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
	if cc jump .L357;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L360;
	R0 = 1 (X);
	jump.s .L355;
.L357:
	R0 = 1 (X);
	jump.s .L355;
.L360:
	R0 = 0 (X);
.L355:
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
	if cc jump .L364;
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L367;
	R0 = 1 (X);
	jump.s .L362;
.L364:
	R0 = 1 (X);
	jump.s .L362;
.L367:
	R0 = 0 (X);
.L362:
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
	if !cc jump .L370;
	R1 = R7;
	R0 = R7;
	call ___addsf3;
	R1 = R0;
	R0 = R7;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L370;
	cc =R6<0;
	if !cc jump .L375;
	R5 = 63 (X);
	R5 <<= 24;
	jump.s .L374;
.L375:
	R5 = 1 (X);
	R5 <<= 30;
.L374:
	cc = !BITTST (R6,0);
	if cc jump .L373;
	R1 = R5;
	R0 = R7;
	call ___mulsf3;
	R7 = R0;
.L373:
	R0 = R6 >> 31;
	R6 = R0 + R6;
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L370;
	R1 = R5;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L374;
.L370:
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
	if !cc jump .L378;
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
	if cc jump .L378;
	cc =R5<0;
	if !cc jump .L383;
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L382;
.L383:
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
.L382:
	cc = !BITTST (R5,0);
	if cc jump .L381;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
.L381:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L378;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
	jump.s .L382;
.L378:
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
	if !cc jump .L386;
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
	if cc jump .L386;
	cc =R5<0;
	if !cc jump .L391;
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L390;
.L391:
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
.L390:
	cc = !BITTST (R5,0);
	if cc jump .L389;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
.L389:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L386;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
	jump.s .L390;
.L386:
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
	jump.s .L394;
.L395:
	R2 = B [P2++] (X);
	R3 = B [P1++] (X);
	R2 = R2 ^ R3;
	B [P1+-1] = R2;
.L394:
	R2 = P2;
	cc =R2==R1;
	if !cc jump .L395;
	UNLINK;
	rts;
	.size	_memxor, .-_memxor
	.align 4
.global _strncat;
.type _strncat, STT_FUNC;
_strncat:
	[--sp] = ( r7:5 );

	LINK 12;
	R5 = R0;
	P1 = R1;
	R6 = P1;
	R7 = R2;
	R0 = R5;
	call _strlen;
	P2 = R0;
	P1 = R6;
	P0 = R5;
	P2 = P0 + P2;
	jump.s .L397;
.L399:
	R7 += -1;
.L397:
	P0 = P2;
	cc =R7==0;
	if cc jump .L398;
	nop;
	nop;
	nop;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L399;
.L398:
	cc =R7==0;
	if !cc jump .L400;
	R0 = 0 (X);
	B [P0] = R0;
.L400:
	R0 = R5;
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
	jump.s .L402;
.L404:
	R0 += 1;
.L402:
	cc =R0==R1;
	if cc jump .L403;
	nop;
	nop;
	nop;
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L404;
.L403:
	UNLINK;
	rts;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	LINK 0;
	P2 = R0;
	jump.s .L406;
.L408:
	R3 = B [P1+-1] (X);
	R2 = B [P2+-1] (X);
	cc =R3==R2;
	if cc jump .L407;
	nop;
	nop;
	nop;
.L409:
	R2 = B [P1++] (X);
	cc =R2==0;
	if !cc jump .L408;
	nop;
	nop;
.L406:
	R0 = P2;
	R2 = B [P2++] (X);
	cc =R2==0;
	if cc jump .L411;
	P1 = R1;
	jump.s .L409;
.L411:
	R0 = 0 (X);
.L407:
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
	R1 = 0 (X);
.L414:
	R2 = P2;
	R3 = B [P2++] (X);
	cc =R0==R3;
	if !cc jump .L413;
	nop;
	nop;
	R1 = R2;
.L413:
	R2 = B [P2+-1] (X);
	cc =R2==0;
	if !cc jump .L414;
	R0 = R1;
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
	if cc jump .L418;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
	jump.s .L419;
.L420:
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L418;
	R7 += 1;
.L419:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R7==0;
	if !cc jump .L420;
.L418:
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
	if !cc jump .L424;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L426;
.L424:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L434;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+16];
	R1 = [FP+20];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L435;
.L426:
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	BITTGL (R1, 31);
	jump.s .L427;
.L434:
	R0 = [FP+8];
	R1 = [FP+12];
	jump.s .L427;
.L435:
	R0 = [FP+8];
	R1 = [FP+12];
.L427:
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
	if cc jump .L437;
	cc =R1<R6 (iu);
	if cc jump .L441;
	P5 = R0;
	jump.s .L443;
.L439:
	R1 = B [P5++] (X);
	R0 = B [P4] (X);
	cc =R1==R0;
	if !cc jump .L443;
	R0 = P4;
	R0 += 1;
	R1 = R6;
	R1 += -1;
	R2 = R1;
	R1 = R0;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if cc jump .L442;
.L443:
	R7 = P5;
	cc =R7<=R5 (iu);
	if cc jump .L439;
	R0 = 0 (X);
	jump.s .L437;
.L441:
	R0 = 0 (X);
	jump.s .L437;
.L442:
	R0 = R7;
.L437:
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
	if !cc jump .L462;
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	BITTGL (R1, 31);
	[FP+20] = R0;
	[FP+24] = R1;
	R6 = 1 (X);
	jump.s .L446;
.L462:
	R6 = 0 (X);
.L446:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L457;
	jump.s .L463;
.L450:
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
	jump.s .L448;
.L457:
	R7 = 0 (X);
.L448:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L450;
	jump.s .L451;
.L463:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L464;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L459;
	R7 = 0 (X);
	jump.s .L451;
.L454:
	R7 += -1;
	R0 = [FP+24];
	[SP+12] = R0;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___adddf3;
	[FP+20] = R0;
	[FP+24] = R1;
	jump.s .L453;
.L459:
	R7 = 0 (X);
.L453:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L454;
	jump.s .L451;
.L464:
	R7 = 0 (X);
.L451:
	[P5] = R7;
	cc =R6==0;
	if cc jump .L455;
	R0 = 0 (X);
	R1 = 0 (X);
	R0 = [FP+20];
	R1 = [FP+24];
	BITTGL (R1, 31);
	[FP+20] = R0;
	[FP+24] = R1;
.L455:
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
	jump.s .L466;
.L469:
	P0 = 1 (X);
	P1 = 0 (X);
	R0 = P0;
	R4 = R2 & R0;
	R5 = 0 (X);
	cc =R4==0;
	if cc jump .L467;
	R1 = P2;
	R4 = R1 + R6; cc = ac0;
	R0 = CC;
	R1 = P3;
	R5 = R1 + R7;
	R5 = R5 + R0;
	P2 = R4;
	P3 = R5;
.L467:
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
.L466:
	R5 = R2;
	R5 = R5 | R3;
	cc =R5==0;
	if !cc jump .L469;
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
	P1 = 33 (X);
	LSETUP (.L481, .L485) LC1 = P1;
	jump.s .L471;
.L481:
	cc =R1<0;
	if cc jump .L483;
	R1 <<= 1;
	R2 <<= 1;
.L471:
	cc =R1<R0 (iu);
	if !cc jump .L478;
	R3 += -1;
.L485:
	cc =R3==0;
	jump.s .L484;
.L483:
	R3 = 0 (X);
	jump.s .L475;
.L476:
	cc =R0<R1 (iu);
	if cc jump .L474;
	R0 = R0 - R1;
	R3 = R3 | R2;
.L474:
	R2 >>= 1;
	R1 >>= 1;
	jump.s .L475;
.L478:
	R3 = 0 (X);
	jump.s .L475;
.L484:
	R3 = 0 (X);
.L475:
	cc =R2==0;
	if !cc jump .L476;
	cc =P2==0;
	if !cc jump .L477;
	R0 = R3;
.L477:
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
	if !cc jump .L487;
	R0 = ~R0;
.L487:
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L489;
	R0 = R1;
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
	jump.s .L488;
.L489:
	R0 = 7 (X);
.L488:
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
	if !cc jump .L491;
	R2 = 0 (X);
	R3 = 0 (X);
	R2 = ~R0;
	R3 = ~R1;
	R0 = R2;
	R1 = R3;
.L491:
	R2 = R0;
	R2 = R2 | R1;
	cc =R2==0;
	if cc jump .L495;
	call ___clzdi2;
	R0 += -1;
	jump.s .L493;
.L495:
	R0 = 63 (X);
.L493:
	UNLINK;
	rts;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	LINK 0;
	R2 = 0 (X);
	jump.s .L497;
.L499:
	cc = !BITTST (R0,0);
	if cc jump .L498;
	R2 = R2 + R1;
.L498:
	R0 >>= 1;
	R1 <<= 1;
.L497:
	cc =R0==0;
	if !cc jump .L499;
	R0 = R2;
	UNLINK;
	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:6, p5:4 );

	[--SP] = R4;
	LINK 0;
	R7 = R2;
	R2 = R7 >> 3;
	R6 = -8 (X);
	R6 = R7 & R6;
	cc =R0<R1 (iu);
	if cc jump .L501;
	R3 = R1 + R7;
	cc =R3<R0 (iu);
	if !cc jump .L502;
.L501:
	P4 = R1;
	P5 = R0;
	P0 = 0 (X);
	P1 = R2;
	P1 += 1;
	LSETUP (.L505, .L510) LC1 = P1;
	jump.s .L503;
.L502:
	R7 += -1;
	R2 = R1 + R7;
	P1 = R2;
	R0 = R0 + R7;
	P2 = R0;
	R1 += -1;
	jump.s .L504;
.L505:
	R3 = [P4];
	R4 = [P4+4];
	[P5] = R3;
	[P5+4] = R4;
	P0 += 1;
	P4 += 8;
	P5 += 8;
.L503:
	R4 = P0;
.L510:
	cc =R4==R2;
	R1 = R1 + R6;
	P1 = R1;
	R0 = R0 + R6;
	P2 = R0;
	jump.s .L506;
.L507:
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R6 += 1;
.L506:
	cc =R7<=R6 (iu);
	if !cc jump .L507;
	jump.s .L500;
.L509:
	R0 = B [P1--] (X);
	B [P2--] = R0;
.L504:
	R0 = P1;
	cc =R0==R1;
	if !cc jump .L509;
.L500:
	UNLINK;
	R4 = [SP++];
	( r7:6, p5:4 ) = [sp++];

	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	[--sp] = ( r7:7, p5:5 );

	LINK 0;
	R3 = R0;
	P2 = R1;
	R0 = R2;
	P0 = R0;
	P1 = P0 >> 1;
	R1 = P2;
	cc =R3<R1 (iu);
	if cc jump .L512;
	R1 = R1 + R0;
	cc =R1<R3 (iu);
	if !cc jump .L513;
.L512:
	P0 = P2;
	I0 = R3;
	P1 = P2 + (P1 << 1);
	R2 = P1;
	R7 = P0;
	R1 = R2 - R7;
	P5 = R1;
	P1 = P5 >> 1;
	P1 += 1;
	LSETUP (.L516, .L519) LC1 = P1;
	jump.s .L514;
.L513:
	R0 += -1;
	P1 = R0;
	P0 = P2 + P1;
	R3 = R3 + R0;
	P1 = R3;
	P2 += -1;
	jump.s .L515;
.L516:
	R1 = W [P0++] (X);
	W [I0++] = R1.L;
.L514:
	R1 = P0;
.L519:
	cc =R1==R2;
	cc = !BITTST (R0,0);
	if cc jump .L511;
	R0 += -1;
	P0 = R0;
	P2 = P2 + P0;
	R3 = R3 + R0;
	P1 = R3;
	R0 = B [P2] (X);
	B [P1] = R0;
	jump.s .L511;
.L518:
	R0 = B [P0--] (X);
	B [P1--] = R0;
.L515:
	cc =P0==P2;
	if !cc jump .L518;
.L511:
	UNLINK;
	( r7:7, p5:5 ) = [sp++];

	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( r7:6, p5:4 );

	LINK 0;
	P2 = R1;
	R1 = R2;
	P0 = R1;
	P1 = P0 >> 2;
	R2 = -4 (X);
	R2 = R1 & R2;
	R3 = P2;
	cc =R0<R3 (iu);
	if cc jump .L521;
	R3 = R3 + R1;
	cc =R3<R0 (iu);
	if !cc jump .L522;
.L521:
	P0 = P2;
	P5 = R0;
	P1 = P2 + (P1 << 2);
	R7 = P1;
	R6 = P0;
	R3 = R7 - R6;
	P4 = R3;
	P1 = P4 >> 2;
	P1 += 1;
	LSETUP (.L525, .L530) LC1 = P1;
	jump.s .L523;
.L522:
	R1 += -1;
	P1 = R1;
	P0 = P2 + P1;
	R0 = R0 + R1;
	P1 = R0;
	P2 += -1;
	jump.s .L524;
.L525:
	R3 = [P0++];
	[P5++] = R3;
.L523:
	R3 = P0;
.L530:
	cc =R3==R7;
	P0 = R2;
	P2 = P2 + P0;
	R0 = R0 + R2;
	P1 = R0;
	jump.s .L526;
.L527:
	R0 = B [P2++] (X);
	B [P1++] = R0;
	R2 += 1;
.L526:
	cc =R1<=R2 (iu);
	if !cc jump .L527;
	jump.s .L520;
.L529:
	R0 = B [P0--] (X);
	B [P1--] = R0;
.L524:
	cc =P0==P2;
	if !cc jump .L529;
.L520:
	UNLINK;
	( r7:6, p5:4 ) = [sp++];

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
	P2 = 17 (X);
	LSETUP (.L540, .L541) LC1 = P2;
	jump.s .L538;
.L540:
	R2 = R1.L (Z);
	R3 = 15 (X);
	R3 = R3 - R0;
	R2 >>>= R3;
	cc = !BITTST (R2,0);
	if !cc jump .L539;
	R0 += 1;
.L538:
	R2 = 16 (X);
.L541:
	cc =R0==R2;
.L539:
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
	P2 = 17 (X);
	LSETUP (.L545, .L546) LC1 = P2;
	jump.s .L543;
.L545:
	R2 = R1.L (Z);
	R2 >>>= R0;
	cc = !BITTST (R2,0);
	if !cc jump .L544;
	R0 += 1;
.L543:
	R2 = 16 (X);
.L546:
	cc =R0==R2;
.L544:
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
	if cc jump .L552;
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L550;
.L552:
	R0 = R7;
	call ___fixsfsi;
.L550:
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
	P2 = 17 (X);
	LSETUP (.L556, .L557) LC1 = P2;
	jump.s .L554;
.L556:
	R3 = R2.L (Z);
	R3 >>>= R1;
	cc = !BITTST (R3,0);
	if cc jump .L555;
	R0 += 1;
.L555:
	R1 += 1;
.L554:
	R3 = 16 (X);
.L557:
	cc =R1==R3;
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
	P2 = 17 (X);
	LSETUP (.L561, .L562) LC1 = P2;
	jump.s .L559;
.L561:
	R3 = R2.L (Z);
	R3 >>>= R0;
	cc = !BITTST (R3,0);
	if cc jump .L560;
	R1 += 1;
.L560:
	R0 += 1;
.L559:
	R3 = 16 (X);
.L562:
	cc =R0==R3;
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
	jump.s .L564;
.L566:
	cc = !BITTST (R0,0);
	if cc jump .L565;
	R2 = R2 + R1;
.L565:
	R0 >>= 1;
	R1 <<= 1;
.L564:
	cc =R0==0;
	if !cc jump .L566;
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
	if cc jump .L572;
	R0 = 0 (X);
	jump.s .L569;
.L571:
	cc = !BITTST (R1,0);
	if cc jump .L570;
	R0 = R0 + R2;
.L570:
	R2 <<= 1;
	R1 >>= 1;
.L569:
	cc =R1==0;
	if !cc jump .L571;
	jump.s .L568;
.L572:
	R0 = 0 (X);
.L568:
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
	P1 = 33 (X);
	LSETUP (.L584, .L588) LC1 = P1;
	jump.s .L574;
.L584:
	cc =R1<0;
	if cc jump .L586;
	R1 <<= 1;
	R2 <<= 1;
.L574:
	cc =R1<R0 (iu);
	if !cc jump .L581;
	R3 += -1;
.L588:
	cc =R3==0;
	jump.s .L587;
.L586:
	R3 = 0 (X);
	jump.s .L578;
.L579:
	cc =R0<R1 (iu);
	if cc jump .L577;
	R0 = R0 - R1;
	R3 = R3 | R2;
.L577:
	R2 >>= 1;
	R1 >>= 1;
	jump.s .L578;
.L581:
	R3 = 0 (X);
	jump.s .L578;
.L587:
	R3 = 0 (X);
.L578:
	cc =R2==0;
	if !cc jump .L579;
	cc =P2==0;
	if !cc jump .L580;
	R0 = R3;
.L580:
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
	if cc jump .L591;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if !cc jump .L592;
	R0 = 0 (X);
	jump.s .L590;
.L591:
	R0 = -1 (X);
	jump.s .L590;
.L592:
	R0 = 1 (X);
.L590:
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
	if cc jump .L595;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L596;
	R0 = 0 (X);
	jump.s .L594;
.L595:
	R0 = -1 (X);
	jump.s .L594;
.L596:
	R0 = 1 (X);
.L594:
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
	if !cc jump .L606;
	R0 = -R0;
	P2 = 1 (X);
	jump.s .L600;
.L606:
	P2 = 0 (X);
.L600:
	R2 = 33 (X);
	R1 = 0 (X);
	jump.s .L601;
.L604:
	cc = !BITTST (R0,0);
	if cc jump .L602;
	R1 = R1 + R3;
.L602:
	R3 <<= 1;
	R0 >>>= 1;
.L601:
	cc =R0==0;
	if cc jump .L603;
	R2 += -1;
	R7 = R2.B (Z);
	cc =R7==0;
	if !cc jump .L604;
.L603:
	cc =P2==0;
	if cc jump .L605;
	R1 = -R1;
.L605:
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
	if !cc jump .L612;
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L609;
.L612:
	R7 = 0 (X);
.L609:
	cc =R1<0;
	if !cc jump .L610;
	R1 = -R1;
	BITTGL (R7, 0);
.L610:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L611;
	R0 = -R0;
.L611:
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
	if !cc jump .L617;
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L614;
.L617:
	R7 = 0 (X);
.L614:
	cc =R1<0;
	if !cc jump .L615;
	R1 = -R1;
.L615:
	R2 = 1 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L616;
	R0 = -R0;
.L616:
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
	P1 = 17 (X);
	LSETUP (.L629, .L633) LC1 = P1;
	jump.s .L619;
.L629:
	R7 = R1.L (X);
	cc =R7<0;
	if cc jump .L631;
	R1 <<= 1;
	R2 <<= 1;
.L619:
	R7 = R1.L (Z);
	R6 = R0.L (Z);
	cc =R7<R6 (iu);
	if !cc jump .L626;
	R3 += -1;
.L633:
	cc =R3==0;
	jump.s .L632;
.L631:
	R3 = 0 (X);
	jump.s .L623;
.L624:
	R7 = R0.L (Z);
	R6 = R1.L (Z);
	cc =R7<R6 (iu);
	if cc jump .L622;
	R0 = R0 - R1;
	R3 = R3 | R2;
.L622:
	R2 <<= 16;
	R2 >>= 17;
	R1 <<= 16;
	R1 >>= 17;
	jump.s .L623;
.L626:
	R3 = 0 (X);
	jump.s .L623;
.L632:
	R3 = 0 (X);
.L623:
	R7 = R2.L (Z);
	cc =R7==0;
	if !cc jump .L624;
	cc =P2==0;
	if !cc jump .L625;
	R0 = R3;
.L625:
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
	P1 = 33 (X);
	LSETUP (.L645, .L649) LC1 = P1;
	jump.s .L635;
.L645:
	cc =R1<0;
	if cc jump .L647;
	R1 <<= 1;
	R2 <<= 1;
.L635:
	cc =R1<R0 (iu);
	if !cc jump .L642;
	R3 += -1;
.L649:
	cc =R3==0;
	jump.s .L648;
.L647:
	R3 = 0 (X);
	jump.s .L639;
.L640:
	cc =R0<R1 (iu);
	if cc jump .L638;
	R0 = R0 - R1;
	R3 = R3 | R2;
.L638:
	R2 >>= 1;
	R1 >>= 1;
	jump.s .L639;
.L642:
	R3 = 0 (X);
	jump.s .L639;
.L648:
	R3 = 0 (X);
.L639:
	cc =R2==0;
	if !cc jump .L640;
	cc =P2==0;
	if !cc jump .L641;
	R0 = R3;
.L641:
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
	if cc jump .L651;
	R2 = 0 (X);
	R3 = 0 (X);
	R1 = P0;
	R0 += -32;
	R1 <<= R0;
	R3 = R1;
	jump.s .L652;
.L651:
	cc =R0==0;
	if cc jump .L654;
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
.L652:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L653;
.L654:
	R2 = I0;
	R3 = I1;
	R0 = R2;
	R1 = R3;
	[FP+-8] = R0;
	[FP+-4] = R1;
.L653:
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
	if cc jump .L656;
	R1 = P1;
	R2 = 0 (X);
	R3 = 0 (X);
	R3 = R1 >>> 31;
	R0 += -32;
	R1 >>>= R0;
	R2 = R1;
	jump.s .L657;
.L656:
	cc =R0==0;
	if cc jump .L659;
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
.L657:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L658;
.L659:
	R0 = I0;
	R1 = I1;
	R2 = R0;
	R3 = R1;
	[FP+-8] = R2;
	[FP+-4] = R3;
.L658:
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
	if !cc jump .L667;
	R1 = 16 (X);
	jump.s .L663;
.L667:
	R1 = 0 (X);
.L663:
	R2 = 16 (X);
	R2 = R2 - R1;
	R0 >>= R2;
	R2 = 65280 (Z);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L668;
	R2 = 8 (X);
	jump.s .L664;
.L668:
	R2 = 0 (X);
.L664:
	R3 = 8 (X);
	R3 = R3 - R2;
	R0 >>= R3;
	R1 = R1 + R2;
	R2 = 240 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L669;
	R2 = 4 (X);
	jump.s .L665;
.L669:
	R2 = 0 (X);
.L665:
	R3 = 4 (X);
	R3 = R3 - R2;
	R0 >>= R3;
	R1 = R1 + R2;
	R2 = 12 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L670;
	R3 = 2 (X);
	jump.s .L666;
.L670:
	R3 = 0 (X);
.L666:
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
	if cc jump .L673;
	P2 = R1;
	P1 = R3;
	cc =P2<=P1;
	if !cc jump .L674;
	P2 = R0;
	P1 = R2;
	cc =P2<P1 (iu);
	if cc jump .L675;
	cc =R0<=R2 (iu);
	if !cc jump .L676;
	P2 = 1 (X);
	jump.s .L672;
.L673:
	P2 = 0 (X);
	jump.s .L672;
.L674:
	P2 = 2 (X);
	jump.s .L672;
.L675:
	P2 = 0 (X);
	jump.s .L672;
.L676:
	P2 = 2 (X);
.L672:
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
	if !cc jump .L683;
	R1 = 16 (X);
	jump.s .L679;
.L683:
	R1 = 0 (X);
.L679:
	R0 >>= R1;
	R2 = R0.B (Z);
	cc =R2==0;
	if !cc jump .L684;
	R2 = 8 (X);
	jump.s .L680;
.L684:
	R2 = 0 (X);
.L680:
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 15 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L685;
	R2 = 4 (X);
	jump.s .L681;
.L685:
	R2 = 0 (X);
.L681:
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 3 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L686;
	R2 = 2 (X);
	jump.s .L682;
.L686:
	R2 = 0 (X);
.L682:
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
	if cc jump .L688;
	R2 = 0 (X);
	R3 = 0 (X);
	R1 = P1;
	R0 += -32;
	R2 = R1;
	R2 >>= R0;
	jump.s .L689;
.L688:
	cc =R0==0;
	if cc jump .L691;
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
.L689:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L690;
.L691:
	R0 = I0;
	R1 = I1;
	R2 = R0;
	R3 = R1;
	[FP+-8] = R2;
	[FP+-4] = R3;
.L690:
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
.L702:
	R1 = P5;
	cc = !BITTST (R1,0);
	if cc jump .L700;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
.L700:
	R0 = P5;
	R0 >>= 31;
	R1 = P5;
	R0 = R0 + R1;
	R0 >>>= 1;
	P5 = R0;
	cc =P5==0;
	if cc jump .L701;
	R0 = R5;
	[SP+12] = R0;
	R2 = R4;
	R0 = R4;
	R1 = R5;
	call ___muldf3;
	R4 = R0;
	R5 = R1;
	jump.s .L702;
.L701:
	cc =P4==0;
	if cc jump .L704;
	R0 = R7;
	[SP+12] = R0;
	R2 = R6;
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L703;
.L704:
	[FP+-8] = R6;
	[FP+-4] = R7;
.L703:
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
.L708:
	cc = !BITTST (R6,0);
	if cc jump .L706;
	R1 = R5;
	R0 = R7;
	call ___mulsf3;
	R7 = R0;
.L706:
	R0 = R6 >> 31;
	R6 = R0 + R6;
	R6 >>>= 1;
	cc =R6==0;
	if cc jump .L707;
	R1 = R5;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
	jump.s .L708;
.L707:
	cc =R4==0;
	if cc jump .L709;
	R1 = R7;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R7 = R0;
.L709:
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
	if cc jump .L713;
	P2 = R1;
	P1 = R3;
	cc =P2<=P1 (iu);
	if !cc jump .L714;
	P2 = R0;
	P1 = R2;
	cc =P2<P1 (iu);
	if cc jump .L715;
	cc =R0<=R2 (iu);
	if !cc jump .L716;
	P2 = 1 (X);
	jump.s .L712;
.L713:
	P2 = 0 (X);
	jump.s .L712;
.L714:
	P2 = 2 (X);
	jump.s .L712;
.L715:
	P2 = 0 (X);
	jump.s .L712;
.L716:
	P2 = 2 (X);
.L712:
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
