# Include file for general user space component stuff.
# It should be included only from the component subdirectories (it won't work
# elsewhere).

ifndef _INC_COMPONENT
_INC_COMPONENT=y

# The temporary root directory to use while staging libraries.
# This must have one more ../ since this file will be included from the
# component subdirectories.
TMPROOT:=$(abspath ../../build/root-$(OS_ARCH))

$(TMPROOT):
	mkdir -p $(TMPROOT)

.PHONY: install-%
install-%:
	cd ../$* && $(MAKE) install

.PHONY: tmproot-install-%
tmproot-install-%:
	cd ../$* && $(MAKE) tmproot-install

.PHONY: show-version
show-version:
	@cat VERSION

include ../../config.inc.mk

endif

