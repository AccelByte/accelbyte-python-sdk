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

from ..models import ResponseError

from ..operations.session_storage import AdminDeleteUserSessionStorage
from ..operations.session_storage import AdminReadPartySessionStorage
from ..operations.session_storage import AdminReadSessionStorage
from ..operations.session_storage import AdminReadUserSessionStorage
from ..operations.session_storage import PublicReadPartySessionStorage
from ..operations.session_storage import PublicUpdateInsertPartySessionStorageReserved
from ..operations.session_storage import PublicUpdateInsertSessionStorage
from ..operations.session_storage import PublicUpdateInsertSessionStorageLeader


@same_doc_as(AdminDeleteUserSessionStorage)
def admin_delete_user_session_storage(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Session Storage. (adminDeleteUserSessionStorage)


    Delete Session Storage By sessionID
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage

        method: DELETE

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
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
    request = AdminDeleteUserSessionStorage.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteUserSessionStorage)
async def admin_delete_user_session_storage_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Session Storage. (adminDeleteUserSessionStorage)


    Delete Session Storage By sessionID
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage

        method: DELETE

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
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
    request = AdminDeleteUserSessionStorage.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminReadPartySessionStorage)
def admin_read_party_session_storage(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Read Party Session Storage. (adminReadPartySessionStorage)

    Read Party Session Storage by partyID
    Party Storage example:
    ```
    {
    "reserved": {
    "userID1": {"key": "value"},
    "userID2": {"key": "value"},
    ...
    }
    }
    ```

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage

        method: GET

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminReadPartySessionStorage.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminReadPartySessionStorage)
async def admin_read_party_session_storage_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Read Party Session Storage. (adminReadPartySessionStorage)

    Read Party Session Storage by partyID
    Party Storage example:
    ```
    {
    "reserved": {
    "userID1": {"key": "value"},
    "userID2": {"key": "value"},
    ...
    }
    }
    ```

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage

        method: GET

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminReadPartySessionStorage.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminReadSessionStorage)
def admin_read_session_storage(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Read Session Storage. (adminReadSessionStorage)


    Read Session Storage by sessionID
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage

        method: GET

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminReadSessionStorage.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminReadSessionStorage)
async def admin_read_session_storage_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Read Session Storage. (adminReadSessionStorage)


    Read Session Storage by sessionID
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage

        method: GET

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminReadSessionStorage.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminReadUserSessionStorage)
def admin_read_user_session_storage(
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Read Session Storage User. (adminReadUserSessionStorage)


    Read Session Storage by sessionID and userID
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}

        method: GET

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminReadUserSessionStorage.create(
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminReadUserSessionStorage)
async def admin_read_user_session_storage_async(
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Read Session Storage User. (adminReadUserSessionStorage)


    Read Session Storage by sessionID and userID
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}

        method: GET

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminReadUserSessionStorage.create(
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicReadPartySessionStorage)
def public_read_party_session_storage(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Read Party Session Storage. (publicReadPartySessionStorage)

    Read Party Session Storage by partyID
    Party Storage example:
    ```
    {
    "reserved": {
    "userID1": {"key": "value"},
    "userID2": {"key": "value"},
    ...
    }
    }
    ```

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage

        method: GET

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicReadPartySessionStorage.create(
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicReadPartySessionStorage)
async def public_read_party_session_storage_async(
    party_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Read Party Session Storage. (publicReadPartySessionStorage)

    Read Party Session Storage by partyID
    Party Storage example:
    ```
    {
    "reserved": {
    "userID1": {"key": "value"},
    "userID2": {"key": "value"},
    ...
    }
    }
    ```

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage

        method: GET

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicReadPartySessionStorage.create(
        party_id=party_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateInsertPartySessionStorageReserved)
def public_update_insert_party_session_storage_reserved(
    body: Dict[str, Any],
    party_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Insert Party Session Storage User. (publicUpdateInsertPartySessionStorageReserved)

    **For Internal Use Only**
    Update Insert Party Session Reserved Storage User. User can only update or insert user party session storage data itself.
    can store generic json
    example json can store :
    ```
    {
    "key": "value",
    "number": 123,
    }
    ```
    The data will be stored on the "reserved" storage field
    example stored data :
    ```
    {
    "reserved": {
    "userID1": {"key": "value"},
    "userID2": {"key": "value"},
    ...
    }
    }
    ```

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved

        method: PATCH

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

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
    request = PublicUpdateInsertPartySessionStorageReserved.create(
        body=body,
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateInsertPartySessionStorageReserved)
async def public_update_insert_party_session_storage_reserved_async(
    body: Dict[str, Any],
    party_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Insert Party Session Storage User. (publicUpdateInsertPartySessionStorageReserved)

    **For Internal Use Only**
    Update Insert Party Session Reserved Storage User. User can only update or insert user party session storage data itself.
    can store generic json
    example json can store :
    ```
    {
    "key": "value",
    "number": 123,
    }
    ```
    The data will be stored on the "reserved" storage field
    example stored data :
    ```
    {
    "reserved": {
    "userID1": {"key": "value"},
    "userID2": {"key": "value"},
    ...
    }
    }
    ```

    Properties:
        url: /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved

        method: PATCH

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        party_id: (partyId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

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
    request = PublicUpdateInsertPartySessionStorageReserved.create(
        body=body,
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateInsertSessionStorage)
def public_update_insert_session_storage(
    body: Dict[str, Any],
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Insert Session Storage User. (publicUpdateInsertSessionStorage)


    Update Insert Session Storage User. user can only update or insert user session storage data itself.
    can store generic json
    example json can store :
    {
    "storage": {
    "storage": 1
    },
    "data": 123
    }
    game Admin can update or insert session storage
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}

        method: PATCH

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

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
    request = PublicUpdateInsertSessionStorage.create(
        body=body,
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateInsertSessionStorage)
async def public_update_insert_session_storage_async(
    body: Dict[str, Any],
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Insert Session Storage User. (publicUpdateInsertSessionStorage)


    Update Insert Session Storage User. user can only update or insert user session storage data itself.
    can store generic json
    example json can store :
    {
    "storage": {
    "storage": 1
    },
    "data": 123
    }
    game Admin can update or insert session storage
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}

        method: PATCH

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

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
    request = PublicUpdateInsertSessionStorage.create(
        body=body,
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateInsertSessionStorageLeader)
def public_update_insert_session_storage_leader(
    body: Dict[str, Any],
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Insert Session Storage Leader. (publicUpdateInsertSessionStorageLeader)


    Update Insert Session Storage Leader. only Leader can update or insert user session storage data Leader.
    can store generic json
    example json can store :
    {
    "leader": {
    "leader": 1
    },
    "data": 123
    }
    game Admin can update or insert session storage
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader

        method: PATCH

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

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
    request = PublicUpdateInsertSessionStorageLeader.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateInsertSessionStorageLeader)
async def public_update_insert_session_storage_leader_async(
    body: Dict[str, Any],
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Insert Session Storage Leader. (publicUpdateInsertSessionStorageLeader)


    Update Insert Session Storage Leader. only Leader can update or insert user session storage data Leader.
    can store generic json
    example json can store :
    {
    "leader": {
    "leader": 1
    },
    "data": 123
    }
    game Admin can update or insert session storage
    Session Storage feature only available for Gamesession

    Properties:
        url: /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader

        method: PATCH

        tags: ["Session Storage"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (OK)

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
    request = PublicUpdateInsertSessionStorageLeader.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
