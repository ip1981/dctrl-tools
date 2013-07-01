AC_INIT([dctrl-tools], [2.22.2], [dctrl-tools-devel@lists.alioth.debian.org])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])

AM_INIT_AUTOMAKE([foreign subdir-objects dist-bzip2])
m4_ifdef([AM_SILENT_RULES],[AM_SILENT_RULES])

AC_PROG_CC_C99
AC_USE_SYSTEM_EXTENSIONS
LT_INIT

AC_CHECK_PROG([PO4A],[po4a],[po4a],[no])
AM_CONDITIONAL([HAVE_PO4A], [test "x$PO4A" != "xno"])

AM_GNU_GETTEXT([external])
AM_GNU_GETTEXT_VERSION([0.18.1])

AC_ARG_ENABLE([werror],
    AS_HELP_STRING([--enable-werror], [treat warnings as errors]),
    [],
    [enable_werror=no])

AS_IF([test "x$enable_werror" != "xno"], [
  AC_SUBST([WERROR], [-Werror])
])


AC_SUBST([GREP_ALIASES], ["grep-status grep-available grep-aptavail grep-debtags"])

AC_CONFIG_FILES([
    Makefile
    po/Makefile.in
    sync-available/sync-available
])

AC_OUTPUT
