.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	LINK 0;
	R3 = R0;
	P2 = R1;
	cc =R0<=R1 (iu);
	if cc jump .L2 (bp);
	P1 = R2;
	P2 = P2 + P1;
	R1 = R0 + R2;
	P2 += -1;
	P1 = R1;
	P1 += -1;
	R0 = ~R2;
	R0 = R0 + R1;
	jump.s .L3;
.L4:
	nop;
	R1 = B [P2--] (X);
	B [P1--] = R1;
.L3:
	R1 = P1;
	cc =R1==R0;
	if !cc jump .L4 (bp);
	jump.s .L5;
.L2:
	cc =R0==R1;
	if cc jump .L5;
	P1 = R0;
	R0 = R1 + R2;
	jump.s .L6;
.L7:
	nop;
	R1 = B [P2++] (X);
	B [P1++] = R1;
.L6:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L7 (bp);
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
	R0 = [FP+20];
	R3 = R2.B (Z);
	jump.s .L9;
.L11:
	R0 += -1;
.L9:
	R2 = P2;
	cc =R0==0;
	if cc jump .L10;
	nop;
	nop;
	nop;
	R1 = B [P1++] (X);
	B [P2] = R1;
	R1 = B [P2++] (Z);
	cc =R3==R1;
	if !cc jump .L11 (bp);
.L10:
	cc =R0==0;
	if cc jump .L13;
	R2 += 1;
	jump.s .L12;
.L13:
	R2 = 0 (X);
.L12:
	R0 = R2;
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
	R3 = R1.B (Z);
	jump.s .L15;
.L17:
	R0 += -1;
.L15:
	R2 = P2;
	cc =R0==0;
	if cc jump .L16;
	nop;
	nop;
	nop;
	R1 = B [P2++] (Z);
	cc =R3==R1;
	if !cc jump .L17 (bp);
.L16:
	cc =R0==0;
	if !cc jump .L18 (bp);
	R2 = 0 (X);
.L18:
	R0 = R2;
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
	if cc jump .L23 (bp);
.L22:
	cc =R0==0;
	if cc jump .L25 (bp);
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
	R3 = R0;
	P2 = R1;
	P1 = R0;
	R1 = R1 + R2;
	jump.s .L27;
.L28:
	nop;
	R0 = B [P2++] (X);
	B [P1++] = R0;
.L27:
	R0 = P2;
	cc =R0==R1;
	if !cc jump .L28 (bp);
	R0 = R3;
	UNLINK;
	rts;
	.size	_memcpy, .-_memcpy
	.align 4
.global _memrchr;
.type _memrchr, STT_FUNC;
_memrchr:
	LINK 0;
	P1 = R0;
	R0 = R2;
	R2 = R1.B (Z);
	P2 = R0;
	P2 += -1;
	P2 = P1 + P2;
	R3 = P1;
	R3 += -1;
	jump.s .L30;
.L32:
	nop;
	R1 = B [P2--] (Z);
	cc =R2==R1;
	if !cc jump .L30 (bp);
	P2 = R0;
	P1 = P1 + P2;
	jump.s .L31;
.L30:
	R0 += -1;
	R1 = P2;
	cc =R1==R3;
	if !cc jump .L32 (bp);
	P1 = 0 (X);
.L31:
	R0 = P1;
	UNLINK;
	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	LINK 0;
	R3 = R0;
	R0 = R0 + R2;
	P2 = R3;
	jump.s .L35;
.L36:
	B [P2++] = R1;
.L35:
	R2 = P2;
	cc =R2==R0;
	if !cc jump .L36 (bp);
	R0 = R3;
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
	R1 = P2;
	R0 = B [P1++] (X);
	B [P2++] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if !cc jump .L38 (bp);
	R0 = R1;
	UNLINK;
	rts;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	LINK 0;
	P2 = R0;
	R1 = R1.B (Z);
.L42:
	R2 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if cc jump .L41;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (Z);
	cc =R1==R0;
	if !cc jump .L42 (bp);
.L41:
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
.L46:
	R2 = P2;
	R0 = B [P2++] (X);
	cc =R1==R0;
	if cc jump .L45;
	nop;
	nop;
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L46 (bp);
	R2 = 0 (X);
.L45:
	R0 = R2;
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
	if !cc jump .L51 (bp);
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
	R2 = R0;
	P2 = R0;
.L54:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L54 (bp);
	R1 = R1 - R2;
	R0 = R1;
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
	P1 = R1;
	P0 = R2;
	cc =P0==0;
	LSETUP (.L62, .L63) LC1 = P0;
	if !cc jump .L59 (bp);
	jump.s .L60;
.L62:
	R1 = B [P2+-1] (Z);
	R0 = B [P1++] (Z);
	cc =R1==R0;
	if !cc jump .L58;
	nop;
.L59:
	P5 = P1;
	P4 = P2;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if cc jump .L58;
	nop;
	nop;
	nop;
	R0 = B [P1] (Z);
	cc =R0==0;
	if cc jump .L58;
	nop;
	nop;
.L63:
	nop;
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
	P1 = R0;
	P0 = R1;
	P5 = R2;
	P2 = P5 >> 1;
	P2 += 1;
	cc =R2<0;
	if !cc jump .L65 (bp);
	P2 = 1 (X);
	jump.s .L65;
.L66:
	R0 = B [P1+1] (X);
	B [P0] = R0;
	R0 = B [P1] (X);
	B [P0+1] = R0;
	P0 += 2;
	P1 += 2;
.L65:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L66;
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
	if cc jump .L72;
	R1 = 9 (X);
	cc =R0==R1;
	R0 = CC;
	jump.s .L71;
.L72:
	R0 = 1 (X);
.L71:
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
	if cc jump .L76 (bp);
	R1 = 127 (X);
	cc =R0==R1;
	R0 = CC;
	jump.s .L75;
.L76:
	R0 = 1 (X);
.L75:
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
	if cc jump .L84;
	R0 += -9;
	cc =R0<5 (iu);
	R0 = CC;
	jump.s .L83;
.L84:
	R0 = 1 (X);
.L83:
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
	if cc jump .L89 (bp);
	R1 = -127 (X);
	R1 = R0 + R1;
	R2 = 32 (X);
	cc =R1<=R2 (iu);
	if cc jump .L90 (bp);
	R1 = -8232 (X);
	R1 = R0 + R1;
	cc =R1<=1 (iu);
	if cc jump .L91;
	R1 = 7 (X);
	R1.H = 65535;
	R0 = R0 + R1;
	cc =R0<3 (iu);
	R0 = CC;
	jump.s .L88;
.L89:
	R0 = 1 (X);
	jump.s .L88;
.L90:
	R0 = 1 (X);
	jump.s .L88;
.L91:
	R0 = 1 (X);
.L88:
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
	if !cc jump .L95 (bp);
	R0 += 1;
	R1 = 127 (X);
	R0 = R0 & R1;
	R2 = 32 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L96;
.L95:
	R1 = 8231 (X);
	cc =R0<=R1 (iu);
	if cc jump .L97;
	R1 = -8234 (X);
	R1 = R0 + R1;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L98;
	R1 = -7 (X);
	R1 <<= 13;
	R1 = R0 + R1;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L99;
	R1 = -16383 (X);
	R1 <<= 2;
	R1 = R0 + R1;
	R2 = 3 (X);
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L100;
	R1 = 65534 (Z);
	R0 = R0 & R1;
	cc =R0==R1;
	if cc jump .L101;
	R0 = 1 (X);
	jump.s .L96;
.L97:
	R0 = 1 (X);
	jump.s .L96;
.L98:
	R0 = 1 (X);
	jump.s .L96;
.L99:
	R0 = 1 (X);
	jump.s .L96;
.L100:
	R0 = 0 (X);
	jump.s .L96;
.L101:
	R0 = 0 (X);
.L96:
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
	if cc jump .L104 (bp);
	BITSET (R0, 5);
	R1 = -97 (X);
	R0 = R0 + R1;
	cc =R0<6 (iu);
	R0 = CC;
	jump.s .L103;
.L104:
	R0 = 1 (X);
.L103:
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
	LINK 24;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	[SP+12] = R1;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L110;
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L111;
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L114 (bp);
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___subdf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L108;
.L110:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L108;
.L111:
	R1 = [FP+16];
	R2 = [FP+20];
	[FP+-8] = R1;
	[FP+-4] = R2;
	jump.s .L108;
.L114:
	R0 = 0 (X);
	R1 = 0 (X);
	[FP+-8] = R0;
	[FP+-4] = R1;
.L108:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	rts;
	.size	_fdim, .-_fdim
	.align 4
.global _fdimf;
.type _fdimf, STT_FUNC;
_fdimf:
	[--sp] = ( r7:6 );

	LINK 12;
	R7 = R0;
	R6 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L116;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L119;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L122 (bp);
	R1 = R6;
	R0 = R7;
	call ___subsf3;
	R7 = R0;
	jump.s .L116;
.L119:
	R7 = R6;
	jump.s .L116;
.L122:
	R7 = 0 (X);
.L116:
	R0 = R7;
	UNLINK;
	( r7:6 ) = [sp++];

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
	[SP+12] = R1;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L127;
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L128;
	R1 = [FP+12];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [FP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L125 (bp);
	R0 = [FP+12];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L129 (bp);
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L124;
.L125:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L132 (bp);
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L124;
.L127:
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L124;
.L128:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L124;
.L129:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L124;
.L132:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
.L124:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
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
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L137;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L134;
	R1 = R7 >>> 31;
	R1 <<= 31;
	R0 = R6 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L135 (bp);
	R0 = R7 >>> 31;
	cc = !BITTST (R0,0);
	if cc jump .L134 (bp);
	R7 = R6;
	jump.s .L134;
.L135:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L134 (bp);
	R7 = R6;
	jump.s .L134;
.L137:
	R7 = R6;
.L134:
	R0 = R7;
	UNLINK;
	( r7:6 ) = [sp++];

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
	[SP+12] = R1;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L147;
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L148;
	R1 = [FP+12];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [FP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L145 (bp);
	R0 = [FP+12];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L149 (bp);
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L144;
.L145:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L152 (bp);
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L144;
.L147:
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L144;
.L148:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L144;
.L149:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L144;
.L152:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-8] = R0;
	[FP+-4] = R1;
.L144:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	rts;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	LINK 32;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	[SP+12] = R1;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L157;
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L158;
	R1 = [FP+12];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [FP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L155 (bp);
	R0 = [FP+12];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L159 (bp);
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L154;
.L155:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L162 (bp);
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L154;
.L157:
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L154;
.L158:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L154;
.L159:
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L154;
.L162:
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
.L154:
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
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
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L164;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L168;
	R1 = R6 >>> 31;
	R1 <<= 31;
	R0 = R7 >>> 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L165 (bp);
	R0 = R6 >>> 31;
	cc = !BITTST (R0,0);
	if cc jump .L164 (bp);
	R7 = R6;
	jump.s .L164;
.L165:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	cc =R0<0;
	if !cc jump .L164 (bp);
	R7 = R6;
	jump.s .L164;
.L168:
	R7 = R6;
.L164:
	R0 = R7;
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	LINK 32;
	[FP+8] = R0;
	[FP+12] = R1;
	[FP+16] = R2;
	[SP+12] = R1;
	R2 = [FP+8];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L177;
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+16];
	R1 = [FP+20];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L178;
	R1 = [FP+12];
	R1 >>>= 31;
	R1 <<= 31;
	R0 = [FP+20];
	R0 >>>= 31;
	R0 <<= 31;
	cc =R1==R0;
	if cc jump .L175 (bp);
	R0 = [FP+12];
	R0 >>>= 31;
	cc = !BITTST (R0,0);
	if cc jump .L179 (bp);
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L174;
.L175:
	R0 = [FP+20];
	[SP+12] = R0;
	R2 = [FP+16];
	R0 = [FP+8];
	R1 = [FP+12];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L182 (bp);
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L174;
.L177:
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L174;
.L178:
	R0 = [FP+8];
	R1 = [FP+12];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L174;
.L179:
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	jump.s .L174;
.L182:
	R0 = [FP+16];
	R1 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
.L174:
	R0 = [FP+-16];
	R1 = [FP+-12];
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
	LINK 0;
	P1.H = _s.0;
	P1.L = _s.0;
	R3 = 63 (X);
	R2.H = _digits;
	R2.L = _digits;
	jump.s .L184;
.L185:
	R1 = R0 & R3;
	R1 = R2 + R1;
	P2 = R1;
	R1 = B [P2] (X);
	B [P1++] = R1;
	R0 >>= 6;
.L184:
	cc =R0==0;
	if !cc jump .L185 (bp);
	B [P1] = R0;
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
	R2 = R0;
	R2 += 1; cc = ac0;
	R0 = CC;
	R3 = R1 + R0;
	[P5] = R2;
	[P5+4] = R3;
	R0 = R3 >> 1;
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
	if !cc jump .L189 (bp);
	R0 = 0 (X);
	[P2+4] = R0;
	[P2] = R0;
	jump.s .L188;
.L189:
	nop;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L188;
	P1 = R0;
	[P1+4] = P2;
.L188:
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
	if cc jump .L192;
	nop;
	nop;
	P1 = R0;
	R0 = [P2+4];
	[P1+4] = R0;
.L192:
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L191;
	nop;
	nop;
	P1 = R0;
	R0 = [P2];
	[P1] = R0;
.L191:
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
	P3 = R1;
	[FP+44] = R2;
	P5 = [FP+48];
	P4 = [FP+52];
	P2 = R2;
	R5 = [P2];
	R6 = R1;
	R7 = 0 (X);
	jump.s .L195;
.L198:
	R1 = R6;
	R0 = R4;
	call (P4);
	R1 = P5;
	R6 = R6 + R1;
	cc =R0==0;
	if !cc jump .L196 (bp);
	R7 *= R1;
	P2 = R7;
	P3 = P3 + P2;
	jump.s .L197;
.L196:
	R7 += 1;
.L195:
	cc =R7==R5;
	if !cc jump .L198 (bp);
	R0 = R5;
	R0 += 1;
	P2 = [FP+44];
	[P2] = R0;
	R0 = P5;
	R5 *= R0;
	P2 = R5;
	P3 = P3 + P2;
	R2 = P5;
	R1 = R4;
	R0 = P3;
	call _memcpy;
	P3 = R0;
.L197:
	R0 = P3;
	UNLINK;
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	_lsearch, .-_lsearch
	.align 4
.global _lfind;
.type _lfind, STT_FUNC;
_lfind:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	R5 = R0;
	P4 = R1;
	P2 = R2;
	P5 = [FP+48];
	P3 = [FP+52];
	R4 = [P2];
	R6 = R1;
	R7 = 0 (X);
	jump.s .L200;
.L203:
	R1 = R6;
	R0 = R5;
	call (P3);
	R1 = P5;
	R6 = R6 + R1;
	cc =R0==0;
	if !cc jump .L201 (bp);
	R7 *= R1;
	P2 = R7;
	P4 = P4 + P2;
	jump.s .L202;
.L201:
	R7 += 1;
.L200:
	cc =R7==R4;
	if !cc jump .L203 (bp);
	P4 = 0 (X);
.L202:
	R0 = P4;
	UNLINK;
	( r7:4, p5:3 ) = [sp++];

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
.L206:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L206 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L212;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L213 (bp);
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
	P2 = P2 + P2;
	R0 = B [P5+-1] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
.L209:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L210 (bp);
	cc =R1==0;
	if !cc jump .L211 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L211:
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
.L217:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L217 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L223;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L224 (bp);
	R1 = 1 (X);
	jump.s .L218;
.L223:
	R1 = 0 (X);
.L218:
	P5 += 1;
	jump.s .L219;
.L224:
	R1 = 0 (X);
.L219:
	P2 = 0 (X);
	jump.s .L220;
.L221:
	P2 = P2 + (P2 << 2);
	P2 = P2 + P2;
	R0 = B [P5+-1] (X);
	R0 += -48;
	P1 = R0;
	P2 -= P1;
.L220:
	R0 = B [P5++] (X);
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if cc jump .L221 (bp);
	cc =R1==0;
	if !cc jump .L222 (bp);
	R0 = P2;
	R0 = -R0;
	P2 = R0;
.L222:
	R0 = P2;
	UNLINK;
	( p5:4 ) = [sp++];

	rts;
	.size	_atol, .-_atol
	.align 4
.global _atoll;
.type _atoll, STT_FUNC;
_atoll:
	[--sp] = ( r7:4, p5:4 );

	LINK 24;
	P4 = R0;
.L228:
	P5 = P4;
	R0 = B [P4++] (X);
	call _isspace;
	cc =R0==0;
	if !cc jump .L228 (bp);
	R0 = B [P5] (X);
	R1 = 43 (X);
	cc =R0==R1;
	if cc jump .L234;
	R3 = 45 (X);
	cc =R0==R3;
	if !cc jump .L235 (bp);
	R6 = 1 (X);
	jump.s .L229;
.L234:
	R6 = 0 (X);
.L229:
	P5 += 1;
	jump.s .L230;
.L235:
	R6 = 0 (X);
.L230:
	R0 = 0 (X);
	R1 = 0 (X);
	R7 = 0 (X);
	jump.s .L231;
.L232:
	[SP+12] = R7;
	R2 = 10 (X);
	call ___muldi3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R2 = B [P5+-1] (X);
	R2 += -48;
	R3 = R2;
	R3 >>>= 31;
	R0 = R0 - R2; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R1 - R3;
	R1 = R1 - R2;
.L231:
	R2 = B [P5++] (X);
	R2 += -48;
	R3 = 9 (X);
	cc =R2<=R3 (iu);
	if cc jump .L232 (bp);
	cc =R6==0;
	if !cc jump .L236 (bp);
	R2 = 0 (X);
	R3 = 0 (X);
	R7 = R2 - R0; cc = ac0;
	[FP+-8] = R7;
	CC = ! CC;
	R0 = CC;
	R7 = R3 - R1;
	R0 = R7 - R0;
	[FP+-4] = R0;
	jump.s .L233;
.L236:
	[FP+-8] = R0;
	[FP+-4] = R1;
.L233:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4, p5:4 ) = [sp++];

	rts;
	.size	_atoll, .-_atoll
	.align 4
.global _bsearch;
.type _bsearch, STT_FUNC;
_bsearch:
	[--sp] = ( r7:4, p5:4 );

	LINK 12;
	P5 = R0;
	R5 = R1;
	R6 = R2;
	R4 = [FP+44];
	P4 = [FP+48];
	jump.s .L239;
.L243:
	R7 = R6 >> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R1 = R7;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if !cc jump .L240 (bp);
	R6 >>= 1;
	jump.s .L239;
.L240:
	cc =R0<=0;
	if cc jump .L242;
	R5 = R7 + R4;
	R0 = R6 >> 1;
	R6 += -1;
	R6 = R6 - R0;
.L239:
	cc =R6==0;
	if !cc jump .L243 (bp);
	R7 = 0 (X);
.L242:
	R0 = R7;
	UNLINK;
	( r7:4, p5:4 ) = [sp++];

	rts;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	P5 = R0;
	R5 = R1;
	R6 = R2;
	R4 = [FP+48];
	P3 = [FP+52];
	P4 = [FP+56];
	jump.s .L246;
.L249:
	R7 = R6 >>> 1;
	R7 *= R4;
	R7 = R5 + R7;
	R2 = P4;
	R1 = R7;
	R0 = P5;
	call (P3);
	cc =R0==0;
	if cc jump .L247;
	cc =R0<=0;
	if cc jump .L248;
	R5 = R7 + R4;
	R6 += -1;
.L248:
	R6 >>>= 1;
.L246:
	cc =R6==0;
	if !cc jump .L249 (bp);
	R7 = 0 (X);
.L247:
	R0 = R7;
	UNLINK;
	( r7:4, p5:3 ) = [sp++];

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
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
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
	[--sp] = ( r7:5 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	cc =R1<0;
	if !cc jump .L253 (bp);
	R6 = 0 (X);
	R7 = 0 (X);
	R5 = [FP+-8];
	R2 = R6 - R5; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R1;
	R3 = R3 - R0;
	[FP+-8] = R2;
	[FP+-4] = R3;
.L253:
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
	[P5+8] = R0;
	[P5+12] = R1;
	[P5] = R6;
	[P5+4] = R7;
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
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
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
	[--sp] = ( r7:5 );

	LINK 8;
	[FP+-8] = R0;
	[FP+-4] = R1;
	cc =R1<0;
	if !cc jump .L259 (bp);
	R6 = 0 (X);
	R7 = 0 (X);
	R5 = [FP+-8];
	R2 = R6 - R5; cc = ac0;
	CC = ! CC;
	R0 = CC;
	R3 = R7 - R1;
	R3 = R3 - R0;
	[FP+-8] = R2;
	[FP+-4] = R3;
.L259:
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
	[P5+8] = R0;
	[P5+12] = R1;
	[P5] = R6;
	[P5+4] = R7;
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
.L264:
	P1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if cc jump .L263;
	nop;
	nop;
	nop;
	R0 = [P2+-4];
	cc =R1==R0;
	if !cc jump .L264 (bp);
.L263:
	R0 = [P1];
	cc =R0==0;
	if !cc jump .L265 (bp);
	P1 = 0 (X);
.L265:
	R0 = P1;
	UNLINK;
	rts;
	.size	_wcschr, .-_wcschr
	.align 4
.global _wcscmp;
.type _wcscmp, STT_FUNC;
_wcscmp:
	[--sp] = ( p5:5 );

	LINK 0;
	P2 = R0;
	P1 = R1;
.L270:
	P0 = P1;
	P5 = P2;
	R1 = [P2++];
	R0 = [P1++];
	cc =R1==R0;
	if !cc jump .L269;
	nop;
	nop;
	nop;
	R0 = [P2+-4];
	cc =R0==0;
	if cc jump .L269;
	nop;
	nop;
	nop;
	R0 = [P1+-4];
	cc =R0==0;
	if !cc jump .L270 (bp);
.L269:
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L272 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L271;
.L272:
	R0 = -1 (X);
.L271:
	UNLINK;
	( p5:5 ) = [sp++];

	rts;
	.size	_wcscmp, .-_wcscmp
	.align 4
.global _wcscpy;
.type _wcscpy, STT_FUNC;
_wcscpy:
	LINK 0;
	R2 = R0;
	P1 = R1;
	P2 = R0;
.L275:
	nop;
	R0 = [P1++];
	[P2] = R0;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L275 (bp);
	R0 = R2;
	UNLINK;
	rts;
	.size	_wcscpy, .-_wcscpy
	.align 4
.global _wcslen;
.type _wcslen, STT_FUNC;
_wcslen:
	LINK 0;
	R2 = R0;
	P2 = R0;
.L278:
	R1 = P2;
	R0 = [P2++];
	cc =R0==0;
	if !cc jump .L278 (bp);
	R1 = R1 - R2;
	R1 >>>= 2;
	R0 = R1;
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
	jump.s .L281;
.L283:
	R0 += -1;
.L281:
	P0 = P1;
	P5 = P2;
	cc =R0==0;
	if cc jump .L282;
	nop;
	nop;
	nop;
	R2 = [P2];
	R1 = [P1];
	cc =R2==R1;
	if !cc jump .L282;
	nop;
	nop;
	nop;
	R1 = [P2++];
	cc =R1==0;
	if cc jump .L282;
	nop;
	nop;
	nop;
	R1 = [P1++];
	cc =R1==0;
	if !cc jump .L283 (bp);
.L282:
	cc =R0==0;
	if cc jump .L285 (bp);
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L286 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L284;
.L285:
	R0 = 0 (X);
	jump.s .L284;
.L286:
	R0 = -1 (X);
.L284:
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
	jump.s .L288;
.L290:
	R0 += -1;
.L288:
	R2 = P2;
	cc =R0==0;
	if cc jump .L289;
	nop;
	nop;
	nop;
	R1 = [P2++];
	cc =R3==R1;
	if !cc jump .L290 (bp);
.L289:
	cc =R0==0;
	if !cc jump .L291 (bp);
	R2 = 0 (X);
.L291:
	R0 = R2;
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
	jump.s .L294;
.L296:
	R0 += -1;
.L294:
	P0 = P2;
	P5 = P1;
	cc =R0==0;
	if cc jump .L295;
	nop;
	nop;
	nop;
	R2 = [P1++];
	R1 = [P2++];
	cc =R2==R1;
	if cc jump .L296 (bp);
.L295:
	cc =R0==0;
	if cc jump .L298 (bp);
	R1 = [P5];
	R0 = [P0];
	cc =R1<R0;
	if cc jump .L299 (bp);
	R0 = R1;
	R1 = [P0];
	cc =R1<R0;
	R0 = CC;
	jump.s .L297;
.L298:
	R0 = 0 (X);
	jump.s .L297;
.L299:
	R0 = -1 (X);
.L297:
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
	jump.s .L301;
.L302:
	nop;
	R1 = [P2++];
	[P1++] = R1;
.L301:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L302 (bp);
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
	cc =R3==R1;
	if cc jump .L304;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	if cc jump .L305 (bp);
	P2 = R3;
	jump.s .L306;
.L305:
	R0 += -1;
	P0 = R0;
	P2 = P0 << 2;
	P1 = P1 + P2;
	P5 = R3;
	P0 = P5 + P2;
	P2 += 4;
	P2 = P2 >> 2;
	P2 += 1;
	jump.s .L307;
.L308:
	R0 = [P1--];
	[P0--] = R0;
.L307:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L308;
	jump.s .L304;
.L309:
	nop;
	R1 = [P1++];
	[P2++] = R1;
.L306:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L309 (bp);
.L304:
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
	jump.s .L311;
.L312:
	[P2++] = R1;
.L311:
	R0 += -1;
	cc =R0==-1;
	if !cc jump .L312 (bp);
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
	P1 = R1;
	R0 = R2;
	cc =P2<P1 (iu);
	if !cc jump .L314 (bp);
	P0 = R2;
	P2 = P2 + P0;
	R1 = R1 + R0;
	P2 += -1;
	P1 = R1;
	P1 += -1;
	R0 = ~R0;
	R0 = R0 + R1;
	jump.s .L315;
.L316:
	nop;
	R1 = B [P2--] (X);
	B [P1--] = R1;
.L315:
	R1 = P1;
	cc =R1==R0;
	if !cc jump .L316 (bp);
	jump.s .L313;
.L314:
	cc =P2==P1;
	if cc jump .L313;
	R2 = P2;
	R0 = R2 + R0;
	jump.s .L318;
.L319:
	nop;
	R1 = B [P2++] (X);
	B [P1++] = R1;
.L318:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L319 (bp);
.L313:
	UNLINK;
	rts;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4, p5:5 );

	LINK 8;
	R4 = R0;
	R5 = R1;
	R0 = R2;
	R2 += -32;
	R1 = R4;
	R1 <<= R2;
	P2 = R1;
	P0 = 0 (X);
	R3 = R4 >> 1;
	R1 = 31 (X);
	R7 = R1 - R0;
	R3 >>= R7;
	R7 = R5;
	R7 <<= R0;
	R7 = R3 | R7;
	R6 = R4;
	R6 <<= R0;
	cc =R2<0;
	if !cc R7 = P2;
	cc =R2<0;
	if !cc R6 = P0;
	R0 = -R0;
	R2 = 63 (X);
	R0 = R0 & R2;
	P2 = R0;
	P2 += -32;
	R2 = R5;
	R3 = P2;
	R2 >>= R3;
	P5 = R2;
	R2 = R5 << 1;
	R1 = R1 - R0;
	R2 <<= R1;
	P1 = R2;
	R2 = R4;
	R2 >>= R0;
	R1 = P1;
	R2 = R1 | R2;
	R3 = R5;
	R3 >>= R0;
	cc =P2<0;
	if !cc R2 = P5;
	cc =P2<0;
	if !cc R3 = P0;
	R0 = R6 | R2;
	[FP+-8] = R0;
	R1 = R7 | R3;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
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
	R4 = R0;
	R5 = R1;
	R0 = R2;
	R2 += -32;
	R1 >>= R2;
	P2 = R1;
	P0 = 0 (X);
	R3 = R5 << 1;
	R1 = 31 (X);
	R7 = R1 - R0;
	R3 <<= R7;
	R6 = R4;
	R6 >>= R0;
	R6 = R3 | R6;
	R7 = R5;
	R7 >>= R0;
	cc =R2<0;
	if !cc R6 = P2;
	cc =R2<0;
	if !cc R7 = P0;
	R0 = -R0;
	R2 = 63 (X);
	R0 = R0 & R2;
	P2 = R0;
	P2 += -32;
	R2 = R4;
	R3 = P2;
	R2 <<= R3;
	P5 = R2;
	R2 = R4 >> 1;
	R1 = R1 - R0;
	R2 >>= R1;
	R3 = R5;
	R3 <<= R0;
	R3 = R2 | R3;
	R2 = R4;
	R2 <<= R0;
	cc =P2<0;
	if !cc R3 = P5;
	cc =P2<0;
	if !cc R2 = P0;
	R0 = R6 | R2;
	[FP+-8] = R0;
	R1 = R7 | R3;
	[FP+-4] = R1;
	R0 = [FP+-8];
	R1 = [FP+-4];
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
	R2 = R1;
	R1 = R0.L (Z);
	R0 = R1;
	R0 <<= R2;
	R3 = 16 (X);
	R2 = R3 - R2;
	R1 >>= R2;
	R0 = R0 | R1;
	UNLINK;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	LINK 0;
	R2 = R1;
	R1 = R0.L (Z);
	R0 = R1;
	R0 >>= R2;
	R3 = 16 (X);
	R2 = R3 - R2;
	R1 <<= R2;
	R0 = R0 | R1;
	UNLINK;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	LINK 0;
	R2 = R1;
	R1 = R0.B (Z);
	R0 = R1;
	R0 <<= R2;
	R3 = 8 (X);
	R2 = R3 - R2;
	R1 >>= R2;
	R0 = R0 | R1;
	UNLINK;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	LINK 0;
	R2 = R1;
	R1 = R0.B (Z);
	R0 = R1;
	R0 >>= R2;
	R3 = 8 (X);
	R2 = R3 - R2;
	R1 <<= R2;
	R0 = R0 | R1;
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
	UNLINK;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:4 );

	LINK 8;
	R3 = R1 >>> 24;
	R3 <<= 24;
	R6 = R3 >> 24;
	I0.H = 255;
	I0.L = 0;
	R2 = I0;
	R5 = R1 & R2;
	R2 = R5 >> 8;
	R5 = R2 | R6;
	P0 = R5;
	P1 = 0 (X);
	R6 = 0 (X);
	P2.H = 0;
	P2.L = 65280;
	R2 = P2;
	R7 = R1 & R2;
	R5 = R7 << 8;
	R2 = R6 >> 24;
	R2 = R5 | R2;
	R3 = R7 >> 24;
	R7 = P0;
	R4 = R7 | R2;
	R7 = P1;
	R5 = R7 | R3;
	R7 = R1.B (Z);
	R1 = R7 << 24;
	R2 = R6 >> 8;
	R2 = R1 | R2;
	R3 = R7 >> 8;
	R7 = R4 | R2;
	P0 = R7;
	R7 = R5 | R3;
	P1 = R7;
	R2 = R0 >>> 24;
	R2 <<= 24;
	R7 = R2 >> 24;
	R6 = R2 << 8;
	R2 = P0;
	R4 = R2 | R6;
	R2 = P1;
	R5 = R2 | R7;
	R2 = I0;
	R6 = R0 & R2;
	R3 = R6 >> 8;
	R2 = R6 << 24;
	R6 = R4 | R2;
	R7 = R5 | R3;
	R5 = P2;
	R2 = R0 & R5;
	R5 = R2 << 8;
	R2 = R6;
	R3 = R7 | R5;
	R6 = R0.B (Z);
	R1 = R6 << 24;
	[FP+-8] = R2;
	R7 = R3 | R1;
	[FP+-4] = R7;
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
	R2 = R0;
	R0 = 0 (X);
	P2 = 33 (X);
	jump.s .L334;
.L337:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	if cc jump .L335 (bp);
	R0 += 1;
	jump.s .L336;
.L335:
	R0 += 1;
.L334:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L337;
	R0 = 0 (X);
.L336:
	UNLINK;
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	LINK 0;
	cc =R0==0;
	if cc jump .L342;
	R1 = 1 (X);
	jump.s .L340;
.L341:
	R0 >>>= 1;
	R1 += 1;
.L340:
	cc = !BITTST (R0,0);
	if cc jump .L341 (bp);
	jump.s .L339;
.L342:
	R1 = 0 (X);
.L339:
	R0 = R1;
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
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L346 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L349 (bp);
	R0 = 1 (X);
	jump.s .L344;
.L346:
	R0 = 1 (X);
	jump.s .L344;
.L349:
	R0 = 0 (X);
.L344:
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
	if cc jump .L353 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L356 (bp);
	R0 = 1 (X);
	jump.s .L351;
.L353:
	R0 = 1 (X);
	jump.s .L351;
.L356:
	R0 = 0 (X);
.L351:
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
	if cc jump .L360 (bp);
	R0 = -1 (X);
	R0.H = 32751;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L363 (bp);
	R0 = 1 (X);
	jump.s .L358;
.L360:
	R0 = 1 (X);
	jump.s .L358;
.L363:
	R0 = 0 (X);
.L358:
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
	R5 = R0;
	R7 = R1;
	R1 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L366;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R0;
	R0 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L366 (bp);
	cc =R7<0;
	if !cc jump .L371 (bp);
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L370;
.L371:
	R6 = 1 (X);
	R6 <<= 30;
.L370:
	cc = !BITTST (R7,0);
	if cc jump .L369 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
.L369:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L366;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
	jump.s .L370;
.L366:
	R0 = R5;
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
	[SP+12] = R1;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L374;
	R0 = [FP+24];
	[SP+12] = R0;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___adddf3;
	R2 = R0;
	[SP+12] = R1;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L374 (bp);
	cc =R5<0;
	if !cc jump .L379 (bp);
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L378;
.L379:
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
.L378:
	cc = !BITTST (R5,0);
	if cc jump .L377 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
.L377:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L374;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
	jump.s .L378;
.L374:
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
	[SP+12] = R1;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L382;
	R0 = [FP+24];
	[SP+12] = R0;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___adddf3;
	R2 = R0;
	[SP+12] = R1;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L382 (bp);
	cc =R5<0;
	if !cc jump .L387 (bp);
	R6 = 0 (X);
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L386;
.L387:
	R6 = 0 (X);
	R7 = 1 (X);
	R7 <<= 30;
.L386:
	cc = !BITTST (R5,0);
	if cc jump .L385 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
.L385:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L382;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
	jump.s .L386;
.L382:
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
	R3 = R0;
	P2 = R1;
	R2 = R1 + R2;
	P1 = R0;
	jump.s .L390;
.L391:
	nop;
	R0 = B [P2++] (X);
	R1 = B [P1++] (X);
	R0 = R0 ^ R1;
	B [P1+-1] = R0;
.L390:
	R0 = P2;
	cc =R0==R2;
	if !cc jump .L391 (bp);
	R0 = R3;
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
	R6 = R1;
	R7 = R2;
	call _strlen;
	P2 = R0;
	P1 = R6;
	P0 = R5;
	P2 = P0 + P2;
	jump.s .L393;
.L395:
	R7 += -1;
.L393:
	P0 = P2;
	cc =R7==0;
	if cc jump .L394;
	nop;
	nop;
	nop;
	R0 = B [P1++] (X);
	B [P2] = R0;
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L395 (bp);
.L394:
	cc =R7==0;
	if !cc jump .L396 (bp);
	R0 = 0 (X);
	B [P0] = R0;
.L396:
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
	R0 = R1;
	R1 = 0 (X);
	jump.s .L398;
.L400:
	R1 += 1;
.L398:
	cc =R1==R0;
	if cc jump .L399;
	nop;
	nop;
	nop;
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L400;
.L399:
	R0 = R1;
	UNLINK;
	rts;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	LINK 0;
	P1 = R0;
	R3 = R1;
	jump.s .L402;
.L404:
	nop;
	R1 = B [P2+-1] (X);
	R0 = B [P1+-1] (X);
	cc =R1==R0;
	if cc jump .L403;
	nop;
	nop;
	nop;
.L405:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L404 (bp);
.L402:
	R2 = P1;
	R0 = B [P1++] (X);
	cc =R0==0;
	if cc jump .L407;
	P2 = R3;
	jump.s .L405;
.L407:
	R2 = 0 (X);
.L403:
	R0 = R2;
	UNLINK;
	rts;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	LINK 0;
	P2 = R0;
	R2 = R1;
	R3 = 0 (X);
.L410:
	R1 = P2;
	R0 = B [P2++] (X);
	cc =R2==R0;
	if !cc jump .L409 (bp);
	R3 = R1;
.L409:
	nop;
	R0 = B [P2+-1] (X);
	cc =R0==0;
	if !cc jump .L410 (bp);
	R0 = R3;
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
	R0 = R1;
	call _strlen;
	R6 = R0;
	cc =R0==0;
	if cc jump .L414;
	nop;
	nop;
	nop;
	R5 = B [P5] (X);
	jump.s .L415;
.L416:
	R2 = R6;
	R1 = P5;
	R0 = R7;
	call _strncmp;
	cc =R0==0;
	if cc jump .L414;
	R7 += 1;
.L415:
	R1 = R5;
	R0 = R7;
	call _strchr;
	R7 = R0;
	cc =R0==0;
	if !cc jump .L416 (bp);
.L414:
	R0 = R7;
	UNLINK;
	( r7:5, p5:5 ) = [sp++];

	rts;
	.size	_strstr, .-_strstr
	.align 4
.global _copysign;
.type _copysign, STT_FUNC;
_copysign:
	LINK 32;
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
	if !cc jump .L420 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L422;
.L420:
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+8];
	R1 = [FP+12];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L430;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+16];
	R1 = [FP+20];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L431 (bp);
.L422:
	R3 = [FP+8];
	[FP+-16] = R3;
	R0 = [FP+12];
	BITTGL (R0, 31);
	[FP+-12] = R0;
	jump.s .L423;
.L430:
	R1 = [FP+8];
	R2 = [FP+12];
	[FP+-16] = R1;
	[FP+-12] = R2;
	jump.s .L423;
.L431:
	R2 = [FP+8];
	R3 = [FP+12];
	[FP+-16] = R2;
	[FP+-12] = R3;
.L423:
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	rts;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:4, p5:4 );

	LINK 12;
	P5 = R0;
	R0 = R1;
	P4 = R2;
	R5 = [FP+44];
	R7 = R1 - R5;
	R1 = P5;
	R7 = R1 + R7;
	cc =R5==0;
	if cc jump .L433;
	cc =R0<R5 (iu);
	if cc jump .L438;
	R4 = R2;
	R4 += 1;
	R5 += -1;
	jump.s .L434;
.L436:
	nop;
	R1 = B [P5++] (X);
	R0 = B [P4] (X);
	cc =R1==R0;
	if !cc jump .L434 (bp);
	R2 = R5;
	R1 = R4;
	R0 = P5;
	call _memcmp;
	cc =R0==0;
	if cc jump .L439;
.L434:
	R6 = P5;
	cc =R6<=R7 (iu);
	if cc jump .L436 (bp);
	P5 = 0 (X);
	jump.s .L433;
.L438:
	P5 = 0 (X);
	jump.s .L433;
.L439:
	P5 = R6;
.L433:
	R0 = P5;
	UNLINK;
	( r7:4, p5:4 ) = [sp++];

	rts;
	.size	_memmem, .-_memmem
	.align 4
.global _mempcpy;
.type _mempcpy, STT_FUNC;
_mempcpy:
	[--sp] = ( r7:7 );

	LINK 12;
	R7 = R2;
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
	[--sp] = ( r7:4, p5:5 );

	LINK 24;
	[FP+28] = R0;
	[FP+32] = R1;
	P5 = R2;
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+28];
	R1 = [FP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L458 (bp);
	R0 = [FP+28];
	R1 = [FP+32];
	BITTGL (R1, 31);
	[FP+28] = R0;
	[FP+32] = R1;
	R4 = 1 (X);
	jump.s .L442;
.L458:
	R4 = 0 (X);
.L442:
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+28];
	R1 = [FP+32];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L453 (bp);
	jump.s .L459;
.L446:
	R7 += 1;
	[SP+12] = R5;
	R2 = 0 (X);
	R0 = [FP+28];
	R1 = [FP+32];
	call ___muldf3;
	[FP+28] = R0;
	[FP+32] = R1;
	jump.s .L444;
.L453:
	R7 = 0 (X);
	R6 = 1023 (X);
	R6 <<= 20;
	R5 = 511 (X);
	R5 <<= 21;
.L444:
	[SP+12] = R6;
	R2 = 0 (X);
	R0 = [FP+28];
	R1 = [FP+32];
	call ___gedf2;
	cc =R0<0;
	if !cc jump .L446 (bp);
	jump.s .L447;
.L459:
	R0 = 511 (X);
	R0 <<= 21;
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+28];
	R1 = [FP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L460 (bp);
	R0 = 0 (X);
	[SP+12] = R0;
	R2 = 0 (X);
	R0 = [FP+28];
	R1 = [FP+32];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L455 (bp);
	R7 = 0 (X);
	jump.s .L447;
.L450:
	R7 += -1;
	R0 = [FP+32];
	[SP+12] = R0;
	R2 = [FP+28];
	R0 = [FP+28];
	R1 = [FP+32];
	call ___adddf3;
	[FP+28] = R0;
	[FP+32] = R1;
	jump.s .L449;
.L455:
	R7 = 0 (X);
	R6 = 511 (X);
	R6 <<= 21;
.L449:
	[SP+12] = R6;
	R2 = 0 (X);
	R0 = [FP+28];
	R1 = [FP+32];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L450 (bp);
	jump.s .L447;
.L460:
	R7 = 0 (X);
.L447:
	[P5] = R7;
	cc =R4==0;
	if cc jump .L451 (bp);
	R0 = [FP+28];
	R1 = [FP+32];
	BITTGL (R1, 31);
	[FP+28] = R0;
	[FP+32] = R1;
.L451:
	R0 = [FP+28];
	R1 = [FP+32];
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

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
	R4 = [FP+36];
	R5 = [FP+40];
	R2 = R0;
	R3 = R1;
	P2 = 0 (X);
	P3 = 0 (X);
	P0 = 1 (X);
	jump.s .L462;
.L465:
	R0 = P0;
	R6 = R2 & R0;
	cc =R6==0;
	if cc jump .L463 (bp);
	R1 = P2;
	R6 = R1 + R4; cc = ac0;
	R0 = CC;
	R1 = P3;
	R7 = R1 + R5;
	R7 = R7 + R0;
	P2 = R6;
	P3 = R7;
.L463:
	CC = R0 < R0;
	R6 = ROT R4 BY 1;
	R7 = ROT R5 BY 1;
	R4 = R6;
	R5 = R7;
	CC = R0 < R0;
	R7 = ROT R3 BY -1;
	R6 = ROT R2 BY -1;
	R2 = R6;
	R3 = R7;
.L462:
	R7 = R2 | R3;
	cc =R7==0;
	if !cc jump .L465 (bp);
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
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	P2 = 33 (X);
	jump.s .L467;
.L477:
	cc =R0<0;
	if cc jump .L479;
	R0 <<= 1;
	R1 <<= 1;
.L467:
	cc =R0<R3 (iu);
	if cc jump .L468 (bp);
	R2 = 0 (X);
	jump.s .L469;
.L480:
	R2 = 0 (X);
	jump.s .L469;
.L468:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L477;
	jump.s .L480;
.L479:
	R2 = 0 (X);
	jump.s .L469;
.L473:
	cc =R3<R0 (iu);
	if cc jump .L472 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L472:
	R1 >>= 1;
	R0 >>= 1;
.L469:
	cc =R1==0;
	if !cc jump .L473 (bp);
	cc =P1==0;
	if cc jump .L474 (bp);
	R2 = R3;
.L474:
	R0 = R2;
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
	if !cc jump .L482 (bp);
	R0 = ~R0;
.L482:
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L484;
	R0 = R1;
	R0 <<= 8;
	call ___clzsi2;
	R0 += -1;
	jump.s .L483;
.L484:
	R0 = 7 (X);
.L483:
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
	if !cc jump .L486 (bp);
	R2 = ~R0;
	R3 = ~R1;
	R0 = R2;
	R1 = R3;
.L486:
	R2 = R0 | R1;
	cc =R2==0;
	if cc jump .L490;
	call ___clzdi2;
	R0 += -1;
	jump.s .L488;
.L490:
	R0 = 63 (X);
.L488:
	UNLINK;
	rts;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	LINK 0;
	R2 = 0 (X);
	jump.s .L492;
.L494:
	cc = !BITTST (R0,0);
	if cc jump .L493 (bp);
	R2 = R2 + R1;
.L493:
	R0 >>= 1;
	R1 <<= 1;
.L492:
	cc =R0==0;
	if !cc jump .L494 (bp);
	R0 = R2;
	UNLINK;
	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:6, p5:5 );

	LINK 0;
	P2 = R0;
	R7 = R2;
	R2 >>= 3;
	R0 = -8 (X);
	R0 = R7 & R0;
	R3 = P2;
	cc =R3<R1 (iu);
	if cc jump .L496 (bp);
	R3 = R1 + R7;
	R6 = P2;
	cc =R3<R6 (iu);
	if !cc jump .L497 (bp);
.L496:
	P5 = R1;
	P0 = P2;
	P1 = R2;
	P1 += 1;
	jump.s .L498;
.L497:
	R7 += -1;
	R0 = R1 + R7;
	P0 = R0;
	P1 = R7;
	P2 = P2 + P1;
	R1 += -1;
	jump.s .L499;
.L500:
	R2 = [P5];
	R3 = [P5+4];
	[P0] = R2;
	[P0+4] = R3;
	P5 += 8;
	P0 += 8;
.L498:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L500;
	R1 = R1 + R0;
	P1 = R1;
	P0 = R0;
	P2 = P2 + P0;
	jump.s .L501;
.L502:
	nop;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R0 += 1;
.L501:
	cc =R7<=R0 (iu);
	if !cc jump .L502 (bp);
	jump.s .L495;
.L504:
	nop;
	R0 = B [P0--] (X);
	B [P2--] = R0;
.L499:
	R0 = P0;
	cc =R0==R1;
	if !cc jump .L504 (bp);
.L495:
	UNLINK;
	( r7:6, p5:5 ) = [sp++];

	rts;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	LINK 0;
	R3 = R0;
	P1 = R2;
	P2 = P1 >> 1;
	cc =R0<R1 (iu);
	if cc jump .L506 (bp);
	R0 = R1 + R2;
	cc =R0<R3 (iu);
	if !cc jump .L507 (bp);
.L506:
	P0 = R3;
	P1 = R1;
	P2 += 1;
	jump.s .L508;
.L507:
	R2 += -1;
	R0 = R1 + R2;
	P1 = R0;
	R3 = R3 + R2;
	P2 = R3;
	R1 += -1;
	jump.s .L509;
.L510:
	R0 = W [P1++] (X);
	W [P0++] = R0;
.L508:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L510;
	cc = !BITTST (R2,0);
	if cc jump .L505 (bp);
	R2 += -1;
	R1 = R1 + R2;
	P1 = R1;
	R3 = R3 + R2;
	P2 = R3;
	R0 = B [P1] (X);
	B [P2] = R0;
	jump.s .L505;
.L512:
	nop;
	R0 = B [P1--] (X);
	B [P2--] = R0;
.L509:
	R0 = P1;
	cc =R0==R1;
	if !cc jump .L512 (bp);
.L505:
	UNLINK;
	rts;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( r7:7, p5:5 );

	LINK 0;
	P2 = R0;
	P0 = R2;
	P1 = P0 >> 2;
	R0 = -4 (X);
	R0 = R2 & R0;
	R3 = P2;
	cc =R3<R1 (iu);
	if cc jump .L514 (bp);
	R3 = R1 + R2;
	R7 = P2;
	cc =R3<R7 (iu);
	if !cc jump .L515 (bp);
.L514:
	P5 = P2;
	P0 = R1;
	P1 += 1;
	jump.s .L516;
.L515:
	R2 += -1;
	R0 = R1 + R2;
	P0 = R0;
	P1 = R2;
	P2 = P2 + P1;
	R1 += -1;
	jump.s .L517;
.L518:
	R3 = [P0++];
	[P5++] = R3;
.L516:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L518;
	R1 = R1 + R0;
	P1 = R1;
	P0 = R0;
	P2 = P2 + P0;
	jump.s .L519;
.L520:
	nop;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R0 += 1;
.L519:
	cc =R2<=R0 (iu);
	if !cc jump .L520 (bp);
	jump.s .L513;
.L522:
	nop;
	R0 = B [P0--] (X);
	B [P2--] = R0;
.L517:
	R0 = P0;
	cc =R0==R1;
	if !cc jump .L522 (bp);
.L513:
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
	[--sp] = ( r7:7 );

	LINK 0;
	R3 = R0;
	R0 = 0 (X);
	R3 = R3.L (Z);
	R7 = 15 (X);
	P2 = 17 (X);
	jump.s .L530;
.L532:
	R2 = R7 - R0;
	R1 = R3;
	R1 >>>= R2;
	cc = !BITTST (R1,0);
	if !cc jump .L531;
	R0 += 1;
.L530:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L532;
.L531:
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	LINK 0;
	R2 = R0;
	R0 = 0 (X);
	R2 = R2.L (Z);
	P2 = 17 (X);
	jump.s .L534;
.L536:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if !cc jump .L535;
	R0 += 1;
.L534:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L536;
.L535:
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
	call ___gesf2;
	cc =R0<0;
	if cc jump .L542 (bp);
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	R0 = R0 + R1;
	jump.s .L540;
.L542:
	R0 = R7;
	call ___fixsfsi;
.L540:
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	___fixunssfsi, .-___fixunssfsi
	.align 4
.global ___parityhi2;
.type ___parityhi2, STT_FUNC;
___parityhi2:
	LINK 0;
	R3 = R0;
	R2 = 0 (X);
	R0 = 0 (X);
	R3 = R3.L (Z);
	P2 = 17 (X);
	jump.s .L544;
.L546:
	R1 = R3;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if cc jump .L545 (bp);
	R2 += 1;
.L545:
	R0 += 1;
.L544:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L546;
	R0 = 1 (X);
	R2 = R2 & R0;
	R0 = R2;
	UNLINK;
	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	LINK 0;
	R2 = R0;
	R3 = 0 (X);
	R0 = 0 (X);
	R2 = R2.L (Z);
	P2 = 17 (X);
	jump.s .L548;
.L550:
	R1 = R2;
	R1 >>>= R0;
	cc = !BITTST (R1,0);
	if cc jump .L549 (bp);
	R3 += 1;
.L549:
	R0 += 1;
.L548:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L550;
	R0 = R3;
	UNLINK;
	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	LINK 0;
	R2 = 0 (X);
	jump.s .L552;
.L554:
	cc = !BITTST (R0,0);
	if cc jump .L553 (bp);
	R2 = R2 + R1;
.L553:
	R0 >>= 1;
	R1 <<= 1;
.L552:
	cc =R0==0;
	if !cc jump .L554 (bp);
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
	R0 = R1;
	cc =R2==0;
	if cc jump .L560;
	R1 = 0 (X);
	jump.s .L557;
.L559:
	cc = !BITTST (R0,0);
	if cc jump .L558 (bp);
	R1 = R1 + R2;
.L558:
	R2 <<= 1;
	R0 >>= 1;
.L557:
	cc =R0==0;
	if !cc jump .L559 (bp);
	jump.s .L556;
.L560:
	R1 = 0 (X);
.L556:
	R0 = R1;
	UNLINK;
	rts;
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 4
.global ___udivmodsi4;
.type ___udivmodsi4, STT_FUNC;
___udivmodsi4:
	LINK 0;
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	P2 = 33 (X);
	jump.s .L562;
.L572:
	cc =R0<0;
	if cc jump .L574;
	R0 <<= 1;
	R1 <<= 1;
.L562:
	cc =R0<R3 (iu);
	if cc jump .L563 (bp);
	R2 = 0 (X);
	jump.s .L564;
.L575:
	R2 = 0 (X);
	jump.s .L564;
.L563:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L572;
	jump.s .L575;
.L574:
	R2 = 0 (X);
	jump.s .L564;
.L568:
	cc =R3<R0 (iu);
	if cc jump .L567 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L567:
	R1 >>= 1;
	R0 >>= 1;
.L564:
	cc =R1==0;
	if !cc jump .L568 (bp);
	cc =P1==0;
	if cc jump .L569 (bp);
	R2 = R3;
.L569:
	R0 = R2;
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
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L578;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if !cc jump .L579;
	R0 = 0 (X);
	jump.s .L577;
.L578:
	R0 = -1 (X);
	jump.s .L577;
.L579:
	R0 = 1 (X);
.L577:
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
	[SP+12] = R7;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L582;
	[SP+12] = R7;
	R2 = R6;
	R0 = [FP+16];
	R1 = [FP+20];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L583;
	R0 = 0 (X);
	jump.s .L581;
.L582:
	R0 = -1 (X);
	jump.s .L581;
.L583:
	R0 = 1 (X);
.L581:
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
	R2 = R0;
	R4 = R2;
	R4 >>>= 31;
	[FP+-8] = R2;
	[FP+-4] = R4;
	R3 = R1;
	R3 >>>= 31;
	[SP+12] = R3;
	R2 = R1;
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
	[FP+-8] = R0;
	P0 = 0 (X);
	[FP+-4] = P0;
	R2 = R1;
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
	R2 = R0;
	cc =R1<0;
	if !cc jump .L593 (bp);
	R1 = -R1;
	P2 = 1 (X);
	jump.s .L587;
.L593:
	P2 = 0 (X);
.L587:
	R3 = 33 (X);
	R7 = 0 (X);
	jump.s .L588;
.L591:
	cc = !BITTST (R1,0);
	if cc jump .L589 (bp);
	R7 = R7 + R2;
.L589:
	R2 <<= 1;
	R1 >>>= 1;
.L588:
	cc =R1==0;
	if cc jump .L590;
	R0 = R3;
	R0 += -1;
	R3 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L591 (bp);
.L590:
	cc =P2==0;
	if cc jump .L592 (bp);
	R7 = -R7;
.L592:
	R0 = R7;
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
	if !cc jump .L599 (bp);
	R0 = -R0;
	R7 = 1 (X);
	jump.s .L596;
.L599:
	R7 = 0 (X);
.L596:
	cc =R1<0;
	if !cc jump .L597 (bp);
	R1 = -R1;
	BITTGL (R7, 0);
.L597:
	R2 = 0 (X);
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L598 (bp);
	R0 = -R0;
.L598:
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
	R3 = R0;
	R0 = R1;
	cc =R3<0;
	if !cc jump .L604 (bp);
	R3 = -R3;
	R7 = 1 (X);
	jump.s .L601;
.L604:
	R7 = 0 (X);
.L601:
	R0 = abs R0;
	R2 = 1 (X);
	R1 = R0;
	R0 = R3;
	call ___udivmodsi4;
	cc =R7==0;
	if cc jump .L603 (bp);
	R0 = -R0;
.L603:
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
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	R7 = R3.L (Z);
	P2 = 17 (X);
	jump.s .L606;
.L616:
	R2 = R0.L (X);
	cc =R2<0;
	if cc jump .L618;
	R0 <<= 1;
	R1 <<= 1;
.L606:
	R2 = R0.L (Z);
	cc =R2<R7 (iu);
	if cc jump .L607 (bp);
	R6 = 0 (X);
	jump.s .L608;
.L619:
	R6 = 0 (X);
	jump.s .L608;
.L607:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L616;
	jump.s .L619;
.L618:
	R6 = 0 (X);
	jump.s .L608;
.L612:
	R2 = R3.L (Z);
	R7 = R0.L (Z);
	cc =R2<R7 (iu);
	if cc jump .L611 (bp);
	R3 = R3 - R0;
	R6 = R6 | R1;
.L611:
	R1 <<= 16;
	R1 >>= 17;
	R0 <<= 16;
	R0 >>= 17;
.L608:
	R2 = R1.L (Z);
	cc =R2==0;
	if !cc jump .L612 (bp);
	cc =P1==0;
	if cc jump .L613 (bp);
	R6 = R3;
.L613:
	R0 = R6;
	UNLINK;
	( r7:6 ) = [sp++];

	rts;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	LINK 0;
	R3 = R0;
	R0 = R1;
	P1 = R2;
	R1 = 1 (X);
	P2 = 33 (X);
	jump.s .L621;
.L631:
	cc =R0<0;
	if cc jump .L633;
	R0 <<= 1;
	R1 <<= 1;
.L621:
	cc =R0<R3 (iu);
	if cc jump .L622 (bp);
	R2 = 0 (X);
	jump.s .L623;
.L634:
	R2 = 0 (X);
	jump.s .L623;
.L622:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L631;
	jump.s .L634;
.L633:
	R2 = 0 (X);
	jump.s .L623;
.L627:
	cc =R3<R0 (iu);
	if cc jump .L626 (bp);
	R3 = R3 - R0;
	R2 = R2 | R1;
.L626:
	R1 >>= 1;
	R0 >>= 1;
.L623:
	cc =R1==0;
	if !cc jump .L627 (bp);
	cc =P1==0;
	if cc jump .L628 (bp);
	R2 = R3;
.L628:
	R0 = R2;
	UNLINK;
	rts;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	[--sp] = ( r7:6 );

	LINK 8;
	R6 = R0;
	R7 = R1;
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L636 (bp);
	R2 = 0 (X);
	R0 += -32;
	R3 = R6;
	R3 <<= R0;
	jump.s .L637;
.L636:
	cc =R2==0;
	if cc jump .L639;
	R2 = R6;
	R2 <<= R0;
	R7 <<= R0;
	R1 = 32 (X);
	R0 = R1 - R0;
	R6 >>= R0;
	R3 = R6 | R7;
.L637:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L638;
.L639:
	[FP+-8] = R6;
	[FP+-4] = R1;
.L638:
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
	R6 = R0;
	R7 = R1;
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L641 (bp);
	R3 = R1 >>> 31;
	R0 += -32;
	R2 = R1;
	R2 >>>= R0;
	jump.s .L642;
.L641:
	cc =R2==0;
	if cc jump .L644;
	R3 = R1;
	R3 >>>= R2;
	R1 = 32 (X);
	R1 = R1 - R2;
	R7 <<= R1;
	R6 >>= R2;
	R2 = R7 | R6;
.L642:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L643;
.L644:
	[FP+-8] = R6;
	[FP+-4] = R1;
.L643:
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
	R2 = R1 >> 24;
	I2 = R2;
	I3 = 0 (X);
	R2 = R1 >> 8;
	M0 = 65280 (Z);
	R4 = M0;
	R4 = R2 & R4;
	I0 = R4;
	I1 = 0 (X);
	R5 = R1 << 8;
	R2 = R0 >> 24;
	R2 = R5 | R2;
	P2.H = 255;
	P2.L = 0;
	R7 = P2;
	R7 = R2 & R7;
	P0 = R7;
	P1 = 0 (X);
	R2 = R1 << 24;
	B2 = R2;
	R6 = R0 >> 8;
	R6 = R2 | R6;
	R2 = R6 >>> 24;
	R2 <<= 24;
	R3 = 0 (X);
	R1 = R0 >> 24;
	R5 = R1 | R5;
	R4 = R0 << 8;
	B0 = 0 (X);
	R7 = R5.B (Z);
	B1 = R7;
	R1 = R0 >> 8;
	R7 = B2;
	R7 = R1 | R7;
	R6 = R0 << 24;
	R0 = M0;
	R0 = R7 & R0;
	B3 = R0;
	M1 = R4;
	M2 = 0 (X);
	R4 = P2;
	R1 = M1;
	R4 = R1 & R4;
	M3 = R4;
	R0 = I2;
	R7 = I3;
	R1 = R6 | R7;
	R7 = I0;
	R4 = R0 | R7;
	R7 = I1;
	R5 = R1 | R7;
	R0 = P0;
	R6 = R4 | R0;
	R1 = P1;
	R7 = R5 | R1;
	R4 = R6 | R2;
	R5 = R7 | R3;
	R2 = B0;
	R6 = R4 | R2;
	R0 = B1;
	R7 = R5 | R0;
	R2 = R6 | R1;
	R4 = B3;
	R3 = R7 | R4;
	R5 = M2;
	R5 = R2 | R5;
	[FP+-8] = R5;
	R7 = M3;
	R7 = R3 | R7;
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
	if !cc jump .L652 (bp);
	R1 = 16 (X);
	jump.s .L648;
.L652:
	R1 = 0 (X);
.L648:
	R2 = 16 (X);
	R2 = R2 - R1;
	R0 >>= R2;
	R2 = 65280 (Z);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L653 (bp);
	R3 = 8 (X);
	jump.s .L649;
.L653:
	R3 = 0 (X);
.L649:
	R2 = 8 (X);
	R2 = R2 - R3;
	R0 >>= R2;
	R1 = R1 + R3;
	R2 = 240 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L654 (bp);
	R3 = 4 (X);
	jump.s .L650;
.L654:
	R3 = 0 (X);
.L650:
	R2 = 4 (X);
	R2 = R2 - R3;
	R0 >>= R2;
	R1 = R1 + R3;
	R2 = 12 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L655 (bp);
	R3 = 2 (X);
	jump.s .L651;
.L655:
	R3 = 0 (X);
.L651:
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
	[FP+16] = R2;
	R2 = [FP+16];
	R3 = [FP+20];
	P1 = R1;
	P2 = R3;
	cc =P1<P2;
	if cc jump .L658;
	cc =P1<=P2;
	if !cc jump .L659;
	P1 = R0;
	P2 = R2;
	cc =P1<P2 (iu);
	if cc jump .L660;
	cc =R0<=R2 (iu);
	if !cc jump .L661;
	R0 = 1 (X);
	jump.s .L657;
.L658:
	R0 = 0 (X);
	jump.s .L657;
.L659:
	R0 = 2 (X);
	jump.s .L657;
.L660:
	R0 = 0 (X);
	jump.s .L657;
.L661:
	R0 = 2 (X);
.L657:
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
	[SP+12] = R3;
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
	if !cc jump .L668 (bp);
	R1 = 16 (X);
	jump.s .L664;
.L668:
	R1 = 0 (X);
.L664:
	R0 >>= R1;
	R2 = R0.B (Z);
	cc =R2==0;
	if !cc jump .L669 (bp);
	R2 = 8 (X);
	jump.s .L665;
.L669:
	R2 = 0 (X);
.L665:
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 15 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L670 (bp);
	R2 = 4 (X);
	jump.s .L666;
.L670:
	R2 = 0 (X);
.L666:
	R0 >>= R2;
	R1 = R1 + R2;
	R2 = 3 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L671 (bp);
	R2 = 2 (X);
	jump.s .L667;
.L671:
	R2 = 0 (X);
.L667:
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
	R6 = R0;
	R7 = R1;
	R0 = R2;
	cc = !BITTST (R2,5);
	if cc jump .L673 (bp);
	R3 = 0 (X);
	R0 += -32;
	R2 = R1;
	R2 >>= R0;
	jump.s .L674;
.L673:
	cc =R2==0;
	if cc jump .L676;
	R3 = R1;
	R3 >>= R2;
	R1 = 32 (X);
	R1 = R1 - R2;
	R7 <<= R1;
	R6 >>= R2;
	R2 = R7 | R6;
.L674:
	[FP+-8] = R2;
	[FP+-4] = R3;
	jump.s .L675;
.L676:
	[FP+-8] = R6;
	[FP+-4] = R1;
.L675:
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

	LINK 0;
	R7 = R1;
	R5 = R0.L (Z);
	R4 = R1.L (Z);
	R6 = R5;
	R6 *= R4;
	R1 = R6 >> 16;
	R6 = R6.L (Z);
	R0 >>= 16;
	R4 *= R0;
	R1 = R1 + R4;
	R4 = R1 << 16;
	R2 = R4 + R6;
	R3 = R1 >> 16;
	R1 = R2 >> 16;
	R6 = R2.L (Z);
	R7 >>= 16;
	R5 *= R7;
	R1 = R1 + R5;
	R5 = R1 << 16;
	R2 = R5 + R6;
	R1 >>= 16;
	R1 = R1 + R3;
	R0 *= R7;
	R3 = R0 + R1;
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
	[--sp] = ( r7:4 );

	LINK 20;
	[FP+-8] = R0;
	[FP+-4] = R1;
	R6 = R0;
	R7 = R1;
	[FP+32] = R2;
	R4 = [FP+32];
	R5 = [FP+36];
	R1 = R4;
	call ___muldsi3;
	[FP+-8] = R0;
	R0 = R7;
	R0 *= R4;
	R6 *= R5;
	R0 = R0 + R6;
	R0 = R0 + R1;
	[FP+-4] = R0;
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___muldi3_compiler_rt, .-___muldi3_compiler_rt
	.align 4
.global ___negdi2;
.type ___negdi2, STT_FUNC;
___negdi2:
	[--sp] = ( r7:6 );

	LINK 8;
	R6 = 0 (X);
	R7 = 0 (X);
	R0 = R6 - R0; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R7 - R1;
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
	R2 = [FP+-8];
	R0 = R2 ^ R1;
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
	UNLINK;
	rts;
	.size	___paritysi2, .-___paritysi2
	.align 4
.global ___popcountdi2;
.type ___popcountdi2, STT_FUNC;
___popcountdi2:
	[--sp] = ( r7:5 );

	LINK 8;
	R2 = R0;
	R3 = R1;
	CC = R0 < R0;
	R1 = ROT R1 BY -1;
	R0 = ROT R0 BY -1;
	R5.H = 21845;
	R5.L = 21845;
	R6 = R0 & R5;
	R7 = R1 & R5;
	R0 = R2 - R6; cc = ac0;
	CC = ! CC;
	R2 = CC;
	R1 = R3 - R7;
	R1 = R1 - R2;
	R7 = R1 << 30;
	R2 = R0 >> 2;
	R2 = R7 | R2;
	R3 = R1 >> 2;
	R5.H = 13107;
	R5.L = 13107;
	R6 = R2 & R5;
	R7 = R3 & R5;
	R2 = R0 & R5;
	R3 = R1 & R5;
	R0 = R6 + R2; cc = ac0;
	R2 = CC;
	R1 = R7 + R3;
	R1 = R1 + R2;
	R7 = R1 << 28;
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
	R2 = R1 >> 0;
	R2 = R2 + R0;
	R0 = R2 >> 16;
	R2 = R2 + R0;
	R0 = R2 >> 8;
	R0 = R0 + R2;
	R1 = 127 (X);
	R0 = R0 & R1;
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
	.size	___popcountdi2, .-___popcountdi2
	.align 4
.global ___popcountsi2;
.type ___popcountsi2, STT_FUNC;
___popcountsi2:
	LINK 0;
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
	UNLINK;
	rts;
	.size	___popcountsi2, .-___popcountsi2
	.align 4
.global ___powidf2;
.type ___powidf2, STT_FUNC;
___powidf2:
	[--sp] = ( r7:4 );

	LINK 32;
	R6 = R0;
	R7 = R1;
	R5 = R2;
	R4 = R2 >> 31;
	R2 = 0 (X);
	R3 = 1023 (X);
	R3 <<= 20;
	[FP+-8] = R2;
	[FP+-4] = R3;
.L687:
	cc = !BITTST (R5,0);
	if cc jump .L685 (bp);
	[SP+12] = R7;
	R2 = R6;
	R0 = [FP+-8];
	R1 = [FP+-4];
	call ___muldf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
.L685:
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L686;
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	R6 = R0;
	R7 = R1;
	jump.s .L687;
.L686:
	cc =R4==0;
	if cc jump .L689 (bp);
	R0 = [FP+-4];
	[SP+12] = R0;
	R2 = [FP+-8];
	R0 = 0 (X);
	R1 = 1023 (X);
	R1 <<= 20;
	call ___divdf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
	jump.s .L688;
.L689:
.L688:
	R0 = [FP+-8];
	R1 = [FP+-4];
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___powidf2, .-___powidf2
	.align 4
.global ___powisf2;
.type ___powisf2, STT_FUNC;
___powisf2:
	[--sp] = ( r7:4 );

	LINK 12;
	R6 = R0;
	R7 = R1;
	R4 = R1 >> 31;
	R5 = 127 (X);
	R5 <<= 23;
.L693:
	cc = !BITTST (R7,0);
	if cc jump .L691 (bp);
	R1 = R6;
	R0 = R5;
	call ___mulsf3;
	R5 = R0;
.L691:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L692;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	R6 = R0;
	jump.s .L693;
.L692:
	cc =R4==0;
	if cc jump .L694 (bp);
	R1 = R5;
	R0 = 127 (X);
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L694:
	R0 = R5;
	UNLINK;
	( r7:4 ) = [sp++];

	rts;
	.size	___powisf2, .-___powisf2
	.align 4
.global ___ucmpdi2;
.type ___ucmpdi2, STT_FUNC;
___ucmpdi2:
	LINK 8;
	[FP+16] = R2;
	R2 = [FP+16];
	R3 = [FP+20];
	P1 = R1;
	P2 = R3;
	cc =P1<P2 (iu);
	if cc jump .L698;
	cc =P1<=P2 (iu);
	if !cc jump .L699;
	P1 = R0;
	P2 = R2;
	cc =P1<P2 (iu);
	if cc jump .L700;
	cc =R0<=R2 (iu);
	if !cc jump .L701;
	R0 = 1 (X);
	jump.s .L697;
.L698:
	R0 = 0 (X);
	jump.s .L697;
.L699:
	R0 = 2 (X);
	jump.s .L697;
.L700:
	R0 = 0 (X);
	jump.s .L697;
.L701:
	R0 = 2 (X);
.L697:
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
	[SP+12] = R3;
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
