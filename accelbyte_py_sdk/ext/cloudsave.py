# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service

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

from ..api.cloudsave.models import ModelsAdminConcurrentRecordRequest
from ..api.cloudsave.models import ModelsAdminGameConcurrentRecordRequest
from ..api.cloudsave.models import ModelsAdminGameRecordRequest
from ..api.cloudsave.models import ModelsAdminGameRecordResponse
from ..api.cloudsave.models import ModelsAdminPlayerConcurrentRecordRequest
from ..api.cloudsave.models import ModelsAdminPlayerRecordKeyInfo
from ..api.cloudsave.models import ModelsAdminPlayerRecordRequest
from ..api.cloudsave.models import ModelsAdminPlayerRecordResponse
from ..api.cloudsave.models import ModelsAppConfig
from ..api.cloudsave.models import ModelsBinaryInfoResponse
from ..api.cloudsave.models import ModelsBinaryRecordRequest
from ..api.cloudsave.models import ModelsBulkGetAdminGameRecordRequest
from ..api.cloudsave.models import ModelsBulkGetAdminGameRecordResponse
from ..api.cloudsave.models import ModelsBulkGetAdminPlayerRecordRequest
from ..api.cloudsave.models import ModelsBulkGetAdminPlayerRecordResponse
from ..api.cloudsave.models import ModelsBulkGetGameBinaryRecordResponse
from ..api.cloudsave.models import ModelsBulkGetGameRecordRequest
from ..api.cloudsave.models import ModelsBulkGetGameRecordResponse
from ..api.cloudsave.models import ModelsBulkGetPlayerBinaryRecordResponse
from ..api.cloudsave.models import ModelsBulkGetPlayerRecordResponse
from ..api.cloudsave.models import ModelsBulkGetPlayerRecordSizeResponse
from ..api.cloudsave.models import ModelsBulkGetPlayerRecordsRequest
from ..api.cloudsave.models import ModelsBulkUpdatePlayerRecordByKeyRequestDetail
from ..api.cloudsave.models import ModelsBulkUpdatePlayerRecordByKeyResponse
from ..api.cloudsave.models import ModelsBulkUpdatePlayerRecordRequestDetail
from ..api.cloudsave.models import ModelsBulkUpdatePlayerRecordResponse
from ..api.cloudsave.models import ModelsBulkUpdatePlayerRecordsByKeyRequest
from ..api.cloudsave.models import ModelsBulkUpdatePlayerRecordsRequest
from ..api.cloudsave.models import ModelsBulkUserIDsRequest
from ..api.cloudsave.models import ModelsBulkUserKeyRequest
from ..api.cloudsave.models import ModelsConcurrentRecordRequest
from ..api.cloudsave.models import ModelsCustomConfig
from ..api.cloudsave.models import ModelsCustomFunction
from ..api.cloudsave.models import ModelsGameBinaryRecordAdminResponse
from ..api.cloudsave.models import ModelsGameBinaryRecordCreate
from ..api.cloudsave.models import ModelsGameBinaryRecordMetadataRequest
from ..api.cloudsave.models import ModelsGameBinaryRecordResponse
from ..api.cloudsave.models import ModelsGameRecordAdminResponse
from ..api.cloudsave.models import ModelsGameRecordRequest
from ..api.cloudsave.models import ModelsGameRecordResponse
from ..api.cloudsave.models import ModelsListAdminGameRecordKeysResponse
from ..api.cloudsave.models import ModelsListAdminPlayerRecordKeysResponse
from ..api.cloudsave.models import ModelsListGameBinaryRecordsAdminResponse
from ..api.cloudsave.models import ModelsListGameBinaryRecordsResponse
from ..api.cloudsave.models import ModelsListGameRecordKeysResponse
from ..api.cloudsave.models import ModelsListPlayerBinaryRecordsResponse
from ..api.cloudsave.models import ModelsListPlayerRecordKeysResponse
from ..api.cloudsave.models import ModelsListTagsResponse
from ..api.cloudsave.models import ModelsPagination
from ..api.cloudsave.models import ModelsPlayerBinaryRecordCreate
from ..api.cloudsave.models import ModelsPlayerBinaryRecordMetadataPublicRequest
from ..api.cloudsave.models import ModelsPlayerBinaryRecordMetadataRequest
from ..api.cloudsave.models import ModelsPlayerBinaryRecordResponse
from ..api.cloudsave.models import ModelsPlayerRecordConcurrentUpdateResponse
from ..api.cloudsave.models import ModelsPlayerRecordKeyInfo
from ..api.cloudsave.models import ModelsPlayerRecordRequest
from ..api.cloudsave.models import ModelsPlayerRecordResponse
from ..api.cloudsave.models import ModelsPlayerRecordSizeResponse
from ..api.cloudsave.models import ModelsPluginRequest
from ..api.cloudsave.models import ModelsPluginResponse
from ..api.cloudsave.models import ModelsPublicGameBinaryRecordCreate
from ..api.cloudsave.models import ModelsPublicPlayerBinaryRecordCreate
from ..api.cloudsave.models import ModelsResponseError
from ..api.cloudsave.models import ModelsTTLConfigDTO
from ..api.cloudsave.models import ModelsTagInfo
from ..api.cloudsave.models import ModelsTagRequest
from ..api.cloudsave.models import ModelsUploadBinaryRecordRequest
from ..api.cloudsave.models import ModelsUploadBinaryRecordResponse
from ..api.cloudsave.models import ModelsUserKeyRequest


def create_models_admin_concurrent_record_request_example() -> (
    ModelsAdminConcurrentRecordRequest
):
    instance = ModelsAdminConcurrentRecordRequest()
    instance.set_by = randomize()
    instance.updated_at = randomize("date")
    instance.value = {randomize(): randomize()}
    instance.tags = [randomize()]
    instance.ttl_config = create_models_ttl_config_dto_example()
    return instance


def create_models_admin_game_concurrent_record_request_example() -> (
    ModelsAdminGameConcurrentRecordRequest
):
    instance = ModelsAdminGameConcurrentRecordRequest()
    instance.updated_at = randomize("date")
    instance.value = {randomize(): randomize()}
    instance.tags = [randomize()]
    instance.ttl_config = create_models_ttl_config_dto_example()
    return instance


def create_models_admin_game_record_request_example() -> ModelsAdminGameRecordRequest:
    instance = ModelsAdminGameRecordRequest()
    return instance


def create_models_admin_game_record_response_example() -> ModelsAdminGameRecordResponse:
    instance = ModelsAdminGameRecordResponse()
    instance.created_at = randomize("date")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.value = {randomize(): randomize()}
    instance.tags = [randomize()]
    instance.ttl_config = create_models_ttl_config_dto_example()
    return instance


def create_models_admin_player_concurrent_record_request_example() -> (
    ModelsAdminPlayerConcurrentRecordRequest
):
    instance = ModelsAdminPlayerConcurrentRecordRequest()
    instance.updated_at = randomize("date")
    instance.value = {randomize(): randomize()}
    instance.tags = [randomize()]
    return instance


def create_models_admin_player_record_key_info_example() -> (
    ModelsAdminPlayerRecordKeyInfo
):
    instance = ModelsAdminPlayerRecordKeyInfo()
    instance.key = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_admin_player_record_request_example() -> (
    ModelsAdminPlayerRecordRequest
):
    instance = ModelsAdminPlayerRecordRequest()
    return instance


def create_models_admin_player_record_response_example() -> (
    ModelsAdminPlayerRecordResponse
):
    instance = ModelsAdminPlayerRecordResponse()
    instance.created_at = randomize("date")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.value = {randomize(): randomize()}
    instance.tags = [randomize()]
    return instance


def create_models_app_config_example() -> ModelsAppConfig:
    instance = ModelsAppConfig()
    instance.app_name = randomize()
    return instance


def create_models_binary_info_response_example() -> ModelsBinaryInfoResponse:
    instance = ModelsBinaryInfoResponse()
    instance.content_type = randomize()
    instance.created_at = randomize("date")
    instance.file_location = randomize()
    instance.updated_at = randomize("date")
    instance.version = randomize("int", min_val=1, max_val=1000)
    instance.url = randomize("url")
    return instance


def create_models_binary_record_request_example() -> ModelsBinaryRecordRequest:
    instance = ModelsBinaryRecordRequest()
    instance.content_type = randomize()
    instance.file_location = randomize()
    return instance


def create_models_bulk_get_admin_game_record_request_example() -> (
    ModelsBulkGetAdminGameRecordRequest
):
    instance = ModelsBulkGetAdminGameRecordRequest()
    instance.keys = [randomize()]
    return instance


def create_models_bulk_get_admin_game_record_response_example() -> (
    ModelsBulkGetAdminGameRecordResponse
):
    instance = ModelsBulkGetAdminGameRecordResponse()
    instance.data = [create_models_admin_game_record_response_example()]
    return instance


def create_models_bulk_get_admin_player_record_request_example() -> (
    ModelsBulkGetAdminPlayerRecordRequest
):
    instance = ModelsBulkGetAdminPlayerRecordRequest()
    instance.keys = [randomize()]
    return instance


def create_models_bulk_get_admin_player_record_response_example() -> (
    ModelsBulkGetAdminPlayerRecordResponse
):
    instance = ModelsBulkGetAdminPlayerRecordResponse()
    instance.data = [create_models_admin_player_record_response_example()]
    return instance


def create_models_bulk_get_game_binary_record_response_example() -> (
    ModelsBulkGetGameBinaryRecordResponse
):
    instance = ModelsBulkGetGameBinaryRecordResponse()
    instance.data = [create_models_game_binary_record_response_example()]
    return instance


def create_models_bulk_get_game_record_request_example() -> (
    ModelsBulkGetGameRecordRequest
):
    instance = ModelsBulkGetGameRecordRequest()
    instance.keys = [randomize()]
    return instance


def create_models_bulk_get_game_record_response_example() -> (
    ModelsBulkGetGameRecordResponse
):
    instance = ModelsBulkGetGameRecordResponse()
    instance.data = [create_models_game_record_response_example()]
    return instance


def create_models_bulk_get_player_binary_record_response_example() -> (
    ModelsBulkGetPlayerBinaryRecordResponse
):
    instance = ModelsBulkGetPlayerBinaryRecordResponse()
    instance.data = [create_models_player_binary_record_response_example()]
    return instance


def create_models_bulk_get_player_record_response_example() -> (
    ModelsBulkGetPlayerRecordResponse
):
    instance = ModelsBulkGetPlayerRecordResponse()
    instance.data = [create_models_player_record_response_example()]
    return instance


def create_models_bulk_get_player_record_size_response_example() -> (
    ModelsBulkGetPlayerRecordSizeResponse
):
    instance = ModelsBulkGetPlayerRecordSizeResponse()
    instance.data = [create_models_player_record_size_response_example()]
    return instance


def create_models_bulk_get_player_records_request_example() -> (
    ModelsBulkGetPlayerRecordsRequest
):
    instance = ModelsBulkGetPlayerRecordsRequest()
    instance.keys = [randomize()]
    return instance


def create_models_bulk_update_player_record_by_key_request_detail_example() -> (
    ModelsBulkUpdatePlayerRecordByKeyRequestDetail
):
    instance = ModelsBulkUpdatePlayerRecordByKeyRequestDetail()
    instance.user_id = randomize("uid")
    instance.value = {randomize(): randomize()}
    return instance


def create_models_bulk_update_player_record_by_key_response_example() -> (
    ModelsBulkUpdatePlayerRecordByKeyResponse
):
    instance = ModelsBulkUpdatePlayerRecordByKeyResponse()
    instance.detail = {randomize(): randomize()}
    instance.success = randomize("bool")
    instance.user_id = randomize("uid")
    return instance


def create_models_bulk_update_player_record_request_detail_example() -> (
    ModelsBulkUpdatePlayerRecordRequestDetail
):
    instance = ModelsBulkUpdatePlayerRecordRequestDetail()
    instance.key = randomize()
    instance.value = {randomize(): randomize()}
    return instance


def create_models_bulk_update_player_record_response_example() -> (
    ModelsBulkUpdatePlayerRecordResponse
):
    instance = ModelsBulkUpdatePlayerRecordResponse()
    instance.detail = {randomize(): randomize()}
    instance.key = randomize()
    instance.success = randomize("bool")
    return instance


def create_models_bulk_update_player_records_by_key_request_example() -> (
    ModelsBulkUpdatePlayerRecordsByKeyRequest
):
    instance = ModelsBulkUpdatePlayerRecordsByKeyRequest()
    instance.data = [
        create_models_bulk_update_player_record_by_key_request_detail_example()
    ]
    return instance


def create_models_bulk_update_player_records_request_example() -> (
    ModelsBulkUpdatePlayerRecordsRequest
):
    instance = ModelsBulkUpdatePlayerRecordsRequest()
    instance.data = [create_models_bulk_update_player_record_request_detail_example()]
    return instance


def create_models_bulk_user_i_ds_request_example() -> ModelsBulkUserIDsRequest:
    instance = ModelsBulkUserIDsRequest()
    instance.user_ids = [randomize()]
    return instance


def create_models_bulk_user_key_request_example() -> ModelsBulkUserKeyRequest:
    instance = ModelsBulkUserKeyRequest()
    instance.data = [create_models_user_key_request_example()]
    return instance


def create_models_concurrent_record_request_example() -> ModelsConcurrentRecordRequest:
    instance = ModelsConcurrentRecordRequest()
    instance.updated_at = randomize("date")
    instance.value = {randomize(): randomize()}
    return instance


def create_models_custom_config_example() -> ModelsCustomConfig:
    instance = ModelsCustomConfig()
    instance.grpc_address = randomize()
    return instance


def create_models_custom_function_example() -> ModelsCustomFunction:
    instance = ModelsCustomFunction()
    instance.after_bulk_read_game_binary_record = randomize("bool")
    instance.after_bulk_read_game_record = randomize("bool")
    instance.after_bulk_read_player_binary_record = randomize("bool")
    instance.after_bulk_read_player_record = randomize("bool")
    instance.after_read_game_binary_record = randomize("bool")
    instance.after_read_game_record = randomize("bool")
    instance.after_read_player_binary_record = randomize("bool")
    instance.after_read_player_record = randomize("bool")
    instance.before_write_admin_game_record = randomize("bool")
    instance.before_write_admin_player_record = randomize("bool")
    instance.before_write_game_binary_record = randomize("bool")
    instance.before_write_game_record = randomize("bool")
    instance.before_write_player_binary_record = randomize("bool")
    instance.before_write_player_record = randomize("bool")
    return instance


def create_models_game_binary_record_admin_response_example() -> (
    ModelsGameBinaryRecordAdminResponse
):
    instance = ModelsGameBinaryRecordAdminResponse()
    instance.created_at = randomize("date")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.binary_info = create_models_binary_info_response_example()
    instance.set_by = randomize()
    instance.tags = [randomize()]
    instance.ttl_config = create_models_ttl_config_dto_example()
    return instance


def create_models_game_binary_record_create_example() -> ModelsGameBinaryRecordCreate:
    instance = ModelsGameBinaryRecordCreate()
    instance.file_type = randomize()
    instance.key = randomize()
    instance.set_by = randomize()
    instance.ttl_config = create_models_ttl_config_dto_example()
    return instance


def create_models_game_binary_record_metadata_request_example() -> (
    ModelsGameBinaryRecordMetadataRequest
):
    instance = ModelsGameBinaryRecordMetadataRequest()
    instance.set_by = randomize()
    instance.tags = [randomize()]
    instance.ttl_config = create_models_ttl_config_dto_example()
    return instance


def create_models_game_binary_record_response_example() -> (
    ModelsGameBinaryRecordResponse
):
    instance = ModelsGameBinaryRecordResponse()
    instance.created_at = randomize("date")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.binary_info = create_models_binary_info_response_example()
    instance.set_by = randomize()
    instance.tags = [randomize()]
    return instance


def create_models_game_record_admin_response_example() -> ModelsGameRecordAdminResponse:
    instance = ModelsGameRecordAdminResponse()
    instance.created_at = randomize("date")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.value = {randomize(): randomize()}
    instance.set_by = randomize()
    instance.tags = [randomize()]
    instance.ttl_config = create_models_ttl_config_dto_example()
    return instance


def create_models_game_record_request_example() -> ModelsGameRecordRequest:
    instance = ModelsGameRecordRequest()
    return instance


def create_models_game_record_response_example() -> ModelsGameRecordResponse:
    instance = ModelsGameRecordResponse()
    instance.created_at = randomize("date")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.value = {randomize(): randomize()}
    instance.set_by = randomize()
    instance.tags = [randomize()]
    return instance


def create_models_list_admin_game_record_keys_response_example() -> (
    ModelsListAdminGameRecordKeysResponse
):
    instance = ModelsListAdminGameRecordKeysResponse()
    instance.data = [randomize()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_admin_player_record_keys_response_example() -> (
    ModelsListAdminPlayerRecordKeysResponse
):
    instance = ModelsListAdminPlayerRecordKeysResponse()
    instance.data = [create_models_admin_player_record_key_info_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_game_binary_records_admin_response_example() -> (
    ModelsListGameBinaryRecordsAdminResponse
):
    instance = ModelsListGameBinaryRecordsAdminResponse()
    instance.data = [create_models_game_binary_record_admin_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_game_binary_records_response_example() -> (
    ModelsListGameBinaryRecordsResponse
):
    instance = ModelsListGameBinaryRecordsResponse()
    instance.data = [create_models_game_binary_record_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_game_record_keys_response_example() -> (
    ModelsListGameRecordKeysResponse
):
    instance = ModelsListGameRecordKeysResponse()
    instance.data = [randomize()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_player_binary_records_response_example() -> (
    ModelsListPlayerBinaryRecordsResponse
):
    instance = ModelsListPlayerBinaryRecordsResponse()
    instance.data = [create_models_player_binary_record_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_player_record_keys_response_example() -> (
    ModelsListPlayerRecordKeysResponse
):
    instance = ModelsListPlayerRecordKeysResponse()
    instance.data = [create_models_player_record_key_info_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_tags_response_example() -> ModelsListTagsResponse:
    instance = ModelsListTagsResponse()
    instance.data = [create_models_tag_info_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_player_binary_record_create_example() -> (
    ModelsPlayerBinaryRecordCreate
):
    instance = ModelsPlayerBinaryRecordCreate()
    instance.file_type = randomize()
    instance.key = randomize()
    instance.set_by = randomize()
    instance.is_public = randomize("bool")
    return instance


def create_models_player_binary_record_metadata_public_request_example() -> (
    ModelsPlayerBinaryRecordMetadataPublicRequest
):
    instance = ModelsPlayerBinaryRecordMetadataPublicRequest()
    instance.is_public = randomize("bool")
    return instance


def create_models_player_binary_record_metadata_request_example() -> (
    ModelsPlayerBinaryRecordMetadataRequest
):
    instance = ModelsPlayerBinaryRecordMetadataRequest()
    instance.is_public = randomize("bool")
    instance.set_by = randomize()
    instance.tags = [randomize()]
    return instance


def create_models_player_binary_record_response_example() -> (
    ModelsPlayerBinaryRecordResponse
):
    instance = ModelsPlayerBinaryRecordResponse()
    instance.created_at = randomize("date")
    instance.is_public = randomize("bool")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.binary_info = create_models_binary_info_response_example()
    instance.set_by = randomize()
    instance.tags = [randomize()]
    return instance


def create_models_player_record_concurrent_update_response_example() -> (
    ModelsPlayerRecordConcurrentUpdateResponse
):
    instance = ModelsPlayerRecordConcurrentUpdateResponse()
    instance.updated_at = randomize("date")
    return instance


def create_models_player_record_key_info_example() -> ModelsPlayerRecordKeyInfo:
    instance = ModelsPlayerRecordKeyInfo()
    instance.key = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_player_record_request_example() -> ModelsPlayerRecordRequest:
    instance = ModelsPlayerRecordRequest()
    return instance


def create_models_player_record_response_example() -> ModelsPlayerRecordResponse:
    instance = ModelsPlayerRecordResponse()
    instance.created_at = randomize("date")
    instance.is_public = randomize("bool")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.value = {randomize(): randomize()}
    instance.set_by = randomize()
    instance.tags = [randomize()]
    return instance


def create_models_player_record_size_response_example() -> (
    ModelsPlayerRecordSizeResponse
):
    instance = ModelsPlayerRecordSizeResponse()
    instance.current_size = randomize("int", min_val=1, max_val=1000)
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.remaining_size = randomize("int", min_val=1, max_val=1000)
    instance.user_id = randomize("uid")
    return instance


def create_models_plugin_request_example() -> ModelsPluginRequest:
    instance = ModelsPluginRequest()
    instance.custom_function = create_models_custom_function_example()
    instance.extend_type = randomize()
    instance.app_config = create_models_app_config_example()
    instance.custom_config = create_models_custom_config_example()
    return instance


def create_models_plugin_response_example() -> ModelsPluginResponse:
    instance = ModelsPluginResponse()
    instance.custom_function = create_models_custom_function_example()
    instance.extend_type = randomize()
    instance.namespace = randomize("slug")
    instance.app_config = create_models_app_config_example()
    instance.custom_config = create_models_custom_config_example()
    return instance


def create_models_public_game_binary_record_create_example() -> (
    ModelsPublicGameBinaryRecordCreate
):
    instance = ModelsPublicGameBinaryRecordCreate()
    instance.file_type = randomize()
    instance.key = randomize()
    return instance


def create_models_public_player_binary_record_create_example() -> (
    ModelsPublicPlayerBinaryRecordCreate
):
    instance = ModelsPublicPlayerBinaryRecordCreate()
    instance.file_type = randomize()
    instance.key = randomize()
    instance.is_public = randomize("bool")
    return instance


def create_models_response_error_example() -> ModelsResponseError:
    instance = ModelsResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_models_tag_info_example() -> ModelsTagInfo:
    instance = ModelsTagInfo()
    instance.created_at = randomize("date")
    instance.tag = randomize()
    return instance


def create_models_tag_request_example() -> ModelsTagRequest:
    instance = ModelsTagRequest()
    instance.tag = randomize()
    return instance


def create_models_ttl_config_dto_example() -> ModelsTTLConfigDTO:
    instance = ModelsTTLConfigDTO()
    instance.action = randomize()
    instance.expires_at = randomize("date")
    return instance


def create_models_upload_binary_record_request_example() -> (
    ModelsUploadBinaryRecordRequest
):
    instance = ModelsUploadBinaryRecordRequest()
    instance.file_type = randomize()
    return instance


def create_models_upload_binary_record_response_example() -> (
    ModelsUploadBinaryRecordResponse
):
    instance = ModelsUploadBinaryRecordResponse()
    instance.content_type = randomize()
    instance.file_location = randomize()
    instance.url = randomize("url")
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_user_key_request_example() -> ModelsUserKeyRequest:
    instance = ModelsUserKeyRequest()
    instance.keys = [randomize()]
    instance.user_id = randomize("uid")
    return instance
