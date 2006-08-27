use ExtUtils::MakeMaker;

WriteMakefile(
	NAME => "Authen::DecHpwd",
	VERSION_FROM => "lib/Authen/DecHpwd.pm",
	PREREQ_PM => {
		XSLoader => 0,
	},
);
