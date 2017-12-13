package Paws::WorkMail;
  use Moose;
  sub service { 'workmail' }
  sub version { '2017-10-01' }
  sub target_prefix { 'WorkMailService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateDelegateToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::AssociateDelegateToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateMemberToGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::AssociateMemberToGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterFromWorkMail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeregisterFromWorkMail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDelegateFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DisassociateDelegateFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMemberFromGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DisassociateMemberFromGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListGroupMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListOrganizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceDelegates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListResourceDelegates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterToWorkMail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::RegisterToWorkMail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ResetPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePrimaryEmailAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdatePrimaryEmailAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateDelegateToResource AssociateMemberToGroup CreateAlias CreateGroup CreateResource CreateUser DeleteAlias DeleteGroup DeleteResource DeleteUser DeregisterFromWorkMail DescribeGroup DescribeOrganization DescribeResource DescribeUser DisassociateDelegateFromResource DisassociateMemberFromGroup ListAliases ListGroupMembers ListGroups ListOrganizations ListResourceDelegates ListResources ListUsers RegisterToWorkMail ResetPassword UpdatePrimaryEmailAddress UpdateResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail - Perl Interface to AWS Amazon WorkMail

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkMail');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon WorkMail is a secure, managed business email and calendaring
service with support for existing desktop and mobile email clients. You
can access your email, contacts, and calendars using Microsoft Outlook,
your browser, or their native iOS and Android email applications. You
can integrate Amazon WorkMail with your existing corporate directory
and control both the keys that encrypt your data and the location in
which your data is stored.

The Amazon WorkMail API is designed for the following scenarios:

=over

=item *

Listing and describing organizations

=back

=over

=item *

Managing users

=back

=over

=item *

Managing groups

=back

=over

=item *

Managing resources

=back

All Amazon WorkMail API actions are Amazon-authenticated and
certificate-signed. They not only require the use of the AWS SDK, but
also allow for the exclusive use of IAM users and roles to help
facilitate access, trust, and permission policies. By creating a role
and allowing an IAM user to access the Amazon WorkMail site, the IAM
user gains full administrative visibility into the entire Amazon
WorkMail organization (or as set in the IAM policy). This includes, but
is not limited to, the ability to create, update, and delete users,
groups, and resources. This allows developers to perform the scenarios
listed above, as well as give users the ability to grant access on a
selective basis using the IAM model.

=head1 METHODS

=head2 AssociateDelegateToResource(EntityId => Str, OrganizationId => Str, ResourceId => Str)

Each argument is described in detail in: L<Paws::WorkMail::AssociateDelegateToResource>

Returns: a L<Paws::WorkMail::AssociateDelegateToResourceResponse> instance

Adds a member to the resource's set of delegates.


=head2 AssociateMemberToGroup(GroupId => Str, MemberId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::AssociateMemberToGroup>

Returns: a L<Paws::WorkMail::AssociateMemberToGroupResponse> instance

Adds a member to the group's set.


=head2 CreateAlias(Alias => Str, EntityId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::CreateAlias>

Returns: a L<Paws::WorkMail::CreateAliasResponse> instance

Adds an alias to the set of a given member of Amazon WorkMail.


=head2 CreateGroup(Name => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::CreateGroup>

Returns: a L<Paws::WorkMail::CreateGroupResponse> instance

Creates a group that can be used in Amazon WorkMail by calling the
RegisterToWorkMail operation.


=head2 CreateResource(Name => Str, OrganizationId => Str, Type => Str)

Each argument is described in detail in: L<Paws::WorkMail::CreateResource>

Returns: a L<Paws::WorkMail::CreateResourceResponse> instance

Creates a new Amazon WorkMail resource. The available types are
equipment and room.


=head2 CreateUser(DisplayName => Str, Name => Str, OrganizationId => Str, Password => Str)

Each argument is described in detail in: L<Paws::WorkMail::CreateUser>

Returns: a L<Paws::WorkMail::CreateUserResponse> instance

Creates a user who can be used in Amazon WorkMail by calling the
RegisterToWorkMail operation.


=head2 DeleteAlias(Alias => Str, EntityId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DeleteAlias>

Returns: a L<Paws::WorkMail::DeleteAliasResponse> instance

Remove the alias from a set of aliases for a given user.


=head2 DeleteGroup(GroupId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DeleteGroup>

Returns: a L<Paws::WorkMail::DeleteGroupResponse> instance

Deletes a group from Amazon WorkMail.


=head2 DeleteResource(OrganizationId => Str, ResourceId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DeleteResource>

Returns: a L<Paws::WorkMail::DeleteResourceResponse> instance

Deletes the specified resource.


=head2 DeleteUser(OrganizationId => Str, UserId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DeleteUser>

Returns: a L<Paws::WorkMail::DeleteUserResponse> instance

Deletes a user from Amazon WorkMail and all subsequent systems. The
action can't be undone. The mailbox is kept as-is for a minimum of 30
days, without any means to restore it.


=head2 DeregisterFromWorkMail(EntityId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DeregisterFromWorkMail>

Returns: a L<Paws::WorkMail::DeregisterFromWorkMailResponse> instance

Mark a user, group, or resource as no longer used in Amazon WorkMail.
This action disassociates the mailbox and schedules it for clean-up.
Amazon WorkMail keeps mailboxes for 30 days before they are permanently
removed. The functionality in the console is I<Disable>.


=head2 DescribeGroup(GroupId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DescribeGroup>

Returns: a L<Paws::WorkMail::DescribeGroupResponse> instance

Returns the data available for the group.


=head2 DescribeOrganization(OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DescribeOrganization>

Returns: a L<Paws::WorkMail::DescribeOrganizationResponse> instance

Provides more information regarding a given organization based on its
identifier.


=head2 DescribeResource(OrganizationId => Str, ResourceId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DescribeResource>

Returns: a L<Paws::WorkMail::DescribeResourceResponse> instance

Returns the data available for the resource.


=head2 DescribeUser(OrganizationId => Str, UserId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DescribeUser>

Returns: a L<Paws::WorkMail::DescribeUserResponse> instance

Provides information regarding the user.


=head2 DisassociateDelegateFromResource(EntityId => Str, OrganizationId => Str, ResourceId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DisassociateDelegateFromResource>

Returns: a L<Paws::WorkMail::DisassociateDelegateFromResourceResponse> instance

Removes a member from the resource's set of delegates.


=head2 DisassociateMemberFromGroup(GroupId => Str, MemberId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::DisassociateMemberFromGroup>

Returns: a L<Paws::WorkMail::DisassociateMemberFromGroupResponse> instance

Removes a member from a group.


=head2 ListAliases(EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::WorkMail::ListAliases>

Returns: a L<Paws::WorkMail::ListAliasesResponse> instance

Creates a paginated call to list the aliases associated with a given
entity.


=head2 ListGroupMembers(GroupId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::WorkMail::ListGroupMembers>

Returns: a L<Paws::WorkMail::ListGroupMembersResponse> instance

Returns an overview of the members of a group.


=head2 ListGroups(OrganizationId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::WorkMail::ListGroups>

Returns: a L<Paws::WorkMail::ListGroupsResponse> instance

Returns summaries of the organization's groups.


=head2 ListOrganizations([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::WorkMail::ListOrganizations>

Returns: a L<Paws::WorkMail::ListOrganizationsResponse> instance

Returns summaries of the customer's non-deleted organizations.


=head2 ListResourceDelegates(OrganizationId => Str, ResourceId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::WorkMail::ListResourceDelegates>

Returns: a L<Paws::WorkMail::ListResourceDelegatesResponse> instance

Lists the delegates associated with a resource. Users and groups can be
resource delegates and answer requests on behalf of the resource.


=head2 ListResources(OrganizationId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::WorkMail::ListResources>

Returns: a L<Paws::WorkMail::ListResourcesResponse> instance

Returns summaries of the organization's resources.


=head2 ListUsers(OrganizationId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::WorkMail::ListUsers>

Returns: a L<Paws::WorkMail::ListUsersResponse> instance

Returns summaries of the organization's users.


=head2 RegisterToWorkMail(Email => Str, EntityId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::RegisterToWorkMail>

Returns: a L<Paws::WorkMail::RegisterToWorkMailResponse> instance

Registers an existing and disabled user, group, or resource/entity for
Amazon WorkMail use by associating a mailbox and calendaring
capabilities. It performs no change if the entity is enabled and fails
if the entity is deleted. This operation results in the accumulation of
costs. For more information, see Pricing
(http://aws.amazon.com/workmail/pricing). The equivalent console
functionality for this operation is I<Enable>. Users can either be
created by calling the CreateUser API or they can be synchronized from
your directory. For more information, see DeregisterFromWorkMail.


=head2 ResetPassword(OrganizationId => Str, Password => Str, UserId => Str)

Each argument is described in detail in: L<Paws::WorkMail::ResetPassword>

Returns: a L<Paws::WorkMail::ResetPasswordResponse> instance

Allows the administrator to reset the password for a user.


=head2 UpdatePrimaryEmailAddress(Email => Str, EntityId => Str, OrganizationId => Str)

Each argument is described in detail in: L<Paws::WorkMail::UpdatePrimaryEmailAddress>

Returns: a L<Paws::WorkMail::UpdatePrimaryEmailAddressResponse> instance

Updates the primary email for an entity. The current email is moved
into the list of aliases (or swapped between an existing alias and the
current primary email) and the email provided in the input is promoted
as the primary.


=head2 UpdateResource(OrganizationId => Str, ResourceId => Str, [BookingOptions => L<Paws::WorkMail::BookingOptions>, Name => Str])

Each argument is described in detail in: L<Paws::WorkMail::UpdateResource>

Returns: a L<Paws::WorkMail::UpdateResourceResponse> instance

Updates data for the resource. It must be preceded by a describe call
in order to have the latest information. The dataset in the request
should be the one expected when performing another describe call.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

