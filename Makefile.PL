use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Authen::DecHpwd',
    'VERSION_FROM'	=> 'DecHpwd.pm',
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM    => 'DecHpwd.pm', # retrieve abstract from module
       AUTHOR           => 'Mike McCauley <mikem@localdomain>') : ()),
    'LIBS'		=> [''], # e.g., '-lm'
    'CONFIG'            => ['byteorder'],       # Used to determine 64-bitness
    'DEFINE'            => '-DPERL_BYTEORDER=$(BYTEORDER)',
    'INC'		=> '-I.',    
    'OBJECT'            => 'DecHpwd$(OBJ_EXT) hpwd$(OBJ_EXT)',
);
if  (eval {require ExtUtils::Constant; 1}) {
  # If you edit these definitions to change the constants used by this module,
  # you will need to use the generated const-c.inc and const-xs.inc
  # files to replace their "fallback" counterparts before distributing your
  # changes.
  my @names = (qw(UAI_C_AD_II UAI_C_PURDY UAI_C_PURDY_S UAI_C_PURDY_V
		 __DESCRIP_LOADED));
  ExtUtils::Constant::WriteConstants(
                                     NAME         => 'Authen::DecHpwd',
                                     NAMES        => \@names,
                                     DEFAULT_TYPE => 'IV',
                                     C_FILE       => 'const-c.inc',
                                     XS_FILE      => 'const-xs.inc',
                                  );

}
else {
  use File::Copy;
  use File::Spec;
  foreach my $file ('const-c.inc', 'const-xs.inc') {
    my $fallback = File::Spec->catfile('fallback', $file);
    copy ($fallback, $file) or die "Can't copy $fallback to $file: $!";
  }
}
