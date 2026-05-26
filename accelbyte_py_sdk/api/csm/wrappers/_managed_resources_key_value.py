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

from ..models import ApimodelCreateKeyValueCredentialRequest
from ..models import ApimodelCreateKeyValueCredentialResponse
from ..models import ApimodelGetIntegrationAppKeyValueResponse
from ..models import ApimodelIntegrateAppKeyValueRequest
from ..models import ApimodelIntegrateAppKeyValueResponse
from ..models import ApimodelKeyValueResourceListResponse
from ..models import ApimodelKeyValueResourceResponse
from ..models import ApimodelListIntegratedAppsKeyValueResponse
from ..models import DomainKeyValueClusterConfig
from ..models import DomainKeyValueResourceConfiguration
from ..models import DomainKeyValueUpdateConfiguration
from ..models import ResponseErrorResponse

from ..operations.managed_resources_key_value import CreateKeyValueClusterV2
from ..operations.managed_resources_key_value import CreateKeyValueCredentialV2
from ..operations.managed_resources_key_value import DeleteKeyValueClusterV2
from ..operations.managed_resources_key_value import GetIntegrationAppKeyValueClusterV2
from ..operations.managed_resources_key_value import GetKeyValueClusterLimitConfigV2
from ..operations.managed_resources_key_value import GetKeyValueClusterV2
from ..operations.managed_resources_key_value import (
    GetListIntegratedAppKeyValueClusterV2,
)
from ..operations.managed_resources_key_value import IntegrateAppKeyValueClusterV2
from ..operations.managed_resources_key_value import ListKeyValueClusterV2
from ..operations.managed_resources_key_value import (
    RemoveIntegrationAppKeyValueClusterV2,
)
from ..operations.managed_resources_key_value import UpdateKeyValueClusterV2


@same_doc_as(CreateKeyValueClusterV2)
def create_key_value_cluster_v2(
    body: DomainKeyValueResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates Key-Value Cluster (CreateKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [CREATE]`

    Provision Key-Value cluster using AWS Valkey Serverless that can be used by extend apps in game namespace within the studio.

    Cluster limits:
    - Private cloud: up to 10 clusters per studio namespace
    - Shared cloud: 1 cluster per studio namespace

    Provisioning process is done asynchronously, you can check from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters

        method: POST

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DomainKeyValueResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelKeyValueResourceResponse (Created)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateKeyValueClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateKeyValueClusterV2)
async def create_key_value_cluster_v2_async(
    body: DomainKeyValueResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates Key-Value Cluster (CreateKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [CREATE]`

    Provision Key-Value cluster using AWS Valkey Serverless that can be used by extend apps in game namespace within the studio.

    Cluster limits:
    - Private cloud: up to 10 clusters per studio namespace
    - Shared cloud: 1 cluster per studio namespace

    Provisioning process is done asynchronously, you can check from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters

        method: POST

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DomainKeyValueResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelKeyValueResourceResponse (Created)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateKeyValueClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateKeyValueCredentialV2)
def create_key_value_credential_v2(
    app: str,
    body: ApimodelCreateKeyValueCredentialRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate a new credential for an Extend App integrated with a KeyValue cluster (CreateKeyValueCredentialV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CREDENTIALS [CREATE]`

    Generates a new credential for an extend app that is already integrated with a KeyValue cluster.
    Replaces the old credential. Integration status will transition to MODIFYING, then READY when complete.
    If the same username and password are provided, returns the existing credential (idempotent).

    Acknowledgement for secure credential handling is only required at integrate-app; not needed for this endpoint.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials

        method: POST

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateKeyValueCredentialRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelCreateKeyValueCredentialResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateKeyValueCredentialV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateKeyValueCredentialV2)
async def create_key_value_credential_v2_async(
    app: str,
    body: ApimodelCreateKeyValueCredentialRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate a new credential for an Extend App integrated with a KeyValue cluster (CreateKeyValueCredentialV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CREDENTIALS [CREATE]`

    Generates a new credential for an extend app that is already integrated with a KeyValue cluster.
    Replaces the old credential. Integration status will transition to MODIFYING, then READY when complete.
    If the same username and password are provided, returns the existing credential (idempotent).

    Acknowledgement for secure credential handling is only required at integrate-app; not needed for this endpoint.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials

        method: POST

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateKeyValueCredentialRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelCreateKeyValueCredentialResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateKeyValueCredentialV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteKeyValueClusterV2)
def delete_key_value_cluster_v2(
    resource_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Key-Value Cluster (DeleteKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [DELETE]`

    Delete Key-Value cluster. Only allowed when cluster status is AVAILABLE or CREATE-FAILED.
    Force-deletes all active integrations. Returns resource with status DELETING.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}

        method: DELETE

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

    Responses:
        200: OK - ApimodelKeyValueResourceResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteKeyValueClusterV2.create(
        resource_id=resource_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteKeyValueClusterV2)
async def delete_key_value_cluster_v2_async(
    resource_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Key-Value Cluster (DeleteKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [DELETE]`

    Delete Key-Value cluster. Only allowed when cluster status is AVAILABLE or CREATE-FAILED.
    Force-deletes all active integrations. Returns resource with status DELETING.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}

        method: DELETE

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

    Responses:
        200: OK - ApimodelKeyValueResourceResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteKeyValueClusterV2.create(
        resource_id=resource_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetIntegrationAppKeyValueClusterV2)
def get_integration_app_key_value_cluster_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an Extend App Integration (GetIntegrationAppKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [READ]`

    Get integration of an extend app with a cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetIntegrationAppKeyValueResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIntegrationAppKeyValueClusterV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetIntegrationAppKeyValueClusterV2)
async def get_integration_app_key_value_cluster_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get an Extend App Integration (GetIntegrationAppKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [READ]`

    Get integration of an extend app with a cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetIntegrationAppKeyValueResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIntegrationAppKeyValueClusterV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetKeyValueClusterLimitConfigV2)
def get_key_value_cluster_limit_config_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Key-Value Cluster Limit Config (GetKeyValueClusterLimitConfigV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

    Get Key-Value cluster limit config.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DomainKeyValueClusterConfig (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyValueClusterLimitConfigV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetKeyValueClusterLimitConfigV2)
async def get_key_value_cluster_limit_config_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Key-Value Cluster Limit Config (GetKeyValueClusterLimitConfigV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

    Get Key-Value cluster limit config.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DomainKeyValueClusterConfig (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyValueClusterLimitConfigV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetKeyValueClusterV2)
def get_key_value_cluster_v2(
    resource_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Key-Value Cluster Information (GetKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

    Get Key-Value cluster information returns the Key-Value cluster related information by given studio/publisher namespace.

    `status` field - indicates the Key-Value cluster status.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/cluster/{resourceId}

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

    Responses:
        200: OK - ApimodelKeyValueResourceResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyValueClusterV2.create(
        resource_id=resource_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetKeyValueClusterV2)
async def get_key_value_cluster_v2_async(
    resource_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Key-Value Cluster Information (GetKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

    Get Key-Value cluster information returns the Key-Value cluster related information by given studio/publisher namespace.

    `status` field - indicates the Key-Value cluster status.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/cluster/{resourceId}

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

    Responses:
        200: OK - ApimodelKeyValueResourceResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetKeyValueClusterV2.create(
        resource_id=resource_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetListIntegratedAppKeyValueClusterV2)
def get_list_integrated_app_key_value_cluster_v2(
    resource_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get List Extend Apps Integrated with a Key-Value Cluster (GetListIntegratedAppKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

    Get the list of Extend Apps integrated with a specific Key-Value cluster. Only active integrations are returned.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

    Responses:
        200: OK - ApimodelListIntegratedAppsKeyValueResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListIntegratedAppKeyValueClusterV2.create(
        resource_id=resource_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetListIntegratedAppKeyValueClusterV2)
async def get_list_integrated_app_key_value_cluster_v2_async(
    resource_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get List Extend Apps Integrated with a Key-Value Cluster (GetListIntegratedAppKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

    Get the list of Extend Apps integrated with a specific Key-Value cluster. Only active integrations are returned.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

    Responses:
        200: OK - ApimodelListIntegratedAppsKeyValueResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListIntegratedAppKeyValueClusterV2.create(
        resource_id=resource_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(IntegrateAppKeyValueClusterV2)
def integrate_app_key_value_cluster_v2(
    app: str,
    body: ApimodelIntegrateAppKeyValueRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Integrate Extend App with KeyValue Cluster (IntegrateAppKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [CREATE]`

    Integrate an Extend App with an existing KeyValue cluster. Injects REDIS_HOST, REDIS_PORT, REDIS_USERNAME, REDIS_PASSWORD to the app config.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations

        method: POST

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelIntegrateAppKeyValueRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelIntegrateAppKeyValueResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IntegrateAppKeyValueClusterV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(IntegrateAppKeyValueClusterV2)
async def integrate_app_key_value_cluster_v2_async(
    app: str,
    body: ApimodelIntegrateAppKeyValueRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Integrate Extend App with KeyValue Cluster (IntegrateAppKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [CREATE]`

    Integrate an Extend App with an existing KeyValue cluster. Injects REDIS_HOST, REDIS_PORT, REDIS_USERNAME, REDIS_PASSWORD to the app config.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations

        method: POST

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelIntegrateAppKeyValueRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelIntegrateAppKeyValueResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IntegrateAppKeyValueClusterV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListKeyValueClusterV2)
def list_key_value_cluster_v2(
    refresh: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Key-Value Clusters (ListKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

    List Key-Value clusters by studio/publisher namespace.
    If `refresh=true`, the service will sync cluster status from the provider (cached).

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        refresh: (refresh) OPTIONAL bool in query

    Responses:
        200: OK - ApimodelKeyValueResourceListResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListKeyValueClusterV2.create(
        refresh=refresh,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListKeyValueClusterV2)
async def list_key_value_cluster_v2_async(
    refresh: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Key-Value Clusters (ListKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [READ]`

    List Key-Value clusters by studio/publisher namespace.
    If `refresh=true`, the service will sync cluster status from the provider (cached).

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters

        method: GET

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        refresh: (refresh) OPTIONAL bool in query

    Responses:
        200: OK - ApimodelKeyValueResourceListResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListKeyValueClusterV2.create(
        refresh=refresh,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RemoveIntegrationAppKeyValueClusterV2)
def remove_integration_app_key_value_cluster_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Integration of an Extend App from a Cluster (RemoveIntegrationAppKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [DELETE]`

    Remove integration of an extend app with a cluster. Removes key-value env/secret from app, deletes credential and AWS user.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations

        method: DELETE

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RemoveIntegrationAppKeyValueClusterV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RemoveIntegrationAppKeyValueClusterV2)
async def remove_integration_app_key_value_cluster_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Integration of an Extend App from a Cluster (RemoveIntegrationAppKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:INTEGRATE [DELETE]`

    Remove integration of an extend app with a cluster. Removes key-value env/secret from app, deletes credential and AWS user.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations

        method: DELETE

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RemoveIntegrationAppKeyValueClusterV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateKeyValueClusterV2)
def update_key_value_cluster_v2(
    body: DomainKeyValueUpdateConfiguration,
    resource_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Key-Value Cluster Configuration (UpdateKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [UPDATE]`

    Update Key-Value cluster configuration (maxDataStorageGB, maxECPUPerSecond, profileName).
    Only allowed when cluster status is AVAILABLE. Process is asynchronous; poll Get Cluster for updated status.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}

        method: PUT

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DomainKeyValueUpdateConfiguration in body

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

    Responses:
        200: OK - ApimodelKeyValueResourceResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateKeyValueClusterV2.create(
        body=body,
        resource_id=resource_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateKeyValueClusterV2)
async def update_key_value_cluster_v2_async(
    body: DomainKeyValueUpdateConfiguration,
    resource_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Key-Value Cluster Configuration (UpdateKeyValueClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:KEYVALUE:CLUSTERS [UPDATE]`

    Update Key-Value cluster configuration (maxDataStorageGB, maxECPUPerSecond, profileName).
    Only allowed when cluster status is AVAILABLE. Process is asynchronous; poll Get Cluster for updated status.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}

        method: PUT

        tags: ["Managed Resources - KeyValue"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DomainKeyValueUpdateConfiguration in body

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

    Responses:
        200: OK - ApimodelKeyValueResourceResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateKeyValueClusterV2.create(
        body=body,
        resource_id=resource_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
