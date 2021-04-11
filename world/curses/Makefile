CONFIGURE_ARGS+= \
	--prefix=/usr \
	--host=$(TARGET_TRIPLET) \
	--with-shared \
	--without-debug \
	--without-normal \
	--enable-pc-files \
	--enable-widec \
	--with-build-cc=gcc \
        --with-sysroot=$(TMPROOT)

.PHONY: bin install clean

bin: build/Makefile
	cd build && $(MAKE)

install: bin install-libc
	cd build && $(MAKE) install DESTDIR=$(SYSROOT)

build/Makefile: | build tmproot-install-libc
	cd build && ../src/configure $(CONFIGURE_ARGS)

build:
	mkdir build

clean:
	rm -rf build

include ../../config.inc.mk
include ../component.inc.mk

