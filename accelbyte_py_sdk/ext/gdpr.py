# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Gdpr Service (1.15.1)

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

from ..api.gdpr.models import ModelsDataRetrievalResponse
from ..api.gdpr.models import ModelsDeletionData
from ..api.gdpr.models import ModelsDeletionStatus
from ..api.gdpr.models import ModelsListDeletionDataResponse
from ..api.gdpr.models import ModelsListPersonalDataResponse
from ..api.gdpr.models import ModelsPagination
from ..api.gdpr.models import ModelsPersonalData
from ..api.gdpr.models import ModelsRequestDeleteResponse
from ..api.gdpr.models import ModelsUserDataURL
from ..api.gdpr.models import ModelsUserPersonalData
from ..api.gdpr.models import ModelsUserPersonalDataResponse
from ..api.gdpr.models import ResponseError


def create_models_data_retrieval_response_example() -> ModelsDataRetrievalResponse:
    instance = ModelsDataRetrievalResponse()
    instance.namespace = randomize("slug")
    instance.request_date = randomize("date")
    instance.user_id = randomize("uid")
    return instance


def create_models_deletion_data_example() -> ModelsDeletionData:
    instance = ModelsDeletionData()
    instance.display_name = randomize("slug")
    instance.request_date = randomize("date")
    instance.status = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_deletion_status_example() -> ModelsDeletionStatus:
    instance = ModelsDeletionStatus()
    instance.deletion_status = randomize("bool")
    instance.display_name = randomize("slug")
    instance.status = randomize()
    instance.user_id = randomize("uid")
    instance.execution_date = randomize("date")
    return instance


def create_models_list_deletion_data_response_example() -> ModelsListDeletionDataResponse:
    instance = ModelsListDeletionDataResponse()
    instance.data = [create_models_deletion_data_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_list_personal_data_response_example() -> ModelsListPersonalDataResponse:
    instance = ModelsListPersonalDataResponse()
    instance.data = [create_models_personal_data_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_personal_data_example() -> ModelsPersonalData:
    instance = ModelsPersonalData()
    instance.data_expiration_date = randomize("date")
    instance.display_name = randomize("slug")
    instance.request_date = randomize("date")
    instance.service_errors = {randomize(): randomize()}
    instance.service_statuses = {randomize(): randomize()}
    instance.status = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_request_delete_response_example() -> ModelsRequestDeleteResponse:
    instance = ModelsRequestDeleteResponse()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_models_user_data_url_example() -> ModelsUserDataURL:
    instance = ModelsUserDataURL()
    instance.url = randomize("url")
    return instance


def create_models_user_personal_data_example() -> ModelsUserPersonalData:
    instance = ModelsUserPersonalData()
    instance.data_expiration_date = randomize("date")
    instance.request_date = randomize("date")
    instance.status = randomize()
    return instance


def create_models_user_personal_data_response_example() -> ModelsUserPersonalDataResponse:
    instance = ModelsUserPersonalDataResponse()
    instance.data = [create_models_user_personal_data_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
