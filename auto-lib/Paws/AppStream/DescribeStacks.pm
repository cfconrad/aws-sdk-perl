
package Paws::AppStream::DescribeStacks;
  use Moose;
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeStacks - Arguments for method DescribeStacks on Paws::AppStream

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStacks on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method DescribeStacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStacks.

As an example:

  $service_obj->DescribeStacks(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Names => ArrayRef[Str|Undef]

The stack names to describe. Use null to describe all the stacks for
the AWS account.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStacks in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

