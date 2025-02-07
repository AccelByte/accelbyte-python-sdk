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

from ..models import DtoListFinishedDataRequests
from ..models import DtoS2SDataRequestSummary
from ..models import ModelsS2SDataRetrievalResponse
from ..models import ModelsS2SUserDataURL
from ..models import ResponseError

from ..operations.data_retrieval_s2s import S2SGeneratePersonalDataURL
from ..operations.data_retrieval_s2s import S2SGetDataRequestByRequestID
from ..operations.data_retrieval_s2s import S2SGetListFinishedPersonalDataRequest
from ..operations.data_retrieval_s2s import S2SRequestDataRetrieval
from ..models import DtoS2SDataRequestSummaryStatusEnum


@same_doc_as(S2SGeneratePersonalDataURL)
def s2s_generate_personal_data_url(
    request_date: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate personal data download url (S2SGeneratePersonalDataURL)

    Scope: account

    Generate personal data download url.

    **Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate

        method: POST

        tags: ["Data Retrieval (S2S)"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsS2SUserDataURL (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SGeneratePersonalDataURL.create(
        request_date=request_date,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(S2SGeneratePersonalDataURL)
async def s2s_generate_personal_data_url_async(
    request_date: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate personal data download url (S2SGeneratePersonalDataURL)

    Scope: account

    Generate personal data download url.

    **Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate

        method: POST

        tags: ["Data Retrieval (S2S)"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsS2SUserDataURL (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SGeneratePersonalDataURL.create(
        request_date=request_date,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(S2SGetDataRequestByRequestID)
def s2s_get_data_request_by_request_id(
    request_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Personal Data Request by Request Id (S2SGetDataRequestByRequestID)

    Scope: account

    Get Personal Data Request by Request Id.
    If the request has been completed, it will return a download url for the data package.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/requests/{requestId}

        method: GET

        tags: ["Data Retrieval (S2S)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_id: (requestId) REQUIRED str in path

    Responses:
        200: OK - DtoS2SDataRequestSummary (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SGetDataRequestByRequestID.create(
        request_id=request_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(S2SGetDataRequestByRequestID)
async def s2s_get_data_request_by_request_id_async(
    request_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Personal Data Request by Request Id (S2SGetDataRequestByRequestID)

    Scope: account

    Get Personal Data Request by Request Id.
    If the request has been completed, it will return a download url for the data package.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/requests/{requestId}

        method: GET

        tags: ["Data Retrieval (S2S)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_id: (requestId) REQUIRED str in path

    Responses:
        200: OK - DtoS2SDataRequestSummary (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SGetDataRequestByRequestID.create(
        request_id=request_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(S2SGetListFinishedPersonalDataRequest)
def s2s_get_list_finished_personal_data_request(
    end: str,
    start: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of finished personal data requests (S2SGetListFinishedPersonalDataRequest)

    Scope: account

    Get list of finished personal data requests based on the finished time period.
    Unfinished personal data requests will not appear here, i.e. have Status **Pending**, **In-Progress** or **Canceled**.

    **Anonymize userId for deleted account:**
    For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
    This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/requests/finished

        method: GET

        tags: ["Data Retrieval (S2S)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - DtoListFinishedDataRequests (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SGetListFinishedPersonalDataRequest.create(
        end=end,
        start=start,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(S2SGetListFinishedPersonalDataRequest)
async def s2s_get_list_finished_personal_data_request_async(
    end: str,
    start: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of finished personal data requests (S2SGetListFinishedPersonalDataRequest)

    Scope: account

    Get list of finished personal data requests based on the finished time period.
    Unfinished personal data requests will not appear here, i.e. have Status **Pending**, **In-Progress** or **Canceled**.

    **Anonymize userId for deleted account:**
    For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
    This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/requests/finished

        method: GET

        tags: ["Data Retrieval (S2S)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - DtoListFinishedDataRequests (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SGetListFinishedPersonalDataRequest.create(
        end=end,
        start=start,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(S2SRequestDataRetrieval)
def s2s_request_data_retrieval(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user personal data retrieval request (S2SRequestDataRetrieval)

    Scope: account

    Submit user personal data retrieval request.

    **Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

    ---
    ## This API for S2S integration purpose only

    **Notes:**

    1. This API will **not send GDPR email notification** both for player and admin notification.

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests

        method: POST

        tags: ["Data Retrieval (S2S)"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsS2SDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SRequestDataRetrieval.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(S2SRequestDataRetrieval)
async def s2s_request_data_retrieval_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user personal data retrieval request (S2SRequestDataRetrieval)

    Scope: account

    Submit user personal data retrieval request.

    **Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

    ---
    ## This API for S2S integration purpose only

    **Notes:**

    1. This API will **not send GDPR email notification** both for player and admin notification.

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests

        method: POST

        tags: ["Data Retrieval (S2S)"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsS2SDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = S2SRequestDataRetrieval.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
