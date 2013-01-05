perl-cross-debian
=================

Long term maintenance of cross-build support for the Debian configuration of perl.

n.b. this code is, as yet, unreleased and relies on patches which have not
yet been applied upstream (to both perl and the Debian perl packaging).
See the todo list in the doc directory.

See also: [linux.codehelp.co.uk/serendipity](http://linux.codehelp.co.uk/serendipity/index.php?/archives/239-Long-term-maintenance-of-perl-cross-build-support-in-Debian.html)

1. perl-cross-debian is restricted to cross-build support of perl using
the Debian configuration of the specific version of perl available in Debian.
1. all build-dependencies of the perl package in Debian need to be installed
when using perl-cross-debian to cross-build perl, as well as whatever
cross-build dependencies may be required.
1. perl-cross-debian doesn't mandate the use of dpkg-cross style or
MultiArch style cross-dependencies but some paths may only suit dpkg-cross
style packages.
1. perl-cross-debian provides a helper script which expects to be run
by a modified debian/rules of the perl package and expects to be told
which variant of perl is currently being built: static, debug or shared.
1. perl-cross-debian relies on many Debian-specific tools and programs,
including dpkg-architecture, which are (and may likely remain) perl
programs using the native perl interpreter on the system.
1. perl-cross-debian is likely to require that the version of the native
perl interpreter used in the build is the same version as the version of
perl being cross-built.
1. perl-cross-debian is now [a Debian package](http://packages.qa.debian.org/p/perl-cross-debian.html).
