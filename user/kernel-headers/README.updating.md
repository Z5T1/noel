The kernel header sources in this directory (i.e. the src directory) are
generated from the kernel sources located at ../../kern/src. They are not
updated automatically when updating the kernel, as this can break glibc if libc
is not also rebuilt. To fource the src directory to be updated to use the
latest kernel headers, run:

    make -B src

