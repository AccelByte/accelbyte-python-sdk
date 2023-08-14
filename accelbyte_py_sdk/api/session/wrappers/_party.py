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

from ..models import ApimodelsCreatePartyRequest
from ..models import ApimodelsJoinByCodeRequest
from ..models import ApimodelsKickResponse
from ..models import ApimodelsPartyQueryResponse
from ..models import ApimodelsPartySessionResponse
from ..models import ApimodelsPromoteLeaderRequest
from ..models import ApimodelsSessionInviteRequest
from ..models import ApimodelsUpdatePartyRequest
from ..models import ResponseError

from ..operations.party import AdminQueryParties
from ..operations.party import PublicCreateParty
from ..operations.party import PublicGeneratePartyCode
from ..operations.party import PublicGetParty
from ..operations.party import PublicPartyInvite
from ..operations.party import PublicPartyJoin
from ..operations.party import PublicPartyJoinCode
from ..operations.party import PublicPartyKick
from ..operations.party import PublicPartyLeave
from ..operations.party import PublicPartyReject
from ..operations.party import PublicPatchUpdateParty
from ..operations.party import PublicPromotePartyLeader
from ..operations.party import PublicQueryMyParties
from ..operations.party import PublicRevokePartyCode
from ..operations.party import PublicUpdateParty


@same_doc_as(AdminQueryParties)
def admin_query_parties(
    joinability: Optional[str] = None,
    key: Optional[str] = None,
    leader_id: Optional[str] = None,
    limit: Optional[int] = None,
    member_id: Optional[str] = None,
    member_status: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    party_id: Optional[str] = None,
    value: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query parties. Requires ADMIN:NAMESPACE:{namespace}:SESSION:PARTY [READ] (adminQueryParties)

    Query parties.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        joinability: (joinability) OPTIONAL str in query

        key: (key) OPTIONAL str in query

        leader_id: (leaderID) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        member_id: (memberID) OPTIONAL str in query

        member_status: (memberStatus) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        value: (value) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminQueryParties.create(
        joinability=joinability,
        key=key,
        leader_id=leader_id,
        limit=limit,
        member_id=member_id,
        member_status=member_status,
        offset=offset,
        order=order,
        order_by=order_by,
        party_id=party_id,
        value=value,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryParties)
async def admin_query_parties_async(
    joinability: Optional[str] = None,
    key: Optional[str] = None,
    leader_id: Optional[str] = None,
    limit: Optional[int] = None,
    member_id: Optional[str] = None,
    member_status: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    party_id: Optional[str] = None,
    value: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query parties. Requires ADMIN:NAMESPACE:{namespace}:SESSION:PARTY [READ] (adminQueryParties)

    Query parties.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        joinability: (joinability) OPTIONAL str in query

        key: (key) OPTIONAL str in query

        leader_id: (leaderID) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        member_id: (memberID) OPTIONAL str in query

        member_status: (memberStatus) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        value: (value) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminQueryParties.create(
        joinability=joinability,
        key=key,
        leader_id=leader_id,
        limit=limit,
        member_id=member_id,
        member_status=member_status,
        offset=offset,
        order=order,
        order_by=order_by,
        party_id=party_id,
        value=value,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateParty)
def public_create_party(
    body: ApimodelsCreatePartyRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a party. Requires NAMESPACE:{namespace}:SESSION:PARTY [CREATE] (publicCreateParty)

    A join code will be autogenerated if the party is joinable.
    Creator will be removed from previous party (if any) and automatically join into the created party as a leader.
    Party members will be sent invitation to join the party.
    Session configuration name is optional.
    Default configuration name if empty:
    {
    "name": "default",
    "type": "NONE",
    "joinability": "OPEN",
    "minPlayers": 1,
    "maxPlayers": 8,
    "inviteTimeout": 60,
    "inactiveTimeout": 60,
    "textChat": false
    }

    Supported platforms:
    1. STEAM
    2. PSN
    3. XBOX

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/party

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreatePartyRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateParty.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateParty)
async def public_create_party_async(
    body: ApimodelsCreatePartyRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a party. Requires NAMESPACE:{namespace}:SESSION:PARTY [CREATE] (publicCreateParty)

    A join code will be autogenerated if the party is joinable.
    Creator will be removed from previous party (if any) and automatically join into the created party as a leader.
    Party members will be sent invitation to join the party.
    Session configuration name is optional.
    Default configuration name if empty:
    {
    "name": "default",
    "type": "NONE",
    "joinability": "OPEN",
    "minPlayers": 1,
    "maxPlayers": 8,
    "inviteTimeout": 60,
    "inactiveTimeout": 60,
    "textChat": false
    }

    Supported platforms:
    1. STEAM
    2. PSN
    3. XBOX

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/party

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreatePartyRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateParty.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGeneratePartyCode)
def public_generate_party_code(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate party code. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicGeneratePartyCode)

    Generate a new code for the party. Only leader can generate a code.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/code

        method: POST

        tags: ["Party"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGeneratePartyCode.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGeneratePartyCode)
async def public_generate_party_code_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate party code. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicGeneratePartyCode)

    Generate a new code for the party. Only leader can generate a code.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/code

        method: POST

        tags: ["Party"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGeneratePartyCode.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetParty)
def public_get_party(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get party details. Requires NAMESPACE:{namespace}:SESSION:PARTY [READ] (publicGetParty)

    Get party details.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetParty.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetParty)
async def public_get_party_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get party details. Requires NAMESPACE:{namespace}:SESSION:PARTY [READ] (publicGetParty)

    Get party details.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetParty.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPartyInvite)
def public_party_invite(
    body: ApimodelsSessionInviteRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite a user to a party. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [CREATE] (publicPartyInvite)

    Invite a user to a party.
    platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
    supported platforms:
    - STEAM
    - XBOX
    - PSN

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSessionInviteRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        201: Created - (Created)

        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyInvite.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPartyInvite)
async def public_party_invite_async(
    body: ApimodelsSessionInviteRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite a user to a party. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [CREATE] (publicPartyInvite)

    Invite a user to a party.
    platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
    supported platforms:
    - STEAM
    - XBOX
    - PSN

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSessionInviteRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        201: Created - (Created)

        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyInvite.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPartyJoin)
def public_party_join(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join a party. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [CREATE] (publicPartyJoin)

    Join a party. The user can either join a party they have been invited to, or any party with an "open" joinable setting.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join

        method: POST

        tags: ["Party"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyJoin.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPartyJoin)
async def public_party_join_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join a party. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [CREATE] (publicPartyJoin)

    Join a party. The user can either join a party they have been invited to, or any party with an "open" joinable setting.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join

        method: POST

        tags: ["Party"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyJoin.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPartyJoinCode)
def public_party_join_code(
    body: ApimodelsJoinByCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join a party by code. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [CREATE] (publicPartyJoinCode)

    Join a party by code. The user can join a party as long as the code is valid

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/users/me/join/code

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsJoinByCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyJoinCode.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPartyJoinCode)
async def public_party_join_code_async(
    body: ApimodelsJoinByCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join a party by code. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [CREATE] (publicPartyJoinCode)

    Join a party by code. The user can join a party as long as the code is valid

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/users/me/join/code

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsJoinByCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyJoinCode.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPartyKick)
def public_party_kick(
    party_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Kick a player from a party. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [DELETE] (publicPartyKick)

    Kick a player from a party. Requires invoker to be the party leader.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/kick

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsKickResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyKick.create(
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPartyKick)
async def public_party_kick_async(
    party_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Kick a player from a party. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [DELETE] (publicPartyKick)

    Kick a player from a party. Requires invoker to be the party leader.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/kick

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsKickResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyKick.create(
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPartyLeave)
def public_party_leave(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Leave a party. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [DELETE] (publicPartyLeave)

    Leave a party

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyLeave.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPartyLeave)
async def public_party_leave_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Leave a party. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [DELETE] (publicPartyLeave)

    Leave a party

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyLeave.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPartyReject)
def public_party_reject(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject a party invitation. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [DELETE] (publicPartyReject)

    Reject a party invitation.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyReject.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPartyReject)
async def public_party_reject_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject a party invitation. Requires NAMESPACE:{namespace}:SESSION:PARTY:PLAYER [DELETE] (publicPartyReject)

    Reject a party invitation.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPartyReject.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPatchUpdateParty)
def public_patch_update_party(
    body: ApimodelsUpdatePartyRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Patch update a party. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicPatchUpdateParty)

    Update specified fields from party data. Note: Join type can only be updated by the party's leader.

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}

        method: PATCH

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdatePartyRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPatchUpdateParty.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPatchUpdateParty)
async def public_patch_update_party_async(
    body: ApimodelsUpdatePartyRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Patch update a party. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicPatchUpdateParty)

    Update specified fields from party data. Note: Join type can only be updated by the party's leader.

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}

        method: PATCH

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdatePartyRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPatchUpdateParty.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPromotePartyLeader)
def public_promote_party_leader(
    body: ApimodelsPromoteLeaderRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Promote new party leader. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicPromotePartyLeader)

    Promotes a party member to be a party leader. Only leader can promote a new leader.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPromoteLeaderRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPromotePartyLeader.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPromotePartyLeader)
async def public_promote_party_leader_async(
    body: ApimodelsPromoteLeaderRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Promote new party leader. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicPromotePartyLeader)

    Promotes a party member to be a party leader. Only leader can promote a new leader.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/leader

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPromoteLeaderRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPromotePartyLeader.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryMyParties)
def public_query_my_parties(
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query my parties. Require valid JWT. (publicQueryMyParties)

    Query user's parties. By default, API will return a list of user's active parties.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/parties

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryMyParties.create(
        order=order,
        order_by=order_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryMyParties)
async def public_query_my_parties_async(
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query my parties. Require valid JWT. (publicQueryMyParties)

    Query user's parties. By default, API will return a list of user's active parties.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/parties

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryMyParties.create(
        order=order,
        order_by=order_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicRevokePartyCode)
def public_revoke_party_code(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke party code. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicRevokePartyCode)

    Revoke code of the party. Only leader can revoke a code.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/code

        method: DELETE

        tags: ["Party"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRevokePartyCode.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicRevokePartyCode)
async def public_revoke_party_code_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke party code. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicRevokePartyCode)

    Revoke code of the party. Only leader can revoke a code.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/code

        method: DELETE

        tags: ["Party"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRevokePartyCode.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateParty)
def public_update_party(
    body: ApimodelsUpdatePartyRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a party. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicUpdateParty)

    Updates party blob, this endpoint will override stored party data.

    Join type can only be updated by the party's leader.
    To update only specified fields, please use following endpoint:
    method : PATCH
    API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}

        method: PUT

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdatePartyRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateParty.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateParty)
async def public_update_party_async(
    body: ApimodelsUpdatePartyRequest,
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a party. Requires NAMESPACE:{namespace}:SESSION:PARTY [UPDATE] (publicUpdateParty)

    Updates party blob, this endpoint will override stored party data.

    Join type can only be updated by the party's leader.
    To update only specified fields, please use following endpoint:
    method : PATCH
    API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}

        method: PUT

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdatePartyRequest in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartySessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateParty.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
