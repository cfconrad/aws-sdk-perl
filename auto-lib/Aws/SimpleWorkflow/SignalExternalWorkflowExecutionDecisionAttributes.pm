package Aws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes {
  use Moose;
  has control => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}
1;
