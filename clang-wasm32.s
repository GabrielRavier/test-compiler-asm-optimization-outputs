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
	.functype	__llvm_gcov_writeout () -> ()
	.functype	llvm_gcda_start_file (i32, i32, i32) -> ()
	.functype	llvm_gcda_emit_function (i32, i32, i32) -> ()
	.functype	llvm_gcda_emit_arcs (i32, i32) -> ()
	.functype	llvm_gcda_summary_info () -> ()
	.functype	llvm_gcda_end_file () -> ()
	.functype	__llvm_gcov_reset () -> ()
	.functype	__llvm_gcov_init () -> ()
	.functype	llvm_gcov_init (i32, i32) -> ()
	.functype	__llvm_profile_runtime_user () -> (i32)
	.functype	__llvm_profile_register_functions () -> ()
	.functype	__llvm_profile_register_function (i32) -> ()
	.functype	__llvm_profile_register_names_function (i32, i64) -> ()
	.functype	__llvm_profile_init () -> ()
	.section	.text.make_ti,"",@
	.hidden	make_ti                         # -- Begin function make_ti
	.globl	make_ti
	.type	make_ti,@function
make_ti:                                # @make_ti
	.functype	make_ti (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	local.get	6
	local.get	9
	i64.store	__llvm_gcov_ctr
	local.get	5
	local.get	1
	i64.store	24
	local.get	5
	local.get	2
	i64.store	16
	local.get	6
	i64.load	.L__profc_make_ti
	local.set	10
	local.get	10
	local.get	8
	i64.add 
	local.set	11
	local.get	6
	local.get	11
	i64.store	.L__profc_make_ti
	local.get	5
	i64.load	24
	local.set	12
	local.get	5
	local.get	12
	i64.store	8
	local.get	5
	i64.load	16
	local.set	13
	local.get	5
	local.get	13
	i64.store	0
	local.get	5
	i64.load	0
	local.set	14
	local.get	5
	i64.load	8
	local.set	15
	local.get	0
	local.get	15
	i64.store	8
	local.get	0
	local.get	14
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.1
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	local.get	6
	local.get	9
	i64.store	__llvm_gcov_ctr.1
	local.get	5
	local.get	1
	i64.store	24
	local.get	5
	local.get	2
	i64.store	16
	local.get	6
	i64.load	.L__profc_make_tu
	local.set	10
	local.get	10
	local.get	8
	i64.add 
	local.set	11
	local.get	6
	local.get	11
	i64.store	.L__profc_make_tu
	local.get	5
	i64.load	24
	local.set	12
	local.get	5
	local.get	12
	i64.store	8
	local.get	5
	i64.load	16
	local.set	13
	local.get	5
	local.get	13
	i64.store	0
	local.get	5
	i64.load	0
	local.set	14
	local.get	5
	i64.load	8
	local.set	15
	local.get	0
	local.get	15
	i64.store	8
	local.get	0
	local.get	14
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_memmove
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_memmove
	local.get	5
	i32.load	28
	local.set	11
	local.get	5
	local.get	11
	i32.store	16
	local.get	5
	i32.load	24
	local.set	12
	local.get	5
	local.get	12
	i32.store	12
	local.get	5
	i32.load	12
	local.set	13
	local.get	5
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
	block   	
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label1
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.2
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.2
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_memmove+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_memmove+8
	local.get	5
	i32.load	20
	local.set	28
	local.get	5
	i32.load	12
	local.set	29
	local.get	29
	local.get	28
	i32.add 
	local.set	30
	local.get	5
	local.get	30
	i32.store	12
	local.get	5
	i32.load	20
	local.set	31
	local.get	5
	i32.load	16
	local.set	32
	local.get	32
	local.get	31
	i32.add 
	local.set	33
	local.get	5
	local.get	33
	i32.store	16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label3:
	local.get	5
	i32.load	20
	local.set	34
	local.get	34
	i32.eqz
	br_if   	1                               # 1: down to label2
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	i32.const	0
	local.set	35
	local.get	35
	i64.load	.L__profc_memmove+16
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	.L__profc_memmove+16
	local.get	5
	i32.load	12
	local.set	40
	i32.const	-1
	local.set	41
	local.get	40
	local.get	41
	i32.add 
	local.set	42
	local.get	5
	local.get	42
	i32.store	12
	local.get	42
	i32.load8_u	0
	local.set	43
	local.get	5
	i32.load	16
	local.set	44
	i32.const	-1
	local.set	45
	local.get	44
	local.get	45
	i32.add 
	local.set	46
	local.get	5
	local.get	46
	i32.store	16
	local.get	46
	local.get	43
	i32.store8	0
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	i32.const	0
	local.set	47
	local.get	47
	i64.load	__llvm_gcov_ctr.2+8
	local.set	48
	i64.const	1
	local.set	49
	local.get	48
	local.get	49
	i64.add 
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i64.store	__llvm_gcov_ctr.2+8
	local.get	5
	i32.load	20
	local.set	52
	i32.const	-1
	local.set	53
	local.get	52
	local.get	53
	i32.add 
	local.set	54
	local.get	5
	local.get	54
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
	local.set	55
	local.get	5
	i32.load	16
	local.set	56
	local.get	55
	local.get	56
	i32.ne  
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	block   	
	local.get	59
	i32.eqz
	br_if   	0                               # 0: down to label4
# %bb.7:
	i32.const	0
	local.set	60
	local.get	60
	i64.load	.L__profc_memmove+24
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc_memmove+24
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label6:
	local.get	5
	i32.load	20
	local.set	65
	local.get	65
	i32.eqz
	br_if   	1                               # 1: down to label5
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	i32.const	0
	local.set	66
	local.get	66
	i64.load	__llvm_gcov_ctr.2+16
	local.set	67
	i64.const	1
	local.set	68
	local.get	67
	local.get	68
	i64.add 
	local.set	69
	i32.const	0
	local.set	70
	local.get	70
	local.get	69
	i64.store	__llvm_gcov_ctr.2+16
	i32.const	0
	local.set	71
	local.get	71
	i64.load	.L__profc_memmove+32
	local.set	72
	i64.const	1
	local.set	73
	local.get	72
	local.get	73
	i64.add 
	local.set	74
	i32.const	0
	local.set	75
	local.get	75
	local.get	74
	i64.store	.L__profc_memmove+32
	local.get	5
	i32.load	12
	local.set	76
	i32.const	1
	local.set	77
	local.get	76
	local.get	77
	i32.add 
	local.set	78
	local.get	5
	local.get	78
	i32.store	12
	local.get	76
	i32.load8_u	0
	local.set	79
	local.get	5
	i32.load	16
	local.set	80
	i32.const	1
	local.set	81
	local.get	80
	local.get	81
	i32.add 
	local.set	82
	local.get	5
	local.get	82
	i32.store	16
	local.get	80
	local.get	79
	i32.store8	0
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	local.get	5
	i32.load	20
	local.set	83
	i32.const	-1
	local.set	84
	local.get	83
	local.get	84
	i32.add 
	local.set	85
	local.get	5
	local.get	85
	i32.store	20
	br      	0                               # 0: up to label6
.LBB2_11:
	end_loop
	end_block                               # label5:
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.2+24
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.2+24
.LBB2_12:
	end_block                               # label4:
	i32.const	0
	local.set	91
	local.get	91
	i64.load	__llvm_gcov_ctr.2+32
	local.set	92
	i64.const	1
	local.set	93
	local.get	92
	local.get	93
	i64.add 
	local.set	94
	i32.const	0
	local.set	95
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.2+32
.LBB2_13:
	end_block                               # label0:
	local.get	5
	i32.load	28
	local.set	96
	local.get	96
	return
	end_function
                                        # -- End function
	.section	.text.memccpy,"",@
	.hidden	memccpy                         # -- Begin function memccpy
	.globl	memccpy
	.type	memccpy,@function
memccpy:                                # @memccpy
	.functype	memccpy (i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	7
	local.get	7
	i64.load	.L__profc_memccpy
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.add 
	local.set	10
	i32.const	0
	local.set	11
	local.get	11
	local.get	10
	i64.store	.L__profc_memccpy
	local.get	6
	i32.load	24
	local.set	12
	local.get	6
	local.get	12
	i32.store	8
	local.get	6
	i32.load	20
	local.set	13
	local.get	6
	local.get	13
	i32.store	4
	local.get	6
	i32.load	16
	local.set	14
	i32.const	255
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	6
	local.get	16
	i32.store	16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	loop    	                                # label7:
	local.get	6
	i32.load	12
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.set	19
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.3
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.3
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc_memccpy+16
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc_memccpy+16
	local.get	6
	i32.load	4
	local.set	30
	local.get	30
	i32.load8_u	0
	local.set	31
	local.get	6
	i32.load	8
	local.set	32
	local.get	32
	local.get	31
	i32.store8	0
	i32.const	255
	local.set	33
	local.get	31
	local.get	33
	i32.and 
	local.set	34
	local.get	6
	i32.load	16
	local.set	35
	local.get	34
	local.get	35
	i32.ne  
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.and 
	local.set	38
	local.get	36
	local.set	19
	local.get	38
	i32.eqz
	br_if   	0                               # 0: down to label8
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	i32.const	0
	local.set	39
	local.get	39
	i64.load	__llvm_gcov_ctr.3+8
	local.set	40
	i64.const	1
	local.set	41
	local.get	40
	local.get	41
	i64.add 
	local.set	42
	i32.const	0
	local.set	43
	local.get	43
	local.get	42
	i64.store	__llvm_gcov_ctr.3+8
	i32.const	0
	local.set	44
	local.get	44
	i64.load	.L__profc_memccpy+24
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	local.get	47
	i64.store	.L__profc_memccpy+24
	local.get	36
	local.set	19
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	end_block                               # label8:
	local.get	19
	local.set	49
	i32.const	1
	local.set	50
	local.get	49
	local.get	50
	i32.and 
	local.set	51
	block   	
	local.get	51
	i32.eqz
	br_if   	0                               # 0: down to label9
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	i32.const	0
	local.set	52
	local.get	52
	i64.load	.L__profc_memccpy+8
	local.set	53
	i64.const	1
	local.set	54
	local.get	53
	local.get	54
	i64.add 
	local.set	55
	i32.const	0
	local.set	56
	local.get	56
	local.get	55
	i64.store	.L__profc_memccpy+8
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	i32.const	0
	local.set	57
	local.get	57
	i64.load	__llvm_gcov_ctr.3+16
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	__llvm_gcov_ctr.3+16
	local.get	6
	i32.load	12
	local.set	62
	i32.const	-1
	local.set	63
	local.get	62
	local.get	63
	i32.add 
	local.set	64
	local.get	6
	local.get	64
	i32.store	12
	local.get	6
	i32.load	4
	local.set	65
	i32.const	1
	local.set	66
	local.get	65
	local.get	66
	i32.add 
	local.set	67
	local.get	6
	local.get	67
	i32.store	4
	local.get	6
	i32.load	8
	local.set	68
	i32.const	1
	local.set	69
	local.get	68
	local.get	69
	i32.add 
	local.set	70
	local.get	6
	local.get	70
	i32.store	8
	br      	1                               # 1: up to label7
.LBB3_7:
	end_block                               # label9:
	end_loop
	local.get	6
	i32.load	12
	local.set	71
	block   	
	block   	
	local.get	71
	i32.eqz
	br_if   	0                               # 0: down to label11
# %bb.8:
	i32.const	0
	local.set	72
	local.get	72
	i64.load	__llvm_gcov_ctr.3+24
	local.set	73
	i64.const	1
	local.set	74
	local.get	73
	local.get	74
	i64.add 
	local.set	75
	i32.const	0
	local.set	76
	local.get	76
	local.get	75
	i64.store	__llvm_gcov_ctr.3+24
	i32.const	0
	local.set	77
	local.get	77
	i64.load	.L__profc_memccpy+32
	local.set	78
	i64.const	1
	local.set	79
	local.get	78
	local.get	79
	i64.add 
	local.set	80
	i32.const	0
	local.set	81
	local.get	81
	local.get	80
	i64.store	.L__profc_memccpy+32
	local.get	6
	i32.load	8
	local.set	82
	i32.const	1
	local.set	83
	local.get	82
	local.get	83
	i32.add 
	local.set	84
	local.get	6
	local.get	84
	i32.store	28
	br      	1                               # 1: down to label10
.LBB3_9:
	end_block                               # label11:
	i32.const	0
	local.set	85
	local.get	85
	i64.load	__llvm_gcov_ctr.3+32
	local.set	86
	i64.const	1
	local.set	87
	local.get	86
	local.get	87
	i64.add 
	local.set	88
	i32.const	0
	local.set	89
	local.get	89
	local.get	88
	i64.store	__llvm_gcov_ctr.3+32
	i32.const	0
	local.set	90
	local.get	6
	local.get	90
	i32.store	28
.LBB3_10:
	end_block                               # label10:
	local.get	6
	i32.load	28
	local.set	91
	local.get	91
	return
	end_function
                                        # -- End function
	.section	.text.memchr,"",@
	.hidden	memchr                          # -- Begin function memchr
	.globl	memchr
	.type	memchr,@function
memchr:                                 # @memchr
	.functype	memchr (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_memchr
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_memchr
	local.get	5
	i32.load	12
	local.set	11
	local.get	5
	local.get	11
	i32.store	0
	local.get	5
	i32.load	8
	local.set	12
	i32.const	255
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	local.get	5
	local.get	14
	i32.store	8
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	loop    	                                # label12:
	local.get	5
	i32.load	4
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.set	17
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label13
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.4
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.4
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_memchr+16
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_memchr+16
	local.get	5
	i32.load	0
	local.set	28
	local.get	28
	i32.load8_u	0
	local.set	29
	i32.const	255
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	local.get	5
	i32.load	8
	local.set	32
	local.get	31
	local.get	32
	i32.ne  
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	33
	local.set	17
	local.get	35
	i32.eqz
	br_if   	0                               # 0: down to label13
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.4+8
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.4+8
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc_memchr+24
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc_memchr+24
	local.get	33
	local.set	17
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	end_block                               # label13:
	local.get	17
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.and 
	local.set	48
	block   	
	local.get	48
	i32.eqz
	br_if   	0                               # 0: down to label14
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	i32.const	0
	local.set	49
	local.get	49
	i64.load	.L__profc_memchr+8
	local.set	50
	i64.const	1
	local.set	51
	local.get	50
	local.get	51
	i64.add 
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	.L__profc_memchr+8
# %bb.6:                                #   in Loop: Header=BB4_1 Depth=1
	i32.const	0
	local.set	54
	local.get	54
	i64.load	__llvm_gcov_ctr.4+16
	local.set	55
	i64.const	1
	local.set	56
	local.get	55
	local.get	56
	i64.add 
	local.set	57
	i32.const	0
	local.set	58
	local.get	58
	local.get	57
	i64.store	__llvm_gcov_ctr.4+16
	local.get	5
	i32.load	0
	local.set	59
	i32.const	1
	local.set	60
	local.get	59
	local.get	60
	i32.add 
	local.set	61
	local.get	5
	local.get	61
	i32.store	0
	local.get	5
	i32.load	4
	local.set	62
	i32.const	-1
	local.set	63
	local.get	62
	local.get	63
	i32.add 
	local.set	64
	local.get	5
	local.get	64
	i32.store	4
	br      	1                               # 1: up to label12
.LBB4_7:
	end_block                               # label14:
	end_loop
	local.get	5
	i32.load	4
	local.set	65
	block   	
	block   	
	local.get	65
	i32.eqz
	br_if   	0                               # 0: down to label16
# %bb.8:
	i32.const	0
	local.set	66
	local.get	66
	i64.load	__llvm_gcov_ctr.4+24
	local.set	67
	i64.const	1
	local.set	68
	local.get	67
	local.get	68
	i64.add 
	local.set	69
	i32.const	0
	local.set	70
	local.get	70
	local.get	69
	i64.store	__llvm_gcov_ctr.4+24
	i32.const	0
	local.set	71
	local.get	71
	i64.load	.L__profc_memchr+32
	local.set	72
	i64.const	1
	local.set	73
	local.get	72
	local.get	73
	i64.add 
	local.set	74
	i32.const	0
	local.set	75
	local.get	75
	local.get	74
	i64.store	.L__profc_memchr+32
	local.get	5
	i32.load	0
	local.set	76
	local.get	76
	local.set	77
	br      	1                               # 1: down to label15
.LBB4_9:
	end_block                               # label16:
	i32.const	0
	local.set	78
	local.get	78
	i64.load	__llvm_gcov_ctr.4+32
	local.set	79
	i64.const	1
	local.set	80
	local.get	79
	local.get	80
	i64.add 
	local.set	81
	i32.const	0
	local.set	82
	local.get	82
	local.get	81
	i64.store	__llvm_gcov_ctr.4+32
	i32.const	0
	local.set	83
	local.get	83
	local.set	77
.LBB4_10:
	end_block                               # label15:
	local.get	77
	local.set	84
	local.get	84
	return
	end_function
                                        # -- End function
	.section	.text.memcmp,"",@
	.hidden	memcmp                          # -- Begin function memcmp
	.globl	memcmp
	.type	memcmp,@function
memcmp:                                 # @memcmp
	.functype	memcmp (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_memcmp
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_memcmp
	local.get	5
	i32.load	28
	local.set	11
	local.get	5
	local.get	11
	i32.store	16
	local.get	5
	i32.load	24
	local.set	12
	local.get	5
	local.get	12
	i32.store	12
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	loop    	                                # label17:
	local.get	5
	i32.load	20
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.set	15
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label18
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	i32.const	0
	local.set	16
	local.get	16
	i64.load	__llvm_gcov_ctr.5
	local.set	17
	i64.const	1
	local.set	18
	local.get	17
	local.get	18
	i64.add 
	local.set	19
	i32.const	0
	local.set	20
	local.get	20
	local.get	19
	i64.store	__llvm_gcov_ctr.5
	i32.const	0
	local.set	21
	local.get	21
	i64.load	.L__profc_memcmp+16
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	.L__profc_memcmp+16
	local.get	5
	i32.load	16
	local.set	26
	local.get	26
	i32.load8_u	0
	local.set	27
	i32.const	255
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	5
	i32.load	12
	local.set	30
	local.get	30
	i32.load8_u	0
	local.set	31
	i32.const	255
	local.set	32
	local.get	31
	local.get	32
	i32.and 
	local.set	33
	local.get	29
	local.get	33
	i32.eq  
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	local.get	34
	local.set	15
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label18
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.5+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.5+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_memcmp+24
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_memcmp+24
	local.get	34
	local.set	15
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	end_block                               # label18:
	local.get	15
	local.set	47
	i32.const	1
	local.set	48
	local.get	47
	local.get	48
	i32.and 
	local.set	49
	block   	
	local.get	49
	i32.eqz
	br_if   	0                               # 0: down to label19
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	i32.const	0
	local.set	50
	local.get	50
	i64.load	.L__profc_memcmp+8
	local.set	51
	i64.const	1
	local.set	52
	local.get	51
	local.get	52
	i64.add 
	local.set	53
	i32.const	0
	local.set	54
	local.get	54
	local.get	53
	i64.store	.L__profc_memcmp+8
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	i32.const	0
	local.set	55
	local.get	55
	i64.load	__llvm_gcov_ctr.5+16
	local.set	56
	i64.const	1
	local.set	57
	local.get	56
	local.get	57
	i64.add 
	local.set	58
	i32.const	0
	local.set	59
	local.get	59
	local.get	58
	i64.store	__llvm_gcov_ctr.5+16
	local.get	5
	i32.load	20
	local.set	60
	i32.const	-1
	local.set	61
	local.get	60
	local.get	61
	i32.add 
	local.set	62
	local.get	5
	local.get	62
	i32.store	20
	local.get	5
	i32.load	16
	local.set	63
	i32.const	1
	local.set	64
	local.get	63
	local.get	64
	i32.add 
	local.set	65
	local.get	5
	local.get	65
	i32.store	16
	local.get	5
	i32.load	12
	local.set	66
	i32.const	1
	local.set	67
	local.get	66
	local.get	67
	i32.add 
	local.set	68
	local.get	5
	local.get	68
	i32.store	12
	br      	1                               # 1: up to label17
.LBB5_7:
	end_block                               # label19:
	end_loop
	local.get	5
	i32.load	20
	local.set	69
	block   	
	block   	
	local.get	69
	i32.eqz
	br_if   	0                               # 0: down to label21
# %bb.8:
	i32.const	0
	local.set	70
	local.get	70
	i64.load	__llvm_gcov_ctr.5+24
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	__llvm_gcov_ctr.5+24
	i32.const	0
	local.set	75
	local.get	75
	i64.load	.L__profc_memcmp+32
	local.set	76
	i64.const	1
	local.set	77
	local.get	76
	local.get	77
	i64.add 
	local.set	78
	i32.const	0
	local.set	79
	local.get	79
	local.get	78
	i64.store	.L__profc_memcmp+32
	local.get	5
	i32.load	16
	local.set	80
	local.get	80
	i32.load8_u	0
	local.set	81
	i32.const	255
	local.set	82
	local.get	81
	local.get	82
	i32.and 
	local.set	83
	local.get	5
	i32.load	12
	local.set	84
	local.get	84
	i32.load8_u	0
	local.set	85
	i32.const	255
	local.set	86
	local.get	85
	local.get	86
	i32.and 
	local.set	87
	local.get	83
	local.get	87
	i32.sub 
	local.set	88
	local.get	88
	local.set	89
	br      	1                               # 1: down to label20
.LBB5_9:
	end_block                               # label21:
	i32.const	0
	local.set	90
	local.get	90
	i64.load	__llvm_gcov_ctr.5+32
	local.set	91
	i64.const	1
	local.set	92
	local.get	91
	local.get	92
	i64.add 
	local.set	93
	i32.const	0
	local.set	94
	local.get	94
	local.get	93
	i64.store	__llvm_gcov_ctr.5+32
	i32.const	0
	local.set	95
	local.get	95
	local.set	89
.LBB5_10:
	end_block                               # label20:
	local.get	89
	local.set	96
	local.get	96
	return
	end_function
                                        # -- End function
	.section	.text.memcpy,"",@
	.hidden	memcpy                          # -- Begin function memcpy
	.globl	memcpy
	.type	memcpy,@function
memcpy:                                 # @memcpy
	.functype	memcpy (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.6
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.6
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_memcpy
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_memcpy
	local.get	5
	i32.load	28
	local.set	16
	local.get	5
	local.get	16
	i32.store	16
	local.get	5
	i32.load	24
	local.set	17
	local.get	5
	local.get	17
	i32.store	12
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label23:
	local.get	5
	i32.load	20
	local.set	18
	local.get	18
	i32.eqz
	br_if   	1                               # 1: down to label22
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_memcpy+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_memcpy+8
	local.get	5
	i32.load	12
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.add 
	local.set	26
	local.get	5
	local.get	26
	i32.store	12
	local.get	24
	i32.load8_u	0
	local.set	27
	local.get	5
	i32.load	16
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.add 
	local.set	30
	local.get	5
	local.get	30
	i32.store	16
	local.get	28
	local.get	27
	i32.store8	0
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	i32.const	0
	local.set	31
	local.get	31
	i64.load	__llvm_gcov_ctr.6+8
	local.set	32
	i64.const	1
	local.set	33
	local.get	32
	local.get	33
	i64.add 
	local.set	34
	i32.const	0
	local.set	35
	local.get	35
	local.get	34
	i64.store	__llvm_gcov_ctr.6+8
	local.get	5
	i32.load	20
	local.set	36
	i32.const	-1
	local.set	37
	local.get	36
	local.get	37
	i32.add 
	local.set	38
	local.get	5
	local.get	38
	i32.store	20
	br      	0                               # 0: up to label23
.LBB6_4:
	end_loop
	end_block                               # label22:
	local.get	5
	i32.load	28
	local.set	39
	local.get	39
	return
	end_function
                                        # -- End function
	.section	.text.memrchr,"",@
	.hidden	memrchr                         # -- Begin function memrchr
	.globl	memrchr
	.type	memrchr,@function
memrchr:                                # @memrchr
	.functype	memrchr (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_memrchr
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_memrchr
	local.get	5
	i32.load	24
	local.set	11
	local.get	5
	local.get	11
	i32.store	12
	local.get	5
	i32.load	20
	local.set	12
	i32.const	255
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	local.get	5
	local.get	14
	i32.store	20
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label26:
	local.get	5
	i32.load	16
	local.set	15
	i32.const	-1
	local.set	16
	local.get	15
	local.get	16
	i32.add 
	local.set	17
	local.get	5
	local.get	17
	i32.store	16
	local.get	15
	i32.eqz
	br_if   	1                               # 1: down to label25
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	i32.const	0
	local.set	18
	local.get	18
	i64.load	.L__profc_memrchr+8
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	.L__profc_memrchr+8
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
	i32.load	20
	local.set	29
	local.get	28
	local.get	29
	i32.eq  
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	block   	
	local.get	32
	i32.eqz
	br_if   	0                               # 0: down to label27
# %bb.3:
	i32.const	0
	local.set	33
	local.get	33
	i64.load	__llvm_gcov_ctr.7
	local.set	34
	i64.const	1
	local.set	35
	local.get	34
	local.get	35
	i64.add 
	local.set	36
	i32.const	0
	local.set	37
	local.get	37
	local.get	36
	i64.store	__llvm_gcov_ctr.7
	i32.const	0
	local.set	38
	local.get	38
	i64.load	.L__profc_memrchr+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	.L__profc_memrchr+16
	local.get	5
	i32.load	12
	local.set	43
	local.get	5
	i32.load	16
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	5
	local.get	45
	i32.store	28
	br      	3                               # 3: down to label24
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	end_block                               # label27:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.7+8
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.7+8
	br      	0                               # 0: up to label26
.LBB7_5:
	end_loop
	end_block                               # label25:
	i32.const	0
	local.set	51
	local.get	51
	i64.load	__llvm_gcov_ctr.7+16
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	__llvm_gcov_ctr.7+16
	i32.const	0
	local.set	56
	local.get	5
	local.get	56
	i32.store	28
.LBB7_6:
	end_block                               # label24:
	local.get	5
	i32.load	28
	local.set	57
	local.get	57
	return
	end_function
                                        # -- End function
	.section	.text.memset,"",@
	.hidden	memset                          # -- Begin function memset
	.globl	memset
	.type	memset,@function
memset:                                 # @memset
	.functype	memset (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.8
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.8
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_memset
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_memset
	local.get	5
	i32.load	28
	local.set	16
	local.get	5
	local.get	16
	i32.store	16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label29:
	local.get	5
	i32.load	20
	local.set	17
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label28
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	i32.const	0
	local.set	18
	local.get	18
	i64.load	.L__profc_memset+8
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	.L__profc_memset+8
	local.get	5
	i32.load	24
	local.set	23
	local.get	5
	i32.load	16
	local.set	24
	local.get	24
	local.get	23
	i32.store8	0
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	i32.const	0
	local.set	25
	local.get	25
	i64.load	__llvm_gcov_ctr.8+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.8+8
	local.get	5
	i32.load	20
	local.set	30
	i32.const	-1
	local.set	31
	local.get	30
	local.get	31
	i32.add 
	local.set	32
	local.get	5
	local.get	32
	i32.store	20
	local.get	5
	i32.load	16
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	local.get	5
	local.get	35
	i32.store	16
	br      	0                               # 0: up to label29
.LBB8_4:
	end_loop
	end_block                               # label28:
	local.get	5
	i32.load	28
	local.set	36
	local.get	36
	return
	end_function
                                        # -- End function
	.section	.text.stpcpy,"",@
	.hidden	stpcpy                          # -- Begin function stpcpy
	.globl	stpcpy
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
	.functype	stpcpy (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.9
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.9
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_stpcpy
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_stpcpy
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label31:
	local.get	4
	i32.load	8
	local.set	15
	local.get	15
	i32.load8_u	0
	local.set	16
	local.get	4
	i32.load	12
	local.set	17
	local.get	17
	local.get	16
	i32.store8	0
	i32.const	0
	local.set	18
	i32.const	255
	local.set	19
	local.get	16
	local.get	19
	i32.and 
	local.set	20
	i32.const	255
	local.set	21
	local.get	18
	local.get	21
	i32.and 
	local.set	22
	local.get	20
	local.get	22
	i32.ne  
	local.set	23
	i32.const	1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	25
	i32.eqz
	br_if   	1                               # 1: down to label30
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_stpcpy+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_stpcpy+8
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	i32.const	0
	local.set	31
	local.get	31
	i64.load	__llvm_gcov_ctr.9+8
	local.set	32
	i64.const	1
	local.set	33
	local.get	32
	local.get	33
	i64.add 
	local.set	34
	i32.const	0
	local.set	35
	local.get	35
	local.get	34
	i64.store	__llvm_gcov_ctr.9+8
	local.get	4
	i32.load	8
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.add 
	local.set	38
	local.get	4
	local.get	38
	i32.store	8
	local.get	4
	i32.load	12
	local.set	39
	i32.const	1
	local.set	40
	local.get	39
	local.get	40
	i32.add 
	local.set	41
	local.get	4
	local.get	41
	i32.store	12
	br      	0                               # 0: up to label31
.LBB9_4:
	end_loop
	end_block                               # label30:
	local.get	4
	i32.load	12
	local.set	42
	local.get	42
	return
	end_function
                                        # -- End function
	.section	.text.strchrnul,"",@
	.hidden	strchrnul                       # -- Begin function strchrnul
	.globl	strchrnul
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
	.functype	strchrnul (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.10
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.10
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_strchrnul
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_strchrnul
	local.get	4
	i32.load	8
	local.set	15
	i32.const	255
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	4
	local.get	17
	i32.store	8
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label32:
	local.get	4
	i32.load	12
	local.set	18
	local.get	18
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
	i32.const	0
	local.set	23
	local.get	23
	local.set	24
	block   	
	local.get	22
	i32.eqz
	br_if   	0                               # 0: down to label33
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	i32.const	0
	local.set	25
	local.get	25
	i64.load	__llvm_gcov_ctr.10+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.10+8
	i32.const	0
	local.set	30
	local.get	30
	i64.load	.L__profc_strchrnul+16
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	.L__profc_strchrnul+16
	local.get	4
	i32.load	12
	local.set	35
	local.get	35
	i32.load8_u	0
	local.set	36
	i32.const	255
	local.set	37
	local.get	36
	local.get	37
	i32.and 
	local.set	38
	local.get	4
	i32.load	8
	local.set	39
	local.get	38
	local.get	39
	i32.ne  
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.and 
	local.set	42
	local.get	40
	local.set	24
	local.get	42
	i32.eqz
	br_if   	0                               # 0: down to label33
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	i32.const	0
	local.set	43
	local.get	43
	i64.load	__llvm_gcov_ctr.10+16
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	__llvm_gcov_ctr.10+16
	i32.const	0
	local.set	48
	local.get	48
	i64.load	.L__profc_strchrnul+24
	local.set	49
	i64.const	1
	local.set	50
	local.get	49
	local.get	50
	i64.add 
	local.set	51
	i32.const	0
	local.set	52
	local.get	52
	local.get	51
	i64.store	.L__profc_strchrnul+24
	local.get	40
	local.set	24
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	end_block                               # label33:
	local.get	24
	local.set	53
	i32.const	1
	local.set	54
	local.get	53
	local.get	54
	i32.and 
	local.set	55
	block   	
	local.get	55
	i32.eqz
	br_if   	0                               # 0: down to label34
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	i32.const	0
	local.set	56
	local.get	56
	i64.load	.L__profc_strchrnul+8
	local.set	57
	i64.const	1
	local.set	58
	local.get	57
	local.get	58
	i64.add 
	local.set	59
	i32.const	0
	local.set	60
	local.get	60
	local.get	59
	i64.store	.L__profc_strchrnul+8
# %bb.6:                                #   in Loop: Header=BB10_1 Depth=1
	i32.const	0
	local.set	61
	local.get	61
	i64.load	__llvm_gcov_ctr.10+24
	local.set	62
	i64.const	1
	local.set	63
	local.get	62
	local.get	63
	i64.add 
	local.set	64
	i32.const	0
	local.set	65
	local.get	65
	local.get	64
	i64.store	__llvm_gcov_ctr.10+24
	local.get	4
	i32.load	12
	local.set	66
	i32.const	1
	local.set	67
	local.get	66
	local.get	67
	i32.add 
	local.set	68
	local.get	4
	local.get	68
	i32.store	12
	br      	1                               # 1: up to label32
.LBB10_7:
	end_block                               # label34:
	end_loop
	local.get	4
	i32.load	12
	local.set	69
	local.get	69
	return
	end_function
                                        # -- End function
	.section	.text.strchr,"",@
	.hidden	strchr                          # -- Begin function strchr
	.globl	strchr
	.type	strchr,@function
strchr:                                 # @strchr
	.functype	strchr (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32
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
	local.get	5
	i64.load	.L__profc_strchr
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_strchr
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label36:
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
	local.get	4
	i32.load	4
	local.set	15
	local.get	14
	local.get	15
	i32.eq  
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
	br_if   	0                               # 0: down to label37
# %bb.2:
	i32.const	0
	local.set	19
	local.get	19
	i64.load	__llvm_gcov_ctr.11
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	__llvm_gcov_ctr.11
	i32.const	0
	local.set	24
	local.get	24
	i64.load	.L__profc_strchr+16
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	i32.const	0
	local.set	28
	local.get	28
	local.get	27
	i64.store	.L__profc_strchr+16
	local.get	4
	i32.load	8
	local.set	29
	local.get	4
	local.get	29
	i32.store	12
	br      	2                               # 2: down to label35
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	end_block                               # label37:
# %bb.4:                                #   in Loop: Header=BB11_1 Depth=1
	local.get	4
	i32.load	8
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.add 
	local.set	32
	local.get	4
	local.get	32
	i32.store	8
	local.get	30
	i32.load8_u	0
	local.set	33
	i32.const	0
	local.set	34
	i32.const	255
	local.set	35
	local.get	33
	local.get	35
	i32.and 
	local.set	36
	i32.const	255
	local.set	37
	local.get	34
	local.get	37
	i32.and 
	local.set	38
	local.get	36
	local.get	38
	i32.ne  
	local.set	39
	i32.const	1
	local.set	40
	local.get	39
	local.get	40
	i32.and 
	local.set	41
	block   	
	local.get	41
	i32.eqz
	br_if   	0                               # 0: down to label38
# %bb.5:                                #   in Loop: Header=BB11_1 Depth=1
	i32.const	0
	local.set	42
	local.get	42
	i64.load	__llvm_gcov_ctr.11+8
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	__llvm_gcov_ctr.11+8
	i32.const	0
	local.set	47
	local.get	47
	i64.load	.L__profc_strchr+8
	local.set	48
	i64.const	1
	local.set	49
	local.get	48
	local.get	49
	i64.add 
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i64.store	.L__profc_strchr+8
	br      	1                               # 1: up to label36
.LBB11_6:
	end_block                               # label38:
	end_loop
	i32.const	0
	local.set	52
	local.get	52
	i64.load	__llvm_gcov_ctr.11+16
	local.set	53
	i64.const	1
	local.set	54
	local.get	53
	local.get	54
	i64.add 
	local.set	55
	i32.const	0
	local.set	56
	local.get	56
	local.get	55
	i64.store	__llvm_gcov_ctr.11+16
	i32.const	0
	local.set	57
	local.get	4
	local.get	57
	i32.store	12
.LBB11_7:
	end_block                               # label35:
	local.get	4
	i32.load	12
	local.set	58
	local.get	58
	return
	end_function
                                        # -- End function
	.section	.text.strcmp,"",@
	.hidden	strcmp                          # -- Begin function strcmp
	.globl	strcmp
	.type	strcmp,@function
strcmp:                                 # @strcmp
	.functype	strcmp (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.12
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.12
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_strcmp
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_strcmp
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label39:
	local.get	4
	i32.load	12
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
	local.get	4
	i32.load	8
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
	local.get	19
	local.get	24
	i32.eq  
	local.set	25
	i32.const	0
	local.set	26
	i32.const	1
	local.set	27
	local.get	25
	local.get	27
	i32.and 
	local.set	28
	local.get	26
	local.set	29
	block   	
	local.get	28
	i32.eqz
	br_if   	0                               # 0: down to label40
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	i32.const	0
	local.set	30
	local.get	30
	i64.load	__llvm_gcov_ctr.12+8
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	__llvm_gcov_ctr.12+8
	i32.const	0
	local.set	35
	local.get	35
	i64.load	.L__profc_strcmp+16
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	.L__profc_strcmp+16
	local.get	4
	i32.load	12
	local.set	40
	local.get	40
	i32.load8_u	0
	local.set	41
	i32.const	24
	local.set	42
	local.get	41
	local.get	42
	i32.shl 
	local.set	43
	local.get	43
	local.get	42
	i32.shr_s
	local.set	44
	i32.const	0
	local.set	45
	local.get	44
	local.get	45
	i32.ne  
	local.set	46
	local.get	46
	local.set	29
	local.get	44
	i32.eqz
	br_if   	0                               # 0: down to label40
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	i32.const	0
	local.set	47
	local.get	47
	i64.load	__llvm_gcov_ctr.12+16
	local.set	48
	i64.const	1
	local.set	49
	local.get	48
	local.get	49
	i64.add 
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i64.store	__llvm_gcov_ctr.12+16
	i32.const	0
	local.set	52
	local.get	52
	i64.load	.L__profc_strcmp+24
	local.set	53
	i64.const	1
	local.set	54
	local.get	53
	local.get	54
	i64.add 
	local.set	55
	i32.const	0
	local.set	56
	local.get	56
	local.get	55
	i64.store	.L__profc_strcmp+24
	local.get	46
	local.set	29
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	end_block                               # label40:
	local.get	29
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	block   	
	local.get	59
	i32.eqz
	br_if   	0                               # 0: down to label41
# %bb.5:                                #   in Loop: Header=BB12_1 Depth=1
	i32.const	0
	local.set	60
	local.get	60
	i64.load	.L__profc_strcmp+8
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc_strcmp+8
# %bb.6:                                #   in Loop: Header=BB12_1 Depth=1
	i32.const	0
	local.set	65
	local.get	65
	i64.load	__llvm_gcov_ctr.12+24
	local.set	66
	i64.const	1
	local.set	67
	local.get	66
	local.get	67
	i64.add 
	local.set	68
	i32.const	0
	local.set	69
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.12+24
	local.get	4
	i32.load	12
	local.set	70
	i32.const	1
	local.set	71
	local.get	70
	local.get	71
	i32.add 
	local.set	72
	local.get	4
	local.get	72
	i32.store	12
	local.get	4
	i32.load	8
	local.set	73
	i32.const	1
	local.set	74
	local.get	73
	local.get	74
	i32.add 
	local.set	75
	local.get	4
	local.get	75
	i32.store	8
	br      	1                               # 1: up to label39
.LBB12_7:
	end_block                               # label41:
	end_loop
	local.get	4
	i32.load	12
	local.set	76
	local.get	76
	i32.load8_u	0
	local.set	77
	i32.const	255
	local.set	78
	local.get	77
	local.get	78
	i32.and 
	local.set	79
	local.get	4
	i32.load	8
	local.set	80
	local.get	80
	i32.load8_u	0
	local.set	81
	i32.const	255
	local.set	82
	local.get	81
	local.get	82
	i32.and 
	local.set	83
	local.get	79
	local.get	83
	i32.sub 
	local.set	84
	local.get	84
	return
	end_function
                                        # -- End function
	.section	.text.strlen,"",@
	.hidden	strlen                          # -- Begin function strlen
	.globl	strlen
	.type	strlen,@function
strlen:                                 # @strlen
	.functype	strlen (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.13
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.13
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_strlen
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_strlen
	local.get	3
	i32.load	12
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label43:
	local.get	3
	i32.load	12
	local.set	15
	local.get	15
	i32.load8_u	0
	local.set	16
	i32.const	0
	local.set	17
	i32.const	255
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	i32.const	255
	local.set	20
	local.get	17
	local.get	20
	i32.and 
	local.set	21
	local.get	19
	local.get	21
	i32.ne  
	local.set	22
	i32.const	1
	local.set	23
	local.get	22
	local.get	23
	i32.and 
	local.set	24
	local.get	24
	i32.eqz
	br_if   	1                               # 1: down to label42
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc_strlen+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc_strlen+8
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	i32.const	0
	local.set	30
	local.get	30
	i64.load	__llvm_gcov_ctr.13+8
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	__llvm_gcov_ctr.13+8
	local.get	3
	i32.load	12
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.add 
	local.set	37
	local.get	3
	local.get	37
	i32.store	12
	br      	0                               # 0: up to label43
.LBB13_4:
	end_loop
	end_block                               # label42:
	local.get	3
	i32.load	12
	local.set	38
	local.get	3
	i32.load	8
	local.set	39
	local.get	38
	local.get	39
	i32.sub 
	local.set	40
	local.get	40
	return
	end_function
                                        # -- End function
	.section	.text.strncmp,"",@
	.hidden	strncmp                         # -- Begin function strncmp
	.globl	strncmp
	.type	strncmp,@function
strncmp:                                # @strncmp
	.functype	strncmp (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_strncmp
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_strncmp
	local.get	5
	i32.load	24
	local.set	11
	local.get	5
	local.get	11
	i32.store	12
	local.get	5
	i32.load	20
	local.set	12
	local.get	5
	local.get	12
	i32.store	8
	local.get	5
	i32.load	16
	local.set	13
	i32.const	-1
	local.set	14
	local.get	13
	local.get	14
	i32.add 
	local.set	15
	local.get	5
	local.get	15
	i32.store	16
	block   	
	block   	
	local.get	13
	br_if   	0                               # 0: down to label45
# %bb.1:
	i32.const	0
	local.set	16
	local.get	16
	i64.load	__llvm_gcov_ctr.14+8
	local.set	17
	i64.const	1
	local.set	18
	local.get	17
	local.get	18
	i64.add 
	local.set	19
	i32.const	0
	local.set	20
	local.get	20
	local.get	19
	i64.store	__llvm_gcov_ctr.14+8
	i32.const	0
	local.set	21
	local.get	21
	i64.load	.L__profc_strncmp+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	.L__profc_strncmp+8
	i32.const	0
	local.set	26
	local.get	5
	local.get	26
	i32.store	28
	br      	1                               # 1: down to label44
.LBB14_2:
	end_block                               # label45:
	i32.const	0
	local.set	27
	local.get	27
	i64.load	__llvm_gcov_ctr.14
	local.set	28
	i64.const	1
	local.set	29
	local.get	28
	local.get	29
	i64.add 
	local.set	30
	i32.const	0
	local.set	31
	local.get	31
	local.get	30
	i64.store	__llvm_gcov_ctr.14
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label46:
	local.get	5
	i32.load	12
	local.set	32
	local.get	32
	i32.load8_u	0
	local.set	33
	i32.const	255
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.set	37
	block   	
	local.get	35
	i32.eqz
	br_if   	0                               # 0: down to label47
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	i32.const	0
	local.set	38
	local.get	38
	i64.load	__llvm_gcov_ctr.14+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	__llvm_gcov_ctr.14+16
	i32.const	0
	local.set	43
	local.get	43
	i64.load	.L__profc_strncmp+56
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	.L__profc_strncmp+56
	local.get	5
	i32.load	8
	local.set	48
	local.get	48
	i32.load8_u	0
	local.set	49
	i32.const	255
	local.set	50
	local.get	49
	local.get	50
	i32.and 
	local.set	51
	i32.const	0
	local.set	52
	local.get	52
	local.set	37
	local.get	51
	i32.eqz
	br_if   	0                               # 0: down to label47
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	i32.const	0
	local.set	53
	local.get	53
	i64.load	__llvm_gcov_ctr.14+24
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.14+24
	i32.const	0
	local.set	58
	local.get	58
	i64.load	.L__profc_strncmp+64
	local.set	59
	i64.const	1
	local.set	60
	local.get	59
	local.get	60
	i64.add 
	local.set	61
	i32.const	0
	local.set	62
	local.get	62
	local.get	61
	i64.store	.L__profc_strncmp+64
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	i32.const	0
	local.set	63
	local.get	63
	i64.load	.L__profc_strncmp+40
	local.set	64
	i64.const	1
	local.set	65
	local.get	64
	local.get	65
	i64.add 
	local.set	66
	i32.const	0
	local.set	67
	local.get	67
	local.get	66
	i64.store	.L__profc_strncmp+40
	local.get	5
	i32.load	16
	local.set	68
	i32.const	0
	local.set	69
	local.get	69
	local.set	37
	local.get	68
	i32.eqz
	br_if   	0                               # 0: down to label47
# %bb.7:                                #   in Loop: Header=BB14_3 Depth=1
	i32.const	0
	local.set	70
	local.get	70
	i64.load	__llvm_gcov_ctr.14+32
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	__llvm_gcov_ctr.14+32
	i32.const	0
	local.set	75
	local.get	75
	i64.load	.L__profc_strncmp+48
	local.set	76
	i64.const	1
	local.set	77
	local.get	76
	local.get	77
	i64.add 
	local.set	78
	i32.const	0
	local.set	79
	local.get	79
	local.get	78
	i64.store	.L__profc_strncmp+48
# %bb.8:                                #   in Loop: Header=BB14_3 Depth=1
	i32.const	0
	local.set	80
	local.get	80
	i64.load	.L__profc_strncmp+24
	local.set	81
	i64.const	1
	local.set	82
	local.get	81
	local.get	82
	i64.add 
	local.set	83
	i32.const	0
	local.set	84
	local.get	84
	local.get	83
	i64.store	.L__profc_strncmp+24
	local.get	5
	i32.load	12
	local.set	85
	local.get	85
	i32.load8_u	0
	local.set	86
	i32.const	255
	local.set	87
	local.get	86
	local.get	87
	i32.and 
	local.set	88
	local.get	5
	i32.load	8
	local.set	89
	local.get	89
	i32.load8_u	0
	local.set	90
	i32.const	255
	local.set	91
	local.get	90
	local.get	91
	i32.and 
	local.set	92
	local.get	88
	local.get	92
	i32.eq  
	local.set	93
	i32.const	1
	local.set	94
	local.get	93
	local.get	94
	i32.and 
	local.set	95
	local.get	93
	local.set	37
	local.get	95
	i32.eqz
	br_if   	0                               # 0: down to label47
# %bb.9:                                #   in Loop: Header=BB14_3 Depth=1
	i32.const	0
	local.set	96
	local.get	96
	i64.load	__llvm_gcov_ctr.14+40
	local.set	97
	i64.const	1
	local.set	98
	local.get	97
	local.get	98
	i64.add 
	local.set	99
	i32.const	0
	local.set	100
	local.get	100
	local.get	99
	i64.store	__llvm_gcov_ctr.14+40
	i32.const	0
	local.set	101
	local.get	101
	i64.load	.L__profc_strncmp+32
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	i32.const	0
	local.set	105
	local.get	105
	local.get	104
	i64.store	.L__profc_strncmp+32
	local.get	93
	local.set	37
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	end_block                               # label47:
	local.get	37
	local.set	106
	i32.const	1
	local.set	107
	local.get	106
	local.get	107
	i32.and 
	local.set	108
	block   	
	local.get	108
	i32.eqz
	br_if   	0                               # 0: down to label48
# %bb.11:                               #   in Loop: Header=BB14_3 Depth=1
	i32.const	0
	local.set	109
	local.get	109
	i64.load	.L__profc_strncmp+16
	local.set	110
	i64.const	1
	local.set	111
	local.get	110
	local.get	111
	i64.add 
	local.set	112
	i32.const	0
	local.set	113
	local.get	113
	local.get	112
	i64.store	.L__profc_strncmp+16
# %bb.12:                               #   in Loop: Header=BB14_3 Depth=1
	i32.const	0
	local.set	114
	local.get	114
	i64.load	__llvm_gcov_ctr.14+48
	local.set	115
	i64.const	1
	local.set	116
	local.get	115
	local.get	116
	i64.add 
	local.set	117
	i32.const	0
	local.set	118
	local.get	118
	local.get	117
	i64.store	__llvm_gcov_ctr.14+48
	local.get	5
	i32.load	12
	local.set	119
	i32.const	1
	local.set	120
	local.get	119
	local.get	120
	i32.add 
	local.set	121
	local.get	5
	local.get	121
	i32.store	12
	local.get	5
	i32.load	8
	local.set	122
	i32.const	1
	local.set	123
	local.get	122
	local.get	123
	i32.add 
	local.set	124
	local.get	5
	local.get	124
	i32.store	8
	local.get	5
	i32.load	16
	local.set	125
	i32.const	-1
	local.set	126
	local.get	125
	local.get	126
	i32.add 
	local.set	127
	local.get	5
	local.get	127
	i32.store	16
	br      	1                               # 1: up to label46
.LBB14_13:
	end_block                               # label48:
	end_loop
	local.get	5
	i32.load	12
	local.set	128
	local.get	128
	i32.load8_u	0
	local.set	129
	i32.const	255
	local.set	130
	local.get	129
	local.get	130
	i32.and 
	local.set	131
	local.get	5
	i32.load	8
	local.set	132
	local.get	132
	i32.load8_u	0
	local.set	133
	i32.const	255
	local.set	134
	local.get	133
	local.get	134
	i32.and 
	local.set	135
	local.get	131
	local.get	135
	i32.sub 
	local.set	136
	local.get	5
	local.get	136
	i32.store	28
.LBB14_14:
	end_block                               # label44:
	local.get	5
	i32.load	28
	local.set	137
	local.get	137
	return
	end_function
                                        # -- End function
	.section	.text.swab,"",@
	.hidden	swab                            # -- Begin function swab
	.globl	swab
	.type	swab,@function
swab:                                   # @swab
	.functype	swab (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.15
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.15
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_swab
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_swab
	local.get	5
	i32.load	28
	local.set	16
	local.get	5
	local.get	16
	i32.store	16
	local.get	5
	i32.load	24
	local.set	17
	local.get	5
	local.get	17
	i32.store	12
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label50:
	local.get	5
	i32.load	20
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.gt_s
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	22
	i32.eqz
	br_if   	1                               # 1: down to label49
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_swab+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_swab+8
	local.get	5
	i32.load	16
	local.set	28
	local.get	28
	i32.load8_u	1
	local.set	29
	local.get	5
	i32.load	12
	local.set	30
	local.get	30
	local.get	29
	i32.store8	0
	local.get	5
	i32.load	16
	local.set	31
	local.get	31
	i32.load8_u	0
	local.set	32
	local.get	5
	i32.load	12
	local.set	33
	local.get	33
	local.get	32
	i32.store8	1
	local.get	5
	i32.load	12
	local.set	34
	i32.const	2
	local.set	35
	local.get	34
	local.get	35
	i32.add 
	local.set	36
	local.get	5
	local.get	36
	i32.store	12
	local.get	5
	i32.load	16
	local.set	37
	i32.const	2
	local.set	38
	local.get	37
	local.get	38
	i32.add 
	local.set	39
	local.get	5
	local.get	39
	i32.store	16
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	i32.const	0
	local.set	40
	local.get	40
	i64.load	__llvm_gcov_ctr.15+8
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	__llvm_gcov_ctr.15+8
	local.get	5
	i32.load	20
	local.set	45
	i32.const	2
	local.set	46
	local.get	45
	local.get	46
	i32.sub 
	local.set	47
	local.get	5
	local.get	47
	i32.store	20
	br      	0                               # 0: up to label50
.LBB15_4:
	end_loop
	end_block                               # label49:
	return
	end_function
                                        # -- End function
	.section	.text.isalpha,"",@
	.hidden	isalpha                         # -- Begin function isalpha
	.globl	isalpha
	.type	isalpha,@function
isalpha:                                # @isalpha
	.functype	isalpha (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.16
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.16
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_isalpha
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_isalpha
	local.get	3
	i32.load	12
	local.set	14
	i32.const	32
	local.set	15
	local.get	14
	local.get	15
	i32.or  
	local.set	16
	i32.const	97
	local.set	17
	local.get	16
	local.get	17
	i32.sub 
	local.set	18
	i32.const	26
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
	local.get	22
	return
	end_function
                                        # -- End function
	.section	.text.isascii,"",@
	.hidden	isascii                         # -- Begin function isascii
	.globl	isascii
	.type	isascii,@function
isascii:                                # @isascii
	.functype	isascii (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.17
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.17
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_isascii
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_isascii
	local.get	3
	i32.load	12
	local.set	14
	i32.const	-128
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	i32.const	0
	local.set	17
	local.get	16
	local.get	17
	i32.ne  
	local.set	18
	i32.const	-1
	local.set	19
	local.get	18
	local.get	19
	i32.xor 
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
	.section	.text.isblank,"",@
	.hidden	isblank                         # -- Begin function isblank
	.globl	isblank
	.type	isblank,@function
isblank:                                # @isblank
	.functype	isblank (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.18
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.18
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_isblank
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_isblank
	local.get	3
	i32.load	12
	local.set	14
	i32.const	32
	local.set	15
	local.get	14
	local.get	15
	i32.eq  
	local.set	16
	i32.const	1
	local.set	17
	i32.const	1
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	local.get	17
	local.set	20
	block   	
	local.get	19
	br_if   	0                               # 0: down to label51
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.18+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.18+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_isblank+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_isblank+8
	local.get	3
	i32.load	12
	local.set	31
	i32.const	9
	local.set	32
	local.get	31
	local.get	32
	i32.eq  
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	33
	local.set	20
	local.get	35
	br_if   	0                               # 0: down to label51
# %bb.2:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.18+16
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.18+16
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc_isblank+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc_isblank+16
	local.get	33
	local.set	20
.LBB18_3:
	end_block                               # label51:
	local.get	20
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.and 
	local.set	48
	local.get	48
	return
	end_function
                                        # -- End function
	.section	.text.iscntrl,"",@
	.hidden	iscntrl                         # -- Begin function iscntrl
	.globl	iscntrl
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
	.functype	iscntrl (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.19
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.19
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_iscntrl
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_iscntrl
	local.get	3
	i32.load	12
	local.set	14
	i32.const	32
	local.set	15
	local.get	14
	local.get	15
	i32.lt_u
	local.set	16
	i32.const	1
	local.set	17
	i32.const	1
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	local.get	17
	local.set	20
	block   	
	local.get	19
	br_if   	0                               # 0: down to label52
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.19+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.19+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_iscntrl+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_iscntrl+8
	local.get	3
	i32.load	12
	local.set	31
	i32.const	127
	local.set	32
	local.get	31
	local.get	32
	i32.eq  
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	33
	local.set	20
	local.get	35
	br_if   	0                               # 0: down to label52
# %bb.2:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.19+16
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.19+16
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc_iscntrl+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc_iscntrl+16
	local.get	33
	local.set	20
.LBB19_3:
	end_block                               # label52:
	local.get	20
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.and 
	local.set	48
	local.get	48
	return
	end_function
                                        # -- End function
	.section	.text.isdigit,"",@
	.hidden	isdigit                         # -- Begin function isdigit
	.globl	isdigit
	.type	isdigit,@function
isdigit:                                # @isdigit
	.functype	isdigit (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.20
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.20
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_isdigit
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_isdigit
	local.get	3
	i32.load	12
	local.set	14
	i32.const	48
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	i32.const	10
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
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.isgraph,"",@
	.hidden	isgraph                         # -- Begin function isgraph
	.globl	isgraph
	.type	isgraph,@function
isgraph:                                # @isgraph
	.functype	isgraph (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.21
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.21
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_isgraph
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_isgraph
	local.get	3
	i32.load	12
	local.set	14
	i32.const	33
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	i32.const	94
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
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.islower,"",@
	.hidden	islower                         # -- Begin function islower
	.globl	islower
	.type	islower,@function
islower:                                # @islower
	.functype	islower (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.22
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.22
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_islower
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_islower
	local.get	3
	i32.load	12
	local.set	14
	i32.const	97
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	i32.const	26
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
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.isprint,"",@
	.hidden	isprint                         # -- Begin function isprint
	.globl	isprint
	.type	isprint,@function
isprint:                                # @isprint
	.functype	isprint (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.23
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.23
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_isprint
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_isprint
	local.get	3
	i32.load	12
	local.set	14
	i32.const	32
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	i32.const	95
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
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.isspace,"",@
	.hidden	isspace                         # -- Begin function isspace
	.globl	isspace
	.type	isspace,@function
isspace:                                # @isspace
	.functype	isspace (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.24
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.24
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_isspace
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_isspace
	local.get	3
	i32.load	12
	local.set	14
	i32.const	32
	local.set	15
	local.get	14
	local.get	15
	i32.eq  
	local.set	16
	i32.const	1
	local.set	17
	i32.const	1
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	local.get	17
	local.set	20
	block   	
	local.get	19
	br_if   	0                               # 0: down to label53
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.24+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.24+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_isspace+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_isspace+8
	local.get	3
	i32.load	12
	local.set	31
	i32.const	9
	local.set	32
	local.get	31
	local.get	32
	i32.sub 
	local.set	33
	i32.const	5
	local.set	34
	local.get	33
	local.get	34
	i32.lt_u
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	local.get	35
	local.set	20
	local.get	37
	br_if   	0                               # 0: down to label53
# %bb.2:
	i32.const	0
	local.set	38
	local.get	38
	i64.load	__llvm_gcov_ctr.24+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	__llvm_gcov_ctr.24+16
	i32.const	0
	local.set	43
	local.get	43
	i64.load	.L__profc_isspace+16
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	.L__profc_isspace+16
	local.get	35
	local.set	20
.LBB24_3:
	end_block                               # label53:
	local.get	20
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.and 
	local.set	50
	local.get	50
	return
	end_function
                                        # -- End function
	.section	.text.isupper,"",@
	.hidden	isupper                         # -- Begin function isupper
	.globl	isupper
	.type	isupper,@function
isupper:                                # @isupper
	.functype	isupper (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.25
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.25
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_isupper
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_isupper
	local.get	3
	i32.load	12
	local.set	14
	i32.const	65
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	i32.const	26
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
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.iswcntrl,"",@
	.hidden	iswcntrl                        # -- Begin function iswcntrl
	.globl	iswcntrl
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
	.functype	iswcntrl (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.26
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.26
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_iswcntrl
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_iswcntrl
	local.get	3
	i32.load	12
	local.set	14
	i32.const	32
	local.set	15
	local.get	14
	local.get	15
	i32.lt_u
	local.set	16
	i32.const	1
	local.set	17
	i32.const	1
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	local.get	17
	local.set	20
	block   	
	local.get	19
	br_if   	0                               # 0: down to label54
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.26+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.26+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_iswcntrl+40
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_iswcntrl+40
	local.get	3
	i32.load	12
	local.set	31
	i32.const	127
	local.set	32
	local.get	31
	local.get	32
	i32.sub 
	local.set	33
	i32.const	33
	local.set	34
	local.get	33
	local.get	34
	i32.lt_u
	local.set	35
	i32.const	1
	local.set	36
	i32.const	1
	local.set	37
	local.get	35
	local.get	37
	i32.and 
	local.set	38
	local.get	36
	local.set	20
	local.get	38
	br_if   	0                               # 0: down to label54
# %bb.2:
	i32.const	0
	local.set	39
	local.get	39
	i64.load	__llvm_gcov_ctr.26+16
	local.set	40
	i64.const	1
	local.set	41
	local.get	40
	local.get	41
	i64.add 
	local.set	42
	i32.const	0
	local.set	43
	local.get	43
	local.get	42
	i64.store	__llvm_gcov_ctr.26+16
	i32.const	0
	local.set	44
	local.get	44
	i64.load	.L__profc_iswcntrl+48
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	local.get	47
	i64.store	.L__profc_iswcntrl+48
# %bb.3:
	i32.const	0
	local.set	49
	local.get	49
	i64.load	.L__profc_iswcntrl+24
	local.set	50
	i64.const	1
	local.set	51
	local.get	50
	local.get	51
	i64.add 
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	.L__profc_iswcntrl+24
	local.get	3
	i32.load	12
	local.set	54
	i32.const	8232
	local.set	55
	local.get	54
	local.get	55
	i32.sub 
	local.set	56
	i32.const	2
	local.set	57
	local.get	56
	local.get	57
	i32.lt_u
	local.set	58
	i32.const	1
	local.set	59
	i32.const	1
	local.set	60
	local.get	58
	local.get	60
	i32.and 
	local.set	61
	local.get	59
	local.set	20
	local.get	61
	br_if   	0                               # 0: down to label54
# %bb.4:
	i32.const	0
	local.set	62
	local.get	62
	i64.load	__llvm_gcov_ctr.26+24
	local.set	63
	i64.const	1
	local.set	64
	local.get	63
	local.get	64
	i64.add 
	local.set	65
	i32.const	0
	local.set	66
	local.get	66
	local.get	65
	i64.store	__llvm_gcov_ctr.26+24
	i32.const	0
	local.set	67
	local.get	67
	i64.load	.L__profc_iswcntrl+32
	local.set	68
	i64.const	1
	local.set	69
	local.get	68
	local.get	69
	i64.add 
	local.set	70
	i32.const	0
	local.set	71
	local.get	71
	local.get	70
	i64.store	.L__profc_iswcntrl+32
# %bb.5:
	i32.const	0
	local.set	72
	local.get	72
	i64.load	.L__profc_iswcntrl+8
	local.set	73
	i64.const	1
	local.set	74
	local.get	73
	local.get	74
	i64.add 
	local.set	75
	i32.const	0
	local.set	76
	local.get	76
	local.get	75
	i64.store	.L__profc_iswcntrl+8
	local.get	3
	i32.load	12
	local.set	77
	i32.const	65529
	local.set	78
	local.get	77
	local.get	78
	i32.sub 
	local.set	79
	i32.const	3
	local.set	80
	local.get	79
	local.get	80
	i32.lt_u
	local.set	81
	i32.const	1
	local.set	82
	local.get	81
	local.get	82
	i32.and 
	local.set	83
	local.get	81
	local.set	20
	local.get	83
	br_if   	0                               # 0: down to label54
# %bb.6:
	i32.const	0
	local.set	84
	local.get	84
	i64.load	__llvm_gcov_ctr.26+32
	local.set	85
	i64.const	1
	local.set	86
	local.get	85
	local.get	86
	i64.add 
	local.set	87
	i32.const	0
	local.set	88
	local.get	88
	local.get	87
	i64.store	__llvm_gcov_ctr.26+32
	i32.const	0
	local.set	89
	local.get	89
	i64.load	.L__profc_iswcntrl+16
	local.set	90
	i64.const	1
	local.set	91
	local.get	90
	local.get	91
	i64.add 
	local.set	92
	i32.const	0
	local.set	93
	local.get	93
	local.get	92
	i64.store	.L__profc_iswcntrl+16
	local.get	81
	local.set	20
.LBB26_7:
	end_block                               # label54:
	local.get	20
	local.set	94
	i32.const	1
	local.set	95
	local.get	94
	local.get	95
	i32.and 
	local.set	96
	local.get	96
	return
	end_function
                                        # -- End function
	.section	.text.iswdigit,"",@
	.hidden	iswdigit                        # -- Begin function iswdigit
	.globl	iswdigit
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
	.functype	iswdigit (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.27
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.27
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_iswdigit
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_iswdigit
	local.get	3
	i32.load	12
	local.set	14
	i32.const	48
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	i32.const	10
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
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.iswprint,"",@
	.hidden	iswprint                        # -- Begin function iswprint
	.globl	iswprint
	.type	iswprint,@function
iswprint:                               # @iswprint
	.functype	iswprint (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	local.get	4
	i64.load	.L__profc_iswprint
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_iswprint
	local.get	3
	i32.load	8
	local.set	9
	i32.const	255
	local.set	10
	local.get	9
	local.get	10
	i32.lt_u
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label56
# %bb.1:
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.28
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.28
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_iswprint+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_iswprint+8
	local.get	3
	i32.load	8
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.add 
	local.set	26
	i32.const	127
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	i32.const	33
	local.set	29
	local.get	28
	local.get	29
	i32.ge_s
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	local.get	3
	local.get	32
	i32.store	12
	br      	1                               # 1: down to label55
.LBB28_2:
	end_block                               # label56:
	local.get	3
	i32.load	8
	local.set	33
	i32.const	8232
	local.set	34
	local.get	33
	local.get	34
	i32.lt_u
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	block   	
	block   	
	local.get	37
	br_if   	0                               # 0: down to label58
# %bb.3:
	i32.const	0
	local.set	38
	local.get	38
	i64.load	__llvm_gcov_ctr.28+8
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	__llvm_gcov_ctr.28+8
	i32.const	0
	local.set	43
	local.get	43
	i64.load	.L__profc_iswprint+40
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	.L__profc_iswprint+40
	local.get	3
	i32.load	8
	local.set	48
	i32.const	8234
	local.set	49
	local.get	48
	local.get	49
	i32.sub 
	local.set	50
	i32.const	47062
	local.set	51
	local.get	50
	local.get	51
	i32.lt_u
	local.set	52
	i32.const	1
	local.set	53
	local.get	52
	local.get	53
	i32.and 
	local.set	54
	local.get	54
	br_if   	0                               # 0: down to label58
# %bb.4:
	i32.const	0
	local.set	55
	local.get	55
	i64.load	__llvm_gcov_ctr.28+16
	local.set	56
	i64.const	1
	local.set	57
	local.get	56
	local.get	57
	i64.add 
	local.set	58
	i32.const	0
	local.set	59
	local.get	59
	local.get	58
	i64.store	__llvm_gcov_ctr.28+16
	i32.const	0
	local.set	60
	local.get	60
	i64.load	.L__profc_iswprint+48
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc_iswprint+48
# %bb.5:
	i32.const	0
	local.set	65
	local.get	65
	i64.load	.L__profc_iswprint+24
	local.set	66
	i64.const	1
	local.set	67
	local.get	66
	local.get	67
	i64.add 
	local.set	68
	i32.const	0
	local.set	69
	local.get	69
	local.get	68
	i64.store	.L__profc_iswprint+24
	local.get	3
	i32.load	8
	local.set	70
	i32.const	57344
	local.set	71
	local.get	70
	local.get	71
	i32.sub 
	local.set	72
	i32.const	8185
	local.set	73
	local.get	72
	local.get	73
	i32.lt_u
	local.set	74
	i32.const	1
	local.set	75
	local.get	74
	local.get	75
	i32.and 
	local.set	76
	local.get	76
	br_if   	0                               # 0: down to label58
# %bb.6:
	i32.const	0
	local.set	77
	local.get	77
	i64.load	.L__profc_iswprint+32
	local.set	78
	i64.const	1
	local.set	79
	local.get	78
	local.get	79
	i64.add 
	local.set	80
	i32.const	0
	local.set	81
	local.get	81
	local.get	80
	i64.store	.L__profc_iswprint+32
	br      	1                               # 1: down to label57
.LBB28_7:
	end_block                               # label58:
	i32.const	0
	local.set	82
	local.get	82
	i64.load	__llvm_gcov_ctr.28+24
	local.set	83
	i64.const	1
	local.set	84
	local.get	83
	local.get	84
	i64.add 
	local.set	85
	i32.const	0
	local.set	86
	local.get	86
	local.get	85
	i64.store	__llvm_gcov_ctr.28+24
	i32.const	0
	local.set	87
	local.get	87
	i64.load	.L__profc_iswprint+16
	local.set	88
	i64.const	1
	local.set	89
	local.get	88
	local.get	89
	i64.add 
	local.set	90
	i32.const	0
	local.set	91
	local.get	91
	local.get	90
	i64.store	.L__profc_iswprint+16
	i32.const	1
	local.set	92
	local.get	3
	local.get	92
	i32.store	12
	br      	1                               # 1: down to label55
.LBB28_8:
	end_block                               # label57:
	local.get	3
	i32.load	8
	local.set	93
	i32.const	65532
	local.set	94
	local.get	93
	local.get	94
	i32.sub 
	local.set	95
	i32.const	1048579
	local.set	96
	local.get	95
	local.get	96
	i32.gt_u
	local.set	97
	i32.const	1
	local.set	98
	local.get	97
	local.get	98
	i32.and 
	local.set	99
	block   	
	block   	
	local.get	99
	br_if   	0                               # 0: down to label60
# %bb.9:
	i32.const	0
	local.set	100
	local.get	100
	i64.load	__llvm_gcov_ctr.28+32
	local.set	101
	i64.const	1
	local.set	102
	local.get	101
	local.get	102
	i64.add 
	local.set	103
	i32.const	0
	local.set	104
	local.get	104
	local.get	103
	i64.store	__llvm_gcov_ctr.28+32
	i32.const	0
	local.set	105
	local.get	105
	i64.load	.L__profc_iswprint+64
	local.set	106
	i64.const	1
	local.set	107
	local.get	106
	local.get	107
	i64.add 
	local.set	108
	i32.const	0
	local.set	109
	local.get	109
	local.get	108
	i64.store	.L__profc_iswprint+64
	local.get	3
	i32.load	8
	local.set	110
	i32.const	65534
	local.set	111
	local.get	110
	local.get	111
	i32.and 
	local.set	112
	i32.const	65534
	local.set	113
	local.get	112
	local.get	113
	i32.eq  
	local.set	114
	i32.const	1
	local.set	115
	local.get	114
	local.get	115
	i32.and 
	local.set	116
	local.get	116
	br_if   	0                               # 0: down to label60
# %bb.10:
	i32.const	0
	local.set	117
	local.get	117
	i64.load	.L__profc_iswprint+72
	local.set	118
	i64.const	1
	local.set	119
	local.get	118
	local.get	119
	i64.add 
	local.set	120
	i32.const	0
	local.set	121
	local.get	121
	local.get	120
	i64.store	.L__profc_iswprint+72
	br      	1                               # 1: down to label59
.LBB28_11:
	end_block                               # label60:
	i32.const	0
	local.set	122
	local.get	122
	i64.load	__llvm_gcov_ctr.28+40
	local.set	123
	i64.const	1
	local.set	124
	local.get	123
	local.get	124
	i64.add 
	local.set	125
	i32.const	0
	local.set	126
	local.get	126
	local.get	125
	i64.store	__llvm_gcov_ctr.28+40
	i32.const	0
	local.set	127
	local.get	127
	i64.load	.L__profc_iswprint+56
	local.set	128
	i64.const	1
	local.set	129
	local.get	128
	local.get	129
	i64.add 
	local.set	130
	i32.const	0
	local.set	131
	local.get	131
	local.get	130
	i64.store	.L__profc_iswprint+56
	i32.const	0
	local.set	132
	local.get	3
	local.get	132
	i32.store	12
	br      	1                               # 1: down to label55
.LBB28_12:
	end_block                               # label59:
	i32.const	0
	local.set	133
	local.get	133
	i64.load	__llvm_gcov_ctr.28+48
	local.set	134
	i64.const	1
	local.set	135
	local.get	134
	local.get	135
	i64.add 
	local.set	136
	i32.const	0
	local.set	137
	local.get	137
	local.get	136
	i64.store	__llvm_gcov_ctr.28+48
	i32.const	1
	local.set	138
	local.get	3
	local.get	138
	i32.store	12
.LBB28_13:
	end_block                               # label55:
	local.get	3
	i32.load	12
	local.set	139
	local.get	139
	return
	end_function
                                        # -- End function
	.section	.text.iswxdigit,"",@
	.hidden	iswxdigit                       # -- Begin function iswxdigit
	.globl	iswxdigit
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
	.functype	iswxdigit (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.29
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.29
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_iswxdigit
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_iswxdigit
	local.get	3
	i32.load	12
	local.set	14
	i32.const	48
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	i32.const	10
	local.set	17
	local.get	16
	local.get	17
	i32.lt_u
	local.set	18
	i32.const	1
	local.set	19
	i32.const	1
	local.set	20
	local.get	18
	local.get	20
	i32.and 
	local.set	21
	local.get	19
	local.set	22
	block   	
	local.get	21
	br_if   	0                               # 0: down to label61
# %bb.1:
	i32.const	0
	local.set	23
	local.get	23
	i64.load	__llvm_gcov_ctr.29+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	__llvm_gcov_ctr.29+8
	i32.const	0
	local.set	28
	local.get	28
	i64.load	.L__profc_iswxdigit+8
	local.set	29
	i64.const	1
	local.set	30
	local.get	29
	local.get	30
	i64.add 
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i64.store	.L__profc_iswxdigit+8
	local.get	3
	i32.load	12
	local.set	33
	i32.const	32
	local.set	34
	local.get	33
	local.get	34
	i32.or  
	local.set	35
	i32.const	97
	local.set	36
	local.get	35
	local.get	36
	i32.sub 
	local.set	37
	i32.const	6
	local.set	38
	local.get	37
	local.get	38
	i32.lt_u
	local.set	39
	i32.const	1
	local.set	40
	local.get	39
	local.get	40
	i32.and 
	local.set	41
	local.get	39
	local.set	22
	local.get	41
	br_if   	0                               # 0: down to label61
# %bb.2:
	i32.const	0
	local.set	42
	local.get	42
	i64.load	__llvm_gcov_ctr.29+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	__llvm_gcov_ctr.29+16
	i32.const	0
	local.set	47
	local.get	47
	i64.load	.L__profc_iswxdigit+16
	local.set	48
	i64.const	1
	local.set	49
	local.get	48
	local.get	49
	i64.add 
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i64.store	.L__profc_iswxdigit+16
	local.get	39
	local.set	22
.LBB29_3:
	end_block                               # label61:
	local.get	22
	local.set	52
	i32.const	1
	local.set	53
	local.get	52
	local.get	53
	i32.and 
	local.set	54
	local.get	54
	return
	end_function
                                        # -- End function
	.section	.text.toascii,"",@
	.hidden	toascii                         # -- Begin function toascii
	.globl	toascii
	.type	toascii,@function
toascii:                                # @toascii
	.functype	toascii (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.30
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.30
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_toascii
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_toascii
	local.get	3
	i32.load	12
	local.set	14
	i32.const	127
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	return
	end_function
                                        # -- End function
	.section	.text.fdim,"",@
	.hidden	fdim                            # -- Begin function fdim
	.globl	fdim
	.type	fdim,@function
fdim:                                   # @fdim
	.functype	fdim (f64, f64) -> (f64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64, f64, i32, i64, i64, i64, i32, i32, f64, f64, f64
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_fdim
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_fdim
	local.get	4
	f64.load	16
	local.set	10
	local.get	10
	i64.reinterpret_f64
	local.set	11
	i64.const	9223372036854775807
	local.set	12
	local.get	11
	local.get	12
	i64.and 
	local.set	13
	i64.const	9218868437227405312
	local.set	14
	local.get	13
	local.get	14
	i64.gt_s
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	block   	
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label63
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.31
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.31
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_fdim+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_fdim+8
	local.get	4
	f64.load	16
	local.set	28
	local.get	4
	local.get	28
	f64.store	24
	br      	1                               # 1: down to label62
.LBB31_2:
	end_block                               # label63:
	local.get	4
	f64.load	8
	local.set	29
	local.get	29
	i64.reinterpret_f64
	local.set	30
	i64.const	9223372036854775807
	local.set	31
	local.get	30
	local.get	31
	i64.and 
	local.set	32
	i64.const	9218868437227405312
	local.set	33
	local.get	32
	local.get	33
	i64.gt_s
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
	br_if   	0                               # 0: down to label64
# %bb.3:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.31+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.31+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_fdim+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_fdim+16
	local.get	4
	f64.load	8
	local.set	47
	local.get	4
	local.get	47
	f64.store	24
	br      	1                               # 1: down to label62
.LBB31_4:
	end_block                               # label64:
	local.get	4
	f64.load	16
	local.set	48
	local.get	4
	f64.load	8
	local.set	49
	local.get	48
	local.get	49
	f64.gt  
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
	br_if   	0                               # 0: down to label66
# %bb.5:
	i32.const	0
	local.set	53
	local.get	53
	i64.load	__llvm_gcov_ctr.31+16
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.31+16
	i32.const	0
	local.set	58
	local.get	58
	i64.load	.L__profc_fdim+24
	local.set	59
	i64.const	1
	local.set	60
	local.get	59
	local.get	60
	i64.add 
	local.set	61
	i32.const	0
	local.set	62
	local.get	62
	local.get	61
	i64.store	.L__profc_fdim+24
	local.get	4
	f64.load	16
	local.set	63
	local.get	4
	f64.load	8
	local.set	64
	local.get	63
	local.get	64
	f64.sub 
	local.set	65
	local.get	65
	local.set	66
	br      	1                               # 1: down to label65
.LBB31_6:
	end_block                               # label66:
	i32.const	0
	local.set	67
	local.get	67
	i64.load	__llvm_gcov_ctr.31+24
	local.set	68
	i64.const	1
	local.set	69
	local.get	68
	local.get	69
	i64.add 
	local.set	70
	i32.const	0
	local.set	71
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.31+24
	i32.const	0
	local.set	72
	local.get	72
	f64.convert_i32_s
	local.set	73
	local.get	73
	local.set	66
.LBB31_7:
	end_block                               # label65:
	local.get	66
	local.set	74
	local.get	4
	local.get	74
	f64.store	24
.LBB31_8:
	end_block                               # label62:
	local.get	4
	f64.load	24
	local.set	75
	local.get	75
	return
	end_function
                                        # -- End function
	.section	.text.fdimf,"",@
	.hidden	fdimf                           # -- Begin function fdimf
	.globl	fdimf
	.type	fdimf,@function
fdimf:                                  # @fdimf
	.functype	fdimf (f32, f32) -> (f32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, f32, i32, i64, i64, i64, i32, i32, f32, f32, f32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_fdimf
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_fdimf
	local.get	4
	f32.load	8
	local.set	10
	local.get	10
	i32.reinterpret_f32
	local.set	11
	i32.const	2147483647
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	i32.const	2139095040
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
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label68
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.32
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.32
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_fdimf+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_fdimf+8
	local.get	4
	f32.load	8
	local.set	28
	local.get	4
	local.get	28
	f32.store	12
	br      	1                               # 1: down to label67
.LBB32_2:
	end_block                               # label68:
	local.get	4
	f32.load	4
	local.set	29
	local.get	29
	i32.reinterpret_f32
	local.set	30
	i32.const	2147483647
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	i32.const	2139095040
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
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label69
# %bb.3:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.32+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.32+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_fdimf+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_fdimf+16
	local.get	4
	f32.load	4
	local.set	47
	local.get	4
	local.get	47
	f32.store	12
	br      	1                               # 1: down to label67
.LBB32_4:
	end_block                               # label69:
	local.get	4
	f32.load	8
	local.set	48
	local.get	4
	f32.load	4
	local.set	49
	local.get	48
	local.get	49
	f32.gt  
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
	br_if   	0                               # 0: down to label71
# %bb.5:
	i32.const	0
	local.set	53
	local.get	53
	i64.load	__llvm_gcov_ctr.32+16
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.32+16
	i32.const	0
	local.set	58
	local.get	58
	i64.load	.L__profc_fdimf+24
	local.set	59
	i64.const	1
	local.set	60
	local.get	59
	local.get	60
	i64.add 
	local.set	61
	i32.const	0
	local.set	62
	local.get	62
	local.get	61
	i64.store	.L__profc_fdimf+24
	local.get	4
	f32.load	8
	local.set	63
	local.get	4
	f32.load	4
	local.set	64
	local.get	63
	local.get	64
	f32.sub 
	local.set	65
	local.get	65
	local.set	66
	br      	1                               # 1: down to label70
.LBB32_6:
	end_block                               # label71:
	i32.const	0
	local.set	67
	local.get	67
	i64.load	__llvm_gcov_ctr.32+24
	local.set	68
	i64.const	1
	local.set	69
	local.get	68
	local.get	69
	i64.add 
	local.set	70
	i32.const	0
	local.set	71
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.32+24
	i32.const	0
	local.set	72
	local.get	72
	f32.convert_i32_s
	local.set	73
	local.get	73
	local.set	66
.LBB32_7:
	end_block                               # label70:
	local.get	66
	local.set	74
	local.get	4
	local.get	74
	f32.store	12
.LBB32_8:
	end_block                               # label67:
	local.get	4
	f32.load	12
	local.set	75
	local.get	75
	return
	end_function
                                        # -- End function
	.section	.text.fmax,"",@
	.hidden	fmax                            # -- Begin function fmax
	.globl	fmax
	.type	fmax,@function
fmax:                                   # @fmax
	.functype	fmax (f64, f64) -> (f64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i64, i64, i32, i32, i32, f64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, f64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i64, i64, i64, i32, f64, f64, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i64, i64, i64, i32, f64, f64, f64
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_fmax
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_fmax
	local.get	4
	f64.load	16
	local.set	10
	local.get	10
	i64.reinterpret_f64
	local.set	11
	i64.const	9223372036854775807
	local.set	12
	local.get	11
	local.get	12
	i64.and 
	local.set	13
	i64.const	9218868437227405312
	local.set	14
	local.get	13
	local.get	14
	i64.gt_s
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	block   	
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label73
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.33
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.33
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_fmax+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_fmax+8
	local.get	4
	f64.load	8
	local.set	28
	local.get	4
	local.get	28
	f64.store	24
	br      	1                               # 1: down to label72
.LBB33_2:
	end_block                               # label73:
	local.get	4
	f64.load	8
	local.set	29
	local.get	29
	i64.reinterpret_f64
	local.set	30
	i64.const	9223372036854775807
	local.set	31
	local.get	30
	local.get	31
	i64.and 
	local.set	32
	i64.const	9218868437227405312
	local.set	33
	local.get	32
	local.get	33
	i64.gt_s
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
	br_if   	0                               # 0: down to label74
# %bb.3:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.33+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.33+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_fmax+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_fmax+16
	local.get	4
	f64.load	16
	local.set	47
	local.get	4
	local.get	47
	f64.store	24
	br      	1                               # 1: down to label72
.LBB33_4:
	end_block                               # label74:
	local.get	4
	f64.load	16
	local.set	48
	local.get	48
	i64.reinterpret_f64
	local.set	49
	i64.const	0
	local.set	50
	local.get	49
	local.get	50
	i64.lt_s
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	local.get	4
	f64.load	8
	local.set	54
	local.get	54
	i64.reinterpret_f64
	local.set	55
	i64.const	0
	local.set	56
	local.get	55
	local.get	56
	i64.lt_s
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	local.get	53
	local.get	59
	i32.ne  
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
	br_if   	0                               # 0: down to label75
# %bb.5:
	i32.const	0
	local.set	63
	local.get	63
	i64.load	.L__profc_fmax+24
	local.set	64
	i64.const	1
	local.set	65
	local.get	64
	local.get	65
	i64.add 
	local.set	66
	i32.const	0
	local.set	67
	local.get	67
	local.get	66
	i64.store	.L__profc_fmax+24
	local.get	4
	f64.load	16
	local.set	68
	local.get	68
	i64.reinterpret_f64
	local.set	69
	i64.const	0
	local.set	70
	local.get	69
	local.get	70
	i64.lt_s
	local.set	71
	i32.const	1
	local.set	72
	local.get	71
	local.get	72
	i32.and 
	local.set	73
	block   	
	block   	
	local.get	73
	i32.eqz
	br_if   	0                               # 0: down to label77
# %bb.6:
	i32.const	0
	local.set	74
	local.get	74
	i64.load	__llvm_gcov_ctr.33+16
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	__llvm_gcov_ctr.33+16
	i32.const	0
	local.set	79
	local.get	79
	i64.load	.L__profc_fmax+32
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	.L__profc_fmax+32
	local.get	4
	f64.load	8
	local.set	84
	local.get	84
	local.set	85
	br      	1                               # 1: down to label76
.LBB33_7:
	end_block                               # label77:
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.33+24
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.33+24
	local.get	4
	f64.load	16
	local.set	91
	local.get	91
	local.set	85
.LBB33_8:
	end_block                               # label76:
	local.get	85
	local.set	92
	local.get	4
	local.get	92
	f64.store	24
	br      	1                               # 1: down to label72
.LBB33_9:
	end_block                               # label75:
	local.get	4
	f64.load	16
	local.set	93
	local.get	4
	f64.load	8
	local.set	94
	local.get	93
	local.get	94
	f64.lt  
	local.set	95
	i32.const	1
	local.set	96
	local.get	95
	local.get	96
	i32.and 
	local.set	97
	block   	
	block   	
	local.get	97
	i32.eqz
	br_if   	0                               # 0: down to label79
# %bb.10:
	i32.const	0
	local.set	98
	local.get	98
	i64.load	__llvm_gcov_ctr.33+32
	local.set	99
	i64.const	1
	local.set	100
	local.get	99
	local.get	100
	i64.add 
	local.set	101
	i32.const	0
	local.set	102
	local.get	102
	local.get	101
	i64.store	__llvm_gcov_ctr.33+32
	i32.const	0
	local.set	103
	local.get	103
	i64.load	.L__profc_fmax+40
	local.set	104
	i64.const	1
	local.set	105
	local.get	104
	local.get	105
	i64.add 
	local.set	106
	i32.const	0
	local.set	107
	local.get	107
	local.get	106
	i64.store	.L__profc_fmax+40
	local.get	4
	f64.load	8
	local.set	108
	local.get	108
	local.set	109
	br      	1                               # 1: down to label78
.LBB33_11:
	end_block                               # label79:
	i32.const	0
	local.set	110
	local.get	110
	i64.load	__llvm_gcov_ctr.33+40
	local.set	111
	i64.const	1
	local.set	112
	local.get	111
	local.get	112
	i64.add 
	local.set	113
	i32.const	0
	local.set	114
	local.get	114
	local.get	113
	i64.store	__llvm_gcov_ctr.33+40
	local.get	4
	f64.load	16
	local.set	115
	local.get	115
	local.set	109
.LBB33_12:
	end_block                               # label78:
	local.get	109
	local.set	116
	local.get	4
	local.get	116
	f64.store	24
.LBB33_13:
	end_block                               # label72:
	local.get	4
	f64.load	24
	local.set	117
	local.get	117
	return
	end_function
                                        # -- End function
	.section	.text.fmaxf,"",@
	.hidden	fmaxf                           # -- Begin function fmaxf
	.globl	fmaxf
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
	.functype	fmaxf (f32, f32) -> (f32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, f32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i64, i64, i64, i32, f32, f32, f32, f32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i64, i64, i64, i32, f32, f32, f32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_fmaxf
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_fmaxf
	local.get	4
	f32.load	8
	local.set	10
	local.get	10
	i32.reinterpret_f32
	local.set	11
	i32.const	2147483647
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	i32.const	2139095040
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
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label81
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.34
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.34
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_fmaxf+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_fmaxf+8
	local.get	4
	f32.load	4
	local.set	28
	local.get	4
	local.get	28
	f32.store	12
	br      	1                               # 1: down to label80
.LBB34_2:
	end_block                               # label81:
	local.get	4
	f32.load	4
	local.set	29
	local.get	29
	i32.reinterpret_f32
	local.set	30
	i32.const	2147483647
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	i32.const	2139095040
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
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label82
# %bb.3:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.34+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.34+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_fmaxf+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_fmaxf+16
	local.get	4
	f32.load	8
	local.set	47
	local.get	4
	local.get	47
	f32.store	12
	br      	1                               # 1: down to label80
.LBB34_4:
	end_block                               # label82:
	local.get	4
	f32.load	8
	local.set	48
	local.get	48
	i32.reinterpret_f32
	local.set	49
	i32.const	0
	local.set	50
	local.get	49
	local.get	50
	i32.lt_s
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	local.get	4
	f32.load	4
	local.set	54
	local.get	54
	i32.reinterpret_f32
	local.set	55
	i32.const	0
	local.set	56
	local.get	55
	local.get	56
	i32.lt_s
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	local.get	53
	local.get	59
	i32.ne  
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
	br_if   	0                               # 0: down to label83
# %bb.5:
	i32.const	0
	local.set	63
	local.get	63
	i64.load	.L__profc_fmaxf+24
	local.set	64
	i64.const	1
	local.set	65
	local.get	64
	local.get	65
	i64.add 
	local.set	66
	i32.const	0
	local.set	67
	local.get	67
	local.get	66
	i64.store	.L__profc_fmaxf+24
	local.get	4
	f32.load	8
	local.set	68
	local.get	68
	i32.reinterpret_f32
	local.set	69
	i32.const	0
	local.set	70
	local.get	69
	local.get	70
	i32.lt_s
	local.set	71
	i32.const	1
	local.set	72
	local.get	71
	local.get	72
	i32.and 
	local.set	73
	block   	
	block   	
	local.get	73
	i32.eqz
	br_if   	0                               # 0: down to label85
# %bb.6:
	i32.const	0
	local.set	74
	local.get	74
	i64.load	__llvm_gcov_ctr.34+16
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	__llvm_gcov_ctr.34+16
	i32.const	0
	local.set	79
	local.get	79
	i64.load	.L__profc_fmaxf+32
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	.L__profc_fmaxf+32
	local.get	4
	f32.load	4
	local.set	84
	local.get	84
	local.set	85
	br      	1                               # 1: down to label84
.LBB34_7:
	end_block                               # label85:
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.34+24
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.34+24
	local.get	4
	f32.load	8
	local.set	91
	local.get	91
	local.set	85
.LBB34_8:
	end_block                               # label84:
	local.get	85
	local.set	92
	local.get	4
	local.get	92
	f32.store	12
	br      	1                               # 1: down to label80
.LBB34_9:
	end_block                               # label83:
	local.get	4
	f32.load	8
	local.set	93
	local.get	4
	f32.load	4
	local.set	94
	local.get	93
	local.get	94
	f32.lt  
	local.set	95
	i32.const	1
	local.set	96
	local.get	95
	local.get	96
	i32.and 
	local.set	97
	block   	
	block   	
	local.get	97
	i32.eqz
	br_if   	0                               # 0: down to label87
# %bb.10:
	i32.const	0
	local.set	98
	local.get	98
	i64.load	__llvm_gcov_ctr.34+32
	local.set	99
	i64.const	1
	local.set	100
	local.get	99
	local.get	100
	i64.add 
	local.set	101
	i32.const	0
	local.set	102
	local.get	102
	local.get	101
	i64.store	__llvm_gcov_ctr.34+32
	i32.const	0
	local.set	103
	local.get	103
	i64.load	.L__profc_fmaxf+40
	local.set	104
	i64.const	1
	local.set	105
	local.get	104
	local.get	105
	i64.add 
	local.set	106
	i32.const	0
	local.set	107
	local.get	107
	local.get	106
	i64.store	.L__profc_fmaxf+40
	local.get	4
	f32.load	4
	local.set	108
	local.get	108
	local.set	109
	br      	1                               # 1: down to label86
.LBB34_11:
	end_block                               # label87:
	i32.const	0
	local.set	110
	local.get	110
	i64.load	__llvm_gcov_ctr.34+40
	local.set	111
	i64.const	1
	local.set	112
	local.get	111
	local.get	112
	i64.add 
	local.set	113
	i32.const	0
	local.set	114
	local.get	114
	local.get	113
	i64.store	__llvm_gcov_ctr.34+40
	local.get	4
	f32.load	8
	local.set	115
	local.get	115
	local.set	109
.LBB34_12:
	end_block                               # label86:
	local.get	109
	local.set	116
	local.get	4
	local.get	116
	f32.store	12
.LBB34_13:
	end_block                               # label80:
	local.get	4
	f32.load	12
	local.set	117
	local.get	117
	return
	end_function
                                        # -- End function
	.section	.text.fmaxl,"",@
	.hidden	fmaxl                           # -- Begin function fmaxl
	.globl	fmaxl
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
	.functype	fmaxl (i32, i64, i64, i64, i64) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32
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
	i32.const	0
	local.set	8
	local.get	8
	i64.load	.L__profc_fmaxl
	local.set	9
	i64.const	1
	local.set	10
	local.get	9
	local.get	10
	i64.add 
	local.set	11
	local.get	8
	local.get	11
	i64.store	.L__profc_fmaxl
	local.get	7
	i64.load	24
	local.set	12
	local.get	7
	i64.load	16
	local.set	13
	i64.const	0
	local.set	14
	local.get	13
	local.get	14
	i64.ne  
	local.set	15
	i64.const	9223372036854775807
	local.set	16
	local.get	12
	local.get	16
	i64.and 
	local.set	17
	i64.const	9223090561878065152
	local.set	18
	local.get	17
	local.get	18
	i64.eq  
	local.set	19
	local.get	17
	local.get	18
	i64.gt_s
	local.set	20
	local.get	15
	local.get	20
	local.get	19
	i32.select
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	block   	
	block   	
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label89
# %bb.1:
	i32.const	0
	local.set	24
	local.get	24
	i64.load	__llvm_gcov_ctr.35
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	local.get	24
	local.get	27
	i64.store	__llvm_gcov_ctr.35
	local.get	24
	i64.load	.L__profc_fmaxl+8
	local.set	28
	local.get	28
	local.get	26
	i64.add 
	local.set	29
	local.get	24
	local.get	29
	i64.store	.L__profc_fmaxl+8
	local.get	7
	i64.load	0
	local.set	30
	local.get	7
	i64.load	8
	local.set	31
	local.get	7
	local.get	31
	i64.store	40
	local.get	7
	local.get	30
	i64.store	32
	br      	1                               # 1: down to label88
.LBB35_2:
	end_block                               # label89:
	local.get	7
	i64.load	8
	local.set	32
	local.get	7
	i64.load	0
	local.set	33
	i64.const	0
	local.set	34
	local.get	33
	local.get	34
	i64.ne  
	local.set	35
	i64.const	9223372036854775807
	local.set	36
	local.get	32
	local.get	36
	i64.and 
	local.set	37
	i64.const	9223090561878065152
	local.set	38
	local.get	37
	local.get	38
	i64.eq  
	local.set	39
	local.get	37
	local.get	38
	i64.gt_s
	local.set	40
	local.get	35
	local.get	40
	local.get	39
	i32.select
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label90
# %bb.3:
	i32.const	0
	local.set	44
	local.get	44
	i64.load	__llvm_gcov_ctr.35+8
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	local.get	44
	local.get	47
	i64.store	__llvm_gcov_ctr.35+8
	local.get	44
	i64.load	.L__profc_fmaxl+16
	local.set	48
	local.get	48
	local.get	46
	i64.add 
	local.set	49
	local.get	44
	local.get	49
	i64.store	.L__profc_fmaxl+16
	local.get	7
	i64.load	16
	local.set	50
	local.get	7
	i64.load	24
	local.set	51
	local.get	7
	local.get	51
	i64.store	40
	local.get	7
	local.get	50
	i64.store	32
	br      	1                               # 1: down to label88
.LBB35_4:
	end_block                               # label90:
	local.get	7
	i64.load	24
	local.set	52
	i64.const	63
	local.set	53
	local.get	52
	local.get	53
	i64.shr_u
	local.set	54
	local.get	54
	i32.wrap_i64
	local.set	55
	local.get	7
	i64.load	8
	local.set	56
	local.get	56
	local.get	53
	i64.shr_u
	local.set	57
	local.get	57
	i32.wrap_i64
	local.set	58
	i32.const	1
	local.set	59
	local.get	58
	local.get	59
	i32.and 
	local.set	60
	local.get	55
	local.get	60
	i32.ne  
	local.set	61
	i32.const	1
	local.set	62
	local.get	61
	local.get	62
	i32.and 
	local.set	63
	block   	
	local.get	63
	i32.eqz
	br_if   	0                               # 0: down to label91
# %bb.5:
	i32.const	0
	local.set	64
	local.get	64
	i64.load	.L__profc_fmaxl+24
	local.set	65
	i64.const	1
	local.set	66
	local.get	65
	local.get	66
	i64.add 
	local.set	67
	local.get	64
	local.get	67
	i64.store	.L__profc_fmaxl+24
	local.get	7
	i64.load	24
	local.set	68
	i64.const	63
	local.set	69
	local.get	68
	local.get	69
	i64.shr_u
	local.set	70
	local.get	70
	i32.wrap_i64
	local.set	71
	i32.const	1
	local.set	72
	local.get	71
	local.get	72
	i32.and 
	local.set	73
	block   	
	block   	
	local.get	73
	i32.eqz
	br_if   	0                               # 0: down to label93
# %bb.6:
	i32.const	0
	local.set	74
	local.get	74
	i64.load	__llvm_gcov_ctr.35+16
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	local.get	74
	local.get	77
	i64.store	__llvm_gcov_ctr.35+16
	local.get	74
	i64.load	.L__profc_fmaxl+32
	local.set	78
	local.get	78
	local.get	76
	i64.add 
	local.set	79
	local.get	74
	local.get	79
	i64.store	.L__profc_fmaxl+32
	local.get	7
	i64.load	8
	local.set	80
	local.get	7
	i64.load	0
	local.set	81
	local.get	81
	local.set	82
	local.get	80
	local.set	83
	br      	1                               # 1: down to label92
.LBB35_7:
	end_block                               # label93:
	i32.const	0
	local.set	84
	local.get	84
	i64.load	__llvm_gcov_ctr.35+24
	local.set	85
	i64.const	1
	local.set	86
	local.get	85
	local.get	86
	i64.add 
	local.set	87
	local.get	84
	local.get	87
	i64.store	__llvm_gcov_ctr.35+24
	local.get	7
	i64.load	24
	local.set	88
	local.get	7
	i64.load	16
	local.set	89
	local.get	89
	local.set	82
	local.get	88
	local.set	83
.LBB35_8:
	end_block                               # label92:
	local.get	83
	local.set	90
	local.get	82
	local.set	91
	local.get	7
	local.get	91
	i64.store	32
	local.get	7
	local.get	90
	i64.store	40
	br      	1                               # 1: down to label88
.LBB35_9:
	end_block                               # label91:
	local.get	7
	i64.load	24
	local.set	92
	local.get	7
	i64.load	16
	local.set	93
	local.get	7
	i64.load	8
	local.set	94
	local.get	7
	i64.load	0
	local.set	95
	local.get	93
	local.get	92
	local.get	95
	local.get	94
	call	__lttf2
	local.set	96
	i32.const	0
	local.set	97
	local.get	96
	local.get	97
	i32.lt_s
	local.set	98
	i32.const	1
	local.set	99
	local.get	98
	local.get	99
	i32.and 
	local.set	100
	block   	
	block   	
	local.get	100
	i32.eqz
	br_if   	0                               # 0: down to label95
# %bb.10:
	i32.const	0
	local.set	101
	local.get	101
	i64.load	__llvm_gcov_ctr.35+32
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	local.get	101
	local.get	104
	i64.store	__llvm_gcov_ctr.35+32
	local.get	101
	i64.load	.L__profc_fmaxl+40
	local.set	105
	local.get	105
	local.get	103
	i64.add 
	local.set	106
	local.get	101
	local.get	106
	i64.store	.L__profc_fmaxl+40
	local.get	7
	i64.load	8
	local.set	107
	local.get	7
	i64.load	0
	local.set	108
	local.get	108
	local.set	109
	local.get	107
	local.set	110
	br      	1                               # 1: down to label94
.LBB35_11:
	end_block                               # label95:
	i32.const	0
	local.set	111
	local.get	111
	i64.load	__llvm_gcov_ctr.35+40
	local.set	112
	i64.const	1
	local.set	113
	local.get	112
	local.get	113
	i64.add 
	local.set	114
	local.get	111
	local.get	114
	i64.store	__llvm_gcov_ctr.35+40
	local.get	7
	i64.load	24
	local.set	115
	local.get	7
	i64.load	16
	local.set	116
	local.get	116
	local.set	109
	local.get	115
	local.set	110
.LBB35_12:
	end_block                               # label94:
	local.get	110
	local.set	117
	local.get	109
	local.set	118
	local.get	7
	local.get	118
	i64.store	32
	local.get	7
	local.get	117
	i64.store	40
.LBB35_13:
	end_block                               # label88:
	local.get	7
	i64.load	32
	local.set	119
	local.get	7
	i64.load	40
	local.set	120
	local.get	0
	local.get	120
	i64.store	8
	local.get	0
	local.get	119
	i64.store	0
	i32.const	48
	local.set	121
	local.get	7
	local.get	121
	i32.add 
	local.set	122
	local.get	122
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i64, i64, i32, i32, i32, f64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, f64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i64, i64, i64, i32, f64, f64, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i64, i64, i64, i32, f64, f64, f64
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_fmin
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_fmin
	local.get	4
	f64.load	16
	local.set	10
	local.get	10
	i64.reinterpret_f64
	local.set	11
	i64.const	9223372036854775807
	local.set	12
	local.get	11
	local.get	12
	i64.and 
	local.set	13
	i64.const	9218868437227405312
	local.set	14
	local.get	13
	local.get	14
	i64.gt_s
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	block   	
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label97
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.36
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.36
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_fmin+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_fmin+8
	local.get	4
	f64.load	8
	local.set	28
	local.get	4
	local.get	28
	f64.store	24
	br      	1                               # 1: down to label96
.LBB36_2:
	end_block                               # label97:
	local.get	4
	f64.load	8
	local.set	29
	local.get	29
	i64.reinterpret_f64
	local.set	30
	i64.const	9223372036854775807
	local.set	31
	local.get	30
	local.get	31
	i64.and 
	local.set	32
	i64.const	9218868437227405312
	local.set	33
	local.get	32
	local.get	33
	i64.gt_s
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
	br_if   	0                               # 0: down to label98
# %bb.3:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.36+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.36+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_fmin+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_fmin+16
	local.get	4
	f64.load	16
	local.set	47
	local.get	4
	local.get	47
	f64.store	24
	br      	1                               # 1: down to label96
.LBB36_4:
	end_block                               # label98:
	local.get	4
	f64.load	16
	local.set	48
	local.get	48
	i64.reinterpret_f64
	local.set	49
	i64.const	0
	local.set	50
	local.get	49
	local.get	50
	i64.lt_s
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	local.get	4
	f64.load	8
	local.set	54
	local.get	54
	i64.reinterpret_f64
	local.set	55
	i64.const	0
	local.set	56
	local.get	55
	local.get	56
	i64.lt_s
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	local.get	53
	local.get	59
	i32.ne  
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
	br_if   	0                               # 0: down to label99
# %bb.5:
	i32.const	0
	local.set	63
	local.get	63
	i64.load	.L__profc_fmin+24
	local.set	64
	i64.const	1
	local.set	65
	local.get	64
	local.get	65
	i64.add 
	local.set	66
	i32.const	0
	local.set	67
	local.get	67
	local.get	66
	i64.store	.L__profc_fmin+24
	local.get	4
	f64.load	16
	local.set	68
	local.get	68
	i64.reinterpret_f64
	local.set	69
	i64.const	0
	local.set	70
	local.get	69
	local.get	70
	i64.lt_s
	local.set	71
	i32.const	1
	local.set	72
	local.get	71
	local.get	72
	i32.and 
	local.set	73
	block   	
	block   	
	local.get	73
	i32.eqz
	br_if   	0                               # 0: down to label101
# %bb.6:
	i32.const	0
	local.set	74
	local.get	74
	i64.load	__llvm_gcov_ctr.36+16
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	__llvm_gcov_ctr.36+16
	i32.const	0
	local.set	79
	local.get	79
	i64.load	.L__profc_fmin+32
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	.L__profc_fmin+32
	local.get	4
	f64.load	16
	local.set	84
	local.get	84
	local.set	85
	br      	1                               # 1: down to label100
.LBB36_7:
	end_block                               # label101:
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.36+24
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.36+24
	local.get	4
	f64.load	8
	local.set	91
	local.get	91
	local.set	85
.LBB36_8:
	end_block                               # label100:
	local.get	85
	local.set	92
	local.get	4
	local.get	92
	f64.store	24
	br      	1                               # 1: down to label96
.LBB36_9:
	end_block                               # label99:
	local.get	4
	f64.load	16
	local.set	93
	local.get	4
	f64.load	8
	local.set	94
	local.get	93
	local.get	94
	f64.lt  
	local.set	95
	i32.const	1
	local.set	96
	local.get	95
	local.get	96
	i32.and 
	local.set	97
	block   	
	block   	
	local.get	97
	i32.eqz
	br_if   	0                               # 0: down to label103
# %bb.10:
	i32.const	0
	local.set	98
	local.get	98
	i64.load	__llvm_gcov_ctr.36+32
	local.set	99
	i64.const	1
	local.set	100
	local.get	99
	local.get	100
	i64.add 
	local.set	101
	i32.const	0
	local.set	102
	local.get	102
	local.get	101
	i64.store	__llvm_gcov_ctr.36+32
	i32.const	0
	local.set	103
	local.get	103
	i64.load	.L__profc_fmin+40
	local.set	104
	i64.const	1
	local.set	105
	local.get	104
	local.get	105
	i64.add 
	local.set	106
	i32.const	0
	local.set	107
	local.get	107
	local.get	106
	i64.store	.L__profc_fmin+40
	local.get	4
	f64.load	16
	local.set	108
	local.get	108
	local.set	109
	br      	1                               # 1: down to label102
.LBB36_11:
	end_block                               # label103:
	i32.const	0
	local.set	110
	local.get	110
	i64.load	__llvm_gcov_ctr.36+40
	local.set	111
	i64.const	1
	local.set	112
	local.get	111
	local.get	112
	i64.add 
	local.set	113
	i32.const	0
	local.set	114
	local.get	114
	local.get	113
	i64.store	__llvm_gcov_ctr.36+40
	local.get	4
	f64.load	8
	local.set	115
	local.get	115
	local.set	109
.LBB36_12:
	end_block                               # label102:
	local.get	109
	local.set	116
	local.get	4
	local.get	116
	f64.store	24
.LBB36_13:
	end_block                               # label96:
	local.get	4
	f64.load	24
	local.set	117
	local.get	117
	return
	end_function
                                        # -- End function
	.section	.text.fminf,"",@
	.hidden	fminf                           # -- Begin function fminf
	.globl	fminf
	.type	fminf,@function
fminf:                                  # @fminf
	.functype	fminf (f32, f32) -> (f32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, f32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i64, i64, i64, i32, f32, f32, f32, f32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i64, i64, i64, i32, f32, f32, f32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_fminf
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_fminf
	local.get	4
	f32.load	8
	local.set	10
	local.get	10
	i32.reinterpret_f32
	local.set	11
	i32.const	2147483647
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	i32.const	2139095040
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
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label105
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.37
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.37
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_fminf+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_fminf+8
	local.get	4
	f32.load	4
	local.set	28
	local.get	4
	local.get	28
	f32.store	12
	br      	1                               # 1: down to label104
.LBB37_2:
	end_block                               # label105:
	local.get	4
	f32.load	4
	local.set	29
	local.get	29
	i32.reinterpret_f32
	local.set	30
	i32.const	2147483647
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	i32.const	2139095040
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
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label106
# %bb.3:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.37+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.37+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_fminf+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_fminf+16
	local.get	4
	f32.load	8
	local.set	47
	local.get	4
	local.get	47
	f32.store	12
	br      	1                               # 1: down to label104
.LBB37_4:
	end_block                               # label106:
	local.get	4
	f32.load	8
	local.set	48
	local.get	48
	i32.reinterpret_f32
	local.set	49
	i32.const	0
	local.set	50
	local.get	49
	local.get	50
	i32.lt_s
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	local.get	4
	f32.load	4
	local.set	54
	local.get	54
	i32.reinterpret_f32
	local.set	55
	i32.const	0
	local.set	56
	local.get	55
	local.get	56
	i32.lt_s
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	local.get	53
	local.get	59
	i32.ne  
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
	br_if   	0                               # 0: down to label107
# %bb.5:
	i32.const	0
	local.set	63
	local.get	63
	i64.load	.L__profc_fminf+24
	local.set	64
	i64.const	1
	local.set	65
	local.get	64
	local.get	65
	i64.add 
	local.set	66
	i32.const	0
	local.set	67
	local.get	67
	local.get	66
	i64.store	.L__profc_fminf+24
	local.get	4
	f32.load	8
	local.set	68
	local.get	68
	i32.reinterpret_f32
	local.set	69
	i32.const	0
	local.set	70
	local.get	69
	local.get	70
	i32.lt_s
	local.set	71
	i32.const	1
	local.set	72
	local.get	71
	local.get	72
	i32.and 
	local.set	73
	block   	
	block   	
	local.get	73
	i32.eqz
	br_if   	0                               # 0: down to label109
# %bb.6:
	i32.const	0
	local.set	74
	local.get	74
	i64.load	__llvm_gcov_ctr.37+16
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	__llvm_gcov_ctr.37+16
	i32.const	0
	local.set	79
	local.get	79
	i64.load	.L__profc_fminf+32
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	.L__profc_fminf+32
	local.get	4
	f32.load	8
	local.set	84
	local.get	84
	local.set	85
	br      	1                               # 1: down to label108
.LBB37_7:
	end_block                               # label109:
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.37+24
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.37+24
	local.get	4
	f32.load	4
	local.set	91
	local.get	91
	local.set	85
.LBB37_8:
	end_block                               # label108:
	local.get	85
	local.set	92
	local.get	4
	local.get	92
	f32.store	12
	br      	1                               # 1: down to label104
.LBB37_9:
	end_block                               # label107:
	local.get	4
	f32.load	8
	local.set	93
	local.get	4
	f32.load	4
	local.set	94
	local.get	93
	local.get	94
	f32.lt  
	local.set	95
	i32.const	1
	local.set	96
	local.get	95
	local.get	96
	i32.and 
	local.set	97
	block   	
	block   	
	local.get	97
	i32.eqz
	br_if   	0                               # 0: down to label111
# %bb.10:
	i32.const	0
	local.set	98
	local.get	98
	i64.load	__llvm_gcov_ctr.37+32
	local.set	99
	i64.const	1
	local.set	100
	local.get	99
	local.get	100
	i64.add 
	local.set	101
	i32.const	0
	local.set	102
	local.get	102
	local.get	101
	i64.store	__llvm_gcov_ctr.37+32
	i32.const	0
	local.set	103
	local.get	103
	i64.load	.L__profc_fminf+40
	local.set	104
	i64.const	1
	local.set	105
	local.get	104
	local.get	105
	i64.add 
	local.set	106
	i32.const	0
	local.set	107
	local.get	107
	local.get	106
	i64.store	.L__profc_fminf+40
	local.get	4
	f32.load	8
	local.set	108
	local.get	108
	local.set	109
	br      	1                               # 1: down to label110
.LBB37_11:
	end_block                               # label111:
	i32.const	0
	local.set	110
	local.get	110
	i64.load	__llvm_gcov_ctr.37+40
	local.set	111
	i64.const	1
	local.set	112
	local.get	111
	local.get	112
	i64.add 
	local.set	113
	i32.const	0
	local.set	114
	local.get	114
	local.get	113
	i64.store	__llvm_gcov_ctr.37+40
	local.get	4
	f32.load	4
	local.set	115
	local.get	115
	local.set	109
.LBB37_12:
	end_block                               # label110:
	local.get	109
	local.set	116
	local.get	4
	local.get	116
	f32.store	12
.LBB37_13:
	end_block                               # label104:
	local.get	4
	f32.load	12
	local.set	117
	local.get	117
	return
	end_function
                                        # -- End function
	.section	.text.fminl,"",@
	.hidden	fminl                           # -- Begin function fminl
	.globl	fminl
	.type	fminl,@function
fminl:                                  # @fminl
	.functype	fminl (i32, i64, i64, i64, i64) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32
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
	i32.const	0
	local.set	8
	local.get	8
	i64.load	.L__profc_fminl
	local.set	9
	i64.const	1
	local.set	10
	local.get	9
	local.get	10
	i64.add 
	local.set	11
	local.get	8
	local.get	11
	i64.store	.L__profc_fminl
	local.get	7
	i64.load	24
	local.set	12
	local.get	7
	i64.load	16
	local.set	13
	i64.const	0
	local.set	14
	local.get	13
	local.get	14
	i64.ne  
	local.set	15
	i64.const	9223372036854775807
	local.set	16
	local.get	12
	local.get	16
	i64.and 
	local.set	17
	i64.const	9223090561878065152
	local.set	18
	local.get	17
	local.get	18
	i64.eq  
	local.set	19
	local.get	17
	local.get	18
	i64.gt_s
	local.set	20
	local.get	15
	local.get	20
	local.get	19
	i32.select
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	block   	
	block   	
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label113
# %bb.1:
	i32.const	0
	local.set	24
	local.get	24
	i64.load	__llvm_gcov_ctr.38
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	local.get	24
	local.get	27
	i64.store	__llvm_gcov_ctr.38
	local.get	24
	i64.load	.L__profc_fminl+8
	local.set	28
	local.get	28
	local.get	26
	i64.add 
	local.set	29
	local.get	24
	local.get	29
	i64.store	.L__profc_fminl+8
	local.get	7
	i64.load	0
	local.set	30
	local.get	7
	i64.load	8
	local.set	31
	local.get	7
	local.get	31
	i64.store	40
	local.get	7
	local.get	30
	i64.store	32
	br      	1                               # 1: down to label112
.LBB38_2:
	end_block                               # label113:
	local.get	7
	i64.load	8
	local.set	32
	local.get	7
	i64.load	0
	local.set	33
	i64.const	0
	local.set	34
	local.get	33
	local.get	34
	i64.ne  
	local.set	35
	i64.const	9223372036854775807
	local.set	36
	local.get	32
	local.get	36
	i64.and 
	local.set	37
	i64.const	9223090561878065152
	local.set	38
	local.get	37
	local.get	38
	i64.eq  
	local.set	39
	local.get	37
	local.get	38
	i64.gt_s
	local.set	40
	local.get	35
	local.get	40
	local.get	39
	i32.select
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label114
# %bb.3:
	i32.const	0
	local.set	44
	local.get	44
	i64.load	__llvm_gcov_ctr.38+8
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	local.get	44
	local.get	47
	i64.store	__llvm_gcov_ctr.38+8
	local.get	44
	i64.load	.L__profc_fminl+16
	local.set	48
	local.get	48
	local.get	46
	i64.add 
	local.set	49
	local.get	44
	local.get	49
	i64.store	.L__profc_fminl+16
	local.get	7
	i64.load	16
	local.set	50
	local.get	7
	i64.load	24
	local.set	51
	local.get	7
	local.get	51
	i64.store	40
	local.get	7
	local.get	50
	i64.store	32
	br      	1                               # 1: down to label112
.LBB38_4:
	end_block                               # label114:
	local.get	7
	i64.load	24
	local.set	52
	i64.const	63
	local.set	53
	local.get	52
	local.get	53
	i64.shr_u
	local.set	54
	local.get	54
	i32.wrap_i64
	local.set	55
	local.get	7
	i64.load	8
	local.set	56
	local.get	56
	local.get	53
	i64.shr_u
	local.set	57
	local.get	57
	i32.wrap_i64
	local.set	58
	i32.const	1
	local.set	59
	local.get	58
	local.get	59
	i32.and 
	local.set	60
	local.get	55
	local.get	60
	i32.ne  
	local.set	61
	i32.const	1
	local.set	62
	local.get	61
	local.get	62
	i32.and 
	local.set	63
	block   	
	local.get	63
	i32.eqz
	br_if   	0                               # 0: down to label115
# %bb.5:
	i32.const	0
	local.set	64
	local.get	64
	i64.load	.L__profc_fminl+24
	local.set	65
	i64.const	1
	local.set	66
	local.get	65
	local.get	66
	i64.add 
	local.set	67
	local.get	64
	local.get	67
	i64.store	.L__profc_fminl+24
	local.get	7
	i64.load	24
	local.set	68
	i64.const	63
	local.set	69
	local.get	68
	local.get	69
	i64.shr_u
	local.set	70
	local.get	70
	i32.wrap_i64
	local.set	71
	i32.const	1
	local.set	72
	local.get	71
	local.get	72
	i32.and 
	local.set	73
	block   	
	block   	
	local.get	73
	i32.eqz
	br_if   	0                               # 0: down to label117
# %bb.6:
	i32.const	0
	local.set	74
	local.get	74
	i64.load	__llvm_gcov_ctr.38+16
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	local.get	74
	local.get	77
	i64.store	__llvm_gcov_ctr.38+16
	local.get	74
	i64.load	.L__profc_fminl+32
	local.set	78
	local.get	78
	local.get	76
	i64.add 
	local.set	79
	local.get	74
	local.get	79
	i64.store	.L__profc_fminl+32
	local.get	7
	i64.load	24
	local.set	80
	local.get	7
	i64.load	16
	local.set	81
	local.get	81
	local.set	82
	local.get	80
	local.set	83
	br      	1                               # 1: down to label116
.LBB38_7:
	end_block                               # label117:
	i32.const	0
	local.set	84
	local.get	84
	i64.load	__llvm_gcov_ctr.38+24
	local.set	85
	i64.const	1
	local.set	86
	local.get	85
	local.get	86
	i64.add 
	local.set	87
	local.get	84
	local.get	87
	i64.store	__llvm_gcov_ctr.38+24
	local.get	7
	i64.load	8
	local.set	88
	local.get	7
	i64.load	0
	local.set	89
	local.get	89
	local.set	82
	local.get	88
	local.set	83
.LBB38_8:
	end_block                               # label116:
	local.get	83
	local.set	90
	local.get	82
	local.set	91
	local.get	7
	local.get	91
	i64.store	32
	local.get	7
	local.get	90
	i64.store	40
	br      	1                               # 1: down to label112
.LBB38_9:
	end_block                               # label115:
	local.get	7
	i64.load	24
	local.set	92
	local.get	7
	i64.load	16
	local.set	93
	local.get	7
	i64.load	8
	local.set	94
	local.get	7
	i64.load	0
	local.set	95
	local.get	93
	local.get	92
	local.get	95
	local.get	94
	call	__lttf2
	local.set	96
	i32.const	0
	local.set	97
	local.get	96
	local.get	97
	i32.lt_s
	local.set	98
	i32.const	1
	local.set	99
	local.get	98
	local.get	99
	i32.and 
	local.set	100
	block   	
	block   	
	local.get	100
	i32.eqz
	br_if   	0                               # 0: down to label119
# %bb.10:
	i32.const	0
	local.set	101
	local.get	101
	i64.load	__llvm_gcov_ctr.38+32
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	local.get	101
	local.get	104
	i64.store	__llvm_gcov_ctr.38+32
	local.get	101
	i64.load	.L__profc_fminl+40
	local.set	105
	local.get	105
	local.get	103
	i64.add 
	local.set	106
	local.get	101
	local.get	106
	i64.store	.L__profc_fminl+40
	local.get	7
	i64.load	24
	local.set	107
	local.get	7
	i64.load	16
	local.set	108
	local.get	108
	local.set	109
	local.get	107
	local.set	110
	br      	1                               # 1: down to label118
.LBB38_11:
	end_block                               # label119:
	i32.const	0
	local.set	111
	local.get	111
	i64.load	__llvm_gcov_ctr.38+40
	local.set	112
	i64.const	1
	local.set	113
	local.get	112
	local.get	113
	i64.add 
	local.set	114
	local.get	111
	local.get	114
	i64.store	__llvm_gcov_ctr.38+40
	local.get	7
	i64.load	8
	local.set	115
	local.get	7
	i64.load	0
	local.set	116
	local.get	116
	local.set	109
	local.get	115
	local.set	110
.LBB38_12:
	end_block                               # label118:
	local.get	110
	local.set	117
	local.get	109
	local.set	118
	local.get	7
	local.get	118
	i64.store	32
	local.get	7
	local.get	117
	i64.store	40
.LBB38_13:
	end_block                               # label112:
	local.get	7
	i64.load	32
	local.set	119
	local.get	7
	i64.load	40
	local.set	120
	local.get	0
	local.get	120
	i64.store	8
	local.get	0
	local.get	119
	i64.store	0
	i32.const	48
	local.set	121
	local.get	7
	local.get	121
	i32.add 
	local.set	122
	local.get	122
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.39
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.39
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_l64a
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_l64a
	local.get	3
	i32.load	12
	local.set	14
	local.get	3
	local.get	14
	i32.store	4
	i32.const	l64a.s
	local.set	15
	local.get	3
	local.get	15
	i32.store	8
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label121:
	local.get	3
	i32.load	4
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label120
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	i32.const	0
	local.set	17
	local.get	17
	i64.load	.L__profc_l64a+8
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	.L__profc_l64a+8
	local.get	3
	i32.load	4
	local.set	22
	i32.const	63
	local.set	23
	local.get	22
	local.get	23
	i32.and 
	local.set	24
	local.get	24
	i32.load8_u	digits
	local.set	25
	local.get	3
	i32.load	8
	local.set	26
	local.get	26
	local.get	25
	i32.store8	0
# %bb.3:                                #   in Loop: Header=BB39_1 Depth=1
	i32.const	0
	local.set	27
	local.get	27
	i64.load	__llvm_gcov_ctr.39+8
	local.set	28
	i64.const	1
	local.set	29
	local.get	28
	local.get	29
	i64.add 
	local.set	30
	i32.const	0
	local.set	31
	local.get	31
	local.get	30
	i64.store	__llvm_gcov_ctr.39+8
	local.get	3
	i32.load	8
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.add 
	local.set	34
	local.get	3
	local.get	34
	i32.store	8
	local.get	3
	i32.load	4
	local.set	35
	i32.const	6
	local.set	36
	local.get	35
	local.get	36
	i32.shr_u
	local.set	37
	local.get	3
	local.get	37
	i32.store	4
	br      	0                               # 0: up to label121
.LBB39_4:
	end_loop
	end_block                               # label120:
	local.get	3
	i32.load	8
	local.set	38
	i32.const	0
	local.set	39
	local.get	38
	local.get	39
	i32.store8	0
	i32.const	l64a.s
	local.set	40
	local.get	40
	return
	end_function
                                        # -- End function
	.section	.text.srand,"",@
	.hidden	srand                           # -- Begin function srand
	.globl	srand
	.type	srand,@function
srand:                                  # @srand
	.functype	srand (i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.40
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.40
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_srand
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_srand
	local.get	3
	i32.load	12
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.sub 
	local.set	16
	local.get	16
	local.set	17
	local.get	17
	i64.extend_i32_u
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
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
	.local  	i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32
# %bb.0:
	i32.const	0
	local.set	0
	local.get	0
	i64.load	__llvm_gcov_ctr.41
	local.set	1
	i64.const	1
	local.set	2
	local.get	1
	local.get	2
	i64.add 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	local.get	3
	i64.store	__llvm_gcov_ctr.41
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_rand
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_rand
	i32.const	0
	local.set	10
	local.get	10
	i64.load	seed
	local.set	11
	i64.const	6364136223846793005
	local.set	12
	local.get	11
	local.get	12
	i64.mul 
	local.set	13
	i64.const	1
	local.set	14
	local.get	13
	local.get	14
	i64.add 
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.get	15
	i64.store	seed
	i32.const	0
	local.set	17
	local.get	17
	i64.load	seed
	local.set	18
	i64.const	33
	local.set	19
	local.get	18
	local.get	19
	i64.shr_u
	local.set	20
	local.get	20
	i32.wrap_i64
	local.set	21
	local.get	21
	return
	end_function
                                        # -- End function
	.section	.text.insque,"",@
	.hidden	insque                          # -- Begin function insque
	.globl	insque
	.type	insque,@function
insque:                                 # @insque
	.functype	insque (i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
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
	local.get	5
	i64.load	.L__profc_insque
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_insque
	local.get	4
	i32.load	12
	local.set	10
	local.get	4
	local.get	10
	i32.store	4
	local.get	4
	i32.load	8
	local.set	11
	local.get	4
	local.get	11
	i32.store	0
	local.get	4
	i32.load	0
	local.set	12
	i32.const	0
	local.set	13
	local.get	12
	local.get	13
	i32.ne  
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
	br_if   	0                               # 0: down to label123
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.42+8
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.42+8
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc_insque+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc_insque+8
	local.get	4
	i32.load	4
	local.set	27
	i32.const	0
	local.set	28
	local.get	27
	local.get	28
	i32.store	4
	local.get	4
	i32.load	4
	local.set	29
	i32.const	0
	local.set	30
	local.get	29
	local.get	30
	i32.store	0
	br      	1                               # 1: down to label122
.LBB42_2:
	end_block                               # label123:
	i32.const	0
	local.set	31
	local.get	31
	i64.load	__llvm_gcov_ctr.42
	local.set	32
	i64.const	1
	local.set	33
	local.get	32
	local.get	33
	i64.add 
	local.set	34
	i32.const	0
	local.set	35
	local.get	35
	local.get	34
	i64.store	__llvm_gcov_ctr.42
	local.get	4
	i32.load	0
	local.set	36
	local.get	36
	i32.load	0
	local.set	37
	local.get	4
	i32.load	4
	local.set	38
	local.get	38
	local.get	37
	i32.store	0
	local.get	4
	i32.load	0
	local.set	39
	local.get	4
	i32.load	4
	local.set	40
	local.get	40
	local.get	39
	i32.store	4
	local.get	4
	i32.load	4
	local.set	41
	local.get	4
	i32.load	0
	local.set	42
	local.get	42
	local.get	41
	i32.store	0
	local.get	4
	i32.load	4
	local.set	43
	local.get	43
	i32.load	0
	local.set	44
	i32.const	0
	local.set	45
	local.get	44
	local.get	45
	i32.ne  
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.and 
	local.set	48
	local.get	48
	i32.eqz
	br_if   	0                               # 0: down to label122
# %bb.3:
	i32.const	0
	local.set	49
	local.get	49
	i64.load	__llvm_gcov_ctr.42+16
	local.set	50
	i64.const	1
	local.set	51
	local.get	50
	local.get	51
	i64.add 
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.42+16
	i32.const	0
	local.set	54
	local.get	54
	i64.load	.L__profc_insque+16
	local.set	55
	i64.const	1
	local.set	56
	local.get	55
	local.get	56
	i64.add 
	local.set	57
	i32.const	0
	local.set	58
	local.get	58
	local.get	57
	i64.store	.L__profc_insque+16
	local.get	4
	i32.load	4
	local.set	59
	local.get	4
	i32.load	4
	local.set	60
	local.get	60
	i32.load	0
	local.set	61
	local.get	61
	local.get	59
	i32.store	4
.LBB42_4:
	end_block                               # label122:
	return
	end_function
                                        # -- End function
	.section	.text.remque,"",@
	.hidden	remque                          # -- Begin function remque
	.globl	remque
	.type	remque,@function
remque:                                 # @remque
	.functype	remque (i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.43
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.43
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_remque
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_remque
	local.get	3
	i32.load	12
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	local.get	3
	i32.load	8
	local.set	15
	local.get	15
	i32.load	0
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
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.43+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.43+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_remque+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_remque+8
	local.get	3
	i32.load	8
	local.set	31
	local.get	31
	i32.load	4
	local.set	32
	local.get	3
	i32.load	8
	local.set	33
	local.get	33
	i32.load	0
	local.set	34
	local.get	34
	local.get	32
	i32.store	4
.LBB43_2:
	end_block                               # label124:
	local.get	3
	i32.load	8
	local.set	35
	local.get	35
	i32.load	4
	local.set	36
	i32.const	0
	local.set	37
	local.get	36
	local.get	37
	i32.ne  
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
	br_if   	0                               # 0: down to label125
# %bb.3:
	i32.const	0
	local.set	41
	local.get	41
	i64.load	__llvm_gcov_ctr.43+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	__llvm_gcov_ctr.43+16
	i32.const	0
	local.set	46
	local.get	46
	i64.load	.L__profc_remque+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	.L__profc_remque+16
	local.get	3
	i32.load	8
	local.set	51
	local.get	51
	i32.load	0
	local.set	52
	local.get	3
	i32.load	8
	local.set	53
	local.get	53
	i32.load	4
	local.set	54
	local.get	54
	local.get	52
	i32.store	0
.LBB43_4:
	end_block                               # label125:
	return
	end_function
                                        # -- End function
	.section	.text.lsearch,"",@
	.hidden	lsearch                         # -- Begin function lsearch
	.globl	lsearch
	.type	lsearch,@function
lsearch:                                # @lsearch
	.functype	lsearch (i32, i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	8
	local.get	8
	i64.load	.L__profc_lsearch
	local.set	9
	i64.const	1
	local.set	10
	local.get	9
	local.get	10
	i64.add 
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i64.store	.L__profc_lsearch
	local.get	7
	i32.load	28
	local.set	13
	local.get	7
	i32.load	36
	local.set	14
	local.get	7
	local.get	14
	i32.store	20
	local.get	7
	i32.load	32
	local.set	15
	local.get	15
	i32.load	0
	local.set	16
	local.get	7
	local.get	16
	i32.store	16
	i32.const	0
	local.set	17
	local.get	7
	local.get	17
	i32.store	12
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label128:
	local.get	7
	i32.load	12
	local.set	18
	local.get	7
	i32.load	16
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
	local.get	22
	i32.eqz
	br_if   	1                               # 1: down to label127
# %bb.2:                                #   in Loop: Header=BB44_1 Depth=1
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_lsearch+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_lsearch+8
	local.get	7
	i32.load	24
	local.set	28
	local.get	7
	i32.load	40
	local.set	29
	local.get	7
	i32.load	20
	local.set	30
	local.get	7
	i32.load	12
	local.set	31
	local.get	31
	local.get	13
	i32.mul 
	local.set	32
	local.get	30
	local.get	32
	i32.add 
	local.set	33
	local.get	29
	local.get	33
	local.get	28
	call_indirect	 (i32, i32) -> (i32)
	local.set	34
	block   	
	local.get	34
	br_if   	0                               # 0: down to label129
# %bb.3:
	i32.const	0
	local.set	35
	local.get	35
	i64.load	__llvm_gcov_ctr.44
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.44
	i32.const	0
	local.set	40
	local.get	40
	i64.load	.L__profc_lsearch+16
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	.L__profc_lsearch+16
	local.get	7
	i32.load	20
	local.set	45
	local.get	7
	i32.load	12
	local.set	46
	local.get	46
	local.get	13
	i32.mul 
	local.set	47
	local.get	45
	local.get	47
	i32.add 
	local.set	48
	local.get	7
	local.get	48
	i32.store	44
	br      	3                               # 3: down to label126
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	end_block                               # label129:
# %bb.5:                                #   in Loop: Header=BB44_1 Depth=1
	i32.const	0
	local.set	49
	local.get	49
	i64.load	__llvm_gcov_ctr.44+8
	local.set	50
	i64.const	1
	local.set	51
	local.get	50
	local.get	51
	i64.add 
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.44+8
	local.get	7
	i32.load	12
	local.set	54
	i32.const	1
	local.set	55
	local.get	54
	local.get	55
	i32.add 
	local.set	56
	local.get	7
	local.get	56
	i32.store	12
	br      	0                               # 0: up to label128
.LBB44_6:
	end_loop
	end_block                               # label127:
	i32.const	0
	local.set	57
	local.get	57
	i64.load	__llvm_gcov_ctr.44+16
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	__llvm_gcov_ctr.44+16
	local.get	7
	i32.load	16
	local.set	62
	i32.const	1
	local.set	63
	local.get	62
	local.get	63
	i32.add 
	local.set	64
	local.get	7
	i32.load	32
	local.set	65
	local.get	65
	local.get	64
	i32.store	0
	local.get	7
	i32.load	20
	local.set	66
	local.get	7
	i32.load	16
	local.set	67
	local.get	67
	local.get	13
	i32.mul 
	local.set	68
	local.get	66
	local.get	68
	i32.add 
	local.set	69
	local.get	7
	i32.load	40
	local.set	70
	local.get	7
	i32.load	28
	local.set	71
	local.get	69
	local.get	70
	local.get	71
	call	memcpy
	drop
	local.get	7
	local.get	69
	i32.store	44
.LBB44_7:
	end_block                               # label126:
	local.get	7
	i32.load	44
	local.set	72
	i32.const	48
	local.set	73
	local.get	7
	local.get	73
	i32.add 
	local.set	74
	local.get	74
	global.set	__stack_pointer
	local.get	72
	return
	end_function
                                        # -- End function
	.section	.text.lfind,"",@
	.hidden	lfind                           # -- Begin function lfind
	.globl	lfind
	.type	lfind,@function
lfind:                                  # @lfind
	.functype	lfind (i32, i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	8
	local.get	8
	i64.load	.L__profc_lfind
	local.set	9
	i64.const	1
	local.set	10
	local.get	9
	local.get	10
	i64.add 
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i64.store	.L__profc_lfind
	local.get	7
	i32.load	28
	local.set	13
	local.get	7
	i32.load	36
	local.set	14
	local.get	7
	local.get	14
	i32.store	20
	local.get	7
	i32.load	32
	local.set	15
	local.get	15
	i32.load	0
	local.set	16
	local.get	7
	local.get	16
	i32.store	16
	i32.const	0
	local.set	17
	local.get	7
	local.get	17
	i32.store	12
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label132:
	local.get	7
	i32.load	12
	local.set	18
	local.get	7
	i32.load	16
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
	local.get	22
	i32.eqz
	br_if   	1                               # 1: down to label131
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_lfind+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_lfind+8
	local.get	7
	i32.load	24
	local.set	28
	local.get	7
	i32.load	40
	local.set	29
	local.get	7
	i32.load	20
	local.set	30
	local.get	7
	i32.load	12
	local.set	31
	local.get	31
	local.get	13
	i32.mul 
	local.set	32
	local.get	30
	local.get	32
	i32.add 
	local.set	33
	local.get	29
	local.get	33
	local.get	28
	call_indirect	 (i32, i32) -> (i32)
	local.set	34
	block   	
	local.get	34
	br_if   	0                               # 0: down to label133
# %bb.3:
	i32.const	0
	local.set	35
	local.get	35
	i64.load	__llvm_gcov_ctr.45
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.45
	i32.const	0
	local.set	40
	local.get	40
	i64.load	.L__profc_lfind+16
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	.L__profc_lfind+16
	local.get	7
	i32.load	20
	local.set	45
	local.get	7
	i32.load	12
	local.set	46
	local.get	46
	local.get	13
	i32.mul 
	local.set	47
	local.get	45
	local.get	47
	i32.add 
	local.set	48
	local.get	7
	local.get	48
	i32.store	44
	br      	3                               # 3: down to label130
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	end_block                               # label133:
# %bb.5:                                #   in Loop: Header=BB45_1 Depth=1
	i32.const	0
	local.set	49
	local.get	49
	i64.load	__llvm_gcov_ctr.45+8
	local.set	50
	i64.const	1
	local.set	51
	local.get	50
	local.get	51
	i64.add 
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.45+8
	local.get	7
	i32.load	12
	local.set	54
	i32.const	1
	local.set	55
	local.get	54
	local.get	55
	i32.add 
	local.set	56
	local.get	7
	local.get	56
	i32.store	12
	br      	0                               # 0: up to label132
.LBB45_6:
	end_loop
	end_block                               # label131:
	i32.const	0
	local.set	57
	local.get	57
	i64.load	__llvm_gcov_ctr.45+16
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	__llvm_gcov_ctr.45+16
	i32.const	0
	local.set	62
	local.get	7
	local.get	62
	i32.store	44
.LBB45_7:
	end_block                               # label130:
	local.get	7
	i32.load	44
	local.set	63
	i32.const	48
	local.set	64
	local.get	7
	local.get	64
	i32.add 
	local.set	65
	local.get	65
	global.set	__stack_pointer
	local.get	63
	return
	end_function
                                        # -- End function
	.section	.text.abs,"",@
	.hidden	abs                             # -- Begin function abs
	.globl	abs
	.type	abs,@function
abs:                                    # @abs
	.functype	abs (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	4
	local.get	4
	i64.load	.L__profc_abs
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_abs
	local.get	3
	i32.load	12
	local.set	9
	i32.const	0
	local.set	10
	local.get	9
	local.get	10
	i32.gt_s
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label135
# %bb.1:
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.46
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.46
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_abs+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_abs+8
	local.get	3
	i32.load	12
	local.set	24
	local.get	24
	local.set	25
	br      	1                               # 1: down to label134
.LBB46_2:
	end_block                               # label135:
	i32.const	0
	local.set	26
	local.get	26
	i64.load	__llvm_gcov_ctr.46+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	__llvm_gcov_ctr.46+8
	local.get	3
	i32.load	12
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i32.sub 
	local.set	33
	local.get	33
	local.set	25
.LBB46_3:
	end_block                               # label134:
	local.get	25
	local.set	34
	local.get	34
	return
	end_function
                                        # -- End function
	.section	.text.atoi,"",@
	.hidden	atoi                            # -- Begin function atoi
	.globl	atoi
	.type	atoi,@function
atoi:                                   # @atoi
	.functype	atoi (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
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
	local.get	4
	i64.load	.L__profc_atoi
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_atoi
	i32.const	0
	local.set	9
	local.get	3
	local.get	9
	i32.store	8
	i32.const	0
	local.set	10
	local.get	3
	local.get	10
	i32.store	4
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label137:
	local.get	3
	i32.load	12
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
	call	isspace
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label136
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.47
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.47
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc_atoi+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc_atoi+8
	local.get	3
	i32.load	12
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	3
	local.get	29
	i32.store	12
	br      	0                               # 0: up to label137
.LBB47_3:
	end_loop
	end_block                               # label136:
	local.get	3
	i32.load	12
	local.set	30
	local.get	30
	i32.load8_s	0
	local.set	31
	i32.const	-43
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	i32.const	2
	local.set	34
	local.get	33
	local.get	34
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	block   	
	local.get	33
	br_table 	{1, 3, 0, 3}            # 3: down to label138
                                        # 0: down to label141
.LBB47_4:
	end_block                               # label141:
	i32.const	0
	local.set	35
	local.get	35
	i64.load	__llvm_gcov_ctr.47+8
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.47+8
	i32.const	0
	local.set	40
	local.get	40
	i64.load	.L__profc_atoi+24
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	.L__profc_atoi+24
	i32.const	1
	local.set	45
	local.get	3
	local.get	45
	i32.store	4
	br      	1                               # 1: down to label139
.LBB47_5:
	end_block                               # label140:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.47+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.47+16
	i32.const	0
	local.set	51
	local.get	51
	i64.load	.L__profc_atoi+32
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	.L__profc_atoi+32
.LBB47_6:
	end_block                               # label139:
	local.get	3
	i32.load	12
	local.set	56
	i32.const	1
	local.set	57
	local.get	56
	local.get	57
	i32.add 
	local.set	58
	local.get	3
	local.get	58
	i32.store	12
.LBB47_7:
	end_block                               # label138:
	i32.const	0
	local.set	59
	local.get	59
	i64.load	.L__profc_atoi+16
	local.set	60
	i64.const	1
	local.set	61
	local.get	60
	local.get	61
	i64.add 
	local.set	62
	i32.const	0
	local.set	63
	local.get	63
	local.get	62
	i64.store	.L__profc_atoi+16
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label143:
	local.get	3
	i32.load	12
	local.set	64
	local.get	64
	i32.load8_u	0
	local.set	65
	i32.const	24
	local.set	66
	local.get	65
	local.get	66
	i32.shl 
	local.set	67
	local.get	67
	local.get	66
	i32.shr_s
	local.set	68
	local.get	68
	call	isdigit
	local.set	69
	local.get	69
	i32.eqz
	br_if   	1                               # 1: down to label142
# %bb.9:                                #   in Loop: Header=BB47_8 Depth=1
	i32.const	0
	local.set	70
	local.get	70
	i64.load	__llvm_gcov_ctr.47+24
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	__llvm_gcov_ctr.47+24
	i32.const	0
	local.set	75
	local.get	75
	i64.load	.L__profc_atoi+40
	local.set	76
	i64.const	1
	local.set	77
	local.get	76
	local.get	77
	i64.add 
	local.set	78
	i32.const	0
	local.set	79
	local.get	79
	local.get	78
	i64.store	.L__profc_atoi+40
	local.get	3
	i32.load	8
	local.set	80
	i32.const	10
	local.set	81
	local.get	80
	local.get	81
	i32.mul 
	local.set	82
	local.get	3
	i32.load	12
	local.set	83
	i32.const	1
	local.set	84
	local.get	83
	local.get	84
	i32.add 
	local.set	85
	local.get	3
	local.get	85
	i32.store	12
	local.get	83
	i32.load8_u	0
	local.set	86
	i32.const	24
	local.set	87
	local.get	86
	local.get	87
	i32.shl 
	local.set	88
	local.get	88
	local.get	87
	i32.shr_s
	local.set	89
	i32.const	48
	local.set	90
	local.get	89
	local.get	90
	i32.sub 
	local.set	91
	local.get	82
	local.get	91
	i32.sub 
	local.set	92
	local.get	3
	local.get	92
	i32.store	8
	br      	0                               # 0: up to label143
.LBB47_10:
	end_loop
	end_block                               # label142:
	local.get	3
	i32.load	4
	local.set	93
	block   	
	block   	
	local.get	93
	i32.eqz
	br_if   	0                               # 0: down to label145
# %bb.11:
	i32.const	0
	local.set	94
	local.get	94
	i64.load	__llvm_gcov_ctr.47+32
	local.set	95
	i64.const	1
	local.set	96
	local.get	95
	local.get	96
	i64.add 
	local.set	97
	i32.const	0
	local.set	98
	local.get	98
	local.get	97
	i64.store	__llvm_gcov_ctr.47+32
	i32.const	0
	local.set	99
	local.get	99
	i64.load	.L__profc_atoi+48
	local.set	100
	i64.const	1
	local.set	101
	local.get	100
	local.get	101
	i64.add 
	local.set	102
	i32.const	0
	local.set	103
	local.get	103
	local.get	102
	i64.store	.L__profc_atoi+48
	local.get	3
	i32.load	8
	local.set	104
	local.get	104
	local.set	105
	br      	1                               # 1: down to label144
.LBB47_12:
	end_block                               # label145:
	i32.const	0
	local.set	106
	local.get	106
	i64.load	__llvm_gcov_ctr.47+40
	local.set	107
	i64.const	1
	local.set	108
	local.get	107
	local.get	108
	i64.add 
	local.set	109
	i32.const	0
	local.set	110
	local.get	110
	local.get	109
	i64.store	__llvm_gcov_ctr.47+40
	local.get	3
	i32.load	8
	local.set	111
	i32.const	0
	local.set	112
	local.get	112
	local.get	111
	i32.sub 
	local.set	113
	local.get	113
	local.set	105
.LBB47_13:
	end_block                               # label144:
	local.get	105
	local.set	114
	i32.const	16
	local.set	115
	local.get	3
	local.get	115
	i32.add 
	local.set	116
	local.get	116
	global.set	__stack_pointer
	local.get	114
	return
	end_function
                                        # -- End function
	.section	.text.atol,"",@
	.hidden	atol                            # -- Begin function atol
	.globl	atol
	.type	atol,@function
atol:                                   # @atol
	.functype	atol (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
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
	local.get	4
	i64.load	.L__profc_atol
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_atol
	i32.const	0
	local.set	9
	local.get	3
	local.get	9
	i32.store	8
	i32.const	0
	local.set	10
	local.get	3
	local.get	10
	i32.store	4
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label147:
	local.get	3
	i32.load	12
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
	call	isspace
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label146
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.48
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.48
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc_atol+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc_atol+8
	local.get	3
	i32.load	12
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	3
	local.get	29
	i32.store	12
	br      	0                               # 0: up to label147
.LBB48_3:
	end_loop
	end_block                               # label146:
	local.get	3
	i32.load	12
	local.set	30
	local.get	30
	i32.load8_s	0
	local.set	31
	i32.const	-43
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	i32.const	2
	local.set	34
	local.get	33
	local.get	34
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	block   	
	local.get	33
	br_table 	{1, 3, 0, 3}            # 3: down to label148
                                        # 0: down to label151
.LBB48_4:
	end_block                               # label151:
	i32.const	0
	local.set	35
	local.get	35
	i64.load	__llvm_gcov_ctr.48+8
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.48+8
	i32.const	0
	local.set	40
	local.get	40
	i64.load	.L__profc_atol+24
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	.L__profc_atol+24
	i32.const	1
	local.set	45
	local.get	3
	local.get	45
	i32.store	4
	br      	1                               # 1: down to label149
.LBB48_5:
	end_block                               # label150:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.48+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.48+16
	i32.const	0
	local.set	51
	local.get	51
	i64.load	.L__profc_atol+32
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	.L__profc_atol+32
.LBB48_6:
	end_block                               # label149:
	local.get	3
	i32.load	12
	local.set	56
	i32.const	1
	local.set	57
	local.get	56
	local.get	57
	i32.add 
	local.set	58
	local.get	3
	local.get	58
	i32.store	12
.LBB48_7:
	end_block                               # label148:
	i32.const	0
	local.set	59
	local.get	59
	i64.load	.L__profc_atol+16
	local.set	60
	i64.const	1
	local.set	61
	local.get	60
	local.get	61
	i64.add 
	local.set	62
	i32.const	0
	local.set	63
	local.get	63
	local.get	62
	i64.store	.L__profc_atol+16
.LBB48_8:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label153:
	local.get	3
	i32.load	12
	local.set	64
	local.get	64
	i32.load8_u	0
	local.set	65
	i32.const	24
	local.set	66
	local.get	65
	local.get	66
	i32.shl 
	local.set	67
	local.get	67
	local.get	66
	i32.shr_s
	local.set	68
	local.get	68
	call	isdigit
	local.set	69
	local.get	69
	i32.eqz
	br_if   	1                               # 1: down to label152
# %bb.9:                                #   in Loop: Header=BB48_8 Depth=1
	i32.const	0
	local.set	70
	local.get	70
	i64.load	__llvm_gcov_ctr.48+24
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	__llvm_gcov_ctr.48+24
	i32.const	0
	local.set	75
	local.get	75
	i64.load	.L__profc_atol+40
	local.set	76
	i64.const	1
	local.set	77
	local.get	76
	local.get	77
	i64.add 
	local.set	78
	i32.const	0
	local.set	79
	local.get	79
	local.get	78
	i64.store	.L__profc_atol+40
	local.get	3
	i32.load	8
	local.set	80
	i32.const	10
	local.set	81
	local.get	80
	local.get	81
	i32.mul 
	local.set	82
	local.get	3
	i32.load	12
	local.set	83
	i32.const	1
	local.set	84
	local.get	83
	local.get	84
	i32.add 
	local.set	85
	local.get	3
	local.get	85
	i32.store	12
	local.get	83
	i32.load8_u	0
	local.set	86
	i32.const	24
	local.set	87
	local.get	86
	local.get	87
	i32.shl 
	local.set	88
	local.get	88
	local.get	87
	i32.shr_s
	local.set	89
	i32.const	48
	local.set	90
	local.get	89
	local.get	90
	i32.sub 
	local.set	91
	local.get	82
	local.get	91
	i32.sub 
	local.set	92
	local.get	3
	local.get	92
	i32.store	8
	br      	0                               # 0: up to label153
.LBB48_10:
	end_loop
	end_block                               # label152:
	local.get	3
	i32.load	4
	local.set	93
	block   	
	block   	
	local.get	93
	i32.eqz
	br_if   	0                               # 0: down to label155
# %bb.11:
	i32.const	0
	local.set	94
	local.get	94
	i64.load	__llvm_gcov_ctr.48+32
	local.set	95
	i64.const	1
	local.set	96
	local.get	95
	local.get	96
	i64.add 
	local.set	97
	i32.const	0
	local.set	98
	local.get	98
	local.get	97
	i64.store	__llvm_gcov_ctr.48+32
	i32.const	0
	local.set	99
	local.get	99
	i64.load	.L__profc_atol+48
	local.set	100
	i64.const	1
	local.set	101
	local.get	100
	local.get	101
	i64.add 
	local.set	102
	i32.const	0
	local.set	103
	local.get	103
	local.get	102
	i64.store	.L__profc_atol+48
	local.get	3
	i32.load	8
	local.set	104
	local.get	104
	local.set	105
	br      	1                               # 1: down to label154
.LBB48_12:
	end_block                               # label155:
	i32.const	0
	local.set	106
	local.get	106
	i64.load	__llvm_gcov_ctr.48+40
	local.set	107
	i64.const	1
	local.set	108
	local.get	107
	local.get	108
	i64.add 
	local.set	109
	i32.const	0
	local.set	110
	local.get	110
	local.get	109
	i64.store	__llvm_gcov_ctr.48+40
	local.get	3
	i32.load	8
	local.set	111
	i32.const	0
	local.set	112
	local.get	112
	local.get	111
	i32.sub 
	local.set	113
	local.get	113
	local.set	105
.LBB48_13:
	end_block                               # label154:
	local.get	105
	local.set	114
	i32.const	16
	local.set	115
	local.get	3
	local.get	115
	i32.add 
	local.set	116
	local.get	116
	global.set	__stack_pointer
	local.get	114
	return
	end_function
                                        # -- End function
	.section	.text.atoll,"",@
	.hidden	atoll                           # -- Begin function atoll
	.globl	atoll
	.type	atoll,@function
atoll:                                  # @atoll
	.functype	atoll (i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i32
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
	i32.const	0
	local.set	4
	local.get	4
	i64.load	.L__profc_atoll
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_atoll
	i64.const	0
	local.set	9
	local.get	3
	local.get	9
	i64.store	16
	i32.const	0
	local.set	10
	local.get	3
	local.get	10
	i32.store	12
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label157:
	local.get	3
	i32.load	28
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
	call	isspace
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label156
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.49
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.49
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc_atoll+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc_atoll+8
	local.get	3
	i32.load	28
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	3
	local.get	29
	i32.store	28
	br      	0                               # 0: up to label157
.LBB49_3:
	end_loop
	end_block                               # label156:
	local.get	3
	i32.load	28
	local.set	30
	local.get	30
	i32.load8_s	0
	local.set	31
	i32.const	-43
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	i32.const	2
	local.set	34
	local.get	33
	local.get	34
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	block   	
	local.get	33
	br_table 	{1, 3, 0, 3}            # 3: down to label158
                                        # 0: down to label161
.LBB49_4:
	end_block                               # label161:
	i32.const	0
	local.set	35
	local.get	35
	i64.load	__llvm_gcov_ctr.49+8
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.49+8
	i32.const	0
	local.set	40
	local.get	40
	i64.load	.L__profc_atoll+24
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	.L__profc_atoll+24
	i32.const	1
	local.set	45
	local.get	3
	local.get	45
	i32.store	12
	br      	1                               # 1: down to label159
.LBB49_5:
	end_block                               # label160:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.49+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.49+16
	i32.const	0
	local.set	51
	local.get	51
	i64.load	.L__profc_atoll+32
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	.L__profc_atoll+32
.LBB49_6:
	end_block                               # label159:
	local.get	3
	i32.load	28
	local.set	56
	i32.const	1
	local.set	57
	local.get	56
	local.get	57
	i32.add 
	local.set	58
	local.get	3
	local.get	58
	i32.store	28
.LBB49_7:
	end_block                               # label158:
	i32.const	0
	local.set	59
	local.get	59
	i64.load	.L__profc_atoll+16
	local.set	60
	i64.const	1
	local.set	61
	local.get	60
	local.get	61
	i64.add 
	local.set	62
	i32.const	0
	local.set	63
	local.get	63
	local.get	62
	i64.store	.L__profc_atoll+16
.LBB49_8:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label163:
	local.get	3
	i32.load	28
	local.set	64
	local.get	64
	i32.load8_u	0
	local.set	65
	i32.const	24
	local.set	66
	local.get	65
	local.get	66
	i32.shl 
	local.set	67
	local.get	67
	local.get	66
	i32.shr_s
	local.set	68
	local.get	68
	call	isdigit
	local.set	69
	local.get	69
	i32.eqz
	br_if   	1                               # 1: down to label162
# %bb.9:                                #   in Loop: Header=BB49_8 Depth=1
	i32.const	0
	local.set	70
	local.get	70
	i64.load	__llvm_gcov_ctr.49+24
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	__llvm_gcov_ctr.49+24
	i32.const	0
	local.set	75
	local.get	75
	i64.load	.L__profc_atoll+40
	local.set	76
	i64.const	1
	local.set	77
	local.get	76
	local.get	77
	i64.add 
	local.set	78
	i32.const	0
	local.set	79
	local.get	79
	local.get	78
	i64.store	.L__profc_atoll+40
	local.get	3
	i64.load	16
	local.set	80
	i64.const	10
	local.set	81
	local.get	80
	local.get	81
	i64.mul 
	local.set	82
	local.get	3
	i32.load	28
	local.set	83
	i32.const	1
	local.set	84
	local.get	83
	local.get	84
	i32.add 
	local.set	85
	local.get	3
	local.get	85
	i32.store	28
	local.get	83
	i32.load8_u	0
	local.set	86
	i32.const	24
	local.set	87
	local.get	86
	local.get	87
	i32.shl 
	local.set	88
	local.get	88
	local.get	87
	i32.shr_s
	local.set	89
	i32.const	48
	local.set	90
	local.get	89
	local.get	90
	i32.sub 
	local.set	91
	local.get	91
	local.set	92
	local.get	92
	i64.extend_i32_s
	local.set	93
	local.get	82
	local.get	93
	i64.sub 
	local.set	94
	local.get	3
	local.get	94
	i64.store	16
	br      	0                               # 0: up to label163
.LBB49_10:
	end_loop
	end_block                               # label162:
	local.get	3
	i32.load	12
	local.set	95
	block   	
	block   	
	local.get	95
	i32.eqz
	br_if   	0                               # 0: down to label165
# %bb.11:
	i32.const	0
	local.set	96
	local.get	96
	i64.load	__llvm_gcov_ctr.49+32
	local.set	97
	i64.const	1
	local.set	98
	local.get	97
	local.get	98
	i64.add 
	local.set	99
	i32.const	0
	local.set	100
	local.get	100
	local.get	99
	i64.store	__llvm_gcov_ctr.49+32
	i32.const	0
	local.set	101
	local.get	101
	i64.load	.L__profc_atoll+48
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	i32.const	0
	local.set	105
	local.get	105
	local.get	104
	i64.store	.L__profc_atoll+48
	local.get	3
	i64.load	16
	local.set	106
	local.get	106
	local.set	107
	br      	1                               # 1: down to label164
.LBB49_12:
	end_block                               # label165:
	i32.const	0
	local.set	108
	local.get	108
	i64.load	__llvm_gcov_ctr.49+40
	local.set	109
	i64.const	1
	local.set	110
	local.get	109
	local.get	110
	i64.add 
	local.set	111
	i32.const	0
	local.set	112
	local.get	112
	local.get	111
	i64.store	__llvm_gcov_ctr.49+40
	local.get	3
	i64.load	16
	local.set	113
	i64.const	0
	local.set	114
	local.get	114
	local.get	113
	i64.sub 
	local.set	115
	local.get	115
	local.set	107
.LBB49_13:
	end_block                               # label164:
	local.get	107
	local.set	116
	i32.const	32
	local.set	117
	local.get	3
	local.get	117
	i32.add 
	local.set	118
	local.get	118
	global.set	__stack_pointer
	local.get	116
	return
	end_function
                                        # -- End function
	.section	.text.bsearch,"",@
	.hidden	bsearch                         # -- Begin function bsearch
	.globl	bsearch
	.type	bsearch,@function
bsearch:                                # @bsearch
	.functype	bsearch (i32, i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	8
	local.get	8
	i64.load	.L__profc_bsearch
	local.set	9
	i64.const	1
	local.set	10
	local.get	9
	local.get	10
	i64.add 
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.get	11
	i64.store	.L__profc_bsearch
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label168:
	local.get	7
	i32.load	16
	local.set	13
	i32.const	0
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
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label167
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	i32.const	0
	local.set	18
	local.get	18
	i64.load	.L__profc_bsearch+8
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	.L__profc_bsearch+8
	local.get	7
	i32.load	20
	local.set	23
	local.get	7
	i32.load	12
	local.set	24
	local.get	7
	i32.load	16
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.shr_u
	local.set	27
	local.get	24
	local.get	27
	i32.mul 
	local.set	28
	local.get	23
	local.get	28
	i32.add 
	local.set	29
	local.get	7
	local.get	29
	i32.store	4
	local.get	7
	i32.load	8
	local.set	30
	local.get	7
	i32.load	24
	local.set	31
	local.get	7
	i32.load	4
	local.set	32
	local.get	31
	local.get	32
	local.get	30
	call_indirect	 (i32, i32) -> (i32)
	local.set	33
	local.get	7
	local.get	33
	i32.store	0
	local.get	7
	i32.load	0
	local.set	34
	i32.const	0
	local.set	35
	local.get	34
	local.get	35
	i32.lt_s
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.and 
	local.set	38
	block   	
	block   	
	local.get	38
	i32.eqz
	br_if   	0                               # 0: down to label170
# %bb.3:                                #   in Loop: Header=BB50_1 Depth=1
	i32.const	0
	local.set	39
	local.get	39
	i64.load	__llvm_gcov_ctr.50+8
	local.set	40
	i64.const	1
	local.set	41
	local.get	40
	local.get	41
	i64.add 
	local.set	42
	i32.const	0
	local.set	43
	local.get	43
	local.get	42
	i64.store	__llvm_gcov_ctr.50+8
	i32.const	0
	local.set	44
	local.get	44
	i64.load	.L__profc_bsearch+16
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	local.get	47
	i64.store	.L__profc_bsearch+16
	local.get	7
	i32.load	16
	local.set	49
	i32.const	1
	local.set	50
	local.get	49
	local.get	50
	i32.shr_u
	local.set	51
	local.get	7
	local.get	51
	i32.store	16
	br      	1                               # 1: down to label169
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	end_block                               # label170:
	local.get	7
	i32.load	0
	local.set	52
	i32.const	0
	local.set	53
	local.get	52
	local.get	53
	i32.gt_s
	local.set	54
	i32.const	1
	local.set	55
	local.get	54
	local.get	55
	i32.and 
	local.set	56
	block   	
	block   	
	local.get	56
	i32.eqz
	br_if   	0                               # 0: down to label172
# %bb.5:                                #   in Loop: Header=BB50_1 Depth=1
	i32.const	0
	local.set	57
	local.get	57
	i64.load	.L__profc_bsearch+24
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	.L__profc_bsearch+24
	local.get	7
	i32.load	4
	local.set	62
	local.get	7
	i32.load	12
	local.set	63
	local.get	62
	local.get	63
	i32.add 
	local.set	64
	local.get	7
	local.get	64
	i32.store	20
	local.get	7
	i32.load	16
	local.set	65
	i32.const	1
	local.set	66
	local.get	65
	local.get	66
	i32.shr_u
	local.set	67
	i32.const	1
	local.set	68
	local.get	67
	local.get	68
	i32.add 
	local.set	69
	local.get	7
	i32.load	16
	local.set	70
	local.get	70
	local.get	69
	i32.sub 
	local.set	71
	local.get	7
	local.get	71
	i32.store	16
	br      	1                               # 1: down to label171
.LBB50_6:
	end_block                               # label172:
	i32.const	0
	local.set	72
	local.get	72
	i64.load	__llvm_gcov_ctr.50+16
	local.set	73
	i64.const	1
	local.set	74
	local.get	73
	local.get	74
	i64.add 
	local.set	75
	i32.const	0
	local.set	76
	local.get	76
	local.get	75
	i64.store	__llvm_gcov_ctr.50+16
	local.get	7
	i32.load	4
	local.set	77
	local.get	7
	local.get	77
	i32.store	28
	br      	4                               # 4: down to label166
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	end_block                               # label171:
	i32.const	0
	local.set	78
	local.get	78
	i64.load	__llvm_gcov_ctr.50+24
	local.set	79
	i64.const	1
	local.set	80
	local.get	79
	local.get	80
	i64.add 
	local.set	81
	i32.const	0
	local.set	82
	local.get	82
	local.get	81
	i64.store	__llvm_gcov_ctr.50+24
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	end_block                               # label169:
	br      	0                               # 0: up to label168
.LBB50_9:
	end_loop
	end_block                               # label167:
	i32.const	0
	local.set	83
	local.get	83
	i64.load	__llvm_gcov_ctr.50
	local.set	84
	i64.const	1
	local.set	85
	local.get	84
	local.get	85
	i64.add 
	local.set	86
	i32.const	0
	local.set	87
	local.get	87
	local.get	86
	i64.store	__llvm_gcov_ctr.50
	i32.const	0
	local.set	88
	local.get	7
	local.get	88
	i32.store	28
.LBB50_10:
	end_block                               # label166:
	local.get	7
	i32.load	28
	local.set	89
	i32.const	32
	local.set	90
	local.get	7
	local.get	90
	i32.add 
	local.set	91
	local.get	91
	global.set	__stack_pointer
	local.get	89
	return
	end_function
                                        # -- End function
	.section	.text.bsearch_r,"",@
	.hidden	bsearch_r                       # -- Begin function bsearch_r
	.globl	bsearch_r
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
	.functype	bsearch_r (i32, i32, i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_bsearch_r
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_bsearch_r
	local.get	8
	i32.load	36
	local.set	14
	local.get	8
	local.get	14
	i32.store	16
	local.get	8
	i32.load	32
	local.set	15
	local.get	8
	local.get	15
	i32.store	12
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label175:
	local.get	8
	i32.load	12
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label174
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	i32.const	0
	local.set	17
	local.get	17
	i64.load	.L__profc_bsearch_r+8
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	.L__profc_bsearch_r+8
	local.get	8
	i32.load	16
	local.set	22
	local.get	8
	i32.load	12
	local.set	23
	i32.const	1
	local.set	24
	local.get	23
	local.get	24
	i32.shr_s
	local.set	25
	local.get	8
	i32.load	28
	local.set	26
	local.get	25
	local.get	26
	i32.mul 
	local.set	27
	local.get	22
	local.get	27
	i32.add 
	local.set	28
	local.get	8
	local.get	28
	i32.store	4
	local.get	8
	i32.load	24
	local.set	29
	local.get	8
	i32.load	40
	local.set	30
	local.get	8
	i32.load	4
	local.set	31
	local.get	8
	i32.load	20
	local.set	32
	local.get	30
	local.get	31
	local.get	32
	local.get	29
	call_indirect	 (i32, i32, i32) -> (i32)
	local.set	33
	local.get	8
	local.get	33
	i32.store	8
	local.get	8
	i32.load	8
	local.set	34
	block   	
	local.get	34
	br_if   	0                               # 0: down to label176
# %bb.3:
	i32.const	0
	local.set	35
	local.get	35
	i64.load	__llvm_gcov_ctr.51
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.51
	i32.const	0
	local.set	40
	local.get	40
	i64.load	.L__profc_bsearch_r+16
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	.L__profc_bsearch_r+16
	local.get	8
	i32.load	4
	local.set	45
	local.get	8
	local.get	45
	i32.store	44
	br      	3                               # 3: down to label173
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	end_block                               # label176:
	local.get	8
	i32.load	8
	local.set	46
	i32.const	0
	local.set	47
	local.get	46
	local.get	47
	i32.gt_s
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.and 
	local.set	50
	block   	
	local.get	50
	i32.eqz
	br_if   	0                               # 0: down to label177
# %bb.5:                                #   in Loop: Header=BB51_1 Depth=1
	i32.const	0
	local.set	51
	local.get	51
	i64.load	__llvm_gcov_ctr.51+8
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	__llvm_gcov_ctr.51+8
	i32.const	0
	local.set	56
	local.get	56
	i64.load	.L__profc_bsearch_r+24
	local.set	57
	i64.const	1
	local.set	58
	local.get	57
	local.get	58
	i64.add 
	local.set	59
	i32.const	0
	local.set	60
	local.get	60
	local.get	59
	i64.store	.L__profc_bsearch_r+24
	local.get	8
	i32.load	4
	local.set	61
	local.get	8
	i32.load	28
	local.set	62
	local.get	61
	local.get	62
	i32.add 
	local.set	63
	local.get	8
	local.get	63
	i32.store	16
	local.get	8
	i32.load	12
	local.set	64
	i32.const	-1
	local.set	65
	local.get	64
	local.get	65
	i32.add 
	local.set	66
	local.get	8
	local.get	66
	i32.store	12
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	end_block                               # label177:
# %bb.7:                                #   in Loop: Header=BB51_1 Depth=1
	i32.const	0
	local.set	67
	local.get	67
	i64.load	__llvm_gcov_ctr.51+16
	local.set	68
	i64.const	1
	local.set	69
	local.get	68
	local.get	69
	i64.add 
	local.set	70
	i32.const	0
	local.set	71
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.51+16
	local.get	8
	i32.load	12
	local.set	72
	i32.const	1
	local.set	73
	local.get	72
	local.get	73
	i32.shr_s
	local.set	74
	local.get	8
	local.get	74
	i32.store	12
	br      	0                               # 0: up to label175
.LBB51_8:
	end_loop
	end_block                               # label174:
	i32.const	0
	local.set	75
	local.get	75
	i64.load	__llvm_gcov_ctr.51+24
	local.set	76
	i64.const	1
	local.set	77
	local.get	76
	local.get	77
	i64.add 
	local.set	78
	i32.const	0
	local.set	79
	local.get	79
	local.get	78
	i64.store	__llvm_gcov_ctr.51+24
	i32.const	0
	local.set	80
	local.get	8
	local.get	80
	i32.store	44
.LBB51_9:
	end_block                               # label173:
	local.get	8
	i32.load	44
	local.set	81
	i32.const	48
	local.set	82
	local.get	8
	local.get	82
	i32.add 
	local.set	83
	local.get	83
	global.set	__stack_pointer
	local.get	81
	return
	end_function
                                        # -- End function
	.section	.text.div,"",@
	.hidden	div                             # -- Begin function div
	.globl	div
	.type	div,@function
div:                                    # @div
	.functype	div (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.52
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.52
	local.get	5
	local.get	1
	i32.store	12
	local.get	5
	local.get	2
	i32.store	8
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_div
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_div
	local.get	5
	i32.load	12
	local.set	16
	local.get	5
	i32.load	8
	local.set	17
	local.get	16
	local.get	17
	i32.div_s
	local.set	18
	local.get	0
	local.get	18
	i32.store	0
	local.get	5
	i32.load	12
	local.set	19
	local.get	5
	i32.load	8
	local.set	20
	local.get	19
	local.get	20
	i32.rem_s
	local.set	21
	local.get	0
	local.get	21
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i64, i64, i64, i32, i64, i64, i64, i64
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
	i32.const	0
	local.set	4
	local.get	4
	i64.load	.L__profc_imaxabs
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_imaxabs
	local.get	3
	i64.load	8
	local.set	9
	i64.const	0
	local.set	10
	local.get	9
	local.get	10
	i64.gt_s
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label179
# %bb.1:
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.53
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.53
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_imaxabs+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_imaxabs+8
	local.get	3
	i64.load	8
	local.set	24
	local.get	24
	local.set	25
	br      	1                               # 1: down to label178
.LBB53_2:
	end_block                               # label179:
	i32.const	0
	local.set	26
	local.get	26
	i64.load	__llvm_gcov_ctr.53+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	__llvm_gcov_ctr.53+8
	local.get	3
	i64.load	8
	local.set	31
	i64.const	0
	local.set	32
	local.get	32
	local.get	31
	i64.sub 
	local.set	33
	local.get	33
	local.set	25
.LBB53_3:
	end_block                               # label178:
	local.get	25
	local.set	34
	local.get	34
	return
	end_function
                                        # -- End function
	.section	.text.imaxdiv,"",@
	.hidden	imaxdiv                         # -- Begin function imaxdiv
	.globl	imaxdiv
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
	.functype	imaxdiv (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.54
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.54
	local.get	5
	local.get	1
	i64.store	8
	local.get	5
	local.get	2
	i64.store	0
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_imaxdiv
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_imaxdiv
	local.get	5
	i64.load	8
	local.set	16
	local.get	5
	i64.load	0
	local.set	17
	local.get	16
	local.get	17
	i64.div_s
	local.set	18
	local.get	0
	local.get	18
	i64.store	0
	local.get	5
	i64.load	8
	local.set	19
	local.get	5
	i64.load	0
	local.set	20
	local.get	19
	local.get	20
	i64.rem_s
	local.set	21
	local.get	0
	local.get	21
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	4
	local.get	4
	i64.load	.L__profc_labs
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_labs
	local.get	3
	i32.load	12
	local.set	9
	i32.const	0
	local.set	10
	local.get	9
	local.get	10
	i32.gt_s
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label181
# %bb.1:
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.55
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.55
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_labs+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_labs+8
	local.get	3
	i32.load	12
	local.set	24
	local.get	24
	local.set	25
	br      	1                               # 1: down to label180
.LBB55_2:
	end_block                               # label181:
	i32.const	0
	local.set	26
	local.get	26
	i64.load	__llvm_gcov_ctr.55+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	__llvm_gcov_ctr.55+8
	local.get	3
	i32.load	12
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i32.sub 
	local.set	33
	local.get	33
	local.set	25
.LBB55_3:
	end_block                               # label180:
	local.get	25
	local.set	34
	local.get	34
	return
	end_function
                                        # -- End function
	.section	.text.ldiv,"",@
	.hidden	ldiv                            # -- Begin function ldiv
	.globl	ldiv
	.type	ldiv,@function
ldiv:                                   # @ldiv
	.functype	ldiv (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.56
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.56
	local.get	5
	local.get	1
	i32.store	12
	local.get	5
	local.get	2
	i32.store	8
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_ldiv
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_ldiv
	local.get	5
	i32.load	12
	local.set	16
	local.get	5
	i32.load	8
	local.set	17
	local.get	16
	local.get	17
	i32.div_s
	local.set	18
	local.get	0
	local.get	18
	i32.store	0
	local.get	5
	i32.load	12
	local.set	19
	local.get	5
	i32.load	8
	local.set	20
	local.get	19
	local.get	20
	i32.rem_s
	local.set	21
	local.get	0
	local.get	21
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i64, i64, i64, i32, i64, i64, i64, i64
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
	i32.const	0
	local.set	4
	local.get	4
	i64.load	.L__profc_llabs
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_llabs
	local.get	3
	i64.load	8
	local.set	9
	i64.const	0
	local.set	10
	local.get	9
	local.get	10
	i64.gt_s
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label183
# %bb.1:
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.57
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.57
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_llabs+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_llabs+8
	local.get	3
	i64.load	8
	local.set	24
	local.get	24
	local.set	25
	br      	1                               # 1: down to label182
.LBB57_2:
	end_block                               # label183:
	i32.const	0
	local.set	26
	local.get	26
	i64.load	__llvm_gcov_ctr.57+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	__llvm_gcov_ctr.57+8
	local.get	3
	i64.load	8
	local.set	31
	i64.const	0
	local.set	32
	local.get	32
	local.get	31
	i64.sub 
	local.set	33
	local.get	33
	local.set	25
.LBB57_3:
	end_block                               # label182:
	local.get	25
	local.set	34
	local.get	34
	return
	end_function
                                        # -- End function
	.section	.text.lldiv,"",@
	.hidden	lldiv                           # -- Begin function lldiv
	.globl	lldiv
	.type	lldiv,@function
lldiv:                                  # @lldiv
	.functype	lldiv (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.58
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.58
	local.get	5
	local.get	1
	i64.store	8
	local.get	5
	local.get	2
	i64.store	0
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_lldiv
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_lldiv
	local.get	5
	i64.load	8
	local.set	16
	local.get	5
	i64.load	0
	local.set	17
	local.get	16
	local.get	17
	i64.div_s
	local.set	18
	local.get	0
	local.get	18
	i64.store	0
	local.get	5
	i64.load	8
	local.set	19
	local.get	5
	i64.load	0
	local.set	20
	local.get	19
	local.get	20
	i64.rem_s
	local.set	21
	local.get	0
	local.get	21
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	local.get	5
	i64.load	.L__profc_wcschr
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_wcschr
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label184:
	local.get	4
	i32.load	12
	local.set	10
	local.get	10
	i32.load	0
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.set	13
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label185
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.59
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.59
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_wcschr+16
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_wcschr+16
	local.get	4
	i32.load	12
	local.set	24
	local.get	24
	i32.load	0
	local.set	25
	local.get	4
	i32.load	8
	local.set	26
	local.get	25
	local.get	26
	i32.ne  
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	27
	local.set	13
	local.get	29
	i32.eqz
	br_if   	0                               # 0: down to label185
# %bb.3:                                #   in Loop: Header=BB59_1 Depth=1
	i32.const	0
	local.set	30
	local.get	30
	i64.load	__llvm_gcov_ctr.59+8
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	__llvm_gcov_ctr.59+8
	i32.const	0
	local.set	35
	local.get	35
	i64.load	.L__profc_wcschr+24
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	.L__profc_wcschr+24
	local.get	27
	local.set	13
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	end_block                               # label185:
	local.get	13
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.and 
	local.set	42
	block   	
	local.get	42
	i32.eqz
	br_if   	0                               # 0: down to label186
# %bb.5:                                #   in Loop: Header=BB59_1 Depth=1
	i32.const	0
	local.set	43
	local.get	43
	i64.load	.L__profc_wcschr+8
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	.L__profc_wcschr+8
# %bb.6:                                #   in Loop: Header=BB59_1 Depth=1
	i32.const	0
	local.set	48
	local.get	48
	i64.load	__llvm_gcov_ctr.59+16
	local.set	49
	i64.const	1
	local.set	50
	local.get	49
	local.get	50
	i64.add 
	local.set	51
	i32.const	0
	local.set	52
	local.get	52
	local.get	51
	i64.store	__llvm_gcov_ctr.59+16
	local.get	4
	i32.load	12
	local.set	53
	i32.const	4
	local.set	54
	local.get	53
	local.get	54
	i32.add 
	local.set	55
	local.get	4
	local.get	55
	i32.store	12
	br      	1                               # 1: up to label184
.LBB59_7:
	end_block                               # label186:
	end_loop
	local.get	4
	i32.load	12
	local.set	56
	local.get	56
	i32.load	0
	local.set	57
	block   	
	block   	
	local.get	57
	i32.eqz
	br_if   	0                               # 0: down to label188
# %bb.8:
	i32.const	0
	local.set	58
	local.get	58
	i64.load	__llvm_gcov_ctr.59+24
	local.set	59
	i64.const	1
	local.set	60
	local.get	59
	local.get	60
	i64.add 
	local.set	61
	i32.const	0
	local.set	62
	local.get	62
	local.get	61
	i64.store	__llvm_gcov_ctr.59+24
	i32.const	0
	local.set	63
	local.get	63
	i64.load	.L__profc_wcschr+32
	local.set	64
	i64.const	1
	local.set	65
	local.get	64
	local.get	65
	i64.add 
	local.set	66
	i32.const	0
	local.set	67
	local.get	67
	local.get	66
	i64.store	.L__profc_wcschr+32
	local.get	4
	i32.load	12
	local.set	68
	local.get	68
	local.set	69
	br      	1                               # 1: down to label187
.LBB59_9:
	end_block                               # label188:
	i32.const	0
	local.set	70
	local.get	70
	i64.load	__llvm_gcov_ctr.59+32
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	__llvm_gcov_ctr.59+32
	i32.const	0
	local.set	75
	local.get	75
	local.set	69
.LBB59_10:
	end_block                               # label187:
	local.get	69
	local.set	76
	local.get	76
	return
	end_function
                                        # -- End function
	.section	.text.wcscmp,"",@
	.hidden	wcscmp                          # -- Begin function wcscmp
	.globl	wcscmp
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
	.functype	wcscmp (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	local.get	5
	i64.load	.L__profc_wcscmp
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_wcscmp
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label189:
	local.get	4
	i32.load	12
	local.set	10
	local.get	10
	i32.load	0
	local.set	11
	local.get	4
	i32.load	8
	local.set	12
	local.get	12
	i32.load	0
	local.set	13
	local.get	11
	local.get	13
	i32.eq  
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
	br_if   	0                               # 0: down to label190
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	i32.const	0
	local.set	19
	local.get	19
	i64.load	__llvm_gcov_ctr.60
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	__llvm_gcov_ctr.60
	i32.const	0
	local.set	24
	local.get	24
	i64.load	.L__profc_wcscmp+32
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	i32.const	0
	local.set	28
	local.get	28
	local.get	27
	i64.store	.L__profc_wcscmp+32
	local.get	4
	i32.load	12
	local.set	29
	local.get	29
	i32.load	0
	local.set	30
	i32.const	0
	local.set	31
	local.get	31
	local.set	18
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label190
# %bb.3:                                #   in Loop: Header=BB60_1 Depth=1
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.60+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.60+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc_wcscmp+40
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc_wcscmp+40
# %bb.4:                                #   in Loop: Header=BB60_1 Depth=1
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_wcscmp+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_wcscmp+16
	local.get	4
	i32.load	8
	local.set	47
	local.get	47
	i32.load	0
	local.set	48
	i32.const	0
	local.set	49
	local.get	48
	local.get	49
	i32.ne  
	local.set	50
	local.get	50
	local.set	18
	local.get	48
	i32.eqz
	br_if   	0                               # 0: down to label190
# %bb.5:                                #   in Loop: Header=BB60_1 Depth=1
	i32.const	0
	local.set	51
	local.get	51
	i64.load	__llvm_gcov_ctr.60+16
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	__llvm_gcov_ctr.60+16
	i32.const	0
	local.set	56
	local.get	56
	i64.load	.L__profc_wcscmp+24
	local.set	57
	i64.const	1
	local.set	58
	local.get	57
	local.get	58
	i64.add 
	local.set	59
	i32.const	0
	local.set	60
	local.get	60
	local.get	59
	i64.store	.L__profc_wcscmp+24
	local.get	50
	local.set	18
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	end_block                               # label190:
	local.get	18
	local.set	61
	i32.const	1
	local.set	62
	local.get	61
	local.get	62
	i32.and 
	local.set	63
	block   	
	local.get	63
	i32.eqz
	br_if   	0                               # 0: down to label191
# %bb.7:                                #   in Loop: Header=BB60_1 Depth=1
	i32.const	0
	local.set	64
	local.get	64
	i64.load	.L__profc_wcscmp+8
	local.set	65
	i64.const	1
	local.set	66
	local.get	65
	local.get	66
	i64.add 
	local.set	67
	i32.const	0
	local.set	68
	local.get	68
	local.get	67
	i64.store	.L__profc_wcscmp+8
# %bb.8:                                #   in Loop: Header=BB60_1 Depth=1
	i32.const	0
	local.set	69
	local.get	69
	i64.load	__llvm_gcov_ctr.60+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.60+24
	local.get	4
	i32.load	12
	local.set	74
	i32.const	4
	local.set	75
	local.get	74
	local.get	75
	i32.add 
	local.set	76
	local.get	4
	local.get	76
	i32.store	12
	local.get	4
	i32.load	8
	local.set	77
	i32.const	4
	local.set	78
	local.get	77
	local.get	78
	i32.add 
	local.set	79
	local.get	4
	local.get	79
	i32.store	8
	br      	1                               # 1: up to label189
.LBB60_9:
	end_block                               # label191:
	end_loop
	local.get	4
	i32.load	12
	local.set	80
	local.get	80
	i32.load	0
	local.set	81
	local.get	4
	i32.load	8
	local.set	82
	local.get	82
	i32.load	0
	local.set	83
	local.get	81
	local.get	83
	i32.lt_s
	local.set	84
	i32.const	1
	local.set	85
	local.get	84
	local.get	85
	i32.and 
	local.set	86
	block   	
	block   	
	local.get	86
	i32.eqz
	br_if   	0                               # 0: down to label193
# %bb.10:
	i32.const	0
	local.set	87
	local.get	87
	i64.load	__llvm_gcov_ctr.60+32
	local.set	88
	i64.const	1
	local.set	89
	local.get	88
	local.get	89
	i64.add 
	local.set	90
	i32.const	0
	local.set	91
	local.get	91
	local.get	90
	i64.store	__llvm_gcov_ctr.60+32
	i32.const	0
	local.set	92
	local.get	92
	i64.load	.L__profc_wcscmp+48
	local.set	93
	i64.const	1
	local.set	94
	local.get	93
	local.get	94
	i64.add 
	local.set	95
	i32.const	0
	local.set	96
	local.get	96
	local.get	95
	i64.store	.L__profc_wcscmp+48
	i32.const	4294967295
	local.set	97
	local.get	97
	local.set	98
	br      	1                               # 1: down to label192
.LBB60_11:
	end_block                               # label193:
	i32.const	0
	local.set	99
	local.get	99
	i64.load	__llvm_gcov_ctr.60+40
	local.set	100
	i64.const	1
	local.set	101
	local.get	100
	local.get	101
	i64.add 
	local.set	102
	i32.const	0
	local.set	103
	local.get	103
	local.get	102
	i64.store	__llvm_gcov_ctr.60+40
	local.get	4
	i32.load	12
	local.set	104
	local.get	104
	i32.load	0
	local.set	105
	local.get	4
	i32.load	8
	local.set	106
	local.get	106
	i32.load	0
	local.set	107
	local.get	105
	local.get	107
	i32.gt_s
	local.set	108
	i32.const	1
	local.set	109
	local.get	108
	local.get	109
	i32.and 
	local.set	110
	local.get	110
	local.set	98
.LBB60_12:
	end_block                               # label192:
	local.get	98
	local.set	111
	local.get	111
	return
	end_function
                                        # -- End function
	.section	.text.wcscpy,"",@
	.hidden	wcscpy                          # -- Begin function wcscpy
	.globl	wcscpy
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
	.functype	wcscpy (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.61
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.61
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_wcscpy
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_wcscpy
	local.get	4
	i32.load	12
	local.set	15
	local.get	4
	local.get	15
	i32.store	4
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label195:
	local.get	4
	i32.load	8
	local.set	16
	i32.const	4
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	4
	local.get	18
	i32.store	8
	local.get	16
	i32.load	0
	local.set	19
	local.get	4
	i32.load	12
	local.set	20
	i32.const	4
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	4
	local.get	22
	i32.store	12
	local.get	20
	local.get	19
	i32.store	0
	local.get	19
	i32.eqz
	br_if   	1                               # 1: down to label194
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	i32.const	0
	local.set	23
	local.get	23
	i64.load	__llvm_gcov_ctr.61+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	__llvm_gcov_ctr.61+8
	i32.const	0
	local.set	28
	local.get	28
	i64.load	.L__profc_wcscpy+8
	local.set	29
	i64.const	1
	local.set	30
	local.get	29
	local.get	30
	i64.add 
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i64.store	.L__profc_wcscpy+8
	br      	0                               # 0: up to label195
.LBB61_3:
	end_loop
	end_block                               # label194:
	local.get	4
	i32.load	4
	local.set	33
	local.get	33
	return
	end_function
                                        # -- End function
	.section	.text.wcslen,"",@
	.hidden	wcslen                          # -- Begin function wcslen
	.globl	wcslen
	.type	wcslen,@function
wcslen:                                 # @wcslen
	.functype	wcslen (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.62
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.62
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_wcslen
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_wcslen
	local.get	3
	i32.load	12
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label197:
	local.get	3
	i32.load	12
	local.set	15
	local.get	15
	i32.load	0
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label196
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	i32.const	0
	local.set	17
	local.get	17
	i64.load	.L__profc_wcslen+8
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	.L__profc_wcslen+8
# %bb.3:                                #   in Loop: Header=BB62_1 Depth=1
	i32.const	0
	local.set	22
	local.get	22
	i64.load	__llvm_gcov_ctr.62+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	__llvm_gcov_ctr.62+8
	local.get	3
	i32.load	12
	local.set	27
	i32.const	4
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	3
	local.get	29
	i32.store	12
	br      	0                               # 0: up to label197
.LBB62_4:
	end_loop
	end_block                               # label196:
	local.get	3
	i32.load	12
	local.set	30
	local.get	3
	i32.load	8
	local.set	31
	local.get	30
	local.get	31
	i32.sub 
	local.set	32
	i32.const	2
	local.set	33
	local.get	32
	local.get	33
	i32.shr_s
	local.set	34
	local.get	34
	return
	end_function
                                        # -- End function
	.section	.text.wcsncmp,"",@
	.hidden	wcsncmp                         # -- Begin function wcsncmp
	.globl	wcsncmp
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
	.functype	wcsncmp (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_wcsncmp
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_wcsncmp
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label198:
	local.get	5
	i32.load	4
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.set	13
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label199
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.63
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.63
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_wcsncmp+48
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_wcsncmp+48
	local.get	5
	i32.load	12
	local.set	24
	local.get	24
	i32.load	0
	local.set	25
	local.get	5
	i32.load	8
	local.set	26
	local.get	26
	i32.load	0
	local.set	27
	local.get	25
	local.get	27
	i32.eq  
	local.set	28
	i32.const	0
	local.set	29
	i32.const	1
	local.set	30
	local.get	28
	local.get	30
	i32.and 
	local.set	31
	local.get	29
	local.set	13
	local.get	31
	i32.eqz
	br_if   	0                               # 0: down to label199
# %bb.3:                                #   in Loop: Header=BB63_1 Depth=1
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.63+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.63+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc_wcsncmp+56
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc_wcsncmp+56
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_wcsncmp+32
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_wcsncmp+32
	local.get	5
	i32.load	12
	local.set	47
	local.get	47
	i32.load	0
	local.set	48
	i32.const	0
	local.set	49
	local.get	49
	local.set	13
	local.get	48
	i32.eqz
	br_if   	0                               # 0: down to label199
# %bb.5:                                #   in Loop: Header=BB63_1 Depth=1
	i32.const	0
	local.set	50
	local.get	50
	i64.load	__llvm_gcov_ctr.63+16
	local.set	51
	i64.const	1
	local.set	52
	local.get	51
	local.get	52
	i64.add 
	local.set	53
	i32.const	0
	local.set	54
	local.get	54
	local.get	53
	i64.store	__llvm_gcov_ctr.63+16
	i32.const	0
	local.set	55
	local.get	55
	i64.load	.L__profc_wcsncmp+40
	local.set	56
	i64.const	1
	local.set	57
	local.get	56
	local.get	57
	i64.add 
	local.set	58
	i32.const	0
	local.set	59
	local.get	59
	local.get	58
	i64.store	.L__profc_wcsncmp+40
# %bb.6:                                #   in Loop: Header=BB63_1 Depth=1
	i32.const	0
	local.set	60
	local.get	60
	i64.load	.L__profc_wcsncmp+16
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc_wcsncmp+16
	local.get	5
	i32.load	8
	local.set	65
	local.get	65
	i32.load	0
	local.set	66
	i32.const	0
	local.set	67
	local.get	66
	local.get	67
	i32.ne  
	local.set	68
	local.get	68
	local.set	13
	local.get	66
	i32.eqz
	br_if   	0                               # 0: down to label199
# %bb.7:                                #   in Loop: Header=BB63_1 Depth=1
	i32.const	0
	local.set	69
	local.get	69
	i64.load	__llvm_gcov_ctr.63+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.63+24
	i32.const	0
	local.set	74
	local.get	74
	i64.load	.L__profc_wcsncmp+24
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	.L__profc_wcsncmp+24
	local.get	68
	local.set	13
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	end_block                               # label199:
	local.get	13
	local.set	79
	i32.const	1
	local.set	80
	local.get	79
	local.get	80
	i32.and 
	local.set	81
	block   	
	local.get	81
	i32.eqz
	br_if   	0                               # 0: down to label200
# %bb.9:                                #   in Loop: Header=BB63_1 Depth=1
	i32.const	0
	local.set	82
	local.get	82
	i64.load	.L__profc_wcsncmp+8
	local.set	83
	i64.const	1
	local.set	84
	local.get	83
	local.get	84
	i64.add 
	local.set	85
	i32.const	0
	local.set	86
	local.get	86
	local.get	85
	i64.store	.L__profc_wcsncmp+8
# %bb.10:                               #   in Loop: Header=BB63_1 Depth=1
	i32.const	0
	local.set	87
	local.get	87
	i64.load	__llvm_gcov_ctr.63+32
	local.set	88
	i64.const	1
	local.set	89
	local.get	88
	local.get	89
	i64.add 
	local.set	90
	i32.const	0
	local.set	91
	local.get	91
	local.get	90
	i64.store	__llvm_gcov_ctr.63+32
	local.get	5
	i32.load	4
	local.set	92
	i32.const	-1
	local.set	93
	local.get	92
	local.get	93
	i32.add 
	local.set	94
	local.get	5
	local.get	94
	i32.store	4
	local.get	5
	i32.load	12
	local.set	95
	i32.const	4
	local.set	96
	local.get	95
	local.get	96
	i32.add 
	local.set	97
	local.get	5
	local.get	97
	i32.store	12
	local.get	5
	i32.load	8
	local.set	98
	i32.const	4
	local.set	99
	local.get	98
	local.get	99
	i32.add 
	local.set	100
	local.get	5
	local.get	100
	i32.store	8
	br      	1                               # 1: up to label198
.LBB63_11:
	end_block                               # label200:
	end_loop
	local.get	5
	i32.load	4
	local.set	101
	block   	
	block   	
	local.get	101
	i32.eqz
	br_if   	0                               # 0: down to label202
# %bb.12:
	i32.const	0
	local.set	102
	local.get	102
	i64.load	.L__profc_wcsncmp+64
	local.set	103
	i64.const	1
	local.set	104
	local.get	103
	local.get	104
	i64.add 
	local.set	105
	i32.const	0
	local.set	106
	local.get	106
	local.get	105
	i64.store	.L__profc_wcsncmp+64
	local.get	5
	i32.load	12
	local.set	107
	local.get	107
	i32.load	0
	local.set	108
	local.get	5
	i32.load	8
	local.set	109
	local.get	109
	i32.load	0
	local.set	110
	local.get	108
	local.get	110
	i32.lt_s
	local.set	111
	i32.const	1
	local.set	112
	local.get	111
	local.get	112
	i32.and 
	local.set	113
	block   	
	block   	
	local.get	113
	i32.eqz
	br_if   	0                               # 0: down to label204
# %bb.13:
	i32.const	0
	local.set	114
	local.get	114
	i64.load	__llvm_gcov_ctr.63+40
	local.set	115
	i64.const	1
	local.set	116
	local.get	115
	local.get	116
	i64.add 
	local.set	117
	i32.const	0
	local.set	118
	local.get	118
	local.get	117
	i64.store	__llvm_gcov_ctr.63+40
	i32.const	0
	local.set	119
	local.get	119
	i64.load	.L__profc_wcsncmp+72
	local.set	120
	i64.const	1
	local.set	121
	local.get	120
	local.get	121
	i64.add 
	local.set	122
	i32.const	0
	local.set	123
	local.get	123
	local.get	122
	i64.store	.L__profc_wcsncmp+72
	i32.const	4294967295
	local.set	124
	local.get	124
	local.set	125
	br      	1                               # 1: down to label203
.LBB63_14:
	end_block                               # label204:
	i32.const	0
	local.set	126
	local.get	126
	i64.load	__llvm_gcov_ctr.63+48
	local.set	127
	i64.const	1
	local.set	128
	local.get	127
	local.get	128
	i64.add 
	local.set	129
	i32.const	0
	local.set	130
	local.get	130
	local.get	129
	i64.store	__llvm_gcov_ctr.63+48
	local.get	5
	i32.load	12
	local.set	131
	local.get	131
	i32.load	0
	local.set	132
	local.get	5
	i32.load	8
	local.set	133
	local.get	133
	i32.load	0
	local.set	134
	local.get	132
	local.get	134
	i32.gt_s
	local.set	135
	i32.const	1
	local.set	136
	local.get	135
	local.get	136
	i32.and 
	local.set	137
	local.get	137
	local.set	125
.LBB63_15:
	end_block                               # label203:
	local.get	125
	local.set	138
	local.get	138
	local.set	139
	br      	1                               # 1: down to label201
.LBB63_16:
	end_block                               # label202:
	i32.const	0
	local.set	140
	local.get	140
	i64.load	__llvm_gcov_ctr.63+56
	local.set	141
	i64.const	1
	local.set	142
	local.get	141
	local.get	142
	i64.add 
	local.set	143
	i32.const	0
	local.set	144
	local.get	144
	local.get	143
	i64.store	__llvm_gcov_ctr.63+56
	i32.const	0
	local.set	145
	local.get	145
	local.set	139
.LBB63_17:
	end_block                               # label201:
	local.get	139
	local.set	146
	local.get	146
	return
	end_function
                                        # -- End function
	.section	.text.wmemchr,"",@
	.hidden	wmemchr                         # -- Begin function wmemchr
	.globl	wmemchr
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
	.functype	wmemchr (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_wmemchr
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_wmemchr
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label205:
	local.get	5
	i32.load	4
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.set	13
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label206
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.64
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.64
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_wmemchr+16
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_wmemchr+16
	local.get	5
	i32.load	12
	local.set	24
	local.get	24
	i32.load	0
	local.set	25
	local.get	5
	i32.load	8
	local.set	26
	local.get	25
	local.get	26
	i32.ne  
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	27
	local.set	13
	local.get	29
	i32.eqz
	br_if   	0                               # 0: down to label206
# %bb.3:                                #   in Loop: Header=BB64_1 Depth=1
	i32.const	0
	local.set	30
	local.get	30
	i64.load	__llvm_gcov_ctr.64+8
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	__llvm_gcov_ctr.64+8
	i32.const	0
	local.set	35
	local.get	35
	i64.load	.L__profc_wmemchr+24
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	.L__profc_wmemchr+24
	local.get	27
	local.set	13
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	end_block                               # label206:
	local.get	13
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.and 
	local.set	42
	block   	
	local.get	42
	i32.eqz
	br_if   	0                               # 0: down to label207
# %bb.5:                                #   in Loop: Header=BB64_1 Depth=1
	i32.const	0
	local.set	43
	local.get	43
	i64.load	.L__profc_wmemchr+8
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	.L__profc_wmemchr+8
# %bb.6:                                #   in Loop: Header=BB64_1 Depth=1
	i32.const	0
	local.set	48
	local.get	48
	i64.load	__llvm_gcov_ctr.64+16
	local.set	49
	i64.const	1
	local.set	50
	local.get	49
	local.get	50
	i64.add 
	local.set	51
	i32.const	0
	local.set	52
	local.get	52
	local.get	51
	i64.store	__llvm_gcov_ctr.64+16
	local.get	5
	i32.load	4
	local.set	53
	i32.const	-1
	local.set	54
	local.get	53
	local.get	54
	i32.add 
	local.set	55
	local.get	5
	local.get	55
	i32.store	4
	local.get	5
	i32.load	12
	local.set	56
	i32.const	4
	local.set	57
	local.get	56
	local.get	57
	i32.add 
	local.set	58
	local.get	5
	local.get	58
	i32.store	12
	br      	1                               # 1: up to label205
.LBB64_7:
	end_block                               # label207:
	end_loop
	local.get	5
	i32.load	4
	local.set	59
	block   	
	block   	
	local.get	59
	i32.eqz
	br_if   	0                               # 0: down to label209
# %bb.8:
	i32.const	0
	local.set	60
	local.get	60
	i64.load	__llvm_gcov_ctr.64+24
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	__llvm_gcov_ctr.64+24
	i32.const	0
	local.set	65
	local.get	65
	i64.load	.L__profc_wmemchr+32
	local.set	66
	i64.const	1
	local.set	67
	local.get	66
	local.get	67
	i64.add 
	local.set	68
	i32.const	0
	local.set	69
	local.get	69
	local.get	68
	i64.store	.L__profc_wmemchr+32
	local.get	5
	i32.load	12
	local.set	70
	local.get	70
	local.set	71
	br      	1                               # 1: down to label208
.LBB64_9:
	end_block                               # label209:
	i32.const	0
	local.set	72
	local.get	72
	i64.load	__llvm_gcov_ctr.64+32
	local.set	73
	i64.const	1
	local.set	74
	local.get	73
	local.get	74
	i64.add 
	local.set	75
	i32.const	0
	local.set	76
	local.get	76
	local.get	75
	i64.store	__llvm_gcov_ctr.64+32
	i32.const	0
	local.set	77
	local.get	77
	local.set	71
.LBB64_10:
	end_block                               # label208:
	local.get	71
	local.set	78
	local.get	78
	return
	end_function
                                        # -- End function
	.section	.text.wmemcmp,"",@
	.hidden	wmemcmp                         # -- Begin function wmemcmp
	.globl	wmemcmp
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
	.functype	wmemcmp (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_wmemcmp
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_wmemcmp
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label210:
	local.get	5
	i32.load	4
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.set	13
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label211
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.65
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.65
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_wmemcmp+16
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_wmemcmp+16
	local.get	5
	i32.load	12
	local.set	24
	local.get	24
	i32.load	0
	local.set	25
	local.get	5
	i32.load	8
	local.set	26
	local.get	26
	i32.load	0
	local.set	27
	local.get	25
	local.get	27
	i32.eq  
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	local.get	28
	local.set	13
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label211
# %bb.3:                                #   in Loop: Header=BB65_1 Depth=1
	i32.const	0
	local.set	31
	local.get	31
	i64.load	__llvm_gcov_ctr.65+8
	local.set	32
	i64.const	1
	local.set	33
	local.get	32
	local.get	33
	i64.add 
	local.set	34
	i32.const	0
	local.set	35
	local.get	35
	local.get	34
	i64.store	__llvm_gcov_ctr.65+8
	i32.const	0
	local.set	36
	local.get	36
	i64.load	.L__profc_wmemcmp+24
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	.L__profc_wmemcmp+24
	local.get	28
	local.set	13
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	end_block                               # label211:
	local.get	13
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.and 
	local.set	43
	block   	
	local.get	43
	i32.eqz
	br_if   	0                               # 0: down to label212
# %bb.5:                                #   in Loop: Header=BB65_1 Depth=1
	i32.const	0
	local.set	44
	local.get	44
	i64.load	.L__profc_wmemcmp+8
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	local.get	47
	i64.store	.L__profc_wmemcmp+8
# %bb.6:                                #   in Loop: Header=BB65_1 Depth=1
	i32.const	0
	local.set	49
	local.get	49
	i64.load	__llvm_gcov_ctr.65+16
	local.set	50
	i64.const	1
	local.set	51
	local.get	50
	local.get	51
	i64.add 
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.65+16
	local.get	5
	i32.load	4
	local.set	54
	i32.const	-1
	local.set	55
	local.get	54
	local.get	55
	i32.add 
	local.set	56
	local.get	5
	local.get	56
	i32.store	4
	local.get	5
	i32.load	12
	local.set	57
	i32.const	4
	local.set	58
	local.get	57
	local.get	58
	i32.add 
	local.set	59
	local.get	5
	local.get	59
	i32.store	12
	local.get	5
	i32.load	8
	local.set	60
	i32.const	4
	local.set	61
	local.get	60
	local.get	61
	i32.add 
	local.set	62
	local.get	5
	local.get	62
	i32.store	8
	br      	1                               # 1: up to label210
.LBB65_7:
	end_block                               # label212:
	end_loop
	local.get	5
	i32.load	4
	local.set	63
	block   	
	block   	
	local.get	63
	i32.eqz
	br_if   	0                               # 0: down to label214
# %bb.8:
	i32.const	0
	local.set	64
	local.get	64
	i64.load	.L__profc_wmemcmp+32
	local.set	65
	i64.const	1
	local.set	66
	local.get	65
	local.get	66
	i64.add 
	local.set	67
	i32.const	0
	local.set	68
	local.get	68
	local.get	67
	i64.store	.L__profc_wmemcmp+32
	local.get	5
	i32.load	12
	local.set	69
	local.get	69
	i32.load	0
	local.set	70
	local.get	5
	i32.load	8
	local.set	71
	local.get	71
	i32.load	0
	local.set	72
	local.get	70
	local.get	72
	i32.lt_s
	local.set	73
	i32.const	1
	local.set	74
	local.get	73
	local.get	74
	i32.and 
	local.set	75
	block   	
	block   	
	local.get	75
	i32.eqz
	br_if   	0                               # 0: down to label216
# %bb.9:
	i32.const	0
	local.set	76
	local.get	76
	i64.load	__llvm_gcov_ctr.65+24
	local.set	77
	i64.const	1
	local.set	78
	local.get	77
	local.get	78
	i64.add 
	local.set	79
	i32.const	0
	local.set	80
	local.get	80
	local.get	79
	i64.store	__llvm_gcov_ctr.65+24
	i32.const	0
	local.set	81
	local.get	81
	i64.load	.L__profc_wmemcmp+40
	local.set	82
	i64.const	1
	local.set	83
	local.get	82
	local.get	83
	i64.add 
	local.set	84
	i32.const	0
	local.set	85
	local.get	85
	local.get	84
	i64.store	.L__profc_wmemcmp+40
	i32.const	4294967295
	local.set	86
	local.get	86
	local.set	87
	br      	1                               # 1: down to label215
.LBB65_10:
	end_block                               # label216:
	i32.const	0
	local.set	88
	local.get	88
	i64.load	__llvm_gcov_ctr.65+32
	local.set	89
	i64.const	1
	local.set	90
	local.get	89
	local.get	90
	i64.add 
	local.set	91
	i32.const	0
	local.set	92
	local.get	92
	local.get	91
	i64.store	__llvm_gcov_ctr.65+32
	local.get	5
	i32.load	12
	local.set	93
	local.get	93
	i32.load	0
	local.set	94
	local.get	5
	i32.load	8
	local.set	95
	local.get	95
	i32.load	0
	local.set	96
	local.get	94
	local.get	96
	i32.gt_s
	local.set	97
	i32.const	1
	local.set	98
	local.get	97
	local.get	98
	i32.and 
	local.set	99
	local.get	99
	local.set	87
.LBB65_11:
	end_block                               # label215:
	local.get	87
	local.set	100
	local.get	100
	local.set	101
	br      	1                               # 1: down to label213
.LBB65_12:
	end_block                               # label214:
	i32.const	0
	local.set	102
	local.get	102
	i64.load	__llvm_gcov_ctr.65+40
	local.set	103
	i64.const	1
	local.set	104
	local.get	103
	local.get	104
	i64.add 
	local.set	105
	i32.const	0
	local.set	106
	local.get	106
	local.get	105
	i64.store	__llvm_gcov_ctr.65+40
	i32.const	0
	local.set	107
	local.get	107
	local.set	101
.LBB65_13:
	end_block                               # label213:
	local.get	101
	local.set	108
	local.get	108
	return
	end_function
                                        # -- End function
	.section	.text.wmemcpy,"",@
	.hidden	wmemcpy                         # -- Begin function wmemcpy
	.globl	wmemcpy
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
	.functype	wmemcpy (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.66
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.66
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_wmemcpy
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_wmemcpy
	local.get	5
	i32.load	12
	local.set	16
	local.get	5
	local.get	16
	i32.store	0
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label218:
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
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label217
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.66+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.66+8
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc_wmemcpy+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc_wmemcpy+8
	local.get	5
	i32.load	8
	local.set	30
	i32.const	4
	local.set	31
	local.get	30
	local.get	31
	i32.add 
	local.set	32
	local.get	5
	local.get	32
	i32.store	8
	local.get	30
	i32.load	0
	local.set	33
	local.get	5
	i32.load	12
	local.set	34
	i32.const	4
	local.set	35
	local.get	34
	local.get	35
	i32.add 
	local.set	36
	local.get	5
	local.get	36
	i32.store	12
	local.get	34
	local.get	33
	i32.store	0
	br      	0                               # 0: up to label218
.LBB66_3:
	end_loop
	end_block                               # label217:
	local.get	5
	i32.load	0
	local.set	37
	local.get	37
	return
	end_function
                                        # -- End function
	.section	.text.wmemmove,"",@
	.hidden	wmemmove                        # -- Begin function wmemmove
	.globl	wmemmove
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
	.functype	wmemmove (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_wmemmove
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_wmemmove
	local.get	5
	i32.load	24
	local.set	11
	local.get	5
	local.get	11
	i32.store	12
	local.get	5
	i32.load	24
	local.set	12
	local.get	5
	i32.load	20
	local.set	13
	local.get	12
	local.get	13
	i32.eq  
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
	br_if   	0                               # 0: down to label220
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.67
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.67
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc_wmemmove+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc_wmemmove+8
	local.get	5
	i32.load	24
	local.set	27
	local.get	5
	local.get	27
	i32.store	28
	br      	1                               # 1: down to label219
.LBB67_2:
	end_block                               # label220:
	local.get	5
	i32.load	24
	local.set	28
	local.get	5
	i32.load	20
	local.set	29
	local.get	28
	local.get	29
	i32.sub 
	local.set	30
	local.get	5
	i32.load	16
	local.set	31
	i32.const	2
	local.set	32
	local.get	31
	local.get	32
	i32.shl 
	local.set	33
	local.get	30
	local.get	33
	i32.lt_u
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
	br_if   	0                               # 0: down to label222
# %bb.3:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.67+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.67+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_wmemmove+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_wmemmove+16
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label224:
	local.get	5
	i32.load	16
	local.set	47
	i32.const	-1
	local.set	48
	local.get	47
	local.get	48
	i32.add 
	local.set	49
	local.get	5
	local.get	49
	i32.store	16
	local.get	47
	i32.eqz
	br_if   	1                               # 1: down to label223
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
	i32.const	0
	local.set	50
	local.get	50
	i64.load	__llvm_gcov_ctr.67+16
	local.set	51
	i64.const	1
	local.set	52
	local.get	51
	local.get	52
	i64.add 
	local.set	53
	i32.const	0
	local.set	54
	local.get	54
	local.get	53
	i64.store	__llvm_gcov_ctr.67+16
	i32.const	0
	local.set	55
	local.get	55
	i64.load	.L__profc_wmemmove+24
	local.set	56
	i64.const	1
	local.set	57
	local.get	56
	local.get	57
	i64.add 
	local.set	58
	i32.const	0
	local.set	59
	local.get	59
	local.get	58
	i64.store	.L__profc_wmemmove+24
	local.get	5
	i32.load	20
	local.set	60
	local.get	5
	i32.load	16
	local.set	61
	i32.const	2
	local.set	62
	local.get	61
	local.get	62
	i32.shl 
	local.set	63
	local.get	60
	local.get	63
	i32.add 
	local.set	64
	local.get	64
	i32.load	0
	local.set	65
	local.get	5
	i32.load	24
	local.set	66
	local.get	5
	i32.load	16
	local.set	67
	i32.const	2
	local.set	68
	local.get	67
	local.get	68
	i32.shl 
	local.set	69
	local.get	66
	local.get	69
	i32.add 
	local.set	70
	local.get	70
	local.get	65
	i32.store	0
	br      	0                               # 0: up to label224
.LBB67_6:
	end_loop
	end_block                               # label223:
	br      	1                               # 1: down to label221
.LBB67_7:
	end_block                               # label222:
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label226:
	local.get	5
	i32.load	16
	local.set	71
	i32.const	-1
	local.set	72
	local.get	71
	local.get	72
	i32.add 
	local.set	73
	local.get	5
	local.get	73
	i32.store	16
	local.get	71
	i32.eqz
	br_if   	1                               # 1: down to label225
# %bb.9:                                #   in Loop: Header=BB67_8 Depth=1
	i32.const	0
	local.set	74
	local.get	74
	i64.load	__llvm_gcov_ctr.67+24
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	__llvm_gcov_ctr.67+24
	i32.const	0
	local.set	79
	local.get	79
	i64.load	.L__profc_wmemmove+32
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	.L__profc_wmemmove+32
	local.get	5
	i32.load	20
	local.set	84
	i32.const	4
	local.set	85
	local.get	84
	local.get	85
	i32.add 
	local.set	86
	local.get	5
	local.get	86
	i32.store	20
	local.get	84
	i32.load	0
	local.set	87
	local.get	5
	i32.load	24
	local.set	88
	i32.const	4
	local.set	89
	local.get	88
	local.get	89
	i32.add 
	local.set	90
	local.get	5
	local.get	90
	i32.store	24
	local.get	88
	local.get	87
	i32.store	0
	br      	0                               # 0: up to label226
.LBB67_10:
	end_loop
	end_block                               # label225:
	i32.const	0
	local.set	91
	local.get	91
	i64.load	__llvm_gcov_ctr.67+32
	local.set	92
	i64.const	1
	local.set	93
	local.get	92
	local.get	93
	i64.add 
	local.set	94
	i32.const	0
	local.set	95
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.67+32
.LBB67_11:
	end_block                               # label221:
	local.get	5
	i32.load	12
	local.set	96
	local.get	5
	local.get	96
	i32.store	28
.LBB67_12:
	end_block                               # label219:
	local.get	5
	i32.load	28
	local.set	97
	local.get	97
	return
	end_function
                                        # -- End function
	.section	.text.wmemset,"",@
	.hidden	wmemset                         # -- Begin function wmemset
	.globl	wmemset
	.type	wmemset,@function
wmemset:                                # @wmemset
	.functype	wmemset (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.68
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.68
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_wmemset
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_wmemset
	local.get	5
	i32.load	12
	local.set	16
	local.get	5
	local.get	16
	i32.store	0
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label228:
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
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label227
# %bb.2:                                #   in Loop: Header=BB68_1 Depth=1
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.68+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.68+8
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc_wmemset+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc_wmemset+8
	local.get	5
	i32.load	8
	local.set	30
	local.get	5
	i32.load	12
	local.set	31
	i32.const	4
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	5
	local.get	33
	i32.store	12
	local.get	31
	local.get	30
	i32.store	0
	br      	0                               # 0: up to label228
.LBB68_3:
	end_loop
	end_block                               # label227:
	local.get	5
	i32.load	0
	local.set	34
	local.get	34
	return
	end_function
                                        # -- End function
	.section	.text.bcopy,"",@
	.hidden	bcopy                           # -- Begin function bcopy
	.globl	bcopy
	.type	bcopy,@function
bcopy:                                  # @bcopy
	.functype	bcopy (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_bcopy
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_bcopy
	local.get	5
	i32.load	28
	local.set	11
	local.get	5
	local.get	11
	i32.store	16
	local.get	5
	i32.load	24
	local.set	12
	local.get	5
	local.get	12
	i32.store	12
	local.get	5
	i32.load	16
	local.set	13
	local.get	5
	i32.load	12
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
	block   	
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label230
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.69
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.69
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_bcopy+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_bcopy+8
	local.get	5
	i32.load	20
	local.set	28
	local.get	5
	i32.load	16
	local.set	29
	local.get	29
	local.get	28
	i32.add 
	local.set	30
	local.get	5
	local.get	30
	i32.store	16
	local.get	5
	i32.load	20
	local.set	31
	local.get	5
	i32.load	12
	local.set	32
	local.get	32
	local.get	31
	i32.add 
	local.set	33
	local.get	5
	local.get	33
	i32.store	12
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label232:
	local.get	5
	i32.load	20
	local.set	34
	local.get	34
	i32.eqz
	br_if   	1                               # 1: down to label231
# %bb.3:                                #   in Loop: Header=BB69_2 Depth=1
	i32.const	0
	local.set	35
	local.get	35
	i64.load	.L__profc_bcopy+16
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	.L__profc_bcopy+16
	local.get	5
	i32.load	16
	local.set	40
	i32.const	-1
	local.set	41
	local.get	40
	local.get	41
	i32.add 
	local.set	42
	local.get	5
	local.get	42
	i32.store	16
	local.get	42
	i32.load8_u	0
	local.set	43
	local.get	5
	i32.load	12
	local.set	44
	i32.const	-1
	local.set	45
	local.get	44
	local.get	45
	i32.add 
	local.set	46
	local.get	5
	local.get	46
	i32.store	12
	local.get	46
	local.get	43
	i32.store8	0
# %bb.4:                                #   in Loop: Header=BB69_2 Depth=1
	i32.const	0
	local.set	47
	local.get	47
	i64.load	__llvm_gcov_ctr.69+8
	local.set	48
	i64.const	1
	local.set	49
	local.get	48
	local.get	49
	i64.add 
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i64.store	__llvm_gcov_ctr.69+8
	local.get	5
	i32.load	20
	local.set	52
	i32.const	-1
	local.set	53
	local.get	52
	local.get	53
	i32.add 
	local.set	54
	local.get	5
	local.get	54
	i32.store	20
	br      	0                               # 0: up to label232
.LBB69_5:
	end_loop
	end_block                               # label231:
	br      	1                               # 1: down to label229
.LBB69_6:
	end_block                               # label230:
	local.get	5
	i32.load	16
	local.set	55
	local.get	5
	i32.load	12
	local.set	56
	local.get	55
	local.get	56
	i32.ne  
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	block   	
	local.get	59
	i32.eqz
	br_if   	0                               # 0: down to label233
# %bb.7:
	i32.const	0
	local.set	60
	local.get	60
	i64.load	.L__profc_bcopy+24
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc_bcopy+24
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label235:
	local.get	5
	i32.load	20
	local.set	65
	local.get	65
	i32.eqz
	br_if   	1                               # 1: down to label234
# %bb.9:                                #   in Loop: Header=BB69_8 Depth=1
	i32.const	0
	local.set	66
	local.get	66
	i64.load	__llvm_gcov_ctr.69+16
	local.set	67
	i64.const	1
	local.set	68
	local.get	67
	local.get	68
	i64.add 
	local.set	69
	i32.const	0
	local.set	70
	local.get	70
	local.get	69
	i64.store	__llvm_gcov_ctr.69+16
	i32.const	0
	local.set	71
	local.get	71
	i64.load	.L__profc_bcopy+32
	local.set	72
	i64.const	1
	local.set	73
	local.get	72
	local.get	73
	i64.add 
	local.set	74
	i32.const	0
	local.set	75
	local.get	75
	local.get	74
	i64.store	.L__profc_bcopy+32
	local.get	5
	i32.load	16
	local.set	76
	i32.const	1
	local.set	77
	local.get	76
	local.get	77
	i32.add 
	local.set	78
	local.get	5
	local.get	78
	i32.store	16
	local.get	76
	i32.load8_u	0
	local.set	79
	local.get	5
	i32.load	12
	local.set	80
	i32.const	1
	local.set	81
	local.get	80
	local.get	81
	i32.add 
	local.set	82
	local.get	5
	local.get	82
	i32.store	12
	local.get	80
	local.get	79
	i32.store8	0
# %bb.10:                               #   in Loop: Header=BB69_8 Depth=1
	local.get	5
	i32.load	20
	local.set	83
	i32.const	-1
	local.set	84
	local.get	83
	local.get	84
	i32.add 
	local.set	85
	local.get	5
	local.get	85
	i32.store	20
	br      	0                               # 0: up to label235
.LBB69_11:
	end_loop
	end_block                               # label234:
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.69+24
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.69+24
.LBB69_12:
	end_block                               # label233:
	i32.const	0
	local.set	91
	local.get	91
	i64.load	__llvm_gcov_ctr.69+32
	local.set	92
	i64.const	1
	local.set	93
	local.get	92
	local.get	93
	i64.add 
	local.set	94
	i32.const	0
	local.set	95
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.69+32
.LBB69_13:
	end_block                               # label229:
	return
	end_function
                                        # -- End function
	.section	.text.rotl64,"",@
	.hidden	rotl64                          # -- Begin function rotl64
	.globl	rotl64
	.type	rotl64,@function
rotl64:                                 # @rotl64
	.functype	rotl64 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.70
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.70
	local.get	4
	local.get	0
	i64.store	8
	local.get	4
	local.get	1
	i32.store	4
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotl64
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotl64
	local.get	4
	i64.load	8
	local.set	15
	local.get	4
	i32.load	4
	local.set	16
	local.get	16
	local.set	17
	local.get	17
	i64.extend_i32_u
	local.set	18
	local.get	15
	local.get	18
	i64.shl 
	local.set	19
	local.get	4
	i64.load	8
	local.set	20
	local.get	4
	i32.load	4
	local.set	21
	i32.const	64
	local.set	22
	local.get	22
	local.get	21
	i32.sub 
	local.set	23
	local.get	23
	local.set	24
	local.get	24
	i64.extend_i32_u
	local.set	25
	local.get	20
	local.get	25
	i64.shr_u
	local.set	26
	local.get	19
	local.get	26
	i64.or  
	local.set	27
	i64.const	-1
	local.set	28
	local.get	27
	local.get	28
	i64.and 
	local.set	29
	local.get	29
	return
	end_function
                                        # -- End function
	.section	.text.rotr64,"",@
	.hidden	rotr64                          # -- Begin function rotr64
	.globl	rotr64
	.type	rotr64,@function
rotr64:                                 # @rotr64
	.functype	rotr64 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.71
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.71
	local.get	4
	local.get	0
	i64.store	8
	local.get	4
	local.get	1
	i32.store	4
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotr64
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotr64
	local.get	4
	i64.load	8
	local.set	15
	local.get	4
	i32.load	4
	local.set	16
	local.get	16
	local.set	17
	local.get	17
	i64.extend_i32_u
	local.set	18
	local.get	15
	local.get	18
	i64.shr_u
	local.set	19
	local.get	4
	i64.load	8
	local.set	20
	local.get	4
	i32.load	4
	local.set	21
	i32.const	64
	local.set	22
	local.get	22
	local.get	21
	i32.sub 
	local.set	23
	local.get	23
	local.set	24
	local.get	24
	i64.extend_i32_u
	local.set	25
	local.get	20
	local.get	25
	i64.shl 
	local.set	26
	local.get	19
	local.get	26
	i64.or  
	local.set	27
	i64.const	-1
	local.set	28
	local.get	27
	local.get	28
	i64.and 
	local.set	29
	local.get	29
	return
	end_function
                                        # -- End function
	.section	.text.rotl32,"",@
	.hidden	rotl32                          # -- Begin function rotl32
	.globl	rotl32
	.type	rotl32,@function
rotl32:                                 # @rotl32
	.functype	rotl32 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.72
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.72
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotl32
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotl32
	local.get	4
	i32.load	12
	local.set	15
	local.get	4
	i32.load	8
	local.set	16
	local.get	15
	local.get	16
	i32.shl 
	local.set	17
	local.get	4
	i32.load	12
	local.set	18
	local.get	4
	i32.load	8
	local.set	19
	i32.const	32
	local.set	20
	local.get	20
	local.get	19
	i32.sub 
	local.set	21
	local.get	18
	local.get	21
	i32.shr_u
	local.set	22
	local.get	17
	local.get	22
	i32.or  
	local.set	23
	i32.const	-1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	25
	return
	end_function
                                        # -- End function
	.section	.text.rotr32,"",@
	.hidden	rotr32                          # -- Begin function rotr32
	.globl	rotr32
	.type	rotr32,@function
rotr32:                                 # @rotr32
	.functype	rotr32 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.73
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.73
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotr32
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotr32
	local.get	4
	i32.load	12
	local.set	15
	local.get	4
	i32.load	8
	local.set	16
	local.get	15
	local.get	16
	i32.shr_u
	local.set	17
	local.get	4
	i32.load	12
	local.set	18
	local.get	4
	i32.load	8
	local.set	19
	i32.const	32
	local.set	20
	local.get	20
	local.get	19
	i32.sub 
	local.set	21
	local.get	18
	local.get	21
	i32.shl 
	local.set	22
	local.get	17
	local.get	22
	i32.or  
	local.set	23
	i32.const	-1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	25
	return
	end_function
                                        # -- End function
	.section	.text.rotl_sz,"",@
	.hidden	rotl_sz                         # -- Begin function rotl_sz
	.globl	rotl_sz
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
	.functype	rotl_sz (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.74
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.74
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotl_sz
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotl_sz
	local.get	4
	i32.load	12
	local.set	15
	local.get	4
	i32.load	8
	local.set	16
	local.get	15
	local.get	16
	i32.shl 
	local.set	17
	local.get	4
	i32.load	12
	local.set	18
	local.get	4
	i32.load	8
	local.set	19
	i32.const	32
	local.set	20
	local.get	20
	local.get	19
	i32.sub 
	local.set	21
	local.get	18
	local.get	21
	i32.shr_u
	local.set	22
	local.get	17
	local.get	22
	i32.or  
	local.set	23
	i32.const	-1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	25
	return
	end_function
                                        # -- End function
	.section	.text.rotr_sz,"",@
	.hidden	rotr_sz                         # -- Begin function rotr_sz
	.globl	rotr_sz
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
	.functype	rotr_sz (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.75
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.75
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotr_sz
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotr_sz
	local.get	4
	i32.load	12
	local.set	15
	local.get	4
	i32.load	8
	local.set	16
	local.get	15
	local.get	16
	i32.shr_u
	local.set	17
	local.get	4
	i32.load	12
	local.set	18
	local.get	4
	i32.load	8
	local.set	19
	i32.const	32
	local.set	20
	local.get	20
	local.get	19
	i32.sub 
	local.set	21
	local.get	18
	local.get	21
	i32.shl 
	local.set	22
	local.get	17
	local.get	22
	i32.or  
	local.set	23
	i32.const	-1
	local.set	24
	local.get	23
	local.get	24
	i32.and 
	local.set	25
	local.get	25
	return
	end_function
                                        # -- End function
	.section	.text.rotl16,"",@
	.hidden	rotl16                          # -- Begin function rotl16
	.globl	rotl16
	.type	rotl16,@function
rotl16:                                 # @rotl16
	.functype	rotl16 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.76
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.76
	local.get	4
	local.get	0
	i32.store16	14
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotl16
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotl16
	local.get	4
	i32.load16_u	14
	local.set	15
	i32.const	65535
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	4
	i32.load	8
	local.set	18
	local.get	17
	local.get	18
	i32.shl 
	local.set	19
	local.get	4
	i32.load16_u	14
	local.set	20
	i32.const	65535
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	4
	i32.load	8
	local.set	23
	i32.const	16
	local.set	24
	local.get	24
	local.get	23
	i32.sub 
	local.set	25
	local.get	22
	local.get	25
	i32.shr_u
	local.set	26
	local.get	19
	local.get	26
	i32.or  
	local.set	27
	i32.const	65535
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	i32.const	65535
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.rotr16,"",@
	.hidden	rotr16                          # -- Begin function rotr16
	.globl	rotr16
	.type	rotr16,@function
rotr16:                                 # @rotr16
	.functype	rotr16 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.77
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.77
	local.get	4
	local.get	0
	i32.store16	14
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotr16
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotr16
	local.get	4
	i32.load16_u	14
	local.set	15
	i32.const	65535
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	4
	i32.load	8
	local.set	18
	local.get	17
	local.get	18
	i32.shr_u
	local.set	19
	local.get	4
	i32.load16_u	14
	local.set	20
	i32.const	65535
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	4
	i32.load	8
	local.set	23
	i32.const	16
	local.set	24
	local.get	24
	local.get	23
	i32.sub 
	local.set	25
	local.get	22
	local.get	25
	i32.shl 
	local.set	26
	local.get	19
	local.get	26
	i32.or  
	local.set	27
	i32.const	65535
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	i32.const	65535
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.rotl8,"",@
	.hidden	rotl8                           # -- Begin function rotl8
	.globl	rotl8
	.type	rotl8,@function
rotl8:                                  # @rotl8
	.functype	rotl8 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.78
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.78
	local.get	4
	local.get	0
	i32.store8	15
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotl8
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotl8
	local.get	4
	i32.load8_u	15
	local.set	15
	i32.const	255
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	4
	i32.load	8
	local.set	18
	local.get	17
	local.get	18
	i32.shl 
	local.set	19
	local.get	4
	i32.load8_u	15
	local.set	20
	i32.const	255
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	4
	i32.load	8
	local.set	23
	i32.const	8
	local.set	24
	local.get	24
	local.get	23
	i32.sub 
	local.set	25
	local.get	22
	local.get	25
	i32.shr_u
	local.set	26
	local.get	19
	local.get	26
	i32.or  
	local.set	27
	i32.const	255
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	i32.const	255
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.rotr8,"",@
	.hidden	rotr8                           # -- Begin function rotr8
	.globl	rotr8
	.type	rotr8,@function
rotr8:                                  # @rotr8
	.functype	rotr8 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.79
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.79
	local.get	4
	local.get	0
	i32.store8	15
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_rotr8
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_rotr8
	local.get	4
	i32.load8_u	15
	local.set	15
	i32.const	255
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	4
	i32.load	8
	local.set	18
	local.get	17
	local.get	18
	i32.shr_u
	local.set	19
	local.get	4
	i32.load8_u	15
	local.set	20
	i32.const	255
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	4
	i32.load	8
	local.set	23
	i32.const	8
	local.set	24
	local.get	24
	local.get	23
	i32.sub 
	local.set	25
	local.get	22
	local.get	25
	i32.shl 
	local.set	26
	local.get	19
	local.get	26
	i32.or  
	local.set	27
	i32.const	255
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	i32.const	255
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	local.get	31
	return
	end_function
                                        # -- End function
	.section	.text.bswap_16,"",@
	.hidden	bswap_16                        # -- Begin function bswap_16
	.globl	bswap_16
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
	.functype	bswap_16 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.80
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.80
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_bswap_16
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_bswap_16
	i32.const	255
	local.set	14
	local.get	3
	local.get	14
	i32.store16	12
	local.get	3
	i32.load16_u	14
	local.set	15
	i32.const	65535
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	3
	i32.load16_u	12
	local.set	18
	i32.const	65535
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	i32.const	8
	local.set	21
	local.get	20
	local.get	21
	i32.shl 
	local.set	22
	local.get	17
	local.get	22
	i32.and 
	local.set	23
	i32.const	8
	local.set	24
	local.get	23
	local.get	24
	i32.shr_s
	local.set	25
	local.get	3
	i32.load16_u	14
	local.set	26
	i32.const	65535
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	3
	i32.load16_u	12
	local.set	29
	i32.const	65535
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	i32.const	0
	local.set	32
	local.get	31
	local.get	32
	i32.shl 
	local.set	33
	local.get	28
	local.get	33
	i32.and 
	local.set	34
	i32.const	8
	local.set	35
	local.get	34
	local.get	35
	i32.shl 
	local.set	36
	local.get	25
	local.get	36
	i32.or  
	local.set	37
	i32.const	65535
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	local.get	39
	return
	end_function
                                        # -- End function
	.section	.text.bswap_32,"",@
	.hidden	bswap_32                        # -- Begin function bswap_32
	.globl	bswap_32
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
	.functype	bswap_32 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.81
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.81
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_bswap_32
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_bswap_32
	i32.const	255
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	local.get	3
	i32.load	12
	local.set	15
	local.get	3
	i32.load	8
	local.set	16
	i32.const	24
	local.set	17
	local.get	16
	local.get	17
	i32.shl 
	local.set	18
	local.get	15
	local.get	18
	i32.and 
	local.set	19
	i32.const	24
	local.set	20
	local.get	19
	local.get	20
	i32.shr_u
	local.set	21
	local.get	3
	i32.load	12
	local.set	22
	local.get	3
	i32.load	8
	local.set	23
	i32.const	16
	local.set	24
	local.get	23
	local.get	24
	i32.shl 
	local.set	25
	local.get	22
	local.get	25
	i32.and 
	local.set	26
	i32.const	8
	local.set	27
	local.get	26
	local.get	27
	i32.shr_u
	local.set	28
	local.get	21
	local.get	28
	i32.or  
	local.set	29
	local.get	3
	i32.load	12
	local.set	30
	local.get	3
	i32.load	8
	local.set	31
	i32.const	8
	local.set	32
	local.get	31
	local.get	32
	i32.shl 
	local.set	33
	local.get	30
	local.get	33
	i32.and 
	local.set	34
	i32.const	8
	local.set	35
	local.get	34
	local.get	35
	i32.shl 
	local.set	36
	local.get	29
	local.get	36
	i32.or  
	local.set	37
	local.get	3
	i32.load	12
	local.set	38
	local.get	3
	i32.load	8
	local.set	39
	i32.const	0
	local.set	40
	local.get	39
	local.get	40
	i32.shl 
	local.set	41
	local.get	38
	local.get	41
	i32.and 
	local.set	42
	i32.const	24
	local.set	43
	local.get	42
	local.get	43
	i32.shl 
	local.set	44
	local.get	37
	local.get	44
	i32.or  
	local.set	45
	local.get	45
	return
	end_function
                                        # -- End function
	.section	.text.bswap_64,"",@
	.hidden	bswap_64                        # -- Begin function bswap_64
	.globl	bswap_64
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
	.functype	bswap_64 (i64) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.82
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.82
	local.get	3
	local.get	0
	i64.store	8
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_bswap_64
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_bswap_64
	i64.const	255
	local.set	14
	local.get	3
	local.get	14
	i64.store	0
	local.get	3
	i64.load	8
	local.set	15
	local.get	3
	i64.load	0
	local.set	16
	i64.const	56
	local.set	17
	local.get	16
	local.get	17
	i64.shl 
	local.set	18
	local.get	15
	local.get	18
	i64.and 
	local.set	19
	i64.const	56
	local.set	20
	local.get	19
	local.get	20
	i64.shr_u
	local.set	21
	local.get	3
	i64.load	8
	local.set	22
	local.get	3
	i64.load	0
	local.set	23
	i64.const	48
	local.set	24
	local.get	23
	local.get	24
	i64.shl 
	local.set	25
	local.get	22
	local.get	25
	i64.and 
	local.set	26
	i64.const	40
	local.set	27
	local.get	26
	local.get	27
	i64.shr_u
	local.set	28
	local.get	21
	local.get	28
	i64.or  
	local.set	29
	local.get	3
	i64.load	8
	local.set	30
	local.get	3
	i64.load	0
	local.set	31
	i64.const	40
	local.set	32
	local.get	31
	local.get	32
	i64.shl 
	local.set	33
	local.get	30
	local.get	33
	i64.and 
	local.set	34
	i64.const	24
	local.set	35
	local.get	34
	local.get	35
	i64.shr_u
	local.set	36
	local.get	29
	local.get	36
	i64.or  
	local.set	37
	local.get	3
	i64.load	8
	local.set	38
	local.get	3
	i64.load	0
	local.set	39
	i64.const	32
	local.set	40
	local.get	39
	local.get	40
	i64.shl 
	local.set	41
	local.get	38
	local.get	41
	i64.and 
	local.set	42
	i64.const	8
	local.set	43
	local.get	42
	local.get	43
	i64.shr_u
	local.set	44
	local.get	37
	local.get	44
	i64.or  
	local.set	45
	local.get	3
	i64.load	8
	local.set	46
	local.get	3
	i64.load	0
	local.set	47
	i64.const	24
	local.set	48
	local.get	47
	local.get	48
	i64.shl 
	local.set	49
	local.get	46
	local.get	49
	i64.and 
	local.set	50
	i64.const	8
	local.set	51
	local.get	50
	local.get	51
	i64.shl 
	local.set	52
	local.get	45
	local.get	52
	i64.or  
	local.set	53
	local.get	3
	i64.load	8
	local.set	54
	local.get	3
	i64.load	0
	local.set	55
	i64.const	16
	local.set	56
	local.get	55
	local.get	56
	i64.shl 
	local.set	57
	local.get	54
	local.get	57
	i64.and 
	local.set	58
	i64.const	24
	local.set	59
	local.get	58
	local.get	59
	i64.shl 
	local.set	60
	local.get	53
	local.get	60
	i64.or  
	local.set	61
	local.get	3
	i64.load	8
	local.set	62
	local.get	3
	i64.load	0
	local.set	63
	i64.const	8
	local.set	64
	local.get	63
	local.get	64
	i64.shl 
	local.set	65
	local.get	62
	local.get	65
	i64.and 
	local.set	66
	i64.const	40
	local.set	67
	local.get	66
	local.get	67
	i64.shl 
	local.set	68
	local.get	61
	local.get	68
	i64.or  
	local.set	69
	local.get	3
	i64.load	8
	local.set	70
	local.get	3
	i64.load	0
	local.set	71
	i64.const	0
	local.set	72
	local.get	71
	local.get	72
	i64.shl 
	local.set	73
	local.get	70
	local.get	73
	i64.and 
	local.set	74
	i64.const	56
	local.set	75
	local.get	74
	local.get	75
	i64.shl 
	local.set	76
	local.get	69
	local.get	76
	i64.or  
	local.set	77
	local.get	77
	return
	end_function
                                        # -- End function
	.section	.text.ffs,"",@
	.hidden	ffs                             # -- Begin function ffs
	.globl	ffs
	.type	ffs,@function
ffs:                                    # @ffs
	.functype	ffs (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	local.get	4
	i64.load	.L__profc_ffs
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_ffs
	i32.const	0
	local.set	9
	local.get	3
	local.get	9
	i32.store	4
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label238:
	local.get	3
	i32.load	4
	local.set	10
	i32.const	32
	local.set	11
	local.get	10
	local.get	11
	i32.lt_u
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	local.get	14
	i32.eqz
	br_if   	1                               # 1: down to label237
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	i32.const	0
	local.set	15
	local.get	15
	i64.load	.L__profc_ffs+8
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.add 
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	.L__profc_ffs+8
	local.get	3
	i32.load	8
	local.set	20
	local.get	3
	i32.load	4
	local.set	21
	i32.const	1
	local.set	22
	local.get	22
	local.get	21
	i32.shl 
	local.set	23
	local.get	20
	local.get	23
	i32.and 
	local.set	24
	block   	
	local.get	24
	i32.eqz
	br_if   	0                               # 0: down to label239
# %bb.3:
	i32.const	0
	local.set	25
	local.get	25
	i64.load	__llvm_gcov_ctr.83
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.83
	i32.const	0
	local.set	30
	local.get	30
	i64.load	.L__profc_ffs+16
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	.L__profc_ffs+16
	local.get	3
	i32.load	4
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.add 
	local.set	37
	local.get	3
	local.get	37
	i32.store	12
	br      	3                               # 3: down to label236
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	end_block                               # label239:
# %bb.5:                                #   in Loop: Header=BB83_1 Depth=1
	i32.const	0
	local.set	38
	local.get	38
	i64.load	__llvm_gcov_ctr.83+8
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	__llvm_gcov_ctr.83+8
	local.get	3
	i32.load	4
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	3
	local.get	45
	i32.store	4
	br      	0                               # 0: up to label238
.LBB83_6:
	end_loop
	end_block                               # label237:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.83+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.83+16
	i32.const	0
	local.set	51
	local.get	3
	local.get	51
	i32.store	12
.LBB83_7:
	end_block                               # label236:
	local.get	3
	i32.load	12
	local.set	52
	local.get	52
	return
	end_function
                                        # -- End function
	.section	.text.libiberty_ffs,"",@
	.hidden	libiberty_ffs                   # -- Begin function libiberty_ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
	.functype	libiberty_ffs (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32
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
	local.get	4
	i64.load	.L__profc_libiberty_ffs
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc_libiberty_ffs
	local.get	3
	i32.load	8
	local.set	9
	block   	
	block   	
	local.get	9
	br_if   	0                               # 0: down to label241
# %bb.1:
	i32.const	0
	local.set	10
	local.get	10
	i64.load	__llvm_gcov_ctr.84+8
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	__llvm_gcov_ctr.84+8
	i32.const	0
	local.set	15
	local.get	15
	i64.load	.L__profc_libiberty_ffs+8
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.add 
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	.L__profc_libiberty_ffs+8
	i32.const	0
	local.set	20
	local.get	3
	local.get	20
	i32.store	12
	br      	1                               # 1: down to label240
.LBB84_2:
	end_block                               # label241:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.84
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.84
	i32.const	1
	local.set	26
	local.get	3
	local.get	26
	i32.store	4
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label243:
	local.get	3
	i32.load	8
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
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
	local.get	35
	i32.eqz
	br_if   	1                               # 1: down to label242
# %bb.4:                                #   in Loop: Header=BB84_3 Depth=1
	i32.const	0
	local.set	36
	local.get	36
	i64.load	.L__profc_libiberty_ffs+16
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	.L__profc_libiberty_ffs+16
	local.get	3
	i32.load	8
	local.set	41
	i32.const	1
	local.set	42
	local.get	41
	local.get	42
	i32.shr_s
	local.set	43
	local.get	3
	local.get	43
	i32.store	8
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
	i32.const	0
	local.set	44
	local.get	44
	i64.load	__llvm_gcov_ctr.84+16
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	local.get	47
	i64.store	__llvm_gcov_ctr.84+16
	local.get	3
	i32.load	4
	local.set	49
	i32.const	1
	local.set	50
	local.get	49
	local.get	50
	i32.add 
	local.set	51
	local.get	3
	local.get	51
	i32.store	4
	br      	0                               # 0: up to label243
.LBB84_6:
	end_loop
	end_block                               # label242:
	local.get	3
	i32.load	4
	local.set	52
	local.get	3
	local.get	52
	i32.store	12
.LBB84_7:
	end_block                               # label240:
	local.get	3
	i32.load	12
	local.set	53
	local.get	53
	return
	end_function
                                        # -- End function
	.section	.text.gl_isinff,"",@
	.hidden	gl_isinff                       # -- Begin function gl_isinff
	.globl	gl_isinff
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
	.functype	gl_isinff (f32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.85
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.85
	local.get	3
	local.get	0
	f32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_gl_isinff
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_gl_isinff
	local.get	3
	f32.load	12
	local.set	14
	f32.const	-0x1.fffffep127
	local.set	15
	local.get	14
	local.get	15
	f32.lt  
	local.set	16
	i32.const	1
	local.set	17
	i32.const	1
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	local.get	17
	local.set	20
	block   	
	local.get	19
	br_if   	0                               # 0: down to label244
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.85+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.85+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_gl_isinff+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_gl_isinff+8
	local.get	3
	f32.load	12
	local.set	31
	f32.const	0x1.fffffep127
	local.set	32
	local.get	31
	local.get	32
	f32.gt  
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	33
	local.set	20
	local.get	35
	br_if   	0                               # 0: down to label244
# %bb.2:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.85+16
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.85+16
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc_gl_isinff+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc_gl_isinff+16
	local.get	33
	local.set	20
.LBB85_3:
	end_block                               # label244:
	local.get	20
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.and 
	local.set	48
	local.get	48
	return
	end_function
                                        # -- End function
	.section	.text.gl_isinfd,"",@
	.hidden	gl_isinfd                       # -- Begin function gl_isinfd
	.globl	gl_isinfd
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
	.functype	gl_isinfd (f64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.86
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.86
	local.get	3
	local.get	0
	f64.store	8
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc_gl_isinfd
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc_gl_isinfd
	local.get	3
	f64.load	8
	local.set	14
	f64.const	-0x1.fffffffffffffp1023
	local.set	15
	local.get	14
	local.get	15
	f64.lt  
	local.set	16
	i32.const	1
	local.set	17
	i32.const	1
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	local.get	17
	local.set	20
	block   	
	local.get	19
	br_if   	0                               # 0: down to label245
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.86+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.86+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_gl_isinfd+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_gl_isinfd+8
	local.get	3
	f64.load	8
	local.set	31
	f64.const	0x1.fffffffffffffp1023
	local.set	32
	local.get	31
	local.get	32
	f64.gt  
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	33
	local.set	20
	local.get	35
	br_if   	0                               # 0: down to label245
# %bb.2:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.86+16
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.86+16
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc_gl_isinfd+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc_gl_isinfd+16
	local.get	33
	local.set	20
.LBB86_3:
	end_block                               # label245:
	local.get	20
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.and 
	local.set	48
	local.get	48
	return
	end_function
                                        # -- End function
	.section	.text.gl_isinfl,"",@
	.hidden	gl_isinfl                       # -- Begin function gl_isinfl
	.globl	gl_isinfl
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
	.functype	gl_isinfl (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.87
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	local.get	5
	local.get	8
	i64.store	__llvm_gcov_ctr.87
	local.get	4
	local.get	1
	i64.store	8
	local.get	4
	local.get	0
	i64.store	0
	local.get	5
	i64.load	.L__profc_gl_isinfl
	local.set	9
	local.get	9
	local.get	7
	i64.add 
	local.set	10
	local.get	5
	local.get	10
	i64.store	.L__profc_gl_isinfl
	local.get	4
	i64.load	8
	local.set	11
	local.get	4
	i64.load	0
	local.set	12
	i64.const	-281474976710657
	local.set	13
	i64.const	-1
	local.set	14
	local.get	12
	local.get	11
	local.get	14
	local.get	13
	call	__lttf2
	local.set	15
	local.get	15
	local.get	5
	i32.lt_s
	local.set	16
	i32.const	1
	local.set	17
	i32.const	1
	local.set	18
	local.get	16
	local.get	18
	i32.and 
	local.set	19
	local.get	17
	local.set	20
	block   	
	local.get	19
	br_if   	0                               # 0: down to label246
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.87+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	local.get	21
	local.get	24
	i64.store	__llvm_gcov_ctr.87+8
	local.get	21
	i64.load	.L__profc_gl_isinfl+8
	local.set	25
	local.get	25
	local.get	23
	i64.add 
	local.set	26
	local.get	21
	local.get	26
	i64.store	.L__profc_gl_isinfl+8
	local.get	4
	i64.load	8
	local.set	27
	local.get	4
	i64.load	0
	local.set	28
	i64.const	9223090561878065151
	local.set	29
	i64.const	-1
	local.set	30
	local.get	28
	local.get	27
	local.get	30
	local.get	29
	call	__gttf2
	local.set	31
	local.get	31
	local.get	21
	i32.gt_s
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	local.get	32
	local.set	20
	local.get	34
	br_if   	0                               # 0: down to label246
# %bb.2:
	i32.const	0
	local.set	35
	local.get	35
	i64.load	__llvm_gcov_ctr.87+16
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.87+16
	i32.const	0
	local.set	40
	local.get	40
	i64.load	.L__profc_gl_isinfl+16
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	.L__profc_gl_isinfl+16
	local.get	32
	local.set	20
.LBB87_3:
	end_block                               # label246:
	local.get	20
	local.set	45
	i32.const	1
	local.set	46
	local.get	45
	local.get	46
	i32.and 
	local.set	47
	i32.const	16
	local.set	48
	local.get	4
	local.get	48
	i32.add 
	local.set	49
	local.get	49
	global.set	__stack_pointer
	local.get	47
	return
	end_function
                                        # -- End function
	.section	.text._Qp_itoq,"",@
	.hidden	_Qp_itoq                        # -- Begin function _Qp_itoq
	.globl	_Qp_itoq
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
	.functype	_Qp_itoq (i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, f64, i32, i32, i32, i32, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.88
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	local.get	5
	local.get	8
	i64.store	__llvm_gcov_ctr.88
	local.get	4
	local.get	0
	i32.store	28
	local.get	4
	local.get	1
	i32.store	24
	local.get	5
	i64.load	.L__profc__Qp_itoq
	local.set	9
	local.get	9
	local.get	7
	i64.add 
	local.set	10
	local.get	5
	local.get	10
	i64.store	.L__profc__Qp_itoq
	local.get	4
	i32.load	24
	local.set	11
	local.get	11
	f64.convert_i32_s
	local.set	12
	i32.const	8
	local.set	13
	local.get	4
	local.get	13
	i32.add 
	local.set	14
	local.get	14
	local.get	12
	call	__extenddftf2
	i32.const	16
	local.set	15
	local.get	4
	local.get	15
	i32.add 
	local.set	16
	local.get	16
	i64.load	0
	local.set	17
	local.get	4
	i64.load	8
	local.set	18
	local.get	4
	i32.load	28
	local.set	19
	local.get	19
	local.get	17
	i64.store	8
	local.get	19
	local.get	18
	i64.store	0
	i32.const	32
	local.set	20
	local.get	4
	local.get	20
	i32.add 
	local.set	21
	local.get	21
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, f32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, f32, f32, i32, i32, f32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.89
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.89
	local.get	4
	local.get	0
	f32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_ldexpf
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_ldexpf
	local.get	4
	f32.load	12
	local.set	15
	local.get	15
	i32.reinterpret_f32
	local.set	16
	i32.const	2147483647
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	i32.const	2139095040
	local.set	19
	local.get	18
	local.get	19
	i32.gt_s
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	block   	
	local.get	22
	br_if   	0                               # 0: down to label247
# %bb.1:
	i32.const	0
	local.set	23
	local.get	23
	i64.load	__llvm_gcov_ctr.89+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	__llvm_gcov_ctr.89+8
	i32.const	0
	local.set	28
	local.get	28
	i64.load	.L__profc_ldexpf+16
	local.set	29
	i64.const	1
	local.set	30
	local.get	29
	local.get	30
	i64.add 
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i64.store	.L__profc_ldexpf+16
	local.get	4
	f32.load	12
	local.set	33
	local.get	4
	f32.load	12
	local.set	34
	local.get	33
	local.get	34
	f32.add 
	local.set	35
	local.get	4
	f32.load	12
	local.set	36
	local.get	35
	local.get	36
	f32.eq  
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	local.get	39
	br_if   	0                               # 0: down to label247
# %bb.2:
	i32.const	0
	local.set	40
	local.get	40
	i64.load	__llvm_gcov_ctr.89+16
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	__llvm_gcov_ctr.89+16
	i32.const	0
	local.set	45
	local.get	45
	i64.load	.L__profc_ldexpf+24
	local.set	46
	i64.const	1
	local.set	47
	local.get	46
	local.get	47
	i64.add 
	local.set	48
	i32.const	0
	local.set	49
	local.get	49
	local.get	48
	i64.store	.L__profc_ldexpf+24
# %bb.3:
	i32.const	0
	local.set	50
	local.get	50
	i64.load	.L__profc_ldexpf+8
	local.set	51
	i64.const	1
	local.set	52
	local.get	51
	local.get	52
	i64.add 
	local.set	53
	i32.const	0
	local.set	54
	local.get	54
	local.get	53
	i64.store	.L__profc_ldexpf+8
	local.get	4
	i32.load	8
	local.set	55
	i32.const	0
	local.set	56
	local.get	55
	local.get	56
	i32.lt_s
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	local.get	59
	i64.extend_i32_u
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	i64.load	.L__profc_ldexpf+32
	local.set	62
	local.get	62
	local.get	60
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc_ldexpf+32
	f32.const	0x1p-1
	local.set	65
	f32.const	0x1p1
	local.set	66
	i32.const	1
	local.set	67
	local.get	57
	local.get	67
	i32.and 
	local.set	68
	local.get	65
	local.get	66
	local.get	68
	f32.select
	local.set	69
	local.get	4
	local.get	69
	f32.store	4
.LBB89_4:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label248:
	i32.const	0
	local.set	70
	local.get	70
	i64.load	.L__profc_ldexpf+40
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	.L__profc_ldexpf+40
	local.get	4
	i32.load	8
	local.set	75
	i32.const	2
	local.set	76
	local.get	75
	local.get	76
	i32.rem_s
	local.set	77
	block   	
	local.get	77
	i32.eqz
	br_if   	0                               # 0: down to label249
# %bb.5:                                #   in Loop: Header=BB89_4 Depth=1
	i32.const	0
	local.set	78
	local.get	78
	i64.load	__llvm_gcov_ctr.89+24
	local.set	79
	i64.const	1
	local.set	80
	local.get	79
	local.get	80
	i64.add 
	local.set	81
	i32.const	0
	local.set	82
	local.get	82
	local.get	81
	i64.store	__llvm_gcov_ctr.89+24
	i32.const	0
	local.set	83
	local.get	83
	i64.load	.L__profc_ldexpf+48
	local.set	84
	i64.const	1
	local.set	85
	local.get	84
	local.get	85
	i64.add 
	local.set	86
	i32.const	0
	local.set	87
	local.get	87
	local.get	86
	i64.store	.L__profc_ldexpf+48
	local.get	4
	f32.load	4
	local.set	88
	local.get	4
	f32.load	12
	local.set	89
	local.get	89
	local.get	88
	f32.mul 
	local.set	90
	local.get	4
	local.get	90
	f32.store	12
.LBB89_6:                               #   in Loop: Header=BB89_4 Depth=1
	end_block                               # label249:
	local.get	4
	i32.load	8
	local.set	91
	i32.const	2
	local.set	92
	local.get	91
	local.get	92
	i32.div_s
	local.set	93
	local.get	4
	local.get	93
	i32.store	8
	local.get	4
	i32.load	8
	local.set	94
	block   	
	block   	
	local.get	94
	br_if   	0                               # 0: down to label251
# %bb.7:
	i32.const	0
	local.set	95
	local.get	95
	i64.load	.L__profc_ldexpf+56
	local.set	96
	i64.const	1
	local.set	97
	local.get	96
	local.get	97
	i64.add 
	local.set	98
	i32.const	0
	local.set	99
	local.get	99
	local.get	98
	i64.store	.L__profc_ldexpf+56
	br      	1                               # 1: down to label250
.LBB89_8:                               #   in Loop: Header=BB89_4 Depth=1
	end_block                               # label251:
	i32.const	0
	local.set	100
	local.get	100
	i64.load	__llvm_gcov_ctr.89+32
	local.set	101
	i64.const	1
	local.set	102
	local.get	101
	local.get	102
	i64.add 
	local.set	103
	i32.const	0
	local.set	104
	local.get	104
	local.get	103
	i64.store	__llvm_gcov_ctr.89+32
	local.get	4
	f32.load	4
	local.set	105
	local.get	4
	f32.load	4
	local.set	106
	local.get	105
	local.get	106
	f32.mul 
	local.set	107
	local.get	4
	local.get	107
	f32.store	4
	br      	1                               # 1: up to label248
.LBB89_9:
	end_block                               # label250:
	end_loop
.LBB89_10:
	end_block                               # label247:
	local.get	4
	f32.load	12
	local.set	108
	local.get	108
	return
	end_function
                                        # -- End function
	.section	.text.ldexp,"",@
	.hidden	ldexp                           # -- Begin function ldexp
	.globl	ldexp
	.type	ldexp,@function
ldexp:                                  # @ldexp
	.functype	ldexp (f64, i32) -> (f64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, f64, f64, i32, i32, f64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.90
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.90
	local.get	4
	local.get	0
	f64.store	24
	local.get	4
	local.get	1
	i32.store	20
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_ldexp
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_ldexp
	local.get	4
	f64.load	24
	local.set	15
	local.get	15
	i64.reinterpret_f64
	local.set	16
	i64.const	9223372036854775807
	local.set	17
	local.get	16
	local.get	17
	i64.and 
	local.set	18
	i64.const	9218868437227405312
	local.set	19
	local.get	18
	local.get	19
	i64.gt_s
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	block   	
	local.get	22
	br_if   	0                               # 0: down to label252
# %bb.1:
	i32.const	0
	local.set	23
	local.get	23
	i64.load	__llvm_gcov_ctr.90+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	__llvm_gcov_ctr.90+8
	i32.const	0
	local.set	28
	local.get	28
	i64.load	.L__profc_ldexp+16
	local.set	29
	i64.const	1
	local.set	30
	local.get	29
	local.get	30
	i64.add 
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i64.store	.L__profc_ldexp+16
	local.get	4
	f64.load	24
	local.set	33
	local.get	4
	f64.load	24
	local.set	34
	local.get	33
	local.get	34
	f64.add 
	local.set	35
	local.get	4
	f64.load	24
	local.set	36
	local.get	35
	local.get	36
	f64.eq  
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	local.get	39
	br_if   	0                               # 0: down to label252
# %bb.2:
	i32.const	0
	local.set	40
	local.get	40
	i64.load	__llvm_gcov_ctr.90+16
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	__llvm_gcov_ctr.90+16
	i32.const	0
	local.set	45
	local.get	45
	i64.load	.L__profc_ldexp+24
	local.set	46
	i64.const	1
	local.set	47
	local.get	46
	local.get	47
	i64.add 
	local.set	48
	i32.const	0
	local.set	49
	local.get	49
	local.get	48
	i64.store	.L__profc_ldexp+24
# %bb.3:
	i32.const	0
	local.set	50
	local.get	50
	i64.load	.L__profc_ldexp+8
	local.set	51
	i64.const	1
	local.set	52
	local.get	51
	local.get	52
	i64.add 
	local.set	53
	i32.const	0
	local.set	54
	local.get	54
	local.get	53
	i64.store	.L__profc_ldexp+8
	local.get	4
	i32.load	20
	local.set	55
	i32.const	0
	local.set	56
	local.get	55
	local.get	56
	i32.lt_s
	local.set	57
	i32.const	1
	local.set	58
	local.get	57
	local.get	58
	i32.and 
	local.set	59
	local.get	59
	i64.extend_i32_u
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	i64.load	.L__profc_ldexp+32
	local.set	62
	local.get	62
	local.get	60
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc_ldexp+32
	f64.const	0x1p-1
	local.set	65
	f64.const	0x1p1
	local.set	66
	i32.const	1
	local.set	67
	local.get	57
	local.get	67
	i32.and 
	local.set	68
	local.get	65
	local.get	66
	local.get	68
	f64.select
	local.set	69
	local.get	4
	local.get	69
	f64.store	8
.LBB90_4:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label253:
	i32.const	0
	local.set	70
	local.get	70
	i64.load	.L__profc_ldexp+40
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	.L__profc_ldexp+40
	local.get	4
	i32.load	20
	local.set	75
	i32.const	2
	local.set	76
	local.get	75
	local.get	76
	i32.rem_s
	local.set	77
	block   	
	local.get	77
	i32.eqz
	br_if   	0                               # 0: down to label254
# %bb.5:                                #   in Loop: Header=BB90_4 Depth=1
	i32.const	0
	local.set	78
	local.get	78
	i64.load	__llvm_gcov_ctr.90+24
	local.set	79
	i64.const	1
	local.set	80
	local.get	79
	local.get	80
	i64.add 
	local.set	81
	i32.const	0
	local.set	82
	local.get	82
	local.get	81
	i64.store	__llvm_gcov_ctr.90+24
	i32.const	0
	local.set	83
	local.get	83
	i64.load	.L__profc_ldexp+48
	local.set	84
	i64.const	1
	local.set	85
	local.get	84
	local.get	85
	i64.add 
	local.set	86
	i32.const	0
	local.set	87
	local.get	87
	local.get	86
	i64.store	.L__profc_ldexp+48
	local.get	4
	f64.load	8
	local.set	88
	local.get	4
	f64.load	24
	local.set	89
	local.get	89
	local.get	88
	f64.mul 
	local.set	90
	local.get	4
	local.get	90
	f64.store	24
.LBB90_6:                               #   in Loop: Header=BB90_4 Depth=1
	end_block                               # label254:
	local.get	4
	i32.load	20
	local.set	91
	i32.const	2
	local.set	92
	local.get	91
	local.get	92
	i32.div_s
	local.set	93
	local.get	4
	local.get	93
	i32.store	20
	local.get	4
	i32.load	20
	local.set	94
	block   	
	block   	
	local.get	94
	br_if   	0                               # 0: down to label256
# %bb.7:
	i32.const	0
	local.set	95
	local.get	95
	i64.load	.L__profc_ldexp+56
	local.set	96
	i64.const	1
	local.set	97
	local.get	96
	local.get	97
	i64.add 
	local.set	98
	i32.const	0
	local.set	99
	local.get	99
	local.get	98
	i64.store	.L__profc_ldexp+56
	br      	1                               # 1: down to label255
.LBB90_8:                               #   in Loop: Header=BB90_4 Depth=1
	end_block                               # label256:
	i32.const	0
	local.set	100
	local.get	100
	i64.load	__llvm_gcov_ctr.90+32
	local.set	101
	i64.const	1
	local.set	102
	local.get	101
	local.get	102
	i64.add 
	local.set	103
	i32.const	0
	local.set	104
	local.get	104
	local.get	103
	i64.store	__llvm_gcov_ctr.90+32
	local.get	4
	f64.load	8
	local.set	105
	local.get	4
	f64.load	8
	local.set	106
	local.get	105
	local.get	106
	f64.mul 
	local.set	107
	local.get	4
	local.get	107
	f64.store	8
	br      	1                               # 1: up to label253
.LBB90_9:
	end_block                               # label255:
	end_loop
.LBB90_10:
	end_block                               # label252:
	local.get	4
	f64.load	24
	local.set	108
	local.get	108
	return
	end_function
                                        # -- End function
	.section	.text.ldexpl,"",@
	.hidden	ldexpl                          # -- Begin function ldexpl
	.globl	ldexpl
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
	.functype	ldexpl (i32, i64, i64, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32
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
	i32.const	0
	local.set	7
	local.get	7
	i64.load	__llvm_gcov_ctr.91
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.add 
	local.set	10
	local.get	7
	local.get	10
	i64.store	__llvm_gcov_ctr.91
	local.get	6
	local.get	2
	i64.store	88
	local.get	6
	local.get	1
	i64.store	80
	local.get	6
	local.get	3
	i32.store	76
	local.get	7
	i64.load	.L__profc_ldexpl
	local.set	11
	local.get	11
	local.get	9
	i64.add 
	local.set	12
	local.get	7
	local.get	12
	i64.store	.L__profc_ldexpl
	local.get	6
	i64.load	88
	local.set	13
	local.get	6
	i64.load	80
	local.set	14
	i64.const	0
	local.set	15
	local.get	14
	local.get	15
	i64.ne  
	local.set	16
	i64.const	9223372036854775807
	local.set	17
	local.get	13
	local.get	17
	i64.and 
	local.set	18
	i64.const	9223090561878065152
	local.set	19
	local.get	18
	local.get	19
	i64.eq  
	local.set	20
	local.get	18
	local.get	19
	i64.gt_s
	local.set	21
	local.get	16
	local.get	21
	local.get	20
	i32.select
	local.set	22
	i32.const	1
	local.set	23
	local.get	22
	local.get	23
	i32.and 
	local.set	24
	block   	
	local.get	24
	br_if   	0                               # 0: down to label257
# %bb.1:
	i32.const	0
	local.set	25
	local.get	25
	i64.load	__llvm_gcov_ctr.91+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	local.get	25
	local.get	28
	i64.store	__llvm_gcov_ctr.91+8
	local.get	25
	i64.load	.L__profc_ldexpl+16
	local.set	29
	local.get	29
	local.get	27
	i64.add 
	local.set	30
	local.get	25
	local.get	30
	i64.store	.L__profc_ldexpl+16
	local.get	6
	i64.load	88
	local.set	31
	local.get	6
	i64.load	80
	local.set	32
	i32.const	32
	local.set	33
	local.get	6
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.get	32
	local.get	31
	local.get	32
	local.get	31
	call	__addtf3
	i32.const	40
	local.set	35
	local.get	6
	local.get	35
	i32.add 
	local.set	36
	local.get	36
	i64.load	0
	local.set	37
	local.get	6
	i64.load	32
	local.set	38
	local.get	38
	local.get	37
	local.get	32
	local.get	31
	call	__eqtf2
	local.set	39
	local.get	39
	i32.eqz
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.and 
	local.set	42
	local.get	42
	br_if   	0                               # 0: down to label257
# %bb.2:
	i32.const	0
	local.set	43
	local.get	43
	i64.load	__llvm_gcov_ctr.91+16
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	__llvm_gcov_ctr.91+16
	i32.const	0
	local.set	48
	local.get	48
	i64.load	.L__profc_ldexpl+24
	local.set	49
	i64.const	1
	local.set	50
	local.get	49
	local.get	50
	i64.add 
	local.set	51
	i32.const	0
	local.set	52
	local.get	52
	local.get	51
	i64.store	.L__profc_ldexpl+24
# %bb.3:
	i32.const	0
	local.set	53
	local.get	53
	i64.load	.L__profc_ldexpl+8
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	local.get	53
	local.get	56
	i64.store	.L__profc_ldexpl+8
	local.get	6
	i32.load	76
	local.set	57
	local.get	57
	local.get	53
	i32.lt_s
	local.set	58
	i32.const	31
	local.set	59
	local.get	57
	local.get	59
	i32.shr_u
	local.set	60
	local.get	60
	i64.extend_i32_u
	local.set	61
	local.get	53
	i64.load	.L__profc_ldexpl+32
	local.set	62
	local.get	62
	local.get	61
	i64.add 
	local.set	63
	local.get	53
	local.get	63
	i64.store	.L__profc_ldexpl+32
	i64.const	4611686018427387904
	local.set	64
	i64.const	4611123068473966592
	local.set	65
	local.get	65
	local.get	64
	local.get	58
	i64.select
	local.set	66
	local.get	6
	local.get	66
	i64.store	56
	i64.const	0
	local.set	67
	local.get	6
	local.get	67
	i64.store	48
.LBB91_4:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label258:
	i32.const	0
	local.set	68
	local.get	68
	i64.load	.L__profc_ldexpl+40
	local.set	69
	i64.const	1
	local.set	70
	local.get	69
	local.get	70
	i64.add 
	local.set	71
	i32.const	0
	local.set	72
	local.get	72
	local.get	71
	i64.store	.L__profc_ldexpl+40
	local.get	6
	i32.load	76
	local.set	73
	i32.const	2
	local.set	74
	local.get	73
	local.get	74
	i32.rem_s
	local.set	75
	block   	
	local.get	75
	i32.eqz
	br_if   	0                               # 0: down to label259
# %bb.5:                                #   in Loop: Header=BB91_4 Depth=1
	i32.const	0
	local.set	76
	local.get	76
	i64.load	__llvm_gcov_ctr.91+24
	local.set	77
	i64.const	1
	local.set	78
	local.get	77
	local.get	78
	i64.add 
	local.set	79
	local.get	76
	local.get	79
	i64.store	__llvm_gcov_ctr.91+24
	local.get	76
	i64.load	.L__profc_ldexpl+48
	local.set	80
	local.get	80
	local.get	78
	i64.add 
	local.set	81
	local.get	76
	local.get	81
	i64.store	.L__profc_ldexpl+48
	local.get	6
	i64.load	56
	local.set	82
	local.get	6
	i64.load	48
	local.set	83
	local.get	6
	i64.load	88
	local.set	84
	local.get	6
	i64.load	80
	local.set	85
	i32.const	16
	local.set	86
	local.get	6
	local.get	86
	i32.add 
	local.set	87
	local.get	87
	local.get	85
	local.get	84
	local.get	83
	local.get	82
	call	__multf3
	i32.const	24
	local.set	88
	local.get	6
	local.get	88
	i32.add 
	local.set	89
	local.get	89
	i64.load	0
	local.set	90
	local.get	6
	i64.load	16
	local.set	91
	local.get	6
	local.get	90
	i64.store	88
	local.get	6
	local.get	91
	i64.store	80
.LBB91_6:                               #   in Loop: Header=BB91_4 Depth=1
	end_block                               # label259:
	local.get	6
	i32.load	76
	local.set	92
	i32.const	2
	local.set	93
	local.get	92
	local.get	93
	i32.div_s
	local.set	94
	local.get	6
	local.get	94
	i32.store	76
	local.get	6
	i32.load	76
	local.set	95
	block   	
	block   	
	local.get	95
	br_if   	0                               # 0: down to label261
# %bb.7:
	i32.const	0
	local.set	96
	local.get	96
	i64.load	.L__profc_ldexpl+56
	local.set	97
	i64.const	1
	local.set	98
	local.get	97
	local.get	98
	i64.add 
	local.set	99
	i32.const	0
	local.set	100
	local.get	100
	local.get	99
	i64.store	.L__profc_ldexpl+56
	br      	1                               # 1: down to label260
.LBB91_8:                               #   in Loop: Header=BB91_4 Depth=1
	end_block                               # label261:
	i32.const	0
	local.set	101
	local.get	101
	i64.load	__llvm_gcov_ctr.91+32
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	local.get	101
	local.get	104
	i64.store	__llvm_gcov_ctr.91+32
	local.get	6
	i64.load	56
	local.set	105
	local.get	6
	i64.load	48
	local.set	106
	local.get	6
	local.get	106
	local.get	105
	local.get	106
	local.get	105
	call	__multf3
	i32.const	8
	local.set	107
	local.get	6
	local.get	107
	i32.add 
	local.set	108
	local.get	108
	i64.load	0
	local.set	109
	local.get	6
	i64.load	0
	local.set	110
	local.get	6
	local.get	109
	i64.store	56
	local.get	6
	local.get	110
	i64.store	48
	br      	1                               # 1: up to label258
.LBB91_9:
	end_block                               # label260:
	end_loop
.LBB91_10:
	end_block                               # label257:
	local.get	6
	i64.load	80
	local.set	111
	local.get	6
	i64.load	88
	local.set	112
	local.get	0
	local.get	112
	i64.store	8
	local.get	0
	local.get	111
	i64.store	0
	i32.const	96
	local.set	113
	local.get	6
	local.get	113
	i32.add 
	local.set	114
	local.get	114
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	32
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.92
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.92
	local.get	5
	local.get	0
	i32.store	28
	local.get	5
	local.get	1
	i32.store	24
	local.get	5
	local.get	2
	i32.store	20
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_memxor
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_memxor
	local.get	5
	i32.load	24
	local.set	16
	local.get	5
	local.get	16
	i32.store	16
	local.get	5
	i32.load	28
	local.set	17
	local.get	5
	local.get	17
	i32.store	12
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label263:
	local.get	5
	i32.load	20
	local.set	18
	i32.const	0
	local.set	19
	local.get	18
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
	br_if   	1                               # 1: down to label262
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_memxor+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_memxor+8
	local.get	5
	i32.load	16
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.add 
	local.set	30
	local.get	5
	local.get	30
	i32.store	16
	local.get	28
	i32.load8_u	0
	local.set	31
	i32.const	24
	local.set	32
	local.get	31
	local.get	32
	i32.shl 
	local.set	33
	local.get	33
	local.get	32
	i32.shr_s
	local.set	34
	local.get	5
	i32.load	12
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.add 
	local.set	37
	local.get	5
	local.get	37
	i32.store	12
	local.get	35
	i32.load8_u	0
	local.set	38
	i32.const	24
	local.set	39
	local.get	38
	local.get	39
	i32.shl 
	local.set	40
	local.get	40
	local.get	39
	i32.shr_s
	local.set	41
	local.get	41
	local.get	34
	i32.xor 
	local.set	42
	local.get	35
	local.get	42
	i32.store8	0
# %bb.3:                                #   in Loop: Header=BB92_1 Depth=1
	i32.const	0
	local.set	43
	local.get	43
	i64.load	__llvm_gcov_ctr.92+8
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	__llvm_gcov_ctr.92+8
	local.get	5
	i32.load	20
	local.set	48
	i32.const	-1
	local.set	49
	local.get	48
	local.get	49
	i32.add 
	local.set	50
	local.get	5
	local.get	50
	i32.store	20
	br      	0                               # 0: up to label263
.LBB92_4:
	end_loop
	end_block                               # label262:
	local.get	5
	i32.load	28
	local.set	51
	local.get	51
	return
	end_function
                                        # -- End function
	.section	.text.strncat,"",@
	.hidden	strncat                         # -- Begin function strncat
	.globl	strncat
	.type	strncat,@function
strncat:                                # @strncat
	.functype	strncat (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_strncat
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_strncat
	local.get	5
	i32.load	12
	local.set	11
	local.get	5
	i32.load	12
	local.set	12
	local.get	12
	call	strlen
	local.set	13
	local.get	11
	local.get	13
	i32.add 
	local.set	14
	local.get	5
	local.get	14
	i32.store	0
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label264:
	local.get	5
	i32.load	4
	local.set	15
	i32.const	0
	local.set	16
	local.get	15
	local.get	16
	i32.gt_u
	local.set	17
	i32.const	0
	local.set	18
	i32.const	1
	local.set	19
	local.get	17
	local.get	19
	i32.and 
	local.set	20
	local.get	18
	local.set	21
	block   	
	local.get	20
	i32.eqz
	br_if   	0                               # 0: down to label265
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	i32.const	0
	local.set	22
	local.get	22
	i64.load	__llvm_gcov_ctr.93
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	__llvm_gcov_ctr.93
	i32.const	0
	local.set	27
	local.get	27
	i64.load	.L__profc_strncat+16
	local.set	28
	i64.const	1
	local.set	29
	local.get	28
	local.get	29
	i64.add 
	local.set	30
	i32.const	0
	local.set	31
	local.get	31
	local.get	30
	i64.store	.L__profc_strncat+16
	local.get	5
	i32.load	8
	local.set	32
	local.get	32
	i32.load8_u	0
	local.set	33
	local.get	5
	i32.load	0
	local.set	34
	local.get	34
	local.get	33
	i32.store8	0
	i32.const	24
	local.set	35
	local.get	33
	local.get	35
	i32.shl 
	local.set	36
	local.get	36
	local.get	35
	i32.shr_s
	local.set	37
	i32.const	0
	local.set	38
	local.get	37
	local.get	38
	i32.ne  
	local.set	39
	local.get	39
	local.set	21
	local.get	37
	i32.eqz
	br_if   	0                               # 0: down to label265
# %bb.3:                                #   in Loop: Header=BB93_1 Depth=1
	i32.const	0
	local.set	40
	local.get	40
	i64.load	__llvm_gcov_ctr.93+8
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	__llvm_gcov_ctr.93+8
	i32.const	0
	local.set	45
	local.get	45
	i64.load	.L__profc_strncat+24
	local.set	46
	i64.const	1
	local.set	47
	local.get	46
	local.get	47
	i64.add 
	local.set	48
	i32.const	0
	local.set	49
	local.get	49
	local.get	48
	i64.store	.L__profc_strncat+24
	local.get	39
	local.set	21
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	end_block                               # label265:
	local.get	21
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	block   	
	local.get	52
	i32.eqz
	br_if   	0                               # 0: down to label266
# %bb.5:                                #   in Loop: Header=BB93_1 Depth=1
	i32.const	0
	local.set	53
	local.get	53
	i64.load	.L__profc_strncat+8
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	.L__profc_strncat+8
# %bb.6:                                #   in Loop: Header=BB93_1 Depth=1
	i32.const	0
	local.set	58
	local.get	58
	i64.load	__llvm_gcov_ctr.93+24
	local.set	59
	i64.const	1
	local.set	60
	local.get	59
	local.get	60
	i64.add 
	local.set	61
	i32.const	0
	local.set	62
	local.get	62
	local.get	61
	i64.store	__llvm_gcov_ctr.93+24
	local.get	5
	i32.load	8
	local.set	63
	i32.const	1
	local.set	64
	local.get	63
	local.get	64
	i32.add 
	local.set	65
	local.get	5
	local.get	65
	i32.store	8
	local.get	5
	i32.load	0
	local.set	66
	i32.const	1
	local.set	67
	local.get	66
	local.get	67
	i32.add 
	local.set	68
	local.get	5
	local.get	68
	i32.store	0
	local.get	5
	i32.load	4
	local.set	69
	i32.const	-1
	local.set	70
	local.get	69
	local.get	70
	i32.add 
	local.set	71
	local.get	5
	local.get	71
	i32.store	4
	br      	1                               # 1: up to label264
.LBB93_7:
	end_block                               # label266:
	end_loop
	i32.const	0
	local.set	72
	local.get	72
	i64.load	__llvm_gcov_ctr.93+16
	local.set	73
	i64.const	1
	local.set	74
	local.get	73
	local.get	74
	i64.add 
	local.set	75
	i32.const	0
	local.set	76
	local.get	76
	local.get	75
	i64.store	__llvm_gcov_ctr.93+16
	local.get	5
	i32.load	4
	local.set	77
	block   	
	local.get	77
	br_if   	0                               # 0: down to label267
# %bb.8:
	i32.const	0
	local.set	78
	local.get	78
	i64.load	__llvm_gcov_ctr.93+32
	local.set	79
	i64.const	1
	local.set	80
	local.get	79
	local.get	80
	i64.add 
	local.set	81
	i32.const	0
	local.set	82
	local.get	82
	local.get	81
	i64.store	__llvm_gcov_ctr.93+32
	i32.const	0
	local.set	83
	local.get	83
	i64.load	.L__profc_strncat+32
	local.set	84
	i64.const	1
	local.set	85
	local.get	84
	local.get	85
	i64.add 
	local.set	86
	i32.const	0
	local.set	87
	local.get	87
	local.get	86
	i64.store	.L__profc_strncat+32
	local.get	5
	i32.load	0
	local.set	88
	i32.const	0
	local.set	89
	local.get	88
	local.get	89
	i32.store8	0
.LBB93_9:
	end_block                               # label267:
	local.get	5
	i32.load	12
	local.set	90
	i32.const	16
	local.set	91
	local.get	5
	local.get	91
	i32.add 
	local.set	92
	local.get	92
	global.set	__stack_pointer
	local.get	90
	return
	end_function
                                        # -- End function
	.section	.text.strnlen,"",@
	.hidden	strnlen                         # -- Begin function strnlen
	.globl	strnlen
	.type	strnlen,@function
strnlen:                                # @strnlen
	.functype	strnlen (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.94
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.94
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_strnlen
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_strnlen
	i32.const	0
	local.set	15
	local.get	4
	local.get	15
	i32.store	4
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label268:
	local.get	4
	i32.load	4
	local.set	16
	local.get	4
	i32.load	8
	local.set	17
	local.get	16
	local.get	17
	i32.lt_u
	local.set	18
	i32.const	0
	local.set	19
	i32.const	1
	local.set	20
	local.get	18
	local.get	20
	i32.and 
	local.set	21
	local.get	19
	local.set	22
	block   	
	local.get	21
	i32.eqz
	br_if   	0                               # 0: down to label269
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	i32.const	0
	local.set	23
	local.get	23
	i64.load	__llvm_gcov_ctr.94+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	__llvm_gcov_ctr.94+8
	i32.const	0
	local.set	28
	local.get	28
	i64.load	.L__profc_strnlen+16
	local.set	29
	i64.const	1
	local.set	30
	local.get	29
	local.get	30
	i64.add 
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i64.store	.L__profc_strnlen+16
	local.get	4
	i32.load	12
	local.set	33
	local.get	4
	i32.load	4
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	local.get	35
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
	i32.const	0
	local.set	40
	local.get	39
	local.get	40
	i32.ne  
	local.set	41
	local.get	41
	local.set	22
	local.get	39
	i32.eqz
	br_if   	0                               # 0: down to label269
# %bb.3:                                #   in Loop: Header=BB94_1 Depth=1
	i32.const	0
	local.set	42
	local.get	42
	i64.load	__llvm_gcov_ctr.94+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	__llvm_gcov_ctr.94+16
	i32.const	0
	local.set	47
	local.get	47
	i64.load	.L__profc_strnlen+24
	local.set	48
	i64.const	1
	local.set	49
	local.get	48
	local.get	49
	i64.add 
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i64.store	.L__profc_strnlen+24
	local.get	41
	local.set	22
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	end_block                               # label269:
	local.get	22
	local.set	52
	i32.const	1
	local.set	53
	local.get	52
	local.get	53
	i32.and 
	local.set	54
	block   	
	local.get	54
	i32.eqz
	br_if   	0                               # 0: down to label270
# %bb.5:                                #   in Loop: Header=BB94_1 Depth=1
	i32.const	0
	local.set	55
	local.get	55
	i64.load	.L__profc_strnlen+8
	local.set	56
	i64.const	1
	local.set	57
	local.get	56
	local.get	57
	i64.add 
	local.set	58
	i32.const	0
	local.set	59
	local.get	59
	local.get	58
	i64.store	.L__profc_strnlen+8
# %bb.6:                                #   in Loop: Header=BB94_1 Depth=1
	i32.const	0
	local.set	60
	local.get	60
	i64.load	__llvm_gcov_ctr.94+24
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	__llvm_gcov_ctr.94+24
	local.get	4
	i32.load	4
	local.set	65
	i32.const	1
	local.set	66
	local.get	65
	local.get	66
	i32.add 
	local.set	67
	local.get	4
	local.get	67
	i32.store	4
	br      	1                               # 1: up to label268
.LBB94_7:
	end_block                               # label270:
	end_loop
	local.get	4
	i32.load	4
	local.set	68
	local.get	68
	return
	end_function
                                        # -- End function
	.section	.text.strpbrk,"",@
	.hidden	strpbrk                         # -- Begin function strpbrk
	.globl	strpbrk
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
	.functype	strpbrk (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	local.get	5
	i64.load	.L__profc_strpbrk
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_strpbrk
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	block   	
	block   	
	loop    	                                # label273:
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
	local.get	14
	i32.eqz
	br_if   	1                               # 1: down to label272
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	i32.const	0
	local.set	15
	local.get	15
	i64.load	.L__profc_strpbrk+8
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.add 
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	.L__profc_strpbrk+8
	local.get	4
	i32.load	4
	local.set	20
	local.get	4
	local.get	20
	i32.store	0
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	block   	
	loop    	                                # label275:
	local.get	4
	i32.load	0
	local.set	21
	local.get	21
	i32.load8_u	0
	local.set	22
	i32.const	24
	local.set	23
	local.get	22
	local.get	23
	i32.shl 
	local.set	24
	local.get	24
	local.get	23
	i32.shr_s
	local.set	25
	local.get	25
	i32.eqz
	br_if   	1                               # 1: down to label274
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=2
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc_strpbrk+16
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc_strpbrk+16
	local.get	4
	i32.load	0
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	4
	local.get	33
	i32.store	0
	local.get	31
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
	local.get	4
	i32.load	8
	local.set	38
	local.get	38
	i32.load8_u	0
	local.set	39
	i32.const	24
	local.set	40
	local.get	39
	local.get	40
	i32.shl 
	local.set	41
	local.get	41
	local.get	40
	i32.shr_s
	local.set	42
	local.get	37
	local.get	42
	i32.eq  
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
	br_if   	0                               # 0: down to label276
# %bb.5:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.95+8
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.95+8
	i32.const	0
	local.set	51
	local.get	51
	i64.load	.L__profc_strpbrk+24
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	.L__profc_strpbrk+24
	local.get	4
	i32.load	8
	local.set	56
	local.get	4
	local.get	56
	i32.store	12
	br      	5                               # 5: down to label271
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	end_block                               # label276:
	i32.const	0
	local.set	57
	local.get	57
	i64.load	__llvm_gcov_ctr.95+16
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	__llvm_gcov_ctr.95+16
	br      	0                               # 0: up to label275
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	end_loop
	end_block                               # label274:
	i32.const	0
	local.set	62
	local.get	62
	i64.load	__llvm_gcov_ctr.95+24
	local.set	63
	i64.const	1
	local.set	64
	local.get	63
	local.get	64
	i64.add 
	local.set	65
	i32.const	0
	local.set	66
	local.get	66
	local.get	65
	i64.store	__llvm_gcov_ctr.95+24
	local.get	4
	i32.load	8
	local.set	67
	i32.const	1
	local.set	68
	local.get	67
	local.get	68
	i32.add 
	local.set	69
	local.get	4
	local.get	69
	i32.store	8
	br      	0                               # 0: up to label273
.LBB95_8:
	end_loop
	end_block                               # label272:
	i32.const	0
	local.set	70
	local.get	70
	i64.load	__llvm_gcov_ctr.95
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	__llvm_gcov_ctr.95
	i32.const	0
	local.set	75
	local.get	4
	local.get	75
	i32.store	12
.LBB95_9:
	end_block                               # label271:
	local.get	4
	i32.load	12
	local.set	76
	local.get	76
	return
	end_function
                                        # -- End function
	.section	.text.strrchr,"",@
	.hidden	strrchr                         # -- Begin function strrchr
	.globl	strrchr
	.type	strrchr,@function
strrchr:                                # @strrchr
	.functype	strrchr (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.96
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.96
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc_strrchr
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc_strrchr
	i32.const	0
	local.set	15
	local.get	4
	local.get	15
	i32.store	4
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label277:
	local.get	4
	i32.load	12
	local.set	16
	local.get	16
	i32.load8_u	0
	local.set	17
	i32.const	24
	local.set	18
	local.get	17
	local.get	18
	i32.shl 
	local.set	19
	local.get	19
	local.get	18
	i32.shr_s
	local.set	20
	local.get	4
	i32.load	8
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
	block   	
	local.get	24
	i32.eqz
	br_if   	0                               # 0: down to label278
# %bb.2:                                #   in Loop: Header=BB96_1 Depth=1
	i32.const	0
	local.set	25
	local.get	25
	i64.load	__llvm_gcov_ctr.96+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.96+8
	i32.const	0
	local.set	30
	local.get	30
	i64.load	.L__profc_strrchr+16
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	.L__profc_strrchr+16
	local.get	4
	i32.load	12
	local.set	35
	local.get	4
	local.get	35
	i32.store	4
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	end_block                               # label278:
# %bb.4:                                #   in Loop: Header=BB96_1 Depth=1
	local.get	4
	i32.load	12
	local.set	36
	i32.const	1
	local.set	37
	local.get	36
	local.get	37
	i32.add 
	local.set	38
	local.get	4
	local.get	38
	i32.store	12
	local.get	36
	i32.load8_u	0
	local.set	39
	i32.const	0
	local.set	40
	i32.const	255
	local.set	41
	local.get	39
	local.get	41
	i32.and 
	local.set	42
	i32.const	255
	local.set	43
	local.get	40
	local.get	43
	i32.and 
	local.set	44
	local.get	42
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
	br_if   	0                               # 0: down to label279
# %bb.5:                                #   in Loop: Header=BB96_1 Depth=1
	i32.const	0
	local.set	48
	local.get	48
	i64.load	__llvm_gcov_ctr.96+16
	local.set	49
	i64.const	1
	local.set	50
	local.get	49
	local.get	50
	i64.add 
	local.set	51
	i32.const	0
	local.set	52
	local.get	52
	local.get	51
	i64.store	__llvm_gcov_ctr.96+16
	i32.const	0
	local.set	53
	local.get	53
	i64.load	.L__profc_strrchr+8
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	.L__profc_strrchr+8
	br      	1                               # 1: up to label277
.LBB96_6:
	end_block                               # label279:
	end_loop
	local.get	4
	i32.load	4
	local.set	58
	local.get	58
	return
	end_function
                                        # -- End function
	.section	.text.strstr,"",@
	.hidden	strstr                          # -- Begin function strstr
	.globl	strstr
	.type	strstr,@function
strstr:                                 # @strstr
	.functype	strstr (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_strstr
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_strstr
	local.get	4
	i32.load	24
	local.set	10
	local.get	4
	local.get	10
	i32.store	16
	local.get	4
	i32.load	20
	local.set	11
	local.get	11
	call	strlen
	local.set	12
	local.get	4
	local.get	12
	i32.store	12
	local.get	4
	i32.load	12
	local.set	13
	block   	
	block   	
	local.get	13
	br_if   	0                               # 0: down to label281
# %bb.1:
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.97
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.97
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc_strstr+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc_strstr+8
	local.get	4
	i32.load	24
	local.set	24
	local.get	4
	local.get	24
	i32.store	28
	br      	1                               # 1: down to label280
.LBB97_2:
	end_block                               # label281:
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label283:
	local.get	4
	i32.load	16
	local.set	25
	local.get	4
	i32.load	20
	local.set	26
	local.get	26
	i32.load8_u	0
	local.set	27
	i32.const	24
	local.set	28
	local.get	27
	local.get	28
	i32.shl 
	local.set	29
	local.get	29
	local.get	28
	i32.shr_s
	local.set	30
	local.get	25
	local.get	30
	call	strchr
	local.set	31
	local.get	4
	local.get	31
	i32.store	16
	i32.const	0
	local.set	32
	local.get	31
	local.get	32
	i32.ne  
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	35
	i32.eqz
	br_if   	1                               # 1: down to label282
# %bb.4:                                #   in Loop: Header=BB97_3 Depth=1
	i32.const	0
	local.set	36
	local.get	36
	i64.load	.L__profc_strstr+16
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	.L__profc_strstr+16
	local.get	4
	i32.load	16
	local.set	41
	local.get	4
	i32.load	20
	local.set	42
	local.get	4
	i32.load	12
	local.set	43
	local.get	41
	local.get	42
	local.get	43
	call	strncmp
	local.set	44
	block   	
	local.get	44
	br_if   	0                               # 0: down to label284
# %bb.5:
	i32.const	0
	local.set	45
	local.get	45
	i64.load	__llvm_gcov_ctr.97+8
	local.set	46
	i64.const	1
	local.set	47
	local.get	46
	local.get	47
	i64.add 
	local.set	48
	i32.const	0
	local.set	49
	local.get	49
	local.get	48
	i64.store	__llvm_gcov_ctr.97+8
	i32.const	0
	local.set	50
	local.get	50
	i64.load	.L__profc_strstr+24
	local.set	51
	i64.const	1
	local.set	52
	local.get	51
	local.get	52
	i64.add 
	local.set	53
	i32.const	0
	local.set	54
	local.get	54
	local.get	53
	i64.store	.L__profc_strstr+24
	local.get	4
	i32.load	16
	local.set	55
	local.get	4
	local.get	55
	i32.store	28
	br      	3                               # 3: down to label280
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	end_block                               # label284:
# %bb.7:                                #   in Loop: Header=BB97_3 Depth=1
	i32.const	0
	local.set	56
	local.get	56
	i64.load	__llvm_gcov_ctr.97+16
	local.set	57
	i64.const	1
	local.set	58
	local.get	57
	local.get	58
	i64.add 
	local.set	59
	i32.const	0
	local.set	60
	local.get	60
	local.get	59
	i64.store	__llvm_gcov_ctr.97+16
	local.get	4
	i32.load	16
	local.set	61
	i32.const	1
	local.set	62
	local.get	61
	local.get	62
	i32.add 
	local.set	63
	local.get	4
	local.get	63
	i32.store	16
	br      	0                               # 0: up to label283
.LBB97_8:
	end_loop
	end_block                               # label282:
	i32.const	0
	local.set	64
	local.get	64
	i64.load	__llvm_gcov_ctr.97+24
	local.set	65
	i64.const	1
	local.set	66
	local.get	65
	local.get	66
	i64.add 
	local.set	67
	i32.const	0
	local.set	68
	local.get	68
	local.get	67
	i64.store	__llvm_gcov_ctr.97+24
	i32.const	0
	local.set	69
	local.get	4
	local.get	69
	i32.store	28
.LBB97_9:
	end_block                               # label280:
	local.get	4
	i32.load	28
	local.set	70
	i32.const	32
	local.set	71
	local.get	4
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	global.set	__stack_pointer
	local.get	70
	return
	end_function
                                        # -- End function
	.section	.text.copysign,"",@
	.hidden	copysign                        # -- Begin function copysign
	.globl	copysign
	.type	copysign,@function
copysign:                               # @copysign
	.functype	copysign (f64, f64) -> (f64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f64, i32, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, i32, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, i32, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, i32, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i64, i64, i64, i32, f64, f64
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc_copysign
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_copysign
	local.get	4
	f64.load	16
	local.set	10
	i32.const	0
	local.set	11
	local.get	11
	f64.convert_i32_s
	local.set	12
	local.get	10
	local.get	12
	f64.lt  
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
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label288
# %bb.1:
	i32.const	0
	local.set	16
	local.get	16
	i64.load	__llvm_gcov_ctr.98
	local.set	17
	i64.const	1
	local.set	18
	local.get	17
	local.get	18
	i64.add 
	local.set	19
	i32.const	0
	local.set	20
	local.get	20
	local.get	19
	i64.store	__llvm_gcov_ctr.98
	i32.const	0
	local.set	21
	local.get	21
	i64.load	.L__profc_copysign+24
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	.L__profc_copysign+24
	local.get	4
	f64.load	8
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	f64.convert_i32_s
	local.set	28
	local.get	26
	local.get	28
	f64.gt  
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	local.get	31
	i32.eqz
	br_if   	0                               # 0: down to label288
# %bb.2:
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.98+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.98+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc_copysign+32
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc_copysign+32
	br      	1                               # 1: down to label287
.LBB98_3:
	end_block                               # label288:
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_copysign+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_copysign+16
	local.get	4
	f64.load	16
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	f64.convert_i32_s
	local.set	49
	local.get	47
	local.get	49
	f64.gt  
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	local.get	52
	i32.eqz
	br_if   	1                               # 1: down to label286
# %bb.4:
	i32.const	0
	local.set	53
	local.get	53
	i64.load	__llvm_gcov_ctr.98+16
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.98+16
	i32.const	0
	local.set	58
	local.get	58
	i64.load	.L__profc_copysign+40
	local.set	59
	i64.const	1
	local.set	60
	local.get	59
	local.get	60
	i64.add 
	local.set	61
	i32.const	0
	local.set	62
	local.get	62
	local.get	61
	i64.store	.L__profc_copysign+40
	local.get	4
	f64.load	8
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	f64.convert_i32_s
	local.set	65
	local.get	63
	local.get	65
	f64.lt  
	local.set	66
	i32.const	1
	local.set	67
	local.get	66
	local.get	67
	i32.and 
	local.set	68
	local.get	68
	i32.eqz
	br_if   	1                               # 1: down to label286
# %bb.5:
	i32.const	0
	local.set	69
	local.get	69
	i64.load	__llvm_gcov_ctr.98+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.98+24
	i32.const	0
	local.set	74
	local.get	74
	i64.load	.L__profc_copysign+48
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	.L__profc_copysign+48
.LBB98_6:
	end_block                               # label287:
	i32.const	0
	local.set	79
	local.get	79
	i64.load	.L__profc_copysign+8
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	.L__profc_copysign+8
	local.get	4
	f64.load	16
	local.set	84
	local.get	84
	f64.neg 
	local.set	85
	local.get	4
	local.get	85
	f64.store	24
	br      	1                               # 1: down to label285
.LBB98_7:
	end_block                               # label286:
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.98+32
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.98+32
	local.get	4
	f64.load	16
	local.set	91
	local.get	4
	local.get	91
	f64.store	24
.LBB98_8:
	end_block                               # label285:
	local.get	4
	f64.load	24
	local.set	92
	local.get	92
	return
	end_function
                                        # -- End function
	.section	.text.memmem,"",@
	.hidden	memmem                          # -- Begin function memmem
	.globl	memmem
	.type	memmem,@function
memmem:                                 # @memmem
	.functype	memmem (i32, i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	7
	local.get	7
	i64.load	.L__profc_memmem
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.add 
	local.set	10
	i32.const	0
	local.set	11
	local.get	11
	local.get	10
	i64.store	.L__profc_memmem
	local.get	6
	i32.load	24
	local.set	12
	local.get	6
	i32.load	20
	local.set	13
	local.get	12
	local.get	13
	i32.add 
	local.set	14
	local.get	6
	i32.load	12
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.get	15
	i32.sub 
	local.set	17
	local.get	14
	local.get	17
	i32.add 
	local.set	18
	local.get	6
	local.get	18
	i32.store	4
	local.get	6
	i32.load	12
	local.set	19
	block   	
	block   	
	local.get	19
	br_if   	0                               # 0: down to label290
# %bb.1:
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.99
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.99
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc_memmem+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc_memmem+8
	local.get	6
	i32.load	24
	local.set	30
	local.get	6
	local.get	30
	i32.store	28
	br      	1                               # 1: down to label289
.LBB99_2:
	end_block                               # label290:
	local.get	6
	i32.load	20
	local.set	31
	local.get	6
	i32.load	12
	local.set	32
	local.get	31
	local.get	32
	i32.lt_u
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	block   	
	local.get	35
	i32.eqz
	br_if   	0                               # 0: down to label291
# %bb.3:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.99+8
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.99+8
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc_memmem+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc_memmem+16
	i32.const	0
	local.set	46
	local.get	6
	local.get	46
	i32.store	28
	br      	1                               # 1: down to label289
.LBB99_4:
	end_block                               # label291:
	local.get	6
	i32.load	24
	local.set	47
	local.get	6
	local.get	47
	i32.store	8
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label293:
	local.get	6
	i32.load	8
	local.set	48
	local.get	6
	i32.load	4
	local.set	49
	local.get	48
	local.get	49
	i32.le_u
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	local.get	52
	i32.eqz
	br_if   	1                               # 1: down to label292
# %bb.6:                                #   in Loop: Header=BB99_5 Depth=1
	i32.const	0
	local.set	53
	local.get	53
	i64.load	.L__profc_memmem+24
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	.L__profc_memmem+24
	local.get	6
	i32.load	8
	local.set	58
	local.get	58
	i32.load8_u	0
	local.set	59
	i32.const	24
	local.set	60
	local.get	59
	local.get	60
	i32.shl 
	local.set	61
	local.get	61
	local.get	60
	i32.shr_s
	local.set	62
	local.get	6
	i32.load	16
	local.set	63
	local.get	63
	i32.load8_u	0
	local.set	64
	i32.const	24
	local.set	65
	local.get	64
	local.get	65
	i32.shl 
	local.set	66
	local.get	66
	local.get	65
	i32.shr_s
	local.set	67
	local.get	62
	local.get	67
	i32.eq  
	local.set	68
	i32.const	1
	local.set	69
	local.get	68
	local.get	69
	i32.and 
	local.set	70
	block   	
	local.get	70
	i32.eqz
	br_if   	0                               # 0: down to label294
# %bb.7:                                #   in Loop: Header=BB99_5 Depth=1
	i32.const	0
	local.set	71
	local.get	71
	i64.load	__llvm_gcov_ctr.99+16
	local.set	72
	i64.const	1
	local.set	73
	local.get	72
	local.get	73
	i64.add 
	local.set	74
	i32.const	0
	local.set	75
	local.get	75
	local.get	74
	i64.store	__llvm_gcov_ctr.99+16
	i32.const	0
	local.set	76
	local.get	76
	i64.load	.L__profc_memmem+40
	local.set	77
	i64.const	1
	local.set	78
	local.get	77
	local.get	78
	i64.add 
	local.set	79
	i32.const	0
	local.set	80
	local.get	80
	local.get	79
	i64.store	.L__profc_memmem+40
	local.get	6
	i32.load	8
	local.set	81
	i32.const	1
	local.set	82
	local.get	81
	local.get	82
	i32.add 
	local.set	83
	local.get	6
	i32.load	16
	local.set	84
	i32.const	1
	local.set	85
	local.get	84
	local.get	85
	i32.add 
	local.set	86
	local.get	6
	i32.load	12
	local.set	87
	i32.const	1
	local.set	88
	local.get	87
	local.get	88
	i32.sub 
	local.set	89
	local.get	83
	local.get	86
	local.get	89
	call	memcmp
	local.set	90
	local.get	90
	br_if   	0                               # 0: down to label294
# %bb.8:
	i32.const	0
	local.set	91
	local.get	91
	i64.load	__llvm_gcov_ctr.99+24
	local.set	92
	i64.const	1
	local.set	93
	local.get	92
	local.get	93
	i64.add 
	local.set	94
	i32.const	0
	local.set	95
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.99+24
	i32.const	0
	local.set	96
	local.get	96
	i64.load	.L__profc_memmem+48
	local.set	97
	i64.const	1
	local.set	98
	local.get	97
	local.get	98
	i64.add 
	local.set	99
	i32.const	0
	local.set	100
	local.get	100
	local.get	99
	i64.store	.L__profc_memmem+48
# %bb.9:
	i32.const	0
	local.set	101
	local.get	101
	i64.load	.L__profc_memmem+32
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	i32.const	0
	local.set	105
	local.get	105
	local.get	104
	i64.store	.L__profc_memmem+32
	local.get	6
	i32.load	8
	local.set	106
	local.get	6
	local.get	106
	i32.store	28
	br      	3                               # 3: down to label289
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	end_block                               # label294:
# %bb.11:                               #   in Loop: Header=BB99_5 Depth=1
	i32.const	0
	local.set	107
	local.get	107
	i64.load	__llvm_gcov_ctr.99+32
	local.set	108
	i64.const	1
	local.set	109
	local.get	108
	local.get	109
	i64.add 
	local.set	110
	i32.const	0
	local.set	111
	local.get	111
	local.get	110
	i64.store	__llvm_gcov_ctr.99+32
	local.get	6
	i32.load	8
	local.set	112
	i32.const	1
	local.set	113
	local.get	112
	local.get	113
	i32.add 
	local.set	114
	local.get	6
	local.get	114
	i32.store	8
	br      	0                               # 0: up to label293
.LBB99_12:
	end_loop
	end_block                               # label292:
	i32.const	0
	local.set	115
	local.get	115
	i64.load	__llvm_gcov_ctr.99+40
	local.set	116
	i64.const	1
	local.set	117
	local.get	116
	local.get	117
	i64.add 
	local.set	118
	i32.const	0
	local.set	119
	local.get	119
	local.get	118
	i64.store	__llvm_gcov_ctr.99+40
	i32.const	0
	local.set	120
	local.get	6
	local.get	120
	i32.store	28
.LBB99_13:
	end_block                               # label289:
	local.get	6
	i32.load	28
	local.set	121
	i32.const	32
	local.set	122
	local.get	6
	local.get	122
	i32.add 
	local.set	123
	local.get	123
	global.set	__stack_pointer
	local.get	121
	return
	end_function
                                        # -- End function
	.section	.text.mempcpy,"",@
	.hidden	mempcpy                         # -- Begin function mempcpy
	.globl	mempcpy
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
	.functype	mempcpy (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.100
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	__llvm_gcov_ctr.100
	local.get	5
	local.get	0
	i32.store	12
	local.get	5
	local.get	1
	i32.store	8
	local.get	5
	local.get	2
	i32.store	4
	i32.const	0
	local.set	11
	local.get	11
	i64.load	.L__profc_mempcpy
	local.set	12
	i64.const	1
	local.set	13
	local.get	12
	local.get	13
	i64.add 
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	.L__profc_mempcpy
	local.get	5
	i32.load	12
	local.set	16
	local.get	5
	i32.load	8
	local.set	17
	local.get	5
	i32.load	4
	local.set	18
	local.get	16
	local.get	17
	local.get	18
	call	memcpy
	drop
	local.get	5
	i32.load	4
	local.set	19
	local.get	16
	local.get	19
	i32.add 
	local.set	20
	i32.const	16
	local.set	21
	local.get	5
	local.get	21
	i32.add 
	local.set	22
	local.get	22
	global.set	__stack_pointer
	local.get	20
	return
	end_function
                                        # -- End function
	.section	.text.frexp,"",@
	.hidden	frexp                           # -- Begin function frexp
	.globl	frexp
	.type	frexp,@function
frexp:                                  # @frexp
	.functype	frexp (f64, i32) -> (f64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, f64, i32, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, f64, f64, f64, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, i32, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, f64, f64, f64, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64
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
	local.get	5
	i64.load	.L__profc_frexp
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc_frexp
	i32.const	0
	local.set	10
	local.get	4
	local.get	10
	i32.store	12
	i32.const	0
	local.set	11
	local.get	4
	local.get	11
	i32.store	16
	local.get	4
	f64.load	24
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	f64.convert_i32_s
	local.set	14
	local.get	12
	local.get	14
	f64.lt  
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
	br_if   	0                               # 0: down to label295
# %bb.1:
	i32.const	0
	local.set	18
	local.get	18
	i64.load	__llvm_gcov_ctr.101
	local.set	19
	i64.const	1
	local.set	20
	local.get	19
	local.get	20
	i64.add 
	local.set	21
	i32.const	0
	local.set	22
	local.get	22
	local.get	21
	i64.store	__llvm_gcov_ctr.101
	i32.const	0
	local.set	23
	local.get	23
	i64.load	.L__profc_frexp+8
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	.L__profc_frexp+8
	local.get	4
	f64.load	24
	local.set	28
	local.get	28
	f64.neg 
	local.set	29
	local.get	4
	local.get	29
	f64.store	24
	i32.const	1
	local.set	30
	local.get	4
	local.get	30
	i32.store	16
.LBB101_2:
	end_block                               # label295:
	local.get	4
	f64.load	24
	local.set	31
	f64.const	0x1p0
	local.set	32
	local.get	31
	local.get	32
	f64.ge  
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	block   	
	block   	
	local.get	35
	i32.eqz
	br_if   	0                               # 0: down to label297
# %bb.3:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.101+8
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.101+8
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc_frexp+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc_frexp+16
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label299:
	local.get	4
	f64.load	24
	local.set	46
	f64.const	0x1p0
	local.set	47
	local.get	46
	local.get	47
	f64.ge  
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.and 
	local.set	50
	local.get	50
	i32.eqz
	br_if   	1                               # 1: down to label298
# %bb.5:                                #   in Loop: Header=BB101_4 Depth=1
	i32.const	0
	local.set	51
	local.get	51
	i64.load	__llvm_gcov_ctr.101+16
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	__llvm_gcov_ctr.101+16
	i32.const	0
	local.set	56
	local.get	56
	i64.load	.L__profc_frexp+24
	local.set	57
	i64.const	1
	local.set	58
	local.get	57
	local.get	58
	i64.add 
	local.set	59
	i32.const	0
	local.set	60
	local.get	60
	local.get	59
	i64.store	.L__profc_frexp+24
	local.get	4
	i32.load	12
	local.set	61
	i32.const	1
	local.set	62
	local.get	61
	local.get	62
	i32.add 
	local.set	63
	local.get	4
	local.get	63
	i32.store	12
	local.get	4
	f64.load	24
	local.set	64
	f64.const	0x1p1
	local.set	65
	local.get	64
	local.get	65
	f64.div 
	local.set	66
	local.get	4
	local.get	66
	f64.store	24
	br      	0                               # 0: up to label299
.LBB101_6:
	end_loop
	end_block                               # label298:
	br      	1                               # 1: down to label296
.LBB101_7:
	end_block                               # label297:
	local.get	4
	f64.load	24
	local.set	67
	f64.const	0x1p-1
	local.set	68
	local.get	67
	local.get	68
	f64.lt  
	local.set	69
	i32.const	1
	local.set	70
	local.get	69
	local.get	70
	i32.and 
	local.set	71
	block   	
	local.get	71
	i32.eqz
	br_if   	0                               # 0: down to label300
# %bb.8:
	i32.const	0
	local.set	72
	local.get	72
	i64.load	__llvm_gcov_ctr.101+24
	local.set	73
	i64.const	1
	local.set	74
	local.get	73
	local.get	74
	i64.add 
	local.set	75
	i32.const	0
	local.set	76
	local.get	76
	local.get	75
	i64.store	__llvm_gcov_ctr.101+24
	i32.const	0
	local.set	77
	local.get	77
	i64.load	.L__profc_frexp+40
	local.set	78
	i64.const	1
	local.set	79
	local.get	78
	local.get	79
	i64.add 
	local.set	80
	i32.const	0
	local.set	81
	local.get	81
	local.get	80
	i64.store	.L__profc_frexp+40
	local.get	4
	f64.load	24
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	f64.convert_i32_s
	local.set	84
	local.get	82
	local.get	84
	f64.ne  
	local.set	85
	i32.const	1
	local.set	86
	local.get	85
	local.get	86
	i32.and 
	local.set	87
	local.get	87
	i32.eqz
	br_if   	0                               # 0: down to label300
# %bb.9:
	i32.const	0
	local.set	88
	local.get	88
	i64.load	.L__profc_frexp+48
	local.set	89
	i64.const	1
	local.set	90
	local.get	89
	local.get	90
	i64.add 
	local.set	91
	i32.const	0
	local.set	92
	local.get	92
	local.get	91
	i64.store	.L__profc_frexp+48
# %bb.10:
	i32.const	0
	local.set	93
	local.get	93
	i64.load	.L__profc_frexp+32
	local.set	94
	i64.const	1
	local.set	95
	local.get	94
	local.get	95
	i64.add 
	local.set	96
	i32.const	0
	local.set	97
	local.get	97
	local.get	96
	i64.store	.L__profc_frexp+32
.LBB101_11:                             # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label302:
	local.get	4
	f64.load	24
	local.set	98
	f64.const	0x1p-1
	local.set	99
	local.get	98
	local.get	99
	f64.lt  
	local.set	100
	i32.const	1
	local.set	101
	local.get	100
	local.get	101
	i32.and 
	local.set	102
	local.get	102
	i32.eqz
	br_if   	1                               # 1: down to label301
# %bb.12:                               #   in Loop: Header=BB101_11 Depth=1
	i32.const	0
	local.set	103
	local.get	103
	i64.load	__llvm_gcov_ctr.101+32
	local.set	104
	i64.const	1
	local.set	105
	local.get	104
	local.get	105
	i64.add 
	local.set	106
	i32.const	0
	local.set	107
	local.get	107
	local.get	106
	i64.store	__llvm_gcov_ctr.101+32
	i32.const	0
	local.set	108
	local.get	108
	i64.load	.L__profc_frexp+56
	local.set	109
	i64.const	1
	local.set	110
	local.get	109
	local.get	110
	i64.add 
	local.set	111
	i32.const	0
	local.set	112
	local.get	112
	local.get	111
	i64.store	.L__profc_frexp+56
	local.get	4
	i32.load	12
	local.set	113
	i32.const	1
	local.set	114
	local.get	113
	local.get	114
	i32.sub 
	local.set	115
	local.get	4
	local.get	115
	i32.store	12
	local.get	4
	f64.load	24
	local.set	116
	f64.const	0x1p1
	local.set	117
	local.get	117
	local.get	116
	f64.mul 
	local.set	118
	local.get	4
	local.get	118
	f64.store	24
	br      	0                               # 0: up to label302
.LBB101_13:
	end_loop
	end_block                               # label301:
	i32.const	0
	local.set	119
	local.get	119
	i64.load	__llvm_gcov_ctr.101+40
	local.set	120
	i64.const	1
	local.set	121
	local.get	120
	local.get	121
	i64.add 
	local.set	122
	i32.const	0
	local.set	123
	local.get	123
	local.get	122
	i64.store	__llvm_gcov_ctr.101+40
.LBB101_14:
	end_block                               # label300:
	i32.const	0
	local.set	124
	local.get	124
	i64.load	__llvm_gcov_ctr.101+48
	local.set	125
	i64.const	1
	local.set	126
	local.get	125
	local.get	126
	i64.add 
	local.set	127
	i32.const	0
	local.set	128
	local.get	128
	local.get	127
	i64.store	__llvm_gcov_ctr.101+48
.LBB101_15:
	end_block                               # label296:
	local.get	4
	i32.load	12
	local.set	129
	local.get	4
	i32.load	20
	local.set	130
	local.get	130
	local.get	129
	i32.store	0
	local.get	4
	i32.load	16
	local.set	131
	block   	
	local.get	131
	i32.eqz
	br_if   	0                               # 0: down to label303
# %bb.16:
	i32.const	0
	local.set	132
	local.get	132
	i64.load	__llvm_gcov_ctr.101+56
	local.set	133
	i64.const	1
	local.set	134
	local.get	133
	local.get	134
	i64.add 
	local.set	135
	i32.const	0
	local.set	136
	local.get	136
	local.get	135
	i64.store	__llvm_gcov_ctr.101+56
	i32.const	0
	local.set	137
	local.get	137
	i64.load	.L__profc_frexp+64
	local.set	138
	i64.const	1
	local.set	139
	local.get	138
	local.get	139
	i64.add 
	local.set	140
	i32.const	0
	local.set	141
	local.get	141
	local.get	140
	i64.store	.L__profc_frexp+64
	local.get	4
	f64.load	24
	local.set	142
	local.get	142
	f64.neg 
	local.set	143
	local.get	4
	local.get	143
	f64.store	24
.LBB101_17:
	end_block                               # label303:
	local.get	4
	f64.load	24
	local.set	144
	local.get	144
	return
	end_function
                                        # -- End function
	.section	.text.__muldi3,"",@
	.hidden	__muldi3                        # -- Begin function __muldi3
	.globl	__muldi3
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
	.functype	__muldi3 (i64, i64) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.102
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.102
	local.get	4
	local.get	0
	i64.store	24
	local.get	4
	local.get	1
	i64.store	16
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___muldi3
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___muldi3
	i64.const	0
	local.set	15
	local.get	4
	local.get	15
	i64.store	8
	local.get	4
	i64.load	24
	local.set	16
	local.get	4
	local.get	16
	i64.store	0
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label305:
	local.get	4
	i64.load	0
	local.set	17
	i64.const	0
	local.set	18
	local.get	17
	local.get	18
	i64.ne  
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	local.get	21
	i32.eqz
	br_if   	1                               # 1: down to label304
# %bb.2:                                #   in Loop: Header=BB102_1 Depth=1
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc___muldi3+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc___muldi3+8
	local.get	4
	i64.load	0
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.and 
	local.set	29
	i64.const	0
	local.set	30
	local.get	29
	local.get	30
	i64.ne  
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
	br_if   	0                               # 0: down to label306
# %bb.3:                                #   in Loop: Header=BB102_1 Depth=1
	i32.const	0
	local.set	34
	local.get	34
	i64.load	__llvm_gcov_ctr.102+8
	local.set	35
	i64.const	1
	local.set	36
	local.get	35
	local.get	36
	i64.add 
	local.set	37
	i32.const	0
	local.set	38
	local.get	38
	local.get	37
	i64.store	__llvm_gcov_ctr.102+8
	i32.const	0
	local.set	39
	local.get	39
	i64.load	.L__profc___muldi3+16
	local.set	40
	i64.const	1
	local.set	41
	local.get	40
	local.get	41
	i64.add 
	local.set	42
	i32.const	0
	local.set	43
	local.get	43
	local.get	42
	i64.store	.L__profc___muldi3+16
	local.get	4
	i64.load	16
	local.set	44
	local.get	4
	i64.load	8
	local.set	45
	local.get	45
	local.get	44
	i64.add 
	local.set	46
	local.get	4
	local.get	46
	i64.store	8
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	end_block                               # label306:
	i32.const	0
	local.set	47
	local.get	47
	i64.load	__llvm_gcov_ctr.102+16
	local.set	48
	i64.const	1
	local.set	49
	local.get	48
	local.get	49
	i64.add 
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i64.store	__llvm_gcov_ctr.102+16
	local.get	4
	i64.load	16
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.shl 
	local.set	54
	local.get	4
	local.get	54
	i64.store	16
	local.get	4
	i64.load	0
	local.set	55
	i64.const	1
	local.set	56
	local.get	55
	local.get	56
	i64.shr_u
	local.set	57
	local.get	4
	local.get	57
	i64.store	0
	br      	0                               # 0: up to label305
.LBB102_5:
	end_loop
	end_block                               # label304:
	local.get	4
	i64.load	8
	local.set	58
	local.get	58
	return
	end_function
                                        # -- End function
	.section	.text.udivmodsi4,"",@
	.hidden	udivmodsi4                      # -- Begin function udivmodsi4
	.globl	udivmodsi4
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
	.functype	udivmodsi4 (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc_udivmodsi4
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc_udivmodsi4
	i32.const	1
	local.set	11
	local.get	5
	local.get	11
	i32.store	12
	i32.const	0
	local.set	12
	local.get	5
	local.get	12
	i32.store	8
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label307:
	local.get	5
	i32.load	20
	local.set	13
	local.get	5
	i32.load	24
	local.set	14
	local.get	13
	local.get	14
	i32.lt_u
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
	br_if   	0                               # 0: down to label308
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.103
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.103
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc_udivmodsi4+32
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc_udivmodsi4+32
	local.get	5
	i32.load	12
	local.set	30
	i32.const	0
	local.set	31
	local.get	31
	local.set	19
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label308
# %bb.3:                                #   in Loop: Header=BB103_1 Depth=1
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.103+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.103+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc_udivmodsi4+40
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc_udivmodsi4+40
# %bb.4:                                #   in Loop: Header=BB103_1 Depth=1
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc_udivmodsi4+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc_udivmodsi4+16
	local.get	5
	i32.load	20
	local.set	47
	i32.const	-2147483648
	local.set	48
	local.get	47
	local.get	48
	i32.and 
	local.set	49
	i32.const	0
	local.set	50
	local.get	49
	local.get	50
	i32.ne  
	local.set	51
	i32.const	-1
	local.set	52
	local.get	51
	local.get	52
	i32.xor 
	local.set	53
	i32.const	1
	local.set	54
	local.get	53
	local.get	54
	i32.and 
	local.set	55
	local.get	53
	local.set	19
	local.get	55
	i32.eqz
	br_if   	0                               # 0: down to label308
# %bb.5:                                #   in Loop: Header=BB103_1 Depth=1
	i32.const	0
	local.set	56
	local.get	56
	i64.load	__llvm_gcov_ctr.103+16
	local.set	57
	i64.const	1
	local.set	58
	local.get	57
	local.get	58
	i64.add 
	local.set	59
	i32.const	0
	local.set	60
	local.get	60
	local.get	59
	i64.store	__llvm_gcov_ctr.103+16
	i32.const	0
	local.set	61
	local.get	61
	i64.load	.L__profc_udivmodsi4+24
	local.set	62
	i64.const	1
	local.set	63
	local.get	62
	local.get	63
	i64.add 
	local.set	64
	i32.const	0
	local.set	65
	local.get	65
	local.get	64
	i64.store	.L__profc_udivmodsi4+24
	local.get	53
	local.set	19
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	end_block                               # label308:
	local.get	19
	local.set	66
	i32.const	1
	local.set	67
	local.get	66
	local.get	67
	i32.and 
	local.set	68
	block   	
	local.get	68
	i32.eqz
	br_if   	0                               # 0: down to label309
# %bb.7:                                #   in Loop: Header=BB103_1 Depth=1
	i32.const	0
	local.set	69
	local.get	69
	i64.load	__llvm_gcov_ctr.103+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.103+24
	i32.const	0
	local.set	74
	local.get	74
	i64.load	.L__profc_udivmodsi4+8
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	.L__profc_udivmodsi4+8
	local.get	5
	i32.load	20
	local.set	79
	i32.const	1
	local.set	80
	local.get	79
	local.get	80
	i32.shl 
	local.set	81
	local.get	5
	local.get	81
	i32.store	20
	local.get	5
	i32.load	12
	local.set	82
	i32.const	1
	local.set	83
	local.get	82
	local.get	83
	i32.shl 
	local.set	84
	local.get	5
	local.get	84
	i32.store	12
	br      	1                               # 1: up to label307
.LBB103_8:
	end_block                               # label309:
	end_loop
.LBB103_9:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label311:
	local.get	5
	i32.load	12
	local.set	85
	local.get	85
	i32.eqz
	br_if   	1                               # 1: down to label310
# %bb.10:                               #   in Loop: Header=BB103_9 Depth=1
	i32.const	0
	local.set	86
	local.get	86
	i64.load	.L__profc_udivmodsi4+48
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	.L__profc_udivmodsi4+48
	local.get	5
	i32.load	24
	local.set	91
	local.get	5
	i32.load	20
	local.set	92
	local.get	91
	local.get	92
	i32.ge_u
	local.set	93
	i32.const	1
	local.set	94
	local.get	93
	local.get	94
	i32.and 
	local.set	95
	block   	
	local.get	95
	i32.eqz
	br_if   	0                               # 0: down to label312
# %bb.11:                               #   in Loop: Header=BB103_9 Depth=1
	i32.const	0
	local.set	96
	local.get	96
	i64.load	__llvm_gcov_ctr.103+32
	local.set	97
	i64.const	1
	local.set	98
	local.get	97
	local.get	98
	i64.add 
	local.set	99
	i32.const	0
	local.set	100
	local.get	100
	local.get	99
	i64.store	__llvm_gcov_ctr.103+32
	i32.const	0
	local.set	101
	local.get	101
	i64.load	.L__profc_udivmodsi4+56
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	i32.const	0
	local.set	105
	local.get	105
	local.get	104
	i64.store	.L__profc_udivmodsi4+56
	local.get	5
	i32.load	20
	local.set	106
	local.get	5
	i32.load	24
	local.set	107
	local.get	107
	local.get	106
	i32.sub 
	local.set	108
	local.get	5
	local.get	108
	i32.store	24
	local.get	5
	i32.load	12
	local.set	109
	local.get	5
	i32.load	8
	local.set	110
	local.get	110
	local.get	109
	i32.or  
	local.set	111
	local.get	5
	local.get	111
	i32.store	8
.LBB103_12:                             #   in Loop: Header=BB103_9 Depth=1
	end_block                               # label312:
	i32.const	0
	local.set	112
	local.get	112
	i64.load	__llvm_gcov_ctr.103+40
	local.set	113
	i64.const	1
	local.set	114
	local.get	113
	local.get	114
	i64.add 
	local.set	115
	i32.const	0
	local.set	116
	local.get	116
	local.get	115
	i64.store	__llvm_gcov_ctr.103+40
	local.get	5
	i32.load	12
	local.set	117
	i32.const	1
	local.set	118
	local.get	117
	local.get	118
	i32.shr_u
	local.set	119
	local.get	5
	local.get	119
	i32.store	12
	local.get	5
	i32.load	20
	local.set	120
	i32.const	1
	local.set	121
	local.get	120
	local.get	121
	i32.shr_u
	local.set	122
	local.get	5
	local.get	122
	i32.store	20
	br      	0                               # 0: up to label311
.LBB103_13:
	end_loop
	end_block                               # label310:
	local.get	5
	i32.load	16
	local.set	123
	block   	
	block   	
	local.get	123
	i32.eqz
	br_if   	0                               # 0: down to label314
# %bb.14:
	i32.const	0
	local.set	124
	local.get	124
	i64.load	__llvm_gcov_ctr.103+48
	local.set	125
	i64.const	1
	local.set	126
	local.get	125
	local.get	126
	i64.add 
	local.set	127
	i32.const	0
	local.set	128
	local.get	128
	local.get	127
	i64.store	__llvm_gcov_ctr.103+48
	i32.const	0
	local.set	129
	local.get	129
	i64.load	.L__profc_udivmodsi4+64
	local.set	130
	i64.const	1
	local.set	131
	local.get	130
	local.get	131
	i64.add 
	local.set	132
	i32.const	0
	local.set	133
	local.get	133
	local.get	132
	i64.store	.L__profc_udivmodsi4+64
	local.get	5
	i32.load	24
	local.set	134
	local.get	5
	local.get	134
	i32.store	28
	br      	1                               # 1: down to label313
.LBB103_15:
	end_block                               # label314:
	i32.const	0
	local.set	135
	local.get	135
	i64.load	__llvm_gcov_ctr.103+56
	local.set	136
	i64.const	1
	local.set	137
	local.get	136
	local.get	137
	i64.add 
	local.set	138
	i32.const	0
	local.set	139
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.103+56
	local.get	5
	i32.load	8
	local.set	140
	local.get	5
	local.get	140
	i32.store	28
.LBB103_16:
	end_block                               # label313:
	local.get	5
	i32.load	28
	local.set	141
	local.get	141
	return
	end_function
                                        # -- End function
	.section	.text.__clrsbqi2,"",@
	.hidden	__clrsbqi2                      # -- Begin function __clrsbqi2
	.globl	__clrsbqi2
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
	.functype	__clrsbqi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	4
	local.get	4
	i64.load	.L__profc___clrsbqi2
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc___clrsbqi2
	local.get	3
	i32.load8_u	11
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
	local.get	12
	local.get	13
	i32.lt_s
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
	br_if   	0                               # 0: down to label315
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.104
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.104
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc___clrsbqi2+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc___clrsbqi2+8
	local.get	3
	i32.load8_u	11
	local.set	27
	i32.const	24
	local.set	28
	local.get	27
	local.get	28
	i32.shl 
	local.set	29
	local.get	29
	local.get	28
	i32.shr_s
	local.set	30
	i32.const	-1
	local.set	31
	local.get	30
	local.get	31
	i32.xor 
	local.set	32
	local.get	3
	local.get	32
	i32.store8	11
.LBB104_2:
	end_block                               # label315:
	local.get	3
	i32.load8_u	11
	local.set	33
	i32.const	24
	local.set	34
	local.get	33
	local.get	34
	i32.shl 
	local.set	35
	local.get	35
	local.get	34
	i32.shr_s
	local.set	36
	block   	
	block   	
	local.get	36
	br_if   	0                               # 0: down to label317
# %bb.3:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.104+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.104+8
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc___clrsbqi2+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc___clrsbqi2+16
	i32.const	7
	local.set	47
	local.get	3
	local.get	47
	i32.store	12
	br      	1                               # 1: down to label316
.LBB104_4:
	end_block                               # label317:
	i32.const	0
	local.set	48
	local.get	48
	i64.load	__llvm_gcov_ctr.104+16
	local.set	49
	i64.const	1
	local.set	50
	local.get	49
	local.get	50
	i64.add 
	local.set	51
	i32.const	0
	local.set	52
	local.get	52
	local.get	51
	i64.store	__llvm_gcov_ctr.104+16
	local.get	3
	i32.load8_u	11
	local.set	53
	i32.const	24
	local.set	54
	local.get	53
	local.get	54
	i32.shl 
	local.set	55
	local.get	55
	local.get	54
	i32.shr_s
	local.set	56
	i32.const	8
	local.set	57
	local.get	56
	local.get	57
	i32.shl 
	local.set	58
	local.get	58
	i32.clz 
	local.set	59
	local.get	3
	local.get	59
	i32.store	4
	local.get	3
	i32.load	4
	local.set	60
	i32.const	1
	local.set	61
	local.get	60
	local.get	61
	i32.sub 
	local.set	62
	local.get	3
	local.get	62
	i32.store	12
.LBB104_5:
	end_block                               # label316:
	local.get	3
	i32.load	12
	local.set	63
	local.get	63
	return
	end_function
                                        # -- End function
	.section	.text.__clrsbdi2,"",@
	.hidden	__clrsbdi2                      # -- Begin function __clrsbdi2
	.globl	__clrsbdi2
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
	.functype	__clrsbdi2 (i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	4
	local.get	4
	i64.load	.L__profc___clrsbdi2
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc___clrsbdi2
	local.get	3
	i64.load	16
	local.set	9
	i64.const	0
	local.set	10
	local.get	9
	local.get	10
	i64.lt_s
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
	br_if   	0                               # 0: down to label318
# %bb.1:
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.105
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.105
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc___clrsbdi2+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc___clrsbdi2+8
	local.get	3
	i64.load	16
	local.set	24
	i64.const	-1
	local.set	25
	local.get	24
	local.get	25
	i64.xor 
	local.set	26
	local.get	3
	local.get	26
	i64.store	16
.LBB105_2:
	end_block                               # label318:
	local.get	3
	i64.load	16
	local.set	27
	i64.const	0
	local.set	28
	local.get	27
	local.get	28
	i64.eq  
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	block   	
	block   	
	local.get	31
	i32.eqz
	br_if   	0                               # 0: down to label320
# %bb.3:
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.105+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.105+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc___clrsbdi2+16
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc___clrsbdi2+16
	i32.const	63
	local.set	42
	local.get	3
	local.get	42
	i32.store	28
	br      	1                               # 1: down to label319
.LBB105_4:
	end_block                               # label320:
	i32.const	0
	local.set	43
	local.get	43
	i64.load	__llvm_gcov_ctr.105+16
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	__llvm_gcov_ctr.105+16
	local.get	3
	i64.load	16
	local.set	48
	local.get	48
	i64.clz 
	local.set	49
	local.get	49
	i32.wrap_i64
	local.set	50
	local.get	3
	local.get	50
	i32.store	12
	local.get	3
	i32.load	12
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.sub 
	local.set	53
	local.get	3
	local.get	53
	i32.store	28
.LBB105_5:
	end_block                               # label319:
	local.get	3
	i32.load	28
	local.set	54
	local.get	54
	return
	end_function
                                        # -- End function
	.section	.text.__mulsi3,"",@
	.hidden	__mulsi3                        # -- Begin function __mulsi3
	.globl	__mulsi3
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
	.functype	__mulsi3 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.106
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.106
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___mulsi3
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___mulsi3
	i32.const	0
	local.set	15
	local.get	4
	local.get	15
	i32.store	4
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label322:
	local.get	4
	i32.load	12
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label321
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	i32.const	0
	local.set	17
	local.get	17
	i64.load	.L__profc___mulsi3+8
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	.L__profc___mulsi3+8
	local.get	4
	i32.load	12
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
	br_if   	0                               # 0: down to label323
# %bb.3:                                #   in Loop: Header=BB106_1 Depth=1
	i32.const	0
	local.set	25
	local.get	25
	i64.load	__llvm_gcov_ctr.106+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.106+8
	i32.const	0
	local.set	30
	local.get	30
	i64.load	.L__profc___mulsi3+16
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	.L__profc___mulsi3+16
	local.get	4
	i32.load	8
	local.set	35
	local.get	4
	i32.load	4
	local.set	36
	local.get	36
	local.get	35
	i32.add 
	local.set	37
	local.get	4
	local.get	37
	i32.store	4
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	end_block                               # label323:
	i32.const	0
	local.set	38
	local.get	38
	i64.load	__llvm_gcov_ctr.106+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	__llvm_gcov_ctr.106+16
	local.get	4
	i32.load	12
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.shr_u
	local.set	45
	local.get	4
	local.get	45
	i32.store	12
	local.get	4
	i32.load	8
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.shl 
	local.set	48
	local.get	4
	local.get	48
	i32.store	8
	br      	0                               # 0: up to label322
.LBB106_5:
	end_loop
	end_block                               # label321:
	local.get	4
	i32.load	4
	local.set	49
	local.get	49
	return
	end_function
                                        # -- End function
	.section	.text.__cmovd,"",@
	.hidden	__cmovd                         # -- Begin function __cmovd
	.globl	__cmovd
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
	.functype	__cmovd (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc___cmovd
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc___cmovd
	local.get	5
	i32.load	20
	local.set	11
	i32.const	3
	local.set	12
	local.get	11
	local.get	12
	i32.shr_u
	local.set	13
	local.get	5
	local.get	13
	i32.store	12
	local.get	5
	i32.load	20
	local.set	14
	i32.const	-8
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	5
	local.get	16
	i32.store	8
	local.get	5
	i32.load	28
	local.set	17
	local.get	5
	local.get	17
	i32.store	4
	local.get	5
	i32.load	24
	local.set	18
	local.get	5
	local.get	18
	i32.store	0
	local.get	5
	i32.load	4
	local.set	19
	local.get	5
	i32.load	0
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
	block   	
	block   	
	local.get	23
	br_if   	0                               # 0: down to label326
# %bb.1:
	i32.const	0
	local.set	24
	local.get	24
	i64.load	__llvm_gcov_ctr.107
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	i32.const	0
	local.set	28
	local.get	28
	local.get	27
	i64.store	__llvm_gcov_ctr.107
	i32.const	0
	local.set	29
	local.get	29
	i64.load	.L__profc___cmovd+16
	local.set	30
	i64.const	1
	local.set	31
	local.get	30
	local.get	31
	i64.add 
	local.set	32
	i32.const	0
	local.set	33
	local.get	33
	local.get	32
	i64.store	.L__profc___cmovd+16
	local.get	5
	i32.load	4
	local.set	34
	local.get	5
	i32.load	0
	local.set	35
	local.get	5
	i32.load	20
	local.set	36
	local.get	35
	local.get	36
	i32.add 
	local.set	37
	local.get	34
	local.get	37
	i32.gt_u
	local.set	38
	i32.const	1
	local.set	39
	local.get	38
	local.get	39
	i32.and 
	local.set	40
	local.get	40
	br_if   	0                               # 0: down to label326
# %bb.2:
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc___cmovd+24
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc___cmovd+24
	br      	1                               # 1: down to label325
.LBB107_3:
	end_block                               # label326:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	.L__profc___cmovd+8
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	.L__profc___cmovd+8
	i32.const	0
	local.set	51
	local.get	5
	local.get	51
	i32.store	16
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label328:
	local.get	5
	i32.load	16
	local.set	52
	local.get	5
	i32.load	12
	local.set	53
	local.get	52
	local.get	53
	i32.lt_u
	local.set	54
	i32.const	1
	local.set	55
	local.get	54
	local.get	55
	i32.and 
	local.set	56
	local.get	56
	i32.eqz
	br_if   	1                               # 1: down to label327
# %bb.5:                                #   in Loop: Header=BB107_4 Depth=1
	i32.const	0
	local.set	57
	local.get	57
	i64.load	.L__profc___cmovd+32
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	.L__profc___cmovd+32
	local.get	5
	i32.load	24
	local.set	62
	local.get	5
	i32.load	16
	local.set	63
	i32.const	3
	local.set	64
	local.get	63
	local.get	64
	i32.shl 
	local.set	65
	local.get	62
	local.get	65
	i32.add 
	local.set	66
	local.get	66
	i64.load	0
	local.set	67
	local.get	5
	i32.load	28
	local.set	68
	local.get	5
	i32.load	16
	local.set	69
	i32.const	3
	local.set	70
	local.get	69
	local.get	70
	i32.shl 
	local.set	71
	local.get	68
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	local.get	67
	i64.store	0
# %bb.6:                                #   in Loop: Header=BB107_4 Depth=1
	i32.const	0
	local.set	73
	local.get	73
	i64.load	__llvm_gcov_ctr.107+8
	local.set	74
	i64.const	1
	local.set	75
	local.get	74
	local.get	75
	i64.add 
	local.set	76
	i32.const	0
	local.set	77
	local.get	77
	local.get	76
	i64.store	__llvm_gcov_ctr.107+8
	local.get	5
	i32.load	16
	local.set	78
	i32.const	1
	local.set	79
	local.get	78
	local.get	79
	i32.add 
	local.set	80
	local.get	5
	local.get	80
	i32.store	16
	br      	0                               # 0: up to label328
.LBB107_7:
	end_loop
	end_block                               # label327:
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label330:
	local.get	5
	i32.load	20
	local.set	81
	local.get	5
	i32.load	8
	local.set	82
	local.get	81
	local.get	82
	i32.gt_u
	local.set	83
	i32.const	1
	local.set	84
	local.get	83
	local.get	84
	i32.and 
	local.set	85
	local.get	85
	i32.eqz
	br_if   	1                               # 1: down to label329
# %bb.9:                                #   in Loop: Header=BB107_8 Depth=1
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.107+16
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.107+16
	i32.const	0
	local.set	91
	local.get	91
	i64.load	.L__profc___cmovd+40
	local.set	92
	i64.const	1
	local.set	93
	local.get	92
	local.get	93
	i64.add 
	local.set	94
	i32.const	0
	local.set	95
	local.get	95
	local.get	94
	i64.store	.L__profc___cmovd+40
	local.get	5
	i32.load	0
	local.set	96
	local.get	5
	i32.load	8
	local.set	97
	local.get	96
	local.get	97
	i32.add 
	local.set	98
	local.get	98
	i32.load8_u	0
	local.set	99
	local.get	5
	i32.load	4
	local.set	100
	local.get	5
	i32.load	8
	local.set	101
	local.get	100
	local.get	101
	i32.add 
	local.set	102
	local.get	102
	local.get	99
	i32.store8	0
	local.get	5
	i32.load	8
	local.set	103
	i32.const	1
	local.set	104
	local.get	103
	local.get	104
	i32.add 
	local.set	105
	local.get	5
	local.get	105
	i32.store	8
	br      	0                               # 0: up to label330
.LBB107_10:
	end_loop
	end_block                               # label329:
	i32.const	0
	local.set	106
	local.get	106
	i64.load	__llvm_gcov_ctr.107+24
	local.set	107
	i64.const	1
	local.set	108
	local.get	107
	local.get	108
	i64.add 
	local.set	109
	i32.const	0
	local.set	110
	local.get	110
	local.get	109
	i64.store	__llvm_gcov_ctr.107+24
	br      	1                               # 1: down to label324
.LBB107_11:
	end_block                               # label325:
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label332:
	local.get	5
	i32.load	20
	local.set	111
	i32.const	-1
	local.set	112
	local.get	111
	local.get	112
	i32.add 
	local.set	113
	local.get	5
	local.get	113
	i32.store	20
	i32.const	0
	local.set	114
	local.get	111
	local.get	114
	i32.gt_u
	local.set	115
	i32.const	1
	local.set	116
	local.get	115
	local.get	116
	i32.and 
	local.set	117
	local.get	117
	i32.eqz
	br_if   	1                               # 1: down to label331
# %bb.13:                               #   in Loop: Header=BB107_12 Depth=1
	i32.const	0
	local.set	118
	local.get	118
	i64.load	__llvm_gcov_ctr.107+32
	local.set	119
	i64.const	1
	local.set	120
	local.get	119
	local.get	120
	i64.add 
	local.set	121
	i32.const	0
	local.set	122
	local.get	122
	local.get	121
	i64.store	__llvm_gcov_ctr.107+32
	i32.const	0
	local.set	123
	local.get	123
	i64.load	.L__profc___cmovd+48
	local.set	124
	i64.const	1
	local.set	125
	local.get	124
	local.get	125
	i64.add 
	local.set	126
	i32.const	0
	local.set	127
	local.get	127
	local.get	126
	i64.store	.L__profc___cmovd+48
	local.get	5
	i32.load	0
	local.set	128
	local.get	5
	i32.load	20
	local.set	129
	local.get	128
	local.get	129
	i32.add 
	local.set	130
	local.get	130
	i32.load8_u	0
	local.set	131
	local.get	5
	i32.load	4
	local.set	132
	local.get	5
	i32.load	20
	local.set	133
	local.get	132
	local.get	133
	i32.add 
	local.set	134
	local.get	134
	local.get	131
	i32.store8	0
	br      	0                               # 0: up to label332
.LBB107_14:
	end_loop
	end_block                               # label331:
	i32.const	0
	local.set	135
	local.get	135
	i64.load	__llvm_gcov_ctr.107+40
	local.set	136
	i64.const	1
	local.set	137
	local.get	136
	local.get	137
	i64.add 
	local.set	138
	i32.const	0
	local.set	139
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.107+40
.LBB107_15:
	end_block                               # label324:
	return
	end_function
                                        # -- End function
	.section	.text.__cmovh,"",@
	.hidden	__cmovh                         # -- Begin function __cmovh
	.globl	__cmovh
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
	.functype	__cmovh (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc___cmovh
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc___cmovh
	local.get	5
	i32.load	20
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.shr_u
	local.set	13
	local.get	5
	local.get	13
	i32.store	12
	local.get	5
	i32.load	28
	local.set	14
	local.get	5
	local.get	14
	i32.store	8
	local.get	5
	i32.load	24
	local.set	15
	local.get	5
	local.get	15
	i32.store	4
	local.get	5
	i32.load	8
	local.set	16
	local.get	5
	i32.load	4
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
	block   	
	block   	
	local.get	20
	br_if   	0                               # 0: down to label335
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.108
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.108
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc___cmovh+16
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc___cmovh+16
	local.get	5
	i32.load	8
	local.set	31
	local.get	5
	i32.load	4
	local.set	32
	local.get	5
	i32.load	20
	local.set	33
	local.get	32
	local.get	33
	i32.add 
	local.set	34
	local.get	31
	local.get	34
	i32.gt_u
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	local.get	37
	br_if   	0                               # 0: down to label335
# %bb.2:
	i32.const	0
	local.set	38
	local.get	38
	i64.load	.L__profc___cmovh+24
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	.L__profc___cmovh+24
	br      	1                               # 1: down to label334
.LBB108_3:
	end_block                               # label335:
	i32.const	0
	local.set	43
	local.get	43
	i64.load	.L__profc___cmovh+8
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	.L__profc___cmovh+8
	i32.const	0
	local.set	48
	local.get	5
	local.get	48
	i32.store	16
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label337:
	local.get	5
	i32.load	16
	local.set	49
	local.get	5
	i32.load	12
	local.set	50
	local.get	49
	local.get	50
	i32.lt_u
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	local.get	53
	i32.eqz
	br_if   	1                               # 1: down to label336
# %bb.5:                                #   in Loop: Header=BB108_4 Depth=1
	i32.const	0
	local.set	54
	local.get	54
	i64.load	.L__profc___cmovh+32
	local.set	55
	i64.const	1
	local.set	56
	local.get	55
	local.get	56
	i64.add 
	local.set	57
	i32.const	0
	local.set	58
	local.get	58
	local.get	57
	i64.store	.L__profc___cmovh+32
	local.get	5
	i32.load	24
	local.set	59
	local.get	5
	i32.load	16
	local.set	60
	i32.const	1
	local.set	61
	local.get	60
	local.get	61
	i32.shl 
	local.set	62
	local.get	59
	local.get	62
	i32.add 
	local.set	63
	local.get	63
	i32.load16_u	0
	local.set	64
	local.get	5
	i32.load	28
	local.set	65
	local.get	5
	i32.load	16
	local.set	66
	i32.const	1
	local.set	67
	local.get	66
	local.get	67
	i32.shl 
	local.set	68
	local.get	65
	local.get	68
	i32.add 
	local.set	69
	local.get	69
	local.get	64
	i32.store16	0
# %bb.6:                                #   in Loop: Header=BB108_4 Depth=1
	i32.const	0
	local.set	70
	local.get	70
	i64.load	__llvm_gcov_ctr.108+8
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	__llvm_gcov_ctr.108+8
	local.get	5
	i32.load	16
	local.set	75
	i32.const	1
	local.set	76
	local.get	75
	local.get	76
	i32.add 
	local.set	77
	local.get	5
	local.get	77
	i32.store	16
	br      	0                               # 0: up to label337
.LBB108_7:
	end_loop
	end_block                               # label336:
	local.get	5
	i32.load	20
	local.set	78
	i32.const	1
	local.set	79
	local.get	78
	local.get	79
	i32.and 
	local.set	80
	block   	
	local.get	80
	i32.eqz
	br_if   	0                               # 0: down to label338
# %bb.8:
	i32.const	0
	local.set	81
	local.get	81
	i64.load	__llvm_gcov_ctr.108+16
	local.set	82
	i64.const	1
	local.set	83
	local.get	82
	local.get	83
	i64.add 
	local.set	84
	i32.const	0
	local.set	85
	local.get	85
	local.get	84
	i64.store	__llvm_gcov_ctr.108+16
	i32.const	0
	local.set	86
	local.get	86
	i64.load	.L__profc___cmovh+40
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	.L__profc___cmovh+40
	local.get	5
	i32.load	4
	local.set	91
	local.get	5
	i32.load	20
	local.set	92
	i32.const	1
	local.set	93
	local.get	92
	local.get	93
	i32.sub 
	local.set	94
	local.get	91
	local.get	94
	i32.add 
	local.set	95
	local.get	95
	i32.load8_u	0
	local.set	96
	local.get	5
	i32.load	8
	local.set	97
	local.get	5
	i32.load	20
	local.set	98
	i32.const	1
	local.set	99
	local.get	98
	local.get	99
	i32.sub 
	local.set	100
	local.get	97
	local.get	100
	i32.add 
	local.set	101
	local.get	101
	local.get	96
	i32.store8	0
.LBB108_9:
	end_block                               # label338:
	i32.const	0
	local.set	102
	local.get	102
	i64.load	__llvm_gcov_ctr.108+24
	local.set	103
	i64.const	1
	local.set	104
	local.get	103
	local.get	104
	i64.add 
	local.set	105
	i32.const	0
	local.set	106
	local.get	106
	local.get	105
	i64.store	__llvm_gcov_ctr.108+24
	br      	1                               # 1: down to label333
.LBB108_10:
	end_block                               # label334:
.LBB108_11:                             # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label340:
	local.get	5
	i32.load	20
	local.set	107
	i32.const	-1
	local.set	108
	local.get	107
	local.get	108
	i32.add 
	local.set	109
	local.get	5
	local.get	109
	i32.store	20
	i32.const	0
	local.set	110
	local.get	107
	local.get	110
	i32.gt_u
	local.set	111
	i32.const	1
	local.set	112
	local.get	111
	local.get	112
	i32.and 
	local.set	113
	local.get	113
	i32.eqz
	br_if   	1                               # 1: down to label339
# %bb.12:                               #   in Loop: Header=BB108_11 Depth=1
	i32.const	0
	local.set	114
	local.get	114
	i64.load	__llvm_gcov_ctr.108+32
	local.set	115
	i64.const	1
	local.set	116
	local.get	115
	local.get	116
	i64.add 
	local.set	117
	i32.const	0
	local.set	118
	local.get	118
	local.get	117
	i64.store	__llvm_gcov_ctr.108+32
	i32.const	0
	local.set	119
	local.get	119
	i64.load	.L__profc___cmovh+48
	local.set	120
	i64.const	1
	local.set	121
	local.get	120
	local.get	121
	i64.add 
	local.set	122
	i32.const	0
	local.set	123
	local.get	123
	local.get	122
	i64.store	.L__profc___cmovh+48
	local.get	5
	i32.load	4
	local.set	124
	local.get	5
	i32.load	20
	local.set	125
	local.get	124
	local.get	125
	i32.add 
	local.set	126
	local.get	126
	i32.load8_u	0
	local.set	127
	local.get	5
	i32.load	8
	local.set	128
	local.get	5
	i32.load	20
	local.set	129
	local.get	128
	local.get	129
	i32.add 
	local.set	130
	local.get	130
	local.get	127
	i32.store8	0
	br      	0                               # 0: up to label340
.LBB108_13:
	end_loop
	end_block                               # label339:
	i32.const	0
	local.set	131
	local.get	131
	i64.load	__llvm_gcov_ctr.108+40
	local.set	132
	i64.const	1
	local.set	133
	local.get	132
	local.get	133
	i64.add 
	local.set	134
	i32.const	0
	local.set	135
	local.get	135
	local.get	134
	i64.store	__llvm_gcov_ctr.108+40
.LBB108_14:
	end_block                               # label333:
	return
	end_function
                                        # -- End function
	.section	.text.__cmovw,"",@
	.hidden	__cmovw                         # -- Begin function __cmovw
	.globl	__cmovw
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
	.functype	__cmovw (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc___cmovw
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc___cmovw
	local.get	5
	i32.load	20
	local.set	11
	i32.const	2
	local.set	12
	local.get	11
	local.get	12
	i32.shr_u
	local.set	13
	local.get	5
	local.get	13
	i32.store	12
	local.get	5
	i32.load	20
	local.set	14
	i32.const	-4
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	5
	local.get	16
	i32.store	8
	local.get	5
	i32.load	28
	local.set	17
	local.get	5
	local.get	17
	i32.store	4
	local.get	5
	i32.load	24
	local.set	18
	local.get	5
	local.get	18
	i32.store	0
	local.get	5
	i32.load	4
	local.set	19
	local.get	5
	i32.load	0
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
	block   	
	block   	
	local.get	23
	br_if   	0                               # 0: down to label343
# %bb.1:
	i32.const	0
	local.set	24
	local.get	24
	i64.load	__llvm_gcov_ctr.109
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	i32.const	0
	local.set	28
	local.get	28
	local.get	27
	i64.store	__llvm_gcov_ctr.109
	i32.const	0
	local.set	29
	local.get	29
	i64.load	.L__profc___cmovw+16
	local.set	30
	i64.const	1
	local.set	31
	local.get	30
	local.get	31
	i64.add 
	local.set	32
	i32.const	0
	local.set	33
	local.get	33
	local.get	32
	i64.store	.L__profc___cmovw+16
	local.get	5
	i32.load	4
	local.set	34
	local.get	5
	i32.load	0
	local.set	35
	local.get	5
	i32.load	20
	local.set	36
	local.get	35
	local.get	36
	i32.add 
	local.set	37
	local.get	34
	local.get	37
	i32.gt_u
	local.set	38
	i32.const	1
	local.set	39
	local.get	38
	local.get	39
	i32.and 
	local.set	40
	local.get	40
	br_if   	0                               # 0: down to label343
# %bb.2:
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc___cmovw+24
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc___cmovw+24
	br      	1                               # 1: down to label342
.LBB109_3:
	end_block                               # label343:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	.L__profc___cmovw+8
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	.L__profc___cmovw+8
	i32.const	0
	local.set	51
	local.get	5
	local.get	51
	i32.store	16
.LBB109_4:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label345:
	local.get	5
	i32.load	16
	local.set	52
	local.get	5
	i32.load	12
	local.set	53
	local.get	52
	local.get	53
	i32.lt_u
	local.set	54
	i32.const	1
	local.set	55
	local.get	54
	local.get	55
	i32.and 
	local.set	56
	local.get	56
	i32.eqz
	br_if   	1                               # 1: down to label344
# %bb.5:                                #   in Loop: Header=BB109_4 Depth=1
	i32.const	0
	local.set	57
	local.get	57
	i64.load	.L__profc___cmovw+32
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	.L__profc___cmovw+32
	local.get	5
	i32.load	24
	local.set	62
	local.get	5
	i32.load	16
	local.set	63
	i32.const	2
	local.set	64
	local.get	63
	local.get	64
	i32.shl 
	local.set	65
	local.get	62
	local.get	65
	i32.add 
	local.set	66
	local.get	66
	i32.load	0
	local.set	67
	local.get	5
	i32.load	28
	local.set	68
	local.get	5
	i32.load	16
	local.set	69
	i32.const	2
	local.set	70
	local.get	69
	local.get	70
	i32.shl 
	local.set	71
	local.get	68
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	local.get	67
	i32.store	0
# %bb.6:                                #   in Loop: Header=BB109_4 Depth=1
	i32.const	0
	local.set	73
	local.get	73
	i64.load	__llvm_gcov_ctr.109+8
	local.set	74
	i64.const	1
	local.set	75
	local.get	74
	local.get	75
	i64.add 
	local.set	76
	i32.const	0
	local.set	77
	local.get	77
	local.get	76
	i64.store	__llvm_gcov_ctr.109+8
	local.get	5
	i32.load	16
	local.set	78
	i32.const	1
	local.set	79
	local.get	78
	local.get	79
	i32.add 
	local.set	80
	local.get	5
	local.get	80
	i32.store	16
	br      	0                               # 0: up to label345
.LBB109_7:
	end_loop
	end_block                               # label344:
.LBB109_8:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label347:
	local.get	5
	i32.load	20
	local.set	81
	local.get	5
	i32.load	8
	local.set	82
	local.get	81
	local.get	82
	i32.gt_u
	local.set	83
	i32.const	1
	local.set	84
	local.get	83
	local.get	84
	i32.and 
	local.set	85
	local.get	85
	i32.eqz
	br_if   	1                               # 1: down to label346
# %bb.9:                                #   in Loop: Header=BB109_8 Depth=1
	i32.const	0
	local.set	86
	local.get	86
	i64.load	__llvm_gcov_ctr.109+16
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	__llvm_gcov_ctr.109+16
	i32.const	0
	local.set	91
	local.get	91
	i64.load	.L__profc___cmovw+40
	local.set	92
	i64.const	1
	local.set	93
	local.get	92
	local.get	93
	i64.add 
	local.set	94
	i32.const	0
	local.set	95
	local.get	95
	local.get	94
	i64.store	.L__profc___cmovw+40
	local.get	5
	i32.load	0
	local.set	96
	local.get	5
	i32.load	8
	local.set	97
	local.get	96
	local.get	97
	i32.add 
	local.set	98
	local.get	98
	i32.load8_u	0
	local.set	99
	local.get	5
	i32.load	4
	local.set	100
	local.get	5
	i32.load	8
	local.set	101
	local.get	100
	local.get	101
	i32.add 
	local.set	102
	local.get	102
	local.get	99
	i32.store8	0
	local.get	5
	i32.load	8
	local.set	103
	i32.const	1
	local.set	104
	local.get	103
	local.get	104
	i32.add 
	local.set	105
	local.get	5
	local.get	105
	i32.store	8
	br      	0                               # 0: up to label347
.LBB109_10:
	end_loop
	end_block                               # label346:
	i32.const	0
	local.set	106
	local.get	106
	i64.load	__llvm_gcov_ctr.109+24
	local.set	107
	i64.const	1
	local.set	108
	local.get	107
	local.get	108
	i64.add 
	local.set	109
	i32.const	0
	local.set	110
	local.get	110
	local.get	109
	i64.store	__llvm_gcov_ctr.109+24
	br      	1                               # 1: down to label341
.LBB109_11:
	end_block                               # label342:
.LBB109_12:                             # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label349:
	local.get	5
	i32.load	20
	local.set	111
	i32.const	-1
	local.set	112
	local.get	111
	local.get	112
	i32.add 
	local.set	113
	local.get	5
	local.get	113
	i32.store	20
	i32.const	0
	local.set	114
	local.get	111
	local.get	114
	i32.gt_u
	local.set	115
	i32.const	1
	local.set	116
	local.get	115
	local.get	116
	i32.and 
	local.set	117
	local.get	117
	i32.eqz
	br_if   	1                               # 1: down to label348
# %bb.13:                               #   in Loop: Header=BB109_12 Depth=1
	i32.const	0
	local.set	118
	local.get	118
	i64.load	__llvm_gcov_ctr.109+32
	local.set	119
	i64.const	1
	local.set	120
	local.get	119
	local.get	120
	i64.add 
	local.set	121
	i32.const	0
	local.set	122
	local.get	122
	local.get	121
	i64.store	__llvm_gcov_ctr.109+32
	i32.const	0
	local.set	123
	local.get	123
	i64.load	.L__profc___cmovw+48
	local.set	124
	i64.const	1
	local.set	125
	local.get	124
	local.get	125
	i64.add 
	local.set	126
	i32.const	0
	local.set	127
	local.get	127
	local.get	126
	i64.store	.L__profc___cmovw+48
	local.get	5
	i32.load	0
	local.set	128
	local.get	5
	i32.load	20
	local.set	129
	local.get	128
	local.get	129
	i32.add 
	local.set	130
	local.get	130
	i32.load8_u	0
	local.set	131
	local.get	5
	i32.load	4
	local.set	132
	local.get	5
	i32.load	20
	local.set	133
	local.get	132
	local.get	133
	i32.add 
	local.set	134
	local.get	134
	local.get	131
	i32.store8	0
	br      	0                               # 0: up to label349
.LBB109_14:
	end_loop
	end_block                               # label348:
	i32.const	0
	local.set	135
	local.get	135
	i64.load	__llvm_gcov_ctr.109+40
	local.set	136
	i64.const	1
	local.set	137
	local.get	136
	local.get	137
	i64.add 
	local.set	138
	i32.const	0
	local.set	139
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.109+40
.LBB109_15:
	end_block                               # label341:
	return
	end_function
                                        # -- End function
	.section	.text.__modi,"",@
	.hidden	__modi                          # -- Begin function __modi
	.globl	__modi
	.type	__modi,@function
__modi:                                 # @__modi
	.functype	__modi (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.110
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.110
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___modi
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___modi
	local.get	4
	i32.load	12
	local.set	15
	local.get	4
	i32.load	8
	local.set	16
	local.get	15
	local.get	16
	i32.rem_s
	local.set	17
	local.get	17
	return
	end_function
                                        # -- End function
	.section	.text.__uitod,"",@
	.hidden	__uitod                         # -- Begin function __uitod
	.globl	__uitod
	.type	__uitod,@function
__uitod:                                # @__uitod
	.functype	__uitod (i32) -> (f64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.111
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	local.get	4
	local.get	7
	i64.store	__llvm_gcov_ctr.111
	local.get	3
	local.get	0
	i32.store	12
	local.get	4
	i64.load	.L__profc___uitod
	local.set	8
	local.get	8
	local.get	6
	i64.add 
	local.set	9
	local.get	4
	local.get	9
	i64.store	.L__profc___uitod
	local.get	3
	i32.load	12
	local.set	10
	local.get	10
	f64.convert_i32_u
	local.set	11
	local.get	11
	return
	end_function
                                        # -- End function
	.section	.text.__uitof,"",@
	.hidden	__uitof                         # -- Begin function __uitof
	.globl	__uitof
	.type	__uitof,@function
__uitof:                                # @__uitof
	.functype	__uitof (i32) -> (f32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.112
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	local.get	4
	local.get	7
	i64.store	__llvm_gcov_ctr.112
	local.get	3
	local.get	0
	i32.store	12
	local.get	4
	i64.load	.L__profc___uitof
	local.set	8
	local.get	8
	local.get	6
	i64.add 
	local.set	9
	local.get	4
	local.get	9
	i64.store	.L__profc___uitof
	local.get	3
	i32.load	12
	local.set	10
	local.get	10
	f32.convert_i32_u
	local.set	11
	local.get	11
	return
	end_function
                                        # -- End function
	.section	.text.__ulltod,"",@
	.hidden	__ulltod                        # -- Begin function __ulltod
	.globl	__ulltod
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
	.functype	__ulltod (i64) -> (f64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, f64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.113
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	local.get	4
	local.get	7
	i64.store	__llvm_gcov_ctr.113
	local.get	3
	local.get	0
	i64.store	8
	local.get	4
	i64.load	.L__profc___ulltod
	local.set	8
	local.get	8
	local.get	6
	i64.add 
	local.set	9
	local.get	4
	local.get	9
	i64.store	.L__profc___ulltod
	local.get	3
	i64.load	8
	local.set	10
	local.get	10
	f64.convert_i64_u
	local.set	11
	local.get	11
	return
	end_function
                                        # -- End function
	.section	.text.__ulltof,"",@
	.hidden	__ulltof                        # -- Begin function __ulltof
	.globl	__ulltof
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
	.functype	__ulltof (i64) -> (f32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, f32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.114
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	local.get	4
	local.get	7
	i64.store	__llvm_gcov_ctr.114
	local.get	3
	local.get	0
	i64.store	8
	local.get	4
	i64.load	.L__profc___ulltof
	local.set	8
	local.get	8
	local.get	6
	i64.add 
	local.set	9
	local.get	4
	local.get	9
	i64.store	.L__profc___ulltof
	local.get	3
	i64.load	8
	local.set	10
	local.get	10
	f32.convert_i64_u
	local.set	11
	local.get	11
	return
	end_function
                                        # -- End function
	.section	.text.__umodi,"",@
	.hidden	__umodi                         # -- Begin function __umodi
	.globl	__umodi
	.type	__umodi,@function
__umodi:                                # @__umodi
	.functype	__umodi (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.115
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.115
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___umodi
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___umodi
	local.get	4
	i32.load	12
	local.set	15
	local.get	4
	i32.load	8
	local.set	16
	local.get	15
	local.get	16
	i32.rem_u
	local.set	17
	local.get	17
	return
	end_function
                                        # -- End function
	.section	.text.__clzhi2,"",@
	.hidden	__clzhi2                        # -- Begin function __clzhi2
	.globl	__clzhi2
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
	.functype	__clzhi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.116
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.116
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___clzhi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___clzhi2
	i32.const	0
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label351:
	local.get	3
	i32.load	8
	local.set	15
	i32.const	16
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
	local.get	19
	i32.eqz
	br_if   	1                               # 1: down to label350
# %bb.2:                                #   in Loop: Header=BB116_1 Depth=1
	i32.const	0
	local.set	20
	local.get	20
	i64.load	.L__profc___clzhi2+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	.L__profc___clzhi2+8
	local.get	3
	i32.load16_u	14
	local.set	25
	i32.const	65535
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	local.get	3
	i32.load	8
	local.set	28
	i32.const	15
	local.set	29
	local.get	29
	local.get	28
	i32.sub 
	local.set	30
	i32.const	1
	local.set	31
	local.get	31
	local.get	30
	i32.shl 
	local.set	32
	local.get	27
	local.get	32
	i32.and 
	local.set	33
	block   	
	local.get	33
	i32.eqz
	br_if   	0                               # 0: down to label352
# %bb.3:
	i32.const	0
	local.set	34
	local.get	34
	i64.load	__llvm_gcov_ctr.116+8
	local.set	35
	i64.const	1
	local.set	36
	local.get	35
	local.get	36
	i64.add 
	local.set	37
	i32.const	0
	local.set	38
	local.get	38
	local.get	37
	i64.store	__llvm_gcov_ctr.116+8
	i32.const	0
	local.set	39
	local.get	39
	i64.load	.L__profc___clzhi2+16
	local.set	40
	i64.const	1
	local.set	41
	local.get	40
	local.get	41
	i64.add 
	local.set	42
	i32.const	0
	local.set	43
	local.get	43
	local.get	42
	i64.store	.L__profc___clzhi2+16
	br      	2                               # 2: down to label350
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	end_block                               # label352:
# %bb.5:                                #   in Loop: Header=BB116_1 Depth=1
	i32.const	0
	local.set	44
	local.get	44
	i64.load	__llvm_gcov_ctr.116+16
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	local.get	47
	i64.store	__llvm_gcov_ctr.116+16
	local.get	3
	i32.load	8
	local.set	49
	i32.const	1
	local.set	50
	local.get	49
	local.get	50
	i32.add 
	local.set	51
	local.get	3
	local.get	51
	i32.store	8
	br      	0                               # 0: up to label351
.LBB116_6:
	end_loop
	end_block                               # label350:
	local.get	3
	i32.load	8
	local.set	52
	local.get	52
	return
	end_function
                                        # -- End function
	.section	.text.__ctzhi2,"",@
	.hidden	__ctzhi2                        # -- Begin function __ctzhi2
	.globl	__ctzhi2
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
	.functype	__ctzhi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.117
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.117
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___ctzhi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___ctzhi2
	i32.const	0
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label354:
	local.get	3
	i32.load	8
	local.set	15
	i32.const	16
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
	local.get	19
	i32.eqz
	br_if   	1                               # 1: down to label353
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	i32.const	0
	local.set	20
	local.get	20
	i64.load	.L__profc___ctzhi2+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	.L__profc___ctzhi2+8
	local.get	3
	i32.load16_u	14
	local.set	25
	i32.const	65535
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	local.get	3
	i32.load	8
	local.set	28
	i32.const	1
	local.set	29
	local.get	29
	local.get	28
	i32.shl 
	local.set	30
	local.get	27
	local.get	30
	i32.and 
	local.set	31
	block   	
	local.get	31
	i32.eqz
	br_if   	0                               # 0: down to label355
# %bb.3:
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.117+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.117+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc___ctzhi2+16
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc___ctzhi2+16
	br      	2                               # 2: down to label353
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	end_block                               # label355:
# %bb.5:                                #   in Loop: Header=BB117_1 Depth=1
	i32.const	0
	local.set	42
	local.get	42
	i64.load	__llvm_gcov_ctr.117+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	__llvm_gcov_ctr.117+16
	local.get	3
	i32.load	8
	local.set	47
	i32.const	1
	local.set	48
	local.get	47
	local.get	48
	i32.add 
	local.set	49
	local.get	3
	local.get	49
	i32.store	8
	br      	0                               # 0: up to label354
.LBB117_6:
	end_loop
	end_block                               # label353:
	local.get	3
	i32.load	8
	local.set	50
	local.get	50
	return
	end_function
                                        # -- End function
	.section	.text.__fixunssfsi,"",@
	.hidden	__fixunssfsi                    # -- Begin function __fixunssfsi
	.globl	__fixunssfsi
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
	.functype	__fixunssfsi (f32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, f32, f32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, f32, f32, f32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	4
	local.get	4
	i64.load	.L__profc___fixunssfsi
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	.L__profc___fixunssfsi
	local.get	3
	f32.load	8
	local.set	9
	f32.const	0x1p15
	local.set	10
	local.get	9
	local.get	10
	f32.ge  
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label357
# %bb.1:
	i32.const	0
	local.set	14
	local.get	14
	i64.load	__llvm_gcov_ctr.118
	local.set	15
	i64.const	1
	local.set	16
	local.get	15
	local.get	16
	i64.add 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i64.store	__llvm_gcov_ctr.118
	i32.const	0
	local.set	19
	local.get	19
	i64.load	.L__profc___fixunssfsi+8
	local.set	20
	i64.const	1
	local.set	21
	local.get	20
	local.get	21
	i64.add 
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	.L__profc___fixunssfsi+8
	local.get	3
	f32.load	8
	local.set	24
	f32.const	0x1p15
	local.set	25
	local.get	24
	local.get	25
	f32.sub 
	local.set	26
	local.get	26
	f32.abs 
	local.set	27
	f32.const	0x1p31
	local.set	28
	local.get	27
	local.get	28
	f32.lt  
	local.set	29
	local.get	29
	i32.eqz
	local.set	30
	block   	
	block   	
	local.get	30
	br_if   	0                               # 0: down to label359
# %bb.2:
	local.get	26
	i32.trunc_f32_s
	local.set	31
	local.get	31
	local.set	32
	br      	1                               # 1: down to label358
.LBB118_3:
	end_block                               # label359:
	i32.const	-2147483648
	local.set	33
	local.get	33
	local.set	32
.LBB118_4:
	end_block                               # label358:
	local.get	32
	local.set	34
	i32.const	32768
	local.set	35
	local.get	34
	local.get	35
	i32.add 
	local.set	36
	local.get	3
	local.get	36
	i32.store	12
	br      	1                               # 1: down to label356
.LBB118_5:
	end_block                               # label357:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.118+8
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.118+8
	local.get	3
	f32.load	8
	local.set	42
	local.get	42
	f32.abs 
	local.set	43
	f32.const	0x1p31
	local.set	44
	local.get	43
	local.get	44
	f32.lt  
	local.set	45
	local.get	45
	i32.eqz
	local.set	46
	block   	
	block   	
	local.get	46
	br_if   	0                               # 0: down to label361
# %bb.6:
	local.get	42
	i32.trunc_f32_s
	local.set	47
	local.get	47
	local.set	48
	br      	1                               # 1: down to label360
.LBB118_7:
	end_block                               # label361:
	i32.const	-2147483648
	local.set	49
	local.get	49
	local.set	48
.LBB118_8:
	end_block                               # label360:
	local.get	48
	local.set	50
	local.get	3
	local.get	50
	i32.store	12
.LBB118_9:
	end_block                               # label356:
	local.get	3
	i32.load	12
	local.set	51
	local.get	51
	return
	end_function
                                        # -- End function
	.section	.text.__parityhi2,"",@
	.hidden	__parityhi2                     # -- Begin function __parityhi2
	.globl	__parityhi2
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
	.functype	__parityhi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.119
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.119
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___parityhi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___parityhi2
	i32.const	0
	local.set	14
	local.get	3
	local.get	14
	i32.store	4
	i32.const	0
	local.set	15
	local.get	3
	local.get	15
	i32.store	8
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label363:
	local.get	3
	i32.load	8
	local.set	16
	i32.const	16
	local.set	17
	local.get	16
	local.get	17
	i32.lt_s
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	local.get	20
	i32.eqz
	br_if   	1                               # 1: down to label362
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	i32.const	0
	local.set	21
	local.get	21
	i64.load	.L__profc___parityhi2+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	.L__profc___parityhi2+8
	local.get	3
	i32.load16_u	14
	local.set	26
	i32.const	65535
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	3
	i32.load	8
	local.set	29
	i32.const	1
	local.set	30
	local.get	30
	local.get	29
	i32.shl 
	local.set	31
	local.get	28
	local.get	31
	i32.and 
	local.set	32
	block   	
	local.get	32
	i32.eqz
	br_if   	0                               # 0: down to label364
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
	i32.const	0
	local.set	33
	local.get	33
	i64.load	__llvm_gcov_ctr.119+8
	local.set	34
	i64.const	1
	local.set	35
	local.get	34
	local.get	35
	i64.add 
	local.set	36
	i32.const	0
	local.set	37
	local.get	37
	local.get	36
	i64.store	__llvm_gcov_ctr.119+8
	i32.const	0
	local.set	38
	local.get	38
	i64.load	.L__profc___parityhi2+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	.L__profc___parityhi2+16
	local.get	3
	i32.load	4
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	3
	local.get	45
	i32.store	4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	end_block                               # label364:
# %bb.5:                                #   in Loop: Header=BB119_1 Depth=1
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.119+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.119+16
	local.get	3
	i32.load	8
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.add 
	local.set	53
	local.get	3
	local.get	53
	i32.store	8
	br      	0                               # 0: up to label363
.LBB119_6:
	end_loop
	end_block                               # label362:
	local.get	3
	i32.load	4
	local.set	54
	i32.const	1
	local.set	55
	local.get	54
	local.get	55
	i32.and 
	local.set	56
	local.get	56
	return
	end_function
                                        # -- End function
	.section	.text.__popcounthi2,"",@
	.hidden	__popcounthi2                   # -- Begin function __popcounthi2
	.globl	__popcounthi2
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
	.functype	__popcounthi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.120
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.120
	local.get	3
	local.get	0
	i32.store16	14
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___popcounthi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___popcounthi2
	i32.const	0
	local.set	14
	local.get	3
	local.get	14
	i32.store	4
	i32.const	0
	local.set	15
	local.get	3
	local.get	15
	i32.store	8
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label366:
	local.get	3
	i32.load	8
	local.set	16
	i32.const	16
	local.set	17
	local.get	16
	local.get	17
	i32.lt_s
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	local.get	20
	i32.eqz
	br_if   	1                               # 1: down to label365
# %bb.2:                                #   in Loop: Header=BB120_1 Depth=1
	i32.const	0
	local.set	21
	local.get	21
	i64.load	.L__profc___popcounthi2+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	.L__profc___popcounthi2+8
	local.get	3
	i32.load16_u	14
	local.set	26
	i32.const	65535
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	3
	i32.load	8
	local.set	29
	i32.const	1
	local.set	30
	local.get	30
	local.get	29
	i32.shl 
	local.set	31
	local.get	28
	local.get	31
	i32.and 
	local.set	32
	block   	
	local.get	32
	i32.eqz
	br_if   	0                               # 0: down to label367
# %bb.3:                                #   in Loop: Header=BB120_1 Depth=1
	i32.const	0
	local.set	33
	local.get	33
	i64.load	__llvm_gcov_ctr.120+8
	local.set	34
	i64.const	1
	local.set	35
	local.get	34
	local.get	35
	i64.add 
	local.set	36
	i32.const	0
	local.set	37
	local.get	37
	local.get	36
	i64.store	__llvm_gcov_ctr.120+8
	i32.const	0
	local.set	38
	local.get	38
	i64.load	.L__profc___popcounthi2+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	.L__profc___popcounthi2+16
	local.get	3
	i32.load	4
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.add 
	local.set	45
	local.get	3
	local.get	45
	i32.store	4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	end_block                               # label367:
# %bb.5:                                #   in Loop: Header=BB120_1 Depth=1
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.120+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.120+16
	local.get	3
	i32.load	8
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.add 
	local.set	53
	local.get	3
	local.get	53
	i32.store	8
	br      	0                               # 0: up to label366
.LBB120_6:
	end_loop
	end_block                               # label365:
	local.get	3
	i32.load	4
	local.set	54
	local.get	54
	return
	end_function
                                        # -- End function
	.section	.text.__mulsi3_iq2000,"",@
	.hidden	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.functype	__mulsi3_iq2000 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.121
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.121
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___mulsi3_iq2000
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___mulsi3_iq2000
	i32.const	0
	local.set	15
	local.get	4
	local.get	15
	i32.store	4
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label369:
	local.get	4
	i32.load	12
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label368
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	i32.const	0
	local.set	17
	local.get	17
	i64.load	.L__profc___mulsi3_iq2000+8
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	.L__profc___mulsi3_iq2000+8
	local.get	4
	i32.load	12
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
	br_if   	0                               # 0: down to label370
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	i32.const	0
	local.set	25
	local.get	25
	i64.load	__llvm_gcov_ctr.121+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.121+8
	i32.const	0
	local.set	30
	local.get	30
	i64.load	.L__profc___mulsi3_iq2000+16
	local.set	31
	i64.const	1
	local.set	32
	local.get	31
	local.get	32
	i64.add 
	local.set	33
	i32.const	0
	local.set	34
	local.get	34
	local.get	33
	i64.store	.L__profc___mulsi3_iq2000+16
	local.get	4
	i32.load	8
	local.set	35
	local.get	4
	i32.load	4
	local.set	36
	local.get	36
	local.get	35
	i32.add 
	local.set	37
	local.get	4
	local.get	37
	i32.store	4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	end_block                               # label370:
	i32.const	0
	local.set	38
	local.get	38
	i64.load	__llvm_gcov_ctr.121+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	__llvm_gcov_ctr.121+16
	local.get	4
	i32.load	12
	local.set	43
	i32.const	1
	local.set	44
	local.get	43
	local.get	44
	i32.shr_u
	local.set	45
	local.get	4
	local.get	45
	i32.store	12
	local.get	4
	i32.load	8
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.shl 
	local.set	48
	local.get	4
	local.get	48
	i32.store	8
	br      	0                               # 0: up to label369
.LBB121_5:
	end_loop
	end_block                               # label368:
	local.get	4
	i32.load	4
	local.set	49
	local.get	49
	return
	end_function
                                        # -- End function
	.section	.text.__mulsi3_lm32,"",@
	.hidden	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
	.functype	__mulsi3_lm32 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	local.get	5
	i64.load	.L__profc___mulsi3_lm32
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___mulsi3_lm32
	i32.const	0
	local.set	10
	local.get	4
	local.get	10
	i32.store	0
	local.get	4
	i32.load	8
	local.set	11
	block   	
	block   	
	local.get	11
	br_if   	0                               # 0: down to label372
# %bb.1:
	i32.const	0
	local.set	12
	local.get	12
	i64.load	__llvm_gcov_ctr.122+8
	local.set	13
	i64.const	1
	local.set	14
	local.get	13
	local.get	14
	i64.add 
	local.set	15
	i32.const	0
	local.set	16
	local.get	16
	local.get	15
	i64.store	__llvm_gcov_ctr.122+8
	i32.const	0
	local.set	17
	local.get	17
	i64.load	.L__profc___mulsi3_lm32+8
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	.L__profc___mulsi3_lm32+8
	i32.const	0
	local.set	22
	local.get	4
	local.get	22
	i32.store	12
	br      	1                               # 1: down to label371
.LBB122_2:
	end_block                               # label372:
	i32.const	0
	local.set	23
	local.get	23
	i64.load	__llvm_gcov_ctr.122
	local.set	24
	i64.const	1
	local.set	25
	local.get	24
	local.get	25
	i64.add 
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	__llvm_gcov_ctr.122
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label374:
	local.get	4
	i32.load	4
	local.set	28
	local.get	28
	i32.eqz
	br_if   	1                               # 1: down to label373
# %bb.4:                                #   in Loop: Header=BB122_3 Depth=1
	i32.const	0
	local.set	29
	local.get	29
	i64.load	.L__profc___mulsi3_lm32+16
	local.set	30
	i64.const	1
	local.set	31
	local.get	30
	local.get	31
	i64.add 
	local.set	32
	i32.const	0
	local.set	33
	local.get	33
	local.get	32
	i64.store	.L__profc___mulsi3_lm32+16
	local.get	4
	i32.load	4
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
	br_if   	0                               # 0: down to label375
# %bb.5:                                #   in Loop: Header=BB122_3 Depth=1
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.122+16
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.122+16
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc___mulsi3_lm32+24
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc___mulsi3_lm32+24
	local.get	4
	i32.load	8
	local.set	47
	local.get	4
	i32.load	0
	local.set	48
	local.get	48
	local.get	47
	i32.add 
	local.set	49
	local.get	4
	local.get	49
	i32.store	0
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	end_block                               # label375:
	i32.const	0
	local.set	50
	local.get	50
	i64.load	__llvm_gcov_ctr.122+24
	local.set	51
	i64.const	1
	local.set	52
	local.get	51
	local.get	52
	i64.add 
	local.set	53
	i32.const	0
	local.set	54
	local.get	54
	local.get	53
	i64.store	__llvm_gcov_ctr.122+24
	local.get	4
	i32.load	8
	local.set	55
	i32.const	1
	local.set	56
	local.get	55
	local.get	56
	i32.shl 
	local.set	57
	local.get	4
	local.get	57
	i32.store	8
	local.get	4
	i32.load	4
	local.set	58
	i32.const	1
	local.set	59
	local.get	58
	local.get	59
	i32.shr_u
	local.set	60
	local.get	4
	local.get	60
	i32.store	4
	br      	0                               # 0: up to label374
.LBB122_7:
	end_loop
	end_block                               # label373:
	local.get	4
	i32.load	0
	local.set	61
	local.get	4
	local.get	61
	i32.store	12
.LBB122_8:
	end_block                               # label371:
	local.get	4
	i32.load	12
	local.set	62
	local.get	62
	return
	end_function
                                        # -- End function
	.section	.text.__udivmodsi4,"",@
	.hidden	__udivmodsi4                    # -- Begin function __udivmodsi4
	.globl	__udivmodsi4
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
	.functype	__udivmodsi4 (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc___udivmodsi4
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc___udivmodsi4
	i32.const	1
	local.set	11
	local.get	5
	local.get	11
	i32.store	12
	i32.const	0
	local.set	12
	local.get	5
	local.get	12
	i32.store	8
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label376:
	local.get	5
	i32.load	20
	local.set	13
	local.get	5
	i32.load	24
	local.set	14
	local.get	13
	local.get	14
	i32.lt_u
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
	br_if   	0                               # 0: down to label377
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.123
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.123
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc___udivmodsi4+32
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc___udivmodsi4+32
	local.get	5
	i32.load	12
	local.set	30
	i32.const	0
	local.set	31
	local.get	31
	local.set	19
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label377
# %bb.3:                                #   in Loop: Header=BB123_1 Depth=1
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.123+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.123+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc___udivmodsi4+40
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc___udivmodsi4+40
# %bb.4:                                #   in Loop: Header=BB123_1 Depth=1
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc___udivmodsi4+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc___udivmodsi4+16
	local.get	5
	i32.load	20
	local.set	47
	i32.const	-2147483648
	local.set	48
	local.get	47
	local.get	48
	i32.and 
	local.set	49
	i32.const	0
	local.set	50
	local.get	49
	local.get	50
	i32.ne  
	local.set	51
	i32.const	-1
	local.set	52
	local.get	51
	local.get	52
	i32.xor 
	local.set	53
	i32.const	1
	local.set	54
	local.get	53
	local.get	54
	i32.and 
	local.set	55
	local.get	53
	local.set	19
	local.get	55
	i32.eqz
	br_if   	0                               # 0: down to label377
# %bb.5:                                #   in Loop: Header=BB123_1 Depth=1
	i32.const	0
	local.set	56
	local.get	56
	i64.load	__llvm_gcov_ctr.123+16
	local.set	57
	i64.const	1
	local.set	58
	local.get	57
	local.get	58
	i64.add 
	local.set	59
	i32.const	0
	local.set	60
	local.get	60
	local.get	59
	i64.store	__llvm_gcov_ctr.123+16
	i32.const	0
	local.set	61
	local.get	61
	i64.load	.L__profc___udivmodsi4+24
	local.set	62
	i64.const	1
	local.set	63
	local.get	62
	local.get	63
	i64.add 
	local.set	64
	i32.const	0
	local.set	65
	local.get	65
	local.get	64
	i64.store	.L__profc___udivmodsi4+24
	local.get	53
	local.set	19
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	end_block                               # label377:
	local.get	19
	local.set	66
	i32.const	1
	local.set	67
	local.get	66
	local.get	67
	i32.and 
	local.set	68
	block   	
	local.get	68
	i32.eqz
	br_if   	0                               # 0: down to label378
# %bb.7:                                #   in Loop: Header=BB123_1 Depth=1
	i32.const	0
	local.set	69
	local.get	69
	i64.load	__llvm_gcov_ctr.123+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.123+24
	i32.const	0
	local.set	74
	local.get	74
	i64.load	.L__profc___udivmodsi4+8
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	.L__profc___udivmodsi4+8
	local.get	5
	i32.load	20
	local.set	79
	i32.const	1
	local.set	80
	local.get	79
	local.get	80
	i32.shl 
	local.set	81
	local.get	5
	local.get	81
	i32.store	20
	local.get	5
	i32.load	12
	local.set	82
	i32.const	1
	local.set	83
	local.get	82
	local.get	83
	i32.shl 
	local.set	84
	local.get	5
	local.get	84
	i32.store	12
	br      	1                               # 1: up to label376
.LBB123_8:
	end_block                               # label378:
	end_loop
.LBB123_9:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label380:
	local.get	5
	i32.load	12
	local.set	85
	local.get	85
	i32.eqz
	br_if   	1                               # 1: down to label379
# %bb.10:                               #   in Loop: Header=BB123_9 Depth=1
	i32.const	0
	local.set	86
	local.get	86
	i64.load	.L__profc___udivmodsi4+48
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	.L__profc___udivmodsi4+48
	local.get	5
	i32.load	24
	local.set	91
	local.get	5
	i32.load	20
	local.set	92
	local.get	91
	local.get	92
	i32.ge_u
	local.set	93
	i32.const	1
	local.set	94
	local.get	93
	local.get	94
	i32.and 
	local.set	95
	block   	
	local.get	95
	i32.eqz
	br_if   	0                               # 0: down to label381
# %bb.11:                               #   in Loop: Header=BB123_9 Depth=1
	i32.const	0
	local.set	96
	local.get	96
	i64.load	__llvm_gcov_ctr.123+32
	local.set	97
	i64.const	1
	local.set	98
	local.get	97
	local.get	98
	i64.add 
	local.set	99
	i32.const	0
	local.set	100
	local.get	100
	local.get	99
	i64.store	__llvm_gcov_ctr.123+32
	i32.const	0
	local.set	101
	local.get	101
	i64.load	.L__profc___udivmodsi4+56
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	i32.const	0
	local.set	105
	local.get	105
	local.get	104
	i64.store	.L__profc___udivmodsi4+56
	local.get	5
	i32.load	20
	local.set	106
	local.get	5
	i32.load	24
	local.set	107
	local.get	107
	local.get	106
	i32.sub 
	local.set	108
	local.get	5
	local.get	108
	i32.store	24
	local.get	5
	i32.load	12
	local.set	109
	local.get	5
	i32.load	8
	local.set	110
	local.get	110
	local.get	109
	i32.or  
	local.set	111
	local.get	5
	local.get	111
	i32.store	8
.LBB123_12:                             #   in Loop: Header=BB123_9 Depth=1
	end_block                               # label381:
	i32.const	0
	local.set	112
	local.get	112
	i64.load	__llvm_gcov_ctr.123+40
	local.set	113
	i64.const	1
	local.set	114
	local.get	113
	local.get	114
	i64.add 
	local.set	115
	i32.const	0
	local.set	116
	local.get	116
	local.get	115
	i64.store	__llvm_gcov_ctr.123+40
	local.get	5
	i32.load	12
	local.set	117
	i32.const	1
	local.set	118
	local.get	117
	local.get	118
	i32.shr_u
	local.set	119
	local.get	5
	local.get	119
	i32.store	12
	local.get	5
	i32.load	20
	local.set	120
	i32.const	1
	local.set	121
	local.get	120
	local.get	121
	i32.shr_u
	local.set	122
	local.get	5
	local.get	122
	i32.store	20
	br      	0                               # 0: up to label380
.LBB123_13:
	end_loop
	end_block                               # label379:
	local.get	5
	i32.load	16
	local.set	123
	block   	
	block   	
	local.get	123
	i32.eqz
	br_if   	0                               # 0: down to label383
# %bb.14:
	i32.const	0
	local.set	124
	local.get	124
	i64.load	__llvm_gcov_ctr.123+48
	local.set	125
	i64.const	1
	local.set	126
	local.get	125
	local.get	126
	i64.add 
	local.set	127
	i32.const	0
	local.set	128
	local.get	128
	local.get	127
	i64.store	__llvm_gcov_ctr.123+48
	i32.const	0
	local.set	129
	local.get	129
	i64.load	.L__profc___udivmodsi4+64
	local.set	130
	i64.const	1
	local.set	131
	local.get	130
	local.get	131
	i64.add 
	local.set	132
	i32.const	0
	local.set	133
	local.get	133
	local.get	132
	i64.store	.L__profc___udivmodsi4+64
	local.get	5
	i32.load	24
	local.set	134
	local.get	5
	local.get	134
	i32.store	28
	br      	1                               # 1: down to label382
.LBB123_15:
	end_block                               # label383:
	i32.const	0
	local.set	135
	local.get	135
	i64.load	__llvm_gcov_ctr.123+56
	local.set	136
	i64.const	1
	local.set	137
	local.get	136
	local.get	137
	i64.add 
	local.set	138
	i32.const	0
	local.set	139
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.123+56
	local.get	5
	i32.load	8
	local.set	140
	local.get	5
	local.get	140
	i32.store	28
.LBB123_16:
	end_block                               # label382:
	local.get	5
	i32.load	28
	local.set	141
	local.get	141
	return
	end_function
                                        # -- End function
	.section	.text.__mspabi_cmpf,"",@
	.hidden	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
	.functype	__mspabi_cmpf (f32, f32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f32, f32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, f32, f32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___mspabi_cmpf
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___mspabi_cmpf
	local.get	4
	f32.load	8
	local.set	10
	local.get	4
	f32.load	4
	local.set	11
	local.get	10
	local.get	11
	f32.lt  
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	block   	
	block   	
	local.get	14
	i32.eqz
	br_if   	0                               # 0: down to label385
# %bb.1:
	i32.const	0
	local.set	15
	local.get	15
	i64.load	__llvm_gcov_ctr.124
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.add 
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	__llvm_gcov_ctr.124
	i32.const	0
	local.set	20
	local.get	20
	i64.load	.L__profc___mspabi_cmpf+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	.L__profc___mspabi_cmpf+8
	i32.const	4294967295
	local.set	25
	local.get	4
	local.get	25
	i32.store	12
	br      	1                               # 1: down to label384
.LBB124_2:
	end_block                               # label385:
	local.get	4
	f32.load	8
	local.set	26
	local.get	4
	f32.load	4
	local.set	27
	local.get	26
	local.get	27
	f32.gt  
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
	br_if   	0                               # 0: down to label386
# %bb.3:
	i32.const	0
	local.set	31
	local.get	31
	i64.load	__llvm_gcov_ctr.124+8
	local.set	32
	i64.const	1
	local.set	33
	local.get	32
	local.get	33
	i64.add 
	local.set	34
	i32.const	0
	local.set	35
	local.get	35
	local.get	34
	i64.store	__llvm_gcov_ctr.124+8
	i32.const	0
	local.set	36
	local.get	36
	i64.load	.L__profc___mspabi_cmpf+16
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	.L__profc___mspabi_cmpf+16
	i32.const	1
	local.set	41
	local.get	4
	local.get	41
	i32.store	12
	br      	1                               # 1: down to label384
.LBB124_4:
	end_block                               # label386:
	i32.const	0
	local.set	42
	local.get	42
	i64.load	__llvm_gcov_ctr.124+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	__llvm_gcov_ctr.124+16
	i32.const	0
	local.set	47
	local.get	4
	local.get	47
	i32.store	12
.LBB124_5:
	end_block                               # label384:
	local.get	4
	i32.load	12
	local.set	48
	local.get	48
	return
	end_function
                                        # -- End function
	.section	.text.__mspabi_cmpd,"",@
	.hidden	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
	.functype	__mspabi_cmpd (f64, f64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, f64, f64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___mspabi_cmpd
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___mspabi_cmpd
	local.get	4
	f64.load	16
	local.set	10
	local.get	4
	f64.load	8
	local.set	11
	local.get	10
	local.get	11
	f64.lt  
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	block   	
	block   	
	local.get	14
	i32.eqz
	br_if   	0                               # 0: down to label388
# %bb.1:
	i32.const	0
	local.set	15
	local.get	15
	i64.load	__llvm_gcov_ctr.125
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.add 
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	__llvm_gcov_ctr.125
	i32.const	0
	local.set	20
	local.get	20
	i64.load	.L__profc___mspabi_cmpd+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	.L__profc___mspabi_cmpd+8
	i32.const	4294967295
	local.set	25
	local.get	4
	local.get	25
	i32.store	28
	br      	1                               # 1: down to label387
.LBB125_2:
	end_block                               # label388:
	local.get	4
	f64.load	16
	local.set	26
	local.get	4
	f64.load	8
	local.set	27
	local.get	26
	local.get	27
	f64.gt  
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
	br_if   	0                               # 0: down to label389
# %bb.3:
	i32.const	0
	local.set	31
	local.get	31
	i64.load	__llvm_gcov_ctr.125+8
	local.set	32
	i64.const	1
	local.set	33
	local.get	32
	local.get	33
	i64.add 
	local.set	34
	i32.const	0
	local.set	35
	local.get	35
	local.get	34
	i64.store	__llvm_gcov_ctr.125+8
	i32.const	0
	local.set	36
	local.get	36
	i64.load	.L__profc___mspabi_cmpd+16
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	.L__profc___mspabi_cmpd+16
	i32.const	1
	local.set	41
	local.get	4
	local.get	41
	i32.store	28
	br      	1                               # 1: down to label387
.LBB125_4:
	end_block                               # label389:
	i32.const	0
	local.set	42
	local.get	42
	i64.load	__llvm_gcov_ctr.125+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	__llvm_gcov_ctr.125+16
	i32.const	0
	local.set	47
	local.get	4
	local.get	47
	i32.store	28
.LBB125_5:
	end_block                               # label387:
	local.get	4
	i32.load	28
	local.set	48
	local.get	48
	return
	end_function
                                        # -- End function
	.section	.text.__mspabi_mpysll,"",@
	.hidden	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
	.functype	__mspabi_mpysll (i32, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i32, i32, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.126
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.126
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___mspabi_mpysll
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___mspabi_mpysll
	local.get	4
	i32.load	12
	local.set	15
	local.get	15
	local.set	16
	local.get	16
	i64.extend_i32_s
	local.set	17
	local.get	4
	i32.load	8
	local.set	18
	local.get	18
	local.set	19
	local.get	19
	i64.extend_i32_s
	local.set	20
	local.get	17
	local.get	20
	i64.mul 
	local.set	21
	local.get	21
	return
	end_function
                                        # -- End function
	.section	.text.__mspabi_mpyull,"",@
	.hidden	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
	.functype	__mspabi_mpyull (i32, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i32, i32, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.127
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.127
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___mspabi_mpyull
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___mspabi_mpyull
	local.get	4
	i32.load	12
	local.set	15
	local.get	15
	local.set	16
	local.get	16
	i64.extend_i32_u
	local.set	17
	local.get	4
	i32.load	8
	local.set	18
	local.get	18
	local.set	19
	local.get	19
	i64.extend_i32_u
	local.set	20
	local.get	17
	local.get	20
	i64.mul 
	local.set	21
	local.get	21
	return
	end_function
                                        # -- End function
	.section	.text.__mulhi3,"",@
	.hidden	__mulhi3                        # -- Begin function __mulhi3
	.globl	__mulhi3
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
	.functype	__mulhi3 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	local.get	5
	i64.load	.L__profc___mulhi3
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___mulhi3
	i32.const	0
	local.set	10
	local.get	4
	local.get	10
	i32.store	16
	i32.const	0
	local.set	11
	local.get	4
	local.get	11
	i32.store	12
	local.get	4
	i32.load	24
	local.set	12
	i32.const	0
	local.set	13
	local.get	12
	local.get	13
	i32.lt_s
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
	br_if   	0                               # 0: down to label390
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.128
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.128
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc___mulhi3+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc___mulhi3+8
	local.get	4
	i32.load	24
	local.set	27
	i32.const	0
	local.set	28
	local.get	28
	local.get	27
	i32.sub 
	local.set	29
	local.get	4
	local.get	29
	i32.store	24
	i32.const	1
	local.set	30
	local.get	4
	local.get	30
	i32.store	16
.LBB128_2:
	end_block                               # label390:
	i32.const	0
	local.set	31
	local.get	4
	local.get	31
	i32.store8	23
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label391:
	local.get	4
	i32.load	24
	local.set	32
	i32.const	0
	local.set	33
	local.get	33
	local.set	34
	block   	
	local.get	32
	i32.eqz
	br_if   	0                               # 0: down to label392
# %bb.4:                                #   in Loop: Header=BB128_3 Depth=1
	i32.const	0
	local.set	35
	local.get	35
	i64.load	__llvm_gcov_ctr.128+8
	local.set	36
	i64.const	1
	local.set	37
	local.get	36
	local.get	37
	i64.add 
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.128+8
	i32.const	0
	local.set	40
	local.get	40
	i64.load	.L__profc___mulhi3+24
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	.L__profc___mulhi3+24
	local.get	4
	i32.load8_u	23
	local.set	45
	i32.const	24
	local.set	46
	local.get	45
	local.get	46
	i32.shl 
	local.set	47
	local.get	47
	local.get	46
	i32.shr_s
	local.set	48
	i32.const	32
	local.set	49
	local.get	48
	local.get	49
	i32.lt_u
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	local.get	50
	local.set	34
	local.get	52
	i32.eqz
	br_if   	0                               # 0: down to label392
# %bb.5:                                #   in Loop: Header=BB128_3 Depth=1
	i32.const	0
	local.set	53
	local.get	53
	i64.load	__llvm_gcov_ctr.128+16
	local.set	54
	i64.const	1
	local.set	55
	local.get	54
	local.get	55
	i64.add 
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.128+16
	i32.const	0
	local.set	58
	local.get	58
	i64.load	.L__profc___mulhi3+32
	local.set	59
	i64.const	1
	local.set	60
	local.get	59
	local.get	60
	i64.add 
	local.set	61
	i32.const	0
	local.set	62
	local.get	62
	local.get	61
	i64.store	.L__profc___mulhi3+32
	local.get	50
	local.set	34
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	end_block                               # label392:
	local.get	34
	local.set	63
	i32.const	1
	local.set	64
	local.get	63
	local.get	64
	i32.and 
	local.set	65
	block   	
	local.get	65
	i32.eqz
	br_if   	0                               # 0: down to label393
# %bb.7:                                #   in Loop: Header=BB128_3 Depth=1
	i32.const	0
	local.set	66
	local.get	66
	i64.load	.L__profc___mulhi3+16
	local.set	67
	i64.const	1
	local.set	68
	local.get	67
	local.get	68
	i64.add 
	local.set	69
	i32.const	0
	local.set	70
	local.get	70
	local.get	69
	i64.store	.L__profc___mulhi3+16
	local.get	4
	i32.load	24
	local.set	71
	i32.const	1
	local.set	72
	local.get	71
	local.get	72
	i32.and 
	local.set	73
	block   	
	local.get	73
	i32.eqz
	br_if   	0                               # 0: down to label394
# %bb.8:                                #   in Loop: Header=BB128_3 Depth=1
	i32.const	0
	local.set	74
	local.get	74
	i64.load	__llvm_gcov_ctr.128+24
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	__llvm_gcov_ctr.128+24
	i32.const	0
	local.set	79
	local.get	79
	i64.load	.L__profc___mulhi3+40
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	.L__profc___mulhi3+40
	local.get	4
	i32.load	28
	local.set	84
	local.get	4
	i32.load	12
	local.set	85
	local.get	85
	local.get	84
	i32.add 
	local.set	86
	local.get	4
	local.get	86
	i32.store	12
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	end_block                               # label394:
	local.get	4
	i32.load	28
	local.set	87
	i32.const	1
	local.set	88
	local.get	87
	local.get	88
	i32.shl 
	local.set	89
	local.get	4
	local.get	89
	i32.store	28
	local.get	4
	i32.load	24
	local.set	90
	i32.const	1
	local.set	91
	local.get	90
	local.get	91
	i32.shr_s
	local.set	92
	local.get	4
	local.get	92
	i32.store	24
# %bb.10:                               #   in Loop: Header=BB128_3 Depth=1
	i32.const	0
	local.set	93
	local.get	93
	i64.load	__llvm_gcov_ctr.128+32
	local.set	94
	i64.const	1
	local.set	95
	local.get	94
	local.get	95
	i64.add 
	local.set	96
	local.get	93
	local.get	96
	i64.store	__llvm_gcov_ctr.128+32
	local.get	4
	i32.load8_u	23
	local.set	97
	i32.const	1
	local.set	98
	local.get	97
	local.get	98
	i32.add 
	local.set	99
	local.get	4
	local.get	99
	i32.store8	23
	br      	1                               # 1: up to label391
.LBB128_11:
	end_block                               # label393:
	end_loop
	local.get	4
	i32.load	16
	local.set	100
	block   	
	block   	
	local.get	100
	i32.eqz
	br_if   	0                               # 0: down to label396
# %bb.12:
	i32.const	0
	local.set	101
	local.get	101
	i64.load	__llvm_gcov_ctr.128+40
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	i32.const	0
	local.set	105
	local.get	105
	local.get	104
	i64.store	__llvm_gcov_ctr.128+40
	i32.const	0
	local.set	106
	local.get	106
	i64.load	.L__profc___mulhi3+48
	local.set	107
	i64.const	1
	local.set	108
	local.get	107
	local.get	108
	i64.add 
	local.set	109
	i32.const	0
	local.set	110
	local.get	110
	local.get	109
	i64.store	.L__profc___mulhi3+48
	local.get	4
	i32.load	12
	local.set	111
	i32.const	0
	local.set	112
	local.get	112
	local.get	111
	i32.sub 
	local.set	113
	local.get	113
	local.set	114
	br      	1                               # 1: down to label395
.LBB128_13:
	end_block                               # label396:
	i32.const	0
	local.set	115
	local.get	115
	i64.load	__llvm_gcov_ctr.128+48
	local.set	116
	i64.const	1
	local.set	117
	local.get	116
	local.get	117
	i64.add 
	local.set	118
	i32.const	0
	local.set	119
	local.get	119
	local.get	118
	i64.store	__llvm_gcov_ctr.128+48
	local.get	4
	i32.load	12
	local.set	120
	local.get	120
	local.set	114
.LBB128_14:
	end_block                               # label395:
	local.get	114
	local.set	121
	local.get	121
	return
	end_function
                                        # -- End function
	.section	.text.__divsi3,"",@
	.hidden	__divsi3                        # -- Begin function __divsi3
	.globl	__divsi3
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
	.functype	__divsi3 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.129
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.129
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___divsi3
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___divsi3
	i32.const	0
	local.set	15
	local.get	4
	local.get	15
	i32.store	4
	local.get	4
	i32.load	12
	local.set	16
	i32.const	0
	local.set	17
	local.get	16
	local.get	17
	i32.lt_s
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
	br_if   	0                               # 0: down to label397
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.129+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.129+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc___divsi3+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc___divsi3+8
	local.get	4
	i32.load	12
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i32.sub 
	local.set	33
	local.get	4
	local.get	33
	i32.store	12
	local.get	4
	i32.load	4
	local.set	34
	i32.const	0
	local.set	35
	local.get	34
	local.get	35
	i32.ne  
	local.set	36
	i32.const	-1
	local.set	37
	local.get	36
	local.get	37
	i32.xor 
	local.set	38
	i32.const	1
	local.set	39
	local.get	38
	local.get	39
	i32.and 
	local.set	40
	local.get	4
	local.get	40
	i32.store	4
.LBB129_2:
	end_block                               # label397:
	local.get	4
	i32.load	8
	local.set	41
	i32.const	0
	local.set	42
	local.get	41
	local.get	42
	i32.lt_s
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
	br_if   	0                               # 0: down to label398
# %bb.3:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.129+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.129+16
	i32.const	0
	local.set	51
	local.get	51
	i64.load	.L__profc___divsi3+16
	local.set	52
	i64.const	1
	local.set	53
	local.get	52
	local.get	53
	i64.add 
	local.set	54
	i32.const	0
	local.set	55
	local.get	55
	local.get	54
	i64.store	.L__profc___divsi3+16
	local.get	4
	i32.load	8
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i32.sub 
	local.set	58
	local.get	4
	local.get	58
	i32.store	8
	local.get	4
	i32.load	4
	local.set	59
	i32.const	0
	local.set	60
	local.get	59
	local.get	60
	i32.ne  
	local.set	61
	i32.const	-1
	local.set	62
	local.get	61
	local.get	62
	i32.xor 
	local.set	63
	i32.const	1
	local.set	64
	local.get	63
	local.get	64
	i32.and 
	local.set	65
	local.get	4
	local.get	65
	i32.store	4
.LBB129_4:
	end_block                               # label398:
	local.get	4
	i32.load	12
	local.set	66
	local.get	4
	i32.load	8
	local.set	67
	i32.const	0
	local.set	68
	local.get	66
	local.get	67
	local.get	68
	call	__udivmodsi4
	local.set	69
	local.get	4
	local.get	69
	i32.store	0
	local.get	4
	i32.load	4
	local.set	70
	block   	
	local.get	70
	i32.eqz
	br_if   	0                               # 0: down to label399
# %bb.5:
	i32.const	0
	local.set	71
	local.get	71
	i64.load	__llvm_gcov_ctr.129+24
	local.set	72
	i64.const	1
	local.set	73
	local.get	72
	local.get	73
	i64.add 
	local.set	74
	i32.const	0
	local.set	75
	local.get	75
	local.get	74
	i64.store	__llvm_gcov_ctr.129+24
	i32.const	0
	local.set	76
	local.get	76
	i64.load	.L__profc___divsi3+24
	local.set	77
	i64.const	1
	local.set	78
	local.get	77
	local.get	78
	i64.add 
	local.set	79
	i32.const	0
	local.set	80
	local.get	80
	local.get	79
	i64.store	.L__profc___divsi3+24
	local.get	4
	i32.load	0
	local.set	81
	i32.const	0
	local.set	82
	local.get	82
	local.get	81
	i32.sub 
	local.set	83
	local.get	4
	local.get	83
	i32.store	0
.LBB129_6:
	end_block                               # label399:
	local.get	4
	i32.load	0
	local.set	84
	i32.const	16
	local.set	85
	local.get	4
	local.get	85
	i32.add 
	local.set	86
	local.get	86
	global.set	__stack_pointer
	local.get	84
	return
	end_function
                                        # -- End function
	.section	.text.__modsi3,"",@
	.hidden	__modsi3                        # -- Begin function __modsi3
	.globl	__modsi3
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
	.functype	__modsi3 (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.130
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.130
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___modsi3
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___modsi3
	i32.const	0
	local.set	15
	local.get	4
	local.get	15
	i32.store	4
	local.get	4
	i32.load	12
	local.set	16
	i32.const	0
	local.set	17
	local.get	16
	local.get	17
	i32.lt_s
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
	br_if   	0                               # 0: down to label400
# %bb.1:
	i32.const	0
	local.set	21
	local.get	21
	i64.load	__llvm_gcov_ctr.130+8
	local.set	22
	i64.const	1
	local.set	23
	local.get	22
	local.get	23
	i64.add 
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.130+8
	i32.const	0
	local.set	26
	local.get	26
	i64.load	.L__profc___modsi3+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	.L__profc___modsi3+8
	local.get	4
	i32.load	12
	local.set	31
	i32.const	0
	local.set	32
	local.get	32
	local.get	31
	i32.sub 
	local.set	33
	local.get	4
	local.get	33
	i32.store	12
	i32.const	1
	local.set	34
	local.get	4
	local.get	34
	i32.store	4
.LBB130_2:
	end_block                               # label400:
	local.get	4
	i32.load	8
	local.set	35
	i32.const	0
	local.set	36
	local.get	35
	local.get	36
	i32.lt_s
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	block   	
	local.get	39
	i32.eqz
	br_if   	0                               # 0: down to label401
# %bb.3:
	i32.const	0
	local.set	40
	local.get	40
	i64.load	__llvm_gcov_ctr.130+16
	local.set	41
	i64.const	1
	local.set	42
	local.get	41
	local.get	42
	i64.add 
	local.set	43
	i32.const	0
	local.set	44
	local.get	44
	local.get	43
	i64.store	__llvm_gcov_ctr.130+16
	i32.const	0
	local.set	45
	local.get	45
	i64.load	.L__profc___modsi3+16
	local.set	46
	i64.const	1
	local.set	47
	local.get	46
	local.get	47
	i64.add 
	local.set	48
	i32.const	0
	local.set	49
	local.get	49
	local.get	48
	i64.store	.L__profc___modsi3+16
	local.get	4
	i32.load	8
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i32.sub 
	local.set	52
	local.get	4
	local.get	52
	i32.store	8
.LBB130_4:
	end_block                               # label401:
	local.get	4
	i32.load	12
	local.set	53
	local.get	4
	i32.load	8
	local.set	54
	i32.const	1
	local.set	55
	local.get	53
	local.get	54
	local.get	55
	call	__udivmodsi4
	local.set	56
	local.get	4
	local.get	56
	i32.store	0
	local.get	4
	i32.load	4
	local.set	57
	block   	
	local.get	57
	i32.eqz
	br_if   	0                               # 0: down to label402
# %bb.5:
	i32.const	0
	local.set	58
	local.get	58
	i64.load	__llvm_gcov_ctr.130+24
	local.set	59
	i64.const	1
	local.set	60
	local.get	59
	local.get	60
	i64.add 
	local.set	61
	i32.const	0
	local.set	62
	local.get	62
	local.get	61
	i64.store	__llvm_gcov_ctr.130+24
	i32.const	0
	local.set	63
	local.get	63
	i64.load	.L__profc___modsi3+24
	local.set	64
	i64.const	1
	local.set	65
	local.get	64
	local.get	65
	i64.add 
	local.set	66
	i32.const	0
	local.set	67
	local.get	67
	local.get	66
	i64.store	.L__profc___modsi3+24
	local.get	4
	i32.load	0
	local.set	68
	i32.const	0
	local.set	69
	local.get	69
	local.get	68
	i32.sub 
	local.set	70
	local.get	4
	local.get	70
	i32.store	0
.LBB130_6:
	end_block                               # label402:
	local.get	4
	i32.load	0
	local.set	71
	i32.const	16
	local.set	72
	local.get	4
	local.get	72
	i32.add 
	local.set	73
	local.get	73
	global.set	__stack_pointer
	local.get	71
	return
	end_function
                                        # -- End function
	.section	.text.__udivmodhi4,"",@
	.hidden	__udivmodhi4                    # -- Begin function __udivmodhi4
	.globl	__udivmodhi4
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
	.functype	__udivmodhi4 (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc___udivmodhi4
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc___udivmodhi4
	i32.const	1
	local.set	11
	local.get	5
	local.get	11
	i32.store16	2
	i32.const	0
	local.set	12
	local.get	5
	local.get	12
	i32.store16	0
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label403:
	local.get	5
	i32.load16_u	10
	local.set	13
	i32.const	65535
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	local.get	5
	i32.load16_u	12
	local.set	16
	i32.const	65535
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	15
	local.get	18
	i32.lt_s
	local.set	19
	i32.const	0
	local.set	20
	i32.const	1
	local.set	21
	local.get	19
	local.get	21
	i32.and 
	local.set	22
	local.get	20
	local.set	23
	block   	
	local.get	22
	i32.eqz
	br_if   	0                               # 0: down to label404
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	i32.const	0
	local.set	24
	local.get	24
	i64.load	__llvm_gcov_ctr.131
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	i32.const	0
	local.set	28
	local.get	28
	local.get	27
	i64.store	__llvm_gcov_ctr.131
	i32.const	0
	local.set	29
	local.get	29
	i64.load	.L__profc___udivmodhi4+32
	local.set	30
	i64.const	1
	local.set	31
	local.get	30
	local.get	31
	i64.add 
	local.set	32
	i32.const	0
	local.set	33
	local.get	33
	local.get	32
	i64.store	.L__profc___udivmodhi4+32
	local.get	5
	i32.load16_u	2
	local.set	34
	i32.const	65535
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	i32.const	0
	local.set	37
	local.get	37
	local.set	23
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label404
# %bb.3:                                #   in Loop: Header=BB131_1 Depth=1
	i32.const	0
	local.set	38
	local.get	38
	i64.load	__llvm_gcov_ctr.131+8
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	__llvm_gcov_ctr.131+8
	i32.const	0
	local.set	43
	local.get	43
	i64.load	.L__profc___udivmodhi4+40
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	.L__profc___udivmodhi4+40
# %bb.4:                                #   in Loop: Header=BB131_1 Depth=1
	i32.const	0
	local.set	48
	local.get	48
	i64.load	.L__profc___udivmodhi4+16
	local.set	49
	i64.const	1
	local.set	50
	local.get	49
	local.get	50
	i64.add 
	local.set	51
	i32.const	0
	local.set	52
	local.get	52
	local.get	51
	i64.store	.L__profc___udivmodhi4+16
	local.get	5
	i32.load16_u	10
	local.set	53
	i32.const	65535
	local.set	54
	local.get	53
	local.get	54
	i32.and 
	local.set	55
	i32.const	32768
	local.set	56
	local.get	55
	local.get	56
	i32.and 
	local.set	57
	i32.const	0
	local.set	58
	local.get	57
	local.get	58
	i32.ne  
	local.set	59
	i32.const	-1
	local.set	60
	local.get	59
	local.get	60
	i32.xor 
	local.set	61
	i32.const	1
	local.set	62
	local.get	61
	local.get	62
	i32.and 
	local.set	63
	local.get	61
	local.set	23
	local.get	63
	i32.eqz
	br_if   	0                               # 0: down to label404
# %bb.5:                                #   in Loop: Header=BB131_1 Depth=1
	i32.const	0
	local.set	64
	local.get	64
	i64.load	__llvm_gcov_ctr.131+16
	local.set	65
	i64.const	1
	local.set	66
	local.get	65
	local.get	66
	i64.add 
	local.set	67
	i32.const	0
	local.set	68
	local.get	68
	local.get	67
	i64.store	__llvm_gcov_ctr.131+16
	i32.const	0
	local.set	69
	local.get	69
	i64.load	.L__profc___udivmodhi4+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	.L__profc___udivmodhi4+24
	local.get	61
	local.set	23
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	end_block                               # label404:
	local.get	23
	local.set	74
	i32.const	1
	local.set	75
	local.get	74
	local.get	75
	i32.and 
	local.set	76
	block   	
	local.get	76
	i32.eqz
	br_if   	0                               # 0: down to label405
# %bb.7:                                #   in Loop: Header=BB131_1 Depth=1
	i32.const	0
	local.set	77
	local.get	77
	i64.load	__llvm_gcov_ctr.131+24
	local.set	78
	i64.const	1
	local.set	79
	local.get	78
	local.get	79
	i64.add 
	local.set	80
	i32.const	0
	local.set	81
	local.get	81
	local.get	80
	i64.store	__llvm_gcov_ctr.131+24
	i32.const	0
	local.set	82
	local.get	82
	i64.load	.L__profc___udivmodhi4+8
	local.set	83
	i64.const	1
	local.set	84
	local.get	83
	local.get	84
	i64.add 
	local.set	85
	i32.const	0
	local.set	86
	local.get	86
	local.get	85
	i64.store	.L__profc___udivmodhi4+8
	local.get	5
	i32.load16_u	10
	local.set	87
	i32.const	65535
	local.set	88
	local.get	87
	local.get	88
	i32.and 
	local.set	89
	i32.const	1
	local.set	90
	local.get	89
	local.get	90
	i32.shl 
	local.set	91
	local.get	5
	local.get	91
	i32.store16	10
	local.get	5
	i32.load16_u	2
	local.set	92
	i32.const	65535
	local.set	93
	local.get	92
	local.get	93
	i32.and 
	local.set	94
	i32.const	1
	local.set	95
	local.get	94
	local.get	95
	i32.shl 
	local.set	96
	local.get	5
	local.get	96
	i32.store16	2
	br      	1                               # 1: up to label403
.LBB131_8:
	end_block                               # label405:
	end_loop
.LBB131_9:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label407:
	local.get	5
	i32.load16_u	2
	local.set	97
	i32.const	0
	local.set	98
	i32.const	65535
	local.set	99
	local.get	97
	local.get	99
	i32.and 
	local.set	100
	i32.const	65535
	local.set	101
	local.get	98
	local.get	101
	i32.and 
	local.set	102
	local.get	100
	local.get	102
	i32.ne  
	local.set	103
	i32.const	1
	local.set	104
	local.get	103
	local.get	104
	i32.and 
	local.set	105
	local.get	105
	i32.eqz
	br_if   	1                               # 1: down to label406
# %bb.10:                               #   in Loop: Header=BB131_9 Depth=1
	i32.const	0
	local.set	106
	local.get	106
	i64.load	.L__profc___udivmodhi4+48
	local.set	107
	i64.const	1
	local.set	108
	local.get	107
	local.get	108
	i64.add 
	local.set	109
	i32.const	0
	local.set	110
	local.get	110
	local.get	109
	i64.store	.L__profc___udivmodhi4+48
	local.get	5
	i32.load16_u	12
	local.set	111
	i32.const	65535
	local.set	112
	local.get	111
	local.get	112
	i32.and 
	local.set	113
	local.get	5
	i32.load16_u	10
	local.set	114
	i32.const	65535
	local.set	115
	local.get	114
	local.get	115
	i32.and 
	local.set	116
	local.get	113
	local.get	116
	i32.ge_s
	local.set	117
	i32.const	1
	local.set	118
	local.get	117
	local.get	118
	i32.and 
	local.set	119
	block   	
	local.get	119
	i32.eqz
	br_if   	0                               # 0: down to label408
# %bb.11:                               #   in Loop: Header=BB131_9 Depth=1
	i32.const	0
	local.set	120
	local.get	120
	i64.load	__llvm_gcov_ctr.131+32
	local.set	121
	i64.const	1
	local.set	122
	local.get	121
	local.get	122
	i64.add 
	local.set	123
	i32.const	0
	local.set	124
	local.get	124
	local.get	123
	i64.store	__llvm_gcov_ctr.131+32
	i32.const	0
	local.set	125
	local.get	125
	i64.load	.L__profc___udivmodhi4+56
	local.set	126
	i64.const	1
	local.set	127
	local.get	126
	local.get	127
	i64.add 
	local.set	128
	i32.const	0
	local.set	129
	local.get	129
	local.get	128
	i64.store	.L__profc___udivmodhi4+56
	local.get	5
	i32.load16_u	10
	local.set	130
	i32.const	65535
	local.set	131
	local.get	130
	local.get	131
	i32.and 
	local.set	132
	local.get	5
	i32.load16_u	12
	local.set	133
	i32.const	65535
	local.set	134
	local.get	133
	local.get	134
	i32.and 
	local.set	135
	local.get	135
	local.get	132
	i32.sub 
	local.set	136
	local.get	5
	local.get	136
	i32.store16	12
	local.get	5
	i32.load16_u	2
	local.set	137
	i32.const	65535
	local.set	138
	local.get	137
	local.get	138
	i32.and 
	local.set	139
	local.get	5
	i32.load16_u	0
	local.set	140
	i32.const	65535
	local.set	141
	local.get	140
	local.get	141
	i32.and 
	local.set	142
	local.get	142
	local.get	139
	i32.or  
	local.set	143
	local.get	5
	local.get	143
	i32.store16	0
.LBB131_12:                             #   in Loop: Header=BB131_9 Depth=1
	end_block                               # label408:
	i32.const	0
	local.set	144
	local.get	144
	i64.load	__llvm_gcov_ctr.131+40
	local.set	145
	i64.const	1
	local.set	146
	local.get	145
	local.get	146
	i64.add 
	local.set	147
	i32.const	0
	local.set	148
	local.get	148
	local.get	147
	i64.store	__llvm_gcov_ctr.131+40
	local.get	5
	i32.load16_u	2
	local.set	149
	i32.const	65535
	local.set	150
	local.get	149
	local.get	150
	i32.and 
	local.set	151
	i32.const	1
	local.set	152
	local.get	151
	local.get	152
	i32.shr_s
	local.set	153
	local.get	5
	local.get	153
	i32.store16	2
	local.get	5
	i32.load16_u	10
	local.set	154
	i32.const	65535
	local.set	155
	local.get	154
	local.get	155
	i32.and 
	local.set	156
	i32.const	1
	local.set	157
	local.get	156
	local.get	157
	i32.shr_s
	local.set	158
	local.get	5
	local.get	158
	i32.store16	10
	br      	0                               # 0: up to label407
.LBB131_13:
	end_loop
	end_block                               # label406:
	local.get	5
	i32.load	4
	local.set	159
	block   	
	block   	
	local.get	159
	i32.eqz
	br_if   	0                               # 0: down to label410
# %bb.14:
	i32.const	0
	local.set	160
	local.get	160
	i64.load	__llvm_gcov_ctr.131+48
	local.set	161
	i64.const	1
	local.set	162
	local.get	161
	local.get	162
	i64.add 
	local.set	163
	i32.const	0
	local.set	164
	local.get	164
	local.get	163
	i64.store	__llvm_gcov_ctr.131+48
	i32.const	0
	local.set	165
	local.get	165
	i64.load	.L__profc___udivmodhi4+64
	local.set	166
	i64.const	1
	local.set	167
	local.get	166
	local.get	167
	i64.add 
	local.set	168
	i32.const	0
	local.set	169
	local.get	169
	local.get	168
	i64.store	.L__profc___udivmodhi4+64
	local.get	5
	i32.load16_u	12
	local.set	170
	local.get	5
	local.get	170
	i32.store16	14
	br      	1                               # 1: down to label409
.LBB131_15:
	end_block                               # label410:
	i32.const	0
	local.set	171
	local.get	171
	i64.load	__llvm_gcov_ctr.131+56
	local.set	172
	i64.const	1
	local.set	173
	local.get	172
	local.get	173
	i64.add 
	local.set	174
	i32.const	0
	local.set	175
	local.get	175
	local.get	174
	i64.store	__llvm_gcov_ctr.131+56
	local.get	5
	i32.load16_u	0
	local.set	176
	local.get	5
	local.get	176
	i32.store16	14
.LBB131_16:
	end_block                               # label409:
	local.get	5
	i32.load16_u	14
	local.set	177
	i32.const	65535
	local.set	178
	local.get	177
	local.get	178
	i32.and 
	local.set	179
	local.get	179
	return
	end_function
                                        # -- End function
	.section	.text.__udivmodsi4_libgcc,"",@
	.hidden	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.functype	__udivmodsi4_libgcc (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	6
	i64.load	.L__profc___udivmodsi4_libgcc
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	9
	i64.store	.L__profc___udivmodsi4_libgcc
	i32.const	1
	local.set	11
	local.get	5
	local.get	11
	i32.store	12
	i32.const	0
	local.set	12
	local.get	5
	local.get	12
	i32.store	8
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label411:
	local.get	5
	i32.load	20
	local.set	13
	local.get	5
	i32.load	24
	local.set	14
	local.get	13
	local.get	14
	i32.lt_u
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
	br_if   	0                               # 0: down to label412
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.132
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.132
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc___udivmodsi4_libgcc+32
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc___udivmodsi4_libgcc+32
	local.get	5
	i32.load	12
	local.set	30
	i32.const	0
	local.set	31
	local.get	31
	local.set	19
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label412
# %bb.3:                                #   in Loop: Header=BB132_1 Depth=1
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.132+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.132+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc___udivmodsi4_libgcc+40
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc___udivmodsi4_libgcc+40
# %bb.4:                                #   in Loop: Header=BB132_1 Depth=1
	i32.const	0
	local.set	42
	local.get	42
	i64.load	.L__profc___udivmodsi4_libgcc+16
	local.set	43
	i64.const	1
	local.set	44
	local.get	43
	local.get	44
	i64.add 
	local.set	45
	i32.const	0
	local.set	46
	local.get	46
	local.get	45
	i64.store	.L__profc___udivmodsi4_libgcc+16
	local.get	5
	i32.load	20
	local.set	47
	i32.const	-2147483648
	local.set	48
	local.get	47
	local.get	48
	i32.and 
	local.set	49
	i32.const	0
	local.set	50
	local.get	49
	local.get	50
	i32.ne  
	local.set	51
	i32.const	-1
	local.set	52
	local.get	51
	local.get	52
	i32.xor 
	local.set	53
	i32.const	1
	local.set	54
	local.get	53
	local.get	54
	i32.and 
	local.set	55
	local.get	53
	local.set	19
	local.get	55
	i32.eqz
	br_if   	0                               # 0: down to label412
# %bb.5:                                #   in Loop: Header=BB132_1 Depth=1
	i32.const	0
	local.set	56
	local.get	56
	i64.load	__llvm_gcov_ctr.132+16
	local.set	57
	i64.const	1
	local.set	58
	local.get	57
	local.get	58
	i64.add 
	local.set	59
	i32.const	0
	local.set	60
	local.get	60
	local.get	59
	i64.store	__llvm_gcov_ctr.132+16
	i32.const	0
	local.set	61
	local.get	61
	i64.load	.L__profc___udivmodsi4_libgcc+24
	local.set	62
	i64.const	1
	local.set	63
	local.get	62
	local.get	63
	i64.add 
	local.set	64
	i32.const	0
	local.set	65
	local.get	65
	local.get	64
	i64.store	.L__profc___udivmodsi4_libgcc+24
	local.get	53
	local.set	19
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	end_block                               # label412:
	local.get	19
	local.set	66
	i32.const	1
	local.set	67
	local.get	66
	local.get	67
	i32.and 
	local.set	68
	block   	
	local.get	68
	i32.eqz
	br_if   	0                               # 0: down to label413
# %bb.7:                                #   in Loop: Header=BB132_1 Depth=1
	i32.const	0
	local.set	69
	local.get	69
	i64.load	__llvm_gcov_ctr.132+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.132+24
	i32.const	0
	local.set	74
	local.get	74
	i64.load	.L__profc___udivmodsi4_libgcc+8
	local.set	75
	i64.const	1
	local.set	76
	local.get	75
	local.get	76
	i64.add 
	local.set	77
	i32.const	0
	local.set	78
	local.get	78
	local.get	77
	i64.store	.L__profc___udivmodsi4_libgcc+8
	local.get	5
	i32.load	20
	local.set	79
	i32.const	1
	local.set	80
	local.get	79
	local.get	80
	i32.shl 
	local.set	81
	local.get	5
	local.get	81
	i32.store	20
	local.get	5
	i32.load	12
	local.set	82
	i32.const	1
	local.set	83
	local.get	82
	local.get	83
	i32.shl 
	local.set	84
	local.get	5
	local.get	84
	i32.store	12
	br      	1                               # 1: up to label411
.LBB132_8:
	end_block                               # label413:
	end_loop
.LBB132_9:                              # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label415:
	local.get	5
	i32.load	12
	local.set	85
	local.get	85
	i32.eqz
	br_if   	1                               # 1: down to label414
# %bb.10:                               #   in Loop: Header=BB132_9 Depth=1
	i32.const	0
	local.set	86
	local.get	86
	i64.load	.L__profc___udivmodsi4_libgcc+48
	local.set	87
	i64.const	1
	local.set	88
	local.get	87
	local.get	88
	i64.add 
	local.set	89
	i32.const	0
	local.set	90
	local.get	90
	local.get	89
	i64.store	.L__profc___udivmodsi4_libgcc+48
	local.get	5
	i32.load	24
	local.set	91
	local.get	5
	i32.load	20
	local.set	92
	local.get	91
	local.get	92
	i32.ge_u
	local.set	93
	i32.const	1
	local.set	94
	local.get	93
	local.get	94
	i32.and 
	local.set	95
	block   	
	local.get	95
	i32.eqz
	br_if   	0                               # 0: down to label416
# %bb.11:                               #   in Loop: Header=BB132_9 Depth=1
	i32.const	0
	local.set	96
	local.get	96
	i64.load	__llvm_gcov_ctr.132+32
	local.set	97
	i64.const	1
	local.set	98
	local.get	97
	local.get	98
	i64.add 
	local.set	99
	i32.const	0
	local.set	100
	local.get	100
	local.get	99
	i64.store	__llvm_gcov_ctr.132+32
	i32.const	0
	local.set	101
	local.get	101
	i64.load	.L__profc___udivmodsi4_libgcc+56
	local.set	102
	i64.const	1
	local.set	103
	local.get	102
	local.get	103
	i64.add 
	local.set	104
	i32.const	0
	local.set	105
	local.get	105
	local.get	104
	i64.store	.L__profc___udivmodsi4_libgcc+56
	local.get	5
	i32.load	20
	local.set	106
	local.get	5
	i32.load	24
	local.set	107
	local.get	107
	local.get	106
	i32.sub 
	local.set	108
	local.get	5
	local.get	108
	i32.store	24
	local.get	5
	i32.load	12
	local.set	109
	local.get	5
	i32.load	8
	local.set	110
	local.get	110
	local.get	109
	i32.or  
	local.set	111
	local.get	5
	local.get	111
	i32.store	8
.LBB132_12:                             #   in Loop: Header=BB132_9 Depth=1
	end_block                               # label416:
	i32.const	0
	local.set	112
	local.get	112
	i64.load	__llvm_gcov_ctr.132+40
	local.set	113
	i64.const	1
	local.set	114
	local.get	113
	local.get	114
	i64.add 
	local.set	115
	i32.const	0
	local.set	116
	local.get	116
	local.get	115
	i64.store	__llvm_gcov_ctr.132+40
	local.get	5
	i32.load	12
	local.set	117
	i32.const	1
	local.set	118
	local.get	117
	local.get	118
	i32.shr_u
	local.set	119
	local.get	5
	local.get	119
	i32.store	12
	local.get	5
	i32.load	20
	local.set	120
	i32.const	1
	local.set	121
	local.get	120
	local.get	121
	i32.shr_u
	local.set	122
	local.get	5
	local.get	122
	i32.store	20
	br      	0                               # 0: up to label415
.LBB132_13:
	end_loop
	end_block                               # label414:
	local.get	5
	i32.load	16
	local.set	123
	block   	
	block   	
	local.get	123
	i32.eqz
	br_if   	0                               # 0: down to label418
# %bb.14:
	i32.const	0
	local.set	124
	local.get	124
	i64.load	__llvm_gcov_ctr.132+48
	local.set	125
	i64.const	1
	local.set	126
	local.get	125
	local.get	126
	i64.add 
	local.set	127
	i32.const	0
	local.set	128
	local.get	128
	local.get	127
	i64.store	__llvm_gcov_ctr.132+48
	i32.const	0
	local.set	129
	local.get	129
	i64.load	.L__profc___udivmodsi4_libgcc+64
	local.set	130
	i64.const	1
	local.set	131
	local.get	130
	local.get	131
	i64.add 
	local.set	132
	i32.const	0
	local.set	133
	local.get	133
	local.get	132
	i64.store	.L__profc___udivmodsi4_libgcc+64
	local.get	5
	i32.load	24
	local.set	134
	local.get	5
	local.get	134
	i32.store	28
	br      	1                               # 1: down to label417
.LBB132_15:
	end_block                               # label418:
	i32.const	0
	local.set	135
	local.get	135
	i64.load	__llvm_gcov_ctr.132+56
	local.set	136
	i64.const	1
	local.set	137
	local.get	136
	local.get	137
	i64.add 
	local.set	138
	i32.const	0
	local.set	139
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.132+56
	local.get	5
	i32.load	8
	local.set	140
	local.get	5
	local.get	140
	i32.store	28
.LBB132_16:
	end_block                               # label417:
	local.get	5
	i32.load	28
	local.set	141
	local.get	141
	return
	end_function
                                        # -- End function
	.section	.text.__ashldi3,"",@
	.hidden	__ashldi3                       # -- Begin function __ashldi3
	.globl	__ashldi3
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
	.functype	__ashldi3 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___ashldi3
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___ashldi3
	i32.const	32
	local.set	10
	local.get	4
	local.get	10
	i32.store	24
	local.get	4
	i64.load	32
	local.set	11
	local.get	4
	local.get	11
	i64.store	16
	local.get	4
	i32.load	28
	local.set	12
	i32.const	32
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	block   	
	block   	
	block   	
	local.get	14
	i32.eqz
	br_if   	0                               # 0: down to label421
# %bb.1:
	i32.const	0
	local.set	15
	local.get	15
	i64.load	__llvm_gcov_ctr.133
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.add 
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	__llvm_gcov_ctr.133
	i32.const	0
	local.set	20
	local.get	20
	i64.load	.L__profc___ashldi3+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	.L__profc___ashldi3+8
	i32.const	0
	local.set	25
	local.get	4
	local.get	25
	i32.store	8
	local.get	4
	i32.load	16
	local.set	26
	local.get	4
	i32.load	28
	local.set	27
	i32.const	32
	local.set	28
	local.get	27
	local.get	28
	i32.sub 
	local.set	29
	local.get	26
	local.get	29
	i32.shl 
	local.set	30
	local.get	4
	local.get	30
	i32.store	12
	br      	1                               # 1: down to label420
.LBB133_2:
	end_block                               # label421:
	local.get	4
	i32.load	28
	local.set	31
	block   	
	local.get	31
	br_if   	0                               # 0: down to label422
# %bb.3:
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.133+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.133+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc___ashldi3+16
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc___ashldi3+16
	local.get	4
	i64.load	32
	local.set	42
	local.get	4
	local.get	42
	i64.store	40
	br      	2                               # 2: down to label419
.LBB133_4:
	end_block                               # label422:
	i32.const	0
	local.set	43
	local.get	43
	i64.load	__llvm_gcov_ctr.133+16
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	__llvm_gcov_ctr.133+16
	local.get	4
	i32.load	16
	local.set	48
	local.get	4
	i32.load	28
	local.set	49
	local.get	48
	local.get	49
	i32.shl 
	local.set	50
	local.get	4
	local.get	50
	i32.store	8
	local.get	4
	i32.load	20
	local.set	51
	local.get	4
	i32.load	28
	local.set	52
	local.get	51
	local.get	52
	i32.shl 
	local.set	53
	local.get	4
	i32.load	16
	local.set	54
	local.get	4
	i32.load	28
	local.set	55
	i32.const	32
	local.set	56
	local.get	56
	local.get	55
	i32.sub 
	local.set	57
	local.get	54
	local.get	57
	i32.shr_u
	local.set	58
	local.get	53
	local.get	58
	i32.or  
	local.set	59
	local.get	4
	local.get	59
	i32.store	12
.LBB133_5:
	end_block                               # label420:
	local.get	4
	i64.load	8
	local.set	60
	local.get	4
	local.get	60
	i64.store	40
.LBB133_6:
	end_block                               # label419:
	local.get	4
	i64.load	40
	local.set	61
	local.get	61
	return
	end_function
                                        # -- End function
	.section	.text.__ashlti3,"",@
	.hidden	__ashlti3                       # -- Begin function __ashlti3
	.globl	__ashlti3
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
	.functype	__ashlti3 (i32, i64, i64, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64
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
	i32.const	0
	local.set	7
	local.get	7
	i64.load	.L__profc___ashlti3
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.add 
	local.set	10
	local.get	7
	local.get	10
	i64.store	.L__profc___ashlti3
	i32.const	64
	local.set	11
	local.get	6
	local.get	11
	i32.store	40
	local.get	6
	i64.load	48
	local.set	12
	local.get	6
	i64.load	56
	local.set	13
	local.get	6
	local.get	13
	i64.store	24
	local.get	6
	local.get	12
	i64.store	16
	local.get	6
	i32.load	44
	local.set	14
	i32.const	64
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	block   	
	block   	
	block   	
	local.get	16
	i32.eqz
	br_if   	0                               # 0: down to label425
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.134
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.134
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc___ashlti3+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc___ashlti3+8
	i64.const	0
	local.set	27
	local.get	6
	local.get	27
	i64.store	0
	local.get	6
	i64.load	16
	local.set	28
	local.get	6
	i32.load	44
	local.set	29
	i32.const	64
	local.set	30
	local.get	29
	local.get	30
	i32.sub 
	local.set	31
	local.get	31
	local.set	32
	local.get	32
	i64.extend_i32_u
	local.set	33
	local.get	28
	local.get	33
	i64.shl 
	local.set	34
	local.get	6
	local.get	34
	i64.store	8
	br      	1                               # 1: down to label424
.LBB134_2:
	end_block                               # label425:
	local.get	6
	i32.load	44
	local.set	35
	block   	
	local.get	35
	br_if   	0                               # 0: down to label426
# %bb.3:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.134+8
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	local.get	36
	local.get	39
	i64.store	__llvm_gcov_ctr.134+8
	local.get	36
	i64.load	.L__profc___ashlti3+16
	local.set	40
	local.get	40
	local.get	38
	i64.add 
	local.set	41
	local.get	36
	local.get	41
	i64.store	.L__profc___ashlti3+16
	local.get	6
	i64.load	48
	local.set	42
	local.get	6
	i64.load	56
	local.set	43
	local.get	6
	local.get	43
	i64.store	72
	local.get	6
	local.get	42
	i64.store	64
	br      	2                               # 2: down to label423
.LBB134_4:
	end_block                               # label426:
	i32.const	0
	local.set	44
	local.get	44
	i64.load	__llvm_gcov_ctr.134+16
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	local.get	47
	i64.store	__llvm_gcov_ctr.134+16
	local.get	6
	i64.load	16
	local.set	49
	local.get	6
	i32.load	44
	local.set	50
	local.get	50
	local.set	51
	local.get	51
	i64.extend_i32_u
	local.set	52
	local.get	49
	local.get	52
	i64.shl 
	local.set	53
	local.get	6
	local.get	53
	i64.store	0
	local.get	6
	i64.load	24
	local.set	54
	local.get	6
	i32.load	44
	local.set	55
	local.get	55
	local.set	56
	local.get	56
	i64.extend_i32_u
	local.set	57
	local.get	54
	local.get	57
	i64.shl 
	local.set	58
	local.get	6
	i64.load	16
	local.set	59
	local.get	6
	i32.load	44
	local.set	60
	i32.const	64
	local.set	61
	local.get	61
	local.get	60
	i32.sub 
	local.set	62
	local.get	62
	local.set	63
	local.get	63
	i64.extend_i32_u
	local.set	64
	local.get	59
	local.get	64
	i64.shr_u
	local.set	65
	local.get	58
	local.get	65
	i64.or  
	local.set	66
	local.get	6
	local.get	66
	i64.store	8
.LBB134_5:
	end_block                               # label424:
	local.get	6
	i64.load	0
	local.set	67
	local.get	6
	i64.load	8
	local.set	68
	local.get	6
	local.get	68
	i64.store	72
	local.get	6
	local.get	67
	i64.store	64
.LBB134_6:
	end_block                               # label423:
	local.get	6
	i64.load	64
	local.set	69
	local.get	6
	i64.load	72
	local.set	70
	local.get	0
	local.get	70
	i64.store	8
	local.get	0
	local.get	69
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___ashrdi3
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___ashrdi3
	i32.const	32
	local.set	10
	local.get	4
	local.get	10
	i32.store	24
	local.get	4
	i64.load	32
	local.set	11
	local.get	4
	local.get	11
	i64.store	16
	local.get	4
	i32.load	28
	local.set	12
	i32.const	32
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	block   	
	block   	
	block   	
	local.get	14
	i32.eqz
	br_if   	0                               # 0: down to label429
# %bb.1:
	i32.const	0
	local.set	15
	local.get	15
	i64.load	__llvm_gcov_ctr.135
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.add 
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	__llvm_gcov_ctr.135
	i32.const	0
	local.set	20
	local.get	20
	i64.load	.L__profc___ashrdi3+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	.L__profc___ashrdi3+8
	local.get	4
	i32.load	20
	local.set	25
	i32.const	31
	local.set	26
	local.get	25
	local.get	26
	i32.shr_s
	local.set	27
	local.get	4
	local.get	27
	i32.store	12
	local.get	4
	i32.load	20
	local.set	28
	local.get	4
	i32.load	28
	local.set	29
	i32.const	32
	local.set	30
	local.get	29
	local.get	30
	i32.sub 
	local.set	31
	local.get	28
	local.get	31
	i32.shr_s
	local.set	32
	local.get	4
	local.get	32
	i32.store	8
	br      	1                               # 1: down to label428
.LBB135_2:
	end_block                               # label429:
	local.get	4
	i32.load	28
	local.set	33
	block   	
	local.get	33
	br_if   	0                               # 0: down to label430
# %bb.3:
	i32.const	0
	local.set	34
	local.get	34
	i64.load	__llvm_gcov_ctr.135+8
	local.set	35
	i64.const	1
	local.set	36
	local.get	35
	local.get	36
	i64.add 
	local.set	37
	i32.const	0
	local.set	38
	local.get	38
	local.get	37
	i64.store	__llvm_gcov_ctr.135+8
	i32.const	0
	local.set	39
	local.get	39
	i64.load	.L__profc___ashrdi3+16
	local.set	40
	i64.const	1
	local.set	41
	local.get	40
	local.get	41
	i64.add 
	local.set	42
	i32.const	0
	local.set	43
	local.get	43
	local.get	42
	i64.store	.L__profc___ashrdi3+16
	local.get	4
	i64.load	32
	local.set	44
	local.get	4
	local.get	44
	i64.store	40
	br      	2                               # 2: down to label427
.LBB135_4:
	end_block                               # label430:
	i32.const	0
	local.set	45
	local.get	45
	i64.load	__llvm_gcov_ctr.135+16
	local.set	46
	i64.const	1
	local.set	47
	local.get	46
	local.get	47
	i64.add 
	local.set	48
	i32.const	0
	local.set	49
	local.get	49
	local.get	48
	i64.store	__llvm_gcov_ctr.135+16
	local.get	4
	i32.load	20
	local.set	50
	local.get	4
	i32.load	28
	local.set	51
	local.get	50
	local.get	51
	i32.shr_s
	local.set	52
	local.get	4
	local.get	52
	i32.store	12
	local.get	4
	i32.load	20
	local.set	53
	local.get	4
	i32.load	28
	local.set	54
	i32.const	32
	local.set	55
	local.get	55
	local.get	54
	i32.sub 
	local.set	56
	local.get	53
	local.get	56
	i32.shl 
	local.set	57
	local.get	4
	i32.load	16
	local.set	58
	local.get	4
	i32.load	28
	local.set	59
	local.get	58
	local.get	59
	i32.shr_u
	local.set	60
	local.get	57
	local.get	60
	i32.or  
	local.set	61
	local.get	4
	local.get	61
	i32.store	8
.LBB135_5:
	end_block                               # label428:
	local.get	4
	i64.load	8
	local.set	62
	local.get	4
	local.get	62
	i64.store	40
.LBB135_6:
	end_block                               # label427:
	local.get	4
	i64.load	40
	local.set	63
	local.get	63
	return
	end_function
                                        # -- End function
	.section	.text.__ashrti3,"",@
	.hidden	__ashrti3                       # -- Begin function __ashrti3
	.globl	__ashrti3
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
	.functype	__ashrti3 (i32, i64, i64, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64
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
	i32.const	0
	local.set	7
	local.get	7
	i64.load	.L__profc___ashrti3
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.add 
	local.set	10
	local.get	7
	local.get	10
	i64.store	.L__profc___ashrti3
	i32.const	64
	local.set	11
	local.get	6
	local.get	11
	i32.store	40
	local.get	6
	i64.load	48
	local.set	12
	local.get	6
	i64.load	56
	local.set	13
	local.get	6
	local.get	13
	i64.store	24
	local.get	6
	local.get	12
	i64.store	16
	local.get	6
	i32.load	44
	local.set	14
	i32.const	64
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	block   	
	block   	
	block   	
	local.get	16
	i32.eqz
	br_if   	0                               # 0: down to label433
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.136
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.136
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc___ashrti3+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc___ashrti3+8
	local.get	6
	i64.load	24
	local.set	27
	i64.const	63
	local.set	28
	local.get	27
	local.get	28
	i64.shr_s
	local.set	29
	local.get	6
	local.get	29
	i64.store	8
	local.get	6
	i64.load	24
	local.set	30
	local.get	6
	i32.load	44
	local.set	31
	i32.const	64
	local.set	32
	local.get	31
	local.get	32
	i32.sub 
	local.set	33
	local.get	33
	local.set	34
	local.get	34
	i64.extend_i32_u
	local.set	35
	local.get	30
	local.get	35
	i64.shr_s
	local.set	36
	local.get	6
	local.get	36
	i64.store	0
	br      	1                               # 1: down to label432
.LBB136_2:
	end_block                               # label433:
	local.get	6
	i32.load	44
	local.set	37
	block   	
	local.get	37
	br_if   	0                               # 0: down to label434
# %bb.3:
	i32.const	0
	local.set	38
	local.get	38
	i64.load	__llvm_gcov_ctr.136+8
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	local.get	38
	local.get	41
	i64.store	__llvm_gcov_ctr.136+8
	local.get	38
	i64.load	.L__profc___ashrti3+16
	local.set	42
	local.get	42
	local.get	40
	i64.add 
	local.set	43
	local.get	38
	local.get	43
	i64.store	.L__profc___ashrti3+16
	local.get	6
	i64.load	48
	local.set	44
	local.get	6
	i64.load	56
	local.set	45
	local.get	6
	local.get	45
	i64.store	72
	local.get	6
	local.get	44
	i64.store	64
	br      	2                               # 2: down to label431
.LBB136_4:
	end_block                               # label434:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.136+16
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.136+16
	local.get	6
	i64.load	24
	local.set	51
	local.get	6
	i32.load	44
	local.set	52
	local.get	52
	local.set	53
	local.get	53
	i64.extend_i32_u
	local.set	54
	local.get	51
	local.get	54
	i64.shr_s
	local.set	55
	local.get	6
	local.get	55
	i64.store	8
	local.get	6
	i64.load	24
	local.set	56
	local.get	6
	i32.load	44
	local.set	57
	i32.const	64
	local.set	58
	local.get	58
	local.get	57
	i32.sub 
	local.set	59
	local.get	59
	local.set	60
	local.get	60
	i64.extend_i32_u
	local.set	61
	local.get	56
	local.get	61
	i64.shl 
	local.set	62
	local.get	6
	i64.load	16
	local.set	63
	local.get	6
	i32.load	44
	local.set	64
	local.get	64
	local.set	65
	local.get	65
	i64.extend_i32_u
	local.set	66
	local.get	63
	local.get	66
	i64.shr_u
	local.set	67
	local.get	62
	local.get	67
	i64.or  
	local.set	68
	local.get	6
	local.get	68
	i64.store	0
.LBB136_5:
	end_block                               # label432:
	local.get	6
	i64.load	0
	local.set	69
	local.get	6
	i64.load	8
	local.set	70
	local.get	6
	local.get	70
	i64.store	72
	local.get	6
	local.get	69
	i64.store	64
.LBB136_6:
	end_block                               # label431:
	local.get	6
	i64.load	64
	local.set	71
	local.get	6
	i64.load	72
	local.set	72
	local.get	0
	local.get	72
	i64.store	8
	local.get	0
	local.get	71
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.137
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.137
	local.get	3
	local.get	0
	i64.store	8
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___bswapdi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___bswapdi2
	local.get	3
	i64.load	8
	local.set	14
	i64.const	-72057594037927936
	local.set	15
	local.get	14
	local.get	15
	i64.and 
	local.set	16
	i64.const	56
	local.set	17
	local.get	16
	local.get	17
	i64.shr_u
	local.set	18
	local.get	3
	i64.load	8
	local.set	19
	i64.const	71776119061217280
	local.set	20
	local.get	19
	local.get	20
	i64.and 
	local.set	21
	i64.const	40
	local.set	22
	local.get	21
	local.get	22
	i64.shr_u
	local.set	23
	local.get	18
	local.get	23
	i64.or  
	local.set	24
	local.get	3
	i64.load	8
	local.set	25
	i64.const	280375465082880
	local.set	26
	local.get	25
	local.get	26
	i64.and 
	local.set	27
	i64.const	24
	local.set	28
	local.get	27
	local.get	28
	i64.shr_u
	local.set	29
	local.get	24
	local.get	29
	i64.or  
	local.set	30
	local.get	3
	i64.load	8
	local.set	31
	i64.const	1095216660480
	local.set	32
	local.get	31
	local.get	32
	i64.and 
	local.set	33
	i64.const	8
	local.set	34
	local.get	33
	local.get	34
	i64.shr_u
	local.set	35
	local.get	30
	local.get	35
	i64.or  
	local.set	36
	local.get	3
	i64.load	8
	local.set	37
	i64.const	4278190080
	local.set	38
	local.get	37
	local.get	38
	i64.and 
	local.set	39
	i64.const	8
	local.set	40
	local.get	39
	local.get	40
	i64.shl 
	local.set	41
	local.get	36
	local.get	41
	i64.or  
	local.set	42
	local.get	3
	i64.load	8
	local.set	43
	i64.const	16711680
	local.set	44
	local.get	43
	local.get	44
	i64.and 
	local.set	45
	i64.const	24
	local.set	46
	local.get	45
	local.get	46
	i64.shl 
	local.set	47
	local.get	42
	local.get	47
	i64.or  
	local.set	48
	local.get	3
	i64.load	8
	local.set	49
	i64.const	65280
	local.set	50
	local.get	49
	local.get	50
	i64.and 
	local.set	51
	i64.const	40
	local.set	52
	local.get	51
	local.get	52
	i64.shl 
	local.set	53
	local.get	48
	local.get	53
	i64.or  
	local.set	54
	local.get	3
	i64.load	8
	local.set	55
	i64.const	255
	local.set	56
	local.get	55
	local.get	56
	i64.and 
	local.set	57
	i64.const	56
	local.set	58
	local.get	57
	local.get	58
	i64.shl 
	local.set	59
	local.get	54
	local.get	59
	i64.or  
	local.set	60
	local.get	60
	return
	end_function
                                        # -- End function
	.section	.text.__bswapsi2,"",@
	.hidden	__bswapsi2                      # -- Begin function __bswapsi2
	.globl	__bswapsi2
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
	.functype	__bswapsi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.138
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.138
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___bswapsi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___bswapsi2
	local.get	3
	i32.load	12
	local.set	14
	i32.const	-16777216
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	i32.const	24
	local.set	17
	local.get	16
	local.get	17
	i32.shr_u
	local.set	18
	local.get	3
	i32.load	12
	local.set	19
	i32.const	16711680
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	i32.const	8
	local.set	22
	local.get	21
	local.get	22
	i32.shr_u
	local.set	23
	local.get	18
	local.get	23
	i32.or  
	local.set	24
	local.get	3
	i32.load	12
	local.set	25
	i32.const	65280
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	i32.const	8
	local.set	28
	local.get	27
	local.get	28
	i32.shl 
	local.set	29
	local.get	24
	local.get	29
	i32.or  
	local.set	30
	local.get	3
	i32.load	12
	local.set	31
	i32.const	255
	local.set	32
	local.get	31
	local.get	32
	i32.and 
	local.set	33
	i32.const	24
	local.set	34
	local.get	33
	local.get	34
	i32.shl 
	local.set	35
	local.get	30
	local.get	35
	i32.or  
	local.set	36
	local.get	36
	return
	end_function
                                        # -- End function
	.section	.text.__clzsi2,"",@
	.hidden	__clzsi2                        # -- Begin function __clzsi2
	.globl	__clzsi2
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
	.functype	__clzsi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.139
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.139
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___clzsi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___clzsi2
	local.get	3
	i32.load	12
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	local.get	3
	i32.load	8
	local.set	15
	i32.const	-65536
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	i32.const	0
	local.set	18
	local.get	17
	local.get	18
	i32.eq  
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	i32.const	4
	local.set	22
	local.get	21
	local.get	22
	i32.shl 
	local.set	23
	local.get	3
	local.get	23
	i32.store	4
	local.get	3
	i32.load	4
	local.set	24
	i32.const	16
	local.set	25
	local.get	25
	local.get	24
	i32.sub 
	local.set	26
	local.get	3
	i32.load	8
	local.set	27
	local.get	27
	local.get	26
	i32.shr_u
	local.set	28
	local.get	3
	local.get	28
	i32.store	8
	local.get	3
	i32.load	4
	local.set	29
	local.get	3
	local.get	29
	i32.store	0
	local.get	3
	i32.load	8
	local.set	30
	i32.const	65280
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	i32.const	0
	local.set	33
	local.get	32
	local.get	33
	i32.eq  
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	i32.const	3
	local.set	37
	local.get	36
	local.get	37
	i32.shl 
	local.set	38
	local.get	3
	local.get	38
	i32.store	4
	local.get	3
	i32.load	4
	local.set	39
	i32.const	8
	local.set	40
	local.get	40
	local.get	39
	i32.sub 
	local.set	41
	local.get	3
	i32.load	8
	local.set	42
	local.get	42
	local.get	41
	i32.shr_u
	local.set	43
	local.get	3
	local.get	43
	i32.store	8
	local.get	3
	i32.load	4
	local.set	44
	local.get	3
	i32.load	0
	local.set	45
	local.get	45
	local.get	44
	i32.add 
	local.set	46
	local.get	3
	local.get	46
	i32.store	0
	local.get	3
	i32.load	8
	local.set	47
	i32.const	240
	local.set	48
	local.get	47
	local.get	48
	i32.and 
	local.set	49
	i32.const	0
	local.set	50
	local.get	49
	local.get	50
	i32.eq  
	local.set	51
	i32.const	1
	local.set	52
	local.get	51
	local.get	52
	i32.and 
	local.set	53
	i32.const	2
	local.set	54
	local.get	53
	local.get	54
	i32.shl 
	local.set	55
	local.get	3
	local.get	55
	i32.store	4
	local.get	3
	i32.load	4
	local.set	56
	i32.const	4
	local.set	57
	local.get	57
	local.get	56
	i32.sub 
	local.set	58
	local.get	3
	i32.load	8
	local.set	59
	local.get	59
	local.get	58
	i32.shr_u
	local.set	60
	local.get	3
	local.get	60
	i32.store	8
	local.get	3
	i32.load	4
	local.set	61
	local.get	3
	i32.load	0
	local.set	62
	local.get	62
	local.get	61
	i32.add 
	local.set	63
	local.get	3
	local.get	63
	i32.store	0
	local.get	3
	i32.load	8
	local.set	64
	i32.const	12
	local.set	65
	local.get	64
	local.get	65
	i32.and 
	local.set	66
	i32.const	0
	local.set	67
	local.get	66
	local.get	67
	i32.eq  
	local.set	68
	i32.const	1
	local.set	69
	local.get	68
	local.get	69
	i32.and 
	local.set	70
	i32.const	1
	local.set	71
	local.get	70
	local.get	71
	i32.shl 
	local.set	72
	local.get	3
	local.get	72
	i32.store	4
	local.get	3
	i32.load	4
	local.set	73
	i32.const	2
	local.set	74
	local.get	74
	local.get	73
	i32.sub 
	local.set	75
	local.get	3
	i32.load	8
	local.set	76
	local.get	76
	local.get	75
	i32.shr_u
	local.set	77
	local.get	3
	local.get	77
	i32.store	8
	local.get	3
	i32.load	4
	local.set	78
	local.get	3
	i32.load	0
	local.set	79
	local.get	79
	local.get	78
	i32.add 
	local.set	80
	local.get	3
	local.get	80
	i32.store	0
	local.get	3
	i32.load	0
	local.set	81
	local.get	3
	i32.load	8
	local.set	82
	i32.const	2
	local.set	83
	local.get	83
	local.get	82
	i32.sub 
	local.set	84
	local.get	3
	i32.load	8
	local.set	85
	i32.const	2
	local.set	86
	local.get	85
	local.get	86
	i32.and 
	local.set	87
	i32.const	0
	local.set	88
	local.get	87
	local.get	88
	i32.eq  
	local.set	89
	i32.const	1
	local.set	90
	local.get	89
	local.get	90
	i32.and 
	local.set	91
	i32.const	0
	local.set	92
	local.get	92
	local.get	91
	i32.sub 
	local.set	93
	local.get	84
	local.get	93
	i32.and 
	local.set	94
	local.get	81
	local.get	94
	i32.add 
	local.set	95
	local.get	95
	return
	end_function
                                        # -- End function
	.section	.text.__clzti2,"",@
	.hidden	__clzti2                        # -- Begin function __clzti2
	.globl	__clzti2
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
	.functype	__clzti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.140
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	local.get	5
	local.get	8
	i64.store	__llvm_gcov_ctr.140
	local.get	4
	local.get	1
	i64.store	40
	local.get	4
	local.get	0
	i64.store	32
	local.get	5
	i64.load	.L__profc___clzti2
	local.set	9
	local.get	9
	local.get	7
	i64.add 
	local.set	10
	local.get	5
	local.get	10
	i64.store	.L__profc___clzti2
	local.get	4
	i64.load	32
	local.set	11
	local.get	4
	i64.load	40
	local.set	12
	local.get	4
	local.get	12
	i64.store	24
	local.get	4
	local.get	11
	i64.store	16
	local.get	4
	i64.load	24
	local.set	13
	i64.const	0
	local.set	14
	local.get	13
	local.get	14
	i64.eq  
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i32.sub 
	local.set	19
	local.get	19
	local.set	20
	local.get	20
	i64.extend_i32_s
	local.set	21
	local.get	4
	local.get	21
	i64.store	8
	local.get	4
	i64.load	24
	local.set	22
	local.get	4
	i64.load	8
	local.set	23
	i64.const	-1
	local.set	24
	local.get	23
	local.get	24
	i64.xor 
	local.set	25
	local.get	22
	local.get	25
	i64.and 
	local.set	26
	local.get	4
	i64.load	16
	local.set	27
	local.get	4
	i64.load	8
	local.set	28
	local.get	27
	local.get	28
	i64.and 
	local.set	29
	local.get	26
	local.get	29
	i64.or  
	local.set	30
	local.get	30
	i64.clz 
	local.set	31
	local.get	31
	i32.wrap_i64
	local.set	32
	local.get	4
	i64.load	8
	local.set	33
	local.get	33
	i32.wrap_i64
	local.set	34
	i32.const	64
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	local.get	32
	local.get	36
	i32.add 
	local.set	37
	local.get	37
	return
	end_function
                                        # -- End function
	.section	.text.__cmpdi2,"",@
	.hidden	__cmpdi2                        # -- Begin function __cmpdi2
	.globl	__cmpdi2
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
	.functype	__cmpdi2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___cmpdi2
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___cmpdi2
	local.get	4
	i64.load	32
	local.set	10
	local.get	4
	local.get	10
	i64.store	16
	local.get	4
	i64.load	24
	local.set	11
	local.get	4
	local.get	11
	i64.store	8
	local.get	4
	i32.load	20
	local.set	12
	local.get	4
	i32.load	12
	local.set	13
	local.get	12
	local.get	13
	i32.lt_s
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
	br_if   	0                               # 0: down to label436
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.141
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.141
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc___cmpdi2+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc___cmpdi2+8
	i32.const	0
	local.set	27
	local.get	4
	local.get	27
	i32.store	44
	br      	1                               # 1: down to label435
.LBB141_2:
	end_block                               # label436:
	local.get	4
	i32.load	20
	local.set	28
	local.get	4
	i32.load	12
	local.set	29
	local.get	28
	local.get	29
	i32.gt_s
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	block   	
	local.get	32
	i32.eqz
	br_if   	0                               # 0: down to label437
# %bb.3:
	i32.const	0
	local.set	33
	local.get	33
	i64.load	__llvm_gcov_ctr.141+8
	local.set	34
	i64.const	1
	local.set	35
	local.get	34
	local.get	35
	i64.add 
	local.set	36
	i32.const	0
	local.set	37
	local.get	37
	local.get	36
	i64.store	__llvm_gcov_ctr.141+8
	i32.const	0
	local.set	38
	local.get	38
	i64.load	.L__profc___cmpdi2+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	.L__profc___cmpdi2+16
	i32.const	2
	local.set	43
	local.get	4
	local.get	43
	i32.store	44
	br      	1                               # 1: down to label435
.LBB141_4:
	end_block                               # label437:
	local.get	4
	i32.load	16
	local.set	44
	local.get	4
	i32.load	8
	local.set	45
	local.get	44
	local.get	45
	i32.lt_u
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.and 
	local.set	48
	block   	
	local.get	48
	i32.eqz
	br_if   	0                               # 0: down to label438
# %bb.5:
	i32.const	0
	local.set	49
	local.get	49
	i64.load	__llvm_gcov_ctr.141+16
	local.set	50
	i64.const	1
	local.set	51
	local.get	50
	local.get	51
	i64.add 
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.141+16
	i32.const	0
	local.set	54
	local.get	54
	i64.load	.L__profc___cmpdi2+24
	local.set	55
	i64.const	1
	local.set	56
	local.get	55
	local.get	56
	i64.add 
	local.set	57
	i32.const	0
	local.set	58
	local.get	58
	local.get	57
	i64.store	.L__profc___cmpdi2+24
	i32.const	0
	local.set	59
	local.get	4
	local.get	59
	i32.store	44
	br      	1                               # 1: down to label435
.LBB141_6:
	end_block                               # label438:
	local.get	4
	i32.load	16
	local.set	60
	local.get	4
	i32.load	8
	local.set	61
	local.get	60
	local.get	61
	i32.gt_u
	local.set	62
	i32.const	1
	local.set	63
	local.get	62
	local.get	63
	i32.and 
	local.set	64
	block   	
	local.get	64
	i32.eqz
	br_if   	0                               # 0: down to label439
# %bb.7:
	i32.const	0
	local.set	65
	local.get	65
	i64.load	__llvm_gcov_ctr.141+24
	local.set	66
	i64.const	1
	local.set	67
	local.get	66
	local.get	67
	i64.add 
	local.set	68
	i32.const	0
	local.set	69
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.141+24
	i32.const	0
	local.set	70
	local.get	70
	i64.load	.L__profc___cmpdi2+32
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	.L__profc___cmpdi2+32
	i32.const	2
	local.set	75
	local.get	4
	local.get	75
	i32.store	44
	br      	1                               # 1: down to label435
.LBB141_8:
	end_block                               # label439:
	i32.const	0
	local.set	76
	local.get	76
	i64.load	__llvm_gcov_ctr.141+32
	local.set	77
	i64.const	1
	local.set	78
	local.get	77
	local.get	78
	i64.add 
	local.set	79
	i32.const	0
	local.set	80
	local.get	80
	local.get	79
	i64.store	__llvm_gcov_ctr.141+32
	i32.const	1
	local.set	81
	local.get	4
	local.get	81
	i32.store	44
.LBB141_9:
	end_block                               # label435:
	local.get	4
	i32.load	44
	local.set	82
	local.get	82
	return
	end_function
                                        # -- End function
	.section	.text.__aeabi_lcmp,"",@
	.hidden	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
	.functype	__aeabi_lcmp (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.142
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.142
	local.get	4
	local.get	0
	i64.store	8
	local.get	4
	local.get	1
	i64.store	0
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___aeabi_lcmp
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___aeabi_lcmp
	local.get	4
	i64.load	8
	local.set	15
	local.get	4
	i64.load	0
	local.set	16
	local.get	15
	local.get	16
	call	__cmpdi2
	local.set	17
	i32.const	1
	local.set	18
	local.get	17
	local.get	18
	i32.sub 
	local.set	19
	i32.const	16
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
	.section	.text.__cmpti2,"",@
	.hidden	__cmpti2                        # -- Begin function __cmpti2
	.globl	__cmpti2
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
	.functype	__cmpti2 (i64, i64, i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	7
	local.get	7
	i64.load	.L__profc___cmpti2
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.add 
	local.set	10
	local.get	7
	local.get	10
	i64.store	.L__profc___cmpti2
	local.get	6
	i64.load	48
	local.set	11
	local.get	6
	i64.load	56
	local.set	12
	local.get	6
	local.get	12
	i64.store	24
	local.get	6
	local.get	11
	i64.store	16
	local.get	6
	i64.load	32
	local.set	13
	local.get	6
	i64.load	40
	local.set	14
	local.get	6
	local.get	14
	i64.store	8
	local.get	6
	local.get	13
	i64.store	0
	local.get	6
	i64.load	24
	local.set	15
	local.get	6
	i64.load	8
	local.set	16
	local.get	15
	local.get	16
	i64.lt_s
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
	br_if   	0                               # 0: down to label441
# %bb.1:
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.143
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.143
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc___cmpti2+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc___cmpti2+8
	i32.const	0
	local.set	30
	local.get	6
	local.get	30
	i32.store	76
	br      	1                               # 1: down to label440
.LBB143_2:
	end_block                               # label441:
	local.get	6
	i64.load	24
	local.set	31
	local.get	6
	i64.load	8
	local.set	32
	local.get	31
	local.get	32
	i64.gt_s
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	block   	
	local.get	35
	i32.eqz
	br_if   	0                               # 0: down to label442
# %bb.3:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.143+8
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.143+8
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc___cmpti2+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc___cmpti2+16
	i32.const	2
	local.set	46
	local.get	6
	local.get	46
	i32.store	76
	br      	1                               # 1: down to label440
.LBB143_4:
	end_block                               # label442:
	local.get	6
	i64.load	16
	local.set	47
	local.get	6
	i64.load	0
	local.set	48
	local.get	47
	local.get	48
	i64.lt_u
	local.set	49
	i32.const	1
	local.set	50
	local.get	49
	local.get	50
	i32.and 
	local.set	51
	block   	
	local.get	51
	i32.eqz
	br_if   	0                               # 0: down to label443
# %bb.5:
	i32.const	0
	local.set	52
	local.get	52
	i64.load	__llvm_gcov_ctr.143+16
	local.set	53
	i64.const	1
	local.set	54
	local.get	53
	local.get	54
	i64.add 
	local.set	55
	i32.const	0
	local.set	56
	local.get	56
	local.get	55
	i64.store	__llvm_gcov_ctr.143+16
	i32.const	0
	local.set	57
	local.get	57
	i64.load	.L__profc___cmpti2+24
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	.L__profc___cmpti2+24
	i32.const	0
	local.set	62
	local.get	6
	local.get	62
	i32.store	76
	br      	1                               # 1: down to label440
.LBB143_6:
	end_block                               # label443:
	local.get	6
	i64.load	16
	local.set	63
	local.get	6
	i64.load	0
	local.set	64
	local.get	63
	local.get	64
	i64.gt_u
	local.set	65
	i32.const	1
	local.set	66
	local.get	65
	local.get	66
	i32.and 
	local.set	67
	block   	
	local.get	67
	i32.eqz
	br_if   	0                               # 0: down to label444
# %bb.7:
	i32.const	0
	local.set	68
	local.get	68
	i64.load	__llvm_gcov_ctr.143+24
	local.set	69
	i64.const	1
	local.set	70
	local.get	69
	local.get	70
	i64.add 
	local.set	71
	i32.const	0
	local.set	72
	local.get	72
	local.get	71
	i64.store	__llvm_gcov_ctr.143+24
	i32.const	0
	local.set	73
	local.get	73
	i64.load	.L__profc___cmpti2+32
	local.set	74
	i64.const	1
	local.set	75
	local.get	74
	local.get	75
	i64.add 
	local.set	76
	i32.const	0
	local.set	77
	local.get	77
	local.get	76
	i64.store	.L__profc___cmpti2+32
	i32.const	2
	local.set	78
	local.get	6
	local.get	78
	i32.store	76
	br      	1                               # 1: down to label440
.LBB143_8:
	end_block                               # label444:
	i32.const	0
	local.set	79
	local.get	79
	i64.load	__llvm_gcov_ctr.143+32
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	__llvm_gcov_ctr.143+32
	i32.const	1
	local.set	84
	local.get	6
	local.get	84
	i32.store	76
.LBB143_9:
	end_block                               # label440:
	local.get	6
	i32.load	76
	local.set	85
	local.get	85
	return
	end_function
                                        # -- End function
	.section	.text.__ctzsi2,"",@
	.hidden	__ctzsi2                        # -- Begin function __ctzsi2
	.globl	__ctzsi2
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
	.functype	__ctzsi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.144
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.144
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___ctzsi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___ctzsi2
	local.get	3
	i32.load	12
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	local.get	3
	i32.load	8
	local.set	15
	i32.const	65535
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	i32.const	0
	local.set	18
	local.get	17
	local.get	18
	i32.eq  
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	20
	i32.and 
	local.set	21
	i32.const	4
	local.set	22
	local.get	21
	local.get	22
	i32.shl 
	local.set	23
	local.get	3
	local.get	23
	i32.store	4
	local.get	3
	i32.load	4
	local.set	24
	local.get	3
	i32.load	8
	local.set	25
	local.get	25
	local.get	24
	i32.shr_u
	local.set	26
	local.get	3
	local.get	26
	i32.store	8
	local.get	3
	i32.load	4
	local.set	27
	local.get	3
	local.get	27
	i32.store	0
	local.get	3
	i32.load	8
	local.set	28
	i32.const	255
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	i32.const	0
	local.set	31
	local.get	30
	local.get	31
	i32.eq  
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.and 
	local.set	34
	i32.const	3
	local.set	35
	local.get	34
	local.get	35
	i32.shl 
	local.set	36
	local.get	3
	local.get	36
	i32.store	4
	local.get	3
	i32.load	4
	local.set	37
	local.get	3
	i32.load	8
	local.set	38
	local.get	38
	local.get	37
	i32.shr_u
	local.set	39
	local.get	3
	local.get	39
	i32.store	8
	local.get	3
	i32.load	4
	local.set	40
	local.get	3
	i32.load	0
	local.set	41
	local.get	41
	local.get	40
	i32.add 
	local.set	42
	local.get	3
	local.get	42
	i32.store	0
	local.get	3
	i32.load	8
	local.set	43
	i32.const	15
	local.set	44
	local.get	43
	local.get	44
	i32.and 
	local.set	45
	i32.const	0
	local.set	46
	local.get	45
	local.get	46
	i32.eq  
	local.set	47
	i32.const	1
	local.set	48
	local.get	47
	local.get	48
	i32.and 
	local.set	49
	i32.const	2
	local.set	50
	local.get	49
	local.get	50
	i32.shl 
	local.set	51
	local.get	3
	local.get	51
	i32.store	4
	local.get	3
	i32.load	4
	local.set	52
	local.get	3
	i32.load	8
	local.set	53
	local.get	53
	local.get	52
	i32.shr_u
	local.set	54
	local.get	3
	local.get	54
	i32.store	8
	local.get	3
	i32.load	4
	local.set	55
	local.get	3
	i32.load	0
	local.set	56
	local.get	56
	local.get	55
	i32.add 
	local.set	57
	local.get	3
	local.get	57
	i32.store	0
	local.get	3
	i32.load	8
	local.set	58
	i32.const	3
	local.set	59
	local.get	58
	local.get	59
	i32.and 
	local.set	60
	i32.const	0
	local.set	61
	local.get	60
	local.get	61
	i32.eq  
	local.set	62
	i32.const	1
	local.set	63
	local.get	62
	local.get	63
	i32.and 
	local.set	64
	i32.const	1
	local.set	65
	local.get	64
	local.get	65
	i32.shl 
	local.set	66
	local.get	3
	local.get	66
	i32.store	4
	local.get	3
	i32.load	4
	local.set	67
	local.get	3
	i32.load	8
	local.set	68
	local.get	68
	local.get	67
	i32.shr_u
	local.set	69
	local.get	3
	local.get	69
	i32.store	8
	local.get	3
	i32.load	8
	local.set	70
	i32.const	3
	local.set	71
	local.get	70
	local.get	71
	i32.and 
	local.set	72
	local.get	3
	local.get	72
	i32.store	8
	local.get	3
	i32.load	4
	local.set	73
	local.get	3
	i32.load	0
	local.set	74
	local.get	74
	local.get	73
	i32.add 
	local.set	75
	local.get	3
	local.get	75
	i32.store	0
	local.get	3
	i32.load	0
	local.set	76
	local.get	3
	i32.load	8
	local.set	77
	i32.const	1
	local.set	78
	local.get	77
	local.get	78
	i32.shr_u
	local.set	79
	i32.const	2
	local.set	80
	local.get	80
	local.get	79
	i32.sub 
	local.set	81
	local.get	3
	i32.load	8
	local.set	82
	i32.const	1
	local.set	83
	local.get	82
	local.get	83
	i32.and 
	local.set	84
	i32.const	0
	local.set	85
	local.get	84
	local.get	85
	i32.eq  
	local.set	86
	i32.const	1
	local.set	87
	local.get	86
	local.get	87
	i32.and 
	local.set	88
	i32.const	0
	local.set	89
	local.get	89
	local.get	88
	i32.sub 
	local.set	90
	local.get	81
	local.get	90
	i32.and 
	local.set	91
	local.get	76
	local.get	91
	i32.add 
	local.set	92
	local.get	92
	return
	end_function
                                        # -- End function
	.section	.text.__ctzti2,"",@
	.hidden	__ctzti2                        # -- Begin function __ctzti2
	.globl	__ctzti2
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
	.functype	__ctzti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.145
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	local.get	5
	local.get	8
	i64.store	__llvm_gcov_ctr.145
	local.get	4
	local.get	1
	i64.store	40
	local.get	4
	local.get	0
	i64.store	32
	local.get	5
	i64.load	.L__profc___ctzti2
	local.set	9
	local.get	9
	local.get	7
	i64.add 
	local.set	10
	local.get	5
	local.get	10
	i64.store	.L__profc___ctzti2
	local.get	4
	i64.load	32
	local.set	11
	local.get	4
	i64.load	40
	local.set	12
	local.get	4
	local.get	12
	i64.store	24
	local.get	4
	local.get	11
	i64.store	16
	local.get	4
	i64.load	16
	local.set	13
	i64.const	0
	local.set	14
	local.get	13
	local.get	14
	i64.eq  
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	i32.const	0
	local.set	18
	local.get	18
	local.get	17
	i32.sub 
	local.set	19
	local.get	19
	local.set	20
	local.get	20
	i64.extend_i32_s
	local.set	21
	local.get	4
	local.get	21
	i64.store	8
	local.get	4
	i64.load	24
	local.set	22
	local.get	4
	i64.load	8
	local.set	23
	local.get	22
	local.get	23
	i64.and 
	local.set	24
	local.get	4
	i64.load	16
	local.set	25
	local.get	4
	i64.load	8
	local.set	26
	i64.const	-1
	local.set	27
	local.get	26
	local.get	27
	i64.xor 
	local.set	28
	local.get	25
	local.get	28
	i64.and 
	local.set	29
	local.get	24
	local.get	29
	i64.or  
	local.set	30
	local.get	30
	i64.ctz 
	local.set	31
	local.get	31
	i32.wrap_i64
	local.set	32
	local.get	4
	i64.load	8
	local.set	33
	local.get	33
	i32.wrap_i64
	local.set	34
	i32.const	64
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	local.get	32
	local.get	36
	i32.add 
	local.set	37
	local.get	37
	return
	end_function
                                        # -- End function
	.section	.text.__ffsti2,"",@
	.hidden	__ffsti2                        # -- Begin function __ffsti2
	.globl	__ffsti2
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
	.functype	__ffsti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___ffsti2
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	local.get	5
	local.get	8
	i64.store	.L__profc___ffsti2
	local.get	4
	i64.load	16
	local.set	9
	local.get	4
	i64.load	24
	local.set	10
	local.get	4
	local.get	10
	i64.store	8
	local.get	4
	local.get	9
	i64.store	0
	local.get	4
	i64.load	0
	local.set	11
	i64.const	0
	local.set	12
	local.get	11
	local.get	12
	i64.eq  
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
	br_if   	0                               # 0: down to label446
# %bb.1:
	i32.const	0
	local.set	16
	local.get	16
	i64.load	.L__profc___ffsti2+8
	local.set	17
	i64.const	1
	local.set	18
	local.get	17
	local.get	18
	i64.add 
	local.set	19
	i32.const	0
	local.set	20
	local.get	20
	local.get	19
	i64.store	.L__profc___ffsti2+8
	local.get	4
	i64.load	8
	local.set	21
	i64.const	0
	local.set	22
	local.get	21
	local.get	22
	i64.eq  
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
	br_if   	0                               # 0: down to label447
# %bb.2:
	i32.const	0
	local.set	26
	local.get	26
	i64.load	__llvm_gcov_ctr.146+8
	local.set	27
	i64.const	1
	local.set	28
	local.get	27
	local.get	28
	i64.add 
	local.set	29
	i32.const	0
	local.set	30
	local.get	30
	local.get	29
	i64.store	__llvm_gcov_ctr.146+8
	i32.const	0
	local.set	31
	local.get	31
	i64.load	.L__profc___ffsti2+16
	local.set	32
	i64.const	1
	local.set	33
	local.get	32
	local.get	33
	i64.add 
	local.set	34
	i32.const	0
	local.set	35
	local.get	35
	local.get	34
	i64.store	.L__profc___ffsti2+16
	i32.const	0
	local.set	36
	local.get	4
	local.get	36
	i32.store	44
	br      	2                               # 2: down to label445
.LBB146_3:
	end_block                               # label447:
	i32.const	0
	local.set	37
	local.get	37
	i64.load	__llvm_gcov_ctr.146+16
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	__llvm_gcov_ctr.146+16
	local.get	4
	i64.load	8
	local.set	42
	local.get	42
	i64.ctz 
	local.set	43
	local.get	43
	i32.wrap_i64
	local.set	44
	i32.const	65
	local.set	45
	local.get	44
	local.get	45
	i32.add 
	local.set	46
	local.get	4
	local.get	46
	i32.store	44
	br      	1                               # 1: down to label445
.LBB146_4:
	end_block                               # label446:
	i32.const	0
	local.set	47
	local.get	47
	i64.load	__llvm_gcov_ctr.146
	local.set	48
	i64.const	1
	local.set	49
	local.get	48
	local.get	49
	i64.add 
	local.set	50
	i32.const	0
	local.set	51
	local.get	51
	local.get	50
	i64.store	__llvm_gcov_ctr.146
	local.get	4
	i64.load	0
	local.set	52
	local.get	52
	i64.ctz 
	local.set	53
	local.get	53
	i32.wrap_i64
	local.set	54
	i32.const	1
	local.set	55
	local.get	54
	local.get	55
	i32.add 
	local.set	56
	local.get	4
	local.get	56
	i32.store	44
.LBB146_5:
	end_block                               # label445:
	local.get	4
	i32.load	44
	local.set	57
	local.get	57
	return
	end_function
                                        # -- End function
	.section	.text.__lshrdi3,"",@
	.hidden	__lshrdi3                       # -- Begin function __lshrdi3
	.globl	__lshrdi3
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
	.functype	__lshrdi3 (i64, i32) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___lshrdi3
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___lshrdi3
	i32.const	32
	local.set	10
	local.get	4
	local.get	10
	i32.store	24
	local.get	4
	i64.load	32
	local.set	11
	local.get	4
	local.get	11
	i64.store	16
	local.get	4
	i32.load	28
	local.set	12
	i32.const	32
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	block   	
	block   	
	block   	
	local.get	14
	i32.eqz
	br_if   	0                               # 0: down to label450
# %bb.1:
	i32.const	0
	local.set	15
	local.get	15
	i64.load	__llvm_gcov_ctr.147
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.add 
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	__llvm_gcov_ctr.147
	i32.const	0
	local.set	20
	local.get	20
	i64.load	.L__profc___lshrdi3+8
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	.L__profc___lshrdi3+8
	i32.const	0
	local.set	25
	local.get	4
	local.get	25
	i32.store	12
	local.get	4
	i32.load	20
	local.set	26
	local.get	4
	i32.load	28
	local.set	27
	i32.const	32
	local.set	28
	local.get	27
	local.get	28
	i32.sub 
	local.set	29
	local.get	26
	local.get	29
	i32.shr_u
	local.set	30
	local.get	4
	local.get	30
	i32.store	8
	br      	1                               # 1: down to label449
.LBB147_2:
	end_block                               # label450:
	local.get	4
	i32.load	28
	local.set	31
	block   	
	local.get	31
	br_if   	0                               # 0: down to label451
# %bb.3:
	i32.const	0
	local.set	32
	local.get	32
	i64.load	__llvm_gcov_ctr.147+8
	local.set	33
	i64.const	1
	local.set	34
	local.get	33
	local.get	34
	i64.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	36
	local.get	35
	i64.store	__llvm_gcov_ctr.147+8
	i32.const	0
	local.set	37
	local.get	37
	i64.load	.L__profc___lshrdi3+16
	local.set	38
	i64.const	1
	local.set	39
	local.get	38
	local.get	39
	i64.add 
	local.set	40
	i32.const	0
	local.set	41
	local.get	41
	local.get	40
	i64.store	.L__profc___lshrdi3+16
	local.get	4
	i64.load	32
	local.set	42
	local.get	4
	local.get	42
	i64.store	40
	br      	2                               # 2: down to label448
.LBB147_4:
	end_block                               # label451:
	i32.const	0
	local.set	43
	local.get	43
	i64.load	__llvm_gcov_ctr.147+16
	local.set	44
	i64.const	1
	local.set	45
	local.get	44
	local.get	45
	i64.add 
	local.set	46
	i32.const	0
	local.set	47
	local.get	47
	local.get	46
	i64.store	__llvm_gcov_ctr.147+16
	local.get	4
	i32.load	20
	local.set	48
	local.get	4
	i32.load	28
	local.set	49
	local.get	48
	local.get	49
	i32.shr_u
	local.set	50
	local.get	4
	local.get	50
	i32.store	12
	local.get	4
	i32.load	20
	local.set	51
	local.get	4
	i32.load	28
	local.set	52
	i32.const	32
	local.set	53
	local.get	53
	local.get	52
	i32.sub 
	local.set	54
	local.get	51
	local.get	54
	i32.shl 
	local.set	55
	local.get	4
	i32.load	16
	local.set	56
	local.get	4
	i32.load	28
	local.set	57
	local.get	56
	local.get	57
	i32.shr_u
	local.set	58
	local.get	55
	local.get	58
	i32.or  
	local.set	59
	local.get	4
	local.get	59
	i32.store	8
.LBB147_5:
	end_block                               # label449:
	local.get	4
	i64.load	8
	local.set	60
	local.get	4
	local.get	60
	i64.store	40
.LBB147_6:
	end_block                               # label448:
	local.get	4
	i64.load	40
	local.set	61
	local.get	61
	return
	end_function
                                        # -- End function
	.section	.text.__lshrti3,"",@
	.hidden	__lshrti3                       # -- Begin function __lshrti3
	.globl	__lshrti3
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
	.functype	__lshrti3 (i32, i64, i64, i32) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64
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
	i32.const	0
	local.set	7
	local.get	7
	i64.load	.L__profc___lshrti3
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.add 
	local.set	10
	local.get	7
	local.get	10
	i64.store	.L__profc___lshrti3
	i32.const	64
	local.set	11
	local.get	6
	local.get	11
	i32.store	40
	local.get	6
	i64.load	48
	local.set	12
	local.get	6
	i64.load	56
	local.set	13
	local.get	6
	local.get	13
	i64.store	24
	local.get	6
	local.get	12
	i64.store	16
	local.get	6
	i32.load	44
	local.set	14
	i32.const	64
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	block   	
	block   	
	block   	
	local.get	16
	i32.eqz
	br_if   	0                               # 0: down to label454
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.148
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.148
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc___lshrti3+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc___lshrti3+8
	i64.const	0
	local.set	27
	local.get	6
	local.get	27
	i64.store	8
	local.get	6
	i64.load	24
	local.set	28
	local.get	6
	i32.load	44
	local.set	29
	i32.const	64
	local.set	30
	local.get	29
	local.get	30
	i32.sub 
	local.set	31
	local.get	31
	local.set	32
	local.get	32
	i64.extend_i32_u
	local.set	33
	local.get	28
	local.get	33
	i64.shr_u
	local.set	34
	local.get	6
	local.get	34
	i64.store	0
	br      	1                               # 1: down to label453
.LBB148_2:
	end_block                               # label454:
	local.get	6
	i32.load	44
	local.set	35
	block   	
	local.get	35
	br_if   	0                               # 0: down to label455
# %bb.3:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.148+8
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	local.get	36
	local.get	39
	i64.store	__llvm_gcov_ctr.148+8
	local.get	36
	i64.load	.L__profc___lshrti3+16
	local.set	40
	local.get	40
	local.get	38
	i64.add 
	local.set	41
	local.get	36
	local.get	41
	i64.store	.L__profc___lshrti3+16
	local.get	6
	i64.load	48
	local.set	42
	local.get	6
	i64.load	56
	local.set	43
	local.get	6
	local.get	43
	i64.store	72
	local.get	6
	local.get	42
	i64.store	64
	br      	2                               # 2: down to label452
.LBB148_4:
	end_block                               # label455:
	i32.const	0
	local.set	44
	local.get	44
	i64.load	__llvm_gcov_ctr.148+16
	local.set	45
	i64.const	1
	local.set	46
	local.get	45
	local.get	46
	i64.add 
	local.set	47
	i32.const	0
	local.set	48
	local.get	48
	local.get	47
	i64.store	__llvm_gcov_ctr.148+16
	local.get	6
	i64.load	24
	local.set	49
	local.get	6
	i32.load	44
	local.set	50
	local.get	50
	local.set	51
	local.get	51
	i64.extend_i32_u
	local.set	52
	local.get	49
	local.get	52
	i64.shr_u
	local.set	53
	local.get	6
	local.get	53
	i64.store	8
	local.get	6
	i64.load	24
	local.set	54
	local.get	6
	i32.load	44
	local.set	55
	i32.const	64
	local.set	56
	local.get	56
	local.get	55
	i32.sub 
	local.set	57
	local.get	57
	local.set	58
	local.get	58
	i64.extend_i32_u
	local.set	59
	local.get	54
	local.get	59
	i64.shl 
	local.set	60
	local.get	6
	i64.load	16
	local.set	61
	local.get	6
	i32.load	44
	local.set	62
	local.get	62
	local.set	63
	local.get	63
	i64.extend_i32_u
	local.set	64
	local.get	61
	local.get	64
	i64.shr_u
	local.set	65
	local.get	60
	local.get	65
	i64.or  
	local.set	66
	local.get	6
	local.get	66
	i64.store	0
.LBB148_5:
	end_block                               # label453:
	local.get	6
	i64.load	0
	local.set	67
	local.get	6
	i64.load	8
	local.set	68
	local.get	6
	local.get	68
	i64.store	72
	local.get	6
	local.get	67
	i64.store	64
.LBB148_6:
	end_block                               # label452:
	local.get	6
	i64.load	64
	local.set	69
	local.get	6
	i64.load	72
	local.set	70
	local.get	0
	local.get	70
	i64.store	8
	local.get	0
	local.get	69
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.149
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.149
	local.get	4
	local.get	0
	i32.store	28
	local.get	4
	local.get	1
	i32.store	24
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___muldsi3
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___muldsi3
	i32.const	16
	local.set	15
	local.get	4
	local.get	15
	i32.store	12
	i32.const	65535
	local.set	16
	local.get	4
	local.get	16
	i32.store	8
	local.get	4
	i32.load	28
	local.set	17
	i32.const	65535
	local.set	18
	local.get	17
	local.get	18
	i32.and 
	local.set	19
	local.get	4
	i32.load	24
	local.set	20
	i32.const	65535
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	19
	local.get	22
	i32.mul 
	local.set	23
	local.get	4
	local.get	23
	i32.store	16
	local.get	4
	i32.load	16
	local.set	24
	i32.const	16
	local.set	25
	local.get	24
	local.get	25
	i32.shr_u
	local.set	26
	local.get	4
	local.get	26
	i32.store	4
	local.get	4
	i32.load	16
	local.set	27
	i32.const	65535
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	4
	local.get	29
	i32.store	16
	local.get	4
	i32.load	28
	local.set	30
	i32.const	16
	local.set	31
	local.get	30
	local.get	31
	i32.shr_u
	local.set	32
	local.get	4
	i32.load	24
	local.set	33
	i32.const	65535
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	32
	local.get	35
	i32.mul 
	local.set	36
	local.get	4
	i32.load	4
	local.set	37
	local.get	37
	local.get	36
	i32.add 
	local.set	38
	local.get	4
	local.get	38
	i32.store	4
	local.get	4
	i32.load	4
	local.set	39
	i32.const	65535
	local.set	40
	local.get	39
	local.get	40
	i32.and 
	local.set	41
	i32.const	16
	local.set	42
	local.get	41
	local.get	42
	i32.shl 
	local.set	43
	local.get	4
	i32.load	16
	local.set	44
	local.get	44
	local.get	43
	i32.add 
	local.set	45
	local.get	4
	local.get	45
	i32.store	16
	local.get	4
	i32.load	4
	local.set	46
	i32.const	16
	local.set	47
	local.get	46
	local.get	47
	i32.shr_u
	local.set	48
	local.get	4
	local.get	48
	i32.store	20
	local.get	4
	i32.load	16
	local.set	49
	i32.const	16
	local.set	50
	local.get	49
	local.get	50
	i32.shr_u
	local.set	51
	local.get	4
	local.get	51
	i32.store	4
	local.get	4
	i32.load	16
	local.set	52
	i32.const	65535
	local.set	53
	local.get	52
	local.get	53
	i32.and 
	local.set	54
	local.get	4
	local.get	54
	i32.store	16
	local.get	4
	i32.load	24
	local.set	55
	i32.const	16
	local.set	56
	local.get	55
	local.get	56
	i32.shr_u
	local.set	57
	local.get	4
	i32.load	28
	local.set	58
	i32.const	65535
	local.set	59
	local.get	58
	local.get	59
	i32.and 
	local.set	60
	local.get	57
	local.get	60
	i32.mul 
	local.set	61
	local.get	4
	i32.load	4
	local.set	62
	local.get	62
	local.get	61
	i32.add 
	local.set	63
	local.get	4
	local.get	63
	i32.store	4
	local.get	4
	i32.load	4
	local.set	64
	i32.const	65535
	local.set	65
	local.get	64
	local.get	65
	i32.and 
	local.set	66
	i32.const	16
	local.set	67
	local.get	66
	local.get	67
	i32.shl 
	local.set	68
	local.get	4
	i32.load	16
	local.set	69
	local.get	69
	local.get	68
	i32.add 
	local.set	70
	local.get	4
	local.get	70
	i32.store	16
	local.get	4
	i32.load	4
	local.set	71
	i32.const	16
	local.set	72
	local.get	71
	local.get	72
	i32.shr_u
	local.set	73
	local.get	4
	i32.load	20
	local.set	74
	local.get	74
	local.get	73
	i32.add 
	local.set	75
	local.get	4
	local.get	75
	i32.store	20
	local.get	4
	i32.load	28
	local.set	76
	i32.const	16
	local.set	77
	local.get	76
	local.get	77
	i32.shr_u
	local.set	78
	local.get	4
	i32.load	24
	local.set	79
	i32.const	16
	local.set	80
	local.get	79
	local.get	80
	i32.shr_u
	local.set	81
	local.get	78
	local.get	81
	i32.mul 
	local.set	82
	local.get	4
	i32.load	20
	local.set	83
	local.get	83
	local.get	82
	i32.add 
	local.set	84
	local.get	4
	local.get	84
	i32.store	20
	local.get	4
	i64.load	16
	local.set	85
	local.get	85
	return
	end_function
                                        # -- End function
	.section	.text.__muldi3_compiler_rt,"",@
	.hidden	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.functype	__muldi3_compiler_rt (i64, i64) -> (i64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.150
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.150
	local.get	4
	local.get	0
	i64.store	40
	local.get	4
	local.get	1
	i64.store	32
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___muldi3_compiler_rt
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___muldi3_compiler_rt
	local.get	4
	i64.load	40
	local.set	15
	local.get	4
	local.get	15
	i64.store	24
	local.get	4
	i64.load	32
	local.set	16
	local.get	4
	local.get	16
	i64.store	16
	local.get	4
	i32.load	24
	local.set	17
	local.get	4
	i32.load	16
	local.set	18
	local.get	17
	local.get	18
	call	__muldsi3
	local.set	19
	local.get	4
	local.get	19
	i64.store	8
	local.get	4
	i32.load	28
	local.set	20
	local.get	4
	i32.load	16
	local.set	21
	local.get	20
	local.get	21
	i32.mul 
	local.set	22
	local.get	4
	i32.load	24
	local.set	23
	local.get	4
	i32.load	20
	local.set	24
	local.get	23
	local.get	24
	i32.mul 
	local.set	25
	local.get	22
	local.get	25
	i32.add 
	local.set	26
	local.get	4
	i32.load	12
	local.set	27
	local.get	27
	local.get	26
	i32.add 
	local.set	28
	local.get	4
	local.get	28
	i32.store	12
	local.get	4
	i64.load	8
	local.set	29
	i32.const	48
	local.set	30
	local.get	4
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	global.set	__stack_pointer
	local.get	29
	return
	end_function
                                        # -- End function
	.section	.text.__mulddi3,"",@
	.hidden	__mulddi3                       # -- Begin function __mulddi3
	.globl	__mulddi3
	.type	__mulddi3,@function
__mulddi3:                              # @__mulddi3
	.functype	__mulddi3 (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	64
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.151
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	local.get	6
	local.get	9
	i64.store	__llvm_gcov_ctr.151
	local.get	5
	local.get	1
	i64.store	56
	local.get	5
	local.get	2
	i64.store	48
	local.get	6
	i64.load	.L__profc___mulddi3
	local.set	10
	local.get	10
	local.get	8
	i64.add 
	local.set	11
	local.get	6
	local.get	11
	i64.store	.L__profc___mulddi3
	i32.const	32
	local.set	12
	local.get	5
	local.get	12
	i32.store	28
	i64.const	4294967295
	local.set	13
	local.get	5
	local.get	13
	i64.store	16
	local.get	5
	i64.load32_u	56
	local.set	14
	local.get	5
	i64.load32_u	48
	local.set	15
	local.get	14
	local.get	15
	i64.mul 
	local.set	16
	local.get	5
	local.get	16
	i64.store	32
	local.get	5
	i64.load32_u	36
	local.set	17
	local.get	5
	local.get	17
	i64.store	8
	local.get	5
	i64.load32_u	32
	local.set	18
	local.get	5
	local.get	18
	i64.store	32
	local.get	5
	i64.load32_u	60
	local.set	19
	local.get	5
	i64.load32_u	48
	local.set	20
	local.get	19
	local.get	20
	i64.mul 
	local.set	21
	local.get	5
	i64.load	8
	local.set	22
	local.get	22
	local.get	21
	i64.add 
	local.set	23
	local.get	5
	local.get	23
	i64.store	8
	local.get	5
	i64.load	8
	local.set	24
	i64.const	32
	local.set	25
	local.get	24
	local.get	25
	i64.shl 
	local.set	26
	local.get	5
	i64.load	32
	local.set	27
	local.get	27
	local.get	26
	i64.add 
	local.set	28
	local.get	5
	local.get	28
	i64.store	32
	local.get	5
	i64.load32_u	12
	local.set	29
	local.get	5
	local.get	29
	i64.store	40
	local.get	5
	i64.load32_u	36
	local.set	30
	local.get	5
	local.get	30
	i64.store	8
	local.get	5
	i64.load32_u	32
	local.set	31
	local.get	5
	local.get	31
	i64.store	32
	local.get	5
	i64.load32_u	52
	local.set	32
	local.get	5
	i64.load32_u	56
	local.set	33
	local.get	32
	local.get	33
	i64.mul 
	local.set	34
	local.get	5
	i64.load	8
	local.set	35
	local.get	35
	local.get	34
	i64.add 
	local.set	36
	local.get	5
	local.get	36
	i64.store	8
	local.get	5
	i64.load	8
	local.set	37
	local.get	37
	local.get	25
	i64.shl 
	local.set	38
	local.get	5
	i64.load	32
	local.set	39
	local.get	39
	local.get	38
	i64.add 
	local.set	40
	local.get	5
	local.get	40
	i64.store	32
	local.get	5
	i64.load32_u	12
	local.set	41
	local.get	5
	i64.load	40
	local.set	42
	local.get	42
	local.get	41
	i64.add 
	local.set	43
	local.get	5
	local.get	43
	i64.store	40
	local.get	5
	i64.load32_u	60
	local.set	44
	local.get	5
	i64.load32_u	52
	local.set	45
	local.get	44
	local.get	45
	i64.mul 
	local.set	46
	local.get	5
	i64.load	40
	local.set	47
	local.get	47
	local.get	46
	i64.add 
	local.set	48
	local.get	5
	local.get	48
	i64.store	40
	local.get	5
	i64.load	32
	local.set	49
	local.get	5
	i64.load	40
	local.set	50
	local.get	0
	local.get	50
	i64.store	8
	local.get	0
	local.get	49
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32
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
	i32.const	0
	local.set	8
	local.get	8
	i64.load	__llvm_gcov_ctr.152
	local.set	9
	i64.const	1
	local.set	10
	local.get	9
	local.get	10
	i64.add 
	local.set	11
	local.get	8
	local.get	11
	i64.store	__llvm_gcov_ctr.152
	local.get	7
	local.get	2
	i64.store	88
	local.get	7
	local.get	1
	i64.store	80
	local.get	7
	local.get	4
	i64.store	72
	local.get	7
	local.get	3
	i64.store	64
	local.get	8
	i64.load	.L__profc___multi3
	local.set	12
	local.get	12
	local.get	10
	i64.add 
	local.set	13
	local.get	8
	local.get	13
	i64.store	.L__profc___multi3
	local.get	7
	i64.load	80
	local.set	14
	local.get	7
	i64.load	88
	local.set	15
	local.get	7
	local.get	15
	i64.store	56
	local.get	7
	local.get	14
	i64.store	48
	local.get	7
	i64.load	64
	local.set	16
	local.get	7
	i64.load	72
	local.set	17
	local.get	7
	local.get	17
	i64.store	40
	local.get	7
	local.get	16
	i64.store	32
	local.get	7
	i64.load	48
	local.set	18
	local.get	7
	i64.load	32
	local.set	19
	local.get	7
	local.get	18
	local.get	19
	call	__mulddi3
	i32.const	8
	local.set	20
	local.get	7
	local.get	20
	i32.add 
	local.set	21
	local.get	21
	i64.load	0
	local.set	22
	local.get	7
	i64.load	0
	local.set	23
	local.get	7
	local.get	22
	i64.store	24
	local.get	7
	local.get	23
	i64.store	16
	local.get	7
	i64.load	56
	local.set	24
	local.get	7
	i64.load	32
	local.set	25
	local.get	24
	local.get	25
	i64.mul 
	local.set	26
	local.get	7
	i64.load	48
	local.set	27
	local.get	7
	i64.load	40
	local.set	28
	local.get	27
	local.get	28
	i64.mul 
	local.set	29
	local.get	26
	local.get	29
	i64.add 
	local.set	30
	local.get	7
	i64.load	24
	local.set	31
	local.get	31
	local.get	30
	i64.add 
	local.set	32
	local.get	7
	local.get	32
	i64.store	24
	local.get	7
	i64.load	16
	local.set	33
	local.get	7
	i64.load	24
	local.set	34
	local.get	0
	local.get	34
	i64.store	8
	local.get	0
	local.get	33
	i64.store	0
	i32.const	96
	local.set	35
	local.get	7
	local.get	35
	i32.add 
	local.set	36
	local.get	36
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.153
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.153
	local.get	3
	local.get	0
	i64.store	8
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___negdi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___negdi2
	local.get	3
	i64.load	8
	local.set	14
	i64.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.sub 
	local.set	16
	local.get	16
	return
	end_function
                                        # -- End function
	.section	.text.__negti2,"",@
	.hidden	__negti2                        # -- Begin function __negti2
	.globl	__negti2
	.type	__negti2,@function
__negti2:                               # @__negti2
	.functype	__negti2 (i32, i64, i64) -> ()
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	i32.const	0
	local.set	6
	local.get	6
	i64.load	__llvm_gcov_ctr.154
	local.set	7
	i64.const	1
	local.set	8
	local.get	7
	local.get	8
	i64.add 
	local.set	9
	local.get	6
	local.get	9
	i64.store	__llvm_gcov_ctr.154
	local.get	5
	local.get	2
	i64.store	8
	local.get	5
	local.get	1
	i64.store	0
	local.get	6
	i64.load	.L__profc___negti2
	local.set	10
	local.get	10
	local.get	8
	i64.add 
	local.set	11
	local.get	6
	local.get	11
	i64.store	.L__profc___negti2
	local.get	5
	i64.load	8
	local.set	12
	local.get	5
	i64.load	0
	local.set	13
	i64.const	0
	local.set	14
	local.get	13
	local.get	14
	i64.ne  
	local.set	15
	local.get	15
	i64.extend_i32_u
	local.set	16
	local.get	12
	local.get	16
	i64.add 
	local.set	17
	local.get	14
	local.get	17
	i64.sub 
	local.set	18
	local.get	14
	local.get	13
	i64.sub 
	local.set	19
	local.get	0
	local.get	19
	i64.store	0
	local.get	0
	local.get	18
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
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	32
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.155
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.155
	local.get	3
	local.get	0
	i64.store	24
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___paritydi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___paritydi2
	local.get	3
	i64.load	24
	local.set	14
	local.get	3
	local.get	14
	i64.store	16
	local.get	3
	i32.load	20
	local.set	15
	local.get	3
	i32.load	16
	local.set	16
	local.get	15
	local.get	16
	i32.xor 
	local.set	17
	local.get	3
	local.get	17
	i32.store	12
	local.get	3
	i32.load	12
	local.set	18
	i32.const	16
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
	i32.const	8
	local.set	24
	local.get	23
	local.get	24
	i32.shr_u
	local.set	25
	local.get	3
	i32.load	12
	local.set	26
	local.get	26
	local.get	25
	i32.xor 
	local.set	27
	local.get	3
	local.get	27
	i32.store	12
	local.get	3
	i32.load	12
	local.set	28
	i32.const	4
	local.set	29
	local.get	28
	local.get	29
	i32.shr_u
	local.set	30
	local.get	3
	i32.load	12
	local.set	31
	local.get	31
	local.get	30
	i32.xor 
	local.set	32
	local.get	3
	local.get	32
	i32.store	12
	local.get	3
	i32.load	12
	local.set	33
	i32.const	15
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	i32.const	27030
	local.set	36
	local.get	36
	local.get	35
	i32.shr_s
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.and 
	local.set	39
	local.get	39
	return
	end_function
                                        # -- End function
	.section	.text.__parityti2,"",@
	.hidden	__parityti2                     # -- Begin function __parityti2
	.globl	__parityti2
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
	.functype	__parityti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.156
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	local.get	5
	local.get	8
	i64.store	__llvm_gcov_ctr.156
	local.get	4
	local.get	1
	i64.store	40
	local.get	4
	local.get	0
	i64.store	32
	local.get	5
	i64.load	.L__profc___parityti2
	local.set	9
	local.get	9
	local.get	7
	i64.add 
	local.set	10
	local.get	5
	local.get	10
	i64.store	.L__profc___parityti2
	local.get	4
	i64.load	32
	local.set	11
	local.get	4
	i64.load	40
	local.set	12
	local.get	4
	local.get	12
	i64.store	24
	local.get	4
	local.get	11
	i64.store	16
	local.get	4
	i64.load	24
	local.set	13
	local.get	4
	i64.load	16
	local.set	14
	local.get	13
	local.get	14
	i64.xor 
	local.set	15
	local.get	4
	local.get	15
	i64.store	8
	local.get	4
	i32.load	12
	local.set	16
	local.get	4
	i32.load	8
	local.set	17
	local.get	16
	local.get	17
	i32.xor 
	local.set	18
	local.get	4
	local.get	18
	i32.store	4
	local.get	4
	i32.load	4
	local.set	19
	i32.const	16
	local.set	20
	local.get	19
	local.get	20
	i32.shr_u
	local.set	21
	local.get	4
	i32.load	4
	local.set	22
	local.get	22
	local.get	21
	i32.xor 
	local.set	23
	local.get	4
	local.get	23
	i32.store	4
	local.get	4
	i32.load	4
	local.set	24
	i32.const	8
	local.set	25
	local.get	24
	local.get	25
	i32.shr_u
	local.set	26
	local.get	4
	i32.load	4
	local.set	27
	local.get	27
	local.get	26
	i32.xor 
	local.set	28
	local.get	4
	local.get	28
	i32.store	4
	local.get	4
	i32.load	4
	local.set	29
	i32.const	4
	local.set	30
	local.get	29
	local.get	30
	i32.shr_u
	local.set	31
	local.get	4
	i32.load	4
	local.set	32
	local.get	32
	local.get	31
	i32.xor 
	local.set	33
	local.get	4
	local.get	33
	i32.store	4
	local.get	4
	i32.load	4
	local.set	34
	i32.const	15
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	i32.const	27030
	local.set	37
	local.get	37
	local.get	36
	i32.shr_s
	local.set	38
	i32.const	1
	local.set	39
	local.get	38
	local.get	39
	i32.and 
	local.set	40
	local.get	40
	return
	end_function
                                        # -- End function
	.section	.text.__paritysi2,"",@
	.hidden	__paritysi2                     # -- Begin function __paritysi2
	.globl	__paritysi2
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
	.functype	__paritysi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.157
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.157
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___paritysi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___paritysi2
	local.get	3
	i32.load	12
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	local.get	3
	i32.load	8
	local.set	15
	i32.const	16
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
	i32.const	8
	local.set	21
	local.get	20
	local.get	21
	i32.shr_u
	local.set	22
	local.get	3
	i32.load	8
	local.set	23
	local.get	23
	local.get	22
	i32.xor 
	local.set	24
	local.get	3
	local.get	24
	i32.store	8
	local.get	3
	i32.load	8
	local.set	25
	i32.const	4
	local.set	26
	local.get	25
	local.get	26
	i32.shr_u
	local.set	27
	local.get	3
	i32.load	8
	local.set	28
	local.get	28
	local.get	27
	i32.xor 
	local.set	29
	local.get	3
	local.get	29
	i32.store	8
	local.get	3
	i32.load	8
	local.set	30
	i32.const	15
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	i32.const	27030
	local.set	33
	local.get	33
	local.get	32
	i32.shr_s
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	local.get	36
	return
	end_function
                                        # -- End function
	.section	.text.__popcountdi2,"",@
	.hidden	__popcountdi2                   # -- Begin function __popcountdi2
	.globl	__popcountdi2
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
	.functype	__popcountdi2 (i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	32
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.158
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.158
	local.get	3
	local.get	0
	i64.store	24
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___popcountdi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___popcountdi2
	local.get	3
	i64.load	24
	local.set	14
	local.get	3
	local.get	14
	i64.store	16
	local.get	3
	i64.load	16
	local.set	15
	local.get	3
	i64.load	16
	local.set	16
	i64.const	1
	local.set	17
	local.get	16
	local.get	17
	i64.shr_u
	local.set	18
	i64.const	6148914691236517205
	local.set	19
	local.get	18
	local.get	19
	i64.and 
	local.set	20
	local.get	15
	local.get	20
	i64.sub 
	local.set	21
	local.get	3
	local.get	21
	i64.store	16
	local.get	3
	i64.load	16
	local.set	22
	i64.const	2
	local.set	23
	local.get	22
	local.get	23
	i64.shr_u
	local.set	24
	i64.const	3689348814741910323
	local.set	25
	local.get	24
	local.get	25
	i64.and 
	local.set	26
	local.get	3
	i64.load	16
	local.set	27
	i64.const	3689348814741910323
	local.set	28
	local.get	27
	local.get	28
	i64.and 
	local.set	29
	local.get	26
	local.get	29
	i64.add 
	local.set	30
	local.get	3
	local.get	30
	i64.store	16
	local.get	3
	i64.load	16
	local.set	31
	local.get	3
	i64.load	16
	local.set	32
	i64.const	4
	local.set	33
	local.get	32
	local.get	33
	i64.shr_u
	local.set	34
	local.get	31
	local.get	34
	i64.add 
	local.set	35
	i64.const	1085102592571150095
	local.set	36
	local.get	35
	local.get	36
	i64.and 
	local.set	37
	local.get	3
	local.get	37
	i64.store	16
	local.get	3
	i64.load	16
	local.set	38
	local.get	3
	i64.load	16
	local.set	39
	i64.const	32
	local.set	40
	local.get	39
	local.get	40
	i64.shr_u
	local.set	41
	local.get	38
	local.get	41
	i64.add 
	local.set	42
	local.get	42
	i32.wrap_i64
	local.set	43
	local.get	3
	local.get	43
	i32.store	12
	local.get	3
	i32.load	12
	local.set	44
	local.get	3
	i32.load	12
	local.set	45
	i32.const	16
	local.set	46
	local.get	45
	local.get	46
	i32.shr_u
	local.set	47
	local.get	44
	local.get	47
	i32.add 
	local.set	48
	local.get	3
	local.get	48
	i32.store	12
	local.get	3
	i32.load	12
	local.set	49
	local.get	3
	i32.load	12
	local.set	50
	i32.const	8
	local.set	51
	local.get	50
	local.get	51
	i32.shr_u
	local.set	52
	local.get	49
	local.get	52
	i32.add 
	local.set	53
	i32.const	127
	local.set	54
	local.get	53
	local.get	54
	i32.and 
	local.set	55
	local.get	55
	return
	end_function
                                        # -- End function
	.section	.text.__popcountsi2,"",@
	.hidden	__popcountsi2                   # -- Begin function __popcountsi2
	.globl	__popcountsi2
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
	.functype	__popcountsi2 (i32) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	i32.const	0
	local.set	4
	local.get	4
	i64.load	__llvm_gcov_ctr.159
	local.set	5
	i64.const	1
	local.set	6
	local.get	5
	local.get	6
	i64.add 
	local.set	7
	i32.const	0
	local.set	8
	local.get	8
	local.get	7
	i64.store	__llvm_gcov_ctr.159
	local.get	3
	local.get	0
	i32.store	12
	i32.const	0
	local.set	9
	local.get	9
	i64.load	.L__profc___popcountsi2
	local.set	10
	i64.const	1
	local.set	11
	local.get	10
	local.get	11
	i64.add 
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	.L__profc___popcountsi2
	local.get	3
	i32.load	12
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	local.get	3
	i32.load	8
	local.set	15
	local.get	3
	i32.load	8
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.shr_u
	local.set	18
	i32.const	1431655765
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	local.get	15
	local.get	20
	i32.sub 
	local.set	21
	local.get	3
	local.get	21
	i32.store	8
	local.get	3
	i32.load	8
	local.set	22
	i32.const	2
	local.set	23
	local.get	22
	local.get	23
	i32.shr_u
	local.set	24
	i32.const	858993459
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	local.get	3
	i32.load	8
	local.set	27
	i32.const	858993459
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	26
	local.get	29
	i32.add 
	local.set	30
	local.get	3
	local.get	30
	i32.store	8
	local.get	3
	i32.load	8
	local.set	31
	local.get	3
	i32.load	8
	local.set	32
	i32.const	4
	local.set	33
	local.get	32
	local.get	33
	i32.shr_u
	local.set	34
	local.get	31
	local.get	34
	i32.add 
	local.set	35
	i32.const	252645135
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	local.get	3
	local.get	37
	i32.store	8
	local.get	3
	i32.load	8
	local.set	38
	local.get	3
	i32.load	8
	local.set	39
	i32.const	16
	local.set	40
	local.get	39
	local.get	40
	i32.shr_u
	local.set	41
	local.get	38
	local.get	41
	i32.add 
	local.set	42
	local.get	3
	local.get	42
	i32.store	8
	local.get	3
	i32.load	8
	local.set	43
	local.get	3
	i32.load	8
	local.set	44
	i32.const	8
	local.set	45
	local.get	44
	local.get	45
	i32.shr_u
	local.set	46
	local.get	43
	local.get	46
	i32.add 
	local.set	47
	i32.const	63
	local.set	48
	local.get	47
	local.get	48
	i32.and 
	local.set	49
	local.get	49
	return
	end_function
                                        # -- End function
	.section	.text.__popcountti2,"",@
	.hidden	__popcountti2                   # -- Begin function __popcountti2
	.globl	__popcountti2
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
	.functype	__popcountti2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.160
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	local.get	5
	local.get	8
	i64.store	__llvm_gcov_ctr.160
	local.get	4
	local.get	1
	i64.store	40
	local.get	4
	local.get	0
	i64.store	32
	local.get	5
	i64.load	.L__profc___popcountti2
	local.set	9
	local.get	9
	local.get	7
	i64.add 
	local.set	10
	local.get	5
	local.get	10
	i64.store	.L__profc___popcountti2
	local.get	4
	i64.load	32
	local.set	11
	local.get	4
	i64.load	40
	local.set	12
	local.get	4
	local.get	12
	i64.store	24
	local.get	4
	local.get	11
	i64.store	16
	local.get	4
	i64.load	16
	local.set	13
	local.get	4
	i64.load	24
	local.set	14
	local.get	14
	local.get	7
	i64.shr_u
	local.set	15
	local.get	13
	local.get	7
	i64.shr_u
	local.set	16
	i64.const	6148914691236517205
	local.set	17
	local.get	16
	local.get	17
	i64.and 
	local.set	18
	local.get	15
	local.get	17
	i64.and 
	local.set	19
	local.get	14
	local.get	19
	i64.sub 
	local.set	20
	local.get	13
	local.get	18
	i64.lt_u
	local.set	21
	local.get	21
	i64.extend_i32_u
	local.set	22
	local.get	20
	local.get	22
	i64.sub 
	local.set	23
	local.get	13
	local.get	18
	i64.sub 
	local.set	24
	local.get	4
	local.get	24
	i64.store	16
	local.get	4
	local.get	23
	i64.store	24
	local.get	4
	i64.load	16
	local.set	25
	local.get	4
	i64.load	24
	local.set	26
	i64.const	2
	local.set	27
	local.get	26
	local.get	27
	i64.shr_u
	local.set	28
	local.get	25
	local.get	27
	i64.shr_u
	local.set	29
	i64.const	3689348814741910323
	local.set	30
	local.get	29
	local.get	30
	i64.and 
	local.set	31
	local.get	28
	local.get	30
	i64.and 
	local.set	32
	local.get	25
	local.get	30
	i64.and 
	local.set	33
	local.get	26
	local.get	30
	i64.and 
	local.set	34
	local.get	32
	local.get	34
	i64.add 
	local.set	35
	local.get	31
	local.get	33
	i64.add 
	local.set	36
	local.get	36
	local.get	31
	i64.lt_u
	local.set	37
	local.get	37
	i64.extend_i32_u
	local.set	38
	local.get	35
	local.get	38
	i64.add 
	local.set	39
	local.get	4
	local.get	36
	i64.store	16
	local.get	4
	local.get	39
	i64.store	24
	local.get	4
	i64.load	16
	local.set	40
	local.get	4
	i64.load	24
	local.set	41
	i64.const	60
	local.set	42
	local.get	41
	local.get	42
	i64.shl 
	local.set	43
	i64.const	4
	local.set	44
	local.get	40
	local.get	44
	i64.shr_u
	local.set	45
	local.get	45
	local.get	43
	i64.or  
	local.set	46
	local.get	41
	local.get	44
	i64.shr_u
	local.set	47
	local.get	40
	local.get	46
	i64.add 
	local.set	48
	local.get	48
	local.get	40
	i64.lt_u
	local.set	49
	local.get	49
	i64.extend_i32_u
	local.set	50
	local.get	41
	local.get	47
	i64.add 
	local.set	51
	local.get	51
	local.get	50
	i64.add 
	local.set	52
	i64.const	1085102592571150095
	local.set	53
	local.get	52
	local.get	53
	i64.and 
	local.set	54
	local.get	48
	local.get	53
	i64.and 
	local.set	55
	local.get	4
	local.get	55
	i64.store	16
	local.get	4
	local.get	54
	i64.store	24
	local.get	4
	i64.load	24
	local.set	56
	local.get	4
	i64.load	16
	local.set	57
	local.get	57
	local.get	56
	i64.add 
	local.set	58
	local.get	4
	local.get	58
	i64.store	8
	local.get	4
	i64.load	8
	local.set	59
	local.get	4
	i64.load	8
	local.set	60
	i64.const	32
	local.set	61
	local.get	60
	local.get	61
	i64.shr_u
	local.set	62
	local.get	59
	local.get	62
	i64.add 
	local.set	63
	local.get	63
	i32.wrap_i64
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
	i32.const	16
	local.set	67
	local.get	66
	local.get	67
	i32.shr_u
	local.set	68
	local.get	65
	local.get	68
	i32.add 
	local.set	69
	local.get	4
	local.get	69
	i32.store	4
	local.get	4
	i32.load	4
	local.set	70
	local.get	4
	i32.load	4
	local.set	71
	i32.const	8
	local.set	72
	local.get	71
	local.get	72
	i32.shr_u
	local.set	73
	local.get	70
	local.get	73
	i32.add 
	local.set	74
	i32.const	255
	local.set	75
	local.get	74
	local.get	75
	i32.and 
	local.set	76
	local.get	76
	return
	end_function
                                        # -- End function
	.section	.text.__powidf2,"",@
	.hidden	__powidf2                       # -- Begin function __powidf2
	.globl	__powidf2
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
	.functype	__powidf2 (f64, i32) -> (f64)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, f64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f64, f64, f64, f64, i32, i64, i64, i64, i32, f64, f64
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
	local.get	5
	i64.load	.L__profc___powidf2
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___powidf2
	local.get	4
	i32.load	20
	local.set	10
	i32.const	0
	local.set	11
	local.get	10
	local.get	11
	i32.lt_s
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	local.get	4
	local.get	14
	i32.store	16
	f64.const	0x1p0
	local.set	15
	local.get	4
	local.get	15
	f64.store	8
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label456:
	i32.const	0
	local.set	16
	local.get	16
	i64.load	.L__profc___powidf2+8
	local.set	17
	i64.const	1
	local.set	18
	local.get	17
	local.get	18
	i64.add 
	local.set	19
	i32.const	0
	local.set	20
	local.get	20
	local.get	19
	i64.store	.L__profc___powidf2+8
	local.get	4
	i32.load	20
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
	br_if   	0                               # 0: down to label457
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
	i32.const	0
	local.set	24
	local.get	24
	i64.load	__llvm_gcov_ctr.161
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	i32.const	0
	local.set	28
	local.get	28
	local.get	27
	i64.store	__llvm_gcov_ctr.161
	i32.const	0
	local.set	29
	local.get	29
	i64.load	.L__profc___powidf2+16
	local.set	30
	i64.const	1
	local.set	31
	local.get	30
	local.get	31
	i64.add 
	local.set	32
	i32.const	0
	local.set	33
	local.get	33
	local.get	32
	i64.store	.L__profc___powidf2+16
	local.get	4
	f64.load	24
	local.set	34
	local.get	4
	f64.load	8
	local.set	35
	local.get	35
	local.get	34
	f64.mul 
	local.set	36
	local.get	4
	local.get	36
	f64.store	8
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	end_block                               # label457:
	local.get	4
	i32.load	20
	local.set	37
	i32.const	2
	local.set	38
	local.get	37
	local.get	38
	i32.div_s
	local.set	39
	local.get	4
	local.get	39
	i32.store	20
	local.get	4
	i32.load	20
	local.set	40
	block   	
	block   	
	local.get	40
	br_if   	0                               # 0: down to label459
# %bb.4:
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc___powidf2+24
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc___powidf2+24
	br      	1                               # 1: down to label458
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	end_block                               # label459:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.161+8
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.161+8
	local.get	4
	f64.load	24
	local.set	51
	local.get	4
	f64.load	24
	local.set	52
	local.get	52
	local.get	51
	f64.mul 
	local.set	53
	local.get	4
	local.get	53
	f64.store	24
	br      	1                               # 1: up to label456
.LBB161_6:
	end_block                               # label458:
	end_loop
	local.get	4
	i32.load	16
	local.set	54
	block   	
	block   	
	local.get	54
	i32.eqz
	br_if   	0                               # 0: down to label461
# %bb.7:
	i32.const	0
	local.set	55
	local.get	55
	i64.load	__llvm_gcov_ctr.161+16
	local.set	56
	i64.const	1
	local.set	57
	local.get	56
	local.get	57
	i64.add 
	local.set	58
	i32.const	0
	local.set	59
	local.get	59
	local.get	58
	i64.store	__llvm_gcov_ctr.161+16
	i32.const	0
	local.set	60
	local.get	60
	i64.load	.L__profc___powidf2+32
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc___powidf2+32
	local.get	4
	f64.load	8
	local.set	65
	f64.const	0x1p0
	local.set	66
	local.get	66
	local.get	65
	f64.div 
	local.set	67
	local.get	67
	local.set	68
	br      	1                               # 1: down to label460
.LBB161_8:
	end_block                               # label461:
	i32.const	0
	local.set	69
	local.get	69
	i64.load	__llvm_gcov_ctr.161+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.161+24
	local.get	4
	f64.load	8
	local.set	74
	local.get	74
	local.set	68
.LBB161_9:
	end_block                               # label460:
	local.get	68
	local.set	75
	local.get	75
	return
	end_function
                                        # -- End function
	.section	.text.__powisf2,"",@
	.hidden	__powisf2                       # -- Begin function __powisf2
	.globl	__powisf2
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
	.functype	__powisf2 (f32, i32) -> (f32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, f32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, f32, f32, f32, f32, i32, i64, i64, i64, i32, f32, f32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___powisf2
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___powisf2
	local.get	4
	i32.load	8
	local.set	10
	i32.const	0
	local.set	11
	local.get	10
	local.get	11
	i32.lt_s
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.and 
	local.set	14
	local.get	4
	local.get	14
	i32.store	4
	f32.const	0x1p0
	local.set	15
	local.get	4
	local.get	15
	f32.store	0
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label462:
	i32.const	0
	local.set	16
	local.get	16
	i64.load	.L__profc___powisf2+8
	local.set	17
	i64.const	1
	local.set	18
	local.get	17
	local.get	18
	i64.add 
	local.set	19
	i32.const	0
	local.set	20
	local.get	20
	local.get	19
	i64.store	.L__profc___powisf2+8
	local.get	4
	i32.load	8
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
	br_if   	0                               # 0: down to label463
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
	i32.const	0
	local.set	24
	local.get	24
	i64.load	__llvm_gcov_ctr.162
	local.set	25
	i64.const	1
	local.set	26
	local.get	25
	local.get	26
	i64.add 
	local.set	27
	i32.const	0
	local.set	28
	local.get	28
	local.get	27
	i64.store	__llvm_gcov_ctr.162
	i32.const	0
	local.set	29
	local.get	29
	i64.load	.L__profc___powisf2+16
	local.set	30
	i64.const	1
	local.set	31
	local.get	30
	local.get	31
	i64.add 
	local.set	32
	i32.const	0
	local.set	33
	local.get	33
	local.get	32
	i64.store	.L__profc___powisf2+16
	local.get	4
	f32.load	12
	local.set	34
	local.get	4
	f32.load	0
	local.set	35
	local.get	35
	local.get	34
	f32.mul 
	local.set	36
	local.get	4
	local.get	36
	f32.store	0
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	end_block                               # label463:
	local.get	4
	i32.load	8
	local.set	37
	i32.const	2
	local.set	38
	local.get	37
	local.get	38
	i32.div_s
	local.set	39
	local.get	4
	local.get	39
	i32.store	8
	local.get	4
	i32.load	8
	local.set	40
	block   	
	block   	
	local.get	40
	br_if   	0                               # 0: down to label465
# %bb.4:
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc___powisf2+24
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc___powisf2+24
	br      	1                               # 1: down to label464
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	end_block                               # label465:
	i32.const	0
	local.set	46
	local.get	46
	i64.load	__llvm_gcov_ctr.162+8
	local.set	47
	i64.const	1
	local.set	48
	local.get	47
	local.get	48
	i64.add 
	local.set	49
	i32.const	0
	local.set	50
	local.get	50
	local.get	49
	i64.store	__llvm_gcov_ctr.162+8
	local.get	4
	f32.load	12
	local.set	51
	local.get	4
	f32.load	12
	local.set	52
	local.get	52
	local.get	51
	f32.mul 
	local.set	53
	local.get	4
	local.get	53
	f32.store	12
	br      	1                               # 1: up to label462
.LBB162_6:
	end_block                               # label464:
	end_loop
	local.get	4
	i32.load	4
	local.set	54
	block   	
	block   	
	local.get	54
	i32.eqz
	br_if   	0                               # 0: down to label467
# %bb.7:
	i32.const	0
	local.set	55
	local.get	55
	i64.load	__llvm_gcov_ctr.162+16
	local.set	56
	i64.const	1
	local.set	57
	local.get	56
	local.get	57
	i64.add 
	local.set	58
	i32.const	0
	local.set	59
	local.get	59
	local.get	58
	i64.store	__llvm_gcov_ctr.162+16
	i32.const	0
	local.set	60
	local.get	60
	i64.load	.L__profc___powisf2+32
	local.set	61
	i64.const	1
	local.set	62
	local.get	61
	local.get	62
	i64.add 
	local.set	63
	i32.const	0
	local.set	64
	local.get	64
	local.get	63
	i64.store	.L__profc___powisf2+32
	local.get	4
	f32.load	0
	local.set	65
	f32.const	0x1p0
	local.set	66
	local.get	66
	local.get	65
	f32.div 
	local.set	67
	local.get	67
	local.set	68
	br      	1                               # 1: down to label466
.LBB162_8:
	end_block                               # label467:
	i32.const	0
	local.set	69
	local.get	69
	i64.load	__llvm_gcov_ctr.162+24
	local.set	70
	i64.const	1
	local.set	71
	local.get	70
	local.get	71
	i64.add 
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.162+24
	local.get	4
	f32.load	0
	local.set	74
	local.get	74
	local.set	68
.LBB162_9:
	end_block                               # label466:
	local.get	68
	local.set	75
	local.get	75
	return
	end_function
                                        # -- End function
	.section	.text.__ucmpdi2,"",@
	.hidden	__ucmpdi2                       # -- Begin function __ucmpdi2
	.globl	__ucmpdi2
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
	.functype	__ucmpdi2 (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	.L__profc___ucmpdi2
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	.L__profc___ucmpdi2
	local.get	4
	i64.load	32
	local.set	10
	local.get	4
	local.get	10
	i64.store	16
	local.get	4
	i64.load	24
	local.set	11
	local.get	4
	local.get	11
	i64.store	8
	local.get	4
	i32.load	20
	local.set	12
	local.get	4
	i32.load	12
	local.set	13
	local.get	12
	local.get	13
	i32.lt_u
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
	br_if   	0                               # 0: down to label469
# %bb.1:
	i32.const	0
	local.set	17
	local.get	17
	i64.load	__llvm_gcov_ctr.163
	local.set	18
	i64.const	1
	local.set	19
	local.get	18
	local.get	19
	i64.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.163
	i32.const	0
	local.set	22
	local.get	22
	i64.load	.L__profc___ucmpdi2+8
	local.set	23
	i64.const	1
	local.set	24
	local.get	23
	local.get	24
	i64.add 
	local.set	25
	i32.const	0
	local.set	26
	local.get	26
	local.get	25
	i64.store	.L__profc___ucmpdi2+8
	i32.const	0
	local.set	27
	local.get	4
	local.get	27
	i32.store	44
	br      	1                               # 1: down to label468
.LBB163_2:
	end_block                               # label469:
	local.get	4
	i32.load	20
	local.set	28
	local.get	4
	i32.load	12
	local.set	29
	local.get	28
	local.get	29
	i32.gt_u
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.and 
	local.set	32
	block   	
	local.get	32
	i32.eqz
	br_if   	0                               # 0: down to label470
# %bb.3:
	i32.const	0
	local.set	33
	local.get	33
	i64.load	__llvm_gcov_ctr.163+8
	local.set	34
	i64.const	1
	local.set	35
	local.get	34
	local.get	35
	i64.add 
	local.set	36
	i32.const	0
	local.set	37
	local.get	37
	local.get	36
	i64.store	__llvm_gcov_ctr.163+8
	i32.const	0
	local.set	38
	local.get	38
	i64.load	.L__profc___ucmpdi2+16
	local.set	39
	i64.const	1
	local.set	40
	local.get	39
	local.get	40
	i64.add 
	local.set	41
	i32.const	0
	local.set	42
	local.get	42
	local.get	41
	i64.store	.L__profc___ucmpdi2+16
	i32.const	2
	local.set	43
	local.get	4
	local.get	43
	i32.store	44
	br      	1                               # 1: down to label468
.LBB163_4:
	end_block                               # label470:
	local.get	4
	i32.load	16
	local.set	44
	local.get	4
	i32.load	8
	local.set	45
	local.get	44
	local.get	45
	i32.lt_u
	local.set	46
	i32.const	1
	local.set	47
	local.get	46
	local.get	47
	i32.and 
	local.set	48
	block   	
	local.get	48
	i32.eqz
	br_if   	0                               # 0: down to label471
# %bb.5:
	i32.const	0
	local.set	49
	local.get	49
	i64.load	__llvm_gcov_ctr.163+16
	local.set	50
	i64.const	1
	local.set	51
	local.get	50
	local.get	51
	i64.add 
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.163+16
	i32.const	0
	local.set	54
	local.get	54
	i64.load	.L__profc___ucmpdi2+24
	local.set	55
	i64.const	1
	local.set	56
	local.get	55
	local.get	56
	i64.add 
	local.set	57
	i32.const	0
	local.set	58
	local.get	58
	local.get	57
	i64.store	.L__profc___ucmpdi2+24
	i32.const	0
	local.set	59
	local.get	4
	local.get	59
	i32.store	44
	br      	1                               # 1: down to label468
.LBB163_6:
	end_block                               # label471:
	local.get	4
	i32.load	16
	local.set	60
	local.get	4
	i32.load	8
	local.set	61
	local.get	60
	local.get	61
	i32.gt_u
	local.set	62
	i32.const	1
	local.set	63
	local.get	62
	local.get	63
	i32.and 
	local.set	64
	block   	
	local.get	64
	i32.eqz
	br_if   	0                               # 0: down to label472
# %bb.7:
	i32.const	0
	local.set	65
	local.get	65
	i64.load	__llvm_gcov_ctr.163+24
	local.set	66
	i64.const	1
	local.set	67
	local.get	66
	local.get	67
	i64.add 
	local.set	68
	i32.const	0
	local.set	69
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.163+24
	i32.const	0
	local.set	70
	local.get	70
	i64.load	.L__profc___ucmpdi2+32
	local.set	71
	i64.const	1
	local.set	72
	local.get	71
	local.get	72
	i64.add 
	local.set	73
	i32.const	0
	local.set	74
	local.get	74
	local.get	73
	i64.store	.L__profc___ucmpdi2+32
	i32.const	2
	local.set	75
	local.get	4
	local.get	75
	i32.store	44
	br      	1                               # 1: down to label468
.LBB163_8:
	end_block                               # label472:
	i32.const	0
	local.set	76
	local.get	76
	i64.load	__llvm_gcov_ctr.163+32
	local.set	77
	i64.const	1
	local.set	78
	local.get	77
	local.get	78
	i64.add 
	local.set	79
	i32.const	0
	local.set	80
	local.get	80
	local.get	79
	i64.store	__llvm_gcov_ctr.163+32
	i32.const	1
	local.set	81
	local.get	4
	local.get	81
	i32.store	44
.LBB163_9:
	end_block                               # label468:
	local.get	4
	i32.load	44
	local.set	82
	local.get	82
	return
	end_function
                                        # -- End function
	.section	.text.__aeabi_ulcmp,"",@
	.hidden	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.functype	__aeabi_ulcmp (i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	5
	i64.load	__llvm_gcov_ctr.164
	local.set	6
	i64.const	1
	local.set	7
	local.get	6
	local.get	7
	i64.add 
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.164
	local.get	4
	local.get	0
	i64.store	8
	local.get	4
	local.get	1
	i64.store	0
	i32.const	0
	local.set	10
	local.get	10
	i64.load	.L__profc___aeabi_ulcmp
	local.set	11
	i64.const	1
	local.set	12
	local.get	11
	local.get	12
	i64.add 
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.get	13
	i64.store	.L__profc___aeabi_ulcmp
	local.get	4
	i64.load	8
	local.set	15
	local.get	4
	i64.load	0
	local.set	16
	local.get	15
	local.get	16
	call	__ucmpdi2
	local.set	17
	i32.const	1
	local.set	18
	local.get	17
	local.get	18
	i32.sub 
	local.set	19
	i32.const	16
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
	.section	.text.__ucmpti2,"",@
	.hidden	__ucmpti2                       # -- Begin function __ucmpti2
	.globl	__ucmpti2
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
	.functype	__ucmpti2 (i64, i64, i64, i64) -> (i32)
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32
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
	i32.const	0
	local.set	7
	local.get	7
	i64.load	.L__profc___ucmpti2
	local.set	8
	i64.const	1
	local.set	9
	local.get	8
	local.get	9
	i64.add 
	local.set	10
	local.get	7
	local.get	10
	i64.store	.L__profc___ucmpti2
	local.get	6
	i64.load	48
	local.set	11
	local.get	6
	i64.load	56
	local.set	12
	local.get	6
	local.get	12
	i64.store	24
	local.get	6
	local.get	11
	i64.store	16
	local.get	6
	i64.load	32
	local.set	13
	local.get	6
	i64.load	40
	local.set	14
	local.get	6
	local.get	14
	i64.store	8
	local.get	6
	local.get	13
	i64.store	0
	local.get	6
	i64.load	24
	local.set	15
	local.get	6
	i64.load	8
	local.set	16
	local.get	15
	local.get	16
	i64.lt_u
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
	br_if   	0                               # 0: down to label474
# %bb.1:
	i32.const	0
	local.set	20
	local.get	20
	i64.load	__llvm_gcov_ctr.165
	local.set	21
	i64.const	1
	local.set	22
	local.get	21
	local.get	22
	i64.add 
	local.set	23
	i32.const	0
	local.set	24
	local.get	24
	local.get	23
	i64.store	__llvm_gcov_ctr.165
	i32.const	0
	local.set	25
	local.get	25
	i64.load	.L__profc___ucmpti2+8
	local.set	26
	i64.const	1
	local.set	27
	local.get	26
	local.get	27
	i64.add 
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	.L__profc___ucmpti2+8
	i32.const	0
	local.set	30
	local.get	6
	local.get	30
	i32.store	76
	br      	1                               # 1: down to label473
.LBB165_2:
	end_block                               # label474:
	local.get	6
	i64.load	24
	local.set	31
	local.get	6
	i64.load	8
	local.set	32
	local.get	31
	local.get	32
	i64.gt_u
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	block   	
	local.get	35
	i32.eqz
	br_if   	0                               # 0: down to label475
# %bb.3:
	i32.const	0
	local.set	36
	local.get	36
	i64.load	__llvm_gcov_ctr.165+8
	local.set	37
	i64.const	1
	local.set	38
	local.get	37
	local.get	38
	i64.add 
	local.set	39
	i32.const	0
	local.set	40
	local.get	40
	local.get	39
	i64.store	__llvm_gcov_ctr.165+8
	i32.const	0
	local.set	41
	local.get	41
	i64.load	.L__profc___ucmpti2+16
	local.set	42
	i64.const	1
	local.set	43
	local.get	42
	local.get	43
	i64.add 
	local.set	44
	i32.const	0
	local.set	45
	local.get	45
	local.get	44
	i64.store	.L__profc___ucmpti2+16
	i32.const	2
	local.set	46
	local.get	6
	local.get	46
	i32.store	76
	br      	1                               # 1: down to label473
.LBB165_4:
	end_block                               # label475:
	local.get	6
	i64.load	16
	local.set	47
	local.get	6
	i64.load	0
	local.set	48
	local.get	47
	local.get	48
	i64.lt_u
	local.set	49
	i32.const	1
	local.set	50
	local.get	49
	local.get	50
	i32.and 
	local.set	51
	block   	
	local.get	51
	i32.eqz
	br_if   	0                               # 0: down to label476
# %bb.5:
	i32.const	0
	local.set	52
	local.get	52
	i64.load	__llvm_gcov_ctr.165+16
	local.set	53
	i64.const	1
	local.set	54
	local.get	53
	local.get	54
	i64.add 
	local.set	55
	i32.const	0
	local.set	56
	local.get	56
	local.get	55
	i64.store	__llvm_gcov_ctr.165+16
	i32.const	0
	local.set	57
	local.get	57
	i64.load	.L__profc___ucmpti2+24
	local.set	58
	i64.const	1
	local.set	59
	local.get	58
	local.get	59
	i64.add 
	local.set	60
	i32.const	0
	local.set	61
	local.get	61
	local.get	60
	i64.store	.L__profc___ucmpti2+24
	i32.const	0
	local.set	62
	local.get	6
	local.get	62
	i32.store	76
	br      	1                               # 1: down to label473
.LBB165_6:
	end_block                               # label476:
	local.get	6
	i64.load	16
	local.set	63
	local.get	6
	i64.load	0
	local.set	64
	local.get	63
	local.get	64
	i64.gt_u
	local.set	65
	i32.const	1
	local.set	66
	local.get	65
	local.get	66
	i32.and 
	local.set	67
	block   	
	local.get	67
	i32.eqz
	br_if   	0                               # 0: down to label477
# %bb.7:
	i32.const	0
	local.set	68
	local.get	68
	i64.load	__llvm_gcov_ctr.165+24
	local.set	69
	i64.const	1
	local.set	70
	local.get	69
	local.get	70
	i64.add 
	local.set	71
	i32.const	0
	local.set	72
	local.get	72
	local.get	71
	i64.store	__llvm_gcov_ctr.165+24
	i32.const	0
	local.set	73
	local.get	73
	i64.load	.L__profc___ucmpti2+32
	local.set	74
	i64.const	1
	local.set	75
	local.get	74
	local.get	75
	i64.add 
	local.set	76
	i32.const	0
	local.set	77
	local.get	77
	local.get	76
	i64.store	.L__profc___ucmpti2+32
	i32.const	2
	local.set	78
	local.get	6
	local.get	78
	i32.store	76
	br      	1                               # 1: down to label473
.LBB165_8:
	end_block                               # label477:
	i32.const	0
	local.set	79
	local.get	79
	i64.load	__llvm_gcov_ctr.165+32
	local.set	80
	i64.const	1
	local.set	81
	local.get	80
	local.get	81
	i64.add 
	local.set	82
	i32.const	0
	local.set	83
	local.get	83
	local.get	82
	i64.store	__llvm_gcov_ctr.165+32
	i32.const	1
	local.set	84
	local.get	6
	local.get	84
	i32.store	76
.LBB165_9:
	end_block                               # label473:
	local.get	6
	i32.load	76
	local.set	85
	local.get	85
	return
	end_function
                                        # -- End function
	.section	.text.__llvm_gcov_writeout,"",@
	.type	__llvm_gcov_writeout,@function  # -- Begin function __llvm_gcov_writeout
__llvm_gcov_writeout:                   # @__llvm_gcov_writeout
	.functype	__llvm_gcov_writeout () -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	i32.const	0
	local.set	0
	local.get	0
	local.set	1
.LBB166_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB166_2 Depth 2
	loop    	                                # label478:
	local.get	1
	local.set	2
	i32.const	__llvm_internal_gcov_emit_file_info
	local.set	3
	i32.const	24
	local.set	4
	local.get	2
	local.get	4
	i32.mul 
	local.set	5
	local.get	3
	local.get	5
	i32.add 
	local.set	6
	local.get	6
	i32.load	0
	local.set	7
	local.get	6
	i32.load	4
	local.set	8
	local.get	6
	i32.load	8
	local.set	9
	local.get	7
	local.get	8
	local.get	9
	call	llvm_gcda_start_file
	local.get	6
	i32.load	12
	local.set	10
	local.get	6
	i32.load	16
	local.set	11
	local.get	6
	i32.load	20
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	10
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
	br_if   	0                               # 0: down to label479
.LBB166_2:                              #   Parent Loop BB166_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loop    	                                # label480:
	local.get	18
	local.set	19
	i32.const	12
	local.set	20
	local.get	19
	local.get	20
	i32.mul 
	local.set	21
	local.get	11
	local.get	21
	i32.add 
	local.set	22
	local.get	22
	i32.load	0
	local.set	23
	local.get	22
	i32.load	4
	local.set	24
	local.get	22
	i32.load	8
	local.set	25
	local.get	23
	local.get	24
	local.get	25
	call	llvm_gcda_emit_function
	i32.const	3
	local.set	26
	local.get	19
	local.get	26
	i32.shl 
	local.set	27
	local.get	12
	local.get	27
	i32.add 
	local.set	28
	local.get	28
	i32.load	0
	local.set	29
	local.get	28
	i32.load	4
	local.set	30
	local.get	29
	local.get	30
	call	llvm_gcda_emit_arcs
	i32.const	1
	local.set	31
	local.get	19
	local.get	31
	i32.add 
	local.set	32
	local.get	32
	local.get	10
	i32.lt_s
	local.set	33
	i32.const	1
	local.set	34
	local.get	33
	local.get	34
	i32.and 
	local.set	35
	local.get	32
	local.set	18
	local.get	35
	br_if   	0                               # 0: up to label480
.LBB166_3:                              #   in Loop: Header=BB166_1 Depth=1
	end_loop
	end_block                               # label479:
	call	llvm_gcda_summary_info
	call	llvm_gcda_end_file
	i32.const	1
	local.set	36
	local.get	2
	local.get	36
	i32.add 
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.lt_s
	local.set	39
	i32.const	1
	local.set	40
	local.get	39
	local.get	40
	i32.and 
	local.set	41
	local.get	37
	local.set	1
	local.get	41
	br_if   	0                               # 0: up to label478
# %bb.4:
	end_loop
	return
	end_function
                                        # -- End function
	.section	.text.__llvm_gcov_reset,"",@
	.type	__llvm_gcov_reset,@function     # -- Begin function __llvm_gcov_reset
__llvm_gcov_reset:                      # @__llvm_gcov_reset
	.functype	__llvm_gcov_reset () -> ()
	.local  	i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i64, i32, i64, i32, i32, i64, i32, i64, i32, i64, i32, i64, i64, i32, i32, i64, i64, i32, i32, i64, i64, i32, i64, i32, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i32, i64, i32, i64, i64, i32, i32, i64, i64, i32, i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i32, i64, i64, i32
# %bb.0:
	i32.const	0
	local.set	0
	i64.const	0
	local.set	1
	local.get	0
	local.get	1
	i64.store	__llvm_gcov_ctr:p2align=0
	i32.const	0
	local.set	2
	i64.const	0
	local.set	3
	local.get	2
	local.get	3
	i64.store	__llvm_gcov_ctr.1:p2align=0
	i64.const	0
	local.set	4
	i32.const	0
	local.set	5
	local.get	5
	local.get	4
	i64.store	__llvm_gcov_ctr.2+32:p2align=0
	local.get	5
	local.get	4
	i64.store	__llvm_gcov_ctr.2+24:p2align=0
	local.get	5
	local.get	4
	i64.store	__llvm_gcov_ctr.2+16:p2align=0
	local.get	5
	local.get	4
	i64.store	__llvm_gcov_ctr.2+8:p2align=0
	local.get	5
	local.get	4
	i64.store	__llvm_gcov_ctr.2:p2align=0
	i64.const	0
	local.set	6
	i32.const	0
	local.set	7
	local.get	7
	local.get	6
	i64.store	__llvm_gcov_ctr.3+32:p2align=0
	local.get	7
	local.get	6
	i64.store	__llvm_gcov_ctr.3+24:p2align=0
	local.get	7
	local.get	6
	i64.store	__llvm_gcov_ctr.3+16:p2align=0
	local.get	7
	local.get	6
	i64.store	__llvm_gcov_ctr.3+8:p2align=0
	local.get	7
	local.get	6
	i64.store	__llvm_gcov_ctr.3:p2align=0
	i64.const	0
	local.set	8
	i32.const	0
	local.set	9
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.4+32:p2align=0
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.4+24:p2align=0
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.4+16:p2align=0
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.4+8:p2align=0
	local.get	9
	local.get	8
	i64.store	__llvm_gcov_ctr.4:p2align=0
	i64.const	0
	local.set	10
	i32.const	0
	local.set	11
	local.get	11
	local.get	10
	i64.store	__llvm_gcov_ctr.5+32:p2align=0
	local.get	11
	local.get	10
	i64.store	__llvm_gcov_ctr.5+24:p2align=0
	local.get	11
	local.get	10
	i64.store	__llvm_gcov_ctr.5+16:p2align=0
	local.get	11
	local.get	10
	i64.store	__llvm_gcov_ctr.5+8:p2align=0
	local.get	11
	local.get	10
	i64.store	__llvm_gcov_ctr.5:p2align=0
	i64.const	0
	local.set	12
	i32.const	0
	local.set	13
	local.get	13
	local.get	12
	i64.store	__llvm_gcov_ctr.6+8:p2align=0
	local.get	13
	local.get	12
	i64.store	__llvm_gcov_ctr.6:p2align=0
	i64.const	0
	local.set	14
	i32.const	0
	local.set	15
	local.get	15
	local.get	14
	i64.store	__llvm_gcov_ctr.7+16:p2align=0
	local.get	15
	local.get	14
	i64.store	__llvm_gcov_ctr.7+8:p2align=0
	local.get	15
	local.get	14
	i64.store	__llvm_gcov_ctr.7:p2align=0
	i64.const	0
	local.set	16
	i32.const	0
	local.set	17
	local.get	17
	local.get	16
	i64.store	__llvm_gcov_ctr.8+8:p2align=0
	local.get	17
	local.get	16
	i64.store	__llvm_gcov_ctr.8:p2align=0
	i64.const	0
	local.set	18
	i32.const	0
	local.set	19
	local.get	19
	local.get	18
	i64.store	__llvm_gcov_ctr.9+8:p2align=0
	local.get	19
	local.get	18
	i64.store	__llvm_gcov_ctr.9:p2align=0
	i64.const	0
	local.set	20
	i32.const	0
	local.set	21
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.10+24:p2align=0
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.10+16:p2align=0
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.10+8:p2align=0
	local.get	21
	local.get	20
	i64.store	__llvm_gcov_ctr.10:p2align=0
	i64.const	0
	local.set	22
	i32.const	0
	local.set	23
	local.get	23
	local.get	22
	i64.store	__llvm_gcov_ctr.11+16:p2align=0
	local.get	23
	local.get	22
	i64.store	__llvm_gcov_ctr.11+8:p2align=0
	local.get	23
	local.get	22
	i64.store	__llvm_gcov_ctr.11:p2align=0
	i64.const	0
	local.set	24
	i32.const	0
	local.set	25
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.12+24:p2align=0
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.12+16:p2align=0
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.12+8:p2align=0
	local.get	25
	local.get	24
	i64.store	__llvm_gcov_ctr.12:p2align=0
	i64.const	0
	local.set	26
	i32.const	0
	local.set	27
	local.get	27
	local.get	26
	i64.store	__llvm_gcov_ctr.13+8:p2align=0
	local.get	27
	local.get	26
	i64.store	__llvm_gcov_ctr.13:p2align=0
	i64.const	0
	local.set	28
	i32.const	0
	local.set	29
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.14+48:p2align=0
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.14+40:p2align=0
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.14+32:p2align=0
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.14+24:p2align=0
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.14+16:p2align=0
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.14+8:p2align=0
	local.get	29
	local.get	28
	i64.store	__llvm_gcov_ctr.14:p2align=0
	i64.const	0
	local.set	30
	i32.const	0
	local.set	31
	local.get	31
	local.get	30
	i64.store	__llvm_gcov_ctr.15+8:p2align=0
	local.get	31
	local.get	30
	i64.store	__llvm_gcov_ctr.15:p2align=0
	i32.const	0
	local.set	32
	i64.const	0
	local.set	33
	local.get	32
	local.get	33
	i64.store	__llvm_gcov_ctr.16:p2align=0
	i32.const	0
	local.set	34
	i64.const	0
	local.set	35
	local.get	34
	local.get	35
	i64.store	__llvm_gcov_ctr.17:p2align=0
	i64.const	0
	local.set	36
	i32.const	0
	local.set	37
	local.get	37
	local.get	36
	i64.store	__llvm_gcov_ctr.18+16:p2align=0
	local.get	37
	local.get	36
	i64.store	__llvm_gcov_ctr.18+8:p2align=0
	local.get	37
	local.get	36
	i64.store	__llvm_gcov_ctr.18:p2align=0
	i64.const	0
	local.set	38
	i32.const	0
	local.set	39
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.19+16:p2align=0
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.19+8:p2align=0
	local.get	39
	local.get	38
	i64.store	__llvm_gcov_ctr.19:p2align=0
	i32.const	0
	local.set	40
	i64.const	0
	local.set	41
	local.get	40
	local.get	41
	i64.store	__llvm_gcov_ctr.20:p2align=0
	i32.const	0
	local.set	42
	i64.const	0
	local.set	43
	local.get	42
	local.get	43
	i64.store	__llvm_gcov_ctr.21:p2align=0
	i32.const	0
	local.set	44
	i64.const	0
	local.set	45
	local.get	44
	local.get	45
	i64.store	__llvm_gcov_ctr.22:p2align=0
	i32.const	0
	local.set	46
	i64.const	0
	local.set	47
	local.get	46
	local.get	47
	i64.store	__llvm_gcov_ctr.23:p2align=0
	i64.const	0
	local.set	48
	i32.const	0
	local.set	49
	local.get	49
	local.get	48
	i64.store	__llvm_gcov_ctr.24+16:p2align=0
	local.get	49
	local.get	48
	i64.store	__llvm_gcov_ctr.24+8:p2align=0
	local.get	49
	local.get	48
	i64.store	__llvm_gcov_ctr.24:p2align=0
	i32.const	0
	local.set	50
	i64.const	0
	local.set	51
	local.get	50
	local.get	51
	i64.store	__llvm_gcov_ctr.25:p2align=0
	i64.const	0
	local.set	52
	i32.const	0
	local.set	53
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.26+32:p2align=0
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.26+24:p2align=0
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.26+16:p2align=0
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.26+8:p2align=0
	local.get	53
	local.get	52
	i64.store	__llvm_gcov_ctr.26:p2align=0
	i32.const	0
	local.set	54
	i64.const	0
	local.set	55
	local.get	54
	local.get	55
	i64.store	__llvm_gcov_ctr.27:p2align=0
	i64.const	0
	local.set	56
	i32.const	0
	local.set	57
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.28+48:p2align=0
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.28+40:p2align=0
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.28+32:p2align=0
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.28+24:p2align=0
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.28+16:p2align=0
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.28+8:p2align=0
	local.get	57
	local.get	56
	i64.store	__llvm_gcov_ctr.28:p2align=0
	i64.const	0
	local.set	58
	i32.const	0
	local.set	59
	local.get	59
	local.get	58
	i64.store	__llvm_gcov_ctr.29+16:p2align=0
	local.get	59
	local.get	58
	i64.store	__llvm_gcov_ctr.29+8:p2align=0
	local.get	59
	local.get	58
	i64.store	__llvm_gcov_ctr.29:p2align=0
	i32.const	0
	local.set	60
	i64.const	0
	local.set	61
	local.get	60
	local.get	61
	i64.store	__llvm_gcov_ctr.30:p2align=0
	i64.const	0
	local.set	62
	i32.const	0
	local.set	63
	local.get	63
	local.get	62
	i64.store	__llvm_gcov_ctr.31+24:p2align=0
	local.get	63
	local.get	62
	i64.store	__llvm_gcov_ctr.31+16:p2align=0
	local.get	63
	local.get	62
	i64.store	__llvm_gcov_ctr.31+8:p2align=0
	local.get	63
	local.get	62
	i64.store	__llvm_gcov_ctr.31:p2align=0
	i64.const	0
	local.set	64
	i32.const	0
	local.set	65
	local.get	65
	local.get	64
	i64.store	__llvm_gcov_ctr.32+24:p2align=0
	local.get	65
	local.get	64
	i64.store	__llvm_gcov_ctr.32+16:p2align=0
	local.get	65
	local.get	64
	i64.store	__llvm_gcov_ctr.32+8:p2align=0
	local.get	65
	local.get	64
	i64.store	__llvm_gcov_ctr.32:p2align=0
	i64.const	0
	local.set	66
	i32.const	0
	local.set	67
	local.get	67
	local.get	66
	i64.store	__llvm_gcov_ctr.33+40:p2align=0
	local.get	67
	local.get	66
	i64.store	__llvm_gcov_ctr.33+32:p2align=0
	local.get	67
	local.get	66
	i64.store	__llvm_gcov_ctr.33+24:p2align=0
	local.get	67
	local.get	66
	i64.store	__llvm_gcov_ctr.33+16:p2align=0
	local.get	67
	local.get	66
	i64.store	__llvm_gcov_ctr.33+8:p2align=0
	local.get	67
	local.get	66
	i64.store	__llvm_gcov_ctr.33:p2align=0
	i64.const	0
	local.set	68
	i32.const	0
	local.set	69
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.34+40:p2align=0
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.34+32:p2align=0
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.34+24:p2align=0
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.34+16:p2align=0
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.34+8:p2align=0
	local.get	69
	local.get	68
	i64.store	__llvm_gcov_ctr.34:p2align=0
	i64.const	0
	local.set	70
	i32.const	0
	local.set	71
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.35+40:p2align=0
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.35+32:p2align=0
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.35+24:p2align=0
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.35+16:p2align=0
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.35+8:p2align=0
	local.get	71
	local.get	70
	i64.store	__llvm_gcov_ctr.35:p2align=0
	i64.const	0
	local.set	72
	i32.const	0
	local.set	73
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.36+40:p2align=0
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.36+32:p2align=0
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.36+24:p2align=0
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.36+16:p2align=0
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.36+8:p2align=0
	local.get	73
	local.get	72
	i64.store	__llvm_gcov_ctr.36:p2align=0
	i64.const	0
	local.set	74
	i32.const	0
	local.set	75
	local.get	75
	local.get	74
	i64.store	__llvm_gcov_ctr.37+40:p2align=0
	local.get	75
	local.get	74
	i64.store	__llvm_gcov_ctr.37+32:p2align=0
	local.get	75
	local.get	74
	i64.store	__llvm_gcov_ctr.37+24:p2align=0
	local.get	75
	local.get	74
	i64.store	__llvm_gcov_ctr.37+16:p2align=0
	local.get	75
	local.get	74
	i64.store	__llvm_gcov_ctr.37+8:p2align=0
	local.get	75
	local.get	74
	i64.store	__llvm_gcov_ctr.37:p2align=0
	i64.const	0
	local.set	76
	i32.const	0
	local.set	77
	local.get	77
	local.get	76
	i64.store	__llvm_gcov_ctr.38+40:p2align=0
	local.get	77
	local.get	76
	i64.store	__llvm_gcov_ctr.38+32:p2align=0
	local.get	77
	local.get	76
	i64.store	__llvm_gcov_ctr.38+24:p2align=0
	local.get	77
	local.get	76
	i64.store	__llvm_gcov_ctr.38+16:p2align=0
	local.get	77
	local.get	76
	i64.store	__llvm_gcov_ctr.38+8:p2align=0
	local.get	77
	local.get	76
	i64.store	__llvm_gcov_ctr.38:p2align=0
	i64.const	0
	local.set	78
	i32.const	0
	local.set	79
	local.get	79
	local.get	78
	i64.store	__llvm_gcov_ctr.39+8:p2align=0
	local.get	79
	local.get	78
	i64.store	__llvm_gcov_ctr.39:p2align=0
	i32.const	0
	local.set	80
	i64.const	0
	local.set	81
	local.get	80
	local.get	81
	i64.store	__llvm_gcov_ctr.40:p2align=0
	i32.const	0
	local.set	82
	i64.const	0
	local.set	83
	local.get	82
	local.get	83
	i64.store	__llvm_gcov_ctr.41:p2align=0
	i64.const	0
	local.set	84
	i32.const	0
	local.set	85
	local.get	85
	local.get	84
	i64.store	__llvm_gcov_ctr.42+16:p2align=0
	local.get	85
	local.get	84
	i64.store	__llvm_gcov_ctr.42+8:p2align=0
	local.get	85
	local.get	84
	i64.store	__llvm_gcov_ctr.42:p2align=0
	i64.const	0
	local.set	86
	i32.const	0
	local.set	87
	local.get	87
	local.get	86
	i64.store	__llvm_gcov_ctr.43+16:p2align=0
	local.get	87
	local.get	86
	i64.store	__llvm_gcov_ctr.43+8:p2align=0
	local.get	87
	local.get	86
	i64.store	__llvm_gcov_ctr.43:p2align=0
	i64.const	0
	local.set	88
	i32.const	0
	local.set	89
	local.get	89
	local.get	88
	i64.store	__llvm_gcov_ctr.44+16:p2align=0
	local.get	89
	local.get	88
	i64.store	__llvm_gcov_ctr.44+8:p2align=0
	local.get	89
	local.get	88
	i64.store	__llvm_gcov_ctr.44:p2align=0
	i64.const	0
	local.set	90
	i32.const	0
	local.set	91
	local.get	91
	local.get	90
	i64.store	__llvm_gcov_ctr.45+16:p2align=0
	local.get	91
	local.get	90
	i64.store	__llvm_gcov_ctr.45+8:p2align=0
	local.get	91
	local.get	90
	i64.store	__llvm_gcov_ctr.45:p2align=0
	i64.const	0
	local.set	92
	i32.const	0
	local.set	93
	local.get	93
	local.get	92
	i64.store	__llvm_gcov_ctr.46+8:p2align=0
	local.get	93
	local.get	92
	i64.store	__llvm_gcov_ctr.46:p2align=0
	i64.const	0
	local.set	94
	i32.const	0
	local.set	95
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.47+40:p2align=0
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.47+32:p2align=0
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.47+24:p2align=0
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.47+16:p2align=0
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.47+8:p2align=0
	local.get	95
	local.get	94
	i64.store	__llvm_gcov_ctr.47:p2align=0
	i64.const	0
	local.set	96
	i32.const	0
	local.set	97
	local.get	97
	local.get	96
	i64.store	__llvm_gcov_ctr.48+40:p2align=0
	local.get	97
	local.get	96
	i64.store	__llvm_gcov_ctr.48+32:p2align=0
	local.get	97
	local.get	96
	i64.store	__llvm_gcov_ctr.48+24:p2align=0
	local.get	97
	local.get	96
	i64.store	__llvm_gcov_ctr.48+16:p2align=0
	local.get	97
	local.get	96
	i64.store	__llvm_gcov_ctr.48+8:p2align=0
	local.get	97
	local.get	96
	i64.store	__llvm_gcov_ctr.48:p2align=0
	i64.const	0
	local.set	98
	i32.const	0
	local.set	99
	local.get	99
	local.get	98
	i64.store	__llvm_gcov_ctr.49+40:p2align=0
	local.get	99
	local.get	98
	i64.store	__llvm_gcov_ctr.49+32:p2align=0
	local.get	99
	local.get	98
	i64.store	__llvm_gcov_ctr.49+24:p2align=0
	local.get	99
	local.get	98
	i64.store	__llvm_gcov_ctr.49+16:p2align=0
	local.get	99
	local.get	98
	i64.store	__llvm_gcov_ctr.49+8:p2align=0
	local.get	99
	local.get	98
	i64.store	__llvm_gcov_ctr.49:p2align=0
	i64.const	0
	local.set	100
	i32.const	0
	local.set	101
	local.get	101
	local.get	100
	i64.store	__llvm_gcov_ctr.50+24:p2align=0
	local.get	101
	local.get	100
	i64.store	__llvm_gcov_ctr.50+16:p2align=0
	local.get	101
	local.get	100
	i64.store	__llvm_gcov_ctr.50+8:p2align=0
	local.get	101
	local.get	100
	i64.store	__llvm_gcov_ctr.50:p2align=0
	i64.const	0
	local.set	102
	i32.const	0
	local.set	103
	local.get	103
	local.get	102
	i64.store	__llvm_gcov_ctr.51+24:p2align=0
	local.get	103
	local.get	102
	i64.store	__llvm_gcov_ctr.51+16:p2align=0
	local.get	103
	local.get	102
	i64.store	__llvm_gcov_ctr.51+8:p2align=0
	local.get	103
	local.get	102
	i64.store	__llvm_gcov_ctr.51:p2align=0
	i32.const	0
	local.set	104
	i64.const	0
	local.set	105
	local.get	104
	local.get	105
	i64.store	__llvm_gcov_ctr.52:p2align=0
	i64.const	0
	local.set	106
	i32.const	0
	local.set	107
	local.get	107
	local.get	106
	i64.store	__llvm_gcov_ctr.53+8:p2align=0
	local.get	107
	local.get	106
	i64.store	__llvm_gcov_ctr.53:p2align=0
	i32.const	0
	local.set	108
	i64.const	0
	local.set	109
	local.get	108
	local.get	109
	i64.store	__llvm_gcov_ctr.54:p2align=0
	i64.const	0
	local.set	110
	i32.const	0
	local.set	111
	local.get	111
	local.get	110
	i64.store	__llvm_gcov_ctr.55+8:p2align=0
	local.get	111
	local.get	110
	i64.store	__llvm_gcov_ctr.55:p2align=0
	i32.const	0
	local.set	112
	i64.const	0
	local.set	113
	local.get	112
	local.get	113
	i64.store	__llvm_gcov_ctr.56:p2align=0
	i64.const	0
	local.set	114
	i32.const	0
	local.set	115
	local.get	115
	local.get	114
	i64.store	__llvm_gcov_ctr.57+8:p2align=0
	local.get	115
	local.get	114
	i64.store	__llvm_gcov_ctr.57:p2align=0
	i32.const	0
	local.set	116
	i64.const	0
	local.set	117
	local.get	116
	local.get	117
	i64.store	__llvm_gcov_ctr.58:p2align=0
	i64.const	0
	local.set	118
	i32.const	0
	local.set	119
	local.get	119
	local.get	118
	i64.store	__llvm_gcov_ctr.59+32:p2align=0
	local.get	119
	local.get	118
	i64.store	__llvm_gcov_ctr.59+24:p2align=0
	local.get	119
	local.get	118
	i64.store	__llvm_gcov_ctr.59+16:p2align=0
	local.get	119
	local.get	118
	i64.store	__llvm_gcov_ctr.59+8:p2align=0
	local.get	119
	local.get	118
	i64.store	__llvm_gcov_ctr.59:p2align=0
	i64.const	0
	local.set	120
	i32.const	0
	local.set	121
	local.get	121
	local.get	120
	i64.store	__llvm_gcov_ctr.60+40:p2align=0
	local.get	121
	local.get	120
	i64.store	__llvm_gcov_ctr.60+32:p2align=0
	local.get	121
	local.get	120
	i64.store	__llvm_gcov_ctr.60+24:p2align=0
	local.get	121
	local.get	120
	i64.store	__llvm_gcov_ctr.60+16:p2align=0
	local.get	121
	local.get	120
	i64.store	__llvm_gcov_ctr.60+8:p2align=0
	local.get	121
	local.get	120
	i64.store	__llvm_gcov_ctr.60:p2align=0
	i64.const	0
	local.set	122
	i32.const	0
	local.set	123
	local.get	123
	local.get	122
	i64.store	__llvm_gcov_ctr.61+8:p2align=0
	local.get	123
	local.get	122
	i64.store	__llvm_gcov_ctr.61:p2align=0
	i64.const	0
	local.set	124
	i32.const	0
	local.set	125
	local.get	125
	local.get	124
	i64.store	__llvm_gcov_ctr.62+8:p2align=0
	local.get	125
	local.get	124
	i64.store	__llvm_gcov_ctr.62:p2align=0
	i64.const	0
	local.set	126
	i32.const	0
	local.set	127
	local.get	127
	local.get	126
	i64.store	__llvm_gcov_ctr.63+56:p2align=0
	local.get	127
	local.get	126
	i64.store	__llvm_gcov_ctr.63+48:p2align=0
	local.get	127
	local.get	126
	i64.store	__llvm_gcov_ctr.63+40:p2align=0
	local.get	127
	local.get	126
	i64.store	__llvm_gcov_ctr.63+32:p2align=0
	local.get	127
	local.get	126
	i64.store	__llvm_gcov_ctr.63+24:p2align=0
	local.get	127
	local.get	126
	i64.store	__llvm_gcov_ctr.63+16:p2align=0
	local.get	127
	local.get	126
	i64.store	__llvm_gcov_ctr.63+8:p2align=0
	local.get	127
	local.get	126
	i64.store	__llvm_gcov_ctr.63:p2align=0
	i64.const	0
	local.set	128
	i32.const	0
	local.set	129
	local.get	129
	local.get	128
	i64.store	__llvm_gcov_ctr.64+32:p2align=0
	local.get	129
	local.get	128
	i64.store	__llvm_gcov_ctr.64+24:p2align=0
	local.get	129
	local.get	128
	i64.store	__llvm_gcov_ctr.64+16:p2align=0
	local.get	129
	local.get	128
	i64.store	__llvm_gcov_ctr.64+8:p2align=0
	local.get	129
	local.get	128
	i64.store	__llvm_gcov_ctr.64:p2align=0
	i64.const	0
	local.set	130
	i32.const	0
	local.set	131
	local.get	131
	local.get	130
	i64.store	__llvm_gcov_ctr.65+40:p2align=0
	local.get	131
	local.get	130
	i64.store	__llvm_gcov_ctr.65+32:p2align=0
	local.get	131
	local.get	130
	i64.store	__llvm_gcov_ctr.65+24:p2align=0
	local.get	131
	local.get	130
	i64.store	__llvm_gcov_ctr.65+16:p2align=0
	local.get	131
	local.get	130
	i64.store	__llvm_gcov_ctr.65+8:p2align=0
	local.get	131
	local.get	130
	i64.store	__llvm_gcov_ctr.65:p2align=0
	i64.const	0
	local.set	132
	i32.const	0
	local.set	133
	local.get	133
	local.get	132
	i64.store	__llvm_gcov_ctr.66+8:p2align=0
	local.get	133
	local.get	132
	i64.store	__llvm_gcov_ctr.66:p2align=0
	i64.const	0
	local.set	134
	i32.const	0
	local.set	135
	local.get	135
	local.get	134
	i64.store	__llvm_gcov_ctr.67+32:p2align=0
	local.get	135
	local.get	134
	i64.store	__llvm_gcov_ctr.67+24:p2align=0
	local.get	135
	local.get	134
	i64.store	__llvm_gcov_ctr.67+16:p2align=0
	local.get	135
	local.get	134
	i64.store	__llvm_gcov_ctr.67+8:p2align=0
	local.get	135
	local.get	134
	i64.store	__llvm_gcov_ctr.67:p2align=0
	i64.const	0
	local.set	136
	i32.const	0
	local.set	137
	local.get	137
	local.get	136
	i64.store	__llvm_gcov_ctr.68+8:p2align=0
	local.get	137
	local.get	136
	i64.store	__llvm_gcov_ctr.68:p2align=0
	i64.const	0
	local.set	138
	i32.const	0
	local.set	139
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.69+32:p2align=0
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.69+24:p2align=0
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.69+16:p2align=0
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.69+8:p2align=0
	local.get	139
	local.get	138
	i64.store	__llvm_gcov_ctr.69:p2align=0
	i32.const	0
	local.set	140
	i64.const	0
	local.set	141
	local.get	140
	local.get	141
	i64.store	__llvm_gcov_ctr.70:p2align=0
	i32.const	0
	local.set	142
	i64.const	0
	local.set	143
	local.get	142
	local.get	143
	i64.store	__llvm_gcov_ctr.71:p2align=0
	i32.const	0
	local.set	144
	i64.const	0
	local.set	145
	local.get	144
	local.get	145
	i64.store	__llvm_gcov_ctr.72:p2align=0
	i32.const	0
	local.set	146
	i64.const	0
	local.set	147
	local.get	146
	local.get	147
	i64.store	__llvm_gcov_ctr.73:p2align=0
	i32.const	0
	local.set	148
	i64.const	0
	local.set	149
	local.get	148
	local.get	149
	i64.store	__llvm_gcov_ctr.74:p2align=0
	i32.const	0
	local.set	150
	i64.const	0
	local.set	151
	local.get	150
	local.get	151
	i64.store	__llvm_gcov_ctr.75:p2align=0
	i32.const	0
	local.set	152
	i64.const	0
	local.set	153
	local.get	152
	local.get	153
	i64.store	__llvm_gcov_ctr.76:p2align=0
	i32.const	0
	local.set	154
	i64.const	0
	local.set	155
	local.get	154
	local.get	155
	i64.store	__llvm_gcov_ctr.77:p2align=0
	i32.const	0
	local.set	156
	i64.const	0
	local.set	157
	local.get	156
	local.get	157
	i64.store	__llvm_gcov_ctr.78:p2align=0
	i32.const	0
	local.set	158
	i64.const	0
	local.set	159
	local.get	158
	local.get	159
	i64.store	__llvm_gcov_ctr.79:p2align=0
	i32.const	0
	local.set	160
	i64.const	0
	local.set	161
	local.get	160
	local.get	161
	i64.store	__llvm_gcov_ctr.80:p2align=0
	i32.const	0
	local.set	162
	i64.const	0
	local.set	163
	local.get	162
	local.get	163
	i64.store	__llvm_gcov_ctr.81:p2align=0
	i32.const	0
	local.set	164
	i64.const	0
	local.set	165
	local.get	164
	local.get	165
	i64.store	__llvm_gcov_ctr.82:p2align=0
	i64.const	0
	local.set	166
	i32.const	0
	local.set	167
	local.get	167
	local.get	166
	i64.store	__llvm_gcov_ctr.83+16:p2align=0
	local.get	167
	local.get	166
	i64.store	__llvm_gcov_ctr.83+8:p2align=0
	local.get	167
	local.get	166
	i64.store	__llvm_gcov_ctr.83:p2align=0
	i64.const	0
	local.set	168
	i32.const	0
	local.set	169
	local.get	169
	local.get	168
	i64.store	__llvm_gcov_ctr.84+16:p2align=0
	local.get	169
	local.get	168
	i64.store	__llvm_gcov_ctr.84+8:p2align=0
	local.get	169
	local.get	168
	i64.store	__llvm_gcov_ctr.84:p2align=0
	i64.const	0
	local.set	170
	i32.const	0
	local.set	171
	local.get	171
	local.get	170
	i64.store	__llvm_gcov_ctr.85+16:p2align=0
	local.get	171
	local.get	170
	i64.store	__llvm_gcov_ctr.85+8:p2align=0
	local.get	171
	local.get	170
	i64.store	__llvm_gcov_ctr.85:p2align=0
	i64.const	0
	local.set	172
	i32.const	0
	local.set	173
	local.get	173
	local.get	172
	i64.store	__llvm_gcov_ctr.86+16:p2align=0
	local.get	173
	local.get	172
	i64.store	__llvm_gcov_ctr.86+8:p2align=0
	local.get	173
	local.get	172
	i64.store	__llvm_gcov_ctr.86:p2align=0
	i64.const	0
	local.set	174
	i32.const	0
	local.set	175
	local.get	175
	local.get	174
	i64.store	__llvm_gcov_ctr.87+16:p2align=0
	local.get	175
	local.get	174
	i64.store	__llvm_gcov_ctr.87+8:p2align=0
	local.get	175
	local.get	174
	i64.store	__llvm_gcov_ctr.87:p2align=0
	i32.const	0
	local.set	176
	i64.const	0
	local.set	177
	local.get	176
	local.get	177
	i64.store	__llvm_gcov_ctr.88:p2align=0
	i64.const	0
	local.set	178
	i32.const	0
	local.set	179
	local.get	179
	local.get	178
	i64.store	__llvm_gcov_ctr.89+32:p2align=0
	local.get	179
	local.get	178
	i64.store	__llvm_gcov_ctr.89+24:p2align=0
	local.get	179
	local.get	178
	i64.store	__llvm_gcov_ctr.89+16:p2align=0
	local.get	179
	local.get	178
	i64.store	__llvm_gcov_ctr.89+8:p2align=0
	local.get	179
	local.get	178
	i64.store	__llvm_gcov_ctr.89:p2align=0
	i64.const	0
	local.set	180
	i32.const	0
	local.set	181
	local.get	181
	local.get	180
	i64.store	__llvm_gcov_ctr.90+32:p2align=0
	local.get	181
	local.get	180
	i64.store	__llvm_gcov_ctr.90+24:p2align=0
	local.get	181
	local.get	180
	i64.store	__llvm_gcov_ctr.90+16:p2align=0
	local.get	181
	local.get	180
	i64.store	__llvm_gcov_ctr.90+8:p2align=0
	local.get	181
	local.get	180
	i64.store	__llvm_gcov_ctr.90:p2align=0
	i64.const	0
	local.set	182
	i32.const	0
	local.set	183
	local.get	183
	local.get	182
	i64.store	__llvm_gcov_ctr.91+32:p2align=0
	local.get	183
	local.get	182
	i64.store	__llvm_gcov_ctr.91+24:p2align=0
	local.get	183
	local.get	182
	i64.store	__llvm_gcov_ctr.91+16:p2align=0
	local.get	183
	local.get	182
	i64.store	__llvm_gcov_ctr.91+8:p2align=0
	local.get	183
	local.get	182
	i64.store	__llvm_gcov_ctr.91:p2align=0
	i64.const	0
	local.set	184
	i32.const	0
	local.set	185
	local.get	185
	local.get	184
	i64.store	__llvm_gcov_ctr.92+8:p2align=0
	local.get	185
	local.get	184
	i64.store	__llvm_gcov_ctr.92:p2align=0
	i64.const	0
	local.set	186
	i32.const	0
	local.set	187
	local.get	187
	local.get	186
	i64.store	__llvm_gcov_ctr.93+32:p2align=0
	local.get	187
	local.get	186
	i64.store	__llvm_gcov_ctr.93+24:p2align=0
	local.get	187
	local.get	186
	i64.store	__llvm_gcov_ctr.93+16:p2align=0
	local.get	187
	local.get	186
	i64.store	__llvm_gcov_ctr.93+8:p2align=0
	local.get	187
	local.get	186
	i64.store	__llvm_gcov_ctr.93:p2align=0
	i64.const	0
	local.set	188
	i32.const	0
	local.set	189
	local.get	189
	local.get	188
	i64.store	__llvm_gcov_ctr.94+24:p2align=0
	local.get	189
	local.get	188
	i64.store	__llvm_gcov_ctr.94+16:p2align=0
	local.get	189
	local.get	188
	i64.store	__llvm_gcov_ctr.94+8:p2align=0
	local.get	189
	local.get	188
	i64.store	__llvm_gcov_ctr.94:p2align=0
	i64.const	0
	local.set	190
	i32.const	0
	local.set	191
	local.get	191
	local.get	190
	i64.store	__llvm_gcov_ctr.95+24:p2align=0
	local.get	191
	local.get	190
	i64.store	__llvm_gcov_ctr.95+16:p2align=0
	local.get	191
	local.get	190
	i64.store	__llvm_gcov_ctr.95+8:p2align=0
	local.get	191
	local.get	190
	i64.store	__llvm_gcov_ctr.95:p2align=0
	i64.const	0
	local.set	192
	i32.const	0
	local.set	193
	local.get	193
	local.get	192
	i64.store	__llvm_gcov_ctr.96+16:p2align=0
	local.get	193
	local.get	192
	i64.store	__llvm_gcov_ctr.96+8:p2align=0
	local.get	193
	local.get	192
	i64.store	__llvm_gcov_ctr.96:p2align=0
	i64.const	0
	local.set	194
	i32.const	0
	local.set	195
	local.get	195
	local.get	194
	i64.store	__llvm_gcov_ctr.97+24:p2align=0
	local.get	195
	local.get	194
	i64.store	__llvm_gcov_ctr.97+16:p2align=0
	local.get	195
	local.get	194
	i64.store	__llvm_gcov_ctr.97+8:p2align=0
	local.get	195
	local.get	194
	i64.store	__llvm_gcov_ctr.97:p2align=0
	i64.const	0
	local.set	196
	i32.const	0
	local.set	197
	local.get	197
	local.get	196
	i64.store	__llvm_gcov_ctr.98+32:p2align=0
	local.get	197
	local.get	196
	i64.store	__llvm_gcov_ctr.98+24:p2align=0
	local.get	197
	local.get	196
	i64.store	__llvm_gcov_ctr.98+16:p2align=0
	local.get	197
	local.get	196
	i64.store	__llvm_gcov_ctr.98+8:p2align=0
	local.get	197
	local.get	196
	i64.store	__llvm_gcov_ctr.98:p2align=0
	i64.const	0
	local.set	198
	i32.const	0
	local.set	199
	local.get	199
	local.get	198
	i64.store	__llvm_gcov_ctr.99+40:p2align=0
	local.get	199
	local.get	198
	i64.store	__llvm_gcov_ctr.99+32:p2align=0
	local.get	199
	local.get	198
	i64.store	__llvm_gcov_ctr.99+24:p2align=0
	local.get	199
	local.get	198
	i64.store	__llvm_gcov_ctr.99+16:p2align=0
	local.get	199
	local.get	198
	i64.store	__llvm_gcov_ctr.99+8:p2align=0
	local.get	199
	local.get	198
	i64.store	__llvm_gcov_ctr.99:p2align=0
	i32.const	0
	local.set	200
	i64.const	0
	local.set	201
	local.get	200
	local.get	201
	i64.store	__llvm_gcov_ctr.100:p2align=0
	i64.const	0
	local.set	202
	i32.const	0
	local.set	203
	local.get	203
	local.get	202
	i64.store	__llvm_gcov_ctr.101+56:p2align=0
	local.get	203
	local.get	202
	i64.store	__llvm_gcov_ctr.101+48:p2align=0
	local.get	203
	local.get	202
	i64.store	__llvm_gcov_ctr.101+40:p2align=0
	local.get	203
	local.get	202
	i64.store	__llvm_gcov_ctr.101+32:p2align=0
	local.get	203
	local.get	202
	i64.store	__llvm_gcov_ctr.101+24:p2align=0
	local.get	203
	local.get	202
	i64.store	__llvm_gcov_ctr.101+16:p2align=0
	local.get	203
	local.get	202
	i64.store	__llvm_gcov_ctr.101+8:p2align=0
	local.get	203
	local.get	202
	i64.store	__llvm_gcov_ctr.101:p2align=0
	i64.const	0
	local.set	204
	i32.const	0
	local.set	205
	local.get	205
	local.get	204
	i64.store	__llvm_gcov_ctr.102+16:p2align=0
	local.get	205
	local.get	204
	i64.store	__llvm_gcov_ctr.102+8:p2align=0
	local.get	205
	local.get	204
	i64.store	__llvm_gcov_ctr.102:p2align=0
	i64.const	0
	local.set	206
	i32.const	0
	local.set	207
	local.get	207
	local.get	206
	i64.store	__llvm_gcov_ctr.103+56:p2align=0
	local.get	207
	local.get	206
	i64.store	__llvm_gcov_ctr.103+48:p2align=0
	local.get	207
	local.get	206
	i64.store	__llvm_gcov_ctr.103+40:p2align=0
	local.get	207
	local.get	206
	i64.store	__llvm_gcov_ctr.103+32:p2align=0
	local.get	207
	local.get	206
	i64.store	__llvm_gcov_ctr.103+24:p2align=0
	local.get	207
	local.get	206
	i64.store	__llvm_gcov_ctr.103+16:p2align=0
	local.get	207
	local.get	206
	i64.store	__llvm_gcov_ctr.103+8:p2align=0
	local.get	207
	local.get	206
	i64.store	__llvm_gcov_ctr.103:p2align=0
	i64.const	0
	local.set	208
	i32.const	0
	local.set	209
	local.get	209
	local.get	208
	i64.store	__llvm_gcov_ctr.104+16:p2align=0
	local.get	209
	local.get	208
	i64.store	__llvm_gcov_ctr.104+8:p2align=0
	local.get	209
	local.get	208
	i64.store	__llvm_gcov_ctr.104:p2align=0
	i64.const	0
	local.set	210
	i32.const	0
	local.set	211
	local.get	211
	local.get	210
	i64.store	__llvm_gcov_ctr.105+16:p2align=0
	local.get	211
	local.get	210
	i64.store	__llvm_gcov_ctr.105+8:p2align=0
	local.get	211
	local.get	210
	i64.store	__llvm_gcov_ctr.105:p2align=0
	i64.const	0
	local.set	212
	i32.const	0
	local.set	213
	local.get	213
	local.get	212
	i64.store	__llvm_gcov_ctr.106+16:p2align=0
	local.get	213
	local.get	212
	i64.store	__llvm_gcov_ctr.106+8:p2align=0
	local.get	213
	local.get	212
	i64.store	__llvm_gcov_ctr.106:p2align=0
	i64.const	0
	local.set	214
	i32.const	0
	local.set	215
	local.get	215
	local.get	214
	i64.store	__llvm_gcov_ctr.107+40:p2align=0
	local.get	215
	local.get	214
	i64.store	__llvm_gcov_ctr.107+32:p2align=0
	local.get	215
	local.get	214
	i64.store	__llvm_gcov_ctr.107+24:p2align=0
	local.get	215
	local.get	214
	i64.store	__llvm_gcov_ctr.107+16:p2align=0
	local.get	215
	local.get	214
	i64.store	__llvm_gcov_ctr.107+8:p2align=0
	local.get	215
	local.get	214
	i64.store	__llvm_gcov_ctr.107:p2align=0
	i64.const	0
	local.set	216
	i32.const	0
	local.set	217
	local.get	217
	local.get	216
	i64.store	__llvm_gcov_ctr.108+40:p2align=0
	local.get	217
	local.get	216
	i64.store	__llvm_gcov_ctr.108+32:p2align=0
	local.get	217
	local.get	216
	i64.store	__llvm_gcov_ctr.108+24:p2align=0
	local.get	217
	local.get	216
	i64.store	__llvm_gcov_ctr.108+16:p2align=0
	local.get	217
	local.get	216
	i64.store	__llvm_gcov_ctr.108+8:p2align=0
	local.get	217
	local.get	216
	i64.store	__llvm_gcov_ctr.108:p2align=0
	i64.const	0
	local.set	218
	i32.const	0
	local.set	219
	local.get	219
	local.get	218
	i64.store	__llvm_gcov_ctr.109+40:p2align=0
	local.get	219
	local.get	218
	i64.store	__llvm_gcov_ctr.109+32:p2align=0
	local.get	219
	local.get	218
	i64.store	__llvm_gcov_ctr.109+24:p2align=0
	local.get	219
	local.get	218
	i64.store	__llvm_gcov_ctr.109+16:p2align=0
	local.get	219
	local.get	218
	i64.store	__llvm_gcov_ctr.109+8:p2align=0
	local.get	219
	local.get	218
	i64.store	__llvm_gcov_ctr.109:p2align=0
	i32.const	0
	local.set	220
	i64.const	0
	local.set	221
	local.get	220
	local.get	221
	i64.store	__llvm_gcov_ctr.110:p2align=0
	i32.const	0
	local.set	222
	i64.const	0
	local.set	223
	local.get	222
	local.get	223
	i64.store	__llvm_gcov_ctr.111:p2align=0
	i32.const	0
	local.set	224
	i64.const	0
	local.set	225
	local.get	224
	local.get	225
	i64.store	__llvm_gcov_ctr.112:p2align=0
	i32.const	0
	local.set	226
	i64.const	0
	local.set	227
	local.get	226
	local.get	227
	i64.store	__llvm_gcov_ctr.113:p2align=0
	i32.const	0
	local.set	228
	i64.const	0
	local.set	229
	local.get	228
	local.get	229
	i64.store	__llvm_gcov_ctr.114:p2align=0
	i32.const	0
	local.set	230
	i64.const	0
	local.set	231
	local.get	230
	local.get	231
	i64.store	__llvm_gcov_ctr.115:p2align=0
	i64.const	0
	local.set	232
	i32.const	0
	local.set	233
	local.get	233
	local.get	232
	i64.store	__llvm_gcov_ctr.116+16:p2align=0
	local.get	233
	local.get	232
	i64.store	__llvm_gcov_ctr.116+8:p2align=0
	local.get	233
	local.get	232
	i64.store	__llvm_gcov_ctr.116:p2align=0
	i64.const	0
	local.set	234
	i32.const	0
	local.set	235
	local.get	235
	local.get	234
	i64.store	__llvm_gcov_ctr.117+16:p2align=0
	local.get	235
	local.get	234
	i64.store	__llvm_gcov_ctr.117+8:p2align=0
	local.get	235
	local.get	234
	i64.store	__llvm_gcov_ctr.117:p2align=0
	i64.const	0
	local.set	236
	i32.const	0
	local.set	237
	local.get	237
	local.get	236
	i64.store	__llvm_gcov_ctr.118+8:p2align=0
	local.get	237
	local.get	236
	i64.store	__llvm_gcov_ctr.118:p2align=0
	i64.const	0
	local.set	238
	i32.const	0
	local.set	239
	local.get	239
	local.get	238
	i64.store	__llvm_gcov_ctr.119+16:p2align=0
	local.get	239
	local.get	238
	i64.store	__llvm_gcov_ctr.119+8:p2align=0
	local.get	239
	local.get	238
	i64.store	__llvm_gcov_ctr.119:p2align=0
	i64.const	0
	local.set	240
	i32.const	0
	local.set	241
	local.get	241
	local.get	240
	i64.store	__llvm_gcov_ctr.120+16:p2align=0
	local.get	241
	local.get	240
	i64.store	__llvm_gcov_ctr.120+8:p2align=0
	local.get	241
	local.get	240
	i64.store	__llvm_gcov_ctr.120:p2align=0
	i64.const	0
	local.set	242
	i32.const	0
	local.set	243
	local.get	243
	local.get	242
	i64.store	__llvm_gcov_ctr.121+16:p2align=0
	local.get	243
	local.get	242
	i64.store	__llvm_gcov_ctr.121+8:p2align=0
	local.get	243
	local.get	242
	i64.store	__llvm_gcov_ctr.121:p2align=0
	i64.const	0
	local.set	244
	i32.const	0
	local.set	245
	local.get	245
	local.get	244
	i64.store	__llvm_gcov_ctr.122+24:p2align=0
	local.get	245
	local.get	244
	i64.store	__llvm_gcov_ctr.122+16:p2align=0
	local.get	245
	local.get	244
	i64.store	__llvm_gcov_ctr.122+8:p2align=0
	local.get	245
	local.get	244
	i64.store	__llvm_gcov_ctr.122:p2align=0
	i64.const	0
	local.set	246
	i32.const	0
	local.set	247
	local.get	247
	local.get	246
	i64.store	__llvm_gcov_ctr.123+56:p2align=0
	local.get	247
	local.get	246
	i64.store	__llvm_gcov_ctr.123+48:p2align=0
	local.get	247
	local.get	246
	i64.store	__llvm_gcov_ctr.123+40:p2align=0
	local.get	247
	local.get	246
	i64.store	__llvm_gcov_ctr.123+32:p2align=0
	local.get	247
	local.get	246
	i64.store	__llvm_gcov_ctr.123+24:p2align=0
	local.get	247
	local.get	246
	i64.store	__llvm_gcov_ctr.123+16:p2align=0
	local.get	247
	local.get	246
	i64.store	__llvm_gcov_ctr.123+8:p2align=0
	local.get	247
	local.get	246
	i64.store	__llvm_gcov_ctr.123:p2align=0
	i64.const	0
	local.set	248
	i32.const	0
	local.set	249
	local.get	249
	local.get	248
	i64.store	__llvm_gcov_ctr.124+16:p2align=0
	local.get	249
	local.get	248
	i64.store	__llvm_gcov_ctr.124+8:p2align=0
	local.get	249
	local.get	248
	i64.store	__llvm_gcov_ctr.124:p2align=0
	i64.const	0
	local.set	250
	i32.const	0
	local.set	251
	local.get	251
	local.get	250
	i64.store	__llvm_gcov_ctr.125+16:p2align=0
	local.get	251
	local.get	250
	i64.store	__llvm_gcov_ctr.125+8:p2align=0
	local.get	251
	local.get	250
	i64.store	__llvm_gcov_ctr.125:p2align=0
	i32.const	0
	local.set	252
	i64.const	0
	local.set	253
	local.get	252
	local.get	253
	i64.store	__llvm_gcov_ctr.126:p2align=0
	i32.const	0
	local.set	254
	i64.const	0
	local.set	255
	local.get	254
	local.get	255
	i64.store	__llvm_gcov_ctr.127:p2align=0
	i64.const	0
	local.set	256
	i32.const	0
	local.set	257
	local.get	257
	local.get	256
	i64.store	__llvm_gcov_ctr.128+48:p2align=0
	local.get	257
	local.get	256
	i64.store	__llvm_gcov_ctr.128+40:p2align=0
	local.get	257
	local.get	256
	i64.store	__llvm_gcov_ctr.128+32:p2align=0
	local.get	257
	local.get	256
	i64.store	__llvm_gcov_ctr.128+24:p2align=0
	local.get	257
	local.get	256
	i64.store	__llvm_gcov_ctr.128+16:p2align=0
	local.get	257
	local.get	256
	i64.store	__llvm_gcov_ctr.128+8:p2align=0
	local.get	257
	local.get	256
	i64.store	__llvm_gcov_ctr.128:p2align=0
	i64.const	0
	local.set	258
	i32.const	0
	local.set	259
	local.get	259
	local.get	258
	i64.store	__llvm_gcov_ctr.129+24:p2align=0
	local.get	259
	local.get	258
	i64.store	__llvm_gcov_ctr.129+16:p2align=0
	local.get	259
	local.get	258
	i64.store	__llvm_gcov_ctr.129+8:p2align=0
	local.get	259
	local.get	258
	i64.store	__llvm_gcov_ctr.129:p2align=0
	i64.const	0
	local.set	260
	i32.const	0
	local.set	261
	local.get	261
	local.get	260
	i64.store	__llvm_gcov_ctr.130+24:p2align=0
	local.get	261
	local.get	260
	i64.store	__llvm_gcov_ctr.130+16:p2align=0
	local.get	261
	local.get	260
	i64.store	__llvm_gcov_ctr.130+8:p2align=0
	local.get	261
	local.get	260
	i64.store	__llvm_gcov_ctr.130:p2align=0
	i64.const	0
	local.set	262
	i32.const	0
	local.set	263
	local.get	263
	local.get	262
	i64.store	__llvm_gcov_ctr.131+56:p2align=0
	local.get	263
	local.get	262
	i64.store	__llvm_gcov_ctr.131+48:p2align=0
	local.get	263
	local.get	262
	i64.store	__llvm_gcov_ctr.131+40:p2align=0
	local.get	263
	local.get	262
	i64.store	__llvm_gcov_ctr.131+32:p2align=0
	local.get	263
	local.get	262
	i64.store	__llvm_gcov_ctr.131+24:p2align=0
	local.get	263
	local.get	262
	i64.store	__llvm_gcov_ctr.131+16:p2align=0
	local.get	263
	local.get	262
	i64.store	__llvm_gcov_ctr.131+8:p2align=0
	local.get	263
	local.get	262
	i64.store	__llvm_gcov_ctr.131:p2align=0
	i64.const	0
	local.set	264
	i32.const	0
	local.set	265
	local.get	265
	local.get	264
	i64.store	__llvm_gcov_ctr.132+56:p2align=0
	local.get	265
	local.get	264
	i64.store	__llvm_gcov_ctr.132+48:p2align=0
	local.get	265
	local.get	264
	i64.store	__llvm_gcov_ctr.132+40:p2align=0
	local.get	265
	local.get	264
	i64.store	__llvm_gcov_ctr.132+32:p2align=0
	local.get	265
	local.get	264
	i64.store	__llvm_gcov_ctr.132+24:p2align=0
	local.get	265
	local.get	264
	i64.store	__llvm_gcov_ctr.132+16:p2align=0
	local.get	265
	local.get	264
	i64.store	__llvm_gcov_ctr.132+8:p2align=0
	local.get	265
	local.get	264
	i64.store	__llvm_gcov_ctr.132:p2align=0
	i64.const	0
	local.set	266
	i32.const	0
	local.set	267
	local.get	267
	local.get	266
	i64.store	__llvm_gcov_ctr.133+16:p2align=0
	local.get	267
	local.get	266
	i64.store	__llvm_gcov_ctr.133+8:p2align=0
	local.get	267
	local.get	266
	i64.store	__llvm_gcov_ctr.133:p2align=0
	i64.const	0
	local.set	268
	i32.const	0
	local.set	269
	local.get	269
	local.get	268
	i64.store	__llvm_gcov_ctr.134+16:p2align=0
	local.get	269
	local.get	268
	i64.store	__llvm_gcov_ctr.134+8:p2align=0
	local.get	269
	local.get	268
	i64.store	__llvm_gcov_ctr.134:p2align=0
	i64.const	0
	local.set	270
	i32.const	0
	local.set	271
	local.get	271
	local.get	270
	i64.store	__llvm_gcov_ctr.135+16:p2align=0
	local.get	271
	local.get	270
	i64.store	__llvm_gcov_ctr.135+8:p2align=0
	local.get	271
	local.get	270
	i64.store	__llvm_gcov_ctr.135:p2align=0
	i64.const	0
	local.set	272
	i32.const	0
	local.set	273
	local.get	273
	local.get	272
	i64.store	__llvm_gcov_ctr.136+16:p2align=0
	local.get	273
	local.get	272
	i64.store	__llvm_gcov_ctr.136+8:p2align=0
	local.get	273
	local.get	272
	i64.store	__llvm_gcov_ctr.136:p2align=0
	i32.const	0
	local.set	274
	i64.const	0
	local.set	275
	local.get	274
	local.get	275
	i64.store	__llvm_gcov_ctr.137:p2align=0
	i32.const	0
	local.set	276
	i64.const	0
	local.set	277
	local.get	276
	local.get	277
	i64.store	__llvm_gcov_ctr.138:p2align=0
	i32.const	0
	local.set	278
	i64.const	0
	local.set	279
	local.get	278
	local.get	279
	i64.store	__llvm_gcov_ctr.139:p2align=0
	i32.const	0
	local.set	280
	i64.const	0
	local.set	281
	local.get	280
	local.get	281
	i64.store	__llvm_gcov_ctr.140:p2align=0
	i64.const	0
	local.set	282
	i32.const	0
	local.set	283
	local.get	283
	local.get	282
	i64.store	__llvm_gcov_ctr.141+32:p2align=0
	local.get	283
	local.get	282
	i64.store	__llvm_gcov_ctr.141+24:p2align=0
	local.get	283
	local.get	282
	i64.store	__llvm_gcov_ctr.141+16:p2align=0
	local.get	283
	local.get	282
	i64.store	__llvm_gcov_ctr.141+8:p2align=0
	local.get	283
	local.get	282
	i64.store	__llvm_gcov_ctr.141:p2align=0
	i32.const	0
	local.set	284
	i64.const	0
	local.set	285
	local.get	284
	local.get	285
	i64.store	__llvm_gcov_ctr.142:p2align=0
	i64.const	0
	local.set	286
	i32.const	0
	local.set	287
	local.get	287
	local.get	286
	i64.store	__llvm_gcov_ctr.143+32:p2align=0
	local.get	287
	local.get	286
	i64.store	__llvm_gcov_ctr.143+24:p2align=0
	local.get	287
	local.get	286
	i64.store	__llvm_gcov_ctr.143+16:p2align=0
	local.get	287
	local.get	286
	i64.store	__llvm_gcov_ctr.143+8:p2align=0
	local.get	287
	local.get	286
	i64.store	__llvm_gcov_ctr.143:p2align=0
	i32.const	0
	local.set	288
	i64.const	0
	local.set	289
	local.get	288
	local.get	289
	i64.store	__llvm_gcov_ctr.144:p2align=0
	i32.const	0
	local.set	290
	i64.const	0
	local.set	291
	local.get	290
	local.get	291
	i64.store	__llvm_gcov_ctr.145:p2align=0
	i64.const	0
	local.set	292
	i32.const	0
	local.set	293
	local.get	293
	local.get	292
	i64.store	__llvm_gcov_ctr.146+16:p2align=0
	local.get	293
	local.get	292
	i64.store	__llvm_gcov_ctr.146+8:p2align=0
	local.get	293
	local.get	292
	i64.store	__llvm_gcov_ctr.146:p2align=0
	i64.const	0
	local.set	294
	i32.const	0
	local.set	295
	local.get	295
	local.get	294
	i64.store	__llvm_gcov_ctr.147+16:p2align=0
	local.get	295
	local.get	294
	i64.store	__llvm_gcov_ctr.147+8:p2align=0
	local.get	295
	local.get	294
	i64.store	__llvm_gcov_ctr.147:p2align=0
	i64.const	0
	local.set	296
	i32.const	0
	local.set	297
	local.get	297
	local.get	296
	i64.store	__llvm_gcov_ctr.148+16:p2align=0
	local.get	297
	local.get	296
	i64.store	__llvm_gcov_ctr.148+8:p2align=0
	local.get	297
	local.get	296
	i64.store	__llvm_gcov_ctr.148:p2align=0
	i32.const	0
	local.set	298
	i64.const	0
	local.set	299
	local.get	298
	local.get	299
	i64.store	__llvm_gcov_ctr.149:p2align=0
	i32.const	0
	local.set	300
	i64.const	0
	local.set	301
	local.get	300
	local.get	301
	i64.store	__llvm_gcov_ctr.150:p2align=0
	i32.const	0
	local.set	302
	i64.const	0
	local.set	303
	local.get	302
	local.get	303
	i64.store	__llvm_gcov_ctr.151:p2align=0
	i32.const	0
	local.set	304
	i64.const	0
	local.set	305
	local.get	304
	local.get	305
	i64.store	__llvm_gcov_ctr.152:p2align=0
	i32.const	0
	local.set	306
	i64.const	0
	local.set	307
	local.get	306
	local.get	307
	i64.store	__llvm_gcov_ctr.153:p2align=0
	i32.const	0
	local.set	308
	i64.const	0
	local.set	309
	local.get	308
	local.get	309
	i64.store	__llvm_gcov_ctr.154:p2align=0
	i32.const	0
	local.set	310
	i64.const	0
	local.set	311
	local.get	310
	local.get	311
	i64.store	__llvm_gcov_ctr.155:p2align=0
	i32.const	0
	local.set	312
	i64.const	0
	local.set	313
	local.get	312
	local.get	313
	i64.store	__llvm_gcov_ctr.156:p2align=0
	i32.const	0
	local.set	314
	i64.const	0
	local.set	315
	local.get	314
	local.get	315
	i64.store	__llvm_gcov_ctr.157:p2align=0
	i32.const	0
	local.set	316
	i64.const	0
	local.set	317
	local.get	316
	local.get	317
	i64.store	__llvm_gcov_ctr.158:p2align=0
	i32.const	0
	local.set	318
	i64.const	0
	local.set	319
	local.get	318
	local.get	319
	i64.store	__llvm_gcov_ctr.159:p2align=0
	i32.const	0
	local.set	320
	i64.const	0
	local.set	321
	local.get	320
	local.get	321
	i64.store	__llvm_gcov_ctr.160:p2align=0
	i64.const	0
	local.set	322
	i32.const	0
	local.set	323
	local.get	323
	local.get	322
	i64.store	__llvm_gcov_ctr.161+24:p2align=0
	local.get	323
	local.get	322
	i64.store	__llvm_gcov_ctr.161+16:p2align=0
	local.get	323
	local.get	322
	i64.store	__llvm_gcov_ctr.161+8:p2align=0
	local.get	323
	local.get	322
	i64.store	__llvm_gcov_ctr.161:p2align=0
	i64.const	0
	local.set	324
	i32.const	0
	local.set	325
	local.get	325
	local.get	324
	i64.store	__llvm_gcov_ctr.162+24:p2align=0
	local.get	325
	local.get	324
	i64.store	__llvm_gcov_ctr.162+16:p2align=0
	local.get	325
	local.get	324
	i64.store	__llvm_gcov_ctr.162+8:p2align=0
	local.get	325
	local.get	324
	i64.store	__llvm_gcov_ctr.162:p2align=0
	i64.const	0
	local.set	326
	i32.const	0
	local.set	327
	local.get	327
	local.get	326
	i64.store	__llvm_gcov_ctr.163+32:p2align=0
	local.get	327
	local.get	326
	i64.store	__llvm_gcov_ctr.163+24:p2align=0
	local.get	327
	local.get	326
	i64.store	__llvm_gcov_ctr.163+16:p2align=0
	local.get	327
	local.get	326
	i64.store	__llvm_gcov_ctr.163+8:p2align=0
	local.get	327
	local.get	326
	i64.store	__llvm_gcov_ctr.163:p2align=0
	i32.const	0
	local.set	328
	i64.const	0
	local.set	329
	local.get	328
	local.get	329
	i64.store	__llvm_gcov_ctr.164:p2align=0
	i64.const	0
	local.set	330
	i32.const	0
	local.set	331
	local.get	331
	local.get	330
	i64.store	__llvm_gcov_ctr.165+32:p2align=0
	local.get	331
	local.get	330
	i64.store	__llvm_gcov_ctr.165+24:p2align=0
	local.get	331
	local.get	330
	i64.store	__llvm_gcov_ctr.165+16:p2align=0
	local.get	331
	local.get	330
	i64.store	__llvm_gcov_ctr.165+8:p2align=0
	local.get	331
	local.get	330
	i64.store	__llvm_gcov_ctr.165:p2align=0
	return
	end_function
                                        # -- End function
	.section	.text.__llvm_gcov_init,"",@
	.type	__llvm_gcov_init,@function      # -- Begin function __llvm_gcov_init
__llvm_gcov_init:                       # @__llvm_gcov_init
	.functype	__llvm_gcov_init () -> ()
	.local  	i32, i32
# %bb.0:
	i32.const	__llvm_gcov_writeout
	local.set	0
	i32.const	__llvm_gcov_reset
	local.set	1
	local.get	0
	local.get	1
	call	llvm_gcov_init
	return
	end_function
                                        # -- End function
	.section	.text.__llvm_profile_runtime_user,"GR",@,__llvm_profile_runtime_user,comdat
	.hidden	__llvm_profile_runtime_user     # -- Begin function __llvm_profile_runtime_user
	.weak	__llvm_profile_runtime_user
	.type	__llvm_profile_runtime_user,@function
__llvm_profile_runtime_user:            # @__llvm_profile_runtime_user
	.functype	__llvm_profile_runtime_user () -> (i32)
	.local  	i32, i32
# %bb.0:
	i32.const	0
	local.set	0
	local.get	0
	i32.load	__llvm_profile_runtime
	local.set	1
	local.get	1
	return
	end_function
                                        # -- End function
	.section	.text.__llvm_profile_register_functions,"",@
	.type	__llvm_profile_register_functions,@function # -- Begin function __llvm_profile_register_functions
__llvm_profile_register_functions:      # @__llvm_profile_register_functions
	.functype	__llvm_profile_register_functions () -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64
# %bb.0:
	i32.const	.L__profd_make_ti
	local.set	0
	local.get	0
	call	__llvm_profile_register_function
	i32.const	.L__profd_make_tu
	local.set	1
	local.get	1
	call	__llvm_profile_register_function
	i32.const	.L__profd_memmove
	local.set	2
	local.get	2
	call	__llvm_profile_register_function
	i32.const	.L__profd_memccpy
	local.set	3
	local.get	3
	call	__llvm_profile_register_function
	i32.const	.L__profd_memchr
	local.set	4
	local.get	4
	call	__llvm_profile_register_function
	i32.const	.L__profd_memcmp
	local.set	5
	local.get	5
	call	__llvm_profile_register_function
	i32.const	.L__profd_memcpy
	local.set	6
	local.get	6
	call	__llvm_profile_register_function
	i32.const	.L__profd_memrchr
	local.set	7
	local.get	7
	call	__llvm_profile_register_function
	i32.const	.L__profd_memset
	local.set	8
	local.get	8
	call	__llvm_profile_register_function
	i32.const	.L__profd_stpcpy
	local.set	9
	local.get	9
	call	__llvm_profile_register_function
	i32.const	.L__profd_strchrnul
	local.set	10
	local.get	10
	call	__llvm_profile_register_function
	i32.const	.L__profd_strchr
	local.set	11
	local.get	11
	call	__llvm_profile_register_function
	i32.const	.L__profd_strcmp
	local.set	12
	local.get	12
	call	__llvm_profile_register_function
	i32.const	.L__profd_strlen
	local.set	13
	local.get	13
	call	__llvm_profile_register_function
	i32.const	.L__profd_strncmp
	local.set	14
	local.get	14
	call	__llvm_profile_register_function
	i32.const	.L__profd_swab
	local.set	15
	local.get	15
	call	__llvm_profile_register_function
	i32.const	.L__profd_isalpha
	local.set	16
	local.get	16
	call	__llvm_profile_register_function
	i32.const	.L__profd_isascii
	local.set	17
	local.get	17
	call	__llvm_profile_register_function
	i32.const	.L__profd_isblank
	local.set	18
	local.get	18
	call	__llvm_profile_register_function
	i32.const	.L__profd_iscntrl
	local.set	19
	local.get	19
	call	__llvm_profile_register_function
	i32.const	.L__profd_isdigit
	local.set	20
	local.get	20
	call	__llvm_profile_register_function
	i32.const	.L__profd_isgraph
	local.set	21
	local.get	21
	call	__llvm_profile_register_function
	i32.const	.L__profd_islower
	local.set	22
	local.get	22
	call	__llvm_profile_register_function
	i32.const	.L__profd_isprint
	local.set	23
	local.get	23
	call	__llvm_profile_register_function
	i32.const	.L__profd_isspace
	local.set	24
	local.get	24
	call	__llvm_profile_register_function
	i32.const	.L__profd_isupper
	local.set	25
	local.get	25
	call	__llvm_profile_register_function
	i32.const	.L__profd_iswcntrl
	local.set	26
	local.get	26
	call	__llvm_profile_register_function
	i32.const	.L__profd_iswdigit
	local.set	27
	local.get	27
	call	__llvm_profile_register_function
	i32.const	.L__profd_iswprint
	local.set	28
	local.get	28
	call	__llvm_profile_register_function
	i32.const	.L__profd_iswxdigit
	local.set	29
	local.get	29
	call	__llvm_profile_register_function
	i32.const	.L__profd_toascii
	local.set	30
	local.get	30
	call	__llvm_profile_register_function
	i32.const	.L__profd_fdim
	local.set	31
	local.get	31
	call	__llvm_profile_register_function
	i32.const	.L__profd_fdimf
	local.set	32
	local.get	32
	call	__llvm_profile_register_function
	i32.const	.L__profd_fmax
	local.set	33
	local.get	33
	call	__llvm_profile_register_function
	i32.const	.L__profd_fmaxf
	local.set	34
	local.get	34
	call	__llvm_profile_register_function
	i32.const	.L__profd_fmaxl
	local.set	35
	local.get	35
	call	__llvm_profile_register_function
	i32.const	.L__profd_fmin
	local.set	36
	local.get	36
	call	__llvm_profile_register_function
	i32.const	.L__profd_fminf
	local.set	37
	local.get	37
	call	__llvm_profile_register_function
	i32.const	.L__profd_fminl
	local.set	38
	local.get	38
	call	__llvm_profile_register_function
	i32.const	.L__profd_l64a
	local.set	39
	local.get	39
	call	__llvm_profile_register_function
	i32.const	.L__profd_srand
	local.set	40
	local.get	40
	call	__llvm_profile_register_function
	i32.const	.L__profd_rand
	local.set	41
	local.get	41
	call	__llvm_profile_register_function
	i32.const	.L__profd_insque
	local.set	42
	local.get	42
	call	__llvm_profile_register_function
	i32.const	.L__profd_remque
	local.set	43
	local.get	43
	call	__llvm_profile_register_function
	i32.const	.L__profd_lsearch
	local.set	44
	local.get	44
	call	__llvm_profile_register_function
	i32.const	.L__profd_lfind
	local.set	45
	local.get	45
	call	__llvm_profile_register_function
	i32.const	.L__profd_abs
	local.set	46
	local.get	46
	call	__llvm_profile_register_function
	i32.const	.L__profd_atoi
	local.set	47
	local.get	47
	call	__llvm_profile_register_function
	i32.const	.L__profd_atol
	local.set	48
	local.get	48
	call	__llvm_profile_register_function
	i32.const	.L__profd_atoll
	local.set	49
	local.get	49
	call	__llvm_profile_register_function
	i32.const	.L__profd_bsearch
	local.set	50
	local.get	50
	call	__llvm_profile_register_function
	i32.const	.L__profd_bsearch_r
	local.set	51
	local.get	51
	call	__llvm_profile_register_function
	i32.const	.L__profd_div
	local.set	52
	local.get	52
	call	__llvm_profile_register_function
	i32.const	.L__profd_imaxabs
	local.set	53
	local.get	53
	call	__llvm_profile_register_function
	i32.const	.L__profd_imaxdiv
	local.set	54
	local.get	54
	call	__llvm_profile_register_function
	i32.const	.L__profd_labs
	local.set	55
	local.get	55
	call	__llvm_profile_register_function
	i32.const	.L__profd_ldiv
	local.set	56
	local.get	56
	call	__llvm_profile_register_function
	i32.const	.L__profd_llabs
	local.set	57
	local.get	57
	call	__llvm_profile_register_function
	i32.const	.L__profd_lldiv
	local.set	58
	local.get	58
	call	__llvm_profile_register_function
	i32.const	.L__profd_wcschr
	local.set	59
	local.get	59
	call	__llvm_profile_register_function
	i32.const	.L__profd_wcscmp
	local.set	60
	local.get	60
	call	__llvm_profile_register_function
	i32.const	.L__profd_wcscpy
	local.set	61
	local.get	61
	call	__llvm_profile_register_function
	i32.const	.L__profd_wcslen
	local.set	62
	local.get	62
	call	__llvm_profile_register_function
	i32.const	.L__profd_wcsncmp
	local.set	63
	local.get	63
	call	__llvm_profile_register_function
	i32.const	.L__profd_wmemchr
	local.set	64
	local.get	64
	call	__llvm_profile_register_function
	i32.const	.L__profd_wmemcmp
	local.set	65
	local.get	65
	call	__llvm_profile_register_function
	i32.const	.L__profd_wmemcpy
	local.set	66
	local.get	66
	call	__llvm_profile_register_function
	i32.const	.L__profd_wmemmove
	local.set	67
	local.get	67
	call	__llvm_profile_register_function
	i32.const	.L__profd_wmemset
	local.set	68
	local.get	68
	call	__llvm_profile_register_function
	i32.const	.L__profd_bcopy
	local.set	69
	local.get	69
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotl64
	local.set	70
	local.get	70
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotr64
	local.set	71
	local.get	71
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotl32
	local.set	72
	local.get	72
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotr32
	local.set	73
	local.get	73
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotl_sz
	local.set	74
	local.get	74
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotr_sz
	local.set	75
	local.get	75
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotl16
	local.set	76
	local.get	76
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotr16
	local.set	77
	local.get	77
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotl8
	local.set	78
	local.get	78
	call	__llvm_profile_register_function
	i32.const	.L__profd_rotr8
	local.set	79
	local.get	79
	call	__llvm_profile_register_function
	i32.const	.L__profd_bswap_16
	local.set	80
	local.get	80
	call	__llvm_profile_register_function
	i32.const	.L__profd_bswap_32
	local.set	81
	local.get	81
	call	__llvm_profile_register_function
	i32.const	.L__profd_bswap_64
	local.set	82
	local.get	82
	call	__llvm_profile_register_function
	i32.const	.L__profd_ffs
	local.set	83
	local.get	83
	call	__llvm_profile_register_function
	i32.const	.L__profd_libiberty_ffs
	local.set	84
	local.get	84
	call	__llvm_profile_register_function
	i32.const	.L__profd_gl_isinff
	local.set	85
	local.get	85
	call	__llvm_profile_register_function
	i32.const	.L__profd_gl_isinfd
	local.set	86
	local.get	86
	call	__llvm_profile_register_function
	i32.const	.L__profd_gl_isinfl
	local.set	87
	local.get	87
	call	__llvm_profile_register_function
	i32.const	.L__profd__Qp_itoq
	local.set	88
	local.get	88
	call	__llvm_profile_register_function
	i32.const	.L__profd_ldexpf
	local.set	89
	local.get	89
	call	__llvm_profile_register_function
	i32.const	.L__profd_ldexp
	local.set	90
	local.get	90
	call	__llvm_profile_register_function
	i32.const	.L__profd_ldexpl
	local.set	91
	local.get	91
	call	__llvm_profile_register_function
	i32.const	.L__profd_memxor
	local.set	92
	local.get	92
	call	__llvm_profile_register_function
	i32.const	.L__profd_strncat
	local.set	93
	local.get	93
	call	__llvm_profile_register_function
	i32.const	.L__profd_strnlen
	local.set	94
	local.get	94
	call	__llvm_profile_register_function
	i32.const	.L__profd_strpbrk
	local.set	95
	local.get	95
	call	__llvm_profile_register_function
	i32.const	.L__profd_strrchr
	local.set	96
	local.get	96
	call	__llvm_profile_register_function
	i32.const	.L__profd_strstr
	local.set	97
	local.get	97
	call	__llvm_profile_register_function
	i32.const	.L__profd_copysign
	local.set	98
	local.get	98
	call	__llvm_profile_register_function
	i32.const	.L__profd_memmem
	local.set	99
	local.get	99
	call	__llvm_profile_register_function
	i32.const	.L__profd_mempcpy
	local.set	100
	local.get	100
	call	__llvm_profile_register_function
	i32.const	.L__profd_frexp
	local.set	101
	local.get	101
	call	__llvm_profile_register_function
	i32.const	.L__profd___muldi3
	local.set	102
	local.get	102
	call	__llvm_profile_register_function
	i32.const	.L__profd_udivmodsi4
	local.set	103
	local.get	103
	call	__llvm_profile_register_function
	i32.const	.L__profd___clrsbqi2
	local.set	104
	local.get	104
	call	__llvm_profile_register_function
	i32.const	.L__profd___clrsbdi2
	local.set	105
	local.get	105
	call	__llvm_profile_register_function
	i32.const	.L__profd___mulsi3
	local.set	106
	local.get	106
	call	__llvm_profile_register_function
	i32.const	.L__profd___cmovd
	local.set	107
	local.get	107
	call	__llvm_profile_register_function
	i32.const	.L__profd___cmovh
	local.set	108
	local.get	108
	call	__llvm_profile_register_function
	i32.const	.L__profd___cmovw
	local.set	109
	local.get	109
	call	__llvm_profile_register_function
	i32.const	.L__profd___modi
	local.set	110
	local.get	110
	call	__llvm_profile_register_function
	i32.const	.L__profd___uitod
	local.set	111
	local.get	111
	call	__llvm_profile_register_function
	i32.const	.L__profd___uitof
	local.set	112
	local.get	112
	call	__llvm_profile_register_function
	i32.const	.L__profd___ulltod
	local.set	113
	local.get	113
	call	__llvm_profile_register_function
	i32.const	.L__profd___ulltof
	local.set	114
	local.get	114
	call	__llvm_profile_register_function
	i32.const	.L__profd___umodi
	local.set	115
	local.get	115
	call	__llvm_profile_register_function
	i32.const	.L__profd___clzhi2
	local.set	116
	local.get	116
	call	__llvm_profile_register_function
	i32.const	.L__profd___ctzhi2
	local.set	117
	local.get	117
	call	__llvm_profile_register_function
	i32.const	.L__profd___fixunssfsi
	local.set	118
	local.get	118
	call	__llvm_profile_register_function
	i32.const	.L__profd___parityhi2
	local.set	119
	local.get	119
	call	__llvm_profile_register_function
	i32.const	.L__profd___popcounthi2
	local.set	120
	local.get	120
	call	__llvm_profile_register_function
	i32.const	.L__profd___mulsi3_iq2000
	local.set	121
	local.get	121
	call	__llvm_profile_register_function
	i32.const	.L__profd___mulsi3_lm32
	local.set	122
	local.get	122
	call	__llvm_profile_register_function
	i32.const	.L__profd___udivmodsi4
	local.set	123
	local.get	123
	call	__llvm_profile_register_function
	i32.const	.L__profd___mspabi_cmpf
	local.set	124
	local.get	124
	call	__llvm_profile_register_function
	i32.const	.L__profd___mspabi_cmpd
	local.set	125
	local.get	125
	call	__llvm_profile_register_function
	i32.const	.L__profd___mspabi_mpysll
	local.set	126
	local.get	126
	call	__llvm_profile_register_function
	i32.const	.L__profd___mspabi_mpyull
	local.set	127
	local.get	127
	call	__llvm_profile_register_function
	i32.const	.L__profd___mulhi3
	local.set	128
	local.get	128
	call	__llvm_profile_register_function
	i32.const	.L__profd___divsi3
	local.set	129
	local.get	129
	call	__llvm_profile_register_function
	i32.const	.L__profd___modsi3
	local.set	130
	local.get	130
	call	__llvm_profile_register_function
	i32.const	.L__profd___udivmodhi4
	local.set	131
	local.get	131
	call	__llvm_profile_register_function
	i32.const	.L__profd___udivmodsi4_libgcc
	local.set	132
	local.get	132
	call	__llvm_profile_register_function
	i32.const	.L__profd___ashldi3
	local.set	133
	local.get	133
	call	__llvm_profile_register_function
	i32.const	.L__profd___ashlti3
	local.set	134
	local.get	134
	call	__llvm_profile_register_function
	i32.const	.L__profd___ashrdi3
	local.set	135
	local.get	135
	call	__llvm_profile_register_function
	i32.const	.L__profd___ashrti3
	local.set	136
	local.get	136
	call	__llvm_profile_register_function
	i32.const	.L__profd___bswapdi2
	local.set	137
	local.get	137
	call	__llvm_profile_register_function
	i32.const	.L__profd___bswapsi2
	local.set	138
	local.get	138
	call	__llvm_profile_register_function
	i32.const	.L__profd___clzsi2
	local.set	139
	local.get	139
	call	__llvm_profile_register_function
	i32.const	.L__profd___clzti2
	local.set	140
	local.get	140
	call	__llvm_profile_register_function
	i32.const	.L__profd___cmpdi2
	local.set	141
	local.get	141
	call	__llvm_profile_register_function
	i32.const	.L__profd___aeabi_lcmp
	local.set	142
	local.get	142
	call	__llvm_profile_register_function
	i32.const	.L__profd___cmpti2
	local.set	143
	local.get	143
	call	__llvm_profile_register_function
	i32.const	.L__profd___ctzsi2
	local.set	144
	local.get	144
	call	__llvm_profile_register_function
	i32.const	.L__profd___ctzti2
	local.set	145
	local.get	145
	call	__llvm_profile_register_function
	i32.const	.L__profd___ffsti2
	local.set	146
	local.get	146
	call	__llvm_profile_register_function
	i32.const	.L__profd___lshrdi3
	local.set	147
	local.get	147
	call	__llvm_profile_register_function
	i32.const	.L__profd___lshrti3
	local.set	148
	local.get	148
	call	__llvm_profile_register_function
	i32.const	.L__profd___muldsi3
	local.set	149
	local.get	149
	call	__llvm_profile_register_function
	i32.const	.L__profd___muldi3_compiler_rt
	local.set	150
	local.get	150
	call	__llvm_profile_register_function
	i32.const	.L__profd___mulddi3
	local.set	151
	local.get	151
	call	__llvm_profile_register_function
	i32.const	.L__profd___multi3
	local.set	152
	local.get	152
	call	__llvm_profile_register_function
	i32.const	.L__profd___negdi2
	local.set	153
	local.get	153
	call	__llvm_profile_register_function
	i32.const	.L__profd___negti2
	local.set	154
	local.get	154
	call	__llvm_profile_register_function
	i32.const	.L__profd___paritydi2
	local.set	155
	local.get	155
	call	__llvm_profile_register_function
	i32.const	.L__profd___parityti2
	local.set	156
	local.get	156
	call	__llvm_profile_register_function
	i32.const	.L__profd___paritysi2
	local.set	157
	local.get	157
	call	__llvm_profile_register_function
	i32.const	.L__profd___popcountdi2
	local.set	158
	local.get	158
	call	__llvm_profile_register_function
	i32.const	.L__profd___popcountsi2
	local.set	159
	local.get	159
	call	__llvm_profile_register_function
	i32.const	.L__profd___popcountti2
	local.set	160
	local.get	160
	call	__llvm_profile_register_function
	i32.const	.L__profd___powidf2
	local.set	161
	local.get	161
	call	__llvm_profile_register_function
	i32.const	.L__profd___powisf2
	local.set	162
	local.get	162
	call	__llvm_profile_register_function
	i32.const	.L__profd___ucmpdi2
	local.set	163
	local.get	163
	call	__llvm_profile_register_function
	i32.const	.L__profd___aeabi_ulcmp
	local.set	164
	local.get	164
	call	__llvm_profile_register_function
	i32.const	.L__profd___ucmpti2
	local.set	165
	local.get	165
	call	__llvm_profile_register_function
	i32.const	.L__llvm_prf_nm
	local.set	166
	i64.const	593
	local.set	167
	local.get	166
	local.get	167
	call	__llvm_profile_register_names_function
	return
	end_function
                                        # -- End function
	.section	.text.__llvm_profile_init,"",@
	.type	__llvm_profile_init,@function   # -- Begin function __llvm_profile_init
__llvm_profile_init:                    # @__llvm_profile_init
	.functype	__llvm_profile_init () -> ()
# %bb.0:
	call	__llvm_profile_register_functions
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

	.type	__llvm_gcov_ctr,@object         # @__llvm_gcov_ctr
	.section	.bss.__llvm_gcov_ctr,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr:
	.skip	8
	.size	__llvm_gcov_ctr, 8

	.type	__llvm_gcov_ctr.1,@object       # @__llvm_gcov_ctr.1
	.section	.bss.__llvm_gcov_ctr.1,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.1:
	.skip	8
	.size	__llvm_gcov_ctr.1, 8

	.type	__llvm_gcov_ctr.2,@object       # @__llvm_gcov_ctr.2
	.section	.bss.__llvm_gcov_ctr.2,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.2:
	.skip	40
	.size	__llvm_gcov_ctr.2, 40

	.type	__llvm_gcov_ctr.3,@object       # @__llvm_gcov_ctr.3
	.section	.bss.__llvm_gcov_ctr.3,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.3:
	.skip	40
	.size	__llvm_gcov_ctr.3, 40

	.type	__llvm_gcov_ctr.4,@object       # @__llvm_gcov_ctr.4
	.section	.bss.__llvm_gcov_ctr.4,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.4:
	.skip	40
	.size	__llvm_gcov_ctr.4, 40

	.type	__llvm_gcov_ctr.5,@object       # @__llvm_gcov_ctr.5
	.section	.bss.__llvm_gcov_ctr.5,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.5:
	.skip	40
	.size	__llvm_gcov_ctr.5, 40

	.type	__llvm_gcov_ctr.6,@object       # @__llvm_gcov_ctr.6
	.section	.bss.__llvm_gcov_ctr.6,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.6:
	.skip	16
	.size	__llvm_gcov_ctr.6, 16

	.type	__llvm_gcov_ctr.7,@object       # @__llvm_gcov_ctr.7
	.section	.bss.__llvm_gcov_ctr.7,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.7:
	.skip	24
	.size	__llvm_gcov_ctr.7, 24

	.type	__llvm_gcov_ctr.8,@object       # @__llvm_gcov_ctr.8
	.section	.bss.__llvm_gcov_ctr.8,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.8:
	.skip	16
	.size	__llvm_gcov_ctr.8, 16

	.type	__llvm_gcov_ctr.9,@object       # @__llvm_gcov_ctr.9
	.section	.bss.__llvm_gcov_ctr.9,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.9:
	.skip	16
	.size	__llvm_gcov_ctr.9, 16

	.type	__llvm_gcov_ctr.10,@object      # @__llvm_gcov_ctr.10
	.section	.bss.__llvm_gcov_ctr.10,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.10:
	.skip	32
	.size	__llvm_gcov_ctr.10, 32

	.type	__llvm_gcov_ctr.11,@object      # @__llvm_gcov_ctr.11
	.section	.bss.__llvm_gcov_ctr.11,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.11:
	.skip	24
	.size	__llvm_gcov_ctr.11, 24

	.type	__llvm_gcov_ctr.12,@object      # @__llvm_gcov_ctr.12
	.section	.bss.__llvm_gcov_ctr.12,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.12:
	.skip	32
	.size	__llvm_gcov_ctr.12, 32

	.type	__llvm_gcov_ctr.13,@object      # @__llvm_gcov_ctr.13
	.section	.bss.__llvm_gcov_ctr.13,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.13:
	.skip	16
	.size	__llvm_gcov_ctr.13, 16

	.type	__llvm_gcov_ctr.14,@object      # @__llvm_gcov_ctr.14
	.section	.bss.__llvm_gcov_ctr.14,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.14:
	.skip	56
	.size	__llvm_gcov_ctr.14, 56

	.type	__llvm_gcov_ctr.15,@object      # @__llvm_gcov_ctr.15
	.section	.bss.__llvm_gcov_ctr.15,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.15:
	.skip	16
	.size	__llvm_gcov_ctr.15, 16

	.type	__llvm_gcov_ctr.16,@object      # @__llvm_gcov_ctr.16
	.section	.bss.__llvm_gcov_ctr.16,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.16:
	.skip	8
	.size	__llvm_gcov_ctr.16, 8

	.type	__llvm_gcov_ctr.17,@object      # @__llvm_gcov_ctr.17
	.section	.bss.__llvm_gcov_ctr.17,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.17:
	.skip	8
	.size	__llvm_gcov_ctr.17, 8

	.type	__llvm_gcov_ctr.18,@object      # @__llvm_gcov_ctr.18
	.section	.bss.__llvm_gcov_ctr.18,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.18:
	.skip	24
	.size	__llvm_gcov_ctr.18, 24

	.type	__llvm_gcov_ctr.19,@object      # @__llvm_gcov_ctr.19
	.section	.bss.__llvm_gcov_ctr.19,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.19:
	.skip	24
	.size	__llvm_gcov_ctr.19, 24

	.type	__llvm_gcov_ctr.20,@object      # @__llvm_gcov_ctr.20
	.section	.bss.__llvm_gcov_ctr.20,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.20:
	.skip	8
	.size	__llvm_gcov_ctr.20, 8

	.type	__llvm_gcov_ctr.21,@object      # @__llvm_gcov_ctr.21
	.section	.bss.__llvm_gcov_ctr.21,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.21:
	.skip	8
	.size	__llvm_gcov_ctr.21, 8

	.type	__llvm_gcov_ctr.22,@object      # @__llvm_gcov_ctr.22
	.section	.bss.__llvm_gcov_ctr.22,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.22:
	.skip	8
	.size	__llvm_gcov_ctr.22, 8

	.type	__llvm_gcov_ctr.23,@object      # @__llvm_gcov_ctr.23
	.section	.bss.__llvm_gcov_ctr.23,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.23:
	.skip	8
	.size	__llvm_gcov_ctr.23, 8

	.type	__llvm_gcov_ctr.24,@object      # @__llvm_gcov_ctr.24
	.section	.bss.__llvm_gcov_ctr.24,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.24:
	.skip	24
	.size	__llvm_gcov_ctr.24, 24

	.type	__llvm_gcov_ctr.25,@object      # @__llvm_gcov_ctr.25
	.section	.bss.__llvm_gcov_ctr.25,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.25:
	.skip	8
	.size	__llvm_gcov_ctr.25, 8

	.type	__llvm_gcov_ctr.26,@object      # @__llvm_gcov_ctr.26
	.section	.bss.__llvm_gcov_ctr.26,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.26:
	.skip	40
	.size	__llvm_gcov_ctr.26, 40

	.type	__llvm_gcov_ctr.27,@object      # @__llvm_gcov_ctr.27
	.section	.bss.__llvm_gcov_ctr.27,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.27:
	.skip	8
	.size	__llvm_gcov_ctr.27, 8

	.type	__llvm_gcov_ctr.28,@object      # @__llvm_gcov_ctr.28
	.section	.bss.__llvm_gcov_ctr.28,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.28:
	.skip	56
	.size	__llvm_gcov_ctr.28, 56

	.type	__llvm_gcov_ctr.29,@object      # @__llvm_gcov_ctr.29
	.section	.bss.__llvm_gcov_ctr.29,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.29:
	.skip	24
	.size	__llvm_gcov_ctr.29, 24

	.type	__llvm_gcov_ctr.30,@object      # @__llvm_gcov_ctr.30
	.section	.bss.__llvm_gcov_ctr.30,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.30:
	.skip	8
	.size	__llvm_gcov_ctr.30, 8

	.type	__llvm_gcov_ctr.31,@object      # @__llvm_gcov_ctr.31
	.section	.bss.__llvm_gcov_ctr.31,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.31:
	.skip	32
	.size	__llvm_gcov_ctr.31, 32

	.type	__llvm_gcov_ctr.32,@object      # @__llvm_gcov_ctr.32
	.section	.bss.__llvm_gcov_ctr.32,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.32:
	.skip	32
	.size	__llvm_gcov_ctr.32, 32

	.type	__llvm_gcov_ctr.33,@object      # @__llvm_gcov_ctr.33
	.section	.bss.__llvm_gcov_ctr.33,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.33:
	.skip	48
	.size	__llvm_gcov_ctr.33, 48

	.type	__llvm_gcov_ctr.34,@object      # @__llvm_gcov_ctr.34
	.section	.bss.__llvm_gcov_ctr.34,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.34:
	.skip	48
	.size	__llvm_gcov_ctr.34, 48

	.type	__llvm_gcov_ctr.35,@object      # @__llvm_gcov_ctr.35
	.section	.bss.__llvm_gcov_ctr.35,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.35:
	.skip	48
	.size	__llvm_gcov_ctr.35, 48

	.type	__llvm_gcov_ctr.36,@object      # @__llvm_gcov_ctr.36
	.section	.bss.__llvm_gcov_ctr.36,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.36:
	.skip	48
	.size	__llvm_gcov_ctr.36, 48

	.type	__llvm_gcov_ctr.37,@object      # @__llvm_gcov_ctr.37
	.section	.bss.__llvm_gcov_ctr.37,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.37:
	.skip	48
	.size	__llvm_gcov_ctr.37, 48

	.type	__llvm_gcov_ctr.38,@object      # @__llvm_gcov_ctr.38
	.section	.bss.__llvm_gcov_ctr.38,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.38:
	.skip	48
	.size	__llvm_gcov_ctr.38, 48

	.type	__llvm_gcov_ctr.39,@object      # @__llvm_gcov_ctr.39
	.section	.bss.__llvm_gcov_ctr.39,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.39:
	.skip	16
	.size	__llvm_gcov_ctr.39, 16

	.type	__llvm_gcov_ctr.40,@object      # @__llvm_gcov_ctr.40
	.section	.bss.__llvm_gcov_ctr.40,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.40:
	.skip	8
	.size	__llvm_gcov_ctr.40, 8

	.type	__llvm_gcov_ctr.41,@object      # @__llvm_gcov_ctr.41
	.section	.bss.__llvm_gcov_ctr.41,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.41:
	.skip	8
	.size	__llvm_gcov_ctr.41, 8

	.type	__llvm_gcov_ctr.42,@object      # @__llvm_gcov_ctr.42
	.section	.bss.__llvm_gcov_ctr.42,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.42:
	.skip	24
	.size	__llvm_gcov_ctr.42, 24

	.type	__llvm_gcov_ctr.43,@object      # @__llvm_gcov_ctr.43
	.section	.bss.__llvm_gcov_ctr.43,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.43:
	.skip	24
	.size	__llvm_gcov_ctr.43, 24

	.type	__llvm_gcov_ctr.44,@object      # @__llvm_gcov_ctr.44
	.section	.bss.__llvm_gcov_ctr.44,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.44:
	.skip	24
	.size	__llvm_gcov_ctr.44, 24

	.type	__llvm_gcov_ctr.45,@object      # @__llvm_gcov_ctr.45
	.section	.bss.__llvm_gcov_ctr.45,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.45:
	.skip	24
	.size	__llvm_gcov_ctr.45, 24

	.type	__llvm_gcov_ctr.46,@object      # @__llvm_gcov_ctr.46
	.section	.bss.__llvm_gcov_ctr.46,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.46:
	.skip	16
	.size	__llvm_gcov_ctr.46, 16

	.type	__llvm_gcov_ctr.47,@object      # @__llvm_gcov_ctr.47
	.section	.bss.__llvm_gcov_ctr.47,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.47:
	.skip	48
	.size	__llvm_gcov_ctr.47, 48

	.type	__llvm_gcov_ctr.48,@object      # @__llvm_gcov_ctr.48
	.section	.bss.__llvm_gcov_ctr.48,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.48:
	.skip	48
	.size	__llvm_gcov_ctr.48, 48

	.type	__llvm_gcov_ctr.49,@object      # @__llvm_gcov_ctr.49
	.section	.bss.__llvm_gcov_ctr.49,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.49:
	.skip	48
	.size	__llvm_gcov_ctr.49, 48

	.type	__llvm_gcov_ctr.50,@object      # @__llvm_gcov_ctr.50
	.section	.bss.__llvm_gcov_ctr.50,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.50:
	.skip	32
	.size	__llvm_gcov_ctr.50, 32

	.type	__llvm_gcov_ctr.51,@object      # @__llvm_gcov_ctr.51
	.section	.bss.__llvm_gcov_ctr.51,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.51:
	.skip	32
	.size	__llvm_gcov_ctr.51, 32

	.type	__llvm_gcov_ctr.52,@object      # @__llvm_gcov_ctr.52
	.section	.bss.__llvm_gcov_ctr.52,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.52:
	.skip	8
	.size	__llvm_gcov_ctr.52, 8

	.type	__llvm_gcov_ctr.53,@object      # @__llvm_gcov_ctr.53
	.section	.bss.__llvm_gcov_ctr.53,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.53:
	.skip	16
	.size	__llvm_gcov_ctr.53, 16

	.type	__llvm_gcov_ctr.54,@object      # @__llvm_gcov_ctr.54
	.section	.bss.__llvm_gcov_ctr.54,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.54:
	.skip	8
	.size	__llvm_gcov_ctr.54, 8

	.type	__llvm_gcov_ctr.55,@object      # @__llvm_gcov_ctr.55
	.section	.bss.__llvm_gcov_ctr.55,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.55:
	.skip	16
	.size	__llvm_gcov_ctr.55, 16

	.type	__llvm_gcov_ctr.56,@object      # @__llvm_gcov_ctr.56
	.section	.bss.__llvm_gcov_ctr.56,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.56:
	.skip	8
	.size	__llvm_gcov_ctr.56, 8

	.type	__llvm_gcov_ctr.57,@object      # @__llvm_gcov_ctr.57
	.section	.bss.__llvm_gcov_ctr.57,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.57:
	.skip	16
	.size	__llvm_gcov_ctr.57, 16

	.type	__llvm_gcov_ctr.58,@object      # @__llvm_gcov_ctr.58
	.section	.bss.__llvm_gcov_ctr.58,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.58:
	.skip	8
	.size	__llvm_gcov_ctr.58, 8

	.type	__llvm_gcov_ctr.59,@object      # @__llvm_gcov_ctr.59
	.section	.bss.__llvm_gcov_ctr.59,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.59:
	.skip	40
	.size	__llvm_gcov_ctr.59, 40

	.type	__llvm_gcov_ctr.60,@object      # @__llvm_gcov_ctr.60
	.section	.bss.__llvm_gcov_ctr.60,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.60:
	.skip	48
	.size	__llvm_gcov_ctr.60, 48

	.type	__llvm_gcov_ctr.61,@object      # @__llvm_gcov_ctr.61
	.section	.bss.__llvm_gcov_ctr.61,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.61:
	.skip	16
	.size	__llvm_gcov_ctr.61, 16

	.type	__llvm_gcov_ctr.62,@object      # @__llvm_gcov_ctr.62
	.section	.bss.__llvm_gcov_ctr.62,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.62:
	.skip	16
	.size	__llvm_gcov_ctr.62, 16

	.type	__llvm_gcov_ctr.63,@object      # @__llvm_gcov_ctr.63
	.section	.bss.__llvm_gcov_ctr.63,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.63:
	.skip	64
	.size	__llvm_gcov_ctr.63, 64

	.type	__llvm_gcov_ctr.64,@object      # @__llvm_gcov_ctr.64
	.section	.bss.__llvm_gcov_ctr.64,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.64:
	.skip	40
	.size	__llvm_gcov_ctr.64, 40

	.type	__llvm_gcov_ctr.65,@object      # @__llvm_gcov_ctr.65
	.section	.bss.__llvm_gcov_ctr.65,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.65:
	.skip	48
	.size	__llvm_gcov_ctr.65, 48

	.type	__llvm_gcov_ctr.66,@object      # @__llvm_gcov_ctr.66
	.section	.bss.__llvm_gcov_ctr.66,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.66:
	.skip	16
	.size	__llvm_gcov_ctr.66, 16

	.type	__llvm_gcov_ctr.67,@object      # @__llvm_gcov_ctr.67
	.section	.bss.__llvm_gcov_ctr.67,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.67:
	.skip	40
	.size	__llvm_gcov_ctr.67, 40

	.type	__llvm_gcov_ctr.68,@object      # @__llvm_gcov_ctr.68
	.section	.bss.__llvm_gcov_ctr.68,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.68:
	.skip	16
	.size	__llvm_gcov_ctr.68, 16

	.type	__llvm_gcov_ctr.69,@object      # @__llvm_gcov_ctr.69
	.section	.bss.__llvm_gcov_ctr.69,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.69:
	.skip	40
	.size	__llvm_gcov_ctr.69, 40

	.type	__llvm_gcov_ctr.70,@object      # @__llvm_gcov_ctr.70
	.section	.bss.__llvm_gcov_ctr.70,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.70:
	.skip	8
	.size	__llvm_gcov_ctr.70, 8

	.type	__llvm_gcov_ctr.71,@object      # @__llvm_gcov_ctr.71
	.section	.bss.__llvm_gcov_ctr.71,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.71:
	.skip	8
	.size	__llvm_gcov_ctr.71, 8

	.type	__llvm_gcov_ctr.72,@object      # @__llvm_gcov_ctr.72
	.section	.bss.__llvm_gcov_ctr.72,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.72:
	.skip	8
	.size	__llvm_gcov_ctr.72, 8

	.type	__llvm_gcov_ctr.73,@object      # @__llvm_gcov_ctr.73
	.section	.bss.__llvm_gcov_ctr.73,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.73:
	.skip	8
	.size	__llvm_gcov_ctr.73, 8

	.type	__llvm_gcov_ctr.74,@object      # @__llvm_gcov_ctr.74
	.section	.bss.__llvm_gcov_ctr.74,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.74:
	.skip	8
	.size	__llvm_gcov_ctr.74, 8

	.type	__llvm_gcov_ctr.75,@object      # @__llvm_gcov_ctr.75
	.section	.bss.__llvm_gcov_ctr.75,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.75:
	.skip	8
	.size	__llvm_gcov_ctr.75, 8

	.type	__llvm_gcov_ctr.76,@object      # @__llvm_gcov_ctr.76
	.section	.bss.__llvm_gcov_ctr.76,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.76:
	.skip	8
	.size	__llvm_gcov_ctr.76, 8

	.type	__llvm_gcov_ctr.77,@object      # @__llvm_gcov_ctr.77
	.section	.bss.__llvm_gcov_ctr.77,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.77:
	.skip	8
	.size	__llvm_gcov_ctr.77, 8

	.type	__llvm_gcov_ctr.78,@object      # @__llvm_gcov_ctr.78
	.section	.bss.__llvm_gcov_ctr.78,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.78:
	.skip	8
	.size	__llvm_gcov_ctr.78, 8

	.type	__llvm_gcov_ctr.79,@object      # @__llvm_gcov_ctr.79
	.section	.bss.__llvm_gcov_ctr.79,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.79:
	.skip	8
	.size	__llvm_gcov_ctr.79, 8

	.type	__llvm_gcov_ctr.80,@object      # @__llvm_gcov_ctr.80
	.section	.bss.__llvm_gcov_ctr.80,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.80:
	.skip	8
	.size	__llvm_gcov_ctr.80, 8

	.type	__llvm_gcov_ctr.81,@object      # @__llvm_gcov_ctr.81
	.section	.bss.__llvm_gcov_ctr.81,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.81:
	.skip	8
	.size	__llvm_gcov_ctr.81, 8

	.type	__llvm_gcov_ctr.82,@object      # @__llvm_gcov_ctr.82
	.section	.bss.__llvm_gcov_ctr.82,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.82:
	.skip	8
	.size	__llvm_gcov_ctr.82, 8

	.type	__llvm_gcov_ctr.83,@object      # @__llvm_gcov_ctr.83
	.section	.bss.__llvm_gcov_ctr.83,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.83:
	.skip	24
	.size	__llvm_gcov_ctr.83, 24

	.type	__llvm_gcov_ctr.84,@object      # @__llvm_gcov_ctr.84
	.section	.bss.__llvm_gcov_ctr.84,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.84:
	.skip	24
	.size	__llvm_gcov_ctr.84, 24

	.type	__llvm_gcov_ctr.85,@object      # @__llvm_gcov_ctr.85
	.section	.bss.__llvm_gcov_ctr.85,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.85:
	.skip	24
	.size	__llvm_gcov_ctr.85, 24

	.type	__llvm_gcov_ctr.86,@object      # @__llvm_gcov_ctr.86
	.section	.bss.__llvm_gcov_ctr.86,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.86:
	.skip	24
	.size	__llvm_gcov_ctr.86, 24

	.type	__llvm_gcov_ctr.87,@object      # @__llvm_gcov_ctr.87
	.section	.bss.__llvm_gcov_ctr.87,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.87:
	.skip	24
	.size	__llvm_gcov_ctr.87, 24

	.type	__llvm_gcov_ctr.88,@object      # @__llvm_gcov_ctr.88
	.section	.bss.__llvm_gcov_ctr.88,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.88:
	.skip	8
	.size	__llvm_gcov_ctr.88, 8

	.type	__llvm_gcov_ctr.89,@object      # @__llvm_gcov_ctr.89
	.section	.bss.__llvm_gcov_ctr.89,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.89:
	.skip	40
	.size	__llvm_gcov_ctr.89, 40

	.type	__llvm_gcov_ctr.90,@object      # @__llvm_gcov_ctr.90
	.section	.bss.__llvm_gcov_ctr.90,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.90:
	.skip	40
	.size	__llvm_gcov_ctr.90, 40

	.type	__llvm_gcov_ctr.91,@object      # @__llvm_gcov_ctr.91
	.section	.bss.__llvm_gcov_ctr.91,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.91:
	.skip	40
	.size	__llvm_gcov_ctr.91, 40

	.type	__llvm_gcov_ctr.92,@object      # @__llvm_gcov_ctr.92
	.section	.bss.__llvm_gcov_ctr.92,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.92:
	.skip	16
	.size	__llvm_gcov_ctr.92, 16

	.type	__llvm_gcov_ctr.93,@object      # @__llvm_gcov_ctr.93
	.section	.bss.__llvm_gcov_ctr.93,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.93:
	.skip	40
	.size	__llvm_gcov_ctr.93, 40

	.type	__llvm_gcov_ctr.94,@object      # @__llvm_gcov_ctr.94
	.section	.bss.__llvm_gcov_ctr.94,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.94:
	.skip	32
	.size	__llvm_gcov_ctr.94, 32

	.type	__llvm_gcov_ctr.95,@object      # @__llvm_gcov_ctr.95
	.section	.bss.__llvm_gcov_ctr.95,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.95:
	.skip	32
	.size	__llvm_gcov_ctr.95, 32

	.type	__llvm_gcov_ctr.96,@object      # @__llvm_gcov_ctr.96
	.section	.bss.__llvm_gcov_ctr.96,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.96:
	.skip	24
	.size	__llvm_gcov_ctr.96, 24

	.type	__llvm_gcov_ctr.97,@object      # @__llvm_gcov_ctr.97
	.section	.bss.__llvm_gcov_ctr.97,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.97:
	.skip	32
	.size	__llvm_gcov_ctr.97, 32

	.type	__llvm_gcov_ctr.98,@object      # @__llvm_gcov_ctr.98
	.section	.bss.__llvm_gcov_ctr.98,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.98:
	.skip	40
	.size	__llvm_gcov_ctr.98, 40

	.type	__llvm_gcov_ctr.99,@object      # @__llvm_gcov_ctr.99
	.section	.bss.__llvm_gcov_ctr.99,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.99:
	.skip	48
	.size	__llvm_gcov_ctr.99, 48

	.type	__llvm_gcov_ctr.100,@object     # @__llvm_gcov_ctr.100
	.section	.bss.__llvm_gcov_ctr.100,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.100:
	.skip	8
	.size	__llvm_gcov_ctr.100, 8

	.type	__llvm_gcov_ctr.101,@object     # @__llvm_gcov_ctr.101
	.section	.bss.__llvm_gcov_ctr.101,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.101:
	.skip	64
	.size	__llvm_gcov_ctr.101, 64

	.type	__llvm_gcov_ctr.102,@object     # @__llvm_gcov_ctr.102
	.section	.bss.__llvm_gcov_ctr.102,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.102:
	.skip	24
	.size	__llvm_gcov_ctr.102, 24

	.type	__llvm_gcov_ctr.103,@object     # @__llvm_gcov_ctr.103
	.section	.bss.__llvm_gcov_ctr.103,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.103:
	.skip	64
	.size	__llvm_gcov_ctr.103, 64

	.type	__llvm_gcov_ctr.104,@object     # @__llvm_gcov_ctr.104
	.section	.bss.__llvm_gcov_ctr.104,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.104:
	.skip	24
	.size	__llvm_gcov_ctr.104, 24

	.type	__llvm_gcov_ctr.105,@object     # @__llvm_gcov_ctr.105
	.section	.bss.__llvm_gcov_ctr.105,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.105:
	.skip	24
	.size	__llvm_gcov_ctr.105, 24

	.type	__llvm_gcov_ctr.106,@object     # @__llvm_gcov_ctr.106
	.section	.bss.__llvm_gcov_ctr.106,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.106:
	.skip	24
	.size	__llvm_gcov_ctr.106, 24

	.type	__llvm_gcov_ctr.107,@object     # @__llvm_gcov_ctr.107
	.section	.bss.__llvm_gcov_ctr.107,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.107:
	.skip	48
	.size	__llvm_gcov_ctr.107, 48

	.type	__llvm_gcov_ctr.108,@object     # @__llvm_gcov_ctr.108
	.section	.bss.__llvm_gcov_ctr.108,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.108:
	.skip	48
	.size	__llvm_gcov_ctr.108, 48

	.type	__llvm_gcov_ctr.109,@object     # @__llvm_gcov_ctr.109
	.section	.bss.__llvm_gcov_ctr.109,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.109:
	.skip	48
	.size	__llvm_gcov_ctr.109, 48

	.type	__llvm_gcov_ctr.110,@object     # @__llvm_gcov_ctr.110
	.section	.bss.__llvm_gcov_ctr.110,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.110:
	.skip	8
	.size	__llvm_gcov_ctr.110, 8

	.type	__llvm_gcov_ctr.111,@object     # @__llvm_gcov_ctr.111
	.section	.bss.__llvm_gcov_ctr.111,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.111:
	.skip	8
	.size	__llvm_gcov_ctr.111, 8

	.type	__llvm_gcov_ctr.112,@object     # @__llvm_gcov_ctr.112
	.section	.bss.__llvm_gcov_ctr.112,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.112:
	.skip	8
	.size	__llvm_gcov_ctr.112, 8

	.type	__llvm_gcov_ctr.113,@object     # @__llvm_gcov_ctr.113
	.section	.bss.__llvm_gcov_ctr.113,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.113:
	.skip	8
	.size	__llvm_gcov_ctr.113, 8

	.type	__llvm_gcov_ctr.114,@object     # @__llvm_gcov_ctr.114
	.section	.bss.__llvm_gcov_ctr.114,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.114:
	.skip	8
	.size	__llvm_gcov_ctr.114, 8

	.type	__llvm_gcov_ctr.115,@object     # @__llvm_gcov_ctr.115
	.section	.bss.__llvm_gcov_ctr.115,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.115:
	.skip	8
	.size	__llvm_gcov_ctr.115, 8

	.type	__llvm_gcov_ctr.116,@object     # @__llvm_gcov_ctr.116
	.section	.bss.__llvm_gcov_ctr.116,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.116:
	.skip	24
	.size	__llvm_gcov_ctr.116, 24

	.type	__llvm_gcov_ctr.117,@object     # @__llvm_gcov_ctr.117
	.section	.bss.__llvm_gcov_ctr.117,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.117:
	.skip	24
	.size	__llvm_gcov_ctr.117, 24

	.type	__llvm_gcov_ctr.118,@object     # @__llvm_gcov_ctr.118
	.section	.bss.__llvm_gcov_ctr.118,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.118:
	.skip	16
	.size	__llvm_gcov_ctr.118, 16

	.type	__llvm_gcov_ctr.119,@object     # @__llvm_gcov_ctr.119
	.section	.bss.__llvm_gcov_ctr.119,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.119:
	.skip	24
	.size	__llvm_gcov_ctr.119, 24

	.type	__llvm_gcov_ctr.120,@object     # @__llvm_gcov_ctr.120
	.section	.bss.__llvm_gcov_ctr.120,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.120:
	.skip	24
	.size	__llvm_gcov_ctr.120, 24

	.type	__llvm_gcov_ctr.121,@object     # @__llvm_gcov_ctr.121
	.section	.bss.__llvm_gcov_ctr.121,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.121:
	.skip	24
	.size	__llvm_gcov_ctr.121, 24

	.type	__llvm_gcov_ctr.122,@object     # @__llvm_gcov_ctr.122
	.section	.bss.__llvm_gcov_ctr.122,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.122:
	.skip	32
	.size	__llvm_gcov_ctr.122, 32

	.type	__llvm_gcov_ctr.123,@object     # @__llvm_gcov_ctr.123
	.section	.bss.__llvm_gcov_ctr.123,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.123:
	.skip	64
	.size	__llvm_gcov_ctr.123, 64

	.type	__llvm_gcov_ctr.124,@object     # @__llvm_gcov_ctr.124
	.section	.bss.__llvm_gcov_ctr.124,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.124:
	.skip	24
	.size	__llvm_gcov_ctr.124, 24

	.type	__llvm_gcov_ctr.125,@object     # @__llvm_gcov_ctr.125
	.section	.bss.__llvm_gcov_ctr.125,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.125:
	.skip	24
	.size	__llvm_gcov_ctr.125, 24

	.type	__llvm_gcov_ctr.126,@object     # @__llvm_gcov_ctr.126
	.section	.bss.__llvm_gcov_ctr.126,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.126:
	.skip	8
	.size	__llvm_gcov_ctr.126, 8

	.type	__llvm_gcov_ctr.127,@object     # @__llvm_gcov_ctr.127
	.section	.bss.__llvm_gcov_ctr.127,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.127:
	.skip	8
	.size	__llvm_gcov_ctr.127, 8

	.type	__llvm_gcov_ctr.128,@object     # @__llvm_gcov_ctr.128
	.section	.bss.__llvm_gcov_ctr.128,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.128:
	.skip	56
	.size	__llvm_gcov_ctr.128, 56

	.type	__llvm_gcov_ctr.129,@object     # @__llvm_gcov_ctr.129
	.section	.bss.__llvm_gcov_ctr.129,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.129:
	.skip	32
	.size	__llvm_gcov_ctr.129, 32

	.type	__llvm_gcov_ctr.130,@object     # @__llvm_gcov_ctr.130
	.section	.bss.__llvm_gcov_ctr.130,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.130:
	.skip	32
	.size	__llvm_gcov_ctr.130, 32

	.type	__llvm_gcov_ctr.131,@object     # @__llvm_gcov_ctr.131
	.section	.bss.__llvm_gcov_ctr.131,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.131:
	.skip	64
	.size	__llvm_gcov_ctr.131, 64

	.type	__llvm_gcov_ctr.132,@object     # @__llvm_gcov_ctr.132
	.section	.bss.__llvm_gcov_ctr.132,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.132:
	.skip	64
	.size	__llvm_gcov_ctr.132, 64

	.type	__llvm_gcov_ctr.133,@object     # @__llvm_gcov_ctr.133
	.section	.bss.__llvm_gcov_ctr.133,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.133:
	.skip	24
	.size	__llvm_gcov_ctr.133, 24

	.type	__llvm_gcov_ctr.134,@object     # @__llvm_gcov_ctr.134
	.section	.bss.__llvm_gcov_ctr.134,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.134:
	.skip	24
	.size	__llvm_gcov_ctr.134, 24

	.type	__llvm_gcov_ctr.135,@object     # @__llvm_gcov_ctr.135
	.section	.bss.__llvm_gcov_ctr.135,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.135:
	.skip	24
	.size	__llvm_gcov_ctr.135, 24

	.type	__llvm_gcov_ctr.136,@object     # @__llvm_gcov_ctr.136
	.section	.bss.__llvm_gcov_ctr.136,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.136:
	.skip	24
	.size	__llvm_gcov_ctr.136, 24

	.type	__llvm_gcov_ctr.137,@object     # @__llvm_gcov_ctr.137
	.section	.bss.__llvm_gcov_ctr.137,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.137:
	.skip	8
	.size	__llvm_gcov_ctr.137, 8

	.type	__llvm_gcov_ctr.138,@object     # @__llvm_gcov_ctr.138
	.section	.bss.__llvm_gcov_ctr.138,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.138:
	.skip	8
	.size	__llvm_gcov_ctr.138, 8

	.type	__llvm_gcov_ctr.139,@object     # @__llvm_gcov_ctr.139
	.section	.bss.__llvm_gcov_ctr.139,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.139:
	.skip	8
	.size	__llvm_gcov_ctr.139, 8

	.type	__llvm_gcov_ctr.140,@object     # @__llvm_gcov_ctr.140
	.section	.bss.__llvm_gcov_ctr.140,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.140:
	.skip	8
	.size	__llvm_gcov_ctr.140, 8

	.type	__llvm_gcov_ctr.141,@object     # @__llvm_gcov_ctr.141
	.section	.bss.__llvm_gcov_ctr.141,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.141:
	.skip	40
	.size	__llvm_gcov_ctr.141, 40

	.type	__llvm_gcov_ctr.142,@object     # @__llvm_gcov_ctr.142
	.section	.bss.__llvm_gcov_ctr.142,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.142:
	.skip	8
	.size	__llvm_gcov_ctr.142, 8

	.type	__llvm_gcov_ctr.143,@object     # @__llvm_gcov_ctr.143
	.section	.bss.__llvm_gcov_ctr.143,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.143:
	.skip	40
	.size	__llvm_gcov_ctr.143, 40

	.type	__llvm_gcov_ctr.144,@object     # @__llvm_gcov_ctr.144
	.section	.bss.__llvm_gcov_ctr.144,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.144:
	.skip	8
	.size	__llvm_gcov_ctr.144, 8

	.type	__llvm_gcov_ctr.145,@object     # @__llvm_gcov_ctr.145
	.section	.bss.__llvm_gcov_ctr.145,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.145:
	.skip	8
	.size	__llvm_gcov_ctr.145, 8

	.type	__llvm_gcov_ctr.146,@object     # @__llvm_gcov_ctr.146
	.section	.bss.__llvm_gcov_ctr.146,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.146:
	.skip	24
	.size	__llvm_gcov_ctr.146, 24

	.type	__llvm_gcov_ctr.147,@object     # @__llvm_gcov_ctr.147
	.section	.bss.__llvm_gcov_ctr.147,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.147:
	.skip	24
	.size	__llvm_gcov_ctr.147, 24

	.type	__llvm_gcov_ctr.148,@object     # @__llvm_gcov_ctr.148
	.section	.bss.__llvm_gcov_ctr.148,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.148:
	.skip	24
	.size	__llvm_gcov_ctr.148, 24

	.type	__llvm_gcov_ctr.149,@object     # @__llvm_gcov_ctr.149
	.section	.bss.__llvm_gcov_ctr.149,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.149:
	.skip	8
	.size	__llvm_gcov_ctr.149, 8

	.type	__llvm_gcov_ctr.150,@object     # @__llvm_gcov_ctr.150
	.section	.bss.__llvm_gcov_ctr.150,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.150:
	.skip	8
	.size	__llvm_gcov_ctr.150, 8

	.type	__llvm_gcov_ctr.151,@object     # @__llvm_gcov_ctr.151
	.section	.bss.__llvm_gcov_ctr.151,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.151:
	.skip	8
	.size	__llvm_gcov_ctr.151, 8

	.type	__llvm_gcov_ctr.152,@object     # @__llvm_gcov_ctr.152
	.section	.bss.__llvm_gcov_ctr.152,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.152:
	.skip	8
	.size	__llvm_gcov_ctr.152, 8

	.type	__llvm_gcov_ctr.153,@object     # @__llvm_gcov_ctr.153
	.section	.bss.__llvm_gcov_ctr.153,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.153:
	.skip	8
	.size	__llvm_gcov_ctr.153, 8

	.type	__llvm_gcov_ctr.154,@object     # @__llvm_gcov_ctr.154
	.section	.bss.__llvm_gcov_ctr.154,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.154:
	.skip	8
	.size	__llvm_gcov_ctr.154, 8

	.type	__llvm_gcov_ctr.155,@object     # @__llvm_gcov_ctr.155
	.section	.bss.__llvm_gcov_ctr.155,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.155:
	.skip	8
	.size	__llvm_gcov_ctr.155, 8

	.type	__llvm_gcov_ctr.156,@object     # @__llvm_gcov_ctr.156
	.section	.bss.__llvm_gcov_ctr.156,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.156:
	.skip	8
	.size	__llvm_gcov_ctr.156, 8

	.type	__llvm_gcov_ctr.157,@object     # @__llvm_gcov_ctr.157
	.section	.bss.__llvm_gcov_ctr.157,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.157:
	.skip	8
	.size	__llvm_gcov_ctr.157, 8

	.type	__llvm_gcov_ctr.158,@object     # @__llvm_gcov_ctr.158
	.section	.bss.__llvm_gcov_ctr.158,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.158:
	.skip	8
	.size	__llvm_gcov_ctr.158, 8

	.type	__llvm_gcov_ctr.159,@object     # @__llvm_gcov_ctr.159
	.section	.bss.__llvm_gcov_ctr.159,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.159:
	.skip	8
	.size	__llvm_gcov_ctr.159, 8

	.type	__llvm_gcov_ctr.160,@object     # @__llvm_gcov_ctr.160
	.section	.bss.__llvm_gcov_ctr.160,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.160:
	.skip	8
	.size	__llvm_gcov_ctr.160, 8

	.type	__llvm_gcov_ctr.161,@object     # @__llvm_gcov_ctr.161
	.section	.bss.__llvm_gcov_ctr.161,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.161:
	.skip	32
	.size	__llvm_gcov_ctr.161, 32

	.type	__llvm_gcov_ctr.162,@object     # @__llvm_gcov_ctr.162
	.section	.bss.__llvm_gcov_ctr.162,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.162:
	.skip	32
	.size	__llvm_gcov_ctr.162, 32

	.type	__llvm_gcov_ctr.163,@object     # @__llvm_gcov_ctr.163
	.section	.bss.__llvm_gcov_ctr.163,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.163:
	.skip	40
	.size	__llvm_gcov_ctr.163, 40

	.type	__llvm_gcov_ctr.164,@object     # @__llvm_gcov_ctr.164
	.section	.bss.__llvm_gcov_ctr.164,"",@
	.p2align	3, 0x0
__llvm_gcov_ctr.164:
	.skip	8
	.size	__llvm_gcov_ctr.164, 8

	.type	__llvm_gcov_ctr.165,@object     # @__llvm_gcov_ctr.165
	.section	.bss.__llvm_gcov_ctr.165,"",@
	.p2align	4, 0x0
__llvm_gcov_ctr.165:
	.skip	40
	.size	__llvm_gcov_ctr.165, 40

	.type	.L__unnamed_1,@object           # @0
	.section	.rodata..L__unnamed_1,"S",@
.L__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-wasm32.gcda"
	.size	.L__unnamed_1, 50

	.type	__llvm_internal_gcov_emit_function_args.0,@object # @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata.__llvm_internal_gcov_emit_function_args.0,"",@
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.int32	0                               # 0x0
	.int32	3759012176                      # 0xe00df950
	.int32	2716610766                      # 0xa1ec30ce
	.int32	1                               # 0x1
	.int32	3518812481                      # 0xd1bcd141
	.int32	2716610766                      # 0xa1ec30ce
	.int32	2                               # 0x2
	.int32	560687177                       # 0x216b6849
	.int32	2716610766                      # 0xa1ec30ce
	.int32	3                               # 0x3
	.int32	1589591758                      # 0x5ebf3ece
	.int32	2716610766                      # 0xa1ec30ce
	.int32	4                               # 0x4
	.int32	2176136383                      # 0x81b534bf
	.int32	2716610766                      # 0xa1ec30ce
	.int32	5                               # 0x5
	.int32	3586625172                      # 0xd5c78e94
	.int32	2716610766                      # 0xa1ec30ce
	.int32	6                               # 0x6
	.int32	2323119728                      # 0x8a77fe70
	.int32	2716610766                      # 0xa1ec30ce
	.int32	7                               # 0x7
	.int32	2314569740                      # 0x89f5880c
	.int32	2716610766                      # 0xa1ec30ce
	.int32	8                               # 0x8
	.int32	2833673551                      # 0xa8e66d4f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	9                               # 0x9
	.int32	1458633189                      # 0x56f0f9e5
	.int32	2716610766                      # 0xa1ec30ce
	.int32	10                              # 0xa
	.int32	1190300833                      # 0x46f28ca1
	.int32	2716610766                      # 0xa1ec30ce
	.int32	11                              # 0xb
	.int32	758327989                       # 0x2d332ab5
	.int32	2716610766                      # 0xa1ec30ce
	.int32	12                              # 0xc
	.int32	1651479037                      # 0x626f91fd
	.int32	2716610766                      # 0xa1ec30ce
	.int32	13                              # 0xd
	.int32	4132343275                      # 0xf64e8deb
	.int32	2716610766                      # 0xa1ec30ce
	.int32	14                              # 0xe
	.int32	734262523                       # 0x2bc3f4fb
	.int32	2716610766                      # 0xa1ec30ce
	.int32	15                              # 0xf
	.int32	2463424677                      # 0x92d4e0a5
	.int32	2716610766                      # 0xa1ec30ce
	.int32	16                              # 0x10
	.int32	1419026334                      # 0x54949f9e
	.int32	2716610766                      # 0xa1ec30ce
	.int32	17                              # 0x11
	.int32	3154471370                      # 0xbc0569ca
	.int32	2716610766                      # 0xa1ec30ce
	.int32	18                              # 0x12
	.int32	2077973487                      # 0x7bdb5bef
	.int32	2716610766                      # 0xa1ec30ce
	.int32	19                              # 0x13
	.int32	1474691227                      # 0x57e6009b
	.int32	2716610766                      # 0xa1ec30ce
	.int32	20                              # 0x14
	.int32	3710986016                      # 0xdd312720
	.int32	2716610766                      # 0xa1ec30ce
	.int32	21                              # 0x15
	.int32	1305101473                      # 0x4dca44a1
	.int32	2716610766                      # 0xa1ec30ce
	.int32	22                              # 0x16
	.int32	3762036564                      # 0xe03c1f54
	.int32	2716610766                      # 0xa1ec30ce
	.int32	23                              # 0x17
	.int32	477914433                       # 0x1c7c6541
	.int32	2716610766                      # 0xa1ec30ce
	.int32	24                              # 0x18
	.int32	3923035234                      # 0xe9d4c462
	.int32	2716610766                      # 0xa1ec30ce
	.int32	25                              # 0x19
	.int32	951651702                       # 0x38b90d76
	.int32	2716610766                      # 0xa1ec30ce
	.int32	26                              # 0x1a
	.int32	4206925919                      # 0xfac0985f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	27                              # 0x1b
	.int32	32773942                        # 0x1f41736
	.int32	2716610766                      # 0xa1ec30ce
	.int32	28                              # 0x1c
	.int32	2877267246                      # 0xab7f9d2e
	.int32	2716610766                      # 0xa1ec30ce
	.int32	29                              # 0x1d
	.int32	860405771                       # 0x3348c00b
	.int32	2716610766                      # 0xa1ec30ce
	.int32	30                              # 0x1e
	.int32	815674877                       # 0x309e35fd
	.int32	2716610766                      # 0xa1ec30ce
	.int32	31                              # 0x1f
	.int32	1778838753                      # 0x6a06ece1
	.int32	2716610766                      # 0xa1ec30ce
	.int32	32                              # 0x20
	.int32	2718307199                      # 0xa206137f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	33                              # 0x21
	.int32	856224820                       # 0x3308f434
	.int32	2716610766                      # 0xa1ec30ce
	.int32	34                              # 0x22
	.int32	1111195143                      # 0x423b7e07
	.int32	2716610766                      # 0xa1ec30ce
	.int32	35                              # 0x23
	.int32	1178414519                      # 0x463d2db7
	.int32	2716610766                      # 0xa1ec30ce
	.int32	36                              # 0x24
	.int32	3477640633                      # 0xcf4895b9
	.int32	2716610766                      # 0xa1ec30ce
	.int32	37                              # 0x25
	.int32	4294770115                      # 0xfffcfdc3
	.int32	2716610766                      # 0xa1ec30ce
	.int32	38                              # 0x26
	.int32	3650660234                      # 0xd998a78a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	39                              # 0x27
	.int32	289327647                       # 0x113eca1f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	40                              # 0x28
	.int32	2093612798                      # 0x7cc9fefe
	.int32	2716610766                      # 0xa1ec30ce
	.int32	41                              # 0x29
	.int32	4177956716                      # 0xf9068f6c
	.int32	2716610766                      # 0xa1ec30ce
	.int32	42                              # 0x2a
	.int32	3434808461                      # 0xccbb048d
	.int32	2716610766                      # 0xa1ec30ce
	.int32	43                              # 0x2b
	.int32	3206497114                      # 0xbf1f435a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	44                              # 0x2c
	.int32	1537257434                      # 0x5ba0afda
	.int32	2716610766                      # 0xa1ec30ce
	.int32	45                              # 0x2d
	.int32	3028077325                      # 0xb47ccb0d
	.int32	2716610766                      # 0xa1ec30ce
	.int32	46                              # 0x2e
	.int32	1369848209                      # 0x51a63991
	.int32	2716610766                      # 0xa1ec30ce
	.int32	47                              # 0x2f
	.int32	938831176                       # 0x37f56d48
	.int32	2716610766                      # 0xa1ec30ce
	.int32	48                              # 0x30
	.int32	1663146323                      # 0x63219953
	.int32	2716610766                      # 0xa1ec30ce
	.int32	49                              # 0x31
	.int32	4111410217                      # 0xf50f2429
	.int32	2716610766                      # 0xa1ec30ce
	.int32	50                              # 0x32
	.int32	1475378556                      # 0x57f07d7c
	.int32	2716610766                      # 0xa1ec30ce
	.int32	51                              # 0x33
	.int32	3356195547                      # 0xc80b7adb
	.int32	2716610766                      # 0xa1ec30ce
	.int32	52                              # 0x34
	.int32	514931786                       # 0x1eb13c4a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	53                              # 0x35
	.int32	2854034444                      # 0xaa1d1c0c
	.int32	2716610766                      # 0xa1ec30ce
	.int32	54                              # 0x36
	.int32	2747937306                      # 0xa3ca321a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	55                              # 0x37
	.int32	4192776208                      # 0xf9e8b010
	.int32	2716610766                      # 0xa1ec30ce
	.int32	56                              # 0x38
	.int32	984436227                       # 0x3aad4e03
	.int32	2716610766                      # 0xa1ec30ce
	.int32	57                              # 0x39
	.int32	1477657574                      # 0x581343e6
	.int32	2716610766                      # 0xa1ec30ce
	.int32	58                              # 0x3a
	.int32	1339127973                      # 0x4fd178a5
	.int32	2716610766                      # 0xa1ec30ce
	.int32	59                              # 0x3b
	.int32	2960567906                      # 0xb076ae62
	.int32	2716610766                      # 0xa1ec30ce
	.int32	60                              # 0x3c
	.int32	3390076872                      # 0xca1077c8
	.int32	2716610766                      # 0xa1ec30ce
	.int32	61                              # 0x3d
	.int32	1543282230                      # 0x5bfc9e36
	.int32	2716610766                      # 0xa1ec30ce
	.int32	62                              # 0x3e
	.int32	2934101789                      # 0xaee2d71d
	.int32	2716610766                      # 0xa1ec30ce
	.int32	63                              # 0x3f
	.int32	3737986119                      # 0xdecd2447
	.int32	2716610766                      # 0xa1ec30ce
	.int32	64                              # 0x40
	.int32	49556427                        # 0x2f42bcb
	.int32	2716610766                      # 0xa1ec30ce
	.int32	65                              # 0x41
	.int32	234051526                       # 0xdf357c6
	.int32	2716610766                      # 0xa1ec30ce
	.int32	66                              # 0x42
	.int32	2341800126                      # 0x8b9508be
	.int32	2716610766                      # 0xa1ec30ce
	.int32	67                              # 0x43
	.int32	3256799948                      # 0xc21ed2cc
	.int32	2716610766                      # 0xa1ec30ce
	.int32	68                              # 0x44
	.int32	777295480                       # 0x2e549678
	.int32	2716610766                      # 0xa1ec30ce
	.int32	69                              # 0x45
	.int32	14040531                        # 0xd63dd3
	.int32	2716610766                      # 0xa1ec30ce
	.int32	70                              # 0x46
	.int32	8047973                         # 0x7acd65
	.int32	2716610766                      # 0xa1ec30ce
	.int32	71                              # 0x47
	.int32	719459161                       # 0x2ae21359
	.int32	2716610766                      # 0xa1ec30ce
	.int32	72                              # 0x48
	.int32	243358501                       # 0xe815b25
	.int32	2716610766                      # 0xa1ec30ce
	.int32	73                              # 0x49
	.int32	3262173932                      # 0xc270d2ec
	.int32	2716610766                      # 0xa1ec30ce
	.int32	74                              # 0x4a
	.int32	398910553                       # 0x17c6e459
	.int32	2716610766                      # 0xa1ec30ce
	.int32	75                              # 0x4b
	.int32	3354219739                      # 0xc7ed54db
	.int32	2716610766                      # 0xa1ec30ce
	.int32	76                              # 0x4c
	.int32	2570308788                      # 0x9933ccb4
	.int32	2716610766                      # 0xa1ec30ce
	.int32	77                              # 0x4d
	.int32	982429111                       # 0x3a8eadb7
	.int32	2716610766                      # 0xa1ec30ce
	.int32	78                              # 0x4e
	.int32	211491241                       # 0xc9b19a9
	.int32	2716610766                      # 0xa1ec30ce
	.int32	79                              # 0x4f
	.int32	1075683319                      # 0x401d9ff7
	.int32	2716610766                      # 0xa1ec30ce
	.int32	80                              # 0x50
	.int32	1886352651                      # 0x706f750b
	.int32	2716610766                      # 0xa1ec30ce
	.int32	81                              # 0x51
	.int32	248637203                       # 0xed1e713
	.int32	2716610766                      # 0xa1ec30ce
	.int32	82                              # 0x52
	.int32	703327087                       # 0x29ebeb6f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	83                              # 0x53
	.int32	3690160730                      # 0xdbf3625a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	84                              # 0x54
	.int32	787048238                       # 0x2ee9672e
	.int32	2716610766                      # 0xa1ec30ce
	.int32	85                              # 0x55
	.int32	1937497967                      # 0x737bdf6f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	86                              # 0x56
	.int32	4205062514                      # 0xfaa42972
	.int32	2716610766                      # 0xa1ec30ce
	.int32	87                              # 0x57
	.int32	694462539                       # 0x2964a84b
	.int32	2716610766                      # 0xa1ec30ce
	.int32	88                              # 0x58
	.int32	85970907                        # 0x51fcfdb
	.int32	2716610766                      # 0xa1ec30ce
	.int32	89                              # 0x59
	.int32	3681984728                      # 0xdb76a0d8
	.int32	2716610766                      # 0xa1ec30ce
	.int32	90                              # 0x5a
	.int32	3620297642                      # 0xd7c95baa
	.int32	2716610766                      # 0xa1ec30ce
	.int32	91                              # 0x5b
	.int32	3394804480                      # 0xca589b00
	.int32	2716610766                      # 0xa1ec30ce
	.int32	92                              # 0x5c
	.int32	2119330183                      # 0x7e526987
	.int32	2716610766                      # 0xa1ec30ce
	.int32	93                              # 0x5d
	.int32	1963040266                      # 0x75019e0a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	94                              # 0x5e
	.int32	1603391838                      # 0x5f91d15e
	.int32	2716610766                      # 0xa1ec30ce
	.int32	95                              # 0x5f
	.int32	2340921237                      # 0x8b879f95
	.int32	2716610766                      # 0xa1ec30ce
	.int32	96                              # 0x60
	.int32	3028177438                      # 0xb47e521e
	.int32	2716610766                      # 0xa1ec30ce
	.int32	97                              # 0x61
	.int32	2265525308                      # 0x87092c3c
	.int32	2716610766                      # 0xa1ec30ce
	.int32	98                              # 0x62
	.int32	2598903994                      # 0x9ae820ba
	.int32	2716610766                      # 0xa1ec30ce
	.int32	99                              # 0x63
	.int32	139524705                       # 0x850fa61
	.int32	2716610766                      # 0xa1ec30ce
	.int32	100                             # 0x64
	.int32	1076410600                      # 0x4028b8e8
	.int32	2716610766                      # 0xa1ec30ce
	.int32	101                             # 0x65
	.int32	220237413                       # 0xd208e65
	.int32	2716610766                      # 0xa1ec30ce
	.int32	102                             # 0x66
	.int32	3913623866                      # 0xe945293a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	103                             # 0x67
	.int32	3453026372                      # 0xcdd10044
	.int32	2716610766                      # 0xa1ec30ce
	.int32	104                             # 0x68
	.int32	2321387380                      # 0x8a5d8f74
	.int32	2716610766                      # 0xa1ec30ce
	.int32	105                             # 0x69
	.int32	3319939363                      # 0xc5e24123
	.int32	2716610766                      # 0xa1ec30ce
	.int32	106                             # 0x6a
	.int32	398991913                       # 0x17c82229
	.int32	2716610766                      # 0xa1ec30ce
	.int32	107                             # 0x6b
	.int32	333429647                       # 0x13dfbb8f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	108                             # 0x6c
	.int32	3927133990                      # 0xea134f26
	.int32	2716610766                      # 0xa1ec30ce
	.int32	109                             # 0x6d
	.int32	1797971294                      # 0x6b2add5e
	.int32	2716610766                      # 0xa1ec30ce
	.int32	110                             # 0x6e
	.int32	1622314776                      # 0x60b28f18
	.int32	2716610766                      # 0xa1ec30ce
	.int32	111                             # 0x6f
	.int32	1092862330                      # 0x4123c17a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	112                             # 0x70
	.int32	2568657322                      # 0x991a99aa
	.int32	2716610766                      # 0xa1ec30ce
	.int32	113                             # 0x71
	.int32	2168129897                      # 0x813b0969
	.int32	2716610766                      # 0xa1ec30ce
	.int32	114                             # 0x72
	.int32	2890303119                      # 0xac46868f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	115                             # 0x73
	.int32	1713332582                      # 0x661f6166
	.int32	2716610766                      # 0xa1ec30ce
	.int32	116                             # 0x74
	.int32	2375727721                      # 0x8d9aba69
	.int32	2716610766                      # 0xa1ec30ce
	.int32	117                             # 0x75
	.int32	3586767156                      # 0xd5c9b934
	.int32	2716610766                      # 0xa1ec30ce
	.int32	118                             # 0x76
	.int32	2191348475                      # 0x829d52fb
	.int32	2716610766                      # 0xa1ec30ce
	.int32	119                             # 0x77
	.int32	3910023869                      # 0xe90e3abd
	.int32	2716610766                      # 0xa1ec30ce
	.int32	120                             # 0x78
	.int32	4189915105                      # 0xf9bd07e1
	.int32	2716610766                      # 0xa1ec30ce
	.int32	121                             # 0x79
	.int32	2527353334                      # 0x96a459f6
	.int32	2716610766                      # 0xa1ec30ce
	.int32	122                             # 0x7a
	.int32	3429265923                      # 0xcc667203
	.int32	2716610766                      # 0xa1ec30ce
	.int32	123                             # 0x7b
	.int32	1283962724                      # 0x4c87b764
	.int32	2716610766                      # 0xa1ec30ce
	.int32	124                             # 0x7c
	.int32	1970290990                      # 0x7570412e
	.int32	2716610766                      # 0xa1ec30ce
	.int32	125                             # 0x7d
	.int32	2615950861                      # 0x9bec3e0d
	.int32	2716610766                      # 0xa1ec30ce
	.int32	126                             # 0x7e
	.int32	3338450337                      # 0xc6fcb5a1
	.int32	2716610766                      # 0xa1ec30ce
	.int32	127                             # 0x7f
	.int32	3971836509                      # 0xecbd6a5d
	.int32	2716610766                      # 0xa1ec30ce
	.int32	128                             # 0x80
	.int32	4260339231                      # 0xfdef9e1f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	129                             # 0x81
	.int32	4160738226                      # 0xf7ffd3b2
	.int32	2716610766                      # 0xa1ec30ce
	.int32	130                             # 0x82
	.int32	1309372079                      # 0x4e0b6eaf
	.int32	2716610766                      # 0xa1ec30ce
	.int32	131                             # 0x83
	.int32	3151575564                      # 0xbbd93a0c
	.int32	2716610766                      # 0xa1ec30ce
	.int32	132                             # 0x84
	.int32	3938977714                      # 0xeac807b2
	.int32	2716610766                      # 0xa1ec30ce
	.int32	133                             # 0x85
	.int32	3228738087                      # 0xc072a227
	.int32	2716610766                      # 0xa1ec30ce
	.int32	134                             # 0x86
	.int32	2262837051                      # 0x86e0273b
	.int32	2716610766                      # 0xa1ec30ce
	.int32	135                             # 0x87
	.int32	3135705803                      # 0xbae712cb
	.int32	2716610766                      # 0xa1ec30ce
	.int32	136                             # 0x88
	.int32	990447104                       # 0x3b090600
	.int32	2716610766                      # 0xa1ec30ce
	.int32	137                             # 0x89
	.int32	4061147315                      # 0xf21030b3
	.int32	2716610766                      # 0xa1ec30ce
	.int32	138                             # 0x8a
	.int32	2783543715                      # 0xa5e981a3
	.int32	2716610766                      # 0xa1ec30ce
	.int32	139                             # 0x8b
	.int32	2471046843                      # 0x93492ebb
	.int32	2716610766                      # 0xa1ec30ce
	.int32	140                             # 0x8c
	.int32	403058134                       # 0x18062dd6
	.int32	2716610766                      # 0xa1ec30ce
	.int32	141                             # 0x8d
	.int32	260073473                       # 0xf806801
	.int32	2716610766                      # 0xa1ec30ce
	.int32	142                             # 0x8e
	.int32	1259876295                      # 0x4b182fc7
	.int32	2716610766                      # 0xa1ec30ce
	.int32	143                             # 0x8f
	.int32	2975678116                      # 0xb15d3ea4
	.int32	2716610766                      # 0xa1ec30ce
	.int32	144                             # 0x90
	.int32	2579807359                      # 0x99c4bc7f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	145                             # 0x91
	.int32	863102422                       # 0x3371e5d6
	.int32	2716610766                      # 0xa1ec30ce
	.int32	146                             # 0x92
	.int32	650832017                       # 0x26cae891
	.int32	2716610766                      # 0xa1ec30ce
	.int32	147                             # 0x93
	.int32	90061610                        # 0x55e3b2a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	148                             # 0x94
	.int32	2446954539                      # 0x91d9902b
	.int32	2716610766                      # 0xa1ec30ce
	.int32	149                             # 0x95
	.int32	3598610789                      # 0xd67e7165
	.int32	2716610766                      # 0xa1ec30ce
	.int32	150                             # 0x96
	.int32	2351688191                      # 0x8c2be9ff
	.int32	2716610766                      # 0xa1ec30ce
	.int32	151                             # 0x97
	.int32	1743478091                      # 0x67eb5d4b
	.int32	2716610766                      # 0xa1ec30ce
	.int32	152                             # 0x98
	.int32	2798805217                      # 0xa6d260e1
	.int32	2716610766                      # 0xa1ec30ce
	.int32	153                             # 0x99
	.int32	1438161982                      # 0x55b89c3e
	.int32	2716610766                      # 0xa1ec30ce
	.int32	154                             # 0x9a
	.int32	273416875                       # 0x104c02ab
	.int32	2716610766                      # 0xa1ec30ce
	.int32	155                             # 0x9b
	.int32	2438880600                      # 0x915e5d58
	.int32	2716610766                      # 0xa1ec30ce
	.int32	156                             # 0x9c
	.int32	1284541841                      # 0x4c908d91
	.int32	2716610766                      # 0xa1ec30ce
	.int32	157                             # 0x9d
	.int32	3593193962                      # 0xd62bc9ea
	.int32	2716610766                      # 0xa1ec30ce
	.int32	158                             # 0x9e
	.int32	1755082314                      # 0x689c6e4a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	159                             # 0x9f
	.int32	3432612426                      # 0xcc99824a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	160                             # 0xa0
	.int32	1404964820                      # 0x53be0fd4
	.int32	2716610766                      # 0xa1ec30ce
	.int32	161                             # 0xa1
	.int32	3374828335                      # 0xc927cb2f
	.int32	2716610766                      # 0xa1ec30ce
	.int32	162                             # 0xa2
	.int32	3311814731                      # 0xc566484b
	.int32	2716610766                      # 0xa1ec30ce
	.int32	163                             # 0xa3
	.int32	413908966                       # 0x18abbfe6
	.int32	2716610766                      # 0xa1ec30ce
	.int32	164                             # 0xa4
	.int32	3027808697                      # 0xb478b1b9
	.int32	2716610766                      # 0xa1ec30ce
	.int32	165                             # 0xa5
	.int32	540762785                       # 0x203b62a1
	.int32	2716610766                      # 0xa1ec30ce
	.size	__llvm_internal_gcov_emit_function_args.0, 1992

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object # @__llvm_internal_gcov_emit_arcs_args.0
	.section	.rodata.__llvm_internal_gcov_emit_arcs_args.0,"",@
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.1
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.2
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.3
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.4
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.5
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.6
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.7
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.8
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.9
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.10
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.11
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.12
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.13
	.int32	7                               # 0x7
	.int32	__llvm_gcov_ctr.14
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.15
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.16
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.17
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.18
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.19
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.20
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.21
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.22
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.23
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.24
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.25
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.26
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.27
	.int32	7                               # 0x7
	.int32	__llvm_gcov_ctr.28
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.29
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.30
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.31
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.32
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.33
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.34
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.35
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.36
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.37
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.38
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.39
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.40
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.41
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.42
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.43
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.44
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.45
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.46
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.47
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.48
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.49
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.50
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.51
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.52
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.53
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.54
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.55
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.56
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.57
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.58
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.59
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.60
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.61
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.62
	.int32	8                               # 0x8
	.int32	__llvm_gcov_ctr.63
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.64
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.65
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.66
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.67
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.68
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.69
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.70
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.71
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.72
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.73
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.74
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.75
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.76
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.77
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.78
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.79
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.80
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.81
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.82
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.83
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.84
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.85
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.86
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.87
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.88
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.89
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.90
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.91
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.92
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.93
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.94
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.95
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.96
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.97
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.98
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.99
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.100
	.int32	8                               # 0x8
	.int32	__llvm_gcov_ctr.101
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.102
	.int32	8                               # 0x8
	.int32	__llvm_gcov_ctr.103
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.104
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.105
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.106
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.107
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.108
	.int32	6                               # 0x6
	.int32	__llvm_gcov_ctr.109
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.110
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.111
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.112
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.113
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.114
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.115
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.116
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.117
	.int32	2                               # 0x2
	.int32	__llvm_gcov_ctr.118
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.119
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.120
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.121
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.122
	.int32	8                               # 0x8
	.int32	__llvm_gcov_ctr.123
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.124
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.125
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.126
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.127
	.int32	7                               # 0x7
	.int32	__llvm_gcov_ctr.128
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.129
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.130
	.int32	8                               # 0x8
	.int32	__llvm_gcov_ctr.131
	.int32	8                               # 0x8
	.int32	__llvm_gcov_ctr.132
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.133
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.134
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.135
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.136
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.137
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.138
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.139
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.140
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.141
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.142
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.143
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.144
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.145
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.146
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.147
	.int32	3                               # 0x3
	.int32	__llvm_gcov_ctr.148
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.149
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.150
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.151
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.152
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.153
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.154
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.155
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.156
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.157
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.158
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.159
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.160
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.161
	.int32	4                               # 0x4
	.int32	__llvm_gcov_ctr.162
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.163
	.int32	1                               # 0x1
	.int32	__llvm_gcov_ctr.164
	.int32	5                               # 0x5
	.int32	__llvm_gcov_ctr.165
	.size	__llvm_internal_gcov_emit_arcs_args.0, 1328

	.type	__llvm_internal_gcov_emit_file_info,@object # @__llvm_internal_gcov_emit_file_info
	.section	.rodata.__llvm_internal_gcov_emit_file_info,"",@
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.int32	.L__unnamed_1
	.int32	875575338                       # 0x3430382a
	.int32	2716610766                      # 0xa1ec30ce
	.int32	166                             # 0xa6
	.int32	__llvm_internal_gcov_emit_function_args.0
	.int32	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 24

	.hidden	__llvm_profile_runtime
	.type	.L__profc_make_ti,@object       # @__profc_make_ti
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_make_ti:
	.skip	8
	.size	.L__profc_make_ti, 8

	.type	.L__profd_make_ti,@object       # @__profd_make_ti
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_make_ti:
	.int64	-5001490222628474638            # 0xba9723243ca3f0f2
	.int64	24                              # 0x18
	.int32	.L__profc_make_ti-.L__profd_make_ti
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_make_ti, 48

	.type	.L__profc_make_tu,@object       # @__profc_make_tu
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_make_tu:
	.skip	8
	.size	.L__profc_make_tu, 8

	.type	.L__profd_make_tu,@object       # @__profd_make_tu
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_make_tu:
	.int64	-8857068571906375875            # 0x85155f0f843e7f3d
	.int64	24                              # 0x18
	.int32	.L__profc_make_tu-.L__profd_make_tu
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_make_tu, 48

	.type	.L__profc_memmove,@object       # @__profc_memmove
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memmove:
	.skip	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       # @__profd_memmove
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memmove:
	.int64	-306081897096246147             # 0xfbc09422e3668c7d
	.int64	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.int32	.L__profc_memmove-.L__profd_memmove
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memmove, 48

	.type	.L__profc_memccpy,@object       # @__profc_memccpy
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memccpy:
	.skip	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       # @__profd_memccpy
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memccpy:
	.int64	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.int64	1189690007454808                # 0x43a044a498458
	.int32	.L__profc_memccpy-.L__profd_memccpy
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memccpy, 48

	.type	.L__profc_memchr,@object        # @__profc_memchr
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memchr:
	.skip	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        # @__profd_memchr
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memchr:
	.int64	5708666158622859656             # 0x4f3941a01e026188
	.int64	4538308109                      # 0x10e81160d
	.int32	.L__profc_memchr-.L__profd_memchr
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memchr, 48

	.type	.L__profc_memcmp,@object        # @__profc_memcmp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memcmp:
	.skip	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        # @__profd_memcmp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memcmp:
	.int64	-4679550853048924350            # 0xbf0ee54adfa48742
	.int64	4538045965                      # 0x10e7d160d
	.int32	.L__profc_memcmp-.L__profd_memcmp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memcmp, 48

	.type	.L__profc_memcpy,@object        # @__profc_memcpy
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memcpy:
	.skip	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        # @__profd_memcpy
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memcpy:
	.int64	3893303423671325810             # 0x3607cad612bdd472
	.int64	17496                           # 0x4458
	.int32	.L__profc_memcpy-.L__profd_memcpy
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memcpy, 48

	.type	.L__profc_memrchr,@object       # @__profc_memrchr
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memrchr:
	.skip	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       # @__profd_memrchr
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memrchr:
	.int64	-548334422562728352             # 0xf863ecbf75079660
	.int64	9516882138200                   # 0x8a7d2611458
	.int32	.L__profc_memrchr-.L__profd_memrchr
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memrchr, 48

	.type	.L__profc_memset,@object        # @__profc_memset
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memset:
	.skip	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        # @__profd_memset
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memset:
	.int64	-2741574704065975695            # 0xd9f3f85506f36a71
	.int64	17496                           # 0x4458
	.int32	.L__profc_memset-.L__profd_memset
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memset, 48

	.type	.L__profc_stpcpy,@object        # @__profc_stpcpy
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_stpcpy:
	.skip	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        # @__profd_stpcpy
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_stpcpy:
	.int64	4454833295779690053             # 0x3dd2bf47a087f645
	.int64	17496                           # 0x4458
	.int32	.L__profc_stpcpy-.L__profd_stpcpy
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_stpcpy, 48

	.type	.L__profc_strchrnul,@object     # @__profc_strchrnul
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strchrnul:
	.skip	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     # @__profd_strchrnul
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strchrnul:
	.int64	5039208642683934005             # 0x45eedd8fc8411535
	.int64	70911064                        # 0x43a0458
	.int32	.L__profc_strchrnul-.L__profd_strchrnul
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strchrnul, 48

	.type	.L__profc_strchr,@object        # @__profc_strchr
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strchr:
	.skip	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        # @__profd_strchr
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strchr:
	.int64	-5671522429266412413            # 0xb14ab4664bea3c83
	.int64	13914928649304                  # 0xca7d2611458
	.int32	.L__profc_strchr-.L__profd_strchr
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strchr, 48

	.type	.L__profc_strcmp,@object        # @__profc_strcmp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strcmp:
	.skip	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        # @__profd_strcmp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strcmp:
	.int64	1013198891307352868             # 0xe0f9b060331c324
	.int64	70906968                        # 0x439f458
	.int32	.L__profc_strcmp-.L__profd_strcmp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strcmp, 48

	.type	.L__profc_strlen,@object        # @__profc_strlen
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strlen:
	.skip	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        # @__profd_strlen
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strlen:
	.int64	2965136410638013299             # 0x292647db02a7d373
	.int64	17496                           # 0x4458
	.int32	.L__profc_strlen-.L__profd_strlen
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strlen, 48

	.type	.L__profc_strncmp,@object       # @__profc_strncmp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strncmp:
	.skip	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       # @__profd_strncmp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strncmp:
	.int64	-6058495834680104774            # 0xabebe6233cb568ba
	.int64	7207353986825238351             # 0x6405aa43cb36b74f
	.int32	.L__profc_strncmp-.L__profd_strncmp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	9                               # 0x9
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strncmp, 48

	.type	.L__profc_swab,@object          # @__profc_swab
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_swab:
	.skip	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          # @__profd_swab
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_swab:
	.int64	-1619950660557759641            # 0xe984c77503cb9b67
	.int64	18193                           # 0x4711
	.int32	.L__profc_swab-.L__profd_swab
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_swab, 48

	.type	.L__profc_isalpha,@object       # @__profc_isalpha
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_isalpha:
	.skip	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       # @__profd_isalpha
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_isalpha:
	.int64	-1429966999967671460            # 0xec27bc96fe655b5c
	.int64	1563                            # 0x61b
	.int32	.L__profc_isalpha-.L__profd_isalpha
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_isalpha, 48

	.type	.L__profc_isascii,@object       # @__profc_isascii
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_isascii:
	.skip	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       # @__profd_isascii
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_isascii:
	.int64	-4792250000779744687            # 0xbd7e8203c4a86a51
	.int64	1562                            # 0x61a
	.int32	.L__profc_isascii-.L__profd_isascii
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_isascii, 48

	.type	.L__profc_isblank,@object       # @__profc_isblank
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_isblank:
	.skip	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       # @__profd_isblank
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_isblank:
	.int64	2465200613623135234             # 0x223626e59b14fc02
	.int64	6354911                         # 0x60f7df
	.int32	.L__profc_isblank-.L__profd_isblank
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_isblank, 48

	.type	.L__profc_iscntrl,@object       # @__profc_iscntrl
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_iscntrl:
	.skip	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       # @__profd_iscntrl
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_iscntrl:
	.int64	8897732069425577183             # 0x7b7b182cc8b67cdf
	.int64	6354655                         # 0x60f6df
	.int32	.L__profc_iscntrl-.L__profd_iscntrl
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_iscntrl, 48

	.type	.L__profc_isdigit,@object       # @__profc_isdigit
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_isdigit:
	.skip	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       # @__profd_isdigit
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_isdigit:
	.int64	3483985654529092453             # 0x30599a7e6cc36b65
	.int64	1563                            # 0x61b
	.int32	.L__profc_isdigit-.L__profd_isdigit
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_isdigit, 48

	.type	.L__profc_isgraph,@object       # @__profc_isgraph
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_isgraph:
	.skip	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       # @__profd_isgraph
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_isgraph:
	.int64	-127227288456547236             # 0xfe3bff7489cfb45c
	.int64	1563                            # 0x61b
	.int32	.L__profc_isgraph-.L__profd_isgraph
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_isgraph, 48

	.type	.L__profc_islower,@object       # @__profc_islower
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_islower:
	.skip	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       # @__profd_islower
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_islower:
	.int64	7501983819047161697             # 0x681c66894508cf61
	.int64	1563                            # 0x61b
	.int32	.L__profc_islower-.L__profd_islower
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_islower, 48

	.type	.L__profc_isprint,@object       # @__profc_isprint
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_isprint:
	.skip	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       # @__profd_isprint
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_isprint:
	.int64	-7275761640889424986            # 0x9b074d56145f63a6
	.int64	1563                            # 0x61b
	.int32	.L__profc_isprint-.L__profd_isprint
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_isprint, 48

	.type	.L__profc_isspace,@object       # @__profc_isspace
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_isspace:
	.skip	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       # @__profd_isspace
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_isspace:
	.int64	9032360604355461395             # 0x7d59641d39d70113
	.int64	6354907                         # 0x60f7db
	.int32	.L__profc_isspace-.L__profd_isspace
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_isspace, 48

	.type	.L__profc_isupper,@object       # @__profc_isupper
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_isupper:
	.skip	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       # @__profd_isupper
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_isupper:
	.int64	4174714232255583053             # 0x39ef9079c45c934d
	.int64	1563                            # 0x61b
	.int32	.L__profc_isupper-.L__profd_isupper
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_isupper, 48

	.type	.L__profc_iswcntrl,@object      # @__profc_iswcntrl
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.skip	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      # @__profd_iswcntrl
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.int64	7000259844681188668             # 0x6125eb3d61a7453c
	.int64	106600273393371                 # 0x60f3cf6db6db
	.int32	.L__profc_iswcntrl-.L__profd_iswcntrl
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_iswcntrl, 48

	.type	.L__profc_iswdigit,@object      # @__profc_iswdigit
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_iswdigit:
	.skip	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      # @__profd_iswdigit
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_iswdigit:
	.int64	8583753245428091608             # 0x771f9e1919590ad8
	.int64	1563                            # 0x61b
	.int32	.L__profc_iswdigit-.L__profd_iswdigit
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_iswdigit, 48

	.type	.L__profc_iswprint,@object      # @__profc_iswprint
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_iswprint:
	.skip	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      # @__profd_iswprint
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_iswprint:
	.int64	-719555261641779946             # 0xf603a04d49941516
	.int64	-2566119187471392224            # 0xdc635031e3742220
	.int32	.L__profc_iswprint-.L__profd_iswprint
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	10                              # 0xa
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_iswprint, 48

	.type	.L__profc_iswxdigit,@object     # @__profc_iswxdigit
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.skip	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     # @__profd_iswxdigit
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.int64	624771703830219826              # 0x8aba28df0840c32
	.int64	6354651                         # 0x60f6db
	.int32	.L__profc_iswxdigit-.L__profd_iswxdigit
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_iswxdigit, 48

	.type	.L__profc_toascii,@object       # @__profc_toascii
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_toascii:
	.skip	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       # @__profd_toascii
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_toascii:
	.int64	4548159975983457080             # 0x3f1e4f66a624a338
	.int64	24                              # 0x18
	.int32	.L__profc_toascii-.L__profd_toascii
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_toascii, 48

	.type	.L__profc_fdim,@object          # @__profc_fdim
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_fdim:
	.skip	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          # @__profd_fdim
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_fdim:
	.int64	-3545869933759497925            # 0xceca8a150286f93b
	.int64	7369846577040809592             # 0x6646f46a29a55e78
	.int32	.L__profc_fdim-.L__profd_fdim
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_fdim, 48

	.type	.L__profc_fdimf,@object         # @__profc_fdimf
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_fdimf:
	.skip	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         # @__profd_fdimf
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_fdimf:
	.int64	-1547869627280940664            # 0xea84dcc6634da188
	.int64	7369846577040809592             # 0x6646f46a29a55e78
	.int32	.L__profc_fdimf-.L__profd_fdimf
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_fdimf, 48

	.type	.L__profc_fmax,@object          # @__profc_fmax
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_fmax:
	.skip	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          # @__profd_fmax
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_fmax:
	.int64	-2423801789625842334            # 0xde5ced1d3b654562
	.int64	3977842549302548673             # 0x373422b91b9cd8c1
	.int32	.L__profc_fmax-.L__profd_fmax
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	6                               # 0x6
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_fmax, 48

	.type	.L__profc_fmaxf,@object         # @__profc_fmaxf
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_fmaxf:
	.skip	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         # @__profd_fmaxf
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_fmaxf:
	.int64	-5134209104457391460            # 0xb8bfa0058e3da29c
	.int64	3977842549302548673             # 0x373422b91b9cd8c1
	.int32	.L__profc_fmaxf-.L__profd_fmaxf
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	6                               # 0x6
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_fmaxf, 48

	.type	.L__profc_fmaxl,@object         # @__profc_fmaxl
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_fmaxl:
	.skip	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         # @__profd_fmaxl
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_fmaxl:
	.int64	-3138580006960380340            # 0xd471861cd1fbc64c
	.int64	3977842549302548673             # 0x373422b91b9cd8c1
	.int32	.L__profc_fmaxl-.L__profd_fmaxl
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	6                               # 0x6
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_fmaxl, 48

	.type	.L__profc_fmin,@object          # @__profc_fmin
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_fmin:
	.skip	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          # @__profd_fmin
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_fmin:
	.int64	965427315610335377              # 0xd65e3074b69b891
	.int64	3977842549302548673             # 0x373422b91b9cd8c1
	.int32	.L__profc_fmin-.L__profd_fmin
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	6                               # 0x6
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_fmin, 48

	.type	.L__profc_fminf,@object         # @__profc_fminf
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_fminf:
	.skip	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         # @__profd_fminf
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_fminf:
	.int64	7710199602704325723             # 0x6b0021b0328c9c5b
	.int64	3977842549302548673             # 0x373422b91b9cd8c1
	.int32	.L__profc_fminf-.L__profd_fminf
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	6                               # 0x6
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_fminf, 48

	.type	.L__profc_fminl,@object         # @__profc_fminl
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_fminl:
	.skip	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         # @__profd_fminl
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_fminl:
	.int64	2487418697363824514             # 0x2285162058091f82
	.int64	3977842549302548673             # 0x373422b91b9cd8c1
	.int32	.L__profc_fminl-.L__profd_fminl
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	6                               # 0x6
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_fminl, 48

	.type	.L__profc_l64a,@object          # @__profc_l64a
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_l64a:
	.skip	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          # @__profd_l64a
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_l64a:
	.int64	-6158745991357604691            # 0xaa87bd26bb44dcad
	.int64	17496                           # 0x4458
	.int32	.L__profc_l64a-.L__profd_l64a
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_l64a, 48

	.type	.L__profc_srand,@object         # @__profc_srand
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_srand:
	.skip	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         # @__profd_srand
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_srand:
	.int64	-2085616837322687880            # 0xe30e668959ceba78
	.int64	0                               # 0x0
	.int32	.L__profc_srand-.L__profd_srand
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_srand, 48

	.type	.L__profc_rand,@object          # @__profc_rand
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rand:
	.skip	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          # @__profd_rand
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rand:
	.int64	7206085285791387956             # 0x6401286350c3d134
	.int64	24                              # 0x18
	.int32	.L__profc_rand-.L__profd_rand
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rand, 48

	.type	.L__profc_insque,@object        # @__profc_insque
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_insque:
	.skip	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        # @__profd_insque
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_insque:
	.int64	-5080349535175464041            # 0xb97ef903bd0bab97
	.int64	45786906010769                  # 0x29a49844a491
	.int32	.L__profc_insque-.L__profd_insque
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_insque, 48

	.type	.L__profc_remque,@object        # @__profc_remque
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_remque:
	.skip	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        # @__profd_remque
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_remque:
	.int64	-7214219538753974334            # 0x9be1f18d54e30fc2
	.int64	11043906705                     # 0x29244a491
	.int32	.L__profc_remque-.L__profd_remque
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_remque, 48

	.type	.L__profc_lsearch,@object       # @__profc_lsearch
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_lsearch:
	.skip	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       # @__profd_lsearch
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_lsearch:
	.int64	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.int64	1245367951758424                # 0x46ca7d2611458
	.int32	.L__profc_lsearch-.L__profd_lsearch
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_lsearch, 48

	.type	.L__profc_lfind,@object         # @__profc_lfind
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_lfind:
	.skip	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         # @__profd_lfind
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_lfind:
	.int64	-6350214982902907667            # 0xa7df811e30b57ced
	.int64	1245367951758424                # 0x46ca7d2611458
	.int32	.L__profc_lfind-.L__profd_lfind
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_lfind, 48

	.type	.L__profc_abs,@object           # @__profc_abs
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_abs:
	.skip	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           # @__profd_abs
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_abs:
	.int64	-238465663743841031             # 0xfcb0ccbe056bacf9
	.int64	99164                           # 0x1835c
	.int32	.L__profc_abs-.L__profd_abs
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_abs, 48

	.type	.L__profc_atoi,@object          # @__profc_atoi
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_atoi:
	.skip	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          # @__profd_atoi
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_atoi:
	.int64	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.int64	638206505195021                 # 0x244720809160d
	.int32	.L__profc_atoi-.L__profd_atoi
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_atoi, 48

	.type	.L__profc_atol,@object          # @__profc_atol
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_atol:
	.skip	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          # @__profd_atol
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_atol:
	.int64	8236175749196770609             # 0x724cc634ee8f6d31
	.int64	638206505195021                 # 0x244720809160d
	.int32	.L__profc_atol-.L__profd_atol
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_atol, 48

	.type	.L__profc_atoll,@object         # @__profc_atoll
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_atoll:
	.skip	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         # @__profd_atoll
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_atoll:
	.int64	3653807471789013357             # 0x32b4ee8971a6f96d
	.int64	638206505195021                 # 0x244720809160d
	.int32	.L__profc_atoll-.L__profd_atoll
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_atoll, 48

	.type	.L__profc_bsearch,@object       # @__profc_bsearch
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_bsearch:
	.skip	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       # @__profd_bsearch
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_bsearch:
	.int64	8750110911118262334             # 0x796ea3837a79403e
	.int64	-852542619444921222             # 0xf42b29012c1abc7a
	.int32	.L__profc_bsearch-.L__profd_bsearch
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_bsearch, 48

	.type	.L__profc_bsearch_r,@object     # @__profc_bsearch_r
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.skip	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     # @__profd_bsearch_r
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.int64	1417097008757763708             # 0x13aa8a38ab466e7c
	.int64	1259382983000112142             # 0x117a3a2689e4bc0e
	.int32	.L__profc_bsearch_r-.L__profd_bsearch_r
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_bsearch_r, 48

	.type	.L__profc_div,@object           # @__profc_div
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_div:
	.skip	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           # @__profd_div
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_div:
	.int64	5497092892325669176             # 0x4c4998dc58656938
	.int64	24                              # 0x18
	.int32	.L__profc_div-.L__profd_div
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_div, 48

	.type	.L__profc_imaxabs,@object       # @__profc_imaxabs
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_imaxabs:
	.skip	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       # @__profd_imaxabs
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_imaxabs:
	.int64	8946668544180752025             # 0x7c28f3a3b30e0e99
	.int64	99164                           # 0x1835c
	.int32	.L__profc_imaxabs-.L__profd_imaxabs
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_imaxabs, 48

	.type	.L__profc_imaxdiv,@object       # @__profc_imaxdiv
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.skip	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       # @__profd_imaxdiv
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.int64	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.int64	24                              # 0x18
	.int32	.L__profc_imaxdiv-.L__profd_imaxdiv
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_imaxdiv, 48

	.type	.L__profc_labs,@object          # @__profc_labs
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_labs:
	.skip	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          # @__profd_labs
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_labs:
	.int64	-7118441263952323418            # 0x9d363762b3a39ca6
	.int64	99164                           # 0x1835c
	.int32	.L__profc_labs-.L__profd_labs
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_labs, 48

	.type	.L__profc_ldiv,@object          # @__profc_ldiv
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_ldiv:
	.skip	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          # @__profd_ldiv
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_ldiv:
	.int64	7149836041034155625             # 0x633951ff74204669
	.int64	24                              # 0x18
	.int32	.L__profc_ldiv-.L__profd_ldiv
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_ldiv, 48

	.type	.L__profc_llabs,@object         # @__profc_llabs
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_llabs:
	.skip	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         # @__profd_llabs
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_llabs:
	.int64	7684789126781046466             # 0x6aa5dafebb918ec2
	.int64	99164                           # 0x1835c
	.int32	.L__profc_llabs-.L__profd_llabs
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_llabs, 48

	.type	.L__profc_lldiv,@object         # @__profc_lldiv
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_lldiv:
	.skip	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         # @__profd_lldiv
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_lldiv:
	.int64	-5329156747615108898            # 0xb60b082c520680de
	.int64	24                              # 0x18
	.int32	.L__profc_lldiv-.L__profd_lldiv
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_lldiv, 48

	.type	.L__profc_wcschr,@object        # @__profc_wcschr
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wcschr:
	.skip	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        # @__profd_wcschr
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wcschr:
	.int64	-2279810736707830048            # 0xe05c7c36c3687ee0
	.int64	4538308109                      # 0x10e81160d
	.int32	.L__profc_wcschr-.L__profd_wcschr
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wcschr, 48

	.type	.L__profc_wcscmp,@object        # @__profc_wcscmp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wcscmp:
	.skip	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        # @__profd_wcscmp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wcscmp:
	.int64	-3710185595167438704            # 0xcc82c5dbcd460890
	.int64	1188468208228060                # 0x438e7d160d6dc
	.int32	.L__profc_wcscmp-.L__profd_wcscmp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wcscmp, 48

	.type	.L__profc_wcscpy,@object        # @__profc_wcscpy
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wcscpy:
	.skip	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        # @__profd_wcscpy
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wcscpy:
	.int64	-8381368184235816342            # 0x8baf660af6dd0a6a
	.int64	9304                            # 0x2458
	.int32	.L__profc_wcscpy-.L__profd_wcscpy
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wcscpy, 48

	.type	.L__profc_wcslen,@object        # @__profc_wcslen
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wcslen:
	.skip	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        # @__profd_wcslen
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wcslen:
	.int64	3988408974905483574             # 0x3759acd4c838a136
	.int64	17496                           # 0x4458
	.int32	.L__profc_wcslen-.L__profd_wcslen
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wcslen, 48

	.type	.L__profc_wcsncmp,@object       # @__profc_wcsncmp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.skip	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       # @__profd_wcsncmp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.int64	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.int64	6710790269995215964             # 0x5d218431fd366c5c
	.int32	.L__profc_wcsncmp-.L__profd_wcsncmp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	10                              # 0xa
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wcsncmp, 48

	.type	.L__profc_wmemchr,@object       # @__profc_wmemchr
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wmemchr:
	.skip	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       # @__profd_wmemchr
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wmemchr:
	.int64	-150916099757221660             # 0xfde7d69b5b1558e4
	.int64	4538308109                      # 0x10e81160d
	.int32	.L__profc_wmemchr-.L__profd_wmemchr
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wmemchr, 48

	.type	.L__profc_wmemcmp,@object       # @__profc_wmemcmp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.skip	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       # @__profd_wmemcmp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.int64	5386172057678365784             # 0x4abf86f3050dc458
	.int64	1189621521503964                # 0x439f45834d6dc
	.int32	.L__profc_wmemcmp-.L__profd_wmemcmp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	6                               # 0x6
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wmemcmp, 48

	.type	.L__profc_wmemcpy,@object       # @__profc_wmemcpy
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.skip	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       # @__profd_wmemcpy
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.int64	7326050423799855187             # 0x65ab5c0b9d30b853
	.int64	9304                            # 0x2458
	.int32	.L__profc_wmemcpy-.L__profd_wmemcpy
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wmemcpy, 48

	.type	.L__profc_wmemmove,@object      # @__profc_wmemmove
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wmemmove:
	.skip	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      # @__profd_wmemmove
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wmemmove:
	.int64	-4659407939446788683            # 0xbf56752a69a3adb5
	.int64	-1500206092990891740            # 0xeb2e3281c166b924
	.int32	.L__profc_wmemmove-.L__profd_wmemmove
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wmemmove, 48

	.type	.L__profc_wmemset,@object       # @__profc_wmemset
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_wmemset:
	.skip	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       # @__profd_wmemset
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_wmemset:
	.int64	-8291142148468431281            # 0x8ceff224f245264f
	.int64	9304                            # 0x2458
	.int32	.L__profc_wmemset-.L__profd_wmemset
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_wmemset, 48

	.type	.L__profc_bcopy,@object         # @__profc_bcopy
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_bcopy:
	.skip	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         # @__profd_bcopy
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_bcopy:
	.int64	-8407331144368071880            # 0x8b5328de3edcdb38
	.int64	5234109875325077019             # 0x48a34b333a1d861b
	.int32	.L__profc_bcopy-.L__profd_bcopy
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_bcopy, 48

	.type	.L__profc_rotl64,@object        # @__profc_rotl64
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotl64:
	.skip	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        # @__profd_rotl64
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotl64:
	.int64	4714666614722164144             # 0x416ddc4e84e875b0
	.int64	24                              # 0x18
	.int32	.L__profc_rotl64-.L__profd_rotl64
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotl64, 48

	.type	.L__profc_rotr64,@object        # @__profc_rotr64
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotr64:
	.skip	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        # @__profd_rotr64
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotr64:
	.int64	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.int64	24                              # 0x18
	.int32	.L__profc_rotr64-.L__profd_rotr64
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotr64, 48

	.type	.L__profc_rotl32,@object        # @__profc_rotl32
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotl32:
	.skip	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        # @__profd_rotl32
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotl32:
	.int64	6417704780586152324             # 0x5910447ed829f184
	.int64	24                              # 0x18
	.int32	.L__profc_rotl32-.L__profd_rotl32
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotl32, 48

	.type	.L__profc_rotr32,@object        # @__profc_rotr32
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotr32:
	.skip	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        # @__profd_rotr32
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotr32:
	.int64	-5668908084823466940            # 0xb153fe21cbc1dc44
	.int64	24                              # 0x18
	.int32	.L__profc_rotr32-.L__profd_rotr32
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotr32, 48

	.type	.L__profc_rotl_sz,@object       # @__profc_rotl_sz
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.skip	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       # @__profd_rotl_sz
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.int64	-3686623714176605670            # 0xccd67b43b7f8e21a
	.int64	24                              # 0x18
	.int32	.L__profc_rotl_sz-.L__profd_rotl_sz
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotl_sz, 48

	.type	.L__profc_rotr_sz,@object       # @__profc_rotr_sz
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.skip	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       # @__profd_rotr_sz
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.int64	3415499704483829380             # 0x2f664ae29835d684
	.int64	24                              # 0x18
	.int32	.L__profc_rotr_sz-.L__profd_rotr_sz
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotr_sz, 48

	.type	.L__profc_rotl16,@object        # @__profc_rotl16
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotl16:
	.skip	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        # @__profd_rotl16
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotl16:
	.int64	7327166975465201445             # 0x65af538b0e939f25
	.int64	24                              # 0x18
	.int32	.L__profc_rotl16-.L__profd_rotl16
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotl16, 48

	.type	.L__profc_rotr16,@object        # @__profc_rotr16
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotr16:
	.skip	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        # @__profd_rotr16
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotr16:
	.int64	5274763753728838268             # 0x4933b9afe71d0a7c
	.int64	24                              # 0x18
	.int32	.L__profc_rotr16-.L__profd_rotr16
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotr16, 48

	.type	.L__profc_rotl8,@object         # @__profc_rotl8
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotl8:
	.skip	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         # @__profd_rotl8
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotl8:
	.int64	4408423234350850624             # 0x3d2ddd93270fa240
	.int64	24                              # 0x18
	.int32	.L__profc_rotl8-.L__profd_rotl8
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotl8, 48

	.type	.L__profc_rotr8,@object         # @__profc_rotr8
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_rotr8:
	.skip	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         # @__profd_rotr8
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_rotr8:
	.int64	-6535801773217052896            # 0xa54c2aea59078720
	.int64	24                              # 0x18
	.int32	.L__profc_rotr8-.L__profd_rotr8
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_rotr8, 48

	.type	.L__profc_bswap_16,@object      # @__profc_bswap_16
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_bswap_16:
	.skip	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      # @__profd_bswap_16
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_bswap_16:
	.int64	-8870828063230114195            # 0x84e47ce04b9a466d
	.int64	24                              # 0x18
	.int32	.L__profc_bswap_16-.L__profd_bswap_16
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_bswap_16, 48

	.type	.L__profc_bswap_32,@object      # @__profc_bswap_32
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_bswap_32:
	.skip	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      # @__profd_bswap_32
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_bswap_32:
	.int64	7304833549461180700             # 0x655ffb691afd511c
	.int64	24                              # 0x18
	.int32	.L__profc_bswap_32-.L__profd_bswap_32
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_bswap_32, 48

	.type	.L__profc_bswap_64,@object      # @__profc_bswap_64
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_bswap_64:
	.skip	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      # @__profd_bswap_64
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_bswap_64:
	.int64	2873856403134720854             # 0x27e1fd2c1c53ab56
	.int64	24                              # 0x18
	.int32	.L__profc_bswap_64-.L__profd_bswap_64
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_bswap_64, 48

	.type	.L__profc_ffs,@object           # @__profc_ffs
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_ffs:
	.skip	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           # @__profd_ffs
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_ffs:
	.int64	9222170723057548859             # 0x7ffbbb6955da3e3b
	.int64	19458657686616                  # 0x11b292611458
	.int32	.L__profc_ffs-.L__profd_ffs
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_ffs, 48

	.type	.L__profc_libiberty_ffs,@object # @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.skip	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object # @__profd_libiberty_ffs
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.int64	65216057573358521               # 0xe7b1a8a94fbbb9
	.int64	2952352215704664                # 0xa7d261111a458
	.int32	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_libiberty_ffs, 48

	.type	.L__profc_gl_isinff,@object     # @__profc_gl_isinff
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.skip	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     # @__profd_gl_isinff
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.int64	6535010584615638394             # 0x5ab10580b36ed57a
	.int64	6354652                         # 0x60f6dc
	.int32	.L__profc_gl_isinff-.L__profd_gl_isinff
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_gl_isinff, 48

	.type	.L__profc_gl_isinfd,@object     # @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.skip	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     # @__profd_gl_isinfd
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.int64	-9165907066207032774            # 0x80cc28161a7caa3a
	.int64	6354652                         # 0x60f6dc
	.int32	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_gl_isinfd, 48

	.type	.L__profc_gl_isinfl,@object     # @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.skip	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     # @__profd_gl_isinfl
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.int64	4731159788068304891             # 0x41a874c2af6c77fb
	.int64	6354652                         # 0x60f6dc
	.int32	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_gl_isinfl, 48

	.type	.L__profc__Qp_itoq,@object      # @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.skip	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      # @__profd__Qp_itoq
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.int64	-3858125999267273921            # 0xca752ed84af9a33f
	.int64	0                               # 0x0
	.int32	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd__Qp_itoq, 48

	.type	.L__profc_ldexpf,@object        # @__profc_ldexpf
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_ldexpf:
	.skip	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        # @__profd_ldexpf
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_ldexpf:
	.int64	-2560632889718296859            # 0xdc76cdf42028aee5
	.int64	-2048372819454505383            # 0xe392b7c600d94e59
	.int32	.L__profc_ldexpf-.L__profd_ldexpf
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	8                               # 0x8
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_ldexpf, 48

	.type	.L__profc_ldexp,@object         # @__profc_ldexp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_ldexp:
	.skip	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         # @__profd_ldexp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_ldexp:
	.int64	-240549059163932437             # 0xfca965e7b97ab8eb
	.int64	-2048372819454505383            # 0xe392b7c600d94e59
	.int32	.L__profc_ldexp-.L__profd_ldexp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	8                               # 0x8
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_ldexp, 48

	.type	.L__profc_ldexpl,@object        # @__profc_ldexpl
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_ldexpl:
	.skip	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        # @__profd_ldexpl
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_ldexpl:
	.int64	-5097262943286299417            # 0xb942e25c0aa874e7
	.int64	-2048372819454505383            # 0xe392b7c600d94e59
	.int32	.L__profc_ldexpl-.L__profd_ldexpl
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	8                               # 0x8
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_ldexpl, 48

	.type	.L__profc_memxor,@object        # @__profc_memxor
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memxor:
	.skip	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        # @__profd_memxor
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memxor:
	.int64	-8368025376422999318            # 0x8bdecd417eda4aea
	.int64	1164376                         # 0x11c458
	.int32	.L__profc_memxor-.L__profd_memxor
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memxor, 48

	.type	.L__profc_strncat,@object       # @__profc_strncat
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strncat:
	.skip	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       # @__profd_strncat
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strncat:
	.int64	-3582483947543505905            # 0xce4875d49d21540f
	.int64	76123606467028056               # 0x10e72044a7d2458
	.int32	.L__profc_strncat-.L__profd_strncat
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strncat, 48

	.type	.L__profc_strnlen,@object       # @__profc_strnlen
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strnlen:
	.skip	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       # @__profd_strnlen
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strnlen:
	.int64	517590790318988421              # 0x72eda14dbfa1c85
	.int64	4537021528                      # 0x10e6d7458
	.int32	.L__profc_strnlen-.L__profd_strnlen
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strnlen, 48

	.type	.L__profc_strpbrk,@object       # @__profc_strpbrk
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strpbrk:
	.skip	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       # @__profd_strpbrk
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strpbrk:
	.int64	-6867074718569872870            # 0xa0b33fed4193c21a
	.int64	-4444802448421279214            # 0xc250e3b905102a12
	.int32	.L__profc_strpbrk-.L__profd_strpbrk
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strpbrk, 48

	.type	.L__profc_strrchr,@object       # @__profc_strrchr
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strrchr:
	.skip	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       # @__profd_strrchr
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strrchr:
	.int64	5307837722043833871             # 0x49a93a493bd75e0f
	.int64	217420731480                    # 0x329f491458
	.int32	.L__profc_strrchr-.L__profd_strrchr
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strrchr, 48

	.type	.L__profc_strstr,@object        # @__profc_strstr
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_strstr:
	.skip	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        # @__profd_strstr
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_strstr:
	.int64	3560562421867190603             # 0x3169a8a873ff994b
	.int64	-7798267876297541628            # 0x93c6fcaef9f1f804
	.int32	.L__profc_strstr-.L__profd_strstr
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_strstr, 48

	.type	.L__profc_copysign,@object      # @__profc_copysign
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_copysign:
	.skip	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      # @__profd_copysign
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_copysign:
	.int64	-9076603418344796971            # 0x82096d47ea764cd5
	.int64	4200982705386070127             # 0x3a4ce3834618a06f
	.int32	.L__profc_copysign-.L__profd_copysign
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_copysign, 48

	.type	.L__profc_memmem,@object        # @__profc_memmem
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_memmem:
	.skip	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        # @__profd_memmem
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_memmem:
	.int64	-7485463843177831536            # 0x981e4a4b585ae390
	.int64	5508063777036862020             # 0x4c7092d27e7a8244
	.int32	.L__profc_memmem-.L__profd_memmem
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_memmem, 48

	.type	.L__profc_mempcpy,@object       # @__profc_mempcpy
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_mempcpy:
	.skip	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       # @__profd_mempcpy
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_mempcpy:
	.int64	-722907995699078206             # 0xf5f7b7020f111bc2
	.int64	24                              # 0x18
	.int32	.L__profc_mempcpy-.L__profd_mempcpy
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_mempcpy, 48

	.type	.L__profc_frexp,@object         # @__profc_frexp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_frexp:
	.skip	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         # @__profd_frexp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_frexp:
	.int64	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.int64	-2373782428686282824            # 0xdf0ea1753c170fb8
	.int32	.L__profc_frexp-.L__profd_frexp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	9                               # 0x9
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_frexp, 48

	.type	.L__profc___muldi3,@object      # @__profc___muldi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___muldi3:
	.skip	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      # @__profd___muldi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___muldi3:
	.int64	3987271357918321816             # 0x3755a22cafcf9c98
	.int64	2320045144                      # 0x8a491458
	.int32	.L__profc___muldi3-.L__profd___muldi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___muldi3, 48

	.type	.L__profc_udivmodsi4,@object    # @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.skip	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    # @__profd_udivmodsi4
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.int64	4670832108574850701             # 0x40d2210e3d17be8d
	.int64	842736872197088594              # 0xbb200b8626e6552
	.int32	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	9                               # 0x9
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd_udivmodsi4, 48

	.type	.L__profc___clrsbqi2,@object    # @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.skip	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    # @__profd___clrsbqi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.int64	-7858138078702729622            # 0x92f2490d36f4066a
	.int64	187824153796641880              # 0x29b49129f498458
	.int32	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___clrsbqi2, 48

	.type	.L__profc___clrsbdi2,@object    # @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.skip	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    # @__profd___clrsbdi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.int64	-1533375985051215657            # 0xeab85aaa6fe858d7
	.int64	187824153796641880              # 0x29b49129f498458
	.int32	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___clrsbdi2, 48

	.type	.L__profc___mulsi3,@object      # @__profc___mulsi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mulsi3:
	.skip	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      # @__profd___mulsi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mulsi3:
	.int64	5127670123023436031             # 0x472924cf303208ff
	.int64	2320045144                      # 0x8a491458
	.int32	.L__profc___mulsi3-.L__profd___mulsi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mulsi3, 48

	.type	.L__profc___cmovd,@object       # @__profc___cmovd
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___cmovd:
	.skip	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       # @__profd___cmovd
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___cmovd:
	.int64	1458405851566781960             # 0x143d4c6520fd3608
	.int64	-6411111704588201945            # 0xa70727df48abd027
	.int32	.L__profc___cmovd-.L__profd___cmovd
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___cmovd, 48

	.type	.L__profc___cmovh,@object       # @__profc___cmovh
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___cmovh:
	.skip	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       # @__profd___cmovh
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___cmovh:
	.int64	-1240290101804783090            # 0xeec99ab9477e2a0e
	.int64	3130117398598530023             # 0x2b706930a0bc33e7
	.int32	.L__profc___cmovh-.L__profd___cmovh
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___cmovh, 48

	.type	.L__profc___cmovw,@object       # @__profc___cmovw
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___cmovw:
	.skip	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       # @__profd___cmovw
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___cmovw:
	.int64	-6631700889337257300            # 0xa3f7772d6a6922ac
	.int64	-6411111704588201945            # 0xa70727df48abd027
	.int32	.L__profc___cmovw-.L__profd___cmovw
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___cmovw, 48

	.type	.L__profc___modi,@object        # @__profc___modi
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___modi:
	.skip	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        # @__profd___modi
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___modi:
	.int64	4130297501716739761             # 0x3951c3b1ce8276b1
	.int64	24                              # 0x18
	.int32	.L__profc___modi-.L__profd___modi
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___modi, 48

	.type	.L__profc___uitod,@object       # @__profc___uitod
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___uitod:
	.skip	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       # @__profd___uitod
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___uitod:
	.int64	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.int64	24                              # 0x18
	.int32	.L__profc___uitod-.L__profd___uitod
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___uitod, 48

	.type	.L__profc___uitof,@object       # @__profc___uitof
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___uitof:
	.skip	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       # @__profd___uitof
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___uitof:
	.int64	2684105554667313846             # 0x253fdbc7ed991ab6
	.int64	24                              # 0x18
	.int32	.L__profc___uitof-.L__profd___uitof
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___uitof, 48

	.type	.L__profc___ulltod,@object      # @__profc___ulltod
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ulltod:
	.skip	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      # @__profd___ulltod
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ulltod:
	.int64	3995277539005434566             # 0x377213c0fb840ac6
	.int64	24                              # 0x18
	.int32	.L__profc___ulltod-.L__profd___ulltod
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ulltod, 48

	.type	.L__profc___ulltof,@object      # @__profc___ulltof
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ulltof:
	.skip	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      # @__profd___ulltof
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ulltof:
	.int64	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.int64	24                              # 0x18
	.int32	.L__profc___ulltof-.L__profd___ulltof
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ulltof, 48

	.type	.L__profc___umodi,@object       # @__profc___umodi
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___umodi:
	.skip	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       # @__profd___umodi
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___umodi:
	.int64	6154071623751134202             # 0x5567a7893fff6bfa
	.int64	24                              # 0x18
	.int32	.L__profc___umodi-.L__profd___umodi
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___umodi, 48

	.type	.L__profc___clzhi2,@object      # @__profc___clzhi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___clzhi2:
	.skip	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      # @__profd___clzhi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___clzhi2:
	.int64	-9221703320275173474            # 0x8005edb05af53f9e
	.int64	19458657162328                  # 0x11b292591458
	.int32	.L__profc___clzhi2-.L__profd___clzhi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___clzhi2, 48

	.type	.L__profc___ctzhi2,@object      # @__profc___ctzhi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.skip	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      # @__profd___ctzhi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.int64	-1569202989881991136            # 0xea391231d79a6020
	.int64	19458657162328                  # 0x11b292591458
	.int32	.L__profc___ctzhi2-.L__profd___ctzhi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ctzhi2, 48

	.type	.L__profc___fixunssfsi,@object  # @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.skip	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  # @__profd___fixunssfsi
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.int64	-7800469359816066749            # 0x93bf2a7226d83943
	.int64	11245552728                     # 0x29e498458
	.int32	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	2                               # 0x2
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___fixunssfsi, 48

	.type	.L__profc___parityhi2,@object   # @__profc___parityhi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___parityhi2:
	.skip	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   # @__profd___parityhi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___parityhi2:
	.int64	1203893203113466329             # 0x10b5167d5f15d9d9
	.int64	304041497688                    # 0x46ca491458
	.int32	.L__profc___parityhi2-.L__profd___parityhi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___parityhi2, 48

	.type	.L__profc___popcounthi2,@object # @__profc___popcounthi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.skip	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object # @__profd___popcounthi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.int64	3943219574947026310             # 0x36b9214fb4159586
	.int64	304041497688                    # 0x46ca491458
	.int32	.L__profc___popcounthi2-.L__profd___popcounthi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___popcounthi2, 48

	.type	.L__profc___mulsi3_iq2000,@object # @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.skip	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object # @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.int64	-3976353352410196972            # 0xc8d127b190281414
	.int64	171971253336                    # 0x280a491458
	.int32	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mulsi3_iq2000, 48

	.type	.L__profc___mulsi3_lm32,@object # @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.skip	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object # @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.int64	2775651425054705869             # 0x26851843dab148cd
	.int64	-6210685127595396365            # 0xa9cf36c835dff2f3
	.int32	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mulsi3_lm32, 48

	.type	.L__profc___udivmodsi4,@object  # @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.skip	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  # @__profd___udivmodsi4
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.int64	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.int64	842736872197088594              # 0xbb200b8626e6552
	.int32	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	9                               # 0x9
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___udivmodsi4, 48

	.type	.L__profc___mspabi_cmpf,@object # @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.skip	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object # @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.int64	6399771733438470391             # 0x58d08e7bef2f98f7
	.int64	1352614535537600836             # 0x12c573c0ecbfa944
	.int32	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mspabi_cmpf, 48

	.type	.L__profc___mspabi_cmpd,@object # @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.skip	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object # @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.int64	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.int64	1352614535537600836             # 0x12c573c0ecbfa944
	.int32	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mspabi_cmpd, 48

	.type	.L__profc___mspabi_mpysll,@object # @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.skip	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object # @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.int64	-359228324547500507             # 0xfb03c3bdfa166625
	.int64	24                              # 0x18
	.int32	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mspabi_mpysll, 48

	.type	.L__profc___mspabi_mpyull,@object # @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.skip	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object # @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.int64	6629829186354316853             # 0x5c01e284c62a8635
	.int64	24                              # 0x18
	.int32	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mspabi_mpyull, 48

	.type	.L__profc___mulhi3,@object      # @__profc___mulhi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mulhi3:
	.skip	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      # @__profd___mulhi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mulhi3:
	.int64	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.int64	-5374843387156864121            # 0xb568b86aa1286387
	.int32	.L__profc___mulhi3-.L__profd___mulhi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	7                               # 0x7
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mulhi3, 48

	.type	.L__profc___divsi3,@object      # @__profc___divsi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___divsi3:
	.skip	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      # @__profd___divsi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___divsi3:
	.int64	5631431475223784324             # 0x4e26dd1711aaeb84
	.int64	510575534943447681              # 0x715edbe6f4f2a81
	.int32	.L__profc___divsi3-.L__profd___divsi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___divsi3, 48

	.type	.L__profc___modsi3,@object      # @__profc___modsi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___modsi3:
	.skip	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      # @__profd___modsi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___modsi3:
	.int64	-8995696579390192574            # 0x8328dd9f4e404442
	.int64	2121116644152358499             # 0x1d6fb85985deb663
	.int32	.L__profc___modsi3-.L__profd___modsi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	4                               # 0x4
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___modsi3, 48

	.type	.L__profc___udivmodhi4,@object  # @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.skip	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  # @__profd___udivmodhi4
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.int64	2241631039268115874             # 0x1f1bdf8db510d5a2
	.int64	842736872197088594              # 0xbb200b8626e6552
	.int32	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	9                               # 0x9
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___udivmodhi4, 48

	.type	.L__profc___udivmodsi4_libgcc,@object # @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.skip	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object # @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.int64	-1484205535638993157            # 0xeb670aedd291c6fb
	.int64	842736872197088594              # 0xbb200b8626e6552
	.int32	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	9                               # 0x9
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___udivmodsi4_libgcc, 48

	.type	.L__profc___ashldi3,@object     # @__profc___ashldi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ashldi3:
	.skip	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     # @__profd___ashldi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ashldi3:
	.int64	3719210884952086607             # 0x339d4a983a55d84f
	.int64	185294818348438616              # 0x2924ca7d2611458
	.int32	.L__profc___ashldi3-.L__profd___ashldi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ashldi3, 48

	.type	.L__profc___ashlti3,@object     # @__profc___ashlti3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ashlti3:
	.skip	24
	.size	.L__profc___ashlti3, 24

	.type	.L__profd___ashlti3,@object     # @__profd___ashlti3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ashlti3:
	.int64	8422580559269035854             # 0x74e30464d7577f4e
	.int64	185294818348438616              # 0x2924ca7d2611458
	.int32	.L__profc___ashlti3-.L__profd___ashlti3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ashlti3, 48

	.type	.L__profc___ashrdi3,@object     # @__profc___ashrdi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.skip	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     # @__profd___ashrdi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.int64	-1855717345837424946            # 0xe63f2ae7edd45ece
	.int64	185294818348438616              # 0x2924ca7d2611458
	.int32	.L__profc___ashrdi3-.L__profd___ashrdi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ashrdi3, 48

	.type	.L__profc___ashrti3,@object     # @__profc___ashrti3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ashrti3:
	.skip	24
	.size	.L__profc___ashrti3, 24

	.type	.L__profd___ashrti3,@object     # @__profd___ashrti3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ashrti3:
	.int64	-1576641649180751463            # 0xea1ea4c6027ec999
	.int64	185294818348438616              # 0x2924ca7d2611458
	.int32	.L__profc___ashrti3-.L__profd___ashrti3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ashrti3, 48

	.type	.L__profc___bswapdi2,@object    # @__profc___bswapdi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.skip	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    # @__profd___bswapdi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.int64	9149352740892555196             # 0x7ef907d7ada5b7bc
	.int64	24                              # 0x18
	.int32	.L__profc___bswapdi2-.L__profd___bswapdi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___bswapdi2, 48

	.type	.L__profc___bswapsi2,@object    # @__profc___bswapsi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.skip	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    # @__profd___bswapsi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.int64	-3374945843358245974            # 0xd129c8a2fe735baa
	.int64	24                              # 0x18
	.int32	.L__profc___bswapsi2-.L__profd___bswapsi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___bswapsi2, 48

	.type	.L__profc___clzsi2,@object      # @__profc___clzsi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___clzsi2:
	.skip	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      # @__profd___clzsi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___clzsi2:
	.int64	1382681549752930563             # 0x1330458b32829103
	.int64	33814345247                     # 0x7df7df61f
	.int32	.L__profc___clzsi2-.L__profd___clzsi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___clzsi2, 48

	.type	.L__profc___clzti2,@object      # @__profc___clzti2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___clzti2:
	.skip	8
	.size	.L__profc___clzti2, 8

	.type	.L__profd___clzti2,@object      # @__profd___clzti2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___clzti2:
	.int64	-1806615119558762125            # 0xe6ed9d1ee0d9a173
	.int64	2008                            # 0x7d8
	.int32	.L__profc___clzti2-.L__profd___clzti2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___clzti2, 48

	.type	.L__profc___cmpdi2,@object      # @__profc___cmpdi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.skip	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      # @__profd___cmpdi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.int64	-5499644794300757496            # 0xb3ad5632ace08a08
	.int64	-7406659272189927428            # 0x993642a254c41ffc
	.int32	.L__profc___cmpdi2-.L__profd___cmpdi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___cmpdi2, 48

	.type	.L__profc___aeabi_lcmp,@object  # @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.skip	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  # @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.int64	7067747365298492588             # 0x6215aec83ed1d4ac
	.int64	24                              # 0x18
	.int32	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___aeabi_lcmp, 48

	.type	.L__profc___cmpti2,@object      # @__profc___cmpti2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___cmpti2:
	.skip	40
	.size	.L__profc___cmpti2, 40

	.type	.L__profd___cmpti2,@object      # @__profd___cmpti2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___cmpti2:
	.int64	-8389943187845644472            # 0x8b90ef1f5ac07f48
	.int64	-7406659272189927428            # 0x993642a254c41ffc
	.int32	.L__profc___cmpti2-.L__profd___cmpti2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___cmpti2, 48

	.type	.L__profc___ctzsi2,@object      # @__profc___ctzsi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.skip	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      # @__profd___ctzsi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.int64	-5501728155980453225            # 0xb3a5ef643c052a97
	.int64	33814345247                     # 0x7df7df61f
	.int32	.L__profc___ctzsi2-.L__profd___ctzsi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ctzsi2, 48

	.type	.L__profc___ctzti2,@object      # @__profc___ctzti2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ctzti2:
	.skip	8
	.size	.L__profc___ctzti2, 8

	.type	.L__profd___ctzti2,@object      # @__profd___ctzti2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ctzti2:
	.int64	7226039699906943586             # 0x64480cd265d2da62
	.int64	2008                            # 0x7d8
	.int32	.L__profc___ctzti2-.L__profd___ctzti2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ctzti2, 48

	.type	.L__profc___ffsti2,@object      # @__profc___ffsti2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ffsti2:
	.skip	24
	.size	.L__profc___ffsti2, 24

	.type	.L__profd___ffsti2,@object      # @__profd___ffsti2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ffsti2:
	.int64	7347651670313848928             # 0x65f81a43be5cd060
	.int64	-6109625065311516695            # 0xab36405f8f48c7e9
	.int32	.L__profc___ffsti2-.L__profd___ffsti2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ffsti2, 48

	.type	.L__profc___lshrdi3,@object     # @__profc___lshrdi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.skip	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     # @__profd___lshrdi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.int64	10441766047587925               # 0x2518bb1c181e55
	.int64	185294818348438616              # 0x2924ca7d2611458
	.int32	.L__profc___lshrdi3-.L__profd___lshrdi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___lshrdi3, 48

	.type	.L__profc___lshrti3,@object     # @__profc___lshrti3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___lshrti3:
	.skip	24
	.size	.L__profc___lshrti3, 24

	.type	.L__profd___lshrti3,@object     # @__profd___lshrti3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___lshrti3:
	.int64	-8202552090810439010            # 0x8e2aae55179b2a9e
	.int64	185294818348438616              # 0x2924ca7d2611458
	.int32	.L__profc___lshrti3-.L__profd___lshrti3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	3                               # 0x3
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___lshrti3, 48

	.type	.L__profc___muldsi3,@object     # @__profc___muldsi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___muldsi3:
	.skip	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     # @__profd___muldsi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___muldsi3:
	.int64	4756674255824047264             # 0x42031a08a2a34ca0
	.int64	24                              # 0x18
	.int32	.L__profc___muldsi3-.L__profd___muldsi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___muldsi3, 48

	.type	.L__profc___muldi3_compiler_rt,@object # @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.skip	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object # @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.int64	-737717619142303851             # 0xf5c319bbe679df95
	.int64	24                              # 0x18
	.int32	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___muldi3_compiler_rt, 48

	.type	.L__profc___mulddi3,@object     # @__profc___mulddi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___mulddi3:
	.skip	8
	.size	.L__profc___mulddi3, 8

	.type	.L__profd___mulddi3,@object     # @__profd___mulddi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___mulddi3:
	.int64	373830907859946247              # 0x5301d3ae50dcb07
	.int64	24                              # 0x18
	.int32	.L__profc___mulddi3-.L__profd___mulddi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___mulddi3, 48

	.type	.L__profc___multi3,@object      # @__profc___multi3
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___multi3:
	.skip	8
	.size	.L__profc___multi3, 8

	.type	.L__profd___multi3,@object      # @__profd___multi3
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___multi3:
	.int64	8967568818272694478             # 0x7c733453f80370ce
	.int64	24                              # 0x18
	.int32	.L__profc___multi3-.L__profd___multi3
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___multi3, 48

	.type	.L__profc___negdi2,@object      # @__profc___negdi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___negdi2:
	.skip	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      # @__profd___negdi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___negdi2:
	.int64	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.int64	24                              # 0x18
	.int32	.L__profc___negdi2-.L__profd___negdi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___negdi2, 48

	.type	.L__profc___negti2,@object      # @__profc___negti2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___negti2:
	.skip	8
	.size	.L__profc___negti2, 8

	.type	.L__profd___negti2,@object      # @__profd___negti2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___negti2:
	.int64	8691511294418398176             # 0x789e7379011aabe0
	.int64	24                              # 0x18
	.int32	.L__profc___negti2-.L__profd___negti2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___negti2, 48

	.type	.L__profc___paritydi2,@object   # @__profc___paritydi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___paritydi2:
	.skip	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   # @__profd___paritydi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___paritydi2:
	.int64	-5102883611502574357            # 0xb92eea643e3a04eb
	.int64	24                              # 0x18
	.int32	.L__profc___paritydi2-.L__profd___paritydi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___paritydi2, 48

	.type	.L__profc___parityti2,@object   # @__profc___parityti2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___parityti2:
	.skip	8
	.size	.L__profc___parityti2, 8

	.type	.L__profd___parityti2,@object   # @__profd___parityti2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___parityti2:
	.int64	-7527016531061130461            # 0x978aaa58479bbb23
	.int64	24                              # 0x18
	.int32	.L__profc___parityti2-.L__profd___parityti2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___parityti2, 48

	.type	.L__profc___paritysi2,@object   # @__profc___paritysi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___paritysi2:
	.skip	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   # @__profd___paritysi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___paritysi2:
	.int64	8495812714014201054             # 0x75e730a6911054de
	.int64	24                              # 0x18
	.int32	.L__profc___paritysi2-.L__profd___paritysi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___paritysi2, 48

	.type	.L__profc___popcountdi2,@object # @__profc___popcountdi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.skip	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object # @__profd___popcountdi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.int64	4342496508124198892             # 0x3c43a5910d1df7ec
	.int64	24                              # 0x18
	.int32	.L__profc___popcountdi2-.L__profd___popcountdi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___popcountdi2, 48

	.type	.L__profc___popcountsi2,@object # @__profc___popcountsi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.skip	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object # @__profd___popcountsi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.int64	-2149276146439341705            # 0xe22c3cbb6f433977
	.int64	24                              # 0x18
	.int32	.L__profc___popcountsi2-.L__profd___popcountsi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___popcountsi2, 48

	.type	.L__profc___popcountti2,@object # @__profc___popcountti2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___popcountti2:
	.skip	8
	.size	.L__profc___popcountti2, 8

	.type	.L__profd___popcountti2,@object # @__profd___popcountti2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___popcountti2:
	.int64	-26294454666068629              # 0xffa295553210fd6b
	.int64	24                              # 0x18
	.int32	.L__profc___popcountti2-.L__profd___popcountti2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___popcountti2, 48

	.type	.L__profc___powidf2,@object     # @__profc___powidf2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___powidf2:
	.skip	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     # @__profd___powidf2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___powidf2:
	.int64	-1752541073601039051            # 0xe7adb92dcdba7535
	.int64	-4868838055443737378            # 0xbc6e6995b45f54de
	.int32	.L__profc___powidf2-.L__profd___powidf2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___powidf2, 48

	.type	.L__profc___powisf2,@object     # @__profc___powisf2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___powisf2:
	.skip	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     # @__profd___powisf2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___powisf2:
	.int64	-3807360110918407144            # 0xcb298a26c0b76c18
	.int64	-4868838055443737378            # 0xbc6e6995b45f54de
	.int32	.L__profc___powisf2-.L__profd___powisf2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___powisf2, 48

	.type	.L__profc___ucmpdi2,@object     # @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.skip	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     # @__profd___ucmpdi2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.int64	-2044349310657886323            # 0xe3a10322256c078d
	.int64	-7406659272189927428            # 0x993642a254c41ffc
	.int32	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ucmpdi2, 48

	.type	.L__profc___aeabi_ulcmp,@object # @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.skip	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object # @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.int64	448670595368434735              # 0x639ff8782193c2f
	.int64	24                              # 0x18
	.int32	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	1                               # 0x1
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___aeabi_ulcmp, 48

	.type	.L__profc___ucmpti2,@object     # @__profc___ucmpti2
	.section	__llvm_prf_cnts,"",@
	.p2align	3, 0x0
.L__profc___ucmpti2:
	.skip	40
	.size	.L__profc___ucmpti2, 40

	.type	.L__profd___ucmpti2,@object     # @__profd___ucmpti2
	.section	__llvm_prf_data,"R",@
	.p2align	3, 0x0
.L__profd___ucmpti2:
	.int64	2719998967855154749             # 0x25bf60a66c6f863d
	.int64	-7406659272189927428            # 0x993642a254c41ffc
	.int32	.L__profc___ucmpti2-.L__profd___ucmpti2
	.int32	0                               # 0x0
	.int32	0
	.int32	0
	.int32	5                               # 0x5
	.skip	6
	.skip	2
	.int32	0                               # 0x0
	.size	.L__profd___ucmpti2, 48

	.type	.L__llvm_prf_nm,@object         # @__llvm_prf_nm
	.section	__llvm_prf_names,"R",@
.L__llvm_prf_nm:
	.ascii	"\247\013\315\004x\332]\223\013n\343 \020\206\305\215\272MU\365\032{\002\013\033\210G\035\f\001\\\222\236~\347\201\363X)\342\373\347\347\345\031&\321~\373\251\201\211\302\335D\037c\372\361\314e\3117\341Z\0041\013\324,\303\255\276\231\3322\273\265\261\271\3558\224\2006\021\320o\214M\302ng\003\325b^-\263.\000\304\031\355\366M\\6ZNtp\206F<\027\233W\"\246\356\0131\027\330\330\257\331.\236\270\347,~?6\366cg?\226\366\253Z-\351e\301A\224!\230\020\355U\006\225H#l2\004\031\321\340\347\2075\265\330\315\031\031`\253\227\335\233\342#\003\253\267\224\253\301\0004g\347jlK\300\003\312\200f\036+\006\247b\034\374\030\240\313x5\223c\344\000E\251\024\335\227\312udP\341\030Tf\002\227\223 \345\354\343\205\372x\242>\336\250\037/\331\307+\315K\"\273\244F\0311\212\002O\357\022)p\252\277\022\016\342\237O\t\025\370%\301\027%\323m\236\310TA{U\320\221!\320\327\303\f\263/\3556qt\306\t*\0254\334\225\273+4\323\337<AK\027\312\336_sP\350\210\334`\327T\264ul\023\216V\312s\371f\036\215F?\303\tV8o\322\304>2\2441C\341#\247)\356T\325\223\331\251\2641\271\n\037\344-X\352|\201\367C:\221\264\262\322J\362\250\204np\035\354\274 9 \354\364\345n00\021\207\301B\234\261r\301\337UoiC\004\270\356[\255\241\362t\266\005\332M'r\312K\332\267\266>}\312\004\227\367\267\267\267G\214\361\304\263/\271D\372O\314@\337\230\303K\344\036Q\244\nQS>\307\273\306;\256\2221\035\250\251\313\261\247\307\035\253\334\361\270p\242W>/\013y\266\256RXU\355P\345\356\025\365\244G\264\300\"\353(\373\357]4\025q\254\262\236\277\021\271\255\305mG\005\353!\324\241.S\201\367[\361~+\277z\275+*\335\222b\006\364e*m\230\356\230\326\035\233?\353\375$\364\\}\036\367\244\237\375\372\362l\356%z\235\033\273R\007\027\016UE\355\377%\275\217\254wM\373\037[\370\006\333"
	.size	.L__llvm_prf_nm, 593

	.no_dead_strip	__llvm_profile_runtime_user
	.no_dead_strip	.L__profd_make_ti
	.no_dead_strip	.L__profd_make_tu
	.no_dead_strip	.L__profd_memmove
	.no_dead_strip	.L__profd_memccpy
	.no_dead_strip	.L__profd_memchr
	.no_dead_strip	.L__profd_memcmp
	.no_dead_strip	.L__profd_memcpy
	.no_dead_strip	.L__profd_memrchr
	.no_dead_strip	.L__profd_memset
	.no_dead_strip	.L__profd_stpcpy
	.no_dead_strip	.L__profd_strchrnul
	.no_dead_strip	.L__profd_strchr
	.no_dead_strip	.L__profd_strcmp
	.no_dead_strip	.L__profd_strlen
	.no_dead_strip	.L__profd_strncmp
	.no_dead_strip	.L__profd_swab
	.no_dead_strip	.L__profd_isalpha
	.no_dead_strip	.L__profd_isascii
	.no_dead_strip	.L__profd_isblank
	.no_dead_strip	.L__profd_iscntrl
	.no_dead_strip	.L__profd_isdigit
	.no_dead_strip	.L__profd_isgraph
	.no_dead_strip	.L__profd_islower
	.no_dead_strip	.L__profd_isprint
	.no_dead_strip	.L__profd_isspace
	.no_dead_strip	.L__profd_isupper
	.no_dead_strip	.L__profd_iswcntrl
	.no_dead_strip	.L__profd_iswdigit
	.no_dead_strip	.L__profd_iswprint
	.no_dead_strip	.L__profd_iswxdigit
	.no_dead_strip	.L__profd_toascii
	.no_dead_strip	.L__profd_fdim
	.no_dead_strip	.L__profd_fdimf
	.no_dead_strip	.L__profd_fmax
	.no_dead_strip	.L__profd_fmaxf
	.no_dead_strip	.L__profd_fmaxl
	.no_dead_strip	.L__profd_fmin
	.no_dead_strip	.L__profd_fminf
	.no_dead_strip	.L__profd_fminl
	.no_dead_strip	.L__profd_l64a
	.no_dead_strip	.L__profd_srand
	.no_dead_strip	.L__profd_rand
	.no_dead_strip	.L__profd_insque
	.no_dead_strip	.L__profd_remque
	.no_dead_strip	.L__profd_lsearch
	.no_dead_strip	.L__profd_lfind
	.no_dead_strip	.L__profd_abs
	.no_dead_strip	.L__profd_atoi
	.no_dead_strip	.L__profd_atol
	.no_dead_strip	.L__profd_atoll
	.no_dead_strip	.L__profd_bsearch
	.no_dead_strip	.L__profd_bsearch_r
	.no_dead_strip	.L__profd_div
	.no_dead_strip	.L__profd_imaxabs
	.no_dead_strip	.L__profd_imaxdiv
	.no_dead_strip	.L__profd_labs
	.no_dead_strip	.L__profd_ldiv
	.no_dead_strip	.L__profd_llabs
	.no_dead_strip	.L__profd_lldiv
	.no_dead_strip	.L__profd_wcschr
	.no_dead_strip	.L__profd_wcscmp
	.no_dead_strip	.L__profd_wcscpy
	.no_dead_strip	.L__profd_wcslen
	.no_dead_strip	.L__profd_wcsncmp
	.no_dead_strip	.L__profd_wmemchr
	.no_dead_strip	.L__profd_wmemcmp
	.no_dead_strip	.L__profd_wmemcpy
	.no_dead_strip	.L__profd_wmemmove
	.no_dead_strip	.L__profd_wmemset
	.no_dead_strip	.L__profd_bcopy
	.no_dead_strip	.L__profd_rotl64
	.no_dead_strip	.L__profd_rotr64
	.no_dead_strip	.L__profd_rotl32
	.no_dead_strip	.L__profd_rotr32
	.no_dead_strip	.L__profd_rotl_sz
	.no_dead_strip	.L__profd_rotr_sz
	.no_dead_strip	.L__profd_rotl16
	.no_dead_strip	.L__profd_rotr16
	.no_dead_strip	.L__profd_rotl8
	.no_dead_strip	.L__profd_rotr8
	.no_dead_strip	.L__profd_bswap_16
	.no_dead_strip	.L__profd_bswap_32
	.no_dead_strip	.L__profd_bswap_64
	.no_dead_strip	.L__profd_ffs
	.no_dead_strip	.L__profd_libiberty_ffs
	.no_dead_strip	.L__profd_gl_isinff
	.no_dead_strip	.L__profd_gl_isinfd
	.no_dead_strip	.L__profd_gl_isinfl
	.no_dead_strip	.L__profd__Qp_itoq
	.no_dead_strip	.L__profd_ldexpf
	.no_dead_strip	.L__profd_ldexp
	.no_dead_strip	.L__profd_ldexpl
	.no_dead_strip	.L__profd_memxor
	.no_dead_strip	.L__profd_strncat
	.no_dead_strip	.L__profd_strnlen
	.no_dead_strip	.L__profd_strpbrk
	.no_dead_strip	.L__profd_strrchr
	.no_dead_strip	.L__profd_strstr
	.no_dead_strip	.L__profd_copysign
	.no_dead_strip	.L__profd_memmem
	.no_dead_strip	.L__profd_mempcpy
	.no_dead_strip	.L__profd_frexp
	.no_dead_strip	.L__profd___muldi3
	.no_dead_strip	.L__profd_udivmodsi4
	.no_dead_strip	.L__profd___clrsbqi2
	.no_dead_strip	.L__profd___clrsbdi2
	.no_dead_strip	.L__profd___mulsi3
	.no_dead_strip	.L__profd___cmovd
	.no_dead_strip	.L__profd___cmovh
	.no_dead_strip	.L__profd___cmovw
	.no_dead_strip	.L__profd___modi
	.no_dead_strip	.L__profd___uitod
	.no_dead_strip	.L__profd___uitof
	.no_dead_strip	.L__profd___ulltod
	.no_dead_strip	.L__profd___ulltof
	.no_dead_strip	.L__profd___umodi
	.no_dead_strip	.L__profd___clzhi2
	.no_dead_strip	.L__profd___ctzhi2
	.no_dead_strip	.L__profd___fixunssfsi
	.no_dead_strip	.L__profd___parityhi2
	.no_dead_strip	.L__profd___popcounthi2
	.no_dead_strip	.L__profd___mulsi3_iq2000
	.no_dead_strip	.L__profd___mulsi3_lm32
	.no_dead_strip	.L__profd___udivmodsi4
	.no_dead_strip	.L__profd___mspabi_cmpf
	.no_dead_strip	.L__profd___mspabi_cmpd
	.no_dead_strip	.L__profd___mspabi_mpysll
	.no_dead_strip	.L__profd___mspabi_mpyull
	.no_dead_strip	.L__profd___mulhi3
	.no_dead_strip	.L__profd___divsi3
	.no_dead_strip	.L__profd___modsi3
	.no_dead_strip	.L__profd___udivmodhi4
	.no_dead_strip	.L__profd___udivmodsi4_libgcc
	.no_dead_strip	.L__profd___ashldi3
	.no_dead_strip	.L__profd___ashlti3
	.no_dead_strip	.L__profd___ashrdi3
	.no_dead_strip	.L__profd___ashrti3
	.no_dead_strip	.L__profd___bswapdi2
	.no_dead_strip	.L__profd___bswapsi2
	.no_dead_strip	.L__profd___clzsi2
	.no_dead_strip	.L__profd___clzti2
	.no_dead_strip	.L__profd___cmpdi2
	.no_dead_strip	.L__profd___aeabi_lcmp
	.no_dead_strip	.L__profd___cmpti2
	.no_dead_strip	.L__profd___ctzsi2
	.no_dead_strip	.L__profd___ctzti2
	.no_dead_strip	.L__profd___ffsti2
	.no_dead_strip	.L__profd___lshrdi3
	.no_dead_strip	.L__profd___lshrti3
	.no_dead_strip	.L__profd___muldsi3
	.no_dead_strip	.L__profd___muldi3_compiler_rt
	.no_dead_strip	.L__profd___mulddi3
	.no_dead_strip	.L__profd___multi3
	.no_dead_strip	.L__profd___negdi2
	.no_dead_strip	.L__profd___negti2
	.no_dead_strip	.L__profd___paritydi2
	.no_dead_strip	.L__profd___parityti2
	.no_dead_strip	.L__profd___paritysi2
	.no_dead_strip	.L__profd___popcountdi2
	.no_dead_strip	.L__profd___popcountsi2
	.no_dead_strip	.L__profd___popcountti2
	.no_dead_strip	.L__profd___powidf2
	.no_dead_strip	.L__profd___powisf2
	.no_dead_strip	.L__profd___ucmpdi2
	.no_dead_strip	.L__profd___aeabi_ulcmp
	.no_dead_strip	.L__profd___ucmpti2
	.no_dead_strip	.L__llvm_prf_nm
	.section	.init_array.0,"",@
	.p2align	2, 0x0
	.int32	__llvm_gcov_init
	.int32	__llvm_profile_init
	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.no_dead_strip	__indirect_function_table
	.size	__llvm_profile_runtime, 4
	.section	.custom_section.producers,"",@
	.int8	2
	.int8	8
	.ascii	"language"
	.int8	1
	.int8	3
	.ascii	"C11"
	.int8	0
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.int8	29
	.ascii	"19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	.init_array.0,"",@
