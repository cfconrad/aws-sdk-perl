
package Aws::CloudSearch::IndexDocuments {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IndexDocuments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::IndexDocumentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'IndexDocumentsResult');
}
1;