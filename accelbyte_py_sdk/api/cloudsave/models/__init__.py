# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Cloudsave Service."""

__version__ = "3.25.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .models_admin_concurrent_record_request import ModelsAdminConcurrentRecordRequest
from .models_admin_concurrent_record_request import (
    SetByEnum as ModelsAdminConcurrentRecordRequestSetByEnum,
)
from .models_admin_game_concurrent_record_request import (
    ModelsAdminGameConcurrentRecordRequest,
)
from .models_admin_game_record_request import ModelsAdminGameRecordRequest
from .models_admin_game_record_response import ModelsAdminGameRecordResponse
from .models_admin_player_concurrent_record_request import (
    ModelsAdminPlayerConcurrentRecordRequest,
)
from .models_admin_player_record_key_info import ModelsAdminPlayerRecordKeyInfo
from .models_admin_player_record_request import ModelsAdminPlayerRecordRequest
from .models_admin_player_record_response import ModelsAdminPlayerRecordResponse
from .models_app_config import ModelsAppConfig
from .models_binary_info_response import ModelsBinaryInfoResponse
from .models_binary_record_request import ModelsBinaryRecordRequest
from .models_bulk_get_admin_game_record_request import (
    ModelsBulkGetAdminGameRecordRequest,
)
from .models_bulk_get_admin_game_record_response import (
    ModelsBulkGetAdminGameRecordResponse,
)
from .models_bulk_get_admin_player_record_request import (
    ModelsBulkGetAdminPlayerRecordRequest,
)
from .models_bulk_get_admin_player_record_response import (
    ModelsBulkGetAdminPlayerRecordResponse,
)
from .models_bulk_get_game_binary_record_response import (
    ModelsBulkGetGameBinaryRecordResponse,
)
from .models_bulk_get_game_record_request import ModelsBulkGetGameRecordRequest
from .models_bulk_get_game_record_response import ModelsBulkGetGameRecordResponse
from .models_bulk_get_player_binary_record_response import (
    ModelsBulkGetPlayerBinaryRecordResponse,
)
from .models_bulk_get_player_record_response import ModelsBulkGetPlayerRecordResponse
from .models_bulk_get_player_record_size_response import (
    ModelsBulkGetPlayerRecordSizeResponse,
)
from .models_bulk_get_player_records_request import ModelsBulkGetPlayerRecordsRequest
from .models_bulk_update_player_record_by_key_request_detail import (
    ModelsBulkUpdatePlayerRecordByKeyRequestDetail,
)
from .models_bulk_update_player_record_by_key_response import (
    ModelsBulkUpdatePlayerRecordByKeyResponse,
)
from .models_bulk_update_player_record_request_detail import (
    ModelsBulkUpdatePlayerRecordRequestDetail,
)
from .models_bulk_update_player_record_response import (
    ModelsBulkUpdatePlayerRecordResponse,
)
from .models_bulk_update_player_records_by_key_request import (
    ModelsBulkUpdatePlayerRecordsByKeyRequest,
)
from .models_bulk_update_player_records_request import (
    ModelsBulkUpdatePlayerRecordsRequest,
)
from .models_bulk_user_i_ds_request import ModelsBulkUserIDsRequest
from .models_bulk_user_key_request import ModelsBulkUserKeyRequest
from .models_concurrent_record_request import ModelsConcurrentRecordRequest
from .models_custom_config import ModelsCustomConfig
from .models_custom_function import ModelsCustomFunction
from .models_game_binary_record_admin_response import (
    ModelsGameBinaryRecordAdminResponse,
)
from .models_game_binary_record_admin_response import (
    SetByEnum as ModelsGameBinaryRecordAdminResponseSetByEnum,
)
from .models_game_binary_record_create import ModelsGameBinaryRecordCreate
from .models_game_binary_record_create import (
    SetByEnum as ModelsGameBinaryRecordCreateSetByEnum,
)
from .models_game_binary_record_metadata_request import (
    ModelsGameBinaryRecordMetadataRequest,
)
from .models_game_binary_record_metadata_request import (
    SetByEnum as ModelsGameBinaryRecordMetadataRequestSetByEnum,
)
from .models_game_binary_record_response import ModelsGameBinaryRecordResponse
from .models_game_binary_record_response import (
    SetByEnum as ModelsGameBinaryRecordResponseSetByEnum,
)
from .models_game_record_admin_response import ModelsGameRecordAdminResponse
from .models_game_record_admin_response import (
    SetByEnum as ModelsGameRecordAdminResponseSetByEnum,
)
from .models_game_record_request import ModelsGameRecordRequest
from .models_game_record_response import ModelsGameRecordResponse
from .models_game_record_response import SetByEnum as ModelsGameRecordResponseSetByEnum
from .models_list_admin_game_record_keys_response import (
    ModelsListAdminGameRecordKeysResponse,
)
from .models_list_admin_player_record_keys_response import (
    ModelsListAdminPlayerRecordKeysResponse,
)
from .models_list_game_binary_records_admin_response import (
    ModelsListGameBinaryRecordsAdminResponse,
)
from .models_list_game_binary_records_response import (
    ModelsListGameBinaryRecordsResponse,
)
from .models_list_game_record_keys_response import ModelsListGameRecordKeysResponse
from .models_list_player_binary_records_response import (
    ModelsListPlayerBinaryRecordsResponse,
)
from .models_list_player_record_keys_response import ModelsListPlayerRecordKeysResponse
from .models_list_tags_response import ModelsListTagsResponse
from .models_pagination import ModelsPagination
from .models_player_binary_record_create import ModelsPlayerBinaryRecordCreate
from .models_player_binary_record_create import (
    SetByEnum as ModelsPlayerBinaryRecordCreateSetByEnum,
)
from .models_player_binary_record_metadata_public_request import (
    ModelsPlayerBinaryRecordMetadataPublicRequest,
)
from .models_player_binary_record_metadata_request import (
    ModelsPlayerBinaryRecordMetadataRequest,
)
from .models_player_binary_record_metadata_request import (
    SetByEnum as ModelsPlayerBinaryRecordMetadataRequestSetByEnum,
)
from .models_player_binary_record_response import ModelsPlayerBinaryRecordResponse
from .models_player_binary_record_response import (
    SetByEnum as ModelsPlayerBinaryRecordResponseSetByEnum,
)
from .models_player_record_concurrent_update_response import (
    ModelsPlayerRecordConcurrentUpdateResponse,
)
from .models_player_record_key_info import ModelsPlayerRecordKeyInfo
from .models_player_record_request import ModelsPlayerRecordRequest
from .models_player_record_response import ModelsPlayerRecordResponse
from .models_player_record_response import (
    SetByEnum as ModelsPlayerRecordResponseSetByEnum,
)
from .models_player_record_size_response import ModelsPlayerRecordSizeResponse
from .models_plugin_request import ModelsPluginRequest
from .models_plugin_request import ExtendTypeEnum as ModelsPluginRequestExtendTypeEnum
from .models_plugin_response import ModelsPluginResponse
from .models_plugin_response import ExtendTypeEnum as ModelsPluginResponseExtendTypeEnum
from .models_public_game_binary_record_create import ModelsPublicGameBinaryRecordCreate
from .models_public_player_binary_record_create import (
    ModelsPublicPlayerBinaryRecordCreate,
)
from .models_response_error import ModelsResponseError
from .models_tag_info import ModelsTagInfo
from .models_tag_request import ModelsTagRequest
from .models_ttl_config_dto import ModelsTTLConfigDTO
from .models_ttl_config_dto import ActionEnum as ModelsTTLConfigDTOActionEnum
from .models_upload_binary_record_request import ModelsUploadBinaryRecordRequest
from .models_upload_binary_record_response import ModelsUploadBinaryRecordResponse
from .models_user_key_request import ModelsUserKeyRequest
