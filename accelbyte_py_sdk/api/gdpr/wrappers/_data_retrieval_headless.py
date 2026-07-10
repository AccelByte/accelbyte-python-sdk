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
from ..models import ModelsUserDataURL
from ..models import ModelsUserPersonalDataResponse
from ..models import ResponseError

from ..operations.data_retrieval_headless import PublicCancelMyPersonalDataRequest
from ..operations.data_retrieval_headless import PublicGenerateMyHeadlessPersonalDataURL
from ..operations.data_retrieval_headless import PublicGetMyPersonalDataRequests
from ..operations.data_retrieval_headless import (
    PublicSubmitMyHeadlessPersonalDataRequest,
)
from ..operations.data_retrieval_headless import PublicSubmitMyPersonalDataRequest


@same_doc_as(PublicCancelMyPersonalDataRequest)
def public_cancel_my_personal_data_request(
    request_date: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Cancel my personal data request (PublicCancelMyPersonalDataRequest)

    Cancel a pending Personal Data Request by its request date. Requires a valid access token.

    Properties:
        url: /gdpr/public/users/me/requests/{requestDate}

        method: DELETE

        tags: ["Data Retrieval - Headless"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        request_date: (requestDate) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicCancelMyPersonalDataRequest.create(
        request_date=request_date,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCancelMyPersonalDataRequest)
async def public_cancel_my_personal_data_request_async(
    request_date: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Cancel my personal data request (PublicCancelMyPersonalDataRequest)

    Cancel a pending Personal Data Request by its request date. Requires a valid access token.

    Properties:
        url: /gdpr/public/users/me/requests/{requestDate}

        method: DELETE

        tags: ["Data Retrieval - Headless"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        request_date: (requestDate) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicCancelMyPersonalDataRequest.create(
        request_date=request_date,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGenerateMyHeadlessPersonalDataURL)
def public_generate_my_headless_personal_data_url(
    request_date: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Generate my headless personal data download url (PublicGenerateMyHeadlessPersonalDataURL)

    Generate a download url for a completed Personal Data Request for headless account scenario (without a password).
    **Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
    Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
    The gdpr_token is issued by the IAM service during 3rd platform web authentication.

    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` instead.

    Properties:
        url: /gdpr/public/users/me/headless/requests/{requestDate}/generate

        method: POST

        tags: ["Data Retrieval - Headless"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        request_date: (requestDate) REQUIRED str in path

    Responses:
        200: OK - ModelsUserDataURL (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicGenerateMyHeadlessPersonalDataURL.create(
        request_date=request_date,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGenerateMyHeadlessPersonalDataURL)
async def public_generate_my_headless_personal_data_url_async(
    request_date: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Generate my headless personal data download url (PublicGenerateMyHeadlessPersonalDataURL)

    Generate a download url for a completed Personal Data Request for headless account scenario (without a password).
    **Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
    Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
    The gdpr_token is issued by the IAM service during 3rd platform web authentication.

    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` instead.

    Properties:
        url: /gdpr/public/users/me/headless/requests/{requestDate}/generate

        method: POST

        tags: ["Data Retrieval - Headless"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        request_date: (requestDate) REQUIRED str in path

    Responses:
        200: OK - ModelsUserDataURL (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicGenerateMyHeadlessPersonalDataURL.create(
        request_date=request_date,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyPersonalDataRequests)
def public_get_my_personal_data_requests(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get my personal data requests (PublicGetMyPersonalDataRequests)

    List my personal data requests. Requires a valid access token.

    Properties:
        url: /gdpr/public/users/me/requests

        method: GET

        tags: ["Data Retrieval - Headless"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsUserPersonalDataResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicGetMyPersonalDataRequests.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyPersonalDataRequests)
async def public_get_my_personal_data_requests_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get my personal data requests (PublicGetMyPersonalDataRequests)

    List my personal data requests. Requires a valid access token.

    Properties:
        url: /gdpr/public/users/me/requests

        method: GET

        tags: ["Data Retrieval - Headless"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsUserPersonalDataResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicGetMyPersonalDataRequests.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSubmitMyHeadlessPersonalDataRequest)
def public_submit_my_headless_personal_data_request(
    email: Optional[str] = None,
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit my headless personal data request (PublicSubmitMyHeadlessPersonalDataRequest)

    Submit a Personal Data Request for headless account scenario (without a password).
    **Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
    Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
    The gdpr_token is issued by the IAM service during 3rd platform web authentication.

    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/users/me/headless/requests

        method: POST

        tags: ["Data Retrieval - Headless"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        email: (email) OPTIONAL str in form_data

        language_tag: (languageTag) OPTIONAL str in form_data

    Responses:
        201: Created - ModelsDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicSubmitMyHeadlessPersonalDataRequest.create(
        email=email,
        language_tag=language_tag,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSubmitMyHeadlessPersonalDataRequest)
async def public_submit_my_headless_personal_data_request_async(
    email: Optional[str] = None,
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit my headless personal data request (PublicSubmitMyHeadlessPersonalDataRequest)

    Submit a Personal Data Request for headless account scenario (without a password).
    **Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
    Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
    The gdpr_token is issued by the IAM service during 3rd platform web authentication.

    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/users/me/headless/requests

        method: POST

        tags: ["Data Retrieval - Headless"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        email: (email) OPTIONAL str in form_data

        language_tag: (languageTag) OPTIONAL str in form_data

    Responses:
        201: Created - ModelsDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicSubmitMyHeadlessPersonalDataRequest.create(
        email=email,
        language_tag=language_tag,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSubmitMyPersonalDataRequest)
def public_submit_my_personal_data_request(
    platform_id: str,
    platform_token: str,
    email: Optional[str] = None,
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit my personal data request (PublicSubmitMyPersonalDataRequest)

    Submit a Personal Data Request authenticated by a platform token.
    Requires a valid access token.

    This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/users/me/requests

        method: POST

        tags: ["Data Retrieval - Headless"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        email: (email) OPTIONAL str in form_data

        language_tag: (languageTag) OPTIONAL str in form_data

        platform_id: (platformId) REQUIRED str in form_data

        platform_token: (platformToken) REQUIRED str in form_data

    Responses:
        201: Created - ModelsDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicSubmitMyPersonalDataRequest.create(
        platform_id=platform_id,
        platform_token=platform_token,
        email=email,
        language_tag=language_tag,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSubmitMyPersonalDataRequest)
async def public_submit_my_personal_data_request_async(
    platform_id: str,
    platform_token: str,
    email: Optional[str] = None,
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit my personal data request (PublicSubmitMyPersonalDataRequest)

    Submit a Personal Data Request authenticated by a platform token.
    Requires a valid access token.

    This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
    If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

    ### Request Header:
    - **Content-Type: application/x-www-form-urlencoded**

    Properties:
        url: /gdpr/public/users/me/requests

        method: POST

        tags: ["Data Retrieval - Headless"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        email: (email) OPTIONAL str in form_data

        language_tag: (languageTag) OPTIONAL str in form_data

        platform_id: (platformId) REQUIRED str in form_data

        platform_token: (platformToken) REQUIRED str in form_data

    Responses:
        201: Created - ModelsDataRetrievalResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = PublicSubmitMyPersonalDataRequest.create(
        platform_id=platform_id,
        platform_token=platform_token,
        email=email,
        language_tag=language_tag,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
