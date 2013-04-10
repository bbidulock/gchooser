use ExtUtils::MakeMaker;
WriteMakefile(
	NAME => "gchooser",
	#DESC => "An XDM chooser written in gtk2-perl.",
	VERSION => "0.06",
	EXE_FILES => [ "gchooser" ],
	MAN1PODS => {
		'gchooser.pod' => 'blib/man1/gchooser.1',
	},
	MAN3PODS => { },
	PREREQ_PM => {
		'Net::Interface' => 0,
		'Net::IP' => 0,
		'Glib' => 0,
		'Gtk2' => 0,
	},
);
