# The architecture to build the target OS for
OS_ARCH=x86_64

# The target triplet
TARGET_TRIPLET=$(OS_ARCH)-noel-linux-gnu

# The triplet for the build tools
BUILD_TRIPLET=$(TARGET_TRIPLET)

# The root directory of the target system
SYSROOT=/

