
package Paws::ApiGateway::TestInvokeMethod;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has ClientCertificateId => (is => 'ro', isa => 'Str');
  has Headers => (is => 'ro', isa => 'Paws::ApiGateway::MapOfHeaderValues');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod' , required => 1);
  has PathWithQueryString => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId' , required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has StageVariables => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestInvokeMethod');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::TestInvokeMethodResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeMethod - Arguments for method TestInvokeMethod on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestInvokeMethod on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method TestInvokeMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestInvokeMethod.

As an example:

  $service_obj->TestInvokeMethod(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Body => Str





=head2 ClientCertificateId => Str





=head2 Headers => L<Paws::ApiGateway::MapOfHeaderValues>





=head2 B<REQUIRED> HttpMethod => Str





=head2 PathWithQueryString => Str





=head2 B<REQUIRED> ResourceId => Str





=head2 B<REQUIRED> RestApiId => Str





=head2 StageVariables => L<Paws::ApiGateway::MapOfStringToString>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestInvokeMethod in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

