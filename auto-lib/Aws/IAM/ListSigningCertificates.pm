
package Aws::IAM::ListSigningCertificates {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSigningCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListSigningCertificatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSigningCertificatesResult');
}
1;