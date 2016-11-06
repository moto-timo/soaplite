#!/usr/bin/env perl

BEGIN {
  unless(grep /blib/, @INC) {
    chdir 't' if -d 't';
    unshift @INC, '../lib' if -d '../lib';
  }
}

use SOAP::Test;

SOAP::Test::Server::run_for(shift || 'http://localhost/mod_perl/soap.mod_cgi');

