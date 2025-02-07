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

from ..models import BulkOperationResult
from ..models import ErrorEntity
from ..models import KeyGroupCreate
from ..models import KeyGroupDynamicInfo
from ..models import KeyGroupInfo
from ..models import KeyGroupPagingSlicedResult
from ..models import KeyGroupUpdate
from ..models import KeyPagingSliceResult
from ..models import ValidationErrorEntity

from ..operations.key_group import CreateKeyGroup
from ..operations.key_group import GetKeyGroup
from ..operations.key_group import GetKeyGroupByBoothName
from ..operations.key_group import GetKeyGroupDynamic
from ..operations.key_group import ListKeys
from ..operations.key_group import ListKeysStatusEnum
from ..operations.key_group import QueryKeyGroups
from ..operations.key_group import UpdateKeyGroup
from ..operations.key_group import UploadKeys
from ..models import KeyGroupCreateStatusEnum
from ..models import KeyGroupInfoStatusEnum
from ..models import KeyGroupUpdateStatusEnum


@same_doc_as(CreateKeyGroup)
def create_key_group(
    body: KeyGroupCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create key group (createKeyGroup)

    Create key group.
    Other detail info:

      * Returns : created key group

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups

        method: POST

        tags: ["KeyGroup"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED KeyGroupCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - KeyGroupInfo (successful operation)

        409: Conflict - ErrorEntity (37271: Key group [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateKeyGroup.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateKeyGroup)
async def create_key_group_async(
    body: KeyGroupCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create key group (createKeyGroup)

    Create key group.
    Other detail info:

      * Returns : created key group

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups

        method: POST

        tags: ["KeyGroup"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED KeyGroupCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - KeyGroupInfo (successful operation)

        409: Conflict - ErrorEntity (37271: Key group [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateKeyGroup.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetKeyGroup)
def get_key_group(
    key_group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get key group (getKeyGroup)

    Get key group.
    Other detail info:

      * Returns : key group info

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - KeyGroupInfo (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyGroup.create(
        key_group_id=key_group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetKeyGroup)
async def get_key_group_async(
    key_group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get key group (getKeyGroup)

    Get key group.
    Other detail info:

      * Returns : key group info

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - KeyGroupInfo (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyGroup.create(
        key_group_id=key_group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetKeyGroupByBoothName)
def get_key_group_by_booth_name(
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get key group by booth name (getKeyGroupByBoothName)

    Get key group.
    Other detail info:

      * Returns : key group info

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/byBoothName

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        booth_name: (boothName) REQUIRED str in query

    Responses:
        200: OK - KeyGroupInfo (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyGroupByBoothName.create(
        booth_name=booth_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetKeyGroupByBoothName)
async def get_key_group_by_booth_name_async(
    booth_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get key group by booth name (getKeyGroupByBoothName)

    Get key group.
    Other detail info:

      * Returns : key group info

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/byBoothName

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        booth_name: (boothName) REQUIRED str in query

    Responses:
        200: OK - KeyGroupInfo (successful operation)

        404: Not Found - ErrorEntity (37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyGroupByBoothName.create(
        booth_name=booth_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetKeyGroupDynamic)
def get_key_group_dynamic(
    key_group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get key group dynamic (getKeyGroupDynamic)

    Get key group dynamic.
    Other detail info:

      * Returns : key group info

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - KeyGroupDynamicInfo (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyGroupDynamic.create(
        key_group_id=key_group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetKeyGroupDynamic)
async def get_key_group_dynamic_async(
    key_group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get key group dynamic (getKeyGroupDynamic)

    Get key group dynamic.
    Other detail info:

      * Returns : key group info

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - KeyGroupDynamicInfo (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyGroupDynamic.create(
        key_group_id=key_group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListKeys)
def list_keys(
    key_group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, ListKeysStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List keys of a key group (listKeys)

    This API is used to list keys of a key group.
    Other detail info:

      * Returns : keys

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - KeyPagingSliceResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListKeys.create(
        key_group_id=key_group_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListKeys)
async def list_keys_async(
    key_group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, ListKeysStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List keys of a key group (listKeys)

    This API is used to list keys of a key group.
    Other detail info:

      * Returns : keys

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - KeyPagingSliceResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListKeys.create(
        key_group_id=key_group_id,
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryKeyGroups)
def query_key_groups(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query key groups (queryKeyGroups)

    Query key groups, if name is presented, it's fuzzy match.
    Other detail info:

      * Returns : slice of key group

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        tag: (tag) OPTIONAL str in query

    Responses:
        200: OK - KeyGroupPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryKeyGroups.create(
        limit=limit,
        name=name,
        offset=offset,
        tag=tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryKeyGroups)
async def query_key_groups_async(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query key groups (queryKeyGroups)

    Query key groups, if name is presented, it's fuzzy match.
    Other detail info:

      * Returns : slice of key group

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        tag: (tag) OPTIONAL str in query

    Responses:
        200: OK - KeyGroupPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryKeyGroups.create(
        limit=limit,
        name=name,
        offset=offset,
        tag=tag,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateKeyGroup)
def update_key_group(
    body: KeyGroupUpdate,
    key_group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update key group (updateKeyGroup)

    Update key group.
    Other detail info:

      * Returns : updated key group

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}

        method: PUT

        tags: ["KeyGroup"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED KeyGroupUpdate in body

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - KeyGroupInfo (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37271: Key group [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateKeyGroup.create(
        body=body,
        key_group_id=key_group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateKeyGroup)
async def update_key_group_async(
    body: KeyGroupUpdate,
    key_group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update key group (updateKeyGroup)

    Update key group.
    Other detail info:

      * Returns : updated key group

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}

        method: PUT

        tags: ["KeyGroup"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED KeyGroupUpdate in body

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - KeyGroupInfo (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37271: Key group [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateKeyGroup.create(
        body=body,
        key_group_id=key_group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UploadKeys)
def upload_keys(
    key_group_id: str,
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload keys to key group (uploadKeys)

    This API is used to upload keys with csv format to a key group.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys

        method: POST

        tags: ["KeyGroup"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkOperationResult (successful operation)

        400: Bad Request - ErrorEntity (37221: Invalid key file)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadKeys.create(
        key_group_id=key_group_id,
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UploadKeys)
async def upload_keys_async(
    key_group_id: str,
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload keys to key group (uploadKeys)

    This API is used to upload keys with csv format to a key group.

    Other detail info:

      * Returns : item data

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys

        method: POST

        tags: ["KeyGroup"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkOperationResult (successful operation)

        400: Bad Request - ErrorEntity (37221: Invalid key file)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadKeys.create(
        key_group_id=key_group_id,
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
