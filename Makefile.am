SUBDIRS = po .

ACLOCAL_AMFLAGS = -I m4

noinst_LTLIBRARIES = lib/libdctrl.la

bin_PROGRAMS = \
			   grep-dctrl/grep-dctrl \
			   sort-dctrl/sort-dctrl \
			   tbl-dctrl/tbl-dctrl \
			   join-dctrl/join-dctrl

sbin_SCRIPTS = sync-available/sync-available

AM_CPPFLAGS = -I$(top_srcdir)/lib \
-DSYSCONF=\"$(sysconfdir)\" \
-DLOCALEDIR=\"$(localedir)\"  \
-DMAINTAINER=\"$(PACKAGE_BUGREPORT)\"

AM_CFLAGS = $(WERROR)

grep_dctrl_grep_dctrl_SOURCES = grep-dctrl/grep-dctrl.c
grep_dctrl_grep_dctrl_LDADD = lib/libdctrl.la

sort_dctrl_sort_dctrl_SOURCES = sort-dctrl/sort-dctrl.c
sort_dctrl_sort_dctrl_LDADD = lib/libdctrl.la

tbl_dctrl_tbl_dctrl_SOURCES = tbl-dctrl/tbl-dctrl.c
tbl_dctrl_tbl_dctrl_LDADD = lib/libdctrl.la

join_dctrl_join_dctrl_SOURCES = join-dctrl/join-dctrl.c
join_dctrl_join_dctrl_LDADD = lib/libdctrl.la

lib_libdctrl_la_SOURCES = \
lib/align.h \
lib/atom.c \
lib/atom.h \
lib/fieldtrie.c \
lib/fieldtrie.h \
lib/fnutil.c \
lib/fnutil.h \
lib/fsaf.c \
lib/fsaf.h \
lib/i18n.h \
lib/ifile.c \
lib/ifile.h \
lib/misc.c \
lib/misc.h \
lib/msg.c \
lib/msg.h \
lib/para_bundle.c \
lib/para_bundle.h \
lib/paragraph.c \
lib/paragraph.h \
lib/para_pool.c \
lib/para_pool.h \
lib/predicate.c \
lib/predicate.h \
lib/sorter.c \
lib/sorter.h \
lib/strlist.c \
lib/strlist.h \
lib/strutil.c \
lib/strutil.h \
lib/util.c \
lib/util.h \
lib/version.c \
lib/version.h

