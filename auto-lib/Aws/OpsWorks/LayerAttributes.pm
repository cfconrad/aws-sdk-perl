package Aws::OpsWorks::LayerAttributes {
  use Moose;
  with 'AWS::API::MapParser';
  has BundlerVersion => (is => 'ro', isa => 'Str');
  has EnableHaproxyStats => (is => 'ro', isa => 'Str');
  has GangliaPassword => (is => 'ro', isa => 'Str');
  has GangliaUrl => (is => 'ro', isa => 'Str');
  has GangliaUser => (is => 'ro', isa => 'Str');
  has HaproxyHealthCheckMethod => (is => 'ro', isa => 'Str');
  has HaproxyHealthCheckUrl => (is => 'ro', isa => 'Str');
  has HaproxyStatsPassword => (is => 'ro', isa => 'Str');
  has HaproxyStatsUrl => (is => 'ro', isa => 'Str');
  has HaproxyStatsUser => (is => 'ro', isa => 'Str');
  has JavaAppServer => (is => 'ro', isa => 'Str');
  has JavaAppServerVersion => (is => 'ro', isa => 'Str');
  has Jvm => (is => 'ro', isa => 'Str');
  has JvmOptions => (is => 'ro', isa => 'Str');
  has JvmVersion => (is => 'ro', isa => 'Str');
  has ManageBundler => (is => 'ro', isa => 'Str');
  has MemcachedMemory => (is => 'ro', isa => 'Str');
  has MysqlRootPassword => (is => 'ro', isa => 'Str');
  has MysqlRootPasswordUbiquitous => (is => 'ro', isa => 'Str');
  has NodejsVersion => (is => 'ro', isa => 'Str');
  has PassengerVersion => (is => 'ro', isa => 'Str');
  has RailsStack => (is => 'ro', isa => 'Str');
  has RubyVersion => (is => 'ro', isa => 'Str');
  has RubygemsVersion => (is => 'ro', isa => 'Str');
}
1;
