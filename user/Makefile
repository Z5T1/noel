# The components in this directory to build (by default all of them)
COMPONENTS= \
	skel \
	kernel-headers \
	libc

.PHONY: all install clean
all: $(addprefix bin-,$(COMPONENTS))

install: $(addprefix install-,$(COMPONENTS))

clean: $(addprefix clean-,$(COMPONENTS))

bin-%:
	$(MAKE) -C $* bin

install-%:
	$(MAKE) -C $* install

clean-%:
	$(MAKE) -C $* clean

