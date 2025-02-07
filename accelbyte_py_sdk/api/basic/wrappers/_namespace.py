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

from ..models import ErrorEntity
from ..models import NamespaceContext
from ..models import NamespaceCreate
from ..models import NamespaceInfo
from ..models import NamespacePublisherInfo
from ..models import NamespaceSimpleInfo
from ..models import NamespaceStatusUpdate
from ..models import NamespaceUpdate
from ..models import ValidationErrorEntity

from ..operations.namespace import ChangeNamespaceStatus
from ..operations.namespace import CreateNamespace
from ..operations.namespace import DeleteNamespace
from ..operations.namespace import GetChildNamespaces
from ..operations.namespace import GetGameNamespaces
from ..operations.namespace import GetNamespace
from ..operations.namespace import GetNamespace1
from ..operations.namespace import GetNamespaceContext
from ..operations.namespace import GetNamespacePublisher
from ..operations.namespace import GetNamespaces
from ..operations.namespace import PublicGetNamespacePublisher
from ..operations.namespace import PublicGetNamespaces
from ..operations.namespace import UpdateNamespace
from ..models import NamespaceContextTypeEnum
from ..models import NamespaceInfoStatusEnum
from ..models import NamespaceStatusUpdateStatusEnum


@same_doc_as(ChangeNamespaceStatus)
def change_namespace_status(
    body: Optional[NamespaceStatusUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Change namespace status (changeNamespaceStatus)

    Change a namespace status.
    Other detail info:

      * Action code : 11306
      *  Returns : updated namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/status

        method: PATCH

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL NamespaceStatusUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ChangeNamespaceStatus.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ChangeNamespaceStatus)
async def change_namespace_status_async(
    body: Optional[NamespaceStatusUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Change namespace status (changeNamespaceStatus)

    Change a namespace status.
    Other detail info:

      * Action code : 11306
      *  Returns : updated namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/status

        method: PATCH

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL NamespaceStatusUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ChangeNamespaceStatus.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateNamespace)
def create_namespace(
    body: Optional[NamespaceCreate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a namespace (createNamespace)

    Create a namespace.
    By default the namespace is enabled.
    In multi tenant mode, parentNamespace will be automatically filled with requester namespace if the requester is using studio or publisher token, and it will be filled with studio namespace if the requester uses game token. An oauth client will also be created and the id will be returned.
    displayName rule:


      * Alphanumeric lowercase and uppercase are allowed
      * Allowed Special Character: ',. -
      * Must start and end with alphanumeric
      * Spaces and special character are allowed but cannot appear twice in a row


    Other detail info:

      * Action code : 11301
      *  Returns : created namespace

    Properties:
        url: /basic/v1/admin/namespaces

        method: POST

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL NamespaceCreate in body

    Responses:
        201: Created - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body | 11338: Unable to {action}: Namespace contains invalid character(s) | 11339: Unable to {action}: Display name contains invalid character(s) | 11340: Unable to {action}: The maximum number of games namespace for studio:{studio} has been exceeded)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11336: Unable to {action}: Namespace already exists)
    """
    request = CreateNamespace.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNamespace)
async def create_namespace_async(
    body: Optional[NamespaceCreate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a namespace (createNamespace)

    Create a namespace.
    By default the namespace is enabled.
    In multi tenant mode, parentNamespace will be automatically filled with requester namespace if the requester is using studio or publisher token, and it will be filled with studio namespace if the requester uses game token. An oauth client will also be created and the id will be returned.
    displayName rule:


      * Alphanumeric lowercase and uppercase are allowed
      * Allowed Special Character: ',. -
      * Must start and end with alphanumeric
      * Spaces and special character are allowed but cannot appear twice in a row


    Other detail info:

      * Action code : 11301
      *  Returns : created namespace

    Properties:
        url: /basic/v1/admin/namespaces

        method: POST

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL NamespaceCreate in body

    Responses:
        201: Created - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body | 11338: Unable to {action}: Namespace contains invalid character(s) | 11339: Unable to {action}: Display name contains invalid character(s) | 11340: Unable to {action}: The maximum number of games namespace for studio:{studio} has been exceeded)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11336: Unable to {action}: Namespace already exists)
    """
    request = CreateNamespace.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteNamespace)
def delete_namespace(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a namespace (deleteNamespace)

    Delete a namespace.
    Other detail info:

      * Action code : 11307
      *  Returns : deleted namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}

        method: DELETE

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNamespace.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteNamespace)
async def delete_namespace_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a namespace (deleteNamespace)

    Delete a namespace.
    Other detail info:

      * Action code : 11307
      *  Returns : deleted namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}

        method: DELETE

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNamespace.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetChildNamespaces)
def get_child_namespaces(
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get child namespaces (getChildNamespaces)

    Get child namespaces.
    If input namespace is publisher namespace, then it will return its all studio namespace.
    If input namespace is studio namespace, then it will return its all game namespace.
    Other detail info:

      * Returns : list of child namespaces

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/child

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[NamespaceInfo] (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetChildNamespaces.create(
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetChildNamespaces)
async def get_child_namespaces_async(
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get child namespaces (getChildNamespaces)

    Get child namespaces.
    If input namespace is publisher namespace, then it will return its all studio namespace.
    If input namespace is studio namespace, then it will return its all game namespace.
    Other detail info:

      * Returns : list of child namespaces

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/child

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[NamespaceInfo] (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetChildNamespaces.create(
        active_only=active_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGameNamespaces)
def get_game_namespaces(
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game namespaces (getGameNamespaces)

    Get game namespaces.
    In multi tenant mode, a given super admin namespace will return all game namespaces of studio namespaces
    Other detail info:

      * Action code : 11308
      *  Returns : list of namespaces

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/game

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[NamespaceInfo] (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGameNamespaces.create(
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGameNamespaces)
async def get_game_namespaces_async(
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game namespaces (getGameNamespaces)

    Get game namespaces.
    In multi tenant mode, a given super admin namespace will return all game namespaces of studio namespaces
    Other detail info:

      * Action code : 11308
      *  Returns : list of namespaces

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/game

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[NamespaceInfo] (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGameNamespaces.create(
        active_only=active_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNamespace)
def get_namespace(
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a namespace (getNamespace)

    Get a namespace.
    In multi tenant mode, parentNamespace will be returned.
    Other detail info:

      * Action code : 11304
      *  Returns : namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespace.create(
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNamespace)
async def get_namespace_async(
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a namespace (getNamespace)

    Get a namespace.
    In multi tenant mode, parentNamespace will be returned.
    Other detail info:

      * Action code : 11304
      *  Returns : namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespace.create(
        active_only=active_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNamespace1)
def get_namespace_1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a namespace info (getNamespace_1)

    Get a namespace info.
    Other detail info:

      * Returns : namespace info

    Properties:
        url: /basic/v1/public/namespaces/{namespace}

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceSimpleInfo (Successful operation)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespace1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNamespace1)
async def get_namespace_1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a namespace info (getNamespace_1)

    Get a namespace info.
    Other detail info:

      * Returns : namespace info

    Properties:
        url: /basic/v1/public/namespaces/{namespace}

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceSimpleInfo (Successful operation)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespace1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNamespaceContext)
def get_namespace_context(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get context of namespace (getNamespaceContext)

    Get context of namespace.
    Other detail info:

      * Returns : context of namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/context

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceContext (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespaceContext.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNamespaceContext)
async def get_namespace_context_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get context of namespace (getNamespaceContext)

    Get context of namespace.
    Other detail info:

      * Returns : context of namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/context

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceContext (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespaceContext.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNamespacePublisher)
def get_namespace_publisher(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get namespace info related publisher namespace (getNamespacePublisher)

    Get namespace info related publisher namespace.
    Other detail info:

      * Action code : 11305
      *  Returns : Namespace info related publisher namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/publisher

        method: GET

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespacePublisherInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespacePublisher.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNamespacePublisher)
async def get_namespace_publisher_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get namespace info related publisher namespace (getNamespacePublisher)

    Get namespace info related publisher namespace.
    Other detail info:

      * Action code : 11305
      *  Returns : Namespace info related publisher namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/publisher

        method: GET

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespacePublisherInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNamespacePublisher.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNamespaces)
def get_namespaces(
    active_only: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all namespaces (getNamespaces)

    Get all namespaces.
    Other detail info:

      * Action code : 11303
      *  Returns : list of namespaces

    Properties:
        url: /basic/v1/admin/namespaces

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[NamespaceInfo] (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    request = GetNamespaces.create(
        active_only=active_only,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNamespaces)
async def get_namespaces_async(
    active_only: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all namespaces (getNamespaces)

    Get all namespaces.
    Other detail info:

      * Action code : 11303
      *  Returns : list of namespaces

    Properties:
        url: /basic/v1/admin/namespaces

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[NamespaceInfo] (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    request = GetNamespaces.create(
        active_only=active_only,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetNamespacePublisher)
def public_get_namespace_publisher(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get namespace info related publisher namespace (publicGetNamespacePublisher)

    Get namespace info related publisher namespace.
    Other detail info:

      * Action code : 11305
      *  Returns : Namespace info related publisher namespace

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/publisher

        method: GET

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespacePublisherInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetNamespacePublisher.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetNamespacePublisher)
async def public_get_namespace_publisher_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get namespace info related publisher namespace (publicGetNamespacePublisher)

    Get namespace info related publisher namespace.
    Other detail info:

      * Action code : 11305
      *  Returns : Namespace info related publisher namespace

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/publisher

        method: GET

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespacePublisherInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetNamespacePublisher.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetNamespaces)
def public_get_namespaces(
    active_only: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all namespaces (publicGetNamespaces)

    Get all namespaces.
    Other detail info:

      * Action code : 11303
      *  Returns : list of namespaces

    Properties:
        url: /basic/v1/public/namespaces

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[NamespaceInfo] (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)
    """
    request = PublicGetNamespaces.create(
        active_only=active_only,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetNamespaces)
async def public_get_namespaces_async(
    active_only: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all namespaces (publicGetNamespaces)

    Get all namespaces.
    Other detail info:

      * Action code : 11303
      *  Returns : list of namespaces

    Properties:
        url: /basic/v1/public/namespaces

        method: GET

        tags: ["Namespace"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[NamespaceInfo] (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)
    """
    request = PublicGetNamespaces.create(
        active_only=active_only,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateNamespace)
def update_namespace(
    body: Optional[NamespaceUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update namespace basic info (updateNamespace)

    Update namespace basic info.
    displayName rule:


      * Alphanumeric lowercase and uppercase are allowed
      * Allowed Special Character: ',. -
      * Must start and end with alphanumeric
      * Spaces and special character are allowed but cannot appear twice in a row


    Other detail info:

      * Action code : 11302
      *  Returns : updated namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/basic

        method: PATCH

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL NamespaceUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateNamespace.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateNamespace)
async def update_namespace_async(
    body: Optional[NamespaceUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update namespace basic info (updateNamespace)

    Update namespace basic info.
    displayName rule:


      * Alphanumeric lowercase and uppercase are allowed
      * Allowed Special Character: ',. -
      * Must start and end with alphanumeric
      * Spaces and special character are allowed but cannot appear twice in a row


    Other detail info:

      * Action code : 11302
      *  Returns : updated namespace

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/basic

        method: PATCH

        tags: ["Namespace"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL NamespaceUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - NamespaceInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11337: Unable to {action}: Namespace not found)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateNamespace.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
