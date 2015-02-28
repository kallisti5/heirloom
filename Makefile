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
all: intro.1

intro.1: intro.1.in
	$(SHELL) build/genintro intro.1.in >intro.1

clean:
	rm -f heirloom.pkg core log *~

MRPROPER = intro.1

install: directories links

directories:
	test -d $(ROOT)$(DEFBIN) || mkdir -p $(ROOT)$(DEFBIN)
	test -d $(ROOT)$(DEFLIB) || mkdir -p $(ROOT)$(DEFLIB)
	test -d $(ROOT)$(SV3BIN) || mkdir -p $(ROOT)$(SV3BIN)
	test -d $(ROOT)$(SV3BIN) || mkdir -p $(ROOT)$(SV3BIN)
	test -d $(ROOT)$(S42BIN) || mkdir -p $(ROOT)$(S42BIN)
	test -d $(ROOT)$(SUSBIN) || mkdir -p $(ROOT)$(SUSBIN)
	test -d $(ROOT)$(SU3BIN) || mkdir -p $(ROOT)$(SU3BIN)
	test -d $(ROOT)$(DEFSBIN) || mkdir -p $(ROOT)$(DEFSBIN)
	test -d $(ROOT)$(UCBBIN) || mkdir -p $(ROOT)$(UCBBIN)
	test -d $(ROOT)$(CCSBIN) || mkdir -p $(ROOT)$(CCSBIN)
	for i in 1 1b 1m 2 3 4 5 6 7 8; \
	do \
		test -d $(ROOT)$(MANDIR)/man$$i || \
			mkdir -p $(ROOT)$(MANDIR)/man$$i; \
	done
	test -d $(ROOT)$(DFLDIR) || mkdir -p $(ROOT)$(DFLDIR)

links:
	for i in install ; \
	do \
		rm -f $(ROOT)$(DEFBIN)/$$i; \
		sh build/crossln $(ROOT)$(UCBBIN)/$$i $(ROOT)$(DEFBIN)/$$i $(ROOT); \
	done
	for i in basename chmod cp date du echo file id ln mkdir mv nohup pr ps rm rmdir sort test touch tr wc who; \
	do \
		rm -f $(ROOT)$(SU3BIN)/$$i; \
		sh build/crossln $(ROOT)$(SUSBIN)/$$i $(ROOT)$(SU3BIN)/$$i $(ROOT); \
	done
	for i in csplit date egrep fgrep find getconf grep id mkdir nawk pg; \
	do \
		rm -f $(ROOT)$(S42BIN)/$$i; \
		sh build/crossln $(ROOT)$(SUSBIN)/$$i $(ROOT)$(S42BIN)/$$i $(ROOT); \
	done
	for i in basename chmod du echo file lc ls more nohup od page pax pr rm rmdir sort test touch tr who; \
	do \
		rm -f $(ROOT)$(S42BIN)/$$i; \
		sh build/crossln $(ROOT)$(SV3BIN)/$$i $(ROOT)$(S42BIN)/$$i $(ROOT); \
	done
	for i in pax; \
	do \
		rm -f $(ROOT)$(SUSBIN)/$$i; \
		sh build/crossln $(ROOT)$(SV3BIN)/$$i $(ROOT)$(SUSBIN)/$$i $(ROOT); \
	done
	for i in getconf; \
	do \
		rm -f $(ROOT)$(SV3BIN)/$$i; \
		sh build/crossln $(ROOT)$(SUSBIN)/$$i $(ROOT)$(SV3BIN)/$$i $(ROOT); \
	done
	for i in od; \
	do \
		rm -f $(ROOT)$(SU3BIN)/$$i; \
		sh build/crossln $(ROOT)$(SV3BIN)/$$i $(ROOT)$(SU3BIN)/$$i $(ROOT); \
	done
	for i in apropos expand hostname man printenv renice tcopy ul unexpand uptime users w whoami whatis; \
	do \
		rm -f $(ROOT)$(UCBBIN)/$$i; \
		sh build/crossln $(ROOT)$(DEFBIN)/$$i $(ROOT)$(UCBBIN)/$$i $(ROOT); \
	done
	rm -f $(ROOT)$(UCBBIN)/more
	sh build/crossln $(ROOT)$(SV3BIN)/more $(ROOT)$(UCBBIN)/more $(ROOT)
	rm -f $(ROOT)$(UCBBIN)/catman
	sh build/crossln $(ROOT)$(DEFSBIN)/catman $(ROOT)$(UCBBIN)/catman $(ROOT)
	for i in sccs prt; \
	do \
		rm -f $(ROOT)$(UCBBIN)/$$i; \
		sh build/crossln $(ROOT)$(CCSBIN)/$$i $(ROOT)$(UCBBIN)/$$i $(ROOT); \
	done
	rm -f $(ROOT)$(SV3BIN)/awk
	sh build/crossln $(ROOT)$(DEFBIN)/oawk $(ROOT)$(SV3BIN)/awk $(ROOT)
	rm -f $(ROOT)$(S42BIN)/awk
	sh build/crossln $(ROOT)$(S42BIN)/nawk $(ROOT)$(S42BIN)/awk $(ROOT)
	rm -f $(ROOT)$(SUSBIN)/awk
	sh build/crossln $(ROOT)$(SUSBIN)/nawk $(ROOT)$(SUSBIN)/awk $(ROOT)
	rm -f $(ROOT)$(SU3BIN)/awk
	sh build/crossln $(ROOT)$(SU3BIN)/nawk $(ROOT)$(SU3BIN)/awk $(ROOT)
	rm -f $(ROOT)$(MANDIR)/man1/awk.1
	if test $(DEFBIN) = $(S42BIN) -o $(DEFBIN) = $(SUSBIN) \
		-o $(DEFBIN) = $(SU3BIN) ; \
	then \
		sh build/crossln $(ROOT)$(MANDIR)/man1/nawk.1 $(ROOT)$(MANDIR)/man1/awk.1 $(ROOT); \
	else \
		sh build/crossln $(ROOT)$(MANDIR)/man1/oawk.1 $(ROOT)$(MANDIR)/man1/awk.1 $(ROOT); \
	fi
	$(SHELL) build/maninst -c -m 644 intro.1 $(ROOT)$(MANDIR)/man1/intro.1

mrproper: clean
	rm -f Makefile $(MRPROPER)
