package Security::Test;

# IMPORTANT  IMPORTANT  IMPORTANT  IMPORTANT  IMPORTANT  
#
# READ THIS BEFORE INSTALLING!!
#
# This module does nothing.
#
# The test module sends a HTTP request to
# http://securitytest.perlfascist.com
# which notes the number of attempted installations
# and whether installation was performed
# with superuser priviledges. The request is
# formatted as follows:
#   GET /YetAnotherFail?uid=$uid HTTP/1.1
#   Host: securitytest.perlfascist.com
# I will release details of this research
# to CPAN maintainers, and maybe later will
# post a summary on 
# http://securitytest.perlfascist.com 

$VERSION = '0.01';
use strict;
use warnings;

sub new
{
    my $class = $_[0];
    bless ({}, $class);
}

sub test
{
    die("Test failed");
}
1;
__END__

=head1 NAME

Security::Test - Performs checks for common Perl insecurities

=head1 SYNOPSIS

  use Security::Test;
  my $test = Security::Test->new();
  $test->test;

=head1 DESCRIPTION

This module performs a number of tests for common security flaws found in many Perl installations, returning full descriptions of an insecurities that it finds.

=head1 AUTHOR

Nigel Wetters (nwetters@cpan.org)

=head1 COPYRIGHT

Copyright (c) 2001, Nigel Wetters. All Rights Reserved. This module is free software. It may be used, redistributed and/or modified under the same terms as Perl itself.

