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

OPT_FLAGS = -O3 -fno-version-loops-for-strides

all: gcc-x86_64.s gcc-aarch64.s gcc-alpha.s gcc-arc.s gcc-arm.s gcc-avr.s gcc-bfin.s gcc-bpf.s gcc-c6x.s gcc-frv.s gcc-h8300.s gcc-hppa64.s gcc-hppa.s gcc-i386.s gcc-i686-mingw.s gcc-ia64.s gcc-loongarch64.s gcc-m68k.s gcc-microblaze.s gcc-mips64.s gcc-mn10300.s gcc-nios2.s gcc-openrisc.s gcc-powerpc64le.s gcc-powerpc64.s gcc-riscv64.s gcc-s390x.s gcc-sparc64.s gcc-xtensa.s gcc-x86_64-mingw.s gcc-mips32.s gcc-mips16.s gcc-micromips.s gcc-powerpc32le.s gcc-powerpc32.s gcc-riscv32.s gcc-s390.s gcc-sparc32.s

gcc-x86_64.s: mini-libc.c
> x86_64-linux-gnu-gcc -masm=intel -S $< -o $@ $(OPT_FLAGS) -mtune=generic

gcc-aarch64.s: mini-libc.c
> aarch64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mtune=generic

gcc-alpha.s: mini-libc.c
> alpha-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-arc.s: mini-libc.c
> arc-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-arm.s: mini-libc.c
> arm-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -march=armv4

gcc-avr.s: mini-libc.c
> avr-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-bfin.s: mini-libc.c
> bfin-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-bpf.s: mini-libc.c
> bpf-unknown-none-gcc -S $< -o $@ $(OPT_FLAGS) -mcpu=v1

gcc-c6x.s: mini-libc.c
> c6x-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-frv.s: mini-libc.c
> frv-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mcpu=simple

gcc-h8300.s: mini-libc.c
> h8300-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-hppa64.s: mini-libc.c
> hppa64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-hppa.s: mini-libc.c
> hppa-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-i386.s: mini-libc.c
> x86_64-linux-gnu-gcc -masm=intel -m32 -S $< -o $@ $(OPT_FLAGS) -march=i386 -mtune=generic

gcc-i686-mingw.s: mini-libc.c
> i686-w64-mingw32-gcc -masm=intel -S $< -o $@ $(OPT_FLAGS) -march=i686 -mtune=generic

gcc-ia64.s: mini-libc.c
> ia64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-loongarch64.s: mini-libc.c
> loongarch64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mtune=generic

gcc-m68k.s: mini-libc.c
> m68k-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -march=68000

gcc-microblaze.s: mini-libc.c
> microblaze-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-mips64.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -march=mips3

gcc-mips32.s: mini-libc.c
> mips64-linux-gnu-gcc -mabi=32 -S $< -o $@ $(OPT_FLAGS) -march=mips1 -mfp32

gcc-mips16.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mips16 -mabi=o64 -frerun-cse-after-loop

gcc-micromips.s: mini-libc.c
> mips64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mmicromips

gcc-mn10300.s: mini-libc.c
> mn10300-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mam33 -mtune=mn10300

gcc-nios2.s: mini-libc.c
> nios2-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -march=r1

gcc-openrisc.s: mini-libc.c
> openrisc-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-powerpc64le.s: mini-libc.c
> powerpc64le-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mcpu=power3 -mtune=powerpc64le

gcc-powerpc64.s: mini-libc.c
> powerpc64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mcpu=power3 -mtune=powerpc64

gcc-powerpc32le.s: mini-libc.c
> powerpc64le-linux-gnu-gcc -m32 -S $< -o $@ $(OPT_FLAGS) -mcpu=401 -mtune=powerpc

gcc-powerpc32.s: mini-libc.c
> powerpc64-linux-gnu-gcc -m32 -S $< -o $@ $(OPT_FLAGS) -mcpu=401 -mtune=powerpc

gcc-riscv64.s: mini-libc.c
> riscv64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-riscv32.s: mini-libc.c
> riscv64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS) -mabi=ilp32e -march=rv32e

gcc-s390x.s: mini-libc.c
> s390x-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-s390.s: mini-libc.c
> s390x-linux-gnu-gcc -m31 -S $< -o $@ $(OPT_FLAGS)

gcc-sparc64.s: mini-libc.c
> sparc64-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-sparc32.s: mini-libc.c
> sparc64-linux-gnu-gcc -m32 -S $< -o $@ $(OPT_FLAGS)

gcc-xtensa.s: mini-libc.c
> xtensa-linux-gnu-gcc -S $< -o $@ $(OPT_FLAGS)

gcc-x86_64-mingw.s: mini-libc.c
> x86_64-w64-mingw32-gcc -masm=intel -S $< -o $@ $(OPT_FLAGS) -mtune=generic

clean:
> rm --force ./*.s
