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

from ..models import ModelsDeletionStatus
from ..models import ModelsRequestDeleteResponse
from ..models import ResponseError

from ..operations.data_deletion_headless import PublicCancelMyAccountDeletionRequest
from ..operations.data_deletion_headless import PublicGetMyAccountDeletionStatus
from ..operations.data_deletion_headless import PublicSubmitMyAccountDeletionRequest
from ..operations.data_deletion_headless import PublicSubmitMyHeadlessDeletionRequest


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

        tags: ["Data Deletion - Headless"]

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

        tags: ["Data Deletion - Headless"]

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

        tags: ["Data Deletion - Headless"]

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

        tags: ["Data Deletion - Headless"]

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


@same_doc_as(PublicSubmitMyAccountDeletionRequest)
def public_submit_my_account_deletion_request(
    platform_id: str,
    platform_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit my account deletion request (PublicSubmitMyAccountDeletionRequest)

    Submit an Account Deletion Request authenticated by a platform token.
    Requires a valid access token.

    This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/users/me/deletions

        method: POST

        tags: ["Data Deletion - Headless"]

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
    """Submit my account deletion request (PublicSubmitMyAccountDeletionRequest)

    Submit an Account Deletion Request authenticated by a platform token.
    Requires a valid access token.

    This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/users/me/deletions

        method: POST

        tags: ["Data Deletion - Headless"]

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


@same_doc_as(PublicSubmitMyHeadlessDeletionRequest)
def public_submit_my_headless_deletion_request(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Submit my headless account deletion request (PublicSubmitMyHeadlessDeletionRequest)

    Submit an Account Deletion Request for headless account scenario (without a password).
    **Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
    Requires a valid access token and a fresh **gdpr_token** cookie (max-age 10 seconds).
    The gdpr_token is issued by the IAM service during 3rd platform web authentication.

    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.

    Properties:
        url: /gdpr/public/users/me/headless/deletions

        method: POST

        tags: ["Data Deletion - Headless"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        201: Created - ModelsRequestDeleteResponse (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicSubmitMyHeadlessDeletionRequest.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSubmitMyHeadlessDeletionRequest)
async def public_submit_my_headless_deletion_request_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Submit my headless account deletion request (PublicSubmitMyHeadlessDeletionRequest)

    Submit an Account Deletion Request for headless account scenario (without a password).
    **Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
    Requires a valid access token and a fresh **gdpr_token** cookie (max-age 10 seconds).
    The gdpr_token is issued by the IAM service during 3rd platform web authentication.

    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.

    Properties:
        url: /gdpr/public/users/me/headless/deletions

        method: POST

        tags: ["Data Deletion - Headless"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        201: Created - ModelsRequestDeleteResponse (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicSubmitMyHeadlessDeletionRequest.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
