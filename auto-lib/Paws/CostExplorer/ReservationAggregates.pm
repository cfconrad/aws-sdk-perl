package Paws::CostExplorer::ReservationAggregates;
  use Moose;
  has AmortizedRecurringFee => (is => 'ro', isa => 'Str');
  has AmortizedUpfrontFee => (is => 'ro', isa => 'Str');
  has NetRISavings => (is => 'ro', isa => 'Str');
  has OnDemandCostOfRIHoursUsed => (is => 'ro', isa => 'Str');
  has PurchasedHours => (is => 'ro', isa => 'Str');
  has TotalActualHours => (is => 'ro', isa => 'Str');
  has TotalAmortizedFee => (is => 'ro', isa => 'Str');
  has TotalPotentialRISavings => (is => 'ro', isa => 'Str');
  has UnusedHours => (is => 'ro', isa => 'Str');
  has UtilizationPercentage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ReservationAggregates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ReservationAggregates object:

  $service_obj->Method(Att1 => { AmortizedRecurringFee => $value, ..., UtilizationPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ReservationAggregates object:

  $result = $service_obj->Method(...);
  $result->Att1->AmortizedRecurringFee

=head1 DESCRIPTION

The aggregated numbers for your RI usage.

=head1 ATTRIBUTES


=head2 AmortizedRecurringFee => Str

  The monthly cost of your RI, amortized over the RI period.


=head2 AmortizedUpfrontFee => Str

  The upfront cost of your RI, amortized over the RI period.


=head2 NetRISavings => Str

  How much you saved due to purchasing and utilizing RIs. This is
calculated by subtracting the C<TotalAmortizedFee> from the
C<OnDemandCostOfRIHoursUsed>.


=head2 OnDemandCostOfRIHoursUsed => Str

  How much your RIs would cost if charged On-Demand rates.


=head2 PurchasedHours => Str

  How many RI hours that you purchased.


=head2 TotalActualHours => Str

  The total number of RI hours that you used.


=head2 TotalAmortizedFee => Str

  The total cost of your RI, amortized over the RI period.


=head2 TotalPotentialRISavings => Str

  How much you could save if you use your entire reservation.


=head2 UnusedHours => Str

  The number of RI hours that you didn't use.


=head2 UtilizationPercentage => Str

  The percentage of RI time that you used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

