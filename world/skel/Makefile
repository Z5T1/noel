.PHONY: bin install clean

include ../../config.inc.mk

bin:
	@echo Nothing to build for skel.

install:
# Basic Directory Skeleton
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/bin
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/boot
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/dev
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/etc
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/home
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/lib$(ARCH_LIBDIR_SUFFIX)
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/media
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/mnt
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/opt
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/proc
	install -d -m 700 -o 0 -g 0 $(SYSROOT)/root
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/run
	install -d -m 1777 -o 0 -g 0 $(SYSROOT)/run/lock
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/srv
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/sys
	install -d -m 1777 -o 0 -g 0 $(SYSROOT)/tmp
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var
ifneq ($(ARCH_LIBDIR_SUFFIX),)
	ln -s lib$(ARCH_LIBDIR_SUFFIX) $(SYSROOT)/lib
endif

	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/bin
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/include
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/lib$(ARCH_LIBDIR_SUFFIX)
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/lib$(ARCH_LIBDIR_SUFFIX)/pkgconfig
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/libexec
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/sbin
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/src
ifneq ($(ARCH_LIBDIR_SUFFIX),)
	ln -s lib$(ARCH_LIBDIR_SUFFIX) $(SYSROOT)/usr/lib
endif

	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/bin
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/include
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/lib$(ARCH_LIBDIR_SUFFIX)
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/sbin
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/src
ifneq ($(ARCH_LIBDIR_SUFFIX),)
	ln -s lib$(ARCH_LIBDIR_SUFFIX) $(SYSROOT)/usr/local/lib
endif

	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/color
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/dict
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/doc
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/info
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/locale
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man/man1
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man/man2
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man/man3
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man/man4
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man/man5
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man/man6
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man/man7
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/man/man8
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/misc
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/terminfo
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/share/zoneinfo

	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/color
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/dict
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/doc
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/info
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/locale
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man/man1
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man/man2
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man/man3
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man/man4
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man/man5
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man/man6
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man/man7
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/man/man8
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/misc
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/terminfo
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/usr/local/share/zoneinfo

	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/cache
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/lib
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/lib/color
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/lib/misc
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/lib/locate
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/local
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/log
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/opt
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/mail
	install -d -m 755 -o 0 -g 0 $(SYSROOT)/var/spool
	install -d -m 1755 -o 0 -g 0 $(SYSROOT)/var/tmp
	ln -sf /run $(SYSROOT)/var/run
	ln -sf /run/lock $(SYSROOT)/var/lock

# Stuff Supporting BusyBox
	install -dm 755 $(SYSROOT)/var/spool/cron
	install -dm 1730 $(SYSROOT)/var/spool/cron/crontabs

clean:
	@echo Nothing to clean for skel.
	make clean

