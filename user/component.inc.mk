# Include file for general user space component stuff.

.PHONY: install-%
install-%:
	cd ../$* && $(MAKE) install

.PHONY: show-version
show-version:
	@cat VERSION

