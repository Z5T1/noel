#!/bin/bash
builddir=`dirname "$0"`
GCONV_PATH="${builddir}/iconvdata"

usage () {
  echo "usage: $0 [--tool=strace] PROGRAM [ARGUMENTS...]" 2>&1
  echo "       $0 --tool=valgrind PROGRAM [ARGUMENTS...]" 2>&1
  exit 1
}

toolname=default
while test $# -gt 0 ; do
  case "$1" in
    --tool=*)
      toolname="${1:7}"
      shift
      ;;
    --*)
      usage
      ;;
    *)
      break
      ;;
  esac
done

if test $# -eq 0 ; then
  usage
fi

case "$toolname" in
  default)
    exec   env GCONV_PATH="${builddir}"/iconvdata LOCPATH="${builddir}"/localedata LC_ALL=C  "${builddir}"/elf/ld-linux-x86-64.so.2 --library-path "${builddir}":"${builddir}"/math:"${builddir}"/elf:"${builddir}"/dlfcn:"${builddir}"/nss:"${builddir}"/nis:"${builddir}"/rt:"${builddir}"/resolv:"${builddir}"/mathvec:"${builddir}"/support:"${builddir}"/crypt:"${builddir}"/nptl ${1+"$@"}
    ;;
  strace)
    exec strace  -EGCONV_PATH=/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/iconvdata  -ELOCPATH=/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/localedata  -ELC_ALL=C  /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/elf/ld-linux-x86-64.so.2 --library-path /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/math:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/elf:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/dlfcn:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nss:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nis:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/rt:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/resolv:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/mathvec:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/support:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/crypt:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nptl ${1+"$@"}
    ;;
  valgrind)
    exec env GCONV_PATH=/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/iconvdata LOCPATH=/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/localedata LC_ALL=C valgrind  /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/elf/ld-linux-x86-64.so.2 --library-path /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/math:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/elf:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/dlfcn:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nss:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nis:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/rt:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/resolv:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/mathvec:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/support:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/crypt:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nptl ${1+"$@"}
    ;;
  container)
    exec env GCONV_PATH=/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/iconvdata LOCPATH=/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/localedata LC_ALL=C  /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/elf/ld-linux-x86-64.so.2 --library-path /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/math:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/elf:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/dlfcn:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nss:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nis:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/rt:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/resolv:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/mathvec:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/support:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/crypt:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nptl /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/support/test-container env GCONV_PATH=/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/iconvdata LOCPATH=/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/localedata LC_ALL=C  /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/elf/ld-linux-x86-64.so.2 --library-path /home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/math:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/elf:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/dlfcn:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nss:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nis:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/rt:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/resolv:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/mathvec:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/support:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/crypt:/home/scott/Documents/Programs/netbsd-on-linux/system-src/user/libc/build/nptl ${1+"$@"}
    ;;
  *)
    usage
    ;;
esac
