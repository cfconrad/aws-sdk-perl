package Aws::CloudSearch::DoubleOptions {
  use Moose;
  has DefaultValue => (is => 'ro', isa => 'Num');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SortEnabled => (is => 'ro', isa => 'Bool');
  has SourceField => (is => 'ro', isa => 'Str');
}
1;
