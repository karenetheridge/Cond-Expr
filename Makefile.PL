use strict;
use warnings;
use ExtUtils::MakeMaker;

use lib 'inc';
use ExtUtils::MakeMaker::Dist::Zilla::Develop;
use MMHelper;

eval MMHelper::header_generator() or die $@;

WriteMakefile(
    NAME     => 'Cond::Expr',
    VERSION_FROM => 'lib/Cond/Expr.pm',
    NORECURS => 1,
    CCFLAGS  => MMHelper::ccflags_static('dev'),
    MMHelper::mm_args(),
);
