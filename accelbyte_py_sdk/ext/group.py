# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Group Service (2.15.0)

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from .utils import randomize

from ..api.group.models import ModelsAssignRoleToMemberRequestV1
from ..api.group.models import ModelsCancelInvitationGroupResponseV2
from ..api.group.models import ModelsCreateGroupConfigurationRequestV1
from ..api.group.models import ModelsCreateGroupConfigurationResponseV1
from ..api.group.models import ModelsCreateMemberRoleRequestV1
from ..api.group.models import ModelsGetGroupConfigurationResponseV1
from ..api.group.models import ModelsGetGroupMemberListResponseV1
from ..api.group.models import ModelsGetGroupsListResponseV1
from ..api.group.models import ModelsGetGroupsResponseV1
from ..api.group.models import ModelsGetMemberRequestsListResponseV1
from ..api.group.models import ModelsGetMemberRolesListResponseV1
from ..api.group.models import ModelsGetUserGroupInformationResponseV1
from ..api.group.models import ModelsGroupMember
from ..api.group.models import ModelsGroupResponseV1
from ..api.group.models import ModelsGroupRule
from ..api.group.models import ModelsGroupRuleGroupCustomRule
from ..api.group.models import ModelsGroupRuleResponseV1
from ..api.group.models import ModelsGroupRuleResponseV1GroupCustomRule
from ..api.group.models import ModelsJoinGroupResponseV1
from ..api.group.models import ModelsKickGroupMemberResponseV1
from ..api.group.models import ModelsLeaveGroupResponseV1
from ..api.group.models import ModelsListConfigurationResponseV1
from ..api.group.models import ModelsMemberRequestGroupResponseV1
from ..api.group.models import ModelsMemberRequestResponseV1
from ..api.group.models import ModelsMemberRoleResponseV1
from ..api.group.models import ModelsPagination
from ..api.group.models import ModelsPublicCreateNewGroupRequestV1
from ..api.group.models import ModelsPublicGetGroupListRequestV2
from ..api.group.models import ModelsRemoveRoleFromMemberRequestV1
from ..api.group.models import ModelsRolePermission
from ..api.group.models import ModelsRule
from ..api.group.models import ModelsRuleInformation
from ..api.group.models import ModelsRuleResponseV1
from ..api.group.models import ModelsUpdateGroupConfigurationGlobalRulesRequestV1
from ..api.group.models import ModelsUpdateGroupConfigurationRequestV1
from ..api.group.models import ModelsUpdateGroupConfigurationResponseV1
from ..api.group.models import ModelsUpdateGroupCustomAttributesRequestV1
from ..api.group.models import ModelsUpdateGroupCustomRuleRequestV1
from ..api.group.models import ModelsUpdateGroupPredefinedRuleRequestV1
from ..api.group.models import ModelsUpdateGroupRequestV1
from ..api.group.models import ModelsUpdateGroupRequestV1CustomAttributes
from ..api.group.models import ModelsUpdateMemberRolePermissionsRequestV1
from ..api.group.models import ModelsUpdateMemberRoleRequestV1
from ..api.group.models import ModelsUserInvitationResponseV1
from ..api.group.models import ResponseErrorResponse


def create_models_assign_role_to_member_request_v1_example() -> (
    ModelsAssignRoleToMemberRequestV1
):
    instance = ModelsAssignRoleToMemberRequestV1()
    instance.user_id = randomize("uid")
    return instance


def create_models_cancel_invitation_group_response_v2_example() -> (
    ModelsCancelInvitationGroupResponseV2
):
    instance = ModelsCancelInvitationGroupResponseV2()
    instance.group_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_create_group_configuration_request_v1_example() -> (
    ModelsCreateGroupConfigurationRequestV1
):
    instance = ModelsCreateGroupConfigurationRequestV1()
    instance.allow_multiple = randomize("bool")
    instance.configuration_code = randomize()
    instance.description = randomize()
    instance.global_rules = [create_models_rule_example()]
    instance.group_admin_role_id = randomize()
    instance.group_max_member = randomize("int", min_val=1, max_val=1000)
    instance.group_member_role_id = randomize()
    instance.name = randomize()
    return instance


def create_models_create_group_configuration_response_v1_example() -> (
    ModelsCreateGroupConfigurationResponseV1
):
    instance = ModelsCreateGroupConfigurationResponseV1()
    instance.allow_multiple = randomize("bool")
    instance.configuration_code = randomize()
    instance.description = randomize()
    instance.global_rules = [create_models_rule_response_v1_example()]
    instance.group_admin_role_id = randomize()
    instance.group_max_member = randomize("int", min_val=1, max_val=1000)
    instance.group_member_role_id = randomize()
    instance.name = randomize()
    return instance


def create_models_create_member_role_request_v1_example() -> (
    ModelsCreateMemberRoleRequestV1
):
    instance = ModelsCreateMemberRoleRequestV1()
    instance.member_role_name = randomize()
    instance.member_role_permissions = [create_models_role_permission_example()]
    return instance


def create_models_get_group_configuration_response_v1_example() -> (
    ModelsGetGroupConfigurationResponseV1
):
    instance = ModelsGetGroupConfigurationResponseV1()
    instance.allow_multiple = randomize("bool")
    instance.configuration_code = randomize()
    instance.description = randomize()
    instance.global_rules = [create_models_rule_response_v1_example()]
    instance.group_admin_role_id = randomize()
    instance.group_max_member = randomize("int", min_val=1, max_val=1000)
    instance.group_member_role_id = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_models_get_group_member_list_response_v1_example() -> (
    ModelsGetGroupMemberListResponseV1
):
    instance = ModelsGetGroupMemberListResponseV1()
    instance.data = [create_models_get_user_group_information_response_v1_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_groups_list_response_v1_example() -> (
    ModelsGetGroupsListResponseV1
):
    instance = ModelsGetGroupsListResponseV1()
    instance.data = [create_models_group_response_v1_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_groups_response_v1_example() -> ModelsGetGroupsResponseV1:
    instance = ModelsGetGroupsResponseV1()
    instance.data = [create_models_group_response_v1_example()]
    return instance


def create_models_get_member_requests_list_response_v1_example() -> (
    ModelsGetMemberRequestsListResponseV1
):
    instance = ModelsGetMemberRequestsListResponseV1()
    instance.data = [create_models_member_request_response_v1_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_member_roles_list_response_v1_example() -> (
    ModelsGetMemberRolesListResponseV1
):
    instance = ModelsGetMemberRolesListResponseV1()
    instance.data = [create_models_member_role_response_v1_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_get_user_group_information_response_v1_example() -> (
    ModelsGetUserGroupInformationResponseV1
):
    instance = ModelsGetUserGroupInformationResponseV1()
    instance.group_id = randomize()
    instance.member_role_id = [randomize()]
    instance.user_id = randomize("uid")
    instance.status = randomize()
    return instance


def create_models_group_member_example() -> ModelsGroupMember:
    instance = ModelsGroupMember()
    instance.member_role_id = [randomize()]
    instance.user_id = randomize("uid")
    return instance


def create_models_group_response_v1_example() -> ModelsGroupResponseV1:
    instance = ModelsGroupResponseV1()
    instance.configuration_code = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.group_description = randomize()
    instance.group_icon = randomize()
    instance.group_id = randomize()
    instance.group_max_member = randomize("int", min_val=1, max_val=1000)
    instance.group_members = [create_models_group_member_example()]
    instance.group_name = randomize()
    instance.group_region = randomize()
    instance.group_rules = create_models_group_rule_response_v1_example()
    instance.group_type = randomize()
    return instance


def create_models_group_rule_example() -> ModelsGroupRule:
    instance = ModelsGroupRule()
    instance.group_custom_rule = create_models_group_rule_group_custom_rule_example()
    instance.group_predefined_rules = [create_models_rule_example()]
    return instance


def create_models_group_rule_group_custom_rule_example() -> (
    ModelsGroupRuleGroupCustomRule
):
    instance = ModelsGroupRuleGroupCustomRule()
    return instance


def create_models_group_rule_response_v1_example() -> ModelsGroupRuleResponseV1:
    instance = ModelsGroupRuleResponseV1()
    instance.group_custom_rule = (
        create_models_group_rule_response_v1_group_custom_rule_example()
    )
    instance.group_predefined_rules = [create_models_rule_response_v1_example()]
    return instance


def create_models_group_rule_response_v1_group_custom_rule_example() -> (
    ModelsGroupRuleResponseV1GroupCustomRule
):
    instance = ModelsGroupRuleResponseV1GroupCustomRule()
    return instance


def create_models_join_group_response_v1_example() -> ModelsJoinGroupResponseV1:
    instance = ModelsJoinGroupResponseV1()
    instance.group_id = randomize()
    instance.status = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_kick_group_member_response_v1_example() -> (
    ModelsKickGroupMemberResponseV1
):
    instance = ModelsKickGroupMemberResponseV1()
    instance.group_id = randomize()
    instance.kicked_user_id = randomize()
    return instance


def create_models_leave_group_response_v1_example() -> ModelsLeaveGroupResponseV1:
    instance = ModelsLeaveGroupResponseV1()
    instance.group_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_list_configuration_response_v1_example() -> (
    ModelsListConfigurationResponseV1
):
    instance = ModelsListConfigurationResponseV1()
    instance.data = [create_models_get_group_configuration_response_v1_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_member_request_group_response_v1_example() -> (
    ModelsMemberRequestGroupResponseV1
):
    instance = ModelsMemberRequestGroupResponseV1()
    instance.group_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_member_request_response_v1_example() -> ModelsMemberRequestResponseV1:
    instance = ModelsMemberRequestResponseV1()
    instance.group_id = randomize()
    instance.request_type = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_member_role_response_v1_example() -> ModelsMemberRoleResponseV1:
    instance = ModelsMemberRoleResponseV1()
    instance.member_role_id = randomize()
    instance.member_role_name = randomize()
    instance.member_role_permissions = [create_models_role_permission_example()]
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_public_create_new_group_request_v1_example() -> (
    ModelsPublicCreateNewGroupRequestV1
):
    instance = ModelsPublicCreateNewGroupRequestV1()
    instance.configuration_code = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.group_description = randomize()
    instance.group_icon = randomize()
    instance.group_max_member = randomize("int", min_val=1, max_val=1000)
    instance.group_name = randomize()
    instance.group_region = randomize()
    instance.group_rules = create_models_group_rule_example()
    instance.group_type = randomize()
    return instance


def create_models_public_get_group_list_request_v2_example() -> (
    ModelsPublicGetGroupListRequestV2
):
    instance = ModelsPublicGetGroupListRequestV2()
    instance.group_i_ds = [randomize()]
    return instance


def create_models_remove_role_from_member_request_v1_example() -> (
    ModelsRemoveRoleFromMemberRequestV1
):
    instance = ModelsRemoveRoleFromMemberRequestV1()
    instance.user_id = randomize("uid")
    return instance


def create_models_role_permission_example() -> ModelsRolePermission:
    instance = ModelsRolePermission()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource_name = randomize()
    return instance


def create_models_rule_example() -> ModelsRule:
    instance = ModelsRule()
    instance.allowed_action = randomize()
    instance.rule_detail = [create_models_rule_information_example()]
    return instance


def create_models_rule_information_example() -> ModelsRuleInformation:
    instance = ModelsRuleInformation()
    instance.rule_attribute = randomize()
    instance.rule_criteria = randomize()
    instance.rule_value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_rule_response_v1_example() -> ModelsRuleResponseV1:
    instance = ModelsRuleResponseV1()
    instance.allowed_action = randomize()
    instance.rule_detail = [create_models_rule_information_example()]
    return instance


def create_models_update_group_configuration_global_rules_request_v1_example() -> (
    ModelsUpdateGroupConfigurationGlobalRulesRequestV1
):
    instance = ModelsUpdateGroupConfigurationGlobalRulesRequestV1()
    instance.rule_detail = [create_models_rule_information_example()]
    return instance


def create_models_update_group_configuration_request_v1_example() -> (
    ModelsUpdateGroupConfigurationRequestV1
):
    instance = ModelsUpdateGroupConfigurationRequestV1()
    instance.description = randomize()
    instance.group_max_member = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    return instance


def create_models_update_group_configuration_response_v1_example() -> (
    ModelsUpdateGroupConfigurationResponseV1
):
    instance = ModelsUpdateGroupConfigurationResponseV1()
    instance.allow_multiple = randomize("bool")
    instance.configuration_code = randomize()
    instance.description = randomize()
    instance.global_rules = [create_models_rule_response_v1_example()]
    instance.group_admin_role_id = randomize()
    instance.group_max_member = randomize("int", min_val=1, max_val=1000)
    instance.group_member_role_id = randomize()
    instance.name = randomize()
    return instance


def create_models_update_group_custom_attributes_request_v1_example() -> (
    ModelsUpdateGroupCustomAttributesRequestV1
):
    instance = ModelsUpdateGroupCustomAttributesRequestV1()
    instance.custom_attributes = {randomize(): randomize()}
    return instance


def create_models_update_group_custom_rule_request_v1_example() -> (
    ModelsUpdateGroupCustomRuleRequestV1
):
    instance = ModelsUpdateGroupCustomRuleRequestV1()
    instance.group_custom_rule = {randomize(): randomize()}
    return instance


def create_models_update_group_predefined_rule_request_v1_example() -> (
    ModelsUpdateGroupPredefinedRuleRequestV1
):
    instance = ModelsUpdateGroupPredefinedRuleRequestV1()
    instance.rule_detail = [create_models_rule_information_example()]
    return instance


def create_models_update_group_request_v1_example() -> ModelsUpdateGroupRequestV1:
    instance = ModelsUpdateGroupRequestV1()
    instance.custom_attributes = (
        create_models_update_group_request_v1_custom_attributes_example()
    )
    instance.group_description = randomize()
    instance.group_icon = randomize()
    instance.group_name = randomize()
    instance.group_region = randomize()
    instance.group_type = randomize()
    return instance


def create_models_update_group_request_v1_custom_attributes_example() -> (
    ModelsUpdateGroupRequestV1CustomAttributes
):
    instance = ModelsUpdateGroupRequestV1CustomAttributes()
    return instance


def create_models_update_member_role_permissions_request_v1_example() -> (
    ModelsUpdateMemberRolePermissionsRequestV1
):
    instance = ModelsUpdateMemberRolePermissionsRequestV1()
    instance.member_role_permissions = [create_models_role_permission_example()]
    return instance


def create_models_update_member_role_request_v1_example() -> (
    ModelsUpdateMemberRoleRequestV1
):
    instance = ModelsUpdateMemberRoleRequestV1()
    instance.member_role_name = randomize()
    return instance


def create_models_user_invitation_response_v1_example() -> (
    ModelsUserInvitationResponseV1
):
    instance = ModelsUserInvitationResponseV1()
    instance.group_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_response_error_response_example() -> ResponseErrorResponse:
    instance = ResponseErrorResponse()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
