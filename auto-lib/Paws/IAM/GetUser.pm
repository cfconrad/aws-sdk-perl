
package Paws::IAM::GetUser;
  use Moose;
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetUser - Arguments for method GetUser on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUser on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUser.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To get information about an IAM user
    # The following command gets information about the IAM user named Bob.
    my $GetUserResponse = $iam->GetUser(
      {
        'UserName' => 'Bob'
      }
    );

    # Results:
    my $User = $GetUserResponse->User;

    # Returns a L<Paws::IAM::GetUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetUser>

=head1 ATTRIBUTES


=head2 UserName => Str

The name of the user to get information about.

This parameter is optional. If it is not included, it defaults to the
user making the request. This parameter allows (per its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUser in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

