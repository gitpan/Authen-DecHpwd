use warnings;
use strict;

use Module::Build;

Module::Build->new(
	module_name => "Authen::DecHpwd",
	license => "gpl",
	dist_author => [
		"Shawn Clifford",
		"Davide Casale",
		"Mario Ambrogetti",
		"Terence Lee",
		"Jean-loup Gailly",
		"Solar Designer",
		"Mike McCauley <mikem\@open.com.au>",
		"Andrew Main (Zefram) <zefram\@fysh.org>",
	],
	build_requires => {
		"ExtUtils::CBuilder" => "0.15",
		"Module::Build" => 0,
		"Test::More" => 0,
		"perl" => "5.006",
		"strict" => 0,
		"warnings" => 0,
	},
	requires => {
		"XSLoader" => 0,
		"Exporter" => 0,
		"base" => 0,
		"constant" => 0,
		"perl" => "5.006",
		"strict" => 0,
		"warnings" => 0,
	},
	dynamic_config => 0,
	meta_add => { distribution_type => "module" },
	create_makefile_pl => "passthrough",
	sign => 1,
)->create_build_script;

exit 0;
