CONFIGURE_ARGS+= \
	--prefix=/usr \
	--host=$(TARGET_TRIPLET) \
        --build=$(BUILD_TRIPLET) \
        --with-headers=$(TMPROOT)/usr/include

.PHONY: bin install tmproot-install clean

bin: build/Makefile
	cd build && $(MAKE)

install: bin
	cd build && $(MAKE) install DESTDIR=$(SYSROOT)

tmproot-install: bin
	cd build && $(MAKE) install DESTDIR=$(TMPROOT)

build/Makefile: | build tmproot-install-skel tmproot-install-kernel-headers
	cd build && ../src/configure $(CONFIGURE_ARGS)

build:
	mkdir build

clean:
	rm -rf build

include ../../config.inc.mk
include ../component.inc.mk

