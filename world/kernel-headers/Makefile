KERNSRC=../../kern/src

.PHONY: bin install tmproot-install clean

bin: src

src:
	rm -rf src
	install -d src
	cd $(KERNSRC) && $(MAKE) headers
	find $(KERNSRC)/usr/include -name '.*' -delete
	cp -R $(KERNSRC)/usr/include/* src/
	rm src/Makefile
	$(MAKE) --no-print-directory -C $(KERNSRC) kernelversion > VERSION

install: src
	install -d $(SYSROOT)/usr
	cp -ru src $(SYSROOT)/usr/include

tmproot-install: src
	install -d $(TMPROOT)/usr
	cp -ru src $(TMPROOT)/usr/include

clean:
	@echo 'kernel-headers has no build directory to cleanup from. To do a'
	@echo 'full clean (this will remove src so it can be regenerated next'
	@echo 'time make is run), run `make full-clean`'

full-clean:
	rm -rf src

include ../../config.inc.mk
include ../component.inc.mk

