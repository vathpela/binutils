# RV64 code using LP64 ABI.
source_sh ${srcdir}/emulparams/elf64lriscv-defs.sh
OUTPUT_FORMAT="elf64-littleriscv"

# On Linux, first look for 64 bit LP64 target libraries in /lib64/lp64 as per
# the glibc ABI, and then /lib64 for backward compatility.
case "$target" in
  riscv*-linux*)
    case "$EMULATION_NAME" in
      *64*)
	LIBPATH_SUFFIX="64/lp64 64";;
    esac
    ;;
esac
