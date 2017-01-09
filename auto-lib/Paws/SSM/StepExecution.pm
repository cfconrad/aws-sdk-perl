package Paws::SSM::StepExecution;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has ExecutionEndTime => (is => 'ro', isa => 'Str');
  has ExecutionStartTime => (is => 'ro', isa => 'Str');
  has FailureMessage => (is => 'ro', isa => 'Str');
  has Inputs => (is => 'ro', isa => 'Paws::SSM::NormalStringMap');
  has Outputs => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has Response => (is => 'ro', isa => 'Str');
  has ResponseCode => (is => 'ro', isa => 'Str');
  has StepName => (is => 'ro', isa => 'Str');
  has StepStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StepExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::StepExecution object:

  $service_obj->Method(Att1 => { Action => $value, ..., StepStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::StepExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Detailed information about an the execution state of an Automation
step.

=head1 ATTRIBUTES


=head2 Action => Str

  The action this step performs. The action determines the behavior of
the step.


=head2 ExecutionEndTime => Str

  If a step has finished execution, this contains the time the execution
ended. If the step has not yet concluded, this field is not populated.


=head2 ExecutionStartTime => Str

  If a step has begun execution, this contains the time the step started.
If the step is in C<Pending> status, this field is not populated.


=head2 FailureMessage => Str

  If a step failed, this message explains why the execution failed.


=head2 Inputs => L<Paws::SSM::NormalStringMap>

  Fully-resolved values passed into the step before execution.


=head2 Outputs => L<Paws::SSM::AutomationParameterMap>

  Returned values from the execution of the step.


=head2 Response => Str

  A message associated with the response code for an execution.


=head2 ResponseCode => Str

  The response code returned by the execution of the step.


=head2 StepName => Str

  The name of this execution step.


=head2 StepStatus => Str

  The execution status for this step. Valid values include: C<Pending>,
C<InProgress>, C<Success>, C<Cancelled>, C<Failed>, and C<TimedOut>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

