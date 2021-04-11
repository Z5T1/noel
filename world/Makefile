# The components in this directory to build (by default all of them)
COMPONENTS= \
	skel \
	kernel-headers \
	libc \
	utils \
	binutils \
	cc \
	zlib \
	ssl \
	curses

# The external (third party) components
EXTERNAL_COMPONENTS= \
	kernel-headers \
	libc \
	utils \
	binutils \
	cc \
	zlib \
	ssl \
	curses

.PHONY: all install clean
all:
	$(foreach tgt,$(COMPONENTS), $(MAKE) bin-$(tgt) &&) echo Done

install: $(addprefix install-,$(COMPONENTS))

clean: $(addprefix clean-,$(COMPONENTS))

bin-%:
	$(MAKE) -C $* bin

install-%:
	$(MAKE) -C $* install

clean-%:
	$(MAKE) -C $* clean

show-version-%:
	@echo -n "$* "
	@$(MAKE) --no-print-directory -C $* show-version

show-versions: $(addprefix show-version-,$(EXTERNAL_COMPONENTS))

