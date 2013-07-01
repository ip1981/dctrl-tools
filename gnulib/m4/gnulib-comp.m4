# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2012 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <http://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable
  AC_REQUIRE([gl_PROG_AR_RANLIB])
  # Code from module alloca:
  # Code from module alloca-opt:
  # Code from module argp:
  # Code from module dirname-lgpl:
  # Code from module dosname:
  # Code from module double-slash-root:
  # Code from module errno:
  # Code from module extensions:
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  # Code from module float:
  # Code from module getopt-gnu:
  # Code from module getopt-posix:
  # Code from module gettext-h:
  # Code from module include_next:
  # Code from module intprops:
  # Code from module malloc-gnu:
  # Code from module malloc-posix:
  # Code from module memchr:
  # Code from module mempcpy:
  # Code from module multiarch:
  # Code from module nocrash:
  # Code from module rawmemchr:
  # Code from module size_max:
  # Code from module sleep:
  # Code from module snippet/_Noreturn:
  # Code from module snippet/arg-nonnull:
  # Code from module snippet/c++defs:
  # Code from module snippet/warn-on-use:
  # Code from module ssize_t:
  # Code from module stdalign:
  # Code from module stdbool:
  # Code from module stddef:
  # Code from module stdint:
  # Code from module stdio:
  # Code from module stdlib:
  # Code from module strcase:
  # Code from module strchrnul:
  # Code from module strerror:
  # Code from module strerror-override:
  # Code from module string:
  # Code from module strings:
  # Code from module strndup:
  # Code from module strnlen:
  # Code from module sys_types:
  # Code from module sysexits:
  # Code from module unistd:
  # Code from module vasnprintf:
  # Code from module verify:
  # Code from module vsnprintf:
  # Code from module wchar:
  # Code from module xsize:
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [false])
  gl_cond_libtool=false
  gl_libdeps=
  gl_ltlibdeps=
  gl_m4_base='gnulib/m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  m4_pushdef([gl_LIBSOURCES_LIST], [])
  m4_pushdef([gl_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='gnulib/lib'
gl_FUNC_ALLOCA
gl_ARGP
m4_ifdef([AM_XGETTEXT_OPTION],
  [AM_][XGETTEXT_OPTION([--flag=argp_error:2:c-format])
   AM_][XGETTEXT_OPTION([--flag=argp_failure:4:c-format])])
gl_DIRNAME_LGPL
gl_DOUBLE_SLASH_ROOT
gl_HEADER_ERRNO_H
gl_FLOAT_H
if test $REPLACE_FLOAT_LDBL = 1; then
  AC_LIBOBJ([float])
fi
if test $REPLACE_ITOLD = 1; then
  AC_LIBOBJ([itold])
fi
gl_FUNC_GETOPT_GNU
if test $REPLACE_GETOPT = 1; then
  AC_LIBOBJ([getopt])
  AC_LIBOBJ([getopt1])
  gl_PREREQ_GETOPT
  dnl Arrange for unistd.h to include getopt.h.
  GNULIB_GL_UNISTD_H_GETOPT=1
fi
AC_SUBST([GNULIB_GL_UNISTD_H_GETOPT])
gl_MODULE_INDICATOR_FOR_TESTS([getopt-gnu])
gl_FUNC_GETOPT_POSIX
if test $REPLACE_GETOPT = 1; then
  AC_LIBOBJ([getopt])
  AC_LIBOBJ([getopt1])
  gl_PREREQ_GETOPT
  dnl Arrange for unistd.h to include getopt.h.
  GNULIB_GL_UNISTD_H_GETOPT=1
fi
AC_SUBST([GNULIB_GL_UNISTD_H_GETOPT])
AC_SUBST([LIBINTL])
AC_SUBST([LTLIBINTL])
gl_FUNC_MALLOC_GNU
if test $REPLACE_MALLOC = 1; then
  AC_LIBOBJ([malloc])
fi
gl_MODULE_INDICATOR([malloc-gnu])
gl_FUNC_MALLOC_POSIX
if test $REPLACE_MALLOC = 1; then
  AC_LIBOBJ([malloc])
fi
gl_STDLIB_MODULE_INDICATOR([malloc-posix])
gl_FUNC_MEMCHR
if test $HAVE_MEMCHR = 0 || test $REPLACE_MEMCHR = 1; then
  AC_LIBOBJ([memchr])
  gl_PREREQ_MEMCHR
fi
gl_STRING_MODULE_INDICATOR([memchr])
gl_FUNC_MEMPCPY
if test $HAVE_MEMPCPY = 0; then
  AC_LIBOBJ([mempcpy])
  gl_PREREQ_MEMPCPY
fi
gl_STRING_MODULE_INDICATOR([mempcpy])
gl_MULTIARCH
gl_FUNC_RAWMEMCHR
if test $HAVE_RAWMEMCHR = 0; then
  AC_LIBOBJ([rawmemchr])
  gl_PREREQ_RAWMEMCHR
fi
gl_STRING_MODULE_INDICATOR([rawmemchr])
gl_SIZE_MAX
gl_FUNC_SLEEP
if test $HAVE_SLEEP = 0 || test $REPLACE_SLEEP = 1; then
  AC_LIBOBJ([sleep])
fi
gl_UNISTD_MODULE_INDICATOR([sleep])
gt_TYPE_SSIZE_T
gl_STDALIGN_H
AM_STDBOOL_H
gl_STDDEF_H
gl_STDINT_H
gl_STDIO_H
gl_STDLIB_H
gl_STRCASE
if test $HAVE_STRCASECMP = 0; then
  AC_LIBOBJ([strcasecmp])
  gl_PREREQ_STRCASECMP
fi
if test $HAVE_STRNCASECMP = 0; then
  AC_LIBOBJ([strncasecmp])
  gl_PREREQ_STRNCASECMP
fi
gl_FUNC_STRCHRNUL
if test $HAVE_STRCHRNUL = 0 || test $REPLACE_STRCHRNUL = 1; then
  AC_LIBOBJ([strchrnul])
  gl_PREREQ_STRCHRNUL
fi
gl_STRING_MODULE_INDICATOR([strchrnul])
gl_FUNC_STRERROR
if test $REPLACE_STRERROR = 1; then
  AC_LIBOBJ([strerror])
fi
gl_MODULE_INDICATOR([strerror])
gl_STRING_MODULE_INDICATOR([strerror])
AC_REQUIRE([gl_HEADER_ERRNO_H])
AC_REQUIRE([gl_FUNC_STRERROR_0])
if test -n "$ERRNO_H" || test $REPLACE_STRERROR_0 = 1; then
  AC_LIBOBJ([strerror-override])
  gl_PREREQ_SYS_H_WINSOCK2
fi
gl_HEADER_STRING_H
gl_HEADER_STRINGS_H
gl_FUNC_STRNDUP
if test $HAVE_STRNDUP = 0 || test $REPLACE_STRNDUP = 1; then
  AC_LIBOBJ([strndup])
fi
gl_STRING_MODULE_INDICATOR([strndup])
gl_FUNC_STRNLEN
if test $HAVE_DECL_STRNLEN = 0 || test $REPLACE_STRNLEN = 1; then
  AC_LIBOBJ([strnlen])
  gl_PREREQ_STRNLEN
fi
gl_STRING_MODULE_INDICATOR([strnlen])
gl_SYS_TYPES_H
AC_PROG_MKDIR_P
gl_SYSEXITS
gl_UNISTD_H
gl_FUNC_VASNPRINTF
gl_FUNC_VSNPRINTF
gl_STDIO_MODULE_INDICATOR([vsnprintf])
gl_WCHAR_H
gl_XSIZE
  # End of code from modules
  m4_ifval(gl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gl_LIBSOURCES_DIR])[ ||
      for gl_file in ]gl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gl_LIBSOURCES_DIR])
  m4_popdef([gl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([gltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gltests_LIBSOURCES]))
  m4_pushdef([gltests_LIBSOURCES_LIST], [])
  m4_pushdef([gltests_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='gnulib/tests'
changequote(,)dnl
  gltests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([gltests_WITNESS])
  gl_module_indicator_condition=$gltests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(gltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]gltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gltests_LIBSOURCES_DIR])
  m4_popdef([gltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gltests_libobjs=
    gltests_ltlibobjs=
    if test -n "$gltests_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gltests_libobjs="$gltests_libobjs $i.$ac_objext"
        gltests_ltlibobjs="$gltests_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gltests_LIBOBJS], [$gltests_libobjs])
    AC_SUBST([gltests_LTLIBOBJS], [$gltests_ltlibobjs])
  ])
  LIBGNU_LIBDEPS="$gl_libdeps"
  AC_SUBST([LIBGNU_LIBDEPS])
  LIBGNU_LTLIBDEPS="$gl_ltlibdeps"
  AC_SUBST([LIBGNU_LTLIBDEPS])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ], [
  AS_LITERAL_IF([$1], [gl_LIBSOURCES([$1.c])])dnl
  gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gl_LIBSOURCES_DIR], [gnulib/lib])
      m4_append([gl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [gltests_LIBSOURCES([$1.c])])dnl
  gltests_LIBOBJS="$gltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gltests_LIBSOURCES_DIR], [gnulib/tests])
      m4_append([gltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  build-aux/snippet/_Noreturn.h
  build-aux/snippet/arg-nonnull.h
  build-aux/snippet/c++defs.h
  build-aux/snippet/warn-on-use.h
  lib/alloca.c
  lib/alloca.in.h
  lib/argp-ba.c
  lib/argp-eexst.c
  lib/argp-fmtstream.c
  lib/argp-fmtstream.h
  lib/argp-fs-xinl.c
  lib/argp-help.c
  lib/argp-namefrob.h
  lib/argp-parse.c
  lib/argp-pin.c
  lib/argp-pv.c
  lib/argp-pvh.c
  lib/argp-xinl.c
  lib/argp.h
  lib/asnprintf.c
  lib/basename-lgpl.c
  lib/dirname-lgpl.c
  lib/dirname.h
  lib/dosname.h
  lib/errno.in.h
  lib/float+.h
  lib/float.c
  lib/float.in.h
  lib/getopt.c
  lib/getopt.in.h
  lib/getopt1.c
  lib/getopt_int.h
  lib/gettext.h
  lib/intprops.h
  lib/itold.c
  lib/malloc.c
  lib/memchr.c
  lib/memchr.valgrind
  lib/mempcpy.c
  lib/printf-args.c
  lib/printf-args.h
  lib/printf-parse.c
  lib/printf-parse.h
  lib/rawmemchr.c
  lib/rawmemchr.valgrind
  lib/size_max.h
  lib/sleep.c
  lib/stdalign.in.h
  lib/stdbool.in.h
  lib/stddef.in.h
  lib/stdint.in.h
  lib/stdio.in.h
  lib/stdlib.in.h
  lib/strcasecmp.c
  lib/strchrnul.c
  lib/strchrnul.valgrind
  lib/strerror-override.c
  lib/strerror-override.h
  lib/strerror.c
  lib/string.in.h
  lib/strings.in.h
  lib/stripslash.c
  lib/strncasecmp.c
  lib/strndup.c
  lib/strnlen.c
  lib/sys_types.in.h
  lib/sysexits.in.h
  lib/unistd.in.h
  lib/vasnprintf.c
  lib/vasnprintf.h
  lib/verify.h
  lib/vsnprintf.c
  lib/wchar.in.h
  lib/xsize.h
  m4/00gnulib.m4
  m4/alloca.m4
  m4/argp.m4
  m4/dirname.m4
  m4/double-slash-root.m4
  m4/errno_h.m4
  m4/exponentd.m4
  m4/extensions.m4
  m4/float_h.m4
  m4/getopt.m4
  m4/gnulib-common.m4
  m4/include_next.m4
  m4/intmax_t.m4
  m4/inttypes_h.m4
  m4/longlong.m4
  m4/malloc.m4
  m4/math_h.m4
  m4/memchr.m4
  m4/mempcpy.m4
  m4/mmap-anon.m4
  m4/multiarch.m4
  m4/nocrash.m4
  m4/onceonly.m4
  m4/printf.m4
  m4/rawmemchr.m4
  m4/size_max.m4
  m4/sleep.m4
  m4/ssize_t.m4
  m4/stdalign.m4
  m4/stdbool.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/stdint_h.m4
  m4/stdio_h.m4
  m4/stdlib_h.m4
  m4/strcase.m4
  m4/strchrnul.m4
  m4/strerror.m4
  m4/string_h.m4
  m4/strings_h.m4
  m4/strndup.m4
  m4/strnlen.m4
  m4/sys_socket_h.m4
  m4/sys_types_h.m4
  m4/sysexits.m4
  m4/unistd_h.m4
  m4/vasnprintf.m4
  m4/vsnprintf.m4
  m4/warn-on-use.m4
  m4/wchar_h.m4
  m4/wchar_t.m4
  m4/wint_t.m4
  m4/xsize.m4
])
