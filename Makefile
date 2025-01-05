# Makefiles are prettier like this
ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. \
        Please use GNU Make 3.82 or later)
endif
.RECIPEPREFIX = >

# Use bash as the shell
SHELL := bash

# ...And use strict flags with it to make sure things fail if a step in there
# fails
.SHELLFLAGS := -eu -o pipefail -c

# Delete the target file of a Make rule if it fails - this guards against
# broken files
.DELETE_ON_ERROR:

# --no-builtin-rules: I'd rather make my own rules myself, make, thanks :)
# --warn-undefined-variables: Is nice tbh
MAKEFLAGS += --no-builtin-rules --warn-undefined-variables

GCC_OPT_PARAMS = --param=max-crossjump-edges=300 --param=max-goto-duplication-insns=100 --param=max-delay-slot-insn-search=1000 --param=max-delay-slot-live-search=3333 --param=max-gcse-memory=300000 --param=max-pending-list-length=320 --param=max-modulo-backtrack-attempts=100 --param=max-early-inliner-iterations=10 --param=modref-max-tests=640 --param=modref-max-depth=2560 --param=modref-max-escape-points=2560 --param=modref-max-adjustments=80 --param=max-hoist-depth=300 --param=max-tail-merge-comparisons=100 --param=max-tail-merge-iterations=20 --param=max-store-chains-to-track=640 --param=max-stores-to-track=10240 --param=iv-consider-all-candidates-bound=400 --param=iv-max-considered-uses=2500 --param=dse-max-object-size=2560 --param=dse-max-alias-queries-per-store=2560 --param=scev-max-expr-size=1000 --param=scev-max-expr-complexity=100 --param=max-iterations-to-track=10000 --param=max-cse-path-length=300 --param=max-cse-insns=10000 --param=max-reload-search-insns=1000 --param=max-cselib-memory-locations=5000 --param=max-sched-ready-insns=1000 --param=max-sched-region-blocks=200 --param=max-pipeline-region-blocks=150 --param=max-sched-region-insns=187 --param=max-pipeline-region-insns=2000 --param=selsched-max-lookahead=500 --param=selsched-max-sched-times=20 --param=selsched-insns-to-rename=20 --param=max-last-value-rtl=100000 --param=max-jump-thread-paths=640 --param=max-fields-for-field-sensitive=1000 --param=max-partial-antic-length=1000 --param=sccvn-max-alias-queries-per-access=10000 --param=ira-max-conflict-table-size=1500 --param=loop-invariant-max-bbs-in-loop=100000 --param=loop-max-datarefs-for-datadeps=10000 --param=max-vartrack-size=100000000 --param=max-vartrack-expr-depth=120 --param=ipa-sra-max-replacements=16 --param=sra-max-propagations=320 --param=ipa-jump-function-lookups=80 --param=ipa-cp-value-list-size=80 --param=ipa-max-aa-steps=250000 --param=ipa-max-switch-predicate-bounds=50 --param=ipa-max-param-expr-ops=100 --param=max-ssa-name-query-depth=10 --param=max-speculative-devirt-maydefs=500 --param=max-tracked-strlens=100000 --param=vrp-switch-limit=500 --param=uninit-control-dep-attempts=10000 --param=ranger-logical-depth=60 --param=ranger-recompute-depth=50 --param=relation-block-limit=2000

GCC_OPT_FLAGS = -O3 -fmodulo-sched -fmodulo-sched-allow-regmoves -fgcse-sm -fgcse-las -fdelete-null-pointer-checks -fdevirtualize-speculatively -fdevirtualize-at-ltrans -free -flive-range-shrinkage -fira-hoist-pressure -fsched-pressure -fsched-spec-load -fsched-spec-load-dangerous -fno-semantic-interposition -ffinite-loops -ftree-loop-im -ftree-loop-ivcanon -fivopts -ftree-vectorize -fvariable-expansion-in-unroller -fno-unreachable-traps -fweb -frename-registers -fstdarg-opt -freorder-blocks-and-partition -ftree-loop-if-convert $(GCC_OPT_PARAMS)

all: gcc-x86_64.s gcc-aarch64.s gcc-alpha.s gcc-arc.s gcc-arm.s gcc-avr.s gcc-bfin.s gcc-bpf.s gcc-c6x.s gcc-frv.s gcc-h8300.s gcc-hppa64.s gcc-hppa.s gcc-i386.s gcc-i686-mingw.s gcc-ia64.s gcc-loongarch64.s gcc-m68k.s gcc-microblaze.s gcc-mips64.s gcc-mn10300.s gcc-nios2.s gcc-openrisc.s gcc-powerpc64le.s gcc-powerpc64.s gcc-riscv64.s gcc-s390x.s gcc-sparc64.s gcc-xtensa.s gcc-x86_64-mingw.s gcc-mips32.s gcc-mips16.s gcc-micromips.s gcc-powerpc32le.s gcc-powerpc32.s gcc-riscv32.s gcc-s390.s gcc-sparc32.s

GCC_X86_OPTIONS = -mhard-float -mieee-fp -mcx16 -msahf -mmovbe -mshstk -mcrc32 -mmwait -momit-leaf-frame-pointer -mmmx -msse -msse2 -msse3 -mssse3 -msse4 -msse4a -msse4.1 -msse4.2 -mavx -mavx2 -mavx512f -mavx512cd -mavx512vl -mavx512bw -mavx512dq -mavx512ifma -mavx512vbmi -msha -maes -mpclmul -mclflushopt -mclwb -mfsgsbase -mptwrite -mrdrnd -mf16c -mfma -mpconfig -mwbnoinvd -mfma4 -mprfchw -mrdpid -mrdseed -msgx -mxop -mlwp -m3dnow -m3dnowa -mpopcnt -mabm -madx -mbmi -mbmi2 -mlzcnt -mfxsr -mxsave -mxsaveopt -mxsavec -mxsaves -mrtm -mhle -mtbm -mmwaitx -mclzero -mpku -mavx512vbmi2 -mavx512bf16 -mavx512fp16 -mgfni -mvaes -mwaitpkg -mvpclmulqdq -mavx512bitalg -mmovdiri -mmovdir64b -menqcmd -mtsxldtrk -mavx512vpopcntdq -mavx512vp2intersect -mavx512vnni -mavxvnni -mcldemote -mserialize -mamx-tile -mamx-int8 -mamx-bf16 -mhreset -mkl -mwidekl -mavxifma -mavxvnniint8 -msm3 -msha512 -msm4 -musermsr -mavx10.1 -mavx10.1-256 -mavx10.1-512

gcc-x86_64.s: mini-libc.c
> x86_64-linux-gnu-gcc -masm=intel -S $< -o $@ $(GCC_OPT_FLAGS) -march=x86-64-v4 $(GCC_X86_OPTIONS) -mapxf -mtune=generic

gcc-i386.s: mini-libc.c
> x86_64-linux-gnu-gcc -masm=intel -m32 -S $< -o $@ $(GCC_OPT_FLAGS) -march=x86-64-v4 $(GCC_X86_OPTIONS) -mtune=generic

gcc-i686-mingw.s: mini-libc.c
> i686-w64-mingw32-gcc -masm=intel -S $< -o $@ $(GCC_OPT_FLAGS) -march=x86-64-v4 $(GCC_X86_OPTIONS) -mtune=generic

gcc-x86_64-mingw.s: mini-libc.c
> x86_64-w64-mingw32-gcc -masm=intel -S $< -o $@ $(GCC_OPT_FLAGS) -march=x86-64-v4 $(GCC_X86_OPTIONS) -mapxf -mtune=generic

gcc-aarch64.s: mini-libc.c
> aarch64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -momit-leaf-frame-pointer -march=armv9.4-a+crc+crypto+fp+simd+sve+lse+rdma+fp16+fp16fml+rcpc+dotprod+aes+sha2+sha3+sm4+profile+rng+memtag+sb+ssbs+predres+sve2+sve2-bitperm+sve2-sm4+sve2-aes+sve2-sha3+tme+i8mm+f32mm+f64mm+bf16+ls64+mops+flagm+pauth+cssc+sme+sme-i16i64+sme-f64f64+sme2+lse128+d128+gcs+the+rcpc3 -mtune=generic

gcc-alpha.s: mini-libc.c
> alpha-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=ev67 -mno-soft-float -mfp-regs -mbwx -mcix -mfix -mmax

gcc-arc.s: mini-libc.c
> arc-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mbarrel-shifter -mnorm -mswap -matomic -mdiv-rem -mcode-density -mll64 -mmpy-option=plus_qmacw -mfpu=fpud_div -mfpu=fpud_all -mbranch-index -mauto-modify-reg -mearly-cbranchsi -mindexed-loads -mlra -mcode-density-frame -mcpu=hs4x_rel31

gcc-arm.s: mini-libc.c
> arm-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=armv8.6-a+fp16+simd+crypto+i8mm+bf16 -mfloat-abi=hard

gcc-avr.s: mini-libc.c
> avr-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mmcu=avrxmega7 -mflmap -mrmw

gcc-bfin.s: mini-libc.c
> bfin-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -momit-leaf-frame-pointer -mno-specld-anomaly -mno-csync-anomaly -mcpu=bf592

gcc-bpf.s: mini-libc.c
> bpf-unknown-none-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=v4 -mjmpext -mjmp32 -malu32 -mv3-atomics -mbswap -msdiv -msmov -mxbpf

gcc-c6x.s: mini-libc.c
> c6x-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=c674x

gcc-frv.s: mini-libc.c
> frv-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=frv -mgpr-64 -mfpr-64 -mhard-float -malloc-cc -mdword -mdouble -mmedia -mmuladd -mpack -mcond-move -mscc -mcond-exec -mvliw-branch -mmulti-cond-exec -mnested-cond-exec -moptimize-membar

gcc-h8300.s: mini-libc.c
> h8300-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -ms -mn -ms2600

GCC_HPPA_OPTIONS = -march=2.0

gcc-hppa64.s: mini-libc.c
> hppa64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_HPPA_OPTIONS)

gcc-hppa.s: mini-libc.c
> hppa-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_HPPA_OPTIONS)

gcc-ia64.s: mini-libc.c
> ia64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -msdata -msched-br-data-spec -msched-control-spec -msched-br-in-data-spec -msched-ar-in-data-spec -msched-in-control-spec

gcc-loongarch64.s: mini-libc.c
> loongarch64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=la64v1.1 -mtune=generic -mfrecipe -mdiv32 -mlam-bh -mlamcas -mld-seq-sa -mfpu=64 -msimd=lasx

gcc-m68k.s: mini-libc.c
> m68k-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=68060 -mdiv -mbitfield -mhard-float

gcc-microblaze.s: mini-libc.c
> microblaze-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=v99.99.z -mhard-float -mno-xl-soft-mul -mno-xl-soft-div -mxl-barrel-shift -mxl-pattern-compare -mxl-multiply-high -mxl-float-convert -mxl-float-sqrt -mlittle-endian -mxl-reorder

GCC_MIPS_OPTIONS = -EL -mmips16e2 -mhard-float -modd-spreg -mabs=2008 -mnan=2008 -mllsc -mdsp -mdspr2 -msmartmips -mdmx -mmt -mmcu -meva -mvirt -mxpa -mcrc -mginv -mloongson-mmi -mloongson-ext -mloongson-ext2 -mload-store-pairs -mno-strict-align -mmad -mbranch-likely -msynci -march=mips64r5 -mfp64 -mips3d

gcc-mips64.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_MIPS_OPTIONS)

gcc-mips32.s: mini-libc.c
> mips64-linux-gnu-gcc -mabi=32 -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_MIPS_OPTIONS)

gcc-mips16.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mips16 -mabi=o64 $(GCC_MIPS_OPTIONS)

gcc-micromips.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mmicromips $(GCC_MIPS_OPTIONS)

gcc-mn10300.s: mini-libc.c
> mn10300-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mam34 -mtune=mn10300 -mno-mult-bug -mno-return-pointer-on-d0 -mliw -msetlb

gcc-nios2.s: mini-libc.c
> nios2-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=r2 -mel -mhw-mul -mhw-mulx -mhw-div -mcustom-fabss=224 -mcustom-fnegs=225 -mcustom-fcmpges=228 -mcustom-fcmplts=231 -mcustom-fmaxs=232 -mcustom-fmins=233 -mcustom-round=248 -mcustom-fsqrts=242 -mcustom-floatus=243 -mcustom-fixsi=244 -mcustom-floatis=245 -mcustom-fcmpgts=246 -mcustom-fcmples=249 -mcustom-fcmpeqs=250 -mcustom-fcmpnes=251 -mcustom-fmuls=252 -mcustom-fadds=253 -mcustom-fsubs=254 -mcustom-fdivs=255 -mcustom-fwrx=0 -mcustom-fwry=1 -mcustom-frdxhi=2 -mcustom-frdxlo=3 -mcustom-frdy=4 -mcustom-fcoss=5 -mcustom-fsins=6 -mcustom-ftans=7 -mcustom-fatans=8 -mcustom-fexps=9 -mcustom-flogs=10 -mcustom-faddd=11 -mcustom-fsubd=12 -mcustom-fdivd=13 -mcustom-fnegd=14 -mcustom-fabsd=15 -mcustom-fcmpeqd=16 -mcustom-fcmpged=17 -mcustom-fcmpgtd=18 -mcustom-fcmpled=19 -mcustom-fcmpltd=20 -mcustom-fcmpned=21 -mcustom-fmind=22 -mcustom-fmaxd=23 -mcustom-fsqrtd=24 -mcustom-fcosd=25 -mcustom-fsind=26 -mcustom-ftand=27 -mcustom-fatand=28 -mcustom-fexpd=29 -mcustom-flogd=30 -mbmx -mcdx

gcc-openrisc.s: mini-libc.c
> openrisc-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mhard-div -mhard-mul -mhard-float -mdouble-float -munordered-float -mcmov -mror -mrori -msext -msfimm -mshftimm

GCC_POWERPC_OPTIONS = -mpowerpc-gpopt -mpowerpc-gfxopt -mpowerpc64 -mmfcrf -mpopcntb -mpopcntd -mfprnd -mcmpb -mhard-float -mhard-dfp -maltivec -mvrsave -misel -mvsx -mcrypto -mhtm -mpower8-fusion -mquad-memory -mquad-memory-atomic -mfloat128 -mmultiple -mupdate -mno-avoid-indexed-addresses -mmulhw -mdlmzb -mno-strict-align -mregnames -mcpu=power11 -mprefixed

gcc-powerpc64le.s: mini-libc.c
> powerpc64le-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_POWERPC_OPTIONS) -mtune=powerpc64le

gcc-powerpc64.s: mini-libc.c
> powerpc64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_POWERPC_OPTIONS) -mtune=powerpc64

gcc-powerpc32le.s: mini-libc.c
> powerpc64le-linux-gnu-gcc -m32 -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_POWERPC_OPTIONS) -mtune=powerpc

gcc-powerpc32.s: mini-libc.c
> powerpc64-linux-gnu-gcc -m32 -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_POWERPC_OPTIONS) -mtune=powerpc

# Add -mdiv when we have the m extension
GCC_RISCV_OPTIONS = -mplt -mfdiv -mmovcc -mshorten-memrefs -mno-strict-align -mlittle-endian

GCC_RISCV_ARCH_EXTENSIONS = i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_h1p0_v1p0_zicsr2p0_zifencei2p0_zicond1p0_za64rs1p0_za128rs1p0_zawrs1p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zbkb1p0_zbkc1p0_zbkx1p0_zkne1p0_zknd1p0_zknh1p0_zkr1p0_zksed1p0_zksh1p0_zkt1p0_zk1p0_zkn1p0_zks1p0_zihintntl1p0_zihintpause1p0_zicboz1p0_zicbom1p0_zicbop1p0_zic64b1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr1p0_zihpm1p0_ztso1p0_zve32x1p0_zve32f1p0_zve64x1p0_zve64f1p0_zve64d1p0_zvl32b1p0_zvl64b1p0_zvl128b1p0_zvl256b1p0_zvl512b1p0_zvl1024b1p0_zvl2048b1p0_zvl4096b1p0_zvbb1p0_zvbc1p0_zvkb1p0_zvkg1p0_zvkned1p0_zvknha1p0_zvknhb1p0_zvksed1p0_zvksh1p0_zvkn1p0_zvknc1p0_zvkng1p0_zvks1p0_zvksc1p0_zvksg1p0_zvkt1p0_zfh1p0_zfhmin1p0_zvfh1p0_zvfhmin1p0_zvfbfmin1p0_zfa1p0_zmmul1p0_zca1p0_zcd1p0_zcb1p0_smaia1p0_smepmp1p0_smstateen1p0_ssaia1p0_sscofpmf1p0_ssstateen1p0_sstc1p0_svinval1p0_svnapot1p0_svpbmt1p0_xcvmac1p0_xcvalu1p0_xcvelw1p0_xtheadba1p0_xtheadbb1p0

gcc-riscv64.s: mini-libc.c
> riscv64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_RISCV_OPTIONS) -mabi=lp64d -march=rv64$(GCC_RISCV_ARCH_EXTENSIONS) -mtune=rocket

gcc-riscv32.s: mini-libc.c
> riscv64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_RISCV_OPTIONS) -mabi=ilp32d -march=rv32$(GCC_RISCV_ARCH_EXTENSIONS)_zcf1p0

gcc-s390x.s: mini-libc.c
> s390x-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-s390.s: mini-libc.c
> s390x-linux-gnu-gcc -m31 -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-sparc64.s: mini-libc.c
> sparc64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-sparc32.s: mini-libc.c
> sparc64-linux-gnu-gcc -m32 -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-xtensa.s: mini-libc.c
> xtensa-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

clean:
> rm --force ./*.s
