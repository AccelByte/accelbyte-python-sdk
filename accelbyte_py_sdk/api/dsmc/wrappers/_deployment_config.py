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

from ..models import ModelsCreateDeploymentOverrideRequest
from ..models import ModelsCreateDeploymentRequest
from ..models import ModelsCreateRegionOverrideRequest
from ..models import ModelsDeploymentWithOverride
from ..models import ModelsListDeploymentResponse
from ..models import ModelsUpdateDeploymentOverrideRequest
from ..models import ModelsUpdateDeploymentRequest
from ..models import ModelsUpdateRegionOverrideRequest
from ..models import ResponseError

from ..operations.deployment_config import CreateDeployment
from ..operations.deployment_config import CreateDeploymentClient
from ..operations.deployment_config import CreateDeploymentOverride
from ..operations.deployment_config import CreateOverrideRegionOverride
from ..operations.deployment_config import CreateRootRegionOverride
from ..operations.deployment_config import DeleteCreatingServerCountQueue
from ..operations.deployment_config import DeleteDeployment
from ..operations.deployment_config import DeleteDeploymentClient
from ..operations.deployment_config import DeleteDeploymentOverride
from ..operations.deployment_config import DeleteOverrideRegionOverride
from ..operations.deployment_config import DeleteRootRegionOverride
from ..operations.deployment_config import GetAllDeployment
from ..operations.deployment_config import GetAllDeploymentClient
from ..operations.deployment_config import GetDeployment
from ..operations.deployment_config import GetDeploymentClient
from ..operations.deployment_config import UpdateDeployment
from ..operations.deployment_config import UpdateDeploymentOverride
from ..operations.deployment_config import UpdateOverrideRegionOverride
from ..operations.deployment_config import UpdateRootRegionOverride


@same_doc_as(CreateDeployment)
def create_deployment(
    body: ModelsCreateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create deployment (CreateDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers deployment in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateDeploymentRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (deployment created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (deployment already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateDeployment)
async def create_deployment_async(
    body: ModelsCreateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create deployment (CreateDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers deployment in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateDeploymentRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (deployment created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (deployment already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateDeploymentClient)
def create_deployment_client(
    body: ModelsCreateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create deployment for client (CreateDeploymentClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers deployment in a namespace.

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateDeploymentRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (deployment created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (deployment already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateDeploymentClient.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateDeploymentClient)
async def create_deployment_client_async(
    body: ModelsCreateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create deployment for client (CreateDeploymentClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers deployment in a namespace.

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateDeploymentRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (deployment created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (deployment already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateDeploymentClient.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateDeploymentOverride)
def create_deployment_override(
    body: ModelsCreateDeploymentOverrideRequest,
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create deployment override (CreateDeploymentOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers deployment override in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateDeploymentOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (deployment override created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        409: Conflict - ResponseError (deployment override already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateDeploymentOverride.create(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateDeploymentOverride)
async def create_deployment_override_async(
    body: ModelsCreateDeploymentOverrideRequest,
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create deployment override (CreateDeploymentOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers deployment override in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateDeploymentOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (deployment override created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        409: Conflict - ResponseError (deployment override already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateDeploymentOverride.create(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateOverrideRegionOverride)
def create_override_region_override(
    body: ModelsCreateRegionOverrideRequest,
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create region override for deployment override (CreateOverrideRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint creates a dedicated servers deployment override in a namespace in a region for deployment overrides.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateRegionOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (region override created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        409: Conflict - ResponseError (deployment already has region override)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateOverrideRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateOverrideRegionOverride)
async def create_override_region_override_async(
    body: ModelsCreateRegionOverrideRequest,
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create region override for deployment override (CreateOverrideRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint creates a dedicated servers deployment override in a namespace in a region for deployment overrides.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateRegionOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (region override created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        409: Conflict - ResponseError (deployment already has region override)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateOverrideRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateRootRegionOverride)
def create_root_region_override(
    body: ModelsCreateRegionOverrideRequest,
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create region override (CreateRootRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint creates a dedicated servers deployment override in a namespace in a region for root deployment.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateRegionOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (region override created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        409: Conflict - ResponseError (deployment already has region override)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateRootRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateRootRegionOverride)
async def create_root_region_override_async(
    body: ModelsCreateRegionOverrideRequest,
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create region override (CreateRootRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint creates a dedicated servers deployment override in a namespace in a region for root deployment.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}

        method: POST

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateRegionOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        201: Created - ModelsDeploymentWithOverride (region override created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        409: Conflict - ResponseError (deployment already has region override)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateRootRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteCreatingServerCountQueue)
def delete_creating_server_count_queue(
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete creating server count deployment queue (DeleteCreatingServerCountQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint deletes the deployment creating server count queue in a namespace in all registered region for the selected version

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - (deployment creating server count queue deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteCreatingServerCountQueue.create(
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteCreatingServerCountQueue)
async def delete_creating_server_count_queue_async(
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete creating server count deployment queue (DeleteCreatingServerCountQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint deletes the deployment creating server count queue in a namespace in all registered region for the selected version

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - (deployment creating server count queue deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteCreatingServerCountQueue.create(
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteDeployment)
def delete_deployment(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Deployment (DeleteDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteDeployment.create(
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteDeployment)
async def delete_deployment_async(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Deployment (DeleteDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteDeployment.create(
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteDeploymentClient)
def delete_deployment_client(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Deployment for client (DeleteDeploymentClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment in a namespace

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteDeploymentClient.create(
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteDeploymentClient)
async def delete_deployment_client_async(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Deployment for client (DeleteDeploymentClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment in a namespace

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteDeploymentClient.create(
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteDeploymentOverride)
def delete_deployment_override(
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Deployment Override (DeleteDeploymentOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment override in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment override deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteDeploymentOverride.create(
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteDeploymentOverride)
async def delete_deployment_override_async(
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Deployment Override (DeleteDeploymentOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment override in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment override deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteDeploymentOverride.create(
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteOverrideRegionOverride)
def delete_override_region_override(
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete region override for deployment override (DeleteOverrideRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment override in a namespace in a region for deployment overrides

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment region override deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment  not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteOverrideRegionOverride.create(
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteOverrideRegionOverride)
async def delete_override_region_override_async(
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete region override for deployment override (DeleteOverrideRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment override in a namespace in a region for deployment overrides

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment region override deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment  not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteOverrideRegionOverride.create(
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteRootRegionOverride)
def delete_root_region_override(
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Region Override (DeleteRootRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment override in a namespace in a region for root deployment

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment region override deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRootRegionOverride.create(
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteRootRegionOverride)
async def delete_root_region_override_async(
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Region Override (DeleteRootRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server deployment override in a namespace in a region for root deployment

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}

        method: DELETE

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment region override deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRootRegionOverride.create(
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllDeployment)
def get_all_deployment(
    count: int,
    offset: int,
    name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Deployments (GetAllDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a all deployments in a namespace

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments

        method: GET

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        name: (name) OPTIONAL str in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListDeploymentResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllDeployment.create(
        count=count,
        offset=offset,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllDeployment)
async def get_all_deployment_async(
    count: int,
    offset: int,
    name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Deployments (GetAllDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a all deployments in a namespace

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments

        method: GET

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        name: (name) OPTIONAL str in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListDeploymentResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllDeployment.create(
        count=count,
        offset=offset,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllDeploymentClient)
def get_all_deployment_client(
    count: int,
    offset: int,
    name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Deployments for client (GetAllDeploymentClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a all deployments in a namespace

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/deployments

        method: GET

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        name: (name) OPTIONAL str in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListDeploymentResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllDeploymentClient.create(
        count=count,
        offset=offset,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllDeploymentClient)
async def get_all_deployment_client_async(
    count: int,
    offset: int,
    name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Deployments for client (GetAllDeploymentClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a all deployments in a namespace

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/deployments

        method: GET

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        name: (name) OPTIONAL str in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListDeploymentResponse (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllDeploymentClient.create(
        count=count,
        offset=offset,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetDeployment)
def get_deployment(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Deployment (GetDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a dedicated server deployment in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: GET

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDeployment.create(
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetDeployment)
async def get_deployment_async(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Deployment (GetDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a dedicated server deployment in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: GET

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDeployment.create(
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetDeploymentClient)
def get_deployment_client(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Deployment for Client (GetDeploymentClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a dedicated server deployment in a namespace

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}

        method: GET

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDeploymentClient.create(
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetDeploymentClient)
async def get_deployment_client_async(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Deployment for Client (GetDeploymentClient)

    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a dedicated server deployment in a namespace

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}

        method: GET

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDeploymentClient.create(
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateDeployment)
def update_deployment(
    body: ModelsUpdateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update deployment (UpdateDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers deployment in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: PATCH

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateDeploymentRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (config not found)

        422: Unprocessable Entity - ResponseError (invalid game version)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateDeployment)
async def update_deployment_async(
    body: ModelsUpdateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update deployment (UpdateDeployment)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers deployment in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}

        method: PATCH

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateDeploymentRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (config not found)

        422: Unprocessable Entity - ResponseError (invalid game version)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateDeploymentOverride)
def update_deployment_override(
    body: ModelsUpdateDeploymentOverrideRequest,
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update deployment override (UpdateDeploymentOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers deployment override in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}

        method: PATCH

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateDeploymentOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment override updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateDeploymentOverride.create(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateDeploymentOverride)
async def update_deployment_override_async(
    body: ModelsUpdateDeploymentOverrideRequest,
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update deployment override (UpdateDeploymentOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers deployment override in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}

        method: PATCH

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateDeploymentOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment override updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateDeploymentOverride.create(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateOverrideRegionOverride)
def update_override_region_override(
    body: ModelsUpdateRegionOverrideRequest,
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update region override for deployment override (UpdateOverrideRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers deployment override in a namespace in a region for deployment overrides.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}

        method: PATCH

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateRegionOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment region override updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateOverrideRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateOverrideRegionOverride)
async def update_override_region_override_async(
    body: ModelsUpdateRegionOverrideRequest,
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update region override for deployment override (UpdateOverrideRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers deployment override in a namespace in a region for deployment overrides.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}

        method: PATCH

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateRegionOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

        version: (version) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment region override updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateOverrideRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateRootRegionOverride)
def update_root_region_override(
    body: ModelsUpdateRegionOverrideRequest,
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update region override (UpdateRootRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers deployment override in a namespace in a region for root deployment.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}

        method: PATCH

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateRegionOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment region override updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateRootRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateRootRegionOverride)
async def update_root_region_override_async(
    body: ModelsUpdateRegionOverrideRequest,
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update region override (UpdateRootRegionOverride)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers deployment override in a namespace in a region for root deployment.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}

        method: PATCH

        tags: ["Deployment Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateRegionOverrideRequest in body

        deployment: (deployment) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        200: OK - ModelsDeploymentWithOverride (deployment region override updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (deployment not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateRootRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
