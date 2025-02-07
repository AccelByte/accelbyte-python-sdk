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

from ..models import ModelsCreatePodConfigRequest
from ..models import ModelsInstanceSpec
from ..models import ModelsListPodConfigResponse
from ..models import ModelsPodConfigRecord
from ..models import ModelsUpdatePodConfigRequest
from ..models import ResponseError

from ..operations.pod_config import CreatePodConfig
from ..operations.pod_config import CreatePodConfigClient
from ..operations.pod_config import DeletePodConfig
from ..operations.pod_config import DeletePodConfigClient
from ..operations.pod_config import GetAllPodConfig
from ..operations.pod_config import GetAllPodConfigClient
from ..operations.pod_config import GetLowestInstanceSpec
from ..operations.pod_config import GetPodConfig
from ..operations.pod_config import UpdatePodConfig


@same_doc_as(CreatePodConfig)
def create_pod_config(
    body: ModelsCreatePodConfigRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create pod config (CreatePodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers pod config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: POST

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreatePodConfigRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsPodConfigRecord (pod config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (pod config already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePodConfig.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePodConfig)
async def create_pod_config_async(
    body: ModelsCreatePodConfigRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create pod config (CreatePodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers pod config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: POST

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreatePodConfigRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsPodConfigRecord (pod config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (pod config already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePodConfig.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreatePodConfigClient)
def create_pod_config_client(
    body: ModelsCreatePodConfigRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create pod config for client (CreatePodConfigClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers pod config in a namespace.

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/pods/{name}

        method: POST

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreatePodConfigRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsPodConfigRecord (pod config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (pod config already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePodConfigClient.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePodConfigClient)
async def create_pod_config_client_async(
    body: ModelsCreatePodConfigRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create pod config for client (CreatePodConfigClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers pod config in a namespace.

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/pods/{name}

        method: POST

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreatePodConfigRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsPodConfigRecord (pod config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (pod config already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePodConfigClient.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePodConfig)
def delete_pod_config(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete pod config (DeletePodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server pod config in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: DELETE

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (pod config deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (pod config not found)

        409: Conflict - ResponseError (pod config in use)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePodConfig.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePodConfig)
async def delete_pod_config_async(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete pod config (DeletePodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server pod config in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: DELETE

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (pod config deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (pod config not found)

        409: Conflict - ResponseError (pod config in use)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePodConfig.create(
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePodConfigClient)
def delete_pod_config_client(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete pod config for client (DeletePodConfigClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server pod config in a namespace

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/pods/{name}

        method: DELETE

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (pod config deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (pod config not found)

        409: Conflict - ResponseError (pod config in use)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePodConfigClient.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePodConfigClient)
async def delete_pod_config_client_async(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete pod config for client (DeletePodConfigClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server pod config in a namespace

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/pods/{name}

        method: DELETE

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (pod config deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (pod config not found)

        409: Conflict - ResponseError (pod config in use)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePodConfigClient.create(
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllPodConfig)
def get_all_pod_config(
    count: int,
    offset: int,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all pod configs (GetAllPodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a all pod configs in a namespace

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods

        method: GET

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListPodConfigResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllPodConfig.create(
        count=count,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllPodConfig)
async def get_all_pod_config_async(
    count: int,
    offset: int,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all pod configs (GetAllPodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a all pod configs in a namespace

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods

        method: GET

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListPodConfigResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllPodConfig.create(
        count=count,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllPodConfigClient)
def get_all_pod_config_client(
    count: int,
    offset: int,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all pod configs for client (GetAllPodConfigClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a all pod configs in a namespace

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/pods

        method: GET

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListPodConfigResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllPodConfigClient.create(
        count=count,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllPodConfigClient)
async def get_all_pod_config_client_async(
    count: int,
    offset: int,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all pod configs for client (GetAllPodConfigClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a all pod configs in a namespace

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/pods

        method: GET

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListPodConfigResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllPodConfigClient.create(
        count=count,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLowestInstanceSpec)
def get_lowest_instance_spec(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get lowest instance spec. (GetLowestInstanceSpec)

    Required permission: ADMIN:NAMESPACE:*:DSM:CONFIG [READ]

    Required scope: social

    This endpoint returns the lowest instance spec, both cpu (in Mhz) and memory (in Mb).

    Properties:
        url: /dsmcontroller/admin/instances/spec/lowest

        method: GET

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsInstanceSpec (Lowest Instance Spec)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = GetLowestInstanceSpec.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLowestInstanceSpec)
async def get_lowest_instance_spec_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get lowest instance spec. (GetLowestInstanceSpec)

    Required permission: ADMIN:NAMESPACE:*:DSM:CONFIG [READ]

    Required scope: social

    This endpoint returns the lowest instance spec, both cpu (in Mhz) and memory (in Mb).

    Properties:
        url: /dsmcontroller/admin/instances/spec/lowest

        method: GET

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsInstanceSpec (Lowest Instance Spec)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = GetLowestInstanceSpec.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPodConfig)
def get_pod_config(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Pod Config (GetPodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a dedicated server pod config in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: GET

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPodConfigRecord (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (pod name not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPodConfig.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPodConfig)
async def get_pod_config_async(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Pod Config (GetPodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a dedicated server pod config in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: GET

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPodConfigRecord (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (pod name not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPodConfig.create(
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePodConfig)
def update_pod_config(
    body: ModelsUpdatePodConfigRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update pod config (UpdatePodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers pod config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: PATCH

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdatePodConfigRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPodConfigRecord (pod config updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (pod config not found)

        409: Conflict - ResponseError (pod config with same name already exist)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePodConfig.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePodConfig)
async def update_pod_config_async(
    body: ModelsUpdatePodConfigRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update pod config (UpdatePodConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers pod config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}

        method: PATCH

        tags: ["Pod Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdatePodConfigRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsPodConfigRecord (pod config updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (pod config not found)

        409: Conflict - ResponseError (pod config with same name already exist)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePodConfig.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
