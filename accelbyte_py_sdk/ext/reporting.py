# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Reporting Service (0.1.23)

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

from ..api.reporting.models import RestapiActionApiRequest
from ..api.reporting.models import RestapiActionApiResponse
from ..api.reporting.models import RestapiActionListApiResponse
from ..api.reporting.models import RestapiAdminAllReasonsResponse
from ..api.reporting.models import RestapiAdminReasonListResponse
from ..api.reporting.models import RestapiAdminReasonResponse
from ..api.reporting.models import RestapiBanAccountActionRequest
from ..api.reporting.models import RestapiBanAccountActionResponse
from ..api.reporting.models import RestapiCategoryLimit
from ..api.reporting.models import RestapiConfigResponse
from ..api.reporting.models import RestapiCreateReasonGroupRequest
from ..api.reporting.models import RestapiCreateReasonRequest
from ..api.reporting.models import RestapiErrorResponse
from ..api.reporting.models import RestapiExtensionCategoryApiRequest
from ..api.reporting.models import RestapiExtensionCategoryApiResponse
from ..api.reporting.models import RestapiExtensionCategoryListApiResponse
from ..api.reporting.models import RestapiModerationRuleActionsRequest
from ..api.reporting.models import RestapiModerationRuleActionsResponse
from ..api.reporting.models import RestapiModerationRuleActiveRequest
from ..api.reporting.models import RestapiModerationRuleRequest
from ..api.reporting.models import RestapiModerationRuleResponse
from ..api.reporting.models import RestapiModerationRulesList
from ..api.reporting.models import RestapiPagination
from ..api.reporting.models import RestapiPublicReasonGroupResponse
from ..api.reporting.models import RestapiPublicReasonListResponse
from ..api.reporting.models import RestapiPublicReasonResponse
from ..api.reporting.models import RestapiReasonGroupListResponse
from ..api.reporting.models import RestapiReasonGroupResponse
from ..api.reporting.models import RestapiReportListResponse
from ..api.reporting.models import RestapiReportResponse
from ..api.reporting.models import RestapiReportingLimit
from ..api.reporting.models import RestapiSubmitReportRequest
from ..api.reporting.models import RestapiSubmitReportResponse
from ..api.reporting.models import RestapiTicketListResponse
from ..api.reporting.models import RestapiTicketResponse
from ..api.reporting.models import RestapiTicketStatisticResponse
from ..api.reporting.models import RestapiUnusedReasonListResponse
from ..api.reporting.models import RestapiUpdateReasonGroupRequest
from ..api.reporting.models import RestapiUpdateTicketResolutionsRequest


def create_restapi_action_api_request_example() -> RestapiActionApiRequest:
    instance = RestapiActionApiRequest()
    instance.action_id = randomize()
    instance.action_name = randomize()
    instance.event_name = randomize()
    return instance


def create_restapi_action_api_response_example() -> RestapiActionApiResponse:
    instance = RestapiActionApiResponse()
    instance.action_id = randomize()
    instance.action_name = randomize()
    instance.event_name = randomize()
    return instance


def create_restapi_action_list_api_response_example() -> RestapiActionListApiResponse:
    instance = RestapiActionListApiResponse()
    instance.data = [create_restapi_action_api_response_example()]
    return instance


def create_restapi_admin_all_reasons_response_example() -> (
    RestapiAdminAllReasonsResponse
):
    instance = RestapiAdminAllReasonsResponse()
    instance.data = [create_restapi_public_reason_response_example()]
    return instance


def create_restapi_admin_reason_list_response_example() -> (
    RestapiAdminReasonListResponse
):
    instance = RestapiAdminReasonListResponse()
    instance.data = [create_restapi_admin_reason_response_example()]
    instance.paging = create_restapi_pagination_example()
    return instance


def create_restapi_admin_reason_response_example() -> RestapiAdminReasonResponse:
    instance = RestapiAdminReasonResponse()
    instance.created_at = randomize()
    instance.description = randomize()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.title = randomize()
    instance.updated_at = randomize()
    instance.groups = [create_restapi_public_reason_group_response_example()]
    return instance


def create_restapi_ban_account_action_request_example() -> (
    RestapiBanAccountActionRequest
):
    instance = RestapiBanAccountActionRequest()
    instance.duration = randomize("int", min_val=1, max_val=1000)
    instance.reason = randomize()
    instance.skip_notif = randomize("bool")
    instance.type_ = randomize()
    instance.comment = randomize()
    return instance


def create_restapi_ban_account_action_response_example() -> (
    RestapiBanAccountActionResponse
):
    instance = RestapiBanAccountActionResponse()
    instance.duration = randomize("int", min_val=1, max_val=1000)
    instance.reason = randomize()
    instance.skip_notif = randomize("bool")
    instance.type_ = randomize()
    instance.comment = randomize()
    return instance


def create_restapi_category_limit_example() -> RestapiCategoryLimit:
    instance = RestapiCategoryLimit()
    instance.max_report_per_ticket = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.extension_category = randomize()
    return instance


def create_restapi_config_response_example() -> RestapiConfigResponse:
    instance = RestapiConfigResponse()
    instance.namespace = randomize("slug")
    instance.reporting_limit = create_restapi_reporting_limit_example()
    instance.updated_at = randomize("date")
    return instance


def create_restapi_create_reason_group_request_example() -> (
    RestapiCreateReasonGroupRequest
):
    instance = RestapiCreateReasonGroupRequest()
    instance.title = randomize()
    instance.reason_ids = [randomize()]
    return instance


def create_restapi_create_reason_request_example() -> RestapiCreateReasonRequest:
    instance = RestapiCreateReasonRequest()
    instance.description = randomize()
    instance.group_ids = [randomize()]
    instance.title = randomize()
    return instance


def create_restapi_error_response_example() -> RestapiErrorResponse:
    instance = RestapiErrorResponse()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_restapi_extension_category_api_request_example() -> (
    RestapiExtensionCategoryApiRequest
):
    instance = RestapiExtensionCategoryApiRequest()
    instance.extension_category = randomize()
    instance.extension_category_name = randomize()
    instance.service_source = randomize()
    return instance


def create_restapi_extension_category_api_response_example() -> (
    RestapiExtensionCategoryApiResponse
):
    instance = RestapiExtensionCategoryApiResponse()
    instance.extension_category = randomize()
    instance.extension_category_name = randomize()
    instance.service_source = randomize()
    return instance


def create_restapi_extension_category_list_api_response_example() -> (
    RestapiExtensionCategoryListApiResponse
):
    instance = RestapiExtensionCategoryListApiResponse()
    instance.data = [create_restapi_extension_category_api_response_example()]
    return instance


def create_restapi_moderation_rule_actions_request_example() -> (
    RestapiModerationRuleActionsRequest
):
    instance = RestapiModerationRuleActionsRequest()
    instance.ban_account = create_restapi_ban_account_action_request_example()
    instance.delete_chat = randomize("bool")
    instance.extension_action_ids = [randomize()]
    instance.hide_content = randomize("bool")
    return instance


def create_restapi_moderation_rule_actions_response_example() -> (
    RestapiModerationRuleActionsResponse
):
    instance = RestapiModerationRuleActionsResponse()
    instance.ban_account = create_restapi_ban_account_action_response_example()
    instance.delete_chat = randomize("bool")
    instance.extension_action_ids = [randomize()]
    instance.hide_content = randomize("bool")
    return instance


def create_restapi_moderation_rule_active_request_example() -> (
    RestapiModerationRuleActiveRequest
):
    instance = RestapiModerationRuleActiveRequest()
    instance.active = randomize("bool")
    return instance


def create_restapi_moderation_rule_request_example() -> RestapiModerationRuleRequest:
    instance = RestapiModerationRuleRequest()
    instance.active = randomize("bool")
    instance.category = randomize()
    instance.reason = randomize()
    instance.threshold = randomize("int", min_val=1, max_val=1000)
    instance.action = randomize()
    instance.actions = create_restapi_moderation_rule_actions_request_example()
    instance.extension_category = randomize()
    return instance


def create_restapi_moderation_rule_response_example() -> RestapiModerationRuleResponse:
    instance = RestapiModerationRuleResponse()
    instance.actions = create_restapi_moderation_rule_actions_response_example()
    instance.active = randomize("bool")
    instance.category = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.reason = randomize()
    instance.threshold = randomize("int", min_val=1, max_val=1000)
    instance.action = randomize()
    instance.extension_category = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_restapi_moderation_rules_list_example() -> RestapiModerationRulesList:
    instance = RestapiModerationRulesList()
    instance.data = [create_restapi_moderation_rule_response_example()]
    instance.paging = create_restapi_pagination_example()
    return instance


def create_restapi_pagination_example() -> RestapiPagination:
    instance = RestapiPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_restapi_public_reason_group_response_example() -> (
    RestapiPublicReasonGroupResponse
):
    instance = RestapiPublicReasonGroupResponse()
    instance.id_ = randomize()
    instance.title = randomize()
    return instance


def create_restapi_public_reason_list_response_example() -> (
    RestapiPublicReasonListResponse
):
    instance = RestapiPublicReasonListResponse()
    instance.data = [create_restapi_public_reason_response_example()]
    instance.paging = create_restapi_pagination_example()
    return instance


def create_restapi_public_reason_response_example() -> RestapiPublicReasonResponse:
    instance = RestapiPublicReasonResponse()
    instance.description = randomize()
    instance.title = randomize()
    return instance


def create_restapi_reason_group_list_response_example() -> (
    RestapiReasonGroupListResponse
):
    instance = RestapiReasonGroupListResponse()
    instance.data = [create_restapi_public_reason_group_response_example()]
    instance.paging = create_restapi_pagination_example()
    return instance


def create_restapi_reason_group_response_example() -> RestapiReasonGroupResponse:
    instance = RestapiReasonGroupResponse()
    instance.id_ = randomize()
    instance.title = randomize()
    instance.reasons = [create_restapi_admin_reason_response_example()]
    return instance


def create_restapi_report_list_response_example() -> RestapiReportListResponse:
    instance = RestapiReportListResponse()
    instance.data = [create_restapi_report_response_example()]
    instance.paging = create_restapi_pagination_example()
    return instance


def create_restapi_report_response_example() -> RestapiReportResponse:
    instance = RestapiReportResponse()
    instance.additional_info = {randomize(): randomize()}
    instance.category = randomize()
    instance.comment = randomize()
    instance.created_at = randomize()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.object_id = randomize()
    instance.object_type = randomize()
    instance.reason = randomize()
    instance.reporter_id = randomize()
    instance.ticket_id = randomize()
    instance.updated_at = randomize()
    instance.user_id = randomize("uid")
    instance.extension_category = randomize()
    return instance


def create_restapi_reporting_limit_example() -> RestapiReportingLimit:
    instance = RestapiReportingLimit()
    instance.category_limits = [create_restapi_category_limit_example()]
    instance.time_interval = randomize("int", min_val=1, max_val=1000)
    instance.user_max_report_per_time_interval = randomize(
        "int", min_val=1, max_val=1000
    )
    return instance


def create_restapi_submit_report_request_example() -> RestapiSubmitReportRequest:
    instance = RestapiSubmitReportRequest()
    instance.category = randomize()
    instance.reason = randomize()
    instance.user_id = randomize("uid")
    instance.additional_info = {randomize(): randomize()}
    instance.comment = randomize()
    instance.extension_category = randomize()
    instance.object_id = randomize()
    instance.object_type = randomize()
    return instance


def create_restapi_submit_report_response_example() -> RestapiSubmitReportResponse:
    instance = RestapiSubmitReportResponse()
    instance.category = randomize()
    instance.created_at = randomize()
    instance.namespace = randomize("slug")
    instance.object_id = randomize()
    instance.object_type = randomize()
    instance.status = randomize()
    instance.ticket_id = randomize()
    instance.updated_at = randomize()
    instance.user_id = randomize("uid")
    instance.extension_category = randomize()
    return instance


def create_restapi_ticket_list_response_example() -> RestapiTicketListResponse:
    instance = RestapiTicketListResponse()
    instance.data = [create_restapi_ticket_response_example()]
    instance.paging = create_restapi_pagination_example()
    return instance


def create_restapi_ticket_response_example() -> RestapiTicketResponse:
    instance = RestapiTicketResponse()
    instance.category = randomize()
    instance.created_at = randomize()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.notes = randomize()
    instance.object_id = randomize()
    instance.object_type = randomize()
    instance.reports_count = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.updated_at = randomize()
    instance.user_id = randomize("uid")
    instance.extension_category = randomize()
    return instance


def create_restapi_ticket_statistic_response_example() -> (
    RestapiTicketStatisticResponse
):
    instance = RestapiTicketStatisticResponse()
    instance.moderated_count = randomize("int", min_val=1, max_val=1000)
    instance.open_count = randomize("int", min_val=1, max_val=1000)
    instance.total_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_restapi_unused_reason_list_response_example() -> (
    RestapiUnusedReasonListResponse
):
    instance = RestapiUnusedReasonListResponse()
    instance.reasons = [create_restapi_public_reason_response_example()]
    return instance


def create_restapi_update_reason_group_request_example() -> (
    RestapiUpdateReasonGroupRequest
):
    instance = RestapiUpdateReasonGroupRequest()
    instance.title = randomize()
    instance.reason_ids = [randomize()]
    return instance


def create_restapi_update_ticket_resolutions_request_example() -> (
    RestapiUpdateTicketResolutionsRequest
):
    instance = RestapiUpdateTicketResolutionsRequest()
    instance.notes = randomize()
    instance.status = randomize()
    return instance
