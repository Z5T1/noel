$(common-objpfx)csu/elf-init.oS: \
 elf-init.c \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/symbol-hacks.h \
 /storage/data/Documents/Programs/netbsd-on-linux/bootstrap/tools/lib/gcc/x86_64-noel-linux-gnu/10.2.0/include/stddef.h \
 ../sysdeps/x86/elf-initfini.h
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)config.h:
../sysdeps/generic/symbol-hacks.h:
/storage/data/Documents/Programs/netbsd-on-linux/bootstrap/tools/lib/gcc/x86_64-noel-linux-gnu/10.2.0/include/stddef.h:
../sysdeps/x86/elf-initfini.h:
