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

from ..models import LogAppMessageDeclaration
from ..models import ModelsPartyData
from ..models import ModelsPartyPUTCustomAttributesRequest
from ..models import RestapiErrorResponseBody

from ..operations.lobby_operations import AdminJoinPartyV1
from ..operations.lobby_operations import AdminUpdatePartyAttributesV1
from ..operations.lobby_operations import PublicGetMessages


@deprecated
@same_doc_as(AdminJoinPartyV1)
def admin_join_party_v1(
    party_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin join a player into a party (adminJoinPartyV1)

    Admin join a player into a party.

    Properties:
        url: /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}

        method: POST

        tags: ["Lobby Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

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
    request = AdminJoinPartyV1.create(
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminJoinPartyV1)
async def admin_join_party_v1_async(
    party_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin join a player into a party (adminJoinPartyV1)

    Admin join a player into a party.

    Properties:
        url: /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}

        method: POST

        tags: ["Lobby Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        202: Accepted - (Accepted)

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
    request = AdminJoinPartyV1.create(
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminUpdatePartyAttributesV1)
def admin_update_party_attributes_v1(
    body: ModelsPartyPUTCustomAttributesRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update party attributes (adminUpdatePartyAttributesV1)

    Update party attributes in a namespace.

    Properties:
        url: /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes

        method: PUT

        tags: ["Lobby Operations"]

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
    request = AdminUpdatePartyAttributesV1.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUpdatePartyAttributesV1)
async def admin_update_party_attributes_v1_async(
    body: ModelsPartyPUTCustomAttributesRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update party attributes (adminUpdatePartyAttributesV1)

    Update party attributes in a namespace.

    Properties:
        url: /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes

        method: PUT

        tags: ["Lobby Operations"]

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
    request = AdminUpdatePartyAttributesV1.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMessages)
def public_get_messages(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """get service messages (publicGetMessages)

    get the list of messages.

    Properties:
        url: /lobby/v1/messages

        method: GET

        tags: ["Lobby Operations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[LogAppMessageDeclaration] (OK)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    request = PublicGetMessages.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMessages)
async def public_get_messages_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """get service messages (publicGetMessages)

    get the list of messages.

    Properties:
        url: /lobby/v1/messages

        method: GET

        tags: ["Lobby Operations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[LogAppMessageDeclaration] (OK)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    request = PublicGetMessages.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
