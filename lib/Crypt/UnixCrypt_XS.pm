package Crypt::UnixCrypt_XS;

use 5.006;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

our @EXPORT_OK = ( qw/crypt/ );

our @EXPORT = qw(
	
);

our $VERSION = '0.03';

require XSLoader;
XSLoader::load('Crypt::UnixCrypt_XS', $VERSION);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Crypt::UnixCrypt_XS - perl xs interface for a portable traditional 
F<crypt> function. 


=head1 SYNOPSIS

  use Crypt::UnixCrypt_XS qw/crypt/;
  my $hashed = crypt( $key, $salt );

=head1 DESCRIPTION

This module implements the F<crypt> function.

key is a password.

salt is a two-character string  chosen  from  the  set  [a-zA-Z0-9./].

=head2 EXPORT

None by default.

=head1 RATIONAL

Crypt::UnixCrypt_XS provide a fast portable crypt function. Perl's internal crypt is not present at every system. Perl calls the F<crypt> function of the system's C library. This may lead to trouble if the system's crypt presents different results for the same key and salt, but different processid's. L<Crypt::UnixCrypt> is the cure here, but it is to slow. On my computer L<Crypt::UnixCrypt_XS> is about 800 times faster than L<Crypt::UnixCrypt>.

=head1 SEE ALSO

C<crypt(3)>, L<Crypt::UnixCrypt>

=head1 AUTHOR

Boris Zentner, E<lt>bzm@bz.deE<gt>, the original C source code was 
written by Eric Young, eay@psych.uq.oz.au.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Boris Zentner

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.3 or,
at your option, any later version of Perl 5 you may have available.

=cut
