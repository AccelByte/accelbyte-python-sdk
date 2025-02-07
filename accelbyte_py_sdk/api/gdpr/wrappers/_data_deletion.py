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

from ..models import ModelsDeletionData
from ..models import ModelsDeletionStatus
from ..models import ModelsListDeletionDataResponse
from ..models import ModelsRequestDeleteResponse
from ..models import ResponseError

from ..operations.data_deletion import AdminCancelUserAccountDeletionRequest
from ..operations.data_deletion import AdminGetListDeletionDataRequest
from ..operations.data_deletion import AdminGetUserAccountDeletionRequest
from ..operations.data_deletion import AdminSubmitUserAccountDeletionRequest
from ..operations.data_deletion import PublicCancelMyAccountDeletionRequest
from ..operations.data_deletion import PublicCancelUserAccountDeletionRequest
from ..operations.data_deletion import PublicGetMyAccountDeletionStatus
from ..operations.data_deletion import PublicGetUserAccountDeletionStatus
from ..operations.data_deletion import PublicSubmitMyAccountDeletionRequest
from ..operations.data_deletion import PublicSubmitUserAccountDeletionRequest


@same_doc_as(AdminCancelUserAccountDeletionRequest)
def admin_cancel_user_account_deletion_request(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user's account deletion request (AdminCancelUserAccountDeletionRequest)

    Cancel user's account deletion request
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions

        method: DELETE

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

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
    request = AdminCancelUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCancelUserAccountDeletionRequest)
async def admin_cancel_user_account_deletion_request_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user's account deletion request (AdminCancelUserAccountDeletionRequest)

    Cancel user's account deletion request
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions

        method: DELETE

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

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
    request = AdminCancelUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetListDeletionDataRequest)
def admin_get_list_deletion_data_request(
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    request_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve all user's account deletion requests in specified date (AdminGetListDeletionDataRequest)

    Retrieve all user's account deletion requests in specified date
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/deletions

        method: GET

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        request_date: (requestDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsListDeletionDataResponse (OK)

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
    request = AdminGetListDeletionDataRequest.create(
        after=after,
        before=before,
        limit=limit,
        offset=offset,
        request_date=request_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetListDeletionDataRequest)
async def admin_get_list_deletion_data_request_async(
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    request_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve all user's account deletion requests in specified date (AdminGetListDeletionDataRequest)

    Retrieve all user's account deletion requests in specified date
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/deletions

        method: GET

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        request_date: (requestDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsListDeletionDataResponse (OK)

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
    request = AdminGetListDeletionDataRequest.create(
        after=after,
        before=before,
        limit=limit,
        offset=offset,
        request_date=request_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserAccountDeletionRequest)
def admin_get_user_account_deletion_request(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve specific user's account deletion request (AdminGetUserAccountDeletionRequest)

    Retrieve specific user's account deletion request
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions

        method: GET

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsDeletionData (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserAccountDeletionRequest)
async def admin_get_user_account_deletion_request_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve specific user's account deletion request (AdminGetUserAccountDeletionRequest)

    Retrieve specific user's account deletion request
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions

        method: GET

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsDeletionData (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSubmitUserAccountDeletionRequest)
def admin_submit_user_account_deletion_request(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user's account deletion request (AdminSubmitUserAccountDeletionRequest)

    Submit user's account deletion request.
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions

        method: POST

        tags: ["Data Deletion"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsRequestDeleteResponse (Created)

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
    request = AdminSubmitUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSubmitUserAccountDeletionRequest)
async def admin_submit_user_account_deletion_request_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user's account deletion request (AdminSubmitUserAccountDeletionRequest)

    Submit user's account deletion request.
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions

        method: POST

        tags: ["Data Deletion"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsRequestDeleteResponse (Created)

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
    request = AdminSubmitUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCancelMyAccountDeletionRequest)
def public_cancel_my_account_deletion_request(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Cancel my account deletion request (PublicCancelMyAccountDeletionRequest)

    Cancel my account deletion request
    Requires valid user access token

    Properties:
        url: /gdpr/public/users/me/deletions

        method: DELETE

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicCancelMyAccountDeletionRequest.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCancelMyAccountDeletionRequest)
async def public_cancel_my_account_deletion_request_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Cancel my account deletion request (PublicCancelMyAccountDeletionRequest)

    Cancel my account deletion request
    Requires valid user access token

    Properties:
        url: /gdpr/public/users/me/deletions

        method: DELETE

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicCancelMyAccountDeletionRequest.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCancelUserAccountDeletionRequest)
def public_cancel_user_account_deletion_request(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user's account deletion request (PublicCancelUserAccountDeletionRequest)

    Cancel user's account deletion request
    Requires valid user access token
    Scope: account

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/deletions

        method: DELETE

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCancelUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCancelUserAccountDeletionRequest)
async def public_cancel_user_account_deletion_request_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel user's account deletion request (PublicCancelUserAccountDeletionRequest)

    Cancel user's account deletion request
    Requires valid user access token
    Scope: account

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/deletions

        method: DELETE

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCancelUserAccountDeletionRequest.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyAccountDeletionStatus)
def public_get_my_account_deletion_status(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve my account deletion status (PublicGetMyAccountDeletionStatus)

    Retrieve my account deletion status
    Requires valid user access token

    Properties:
        url: /gdpr/public/users/me/deletions/status

        method: GET

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsDeletionStatus (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicGetMyAccountDeletionStatus.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyAccountDeletionStatus)
async def public_get_my_account_deletion_status_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Retrieve my account deletion status (PublicGetMyAccountDeletionStatus)

    Retrieve my account deletion status
    Requires valid user access token

    Properties:
        url: /gdpr/public/users/me/deletions/status

        method: GET

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsDeletionStatus (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicGetMyAccountDeletionStatus.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserAccountDeletionStatus)
def public_get_user_account_deletion_status(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve specific user's account deletion status (PublicGetUserAccountDeletionStatus)

    Retrieve specific user's account deletion status
    Requires valid user access token
    Scope: account

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status

        method: GET

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsDeletionStatus (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserAccountDeletionStatus.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserAccountDeletionStatus)
async def public_get_user_account_deletion_status_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve specific user's account deletion status (PublicGetUserAccountDeletionStatus)

    Retrieve specific user's account deletion status
    Requires valid user access token
    Scope: account

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status

        method: GET

        tags: ["Data Deletion"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsDeletionStatus (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserAccountDeletionStatus.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSubmitMyAccountDeletionRequest)
def public_submit_my_account_deletion_request(
    platform_id: str,
    platform_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit my account deletion requests. (PublicSubmitMyAccountDeletionRequest)

    Submit my account deletion requests.
    Requires valid user access token
    This is for in-game only and require a valid platformId and platform token. If a full account is not logged by 3rd platform, then please use [/gdpr/public/namespaces/{namespace}/users/{userId}/deletions](#operations-Data_Deletion-PublicSubmitUserAccountDeletionRequest)

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/users/me/deletions

        method: POST

        tags: ["Data Deletion"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_id: (platformId) REQUIRED str in form_data

        platform_token: (platformToken) REQUIRED str in form_data

    Responses:
        201: Created - ModelsRequestDeleteResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicSubmitMyAccountDeletionRequest.create(
        platform_id=platform_id,
        platform_token=platform_token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSubmitMyAccountDeletionRequest)
async def public_submit_my_account_deletion_request_async(
    platform_id: str,
    platform_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit my account deletion requests. (PublicSubmitMyAccountDeletionRequest)

    Submit my account deletion requests.
    Requires valid user access token
    This is for in-game only and require a valid platformId and platform token. If a full account is not logged by 3rd platform, then please use [/gdpr/public/namespaces/{namespace}/users/{userId}/deletions](#operations-Data_Deletion-PublicSubmitUserAccountDeletionRequest)

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/users/me/deletions

        method: POST

        tags: ["Data Deletion"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_id: (platformId) REQUIRED str in form_data

        platform_token: (platformToken) REQUIRED str in form_data

    Responses:
        201: Created - ModelsRequestDeleteResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicSubmitMyAccountDeletionRequest.create(
        platform_id=platform_id,
        platform_token=platform_token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSubmitUserAccountDeletionRequest)
def public_submit_user_account_deletion_request(
    password: str,
    user_id: str,
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user's account deletion request (PublicSubmitUserAccountDeletionRequest)

    Submit user's account deletion request.
    Requires valid user access token and password
    Scope: account

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/deletions

        method: POST

        tags: ["Data Deletion"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in form_data

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsRequestDeleteResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

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
    request = PublicSubmitUserAccountDeletionRequest.create(
        password=password,
        user_id=user_id,
        language_tag=language_tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSubmitUserAccountDeletionRequest)
async def public_submit_user_account_deletion_request_async(
    password: str,
    user_id: str,
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit user's account deletion request (PublicSubmitUserAccountDeletionRequest)

    Submit user's account deletion request.
    Requires valid user access token and password
    Scope: account

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/namespaces/{namespace}/users/{userId}/deletions

        method: POST

        tags: ["Data Deletion"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in form_data

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsRequestDeleteResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

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
    request = PublicSubmitUserAccountDeletionRequest.create(
        password=password,
        user_id=user_id,
        language_tag=language_tag,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
