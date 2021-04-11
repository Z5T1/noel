CONFIGURE_ARGS+= \
	--prefix=/usr \
	--openssldir=/etc/ssl \
	--libdir=lib \
	--cross-compile-prefix=$(TARGET_TRIPLET)-
CFLAGS+=	--sysroot=$(SYSROOT)
CXXFLAGS+=	--sysroot=$(SYSROOT)

.PHONY: bin install clean

bin: build/Makefile
	cd build && $(MAKE)

install: bin
	cd build && $(MAKE) install DESTDIR=$(SYSROOT)

build/Makefile: | build install-libc
	cd build && ../src/config $(CONFIGURE_ARGS)

build:
	mkdir build

clean:
	rm -rf build

include ../../config.inc.mk
include ../component.inc.mk

