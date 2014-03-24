#!/usr/bin/perl

#
# test program to monitor for changes in properties on the root window.
#

use Glib qw(TRUE FALSE);
use Gtk2;

Gtk2->init;

#my $window = Gtk2::Gdk->get_default_root_window;
my $window = Gtk2::Gdk::Window->foreign_new(0x3e00003);

print STDERR "Event mask: ",$window->get_events,"\n";

#$window->set_events('all-events-mask');

print STDERR "Event mask: ",$window->get_events,"\n";

$window->set_events('property-change-mask');

#$window->set_events(['structure-mask', 'property-change-mask']);

print STDERR "Event mask: ",$window->get_events,"\n";

sub handler {
	print STDERR "hook: ",join(',',@_),"\n";
	my $event = shift;
	if ($event->type eq 'property-notify') {
		my $atom = $event->atom;
		my $state = $event->state;
		print "Event: ",$atom->name,", state: ",$state,"\n";
		return; # Gtk2 doesn't want to see these.
	}
	return Gtk2->main_do_event($event);
}

Gtk2::Gdk::Event->handler_set(\&handler,'some-data');

Gtk2->main;

