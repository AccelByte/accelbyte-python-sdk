[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-group-service Index (2.11.1)


## Operations

### Configuration
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /group/v1/admin/namespaces/{namespace}/configuration | POST | createGroupConfigurationAdminV1 | [CreateGroupConfigurationAdminV1](../accelbyte_py_sdk/api/group/operations/configuration/create_group_configurat_f2dcd2.py) | [create_group_configuration_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_configuration.py) |
| /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction} | DELETE | deleteGroupConfigurationGlobalRuleAdminV1 | [DeleteGroupConfigurationGlobalRuleAdminV1](../accelbyte_py_sdk/api/group/operations/configuration/delete_group_configurat_db1475.py) | [delete_group_configuration_global_rule_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_configuration.py) |
| /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode} | DELETE | deleteGroupConfigurationV1 | [DeleteGroupConfigurationV1](../accelbyte_py_sdk/api/group/operations/configuration/delete_group_configuration_v1.py) | [delete_group_configuration_v1](../accelbyte_py_sdk/api/group/wrappers/_configuration.py) |
| /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode} | GET | getGroupConfigurationAdminV1 | [GetGroupConfigurationAdminV1](../accelbyte_py_sdk/api/group/operations/configuration/get_group_configuration_f4178c.py) | [get_group_configuration_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_configuration.py) |
| /group/v1/admin/namespaces/{namespace}/configuration/initiate | POST | initiateGroupConfigurationAdminV1 | [InitiateGroupConfigurationAdminV1](../accelbyte_py_sdk/api/group/operations/configuration/initiate_group_configur_384fb1.py) | [initiate_group_configuration_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_configuration.py) |
| /group/v1/admin/namespaces/{namespace}/configuration | GET | listGroupConfigurationAdminV1 | [ListGroupConfigurationAdminV1](../accelbyte_py_sdk/api/group/operations/configuration/list_group_configuratio_ada77c.py) | [list_group_configuration_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_configuration.py) |
| /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode} | PATCH | updateGroupConfigurationAdminV1 | [UpdateGroupConfigurationAdminV1](../accelbyte_py_sdk/api/group/operations/configuration/update_group_configurat_745686.py) | [update_group_configuration_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_configuration.py) |
| /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction} | PUT | updateGroupConfigurationGlobalRuleAdminV1 | [UpdateGroupConfigurationGlobalRuleAdminV1](../accelbyte_py_sdk/api/group/operations/configuration/update_group_configurat_3473ca.py) | [update_group_configuration_global_rule_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_configuration.py) |

### Group
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /group/v1/public/namespaces/{namespace}/groups | POST | createNewGroupPublicV1 | [CreateNewGroupPublicV1](../accelbyte_py_sdk/api/group/operations/group/create_new_group_public_v1.py) | [create_new_group_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/admin/namespaces/{namespace}/groups/{groupId} | DELETE | deleteGroupAdminV1 | [DeleteGroupAdminV1](../accelbyte_py_sdk/api/group/operations/group/delete_group_admin_v1.py) | [delete_group_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction} | DELETE | deleteGroupPredefinedRulePublicV1 | [DeleteGroupPredefinedRulePublicV1](../accelbyte_py_sdk/api/group/operations/group/delete_group_predefined_dbecca.py) | [delete_group_predefined_rule_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId} | DELETE | deleteGroupPublicV1 | [DeleteGroupPublicV1](../accelbyte_py_sdk/api/group/operations/group/delete_group_public_v1.py) | [delete_group_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/admin/namespaces/{namespace}/groups | GET | getGroupListAdminV1 | [GetGroupListAdminV1](../accelbyte_py_sdk/api/group/operations/group/get_group_list_admin_v1.py) | [get_group_list_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups | GET | getGroupListPublicV1 | [GetGroupListPublicV1](../accelbyte_py_sdk/api/group/operations/group/get_group_list_public_v1.py) | [get_group_list_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/admin/namespaces/{namespace}/groups/{groupId} | GET | getSingleGroupAdminV1 | [GetSingleGroupAdminV1](../accelbyte_py_sdk/api/group/operations/group/get_single_group_admin_v1.py) | [get_single_group_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId} | GET | getSingleGroupPublicV1 | [GetSingleGroupPublicV1](../accelbyte_py_sdk/api/group/operations/group/get_single_group_public_v1.py) | [get_single_group_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom | PUT | updateGroupCustomAttributesPublicV1 | [UpdateGroupCustomAttributesPublicV1](../accelbyte_py_sdk/api/group/operations/group/update_group_custom_att_c48713.py) | [update_group_custom_attributes_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom | PUT | updateGroupCustomRulePublicV1 | [UpdateGroupCustomRulePublicV1](../accelbyte_py_sdk/api/group/operations/group/update_group_custom_rul_0b1934.py) | [update_group_custom_rule_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction} | PUT | updateGroupPredefinedRulePublicV1 | [UpdateGroupPredefinedRulePublicV1](../accelbyte_py_sdk/api/group/operations/group/update_group_predefined_94da96.py) | [update_group_predefined_rule_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId} | PATCH | updatePatchSingleGroupPublicV1 | [UpdatePatchSingleGroupPublicV1](../accelbyte_py_sdk/api/group/operations/group/update_patch_single_gro_ce5ae8.py) | [update_patch_single_group_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId} | PUT | updateSingleGroupV1 | [UpdateSingleGroupV1](../accelbyte_py_sdk/api/group/operations/group/update_single_group_v1.py) | [update_single_group_v1](../accelbyte_py_sdk/api/group/wrappers/_group.py) |

### Group Member
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept | POST | acceptGroupInvitationPublicV1 | [AcceptGroupInvitationPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/accept_group_invitation_27bb3d.py) | [accept_group_invitation_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept | POST | acceptGroupJoinRequestPublicV1 | [AcceptGroupJoinRequestPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/accept_group_join_reque_5995a4.py) | [accept_group_join_request_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel | POST | CancelGroupJoinRequestV1 | [CancelGroupJoinRequestV1](../accelbyte_py_sdk/api/group/operations/group_member/cancel_group_join_request_v1.py) | [cancel_group_join_request_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/admin/namespaces/{namespace}/groups/{groupId}/members | GET | getGroupMembersListAdminV1 | [GetGroupMembersListAdminV1](../accelbyte_py_sdk/api/group/operations/group_member/get_group_members_list__2e05f5.py) | [get_group_members_list_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/members | GET | getGroupMembersListPublicV1 | [GetGroupMembersListPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/get_group_members_list__b75ca5.py) | [get_group_members_list_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/users/{userId} | GET | getUserGroupInformationPublicV1 | [GetUserGroupInformationPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/get_user_group_informat_51aafe.py) | [get_user_group_information_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/users/{userId}/invite | POST | inviteGroupPublicV1 | [InviteGroupPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/invite_group_public_v1.py) | [invite_group_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/join | POST | JoinGroupV1 | [JoinGroupV1](../accelbyte_py_sdk/api/group/operations/group_member/join_group_v1.py) | [join_group_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/users/{userId}/kick | POST | kickGroupMemberPublicV1 | [KickGroupMemberPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/kick_group_member_public_v1.py) | [kick_group_member_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/leave | POST | leaveGroupPublicV1 | [LeaveGroupPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/leave_group_public_v1.py) | [leave_group_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject | POST | rejectGroupInvitationPublicV1 | [RejectGroupInvitationPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/reject_group_invitation_c6a225.py) | [reject_group_invitation_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |
| /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject | POST | rejectGroupJoinRequestPublicV1 | [RejectGroupJoinRequestPublicV1](../accelbyte_py_sdk/api/group/operations/group_member/reject_group_join_reque_85b3af.py) | [reject_group_join_request_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_member.py) |

### Group Roles
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /group/v1/admin/namespaces/{namespace}/roles | POST | createMemberRoleAdminV1 | [CreateMemberRoleAdminV1](../accelbyte_py_sdk/api/group/operations/group_roles/create_member_role_admin_v1.py) | [create_member_role_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |
| /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId} | DELETE | deleteMemberRoleAdminV1 | [DeleteMemberRoleAdminV1](../accelbyte_py_sdk/api/group/operations/group_roles/delete_member_role_admin_v1.py) | [delete_member_role_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |
| /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members | DELETE | deleteMemberRolePublicV1 | [DeleteMemberRolePublicV1](../accelbyte_py_sdk/api/group/operations/group_roles/delete_member_role_public_v1.py) | [delete_member_role_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |
| /group/v1/admin/namespaces/{namespace}/roles | GET | getMemberRolesListAdminV1 | [GetMemberRolesListAdminV1](../accelbyte_py_sdk/api/group/operations/group_roles/get_member_roles_list_admin_v1.py) | [get_member_roles_list_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |
| /group/v1/public/namespaces/{namespace}/roles | GET | getMemberRolesListPublicV1 | [GetMemberRolesListPublicV1](../accelbyte_py_sdk/api/group/operations/group_roles/get_member_roles_list_p_5c76d5.py) | [get_member_roles_list_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |
| /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId} | GET | getSingleMemberRoleAdminV1 | [GetSingleMemberRoleAdminV1](../accelbyte_py_sdk/api/group/operations/group_roles/get_single_member_role__4d5402.py) | [get_single_member_role_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |
| /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId} | PATCH | updateMemberRoleAdminV1 | [UpdateMemberRoleAdminV1](../accelbyte_py_sdk/api/group/operations/group_roles/update_member_role_admin_v1.py) | [update_member_role_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |
| /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions | PUT | updateMemberRolePermissionAdminV1 | [UpdateMemberRolePermissionAdminV1](../accelbyte_py_sdk/api/group/operations/group_roles/update_member_role_perm_09ed62.py) | [update_member_role_permission_admin_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |
| /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members | POST | updateMemberRolePublicV1 | [UpdateMemberRolePublicV1](../accelbyte_py_sdk/api/group/operations/group_roles/update_member_role_public_v1.py) | [update_member_role_public_v1](../accelbyte_py_sdk/api/group/wrappers/_group_roles.py) |

### Member Request
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /group/v1/public/namespaces/{namespace}/users/me/invite/request | GET | getGroupInvitationRequestPublicV1 | [GetGroupInvitationRequestPublicV1](../accelbyte_py_sdk/api/group/operations/member_request/get_group_invitation_re_954909.py) | [get_group_invitation_request_public_v1](../accelbyte_py_sdk/api/group/wrappers/_member_request.py) |
| /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/request | GET | getGroupJoinRequestPublicV1 | [GetGroupJoinRequestPublicV1](../accelbyte_py_sdk/api/group/operations/member_request/get_group_join_request__0b96ac.py) | [get_group_join_request_public_v1](../accelbyte_py_sdk/api/group/wrappers/_member_request.py) |


## Models
| Model | Class |
|---|---|
| models.AssignRoleToMemberRequestV1 | [ModelsAssignRoleToMemberRequestV1](../accelbyte_py_sdk/api/group/models/models_assign_role_to_member_request_v1.py) |
| models.CreateGroupConfigurationRequestV1 | [ModelsCreateGroupConfigurationRequestV1](../accelbyte_py_sdk/api/group/models/models_create_group_configuration_request_v1.py) |
| models.CreateGroupConfigurationResponseV1 | [ModelsCreateGroupConfigurationResponseV1](../accelbyte_py_sdk/api/group/models/models_create_group_configuration_response_v1.py) |
| models.CreateMemberRoleRequestV1 | [ModelsCreateMemberRoleRequestV1](../accelbyte_py_sdk/api/group/models/models_create_member_role_request_v1.py) |
| models.CreateMemberRoleResponseV1 | [ModelsCreateMemberRoleResponseV1](../accelbyte_py_sdk/api/group/models/models_create_member_role_response_v1.py) |
| models.GetGroupConfigurationResponseV1 | [ModelsGetGroupConfigurationResponseV1](../accelbyte_py_sdk/api/group/models/models_get_group_configuration_response_v1.py) |
| models.GetGroupMemberListResponseV1 | [ModelsGetGroupMemberListResponseV1](../accelbyte_py_sdk/api/group/models/models_get_group_member_list_response_v1.py) |
| models.GetGroupsListResponseV1 | [ModelsGetGroupsListResponseV1](../accelbyte_py_sdk/api/group/models/models_get_groups_list_response_v1.py) |
| models.GetMemberRequestsListResponseV1 | [ModelsGetMemberRequestsListResponseV1](../accelbyte_py_sdk/api/group/models/models_get_member_requests_list_response_v1.py) |
| models.GetMemberRoleResponseV1 | [ModelsGetMemberRoleResponseV1](../accelbyte_py_sdk/api/group/models/models_get_member_role_response_v1.py) |
| models.GetMemberRolesListResponseV1 | [ModelsGetMemberRolesListResponseV1](../accelbyte_py_sdk/api/group/models/models_get_member_roles_list_response_v1.py) |
| models.GetUserGroupInformationResponseV1 | [ModelsGetUserGroupInformationResponseV1](../accelbyte_py_sdk/api/group/models/models_get_user_group_information_response_v1.py) |
| models.GroupMember | [ModelsGroupMember](../accelbyte_py_sdk/api/group/models/models_group_member.py) |
| models.GroupResponseV1 | [ModelsGroupResponseV1](../accelbyte_py_sdk/api/group/models/models_group_response_v1.py) |
| models.GroupRule | [ModelsGroupRule](../accelbyte_py_sdk/api/group/models/models_group_rule.py) |
| models.GroupRule.groupCustomRule | [ModelsGroupRuleGroupCustomRule](../accelbyte_py_sdk/api/group/models/models_group_rule_group_custom_rule.py) |
| models.JoinGroupResponseV1 | [ModelsJoinGroupResponseV1](../accelbyte_py_sdk/api/group/models/models_join_group_response_v1.py) |
| models.KickGroupMemberResponseV1 | [ModelsKickGroupMemberResponseV1](../accelbyte_py_sdk/api/group/models/models_kick_group_member_response_v1.py) |
| models.LeaveGroupResponseV1 | [ModelsLeaveGroupResponseV1](../accelbyte_py_sdk/api/group/models/models_leave_group_response_v1.py) |
| models.ListConfigurationResponseV1 | [ModelsListConfigurationResponseV1](../accelbyte_py_sdk/api/group/models/models_list_configuration_response_v1.py) |
| models.MemberRequestGroupResponseV1 | [ModelsMemberRequestGroupResponseV1](../accelbyte_py_sdk/api/group/models/models_member_request_group_response_v1.py) |
| models.MemberRequestResponseV1 | [ModelsMemberRequestResponseV1](../accelbyte_py_sdk/api/group/models/models_member_request_response_v1.py) |
| models.Pagination | [ModelsPagination](../accelbyte_py_sdk/api/group/models/models_pagination.py) |
| models.PublicCreateNewGroupRequestV1 | [ModelsPublicCreateNewGroupRequestV1](../accelbyte_py_sdk/api/group/models/models_public_create_new_group_request_v1.py) |
| models.RemoveRoleFromMemberRequestV1 | [ModelsRemoveRoleFromMemberRequestV1](../accelbyte_py_sdk/api/group/models/models_remove_role_from_member_request_v1.py) |
| models.RolePermission | [ModelsRolePermission](../accelbyte_py_sdk/api/group/models/models_role_permission.py) |
| models.Rule | [ModelsRule](../accelbyte_py_sdk/api/group/models/models_rule.py) |
| models.RuleInformation | [ModelsRuleInformation](../accelbyte_py_sdk/api/group/models/models_rule_information.py) |
| models.UpdateGroupConfigurationGlobalRulesRequestV1 | [ModelsUpdateGroupConfigurationGlobalRulesRequestV1](../accelbyte_py_sdk/api/group/models/models_update_group_configuration_global_rules_request_v1.py) |
| models.UpdateGroupConfigurationRequestV1 | [ModelsUpdateGroupConfigurationRequestV1](../accelbyte_py_sdk/api/group/models/models_update_group_configuration_request_v1.py) |
| models.UpdateGroupConfigurationResponseV1 | [ModelsUpdateGroupConfigurationResponseV1](../accelbyte_py_sdk/api/group/models/models_update_group_configuration_response_v1.py) |
| models.UpdateGroupCustomAttributesRequestV1 | [ModelsUpdateGroupCustomAttributesRequestV1](../accelbyte_py_sdk/api/group/models/models_update_group_custom_attributes_request_v1.py) |
| models.UpdateGroupCustomRuleRequestV1 | [ModelsUpdateGroupCustomRuleRequestV1](../accelbyte_py_sdk/api/group/models/models_update_group_custom_rule_request_v1.py) |
| models.UpdateGroupPredefinedRuleRequestV1 | [ModelsUpdateGroupPredefinedRuleRequestV1](../accelbyte_py_sdk/api/group/models/models_update_group_predefined_rule_request_v1.py) |
| models.UpdateGroupRequestV1 | [ModelsUpdateGroupRequestV1](../accelbyte_py_sdk/api/group/models/models_update_group_request_v1.py) |
| models.UpdateGroupRequestV1.customAttributes | [ModelsUpdateGroupRequestV1CustomAttributes](../accelbyte_py_sdk/api/group/models/models_update_group_request_v1_custom_attributes.py) |
| models.UpdateMemberRolePermissionsRequestV1 | [ModelsUpdateMemberRolePermissionsRequestV1](../accelbyte_py_sdk/api/group/models/models_update_member_role_permissions_request_v1.py) |
| models.UpdateMemberRoleRequestV1 | [ModelsUpdateMemberRoleRequestV1](../accelbyte_py_sdk/api/group/models/models_update_member_role_request_v1.py) |
| models.UpdateMemberRoleResponseV1 | [ModelsUpdateMemberRoleResponseV1](../accelbyte_py_sdk/api/group/models/models_update_member_role_response_v1.py) |
| models.UserInvitationResponseV1 | [ModelsUserInvitationResponseV1](../accelbyte_py_sdk/api/group/models/models_user_invitation_response_v1.py) |
| response.ErrorResponse | [ResponseErrorResponse](../accelbyte_py_sdk/api/group/models/response_error_response.py) |
