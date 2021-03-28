User Space Sources Readme
=========================

Each subdirectory under this directory handles building and installing one
component of the userspace.

Building the User Space
-----------------------
To build the user space from source, run:

    make

To install the new user space to the root filesystem, run:

    make install

Useful Make Targets
-------------------
The following make targets are useful and can be used within a component
subdirectory to execute the specified action for just that component or this
directory to execute the speficied action for all components.

* build (default): build the component from source.
* install: install the component to the system.
* clean: clean up from a previous build, forcing a full rebuild of the
  component next time `make build` is run.

Influential Make Variables
--------------------------
* SYSROOT: the root directory of the target system's filesystem. Defaults to /.
* TARGET_TRIPLET: the host triplet of the target system to build for.
* BUILD_TRIPLET: the host triplet of the system of the build tools. Defaults to
  TARGET_TRIPLET.

