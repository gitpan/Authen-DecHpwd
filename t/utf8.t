use Test::More tests => 4;

BEGIN { use_ok "Authen::DecHpwd", qw(lgi_hpwd UAI_C_PURDY); }

eval { lgi_hpwd("foo\x{100}bar", "foobar", UAI_C_PURDY, 123); };
like $@, qr/\Ainput must contain only octets\b/;

eval { lgi_hpwd("foobar", "foo\x{100}bar", UAI_C_PURDY, 123); };
like $@, qr/\Ainput must contain only octets\b/;

SKIP: {
	my $tstr = "foo\xaabar";
	my $ustr;
	eval {
		require Encode;
		$ustr = Encode::encode_utf8($tstr);
		Encode::_utf8_on($ustr);
	};
	skip "Encode not available", 1 unless $@ eq "";
	is lgi_hpwd($ustr, $ustr, UAI_C_PURDY, 123),
		lgi_hpwd($tstr, $tstr, UAI_C_PURDY, 123);
}
