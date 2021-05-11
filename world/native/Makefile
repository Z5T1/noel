ETC_FILES=\
	ashrc \
	profile \
	protocols \
	services

.PHONY: bin install clean

bin:
	@echo Nothing to build for native.

install:
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/etc
	install -m 644 -o 0 -g 0 $(addprefix etc/,$(ETC_FILES)) $(SYSROOT)/etc

clean:
	@echo Nothing to clean for native.

include ../../config.inc.mk
include ../component.inc.mk

