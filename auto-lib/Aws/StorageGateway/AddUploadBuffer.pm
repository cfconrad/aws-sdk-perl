
package Aws::StorageGateway::AddUploadBuffer {
  use Moose;
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddUploadBuffer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::AddUploadBufferOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;