.file "mini-libc.c";
.text;
	.align 4
.global _memmove;
.type _memmove, STT_FUNC;
_memmove:
	[--sp] = ( r7:7, p5:5 );

	R7 = R0;
	cc =R7<=R1 (iu);
	R3 = R1;
	R0 = R2;
	if cc jump .L2 (bp);
	cc =R0==0;
	R2 = R1 + R2;
	if cc jump .L3;
	P0 = R0;
	P1 = R7;
	P2 = R2;
	R3 = R2 - R1;
	P0 += -1;
	P5 = P1 + P0;
	P2 += -1;
	LC1 = R3;
	LSETUP (.L4, .L37) LC1;
.L4:
	R1 = B [P2--] (X);
.L37:
	B [P5--] = R1;
.L3:
	R0 = R7;
	( r7:7, p5:5 ) = [sp++];

	rts;
.L2:
	cc =R7==R1;
	if cc jump .L3;
	cc =R2==0;
	if cc jump .L3;
	R1 = R2;
	R1 += -1;
	cc =R1<=6 (iu);
	if cc jump .L35;
	P1 = R3;
	R1 = R3 | R7;
	R2 = 3 (X);
	R1 = R1 & R2;
	CC = R1;
	P1 += 1;
	if cc jump .L5;
	R2 = P1;
	R1 = R7 - R2;
	cc =R1<=2 (iu);
	if cc jump .L5;
	R2 = R0 >> 2;
	R2 <<= 2;
	P2 = R2;
	R1 = R7 + R2;
	P0 = R3;
	P5 = R1;
	P1 = R7;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L6, .L36) LC1 = P2;
.L6:
	R1 = [P0++];
.L36:
	[P1++] = R1;
	R3 = R3 + R2;
	cc =R0==R2;
	P0 = R3;
	R1 = R0 - R2;
	if cc jump .L3;
	cc =R1==1;
	R0 = B [P0] (X);
	B [P5] = R0;
	if cc jump .L3;
	cc =R1==2;
	R2 = B [P0+1] (X);
	B [P5+1] = R2;
	if cc jump .L3;
	R3 = B [P0+2] (X);
	B [P5+2] = R3;
	jump.s .L3;
.L35:
	P1 = R3;
	P1 += 1;
.L5:
	R1 = R3 + R0;
	P2 = R1;
	P5 = R7;
	P2 -= P1;
	P2 += 1;
.L9:
	R0 = B [P1+-1] (X);
	B [P5++] = R0;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L19;
	jump.s .L3;
.L19:
	P1 += 1;
	jump.s .L9;
	.size	_memmove, .-_memmove
	.align 4
.global _memccpy;
.type _memccpy, STT_FUNC;
_memccpy:
	P1 = [SP+12];
	P2 = R0;
	P0 = R1;
	R3 = R2.B (Z);
	cc =P1==0;
	if cc jump .L39;
	LSETUP (.L40, .L50) LC1 = P1;
.L40:
	R0 = B [P0++] (Z);
	cc =R0==R3;
	B [P2++] = R0;
	if cc jump .L38;
.L50:
	nop;
.L39:
	P2 = 0 (X);
.L38:
	R0 = P2;
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
	if cc jump .L59;
	LSETUP (.L53, .L60) LC1 = P1;
.L53:
	R0 = P2;
	R1 = B [P2++] (Z);
	cc =R1==R2;
	if cc jump .L51;
.L60:
	nop;
.L59:
	R0 = 0 (X);
.L51:
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
	if cc jump .L71;
	R1 = R3;
	LSETUP (.L63, .L74) LC1 = P0;
.L63:
	P2 = R0;
	P1 = R1;
	R0 += 1;
	R1 += 1;
	R3 = B [P2] (Z);
	R2 = B [P1] (Z);
	cc =R2==R3;
	if !cc jump .L73;
.L74:
	nop;
.L71:
	R0 = 0 (X);
	rts;
.L73:
	R0 = R2 - R3;
	rts;
	.size	_memcmp, .-_memcmp
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	cc =R2==0;
	LINK 12;
	R3 = R0;
	if cc jump .L76;
	call _memcpy;
	R3 = R0;
.L76:
	UNLINK;
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

	R2 = R3 + R0;
	R7 = R1.B (Z);
	R3 += -1;
	jump.s .L81;
.L83:
	P2 = R2;
	R2 += -1;
	R1 = B [P2] (Z);
	cc =R1==R7;
	if cc jump .L80;
.L81:
	cc =R2==R3;
	if !cc jump .L83 (bp);
	P2 = 0 (X);
.L80:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
	.size	_memrchr, .-_memrchr
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	cc =R2==0;
	LINK 12;
	R3 = R0;
	if cc jump .L87;
	R0 = R1.B (Z);
	R1 = R0;
	R0 = R3;
	call _memset;
	R3 = R0;
.L87:
	UNLINK;
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
	cc =R0==0;
	B [P2] = R0;
	if cc jump .L91;
	P1 += 1;
	P2 += 1;
.L90:
	R1 = P2;
	R2 = B [P1++] (X);
	cc =R2==0;
	B [P2++] = R2;
	if !cc jump .L90 (bp);
	R0 = R1;
	rts;
.L91:
	R1 = P2;
	R0 = R1;
	rts;
	.size	_stpcpy, .-_stpcpy
	.align 4
.global _strchrnul;
.type _strchrnul, STT_FUNC;
_strchrnul:
	P2 = R0;
	R3 = R1.B (Z);
	R1 = B [P2] (X);
	cc =R1==0;
	R0 = R1;
	if !cc jump .L94 (bp);
	jump.s .L93;
.L96:
	P2 += 1;
	R2 = B [P2] (X);
	cc =R2==0;
	R0 = R2;
	if cc jump .L93;
.L94:
	R0 = R0.B (Z);
	cc =R0==R3;
	if !cc jump .L96 (bp);
.L93:
	R0 = P2;
	rts;
	.size	_strchrnul, .-_strchrnul
	.align 4
.global _strchr;
.type _strchr, STT_FUNC;
_strchr:
	R2 = R1;
	R1 = R0;
	jump.s .L103;
.L106:
	cc =R0==0;
	if cc jump .L105;
.L103:
	P2 = R1;
	R1 += 1;
	R0 = B [P2] (X);
	cc =R0==R2;
	if !cc jump .L106 (bp);
	R0 = P2;
	rts;
.L105:
	P2 = 0 (X);
	R0 = P2;
	rts;
	.size	_strchr, .-_strchr
	.align 4
.global _strcmp;
.type _strcmp, STT_FUNC;
_strcmp:
	P2 = R1;
	P1 = R0;
	R3 = B [P2] (X);
	R0 = B [P1] (X);
	cc =R0==R3;
	R1 = R0;
	R2 = R3;
	if !cc jump .L113;
	P1 += 1;
	P2 += 1;
	jump.s .L110;
.L111:
	R0 = B [P1++] (X);
	R3 = B [P2++] (X);
	cc =R0==R3;
	R1 = R0;
	R2 = R3;
	if !cc jump .L113;
.L110:
	cc =R0==0;
	if !cc jump .L111 (bp);
	R1 = 0 (X);
	R0 = R2.B (Z);
	R0 = R1 - R0;
	rts;
.L113:
	R1 = R1.B (Z);
	R0 = R2.B (Z);
	R0 = R1 - R0;
	rts;
	.size	_strcmp, .-_strcmp
	.align 4
.global _strlen;
.type _strlen, STT_FUNC;
_strlen:
	P1 = R0;
	R0 = B [P1] (X);
	cc =R0==0;
	if cc jump .L117;
	R2 = P1;
	R2 += 1;
.L116:
	P2 = R2;
	R2 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L116 (bp);
	P2 -= P1;
	R0 = P2;
	rts;
.L117:
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
	if cc jump .L127;
	P0 += 1;
	R0 = B [P0+-1] (Z);
	cc =R0==0;
	if cc jump .L129;
.L123:
	P5 = P1;
	R1 = B [P1++] (Z);
	cc =R1==0;
	if cc jump .L122;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L125;
.L122:
	R0 = R0 - R1;
	( p5:5 ) = [sp++];

	rts;
.L125:
	cc =R1==R0;
	if !cc jump .L122;
	R0 = B [P0++] (Z);
	cc =R0==0;
	if !cc jump .L123 (bp);
	R1 = B [P5+1] (Z);
	jump.s .L122;
.L127:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L129:
	R1 = B [P1] (Z);
	jump.s .L122;
	.size	_strncmp, .-_strncmp
	.align 4
.global _swab;
.type _swab, STT_FUNC;
_swab:
	cc =R2<=1;
	P2 = R0;
	P1 = R1;
	R0 = R2;
	if cc jump .L130;
	BITCLR (R0,0);
	P0 = R0;
	P0 += -2;
	P0 = P0 >> 1;
	P0 += 1;
	LSETUP (.L132, .L134) LC1 = P0;
.L132:
	P1 += 2;
	R1 = B [P2+1] (X);
	R2 = B [P2] (X);
	B [P1+-2] = R1;
	B [P1+-1] = R2;
.L134:
	P2 += 2;
.L130:
	rts;
	.size	_swab, .-_swab
	.align 4
.global _isalpha;
.type _isalpha, STT_FUNC;
_isalpha:
	R1 = -97 (X);
	BITSET (R0, 5);
	R0 = R0 + R1;
	R2 = 25 (X);
	cc =R0<=R2 (iu);
	R0 = CC;
	rts;
	.size	_isalpha, .-_isalpha
	.align 4
.global _isascii;
.type _isascii, STT_FUNC;
_isascii:
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
	if cc jump .L139;
	R2 = 9 (X);
	cc =R0==R2;
	R0 = CC;
	rts;
.L139:
	R0 = 1 (X);
	rts;
	.size	_isblank, .-_isblank
	.align 4
.global _iscntrl;
.type _iscntrl, STT_FUNC;
_iscntrl:
	R1 = 31 (X);
	cc =R0<=R1 (iu);
	if cc jump .L142 (bp);
	R2 = 127 (X);
	cc =R0==R2;
	R0 = CC;
	rts;
.L142:
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
	P1 = -97 (X);
	P0 = P2 + P1;
	P2 = 25 (X);
	cc =P0<=P2 (iu);
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
	if cc jump .L149;
	R0 += -9;
	cc =R0<=4 (iu);
	R0 = CC;
	rts;
.L149:
	R0 = 1 (X);
	rts;
	.size	_isspace, .-_isspace
	.align 4
.global _isupper;
.type _isupper, STT_FUNC;
_isupper:
	P2 = R0;
	P1 = -65 (X);
	P0 = P2 + P1;
	P2 = 25 (X);
	cc =P0<=P2 (iu);
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
	if cc jump .L155 (bp);
	P1 = -127 (X);
	P1 = P2 + P1;
	P0 = 32 (X);
	cc =P1<=P0 (iu);
	if !cc jump .L156 (bp);
.L155:
	R0 = 1 (X);
	rts;
.L156:
	P1 = -8232 (X);
	P0 = P2 + P1;
	cc =P0<=1 (iu);
	if cc jump .L155;
	P1.H = 65535;
	P1.L = 7;
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
	if cc jump .L165;
	R2 = 8231 (X);
	cc =R0<=R2 (iu);
	if cc jump .L163;
	R3 = -8234 (X);
	R1 = R0 + R3;
	R2 = 47061 (Z);
	cc =R1<=R2 (iu);
	if cc jump .L163;
	R3 = -7 (X);
	R3 <<= 13;
	R1 = R0 + R3;
	R2 = 8184 (X);
	cc =R1<=R2 (iu);
	if cc jump .L163;
	R3 = -16383 (X);
	R3 <<= 2;
	R2 = 3 (X);
	R1 = R0 + R3;
	BITSET (R2, 20);
	cc =R1<=R2 (iu);
	if !cc jump .L164;
	R3 = 65534 (Z);
	R0 = R0 & R3;
	cc =R0==R3;
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L163:
	R0 = 1 (X);
	rts;
.L165:
	R0 += 1;
	R1 = 127 (X);
	R3 = R0 & R1;
	R2 = 32 (X);
	cc =R3<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	rts;
.L164:
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
	if cc jump .L168 (bp);
	R3 = -97 (X);
	BITSET (R0, 5);
	R0 = R0 + R3;
	cc =R0<=5 (iu);
	R0 = CC;
	rts;
.L168:
	R0 = 1 (X);
	rts;
	.size	_iswxdigit, .-_iswxdigit
	.align 4
.global _toascii;
.type _toascii, STT_FUNC;
_toascii:
	R1 = 127 (X);
	R0 = R0 & R1;
	rts;
	.size	_toascii, .-_toascii
	.align 4
.global _fdim;
.type _fdim, STT_FUNC;
_fdim:
	[--sp] = ( r7:7 );

	LINK 24;
	[FP+12] = R0;
	[FP+16] = R1;
	[FP+20] = R2;
	[SP+12] = R1;
	R2 = [FP+12];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L173;
	R7 = [FP+24];
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L174;
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L178 (bp);
	R2 = 0 (X);
	R3 = 0 (X);
	R0 = R2;
	R1 = R3;
.L170:
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L178:
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___subdf3;
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L173:
	R0 = [FP+12];
	R1 = [FP+16];
	jump.s .L170;
.L174:
	R0 = [FP+20];
	R1 = [FP+24];
	jump.s .L170;
	.size	_fdim, .-_fdim
	.align 4
.global _fdimf;
.type _fdimf, STT_FUNC;
_fdimf:
	[--sp] = ( r7:6 );

	LINK 12;
	R6 = R1;
	R1 = R0;
	R7 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L179;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L183;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	if cc jump .L186 (bp);
	R0 = R7;
	R1 = R6;
	call ___subsf3;
	R7 = R0;
.L179:
	UNLINK;
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L186:
	UNLINK;
	R7 = 0 (X);
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L183:
	R7 = R6;
	jump.s .L179;
	.size	_fdimf, .-_fdimf
	.align 4
.global _fmax;
.type _fmax, STT_FUNC;
_fmax:
	[--sp] = ( r7:7 );

	LINK 32;
	[FP+12] = R0;
	[FP+16] = R1;
	[FP+20] = R2;
	[SP+12] = R1;
	R2 = [FP+12];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L195;
	R7 = [FP+24];
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L194;
	R0 = [FP+16];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L189 (bp);
	cc =R0==0;
	if cc jump .L194 (bp);
.L195:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L194:
	R0 = [FP+12];
	R1 = [FP+16];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L189:
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L194 (bp);
	jump.s .L195;
	.size	_fmax, .-_fmax
	.align 4
.global _fmaxf;
.type _fmaxf, STT_FUNC;
_fmaxf:
	[--sp] = ( r7:6 );

	LINK 12;
	R7 = R1;
	R1 = R0;
	R6 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L198;
	R1 = R7;
	R0 = R7;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L205;
	R0 = R6 >>> 31;
	R1 = R7 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L200 (bp);
	cc =R0==0;
	if !cc jump .L198 (bp);
.L205:
	R7 = R6;
.L198:
	UNLINK;
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L200:
	R1 = R7;
	R0 = R6;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L198 (bp);
	jump.s .L205;
	.size	_fmaxf, .-_fmaxf
	.align 4
.global _fmaxl;
.type _fmaxl, STT_FUNC;
_fmaxl:
	[--sp] = ( r7:7 );

	LINK 32;
	[FP+12] = R0;
	[FP+16] = R1;
	[FP+20] = R2;
	[SP+12] = R1;
	R2 = [FP+12];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L216;
	R7 = [FP+24];
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L215;
	R0 = [FP+16];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L210 (bp);
	cc =R0==0;
	if cc jump .L215 (bp);
.L216:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L215:
	R0 = [FP+12];
	R1 = [FP+16];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L210:
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L215 (bp);
	jump.s .L216;
	.size	_fmaxl, .-_fmaxl
	.align 4
.global _fmin;
.type _fmin, STT_FUNC;
_fmin:
	[--sp] = ( r7:7 );

	LINK 24;
	[FP+12] = R0;
	[FP+16] = R1;
	[FP+20] = R2;
	[SP+12] = R1;
	R2 = [FP+12];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L225;
	R7 = [FP+24];
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L227;
	R0 = [FP+16];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L221 (bp);
	cc =R0==0;
	if !cc jump .L227 (bp);
.L225:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L227:
	R0 = [FP+12];
	R1 = [FP+16];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L221:
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L225 (bp);
	jump.s .L227;
	.size	_fmin, .-_fmin
	.align 4
.global _fminf;
.type _fminf, STT_FUNC;
_fminf:
	[--sp] = ( r7:6 );

	LINK 12;
	R6 = R1;
	R1 = R0;
	R7 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L236;
	R1 = R6;
	R0 = R6;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L230;
	R0 = R7 >>> 31;
	R1 = R6 >>> 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L232 (bp);
	cc =R0==0;
	if !cc jump .L230 (bp);
.L236:
	R7 = R6;
.L230:
	UNLINK;
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L232:
	R1 = R6;
	R0 = R7;
	call ___ltsf2;
	R0 >>= 31;
	cc =R0==0;
	if !cc jump .L230 (bp);
	jump.s .L236;
	.size	_fminf, .-_fminf
	.align 4
.global _fminl;
.type _fminl, STT_FUNC;
_fminl:
	[--sp] = ( r7:7 );

	LINK 24;
	[FP+12] = R0;
	[FP+16] = R1;
	[FP+20] = R2;
	[SP+12] = R1;
	R2 = [FP+12];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L246;
	R7 = [FP+24];
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+20];
	R1 = [FP+24];
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L248;
	R0 = [FP+16];
	R1 = R7;
	R0 >>>= 31;
	R1 >>>= 31;
	R0 <<= 31;
	R1 <<= 31;
	cc =R0==R1;
	if cc jump .L242 (bp);
	cc =R0==0;
	if !cc jump .L248 (bp);
.L246:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L248:
	R0 = [FP+12];
	R1 = [FP+16];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L242:
	[SP+12] = R7;
	R2 = [FP+20];
	R0 = [FP+12];
	R1 = [FP+16];
	call ___ltdf2;
	R0 >>= 31;
	cc =R0==0;
	if cc jump .L246 (bp);
	jump.s .L248;
	.size	_fminl, .-_fminl
	.align 4
.global _l64a;
.type _l64a, STT_FUNC;
_l64a:
	P1.H = _s.0;
	cc =R0==0;
	P1.L = _s.0;
	if cc jump .L252;
	R3.H = _digits;
	R3.L = _digits;
	R2 = 63 (X);
.L253:
	R1 = R0 & R2;
	R1 = R3 + R1;
	P2 = R1;
	R0 >>= 6;
	cc =R0==0;
	R1 = B [P2] (X);
	B [P1++] = R1;
	if !cc jump .L253 (bp);
.L252:
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

	R0.H = 22609;
	LINK 16;
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
	R3 = ROT R1 BY 0 ||
	[P5] = R2 ||
	nop;
	R1 = CC;
	R0 = R3 + R1;
	[P5+4] = R0;
	UNLINK;
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
	if cc jump .L264;
	R0 = [P1];
	[P2] = R0;
	[P2+4] = R1;
	[P1] = P2;
	P0 = [P2];
	cc =P0==0;
	if cc jump .L258;
	[P0+4] = P2;
.L258:
	rts;
.L264:
	R1 = 0 (X);
	[P2+4] = R1;
	[P2] = R1;
	rts;
	.size	_insque, .-_insque
	.align 4
.global _remque;
.type _remque, STT_FUNC;
_remque:
	P2 = R0;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L266;
	R0 = [P2+4];
	[P1+4] = R0;
.L266:
	P0 = [P2+4];
	cc =P0==0;
	if cc jump .L265;
	[P0] = P1;
.L265:
	rts;
	.size	_remque, .-_remque
	.align 4
.global _lsearch;
.type _lsearch, STT_FUNC;
_lsearch:
	[--sp] = ( r7:4, p5:3 );

	P3 = R2;
	LINK 12;
	R6 = ROT R0 BY 0 ||
	[FP+40] = R1 ||
	nop;
	[FP+44] = R2;
	P5 = [FP+48];
	R7 = [P3];
	cc =R7==0;
	P4 = [FP+52];
	if cc jump .L275;
	P3 = R1;
	R4 = 0 (X);
	jump.s .L277;
.L289:
	R4 += 1;
	cc =R7==R4;
	P3 = P3 + P5;
	if cc jump .L275;
.L277:
	R1 = P3;
	R0 = R6;
	call (P4);
	cc =R0==0;
	R5 = P3;
	if !cc jump .L289 (bp);
.L274:
	UNLINK;
	R0 = R5;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L275:
	P2 = [FP+44];
	R1 = P5;
	R0 = ROT R7 BY 0 ||
	R2 = [FP+40] ||
	nop;
	R7 *= R1;
	R0 += 1;
	cc =P5==0;
	[P2] = R0;
	R5 = R2 + R7;
	if cc jump .L274;
	R2 = P5;
	R1 = R6;
	R0 = R5;
	call _memmove;
	UNLINK;
	R0 = R5;
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	_lsearch, .-_lsearch
	.align 4
.global _lfind;
.type _lfind, STT_FUNC;
_lfind:
	P2 = R2;
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	R6 = ROT R0 BY 0 ||
	P3 = [FP+48] ||
	nop;
	P5 = R1;
	R5 = [P2];
	cc =R5==0;
	P4 = [FP+52];
	if cc jump .L291;
	R7 = 0 (X);
	jump.s .L293;
.L301:
	R7 += 1;
	cc =R5==R7;
	P5 = P5 + P3;
	if cc jump .L291;
.L293:
	R1 = P5;
	R0 = R6;
	call (P4);
	cc =R0==0;
	R4 = P5;
	if !cc jump .L301 (bp);
	UNLINK;
	R0 = R4;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L291:
	R4 = 0 (X);
	UNLINK;
	R0 = R4;
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	_lfind, .-_lfind
	.align 4
.global _abs;
.type _abs, STT_FUNC;
_abs:
	R0 = abs R0;
	rts;
	.size	_abs, .-_abs
	.align 4
.global _atoi;
.type _atoi, STT_FUNC;
_atoi:
	[--sp] = ( r7:7 );

	P2 = R0;
.L323:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L323;
	R2 = R0;
	R2 += -9;
	cc =R2<=4 (iu);
	if cc jump .L323 (bp);
	R3 = 43 (X);
	cc =R0==R3;
	if cc jump .L306;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L326 (bp);
	R0 = B [P0+1] (X);
	R3 = R0;
	R3 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R3<=R7 (iu);
	P1 += 1;
	if !cc jump .L315;
	P0 = 1 (X);
.L309:
	P1 += 1;
	P2 = 0 (X);
.L312:
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
	if cc jump .L312 (bp);
	cc =P0==0;
	if !cc jump .L303 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L303:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L326:
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L315;
	P1 = P0;
	P0 = 0 (X);
	jump.s .L309;
.L306:
	R0 = B [P0+1] (X);
	R7 = R0;
	R7 += -48;
	R1 = 9 (X);
	P1 = P0;
	cc =R7<=R1 (iu);
	P1 += 1;
	P0 = 0 (X);
	if cc jump .L309 (bp);
.L315:
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
.L345:
	P0 = P2;
	R1 = 32 (X);
	R0 = B [P2++] (X);
	cc =R0==R1;
	if cc jump .L345;
	R2 = R0;
	R2 += -9;
	cc =R2<=4 (iu);
	if cc jump .L345 (bp);
	R3 = 43 (X);
	cc =R0==R3;
	if cc jump .L330;
	R2 = 45 (X);
	cc =R0==R2;
	if !cc jump .L331 (bp);
	R0 = B [P0+1] (X);
	R3 = R0;
	R3 += -48;
	R1 = 9 (X);
	cc =R3<=R1 (iu);
	P1 = P2;
	P0 = 1 (X);
	if !cc jump .L338;
.L332:
	P1 += 1;
	P2 = 0 (X);
.L335:
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
	if cc jump .L335 (bp);
	cc =P0==0;
	if !cc jump .L327 (bp);
	R1 = R2 - R1;
	P2 = R1;
.L327:
	R0 = P2;
	( r7:7 ) = [sp++];

	rts;
.L331:
	R7 = R0;
	R7 += -48;
	R2 = 9 (X);
	cc =R7<=R2 (iu);
	P1 = P0;
	if !cc jump .L338;
.L347:
	P0 = 0 (X);
	jump.s .L332;
.L330:
	R0 = B [P0+1] (X);
	R1 = R0;
	R1 += -48;
	R7 = 9 (X);
	P1 = P0;
	cc =R1<=R7 (iu);
	P1 += 1;
	if cc jump .L347 (bp);
.L338:
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

	LINK 24;
	P2 = R0;
.L368:
	P1 = P2;
	R0 = 32 (X);
	R7 = B [P2++] (X);
	cc =R7==R0;
	if cc jump .L368;
	R1 = R7;
	R1 += -9;
	cc =R1<=4 (iu);
	if cc jump .L368 (bp);
	R2 = 43 (X);
	cc =R7==R2;
	if cc jump .L351;
	R5 = 45 (X);
	cc =R7==R5;
	if !cc jump .L371 (bp);
	R7 = B [P1+1] (X);
	R6 = R7;
	R6 += -48;
	R0 = 9 (X);
	P5 = P1;
	cc =R6<=R0 (iu);
	P5 += 1;
	if !cc jump .L360;
	P4 = 1 (X);
.L354:
	P5 += 1;
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L357:
	R0 = ROT R3 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R2 = 10 (X);
	call ___muldi3;
	R7 += -48;
	[FP+-8] = R0;
	R0 = [FP+-8];
	R5 = ROT R7 BY 0 ||
	[FP+-4] = R1 ||
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
	P0 = R7;
	P2 = 9 (X);
	P0 += -48;
	cc =P0<=P2 (iu);
	if cc jump .L357 (bp);
	cc =P4==0;
	if !cc jump .L348 (bp);
	R3 = R4 - R0; cc = ac0;
	CC = ! CC;
	R6 = CC;
	R0 = R5 - R2;
	R1 = R0 - R6;
.L348:
	UNLINK;
	R0 = R3;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L371:
	R2 = R7;
	R2 += -48;
	R1 = 9 (X);
	cc =R2<=R1 (iu);
	if !cc jump .L360;
	P5 = P1;
	P4 = 0 (X);
	jump.s .L354;
.L351:
	R7 = B [P1+1] (X);
	R3 = R7;
	R3 += -48;
	R4 = 9 (X);
	P5 = P1;
	cc =R3<=R4 (iu);
	P5 += 1;
	P4 = 0 (X);
	if cc jump .L354 (bp);
.L360:
	R3 = 0 (X);
	UNLINK;
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

	LINK 12;
	P5 = R0;
	R5 = ROT R1 BY 0 ||
	R4 = [FP+48] ||
	nop;
	R7 = ROT R2 BY 0 ||
	P4 = [FP+52] ||
	nop;
.L385:
	cc =R7==0;
	if cc jump .L373;
.L386:
	P2 = R7;
	P3 = P2 >> 1;
	R0 = P3;
	R0 *= R4;
	R6 = R5 + R0;
	R1 = R6;
	R0 = P5;
	call (P4);
	cc =R0<0;
	if cc jump .L377;
	cc =R0==0;
	if cc jump .L372;
	R7 += -1;
	R1 = P3;
	R7 = R7 - R1;
	cc =R7==0;
	R5 = R6 + R4;
	if !cc jump .L386 (bp);
.L373:
	R6 = 0 (X);
.L372:
	UNLINK;
	R0 = R6;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L377:
	R7 = P3;
	jump.s .L385;
	.size	_bsearch, .-_bsearch
	.align 4
.global _bsearch_r;
.type _bsearch_r, STT_FUNC;
_bsearch_r:
	[--sp] = ( r7:4, p5:3 );

	LINK 12;
	cc =R2==0;
	[FP+36] = R0;
	R6 = ROT R1 BY 0 ||
	R5 = [FP+48] ||
	nop;
	R4 = ROT R2 BY 0 ||
	P5 = [FP+52] ||
	nop;
	P4 = [FP+56];
	if cc jump .L392;
.L400:
	R0 = R4 >>> 1;
	R7 = R0;
	R7 *= R5;
	R7 = R6 + R7;
	P3 = R0;
	R2 = P4;
	R1 = ROT R7 BY 0 ||
	R0 = [FP+36] ||
	nop;
	call (P5);
	cc =R0==0;
	if cc jump .L387;
	cc =R0<=0;
	if cc jump .L390;
	R4 += -1;
	R4 >>>= 1;
	cc =R4==0;
	R6 = R7 + R5;
	if !cc jump .L400 (bp);
.L392:
	R7 = 0 (X);
.L387:
	UNLINK;
	R0 = R7;
	( r7:4, p5:3 ) = [sp++];

	rts;
.L390:
	cc =P3==0;
	if cc jump .L392;
	R4 = P3;
	jump.s .L400;
	.size	_bsearch_r, .-_bsearch_r
	.align 4
.global _div;
.type _div, STT_FUNC;
_div:
	[--sp] = ( r7:5 );

	LINK 12;
	R7 = R0;
	R6 = R1;
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
	UNLINK;
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
	if !cc jump .L404 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L404:
	SP += 8;
	rts;
	.size	_imaxabs, .-_imaxabs
	.align 4
.global _imaxdiv;
.type _imaxdiv, STT_FUNC;
_imaxdiv:
	[--sp] = ( r7:6, p5:5 );

	LINK 24;
	R6 = [FP+32];
	[SP+12] = R6;
	P5 = P0;
	R7 = ROT R2 BY 0 ||
	[FP+20] = R0 ||
	nop;
	[FP+24] = R1;
	call ___divdi3;
	[P5] = R0;
	[P5+4] = R1;
	R2 = ROT R7 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	UNLINK;
	R0 = P5;
	( r7:6, p5:5 ) = [sp++];

	rts;
	.size	_imaxdiv, .-_imaxdiv
	.align 4
.global _labs;
.type _labs, STT_FUNC;
_labs:
	R0 = abs R0;
	rts;
	.size	_labs, .-_labs
	.align 4
.global _ldiv;
.type _ldiv, STT_FUNC;
_ldiv:
	[--sp] = ( r7:5 );

	LINK 12;
	R7 = R0;
	R6 = R1;
	call ___divsi3;
	R5 = R0;
	R1 = R6;
	R0 = R7;
	call ___modsi3;
	UNLINK;
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
	if !cc jump .L410 (bp);
	CC = R0;
	R2 = CC;
	R1 = -R1;
	R0 = -R0;
	R1 = R1 - R2;
.L410:
	SP += 8;
	rts;
	.size	_llabs, .-_llabs
	.align 4
.global _lldiv;
.type _lldiv, STT_FUNC;
_lldiv:
	[--sp] = ( r7:6, p5:5 );

	LINK 24;
	R6 = [FP+32];
	[SP+12] = R6;
	P5 = P0;
	R7 = ROT R2 BY 0 ||
	[FP+20] = R0 ||
	nop;
	[FP+24] = R1;
	call ___divdi3;
	[P5] = R0;
	[P5+4] = R1;
	R2 = ROT R7 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___moddi3;
	[P5+8] = R0;
	[P5+12] = R1;
	UNLINK;
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
	if !cc jump .L414 (bp);
	jump.s .L417;
.L416:
	P2 += 4;
	R0 = [P2];
	cc =R0==0;
	if cc jump .L417;
.L414:
	cc =R1==R0;
	if !cc jump .L416 (bp);
	R0 = P2;
	rts;
.L417:
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
	if !cc jump .L422;
	P1 += 4;
	P2 += 4;
	jump.s .L423;
.L424:
	R0 = [P1++];
	R1 = [P2++];
	cc =R0==R1;
	if !cc jump .L422;
.L423:
	cc =R0==0;
	if !cc jump .L424 (bp);
.L422:
	cc =R0<R1;
	if cc jump .L426 (bp);
	cc =R1<R0;
	R0 = CC;
	rts;
.L426:
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
.L428:
	R0 = [P2++];
	cc =R0==0;
	[P1++] = R0;
	if !cc jump .L428 (bp);
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
	if cc jump .L433;
	R2 = P1;
	R2 += 4;
.L432:
	P2 = R2;
	R2 += 4;
	R1 = [P2];
	cc =R1==0;
	if !cc jump .L432 (bp);
	P2 -= P1;
	R0 = P2;
	R0 >>>= 2;
	rts;
.L433:
	R0 = 0 (X);
	rts;
	.size	_wcslen, .-_wcslen
	.align 4
.global _wcsncmp;
.type _wcsncmp, STT_FUNC;
_wcsncmp:
	P1 = R2;
	[--sp] = ( p5:5 );

	P2 = R0;
	R3 = R1;
	cc =P1==0;
	if cc jump .L445;
	LSETUP (.L437, .L447) LC1 = P1;
.L437:
	P0 = R3;
	P5 = P2;
	R3 += 4;
	R1 = [P2++];
	R2 = [P0];
	cc =R1==R2;
	if !cc jump .L438;
	cc =R1==0;
	if cc jump .L438;
.L447:
	nop;
.L445:
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L438:
	R3 = [P5];
	R0 = [P0];
	cc =R3<R0;
	if cc jump .L446 (bp);
	cc =R0<R3;
	R0 = CC;
	( p5:5 ) = [sp++];

	rts;
.L446:
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
	if cc jump .L456;
	LSETUP (.L450, .L457) LC1 = P1;
.L450:
	R0 = P2;
	R1 = [P2++];
	cc =R1==R3;
	if cc jump .L448;
.L457:
	nop;
.L456:
	R0 = 0 (X);
.L448:
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
	if cc jump .L469;
	R1 = R3;
	LSETUP (.L460, .L473) LC1 = P0;
.L460:
	P2 = R0;
	P1 = R1;
	R0 += 4;
	R1 += 4;
	R2 = [P2];
	R3 = [P1];
	cc =R3==R2;
	if !cc jump .L471;
.L473:
	nop;
.L469:
	R0 = 0 (X);
	rts;
.L471:
	cc =R3<R2;
	if cc jump .L472 (bp);
	cc =R2<R3;
	R0 = CC;
	rts;
.L472:
	R0 = -1 (X);
	rts;
	.size	_wmemcmp, .-_wmemcmp
	.align 4
.global _wmemcpy;
.type _wmemcpy, STT_FUNC;
_wmemcpy:
	cc =R2==0;
	R3 = R0;
	LINK 12;
	R0 = R2;
	if cc jump .L475;
	R0 <<= 2;
	R2 = R0;
	R0 = R3;
	call _memcpy;
	R3 = R0;
.L475:
	UNLINK;
	R0 = R3;
	rts;
	.size	_wmemcpy, .-_wmemcpy
	.align 4
.global _wmemmove;
.type _wmemmove, STT_FUNC;
_wmemmove:
	R3 = R0;
	cc =R3==R1;
	[--sp] = ( p5:5 );

	P2 = R1;
	P1 = R2;
	R0 = R2;
	if cc jump .L486;
	R2 = R3 - R1;
	R1 = R0 << 2;
	cc =R2<R1 (iu);
	P0 = R3;
	P1 += -1;
	if !cc jump .L493 (bp);
	cc =R0==0;
	if cc jump .L486;
	P1 = P1 << 2;
	P2 = P2 + P1;
	P5 = P0 + P1;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L484, .L495) LC1 = P1;
.L484:
	R0 = [P2--];
.L495:
	[P5--] = R0;
.L486:
	R0 = R3;
	( p5:5 ) = [sp++];

	rts;
.L493:
	P5 = R0;
	cc =P5==0;
	if cc jump .L486;
	LSETUP (.L482, .L494) LC1 = P5;
.L482:
	P1 = [P2++];
.L494:
	[P0++] = P1;
	R0 = R3;
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
	if cc jump .L497;
	P1 = R3;
	LSETUP (.L498, .L503) LC1 = P2;
.L498:
.L503:
	[P1++] = R0;
.L497:
	R0 = R3;
	rts;
	.size	_wmemset, .-_wmemset
	.align 4
.global _bcopy;
.type _bcopy, STT_FUNC;
_bcopy:
	P2 = R1;
	R3 = R0;
	[--sp] = ( r7:7, p5:5 );

	R1 = R2;
	R0 = P2;
	cc =R3<R0 (iu);
	if !cc jump .L505 (bp);
	cc =R1==0;
	R2 = R3 + R2;
	if cc jump .L504;
	P0 = R1;
	P5 = R2;
	R1 = R2 - R3;
	P1 = R1;
	P0 += -1;
	P2 = P2 + P0;
	P5 += -1;
	LSETUP (.L507, .L539) LC1 = P1;
.L507:
	R7 = B [P5--] (X);
.L539:
	B [P2--] = R7;
.L504:
	( r7:7, p5:5 ) = [sp++];

	rts;
.L505:
	cc =R3==R0;
	if cc jump .L504;
	cc =R1==0;
	if cc jump .L504;
	R7 = R1;
	R7 += -1;
	cc =R7<=6 (iu);
	if cc jump .L537;
	P0 = R3;
	R7 = R0 | R3;
	R2 = 3 (X);
	R0 = R7 & R2;
	CC = R0;
	P0 += 1;
	if cc jump .L508;
	R2 = P2;
	R7 = P0;
	R0 = R2 - R7;
	cc =R0<=2 (iu);
	if cc jump .L508;
	R2 = R1 >> 2;
	R2 <<= 2;
	P1 = R2;
	P0 = R3;
	P5 = P2 + P1;
	P1 += -4;
	P1 = P1 >> 2;
	P1 += 1;
	LSETUP (.L509, .L538) LC1 = P1;
.L509:
	R7 = [P0++];
.L538:
	[P2++] = R7;
	R3 = R3 + R2;
	cc =R1==R2;
	P2 = R3;
	R0 = R1 - R2;
	if cc jump .L504;
	cc =R0==1;
	R1 = B [P2] (X);
	B [P5] = R1;
	if cc jump .L504;
	cc =R0==2;
	R2 = B [P2+1] (X);
	B [P5+1] = R2;
	if cc jump .L504;
	R7 = B [P2+2] (X);
	B [P5+2] = R7;
	jump.s .L504;
.L537:
	P0 = R3;
	P0 += 1;
.L508:
	R3 = R3 + R1;
	P5 = R3;
	P5 -= P0;
	P5 += 1;
.L512:
	R0 = B [P0+-1] (X);
	B [P2++] = R0;
	P5 += -1;
	cc =P5==0;
	if !cc jump .L522;
	jump.s .L504;
.L522:
	P0 += 1;
	jump.s .L512;
	.size	_bcopy, .-_bcopy
	.align 4
.global _rotl64;
.type _rotl64, STT_FUNC;
_rotl64:
	[--sp] = ( r7:4 );

	R3 = R0;
	R6 = 31 (X);
	R0 = R2;
	R4 = R6 - R0;
	R7 = R3 >> 1;
	R5 = R2;
	R7 >>= R4;
	R4 = R1;
	R5 += -32;
	R4 <<= R0;
	R2 = R3;
	R7 = R7 | R4;
	cc =R5<0;
	R2 <<= R5;
	R4 = R3;
	R4 <<= R0;
	if cc R2 = R7;
	R0 = -R0;
	R7 = 63 (X);
	R0 = R0 & R7;
	P1 = R0;
	P2 = 0 (X);
	cc =R5<0;
	if !cc R5 = P2; if cc R5 = R4;
	R4 = R1;
	P1 += -32;
	R7 = P1;
	R4 >>= R7;
	R6 = R6 - R0;
	R7 = R1 << 1;
	R7 <<= R6;
	R3 >>= R0;
	R3 = R7 | R3;
	cc =P1<0;
	if !cc R3 = R4;
	R1 >>= R0;
	cc =P1<0;
	if !cc R1 = P2;
	R0 = R5 | R3;
	R1 = R2 | R1;
	( r7:4 ) = [sp++];

	rts;
	.size	_rotl64, .-_rotl64
	.align 4
.global _rotr64;
.type _rotr64, STT_FUNC;
_rotr64:
	[--sp] = ( r7:4 );

	R3 = R0;
	R6 = 31 (X);
	R0 = R2;
	R4 = R6 - R0;
	R7 = R1 << 1;
	R5 = R2;
	R7 <<= R4;
	R4 = R3;
	R5 += -32;
	R4 >>= R0;
	R2 = R1;
	R7 = R7 | R4;
	cc =R5<0;
	R2 >>= R5;
	R4 = R1;
	R4 >>= R0;
	if cc R2 = R7;
	R0 = -R0;
	R7 = 63 (X);
	R0 = R0 & R7;
	P1 = R0;
	P2 = 0 (X);
	cc =R5<0;
	if !cc R5 = P2; if cc R5 = R4;
	R4 = R3;
	P1 += -32;
	R7 = P1;
	R4 <<= R7;
	R6 = R6 - R0;
	R7 = R3 >> 1;
	R7 >>= R6;
	R1 <<= R0;
	R1 = R7 | R1;
	cc =P1<0;
	if !cc R1 = R4;
	R3 <<= R0;
	cc =P1<0;
	if !cc R3 = P2;
	R1 = R5 | R1;
	R0 = R2 | R3;
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
	R2 = R0.L (Z);
	R3 = 15 (X);
	R1 = R1 & R3;
	R0 = R2;
	R0 <<= R1;
	R1 = -R1;
	R3 = R1 & R3;
	R2 >>= R3;
	R0 = R0 | R2;
	rts;
	.size	_rotl16, .-_rotl16
	.align 4
.global _rotr16;
.type _rotr16, STT_FUNC;
_rotr16:
	R3 = 15 (X);
	R1 = R1 & R3;
	R0 = R0.L (Z);
	R2 = R0;
	R0 >>= R1;
	R1 = -R1;
	R3 = R1 & R3;
	R2 <<= R3;
	R0 = R0 | R2;
	rts;
	.size	_rotr16, .-_rotr16
	.align 4
.global _rotl8;
.type _rotl8, STT_FUNC;
_rotl8:
	R2 = R0.B (Z);
	R3 = 7 (X);
	R1 = R1 & R3;
	R0 = R2;
	R0 <<= R1;
	R1 = -R1;
	R3 = R1 & R3;
	R2 >>= R3;
	R0 = R0 | R2;
	rts;
	.size	_rotl8, .-_rotl8
	.align 4
.global _rotr8;
.type _rotr8, STT_FUNC;
_rotr8:
	R3 = 7 (X);
	R1 = R1 & R3;
	R0 = R0.B (Z);
	R2 = R0;
	R0 >>= R1;
	R1 = -R1;
	R3 = R1 & R3;
	R2 <<= R3;
	R0 = R0 | R2;
	rts;
	.size	_rotr8, .-_rotr8
	.align 4
.global _bswap_16;
.type _bswap_16, STT_FUNC;
_bswap_16:
	R0 = R0.L (Z);
	R1 = R0;
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
	R3 = 255 (X);
	R3 <<= 16;
	R0 <<= 8;
	R1 = R1 | R2;
	R0 = R0 & R3;
	R0 = R1 | R0;
	rts;
	.size	_bswap_32, .-_bswap_32
	.align 4
.global _bswap_64;
.type _bswap_64, STT_FUNC;
_bswap_64:
	[--sp] = ( r7:4 );

	R7 = R1 >> 8;
	R4 = 65280 (Z);
	R5 = R7 & R4;
	R3 = R1 >> 24;
	R6 = R0 >> 24;
	R3 = R3 | R5;
	R7 = R1 << 8;
	R5 = 255 (X);
	R7 = R7 | R6;
	R5 <<= 16;
	R6 = R7 & R5;
	R1 <<= 24;
	R3 = R3 | R6;
	R6 = R0 >> 8;
	R6 = R1 | R6;
	R2 = R0 << 24;
	R3 = R3 | R1;
	R1 = R7.B (Z);
	R2 = R2 | R1;
	R4 = R6 & R4;
	R0 <<= 8;
	R0 = R0 & R5;
	R7 = R2 | R4;
	R1 = R7 | R0;
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
	LSETUP (.L556, .L558) LC1 = P2;
.L556:
	R1 = R2;
	R1 >>= R0;
	cc = !BITTST (R1,0);
	R0 += 1;
	if !cc jump .L553;
.L558:
	nop;
	R0 = 0 (X);
.L553:
	rts;
	.size	_ffs, .-_ffs
	.align 4
.global _libiberty_ffs;
.type _libiberty_ffs, STT_FUNC;
_libiberty_ffs:
	cc =R0==0;
	if cc jump .L562;
	R1 = 1 (X);
	R2 = R0 & R1;
	cc =R2==0;
	if !cc jump .L559;
	R2 = 1 (X);
.L561:
	R0 >>>= 1;
	cc = !BITTST (R0,0);
	R2 += 1;
	if cc jump .L561 (bp);
.L559:
	R0 = R2;
	rts;
.L562:
	R2 = 0 (X);
	R0 = R2;
	rts;
	.size	_libiberty_ffs, .-_libiberty_ffs
	.align 4
.global _gl_isinff;
.type _gl_isinff, STT_FUNC;
_gl_isinff:
	[--sp] = ( r7:6 );

	R1 = -1 (X);
	LINK 12;
	R1.H = 65407;
	R7 = R0;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L568 (bp);
	R1 = -1 (X);
	R1.H = 32639;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R6 = 1 (X);
	if cc jump .L569;
.L567:
	UNLINK;
	R0 = R6;
	( r7:6 ) = [sp++];

	rts;
.L568:
	UNLINK;
	R0 = 1 (X);
	( r7:6 ) = [sp++];

	rts;
.L569:
	R6 = 0 (X);
	jump.s .L567;
	.size	_gl_isinff, .-_gl_isinff
	.align 4
.global _gl_isinfd;
.type _gl_isinfd, STT_FUNC;
_gl_isinfd:
	[--sp] = ( r7:7 );

	LINK 24;
	[FP+12] = R0;
	R0 = -1 (X);
	[FP+16] = R1;
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+12];
	R1 = [FP+16];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L573 (bp);
	R1 = -1 (X);
	R1.H = 32751;
	[SP+12] = R1;
	R2 = -1 (X);
	R0 = [FP+12];
	R1 = [FP+16];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L574;
.L572:
	UNLINK;
	R0 = R7;
	( r7:7 ) = [sp++];

	rts;
.L573:
	UNLINK;
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L574:
	R7 = 0 (X);
	jump.s .L572;
	.size	_gl_isinfd, .-_gl_isinfd
	.align 4
.global _gl_isinfl;
.type _gl_isinfl, STT_FUNC;
_gl_isinfl:
	[--sp] = ( r7:7 );

	LINK 24;
	[FP+12] = R0;
	R0 = -1 (X);
	[FP+16] = R1;
	R0.H = 65519;
	[SP+12] = R0;
	R2 = -1 (X);
	R0 = [FP+12];
	R1 = [FP+16];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L578 (bp);
	R1 = -1 (X);
	R1.H = 32751;
	[SP+12] = R1;
	R2 = -1 (X);
	R0 = [FP+12];
	R1 = [FP+16];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L579;
.L577:
	UNLINK;
	R0 = R7;
	( r7:7 ) = [sp++];

	rts;
.L578:
	UNLINK;
	R0 = 1 (X);
	( r7:7 ) = [sp++];

	rts;
.L579:
	R7 = 0 (X);
	jump.s .L577;
	.size	_gl_isinfl, .-_gl_isinfl
	.align 4
.global __Qp_itoq;
.type __Qp_itoq, STT_FUNC;
__Qp_itoq:
	[--sp] = ( p5:5 );

	P5 = R0;
	LINK 20;
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
	R7 = R1;
	R1 = R0;
	R5 = R0;
	call ___unordsf2;
	cc =R0==0;
	if !cc jump .L582;
	R1 = R5;
	R0 = R5;
	call ___addsf3;
	R1 = R5;
	call ___nesf2;
	cc =R0==0;
	if cc jump .L582 (bp);
	cc =R7<0;
	if cc jump .L596;
	R6 = 1 (X);
	R6 <<= 30;
.L584:
	cc = !BITTST (R7,0);
	if cc jump .L585 (bp);
.L586:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L585:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L582;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L586 (bp);
.L597:
	R1 = R7 >> 31;
	R7 = R1 + R7;
	R0 = R6;
	R1 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L586 (bp);
	jump.s .L597;
.L582:
	UNLINK;
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L596:
	R6 = 63 (X);
	R6 <<= 24;
	jump.s .L584;
	.size	_ldexpf, .-_ldexpf
	.align 4
.global _ldexp;
.type _ldexp, STT_FUNC;
_ldexp:
	[--sp] = ( r7:5 );

	LINK 32;
	R5 = ROT R2 BY 0 ||
	[SP+12] = R1 ||
	nop;
	R2 = ROT R0 BY 0 ||
	[FP+20] = R0 ||
	nop;
	[FP+24] = R1;
	R7 = R1;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L599;
	R2 = [FP+20];
	[SP+12] = R7;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___adddf3;
	[SP+12] = R7;
	R2 = [FP+20];
	[FP+-16] = R0;
	[FP+-12] = R1;
	call ___nedf2;
	cc =R0==0;
	if cc jump .L599 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L613;
	R7 = 1 (X);
	R7 <<= 30;
.L601:
	cc = !BITTST (R5,0);
	if cc jump .L602 (bp);
.L603:
	R0 = [FP+20];
	R1 = [FP+24];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
.L602:
	R1 = R5 >> 31;
	R5 = R1 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L599;
.L604:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L603 (bp);
	R3 = R5 >> 31;
	R5 = R3 + R5;
	R5 >>>= 1;
	jump.s .L604;
.L599:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
.L613:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L601;
	.size	_ldexp, .-_ldexp
	.align 4
.global _ldexpl;
.type _ldexpl, STT_FUNC;
_ldexpl:
	[--sp] = ( r7:5 );

	LINK 32;
	R5 = ROT R2 BY 0 ||
	[SP+12] = R1 ||
	nop;
	R2 = ROT R0 BY 0 ||
	[FP+20] = R0 ||
	nop;
	[FP+24] = R1;
	R7 = R1;
	call ___unorddf2;
	cc =R0==0;
	if !cc jump .L615;
	R2 = [FP+20];
	[SP+12] = R7;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___adddf3;
	R2 = ROT R0 BY 0 ||
	[SP+12] = R1 ||
	nop;
	R0 = [FP+20];
	R1 = [FP+24];
	call ___nedf2;
	cc =R0==0;
	if cc jump .L615 (bp);
	cc =R5<0;
	R6 = 0 (X);
	if cc jump .L629;
	R7 = 1 (X);
	R7 <<= 30;
.L617:
	cc = !BITTST (R5,0);
	if cc jump .L618 (bp);
.L619:
	R0 = [FP+20];
	R1 = [FP+24];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[FP+20] = R0;
	[FP+24] = R1;
.L618:
	R2 = R5 >> 31;
	R5 = R2 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L615;
.L620:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L619 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L620;
.L615:
	R0 = [FP+20];
	R1 = [FP+24];
	UNLINK;
	( r7:5 ) = [sp++];

	rts;
.L629:
	R7 = 511 (X);
	R7 <<= 21;
	jump.s .L617;
	.size	_ldexpl, .-_ldexpl
	.align 4
.global _memxor;
.type _memxor, STT_FUNC;
_memxor:
	cc =R2==0;
	[--sp] = ( r7:7, p5:4 );

	R3 = R0;
	P5 = R1;
	if cc jump .L631;
	R0 = R2;
	R0 += -1;
	cc =R0<=3 (iu);
	if cc jump .L632;
	R7 = R3 | R1;
	R0 = 3 (X);
	R1 = R7 & R0;
	cc =R1==0;
	if !cc jump .L632;
	R7 = R2 >> 2;
	R7 <<= 2;
	P2 = R7;
	R0 = R3 + R7;
	P0 = P5;
	P4 = R0;
	P1 = R3;
	P2 += -4;
	P2 = P2 >> 2;
	P2 += 1;
	LSETUP (.L633, .L649) LC1 = P2;
.L633:
	R1 = [P1];
	R0 = [P0++];
	R0 = R0 ^ R1;
.L649:
	[P1++] = R0;
	P0 = R7;
	cc =R7==R2;
	R1 = R2 - R7;
	P5 = P5 + P0;
	if cc jump .L631;
	cc =R1==1;
	R7 = B [P4] (X);
	R2 = B [P5] (X);
	R0 = R7 ^ R2;
	B [P4] = R0;
	if cc jump .L631;
	cc =R1==2;
	R2 = B [P4+1] (X);
	R7 = B [P5+1] (X);
	R0 = R7 ^ R2;
	B [P4+1] = R0;
	if cc jump .L631;
	R1 = B [P4+2] (X);
	R7 = B [P5+2] (X);
	R2 = R7 ^ R1;
	B [P4+2] = R2;
.L631:
	R0 = R3;
	( r7:7, p5:4 ) = [sp++];

	rts;
.L632:
	P4 = R3;
	P1 = R2;
	LSETUP (.L635, .L648) LC1 = P1;
.L635:
	R7 = B [P4++] (X);
	R0 = B [P5++] (X);
	R1 = R0 ^ R7;
.L648:
	B [P4+-1] = R1;
	R0 = R3;
	( r7:7, p5:4 ) = [sp++];

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
	if cc jump .L657;
	R2 = P5;
	R2 += 1;
.L652:
	P2 = R2;
	R2 += 1;
	R1 = B [P2] (X);
	cc =R1==0;
	if !cc jump .L652 (bp);
.L651:
	cc =P1==0;
	if cc jump .L653;
	LSETUP (.L654, .L663) LC1 = P1;
.L654:
	R3 = B [P0++] (X);
	cc =R3==0;
	B [P2++] = R3;
	if cc jump .L656;
.L663:
	nop;
.L653:
	R0 = 0 (X);
	B [P2] = R0;
.L656:
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L657:
	P2 = P5;
	jump.s .L651;
	.size	_strncat, .-_strncat
	.align 4
.global _strnlen;
.type _strnlen, STT_FUNC;
_strnlen:
	P2 = R0;
	R0 = R1;
	cc =R0==0;
	R1 = 0 (X);
	if cc jump .L664;
	P1 = R0;
	LSETUP (.L666, .L675) LC1 = P1;
.L666:
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L674;
.L664:
	R0 = R1;
	rts;
.L674:
.L675:
	R1 += 1;
	R1 = R0;
	jump.s .L664;
	.size	_strnlen, .-_strnlen
	.align 4
.global _strpbrk;
.type _strpbrk, STT_FUNC;
_strpbrk:
	P1 = R0;
	R2 = R1;
	R1 = B [P1] (X);
	cc =R1==0;
	if cc jump .L681;
.L677:
	P2 = R2;
	jump.s .L680;
.L679:
	cc =R0==R1;
	if cc jump .L678;
.L680:
	R0 = B [P2++] (X);
	cc =R0==0;
	if !cc jump .L679 (bp);
	R1 = B [P1+1] (X);
	cc =R1==0;
	P1 += 1;
	if !cc jump .L677 (bp);
.L681:
	P1 = 0 (X);
.L678:
	R0 = P1;
	rts;
	.size	_strpbrk, .-_strpbrk
	.align 4
.global _strrchr;
.type _strrchr, STT_FUNC;
_strrchr:
	R2 = R1;
	P2 = R0;
	R1 = 0 (X);
.L686:
	R0 = B [P2] (X);
	cc =R0==R2;
	if cc R1 = P2;
	cc =R0==0;
	P2 += 1;
	if !cc jump .L686 (bp);
	R0 = R1;
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
	if cc jump .L698;
	R1 += 1;
.L690:
	P0 = R1;
	R1 += 1;
	R2 = B [P0] (X);
	cc =R2==0;
	if !cc jump .L690 (bp);
	R6 = P0;
	cc =R6==R7;
	R1 = R6 - R7;
	if cc jump .L698;
	R1 += -1;
	R6 = R7 + R1;
.L691:
	P2 = R0;
	jump.s .L696;
.L712:
	cc =R2==0;
	if cc jump .L711;
.L696:
	P1 = P2;
	P2 += 1;
	R0 = B [P2+-1] (Z);
	R2 = R0.B (X);
	cc =R2==R3;
	if !cc jump .L712 (bp);
	R1 = R6 - R7;
	P0 = R1;
	P5 = R7;
	P0 += 1;
.L692:
	R2 = B [P5] (Z);
	cc =R2==0;
	if cc jump .L693;
	P0 += -1;
	cc =P0==0;
	if !cc jump .L706;
	P5 = R6;
.L693:
	R1 = B [P5] (Z);
	cc =R0==R1;
	if cc jump .L688;
	R0 = P1;
	R0 += 1;
	jump.s .L691;
.L706:
	cc =R2==R0;
	if !cc jump .L693;
	P5 += 1;
	R0 = B [P2++] (Z);
	cc =R0==0;
	if !cc jump .L692 (bp);
	jump.s .L693;
.L711:
	P1 = 0 (X);
.L688:
	R0 = P1;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L698:
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

	LINK 24;
	R7 = R7 -|- R7 ||
	[FP+20] = R2 ||
	nop;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	[FP+12] = R0 ||
	nop;
	[FP+16] = R1;
	call ___ltdf2;
	cc =R0<0;
	[SP+12] = R7;
	R2 = 0 (X);
	if cc jump .L723;
	R0 = [FP+12];
	R1 = [FP+16];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L717;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [FP+20] ||
	nop;
	R1 = [FP+24];
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L716;
.L717:
	R0 = [FP+12];
	R1 = [FP+16];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L723:
	R0 = [FP+20];
	R1 = [FP+24];
	call ___gtdf2;
	cc =R0<=0;
	if cc jump .L717 (bp);
.L716:
	R1 = [FP+16];
	R0 = [FP+12];
	BITTGL (R1, 31);
	[FP+12] = R0;
	[FP+16] = R1;
	R0 = [FP+12];
	R1 = [FP+16];
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
	.size	_copysign, .-_copysign
	.align 4
.global _memmem;
.type _memmem, STT_FUNC;
_memmem:
	[--sp] = ( r7:7, p5:3 );

	[--SP] = FP;
	P2 = R0;
	R0 = [SP+32];
	cc =R0==0;
	P3 = R1;
	FP = R2;
	if cc jump .L724;
	cc =R1<R0 (iu);
	if cc jump .L735;
	P1 = R0;
	P3 -= P1;
	P3 = P2 + P3;
	cc =P2<=P3 (iu);
	if !cc jump .L735;
	R3 = R0;
	cc =R0==1;
	R3 += -1;
	R2 = B [FP++] (X);
	R7 = CC;
	jump.s .L730;
.L734:
	P2 = P0;
.L726:
	cc =P3<P2 (iu);
	if cc jump .L735;
.L730:
	P0 = P2;
	R0 = B [P0++] (X);
	cc =R0==R2;
	if !cc jump .L734 (bp);
	CC = R7;
	if cc jump .L724;
.L729:
	P4 = FP;
	P5 = P0;
	P1 = R3;
	LSETUP (.L727, .L741) LC1 = P1;
.L727:
	R1 = B [P5++] (Z);
	R0 = B [P4++] (Z);
	cc =R1==R0;
	if !cc jump .L740;
.L741:
	nop;
.L724:
	FP = [SP++];
	R0 = P2;
	( r7:7, p5:3 ) = [sp++];

	rts;
.L740:
	cc =P3<P0 (iu);
	if cc jump .L735;
	P2 = P0;
	R1 = B [P2++] (X);
	cc =R2==R1;
	if !cc jump .L726 (bp);
	P4 = P0;
	P0 = P2;
	P2 = P4;
	jump.s .L729;
.L735:
	FP = [SP++];
	P2 = 0 (X);
	R0 = P2;
	( r7:7, p5:3 ) = [sp++];

	rts;
	.size	_memmem, .-_memmem
	.align 4
.global _mempcpy;
.type _mempcpy, STT_FUNC;
_mempcpy:
	[--sp] = ( p5:5 );

	P5 = R2;
	LINK 12;
	P2 = R0;
	cc =P5==0;
	if cc jump .L743;
	R0 = P2;
	call _memmove;
	P2 = R0;
.L743:
	P0 = P2 + P5;
	UNLINK;
	R0 = P0;
	( p5:5 ) = [sp++];

	rts;
	.size	_mempcpy, .-_mempcpy
	.align 4
.global _frexp;
.type _frexp, STT_FUNC;
_frexp:
	[--sp] = ( r7:4, p5:5 );

	LINK 32;
	[FP+28] = R0;
	[FP+32] = R1;
	R7 = R7 -|- R7 ||
	R0 = [FP+28] ||
	nop;
	P5 = R2;
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R1 = [FP+32] ||
	nop;
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L769;
	R0 = 1023 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [FP+28] ||
	nop;
	R1 = [FP+32];
	call ___gedf2;
	cc =R0<0;
	if cc jump .L770;
	R4 = 0 (X);
.L750:
	R5 = 511 (X);
	R6 = 1023 (X);
	R7 = 0 (X);
	R5 <<= 21;
	R6 <<= 20;
.L756:
	R0 = [FP+28];
	R2 = R2 -|- R2 ||
	R1 = [FP+32] ||
	nop;
	[SP+12] = R5;
	call ___muldf3;
	[SP+12] = R6;
	R2 = R2 -|- R2 ||
	[FP+28] = R0 ||
	nop;
	[FP+32] = R1;
	call ___gedf2;
	cc =R0<0;
	R7 += 1;
	if !cc jump .L756 (bp);
.L757:
	cc =R4==0;
	[P5] = R7;
	if cc jump .L763;
	R4 = [FP+32];
	R3 = [FP+28];
	BITTGL (R4, 31);
	[FP+-16] = R3;
	[FP+-12] = R4;
.L747:
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
.L770:
	R1 = 511 (X);
	R1 <<= 21;
	[SP+12] = R1;
	R2 = R2 -|- R2 ||
	R0 = [FP+28] ||
	nop;
	R1 = [FP+32];
	call ___ltdf2;
	cc =R0<0;
	if !cc jump .L753 (bp);
	[SP+12] = R7;
	R2 = R2 -|- R2 ||
	R0 = [FP+28] ||
	nop;
	R1 = [FP+32];
	call ___nedf2;
	cc =R0==0;
	if !cc jump .L762;
.L753:
	R4 = [FP+32];
	R3 = [FP+28];
	R2 = R2 -|- R2 ||
	[FP+-12] = R4 ||
	nop;
	[P5] = R2;
	[FP+-16] = R3;
	R0 = [FP+-16];
	R1 = [FP+-12];
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
.L769:
	R0 = -1025 (X);
	R0 <<= 20;
	[SP+12] = R0;
	R2 = R2 -|- R2 ||
	R0 = [FP+28] ||
	nop;
	R1 = [FP+32];
	call ___ledf2;
	R6 = [FP+32];
	cc =R0<=0;
	R5 = [FP+28];
	BITTGL (R6, 31);
	if !cc jump .L771;
	[FP+28] = R5;
	[FP+32] = R6;
	R4 = 1 (X);
	jump.s .L750;
.L763:
	P5 = [FP+28];
	R2 = [FP+32];
	[FP+-12] = R2;
	R1 = [FP+-12];
	[FP+-16] = P5;
	R0 = [FP+-16];
	UNLINK;
	( r7:4, p5:5 ) = [sp++];

	rts;
.L771:
	R1 = -513 (X);
	R1 <<= 21;
	[SP+12] = R1;
	R2 = R2 -|- R2 ||
	R0 = [FP+28] ||
	nop;
	R1 = [FP+32];
	call ___gtdf2;
	cc =R0<=0;
	if !cc jump .L760 (bp);
	P0 = [FP+28];
	P1 = [FP+32];
	[P5] = R7;
	[FP+-16] = P0;
	[FP+-12] = P1;
	jump.s .L747;
.L760:
	R4 = 1 (X);
.L751:
	[FP+28] = R5;
	R5 = 511 (X);
	[FP+32] = R6;
	R7 = 0 (X);
	R5 <<= 21;
.L758:
	P2 = [FP+32];
	R2 = [FP+28];
	R0 = [FP+28];
	R1 = [FP+32];
	[SP+12] = P2;
	call ___adddf3;
	[SP+12] = R5;
	R2 = R2 -|- R2 ||
	[FP+28] = R0 ||
	nop;
	[FP+32] = R1;
	call ___ltdf2;
	cc =R0<0;
	R7 += -1;
	if cc jump .L758 (bp);
	jump.s .L757;
.L762:
	R5 = [FP+28];
	R6 = [FP+32];
	R4 = 0 (X);
	jump.s .L751;
	.size	_frexp, .-_frexp
	.align 4
.global ___muldi3;
.type ___muldi3, STT_FUNC;
___muldi3:
	[--sp] = ( r7:4, p5:3 );

	LINK 24;
	[FP+-8] = R0;
	P3 = R0;
	R0 = R1 | R0;
	cc =R0==0;
	[FP+-4] = R1;
	R7 = ROT R1 BY 0 ||
	P4 = [FP+48] ||
	nop;
	R6 = R2;
	R4 = 0 (X);
	R5 = 0 (X);
	if cc jump .L772;
	P5 = 1 (X);
.L775:
	R2 = P3;
	R3 = P5;
	R0 = R2 & R3;
	[SP+12] = P4;
	R2 = R6;
	R1 = 0 (X);
	call ___muldi3;
	R4 = R0 + R4; cc = ac0;
	R2 = R1;
	R1 = CC;
	CC = R0 < R0;
	R3 = P4;
	R6 = ROT R6 BY 1;
	R0 = ROT R3 BY 1;
	CC = R0 < R0;
	R5 = R2 + R5;
	R7 = ROT R7 BY -1;
	R2 = P3;
	R5 = R5 + R1;
	R1 = ROT R2 BY -1;
	R3 = R1 | R7;
	cc =R3==0;
	P4 = R0;
	P3 = R1;
	if !cc jump .L775 (bp);
.L772:
	UNLINK;
	R0 = R4;
	R1 = R5;
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	___muldi3, .-___muldi3
	.align 4
.global _udivmodsi4;
.type _udivmodsi4, STT_FUNC;
_udivmodsi4:
	R3 = R0;
	cc =R1<R3 (iu);
	[--sp] = ( r7:6 );

	R0 = R1;
	P1 = R2;
	if !cc jump .L796;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L779, .L797) LC1 = P2;
.L779:
	cc =R0<0;
	if cc jump .L784;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L781;
.L797:
	R2 += -1;
.L782:
	cc =P1==0;
	if cc jump .L778 (bp);
	R2 = R3;
.L778:
	R0 = R2;
	( r7:6 ) = [sp++];

	rts;
.L781:
	cc =R1==0;
	if cc jump .L788;
.L784:
	R2 = 0 (X);
	P0 = 0 (X);
.L785:
	cc =R0<=R3 (iu);
	R7 = CC;
	R6 = R3 - R0;
	cc =R7==0;
	if !cc R3 = R6;
	cc =R7==0;
	if !cc R6 = R1; if cc R6 = P0;
	R1 >>= 1;
	cc =R1==0;
	R2 = R2 | R6;
	R0 >>= 1;
	if !cc jump .L785 (bp);
	jump.s .L782;
.L796:
	cc =R0<=R3 (iu);
	R2 = CC;
	R1 = R3 - R1;
	cc =R2==0;
	if !cc R3 = R1;
	jump.s .L782;
.L788:
	R2 = 0 (X);
	jump.s .L782;
	.size	_udivmodsi4, .-_udivmodsi4
	.align 4
.global ___clrsbqi2;
.type ___clrsbqi2, STT_FUNC;
___clrsbqi2:
	R2 = R0.B (X);
	R1 = R2 >>> 7;
	cc =R2==R1;
	LINK 12;
	R0 = R1 ^ R0;
	if cc jump .L800;
	R0 = R0.B (X);
	R0 <<= 8;
	call ___clzsi2;
	UNLINK;
	R0 += -1;
	rts;
.L800:
	UNLINK;
	R0 = 7 (X);
	rts;
	.size	___clrsbqi2, .-___clrsbqi2
	.align 4
.global ___clrsbdi2;
.type ___clrsbdi2, STT_FUNC;
___clrsbdi2:
	R2 = R0;
	R0 = R1;
	R1 >>>= 31;
	[--sp] = ( r7:7 );

	cc =R2==R1;
	LINK 12;
	R7 = R2 ^ R1;
	R3 = R0 ^ R1;
	if cc jump .L807;
.L805:
	R0 = R7;
	R1 = R3;
	call ___clzdi2;
	UNLINK;
	R0 += -1;
	( r7:7 ) = [sp++];

	rts;
.L807:
	cc =R0==R1;
	if !cc jump .L805 (bp);
	UNLINK;
	R0 = 63 (X);
	( r7:7 ) = [sp++];

	rts;
	.size	___clrsbdi2, .-___clrsbdi2
	.align 4
.global ___mulsi3;
.type ___mulsi3, STT_FUNC;
___mulsi3:
	cc =R0==0;
	R2 = R0;
	I0 = 0 (X);
	if cc jump .L808;
	R3 = 1 (X);
.L810:
	R0 = R2 & R3;
	R0 = -R0;
	R0 = R0 & R1;
	M0 = R0;
	R2 >>= 1;
	cc =R2==0;
	R1 <<= 1;
	I0 += M0;
	if !cc jump .L810 (bp);
.L808:
	R0 = I0;
	rts;
	.size	___mulsi3, .-___mulsi3
	.align 4
.global ___cmovd;
.type ___cmovd, STT_FUNC;
___cmovd:
	[--sp] = ( r7:4, p5:4 );

	P5 = R0;
	R3 = R1;
	R7 = -8 (X);
	R0 = R2 >> 3;
	R7 = R2 & R7;
	R1 = P5;
	cc =R1<R3 (iu);
	if cc jump .L817 (bp);
	R5 = R3 + R2;
	cc =R1<=R5 (iu);
	if cc jump .L845 (bp);
.L817:
	cc =R0==0;
	if cc jump .L846;
	R0 <<= 3;
	R0 += -8;
	R0 >>= 3;
	R5 = R0;
	P0 = R3;
	P1 = P5;
	R5 += 1;
	LC1 = R5;
	LSETUP (.L820, .L851) LC1;
.L820:
	P0 += 8;
	R0 = [P0+-8];
	R1 = [P0+-4];
	[P1+4] = R1;
	[P1] = R0;
.L851:
	P1 += 8;
	cc =R2<=R7 (iu);
	if cc jump .L813;
	R5 = R2 - R7;
	R4 = R5;
	R4 += -1;
	cc =R4<=6 (iu);
	if cc jump .L847;
	P2 = R7;
	R4 = R7;
	R4 += 1;
	R6 = R3 + R4;
	R0 = R3 + R7;
	P4 = P5 + P2;
	R1 = P4;
	R4 = R1 - R6;
	cc =R4<=2 (iu);
	if cc jump .L822;
	R6 = R0 | R1;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L822;
	R1 = R5 >> 2;
	R1 <<= 2;
	P1 = R1;
	P0 = R0;
	P1 += -4;
	P2 = P1 >> 2;
	P2 += 1;
	LSETUP (.L823, .L850) LC1 = P2;
.L823:
	R0 = [P0++];
.L850:
	[P4++] = R0;
	R7 = R7 + R1;
	cc =R5==R1;
	P2 = R7;
	if cc jump .L813;
	P4 = R3;
	P1 = P5 + P2;
	P0 = P4 + P2;
	R3 = B [P0] (X);
	B [P1] = R3;
	P1 = R7;
	P1 += 1;
	R5 = P1;
	cc =R2<=R5 (iu);
	if cc jump .L813;
	P2 += 2;
	P0 = P4 + P1;
	R6 = P2;
	R4 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R6 (iu);
	B [P1] = R4;
	if cc jump .L813;
	P4 = P4 + P2;
	P5 = P5 + P2;
	R2 = B [P4] (X);
	B [P5] = R2;
.L813:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L845:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L813;
	P0 = R3;
	P4 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L827, .L849) LC1 = P1;
.L827:
	R2 = B [P2--] (X);
.L849:
	B [P4--] = R2;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L846:
	cc =R2==0;
	if cc jump .L813;
	R6 = P5;
	R1 = R6 + R7;
	R0 = R3 + R7;
.L822:
	P0 = R1;
	R1 = R3 + R2;
	P1 = R0;
	P2 = R1;
	P2 -= P1;
	LSETUP (.L825, .L848) LC1 = P2;
.L825:
	R0 = B [P1++] (X);
.L848:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L847:
	R6 = P5;
	R1 = R6 + R7;
	R0 = R3 + R7;
	jump.s .L822;
	.size	___cmovd, .-___cmovd
	.align 4
.global ___cmovh;
.type ___cmovh, STT_FUNC;
___cmovh:
	R3 = R0;
	cc =R3<R1 (iu);
	[--sp] = ( r7:5, p5:5 );

	R0 = R1;
	R7 = R2 >> 1;
	if cc jump .L856 (bp);
	R1 = R1 + R2;
	cc =R3<=R1 (iu);
	if cc jump .L878 (bp);
.L856:
	cc =R7==0;
	if cc jump .L855;
	R5 = R7;
	R5 += -1;
	R6 = 8 (X);
	cc =R5<=R6 (iu);
	if cc jump .L859;
	R1 = R0 | R3;
	R5 = 3 (X);
	R6 = R1 & R5;
	CC = R6;
	if cc jump .L859;
	R1 = R0;
	R1 += 2;
	cc =R3==R1;
	if cc jump .L859;
	R6 = R2 >> 2;
	R5 = R6 << 2;
	P2 = R5;
	P0 = R0;
	P1 = R3;
	P2 += -4;
	P5 = P2 >> 2;
	P5 += 1;
	LSETUP (.L860, .L882) LC1 = P5;
.L860:
	R1 = [P0++];
.L882:
	[P1++] = R1;
	R6 <<= 1;
	cc =R7==R6;
	if cc jump .L855;
	R7 = R0 + R5;
	P0 = R7;
	R5 = R3 + R5;
	P1 = R5;
	R6 = W [P0] (X);
	W [P1] = R6;
.L855:
	cc = !BITTST (R2,0);
	if cc jump .L852 (bp);
.L879:
	R2 += -1;
	R0 = R0 + R2;
	P5 = R0;
	R3 = R3 + R2;
	P0 = R3;
	R7 = B [P5] (X);
	B [P0] = R7;
.L852:
	( r7:5, p5:5 ) = [sp++];

	rts;
.L878:
	P0 = R2;
	cc =R2==0;
	P0 += -1;
	if cc jump .L852;
	P5 = R0;
	P2 = R3;
	P1 = P5 + P0;
	P5 = P2 + P0;
	P0 += 1;
	LSETUP (.L865, .L881) LC1 = P0;
.L865:
	R2 = B [P1--] (X);
.L881:
	B [P5--] = R2;
	( r7:5, p5:5 ) = [sp++];

	rts;
.L859:
	R7 <<= 1;
	P2 = R7;
	P5 = R0;
	P0 = R3;
	P2 += -2;
	P1 = P2 >> 1;
	P1 += 1;
	LSETUP (.L862, .L880) LC1 = P1;
.L862:
	R1 = W [P5++] (X);
.L880:
	W [P0++] = R1;
	cc = !BITTST (R2,0);
	if cc jump .L852 (bp);
	jump.s .L879;
	.size	___cmovh, .-___cmovh
	.align 4
.global ___cmovw;
.type ___cmovw, STT_FUNC;
___cmovw:
	[--sp] = ( r7:4, p5:4 );

	P5 = R0;
	R3 = -4 (X);
	R0 = R2 >> 2;
	R3 = R2 & R3;
	R4 = P5;
	cc =R4<R1 (iu);
	if cc jump .L887 (bp);
	R7 = R1 + R2;
	cc =R4<=R7 (iu);
	if cc jump .L915 (bp);
.L887:
	cc =R0==0;
	if cc jump .L916;
	R0 <<= 2;
	P2 = R0;
	P0 = R1;
	P1 = P5;
	P2 += -4;
	P4 = P2 >> 2;
	P4 += 1;
	LSETUP (.L890, .L921) LC1 = P4;
.L890:
	R0 = [P0++];
.L921:
	[P1++] = R0;
	cc =R2<=R3 (iu);
	if cc jump .L883;
	R5 = R2 - R3;
	R4 = R5;
	R4 += -1;
	cc =R4<=6 (iu);
	if cc jump .L917;
	P0 = R3;
	R6 = R3;
	R6 += 1;
	R4 = R1 + R6;
	R0 = R1 + R3;
	P4 = P5 + P0;
	R7 = P4;
	R6 = R7 - R4;
	cc =R6<=2 (iu);
	if cc jump .L892;
	R6 = R0 | R7;
	R4 = 3 (X);
	R6 = R6 & R4;
	CC = R6;
	if cc jump .L892;
	R7 = R5 >> 2;
	R7 <<= 2;
	P2 = R7;
	P1 = R0;
	P2 += -4;
	P0 = P2 >> 2;
	P0 += 1;
	LSETUP (.L893, .L920) LC1 = P0;
.L893:
	R0 = [P1++];
.L920:
	[P4++] = R0;
	R3 = R3 + R7;
	cc =R5==R7;
	P2 = R3;
	if cc jump .L883;
	P4 = R1;
	P0 = P5 + P2;
	P1 = P4 + P2;
	R1 = B [P1] (X);
	P1 = R3;
	B [P0] = R1;
	P1 += 1;
	R5 = P1;
	cc =R2<=R5 (iu);
	if cc jump .L883;
	P2 += 2;
	P0 = P4 + P1;
	R6 = P2;
	R4 = B [P0] (X);
	P1 = P5 + P1;
	cc =R2<=R6 (iu);
	B [P1] = R4;
	if cc jump .L883;
	P4 = P4 + P2;
	P5 = P5 + P2;
	R2 = B [P4] (X);
	B [P5] = R2;
.L883:
	( r7:4, p5:4 ) = [sp++];

	rts;
.L915:
	P1 = R2;
	cc =R2==0;
	P1 += -1;
	if cc jump .L883;
	P0 = R1;
	P4 = P5 + P1;
	P2 = P0 + P1;
	P1 += 1;
	LSETUP (.L897, .L919) LC1 = P1;
.L897:
	R1 = B [P2--] (X);
.L919:
	B [P4--] = R1;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L916:
	cc =R2==0;
	if cc jump .L883;
	R5 = P5;
	R7 = R5 + R3;
	R0 = R1 + R3;
.L892:
	P0 = R7;
	R7 = R1 + R2;
	P1 = R0;
	P2 = R7;
	P2 -= P1;
	LSETUP (.L895, .L918) LC1 = P2;
.L895:
	R0 = B [P1++] (X);
.L918:
	B [P0++] = R0;
	( r7:4, p5:4 ) = [sp++];

	rts;
.L917:
	R7 = P5;
	R7 = R7 + R3;
	R0 = R1 + R3;
	jump.s .L892;
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
	R0 = R0.L (Z);
	cc = !BITTST (R0,15);
	if !cc jump .L931;
	R3 = R0 >>> 14;
	cc =R3==0;
	if !cc jump .L928;
	R2 = R0 >>> 13;
	cc =R2==0;
	if !cc jump .L932;
	R3 = R0 >>> 12;
	cc =R3==0;
	if !cc jump .L933;
	R1 = R0 >>> 11;
	cc =R1==0;
	if !cc jump .L934;
	R2 = R0 >>> 10;
	cc =R2==0;
	if !cc jump .L935;
	R3 = R0 >>> 9;
	cc =R3==0;
	if !cc jump .L936;
	R1 = R0 >>> 8;
	cc =R1==0;
	if !cc jump .L937;
	R2 = R0 >>> 7;
	cc =R2==0;
	if !cc jump .L938;
	R3 = R0 >>> 6;
	cc =R3==0;
	if !cc jump .L939;
	R1 = R0 >>> 5;
	cc =R1==0;
	if !cc jump .L940;
	R2 = R0 >>> 4;
	cc =R2==0;
	if !cc jump .L941;
	R3 = R0 >>> 3;
	cc =R3==0;
	if !cc jump .L942;
	R1 = R0 >>> 2;
	cc =R1==0;
	if !cc jump .L943;
	R2 = R0 >>> 1;
	cc =R2==0;
	if !cc jump .L944;
	cc =R0==0;
	R3 = 16 (X);
	if !cc jump .L947;
.L928:
	R0 = R3;
	rts;
.L931:
	R3 = 0 (X);
	jump.s .L928;
.L942:
	R3 = 12 (X);
	jump.s .L928;
.L947:
	R3 = 15 (X);
	jump.s .L928;
.L932:
	R3 = 2 (X);
	jump.s .L928;
.L933:
	R3 = 3 (X);
	jump.s .L928;
.L934:
	R3 = 4 (X);
	jump.s .L928;
.L935:
	R3 = 5 (X);
	jump.s .L928;
.L936:
	R3 = 6 (X);
	jump.s .L928;
.L937:
	R3 = 7 (X);
	jump.s .L928;
.L938:
	R3 = 8 (X);
	jump.s .L928;
.L939:
	R3 = 9 (X);
	jump.s .L928;
.L940:
	R3 = 10 (X);
	jump.s .L928;
.L941:
	R3 = 11 (X);
	jump.s .L928;
.L943:
	R3 = 13 (X);
	jump.s .L928;
.L944:
	R3 = 14 (X);
	jump.s .L928;
	.size	___clzhi2, .-___clzhi2
	.align 4
.global ___ctzhi2;
.type ___ctzhi2, STT_FUNC;
___ctzhi2:
	cc = !BITTST (R0,0);
	if !cc jump .L951;
	cc = !BITTST (R0,1);
	if !cc jump .L952;
	cc = !BITTST (R0,2);
	if !cc jump .L953;
	cc = !BITTST (R0,3);
	if !cc jump .L954;
	cc = !BITTST (R0,4);
	if !cc jump .L955;
	cc = !BITTST (R0,5);
	if !cc jump .L956;
	cc = !BITTST (R0,6);
	if !cc jump .L957;
	cc = !BITTST (R0,7);
	if !cc jump .L958;
	cc = !BITTST (R0,8);
	if !cc jump .L959;
	cc = !BITTST (R0,9);
	if !cc jump .L960;
	cc = !BITTST (R0,10);
	if !cc jump .L961;
	cc = !BITTST (R0,11);
	if !cc jump .L962;
	cc = !BITTST (R0,12);
	if !cc jump .L963;
	cc = !BITTST (R0,13);
	if !cc jump .L964;
	cc = !BITTST (R0,14);
	if !cc jump .L965;
	cc = !BITTST (R0,15);
	R1 = 16 (X);
	if !cc jump .L968;
.L948:
	R0 = R1;
	rts;
.L951:
	R1 = 0 (X);
	jump.s .L948;
.L952:
	R1 = 1 (X);
	jump.s .L948;
.L963:
	R1 = 12 (X);
	jump.s .L948;
.L953:
	R1 = 2 (X);
	jump.s .L948;
.L954:
	R1 = 3 (X);
	jump.s .L948;
.L955:
	R1 = 4 (X);
	jump.s .L948;
.L956:
	R1 = 5 (X);
	jump.s .L948;
.L957:
	R1 = 6 (X);
	jump.s .L948;
.L958:
	R1 = 7 (X);
	jump.s .L948;
.L959:
	R1 = 8 (X);
	jump.s .L948;
.L960:
	R1 = 9 (X);
	jump.s .L948;
.L961:
	R1 = 10 (X);
	jump.s .L948;
.L962:
	R1 = 11 (X);
	jump.s .L948;
.L964:
	R1 = 13 (X);
	jump.s .L948;
.L965:
	R1 = 14 (X);
	jump.s .L948;
.L968:
	R1 = 15 (X);
	jump.s .L948;
	.size	___ctzhi2, .-___ctzhi2
	.align 4
.global ___fixunssfsi;
.type ___fixunssfsi, STT_FUNC;
___fixunssfsi:
	[--sp] = ( r7:7 );

	R1 = 71 (X);
	LINK 12;
	R1 <<= 24;
	R7 = R0;
	call ___gesf2;
	cc =R0<0;
	if !cc jump .L975;
	R0 = R7;
	call ___fixsfsi;
	UNLINK;
	( r7:7 ) = [sp++];

	rts;
.L975:
	R1 = 71 (X);
	R1 <<= 24;
	R0 = R7;
	call ___subsf3;
	call ___fixsfsi;
	R1 = 32768 (Z);
	UNLINK;
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
	R3 = R1 & R2;
	R0 = CC;
	cc = BITTST (R1,2);
	R2 = CC;
	R0 = R0 + R3;
	cc = BITTST (R1,3);
	R3 = R0 + R2;
	R0 = CC;
	cc = BITTST (R1,4);
	R2 = CC;
	R3 = R3 + R0;
	cc = BITTST (R1,5);
	R0 = R3 + R2;
	R3 = CC;
	cc = BITTST (R1,6);
	R2 = CC;
	R0 = R0 + R3;
	cc = BITTST (R1,7);
	R3 = R0 + R2;
	R0 = CC;
	cc = BITTST (R1,8);
	R2 = CC;
	R3 = R3 + R0;
	cc = BITTST (R1,9);
	R0 = R3 + R2;
	R3 = CC;
	cc = BITTST (R1,10);
	R2 = CC;
	R0 = R0 + R3;
	cc = BITTST (R1,11);
	R3 = R0 + R2;
	R0 = CC;
	cc = BITTST (R1,12);
	R2 = CC;
	R3 = R3 + R0;
	cc = BITTST (R1,13);
	R0 = R3 + R2;
	R3 = CC;
	cc = BITTST (R1,14);
	R0 = R0 + R3;
	R3 = CC;
	cc = BITTST (R1,15);
	R0 = R0 + R3;
	R1 = CC;
	R2 = 1 (X);
	R3 = R0 + R1;
	R0 = R3 & R2;
	rts;
	.size	___parityhi2, .-___parityhi2
	.align 4
.global ___popcounthi2;
.type ___popcounthi2, STT_FUNC;
___popcounthi2:
	R1 = R0;
	cc = BITTST (R1,1);
	R2 = 1 (X);
	R3 = R1 & R2;
	R0 = CC;
	cc = BITTST (R1,2);
	R2 = CC;
	R0 = R0 + R3;
	cc = BITTST (R1,3);
	R3 = R0 + R2;
	R0 = CC;
	M0 = R0;
	cc = BITTST (R1,4);
	I0 = R3;
	R2 = CC;
	cc = BITTST (R1,5);
	M1 = R2;
	R3 = CC;
	cc = BITTST (R1,6);
	M2 = R3;
	R0 = CC;
	cc = BITTST (R1,7);
	M3 = R0;
	R2 = CC;
	I0 += M0;
	cc = BITTST (R1,8);
	M0 = R2;
	R3 = CC;
	cc = BITTST (R1,9);
	R0 = CC;
	I0 += M1;
	cc = BITTST (R1,10);
	M1 = R3;
	R2 = CC;
	I0 += M2;
	cc = BITTST (R1,11);
	M2 = R0;
	R3 = CC;
	I0 += M3;
	M3 = R2;
	cc = BITTST (R1,12);
	I0 += M0;
	M0 = R3;
	R0 = CC;
	cc = BITTST (R1,13);
	R2 = CC;
	I0 += M1;
	cc = BITTST (R1,14);
	M1 = R0;
	R3 = CC;
	I0 += M2;
	cc = BITTST (R1,15);
	M2 = R2;
	I0 += M3;
	R1 = CC;
	M3 = R3;
	I0 += M0;
	M0 = R1;
	I0 += M1;
	I0 += M2;
	I0 += M3;
	I0 += M0;
	R0 = I0;
	rts;
	.size	___popcounthi2, .-___popcounthi2
	.align 4
.global ___mulsi3_iq2000;
.type ___mulsi3_iq2000, STT_FUNC;
___mulsi3_iq2000:
	cc =R0==0;
	R2 = R0;
	I0 = 0 (X);
	if cc jump .L978;
	R3 = 1 (X);
.L980:
	R0 = R2 & R3;
	R0 = -R0;
	R0 = R0 & R1;
	M0 = R0;
	R2 >>= 1;
	cc =R2==0;
	R1 <<= 1;
	I0 += M0;
	if !cc jump .L980 (bp);
.L978:
	R0 = I0;
	rts;
	.size	___mulsi3_iq2000, .-___mulsi3_iq2000
	.align 4
.global ___mulsi3_lm32;
.type ___mulsi3_lm32, STT_FUNC;
___mulsi3_lm32:
	cc =R0==0;
	R2 = R0;
	I0 = 0 (X);
	if cc jump .L983;
	cc =R1==0;
	if cc jump .L983;
	R3 = 1 (X);
.L985:
	R0 = R1 & R3;
	R0 = -R0;
	R0 = R0 & R2;
	M0 = R0;
	R1 >>= 1;
	cc =R1==0;
	R2 <<= 1;
	I0 += M0;
	if !cc jump .L985 (bp);
.L983:
	R0 = I0;
	rts;
	.size	___mulsi3_lm32, .-___mulsi3_lm32
	.align 4
.global ___udivmodsi4;
.type ___udivmodsi4, STT_FUNC;
___udivmodsi4:
	R3 = R0;
	cc =R3<=R1 (iu);
	[--sp] = ( r7:6 );

	R0 = R1;
	P1 = R2;
	if cc jump .L1007;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L990, .L1008) LC1 = P2;
.L990:
	cc =R0<0;
	if cc jump .L995;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L992;
.L1008:
	R2 += -1;
.L993:
	cc =P1==0;
	if cc jump .L989 (bp);
	R2 = R3;
.L989:
	R0 = R2;
	( r7:6 ) = [sp++];

	rts;
.L992:
	cc =R1==0;
	if cc jump .L999;
.L995:
	R2 = 0 (X);
	P0 = 0 (X);
.L996:
	cc =R0<=R3 (iu);
	R7 = CC;
	R6 = R3 - R0;
	cc =R7==0;
	if !cc R3 = R6;
	cc =R7==0;
	if !cc R6 = R1; if cc R6 = P0;
	R1 >>= 1;
	cc =R1==0;
	R2 = R2 | R6;
	R0 >>= 1;
	if !cc jump .L996 (bp);
	jump.s .L993;
.L1007:
	cc =R0<=R3 (iu);
	R2 = CC;
	R1 = R3 - R1;
	cc =R3<R0 (iu);
	if !cc R3 = R1;
	R2 = R2.B (Z);
	jump.s .L993;
.L999:
	R2 = 0 (X);
	jump.s .L993;
	.size	___udivmodsi4, .-___udivmodsi4
	.align 4
.global ___mspabi_cmpf;
.type ___mspabi_cmpf, STT_FUNC;
___mspabi_cmpf:
	[--sp] = ( r7:5 );

	LINK 12;
	R7 = R0;
	R6 = R1;
	call ___ltsf2;
	cc =R0<0;
	if cc jump .L1012;
	R1 = R6;
	R0 = R7;
	call ___gtsf2;
	cc =R0<=0;
	R5 = 1 (X);
	if cc jump .L1013;
.L1011:
	UNLINK;
	R0 = R5;
	( r7:5 ) = [sp++];

	rts;
.L1013:
	R5 = 0 (X);
	jump.s .L1011;
.L1012:
	UNLINK;
	R0 = -1 (X);
	( r7:5 ) = [sp++];

	rts;
	.size	___mspabi_cmpf, .-___mspabi_cmpf
	.align 4
.global ___mspabi_cmpd;
.type ___mspabi_cmpd, STT_FUNC;
___mspabi_cmpd:
	[--sp] = ( r7:5 );

	LINK 24;
	[FP+28] = R2;
	R6 = [FP+28];
	R5 = [FP+32];
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	[FP+20] = R0 ||
	nop;
	[FP+24] = R1;
	call ___ltdf2;
	cc =R0<0;
	if cc jump .L1017;
	[SP+12] = R5;
	R2 = ROT R6 BY 0 ||
	R0 = [FP+20] ||
	nop;
	R1 = [FP+24];
	call ___gtdf2;
	cc =R0<=0;
	R7 = 1 (X);
	if cc jump .L1018;
.L1016:
	UNLINK;
	R0 = R7;
	( r7:5 ) = [sp++];

	rts;
.L1018:
	R7 = 0 (X);
	jump.s .L1016;
.L1017:
	UNLINK;
	R0 = -1 (X);
	( r7:5 ) = [sp++];

	rts;
	.size	___mspabi_cmpd, .-___mspabi_cmpd
	.align 4
.global ___mspabi_mpysll;
.type ___mspabi_mpysll, STT_FUNC;
___mspabi_mpysll:
	[--SP] = R4;
	R4 = R0;
	LINK 24;
	R3 = R4;
	R4 >>>= 31;
	[FP+-4] = R4;
	R0 = ROT R1 BY 0 ||
	[FP+-8] = R3 ||
	nop;
	R1 >>>= 31;
	[SP+12] = R1;
	R2 = ROT R0 BY 0 ||
	R1 = [FP+-4] ||
	nop;
	R0 = [FP+-8];
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
	LINK 24;
	R2 = 0 (X);
	[SP+12] = R2;
	R2 = R1;
	R1 = 0 (X);
	call ___muldi3;
	UNLINK;
	rts;
	.size	___mspabi_mpyull, .-___mspabi_mpyull
	.align 4
.global ___mulhi3;
.type ___mulhi3, STT_FUNC;
___mulhi3:
	cc =R1<0;
	[--sp] = ( r7:7 );

	R2 = R0;
	if cc jump .L1035;
	cc =R1==0;
	if cc jump .L1027;
	P1 = 0 (X);
.L1023:
	P2 = 32 (X);
	R3 = 0 (X);
	R7 = 1 (X);
	jump.s .L1026;
.L1036:
	R0 = P2;
	R0 += -1;
	P2 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L1025;
.L1026:
	R0 = R1 & R7;
	R0 = -R0;
	R1 >>>= 1;
	R0 = R0 & R2;
	cc =R1==0;
	R3 = R3 + R0;
	R2 <<= 1;
	if !cc jump .L1036 (bp);
.L1025:
	cc =P1==0;
	if cc jump .L1021;
	R3 = -R3;
.L1021:
	R0 = R3;
	( r7:7 ) = [sp++];

	rts;
.L1035:
	R1 = -R1;
	P1 = 1 (X);
	jump.s .L1023;
.L1027:
	R3 = 0 (X);
	jump.s .L1021;
	.size	___mulhi3, .-___mulhi3
	.align 4
.global ___divsi3;
.type ___divsi3, STT_FUNC;
___divsi3:
	cc =R0<0;
	[--sp] = ( r7:6 );

	R3 = R0;
	if cc jump .L1061;
	R0 = 1 (X);
	P1 = 0 (X);
.L1038:
	cc =R1<0;
	if !cc jump .L1039 (bp);
	R1 = -R1;
	P1 = R0;
.L1039:
	cc =R3<=R1 (iu);
	R2 = R3;
	R0 = R1;
	if cc jump .L1062;
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1040, .L1063) LC1 = P2;
.L1040:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1045;
.L1063:
	nop;
.L1045:
	cc =R1==0;
	R7 = 0 (X);
	P0 = 0 (X);
	if cc jump .L1043;
.L1042:
	cc =R0<=R2 (iu);
	R3 = CC;
	R6 = R2 - R0;
	cc =R3==0;
	if !cc R2 = R6;
	cc =R3==0;
	if !cc R6 = R1; if cc R6 = P0;
	R1 >>= 1;
	cc =R1==0;
	R7 = R7 | R6;
	R0 >>= 1;
	if !cc jump .L1042 (bp);
.L1043:
	cc =P1==0;
	if cc jump .L1037 (bp);
	R7 = -R7;
.L1037:
	R0 = R7;
	( r7:6 ) = [sp++];

	rts;
.L1061:
	R3 = -R0;
	P1 = 1 (X);
	R0 = 0 (X);
	jump.s .L1038;
.L1062:
	cc =R1<=R3 (iu);
	R7 = CC;
	jump.s .L1043;
	.size	___divsi3, .-___divsi3
	.align 4
.global ___modsi3;
.type ___modsi3, STT_FUNC;
___modsi3:
	R3 = R0;
	cc =R3<0;
	[--sp] = ( r7:7 );

	R0 = R1;
	if cc jump .L1086;
	P1 = 0 (X);
.L1065:
	R0 = abs R0;
	cc =R3<=R0 (iu);
	R2 = R3;
	if cc jump .L1087;
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1066, .L1089) LC1 = P2;
.L1066:
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1071;
.L1089:
	nop;
.L1071:
	cc =R1==0;
	if cc jump .L1088;
.L1068:
	cc =R0<=R2 (iu);
	R7 = CC;
	R3 = R2 - R0;
	cc =R7==0;
	R1 >>= 1;
	if !cc R2 = R3;
	cc =R1==0;
	R0 >>= 1;
	if !cc jump .L1068 (bp);
.L1069:
	cc =P1==0;
	if cc jump .L1064 (bp);
	R2 = -R2;
.L1064:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1086:
	R3 = -R3;
	P1 = 1 (X);
	jump.s .L1065;
.L1088:
	R2 = R3;
	jump.s .L1069;
.L1087:
	R1 = R3 - R0;
	cc =R3<R0 (iu);
	if !cc R2 = R1;
	jump.s .L1069;
	.size	___modsi3, .-___modsi3
	.align 4
.global ___udivmodhi4;
.type ___udivmodhi4, STT_FUNC;
___udivmodhi4:
	[--sp] = ( r7:4 );

	R7 = R0;
	P2 = R2;
	R0 = R1;
	R2 = R1.L (Z);
	R1 = R7.L (Z);
	cc =R2<R1 (iu);
	if !cc jump .L1172;
	R3 = R0.L (X);
	cc =R3<0;
	if cc jump .L1093;
	R4 = R0 << 1;
	R5 = R4.L (Z);
	cc =R1<=R5 (iu);
	R3 = R4.L (Z);
	if cc jump .L1100;
	R2 = R4.L (X);
	cc =R2<0;
	if cc jump .L1100;
	R4 = R0 << 2;
	R6 = R4.L (Z);
	cc =R1<=R6 (iu);
	R3 = R4.L (Z);
	if cc jump .L1102;
	R5 = R4.L (X);
	cc =R5<0;
	if cc jump .L1102;
	R2 = R0 << 3;
	R4 = R2.L (Z);
	cc =R1<=R4 (iu);
	R3 = R2.L (Z);
	if cc jump .L1104;
	R6 = R2.L (X);
	cc =R6<0;
	if cc jump .L1104;
	R5 = R0 << 4;
	R2 = R5.L (Z);
	cc =R1<=R2 (iu);
	R3 = R5.L (Z);
	if cc jump .L1106;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1106;
	R5 = R0 << 5;
	R6 = R5.L (Z);
	cc =R1<=R6 (iu);
	R3 = R5.L (Z);
	if cc jump .L1108;
	R2 = R5.L (X);
	cc =R2<0;
	if cc jump .L1108;
	R4 = R0 << 6;
	R5 = R4.L (Z);
	cc =R1<=R5 (iu);
	R3 = R4.L (Z);
	if cc jump .L1110;
	R6 = R4.L (X);
	cc =R6<0;
	if cc jump .L1110;
	R2 = R0 << 7;
	R4 = R2.L (Z);
	cc =R1<=R4 (iu);
	R3 = R2.L (Z);
	if cc jump .L1112;
	R5 = R2.L (X);
	cc =R5<0;
	if cc jump .L1112;
	R2 = R0 << 8;
	R6 = R2.L (Z);
	cc =R1<=R6 (iu);
	R3 = R2.L (Z);
	if cc jump .L1114;
	R4 = R2.L (X);
	cc =R4<0;
	if cc jump .L1114;
	R5 = R0 << 9;
	R2 = R5.L (Z);
	cc =R1<=R2 (iu);
	R3 = R5.L (Z);
	if cc jump .L1116;
	R6 = R5.L (X);
	cc =R6<0;
	if cc jump .L1116;
	R4 = R0 << 10;
	R5 = R4.L (Z);
	cc =R1<=R5 (iu);
	R3 = R4.L (Z);
	if cc jump .L1118;
	R2 = R4.L (X);
	cc =R2<0;
	if cc jump .L1118;
	R4 = R0 << 11;
	R6 = R4.L (Z);
	cc =R1<=R6 (iu);
	R3 = R4.L (Z);
	if cc jump .L1120;
	R5 = R4.L (X);
	cc =R5<0;
	if cc jump .L1120;
	R2 = R0 << 12;
	R4 = R2.L (Z);
	cc =R1<=R4 (iu);
	R3 = R2.L (Z);
	if cc jump .L1122;
	R6 = R2.L (X);
	cc =R6<0;
	if cc jump .L1122;
	R5 = R0 << 13;
	R2 = R5.L (Z);
	cc =R1<=R2 (iu);
	R3 = R5.L (Z);
	if cc jump .L1124;
	R4 = R5.L (X);
	cc =R4<0;
	if cc jump .L1124;
	R5 = R0 << 14;
	R6 = R5.L (Z);
	cc =R1<=R6 (iu);
	R3 = R5.L (Z);
	if cc jump .L1126;
	R2 = R5.L (X);
	cc =R2<0;
	if cc jump .L1126;
	R0 <<= 15;
	R4 = R0.L (Z);
	cc =R1<=R4 (iu);
	R6 = R0;
	if cc jump .L1127;
	cc =R4==0;
	R0 = R7;
	if !cc jump .L1173;
.L1096:
	cc =P2==0;
	if !cc jump .L1090;
	R0 = R6;
.L1090:
	( r7:4 ) = [sp++];

	rts;
.L1100:
	R2 = 2 (X);
.L1095:
	cc =R3<=R1 (iu);
	R5 = CC;
	cc =R5==0;
	R0 = R7 - R3;
	if !cc R7 = R0;
	R6 = R3 >> 1;
	R5 = R7.L (Z);
	cc =R1<R3 (iu);
	R0 = R7 - R6;
	R4 = 0 (X);
	R6 = R6.L (Z);
	if !cc R4 = R2;
	R1 = R2 >> 1;
	cc =R6<=R5 (iu);
	P0 = R1;
	R1 = CC;
	P1 = R1;
	cc =P1==0;
	if cc R0 = R7;
	cc =R5<R6 (iu);
	R7 = 0 (X);
	if !cc R5 = P0; if cc R5 = R7;
	P0 = R2;
	R1 = R5 | R4;
	R6 = R1;
	R5 = R3 >> 2;
	P1 = P0 >> 2;
	R4 = P1;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 3;
	P0 = R5;
	if !cc R4 = P1; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 3;
	R4 = P0;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 4;
	P1 = R5;
	if !cc R4 = P0; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 4;
	R4 = P1;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 5;
	P0 = R5;
	if !cc R4 = P1; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 5;
	R4 = P0;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 6;
	P1 = R5;
	if !cc R4 = P0; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 6;
	R4 = P1;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 7;
	P0 = R5;
	if !cc R4 = P1; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 7;
	R4 = P0;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 8;
	P1 = R5;
	if !cc R4 = P0; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 8;
	R4 = P1;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 9;
	P0 = R5;
	if !cc R4 = P1; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 9;
	R4 = P0;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 10;
	P1 = R5;
	if !cc R4 = P0; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 10;
	R4 = P1;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 11;
	P0 = R5;
	if !cc R4 = P1; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 11;
	R4 = P0;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 12;
	P1 = R5;
	if !cc R4 = P0; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 12;
	R4 = P1;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 13;
	P0 = R5;
	if !cc R4 = P1; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 13;
	R4 = P0;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	R5 = R2 >> 14;
	P1 = R5;
	if !cc R4 = P0; if cc R4 = R7;
	R1 = R1 | R4;
	R6 = R1;
	R5 = R3 >> 14;
	R4 = P1;
	cc =R4==0;
	if cc jump .L1096;
	R6 = R0.L (Z);
	cc =R5<=R6 (iu);
	R4 = R0 - R5;
	R5 = CC;
	cc =R5==0;
	if !cc R0 = R4;
	cc =R5==0;
	if !cc R7 = P1;
	R1 = R1 | R7;
	R7 = 16384 (X);
	cc =R2==R7;
	R6 = R1;
	R3 >>= 15;
	if cc jump .L1096;
	R4 = R0.L (Z);
	cc =R3<=R4 (iu);
	R2 = R0 - R3;
	R3 = CC;
	cc =R3==0;
	if !cc R0 = R2;
	R6 = R1 | R3;
	jump.s .L1096;
.L1102:
	R2 = 4 (X);
	jump.s .L1095;
.L1104:
	R2 = 8 (X);
	jump.s .L1095;
.L1106:
	R2 = 16 (X);
	jump.s .L1095;
.L1116:
	R2 = 512 (X);
	jump.s .L1095;
.L1108:
	R2 = 32 (X);
	jump.s .L1095;
.L1110:
	R2 = 64 (X);
	jump.s .L1095;
.L1112:
	R2 = 128 (X);
	jump.s .L1095;
.L1114:
	R2 = 256 (X);
	jump.s .L1095;
.L1172:
	cc =R2==R1;
	R6 = CC;
	R0 = R7 - R0;
	cc =R6==0;
	if cc R0 = R7;
	jump.s .L1096;
.L1118:
	R2 = 1024 (X);
	jump.s .L1095;
.L1120:
	R2 = 2048 (X);
	jump.s .L1095;
.L1122:
	R2 = 4096 (X);
	jump.s .L1095;
.L1124:
	R2 = 8192 (X);
	jump.s .L1095;
.L1126:
	R2 = 16384 (X);
	jump.s .L1095;
.L1173:
	R2 = 32768 (Z);
	R3 = R2.L (Z);
	jump.s .L1095;
.L1127:
	R3 = 32768 (Z);
	R2 = R3.L (Z);
	jump.s .L1095;
.L1093:
	R0 = R7 - R0;
	R6 = 1 (X);
	jump.s .L1096;
	.size	___udivmodhi4, .-___udivmodhi4
	.align 4
.global ___udivmodsi4_libgcc;
.type ___udivmodsi4_libgcc, STT_FUNC;
___udivmodsi4_libgcc:
	R3 = R0;
	cc =R3<=R1 (iu);
	[--sp] = ( r7:6 );

	R0 = R1;
	P1 = R2;
	if cc jump .L1192;
	R2 = 32 (X);
	R1 = 1 (X);
	P2 = 32 (X);
	LSETUP (.L1175, .L1193) LC1 = P2;
.L1175:
	cc =R0<0;
	if cc jump .L1180;
	R0 <<= 1;
	cc =R3<=R0 (iu);
	R1 <<= 1;
	if cc jump .L1177;
.L1193:
	R2 += -1;
.L1178:
	cc =P1==0;
	if cc jump .L1174 (bp);
	R2 = R3;
.L1174:
	R0 = R2;
	( r7:6 ) = [sp++];

	rts;
.L1177:
	cc =R1==0;
	if cc jump .L1184;
.L1180:
	R2 = 0 (X);
	P0 = 0 (X);
.L1181:
	cc =R0<=R3 (iu);
	R7 = CC;
	R6 = R3 - R0;
	cc =R7==0;
	if !cc R3 = R6;
	cc =R7==0;
	if !cc R6 = R1; if cc R6 = P0;
	R1 >>= 1;
	cc =R1==0;
	R2 = R2 | R6;
	R0 >>= 1;
	if !cc jump .L1181 (bp);
	jump.s .L1178;
.L1192:
	cc =R0<=R3 (iu);
	R2 = CC;
	R1 = R3 - R1;
	cc =R3<R0 (iu);
	if !cc R3 = R1;
	R2 = R2.B (Z);
	jump.s .L1178;
.L1184:
	R2 = 0 (X);
	jump.s .L1178;
	.size	___udivmodsi4_libgcc, .-___udivmodsi4_libgcc
	.align 4
.global ___ashldi3;
.type ___ashldi3, STT_FUNC;
___ashldi3:
	cc = !BITTST (R2,5);
	[--sp] = ( r7:7 );

	R3 = R1;
	R7 = 32 (X);
	R1 = R2;
	if cc jump .L1195 (bp);
	R2 += -32;
	R1 = R0;
	R1 <<= R2;
	R2 = 0 (X);
.L1196:
	R0 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1195:
	cc =R2==0;
	if cc jump .L1198;
	R7 = R7 - R1;
	R2 = R0;
	R3 <<= R1;
	R0 >>= R7;
	R2 <<= R1;
	R1 = R0 | R3;
	jump.s .L1196;
.L1198:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___ashldi3, .-___ashldi3
	.align 4
.global ___ashrdi3;
.type ___ashrdi3, STT_FUNC;
___ashrdi3:
	cc = !BITTST (R2,5);
	[--sp] = ( r7:7 );

	R3 = R1;
	R7 = 32 (X);
	R1 = R2;
	if cc jump .L1200 (bp);
	R1 += -32;
	R0 = R3;
	R2 = R3 >>> 31;
	R0 >>>= R1;
.L1201:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1200:
	cc =R2==0;
	if cc jump .L1203;
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>>= R1;
	R0 = R3 | R0;
	jump.s .L1201;
.L1203:
	R1 = R3;
	( r7:7 ) = [sp++];

	rts;
	.size	___ashrdi3, .-___ashrdi3
	.align 4
.global ___bswapdi2;
.type ___bswapdi2, STT_FUNC;
___bswapdi2:
	[--sp] = ( r7:4 );

	R7 = R1 >> 8;
	R4 = 65280 (Z);
	R5 = R7 & R4;
	R3 = R1 >> 24;
	R6 = R0 >> 24;
	R3 = R3 | R5;
	R7 = R1 << 8;
	R5 = 255 (X);
	R7 = R7 | R6;
	R5 <<= 16;
	R6 = R7 & R5;
	R1 <<= 24;
	R3 = R3 | R6;
	R6 = R0 >> 8;
	R6 = R1 | R6;
	R2 = R0 << 24;
	R3 = R3 | R1;
	R1 = R7.B (Z);
	R2 = R2 | R1;
	R4 = R6 & R4;
	R0 <<= 8;
	R0 = R0 & R5;
	R7 = R2 | R4;
	R1 = R7 | R0;
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
	R3 = 255 (X);
	R3 <<= 16;
	R0 <<= 8;
	R1 = R1 | R2;
	R0 = R0 & R3;
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
	R3 = 16 (X);
	[--sp] = ( r7:7 );

	R7 = R3 - R2;
	R0 >>= R7;
	R1 = 65280 (Z);
	R3 = R0 & R1;
	cc =R3==0;
	R7 = CC;
	R7 <<= 3;
	R1 = 8 (X);
	R3 = R1 - R7;
	R0 >>= R3;
	R2 = R7 + R2;
	R7 = 240 (X);
	R1 = R0 & R7;
	cc =R1==0;
	R7 = CC;
	R7 <<= 2;
	R3 = 4 (X);
	R1 = R3 - R7;
	R0 >>= R1;
	R2 = R7 + R2;
	R7 = 12 (X);
	R3 = R0 & R7;
	cc =R3==0;
	R1 = CC;
	R1 <<= 1;
	R3 = 2 (X);
	R7 = R3 - R1;
	R0 >>= R7;
	R3 = R3 - R0;
	cc = !BITTST (R0,1);
	R0 = R1 + R2;
	P1 = R0;
	P2 = 0 (X);
	if cc P2 = R3;
	( r7:7 ) = [sp++];

	P0 = P2 + P1;
	R0 = P0;
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
	if cc jump .L1211;
	cc =R0<=R2;
	if !cc jump .L1212;
	cc =R3<R1 (iu);
	if cc jump .L1211;
	cc =R3<=R1 (iu);
	if !cc jump .L1212;
	R0 = 1 (X);
	rts;
.L1211:
	R0 = 0 (X);
	rts;
.L1212:
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
	if cc jump .L1217;
	cc =R0<=R2;
	if !cc jump .L1216;
	cc =R3<R1 (iu);
	if cc jump .L1217;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1217:
	R0 = -1 (X);
	rts;
.L1216:
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
	R3 = R0.B (Z);
	cc =R3==0;
	[--sp] = ( r7:7 );

	R7 = CC;
	R7 <<= 3;
	R0 >>= R7;
	R1 = 15 (X);
	R3 = R0 & R1;
	cc =R3==0;
	R2 = R7 + R2;
	R7 = CC;
	R7 <<= 2;
	R0 >>= R7;
	R3 = 3 (X);
	R1 = R0 & R3;
	cc =R1==0;
	R1 = CC;
	R1 <<= 1;
	R0 >>= R1;
	R0 = R0 & R3;
	R2 = R7 + R2;
	R3 = ~R0;
	R7 = 1 (X);
	R3 = R3 & R7;
	R0 >>= 1;
	R7 = 2 (X);
	R0 = R7 - R0;
	R3 = R3.L * R0.L (FU);
	R2 = R1 + R2;
	I0 = R2;
	M0 = R3;
	( r7:7 ) = [sp++];

	I0 += M0;
	R0 = I0;
	rts;
	.size	___ctzsi2, .-___ctzsi2
	.align 4
.global ___lshrdi3;
.type ___lshrdi3, STT_FUNC;
___lshrdi3:
	cc = !BITTST (R2,5);
	[--sp] = ( r7:7 );

	R3 = R1;
	R7 = 32 (X);
	R1 = R2;
	if cc jump .L1220 (bp);
	R1 += -32;
	R0 = R3;
	R0 >>= R1;
	R2 = 0 (X);
.L1221:
	R1 = R2;
	( r7:7 ) = [sp++];

	rts;
.L1220:
	cc =R2==0;
	if cc jump .L1223;
	R7 = R7 - R1;
	R2 = R3;
	R0 >>= R1;
	R3 <<= R7;
	R2 >>= R1;
	R0 = R3 | R0;
	jump.s .L1221;
.L1223:
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
	R1 >>= 16;
	R3 = R3.L (Z);
	R2 = R7.L * R2.L (FU);
	R3 = R3 + R6;
	R7 = R1 + R2;
	R0 >>= 16;
	R1 = R7 + R0;
	R0 = R3;
	( r7:6 ) = [sp++];

	rts;
	.size	___muldsi3, .-___muldsi3
	.align 4
.global ___muldi3_compiler_rt;
.type ___muldi3_compiler_rt, STT_FUNC;
___muldi3_compiler_rt:
	[--sp] = ( r7:4 );

	R7 = R0.L * R2.L (FU);
	R5 = R0 >> 16;
	R3 = R0;
	R6 = R7 >> 16;
	R0 = R2.L * R5.L (FU);
	P2 = R1;
	R1 = R2;
	R4 = R1 >> 16;
	R0 = R0 + R6;
	R2 = R0.L (Z);
	R6 = R3.L * R4.L (FU);
	R5 = R5.L * R4.L (FU);
	R6 = R6 + R2;
	R0 >>= 16;
	R0 = R0 + R5;
	R2 = R6 << 16;
	R6 >>= 16;
	R4 = R0 + R6;
	R6 = [SP+28];
	R3 *= R6;
	M0 = R3;
	R3 = P2;
	R1 *= R3;
	I0 = R4;
	M1 = R1;
	R7 = R7.L (Z);
	R7 = R7 + R2;
	R0 = R7;
	I0 += M0;
	I0 += M1;
	R1 = I0;
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
	R3 = R1 ^ R0;
	R1 = R3 >> 16;
	R2 = R1 ^ R3;
	R0 = R2 >> 8;
	R3 = R0 ^ R2;
	R1 = R3 >> 4;
	R2 = R1 ^ R3;
	R0 = 15 (X);
	R3 = R2 & R0;
	R2 = 27030 (X);
	R2 >>>= R3;
	R1 = 1 (X);
	R0 = R2 & R1;
	rts;
	.size	___paritydi2, .-___paritydi2
	.align 4
.global ___paritysi2;
.type ___paritysi2, STT_FUNC;
___paritysi2:
	R1 = R0 >> 16;
	R2 = R1 ^ R0;
	R0 = R2 >> 8;
	R3 = R0 ^ R2;
	R1 = R3 >> 4;
	R2 = R1 ^ R3;
	R0 = 15 (X);
	R3 = R2 & R0;
	R2 = 27030 (X);
	R2 >>>= R3;
	R1 = 1 (X);
	R0 = R2 & R1;
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
	CC = R0 < R0;
	R0 = [SP+4];
	R1 = [SP];
	R3 = ROT R0 BY -1;
	R7.H = 21845;
	R7.L = 21845;
	R2 = ROT R1 BY -1;
	R2 = R2 & R7;
	R1 = R1 - R2; cc = ac0;
	R3 = R3 & R7;
	CC = ! CC;
	R7 = CC;
	R0 = R0 - R3;
	R0 = R0 - R7;
	R3 = R1 >> 2;
	R2 = R0 << 30;
	R7.H = 13107;
	R7.L = 13107;
	R2 = R2 | R3;
	R2 = R2 & R7;
	R3 = R0 >> 2;
	R1 = R1 & R7;
	R1 = R2 + R1; cc = ac0;
	R3 = R3 & R7;
	R0 = R0 & R7;
	R2 = R3 + R0;
	R7 = CC;
	R7 = R2 + R7;
	R3 = R7 << 28;
	R0 = R1 >> 4;
	R2 = R3 | R0;
	R3 = R2 + R1; cc = ac0;
	R0 = R7 >> 4;
	R7 = R0 + R7;
	R1 = CC;
	R0.H = 3855;
	R2 = R7 + R1;
	R0.L = 3855;
	R1 = R2 & R0;
	R3 = R3 & R0;
	R7 = R1 + R3;
	R2 = R7 >> 16;
	R3 = R2 + R7;
	R0 = R3 >> 8;
	R7 = R0 + R3;
	R1 = 127 (X);
	SP += 8;
	R0 = R7 & R1;
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
	R3 = R1 & R2;
	R0 = R0 - R3;
	R2.H = 13107;
	R1 = R0 >> 2;
	R2.L = 13107;
	R3 = R1 & R2;
	R0 = R0 & R2;
	R1 = R3 + R0;
	R2 = R1 >> 4;
	R0.H = 3855;
	R3 = R2 + R1;
	R0.L = 3855;
	R2 = R3 & R0;
	R1 = R2 >> 16;
	R3 = R1 + R2;
	R0 = R3 >> 8;
	R2 = R0 + R3;
	R1 = 63 (X);
	R0 = R2 & R1;
	rts;
	.size	___popcountsi2, .-___popcountsi2
	.align 4
.global ___powidf2;
.type ___powidf2, STT_FUNC;
___powidf2:
	[--sp] = ( r7:4 );

	R7 = R1;
	R1 = 1023 (X);
	LINK 32;
	R6 = R0;
	R1 <<= 20;
	R0 = R0 -|- R0 ||
	[FP+-4] = R1 ||
	nop;
	cc = !BITTST (R2,0);
	R4 = ROT R2 BY 0 ||
	[FP+-8] = R0 ||
	nop;
	R5 = R2;
	if cc jump .L1232 (bp);
.L1234:
	R0 = [FP+-8];
	R1 = [FP+-4];
	[SP+12] = R7;
	R2 = R6;
	call ___muldf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
.L1232:
	R3 = R5 >> 31;
	R5 = R3 + R5;
	R5 >>>= 1;
	cc =R5==0;
	if cc jump .L1233;
.L1235:
	[SP+12] = R7;
	R2 = R6;
	R0 = R6;
	R1 = R7;
	call ___muldf3;
	cc = !BITTST (R5,0);
	R6 = R0;
	R7 = R1;
	if !cc jump .L1234 (bp);
	R0 = R5 >> 31;
	R5 = R0 + R5;
	R5 >>>= 1;
	jump.s .L1235;
.L1233:
	cc =R4<0;
	if !cc jump .L1231 (bp);
	P1 = [FP+-4];
	R1 = 1023 (X);
	R2 = [FP+-8];
	R0 = 0 (X);
	[SP+12] = P1;
	R1 <<= 20;
	call ___divdf3;
	[FP+-8] = R0;
	[FP+-4] = R1;
.L1231:
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

	cc = !BITTST (R1,0);
	R5 = 127 (X);
	LINK 12;
	R6 = R0;
	R4 = R1;
	R7 = R1;
	R5 <<= 23;
	if cc jump .L1239 (bp);
.L1241:
	R0 = R5;
	R1 = R6;
	call ___mulsf3;
	R5 = R0;
.L1239:
	R0 = R7 >> 31;
	R7 = R0 + R7;
	R7 >>>= 1;
	cc =R7==0;
	if cc jump .L1240;
	R1 = R6;
	R0 = R6;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1241 (bp);
.L1245:
	R1 = R7 >> 31;
	R7 = R1 + R7;
	R0 = R6;
	R1 = R6;
	R7 >>>= 1;
	call ___mulsf3;
	cc = !BITTST (R7,0);
	R6 = R0;
	if !cc jump .L1241 (bp);
	jump.s .L1245;
.L1240:
	cc =R4<0;
	if !cc jump .L1238 (bp);
	R0 = 127 (X);
	R1 = R5;
	R0 <<= 23;
	call ___divsf3;
	R5 = R0;
.L1238:
	UNLINK;
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
	if cc jump .L1250;
	cc =R0<=R2 (iu);
	if !cc jump .L1251;
	cc =R3<R1 (iu);
	if cc jump .L1250;
	cc =R3<=R1 (iu);
	if !cc jump .L1251;
	R0 = 1 (X);
	rts;
.L1250:
	R0 = 0 (X);
	rts;
.L1251:
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
	if cc jump .L1256;
	cc =R0<=R2 (iu);
	if !cc jump .L1255;
	cc =R3<R1 (iu);
	if cc jump .L1256;
	cc =R1<R3 (iu);
	R0 = CC;
	rts;
.L1256:
	R0 = -1 (X);
	rts;
.L1255:
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
