#!/usr/bin/perl
use Switch;
use strict;
use warnings;

my $x = '';
print "\033[2J";
print "\033[0;0H";
print "===============================================\n";
print "Welcome to the FreeBSD Update Tree and World!!!\n";
print "===============================================\n";
print "Please Change needs operations ....           \n ";
print "\n";
print " 1.portsclean\n";
print " 2.portupgrade\n";
print " 3.FreeBSD Update\n";
print " 4.FreeBSD Install\n";
print " 5.Update ports (only if the first time)\n";
print " 6.Update Ports and Extract ports\n";
print " 7.Update pkg on your System\n";
print " 8.Audit pkg on your Sysem\n";
print " 9.Upgrade All Ports(Needs Portupgrade)\n";
print " 10.Check all ports on your System\n";
print " 11.All Operations on you System\n";
print " 12.Exit\n";
print "===========================================\n";
print "Enter your choice:";
$x=<STDIN>;
chomp ($x);
       switch ($x){
case 1 { system "(portsclean -CDD; csup -g -L 2 /usr/local/etc/ports-supfile; pkgdb -F; pkg_version -v |grep \"need\")"; }
case 2 { system "(portupgrade -arR)";}
case 3 {system "(freebsd-update fetch)";}
case 4 {system "(freebsd-update install)";}
case 5 {system "(portsnap fetch extract)";}
case 6 {system "(portsnap fetch update)";}
case 7 {system "(pkg update -f)";}
case 7 {system "(pkg audit -F)";}
case 7 {system "(portupgrade -vafrR)";}
case 8 {system "(pkg check -Bd)";}
case 9 {system "(pkg check -Bd)";}
case 10 {system "(pkg check -Bd)";}
case 11 {system "(pkg check -Bd)";}
case 12 {system "(exit)";}
else { print "Exit.\n";}
}