	.text
	.file	"mini-libc.c"
	.functype	__lttf2 (i64, i64, i64, i64) -> (i32)
	.functype	memcpy (i32, i32, i32) -> (i32)
	.functype	__gttf2 (i64, i64, i64, i64) -> (i32)
	.functype	__extenddftf2 (i32, f64) -> ()
	.functype	__addtf3 (i32, i64, i64, i64, i64) -> ()
	.functype	__eqtf2 (i64, i64, i64, i64) -> (i32)
	.functype	__multf3 (i32, i64, i64, i64, i64) -> ()
	.tabletype	__indirect_function_table, funcref
	.globaltype	__stack_pointer, i32
	.functype	make_ti (i32, i64, i64) -> ()
	.functype	make_tu (i32, i64, i64) -> ()
	.functype	memmove (i32, i32, i32) -> (i32)
	.functype	memccpy (i32, i32, i32, i32) -> (i32)
	.functype	memchr (i32, i32, i32) -> (i32)
	.functype	memcmp (i32, i32, i32) -> (i32)
	.functype	memcpy (i32, i32, i32) -> (i32)
	.functype	memrchr (i32, i32, i32) -> (i32)
	.functype	memset (i32, i32, i32) -> (i32)
	.functype	stpcpy (i32, i32) -> (i32)
	.functype	strchrnul (i32, i32) -> (i32)
	.functype	strchr (i32, i32) -> (i32)
	.functype	strcmp (i32, i32) -> (i32)
	.functype	strlen (i32) -> (i32)
	.functype	strncmp (i32, i32, i32) -> (i32)
	.functype	swab (i32, i32, i32) -> ()
	.functype	isalpha (i32) -> (i32)
	.functype	isascii (i32) -> (i32)
	.functype	isblank (i32) -> (i32)
	.functype	iscntrl (i32) -> (i32)
	.functype	isdigit (i32) -> (i32)
	.functype	isgraph (i32) -> (i32)
	.functype	islower (i32) -> (i32)
	.functype	isprint (i32) -> (i32)
	.functype	isspace (i32) -> (i32)
	.functype	isupper (i32) -> (i32)
	.functype	iswcntrl (i32) -> (i32)
	.functype	iswdigit (i32) -> (i32)
	.functype	iswprint (i32) -> (i32)
	.functype	iswxdigit (i32) -> (i32)
	.functype	toascii (i32) -> (i32)
	.functype	fdim (f64, f64) -> (f64)
	.functype	fdimf (f32, f32) -> (f32)
	.functype	fmax (f64, f64) -> (f64)
	.functype	fmaxf (f32, f32) -> (f32)
	.functype	fmaxl (i32, i64, i64, i64, i64) -> ()
	.functype	fmin (f64, f64) -> (f64)
	.functype	fminf (f32, f32) -> (f32)
	.functype	fminl (i32, i64, i64, i64, i64) -> ()
	.functype	l64a (i32) -> (i32)
	.functype	srand (i32) -> ()
	.functype	rand () -> (i32)
	.functype	insque (i32, i32) -> ()
	.functype	remque (i32) -> ()
	.functype	lsearch (i32, i32, i32, i32, i32) -> (i32)
	.functype	lfind (i32, i32, i32, i32, i32) -> (i32)
	.functype	abs (i32) -> (i32)
	.functype	atoi (i32) -> (i32)
	.functype	atol (i32) -> (i32)
	.functype	atoll (i32) -> (i64)
	.functype	bsearch (i32, i32, i32, i32, i32) -> (i32)
	.functype	bsearch_r (i32, i32, i32, i32, i32, i32) -> (i32)
	.functype	div (i32, i32, i32) -> ()
	.functype	imaxabs (i64) -> (i64)
	.functype	imaxdiv (i32, i64, i64) -> ()
	.functype	labs (i32) -> (i32)
	.functype	ldiv (i32, i32, i32) -> ()
	.functype	llabs (i64) -> (i64)
	.functype	lldiv (i32, i64, i64) -> ()
	.functype	wcschr (i32, i32) -> (i32)
	.functype	wcscmp (i32, i32) -> (i32)
	.functype	wcscpy (i32, i32) -> (i32)
	.functype	wcslen (i32) -> (i32)
	.functype	wcsncmp (i32, i32, i32) -> (i32)
	.functype	wmemchr (i32, i32, i32) -> (i32)
	.functype	wmemcmp (i32, i32, i32) -> (i32)
	.functype	wmemcpy (i32, i32, i32) -> (i32)
	.functype	wmemmove (i32, i32, i32) -> (i32)
	.functype	wmemset (i32, i32, i32) -> (i32)
	.functype	bcopy (i32, i32, i32) -> ()
	.functype	rotl64 (i64, i32) -> (i64)
	.functype	rotr64 (i64, i32) -> (i64)
	.functype	rotl32 (i32, i32) -> (i32)
	.functype	rotr32 (i32, i32) -> (i32)
	.functype	rotl_sz (i32, i32) -> (i32)
	.functype	rotr_sz (i32, i32) -> (i32)
	.functype	rotl16 (i32, i32) -> (i32)
	.functype	rotr16 (i32, i32) -> (i32)
	.functype	rotl8 (i32, i32) -> (i32)
	.functype	rotr8 (i32, i32) -> (i32)
	.functype	bswap_16 (i32) -> (i32)
	.functype	bswap_32 (i32) -> (i32)
	.functype	bswap_64 (i64) -> (i64)
	.functype	ffs (i32) -> (i32)
	.functype	libiberty_ffs (i32) -> (i32)
	.functype	gl_isinff (f32) -> (i32)
	.functype	gl_isinfd (f64) -> (i32)
	.functype	gl_isinfl (i64, i64) -> (i32)
	.functype	_Qp_itoq (i32, i32) -> ()
	.functype	ldexpf (f32, i32) -> (f32)
	.functype	ldexp (f64, i32) -> (f64)
	.functype	ldexpl (i32, i64, i64, i32) -> ()
	.functype	memxor (i32, i32, i32) -> (i32)
	.functype	strncat (i32, i32, i32) -> (i32)
	.functype	strnlen (i32, i32) -> (i32)
	.functype	strpbrk (i32, i32) -> (i32)
	.functype	strrchr (i32, i32) -> (i32)
	.functype	strstr (i32, i32) -> (i32)
	.functype	copysign (f64, f64) -> (f64)
	.functype	memmem (i32, i32, i32, i32) -> (i32)
	.functype	mempcpy (i32, i32, i32) -> (i32)
	.functype	frexp (f64, i32) -> (f64)
	.functype	__muldi3 (i64, i64) -> (i64)
	.functype	udivmodsi4 (i32, i32, i32) -> (i32)
	.functype	__clrsbqi2 (i32) -> (i32)
	.functype	__clrsbdi2 (i64) -> (i32)
	.functype	__mulsi3 (i32, i32) -> (i32)
	.functype	__cmovd (i32, i32, i32) -> ()
	.functype	__cmovh (i32, i32, i32) -> ()
	.functype	__cmovw (i32, i32, i32) -> ()
	.functype	__modi (i32, i32) -> (i32)
	.functype	__uitod (i32) -> (f64)
	.functype	__uitof (i32) -> (f32)
	.functype	__ulltod (i64) -> (f64)
	.functype	__ulltof (i64) -> (f32)
	.functype	__umodi (i32, i32) -> (i32)
	.functype	__clzhi2 (i32) -> (i32)
	.functype	__ctzhi2 (i32) -> (i32)
	.functype	__fixunssfsi (f32) -> (i32)
	.functype	__parityhi2 (i32) -> (i32)
	.functype	__popcounthi2 (i32) -> (i32)
	.functype	__mulsi3_iq2000 (i32, i32) -> (i32)
	.functype	__mulsi3_lm32 (i32, i32) -> (i32)
	.functype	__udivmodsi4 (i32, i32, i32) -> (i32)
	.functype	__mspabi_cmpf (f32, f32) -> (i32)
	.functype	__mspabi_cmpd (f64, f64) -> (i32)
	.functype	__mspabi_mpysll (i32, i32) -> (i64)
	.functype	__mspabi_mpyull (i32, i32) -> (i64)
	.functype	__mulhi3 (i32, i32) -> (i32)
	.functype	__divsi3 (i32, i32) -> (i32)
	.functype	__modsi3 (i32, i32) -> (i32)
	.functype	__udivmodhi4 (i32, i32, i32) -> (i32)
	.functype	__udivmodsi4_libgcc (i32, i32, i32) -> (i32)
	.functype	__ashldi3 (i64, i32) -> (i64)
	.functype	__ashlti3 (i32, i64, i64, i32) -> ()
	.functype	__ashrdi3 (i64, i32) -> (i64)
	.functype	__ashrti3 (i32, i64, i64, i32) -> ()
	.functype	__bswapdi2 (i64) -> (i64)
	.functype	__bswapsi2 (i32) -> (i32)
	.functype	__clzsi2 (i32) -> (i32)
	.functype	__clzti2 (i64, i64) -> (i32)
	.functype	__cmpdi2 (i64, i64) -> (i32)
	.functype	__aeabi_lcmp (i64, i64) -> (i32)
	.functype	__cmpti2 (i64, i64, i64, i64) -> (i32)
	.functype	__ctzsi2 (i32) -> (i32)
	.functype	__ctzti2 (i64, i64) -> (i32)
	.functype	__ffsti2 (i64, i64) -> (i32)
	.functype	__lshrdi3 (i64, i32) -> (i64)
	.functype	__lshrti3 (i32, i64, i64, i32) -> ()
	.functype	__muldsi3 (i32, i32) -> (i64)
	.functype	__muldi3_compiler_rt (i64, i64) -> (i64)
	.functype	__mulddi3 (i32, i64, i64) -> ()
	.functype	__multi3 (i32, i64, i64, i64, i64) -> ()
	.functype	__negdi2 (i64) -> (i64)
	.functype	__negti2 (i32, i64, i64) -> ()
	.functype	__paritydi2 (i64) -> (i32)
	.functype	__parityti2 (i64, i64) -> (i32)
	.functype	__paritysi2 (i32) -> (i32)
	.functype	__popcountdi2 (i64) -> (i32)
	.functype	__popcountsi2 (i32) -> (i32)
	.functype	__popcountti2 (i64, i64) -> (i32)
	.functype	__powidf2 (f64, i32) -> (f64)
	.functype	__powisf2 (f32, i32) -> (f32)
	.functype	__ucmpdi2 (i64, i64) -> (i32)
	.functype	__aeabi_ulcmp (i64, i64) -> (i32)
	.functype	__ucmpti2 (i64, i64, i64, i64) -> (i32)
	.section	.text.make_ti,"",@
	.hidden	make_ti                         # -- Begin function make_ti
	.globl	make_ti
	.type	make_ti,@function
make_ti:                                # @make_ti
	.functype	make_ti (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	1
	i64.store	24
	local.get	5
	local.get	2
	i64.store	16
	local.get	5
	i64.load	24
	local.set	6
	local.get	5
	local.get	6
	i64.store	8
	local.get	5
	i64.load	16
	local.set	7
	local.get	5
	local.get	7
	i64.store	0
	local.get	5
	i64.load	0
	local.set	8
	local.get	5
	i64.load	8
	local.set	9
	local.get	0
	local.get	9
	i64.store	8
	local.get	0
	local.get	8
	i64.store	0
	return
	end_function
                                        # -- End function
	.section	.text.make_tu,"",@
	.hidden	make_tu                         # -- Begin function make_tu
	.globl	make_tu
	.type	make_tu,@function
make_tu:                                # @make_tu
	.functype	make_tu (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	1
	i64.store	24
	local.get	5
	local.get	2
	i64.store	16
	local.get	5
	i64.load	24
	local.set	6
	local.get	5
	local.get	6
	i64.store	8
	local.get	5
	i64.load	16
	local.set	7
	local.get	5
	local.get	7
	i64.store	0
	local.get	5
	i64.load	0
	local.set	8
	local.get	5
	i64.load	8
	local.set	9
	local.get	0
	local.get	9
	i64.store	8
	local.get	0
	local.get	8
	i64.store	0
	return
	end_function
                                        # -- End function
	.section	.text.memmove,"",@
	.hidden	memmove                         # -- Begin function memmove
	.globl	memmove
	.type	memmove,@function
memmove:                                # @memmove
	.functype	memmove (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	28
	local.set	6
	local.get	5
	local.get	6
	i32.store	16
	local.get	5
	i32.load	24
	local.set	7
	local.get	5
	local.get	7
	i32.store	12
	local.get	5
	i32.load	12
	local.set	8
	local.get	5
	i32.load	16
	local.set	9
	local.get	8
	local.get	9
	i32.lt_u
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label1
# %bb.1:
	local.get	5
	i32.load	20
	local.set	13
	local.get	5
	i32.load	12
	local.set	14
	local.get	14
	local.get	13
	i32.add 
	local.set	15
	local.get	5
	local.get	15
	i32.store	12
	local.get	5
	i32.load	20
	local.set	16
	local.get	5
	i32.load	16
	local.set	17
	local.get	17
	local.get	16
	i32.add 
	local.set	18
	local.get	5
	local.get	18
	i32.store	16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label3:
	local.get	5
	i32.load	20
	local.set	19
	local.get	19
	i32.eqz
	br_if   	1                               # 1: down to label2
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	local.get	5
	i32.load	12
	local.set	20
	i32.const	-1
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	5
	local.get	22
	i32.store	12
	local.get	22
	i32.load8_u	0
	local.set	23
	local.get	5
	i32.load	16
	local.set	24
	i32.const	-1
	local.set	25
	local.get	24
	local.get	25
	i32.add 
	local.set	26
	local.get	5
	local.get	26
	i32.store	16
	local.get	26
	local.get	23
	i32.store8	0
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	local.get	5
	i32.load	20
	local.set	27
	i32.const	-1
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	5
	local.get	29
	i32.store	20
	br      	0                               # 0: up to label3
.LBB2_5:
	end_loop
	end_block                               # label2:
	br      	1                               # 1: down to label0
.LBB2_6:
	end_block                               # label1:
	local.get	5
	i32.load	12
	local.set	30
	local.get	5
	i32.load	16
	local.set	31
	local.get	30
	local.get	31
	i32.ne  
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	block   	
	local.get	34
	i32.eqz
	br_if   	0                               # 0: down to label4
# %bb.7:
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label6:
	local.get	5
	i32.load	20
	local.set	35
	local.get	35
	i32.eqz
	br_if   	1                               # 1: down to label5
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	local.get	5
	i32.load	12
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.add 
	local.set	38
	local.get	5
	local.get	38
	i32.store	12
	local.get	36
	i32.load8_u	0
	local.set	39
	local.get	5
	i32.load	16
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.add 
	local.set	42
	local.get	5
	local.get	42
	i32.store	16
	local.get	40
	local.get	39
	i32.store8	0
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	local.get	5
	i32.load	20
	local.set	43
	i32.const	-1
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	5
	local.get	45
	i32.store	20
	br      	0                               # 0: up to label6
.LBB2_11:
	end_loop
	end_block                               # label5:
.LBB2_12:
	end_block                               # label4:
.LBB2_13:
	end_block                               # label0:
	local.get	5
	i32.load	28
	local.set	46
	local.get	46
	return
	end_function
                                        # -- End function
	.section	.text.memccpy,"",@
	.hidden	memccpy                         # -- Begin function memccpy
	.globl	memccpy
	.type	memccpy,@function
memccpy:                                # @memccpy
	.functype	memccpy (i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	local.get	0
	i32.store	24
	local.get	6
	local.get	1
	i32.store	20
	local.get	6
	local.get	2
	i32.store	16
	local.get	6
	local.get	3
	i32.store	12
	local.get	6
	i32.load	24
	local.set	7
	local.get	6
	local.get	7
	i32.store	8
	local.get	6
	i32.load	20
	local.set	8
	local.get	6
	local.get	8
	i32.store	4
	local.get	6
	i32.load	16
	local.set	9
	i32.const	255
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	local.get	6
	local.get	11
	i32.store	16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	loop    	                                # label7:
	local.get	6
	i32.load	12
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.set	14
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	local.get	6
	i32.load	4
	local.set	15
	local.get	15
	i32.load8_u	0
	local.set	16
	local.get	6
	i32.load	8
	local.set	17
	local.get	17
	local.get	16
	i32.store8	0
	i32.const	255
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	local.get	6
	i32.load	16
	local.set	20
	local.get	19
	local.get	20
	i32.ne  
	local.set	21
	local.get	21
	local.set	14
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	end_block                               # label8:
	local.get	14
	local.set	22
	i32.const	1
	local.set	23
	local.get	22
	local.get	23
	i32.and 
	local.set	24
	block   	
	local.get	24
	i32.eqz
	br_if   	0                               # 0: down to label9
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	local.get	6
	i32.load	12
	local.set	25
	i32.const	-1
	local.set	26
	local.get	25
	local.get	26
	i32.add 
	local.set	27
	local.get	6
	local.get	27
	i32.store	12
	local.get	6
	i32.load	4
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.add 
	local.set	30
	local.get	6
	local.get	30
	i32.store	4
	local.get	6
	i32.load	8
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	6
	local.get	33
	i32.store	8
	br      	1                               # 1: up to label7
.LBB3_6:
	end_block                               # label9:
	end_loop
	local.get	6
	i32.load	12
	local.set	34
	block   	
	block   	
	local.get	34
	i32.eqz
	br_if   	0                               # 0: down to label11
# %bb.7:
	local.get	6
	i32.load	8
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.add 
	local.set	37
	local.get	6
	local.get	37
	i32.store	28
	br      	1                               # 1: down to label10
.LBB3_8:
	end_block                               # label11:
	i32.const	0
	local.set	38
	local.get	6
	local.get	38
	i32.store	28
.LBB3_9:
	end_block                               # label10:
	local.get	6
	i32.load	28
	local.set	39
	local.get	39
	return
	end_function
                                        # -- End function
	.section	.text.memchr,"",@
	.hidden	memchr                          # -- Begin function memchr
	.globl	memchr
	.type	memchr,@function
memchr:                                 # @memchr
	.functype	memchr (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
	local.get	5
	i32.load	12
	local.set	6
	local.get	5
	local.get	6
	i32.store	0
	local.get	5
	i32.load	8
	local.set	7
	i32.const	255
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	5
	local.get	9
	i32.store	8
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	loop    	                                # label12:
	local.get	5
	i32.load	4
	local.set	10
	i32.const	0
	local.set	11
	local.get	11
	local.set	12
	block   	
	local.get	10
	i32.eqz
	br_if   	0                               # 0: down to label13
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	local.get	5
	i32.load	0
	local.set	13
	local.get	13
	i32.load8_u	0
	local.set	14
	i32.const	255
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	5
	i32.load	8
	local.set	17
	local.get	16
	local.get	17
	i32.ne  
	local.set	18
	local.get	18
	local.set	12
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	end_block                               # label13:
	local.get	12
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label14
# %bb.4:                                #   in Loop: Header=BB4_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	local.get	5
	i32.load	0
	local.set	22
	i32.const	1
	local.set	23
	local.get	22
	local.get	23
	i32.add 
	local.set	24
	local.get	5
	local.get	24
	i32.store	0
	local.get	5
	i32.load	4
	local.set	25
	i32.const	-1
	local.set	26
	local.get	25
	local.get	26
	i32.add 
	local.set	27
	local.get	5
	local.get	27
	i32.store	4
	br      	1                               # 1: up to label12
.LBB4_6:
	end_block                               # label14:
	end_loop
	local.get	5
	i32.load	4
	local.set	28
	block   	
	block   	
	local.get	28
	i32.eqz
	br_if   	0                               # 0: down to label16
# %bb.7:
	local.get	5
	i32.load	0
	local.set	29
	local.get	29
	local.set	30
	br      	1                               # 1: down to label15
.LBB4_8:
	end_block                               # label16:
	i32.const	0
	local.set	31
	local.get	31
	local.set	30
.LBB4_9:
	end_block                               # label15:
	local.get	30
	local.set	32
	local.get	32
	return
	end_function
                                        # -- End function
	.section	.text.memcmp,"",@
	.hidden	memcmp                          # -- Begin function memcmp
	.globl	memcmp
	.type	memcmp,@function
memcmp:                                 # @memcmp
	.functype	memcmp (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	28
	local.set	6
	local.get	5
	local.get	6
	i32.store	16
	local.get	5
	i32.load	24
	local.set	7
	local.get	5
	local.get	7
	i32.store	12
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	loop    	                                # label17:
	local.get	5
	i32.load	20
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.set	10
	block   	
	local.get	8
	i32.eqz
	br_if   	0                               # 0: down to label18
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	local.get	5
	i32.load	16
	local.set	11
	local.get	11
	i32.load8_u	0
	local.set	12
	i32.const	255
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	local.get	5
	i32.load	12
	local.set	15
	local.get	15
	i32.load8_u	0
	local.set	16
	i32.const	255
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	14
	local.get	18
	i32.eq  
	local.set	19
	local.get	19
	local.set	10
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	end_block                               # label18:
	local.get	10
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	block   	
	local.get	22
	i32.eqz
	br_if   	0                               # 0: down to label19
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	local.get	5
	i32.load	20
	local.set	23
	i32.const	-1
	local.set	24
	local.get	23
	local.get	24
	i32.add 
	local.set	25
	local.get	5
	local.get	25
	i32.store	20
	local.get	5
	i32.load	16
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.add 
	local.set	28
	local.get	5
	local.get	28
	i32.store	16
	local.get	5
	i32.load	12
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.add 
	local.set	31
	local.get	5
	local.get	31
	i32.store	12
	br      	1                               # 1: up to label17
.LBB5_6:
	end_block                               # label19:
	end_loop
	local.get	5
	i32.load	20
	local.set	32
	block   	
	block   	
	local.get	32
	i32.eqz
	br_if   	0                               # 0: down to label21
# %bb.7:
	local.get	5
	i32.load	16
	local.set	33
	local.get	33
	i32.load8_u	0
	local.set	34
	i32.const	255
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	local.get	5
	i32.load	12
	local.set	37
	local.get	37
	i32.load8_u	0
	local.set	38
	i32.const	255
	local.set	39
	local.get	38
	local.get	39
	i32.and 
	local.set	40
	local.get	36
	local.get	40
	i32.sub 
	local.set	41
	local.get	41
	local.set	42
	br      	1                               # 1: down to label20
.LBB5_8:
	end_block                               # label21:
	i32.const	0
	local.set	43
	local.get	43
	local.set	42
.LBB5_9:
	end_block                               # label20:
	local.get	42
	local.set	44
	local.get	44
	return
	end_function
                                        # -- End function
	.section	.text.memcpy,"",@
	.hidden	memcpy                          # -- Begin function memcpy
	.globl	memcpy
	.type	memcpy,@function
memcpy:                                 # @memcpy
	.functype	memcpy (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	28
	local.set	6
	local.get	5
	local.get	6
	i32.store	16
	local.get	5
	i32.load	24
	local.set	7
	local.get	5
	local.get	7
	i32.store	12
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label23:
	local.get	5
	i32.load	20
	local.set	8
	local.get	8
	i32.eqz
	br_if   	1                               # 1: down to label22
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	local.get	5
	i32.load	12
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.add 
	local.set	11
	local.get	5
	local.get	11
	i32.store	12
	local.get	9
	i32.load8_u	0
	local.set	12
	local.get	5
	i32.load	16
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.add 
	local.set	15
	local.get	5
	local.get	15
	i32.store	16
	local.get	13
	local.get	12
	i32.store8	0
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	local.get	5
	i32.load	20
	local.set	16
	i32.const	-1
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	5
	local.get	18
	i32.store	20
	br      	0                               # 0: up to label23
.LBB6_4:
	end_loop
	end_block                               # label22:
	local.get	5
	i32.load	28
	local.set	19
	local.get	19
	return
	end_function
                                        # -- End function
	.section	.text.memrchr,"",@
	.hidden	memrchr                         # -- Begin function memrchr
	.globl	memrchr
	.type	memrchr,@function
memrchr:                                # @memrchr
	.functype	memrchr (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	24
	local.get	5
	local.get	1
	i32.store	20
	local.get	5
	local.get	2
	i32.store	16
	local.get	5
	i32.load	24
	local.set	6
	local.get	5
	local.get	6
	i32.store	12
	local.get	5
	i32.load	20
	local.set	7
	i32.const	255
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	5
	local.get	9
	i32.store	20
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label26:
	local.get	5
	i32.load	16
	local.set	10
	i32.const	-1
	local.set	11
	local.get	10
	local.get	11
	i32.add 
	local.set	12
	local.get	5
	local.get	12
	i32.store	16
	local.get	10
	i32.eqz
	br_if   	1                               # 1: down to label25
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	local.get	5
	i32.load	12
	local.set	13
	local.get	5
	i32.load	16
	local.set	14
	local.get	13
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	i32.load8_u	0
	local.set	16
	i32.const	255
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	5
	i32.load	20
	local.set	19
	local.get	18
	local.get	19
	i32.eq  
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	block   	
	local.get	22
	i32.eqz
	br_if   	0                               # 0: down to label27
# %bb.3:
	local.get	5
	i32.load	12
	local.set	23
	local.get	5
	i32.load	16
	local.set	24
	local.get	23
	local.get	24
	i32.add 
	local.set	25
	local.get	5
	local.get	25
	i32.store	28
	br      	3                               # 3: down to label24
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	end_block                               # label27:
	br      	0                               # 0: up to label26
.LBB7_5:
	end_loop
	end_block                               # label25:
	i32.const	0
	local.set	26
	local.get	5
	local.get	26
	i32.store	28
.LBB7_6:
	end_block                               # label24:
	local.get	5
	i32.load	28
	local.set	27
	local.get	27
	return
	end_function
                                        # -- End function
	.section	.text.memset,"",@
	.hidden	memset                          # -- Begin function memset
	.globl	memset
	.type	memset,@function
memset:                                 # @memset
	.functype	memset (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	28
	local.set	6
	local.get	5
	local.get	6
	i32.store	16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label29:
	local.get	5
	i32.load	20
	local.set	7
	local.get	7
	i32.eqz
	br_if   	1                               # 1: down to label28
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	local.get	5
	i32.load	24
	local.set	8
	local.get	5
	i32.load	16
	local.set	9
	local.get	9
	local.get	8
	i32.store8	0
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	local.get	5
	i32.load	20
	local.set	10
	i32.const	-1
	local.set	11
	local.get	10
	local.get	11
	i32.add 
	local.set	12
	local.get	5
	local.get	12
	i32.store	20
	local.get	5
	i32.load	16
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.add 
	local.set	15
	local.get	5
	local.get	15
	i32.store	16
	br      	0                               # 0: up to label29
.LBB8_4:
	end_loop
	end_block                               # label28:
	local.get	5
	i32.load	28
	local.set	16
	local.get	16
	return
	end_function
                                        # -- End function
	.section	.text.stpcpy,"",@
	.hidden	stpcpy                          # -- Begin function stpcpy
	.globl	stpcpy
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
	.functype	stpcpy (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label31:
	local.get	4
	i32.load	8
	local.set	5
	local.get	5
	i32.load8_u	0
	local.set	6
	local.get	4
	i32.load	12
	local.set	7
	local.get	7
	local.get	6
	i32.store8	0
	i32.const	0
	local.set	8
	i32.const	255
	local.set	9
	local.get	6
	local.get	9
	i32.and 
	local.set	10
	i32.const	255
	local.set	11
	local.get	8
	local.get	11
	i32.and 
	local.set	12
	local.get	10
	local.get	12
	i32.ne  
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	local.get	15
	i32.eqz
	br_if   	1                               # 1: down to label30
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	local.get	4
	i32.load	8
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	4
	local.get	18
	i32.store	8
	local.get	4
	i32.load	12
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.add 
	local.set	21
	local.get	4
	local.get	21
	i32.store	12
	br      	0                               # 0: up to label31
.LBB9_4:
	end_loop
	end_block                               # label30:
	local.get	4
	i32.load	12
	local.set	22
	local.get	22
	return
	end_function
                                        # -- End function
	.section	.text.strchrnul,"",@
	.hidden	strchrnul                       # -- Begin function strchrnul
	.globl	strchrnul
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
	.functype	strchrnul (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	8
	local.set	5
	i32.const	255
	local.set	6
	local.get	5
	local.get	6
	i32.and 
	local.set	7
	local.get	4
	local.get	7
	i32.store	8
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label32:
	local.get	4
	i32.load	12
	local.set	8
	local.get	8
	i32.load8_u	0
	local.set	9
	i32.const	24
	local.set	10
	local.get	9
	local.get	10
	i32.shl 
	local.set	11
	local.get	11
	local.get	10
	i32.shr_s
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.set	14
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label33
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	local.get	4
	i32.load	12
	local.set	15
	local.get	15
	i32.load8_u	0
	local.set	16
	i32.const	255
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	4
	i32.load	8
	local.set	19
	local.get	18
	local.get	19
	i32.ne  
	local.set	20
	local.get	20
	local.set	14
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	end_block                               # label33:
	local.get	14
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	block   	
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label34
# %bb.4:                                #   in Loop: Header=BB10_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	local.get	4
	i32.load	12
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.add 
	local.set	26
	local.get	4
	local.get	26
	i32.store	12
	br      	1                               # 1: up to label32
.LBB10_6:
	end_block                               # label34:
	end_loop
	local.get	4
	i32.load	12
	local.set	27
	local.get	27
	return
	end_function
                                        # -- End function
	.section	.text.strchr,"",@
	.hidden	strchr                          # -- Begin function strchr
	.globl	strchr
	.type	strchr,@function
strchr:                                 # @strchr
	.functype	strchr (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	8
	local.get	4
	local.get	1
	i32.store	4
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label36:
	local.get	4
	i32.load	8
	local.set	5
	local.get	5
	i32.load8_u	0
	local.set	6
	i32.const	24
	local.set	7
	local.get	6
	local.get	7
	i32.shl 
	local.set	8
	local.get	8
	local.get	7
	i32.shr_s
	local.set	9
	local.get	4
	i32.load	4
	local.set	10
	local.get	9
	local.get	10
	i32.eq  
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label37
# %bb.2:
	local.get	4
	i32.load	8
	local.set	14
	local.get	4
	local.get	14
	i32.store	12
	br      	2                               # 2: down to label35
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	end_block                               # label37:
# %bb.4:                                #   in Loop: Header=BB11_1 Depth=1
	local.get	4
	i32.load	8
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.add 
	local.set	17
	local.get	4
	local.get	17
	i32.store	8
	local.get	15
	i32.load8_u	0
	local.set	18
	i32.const	0
	local.set	19
	i32.const	255
	local.set	20
	local.get	18
	local.get	20
	i32.and 
	local.set	21
	i32.const	255
	local.set	22
	local.get	19
	local.get	22
	i32.and 
	local.set	23
	local.get	21
	local.get	23
	i32.ne  
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	local.get	26
	br_if   	0                               # 0: up to label36
# %bb.5:
	end_loop
	i32.const	0
	local.set	27
	local.get	4
	local.get	27
	i32.store	12
.LBB11_6:
	end_block                               # label35:
	local.get	4
	i32.load	12
	local.set	28
	local.get	28
	return
	end_function
                                        # -- End function
	.section	.text.strcmp,"",@
	.hidden	strcmp                          # -- Begin function strcmp
	.globl	strcmp
	.type	strcmp,@function
strcmp:                                 # @strcmp
	.functype	strcmp (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label38:
	local.get	4
	i32.load	12
	local.set	5
	local.get	5
	i32.load8_u	0
	local.set	6
	i32.const	24
	local.set	7
	local.get	6
	local.get	7
	i32.shl 
	local.set	8
	local.get	8
	local.get	7
	i32.shr_s
	local.set	9
	local.get	4
	i32.load	8
	local.set	10
	local.get	10
	i32.load8_u	0
	local.set	11
	i32.const	24
	local.set	12
	local.get	11
	local.get	12
	i32.shl 
	local.set	13
	local.get	13
	local.get	12
	i32.shr_s
	local.set	14
	local.get	9
	local.get	14
	i32.eq  
	local.set	15
	i32.const	0
	local.set	16
	i32.const	1
	local.set	17
	local.get	15
	local.get	17
	i32.and 
	local.set	18
	local.get	16
	local.set	19
	block   	
	local.get	18
	i32.eqz
	br_if   	0                               # 0: down to label39
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	local.get	4
	i32.load	12
	local.set	20
	local.get	20
	i32.load8_u	0
	local.set	21
	i32.const	24
	local.set	22
	local.get	21
	local.get	22
	i32.shl 
	local.set	23
	local.get	23
	local.get	22
	i32.shr_s
	local.set	24
	i32.const	0
	local.set	25
	local.get	24
	local.get	25
	i32.ne  
	local.set	26
	local.get	26
	local.set	19
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	end_block                               # label39:
	local.get	19
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	block   	
	local.get	29
	i32.eqz
	br_if   	0                               # 0: down to label40
# %bb.4:                                #   in Loop: Header=BB12_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB12_1 Depth=1
	local.get	4
	i32.load	12
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.add 
	local.set	32
	local.get	4
	local.get	32
	i32.store	12
	local.get	4
	i32.load	8
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	local.get	4
	local.get	35
	i32.store	8
	br      	1                               # 1: up to label38
.LBB12_6:
	end_block                               # label40:
	end_loop
	local.get	4
	i32.load	12
	local.set	36
	local.get	36
	i32.load8_u	0
	local.set	37
	i32.const	255
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	local.get	4
	i32.load	8
	local.set	40
	local.get	40
	i32.load8_u	0
	local.set	41
	i32.const	255
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	local.get	39
	local.get	43
	i32.sub 
	local.set	44
	local.get	44
	return
	end_function
                                        # -- End function
	.section	.text.strlen,"",@
	.hidden	strlen                          # -- Begin function strlen
	.globl	strlen
	.type	strlen,@function
strlen:                                 # @strlen
	.functype	strlen (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label42:
	local.get	3
	i32.load	12
	local.set	5
	local.get	5
	i32.load8_u	0
	local.set	6
	i32.const	0
	local.set	7
	i32.const	255
	local.set	8
	local.get	6
	local.get	8
	i32.and 
	local.set	9
	i32.const	255
	local.set	10
	local.get	7
	local.get	10
	i32.and 
	local.set	11
	local.get	9
	local.get	11
	i32.ne  
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	local.get	14
	i32.eqz
	br_if   	1                               # 1: down to label41
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	local.get	3
	i32.load	12
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.add 
	local.set	17
	local.get	3
	local.get	17
	i32.store	12
	br      	0                               # 0: up to label42
.LBB13_4:
	end_loop
	end_block                               # label41:
	local.get	3
	i32.load	12
	local.set	18
	local.get	3
	i32.load	8
	local.set	19
	local.get	18
	local.get	19
	i32.sub 
	local.set	20
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.strncmp,"",@
	.hidden	strncmp                         # -- Begin function strncmp
	.globl	strncmp
	.type	strncmp,@function
strncmp:                                # @strncmp
	.functype	strncmp (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	24
	local.get	5
	local.get	1
	i32.store	20
	local.get	5
	local.get	2
	i32.store	16
	local.get	5
	i32.load	24
	local.set	6
	local.get	5
	local.get	6
	i32.store	12
	local.get	5
	i32.load	20
	local.set	7
	local.get	5
	local.get	7
	i32.store	8
	local.get	5
	i32.load	16
	local.set	8
	i32.const	-1
	local.set	9
	local.get	8
	local.get	9
	i32.add 
	local.set	10
	local.get	5
	local.get	10
	i32.store	16
	block   	
	block   	
	local.get	8
	br_if   	0                               # 0: down to label44
# %bb.1:
	i32.const	0
	local.set	11
	local.get	5
	local.get	11
	i32.store	28
	br      	1                               # 1: down to label43
.LBB14_2:
	end_block                               # label44:
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label45:
	local.get	5
	i32.load	12
	local.set	12
	local.get	12
	i32.load8_u	0
	local.set	13
	i32.const	255
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.set	17
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label46
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	local.get	5
	i32.load	8
	local.set	18
	local.get	18
	i32.load8_u	0
	local.set	19
	i32.const	255
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.set	17
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label46
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	local.get	5
	i32.load	16
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.set	17
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label46
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	local.get	5
	i32.load	12
	local.set	25
	local.get	25
	i32.load8_u	0
	local.set	26
	i32.const	255
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	5
	i32.load	8
	local.set	29
	local.get	29
	i32.load8_u	0
	local.set	30
	i32.const	255
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	local.get	28
	local.get	32
	i32.eq  
	local.set	33
	local.get	33
	local.set	17
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	end_block                               # label46:
	local.get	17
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	block   	
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label47
# %bb.8:                                #   in Loop: Header=BB14_3 Depth=1
# %bb.9:                                #   in Loop: Header=BB14_3 Depth=1
	local.get	5
	i32.load	12
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.add 
	local.set	39
	local.get	5
	local.get	39
	i32.store	12
	local.get	5
	i32.load	8
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.add 
	local.set	42
	local.get	5
	local.get	42
	i32.store	8
	local.get	5
	i32.load	16
	local.set	43
	i32.const	-1
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	5
	local.get	45
	i32.store	16
	br      	1                               # 1: up to label45
.LBB14_10:
	end_block                               # label47:
	end_loop
	local.get	5
	i32.load	12
	local.set	46
	local.get	46
	i32.load8_u	0
	local.set	47
	i32.const	255
	local.set	48
	local.get	47
	local.get	48
	i32.and 
	local.set	49
	local.get	5
	i32.load	8
	local.set	50
	local.get	50
	i32.load8_u	0
	local.set	51
	i32.const	255
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	local.get	49
	local.get	53
	i32.sub 
	local.set	54
	local.get	5
	local.get	54
	i32.store	28
.LBB14_11:
	end_block                               # label43:
	local.get	5
	i32.load	28
	local.set	55
	local.get	55
	return
	end_function
                                        # -- End function
	.section	.text.swab,"",@
	.hidden	swab                            # -- Begin function swab
	.globl	swab
	.type	swab,@function
swab:                                   # @swab
	.functype	swab (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	28
	local.set	6
	local.get	5
	local.get	6
	i32.store	16
	local.get	5
	i32.load	24
	local.set	7
	local.get	5
	local.get	7
	i32.store	12
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label49:
	local.get	5
	i32.load	20
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	12
	i32.eqz
	br_if   	1                               # 1: down to label48
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	local.get	5
	i32.load	16
	local.set	13
	local.get	13
	i32.load8_u	1
	local.set	14
	local.get	5
	i32.load	12
	local.set	15
	local.get	15
	local.get	14
	i32.store8	0
	local.get	5
	i32.load	16
	local.set	16
	local.get	16
	i32.load8_u	0
	local.set	17
	local.get	5
	i32.load	12
	local.set	18
	local.get	18
	local.get	17
	i32.store8	1
	local.get	5
	i32.load	12
	local.set	19
	i32.const	2
	local.set	20
	local.get	19
	local.get	20
	i32.add 
	local.set	21
	local.get	5
	local.get	21
	i32.store	12
	local.get	5
	i32.load	16
	local.set	22
	i32.const	2
	local.set	23
	local.get	22
	local.get	23
	i32.add 
	local.set	24
	local.get	5
	local.get	24
	i32.store	16
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	local.get	5
	i32.load	20
	local.set	25
	i32.const	2
	local.set	26
	local.get	25
	local.get	26
	i32.sub 
	local.set	27
	local.get	5
	local.get	27
	i32.store	20
	br      	0                               # 0: up to label49
.LBB15_4:
	end_loop
	end_block                               # label48:
	return
	end_function
                                        # -- End function
	.section	.text.isalpha,"",@
	.hidden	isalpha                         # -- Begin function isalpha
	.globl	isalpha
	.type	isalpha,@function
isalpha:                                # @isalpha
	.functype	isalpha (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.or  
	local.set	6
	i32.const	97
	local.set	7
	local.get	6
	local.get	7
	i32.sub 
	local.set	8
	i32.const	26
	local.set	9
	local.get	8
	local.get	9
	i32.lt_u
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	12
	return
	end_function
                                        # -- End function
	.section	.text.isascii,"",@
	.hidden	isascii                         # -- Begin function isascii
	.globl	isascii
	.type	isascii,@function
isascii:                                # @isascii
	.functype	isascii (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	-128
	local.set	5
	local.get	4
	local.get	5
	i32.and 
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.get	7
	i32.ne  
	local.set	8
	i32.const	-1
	local.set	9
	local.get	8
	local.get	9
	i32.xor 
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	12
	return
	end_function
                                        # -- End function
	.section	.text.isblank,"",@
	.hidden	isblank                         # -- Begin function isblank
	.globl	isblank
	.type	isblank,@function
isblank:                                # @isblank
	.functype	isblank (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.eq  
	local.set	6
	i32.const	1
	local.set	7
	i32.const	1
	local.set	8
	local.get	6
	local.get	8
	i32.and 
	local.set	9
	local.get	7
	local.set	10
	block   	
	local.get	9
	br_if   	0                               # 0: down to label50
# %bb.1:
	local.get	3
	i32.load	12
	local.set	11
	i32.const	9
	local.set	12
	local.get	11
	local.get	12
	i32.eq  
	local.set	13
	local.get	13
	local.set	10
.LBB18_2:
	end_block                               # label50:
	local.get	10
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	return
	end_function
                                        # -- End function
	.section	.text.iscntrl,"",@
	.hidden	iscntrl                         # -- Begin function iscntrl
	.globl	iscntrl
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
	.functype	iscntrl (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.lt_u
	local.set	6
	i32.const	1
	local.set	7
	i32.const	1
	local.set	8
	local.get	6
	local.get	8
	i32.and 
	local.set	9
	local.get	7
	local.set	10
	block   	
	local.get	9
	br_if   	0                               # 0: down to label51
# %bb.1:
	local.get	3
	i32.load	12
	local.set	11
	i32.const	127
	local.set	12
	local.get	11
	local.get	12
	i32.eq  
	local.set	13
	local.get	13
	local.set	10
.LBB19_2:
	end_block                               # label51:
	local.get	10
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	return
	end_function
                                        # -- End function
	.section	.text.isdigit,"",@
	.hidden	isdigit                         # -- Begin function isdigit
	.globl	isdigit
	.type	isdigit,@function
isdigit:                                # @isdigit
	.functype	isdigit (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	48
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	i32.const	10
	local.set	7
	local.get	6
	local.get	7
	i32.lt_u
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	10
	return
	end_function
                                        # -- End function
	.section	.text.isgraph,"",@
	.hidden	isgraph                         # -- Begin function isgraph
	.globl	isgraph
	.type	isgraph,@function
isgraph:                                # @isgraph
	.functype	isgraph (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	33
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	i32.const	94
	local.set	7
	local.get	6
	local.get	7
	i32.lt_u
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	10
	return
	end_function
                                        # -- End function
	.section	.text.islower,"",@
	.hidden	islower                         # -- Begin function islower
	.globl	islower
	.type	islower,@function
islower:                                # @islower
	.functype	islower (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	97
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	i32.const	26
	local.set	7
	local.get	6
	local.get	7
	i32.lt_u
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	10
	return
	end_function
                                        # -- End function
	.section	.text.isprint,"",@
	.hidden	isprint                         # -- Begin function isprint
	.globl	isprint
	.type	isprint,@function
isprint:                                # @isprint
	.functype	isprint (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	i32.const	95
	local.set	7
	local.get	6
	local.get	7
	i32.lt_u
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	10
	return
	end_function
                                        # -- End function
	.section	.text.isspace,"",@
	.hidden	isspace                         # -- Begin function isspace
	.globl	isspace
	.type	isspace,@function
isspace:                                # @isspace
	.functype	isspace (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.eq  
	local.set	6
	i32.const	1
	local.set	7
	i32.const	1
	local.set	8
	local.get	6
	local.get	8
	i32.and 
	local.set	9
	local.get	7
	local.set	10
	block   	
	local.get	9
	br_if   	0                               # 0: down to label52
# %bb.1:
	local.get	3
	i32.load	12
	local.set	11
	i32.const	9
	local.set	12
	local.get	11
	local.get	12
	i32.sub 
	local.set	13
	i32.const	5
	local.set	14
	local.get	13
	local.get	14
	i32.lt_u
	local.set	15
	local.get	15
	local.set	10
.LBB24_2:
	end_block                               # label52:
	local.get	10
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	18
	return
	end_function
                                        # -- End function
	.section	.text.isupper,"",@
	.hidden	isupper                         # -- Begin function isupper
	.globl	isupper
	.type	isupper,@function
isupper:                                # @isupper
	.functype	isupper (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	65
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	i32.const	26
	local.set	7
	local.get	6
	local.get	7
	i32.lt_u
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	10
	return
	end_function
                                        # -- End function
	.section	.text.iswcntrl,"",@
	.hidden	iswcntrl                        # -- Begin function iswcntrl
	.globl	iswcntrl
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
	.functype	iswcntrl (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.lt_u
	local.set	6
	i32.const	1
	local.set	7
	i32.const	1
	local.set	8
	local.get	6
	local.get	8
	i32.and 
	local.set	9
	local.get	7
	local.set	10
	block   	
	local.get	9
	br_if   	0                               # 0: down to label53
# %bb.1:
	local.get	3
	i32.load	12
	local.set	11
	i32.const	127
	local.set	12
	local.get	11
	local.get	12
	i32.sub 
	local.set	13
	i32.const	33
	local.set	14
	local.get	13
	local.get	14
	i32.lt_u
	local.set	15
	i32.const	1
	local.set	16
	i32.const	1
	local.set	17
	local.get	15
	local.get	17
	i32.and 
	local.set	18
	local.get	16
	local.set	10
	local.get	18
	br_if   	0                               # 0: down to label53
# %bb.2:
	local.get	3
	i32.load	12
	local.set	19
	i32.const	8232
	local.set	20
	local.get	19
	local.get	20
	i32.sub 
	local.set	21
	i32.const	2
	local.set	22
	local.get	21
	local.get	22
	i32.lt_u
	local.set	23
	i32.const	1
	local.set	24
	i32.const	1
	local.set	25
	local.get	23
	local.get	25
	i32.and 
	local.set	26
	local.get	24
	local.set	10
	local.get	26
	br_if   	0                               # 0: down to label53
# %bb.3:
	local.get	3
	i32.load	12
	local.set	27
	i32.const	65529
	local.set	28
	local.get	27
	local.get	28
	i32.sub 
	local.set	29
	i32.const	3
	local.set	30
	local.get	29
	local.get	30
	i32.lt_u
	local.set	31
	local.get	31
	local.set	10
.LBB26_4:
	end_block                               # label53:
	local.get	10
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	local.get	34
	return
	end_function
                                        # -- End function
	.section	.text.iswdigit,"",@
	.hidden	iswdigit                        # -- Begin function iswdigit
	.globl	iswdigit
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
	.functype	iswdigit (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	48
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	i32.const	10
	local.set	7
	local.get	6
	local.get	7
	i32.lt_u
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	10
	return
	end_function
                                        # -- End function
	.section	.text.iswprint,"",@
	.hidden	iswprint                        # -- Begin function iswprint
	.globl	iswprint
	.type	iswprint,@function
iswprint:                               # @iswprint
	.functype	iswprint (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	8
	local.get	3
	i32.load	8
	local.set	4
	i32.const	255
	local.set	5
	local.get	4
	local.get	5
	i32.lt_u
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	block   	
	block   	
	local.get	8
	i32.eqz
	br_if   	0                               # 0: down to label55
# %bb.1:
	local.get	3
	i32.load	8
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.add 
	local.set	11
	i32.const	127
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	i32.const	33
	local.set	14
	local.get	13
	local.get	14
	i32.ge_s
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	3
	local.get	17
	i32.store	12
	br      	1                               # 1: down to label54
.LBB28_2:
	end_block                               # label55:
	local.get	3
	i32.load	8
	local.set	18
	i32.const	8232
	local.set	19
	local.get	18
	local.get	19
	i32.lt_u
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	block   	
	block   	
	local.get	22
	br_if   	0                               # 0: down to label57
# %bb.3:
	local.get	3
	i32.load	8
	local.set	23
	i32.const	8234
	local.set	24
	local.get	23
	local.get	24
	i32.sub 
	local.set	25
	i32.const	47062
	local.set	26
	local.get	25
	local.get	26
	i32.lt_u
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	29
	br_if   	0                               # 0: down to label57
# %bb.4:
	local.get	3
	i32.load	8
	local.set	30
	i32.const	57344
	local.set	31
	local.get	30
	local.get	31
	i32.sub 
	local.set	32
	i32.const	8185
	local.set	33
	local.get	32
	local.get	33
	i32.lt_u
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	local.get	36
	i32.eqz
	br_if   	1                               # 1: down to label56
.LBB28_5:
	end_block                               # label57:
	i32.const	1
	local.set	37
	local.get	3
	local.get	37
	i32.store	12
	br      	1                               # 1: down to label54
.LBB28_6:
	end_block                               # label56:
	local.get	3
	i32.load	8
	local.set	38
	i32.const	65532
	local.set	39
	local.get	38
	local.get	39
	i32.sub 
	local.set	40
	i32.const	1048579
	local.set	41
	local.get	40
	local.get	41
	i32.gt_u
	local.set	42
	i32.const	1
	local.set	43
	local.get	42
	local.get	43
	i32.and 
	local.set	44
	block   	
	block   	
	local.get	44
	br_if   	0                               # 0: down to label59
# %bb.7:
	local.get	3
	i32.load	8
	local.set	45
	i32.const	65534
	local.set	46
	local.get	45
	local.get	46
	i32.and 
	local.set	47
	i32.const	65534
	local.set	48
	local.get	47
	local.get	48
	i32.eq  
	local.set	49
	i32.const	1
	local.set	50
	local.get	49
	local.get	50
	i32.and 
	local.set	51
	local.get	51
	i32.eqz
	br_if   	1                               # 1: down to label58
.LBB28_8:
	end_block                               # label59:
	i32.const	0
	local.set	52
	local.get	3
	local.get	52
	i32.store	12
	br      	1                               # 1: down to label54
.LBB28_9:
	end_block                               # label58:
	i32.const	1
	local.set	53
	local.get	3
	local.get	53
	i32.store	12
.LBB28_10:
	end_block                               # label54:
	local.get	3
	i32.load	12
	local.set	54
	local.get	54
	return
	end_function
                                        # -- End function
	.section	.text.iswxdigit,"",@
	.hidden	iswxdigit                       # -- Begin function iswxdigit
	.globl	iswxdigit
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
	.functype	iswxdigit (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	48
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	i32.const	10
	local.set	7
	local.get	6
	local.get	7
	i32.lt_u
	local.set	8
	i32.const	1
	local.set	9
	i32.const	1
	local.set	10
	local.get	8
	local.get	10
	i32.and 
	local.set	11
	local.get	9
	local.set	12
	block   	
	local.get	11
	br_if   	0                               # 0: down to label60
# %bb.1:
	local.get	3
	i32.load	12
	local.set	13
	i32.const	32
	local.set	14
	local.get	13
	local.get	14
	i32.or  
	local.set	15
	i32.const	97
	local.set	16
	local.get	15
	local.get	16
	i32.sub 
	local.set	17
	i32.const	6
	local.set	18
	local.get	17
	local.get	18
	i32.lt_u
	local.set	19
	local.get	19
	local.set	12
.LBB29_2:
	end_block                               # label60:
	local.get	12
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	22
	return
	end_function
                                        # -- End function
	.section	.text.toascii,"",@
	.hidden	toascii                         # -- Begin function toascii
	.globl	toascii
	.type	toascii,@function
toascii:                                # @toascii
	.functype	toascii (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	127
	local.set	5
	local.get	4
	local.get	5
	i32.and 
	local.set	6
	local.get	6
	return
	end_function
                                        # -- End function
	.section	.text.fdim,"",@
	.hidden	fdim                            # -- Begin function fdim
	.globl	fdim
	.type	fdim,@function
fdim:                                   # @fdim
	.functype	fdim (f64, f64) -> (f64)
	.local  	i32, i32, i32, f64, i64, i64, i64, i64, i32, i32, i32, f64, f64, i64, i64, i64, i64, i32, i32, i32, f64, f64, f64, i32, i32, i32, f64, f64, f64, f64, i32, f64, f64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f64.store	16
	local.get	4
	local.get	1
	f64.store	8
	local.get	4
	f64.load	16
	local.set	5
	local.get	5
	i64.reinterpret_f64
	local.set	6
	i64.const	9223372036854775807
	local.set	7
	local.get	6
	local.get	7
	i64.and 
	local.set	8
	i64.const	9218868437227405312
	local.set	9
	local.get	8
	local.get	9
	i64.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label62
# %bb.1:
	local.get	4
	f64.load	16
	local.set	13
	local.get	4
	local.get	13
	f64.store	24
	br      	1                               # 1: down to label61
.LBB31_2:
	end_block                               # label62:
	local.get	4
	f64.load	8
	local.set	14
	local.get	14
	i64.reinterpret_f64
	local.set	15
	i64.const	9223372036854775807
	local.set	16
	local.get	15
	local.get	16
	i64.and 
	local.set	17
	i64.const	9218868437227405312
	local.set	18
	local.get	17
	local.get	18
	i64.gt_s
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label63
# %bb.3:
	local.get	4
	f64.load	8
	local.set	22
	local.get	4
	local.get	22
	f64.store	24
	br      	1                               # 1: down to label61
.LBB31_4:
	end_block                               # label63:
	local.get	4
	f64.load	16
	local.set	23
	local.get	4
	f64.load	8
	local.set	24
	local.get	23
	local.get	24
	f64.gt  
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	block   	
	block   	
	local.get	27
	i32.eqz
	br_if   	0                               # 0: down to label65
# %bb.5:
	local.get	4
	f64.load	16
	local.set	28
	local.get	4
	f64.load	8
	local.set	29
	local.get	28
	local.get	29
	f64.sub 
	local.set	30
	local.get	30
	local.set	31
	br      	1                               # 1: down to label64
.LBB31_6:
	end_block                               # label65:
	i32.const	0
	local.set	32
	local.get	32
	f64.convert_i32_s
	local.set	33
	local.get	33
	local.set	31
.LBB31_7:
	end_block                               # label64:
	local.get	31
	local.set	34
	local.get	4
	local.get	34
	f64.store	24
.LBB31_8:
	end_block                               # label61:
	local.get	4
	f64.load	24
	local.set	35
	local.get	35
	return
	end_function
                                        # -- End function
	.section	.text.fdimf,"",@
	.hidden	fdimf                           # -- Begin function fdimf
	.globl	fdimf
	.type	fdimf,@function
fdimf:                                  # @fdimf
	.functype	fdimf (f32, f32) -> (f32)
	.local  	i32, i32, i32, f32, i32, i32, i32, i32, i32, i32, i32, f32, f32, i32, i32, i32, i32, i32, i32, i32, f32, f32, f32, i32, i32, i32, f32, f32, f32, f32, i32, f32, f32, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f32.store	8
	local.get	4
	local.get	1
	f32.store	4
	local.get	4
	f32.load	8
	local.set	5
	local.get	5
	i32.reinterpret_f32
	local.set	6
	i32.const	2147483647
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	i32.const	2139095040
	local.set	9
	local.get	8
	local.get	9
	i32.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label67
# %bb.1:
	local.get	4
	f32.load	8
	local.set	13
	local.get	4
	local.get	13
	f32.store	12
	br      	1                               # 1: down to label66
.LBB32_2:
	end_block                               # label67:
	local.get	4
	f32.load	4
	local.set	14
	local.get	14
	i32.reinterpret_f32
	local.set	15
	i32.const	2147483647
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	i32.const	2139095040
	local.set	18
	local.get	17
	local.get	18
	i32.gt_s
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label68
# %bb.3:
	local.get	4
	f32.load	4
	local.set	22
	local.get	4
	local.get	22
	f32.store	12
	br      	1                               # 1: down to label66
.LBB32_4:
	end_block                               # label68:
	local.get	4
	f32.load	8
	local.set	23
	local.get	4
	f32.load	4
	local.set	24
	local.get	23
	local.get	24
	f32.gt  
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	block   	
	block   	
	local.get	27
	i32.eqz
	br_if   	0                               # 0: down to label70
# %bb.5:
	local.get	4
	f32.load	8
	local.set	28
	local.get	4
	f32.load	4
	local.set	29
	local.get	28
	local.get	29
	f32.sub 
	local.set	30
	local.get	30
	local.set	31
	br      	1                               # 1: down to label69
.LBB32_6:
	end_block                               # label70:
	i32.const	0
	local.set	32
	local.get	32
	f32.convert_i32_s
	local.set	33
	local.get	33
	local.set	31
.LBB32_7:
	end_block                               # label69:
	local.get	31
	local.set	34
	local.get	4
	local.get	34
	f32.store	12
.LBB32_8:
	end_block                               # label66:
	local.get	4
	f32.load	12
	local.set	35
	local.get	35
	return
	end_function
                                        # -- End function
	.section	.text.fmax,"",@
	.hidden	fmax                            # -- Begin function fmax
	.globl	fmax
	.type	fmax,@function
fmax:                                   # @fmax
	.functype	fmax (f64, f64) -> (f64)
	.local  	i32, i32, i32, f64, i64, i64, i64, i64, i32, i32, i32, f64, f64, i64, i64, i64, i64, i32, i32, i32, f64, f64, i64, i64, i32, i32, i32, f64, i64, i64, i32, i32, i32, i32, i32, i32, f64, i64, i64, i32, i32, i32, f64, f64, f64, f64, f64, f64, i32, i32, i32, f64, f64, f64, f64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f64.store	16
	local.get	4
	local.get	1
	f64.store	8
	local.get	4
	f64.load	16
	local.set	5
	local.get	5
	i64.reinterpret_f64
	local.set	6
	i64.const	9223372036854775807
	local.set	7
	local.get	6
	local.get	7
	i64.and 
	local.set	8
	i64.const	9218868437227405312
	local.set	9
	local.get	8
	local.get	9
	i64.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label72
# %bb.1:
	local.get	4
	f64.load	8
	local.set	13
	local.get	4
	local.get	13
	f64.store	24
	br      	1                               # 1: down to label71
.LBB33_2:
	end_block                               # label72:
	local.get	4
	f64.load	8
	local.set	14
	local.get	14
	i64.reinterpret_f64
	local.set	15
	i64.const	9223372036854775807
	local.set	16
	local.get	15
	local.get	16
	i64.and 
	local.set	17
	i64.const	9218868437227405312
	local.set	18
	local.get	17
	local.get	18
	i64.gt_s
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label73
# %bb.3:
	local.get	4
	f64.load	16
	local.set	22
	local.get	4
	local.get	22
	f64.store	24
	br      	1                               # 1: down to label71
.LBB33_4:
	end_block                               # label73:
	local.get	4
	f64.load	16
	local.set	23
	local.get	23
	i64.reinterpret_f64
	local.set	24
	i64.const	0
	local.set	25
	local.get	24
	local.get	25
	i64.lt_s
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	4
	f64.load	8
	local.set	29
	local.get	29
	i64.reinterpret_f64
	local.set	30
	i64.const	0
	local.set	31
	local.get	30
	local.get	31
	i64.lt_s
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	local.get	28
	local.get	34
	i32.ne  
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	block   	
	local.get	37
	i32.eqz
	br_if   	0                               # 0: down to label74
# %bb.5:
	local.get	4
	f64.load	16
	local.set	38
	local.get	38
	i64.reinterpret_f64
	local.set	39
	i64.const	0
	local.set	40
	local.get	39
	local.get	40
	i64.lt_s
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	block   	
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label76
# %bb.6:
	local.get	4
	f64.load	8
	local.set	44
	local.get	44
	local.set	45
	br      	1                               # 1: down to label75
.LBB33_7:
	end_block                               # label76:
	local.get	4
	f64.load	16
	local.set	46
	local.get	46
	local.set	45
.LBB33_8:
	end_block                               # label75:
	local.get	45
	local.set	47
	local.get	4
	local.get	47
	f64.store	24
	br      	1                               # 1: down to label71
.LBB33_9:
	end_block                               # label74:
	local.get	4
	f64.load	16
	local.set	48
	local.get	4
	f64.load	8
	local.set	49
	local.get	48
	local.get	49
	f64.lt  
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	block   	
	block   	
	local.get	52
	i32.eqz
	br_if   	0                               # 0: down to label78
# %bb.10:
	local.get	4
	f64.load	8
	local.set	53
	local.get	53
	local.set	54
	br      	1                               # 1: down to label77
.LBB33_11:
	end_block                               # label78:
	local.get	4
	f64.load	16
	local.set	55
	local.get	55
	local.set	54
.LBB33_12:
	end_block                               # label77:
	local.get	54
	local.set	56
	local.get	4
	local.get	56
	f64.store	24
.LBB33_13:
	end_block                               # label71:
	local.get	4
	f64.load	24
	local.set	57
	local.get	57
	return
	end_function
                                        # -- End function
	.section	.text.fmaxf,"",@
	.hidden	fmaxf                           # -- Begin function fmaxf
	.globl	fmaxf
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
	.functype	fmaxf (f32, f32) -> (f32)
	.local  	i32, i32, i32, f32, i32, i32, i32, i32, i32, i32, i32, f32, f32, i32, i32, i32, i32, i32, i32, i32, f32, f32, i32, i32, i32, i32, i32, f32, i32, i32, i32, i32, i32, i32, i32, i32, f32, i32, i32, i32, i32, i32, f32, f32, f32, f32, f32, f32, i32, i32, i32, f32, f32, f32, f32, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f32.store	8
	local.get	4
	local.get	1
	f32.store	4
	local.get	4
	f32.load	8
	local.set	5
	local.get	5
	i32.reinterpret_f32
	local.set	6
	i32.const	2147483647
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	i32.const	2139095040
	local.set	9
	local.get	8
	local.get	9
	i32.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label80
# %bb.1:
	local.get	4
	f32.load	4
	local.set	13
	local.get	4
	local.get	13
	f32.store	12
	br      	1                               # 1: down to label79
.LBB34_2:
	end_block                               # label80:
	local.get	4
	f32.load	4
	local.set	14
	local.get	14
	i32.reinterpret_f32
	local.set	15
	i32.const	2147483647
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	i32.const	2139095040
	local.set	18
	local.get	17
	local.get	18
	i32.gt_s
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label81
# %bb.3:
	local.get	4
	f32.load	8
	local.set	22
	local.get	4
	local.get	22
	f32.store	12
	br      	1                               # 1: down to label79
.LBB34_4:
	end_block                               # label81:
	local.get	4
	f32.load	8
	local.set	23
	local.get	23
	i32.reinterpret_f32
	local.set	24
	i32.const	0
	local.set	25
	local.get	24
	local.get	25
	i32.lt_s
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	4
	f32.load	4
	local.set	29
	local.get	29
	i32.reinterpret_f32
	local.set	30
	i32.const	0
	local.set	31
	local.get	30
	local.get	31
	i32.lt_s
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	local.get	28
	local.get	34
	i32.ne  
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	block   	
	local.get	37
	i32.eqz
	br_if   	0                               # 0: down to label82
# %bb.5:
	local.get	4
	f32.load	8
	local.set	38
	local.get	38
	i32.reinterpret_f32
	local.set	39
	i32.const	0
	local.set	40
	local.get	39
	local.get	40
	i32.lt_s
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	block   	
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label84
# %bb.6:
	local.get	4
	f32.load	4
	local.set	44
	local.get	44
	local.set	45
	br      	1                               # 1: down to label83
.LBB34_7:
	end_block                               # label84:
	local.get	4
	f32.load	8
	local.set	46
	local.get	46
	local.set	45
.LBB34_8:
	end_block                               # label83:
	local.get	45
	local.set	47
	local.get	4
	local.get	47
	f32.store	12
	br      	1                               # 1: down to label79
.LBB34_9:
	end_block                               # label82:
	local.get	4
	f32.load	8
	local.set	48
	local.get	4
	f32.load	4
	local.set	49
	local.get	48
	local.get	49
	f32.lt  
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	block   	
	block   	
	local.get	52
	i32.eqz
	br_if   	0                               # 0: down to label86
# %bb.10:
	local.get	4
	f32.load	4
	local.set	53
	local.get	53
	local.set	54
	br      	1                               # 1: down to label85
.LBB34_11:
	end_block                               # label86:
	local.get	4
	f32.load	8
	local.set	55
	local.get	55
	local.set	54
.LBB34_12:
	end_block                               # label85:
	local.get	54
	local.set	56
	local.get	4
	local.get	56
	f32.store	12
.LBB34_13:
	end_block                               # label79:
	local.get	4
	f32.load	12
	local.set	57
	local.get	57
	return
	end_function
                                        # -- End function
	.section	.text.fmaxl,"",@
	.hidden	fmaxl                           # -- Begin function fmaxl
	.globl	fmaxl
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
	.functype	fmaxl (i32, i64, i64, i64, i64) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	5
	i32.const	48
	local.set	6
	local.get	5
	local.get	6
	i32.sub 
	local.set	7
	local.get	7
	global.set	__stack_pointer
	local.get	7
	local.get	1
	i64.store	16
	local.get	7
	local.get	2
	i64.store	24
	local.get	7
	local.get	4
	i64.store	8
	local.get	7
	local.get	3
	i64.store	0
	local.get	7
	i64.load	24
	local.set	8
	local.get	7
	i64.load	16
	local.set	9
	i64.const	0
	local.set	10
	local.get	9
	local.get	10
	i64.ne  
	local.set	11
	i64.const	9223372036854775807
	local.set	12
	local.get	8
	local.get	12
	i64.and 
	local.set	13
	i64.const	9223090561878065152
	local.set	14
	local.get	13
	local.get	14
	i64.eq  
	local.set	15
	local.get	13
	local.get	14
	i64.gt_s
	local.set	16
	local.get	11
	local.get	16
	local.get	15
	i32.select
	local.set	17
	i32.const	1
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	block   	
	block   	
	local.get	19
	i32.eqz
	br_if   	0                               # 0: down to label88
# %bb.1:
	local.get	7
	i64.load	0
	local.set	20
	local.get	7
	i64.load	8
	local.set	21
	local.get	7
	local.get	21
	i64.store	40
	local.get	7
	local.get	20
	i64.store	32
	br      	1                               # 1: down to label87
.LBB35_2:
	end_block                               # label88:
	local.get	7
	i64.load	8
	local.set	22
	local.get	7
	i64.load	0
	local.set	23
	i64.const	0
	local.set	24
	local.get	23
	local.get	24
	i64.ne  
	local.set	25
	i64.const	9223372036854775807
	local.set	26
	local.get	22
	local.get	26
	i64.and 
	local.set	27
	i64.const	9223090561878065152
	local.set	28
	local.get	27
	local.get	28
	i64.eq  
	local.set	29
	local.get	27
	local.get	28
	i64.gt_s
	local.set	30
	local.get	25
	local.get	30
	local.get	29
	i32.select
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.and 
	local.set	33
	block   	
	local.get	33
	i32.eqz
	br_if   	0                               # 0: down to label89
# %bb.3:
	local.get	7
	i64.load	16
	local.set	34
	local.get	7
	i64.load	24
	local.set	35
	local.get	7
	local.get	35
	i64.store	40
	local.get	7
	local.get	34
	i64.store	32
	br      	1                               # 1: down to label87
.LBB35_4:
	end_block                               # label89:
	local.get	7
	i64.load	24
	local.set	36
	i64.const	63
	local.set	37
	local.get	36
	local.get	37
	i64.shr_u
	local.set	38
	local.get	38
	i32.wrap_i64
	local.set	39
	local.get	7
	i64.load	8
	local.set	40
	local.get	40
	local.get	37
	i64.shr_u
	local.set	41
	local.get	41
	i32.wrap_i64
	local.set	42
	i32.const	1
	local.set	43
	local.get	42
	local.get	43
	i32.and 
	local.set	44
	local.get	39
	local.get	44
	i32.ne  
	local.set	45
	i32.const	1
	local.set	46
	local.get	45
	local.get	46
	i32.and 
	local.set	47
	block   	
	local.get	47
	i32.eqz
	br_if   	0                               # 0: down to label90
# %bb.5:
	local.get	7
	i64.load	24
	local.set	48
	i64.const	63
	local.set	49
	local.get	48
	local.get	49
	i64.shr_u
	local.set	50
	local.get	50
	i32.wrap_i64
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	block   	
	block   	
	local.get	53
	i32.eqz
	br_if   	0                               # 0: down to label92
# %bb.6:
	local.get	7
	i64.load	8
	local.set	54
	local.get	7
	i64.load	0
	local.set	55
	local.get	55
	local.set	56
	local.get	54
	local.set	57
	br      	1                               # 1: down to label91
.LBB35_7:
	end_block                               # label92:
	local.get	7
	i64.load	24
	local.set	58
	local.get	7
	i64.load	16
	local.set	59
	local.get	59
	local.set	56
	local.get	58
	local.set	57
.LBB35_8:
	end_block                               # label91:
	local.get	57
	local.set	60
	local.get	56
	local.set	61
	local.get	7
	local.get	61
	i64.store	32
	local.get	7
	local.get	60
	i64.store	40
	br      	1                               # 1: down to label87
.LBB35_9:
	end_block                               # label90:
	local.get	7
	i64.load	24
	local.set	62
	local.get	7
	i64.load	16
	local.set	63
	local.get	7
	i64.load	8
	local.set	64
	local.get	7
	i64.load	0
	local.set	65
	local.get	63
	local.get	62
	local.get	65
	local.get	64
	call	__lttf2
	local.set	66
	i32.const	0
	local.set	67
	local.get	66
	local.get	67
	i32.lt_s
	local.set	68
	i32.const	1
	local.set	69
	local.get	68
	local.get	69
	i32.and 
	local.set	70
	block   	
	block   	
	local.get	70
	i32.eqz
	br_if   	0                               # 0: down to label94
# %bb.10:
	local.get	7
	i64.load	8
	local.set	71
	local.get	7
	i64.load	0
	local.set	72
	local.get	72
	local.set	73
	local.get	71
	local.set	74
	br      	1                               # 1: down to label93
.LBB35_11:
	end_block                               # label94:
	local.get	7
	i64.load	24
	local.set	75
	local.get	7
	i64.load	16
	local.set	76
	local.get	76
	local.set	73
	local.get	75
	local.set	74
.LBB35_12:
	end_block                               # label93:
	local.get	74
	local.set	77
	local.get	73
	local.set	78
	local.get	7
	local.get	78
	i64.store	32
	local.get	7
	local.get	77
	i64.store	40
.LBB35_13:
	end_block                               # label87:
	local.get	7
	i64.load	32
	local.set	79
	local.get	7
	i64.load	40
	local.set	80
	local.get	0
	local.get	80
	i64.store	8
	local.get	0
	local.get	79
	i64.store	0
	i32.const	48
	local.set	81
	local.get	7
	local.get	81
	i32.add 
	local.set	82
	local.get	82
	global.set	__stack_pointer
	return
	end_function
                                        # -- End function
	.section	.text.fmin,"",@
	.hidden	fmin                            # -- Begin function fmin
	.globl	fmin
	.type	fmin,@function
fmin:                                   # @fmin
	.functype	fmin (f64, f64) -> (f64)
	.local  	i32, i32, i32, f64, i64, i64, i64, i64, i32, i32, i32, f64, f64, i64, i64, i64, i64, i32, i32, i32, f64, f64, i64, i64, i32, i32, i32, f64, i64, i64, i32, i32, i32, i32, i32, i32, f64, i64, i64, i32, i32, i32, f64, f64, f64, f64, f64, f64, i32, i32, i32, f64, f64, f64, f64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f64.store	16
	local.get	4
	local.get	1
	f64.store	8
	local.get	4
	f64.load	16
	local.set	5
	local.get	5
	i64.reinterpret_f64
	local.set	6
	i64.const	9223372036854775807
	local.set	7
	local.get	6
	local.get	7
	i64.and 
	local.set	8
	i64.const	9218868437227405312
	local.set	9
	local.get	8
	local.get	9
	i64.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label96
# %bb.1:
	local.get	4
	f64.load	8
	local.set	13
	local.get	4
	local.get	13
	f64.store	24
	br      	1                               # 1: down to label95
.LBB36_2:
	end_block                               # label96:
	local.get	4
	f64.load	8
	local.set	14
	local.get	14
	i64.reinterpret_f64
	local.set	15
	i64.const	9223372036854775807
	local.set	16
	local.get	15
	local.get	16
	i64.and 
	local.set	17
	i64.const	9218868437227405312
	local.set	18
	local.get	17
	local.get	18
	i64.gt_s
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label97
# %bb.3:
	local.get	4
	f64.load	16
	local.set	22
	local.get	4
	local.get	22
	f64.store	24
	br      	1                               # 1: down to label95
.LBB36_4:
	end_block                               # label97:
	local.get	4
	f64.load	16
	local.set	23
	local.get	23
	i64.reinterpret_f64
	local.set	24
	i64.const	0
	local.set	25
	local.get	24
	local.get	25
	i64.lt_s
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	4
	f64.load	8
	local.set	29
	local.get	29
	i64.reinterpret_f64
	local.set	30
	i64.const	0
	local.set	31
	local.get	30
	local.get	31
	i64.lt_s
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	local.get	28
	local.get	34
	i32.ne  
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	block   	
	local.get	37
	i32.eqz
	br_if   	0                               # 0: down to label98
# %bb.5:
	local.get	4
	f64.load	16
	local.set	38
	local.get	38
	i64.reinterpret_f64
	local.set	39
	i64.const	0
	local.set	40
	local.get	39
	local.get	40
	i64.lt_s
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	block   	
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label100
# %bb.6:
	local.get	4
	f64.load	16
	local.set	44
	local.get	44
	local.set	45
	br      	1                               # 1: down to label99
.LBB36_7:
	end_block                               # label100:
	local.get	4
	f64.load	8
	local.set	46
	local.get	46
	local.set	45
.LBB36_8:
	end_block                               # label99:
	local.get	45
	local.set	47
	local.get	4
	local.get	47
	f64.store	24
	br      	1                               # 1: down to label95
.LBB36_9:
	end_block                               # label98:
	local.get	4
	f64.load	16
	local.set	48
	local.get	4
	f64.load	8
	local.set	49
	local.get	48
	local.get	49
	f64.lt  
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	block   	
	block   	
	local.get	52
	i32.eqz
	br_if   	0                               # 0: down to label102
# %bb.10:
	local.get	4
	f64.load	16
	local.set	53
	local.get	53
	local.set	54
	br      	1                               # 1: down to label101
.LBB36_11:
	end_block                               # label102:
	local.get	4
	f64.load	8
	local.set	55
	local.get	55
	local.set	54
.LBB36_12:
	end_block                               # label101:
	local.get	54
	local.set	56
	local.get	4
	local.get	56
	f64.store	24
.LBB36_13:
	end_block                               # label95:
	local.get	4
	f64.load	24
	local.set	57
	local.get	57
	return
	end_function
                                        # -- End function
	.section	.text.fminf,"",@
	.hidden	fminf                           # -- Begin function fminf
	.globl	fminf
	.type	fminf,@function
fminf:                                  # @fminf
	.functype	fminf (f32, f32) -> (f32)
	.local  	i32, i32, i32, f32, i32, i32, i32, i32, i32, i32, i32, f32, f32, i32, i32, i32, i32, i32, i32, i32, f32, f32, i32, i32, i32, i32, i32, f32, i32, i32, i32, i32, i32, i32, i32, i32, f32, i32, i32, i32, i32, i32, f32, f32, f32, f32, f32, f32, i32, i32, i32, f32, f32, f32, f32, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f32.store	8
	local.get	4
	local.get	1
	f32.store	4
	local.get	4
	f32.load	8
	local.set	5
	local.get	5
	i32.reinterpret_f32
	local.set	6
	i32.const	2147483647
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	i32.const	2139095040
	local.set	9
	local.get	8
	local.get	9
	i32.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label104
# %bb.1:
	local.get	4
	f32.load	4
	local.set	13
	local.get	4
	local.get	13
	f32.store	12
	br      	1                               # 1: down to label103
.LBB37_2:
	end_block                               # label104:
	local.get	4
	f32.load	4
	local.set	14
	local.get	14
	i32.reinterpret_f32
	local.set	15
	i32.const	2147483647
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	i32.const	2139095040
	local.set	18
	local.get	17
	local.get	18
	i32.gt_s
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label105
# %bb.3:
	local.get	4
	f32.load	8
	local.set	22
	local.get	4
	local.get	22
	f32.store	12
	br      	1                               # 1: down to label103
.LBB37_4:
	end_block                               # label105:
	local.get	4
	f32.load	8
	local.set	23
	local.get	23
	i32.reinterpret_f32
	local.set	24
	i32.const	0
	local.set	25
	local.get	24
	local.get	25
	i32.lt_s
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	4
	f32.load	4
	local.set	29
	local.get	29
	i32.reinterpret_f32
	local.set	30
	i32.const	0
	local.set	31
	local.get	30
	local.get	31
	i32.lt_s
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	local.get	28
	local.get	34
	i32.ne  
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	block   	
	local.get	37
	i32.eqz
	br_if   	0                               # 0: down to label106
# %bb.5:
	local.get	4
	f32.load	8
	local.set	38
	local.get	38
	i32.reinterpret_f32
	local.set	39
	i32.const	0
	local.set	40
	local.get	39
	local.get	40
	i32.lt_s
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	block   	
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label108
# %bb.6:
	local.get	4
	f32.load	8
	local.set	44
	local.get	44
	local.set	45
	br      	1                               # 1: down to label107
.LBB37_7:
	end_block                               # label108:
	local.get	4
	f32.load	4
	local.set	46
	local.get	46
	local.set	45
.LBB37_8:
	end_block                               # label107:
	local.get	45
	local.set	47
	local.get	4
	local.get	47
	f32.store	12
	br      	1                               # 1: down to label103
.LBB37_9:
	end_block                               # label106:
	local.get	4
	f32.load	8
	local.set	48
	local.get	4
	f32.load	4
	local.set	49
	local.get	48
	local.get	49
	f32.lt  
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	block   	
	block   	
	local.get	52
	i32.eqz
	br_if   	0                               # 0: down to label110
# %bb.10:
	local.get	4
	f32.load	8
	local.set	53
	local.get	53
	local.set	54
	br      	1                               # 1: down to label109
.LBB37_11:
	end_block                               # label110:
	local.get	4
	f32.load	4
	local.set	55
	local.get	55
	local.set	54
.LBB37_12:
	end_block                               # label109:
	local.get	54
	local.set	56
	local.get	4
	local.get	56
	f32.store	12
.LBB37_13:
	end_block                               # label103:
	local.get	4
	f32.load	12
	local.set	57
	local.get	57
	return
	end_function
                                        # -- End function
	.section	.text.fminl,"",@
	.hidden	fminl                           # -- Begin function fminl
	.globl	fminl
	.type	fminl,@function
fminl:                                  # @fminl
	.functype	fminl (i32, i64, i64, i64, i64) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	5
	i32.const	48
	local.set	6
	local.get	5
	local.get	6
	i32.sub 
	local.set	7
	local.get	7
	global.set	__stack_pointer
	local.get	7
	local.get	1
	i64.store	16
	local.get	7
	local.get	2
	i64.store	24
	local.get	7
	local.get	4
	i64.store	8
	local.get	7
	local.get	3
	i64.store	0
	local.get	7
	i64.load	24
	local.set	8
	local.get	7
	i64.load	16
	local.set	9
	i64.const	0
	local.set	10
	local.get	9
	local.get	10
	i64.ne  
	local.set	11
	i64.const	9223372036854775807
	local.set	12
	local.get	8
	local.get	12
	i64.and 
	local.set	13
	i64.const	9223090561878065152
	local.set	14
	local.get	13
	local.get	14
	i64.eq  
	local.set	15
	local.get	13
	local.get	14
	i64.gt_s
	local.set	16
	local.get	11
	local.get	16
	local.get	15
	i32.select
	local.set	17
	i32.const	1
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	block   	
	block   	
	local.get	19
	i32.eqz
	br_if   	0                               # 0: down to label112
# %bb.1:
	local.get	7
	i64.load	0
	local.set	20
	local.get	7
	i64.load	8
	local.set	21
	local.get	7
	local.get	21
	i64.store	40
	local.get	7
	local.get	20
	i64.store	32
	br      	1                               # 1: down to label111
.LBB38_2:
	end_block                               # label112:
	local.get	7
	i64.load	8
	local.set	22
	local.get	7
	i64.load	0
	local.set	23
	i64.const	0
	local.set	24
	local.get	23
	local.get	24
	i64.ne  
	local.set	25
	i64.const	9223372036854775807
	local.set	26
	local.get	22
	local.get	26
	i64.and 
	local.set	27
	i64.const	9223090561878065152
	local.set	28
	local.get	27
	local.get	28
	i64.eq  
	local.set	29
	local.get	27
	local.get	28
	i64.gt_s
	local.set	30
	local.get	25
	local.get	30
	local.get	29
	i32.select
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.and 
	local.set	33
	block   	
	local.get	33
	i32.eqz
	br_if   	0                               # 0: down to label113
# %bb.3:
	local.get	7
	i64.load	16
	local.set	34
	local.get	7
	i64.load	24
	local.set	35
	local.get	7
	local.get	35
	i64.store	40
	local.get	7
	local.get	34
	i64.store	32
	br      	1                               # 1: down to label111
.LBB38_4:
	end_block                               # label113:
	local.get	7
	i64.load	24
	local.set	36
	i64.const	63
	local.set	37
	local.get	36
	local.get	37
	i64.shr_u
	local.set	38
	local.get	38
	i32.wrap_i64
	local.set	39
	local.get	7
	i64.load	8
	local.set	40
	local.get	40
	local.get	37
	i64.shr_u
	local.set	41
	local.get	41
	i32.wrap_i64
	local.set	42
	i32.const	1
	local.set	43
	local.get	42
	local.get	43
	i32.and 
	local.set	44
	local.get	39
	local.get	44
	i32.ne  
	local.set	45
	i32.const	1
	local.set	46
	local.get	45
	local.get	46
	i32.and 
	local.set	47
	block   	
	local.get	47
	i32.eqz
	br_if   	0                               # 0: down to label114
# %bb.5:
	local.get	7
	i64.load	24
	local.set	48
	i64.const	63
	local.set	49
	local.get	48
	local.get	49
	i64.shr_u
	local.set	50
	local.get	50
	i32.wrap_i64
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	block   	
	block   	
	local.get	53
	i32.eqz
	br_if   	0                               # 0: down to label116
# %bb.6:
	local.get	7
	i64.load	24
	local.set	54
	local.get	7
	i64.load	16
	local.set	55
	local.get	55
	local.set	56
	local.get	54
	local.set	57
	br      	1                               # 1: down to label115
.LBB38_7:
	end_block                               # label116:
	local.get	7
	i64.load	8
	local.set	58
	local.get	7
	i64.load	0
	local.set	59
	local.get	59
	local.set	56
	local.get	58
	local.set	57
.LBB38_8:
	end_block                               # label115:
	local.get	57
	local.set	60
	local.get	56
	local.set	61
	local.get	7
	local.get	61
	i64.store	32
	local.get	7
	local.get	60
	i64.store	40
	br      	1                               # 1: down to label111
.LBB38_9:
	end_block                               # label114:
	local.get	7
	i64.load	24
	local.set	62
	local.get	7
	i64.load	16
	local.set	63
	local.get	7
	i64.load	8
	local.set	64
	local.get	7
	i64.load	0
	local.set	65
	local.get	63
	local.get	62
	local.get	65
	local.get	64
	call	__lttf2
	local.set	66
	i32.const	0
	local.set	67
	local.get	66
	local.get	67
	i32.lt_s
	local.set	68
	i32.const	1
	local.set	69
	local.get	68
	local.get	69
	i32.and 
	local.set	70
	block   	
	block   	
	local.get	70
	i32.eqz
	br_if   	0                               # 0: down to label118
# %bb.10:
	local.get	7
	i64.load	24
	local.set	71
	local.get	7
	i64.load	16
	local.set	72
	local.get	72
	local.set	73
	local.get	71
	local.set	74
	br      	1                               # 1: down to label117
.LBB38_11:
	end_block                               # label118:
	local.get	7
	i64.load	8
	local.set	75
	local.get	7
	i64.load	0
	local.set	76
	local.get	76
	local.set	73
	local.get	75
	local.set	74
.LBB38_12:
	end_block                               # label117:
	local.get	74
	local.set	77
	local.get	73
	local.set	78
	local.get	7
	local.get	78
	i64.store	32
	local.get	7
	local.get	77
	i64.store	40
.LBB38_13:
	end_block                               # label111:
	local.get	7
	i64.load	32
	local.set	79
	local.get	7
	i64.load	40
	local.set	80
	local.get	0
	local.get	80
	i64.store	8
	local.get	0
	local.get	79
	i64.store	0
	i32.const	48
	local.set	81
	local.get	7
	local.get	81
	i32.add 
	local.set	82
	local.get	82
	global.set	__stack_pointer
	return
	end_function
                                        # -- End function
	.section	.text.l64a,"",@
	.hidden	l64a                            # -- Begin function l64a
	.globl	l64a
	.type	l64a,@function
l64a:                                   # @l64a
	.functype	l64a (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	3
	local.get	4
	i32.store	4
	i32.const	l64a.s
	local.set	5
	local.get	3
	local.get	5
	i32.store	8
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label120:
	local.get	3
	i32.load	4
	local.set	6
	local.get	6
	i32.eqz
	br_if   	1                               # 1: down to label119
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	local.get	3
	i32.load	4
	local.set	7
	i32.const	63
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	9
	i32.load8_u	digits
	local.set	10
	local.get	3
	i32.load	8
	local.set	11
	local.get	11
	local.get	10
	i32.store8	0
# %bb.3:                                #   in Loop: Header=BB39_1 Depth=1
	local.get	3
	i32.load	8
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.add 
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	local.get	3
	i32.load	4
	local.set	15
	i32.const	6
	local.set	16
	local.get	15
	local.get	16
	i32.shr_u
	local.set	17
	local.get	3
	local.get	17
	i32.store	4
	br      	0                               # 0: up to label120
.LBB39_4:
	end_loop
	end_block                               # label119:
	local.get	3
	i32.load	8
	local.set	18
	i32.const	0
	local.set	19
	local.get	18
	local.get	19
	i32.store8	0
	i32.const	l64a.s
	local.set	20
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.srand,"",@
	.hidden	srand                           # -- Begin function srand
	.globl	srand
	.type	srand,@function
srand:                                  # @srand
	.functype	srand (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i64, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	1
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	local.set	7
	local.get	7
	i64.extend_i32_u
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	seed
	return
	end_function
                                        # -- End function
	.section	.text.rand,"",@
	.hidden	rand                            # -- Begin function rand
	.globl	rand
	.type	rand,@function
rand:                                   # @rand
	.functype	rand () -> (i32)
	.local  	i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32
# %bb.0:
	i32.const	0
	local.set	0
	local.get	0
	i64.load	seed
	local.set	1
	i64.const	6364136223846793005
	local.set	2
	local.get	1
	local.get	2
	i64.mul 
	local.set	3
	i64.const	1
	local.set	4
	local.get	3
	local.get	4
	i64.add 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	local.get	5
	i64.store	seed
	i32.const	0
	local.set	7
	local.get	7
	i64.load	seed
	local.set	8
	i64.const	33
	local.set	9
	local.get	8
	local.get	9
	i64.shr_u
	local.set	10
	local.get	10
	i32.wrap_i64
	local.set	11
	local.get	11
	return
	end_function
                                        # -- End function
	.section	.text.insque,"",@
	.hidden	insque                          # -- Begin function insque
	.globl	insque
	.type	insque,@function
insque:                                 # @insque
	.functype	insque (i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
	local.get	4
	i32.load	8
	local.set	6
	local.get	4
	local.get	6
	i32.store	0
	local.get	4
	i32.load	0
	local.set	7
	i32.const	0
	local.set	8
	local.get	7
	local.get	8
	i32.ne  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	block   	
	local.get	11
	br_if   	0                               # 0: down to label122
# %bb.1:
	local.get	4
	i32.load	4
	local.set	12
	i32.const	0
	local.set	13
	local.get	12
	local.get	13
	i32.store	4
	local.get	4
	i32.load	4
	local.set	14
	i32.const	0
	local.set	15
	local.get	14
	local.get	15
	i32.store	0
	br      	1                               # 1: down to label121
.LBB42_2:
	end_block                               # label122:
	local.get	4
	i32.load	0
	local.set	16
	local.get	16
	i32.load	0
	local.set	17
	local.get	4
	i32.load	4
	local.set	18
	local.get	18
	local.get	17
	i32.store	0
	local.get	4
	i32.load	0
	local.set	19
	local.get	4
	i32.load	4
	local.set	20
	local.get	20
	local.get	19
	i32.store	4
	local.get	4
	i32.load	4
	local.set	21
	local.get	4
	i32.load	0
	local.set	22
	local.get	22
	local.get	21
	i32.store	0
	local.get	4
	i32.load	4
	local.set	23
	local.get	23
	i32.load	0
	local.set	24
	i32.const	0
	local.set	25
	local.get	24
	local.get	25
	i32.ne  
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	28
	i32.eqz
	br_if   	0                               # 0: down to label121
# %bb.3:
	local.get	4
	i32.load	4
	local.set	29
	local.get	4
	i32.load	4
	local.set	30
	local.get	30
	i32.load	0
	local.set	31
	local.get	31
	local.get	29
	i32.store	4
.LBB42_4:
	end_block                               # label121:
	return
	end_function
                                        # -- End function
	.section	.text.remque,"",@
	.hidden	remque                          # -- Begin function remque
	.globl	remque
	.type	remque,@function
remque:                                 # @remque
	.functype	remque (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
	local.get	3
	i32.load	8
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.get	7
	i32.ne  
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	block   	
	local.get	10
	i32.eqz
	br_if   	0                               # 0: down to label123
# %bb.1:
	local.get	3
	i32.load	8
	local.set	11
	local.get	11
	i32.load	4
	local.set	12
	local.get	3
	i32.load	8
	local.set	13
	local.get	13
	i32.load	0
	local.set	14
	local.get	14
	local.get	12
	i32.store	4
.LBB43_2:
	end_block                               # label123:
	local.get	3
	i32.load	8
	local.set	15
	local.get	15
	i32.load	4
	local.set	16
	i32.const	0
	local.set	17
	local.get	16
	local.get	17
	i32.ne  
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	block   	
	local.get	20
	i32.eqz
	br_if   	0                               # 0: down to label124
# %bb.3:
	local.get	3
	i32.load	8
	local.set	21
	local.get	21
	i32.load	0
	local.set	22
	local.get	3
	i32.load	8
	local.set	23
	local.get	23
	i32.load	4
	local.set	24
	local.get	24
	local.get	22
	i32.store	0
.LBB43_4:
	end_block                               # label124:
	return
	end_function
                                        # -- End function
	.section	.text.lsearch,"",@
	.hidden	lsearch                         # -- Begin function lsearch
	.globl	lsearch
	.type	lsearch,@function
lsearch:                                # @lsearch
	.functype	lsearch (i32, i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	5
	i32.const	48
	local.set	6
	local.get	5
	local.get	6
	i32.sub 
	local.set	7
	local.get	7
	global.set	__stack_pointer
	local.get	7
	local.get	0
	i32.store	40
	local.get	7
	local.get	1
	i32.store	36
	local.get	7
	local.get	2
	i32.store	32
	local.get	7
	local.get	3
	i32.store	28
	local.get	7
	local.get	4
	i32.store	24
	local.get	7
	i32.load	28
	local.set	8
	local.get	7
	i32.load	36
	local.set	9
	local.get	7
	local.get	9
	i32.store	20
	local.get	7
	i32.load	32
	local.set	10
	local.get	10
	i32.load	0
	local.set	11
	local.get	7
	local.get	11
	i32.store	16
	i32.const	0
	local.set	12
	local.get	7
	local.get	12
	i32.store	12
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label127:
	local.get	7
	i32.load	12
	local.set	13
	local.get	7
	i32.load	16
	local.set	14
	local.get	13
	local.get	14
	i32.lt_u
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label126
# %bb.2:                                #   in Loop: Header=BB44_1 Depth=1
	local.get	7
	i32.load	24
	local.set	18
	local.get	7
	i32.load	40
	local.set	19
	local.get	7
	i32.load	20
	local.set	20
	local.get	7
	i32.load	12
	local.set	21
	local.get	21
	local.get	8
	i32.mul 
	local.set	22
	local.get	20
	local.get	22
	i32.add 
	local.set	23
	local.get	19
	local.get	23
	local.get	18
	call_indirect	 (i32, i32) -> (i32)
	local.set	24
	block   	
	local.get	24
	br_if   	0                               # 0: down to label128
# %bb.3:
	local.get	7
	i32.load	20
	local.set	25
	local.get	7
	i32.load	12
	local.set	26
	local.get	26
	local.get	8
	i32.mul 
	local.set	27
	local.get	25
	local.get	27
	i32.add 
	local.set	28
	local.get	7
	local.get	28
	i32.store	44
	br      	3                               # 3: down to label125
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	end_block                               # label128:
# %bb.5:                                #   in Loop: Header=BB44_1 Depth=1
	local.get	7
	i32.load	12
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.add 
	local.set	31
	local.get	7
	local.get	31
	i32.store	12
	br      	0                               # 0: up to label127
.LBB44_6:
	end_loop
	end_block                               # label126:
	local.get	7
	i32.load	16
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.add 
	local.set	34
	local.get	7
	i32.load	32
	local.set	35
	local.get	35
	local.get	34
	i32.store	0
	local.get	7
	i32.load	20
	local.set	36
	local.get	7
	i32.load	16
	local.set	37
	local.get	37
	local.get	8
	i32.mul 
	local.set	38
	local.get	36
	local.get	38
	i32.add 
	local.set	39
	local.get	7
	i32.load	40
	local.set	40
	local.get	7
	i32.load	28
	local.set	41
	local.get	39
	local.get	40
	local.get	41
	call	memcpy
	drop
	local.get	7
	local.get	39
	i32.store	44
.LBB44_7:
	end_block                               # label125:
	local.get	7
	i32.load	44
	local.set	42
	i32.const	48
	local.set	43
	local.get	7
	local.get	43
	i32.add 
	local.set	44
	local.get	44
	global.set	__stack_pointer
	local.get	42
	return
	end_function
                                        # -- End function
	.section	.text.lfind,"",@
	.hidden	lfind                           # -- Begin function lfind
	.globl	lfind
	.type	lfind,@function
lfind:                                  # @lfind
	.functype	lfind (i32, i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	5
	i32.const	48
	local.set	6
	local.get	5
	local.get	6
	i32.sub 
	local.set	7
	local.get	7
	global.set	__stack_pointer
	local.get	7
	local.get	0
	i32.store	40
	local.get	7
	local.get	1
	i32.store	36
	local.get	7
	local.get	2
	i32.store	32
	local.get	7
	local.get	3
	i32.store	28
	local.get	7
	local.get	4
	i32.store	24
	local.get	7
	i32.load	28
	local.set	8
	local.get	7
	i32.load	36
	local.set	9
	local.get	7
	local.get	9
	i32.store	20
	local.get	7
	i32.load	32
	local.set	10
	local.get	10
	i32.load	0
	local.set	11
	local.get	7
	local.get	11
	i32.store	16
	i32.const	0
	local.set	12
	local.get	7
	local.get	12
	i32.store	12
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label131:
	local.get	7
	i32.load	12
	local.set	13
	local.get	7
	i32.load	16
	local.set	14
	local.get	13
	local.get	14
	i32.lt_u
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label130
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	local.get	7
	i32.load	24
	local.set	18
	local.get	7
	i32.load	40
	local.set	19
	local.get	7
	i32.load	20
	local.set	20
	local.get	7
	i32.load	12
	local.set	21
	local.get	21
	local.get	8
	i32.mul 
	local.set	22
	local.get	20
	local.get	22
	i32.add 
	local.set	23
	local.get	19
	local.get	23
	local.get	18
	call_indirect	 (i32, i32) -> (i32)
	local.set	24
	block   	
	local.get	24
	br_if   	0                               # 0: down to label132
# %bb.3:
	local.get	7
	i32.load	20
	local.set	25
	local.get	7
	i32.load	12
	local.set	26
	local.get	26
	local.get	8
	i32.mul 
	local.set	27
	local.get	25
	local.get	27
	i32.add 
	local.set	28
	local.get	7
	local.get	28
	i32.store	44
	br      	3                               # 3: down to label129
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	end_block                               # label132:
# %bb.5:                                #   in Loop: Header=BB45_1 Depth=1
	local.get	7
	i32.load	12
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.add 
	local.set	31
	local.get	7
	local.get	31
	i32.store	12
	br      	0                               # 0: up to label131
.LBB45_6:
	end_loop
	end_block                               # label130:
	i32.const	0
	local.set	32
	local.get	7
	local.get	32
	i32.store	44
.LBB45_7:
	end_block                               # label129:
	local.get	7
	i32.load	44
	local.set	33
	i32.const	48
	local.set	34
	local.get	7
	local.get	34
	i32.add 
	local.set	35
	local.get	35
	global.set	__stack_pointer
	local.get	33
	return
	end_function
                                        # -- End function
	.section	.text.abs,"",@
	.hidden	abs                             # -- Begin function abs
	.globl	abs
	.type	abs,@function
abs:                                    # @abs
	.functype	abs (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.gt_s
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	block   	
	block   	
	local.get	8
	i32.eqz
	br_if   	0                               # 0: down to label134
# %bb.1:
	local.get	3
	i32.load	12
	local.set	9
	local.get	9
	local.set	10
	br      	1                               # 1: down to label133
.LBB46_2:
	end_block                               # label134:
	local.get	3
	i32.load	12
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i32.sub 
	local.set	13
	local.get	13
	local.set	10
.LBB46_3:
	end_block                               # label133:
	local.get	10
	local.set	14
	local.get	14
	return
	end_function
                                        # -- End function
	.section	.text.atoi,"",@
	.hidden	atoi                            # -- Begin function atoi
	.globl	atoi
	.type	atoi,@function
atoi:                                   # @atoi
	.functype	atoi (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
	i32.const	0
	local.set	5
	local.get	3
	local.get	5
	i32.store	4
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label136:
	local.get	3
	i32.load	12
	local.set	6
	local.get	6
	i32.load8_u	0
	local.set	7
	i32.const	24
	local.set	8
	local.get	7
	local.get	8
	i32.shl 
	local.set	9
	local.get	9
	local.get	8
	i32.shr_s
	local.set	10
	local.get	10
	call	isspace
	local.set	11
	local.get	11
	i32.eqz
	br_if   	1                               # 1: down to label135
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	local.get	3
	i32.load	12
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.add 
	local.set	14
	local.get	3
	local.get	14
	i32.store	12
	br      	0                               # 0: up to label136
.LBB47_3:
	end_loop
	end_block                               # label135:
	local.get	3
	i32.load	12
	local.set	15
	local.get	15
	i32.load8_s	0
	local.set	16
	i32.const	-43
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	i32.const	2
	local.set	19
	local.get	18
	local.get	19
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	local.get	18
	br_table 	{1, 2, 0, 2}            # 2: down to label137
                                        # 0: down to label139
.LBB47_4:
	end_block                               # label139:
	i32.const	1
	local.set	20
	local.get	3
	local.get	20
	i32.store	4
.LBB47_5:
	end_block                               # label138:
	local.get	3
	i32.load	12
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.add 
	local.set	23
	local.get	3
	local.get	23
	i32.store	12
.LBB47_6:
	end_block                               # label137:
.LBB47_7:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label141:
	local.get	3
	i32.load	12
	local.set	24
	local.get	24
	i32.load8_u	0
	local.set	25
	i32.const	24
	local.set	26
	local.get	25
	local.get	26
	i32.shl 
	local.set	27
	local.get	27
	local.get	26
	i32.shr_s
	local.set	28
	local.get	28
	call	isdigit
	local.set	29
	local.get	29
	i32.eqz
	br_if   	1                               # 1: down to label140
# %bb.8:                                #   in Loop: Header=BB47_7 Depth=1
	local.get	3
	i32.load	8
	local.set	30
	i32.const	10
	local.set	31
	local.get	30
	local.get	31
	i32.mul 
	local.set	32
	local.get	3
	i32.load	12
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	local.get	3
	local.get	35
	i32.store	12
	local.get	33
	i32.load8_u	0
	local.set	36
	i32.const	24
	local.set	37
	local.get	36
	local.get	37
	i32.shl 
	local.set	38
	local.get	38
	local.get	37
	i32.shr_s
	local.set	39
	i32.const	48
	local.set	40
	local.get	39
	local.get	40
	i32.sub 
	local.set	41
	local.get	32
	local.get	41
	i32.sub 
	local.set	42
	local.get	3
	local.get	42
	i32.store	8
	br      	0                               # 0: up to label141
.LBB47_9:
	end_loop
	end_block                               # label140:
	local.get	3
	i32.load	4
	local.set	43
	block   	
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label143
# %bb.10:
	local.get	3
	i32.load	8
	local.set	44
	local.get	44
	local.set	45
	br      	1                               # 1: down to label142
.LBB47_11:
	end_block                               # label143:
	local.get	3
	i32.load	8
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i32.sub 
	local.set	48
	local.get	48
	local.set	45
.LBB47_12:
	end_block                               # label142:
	local.get	45
	local.set	49
	i32.const	16
	local.set	50
	local.get	3
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	global.set	__stack_pointer
	local.get	49
	return
	end_function
                                        # -- End function
	.section	.text.atol,"",@
	.hidden	atol                            # -- Begin function atol
	.globl	atol
	.type	atol,@function
atol:                                   # @atol
	.functype	atol (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
	i32.const	0
	local.set	5
	local.get	3
	local.get	5
	i32.store	4
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label145:
	local.get	3
	i32.load	12
	local.set	6
	local.get	6
	i32.load8_u	0
	local.set	7
	i32.const	24
	local.set	8
	local.get	7
	local.get	8
	i32.shl 
	local.set	9
	local.get	9
	local.get	8
	i32.shr_s
	local.set	10
	local.get	10
	call	isspace
	local.set	11
	local.get	11
	i32.eqz
	br_if   	1                               # 1: down to label144
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	local.get	3
	i32.load	12
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.add 
	local.set	14
	local.get	3
	local.get	14
	i32.store	12
	br      	0                               # 0: up to label145
.LBB48_3:
	end_loop
	end_block                               # label144:
	local.get	3
	i32.load	12
	local.set	15
	local.get	15
	i32.load8_s	0
	local.set	16
	i32.const	-43
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	i32.const	2
	local.set	19
	local.get	18
	local.get	19
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	local.get	18
	br_table 	{1, 2, 0, 2}            # 2: down to label146
                                        # 0: down to label148
.LBB48_4:
	end_block                               # label148:
	i32.const	1
	local.set	20
	local.get	3
	local.get	20
	i32.store	4
.LBB48_5:
	end_block                               # label147:
	local.get	3
	i32.load	12
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.add 
	local.set	23
	local.get	3
	local.get	23
	i32.store	12
.LBB48_6:
	end_block                               # label146:
.LBB48_7:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label150:
	local.get	3
	i32.load	12
	local.set	24
	local.get	24
	i32.load8_u	0
	local.set	25
	i32.const	24
	local.set	26
	local.get	25
	local.get	26
	i32.shl 
	local.set	27
	local.get	27
	local.get	26
	i32.shr_s
	local.set	28
	local.get	28
	call	isdigit
	local.set	29
	local.get	29
	i32.eqz
	br_if   	1                               # 1: down to label149
# %bb.8:                                #   in Loop: Header=BB48_7 Depth=1
	local.get	3
	i32.load	8
	local.set	30
	i32.const	10
	local.set	31
	local.get	30
	local.get	31
	i32.mul 
	local.set	32
	local.get	3
	i32.load	12
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	local.get	3
	local.get	35
	i32.store	12
	local.get	33
	i32.load8_u	0
	local.set	36
	i32.const	24
	local.set	37
	local.get	36
	local.get	37
	i32.shl 
	local.set	38
	local.get	38
	local.get	37
	i32.shr_s
	local.set	39
	i32.const	48
	local.set	40
	local.get	39
	local.get	40
	i32.sub 
	local.set	41
	local.get	32
	local.get	41
	i32.sub 
	local.set	42
	local.get	3
	local.get	42
	i32.store	8
	br      	0                               # 0: up to label150
.LBB48_9:
	end_loop
	end_block                               # label149:
	local.get	3
	i32.load	4
	local.set	43
	block   	
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label152
# %bb.10:
	local.get	3
	i32.load	8
	local.set	44
	local.get	44
	local.set	45
	br      	1                               # 1: down to label151
.LBB48_11:
	end_block                               # label152:
	local.get	3
	i32.load	8
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i32.sub 
	local.set	48
	local.get	48
	local.set	45
.LBB48_12:
	end_block                               # label151:
	local.get	45
	local.set	49
	i32.const	16
	local.set	50
	local.get	3
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	global.set	__stack_pointer
	local.get	49
	return
	end_function
                                        # -- End function
	.section	.text.atoll,"",@
	.hidden	atoll                           # -- Begin function atoll
	.globl	atoll
	.type	atoll,@function
atoll:                                  # @atoll
	.functype	atoll (i32) -> (i64)
	.local  	i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	32
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	28
	i64.const	0
	local.set	4
	local.get	3
	local.get	4
	i64.store	16
	i32.const	0
	local.set	5
	local.get	3
	local.get	5
	i32.store	12
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label154:
	local.get	3
	i32.load	28
	local.set	6
	local.get	6
	i32.load8_u	0
	local.set	7
	i32.const	24
	local.set	8
	local.get	7
	local.get	8
	i32.shl 
	local.set	9
	local.get	9
	local.get	8
	i32.shr_s
	local.set	10
	local.get	10
	call	isspace
	local.set	11
	local.get	11
	i32.eqz
	br_if   	1                               # 1: down to label153
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	local.get	3
	i32.load	28
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.add 
	local.set	14
	local.get	3
	local.get	14
	i32.store	28
	br      	0                               # 0: up to label154
.LBB49_3:
	end_loop
	end_block                               # label153:
	local.get	3
	i32.load	28
	local.set	15
	local.get	15
	i32.load8_s	0
	local.set	16
	i32.const	-43
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	i32.const	2
	local.set	19
	local.get	18
	local.get	19
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	local.get	18
	br_table 	{1, 2, 0, 2}            # 2: down to label155
                                        # 0: down to label157
.LBB49_4:
	end_block                               # label157:
	i32.const	1
	local.set	20
	local.get	3
	local.get	20
	i32.store	12
.LBB49_5:
	end_block                               # label156:
	local.get	3
	i32.load	28
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.add 
	local.set	23
	local.get	3
	local.get	23
	i32.store	28
.LBB49_6:
	end_block                               # label155:
.LBB49_7:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label159:
	local.get	3
	i32.load	28
	local.set	24
	local.get	24
	i32.load8_u	0
	local.set	25
	i32.const	24
	local.set	26
	local.get	25
	local.get	26
	i32.shl 
	local.set	27
	local.get	27
	local.get	26
	i32.shr_s
	local.set	28
	local.get	28
	call	isdigit
	local.set	29
	local.get	29
	i32.eqz
	br_if   	1                               # 1: down to label158
# %bb.8:                                #   in Loop: Header=BB49_7 Depth=1
	local.get	3
	i64.load	16
	local.set	30
	i64.const	10
	local.set	31
	local.get	30
	local.get	31
	i64.mul 
	local.set	32
	local.get	3
	i32.load	28
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	local.get	3
	local.get	35
	i32.store	28
	local.get	33
	i32.load8_u	0
	local.set	36
	i32.const	24
	local.set	37
	local.get	36
	local.get	37
	i32.shl 
	local.set	38
	local.get	38
	local.get	37
	i32.shr_s
	local.set	39
	i32.const	48
	local.set	40
	local.get	39
	local.get	40
	i32.sub 
	local.set	41
	local.get	41
	local.set	42
	local.get	42
	i64.extend_i32_s
	local.set	43
	local.get	32
	local.get	43
	i64.sub 
	local.set	44
	local.get	3
	local.get	44
	i64.store	16
	br      	0                               # 0: up to label159
.LBB49_9:
	end_loop
	end_block                               # label158:
	local.get	3
	i32.load	12
	local.set	45
	block   	
	block   	
	local.get	45
	i32.eqz
	br_if   	0                               # 0: down to label161
# %bb.10:
	local.get	3
	i64.load	16
	local.set	46
	local.get	46
	local.set	47
	br      	1                               # 1: down to label160
.LBB49_11:
	end_block                               # label161:
	local.get	3
	i64.load	16
	local.set	48
	i64.const	0
	local.set	49
	local.get	49
	local.get	48
	i64.sub 
	local.set	50
	local.get	50
	local.set	47
.LBB49_12:
	end_block                               # label160:
	local.get	47
	local.set	51
	i32.const	32
	local.set	52
	local.get	3
	local.get	52
	i32.add 
	local.set	53
	local.get	53
	global.set	__stack_pointer
	local.get	51
	return
	end_function
                                        # -- End function
	.section	.text.bsearch,"",@
	.hidden	bsearch                         # -- Begin function bsearch
	.globl	bsearch
	.type	bsearch,@function
bsearch:                                # @bsearch
	.functype	bsearch (i32, i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	5
	i32.const	32
	local.set	6
	local.get	5
	local.get	6
	i32.sub 
	local.set	7
	local.get	7
	global.set	__stack_pointer
	local.get	7
	local.get	0
	i32.store	24
	local.get	7
	local.get	1
	i32.store	20
	local.get	7
	local.get	2
	i32.store	16
	local.get	7
	local.get	3
	i32.store	12
	local.get	7
	local.get	4
	i32.store	8
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label164:
	local.get	7
	i32.load	16
	local.set	8
	i32.const	0
	local.set	9
	local.get	8
	local.get	9
	i32.gt_u
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	12
	i32.eqz
	br_if   	1                               # 1: down to label163
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	local.get	7
	i32.load	20
	local.set	13
	local.get	7
	i32.load	12
	local.set	14
	local.get	7
	i32.load	16
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.shr_u
	local.set	17
	local.get	14
	local.get	17
	i32.mul 
	local.set	18
	local.get	13
	local.get	18
	i32.add 
	local.set	19
	local.get	7
	local.get	19
	i32.store	4
	local.get	7
	i32.load	8
	local.set	20
	local.get	7
	i32.load	24
	local.set	21
	local.get	7
	i32.load	4
	local.set	22
	local.get	21
	local.get	22
	local.get	20
	call_indirect	 (i32, i32) -> (i32)
	local.set	23
	local.get	7
	local.get	23
	i32.store	0
	local.get	7
	i32.load	0
	local.set	24
	i32.const	0
	local.set	25
	local.get	24
	local.get	25
	i32.lt_s
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	block   	
	block   	
	local.get	28
	i32.eqz
	br_if   	0                               # 0: down to label166
# %bb.3:                                #   in Loop: Header=BB50_1 Depth=1
	local.get	7
	i32.load	16
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.shr_u
	local.set	31
	local.get	7
	local.get	31
	i32.store	16
	br      	1                               # 1: down to label165
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	end_block                               # label166:
	local.get	7
	i32.load	0
	local.set	32
	i32.const	0
	local.set	33
	local.get	32
	local.get	33
	i32.gt_s
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	block   	
	block   	
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label168
# %bb.5:                                #   in Loop: Header=BB50_1 Depth=1
	local.get	7
	i32.load	4
	local.set	37
	local.get	7
	i32.load	12
	local.set	38
	local.get	37
	local.get	38
	i32.add 
	local.set	39
	local.get	7
	local.get	39
	i32.store	20
	local.get	7
	i32.load	16
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.shr_u
	local.set	42
	i32.const	1
	local.set	43
	local.get	42
	local.get	43
	i32.add 
	local.set	44
	local.get	7
	i32.load	16
	local.set	45
	local.get	45
	local.get	44
	i32.sub 
	local.set	46
	local.get	7
	local.get	46
	i32.store	16
	br      	1                               # 1: down to label167
.LBB50_6:
	end_block                               # label168:
	local.get	7
	i32.load	4
	local.set	47
	local.get	7
	local.get	47
	i32.store	28
	br      	4                               # 4: down to label162
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	end_block                               # label167:
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	end_block                               # label165:
	br      	0                               # 0: up to label164
.LBB50_9:
	end_loop
	end_block                               # label163:
	i32.const	0
	local.set	48
	local.get	7
	local.get	48
	i32.store	28
.LBB50_10:
	end_block                               # label162:
	local.get	7
	i32.load	28
	local.set	49
	i32.const	32
	local.set	50
	local.get	7
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	global.set	__stack_pointer
	local.get	49
	return
	end_function
                                        # -- End function
	.section	.text.bsearch_r,"",@
	.hidden	bsearch_r                       # -- Begin function bsearch_r
	.globl	bsearch_r
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
	.functype	bsearch_r (i32, i32, i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	6
	i32.const	48
	local.set	7
	local.get	6
	local.get	7
	i32.sub 
	local.set	8
	local.get	8
	global.set	__stack_pointer
	local.get	8
	local.get	0
	i32.store	40
	local.get	8
	local.get	1
	i32.store	36
	local.get	8
	local.get	2
	i32.store	32
	local.get	8
	local.get	3
	i32.store	28
	local.get	8
	local.get	4
	i32.store	24
	local.get	8
	local.get	5
	i32.store	20
	local.get	8
	i32.load	36
	local.set	9
	local.get	8
	local.get	9
	i32.store	16
	local.get	8
	i32.load	32
	local.set	10
	local.get	8
	local.get	10
	i32.store	12
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label171:
	local.get	8
	i32.load	12
	local.set	11
	local.get	11
	i32.eqz
	br_if   	1                               # 1: down to label170
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	local.get	8
	i32.load	16
	local.set	12
	local.get	8
	i32.load	12
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.shr_s
	local.set	15
	local.get	8
	i32.load	28
	local.set	16
	local.get	15
	local.get	16
	i32.mul 
	local.set	17
	local.get	12
	local.get	17
	i32.add 
	local.set	18
	local.get	8
	local.get	18
	i32.store	4
	local.get	8
	i32.load	24
	local.set	19
	local.get	8
	i32.load	40
	local.set	20
	local.get	8
	i32.load	4
	local.set	21
	local.get	8
	i32.load	20
	local.set	22
	local.get	20
	local.get	21
	local.get	22
	local.get	19
	call_indirect	 (i32, i32, i32) -> (i32)
	local.set	23
	local.get	8
	local.get	23
	i32.store	8
	local.get	8
	i32.load	8
	local.set	24
	block   	
	local.get	24
	br_if   	0                               # 0: down to label172
# %bb.3:
	local.get	8
	i32.load	4
	local.set	25
	local.get	8
	local.get	25
	i32.store	44
	br      	3                               # 3: down to label169
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	end_block                               # label172:
	local.get	8
	i32.load	8
	local.set	26
	i32.const	0
	local.set	27
	local.get	26
	local.get	27
	i32.gt_s
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	block   	
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label173
# %bb.5:                                #   in Loop: Header=BB51_1 Depth=1
	local.get	8
	i32.load	4
	local.set	31
	local.get	8
	i32.load	28
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	8
	local.get	33
	i32.store	16
	local.get	8
	i32.load	12
	local.set	34
	i32.const	-1
	local.set	35
	local.get	34
	local.get	35
	i32.add 
	local.set	36
	local.get	8
	local.get	36
	i32.store	12
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	end_block                               # label173:
# %bb.7:                                #   in Loop: Header=BB51_1 Depth=1
	local.get	8
	i32.load	12
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.shr_s
	local.set	39
	local.get	8
	local.get	39
	i32.store	12
	br      	0                               # 0: up to label171
.LBB51_8:
	end_loop
	end_block                               # label170:
	i32.const	0
	local.set	40
	local.get	8
	local.get	40
	i32.store	44
.LBB51_9:
	end_block                               # label169:
	local.get	8
	i32.load	44
	local.set	41
	i32.const	48
	local.set	42
	local.get	8
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	global.set	__stack_pointer
	local.get	41
	return
	end_function
                                        # -- End function
	.section	.text.div,"",@
	.hidden	div                             # -- Begin function div
	.globl	div
	.type	div,@function
div:                                    # @div
	.functype	div (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	1
	i32.store	12
	local.get	5
	local.get	2
	i32.store	8
	local.get	5
	i32.load	12
	local.set	6
	local.get	5
	i32.load	8
	local.set	7
	local.get	6
	local.get	7
	i32.div_s
	local.set	8
	local.get	0
	local.get	8
	i32.store	0
	local.get	5
	i32.load	12
	local.set	9
	local.get	5
	i32.load	8
	local.set	10
	local.get	9
	local.get	10
	i32.rem_s
	local.set	11
	local.get	0
	local.get	11
	i32.store	4
	return
	end_function
                                        # -- End function
	.section	.text.imaxabs,"",@
	.hidden	imaxabs                         # -- Begin function imaxabs
	.globl	imaxabs
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
	.functype	imaxabs (i64) -> (i64)
	.local  	i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	8
	local.get	3
	i64.load	8
	local.set	4
	i64.const	0
	local.set	5
	local.get	4
	local.get	5
	i64.gt_s
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	block   	
	block   	
	local.get	8
	i32.eqz
	br_if   	0                               # 0: down to label175
# %bb.1:
	local.get	3
	i64.load	8
	local.set	9
	local.get	9
	local.set	10
	br      	1                               # 1: down to label174
.LBB53_2:
	end_block                               # label175:
	local.get	3
	i64.load	8
	local.set	11
	i64.const	0
	local.set	12
	local.get	12
	local.get	11
	i64.sub 
	local.set	13
	local.get	13
	local.set	10
.LBB53_3:
	end_block                               # label174:
	local.get	10
	local.set	14
	local.get	14
	return
	end_function
                                        # -- End function
	.section	.text.imaxdiv,"",@
	.hidden	imaxdiv                         # -- Begin function imaxdiv
	.globl	imaxdiv
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
	.functype	imaxdiv (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	1
	i64.store	8
	local.get	5
	local.get	2
	i64.store	0
	local.get	5
	i64.load	8
	local.set	6
	local.get	5
	i64.load	0
	local.set	7
	local.get	6
	local.get	7
	i64.div_s
	local.set	8
	local.get	0
	local.get	8
	i64.store	0
	local.get	5
	i64.load	8
	local.set	9
	local.get	5
	i64.load	0
	local.set	10
	local.get	9
	local.get	10
	i64.rem_s
	local.set	11
	local.get	0
	local.get	11
	i64.store	8
	return
	end_function
                                        # -- End function
	.section	.text.labs,"",@
	.hidden	labs                            # -- Begin function labs
	.globl	labs
	.type	labs,@function
labs:                                   # @labs
	.functype	labs (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.gt_s
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	block   	
	block   	
	local.get	8
	i32.eqz
	br_if   	0                               # 0: down to label177
# %bb.1:
	local.get	3
	i32.load	12
	local.set	9
	local.get	9
	local.set	10
	br      	1                               # 1: down to label176
.LBB55_2:
	end_block                               # label177:
	local.get	3
	i32.load	12
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i32.sub 
	local.set	13
	local.get	13
	local.set	10
.LBB55_3:
	end_block                               # label176:
	local.get	10
	local.set	14
	local.get	14
	return
	end_function
                                        # -- End function
	.section	.text.ldiv,"",@
	.hidden	ldiv                            # -- Begin function ldiv
	.globl	ldiv
	.type	ldiv,@function
ldiv:                                   # @ldiv
	.functype	ldiv (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	1
	i32.store	12
	local.get	5
	local.get	2
	i32.store	8
	local.get	5
	i32.load	12
	local.set	6
	local.get	5
	i32.load	8
	local.set	7
	local.get	6
	local.get	7
	i32.div_s
	local.set	8
	local.get	0
	local.get	8
	i32.store	0
	local.get	5
	i32.load	12
	local.set	9
	local.get	5
	i32.load	8
	local.set	10
	local.get	9
	local.get	10
	i32.rem_s
	local.set	11
	local.get	0
	local.get	11
	i32.store	4
	return
	end_function
                                        # -- End function
	.section	.text.llabs,"",@
	.hidden	llabs                           # -- Begin function llabs
	.globl	llabs
	.type	llabs,@function
llabs:                                  # @llabs
	.functype	llabs (i64) -> (i64)
	.local  	i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	8
	local.get	3
	i64.load	8
	local.set	4
	i64.const	0
	local.set	5
	local.get	4
	local.get	5
	i64.gt_s
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	block   	
	block   	
	local.get	8
	i32.eqz
	br_if   	0                               # 0: down to label179
# %bb.1:
	local.get	3
	i64.load	8
	local.set	9
	local.get	9
	local.set	10
	br      	1                               # 1: down to label178
.LBB57_2:
	end_block                               # label179:
	local.get	3
	i64.load	8
	local.set	11
	i64.const	0
	local.set	12
	local.get	12
	local.get	11
	i64.sub 
	local.set	13
	local.get	13
	local.set	10
.LBB57_3:
	end_block                               # label178:
	local.get	10
	local.set	14
	local.get	14
	return
	end_function
                                        # -- End function
	.section	.text.lldiv,"",@
	.hidden	lldiv                           # -- Begin function lldiv
	.globl	lldiv
	.type	lldiv,@function
lldiv:                                  # @lldiv
	.functype	lldiv (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	1
	i64.store	8
	local.get	5
	local.get	2
	i64.store	0
	local.get	5
	i64.load	8
	local.set	6
	local.get	5
	i64.load	0
	local.set	7
	local.get	6
	local.get	7
	i64.div_s
	local.set	8
	local.get	0
	local.get	8
	i64.store	0
	local.get	5
	i64.load	8
	local.set	9
	local.get	5
	i64.load	0
	local.set	10
	local.get	9
	local.get	10
	i64.rem_s
	local.set	11
	local.get	0
	local.get	11
	i64.store	8
	return
	end_function
                                        # -- End function
	.section	.text.wcschr,"",@
	.hidden	wcschr                          # -- Begin function wcschr
	.globl	wcschr
	.type	wcschr,@function
wcschr:                                 # @wcschr
	.functype	wcschr (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label180:
	local.get	4
	i32.load	12
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	i32.const	0
	local.set	7
	local.get	7
	local.set	8
	block   	
	local.get	6
	i32.eqz
	br_if   	0                               # 0: down to label181
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	local.get	4
	i32.load	12
	local.set	9
	local.get	9
	i32.load	0
	local.set	10
	local.get	4
	i32.load	8
	local.set	11
	local.get	10
	local.get	11
	i32.ne  
	local.set	12
	local.get	12
	local.set	8
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	end_block                               # label181:
	local.get	8
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label182
# %bb.4:                                #   in Loop: Header=BB59_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB59_1 Depth=1
	local.get	4
	i32.load	12
	local.set	16
	i32.const	4
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	4
	local.get	18
	i32.store	12
	br      	1                               # 1: up to label180
.LBB59_6:
	end_block                               # label182:
	end_loop
	local.get	4
	i32.load	12
	local.set	19
	local.get	19
	i32.load	0
	local.set	20
	block   	
	block   	
	local.get	20
	i32.eqz
	br_if   	0                               # 0: down to label184
# %bb.7:
	local.get	4
	i32.load	12
	local.set	21
	local.get	21
	local.set	22
	br      	1                               # 1: down to label183
.LBB59_8:
	end_block                               # label184:
	i32.const	0
	local.set	23
	local.get	23
	local.set	22
.LBB59_9:
	end_block                               # label183:
	local.get	22
	local.set	24
	local.get	24
	return
	end_function
                                        # -- End function
	.section	.text.wcscmp,"",@
	.hidden	wcscmp                          # -- Begin function wcscmp
	.globl	wcscmp
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
	.functype	wcscmp (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label185:
	local.get	4
	i32.load	12
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	local.get	4
	i32.load	8
	local.set	7
	local.get	7
	i32.load	0
	local.set	8
	local.get	6
	local.get	8
	i32.eq  
	local.set	9
	i32.const	0
	local.set	10
	i32.const	1
	local.set	11
	local.get	9
	local.get	11
	i32.and 
	local.set	12
	local.get	10
	local.set	13
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label186
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	local.get	4
	i32.load	12
	local.set	14
	local.get	14
	i32.load	0
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.set	13
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label186
# %bb.3:                                #   in Loop: Header=BB60_1 Depth=1
	local.get	4
	i32.load	8
	local.set	17
	local.get	17
	i32.load	0
	local.set	18
	i32.const	0
	local.set	19
	local.get	18
	local.get	19
	i32.ne  
	local.set	20
	local.get	20
	local.set	13
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	end_block                               # label186:
	local.get	13
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	block   	
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label187
# %bb.5:                                #   in Loop: Header=BB60_1 Depth=1
# %bb.6:                                #   in Loop: Header=BB60_1 Depth=1
	local.get	4
	i32.load	12
	local.set	24
	i32.const	4
	local.set	25
	local.get	24
	local.get	25
	i32.add 
	local.set	26
	local.get	4
	local.get	26
	i32.store	12
	local.get	4
	i32.load	8
	local.set	27
	i32.const	4
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	4
	local.get	29
	i32.store	8
	br      	1                               # 1: up to label185
.LBB60_7:
	end_block                               # label187:
	end_loop
	local.get	4
	i32.load	12
	local.set	30
	local.get	30
	i32.load	0
	local.set	31
	local.get	4
	i32.load	8
	local.set	32
	local.get	32
	i32.load	0
	local.set	33
	local.get	31
	local.get	33
	i32.lt_s
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	block   	
	block   	
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label189
# %bb.8:
	i32.const	4294967295
	local.set	37
	local.get	37
	local.set	38
	br      	1                               # 1: down to label188
.LBB60_9:
	end_block                               # label189:
	local.get	4
	i32.load	12
	local.set	39
	local.get	39
	i32.load	0
	local.set	40
	local.get	4
	i32.load	8
	local.set	41
	local.get	41
	i32.load	0
	local.set	42
	local.get	40
	local.get	42
	i32.gt_s
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.and 
	local.set	45
	local.get	45
	local.set	38
.LBB60_10:
	end_block                               # label188:
	local.get	38
	local.set	46
	local.get	46
	return
	end_function
                                        # -- End function
	.section	.text.wcscpy,"",@
	.hidden	wcscpy                          # -- Begin function wcscpy
	.globl	wcscpy
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
	.functype	wcscpy (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label191:
	local.get	4
	i32.load	8
	local.set	6
	i32.const	4
	local.set	7
	local.get	6
	local.get	7
	i32.add 
	local.set	8
	local.get	4
	local.get	8
	i32.store	8
	local.get	6
	i32.load	0
	local.set	9
	local.get	4
	i32.load	12
	local.set	10
	i32.const	4
	local.set	11
	local.get	10
	local.get	11
	i32.add 
	local.set	12
	local.get	4
	local.get	12
	i32.store	12
	local.get	10
	local.get	9
	i32.store	0
	local.get	9
	i32.eqz
	br_if   	1                               # 1: down to label190
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	br      	0                               # 0: up to label191
.LBB61_3:
	end_loop
	end_block                               # label190:
	local.get	4
	i32.load	4
	local.set	13
	local.get	13
	return
	end_function
                                        # -- End function
	.section	.text.wcslen,"",@
	.hidden	wcslen                          # -- Begin function wcslen
	.globl	wcslen
	.type	wcslen,@function
wcslen:                                 # @wcslen
	.functype	wcslen (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label193:
	local.get	3
	i32.load	12
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	local.get	6
	i32.eqz
	br_if   	1                               # 1: down to label192
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
# %bb.3:                                #   in Loop: Header=BB62_1 Depth=1
	local.get	3
	i32.load	12
	local.set	7
	i32.const	4
	local.set	8
	local.get	7
	local.get	8
	i32.add 
	local.set	9
	local.get	3
	local.get	9
	i32.store	12
	br      	0                               # 0: up to label193
.LBB62_4:
	end_loop
	end_block                               # label192:
	local.get	3
	i32.load	12
	local.set	10
	local.get	3
	i32.load	8
	local.set	11
	local.get	10
	local.get	11
	i32.sub 
	local.set	12
	i32.const	2
	local.set	13
	local.get	12
	local.get	13
	i32.shr_s
	local.set	14
	local.get	14
	return
	end_function
                                        # -- End function
	.section	.text.wcsncmp,"",@
	.hidden	wcsncmp                         # -- Begin function wcsncmp
	.globl	wcsncmp
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
	.functype	wcsncmp (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label194:
	local.get	5
	i32.load	4
	local.set	6
	i32.const	0
	local.set	7
	local.get	7
	local.set	8
	block   	
	local.get	6
	i32.eqz
	br_if   	0                               # 0: down to label195
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	local.get	5
	i32.load	12
	local.set	9
	local.get	9
	i32.load	0
	local.set	10
	local.get	5
	i32.load	8
	local.set	11
	local.get	11
	i32.load	0
	local.set	12
	local.get	10
	local.get	12
	i32.eq  
	local.set	13
	i32.const	0
	local.set	14
	i32.const	1
	local.set	15
	local.get	13
	local.get	15
	i32.and 
	local.set	16
	local.get	14
	local.set	8
	local.get	16
	i32.eqz
	br_if   	0                               # 0: down to label195
# %bb.3:                                #   in Loop: Header=BB63_1 Depth=1
	local.get	5
	i32.load	12
	local.set	17
	local.get	17
	i32.load	0
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.set	8
	local.get	18
	i32.eqz
	br_if   	0                               # 0: down to label195
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	local.get	5
	i32.load	8
	local.set	20
	local.get	20
	i32.load	0
	local.set	21
	i32.const	0
	local.set	22
	local.get	21
	local.get	22
	i32.ne  
	local.set	23
	local.get	23
	local.set	8
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	end_block                               # label195:
	local.get	8
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	block   	
	local.get	26
	i32.eqz
	br_if   	0                               # 0: down to label196
# %bb.6:                                #   in Loop: Header=BB63_1 Depth=1
# %bb.7:                                #   in Loop: Header=BB63_1 Depth=1
	local.get	5
	i32.load	4
	local.set	27
	i32.const	-1
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	5
	local.get	29
	i32.store	4
	local.get	5
	i32.load	12
	local.set	30
	i32.const	4
	local.set	31
	local.get	30
	local.get	31
	i32.add 
	local.set	32
	local.get	5
	local.get	32
	i32.store	12
	local.get	5
	i32.load	8
	local.set	33
	i32.const	4
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	local.get	5
	local.get	35
	i32.store	8
	br      	1                               # 1: up to label194
.LBB63_8:
	end_block                               # label196:
	end_loop
	local.get	5
	i32.load	4
	local.set	36
	block   	
	block   	
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label198
# %bb.9:
	local.get	5
	i32.load	12
	local.set	37
	local.get	37
	i32.load	0
	local.set	38
	local.get	5
	i32.load	8
	local.set	39
	local.get	39
	i32.load	0
	local.set	40
	local.get	38
	local.get	40
	i32.lt_s
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	block   	
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label200
# %bb.10:
	i32.const	4294967295
	local.set	44
	local.get	44
	local.set	45
	br      	1                               # 1: down to label199
.LBB63_11:
	end_block                               # label200:
	local.get	5
	i32.load	12
	local.set	46
	local.get	46
	i32.load	0
	local.set	47
	local.get	5
	i32.load	8
	local.set	48
	local.get	48
	i32.load	0
	local.set	49
	local.get	47
	local.get	49
	i32.gt_s
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	local.get	52
	local.set	45
.LBB63_12:
	end_block                               # label199:
	local.get	45
	local.set	53
	local.get	53
	local.set	54
	br      	1                               # 1: down to label197
.LBB63_13:
	end_block                               # label198:
	i32.const	0
	local.set	55
	local.get	55
	local.set	54
.LBB63_14:
	end_block                               # label197:
	local.get	54
	local.set	56
	local.get	56
	return
	end_function
                                        # -- End function
	.section	.text.wmemchr,"",@
	.hidden	wmemchr                         # -- Begin function wmemchr
	.globl	wmemchr
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
	.functype	wmemchr (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label201:
	local.get	5
	i32.load	4
	local.set	6
	i32.const	0
	local.set	7
	local.get	7
	local.set	8
	block   	
	local.get	6
	i32.eqz
	br_if   	0                               # 0: down to label202
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	local.get	5
	i32.load	12
	local.set	9
	local.get	9
	i32.load	0
	local.set	10
	local.get	5
	i32.load	8
	local.set	11
	local.get	10
	local.get	11
	i32.ne  
	local.set	12
	local.get	12
	local.set	8
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	end_block                               # label202:
	local.get	8
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label203
# %bb.4:                                #   in Loop: Header=BB64_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB64_1 Depth=1
	local.get	5
	i32.load	4
	local.set	16
	i32.const	-1
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	5
	local.get	18
	i32.store	4
	local.get	5
	i32.load	12
	local.set	19
	i32.const	4
	local.set	20
	local.get	19
	local.get	20
	i32.add 
	local.set	21
	local.get	5
	local.get	21
	i32.store	12
	br      	1                               # 1: up to label201
.LBB64_6:
	end_block                               # label203:
	end_loop
	local.get	5
	i32.load	4
	local.set	22
	block   	
	block   	
	local.get	22
	i32.eqz
	br_if   	0                               # 0: down to label205
# %bb.7:
	local.get	5
	i32.load	12
	local.set	23
	local.get	23
	local.set	24
	br      	1                               # 1: down to label204
.LBB64_8:
	end_block                               # label205:
	i32.const	0
	local.set	25
	local.get	25
	local.set	24
.LBB64_9:
	end_block                               # label204:
	local.get	24
	local.set	26
	local.get	26
	return
	end_function
                                        # -- End function
	.section	.text.wmemcmp,"",@
	.hidden	wmemcmp                         # -- Begin function wmemcmp
	.globl	wmemcmp
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
	.functype	wmemcmp (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label206:
	local.get	5
	i32.load	4
	local.set	6
	i32.const	0
	local.set	7
	local.get	7
	local.set	8
	block   	
	local.get	6
	i32.eqz
	br_if   	0                               # 0: down to label207
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	local.get	5
	i32.load	12
	local.set	9
	local.get	9
	i32.load	0
	local.set	10
	local.get	5
	i32.load	8
	local.set	11
	local.get	11
	i32.load	0
	local.set	12
	local.get	10
	local.get	12
	i32.eq  
	local.set	13
	local.get	13
	local.set	8
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	end_block                               # label207:
	local.get	8
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	block   	
	local.get	16
	i32.eqz
	br_if   	0                               # 0: down to label208
# %bb.4:                                #   in Loop: Header=BB65_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB65_1 Depth=1
	local.get	5
	i32.load	4
	local.set	17
	i32.const	-1
	local.set	18
	local.get	17
	local.get	18
	i32.add 
	local.set	19
	local.get	5
	local.get	19
	i32.store	4
	local.get	5
	i32.load	12
	local.set	20
	i32.const	4
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	5
	local.get	22
	i32.store	12
	local.get	5
	i32.load	8
	local.set	23
	i32.const	4
	local.set	24
	local.get	23
	local.get	24
	i32.add 
	local.set	25
	local.get	5
	local.get	25
	i32.store	8
	br      	1                               # 1: up to label206
.LBB65_6:
	end_block                               # label208:
	end_loop
	local.get	5
	i32.load	4
	local.set	26
	block   	
	block   	
	local.get	26
	i32.eqz
	br_if   	0                               # 0: down to label210
# %bb.7:
	local.get	5
	i32.load	12
	local.set	27
	local.get	27
	i32.load	0
	local.set	28
	local.get	5
	i32.load	8
	local.set	29
	local.get	29
	i32.load	0
	local.set	30
	local.get	28
	local.get	30
	i32.lt_s
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.and 
	local.set	33
	block   	
	block   	
	local.get	33
	i32.eqz
	br_if   	0                               # 0: down to label212
# %bb.8:
	i32.const	4294967295
	local.set	34
	local.get	34
	local.set	35
	br      	1                               # 1: down to label211
.LBB65_9:
	end_block                               # label212:
	local.get	5
	i32.load	12
	local.set	36
	local.get	36
	i32.load	0
	local.set	37
	local.get	5
	i32.load	8
	local.set	38
	local.get	38
	i32.load	0
	local.set	39
	local.get	37
	local.get	39
	i32.gt_s
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.and 
	local.set	42
	local.get	42
	local.set	35
.LBB65_10:
	end_block                               # label211:
	local.get	35
	local.set	43
	local.get	43
	local.set	44
	br      	1                               # 1: down to label209
.LBB65_11:
	end_block                               # label210:
	i32.const	0
	local.set	45
	local.get	45
	local.set	44
.LBB65_12:
	end_block                               # label209:
	local.get	44
	local.set	46
	local.get	46
	return
	end_function
                                        # -- End function
	.section	.text.wmemcpy,"",@
	.hidden	wmemcpy                         # -- Begin function wmemcpy
	.globl	wmemcpy
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
	.functype	wmemcpy (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
	local.get	5
	i32.load	12
	local.set	6
	local.get	5
	local.get	6
	i32.store	0
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label214:
	local.get	5
	i32.load	4
	local.set	7
	i32.const	-1
	local.set	8
	local.get	7
	local.get	8
	i32.add 
	local.set	9
	local.get	5
	local.get	9
	i32.store	4
	local.get	7
	i32.eqz
	br_if   	1                               # 1: down to label213
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	local.get	5
	i32.load	8
	local.set	10
	i32.const	4
	local.set	11
	local.get	10
	local.get	11
	i32.add 
	local.set	12
	local.get	5
	local.get	12
	i32.store	8
	local.get	10
	i32.load	0
	local.set	13
	local.get	5
	i32.load	12
	local.set	14
	i32.const	4
	local.set	15
	local.get	14
	local.get	15
	i32.add 
	local.set	16
	local.get	5
	local.get	16
	i32.store	12
	local.get	14
	local.get	13
	i32.store	0
	br      	0                               # 0: up to label214
.LBB66_3:
	end_loop
	end_block                               # label213:
	local.get	5
	i32.load	0
	local.set	17
	local.get	17
	return
	end_function
                                        # -- End function
	.section	.text.wmemmove,"",@
	.hidden	wmemmove                        # -- Begin function wmemmove
	.globl	wmemmove
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
	.functype	wmemmove (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	24
	local.get	5
	local.get	1
	i32.store	20
	local.get	5
	local.get	2
	i32.store	16
	local.get	5
	i32.load	24
	local.set	6
	local.get	5
	local.get	6
	i32.store	12
	local.get	5
	i32.load	24
	local.set	7
	local.get	5
	i32.load	20
	local.set	8
	local.get	7
	local.get	8
	i32.eq  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label216
# %bb.1:
	local.get	5
	i32.load	24
	local.set	12
	local.get	5
	local.get	12
	i32.store	28
	br      	1                               # 1: down to label215
.LBB67_2:
	end_block                               # label216:
	local.get	5
	i32.load	24
	local.set	13
	local.get	5
	i32.load	20
	local.set	14
	local.get	13
	local.get	14
	i32.sub 
	local.set	15
	local.get	5
	i32.load	16
	local.set	16
	i32.const	2
	local.set	17
	local.get	16
	local.get	17
	i32.shl 
	local.set	18
	local.get	15
	local.get	18
	i32.lt_u
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label218
# %bb.3:
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label220:
	local.get	5
	i32.load	16
	local.set	22
	i32.const	-1
	local.set	23
	local.get	22
	local.get	23
	i32.add 
	local.set	24
	local.get	5
	local.get	24
	i32.store	16
	local.get	22
	i32.eqz
	br_if   	1                               # 1: down to label219
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
	local.get	5
	i32.load	20
	local.set	25
	local.get	5
	i32.load	16
	local.set	26
	i32.const	2
	local.set	27
	local.get	26
	local.get	27
	i32.shl 
	local.set	28
	local.get	25
	local.get	28
	i32.add 
	local.set	29
	local.get	29
	i32.load	0
	local.set	30
	local.get	5
	i32.load	24
	local.set	31
	local.get	5
	i32.load	16
	local.set	32
	i32.const	2
	local.set	33
	local.get	32
	local.get	33
	i32.shl 
	local.set	34
	local.get	31
	local.get	34
	i32.add 
	local.set	35
	local.get	35
	local.get	30
	i32.store	0
	br      	0                               # 0: up to label220
.LBB67_6:
	end_loop
	end_block                               # label219:
	br      	1                               # 1: down to label217
.LBB67_7:
	end_block                               # label218:
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label222:
	local.get	5
	i32.load	16
	local.set	36
	i32.const	-1
	local.set	37
	local.get	36
	local.get	37
	i32.add 
	local.set	38
	local.get	5
	local.get	38
	i32.store	16
	local.get	36
	i32.eqz
	br_if   	1                               # 1: down to label221
# %bb.9:                                #   in Loop: Header=BB67_8 Depth=1
	local.get	5
	i32.load	20
	local.set	39
	i32.const	4
	local.set	40
	local.get	39
	local.get	40
	i32.add 
	local.set	41
	local.get	5
	local.get	41
	i32.store	20
	local.get	39
	i32.load	0
	local.set	42
	local.get	5
	i32.load	24
	local.set	43
	i32.const	4
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	5
	local.get	45
	i32.store	24
	local.get	43
	local.get	42
	i32.store	0
	br      	0                               # 0: up to label222
.LBB67_10:
	end_loop
	end_block                               # label221:
.LBB67_11:
	end_block                               # label217:
	local.get	5
	i32.load	12
	local.set	46
	local.get	5
	local.get	46
	i32.store	28
.LBB67_12:
	end_block                               # label215:
	local.get	5
	i32.load	28
	local.set	47
	local.get	47
	return
	end_function
                                        # -- End function
	.section	.text.wmemset,"",@
	.hidden	wmemset                         # -- Begin function wmemset
	.globl	wmemset
	.type	wmemset,@function
wmemset:                                # @wmemset
	.functype	wmemset (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
	local.get	5
	i32.load	12
	local.set	6
	local.get	5
	local.get	6
	i32.store	0
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label224:
	local.get	5
	i32.load	4
	local.set	7
	i32.const	-1
	local.set	8
	local.get	7
	local.get	8
	i32.add 
	local.set	9
	local.get	5
	local.get	9
	i32.store	4
	local.get	7
	i32.eqz
	br_if   	1                               # 1: down to label223
# %bb.2:                                #   in Loop: Header=BB68_1 Depth=1
	local.get	5
	i32.load	8
	local.set	10
	local.get	5
	i32.load	12
	local.set	11
	i32.const	4
	local.set	12
	local.get	11
	local.get	12
	i32.add 
	local.set	13
	local.get	5
	local.get	13
	i32.store	12
	local.get	11
	local.get	10
	i32.store	0
	br      	0                               # 0: up to label224
.LBB68_3:
	end_loop
	end_block                               # label223:
	local.get	5
	i32.load	0
	local.set	14
	local.get	14
	return
	end_function
                                        # -- End function
	.section	.text.bcopy,"",@
	.hidden	bcopy                           # -- Begin function bcopy
	.globl	bcopy
	.type	bcopy,@function
bcopy:                                  # @bcopy
	.functype	bcopy (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	28
	local.set	6
	local.get	5
	local.get	6
	i32.store	16
	local.get	5
	i32.load	24
	local.set	7
	local.get	5
	local.get	7
	i32.store	12
	local.get	5
	i32.load	16
	local.set	8
	local.get	5
	i32.load	12
	local.set	9
	local.get	8
	local.get	9
	i32.lt_u
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label226
# %bb.1:
	local.get	5
	i32.load	20
	local.set	13
	local.get	5
	i32.load	16
	local.set	14
	local.get	14
	local.get	13
	i32.add 
	local.set	15
	local.get	5
	local.get	15
	i32.store	16
	local.get	5
	i32.load	20
	local.set	16
	local.get	5
	i32.load	12
	local.set	17
	local.get	17
	local.get	16
	i32.add 
	local.set	18
	local.get	5
	local.get	18
	i32.store	12
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label228:
	local.get	5
	i32.load	20
	local.set	19
	local.get	19
	i32.eqz
	br_if   	1                               # 1: down to label227
# %bb.3:                                #   in Loop: Header=BB69_2 Depth=1
	local.get	5
	i32.load	16
	local.set	20
	i32.const	-1
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	5
	local.get	22
	i32.store	16
	local.get	22
	i32.load8_u	0
	local.set	23
	local.get	5
	i32.load	12
	local.set	24
	i32.const	-1
	local.set	25
	local.get	24
	local.get	25
	i32.add 
	local.set	26
	local.get	5
	local.get	26
	i32.store	12
	local.get	26
	local.get	23
	i32.store8	0
# %bb.4:                                #   in Loop: Header=BB69_2 Depth=1
	local.get	5
	i32.load	20
	local.set	27
	i32.const	-1
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	5
	local.get	29
	i32.store	20
	br      	0                               # 0: up to label228
.LBB69_5:
	end_loop
	end_block                               # label227:
	br      	1                               # 1: down to label225
.LBB69_6:
	end_block                               # label226:
	local.get	5
	i32.load	16
	local.set	30
	local.get	5
	i32.load	12
	local.set	31
	local.get	30
	local.get	31
	i32.ne  
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	block   	
	local.get	34
	i32.eqz
	br_if   	0                               # 0: down to label229
# %bb.7:
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label231:
	local.get	5
	i32.load	20
	local.set	35
	local.get	35
	i32.eqz
	br_if   	1                               # 1: down to label230
# %bb.9:                                #   in Loop: Header=BB69_8 Depth=1
	local.get	5
	i32.load	16
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.add 
	local.set	38
	local.get	5
	local.get	38
	i32.store	16
	local.get	36
	i32.load8_u	0
	local.set	39
	local.get	5
	i32.load	12
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.add 
	local.set	42
	local.get	5
	local.get	42
	i32.store	12
	local.get	40
	local.get	39
	i32.store8	0
# %bb.10:                               #   in Loop: Header=BB69_8 Depth=1
	local.get	5
	i32.load	20
	local.set	43
	i32.const	-1
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	5
	local.get	45
	i32.store	20
	br      	0                               # 0: up to label231
.LBB69_11:
	end_loop
	end_block                               # label230:
.LBB69_12:
	end_block                               # label229:
.LBB69_13:
	end_block                               # label225:
	return
	end_function
                                        # -- End function
	.section	.text.rotl64,"",@
	.hidden	rotl64                          # -- Begin function rotl64
	.globl	rotl64
	.type	rotl64,@function
rotl64:                                 # @rotl64
	.functype	rotl64 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	8
	local.get	4
	local.get	1
	i32.store	4
	local.get	4
	i64.load	8
	local.set	5
	local.get	4
	i32.load	4
	local.set	6
	local.get	6
	local.set	7
	local.get	7
	i64.extend_i32_u
	local.set	8
	local.get	5
	local.get	8
	i64.shl 
	local.set	9
	local.get	4
	i64.load	8
	local.set	10
	local.get	4
	i32.load	4
	local.set	11
	i32.const	64
	local.set	12
	local.get	12
	local.get	11
	i32.sub 
	local.set	13
	local.get	13
	local.set	14
	local.get	14
	i64.extend_i32_u
	local.set	15
	local.get	10
	local.get	15
	i64.shr_u
	local.set	16
	local.get	9
	local.get	16
	i64.or  
	local.set	17
	i64.const	-1
	local.set	18
	local.get	17
	local.get	18
	i64.and 
	local.set	19
	local.get	19
	return
	end_function
                                        # -- End function
	.section	.text.rotr64,"",@
	.hidden	rotr64                          # -- Begin function rotr64
	.globl	rotr64
	.type	rotr64,@function
rotr64:                                 # @rotr64
	.functype	rotr64 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	8
	local.get	4
	local.get	1
	i32.store	4
	local.get	4
	i64.load	8
	local.set	5
	local.get	4
	i32.load	4
	local.set	6
	local.get	6
	local.set	7
	local.get	7
	i64.extend_i32_u
	local.set	8
	local.get	5
	local.get	8
	i64.shr_u
	local.set	9
	local.get	4
	i64.load	8
	local.set	10
	local.get	4
	i32.load	4
	local.set	11
	i32.const	64
	local.set	12
	local.get	12
	local.get	11
	i32.sub 
	local.set	13
	local.get	13
	local.set	14
	local.get	14
	i64.extend_i32_u
	local.set	15
	local.get	10
	local.get	15
	i64.shl 
	local.set	16
	local.get	9
	local.get	16
	i64.or  
	local.set	17
	i64.const	-1
	local.set	18
	local.get	17
	local.get	18
	i64.and 
	local.set	19
	local.get	19
	return
	end_function
                                        # -- End function
	.section	.text.rotl32,"",@
	.hidden	rotl32                          # -- Begin function rotl32
	.globl	rotl32
	.type	rotl32,@function
rotl32:                                 # @rotl32
	.functype	rotl32 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	4
	i32.load	8
	local.set	6
	local.get	5
	local.get	6
	i32.shl 
	local.set	7
	local.get	4
	i32.load	12
	local.set	8
	local.get	4
	i32.load	8
	local.set	9
	i32.const	32
	local.set	10
	local.get	10
	local.get	9
	i32.sub 
	local.set	11
	local.get	8
	local.get	11
	i32.shr_u
	local.set	12
	local.get	7
	local.get	12
	i32.or  
	local.set	13
	i32.const	-1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	local.get	15
	return
	end_function
                                        # -- End function
	.section	.text.rotr32,"",@
	.hidden	rotr32                          # -- Begin function rotr32
	.globl	rotr32
	.type	rotr32,@function
rotr32:                                 # @rotr32
	.functype	rotr32 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	4
	i32.load	8
	local.set	6
	local.get	5
	local.get	6
	i32.shr_u
	local.set	7
	local.get	4
	i32.load	12
	local.set	8
	local.get	4
	i32.load	8
	local.set	9
	i32.const	32
	local.set	10
	local.get	10
	local.get	9
	i32.sub 
	local.set	11
	local.get	8
	local.get	11
	i32.shl 
	local.set	12
	local.get	7
	local.get	12
	i32.or  
	local.set	13
	i32.const	-1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	local.get	15
	return
	end_function
                                        # -- End function
	.section	.text.rotl_sz,"",@
	.hidden	rotl_sz                         # -- Begin function rotl_sz
	.globl	rotl_sz
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
	.functype	rotl_sz (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	4
	i32.load	8
	local.set	6
	local.get	5
	local.get	6
	i32.shl 
	local.set	7
	local.get	4
	i32.load	12
	local.set	8
	local.get	4
	i32.load	8
	local.set	9
	i32.const	32
	local.set	10
	local.get	10
	local.get	9
	i32.sub 
	local.set	11
	local.get	8
	local.get	11
	i32.shr_u
	local.set	12
	local.get	7
	local.get	12
	i32.or  
	local.set	13
	i32.const	-1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	local.get	15
	return
	end_function
                                        # -- End function
	.section	.text.rotr_sz,"",@
	.hidden	rotr_sz                         # -- Begin function rotr_sz
	.globl	rotr_sz
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
	.functype	rotr_sz (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	4
	i32.load	8
	local.set	6
	local.get	5
	local.get	6
	i32.shr_u
	local.set	7
	local.get	4
	i32.load	12
	local.set	8
	local.get	4
	i32.load	8
	local.set	9
	i32.const	32
	local.set	10
	local.get	10
	local.get	9
	i32.sub 
	local.set	11
	local.get	8
	local.get	11
	i32.shl 
	local.set	12
	local.get	7
	local.get	12
	i32.or  
	local.set	13
	i32.const	-1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	local.get	15
	return
	end_function
                                        # -- End function
	.section	.text.rotl16,"",@
	.hidden	rotl16                          # -- Begin function rotl16
	.globl	rotl16
	.type	rotl16,@function
rotl16:                                 # @rotl16
	.functype	rotl16 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store16	14
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load16_u	14
	local.set	5
	i32.const	65535
	local.set	6
	local.get	5
	local.get	6
	i32.and 
	local.set	7
	local.get	4
	i32.load	8
	local.set	8
	local.get	7
	local.get	8
	i32.shl 
	local.set	9
	local.get	4
	i32.load16_u	14
	local.set	10
	i32.const	65535
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	4
	i32.load	8
	local.set	13
	i32.const	16
	local.set	14
	local.get	14
	local.get	13
	i32.sub 
	local.set	15
	local.get	12
	local.get	15
	i32.shr_u
	local.set	16
	local.get	9
	local.get	16
	i32.or  
	local.set	17
	i32.const	65535
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	i32.const	65535
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	local.get	21
	return
	end_function
                                        # -- End function
	.section	.text.rotr16,"",@
	.hidden	rotr16                          # -- Begin function rotr16
	.globl	rotr16
	.type	rotr16,@function
rotr16:                                 # @rotr16
	.functype	rotr16 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store16	14
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load16_u	14
	local.set	5
	i32.const	65535
	local.set	6
	local.get	5
	local.get	6
	i32.and 
	local.set	7
	local.get	4
	i32.load	8
	local.set	8
	local.get	7
	local.get	8
	i32.shr_u
	local.set	9
	local.get	4
	i32.load16_u	14
	local.set	10
	i32.const	65535
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	4
	i32.load	8
	local.set	13
	i32.const	16
	local.set	14
	local.get	14
	local.get	13
	i32.sub 
	local.set	15
	local.get	12
	local.get	15
	i32.shl 
	local.set	16
	local.get	9
	local.get	16
	i32.or  
	local.set	17
	i32.const	65535
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	i32.const	65535
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	local.get	21
	return
	end_function
                                        # -- End function
	.section	.text.rotl8,"",@
	.hidden	rotl8                           # -- Begin function rotl8
	.globl	rotl8
	.type	rotl8,@function
rotl8:                                  # @rotl8
	.functype	rotl8 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store8	15
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load8_u	15
	local.set	5
	i32.const	255
	local.set	6
	local.get	5
	local.get	6
	i32.and 
	local.set	7
	local.get	4
	i32.load	8
	local.set	8
	local.get	7
	local.get	8
	i32.shl 
	local.set	9
	local.get	4
	i32.load8_u	15
	local.set	10
	i32.const	255
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	4
	i32.load	8
	local.set	13
	i32.const	8
	local.set	14
	local.get	14
	local.get	13
	i32.sub 
	local.set	15
	local.get	12
	local.get	15
	i32.shr_u
	local.set	16
	local.get	9
	local.get	16
	i32.or  
	local.set	17
	i32.const	255
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	i32.const	255
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	local.get	21
	return
	end_function
                                        # -- End function
	.section	.text.rotr8,"",@
	.hidden	rotr8                           # -- Begin function rotr8
	.globl	rotr8
	.type	rotr8,@function
rotr8:                                  # @rotr8
	.functype	rotr8 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store8	15
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load8_u	15
	local.set	5
	i32.const	255
	local.set	6
	local.get	5
	local.get	6
	i32.and 
	local.set	7
	local.get	4
	i32.load	8
	local.set	8
	local.get	7
	local.get	8
	i32.shr_u
	local.set	9
	local.get	4
	i32.load8_u	15
	local.set	10
	i32.const	255
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	4
	i32.load	8
	local.set	13
	i32.const	8
	local.set	14
	local.get	14
	local.get	13
	i32.sub 
	local.set	15
	local.get	12
	local.get	15
	i32.shl 
	local.set	16
	local.get	9
	local.get	16
	i32.or  
	local.set	17
	i32.const	255
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	i32.const	255
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	local.get	21
	return
	end_function
                                        # -- End function
	.section	.text.bswap_16,"",@
	.hidden	bswap_16                        # -- Begin function bswap_16
	.globl	bswap_16
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
	.functype	bswap_16 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	255
	local.set	4
	local.get	3
	local.get	4
	i32.store16	12
	local.get	3
	i32.load16_u	14
	local.set	5
	i32.const	65535
	local.set	6
	local.get	5
	local.get	6
	i32.and 
	local.set	7
	local.get	3
	i32.load16_u	12
	local.set	8
	i32.const	65535
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	i32.const	8
	local.set	11
	local.get	10
	local.get	11
	i32.shl 
	local.set	12
	local.get	7
	local.get	12
	i32.and 
	local.set	13
	i32.const	8
	local.set	14
	local.get	13
	local.get	14
	i32.shr_s
	local.set	15
	local.get	3
	i32.load16_u	14
	local.set	16
	i32.const	65535
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	3
	i32.load16_u	12
	local.set	19
	i32.const	65535
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	i32.const	0
	local.set	22
	local.get	21
	local.get	22
	i32.shl 
	local.set	23
	local.get	18
	local.get	23
	i32.and 
	local.set	24
	i32.const	8
	local.set	25
	local.get	24
	local.get	25
	i32.shl 
	local.set	26
	local.get	15
	local.get	26
	i32.or  
	local.set	27
	i32.const	65535
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	29
	return
	end_function
                                        # -- End function
	.section	.text.bswap_32,"",@
	.hidden	bswap_32                        # -- Begin function bswap_32
	.globl	bswap_32
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
	.functype	bswap_32 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	i32.const	255
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
	local.get	3
	i32.load	12
	local.set	5
	local.get	3
	i32.load	8
	local.set	6
	i32.const	24
	local.set	7
	local.get	6
	local.get	7
	i32.shl 
	local.set	8
	local.get	5
	local.get	8
	i32.and 
	local.set	9
	i32.const	24
	local.set	10
	local.get	9
	local.get	10
	i32.shr_u
	local.set	11
	local.get	3
	i32.load	12
	local.set	12
	local.get	3
	i32.load	8
	local.set	13
	i32.const	16
	local.set	14
	local.get	13
	local.get	14
	i32.shl 
	local.set	15
	local.get	12
	local.get	15
	i32.and 
	local.set	16
	i32.const	8
	local.set	17
	local.get	16
	local.get	17
	i32.shr_u
	local.set	18
	local.get	11
	local.get	18
	i32.or  
	local.set	19
	local.get	3
	i32.load	12
	local.set	20
	local.get	3
	i32.load	8
	local.set	21
	i32.const	8
	local.set	22
	local.get	21
	local.get	22
	i32.shl 
	local.set	23
	local.get	20
	local.get	23
	i32.and 
	local.set	24
	i32.const	8
	local.set	25
	local.get	24
	local.get	25
	i32.shl 
	local.set	26
	local.get	19
	local.get	26
	i32.or  
	local.set	27
	local.get	3
	i32.load	12
	local.set	28
	local.get	3
	i32.load	8
	local.set	29
	i32.const	0
	local.set	30
	local.get	29
	local.get	30
	i32.shl 
	local.set	31
	local.get	28
	local.get	31
	i32.and 
	local.set	32
	i32.const	24
	local.set	33
	local.get	32
	local.get	33
	i32.shl 
	local.set	34
	local.get	27
	local.get	34
	i32.or  
	local.set	35
	local.get	35
	return
	end_function
                                        # -- End function
	.section	.text.bswap_64,"",@
	.hidden	bswap_64                        # -- Begin function bswap_64
	.globl	bswap_64
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
	.functype	bswap_64 (i64) -> (i64)
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	8
	i64.const	255
	local.set	4
	local.get	3
	local.get	4
	i64.store	0
	local.get	3
	i64.load	8
	local.set	5
	local.get	3
	i64.load	0
	local.set	6
	i64.const	56
	local.set	7
	local.get	6
	local.get	7
	i64.shl 
	local.set	8
	local.get	5
	local.get	8
	i64.and 
	local.set	9
	i64.const	56
	local.set	10
	local.get	9
	local.get	10
	i64.shr_u
	local.set	11
	local.get	3
	i64.load	8
	local.set	12
	local.get	3
	i64.load	0
	local.set	13
	i64.const	48
	local.set	14
	local.get	13
	local.get	14
	i64.shl 
	local.set	15
	local.get	12
	local.get	15
	i64.and 
	local.set	16
	i64.const	40
	local.set	17
	local.get	16
	local.get	17
	i64.shr_u
	local.set	18
	local.get	11
	local.get	18
	i64.or  
	local.set	19
	local.get	3
	i64.load	8
	local.set	20
	local.get	3
	i64.load	0
	local.set	21
	i64.const	40
	local.set	22
	local.get	21
	local.get	22
	i64.shl 
	local.set	23
	local.get	20
	local.get	23
	i64.and 
	local.set	24
	i64.const	24
	local.set	25
	local.get	24
	local.get	25
	i64.shr_u
	local.set	26
	local.get	19
	local.get	26
	i64.or  
	local.set	27
	local.get	3
	i64.load	8
	local.set	28
	local.get	3
	i64.load	0
	local.set	29
	i64.const	32
	local.set	30
	local.get	29
	local.get	30
	i64.shl 
	local.set	31
	local.get	28
	local.get	31
	i64.and 
	local.set	32
	i64.const	8
	local.set	33
	local.get	32
	local.get	33
	i64.shr_u
	local.set	34
	local.get	27
	local.get	34
	i64.or  
	local.set	35
	local.get	3
	i64.load	8
	local.set	36
	local.get	3
	i64.load	0
	local.set	37
	i64.const	24
	local.set	38
	local.get	37
	local.get	38
	i64.shl 
	local.set	39
	local.get	36
	local.get	39
	i64.and 
	local.set	40
	i64.const	8
	local.set	41
	local.get	40
	local.get	41
	i64.shl 
	local.set	42
	local.get	35
	local.get	42
	i64.or  
	local.set	43
	local.get	3
	i64.load	8
	local.set	44
	local.get	3
	i64.load	0
	local.set	45
	i64.const	16
	local.set	46
	local.get	45
	local.get	46
	i64.shl 
	local.set	47
	local.get	44
	local.get	47
	i64.and 
	local.set	48
	i64.const	24
	local.set	49
	local.get	48
	local.get	49
	i64.shl 
	local.set	50
	local.get	43
	local.get	50
	i64.or  
	local.set	51
	local.get	3
	i64.load	8
	local.set	52
	local.get	3
	i64.load	0
	local.set	53
	i64.const	8
	local.set	54
	local.get	53
	local.get	54
	i64.shl 
	local.set	55
	local.get	52
	local.get	55
	i64.and 
	local.set	56
	i64.const	40
	local.set	57
	local.get	56
	local.get	57
	i64.shl 
	local.set	58
	local.get	51
	local.get	58
	i64.or  
	local.set	59
	local.get	3
	i64.load	8
	local.set	60
	local.get	3
	i64.load	0
	local.set	61
	i64.const	0
	local.set	62
	local.get	61
	local.get	62
	i64.shl 
	local.set	63
	local.get	60
	local.get	63
	i64.and 
	local.set	64
	i64.const	56
	local.set	65
	local.get	64
	local.get	65
	i64.shl 
	local.set	66
	local.get	59
	local.get	66
	i64.or  
	local.set	67
	local.get	67
	return
	end_function
                                        # -- End function
	.section	.text.ffs,"",@
	.hidden	ffs                             # -- Begin function ffs
	.globl	ffs
	.type	ffs,@function
ffs:                                    # @ffs
	.functype	ffs (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	8
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	4
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label234:
	local.get	3
	i32.load	4
	local.set	5
	i32.const	32
	local.set	6
	local.get	5
	local.get	6
	i32.lt_u
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	9
	i32.eqz
	br_if   	1                               # 1: down to label233
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	local.get	3
	i32.load	8
	local.set	10
	local.get	3
	i32.load	4
	local.set	11
	i32.const	1
	local.set	12
	local.get	12
	local.get	11
	i32.shl 
	local.set	13
	local.get	10
	local.get	13
	i32.and 
	local.set	14
	block   	
	local.get	14
	i32.eqz
	br_if   	0                               # 0: down to label235
# %bb.3:
	local.get	3
	i32.load	4
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.add 
	local.set	17
	local.get	3
	local.get	17
	i32.store	12
	br      	3                               # 3: down to label232
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	end_block                               # label235:
# %bb.5:                                #   in Loop: Header=BB83_1 Depth=1
	local.get	3
	i32.load	4
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.add 
	local.set	20
	local.get	3
	local.get	20
	i32.store	4
	br      	0                               # 0: up to label234
.LBB83_6:
	end_loop
	end_block                               # label233:
	i32.const	0
	local.set	21
	local.get	3
	local.get	21
	i32.store	12
.LBB83_7:
	end_block                               # label232:
	local.get	3
	i32.load	12
	local.set	22
	local.get	22
	return
	end_function
                                        # -- End function
	.section	.text.libiberty_ffs,"",@
	.hidden	libiberty_ffs                   # -- Begin function libiberty_ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
	.functype	libiberty_ffs (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	8
	local.get	3
	i32.load	8
	local.set	4
	block   	
	block   	
	local.get	4
	br_if   	0                               # 0: down to label237
# %bb.1:
	i32.const	0
	local.set	5
	local.get	3
	local.get	5
	i32.store	12
	br      	1                               # 1: down to label236
.LBB84_2:
	end_block                               # label237:
	i32.const	1
	local.set	6
	local.get	3
	local.get	6
	i32.store	4
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label239:
	local.get	3
	i32.load	8
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	i32.const	0
	local.set	10
	local.get	9
	local.get	10
	i32.ne  
	local.set	11
	i32.const	-1
	local.set	12
	local.get	11
	local.get	12
	i32.xor 
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	local.get	15
	i32.eqz
	br_if   	1                               # 1: down to label238
# %bb.4:                                #   in Loop: Header=BB84_3 Depth=1
	local.get	3
	i32.load	8
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.shr_s
	local.set	18
	local.get	3
	local.get	18
	i32.store	8
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
	local.get	3
	i32.load	4
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.add 
	local.set	21
	local.get	3
	local.get	21
	i32.store	4
	br      	0                               # 0: up to label239
.LBB84_6:
	end_loop
	end_block                               # label238:
	local.get	3
	i32.load	4
	local.set	22
	local.get	3
	local.get	22
	i32.store	12
.LBB84_7:
	end_block                               # label236:
	local.get	3
	i32.load	12
	local.set	23
	local.get	23
	return
	end_function
                                        # -- End function
	.section	.text.gl_isinff,"",@
	.hidden	gl_isinff                       # -- Begin function gl_isinff
	.globl	gl_isinff
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
	.functype	gl_isinff (f32) -> (i32)
	.local  	i32, i32, i32, f32, f32, i32, i32, i32, i32, i32, f32, f32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	f32.store	12
	local.get	3
	f32.load	12
	local.set	4
	f32.const	-0x1.fffffep127
	local.set	5
	local.get	4
	local.get	5
	f32.lt  
	local.set	6
	i32.const	1
	local.set	7
	i32.const	1
	local.set	8
	local.get	6
	local.get	8
	i32.and 
	local.set	9
	local.get	7
	local.set	10
	block   	
	local.get	9
	br_if   	0                               # 0: down to label240
# %bb.1:
	local.get	3
	f32.load	12
	local.set	11
	f32.const	0x1.fffffep127
	local.set	12
	local.get	11
	local.get	12
	f32.gt  
	local.set	13
	local.get	13
	local.set	10
.LBB85_2:
	end_block                               # label240:
	local.get	10
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	return
	end_function
                                        # -- End function
	.section	.text.gl_isinfd,"",@
	.hidden	gl_isinfd                       # -- Begin function gl_isinfd
	.globl	gl_isinfd
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
	.functype	gl_isinfd (f64) -> (i32)
	.local  	i32, i32, i32, f64, f64, i32, i32, i32, i32, i32, f64, f64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	f64.store	8
	local.get	3
	f64.load	8
	local.set	4
	f64.const	-0x1.fffffffffffffp1023
	local.set	5
	local.get	4
	local.get	5
	f64.lt  
	local.set	6
	i32.const	1
	local.set	7
	i32.const	1
	local.set	8
	local.get	6
	local.get	8
	i32.and 
	local.set	9
	local.get	7
	local.set	10
	block   	
	local.get	9
	br_if   	0                               # 0: down to label241
# %bb.1:
	local.get	3
	f64.load	8
	local.set	11
	f64.const	0x1.fffffffffffffp1023
	local.set	12
	local.get	11
	local.get	12
	f64.gt  
	local.set	13
	local.get	13
	local.set	10
.LBB86_2:
	end_block                               # label241:
	local.get	10
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	return
	end_function
                                        # -- End function
	.section	.text.gl_isinfl,"",@
	.hidden	gl_isinfl                       # -- Begin function gl_isinfl
	.globl	gl_isinfl
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
	.functype	gl_isinfl (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i64.store	0
	local.get	4
	local.get	1
	i64.store	8
	local.get	4
	i64.load	8
	local.set	5
	local.get	4
	i64.load	0
	local.set	6
	i64.const	-281474976710657
	local.set	7
	i64.const	-1
	local.set	8
	local.get	6
	local.get	5
	local.get	8
	local.get	7
	call	__lttf2
	local.set	9
	i32.const	0
	local.set	10
	local.get	9
	local.get	10
	i32.lt_s
	local.set	11
	i32.const	1
	local.set	12
	i32.const	1
	local.set	13
	local.get	11
	local.get	13
	i32.and 
	local.set	14
	local.get	12
	local.set	15
	block   	
	local.get	14
	br_if   	0                               # 0: down to label242
# %bb.1:
	local.get	4
	i64.load	8
	local.set	16
	local.get	4
	i64.load	0
	local.set	17
	i64.const	9223090561878065151
	local.set	18
	i64.const	-1
	local.set	19
	local.get	17
	local.get	16
	local.get	19
	local.get	18
	call	__gttf2
	local.set	20
	i32.const	0
	local.set	21
	local.get	20
	local.get	21
	i32.gt_s
	local.set	22
	local.get	22
	local.set	15
.LBB87_2:
	end_block                               # label242:
	local.get	15
	local.set	23
	i32.const	1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	i32.const	16
	local.set	26
	local.get	4
	local.get	26
	i32.add 
	local.set	27
	local.get	27
	global.set	__stack_pointer
	local.get	25
	return
	end_function
                                        # -- End function
	.section	.text._Qp_itoq,"",@
	.hidden	_Qp_itoq                        # -- Begin function _Qp_itoq
	.globl	_Qp_itoq
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
	.functype	_Qp_itoq (i32, i32) -> ()
	.local  	i32, i32, i32, i32, f64, i32, i32, i32, i32, i64, i64, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	28
	local.get	4
	local.get	1
	i32.store	24
	local.get	4
	i32.load	24
	local.set	5
	local.get	5
	f64.convert_i32_s
	local.set	6
	i32.const	8
	local.set	7
	local.get	4
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	local.get	6
	call	__extenddftf2
	i32.const	16
	local.set	9
	local.get	4
	local.get	9
	i32.add 
	local.set	10
	local.get	10
	i64.load	0
	local.set	11
	local.get	4
	i64.load	8
	local.set	12
	local.get	4
	i32.load	28
	local.set	13
	local.get	13
	local.get	11
	i64.store	8
	local.get	13
	local.get	12
	i64.store	0
	i32.const	32
	local.set	14
	local.get	4
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	global.set	__stack_pointer
	return
	end_function
                                        # -- End function
	.section	.text.ldexpf,"",@
	.hidden	ldexpf                          # -- Begin function ldexpf
	.globl	ldexpf
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
	.functype	ldexpf (f32, i32) -> (f32)
	.local  	i32, i32, i32, f32, i32, i32, i32, i32, i32, i32, i32, f32, f32, f32, f32, i32, i32, i32, i32, i32, i32, f32, f32, i32, i32, f32, i32, i32, i32, f32, f32, f32, i32, i32, i32, i32, f32, f32, f32, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	f32.load	12
	local.set	5
	local.get	5
	i32.reinterpret_f32
	local.set	6
	i32.const	2147483647
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	i32.const	2139095040
	local.set	9
	local.get	8
	local.get	9
	i32.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	local.get	12
	br_if   	0                               # 0: down to label243
# %bb.1:
	local.get	4
	f32.load	12
	local.set	13
	local.get	4
	f32.load	12
	local.set	14
	local.get	13
	local.get	14
	f32.add 
	local.set	15
	local.get	4
	f32.load	12
	local.set	16
	local.get	15
	local.get	16
	f32.eq  
	local.set	17
	i32.const	1
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	local.get	19
	br_if   	0                               # 0: down to label243
# %bb.2:
	local.get	4
	i32.load	8
	local.set	20
	i32.const	0
	local.set	21
	local.get	20
	local.get	21
	i32.lt_s
	local.set	22
	f32.const	0x1p-1
	local.set	23
	f32.const	0x1p1
	local.set	24
	i32.const	1
	local.set	25
	local.get	22
	local.get	25
	i32.and 
	local.set	26
	local.get	23
	local.get	24
	local.get	26
	f32.select
	local.set	27
	local.get	4
	local.get	27
	f32.store	4
.LBB89_3:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label244:
	local.get	4
	i32.load	8
	local.set	28
	i32.const	2
	local.set	29
	local.get	28
	local.get	29
	i32.rem_s
	local.set	30
	block   	
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label245
# %bb.4:                                #   in Loop: Header=BB89_3 Depth=1
	local.get	4
	f32.load	4
	local.set	31
	local.get	4
	f32.load	12
	local.set	32
	local.get	32
	local.get	31
	f32.mul 
	local.set	33
	local.get	4
	local.get	33
	f32.store	12
.LBB89_5:                               #   in Loop: Header=BB89_3 Depth=1
	end_block                               # label245:
	local.get	4
	i32.load	8
	local.set	34
	i32.const	2
	local.set	35
	local.get	34
	local.get	35
	i32.div_s
	local.set	36
	local.get	4
	local.get	36
	i32.store	8
	local.get	4
	i32.load	8
	local.set	37
	block   	
	block   	
	local.get	37
	br_if   	0                               # 0: down to label247
# %bb.6:
	br      	1                               # 1: down to label246
.LBB89_7:                               #   in Loop: Header=BB89_3 Depth=1
	end_block                               # label247:
	local.get	4
	f32.load	4
	local.set	38
	local.get	4
	f32.load	4
	local.set	39
	local.get	38
	local.get	39
	f32.mul 
	local.set	40
	local.get	4
	local.get	40
	f32.store	4
	br      	1                               # 1: up to label244
.LBB89_8:
	end_block                               # label246:
	end_loop
.LBB89_9:
	end_block                               # label243:
	local.get	4
	f32.load	12
	local.set	41
	local.get	41
	return
	end_function
                                        # -- End function
	.section	.text.ldexp,"",@
	.hidden	ldexp                           # -- Begin function ldexp
	.globl	ldexp
	.type	ldexp,@function
ldexp:                                  # @ldexp
	.functype	ldexp (f64, i32) -> (f64)
	.local  	i32, i32, i32, f64, i64, i64, i64, i64, i32, i32, i32, f64, f64, f64, f64, i32, i32, i32, i32, i32, i32, f64, f64, i32, i32, f64, i32, i32, i32, f64, f64, f64, i32, i32, i32, i32, f64, f64, f64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f64.store	24
	local.get	4
	local.get	1
	i32.store	20
	local.get	4
	f64.load	24
	local.set	5
	local.get	5
	i64.reinterpret_f64
	local.set	6
	i64.const	9223372036854775807
	local.set	7
	local.get	6
	local.get	7
	i64.and 
	local.set	8
	i64.const	9218868437227405312
	local.set	9
	local.get	8
	local.get	9
	i64.gt_s
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	local.get	12
	br_if   	0                               # 0: down to label248
# %bb.1:
	local.get	4
	f64.load	24
	local.set	13
	local.get	4
	f64.load	24
	local.set	14
	local.get	13
	local.get	14
	f64.add 
	local.set	15
	local.get	4
	f64.load	24
	local.set	16
	local.get	15
	local.get	16
	f64.eq  
	local.set	17
	i32.const	1
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	local.get	19
	br_if   	0                               # 0: down to label248
# %bb.2:
	local.get	4
	i32.load	20
	local.set	20
	i32.const	0
	local.set	21
	local.get	20
	local.get	21
	i32.lt_s
	local.set	22
	f64.const	0x1p-1
	local.set	23
	f64.const	0x1p1
	local.set	24
	i32.const	1
	local.set	25
	local.get	22
	local.get	25
	i32.and 
	local.set	26
	local.get	23
	local.get	24
	local.get	26
	f64.select
	local.set	27
	local.get	4
	local.get	27
	f64.store	8
.LBB90_3:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label249:
	local.get	4
	i32.load	20
	local.set	28
	i32.const	2
	local.set	29
	local.get	28
	local.get	29
	i32.rem_s
	local.set	30
	block   	
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label250
# %bb.4:                                #   in Loop: Header=BB90_3 Depth=1
	local.get	4
	f64.load	8
	local.set	31
	local.get	4
	f64.load	24
	local.set	32
	local.get	32
	local.get	31
	f64.mul 
	local.set	33
	local.get	4
	local.get	33
	f64.store	24
.LBB90_5:                               #   in Loop: Header=BB90_3 Depth=1
	end_block                               # label250:
	local.get	4
	i32.load	20
	local.set	34
	i32.const	2
	local.set	35
	local.get	34
	local.get	35
	i32.div_s
	local.set	36
	local.get	4
	local.get	36
	i32.store	20
	local.get	4
	i32.load	20
	local.set	37
	block   	
	block   	
	local.get	37
	br_if   	0                               # 0: down to label252
# %bb.6:
	br      	1                               # 1: down to label251
.LBB90_7:                               #   in Loop: Header=BB90_3 Depth=1
	end_block                               # label252:
	local.get	4
	f64.load	8
	local.set	38
	local.get	4
	f64.load	8
	local.set	39
	local.get	38
	local.get	39
	f64.mul 
	local.set	40
	local.get	4
	local.get	40
	f64.store	8
	br      	1                               # 1: up to label249
.LBB90_8:
	end_block                               # label251:
	end_loop
.LBB90_9:
	end_block                               # label248:
	local.get	4
	f64.load	24
	local.set	41
	local.get	41
	return
	end_function
                                        # -- End function
	.section	.text.ldexpl,"",@
	.hidden	ldexpl                          # -- Begin function ldexpl
	.globl	ldexpl
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
	.functype	ldexpl (i32, i64, i64, i32) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	96
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	global.set	__stack_pointer
	local.get	6
	local.get	1
	i64.store	80
	local.get	6
	local.get	2
	i64.store	88
	local.get	6
	local.get	3
	i32.store	76
	local.get	6
	i64.load	88
	local.set	7
	local.get	6
	i64.load	80
	local.set	8
	i64.const	0
	local.set	9
	local.get	8
	local.get	9
	i64.ne  
	local.set	10
	i64.const	9223372036854775807
	local.set	11
	local.get	7
	local.get	11
	i64.and 
	local.set	12
	i64.const	9223090561878065152
	local.set	13
	local.get	12
	local.get	13
	i64.eq  
	local.set	14
	local.get	12
	local.get	13
	i64.gt_s
	local.set	15
	local.get	10
	local.get	15
	local.get	14
	i32.select
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	block   	
	local.get	18
	br_if   	0                               # 0: down to label253
# %bb.1:
	local.get	6
	i64.load	88
	local.set	19
	local.get	6
	i64.load	80
	local.set	20
	i32.const	32
	local.set	21
	local.get	6
	local.get	21
	i32.add 
	local.set	22
	local.get	22
	local.get	20
	local.get	19
	local.get	20
	local.get	19
	call	__addtf3
	i32.const	40
	local.set	23
	local.get	6
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	i64.load	0
	local.set	25
	local.get	6
	i64.load	32
	local.set	26
	local.get	26
	local.get	25
	local.get	20
	local.get	19
	call	__eqtf2
	local.set	27
	local.get	27
	i32.eqz
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	local.get	30
	br_if   	0                               # 0: down to label253
# %bb.2:
	local.get	6
	i32.load	76
	local.set	31
	i32.const	0
	local.set	32
	local.get	31
	local.get	32
	i32.lt_s
	local.set	33
	i64.const	4611686018427387904
	local.set	34
	i64.const	4611123068473966592
	local.set	35
	local.get	35
	local.get	34
	local.get	33
	i64.select
	local.set	36
	i64.const	0
	local.set	37
	local.get	6
	local.get	37
	i64.store	48
	local.get	6
	local.get	36
	i64.store	56
.LBB91_3:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label254:
	local.get	6
	i32.load	76
	local.set	38
	i32.const	2
	local.set	39
	local.get	38
	local.get	39
	i32.rem_s
	local.set	40
	block   	
	local.get	40
	i32.eqz
	br_if   	0                               # 0: down to label255
# %bb.4:                                #   in Loop: Header=BB91_3 Depth=1
	local.get	6
	i64.load	56
	local.set	41
	local.get	6
	i64.load	48
	local.set	42
	local.get	6
	i64.load	88
	local.set	43
	local.get	6
	i64.load	80
	local.set	44
	i32.const	16
	local.set	45
	local.get	6
	local.get	45
	i32.add 
	local.set	46
	local.get	46
	local.get	44
	local.get	43
	local.get	42
	local.get	41
	call	__multf3
	i32.const	24
	local.set	47
	local.get	6
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	i64.load	0
	local.set	49
	local.get	6
	i64.load	16
	local.set	50
	local.get	6
	local.get	49
	i64.store	88
	local.get	6
	local.get	50
	i64.store	80
.LBB91_5:                               #   in Loop: Header=BB91_3 Depth=1
	end_block                               # label255:
	local.get	6
	i32.load	76
	local.set	51
	i32.const	2
	local.set	52
	local.get	51
	local.get	52
	i32.div_s
	local.set	53
	local.get	6
	local.get	53
	i32.store	76
	local.get	6
	i32.load	76
	local.set	54
	block   	
	block   	
	local.get	54
	br_if   	0                               # 0: down to label257
# %bb.6:
	br      	1                               # 1: down to label256
.LBB91_7:                               #   in Loop: Header=BB91_3 Depth=1
	end_block                               # label257:
	local.get	6
	i64.load	56
	local.set	55
	local.get	6
	i64.load	48
	local.set	56
	local.get	6
	local.get	56
	local.get	55
	local.get	56
	local.get	55
	call	__multf3
	i32.const	8
	local.set	57
	local.get	6
	local.get	57
	i32.add 
	local.set	58
	local.get	58
	i64.load	0
	local.set	59
	local.get	6
	i64.load	0
	local.set	60
	local.get	6
	local.get	59
	i64.store	56
	local.get	6
	local.get	60
	i64.store	48
	br      	1                               # 1: up to label254
.LBB91_8:
	end_block                               # label256:
	end_loop
.LBB91_9:
	end_block                               # label253:
	local.get	6
	i64.load	80
	local.set	61
	local.get	6
	i64.load	88
	local.set	62
	local.get	0
	local.get	62
	i64.store	8
	local.get	0
	local.get	61
	i64.store	0
	i32.const	96
	local.set	63
	local.get	6
	local.get	63
	i32.add 
	local.set	64
	local.get	64
	global.set	__stack_pointer
	return
	end_function
                                        # -- End function
	.section	.text.memxor,"",@
	.hidden	memxor                          # -- Begin function memxor
	.globl	memxor
	.type	memxor,@function
memxor:                                 # @memxor
	.functype	memxor (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	24
	local.set	6
	local.get	5
	local.get	6
	i32.store	16
	local.get	5
	i32.load	28
	local.set	7
	local.get	5
	local.get	7
	i32.store	12
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label259:
	local.get	5
	i32.load	20
	local.set	8
	i32.const	0
	local.set	9
	local.get	8
	local.get	9
	i32.gt_u
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	12
	i32.eqz
	br_if   	1                               # 1: down to label258
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	local.get	5
	i32.load	16
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.add 
	local.set	15
	local.get	5
	local.get	15
	i32.store	16
	local.get	13
	i32.load8_u	0
	local.set	16
	i32.const	24
	local.set	17
	local.get	16
	local.get	17
	i32.shl 
	local.set	18
	local.get	18
	local.get	17
	i32.shr_s
	local.set	19
	local.get	5
	i32.load	12
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	5
	local.get	22
	i32.store	12
	local.get	20
	i32.load8_u	0
	local.set	23
	i32.const	24
	local.set	24
	local.get	23
	local.get	24
	i32.shl 
	local.set	25
	local.get	25
	local.get	24
	i32.shr_s
	local.set	26
	local.get	26
	local.get	19
	i32.xor 
	local.set	27
	local.get	20
	local.get	27
	i32.store8	0
# %bb.3:                                #   in Loop: Header=BB92_1 Depth=1
	local.get	5
	i32.load	20
	local.set	28
	i32.const	-1
	local.set	29
	local.get	28
	local.get	29
	i32.add 
	local.set	30
	local.get	5
	local.get	30
	i32.store	20
	br      	0                               # 0: up to label259
.LBB92_4:
	end_loop
	end_block                               # label258:
	local.get	5
	i32.load	28
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.strncat,"",@
	.hidden	strncat                         # -- Begin function strncat
	.globl	strncat
	.type	strncat,@function
strncat:                                # @strncat
	.functype	strncat (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	global.set	__stack_pointer
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
	local.get	5
	i32.load	12
	local.set	6
	local.get	5
	i32.load	12
	local.set	7
	local.get	7
	call	strlen
	local.set	8
	local.get	6
	local.get	8
	i32.add 
	local.set	9
	local.get	5
	local.get	9
	i32.store	0
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label260:
	local.get	5
	i32.load	4
	local.set	10
	i32.const	0
	local.set	11
	local.get	10
	local.get	11
	i32.gt_u
	local.set	12
	i32.const	0
	local.set	13
	i32.const	1
	local.set	14
	local.get	12
	local.get	14
	i32.and 
	local.set	15
	local.get	13
	local.set	16
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label261
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	local.get	5
	i32.load	8
	local.set	17
	local.get	17
	i32.load8_u	0
	local.set	18
	local.get	5
	i32.load	0
	local.set	19
	local.get	19
	local.get	18
	i32.store8	0
	i32.const	24
	local.set	20
	local.get	18
	local.get	20
	i32.shl 
	local.set	21
	local.get	21
	local.get	20
	i32.shr_s
	local.set	22
	i32.const	0
	local.set	23
	local.get	22
	local.get	23
	i32.ne  
	local.set	24
	local.get	24
	local.set	16
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	end_block                               # label261:
	local.get	16
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	block   	
	local.get	27
	i32.eqz
	br_if   	0                               # 0: down to label262
# %bb.4:                                #   in Loop: Header=BB93_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB93_1 Depth=1
	local.get	5
	i32.load	8
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.add 
	local.set	30
	local.get	5
	local.get	30
	i32.store	8
	local.get	5
	i32.load	0
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	5
	local.get	33
	i32.store	0
	local.get	5
	i32.load	4
	local.set	34
	i32.const	-1
	local.set	35
	local.get	34
	local.get	35
	i32.add 
	local.set	36
	local.get	5
	local.get	36
	i32.store	4
	br      	1                               # 1: up to label260
.LBB93_6:
	end_block                               # label262:
	end_loop
	local.get	5
	i32.load	4
	local.set	37
	block   	
	local.get	37
	br_if   	0                               # 0: down to label263
# %bb.7:
	local.get	5
	i32.load	0
	local.set	38
	i32.const	0
	local.set	39
	local.get	38
	local.get	39
	i32.store8	0
.LBB93_8:
	end_block                               # label263:
	local.get	5
	i32.load	12
	local.set	40
	i32.const	16
	local.set	41
	local.get	5
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	global.set	__stack_pointer
	local.get	40
	return
	end_function
                                        # -- End function
	.section	.text.strnlen,"",@
	.hidden	strnlen                         # -- Begin function strnlen
	.globl	strnlen
	.type	strnlen,@function
strnlen:                                # @strnlen
	.functype	strnlen (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label264:
	local.get	4
	i32.load	4
	local.set	6
	local.get	4
	i32.load	8
	local.set	7
	local.get	6
	local.get	7
	i32.lt_u
	local.set	8
	i32.const	0
	local.set	9
	i32.const	1
	local.set	10
	local.get	8
	local.get	10
	i32.and 
	local.set	11
	local.get	9
	local.set	12
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label265
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	local.get	4
	i32.load	12
	local.set	13
	local.get	4
	i32.load	4
	local.set	14
	local.get	13
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	i32.load8_u	0
	local.set	16
	i32.const	24
	local.set	17
	local.get	16
	local.get	17
	i32.shl 
	local.set	18
	local.get	18
	local.get	17
	i32.shr_s
	local.set	19
	i32.const	0
	local.set	20
	local.get	19
	local.get	20
	i32.ne  
	local.set	21
	local.get	21
	local.set	12
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	end_block                               # label265:
	local.get	12
	local.set	22
	i32.const	1
	local.set	23
	local.get	22
	local.get	23
	i32.and 
	local.set	24
	block   	
	local.get	24
	i32.eqz
	br_if   	0                               # 0: down to label266
# %bb.4:                                #   in Loop: Header=BB94_1 Depth=1
# %bb.5:                                #   in Loop: Header=BB94_1 Depth=1
	local.get	4
	i32.load	4
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.add 
	local.set	27
	local.get	4
	local.get	27
	i32.store	4
	br      	1                               # 1: up to label264
.LBB94_6:
	end_block                               # label266:
	end_loop
	local.get	4
	i32.load	4
	local.set	28
	local.get	28
	return
	end_function
                                        # -- End function
	.section	.text.strpbrk,"",@
	.hidden	strpbrk                         # -- Begin function strpbrk
	.globl	strpbrk
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
	.functype	strpbrk (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	8
	local.get	4
	local.get	1
	i32.store	4
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	block   	
	block   	
	loop    	                                # label269:
	local.get	4
	i32.load	8
	local.set	5
	local.get	5
	i32.load8_u	0
	local.set	6
	i32.const	24
	local.set	7
	local.get	6
	local.get	7
	i32.shl 
	local.set	8
	local.get	8
	local.get	7
	i32.shr_s
	local.set	9
	local.get	9
	i32.eqz
	br_if   	1                               # 1: down to label268
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	local.get	4
	i32.load	4
	local.set	10
	local.get	4
	local.get	10
	i32.store	0
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	block   	
	loop    	                                # label271:
	local.get	4
	i32.load	0
	local.set	11
	local.get	11
	i32.load8_u	0
	local.set	12
	i32.const	24
	local.set	13
	local.get	12
	local.get	13
	i32.shl 
	local.set	14
	local.get	14
	local.get	13
	i32.shr_s
	local.set	15
	local.get	15
	i32.eqz
	br_if   	1                               # 1: down to label270
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=2
	local.get	4
	i32.load	0
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	4
	local.get	18
	i32.store	0
	local.get	16
	i32.load8_u	0
	local.set	19
	i32.const	24
	local.set	20
	local.get	19
	local.get	20
	i32.shl 
	local.set	21
	local.get	21
	local.get	20
	i32.shr_s
	local.set	22
	local.get	4
	i32.load	8
	local.set	23
	local.get	23
	i32.load8_u	0
	local.set	24
	i32.const	24
	local.set	25
	local.get	24
	local.get	25
	i32.shl 
	local.set	26
	local.get	26
	local.get	25
	i32.shr_s
	local.set	27
	local.get	22
	local.get	27
	i32.eq  
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	block   	
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label272
# %bb.5:
	local.get	4
	i32.load	8
	local.set	31
	local.get	4
	local.get	31
	i32.store	12
	br      	5                               # 5: down to label267
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	end_block                               # label272:
	br      	0                               # 0: up to label271
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	end_loop
	end_block                               # label270:
	local.get	4
	i32.load	8
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.add 
	local.set	34
	local.get	4
	local.get	34
	i32.store	8
	br      	0                               # 0: up to label269
.LBB95_8:
	end_loop
	end_block                               # label268:
	i32.const	0
	local.set	35
	local.get	4
	local.get	35
	i32.store	12
.LBB95_9:
	end_block                               # label267:
	local.get	4
	i32.load	12
	local.set	36
	local.get	36
	return
	end_function
                                        # -- End function
	.section	.text.strrchr,"",@
	.hidden	strrchr                         # -- Begin function strrchr
	.globl	strrchr
	.type	strrchr,@function
strrchr:                                # @strrchr
	.functype	strrchr (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label273:
	local.get	4
	i32.load	12
	local.set	6
	local.get	6
	i32.load8_u	0
	local.set	7
	i32.const	24
	local.set	8
	local.get	7
	local.get	8
	i32.shl 
	local.set	9
	local.get	9
	local.get	8
	i32.shr_s
	local.set	10
	local.get	4
	i32.load	8
	local.set	11
	local.get	10
	local.get	11
	i32.eq  
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	block   	
	local.get	14
	i32.eqz
	br_if   	0                               # 0: down to label274
# %bb.2:                                #   in Loop: Header=BB96_1 Depth=1
	local.get	4
	i32.load	12
	local.set	15
	local.get	4
	local.get	15
	i32.store	4
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	end_block                               # label274:
# %bb.4:                                #   in Loop: Header=BB96_1 Depth=1
	local.get	4
	i32.load	12
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	4
	local.get	18
	i32.store	12
	local.get	16
	i32.load8_u	0
	local.set	19
	i32.const	0
	local.set	20
	i32.const	255
	local.set	21
	local.get	19
	local.get	21
	i32.and 
	local.set	22
	i32.const	255
	local.set	23
	local.get	20
	local.get	23
	i32.and 
	local.set	24
	local.get	22
	local.get	24
	i32.ne  
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	local.get	27
	br_if   	0                               # 0: up to label273
# %bb.5:
	end_loop
	local.get	4
	i32.load	4
	local.set	28
	local.get	28
	return
	end_function
                                        # -- End function
	.section	.text.strstr,"",@
	.hidden	strstr                          # -- Begin function strstr
	.globl	strstr
	.type	strstr,@function
strstr:                                 # @strstr
	.functype	strstr (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	24
	local.get	4
	local.get	1
	i32.store	20
	local.get	4
	i32.load	24
	local.set	5
	local.get	4
	local.get	5
	i32.store	16
	local.get	4
	i32.load	20
	local.set	6
	local.get	6
	call	strlen
	local.set	7
	local.get	4
	local.get	7
	i32.store	12
	local.get	4
	i32.load	12
	local.set	8
	block   	
	block   	
	local.get	8
	br_if   	0                               # 0: down to label276
# %bb.1:
	local.get	4
	i32.load	24
	local.set	9
	local.get	4
	local.get	9
	i32.store	28
	br      	1                               # 1: down to label275
.LBB97_2:
	end_block                               # label276:
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label278:
	local.get	4
	i32.load	16
	local.set	10
	local.get	4
	i32.load	20
	local.set	11
	local.get	11
	i32.load8_u	0
	local.set	12
	i32.const	24
	local.set	13
	local.get	12
	local.get	13
	i32.shl 
	local.set	14
	local.get	14
	local.get	13
	i32.shr_s
	local.set	15
	local.get	10
	local.get	15
	call	strchr
	local.set	16
	local.get	4
	local.get	16
	i32.store	16
	i32.const	0
	local.set	17
	local.get	16
	local.get	17
	i32.ne  
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	local.get	20
	i32.eqz
	br_if   	1                               # 1: down to label277
# %bb.4:                                #   in Loop: Header=BB97_3 Depth=1
	local.get	4
	i32.load	16
	local.set	21
	local.get	4
	i32.load	20
	local.set	22
	local.get	4
	i32.load	12
	local.set	23
	local.get	21
	local.get	22
	local.get	23
	call	strncmp
	local.set	24
	block   	
	local.get	24
	br_if   	0                               # 0: down to label279
# %bb.5:
	local.get	4
	i32.load	16
	local.set	25
	local.get	4
	local.get	25
	i32.store	28
	br      	3                               # 3: down to label275
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	end_block                               # label279:
# %bb.7:                                #   in Loop: Header=BB97_3 Depth=1
	local.get	4
	i32.load	16
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.add 
	local.set	28
	local.get	4
	local.get	28
	i32.store	16
	br      	0                               # 0: up to label278
.LBB97_8:
	end_loop
	end_block                               # label277:
	i32.const	0
	local.set	29
	local.get	4
	local.get	29
	i32.store	28
.LBB97_9:
	end_block                               # label275:
	local.get	4
	i32.load	28
	local.set	30
	i32.const	32
	local.set	31
	local.get	4
	local.get	31
	i32.add 
	local.set	32
	local.get	32
	global.set	__stack_pointer
	local.get	30
	return
	end_function
                                        # -- End function
	.section	.text.copysign,"",@
	.hidden	copysign                        # -- Begin function copysign
	.globl	copysign
	.type	copysign,@function
copysign:                               # @copysign
	.functype	copysign (f64, f64) -> (f64)
	.local  	i32, i32, i32, f64, i32, f64, i32, i32, i32, f64, i32, f64, i32, i32, i32, f64, i32, f64, i32, i32, i32, f64, i32, f64, i32, i32, i32, f64, f64, f64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f64.store	16
	local.get	4
	local.get	1
	f64.store	8
	local.get	4
	f64.load	16
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	f64.convert_i32_s
	local.set	7
	local.get	5
	local.get	7
	f64.lt  
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	block   	
	block   	
	block   	
	block   	
	local.get	10
	i32.eqz
	br_if   	0                               # 0: down to label283
# %bb.1:
	local.get	4
	f64.load	8
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	f64.convert_i32_s
	local.set	13
	local.get	11
	local.get	13
	f64.gt  
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	br_if   	1                               # 1: down to label282
.LBB98_2:
	end_block                               # label283:
	local.get	4
	f64.load	16
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	f64.convert_i32_s
	local.set	19
	local.get	17
	local.get	19
	f64.gt  
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	22
	i32.eqz
	br_if   	1                               # 1: down to label281
# %bb.3:
	local.get	4
	f64.load	8
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	f64.convert_i32_s
	local.set	25
	local.get	23
	local.get	25
	f64.lt  
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	28
	i32.eqz
	br_if   	1                               # 1: down to label281
.LBB98_4:
	end_block                               # label282:
	local.get	4
	f64.load	16
	local.set	29
	local.get	29
	f64.neg 
	local.set	30
	local.get	4
	local.get	30
	f64.store	24
	br      	1                               # 1: down to label280
.LBB98_5:
	end_block                               # label281:
	local.get	4
	f64.load	16
	local.set	31
	local.get	4
	local.get	31
	f64.store	24
.LBB98_6:
	end_block                               # label280:
	local.get	4
	f64.load	24
	local.set	32
	local.get	32
	return
	end_function
                                        # -- End function
	.section	.text.memmem,"",@
	.hidden	memmem                          # -- Begin function memmem
	.globl	memmem
	.type	memmem,@function
memmem:                                 # @memmem
	.functype	memmem (i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	global.set	__stack_pointer
	local.get	6
	local.get	0
	i32.store	24
	local.get	6
	local.get	1
	i32.store	20
	local.get	6
	local.get	2
	i32.store	16
	local.get	6
	local.get	3
	i32.store	12
	local.get	6
	i32.load	24
	local.set	7
	local.get	6
	i32.load	20
	local.set	8
	local.get	7
	local.get	8
	i32.add 
	local.set	9
	local.get	6
	i32.load	12
	local.set	10
	i32.const	0
	local.set	11
	local.get	11
	local.get	10
	i32.sub 
	local.set	12
	local.get	9
	local.get	12
	i32.add 
	local.set	13
	local.get	6
	local.get	13
	i32.store	4
	local.get	6
	i32.load	12
	local.set	14
	block   	
	block   	
	local.get	14
	br_if   	0                               # 0: down to label285
# %bb.1:
	local.get	6
	i32.load	24
	local.set	15
	local.get	6
	local.get	15
	i32.store	28
	br      	1                               # 1: down to label284
.LBB99_2:
	end_block                               # label285:
	local.get	6
	i32.load	20
	local.set	16
	local.get	6
	i32.load	12
	local.set	17
	local.get	16
	local.get	17
	i32.lt_u
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	block   	
	local.get	20
	i32.eqz
	br_if   	0                               # 0: down to label286
# %bb.3:
	i32.const	0
	local.set	21
	local.get	6
	local.get	21
	i32.store	28
	br      	1                               # 1: down to label284
.LBB99_4:
	end_block                               # label286:
	local.get	6
	i32.load	24
	local.set	22
	local.get	6
	local.get	22
	i32.store	8
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label288:
	local.get	6
	i32.load	8
	local.set	23
	local.get	6
	i32.load	4
	local.set	24
	local.get	23
	local.get	24
	i32.le_u
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	local.get	27
	i32.eqz
	br_if   	1                               # 1: down to label287
# %bb.6:                                #   in Loop: Header=BB99_5 Depth=1
	local.get	6
	i32.load	8
	local.set	28
	local.get	28
	i32.load8_u	0
	local.set	29
	i32.const	24
	local.set	30
	local.get	29
	local.get	30
	i32.shl 
	local.set	31
	local.get	31
	local.get	30
	i32.shr_s
	local.set	32
	local.get	6
	i32.load	16
	local.set	33
	local.get	33
	i32.load8_u	0
	local.set	34
	i32.const	24
	local.set	35
	local.get	34
	local.get	35
	i32.shl 
	local.set	36
	local.get	36
	local.get	35
	i32.shr_s
	local.set	37
	local.get	32
	local.get	37
	i32.eq  
	local.set	38
	i32.const	1
	local.set	39
	local.get	38
	local.get	39
	i32.and 
	local.set	40
	block   	
	local.get	40
	i32.eqz
	br_if   	0                               # 0: down to label289
# %bb.7:                                #   in Loop: Header=BB99_5 Depth=1
	local.get	6
	i32.load	8
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.add 
	local.set	43
	local.get	6
	i32.load	16
	local.set	44
	i32.const	1
	local.set	45
	local.get	44
	local.get	45
	i32.add 
	local.set	46
	local.get	6
	i32.load	12
	local.set	47
	i32.const	1
	local.set	48
	local.get	47
	local.get	48
	i32.sub 
	local.set	49
	local.get	43
	local.get	46
	local.get	49
	call	memcmp
	local.set	50
	local.get	50
	br_if   	0                               # 0: down to label289
# %bb.8:
	local.get	6
	i32.load	8
	local.set	51
	local.get	6
	local.get	51
	i32.store	28
	br      	3                               # 3: down to label284
.LBB99_9:                               #   in Loop: Header=BB99_5 Depth=1
	end_block                               # label289:
# %bb.10:                               #   in Loop: Header=BB99_5 Depth=1
	local.get	6
	i32.load	8
	local.set	52
	i32.const	1
	local.set	53
	local.get	52
	local.get	53
	i32.add 
	local.set	54
	local.get	6
	local.get	54
	i32.store	8
	br      	0                               # 0: up to label288
.LBB99_11:
	end_loop
	end_block                               # label287:
	i32.const	0
	local.set	55
	local.get	6
	local.get	55
	i32.store	28
.LBB99_12:
	end_block                               # label284:
	local.get	6
	i32.load	28
	local.set	56
	i32.const	32
	local.set	57
	local.get	6
	local.get	57
	i32.add 
	local.set	58
	local.get	58
	global.set	__stack_pointer
	local.get	56
	return
	end_function
                                        # -- End function
	.section	.text.mempcpy,"",@
	.hidden	mempcpy                         # -- Begin function mempcpy
	.globl	mempcpy
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
	.functype	mempcpy (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	global.set	__stack_pointer
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
	local.get	5
	i32.load	12
	local.set	6
	local.get	5
	i32.load	8
	local.set	7
	local.get	5
	i32.load	4
	local.set	8
	local.get	6
	local.get	7
	local.get	8
	call	memcpy
	drop
	local.get	5
	i32.load	4
	local.set	9
	local.get	6
	local.get	9
	i32.add 
	local.set	10
	i32.const	16
	local.set	11
	local.get	5
	local.get	11
	i32.add 
	local.set	12
	local.get	12
	global.set	__stack_pointer
	local.get	10
	return
	end_function
                                        # -- End function
	.section	.text.frexp,"",@
	.hidden	frexp                           # -- Begin function frexp
	.globl	frexp
	.type	frexp,@function
frexp:                                  # @frexp
	.functype	frexp (f64, i32) -> (f64)
	.local  	i32, i32, i32, i32, i32, f64, i32, f64, i32, i32, i32, f64, f64, i32, f64, f64, i32, i32, i32, f64, f64, i32, i32, i32, i32, i32, i32, f64, f64, f64, f64, f64, i32, i32, i32, f64, i32, f64, i32, i32, i32, f64, f64, i32, i32, i32, i32, i32, i32, f64, f64, f64, i32, i32, i32, f64, f64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f64.store	24
	local.get	4
	local.get	1
	i32.store	20
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	12
	i32.const	0
	local.set	6
	local.get	4
	local.get	6
	i32.store	16
	local.get	4
	f64.load	24
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	f64.convert_i32_s
	local.set	9
	local.get	7
	local.get	9
	f64.lt  
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label290
# %bb.1:
	local.get	4
	f64.load	24
	local.set	13
	local.get	13
	f64.neg 
	local.set	14
	local.get	4
	local.get	14
	f64.store	24
	i32.const	1
	local.set	15
	local.get	4
	local.get	15
	i32.store	16
.LBB101_2:
	end_block                               # label290:
	local.get	4
	f64.load	24
	local.set	16
	f64.const	0x1p0
	local.set	17
	local.get	16
	local.get	17
	f64.ge  
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	block   	
	block   	
	local.get	20
	i32.eqz
	br_if   	0                               # 0: down to label292
# %bb.3:
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label294:
	local.get	4
	f64.load	24
	local.set	21
	f64.const	0x1p0
	local.set	22
	local.get	21
	local.get	22
	f64.ge  
	local.set	23
	i32.const	1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	25
	i32.eqz
	br_if   	1                               # 1: down to label293
# %bb.5:                                #   in Loop: Header=BB101_4 Depth=1
	local.get	4
	i32.load	12
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.add 
	local.set	28
	local.get	4
	local.get	28
	i32.store	12
	local.get	4
	f64.load	24
	local.set	29
	f64.const	0x1p1
	local.set	30
	local.get	29
	local.get	30
	f64.div 
	local.set	31
	local.get	4
	local.get	31
	f64.store	24
	br      	0                               # 0: up to label294
.LBB101_6:
	end_loop
	end_block                               # label293:
	br      	1                               # 1: down to label291
.LBB101_7:
	end_block                               # label292:
	local.get	4
	f64.load	24
	local.set	32
	f64.const	0x1p-1
	local.set	33
	local.get	32
	local.get	33
	f64.lt  
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	block   	
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label295
# %bb.8:
	local.get	4
	f64.load	24
	local.set	37
	i32.const	0
	local.set	38
	local.get	38
	f64.convert_i32_s
	local.set	39
	local.get	37
	local.get	39
	f64.ne  
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.and 
	local.set	42
	local.get	42
	i32.eqz
	br_if   	0                               # 0: down to label295
# %bb.9:
.LBB101_10:                             # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label297:
	local.get	4
	f64.load	24
	local.set	43
	f64.const	0x1p-1
	local.set	44
	local.get	43
	local.get	44
	f64.lt  
	local.set	45
	i32.const	1
	local.set	46
	local.get	45
	local.get	46
	i32.and 
	local.set	47
	local.get	47
	i32.eqz
	br_if   	1                               # 1: down to label296
# %bb.11:                               #   in Loop: Header=BB101_10 Depth=1
	local.get	4
	i32.load	12
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.sub 
	local.set	50
	local.get	4
	local.get	50
	i32.store	12
	local.get	4
	f64.load	24
	local.set	51
	f64.const	0x1p1
	local.set	52
	local.get	52
	local.get	51
	f64.mul 
	local.set	53
	local.get	4
	local.get	53
	f64.store	24
	br      	0                               # 0: up to label297
.LBB101_12:
	end_loop
	end_block                               # label296:
.LBB101_13:
	end_block                               # label295:
.LBB101_14:
	end_block                               # label291:
	local.get	4
	i32.load	12
	local.set	54
	local.get	4
	i32.load	20
	local.set	55
	local.get	55
	local.get	54
	i32.store	0
	local.get	4
	i32.load	16
	local.set	56
	block   	
	local.get	56
	i32.eqz
	br_if   	0                               # 0: down to label298
# %bb.15:
	local.get	4
	f64.load	24
	local.set	57
	local.get	57
	f64.neg 
	local.set	58
	local.get	4
	local.get	58
	f64.store	24
.LBB101_16:
	end_block                               # label298:
	local.get	4
	f64.load	24
	local.set	59
	local.get	59
	return
	end_function
                                        # -- End function
	.section	.text.__muldi3,"",@
	.hidden	__muldi3                        # -- Begin function __muldi3
	.globl	__muldi3
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
	.functype	__muldi3 (i64, i64) -> (i64)
	.local  	i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	24
	local.get	4
	local.get	1
	i64.store	16
	i64.const	0
	local.set	5
	local.get	4
	local.get	5
	i64.store	8
	local.get	4
	i64.load	24
	local.set	6
	local.get	4
	local.get	6
	i64.store	0
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label300:
	local.get	4
	i64.load	0
	local.set	7
	i64.const	0
	local.set	8
	local.get	7
	local.get	8
	i64.ne  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	local.get	11
	i32.eqz
	br_if   	1                               # 1: down to label299
# %bb.2:                                #   in Loop: Header=BB102_1 Depth=1
	local.get	4
	i64.load	0
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.and 
	local.set	14
	i64.const	0
	local.set	15
	local.get	14
	local.get	15
	i64.ne  
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	block   	
	local.get	18
	i32.eqz
	br_if   	0                               # 0: down to label301
# %bb.3:                                #   in Loop: Header=BB102_1 Depth=1
	local.get	4
	i64.load	16
	local.set	19
	local.get	4
	i64.load	8
	local.set	20
	local.get	20
	local.get	19
	i64.add 
	local.set	21
	local.get	4
	local.get	21
	i64.store	8
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	end_block                               # label301:
	local.get	4
	i64.load	16
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.shl 
	local.set	24
	local.get	4
	local.get	24
	i64.store	16
	local.get	4
	i64.load	0
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.shr_u
	local.set	27
	local.get	4
	local.get	27
	i64.store	0
	br      	0                               # 0: up to label300
.LBB102_5:
	end_loop
	end_block                               # label299:
	local.get	4
	i64.load	8
	local.set	28
	local.get	28
	return
	end_function
                                        # -- End function
	.section	.text.udivmodsi4,"",@
	.hidden	udivmodsi4                      # -- Begin function udivmodsi4
	.globl	udivmodsi4
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
	.functype	udivmodsi4 (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	24
	local.get	5
	local.get	1
	i32.store	20
	local.get	5
	local.get	2
	i32.store	16
	i32.const	1
	local.set	6
	local.get	5
	local.get	6
	i32.store	12
	i32.const	0
	local.set	7
	local.get	5
	local.get	7
	i32.store	8
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label302:
	local.get	5
	i32.load	20
	local.set	8
	local.get	5
	i32.load	24
	local.set	9
	local.get	8
	local.get	9
	i32.lt_u
	local.set	10
	i32.const	0
	local.set	11
	i32.const	1
	local.set	12
	local.get	10
	local.get	12
	i32.and 
	local.set	13
	local.get	11
	local.set	14
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label303
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	local.get	5
	i32.load	12
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.set	14
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label303
# %bb.3:                                #   in Loop: Header=BB103_1 Depth=1
	local.get	5
	i32.load	20
	local.set	17
	i32.const	-2147483648
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	i32.const	0
	local.set	20
	local.get	19
	local.get	20
	i32.ne  
	local.set	21
	i32.const	-1
	local.set	22
	local.get	21
	local.get	22
	i32.xor 
	local.set	23
	local.get	23
	local.set	14
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	end_block                               # label303:
	local.get	14
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	block   	
	local.get	26
	i32.eqz
	br_if   	0                               # 0: down to label304
# %bb.5:                                #   in Loop: Header=BB103_1 Depth=1
	local.get	5
	i32.load	20
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.shl 
	local.set	29
	local.get	5
	local.get	29
	i32.store	20
	local.get	5
	i32.load	12
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.shl 
	local.set	32
	local.get	5
	local.get	32
	i32.store	12
	br      	1                               # 1: up to label302
.LBB103_6:
	end_block                               # label304:
	end_loop
.LBB103_7:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label306:
	local.get	5
	i32.load	12
	local.set	33
	local.get	33
	i32.eqz
	br_if   	1                               # 1: down to label305
# %bb.8:                                #   in Loop: Header=BB103_7 Depth=1
	local.get	5
	i32.load	24
	local.set	34
	local.get	5
	i32.load	20
	local.set	35
	local.get	34
	local.get	35
	i32.ge_u
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.and 
	local.set	38
	block   	
	local.get	38
	i32.eqz
	br_if   	0                               # 0: down to label307
# %bb.9:                                #   in Loop: Header=BB103_7 Depth=1
	local.get	5
	i32.load	20
	local.set	39
	local.get	5
	i32.load	24
	local.set	40
	local.get	40
	local.get	39
	i32.sub 
	local.set	41
	local.get	5
	local.get	41
	i32.store	24
	local.get	5
	i32.load	12
	local.set	42
	local.get	5
	i32.load	8
	local.set	43
	local.get	43
	local.get	42
	i32.or  
	local.set	44
	local.get	5
	local.get	44
	i32.store	8
.LBB103_10:                             #   in Loop: Header=BB103_7 Depth=1
	end_block                               # label307:
	local.get	5
	i32.load	12
	local.set	45
	i32.const	1
	local.set	46
	local.get	45
	local.get	46
	i32.shr_u
	local.set	47
	local.get	5
	local.get	47
	i32.store	12
	local.get	5
	i32.load	20
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.shr_u
	local.set	50
	local.get	5
	local.get	50
	i32.store	20
	br      	0                               # 0: up to label306
.LBB103_11:
	end_loop
	end_block                               # label305:
	local.get	5
	i32.load	16
	local.set	51
	block   	
	block   	
	local.get	51
	i32.eqz
	br_if   	0                               # 0: down to label309
# %bb.12:
	local.get	5
	i32.load	24
	local.set	52
	local.get	5
	local.get	52
	i32.store	28
	br      	1                               # 1: down to label308
.LBB103_13:
	end_block                               # label309:
	local.get	5
	i32.load	8
	local.set	53
	local.get	5
	local.get	53
	i32.store	28
.LBB103_14:
	end_block                               # label308:
	local.get	5
	i32.load	28
	local.set	54
	local.get	54
	return
	end_function
                                        # -- End function
	.section	.text.__clrsbqi2,"",@
	.hidden	__clrsbqi2                      # -- Begin function __clrsbqi2
	.globl	__clrsbqi2
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
	.functype	__clrsbqi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store8	11
	local.get	3
	i32.load8_u	11
	local.set	4
	i32.const	24
	local.set	5
	local.get	4
	local.get	5
	i32.shl 
	local.set	6
	local.get	6
	local.get	5
	i32.shr_s
	local.set	7
	i32.const	0
	local.set	8
	local.get	7
	local.get	8
	i32.lt_s
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label310
# %bb.1:
	local.get	3
	i32.load8_u	11
	local.set	12
	i32.const	24
	local.set	13
	local.get	12
	local.get	13
	i32.shl 
	local.set	14
	local.get	14
	local.get	13
	i32.shr_s
	local.set	15
	i32.const	-1
	local.set	16
	local.get	15
	local.get	16
	i32.xor 
	local.set	17
	local.get	3
	local.get	17
	i32.store8	11
.LBB104_2:
	end_block                               # label310:
	local.get	3
	i32.load8_u	11
	local.set	18
	i32.const	24
	local.set	19
	local.get	18
	local.get	19
	i32.shl 
	local.set	20
	local.get	20
	local.get	19
	i32.shr_s
	local.set	21
	block   	
	block   	
	local.get	21
	br_if   	0                               # 0: down to label312
# %bb.3:
	i32.const	7
	local.set	22
	local.get	3
	local.get	22
	i32.store	12
	br      	1                               # 1: down to label311
.LBB104_4:
	end_block                               # label312:
	local.get	3
	i32.load8_u	11
	local.set	23
	i32.const	24
	local.set	24
	local.get	23
	local.get	24
	i32.shl 
	local.set	25
	local.get	25
	local.get	24
	i32.shr_s
	local.set	26
	i32.const	8
	local.set	27
	local.get	26
	local.get	27
	i32.shl 
	local.set	28
	local.get	28
	i32.clz 
	local.set	29
	local.get	3
	local.get	29
	i32.store	4
	local.get	3
	i32.load	4
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.sub 
	local.set	32
	local.get	3
	local.get	32
	i32.store	12
.LBB104_5:
	end_block                               # label311:
	local.get	3
	i32.load	12
	local.set	33
	local.get	33
	return
	end_function
                                        # -- End function
	.section	.text.__clrsbdi2,"",@
	.hidden	__clrsbdi2                      # -- Begin function __clrsbdi2
	.globl	__clrsbdi2
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
	.functype	__clrsbdi2 (i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	32
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	16
	local.get	3
	i64.load	16
	local.set	4
	i64.const	0
	local.set	5
	local.get	4
	local.get	5
	i64.lt_s
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	block   	
	local.get	8
	i32.eqz
	br_if   	0                               # 0: down to label313
# %bb.1:
	local.get	3
	i64.load	16
	local.set	9
	i64.const	-1
	local.set	10
	local.get	9
	local.get	10
	i64.xor 
	local.set	11
	local.get	3
	local.get	11
	i64.store	16
.LBB105_2:
	end_block                               # label313:
	local.get	3
	i64.load	16
	local.set	12
	i64.const	0
	local.set	13
	local.get	12
	local.get	13
	i64.eq  
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	block   	
	block   	
	local.get	16
	i32.eqz
	br_if   	0                               # 0: down to label315
# %bb.3:
	i32.const	63
	local.set	17
	local.get	3
	local.get	17
	i32.store	28
	br      	1                               # 1: down to label314
.LBB105_4:
	end_block                               # label315:
	local.get	3
	i64.load	16
	local.set	18
	local.get	18
	i64.clz 
	local.set	19
	local.get	19
	i32.wrap_i64
	local.set	20
	local.get	3
	local.get	20
	i32.store	12
	local.get	3
	i32.load	12
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.sub 
	local.set	23
	local.get	3
	local.get	23
	i32.store	28
.LBB105_5:
	end_block                               # label314:
	local.get	3
	i32.load	28
	local.set	24
	local.get	24
	return
	end_function
                                        # -- End function
	.section	.text.__mulsi3,"",@
	.hidden	__mulsi3                        # -- Begin function __mulsi3
	.globl	__mulsi3
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
	.functype	__mulsi3 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label317:
	local.get	4
	i32.load	12
	local.set	6
	local.get	6
	i32.eqz
	br_if   	1                               # 1: down to label316
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	local.get	4
	i32.load	12
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label318
# %bb.3:                                #   in Loop: Header=BB106_1 Depth=1
	local.get	4
	i32.load	8
	local.set	10
	local.get	4
	i32.load	4
	local.set	11
	local.get	11
	local.get	10
	i32.add 
	local.set	12
	local.get	4
	local.get	12
	i32.store	4
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	end_block                               # label318:
	local.get	4
	i32.load	12
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.shr_u
	local.set	15
	local.get	4
	local.get	15
	i32.store	12
	local.get	4
	i32.load	8
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.shl 
	local.set	18
	local.get	4
	local.get	18
	i32.store	8
	br      	0                               # 0: up to label317
.LBB106_5:
	end_loop
	end_block                               # label316:
	local.get	4
	i32.load	4
	local.set	19
	local.get	19
	return
	end_function
                                        # -- End function
	.section	.text.__cmovd,"",@
	.hidden	__cmovd                         # -- Begin function __cmovd
	.globl	__cmovd
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
	.functype	__cmovd (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	20
	local.set	6
	i32.const	3
	local.set	7
	local.get	6
	local.get	7
	i32.shr_u
	local.set	8
	local.get	5
	local.get	8
	i32.store	12
	local.get	5
	i32.load	20
	local.set	9
	i32.const	-8
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	local.get	5
	local.get	11
	i32.store	8
	local.get	5
	i32.load	28
	local.set	12
	local.get	5
	local.get	12
	i32.store	4
	local.get	5
	i32.load	24
	local.set	13
	local.get	5
	local.get	13
	i32.store	0
	local.get	5
	i32.load	4
	local.set	14
	local.get	5
	i32.load	0
	local.set	15
	local.get	14
	local.get	15
	i32.lt_u
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	block   	
	block   	
	block   	
	local.get	18
	br_if   	0                               # 0: down to label321
# %bb.1:
	local.get	5
	i32.load	4
	local.set	19
	local.get	5
	i32.load	0
	local.set	20
	local.get	5
	i32.load	20
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	19
	local.get	22
	i32.gt_u
	local.set	23
	i32.const	1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	25
	i32.eqz
	br_if   	1                               # 1: down to label320
.LBB107_2:
	end_block                               # label321:
	i32.const	0
	local.set	26
	local.get	5
	local.get	26
	i32.store	16
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label323:
	local.get	5
	i32.load	16
	local.set	27
	local.get	5
	i32.load	12
	local.set	28
	local.get	27
	local.get	28
	i32.lt_u
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	local.get	31
	i32.eqz
	br_if   	1                               # 1: down to label322
# %bb.4:                                #   in Loop: Header=BB107_3 Depth=1
	local.get	5
	i32.load	24
	local.set	32
	local.get	5
	i32.load	16
	local.set	33
	i32.const	3
	local.set	34
	local.get	33
	local.get	34
	i32.shl 
	local.set	35
	local.get	32
	local.get	35
	i32.add 
	local.set	36
	local.get	36
	i64.load	0
	local.set	37
	local.get	5
	i32.load	28
	local.set	38
	local.get	5
	i32.load	16
	local.set	39
	i32.const	3
	local.set	40
	local.get	39
	local.get	40
	i32.shl 
	local.set	41
	local.get	38
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	local.get	37
	i64.store	0
# %bb.5:                                #   in Loop: Header=BB107_3 Depth=1
	local.get	5
	i32.load	16
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	5
	local.get	45
	i32.store	16
	br      	0                               # 0: up to label323
.LBB107_6:
	end_loop
	end_block                               # label322:
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label325:
	local.get	5
	i32.load	20
	local.set	46
	local.get	5
	i32.load	8
	local.set	47
	local.get	46
	local.get	47
	i32.gt_u
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.and 
	local.set	50
	local.get	50
	i32.eqz
	br_if   	1                               # 1: down to label324
# %bb.8:                                #   in Loop: Header=BB107_7 Depth=1
	local.get	5
	i32.load	0
	local.set	51
	local.get	5
	i32.load	8
	local.set	52
	local.get	51
	local.get	52
	i32.add 
	local.set	53
	local.get	53
	i32.load8_u	0
	local.set	54
	local.get	5
	i32.load	4
	local.set	55
	local.get	5
	i32.load	8
	local.set	56
	local.get	55
	local.get	56
	i32.add 
	local.set	57
	local.get	57
	local.get	54
	i32.store8	0
	local.get	5
	i32.load	8
	local.set	58
	i32.const	1
	local.set	59
	local.get	58
	local.get	59
	i32.add 
	local.set	60
	local.get	5
	local.get	60
	i32.store	8
	br      	0                               # 0: up to label325
.LBB107_9:
	end_loop
	end_block                               # label324:
	br      	1                               # 1: down to label319
.LBB107_10:
	end_block                               # label320:
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label327:
	local.get	5
	i32.load	20
	local.set	61
	i32.const	-1
	local.set	62
	local.get	61
	local.get	62
	i32.add 
	local.set	63
	local.get	5
	local.get	63
	i32.store	20
	i32.const	0
	local.set	64
	local.get	61
	local.get	64
	i32.gt_u
	local.set	65
	i32.const	1
	local.set	66
	local.get	65
	local.get	66
	i32.and 
	local.set	67
	local.get	67
	i32.eqz
	br_if   	1                               # 1: down to label326
# %bb.12:                               #   in Loop: Header=BB107_11 Depth=1
	local.get	5
	i32.load	0
	local.set	68
	local.get	5
	i32.load	20
	local.set	69
	local.get	68
	local.get	69
	i32.add 
	local.set	70
	local.get	70
	i32.load8_u	0
	local.set	71
	local.get	5
	i32.load	4
	local.set	72
	local.get	5
	i32.load	20
	local.set	73
	local.get	72
	local.get	73
	i32.add 
	local.set	74
	local.get	74
	local.get	71
	i32.store8	0
	br      	0                               # 0: up to label327
.LBB107_13:
	end_loop
	end_block                               # label326:
.LBB107_14:
	end_block                               # label319:
	return
	end_function
                                        # -- End function
	.section	.text.__cmovh,"",@
	.hidden	__cmovh                         # -- Begin function __cmovh
	.globl	__cmovh
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
	.functype	__cmovh (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	20
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.shr_u
	local.set	8
	local.get	5
	local.get	8
	i32.store	12
	local.get	5
	i32.load	28
	local.set	9
	local.get	5
	local.get	9
	i32.store	8
	local.get	5
	i32.load	24
	local.set	10
	local.get	5
	local.get	10
	i32.store	4
	local.get	5
	i32.load	8
	local.set	11
	local.get	5
	i32.load	4
	local.set	12
	local.get	11
	local.get	12
	i32.lt_u
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	block   	
	block   	
	block   	
	local.get	15
	br_if   	0                               # 0: down to label330
# %bb.1:
	local.get	5
	i32.load	8
	local.set	16
	local.get	5
	i32.load	4
	local.set	17
	local.get	5
	i32.load	20
	local.set	18
	local.get	17
	local.get	18
	i32.add 
	local.set	19
	local.get	16
	local.get	19
	i32.gt_u
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	22
	i32.eqz
	br_if   	1                               # 1: down to label329
.LBB108_2:
	end_block                               # label330:
	i32.const	0
	local.set	23
	local.get	5
	local.get	23
	i32.store	16
.LBB108_3:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label332:
	local.get	5
	i32.load	16
	local.set	24
	local.get	5
	i32.load	12
	local.set	25
	local.get	24
	local.get	25
	i32.lt_u
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	28
	i32.eqz
	br_if   	1                               # 1: down to label331
# %bb.4:                                #   in Loop: Header=BB108_3 Depth=1
	local.get	5
	i32.load	24
	local.set	29
	local.get	5
	i32.load	16
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.shl 
	local.set	32
	local.get	29
	local.get	32
	i32.add 
	local.set	33
	local.get	33
	i32.load16_u	0
	local.set	34
	local.get	5
	i32.load	28
	local.set	35
	local.get	5
	i32.load	16
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.shl 
	local.set	38
	local.get	35
	local.get	38
	i32.add 
	local.set	39
	local.get	39
	local.get	34
	i32.store16	0
# %bb.5:                                #   in Loop: Header=BB108_3 Depth=1
	local.get	5
	i32.load	16
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.add 
	local.set	42
	local.get	5
	local.get	42
	i32.store	16
	br      	0                               # 0: up to label332
.LBB108_6:
	end_loop
	end_block                               # label331:
	local.get	5
	i32.load	20
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.and 
	local.set	45
	block   	
	local.get	45
	i32.eqz
	br_if   	0                               # 0: down to label333
# %bb.7:
	local.get	5
	i32.load	4
	local.set	46
	local.get	5
	i32.load	20
	local.set	47
	i32.const	1
	local.set	48
	local.get	47
	local.get	48
	i32.sub 
	local.set	49
	local.get	46
	local.get	49
	i32.add 
	local.set	50
	local.get	50
	i32.load8_u	0
	local.set	51
	local.get	5
	i32.load	8
	local.set	52
	local.get	5
	i32.load	20
	local.set	53
	i32.const	1
	local.set	54
	local.get	53
	local.get	54
	i32.sub 
	local.set	55
	local.get	52
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	local.get	51
	i32.store8	0
.LBB108_8:
	end_block                               # label333:
	br      	1                               # 1: down to label328
.LBB108_9:
	end_block                               # label329:
.LBB108_10:                             # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label335:
	local.get	5
	i32.load	20
	local.set	57
	i32.const	-1
	local.set	58
	local.get	57
	local.get	58
	i32.add 
	local.set	59
	local.get	5
	local.get	59
	i32.store	20
	i32.const	0
	local.set	60
	local.get	57
	local.get	60
	i32.gt_u
	local.set	61
	i32.const	1
	local.set	62
	local.get	61
	local.get	62
	i32.and 
	local.set	63
	local.get	63
	i32.eqz
	br_if   	1                               # 1: down to label334
# %bb.11:                               #   in Loop: Header=BB108_10 Depth=1
	local.get	5
	i32.load	4
	local.set	64
	local.get	5
	i32.load	20
	local.set	65
	local.get	64
	local.get	65
	i32.add 
	local.set	66
	local.get	66
	i32.load8_u	0
	local.set	67
	local.get	5
	i32.load	8
	local.set	68
	local.get	5
	i32.load	20
	local.set	69
	local.get	68
	local.get	69
	i32.add 
	local.set	70
	local.get	70
	local.get	67
	i32.store8	0
	br      	0                               # 0: up to label335
.LBB108_12:
	end_loop
	end_block                               # label334:
.LBB108_13:
	end_block                               # label328:
	return
	end_function
                                        # -- End function
	.section	.text.__cmovw,"",@
	.hidden	__cmovw                         # -- Begin function __cmovw
	.globl	__cmovw
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
	.functype	__cmovw (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	local.get	5
	i32.load	20
	local.set	6
	i32.const	2
	local.set	7
	local.get	6
	local.get	7
	i32.shr_u
	local.set	8
	local.get	5
	local.get	8
	i32.store	12
	local.get	5
	i32.load	20
	local.set	9
	i32.const	-4
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	local.get	5
	local.get	11
	i32.store	8
	local.get	5
	i32.load	28
	local.set	12
	local.get	5
	local.get	12
	i32.store	4
	local.get	5
	i32.load	24
	local.set	13
	local.get	5
	local.get	13
	i32.store	0
	local.get	5
	i32.load	4
	local.set	14
	local.get	5
	i32.load	0
	local.set	15
	local.get	14
	local.get	15
	i32.lt_u
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	block   	
	block   	
	block   	
	local.get	18
	br_if   	0                               # 0: down to label338
# %bb.1:
	local.get	5
	i32.load	4
	local.set	19
	local.get	5
	i32.load	0
	local.set	20
	local.get	5
	i32.load	20
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	19
	local.get	22
	i32.gt_u
	local.set	23
	i32.const	1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	25
	i32.eqz
	br_if   	1                               # 1: down to label337
.LBB109_2:
	end_block                               # label338:
	i32.const	0
	local.set	26
	local.get	5
	local.get	26
	i32.store	16
.LBB109_3:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label340:
	local.get	5
	i32.load	16
	local.set	27
	local.get	5
	i32.load	12
	local.set	28
	local.get	27
	local.get	28
	i32.lt_u
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	local.get	31
	i32.eqz
	br_if   	1                               # 1: down to label339
# %bb.4:                                #   in Loop: Header=BB109_3 Depth=1
	local.get	5
	i32.load	24
	local.set	32
	local.get	5
	i32.load	16
	local.set	33
	i32.const	2
	local.set	34
	local.get	33
	local.get	34
	i32.shl 
	local.set	35
	local.get	32
	local.get	35
	i32.add 
	local.set	36
	local.get	36
	i32.load	0
	local.set	37
	local.get	5
	i32.load	28
	local.set	38
	local.get	5
	i32.load	16
	local.set	39
	i32.const	2
	local.set	40
	local.get	39
	local.get	40
	i32.shl 
	local.set	41
	local.get	38
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	local.get	37
	i32.store	0
# %bb.5:                                #   in Loop: Header=BB109_3 Depth=1
	local.get	5
	i32.load	16
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	5
	local.get	45
	i32.store	16
	br      	0                               # 0: up to label340
.LBB109_6:
	end_loop
	end_block                               # label339:
.LBB109_7:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label342:
	local.get	5
	i32.load	20
	local.set	46
	local.get	5
	i32.load	8
	local.set	47
	local.get	46
	local.get	47
	i32.gt_u
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.and 
	local.set	50
	local.get	50
	i32.eqz
	br_if   	1                               # 1: down to label341
# %bb.8:                                #   in Loop: Header=BB109_7 Depth=1
	local.get	5
	i32.load	0
	local.set	51
	local.get	5
	i32.load	8
	local.set	52
	local.get	51
	local.get	52
	i32.add 
	local.set	53
	local.get	53
	i32.load8_u	0
	local.set	54
	local.get	5
	i32.load	4
	local.set	55
	local.get	5
	i32.load	8
	local.set	56
	local.get	55
	local.get	56
	i32.add 
	local.set	57
	local.get	57
	local.get	54
	i32.store8	0
	local.get	5
	i32.load	8
	local.set	58
	i32.const	1
	local.set	59
	local.get	58
	local.get	59
	i32.add 
	local.set	60
	local.get	5
	local.get	60
	i32.store	8
	br      	0                               # 0: up to label342
.LBB109_9:
	end_loop
	end_block                               # label341:
	br      	1                               # 1: down to label336
.LBB109_10:
	end_block                               # label337:
.LBB109_11:                             # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label344:
	local.get	5
	i32.load	20
	local.set	61
	i32.const	-1
	local.set	62
	local.get	61
	local.get	62
	i32.add 
	local.set	63
	local.get	5
	local.get	63
	i32.store	20
	i32.const	0
	local.set	64
	local.get	61
	local.get	64
	i32.gt_u
	local.set	65
	i32.const	1
	local.set	66
	local.get	65
	local.get	66
	i32.and 
	local.set	67
	local.get	67
	i32.eqz
	br_if   	1                               # 1: down to label343
# %bb.12:                               #   in Loop: Header=BB109_11 Depth=1
	local.get	5
	i32.load	0
	local.set	68
	local.get	5
	i32.load	20
	local.set	69
	local.get	68
	local.get	69
	i32.add 
	local.set	70
	local.get	70
	i32.load8_u	0
	local.set	71
	local.get	5
	i32.load	4
	local.set	72
	local.get	5
	i32.load	20
	local.set	73
	local.get	72
	local.get	73
	i32.add 
	local.set	74
	local.get	74
	local.get	71
	i32.store8	0
	br      	0                               # 0: up to label344
.LBB109_13:
	end_loop
	end_block                               # label343:
.LBB109_14:
	end_block                               # label336:
	return
	end_function
                                        # -- End function
	.section	.text.__modi,"",@
	.hidden	__modi                          # -- Begin function __modi
	.globl	__modi
	.type	__modi,@function
__modi:                                 # @__modi
	.functype	__modi (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	4
	i32.load	8
	local.set	6
	local.get	5
	local.get	6
	i32.rem_s
	local.set	7
	local.get	7
	return
	end_function
                                        # -- End function
	.section	.text.__uitod,"",@
	.hidden	__uitod                         # -- Begin function __uitod
	.globl	__uitod
	.type	__uitod,@function
__uitod:                                # @__uitod
	.functype	__uitod (i32) -> (f64)
	.local  	i32, i32, i32, i32, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	4
	f64.convert_i32_u
	local.set	5
	local.get	5
	return
	end_function
                                        # -- End function
	.section	.text.__uitof,"",@
	.hidden	__uitof                         # -- Begin function __uitof
	.globl	__uitof
	.type	__uitof,@function
__uitof:                                # @__uitof
	.functype	__uitof (i32) -> (f32)
	.local  	i32, i32, i32, i32, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	4
	f32.convert_i32_u
	local.set	5
	local.get	5
	return
	end_function
                                        # -- End function
	.section	.text.__ulltod,"",@
	.hidden	__ulltod                        # -- Begin function __ulltod
	.globl	__ulltod
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
	.functype	__ulltod (i64) -> (f64)
	.local  	i32, i32, i32, i64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	8
	local.get	3
	i64.load	8
	local.set	4
	local.get	4
	f64.convert_i64_u
	local.set	5
	local.get	5
	return
	end_function
                                        # -- End function
	.section	.text.__ulltof,"",@
	.hidden	__ulltof                        # -- Begin function __ulltof
	.globl	__ulltof
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
	.functype	__ulltof (i64) -> (f32)
	.local  	i32, i32, i32, i64, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	8
	local.get	3
	i64.load	8
	local.set	4
	local.get	4
	f32.convert_i64_u
	local.set	5
	local.get	5
	return
	end_function
                                        # -- End function
	.section	.text.__umodi,"",@
	.hidden	__umodi                         # -- Begin function __umodi
	.globl	__umodi
	.type	__umodi,@function
__umodi:                                # @__umodi
	.functype	__umodi (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	4
	i32.load	8
	local.set	6
	local.get	5
	local.get	6
	i32.rem_u
	local.set	7
	local.get	7
	return
	end_function
                                        # -- End function
	.section	.text.__clzhi2,"",@
	.hidden	__clzhi2                        # -- Begin function __clzhi2
	.globl	__clzhi2
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
	.functype	__clzhi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label346:
	local.get	3
	i32.load	8
	local.set	5
	i32.const	16
	local.set	6
	local.get	5
	local.get	6
	i32.lt_s
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	9
	i32.eqz
	br_if   	1                               # 1: down to label345
# %bb.2:                                #   in Loop: Header=BB116_1 Depth=1
	local.get	3
	i32.load16_u	14
	local.set	10
	i32.const	65535
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	3
	i32.load	8
	local.set	13
	i32.const	15
	local.set	14
	local.get	14
	local.get	13
	i32.sub 
	local.set	15
	i32.const	1
	local.set	16
	local.get	16
	local.get	15
	i32.shl 
	local.set	17
	local.get	12
	local.get	17
	i32.and 
	local.set	18
	block   	
	local.get	18
	i32.eqz
	br_if   	0                               # 0: down to label347
# %bb.3:
	br      	2                               # 2: down to label345
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	end_block                               # label347:
# %bb.5:                                #   in Loop: Header=BB116_1 Depth=1
	local.get	3
	i32.load	8
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.add 
	local.set	21
	local.get	3
	local.get	21
	i32.store	8
	br      	0                               # 0: up to label346
.LBB116_6:
	end_loop
	end_block                               # label345:
	local.get	3
	i32.load	8
	local.set	22
	local.get	22
	return
	end_function
                                        # -- End function
	.section	.text.__ctzhi2,"",@
	.hidden	__ctzhi2                        # -- Begin function __ctzhi2
	.globl	__ctzhi2
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
	.functype	__ctzhi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label349:
	local.get	3
	i32.load	8
	local.set	5
	i32.const	16
	local.set	6
	local.get	5
	local.get	6
	i32.lt_s
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	9
	i32.eqz
	br_if   	1                               # 1: down to label348
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	local.get	3
	i32.load16_u	14
	local.set	10
	i32.const	65535
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	3
	i32.load	8
	local.set	13
	i32.const	1
	local.set	14
	local.get	14
	local.get	13
	i32.shl 
	local.set	15
	local.get	12
	local.get	15
	i32.and 
	local.set	16
	block   	
	local.get	16
	i32.eqz
	br_if   	0                               # 0: down to label350
# %bb.3:
	br      	2                               # 2: down to label348
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	end_block                               # label350:
# %bb.5:                                #   in Loop: Header=BB117_1 Depth=1
	local.get	3
	i32.load	8
	local.set	17
	i32.const	1
	local.set	18
	local.get	17
	local.get	18
	i32.add 
	local.set	19
	local.get	3
	local.get	19
	i32.store	8
	br      	0                               # 0: up to label349
.LBB117_6:
	end_loop
	end_block                               # label348:
	local.get	3
	i32.load	8
	local.set	20
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.__fixunssfsi,"",@
	.hidden	__fixunssfsi                    # -- Begin function __fixunssfsi
	.globl	__fixunssfsi
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
	.functype	__fixunssfsi (f32) -> (i32)
	.local  	i32, i32, i32, f32, f32, i32, i32, i32, f32, f32, f32, f32, f32, i32, i32, i32, i32, i32, i32, i32, i32, f32, f32, f32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	f32.store	8
	local.get	3
	f32.load	8
	local.set	4
	f32.const	0x1p15
	local.set	5
	local.get	4
	local.get	5
	f32.ge  
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.and 
	local.set	8
	block   	
	block   	
	local.get	8
	i32.eqz
	br_if   	0                               # 0: down to label352
# %bb.1:
	local.get	3
	f32.load	8
	local.set	9
	f32.const	0x1p15
	local.set	10
	local.get	9
	local.get	10
	f32.sub 
	local.set	11
	local.get	11
	f32.abs 
	local.set	12
	f32.const	0x1p31
	local.set	13
	local.get	12
	local.get	13
	f32.lt  
	local.set	14
	local.get	14
	i32.eqz
	local.set	15
	block   	
	block   	
	local.get	15
	br_if   	0                               # 0: down to label354
# %bb.2:
	local.get	11
	i32.trunc_f32_s
	local.set	16
	local.get	16
	local.set	17
	br      	1                               # 1: down to label353
.LBB118_3:
	end_block                               # label354:
	i32.const	-2147483648
	local.set	18
	local.get	18
	local.set	17
.LBB118_4:
	end_block                               # label353:
	local.get	17
	local.set	19
	i32.const	32768
	local.set	20
	local.get	19
	local.get	20
	i32.add 
	local.set	21
	local.get	3
	local.get	21
	i32.store	12
	br      	1                               # 1: down to label351
.LBB118_5:
	end_block                               # label352:
	local.get	3
	f32.load	8
	local.set	22
	local.get	22
	f32.abs 
	local.set	23
	f32.const	0x1p31
	local.set	24
	local.get	23
	local.get	24
	f32.lt  
	local.set	25
	local.get	25
	i32.eqz
	local.set	26
	block   	
	block   	
	local.get	26
	br_if   	0                               # 0: down to label356
# %bb.6:
	local.get	22
	i32.trunc_f32_s
	local.set	27
	local.get	27
	local.set	28
	br      	1                               # 1: down to label355
.LBB118_7:
	end_block                               # label356:
	i32.const	-2147483648
	local.set	29
	local.get	29
	local.set	28
.LBB118_8:
	end_block                               # label355:
	local.get	28
	local.set	30
	local.get	3
	local.get	30
	i32.store	12
.LBB118_9:
	end_block                               # label351:
	local.get	3
	i32.load	12
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.__parityhi2,"",@
	.hidden	__parityhi2                     # -- Begin function __parityhi2
	.globl	__parityhi2
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
	.functype	__parityhi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	4
	i32.const	0
	local.set	5
	local.get	3
	local.get	5
	i32.store	8
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label358:
	local.get	3
	i32.load	8
	local.set	6
	i32.const	16
	local.set	7
	local.get	6
	local.get	7
	i32.lt_s
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	10
	i32.eqz
	br_if   	1                               # 1: down to label357
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	local.get	3
	i32.load16_u	14
	local.set	11
	i32.const	65535
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	local.get	3
	i32.load	8
	local.set	14
	i32.const	1
	local.set	15
	local.get	15
	local.get	14
	i32.shl 
	local.set	16
	local.get	13
	local.get	16
	i32.and 
	local.set	17
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label359
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
	local.get	3
	i32.load	4
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.add 
	local.set	20
	local.get	3
	local.get	20
	i32.store	4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	end_block                               # label359:
# %bb.5:                                #   in Loop: Header=BB119_1 Depth=1
	local.get	3
	i32.load	8
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.add 
	local.set	23
	local.get	3
	local.get	23
	i32.store	8
	br      	0                               # 0: up to label358
.LBB119_6:
	end_loop
	end_block                               # label357:
	local.get	3
	i32.load	4
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	local.get	26
	return
	end_function
                                        # -- End function
	.section	.text.__popcounthi2,"",@
	.hidden	__popcounthi2                   # -- Begin function __popcounthi2
	.globl	__popcounthi2
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
	.functype	__popcounthi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	4
	i32.const	0
	local.set	5
	local.get	3
	local.get	5
	i32.store	8
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label361:
	local.get	3
	i32.load	8
	local.set	6
	i32.const	16
	local.set	7
	local.get	6
	local.get	7
	i32.lt_s
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	10
	i32.eqz
	br_if   	1                               # 1: down to label360
# %bb.2:                                #   in Loop: Header=BB120_1 Depth=1
	local.get	3
	i32.load16_u	14
	local.set	11
	i32.const	65535
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	local.get	3
	i32.load	8
	local.set	14
	i32.const	1
	local.set	15
	local.get	15
	local.get	14
	i32.shl 
	local.set	16
	local.get	13
	local.get	16
	i32.and 
	local.set	17
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label362
# %bb.3:                                #   in Loop: Header=BB120_1 Depth=1
	local.get	3
	i32.load	4
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.add 
	local.set	20
	local.get	3
	local.get	20
	i32.store	4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	end_block                               # label362:
# %bb.5:                                #   in Loop: Header=BB120_1 Depth=1
	local.get	3
	i32.load	8
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.add 
	local.set	23
	local.get	3
	local.get	23
	i32.store	8
	br      	0                               # 0: up to label361
.LBB120_6:
	end_loop
	end_block                               # label360:
	local.get	3
	i32.load	4
	local.set	24
	local.get	24
	return
	end_function
                                        # -- End function
	.section	.text.__mulsi3_iq2000,"",@
	.hidden	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.functype	__mulsi3_iq2000 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label364:
	local.get	4
	i32.load	12
	local.set	6
	local.get	6
	i32.eqz
	br_if   	1                               # 1: down to label363
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	local.get	4
	i32.load	12
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label365
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	local.get	4
	i32.load	8
	local.set	10
	local.get	4
	i32.load	4
	local.set	11
	local.get	11
	local.get	10
	i32.add 
	local.set	12
	local.get	4
	local.get	12
	i32.store	4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	end_block                               # label365:
	local.get	4
	i32.load	12
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.shr_u
	local.set	15
	local.get	4
	local.get	15
	i32.store	12
	local.get	4
	i32.load	8
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.shl 
	local.set	18
	local.get	4
	local.get	18
	i32.store	8
	br      	0                               # 0: up to label364
.LBB121_5:
	end_loop
	end_block                               # label363:
	local.get	4
	i32.load	4
	local.set	19
	local.get	19
	return
	end_function
                                        # -- End function
	.section	.text.__mulsi3_lm32,"",@
	.hidden	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
	.functype	__mulsi3_lm32 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	8
	local.get	4
	local.get	1
	i32.store	4
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	0
	local.get	4
	i32.load	8
	local.set	6
	block   	
	block   	
	local.get	6
	br_if   	0                               # 0: down to label367
# %bb.1:
	i32.const	0
	local.set	7
	local.get	4
	local.get	7
	i32.store	12
	br      	1                               # 1: down to label366
.LBB122_2:
	end_block                               # label367:
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label369:
	local.get	4
	i32.load	4
	local.set	8
	local.get	8
	i32.eqz
	br_if   	1                               # 1: down to label368
# %bb.4:                                #   in Loop: Header=BB122_3 Depth=1
	local.get	4
	i32.load	4
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label370
# %bb.5:                                #   in Loop: Header=BB122_3 Depth=1
	local.get	4
	i32.load	8
	local.set	12
	local.get	4
	i32.load	0
	local.set	13
	local.get	13
	local.get	12
	i32.add 
	local.set	14
	local.get	4
	local.get	14
	i32.store	0
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	end_block                               # label370:
	local.get	4
	i32.load	8
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.shl 
	local.set	17
	local.get	4
	local.get	17
	i32.store	8
	local.get	4
	i32.load	4
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.shr_u
	local.set	20
	local.get	4
	local.get	20
	i32.store	4
	br      	0                               # 0: up to label369
.LBB122_7:
	end_loop
	end_block                               # label368:
	local.get	4
	i32.load	0
	local.set	21
	local.get	4
	local.get	21
	i32.store	12
.LBB122_8:
	end_block                               # label366:
	local.get	4
	i32.load	12
	local.set	22
	local.get	22
	return
	end_function
                                        # -- End function
	.section	.text.__udivmodsi4,"",@
	.hidden	__udivmodsi4                    # -- Begin function __udivmodsi4
	.globl	__udivmodsi4
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
	.functype	__udivmodsi4 (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	24
	local.get	5
	local.get	1
	i32.store	20
	local.get	5
	local.get	2
	i32.store	16
	i32.const	1
	local.set	6
	local.get	5
	local.get	6
	i32.store	12
	i32.const	0
	local.set	7
	local.get	5
	local.get	7
	i32.store	8
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label371:
	local.get	5
	i32.load	20
	local.set	8
	local.get	5
	i32.load	24
	local.set	9
	local.get	8
	local.get	9
	i32.lt_u
	local.set	10
	i32.const	0
	local.set	11
	i32.const	1
	local.set	12
	local.get	10
	local.get	12
	i32.and 
	local.set	13
	local.get	11
	local.set	14
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label372
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	local.get	5
	i32.load	12
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.set	14
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label372
# %bb.3:                                #   in Loop: Header=BB123_1 Depth=1
	local.get	5
	i32.load	20
	local.set	17
	i32.const	-2147483648
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	i32.const	0
	local.set	20
	local.get	19
	local.get	20
	i32.ne  
	local.set	21
	i32.const	-1
	local.set	22
	local.get	21
	local.get	22
	i32.xor 
	local.set	23
	local.get	23
	local.set	14
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	end_block                               # label372:
	local.get	14
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	block   	
	local.get	26
	i32.eqz
	br_if   	0                               # 0: down to label373
# %bb.5:                                #   in Loop: Header=BB123_1 Depth=1
	local.get	5
	i32.load	20
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.shl 
	local.set	29
	local.get	5
	local.get	29
	i32.store	20
	local.get	5
	i32.load	12
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.shl 
	local.set	32
	local.get	5
	local.get	32
	i32.store	12
	br      	1                               # 1: up to label371
.LBB123_6:
	end_block                               # label373:
	end_loop
.LBB123_7:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label375:
	local.get	5
	i32.load	12
	local.set	33
	local.get	33
	i32.eqz
	br_if   	1                               # 1: down to label374
# %bb.8:                                #   in Loop: Header=BB123_7 Depth=1
	local.get	5
	i32.load	24
	local.set	34
	local.get	5
	i32.load	20
	local.set	35
	local.get	34
	local.get	35
	i32.ge_u
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.and 
	local.set	38
	block   	
	local.get	38
	i32.eqz
	br_if   	0                               # 0: down to label376
# %bb.9:                                #   in Loop: Header=BB123_7 Depth=1
	local.get	5
	i32.load	20
	local.set	39
	local.get	5
	i32.load	24
	local.set	40
	local.get	40
	local.get	39
	i32.sub 
	local.set	41
	local.get	5
	local.get	41
	i32.store	24
	local.get	5
	i32.load	12
	local.set	42
	local.get	5
	i32.load	8
	local.set	43
	local.get	43
	local.get	42
	i32.or  
	local.set	44
	local.get	5
	local.get	44
	i32.store	8
.LBB123_10:                             #   in Loop: Header=BB123_7 Depth=1
	end_block                               # label376:
	local.get	5
	i32.load	12
	local.set	45
	i32.const	1
	local.set	46
	local.get	45
	local.get	46
	i32.shr_u
	local.set	47
	local.get	5
	local.get	47
	i32.store	12
	local.get	5
	i32.load	20
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.shr_u
	local.set	50
	local.get	5
	local.get	50
	i32.store	20
	br      	0                               # 0: up to label375
.LBB123_11:
	end_loop
	end_block                               # label374:
	local.get	5
	i32.load	16
	local.set	51
	block   	
	block   	
	local.get	51
	i32.eqz
	br_if   	0                               # 0: down to label378
# %bb.12:
	local.get	5
	i32.load	24
	local.set	52
	local.get	5
	local.get	52
	i32.store	28
	br      	1                               # 1: down to label377
.LBB123_13:
	end_block                               # label378:
	local.get	5
	i32.load	8
	local.set	53
	local.get	5
	local.get	53
	i32.store	28
.LBB123_14:
	end_block                               # label377:
	local.get	5
	i32.load	28
	local.set	54
	local.get	54
	return
	end_function
                                        # -- End function
	.section	.text.__mspabi_cmpf,"",@
	.hidden	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
	.functype	__mspabi_cmpf (f32, f32) -> (i32)
	.local  	i32, i32, i32, f32, f32, i32, i32, i32, i32, f32, f32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f32.store	8
	local.get	4
	local.get	1
	f32.store	4
	local.get	4
	f32.load	8
	local.set	5
	local.get	4
	f32.load	4
	local.set	6
	local.get	5
	local.get	6
	f32.lt  
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	block   	
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label380
# %bb.1:
	i32.const	4294967295
	local.set	10
	local.get	4
	local.get	10
	i32.store	12
	br      	1                               # 1: down to label379
.LBB124_2:
	end_block                               # label380:
	local.get	4
	f32.load	8
	local.set	11
	local.get	4
	f32.load	4
	local.set	12
	local.get	11
	local.get	12
	f32.gt  
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label381
# %bb.3:
	i32.const	1
	local.set	16
	local.get	4
	local.get	16
	i32.store	12
	br      	1                               # 1: down to label379
.LBB124_4:
	end_block                               # label381:
	i32.const	0
	local.set	17
	local.get	4
	local.get	17
	i32.store	12
.LBB124_5:
	end_block                               # label379:
	local.get	4
	i32.load	12
	local.set	18
	local.get	18
	return
	end_function
                                        # -- End function
	.section	.text.__mspabi_cmpd,"",@
	.hidden	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
	.functype	__mspabi_cmpd (f64, f64) -> (i32)
	.local  	i32, i32, i32, f64, f64, i32, i32, i32, i32, f64, f64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f64.store	16
	local.get	4
	local.get	1
	f64.store	8
	local.get	4
	f64.load	16
	local.set	5
	local.get	4
	f64.load	8
	local.set	6
	local.get	5
	local.get	6
	f64.lt  
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	block   	
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label383
# %bb.1:
	i32.const	4294967295
	local.set	10
	local.get	4
	local.get	10
	i32.store	28
	br      	1                               # 1: down to label382
.LBB125_2:
	end_block                               # label383:
	local.get	4
	f64.load	16
	local.set	11
	local.get	4
	f64.load	8
	local.set	12
	local.get	11
	local.get	12
	f64.gt  
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label384
# %bb.3:
	i32.const	1
	local.set	16
	local.get	4
	local.get	16
	i32.store	28
	br      	1                               # 1: down to label382
.LBB125_4:
	end_block                               # label384:
	i32.const	0
	local.set	17
	local.get	4
	local.get	17
	i32.store	28
.LBB125_5:
	end_block                               # label382:
	local.get	4
	i32.load	28
	local.set	18
	local.get	18
	return
	end_function
                                        # -- End function
	.section	.text.__mspabi_mpysll,"",@
	.hidden	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
	.functype	__mspabi_mpysll (i32, i32) -> (i64)
	.local  	i32, i32, i32, i32, i32, i64, i32, i32, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	5
	local.set	6
	local.get	6
	i64.extend_i32_s
	local.set	7
	local.get	4
	i32.load	8
	local.set	8
	local.get	8
	local.set	9
	local.get	9
	i64.extend_i32_s
	local.set	10
	local.get	7
	local.get	10
	i64.mul 
	local.set	11
	local.get	11
	return
	end_function
                                        # -- End function
	.section	.text.__mspabi_mpyull,"",@
	.hidden	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
	.functype	__mspabi_mpyull (i32, i32) -> (i64)
	.local  	i32, i32, i32, i32, i32, i64, i32, i32, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	5
	local.set	6
	local.get	6
	i64.extend_i32_u
	local.set	7
	local.get	4
	i32.load	8
	local.set	8
	local.get	8
	local.set	9
	local.get	9
	i64.extend_i32_u
	local.set	10
	local.get	7
	local.get	10
	i64.mul 
	local.set	11
	local.get	11
	return
	end_function
                                        # -- End function
	.section	.text.__mulhi3,"",@
	.hidden	__mulhi3                        # -- Begin function __mulhi3
	.globl	__mulhi3
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
	.functype	__mulhi3 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	28
	local.get	4
	local.get	1
	i32.store	24
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	16
	i32.const	0
	local.set	6
	local.get	4
	local.get	6
	i32.store	12
	local.get	4
	i32.load	24
	local.set	7
	i32.const	0
	local.set	8
	local.get	7
	local.get	8
	i32.lt_s
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label385
# %bb.1:
	local.get	4
	i32.load	24
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i32.sub 
	local.set	14
	local.get	4
	local.get	14
	i32.store	24
	i32.const	1
	local.set	15
	local.get	4
	local.get	15
	i32.store	16
.LBB128_2:
	end_block                               # label385:
	i32.const	0
	local.set	16
	local.get	4
	local.get	16
	i32.store8	23
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label386:
	local.get	4
	i32.load	24
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.set	19
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label387
# %bb.4:                                #   in Loop: Header=BB128_3 Depth=1
	local.get	4
	i32.load8_u	23
	local.set	20
	i32.const	24
	local.set	21
	local.get	20
	local.get	21
	i32.shl 
	local.set	22
	local.get	22
	local.get	21
	i32.shr_s
	local.set	23
	i32.const	32
	local.set	24
	local.get	23
	local.get	24
	i32.lt_u
	local.set	25
	local.get	25
	local.set	19
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	end_block                               # label387:
	local.get	19
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	block   	
	local.get	28
	i32.eqz
	br_if   	0                               # 0: down to label388
# %bb.6:                                #   in Loop: Header=BB128_3 Depth=1
	local.get	4
	i32.load	24
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	block   	
	local.get	31
	i32.eqz
	br_if   	0                               # 0: down to label389
# %bb.7:                                #   in Loop: Header=BB128_3 Depth=1
	local.get	4
	i32.load	28
	local.set	32
	local.get	4
	i32.load	12
	local.set	33
	local.get	33
	local.get	32
	i32.add 
	local.set	34
	local.get	4
	local.get	34
	i32.store	12
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	end_block                               # label389:
	local.get	4
	i32.load	28
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.shl 
	local.set	37
	local.get	4
	local.get	37
	i32.store	28
	local.get	4
	i32.load	24
	local.set	38
	i32.const	1
	local.set	39
	local.get	38
	local.get	39
	i32.shr_s
	local.set	40
	local.get	4
	local.get	40
	i32.store	24
# %bb.9:                                #   in Loop: Header=BB128_3 Depth=1
	local.get	4
	i32.load8_u	23
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.add 
	local.set	43
	local.get	4
	local.get	43
	i32.store8	23
	br      	1                               # 1: up to label386
.LBB128_10:
	end_block                               # label388:
	end_loop
	local.get	4
	i32.load	16
	local.set	44
	block   	
	block   	
	local.get	44
	i32.eqz
	br_if   	0                               # 0: down to label391
# %bb.11:
	local.get	4
	i32.load	12
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i32.sub 
	local.set	47
	local.get	47
	local.set	48
	br      	1                               # 1: down to label390
.LBB128_12:
	end_block                               # label391:
	local.get	4
	i32.load	12
	local.set	49
	local.get	49
	local.set	48
.LBB128_13:
	end_block                               # label390:
	local.get	48
	local.set	50
	local.get	50
	return
	end_function
                                        # -- End function
	.section	.text.__divsi3,"",@
	.hidden	__divsi3                        # -- Begin function __divsi3
	.globl	__divsi3
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
	.functype	__divsi3 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
	local.get	4
	i32.load	12
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.get	7
	i32.lt_s
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	block   	
	local.get	10
	i32.eqz
	br_if   	0                               # 0: down to label392
# %bb.1:
	local.get	4
	i32.load	12
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i32.sub 
	local.set	13
	local.get	4
	local.get	13
	i32.store	12
	local.get	4
	i32.load	4
	local.set	14
	i32.const	0
	local.set	15
	local.get	14
	local.get	15
	i32.ne  
	local.set	16
	i32.const	-1
	local.set	17
	local.get	16
	local.get	17
	i32.xor 
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	local.get	4
	local.get	20
	i32.store	4
.LBB129_2:
	end_block                               # label392:
	local.get	4
	i32.load	8
	local.set	21
	i32.const	0
	local.set	22
	local.get	21
	local.get	22
	i32.lt_s
	local.set	23
	i32.const	1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	block   	
	local.get	25
	i32.eqz
	br_if   	0                               # 0: down to label393
# %bb.3:
	local.get	4
	i32.load	8
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i32.sub 
	local.set	28
	local.get	4
	local.get	28
	i32.store	8
	local.get	4
	i32.load	4
	local.set	29
	i32.const	0
	local.set	30
	local.get	29
	local.get	30
	i32.ne  
	local.set	31
	i32.const	-1
	local.set	32
	local.get	31
	local.get	32
	i32.xor 
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	4
	local.get	35
	i32.store	4
.LBB129_4:
	end_block                               # label393:
	local.get	4
	i32.load	12
	local.set	36
	local.get	4
	i32.load	8
	local.set	37
	i32.const	0
	local.set	38
	local.get	36
	local.get	37
	local.get	38
	call	__udivmodsi4
	local.set	39
	local.get	4
	local.get	39
	i32.store	0
	local.get	4
	i32.load	4
	local.set	40
	block   	
	local.get	40
	i32.eqz
	br_if   	0                               # 0: down to label394
# %bb.5:
	local.get	4
	i32.load	0
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i32.sub 
	local.set	43
	local.get	4
	local.get	43
	i32.store	0
.LBB129_6:
	end_block                               # label394:
	local.get	4
	i32.load	0
	local.set	44
	i32.const	16
	local.set	45
	local.get	4
	local.get	45
	i32.add 
	local.set	46
	local.get	46
	global.set	__stack_pointer
	local.get	44
	return
	end_function
                                        # -- End function
	.section	.text.__modsi3,"",@
	.hidden	__modsi3                        # -- Begin function __modsi3
	.globl	__modsi3
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
	.functype	__modsi3 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
	local.get	4
	i32.load	12
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.get	7
	i32.lt_s
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	block   	
	local.get	10
	i32.eqz
	br_if   	0                               # 0: down to label395
# %bb.1:
	local.get	4
	i32.load	12
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i32.sub 
	local.set	13
	local.get	4
	local.get	13
	i32.store	12
	i32.const	1
	local.set	14
	local.get	4
	local.get	14
	i32.store	4
.LBB130_2:
	end_block                               # label395:
	local.get	4
	i32.load	8
	local.set	15
	i32.const	0
	local.set	16
	local.get	15
	local.get	16
	i32.lt_s
	local.set	17
	i32.const	1
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	block   	
	local.get	19
	i32.eqz
	br_if   	0                               # 0: down to label396
# %bb.3:
	local.get	4
	i32.load	8
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i32.sub 
	local.set	22
	local.get	4
	local.get	22
	i32.store	8
.LBB130_4:
	end_block                               # label396:
	local.get	4
	i32.load	12
	local.set	23
	local.get	4
	i32.load	8
	local.set	24
	i32.const	1
	local.set	25
	local.get	23
	local.get	24
	local.get	25
	call	__udivmodsi4
	local.set	26
	local.get	4
	local.get	26
	i32.store	0
	local.get	4
	i32.load	4
	local.set	27
	block   	
	local.get	27
	i32.eqz
	br_if   	0                               # 0: down to label397
# %bb.5:
	local.get	4
	i32.load	0
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i32.sub 
	local.set	30
	local.get	4
	local.get	30
	i32.store	0
.LBB130_6:
	end_block                               # label397:
	local.get	4
	i32.load	0
	local.set	31
	i32.const	16
	local.set	32
	local.get	4
	local.get	32
	i32.add 
	local.set	33
	local.get	33
	global.set	__stack_pointer
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.__udivmodhi4,"",@
	.hidden	__udivmodhi4                    # -- Begin function __udivmodhi4
	.globl	__udivmodhi4
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
	.functype	__udivmodhi4 (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store16	12
	local.get	5
	local.get	1
	i32.store16	10
	local.get	5
	local.get	2
	i32.store	4
	i32.const	1
	local.set	6
	local.get	5
	local.get	6
	i32.store16	2
	i32.const	0
	local.set	7
	local.get	5
	local.get	7
	i32.store16	0
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label398:
	local.get	5
	i32.load16_u	10
	local.set	8
	i32.const	65535
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	5
	i32.load16_u	12
	local.set	11
	i32.const	65535
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	local.get	10
	local.get	13
	i32.lt_s
	local.set	14
	i32.const	0
	local.set	15
	i32.const	1
	local.set	16
	local.get	14
	local.get	16
	i32.and 
	local.set	17
	local.get	15
	local.set	18
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label399
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	local.get	5
	i32.load16_u	2
	local.set	19
	i32.const	65535
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.set	18
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label399
# %bb.3:                                #   in Loop: Header=BB131_1 Depth=1
	local.get	5
	i32.load16_u	10
	local.set	23
	i32.const	65535
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	i32.const	32768
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	i32.const	0
	local.set	28
	local.get	27
	local.get	28
	i32.ne  
	local.set	29
	i32.const	-1
	local.set	30
	local.get	29
	local.get	30
	i32.xor 
	local.set	31
	local.get	31
	local.set	18
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	end_block                               # label399:
	local.get	18
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	block   	
	local.get	34
	i32.eqz
	br_if   	0                               # 0: down to label400
# %bb.5:                                #   in Loop: Header=BB131_1 Depth=1
	local.get	5
	i32.load16_u	10
	local.set	35
	i32.const	65535
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.shl 
	local.set	39
	local.get	5
	local.get	39
	i32.store16	10
	local.get	5
	i32.load16_u	2
	local.set	40
	i32.const	65535
	local.set	41
	local.get	40
	local.get	41
	i32.and 
	local.set	42
	i32.const	1
	local.set	43
	local.get	42
	local.get	43
	i32.shl 
	local.set	44
	local.get	5
	local.get	44
	i32.store16	2
	br      	1                               # 1: up to label398
.LBB131_6:
	end_block                               # label400:
	end_loop
.LBB131_7:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label402:
	local.get	5
	i32.load16_u	2
	local.set	45
	i32.const	0
	local.set	46
	i32.const	65535
	local.set	47
	local.get	45
	local.get	47
	i32.and 
	local.set	48
	i32.const	65535
	local.set	49
	local.get	46
	local.get	49
	i32.and 
	local.set	50
	local.get	48
	local.get	50
	i32.ne  
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	local.get	53
	i32.eqz
	br_if   	1                               # 1: down to label401
# %bb.8:                                #   in Loop: Header=BB131_7 Depth=1
	local.get	5
	i32.load16_u	12
	local.set	54
	i32.const	65535
	local.set	55
	local.get	54
	local.get	55
	i32.and 
	local.set	56
	local.get	5
	i32.load16_u	10
	local.set	57
	i32.const	65535
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	local.get	56
	local.get	59
	i32.ge_s
	local.set	60
	i32.const	1
	local.set	61
	local.get	60
	local.get	61
	i32.and 
	local.set	62
	block   	
	local.get	62
	i32.eqz
	br_if   	0                               # 0: down to label403
# %bb.9:                                #   in Loop: Header=BB131_7 Depth=1
	local.get	5
	i32.load16_u	10
	local.set	63
	i32.const	65535
	local.set	64
	local.get	63
	local.get	64
	i32.and 
	local.set	65
	local.get	5
	i32.load16_u	12
	local.set	66
	i32.const	65535
	local.set	67
	local.get	66
	local.get	67
	i32.and 
	local.set	68
	local.get	68
	local.get	65
	i32.sub 
	local.set	69
	local.get	5
	local.get	69
	i32.store16	12
	local.get	5
	i32.load16_u	2
	local.set	70
	i32.const	65535
	local.set	71
	local.get	70
	local.get	71
	i32.and 
	local.set	72
	local.get	5
	i32.load16_u	0
	local.set	73
	i32.const	65535
	local.set	74
	local.get	73
	local.get	74
	i32.and 
	local.set	75
	local.get	75
	local.get	72
	i32.or  
	local.set	76
	local.get	5
	local.get	76
	i32.store16	0
.LBB131_10:                             #   in Loop: Header=BB131_7 Depth=1
	end_block                               # label403:
	local.get	5
	i32.load16_u	2
	local.set	77
	i32.const	65535
	local.set	78
	local.get	77
	local.get	78
	i32.and 
	local.set	79
	i32.const	1
	local.set	80
	local.get	79
	local.get	80
	i32.shr_s
	local.set	81
	local.get	5
	local.get	81
	i32.store16	2
	local.get	5
	i32.load16_u	10
	local.set	82
	i32.const	65535
	local.set	83
	local.get	82
	local.get	83
	i32.and 
	local.set	84
	i32.const	1
	local.set	85
	local.get	84
	local.get	85
	i32.shr_s
	local.set	86
	local.get	5
	local.get	86
	i32.store16	10
	br      	0                               # 0: up to label402
.LBB131_11:
	end_loop
	end_block                               # label401:
	local.get	5
	i32.load	4
	local.set	87
	block   	
	block   	
	local.get	87
	i32.eqz
	br_if   	0                               # 0: down to label405
# %bb.12:
	local.get	5
	i32.load16_u	12
	local.set	88
	local.get	5
	local.get	88
	i32.store16	14
	br      	1                               # 1: down to label404
.LBB131_13:
	end_block                               # label405:
	local.get	5
	i32.load16_u	0
	local.set	89
	local.get	5
	local.get	89
	i32.store16	14
.LBB131_14:
	end_block                               # label404:
	local.get	5
	i32.load16_u	14
	local.set	90
	i32.const	65535
	local.set	91
	local.get	90
	local.get	91
	i32.and 
	local.set	92
	local.get	92
	return
	end_function
                                        # -- End function
	.section	.text.__udivmodsi4_libgcc,"",@
	.hidden	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.functype	__udivmodsi4_libgcc (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	0
	i32.store	24
	local.get	5
	local.get	1
	i32.store	20
	local.get	5
	local.get	2
	i32.store	16
	i32.const	1
	local.set	6
	local.get	5
	local.get	6
	i32.store	12
	i32.const	0
	local.set	7
	local.get	5
	local.get	7
	i32.store	8
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label406:
	local.get	5
	i32.load	20
	local.set	8
	local.get	5
	i32.load	24
	local.set	9
	local.get	8
	local.get	9
	i32.lt_u
	local.set	10
	i32.const	0
	local.set	11
	i32.const	1
	local.set	12
	local.get	10
	local.get	12
	i32.and 
	local.set	13
	local.get	11
	local.set	14
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label407
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	local.get	5
	i32.load	12
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.set	14
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label407
# %bb.3:                                #   in Loop: Header=BB132_1 Depth=1
	local.get	5
	i32.load	20
	local.set	17
	i32.const	-2147483648
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	i32.const	0
	local.set	20
	local.get	19
	local.get	20
	i32.ne  
	local.set	21
	i32.const	-1
	local.set	22
	local.get	21
	local.get	22
	i32.xor 
	local.set	23
	local.get	23
	local.set	14
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	end_block                               # label407:
	local.get	14
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	block   	
	local.get	26
	i32.eqz
	br_if   	0                               # 0: down to label408
# %bb.5:                                #   in Loop: Header=BB132_1 Depth=1
	local.get	5
	i32.load	20
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.shl 
	local.set	29
	local.get	5
	local.get	29
	i32.store	20
	local.get	5
	i32.load	12
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.shl 
	local.set	32
	local.get	5
	local.get	32
	i32.store	12
	br      	1                               # 1: up to label406
.LBB132_6:
	end_block                               # label408:
	end_loop
.LBB132_7:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label410:
	local.get	5
	i32.load	12
	local.set	33
	local.get	33
	i32.eqz
	br_if   	1                               # 1: down to label409
# %bb.8:                                #   in Loop: Header=BB132_7 Depth=1
	local.get	5
	i32.load	24
	local.set	34
	local.get	5
	i32.load	20
	local.set	35
	local.get	34
	local.get	35
	i32.ge_u
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.and 
	local.set	38
	block   	
	local.get	38
	i32.eqz
	br_if   	0                               # 0: down to label411
# %bb.9:                                #   in Loop: Header=BB132_7 Depth=1
	local.get	5
	i32.load	20
	local.set	39
	local.get	5
	i32.load	24
	local.set	40
	local.get	40
	local.get	39
	i32.sub 
	local.set	41
	local.get	5
	local.get	41
	i32.store	24
	local.get	5
	i32.load	12
	local.set	42
	local.get	5
	i32.load	8
	local.set	43
	local.get	43
	local.get	42
	i32.or  
	local.set	44
	local.get	5
	local.get	44
	i32.store	8
.LBB132_10:                             #   in Loop: Header=BB132_7 Depth=1
	end_block                               # label411:
	local.get	5
	i32.load	12
	local.set	45
	i32.const	1
	local.set	46
	local.get	45
	local.get	46
	i32.shr_u
	local.set	47
	local.get	5
	local.get	47
	i32.store	12
	local.get	5
	i32.load	20
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.shr_u
	local.set	50
	local.get	5
	local.get	50
	i32.store	20
	br      	0                               # 0: up to label410
.LBB132_11:
	end_loop
	end_block                               # label409:
	local.get	5
	i32.load	16
	local.set	51
	block   	
	block   	
	local.get	51
	i32.eqz
	br_if   	0                               # 0: down to label413
# %bb.12:
	local.get	5
	i32.load	24
	local.set	52
	local.get	5
	local.get	52
	i32.store	28
	br      	1                               # 1: down to label412
.LBB132_13:
	end_block                               # label413:
	local.get	5
	i32.load	8
	local.set	53
	local.get	5
	local.get	53
	i32.store	28
.LBB132_14:
	end_block                               # label412:
	local.get	5
	i32.load	28
	local.set	54
	local.get	54
	return
	end_function
                                        # -- End function
	.section	.text.__ashldi3,"",@
	.hidden	__ashldi3                       # -- Begin function __ashldi3
	.globl	__ashldi3
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
	.functype	__ashldi3 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i32.store	28
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.store	24
	local.get	4
	i64.load	32
	local.set	6
	local.get	4
	local.get	6
	i64.store	16
	local.get	4
	i32.load	28
	local.set	7
	i32.const	32
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	block   	
	block   	
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label416
# %bb.1:
	i32.const	0
	local.set	10
	local.get	4
	local.get	10
	i32.store	8
	local.get	4
	i32.load	16
	local.set	11
	local.get	4
	i32.load	28
	local.set	12
	i32.const	32
	local.set	13
	local.get	12
	local.get	13
	i32.sub 
	local.set	14
	local.get	11
	local.get	14
	i32.shl 
	local.set	15
	local.get	4
	local.get	15
	i32.store	12
	br      	1                               # 1: down to label415
.LBB133_2:
	end_block                               # label416:
	local.get	4
	i32.load	28
	local.set	16
	block   	
	local.get	16
	br_if   	0                               # 0: down to label417
# %bb.3:
	local.get	4
	i64.load	32
	local.set	17
	local.get	4
	local.get	17
	i64.store	40
	br      	2                               # 2: down to label414
.LBB133_4:
	end_block                               # label417:
	local.get	4
	i32.load	16
	local.set	18
	local.get	4
	i32.load	28
	local.set	19
	local.get	18
	local.get	19
	i32.shl 
	local.set	20
	local.get	4
	local.get	20
	i32.store	8
	local.get	4
	i32.load	20
	local.set	21
	local.get	4
	i32.load	28
	local.set	22
	local.get	21
	local.get	22
	i32.shl 
	local.set	23
	local.get	4
	i32.load	16
	local.set	24
	local.get	4
	i32.load	28
	local.set	25
	i32.const	32
	local.set	26
	local.get	26
	local.get	25
	i32.sub 
	local.set	27
	local.get	24
	local.get	27
	i32.shr_u
	local.set	28
	local.get	23
	local.get	28
	i32.or  
	local.set	29
	local.get	4
	local.get	29
	i32.store	12
.LBB133_5:
	end_block                               # label415:
	local.get	4
	i64.load	8
	local.set	30
	local.get	4
	local.get	30
	i64.store	40
.LBB133_6:
	end_block                               # label414:
	local.get	4
	i64.load	40
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.__ashlti3,"",@
	.hidden	__ashlti3                       # -- Begin function __ashlti3
	.globl	__ashlti3
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
	.functype	__ashlti3 (i32, i64, i64, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	80
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	local.get	1
	i64.store	48
	local.get	6
	local.get	2
	i64.store	56
	local.get	6
	local.get	3
	i32.store	44
	i32.const	64
	local.set	7
	local.get	6
	local.get	7
	i32.store	40
	local.get	6
	i64.load	48
	local.set	8
	local.get	6
	i64.load	56
	local.set	9
	local.get	6
	local.get	9
	i64.store	24
	local.get	6
	local.get	8
	i64.store	16
	local.get	6
	i32.load	44
	local.set	10
	i32.const	64
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label420
# %bb.1:
	i64.const	0
	local.set	13
	local.get	6
	local.get	13
	i64.store	0
	local.get	6
	i64.load	16
	local.set	14
	local.get	6
	i32.load	44
	local.set	15
	i32.const	64
	local.set	16
	local.get	15
	local.get	16
	i32.sub 
	local.set	17
	local.get	17
	local.set	18
	local.get	18
	i64.extend_i32_u
	local.set	19
	local.get	14
	local.get	19
	i64.shl 
	local.set	20
	local.get	6
	local.get	20
	i64.store	8
	br      	1                               # 1: down to label419
.LBB134_2:
	end_block                               # label420:
	local.get	6
	i32.load	44
	local.set	21
	block   	
	local.get	21
	br_if   	0                               # 0: down to label421
# %bb.3:
	local.get	6
	i64.load	48
	local.set	22
	local.get	6
	i64.load	56
	local.set	23
	local.get	6
	local.get	23
	i64.store	72
	local.get	6
	local.get	22
	i64.store	64
	br      	2                               # 2: down to label418
.LBB134_4:
	end_block                               # label421:
	local.get	6
	i64.load	16
	local.set	24
	local.get	6
	i32.load	44
	local.set	25
	local.get	25
	local.set	26
	local.get	26
	i64.extend_i32_u
	local.set	27
	local.get	24
	local.get	27
	i64.shl 
	local.set	28
	local.get	6
	local.get	28
	i64.store	0
	local.get	6
	i64.load	24
	local.set	29
	local.get	6
	i32.load	44
	local.set	30
	local.get	30
	local.set	31
	local.get	31
	i64.extend_i32_u
	local.set	32
	local.get	29
	local.get	32
	i64.shl 
	local.set	33
	local.get	6
	i64.load	16
	local.set	34
	local.get	6
	i32.load	44
	local.set	35
	i32.const	64
	local.set	36
	local.get	36
	local.get	35
	i32.sub 
	local.set	37
	local.get	37
	local.set	38
	local.get	38
	i64.extend_i32_u
	local.set	39
	local.get	34
	local.get	39
	i64.shr_u
	local.set	40
	local.get	33
	local.get	40
	i64.or  
	local.set	41
	local.get	6
	local.get	41
	i64.store	8
.LBB134_5:
	end_block                               # label419:
	local.get	6
	i64.load	0
	local.set	42
	local.get	6
	i64.load	8
	local.set	43
	local.get	6
	local.get	43
	i64.store	72
	local.get	6
	local.get	42
	i64.store	64
.LBB134_6:
	end_block                               # label418:
	local.get	6
	i64.load	64
	local.set	44
	local.get	6
	i64.load	72
	local.set	45
	local.get	0
	local.get	45
	i64.store	8
	local.get	0
	local.get	44
	i64.store	0
	return
	end_function
                                        # -- End function
	.section	.text.__ashrdi3,"",@
	.hidden	__ashrdi3                       # -- Begin function __ashrdi3
	.globl	__ashrdi3
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
	.functype	__ashrdi3 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i32.store	28
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.store	24
	local.get	4
	i64.load	32
	local.set	6
	local.get	4
	local.get	6
	i64.store	16
	local.get	4
	i32.load	28
	local.set	7
	i32.const	32
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	block   	
	block   	
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label424
# %bb.1:
	local.get	4
	i32.load	20
	local.set	10
	i32.const	31
	local.set	11
	local.get	10
	local.get	11
	i32.shr_s
	local.set	12
	local.get	4
	local.get	12
	i32.store	12
	local.get	4
	i32.load	20
	local.set	13
	local.get	4
	i32.load	28
	local.set	14
	i32.const	32
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	local.get	13
	local.get	16
	i32.shr_s
	local.set	17
	local.get	4
	local.get	17
	i32.store	8
	br      	1                               # 1: down to label423
.LBB135_2:
	end_block                               # label424:
	local.get	4
	i32.load	28
	local.set	18
	block   	
	local.get	18
	br_if   	0                               # 0: down to label425
# %bb.3:
	local.get	4
	i64.load	32
	local.set	19
	local.get	4
	local.get	19
	i64.store	40
	br      	2                               # 2: down to label422
.LBB135_4:
	end_block                               # label425:
	local.get	4
	i32.load	20
	local.set	20
	local.get	4
	i32.load	28
	local.set	21
	local.get	20
	local.get	21
	i32.shr_s
	local.set	22
	local.get	4
	local.get	22
	i32.store	12
	local.get	4
	i32.load	20
	local.set	23
	local.get	4
	i32.load	28
	local.set	24
	i32.const	32
	local.set	25
	local.get	25
	local.get	24
	i32.sub 
	local.set	26
	local.get	23
	local.get	26
	i32.shl 
	local.set	27
	local.get	4
	i32.load	16
	local.set	28
	local.get	4
	i32.load	28
	local.set	29
	local.get	28
	local.get	29
	i32.shr_u
	local.set	30
	local.get	27
	local.get	30
	i32.or  
	local.set	31
	local.get	4
	local.get	31
	i32.store	8
.LBB135_5:
	end_block                               # label423:
	local.get	4
	i64.load	8
	local.set	32
	local.get	4
	local.get	32
	i64.store	40
.LBB135_6:
	end_block                               # label422:
	local.get	4
	i64.load	40
	local.set	33
	local.get	33
	return
	end_function
                                        # -- End function
	.section	.text.__ashrti3,"",@
	.hidden	__ashrti3                       # -- Begin function __ashrti3
	.globl	__ashrti3
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
	.functype	__ashrti3 (i32, i64, i64, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	80
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	local.get	1
	i64.store	48
	local.get	6
	local.get	2
	i64.store	56
	local.get	6
	local.get	3
	i32.store	44
	i32.const	64
	local.set	7
	local.get	6
	local.get	7
	i32.store	40
	local.get	6
	i64.load	48
	local.set	8
	local.get	6
	i64.load	56
	local.set	9
	local.get	6
	local.get	9
	i64.store	24
	local.get	6
	local.get	8
	i64.store	16
	local.get	6
	i32.load	44
	local.set	10
	i32.const	64
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label428
# %bb.1:
	local.get	6
	i64.load	24
	local.set	13
	i64.const	63
	local.set	14
	local.get	13
	local.get	14
	i64.shr_s
	local.set	15
	local.get	6
	local.get	15
	i64.store	8
	local.get	6
	i64.load	24
	local.set	16
	local.get	6
	i32.load	44
	local.set	17
	i32.const	64
	local.set	18
	local.get	17
	local.get	18
	i32.sub 
	local.set	19
	local.get	19
	local.set	20
	local.get	20
	i64.extend_i32_u
	local.set	21
	local.get	16
	local.get	21
	i64.shr_s
	local.set	22
	local.get	6
	local.get	22
	i64.store	0
	br      	1                               # 1: down to label427
.LBB136_2:
	end_block                               # label428:
	local.get	6
	i32.load	44
	local.set	23
	block   	
	local.get	23
	br_if   	0                               # 0: down to label429
# %bb.3:
	local.get	6
	i64.load	48
	local.set	24
	local.get	6
	i64.load	56
	local.set	25
	local.get	6
	local.get	25
	i64.store	72
	local.get	6
	local.get	24
	i64.store	64
	br      	2                               # 2: down to label426
.LBB136_4:
	end_block                               # label429:
	local.get	6
	i64.load	24
	local.set	26
	local.get	6
	i32.load	44
	local.set	27
	local.get	27
	local.set	28
	local.get	28
	i64.extend_i32_u
	local.set	29
	local.get	26
	local.get	29
	i64.shr_s
	local.set	30
	local.get	6
	local.get	30
	i64.store	8
	local.get	6
	i64.load	24
	local.set	31
	local.get	6
	i32.load	44
	local.set	32
	i32.const	64
	local.set	33
	local.get	33
	local.get	32
	i32.sub 
	local.set	34
	local.get	34
	local.set	35
	local.get	35
	i64.extend_i32_u
	local.set	36
	local.get	31
	local.get	36
	i64.shl 
	local.set	37
	local.get	6
	i64.load	16
	local.set	38
	local.get	6
	i32.load	44
	local.set	39
	local.get	39
	local.set	40
	local.get	40
	i64.extend_i32_u
	local.set	41
	local.get	38
	local.get	41
	i64.shr_u
	local.set	42
	local.get	37
	local.get	42
	i64.or  
	local.set	43
	local.get	6
	local.get	43
	i64.store	0
.LBB136_5:
	end_block                               # label427:
	local.get	6
	i64.load	0
	local.set	44
	local.get	6
	i64.load	8
	local.set	45
	local.get	6
	local.get	45
	i64.store	72
	local.get	6
	local.get	44
	i64.store	64
.LBB136_6:
	end_block                               # label426:
	local.get	6
	i64.load	64
	local.set	46
	local.get	6
	i64.load	72
	local.set	47
	local.get	0
	local.get	47
	i64.store	8
	local.get	0
	local.get	46
	i64.store	0
	return
	end_function
                                        # -- End function
	.section	.text.__bswapdi2,"",@
	.hidden	__bswapdi2                      # -- Begin function __bswapdi2
	.globl	__bswapdi2
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
	.functype	__bswapdi2 (i64) -> (i64)
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	8
	local.get	3
	i64.load	8
	local.set	4
	i64.const	-72057594037927936
	local.set	5
	local.get	4
	local.get	5
	i64.and 
	local.set	6
	i64.const	56
	local.set	7
	local.get	6
	local.get	7
	i64.shr_u
	local.set	8
	local.get	3
	i64.load	8
	local.set	9
	i64.const	71776119061217280
	local.set	10
	local.get	9
	local.get	10
	i64.and 
	local.set	11
	i64.const	40
	local.set	12
	local.get	11
	local.get	12
	i64.shr_u
	local.set	13
	local.get	8
	local.get	13
	i64.or  
	local.set	14
	local.get	3
	i64.load	8
	local.set	15
	i64.const	280375465082880
	local.set	16
	local.get	15
	local.get	16
	i64.and 
	local.set	17
	i64.const	24
	local.set	18
	local.get	17
	local.get	18
	i64.shr_u
	local.set	19
	local.get	14
	local.get	19
	i64.or  
	local.set	20
	local.get	3
	i64.load	8
	local.set	21
	i64.const	1095216660480
	local.set	22
	local.get	21
	local.get	22
	i64.and 
	local.set	23
	i64.const	8
	local.set	24
	local.get	23
	local.get	24
	i64.shr_u
	local.set	25
	local.get	20
	local.get	25
	i64.or  
	local.set	26
	local.get	3
	i64.load	8
	local.set	27
	i64.const	4278190080
	local.set	28
	local.get	27
	local.get	28
	i64.and 
	local.set	29
	i64.const	8
	local.set	30
	local.get	29
	local.get	30
	i64.shl 
	local.set	31
	local.get	26
	local.get	31
	i64.or  
	local.set	32
	local.get	3
	i64.load	8
	local.set	33
	i64.const	16711680
	local.set	34
	local.get	33
	local.get	34
	i64.and 
	local.set	35
	i64.const	24
	local.set	36
	local.get	35
	local.get	36
	i64.shl 
	local.set	37
	local.get	32
	local.get	37
	i64.or  
	local.set	38
	local.get	3
	i64.load	8
	local.set	39
	i64.const	65280
	local.set	40
	local.get	39
	local.get	40
	i64.and 
	local.set	41
	i64.const	40
	local.set	42
	local.get	41
	local.get	42
	i64.shl 
	local.set	43
	local.get	38
	local.get	43
	i64.or  
	local.set	44
	local.get	3
	i64.load	8
	local.set	45
	i64.const	255
	local.set	46
	local.get	45
	local.get	46
	i64.and 
	local.set	47
	i64.const	56
	local.set	48
	local.get	47
	local.get	48
	i64.shl 
	local.set	49
	local.get	44
	local.get	49
	i64.or  
	local.set	50
	local.get	50
	return
	end_function
                                        # -- End function
	.section	.text.__bswapsi2,"",@
	.hidden	__bswapsi2                      # -- Begin function __bswapsi2
	.globl	__bswapsi2
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
	.functype	__bswapsi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	-16777216
	local.set	5
	local.get	4
	local.get	5
	i32.and 
	local.set	6
	i32.const	24
	local.set	7
	local.get	6
	local.get	7
	i32.shr_u
	local.set	8
	local.get	3
	i32.load	12
	local.set	9
	i32.const	16711680
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	i32.const	8
	local.set	12
	local.get	11
	local.get	12
	i32.shr_u
	local.set	13
	local.get	8
	local.get	13
	i32.or  
	local.set	14
	local.get	3
	i32.load	12
	local.set	15
	i32.const	65280
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	i32.const	8
	local.set	18
	local.get	17
	local.get	18
	i32.shl 
	local.set	19
	local.get	14
	local.get	19
	i32.or  
	local.set	20
	local.get	3
	i32.load	12
	local.set	21
	i32.const	255
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	i32.const	24
	local.set	24
	local.get	23
	local.get	24
	i32.shl 
	local.set	25
	local.get	20
	local.get	25
	i32.or  
	local.set	26
	local.get	26
	return
	end_function
                                        # -- End function
	.section	.text.__clzsi2,"",@
	.hidden	__clzsi2                        # -- Begin function __clzsi2
	.globl	__clzsi2
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
	.functype	__clzsi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
	local.get	3
	i32.load	8
	local.set	5
	i32.const	-65536
	local.set	6
	local.get	5
	local.get	6
	i32.and 
	local.set	7
	i32.const	0
	local.set	8
	local.get	7
	local.get	8
	i32.eq  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	i32.const	4
	local.set	12
	local.get	11
	local.get	12
	i32.shl 
	local.set	13
	local.get	3
	local.get	13
	i32.store	4
	local.get	3
	i32.load	4
	local.set	14
	i32.const	16
	local.set	15
	local.get	15
	local.get	14
	i32.sub 
	local.set	16
	local.get	3
	i32.load	8
	local.set	17
	local.get	17
	local.get	16
	i32.shr_u
	local.set	18
	local.get	3
	local.get	18
	i32.store	8
	local.get	3
	i32.load	4
	local.set	19
	local.get	3
	local.get	19
	i32.store	0
	local.get	3
	i32.load	8
	local.set	20
	i32.const	65280
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	i32.const	0
	local.set	23
	local.get	22
	local.get	23
	i32.eq  
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	i32.const	3
	local.set	27
	local.get	26
	local.get	27
	i32.shl 
	local.set	28
	local.get	3
	local.get	28
	i32.store	4
	local.get	3
	i32.load	4
	local.set	29
	i32.const	8
	local.set	30
	local.get	30
	local.get	29
	i32.sub 
	local.set	31
	local.get	3
	i32.load	8
	local.set	32
	local.get	32
	local.get	31
	i32.shr_u
	local.set	33
	local.get	3
	local.get	33
	i32.store	8
	local.get	3
	i32.load	4
	local.set	34
	local.get	3
	i32.load	0
	local.set	35
	local.get	35
	local.get	34
	i32.add 
	local.set	36
	local.get	3
	local.get	36
	i32.store	0
	local.get	3
	i32.load	8
	local.set	37
	i32.const	240
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	i32.const	0
	local.set	40
	local.get	39
	local.get	40
	i32.eq  
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	i32.const	2
	local.set	44
	local.get	43
	local.get	44
	i32.shl 
	local.set	45
	local.get	3
	local.get	45
	i32.store	4
	local.get	3
	i32.load	4
	local.set	46
	i32.const	4
	local.set	47
	local.get	47
	local.get	46
	i32.sub 
	local.set	48
	local.get	3
	i32.load	8
	local.set	49
	local.get	49
	local.get	48
	i32.shr_u
	local.set	50
	local.get	3
	local.get	50
	i32.store	8
	local.get	3
	i32.load	4
	local.set	51
	local.get	3
	i32.load	0
	local.set	52
	local.get	52
	local.get	51
	i32.add 
	local.set	53
	local.get	3
	local.get	53
	i32.store	0
	local.get	3
	i32.load	8
	local.set	54
	i32.const	12
	local.set	55
	local.get	54
	local.get	55
	i32.and 
	local.set	56
	i32.const	0
	local.set	57
	local.get	56
	local.get	57
	i32.eq  
	local.set	58
	i32.const	1
	local.set	59
	local.get	58
	local.get	59
	i32.and 
	local.set	60
	i32.const	1
	local.set	61
	local.get	60
	local.get	61
	i32.shl 
	local.set	62
	local.get	3
	local.get	62
	i32.store	4
	local.get	3
	i32.load	4
	local.set	63
	i32.const	2
	local.set	64
	local.get	64
	local.get	63
	i32.sub 
	local.set	65
	local.get	3
	i32.load	8
	local.set	66
	local.get	66
	local.get	65
	i32.shr_u
	local.set	67
	local.get	3
	local.get	67
	i32.store	8
	local.get	3
	i32.load	4
	local.set	68
	local.get	3
	i32.load	0
	local.set	69
	local.get	69
	local.get	68
	i32.add 
	local.set	70
	local.get	3
	local.get	70
	i32.store	0
	local.get	3
	i32.load	0
	local.set	71
	local.get	3
	i32.load	8
	local.set	72
	i32.const	2
	local.set	73
	local.get	73
	local.get	72
	i32.sub 
	local.set	74
	local.get	3
	i32.load	8
	local.set	75
	i32.const	2
	local.set	76
	local.get	75
	local.get	76
	i32.and 
	local.set	77
	i32.const	0
	local.set	78
	local.get	77
	local.get	78
	i32.eq  
	local.set	79
	i32.const	1
	local.set	80
	local.get	79
	local.get	80
	i32.and 
	local.set	81
	i32.const	0
	local.set	82
	local.get	82
	local.get	81
	i32.sub 
	local.set	83
	local.get	74
	local.get	83
	i32.and 
	local.set	84
	local.get	71
	local.get	84
	i32.add 
	local.set	85
	local.get	85
	return
	end_function
                                        # -- End function
	.section	.text.__clzti2,"",@
	.hidden	__clzti2                        # -- Begin function __clzti2
	.globl	__clzti2
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
	.functype	__clzti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i64.store	40
	local.get	4
	i64.load	32
	local.set	5
	local.get	4
	i64.load	40
	local.set	6
	local.get	4
	local.get	6
	i64.store	24
	local.get	4
	local.get	5
	i64.store	16
	local.get	4
	i64.load	24
	local.set	7
	i64.const	0
	local.set	8
	local.get	7
	local.get	8
	i64.eq  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i32.sub 
	local.set	13
	local.get	13
	local.set	14
	local.get	14
	i64.extend_i32_s
	local.set	15
	local.get	4
	local.get	15
	i64.store	8
	local.get	4
	i64.load	24
	local.set	16
	local.get	4
	i64.load	8
	local.set	17
	i64.const	-1
	local.set	18
	local.get	17
	local.get	18
	i64.xor 
	local.set	19
	local.get	16
	local.get	19
	i64.and 
	local.set	20
	local.get	4
	i64.load	16
	local.set	21
	local.get	4
	i64.load	8
	local.set	22
	local.get	21
	local.get	22
	i64.and 
	local.set	23
	local.get	20
	local.get	23
	i64.or  
	local.set	24
	local.get	24
	i64.clz 
	local.set	25
	local.get	25
	i32.wrap_i64
	local.set	26
	local.get	4
	i64.load	8
	local.set	27
	local.get	27
	i32.wrap_i64
	local.set	28
	i32.const	64
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	local.get	26
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.__cmpdi2,"",@
	.hidden	__cmpdi2                        # -- Begin function __cmpdi2
	.globl	__cmpdi2
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
	.functype	__cmpdi2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i64.store	24
	local.get	4
	i64.load	32
	local.set	5
	local.get	4
	local.get	5
	i64.store	16
	local.get	4
	i64.load	24
	local.set	6
	local.get	4
	local.get	6
	i64.store	8
	local.get	4
	i32.load	20
	local.set	7
	local.get	4
	i32.load	12
	local.set	8
	local.get	7
	local.get	8
	i32.lt_s
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label431
# %bb.1:
	i32.const	0
	local.set	12
	local.get	4
	local.get	12
	i32.store	44
	br      	1                               # 1: down to label430
.LBB141_2:
	end_block                               # label431:
	local.get	4
	i32.load	20
	local.set	13
	local.get	4
	i32.load	12
	local.set	14
	local.get	13
	local.get	14
	i32.gt_s
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label432
# %bb.3:
	i32.const	2
	local.set	18
	local.get	4
	local.get	18
	i32.store	44
	br      	1                               # 1: down to label430
.LBB141_4:
	end_block                               # label432:
	local.get	4
	i32.load	16
	local.set	19
	local.get	4
	i32.load	8
	local.set	20
	local.get	19
	local.get	20
	i32.lt_u
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	block   	
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label433
# %bb.5:
	i32.const	0
	local.set	24
	local.get	4
	local.get	24
	i32.store	44
	br      	1                               # 1: down to label430
.LBB141_6:
	end_block                               # label433:
	local.get	4
	i32.load	16
	local.set	25
	local.get	4
	i32.load	8
	local.set	26
	local.get	25
	local.get	26
	i32.gt_u
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	block   	
	local.get	29
	i32.eqz
	br_if   	0                               # 0: down to label434
# %bb.7:
	i32.const	2
	local.set	30
	local.get	4
	local.get	30
	i32.store	44
	br      	1                               # 1: down to label430
.LBB141_8:
	end_block                               # label434:
	i32.const	1
	local.set	31
	local.get	4
	local.get	31
	i32.store	44
.LBB141_9:
	end_block                               # label430:
	local.get	4
	i32.load	44
	local.set	32
	local.get	32
	return
	end_function
                                        # -- End function
	.section	.text.__aeabi_lcmp,"",@
	.hidden	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
	.functype	__aeabi_lcmp (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i64.store	8
	local.get	4
	local.get	1
	i64.store	0
	local.get	4
	i64.load	8
	local.set	5
	local.get	4
	i64.load	0
	local.set	6
	local.get	5
	local.get	6
	call	__cmpdi2
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.sub 
	local.set	9
	i32.const	16
	local.set	10
	local.get	4
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	global.set	__stack_pointer
	local.get	9
	return
	end_function
                                        # -- End function
	.section	.text.__cmpti2,"",@
	.hidden	__cmpti2                        # -- Begin function __cmpti2
	.globl	__cmpti2
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
	.functype	__cmpti2 (i64, i64, i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	80
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	local.get	0
	i64.store	48
	local.get	6
	local.get	1
	i64.store	56
	local.get	6
	local.get	3
	i64.store	40
	local.get	6
	local.get	2
	i64.store	32
	local.get	6
	i64.load	48
	local.set	7
	local.get	6
	i64.load	56
	local.set	8
	local.get	6
	local.get	8
	i64.store	24
	local.get	6
	local.get	7
	i64.store	16
	local.get	6
	i64.load	32
	local.set	9
	local.get	6
	i64.load	40
	local.set	10
	local.get	6
	local.get	10
	i64.store	8
	local.get	6
	local.get	9
	i64.store	0
	local.get	6
	i64.load	24
	local.set	11
	local.get	6
	i64.load	8
	local.set	12
	local.get	11
	local.get	12
	i64.lt_s
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	block   	
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label436
# %bb.1:
	i32.const	0
	local.set	16
	local.get	6
	local.get	16
	i32.store	76
	br      	1                               # 1: down to label435
.LBB143_2:
	end_block                               # label436:
	local.get	6
	i64.load	24
	local.set	17
	local.get	6
	i64.load	8
	local.set	18
	local.get	17
	local.get	18
	i64.gt_s
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label437
# %bb.3:
	i32.const	2
	local.set	22
	local.get	6
	local.get	22
	i32.store	76
	br      	1                               # 1: down to label435
.LBB143_4:
	end_block                               # label437:
	local.get	6
	i64.load	16
	local.set	23
	local.get	6
	i64.load	0
	local.set	24
	local.get	23
	local.get	24
	i64.lt_u
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	block   	
	local.get	27
	i32.eqz
	br_if   	0                               # 0: down to label438
# %bb.5:
	i32.const	0
	local.set	28
	local.get	6
	local.get	28
	i32.store	76
	br      	1                               # 1: down to label435
.LBB143_6:
	end_block                               # label438:
	local.get	6
	i64.load	16
	local.set	29
	local.get	6
	i64.load	0
	local.set	30
	local.get	29
	local.get	30
	i64.gt_u
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.and 
	local.set	33
	block   	
	local.get	33
	i32.eqz
	br_if   	0                               # 0: down to label439
# %bb.7:
	i32.const	2
	local.set	34
	local.get	6
	local.get	34
	i32.store	76
	br      	1                               # 1: down to label435
.LBB143_8:
	end_block                               # label439:
	i32.const	1
	local.set	35
	local.get	6
	local.get	35
	i32.store	76
.LBB143_9:
	end_block                               # label435:
	local.get	6
	i32.load	76
	local.set	36
	local.get	36
	return
	end_function
                                        # -- End function
	.section	.text.__ctzsi2,"",@
	.hidden	__ctzsi2                        # -- Begin function __ctzsi2
	.globl	__ctzsi2
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
	.functype	__ctzsi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
	local.get	3
	i32.load	8
	local.set	5
	i32.const	65535
	local.set	6
	local.get	5
	local.get	6
	i32.and 
	local.set	7
	i32.const	0
	local.set	8
	local.get	7
	local.get	8
	i32.eq  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	i32.const	4
	local.set	12
	local.get	11
	local.get	12
	i32.shl 
	local.set	13
	local.get	3
	local.get	13
	i32.store	4
	local.get	3
	i32.load	4
	local.set	14
	local.get	3
	i32.load	8
	local.set	15
	local.get	15
	local.get	14
	i32.shr_u
	local.set	16
	local.get	3
	local.get	16
	i32.store	8
	local.get	3
	i32.load	4
	local.set	17
	local.get	3
	local.get	17
	i32.store	0
	local.get	3
	i32.load	8
	local.set	18
	i32.const	255
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	i32.const	0
	local.set	21
	local.get	20
	local.get	21
	i32.eq  
	local.set	22
	i32.const	1
	local.set	23
	local.get	22
	local.get	23
	i32.and 
	local.set	24
	i32.const	3
	local.set	25
	local.get	24
	local.get	25
	i32.shl 
	local.set	26
	local.get	3
	local.get	26
	i32.store	4
	local.get	3
	i32.load	4
	local.set	27
	local.get	3
	i32.load	8
	local.set	28
	local.get	28
	local.get	27
	i32.shr_u
	local.set	29
	local.get	3
	local.get	29
	i32.store	8
	local.get	3
	i32.load	4
	local.set	30
	local.get	3
	i32.load	0
	local.set	31
	local.get	31
	local.get	30
	i32.add 
	local.set	32
	local.get	3
	local.get	32
	i32.store	0
	local.get	3
	i32.load	8
	local.set	33
	i32.const	15
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	i32.const	0
	local.set	36
	local.get	35
	local.get	36
	i32.eq  
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	i32.const	2
	local.set	40
	local.get	39
	local.get	40
	i32.shl 
	local.set	41
	local.get	3
	local.get	41
	i32.store	4
	local.get	3
	i32.load	4
	local.set	42
	local.get	3
	i32.load	8
	local.set	43
	local.get	43
	local.get	42
	i32.shr_u
	local.set	44
	local.get	3
	local.get	44
	i32.store	8
	local.get	3
	i32.load	4
	local.set	45
	local.get	3
	i32.load	0
	local.set	46
	local.get	46
	local.get	45
	i32.add 
	local.set	47
	local.get	3
	local.get	47
	i32.store	0
	local.get	3
	i32.load	8
	local.set	48
	i32.const	3
	local.set	49
	local.get	48
	local.get	49
	i32.and 
	local.set	50
	i32.const	0
	local.set	51
	local.get	50
	local.get	51
	i32.eq  
	local.set	52
	i32.const	1
	local.set	53
	local.get	52
	local.get	53
	i32.and 
	local.set	54
	i32.const	1
	local.set	55
	local.get	54
	local.get	55
	i32.shl 
	local.set	56
	local.get	3
	local.get	56
	i32.store	4
	local.get	3
	i32.load	4
	local.set	57
	local.get	3
	i32.load	8
	local.set	58
	local.get	58
	local.get	57
	i32.shr_u
	local.set	59
	local.get	3
	local.get	59
	i32.store	8
	local.get	3
	i32.load	8
	local.set	60
	i32.const	3
	local.set	61
	local.get	60
	local.get	61
	i32.and 
	local.set	62
	local.get	3
	local.get	62
	i32.store	8
	local.get	3
	i32.load	4
	local.set	63
	local.get	3
	i32.load	0
	local.set	64
	local.get	64
	local.get	63
	i32.add 
	local.set	65
	local.get	3
	local.get	65
	i32.store	0
	local.get	3
	i32.load	0
	local.set	66
	local.get	3
	i32.load	8
	local.set	67
	i32.const	1
	local.set	68
	local.get	67
	local.get	68
	i32.shr_u
	local.set	69
	i32.const	2
	local.set	70
	local.get	70
	local.get	69
	i32.sub 
	local.set	71
	local.get	3
	i32.load	8
	local.set	72
	i32.const	1
	local.set	73
	local.get	72
	local.get	73
	i32.and 
	local.set	74
	i32.const	0
	local.set	75
	local.get	74
	local.get	75
	i32.eq  
	local.set	76
	i32.const	1
	local.set	77
	local.get	76
	local.get	77
	i32.and 
	local.set	78
	i32.const	0
	local.set	79
	local.get	79
	local.get	78
	i32.sub 
	local.set	80
	local.get	71
	local.get	80
	i32.and 
	local.set	81
	local.get	66
	local.get	81
	i32.add 
	local.set	82
	local.get	82
	return
	end_function
                                        # -- End function
	.section	.text.__ctzti2,"",@
	.hidden	__ctzti2                        # -- Begin function __ctzti2
	.globl	__ctzti2
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
	.functype	__ctzti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i64.store	40
	local.get	4
	i64.load	32
	local.set	5
	local.get	4
	i64.load	40
	local.set	6
	local.get	4
	local.get	6
	i64.store	24
	local.get	4
	local.get	5
	i64.store	16
	local.get	4
	i64.load	16
	local.set	7
	i64.const	0
	local.set	8
	local.get	7
	local.get	8
	i64.eq  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i32.sub 
	local.set	13
	local.get	13
	local.set	14
	local.get	14
	i64.extend_i32_s
	local.set	15
	local.get	4
	local.get	15
	i64.store	8
	local.get	4
	i64.load	24
	local.set	16
	local.get	4
	i64.load	8
	local.set	17
	local.get	16
	local.get	17
	i64.and 
	local.set	18
	local.get	4
	i64.load	16
	local.set	19
	local.get	4
	i64.load	8
	local.set	20
	i64.const	-1
	local.set	21
	local.get	20
	local.get	21
	i64.xor 
	local.set	22
	local.get	19
	local.get	22
	i64.and 
	local.set	23
	local.get	18
	local.get	23
	i64.or  
	local.set	24
	local.get	24
	i64.ctz 
	local.set	25
	local.get	25
	i32.wrap_i64
	local.set	26
	local.get	4
	i64.load	8
	local.set	27
	local.get	27
	i32.wrap_i64
	local.set	28
	i32.const	64
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	local.get	26
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.__ffsti2,"",@
	.hidden	__ffsti2                        # -- Begin function __ffsti2
	.globl	__ffsti2
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
	.functype	__ffsti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	16
	local.get	4
	local.get	1
	i64.store	24
	local.get	4
	i64.load	16
	local.set	5
	local.get	4
	i64.load	24
	local.set	6
	local.get	4
	local.get	6
	i64.store	8
	local.get	4
	local.get	5
	i64.store	0
	local.get	4
	i64.load	0
	local.set	7
	i64.const	0
	local.set	8
	local.get	7
	local.get	8
	i64.eq  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label441
# %bb.1:
	local.get	4
	i64.load	8
	local.set	12
	i64.const	0
	local.set	13
	local.get	12
	local.get	13
	i64.eq  
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	block   	
	local.get	16
	i32.eqz
	br_if   	0                               # 0: down to label442
# %bb.2:
	i32.const	0
	local.set	17
	local.get	4
	local.get	17
	i32.store	44
	br      	2                               # 2: down to label440
.LBB146_3:
	end_block                               # label442:
	local.get	4
	i64.load	8
	local.set	18
	local.get	18
	i64.ctz 
	local.set	19
	local.get	19
	i32.wrap_i64
	local.set	20
	i32.const	65
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	4
	local.get	22
	i32.store	44
	br      	1                               # 1: down to label440
.LBB146_4:
	end_block                               # label441:
	local.get	4
	i64.load	0
	local.set	23
	local.get	23
	i64.ctz 
	local.set	24
	local.get	24
	i32.wrap_i64
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.add 
	local.set	27
	local.get	4
	local.get	27
	i32.store	44
.LBB146_5:
	end_block                               # label440:
	local.get	4
	i32.load	44
	local.set	28
	local.get	28
	return
	end_function
                                        # -- End function
	.section	.text.__lshrdi3,"",@
	.hidden	__lshrdi3                       # -- Begin function __lshrdi3
	.globl	__lshrdi3
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
	.functype	__lshrdi3 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i32.store	28
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.store	24
	local.get	4
	i64.load	32
	local.set	6
	local.get	4
	local.get	6
	i64.store	16
	local.get	4
	i32.load	28
	local.set	7
	i32.const	32
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	block   	
	block   	
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label445
# %bb.1:
	i32.const	0
	local.set	10
	local.get	4
	local.get	10
	i32.store	12
	local.get	4
	i32.load	20
	local.set	11
	local.get	4
	i32.load	28
	local.set	12
	i32.const	32
	local.set	13
	local.get	12
	local.get	13
	i32.sub 
	local.set	14
	local.get	11
	local.get	14
	i32.shr_u
	local.set	15
	local.get	4
	local.get	15
	i32.store	8
	br      	1                               # 1: down to label444
.LBB147_2:
	end_block                               # label445:
	local.get	4
	i32.load	28
	local.set	16
	block   	
	local.get	16
	br_if   	0                               # 0: down to label446
# %bb.3:
	local.get	4
	i64.load	32
	local.set	17
	local.get	4
	local.get	17
	i64.store	40
	br      	2                               # 2: down to label443
.LBB147_4:
	end_block                               # label446:
	local.get	4
	i32.load	20
	local.set	18
	local.get	4
	i32.load	28
	local.set	19
	local.get	18
	local.get	19
	i32.shr_u
	local.set	20
	local.get	4
	local.get	20
	i32.store	12
	local.get	4
	i32.load	20
	local.set	21
	local.get	4
	i32.load	28
	local.set	22
	i32.const	32
	local.set	23
	local.get	23
	local.get	22
	i32.sub 
	local.set	24
	local.get	21
	local.get	24
	i32.shl 
	local.set	25
	local.get	4
	i32.load	16
	local.set	26
	local.get	4
	i32.load	28
	local.set	27
	local.get	26
	local.get	27
	i32.shr_u
	local.set	28
	local.get	25
	local.get	28
	i32.or  
	local.set	29
	local.get	4
	local.get	29
	i32.store	8
.LBB147_5:
	end_block                               # label444:
	local.get	4
	i64.load	8
	local.set	30
	local.get	4
	local.get	30
	i64.store	40
.LBB147_6:
	end_block                               # label443:
	local.get	4
	i64.load	40
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.__lshrti3,"",@
	.hidden	__lshrti3                       # -- Begin function __lshrti3
	.globl	__lshrti3
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
	.functype	__lshrti3 (i32, i64, i64, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	80
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	local.get	1
	i64.store	48
	local.get	6
	local.get	2
	i64.store	56
	local.get	6
	local.get	3
	i32.store	44
	i32.const	64
	local.set	7
	local.get	6
	local.get	7
	i32.store	40
	local.get	6
	i64.load	48
	local.set	8
	local.get	6
	i64.load	56
	local.set	9
	local.get	6
	local.get	9
	i64.store	24
	local.get	6
	local.get	8
	i64.store	16
	local.get	6
	i32.load	44
	local.set	10
	i32.const	64
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label449
# %bb.1:
	i64.const	0
	local.set	13
	local.get	6
	local.get	13
	i64.store	8
	local.get	6
	i64.load	24
	local.set	14
	local.get	6
	i32.load	44
	local.set	15
	i32.const	64
	local.set	16
	local.get	15
	local.get	16
	i32.sub 
	local.set	17
	local.get	17
	local.set	18
	local.get	18
	i64.extend_i32_u
	local.set	19
	local.get	14
	local.get	19
	i64.shr_u
	local.set	20
	local.get	6
	local.get	20
	i64.store	0
	br      	1                               # 1: down to label448
.LBB148_2:
	end_block                               # label449:
	local.get	6
	i32.load	44
	local.set	21
	block   	
	local.get	21
	br_if   	0                               # 0: down to label450
# %bb.3:
	local.get	6
	i64.load	48
	local.set	22
	local.get	6
	i64.load	56
	local.set	23
	local.get	6
	local.get	23
	i64.store	72
	local.get	6
	local.get	22
	i64.store	64
	br      	2                               # 2: down to label447
.LBB148_4:
	end_block                               # label450:
	local.get	6
	i64.load	24
	local.set	24
	local.get	6
	i32.load	44
	local.set	25
	local.get	25
	local.set	26
	local.get	26
	i64.extend_i32_u
	local.set	27
	local.get	24
	local.get	27
	i64.shr_u
	local.set	28
	local.get	6
	local.get	28
	i64.store	8
	local.get	6
	i64.load	24
	local.set	29
	local.get	6
	i32.load	44
	local.set	30
	i32.const	64
	local.set	31
	local.get	31
	local.get	30
	i32.sub 
	local.set	32
	local.get	32
	local.set	33
	local.get	33
	i64.extend_i32_u
	local.set	34
	local.get	29
	local.get	34
	i64.shl 
	local.set	35
	local.get	6
	i64.load	16
	local.set	36
	local.get	6
	i32.load	44
	local.set	37
	local.get	37
	local.set	38
	local.get	38
	i64.extend_i32_u
	local.set	39
	local.get	36
	local.get	39
	i64.shr_u
	local.set	40
	local.get	35
	local.get	40
	i64.or  
	local.set	41
	local.get	6
	local.get	41
	i64.store	0
.LBB148_5:
	end_block                               # label448:
	local.get	6
	i64.load	0
	local.set	42
	local.get	6
	i64.load	8
	local.set	43
	local.get	6
	local.get	43
	i64.store	72
	local.get	6
	local.get	42
	i64.store	64
.LBB148_6:
	end_block                               # label447:
	local.get	6
	i64.load	64
	local.set	44
	local.get	6
	i64.load	72
	local.set	45
	local.get	0
	local.get	45
	i64.store	8
	local.get	0
	local.get	44
	i64.store	0
	return
	end_function
                                        # -- End function
	.section	.text.__muldsi3,"",@
	.hidden	__muldsi3                       # -- Begin function __muldsi3
	.globl	__muldsi3
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
	.functype	__muldsi3 (i32, i32) -> (i64)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	28
	local.get	4
	local.get	1
	i32.store	24
	i32.const	16
	local.set	5
	local.get	4
	local.get	5
	i32.store	12
	i32.const	65535
	local.set	6
	local.get	4
	local.get	6
	i32.store	8
	local.get	4
	i32.load	28
	local.set	7
	i32.const	65535
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	4
	i32.load	24
	local.set	10
	i32.const	65535
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	9
	local.get	12
	i32.mul 
	local.set	13
	local.get	4
	local.get	13
	i32.store	16
	local.get	4
	i32.load	16
	local.set	14
	i32.const	16
	local.set	15
	local.get	14
	local.get	15
	i32.shr_u
	local.set	16
	local.get	4
	local.get	16
	i32.store	4
	local.get	4
	i32.load	16
	local.set	17
	i32.const	65535
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	local.get	4
	local.get	19
	i32.store	16
	local.get	4
	i32.load	28
	local.set	20
	i32.const	16
	local.set	21
	local.get	20
	local.get	21
	i32.shr_u
	local.set	22
	local.get	4
	i32.load	24
	local.set	23
	i32.const	65535
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	22
	local.get	25
	i32.mul 
	local.set	26
	local.get	4
	i32.load	4
	local.set	27
	local.get	27
	local.get	26
	i32.add 
	local.set	28
	local.get	4
	local.get	28
	i32.store	4
	local.get	4
	i32.load	4
	local.set	29
	i32.const	65535
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	i32.const	16
	local.set	32
	local.get	31
	local.get	32
	i32.shl 
	local.set	33
	local.get	4
	i32.load	16
	local.set	34
	local.get	34
	local.get	33
	i32.add 
	local.set	35
	local.get	4
	local.get	35
	i32.store	16
	local.get	4
	i32.load	4
	local.set	36
	i32.const	16
	local.set	37
	local.get	36
	local.get	37
	i32.shr_u
	local.set	38
	local.get	4
	local.get	38
	i32.store	20
	local.get	4
	i32.load	16
	local.set	39
	i32.const	16
	local.set	40
	local.get	39
	local.get	40
	i32.shr_u
	local.set	41
	local.get	4
	local.get	41
	i32.store	4
	local.get	4
	i32.load	16
	local.set	42
	i32.const	65535
	local.set	43
	local.get	42
	local.get	43
	i32.and 
	local.set	44
	local.get	4
	local.get	44
	i32.store	16
	local.get	4
	i32.load	24
	local.set	45
	i32.const	16
	local.set	46
	local.get	45
	local.get	46
	i32.shr_u
	local.set	47
	local.get	4
	i32.load	28
	local.set	48
	i32.const	65535
	local.set	49
	local.get	48
	local.get	49
	i32.and 
	local.set	50
	local.get	47
	local.get	50
	i32.mul 
	local.set	51
	local.get	4
	i32.load	4
	local.set	52
	local.get	52
	local.get	51
	i32.add 
	local.set	53
	local.get	4
	local.get	53
	i32.store	4
	local.get	4
	i32.load	4
	local.set	54
	i32.const	65535
	local.set	55
	local.get	54
	local.get	55
	i32.and 
	local.set	56
	i32.const	16
	local.set	57
	local.get	56
	local.get	57
	i32.shl 
	local.set	58
	local.get	4
	i32.load	16
	local.set	59
	local.get	59
	local.get	58
	i32.add 
	local.set	60
	local.get	4
	local.get	60
	i32.store	16
	local.get	4
	i32.load	4
	local.set	61
	i32.const	16
	local.set	62
	local.get	61
	local.get	62
	i32.shr_u
	local.set	63
	local.get	4
	i32.load	20
	local.set	64
	local.get	64
	local.get	63
	i32.add 
	local.set	65
	local.get	4
	local.get	65
	i32.store	20
	local.get	4
	i32.load	28
	local.set	66
	i32.const	16
	local.set	67
	local.get	66
	local.get	67
	i32.shr_u
	local.set	68
	local.get	4
	i32.load	24
	local.set	69
	i32.const	16
	local.set	70
	local.get	69
	local.get	70
	i32.shr_u
	local.set	71
	local.get	68
	local.get	71
	i32.mul 
	local.set	72
	local.get	4
	i32.load	20
	local.set	73
	local.get	73
	local.get	72
	i32.add 
	local.set	74
	local.get	4
	local.get	74
	i32.store	20
	local.get	4
	i64.load	16
	local.set	75
	local.get	75
	return
	end_function
                                        # -- End function
	.section	.text.__muldi3_compiler_rt,"",@
	.hidden	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.functype	__muldi3_compiler_rt (i64, i64) -> (i64)
	.local  	i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i64.store	40
	local.get	4
	local.get	1
	i64.store	32
	local.get	4
	i64.load	40
	local.set	5
	local.get	4
	local.get	5
	i64.store	24
	local.get	4
	i64.load	32
	local.set	6
	local.get	4
	local.get	6
	i64.store	16
	local.get	4
	i32.load	24
	local.set	7
	local.get	4
	i32.load	16
	local.set	8
	local.get	7
	local.get	8
	call	__muldsi3
	local.set	9
	local.get	4
	local.get	9
	i64.store	8
	local.get	4
	i32.load	28
	local.set	10
	local.get	4
	i32.load	16
	local.set	11
	local.get	10
	local.get	11
	i32.mul 
	local.set	12
	local.get	4
	i32.load	24
	local.set	13
	local.get	4
	i32.load	20
	local.set	14
	local.get	13
	local.get	14
	i32.mul 
	local.set	15
	local.get	12
	local.get	15
	i32.add 
	local.set	16
	local.get	4
	i32.load	12
	local.set	17
	local.get	17
	local.get	16
	i32.add 
	local.set	18
	local.get	4
	local.get	18
	i32.store	12
	local.get	4
	i64.load	8
	local.set	19
	i32.const	48
	local.set	20
	local.get	4
	local.get	20
	i32.add 
	local.set	21
	local.get	21
	global.set	__stack_pointer
	local.get	19
	return
	end_function
                                        # -- End function
	.section	.text.__mulddi3,"",@
	.hidden	__mulddi3                       # -- Begin function __mulddi3
	.globl	__mulddi3
	.type	__mulddi3,@function
__mulddi3:                              # @__mulddi3
	.functype	__mulddi3 (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	64
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	1
	i64.store	56
	local.get	5
	local.get	2
	i64.store	48
	i32.const	32
	local.set	6
	local.get	5
	local.get	6
	i32.store	28
	i64.const	4294967295
	local.set	7
	local.get	5
	local.get	7
	i64.store	16
	local.get	5
	i64.load32_u	56
	local.set	8
	local.get	5
	i64.load32_u	48
	local.set	9
	local.get	8
	local.get	9
	i64.mul 
	local.set	10
	local.get	5
	local.get	10
	i64.store	32
	local.get	5
	i64.load32_u	36
	local.set	11
	local.get	5
	local.get	11
	i64.store	8
	local.get	5
	i64.load32_u	32
	local.set	12
	local.get	5
	local.get	12
	i64.store	32
	local.get	5
	i64.load32_u	60
	local.set	13
	local.get	5
	i64.load32_u	48
	local.set	14
	local.get	13
	local.get	14
	i64.mul 
	local.set	15
	local.get	5
	i64.load	8
	local.set	16
	local.get	16
	local.get	15
	i64.add 
	local.set	17
	local.get	5
	local.get	17
	i64.store	8
	local.get	5
	i64.load	8
	local.set	18
	i64.const	32
	local.set	19
	local.get	18
	local.get	19
	i64.shl 
	local.set	20
	local.get	5
	i64.load	32
	local.set	21
	local.get	21
	local.get	20
	i64.add 
	local.set	22
	local.get	5
	local.get	22
	i64.store	32
	local.get	5
	i64.load32_u	12
	local.set	23
	local.get	5
	local.get	23
	i64.store	40
	local.get	5
	i64.load32_u	36
	local.set	24
	local.get	5
	local.get	24
	i64.store	8
	local.get	5
	i64.load32_u	32
	local.set	25
	local.get	5
	local.get	25
	i64.store	32
	local.get	5
	i64.load32_u	52
	local.set	26
	local.get	5
	i64.load32_u	56
	local.set	27
	local.get	26
	local.get	27
	i64.mul 
	local.set	28
	local.get	5
	i64.load	8
	local.set	29
	local.get	29
	local.get	28
	i64.add 
	local.set	30
	local.get	5
	local.get	30
	i64.store	8
	local.get	5
	i64.load	8
	local.set	31
	local.get	31
	local.get	19
	i64.shl 
	local.set	32
	local.get	5
	i64.load	32
	local.set	33
	local.get	33
	local.get	32
	i64.add 
	local.set	34
	local.get	5
	local.get	34
	i64.store	32
	local.get	5
	i64.load32_u	12
	local.set	35
	local.get	5
	i64.load	40
	local.set	36
	local.get	36
	local.get	35
	i64.add 
	local.set	37
	local.get	5
	local.get	37
	i64.store	40
	local.get	5
	i64.load32_u	60
	local.set	38
	local.get	5
	i64.load32_u	52
	local.set	39
	local.get	38
	local.get	39
	i64.mul 
	local.set	40
	local.get	5
	i64.load	40
	local.set	41
	local.get	41
	local.get	40
	i64.add 
	local.set	42
	local.get	5
	local.get	42
	i64.store	40
	local.get	5
	i64.load	32
	local.set	43
	local.get	5
	i64.load	40
	local.set	44
	local.get	0
	local.get	44
	i64.store	8
	local.get	0
	local.get	43
	i64.store	0
	return
	end_function
                                        # -- End function
	.section	.text.__multi3,"",@
	.hidden	__multi3                        # -- Begin function __multi3
	.globl	__multi3
	.type	__multi3,@function
__multi3:                               # @__multi3
	.functype	__multi3 (i32, i64, i64, i64, i64) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	5
	i32.const	96
	local.set	6
	local.get	5
	local.get	6
	i32.sub 
	local.set	7
	local.get	7
	global.set	__stack_pointer
	local.get	7
	local.get	1
	i64.store	80
	local.get	7
	local.get	2
	i64.store	88
	local.get	7
	local.get	4
	i64.store	72
	local.get	7
	local.get	3
	i64.store	64
	local.get	7
	i64.load	80
	local.set	8
	local.get	7
	i64.load	88
	local.set	9
	local.get	7
	local.get	9
	i64.store	56
	local.get	7
	local.get	8
	i64.store	48
	local.get	7
	i64.load	64
	local.set	10
	local.get	7
	i64.load	72
	local.set	11
	local.get	7
	local.get	11
	i64.store	40
	local.get	7
	local.get	10
	i64.store	32
	local.get	7
	i64.load	48
	local.set	12
	local.get	7
	i64.load	32
	local.set	13
	local.get	7
	local.get	12
	local.get	13
	call	__mulddi3
	i32.const	8
	local.set	14
	local.get	7
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	i64.load	0
	local.set	16
	local.get	7
	i64.load	0
	local.set	17
	local.get	7
	local.get	16
	i64.store	24
	local.get	7
	local.get	17
	i64.store	16
	local.get	7
	i64.load	56
	local.set	18
	local.get	7
	i64.load	32
	local.set	19
	local.get	18
	local.get	19
	i64.mul 
	local.set	20
	local.get	7
	i64.load	48
	local.set	21
	local.get	7
	i64.load	40
	local.set	22
	local.get	21
	local.get	22
	i64.mul 
	local.set	23
	local.get	20
	local.get	23
	i64.add 
	local.set	24
	local.get	7
	i64.load	24
	local.set	25
	local.get	25
	local.get	24
	i64.add 
	local.set	26
	local.get	7
	local.get	26
	i64.store	24
	local.get	7
	i64.load	16
	local.set	27
	local.get	7
	i64.load	24
	local.set	28
	local.get	0
	local.get	28
	i64.store	8
	local.get	0
	local.get	27
	i64.store	0
	i32.const	96
	local.set	29
	local.get	7
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	global.set	__stack_pointer
	return
	end_function
                                        # -- End function
	.section	.text.__negdi2,"",@
	.hidden	__negdi2                        # -- Begin function __negdi2
	.globl	__negdi2
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
	.functype	__negdi2 (i64) -> (i64)
	.local  	i32, i32, i32, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	8
	local.get	3
	i64.load	8
	local.set	4
	i64.const	0
	local.set	5
	local.get	5
	local.get	4
	i64.sub 
	local.set	6
	local.get	6
	return
	end_function
                                        # -- End function
	.section	.text.__negti2,"",@
	.hidden	__negti2                        # -- Begin function __negti2
	.globl	__negti2
	.type	__negti2,@function
__negti2:                               # @__negti2
	.functype	__negti2 (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	local.get	1
	i64.store	0
	local.get	5
	local.get	2
	i64.store	8
	local.get	5
	i64.load	8
	local.set	6
	local.get	5
	i64.load	0
	local.set	7
	i64.const	0
	local.set	8
	local.get	7
	local.get	8
	i64.ne  
	local.set	9
	local.get	9
	i64.extend_i32_u
	local.set	10
	local.get	6
	local.get	10
	i64.add 
	local.set	11
	local.get	8
	local.get	11
	i64.sub 
	local.set	12
	local.get	8
	local.get	7
	i64.sub 
	local.set	13
	local.get	0
	local.get	13
	i64.store	0
	local.get	0
	local.get	12
	i64.store	8
	return
	end_function
                                        # -- End function
	.section	.text.__paritydi2,"",@
	.hidden	__paritydi2                     # -- Begin function __paritydi2
	.globl	__paritydi2
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
	.functype	__paritydi2 (i64) -> (i32)
	.local  	i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	32
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	24
	local.get	3
	i64.load	24
	local.set	4
	local.get	3
	local.get	4
	i64.store	16
	local.get	3
	i32.load	20
	local.set	5
	local.get	3
	i32.load	16
	local.set	6
	local.get	5
	local.get	6
	i32.xor 
	local.set	7
	local.get	3
	local.get	7
	i32.store	12
	local.get	3
	i32.load	12
	local.set	8
	i32.const	16
	local.set	9
	local.get	8
	local.get	9
	i32.shr_u
	local.set	10
	local.get	3
	i32.load	12
	local.set	11
	local.get	11
	local.get	10
	i32.xor 
	local.set	12
	local.get	3
	local.get	12
	i32.store	12
	local.get	3
	i32.load	12
	local.set	13
	i32.const	8
	local.set	14
	local.get	13
	local.get	14
	i32.shr_u
	local.set	15
	local.get	3
	i32.load	12
	local.set	16
	local.get	16
	local.get	15
	i32.xor 
	local.set	17
	local.get	3
	local.get	17
	i32.store	12
	local.get	3
	i32.load	12
	local.set	18
	i32.const	4
	local.set	19
	local.get	18
	local.get	19
	i32.shr_u
	local.set	20
	local.get	3
	i32.load	12
	local.set	21
	local.get	21
	local.get	20
	i32.xor 
	local.set	22
	local.get	3
	local.get	22
	i32.store	12
	local.get	3
	i32.load	12
	local.set	23
	i32.const	15
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	i32.const	27030
	local.set	26
	local.get	26
	local.get	25
	i32.shr_s
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	29
	return
	end_function
                                        # -- End function
	.section	.text.__parityti2,"",@
	.hidden	__parityti2                     # -- Begin function __parityti2
	.globl	__parityti2
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
	.functype	__parityti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i64.store	40
	local.get	4
	i64.load	32
	local.set	5
	local.get	4
	i64.load	40
	local.set	6
	local.get	4
	local.get	6
	i64.store	24
	local.get	4
	local.get	5
	i64.store	16
	local.get	4
	i64.load	24
	local.set	7
	local.get	4
	i64.load	16
	local.set	8
	local.get	7
	local.get	8
	i64.xor 
	local.set	9
	local.get	4
	local.get	9
	i64.store	8
	local.get	4
	i32.load	12
	local.set	10
	local.get	4
	i32.load	8
	local.set	11
	local.get	10
	local.get	11
	i32.xor 
	local.set	12
	local.get	4
	local.get	12
	i32.store	4
	local.get	4
	i32.load	4
	local.set	13
	i32.const	16
	local.set	14
	local.get	13
	local.get	14
	i32.shr_u
	local.set	15
	local.get	4
	i32.load	4
	local.set	16
	local.get	16
	local.get	15
	i32.xor 
	local.set	17
	local.get	4
	local.get	17
	i32.store	4
	local.get	4
	i32.load	4
	local.set	18
	i32.const	8
	local.set	19
	local.get	18
	local.get	19
	i32.shr_u
	local.set	20
	local.get	4
	i32.load	4
	local.set	21
	local.get	21
	local.get	20
	i32.xor 
	local.set	22
	local.get	4
	local.get	22
	i32.store	4
	local.get	4
	i32.load	4
	local.set	23
	i32.const	4
	local.set	24
	local.get	23
	local.get	24
	i32.shr_u
	local.set	25
	local.get	4
	i32.load	4
	local.set	26
	local.get	26
	local.get	25
	i32.xor 
	local.set	27
	local.get	4
	local.get	27
	i32.store	4
	local.get	4
	i32.load	4
	local.set	28
	i32.const	15
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	i32.const	27030
	local.set	31
	local.get	31
	local.get	30
	i32.shr_s
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	local.get	34
	return
	end_function
                                        # -- End function
	.section	.text.__paritysi2,"",@
	.hidden	__paritysi2                     # -- Begin function __paritysi2
	.globl	__paritysi2
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
	.functype	__paritysi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
	local.get	3
	i32.load	8
	local.set	5
	i32.const	16
	local.set	6
	local.get	5
	local.get	6
	i32.shr_u
	local.set	7
	local.get	3
	i32.load	8
	local.set	8
	local.get	8
	local.get	7
	i32.xor 
	local.set	9
	local.get	3
	local.get	9
	i32.store	8
	local.get	3
	i32.load	8
	local.set	10
	i32.const	8
	local.set	11
	local.get	10
	local.get	11
	i32.shr_u
	local.set	12
	local.get	3
	i32.load	8
	local.set	13
	local.get	13
	local.get	12
	i32.xor 
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	local.get	3
	i32.load	8
	local.set	15
	i32.const	4
	local.set	16
	local.get	15
	local.get	16
	i32.shr_u
	local.set	17
	local.get	3
	i32.load	8
	local.set	18
	local.get	18
	local.get	17
	i32.xor 
	local.set	19
	local.get	3
	local.get	19
	i32.store	8
	local.get	3
	i32.load	8
	local.set	20
	i32.const	15
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	i32.const	27030
	local.set	23
	local.get	23
	local.get	22
	i32.shr_s
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	local.get	26
	return
	end_function
                                        # -- End function
	.section	.text.__popcountdi2,"",@
	.hidden	__popcountdi2                   # -- Begin function __popcountdi2
	.globl	__popcountdi2
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
	.functype	__popcountdi2 (i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	32
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i64.store	24
	local.get	3
	i64.load	24
	local.set	4
	local.get	3
	local.get	4
	i64.store	16
	local.get	3
	i64.load	16
	local.set	5
	local.get	3
	i64.load	16
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.shr_u
	local.set	8
	i64.const	6148914691236517205
	local.set	9
	local.get	8
	local.get	9
	i64.and 
	local.set	10
	local.get	5
	local.get	10
	i64.sub 
	local.set	11
	local.get	3
	local.get	11
	i64.store	16
	local.get	3
	i64.load	16
	local.set	12
	i64.const	2
	local.set	13
	local.get	12
	local.get	13
	i64.shr_u
	local.set	14
	i64.const	3689348814741910323
	local.set	15
	local.get	14
	local.get	15
	i64.and 
	local.set	16
	local.get	3
	i64.load	16
	local.set	17
	i64.const	3689348814741910323
	local.set	18
	local.get	17
	local.get	18
	i64.and 
	local.set	19
	local.get	16
	local.get	19
	i64.add 
	local.set	20
	local.get	3
	local.get	20
	i64.store	16
	local.get	3
	i64.load	16
	local.set	21
	local.get	3
	i64.load	16
	local.set	22
	i64.const	4
	local.set	23
	local.get	22
	local.get	23
	i64.shr_u
	local.set	24
	local.get	21
	local.get	24
	i64.add 
	local.set	25
	i64.const	1085102592571150095
	local.set	26
	local.get	25
	local.get	26
	i64.and 
	local.set	27
	local.get	3
	local.get	27
	i64.store	16
	local.get	3
	i64.load	16
	local.set	28
	local.get	3
	i64.load	16
	local.set	29
	i64.const	32
	local.set	30
	local.get	29
	local.get	30
	i64.shr_u
	local.set	31
	local.get	28
	local.get	31
	i64.add 
	local.set	32
	local.get	32
	i32.wrap_i64
	local.set	33
	local.get	3
	local.get	33
	i32.store	12
	local.get	3
	i32.load	12
	local.set	34
	local.get	3
	i32.load	12
	local.set	35
	i32.const	16
	local.set	36
	local.get	35
	local.get	36
	i32.shr_u
	local.set	37
	local.get	34
	local.get	37
	i32.add 
	local.set	38
	local.get	3
	local.get	38
	i32.store	12
	local.get	3
	i32.load	12
	local.set	39
	local.get	3
	i32.load	12
	local.set	40
	i32.const	8
	local.set	41
	local.get	40
	local.get	41
	i32.shr_u
	local.set	42
	local.get	39
	local.get	42
	i32.add 
	local.set	43
	i32.const	127
	local.set	44
	local.get	43
	local.get	44
	i32.and 
	local.set	45
	local.get	45
	return
	end_function
                                        # -- End function
	.section	.text.__popcountsi2,"",@
	.hidden	__popcountsi2                   # -- Begin function __popcountsi2
	.globl	__popcountsi2
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
	.functype	__popcountsi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
	local.get	3
	i32.load	8
	local.set	5
	local.get	3
	i32.load	8
	local.set	6
	i32.const	1
	local.set	7
	local.get	6
	local.get	7
	i32.shr_u
	local.set	8
	i32.const	1431655765
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	5
	local.get	10
	i32.sub 
	local.set	11
	local.get	3
	local.get	11
	i32.store	8
	local.get	3
	i32.load	8
	local.set	12
	i32.const	2
	local.set	13
	local.get	12
	local.get	13
	i32.shr_u
	local.set	14
	i32.const	858993459
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	3
	i32.load	8
	local.set	17
	i32.const	858993459
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	local.get	16
	local.get	19
	i32.add 
	local.set	20
	local.get	3
	local.get	20
	i32.store	8
	local.get	3
	i32.load	8
	local.set	21
	local.get	3
	i32.load	8
	local.set	22
	i32.const	4
	local.set	23
	local.get	22
	local.get	23
	i32.shr_u
	local.set	24
	local.get	21
	local.get	24
	i32.add 
	local.set	25
	i32.const	252645135
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	local.get	3
	local.get	27
	i32.store	8
	local.get	3
	i32.load	8
	local.set	28
	local.get	3
	i32.load	8
	local.set	29
	i32.const	16
	local.set	30
	local.get	29
	local.get	30
	i32.shr_u
	local.set	31
	local.get	28
	local.get	31
	i32.add 
	local.set	32
	local.get	3
	local.get	32
	i32.store	8
	local.get	3
	i32.load	8
	local.set	33
	local.get	3
	i32.load	8
	local.set	34
	i32.const	8
	local.set	35
	local.get	34
	local.get	35
	i32.shr_u
	local.set	36
	local.get	33
	local.get	36
	i32.add 
	local.set	37
	i32.const	63
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	local.get	39
	return
	end_function
                                        # -- End function
	.section	.text.__popcountti2,"",@
	.hidden	__popcountti2                   # -- Begin function __popcountti2
	.globl	__popcountti2
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
	.functype	__popcountti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i64.store	40
	local.get	4
	i64.load	32
	local.set	5
	local.get	4
	i64.load	40
	local.set	6
	local.get	4
	local.get	6
	i64.store	24
	local.get	4
	local.get	5
	i64.store	16
	local.get	4
	i64.load	16
	local.set	7
	local.get	4
	i64.load	24
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.shr_u
	local.set	10
	local.get	7
	local.get	9
	i64.shr_u
	local.set	11
	i64.const	6148914691236517205
	local.set	12
	local.get	11
	local.get	12
	i64.and 
	local.set	13
	local.get	10
	local.get	12
	i64.and 
	local.set	14
	local.get	8
	local.get	14
	i64.sub 
	local.set	15
	local.get	7
	local.get	13
	i64.lt_u
	local.set	16
	local.get	16
	i64.extend_i32_u
	local.set	17
	local.get	15
	local.get	17
	i64.sub 
	local.set	18
	local.get	7
	local.get	13
	i64.sub 
	local.set	19
	local.get	4
	local.get	19
	i64.store	16
	local.get	4
	local.get	18
	i64.store	24
	local.get	4
	i64.load	16
	local.set	20
	local.get	4
	i64.load	24
	local.set	21
	i64.const	2
	local.set	22
	local.get	21
	local.get	22
	i64.shr_u
	local.set	23
	local.get	20
	local.get	22
	i64.shr_u
	local.set	24
	i64.const	3689348814741910323
	local.set	25
	local.get	24
	local.get	25
	i64.and 
	local.set	26
	local.get	23
	local.get	25
	i64.and 
	local.set	27
	local.get	20
	local.get	25
	i64.and 
	local.set	28
	local.get	21
	local.get	25
	i64.and 
	local.set	29
	local.get	27
	local.get	29
	i64.add 
	local.set	30
	local.get	26
	local.get	28
	i64.add 
	local.set	31
	local.get	31
	local.get	26
	i64.lt_u
	local.set	32
	local.get	32
	i64.extend_i32_u
	local.set	33
	local.get	30
	local.get	33
	i64.add 
	local.set	34
	local.get	4
	local.get	31
	i64.store	16
	local.get	4
	local.get	34
	i64.store	24
	local.get	4
	i64.load	16
	local.set	35
	local.get	4
	i64.load	24
	local.set	36
	i64.const	60
	local.set	37
	local.get	36
	local.get	37
	i64.shl 
	local.set	38
	i64.const	4
	local.set	39
	local.get	35
	local.get	39
	i64.shr_u
	local.set	40
	local.get	40
	local.get	38
	i64.or  
	local.set	41
	local.get	36
	local.get	39
	i64.shr_u
	local.set	42
	local.get	35
	local.get	41
	i64.add 
	local.set	43
	local.get	43
	local.get	35
	i64.lt_u
	local.set	44
	local.get	44
	i64.extend_i32_u
	local.set	45
	local.get	36
	local.get	42
	i64.add 
	local.set	46
	local.get	46
	local.get	45
	i64.add 
	local.set	47
	i64.const	1085102592571150095
	local.set	48
	local.get	47
	local.get	48
	i64.and 
	local.set	49
	local.get	43
	local.get	48
	i64.and 
	local.set	50
	local.get	4
	local.get	50
	i64.store	16
	local.get	4
	local.get	49
	i64.store	24
	local.get	4
	i64.load	24
	local.set	51
	local.get	4
	i64.load	16
	local.set	52
	local.get	52
	local.get	51
	i64.add 
	local.set	53
	local.get	4
	local.get	53
	i64.store	8
	local.get	4
	i64.load	8
	local.set	54
	local.get	4
	i64.load	8
	local.set	55
	i64.const	32
	local.set	56
	local.get	55
	local.get	56
	i64.shr_u
	local.set	57
	local.get	54
	local.get	57
	i64.add 
	local.set	58
	local.get	58
	i32.wrap_i64
	local.set	59
	local.get	4
	local.get	59
	i32.store	4
	local.get	4
	i32.load	4
	local.set	60
	local.get	4
	i32.load	4
	local.set	61
	i32.const	16
	local.set	62
	local.get	61
	local.get	62
	i32.shr_u
	local.set	63
	local.get	60
	local.get	63
	i32.add 
	local.set	64
	local.get	4
	local.get	64
	i32.store	4
	local.get	4
	i32.load	4
	local.set	65
	local.get	4
	i32.load	4
	local.set	66
	i32.const	8
	local.set	67
	local.get	66
	local.get	67
	i32.shr_u
	local.set	68
	local.get	65
	local.get	68
	i32.add 
	local.set	69
	i32.const	255
	local.set	70
	local.get	69
	local.get	70
	i32.and 
	local.set	71
	local.get	71
	return
	end_function
                                        # -- End function
	.section	.text.__powidf2,"",@
	.hidden	__powidf2                       # -- Begin function __powidf2
	.globl	__powidf2
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
	.functype	__powidf2 (f64, i32) -> (f64)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, i32, i32, f64, f64, f64, i32, i32, i32, i32, f64, f64, f64, i32, f64, f64, f64, f64, f64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f64.store	24
	local.get	4
	local.get	1
	i32.store	20
	local.get	4
	i32.load	20
	local.set	5
	i32.const	0
	local.set	6
	local.get	5
	local.get	6
	i32.lt_s
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	4
	local.get	9
	i32.store	16
	f64.const	0x1p0
	local.set	10
	local.get	4
	local.get	10
	f64.store	8
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label451:
	local.get	4
	i32.load	20
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label452
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
	local.get	4
	f64.load	24
	local.set	14
	local.get	4
	f64.load	8
	local.set	15
	local.get	15
	local.get	14
	f64.mul 
	local.set	16
	local.get	4
	local.get	16
	f64.store	8
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	end_block                               # label452:
	local.get	4
	i32.load	20
	local.set	17
	i32.const	2
	local.set	18
	local.get	17
	local.get	18
	i32.div_s
	local.set	19
	local.get	4
	local.get	19
	i32.store	20
	local.get	4
	i32.load	20
	local.set	20
	block   	
	block   	
	local.get	20
	br_if   	0                               # 0: down to label454
# %bb.4:
	br      	1                               # 1: down to label453
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	end_block                               # label454:
	local.get	4
	f64.load	24
	local.set	21
	local.get	4
	f64.load	24
	local.set	22
	local.get	22
	local.get	21
	f64.mul 
	local.set	23
	local.get	4
	local.get	23
	f64.store	24
	br      	1                               # 1: up to label451
.LBB161_6:
	end_block                               # label453:
	end_loop
	local.get	4
	i32.load	16
	local.set	24
	block   	
	block   	
	local.get	24
	i32.eqz
	br_if   	0                               # 0: down to label456
# %bb.7:
	local.get	4
	f64.load	8
	local.set	25
	f64.const	0x1p0
	local.set	26
	local.get	26
	local.get	25
	f64.div 
	local.set	27
	local.get	27
	local.set	28
	br      	1                               # 1: down to label455
.LBB161_8:
	end_block                               # label456:
	local.get	4
	f64.load	8
	local.set	29
	local.get	29
	local.set	28
.LBB161_9:
	end_block                               # label455:
	local.get	28
	local.set	30
	local.get	30
	return
	end_function
                                        # -- End function
	.section	.text.__powisf2,"",@
	.hidden	__powisf2                       # -- Begin function __powisf2
	.globl	__powisf2
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
	.functype	__powisf2 (f32, i32) -> (f32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, f32, i32, i32, i32, f32, f32, f32, i32, i32, i32, i32, f32, f32, f32, i32, f32, f32, f32, f32, f32, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	f32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	8
	local.set	5
	i32.const	0
	local.set	6
	local.get	5
	local.get	6
	i32.lt_s
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.and 
	local.set	9
	local.get	4
	local.get	9
	i32.store	4
	f32.const	0x1p0
	local.set	10
	local.get	4
	local.get	10
	f32.store	0
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label457:
	local.get	4
	i32.load	8
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label458
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
	local.get	4
	f32.load	12
	local.set	14
	local.get	4
	f32.load	0
	local.set	15
	local.get	15
	local.get	14
	f32.mul 
	local.set	16
	local.get	4
	local.get	16
	f32.store	0
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	end_block                               # label458:
	local.get	4
	i32.load	8
	local.set	17
	i32.const	2
	local.set	18
	local.get	17
	local.get	18
	i32.div_s
	local.set	19
	local.get	4
	local.get	19
	i32.store	8
	local.get	4
	i32.load	8
	local.set	20
	block   	
	block   	
	local.get	20
	br_if   	0                               # 0: down to label460
# %bb.4:
	br      	1                               # 1: down to label459
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	end_block                               # label460:
	local.get	4
	f32.load	12
	local.set	21
	local.get	4
	f32.load	12
	local.set	22
	local.get	22
	local.get	21
	f32.mul 
	local.set	23
	local.get	4
	local.get	23
	f32.store	12
	br      	1                               # 1: up to label457
.LBB162_6:
	end_block                               # label459:
	end_loop
	local.get	4
	i32.load	4
	local.set	24
	block   	
	block   	
	local.get	24
	i32.eqz
	br_if   	0                               # 0: down to label462
# %bb.7:
	local.get	4
	f32.load	0
	local.set	25
	f32.const	0x1p0
	local.set	26
	local.get	26
	local.get	25
	f32.div 
	local.set	27
	local.get	27
	local.set	28
	br      	1                               # 1: down to label461
.LBB162_8:
	end_block                               # label462:
	local.get	4
	f32.load	0
	local.set	29
	local.get	29
	local.set	28
.LBB162_9:
	end_block                               # label461:
	local.get	28
	local.set	30
	local.get	30
	return
	end_function
                                        # -- End function
	.section	.text.__ucmpdi2,"",@
	.hidden	__ucmpdi2                       # -- Begin function __ucmpdi2
	.globl	__ucmpdi2
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
	.functype	__ucmpdi2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i64.store	32
	local.get	4
	local.get	1
	i64.store	24
	local.get	4
	i64.load	32
	local.set	5
	local.get	4
	local.get	5
	i64.store	16
	local.get	4
	i64.load	24
	local.set	6
	local.get	4
	local.get	6
	i64.store	8
	local.get	4
	i32.load	20
	local.set	7
	local.get	4
	i32.load	12
	local.set	8
	local.get	7
	local.get	8
	i32.lt_u
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label464
# %bb.1:
	i32.const	0
	local.set	12
	local.get	4
	local.get	12
	i32.store	44
	br      	1                               # 1: down to label463
.LBB163_2:
	end_block                               # label464:
	local.get	4
	i32.load	20
	local.set	13
	local.get	4
	i32.load	12
	local.set	14
	local.get	13
	local.get	14
	i32.gt_u
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label465
# %bb.3:
	i32.const	2
	local.set	18
	local.get	4
	local.get	18
	i32.store	44
	br      	1                               # 1: down to label463
.LBB163_4:
	end_block                               # label465:
	local.get	4
	i32.load	16
	local.set	19
	local.get	4
	i32.load	8
	local.set	20
	local.get	19
	local.get	20
	i32.lt_u
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	block   	
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label466
# %bb.5:
	i32.const	0
	local.set	24
	local.get	4
	local.get	24
	i32.store	44
	br      	1                               # 1: down to label463
.LBB163_6:
	end_block                               # label466:
	local.get	4
	i32.load	16
	local.set	25
	local.get	4
	i32.load	8
	local.set	26
	local.get	25
	local.get	26
	i32.gt_u
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	block   	
	local.get	29
	i32.eqz
	br_if   	0                               # 0: down to label467
# %bb.7:
	i32.const	2
	local.set	30
	local.get	4
	local.get	30
	i32.store	44
	br      	1                               # 1: down to label463
.LBB163_8:
	end_block                               # label467:
	i32.const	1
	local.set	31
	local.get	4
	local.get	31
	i32.store	44
.LBB163_9:
	end_block                               # label463:
	local.get	4
	i32.load	44
	local.set	32
	local.get	32
	return
	end_function
                                        # -- End function
	.section	.text.__aeabi_ulcmp,"",@
	.hidden	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.functype	__aeabi_ulcmp (i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i64.store	8
	local.get	4
	local.get	1
	i64.store	0
	local.get	4
	i64.load	8
	local.set	5
	local.get	4
	i64.load	0
	local.set	6
	local.get	5
	local.get	6
	call	__ucmpdi2
	local.set	7
	i32.const	1
	local.set	8
	local.get	7
	local.get	8
	i32.sub 
	local.set	9
	i32.const	16
	local.set	10
	local.get	4
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	global.set	__stack_pointer
	local.get	9
	return
	end_function
                                        # -- End function
	.section	.text.__ucmpti2,"",@
	.hidden	__ucmpti2                       # -- Begin function __ucmpti2
	.globl	__ucmpti2
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
	.functype	__ucmpti2 (i64, i64, i64, i64) -> (i32)
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	80
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	local.get	0
	i64.store	48
	local.get	6
	local.get	1
	i64.store	56
	local.get	6
	local.get	3
	i64.store	40
	local.get	6
	local.get	2
	i64.store	32
	local.get	6
	i64.load	48
	local.set	7
	local.get	6
	i64.load	56
	local.set	8
	local.get	6
	local.get	8
	i64.store	24
	local.get	6
	local.get	7
	i64.store	16
	local.get	6
	i64.load	32
	local.set	9
	local.get	6
	i64.load	40
	local.set	10
	local.get	6
	local.get	10
	i64.store	8
	local.get	6
	local.get	9
	i64.store	0
	local.get	6
	i64.load	24
	local.set	11
	local.get	6
	i64.load	8
	local.set	12
	local.get	11
	local.get	12
	i64.lt_u
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	block   	
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label469
# %bb.1:
	i32.const	0
	local.set	16
	local.get	6
	local.get	16
	i32.store	76
	br      	1                               # 1: down to label468
.LBB165_2:
	end_block                               # label469:
	local.get	6
	i64.load	24
	local.set	17
	local.get	6
	i64.load	8
	local.set	18
	local.get	17
	local.get	18
	i64.gt_u
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label470
# %bb.3:
	i32.const	2
	local.set	22
	local.get	6
	local.get	22
	i32.store	76
	br      	1                               # 1: down to label468
.LBB165_4:
	end_block                               # label470:
	local.get	6
	i64.load	16
	local.set	23
	local.get	6
	i64.load	0
	local.set	24
	local.get	23
	local.get	24
	i64.lt_u
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	block   	
	local.get	27
	i32.eqz
	br_if   	0                               # 0: down to label471
# %bb.5:
	i32.const	0
	local.set	28
	local.get	6
	local.get	28
	i32.store	76
	br      	1                               # 1: down to label468
.LBB165_6:
	end_block                               # label471:
	local.get	6
	i64.load	16
	local.set	29
	local.get	6
	i64.load	0
	local.set	30
	local.get	29
	local.get	30
	i64.gt_u
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.and 
	local.set	33
	block   	
	local.get	33
	i32.eqz
	br_if   	0                               # 0: down to label472
# %bb.7:
	i32.const	2
	local.set	34
	local.get	6
	local.get	34
	i32.store	76
	br      	1                               # 1: down to label468
.LBB165_8:
	end_block                               # label472:
	i32.const	1
	local.set	35
	local.get	6
	local.get	35
	i32.store	76
.LBB165_9:
	end_block                               # label468:
	local.get	6
	i32.load	76
	local.set	36
	local.get	36
	return
	end_function
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.section	.bss.l64a.s,"",@
l64a.s:
	.skip	7
	.size	l64a.s, 7

	.type	digits,@object                  # @digits
	.section	.rodata.digits,"",@
	.p2align	4, 0x0
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.section	.bss.seed,"",@
	.p2align	3, 0x0
seed:
	.int64	0                               # 0x0
	.size	seed, 8

	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	.custom_section.producers,"",@
	.int8	1
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.int8	29
	.ascii	"19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	.bss.seed,"",@
