
package Aws::SDB::BatchDeleteAttributes {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::SDB::DeletableItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;