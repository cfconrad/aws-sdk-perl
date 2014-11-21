
package Aws::DataPipeline::ReportTaskProgress {
  use Moose;
  has taskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskProgress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::ReportTaskProgressOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;