# Include file for general user space component stuff.

.PHONY: install-comp-%
install-comp-%:
	cd ../$* && $(MAKE) install

.PHONY: show-version
show-version:
	@cat VERSION

