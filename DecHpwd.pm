package Authen::DecHpwd;

use 5.006;
use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Authen::DecHpwd ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	UAI_C_AD_II
	UAI_C_PURDY
	UAI_C_PURDY_S
	UAI_C_PURDY_V
	__DESCRIP_LOADED
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	UAI_C_AD_II
	UAI_C_PURDY
	UAI_C_PURDY_S
	UAI_C_PURDY_V
	__DESCRIP_LOADED
);

our $VERSION = '1.0';

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "&Authen::DecHpwd::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
	no strict 'refs';
	# Fixed between 5.005_53 and 5.005_61
#XXX	if ($] >= 5.00561) {
#XXX	    *$AUTOLOAD = sub () { $val };
#XXX	}
#XXX	else {
	    *$AUTOLOAD = sub { $val };
#XXX	}
    }
    goto &$AUTOLOAD;
}

require XSLoader;
XSLoader::load('Authen::DecHpwd', $VERSION);

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Authen::DecHpwd - Perl extension for DEC's password hashing algorithms.

=head1 SYNOPSIS

  use Authen::DecHpwd;
  my $username = 'MIKEM';
  my $password = 'fred';
  my $salt = 1234;
  my $hash = Authen::DecHpwd::lgi_hpwd($name, $pw, Authen::DecHpwd::UAI_C_PURDY, $salt);

=head1 ABSTRACT

Generates password hashes compatible with DEC password hashing with the following algorithms
 PURDY Purdy polynomial over salted input 
 PURDY_V Purdy polynomial + variable length username
 PURDY_S PURDY_V + additional bit rotation
 (UAI_C_AD_II is not supported by hpwd.c)

=head1 DESCRIPTION

This module contains lgi_hpwd, a function that hashes passwords
compatible with DEC password hashing as used on VMS etc.

The resulting hash is an 8 octet binary string

On error, lgi_hpwd returns undef.

Tested on:
 Intel Linux with perl 5.8.0, 
 Sparc Solaris withg perl 5.6.1
 Intel Windows with perl 5.6.1

=head2 EXPORT

None by default.

=head2 Exportable constants

  UAI_C_AD_II
  UAI_C_PURDY
  UAI_C_PURDY_S
  UAI_C_PURDY_V

=head1 SEE ALSO

=head1 AUTHOR

Mike McCauley, Open System Consultants Pty Ltd E<lt>mikem@localdomainE<gt>

=head1 COPYRIGHT AND LICENSE

hpwd.c is derived from hpwd.c by Shawn A. Clifford (sysop@robot.nuceng.ufl.edu)
and included on the DECUS 1996 Utilities. 
Remainder Copyright (C) 2003 Open System Consultants Pty Ltd

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
