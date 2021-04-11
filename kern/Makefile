.PHONY: all clean

all:
	$(MAKE) -C src \
		O=$(PWD)/build \
		KCONFIG_CONFIG=config-$(OS_ARCH)

build:
	mkdir build

clean:
	$(MAKE) -C src mrproper
	rm -rf build

VERSION:
	$(MAKE) --no-print-directory -C src kernelversion > VERSION

include ../config.inc.mk

