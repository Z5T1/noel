# universe            - *Really* build *everything* (buildworld and
#                       all kernels on all architectures).  Define
#                       MAKE_JUST_KERNELS or WITHOUT_WORLDS to only build kernels,
#                       MAKE_JUST_WORLDS or WITHOUT_KERNELS to only build userland.
# tinderbox           - Same as universe, but presents a list of failed build
#                       targets and exits with an error if there were any.
# worlds	      - Same as universe, except just makes the worlds.
# kernels	      - Same as universe, except just makes the kernels.
# buildworld          - Rebuild *everything*, including glue to help do
#                       upgrades.
# installworld        - Install everything built by "buildworld".
# world               - buildworld + installworld, no kernel.
# buildkernel         - Rebuild the kernel and the kernel-modules.
# installkernel       - Install the kernel and the kernel-modules.
# kernel              - buildkernel + installkernel.
# toolchains          - Build a toolchain for all world and kernel targets.

.PHONY: universe worlds kernels \
	buildworld installworld world \
	buildkernel installkernel kernel \
	toolchain

universe:
worlds:
kernels:

buildworld:
	$(MAKE) -C user

installworld:
	$(MAKE) -C user install

world: | buildworld installworld

buildkernel:
	$(MAKE) -C kern

installkernel:
	$(MAKE) -C kern install

kernel: | buildkernel installkernel

toolchains:

