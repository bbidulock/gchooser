use ExtUtils::MakeMaker;
WriteMakefile(
	NAME => "gchooser",
	#DESC => "An XDM chooser written in gtk2-perl.",
	VERSION => "0.04",
	EXE_FILES => [ "gchooser" ],
	PREREQ_PM => {
		'Net::Interface' => 0,
		'Net::IP' => 0,
		'Glib' => 0,
		'Gtk2' => 0,
	},
);
