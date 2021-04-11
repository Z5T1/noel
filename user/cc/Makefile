BUILD:=$(shell src/config.guess)
CONFIGURE_ARGS+= \
	--prefix=/usr \
	--host=$(TARGET_TRIPLET) \
        --build=$(BUILD) \
        --with-build-sysroot=$(SYSROOT) \
	--with-sysroot=/ \
	--disable-bootstrap \
	--disable-multilib \
	--disable-werror \
	--enable-languages=c,c++

TARGET_CC=      $(TARGET_TRIPLET)-gcc
TARGET_CPP=     $(TARGET_TRIPLET)-cpp
TARGET_CXX=     $(TARGET_TRIPLET)-g++
TARGET_LD=      $(TARGET_TRIPLET)-ld
TARGET_AR=      $(TARGET_TRIPLET)-ar
TARGET_AS=      $(TARGET_TRIPLET)-as
TARGET_RANLIB=  $(TARGET_TRIPLET)-ranlib
TARGET_STRIP=   $(TARGET_TRIPLET)-strip
export	CC_FOR_TARGET CXX_FOR_TARGET LD_FOR_TARGET AR_FOR_TARGET \
	AS_FOR_TARGET RANLIB_FOR_TARGET STRIP_FOR_TARGET

.PHONY: bin install clean

bin: build/Makefile
	cd build && $(MAKE)

install: bin
	cd build && $(MAKE) install DESTDIR=$(SYSROOT)

build/Makefile: | build install-libc
	cd build && ../src/configure $(CONFIGURE_ARGS)

build:
	mkdir build

clean:
	rm -rf build

include ../../config.inc.mk
include ../component.inc.mk

