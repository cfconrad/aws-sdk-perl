
package Paws::AppStream::DeleteImagePermissions;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SharedAccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteImagePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DeleteImagePermissionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DeleteImagePermissions - Arguments for method DeleteImagePermissions on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteImagePermissions on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DeleteImagePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteImagePermissions.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DeleteImagePermissionsResult = $appstream2->DeleteImagePermissions(
      Name            => 'MyName',
      SharedAccountId => 'MyAwsAccountId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the private image.



=head2 B<REQUIRED> SharedAccountId => Str

The 12-digit ID of the AWS account for which to delete image
permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteImagePermissions in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

