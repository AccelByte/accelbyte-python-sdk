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
from ..models import ApimodelsDeleteBulkPartySessionRequest
from ..models import ApimodelsDeleteBulkPartySessionsAPIResponse
from ..models import ApimodelsJoinByCodeRequest
from ..models import ApimodelsKickResponse
from ..models import ApimodelsPartyQueryResponse
from ..models import ApimodelsPartySessionResponse
from ..models import ApimodelsPromoteLeaderRequest
from ..models import ApimodelsSessionInviteRequest
from ..models import ApimodelsSessionInviteResponse
from ..models import ApimodelsUpdatePartyRequest
from ..models import ResponseError

from ..operations.party import AdminDeleteBulkParties
from ..operations.party import AdminQueryParties
from ..operations.party import AdminSyncNativeSession
from ..operations.party import PublicCreateParty
from ..operations.party import PublicGeneratePartyCode
from ..operations.party import PublicGetParty
from ..operations.party import PublicPartyCancel
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


@same_doc_as(AdminDeleteBulkParties)
def admin_delete_bulk_parties(
    body: ApimodelsDeleteBulkPartySessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete bulk parties. (adminDeleteBulkParties)

    Delete bulk parties.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties/bulk

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsDeleteBulkPartySessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsDeleteBulkPartySessionsAPIResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteBulkParties.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteBulkParties)
async def admin_delete_bulk_parties_async(
    body: ApimodelsDeleteBulkPartySessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete bulk parties. (adminDeleteBulkParties)

    Delete bulk parties.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties/bulk

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsDeleteBulkPartySessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsDeleteBulkPartySessionsAPIResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteBulkParties.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryParties)
def admin_query_parties(
    from_time: Optional[str] = None,
    is_soft_deleted: Optional[str] = None,
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
    to_time: Optional[str] = None,
    value: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query parties. (adminQueryParties)

    Query parties.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        from_time: (fromTime) OPTIONAL str in query

        is_soft_deleted: (isSoftDeleted) OPTIONAL str in query

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

        to_time: (toTime) OPTIONAL str in query

        value: (value) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryParties.create(
        from_time=from_time,
        is_soft_deleted=is_soft_deleted,
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
        to_time=to_time,
        value=value,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryParties)
async def admin_query_parties_async(
    from_time: Optional[str] = None,
    is_soft_deleted: Optional[str] = None,
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
    to_time: Optional[str] = None,
    value: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query parties. (adminQueryParties)

    Query parties.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties

        method: GET

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        from_time: (fromTime) OPTIONAL str in query

        is_soft_deleted: (isSoftDeleted) OPTIONAL str in query

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

        to_time: (toTime) OPTIONAL str in query

        value: (value) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryParties.create(
        from_time=from_time,
        is_soft_deleted=is_soft_deleted,
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
        to_time=to_time,
        value=value,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSyncNativeSession)
def admin_sync_native_session(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Trigger user's active party session to native platform. (adminSyncNativeSession)

    Trigger user's active party session to native platform.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSyncNativeSession.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSyncNativeSession)
async def admin_sync_native_session_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Trigger user's active party session to native platform. (adminSyncNativeSession)

    Trigger user's active party session to native platform.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync

        method: POST

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSyncNativeSession.create(
        user_id=user_id,
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
    """Create a party. (publicCreateParty)

    A join code will be autogenerated if the party is joinable.

    A user can be in 1 party at a time, therefore the requester will be removed from their previous party (if any) and automatically added/joined into this newly created party as a leader.

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
    When session configuration "name" is provided, we will refer to the template if these fields are empty:
    - textChat
    - minPlayers
    - maxPlayers
    - inviteTimeout
    - inactiveTimeout
    - type
    - joinability
    - configurationName
    - attributes

    Supported platforms:
    1. STEAM
    2. PSN
    3. XBOX

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

    Session has 2 fields for user status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.

    User statuses:
    1. INVITED: by default, to join a session (except session with OPEN joinability or if session configuration has "autoJoin" sets to True) a user will receive an invite. The invitee will have the chance to respond within "inviteTimeout" which you can configure through session configuration.
    2. TIMEOUT: when a user is invited to a session, they will receive an invite. Unless "disableResendInvite" sets to True in the session configuration, the user will also receive invite reminder every 30s until they respond to the invite.
    3. REJECTED: when a user rejects an invite. To rejoin an INVITE_ONLY session, they will need to be re-invited and accept the invite.
    4. JOINED: there are few ways of a user to join a session, by invite, direct join (depends on session joinability) or join by code. upon invite, once a user accepts an invite, their status will be changed to JOINED.
    5. LEFT: user can leave a session. in case of party, a user can only be in 1 party at a time. therefore when they decide to create or join another party, they will be automatically removed from their initial party and their status will be changed to LEFT.
    6. KICKED: only party leader can kick a member.
    7. DISCONNECTED: if user still have reserved seat in the session and they disconnect lobby websocket, their status in the session will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. the user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration.
    8. CONNECTED: when a user reconnect their lobby websocket, their status will change from DISCONNECTED to CONNECTED, only if they previously JOINED session. if they were on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
    9. DROPPED: when "inactiveTimeout" is due and user never re-establish their websocket connection, we will drop them from the session.
    10. TERMINATED: only applies to game session. If a game session (match) is ended, DS will end/delete the session and we will mark all remaining users' status to be TERMINATED.
    11. CANCELLED: when a session joinability changes to CLOSED, any remaining invites will be canceled.

    User is considered as active if they're present in the session, which their status either CONNECTED or JOINED.
    User has a reserved seat in the session if their status either INVITED, JOINED, CONNECTED, DISCONNECTED. When user's' status change to other than these mentioned statuses, we will release the seat for other players to occupy.

    Managing the relation between session and lobby websocket connection:
    - Session relies on lobby to consider player's connection health to our backend. therefore a disruption to lobby websocket will be reflected in the user's status in all of their session(s).
    - If user still have a reserved seat in the session and they disconnect lobby websocket, their status in session(s) will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. This "members.previousStatus" used to track user's previous status before they disconnect websocket, since we still reserve a seat for them, therefore this field will be empty again after they websocket.
    - If the disconnected user is the leader of the session they're disconnected from, we will wait until "leaderElectionGracePeriod" is due, to promote the next oldest member as the new leader of the session. You can configure "leaderElectionGracePeriod" through session configuration.
    - The user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration. If until "inactiveTimeout" is due and the user doesn't reconnect their websocket, they will be removed from session and their status will change to DROPPED. If the dropped user was the leader of the session, we will promote the next oldest member as leader.
    - By default, we will update user's status to what it was before disconnect, when the user reconnects lobby websocket, unless "manualRejoin" sets to True in the session configuration. When "manualRejoin" is enabled, after lobby websocket reconnect, the game client will need to manually invoke join session again to rejoin the session.
    - If the user was on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
    - ttlHours is how long the session will active, max value is 168 hours

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Create a party. (publicCreateParty)

    A join code will be autogenerated if the party is joinable.

    A user can be in 1 party at a time, therefore the requester will be removed from their previous party (if any) and automatically added/joined into this newly created party as a leader.

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
    When session configuration "name" is provided, we will refer to the template if these fields are empty:
    - textChat
    - minPlayers
    - maxPlayers
    - inviteTimeout
    - inactiveTimeout
    - type
    - joinability
    - configurationName
    - attributes

    Supported platforms:
    1. STEAM
    2. PSN
    3. XBOX

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

    Session has 2 fields for user status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.

    User statuses:
    1. INVITED: by default, to join a session (except session with OPEN joinability or if session configuration has "autoJoin" sets to True) a user will receive an invite. The invitee will have the chance to respond within "inviteTimeout" which you can configure through session configuration.
    2. TIMEOUT: when a user is invited to a session, they will receive an invite. Unless "disableResendInvite" sets to True in the session configuration, the user will also receive invite reminder every 30s until they respond to the invite.
    3. REJECTED: when a user rejects an invite. To rejoin an INVITE_ONLY session, they will need to be re-invited and accept the invite.
    4. JOINED: there are few ways of a user to join a session, by invite, direct join (depends on session joinability) or join by code. upon invite, once a user accepts an invite, their status will be changed to JOINED.
    5. LEFT: user can leave a session. in case of party, a user can only be in 1 party at a time. therefore when they decide to create or join another party, they will be automatically removed from their initial party and their status will be changed to LEFT.
    6. KICKED: only party leader can kick a member.
    7. DISCONNECTED: if user still have reserved seat in the session and they disconnect lobby websocket, their status in the session will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. the user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration.
    8. CONNECTED: when a user reconnect their lobby websocket, their status will change from DISCONNECTED to CONNECTED, only if they previously JOINED session. if they were on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
    9. DROPPED: when "inactiveTimeout" is due and user never re-establish their websocket connection, we will drop them from the session.
    10. TERMINATED: only applies to game session. If a game session (match) is ended, DS will end/delete the session and we will mark all remaining users' status to be TERMINATED.
    11. CANCELLED: when a session joinability changes to CLOSED, any remaining invites will be canceled.

    User is considered as active if they're present in the session, which their status either CONNECTED or JOINED.
    User has a reserved seat in the session if their status either INVITED, JOINED, CONNECTED, DISCONNECTED. When user's' status change to other than these mentioned statuses, we will release the seat for other players to occupy.

    Managing the relation between session and lobby websocket connection:
    - Session relies on lobby to consider player's connection health to our backend. therefore a disruption to lobby websocket will be reflected in the user's status in all of their session(s).
    - If user still have a reserved seat in the session and they disconnect lobby websocket, their status in session(s) will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. This "members.previousStatus" used to track user's previous status before they disconnect websocket, since we still reserve a seat for them, therefore this field will be empty again after they websocket.
    - If the disconnected user is the leader of the session they're disconnected from, we will wait until "leaderElectionGracePeriod" is due, to promote the next oldest member as the new leader of the session. You can configure "leaderElectionGracePeriod" through session configuration.
    - The user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration. If until "inactiveTimeout" is due and the user doesn't reconnect their websocket, they will be removed from session and their status will change to DROPPED. If the dropped user was the leader of the session, we will promote the next oldest member as leader.
    - By default, we will update user's status to what it was before disconnect, when the user reconnects lobby websocket, unless "manualRejoin" sets to True in the session configuration. When "manualRejoin" is enabled, after lobby websocket reconnect, the game client will need to manually invoke join session again to rejoin the session.
    - If the user was on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
    - ttlHours is how long the session will active, max value is 168 hours

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Generate party code. (publicGeneratePartyCode)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Generate party code. (publicGeneratePartyCode)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get party details. (publicGetParty)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get party details. (publicGetParty)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetParty.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPartyCancel)
def public_party_cancel(
    party_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel a party invitation. (publicPartyCancel)

    Cancel a party invitation.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

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
    request = PublicPartyCancel.create(
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPartyCancel)
async def public_party_cancel_async(
    party_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel a party invitation. (publicPartyCancel)

    Cancel a party invitation.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel

        method: DELETE

        tags: ["Party"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

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
    request = PublicPartyCancel.create(
        party_id=party_id,
        user_id=user_id,
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
    """Invite a user to a party. (publicPartyInvite)

    Invite a user to a party.
    platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
    supported platforms:
    - STEAM
    - XBOX
    - PSN
    Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the party storage.

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
        201: Created - ApimodelsSessionInviteResponse (Created)

        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Invite a user to a party. (publicPartyInvite)

    Invite a user to a party.
    platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
    supported platforms:
    - STEAM
    - XBOX
    - PSN
    Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the party storage.

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
        201: Created - ApimodelsSessionInviteResponse (Created)

        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Join a party. (publicPartyJoin)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Join a party. (publicPartyJoin)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Join a party by code. (publicPartyJoinCode)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Join a party by code. (publicPartyJoinCode)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Kick a player from a party. (publicPartyKick)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Kick a player from a party. (publicPartyKick)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Leave a party. (publicPartyLeave)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Leave a party. (publicPartyLeave)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Reject a party invitation. (publicPartyReject)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Reject a party invitation. (publicPartyReject)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Patch update a party. (publicPatchUpdateParty)

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

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Patch update a party. (publicPatchUpdateParty)

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

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Promote new party leader. (publicPromotePartyLeader)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Promote new party leader. (publicPromotePartyLeader)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Revoke party code. (publicRevokePartyCode)

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
    """Revoke party code. (publicRevokePartyCode)

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
    """Update a party. (publicUpdateParty)

    Updates party blob, this endpoint will override stored party data.

    Join type can only be updated by the party's leader.
    To update only specified fields, please use following endpoint:
    method : PATCH
    API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
    - ttlHours is how long the session will active, max value is 168 hours

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

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Update a party. (publicUpdateParty)

    Updates party blob, this endpoint will override stored party data.

    Join type can only be updated by the party's leader.
    To update only specified fields, please use following endpoint:
    method : PATCH
    API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

    Reserved attributes key:
    1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
    the session regardless the leader changes.
    2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
    - ttlHours is how long the session will active, max value is 168 hours

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

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
