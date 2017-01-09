
package Paws::ElasticBeanstalk::DescribeEnvironmentHealth;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::DescribeEnvironmentHealthResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentHealthResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentHealth - Arguments for method DescribeEnvironmentHealth on Paws::ElasticBeanstalk

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEnvironmentHealth on the 
AWS Elastic Beanstalk service. Use the attributes of this class
as arguments to method DescribeEnvironmentHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEnvironmentHealth.

As an example:

  $service_obj->DescribeEnvironmentHealth(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

Specify the response elements to return. To retrieve all attributes,
set to C<All>. If no attribute names are specified, returns the name of
the environment.



=head2 EnvironmentId => Str

Specify the environment by ID.

You must specify either this or an EnvironmentName, or both.



=head2 EnvironmentName => Str

Specify the environment by name.

You must specify either this or an EnvironmentName, or both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEnvironmentHealth in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

