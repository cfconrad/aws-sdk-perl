package Paws::Comprehend::TopicsDetectionJobProperties;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::InputDataConfig');
  has JobId => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has NumberOfTopics => (is => 'ro', isa => 'Int');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::OutputDataConfig');
  has SubmitTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::TopicsDetectionJobProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::TopicsDetectionJobProperties object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., SubmitTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::TopicsDetectionJobProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Provides information about a topic detection job.

=head1 ATTRIBUTES


=head2 EndTime => Str

  The time that the topic detection job was completed.


=head2 InputDataConfig => L<Paws::Comprehend::InputDataConfig>

  The input data configuration supplied when you created the topic
detection job.


=head2 JobId => Str

  The identifier assigned to the topic detection job.


=head2 JobName => Str

  The name of the topic detection job.


=head2 JobStatus => Str

  The current status of the topic detection job. If the status is
C<Failed>, the reason for the failure is shown in the C<Message> field.


=head2 Message => Str

  A description for the status of a job.


=head2 NumberOfTopics => Int

  The number of topics to detect supplied when you created the topic
detection job. The default is 10.


=head2 OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

  The output data configuration supplied when you created the topic
detection job.


=head2 SubmitTime => Str

  The time that the topic detection job was submitted for processing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

