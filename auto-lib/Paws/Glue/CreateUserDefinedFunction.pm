
package Paws::Glue::CreateUserDefinedFunction;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has FunctionInput => (is => 'ro', isa => 'Paws::Glue::UserDefinedFunctionInput', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserDefinedFunction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateUserDefinedFunctionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateUserDefinedFunction - Arguments for method CreateUserDefinedFunction on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserDefinedFunction on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateUserDefinedFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserDefinedFunction.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateUserDefinedFunctionResponse = $glue->CreateUserDefinedFunction(
      DatabaseName  => 'MyNameString',
      FunctionInput => {
        ClassName    => 'MyNameString',    # min: 1, max: 255
        FunctionName => 'MyNameString',    # min: 1, max: 255
        OwnerName    => 'MyNameString',    # min: 1, max: 255
        OwnerType    => 'USER',            # values: USER, ROLE, GROUP; OPTIONAL
        ResourceUris => [
          {
            ResourceType => 'JAR',      # values: JAR, FILE, ARCHIVE; OPTIONAL
            Uri          => 'MyURI',    # min: 1, max: 1024; OPTIONAL
          },
          ...
        ],                              # max: 1000; OPTIONAL
      },
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateUserDefinedFunction>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which to create the function. If none is
supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database in which to create the function.



=head2 B<REQUIRED> FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>

A C<FunctionInput> object that defines the function to create in the
Data Catalog.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserDefinedFunction in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

