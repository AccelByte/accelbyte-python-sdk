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

from ..models import ModelsDataRetrievalResponse
from ..models import ModelsListPersonalDataResponse
from ..models import ModelsUserDataURL
from ..models import ModelsUserPersonalDataResponse
from ..models import ResponseError

from ..operations.data_retrieval import AdminCancelUserPersonalDataRequest
from ..operations.data_retrieval import AdminGeneratePersonalDataURL
from ..operations.data_retrieval import AdminGetListPersonalDataRequest
from ..operations.data_retrieval import AdminGetUserPersonalDataRequests
from ..operations.data_retrieval import AdminRequestDataRetrieval
from ..operations.data_retrieval import PublicCancelUserPersonalDataRequest
from ..operations.data_retrieval import PublicGeneratePersonalDataURL
from ..operations.data_retrieval import PublicGetUserPersonalDataRequests
from ..operations.data_retrieval import PublicRequestDataRetrieval


@same_doc_as(AdminCancelUserPersonalDataRequest)
def admin_cancel_user_personal_data_request(
    request_date: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user's personal data requests (AdminCancelUserPersonalDataRequest)

    Cancel user's personal data requests
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}

        method: DELETE

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCancelUserPersonalDataRequest.create(
        request_date=request_date,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCancelUserPersonalDataRequest)
async def admin_cancel_user_personal_data_request_async(
    request_date: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user's personal data requests (AdminCancelUserPersonalDataRequest)

    Cancel user's personal data requests
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}

        method: DELETE

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCancelUserPersonalDataRequest.create(
        request_date=request_date,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGeneratePersonalDataURL)
def admin_generate_personal_data_url(
    request_date: str,
    user_id: str,
    password: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate personal data download url (AdminGeneratePersonalDataURL)

    Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]` and scope `account`




    If admin request data for themselves, password is need to be set

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate

        method: POST

        tags: ["Data Retrieval"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        password: (password) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserDataURL (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGeneratePersonalDataURL.create(
        request_date=request_date,
        user_id=user_id,
        password=password,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGeneratePersonalDataURL)
async def admin_generate_personal_data_url_async(
    request_date: str,
    user_id: str,
    password: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate personal data download url (AdminGeneratePersonalDataURL)

    Required permission `ADMIN:NAMESPACE:{namespace}:INFORMATION:USER:{userId} [READ]` and scope `account`




    If admin request data for themselves, password is need to be set

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate

        method: POST

        tags: ["Data Retrieval"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        password: (password) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserDataURL (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGeneratePersonalDataURL.create(
        request_date=request_date,
        user_id=user_id,
        password=password,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetListPersonalDataRequest)
def admin_get_list_personal_data_request(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    request_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list personal data requests (AdminGetListPersonalDataRequest)

    Get list personal data requests
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/requests

        method: GET

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        request_date: (requestDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsListPersonalDataResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetListPersonalDataRequest.create(
        limit=limit,
        offset=offset,
        request_date=request_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetListPersonalDataRequest)
async def admin_get_list_personal_data_request_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    request_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list personal data requests (AdminGetListPersonalDataRequest)

    Get list personal data requests
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/requests

        method: GET

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        request_date: (requestDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsListPersonalDataResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetListPersonalDataRequest.create(
        limit=limit,
        offset=offset,
        request_date=request_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserPersonalDataRequests)
def admin_get_user_personal_data_requests(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's personal data requests (AdminGetUserPersonalDataRequests)

    Get user's personal data requests
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/requests

        method: GET

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsUserPersonalDataResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserPersonalDataRequests.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserPersonalDataRequests)
async def admin_get_user_personal_data_requests_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's personal data requests (AdminGetUserPersonalDataRequests)

    Get user's personal data requests
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/requests

        method: GET

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsUserPersonalDataResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserPersonalDataRequests.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRequestDataRetrieval)
def admin_request_data_retrieval(
    user_id: str,
    password: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user personal data retrieval request (AdminRequestDataRetrieval)

    Submit user personal data retrieval request.
    Scope: account

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/requests

        method: POST

        tags: ["Data Retrieval"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        password: (password) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRequestDataRetrieval.create(
        user_id=user_id,
        password=password,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRequestDataRetrieval)
async def admin_request_data_retrieval_async(
    user_id: str,
    password: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user personal data retrieval request (AdminRequestDataRetrieval)

    Submit user personal data retrieval request.
    Scope: account

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/requests

        method: POST

        tags: ["Data Retrieval"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        password: (password) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRequestDataRetrieval.create(
        user_id=user_id,
        password=password,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCancelUserPersonalDataRequest)
def public_cancel_user_personal_data_request(
    request_date: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user's personal data requests (PublicCancelUserPersonalDataRequest)

    Cancel user's personal data requests
    Requires valid user access token
    Scope: account

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}

        method: DELETE

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCancelUserPersonalDataRequest.create(
        request_date=request_date,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCancelUserPersonalDataRequest)
async def public_cancel_user_personal_data_request_async(
    request_date: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user's personal data requests (PublicCancelUserPersonalDataRequest)

    Cancel user's personal data requests
    Requires valid user access token
    Scope: account

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}

        method: DELETE

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCancelUserPersonalDataRequest.create(
        request_date=request_date,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGeneratePersonalDataURL)
def public_generate_personal_data_url(
    password: str,
    request_date: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate personal data download url (PublicGeneratePersonalDataURL)

    Generate personal data download url
    Requires valid user access token
    Scope: account

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate

        method: POST

        tags: ["Data Retrieval"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserDataURL (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGeneratePersonalDataURL.create(
        password=password,
        request_date=request_date,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGeneratePersonalDataURL)
async def public_generate_personal_data_url_async(
    password: str,
    request_date: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate personal data download url (PublicGeneratePersonalDataURL)

    Generate personal data download url
    Requires valid user access token
    Scope: account

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate

        method: POST

        tags: ["Data Retrieval"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        request_date: (requestDate) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserDataURL (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGeneratePersonalDataURL.create(
        password=password,
        request_date=request_date,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserPersonalDataRequests)
def public_get_user_personal_data_requests(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's personal data requests (PublicGetUserPersonalDataRequests)

    Get user's personal data requests
    Requires valid user access token
    Scope: account

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/requests

        method: GET

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsUserPersonalDataResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserPersonalDataRequests.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserPersonalDataRequests)
async def public_get_user_personal_data_requests_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's personal data requests (PublicGetUserPersonalDataRequests)

    Get user's personal data requests
    Requires valid user access token
    Scope: account

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/requests

        method: GET

        tags: ["Data Retrieval"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsUserPersonalDataResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserPersonalDataRequests.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicRequestDataRetrieval)
def public_request_data_retrieval(
    password: str,
    user_id: str,
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit personal data retrieval request (PublicRequestDataRetrieval)

    Submit personal data retrieval request.
    Scope: account

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/requests

        method: POST

        tags: ["Data Retrieval"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in form_data

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicRequestDataRetrieval.create(
        password=password,
        user_id=user_id,
        language_tag=language_tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicRequestDataRetrieval)
async def public_request_data_retrieval_async(
    password: str,
    user_id: str,
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit personal data retrieval request (PublicRequestDataRetrieval)

    Submit personal data retrieval request.
    Scope: account

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/requests

        method: POST

        tags: ["Data Retrieval"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in form_data

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicRequestDataRetrieval.create(
        password=password,
        user_id=user_id,
        language_tag=language_tag,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
