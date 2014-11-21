
package Aws::DirectConnect::DescribeConnectionsOnInterconnect {
  use Moose;
  has interconnectId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionsOnInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::Connections');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;