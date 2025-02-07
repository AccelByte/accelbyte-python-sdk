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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ModelsPartyData
from ..models import ModelsPartyPUTCustomAttributesRequest
from ..models import ModelsPartyPUTLimitSizeRequest
from ..models import RestapiErrorResponseBody

from ..operations.party import AdminGetPartyDataV1
from ..operations.party import AdminGetUserPartyV1
from ..operations.party import PublicGetPartyDataV1
from ..operations.party import PublicSetPartyLimitV1
from ..operations.party import PublicUpdatePartyAttributesV1


@deprecated
@same_doc_as(AdminGetPartyDataV1)
def admin_get_party_data_v1(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get party data (adminGetPartyDataV1)

    Get party data in a namespace.

    Properties:
        url: /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}

        method: GET

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ModelsPartyData (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPartyDataV1.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetPartyDataV1)
async def admin_get_party_data_v1_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get party data (adminGetPartyDataV1)

    Get party data in a namespace.

    Properties:
        url: /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}

        method: GET

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ModelsPartyData (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPartyDataV1.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetUserPartyV1)
def admin_get_user_party_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get user party data (adminGetUserPartyV1)

    Get party data in a namespace.

    Properties:
        url: /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party

        method: GET

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPartyData (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserPartyV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetUserPartyV1)
async def admin_get_user_party_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get user party data (adminGetUserPartyV1)

    Get party data in a namespace.

    Properties:
        url: /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party

        method: GET

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsPartyData (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserPartyV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetPartyDataV1)
def public_get_party_data_v1(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get party data by party id (publicGetPartyDataV1)

    Required valid user authorization


    load personal party data in a namespace based on Party ID

    Action Code: 50101

    Properties:
        url: /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}

        method: GET

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ModelsPartyData (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPartyDataV1.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetPartyDataV1)
async def public_get_party_data_v1_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get party data by party id (publicGetPartyDataV1)

    Required valid user authorization


    load personal party data in a namespace based on Party ID

    Action Code: 50101

    Properties:
        url: /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}

        method: GET

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ModelsPartyData (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPartyDataV1.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicSetPartyLimitV1)
def public_set_party_limit_v1(
    body: ModelsPartyPUTLimitSizeRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """set party limit (publicSetPartyLimitV1)

    Required valid user authorization


    Set party limit, only party leader can call this endpoint.

    Properties:
        url: /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit

        method: PUT

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPartyPUTLimitSizeRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSetPartyLimitV1.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicSetPartyLimitV1)
async def public_set_party_limit_v1_async(
    body: ModelsPartyPUTLimitSizeRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """set party limit (publicSetPartyLimitV1)

    Required valid user authorization


    Set party limit, only party leader can call this endpoint.

    Properties:
        url: /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit

        method: PUT

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPartyPUTLimitSizeRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSetPartyLimitV1.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicUpdatePartyAttributesV1)
def public_update_party_attributes_v1(
    body: ModelsPartyPUTCustomAttributesRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update party attributes (publicUpdatePartyAttributesV1)

    Required valid user authorization


    update party attributes in a namespace.

    Properties:
        url: /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes

        method: PUT

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPartyPUTCustomAttributesRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ModelsPartyData (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        412: Precondition Failed - RestapiErrorResponseBody (Precondition Failed)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdatePartyAttributesV1.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicUpdatePartyAttributesV1)
async def public_update_party_attributes_v1_async(
    body: ModelsPartyPUTCustomAttributesRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update party attributes (publicUpdatePartyAttributesV1)

    Required valid user authorization


    update party attributes in a namespace.

    Properties:
        url: /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes

        method: PUT

        tags: ["party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPartyPUTCustomAttributesRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ModelsPartyData (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        412: Precondition Failed - RestapiErrorResponseBody (Precondition Failed)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdatePartyAttributesV1.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
