CONFIGURE_ARGS+= \
	--prefix=/usr

export CC=$(TARGET_TRIPLET)-gcc
export CXX=$(TARGET_TRIPLET)-g++
export CFLAGS=--sysroot=$(SYSROOT)

.PHONY: bin install clean

bin: build/Makefile
	cd build && $(MAKE)

install: bin
	cd build && $(MAKE) install DESTDIR=$(SYSROOT)
	mv -v $(SYSROOT)/usr/lib/libz.so* $(SYSROOT)/lib/
	ln -sfv ../../lib/libz.so $(SYSROOT)/usr/lib/libz.so

build/Makefile: | build install-libc
	cd build && ../src/configure $(CONFIGURE_ARGS)

build:
	mkdir build

clean:
	rm -rf build

include ../../config.inc.mk
include ../component.inc.mk

