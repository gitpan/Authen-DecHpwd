=head1 NAME

Authen::DecHpwd - DEC VMS password hashing

=head1 SYNOPSIS

	use Authen::DecHpwd qw(
		lgi_hpwd
		UAI_C_AD_II UAI_C_PURDY UAI_C_PURDY_V UAI_C_PURDY_S
	);

	$hash = lgi_hpwd("JRANDOM", "PASSWORD", UAI_C_PURDY_S, 1234);

	use Authen::DecHpwd qw(vms_username vms_password);

	$username = vms_username($username);
	$password = vms_password($password);

=head1 DESCRIPTION

This module implements the LGI$HPWD password hashing function from VMS,
and some associated VMS username and password handling functions.

=cut

package Authen::DecHpwd;

use warnings;
use strict;

use XSLoader;

our $VERSION = "2.003";

use base "Exporter";
our @EXPORT_OK = qw(
	lgi_hpwd
	UAI_C_AD_II UAI_C_PURDY UAI_C_PURDY_V UAI_C_PURDY_S
	vms_username vms_password
);

XSLoader::load(__PACKAGE__, $VERSION);

=head1 FUNCTIONS

=over

=item lgi_hpwd(USERNAME, PASSWORD, ALGORITHM, SALT)

This is the LGI$HPWD function from VMS (but with the parameters in a
different order).  It hashes the PASSWORD string in a manner determined
by the other parameters, and returns the hash as a string of bytes.

ALGORITHM determines which hashing algorithm will be used.  It must
be the value of one of the algorithm constants supplied by this module
(see below).  The AUTODIN-II CRC algorithm is currently unimplemented.

SALT must be an integer in the range [0, 2^16).  It modifies the hashing
so that the same password does not always produce the same hash.

USERNAME is a string that is used as more salt.  In VMS it is the username
of the account to which the password controls access.

VMS usernames and passwords are constrained in character set and
length, and are case-insensitive.  This function does not enforce
these restrictions, nor perform canonicalisation.  If restrictions
and canonicalisation are desired then they must be applied separately.
The functions C<vms_username> and C<vms_password> described below may
be useful.

=item UAI_C_AD_II

=item UAI_C_PURDY

=item UAI_C_PURDY_V

=item UAI_C_PURDY_S

These constants are used to identify the four password hashing algorithms
used by VMS.  They are the "UAI$C_" constants in VMS.

UAI_C_AD_II refers to an AUTODIN-II 32-bit CRC algorithm.  This is
unimplemented by this module.

UAI_C_PURDY, UAI_C_PURDY_V, and UAI_C_PURDY_S refer to successive
refinements of an algorithm based on Purdy polynomials.  All of these
algorithms use the salt and username parameters as salt, use the whole
password, and return an eight-byte (64-bit) hash.  The main part
of the algorithm, the Purdy polynomial, is identical in all three.
They differ in the pre-hashing, particularly in the treatment of the
username parameter.

In UAI_C_PURDY the username is truncated or space-padded to 12 characters
before being hashed in.  UAI_C_PURDY_V accepts a variable-length username.
UAI_C_PURDY_S accepts a variable-length username and also includes the
password length in the hash.  UAI_C_PURDY_S also does some extra bit
rotations when hashing in the username and password strings, in order
to avoid aliasing.

=cut

use constant UAI_C_AD_II => 0;
use constant UAI_C_PURDY => 1;
use constant UAI_C_PURDY_V => 2;
use constant UAI_C_PURDY_S => 3;

=item vms_username(USERNAME)

Checks whether the USERNAME string matches VMS username syntax, and
canonicalises it.  VMS username syntax is 1 to 31 characters from
case-insensitive alphanumerics, "B<_>", and "B<$>".  If the string has
correct username syntax then the username is returned in canonical form
(uppercase).  If the string is not a username then C<undef> is returned.

=cut

sub vms_username($) {
	return $_[0] =~ /\A[_\$0-9A-Za-z]{1,31}\z/ ? uc("$_[0]") : undef;
}

=item vms_password(PASSWORD)

Checks whether the PASSWORD string is an acceptable VMS password,
and canonicalises it.  VMS password syntax is 1 to 32 characters from
case-insensitive alphanumerics, "B<_>", and "B<$>".  If the string is
an acceptable password then the password is returned in canonical form
(uppercase).  If the string is not an acceptable password then C<undef>
is returned.

=cut

sub vms_password($) {
	return $_[0] =~ /\A[_\$0-9A-Za-z]{1,32}\z/ ? uc("$_[0]") : undef;
}

=back

=head1 SEE ALSO

L<VMS::User>

=head1 AUTHOR

The original C implementation of LGI$HPWD was written by Shawn Clifford.
The code has since been developed by Davide Casale, Mario Ambrogetti,
Terence Lee, Jean-loup Gailly, Solar Designer, and Andrew Main (Zefram).

Mike McCauley <mikem@open.com.au> created the first version of
C<Authen::DecHpwd>, establishing the Perl interface.  This was based on
Shawn Clifford's code without the later developments.

Andrew Main (Zefram) <zefram@fysh.org> created a new C<Authen::DecHpwd>
based on the more developed C code presently used, and added ancillary
functions.

=head1 COPYRIGHT

Copyright (C) 2002 Jean-loup Gailly <http://gailly.net>

Based in part on code from John the Ripper, Copyright (C) 1996-2002
Solar Designer

Copyright (C) 2006, 2007, 2009 Andrew Main (Zefram) <zefram@fysh.org>

=head1 LICENSE

This module is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2 of the License, or (at your
option) any later version.

=cut

1;
