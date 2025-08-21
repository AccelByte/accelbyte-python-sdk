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

from ..models import ApiDevelopmentServerConfigurationCreateRequest
from ..models import ApiDevelopmentServerConfigurationCreateResponse
from ..models import ApiDevelopmentServerConfigurationGetResponse
from ..models import ApiDevelopmentServerConfigurationListResponse
from ..models import ApiDevelopmentServerConfigurationUpdateRequest
from ..models import ResponseErrorResponse

from ..operations.development import DevelopmentServerConfigurationCreate
from ..operations.development import DevelopmentServerConfigurationDelete
from ..operations.development import DevelopmentServerConfigurationGet
from ..operations.development import DevelopmentServerConfigurationList
from ..operations.development import (
    DevelopmentServerConfigurationListSortByEnum,
    DevelopmentServerConfigurationListSortDirectionEnum,
)
from ..operations.development import DevelopmentServerConfigurationPatch


@same_doc_as(DevelopmentServerConfigurationCreate)
def development_server_configuration_create(
    body: ApiDevelopmentServerConfigurationCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create a new development server configuration (DevelopmentServerConfigurationCreate)

    Configuration name can be up to 128 characters and must conform to ^[.a-zA-Z0-9_-]+$

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations

        method: POST

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiDevelopmentServerConfigurationCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiDevelopmentServerConfigurationCreateResponse (development server configuration created)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationCreate.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DevelopmentServerConfigurationCreate)
async def development_server_configuration_create_async(
    body: ApiDevelopmentServerConfigurationCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create a new development server configuration (DevelopmentServerConfigurationCreate)

    Configuration name can be up to 128 characters and must conform to ^[.a-zA-Z0-9_-]+$

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations

        method: POST

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiDevelopmentServerConfigurationCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiDevelopmentServerConfigurationCreateResponse (development server configuration created)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationCreate.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DevelopmentServerConfigurationDelete)
def development_server_configuration_delete(
    development_server_config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a development server configuration (DevelopmentServerConfigurationDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}

        method: DELETE

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        development_server_config_id: (developmentServerConfigID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (development server configuration deleted)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (development server configuration not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationDelete.create(
        development_server_config_id=development_server_config_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DevelopmentServerConfigurationDelete)
async def development_server_configuration_delete_async(
    development_server_config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a development server configuration (DevelopmentServerConfigurationDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}

        method: DELETE

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        development_server_config_id: (developmentServerConfigID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (development server configuration deleted)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (development server configuration not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationDelete.create(
        development_server_config_id=development_server_config_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DevelopmentServerConfigurationGet)
def development_server_configuration_get(
    development_server_config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a development server configuration (DevelopmentServerConfigurationGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}

        method: GET

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        development_server_config_id: (developmentServerConfigID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiDevelopmentServerConfigurationGetResponse (development server configuration)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (development server configuration not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationGet.create(
        development_server_config_id=development_server_config_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DevelopmentServerConfigurationGet)
async def development_server_configuration_get_async(
    development_server_config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a development server configuration (DevelopmentServerConfigurationGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}

        method: GET

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        development_server_config_id: (developmentServerConfigID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiDevelopmentServerConfigurationGetResponse (development server configuration)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (development server configuration not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationGet.create(
        development_server_config_id=development_server_config_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DevelopmentServerConfigurationList)
def development_server_configuration_list(
    count: Optional[int] = None,
    image_id: Optional[str] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, DevelopmentServerConfigurationListSortByEnum]] = None,
    sort_direction: Optional[
        Union[str, DevelopmentServerConfigurationListSortDirectionEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """lists development server configurations with pagination (DevelopmentServerConfigurationList)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations

        method: GET

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        image_id: (imageId) OPTIONAL str in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        sort_direction: (sortDirection) OPTIONAL Union[str, SortDirectionEnum] in query

    Responses:
        200: OK - ApiDevelopmentServerConfigurationListResponse (development server configurations)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationList.create(
        count=count,
        image_id=image_id,
        name=name,
        offset=offset,
        sort_by=sort_by,
        sort_direction=sort_direction,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DevelopmentServerConfigurationList)
async def development_server_configuration_list_async(
    count: Optional[int] = None,
    image_id: Optional[str] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, DevelopmentServerConfigurationListSortByEnum]] = None,
    sort_direction: Optional[
        Union[str, DevelopmentServerConfigurationListSortDirectionEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """lists development server configurations with pagination (DevelopmentServerConfigurationList)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations

        method: GET

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        image_id: (imageId) OPTIONAL str in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        sort_direction: (sortDirection) OPTIONAL Union[str, SortDirectionEnum] in query

    Responses:
        200: OK - ApiDevelopmentServerConfigurationListResponse (development server configurations)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationList.create(
        count=count,
        image_id=image_id,
        name=name,
        offset=offset,
        sort_by=sort_by,
        sort_direction=sort_direction,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DevelopmentServerConfigurationPatch)
def development_server_configuration_patch(
    body: ApiDevelopmentServerConfigurationUpdateRequest,
    development_server_config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """patch a development server configuration (DevelopmentServerConfigurationPatch)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [UPDATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}

        method: PATCH

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiDevelopmentServerConfigurationUpdateRequest in body

        development_server_config_id: (developmentServerConfigID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (development server configuration updated)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (development server configuration not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationPatch.create(
        body=body,
        development_server_config_id=development_server_config_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DevelopmentServerConfigurationPatch)
async def development_server_configuration_patch_async(
    body: ApiDevelopmentServerConfigurationUpdateRequest,
    development_server_config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """patch a development server configuration (DevelopmentServerConfigurationPatch)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [UPDATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}

        method: PATCH

        tags: ["Development"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiDevelopmentServerConfigurationUpdateRequest in body

        development_server_config_id: (developmentServerConfigID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (development server configuration updated)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (development server configuration not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DevelopmentServerConfigurationPatch.create(
        body=body,
        development_server_config_id=development_server_config_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
