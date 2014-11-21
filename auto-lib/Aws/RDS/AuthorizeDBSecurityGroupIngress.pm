
package Aws::RDS::AuthorizeDBSecurityGroupIngress {
  use Moose;
  has CIDRIP => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeDBSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::AuthorizeDBSecurityGroupIngressResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeDBSecurityGroupIngressResult');
}
1;