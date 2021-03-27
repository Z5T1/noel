# The architecture to build the target OS for
OS_ARCH=x86_64

# The suffix for the architecture's lib directory (i.e. 64 for lib64)
ARCH_LIBDIR_SUFFIX=64

# The target triplet
TARGET_TRIPLET=$(OS_ARCH)-noel-linux-gnu

# The triplet for the build tools
BUILD_TRIPLET=$(TARGET_TRIPLET)

# The root directory of the target system
SYSROOT=/

# The directory for the component database
COMPDBDIR=/var/compdb

.PHONY: show-var
show-var:
	@echo $($(VARNAME))

