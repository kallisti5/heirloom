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
#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License, Version 1.0 only
# (the "License").  You may not use this file except in compliance
# with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#
#
# from OpenSolaris	"Makefile	1.23	05/06/08 SMI"
#
# Copyright 2004 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# Portions Copyright (c) 2005 Gunnar Ritter, Freiburg i. Br., Germany
#
# cmd/spell/Makefile
#

.c.o: ; $(CC) -c $(CFLAGS) $(CPPFLAGS) $(GNUFL) $(IWCHAR) $(ICOMMON) -c $<

all:	host_hashmake host_spellin spell compress spellprog spellin \
		hlista hlistb hstop hashmake hashcheck

spell: spell.sh
	echo '#!$(SHELL)' | cat - spell.sh | sed ' s,@DEFBIN@,$(DEFBIN),g; s,@SV3BIN@,$(SV3BIN),g; s,@DEFLIB@,$(DEFLIB),g; s,@SPELLHIST@,$(SPELLHIST),g' >spell
	chmod 755 spell

compress: compress.sh
	echo '#!$(SHELL)' | cat - compress.sh | sed ' s,@DEFBIN@,$(DEFBIN),g; s,@SV3BIN@,$(SV3BIN),g; s,@DEFLIB@,$(DEFLIB),g; s,@SPELLHIST@,$(SPELLHIST),g' >compress
	chmod 755 compress

spellprog: spellprog.o hash.o hashlook.o huff.o
	$(LD) $(LDFLAGS) spellprog.o hash.o hashlook.o huff.o $(LCOMMON) $(LIBS) -o spellprog

spellin: spellin.o huff.o
	$(LD) $(LDFLAGS) spellin.o huff.o $(LCOMMON) $(LIBS) -o spellin

host_spellin: spellin.c huff.c
	$(HOSTCC) spellin.c huff.c -o host_spellin

hashcheck: hashcheck.o hash.o huff.o
	$(LD) $(LDFLAGS) hashcheck.o hash.o huff.o $(LCOMMON) $(LIBS) -o hashcheck

hashmake: hashmake.o hash.o
	$(LD) $(LDFLAGS) hashmake.o hash.o $(LCOMMON) $(LIBS) -o hashmake

host_hashmake: hashmake.c hash.c
	$(HOSTCC) hashmake.c hash.c -o host_hashmake

htemp1: list local extra host_hashmake
	rm -f $@; cat list local extra | ./host_hashmake > $@

hlista: american host_spellin host_hashmake htemp1
	rm -f htemp2
	./host_hashmake <american | sort -u - htemp1 >htemp2
	rm -f $@
	./host_spellin `wc htemp2|sed -n 's/\([^ ]\) .*/\1/p'`<htemp2 >$@
	rm -f htemp2

hlistb: british host_spellin host_hashmake htemp1
	rm -f htemp2
	./host_hashmake <british | sort -u - htemp1 >htemp2
	rm -f $@
	./host_spellin `wc htemp2|sed -n 's/\([^ ]\) .*/\1/p'`<htemp2 >$@
	rm -f htemp2

hstop: stop host_spellin host_hashmake
	rm -f htemp2
	./host_hashmake <stop | sort -u >htemp2
	rm -f $@
	./host_spellin `wc htemp2|sed -n 's/\([^ ]\) .*/\1/p'`<htemp2 >$@
	rm -f htemp2

install: all
	$(UCBINST) -c spell $(ROOT)$(DEFBIN)/spell
	test -d $(ROOT)$(DEFLIB)/spell || mkdir -p $(ROOT)$(DEFLIB)/spell
	$(UCBINST) -c spellprog $(ROOT)$(DEFLIB)/spell/spellprog
	$(STRIP) $(ROOT)$(DEFLIB)/spell/spellprog
	$(UCBINST) -c spellin $(ROOT)$(DEFLIB)/spell/spellin
	$(STRIP) $(ROOT)$(DEFLIB)/spell/spellin
	rm -f $(ROOT)$(DEFLIB)/spell/spellout
	$(UCBINST) -c hashcheck $(ROOT)$(DEFLIB)/spell/hashcheck
	$(STRIP) $(ROOT)$(DEFLIB)/spell/hashcheck
	$(UCBINST) -c hashmake $(ROOT)$(DEFLIB)/spell/hashmake
	$(STRIP) $(ROOT)$(DEFLIB)/spell/hashmake
	$(UCBINST) -c compress $(ROOT)$(DEFLIB)/spell/compress
	$(UCBINST) -c -m 644 hlista $(ROOT)$(DEFLIB)/spell/hlista
	$(UCBINST) -c -m 644 hlistb $(ROOT)$(DEFLIB)/spell/hlistb
	$(UCBINST) -c -m 644 hstop $(ROOT)$(DEFLIB)/spell/hstop
	$(MANINST) -c -m 644 spell.1 $(ROOT)$(MANDIR)/man1/spell.1
	test -d `dirname $(ROOT)$(SPELLHIST)` || \
		mkdir -p `dirname $(ROOT)$(SPELLHIST)`
	-test -r $(ROOT)$(SPELLHIST) || { \
		touch $(ROOT)$(SPELLHIST); \
		chmod 666 $(ROOT)$(SPELLHIST); \
	}

clean:
	rm -f hash.o hashcheck.o hashlook.o hashmake.o huff.o \
		spellin.o spellprog.o hashcheck hashmake host_hashmake \
		host_spellin spell spellin spellprog compress \
		hlista hlistb htemp1 hstop core log *~

hash.o: hash.c hash.h
hashcheck.o: hashcheck.c hash.h huff.h
hashlook.o: hashlook.c hash.h huff.h
hashmake.o: hashmake.c hash.h
huff.o: huff.c huff.h hash.h
malloc.o: malloc.c
spellin.o: spellin.c hash.h huff.h
spellprog.o: spellprog.c hash.h

mrproper: clean
	rm -f Makefile $(MRPROPER)
