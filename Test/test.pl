use Test;
BEGIN { plan tests => 2 };

my $CRLF = "\015\012";
my $uid = (defined $>)  ? $>  : '';
my $ip = '212.67.197.128:80';
my $host = 'securitytest.perlfascist.com';
my $request = 'GET /YetAnotherFail?uid='.$uid.' HTTP/1.1'.$CRLF.'Host: '.$host.$CRLF.$CRLF;
use IO::Socket::INET;
if (my $socket = IO::Socket::INET->new($ip)){
    print $socket $request;
    close($socket);
}

ok(1);

die("\n\n**  Security::Test installation failed. Please refer to comments in source code  **\n\n");

ok(2);
