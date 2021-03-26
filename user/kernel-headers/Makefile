KERNSRC=../../kern/src

.PHONY: bin install clean

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

clean:
	rm -rf src

include ../../config.inc.mk
include ../component.inc.mk

