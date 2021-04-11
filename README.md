Noël Readme
===========

About
-----
Noël is a minimalistic Linux distribution that aims to be very BSD like. The
name is an acronym for NetBSD on Embedded Linux. Similarly to how the BSDs are
strctured, Noël splits the system into two seperate parts: a base system and
third party packages. It is structrued as follows:

### The Base System
The base system is a minimalistic embedded Linux system using the following
packages:
* BusyBox 1.32.1
* GNU Binutils 2.36
* GCC 10.2.0
* GNU Libc 2.33
* Zlib 1.2.11
* Ncurses ???
* OpenSSL 1.1.1
* Linux 5.10
* A few supporting scripts and config files for good measure

### Third Party Packages
All other available packages are managed by [pkgsrc](https://pkgsrc.org), the
same third party package system that NetBSD uses (hence the distribution name).

Structure
---------
The following top level directories exist:
* **world**: contains the source code and build directories for the base
  system's user space.
* **kernel**: contains the source code and build directory for the Linux
  kernel.
* **linux**: symlink to kern/src for compatibility purposes.

