
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'MooseX-LexicalRoleApplication',
  NAME      => 'MooseX::LexicalRoleApplication',
  AUTHOR    => 'Florian\ Ragwitz\ \<rafl\@debian\.org\>',
  ABSTRACT  => 'Apply\ roles\ for\ a\ lexical\ scope\ only',
  VERSION   => '0.02',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::clean" => '0',
    "Test::More" => '0.89',
    "Scope::Guard" => '0',
    "namespace::autoclean" => '0',
    "Task::Weaken" => '0',
    "Moose" => '0',
  },
  test => {TESTS => 't/*.t'}
);

