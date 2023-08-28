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
from ..operations.session_storage import AdminReadSessionStorage
from ..operations.session_storage import AdminReadUserSessionStorage
from ..operations.session_storage import PublicUpdateInsertSessionStorage
from ..operations.session_storage import PublicUpdateInsertSessionStorageLeader


@same_doc_as(AdminDeleteUserSessionStorage)
def admin_delete_user_session_storage(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Session Storage. Requires ADMIN:NAMESPACE:{namespace}:SESSION:STORAGE [DELETE] (adminDeleteUserSessionStorage)


    Delete Session Storage.

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
        namespace, error = get_services_namespace()
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
    """Delete Session Storage. Requires ADMIN:NAMESPACE:{namespace}:SESSION:STORAGE [DELETE] (adminDeleteUserSessionStorage)


    Delete Session Storage.

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteUserSessionStorage.create(
        session_id=session_id,
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
    """Read Session Storage . Requires ADMIN:NAMESPACE:{namespace}:SESSION:STORAGE [READ] (adminReadSessionStorage)


    Read Session Storage.

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
        namespace, error = get_services_namespace()
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
    """Read Session Storage . Requires ADMIN:NAMESPACE:{namespace}:SESSION:STORAGE [READ] (adminReadSessionStorage)


    Read Session Storage.

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
        namespace, error = get_services_namespace()
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
    """Read Session Storage User. Requires ADMIN:NAMESPACE:{namespace}:SESSION:STORAGE [READ] (adminReadUserSessionStorage)


    Read Session Storage User.

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
        namespace, error = get_services_namespace()
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
    """Read Session Storage User. Requires ADMIN:NAMESPACE:{namespace}:SESSION:STORAGE [READ] (adminReadUserSessionStorage)


    Read Session Storage User.

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
        namespace, error = get_services_namespace()
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


@same_doc_as(PublicUpdateInsertSessionStorage)
def public_update_insert_session_storage(
    body: Dict[str, Any],
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Insert Session Storage User . Requires NAMESPACE:{namespace}:SESSION:STORAGE [CREATE] (publicUpdateInsertSessionStorage)


    Update Insert Session Storage User. user can only update or insert user session storage data itself.
    can store generic json
    example json can store :
    {
    "storage": {
    "storage": 1
    },
    "data": 123
    }

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
        namespace, error = get_services_namespace()
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
    """Update Insert Session Storage User . Requires NAMESPACE:{namespace}:SESSION:STORAGE [CREATE] (publicUpdateInsertSessionStorage)


    Update Insert Session Storage User. user can only update or insert user session storage data itself.
    can store generic json
    example json can store :
    {
    "storage": {
    "storage": 1
    },
    "data": 123
    }

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
        namespace, error = get_services_namespace()
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
    """Update Insert Session Storage Leader . Requires NAMESPACE:{namespace}:SESSION:STORAGE [CREATE] (publicUpdateInsertSessionStorageLeader)


    Update Insert Session Storage Leader. only Leader can update or insert user session storage data Leader.
    can store generic json
    example json can store :
    {
    "leader": {
    "leader": 1
    },
    "data": 123
    }

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
        namespace, error = get_services_namespace()
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
    """Update Insert Session Storage Leader . Requires NAMESPACE:{namespace}:SESSION:STORAGE [CREATE] (publicUpdateInsertSessionStorageLeader)


    Update Insert Session Storage Leader. only Leader can update or insert user session storage data Leader.
    can store generic json
    example json can store :
    {
    "leader": {
    "leader": 1
    },
    "data": 123
    }

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
        namespace, error = get_services_namespace()
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
