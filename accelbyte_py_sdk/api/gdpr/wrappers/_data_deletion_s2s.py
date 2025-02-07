# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
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

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import DtoListFinishedDataDeletion
from ..models import ModelsS2SRequestDeleteResponse
from ..models import ResponseError

from ..operations.data_deletion_s2s import S2SGetListFinishedAccountDeletionRequest
from ..operations.data_deletion_s2s import S2SSubmitUserAccountDeletionRequest


@same_doc_as(S2SGetListFinishedAccountDeletionRequest)
def s2s_get_list_finished_account_deletion_request(
    end: str,
    start: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of finished account deletion requests (S2SGetListFinishedAccountDeletionRequest)

    Scope: account

    Get list of finished account deletion requests based on the finished time period.
    Unfinished deletion requests will not appear here, i.e. have Status **Request**, **Pending** or **In-Progress**.

    **Anonymize userId for deleted account:**
    For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
    This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/deletions/finished

        method: GET

        tags: ["Data Deletion (S2S)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - DtoListFinishedDataDeletion (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SGetListFinishedAccountDeletionRequest.create(
        end=end,
        start=start,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(S2SGetListFinishedAccountDeletionRequest)
async def s2s_get_list_finished_account_deletion_request_async(
    end: str,
    start: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of finished account deletion requests (S2SGetListFinishedAccountDeletionRequest)

    Scope: account

    Get list of finished account deletion requests based on the finished time period.
    Unfinished deletion requests will not appear here, i.e. have Status **Request**, **Pending** or **In-Progress**.

    **Anonymize userId for deleted account:**
    For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
    This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/deletions/finished

        method: GET

        tags: ["Data Deletion (S2S)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - DtoListFinishedDataDeletion (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SGetListFinishedAccountDeletionRequest.create(
        end=end,
        start=start,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(S2SSubmitUserAccountDeletionRequest)
def s2s_submit_user_account_deletion_request(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user's account deletion request (S2SSubmitUserAccountDeletionRequest)

    Scope: account

    Submit user's account deletion request.

    **Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

    ---
    ## This API for S2S integration purpose only

    **Notes:**

    1. This API will **not send GDPR email notification** both for player and admin notification.
    2. This API will **perform account deletion immediately** without GDPR grace period (i.e. 28 days grace period).

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions

        method: POST

        tags: ["Data Deletion (S2S)"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsS2SRequestDeleteResponse (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SSubmitUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(S2SSubmitUserAccountDeletionRequest)
async def s2s_submit_user_account_deletion_request_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user's account deletion request (S2SSubmitUserAccountDeletionRequest)

    Scope: account

    Submit user's account deletion request.

    **Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

    ---
    ## This API for S2S integration purpose only

    **Notes:**

    1. This API will **not send GDPR email notification** both for player and admin notification.
    2. This API will **perform account deletion immediately** without GDPR grace period (i.e. 28 days grace period).

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/users/{userId}/deletions

        method: POST

        tags: ["Data Deletion (S2S)"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsS2SRequestDeleteResponse (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SSubmitUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
