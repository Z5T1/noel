MAKE_ARGS+= \
	CONFIG_SYSROOT=$(TMPROOT) \
	CROSS_COMPILE="$(TARGET_TRIPLET)-"

.PHONY: bin install clean

bin: build/.config | build tmproot-install-libc
	cd build && $(MAKE) KBUILD_SRC=../src -f ../src/Makefile $(MAKE_ARGS)

install: bin install-libc
	cd build && $(MAKE) install CONFIG_PREFIX=$(SYSROOT)
	ln -sf mdev $(SYSROOT)/sbin/hotplug
	chmod 755 $(SYSROOT)/lib*/libbusybox.so.*

build/.config: build
	cp config build/.config

build:
	mkdir build

clean:
	rm -rf build

include ../../config.inc.mk
include ../component.inc.mk

