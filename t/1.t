# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 2' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 5 };
use Authen::DecHpwd;
ok(1); # If we made it this far, we're ok.


my $fail;
foreach my $constname (qw(
	UAI_C_AD_II UAI_C_PURDY UAI_C_PURDY_S UAI_C_PURDY_V __DESCRIP_LOADED)) {
  next if (eval "my \$a = $constname; 1");
  if ($@ =~ /^Your vendor has not defined Authen::DecHpwd macro $constname/) {
    print "# pass: $@";
  } else {
    print "# fail: $@";
    $fail = 1;    
  }
}
ok(!$fail);


#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

# By convention, Dec VAX usernames are uppercase, and passwords
# are case sensitive
my $name = 'MIKEM';
my $pw   = 'fred';

# Test the various algorithms. Algorith 0 is not supported by hpwd.c

my $result = Authen::DecHpwd::lgi_hpwd($name, $pw, Authen::DecHpwd::UAI_C_PURDY, 1234);
ok($result eq pack('H*', 'c4782ff38b74b4e5'));

$result = Authen::DecHpwd::lgi_hpwd($name, $pw, Authen::DecHpwd::UAI_C_PURDY_V, 1234);
ok($result eq pack('H*', '511e841e910d1f50'));

$result = Authen::DecHpwd::lgi_hpwd($name, $pw, Authen::DecHpwd::UAI_C_PURDY_S, 1234);
ok($result eq pack('H*', '85ad61e72a41dec4'));

