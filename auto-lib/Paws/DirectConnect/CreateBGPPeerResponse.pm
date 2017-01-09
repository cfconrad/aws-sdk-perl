
package Paws::DirectConnect::CreateBGPPeerResponse;
  use Moose;
  has VirtualInterface => (is => 'ro', isa => 'Paws::DirectConnect::VirtualInterface', traits => ['Unwrapped'], xmlname => 'virtualInterface' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateBGPPeerResponse

=head1 ATTRIBUTES


=head2 VirtualInterface => L<Paws::DirectConnect::VirtualInterface>




=head2 _request_id => Str


=cut

1;