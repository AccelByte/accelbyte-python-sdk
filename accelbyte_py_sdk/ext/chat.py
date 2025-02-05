# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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

from ..api.chat.models import ApiAddMemberParams
from ..api.chat.models import ApiCreateNamespaceTopicParams
from ..api.chat.models import ApiCreateTopicParams
from ..api.chat.models import ApiCreateTopicResponse
from ..api.chat.models import ApiMuteUserRequest
from ..api.chat.models import ApiMutedTopicResponse
from ..api.chat.models import ApiSendChatParams
from ..api.chat.models import ApiUnmuteUserRequest
from ..api.chat.models import ApiUpdateTopicParams
from ..api.chat.models import LogAppMessageDeclaration
from ..api.chat.models import LogconfigConfiguration
from ..api.chat.models import MessageActionAddUserToTopicResult
from ..api.chat.models import MessageActionDeleteTopicResult
from ..api.chat.models import ModelsAddInboxCategoryRequest
from ..api.chat.models import ModelsAddInboxCategoryResponse
from ..api.chat.models import ModelsBanTopicMemberParam
from ..api.chat.models import ModelsBanTopicMemberResult
from ..api.chat.models import ModelsCategoryHook
from ..api.chat.models import ModelsChannelTopicResponse
from ..api.chat.models import ModelsChannelTopicSummaryResponse
from ..api.chat.models import ModelsChannelTopicWithPaginationResponse
from ..api.chat.models import ModelsChatMessageResponse
from ..api.chat.models import ModelsChatMessageWithPaginationResponse
from ..api.chat.models import ModelsChatSnapshotMessage
from ..api.chat.models import ModelsChatSnapshots
from ..api.chat.models import ModelsConfig
from ..api.chat.models import ModelsConfigExport
from ..api.chat.models import ModelsConfigList
from ..api.chat.models import ModelsConfigResponse
from ..api.chat.models import ModelsDictionary
from ..api.chat.models import ModelsDictionaryChild
from ..api.chat.models import ModelsDictionaryExport
from ..api.chat.models import ModelsDictionaryExportItem
from ..api.chat.models import ModelsDictionaryGroup
from ..api.chat.models import ModelsDictionaryImportResult
from ..api.chat.models import ModelsDictionaryInsertBulkRequest
from ..api.chat.models import ModelsDictionaryInsertRequest
from ..api.chat.models import ModelsDictionaryQueryResult
from ..api.chat.models import ModelsDictionaryUpdateRequest
from ..api.chat.models import ModelsDictionaryWithChildren
from ..api.chat.models import ModelsDictionaryWordChanges
from ..api.chat.models import ModelsGetInboxCategoriesResponseItem
from ..api.chat.models import ModelsGetInboxMessagesResponse
from ..api.chat.models import ModelsGetInboxMessagesResponseData
from ..api.chat.models import ModelsGetInboxStatsResponse
from ..api.chat.models import ModelsGetInboxUsersResponse
from ..api.chat.models import ModelsImportConfigResponse
from ..api.chat.models import ModelsJSONSchemaType
from ..api.chat.models import ModelsMessageRequest
from ..api.chat.models import ModelsMessageResultWithAttributes
from ..api.chat.models import ModelsMessageStats
from ..api.chat.models import ModelsPagination
from ..api.chat.models import ModelsPublicBanTopicMembersRequest
from ..api.chat.models import ModelsPublicBanTopicMembersResponse
from ..api.chat.models import ModelsPublicConfigResponse
from ..api.chat.models import ModelsPublicUnbanTopicMembersRequest
from ..api.chat.models import ModelsPublicUnbanTopicMembersResponse
from ..api.chat.models import ModelsSaveInboxMessageRequest
from ..api.chat.models import ModelsSaveInboxMessageResponse
from ..api.chat.models import ModelsSendInboxMessageRequest
from ..api.chat.models import ModelsSendInboxMessageResponse
from ..api.chat.models import ModelsTopicInfo
from ..api.chat.models import ModelsTopicLogItem
from ..api.chat.models import ModelsTopicLogWithPaginationResponse
from ..api.chat.models import ModelsTopicMemberResponse
from ..api.chat.models import ModelsTopicMemberWithPaginationResponse
from ..api.chat.models import ModelsTopicResponse
from ..api.chat.models import ModelsUnbanTopicMemberParam
from ..api.chat.models import ModelsUnbanTopicMemberResult
from ..api.chat.models import ModelsUnsendInboxMessageRequest
from ..api.chat.models import ModelsUnsendInboxMessageResponse
from ..api.chat.models import ModelsUpdateInboxCategoryRequest
from ..api.chat.models import ModelsUpdateInboxMessageRequest
from ..api.chat.models import ModelsUserInbox
from ..api.chat.models import ResponseError
from ..api.chat.models import RestapiErrorResponseBody
from ..api.chat.models import TopicInfoMember


def create_api_add_member_params_example() -> ApiAddMemberParams:
    instance = ApiAddMemberParams()
    instance.is_admin = randomize("bool")
    return instance


def create_api_create_namespace_topic_params_example() -> ApiCreateNamespaceTopicParams:
    instance = ApiCreateNamespaceTopicParams()
    instance.description = randomize()
    instance.name = randomize()
    return instance


def create_api_create_topic_params_example() -> ApiCreateTopicParams:
    instance = ApiCreateTopicParams()
    instance.admins = [randomize()]
    instance.description = randomize()
    instance.is_channel = randomize("bool")
    instance.is_joinable = randomize("bool")
    instance.members = [randomize()]
    instance.name = randomize()
    instance.type_ = randomize()
    instance.shard_limit = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_create_topic_response_example() -> ApiCreateTopicResponse:
    instance = ApiCreateTopicResponse()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.created_by = randomize()
    instance.description = randomize()
    instance.is_channel = randomize("bool")
    instance.is_joinable = randomize("bool")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.topic_id = randomize()
    instance.type_ = randomize()
    return instance


def create_api_mute_user_request_example() -> ApiMuteUserRequest:
    instance = ApiMuteUserRequest()
    instance.duration = randomize("int", min_val=1, max_val=1000)
    instance.user_id = randomize("uid")
    return instance


def create_api_muted_topic_response_example() -> ApiMutedTopicResponse:
    instance = ApiMutedTopicResponse()
    instance.expiration_time = randomize("int", min_val=1, max_val=1000)
    instance.remaining_time = randomize("int", min_val=1, max_val=1000)
    instance.topic_id = randomize()
    return instance


def create_api_send_chat_params_example() -> ApiSendChatParams:
    instance = ApiSendChatParams()
    instance.message = randomize()
    return instance


def create_api_unmute_user_request_example() -> ApiUnmuteUserRequest:
    instance = ApiUnmuteUserRequest()
    instance.user_id = randomize("uid")
    return instance


def create_api_update_topic_params_example() -> ApiUpdateTopicParams:
    instance = ApiUpdateTopicParams()
    instance.description = randomize()
    instance.is_joinable = randomize("bool")
    instance.name = randomize()
    return instance


def create_log_app_message_declaration_example() -> LogAppMessageDeclaration:
    instance = LogAppMessageDeclaration()
    instance.attributes = [randomize()]
    instance.code = randomize()
    instance.code_name = randomize()
    instance.section = randomize()
    instance.service = randomize()
    instance.text = randomize()
    return instance


def create_logconfig_configuration_example() -> LogconfigConfiguration:
    instance = LogconfigConfiguration()
    instance.internal_access_log_enabled = randomize("bool")
    instance.log_level = randomize()
    instance.log_level_db = randomize()
    instance.slow_query_threshold = randomize("int", min_val=1, max_val=1000)
    instance.socket_log_enabled = randomize("bool")
    return instance


def create_message_action_add_user_to_topic_result_example() -> (
    MessageActionAddUserToTopicResult
):
    instance = MessageActionAddUserToTopicResult()
    instance.processed = randomize("int", min_val=1, max_val=1000)
    instance.topic_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_message_action_delete_topic_result_example() -> (
    MessageActionDeleteTopicResult
):
    instance = MessageActionDeleteTopicResult()
    instance.processed = randomize("int", min_val=1, max_val=1000)
    instance.topic_id = randomize()
    return instance


def create_models_add_inbox_category_request_example() -> ModelsAddInboxCategoryRequest:
    instance = ModelsAddInboxCategoryRequest()
    instance.enabled = randomize("bool")
    instance.expires_in = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.save_inbox = randomize("bool")
    instance.send_notification = randomize("bool")
    instance.hook = create_models_category_hook_example()
    instance.json_schema = {randomize(): randomize()}
    return instance


def create_models_add_inbox_category_response_example() -> (
    ModelsAddInboxCategoryResponse
):
    instance = ModelsAddInboxCategoryResponse()
    instance.enabled = randomize("bool")
    instance.expires_in = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.save_inbox = randomize("bool")
    instance.send_notification = randomize("bool")
    instance.hook = create_models_category_hook_example()
    instance.json_schema = {randomize(): randomize()}
    return instance


def create_models_ban_topic_member_param_example() -> ModelsBanTopicMemberParam:
    instance = ModelsBanTopicMemberParam()
    instance.user_ids = [randomize()]
    return instance


def create_models_ban_topic_member_result_example() -> ModelsBanTopicMemberResult:
    instance = ModelsBanTopicMemberResult()
    instance.user_ids = [randomize()]
    return instance


def create_models_category_hook_example() -> ModelsCategoryHook:
    instance = ModelsCategoryHook()
    instance.driver = randomize()
    instance.params = {randomize(): randomize()}
    return instance


def create_models_channel_topic_response_example() -> ModelsChannelTopicResponse:
    instance = ModelsChannelTopicResponse()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.created_by = randomize()
    instance.description = randomize()
    instance.is_joinable = randomize("bool")
    instance.message_per_minutes = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.shard_limit = randomize("int", min_val=1, max_val=1000)
    instance.shard_number = randomize("int", min_val=1, max_val=1000)
    instance.topic_id = randomize()
    instance.total_member = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_channel_topic_summary_response_example() -> (
    ModelsChannelTopicSummaryResponse
):
    instance = ModelsChannelTopicSummaryResponse()
    instance.total_channel = randomize("int", min_val=1, max_val=1000)
    instance.total_shard = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_channel_topic_with_pagination_response_example() -> (
    ModelsChannelTopicWithPaginationResponse
):
    instance = ModelsChannelTopicWithPaginationResponse()
    instance.data = [create_models_channel_topic_response_example()]
    instance.paging = create_models_pagination_example()
    instance.total_data = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_chat_message_response_example() -> ModelsChatMessageResponse:
    instance = ModelsChatMessageResponse()
    instance.from_ = randomize()
    instance.id_ = randomize()
    instance.message = randomize()
    instance.topic_id = randomize()
    instance.read_at = randomize("int", min_val=1, max_val=1000)
    instance.received_at = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_chat_message_with_pagination_response_example() -> (
    ModelsChatMessageWithPaginationResponse
):
    instance = ModelsChatMessageWithPaginationResponse()
    instance.data = [create_models_chat_message_response_example()]
    instance.paging = create_models_pagination_example()
    instance.total_data = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_chat_snapshot_message_example() -> ModelsChatSnapshotMessage:
    instance = ModelsChatSnapshotMessage()
    instance.chat_id = randomize()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.message = randomize()
    instance.sender_id = randomize()
    return instance


def create_models_chat_snapshots_example() -> ModelsChatSnapshots:
    instance = ModelsChatSnapshots()
    instance.chat_id = randomize()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.joined_topics = [randomize()]
    instance.messages = [create_models_chat_snapshot_message_example()]
    instance.namespace = randomize("slug")
    instance.sender_id = randomize()
    instance.ticket_id = randomize()
    instance.topic_id = randomize()
    return instance


def create_models_config_example() -> ModelsConfig:
    instance = ModelsConfig()
    instance.chat_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.chat_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.concurrent_users_limit = randomize("int", min_val=1, max_val=1000)
    instance.enable_profanity_filter = randomize("bool")
    instance.filter_app_name = randomize()
    instance.filter_param = randomize()
    instance.filter_type = randomize()
    instance.general_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.general_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.shard_capacity_limit = randomize("int", min_val=1, max_val=1000)
    instance.shard_default_limit = randomize("int", min_val=1, max_val=1000)
    instance.shard_hard_limit = randomize("int", min_val=1, max_val=1000)
    instance.spam_chat_burst = randomize("int", min_val=1, max_val=1000)
    instance.spam_chat_duration = randomize("int", min_val=1, max_val=1000)
    instance.spam_mute_duration = randomize("int", min_val=1, max_val=1000)
    instance.default_dictionary_loaded = randomize("bool")
    instance.enable_clan_chat = randomize("bool")
    instance.enable_manual_topic_creation = randomize("bool")
    instance.enable_pm_send_platform_id = randomize("bool")
    instance.max_chat_message_length = randomize("int", min_val=1, max_val=1000)
    instance.use_default_dictionary = randomize("bool")
    return instance


def create_models_config_export_example() -> ModelsConfigExport:
    instance = ModelsConfigExport()
    instance.chat_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.chat_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.concurrent_users_limit = randomize("int", min_val=1, max_val=1000)
    instance.general_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.general_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.enable_clan_chat = randomize("bool")
    instance.enable_manual_topic_creation = randomize("bool")
    instance.enable_pm_send_platform_id = randomize("bool")
    instance.enable_profanity_filter = randomize("bool")
    instance.filter_app_name = randomize()
    instance.filter_param = randomize()
    instance.filter_type = randomize()
    instance.shard_capacity_limit = randomize("int", min_val=1, max_val=1000)
    instance.shard_default_limit = randomize("int", min_val=1, max_val=1000)
    instance.shard_hard_limit = randomize("int", min_val=1, max_val=1000)
    instance.spam_chat_burst = randomize("int", min_val=1, max_val=1000)
    instance.spam_chat_duration = randomize("int", min_val=1, max_val=1000)
    instance.spam_mute_duration = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_config_list_example() -> ModelsConfigList:
    instance = ModelsConfigList()
    instance.configs = [create_models_config_example()]
    return instance


def create_models_config_response_example() -> ModelsConfigResponse:
    instance = ModelsConfigResponse()
    instance.chat_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.chat_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.concurrent_users_limit = randomize("int", min_val=1, max_val=1000)
    instance.enable_clan_chat = randomize("bool")
    instance.enable_manual_topic_creation = randomize("bool")
    instance.enable_pm_send_platform_id = randomize("bool")
    instance.enable_profanity_filter = randomize("bool")
    instance.filter_app_name = randomize()
    instance.filter_param = randomize()
    instance.filter_type = randomize()
    instance.general_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.general_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.max_chat_message_length = randomize("int", min_val=1, max_val=1000)
    instance.shard_capacity_limit = randomize("int", min_val=1, max_val=1000)
    instance.shard_default_limit = randomize("int", min_val=1, max_val=1000)
    instance.shard_hard_limit = randomize("int", min_val=1, max_val=1000)
    instance.spam_chat_burst = randomize("int", min_val=1, max_val=1000)
    instance.spam_chat_duration = randomize("int", min_val=1, max_val=1000)
    instance.spam_mute_duration = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_dictionary_example() -> ModelsDictionary:
    instance = ModelsDictionary()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.word = randomize()
    instance.word_type = randomize()
    instance.parent_id = randomize()
    return instance


def create_models_dictionary_child_example() -> ModelsDictionaryChild:
    instance = ModelsDictionaryChild()
    instance.id_ = randomize()
    instance.word = randomize()
    return instance


def create_models_dictionary_export_example() -> ModelsDictionaryExport:
    instance = ModelsDictionaryExport()
    instance.dictionaries = [create_models_dictionary_export_item_example()]
    return instance


def create_models_dictionary_export_item_example() -> ModelsDictionaryExportItem:
    instance = ModelsDictionaryExportItem()
    instance.word = randomize()
    instance.false_negative = [randomize()]
    instance.false_positive = [randomize()]
    return instance


def create_models_dictionary_group_example() -> ModelsDictionaryGroup:
    instance = ModelsDictionaryGroup()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    return instance


def create_models_dictionary_import_result_example() -> ModelsDictionaryImportResult:
    instance = ModelsDictionaryImportResult()
    instance.words = create_models_dictionary_word_changes_example()
    return instance


def create_models_dictionary_insert_bulk_request_example() -> (
    ModelsDictionaryInsertBulkRequest
):
    instance = ModelsDictionaryInsertBulkRequest()
    instance.dictionaries = [create_models_dictionary_insert_request_example()]
    return instance


def create_models_dictionary_insert_request_example() -> ModelsDictionaryInsertRequest:
    instance = ModelsDictionaryInsertRequest()
    instance.false_negative = [randomize()]
    instance.false_positive = [randomize()]
    instance.word = randomize()
    instance.word_type = randomize()
    return instance


def create_models_dictionary_query_result_example() -> ModelsDictionaryQueryResult:
    instance = ModelsDictionaryQueryResult()
    instance.data = [create_models_dictionary_with_children_example()]
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_dictionary_update_request_example() -> ModelsDictionaryUpdateRequest:
    instance = ModelsDictionaryUpdateRequest()
    instance.false_negative = [randomize()]
    instance.false_positive = [randomize()]
    instance.word = randomize()
    instance.word_type = randomize()
    return instance


def create_models_dictionary_with_children_example() -> ModelsDictionaryWithChildren:
    instance = ModelsDictionaryWithChildren()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.word = randomize()
    instance.word_type = randomize()
    instance.false_negatives = [create_models_dictionary_child_example()]
    instance.false_positives = [create_models_dictionary_child_example()]
    instance.parent_id = randomize()
    return instance


def create_models_dictionary_word_changes_example() -> ModelsDictionaryWordChanges:
    instance = ModelsDictionaryWordChanges()
    instance.added = [randomize()]
    instance.failed = [randomize()]
    instance.ignored = [randomize()]
    instance.replaced = [randomize()]
    instance.unchanged = [randomize()]
    return instance


def create_models_get_inbox_categories_response_item_example() -> (
    ModelsGetInboxCategoriesResponseItem
):
    instance = ModelsGetInboxCategoriesResponseItem()
    instance.enabled = randomize("bool")
    instance.expires_in = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.save_inbox = randomize("bool")
    instance.send_notification = randomize("bool")
    instance.hook = create_models_category_hook_example()
    instance.json_schema = {randomize(): randomize()}
    return instance


def create_models_get_inbox_messages_response_example() -> (
    ModelsGetInboxMessagesResponse
):
    instance = ModelsGetInboxMessagesResponse()
    instance.data = [create_models_get_inbox_messages_response_data_example()]
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_get_inbox_messages_response_data_example() -> (
    ModelsGetInboxMessagesResponseData
):
    instance = ModelsGetInboxMessagesResponseData()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.expired_at = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.scope = randomize()
    instance.sender_id = randomize()
    instance.status = randomize()
    instance.updated_at = randomize("int", min_val=1, max_val=1000)
    instance.category = randomize()
    instance.message = {randomize(): randomize()}
    instance.user_ids = [randomize()]
    return instance


def create_models_get_inbox_stats_response_example() -> ModelsGetInboxStatsResponse:
    instance = ModelsGetInboxStatsResponse()
    instance.data = [create_models_message_stats_example()]
    return instance


def create_models_get_inbox_users_response_example() -> ModelsGetInboxUsersResponse:
    instance = ModelsGetInboxUsersResponse()
    instance.data = [create_models_user_inbox_example()]
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_import_config_response_example() -> ModelsImportConfigResponse:
    instance = ModelsImportConfigResponse()
    instance.failed_configs = [randomize()]
    instance.ignored_configs = [randomize()]
    instance.new_configs = [randomize()]
    instance.replaced_configs = [randomize()]
    return instance


def create_models_json_schema_type_example() -> ModelsJSONSchemaType:
    instance = ModelsJSONSchemaType()
    return instance


def create_models_message_request_example() -> ModelsMessageRequest:
    instance = ModelsMessageRequest()
    instance.message = randomize()
    instance.timestamp = randomize("int", min_val=1, max_val=1000)
    instance.topic_id = randomize()
    instance.topic_type = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_message_result_with_attributes_example() -> (
    ModelsMessageResultWithAttributes
):
    instance = ModelsMessageResultWithAttributes()
    instance.action = randomize()
    instance.final_message = randomize()
    instance.id_ = randomize()
    instance.timestamp = randomize("int", min_val=1, max_val=1000)
    instance.attributes = {randomize(): randomize()}
    instance.cencored_words = [randomize()]
    instance.classifications = [randomize()]
    instance.reference_id = randomize()
    return instance


def create_models_message_stats_example() -> ModelsMessageStats:
    instance = ModelsMessageStats()
    instance.id_ = randomize()
    instance.message_read = randomize("int", min_val=1, max_val=1000)
    instance.message_stored = randomize("int", min_val=1, max_val=1000)
    instance.notification_sent = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_public_ban_topic_members_request_example() -> (
    ModelsPublicBanTopicMembersRequest
):
    instance = ModelsPublicBanTopicMembersRequest()
    instance.user_i_ds = [randomize()]
    return instance


def create_models_public_ban_topic_members_response_example() -> (
    ModelsPublicBanTopicMembersResponse
):
    instance = ModelsPublicBanTopicMembersResponse()
    instance.user_i_ds = [randomize()]
    return instance


def create_models_public_config_response_example() -> ModelsPublicConfigResponse:
    instance = ModelsPublicConfigResponse()
    instance.chat_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.chat_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.general_rate_limit_burst = randomize("int", min_val=1, max_val=1000)
    instance.general_rate_limit_duration = randomize("int", min_val=1, max_val=1000)
    instance.max_chat_message_length = randomize("int", min_val=1, max_val=1000)
    instance.spam_chat_burst = randomize("int", min_val=1, max_val=1000)
    instance.spam_chat_duration = randomize("int", min_val=1, max_val=1000)
    instance.spam_mute_duration = randomize("int", min_val=1, max_val=1000)
    instance.enable_pm_send_platform_id = randomize("bool")
    return instance


def create_models_public_unban_topic_members_request_example() -> (
    ModelsPublicUnbanTopicMembersRequest
):
    instance = ModelsPublicUnbanTopicMembersRequest()
    instance.user_i_ds = [randomize()]
    return instance


def create_models_public_unban_topic_members_response_example() -> (
    ModelsPublicUnbanTopicMembersResponse
):
    instance = ModelsPublicUnbanTopicMembersResponse()
    instance.user_i_ds = [randomize()]
    return instance


def create_models_save_inbox_message_request_example() -> ModelsSaveInboxMessageRequest:
    instance = ModelsSaveInboxMessageRequest()
    instance.expired_at = randomize("int", min_val=1, max_val=1000)
    instance.message = {randomize(): randomize()}
    instance.scope = randomize()
    instance.status = randomize()
    instance.user_ids = [randomize()]
    instance.category = randomize()
    return instance


def create_models_save_inbox_message_response_example() -> (
    ModelsSaveInboxMessageResponse
):
    instance = ModelsSaveInboxMessageResponse()
    instance.expired_at = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.scope = randomize()
    instance.status = randomize()
    instance.category = randomize()
    instance.message = {randomize(): randomize()}
    instance.user_i_ds = [randomize()]
    return instance


def create_models_send_inbox_message_request_example() -> ModelsSendInboxMessageRequest:
    instance = ModelsSendInboxMessageRequest()
    return instance


def create_models_send_inbox_message_response_example() -> (
    ModelsSendInboxMessageResponse
):
    instance = ModelsSendInboxMessageResponse()
    return instance


def create_models_topic_info_example() -> ModelsTopicInfo:
    instance = ModelsTopicInfo()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.name = randomize()
    instance.sub_type = randomize()
    instance.type_ = randomize()
    instance.deleted_at = randomize("int", min_val=1, max_val=1000)
    instance.members = [create_topic_info_member_example()]
    return instance


def create_models_topic_log_item_example() -> ModelsTopicLogItem:
    instance = ModelsTopicLogItem()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.message = randomize()
    instance.sender_id = randomize()
    instance.topic_id = randomize()
    instance.type_ = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_topic_log_with_pagination_response_example() -> (
    ModelsTopicLogWithPaginationResponse
):
    instance = ModelsTopicLogWithPaginationResponse()
    instance.data = [create_models_topic_log_item_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_topic_member_response_example() -> ModelsTopicMemberResponse:
    instance = ModelsTopicMemberResponse()
    instance.is_admin = randomize("bool")
    instance.is_banned = randomize("bool")
    instance.shard_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_topic_member_with_pagination_response_example() -> (
    ModelsTopicMemberWithPaginationResponse
):
    instance = ModelsTopicMemberWithPaginationResponse()
    instance.data = [create_models_topic_member_response_example()]
    instance.paging = create_models_pagination_example()
    instance.total_data = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_topic_response_example() -> ModelsTopicResponse:
    instance = ModelsTopicResponse()
    instance.created_at = randomize("int", min_val=1, max_val=1000)
    instance.created_by = randomize()
    instance.last_message_at = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.topic_id = randomize()
    instance.type_ = randomize()
    return instance


def create_models_unban_topic_member_param_example() -> ModelsUnbanTopicMemberParam:
    instance = ModelsUnbanTopicMemberParam()
    instance.user_ids = [randomize()]
    return instance


def create_models_unban_topic_member_result_example() -> ModelsUnbanTopicMemberResult:
    instance = ModelsUnbanTopicMemberResult()
    instance.user_ids = [randomize()]
    return instance


def create_models_unsend_inbox_message_request_example() -> (
    ModelsUnsendInboxMessageRequest
):
    instance = ModelsUnsendInboxMessageRequest()
    instance.user_ids = [randomize()]
    return instance


def create_models_unsend_inbox_message_response_example() -> (
    ModelsUnsendInboxMessageResponse
):
    instance = ModelsUnsendInboxMessageResponse()
    return instance


def create_models_update_inbox_category_request_example() -> (
    ModelsUpdateInboxCategoryRequest
):
    instance = ModelsUpdateInboxCategoryRequest()
    instance.enabled = randomize("bool")
    instance.expires_in = randomize("int", min_val=1, max_val=1000)
    instance.hook = create_models_category_hook_example()
    instance.save_inbox = randomize("bool")
    instance.send_notification = randomize("bool")
    instance.json_schema = {randomize(): randomize()}
    return instance


def create_models_update_inbox_message_request_example() -> (
    ModelsUpdateInboxMessageRequest
):
    instance = ModelsUpdateInboxMessageRequest()
    instance.expired_at = randomize("int", min_val=1, max_val=1000)
    instance.message = {randomize(): randomize()}
    instance.scope = randomize()
    instance.user_ids = [randomize()]
    return instance


def create_models_user_inbox_example() -> ModelsUserInbox:
    instance = ModelsUserInbox()
    instance.keep = randomize("bool")
    instance.read_at = randomize("int", min_val=1, max_val=1000)
    instance.user_id = randomize("uid")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_restapi_error_response_body_example() -> RestapiErrorResponseBody:
    instance = RestapiErrorResponseBody()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_topic_info_member_example() -> TopicInfoMember:
    instance = TopicInfoMember()
    instance.user_id = randomize("uid")
    instance.left_at = randomize("int", min_val=1, max_val=1000)
    return instance
