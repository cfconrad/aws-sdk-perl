
package Aws::CloudSearch::DeleteDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDomainResult');
}
1;