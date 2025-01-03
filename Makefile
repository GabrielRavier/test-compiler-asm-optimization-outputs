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

GCC_X86_OPTIONS = -mhard-float -mieee-fp -mcx16 -msahf -mmovbe -mshstk -mcrc32 -mmwait -momit-leaf-frame-pointer -mmmx -msse -msse2 -msse3 -mssse3 -msse4 -msse4a -msse4.1 -msse4.2 -mavx -mavx2 -mavx512f -mavx512cd -mavx512vl -mavx512bw

gcc-x86_64.s: mini-libc.c
> x86_64-linux-gnu-gcc -masm=intel -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_X86_OPTIONS) -mtune=generic

gcc-i386.s: mini-libc.c
> x86_64-linux-gnu-gcc -masm=intel -m32 -S $< -o $@ $(GCC_OPT_FLAGS) -march=i686 $(GCC_X86_OPTIONS) -mtune=generic

gcc-i686-mingw.s: mini-libc.c
> i686-w64-mingw32-gcc -masm=intel -S $< -o $@ $(GCC_OPT_FLAGS) -march=i686 $(GCC_X86_OPTIONS) -mtune=generic

gcc-x86_64-mingw.s: mini-libc.c
> x86_64-w64-mingw32-gcc -masm=intel -S $< -o $@ $(GCC_OPT_FLAGS) $(GCC_X86_OPTIONS) -mtune=generic

gcc-aarch64.s: mini-libc.c
> aarch64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mtune=generic

gcc-alpha.s: mini-libc.c
> alpha-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-arc.s: mini-libc.c
> arc-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-arm.s: mini-libc.c
> arm-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=armv4

gcc-avr.s: mini-libc.c
> avr-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-bfin.s: mini-libc.c
> bfin-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-bpf.s: mini-libc.c
> bpf-unknown-none-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=v1

gcc-c6x.s: mini-libc.c
> c6x-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-frv.s: mini-libc.c
> frv-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=simple

gcc-h8300.s: mini-libc.c
> h8300-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-hppa64.s: mini-libc.c
> hppa64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-hppa.s: mini-libc.c
> hppa-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-ia64.s: mini-libc.c
> ia64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-loongarch64.s: mini-libc.c
> loongarch64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mtune=generic

gcc-m68k.s: mini-libc.c
> m68k-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=68000

gcc-microblaze.s: mini-libc.c
> microblaze-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-mips64.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=mips3

gcc-mips32.s: mini-libc.c
> mips64-linux-gnu-gcc -mabi=32 -S $< -o $@ $(GCC_OPT_FLAGS) -march=mips1 -mfp32

gcc-mips16.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mips16 -mabi=o64 -frerun-cse-after-loop

gcc-micromips.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mmicromips

gcc-mn10300.s: mini-libc.c
> mn10300-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mam33 -mtune=mn10300

gcc-nios2.s: mini-libc.c
> nios2-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -march=r1

gcc-openrisc.s: mini-libc.c
> openrisc-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-powerpc64le.s: mini-libc.c
> powerpc64le-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=power3 -mtune=powerpc64le

gcc-powerpc64.s: mini-libc.c
> powerpc64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=power3 -mtune=powerpc64

gcc-powerpc32le.s: mini-libc.c
> powerpc64le-linux-gnu-gcc -m32 -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=401 -mtune=powerpc

gcc-powerpc32.s: mini-libc.c
> powerpc64-linux-gnu-gcc -m32 -S $< -o $@ $(GCC_OPT_FLAGS) -mcpu=401 -mtune=powerpc

gcc-riscv64.s: mini-libc.c
> riscv64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS)

gcc-riscv32.s: mini-libc.c
> riscv64-linux-gnu-gcc -S $< -o $@ $(GCC_OPT_FLAGS) -mabi=ilp32e -march=rv32e

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
