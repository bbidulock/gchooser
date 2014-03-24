#!/usr/bin/perl

use Socket qw(
	inet_pton
	inet_ntop
	pack_sockaddr_in
	unpack_sockaddr_in
	AF_INET
);

my $addr = inet_pton(AF_INET,'127.0.0.1');
my $port = 0x1234;
my $sock = pack_sockaddr_in($port,$addr);

print "AF_INET: ",AF_INET,"\n";

print "IP only: ",unpack('H*',$addr),"\n";
print "Address: ",unpack('H*',$sock),"\n";

my $snew = pack('nn',AF_INET,$port).$addr;

print "xdmaddr: ",unpack('H*',$snew),"\n";
