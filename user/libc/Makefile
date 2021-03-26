CONFIGURE_ARGS+= \
	--prefix=/usr \
	--host=$(TARGET_TRIPLET) \
        --build=$(BUILD_TRIPLET) \
        --with-headers=$(SYSROOT)/usr/include

.PHONY: bin install clean

bin: build/Makefile
	cd build && $(MAKE)

install: bin
	cd build && $(MAKE) install DESTDIR=$(SYSROOT)

build/Makefile: build install-comp-kernel-headers
	cd build && ../src/configure $(CONFIGURE_ARGS)

build:
	mkdir build

clean:
	rm -rf build

include ../../config.inc.mk
include ../component.inc.mk

