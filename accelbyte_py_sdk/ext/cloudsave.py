# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Cloudsave Service (3.6.1)

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
from ..api.cloudsave.models import ModelsBulkGetGameRecordRequest
from ..api.cloudsave.models import ModelsBulkGetGameRecordResponse
from ..api.cloudsave.models import ModelsBulkGetPlayerRecordResponse
from ..api.cloudsave.models import ModelsBulkGetPlayerRecordSizeResponse
from ..api.cloudsave.models import ModelsBulkGetPlayerRecordsRequest
from ..api.cloudsave.models import ModelsBulkUserIDsRequest
from ..api.cloudsave.models import ModelsBulkUserKeyRequest
from ..api.cloudsave.models import ModelsConcurrentRecordRequest
from ..api.cloudsave.models import ModelsGameRecordRequest
from ..api.cloudsave.models import ModelsGameRecordResponse
from ..api.cloudsave.models import ModelsListGameRecordKeysResponse
from ..api.cloudsave.models import ModelsListPlayerRecordKeysResponse
from ..api.cloudsave.models import ModelsPagination
from ..api.cloudsave.models import ModelsPlayerRecordKeyInfo
from ..api.cloudsave.models import ModelsPlayerRecordRequest
from ..api.cloudsave.models import ModelsPlayerRecordResponse
from ..api.cloudsave.models import ModelsPlayerRecordSizeResponse
from ..api.cloudsave.models import ModelsResponseError
from ..api.cloudsave.models import ModelsUserKeyRequest


def create_models_admin_concurrent_record_request_example() -> (
    ModelsAdminConcurrentRecordRequest
):
    instance = ModelsAdminConcurrentRecordRequest()
    instance.set_by = randomize()
    instance.updated_at = randomize()
    instance.value = {randomize(): randomize()}
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
    instance.updated_at = randomize()
    instance.value = {randomize(): randomize()}
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
    return instance


def create_models_list_game_record_keys_response_example() -> (
    ModelsListGameRecordKeysResponse
):
    instance = ModelsListGameRecordKeysResponse()
    instance.data = [randomize()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_player_record_keys_response_example() -> (
    ModelsListPlayerRecordKeysResponse
):
    instance = ModelsListPlayerRecordKeysResponse()
    instance.data = [create_models_player_record_key_info_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
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


def create_models_response_error_example() -> ModelsResponseError:
    instance = ModelsResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_models_user_key_request_example() -> ModelsUserKeyRequest:
    instance = ModelsUserKeyRequest()
    instance.keys = [randomize()]
    instance.user_id = randomize("uid")
    return instance
