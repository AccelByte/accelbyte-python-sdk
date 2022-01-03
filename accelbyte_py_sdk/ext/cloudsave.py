# justice-cloudsave-service (1.9.2)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..api.cloudsave.models import ModelsConcurrentRecordRequest
from ..api.cloudsave.models import ModelsGameRecord
from ..api.cloudsave.models import ModelsGameRecordRequest
from ..api.cloudsave.models import ModelsListGameRecordKeys
from ..api.cloudsave.models import ModelsListPlayerRecordKeys
from ..api.cloudsave.models import ModelsPagination
from ..api.cloudsave.models import ModelsPlayerRecord
from ..api.cloudsave.models import ModelsPlayerRecordKey
from ..api.cloudsave.models import ModelsPlayerRecordRequest
from ..api.cloudsave.models import ModelsResponseError


def create_models_concurrent_record_request_example() -> ModelsConcurrentRecordRequest:
    instance = ModelsConcurrentRecordRequest()
    instance.updated_at = randomize()
    instance.value = {randomize(): randomize()}
    return instance


def create_models_game_record_example() -> ModelsGameRecord:
    instance = ModelsGameRecord()
    instance.created_at = randomize("date")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.value = {randomize(): randomize()}
    return instance


def create_models_game_record_request_example() -> ModelsGameRecordRequest:
    instance = ModelsGameRecordRequest()
    return instance


def create_models_list_game_record_keys_example() -> ModelsListGameRecordKeys:
    instance = ModelsListGameRecordKeys()
    instance.data = [randomize()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_player_record_keys_example() -> ModelsListPlayerRecordKeys:
    instance = ModelsListPlayerRecordKeys()
    instance.data = [create_models_player_record_key_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_player_record_example() -> ModelsPlayerRecord:
    instance = ModelsPlayerRecord()
    instance.created_at = randomize("date")
    instance.is_public = randomize("bool")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.value = {randomize(): randomize()}
    return instance


def create_models_player_record_key_example() -> ModelsPlayerRecordKey:
    instance = ModelsPlayerRecordKey()
    instance.key = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_player_record_request_example() -> ModelsPlayerRecordRequest:
    instance = ModelsPlayerRecordRequest()
    return instance


def create_models_response_error_example() -> ModelsResponseError:
    instance = ModelsResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
