#
# Don't change this Makefile! It has been generated from Makefile.mk;
# change that file instead and run make at the toplevel.
#
######################################################################

#
# This is the shell used for the compilation phase, the execution of most
# installed scripts, and the shell escapes in the traditional command
# versions. It needs not conform to POSIX. The system shell should work
# fine; for maximum compatibility with traditional tools, the Heirloom
# Bourne shell is recommended. It then must obviously be compiled and
# installed first.
#
SHELL = /bin/sh

#
# Specify the path name for a POSIX-conforming shell here. For example,
# Solaris users should insert /usr/xpg4/bin/sh. This shell is used for
# the shell escape in the POSIX variants of the ed utility.
#
POSIX_SHELL = /bin/sh

#
# Root directory. Mainly useful for package building; leave empty for
# normal installation.
#
ROOT =

#
# Location for binaries that have no special personality. This location
# may be identical to that of one of the first three personalities below.
#
DEFBIN = /usr/5bin

#
# Location for SVID3/SVR4-style binaries.
#
SV3BIN = /usr/5bin

#
# Location for SVID4/SVR4.2-style binaries.
#
S42BIN = /usr/5bin/s42

#
# Location for POSIX.2/SUS-style binaries.
#
SUSBIN = /usr/5bin/posix

#
# Location for POSIX.1-2001/SUSv3-style binaries.
SU3BIN = /usr/5bin/posix2001

#
# Location for SVR4 UCB-style binaries. These do not form a complete
# personality, and the binary path must not be identical to the default
# one.
#
UCBBIN = /usr/ucb

#
# Location for development binaries. The "tsort" utility is
# installed in this directory, and the utilities from the
# "Heirloom Development Tools" package are expected to be
# installed in it.
#
CCSBIN = /usr/ccs/bin

#
# Location for library files.
#
DEFLIB = /usr/5lib

#
# Location for superuser-only binaries. May be identical to the
# default binary directory.
#
DEFSBIN = /usr/5bin

#
# Location for manual pages (with man1, man1b ... man8 below).
#
MANDIR = /usr/share/man/5man

#
# Location for default files. Make sure that this directory is accessible
# to all users.
#
DFLDIR = /etc/default

#
# Location for the spell history file (contains misspelled words for
# all users; set to /dev/null to disable).
#
SPELLHIST = /var/adm/spellhist

#
# Location for the su logfile.
#
SULOG = /var/log/sulog

#
# Where to store the file command's magic. Note that the existing
# file at this location is replaced unconditionally at installation.
#
MAGIC = $(DEFLIB)/magic

#
# The group whose members may write utmp or utmpx entries. Appropriate values
# are "utmp" for RedHat Linux or "adm" for Open UNIX. On Solaris, the group
# does not actually matter but should be set to "adm" too. (The '-g' is an
# argument to the install command and should remain as is.)
#
# On HP-UX, AIX, FreeBSD, NetBSD, and OpenBSD, this setting is not used.
#
TTYGRP = -g utmp

#
# Curses library. Change to -lncurses if necessary. Caution: Some gcc
# setups on Solaris are broken so that ncurses headers are used during
# compilation, but the system libcurses is used for linking. This will
# usually lead to segmentation violations. The easiest fix is to write
# something like -L/path/to/ncurses/lib/directory -lncurses here.
#
# The 4.4 BSD curses library, which is still supplied with NetBSD 2.0,
# does not supply our needs. Use -ltermcap instead and add -DUSE_TERMCAP
# to CPPFLAGS.
#
LCURS = -lcurses

#
# Socket library, necessary on Solaris and Open UNIX. If your system has
# socket support in libc (as glibc on Linux), leave it empty or undefined.
#LSOCKET = -lsocket -lnsl

#
# Uncomment this on Open UNIX.
#
#LIBGEN = -lgen

#
# Uncomment this on FreeBSD, NetBSD, and OpenBSD.
#
#LKVM = -lkvm

#
# zlib (statically linked by default). Set USE_ZLIB to 0 if you don't have
# zlib or don't want to use it; you need it only if you want to use inflate
# compression when creating zip files with cpio.
#
LIBZ = -Wl,-Bstatic -lz -Wl,-Bdynamic
USE_ZLIB = 1

#
# The name of the bzip2 library, and whether to use it. The library is only
# needed to read and write bzip2 compressed parts of zip files with cpio.
#
#LIBBZ2 = -Wl,-Bstatic -lbz2 -Wl,-Bdynamic
USE_BZLIB = 0

#
# Compiler and linker flags. HOSTCC is for cross compiling.
#

#CC = $(HOME)/src/diet gcc
CC = cc
HOSTCC = $(CC)
WARN=

LD = $(CC)
LDFLAGS =

#
# Flags for the C preprocessor.
# On Linux with glibc or uClibc, add -D_GNU_SOURCE.
# On Solaris, -D__EXTENSIONS__ should be added.
# On HP-UX, -D_INCLUDE__STDC_A1_SOURCE must be added.
# On AIX, -D_TPARM_COMPAT must be added.
# On AIX, -D_MTEXTEND_H should be added if mtextend.h is not found.
# On NetBSD, add -DUSE_TERMCAP.
#
CPPFLAGS = -D_GNU_SOURCE

#
# CFLAGS, CFLAGS2, CFLAGSS, and CFLAGSU make it possible to give special
# compiler flags for objects where speed is critical. There is no other
# purpose with this so setting all to -O will work too.
#
# On 64-bit HP-UX, you should add +DD64 to all CFLAGS to create 64-bit
# executables. The ps command will otherwise not be able to display any
# processes.
#
# On AIX 5.1, the system-supplied major(), minor(), and makedev() macros
# for accessing dev_t values are inappropriate if the compiler is used in
# 64-bit mode (by specifying -q64 or OBJECT_MODE=64 in the environment).
# Moreover, its 64-bit and 32-bit dev_t representations are incompatible.
# As a result, any programs that work with the contents of dev_t values
# will not give correct results in 64-bit mode; this affects at least
# cpio, mknod, pgrep, ps, tar, and whodo. Thus always use the 32-bit
# compiler mode (which is the default) until this issue is properly
# handled by the system vendor.
#
CFLAGS = -O -fomit-frame-pointer $(WARN)
CFLAGS2 = -O2 -fomit-frame-pointer $(WARN)
CFLAGSS = -Os -fomit-frame-pointer $(WARN)
CFLAGSU = -O2 -fomit-frame-pointer -funroll-loops $(WARN)

#
# Binaries are stripped with this command after installation.
#
STRIP = strip -s -R .comment -R .note

#
# The define for large file support in 32-bit environments.
#
# On Linux, Solaris, and Open UNIX, use -D_FILE_OFFSET_BITS=64L
# On HP-UX B.11.11 on PA-RISC in 32-bit (default) mode, this was found
# not to work with fseeko(3), so disable it there unless you intend to
# debug the problem.
#
# On AIX, use -D_LARGE_FILES.
#
# On FreeBSD, NetBSD, and OpenBSD, no such define is necessary.
#
LARGEF = -D_FILE_OFFSET_BITS=64L

#
# Use this if you prefer symbolic links between installed files.
#
LNS = ln -s
#
# Use this if you prefer hard links between installed files.
#
#LNS = $(SHELL) -c "if cd \`dirname \$$2\`; then ln \$$1 \$$2; fi" dummy

#
# Yacc implementations known to work with the Heirloom Toolchest are
# the original Unix yacc, Berkeley yacc, and GNU bison -y (v. 1.875).
#
YACC = yacc

#
# Lex implementations known to work with the Heirloom Toolchest are
# most derivatives of the original Unix lex and flex.
#
LEX = lex

#
# Whether to use the supplied widechar emulation library. This should
# only be enabled if the system lacks appropriate widechar support.
# It is currently needed on
# - Linux/diet libc
# - FreeBSD 4
# - NetBSD 1.x, because it lacks wctype_t/wctrans_t etc. in wctype.h.
# - OpenBSD
#
#IWCHAR = -I../libwchar
#LWCHAR = -L../libwchar -lwchar

#
# Crypt library. -lcrypt is okay for everything except HP-UX, AIX, NetBSD,
# and old versions of diet libc.
#
LCRYPT=-lcrypt

#
# Run ranlib if it is in the current path. This should take care
# of most situations. On Mac OS X, you need to uncomment "ranlib -c".
#
RANLIB=(hash ranlib) >/dev/null 2>&1 || exit 0; ranlib
#RANLIB=ranlib -c

#
# Don't change the rest of this file unless you really know what you are
# doing.
#

########################################################################
########################################################################
########################################################################
########################################################################
########################################################################

UCBINST = $(ROOT)$(UCBBIN)/install

ICOMMON = -I../libcommon
LCOMMON = -L../libcommon -lcommon

IUXRE = -I../libuxre -DUXRE
LUXRE = -L../libuxre -luxre

MANINST = $(SHELL) ../build/maninst
all: libcommon.a

OBJ = asciitype.o ib_alloc.o ib_close.o ib_free.o ib_getlin.o ib_getw.o \
	ib_open.o ib_popen.o ib_read.o ib_seek.o oblok.o sfile.o strtol.o \
	getdir.o regexpr.o gmatch.o utmpx.o memalign.o pathconf.o \
	sigset.o signal.o sigrelse.o sighold.o sigignore.o sigpause.o \
	getopt.o pfmt.o vpfmt.o setlabel.o setuxlabel.o pfmt_label.o sysv3.o
libcommon.a: headers $(OBJ)
	$(AR) -rv $@ $(OBJ)
	$(RANLIB) $@

CHECK: CHECK.c
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LARGEF) -E CHECK.c >CHECK

headers: CHECK
	one() { \
		rm -f "$$1.h"; \
		if grep "$$1_h[	 ]*=[ 	]*[^0][	 ]*;" CHECK >/dev/null; \
		then \
			ln -s "_$$1.h" "$$1.h"; \
		fi; \
	}; \
	one alloca; \
	one malloc; \
	one utmpx

install:

clean:
	rm -f $(OBJ) core log *~ alloca.h malloc.h utmpx.h CHECK

asciitype.o: asciitype.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c asciitype.c

getdir.o: getdir.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c getdir.c

ib_alloc.o: ib_alloc.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_alloc.c

ib_close.o: ib_close.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_close.c

ib_free.o: ib_free.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_free.c

ib_getlin.o: ib_getlin.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_getlin.c

ib_getw.o: ib_getw.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_getw.c

ib_open.o: ib_open.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_open.c

ib_popen.o: ib_popen.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_popen.c

ib_read.o: ib_read.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_read.c

ib_seek.o: ib_seek.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c ib_seek.c

oblok.o: oblok.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c oblok.c

regexpr.o: regexpr.c
	$(CC) $(CFLAGS2) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c regexpr.c

sigset.o: sigset.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c sigset.c

signal.o: signal.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c signal.c

sigignore.o: sigignore.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c sigignore.c

sigpause.o: sigpause.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c sigpause.c

sigrelse.o: sigrelse.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c sigrelse.c

sighold.o: sighold.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c sighold.c

gmatch.o: gmatch.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c gmatch.c

utmpx.o: utmpx.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c utmpx.c

memalign.o: memalign.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c memalign.c

pathconf.o: pathconf.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c pathconf.c

strtol.o: strtol.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c strtol.c

getopt.o: getopt.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c getopt.c

sysv3.o: sysv3.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c sysv3.c

sfile.o: sfile.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c sfile.c

pfmt.o: pfmt.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c pfmt.c

vpfmt.o: vpfmt.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c vpfmt.c

setlabel.o: setlabel.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c setlabel.c

setuxlabel.o: setuxlabel.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c setuxlabel.c

pfmt_label.o: pfmt_label.c
	$(CC) $(CFLAGSS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -I. -c pfmt_label.c

asciitype.o: asciitype.h
ib_alloc.o: iblok.h
ib_close.o: iblok.h
ib_free.o: iblok.h
ib_getlin.o: iblok.h
ib_getw.o: iblok.h
ib_open.o: iblok.h
ib_read.o: iblok.h
ib_seek.o: iblok.h
iblok.o: iblok.h
oblok.o: oblok.h
sfile.o: sfile.h
getdir.o: getdir.h
regexpr.o: regexpr.h regexp.h
pfmt.o: pfmt.h
vpfmt.o: pfmt.h
setlabel.o: pfmt.h
setuxlabel.o: pfmt.h msgselect.h
getopt.o: msgselect.h
sighold.o: sigset.h
sigignore.o: sigset.h
sigpause.o: sigset.h
sigrelse.o: sigset.h
sigset.o: sigset.h
signal.o: sigset.h
pathconf.o: pathconf.h

MRPROPER = libcommon.a

mrproper: clean
	rm -f Makefile $(MRPROPER)
